
#pragma once

#include <cstdint>
#include <string>
#include <array>

class MemoryWatch
{
public:
    bool analyzeCSV(
        const std::string& inputCSV,
        const std::string& changesCSV,
        const std::string& reportFile);

private:
    static constexpr size_t WATCH_COUNT = 15;

    const std::array<uint16_t, WATCH_COUNT>
        m_watchAddresses = {
            0x0017, 0x0018, 0x001B,
            0x0002, 0x000F, 0x0011,
            0x0012, 0x0013, 0x00C9,
            0x00CA, 0x00CC, 0x00CD,
            0x0E4A, 0x0E4B, 0x0643
        };

    std::array<uint64_t, WATCH_COUNT>
        m_writeCounts{};

    std::array<uint64_t, WATCH_COUNT>
        m_changeCounts{};
};
