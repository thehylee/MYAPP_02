
#pragma once

#include <cstdint>
#include <string>
#include <vector>

#include "../tetris_memory.h"

class MemoryTrace;

class DynamicAnalyzer
{
public:
    static constexpr size_t ADDRESS_SPACE = 65536;
    static constexpr size_t RAM_SIZE = 0x1000;
    static constexpr size_t VIDEO_RAM_SIZE = 0x1000;

    DynamicAnalyzer();

    // Memory Trace 연결
    void connectTrace(MemoryTrace* trace);

    // 게임 메모리 Snapshot
    bool capture(
        AtariTetrisMemory& memory,
        uint64_t frame,
        uint64_t cycles);

    // BIN Export
    bool saveDump(
        const std::string& filename) const;

    // TXT Report Export
    bool saveReport(
        const std::string& filename) const;

    // Trace CSV Export
    bool saveTrace(
        const std::string& filename) const;

    bool isCaptured() const;

    uint64_t frameNumber() const;
    uint64_t cpuCycles() const;

    const std::vector<uint8_t>& data() const;

private:
    std::vector<uint8_t> m_snapshot;

    MemoryTrace* m_trace = nullptr;

    uint64_t m_frameNumber = 0;
    uint64_t m_cpuCycles = 0;

    bool m_captured = false;
};
