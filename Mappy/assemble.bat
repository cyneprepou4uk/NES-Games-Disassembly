:: in order to enable "comparsion with previous version" and "restoring backup" functions
:: make 2 copies of <!mappy.nes> and rename them as <!mappy.old> and <!mappy.bak>

:: disable unnecessary console messages if possible
echo off

:: create a copy of previous compiled version
if exist !mappy.old (copy !mappy.nes !mappy.old)

:: launch preparation script and wait until finished
start /wait lua53 preparations.lua

:: -U = no need to use .import
:: -l = create listing file
:: -g = create debug file
ca65 -U -l -g copy_bank_FF.asm

:: assemble code into binaries
ld65 -C ld65.cfg -o PRG_ROM.bin --dbgfile _debug.txt ^
    copy_bank_FF.o

:: join header, prg and chr into a single ROM file
copy /B header.bin + PRG_ROM.bin + CHR_ROM.chr !mappy.nes

:: join listing files into a single file
copy /A copy_*.lst _listing.txt

:: delete leftover garbage and copies
del *.o + PRG_ROM.bin + copy_*

:: create a copy of .nl file for original ROM
if exist MAPPY_original.nes (copy !mappy.nes.ram.nl MAPPY_original.nes.ram.nl)

:: check file size and display corresponding message
setlocal enableextensions
FOR %%A IN ("!mappy.nes") DO set "size=%%~zA"
if %size% EQU 24592 (
    echo.
    echo ----------------------------------------------
    echo Done! Look for !mappy.nes file in your folder.
    if exist !mappy.bak (
        echo.
        C:\windows\system32\fc /A /B /T !mappy.nes !mappy.bak > nul && echo Perfect match || echo Differences found 
        echo.
        copy !mappy.nes !mappy.bak
        echo Backup created
    )
    echo ----------------------------------------------
    C:\windows\system32\timeout /T 10
) else (
    echo.
    echo --------------------------------------------------
    echo Something's wrong, check log for more information. 
    if exist !mappy.bak (
        echo.
        copy !mappy.bak !mappy.nes
        echo Backup restored
    )
    echo --------------------------------------------------
    echo.
    pause
)