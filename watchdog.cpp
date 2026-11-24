
#include "watchdog.h"

Watchdog::Watchdog()
    : m_remainingCycles(TIMEOUT_CYCLES),
      m_expired(false)
{
}

void Watchdog::reset()
{
    m_remainingCycles = TIMEOUT_CYCLES;
    m_expired = false;
}

void Watchdog::resetW(uint8_t data)
{
    (void)data;

    // Every write to watchdog address reloads timer.
    reset();
}

void Watchdog::tick(uint64_t cycles)
{
    if (m_expired)
        return;

    if (cycles >= m_remainingCycles)
    {
        m_remainingCycles = 0;
        expire();
        return;
    }

    m_remainingCycles -= cycles;
}

void Watchdog::expire()
{
    if (m_expired)
        return;

    m_expired = true;

    if (m_resetCallback)
        m_resetCallback();
}

void Watchdog::setResetCallback(
    std::function<void()> callback
)
{
    m_resetCallback = callback;
}

bool Watchdog::isExpired() const
{
    return m_expired;
}

uint64_t Watchdog::remainingCycles() const
{
    return m_remainingCycles;
}
