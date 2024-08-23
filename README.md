# NES Games Disassembly

Each source code is equal to the original ROM, compilable and editable.

All of them were made with my [BZK 6502 Disassembler](https://github.com/cyneprepou4uk/BZK-6502-Disassembler) scripts.

You can contact me at [RHDN](https://www.romhacking.net/forum/index.php?topic=32220.0) topic.



## How to build a disassembly

### Windows

No special requirements. Just launch `assemble.bat` and wait until it's done.

### Any other OS

Try using `sh assemble.sh` in terminal instead. All credits goes to [gb-2312](https://github.com/gb-2312).

Do not delete or edit `_scripts` and `_install_packages` folders, unless you know how it works.



## Syntax highlighting

Use `syntax_6502.xml` to highlight code in [Notepad++](https://notepad-plus-plus.org/).

Go to Language -> User Defined Language -> Define your language -> Import.



## How to edit a disassembly

Important comments are marked with `bzk` text. Start with deleting garbage to free up some space.

And don't worry about stuff like `C - - - - - 0x00009C 00:C08C: A9 00     LDA #$00`.

`preparations.lua` script will take care of it before compilation. You just write new code as usual, like this `LDA #$00`.

You can manually delete this text with `.\s.\s.\s.\s.\s.\s0x0........:....:\s..\s..\s..\s\s` regex if necessary.



## Games list (GoodNES) + CRC32

### Disassembled
* Adventure Island (U) [!] `B78C09A2`
* Battle City (J) [!] `F599A07E`
* Bugs Bunny Crazy Castle, The (U) [!] `DB0C3656`
* Castlevania III - Dracula's Curse (U) [!] `7CC9C669`
* Contra Force (U) [!] `83D69922`
* Danny Sullivan's Indy Heat (U) [!] `311B5A58`
* Double Dragon II - The Revenge (J) `8CF69E4B`
* Dr. Mario (JU) (PRG0) [!] `B1F7E3E9`
* Excitebike (JU) [!] `2BB33C69`
* Felix the Cat (U) [!] `0639E88E`
* Ice Climber (J) [!] `80C41616`
* Kunio-kun no Nekketsu Soccer League (J) [!] `61C27F7B`
* Legend of Zelda, The (U) (PRG0) [!] `D7AE93DF`
* Little Mermaid, The (U) [!] `08EB97DB`
* Mappy (J) [!] `3F0E8E0A`
* Nuts & Milk (J) [!] `11879FE8`
* Pac-Man (J) (V1.1) [!] `D747B639`
* RoboCop 3 (U) [!] `FBBB58A6`
* Solstice - The Quest for the Staff of Demnos (U) [!] `1D60732E`
* Son Son (J) [!] `F7C8F42D`
* Street Fighter III (9 Fighter) (Unl) `22CDD2F6`
* Super C (U) [!] `1AC846F0`
* Tecmo World Cup Soccer (J) [!] `19F24980`
* Tennis (JU) [!] `5F457C00`
* Yie Ar Kung-Fu (J) (V1.4) [!] `0D526208`



### WIP
* Battletoads & Double Dragon - The Ultimate Team (U) [!] `53B02F3D`
* Galaga - Demons of Death (U) [!] `E36D5991`
* Ninja Gaiden III - The Ancient Ship of Doom (U) [!] `BABD39FA`
* R.C. Pro-Am II (U) [!] `03DB5562`
* River City Ransom (U) [!] `C3508F7E`
* Super Mario Bros. (W) [!] `3337EC46`
* Urban Champion (W) [!] `0770CDAA`



### Planning
* Balloon Fight (J) [!] `A0DABE0A`
* Bubble Bobble (U) [!] `D3A91B41`
* Ghosts 'N Goblins (U) [!] `87ED54AA`
* Kinnikuman - Muscle Tag Match (J) (PRG0) [!] `C296C8CE`
* Mighty Final Fight (U) [!] `15EB0BEE`
* Mitsume ga Tooru (J) [!] `E27EC1EC`
* Popeye (JU) (PRG0) [!] `DE1D762F`
* Tetris (Tengen) [!] `88F071C3`
