
#pragma once

#include <cstdint>
#include <vector>
#include <cstddef>

class TileDecoder
{
public:
    static constexpr int TILE_WIDTH  = 8;
    static constexpr int TILE_HEIGHT = 8;
    static constexpr int PIXELS_PER_TILE = 64;

    TileDecoder();

    // Load graphics ROM data
    bool loadROM(
        const uint8_t* data,
        size_t size
    );

    // Decode one 8x8 tile
    bool decodeTile(
        int tileIndex,
        uint8_t* output
    ) const;

    // Get number of available tiles
    int tileCount() const;

    // Check ROM availability
    bool isLoaded() const;

private:
    std::vector<uint8_t> m_rom;

    int m_tileCount;
};
