
#include "memory_region.h"

MemoryRegionAnalyzer::MemoryRegionAnalyzer()
{
    m_regions =
    {
        {0x0000, 0x0FFF,
         MemoryRegionType::RAM, "Program RAM"},

        {0x1000, 0x1FFF,
         MemoryRegionType::PLAYFIELD_RAM, "Playfield RAM"},

        {0x2000, 0x20FF,
         MemoryRegionType::PALETTE_RAM, "Palette RAM"},

        {0x2100, 0x23FF,
         MemoryRegionType::MIRROR, "Palette Mirror"},

        {0x2400, 0x25FF,
         MemoryRegionType::EEPROM, "EEPROM"},

        {0x2600, 0x27FF,
         MemoryRegionType::UNMAPPED, "Unmapped"},

        {0x2800, 0x281F,
         MemoryRegionType::POKEY, "POKEY"},

        {0x2820, 0x2FFF,
         MemoryRegionType::UNMAPPED, "Unmapped"},

        {0x3000, 0x3000,
         MemoryRegionType::HARDWARE_REGISTER, "Watchdog"},

        {0x3001, 0x33FF,
         MemoryRegionType::UNMAPPED, "Unmapped"},

        {0x3400, 0x3400,
         MemoryRegionType::HARDWARE_REGISTER, "EEPROM Control"},

        {0x3401, 0x37FF,
         MemoryRegionType::UNMAPPED, "Unmapped"},

        {0x3800, 0x3800,
         MemoryRegionType::HARDWARE_REGISTER, "IRQ Control"},

        {0x3801, 0x3BFF,
         MemoryRegionType::UNMAPPED, "Unmapped"},

        {0x3C00, 0x3C00,
         MemoryRegionType::HARDWARE_REGISTER, "Coin Counter"},

        {0x3C01, 0x3FFF,
         MemoryRegionType::UNMAPPED, "Unmapped"},

        {0x4000, 0x7FFF,
         MemoryRegionType::BANKED_ROM, "Banked ROM"},

        {0x8000, 0xFFFF,
         MemoryRegionType::FIXED_ROM, "Fixed ROM"}
    };
}

const std::vector<MemoryRegion>&
MemoryRegionAnalyzer::regions() const
{
    return m_regions;
}

const MemoryRegion*
MemoryRegionAnalyzer::findRegion(
    uint16_t address) const
{
    for (const auto& region : m_regions)
    {
        if (address >= region.start &&
            address <= region.end)
        {
            return &region;
        }
    }

    return nullptr;
}

std::string MemoryRegionAnalyzer::regionName(
    uint16_t address) const
{
    const MemoryRegion* region =
        findRegion(address);

    return region ? region->name : "Unknown";
}
