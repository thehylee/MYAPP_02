
#pragma once

#include <cstdint>

class Slapstic
{
public:
    enum class State
    {
        IDLE,
        ACTIVE,
        ALT_VALID,
        ALT_SELECT,
        ALT_COMMIT,
        BIT_LOAD,
        BIT_SET_ODD,
        BIT_SET_EVEN
    };

    Slapstic();

    void reset();

    // Address access from CPU memory bus.
    // address: Slapstic address lines A0-A12.
    // inside: true if access is inside banked ROM region.
    void access(uint16_t address, bool inside);

    int currentBank() const;

    State currentState() const;

private:
    State m_state;
    int m_currentBank;
    int m_loadedBank;

    static bool match(
        uint16_t address,
        uint16_t mask,
        uint16_t value
    );
};
