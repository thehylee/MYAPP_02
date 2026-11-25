
#include "cpu_opcode.h"

namespace
{
    constexpr OpcodeDescriptor INVALID_OPCODE =
    {
        ".byte",
        CPUAddressMode::Implied,
        OpcodeType::Invalid,
        1,
        0
    };
}

const OpcodeDescriptor& CPUOpcode::decode(uint8_t opcode)
{
    // 다음 단계에서 256개 전체 opcode 테이블 연결
    // 기존 CPUAnalyzer::decode() 테이블을 이전한다.

    static const OpcodeDescriptor table[256] = {};

    const OpcodeDescriptor& entry = table[opcode];

    if (entry.mnemonic == nullptr)
        return INVALID_OPCODE;

    return entry;
}

size_t CPUOpcode::instructionLength(uint8_t opcode)
{
    return decode(opcode).length;
}

bool CPUOpcode::isBranch(uint8_t opcode)
{
    switch (opcode)
    {
        case 0x10:
        case 0x30:
        case 0x50:
        case 0x70:
        case 0x90:
        case 0xB0:
        case 0xD0:
        case 0xF0:
            return true;

        default:
            return false;
    }
}

bool CPUOpcode::isJump(uint8_t opcode)
{
    return opcode == 0x4C || opcode == 0x6C;
}

bool CPUOpcode::isCall(uint8_t opcode)
{
    return opcode == 0x20;
}

bool CPUOpcode::isReturn(uint8_t opcode)
{
    return opcode == 0x40 || opcode == 0x60;
}
