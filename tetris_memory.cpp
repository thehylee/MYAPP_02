
#include "tetris_memory.h"
#include "tetris_video.h"
#include "watchdog.h"
#include "pokey.h"

#include <cstring>

AtariTetrisMemory::AtariTetrisMemory(
    Palette& palette,
    AtariTetrisVideo* video
)
    : m_palette(palette),
      m_video(video),
      m_watchdog(nullptr),
      m_pokey1(nullptr),
      m_pokey2(nullptr),
      m_bankROMLoaded(false),
      m_fixedROMLoaded(false)
{
    m_bankROM.fill(0xFF);
    m_fixedROM.fill(0xFF);
    reset();
}

void AtariTetrisMemory::reset()
{
    m_ram.fill(0x00);
    m_videoRAM.fill(0x00);

    m_slapstic.reset();
    m_eeprom.reset();

    if (m_video)
        m_video->invalidateAll();

    if (m_watchdog)
        m_watchdog->reset();
}

// Load Slapstic ROM: 4 banks x 16KB
bool AtariTetrisMemory::loadBankROM(
    const uint8_t* data,
    size_t size
)
{
    constexpr size_t REQUIRED_SIZE =
        BANK_SIZE * BANK_COUNT;

    if (!data || size != REQUIRED_SIZE)
        return false;

    std::memcpy(
        m_bankROM.data(),
        data,
        REQUIRED_SIZE
    );

    m_bankROMLoaded = true;

    m_slapstic.reset();

    return true;
}

// Load fixed ROM: 32KB
bool AtariTetrisMemory::loadFixedROM(
    const uint8_t* data,
    size_t size
)
{
    if (!data || size != FIXED_ROM_SIZE)
        return false;

    std::memcpy(
        m_fixedROM.data(),
        data,
        FIXED_ROM_SIZE
    );

    m_fixedROMLoaded = true;

    return true;
}

// Notify Slapstic of an access in its mapped range.
void AtariTetrisMemory::notifySlapstic(
    uint16_t address
)
{
    const bool inside =
        (address >= 0x6000 &&
         address <= 0x7FFF);

    m_slapstic.access(
        address & 0x1FFF,
        inside
    );
}

// Read banked ROM
uint8_t AtariTetrisMemory::readBankROM(
    uint16_t address
)
{
    if (!m_bankROMLoaded)
        return 0xFF;

    if (address < ROM_BANK_START ||
        address > ROM_BANK_END)
        return 0xFF;

    int bank = m_slapstic.currentBank();

    if (bank < 0 || bank >= BANK_COUNT)
        return 0xFF;

    size_t offset =
        static_cast<size_t>(bank) * BANK_SIZE;

    offset += address - ROM_BANK_START;

    return m_bankROM[offset];
}

// CPU memory read
uint8_t AtariTetrisMemory::read(
    uint16_t address
)
{
    notifySlapstic(address);

    // Main RAM
    if (address <= 0x0FFF)
        return m_ram[address];

    // Video RAM
    if (address >= 0x1000 &&
        address <= 0x1FFF)
    {
        return m_videoRAM[address - 0x1000];
    }

    // Palette RAM
    // Read mirrors: 0x2000-0x23FF
    if (address >= 0x2000 &&
        address <= 0x23FF)
    {
        int offset = (address - 0x2000) & 0xFF;
        return m_palette.readRGB332(offset);
    }

    // EEPROM
    if (address >= 0x2400 &&
        address <= 0x25FF)
    {
        return m_eeprom.read(address - 0x2400);
    }

    // POKEY address decoding
    // MAME mirror: 0x03E0
    if (address >= 0x2800 &&
        address <= 0x2BFF)
    {
        const uint16_t pokeyAddress =
            address & ~static_cast<uint16_t>(0x03E0);

        if (pokeyAddress >= POKEY1_START &&
            pokeyAddress <= POKEY1_END)
        {
            if (m_pokey1)
                return m_pokey1->read(
                    static_cast<uint8_t>(
                        pokeyAddress - POKEY1_START
                    )
                );

            return 0xFF;
        }

        if (pokeyAddress >= POKEY2_START &&
            pokeyAddress <= POKEY2_END)
        {
            if (m_pokey2)
                return m_pokey2->read(
                    static_cast<uint8_t>(
                        pokeyAddress - POKEY2_START
                    )
                );

            return 0xFF;
        }
    }

    // Banked ROM
    if (address >= 0x4000 &&
        address <= 0x7FFF)
    {
        return readBankROM(address);
    }

    // Fixed ROM
    if (address >= 0x8000)
    {
        if (!m_fixedROMLoaded)
            return 0xFF;

        return m_fixedROM[address - 0x8000];
    }

    return 0xFF;
}

// CPU memory write
void AtariTetrisMemory::write(
    uint16_t address,
    uint8_t data
)
{
    notifySlapstic(address);
    
    // Main RAM
    if (address <= 0x0FFF)
    {
        m_ram[address] = data;
        return;
    }

    // Video RAM
    if (address >= 0x1000 &&
        address <= 0x1FFF)
    {
        int offset = address - 0x1000;

        m_videoRAM[offset] = data;

        if (m_video)
            m_video->markTileDirty(offset);

        return;
    }

    // Palette RAM and mirrors
    if (address >= 0x2000 &&
        address <= 0x23FF)
    {
        int offset = (address - 0x2000) & 0xFF;

        m_palette.writeRGB332(offset, data);

        // Palette changed:
        // All previously rendered tiles must be redrawn.
        if (m_video)
            m_video->invalidateAll();

        return;
    }

    // EEPROM
    if (address >= 0x2400 &&
        address <= 0x25FF)
    {
        m_eeprom.write(address - 0x2400, data);
        return;
    }

    // POKEY address decoding
    // MAME mirror: 0x03E0
    if (address >= 0x2800 &&
        address <= 0x2BFF)
    {
        const uint16_t pokeyAddress =
            address & ~static_cast<uint16_t>(0x03E0);

        if (pokeyAddress >= POKEY1_START &&
            pokeyAddress <= POKEY1_END)
        {
            if (m_pokey1)
                m_pokey1->write(
                    static_cast<uint8_t>(
                        pokeyAddress - POKEY1_START
                    ),
                    data
                );

            return;
        }

        if (pokeyAddress >= POKEY2_START &&
            pokeyAddress <= POKEY2_END)
        {
            if (m_pokey2)
                m_pokey2->write(
                    static_cast<uint8_t>(
                        pokeyAddress - POKEY2_START
                    ),
                    data
                );

            return;
        }
    }

    // Watchdog
    if (address >= 0x3000 &&
        address <= 0x33FF)
    {
        if (m_watchdog)
            m_watchdog->resetW(data);

        return;
    }

    // EEPROM unlock
    if (address >= 0x3400 &&
        address <= 0x37FF)
    {
        m_eeprom.unlockWrite();
        return;
    }

    // IRQ acknowledge
    if (address >= 0x3800 &&
        address <= 0x3BFF)
    {
        if (m_irqAcknowledgeCallback)
            m_irqAcknowledgeCallback();

        return;
    }

    // Coin counters
    if (address >= 0x3C00 &&
        address <= 0x3FFF)
    {
        return;
    }

    // ROM is read-only
}

// Video RAM access
uint8_t* AtariTetrisMemory::videoRAM()
{
    return m_videoRAM.data();
}

const uint8_t* AtariTetrisMemory::videoRAM() const
{
    return m_videoRAM.data();
}

// Main RAM access
uint8_t* AtariTetrisMemory::ram()
{
    return m_ram.data();
}

// Current Slapstic bank
int AtariTetrisMemory::currentBank() const
{
    return m_slapstic.currentBank();
}

bool AtariTetrisMemory::loadEEPROM(
    const std::string& filename)
{
    return m_eeprom.load(filename);
}

bool AtariTetrisMemory::saveEEPROM(
    const std::string& filename) const
{
    return m_eeprom.save(filename);
}

void AtariTetrisMemory::connectWatchdog(
    Watchdog* watchdog)
{
    m_watchdog = watchdog;
}

void AtariTetrisMemory::setIRQAcknowledgeCallback(
    std::function<void()> callback)
{
    m_irqAcknowledgeCallback = callback;
}

void AtariTetrisMemory::connectPokeys(
    Pokey* pokey1,
    Pokey* pokey2)
{
    m_pokey1 = pokey1;
    m_pokey2 = pokey2;
}
