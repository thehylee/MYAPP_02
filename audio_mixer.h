
#pragma once

#include <atomic>
#include <cstddef>
#include <cstdint>

class Pokey;

class AudioMixer
{
public:
    static constexpr uint32_t DEFAULT_SAMPLE_RATE = 48000;
    static constexpr uint32_t POKEY_CLOCK_HZ = 1789773;
    static constexpr size_t BUFFER_SIZE = 16384;

    AudioMixer();

    void configure(uint32_t sampleRate);

    void reset();

    // Called by the emulation thread.
    void advance(
        uint32_t cpuCycles,
        const Pokey* pokey1,
        const Pokey* pokey2
    );

    // Called by the SDL audio thread.
    void readSamples(float* output, size_t sampleCount);

    uint32_t sampleRate() const;

    uint64_t generatedSamples() const;

private:
    float mixPokeys(
        const Pokey* pokey1,
        const Pokey* pokey2
    );

    void pushSample(float sample);

    static constexpr uint32_t BUFFER_MASK =
        BUFFER_SIZE - 1;

    float m_buffer[BUFFER_SIZE];

    std::atomic<uint32_t> m_writeIndex;
    std::atomic<uint32_t> m_readIndex;

    uint32_t m_sampleRate;

    double m_samplePhase;

    float m_previousInput;
    float m_previousOutput;

    uint64_t m_generatedSamples;
};
