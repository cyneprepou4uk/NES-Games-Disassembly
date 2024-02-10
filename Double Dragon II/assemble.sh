#!/bin/bash
# transplant & edit: angel
# date: Thu Oct  7 16:20:43 CST 2021
# notice: Terminal only for MacOSX, Linux and MinGW
# usage: sh assemble.sh

# :: disable unnecessary console messages if possible

# return to parent-folder
NES_OUTPUT_SIMPLE_NAME=_double_dragon_2
NES_OUTPUT_FILE_SIZE=262160
NES_OUTPUT_FILE_SHA1_ORIGINAL="84E9953AEFEF23EC33766314AF01C4B3C0E84B66"
NES_OUTPUT_FAST_ASSEMBLY=1
NES_OUTPUT_LISTING_NAME=z_listing.asm
NES_OUTPUT_DEBUG_NAME=z_debug.txt
NES_OUTPUT_FILE_BACKUP=0
NES_OUTPUT_FILE_DIFF=0

# navigate to the directory
BASH_EXEC_DIR=$(dirname "$0")
# goto directory
cd "${BASH_EXEC_DIR}"

# common function(s)
source ../_scripts/os_support.sh
# environment function(s)
source ../_scripts/env.sh

# assemble-header function(s)
source ../_scripts/assemble_header.sh

# :: assemble code into binaries
if [ "${NES_OUTPUT_FAST_ASSEMBLY}" -eq 1 ]; then
    ld65 -C ld65.cfg -o PRG_ROM.bin copy_bank_*.o
else
    ld65 -C ld65.cfg -o PRG_ROM.bin --dbgfile ${NES_OUTPUT_DEBUG_NAME} copy_bank_*.o
fi
Return

# :: split PRG_ROM.bin into actual PRG_ROM.bin and CHR_screens.chr
lua split.lua
Return

# :: join header, prg and chr into a single ROM file
cat header.bin PRG_ROM.bin CHR_ROM.chr CHR_screens.chr > ${NES_OUTPUT_SIMPLE_NAME}.nes
Return

# assemble-footer function(s) support
source ../_scripts/assemble_footer.sh
