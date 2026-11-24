
#pragma once

#include <cstdint>
#include <array>
#include <functional>

class Pokey
{
public:
    static constexpr uint32_t MASTER_CLOCK_HZ = 14318181;
    static constexpr uint32_t CLOCK_DIVIDER = 8;

    Pokey();

    void powerOnInitialize();

    uint8_t read(uint8_t offset);

    void write(uint8_t offset, uint8_t data);
    
    void initializePolynomials();

    void execute(uint32_t cycles);

    uint8_t getMixedOutput() const;

    void setIRQCallback(std::function<void(bool)> callback);
    
    void setAllPotCallback(
        std::function<uint8_t()> callback
    );

    uint64_t totalCycles() const;

private:
    struct Channel
    {
        uint8_t audf;
        uint8_t audc;

        int32_t counter;
        int32_t borrowCounter;

        uint8_t output;
        uint8_t filterSample;
        uint8_t irqMask;
    };

    std::array<Channel, 4> m_channels;

    uint8_t m_audctl;
    uint8_t m_allpot;
    uint8_t m_kbcode;
    uint8_t m_serin;

    uint8_t m_irqStatus;
    uint8_t m_irqEnable;

    uint8_t m_skStatus;
    uint8_t m_skControl;

    bool m_channel12Joined;
    bool m_channel34Joined;

    std::array<uint8_t, 8> m_potValues;

    std::array<int32_t, 3> m_clockCounter;

    std::array<uint32_t, 0x0F> m_poly4;
    std::array<uint32_t, 0x1F> m_poly5;

    std::array<uint32_t, 0x1FF> m_poly9;
    std::array<uint32_t, 0x1FFFF> m_poly17;

    uint32_t m_p4;
    uint32_t m_p5;
    uint32_t m_p9;
    uint32_t m_p17;

    void resetChannel(int channel);
    void processChannel(int channel);

    uint8_t calculateChannelOutput(int channel) const;

    void stepOneClock();

    std::function<void(bool)> m_irqCallback;
    bool m_irqLineState = false;

    void updateIRQLine();

    std::function<uint8_t()> m_allpotCallback;

    uint64_t m_totalCycles = 0;
};