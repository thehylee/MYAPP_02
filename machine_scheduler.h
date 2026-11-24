
#pragma once

#include <cstdint>

class M6502;
class Watchdog;
class TetrisInput;
class Pokey;
class AudioMixer;

class MachineScheduler
{
public:
    static constexpr int CPU_CYCLES_PER_LINE = 114;
    static constexpr int TOTAL_SCANLINES = 262;
    static constexpr int VISIBLE_SCANLINES = 240;
    static constexpr int VBLANK_START = 240;

    static constexpr int CPU_CYCLES_PER_FRAME =
        CPU_CYCLES_PER_LINE * TOTAL_SCANLINES;

    explicit MachineScheduler(M6502& cpu);

    int runCycles(int requestedCycles);
    int runScanline();
    int runFrame();

    uint64_t totalCpuCycles() const;
    uint64_t totalRequestedCycles() const;
    int cycleCarry() const;

    int currentScanline() const;
    bool isVBlank() const;

    bool irqState() const;

    void acknowledgeIRQ();

    void connectInput(TetrisInput* input);

    void connectWatchdog(Watchdog* watchdog);

    void connectPokeys(Pokey* pokey1, Pokey* pokey2);
    void connectAudioMixer(AudioMixer* mixer);

    void reset();

private:
    M6502& m_cpu;
    TetrisInput* m_input;
    Watchdog* m_watchdog;
    
    Pokey* m_pokey1;
    Pokey* m_pokey2;
    AudioMixer* m_audioMixer;

    uint64_t m_totalCpuCycles;
    uint64_t m_totalRequestedCycles;

    int m_cycleCarry;

    int m_currentScanline;
    bool m_vblank;

    int m_nextIrqScanline;

    // Independent IRQ sources
    bool m_irqState;
    bool m_pokey1IRQ;
    bool m_pokey2IRQ;

    void updateVBlank();
    void updateIRQ();

    void updateCPUIRQ();

    void setPokey1IRQ(bool state);
    void setPokey2IRQ(bool state);
};
