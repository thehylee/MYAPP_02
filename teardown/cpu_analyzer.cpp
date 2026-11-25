
#include "cpu_analyzer.h"
#include "cpu_opcode.h"

#include <cstdint>
#include <fstream>
#include <sstream>
#include <iomanip>
#include <queue>
#include <set>
#include <map>
#include <map>
#include <algorithm>

bool CPUAnalyzer::load(const std::string& filename)
{
    m_data.clear();
    m_error.clear();

    std::ifstream file(filename, std::ios::binary | std::ios::ate);

    if (!file)
    {
        m_error = "Cannot open CPU ROM.";
        return false;
    }

    auto length = file.tellg();

    if (length <= 0)
    {
        m_error = "Invalid CPU ROM.";
        return false;
    }

    file.seekg(0);

    m_data.resize(static_cast<size_t>(length));

    if (!file.read(
        reinterpret_cast<char*>(m_data.data()),
        length))
    {
        m_data.clear();
        m_error = "CPU ROM read failed.";
        return false;
    }

    return true;
}

void CPUAnalyzer::setLoadAddress(uint16_t address)
{
    m_loadAddress = address;
}

size_t CPUAnalyzer::size() const
{
    return m_data.size();
}


CPUAnalyzer::Instruction CPUAnalyzer::decode(uint8_t op)
{
    using M = AddressMode;

    struct Entry
    {
        const char* name;
        M mode;
    };

    static const Entry table[256] =
    {
        {"BRK",M::Implied}, {"ORA",M::IndexedIndirect},
        {".byte",M::Implied}, {".byte",M::Implied},
        {".byte",M::Implied}, {"ORA",M::ZeroPage},
        {"ASL",M::ZeroPage}, {".byte",M::Implied},
        {"PHP",M::Implied}, {"ORA",M::Immediate},
        {"ASL",M::Accumulator}, {".byte",M::Implied},
        {".byte",M::Implied}, {"ORA",M::Absolute},
        {"ASL",M::Absolute}, {".byte",M::Implied},

        {"BPL",M::Relative}, {"ORA",M::IndirectIndexed},
        {".byte",M::Implied}, {".byte",M::Implied},
        {".byte",M::Implied}, {"ORA",M::ZeroPageX},
        {"ASL",M::ZeroPageX}, {".byte",M::Implied},
        {"CLC",M::Implied}, {"ORA",M::AbsoluteY},
        {".byte",M::Implied}, {".byte",M::Implied},
        {".byte",M::Implied}, {"ORA",M::AbsoluteX},
        {"ASL",M::AbsoluteX}, {".byte",M::Implied},

        {"JSR",M::Absolute}, {"AND",M::IndexedIndirect},
        {".byte",M::Implied}, {".byte",M::Implied},
        {"BIT",M::ZeroPage}, {"AND",M::ZeroPage},
        {"ROL",M::ZeroPage}, {".byte",M::Implied},
        {"PLP",M::Implied}, {"AND",M::Immediate},
        {"ROL",M::Accumulator}, {".byte",M::Implied},
        {"BIT",M::Absolute}, {"AND",M::Absolute},
        {"ROL",M::Absolute}, {".byte",M::Implied},

        {"BMI",M::Relative}, {"AND",M::IndirectIndexed},
        {".byte",M::Implied}, {".byte",M::Implied},
        {".byte",M::Implied}, {"AND",M::ZeroPageX},
        {"ROL",M::ZeroPageX}, {".byte",M::Implied},
        {"SEC",M::Implied}, {"AND",M::AbsoluteY},
        {".byte",M::Implied}, {".byte",M::Implied},
        {".byte",M::Implied}, {"AND",M::AbsoluteX},
        {"ROL",M::AbsoluteX}, {".byte",M::Implied},

        {"RTI",M::Implied}, {"EOR",M::IndexedIndirect},
        {".byte",M::Implied}, {".byte",M::Implied},
        {".byte",M::Implied}, {"EOR",M::ZeroPage},
        {"LSR",M::ZeroPage}, {".byte",M::Implied},
        {"PHA",M::Implied}, {"EOR",M::Immediate},
        {"LSR",M::Accumulator}, {".byte",M::Implied},
        {"JMP",M::Absolute}, {"EOR",M::Absolute},
        {"LSR",M::Absolute}, {".byte",M::Implied},

        {"BVC",M::Relative}, {"EOR",M::IndirectIndexed},
        {".byte",M::Implied}, {".byte",M::Implied},
        {".byte",M::Implied}, {"EOR",M::ZeroPageX},
        {"LSR",M::ZeroPageX}, {".byte",M::Implied},
        {"CLI",M::Implied}, {"EOR",M::AbsoluteY},
        {".byte",M::Implied}, {".byte",M::Implied},
        {".byte",M::Implied}, {"EOR",M::AbsoluteX},
        {"LSR",M::AbsoluteX}, {".byte",M::Implied},

        {"RTS",M::Implied}, {"ADC",M::IndexedIndirect},
        {".byte",M::Implied}, {".byte",M::Implied},
        {".byte",M::Implied}, {"ADC",M::ZeroPage},
        {"ROR",M::ZeroPage}, {".byte",M::Implied},
        {"PLA",M::Implied}, {"ADC",M::Immediate},
        {"ROR",M::Accumulator}, {".byte",M::Implied},
        {"JMP",M::Indirect}, {"ADC",M::Absolute},
        {"ROR",M::Absolute}, {".byte",M::Implied},

        {"BVS",M::Relative}, {"ADC",M::IndirectIndexed},
        {".byte",M::Implied}, {".byte",M::Implied},
        {".byte",M::Implied}, {"ADC",M::ZeroPageX},
        {"ROR",M::ZeroPageX}, {".byte",M::Implied},
        {"SEI",M::Implied}, {"ADC",M::AbsoluteY},
        {".byte",M::Implied}, {".byte",M::Implied},
        {".byte",M::Implied}, {"ADC",M::AbsoluteX},
        {"ROR",M::AbsoluteX}, {".byte",M::Implied},

        {".byte",M::Implied}, {"STA",M::IndexedIndirect},
        {".byte",M::Implied}, {".byte",M::Implied},
        {"STY",M::ZeroPage}, {"STA",M::ZeroPage},
        {"STX",M::ZeroPage}, {".byte",M::Implied},
        {"DEY",M::Implied}, {".byte",M::Implied},
        {"TXA",M::Implied}, {".byte",M::Implied},
        {"STY",M::Absolute}, {"STA",M::Absolute},
        {"STX",M::Absolute}, {".byte",M::Implied},

        {"BCC",M::Relative}, {"STA",M::IndirectIndexed},
        {".byte",M::Implied}, {".byte",M::Implied},
        {"STY",M::ZeroPageX}, {"STA",M::ZeroPageX},
        {"STX",M::ZeroPageY}, {".byte",M::Implied},
        {"TYA",M::Implied}, {"STA",M::AbsoluteY},
        {"TXS",M::Implied}, {".byte",M::Implied},
        {".byte",M::Implied}, {"STA",M::AbsoluteX},
        {".byte",M::Implied}, {".byte",M::Implied},

        {"LDY",M::Immediate}, {"LDA",M::IndexedIndirect},
        {"LDX",M::Immediate}, {".byte",M::Implied},
        {"LDY",M::ZeroPage}, {"LDA",M::ZeroPage},
        {"LDX",M::ZeroPage}, {".byte",M::Implied},
        {"TAY",M::Implied}, {"LDA",M::Immediate},
        {"TAX",M::Implied}, {".byte",M::Implied},
        {"LDY",M::Absolute}, {"LDA",M::Absolute},
        {"LDX",M::Absolute}, {".byte",M::Implied},

        {"BCS",M::Relative}, {"LDA",M::IndirectIndexed},
        {".byte",M::Implied}, {".byte",M::Implied},
        {"LDY",M::ZeroPageX}, {"LDA",M::ZeroPageX},
        {"LDX",M::ZeroPageY}, {".byte",M::Implied},
        {"CLV",M::Implied}, {"LDA",M::AbsoluteY},
        {"TSX",M::Implied}, {".byte",M::Implied},
        {"LDY",M::AbsoluteX}, {"LDA",M::AbsoluteX},
        {"LDX",M::AbsoluteY}, {".byte",M::Implied},

        {"CPY",M::Immediate}, {"CMP",M::IndexedIndirect},
        {".byte",M::Implied}, {".byte",M::Implied},
        {"CPY",M::ZeroPage}, {"CMP",M::ZeroPage},
        {"DEC",M::ZeroPage}, {".byte",M::Implied},
        {"INY",M::Implied}, {"CMP",M::Immediate},
        {"DEX",M::Implied}, {".byte",M::Implied},
        {"CPY",M::Absolute}, {"CMP",M::Absolute},
        {"DEC",M::Absolute}, {".byte",M::Implied},

        {"BNE",M::Relative}, {"CMP",M::IndirectIndexed},
        {".byte",M::Implied}, {".byte",M::Implied},
        {".byte",M::Implied}, {"CMP",M::ZeroPageX},
        {"DEC",M::ZeroPageX}, {".byte",M::Implied},
        {"CLD",M::Implied}, {"CMP",M::AbsoluteY},
        {".byte",M::Implied}, {".byte",M::Implied},
        {".byte",M::Implied}, {"CMP",M::AbsoluteX},
        {"DEC",M::AbsoluteX}, {".byte",M::Implied},

        {"CPX",M::Immediate}, {"SBC",M::IndexedIndirect},
        {".byte",M::Implied}, {".byte",M::Implied},
        {"CPX",M::ZeroPage}, {"SBC",M::ZeroPage},
        {"INC",M::ZeroPage}, {".byte",M::Implied},
        {"INX",M::Implied}, {"SBC",M::Immediate},
        {"NOP",M::Implied}, {"SBC",M::Immediate},
        {"CPX",M::Absolute}, {"SBC",M::Absolute},
        {"INC",M::Absolute}, {".byte",M::Implied},

        {"BEQ",M::Relative}, {"SBC",M::IndirectIndexed},
        {".byte",M::Implied}, {".byte",M::Implied},
        {".byte",M::Implied}, {"SBC",M::ZeroPageX},
        {"INC",M::ZeroPageX}, {".byte",M::Implied},
        {"SED",M::Implied}, {"SBC",M::AbsoluteY},
        {".byte",M::Implied}, {".byte",M::Implied},
        {".byte",M::Implied}, {"SBC",M::AbsoluteX},
        {"INC",M::AbsoluteX}, {".byte",M::Implied}
    };

    const Entry& entry = table[op];

    bool valid = std::string(entry.name) != ".byte";

    return {entry.name, entry.mode, valid};
}

size_t CPUAnalyzer::instructionLength(AddressMode mode)
{
    switch (mode)
    {
        case AddressMode::Implied:
        case AddressMode::Accumulator:
            return 1;

        case AddressMode::Immediate:
        case AddressMode::ZeroPage:
        case AddressMode::ZeroPageX:
        case AddressMode::ZeroPageY:
        case AddressMode::IndexedIndirect:
        case AddressMode::IndirectIndexed:
        case AddressMode::Relative:
            return 2;

        default:
            return 3;
    }
}

std::string CPUAnalyzer::formatInstruction(size_t offset) const
{
    std::ostringstream out;

    if (offset >= m_data.size())
        return "";

    uint8_t op = m_data[offset];
    Instruction ins = decode(op);

    uint16_t address = static_cast<uint16_t>(
        m_loadAddress + offset);

    out << std::uppercase << std::hex
        << std::setw(4) << std::setfill('0')
        << address << "  ";

    out << std::setw(2) << static_cast<int>(op) << " ";

    if (!ins.valid)
    {
        out << "       .byte $"
            << std::setw(2) << static_cast<int>(op);

        return out.str();
    }

    size_t length = instructionLength(ins.mode);

    for (size_t i = 1; i < length; ++i)
    {
        if (offset + i < m_data.size())
        {
            out << std::setw(2)
                << static_cast<int>(m_data[offset + i])
                << " ";
        }
        else
        {
            out << "?? ";
        }
    }

    out << "  " << ins.mnemonic;

    if (ins.mode == AddressMode::Implied)
        return out.str();

    if (ins.mode == AddressMode::Accumulator)
    {
        out << " A";
        return out.str();
    }

    if (offset + length > m_data.size())
    {
        out << " <truncated>";
        return out.str();
    }

    uint8_t lo = m_data[offset + 1];
    uint8_t hi = length == 3 ? m_data[offset + 2] : 0;

    uint16_t value = static_cast<uint16_t>(
        lo | (hi << 8));

    out << " ";

    switch (ins.mode)
    {
        case AddressMode::Immediate:
            out << "#$" << std::setw(2)
                << static_cast<int>(lo);
            break;

        case AddressMode::ZeroPage:
            out << "$" << std::setw(2)
                << static_cast<int>(lo);
            break;

        case AddressMode::ZeroPageX:
            out << "$" << std::setw(2)
                << static_cast<int>(lo) << ",X";
            break;

        case AddressMode::ZeroPageY:
            out << "$" << std::setw(2)
                << static_cast<int>(lo) << ",Y";
            break;

        case AddressMode::Absolute:
            out << "$" << std::setw(4) << value;
            break;

        case AddressMode::AbsoluteX:
            out << "$" << std::setw(4) << value << ",X";
            break;

        case AddressMode::AbsoluteY:
            out << "$" << std::setw(4) << value << ",Y";
            break;

        case AddressMode::Indirect:
            out << "($" << std::setw(4) << value << ")";
            break;

        case AddressMode::IndexedIndirect:
            out << "($" << std::setw(2)
                << static_cast<int>(lo) << ",X)";
            break;

        case AddressMode::IndirectIndexed:
            out << "($" << std::setw(2)
                << static_cast<int>(lo) << "),Y";
            break;

        case AddressMode::Relative:
        {
            int8_t displacement =
                static_cast<int8_t>(lo);

            uint16_t target = static_cast<uint16_t>(
                address + 2 + displacement);

            out << "$" << std::setw(4) << target;
            break;
        }

        default:
            break;
    }

    return out.str();
}

std::string CPUAnalyzer::disassemble(
    size_t offset,
    size_t length) const
{
    std::ostringstream out;

    if (m_data.empty() || offset >= m_data.size())
        return "";

    size_t end = offset +
        (length > m_data.size() - offset
            ? m_data.size() - offset
            : length);

    while (offset < end)
    {
        Instruction ins = decode(m_data[offset]);

        out << formatInstruction(offset) << "\n";

        size_t count = ins.valid
            ? instructionLength(ins.mode)
            : 1;

        if (count > end - offset)
        {
            offset = end;
            break;
        }

        offset += count;
    }

    return out.str();
}

bool CPUAnalyzer::exportASM(
    size_t offset,
    size_t length,
    const std::string& filename) const
{
    std::ofstream file(filename);

    if (!file)
        return false;

    file << disassemble(offset, length);

    return static_cast<bool>(file);
}


CPUAnalyzer::OpcodeStatistics
CPUAnalyzer::analyzeOpcodeStatistics(
    size_t offset,
    size_t length) const
{
    OpcodeStatistics result{};

    for (size_t i = 0; i < 256; ++i)
    {
        result.entries[i].opcode =
            static_cast<uint8_t>(i);

        Instruction ins = decode(
            static_cast<uint8_t>(i));

        result.entries[i].mnemonic = ins.mnemonic;
        result.entries[i].valid = ins.valid;
    }

    if (offset >= m_data.size())
        return result;

    size_t available = m_data.size() - offset;

    size_t end = offset +
        (length > available ? available : length);

    while (offset < end)
    {
        uint8_t opcode = m_data[offset];

        Instruction ins = decode(opcode);

        result.entries[opcode].count++;

        result.totalInstructions++;

        if (ins.valid)
            result.validInstructions++;
        else
            result.invalidInstructions++;

        size_t count = ins.valid
            ? instructionLength(ins.mode)
            : 1;

        if (count > end - offset)
            break;

        offset += count;
    }

    return result;
}

bool CPUAnalyzer::exportOpcodeStatistics(
    size_t offset,
    size_t length,
    const std::string& filename) const
{
    std::ofstream file(filename);

    if (!file)
        return false;

    OpcodeStatistics stats =
        analyzeOpcodeStatistics(offset, length);

    file << "6502 OPCODE STATISTICS\n";
    file << "======================\n\n";

    file << "Total Instructions: "
        << stats.totalInstructions << "\n";

    file << "Valid Instructions: "
        << stats.validInstructions << "\n";

    file << "Unsupported Opcodes: "
        << stats.invalidInstructions << "\n\n";

    file << std::left
        << std::setw(10) << "OPCODE"
        << std::setw(12) << "MNEMONIC"
        << std::right
        << std::setw(10) << "COUNT"
        << "\n";

    file << "--------------------------------\n";

    for (int i = 0; i < 256; ++i)
    {
        const OpcodeStat& entry = stats.entries[i];

        file << std::uppercase
            << std::hex
            << std::setfill('0')
            << std::setw(2)
            << i
            << std::dec
            << std::setfill(' ')
            << "        "
            << std::left
            << std::setw(12)
            << entry.mnemonic
            << std::right
            << std::setw(10)
            << entry.count
            << "\n";
    }

    return static_cast<bool>(file);
}

CPUAnalyzer::ControlFlowResult
CPUAnalyzer::analyzeControlFlowGraph(
    uint16_t startAddress) const
{
    ControlFlowResult result;

    if (m_data.empty())
        return result;

    std::queue<uint16_t> pending;

    std::set<uint16_t> visited;

    pending.push(startAddress);

    while (!pending.empty())
    {
        uint16_t address = pending.front();
        pending.pop();

        if (!visited.insert(address).second)
            continue;

        size_t offset = addressToOffset(address);

        if (offset >= m_data.size())
            continue;

        uint8_t opcode = m_data[offset];

        Instruction ins = decode(opcode);

        if (!ins.valid)
            continue;

        size_t length = instructionLength(ins.mode);

        if (offset + length > m_data.size())
            continue;

        uint16_t nextAddress =
            static_cast<uint16_t>(address + length);

        result.instructionCount++;

        ControlFlowNode node;

        node.address = address;

        bool stopSequential = false;

        if (ins.mode == AddressMode::Relative)
        {
            int8_t displacement =
                static_cast<int8_t>(m_data[offset + 1]);

            uint16_t target =
                static_cast<uint16_t>(
                    nextAddress + displacement);

            node.target = target;
            node.hasTarget = true;
            node.type = "BRANCH";

            result.branchCount++;

            pending.push(target);
            pending.push(nextAddress);

            stopSequential = true;
        }
        else if (
            std::string(ins.mnemonic) == "JMP")
        {
            result.jumpCount++;

            node.type = "JMP";

            if (ins.mode == AddressMode::Absolute)
            {
                uint16_t target =
                    static_cast<uint16_t>(
                        m_data[offset + 1] |
                        (m_data[offset + 2] << 8));

                node.target = target;
                node.hasTarget = true;

                pending.push(target);
            }

            stopSequential = true;
        }
        else if (
            std::string(ins.mnemonic) == "JSR")
        {
            result.callCount++;

            node.type = "JSR";

            uint16_t target =
                static_cast<uint16_t>(
                    m_data[offset + 1] |
                    (m_data[offset + 2] << 8));

            node.target = target;
            node.hasTarget = true;

            pending.push(target);

            pending.push(nextAddress);
        }
        else if (
            std::string(ins.mnemonic) == "RTS" ||
            std::string(ins.mnemonic) == "RTI" ||
            std::string(ins.mnemonic) == "BRK")
        {
            node.type = ins.mnemonic;

            result.returnCount++;

            stopSequential = true;
        }
        else
        {
            node.type = "NORMAL";
        }

        result.nodes.push_back(node);

        if (!stopSequential)
            pending.push(nextAddress);
    }

    return result;
}

bool CPUAnalyzer::exportControlFlow(
    uint16_t startAddress,
    const std::string& filename) const
{
    ControlFlowResult result =
        analyzeControlFlowGraph(startAddress);

    std::ofstream file(filename);

    if (!file)
        return false;

    file << "6502 CONTROL FLOW ANALYSIS\n";
    file << "==========================\n\n";

    file << "Start Address: "
         << std::hex << std::uppercase
         << startAddress << "\n";

    file << "Instructions: "
         << std::dec
         << result.instructionCount << "\n";

    file << "Jumps: "
         << result.jumpCount << "\n";

    file << "Function Calls: "
         << result.callCount << "\n";

    file << "Conditional Branches: "
         << result.branchCount << "\n";

    file << "Returns / Interrupts: "
         << result.returnCount << "\n\n";

    file << "ADDRESS  TYPE      TARGET\n";
    file << "--------------------------\n";

    for (const auto& node : result.nodes)
    {
        file << std::hex << std::uppercase
             << std::setw(4) << std::setfill('0')
             << node.address
             << "     "
             << std::left << std::setw(10)
             << node.type
             << std::right;

        if (node.hasTarget)
        {
            file << "$"
                 << std::setw(4)
                 << node.target;
        }

        file << "\n";
    }

    return static_cast<bool>(file);
}

size_t CPUAnalyzer::addressToOffset(
    uint16_t address) const
{
    if (address < m_loadAddress)
        return m_data.size();

    size_t offset =
        static_cast<size_t>(address - m_loadAddress);

    if (offset >= m_data.size())
        return m_data.size();

    return offset;
}

CPUAnalyzer::FunctionAnalysis
CPUAnalyzer::analyzeFunctions(
    uint16_t startAddress) const
{
    FunctionAnalysis result;

    if (m_data.empty())
        return result;

    // 기존 Control Flow 분석 결과 재사용
    ControlFlowResult flow =
        analyzeControlFlowGraph(startAddress);

    // 함수 진입 주소별 호출 위치 저장
    std::map<uint16_t, std::vector<uint16_t>> calls;

    for (const auto& node : flow.nodes)
    {
        size_t offset = addressToOffset(node.address);

        if (offset >= m_data.size())
            continue;

        Instruction ins = decode(m_data[offset]);

        if (!ins.valid)
            continue;

        // 직접 주소 지정 JSR만 분석
        if (std::string(ins.mnemonic) != "JSR")
            continue;

        if (ins.mode != AddressMode::Absolute)
            continue;

        if (offset + 2 >= m_data.size())
            continue;

        uint16_t target =
            static_cast<uint16_t>(
                m_data[offset + 1] |
                (m_data[offset + 2] << 8));

        calls[target].push_back(node.address);
    }

    // 분석 결과 구성
    for (const auto& item : calls)
    {
        FunctionInfo info;

        info.entryAddress = item.first;
        info.callSites = item.second;
        info.callCount = item.second.size();

        result.totalCalls += info.callCount;

        result.functions.push_back(info);
    }

    result.totalFunctions = result.functions.size();

    return result;
}

bool CPUAnalyzer::exportFunctions(
    uint16_t startAddress,
    const std::string& filename) const
{
    FunctionAnalysis result =
        analyzeFunctions(startAddress);

    std::ofstream file(filename);

    if (!file)
        return false;

    file << "6502 FUNCTION ANALYSIS\n";
    file << "======================\n\n";

    file << "Start Address: "
         << std::uppercase << std::hex
         << std::setw(4) << std::setfill('0')
         << startAddress << "\n";

    file << std::dec << std::setfill(' ');

    file << "Total Functions: "
         << result.totalFunctions << "\n";

    file << "Total Calls: "
         << result.totalCalls << "\n\n";

    file << "FUNCTION  CALL COUNT\n";
    file << "--------------------\n";

    for (const auto& function : result.functions)
    {
        file << "FUNC_"
             << std::uppercase << std::hex
             << std::setw(4) << std::setfill('0')
             << function.entryAddress
             << "    "
             << std::dec << std::setfill(' ')
             << function.callCount
             << "\n";
    }

    file << "\nCALL REFERENCES\n";
    file << "================\n\n";

    file << "CALL SITE  FUNCTION\n";
    file << "-------------------\n";

    for (const auto& function : result.functions)
    {
        for (uint16_t site : function.callSites)
        {
            file << std::uppercase << std::hex
                 << std::setw(4) << std::setfill('0')
                 << site
                 << "       "
                 << std::setw(4)
                 << function.entryAddress
                 << "\n";
        }
    }

    return static_cast<bool>(file);
}

// 페이지 경계 추가 사이클 가능성이 있는 읽기 명령어
static bool canCrossPage(uint8_t op)
{
    switch (op)
    {
        // ORA
        case 0x11: case 0x19: case 0x1D:

        // AND
        case 0x31: case 0x39: case 0x3D:

        // EOR
        case 0x51: case 0x59: case 0x5D:

        // ADC
        case 0x71: case 0x79: case 0x7D:

        // LDA
        case 0xB1: case 0xB9: case 0xBD:

        // CMP
        case 0xD1: case 0xD9: case 0xDD:

        // SBC
        case 0xF1: case 0xF9: case 0xFD:

        // LDX / LDY
        case 0xBE: case 0xBC:
            return true;

        default:
            return false;
    }
}

CycleStatistics CPUAnalyzer::analyzeCycles(
    size_t offset,
    size_t length) const
{
    CycleStatistics result;

    if (offset >= m_data.size())
        return result;

    size_t end = offset +
        (length > m_data.size() - offset
            ? m_data.size() - offset
            : length);

    while (offset < end)
    {
        uint8_t opcode = m_data[offset];

        Instruction ins = decode(opcode);

        size_t instructionSize = ins.valid
            ? instructionLength(ins.mode)
            : 1;

        if (!ins.valid)
        {
            ++result.unknownOpcodeCount;
            ++offset;
            continue;
        }

        ++result.instructionCount;

        uint64_t cycles = 0;

        // 기본 사이클 계산
        switch (ins.mode)
        {
            case AddressMode::Implied:
            case AddressMode::Accumulator:
                cycles = 2;
                break;

            case AddressMode::Immediate:
                cycles = 2;
                break;

            case AddressMode::ZeroPage:
                cycles = 3;
                break;

            case AddressMode::ZeroPageX:
            case AddressMode::ZeroPageY:
                cycles = 4;
                break;

            case AddressMode::Absolute:
                cycles = 4;
                break;

            case AddressMode::AbsoluteX:
            case AddressMode::AbsoluteY:
                cycles = 4;
                break;

            case AddressMode::IndexedIndirect:
                cycles = 6;
                break;

            case AddressMode::IndirectIndexed:
                cycles = 5;
                break;

            case AddressMode::Indirect:
                cycles = 5;
                break;

            case AddressMode::Relative:
                cycles = 2;
                break;
        }

        // 명령어별 예외
        switch (opcode)
        {
            case 0x00: cycles = 7; break; // BRK
            case 0x20: cycles = 6; break; // JSR
            case 0x40: cycles = 6; break; // RTI
            case 0x60: cycles = 6; break; // RTS

            case 0x4C: cycles = 3; break; // JMP absolute
            case 0x6C: cycles = 5; break; // JMP indirect

            case 0x6E:
            case 0x2E:
            case 0x0E:
            case 0x4E:
            case 0x7E:
            case 0x3E:
            case 0x1E:
            case 0x5E:
            case 0xDE:
            case 0xFE:
                cycles = 6;
                break;

            default:
                break;
        }

        result.minimumCycles += cycles;
        result.maximumCycles += cycles;

        if (opcode == 0x10 || opcode == 0x30 ||
            opcode == 0x50 || opcode == 0x70 ||
            opcode == 0x90 || opcode == 0xB0 ||
            opcode == 0xD0 || opcode == 0xF0)
        {
            ++result.branchInstructions;

            result.maximumCycles += 2;
        }
        else if (canCrossPage(opcode))
        {
            ++result.pageCrossCandidates;

            result.maximumCycles += 1;
        }

        if (instructionSize > end - offset)
            break;

        offset += instructionSize;
    }

    return result;
}

bool CPUAnalyzer::exportCycleStatistics(
    size_t offset,
    size_t length,
    const std::string& filename) const
{
    CycleStatistics stats =
        analyzeCycles(offset, length);

    std::ofstream file(filename);

    if (!file)
        return false;

    file << "6502 CPU CYCLE ANALYSIS\n";
    file << "======================\n\n";

    file << "Instructions: "
         << stats.instructionCount << "\n";

    file << "Unknown Opcodes: "
         << stats.unknownOpcodeCount << "\n";

    file << "Minimum Cycles: "
         << stats.minimumCycles << "\n";

    file << "Maximum Cycles: "
         << stats.maximumCycles << "\n";

    file << "Branch Instructions: "
         << stats.branchInstructions << "\n";

    file << "Page Cross Candidates: "
         << stats.pageCrossCandidates << "\n";

    return static_cast<bool>(file);
}

const std::string& CPUAnalyzer::error() const
{
    return m_error;
}