:: in order to enable "comparsion with previous version" and "restoring backup" functions
:: make 2 copies of <!battle.nes> and rename them as <!battle.old> and <!battle.bak>

:: disable unnecessary console messages if possible
echo off

:: create a copy of previous compiled version
if exist !battle.old (copy !battle.nes !battle.old)

:: launch preparation script and wait until finished
start /wait lua53 preparations.lua

:: -U = no need to use .import
:: -l = create listing file
:: -g = create debug file
ca65 -U -l copy_bank_FF.lst -g copy_bank_FF.asm

:: assemble code into binaries
ld65 -C ld65.cfg -o PRG_ROM.bin --dbgfile _debug.txt ^
    copy_bank_FF.o

:: join header, prg and chr into a single ROM file
copy /B header.bin + PRG_ROM.bin + CHR_ROM.chr !battle.nes

:: join listing files into a single file
copy /A copy_*.lst _listing.txt

:: delete leftover garbage and copies
del *.o + PRG_ROM.bin + copy_*

:: create a copy of .nl file for original ROM
if exist original_rom.nes (copy !battle.nes.ram.nl original_rom.nes.ram.nl)

:: check file size and display corresponding message
setlocal enableextensions
FOR %%A IN ("!battle.nes") DO set "size=%%~zA"
if %size% EQU 24592 (
    echo.
    echo -----------------------------------------------
    echo Done! Look for !battle.nes file in your folder.
    if exist !battle.bak (
        echo.
        fc /A /B /T !battle.nes !battle.bak > nul && echo Perfect match || echo Differences found 
        echo.
        copy !battle.nes !battle.bak
        echo Backup created
    )
    echo -----------------------------------------------
    timeout /T 10
) else (
    echo.
    echo --------------------------------------------------
    echo Something's wrong, check log for more information. 
    if exist !battle.bak (
        echo.
        copy !battle.bak !battle.nes
        echo Backup restored
    )
    echo --------------------------------------------------
    echo.
    pause
)