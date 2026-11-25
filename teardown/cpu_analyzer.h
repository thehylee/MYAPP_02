
#pragma once

#include <cstdint>
#include <cstddef>
#include <string>
#include <vector>



struct CycleStatistics
{
    size_t instructionCount = 0;
    size_t unknownOpcodeCount = 0;

    uint64_t minimumCycles = 0;
    uint64_t maximumCycles = 0;

    size_t branchInstructions = 0;
    size_t pageCrossCandidates = 0;
};


class CPUAnalyzer
{
public:
    struct OpcodeStat
    {
        uint8_t opcode = 0;
        const char* mnemonic = nullptr;
        size_t count = 0;
        bool valid = false;
    };

    struct OpcodeStatistics
    {
        size_t totalInstructions = 0;
        size_t validInstructions = 0;
        size_t invalidInstructions = 0;

        OpcodeStat entries[256];
    };

    struct ControlFlowNode
    {
        uint16_t address = 0;

        uint16_t target = 0;

        std::string type;

        bool hasTarget = false;
    };

    struct ControlFlowResult
    {
        size_t instructionCount = 0;
        size_t jumpCount = 0;
        size_t callCount = 0;
        size_t branchCount = 0;
        size_t returnCount = 0;

        std::vector<ControlFlowNode> nodes;
    };

    struct FunctionInfo
    {
        uint16_t entryAddress = 0;
        size_t callCount = 0;

        std::vector<uint16_t> callSites;
    };

    struct FunctionAnalysis
    {
        size_t totalFunctions = 0;
        size_t totalCalls = 0;

        std::vector<FunctionInfo> functions;
    };

    bool load(const std::string& filename);

    void setLoadAddress(uint16_t address);

    std::string disassemble(
        size_t offset,
        size_t length) const;

    std::string analyzeControlFlow(
        uint16_t startAddress) const;

    bool exportASM(
        size_t offset,
        size_t length,
        const std::string& filename) const;

    OpcodeStatistics analyzeOpcodeStatistics(
        size_t offset,
        size_t length) const;

    bool exportOpcodeStatistics(
        size_t offset,
        size_t length,
        const std::string& filename) const;

    ControlFlowResult analyzeControlFlowGraph(
        uint16_t startAddress) const;

    bool exportControlFlow(
        uint16_t startAddress,
        const std::string& filename) const;

    FunctionAnalysis analyzeFunctions(
        uint16_t startAddress) const;

    bool exportFunctions(
        uint16_t startAddress,
        const std::string& filename) const;

    CycleStatistics analyzeCycles(
        size_t offset,
        size_t length) const;

    bool exportCycleStatistics(
        size_t offset,
        size_t length,
        const std::string& filename) const;

    size_t size() const;

    const std::string& error() const;

private:
    enum class AddressMode
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

    struct Instruction
    {
        const char* mnemonic;
        AddressMode mode;
        bool valid;
    };

    std::vector<uint8_t> m_data;
    uint16_t m_loadAddress = 0;
    std::string m_error;

    static Instruction decode(uint8_t opcode);

    static size_t instructionLength(AddressMode mode);

    std::string formatInstruction(
        size_t offset) const;

    size_t addressToOffset(
        uint16_t address) const;

    std::string formatLabel(
        uint16_t address) const;
};
