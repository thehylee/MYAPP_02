
#pragma once

#include <cstdint>

class Palette
{
public:
    static constexpr int PALETTE_SIZE = 256;

    Palette();

    // Initialize palette
    void reset();

    // Write Atari RGB332 palette RAM
    void writeRGB332(
        int index,
        uint8_t data
    );

    uint8_t readRGB332(int index) const;

    // Set RGB color directly
    void setColor(
        int index,
        uint8_t r,
        uint8_t g,
        uint8_t b
    );

    // Get ARGB8888 color
    uint32_t getColor(int index) const;

    // Convert RGB components to ARGB8888
    static uint32_t makeARGB(
        uint8_t r,
        uint8_t g,
        uint8_t b
    );

private:
    uint32_t m_colors[PALETTE_SIZE];

    uint8_t m_paletteRAM[PALETTE_SIZE];
};
