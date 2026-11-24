#include "slapstic.h"

Slapstic::Slapstic()
    : m_state(State::IDLE),
      m_currentBank(3),
      m_loadedBank(3)
{
    reset();
}

void Slapstic::reset()
{
    m_state = State::IDLE;

    // Slapstic 101 starts at bank 3.
    m_currentBank = 3;
    m_loadedBank = 3;
}

bool Slapstic::match(
    uint16_t address,
    uint16_t mask,
    uint16_t value)
{
    return (address & mask) == value;
}

void Slapstic::access(
    uint16_t address,
    bool inside)
{
    address &= 0x1FFF;

    // Reset sequence: address 0 inside banked region.
    const bool resetAddress =
        inside && address == 0x0000;

    if (m_state != State::IDLE && resetAddress)
    {
        m_state = State::ACTIVE;
        return;
    }

    switch (m_state)
    {
    case State::IDLE:
        if (resetAddress)
            m_state = State::ACTIVE;
        break;

    case State::ACTIVE:
    {
        // Direct bank switching
        static constexpr uint16_t bankValues[4] =
        {
            0x0080,
            0x0090,
            0x00A0,
            0x00B0
        };

        for (int i = 0; i < 4; ++i)
        {
            if (inside &&
                match(address, 0x1FFF, bankValues[i]))
            {
                m_currentBank = i;
                m_state = State::IDLE;
                return;
            }
        }

        // Alternate banking start
        if (inside &&
            match(address, 0x1F00, 0x1E00))
        {
            m_state = State::ALT_VALID;
            return;
        }

        // Bitwise banking start
        if (inside &&
            match(address, 0x1FF0, 0x1540))
        {
            m_state = State::BIT_LOAD;
            return;
        }

        break;
    }

    case State::ALT_VALID:

        // Second alternate access must be outside
        // the banked region.
        if (!inside &&
            match(address, 0x1FFF, 0x1FFF))
        {
            m_state = State::ALT_SELECT;
        }
        else
        {
            m_state = State::ACTIVE;
        }

        break;

    case State::ALT_SELECT:

        if (inside &&
            match(address, 0x1FFC, 0x1B5C))
        {
            m_loadedBank = address & 0x03;
            m_state = State::ALT_COMMIT;
        }
        else
        {
            m_state = State::ACTIVE;
        }

        break;

    case State::ALT_COMMIT:

        if (inside &&
            match(address, 0x1FCF, 0x0080))
        {
            m_currentBank = m_loadedBank;
            m_state = State::IDLE;
        }

        break;

    case State::BIT_LOAD:

        if (inside &&
            match(address, 0x1FCF, 0x0080))
        {
            m_loadedBank = m_currentBank;
            m_state = State::BIT_SET_ODD;
        }

        break;

    case State::BIT_SET_ODD:

    case State::BIT_SET_EVEN:
    {
        const bool odd =
            (m_state == State::BIT_SET_ODD);

        if (inside &&
            match(address, 0x1FF3, 0x1540))
        {
            if (odd)
                m_loadedBank &= ~1;
            else
                m_loadedBank |= 2;

            m_state = odd ?
                State::BIT_SET_EVEN :
                State::BIT_SET_ODD;
        }
        else if (inside &&
                 match(address, 0x1FF3, 0x1541))
        {
            if (odd)
                m_loadedBank |= 1;
            else
                m_loadedBank &= ~2;

            m_state = odd ?
                State::BIT_SET_EVEN :
                State::BIT_SET_ODD;
        }
        else if (inside &&
                 match(address, 0x1FF3, 0x1542))
        {
            if (odd)
                m_loadedBank &= ~2;
            else
                m_loadedBank |= 1;

            m_state = odd ?
                State::BIT_SET_EVEN :
                State::BIT_SET_ODD;
        }
        else if (inside &&
                 match(address, 0x1FF3, 0x1543))
        {
            if (odd)
                m_loadedBank |= 2;
            else
                m_loadedBank &= ~1;

            m_state = odd ?
                State::BIT_SET_EVEN :
                State::BIT_SET_ODD;
        }
        else if (inside &&
                 match(address, 0x1FF8, 0x1550))
        {
            m_currentBank = m_loadedBank & 3;
            m_state = State::IDLE;
        }

        break;
    }

    }
}

int Slapstic::currentBank() const
{
    return m_currentBank;
}

Slapstic::State Slapstic::currentState() const
{
    return m_state;
}
