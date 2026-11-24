
#include "sdl_video.h"
#include "framebuffer.h"
#include "tetris_input.h"
#include "crt_effect.h"

#include <cstdio>

static void updateKeyboardInput(
    TetrisInput* input,
    SDL_Keycode key,
    bool pressed)
{
    if (!input)
        return;

    switch (key)
    {
    case SDLK_LEFT:
        input->setP1Left(pressed);
        break;

    case SDLK_RIGHT:
        input->setP1Right(pressed);
        break;

    case SDLK_DOWN:
        input->setP1Down(pressed);
        break;

    case SDLK_UP:
        input->setP1Button(pressed);
        break;

    case SDLK_5:
        input->setCoin1(pressed);
        break;

    case SDLK_6:
        input->setCoin2(pressed);
        break;

    case SDLK_F2:
        input->setService(pressed);
        break;
    }
}

SDLVideo::SDLVideo()
    : m_window(nullptr),
      m_renderer(nullptr),
      m_texture(nullptr),
      m_input(nullptr),
      m_width(0),
      m_height(0),
      m_initialized(false),
      m_running(false),
      m_sdlInitialized(false)
{
}

SDLVideo::~SDLVideo()
{
    shutdown();
}

bool SDLVideo::initialize(
    const char* title,
    int width,
    int height,
    int scale)
{
    if (m_initialized)
        return true;

    if (width <= 0 || height <= 0 || scale <= 0)
        return false;

    if (SDL_Init(SDL_INIT_VIDEO | SDL_INIT_EVENTS) != 0)
    {
        std::printf("SDL_Init: %s\n", SDL_GetError());
        return false;
    }

    m_sdlInitialized = true;

    m_width = width;
    m_height = height;

    // Create window
    m_window = SDL_CreateWindow(
        title,
        SDL_WINDOWPOS_CENTERED,
        SDL_WINDOWPOS_CENTERED,
        width * scale,
        height * scale,
        SDL_WINDOW_SHOWN
    );

    if (!m_window)
    {
        std::printf("SDL_CreateWindow: %s\n", SDL_GetError());
        shutdown();
        return false;
    }

    // Create renderer
    m_renderer = SDL_CreateRenderer(
        m_window,
        -1,
        SDL_RENDERER_ACCELERATED |
        SDL_RENDERER_PRESENTVSYNC
    );

    // Software renderer fallback
    if (!m_renderer)
    {
        m_renderer = SDL_CreateRenderer(
            m_window,
            -1,
            SDL_RENDERER_SOFTWARE
        );
    }

    if (!m_renderer)
    {
        std::printf("SDL_CreateRenderer: %s\n", SDL_GetError());
        shutdown();
        return false;
    }

    // Create streaming texture
    m_texture = SDL_CreateTexture(
        m_renderer,
        SDL_PIXELFORMAT_ARGB8888,
        SDL_TEXTUREACCESS_STREAMING,
        width,
        height
    );

    if (!m_texture)
    {
        std::printf("SDL_CreateTexture: %s\n", SDL_GetError());
        shutdown();
        return false;
    }

    SDL_SetTextureBlendMode(
        m_texture,
        SDL_BLENDMODE_NONE
    );

    SDL_SetHint(
        SDL_HINT_RENDER_SCALE_QUALITY,
        "0"
    );

    SDL_RenderSetLogicalSize(
        m_renderer,
        width,
        height
    );

    m_initialized = true;
    m_running = true;

    return true;
}

void SDLVideo::present(const Framebuffer& framebuffer)
{
    if (!m_initialized)
        return;

    if (framebuffer.width() != m_width ||
        framebuffer.height() != m_height)
    {
        return;
    }

    SDL_UpdateTexture(
        m_texture,
        nullptr,
        framebuffer.data(),
        framebuffer.pitch()
    );

    SDL_SetRenderDrawColor(
        m_renderer,
        0, 0, 0, 255
    );

    SDL_RenderClear(m_renderer);

    SDL_RenderCopy(
        m_renderer,
        m_texture,
        nullptr,
        nullptr
    );

    m_crtEffect.apply(
        m_renderer,
        m_width,
        m_height
    );

    SDL_RenderPresent(m_renderer);
}

bool SDLVideo::processEvents()
{
    if (!m_initialized)
        return false;

    SDL_Event event;

    while (SDL_PollEvent(&event))
    {
        switch (event.type)
        {
        case SDL_QUIT:
            m_running = false;
            break;

        case SDL_KEYDOWN:

            if (event.key.keysym.sym == SDLK_ESCAPE)
            {
                m_running = false;
                break;
            }

            if (!event.key.repeat)
            {
                updateKeyboardInput(
                    m_input,
                    event.key.keysym.sym,
                    true
                );
            }
            break;

        case SDL_KEYUP:

            updateKeyboardInput(
                m_input,
                event.key.keysym.sym,
                false
            );
            break;

        case SDL_WINDOWEVENT:

            if (event.window.event ==
                SDL_WINDOWEVENT_FOCUS_LOST)
            {
                if (m_input)
                    m_input->reset();
            }
            break;
        }
    }

    return m_running;
}

void SDLVideo::setInput(TetrisInput* input)
{
    m_input = input;
}

void SDLVideo::setCRTEnabled(bool enabled)
{
    m_crtEffect.setEnabled(enabled);
}

bool SDLVideo::isInitialized() const
{
    return m_initialized;
}

void SDLVideo::shutdown()
{
    if (m_texture)
    {
        SDL_DestroyTexture(m_texture);
        m_texture = nullptr;
    }

    if (m_renderer)
    {
        SDL_DestroyRenderer(m_renderer);
        m_renderer = nullptr;
    }

    if (m_window)
    {
        SDL_DestroyWindow(m_window);
        m_window = nullptr;
    }

    if (m_initialized)
    {
        SDL_QuitSubSystem(
            SDL_INIT_VIDEO | SDL_INIT_EVENTS
        );

        m_sdlInitialized = false;
    }

    m_initialized = false;
    m_running = false;
    m_width = 0;
    m_height = 0;
}
