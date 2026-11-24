
#include "framebuffer.h"

#include <algorithm>

Framebuffer::Framebuffer(int width, int height)
    : m_width(width),
      m_height(height),
      m_pixels(width * height, 0xFF000000)
{
}

void Framebuffer::clear(uint32_t color)
{
    std::fill(
        m_pixels.begin(),
        m_pixels.end(),
        color
    );
}

void Framebuffer::setPixel(
    int x,
    int y,
    uint32_t color)
{
    if (x < 0 || x >= m_width ||
        y < 0 || y >= m_height)
    {
        return;
    }

    m_pixels[y * m_width + x] = color;
}

uint32_t Framebuffer::getPixel(
    int x,
    int y) const
{
    if (x < 0 || x >= m_width ||
        y < 0 || y >= m_height)
    {
        return 0xFF000000;
    }

    return m_pixels[y * m_width + x];
}

uint32_t* Framebuffer::data()
{
    return m_pixels.data();
}

const uint32_t* Framebuffer::data() const
{
    return m_pixels.data();
}

int Framebuffer::width() const
{
    return m_width;
}

int Framebuffer::height() const
{
    return m_height;
}

int Framebuffer::pitch() const
{
    return m_width * sizeof(uint32_t);
}
