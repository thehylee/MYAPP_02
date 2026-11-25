
#pragma once

#include <cstdint>
#include <string>
#include <vector>

class ROMAnalyzer
{
public:
    bool load(const std::string& filename);

    size_t size() const;
    bool empty() const;

    const std::vector<uint8_t>& data() const;

    std::string hexDump(
        size_t offset,
        size_t length
    ) const;

    std::vector<size_t> findBytes(
        const std::vector<uint8_t>& pattern
    ) const;

    uint32_t crc32() const;

    const std::string& error() const;

private:
    std::vector<uint8_t> m_data;
    std::string m_error;
};
