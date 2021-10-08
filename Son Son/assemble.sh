#!/bin/bash
# transplant & edit: angel
# date: Thu Oct  7 16:20:43 CST 2021
# notice: Terminal only for MacOSX, Linux and MinGW
# usage: sh assemble.sh
# :: in order to enable "comparsion with previous version" and "restoring backup" functions
# :: make 2 copies of <!rom_name.nes> and rename them as <!rom_name.old> and <!rom_name.bak>

# :: disable unnecessary console messages if possible

# return to parent-folder
NES_OUTPUT_SIMPLE_NAME=son
NES_OUTPUT_FILE_SIZE=40976

# common function(s)
source ../Scripts/os_support.sh
# environment function(s)
source ../Scripts/env.sh

# assemble-header function(s)
source ../Scripts/assemble_header.sh
# assemble-standard function(s) support
source ../Scripts/assemble_standard.sh
# assemble-footer function(s) support
source ../Scripts/assemble_footer.sh
