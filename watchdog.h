
#pragma once

#include <cstdint>
#include <functional>

class Watchdog
{
public:
    static constexpr uint64_t CPU_CLOCK_HZ = 17897725ULL / 10;
    static constexpr uint64_t TIMEOUT_SECONDS = 3;

    static constexpr uint64_t TIMEOUT_CYCLES =
        (CPU_CLOCK_HZ * TIMEOUT_SECONDS);

    Watchdog();

    // Initialize or restart watchdog state.
    void reset();

    // MAME reset_w equivalent.
    void resetW(uint8_t data = 0);

    // Advance emulated CPU cycles.
    void tick(uint64_t cycles);

    // Register machine reset callback.
    void setResetCallback(
        std::function<void()> callback
    );

    bool isExpired() const;

    uint64_t remainingCycles() const;

private:
    uint64_t m_remainingCycles;

    bool m_expired;

    std::function<void()> m_resetCallback;

    void expire();
};
