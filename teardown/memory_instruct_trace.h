
#pragma once

#include <cstdint>
#include <cstddef>
#include <vector>
#include <string>
#include <array>

struct MemoryInstructionEvent
{
    uint64_t frame = 0;
    uint64_t cycles = 0;

    uint16_t pc = 0;
    uint8_t opcode = 0;

    uint16_t address = 0;

    uint8_t oldValue = 0;
    uint8_t newValue = 0;
};

class MemoryInstructionTrace
{
public:
    void start();
    void stop();
    void clear();

    void recordWrite(
        uint64_t frame,
        uint64_t cycles,
        uint16_t pc,
        uint8_t opcode,
        uint16_t address,
        uint8_t oldValue,
        uint8_t newValue
    );

    bool saveCSV(
        const std::string& filename
    ) const;

    size_t count() const;

    bool isRecording() const;

private:
    bool m_recording = false;

    std::array<uint16_t, 6> m_watchAddresses =
    {
        0x0017,
        0x0018,
        0x001B,
        0x00CC,
        0x00CD,
        0x0643
    };

    std::vector<MemoryInstructionEvent> m_events;

    bool isWatchedAddress(
        uint16_t address
    ) const;
};
