-- list of files which need to be prepared before compilation.
-- the script will create temporary copies of these
-- files (their names will start with "copy_") and
-- assemble them instead of original ones.
local files_list = {
    "bank_FF.asm",
    "bank_ram.inc",
    "bank_val.inc",
}

-- name of your assembled ROM file,
-- needed to add a correct name to .nl file
local game_file_name = "_excitebike.nes"

-- name of your file with RAM variables,
-- in order to create .nl file for FCEUX
local ram_nl_file_name = "copy_bank_ram.inc"

-- regular expression to remove unnecessary for
-- ca65 assembler text on the left from my disassembler.
-- text example: C - - - - - 0x01D803 07:D7F3: AD F0 05 
-- this regex purposely doesn't cover 1 space symbol right before
-- the instructions, you can use ";" for commenting (deleting) them.
-- do not edit this regex unless you know what you're doing
local bzk_regex = ".%s.%s.%s.%s.%s.%s0x......%s..:....:%s..%s..%s..."

-- if you want to name lables and variables using
-- letters other than latin, set this option
-- to "true" and configure the table below
local replace_with_latin = false

-- convert configured symbols into latin symbols
-- inside files from files_list table.
-- you can use any UTF-8 symbols.
-- format: ["your_symbol"] = "latin_symbol"
local latin_symbols = {
    ["А"] = "A",    ["а"] = "a",
    ["Б"] = "B",    ["б"] = "b",
    ["В"] = "V",    ["в"] = "v",
    ["Г"] = "G",    ["г"] = "g",
    ["Д"] = "D",    ["д"] = "d",
    ["Е"] = "E",    ["е"] = "e",
    ["Ё"] = "E",    ["ё"] = "e",
    ["Ж"] = "J",    ["ж"] = "j",
    ["З"] = "Z",    ["з"] = "z",
    ["И"] = "I",    ["и"] = "i",
    ["Й"] = "I",    ["й"] = "i",
    ["К"] = "K",    ["к"] = "k",
    ["Л"] = "L",    ["л"] = "l",
    ["М"] = "M",    ["м"] = "m",
    ["Н"] = "N",    ["н"] = "n",
    ["О"] = "O",    ["о"] = "o",
    ["П"] = "P",    ["п"] = "p",
    ["Р"] = "R",    ["р"] = "r",
    ["С"] = "S",    ["с"] = "s",
    ["Т"] = "T",    ["т"] = "t",
    ["У"] = "Y",    ["у"] = "y",
    ["Ф"] = "F",    ["ф"] = "f",
    ["Х"] = "H",    ["х"] = "h",
    ["Ц"] = "C",    ["ц"] = "c",
    ["Ч"] = "CH",   ["ч"] = "ch",
    ["Ш"] = "SH",   ["ш"] = "sh",
    ["Щ"] = "SH",   ["щ"] = "sh",
    ["Ъ"] = "b",    ["ъ"] = "b",
    ["Ы"] = "bI",   ["ы"] = "bI",
    ["Ь"] = "b",    ["ь"] = "b",
    ["Э"] = "E",    ["э"] = "e",
    ["Ю"] = "U",    ["ю"] = "u",
    ["Я"] = "Ja",   ["я"] = "ja",
}



--[[ *** MAIN SCRIPT STARTS HERE *** --]]
print("*** Preparing files for the assembler ***\n")



-- potential file error subroutine like "can't access file" or something
local function PrintError(err)
    while true do
        print("\n"..err.."\nClose the console and fix the problem")
        io.read()
    end
end



-- store text from the file. defined here
-- to make it visible in ReplaceSymbols
local text



local function ReplaceSymbols()
    -- if configured
    if replace_with_latin == true then
        -- replace original (i) symbol with latin (k) symbol
        for i, k in pairs(latin_symbols) do
            text = string.gsub(text, i, k)
        end
    end
end



-- execute this loop for each file from the list
for _, f in ipairs(files_list) do
    print("Working on "..f.." file...")
    
    -- open next file and check for errors
    local file, err = io.open(f, "r")
    if err ~= nil then PrintError(err) end
    
    -- read all text and close the file
    text = file:read("*all")
    file:close()
    
    -- replace unnecessary text on the left with 3 spaces
    text = string.gsub(text, bzk_regex, "   ")
    
    -- replace with latin symbols if needed
    ReplaceSymbols()
    
    -- create a copy of the file and check for errors
    local file, err = io.open("copy_"..f, "w+")
    if err ~= nil then PrintError(err) end
    
    -- paste polished text into the copy and close the file
    io.output(file)
    io.write(text)
    io.flush(file)
    io.close(file)
end



print("\n*** Creating .nl RAM file for FCEUX ***\n")

-- open RAM file from the disassembly and check for errors
local inc_file, err = io.open(ram_nl_file_name, "r")
if err ~= nil then PrintError(err) end

-- create new .nl file and check for errors
local nl_file, err = io.open(game_file_name..".ram.nl", "w+")
if err ~= nil then PrintError(err) end

-- set output to this file
io.output(nl_file)

-- a table to store variables
local nl_tbl = {}

-- loop through all lines
while true do
    -- read next line
    local line = inc_file:read("*line")
    
    -- exit if no lines left
    if line == nil then
        io.close(inc_file)
        break
    end
    
    -- remove spaces from the line, makes searching much less complicated
    line = string.gsub(line, " ", "")
    
    -- search for "=$" symbols position, which defines the variable
    local define_start, _ = string.find(line, "=%$")
    
    -- search for ";" symbol position (comments)
    local comment_start, _ = string.find(line, ";")
    
    -- check if both positions exist.
    -- if comments not exist, then define_start is good to go
    -- if definition not exist, then it will remain nil
    if comment_start ~= nil and define_start ~= nil then
        -- if comment symbol is located before definition,
        -- then there is no actual definition on this line.
        -- replace it with nil
        if comment_start < define_start then define_start = nil end
    end
    
    -- this stores defined address
    local address = ""
    
    -- if this line really contains address definition
    if define_start ~= nil then
        -- prepare position after definition symbols
        local i = define_start + 2
        
        -- loop to test all symbols which define address value
        while true do
            -- read next symbol
            local b = string.sub(line, i, i)
            
            -- quit if it's not a hex symbol
            if tonumber(b, 16) == nil then break end
            
            -- otherise combine with other symbols
            address = address..b
            
            -- prepare next position
            i = i + 1
        end
    end
    
    -- check if the whole address is definitely a hex number
    address = tonumber(address, 16)
    
    -- if it's a hex number
    if address ~= nil then
        -- add everything from the start of the line as a name of
        -- the variable, while address is a value of that variable
        nl_tbl[address] = string.sub(line, 0, define_start - 1)
    end
end

-- this stores line for .nl file
local str

-- this stores definition for .nl file
local val

-- go through all RAM addresses
for i = 0x0000, 0x7FFF do
    -- if address is defined
    if nl_tbl[i] ~= nil then
        -- convert to 4 hex digits
        val = string.format("%04X", i)
        -- if it's not a default "ram_xxxx" name
        if nl_tbl[i] ~= "ram_"..val then
            -- create a proper line
            -- format: $addr#name#
            str = "$"..val.."#"..nl_tbl[i].."#\n"
            -- remove "ram_" text if exist
            str = string.gsub(str, "ram_", "")
            -- write line to the file
            io.write(str)
        end
    end
end

-- flush and close .nl file
io.flush(nl_file)
io.close(nl_file)

-- uncomment the following line in order to pause the console after the script is complete
--io.read()