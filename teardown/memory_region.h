
#pragma once

#include <cstdint>
#include <cstddef>
#include <string>
#include <vector>

enum class MemoryRegionType
{
    RAM,
    PLAYFIELD_RAM,
    PALETTE_RAM,
    EEPROM,
    POKEY,
    HARDWARE_REGISTER,
    BANKED_ROM,
    FIXED_ROM,
    MIRROR,
    UNMAPPED
};

struct MemoryRegion
{
    uint16_t start;
    uint16_t end;

    MemoryRegionType type;

    std::string name;

    size_t size() const
    {
        return static_cast<size_t>(end - start) + 1;
    }
};

class MemoryRegionAnalyzer
{
public:
    MemoryRegionAnalyzer();

    const std::vector<MemoryRegion>& regions() const;

    const MemoryRegion* findRegion(
        uint16_t address) const;

    std::string regionName(
        uint16_t address) const;

private:
    std::vector<MemoryRegion> m_regions;
};
