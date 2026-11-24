
#include "palette.h"

Palette::Palette()
{
    reset();
}

void Palette::reset()
{
    for (int i = 0; i < PALETTE_SIZE; ++i)
    {
        m_paletteRAM[i] = 0x00;
        m_colors[i] = 0xFF000000;
    }
}

// Atari RGB332 palette RAM write
void Palette::writeRGB332(
    int index,
    uint8_t data)
{
    if (index < 0 || index >= PALETTE_SIZE)
        return;

    m_paletteRAM[index] = data;

    // RGB332 format
    uint8_t r = (data >> 5) & 0x07;
    uint8_t g = (data >> 2) & 0x07;
    uint8_t b = data & 0x03;

    // Expand components to 8-bit RGB
    r = static_cast<uint8_t>((r * 255) / 7);
    g = static_cast<uint8_t>((g * 255) / 7);
    b = static_cast<uint8_t>((b * 255) / 3);

    m_colors[index] = makeARGB(r, g, b);
}

uint8_t Palette::readRGB332(int index) const
{
    if (index < 0 || index >= PALETTE_SIZE)
        return 0xFF;

    return m_paletteRAM[index];
}

// Set RGB directly
void Palette::setColor(
    int index,
    uint8_t r,
    uint8_t g,
    uint8_t b)
{
    if (index < 0 || index >= PALETTE_SIZE)
        return;

    m_colors[index] = makeARGB(r, g, b);
}

// Get ARGB8888 color
uint32_t Palette::getColor(int index) const
{
    if (index < 0 || index >= PALETTE_SIZE)
        return 0xFF000000;

    return m_colors[index];
}

// Convert RGB to ARGB8888
uint32_t Palette::makeARGB(
    uint8_t r,
    uint8_t g,
    uint8_t b)
{
    return 0xFF000000 |
           (static_cast<uint32_t>(r) << 16) |
           (static_cast<uint32_t>(g) << 8) |
           static_cast<uint32_t>(b);
}
