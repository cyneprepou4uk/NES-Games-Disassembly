:: in order to enable "comparsion with previous version" and "restoring backup" functions
:: make 2 copies of <!contra.nes> and rename them as <!contra.old> and <!contra.bak>

:: disable unnecessary console messages if possible
echo off

:: create a copy of previous compiled version
if exist !contra.old (copy !contra.nes !contra.old)

:: launch preparation script and wait until finished
start /wait lua53 preparations.lua

:: -U = no need to use .import
:: -l = create listing file
:: -g = create debug file
ca65 -U -l copy_bank_00.lst -g copy_bank_00.asm
ca65 -U -l copy_bank_02.lst -g copy_bank_02.asm
ca65 -U -l copy_bank_03.lst -g copy_bank_03.asm
ca65 -U -l copy_bank_04.lst -g copy_bank_04.asm
ca65 -U -l copy_bank_05.lst -g copy_bank_05.asm
ca65 -U -l copy_bank_06.lst -g copy_bank_06.asm
ca65 -U -l copy_bank_07.lst -g copy_bank_07.asm
ca65 -U -l copy_bank_08.lst -g copy_bank_08.asm
ca65 -U -l copy_bank_0A.lst -g copy_bank_0A.asm
ca65 -U -l copy_bank_0C.lst -g copy_bank_0C.asm
ca65 -U -l copy_bank_FF.lst -g copy_bank_FF.asm

:: assemble code into binaries
ld65 -C ld65.cfg -o PRG_ROM.bin --dbgfile _debug.txt ^
    copy_bank_00.o ^
    copy_bank_02.o ^
    copy_bank_03.o ^
    copy_bank_04.o ^
    copy_bank_05.o ^
    copy_bank_06.o ^
    copy_bank_07.o ^
    copy_bank_08.o ^
    copy_bank_0A.o ^
    copy_bank_0C.o ^
    copy_bank_FF.o

:: join header and prg into a single ROM file
copy /B header.bin + PRG_ROM.bin + CHR_ROM.chr !contra.nes

:: join listing files into a single file
copy /A copy_*.lst _listing.txt

:: delete leftover garbage and copies
del *.o + PRG_ROM.bin + copy_*

:: create a copy of .nl file for original ROM
if exist original_rom.nes (copy !contra.nes.ram.nl original_rom.nes.ram.nl)

:: check file size and display corresponding message
setlocal enableextensions
FOR %%A IN ("!contra.nes") DO set "size=%%~zA"
if %size% EQU 262160 (
    echo.
    echo -----------------------------------------------
    echo Done! Look for !contra.nes file in your folder.
    if exist !contra.bak (
        echo.
        fc /A /B /T !contra.nes !contra.bak > nul && echo Perfect match || echo Differences found 
        echo.
        copy !contra.nes !contra.bak
        echo Backup created
    )
    echo -----------------------------------------------
    echo Script will close automatically in 10 seconds.
    timeout /T 10 > nul
) else (
    echo.
    echo --------------------------------------------------
    echo Something's wrong, check log for more information. 
    if exist !contra.bak (
        echo.
        copy !contra.bak !contra.nes
        echo Backup restored
    )
    echo --------------------------------------------------
    echo.
    pause
)