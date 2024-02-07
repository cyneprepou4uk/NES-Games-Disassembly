#!/bin/bash
# transplant & edit: angel
# date: Thu Oct  7 16:20:43 CST 2021
# notice: Terminal only for MacOSX, Linux and MinGW
# usage: sh assemble.sh
# :: in order to enable "comparsion with previous version" and "restoring backup" functions
# :: make 2 copies of <!rom_name.nes> and rename them as <!rom_name.old> and <!rom_name.bak>

# :: disable unnecessary console messages if possible

# return to parent-folder
NES_OUTPUT_SIMPLE_NAME=_street_fighter_3
NES_OUTPUT_FILE_SIZE=655376

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
ld65 -C ld65.cfg --dbgfile _debug.txt copy_bank_*.o
Return

# :: join header, prg and chr into a single ROM file
cat header.bin copy_bank_*.bin CHR_ROM.chr > !${NES_OUTPUT_SIMPLE_NAME}.nes
Return

# assemble-footer function(s) support
source ../_scripts/assemble_footer.sh
