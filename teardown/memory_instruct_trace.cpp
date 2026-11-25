
#include "memory_instruct_trace.h"

#include <fstream>
#include <iomanip>

void MemoryInstructionTrace::start()
{
    m_recording = true;
}

void MemoryInstructionTrace::stop()
{
    m_recording = false;
}

void MemoryInstructionTrace::clear()
{
    m_events.clear();
}

bool MemoryInstructionTrace::isRecording() const
{
    return m_recording;
}

size_t MemoryInstructionTrace::count() const
{
    return m_events.size();
}

bool MemoryInstructionTrace::isWatchedAddress(
    uint16_t address
) const
{
    for (uint16_t watched : m_watchAddresses)
    {
        if (watched == address)
            return true;
    }

    return false;
}

void MemoryInstructionTrace::recordWrite(
    uint64_t frame,
    uint64_t cycles,
    uint16_t pc,
    uint8_t opcode,
    uint16_t address,
    uint8_t oldValue,
    uint8_t newValue
)
{
    if (!m_recording)
        return;

    if (!isWatchedAddress(address))
        return;

    MemoryInstructionEvent event;

    event.frame = frame;
    event.cycles = cycles;

    event.pc = pc;
    event.opcode = opcode;

    event.address = address;

    event.oldValue = oldValue;
    event.newValue = newValue;

    m_events.push_back(event);
}

bool MemoryInstructionTrace::saveCSV(
    const std::string& filename
) const
{
    std::ofstream file(filename);

    if (!file.is_open())
        return false;

    file
        << "Frame,Cycles,PC,Opcode,"
        << "Address,OldValue,NewValue\n";

    for (const auto& event : m_events)
    {
        file
            << std::dec
            << event.frame << ","
            << event.cycles << ",";

        file
            << "0x"
            << std::uppercase
            << std::hex
            << std::setfill('0')
            << std::setw(4)
            << event.pc << ",";

        file
            << "0x"
            << std::setw(2)
            << static_cast<unsigned>(event.opcode) << ",";

        file
            << "0x"
            << std::setw(4)
            << event.address << ",";

        file
            << "0x"
            << std::setw(2)
            << static_cast<unsigned>(event.oldValue) << ",";

        file
            << "0x"
            << std::setw(2)
            << static_cast<unsigned>(event.newValue)
            << "\n";
    }

    return file.good();
}
