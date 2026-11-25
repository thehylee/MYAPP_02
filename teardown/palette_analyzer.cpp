
#include "palette_analyzer.h"

#include <fstream>
#include <iomanip>
#include <algorithm>

namespace
{
    void write16(std::ofstream& out, uint16_t value)
    {
        out.put(static_cast<char>(value));
        out.put(static_cast<char>(value >> 8));
    }

    void write32(std::ofstream& out, uint32_t value)
    {
        write16(out, static_cast<uint16_t>(value));
        write16(out, static_cast<uint16_t>(value >> 16));
    }
}

RGBColor PaletteAnalyzer::decodeRGB332(uint8_t value)
{
    RGBColor color;

    uint8_t r = (value >> 5) & 0x07;
    uint8_t g = (value >> 2) & 0x07;
    uint8_t b = value & 0x03;

    color.r = static_cast<uint8_t>((r * 255 + 3) / 7);
    color.g = static_cast<uint8_t>((g * 255 + 3) / 7);
    color.b = static_cast<uint8_t>((b * 255 + 1) / 3);

    return color;
}

size_t PaletteAnalyzer::getPaletteIndex(
    uint8_t colorGroup,
    uint8_t pixelValue)
{
    return
        (static_cast<size_t>(colorGroup & 0x0F) * 16)
        + (pixelValue & 0x0F);
}

bool PaletteAnalyzer::loadPaletteRAM(
    const std::string& filename)
{
    m_palette.clear();
    m_error.clear();

    std::ifstream file(filename, std::ios::binary | std::ios::ate);

    if (!file)
    {
        m_error = "Cannot open palette RAM dump.";
        return false;
    }

    auto length = file.tellg();

    if (length != static_cast<std::streamoff>(PALETTE_SIZE))
    {
        m_error = "Palette RAM dump must be exactly 256 bytes.";
        return false;
    }

    file.seekg(0);

    m_palette.resize(PALETTE_SIZE);

    if (!file.read(
        reinterpret_cast<char*>(m_palette.data()),
        static_cast<std::streamsize>(PALETTE_SIZE)))
    {
        m_palette.clear();
        m_error = "Palette RAM read failed.";
        return false;
    }

    return true;
}

bool PaletteAnalyzer::savePaletteTXT(
    const std::string& filename) const
{
    if (!isLoaded())
        return false;

    std::ofstream out(filename);

    if (!out)
        return false;

    out << "Atari Tetris Palette RAM\n";
    out << "Address Range: 0x2000-0x20FF\n";
    out << "Format: RGB332\n\n";

    for (size_t i = 0; i < m_palette.size(); ++i)
    {
        RGBColor c = decodeRGB332(m_palette[i]);

        out << "Index: "
            << std::dec << std::setw(3)
            << std::setfill('0') << i;

        out << "  Value: 0x"
            << std::hex << std::uppercase
            << std::setw(2) << static_cast<int>(m_palette[i]);

        out << "  RGB: "
            << std::dec
            << static_cast<int>(c.r) << ", "
            << static_cast<int>(c.g) << ", "
            << static_cast<int>(c.b) << "\n";
    }

    return static_cast<bool>(out);
}

bool PaletteAnalyzer::saveBMP(
    const std::string& filename,
    const std::vector<RGBColor>& colors,
    size_t width,
    size_t height) const
{
    if (width == 0 || height == 0 ||
        width > 100000 || height > 100000 ||
        colors.size() != width * height)
        return false;

    uint32_t rowSize =
        static_cast<uint32_t>((width * 3 + 3) & ~3);

    uint32_t imageSize =
        rowSize * static_cast<uint32_t>(height);

    std::ofstream out(filename, std::ios::binary);

    if (!out)
        return false;

    out.put('B');
    out.put('M');

    write32(out, 54 + imageSize);
    write16(out, 0);
    write16(out, 0);
    write32(out, 54);

    write32(out, 40);
    write32(out, static_cast<uint32_t>(width));
    write32(out, static_cast<uint32_t>(height));
    write16(out, 1);
    write16(out, 24);
    write32(out, 0);
    write32(out, imageSize);
    write32(out, 2835);
    write32(out, 2835);
    write32(out, 0);
    write32(out, 0);

    uint32_t padding = rowSize - width * 3;

    for (size_t y = height; y-- > 0;)
    {
        for (size_t x = 0; x < width; ++x)
        {
            const RGBColor& c = colors[y * width + x];

            out.put(static_cast<char>(c.b));
            out.put(static_cast<char>(c.g));
            out.put(static_cast<char>(c.r));
        }

        for (uint32_t i = 0; i < padding; ++i)
            out.put(0);
    }

    return static_cast<bool>(out);
}

bool PaletteAnalyzer::savePaletteBMP(
    const std::string& filename) const
{
    if (!isLoaded())
        return false;

    std::vector<RGBColor> colors;

    for (uint8_t value : m_palette)
        colors.push_back(decodeRGB332(value));

    return saveBMP(filename, colors, 16, 16);
}

bool PaletteAnalyzer::saveRGB332ReferenceBMP(
    const std::string& filename) const
{
    std::vector<RGBColor> colors;

    for (int i = 0; i < 256; ++i)
        colors.push_back(decodeRGB332(
            static_cast<uint8_t>(i)));

    return saveBMP(filename, colors, 16, 16);
}

bool PaletteAnalyzer::isLoaded() const
{
    return m_palette.size() == PALETTE_SIZE;
}

const std::string& PaletteAnalyzer::error() const
{
    return m_error;
}
