
#pragma once

#include <cstdint>

class AtariTetrisMemory;

class M6502
{
public:
    // Processor status flags
    static constexpr uint8_t FLAG_N = 0x80;
    static constexpr uint8_t FLAG_V = 0x40;
    static constexpr uint8_t FLAG_U = 0x20;
    static constexpr uint8_t FLAG_B = 0x10;
    static constexpr uint8_t FLAG_D = 0x08;
    static constexpr uint8_t FLAG_I = 0x04;
    static constexpr uint8_t FLAG_Z = 0x02;
    static constexpr uint8_t FLAG_C = 0x01;

    M6502();

    void connectMemory(AtariTetrisMemory* memory);

    void reset();

    int execute(int cycles);

    void setIRQ(bool state);
    void setNMI(bool state);
    bool irqLineState() const;

    uint16_t getPC() const;

    uint8_t getA() const;
    uint8_t getX() const;
    uint8_t getY() const;
    uint8_t getSP() const;
    uint8_t getP() const;

private:
    AtariTetrisMemory* m_memory;

    // CPU registers
    uint16_t m_PC;
    uint8_t m_SP;

    uint8_t m_A;
    uint8_t m_X;
    uint8_t m_Y;
    uint8_t m_P;

    // Interrupt state
    bool m_irqState;
    bool m_nmiState;
    bool m_nmiPending;

    // Cycle counter
    int m_cycles;

    // Pending hardware cycles
    int m_pendingCycles;

    // Memory access
    uint8_t read(uint16_t address);
    void write(uint16_t address, uint8_t data);

    uint8_t fetch();
    uint16_t fetchWord();

    // Stack operations
    void push(uint8_t value);
    uint8_t pull();

    uint16_t getIndirectX();
    uint16_t getIndirectY();

    // Flag operations
    void setNZ(uint8_t value);
    void setFlag(uint8_t flag, bool state);
            
    void doADC(uint8_t value);
    void doSBC(uint8_t value);
    void doCMP(uint8_t reg, uint8_t value);

    // Interrupt handling
    void interrupt(uint16_t vector);

    // Instruction execution
    void executeInstruction();


};
