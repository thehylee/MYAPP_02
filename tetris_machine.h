
#pragma once

#include <cstdint>
#include <string>

#include "m6502.h"
#include "tetris_memory.h"
#include "palette.h"
#include "slapstic.h"
#include "eeprom.h"
#include "watchdog.h"
#include "pokey.h"
#include "audio_mixer.h"

#include "tetris_input.h"
#include "machine_scheduler.h"
#include "rom_loader.h"

#include "framebuffer.h"
#include "tile_decoder.h"
#include "tetris_video.h"


class AtariTetrisMachine
{
public:
    AtariTetrisMachine();
    ~AtariTetrisMachine();

    // Initialize all hardware
    bool initialize();

    // Machine reset
    void reset();

    // Execute emulation
    int runFrame();

    int runScanline();

    int runCycles(int cycles);

    // Video rendering
    void renderFrame();

    // EEPROM persistence
    bool loadEEPROM(const std::string& filename);
    bool saveEEPROM(const std::string& filename) const;

    // ROM loading
    bool loadROMs(
        const std::string& cpuROMFile,
        const std::string& graphicsROMFile
    );

    // Hardware access
    M6502& cpu();
    AtariTetrisMemory& memory();

    TetrisInput& input();

    Pokey& pokey1();
    Pokey& pokey2();
    AudioMixer& audioMixer();

    Watchdog& watchdog();

    MachineScheduler& scheduler();

    Framebuffer& framebuffer();

    bool isInitialized() const;

private:

    // --------------------------------
    // Video Hardware
    // --------------------------------

    Framebuffer m_framebuffer;

    Palette m_palette;

    TileDecoder m_tileDecoder;

    AtariTetrisVideo m_video;

    // --------------------------------
    // Memory
    // --------------------------------

    AtariTetrisMemory m_memory;

    // --------------------------------
    // CPU
    // --------------------------------

    M6502 m_cpu;

    // --------------------------------
    // Hardware Devices
    // --------------------------------

    Watchdog m_watchdog;

    Pokey m_pokey1;
    Pokey m_pokey2;
    AudioMixer m_audioMixer;

    // --------------------------------
    // Input
    // --------------------------------

    TetrisInput m_input;

    // --------------------------------
    // Scheduler
    // --------------------------------

    MachineScheduler m_scheduler;

    ROMLoader m_romLoader;

    // --------------------------------
    // Machine State
    // --------------------------------

    bool m_initialized;
    bool m_romsLoaded;

    std::string m_eepromFilename;

    // --------------------------------
    // Internal Connections
    // --------------------------------

    void connectHardware();

    void connectInterrupts();

    void connectInput();

    void connectWatchdog();

};
