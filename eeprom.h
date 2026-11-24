
#pragma once

#include <array>
#include <cstdint>
#include <cstddef>
#include <string>

class EEPROM
{
public:
    static constexpr size_t SIZE = 512;

    EEPROM();

    void reset();

    uint8_t read(uint16_t offset) const;

    void write(uint16_t offset, uint8_t data);

    void unlockWrite();

    bool isLocked() const;

    bool load(const std::string& filename);

    bool save(const std::string& filename) const;

    void clear();

private:
    std::array<uint8_t, SIZE> m_data;

    bool m_locked;
};
