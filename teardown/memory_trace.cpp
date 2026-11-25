
#include "memory_trace.h"

#include <iomanip>

void MemoryTrace::start()
{
    stop();

    m_streaming = false;
    m_keepInMemory = true;
    m_recording = true;
}

bool MemoryTrace::startStreaming(
    const std::string& filename,
    bool keepInMemory)
{
    stop();

    m_streamFile.open(
        filename,
        std::ios::out | std::ios::trunc
    );

    if (!m_streamFile)
        return false;

    m_streamFilename = filename;
    m_streaming = true;
    m_keepInMemory = keepInMemory;
    m_recording = true;

    if (!writeCSVHeader())
    {
        stop();
        return false;
    }

    return true;
}

void MemoryTrace::stop()
{
    m_recording = false;

    if (m_streamFile.is_open())
    {
        m_streamFile.flush();
        m_streamFile.close();
    }

    m_streaming = false;
}

void MemoryTrace::clear()
{
    m_events.clear();
    m_eventCount = 0;

    if (m_streaming && m_streamFile.is_open())
    {
        m_streamFile.close();

        m_streamFile.open(
            m_streamFilename,
            std::ios::out | std::ios::trunc
        );

        if (m_streamFile)
            writeCSVHeader();
        else
            m_recording = false;
    }
}

void MemoryTrace::setConfig(
    const MemoryTraceConfig& config)
{
    m_config = config;
}

const MemoryTraceConfig&
MemoryTrace::config() const
{
    return m_config;
}

bool MemoryTrace::shouldCapture(
    uint16_t address,
    MemoryAccessType type) const
{
    if (type == MemoryAccessType::READ &&
        !m_config.captureRead)
        return false;

    if (type == MemoryAccessType::WRITE &&
        !m_config.captureWrite)
        return false;

    if (address <= 0x0FFF)
        return m_config.captureRAM;

    if (address <= 0x1FFF)
        return m_config.captureVideoRAM;

    if (address >= 0x2000 &&
        address <= 0x23FF)
        return m_config.capturePalette;

    if (address >= 0x2400 &&
        address <= 0x25FF)
        return m_config.captureEEPROM;

    return false;
}

bool MemoryTrace::writeCSVHeader()
{
    if (!m_streamFile)
        return false;

    m_streamFile
        << "Frame,Cycles,Address,Operation,OldValue,Value\n";

    return m_streamFile.good();
}

bool MemoryTrace::writeCSVEvent(
    const MemoryAccessEvent& event)
{
    if (!m_streamFile)
        return false;

    m_streamFile
        << event.frame << ","
        << event.cpuCycles << ","
        << "0x"
        << std::uppercase
        << std::hex
        << std::setw(4)
        << std::setfill('0')
        << static_cast<unsigned>(event.address)
        << ","
        << (event.type == MemoryAccessType::READ
            ? "READ" : "WRITE")
        << ",";

    if (event.oldValueValid)
    {
        m_streamFile
            << "0x"
            << std::setw(2)
            << static_cast<unsigned>(event.oldValue);
    }
    else
    {
        m_streamFile << "--";
    }

    m_streamFile
        << ",0x"
        << std::setw(2)
        << static_cast<unsigned>(event.value)
        << std::dec
        << "\n";

    return m_streamFile.good();
}

void MemoryTrace::recordEvent(
    const MemoryAccessEvent& event)
{
    if (!m_recording)
        return;

    if (m_streaming)
    {
        if (!writeCSVEvent(event))
        {
            m_recording = false;
            return;
        }
    }

    if (m_keepInMemory)
        m_events.push_back(event);

    ++m_eventCount;
}

void MemoryTrace::recordRead(
    uint16_t address,
    uint8_t value,
    uint64_t frame,
    uint64_t cycles)
{
    if (!m_recording ||
        !shouldCapture(address, MemoryAccessType::READ))
        return;

    MemoryAccessEvent event;

    event.frame = frame;
    event.cpuCycles = cycles;
    event.address = address;
    event.value = value;
    event.oldValueValid = false;
    event.type = MemoryAccessType::READ;

    recordEvent(event);
}

void MemoryTrace::recordWrite(
    uint16_t address,
    uint8_t oldValue,
    uint8_t newValue,
    uint64_t frame,
    uint64_t cycles)
{
    if (!m_recording ||
        !shouldCapture(address, MemoryAccessType::WRITE))
        return;

    MemoryAccessEvent event;

    event.frame = frame;
    event.cpuCycles = cycles;
    event.address = address;
    event.oldValue = oldValue;
    event.value = newValue;
    event.oldValueValid = true;
    event.type = MemoryAccessType::WRITE;

    recordEvent(event);
}

bool MemoryTrace::saveCSV(
    const std::string& filename) const
{
    std::ofstream file(filename);

    if (!file)
        return false;

    file
        << "Frame,Cycles,Address,Operation,OldValue,Value\n";

    for (const auto& event : m_events)
    {
        file
            << event.frame << ","
            << event.cpuCycles << ","
            << "0x"
            << std::uppercase
            << std::hex
            << std::setw(4)
            << std::setfill('0')
            << static_cast<unsigned>(event.address)
            << ","
            << (event.type == MemoryAccessType::READ
                ? "READ" : "WRITE")
            << ",";

        if (event.oldValueValid)
        {
            file
                << "0x"
                << std::setw(2)
                << static_cast<unsigned>(event.oldValue);
        }
        else
        {
            file << "--";
        }

        file
            << ",0x"
            << std::setw(2)
            << static_cast<unsigned>(event.value)
            << std::dec
            << "\n";
    }

    return file.good();
}

size_t MemoryTrace::count() const
{
    return m_eventCount;
}

bool MemoryTrace::isRecording() const
{
    return m_recording;
}

bool MemoryTrace::isStreaming() const
{
    return m_streaming;
}

const std::vector<MemoryAccessEvent>&
MemoryTrace::events() const
{
    return m_events;
}
