
#pragma once

#include <SDL2/SDL.h>
#include <string>

class AudioMixer;

class SDL2Audio
{
public:
    SDL2Audio();
    ~SDL2Audio();

    bool initialize(
        AudioMixer& mixer,
        int sampleRate = 48000
    );

    void start();
    void pause();
    void close();

    bool isInitialized() const;

    const std::string& lastError() const;

private:
    SDL_AudioDeviceID m_device;

    AudioMixer* m_mixer;

    bool m_initialized;

    std::string m_lastError;

    static void audioCallback(
        void* userdata,
        Uint8* stream,
        int length
    );
};
