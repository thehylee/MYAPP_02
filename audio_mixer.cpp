
#include "audio_mixer.h"

#include "pokey.h"

#include <algorithm>

AudioMixer::AudioMixer()
    : m_writeIndex(0),
      m_readIndex(0),
      m_sampleRate(DEFAULT_SAMPLE_RATE),
      m_samplePhase(0.0),
      m_previousInput(0.0f),
      m_previousOutput(0.0f),
      m_generatedSamples(0)
{
    std::fill(
        m_buffer,
        m_buffer + BUFFER_SIZE,
        0.0f
    );
}

void AudioMixer::configure(uint32_t sampleRate)
{
    if (sampleRate < 8000 || sampleRate > 192000)
        return;

    m_sampleRate = sampleRate;
    reset();
}

void AudioMixer::reset()
{
    m_writeIndex.store(0);
    m_readIndex.store(0);

    m_samplePhase = 0.0;

    m_previousInput = 0.0f;
    m_previousOutput = 0.0f;

    m_generatedSamples = 0;
}

float AudioMixer::mixPokeys(
    const Pokey* pokey1,
    const Pokey* pokey2
)
{
    uint32_t output = 0;

    if (pokey1)
        output += pokey1->getMixedOutput();

    if (pokey2)
        output += pokey2->getMixedOutput();

    // Two POKEYs: maximum theoretical output = 120.
    float input = static_cast<float>(output) / 120.0f;

    // Remove DC component.
    float filtered =
        input - m_previousInput +
        0.995f * m_previousOutput;

    m_previousInput = input;
    m_previousOutput = filtered;

    return std::clamp(
        filtered * 2.0f,
        -1.0f,
        1.0f
    );
}

void AudioMixer::pushSample(float sample)
{
    uint32_t write =
        m_writeIndex.load(std::memory_order_relaxed);

    uint32_t read =
        m_readIndex.load(std::memory_order_acquire);

    if ((write - read) >= BUFFER_SIZE)
        return;

    m_buffer[write & BUFFER_MASK] = sample;

    m_writeIndex.store(
        write + 1,
        std::memory_order_release
    );

    ++m_generatedSamples;
}

void AudioMixer::advance(
    uint32_t cpuCycles,
    const Pokey* pokey1,
    const Pokey* pokey2
)
{
    if (cpuCycles == 0)
        return;

    m_samplePhase +=
        static_cast<double>(cpuCycles) *
        static_cast<double>(m_sampleRate);

    uint64_t samples =
        static_cast<uint64_t>(
            m_samplePhase / POKEY_CLOCK_HZ
        );

    m_samplePhase -=
        static_cast<double>(samples) *
        POKEY_CLOCK_HZ;

    if (samples == 0)
        return;

    const float mixed =
        mixPokeys(pokey1, pokey2);

    for (uint64_t i = 0; i < samples; ++i)
        pushSample(mixed);
}

void AudioMixer::readSamples(
    float* output,
    size_t sampleCount
)
{
    if (!output)
        return;

    uint32_t read =
        m_readIndex.load(std::memory_order_relaxed);

    const uint32_t write =
        m_writeIndex.load(std::memory_order_acquire);

    size_t available = write - read;

    for (size_t i = 0; i < sampleCount; ++i)
    {
        if (available > 0)
        {
            output[i] =
                m_buffer[read & BUFFER_MASK];

            ++read;
            --available;
        }
        else
        {
            output[i] = 0.0f;
        }
    }

    m_readIndex.store(
        read,
        std::memory_order_release
    );
}

uint32_t AudioMixer::sampleRate() const
{
    return m_sampleRate;
}

uint64_t AudioMixer::generatedSamples() const
{
    return m_generatedSamples;
}
