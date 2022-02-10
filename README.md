# NES Games Disassembly

Each source code is equal to the original ROM, compilable and editable.



## How to build

No special requirements (for Windows users). Just launch `assemble.bat` and wait until it's done.

If you have any other OS, try using `sh assemble.sh` in terminal instead. All credits goes to [gb-2312](https://github.com/gb-2312).

**Please do not ~~delete~~ or edit folders `_scripts` and `_install_packages`, unless you know how it works**.





## How to edit

Use `syntax_6502.xml` to highlight code in [Notepad++](https://notepad-plus-plus.org/).

Go to Language -> User Defined Language -> Define your language -> Import.

My personal comments are marked with `bzk` text. Start with deleting garbage to free up some space.

And don't worry about stuff like `C - - - - - 0x00009C 00:C08C: A9 00     LDA #$00`.

Lua script will take care of it before compilation. You just write new code as usual, like this `LDA #$00`.



## Current games list (GoodNES)
* F599A07E Battle City (J) [!]
* DB0C3656 Bugs Bunny Crazy Castle, The (U) [!]
* 8CF69E4B Double Dragon II - The Revenge (J)
* 61C27F7B Kunio-kun no Nekketsu Soccer League (J) [!]
* D7AE93DF Legend of Zelda, The (U) (PRG0) [!]
* 3F0E8E0A Mappy (J) [!]
* 11879FE8 Nuts & Milk (J) [!]
* 1D60732E Solstice - The Quest for the Staff of Demnos (U) [!]
* F7C8F42D Son Son (J) [!]
* 22CDD2F6 Street Fighter III (9 Fighter) (Unl)
* 19F24980 Tecmo World Cup Soccer (J) [!]
* 0D526208 Yie Ar Kung-Fu (J) (V1.4) [!]



## WIP
* Castlevania III - Dracula's Curse (U) [!]
* Danny Sullivan's Indy Heat (U) [!]
* Dr. Mario (JU) (PRG0) [!]
* Ice Climber (J) [!]
* Ninja Gaiden III - The Ancient Ship of Doom (U) [!]
* Super Mario Bros. (W) [!]
* Tennis (JU) [!]
* Urban Champion (W) [!]



## Planning
* Balloon Fight (J) [!]
* Tetris (Tengen) [!]



## RHDN topic
https://www.romhacking.net/forum/index.php?topic=32220.0
