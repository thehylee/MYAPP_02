
#pragma once

#include <cstdint>
#include <cstddef>

enum class CPUAddressMode
{
    Implied,
    Accumulator,
    Immediate,
    ZeroPage,
    ZeroPageX,
    ZeroPageY,
    Absolute,
    AbsoluteX,
    AbsoluteY,
    Indirect,
    IndexedIndirect,
    IndirectIndexed,
    Relative
};

enum class OpcodeType
{
    Official,
    Unofficial,
    Unsupported,
    Invalid
};

struct OpcodeDescriptor
{
    const char* mnemonic;
    CPUAddressMode mode;
    OpcodeType type;

    uint8_t length;
    uint8_t cycles;
};

class CPUOpcode
{
public:
    static const OpcodeDescriptor& decode(uint8_t opcode);

    static size_t instructionLength(uint8_t opcode);

    static bool isBranch(uint8_t opcode);

    static bool isJump(uint8_t opcode);

    static bool isCall(uint8_t opcode);

    static bool isReturn(uint8_t opcode);
};
