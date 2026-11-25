
#include "rom_analyzer.h"

#include <fstream>
#include <sstream>
#include <iomanip>
#include <algorithm>

bool ROMAnalyzer::load(const std::string& filename)
{
    m_data.clear();
    m_error.clear();

    std::ifstream file(
        filename,
        std::ios::binary | std::ios::ate
    );

    if (!file)
    {
        m_error = "Cannot open ROM file.";
        return false;
    }

    std::streamsize length = file.tellg();

    if (length <= 0)
    {
        m_error = "Invalid or empty ROM file.";
        return false;
    }

    file.seekg(0, std::ios::beg);

    m_data.resize(static_cast<size_t>(length));

    if (!file.read(
        reinterpret_cast<char*>(m_data.data()),
        length))
    {
        m_data.clear();
        m_error = "Failed to read ROM file.";
        return false;
    }

    return true;
}

size_t ROMAnalyzer::size() const
{
    return m_data.size();
}

bool ROMAnalyzer::empty() const
{
    return m_data.empty();
}

const std::vector<uint8_t>& ROMAnalyzer::data() const
{
    return m_data;
}

std::string ROMAnalyzer::hexDump(
    size_t offset,
    size_t length) const
{
    std::ostringstream out;

    if (offset >= m_data.size())
        return "";

    size_t end = std::min(
        offset + std::min(length, m_data.size() - offset),
        m_data.size()
    );

    for (size_t i = offset; i < end; i += 16)
    {
        out << std::uppercase
            << std::hex
            << std::setw(8)
            << std::setfill('0')
            << i << "  ";

        for (size_t j = 0; j < 16; ++j)
        {
            if (i + j < end)
            {
                out << std::setw(2)
                    << static_cast<int>(m_data[i + j])
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
            uint8_t c = m_data[i + j];

            out << (c >= 32 && c <= 126
                ? static_cast<char>(c)
                : '.');
        }

        out << "\n";
    }

    return out.str();
}

std::vector<size_t> ROMAnalyzer::findBytes(
    const std::vector<uint8_t>& pattern) const
{
    std::vector<size_t> results;

    if (pattern.empty() || pattern.size() > m_data.size())
        return results;

    for (size_t i = 0;
         i <= m_data.size() - pattern.size();
         ++i)
    {
        if (std::equal(
            pattern.begin(),
            pattern.end(),
            m_data.begin() + i))
        {
            results.push_back(i);
        }
    }

    return results;
}

uint32_t ROMAnalyzer::crc32() const
{
    uint32_t crc = 0xFFFFFFFF;

    for (uint8_t byte : m_data)
    {
        crc ^= byte;

        for (int i = 0; i < 8; ++i)
        {
            crc = (crc >> 1) ^
                (0xEDB88320 &
                -(static_cast<int>(crc & 1)));
        }
    }

    return ~crc;
}

const std::string& ROMAnalyzer::error() const
{
    return m_error;
}
