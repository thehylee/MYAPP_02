
#pragma once

#include <SDL2/SDL.h>

class CRTEffect
{
public:
    CRTEffect();

    void setEnabled(bool enabled);
    void setScanlineIntensity(float intensity);
    void setVignetteIntensity(float intensity);
    void setRGBIntensity(float intensity);

    bool isEnabled() const;

    void apply(
        SDL_Renderer* renderer,
        int width,
        int height
    );

private:
    bool m_enabled;

    float m_scanlineIntensity;
    float m_vignetteIntensity;
    float m_rgbIntensity;
};
