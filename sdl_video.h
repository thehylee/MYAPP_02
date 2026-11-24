
#pragma once

#include <SDL2/SDL.h>

#include <cstdint>

#include "crt_effect.h"

class Framebuffer;
class TetrisInput;

class SDLVideo
{
public:
    SDLVideo();
    ~SDLVideo();

    // Initialize SDL window, renderer and texture
    bool initialize(
        const char* title,
        int width,
        int height,
        int scale = 3
    );

    // Render framebuffer
    void present(const Framebuffer& framebuffer);

    // Process window events
    bool processEvents();

    void setInput(TetrisInput* input);

    void setCRTEnabled(bool enabled);

    CRTEffect& crtEffect()
    {
        return m_crtEffect;
    }

    // Check initialization
    bool isInitialized() const;

    // Shutdown SDL video
    void shutdown();

private:
    SDL_Window* m_window;
    SDL_Renderer* m_renderer;
    SDL_Texture* m_texture;
    TetrisInput* m_input = nullptr;
    CRTEffect m_crtEffect;

    int m_width;
    int m_height;

    bool m_initialized;
    bool m_running;

    bool m_sdlInitialized;
};
