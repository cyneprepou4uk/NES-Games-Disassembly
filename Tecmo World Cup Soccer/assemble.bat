:: in order to enable "comparsion with previous version" and "restoring backup" functions
:: make 2 copies of <!twcs.nes> and rename them as <!twcs.old> and <!twcs.bak>

:: disable unnecessary console messages if possible
echo off

:: create a copy of previous compiled version
if exist !twcs.old (copy !twcs.nes !twcs.old)

:: launch preparation script and wait until finished
start /wait lua53 preparations.lua

:: -U = no need to use .import
:: -l = create listing file
:: -g = create debug file
ca65 -U -l -g copy_bank_00.asm
ca65 -U -l -g copy_bank_01.asm
ca65 -U -l -g copy_bank_02.asm
ca65 -U -l -g copy_bank_FF.asm

:: assemble code into binaries
ld65 -C ld65.cfg -o PRG_ROM.bin --dbgfile _debug.txt ^
    copy_bank_00.o ^
    copy_bank_01.o ^
    copy_bank_02.o ^
    copy_bank_FF.o

:: join header, prg and chr into a single ROM file
copy /B header.bin + PRG_ROM.bin + CHR_ROM.chr !twcs.nes

:: join listing files into a single file
copy /A copy_*.lst _listing.txt

:: delete leftover garbage and copies
del *.o + PRG_ROM.bin + copy_*

:: create a copy of .nl file for original ROM
if exist original_rom.nes (copy !twcs.nes.ram.nl original_rom.nes.ram.nl)

:: check file size and display corresponding message
setlocal enableextensions
FOR %%A IN ("!twcs.nes") DO set "size=%%~zA"
if %size% EQU 131088 (
    echo.
    echo ---------------------------------------------
    echo Done! Look for !twcs.nes file in your folder.
    if exist !twcs.bak (
        echo.
        fc /A /B /T !twcs.nes !twcs.bak > nul && echo Perfect match || echo Differences found 
        echo.
        copy !twcs.nes !twcs.bak
        echo Backup created
    )
    echo ---------------------------------------------
    timeout /T 10
) else (
    echo.
    echo --------------------------------------------------
    echo Something's wrong, check log for more information. 
    if exist !twcs.bak (
        echo.
        copy !twcs.bak !twcs.nes
        echo Backup restored
    )
    echo --------------------------------------------------
    echo.
    pause
)