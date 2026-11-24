
#pragma once

#include <cstdint>
#include <vector>

class Framebuffer
{
public:
    Framebuffer(int width, int height);

    void clear(uint32_t color);

    void setPixel(
        int x,
        int y,
        uint32_t color
    );

    uint32_t getPixel(
        int x,
        int y
    ) const;

    uint32_t* data();

    const uint32_t* data() const;

    int width() const;
    int height() const;

    int pitch() const;

private:
    int m_width;
    int m_height;

    std::vector<uint32_t> m_pixels;
};
