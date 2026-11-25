
#pragma once

#include <cstdint>
#include <string>
#include <vector>

class GraphicsAnalyzer
{
public:
    static constexpr size_t TILE_WIDTH = 8;
    static constexpr size_t TILE_HEIGHT = 8;
    static constexpr size_t TILE_BYTES = 32;

    bool load(const std::string& filename);

    size_t tileCount() const;
    bool decodeTile(size_t tileIndex,
                    std::vector<uint8_t>& pixels) const;

    bool saveTileBMP(
        size_t tileIndex,
        const std::string& filename) const;

    bool saveTileSheetBMP(
        const std::string& filename,
        size_t columns = 64) const;

    const std::string& error() const;

private:
    std::vector<uint8_t> m_data;
    std::string m_error;

    bool saveBMP(
        const std::string& filename,
        const std::vector<uint8_t>& pixels,
        size_t width,
        size_t height) const;
};
