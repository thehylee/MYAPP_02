
#pragma once

#include <cstdint>
#include <cstddef>
#include <array>
#include <functional>
#include <string>

#include "palette.h"
#include "slapstic.h"
#include "eeprom.h"

class AtariTetrisVideo;
class Watchdog;
class Pokey;

class AtariTetrisMemory
{
public:
    static constexpr uint16_t RAM_START = 0x0000;
    static constexpr uint16_t RAM_END = 0x0FFF;

    static constexpr uint16_t VIDEO_START = 0x1000;
    static constexpr uint16_t VIDEO_END = 0x1FFF;

    static constexpr uint16_t PALETTE_START = 0x2000;
    static constexpr uint16_t PALETTE_END = 0x20FF;

    static constexpr uint16_t EEPROM_START = 0x2400;
    static constexpr uint16_t EEPROM_END = 0x25FF;

    static constexpr uint16_t POKEY1_START = 0x2800;
    static constexpr uint16_t POKEY1_END = 0x280F;

    static constexpr uint16_t POKEY2_START = 0x2810;
    static constexpr uint16_t POKEY2_END = 0x281F;

    static constexpr uint16_t ROM_BANK_START = 0x4000;
    static constexpr uint16_t ROM_BANK_END = 0x7FFF;

    static constexpr uint16_t ROM_START = 0x8000;
    static constexpr uint16_t ROM_END = 0xFFFF;

    static constexpr size_t RAM_SIZE = 0x1000;
    static constexpr size_t VIDEO_RAM_SIZE = 0x1000;
    static constexpr size_t BANK_SIZE = 0x4000;
    static constexpr size_t BANK_COUNT = 4;
    static constexpr size_t FIXED_ROM_SIZE = 0x8000;

    AtariTetrisMemory(
        Palette& palette,
        AtariTetrisVideo* video = nullptr
    );

    void reset();

    uint8_t read(uint16_t address);

    void write(
        uint16_t address,
        uint8_t data
    );

    // Load four Slapstic ROM banks
    bool loadBankROM(
        const uint8_t* data,
        size_t size
    );

    // Load fixed CPU ROM
    bool loadFixedROM(
        const uint8_t* data,
        size_t size
    );

    uint8_t* videoRAM();
    const uint8_t* videoRAM() const;

    uint8_t* ram();

    int currentBank() const;

    bool loadEEPROM(const std::string& filename);
    bool saveEEPROM(const std::string& filename) const;

    void connectWatchdog(Watchdog* watchdog);

    void setIRQAcknowledgeCallback(
    std::function<void()> callback);

    void connectPokeys(Pokey* pokey1, Pokey* pokey2);

private:
    std::array<uint8_t, RAM_SIZE> m_ram;

    std::array<uint8_t, VIDEO_RAM_SIZE> m_videoRAM;

    std::array<uint8_t, BANK_SIZE * BANK_COUNT> m_bankROM;

    std::array<uint8_t, FIXED_ROM_SIZE> m_fixedROM;

    Palette& m_palette;
    AtariTetrisVideo* m_video;
    Slapstic m_slapstic;
    EEPROM m_eeprom;
    Watchdog* m_watchdog;
    Pokey* m_pokey1;
    Pokey* m_pokey2;

    bool m_bankROMLoaded;
    bool m_fixedROMLoaded;

    uint8_t readBankROM(uint16_t address);

    void notifySlapstic(uint16_t address);

    std::function<void()> m_irqAcknowledgeCallback;
};
