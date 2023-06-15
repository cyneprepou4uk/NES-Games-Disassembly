local time = os.clock()       --record script execution time


--список файлов для подготовки перед конвертацией
--list of files which need to be prepared before compilation
local files_list = {
    "bank_FF.asm",
    "bank_ram.inc",
}

--конвертация испанских символов в английские
--convert SPA characters in names of labels and variables into ENG
--[[
local english = {
    "Á",    "A",        "á",    "a",
    "É",    "E",        "é",    "e",
    "Í",    "I",        "í",    "i",
    "Ñ",    "N",        "ñ",    "n",
    "Ó",    "O",        "ó",    "o",
    "Ú",    "U",        "ú",    "u",
    "Ü",    "U",        "ü",    "u",
}
--]]



--вспомогательная подпрограмма для вывода возможных ошибок при работе с файлами
--potential file error subroutine like "can't access file" or something
local function PrintError(err)
    print("\n"..err.."\nPress Enter to exit")
    io.read()
end



--[[ *** MAIN SCRIPT STARTS HERE *** --]]
print("*** Preparing files for the assembler ***\n")

for _, f in ipairs(files_list) do                               --execute this loop for each file from the list
    print("Working on "..f.." file...")
    
    local file, err = io.open(f, "r")                           --open next file
    if err ~= nil then PrintError(err) end                      --check for errors during opening
    local text = file:read("*all")                              --read all text
    file:close()                                                --close file
    
    text = string.gsub(text, ".%s.%s.%s.%s.%s.%s0x......%s..:....:...........", "\t")
    
    --[[
    local i = 1
    while true do
        if english[i] == nil then break end
        text = string.gsub(text, english[i], english[i + 1])
        i = i + 2
    end
    --]]
    
    local file, err = io.open("copy_"..f, "w+")
    if err ~= nil then PrintError(err) end 
    
    io.output(file)
    io.write(text)
    io.flush(file)
    io.close(file)
end




--создание файла комментов для FCEUX
--чтение перевведенного на английский файла с адресами
local inc_file, err = io.open("copy_bank_ram.inc", "r")
if err ~= nil then PrintError(err) end

local nl_file, err = io.open("!battle.nes.ram.nl", "w+")
if err ~= nil then PrintError(err) end
io.output(nl_file)

local tbl = {}
while true do
    local line = inc_file:read("*line")
    if line == nil then
        io.close(inc_file)
        break
    end
    
    --удалить все пробелы
    line = string.gsub(line, " ", "")
    local find_start, find_end = string.find(line, "=%$")
    local f_start, _ = string.find(line, ";")
    --найти символ коммента
    if f_start ~= nil and find_start ~= nil then
        if f_start < find_start then
            --если коммент существует и находится до "=$" тогда притвориться что адреса не существует
            find_start = nil
        end
    end
    
    local address = ""
    if find_start ~= nil then
        local i = find_start + 2
        while true do
            --тест всех символов после "=$", проверка на то что это hex числа, получаем строку из чисел
            local byte = ""
            byte = string.sub(line, i, i)
            test = tonumber(byte, 16)
            if test == nil then break end
            address = address..byte
            i = i + 1
        end
    end
    
    --проверка что итоговое чисто стопудово hex число, в таком случае создать коммент
    local result = tonumber(address, 16)
    if result ~= nil then
        tbl[result + 1] = string.sub(line, 0, find_start - 1)
    end
end

--запись комментов, если это не примитивный ram_ коммент, а также если это не con_ коммент
for i = 0x0, 0x7FFF, 1 do
    if tbl[i + 1] ~= nil then
        if tbl[i + 1] ~= "ram_"..string.upper(string.format("%04x", i)) then
            if string.find(tbl[i + 1], "con_") == nil then
                local str = "$"..string.upper(string.format("%04x", i)).."#"..tbl[i + 1].."#\n"
                str = string.gsub(str, "ram_", "")
                io.write(str)
            end
        end
    end
end

io.flush(nl_file)
io.close(nl_file)



print(string.format("\nScript finished in "..string.format("%.3f", os.clock() - time).." seconds"))
--io.read()             --uncomment this line in order to pause the console after script is complete