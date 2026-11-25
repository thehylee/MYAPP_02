
#include "dynamic_analyzer.h"
#include "memory_trace.h"

#include <fstream>
#include <iomanip>
#include <filesystem>

DynamicAnalyzer::DynamicAnalyzer()
{
    m_snapshot.resize(
        ADDRESS_SPACE, 0xFF);
}

void DynamicAnalyzer::connectTrace(
    MemoryTrace* trace)
{
    m_trace = trace;
}

bool DynamicAnalyzer::capture(
    AtariTetrisMemory& memory,
    uint64_t frame,
    uint64_t cycles)
{
    m_snapshot.assign(
        ADDRESS_SPACE, 0xFF);

    // Main RAM: 0000-0FFF
    const uint8_t* ramData = memory.ram();

    if (!ramData)
        return false;

    std::copy(
        ramData,
        ramData + RAM_SIZE,
        m_snapshot.begin() + 0x0000
    );

    // Video RAM: 1000-1FFF
    const uint8_t* videoData =
        memory.videoRAM();

    if (!videoData)
        return false;

    std::copy(
        videoData,
        videoData + VIDEO_RAM_SIZE,
        m_snapshot.begin() + 0x1000
    );

    m_frameNumber = frame;
    m_cpuCycles = cycles;

    m_captured = true;

    return true;
}

bool DynamicAnalyzer::saveDump(
    const std::string& filename) const
{
    if (!m_captured)
        return false;

    std::filesystem::path path(filename);

    std::filesystem::create_directories(
        path.parent_path());

    std::ofstream file(
        filename,
        std::ios::binary);

    if (!file)
        return false;

    file.write(
        reinterpret_cast<const char*>(
            m_snapshot.data()),
        static_cast<std::streamsize>(
            m_snapshot.size()));

    return file.good();
}

bool DynamicAnalyzer::saveReport(
    const std::string& filename) const
{
    if (!m_captured)
        return false;

    std::filesystem::path path(filename);

    std::filesystem::create_directories(
        path.parent_path());

    std::ofstream file(filename);

    if (!file)
        return false;

    file << "ATARI TETRIS MEMORY SNAPSHOT\n";
    file << "============================\n\n";

    file << "Frame Number: "
         << m_frameNumber << "\n";

    file << "CPU Cycles: "
         << m_cpuCycles << "\n";

    file << "Snapshot Size: "
         << ADDRESS_SPACE << " bytes\n\n";

    file << "Captured Regions\n";
    file << "----------------\n";

    file << "RAM:       0000-0FFF\n";
    file << "VIDEO RAM: 1000-1FFF\n";

    file << "Other regions: "
         << "Not captured (FF placeholder)\n";

    return file.good();
}

bool DynamicAnalyzer::saveTrace(
    const std::string& filename) const
{
    if (!m_trace)
        return false;

    std::filesystem::path path(filename);

    std::filesystem::create_directories(
        path.parent_path());

    return m_trace->saveCSV(filename);
}

bool DynamicAnalyzer::isCaptured() const
{
    return m_captured;
}

uint64_t DynamicAnalyzer::frameNumber() const
{
    return m_frameNumber;
}

uint64_t DynamicAnalyzer::cpuCycles() const
{
    return m_cpuCycles;
}

const std::vector<uint8_t>&
DynamicAnalyzer::data() const
{
    return m_snapshot;
}
