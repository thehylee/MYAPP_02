
#ifndef TETRIS_INPUT_H
#define TETRIS_INPUT_H

#include <cstdint>

class TetrisInput
{
public:
    TetrisInput();

    void reset();

    // IN0: Coin inputs
    void setCoin1(bool pressed);
    void setCoin2(bool pressed);

    // IN0: DIP switches
    void setFreeze(bool enabled);
    void setFreezeStep(bool enabled);

    // IN0: Service and VBlank
    void setService(bool pressed);
    void setVBlank(bool active);

    // IN1: Player 1
    void setP1Button(bool pressed);
    void setP1Down(bool pressed);
    void setP1Right(bool pressed);
    void setP1Left(bool pressed);

    // IN1: Player 2
    void setP2Button(bool pressed);
    void setP2Down(bool pressed);
    void setP2Right(bool pressed);
    void setP2Left(bool pressed);

    // Read input ports
    uint8_t readIN0() const;
    uint8_t readIN1() const;

private:
    bool m_coin1;
    bool m_coin2;

    bool m_freeze;
    bool m_freezeStep;

    bool m_service;
    bool m_vblank;

    bool m_p1Button;
    bool m_p1Down;
    bool m_p1Right;
    bool m_p1Left;

    bool m_p2Button;
    bool m_p2Down;
    bool m_p2Right;
    bool m_p2Left;
};

#endif
