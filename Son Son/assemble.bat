:: in order to enable "comparsion with previous version" and "restoring backup" functions
:: make 2 copies of <!son.nes> and rename them as <!son.old> and <!son.bak>

:: disable unnecessary console messages if possible
echo off

:: create a copy of previous compiled version
if exist !son.old (copy !son.nes !son.old)

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
copy /B header.bin + PRG_ROM.bin + CHR_ROM.chr !son.nes

:: join listing files into a single file
copy /A copy_*.lst _listing.txt

:: delete leftover garbage and copies
del *.o + PRG_ROM.bin + copy_*

:: create a copy of .nl file for original ROM
if exist SON_original.nes (copy !son.nes.ram.nl SON_original.nes.ram.nl)

:: check file size and display corresponding message
setlocal enableextensions
FOR %%A IN ("!son.nes") DO set "size=%%~zA"
if %size% EQU 40976 (
    echo.
    echo --------------------------------------------
    echo Done! Look for !son.nes file in your folder.
    if exist !son.bak (
        echo.
        C:\windows\system32\fc /A /B /T !son.nes !son.bak > nul && echo Perfect match || echo Differences found 
        echo.
        copy !son.nes !son.bak
        echo Backup created
    )
    echo --------------------------------------------
    C:\windows\system32\timeout /T 10
) else (
    echo.
    echo --------------------------------------------------
    echo Something's wrong, check log for more information. 
    if exist !son.bak (
        echo.
        copy !son.bak !son.nes
        echo Backup restored
    )
    echo --------------------------------------------------
    echo.
    pause
)