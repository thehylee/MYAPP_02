
#pragma once

#include <cstdint>
#include <string>
#include <vector>


struct MemoryStatistics
{
    size_t totalBytes = 0;

    size_t zeroBytes = 0;
    size_t nonZeroBytes = 0;

    size_t uniqueValues = 0;

    uint8_t minimumValue = 0;
    uint8_t maximumValue = 0;

    double averageValue = 0.0;

    size_t valueFrequency[256] = {};
};


class MemoryAnalyzer
{
public:
    static constexpr size_t ADDRESS_SPACE = 65536;

    bool loadDump(const std::string& filename);

    size_t size() const;
    bool isLoaded() const;

    bool readByte(
        uint16_t address,
        uint8_t& value) const;

    std::string hexDump(
        uint16_t address,
        size_t length) const;

    std::vector<uint16_t> findBytes(
        const std::vector<uint8_t>& pattern) const;

    bool exportRegion(
        uint16_t start,
        size_t length,
        const std::string& filename) const;

    bool compare(
        const MemoryAnalyzer& other,
        size_t& differences) const;

    MemoryStatistics analyzeStatistics(
        uint16_t start,
        size_t length) const;

    bool exportStatistics(
        uint16_t start,
        size_t length,
        const std::string& filename) const;

    const std::string& error() const;

private:
    std::vector<uint8_t> m_memory;
    std::string m_error;
};
