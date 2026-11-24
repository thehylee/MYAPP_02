
#include "rom_loader.h"

#include <fstream>
#include <limits>

ROMLoader::ROMLoader()
{
}

bool ROMLoader::loadFile(
    const std::string& filename,
    size_t expectedSize,
    std::vector<uint8_t>& destination
)
{
    m_lastError.clear();

    std::ifstream file(
        filename,
        std::ios::binary | std::ios::ate
    );

    if (!file.is_open())
    {
        m_lastError = "Failed to open ROM file: " + filename;
        return false;
    }

    std::ifstream::pos_type fileSize = file.tellg();

    if (fileSize < 0)
    {
        m_lastError = "Failed to get ROM file size.";
        return false;
    }

    if (static_cast<uint64_t>(fileSize) != expectedSize)
    {
        m_lastError = "Invalid ROM file size. Expected " +
            std::to_string(expectedSize) +
            " bytes, got " +
            std::to_string(static_cast<uint64_t>(fileSize)) +
            " bytes.";

        return false;
    }

    if (expectedSize >
        static_cast<size_t>(
            (std::numeric_limits<std::streamsize>::max)()
        ))
    {
        m_lastError = "ROM file is too large.";
        return false;
    }

    file.seekg(0, std::ios::beg);

    if (!file.good())
    {
        m_lastError = "Failed to seek ROM file.";
        return false;
    }

    std::vector<uint8_t> temporary(expectedSize);

    file.read(
        reinterpret_cast<char*>(temporary.data()),
        static_cast<std::streamsize>(expectedSize)
    );

    if (file.gcount() !=
        static_cast<std::streamsize>(expectedSize))
    {
        m_lastError = "Failed to read complete ROM file.";
        return false;
    }

    destination.swap(temporary);

    return true;
}

bool ROMLoader::loadMainCPUROM(
    const std::string& filename
)
{
    return loadFile(
        filename,
        CPU_ROM_SIZE,
        m_cpuROM
    );
}

bool ROMLoader::loadGraphicsROM(
    const std::string& filename
)
{
    return loadFile(
        filename,
        GRAPHICS_ROM_SIZE,
        m_graphicsROM
    );
}

const uint8_t* ROMLoader::cpuROM() const
{
    return m_cpuROM.empty() ? nullptr : m_cpuROM.data();
}

size_t ROMLoader::cpuROMSize() const
{
    return m_cpuROM.size();
}

const uint8_t* ROMLoader::graphicsROM() const
{
    return m_graphicsROM.empty() ?
        nullptr : m_graphicsROM.data();
}

size_t ROMLoader::graphicsROMSize() const
{
    return m_graphicsROM.size();
}

bool ROMLoader::isCPULoaded() const
{
    return !m_cpuROM.empty();
}

bool ROMLoader::isGraphicsLoaded() const
{
    return !m_graphicsROM.empty();
}

const std::string& ROMLoader::lastError() const
{
    return m_lastError;
}
