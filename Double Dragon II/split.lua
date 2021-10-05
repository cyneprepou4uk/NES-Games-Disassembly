--this game has some data for static screens inside CHR ROM
--this data is located inside bank_ppu.asm, and has some labels in it
--in order to compile ROM correctly, at first we assemble everything like usual into a single PRG_ROM.bin
--and then separate that PRG_ROM.bin into PRG and CHR, making 2 files



time = os.clock()       --record script execution time



--вспомогательная подпрограмма для вывода возможных ошибок при работе с файлами
--potential file error subroutine like "can't access file" or something
function PrintError(err)
    print("\n"..err.."\nPress Enter to exit")
    io.read()
end



print("Splinning files...")



local size_prg = 0x20000
local size_chr = 0x03000
local name_prg = "PRG_ROM.bin"
local name_chr = "CHR_screens.chr"



--open main PRG file
local file, err = io.open(name_prg, "rb")
if err ~= nil then PrintError(err) end



--read all bytes from main PRG file
local data = file:read("*all")
io.close(file)



--convert all bytes into array
local bytes = {}
for i = 1, string.len(data) do
    bytes[i] = string.sub(data, i, i)
end



--create new PRG file
local file, err = io.open(name_prg, "wb")
io.output(file)



--copy bytes to PRG
for i = 1, size_prg do
    io.write(bytes[i])
end
io.flush(file)
io.close(file)



--create new CHR file
local file, err = io.open(name_chr, "wb")
io.output(file)



--copy bytes to CHR
for i = size_prg + 1, size_prg + size_chr do
    io.write(bytes[i])
end
io.flush(file)
io.close(file)



print(string.format("\nScript finished in "..string.format("%.3f", os.clock() - time).." seconds"))
--io.read()             --uncomment this line in order to pause the console after script is complete