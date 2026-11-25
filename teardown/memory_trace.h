
#pragma once

#include <cstdint>
#include <cstddef>
#include <string>
#include <vector>
#include <fstream>

enum class MemoryAccessType
{
    READ,
    WRITE
};

struct MemoryAccessEvent
{
    uint64_t frame = 0;
    uint64_t cpuCycles = 0;

    uint16_t address = 0;

    uint8_t value = 0;
    uint8_t oldValue = 0;

    bool oldValueValid = false;

    MemoryAccessType type =
        MemoryAccessType::READ;
};

struct MemoryTraceConfig
{
    bool captureRAM = true;
    bool captureVideoRAM = true;
    bool capturePalette = false;
    bool captureEEPROM = false;

    bool captureRead = false;
    bool captureWrite = true;
};

class MemoryTrace
{
public:
    void start();

    bool startStreaming(
        const std::string& filename,
        bool keepInMemory = false);

    void stop();
    void clear();

    void setConfig(
        const MemoryTraceConfig& config);

    const MemoryTraceConfig& config() const;

    void recordRead(
        uint16_t address,
        uint8_t value,
        uint64_t frame,
        uint64_t cycles);

    void recordWrite(
        uint16_t address,
        uint8_t oldValue,
        uint8_t newValue,
        uint64_t frame,
        uint64_t cycles);

    bool saveCSV(
        const std::string& filename) const;

    size_t count() const;

    bool isRecording() const;
    bool isStreaming() const;

    const std::vector<MemoryAccessEvent>&
    events() const;

private:
    bool shouldCapture(
        uint16_t address,
        MemoryAccessType type) const;

    bool writeCSVHeader();
    bool writeCSVEvent(
        const MemoryAccessEvent& event);

    void recordEvent(
        const MemoryAccessEvent& event);

    std::vector<MemoryAccessEvent> m_events;

    MemoryTraceConfig m_config;

    std::ofstream m_streamFile;

    std::string m_streamFilename;

    size_t m_eventCount = 0;

    bool m_recording = false;
    bool m_streaming = false;
    bool m_keepInMemory = true;
};
