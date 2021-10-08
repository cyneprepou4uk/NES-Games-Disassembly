#!/bin/bash
# Assemble-standard function(s) support

# :: assemble code into binaries
ld65 -C ld65.cfg -o PRG_ROM.bin --dbgfile _debug.txt copy_bank_*.o
Return

# :: join header, prg and chr into a single ROM file
cat header.bin PRG_ROM.bin CHR_ROM.chr > !${NES_OUTPUT_SIMPLE_NAME}.nes
Return
