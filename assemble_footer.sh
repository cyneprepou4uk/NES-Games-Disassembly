#!/bin/bash
# Assemble-footer function(s) support

# :: join listing files into a single file
cat copy_*.lst > _listing.txt
Return

# :: delete leftover garbage and copies
rm -f *.o PRG_ROM.bin copy_*
Return

# :: create a copy of .nl file for original ROM
if [ -f "TMNT_original.nes" ]; then
    cp -f !${NES_OUTPUT_SIMPLE_NAME}.nes.ram.nl TMNT_original.nes.ram.nl
fi

# :: check file size and display corresponding message
output_rom_zize=`wc -c !${NES_OUTPUT_SIMPLE_NAME}.nes | awk '{print $1}'`
if [ "${output_rom_zize}" -eq ${NES_OUTPUT_FILE_SIZE} ]; then
    echo "--------------------------------------------"
    echoinfo "Done! Look for !${NES_OUTPUT_SIMPLE_NAME}.nes file in your folder."
    if [ -f "!${NES_OUTPUT_SIMPLE_NAME}.bak" ]; then
        diff !${NES_OUTPUT_SIMPLE_NAME}.nes !${NES_OUTPUT_SIMPLE_NAME}.bak > /dev/null
        if [ $? == 0 ]; then
            echowarn "Perfect match"
        else
            echowarn "Differences found"
        fi
        cp -f !${NES_OUTPUT_SIMPLE_NAME}.nes !${NES_OUTPUT_SIMPLE_NAME}.bak
        echoinfo "Backup created"
    fi
    echo "--------------------------------------------"
else
    echo "--------------------------------------------------"
    echoerror "Something's wrong, check log for more information."
    if [ -f "!${NES_OUTPUT_SIMPLE_NAME}.bak" ]; then
        cp -f !${NES_OUTPUT_SIMPLE_NAME}.bak !${NES_OUTPUT_SIMPLE_NAME}.nes
        echoerror "Backup restored"
    fi
    echo "--------------------------------------------------"
    exit 254
fi
