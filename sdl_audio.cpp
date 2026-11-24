
#include "sdl_audio.h"

#include "audio_mixer.h"

#include <cstring>

SDL2Audio::SDL2Audio()
    : m_device(0),
      m_mixer(nullptr),
      m_initialized(false)
{
}

SDL2Audio::~SDL2Audio()
{
    close();
}

bool SDL2Audio::initialize(
    AudioMixer& mixer,
    int sampleRate
)
{
    if (m_initialized)
        return true;

    if (SDL_InitSubSystem(SDL_INIT_AUDIO) != 0)
    {
        m_lastError = SDL_GetError();
        return false;
    }

    SDL_AudioSpec desired{};

    desired.freq = sampleRate;
    desired.format = AUDIO_F32SYS;
    desired.channels = 1;
    desired.samples = 1024;
    desired.callback = audioCallback;
    desired.userdata = this;

    SDL_AudioSpec obtained{};

    m_device = SDL_OpenAudioDevice(
        nullptr,
        0,
        &desired,
        &obtained,
        0
    );

    if (m_device == 0)
    {
        m_lastError = SDL_GetError();
        return false;
    }

    if (obtained.format != AUDIO_F32SYS ||
        obtained.channels != 1 ||
        obtained.freq != sampleRate)
    {
        m_lastError = "Unsupported SDL audio format.";
        close();
        return false;
    }

    m_mixer = &mixer;
    m_mixer->configure(sampleRate);

    m_initialized = true;

    return true;
}

void SDL2Audio::start()
{
    if (m_initialized)
        SDL_PauseAudioDevice(m_device, 0);
}

void SDL2Audio::pause()
{
    if (m_initialized)
        SDL_PauseAudioDevice(m_device, 1);
}

void SDL2Audio::close()
{
    if (m_device != 0)
    {
        SDL_CloseAudioDevice(m_device);
        m_device = 0;
    }

    m_mixer = nullptr;
    m_initialized = false;
}

bool SDL2Audio::isInitialized() const
{
    return m_initialized;
}

const std::string& SDL2Audio::lastError() const
{
    return m_lastError;
}

void SDL2Audio::audioCallback(
    void* userdata,
    Uint8* stream,
    int length
)
{
    SDL2Audio* audio =
        static_cast<SDL2Audio*>(userdata);

    if (!audio || !audio->m_mixer)
    {
        std::memset(stream, 0, length);
        return;
    }

    size_t sampleCount =
        static_cast<size_t>(length) / sizeof(float);

    audio->m_mixer->readSamples(
        reinterpret_cast<float*>(stream),
        sampleCount
    );
}
