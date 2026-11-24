
#include "eeprom.h"

#include <fstream>

EEPROM::EEPROM()
    : m_locked(true)
{
    m_data.fill(0xFF);
}

void EEPROM::reset()
{
    m_locked = true;
}

uint8_t EEPROM::read(uint16_t offset) const
{
    if (offset >= SIZE)
        return 0xFF;

    return m_data[offset];
}

void EEPROM::write(uint16_t offset, uint8_t data)
{
    if (m_locked)
        return;

    if (offset >= SIZE)
        return;

    m_data[offset] = data;

    m_locked = true;
}

void EEPROM::unlockWrite()
{
    m_locked = false;
}

bool EEPROM::isLocked() const
{
    return m_locked;
}

bool EEPROM::load(const std::string& filename)
{
    std::ifstream file(
        filename,
        std::ios::binary | std::ios::ate
    );

    if (!file)
        return false;

    if (file.tellg() != static_cast<std::streamoff>(SIZE))
        return false;

    file.seekg(0, std::ios::beg);

    std::array<uint8_t, SIZE> buffer{};

    file.read(
        reinterpret_cast<char*>(buffer.data()),
        static_cast<std::streamsize>(SIZE)
    );

    if (!file)
        return false;

    m_data = buffer;
    m_locked = true;

    return true;
}

bool EEPROM::save(const std::string& filename) const
{
    std::ofstream file(
        filename,
        std::ios::binary | std::ios::trunc
    );

    if (!file)
        return false;

    file.write(
        reinterpret_cast<const char*>(m_data.data()),
        static_cast<std::streamsize>(SIZE)
    );

    return file.good();
}

void EEPROM::clear()
{
    m_data.fill(0xFF);
    m_locked = true;
}
