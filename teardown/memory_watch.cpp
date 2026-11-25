
#include "memory_watch.h"

#include <fstream>
#include <sstream>
#include <iomanip>
#include <filesystem>

bool MemoryWatch::analyzeCSV(
    const std::string& inputCSV,
    const std::string& changesCSV,
    const std::string& reportFile)
{
    m_writeCounts.fill(0);
    m_changeCounts.fill(0);

    std::ifstream input(inputCSV);

    if (!input)
        return false;

    std::filesystem::path changesPath(changesCSV);
    std::filesystem::path reportPath(reportFile);

    if (!changesPath.parent_path().empty())
        std::filesystem::create_directories(
            changesPath.parent_path());

    if (!reportPath.parent_path().empty())
        std::filesystem::create_directories(
            reportPath.parent_path());

    std::ofstream changes(changesCSV);

    if (!changes)
        return false;

    changes
        << "Frame,Cycles,Address,OldValue,NewValue\n";

    std::string line;

    if (!std::getline(input, line))
        return false;

    uint64_t totalEvents = 0;
    uint64_t matchedEvents = 0;

    while (std::getline(input, line))
    {
        if (line.empty())
            continue;

        std::stringstream ss(line);

        std::string frameText;
        std::string cyclesText;
        std::string addressText;
        std::string operation;
        std::string oldText;
        std::string valueText;

        if (!std::getline(ss, frameText, ',') ||
            !std::getline(ss, cyclesText, ',') ||
            !std::getline(ss, addressText, ',') ||
            !std::getline(ss, operation, ',') ||
            !std::getline(ss, oldText, ',') ||
            !std::getline(ss, valueText, ','))
        {
            continue;
        }

        if (operation != "WRITE" ||
            oldText == "--")
            continue;

        try
        {
            uint64_t frame =
                std::stoull(frameText);

            uint64_t cycles =
                std::stoull(cyclesText);

            uint16_t address =
                static_cast<uint16_t>(
                    std::stoul(addressText, nullptr, 16));

            unsigned oldValue =
                std::stoul(oldText, nullptr, 16);

            unsigned newValue =
                std::stoul(valueText, nullptr, 16);

            ++totalEvents;

            for (size_t i = 0;
                 i < WATCH_COUNT;
                 ++i)
            {
                if (address != m_watchAddresses[i])
                    continue;

                ++m_writeCounts[i];
                ++matchedEvents;

                if (oldValue != newValue)
                {
                    ++m_changeCounts[i];

                    changes
                        << frame << ","
                        << cycles << ","
                        << "0x"
                        << std::uppercase
                        << std::hex
                        << std::setw(4)
                        << std::setfill('0')
                        << address << ","
                        << "0x"
                        << std::setw(2)
                        << oldValue << ","
                        << "0x"
                        << std::setw(2)
                        << newValue
                        << std::dec
                        << "\n";
                }

                break;
            }
        }
        catch (...)
        {
            continue;
        }
    }

    changes.close();

    if (!changes.good())
        return false;

    std::ofstream report(reportFile);

    if (!report)
        return false;

    report << "ATARI TETRIS MEMORY WATCH REPORT\n";
    report << "================================\n\n";

    report << "Total WRITE Events: "
           << totalEvents << "\n";

    report << "Watched WRITE Events: "
           << matchedEvents << "\n\n";

    report << "ADDRESS STATISTICS\n";
    report << "------------------\n";

    report
        << "Address,TotalWrite,ChangedWrite\n";

    for (size_t i = 0;
         i < WATCH_COUNT;
         ++i)
    {
        report
            << "0x"
            << std::uppercase
            << std::hex
            << std::setw(4)
            << std::setfill('0')
            << m_watchAddresses[i]
            << std::dec
            << ","
            << m_writeCounts[i]
            << ","
            << m_changeCounts[i]
            << "\n";
    }

    return report.good();
}
