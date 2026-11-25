
#include "tetris_machine.h"

#include <iostream>

AtariTetrisMachine::AtariTetrisMachine()
    : m_framebuffer(
          AtariTetrisVideo::SCREEN_WIDTH,
          AtariTetrisVideo::SCREEN_HEIGHT
      ),
      m_palette(),
      m_tileDecoder(),
      m_video(
          m_framebuffer,
          m_palette,
          m_tileDecoder
      ),
      m_memory(m_palette, &m_video),
      m_cpu(),
      m_watchdog(),
      m_pokey1(),
      m_pokey2(),
      m_audioMixer(),
      m_input(),
      m_scheduler(m_cpu),
      m_romLoader(),
      m_initialized(false),
      m_romsLoaded(false)
{
}

AtariTetrisMachine::~AtariTetrisMachine()
{
    if (!m_eepromFilename.empty())
        saveEEPROM(m_eepromFilename);
}

bool AtariTetrisMachine::initialize()
{
    if (m_initialized)
        return true;

    // ROM must be loaded before initialization.
    if (!m_romsLoaded)
    {
        return false;
    }

    connectHardware();
    connectInterrupts();
    connectInput();
    connectWatchdog();

    m_pokey1.powerOnInitialize();
    m_pokey2.powerOnInitialize();

    m_memory.reset();
    m_scheduler.reset();

    // Reset CPU after ROM and hardware are ready.
    m_cpu.reset();

    // Initialization is complete.
    m_initialized = true;

    return true;
}

void AtariTetrisMachine::connectHardware()
{
    // CPU <-> Memory
    m_cpu.connectMemory(&m_memory);

    //동적분석기용
    m_scheduler.connectMemory(&m_memory);

    // Memory <-> POKEY
    m_memory.connectPokeys(
        &m_pokey1,
        &m_pokey2
    );

    // Scheduler <-> POKEY
    m_scheduler.connectPokeys(
        &m_pokey1,
        &m_pokey2
    );

    m_scheduler.connectAudioMixer(
        &m_audioMixer
    );

    // Scheduler <-> Input
    m_scheduler.connectInput(&m_input);
}

void AtariTetrisMachine::connectInterrupts()
{
    m_memory.setIRQAcknowledgeCallback(
        [this]()
        {
            m_scheduler.acknowledgeIRQ();
        }
    );
}

void AtariTetrisMachine::connectInput()
{
    m_pokey1.setAllPotCallback(
        [this]()
        {
            return m_input.readIN0();
        }
    );

    m_pokey2.setAllPotCallback(
        [this]()
        {
            return m_input.readIN1();
        }
    );
}

void AtariTetrisMachine::connectWatchdog()
{
    m_memory.connectWatchdog(&m_watchdog);

    m_scheduler.connectWatchdog(&m_watchdog);

    m_watchdog.setResetCallback(
        [this]()
        {
            reset();
        }
    );
}

void AtariTetrisMachine::reset()
{
    if (!m_initialized || !m_romsLoaded)
        return;

    m_video.invalidateAll();

    m_memory.reset();
    m_scheduler.reset();

    m_pokey1.powerOnInitialize();
    m_pokey2.powerOnInitialize();

    m_audioMixer.reset();

    m_cpu.reset();
}

int AtariTetrisMachine::runFrame()
{
    if (!m_initialized || !m_romsLoaded)
        return 0;

    return m_scheduler.runFrame();
}

int AtariTetrisMachine::runScanline()
{
    if (!m_initialized || !m_romsLoaded)
        return 0;

    return m_scheduler.runScanline();
}

int AtariTetrisMachine::runCycles(int cycles)
{
    if (!m_initialized || !m_romsLoaded)
        return 0;

    return m_scheduler.runCycles(cycles);
}

void AtariTetrisMachine::renderFrame()
{
    if (!m_initialized || !m_romsLoaded)
        return;

    m_video.render(m_memory.videoRAM());
}

bool AtariTetrisMachine::loadEEPROM(
    const std::string& filename)
{
    if (!m_memory.loadEEPROM(filename))
        return false;

    m_eepromFilename = filename;
    return true;
}

bool AtariTetrisMachine::saveEEPROM(
    const std::string& filename) const
{
    return m_memory.saveEEPROM(filename);
}

bool AtariTetrisMachine::loadROMs(
    const std::string& cpuROMFile,
    const std::string& graphicsROMFile
)
{
    // ROM reload is not allowed after initialization.
    if (m_initialized)
    {
        return false;
    }

    m_romsLoaded = false;

    // Load CPU ROM
    if (!m_romLoader.loadMainCPUROM(cpuROMFile))
    {
        std::cerr << m_romLoader.lastError() << '\n';
        return false;
    }

    // Load Graphics ROM
    if (!m_romLoader.loadGraphicsROM(graphicsROMFile))
    {
        std::cerr << m_romLoader.lastError() << '\n';
        return false;
    }

    const uint8_t* cpuData =
        m_romLoader.cpuROM();

    const size_t cpuSize =
        m_romLoader.cpuROMSize();

    const uint8_t* graphicsData =
        m_romLoader.graphicsROM();

    const size_t graphicsSize =
        m_romLoader.graphicsROMSize();

    // Load all four Slapstic banks
    if (!m_memory.loadBankROM(
        cpuData,
        cpuSize))
    {
        return false;
    }

    // Fixed ROM = upper 32 KB
    if (!m_memory.loadFixedROM(
        cpuData + 0x8000,
        0x8000))
    {
        return false;
    }

    // Load graphics ROM
    if (!m_tileDecoder.loadROM(
        graphicsData,
        graphicsSize))
    {
        return false;
    }

    m_romsLoaded = true;
    
    return true;
}

// --------------------------------
// Hardware Access
// --------------------------------

M6502& AtariTetrisMachine::cpu()
{
    return m_cpu;
}

AtariTetrisMemory& AtariTetrisMachine::memory()
{
    return m_memory;
}

TetrisInput& AtariTetrisMachine::input()
{
    return m_input;
}

Pokey& AtariTetrisMachine::pokey1()
{
    return m_pokey1;
}

Pokey& AtariTetrisMachine::pokey2()
{
    return m_pokey2;
}

AudioMixer& AtariTetrisMachine::audioMixer()
{
    return m_audioMixer;
}

Watchdog& AtariTetrisMachine::watchdog()
{
    return m_watchdog;
}

MachineScheduler& AtariTetrisMachine::scheduler()
{
    return m_scheduler;
}

Framebuffer& AtariTetrisMachine::framebuffer()
{
    return m_framebuffer;
}

bool AtariTetrisMachine::isInitialized() const
{
    return m_initialized;
}
