:: in order to enable "comparsion with previous version" and "restoring backup" functions
:: make 2 copies of <!dd2.nes> and rename them as <!dd2.old> and <!dd2.bak>

:: disable unnecessary console messages if possible
echo off

:: create a copy of previous compiled version
if exist !dd2.old (copy !dd2.nes !dd2.old)

:: launch preparation script and wait until finished
start /wait lua53 preparations.lua

:: -U = no need to use .import
:: -l = create listing file
:: -g = create debug file
ca65 -U -l copy_bank_00.lst  -g copy_bank_00.asm
ca65 -U -l copy_bank_01.lst  -g copy_bank_01.asm
ca65 -U -l copy_bank_02.lst  -g copy_bank_02.asm
ca65 -U -l copy_bank_03.lst  -g copy_bank_03.asm
ca65 -U -l copy_bank_04.lst  -g copy_bank_04.asm
ca65 -U -l copy_bank_05.lst  -g copy_bank_05.asm
ca65 -U -l copy_bank_06.lst  -g copy_bank_06.asm
ca65 -U -l copy_bank_FF.lst  -g copy_bank_FF.asm
ca65 -U -l copy_bank_ppu.lst -g copy_bank_ppu.asm

:: assemble code into binaries
ld65 -C ld65.cfg -o PRG_ROM.bin --dbgfile _debug.txt ^
    copy_bank_00.o ^
    copy_bank_01.o ^
    copy_bank_02.o ^
    copy_bank_03.o ^
    copy_bank_04.o ^
    copy_bank_05.o ^
    copy_bank_06.o ^
    copy_bank_FF.o ^
    copy_bank_ppu.o

:: split PRG_ROM.bin into actual PRG_ROM.bin and CHR_screens.chr
start /wait lua53 split.lua

:: join header, prg and chr into a single ROM file
copy /B header.bin + PRG_ROM.bin + CHR_ROM.chr + CHR_screens.chr !dd2.nes

:: join listing files into a single file
copy /A copy_*.lst _listing.txt

:: delete leftover garbage and copies
del *.o + PRG_ROM.bin + copy_*

:: create a copy of .nl file for original ROM
if exist original_rom.nes (copy !dd2.nes.ram.nl original_rom.nes.ram.nl)

:: check file size and display corresponding message
setlocal enableextensions
FOR %%A IN ("!dd2.nes") DO set "size=%%~zA"
if %size% EQU 262160 (
    echo.
    echo -----------------------------------------------
    echo Done! Look for !dd2.nes file in your folder.
    if exist !dd2.bak (
        echo.
        fc /A /B /T !dd2.nes !dd2.bak > nul && echo Perfect match || echo Differences found 
        echo.
        copy !dd2.nes !dd2.bak
        echo Backup created
    )
    echo -----------------------------------------------
    echo Script will close automatically in 10 seconds.
    timeout /T 10 > nul
) else (
    echo.
    echo --------------------------------------------------
    echo Something's wrong, check log for more information. 
    if exist !dd2.bak (
        echo.
        copy !dd2.bak !dd2.nes
        echo Backup restored
    )
    echo --------------------------------------------------
    echo.
    pause
)