
#include "palette_snapshot.h"

#include <fstream>
#include <iomanip>

bool PaletteSnapshot::capture(
    const uint8_t* data,
    size_t length,
    uint64_t frame,
    uint64_t cycles)
{
    if (!data || length != PALETTE_SIZE)
        return false;

    m_data.assign(data, data + length);

    m_frame = frame;
    m_cycles = cycles;
    m_captured = true;

    return true;
}

bool PaletteSnapshot::saveBIN(
    const std::string& filename) const
{
    if (!m_captured)
        return false;

    std::ofstream file(
        filename,
        std::ios::binary);

    if (!file)
        return false;

    file.write(
        reinterpret_cast<const char*>(m_data.data()),
        static_cast<std::streamsize>(m_data.size()));

    return file.good();
}

bool PaletteSnapshot::saveCSV(
    const std::string& filename) const
{
    if (!m_captured)
        return false;

    std::ofstream file(filename);

    if (!file)
        return false;

    file << "Index,Value,Frame,Cycles\n";

    for (size_t i = 0; i < m_data.size(); ++i)
    {
        file << i << ","
             << static_cast<unsigned>(m_data[i]) << ","
             << m_frame << ","
             << m_cycles << "\n";
    }

    return file.good();
}

size_t PaletteSnapshot::compare(
    const PaletteSnapshot& other,
    std::vector<uint8_t>& changedIndices) const
{
    changedIndices.clear();

    if (!m_captured || !other.m_captured)
        return 0;

    for (size_t i = 0; i < PALETTE_SIZE; ++i)
    {
        if (m_data[i] != other.m_data[i])
            changedIndices.push_back(
                static_cast<uint8_t>(i));
    }

    return changedIndices.size();
}

bool PaletteSnapshot::isCaptured() const
{
    return m_captured;
}

uint64_t PaletteSnapshot::frame() const
{
    return m_frame;
}

uint64_t PaletteSnapshot::cycles() const
{
    return m_cycles;
}
