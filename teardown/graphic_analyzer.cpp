
#include "graphic_analyzer.h"

#include <fstream>
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

bool GraphicsAnalyzer::load(const std::string& filename)
{
    m_data.clear();
    m_error.clear();

    std::ifstream file(filename, std::ios::binary | std::ios::ate);

    if (!file)
    {
        m_error = "Cannot open graphics ROM.";
        return false;
    }

    auto length = file.tellg();

    if (length <= 0 ||
        length % TILE_BYTES != 0)
    {
        m_error = "Invalid graphics ROM size.";
        return false;
    }

    file.seekg(0);

    m_data.resize(static_cast<size_t>(length));

    if (!file.read(
        reinterpret_cast<char*>(m_data.data()),
        length))
    {
        m_data.clear();
        m_error = "Graphics ROM read failed.";
        return false;
    }

    return true;
}

size_t GraphicsAnalyzer::tileCount() const
{
    return m_data.size() / TILE_BYTES;
}

bool GraphicsAnalyzer::decodeTile(
    size_t tileIndex,
    std::vector<uint8_t>& pixels) const
{
    if (tileIndex >= tileCount())
        return false;

    pixels.resize(64);

    size_t base = tileIndex * TILE_BYTES;

    for (size_t y = 0; y < 8; ++y)
    {
        for (size_t x = 0; x < 8; ++x)
        {
            size_t byteOffset =
                base + y * 4 + x / 2;

            uint8_t value = m_data[byteOffset];

            uint8_t color =
                (x % 2 == 0)
                ? (value >> 4)
                : (value & 0x0F);

            pixels[y * 8 + x] = color;
        }
    }

    return true;
}

bool GraphicsAnalyzer::saveBMP(
    const std::string& filename,
    const std::vector<uint8_t>& pixels,
    size_t width,
    size_t height) const
{
    if (width == 0 || height == 0 ||
        width > 100000 || height > 100000 ||
        pixels.size() != width * height)
    {
        return false;
    }

    const uint32_t rowSize =
        static_cast<uint32_t>((width * 3 + 3) & ~3);

    const uint32_t imageSize =
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

    const uint32_t padding = rowSize - width * 3;

    for (size_t y = height; y-- > 0;)
    {
        for (size_t x = 0; x < width; ++x)
        {
            uint8_t color =
                pixels[y * width + x] * 17;

            out.put(static_cast<char>(color));
            out.put(static_cast<char>(color));
            out.put(static_cast<char>(color));
        }

        for (uint32_t i = 0; i < padding; ++i)
            out.put(0);
    }

    return static_cast<bool>(out);
}

bool GraphicsAnalyzer::saveTileBMP(
    size_t tileIndex,
    const std::string& filename) const
{
    std::vector<uint8_t> pixels;

    if (!decodeTile(tileIndex, pixels))
        return false;

    return saveBMP(filename, pixels, 8, 8);
}

bool GraphicsAnalyzer::saveTileSheetBMP(
    const std::string& filename,
    size_t columns) const
{
    if (columns == 0 || tileCount() == 0)
        return false;

    size_t rows = (tileCount() + columns - 1) / columns;

    std::vector<uint8_t> sheet(
        columns * 8 * rows * 8, 0);

    for (size_t tile = 0; tile < tileCount(); ++tile)
    {
        std::vector<uint8_t> pixels;

        if (!decodeTile(tile, pixels))
            return false;

        size_t tileX = (tile % columns) * 8;
        size_t tileY = (tile / columns) * 8;

        for (size_t y = 0; y < 8; ++y)
        {
            for (size_t x = 0; x < 8; ++x)
            {
                sheet[
                    (tileY + y) * columns * 8
                    + tileX + x
                ] = pixels[y * 8 + x];
            }
        }
    }

    return saveBMP(
        filename,
        sheet,
        columns * 8,
        rows * 8);
}

const std::string& GraphicsAnalyzer::error() const
{
    return m_error;
}
