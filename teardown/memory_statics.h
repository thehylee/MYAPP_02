
#pragma once

#include <cstdint>
#include <string>
#include <array>
#include <map>


struct MemoryAddressStatistics
{
    uint64_t readCount = 0;
    uint64_t writeCount = 0;
    uint64_t changedWriteCount = 0;

    double changedWriteRatio() const
    {
        if (writeCount == 0)
            return 0.0;

        return
            static_cast<double>(changedWriteCount)
            * 100.0
            / static_cast<double>(writeCount);
    }
};

class MemoryStatistics
{
public:
    bool analyzeCSV(
        const std::string& filename);

    bool saveReport(
        const std::string& filename) const;

    uint64_t totalEvents() const;
    uint64_t readCount() const;
    uint64_t writeCount() const;
    uint64_t changedWriteCount() const;

private:
    void clear();

    uint64_t m_totalEvents = 0;
    uint64_t m_readCount = 0;
    uint64_t m_writeCount = 0;
    uint64_t m_changedWriteCount = 0;

    uint64_t m_ramAccess = 0;
    uint64_t m_videoRAMAccess = 0;

    std::array<
        MemoryAddressStatistics,
        65536
    > m_addressStats{};

    std::map<uint64_t, uint64_t>
        m_frameStats;
};
