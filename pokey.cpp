#include "pokey.h"

Pokey::Pokey()
{
    powerOnInitialize();
}

void Pokey::powerOnInitialize()
{
    for (auto& channel : m_channels)
    {
        channel.audf = 0;
        channel.audc = 0xB0;

        channel.counter = 0;
        channel.borrowCounter = 0;

        channel.output = 0;
        channel.filterSample = 0;
        channel.irqMask = 0;
    }

    m_channels[0].irqMask = 0x01;
    m_channels[1].irqMask = 0x02;
    m_channels[2].irqMask = 0x00;
    m_channels[3].irqMask = 0x04;

    m_audctl = 0x00;
    m_allpot = 0x00;
    m_kbcode = 0x09;
    m_serin = 0x00;

    m_irqStatus = 0x08;
    m_irqEnable = 0x00;

    m_skStatus = 0x00;
    m_skControl = 0x00;

    m_potValues.fill(0x00);

    m_clockCounter.fill(0);

    initializePolynomials();

    m_p4 = 0;
    m_p5 = 0;
    m_p9 = 0;
    m_p17 = 0;

    m_channel12Joined = false;
    m_channel34Joined = false;

    m_irqLineState = false;

    if (m_irqCallback)
        m_irqCallback(false);
}

uint8_t Pokey::read(uint8_t offset)
{
    offset &= 0x0F;

    if (offset <= 0x07)
        return m_potValues[offset];

    switch (offset)
    {
    case 0x08:
        if (m_allpotCallback)
            return m_allpotCallback();

        return m_allpot;

    case 0x09:
        return m_kbcode;

    case 0x0D:
        return m_serin;

    case 0x0E:
        return static_cast<uint8_t>(
            m_irqStatus ^ 0xFF
        );

    case 0x0F:
        return static_cast<uint8_t>(
            m_skStatus ^ 0xFF
        );

    case 0x0A:
        if (m_audctl & 0x80)
        {
            return static_cast<uint8_t>(
                m_poly9[m_p9] & 0xFF
            );
        }
        else
        {
            return static_cast<uint8_t>(
                (m_poly17[m_p17] >> 8) & 0xFF
            );
        }

    default:
        return 0xFF;
    }
}

void Pokey::resetChannel(int channel)
{
    if (channel < 0 || channel >= 4)
        return;

    Channel& ch = m_channels[channel];

    ch.counter = ch.audf ^ 0xFF;
    ch.borrowCounter = 0;
    ch.output = 0;
    ch.filterSample = (channel < 2) ? 1 : 0;
}

void Pokey::processChannel(int channel)
{
    if (channel < 0 || channel >= 4)
        return;

    Channel& ch = m_channels[channel];

    uint8_t previousOutput = ch.output;

    if ((ch.audc & 0x80) || (m_poly5[m_p5] & 1))
    {
        if (ch.audc & 0x20)
        {
            ch.output ^= 1;
        }
        else if (ch.audc & 0x40)
        {
            ch.output = static_cast<uint8_t>(
                m_poly4[m_p4] & 1
            );
        }
        else if (m_audctl & 0x80)
        {
            ch.output = static_cast<uint8_t>(
                m_poly9[m_p9] & 1
            );
        }
        else
        {
            ch.output = static_cast<uint8_t>(
                m_poly17[m_p17] & 1
            );
        }
    }

    // CH4 -> CH2 FILTER
    if (channel == 3 &&
        (m_audctl & 0x04) &&
        ch.output != previousOutput)
    {
        m_channels[1].filterSample = ch.output;
    }

    // CH3 -> CH1 FILTER
    if (channel == 2 &&
        (m_audctl & 0x02) &&
        ch.output != previousOutput)
    {
        m_channels[0].filterSample = ch.output;
    }
}

uint8_t Pokey::calculateChannelOutput(int channel) const
{
    if (channel < 0 || channel >= 4)
        return 0;

    const Channel& ch = m_channels[channel];

    const uint8_t volume = ch.audc & 0x0F;

    // VOLUME ONLY
    if (ch.audc & 0x10)
        return volume;

    bool filterEnabled = false;

    // CH1 Filter: AUDCTL bit 2
    if (channel == 0)
        filterEnabled = (m_audctl & 0x04) != 0;

    // CH2 Filter: AUDCTL bit 1
    if (channel == 1)
        filterEnabled = (m_audctl & 0x02) != 0;

    uint8_t output = ch.output;

    if (filterEnabled)
        output ^= ch.filterSample;

    return output ? volume : 0;
}

uint8_t Pokey::getMixedOutput() const
{
    uint16_t mixed = 0;

    for (int i = 0; i < 4; ++i)
        mixed += calculateChannelOutput(i);

    return static_cast<uint8_t>(mixed);
}

void Pokey::write(uint8_t offset, uint8_t data)
{
    offset &= 0x0F;

    if (offset <= 0x07)
    {
        int channel = offset / 2;

        if ((offset & 1) == 0)
            m_channels[channel].audf = data;
        else
            m_channels[channel].audc = data;

        return;
    }

    switch (offset)
    {
    case 0x08:
        m_audctl = data;

        m_channel12Joined = (data & 0x10) != 0;
        m_channel34Joined = (data & 0x08) != 0;
        break;

    case 0x09:
        for (int i = 0; i < 4; i++)
            resetChannel(i);

        if (m_channel12Joined)
        {
            m_channels[0].borrowCounter = 0;
            m_channels[1].borrowCounter = 0;
        }

        if (m_channel34Joined)
        {
            m_channels[2].borrowCounter = 0;
            m_channels[3].borrowCounter = 0;
        }

        break;

    case 0x0A:
        m_skStatus &= static_cast<uint8_t>(~0xE0);
        break;

    case 0x0E:
        if (m_irqStatus & static_cast<uint8_t>(~data))
        {
            m_irqStatus &= static_cast<uint8_t>(
                0x08 | data
            );
        }

        m_irqEnable = data;
        updateIRQLine();
        break;

    case 0x0F:
        m_skControl = data;

        if ((data & 0x03) == 0)
        {
            m_irqEnable = 0;
            m_skStatus &= static_cast<uint8_t>(~0xE2);

            m_p4 = 0;
            m_p5 = 0;
            m_p9 = 0;
            m_p17 = 0;

            m_clockCounter.fill(0);
        }

        updateIRQLine();
        break;

    default:
        break;
    }
}

void Pokey::initializePolynomials()
{
    // POLY4 / POLY5 (MAME poly_init_4_5)
    auto initializePoly45 = [](uint32_t* poly, int size)
    {
        const int mask = (1 << size) - 1;
        uint32_t lfsr = 0;
        const int xorbit = size - 1;

        for (int i = 0; i < mask; i++)
        {
            lfsr = (lfsr << 1) |
                (~((lfsr >> 2) ^ (lfsr >> xorbit)) & 1);

            poly[i] = lfsr & mask;
        }
    };

    initializePoly45(m_poly4.data(), 4);
    initializePoly45(m_poly5.data(), 5);

    // POLY9
    {
        uint32_t lfsr = 0x1FF;

        for (size_t i = 0; i < m_poly9.size(); i++)
        {
            const uint32_t in =
                ((lfsr >> 0) ^ (lfsr >> 5)) & 1;

            lfsr >>= 1;
            lfsr |= (in << 8);

            m_poly9[i] = lfsr;
        }
    }

    // POLY17
    {
        uint32_t lfsr = 0x1FFFF;

        for (size_t i = 0; i < m_poly17.size(); i++)
        {
            const uint32_t in8 =
                ((lfsr >> 8) ^ (lfsr >> 13)) & 1;

            const uint32_t in = lfsr & 1;

            lfsr >>= 1;
            lfsr = (lfsr & 0xFF7F) | (in8 << 7);
            lfsr |= (in << 16);

            m_poly17[i] = lfsr;
        }
    }
}

void Pokey::stepOneClock()
{
    if ((m_skControl & 0x03) == 0)
        return;

    // =====================================
    // 1. Polynomial clocks
    // =====================================

    if (++m_p4 >= 0x0F)
        m_p4 = 0;

    if (++m_p5 >= 0x1F)
        m_p5 = 0;

    if (++m_p9 >= 0x1FF)
        m_p9 = 0;

    if (++m_p17 >= 0x1FFFF)
        m_p17 = 0;

    // =====================================
    // 2. Clock dividers
    // =====================================

    bool clock28 = false;
    bool clock114 = false;

    if (++m_clockCounter[1] >= 28)
    {
        m_clockCounter[1] = 0;
        clock28 = true;
    }

    if (++m_clockCounter[2] >= 114)
    {
        m_clockCounter[2] = 0;
        clock114 = true;
    }

    const bool baseClock =
        (m_audctl & 0x01) ? clock114 : clock28;

    const bool fastClock12 =
        (m_audctl & 0x40) != 0;

    const bool fastClock34 =
        (m_audctl & 0x20) != 0;

    const bool clock12 = fastClock12 || baseClock;
    const bool clock34 = fastClock34 || baseClock;

    // =====================================
    // 3. Borrow processing
    // =====================================

    bool blocked[4] = {};
    bool borrowCompleted[4] = {};

    auto processBorrow = [](Channel& ch, bool& completed)
    {
        if (ch.borrowCounter <= 0)
            return false;

        --ch.borrowCounter;

        if (ch.borrowCounter == 0)
        {
            ch.counter = ch.audf ^ 0xFF;
            completed = true;
        }

        return true;
    };

    for (int i = 0; i < 4; ++i)
    {
        // JOIN 채널은 별도 Borrow 처리
        if (m_channel12Joined && (i == 0 || i == 1))
            continue;

        if (m_channel34Joined && (i == 2 || i == 3))
            continue;

        blocked[i] = processBorrow(
            m_channels[i],
            borrowCompleted[i]
        );
    }

    // =====================================
    // 4. Normal channel increment
    // =====================================
    
    auto incrementChannel =
        [this](Channel& ch,
            int delay,
            bool& completed,
            uint8_t irqMask)
    {
        ch.counter = (ch.counter + 1) & 0xFF;

        if (ch.counter == 0 && ch.borrowCounter == 0)
        {
            // Timer IRQ occurs at counter overflow.
            if (m_irqEnable & irqMask)
            {
                m_irqStatus |= irqMask;
            }

            if (delay == 1)
            {
                ch.counter = ch.audf ^ 0xFF;
                completed = true;
            }
            else
            {
                ch.borrowCounter = delay;
            }
        }
    };

    // =====================================
    // 5. Channel 1 / Channel 2
    // =====================================

    if (m_channel12Joined)
    {
        Channel& low = m_channels[0];
        Channel& high = m_channels[1];

        // CH1 counter increment
        if (clock12)
        {
            low.counter = (low.counter + 1) & 0xFF;

            if (low.counter == 0 && low.borrowCounter == 0)
            {
                if (m_irqEnable & 0x01)
                    m_irqStatus |= 0x01;

                low.borrowCounter = fastClock12 ? 7 : 1;
            }
        }

        // CH1 borrow processing: every POKEY clock
        if (low.borrowCounter > 0)
        {
            --low.borrowCounter;

            if (low.borrowCounter == 0)
            {
                // CH1 Borrow completed.
                // Do NOT reload CH1 in JOIN mode.
                borrowCompleted[0] = true;

                // Carry to CH2
                high.counter = (high.counter + 1) & 0xFF;

                if (high.counter == 0 && high.borrowCounter == 0)
                {
                    if (m_irqEnable & 0x02)
                        m_irqStatus |= 0x02;

                    high.borrowCounter = 1;
                }
            }
        }

        // CH2 borrow processing
        if (high.borrowCounter > 0)
        {
            --high.borrowCounter;

            if (high.borrowCounter == 0)
            {
                low.counter = low.audf ^ 0xFF;
                high.counter = high.audf ^ 0xFF;

                borrowCompleted[1] = true;
            }
        }
    }
    else
    {
        // 기존 독립 채널 처리 유지
        if (!borrowCompleted[0])
        {
            if (fastClock12)
                incrementChannel(
                    m_channels[0], 3, borrowCompleted[0], 0x01
                );
            else if (baseClock)
                incrementChannel(
                    m_channels[0], 1, borrowCompleted[0], 0x01
                );
        }

        if (baseClock &&
            !(m_audctl & 0x10) &&
            !borrowCompleted[1])
        {
            incrementChannel(
                m_channels[1], 1, borrowCompleted[1], 0x02
            );
        }
    }

    // =====================================
    // 6. Channel 3 / Channel 4
    // =====================================

    if (m_channel34Joined)
    {
        Channel& low = m_channels[2];
        Channel& high = m_channels[3];

        // CH3 counter increment
        if (clock34)
        {
            low.counter = (low.counter + 1) & 0xFF;

            if (low.counter == 0 && low.borrowCounter == 0)
            {
                low.borrowCounter = fastClock34 ? 7 : 1;
            }
        }

        // CH3 borrow processing
        if (low.borrowCounter > 0)
        {
            --low.borrowCounter;

            if (low.borrowCounter == 0)
            {
                // CH3 Borrow completed.
                // Do NOT reload CH3 in JOIN mode.
                borrowCompleted[2] = true;

                // Carry to CH4
                high.counter = (high.counter + 1) & 0xFF;

                if (high.counter == 0 &&
                    high.borrowCounter == 0)
                {
                    if (m_irqEnable & 0x04)
                        m_irqStatus |= 0x04;
                    high.borrowCounter = 1;
                }
            }
        }

        // CH4 borrow processing
        if (high.borrowCounter > 0)
        {
            --high.borrowCounter;

            if (high.borrowCounter == 0)
            {
                low.counter = low.audf ^ 0xFF;
                high.counter = high.audf ^ 0xFF;

                borrowCompleted[3] = true;
            }
        }
    }
    else
    {
        // CH3 독립 동작
        if (!borrowCompleted[2])
        {
            if (fastClock34)
                incrementChannel(
                    m_channels[2], 3, borrowCompleted[2], 0x00
                );
            else if (baseClock)
                incrementChannel(
                    m_channels[2], 1, borrowCompleted[2], 0x00
                );
        }

        // CH4 독립 동작
        if (baseClock &&
            !(m_audctl & 0x08) &&
            !borrowCompleted[3])
        {
            incrementChannel(
                m_channels[3], 1, borrowCompleted[3], 0x04
            );
        }
    }

    // Channel output processing after borrow completion.
    for (int i = 0; i < 4; ++i)
    {
        if (!borrowCompleted[i])
            continue;

        processChannel(i);

        // CH3 Borrow -> CH1 High-Pass Filter
        if (i == 2)
        {
            if (m_audctl & 0x04)
                m_channels[0].filterSample =
                    m_channels[0].output;
            else
                m_channels[0].filterSample = 1;
        }

        // CH4 Borrow -> CH2 High-Pass Filter
        if (i == 3)
        {
            if (m_audctl & 0x02)
                m_channels[1].filterSample =
                    m_channels[1].output;
            else
                m_channels[1].filterSample = 1;
        }
    }

    updateIRQLine();
}

void Pokey::execute(uint32_t cycles)
{
    for (uint32_t i = 0; i < cycles; i++)
        stepOneClock();

    m_totalCycles += cycles;
}

void Pokey::setIRQCallback(
    std::function<void(bool)> callback)
{
    m_irqCallback = callback;

    if (m_irqCallback)
    {
        const bool state =
            (m_irqStatus & m_irqEnable) != 0;

        m_irqLineState = state;
        m_irqCallback(state);
    }
}

void Pokey::updateIRQLine()
{
    const bool state =
        (m_irqStatus & m_irqEnable) != 0;

    if (state == m_irqLineState)
        return;

    m_irqLineState = state;

    if (m_irqCallback)
        m_irqCallback(state);
}

void Pokey::setAllPotCallback(
    std::function<uint8_t()> callback)
{
    m_allpotCallback = callback;
}

uint64_t Pokey::totalCycles() const
{
    return m_totalCycles;
}