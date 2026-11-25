
#pragma once

#include <cstdint>
#include <string>
#include <vector>

struct RGBColor
{
    uint8_t r;
    uint8_t g;
    uint8_t b;
};

class PaletteAnalyzer
{
public:
    static constexpr size_t PALETTE_SIZE = 256;

    static RGBColor decodeRGB332(uint8_t value);

    static size_t getPaletteIndex(
        uint8_t colorGroup,
        uint8_t pixelValue);

    bool loadPaletteRAM(const std::string& filename);

    bool savePaletteTXT(const std::string& filename) const;

    bool savePaletteBMP(const std::string& filename) const;

    bool saveRGB332ReferenceBMP(
        const std::string& filename) const;

    bool isLoaded() const;

    const std::string& error() const;

private:
    std::vector<uint8_t> m_palette;
    std::string m_error;

    bool saveBMP(
        const std::string& filename,
        const std::vector<RGBColor>& colors,
        size_t width,
        size_t height) const;
};
