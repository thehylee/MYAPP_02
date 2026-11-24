
#pragma once

#include <cstdint>
#include <cstddef>

#include "framebuffer.h"
#include "palette.h"
#include "tile_decoder.h"

class AtariTetrisVideo
{
public:
    static constexpr int TILE_WIDTH  = 8;
    static constexpr int TILE_HEIGHT = 8;

    static constexpr int TILEMAP_COLS = 64;
    static constexpr int TILEMAP_ROWS = 32;

    static constexpr int VIDEO_RAM_SIZE = 0x1000;

    static constexpr int SCREEN_WIDTH  = 336;
    static constexpr int SCREEN_HEIGHT = 240;

    AtariTetrisVideo(
        Framebuffer& framebuffer,
        Palette& palette,
        TileDecoder& decoder
    );

    // Render complete Atari Tetris frame
    void render(const uint8_t* videoram);

    // Render one tile
    void renderTile(
        int tileIndex,
        const uint8_t* videoram
    );

    // Update one tile after video RAM write
    void markTileDirty(int offset);

    // Invalidate all cached tiles
    void invalidateAll();

private:
    Framebuffer& m_framebuffer;
    Palette& m_palette;
    TileDecoder& m_decoder;

    bool m_dirty[TILEMAP_COLS * TILEMAP_ROWS];

    // Decode tile number from video RAM
    int getTileCode(
        const uint8_t* videoram,
        int tileIndex
    ) const;

    // Decode palette group from video RAM
    int getTileColor(
        const uint8_t* videoram,
        int tileIndex
    ) const;
};
