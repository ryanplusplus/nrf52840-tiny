/* Linker script to configure memory regions. */

SEARCH_DIR(.)
GROUP(-lgcc -lc -lnosys)

MEMORY
{
  SOFTDEVICE_FLASH (rx) : ORIGIN = 0x00000000, LENGTH = 0x27000
  FLASH (rx) : ORIGIN = 0x00027000, LENGTH = 0xd9000
  EXTFLASH (rx) : ORIGIN = 0x12000000, LENGTH = 0x8000000
  SOFTDEVICE_RAM (rwx) : ORIGIN = 0x20000000, LENGTH = 0x5978
  RAM (rwx) : ORIGIN = 0x20005978, LENGTH = 0x3a688
  CODE_RAM (rwx) : ORIGIN = 0x800000, LENGTH = 0x40000
}

INCLUDE "lib/nrf-mdk/8.44.1/nrf_common.ld"
