#include "m6502.h"
#include "tetris_memory.h"

M6502::M6502()
    : m_memory(nullptr),
      m_PC(0),
      m_SP(0xFD),
      m_A(0),
      m_X(0),
      m_Y(0),
      m_P(FLAG_I | FLAG_U),
      m_irqState(false),
      m_nmiState(false),
      m_nmiPending(false),
      m_cycles(0),
      m_pendingCycles(0)
{
}

void M6502::connectMemory(AtariTetrisMemory* memory)
{
    m_memory = memory;
}

uint8_t M6502::read(uint16_t address)
{
    if (!m_memory)
        return 0xFF;

    const uint8_t data =
        m_memory->read(address);

    return data;
}

void M6502::write(
    uint16_t address,
    uint8_t data)
{
    if (!m_memory)
        return;

    m_memory->write(address, data);
}

void M6502::reset()
{
    m_A = 0;
    m_X = 0;
    m_Y = 0;

    m_SP = 0xFD;
    m_P = FLAG_I | FLAG_U;

    m_irqState = false;
    m_nmiState = false;
    m_nmiPending = false;

    m_pendingCycles = 7;
    m_cycles = 0;

    uint8_t lo = read(0xFFFC);
    uint8_t hi = read(0xFFFD);

    m_PC = static_cast<uint16_t>(
        lo | (hi << 8)
    );
}

uint8_t M6502::fetch()
{
    uint8_t value = read(m_PC);
    ++m_PC;
    return value;
}

uint16_t M6502::fetchWord()
{
    uint8_t lo = fetch();
    uint8_t hi = fetch();

    return static_cast<uint16_t>(
        lo | (hi << 8)
    );
}

void M6502::push(uint8_t value)
{
    write(
        static_cast<uint16_t>(0x0100 | m_SP),
        value
    );

    --m_SP;
}

uint8_t M6502::pull()
{
    ++m_SP;

    return read(
        static_cast<uint16_t>(0x0100 | m_SP)
    );
}

void M6502::setFlag(uint8_t flag, bool state)
{
    if (state)
        m_P |= flag;
    else
        m_P &= ~flag;

    m_P |= FLAG_U;
}

void M6502::setNZ(uint8_t value)
{
    setFlag(FLAG_N, (value & 0x80) != 0);
    setFlag(FLAG_Z, value == 0);
}

void M6502::interrupt(uint16_t vector)
{
    push(static_cast<uint8_t>(m_PC >> 8));
    push(static_cast<uint8_t>(m_PC));

    push(static_cast<uint8_t>(
        (m_P & ~FLAG_B) | FLAG_U
    ));

    setFlag(FLAG_I, true);

    uint8_t lo = read(vector);
    uint8_t hi = read(vector + 1);

    m_PC = static_cast<uint16_t>(
        lo | (hi << 8)
    );

    m_cycles += 7;
}

void M6502::setIRQ(bool state)
{
    m_irqState = state;
}

void M6502::setNMI(bool state)
{
    if (state && !m_nmiState)
        m_nmiPending = true;

    m_nmiState = state;
}

bool M6502::irqLineState() const
{
    return m_irqState;
}

uint16_t M6502::getPC() const
{
    return m_PC;
}

uint8_t M6502::getA() const
{
    return m_A;
}

uint8_t M6502::getX() const
{
    return m_X;
}

uint8_t M6502::getY() const
{
    return m_Y;
}

uint8_t M6502::getSP() const
{
    return m_SP;
}

uint8_t M6502::getP() const
{
    return m_P;
}

void M6502::doADC(uint8_t value)
{
    uint8_t carry = (m_P & FLAG_C) ? 1 : 0;

    // Binary addition
    uint16_t binarySum =
        static_cast<uint16_t>(m_A) +
        value +
        carry;

    uint8_t binaryResult =
        static_cast<uint8_t>(binarySum);

    // Overflow: based on binary result
    setFlag(
        FLAG_V,
        (~(m_A ^ value) &
         (m_A ^ binaryResult) & 0x80) != 0
    );

    if (m_P & FLAG_D)
    {
        // NMOS 6502 decimal addition
        uint16_t low =
            (m_A & 0x0F) +
            (value & 0x0F) +
            carry;

        if (low >= 0x0A)
            low = ((low + 0x06) & 0x0F) + 0x10;

        uint16_t high =
            (m_A & 0xF0) +
            (value & 0xF0) +
            (low & 0xF0);

        // NMOS 6502 N and Z use binary result
        setFlag(FLAG_N, (binaryResult & 0x80) != 0);
        setFlag(FLAG_Z, binaryResult == 0);

        if (high >= 0xA0)
            high += 0x60;

        setFlag(FLAG_C, high >= 0x100);

        m_A = static_cast<uint8_t>(
            (high & 0xF0) | (low & 0x0F)
        );
    }
    else
    {
        setFlag(FLAG_C, binarySum > 0xFF);

        m_A = binaryResult;
        setNZ(m_A);
    }
}


void M6502::doSBC(uint8_t value)
{
    const uint8_t oldA = m_A;
    const int borrow = (m_P & FLAG_C) ? 0 : 1;

    // Binary subtraction
    const int16_t binaryResult =
        static_cast<int16_t>(oldA) -
        static_cast<int16_t>(value) -
        borrow;

    const uint8_t binaryResult8 =
        static_cast<uint8_t>(binaryResult);

    // Overflow flag: binary operation
    setFlag(
        FLAG_V,
        ((oldA ^ binaryResult8) &
         (oldA ^ value) & 0x80) != 0
    );

    // Carry: set when no borrow occurs
    setFlag(FLAG_C, binaryResult >= 0);

    if (m_P & FLAG_D)
    {
        // NMOS 6502 Decimal SBC
        int low =
            (oldA & 0x0F) -
            (value & 0x0F) -
            borrow;

        int high =
            (oldA >> 4) -
            (value >> 4);

        if (low < 0)
        {
            low -= 6;
            high--;
        }

        if (high < 0)
        {
            high -= 6;
        }

        const uint8_t highNibble = static_cast<uint8_t>(high) & 0x0F;

        const uint8_t lowNibble = static_cast<uint8_t>(low) & 0x0F;

        m_A = static_cast<uint8_t>(
            (highNibble << 4) | lowNibble
        );

        // NMOS 6502 Decimal SBC:
        // N and Z are based on binary result
        setFlag(FLAG_N, (binaryResult8 & 0x80) != 0);
        setFlag(FLAG_Z, binaryResult8 == 0);
    }
    else
    {
        m_A = binaryResult8;
        setNZ(m_A);
    }
}

void M6502::doCMP(uint8_t reg, uint8_t value)
{
    uint16_t result =
        static_cast<uint16_t>(reg) - value;

    setFlag(FLAG_C, reg >= value);
    setFlag(FLAG_Z, reg == value);
    setFlag(FLAG_N, (result & 0x80) != 0);
}

uint16_t M6502::getIndirectX()
{
    uint8_t zp = fetch();

    uint8_t ptr = static_cast<uint8_t>(
        zp + m_X
    );

    uint8_t lo = read(ptr);
    uint8_t hi = read(
        static_cast<uint8_t>(ptr + 1)
    );

    return static_cast<uint16_t>(
        lo | (hi << 8)
    );
}

uint16_t M6502::getIndirectY()
{
    uint8_t zp = fetch();

    uint8_t lo = read(zp);
    uint8_t hi = read(
        static_cast<uint8_t>(zp + 1)
    );

    uint16_t base = static_cast<uint16_t>(
        lo | (hi << 8)
    );

    return static_cast<uint16_t>(
        base + m_Y
    );
}


int M6502::execute(int cycles)
{
    if (cycles <= 0 || !m_memory)
        return 0;

    m_cycles = m_pendingCycles;
    m_pendingCycles = 0;

    while (m_cycles < cycles)
    {
        if (m_nmiPending)
        {
            m_nmiPending = false;
            interrupt(0xFFFA);
            continue;
        }

        if (m_irqState && !(m_P & FLAG_I))
        {
            interrupt(0xFFFE);
            continue;
        }

        executeInstruction();

        if (m_cycles == 0)
            break;
    }

    return m_cycles;
}


void M6502::executeInstruction()
{
    // Fetch opcode
    const uint8_t opcode = fetch();

    switch (opcode)
    {
    // LDA Immediate
    case 0xA9:
        m_A = fetch();
        setNZ(m_A);
        m_cycles += 2;
        break;

    // LDA Zero Page
    case 0xA5:
    {
        uint8_t addr = fetch();
        m_A = read(addr);
        setNZ(m_A);
        m_cycles += 3;
        break;
    }

    // LDA Zero Page,X
    case 0xB5:
    {
        uint8_t addr = fetch();
        m_A = read(static_cast<uint8_t>(addr + m_X));
        setNZ(m_A);
        m_cycles += 4;
        break;
    }

    // LDA Absolute
    case 0xAD:
    {
        uint16_t addr = fetchWord();
        m_A = read(addr);
        setNZ(m_A);
        m_cycles += 4;
        break;
    }

    // LDA Absolute,X
    case 0xBD:
    {
        uint16_t base = fetchWord();
        uint16_t addr = base + m_X;

        m_A = read(addr);
        setNZ(m_A);

        m_cycles += 4 + ((base & 0xFF00) !=
                         (addr & 0xFF00));

        break;
    }

    // LDA Absolute,Y
    case 0xB9:
    {
        uint16_t base = fetchWord();
        uint16_t addr = base + m_Y;

        m_A = read(addr);
        setNZ(m_A);

        m_cycles += 4 + ((base & 0xFF00) !=
                         (addr & 0xFF00));

        break;
    }

        
    // LDA (Indirect,X)
    case 0xA1:
    {
        m_A = read(getIndirectX());
        setNZ(m_A);
        m_cycles += 6;
        break;
    }

    // LDA Indirect,Y
    case 0xB1:
    {
        uint8_t zp = fetch();

        uint8_t lo = read(zp);
        uint8_t hi = read(static_cast<uint8_t>(zp + 1));

        uint16_t base = lo | (hi << 8);
        uint16_t addr = base + m_Y;

        m_A = read(addr);
        setNZ(m_A);

        m_cycles += 5 + ((base & 0xFF00) !=
                         (addr & 0xFF00));

        break;
    }

    // LDX Immediate
    case 0xA2:
        m_X = fetch();
        setNZ(m_X);
        m_cycles += 2;
        break;

    // LDY Immediate
    case 0xA0:
        m_Y = fetch();
        setNZ(m_Y);
        m_cycles += 2;
        break;

    // STA Zero Page
    case 0x85:
        write(fetch(), m_A);
        m_cycles += 3;
        break;

    // STA Absolute
    case 0x8D:
        write(fetchWord(), m_A);
        m_cycles += 4;
        break;

    // STX Zero Page
    case 0x86:
        write(fetch(), m_X);
        m_cycles += 3;
        break;

    // STY Zero Page
    case 0x84:
        write(fetch(), m_Y);
        m_cycles += 3;
        break;

    // STX Absolute
    case 0x8E:
        write(fetchWord(), m_X);
        m_cycles += 4;
        break;

    // STY Absolute
    case 0x8C:
        write(fetchWord(), m_Y);
        m_cycles += 4;
        break;

    // TAX
    case 0xAA:
        m_X = m_A;
        setNZ(m_X);
        m_cycles += 2;
        break;

    // TAY
    case 0xA8:
        m_Y = m_A;
        setNZ(m_Y);
        m_cycles += 2;
        break;

    // TXA
    case 0x8A:
        m_A = m_X;
        setNZ(m_A);
        m_cycles += 2;
        break;

    // TYA
    case 0x98:
        m_A = m_Y;
        setNZ(m_A);
        m_cycles += 2;
        break;

    // INX
    case 0xE8:
        ++m_X;
        setNZ(m_X);
        m_cycles += 2;
        break;

    // INY
    case 0xC8:
        ++m_Y;
        setNZ(m_Y);
        m_cycles += 2;
        break;

    // DEX
    case 0xCA:
        --m_X;
        setNZ(m_X);
        m_cycles += 2;
        break;

    // DEY
    case 0x88:
        --m_Y;
        setNZ(m_Y);
        m_cycles += 2;
        break;

    // JMP Absolute
    case 0x4C:
        m_PC = fetchWord();
        m_cycles += 3;
        break;

    // JMP Indirect
    case 0x6C:
    {
        uint16_t ptr = fetchWord();

        uint8_t lo = read(ptr);

        // NMOS 6502 page boundary bug
        uint16_t hiAddr =
            (ptr & 0xFF00) |
            static_cast<uint8_t>(ptr + 1);

        uint8_t hi = read(hiAddr);

        m_PC = lo | (hi << 8);

        m_cycles += 5;
        break;
    }

    // JSR
    case 0x20:
    {
        uint16_t addr = fetchWord();
        uint16_t returnAddr = m_PC - 1;

        push(returnAddr >> 8);
        push(returnAddr & 0xFF);

        m_PC = addr;

        m_cycles += 6;
        break;
    }

    // RTS
    case 0x60:
    {
        uint8_t lo = pull();
        uint8_t hi = pull();

        m_PC = static_cast<uint16_t>(
            (lo | (hi << 8)) + 1
        );

        m_cycles += 6;
        break;
    }

    // NOP
    case 0xEA:
        m_cycles += 2;
        break;

    
    // ADC Immediate
    case 0x69:
        doADC(fetch());
        m_cycles += 2;
        break;

    // ADC Zero Page
    case 0x65:
        doADC(read(fetch()));
        m_cycles += 3;
        break;

    // ADC Absolute
    case 0x6D:
        doADC(read(fetchWord()));
        m_cycles += 4;
        break;

    // SBC Immediate
    case 0xE9:
    case 0xEB:
        doSBC(fetch());
        m_cycles += 2;
        break;

    // SBC Zero Page
    case 0xE5:
        doSBC(read(fetch()));
        m_cycles += 3;
        break;

    // SBC Absolute
    case 0xED:
        doSBC(read(fetchWord()));
        m_cycles += 4;
        break;

    // AND Immediate
    case 0x29:
        m_A &= fetch();
        setNZ(m_A);
        m_cycles += 2;
        break;

    // ORA Immediate
    case 0x09:
        m_A |= fetch();
        setNZ(m_A);
        m_cycles += 2;
        break;

    // EOR Immediate
    case 0x49:
        m_A ^= fetch();
        setNZ(m_A);
        m_cycles += 2;
        break;

    // CMP Immediate
    case 0xC9:
        doCMP(m_A, fetch());
        m_cycles += 2;
        break;

    // CPX Immediate
    case 0xE0:
        doCMP(m_X, fetch());
        m_cycles += 2;
        break;

    // CPY Immediate
    case 0xC0:
        doCMP(m_Y, fetch());
        m_cycles += 2;
        break;

    // BIT Zero Page
    case 0x24:
    {
        uint8_t value = read(fetch());

        setFlag(FLAG_Z, (m_A & value) == 0);
        setFlag(FLAG_N, (value & 0x80) != 0);
        setFlag(FLAG_V, (value & 0x40) != 0);

        m_cycles += 3;
        break;
    }

    // BIT Absolute
    case 0x2C:
    {
        uint8_t value = read(fetchWord());

        setFlag(FLAG_Z, (m_A & value) == 0);
        setFlag(FLAG_N, (value & 0x80) != 0);
        setFlag(FLAG_V, (value & 0x40) != 0);

        m_cycles += 4;
        break;
    }

    
    // BPL - Branch if Positive
    case 0x10:
    {
        int8_t offset = static_cast<int8_t>(fetch());

        m_cycles += 2;

        if (!(m_P & FLAG_N))
        {
            uint16_t oldPC = m_PC;
            m_PC += offset;

            m_cycles++;

            if ((oldPC & 0xFF00) !=
                (m_PC & 0xFF00))
                m_cycles++;
        }
        break;
    }

    // BMI - Branch if Minus
    case 0x30:
    {
        int8_t offset = static_cast<int8_t>(fetch());
        m_cycles += 2;

        if (m_P & FLAG_N)
        {
            uint16_t oldPC = m_PC;
            m_PC += offset;
            m_cycles++;

            if ((oldPC & 0xFF00) !=
                (m_PC & 0xFF00))
                m_cycles++;
        }
        break;
    }

    // BVC - Branch if Overflow Clear
    case 0x50:
    {
        int8_t offset = static_cast<int8_t>(fetch());
        m_cycles += 2;

        if (!(m_P & FLAG_V))
        {
            uint16_t oldPC = m_PC;
            m_PC += offset;
            m_cycles++;

            if ((oldPC & 0xFF00) !=
                (m_PC & 0xFF00))
                m_cycles++;
        }
        break;
    }

    // BVS - Branch if Overflow Set
    case 0x70:
    {
        int8_t offset = static_cast<int8_t>(fetch());
        m_cycles += 2;

        if (m_P & FLAG_V)
        {
            uint16_t oldPC = m_PC;
            m_PC += offset;
            m_cycles++;

            if ((oldPC & 0xFF00) !=
                (m_PC & 0xFF00))
                m_cycles++;
        }
        break;
    }

    // BCC - Branch if Carry Clear
    case 0x90:
    {
        int8_t offset = static_cast<int8_t>(fetch());
        m_cycles += 2;

        if (!(m_P & FLAG_C))
        {
            uint16_t oldPC = m_PC;
            m_PC += offset;
            m_cycles++;

            if ((oldPC & 0xFF00) !=
                (m_PC & 0xFF00))
                m_cycles++;
        }
        break;
    }

    // BCS - Branch if Carry Set
    case 0xB0:
    {
        int8_t offset = static_cast<int8_t>(fetch());
        m_cycles += 2;

        if (m_P & FLAG_C)
        {
            uint16_t oldPC = m_PC;
            m_PC += offset;
            m_cycles++;

            if ((oldPC & 0xFF00) !=
                (m_PC & 0xFF00))
                m_cycles++;
        }
        break;
    }

    // BNE - Branch if Not Equal
    case 0xD0:
    {
        int8_t offset = static_cast<int8_t>(fetch());
        m_cycles += 2;

        if (!(m_P & FLAG_Z))
        {
            uint16_t oldPC = m_PC;
            m_PC += offset;
            m_cycles++;

            if ((oldPC & 0xFF00) !=
                (m_PC & 0xFF00))
                m_cycles++;
        }
        break;
    }

    // BEQ - Branch if Equal
    case 0xF0:
    {
        int8_t offset = static_cast<int8_t>(fetch());
        m_cycles += 2;

        if (m_P & FLAG_Z)
        {
            uint16_t oldPC = m_PC;
            m_PC += offset;
            m_cycles++;

            if ((oldPC & 0xFF00) !=
                (m_PC & 0xFF00))
                m_cycles++;
        }
        break;
    }

    
    // CLC - Clear Carry
    case 0x18:
        setFlag(FLAG_C, false);
        m_cycles += 2;
        break;

    // SEC - Set Carry
    case 0x38:
        setFlag(FLAG_C, true);
        m_cycles += 2;
        break;

    // CLI - Clear Interrupt Disable
    case 0x58:
        setFlag(FLAG_I, false);
        m_cycles += 2;
        break;

    // SEI - Set Interrupt Disable
    case 0x78:
        setFlag(FLAG_I, true);
        m_cycles += 2;
        break;

    // CLV - Clear Overflow
    case 0xB8:
        setFlag(FLAG_V, false);
        m_cycles += 2;
        break;

    // CLD - Clear Decimal
    case 0xD8:
        setFlag(FLAG_D, false);
        m_cycles += 2;
        break;

    // SED - Set Decimal
    case 0xF8:
        setFlag(FLAG_D, true);
        m_cycles += 2;
        break;

    
    // PHA - Push Accumulator
    case 0x48:
        push(m_A);
        m_cycles += 3;
        break;

    // PLA - Pull Accumulator
    case 0x68:
        m_A = pull();
        setNZ(m_A);
        m_cycles += 4;
        break;

    // PHP - Push Processor Status
    case 0x08:
        push(m_P | FLAG_B | FLAG_U);
        m_cycles += 3;
        break;

    // PLP - Pull Processor Status
    case 0x28:
        m_P = pull();
        m_P &= ~FLAG_B;
        m_P |= FLAG_U;
        m_cycles += 4;
        break;

    // TSX - Transfer Stack Pointer to X
    case 0xBA:
        m_X = m_SP;
        setNZ(m_X);
        m_cycles += 2;
        break;

    // TXS - Transfer X to Stack Pointer
    case 0x9A:
        m_SP = m_X;
        m_cycles += 2;
        break;

    
    // ASL Accumulator
    case 0x0A:
    {
        setFlag(FLAG_C, (m_A & 0x80) != 0);
        m_A <<= 1;
        setNZ(m_A);
        m_cycles += 2;
        break;
    }

    // LSR Accumulator
    case 0x4A:
    {
        setFlag(FLAG_C, (m_A & 0x01) != 0);
        m_A >>= 1;
        setNZ(m_A);
        m_cycles += 2;
        break;
    }

    // ROL Accumulator
    case 0x2A:
    {
        uint8_t carry = (m_P & FLAG_C) ? 1 : 0;

        setFlag(FLAG_C, (m_A & 0x80) != 0);

        m_A = static_cast<uint8_t>(
            (m_A << 1) | carry
        );

        setNZ(m_A);
        m_cycles += 2;
        break;
    }

    // ROR Accumulator
    case 0x6A:
    {
        uint8_t carry = (m_P & FLAG_C) ? 0x80 : 0;

        setFlag(FLAG_C, (m_A & 0x01) != 0);

        m_A = static_cast<uint8_t>(
            (m_A >> 1) | carry
        );

        setNZ(m_A);
        m_cycles += 2;
        break;
    }

    
    // ASL Zero Page
    case 0x06:
    {
        uint8_t addr = fetch();
        uint8_t value = read(addr);

        setFlag(FLAG_C, (value & 0x80) != 0);

        value <<= 1;

        write(addr, value);
        setNZ(value);

        m_cycles += 5;
        break;
    }

    // LSR Zero Page
    case 0x46:
    {
        uint8_t addr = fetch();
        uint8_t value = read(addr);

        setFlag(FLAG_C, (value & 0x01) != 0);

        value >>= 1;

        write(addr, value);
        setNZ(value);

        m_cycles += 5;
        break;
    }

    // ROL Zero Page
    case 0x26:
    {
        uint8_t addr = fetch();
        uint8_t value = read(addr);

        uint8_t carry = (m_P & FLAG_C) ? 1 : 0;

        setFlag(FLAG_C, (value & 0x80) != 0);

        value = static_cast<uint8_t>(
            (value << 1) | carry
        );

        write(addr, value);
        setNZ(value);

        m_cycles += 5;
        break;
    }

    // ROR Zero Page
    case 0x66:
    {
        uint8_t addr = fetch();
        uint8_t value = read(addr);

        uint8_t carry = (m_P & FLAG_C) ? 0x80 : 0;

        setFlag(FLAG_C, (value & 0x01) != 0);

        value = static_cast<uint8_t>(
            (value >> 1) | carry
        );

        write(addr, value);
        setNZ(value);

        m_cycles += 5;
        break;
    }

    
    // INC Zero Page
    case 0xE6:
    {
        uint8_t addr = fetch();
        uint8_t value = read(addr);

        value++;
        write(addr, value);

        setNZ(value);
        m_cycles += 5;
        break;
    }

    // INC Zero Page,X
    case 0xF6:
    {
        uint8_t addr = static_cast<uint8_t>(
            fetch() + m_X
        );

        uint8_t value = read(addr);

        value++;
        write(addr, value);

        setNZ(value);
        m_cycles += 6;
        break;
    }

    // INC Absolute
    case 0xEE:
    {
        uint16_t addr = fetchWord();
        uint8_t value = read(addr);

        value++;
        write(addr, value);

        setNZ(value);
        m_cycles += 6;
        break;
    }

    // INC Absolute,X
    case 0xFE:
    {
        uint16_t addr = fetchWord() + m_X;
        uint8_t value = read(addr);

        value++;
        write(addr, value);

        setNZ(value);
        m_cycles += 7;
        break;
    }

    // DEC Zero Page
    case 0xC6:
    {
        uint8_t addr = fetch();
        uint8_t value = read(addr);

        value--;
        write(addr, value);

        setNZ(value);
        m_cycles += 5;
        break;
    }

    // DEC Zero Page,X
    case 0xD6:
    {
        uint8_t addr = static_cast<uint8_t>(
            fetch() + m_X
        );

        uint8_t value = read(addr);

        value--;
        write(addr, value);

        setNZ(value);
        m_cycles += 6;
        break;
    }

    // DEC Absolute
    case 0xCE:
    {
        uint16_t addr = fetchWord();
        uint8_t value = read(addr);

        value--;
        write(addr, value);

        setNZ(value);
        m_cycles += 6;
        break;
    }

    // DEC Absolute,X
    case 0xDE:
    {
        uint16_t addr = fetchWord() + m_X;
        uint8_t value = read(addr);

        value--;
        write(addr, value);

        setNZ(value);
        m_cycles += 7;
        break;
    }

    
    // LDX Zero Page
    case 0xA6:
        m_X = read(fetch());
        setNZ(m_X);
        m_cycles += 3;
        break;

    // LDX Zero Page,Y
    case 0xB6:
    {
        uint8_t addr = static_cast<uint8_t>(
            fetch() + m_Y
        );

        m_X = read(addr);
        setNZ(m_X);
        m_cycles += 4;
        break;
    }

    // LDX Absolute
    case 0xAE:
        m_X = read(fetchWord());
        setNZ(m_X);
        m_cycles += 4;
        break;

    // LDX Absolute,Y
    case 0xBE:
    {
        uint16_t base = fetchWord();
        uint16_t addr = base + m_Y;

        m_X = read(addr);
        setNZ(m_X);

        m_cycles += 4 +
            ((base & 0xFF00) != (addr & 0xFF00));

        break;
    }

    // LDY Zero Page
    case 0xA4:
        m_Y = read(fetch());
        setNZ(m_Y);
        m_cycles += 3;
        break;

    // LDY Zero Page,X
    case 0xB4:
    {
        uint8_t addr = static_cast<uint8_t>(
            fetch() + m_X
        );

        m_Y = read(addr);
        setNZ(m_Y);
        m_cycles += 4;
        break;
    }

    // LDY Absolute
    case 0xAC:
        m_Y = read(fetchWord());
        setNZ(m_Y);
        m_cycles += 4;
        break;

    // LDY Absolute,X
    case 0xBC:
    {
        uint16_t base = fetchWord();
        uint16_t addr = base + m_X;

        m_Y = read(addr);
        setNZ(m_Y);

        m_cycles += 4 +
            ((base & 0xFF00) != (addr & 0xFF00));

        break;
    }

    
    // STA Zero Page,X
    case 0x95:
    {
        uint8_t addr = static_cast<uint8_t>(
            fetch() + m_X
        );

        write(addr, m_A);
        m_cycles += 4;
        break;
    }

    // STA Absolute,X
    case 0x9D:
        write(fetchWord() + m_X, m_A);
        m_cycles += 5;
        break;

    // STA Absolute,Y
    case 0x99:
        write(fetchWord() + m_Y, m_A);
        m_cycles += 5;
        break;

    
    // ASL Absolute
    case 0x0E:
    {
        uint16_t addr = fetchWord();
        uint8_t value = read(addr);

        setFlag(FLAG_C, value & 0x80);

        value <<= 1;

        write(addr, value);
        setNZ(value);

        m_cycles += 6;
        break;
    }

    // LSR Absolute
    case 0x4E:
    {
        uint16_t addr = fetchWord();
        uint8_t value = read(addr);

        setFlag(FLAG_C, value & 0x01);

        value >>= 1;

        write(addr, value);
        setNZ(value);

        m_cycles += 6;
        break;
    }

    // ROL Absolute
    case 0x2E:
    {
        uint16_t addr = fetchWord();
        uint8_t value = read(addr);

        uint8_t carry = (m_P & FLAG_C) ? 1 : 0;

        setFlag(FLAG_C, value & 0x80);

        value = static_cast<uint8_t>(
            (value << 1) | carry
        );

        write(addr, value);
        setNZ(value);

        m_cycles += 6;
        break;
    }

    // ROR Absolute
    case 0x6E:
    {
        uint16_t addr = fetchWord();
        uint8_t value = read(addr);

        uint8_t carry = (m_P & FLAG_C) ? 0x80 : 0;

        setFlag(FLAG_C, value & 0x01);

        value = static_cast<uint8_t>(
            (value >> 1) | carry
        );

        write(addr, value);
        setNZ(value);

        m_cycles += 6;
        break;
    }

    
    // AND Zero Page
    case 0x25:
        m_A &= read(fetch());
        setNZ(m_A);
        m_cycles += 3;
        break;

    // AND Zero Page,X
    case 0x35:
    {
        uint8_t addr = static_cast<uint8_t>(fetch() + m_X);
        m_A &= read(addr);
        setNZ(m_A);
        m_cycles += 4;
        break;
    }

    // AND Absolute
    case 0x2D:
        m_A &= read(fetchWord());
        setNZ(m_A);
        m_cycles += 4;
        break;

    // AND Absolute,X
    case 0x3D:
    {
        uint16_t base = fetchWord();
        uint16_t addr = base + m_X;
        m_A &= read(addr);
        setNZ(m_A);
        m_cycles += 4 + ((base & 0xFF00) != (addr & 0xFF00));
        break;
    }

    // AND Absolute,Y
    case 0x39:
    {
        uint16_t base = fetchWord();
        uint16_t addr = base + m_Y;
        m_A &= read(addr);
        setNZ(m_A);
        m_cycles += 4 + ((base & 0xFF00) != (addr & 0xFF00));
        break;
    }

    // ORA Zero Page
    case 0x05:
        m_A |= read(fetch());
        setNZ(m_A);
        m_cycles += 3;
        break;

    // ORA Zero Page,X
    case 0x15:
    {
        uint8_t addr = static_cast<uint8_t>(fetch() + m_X);
        m_A |= read(addr);
        setNZ(m_A);
        m_cycles += 4;
        break;
    }

    // ORA Absolute
    case 0x0D:
        m_A |= read(fetchWord());
        setNZ(m_A);
        m_cycles += 4;
        break;

    // ORA Absolute,X
    case 0x1D:
    {
        uint16_t base = fetchWord();
        uint16_t addr = base + m_X;
        m_A |= read(addr);
        setNZ(m_A);
        m_cycles += 4 + ((base & 0xFF00) != (addr & 0xFF00));
        break;
    }

    // ORA Absolute,Y
    case 0x19:
    {
        uint16_t base = fetchWord();
        uint16_t addr = base + m_Y;
        m_A |= read(addr);
        setNZ(m_A);
        m_cycles += 4 + ((base & 0xFF00) != (addr & 0xFF00));
        break;
    }

    // EOR Zero Page
    case 0x45:
        m_A ^= read(fetch());
        setNZ(m_A);
        m_cycles += 3;
        break;

    // EOR Zero Page,X
    case 0x55:
    {
        uint8_t addr = static_cast<uint8_t>(fetch() + m_X);
        m_A ^= read(addr);
        setNZ(m_A);
        m_cycles += 4;
        break;
    }

    // EOR Absolute
    case 0x4D:
        m_A ^= read(fetchWord());
        setNZ(m_A);
        m_cycles += 4;
        break;

    // EOR Absolute,X
    case 0x5D:
    {
        uint16_t base = fetchWord();
        uint16_t addr = base + m_X;
        m_A ^= read(addr);
        setNZ(m_A);
        m_cycles += 4 + ((base & 0xFF00) != (addr & 0xFF00));
        break;
    }

    // EOR Absolute,Y
    case 0x59:
    {
        uint16_t base = fetchWord();
        uint16_t addr = base + m_Y;
        m_A ^= read(addr);
        setNZ(m_A);
        m_cycles += 4 + ((base & 0xFF00) != (addr & 0xFF00));
        break;
    }

    
    // ADC Zero Page,X
    case 0x75:
        doADC(read(static_cast<uint8_t>(fetch() + m_X)));
        m_cycles += 4;
        break;

    // ADC Absolute,X
    case 0x7D:
    {
        uint16_t base = fetchWord();
        uint16_t addr = base + m_X;
        doADC(read(addr));
        m_cycles += 4 + ((base & 0xFF00) != (addr & 0xFF00));
        break;
    }

    // ADC Absolute,Y
    case 0x79:
    {
        uint16_t base = fetchWord();
        uint16_t addr = base + m_Y;
        doADC(read(addr));
        m_cycles += 4 + ((base & 0xFF00) != (addr & 0xFF00));
        break;
    }

    // SBC Zero Page,X
    case 0xF5:
        doSBC(read(static_cast<uint8_t>(fetch() + m_X)));
        m_cycles += 4;
        break;

    // SBC Absolute,X
    case 0xFD:
    {
        uint16_t base = fetchWord();
        uint16_t addr = base + m_X;
        doSBC(read(addr));
        m_cycles += 4 + ((base & 0xFF00) != (addr & 0xFF00));
        break;
    }

    // SBC Absolute,Y
    case 0xF9:
    {
        uint16_t base = fetchWord();
        uint16_t addr = base + m_Y;
        doSBC(read(addr));
        m_cycles += 4 + ((base & 0xFF00) != (addr & 0xFF00));
        break;
    }

    
    // CMP Zero Page
    case 0xC5:
        doCMP(m_A, read(fetch()));
        m_cycles += 3;
        break;

    // CMP Zero Page,X
    case 0xD5:
        doCMP(m_A, read(static_cast<uint8_t>(fetch() + m_X)));
        m_cycles += 4;
        break;

    // CMP Absolute
    case 0xCD:
        doCMP(m_A, read(fetchWord()));
        m_cycles += 4;
        break;

    // CMP Absolute,X
    case 0xDD:
    {
        uint16_t base = fetchWord();
        uint16_t addr = base + m_X;
        doCMP(m_A, read(addr));
        m_cycles += 4 + ((base & 0xFF00) != (addr & 0xFF00));
        break;
    }

    // CMP Absolute,Y
    case 0xD9:
    {
        uint16_t base = fetchWord();
        uint16_t addr = base + m_Y;
        doCMP(m_A, read(addr));
        m_cycles += 4 + ((base & 0xFF00) != (addr & 0xFF00));
        break;
    }

    // CPX Zero Page
    case 0xE4:
        doCMP(m_X, read(fetch()));
        m_cycles += 3;
        break;

    // CPX Absolute
    case 0xEC:
        doCMP(m_X, read(fetchWord()));
        m_cycles += 4;
        break;

    // CPY Zero Page
    case 0xC4:
        doCMP(m_Y, read(fetch()));
        m_cycles += 3;
        break;

    // CPY Absolute
    case 0xCC:
        doCMP(m_Y, read(fetchWord()));
        m_cycles += 4;
        break;

    
    // AND (Indirect,X)
    case 0x21:
        m_A &= read(getIndirectX());
        setNZ(m_A);
        m_cycles += 6;
        break;

    // AND (Indirect),Y
    case 0x31:
    {
        uint8_t zp = fetch();
        uint8_t lo = read(zp);
        uint8_t hi = read(static_cast<uint8_t>(zp + 1));

        uint16_t base = lo | (hi << 8);
        uint16_t addr = base + m_Y;

        m_A &= read(addr);
        setNZ(m_A);

        m_cycles += 5 +
            ((base & 0xFF00) != (addr & 0xFF00));
        break;
    }

    // ORA (Indirect,X)
    case 0x01:
        m_A |= read(getIndirectX());
        setNZ(m_A);
        m_cycles += 6;
        break;

    // ORA (Indirect),Y
    case 0x11:
    {
        uint8_t zp = fetch();
        uint8_t lo = read(zp);
        uint8_t hi = read(static_cast<uint8_t>(zp + 1));

        uint16_t base = lo | (hi << 8);
        uint16_t addr = base + m_Y;

        m_A |= read(addr);
        setNZ(m_A);

        m_cycles += 5 +
            ((base & 0xFF00) != (addr & 0xFF00));
        break;
    }

    // EOR (Indirect,X)
    case 0x41:
        m_A ^= read(getIndirectX());
        setNZ(m_A);
        m_cycles += 6;
        break;

    // EOR (Indirect),Y
    case 0x51:
    {
        uint8_t zp = fetch();
        uint8_t lo = read(zp);
        uint8_t hi = read(static_cast<uint8_t>(zp + 1));

        uint16_t base = lo | (hi << 8);
        uint16_t addr = base + m_Y;

        m_A ^= read(addr);
        setNZ(m_A);

        m_cycles += 5 +
            ((base & 0xFF00) != (addr & 0xFF00));
        break;
    }

    
    // ADC (Indirect,X)
    case 0x61:
        doADC(read(getIndirectX()));
        m_cycles += 6;
        break;

    // ADC (Indirect),Y
    case 0x71:
    {
        uint16_t result = getIndirectY();
        uint16_t base = static_cast<uint16_t>(result - m_Y);

        doADC(read(result));

        m_cycles += 5 +
            ((base & 0xFF00) != (result & 0xFF00));

        break;
    }

    // SBC (Indirect,X)
    case 0xE1:
        doSBC(read(getIndirectX()));
        m_cycles += 6;
        break;

    // SBC (Indirect),Y
    case 0xF1:
    {
        uint16_t result = getIndirectY();
        uint16_t base = static_cast<uint16_t>(result - m_Y);

        doSBC(read(result));

        m_cycles += 5 +
            ((base & 0xFF00) != (result & 0xFF00));

        break;
    }

    
    // CMP (Indirect,X)
    case 0xC1:
        doCMP(m_A, read(getIndirectX()));
        m_cycles += 6;
        break;

    // CMP (Indirect),Y
    case 0xD1:
    {
        uint8_t zp = fetch();

        uint8_t lo = read(zp);
        uint8_t hi = read(static_cast<uint8_t>(zp + 1));

        uint16_t base = lo | (hi << 8);
        uint16_t addr = base + m_Y;

        doCMP(m_A, read(addr));

        m_cycles += 5 +
            ((base & 0xFF00) != (addr & 0xFF00));
        break;
    }

    
    // STA (Indirect,X)
    case 0x81:
    {
        uint16_t addr = getIndirectX();
        write(addr, m_A);
        m_cycles += 6;
        break;
    }

    // STA (Indirect),Y
    case 0x91:
    {
        uint16_t addr = getIndirectY();
        write(addr, m_A);
        m_cycles += 6;
        break;
    }

    
    // STX Zero Page,Y
    case 0x96:
    {
        uint8_t addr = static_cast<uint8_t>(
            fetch() + m_Y
        );

        write(addr, m_X);
        m_cycles += 4;
        break;
    }

    // STY Zero Page,X
    case 0x94:
    {
        uint8_t addr = static_cast<uint8_t>(
            fetch() + m_X
        );

        write(addr, m_Y);
        m_cycles += 4;
        break;
    }
    
    // BRK - Force Interrupt
    case 0x00:
    {
        // BRK has a padding byte
        m_PC++;

        push(static_cast<uint8_t>(m_PC >> 8));
        push(static_cast<uint8_t>(m_PC));

        push(m_P | FLAG_B | FLAG_U);

        setFlag(FLAG_I, true);

        uint8_t lo = read(0xFFFE);
        uint8_t hi = read(0xFFFF);

        m_PC = static_cast<uint16_t>(
            lo | (hi << 8)
        );

        m_cycles += 7;
        break;
    }
    
    // RTI - Return from Interrupt
    case 0x40:
    {
        m_P = pull();

        m_P &= ~FLAG_B;
        m_P |= FLAG_U;

        uint8_t lo = pull();
        uint8_t hi = pull();

        m_PC = static_cast<uint16_t>(
            lo | (hi << 8)
        );

        m_cycles += 6;
        break;
    }

    
    // ASL Zero Page,X
    case 0x16:
    {
        uint8_t addr = static_cast<uint8_t>(
            fetch() + m_X
        );

        uint8_t value = read(addr);

        write(addr, value);
        
        setFlag(FLAG_C, (value & 0x80) != 0);

        value = static_cast<uint8_t>(value << 1);

        write(addr, value);
        setNZ(value);

        m_cycles += 6;
        break;
    }

    // LSR Zero Page,X
    case 0x56:
    {
        uint8_t addr = static_cast<uint8_t>(
            fetch() + m_X
        );

        uint8_t value = read(addr);

        write(addr, value);

        setFlag(FLAG_C, (value & 0x01) != 0);

        value = static_cast<uint8_t>(value >>= 1);

        write(addr, value);
        setNZ(value);

        m_cycles += 6;
        break;
    }

    // ROL Zero Page,X
    case 0x36:
    {
        uint8_t addr = static_cast<uint8_t>(
            fetch() + m_X
        );

        uint8_t value = read(addr);
        uint8_t carry = (m_P & FLAG_C) ? 1 : 0;

        write(addr, value);

        setFlag(FLAG_C, (value & 0x80) != 0);

        value = static_cast<uint8_t>(
            (value << 1) | carry
        );

        write(addr, value);
        setNZ(value);

        m_cycles += 6;
        break;
    }

    // ROR Zero Page,X
    case 0x76:
    {
        uint8_t addr = static_cast<uint8_t>(
            fetch() + m_X
        );

        uint8_t value = read(addr);
        uint8_t carry = (m_P & FLAG_C) ? 0x80 : 0;

        write(addr, value);

        setFlag(FLAG_C, (value & 0x01) != 0);

        value = static_cast<uint8_t>(
            (value >> 1) | carry
        );

        write(addr, value);
        setNZ(value);

        m_cycles += 6;
        break;
    }

    
    // ASL Absolute,X
    case 0x1E:
    {
        uint16_t addr = fetchWord() + m_X;
        uint8_t value = read(addr);

        setFlag(FLAG_C, (value & 0x80) != 0);

        write(addr, value);

        value = static_cast<uint8_t>(value << 1);

        write(addr, value);
        setNZ(value);

        m_cycles += 7;
        break;
    }

    // LSR Absolute,X
    case 0x5E:
    {
        uint16_t addr = fetchWord() + m_X;
        uint8_t value = read(addr);

        write(addr, value);

        setFlag(FLAG_C, (value & 0x01) != 0);

        value = static_cast<uint8_t>(value >>= 1);

        write(addr, value);
        setNZ(value);

        m_cycles += 7;
        break;
    }

    // ROL Absolute,X
    case 0x3E:
    {
        uint16_t addr = fetchWord() + m_X;
        uint8_t value = read(addr);
        uint8_t carry = (m_P & FLAG_C) ? 1 : 0;

        write(addr, value);

        setFlag(FLAG_C, (value & 0x80) != 0);

        value = static_cast<uint8_t>(
            (value << 1) | carry
        );

        write(addr, value);
        setNZ(value);

        m_cycles += 7;
        break;
    }

    // ROR Absolute,X
    case 0x7E:
    {
        uint16_t addr = fetchWord() + m_X;
        uint8_t value = read(addr);
        uint8_t carry = (m_P & FLAG_C) ? 0x80 : 0;

        write(addr, value);

        setFlag(FLAG_C, (value & 0x01) != 0);

        value = static_cast<uint8_t>(
            (value >> 1) | carry
        );

        write(addr, value);
        setNZ(value);

        m_cycles += 7;
        break;
    }

    default:
        printf(
            "[CPU ERROR] UNKNOWN OPCODE: "
            "$%02X AT PC=$%04X "
            "(COUNT=%llu)\n",

            opcode,

            static_cast<uint16_t>(
                m_PC - 1
            )
        );

        // Preserve existing execution behavior.
        m_cycles += 2;

        break;
    }
}
