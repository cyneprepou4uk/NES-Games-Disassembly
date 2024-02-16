#!/bin/bash
# Assemble-footer function(s) support

# :: join listing files into a single file
if [ "${NES_OUTPUT_FAST_ASSEMBLY}" -eq 0 ]; then
    cat copy_*.lst > ${NES_OUTPUT_LISTING_NAME}
    Return
fi

# :: delete leftover garbage and copies
rm -f *.o PRG_ROM.bin copy_*
Return

# :: check file size and display corresponding message
output_rom_zize=`wc -c ${NES_OUTPUT_SIMPLE_NAME}.nes | awk '{print $1}'`
if [ "${output_rom_zize}" -eq ${NES_OUTPUT_FILE_SIZE} ]; then
    echo "--------------------------------------------"
    echoinfo "Done! Look for ${NES_OUTPUT_SIMPLE_NAME}.nes file in your folder."

    # :: create .bak backup if configured
    if [ "${NES_OUTPUT_FILE_BACKUP}" -eq 1 ]; then
        cp -f ${NES_OUTPUT_SIMPLE_NAME}.nes ${NES_OUTPUT_SIMPLE_NAME}.bak
        echoinfo "Backup created"
    fi

    # :: create .old if configured
    if [ "${NES_OUTPUT_FILE_DIFF}" -eq 1 ]; then
        if [ -f "${NES_OUTPUT_SIMPLE_NAME}.old" ]; then
            diff ${NES_OUTPUT_SIMPLE_NAME}.nes ${NES_OUTPUT_SIMPLE_NAME}.old > /dev/null
            if [ $? == 0 ]; then
                echowarn "Perfect match"
            else
                echowarn "Differences found"
            fi
        fi

        cp -f ${NES_OUTPUT_SIMPLE_NAME}.nes ${NES_OUTPUT_SIMPLE_NAME}.old
    fi
    echo "--------------------------------------------"
else
    echo "--------------------------------------------"
    echoerror "Something's wrong, check log for more information."
    if [ -f "${NES_OUTPUT_SIMPLE_NAME}.bak" ]; then
        # :: restore backup if there were errors
        if [ "${NES_OUTPUT_FILE_BACKUP}" -eq 1 ]; then
            cp -f ${NES_OUTPUT_SIMPLE_NAME}.bak ${NES_OUTPUT_SIMPLE_NAME}.nes
            echoerror "Backup restored"
        fi
    fi
    echo "--------------------------------------------"
    exit 254
fi

# :: get SHA-1 from the file
sha1_current=""
if [[ $(command -v sha1sum) ]]; then
    sha1_current=$(sha1sum ${NES_OUTPUT_SIMPLE_NAME}.nes)
elif [[ $(command -v shasum) ]]; then
    sha1_current=$(shasum ${NES_OUTPUT_SIMPLE_NAME}.nes)
else
    echoerror "could not find sha1sum or shasum"
    exit 254
fi

# :: convert to uppercase
if [ ! -z "${sha1_current}" ]; then
    sha1_current=$(echo ${sha1_current} | awk '{print $1}' | tr '[:lower:]' '[:upper:]')
fi

# :: verify checksum
if [ "${sha1_current}" == "${NES_OUTPUT_FILE_SHA1_ORIGINAL}" ]; then
    echo "--------------------------------------------"
    echoinfo "Original SHA-1 checksum detected"
    echo "--------------------------------------------"
fi
