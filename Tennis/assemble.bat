:: по возможности отключить лишние уведомления в консоли
echo off

:: сделать копию прошлой скомпилированной версии
if exist !tennis.old (copy !tennis.nes !tennis.old)

:: запустить перевод символов и дождаться выполнения скрипта
start /wait lua53 preparations.lua

:: -U = нет необходимости писать .import label
:: -l = создать файл листинга для этого банка
:: -g = создать файл дебага для этого банка
ca65 -U -l copy_bank_FF.lst -g copy_bank_FF.asm

:: компиляция кода в бинарники
ld65 -C ld65.cfg --dbgfile _debug.txt ^
    copy_bank_FF.o

:: сбор бинарников, хедера и chr в общий ром
copy /B header.bin + ^
    copy_bank_FF.bin + CHR_ROM.chr !tennis.nes

:: удалить остаточный хлам и копии
del *.o + copy_*.bin + copy_*.asm + copy_*.inc + temp_*.asm + temp_*.inc

:: объединить файлы листинга в один файл
copy /A copy_*.lst _listing.txt

:: удалить копии листинга
del copy_*.lst

:: проверить размер файла и вывести нужное сообщение
setlocal enableextensions
FOR %%A IN ("!tennis.nes") DO set "size=%%~zA"
if %size% EQU 24592 (
    echo.
    echo ----------------------------------------------
    echo Done! Look for !tennis.nes file in your folder.
    if exist !tennis.bak (
        echo.
        fc /A /B /T !tennis.nes !tennis.bak > nul && echo Perfect match || echo Differences found 
        echo.
        copy !tennis.nes !tennis.bak
        echo Backup created
    )
    echo ----------------------------------------------
    echo Script will close automatically in 10 seconds.
    timeout /T 10 > nul
) else (
    echo.
    echo --------------------------------------------------
    echo Something's wrong, check log for more information. 
    if exist !tennis.bak (
        echo.
        copy !tennis.bak !tennis.nes
        echo Backup restored
    )
    echo --------------------------------------------------
    echo.
    pause
)