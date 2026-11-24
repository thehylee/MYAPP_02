
#include "tile_decoder.h"

TileDecoder::TileDecoder()
    : m_tileCount(0)
{
}

bool TileDecoder::loadROM(
    const uint8_t* data,
    size_t size)
{
    if (data == nullptr || size == 0)
        return false;

    // One 8x8 4bpp packed tile = 32 bytes
    constexpr size_t TILE_ROM_SIZE = 32;

    if (size < TILE_ROM_SIZE)
        return false;

    m_rom.assign(data, data + size);

    m_tileCount = static_cast<int>(
        m_rom.size() / TILE_ROM_SIZE
    );

    return true;
}

bool TileDecoder::decodeTile(
    int tileIndex,
    uint8_t* output) const
{
    if (output == nullptr)
        return false;

    if (tileIndex < 0 || tileIndex >= m_tileCount)
        return false;

    constexpr size_t TILE_ROM_SIZE = 32;

    const size_t offset =
        static_cast<size_t>(tileIndex) * TILE_ROM_SIZE;

    const uint8_t* src = m_rom.data() + offset;

    for (int i = 0; i < 32; ++i)
    {
        output[i * 2] =
            (src[i] >> 4) & 0x0F;

        output[i * 2 + 1] =
            src[i] & 0x0F;
    }

    return true;
}

int TileDecoder::tileCount() const
{
    return m_tileCount;
}

bool TileDecoder::isLoaded() const
{
    return !m_rom.empty();
}
