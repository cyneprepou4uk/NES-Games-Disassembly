#!/bin/bash
# Assemble-standard function(s) support

# :: assemble code into binaries
if [ "${NES_OUTPUT_FAST_ASSEMBLY}" -eq 1 ]; then
    ld65 -C ld65.cfg -o PRG_ROM.bin copy_bank_*.o
else
    ld65 -C ld65.cfg -o PRG_ROM.bin --dbgfile ${NES_OUTPUT_DEBUG_NAME} copy_bank_*.o
fi
Return

# :: join header, prg and chr into a single ROM file
if [ -f "CHR_ROM.chr" ]; then
    cat header.bin PRG_ROM.bin CHR_ROM.chr > ${NES_OUTPUT_SIMPLE_NAME}.nes
else
    cat header.bin PRG_ROM.bin > ${NES_OUTPUT_SIMPLE_NAME}.nes
fi
Return
