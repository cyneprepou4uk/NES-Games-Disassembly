:: in order to enable "comparsion with previous version" and "restoring backup" functions
:: make 2 copies of <!ice.nes> and rename them as <!ice.old> and <!ice.bak>

:: disable unnecessary console messages if possible
echo off

:: create a copy of previous compiled version
if exist !ice.old (copy !ice.nes !ice.old)

:: launch preparation script and wait until finished
start /wait lua53 preparations.lua

:: -U = no need to use .import
:: -l = create listing file
:: -g = create debug file
ca65 -U -l copy_bank_FF.lst  -g copy_bank_FF.asm
ca65 -U -l copy_bank_ppu.lst -g copy_bank_ppu.asm

:: assemble code into binaries
ld65 -C ld65.cfg -o PRG_ROM.bin --dbgfile _debug.txt ^
    copy_bank_FF.o ^
    copy_bank_ppu.o

:: join header and prg into a single ROM file
copy /B header.bin + PRG_ROM.bin !ice.nes

:: join listing files into a single file
copy /A copy_*.lst _listing.txt

:: delete leftover garbage and copies
del *.o + PRG_ROM.bin + copy_*

:: create a copy of .nl file for original ROM
if exist original_rom.nes (copy !ice.nes.ram.nl original_rom.nes.ram.nl)

:: check file size and display corresponding message
setlocal enableextensions
FOR %%A IN ("!ice.nes") DO set "size=%%~zA"
if %size% EQU 24592 (
    echo.
    echo ----------------------------------------------
    echo Done! Look for !ice.nes file in your folder.
    if exist !ice.bak (
        echo.
        fc /A /B /T !ice.nes !ice.bak > nul && echo Perfect match || echo Differences found 
        echo.
        copy !ice.nes !ice.bak
        echo Backup created
    )
    echo ----------------------------------------------
    timeout /T 10
) else (
    echo.
    echo --------------------------------------------------
    echo Something's wrong, check log for more information. 
    if exist !ice.bak (
        echo.
        copy !ice.bak !ice.nes
        echo Backup restored
    )
    echo --------------------------------------------------
    echo.
    pause
)