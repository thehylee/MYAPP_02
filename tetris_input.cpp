
#include "tetris_input.h"

TetrisInput::TetrisInput()
{
    reset();
}

void TetrisInput::reset()
{
    m_coin1 = false;
    m_coin2 = false;

    m_freeze = false;
    m_freezeStep = false;

    m_service = false;
    m_vblank = false;

    m_p1Button = false;
    m_p1Down = false;
    m_p1Right = false;
    m_p1Left = false;

    m_p2Button = false;
    m_p2Down = false;
    m_p2Right = false;
    m_p2Left = false;
}

// IN0

void TetrisInput::setCoin1(bool pressed)
{
    m_coin1 = pressed;
}

void TetrisInput::setCoin2(bool pressed)
{
    m_coin2 = pressed;
}

void TetrisInput::setFreeze(bool enabled)
{
    m_freeze = enabled;
}

void TetrisInput::setFreezeStep(bool enabled)
{
    m_freezeStep = enabled;
}

void TetrisInput::setService(bool pressed)
{
    m_service = pressed;
}

void TetrisInput::setVBlank(bool active)
{
    m_vblank = active;
}

// IN1: Player 1

void TetrisInput::setP1Button(bool pressed)
{
    m_p1Button = pressed;
}

void TetrisInput::setP1Down(bool pressed)
{
    m_p1Down = pressed;
}

void TetrisInput::setP1Right(bool pressed)
{
    m_p1Right = pressed;
}

void TetrisInput::setP1Left(bool pressed)
{
    m_p1Left = pressed;
}

// IN1: Player 2

void TetrisInput::setP2Button(bool pressed)
{
    m_p2Button = pressed;
}

void TetrisInput::setP2Down(bool pressed)
{
    m_p2Down = pressed;
}

void TetrisInput::setP2Right(bool pressed)
{
    m_p2Right = pressed;
}

void TetrisInput::setP2Left(bool pressed)
{
    m_p2Left = pressed;
}

// Read IN0

uint8_t TetrisInput::readIN0() const
{
    uint8_t value = 0;

    if (m_coin2)
        value |= 0x01;

    if (m_coin1)
        value |= 0x02;

    if (m_freeze)
        value |= 0x04;

    if (m_freezeStep)
        value |= 0x08;

    // VBlank is active-low.
    if (!m_vblank)
        value |= 0x40;

    if (m_service)
        value |= 0x80;

    return value;
}

// Read IN1

uint8_t TetrisInput::readIN1() const
{
    uint8_t value = 0;

    if (m_p1Button)
        value |= 0x01;

    if (m_p1Down)
        value |= 0x02;

    if (m_p1Right)
        value |= 0x04;

    if (m_p1Left)
        value |= 0x08;

    if (m_p2Button)
        value |= 0x10;

    if (m_p2Down)
        value |= 0x20;

    if (m_p2Right)
        value |= 0x40;

    if (m_p2Left)
        value |= 0x80;

    return value;
}
