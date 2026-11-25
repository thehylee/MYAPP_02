
#include "memory_statics.h"

#include <fstream>
#include <sstream>
#include <iomanip>
#include <vector>
#include <algorithm>
#include <filesystem>

void MemoryStatistics::clear()
{
    m_totalEvents = 0;
    m_readCount = 0;
    m_writeCount = 0;
    m_changedWriteCount = 0;

    m_ramAccess = 0;
    m_videoRAMAccess = 0;

    m_addressStats.fill({});
    m_frameStats.clear();
}

bool MemoryStatistics::analyzeCSV(
    const std::string& filename)
{
    clear();

    std::ifstream file(filename);

    if (!file)
        return false;

    std::string line;

    // CSV header
    if (!std::getline(file, line))
        return false;

    while (std::getline(file, line))
    {
        if (line.empty())
            continue;

        std::stringstream ss(line);

        std::string frameText;
        std::string cyclesText;
        std::string addressText;
        std::string operation;
        std::string oldValueText;
        std::string valueText;

        if (!std::getline(ss, frameText, ',') ||
            !std::getline(ss, cyclesText, ',') ||
            !std::getline(ss, addressText, ',') ||
            !std::getline(ss, operation, ',') ||
            !std::getline(ss, oldValueText, ',') ||
            !std::getline(ss, valueText, ','))
        {
            continue;
        }

        try
        {
            uint64_t frame =
                std::stoull(frameText);

            uint16_t address =
                static_cast<uint16_t>(
                    std::stoul(addressText, nullptr, 16)
                );

            uint8_t value =
                static_cast<uint8_t>(
                    std::stoul(valueText, nullptr, 16)
                );

            ++m_totalEvents;
            ++m_frameStats[frame];

            auto& stats =
                m_addressStats[address];

            if (operation == "READ")
            {
                ++m_readCount;
                ++stats.readCount;
            }
            else if (operation == "WRITE")
            {
                ++m_writeCount;
                ++stats.writeCount;

                if (oldValueText != "--")
                {
                    uint8_t oldValue =
                        static_cast<uint8_t>(
                            std::stoul(
                                oldValueText,
                                nullptr,
                                16
                            )
                        );

                    if (oldValue != value)
                    {
                        ++m_changedWriteCount;
                        ++stats.changedWriteCount;
                    }
                }
            }
            else
            {
                --m_totalEvents;
                --m_frameStats[frame];
                continue;
            }

            if (address <= 0x0FFF)
                ++m_ramAccess;
            else if (address <= 0x1FFF)
                ++m_videoRAMAccess;
        }
        catch (...)
        {
            continue;
        }
    }

    return true;
}

bool MemoryStatistics::saveReport(
    const std::string& filename) const
{
    std::filesystem::path path(filename);

    if (!path.parent_path().empty())
    {
        std::filesystem::create_directories(
            path.parent_path()
        );
    }

    std::ofstream file(filename);

    if (!file)
        return false;

    file << "ATARI TETRIS MEMORY STATISTICS\n";
    file << "================================\n\n";

    file << "Total Events: "
         << m_totalEvents << "\n";

    file << "READ Events: "
         << m_readCount << "\n";

    file << "WRITE Events: "
         << m_writeCount << "\n";

    file << "Changed WRITE Events: "
         << m_changedWriteCount << "\n\n";

    file << "MEMORY REGION STATISTICS\n";
    file << "------------------------\n";

    file << "Main RAM: "
         << m_ramAccess << "\n";

    file << "Video RAM: "
         << m_videoRAMAccess << "\n\n";

    // Address ranking
    std::vector<std::pair<
        uint16_t,
        uint64_t
    >> ranking;

    for (size_t i = 0;
         i < m_addressStats.size();
         ++i)
    {
        const auto& stats =
            m_addressStats[i];

        uint64_t total =
            stats.readCount +
            stats.writeCount;

        if (total > 0)
        {
            ranking.push_back({
                static_cast<uint16_t>(i),
                total
            });
        }
    }

    std::sort(
        ranking.begin(),
        ranking.end(),
        [](const auto& a, const auto& b)
        {
            return a.second > b.second;
        }
    );

    file << "TOP 100 MEMORY ADDRESSES\n";
    file << "------------------------\n";

    file << std::left
         << std::setw(12) << "Address"
         << std::setw(16) << "Total"
         << std::setw(16) << "READ"
         << std::setw(16) << "WRITE"
         << "Changed\n";

    size_t limit =
        std::min<size_t>(100, ranking.size());

    for (size_t i = 0; i < limit; ++i)
    {
        uint16_t address = ranking[i].first;

        const auto& stats =
            m_addressStats[address];

        file << "0x"
             << std::uppercase
             << std::hex
             << std::setw(4)
             << std::setfill('0')
             << address
             << std::dec
             << std::setfill(' ')
             << std::setw(6)
             << ""
             << std::setw(16)
             << ranking[i].second
             << std::setw(16)
             << stats.readCount
             << std::setw(16)
             << stats.writeCount
             << stats.changedWriteCount
             << "\n";
    }

    
    // Changed WRITE TOP 100
    std::vector<std::pair<
        uint16_t,
        uint64_t
    >> changedRanking;

    for (size_t i = 0;
         i < m_addressStats.size();
         ++i)
    {
        const auto& stats =
            m_addressStats[i];

        if (stats.changedWriteCount > 0)
        {
            changedRanking.push_back({
                static_cast<uint16_t>(i),
                stats.changedWriteCount
            });
        }
    }

    std::sort(
        changedRanking.begin(),
        changedRanking.end(),
        [](const auto& a, const auto& b)
        {
            if (a.second != b.second)
                return a.second > b.second;

            return a.first < b.first;
        }
    );

    
    file << "\nCHANGED WRITE TOP 100\n";
    file << "------------------------------------------------------------\n";

    file << std::left
         << std::setw(12) << "Address"
         << std::setw(16) << "Total Write"
         << std::setw(18) << "Changed Write"
         << std::setw(12) << "Change %"
         << "Region\n";

    file << "------------------------------------------------------------\n";

    const size_t changedLimit =
        std::min<size_t>(
            100,
            changedRanking.size()
        );

    for (size_t i = 0;
         i < changedLimit;
         ++i)
    {
        uint16_t address =
            changedRanking[i].first;

        const auto& stats =
            m_addressStats[address];

        const char* region =
            address <= 0x0FFF
                ? "RAM"
                : address <= 0x1FFF
                    ? "VIDEO RAM"
                    : address <= 0x23FF
                        ? "PALETTE"
                        : address <= 0x25FF
                            ? "EEPROM"
                            : "OTHER";

        std::ostringstream addressText;

        addressText
            << "0x"
            << std::uppercase
            << std::hex
            << std::setw(4)
            << std::setfill('0')
            << address;

        file << std::left
             << std::setw(12) << addressText.str()
             << std::setw(16) << stats.writeCount
             << std::setw(18) << stats.changedWriteCount
             << std::fixed
             << std::setprecision(2)
             << std::setw(12)
             << stats.changedWriteRatio()
             << region
             << "\n";
    }


    file << "\nFRAME STATISTICS\n";
    file << "----------------\n";

    file << "Frame,AccessCount\n";

    for (const auto& item : m_frameStats)
    {
        file << item.first << ","
             << item.second << "\n";
    }

    return file.good();
}

uint64_t MemoryStatistics::totalEvents() const
{
    return m_totalEvents;
}

uint64_t MemoryStatistics::readCount() const
{
    return m_readCount;
}

uint64_t MemoryStatistics::writeCount() const
{
    return m_writeCount;
}

uint64_t MemoryStatistics::changedWriteCount() const
{
    return m_changedWriteCount;
}
