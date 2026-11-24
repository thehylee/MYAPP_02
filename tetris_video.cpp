
#include "tetris_video.h"

#include <algorithm>

static constexpr int TILE_WIDTH = 8;
static constexpr int TILE_HEIGHT = 8;
static constexpr int PIXELS_PER_TILE = TILE_WIDTH * TILE_HEIGHT;

AtariTetrisVideo::AtariTetrisVideo(
    Framebuffer& framebuffer,
    Palette& palette,
    TileDecoder& decoder
)
    : m_framebuffer(framebuffer),
      m_palette(palette),
      m_decoder(decoder)
{
    invalidateAll();
}

// Get graphics tile code from video RAM
int AtariTetrisVideo::getTileCode(
    const uint8_t* videoram,
    int tileIndex
) const
{
    int offset = tileIndex * 2;

    return videoram[offset] |
           ((videoram[offset + 1] & 0x07) << 8);
}

// Get palette group from video RAM
int AtariTetrisVideo::getTileColor(
    const uint8_t* videoram,
    int tileIndex
) const
{
    int offset = tileIndex * 2;

    return (videoram[offset + 1] >> 4) & 0x0F;
}

// Render one 8x8 tile
void AtariTetrisVideo::renderTile(
    int tileIndex,
    const uint8_t* videoram
)
{
    if (videoram == nullptr)
        return;

    if (tileIndex < 0 ||
        tileIndex >= TILEMAP_COLS * TILEMAP_ROWS)
        return;

    int code = getTileCode(videoram, tileIndex);
    int color = getTileColor(videoram, tileIndex);

    uint8_t pixels[PIXELS_PER_TILE]{};

    if (!m_decoder.decodeTile(code, pixels))
        return;

    // Tile position in 64x32 tilemap
    int tileX = (tileIndex % TILEMAP_COLS) * TILE_WIDTH;
    int tileY = (tileIndex / TILEMAP_COLS) * TILE_HEIGHT;

    for (int y = 0; y < TILE_HEIGHT; ++y)
    {
        for (int x = 0; x < TILE_WIDTH; ++x)
        {
            int screenX = tileX + x;
            int screenY = tileY + y;

            // Clip to visible screen
            if (screenX >= SCREEN_WIDTH ||
                screenY >= SCREEN_HEIGHT)
                continue;

            uint8_t pixel = pixels[y * TILE_WIDTH + x];

            // 16 palette groups, 16 colors per group
            int paletteIndex = color * 16 + pixel;

            uint32_t rgb = m_palette.getColor(paletteIndex);

            m_framebuffer.setPixel(
                screenX,
                screenY,
                rgb
            );
        }
    }

    m_dirty[tileIndex] = false;
}

// Render dirty tiles only
void AtariTetrisVideo::render(
    const uint8_t* videoram
)
{
    if (videoram == nullptr)
        return;

    for (int tile = 0;
         tile < TILEMAP_COLS * TILEMAP_ROWS;
         ++tile)
    {
        if (m_dirty[tile])
        {
            renderTile(tile, videoram);
        }
    }
}

// Mark tile dirty after video RAM write
void AtariTetrisVideo::markTileDirty(int offset)
{
    if (offset < 0 || offset >= VIDEO_RAM_SIZE)
        return;

    int tileIndex = offset / 2;

    m_dirty[tileIndex] = true;
}

// Mark all tiles dirty
void AtariTetrisVideo::invalidateAll()
{
    std::fill(
        std::begin(m_dirty),
        std::end(m_dirty),
        true
    );
}
