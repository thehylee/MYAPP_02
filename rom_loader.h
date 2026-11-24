
#pragma once

#include <cstdint>
#include <cstddef>
#include <string>
#include <vector>

class ROMLoader
{
public:
    static constexpr size_t CPU_ROM_SIZE = 0x10000;
    static constexpr size_t GRAPHICS_ROM_SIZE = 0x10000;

    ROMLoader();

    // Load Atari Tetris main CPU ROM
    bool loadMainCPUROM(const std::string& filename);

    // Load Atari Tetris graphics ROM
    bool loadGraphicsROM(const std::string& filename);

    // Access loaded CPU ROM
    const uint8_t* cpuROM() const;
    size_t cpuROMSize() const;

    // Access loaded graphics ROM
    const uint8_t* graphicsROM() const;
    size_t graphicsROMSize() const;

    bool isCPULoaded() const;
    bool isGraphicsLoaded() const;

    const std::string& lastError() const;

private:
    std::vector<uint8_t> m_cpuROM;
    std::vector<uint8_t> m_graphicsROM;

    std::string m_lastError;

    bool loadFile(
        const std::string& filename,
        size_t expectedSize,
        std::vector<uint8_t>& destination
    );
};
