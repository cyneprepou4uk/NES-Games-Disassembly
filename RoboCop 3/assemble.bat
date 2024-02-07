:: you can create several .bat files with different config



:: disable unnecessary console messages
@echo off



:: CONFIG SECTION (start)

:: name of the assembled ROM file (without extension).
:: I prefer to start with "_" symbol in the name, so that
:: the file will be at the top inside the folder.
:: make sure to use the same name in preparations.lua
set "file_name=_robocop_3"

:: size of your ROM file in bytes (decimal),
:: used for checking if assembled file is correct
set "file_size=262160"

:: SHA-1 checksum of the original ROM, used for checking if
:: my disassembly is correct, but doesn't affect assembling.
:: lowercase is allowed
set "sha1_original=77BAB039B13A974A46686A7647C0AFFD00B4A9AD"

:: set to 0 if you want to create debug and listing files.
:: this can slow down assembling a little bit, but these
:: files (especially listing) can be useful for debugging.
:: default is 1
set "fast_assembly=1"

:: used only if fast_assembly=0
:: I prefer to start with "z_" in the name, so that
:: these files will be at the bottom inside the folder.
set "listing_name=z_listing.asm"
set "debug_name=z_debug.txt"

:: set to 1 if you want to create a .bak copy of your ROM after each successful assembling.
:: ROM file will be replaced with a .bak copy if assembling was unsuccessful.
:: default is 0
set "file_backup=0"

:: set to 1 if you want to check for changes between assembled and .old copy.
:: you should hear 3 beeps (or at least some noise) if there were any changes.
:: I personally use it to safely add comments to the disassembly when
:: making hacks, to make sure I didn't accidently change anything.
:: default is 0
set "file_diff=0"

:: CONFIG SECTION (end)



:: MAIN SCRIPT (start)

:: EnableDelayedExpansion = for checking SHA-1 checksum
:: EnableExtensions = for checking file size
setlocal EnableDelayedExpansion EnableExtensions

:: Hello message
echo *** Assembling into "%file_name%.nes".
echo.
echo.
echo.

:: launch preparation script and wait until finished
start /wait lua53 preparations.lua

:: -U = no need to use .import
:: -l = create listing file
:: -g = create debug file
if %fast_assembly% equ 1 (
    ca65 -U copy_bank_00.asm
    ca65 -U copy_bank_01.asm
    ca65 -U copy_bank_02.asm
    ca65 -U copy_bank_03.asm
    ca65 -U copy_bank_04.asm
    ca65 -U copy_bank_05.asm
    ca65 -U copy_bank_06.asm
    ca65 -U copy_bank_FF.asm
) else (
    ca65 -U -l copy_bank_00.lst -g copy_bank_00.asm
    ca65 -U -l copy_bank_01.lst -g copy_bank_01.asm
    ca65 -U -l copy_bank_02.lst -g copy_bank_02.asm
    ca65 -U -l copy_bank_03.lst -g copy_bank_03.asm
    ca65 -U -l copy_bank_04.lst -g copy_bank_04.asm
    ca65 -U -l copy_bank_05.lst -g copy_bank_05.asm
    ca65 -U -l copy_bank_06.lst -g copy_bank_06.asm
    ca65 -U -l copy_bank_FF.lst -g copy_bank_FF.asm
)

:: assemble code into binaries
if %fast_assembly% equ 1 (
    ld65 -C ld65.cfg -o PRG_ROM.bin ^
        copy_bank_00.o ^
        copy_bank_01.o ^
        copy_bank_02.o ^
        copy_bank_03.o ^
        copy_bank_04.o ^
        copy_bank_05.o ^
        copy_bank_06.o ^
        copy_bank_FF.o
) else (
    ld65 -C ld65.cfg -o PRG_ROM.bin --dbgfile %debug_name% ^
        copy_bank_00.o ^
        copy_bank_01.o ^
        copy_bank_02.o ^
        copy_bank_03.o ^
        copy_bank_04.o ^
        copy_bank_05.o ^
        copy_bank_06.o ^
        copy_bank_FF.o
)

:: join header, PRG and CHR (if exists) into a single ROM file
copy /B header.bin + PRG_ROM.bin + CHR_ROM.chr %file_name%.nes > nul

:: join listing files into a single file
if %fast_assembly% equ 0 (
    copy /A copy_*.lst %listing_name% > nul
)

:: delete leftover garbage and copies
del *.o + PRG_ROM.bin + copy_*

:: final messages and stuff
echo.
echo.
set "error=0"
call :CheckForErrors

:: 
if %error% equ 0 (
    echo.
    echo *** Assembled successfully.
    call :CheckSHA1
    call :RestoreBackup
    echo.
    echo *** The console will automatically close after 30 seconds.
    timeout /T 30 > nul
) else (
    echo.
    :: if no ca65 errors, then perhaps file size is incorrect
    echo *** Error: something's wrong, see above for more info. 
    echo.
    call :RestoreBackup
    pause
)

endlocal

:: the end
goto :EOF

:: MAIN SCRIPT (end)



:CheckForErrors
:: check current file size
for %%A in ("%file_name%.nes") do set "size=%%~zA"

:: verify file size
if %size% neq %file_size% set "error=1"

:: the end
exit /b



:RestoreBackup
:: create backups if no errors
if %error% equ 0 (
    :: create .bak backup if configured
    if %file_backup% equ 1 (
        :: check if ROM exists (just in case)
        if exist %file_name%.nes (
            :: create .bak backup
            copy %file_name%.nes %file_name%.bak > nul
            echo *** Backup "%file_name%.bak" was created.
        ) else (
            :: this should never happen
            echo *** Warning: unable to create "%file_name%.bak".
        )
    )
    :: create .old if configured
    if %file_diff% equ 1 (
        :: check if ROM exists (just in case)
        if exist %file_name%.nes (
            :: check if backup file exists
            if exist %file_name%.old (
                :: check for differences
                fc /A /B /T %file_name%.nes %file_name%.old > nul && echo *** Perfect match with the previous version. || echo *** Differences found compared to the previous version. 
            ) else (
                :: could be no backup yet if it's the first time
                echo *** Warning: "%file_name%.old" for comparsion was not found yet.
            )
            :: create .old backup
            copy %file_name%.nes %file_name%.old > nul
            echo *** Backup "%file_name%.old" was created.
        ) else (
            :: this should never happen
            echo *** Warning: unable to create "%file_name%.old".
        )
    )
) else (
:: restore backup if there were errors
    if %file_backup% equ 1 (
        :: check if ROM exists (just in case)
        if exist %file_name%.nes (
            :: restore .bak backup
            copy %file_name%.bak %file_name%.nes > nul
            echo *** Backup "%file_name%.bak" was restored.
        ) else (
            :: this should never happen
            echo *** Warning: "%file_name%.bak" for backup was not found.
        )
    )
)

:: the end
exit /b




:CheckSHA1
:: get SHA-1 from the file
for /f "tokens=*" %%a in ('certutil -hashfile "%file_name%.nes" SHA1 ^| find /v ":" ^| find /v "CertUtil"') do (
    set "sha1_current=%%a"
)

:: replace symbols
set "sha1_current=!sha1_current: =!"
set "sha1_current=!sha1_current:~0,40!"

:: convert to uppercase
set "sha1_current=!sha1_current:a=A!"
set "sha1_current=!sha1_current:b=B!"
set "sha1_current=!sha1_current:c=C!"
set "sha1_current=!sha1_current:d=D!"
set "sha1_current=!sha1_current:e=E!"
set "sha1_current=!sha1_current:f=F!"

:: convert to uppercase
set "sha1_original=!sha1_original:a=A!"
set "sha1_original=!sha1_original:b=B!"
set "sha1_original=!sha1_original:c=C!"
set "sha1_original=!sha1_original:d=D!"
set "sha1_original=!sha1_original:e=E!"
set "sha1_original=!sha1_original:f=F!"

:: verify checksum
if "%sha1_current%"=="%sha1_original%" (
    echo.
    echo *** Original SHA-1 checksum detected.
    echo.
)

:: the end
exit /b