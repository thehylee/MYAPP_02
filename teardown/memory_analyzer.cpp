
#include "memory_analyzer.h"

#include <fstream>
#include <sstream>
#include <iomanip>
#include <algorithm>

bool MemoryAnalyzer::loadDump(
    const std::string& filename)
{
    m_memory.clear();
    m_error.clear();

    std::ifstream file(
        filename,
        std::ios::binary | std::ios::ate);

    if (!file)
    {
        m_error = "Cannot open memory dump.";
        return false;
    }

    std::streamsize length = file.tellg();

    if (length != static_cast<std::streamsize>(ADDRESS_SPACE))
    {
        m_error = "Memory dump must be exactly 65536 bytes.";
        return false;
    }

    file.seekg(0, std::ios::beg);

    m_memory.resize(ADDRESS_SPACE);

    if (!file.read(
        reinterpret_cast<char*>(m_memory.data()),
        length))
    {
        m_memory.clear();
        m_error = "Memory dump read failed.";
        return false;
    }

    return true;
}

size_t MemoryAnalyzer::size() const
{
    return m_memory.size();
}

bool MemoryAnalyzer::isLoaded() const
{
    return m_memory.size() == ADDRESS_SPACE;
}

bool MemoryAnalyzer::readByte(
    uint16_t address,
    uint8_t& value) const
{
    if (!isLoaded())
        return false;

    value = m_memory[address];
    return true;
}

std::string MemoryAnalyzer::hexDump(
    uint16_t address,
    size_t length) const
{
    std::ostringstream out;

    if (!isLoaded())
        return "";

    size_t start = address;

    size_t count = std::min(
        length,
        ADDRESS_SPACE - start);

    size_t end = start + count;

    for (size_t i = start; i < end; i += 16)
    {
        out << std::uppercase
            << std::hex
            << std::setw(4)
            << std::setfill('0')
            << i << "  ";

        for (size_t j = 0; j < 16; ++j)
        {
            if (i + j < end)
            {
                out << std::setw(2)
                    << static_cast<int>(m_memory[i + j])
                    << " ";
            }
            else
            {
                out << "   ";
            }
        }

        out << " ";

        for (size_t j = 0; j < 16 && i + j < end; ++j)
        {
            uint8_t c = m_memory[i + j];

            out << (c >= 32 && c <= 126
                ? static_cast<char>(c)
                : '.');
        }

        out << "\n";
    }

    return out.str();
}

std::vector<uint16_t> MemoryAnalyzer::findBytes(
    const std::vector<uint8_t>& pattern) const
{
    std::vector<uint16_t> results;

    if (!isLoaded() || pattern.empty() ||
        pattern.size() > m_memory.size())
        return results;

    for (size_t i = 0;
         i <= m_memory.size() - pattern.size();
         ++i)
    {
        if (std::equal(
            pattern.begin(),
            pattern.end(),
            m_memory.begin() + i))
        {
            results.push_back(
                static_cast<uint16_t>(i));
        }
    }

    return results;
}

bool MemoryAnalyzer::exportRegion(
    uint16_t start,
    size_t length,
    const std::string& filename) const
{
    if (!isLoaded() ||
        length > ADDRESS_SPACE - start)
        return false;

    std::ofstream file(
        filename,
        std::ios::binary);

    if (!file)
        return false;

    file.write(
        reinterpret_cast<const char*>(
            m_memory.data() + start),
        static_cast<std::streamsize>(length));

    return static_cast<bool>(file);
}

bool MemoryAnalyzer::compare(
    const MemoryAnalyzer& other,
    size_t& differences) const
{
    differences = 0;

    if (!isLoaded() || !other.isLoaded())
        return false;

    for (size_t i = 0; i < ADDRESS_SPACE; ++i)
    {
        if (m_memory[i] != other.m_memory[i])
            ++differences;
    }

    return true;
}

MemoryStatistics MemoryAnalyzer::analyzeStatistics(
    uint16_t start,
    size_t length) const
{
    MemoryStatistics stats;

    if (!isLoaded())
        return stats;

    size_t offset = start;

    if (offset >= m_memory.size())
        return stats;

    size_t count = std::min(
        length,
        m_memory.size() - offset);

    if (count == 0)
        return stats;

    stats.totalBytes = count;

    unsigned long long sum = 0;

    stats.minimumValue = 0xFF;
    stats.maximumValue = 0x00;

    for (size_t i = 0; i < count; ++i)
    {
        uint8_t value = m_memory[offset + i];

        ++stats.valueFrequency[value];

        sum += value;

        if (value == 0)
            ++stats.zeroBytes;
        else
            ++stats.nonZeroBytes;

        stats.minimumValue =
            std::min(stats.minimumValue, value);

        stats.maximumValue =
            std::max(stats.maximumValue, value);
    }

    for (size_t i = 0; i < 256; ++i)
    {
        if (stats.valueFrequency[i] > 0)
            ++stats.uniqueValues;
    }

    stats.averageValue =
        static_cast<double>(sum) / count;

    return stats;
}

bool MemoryAnalyzer::exportStatistics(
    uint16_t start,
    size_t length,
    const std::string& filename) const
{
    MemoryStatistics stats =
        analyzeStatistics(start, length);

    if (stats.totalBytes == 0)
        return false;

    std::ofstream file(filename);

    if (!file)
        return false;

    file << "MEMORY STATISTICS\n";
    file << "=================\n\n";

    file << "Start Address: $"
         << std::uppercase << std::hex
         << std::setw(4) << std::setfill('0')
         << static_cast<unsigned>(start)
         << "\n";

    file << std::dec;

    file << "Total Bytes: "
         << stats.totalBytes << "\n";

    file << "Zero Bytes: "
         << stats.zeroBytes << "\n";

    file << "Non-Zero Bytes: "
         << stats.nonZeroBytes << "\n";

    file << "Unique Values: "
         << stats.uniqueValues << "\n";

    file << "Minimum Value: "
         << static_cast<unsigned>(
             stats.minimumValue) << "\n";

    file << "Maximum Value: "
         << static_cast<unsigned>(
             stats.maximumValue) << "\n";

    file << std::fixed
         << std::setprecision(2);

    file << "Average Value: "
         << stats.averageValue << "\n\n";

    file << "VALUE  FREQUENCY\n";
    file << "----------------\n";

    for (size_t i = 0; i < 256; ++i)
    {
        if (stats.valueFrequency[i] == 0)
            continue;

        file << std::uppercase << std::hex
             << std::setw(2) << std::setfill('0')
             << i << "     ";

        file << std::dec
             << stats.valueFrequency[i]
             << "\n";
    }

    return static_cast<bool>(file);
}

const std::string& MemoryAnalyzer::error() const
{
    return m_error;
}
