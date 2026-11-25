
#pragma once

#include <cstdint>
#include <cstddef>
#include <string>
#include <vector>

class PaletteSnapshot
{
public:
    static constexpr size_t PALETTE_SIZE = 256;

    bool capture(
        const uint8_t* data,
        size_t length,
        uint64_t frame,
        uint64_t cycles);

    bool saveBIN(
        const std::string& filename) const;

    bool saveCSV(
        const std::string& filename) const;

    size_t compare(
        const PaletteSnapshot& other,
        std::vector<uint8_t>& changedIndices) const;

    bool isCaptured() const;

    uint64_t frame() const;
    uint64_t cycles() const;

private:
    std::vector<uint8_t> m_data;

    uint64_t m_frame = 0;
    uint64_t m_cycles = 0;

    bool m_captured = false;
};
