
#include "machine_scheduler.h"

#include "m6502.h"
#include "watchdog.h"
#include "tetris_input.h"
#include "pokey.h"
#include "audio_mixer.h"

MachineScheduler::MachineScheduler(M6502& cpu)
    : m_cpu(cpu),
      m_input(nullptr),
      m_watchdog(nullptr),
      m_pokey1(nullptr),
      m_pokey2(nullptr),
      m_audioMixer(nullptr),
      m_totalCpuCycles(0),
      m_totalRequestedCycles(0),
      m_cycleCarry(0),
      m_currentScanline(0),
      m_vblank(false),
      m_nextIrqScanline(48),
      m_irqState(false),
      m_pokey1IRQ(false),
      m_pokey2IRQ(false)
{
}

// =====================================
// CPU / POKEY Clock Synchronization
// =====================================

int MachineScheduler::runCycles(int requestedCycles)
{
    if (requestedCycles <= 0)
        return 0;

    int cyclesToExecute =
        requestedCycles - m_cycleCarry;

    if (cyclesToExecute <= 0)
    {
        m_cycleCarry -= requestedCycles;
        m_totalRequestedCycles += requestedCycles;
        return 0;
    }

    int executedCycles =
        m_cpu.execute(cyclesToExecute);

    if (executedCycles <= 0)
        return 0;

    m_totalRequestedCycles += requestedCycles;

    m_cycleCarry =
        executedCycles - cyclesToExecute;

    m_totalCpuCycles += executedCycles;

    // POKEY 1
    if (m_pokey1)
    {
        m_pokey1->execute(
            static_cast<uint32_t>(executedCycles)
        );
    }

    // POKEY 2
    if (m_pokey2)
    {
        m_pokey2->execute(
            static_cast<uint32_t>(executedCycles)
        );
    }

    // Audio Mixer
    if (m_audioMixer)
    {
        m_audioMixer->advance(
            static_cast<uint32_t>(executedCycles),
            m_pokey1,
            m_pokey2
        );
    }

    // Watchdog
    if (m_watchdog)
    {
        m_watchdog->tick(
            static_cast<uint64_t>(executedCycles)
        );
    }

    return executedCycles;
}

// =====================================
// Scanline
// =====================================

int MachineScheduler::runScanline()
{
    int executedCycles =
        runCycles(CPU_CYCLES_PER_LINE);

    if (executedCycles <= 0)
        return 0;

    ++m_currentScanline;

    if (m_currentScanline >= TOTAL_SCANLINES)
        m_currentScanline = 0;

    updateIRQ();
    updateVBlank();

    return executedCycles;
}

int MachineScheduler::runFrame()
{
    int totalExecuted = 0;

    for (int line = 0;
         line < TOTAL_SCANLINES;
         ++line)
    {
        const int cycles = runScanline();

        if (cycles <= 0)
            return 0;

        totalExecuted += cycles;
    }

    return totalExecuted;
}

// =====================================
// Raster IRQ
// =====================================

void MachineScheduler::updateIRQ()
{
    if (m_currentScanline != m_nextIrqScanline)
        return;

    m_irqState =
        (m_currentScanline & 32) != 0;

    updateCPUIRQ();

    m_nextIrqScanline += 32;

    if (m_nextIrqScanline >= 256)
        m_nextIrqScanline -= 256;
}

// =====================================
// Unified CPU IRQ
// =====================================

void MachineScheduler::updateCPUIRQ()
{
    const bool state =
        m_irqState ||
        m_pokey1IRQ ||
        m_pokey2IRQ;

    m_cpu.setIRQ(state);
}

void MachineScheduler::setPokey1IRQ(bool state)
{
    m_pokey1IRQ = state;
    updateCPUIRQ();
}

void MachineScheduler::setPokey2IRQ(bool state)
{
    m_pokey2IRQ = state;
    updateCPUIRQ();
}

// =====================================
// IRQ Acknowledge
// =====================================

void MachineScheduler::acknowledgeIRQ()
{
    // Clear Raster IRQ only.
    // POKEY IRQ sources remain independent.

    m_irqState = false;

    updateCPUIRQ();
}

// =====================================
// VBlank
// =====================================

void MachineScheduler::updateVBlank()
{
    bool active =
        (m_currentScanline >= VBLANK_START);

    if (m_vblank != active)
    {
        m_vblank = active;

        if (m_input != nullptr)
            m_input->setVBlank(m_vblank);
    }
}

// =====================================
// Getters
// =====================================

int MachineScheduler::currentScanline() const
{
    return m_currentScanline;
}

bool MachineScheduler::isVBlank() const
{
    return m_vblank;
}

bool MachineScheduler::irqState() const
{
    return m_irqState;
}

uint64_t MachineScheduler::totalCpuCycles() const
{
    return m_totalCpuCycles;
}

uint64_t MachineScheduler::totalRequestedCycles() const
{
    return m_totalRequestedCycles;
}

int MachineScheduler::cycleCarry() const
{
    return m_cycleCarry;
}

// =====================================
// Input
// =====================================

void MachineScheduler::connectInput(TetrisInput* input)
{
    m_input = input;

    if (m_input != nullptr)
        m_input->setVBlank(m_vblank);
}

void MachineScheduler::connectWatchdog(
    Watchdog* watchdog)
{
    m_watchdog = watchdog;
}

// =====================================
// Dual POKEY Connection
// =====================================

void MachineScheduler::connectPokeys(
    Pokey* pokey1,
    Pokey* pokey2)
{
    m_pokey1 = pokey1;
    m_pokey2 = pokey2;

    m_pokey1IRQ = false;
    m_pokey2IRQ = false;

    if (m_pokey1)
    {
        m_pokey1->setIRQCallback(
            [this](bool state)
            {
                setPokey1IRQ(state);
            }
        );
    }

    if (m_pokey2)
    {
        m_pokey2->setIRQCallback(
            [this](bool state)
            {
                setPokey2IRQ(state);
            }
        );
    }

    updateCPUIRQ();
}

void MachineScheduler::connectAudioMixer(
    AudioMixer* mixer)
{
    m_audioMixer = mixer;
}

// =====================================
// Reset
// =====================================

void MachineScheduler::reset()
{
    m_totalCpuCycles = 0;
    m_totalRequestedCycles = 0;

    m_cycleCarry = 0;

    m_currentScanline = 0;
    m_vblank = false;

    m_nextIrqScanline = 48;

    m_irqState = false;
    m_pokey1IRQ = false;
    m_pokey2IRQ = false;

    updateCPUIRQ();

    if (m_input != nullptr)
        m_input->setVBlank(false);
}
