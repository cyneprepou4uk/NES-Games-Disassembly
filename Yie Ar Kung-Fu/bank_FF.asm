.segment "BANK_FF"
.include "bank_ram.inc"
.include "bank_val.inc"
; 0x000010-0x00400F



; bzk garbage
- D 2 - - A 0x000010 00:C000: 52        .byte "RC802 1.4 850430"



vec_C010_RESET:
C - - - - - 0x000020 00:C010: D8        CLD
bra_C011_loop:
C - - - - - 0x000021 00:C011: AD 02 20  LDA $2002
C - - - - - 0x000024 00:C014: 10 FB     BPL bra_C011_loop
C - - - - - 0x000026 00:C016: 78        SEI
C - - - - - 0x000027 00:C017: A9 00     LDA #$00
C - - - - - 0x000029 00:C019: 8D 00 20  STA $2000
C - - - - - 0x00002C 00:C01C: 8D 01 20  STA $2001
C - - - - - 0x00002F 00:C01F: A2 FF     LDX #$FF
C - - - - - 0x000031 00:C021: 9A        TXS
C - - - - - 0x000032 00:C022: A2 10     LDX #$10
bra_C024_loop:
C - - - - - 0x000034 00:C024: 8A        TXA
C - - - - - 0x000035 00:C025: DD EF 07  CMP ram_reset_check - 1,X
C - - - - - 0x000038 00:C028: D0 03     BNE bra_C02D_check_failed
- - - - - - 0x00003A 00:C02A: CA        DEX
- - - - - - 0x00003B 00:C02B: D0 F7     BNE bra_C024_loop
bra_C02D_check_failed:
C - - - - - 0x00003D 00:C02D: 86 82     STX ram_0082
C - - - - - 0x00003F 00:C02F: A0 EF     LDY #$EF
C - - - - - 0x000041 00:C031: A9 07     LDA #$07
C - - - - - 0x000043 00:C033: 85 81     STA ram_0081
C - - - - - 0x000045 00:C035: A9 00     LDA #$00
C - - - - - 0x000047 00:C037: 85 80     STA ram_0080
bra_C039_loop:
C - - - - - 0x000049 00:C039: 91 80     STA (ram_0080),Y
C - - - - - 0x00004B 00:C03B: 88        DEY
C - - - - - 0x00004C 00:C03C: D0 FB     BNE bra_C039_loop
C - - - - - 0x00004E 00:C03E: C6 81     DEC ram_0081
C - - - - - 0x000050 00:C040: 30 11     BMI bra_C053
C - - - - - 0x000052 00:C042: D0 F5     BNE bra_C039_loop
C - - - - - 0x000054 00:C044: A6 82     LDX ram_0082
C - - - - - 0x000056 00:C046: D0 F1     BNE bra_C039_loop
- - - - - - 0x000058 00:C048: A2 60     LDX #$60
bra_C04A_loop:
- - - - - - 0x00005A 00:C04A: 95 00     STA ram_0000,X
- - - - - - 0x00005C 00:C04C: E8        INX
- - - - - - 0x00005D 00:C04D: D0 FB     BNE bra_C04A_loop
- - - - - - 0x00005F 00:C04F: A0 56     LDY #$56
- - - - - - 0x000061 00:C051: D0 E6     BNE bra_C039_loop
bra_C053:
C - - - - - 0x000063 00:C053: A2 10     LDX #$10
C - - - - - 0x000065 00:C055: A9 00     LDA #$00
C - - - - - 0x000067 00:C057: 85 00     STA ram_0000
bra_C059_loop:
C - - - - - 0x000069 00:C059: 8A        TXA
C - - - - - 0x00006A 00:C05A: 9D EF 07  STA ram_reset_check - 1,X
C - - - - - 0x00006D 00:C05D: CA        DEX
C - - - - - 0x00006E 00:C05E: D0 F9     BNE bra_C059_loop
C - - - - - 0x000070 00:C060: 20 13 C4  JSR sub_C413
C - - - - - 0x000073 00:C063: 20 B0 C4  JSR sub_C4B0
C - - - - - 0x000076 00:C066: A5 53     LDA ram_for_2000
C - - - - - 0x000078 00:C068: 8D 00 20  STA $2000
loc_C06B_infinite_loop:
C D 2 - - - 0x00007B 00:C06B: E6 0F     INC ram_000F
C - - - - - 0x00007D 00:C06D: 4C 6B C0  JMP loc_C06B_infinite_loop



vec_C070_NMI:
C - - - - - 0x000080 00:C070: 48        PHA
C - - - - - 0x000081 00:C071: 8A        TXA
C - - - - - 0x000082 00:C072: 48        PHA
C - - - - - 0x000083 00:C073: 98        TYA
C - - - - - 0x000084 00:C074: 48        PHA
C - - - - - 0x000085 00:C075: AD 02 20  LDA $2002
C - - - - - 0x000088 00:C078: A5 04     LDA ram_0004
C - - - - - 0x00008A 00:C07A: D0 25     BNE bra_C0A1
C - - - - - 0x00008C 00:C07C: E6 04     INC ram_0004
C - - - - - 0x00008E 00:C07E: A9 00     LDA #$00
C - - - - - 0x000090 00:C080: 8D 01 20  STA $2001
C - - - - - 0x000093 00:C083: A9 00     LDA #< ram_oam
C - - - - - 0x000095 00:C085: 8D 03 20  STA $2003
C - - - - - 0x000098 00:C088: A9 02     LDA #> ram_oam
C - - - - - 0x00009A 00:C08A: 8D 14 40  STA $4014
C - - - - - 0x00009D 00:C08D: 20 9B C1  JSR sub_C19B
C - - - - - 0x0000A0 00:C090: A5 65     LDA ram_0065
C - - - - - 0x0000A2 00:C092: F0 06     BEQ bra_C09A
C - - - - - 0x0000A4 00:C094: C6 65     DEC ram_0065
C - - - - - 0x0000A6 00:C096: A9 00     LDA #$00
C - - - - - 0x0000A8 00:C098: F0 02     BEQ bra_C09C
bra_C09A:
C - - - - - 0x0000AA 00:C09A: A5 54     LDA ram_for_2001
bra_C09C:
C - - - - - 0x0000AC 00:C09C: 8D 01 20  STA $2001
C - - - - - 0x0000AF 00:C09F: C6 04     DEC ram_0004
bra_C0A1:
C - - - - - 0x0000B1 00:C0A1: AD 02 20  LDA $2002
C - - - - - 0x0000B4 00:C0A4: A9 00     LDA #$00
C - - - - - 0x0000B6 00:C0A6: 8D 05 20  STA $2005
C D 2 - - - 0x0000B9 00:C0A9: 8D 05 20  STA $2005
C - - - - - 0x0000BC 00:C0AC: A5 0E     LDA ram_000E
C - - - - - 0x0000BE 00:C0AE: F0 23     BEQ bra_C0D3
C - - - - - 0x0000C0 00:C0B0: A5 00     LDA ram_0000
C - - - - - 0x0000C2 00:C0B2: C9 05     CMP #$05
C - - - - - 0x0000C4 00:C0B4: D0 1D     BNE bra_C0D3
- - - - - - 0x0000C6 00:C0B6: A5 67     LDA ram_0067
- - - - - - 0x0000C8 00:C0B8: D0 24     BNE bra_C0DE
- - - - - - 0x0000CA 00:C0BA: A5 09     LDA ram_0009
- - - - - - 0x0000CC 00:C0BC: 4A        LSR
- - - - - - 0x0000CD 00:C0BD: 90 14     BCC bra_C0D3
- - - - - - 0x0000CF 00:C0BF: A9 C0     LDA #$C0
- - - - - - 0x0000D1 00:C0C1: 20 45 CE  JSR sub_CE45
- - - - - - 0x0000D4 00:C0C4: A9 97     LDA #$97
- - - - - - 0x0000D6 00:C0C6: 85 67     STA ram_0067
- - - - - - 0x0000D8 00:C0C8: 20 45 CE  JSR sub_CE45
- - - - - - 0x0000DB 00:C0CB: A9 11     LDA #$11
- - - - - - 0x0000DD 00:C0CD: 20 57 C4  JSR sub_C457
- - - - - - 0x0000E0 00:C0D0: 4C DE C0  JMP loc_C0DE
bra_C0D3:
C - - - - - 0x0000E3 00:C0D3: A5 67     LDA ram_0067
C - - - - - 0x0000E5 00:C0D5: F0 03     BEQ bra_C0DA
- - - - - - 0x0000E7 00:C0D7: 20 0E F9  JSR sub_F90E
bra_C0DA:
C - - - - - 0x0000EA 00:C0DA: A9 00     LDA #$00
C - - - - - 0x0000EC 00:C0DC: 85 67     STA ram_0067
bra_C0DE:
loc_C0DE:
C - - - - - 0x0000EE 00:C0DE: A5 53     LDA ram_for_2000
C - - - - - 0x0000F0 00:C0E0: 29 7F     AND #$7F
C - - - - - 0x0000F2 00:C0E2: 8D 00 20  STA $2000
C - - - - - 0x0000F5 00:C0E5: 20 F9 CE  JSR sub_CEF9
C - - - - - 0x0000F8 00:C0E8: A5 04     LDA ram_0004
C - - - - - 0x0000FA 00:C0EA: F0 06     BEQ bra_C0F2
C - - - - - 0x0000FC 00:C0EC: 20 38 F8  JSR sub_F838
C - - - - - 0x0000FF 00:C0EF: 4C FF C0  JMP loc_C0FF
bra_C0F2:
C - - - - - 0x000102 00:C0F2: E6 04     INC ram_0004
C - - - - - 0x000104 00:C0F4: 20 46 C5  JSR sub_C546
C - - - - - 0x000107 00:C0F7: 20 38 F8  JSR sub_F838
C - - - - - 0x00010A 00:C0FA: 20 05 C1  JSR sub_C105
C - - - - - 0x00010D 00:C0FD: C6 04     DEC ram_0004
loc_C0FF:
C D 2 - - - 0x00010F 00:C0FF: 68        PLA
C - - - - - 0x000110 00:C100: A8        TAY
C - - - - - 0x000111 00:C101: 68        PLA
C - - - - - 0x000112 00:C102: AA        TAX
C - - - - - 0x000113 00:C103: 68        PLA
vec_C104_IRQ:
C - - - - - 0x000114 00:C104: 40        RTI



sub_C105:
C - - - - - 0x000115 00:C105: E6 09     INC ram_0009
C - - - - - 0x000117 00:C107: A5 00     LDA ram_0000
C - - - - - 0x000119 00:C109: 20 E9 D0  JSR sub_D0E9_read_pointers_after_JSR
- D 2 - I - 0x00011C 00:C10C: 1E C1     .word ofs_000_C11E_00_RTS
- D 2 - I - 0x00011E 00:C10E: 1E C1     .word ofs_000_C11E_01_RTS
- D 2 - I - 0x000120 00:C110: 64 C1     .word ofs_000_C164_02
- D 2 - I - 0x000122 00:C112: 1F C1     .word ofs_000_C11F_03
- D 2 - I - 0x000124 00:C114: 1E C1     .word ofs_000_C11E_04_RTS
- D 2 - I - 0x000126 00:C116: D3 C7     .word ofs_000_C7D3_05
- D 2 - I - 0x000128 00:C118: 8F C1     .word ofs_000_C18F_06
- D 2 - I - 0x00012A 00:C11A: 1E C1     .word ofs_000_C11E_07_RTS
- D 2 - I - 0x00012C 00:C11C: 1E C1     .word ofs_000_C11E_08_RTS



ofs_000_C11E_00_RTS:
ofs_000_C11E_01_RTS:
ofs_000_C11E_04_RTS:
ofs_000_C11E_07_RTS:
ofs_000_C11E_08_RTS:
bra_C11E_RTS:
C - - J - - 0x00012E 00:C11E: 60        RTS
ofs_000_C11F_03:
C - - J - - 0x00012F 00:C11F: A6 01     LDX ram_0001
C - - - - - 0x000131 00:C121: F0 1C     BEQ bra_C13F
C - - - - - 0x000133 00:C123: CA        DEX
C - - - - - 0x000134 00:C124: F0 06     BEQ bra_C12C
bra_C126_loop:
C - - - - - 0x000136 00:C126: 20 02 C6  JSR sub_C602
C - - - - - 0x000139 00:C129: 4C D9 C2  JMP loc_C2D9
bra_C12C:
C - - - - - 0x00013C 00:C12C: C6 02     DEC ram_0002
C - - - - - 0x00013E 00:C12E: F0 F6     BEQ bra_C126_loop
C - - - - - 0x000140 00:C130: A9 08     LDA #$08
C - - - - - 0x000142 00:C132: 25 02     AND ram_0002
C - - - - - 0x000144 00:C134: D0 03     BNE bra_C139
C - - - - - 0x000146 00:C136: 4C 5C C6  JMP loc_C65C
bra_C139:
C - - - - - 0x000149 00:C139: 20 66 C6  JSR sub_C666_RTS
C - - - - - 0x00014C 00:C13C: 4C 3E C9  JMP loc_C93E
bra_C13F:
C - - - - - 0x00014F 00:C13F: 20 59 C1  JSR sub_C159
C - - - - - 0x000152 00:C142: 20 9B D6  JSR sub_D69B
C - - - - - 0x000155 00:C145: 20 2D C6  JSR sub_C62D
C - - - - - 0x000158 00:C148: A9 0D     LDA #$0D
C - - - - - 0x00015A 00:C14A: 20 45 CE  JSR sub_CE45
C - - - - - 0x00015D 00:C14D: A9 4E     LDA #$4E
C - - - - - 0x00015F 00:C14F: 20 45 CE  JSR sub_CE45
C - - - - - 0x000162 00:C152: A9 50     LDA #$50
C - - - - - 0x000164 00:C154: 85 02     STA ram_0002
C - - - - - 0x000166 00:C156: 4C 51 C2  JMP loc_C251



sub_C159:
C - - - - - 0x000169 00:C159: A9 00     LDA #$00
C - - - - - 0x00016B 00:C15B: 85 66     STA ram_0066
C - - - - - 0x00016D 00:C15D: 85 63     STA ram_0063
C - - - - - 0x00016F 00:C15F: 85 68     STA ram_enemy_type
C - - - - - 0x000171 00:C161: 85 F8     STA ram_00F8
C - - - - - 0x000173 00:C163: 60        RTS



ofs_000_C164_02:
C - - J - - 0x000174 00:C164: A6 01     LDX ram_0001
C - - - - - 0x000176 00:C166: F0 B6     BEQ bra_C11E_RTS
C - - - - - 0x000178 00:C168: E0 01     CPX #$01
C - - - - - 0x00017A 00:C16A: F0 04     BEQ bra_C170
C - - - - - 0x00017C 00:C16C: E0 02     CPX #$02
C - - - - - 0x00017E 00:C16E: F0 0C     BEQ bra_C17C
bra_C170:
C - - - - - 0x000180 00:C170: E6 66     INC ram_0066
C - - - - - 0x000182 00:C172: A9 2C     LDA #$2C
C - - - - - 0x000184 00:C174: 20 57 C4  JSR sub_C457
C - - - - - 0x000187 00:C177: A9 B0     LDA #$B0
C - - - - - 0x000189 00:C179: 85 CB     STA ram_00CB
C - - - - - 0x00018B 00:C17B: 60        RTS
bra_C17C:
C - - - - - 0x00018C 00:C17C: A9 00     LDA #$00
C - - - - - 0x00018E 00:C17E: 85 0A     STA ram_000A
C - - - - - 0x000190 00:C180: 20 C5 C7  JSR sub_C7C5
C - - - - - 0x000193 00:C183: A5 0A     LDA ram_000A
C - - - - - 0x000195 00:C185: D0 01     BNE bra_C188
C - - - - - 0x000197 00:C187: 60        RTS
bra_C188:
C - - - - - 0x000198 00:C188: A9 00     LDA #$00
C - - - - - 0x00019A 00:C18A: 85 66     STA ram_0066
C - - - - - 0x00019C 00:C18C: 4C 28 C3  JMP loc_C328



ofs_000_C18F_06:
C - - J - - 0x00019F 00:C18F: A5 60     LDA ram_lives
C - - - - - 0x0001A1 00:C191: D0 07     BNE bra_C19A_RTS
C - - - - - 0x0001A3 00:C193: A0 01     LDY #$01
C - - - - - 0x0001A5 00:C195: A9 04     LDA #$04
C - - - - - 0x0001A7 00:C197: 4C 85 C4  JMP loc_C485
bra_C19A_RTS:
C - - - - - 0x0001AA 00:C19A: 60        RTS



sub_C19B:
C - - - - - 0x0001AB 00:C19B: A5 00     LDA ram_0000
C - - - - - 0x0001AD 00:C19D: 20 B9 C1  JSR sub_C1B9
C - - - - - 0x0001B0 00:C1A0: A6 00     LDX ram_0000
C - - - - - 0x0001B2 00:C1A2: BD B0 C1  LDA tbl_C1B0,X
C - - - - - 0x0001B5 00:C1A5: F0 08     BEQ bra_C1AF_RTS
C - - - - - 0x0001B7 00:C1A7: 30 03     BMI bra_C1AC
C - - - - - 0x0001B9 00:C1A9: 4C EE C6  JMP loc_C6EE
bra_C1AC:
C - - - - - 0x0001BC 00:C1AC: 4C A1 C5  JMP loc_C5A1
bra_C1AF_RTS:
C - - - - - 0x0001BF 00:C1AF: 60        RTS



tbl_C1B0:
- D 2 - - - 0x0001C0 00:C1B0: FF        .byte $FF   ; 00
- D 2 - - - 0x0001C1 00:C1B1: FF        .byte $FF   ; 01
- D 2 - - - 0x0001C2 00:C1B2: FF        .byte $FF   ; 02
- D 2 - - - 0x0001C3 00:C1B3: 00        .byte $00   ; 03
- D 2 - - - 0x0001C4 00:C1B4: 00        .byte $00   ; 04
- D 2 - - - 0x0001C5 00:C1B5: 01        .byte $01   ; 05
- D 2 - - - 0x0001C6 00:C1B6: 00        .byte $00   ; 06
- D 2 - - - 0x0001C7 00:C1B7: 01        .byte $01   ; 07
- D 2 - - - 0x0001C8 00:C1B8: 01        .byte $01   ; 08



sub_C1B9:
C - - - - - 0x0001C9 00:C1B9: 20 E9 D0  JSR sub_D0E9_read_pointers_after_JSR
- D 2 - I - 0x0001CC 00:C1BC: CE C1     .word ofs_001_C1CE_00
- D 2 - I - 0x0001CE 00:C1BE: FD C1     .word ofs_001_C1FD_01
- D 2 - I - 0x0001D0 00:C1C0: 17 C2     .word ofs_001_C217_02
- D 2 - I - 0x0001D2 00:C1C2: 54 C2     .word ofs_001_C254_03
- D 2 - I - 0x0001D4 00:C1C4: 91 C2     .word ofs_001_C291_04
- D 2 - I - 0x0001D6 00:C1C6: FB C2     .word ofs_001_C2FB_05
- D 2 - I - 0x0001D8 00:C1C8: 09 C3     .word ofs_001_C309_06
- D 2 - I - 0x0001DA 00:C1CA: 31 C3     .word ofs_001_C331_07
- D 2 - I - 0x0001DC 00:C1CC: 50 C3     .word ofs_001_C350_08



ofs_001_C1CE_00:
C - - J - - 0x0001DE 00:C1CE: A6 01     LDX ram_0001
C - - - - - 0x0001E0 00:C1D0: D0 1D     BNE bra_C1EF
C - - - - - 0x0001E2 00:C1D2: 20 E1 C1  JSR sub_C1E1
C - - - - - 0x0001E5 00:C1D5: 20 B6 C4  JSR sub_C4B6
C - - - - - 0x0001E8 00:C1D8: 20 07 C5  JSR sub_C507
C - - - - - 0x0001EB 00:C1DB: 20 3E F8  JSR sub_F83E
C - - - - - 0x0001EE 00:C1DE: 4C 51 C2  JMP loc_C251



sub_C1E1:
C - - - - - 0x0001F1 00:C1E1: A9 1E     LDA #$1E
C - - - - - 0x0001F3 00:C1E3: 85 54     STA ram_for_2001
sub_C1E5:
C - - - - - 0x0001F5 00:C1E5: A9 00     LDA #$00
C - - - - - 0x0001F7 00:C1E7: 8D 00 20  STA $2000
sub_C1EA:
C - - - - - 0x0001FA 00:C1EA: A9 03     LDA #$03
C - - - - - 0x0001FC 00:C1EC: 85 65     STA ram_0065
C - - - - - 0x0001FE 00:C1EE: 60        RTS



bra_C1EF:
C - - - - - 0x0001FF 00:C1EF: 20 EA C1  JSR sub_C1EA
C - - - - - 0x000202 00:C1F2: 20 9B D6  JSR sub_D69B
C - - - - - 0x000205 00:C1F5: 20 23 F9  JSR sub_F923
C - - - - - 0x000208 00:C1F8: A9 00     LDA #$00
C - - - - - 0x00020A 00:C1FA: 4C DB C2  JMP loc_C2DB



ofs_001_C1FD_01:
C - - J - - 0x00020D 00:C1FD: C6 02     DEC ram_0002
C - - - - - 0x00020F 00:C1FF: F0 03     BEQ bra_C204
C - - - - - 0x000211 00:C201: 4C 2D C6  JMP loc_C62D
bra_C204:
C - - - - - 0x000214 00:C204: A2 66     LDX #$66
C - - - - - 0x000216 00:C206: 20 66 C2  JSR sub_C266
C - - - - - 0x000219 00:C209: 20 77 C2  JSR sub_C277
C - - - - - 0x00021C 00:C20C: A9 F0     LDA #$F0
C - - - - - 0x00021E 00:C20E: 8D 00 02  STA ram_spr_Y
C - - - - - 0x000221 00:C211: 8D 04 02  STA ram_spr_Y + $04
C - - - - - 0x000224 00:C214: 4C D9 C2  JMP loc_C2D9



ofs_001_C217_02:
C - - J - - 0x000227 00:C217: A6 01     LDX ram_0001
C - - - - - 0x000229 00:C219: F0 26     BEQ bra_C241
C - - - - - 0x00022B 00:C21B: CA        DEX
C - - - - - 0x00022C 00:C21C: F0 0A     BEQ bra_C228
C - - - - - 0x00022E 00:C21E: CA        DEX
C - - - - - 0x00022F 00:C21F: D0 1F     BNE bra_C240
C - - - - - 0x000231 00:C221: A9 01     LDA #$01
C - - - - - 0x000233 00:C223: 85 66     STA ram_0066
C - - - - - 0x000235 00:C225: 4C 65 C9  JMP loc_C965
bra_C228:
C - - - - - 0x000238 00:C228: A9 01     LDA #$01
C - - - - - 0x00023A 00:C22A: 85 66     STA ram_0066
C - - - - - 0x00023C 00:C22C: 20 E5 C1  JSR sub_C1E5
C - - - - - 0x00023F 00:C22F: 20 55 F8  JSR sub_F855
C - - - - - 0x000242 00:C232: 20 67 C6  JSR sub_C667
C - - - - - 0x000245 00:C235: A9 AF     LDA #$AF
C - - - - - 0x000247 00:C237: 20 AB C3  JSR sub_C3AB
C - - - - - 0x00024A 00:C23A: 20 3E F8  JSR sub_F83E
C - - - - - 0x00024D 00:C23D: 4C 4D C2  JMP loc_C24D
bra_C240:
- - - - - - 0x000250 00:C240: 60        RTS
bra_C241:
C - - - - - 0x000251 00:C241: 20 E5 C1  JSR sub_C1E5
C - - - - - 0x000254 00:C244: 20 07 C5  JSR sub_C507
C - - - - - 0x000257 00:C247: 20 BC FD  JSR sub_FDBC
C - - - - - 0x00025A 00:C24A: 20 3E F8  JSR sub_F83E
loc_C24D:
C D 2 - - - 0x00025D 00:C24D: A9 20     LDA #$20
loc_C24F:
C D 2 - - - 0x00025F 00:C24F: 85 02     STA ram_0002
loc_C251:
C D 2 - - - 0x000261 00:C251: E6 01     INC ram_0001
bra_C253_RTS:
C - - - - - 0x000263 00:C253: 60        RTS



ofs_001_C254_03:
C - - J - - 0x000264 00:C254: A6 01     LDX ram_0001
C - - - - - 0x000266 00:C256: F0 FB     BEQ bra_C253_RTS
C - - - - - 0x000268 00:C258: A2 66     LDX #$66
C - - - - - 0x00026A 00:C25A: A9 08     LDA #$08
C - - - - - 0x00026C 00:C25C: 25 02     AND ram_0002
C - - - - - 0x00026E 00:C25E: F0 02     BEQ bra_C262
C - - - - - 0x000270 00:C260: A2 00     LDX #$00
bra_C262:
C - - - - - 0x000272 00:C262: A5 50     LDA ram_game_mode
C - - - - - 0x000274 00:C264: D0 11     BNE bra_C277_lvl_2
sub_C266:
C - - - - - 0x000276 00:C266: AD 02 20  LDA $2002
C - - - - - 0x000279 00:C269: A9 22     LDA #> $22F4
C - - - - - 0x00027B 00:C26B: 8D 06 20  STA $2006
C - - - - - 0x00027E 00:C26E: A9 F4     LDA #< $22F4
C - - - - - 0x000280 00:C270: 8D 06 20  STA $2006
C - - - - - 0x000283 00:C273: 8E 07 20  STX $2007
C - - - - - 0x000286 00:C276: 60        RTS
bra_C277_lvl_2:
sub_C277:
C - - - - - 0x000287 00:C277: AD 02 20  LDA $2002
C - - - - - 0x00028A 00:C27A: A9 23     LDA #> $2334
C - - - - - 0x00028C 00:C27C: 8D 06 20  STA $2006
C - - - - - 0x00028F 00:C27F: A9 34     LDA #< $2334
C - - - - - 0x000291 00:C281: 8D 06 20  STA $2006
C - - - - - 0x000294 00:C284: A9 00     LDA #$00
C - - - - - 0x000296 00:C286: E8        INX
C - - - - - 0x000297 00:C287: E0 01     CPX #$01
C - - - - - 0x000299 00:C289: F0 02     BEQ bra_C28D
C - - - - - 0x00029B 00:C28B: A9 67     LDA #$67
bra_C28D:
C - - - - - 0x00029D 00:C28D: 8D 07 20  STA $2007
C - - - - - 0x0002A0 00:C290: 60        RTS



ofs_001_C291_04:
C - - J - - 0x0002A1 00:C291: A6 01     LDX ram_0001
C - - - - - 0x0002A3 00:C293: F0 51     BEQ bra_C2E6
C - - - - - 0x0002A5 00:C295: CA        DEX
C - - - - - 0x0002A6 00:C296: F0 1E     BEQ bra_C2B6
C - - - - - 0x0002A8 00:C298: CA        DEX
C - - - - - 0x0002A9 00:C299: D0 37     BNE bra_C2D2
C - - - - - 0x0002AB 00:C29B: C6 02     DEC ram_0002
C - - - - - 0x0002AD 00:C29D: F0 01     BEQ bra_C2A0
C - - - - - 0x0002AF 00:C29F: 60        RTS
bra_C2A0:
C - - - - - 0x0002B0 00:C2A0: 20 E5 C1  JSR sub_C1E5
C - - - - - 0x0002B3 00:C2A3: A9 87     LDA #$87
C - - - - - 0x0002B5 00:C2A5: 20 AB C3  JSR sub_C3AB
C - - - - - 0x0002B8 00:C2A8: C6 60     DEC ram_lives
C - - - - - 0x0002BA 00:C2AA: 20 55 F8  JSR sub_F855
C - - - - - 0x0002BD 00:C2AD: 20 67 C6  JSR sub_C667
C - - - - - 0x0002C0 00:C2B0: 20 3E F8  JSR sub_F83E
C - - - - - 0x0002C3 00:C2B3: 4C 51 C2  JMP loc_C251
bra_C2B6:
C - - - - - 0x0002C6 00:C2B6: A5 64     LDA ram_0064
C - - - - - 0x0002C8 00:C2B8: D0 3B     BNE bra_C2F5
C - - - - - 0x0002CA 00:C2BA: 20 B7 FD  JSR sub_FDB7
C - - - - - 0x0002CD 00:C2BD: A9 92     LDA #< $2192
C - - - - - 0x0002CF 00:C2BF: 85 80     STA ram_0080
C - - - - - 0x0002D1 00:C2C1: A9 21     LDA #> $2192
C - - - - - 0x0002D3 00:C2C3: 85 81     STA ram_0081
C - - - - - 0x0002D5 00:C2C5: A5 61     LDA ram_0061
C - - - - - 0x0002D7 00:C2C7: 20 D7 C6  JSR sub_C6D7
C - - - - - 0x0002DA 00:C2CA: 20 EA C1  JSR sub_C1EA
C - - - - - 0x0002DD 00:C2CD: A9 78     LDA #$78
C - - - - - 0x0002DF 00:C2CF: 4C 4F C2  JMP loc_C24F
bra_C2D2:
C - - - - - 0x0002E2 00:C2D2: 20 BC FD  JSR sub_FDBC
C - - - - - 0x0002E5 00:C2D5: A9 01     LDA #$01
C - - - - - 0x0002E7 00:C2D7: 85 0A     STA ram_000A
bra_C2D9:
loc_C2D9:
C D 2 - - - 0x0002E9 00:C2D9: A9 20     LDA #$20
loc_C2DB:
C D 2 - - - 0x0002EB 00:C2DB: 85 02     STA ram_0002
C - - - - - 0x0002ED 00:C2DD: E6 00     INC ram_0000
loc_C2DF:
C D 2 - - - 0x0002EF 00:C2DF: A9 00     LDA #$00
C - - - - - 0x0002F1 00:C2E1: 85 0A     STA ram_000A
C - - - - - 0x0002F3 00:C2E3: 85 01     STA ram_0001
C - - - - - 0x0002F5 00:C2E5: 60        RTS
bra_C2E6:
C - - - - - 0x0002F6 00:C2E6: 20 E5 C1  JSR sub_C1E5
C - - - - - 0x0002F9 00:C2E9: 20 07 C5  JSR sub_C507
C - - - - - 0x0002FC 00:C2EC: 20 13 C4  JSR sub_C413
C - - - - - 0x0002FF 00:C2EF: 20 3E F8  JSR sub_F83E
C - - - - - 0x000302 00:C2F2: 4C 51 C2  JMP loc_C251
bra_C2F5:
C - - - - - 0x000305 00:C2F5: 20 A7 FD  JSR sub_FDA7
C - - - - - 0x000308 00:C2F8: 4C 4F C2  JMP loc_C24F



ofs_001_C2FB_05:
C - - J - - 0x00030B 00:C2FB: 20 87 C8  JSR sub_C887
C - - - - - 0x00030E 00:C2FE: A9 08     LDA #$08
C - - - - - 0x000310 00:C300: A6 0B     LDX ram_000B
C - - - - - 0x000312 00:C302: D0 24     BNE bra_C328
C - - - - - 0x000314 00:C304: A5 0A     LDA ram_000A
C - - - - - 0x000316 00:C306: D0 D1     BNE bra_C2D9
C - - - - - 0x000318 00:C308: 60        RTS



ofs_001_C309_06:
C - - J - - 0x000319 00:C309: A5 60     LDA ram_lives
C - - - - - 0x00031B 00:C30B: D0 0F     BNE bra_C31C
C - - - - - 0x00031D 00:C30D: A5 03     LDA ram_0003
C - - - - - 0x00031F 00:C30F: 29 20     AND #$20
C - - - - - 0x000321 00:C311: D0 05     BNE bra_wtf_C319 - 1    ; bzk
C - - - - - 0x000323 00:C313: A9 06     LDA #$06
C - - - - - 0x000325 00:C315: 85 00     STA ram_0000
C - - - - - 0x000327 00:C317: A9 78     LDA #$78
bra_wtf_C319:   ; C318 = SEI
C - - - - - 0x000329 00:C319: 4C DB C2  JMP loc_C2DB
bra_C31C:
loc_C31C:
C D 2 - - - 0x00032C 00:C31C: A9 0D     LDA #$0D
C - - - - - 0x00032E 00:C31E: 20 45 CE  JSR sub_CE45
C - - - - - 0x000331 00:C321: A9 4E     LDA #$4E
C - - - - - 0x000333 00:C323: 20 45 CE  JSR sub_CE45
C - - - - - 0x000336 00:C326: A9 04     LDA #$04
bra_C328:
loc_C328:
C D 2 - - - 0x000338 00:C328: 85 00     STA ram_0000
C - - - - - 0x00033A 00:C32A: A9 20     LDA #$20
C - - - - - 0x00033C 00:C32C: 85 02     STA ram_0002
C - - - - - 0x00033E 00:C32E: 4C DF C2  JMP loc_C2DF



ofs_001_C331_07:
C - - J - - 0x000341 00:C331: C6 02     DEC ram_0002
C - - - - - 0x000343 00:C333: F0 01     BEQ bra_C336
bra_C335_RTS:
C - - - - - 0x000345 00:C335: 60        RTS
bra_C336:
C - - - - - 0x000346 00:C336: A5 12     LDA ram_0012
C - - - - - 0x000348 00:C338: 05 23     ORA ram_0023
C - - - - - 0x00034A 00:C33A: 05 34     ORA ram_0034
C - - - - - 0x00034C 00:C33C: D0 F7     BNE bra_C335_RTS
C - - - - - 0x00034E 00:C33E: A5 03     LDA ram_0003
C - - - - - 0x000350 00:C340: 29 BF     AND #$BF
C - - - - - 0x000352 00:C342: 85 03     STA ram_0003
C - - - - - 0x000354 00:C344: A9 AF     LDA #$AF
C - - - - - 0x000356 00:C346: 20 AB C3  JSR sub_C3AB
C - - - - - 0x000359 00:C349: A2 00     LDX #$00
C - - - - - 0x00035B 00:C34B: 86 00     STX ram_0000
C - - - - - 0x00035D 00:C34D: 4C 9B D6  JMP loc_D69B



ofs_001_C350_08:
C - - J - - 0x000360 00:C350: E6 60     INC ram_lives
C - - - - - 0x000362 00:C352: A9 00     LDA #$00
C - - - - - 0x000364 00:C354: 85 D2     STA ram_00D2
C - - - - - 0x000366 00:C356: 85 A4     STA ram_00A4
C - - - - - 0x000368 00:C358: A9 00     LDA #$00
C - - - - - 0x00036A 00:C35A: 20 45 CE  JSR sub_CE45
C - - - - - 0x00036D 00:C35D: A9 40     LDA #$40
C - - - - - 0x00036F 00:C35F: 20 45 CE  JSR sub_CE45
C - - - - - 0x000372 00:C362: A9 0D     LDA #$0D
C - - - - - 0x000374 00:C364: 20 45 CE  JSR sub_CE45
C - - - - - 0x000377 00:C367: A9 4E     LDA #$4E
C - - - - - 0x000379 00:C369: 20 45 CE  JSR sub_CE45
C - - - - - 0x00037C 00:C36C: A6 68     LDX ram_enemy_type
C - - - - - 0x00037E 00:C36E: A5 64     LDA ram_0064
C - - - - - 0x000380 00:C370: D0 0C     BNE bra_C37E
C - - - - - 0x000382 00:C372: E0 02     CPX #$02
C - - - - - 0x000384 00:C374: D0 10     BNE bra_C386
C - - - - - 0x000386 00:C376: E6 64     INC ram_0064
C - - - - - 0x000388 00:C378: A9 00     LDA #$00
C - - - - - 0x00038A 00:C37A: 85 68     STA ram_enemy_type
C - - - - - 0x00038C 00:C37C: F0 20     BEQ bra_C39E
bra_C37E:
C - - - - - 0x00038E 00:C37E: A9 00     LDA #$00
C - - - - - 0x000390 00:C380: 85 64     STA ram_0064
C - - - - - 0x000392 00:C382: A9 02     LDA #$02
C - - - - - 0x000394 00:C384: 85 68     STA ram_enemy_type
bra_C386:
C - - - - - 0x000396 00:C386: E6 63     INC ram_0063
C - - - - - 0x000398 00:C388: E6 68     INC ram_enemy_type
C - - - - - 0x00039A 00:C38A: E0 04     CPX #$04
C - - - - - 0x00039C 00:C38C: D0 06     BNE bra_C394
C - - - - - 0x00039E 00:C38E: A9 00     LDA #$00
C - - - - - 0x0003A0 00:C390: 85 68     STA ram_enemy_type
C - - - - - 0x0003A2 00:C392: E6 F8     INC ram_00F8
bra_C394:
C - - - - - 0x0003A4 00:C394: A5 61     LDA ram_0061
C - - - - - 0x0003A6 00:C396: A2 01     LDX #$01
C - - - - - 0x0003A8 00:C398: 18        CLC
C - - - - - 0x0003A9 00:C399: 20 65 C7  JSR sub_C765
C - - - - - 0x0003AC 00:C39C: 85 61     STA ram_0061
bra_C39E:
C - - - - - 0x0003AE 00:C39E: 20 EA C1  JSR sub_C1EA
C - - - - - 0x0003B1 00:C3A1: 20 13 C4  JSR sub_C413
C - - - - - 0x0003B4 00:C3A4: A9 00     LDA #$00
C - - - - - 0x0003B6 00:C3A6: 85 0B     STA ram_000B
C - - - - - 0x0003B8 00:C3A8: 4C 1C C3  JMP loc_C31C



sub_C3AB:
loc_C3AB:
C D 2 - - - 0x0003BB 00:C3AB: A2 FF     LDX #$FF
C - - - - - 0x0003BD 00:C3AD: 0A        ASL
C - - - - - 0x0003BE 00:C3AE: A8        TAY
C - - - - - 0x0003BF 00:C3AF: 90 01     BCC bra_C3B2
C - - - - - 0x0003C1 00:C3B1: E8        INX
bra_C3B2:
C - - - - - 0x0003C2 00:C3B2: A9 80     LDA #< tbl_FF80
C - - - - - 0x0003C4 00:C3B4: 85 84     STA ram_0084
C - - - - - 0x0003C6 00:C3B6: A9 FF     LDA #> tbl_FF80
C - - - - - 0x0003C8 00:C3B8: 85 85     STA ram_0085
C - - - - - 0x0003CA 00:C3BA: B1 84     LDA (ram_0084),Y
C - - - - - 0x0003CC 00:C3BC: 85 82     STA ram_0082
C - - - - - 0x0003CE 00:C3BE: C8        INY
C - - - - - 0x0003CF 00:C3BF: B1 84     LDA (ram_0084),Y
C - - - - - 0x0003D1 00:C3C1: 85 83     STA ram_0083
C - - - - - 0x0003D3 00:C3C3: 8A        TXA
C - - - - - 0x0003D4 00:C3C4: 4C CD C3  JMP loc_C3CD


; bzk garbage
- - - - - - 0x0003D7 00:C3C7: A9 00     LDA #$00
- - - - - - 0x0003D9 00:C3C9: F0 02     BEQ bra_C3CD


; bzk garbage
- - - - - - 0x0003DB 00:C3CB: A9 FF     LDA #$FF



loc_C3CD:
bra_C3CD:
C D 2 - - - 0x0003DD 00:C3CD: 85 84     STA ram_0084
C - - - - - 0x0003DF 00:C3CF: A0 00     LDY #$00
bra_C3D1_loop:
C - - - - - 0x0003E1 00:C3D1: B1 82     LDA (ram_0082),Y
C - - - - - 0x0003E3 00:C3D3: 85 80     STA ram_0080
C - - - - - 0x0003E5 00:C3D5: C8        INY
C - - - - - 0x0003E6 00:C3D6: B1 82     LDA (ram_0082),Y
C - - - - - 0x0003E8 00:C3D8: 85 81     STA ram_0081
C - - - - - 0x0003EA 00:C3DA: C8        INY
C - - - - - 0x0003EB 00:C3DB: 20 F4 C5  JSR sub_C5F4_set_2006
loc_C3DE_loop:
C D 2 - - - 0x0003EE 00:C3DE: B1 82     LDA (ram_0082),Y
C - - - - - 0x0003F0 00:C3E0: C8        INY
C - - - - - 0x0003F1 00:C3E1: C9 FF     CMP #$FF
C - - - - - 0x0003F3 00:C3E3: F0 0C     BEQ bra_C3F1_RTS
C - - - - - 0x0003F5 00:C3E5: C9 FE     CMP #$FE
C - - - - - 0x0003F7 00:C3E7: F0 E8     BEQ bra_C3D1_loop
C - - - - - 0x0003F9 00:C3E9: 25 84     AND ram_0084
C - - - - - 0x0003FB 00:C3EB: 8D 07 20  STA $2007
C - - - - - 0x0003FE 00:C3EE: 4C DE C3  JMP loc_C3DE_loop
bra_C3F1_RTS:
C - - - - - 0x000401 00:C3F1: 60        RTS



sub_C3F2:
C - - - - - 0x000402 00:C3F2: 18        CLC
C - - - - - 0x000403 00:C3F3: 75 00     ADC ram_0000,X
C - - - - - 0x000405 00:C3F5: 95 00     STA ram_0000,X
C - - - - - 0x000407 00:C3F7: 90 02     BCC bra_C3FB_RTS
- - - - - - 0x000409 00:C3F9: F6 01     INC ram_0001,X
bra_C3FB_RTS:
C - - - - - 0x00040B 00:C3FB: 60        RTS


; bzk garbage
- - - - - - 0x00040C 00:C3FC: 49 FF     EOR #$FF
- - - - - - 0x00040E 00:C3FE: 38        SEC
- - - - - - 0x00040F 00:C3FF: 75 00     ADC ram_0000,X
- - - - - - 0x000411 00:C401: 95 00     STA ram_0000,X
- - - - - - 0x000413 00:C403: B0 02     BCS bra_C407_RTS
- - - - - - 0x000415 00:C405: F6 01     INC ram_0001,X
bra_C407_RTS:
- - - - - - 0x000417 00:C407: 60        RTS


; bzk garbage
bra_C408_loop:
- - - - - - 0x000418 00:C408: 88        DEY
- - - - - - 0x000419 00:C409: B1 80     LDA (ram_0080),Y
- - - - - - 0x00041B 00:C40B: 91 82     STA (ram_0082),Y
- - - - - - 0x00041D 00:C40D: 98        TYA
- - - - - - 0x00041E 00:C40E: D0 F8     BNE bra_C408_loop
- - - - - - 0x000420 00:C410: 60        RTS


; bzk garbage
- - - - - - 0x000421 00:C411: E6 02     INC ram_0002



sub_C413:
loc_C413:
C D 2 - - - 0x000423 00:C413: A2 00     LDX #$00
C - - - - - 0x000425 00:C415: A0 40     LDY #$40
C - - - - - 0x000427 00:C417: 4C 58 C9  JMP loc_C958_hide_all_sprites



sub_C41A_print_opponent_name_with_sprites:
C - - - - - 0x00042A 00:C41A: 84 87     STY ram_0087
bra_C41C_loop:
C - - - - - 0x00042C 00:C41C: A0 04     LDY #$04
bra_C41E_loop:
C - - - - - 0x00042E 00:C41E: BD 00 02  LDA ram_oam,X
C - - - - - 0x000431 00:C421: 9D 04 02  STA ram_oam + $04,X
C - - - - - 0x000434 00:C424: E8        INX
C - - - - - 0x000435 00:C425: 88        DEY
C - - - - - 0x000436 00:C426: D0 F6     BNE bra_C41E_loop
C - - - - - 0x000438 00:C428: 18        CLC
C - - - - - 0x000439 00:C429: 69 08     ADC #$08
C - - - - - 0x00043B 00:C42B: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x00043E 00:C42E: C6 87     DEC ram_0087
C - - - - - 0x000440 00:C430: D0 EA     BNE bra_C41C_loop
C - - - - - 0x000442 00:C432: 60        RTS



sub_C433:
C - - - - - 0x000443 00:C433: 0A        ASL
C - - - - - 0x000444 00:C434: A8        TAY
C - - - - - 0x000445 00:C435: A9 80     LDA #< tbl_FF80
C - - - - - 0x000447 00:C437: 85 84     STA ram_0084
C - - - - - 0x000449 00:C439: A9 FF     LDA #> tbl_FF80
C - - - - - 0x00044B 00:C43B: 85 85     STA ram_0085
C - - - - - 0x00044D 00:C43D: B1 84     LDA (ram_0084),Y
C - - - - - 0x00044F 00:C43F: 85 80     STA ram_0080
C - - - - - 0x000451 00:C441: C8        INY
C - - - - - 0x000452 00:C442: B1 84     LDA (ram_0084),Y
C - - - - - 0x000454 00:C444: 85 81     STA ram_0081
C - - - - - 0x000456 00:C446: A0 00     LDY #$00
C - - - - - 0x000458 00:C448: B1 80     LDA (ram_0080),Y
C - - - - - 0x00045A 00:C44A: AA        TAX
C - - - - - 0x00045B 00:C44B: 18        CLC
C - - - - - 0x00045C 00:C44C: A9 01     LDA #$01
C - - - - - 0x00045E 00:C44E: 65 80     ADC ram_0080
C - - - - - 0x000460 00:C450: 85 80     STA ram_0080
C - - - - - 0x000462 00:C452: 90 02     BCC bra_C456_RTS
- - - - - - 0x000464 00:C454: E6 81     INC ram_0081
bra_C456_RTS:
C - - - - - 0x000466 00:C456: 60        RTS



sub_C457:
loc_C457:
C D 2 - - - 0x000467 00:C457: 20 33 C4  JSR sub_C433
sub_C45A:
C - - - - - 0x00046A 00:C45A: 86 86     STX ram_0086
C - - - - - 0x00046C 00:C45C: A0 00     LDY #$00
bra_C45E_loop:
C - - - - - 0x00046E 00:C45E: B1 80     LDA (ram_0080),Y
C - - - - - 0x000470 00:C460: 9D 00 02  STA ram_oam,X
C - - - - - 0x000473 00:C463: E8        INX
C - - - - - 0x000474 00:C464: C8        INY
C - - - - - 0x000475 00:C465: C0 05     CPY #$05
C - - - - - 0x000477 00:C467: D0 F5     BNE bra_C45E_loop
C - - - - - 0x000479 00:C469: 85 85     STA ram_0085
C - - - - - 0x00047B 00:C46B: A8        TAY
C - - - - - 0x00047C 00:C46C: A6 86     LDX ram_0086
C - - - - - 0x00047E 00:C46E: 20 1A C4  JSR sub_C41A_print_opponent_name_with_sprites
C - - - - - 0x000481 00:C471: A0 05     LDY #$05
C - - - - - 0x000483 00:C473: A6 86     LDX ram_0086
C - - - - - 0x000485 00:C475: E8        INX
bra_C476_loop:
C - - - - - 0x000486 00:C476: E8        INX
C - - - - - 0x000487 00:C477: E8        INX
C - - - - - 0x000488 00:C478: E8        INX
C - - - - - 0x000489 00:C479: E8        INX
C - - - - - 0x00048A 00:C47A: B1 80     LDA (ram_0080),Y
C - - - - - 0x00048C 00:C47C: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x00048F 00:C47F: C8        INY
C - - - - - 0x000490 00:C480: C6 85     DEC ram_0085
C - - - - - 0x000492 00:C482: D0 F2     BNE bra_C476_loop
C - - - - - 0x000494 00:C484: 60        RTS



loc_C485:
sub_C485:
C D 2 - - - 0x000495 00:C485: 84 90     STY ram_0090
C - - - - - 0x000497 00:C487: 20 57 C4  JSR sub_C457
bra_C48A_loop:
C - - - - - 0x00049A 00:C48A: E8        INX
C - - - - - 0x00049B 00:C48B: E8        INX
C - - - - - 0x00049C 00:C48C: E8        INX
C - - - - - 0x00049D 00:C48D: 86 86     STX ram_0086
C - - - - - 0x00049F 00:C48F: 98        TYA
C - - - - - 0x0004A0 00:C490: A2 80     LDX #$80
C - - - - - 0x0004A2 00:C492: 20 F2 C3  JSR sub_C3F2
C - - - - - 0x0004A5 00:C495: A6 86     LDX ram_0086
C - - - - - 0x0004A7 00:C497: 20 5A C4  JSR sub_C45A
C - - - - - 0x0004AA 00:C49A: C6 90     DEC ram_0090
C - - - - - 0x0004AC 00:C49C: D0 EC     BNE bra_C48A_loop
C - - - - - 0x0004AE 00:C49E: 60        RTS



sub_C49F:
C - - - - - 0x0004AF 00:C49F: 20 33 C4  JSR sub_C433
C - - - - - 0x0004B2 00:C4A2: A0 00     LDY #$00
bra_C4A4_loop:
C - - - - - 0x0004B4 00:C4A4: B1 80     LDA (ram_0080),Y
C - - - - - 0x0004B6 00:C4A6: 9D 00 02  STA ram_oam,X
C - - - - - 0x0004B9 00:C4A9: E8        INX
C - - - - - 0x0004BA 00:C4AA: C8        INY
C - - - - - 0x0004BB 00:C4AB: C0 04     CPY #$04
C - - - - - 0x0004BD 00:C4AD: D0 F5     BNE bra_C4A4_loop
C - - - - - 0x0004BF 00:C4AF: 60        RTS



sub_C4B0:
C - - - - - 0x0004C0 00:C4B0: 20 07 C5  JSR sub_C507
C - - - - - 0x0004C3 00:C4B3: 4C B9 C4  JMP loc_C4B9



sub_C4B6:
C - - - - - 0x0004C6 00:C4B6: 20 CC C4  JSR sub_C4CC
loc_C4B9:
C D 2 - - - 0x0004C9 00:C4B9: A9 1F     LDA #$1F
C - - - - - 0x0004CB 00:C4BB: 8D 15 40  STA $4015
C - - - - - 0x0004CE 00:C4BE: A9 C0     LDA #$C0
C - - - - - 0x0004D0 00:C4C0: 8D 17 40  STA $4017
C - - - - - 0x0004D3 00:C4C3: A9 1E     LDA #$1E
C - - - - - 0x0004D5 00:C4C5: 85 54     STA ram_for_2001
C - - - - - 0x0004D7 00:C4C7: A9 88     LDA #$88
C - - - - - 0x0004D9 00:C4C9: 85 53     STA ram_for_2000
C - - - - - 0x0004DB 00:C4CB: 60        RTS



sub_C4CC:
C - - - - - 0x0004DC 00:C4CC: AD E5 C4  LDA tbl_C4E5
C - - - - - 0x0004DF 00:C4CF: 85 84     STA ram_0084
C - - - - - 0x0004E1 00:C4D1: AD E6 C4  LDA tbl_C4E5 + 1
C - - - - - 0x0004E4 00:C4D4: 85 85     STA ram_0085
C - - - - - 0x0004E6 00:C4D6: A9 00     LDA #< $3F00
C - - - - - 0x0004E8 00:C4D8: 85 80     STA ram_0080
C - - - - - 0x0004EA 00:C4DA: A9 3F     LDA #> $3F00
C - - - - - 0x0004EC 00:C4DC: 85 81     STA ram_0081
C - - - - - 0x0004EE 00:C4DE: A9 20     LDA #$20
C - - - - - 0x0004F0 00:C4E0: 85 82     STA ram_0082
C - - - - - 0x0004F2 00:C4E2: 4C E4 C5  JMP loc_C5E4



tbl_C4E5:
- D 2 - - - 0x0004F5 00:C4E5: E7 C4     .word off_C4E7
off_C4E7:
- D 2 - I - 0x0004F7 00:C4E7: 0F        .byte $0F   ; 
- D 2 - I - 0x0004F8 00:C4E8: 0F        .byte $0F   ; 
- D 2 - I - 0x0004F9 00:C4E9: 30        .byte $30   ; 
- D 2 - I - 0x0004FA 00:C4EA: 30        .byte $30   ; 
- D 2 - I - 0x0004FB 00:C4EB: 0F        .byte $0F   ; 
- D 2 - I - 0x0004FC 00:C4EC: 0F        .byte $0F   ; 
- D 2 - I - 0x0004FD 00:C4ED: 26        .byte $26   ; 
- D 2 - I - 0x0004FE 00:C4EE: 26        .byte $26   ; 
- D 2 - I - 0x0004FF 00:C4EF: 0F        .byte $0F   ; 
- D 2 - I - 0x000500 00:C4F0: 0F        .byte $0F   ; 
- D 2 - I - 0x000501 00:C4F1: 30        .byte $30   ; 
- D 2 - I - 0x000502 00:C4F2: 30        .byte $30   ; 
- D 2 - I - 0x000503 00:C4F3: 0F        .byte $0F   ; 
- D 2 - I - 0x000504 00:C4F4: 0F        .byte $0F   ; 
- D 2 - I - 0x000505 00:C4F5: 30        .byte $30   ; 
- D 2 - I - 0x000506 00:C4F6: 30        .byte $30   ; 
- D 2 - I - 0x000507 00:C4F7: 0F        .byte $0F   ; 
- D 2 - I - 0x000508 00:C4F8: 0F        .byte $0F   ; 
- D 2 - I - 0x000509 00:C4F9: 0F        .byte $0F   ; 
- D 2 - I - 0x00050A 00:C4FA: 30        .byte $30   ; 
- D 2 - I - 0x00050B 00:C4FB: 0F        .byte $0F   ; 
- D 2 - I - 0x00050C 00:C4FC: 16        .byte $16   ; 
- D 2 - I - 0x00050D 00:C4FD: 30        .byte $30   ; 
- D 2 - I - 0x00050E 00:C4FE: 37        .byte $37   ; 
- D 2 - I - 0x00050F 00:C4FF: 0F        .byte $0F   ; 
- D 2 - I - 0x000510 00:C500: 12        .byte $12   ; 
- D 2 - I - 0x000511 00:C501: 15        .byte $15   ; 
- D 2 - I - 0x000512 00:C502: 25        .byte $25   ; 
- D 2 - I - 0x000513 00:C503: 0F        .byte $0F   ; 
- D 2 - I - 0x000514 00:C504: 37        .byte $37   ; 
- D 2 - I - 0x000515 00:C505: 25        .byte $25   ; 
- D 2 - I - 0x000516 00:C506: 12        .byte $12   ; 



sub_C507:
C - - - - - 0x000517 00:C507: 20 0E C5  JSR sub_C50E
C - - - - - 0x00051A 00:C50A: A9 2C     LDA #$2C
C - - - - - 0x00051C 00:C50C: D0 02     BNE bra_C510
sub_C50E:
C - - - - - 0x00051E 00:C50E: A9 20     LDA #$20
bra_C510:
C - - - - - 0x000520 00:C510: 85 81     STA ram_0081
C - - - - - 0x000522 00:C512: A0 04     LDY #$04
C - - - - - 0x000524 00:C514: A9 00     LDA #$00
C - - - - - 0x000526 00:C516: 85 80     STA ram_0080
C - - - - - 0x000528 00:C518: 85 82     STA ram_0082
bra_C51A_loop:
C - - - - - 0x00052A 00:C51A: 20 39 C5  JSR sub_C539
C - - - - - 0x00052D 00:C51D: E6 81     INC ram_0081
C - - - - - 0x00052F 00:C51F: 88        DEY
C - - - - - 0x000530 00:C520: D0 F8     BNE bra_C51A_loop
C - - - - - 0x000532 00:C522: A9 23     LDA #> $23D0
C - - - - - 0x000534 00:C524: A2 D0     LDX #< $23D0
C - - - - - 0x000536 00:C526: 8D 06 20  STA $2006
C - - - - - 0x000539 00:C529: 8E 06 20  STX $2006
C - - - - - 0x00053C 00:C52C: A2 30     LDX #$30
C - - - - - 0x00053E 00:C52E: A9 AA     LDA #$AA
bra_C530_loop:
C - - - - - 0x000540 00:C530: 8D 07 20  STA $2007
C - - - - - 0x000543 00:C533: CA        DEX
C - - - - - 0x000544 00:C534: 10 FA     BPL bra_C530_loop
C - - - - - 0x000546 00:C536: 4C 13 C4  JMP loc_C413



sub_C539:
C - - - - - 0x000549 00:C539: A9 00     LDA #$00
C - - - - - 0x00054B 00:C53B: 20 F4 C5  JSR sub_C5F4_set_2006
bra_C53E:
C - - - - - 0x00054E 00:C53E: 8D 07 20  STA $2007
C - - - - - 0x000551 00:C541: C6 82     DEC ram_0082
C - - - - - 0x000553 00:C543: D0 F9     BNE bra_C53E
C - - - - - 0x000555 00:C545: 60        RTS



sub_C546:
C - - - - - 0x000556 00:C546: A2 01     LDX #$01
C - - - - - 0x000558 00:C548: 8E 16 40  STX $4016
C - - - - - 0x00055B 00:C54B: CA        DEX
C - - - - - 0x00055C 00:C54C: 8E 16 40  STX $4016
C - - - - - 0x00055F 00:C54F: A0 08     LDY #$08
bra_C551:
C - - - - - 0x000561 00:C551: AD 16 40  LDA $4016
C - - - - - 0x000564 00:C554: 85 87     STA ram_0087
C - - - - - 0x000566 00:C556: 4A        LSR
C - - - - - 0x000567 00:C557: 05 87     ORA ram_0087
C - - - - - 0x000569 00:C559: 4A        LSR
C - - - - - 0x00056A 00:C55A: 26 84     ROL ram_0084
C - - - - - 0x00056C 00:C55C: AD 17 40  LDA $4017
C - - - - - 0x00056F 00:C55F: 85 87     STA ram_0087
C - - - - - 0x000571 00:C561: 4A        LSR
C - - - - - 0x000572 00:C562: 05 87     ORA ram_0087
C - - - - - 0x000574 00:C564: 4A        LSR
C - - - - - 0x000575 00:C565: 26 85     ROL ram_0085
C - - - - - 0x000577 00:C567: 88        DEY
C - - - - - 0x000578 00:C568: D0 E7     BNE bra_C551
C - - - - - 0x00057A 00:C56A: A5 05     LDA ram_btn_press
C - - - - - 0x00057C 00:C56C: 29 10     AND #con_btn_Start
C - - - - - 0x00057E 00:C56E: 45 0E     EOR ram_000E
C - - - - - 0x000580 00:C570: 85 0E     STA ram_000E
C - - - - - 0x000582 00:C572: A5 03     LDA ram_0003
C - - - - - 0x000584 00:C574: 29 20     AND #$20
C - - - - - 0x000586 00:C576: F0 1A     BEQ bra_C592
- - - - - - 0x000588 00:C578: A5 03     LDA ram_0003
- - - - - - 0x00058A 00:C57A: 29 F0     AND #$F0
- - - - - - 0x00058C 00:C57C: C9 E0     CMP #$E0
- - - - - - 0x00058E 00:C57E: F0 16     BEQ bra_C596
- - - - - - 0x000590 00:C580: A5 84     LDA ram_0084
- - - - - - 0x000592 00:C582: 20 9C C5  JSR sub_C59C
- - - - - - 0x000595 00:C585: E8        INX
- - - - - - 0x000596 00:C586: B5 84     LDA ram_0084,X
loc_C588:
C D 2 - - - 0x000598 00:C588: A8        TAY
C - - - - - 0x000599 00:C589: 55 07     EOR ram_btn_hold,X
C - - - - - 0x00059B 00:C58B: 35 84     AND ram_0084,X
C - - - - - 0x00059D 00:C58D: 95 05     STA ram_btn_press,X
C - - - - - 0x00059F 00:C58F: 94 07     STY ram_btn_hold,X
C - - - - - 0x0005A1 00:C591: 60        RTS
bra_C592:
C - - - - - 0x0005A2 00:C592: A9 FF     LDA #$FF
C - - - - - 0x0005A4 00:C594: D0 02     BNE bra_C598
bra_C596:
- - - - - - 0x0005A6 00:C596: A9 30     LDA #$30
bra_C598:
C - - - - - 0x0005A8 00:C598: 25 84     AND ram_0084
C - - - - - 0x0005AA 00:C59A: 05 85     ORA ram_0085
sub_C59C:
C - - - - - 0x0005AC 00:C59C: 85 84     STA ram_0084
C - - - - - 0x0005AE 00:C59E: 4C 88 C5  JMP loc_C588



loc_C5A1:
C D 2 - - - 0x0005B1 00:C5A1: A5 05     LDA ram_btn_press
C - - - - - 0x0005B3 00:C5A3: 29 30     AND #con_btn_Start + con_btn_Select
C - - - - - 0x0005B5 00:C5A5: F0 28     BEQ bra_C5CF_RTS
C - - - - - 0x0005B7 00:C5A7: A2 00     LDX #$00
C - - - - - 0x0005B9 00:C5A9: 86 02     STX ram_0002
C - - - - - 0x0005BB 00:C5AB: A6 00     LDX ram_0000
C - - - - - 0x0005BD 00:C5AD: CA        DEX
C - - - - - 0x0005BE 00:C5AE: D0 20     BNE bra_C5D0
C - - - - - 0x0005C0 00:C5B0: 29 20     AND #$20
C - - - - - 0x0005C2 00:C5B2: D0 10     BNE bra_C5C4
C - - - - - 0x0005C4 00:C5B4: A9 00     LDA #$00
C - - - - - 0x0005C6 00:C5B6: 85 0E     STA ram_000E
C - - - - - 0x0005C8 00:C5B8: A6 50     LDX ram_game_mode
C - - - - - 0x0005CA 00:C5BA: BD E2 C5  LDA tbl_C5E2,X
C - - - - - 0x0005CD 00:C5BD: 85 03     STA ram_0003
C - - - - - 0x0005CF 00:C5BF: A9 03     LDA #$03
C - - - - - 0x0005D1 00:C5C1: 4C 28 C3  JMP loc_C328
bra_C5C4:
C - - - - - 0x0005D4 00:C5C4: E6 50     INC ram_game_mode
C - - - - - 0x0005D6 00:C5C6: A9 02     LDA #$02
C - - - - - 0x0005D8 00:C5C8: 38        SEC
C - - - - - 0x0005D9 00:C5C9: E5 50     SBC ram_game_mode
C - - - - - 0x0005DB 00:C5CB: D0 02     BNE bra_C5CF_RTS
C - - - - - 0x0005DD 00:C5CD: 85 50     STA ram_game_mode
bra_C5CF_RTS:
C - - - - - 0x0005DF 00:C5CF: 60        RTS
bra_C5D0:
C - - - - - 0x0005E0 00:C5D0: 29 10     AND #$10
C - - - - - 0x0005E2 00:C5D2: 85 0E     STA ram_000E
C - - - - - 0x0005E4 00:C5D4: A5 51     LDA ram_0051
C - - - - - 0x0005E6 00:C5D6: 85 54     STA ram_for_2001
C - - - - - 0x0005E8 00:C5D8: A2 00     LDX #$00
C - - - - - 0x0005EA 00:C5DA: 86 00     STX ram_0000
C - - - - - 0x0005EC 00:C5DC: 86 01     STX ram_0001
C - - - - - 0x0005EE 00:C5DE: E8        INX
C - - - - - 0x0005EF 00:C5DF: 86 EC     STX ram_00EC
C - - - - - 0x0005F1 00:C5E1: 60        RTS



tbl_C5E2:   ; bzk optimize, same bytes
- D 2 - - - 0x0005F2 00:C5E2: 40        .byte $40   ; 00 level 1
- D 2 - - - 0x0005F3 00:C5E3: 40        .byte $40   ; 01 level 2



loc_C5E4:
C D 2 - - - 0x0005F4 00:C5E4: 20 F4 C5  JSR sub_C5F4_set_2006
C - - - - - 0x0005F7 00:C5E7: A0 00     LDY #$00
bra_C5E9_loop:
C - - - - - 0x0005F9 00:C5E9: B1 84     LDA (ram_0084),Y
C - - - - - 0x0005FB 00:C5EB: 8D 07 20  STA $2007
C - - - - - 0x0005FE 00:C5EE: C8        INY
C - - - - - 0x0005FF 00:C5EF: C6 82     DEC ram_0082
C - - - - - 0x000601 00:C5F1: D0 F6     BNE bra_C5E9_loop
C - - - - - 0x000603 00:C5F3: 60        RTS



sub_C5F4_set_2006:
C - - - - - 0x000604 00:C5F4: AE 02 20  LDX $2002
C - - - - - 0x000607 00:C5F7: A6 81     LDX ram_0081
C - - - - - 0x000609 00:C5F9: 8E 06 20  STX $2006
C - - - - - 0x00060C 00:C5FC: A6 80     LDX ram_0080
C - - - - - 0x00060E 00:C5FE: 8E 06 20  STX $2006
C - - - - - 0x000611 00:C601: 60        RTS



sub_C602:
C - - - - - 0x000612 00:C602: A2 5D     LDX #$5D
C - - - - - 0x000614 00:C604: A5 03     LDA ram_0003
C - - - - - 0x000616 00:C606: 29 20     AND #$20
C - - - - - 0x000618 00:C608: 08        PHP
C - - - - - 0x000619 00:C609: F0 02     BEQ bra_C60D
- - - - - - 0x00061B 00:C60B: A2 5A     LDX #$5A
bra_C60D:
C - - - - - 0x00061D 00:C60D: A9 00     LDA #$00
bra_C60F:
C - - - - - 0x00061F 00:C60F: 95 00     STA ram_0000,X
C - - - - - 0x000621 00:C611: E8        INX
C - - - - - 0x000622 00:C612: D0 FB     BNE bra_C60F
C - - - - - 0x000624 00:C614: A2 FD     LDX #$FD
bra_C616_loop:
C - - - - - 0x000626 00:C616: BD FA FE  LDA tbl_FFF7 - $FD,X
C - - - - - 0x000629 00:C619: 95 63     STA ram_0063,X
C - - - - - 0x00062B 00:C61B: E8        INX
C - - - - - 0x00062C 00:C61C: D0 F8     BNE bra_C616_loop
C - - - - - 0x00062E 00:C61E: 28        PLP
C - - - - - 0x00062F 00:C61F: D0 01     BNE bra_C622
C - - - - - 0x000631 00:C621: 60        RTS
bra_C622:
- - - - - - 0x000632 00:C622: A2 20     LDX #$20
bra_C624_loop:
- - - - - - 0x000634 00:C624: B5 5F     LDA ram_005F,X
- - - - - - 0x000636 00:C626: 9D FF 00  STA a: ram_00FF,X
- - - - - - 0x000639 00:C629: CA        DEX
- - - - - - 0x00063A 00:C62A: D0 F8     BNE bra_C624_loop
- - - - - - 0x00063C 00:C62C: 60        RTS



sub_C62D:
loc_C62D:
C D 2 - - - 0x00063D 00:C62D: A6 50     LDX ram_game_mode
C - - - - - 0x00063F 00:C62F: BD 5A C6  LDA tbl_C65A,X
C - - - - - 0x000642 00:C632: 8D 00 02  STA ram_spr_Y
C - - - - - 0x000645 00:C635: A9 ED     LDA #$ED
C - - - - - 0x000647 00:C637: 8D 01 02  STA ram_spr_T
C - - - - - 0x00064A 00:C63A: A9 00     LDA #$00
C - - - - - 0x00064C 00:C63C: 8D 02 02  STA ram_spr_A
C - - - - - 0x00064F 00:C63F: A9 5C     LDA #$5C
C - - - - - 0x000651 00:C641: 8D 03 02  STA ram_spr_X
C - - - - - 0x000654 00:C644: BD 5A C6  LDA tbl_C65A,X
C - - - - - 0x000657 00:C647: 8D 04 02  STA ram_spr_Y + $04
C - - - - - 0x00065A 00:C64A: A9 EE     LDA #$EE
C - - - - - 0x00065C 00:C64C: 8D 05 02  STA ram_spr_T + $04
C - - - - - 0x00065F 00:C64F: A9 00     LDA #$00
C - - - - - 0x000661 00:C651: 8D 06 02  STA ram_spr_A + $04
C - - - - - 0x000664 00:C654: A9 64     LDA #$64
C - - - - - 0x000666 00:C656: 8D 07 02  STA ram_spr_X + $04
C - - - - - 0x000669 00:C659: 60        RTS



tbl_C65A:
- D 2 - - - 0x00066A 00:C65A: B8        .byte $B8   ; 00
- D 2 - - - 0x00066B 00:C65B: C8        .byte $C8   ; 01



loc_C65C:
C D 2 - - - 0x00066C 00:C65C: A9 18     LDA #$18
C - - - - - 0x00066E 00:C65E: 20 57 C4  JSR sub_C457
C - - - - - 0x000671 00:C661: A9 19     LDA #$19
C - - - - - 0x000673 00:C663: 4C 57 C4  JMP loc_C457



sub_C666_RTS:
C - - - - - 0x000676 00:C666: 60        RTS



sub_C667:
loc_C667:
C - - - - - 0x000677 00:C667: A9 13     LDA #$13
C - - - - - 0x000679 00:C669: 20 9F C4  JSR sub_C49F
C - - - - - 0x00067C 00:C66C: A9 1C     LDA #$1C
C - - - - - 0x00067E 00:C66E: 20 9F C4  JSR sub_C49F
C - - - - - 0x000681 00:C671: A9 1D     LDA #$1D
C - - - - - 0x000683 00:C673: 20 9F C4  JSR sub_C49F
C - - - - - 0x000686 00:C676: A9 17     LDA #$17
C - - - - - 0x000688 00:C678: 20 57 C4  JSR sub_C457
C - - - - - 0x00068B 00:C67B: A5 03     LDA ram_0003
C - - - - - 0x00068D 00:C67D: 65 03     ADC ram_0003
C - - - - - 0x00068F 00:C67F: 10 04     BPL bra_C685
C - - - - - 0x000691 00:C681: 29 40     AND #$40
C - - - - - 0x000693 00:C683: F0 07     BEQ bra_C68C
bra_C685:
C - - - - - 0x000695 00:C685: A5 03     LDA ram_0003
C - - - - - 0x000697 00:C687: 49 80     EOR #$80
C - - - - - 0x000699 00:C689: 20 97 C6  JSR sub_C697
bra_C68C:
C - - - - - 0x00069C 00:C68C: 20 02 C7  JSR sub_C702
C - - - - - 0x00069F 00:C68F: 20 CD C6  JSR sub_C6CD_display_stage_in_hud
C - - - - - 0x0006A2 00:C692: 20 A6 C6  JSR sub_C6A6_display_score_in_hud
ofs_002_C695_01:
C - - - - - 0x0006A5 00:C695: A5 03     LDA ram_0003
sub_C697:
C - - - - - 0x0006A7 00:C697: 30 1A     BMI bra_C6B3
C - - - - - 0x0006A9 00:C699: A9 C3     LDA #< $20C3
C - - - - - 0x0006AB 00:C69B: 85 80     STA ram_0080
C - - - - - 0x0006AD 00:C69D: A9 20     LDA #> $20C3
C - - - - - 0x0006AF 00:C69F: 85 81     STA ram_0081
C - - - - - 0x0006B1 00:C6A1: A0 5D     LDY #$5D
C - - - - - 0x0006B3 00:C6A3: 4C BD C6  JMP loc_C6BD_write_hi_score



sub_C6A6_display_score_in_hud:
ofs_002_C6A6_00_display_score_in_hud:
C - - - - - 0x0006B6 00:C6A6: A9 CC     LDA #< $20CC
C - - - - - 0x0006B8 00:C6A8: 85 80     STA ram_0080
C - - - - - 0x0006BA 00:C6AA: A9 20     LDA #> $20CC
C - - - - - 0x0006BC 00:C6AC: 85 81     STA ram_0081
C - - - - - 0x0006BE 00:C6AE: A0 57     LDY #< ram_hiscore
C - - - - - 0x0006C0 00:C6B0: 4C BD C6  JMP loc_C6BD_write_hi_score
bra_C6B3:
C - - - - - 0x0006C3 00:C6B3: A9 C3     LDA #< $20C3
C - - - - - 0x0006C5 00:C6B5: 85 80     STA ram_0080
C - - - - - 0x0006C7 00:C6B7: A9 20     LDA #> $20C3
C - - - - - 0x0006C9 00:C6B9: 85 81     STA ram_0081
C - - - - - 0x0006CB 00:C6BB: A0 5A     LDY #< ram_005A
loc_C6BD_write_hi_score:
C D 2 - - - 0x0006CD 00:C6BD: 20 F4 C5  JSR sub_C5F4_set_2006
C - - - - - 0x0006D0 00:C6C0: A2 03     LDX #$03
bra_C6C2_loop:
C - - - - - 0x0006D2 00:C6C2: B9 02 00  LDA ram_0002,Y  ; 0057-0059 or 005A-005C
C - - - - - 0x0006D5 00:C6C5: 20 DA C6  JSR sub_C6DA_write_score_to_ppu
C - - - - - 0x0006D8 00:C6C8: 88        DEY
C - - - - - 0x0006D9 00:C6C9: CA        DEX
C - - - - - 0x0006DA 00:C6CA: D0 F6     BNE bra_C6C2_loop
ofs_002_C6CC_02_RTS:
ofs_002_C6CC_03_RTS:
C - - - - - 0x0006DC 00:C6CC: 60        RTS



sub_C6CD_display_stage_in_hud:
C - - - - - 0x0006DD 00:C6CD: A9 BB     LDA #< $20BB
C - - - - - 0x0006DF 00:C6CF: 85 80     STA ram_0080
C - - - - - 0x0006E1 00:C6D1: A9 20     LDA #> $20BB
C - - - - - 0x0006E3 00:C6D3: 85 81     STA ram_0081
C - - - - - 0x0006E5 00:C6D5: A5 61     LDA ram_0061
sub_C6D7:
C - - - - - 0x0006E7 00:C6D7: 20 F4 C5  JSR sub_C5F4_set_2006
sub_C6DA_write_score_to_ppu:
C - - - - - 0x0006EA 00:C6DA: 48        PHA
C - - - - - 0x0006EB 00:C6DB: 4A        LSR
C - - - - - 0x0006EC 00:C6DC: 4A        LSR
C - - - - - 0x0006ED 00:C6DD: 4A        LSR
C - - - - - 0x0006EE 00:C6DE: 4A        LSR
C - - - - - 0x0006EF 00:C6DF: 20 E3 C6  JSR sub_C6E3_write_tile_number
C - - - - - 0x0006F2 00:C6E2: 68        PLA
sub_C6E3_write_tile_number:     ; tiles 65+
C - - - - - 0x0006F3 00:C6E3: 29 0F     AND #$0F
C - - - - - 0x0006F5 00:C6E5: 09 60     ORA #$60
C - - - - - 0x0006F7 00:C6E7: 18        CLC
C - - - - - 0x0006F8 00:C6E8: 69 05     ADC #$05
C - - - - - 0x0006FA 00:C6EA: 8D 07 20  STA $2007
bra_C6ED_RTS:
C - - - - - 0x0006FD 00:C6ED: 60        RTS



loc_C6EE:
C D 2 - - - 0x0006FE 00:C6EE: A5 03     LDA ram_0003
C - - - - - 0x000700 00:C6F0: 6A        ROR
C - - - - - 0x000701 00:C6F1: B0 FA     BCS bra_C6ED_RTS
C - - - - - 0x000703 00:C6F3: A5 09     LDA ram_0009
C - - - - - 0x000705 00:C6F5: 29 03     AND #$03
C - - - - - 0x000707 00:C6F7: 20 E9 D0  JSR sub_D0E9_read_pointers_after_JSR
- D 2 - I - 0x00070A 00:C6FA: A6 C6     .word ofs_002_C6A6_00_display_score_in_hud
- D 2 - I - 0x00070C 00:C6FC: 95 C6     .word ofs_002_C695_01
- D 2 - I - 0x00070E 00:C6FE: CC C6     .word ofs_002_C6CC_02_RTS
- D 2 - I - 0x000710 00:C700: CC C6     .word ofs_002_C6CC_03_RTS



sub_C702:
loc_C702:
C D 2 - - - 0x000712 00:C702: A4 60     LDY ram_lives
C - - - - - 0x000714 00:C704: F0 16     BEQ bra_C71C_RTS
C - - - - - 0x000716 00:C706: C0 01     CPY #$01
C - - - - - 0x000718 00:C708: F0 0D     BEQ bra_C717
C - - - - - 0x00071A 00:C70A: A5 60     LDA ram_lives
C - - - - - 0x00071C 00:C70C: C9 05     CMP #$05
C - - - - - 0x00071E 00:C70E: B0 0C     BCS bra_C71C_RTS
C - - - - - 0x000720 00:C710: 18        CLC
C - - - - - 0x000721 00:C711: 69 23     ADC #$23
C - - - - - 0x000723 00:C713: 20 57 C4  JSR sub_C457
C - - - - - 0x000726 00:C716: 60        RTS
bra_C717:
C - - - - - 0x000727 00:C717: A9 24     LDA #$24
C - - - - - 0x000729 00:C719: 20 9F C4  JSR sub_C49F
bra_C71C_RTS:
C - - - - - 0x00072C 00:C71C: 60        RTS


; bzk garbage
- - - - - - 0x00072D 00:C71D: 20 AB C3  JSR sub_C3AB
- - - - - - 0x000730 00:C720: A4 03     LDY ram_0003
- - - - - - 0x000732 00:C722: 30 01     BMI bra_C725
- - - - - - 0x000734 00:C724: 60        RTS
bra_C725:
- - - - - - 0x000735 00:C725: A0 32     LDY #$32
- - - - - - 0x000737 00:C727: A9 07     LDA #$07
- - - - - - 0x000739 00:C729: A2 80     LDX #$80
- - - - - - 0x00073B 00:C72B: 20 F2 C3  JSR sub_C3F2
- - - - - - 0x00073E 00:C72E: 20 F4 C5  JSR sub_C5F4_set_2006
- - - - - - 0x000741 00:C731: 8C 07 20  STY $2007
- - - - - - 0x000744 00:C734: 60        RTS



sub_C735:
loc_C735:
C D 2 - - - 0x000745 00:C735: A9 00     LDA #$00
C - - - - - 0x000747 00:C737: 85 89     STA ram_0089
C - - - - - 0x000749 00:C739: A5 03     LDA ram_0003
C - - - - - 0x00074B 00:C73B: 0A        ASL
C - - - - - 0x00074C 00:C73C: 30 01     BMI bra_C73F
C - - - - - 0x00074E 00:C73E: 60        RTS
bra_C73F:
C - - - - - 0x00074F 00:C73F: A9 5D     LDA #< ram_score
C - - - - - 0x000751 00:C741: 90 02     BCC bra_C745
- - - - - - 0x000753 00:C743: A9 5A     LDA #< ram_005A
bra_C745:
C - - - - - 0x000755 00:C745: 85 8C     STA ram_008C
C - - - - - 0x000757 00:C747: A0 00     LDY #$00
C - - - - - 0x000759 00:C749: 84 8D     STY ram_008D
C - - - - - 0x00075B 00:C74B: A2 03     LDX #$03
C - - - - - 0x00075D 00:C74D: 18        CLC
bra_C74E_loop:
C - - - - - 0x00075E 00:C74E: B1 8C     LDA (ram_008C),Y
C - - - - - 0x000760 00:C750: 20 69 C7  JSR sub_C769
C - - - - - 0x000763 00:C753: 91 8C     STA (ram_008C),Y
C - - - - - 0x000765 00:C755: C8        INY
C - - - - - 0x000766 00:C756: CA        DEX
C - - - - - 0x000767 00:C757: D0 F5     BNE bra_C74E_loop
C - - - - - 0x000769 00:C759: 90 38     BCC bra_C793_not_overflow
C - - - - - 0x00076B 00:C75B: A2 02     LDX #$02
C - - - - - 0x00076D 00:C75D: A9 99     LDA #$99
bra_C75F_loop:
C - - - - - 0x00076F 00:C75F: 95 57     STA ram_hiscore,X
C - - - - - 0x000771 00:C761: CA        DEX
C - - - - - 0x000772 00:C762: 10 FB     BPL bra_C75F_loop
C - - - - - 0x000774 00:C764: 60        RTS



sub_C765:
C - - - - - 0x000775 00:C765: 86 88     STX ram_0088
C - - - - - 0x000777 00:C767: A2 00     LDX #$00
sub_C769:
C - - - - - 0x000779 00:C769: 85 8F     STA ram_008F
C - - - - - 0x00077B 00:C76B: 29 F0     AND #$F0
C - - - - - 0x00077D 00:C76D: 85 8E     STA ram_008E
C - - - - - 0x00077F 00:C76F: 45 8F     EOR ram_008F
C - - - - - 0x000781 00:C771: 85 8F     STA ram_008F
C - - - - - 0x000783 00:C773: B5 88     LDA ram_0088,X
C - - - - - 0x000785 00:C775: 29 0F     AND #$0F
C - - - - - 0x000787 00:C777: 65 8F     ADC ram_008F
C - - - - - 0x000789 00:C779: C9 0A     CMP #$0A
C - - - - - 0x00078B 00:C77B: 90 02     BCC bra_C77F
C - - - - - 0x00078D 00:C77D: 69 05     ADC #$05
bra_C77F:
C - - - - - 0x00078F 00:C77F: 65 8E     ADC ram_008E
C - - - - - 0x000791 00:C781: 85 8E     STA ram_008E
C - - - - - 0x000793 00:C783: B5 88     LDA ram_0088,X
C - - - - - 0x000795 00:C785: 29 F0     AND #$F0
C - - - - - 0x000797 00:C787: 65 8E     ADC ram_008E
C - - - - - 0x000799 00:C789: B0 04     BCS bra_C78F
C - - - - - 0x00079B 00:C78B: C9 A0     CMP #$A0
C - - - - - 0x00079D 00:C78D: 90 03     BCC bra_C792_RTS
bra_C78F:
C - - - - - 0x00079F 00:C78F: E9 A0     SBC #$A0
C - - - - - 0x0007A1 00:C791: 38        SEC
bra_C792_RTS:
C - - - - - 0x0007A2 00:C792: 60        RTS



bra_C793_not_overflow:
C - - - - - 0x0007A3 00:C793: C5 62     CMP ram_0062
C - - - - - 0x0007A5 00:C795: 90 0C     BCC bra_C7A3
C - - - - - 0x0007A7 00:C797: E6 60     INC ram_lives
C - - - - - 0x0007A9 00:C799: A2 FF     LDX #$FF
C - - - - - 0x0007AB 00:C79B: C9 10     CMP #$10
C - - - - - 0x0007AD 00:C79D: B0 02     BCS bra_C7A1
C - - - - - 0x0007AF 00:C79F: A2 10     LDX #$10
bra_C7A1:
C - - - - - 0x0007B1 00:C7A1: 86 62     STX ram_0062
bra_C7A3:
C - - - - - 0x0007B3 00:C7A3: A0 02     LDY #$02
bra_C7A5_loop:
C - - - - - 0x0007B5 00:C7A5: B9 57 00  LDA ram_hiscore,Y
C - - - - - 0x0007B8 00:C7A8: D1 8C     CMP (ram_008C),Y
C - - - - - 0x0007BA 00:C7AA: 90 05     BCC bra_C7B1
C - - - - - 0x0007BC 00:C7AC: D0 0D     BNE bra_C7BB
C - - - - - 0x0007BE 00:C7AE: 88        DEY
C - - - - - 0x0007BF 00:C7AF: 10 F4     BPL bra_C7A5_loop
bra_C7B1:
C - - - - - 0x0007C1 00:C7B1: A0 02     LDY #$02
bra_C7B3_loop:
C - - - - - 0x0007C3 00:C7B3: B1 8C     LDA (ram_008C),Y
C - - - - - 0x0007C5 00:C7B5: 99 57 00  STA ram_hiscore,Y
C - - - - - 0x0007C8 00:C7B8: 88        DEY
C - - - - - 0x0007C9 00:C7B9: 10 F8     BPL bra_C7B3_loop
bra_C7BB:
C - - - - - 0x0007CB 00:C7BB: 4C 02 C7  JMP loc_C702


; bzk garbage
- - - - - - 0x0007CE 00:C7BE: A9 02     LDA #$02
- - - - - - 0x0007D0 00:C7C0: 85 90     STA ram_0090
- - - - - - 0x0007D2 00:C7C2: 4C 67 C6  JMP loc_C667



sub_C7C5:
C - - - - - 0x0007D5 00:C7C5: A9 01     LDA #$01
C - - - - - 0x0007D7 00:C7C7: 85 66     STA ram_0066
C - - - - - 0x0007D9 00:C7C9: 20 D3 C7  JSR sub_C7D3
C - - - - - 0x0007DC 00:C7CC: A5 6C     LDA ram_006C
C - - - - - 0x0007DE 00:C7CE: D0 02     BNE bra_C7D2_RTS
C - - - - - 0x0007E0 00:C7D0: E6 0A     INC ram_000A
bra_C7D2_RTS:
C - - - - - 0x0007E2 00:C7D2: 60        RTS



sub_C7D3:
ofs_000_C7D3_05:
C - - - - - 0x0007E3 00:C7D3: A5 67     LDA ram_0067
C - - - - - 0x0007E5 00:C7D5: D0 03     BNE bra_C7DA_RTS
C - - - - - 0x0007E7 00:C7D7: 20 DD C7  JSR sub_C7DD
bra_C7DA_RTS:
C - - - - - 0x0007EA 00:C7DA: 60        RTS


; bzk garbage
- - - - - - 0x0007EB 00:C7DB: 60        RTS


; bzk garbage
- - - - - - 0x0007EC 00:C7DC: 00        .byte $00   ; 



sub_C7DD:
C - - - - - 0x0007ED 00:C7DD: A2 01     LDX #$01
C - - - - - 0x0007EF 00:C7DF: A5 BB     LDA ram_pos_X_player
C - - - - - 0x0007F1 00:C7E1: 38        SEC
C - - - - - 0x0007F2 00:C7E2: E5 CB     SBC ram_00CB
C - - - - - 0x0007F4 00:C7E4: B0 02     BCS bra_C7E8
C - - - - - 0x0007F6 00:C7E6: A2 00     LDX #$00
bra_C7E8:
C - - - - - 0x0007F8 00:C7E8: 8A        TXA
C - - - - - 0x0007F9 00:C7E9: 85 CF     STA ram_00CF
C - - - - - 0x0007FB 00:C7EB: 20 98 D9  JSR sub_D998
C - - - - - 0x0007FE 00:C7EE: A5 DD     LDA ram_hit_timer
C - - - - - 0x000800 00:C7F0: C9 18     CMP #$18
C - - - - - 0x000802 00:C7F2: 90 06     BCC bra_C7FA
C - - - - - 0x000804 00:C7F4: 20 9F D3  JSR sub_D39F
C - - - - - 0x000807 00:C7F7: 20 FF D0  JSR sub_D0FF
bra_C7FA:
C - - - - - 0x00080A 00:C7FA: A5 E6     LDA ram_00E6
C - - - - - 0x00080C 00:C7FC: C9 16     CMP #$16
C - - - - - 0x00080E 00:C7FE: B0 11     BCS bra_C811
C - - - - - 0x000810 00:C800: E6 E6     INC ram_00E6
C - - - - - 0x000812 00:C802: A2 02     LDX #$02
C - - - - - 0x000814 00:C804: A5 E6     LDA ram_00E6
C - - - - - 0x000816 00:C806: 4A        LSR
C - - - - - 0x000817 00:C807: B0 02     BCS bra_C80B
C - - - - - 0x000819 00:C809: A2 FE     LDX #$FE
bra_C80B:
C - - - - - 0x00081B 00:C80B: 8A        TXA
C - - - - - 0x00081C 00:C80C: 18        CLC
C - - - - - 0x00081D 00:C80D: 65 BB     ADC ram_pos_X_player
C - - - - - 0x00081F 00:C80F: 85 BB     STA ram_pos_X_player
bra_C811:
C - - - - - 0x000821 00:C811: AD 02 07  LDA ram_0702
C - - - - - 0x000824 00:C814: C9 04     CMP #$04
C - - - - - 0x000826 00:C816: B0 13     BCS bra_C82B
C - - - - - 0x000828 00:C818: EE 02 07  INC ram_0702
C - - - - - 0x00082B 00:C81B: A2 08     LDX #$08
C - - - - - 0x00082D 00:C81D: AD 02 07  LDA ram_0702
C - - - - - 0x000830 00:C820: 4A        LSR
C - - - - - 0x000831 00:C821: B0 02     BCS bra_C825
C - - - - - 0x000833 00:C823: A2 F8     LDX #$F8
bra_C825:
C - - - - - 0x000835 00:C825: 8A        TXA
C - - - - - 0x000836 00:C826: 18        CLC
C - - - - - 0x000837 00:C827: 65 71     ADC ram_0071
C - - - - - 0x000839 00:C829: 85 71     STA ram_0071
bra_C82B:
C - - - - - 0x00083B 00:C82B: 20 33 D7  JSR sub_D733
C - - - - - 0x00083E 00:C82E: 20 29 DB  JSR sub_DB29
C - - - - - 0x000841 00:C831: 20 93 DA  JSR sub_DA93
C - - - - - 0x000844 00:C834: A5 73     LDA ram_0073
C - - - - - 0x000846 00:C836: D0 12     BNE bra_C84A
C - - - - - 0x000848 00:C838: A5 0B     LDA ram_000B
C - - - - - 0x00084A 00:C83A: C9 01     CMP #$01
C - - - - - 0x00084C 00:C83C: F0 35     BEQ bra_C873_RTS
C - - - - - 0x00084E 00:C83E: A5 64     LDA ram_0064
C - - - - - 0x000850 00:C840: F0 08     BEQ bra_C84A
C - - - - - 0x000852 00:C842: C9 01     CMP #$01
C - - - - - 0x000854 00:C844: D0 03     BNE bra_C849_RTS
C - - - - - 0x000856 00:C846: 20 CD FB  JSR sub_FBCD
bra_C849_RTS:
C - - - - - 0x000859 00:C849: 60        RTS
bra_C84A:
C - - - - - 0x00085A 00:C84A: A5 09     LDA ram_0009
C - - - - - 0x00085C 00:C84C: 4A        LSR
C - - - - - 0x00085D 00:C84D: B0 25     BCS bra_C874
C - - - - - 0x00085F 00:C84F: A5 73     LDA ram_0073
C - - - - - 0x000861 00:C851: D0 09     BNE bra_C85C
C - - - - - 0x000863 00:C853: A5 DD     LDA ram_hit_timer
C - - - - - 0x000865 00:C855: C9 30     CMP #$30
C - - - - - 0x000867 00:C857: 90 03     BCC bra_C85C
C - - - - - 0x000869 00:C859: 20 9C E4  JSR sub_E49C
bra_C85C:
C - - - - - 0x00086C 00:C85C: A5 64     LDA ram_0064
C - - - - - 0x00086E 00:C85E: D0 13     BNE bra_C873_RTS
C - - - - - 0x000870 00:C860: 20 0E F0  JSR sub_F00E
C - - - - - 0x000873 00:C863: 20 52 EF  JSR sub_EF52
C - - - - - 0x000876 00:C866: A5 D8     LDA ram_00D8
C - - - - - 0x000878 00:C868: F0 06     BEQ bra_C870
C - - - - - 0x00087A 00:C86A: A5 DD     LDA ram_hit_timer
C - - - - - 0x00087C 00:C86C: C9 20     CMP #$20
C - - - - - 0x00087E 00:C86E: 90 03     BCC bra_C873_RTS
bra_C870:
C - - - - - 0x000880 00:C870: 20 BB ED  JSR sub_EDBB
bra_C873_RTS:
C - - - - - 0x000883 00:C873: 60        RTS
bra_C874:
C - - - - - 0x000884 00:C874: A5 ED     LDA ram_00ED
C - - - - - 0x000886 00:C876: D0 0E     BNE bra_C886_RTS
C - - - - - 0x000888 00:C878: AD 02 07  LDA ram_0702
C - - - - - 0x00088B 00:C87B: C9 04     CMP #$04
C - - - - - 0x00088D 00:C87D: B0 07     BCS bra_C886_RTS
C - - - - - 0x00088F 00:C87F: 20 52 EF  JSR sub_EF52
C - - - - - 0x000892 00:C882: 4C BB ED  JMP loc_EDBB


; bzk garbage
- - - - - - 0x000895 00:C885: 60        RTS



bra_C886_RTS:
C - - - - - 0x000896 00:C886: 60        RTS



sub_C887:
C - - - - - 0x000897 00:C887: A5 64     LDA ram_0064
C - - - - - 0x000899 00:C889: D0 43     BNE bra_C8CE
C - - - - - 0x00089B 00:C88B: A5 09     LDA ram_0009
C - - - - - 0x00089D 00:C88D: 4A        LSR
C - - - - - 0x00089E 00:C88E: B0 15     BCS bra_C8A5
C - - - - - 0x0008A0 00:C890: A5 67     LDA ram_0067
C - - - - - 0x0008A2 00:C892: D0 10     BNE bra_C8A4_RTS
C - - - - - 0x0008A4 00:C894: 20 8A F0  JSR sub_F08A
C - - - - - 0x0008A7 00:C897: A5 68     LDA ram_enemy_type
C - - - - - 0x0008A9 00:C899: C9 02     CMP #$02
C - - - - - 0x0008AB 00:C89B: F0 04     BEQ bra_C8A1
C - - - - - 0x0008AD 00:C89D: C9 04     CMP #$04
C - - - - - 0x0008AF 00:C89F: D0 03     BNE bra_C8A4_RTS
bra_C8A1:
C - - - - - 0x0008B1 00:C8A1: 20 48 F1  JSR sub_F148
bra_C8A4_RTS:
C - - - - - 0x0008B4 00:C8A4: 60        RTS
bra_C8A5:
C - - - - - 0x0008B5 00:C8A5: A5 ED     LDA ram_00ED
C - - - - - 0x0008B7 00:C8A7: D0 13     BNE bra_C8BC
C - - - - - 0x0008B9 00:C8A9: AD 02 07  LDA ram_0702
C - - - - - 0x0008BC 00:C8AC: C9 04     CMP #$04
C - - - - - 0x0008BE 00:C8AE: B0 0C     BCS bra_C8BC
C - - - - - 0x0008C0 00:C8B0: 20 8A F0  JSR sub_F08A
C - - - - - 0x0008C3 00:C8B3: A5 68     LDA ram_enemy_type
C - - - - - 0x0008C5 00:C8B5: C9 02     CMP #$02
C - - - - - 0x0008C7 00:C8B7: D0 EB     BNE bra_C8A4_RTS
C - - - - - 0x0008C9 00:C8B9: 4C 48 F1  JMP loc_F148
bra_C8BC:
C - - - - - 0x0008CC 00:C8BC: 20 EF F0  JSR sub_F0EF
C - - - - - 0x0008CF 00:C8BF: A5 9C     LDA ram_009C
C - - - - - 0x0008D1 00:C8C1: C9 04     CMP #$04
C - - - - - 0x0008D3 00:C8C3: A5 EF     LDA ram_00EF
C - - - - - 0x0008D5 00:C8C5: C9 01     CMP #$01
C - - - - - 0x0008D7 00:C8C7: D0 05     BNE bra_C8CE
C - - - - - 0x0008D9 00:C8C9: A9 A8     LDA #$A8
C - - - - - 0x0008DB 00:C8CB: 20 AB C3  JSR sub_C3AB
bra_C8CE:
C - - - - - 0x0008DE 00:C8CE: A6 D5     LDX ram_00D5
C - - - - - 0x0008E0 00:C8D0: F0 25     BEQ bra_C8F7
C - - - - - 0x0008E2 00:C8D2: CA        DEX
C - - - - - 0x0008E3 00:C8D3: F0 18     BEQ bra_C8ED
C - - - - - 0x0008E5 00:C8D5: CA        DEX
C - - - - - 0x0008E6 00:C8D6: D0 1F     BNE bra_C8F7
C - - - - - 0x0008E8 00:C8D8: A9 29     LDA #$29
C - - - - - 0x0008EA 00:C8DA: 20 AB C3  JSR sub_C3AB
C - - - - - 0x0008ED 00:C8DD: A9 56     LDA #< $2356
C - - - - - 0x0008EF 00:C8DF: 85 80     STA ram_0080
C - - - - - 0x0008F1 00:C8E1: A9 23     LDA #> $2356
C - - - - - 0x0008F3 00:C8E3: 85 81     STA ram_0081
C - - - - - 0x0008F5 00:C8E5: A5 B1     LDA ram_00B1
C - - - - - 0x0008F7 00:C8E7: 20 D7 C6  JSR sub_C6D7
C - - - - - 0x0008FA 00:C8EA: 4C F2 C8  JMP loc_C8F2
bra_C8ED:
C - - - - - 0x0008FD 00:C8ED: A9 28     LDA #$28
C - - - - - 0x0008FF 00:C8EF: 20 AB C3  JSR sub_C3AB
loc_C8F2:
C D 2 - - - 0x000902 00:C8F2: A9 00     LDA #$00
C - - - - - 0x000904 00:C8F4: 85 D5     STA ram_00D5
C - - - - - 0x000906 00:C8F6: 60        RTS
bra_C8F7:
C - - - - - 0x000907 00:C8F7: A5 64     LDA ram_0064
C - - - - - 0x000909 00:C8F9: D0 A6     BNE bra_C8A1
C - - - - - 0x00090B 00:C8FB: A9 23     LDA #> $2345
C - - - - - 0x00090D 00:C8FD: 8D 06 20  STA $2006
C - - - - - 0x000910 00:C900: A9 45     LDA #< $2345
C - - - - - 0x000912 00:C902: 8D 06 20  STA $2006
C - - - - - 0x000915 00:C905: A0 00     LDY #$00
bra_C907_loop:
C - - - - - 0x000917 00:C907: B9 40 03  LDA ram_0340,Y
C - - - - - 0x00091A 00:C90A: 8D 07 20  STA $2007
C - - - - - 0x00091D 00:C90D: C8        INY
C - - - - - 0x00091E 00:C90E: C0 09     CPY #$09
C - - - - - 0x000920 00:C910: D0 F5     BNE bra_C907_loop
C - - - - - 0x000922 00:C912: A9 23     LDA #> $2352
C - - - - - 0x000924 00:C914: 8D 06 20  STA $2006
C - - - - - 0x000927 00:C917: A9 52     LDA #< $2352
C - - - - - 0x000929 00:C919: 8D 06 20  STA $2006
C - - - - - 0x00092C 00:C91C: A0 00     LDY #$00
bra_C91E_loop:
C - - - - - 0x00092E 00:C91E: B9 31 03  LDA ram_0331,Y
C - - - - - 0x000931 00:C921: 8D 07 20  STA $2007
C - - - - - 0x000934 00:C924: C8        INY
C - - - - - 0x000935 00:C925: C0 09     CPY #$09
C - - - - - 0x000937 00:C927: D0 F5     BNE bra_C91E_loop
C - - - - - 0x000939 00:C929: 60        RTS



sub_C92A:
C - - - - - 0x00093A 00:C92A: A2 00     LDX #$00
C - - - - - 0x00093C 00:C92C: A0 07     LDY #$07
C - - - - - 0x00093E 00:C92E: D0 28     BNE bra_C958


; bzk garbage
- - - - - - 0x000940 00:C930: A2 54     LDX #$54
- - - - - - 0x000942 00:C932: A0 08     LDY #$08
- - - - - - 0x000944 00:C934: D0 22     BNE bra_C958


; bzk garbage
- - - - - - 0x000946 00:C936: A2 6C     LDX #$6C
- - - - - - 0x000948 00:C938: A0 05     LDY #$05
- - - - - - 0x00094A 00:C93A: D0 1C     BNE bra_C958



tbl_C93C:
- D 2 - - - 0x00094C 00:C93C: B0        .byte $B0   ; 00 level 1
- D 2 - - - 0x00094D 00:C93D: C8        .byte $C8   ; 01 level 2



loc_C93E:
C D 2 - - - 0x00094E 00:C93E: A6 50     LDX ram_game_mode
C - - - - - 0x000950 00:C940: BD 3C C9  LDA tbl_C93C,X
C - - - - - 0x000953 00:C943: A0 06     LDY #$06
C - - - - - 0x000955 00:C945: AA        TAX
C - - - - - 0x000956 00:C946: D0 10     BNE bra_C958
- - - - - - 0x000958 00:C948: A2 54     LDX #$54
- - - - - - 0x00095A 00:C94A: A0 05     LDY #$05
- - - - - - 0x00095C 00:C94C: D0 0A     BNE bra_C958
- - - - - - 0x00095E 00:C94E: A2 00     LDX #$00
- - - - - - 0x000960 00:C950: A0 03     LDY #$03
- - - - - - 0x000962 00:C952: D0 04     BNE bra_C958
sub_C954:
C - - - - - 0x000964 00:C954: A2 54     LDX #$54
C - - - - - 0x000966 00:C956: A0 09     LDY #$09
bra_C958:
loc_C958_hide_all_sprites:
C D 2 - - - 0x000968 00:C958: A9 F4     LDA #$F4
bra_C95A_loop:
C - - - - - 0x00096A 00:C95A: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x00096D 00:C95D: E8        INX
C - - - - - 0x00096E 00:C95E: E8        INX
C - - - - - 0x00096F 00:C95F: E8        INX
C - - - - - 0x000970 00:C960: E8        INX
C - - - - - 0x000971 00:C961: 88        DEY
C - - - - - 0x000972 00:C962: D0 F6     BNE bra_C95A_loop
C - - - - - 0x000974 00:C964: 60        RTS



loc_C965:
C D 2 - - - 0x000975 00:C965: 20 87 C8  JSR sub_C887
C - - - - - 0x000978 00:C968: 60        RTS



_off003_C969_2F:
- D 2 - I - 0x000979 00:C969: 44        .byte $44   ; 
- D 2 - I - 0x00097A 00:C96A: 23        .byte $23   ; 
- D 2 - I - 0x00097B 00:C96B: 00        .byte $00   ; 
- D 2 - I - 0x00097C 00:C96C: 00        .byte $00   ; 
- D 2 - I - 0x00097D 00:C96D: 00        .byte $00   ; 
- D 2 - I - 0x00097E 00:C96E: 00        .byte $00   ; 
- D 2 - I - 0x00097F 00:C96F: 00        .byte $00   ; 
- D 2 - I - 0x000980 00:C970: 00        .byte $00   ; 
- D 2 - I - 0x000981 00:C971: 00        .byte $00   ; 
- D 2 - I - 0x000982 00:C972: 00        .byte $00   ; 
- D 2 - I - 0x000983 00:C973: 00        .byte $00   ; 
- D 2 - I - 0x000984 00:C974: 00        .byte $00   ; 
- D 2 - I - 0x000985 00:C975: F0        .byte $F0   ; 
- D 2 - I - 0x000986 00:C976: 00        .byte $00   ; 
- D 2 - I - 0x000987 00:C977: 00        .byte $00   ; 
- D 2 - I - 0x000988 00:C978: F0        .byte $F0   ; 
- D 2 - I - 0x000989 00:C979: 00        .byte $00   ; 
- D 2 - I - 0x00098A 00:C97A: 00        .byte $00   ; 
- D 2 - I - 0x00098B 00:C97B: 00        .byte $00   ; 
- D 2 - I - 0x00098C 00:C97C: 00        .byte $00   ; 
- D 2 - I - 0x00098D 00:C97D: 00        .byte $00   ; 
- D 2 - I - 0x00098E 00:C97E: 00        .byte $00   ; 
- D 2 - I - 0x00098F 00:C97F: 00        .byte $00   ; 
- D 2 - I - 0x000990 00:C980: 00        .byte $00   ; 
- D 2 - I - 0x000991 00:C981: 00        .byte $00   ; 
- D 2 - I - 0x000992 00:C982: 00        .byte $00   ; 
- D 2 - I - 0x000993 00:C983: FE        .byte $FE   ; 
- D 2 - I - 0x000994 00:C984: 64        .byte $64   ; 
- D 2 - I - 0x000995 00:C985: 23        .byte $23   ; 
- D 2 - I - 0x000996 00:C986: 00        .byte $00   ; 
- D 2 - I - 0x000997 00:C987: 00        .byte $00   ; 
- D 2 - I - 0x000998 00:C988: 00        .byte $00   ; 
- D 2 - I - 0x000999 00:C989: 00        .byte $00   ; 
- D 2 - I - 0x00099A 00:C98A: 00        .byte $00   ; 
- D 2 - I - 0x00099B 00:C98B: FF        .byte $FF   ; 



_off003_C98C_08:
- D 2 - I - 0x00099C 00:C98C: 8E        .byte $8E   ; 
- D 2 - I - 0x00099D 00:C98D: 21        .byte $21   ; 
- D 2 - I - 0x00099E 00:C98E: F0        .byte $F0   ; 
- D 2 - I - 0x00099F 00:C98F: 00        .byte $00   ; 
- D 2 - I - 0x0009A0 00:C990: 00        .byte $00   ; 
- D 2 - I - 0x0009A1 00:C991: F0        .byte $F0   ; 
- D 2 - I - 0x0009A2 00:C992: FF        .byte $FF   ; 



_off003_C993_00:
- - - - - - 0x0009A3 00:C993: 50        .byte $50   ; 
- - - - - - 0x0009A4 00:C994: 20        .byte $20   ; 
- - - - - - 0x0009A5 00:C995: B3        .byte $B3   ; 
- - - - - - 0x0009A6 00:C996: 00        .byte $00   ; 
- - - - - - 0x0009A7 00:C997: 58        .byte $58   ; 
- - - - - - 0x0009A8 00:C998: 01        .byte $01   ; 
- - - - - - 0x0009A9 00:C999: 98        .byte $98   ; 
- - - - - - 0x0009AA 00:C99A: FF        .byte $FF   ; 



_off003_C99B_01:
- - - - - - 0x0009AB 00:C99B: A2        .byte $A2   ; 
- - - - - - 0x0009AC 00:C99C: 20        .byte $20   ; 
- - - - - - 0x0009AD 00:C99D: 66        .byte $66   ; 
- - - - - - 0x0009AE 00:C99E: DE        .byte $DE   ; 
- - - - - - 0x0009AF 00:C99F: 6F        .byte $6F   ; 
- - - - - - 0x0009B0 00:C9A0: FF        .byte $FF   ; 



_off003_C9A1_02:
- - - - - - 0x0009B1 00:C9A1: C2        .byte $C2   ; 
- - - - - - 0x0009B2 00:C9A2: 20        .byte $20   ; 
- - - - - - 0x0009B3 00:C9A3: 67        .byte $67   ; 
- - - - - - 0x0009B4 00:C9A4: DE        .byte $DE   ; 
- - - - - - 0x0009B5 00:C9A5: 6F        .byte $6F   ; 
- - - - - - 0x0009B6 00:C9A6: FF        .byte $FF   ; 



_off003_C9A7_03:
_off003_C9A7_07:
- D 2 - I - 0x0009B7 00:C9A7: 8B        .byte $8B   ; 
- D 2 - I - 0x0009B8 00:C9A8: 22        .byte $22   ; 
- D 2 - I - 0x0009B9 00:C9A9: DE        .byte $DE   ; 
- D 2 - I - 0x0009BA 00:C9AA: DF        .byte $DF   ; 
- D 2 - I - 0x0009BB 00:C9AB: E0        .byte $E0   ; 
- D 2 - I - 0x0009BC 00:C9AC: E1        .byte $E1   ; 
- D 2 - I - 0x0009BD 00:C9AD: FE        .byte $FE   ; 
- D 2 - I - 0x0009BE 00:C9AE: CA        .byte $CA   ; 
- D 2 - I - 0x0009BF 00:C9AF: 21        .byte $21   ; 
- D 2 - I - 0x0009C0 00:C9B0: 5F        .byte $5F   ; 
- D 2 - I - 0x0009C1 00:C9B1: 00        .byte $00   ; 
- D 2 - I - 0x0009C2 00:C9B2: 66        .byte $66   ; 
- D 2 - I - 0x0009C3 00:C9B3: 6E        .byte $6E   ; 
- D 2 - I - 0x0009C4 00:C9B4: 6D        .byte $6D   ; 
- D 2 - I - 0x0009C5 00:C9B5: 6A        .byte $6A   ; 
- D 2 - I - 0x0009C6 00:C9B6: FE        .byte $FE   ; 
- D 2 - I - 0x0009C7 00:C9B7: 8C        .byte $8C   ; 
- D 2 - I - 0x0009C8 00:C9B8: 20        .byte $20   ; 
- D 2 - I - 0x0009C9 00:C9B9: 4A        .byte $4A   ; 
- D 2 - I - 0x0009CA 00:C9BA: 4B        .byte $4B   ; 
- D 2 - I - 0x0009CB 00:C9BB: FE        .byte $FE   ; 
- D 2 - I - 0x0009CC 00:C9BC: 92        .byte $92   ; 
- D 2 - I - 0x0009CD 00:C9BD: 20        .byte $20   ; 
- D 2 - I - 0x0009CE 00:C9BE: 4C        .byte $4C   ; 
- D 2 - I - 0x0009CF 00:C9BF: FE        .byte $FE   ; 
- D 2 - I - 0x0009D0 00:C9C0: AC        .byte $AC   ; 
- D 2 - I - 0x0009D1 00:C9C1: 20        .byte $20   ; 
- D 2 - I - 0x0009D2 00:C9C2: 4D        .byte $4D   ; 
- D 2 - I - 0x0009D3 00:C9C3: 4E        .byte $4E   ; 
- D 2 - I - 0x0009D4 00:C9C4: 4F        .byte $4F   ; 
- D 2 - I - 0x0009D5 00:C9C5: 50        .byte $50   ; 
- D 2 - I - 0x0009D6 00:C9C6: 51        .byte $51   ; 
- D 2 - I - 0x0009D7 00:C9C7: 52        .byte $52   ; 
- D 2 - I - 0x0009D8 00:C9C8: 53        .byte $53   ; 
- D 2 - I - 0x0009D9 00:C9C9: 54        .byte $54   ; 
- D 2 - I - 0x0009DA 00:C9CA: FE        .byte $FE   ; 



_off003_C9CB_23:
- D 2 - I - 0x0009DB 00:C9CB: 47        .byte $47   ; 
- D 2 - I - 0x0009DC 00:C9CC: 21        .byte $21   ; 
- D 2 - I - 0x0009DD 00:C9CD: 55        .byte $55   ; 
- D 2 - I - 0x0009DE 00:C9CE: 56        .byte $56   ; 
- D 2 - I - 0x0009DF 00:C9CF: 57        .byte $57   ; 
- D 2 - I - 0x0009E0 00:C9D0: 58        .byte $58   ; 
- D 2 - I - 0x0009E1 00:C9D1: 59        .byte $59   ; 
- D 2 - I - 0x0009E2 00:C9D2: 5A        .byte $5A   ; 
- D 2 - I - 0x0009E3 00:C9D3: 5B        .byte $5B   ; 
- D 2 - I - 0x0009E4 00:C9D4: 5C        .byte $5C   ; 
- D 2 - I - 0x0009E5 00:C9D5: 5D        .byte $5D   ; 
- D 2 - I - 0x0009E6 00:C9D6: 5E        .byte $5E   ; 
- D 2 - I - 0x0009E7 00:C9D7: E4        .byte $E4   ; 
- D 2 - I - 0x0009E8 00:C9D8: 60        .byte $60   ; 
- D 2 - I - 0x0009E9 00:C9D9: 61        .byte $61   ; 
- D 2 - I - 0x0009EA 00:C9DA: 62        .byte $62   ; 
- D 2 - I - 0x0009EB 00:C9DB: E2        .byte $E2   ; 
- D 2 - I - 0x0009EC 00:C9DC: 64        .byte $64   ; 
- D 2 - I - 0x0009ED 00:C9DD: CA        .byte $CA   ; 
- D 2 - I - 0x0009EE 00:C9DE: CB        .byte $CB   ; 
- D 2 - I - 0x0009EF 00:C9DF: FE        .byte $FE   ; 
- D 2 - I - 0x0009F0 00:C9E0: 67        .byte $67   ; 
- D 2 - I - 0x0009F1 00:C9E1: 21        .byte $21   ; 
- D 2 - I - 0x0009F2 00:C9E2: CC        .byte $CC   ; 
- D 2 - I - 0x0009F3 00:C9E3: CD        .byte $CD   ; 
- D 2 - I - 0x0009F4 00:C9E4: CE        .byte $CE   ; 
- D 2 - I - 0x0009F5 00:C9E5: CF        .byte $CF   ; 
- D 2 - I - 0x0009F6 00:C9E6: D0        .byte $D0   ; 
- D 2 - I - 0x0009F7 00:C9E7: D1        .byte $D1   ; 
- D 2 - I - 0x0009F8 00:C9E8: D2        .byte $D2   ; 
- D 2 - I - 0x0009F9 00:C9E9: D3        .byte $D3   ; 
- D 2 - I - 0x0009FA 00:C9EA: D4        .byte $D4   ; 
- D 2 - I - 0x0009FB 00:C9EB: D5        .byte $D5   ; 
- D 2 - I - 0x0009FC 00:C9EC: D6        .byte $D6   ; 
- D 2 - I - 0x0009FD 00:C9ED: D7        .byte $D7   ; 
- D 2 - I - 0x0009FE 00:C9EE: D8        .byte $D8   ; 
- D 2 - I - 0x0009FF 00:C9EF: D9        .byte $D9   ; 
- D 2 - I - 0x000A00 00:C9F0: DA        .byte $DA   ; 
- D 2 - I - 0x000A01 00:C9F1: DB        .byte $DB   ; 
- D 2 - I - 0x000A02 00:C9F2: DC        .byte $DC   ; 
- D 2 - I - 0x000A03 00:C9F3: DD        .byte $DD   ; 
- D 2 - I - 0x000A04 00:C9F4: FF        .byte $FF   ; 



_off003_C9F5_04:
- D 2 - I - 0x000A05 00:C9F5: C8        .byte $C8   ; 
- D 2 - I - 0x000A06 00:C9F6: 7C        .byte $7C   ; 
- D 2 - I - 0x000A07 00:C9F7: B2        .byte $B2   ; 
- D 2 - I - 0x000A08 00:C9F8: 00        .byte $00   ; 
- D 2 - I - 0x000A09 00:C9F9: 5B        .byte $5B   ; 
- D 2 - I - 0x000A0A 00:C9FA: 03        .byte $03   ; 
- D 2 - I - 0x000A0B 00:C9FB: AC        .byte $AC   ; 
- D 2 - I - 0x000A0C 00:C9FC: B7        .byte $B7   ; 
- D 2 - I - 0x000A0D 00:C9FD: B0        .byte $B0   ; 



_off003_C9FE_22:
- D 2 - I - 0x000A0E 00:C9FE: 7C        .byte $7C   ; 
- D 2 - I - 0x000A0F 00:C9FF: B9        .byte $B9   ; 
- D 2 - I - 0x000A10 00:CA00: 00        .byte $00   ; 
- D 2 - I - 0x000A11 00:CA01: 84        .byte $84   ; 
- D 2 - I - 0x000A12 00:CA02: 03        .byte $03   ; 
- D 2 - I - 0x000A13 00:CA03: C0        .byte $C0   ; 
- D 2 - I - 0x000A14 00:CA04: B0        .byte $B0   ; 
- D 2 - I - 0x000A15 00:CA05: BC        .byte $BC   ; 



_off003_CA06_05:
- - - - - - 0x000A16 00:CA06: EB        .byte $EB   ; 
- - - - - - 0x000A17 00:CA07: 21        .byte $21   ; 
- - - - - - 0x000A18 00:CA08: 50        .byte $50   ; 
- - - - - - 0x000A19 00:CA09: 4C        .byte $4C   ; 
- - - - - - 0x000A1A 00:CA0A: 41        .byte $41   ; 
- - - - - - 0x000A1B 00:CA0B: 59        .byte $59   ; 
- - - - - - 0x000A1C 00:CA0C: 45        .byte $45   ; 
- - - - - - 0x000A1D 00:CA0D: 52        .byte $52   ; 
- - - - - - 0x000A1E 00:CA0E: 00        .byte $00   ; 
- - - - - - 0x000A1F 00:CA0F: 31        .byte $31   ; 
- - - - - - 0x000A20 00:CA10: FF        .byte $FF   ; 



_off003_CA11_09:
- - - - - - 0x000A21 00:CA11: 26        .byte $26   ; 
- - - - - - 0x000A22 00:CA12: 22        .byte $22   ; 
- - - - - - 0x000A23 00:CA13: B8        .byte $B8   ; 
- - - - - - 0x000A24 00:CA14: BF        .byte $BF   ; 
- - - - - - 0x000A25 00:CA15: B7        .byte $B7   ; 
- - - - - - 0x000A26 00:CA16: AD        .byte $AD   ; 
- - - - - - 0x000A27 00:CA17: 80        .byte $80   ; 
- - - - - - 0x000A28 00:CA18: 80        .byte $80   ; 
- - - - - - 0x000A29 00:CA19: 80        .byte $80   ; 
- - - - - - 0x000A2A 00:CA1A: 80        .byte $80   ; 
- - - - - - 0x000A2B 00:CA1B: B1        .byte $B1   ; 
- - - - - - 0x000A2C 00:CA1C: 80        .byte $80   ; 
- - - - - - 0x000A2D 00:CA1D: B3        .byte $B3   ; 
- - - - - - 0x000A2E 00:CA1E: B4        .byte $B4   ; 
- - - - - - 0x000A2F 00:CA1F: BE        .byte $BE   ; 
- - - - - - 0x000A30 00:CA20: FF        .byte $FF   ; 



_off003_CA21_0C:
- D 2 - I - 0x000A31 00:CA21: A0        .byte $A0   ; 
- D 2 - I - 0x000A32 00:CA22: D7        .byte $D7   ; 
- D 2 - I - 0x000A33 00:CA23: C1        .byte $C1   ; 
- D 2 - I - 0x000A34 00:CA24: 00        .byte $00   ; 
- D 2 - I - 0x000A35 00:CA25: B0        .byte $B0   ; 
- D 2 - I - 0x000A36 00:CA26: 03        .byte $03   ; 
- D 2 - I - 0x000A37 00:CA27: AC        .byte $AC   ; 
- D 2 - I - 0x000A38 00:CA28: B8        .byte $B8   ; 
- D 2 - I - 0x000A39 00:CA29: B2        .byte $B2   ; 



_off003_CA2A_0D:
- D 2 - I - 0x000A3A 00:CA2A: A0        .byte $A0   ; 
- D 2 - I - 0x000A3B 00:CA2B: D7        .byte $D7   ; 
- D 2 - I - 0x000A3C 00:CA2C: BE        .byte $BE   ; 
- D 2 - I - 0x000A3D 00:CA2D: 00        .byte $00   ; 
- D 2 - I - 0x000A3E 00:CA2E: B8        .byte $B8   ; 
- D 2 - I - 0x000A3F 00:CA2F: 02        .byte $02   ; 
- D 2 - I - 0x000A40 00:CA30: AC        .byte $AC   ; 
- D 2 - I - 0x000A41 00:CA31: B9        .byte $B9   ; 



_off003_CA32_0E:
- D 2 - I - 0x000A42 00:CA32: A0        .byte $A0   ; 
- D 2 - I - 0x000A43 00:CA33: D7        .byte $D7   ; 
- D 2 - I - 0x000A44 00:CA34: AE        .byte $AE   ; 
- D 2 - I - 0x000A45 00:CA35: 00        .byte $00   ; 
- D 2 - I - 0x000A46 00:CA36: B0        .byte $B0   ; 
- D 2 - I - 0x000A47 00:CA37: 03        .byte $03   ; 
- D 2 - I - 0x000A48 00:CA38: B3        .byte $B3   ; 
- D 2 - I - 0x000A49 00:CA39: B0        .byte $B0   ; 
- D 2 - I - 0x000A4A 00:CA3A: B8        .byte $B8   ; 



_off003_CA3B_0F:
- D 2 - I - 0x000A4B 00:CA3B: A0        .byte $A0   ; 
- D 2 - I - 0x000A4C 00:CA3C: D7        .byte $D7   ; 
- D 2 - I - 0x000A4D 00:CA3D: B6        .byte $B6   ; 
- D 2 - I - 0x000A4E 00:CA3E: 00        .byte $00   ; 
- D 2 - I - 0x000A4F 00:CA3F: B0        .byte $B0   ; 
- D 2 - I - 0x000A50 00:CA40: 03        .byte $03   ; 
- D 2 - I - 0x000A51 00:CA41: AC        .byte $AC   ; 
- D 2 - I - 0x000A52 00:CA42: B8        .byte $B8   ; 
- D 2 - I - 0x000A53 00:CA43: B2        .byte $B2   ; 



_off003_CA44_10:
- D 2 - I - 0x000A54 00:CA44: A0        .byte $A0   ; 
- D 2 - I - 0x000A55 00:CA45: D7        .byte $D7   ; 
- D 2 - I - 0x000A56 00:CA46: B7        .byte $B7   ; 
- D 2 - I - 0x000A57 00:CA47: 00        .byte $00   ; 
- D 2 - I - 0x000A58 00:CA48: C0        .byte $C0   ; 
- D 2 - I - 0x000A59 00:CA49: 01        .byte $01   ; 
- D 2 - I - 0x000A5A 00:CA4A: BF        .byte $BF   ; 



_off003_CA4B_0A:
- D 2 - I - 0x000A5B 00:CA4B: 00        .byte $00   ; 
- D 2 - I - 0x000A5C 00:CA4C: 8F        .byte $8F   ; 
- D 2 - I - 0x000A5D 00:CA4D: BA        .byte $BA   ; 
- D 2 - I - 0x000A5E 00:CA4E: 00        .byte $00   ; 
- D 2 - I - 0x000A5F 00:CA4F: 50        .byte $50   ; 
- D 2 - I - 0x000A60 00:CA50: 06        .byte $06   ; 
- D 2 - I - 0x000A61 00:CA51: B0        .byte $B0   ; 
- D 2 - I - 0x000A62 00:CA52: BC        .byte $BC   ; 
- D 2 - I - 0x000A63 00:CA53: B1        .byte $B1   ; 
- D 2 - I - 0x000A64 00:CA54: B0        .byte $B0   ; 
- D 2 - I - 0x000A65 00:CA55: AE        .byte $AE   ; 
- D 2 - I - 0x000A66 00:CA56: BE        .byte $BE   ; 



_off003_CA57_06:
- D 2 - I - 0x000A67 00:CA57: B0        .byte $B0   ; 
- D 2 - I - 0x000A68 00:CA58: 5F        .byte $5F   ; 
- D 2 - I - 0x000A69 00:CA59: BD        .byte $BD   ; 
- D 2 - I - 0x000A6A 00:CA5A: 00        .byte $00   ; 
- D 2 - I - 0x000A6B 00:CA5B: 60        .byte $60   ; 
- D 2 - I - 0x000A6C 00:CA5C: 04        .byte $04   ; 
- D 2 - I - 0x000A6D 00:CA5D: BE        .byte $BE   ; 
- D 2 - I - 0x000A6E 00:CA5E: AC        .byte $AC   ; 
- D 2 - I - 0x000A6F 00:CA5F: B2        .byte $B2   ; 
- D 2 - I - 0x000A70 00:CA60: B0        .byte $B0   ; 
; bzk garbage?
- - - - - - 0x000A71 00:CA61: 54        .byte $54   ; 
- - - - - - 0x000A72 00:CA62: 90        .byte $90   ; 
- - - - - - 0x000A73 00:CA63: BD        .byte $BD   ; 
- - - - - - 0x000A74 00:CA64: 00        .byte $00   ; 
- - - - - - 0x000A75 00:CA65: 68        .byte $68   ; 
- - - - - - 0x000A76 00:CA66: 04        .byte $04   ; 
- - - - - - 0x000A77 00:CA67: BE        .byte $BE   ; 
- - - - - - 0x000A78 00:CA68: AC        .byte $AC   ; 
- - - - - - 0x000A79 00:CA69: BC        .byte $BC   ; 
- - - - - - 0x000A7A 00:CA6A: BE        .byte $BE   ; 



_off003_CA6B_11:
- - - - - - 0x000A7B 00:CA6B: C8        .byte $C8   ; 
- - - - - - 0x000A7C 00:CA6C: 7A        .byte $7A   ; 
- - - - - - 0x000A7D 00:CA6D: BA        .byte $BA   ; 
- - - - - - 0x000A7E 00:CA6E: 00        .byte $00   ; 
- - - - - - 0x000A7F 00:CA6F: 6B        .byte $6B   ; 
- - - - - - 0x000A80 00:CA70: 07        .byte $07   ; 
- - - - - - 0x000A81 00:CA71: AC        .byte $AC   ; 
- - - - - - 0x000A82 00:CA72: BF        .byte $BF   ; 
- - - - - - 0x000A83 00:CA73: BD        .byte $BD   ; 
- - - - - - 0x000A84 00:CA74: B0        .byte $B0   ; 
- - - - - - 0x000A85 00:CA75: FF        .byte $FF   ; 
- - - - - - 0x000A86 00:CA76: FF        .byte $FF   ; 
- - - - - - 0x000A87 00:CA77: FF        .byte $FF   ; 



_off003_CA78_1A:
- D 2 - I - 0x000A88 00:CA78: 24        .byte $24   ; 
- D 2 - I - 0x000A89 00:CA79: 5F        .byte $5F   ; 
- D 2 - I - 0x000A8A 00:CA7A: AD        .byte $AD   ; 
- D 2 - I - 0x000A8B 00:CA7B: 00        .byte $00   ; 
- D 2 - I - 0x000A8C 00:CA7C: 50        .byte $50   ; 
- D 2 - I - 0x000A8D 00:CA7D: 03        .byte $03   ; 
- D 2 - I - 0x000A8E 00:CA7E: B9        .byte $B9   ; 
- D 2 - I - 0x000A8F 00:CA7F: B8        .byte $B8   ; 
- D 2 - I - 0x000A90 00:CA80: BF        .byte $BF   ; 



_off003_CA81_20:
- D 2 - I - 0x000A91 00:CA81: 34        .byte $34   ; 
- D 2 - I - 0x000A92 00:CA82: 5F        .byte $5F   ; 
- D 2 - I - 0x000A93 00:CA83: BE        .byte $BE   ; 
- D 2 - I - 0x000A94 00:CA84: 00        .byte $00   ; 
- D 2 - I - 0x000A95 00:CA85: 90        .byte $90   ; 
- D 2 - I - 0x000A96 00:CA86: 03        .byte $03   ; 
- D 2 - I - 0x000A97 00:CA87: AC        .byte $AC   ; 
- D 2 - I - 0x000A98 00:CA88: B2        .byte $B2   ; 
- D 2 - I - 0x000A99 00:CA89: B0        .byte $B0   ; 



_off003_CA8A_17:
- D 2 - I - 0x000A9A 00:CA8A: 80        .byte $80   ; 
- D 2 - I - 0x000A9B 00:CA8B: 27        .byte $27   ; 
- D 2 - I - 0x000A9C 00:CA8C: BE        .byte $BE   ; 
- D 2 - I - 0x000A9D 00:CA8D: 00        .byte $00   ; 
- D 2 - I - 0x000A9E 00:CA8E: B0        .byte $B0   ; 
- D 2 - I - 0x000A9F 00:CA8F: 03        .byte $03   ; 
- D 2 - I - 0x000AA0 00:CA90: AC        .byte $AC   ; 
- D 2 - I - 0x000AA1 00:CA91: B2        .byte $B2   ; 
- D 2 - I - 0x000AA2 00:CA92: B0        .byte $B0   ; 



_off003_CA93_1B:
- D 2 - I - 0x000AA3 00:CA93: 54        .byte $54   ; 
- D 2 - I - 0x000AA4 00:CA94: CF        .byte $CF   ; 
- D 2 - I - 0x000AA5 00:CA95: B8        .byte $B8   ; 
- D 2 - I - 0x000AA6 00:CA96: 00        .byte $00   ; 
- D 2 - I - 0x000AA7 00:CA97: 38        .byte $38   ; 
- D 2 - I - 0x000AA8 00:CA98: 03        .byte $03   ; 
- D 2 - I - 0x000AA9 00:CA99: BF        .byte $BF   ; 
- D 2 - I - 0x000AAA 00:CA9A: B7        .byte $B7   ; 
- D 2 - I - 0x000AAB 00:CA9B: AD        .byte $AD   ; 
- D 2 - I - 0x000AAC 00:CA9C: CF        .byte $CF   ; 
- D 2 - I - 0x000AAD 00:CA9D: B9        .byte $B9   ; 
- D 2 - I - 0x000AAE 00:CA9E: 00        .byte $00   ; 
- D 2 - I - 0x000AAF 00:CA9F: 70        .byte $70   ; 
- D 2 - I - 0x000AB0 00:CAA0: 01        .byte $01   ; 
- D 2 - I - 0x000AB1 00:CAA1: B1        .byte $B1   ; 



_off003_CAA2_29:
- D 2 - I - 0x000AB2 00:CAA2: 4B        .byte $4B   ; 
- D 2 - I - 0x000AB3 00:CAA3: 23        .byte $23   ; 
- D 2 - I - 0x000AB4 00:CAA4: E3        .byte $E3   ; 
- D 2 - I - 0x000AB5 00:CAA5: 63        .byte $63   ; 
- D 2 - I - 0x000AB6 00:CAA6: 00        .byte $00   ; 
- D 2 - I - 0x000AB7 00:CAA7: 00        .byte $00   ; 
- D 2 - I - 0x000AB8 00:CAA8: 00        .byte $00   ; 
- D 2 - I - 0x000AB9 00:CAA9: 00        .byte $00   ; 
- D 2 - I - 0x000ABA 00:CAAA: 00        .byte $00   ; 
- D 2 - I - 0x000ABB 00:CAAB: F7        .byte $F7   ; 
- D 2 - I - 0x000ABC 00:CAAC: 00        .byte $00   ; 
- D 2 - I - 0x000ABD 00:CAAD: F0        .byte $F0   ; 
- D 2 - I - 0x000ABE 00:CAAE: 00        .byte $00   ; 
- D 2 - I - 0x000ABF 00:CAAF: FF        .byte $FF   ; 



_off003_CAB0_2A:
- D 2 - I - 0x000AC0 00:CAB0: 6C        .byte $6C   ; 
- D 2 - I - 0x000AC1 00:CAB1: CF        .byte $CF   ; 
- D 2 - I - 0x000AC2 00:CAB2: B3        .byte $B3   ; 
- D 2 - I - 0x000AC3 00:CAB3: 00        .byte $00   ; 
- D 2 - I - 0x000AC4 00:CAB4: 88        .byte $88   ; 



_off003_CAB5_14:
_off003_CAB5_2B:
_off003_CAB5_2D:
_off003_CAB5_2E:
- D 2 - I - 0x000AC5 00:CAB5: 70        .byte $70   ; 
- D 2 - I - 0x000AC6 00:CAB6: CF        .byte $CF   ; 
- D 2 - I - 0x000AC7 00:CAB7: BE        .byte $BE   ; 
- D 2 - I - 0x000AC8 00:CAB8: 00        .byte $00   ; 
- D 2 - I - 0x000AC9 00:CAB9: 98        .byte $98   ; 



_off003_CABA_12:
- - - - - - 0x000ACA 00:CABA: 8C        .byte $8C   ; 
- - - - - - 0x000ACB 00:CABB: 17        .byte $17   ; 
- - - - - - 0x000ACC 00:CABC: B5        .byte $B5   ; 
- - - - - - 0x000ACD 00:CABD: 00        .byte $00   ; 
- - - - - - 0x000ACE 00:CABE: 80        .byte $80   ; 
- - - - - - 0x000ACF 00:CABF: 02        .byte $02   ; 
- - - - - - 0x000AD0 00:CAC0: B9        .byte $B9   ; 
- - - - - - 0x000AD1 00:CAC1: B8        .byte $B8   ; 



_off003_CAC2_18:
- D 2 - I - 0x000AD2 00:CAC2: B0        .byte $B0   ; 
- D 2 - I - 0x000AD3 00:CAC3: B7        .byte $B7   ; 
- D 2 - I - 0x000AD4 00:CAC4: B6        .byte $B6   ; 
- D 2 - I - 0x000AD5 00:CAC5: 00        .byte $00   ; 
- D 2 - I - 0x000AD6 00:CAC6: 70        .byte $70   ; 
- D 2 - I - 0x000AD7 00:CAC7: 04        .byte $04   ; 
- D 2 - I - 0x000AD8 00:CAC8: B0        .byte $B0   ; 
- D 2 - I - 0x000AD9 00:CAC9: C0        .byte $C0   ; 
- D 2 - I - 0x000ADA 00:CACA: B0        .byte $B0   ; 
- D 2 - I - 0x000ADB 00:CACB: B6        .byte $B6   ; 



_off003_CACC_19:
_off003_CACC_1E:
- D 2 - I - 0x000ADC 00:CACC: C8        .byte $C8   ; 
- D 2 - I - 0x000ADD 00:CACD: C7        .byte $C7   ; 
- D 2 - I - 0x000ADE 00:CACE: B6        .byte $B6   ; 
- D 2 - I - 0x000ADF 00:CACF: 00        .byte $00   ; 
- D 2 - I - 0x000AE0 00:CAD0: 70        .byte $70   ; 
- D 2 - I - 0x000AE1 00:CAD1: 04        .byte $04   ; 
- D 2 - I - 0x000AE2 00:CAD2: B0        .byte $B0   ; 
- D 2 - I - 0x000AE3 00:CAD3: C0        .byte $C0   ; 
- D 2 - I - 0x000AE4 00:CAD4: B0        .byte $B0   ; 
- D 2 - I - 0x000AE5 00:CAD5: B6        .byte $B6   ; 



_off003_CAD6_16:
_off003_CAD6_1F:
- D 2 - I - 0x000AE6 00:CAD6: E0        .byte $E0   ; 
- D 2 - I - 0x000AE7 00:CAD7: 6F        .byte $6F   ; 
- D 2 - I - 0x000AE8 00:CAD8: B5        .byte $B5   ; 
- D 2 - I - 0x000AE9 00:CAD9: 00        .byte $00   ; 
- D 2 - I - 0x000AEA 00:CADA: 88        .byte $88   ; 
- D 2 - I - 0x000AEB 00:CADB: 05        .byte $05   ; 
- D 2 - I - 0x000AEC 00:CADC: B9        .byte $B9   ; 
- D 2 - I - 0x000AED 00:CADD: B8        .byte $B8   ; 
- D 2 - I - 0x000AEE 00:CADE: AC        .byte $AC   ; 
- D 2 - I - 0x000AEF 00:CADF: B7        .byte $B7   ; 
- D 2 - I - 0x000AF0 00:CAE0: B4        .byte $B4   ; 



_off003_CAE1_15:
- D 2 - I - 0x000AF1 00:CAE1: 98        .byte $98   ; 
- D 2 - I - 0x000AF2 00:CAE2: 9F        .byte $9F   ; 
- D 2 - I - 0x000AF3 00:CAE3: BD        .byte $BD   ; 
- D 2 - I - 0x000AF4 00:CAE4: 00        .byte $00   ; 
- D 2 - I - 0x000AF5 00:CAE5: 80        .byte $80   ; 
- D 2 - I - 0x000AF6 00:CAE6: 05        .byte $05   ; 
- D 2 - I - 0x000AF7 00:CAE7: B0        .byte $B0   ; 
- D 2 - I - 0x000AF8 00:CAE8: B6        .byte $B6   ; 
- D 2 - I - 0x000AF9 00:CAE9: B0        .byte $B0   ; 
- D 2 - I - 0x000AFA 00:CAEA: AE        .byte $AE   ; 
- D 2 - I - 0x000AFB 00:CAEB: BE        .byte $BE   ; 



_off003_CAEC_13:
- D 2 - I - 0x000AFC 00:CAEC: FC        .byte $FC   ; 
- D 2 - I - 0x000AFD 00:CAED: 27        .byte $27   ; 
- D 2 - I - 0x000AFE 00:CAEE: B3        .byte $B3   ; 
- D 2 - I - 0x000AFF 00:CAEF: 00        .byte $00   ; 
- D 2 - I - 0x000B00 00:CAF0: 60        .byte $60   ; 



_off003_CAF1_1C:
- D 2 - I - 0x000B01 00:CAF1: F8        .byte $F8   ; 
- D 2 - I - 0x000B02 00:CAF2: 27        .byte $27   ; 
- D 2 - I - 0x000B03 00:CAF3: AE        .byte $AE   ; 
- D 2 - I - 0x000B04 00:CAF4: 00        .byte $00   ; 
- D 2 - I - 0x000B05 00:CAF5: 20        .byte $20   ; 



_off003_CAF6_1D:
- D 2 - I - 0x000B06 00:CAF6: 9C        .byte $9C   ; 
- D 2 - I - 0x000B07 00:CAF7: 27        .byte $27   ; 
- D 2 - I - 0x000B08 00:CAF8: B9        .byte $B9   ; 
- D 2 - I - 0x000B09 00:CAF9: 00        .byte $00   ; 
- D 2 - I - 0x000B0A 00:CAFA: 28        .byte $28   ; 



_off003_CAFB_21:
- - - - - - 0x000B0B 00:CAFB: 98        .byte $98   ; 
- - - - - - 0x000B0C 00:CAFC: 17        .byte $17   ; 
- - - - - - 0x000B0D 00:CAFD: B7        .byte $B7   ; 
- - - - - - 0x000B0E 00:CAFE: 00        .byte $00   ; 
- - - - - - 0x000B0F 00:CAFF: A0        .byte $A0   ; 



_off003_CB00_24:
- D 2 - I - 0x000B10 00:CB00: 8C        .byte $8C   ; 
- D 2 - I - 0x000B11 00:CB01: 2F        .byte $2F   ; 
- D 2 - I - 0x000B12 00:CB02: D6        .byte $D6   ; 
- D 2 - I - 0x000B13 00:CB03: 01        .byte $01   ; 
- D 2 - I - 0x000B14 00:CB04: A8        .byte $A8   ; 
; bzk garbage?
- - - - - - 0x000B15 00:CB05: 01        .byte $01   ; 
- - - - - - 0x000B16 00:CB06: FF        .byte $FF   ; 
- - - - - - 0x000B17 00:CB07: 01        .byte $01   ; 
- - - - - - 0x000B18 00:CB08: FF        .byte $FF   ; 



_off003_CB09_25:
- D 2 - I - 0x000B19 00:CB09: 8C        .byte $8C   ; 
- D 2 - I - 0x000B1A 00:CB0A: 2F        .byte $2F   ; 
- D 2 - I - 0x000B1B 00:CB0B: D6        .byte $D6   ; 
- D 2 - I - 0x000B1C 00:CB0C: 01        .byte $01   ; 
- D 2 - I - 0x000B1D 00:CB0D: A8        .byte $A8   ; 
- D 2 - I - 0x000B1E 00:CB0E: 01        .byte $01   ; 
- D 2 - I - 0x000B1F 00:CB0F: D6        .byte $D6   ; 



_off003_CB10_26:
- - - - - - 0x000B20 00:CB10: 8C        .byte $8C   ; 
- - - - - - 0x000B21 00:CB11: 2F        .byte $2F   ; 
- - - - - - 0x000B22 00:CB12: D6        .byte $D6   ; 
- - - - - - 0x000B23 00:CB13: 01        .byte $01   ; 
- - - - - - 0x000B24 00:CB14: A8        .byte $A8   ; 
- - - - - - 0x000B25 00:CB15: 02        .byte $02   ; 
- - - - - - 0x000B26 00:CB16: D6        .byte $D6   ; 
- - - - - - 0x000B27 00:CB17: D6        .byte $D6   ; 



_off003_CB18_27:
- - - - - - 0x000B28 00:CB18: 8C        .byte $8C   ; 
- - - - - - 0x000B29 00:CB19: 2F        .byte $2F   ; 
- - - - - - 0x000B2A 00:CB1A: D6        .byte $D6   ; 
- - - - - - 0x000B2B 00:CB1B: 01        .byte $01   ; 
- - - - - - 0x000B2C 00:CB1C: A8        .byte $A8   ; 
- - - - - - 0x000B2D 00:CB1D: 03        .byte $03   ; 
- - - - - - 0x000B2E 00:CB1E: D6        .byte $D6   ; 
- - - - - - 0x000B2F 00:CB1F: D6        .byte $D6   ; 
- - - - - - 0x000B30 00:CB20: D6        .byte $D6   ; 



_off003_CB21_28:
- D 2 - I - 0x000B31 00:CB21: 52        .byte $52   ; 
- D 2 - I - 0x000B32 00:CB22: 22        .byte $22   ; 
- D 2 - I - 0x000B33 00:CB23: 6A        .byte $6A   ; 
- D 2 - I - 0x000B34 00:CB24: 65        .byte $65   ; 
- D 2 - I - 0x000B35 00:CB25: 65        .byte $65   ; 
- D 2 - I - 0x000B36 00:CB26: 65        .byte $65   ; 
- D 2 - I - 0x000B37 00:CB27: FF        .byte $FF   ; 



_off003_CB28_0B:
- D 2 - I - 0x000B38 00:CB28: 54        .byte $54   ; 
- D 2 - I - 0x000B39 00:CB29: CF        .byte $CF   ; 
- D 2 - I - 0x000B3A 00:CB2A: AD        .byte $AD   ; 
- D 2 - I - 0x000B3B 00:CB2B: 00        .byte $00   ; 
- D 2 - I - 0x000B3C 00:CB2C: 50        .byte $50   ; 
- D 2 - I - 0x000B3D 00:CB2D: 03        .byte $03   ; 
- D 2 - I - 0x000B3E 00:CB2E: B9        .byte $B9   ; 
- D 2 - I - 0x000B3F 00:CB2F: B8        .byte $B8   ; 
- D 2 - I - 0x000B40 00:CB30: BF        .byte $BF   ; 
- D 2 - I - 0x000B41 00:CB31: CF        .byte $CF   ; 
- D 2 - I - 0x000B42 00:CB32: BE        .byte $BE   ; 
- D 2 - I - 0x000B43 00:CB33: 00        .byte $00   ; 
- D 2 - I - 0x000B44 00:CB34: 90        .byte $90   ; 
- D 2 - I - 0x000B45 00:CB35: 03        .byte $03   ; 
- D 2 - I - 0x000B46 00:CB36: AC        .byte $AC   ; 
- D 2 - I - 0x000B47 00:CB37: B2        .byte $B2   ; 
- D 2 - I - 0x000B48 00:CB38: B0        .byte $B0   ; 



_off003_CB39_2C:
- D 2 - I - 0x000B49 00:CB39: A0        .byte $A0   ; 
- D 2 - I - 0x000B4A 00:CB3A: D0        .byte $D0   ; 
- D 2 - I - 0x000B4B 00:CB3B: AF        .byte $AF   ; 
- D 2 - I - 0x000B4C 00:CB3C: 00        .byte $00   ; 
- D 2 - I - 0x000B4D 00:CB3D: 70        .byte $70   ; 
- D 2 - I - 0x000B4E 00:CB3E: 03        .byte $03   ; 
- D 2 - I - 0x000B4F 00:CB3F: B0        .byte $B0   ; 
- D 2 - I - 0x000B50 00:CB40: B7        .byte $B7   ; 
- D 2 - I - 0x000B51 00:CB41: B9        .byte $B9   ; 



tbl_CB42_sound:
- D 2 - - - 0x000B52 00:CB42: 70 CB     .word _off004_CB70_01   ; 
- D 2 - - - 0x000B54 00:CB44: A1 CB     .word _off004_CBA1_02   ; 
- D 2 - - - 0x000B56 00:CB46: AC CB     .word _off004_CBAC_03   ; 
- D 2 - - - 0x000B58 00:CB48: B6 CB     .word _off004_CBB6_04   ; 
- D 2 - - - 0x000B5A 00:CB4A: B7 CB     .word _off004_CBB7_05   ; 
- D 2 - - - 0x000B5C 00:CB4C: C2 CB     .word _off004_CBC2_06   ; 
- D 2 - - - 0x000B5E 00:CB4E: CD CB     .word _off004_CBCD_07   ; 
- - - - - - 0x000B60 00:CB50: D8 CB     .word _off004_CBD8_08   ; 
- D 2 - - - 0x000B62 00:CB52: E7 CB     .word _off004_CBE7_09   ; 
- D 2 - - - 0x000B64 00:CB54: EC CB     .word _off004_CBEC_0A   ; 
- D 2 - - - 0x000B66 00:CB56: F9 CB     .word _off004_CBF9_0B   ; 
- D 2 - - - 0x000B68 00:CB58: 04 CC     .word _off004_CC04_0C   ; 
- D 2 - - - 0x000B6A 00:CB5A: A0 CC     .word _off004_CCA0_0D   ; main theme
- D 2 - - - 0x000B6C 00:CB5C: 38 CD     .word _off004_CD38_0E   ; main theme
- D 2 - - - 0x000B6E 00:CB5E: C1 CD     .word _off004_CDC1_0F   ; 
- D 2 - - - 0x000B70 00:CB60: D4 CD     .word _off004_CDD4_10   ; 
- D 2 - - - 0x000B72 00:CB62: E9 CD     .word _off004_CDE9_11   ; 
- D 2 - - - 0x000B74 00:CB64: 03 CE     .word _off004_CE03_12   ; 
- D 2 - - - 0x000B76 00:CB66: 1F CE     .word _off004_CE1F_13   ; 
- D 2 - - - 0x000B78 00:CB68: 0F CC     .word _off004_CC0F_14   ; 
- D 2 - - - 0x000B7A 00:CB6A: 34 CC     .word _off004_CC34_15   ; 
- D 2 - - - 0x000B7C 00:CB6C: 59 CC     .word _off004_CC59_16   ; 
- - - - - - 0x000B7E 00:CB6E: 34 CE     .word _off004_CE34_17   ; 



_off004_CB70_01:
- D 2 - I - 0x000B80 00:CB70: 27        .byte $27   ; 
- D 2 - I - 0x000B81 00:CB71: FF        .byte $FF   ; 
- D 2 - I - 0x000B82 00:CB72: 00        .byte $00   ; 
- D 2 - I - 0x000B83 00:CB73: 00        .byte $00   ; 
- D 2 - I - 0x000B84 00:CB74: 21        .byte $21   ; 
- D 2 - I - 0x000B85 00:CB75: FF        .byte $FF   ; 
- D 2 - I - 0x000B86 00:CB76: 00        .byte $00   ; 
- D 2 - I - 0x000B87 00:CB77: 45        .byte $45   ; 
- D 2 - I - 0x000B88 00:CB78: 00        .byte $00   ; 
- D 2 - I - 0x000B89 00:CB79: 48        .byte $48   ; 
- D 2 - I - 0x000B8A 00:CB7A: 00        .byte $00   ; 
- D 2 - I - 0x000B8B 00:CB7B: 46        .byte $46   ; 
- D 2 - I - 0x000B8C 00:CB7C: 00        .byte $00   ; 
- D 2 - I - 0x000B8D 00:CB7D: 47        .byte $47   ; 
- D 2 - I - 0x000B8E 00:CB7E: 00        .byte $00   ; 
- D 2 - I - 0x000B8F 00:CB7F: 00        .byte $00   ; 
- D 2 - I - 0x000B90 00:CB80: 00        .byte $00   ; 
- D 2 - I - 0x000B91 00:CB81: 00        .byte $00   ; 
- D 2 - I - 0x000B92 00:CB82: 00        .byte $00   ; 
- D 2 - I - 0x000B93 00:CB83: 00        .byte $00   ; 
- D 2 - I - 0x000B94 00:CB84: 00        .byte $00   ; 
- D 2 - I - 0x000B95 00:CB85: 38        .byte $38   ; 
- D 2 - I - 0x000B96 00:CB86: 00        .byte $00   ; 
- D 2 - I - 0x000B97 00:CB87: 39        .byte $39   ; 
- D 2 - I - 0x000B98 00:CB88: 00        .byte $00   ; 
- D 2 - I - 0x000B99 00:CB89: 3A        .byte $3A   ; 
- D 2 - I - 0x000B9A 00:CB8A: 00        .byte $00   ; 
- D 2 - I - 0x000B9B 00:CB8B: 3B        .byte $3B   ; 
- D 2 - I - 0x000B9C 00:CB8C: 00        .byte $00   ; 
- D 2 - I - 0x000B9D 00:CB8D: 3C        .byte $3C   ; 
- D 2 - I - 0x000B9E 00:CB8E: 00        .byte $00   ; 
- D 2 - I - 0x000B9F 00:CB8F: 40        .byte $40   ; 
- D 2 - I - 0x000BA0 00:CB90: 00        .byte $00   ; 
- D 2 - I - 0x000BA1 00:CB91: 43        .byte $43   ; 
- D 2 - I - 0x000BA2 00:CB92: 00        .byte $00   ; 
- D 2 - I - 0x000BA3 00:CB93: 46        .byte $46   ; 
- D 2 - I - 0x000BA4 00:CB94: 00        .byte $00   ; 
- D 2 - I - 0x000BA5 00:CB95: 49        .byte $49   ; 
- D 2 - I - 0x000BA6 00:CB96: 00        .byte $00   ; 
- D 2 - I - 0x000BA7 00:CB97: 4D        .byte $4D   ; 
- D 2 - I - 0x000BA8 00:CB98: 00        .byte $00   ; 
- D 2 - I - 0x000BA9 00:CB99: 51        .byte $51   ; 
- D 2 - I - 0x000BAA 00:CB9A: 00        .byte $00   ; 
- D 2 - I - 0x000BAB 00:CB9B: 56        .byte $56   ; 
- D 2 - I - 0x000BAC 00:CB9C: 00        .byte $00   ; 
- D 2 - I - 0x000BAD 00:CB9D: 5B        .byte $5B   ; 
- D 2 - I - 0x000BAE 00:CB9E: 00        .byte $00   ; 
- D 2 - I - 0x000BAF 00:CB9F: 61        .byte $61   ; 
- D 2 - I - 0x000BB0 00:CBA0: FF        .byte $FF   ; 



_off004_CBA1_02:
- D 2 - I - 0x000BB1 00:CBA1: 22        .byte $22   ; 
- D 2 - I - 0x000BB2 00:CBA2: FF        .byte $FF   ; 
- D 2 - I - 0x000BB3 00:CBA3: 01        .byte $01   ; 
- D 2 - I - 0x000BB4 00:CBA4: 74        .byte $74   ; 
- D 2 - I - 0x000BB5 00:CBA5: 01        .byte $01   ; 
- D 2 - I - 0x000BB6 00:CBA6: 28        .byte $28   ; 
- D 2 - I - 0x000BB7 00:CBA7: 21        .byte $21   ; 
- D 2 - I - 0x000BB8 00:CBA8: FF        .byte $FF   ; 
- D 2 - I - 0x000BB9 00:CBA9: 01        .byte $01   ; 
- D 2 - I - 0x000BBA 00:CBAA: 6B        .byte $6B   ; 
- D 2 - I - 0x000BBB 00:CBAB: FF        .byte $FF   ; 



_off004_CBAC_03:
- D 2 - I - 0x000BBC 00:CBAC: 21        .byte $21   ; 
- D 2 - I - 0x000BBD 00:CBAD: 30        .byte $30   ; 
- D 2 - I - 0x000BBE 00:CBAE: 00        .byte $00   ; 
- D 2 - I - 0x000BBF 00:CBAF: 00        .byte $00   ; 
- D 2 - I - 0x000BC0 00:CBB0: F0        .byte $F0   ; 
- D 2 - I - 0x000BC1 00:CBB1: 0B        .byte $0B   ; 
- D 2 - I - 0x000BC2 00:CBB2: F0        .byte $F0   ; 
- D 2 - I - 0x000BC3 00:CBB3: 0F        .byte $0F   ; 
- D 2 - I - 0x000BC4 00:CBB4: F0        .byte $F0   ; 
- D 2 - I - 0x000BC5 00:CBB5: 0F        .byte $0F   ; 



_off004_CBB6_04:
- D 2 - I - 0x000BC6 00:CBB6: FF        .byte $FF   ; 



_off004_CBB7_05:
- D 2 - I - 0x000BC7 00:CBB7: 21        .byte $21   ; 
- D 2 - I - 0x000BC8 00:CBB8: 30        .byte $30   ; 
- D 2 - I - 0x000BC9 00:CBB9: E0        .byte $E0   ; 
- D 2 - I - 0x000BCA 00:CBBA: 0A        .byte $0A   ; 
- D 2 - I - 0x000BCB 00:CBBB: E0        .byte $E0   ; 
- D 2 - I - 0x000BCC 00:CBBC: 0B        .byte $0B   ; 
- D 2 - I - 0x000BCD 00:CBBD: E0        .byte $E0   ; 
- D 2 - I - 0x000BCE 00:CBBE: 0F        .byte $0F   ; 
- D 2 - I - 0x000BCF 00:CBBF: E0        .byte $E0   ; 
- D 2 - I - 0x000BD0 00:CBC0: 0D        .byte $0D   ; 
- D 2 - I - 0x000BD1 00:CBC1: FF        .byte $FF   ; 



_off004_CBC2_06:
- D 2 - I - 0x000BD2 00:CBC2: 23        .byte $23   ; 
- D 2 - I - 0x000BD3 00:CBC3: FF        .byte $FF   ; 
- D 2 - I - 0x000BD4 00:CBC4: 00        .byte $00   ; 
- D 2 - I - 0x000BD5 00:CBC5: 20        .byte $20   ; 
- D 2 - I - 0x000BD6 00:CBC6: 00        .byte $00   ; 
- D 2 - I - 0x000BD7 00:CBC7: 00        .byte $00   ; 
- D 2 - I - 0x000BD8 00:CBC8: FE        .byte $FE   ; 
- D 2 - I - 0x000BD9 00:CBC9: 0C        .byte $0C   ; 
- D 2 - I - 0x000BDA 00:CBCA: C2        .byte $C2   ; 
- D 2 - I - 0x000BDB 00:CBCB: CB        .byte $CB   ; 
- D 2 - I - 0x000BDC 00:CBCC: FF        .byte $FF   ; 



_off004_CBCD_07:
- D 2 - I - 0x000BDD 00:CBCD: 21        .byte $21   ; 
- D 2 - I - 0x000BDE 00:CBCE: FF        .byte $FF   ; 
- D 2 - I - 0x000BDF 00:CBCF: 00        .byte $00   ; 
- D 2 - I - 0x000BE0 00:CBD0: 2C        .byte $2C   ; 
- D 2 - I - 0x000BE1 00:CBD1: 00        .byte $00   ; 
- D 2 - I - 0x000BE2 00:CBD2: 00        .byte $00   ; 
- D 2 - I - 0x000BE3 00:CBD3: 00        .byte $00   ; 
- D 2 - I - 0x000BE4 00:CBD4: 00        .byte $00   ; 
- D 2 - I - 0x000BE5 00:CBD5: 00        .byte $00   ; 
- D 2 - I - 0x000BE6 00:CBD6: 32        .byte $32   ; 
- D 2 - I - 0x000BE7 00:CBD7: FF        .byte $FF   ; 



_off004_CBD8_08:
- - - - - - 0x000BE8 00:CBD8: 24        .byte $24   ; 
- - - - - - 0x000BE9 00:CBD9: FF        .byte $FF   ; 
- - - - - - 0x000BEA 00:CBDA: 00        .byte $00   ; 
- - - - - - 0x000BEB 00:CBDB: 8E        .byte $8E   ; 
- - - - - - 0x000BEC 00:CBDC: 00        .byte $00   ; 
- - - - - - 0x000BED 00:CBDD: 6A        .byte $6A   ; 
- - - - - - 0x000BEE 00:CBDE: 00        .byte $00   ; 
- - - - - - 0x000BEF 00:CBDF: 54        .byte $54   ; 
- - - - - - 0x000BF0 00:CBE0: 00        .byte $00   ; 
- - - - - - 0x000BF1 00:CBE1: 47        .byte $47   ; 
- - - - - - 0x000BF2 00:CBE2: FE        .byte $FE   ; 
- - - - - - 0x000BF3 00:CBE3: 02        .byte $02   ; 
- - - - - - 0x000BF4 00:CBE4: D8        .byte $D8   ; 
- - - - - - 0x000BF5 00:CBE5: CB        .byte $CB   ; 
- - - - - - 0x000BF6 00:CBE6: FF        .byte $FF   ; 



_off004_CBE7_09:
- D 2 - I - 0x000BF7 00:CBE7: 21        .byte $21   ; 
- D 2 - I - 0x000BF8 00:CBE8: FF        .byte $FF   ; 
- D 2 - I - 0x000BF9 00:CBE9: 00        .byte $00   ; 
- D 2 - I - 0x000BFA 00:CBEA: 28        .byte $28   ; 
- D 2 - I - 0x000BFB 00:CBEB: FF        .byte $FF   ; 



_off004_CBEC_0A:
- D 2 - I - 0x000BFC 00:CBEC: 23        .byte $23   ; 
- D 2 - I - 0x000BFD 00:CBED: FF        .byte $FF   ; 
- D 2 - I - 0x000BFE 00:CBEE: 00        .byte $00   ; 
- D 2 - I - 0x000BFF 00:CBEF: 33        .byte $33   ; 
- D 2 - I - 0x000C00 00:CBF0: 00        .byte $00   ; 
- D 2 - I - 0x000C01 00:CBF1: 2C        .byte $2C   ; 
- D 2 - I - 0x000C02 00:CBF2: 00        .byte $00   ; 
- D 2 - I - 0x000C03 00:CBF3: 26        .byte $26   ; 
- D 2 - I - 0x000C04 00:CBF4: FE        .byte $FE   ; 
- D 2 - I - 0x000C05 00:CBF5: 03        .byte $03   ; 
- D 2 - I - 0x000C06 00:CBF6: EC        .byte $EC   ; 
- D 2 - I - 0x000C07 00:CBF7: CB        .byte $CB   ; 
- D 2 - I - 0x000C08 00:CBF8: FF        .byte $FF   ; 



_off004_CBF9_0B:
- D 2 - I - 0x000C09 00:CBF9: 21        .byte $21   ; 
- D 2 - I - 0x000C0A 00:CBFA: FF        .byte $FF   ; 
- D 2 - I - 0x000C0B 00:CBFB: 00        .byte $00   ; 
- D 2 - I - 0x000C0C 00:CBFC: AA        .byte $AA   ; 
- D 2 - I - 0x000C0D 00:CBFD: 22        .byte $22   ; 
- D 2 - I - 0x000C0E 00:CBFE: FF        .byte $FF   ; 
- D 2 - I - 0x000C0F 00:CBFF: 00        .byte $00   ; 
- D 2 - I - 0x000C10 00:CC00: 00        .byte $00   ; 
- D 2 - I - 0x000C11 00:CC01: 00        .byte $00   ; 
- D 2 - I - 0x000C12 00:CC02: C4        .byte $C4   ; 
- D 2 - I - 0x000C13 00:CC03: FF        .byte $FF   ; 



_off004_CC04_0C:
- D 2 - I - 0x000C14 00:CC04: 21        .byte $21   ; 
- D 2 - I - 0x000C15 00:CC05: 30        .byte $30   ; 
- D 2 - I - 0x000C16 00:CC06: F0        .byte $F0   ; 
- D 2 - I - 0x000C17 00:CC07: 05        .byte $05   ; 
- D 2 - I - 0x000C18 00:CC08: 22        .byte $22   ; 
- D 2 - I - 0x000C19 00:CC09: 30        .byte $30   ; 
- D 2 - I - 0x000C1A 00:CC0A: 00        .byte $00   ; 
- D 2 - I - 0x000C1B 00:CC0B: 00        .byte $00   ; 
- D 2 - I - 0x000C1C 00:CC0C: F0        .byte $F0   ; 
- D 2 - I - 0x000C1D 00:CC0D: 08        .byte $08   ; 
- D 2 - I - 0x000C1E 00:CC0E: FF        .byte $FF   ; 



_off004_CC0F_14:
- D 2 - I - 0x000C1F 00:CC0F: 21        .byte $21   ; 
- D 2 - I - 0x000C20 00:CC10: B0        .byte $B0   ; 
- D 2 - I - 0x000C21 00:CC11: F3        .byte $F3   ; 
- D 2 - I - 0x000C22 00:CC12: 00        .byte $00   ; 
- D 2 - I - 0x000C23 00:CC13: E3        .byte $E3   ; 
- D 2 - I - 0x000C24 00:CC14: 00        .byte $00   ; 
- D 2 - I - 0x000C25 00:CC15: D3        .byte $D3   ; 
- D 2 - I - 0x000C26 00:CC16: 00        .byte $00   ; 
- D 2 - I - 0x000C27 00:CC17: C3        .byte $C3   ; 
- D 2 - I - 0x000C28 00:CC18: 00        .byte $00   ; 
- D 2 - I - 0x000C29 00:CC19: B3        .byte $B3   ; 
- D 2 - I - 0x000C2A 00:CC1A: 00        .byte $00   ; 
- D 2 - I - 0x000C2B 00:CC1B: A3        .byte $A3   ; 
- D 2 - I - 0x000C2C 00:CC1C: 00        .byte $00   ; 
- D 2 - I - 0x000C2D 00:CC1D: 93        .byte $93   ; 
- D 2 - I - 0x000C2E 00:CC1E: 00        .byte $00   ; 
- D 2 - I - 0x000C2F 00:CC1F: 83        .byte $83   ; 
- D 2 - I - 0x000C30 00:CC20: 00        .byte $00   ; 
- D 2 - I - 0x000C31 00:CC21: 2C        .byte $2C   ; 
- D 2 - I - 0x000C32 00:CC22: B0        .byte $B0   ; 
- D 2 - I - 0x000C33 00:CC23: 73        .byte $73   ; 
- D 2 - I - 0x000C34 00:CC24: 00        .byte $00   ; 
- D 2 - I - 0x000C35 00:CC25: 63        .byte $63   ; 
- D 2 - I - 0x000C36 00:CC26: 00        .byte $00   ; 
- D 2 - I - 0x000C37 00:CC27: 53        .byte $53   ; 
- D 2 - I - 0x000C38 00:CC28: 00        .byte $00   ; 
- D 2 - I - 0x000C39 00:CC29: 43        .byte $43   ; 
- D 2 - I - 0x000C3A 00:CC2A: 00        .byte $00   ; 
- D 2 - I - 0x000C3B 00:CC2B: 33        .byte $33   ; 
- D 2 - I - 0x000C3C 00:CC2C: 00        .byte $00   ; 
- D 2 - I - 0x000C3D 00:CC2D: F8        .byte $F8   ; 
- D 2 - I - 0x000C3E 00:CC2E: 23        .byte $23   ; 
- D 2 - I - 0x000C3F 00:CC2F: 00        .byte $00   ; 
- D 2 - I - 0x000C40 00:CC30: F8        .byte $F8   ; 
- D 2 - I - 0x000C41 00:CC31: 13        .byte $13   ; 
- D 2 - I - 0x000C42 00:CC32: 00        .byte $00   ; 
- D 2 - I - 0x000C43 00:CC33: FF        .byte $FF   ; 



_off004_CC34_15:
- D 2 - I - 0x000C44 00:CC34: 21        .byte $21   ; 
- D 2 - I - 0x000C45 00:CC35: B0        .byte $B0   ; 
- D 2 - I - 0x000C46 00:CC36: F2        .byte $F2   ; 
- D 2 - I - 0x000C47 00:CC37: 00        .byte $00   ; 
- D 2 - I - 0x000C48 00:CC38: E2        .byte $E2   ; 
- D 2 - I - 0x000C49 00:CC39: 00        .byte $00   ; 
- D 2 - I - 0x000C4A 00:CC3A: D2        .byte $D2   ; 
- D 2 - I - 0x000C4B 00:CC3B: 00        .byte $00   ; 
- D 2 - I - 0x000C4C 00:CC3C: C2        .byte $C2   ; 
- D 2 - I - 0x000C4D 00:CC3D: 00        .byte $00   ; 
- D 2 - I - 0x000C4E 00:CC3E: B2        .byte $B2   ; 
- D 2 - I - 0x000C4F 00:CC3F: 00        .byte $00   ; 
- D 2 - I - 0x000C50 00:CC40: A2        .byte $A2   ; 
- D 2 - I - 0x000C51 00:CC41: 00        .byte $00   ; 
- D 2 - I - 0x000C52 00:CC42: 92        .byte $92   ; 
- D 2 - I - 0x000C53 00:CC43: 00        .byte $00   ; 
- D 2 - I - 0x000C54 00:CC44: 82        .byte $82   ; 
- D 2 - I - 0x000C55 00:CC45: 00        .byte $00   ; 
- D 2 - I - 0x000C56 00:CC46: 2C        .byte $2C   ; 
- D 2 - I - 0x000C57 00:CC47: B0        .byte $B0   ; 
- D 2 - I - 0x000C58 00:CC48: 72        .byte $72   ; 
- D 2 - I - 0x000C59 00:CC49: 00        .byte $00   ; 
- D 2 - I - 0x000C5A 00:CC4A: 62        .byte $62   ; 
- D 2 - I - 0x000C5B 00:CC4B: 00        .byte $00   ; 
- D 2 - I - 0x000C5C 00:CC4C: 52        .byte $52   ; 
- D 2 - I - 0x000C5D 00:CC4D: 00        .byte $00   ; 
- D 2 - I - 0x000C5E 00:CC4E: 42        .byte $42   ; 
- D 2 - I - 0x000C5F 00:CC4F: 00        .byte $00   ; 
- D 2 - I - 0x000C60 00:CC50: 32        .byte $32   ; 
- D 2 - I - 0x000C61 00:CC51: 00        .byte $00   ; 
- D 2 - I - 0x000C62 00:CC52: F8        .byte $F8   ; 
- D 2 - I - 0x000C63 00:CC53: 22        .byte $22   ; 
- D 2 - I - 0x000C64 00:CC54: 00        .byte $00   ; 
- D 2 - I - 0x000C65 00:CC55: F8        .byte $F8   ; 
- D 2 - I - 0x000C66 00:CC56: 12        .byte $12   ; 
- D 2 - I - 0x000C67 00:CC57: 00        .byte $00   ; 
- D 2 - I - 0x000C68 00:CC58: FF        .byte $FF   ; 



_off004_CC59_16:
- D 2 - I - 0x000C69 00:CC59: 21        .byte $21   ; 
- D 2 - I - 0x000C6A 00:CC5A: 30        .byte $30   ; 
- D 2 - I - 0x000C6B 00:CC5B: F0        .byte $F0   ; 
- D 2 - I - 0x000C6C 00:CC5C: 07        .byte $07   ; 
- D 2 - I - 0x000C6D 00:CC5D: D0        .byte $D0   ; 
- D 2 - I - 0x000C6E 00:CC5E: 07        .byte $07   ; 
- D 2 - I - 0x000C6F 00:CC5F: B0        .byte $B0   ; 
- D 2 - I - 0x000C70 00:CC60: 08        .byte $08   ; 
- D 2 - I - 0x000C71 00:CC61: 90        .byte $90   ; 
- D 2 - I - 0x000C72 00:CC62: 08        .byte $08   ; 
- D 2 - I - 0x000C73 00:CC63: 70        .byte $70   ; 
- D 2 - I - 0x000C74 00:CC64: 09        .byte $09   ; 
- D 2 - I - 0x000C75 00:CC65: 22        .byte $22   ; 
- D 2 - I - 0x000C76 00:CC66: 30        .byte $30   ; 
- D 2 - I - 0x000C77 00:CC67: 60        .byte $60   ; 
- D 2 - I - 0x000C78 00:CC68: 09        .byte $09   ; 
- D 2 - I - 0x000C79 00:CC69: 70        .byte $70   ; 
- D 2 - I - 0x000C7A 00:CC6A: 09        .byte $09   ; 
- D 2 - I - 0x000C7B 00:CC6B: 80        .byte $80   ; 
- D 2 - I - 0x000C7C 00:CC6C: 08        .byte $08   ; 
- D 2 - I - 0x000C7D 00:CC6D: 90        .byte $90   ; 
- D 2 - I - 0x000C7E 00:CC6E: 07        .byte $07   ; 
- D 2 - I - 0x000C7F 00:CC6F: A0        .byte $A0   ; 
- D 2 - I - 0x000C80 00:CC70: 07        .byte $07   ; 
- D 2 - I - 0x000C81 00:CC71: B0        .byte $B0   ; 
- D 2 - I - 0x000C82 00:CC72: 07        .byte $07   ; 
- D 2 - I - 0x000C83 00:CC73: C0        .byte $C0   ; 
- D 2 - I - 0x000C84 00:CC74: 07        .byte $07   ; 
- D 2 - I - 0x000C85 00:CC75: D0        .byte $D0   ; 
- D 2 - I - 0x000C86 00:CC76: 07        .byte $07   ; 
- D 2 - I - 0x000C87 00:CC77: E0        .byte $E0   ; 
- D 2 - I - 0x000C88 00:CC78: 07        .byte $07   ; 
- D 2 - I - 0x000C89 00:CC79: 24        .byte $24   ; 
- D 2 - I - 0x000C8A 00:CC7A: 30        .byte $30   ; 
- D 2 - I - 0x000C8B 00:CC7B: F0        .byte $F0   ; 
- D 2 - I - 0x000C8C 00:CC7C: 07        .byte $07   ; 
- D 2 - I - 0x000C8D 00:CC7D: E0        .byte $E0   ; 
- D 2 - I - 0x000C8E 00:CC7E: 07        .byte $07   ; 
- D 2 - I - 0x000C8F 00:CC7F: D0        .byte $D0   ; 
- D 2 - I - 0x000C90 00:CC80: 07        .byte $07   ; 
- D 2 - I - 0x000C91 00:CC81: C0        .byte $C0   ; 
- D 2 - I - 0x000C92 00:CC82: 07        .byte $07   ; 
- D 2 - I - 0x000C93 00:CC83: B0        .byte $B0   ; 
- D 2 - I - 0x000C94 00:CC84: 07        .byte $07   ; 
- D 2 - I - 0x000C95 00:CC85: A0        .byte $A0   ; 
- D 2 - I - 0x000C96 00:CC86: 07        .byte $07   ; 
- D 2 - I - 0x000C97 00:CC87: 90        .byte $90   ; 
- D 2 - I - 0x000C98 00:CC88: 07        .byte $07   ; 
- D 2 - I - 0x000C99 00:CC89: 80        .byte $80   ; 
- D 2 - I - 0x000C9A 00:CC8A: 07        .byte $07   ; 
- D 2 - I - 0x000C9B 00:CC8B: 25        .byte $25   ; 
- D 2 - I - 0x000C9C 00:CC8C: 30        .byte $30   ; 
- D 2 - I - 0x000C9D 00:CC8D: 70        .byte $70   ; 
- D 2 - I - 0x000C9E 00:CC8E: 07        .byte $07   ; 
- D 2 - I - 0x000C9F 00:CC8F: 60        .byte $60   ; 
- D 2 - I - 0x000CA0 00:CC90: 07        .byte $07   ; 
- D 2 - I - 0x000CA1 00:CC91: 50        .byte $50   ; 
- D 2 - I - 0x000CA2 00:CC92: 07        .byte $07   ; 
- D 2 - I - 0x000CA3 00:CC93: 40        .byte $40   ; 
- D 2 - I - 0x000CA4 00:CC94: 07        .byte $07   ; 
- D 2 - I - 0x000CA5 00:CC95: 26        .byte $26   ; 
- D 2 - I - 0x000CA6 00:CC96: 30        .byte $30   ; 
- D 2 - I - 0x000CA7 00:CC97: 30        .byte $30   ; 
- D 2 - I - 0x000CA8 00:CC98: 07        .byte $07   ; 
- D 2 - I - 0x000CA9 00:CC99: F8        .byte $F8   ; 
- D 2 - I - 0x000CAA 00:CC9A: 20        .byte $20   ; 
- D 2 - I - 0x000CAB 00:CC9B: 07        .byte $07   ; 
- D 2 - I - 0x000CAC 00:CC9C: F8        .byte $F8   ; 
- D 2 - I - 0x000CAD 00:CC9D: 10        .byte $10   ; 
- D 2 - I - 0x000CAE 00:CC9E: 07        .byte $07   ; 
- D 2 - I - 0x000CAF 00:CC9F: FF        .byte $FF   ; 



_off004_CCA0_0D:
off_FE_CCA0:
- D 2 - I - 0x000CB0 00:CCA0: D8        .byte $D8   ; 
- D 2 - I - 0x000CB1 00:CCA1: 3C        .byte $3C   ; 
- D 2 - I - 0x000CB2 00:CCA2: 44        .byte $44   ; 
- D 2 - I - 0x000CB3 00:CCA3: E0        .byte $E0   ; 
- D 2 - I - 0x000CB4 00:CCA4: 61        .byte $61   ; 
- D 2 - I - 0x000CB5 00:CCA5: 60        .byte $60   ; 
- D 2 - I - 0x000CB6 00:CCA6: 60        .byte $60   ; 
- D 2 - I - 0x000CB7 00:CCA7: 41        .byte $41   ; 
- D 2 - I - 0x000CB8 00:CCA8: 41        .byte $41   ; 
- D 2 - I - 0x000CB9 00:CCA9: 11        .byte $11   ; 
- D 2 - I - 0x000CBA 00:CCAA: 11        .byte $11   ; 
- D 2 - I - 0x000CBB 00:CCAB: E1        .byte $E1   ; 
- D 2 - I - 0x000CBC 00:CCAC: 93        .byte $93   ; 
- D 2 - I - 0x000CBD 00:CCAD: B0        .byte $B0   ; 
- D 2 - I - 0x000CBE 00:CCAE: E0        .byte $E0   ; 
- D 2 - I - 0x000CBF 00:CCAF: 10        .byte $10   ; 
- D 2 - I - 0x000CC0 00:CCB0: E1        .byte $E1   ; 
- D 2 - I - 0x000CC1 00:CCB1: B0        .byte $B0   ; 
- D 2 - I - 0x000CC2 00:CCB2: 90        .byte $90   ; 
- D 2 - I - 0x000CC3 00:CCB3: 61        .byte $61   ; 
- D 2 - I - 0x000CC4 00:CCB4: 91        .byte $91   ; 
- D 2 - I - 0x000CC5 00:CCB5: 65        .byte $65   ; 
- D 2 - I - 0x000CC6 00:CCB6: D8        .byte $D8   ; 
- D 2 - I - 0x000CC7 00:CCB7: B8        .byte $B8   ; 
- D 2 - I - 0x000CC8 00:CCB8: 44        .byte $44   ; 
- D 2 - I - 0x000CC9 00:CCB9: C1        .byte $C1   ; 
- D 2 - I - 0x000CCA 00:CCBA: E2        .byte $E2   ; 
- D 2 - I - 0x000CCB 00:CCBB: 1D        .byte $1D   ; 
- D 2 - I - 0x000CCC 00:CCBC: E3        .byte $E3   ; 
- D 2 - I - 0x000CCD 00:CCBD: 91        .byte $91   ; 
- D 2 - I - 0x000CCE 00:CCBE: E2        .byte $E2   ; 
- D 2 - I - 0x000CCF 00:CCBF: 4F        .byte $4F   ; 
- D 2 - I - 0x000CD0 00:CCC0: 1D        .byte $1D   ; 
- D 2 - I - 0x000CD1 00:CCC1: E3        .byte $E3   ; 
- D 2 - I - 0x000CD2 00:CCC2: 91        .byte $91   ; 
- D 2 - I - 0x000CD3 00:CCC3: E2        .byte $E2   ; 
- D 2 - I - 0x000CD4 00:CCC4: 6F        .byte $6F   ; 
- D 2 - I - 0x000CD5 00:CCC5: D8        .byte $D8   ; 
- D 2 - I - 0x000CD6 00:CCC6: B7        .byte $B7   ; 
- D 2 - I - 0x000CD7 00:CCC7: 44        .byte $44   ; 
- D 2 - I - 0x000CD8 00:CCC8: E1        .byte $E1   ; 
- D 2 - I - 0x000CD9 00:CCC9: 11        .byte $11   ; 
- D 2 - I - 0x000CDA 00:CCCA: 10        .byte $10   ; 
- D 2 - I - 0x000CDB 00:CCCB: E2        .byte $E2   ; 
- D 2 - I - 0x000CDC 00:CCCC: B0        .byte $B0   ; 
- D 2 - I - 0x000CDD 00:CCCD: E1        .byte $E1   ; 
- D 2 - I - 0x000CDE 00:CCCE: 11        .byte $11   ; 
- D 2 - I - 0x000CDF 00:CCCF: 41        .byte $41   ; 
- D 2 - I - 0x000CE0 00:CCD0: 13        .byte $13   ; 
- D 2 - I - 0x000CE1 00:CCD1: E2        .byte $E2   ; 
- D 2 - I - 0x000CE2 00:CCD2: 93        .byte $93   ; 
- D 2 - I - 0x000CE3 00:CCD3: B0        .byte $B0   ; 
- D 2 - I - 0x000CE4 00:CCD4: E1        .byte $E1   ; 
- D 2 - I - 0x000CE5 00:CCD5: 10        .byte $10   ; 
- D 2 - I - 0x000CE6 00:CCD6: E2        .byte $E2   ; 
- D 2 - I - 0x000CE7 00:CCD7: B0        .byte $B0   ; 
- D 2 - I - 0x000CE8 00:CCD8: 90        .byte $90   ; 
- D 2 - I - 0x000CE9 00:CCD9: 61        .byte $61   ; 
- D 2 - I - 0x000CEA 00:CCDA: 91        .byte $91   ; 
- D 2 - I - 0x000CEB 00:CCDB: E1        .byte $E1   ; 
- D 2 - I - 0x000CEC 00:CCDC: 12        .byte $12   ; 
- D 2 - I - 0x000CED 00:CCDD: E2        .byte $E2   ; 
- D 2 - I - 0x000CEE 00:CCDE: B0        .byte $B0   ; 
- D 2 - I - 0x000CEF 00:CCDF: E1        .byte $E1   ; 
- D 2 - I - 0x000CF0 00:CCE0: 13        .byte $13   ; 
- D 2 - I - 0x000CF1 00:CCE1: C1        .byte $C1   ; 
- D 2 - I - 0x000CF2 00:CCE2: 90        .byte $90   ; 
- D 2 - I - 0x000CF3 00:CCE3: 60        .byte $60   ; 
- D 2 - I - 0x000CF4 00:CCE4: 40        .byte $40   ; 
- D 2 - I - 0x000CF5 00:CCE5: 11        .byte $11   ; 
- D 2 - I - 0x000CF6 00:CCE6: 41        .byte $41   ; 
- D 2 - I - 0x000CF7 00:CCE7: 61        .byte $61   ; 
- D 2 - I - 0x000CF8 00:CCE8: 10        .byte $10   ; 
- D 2 - I - 0x000CF9 00:CCE9: E2        .byte $E2   ; 
- D 2 - I - 0x000CFA 00:CCEA: B0        .byte $B0   ; 
- D 2 - I - 0x000CFB 00:CCEB: E1        .byte $E1   ; 
- D 2 - I - 0x000CFC 00:CCEC: 10        .byte $10   ; 
- D 2 - I - 0x000CFD 00:CCED: E2        .byte $E2   ; 
- D 2 - I - 0x000CFE 00:CCEE: 91        .byte $91   ; 
- D 2 - I - 0x000CFF 00:CCEF: C0        .byte $C0   ; 
- D 2 - I - 0x000D00 00:CCF0: E1        .byte $E1   ; 
- D 2 - I - 0x000D01 00:CCF1: 90        .byte $90   ; 
- D 2 - I - 0x000D02 00:CCF2: 60        .byte $60   ; 
- D 2 - I - 0x000D03 00:CCF3: 40        .byte $40   ; 
- D 2 - I - 0x000D04 00:CCF4: 11        .byte $11   ; 
- D 2 - I - 0x000D05 00:CCF5: E2        .byte $E2   ; 
- D 2 - I - 0x000D06 00:CCF6: B0        .byte $B0   ; 
- D 2 - I - 0x000D07 00:CCF7: E1        .byte $E1   ; 
- D 2 - I - 0x000D08 00:CCF8: 10        .byte $10   ; 
- D 2 - I - 0x000D09 00:CCF9: 65        .byte $65   ; 
- D 2 - I - 0x000D0A 00:CCFA: C1        .byte $C1   ; 
- D 2 - I - 0x000D0B 00:CCFB: B2        .byte $B2   ; 
- D 2 - I - 0x000D0C 00:CCFC: E0        .byte $E0   ; 
- D 2 - I - 0x000D0D 00:CCFD: 10        .byte $10   ; 
- D 2 - I - 0x000D0E 00:CCFE: E1        .byte $E1   ; 
- D 2 - I - 0x000D0F 00:CCFF: B0        .byte $B0   ; 
- D 2 - I - 0x000D10 00:CD00: 90        .byte $90   ; 
- D 2 - I - 0x000D11 00:CD01: 60        .byte $60   ; 
- D 2 - I - 0x000D12 00:CD02: 90        .byte $90   ; 
- D 2 - I - 0x000D13 00:CD03: 60        .byte $60   ; 
- D 2 - I - 0x000D14 00:CD04: 90        .byte $90   ; 
- D 2 - I - 0x000D15 00:CD05: 60        .byte $60   ; 
- D 2 - I - 0x000D16 00:CD06: 40        .byte $40   ; 
- D 2 - I - 0x000D17 00:CD07: 21        .byte $21   ; 
- D 2 - I - 0x000D18 00:CD08: 61        .byte $61   ; 
- D 2 - I - 0x000D19 00:CD09: 41        .byte $41   ; 
- D 2 - I - 0x000D1A 00:CD0A: E2        .byte $E2   ; 
- D 2 - I - 0x000D1B 00:CD0B: B0        .byte $B0   ; 
- D 2 - I - 0x000D1C 00:CD0C: E1        .byte $E1   ; 
- D 2 - I - 0x000D1D 00:CD0D: 10        .byte $10   ; 
- D 2 - I - 0x000D1E 00:CD0E: 40        .byte $40   ; 
- D 2 - I - 0x000D1F 00:CD0F: 60        .byte $60   ; 
- D 2 - I - 0x000D20 00:CD10: 90        .byte $90   ; 
- D 2 - I - 0x000D21 00:CD11: B0        .byte $B0   ; 
- D 2 - I - 0x000D22 00:CD12: E0        .byte $E0   ; 
- D 2 - I - 0x000D23 00:CD13: 12        .byte $12   ; 
- D 2 - I - 0x000D24 00:CD14: E1        .byte $E1   ; 
- D 2 - I - 0x000D25 00:CD15: B0        .byte $B0   ; 
- D 2 - I - 0x000D26 00:CD16: E0        .byte $E0   ; 
- D 2 - I - 0x000D27 00:CD17: 13        .byte $13   ; 
- D 2 - I - 0x000D28 00:CD18: E1        .byte $E1   ; 
- D 2 - I - 0x000D29 00:CD19: B0        .byte $B0   ; 
- D 2 - I - 0x000D2A 00:CD1A: E0        .byte $E0   ; 
- D 2 - I - 0x000D2B 00:CD1B: 10        .byte $10   ; 
- D 2 - I - 0x000D2C 00:CD1C: E1        .byte $E1   ; 
- D 2 - I - 0x000D2D 00:CD1D: B0        .byte $B0   ; 
- D 2 - I - 0x000D2E 00:CD1E: 90        .byte $90   ; 
- D 2 - I - 0x000D2F 00:CD1F: 60        .byte $60   ; 
- D 2 - I - 0x000D30 00:CD20: 90        .byte $90   ; 
- D 2 - I - 0x000D31 00:CD21: 60        .byte $60   ; 
- D 2 - I - 0x000D32 00:CD22: 40        .byte $40   ; 
- D 2 - I - 0x000D33 00:CD23: 20        .byte $20   ; 
- D 2 - I - 0x000D34 00:CD24: 40        .byte $40   ; 
- D 2 - I - 0x000D35 00:CD25: 20        .byte $20   ; 
- D 2 - I - 0x000D36 00:CD26: E2        .byte $E2   ; 
- D 2 - I - 0x000D37 00:CD27: 90        .byte $90   ; 
- D 2 - I - 0x000D38 00:CD28: E1        .byte $E1   ; 
- D 2 - I - 0x000D39 00:CD29: 21        .byte $21   ; 
- D 2 - I - 0x000D3A 00:CD2A: 61        .byte $61   ; 
- D 2 - I - 0x000D3B 00:CD2B: 41        .byte $41   ; 
- D 2 - I - 0x000D3C 00:CD2C: E2        .byte $E2   ; 
- D 2 - I - 0x000D3D 00:CD2D: B0        .byte $B0   ; 
- D 2 - I - 0x000D3E 00:CD2E: E1        .byte $E1   ; 
- D 2 - I - 0x000D3F 00:CD2F: 10        .byte $10   ; 
- D 2 - I - 0x000D40 00:CD30: 40        .byte $40   ; 
- D 2 - I - 0x000D41 00:CD31: 10        .byte $10   ; 
- D 2 - I - 0x000D42 00:CD32: 41        .byte $41   ; 
- D 2 - I - 0x000D43 00:CD33: 67        .byte $67   ; 
- D 2 - I - 0x000D44 00:CD34: FE        .byte $FE   ; 
- D 2 - I - 0x000D45 00:CD35: FF        .byte $FF   ; 
- D 2 - I - 0x000D46 00:CD36: A0 CC     .word off_FE_CCA0



_off004_CD38_0E:
off_FE_CD38:
- D 2 - I - 0x000D48 00:CD38: D8        .byte $D8   ; 
- D 2 - I - 0x000D49 00:CD39: 3C        .byte $3C   ; 
- D 2 - I - 0x000D4A 00:CD3A: 44        .byte $44   ; 
- D 2 - I - 0x000D4B 00:CD3B: E0        .byte $E0   ; 
- D 2 - I - 0x000D4C 00:CD3C: 11        .byte $11   ; 
- D 2 - I - 0x000D4D 00:CD3D: 10        .byte $10   ; 
- D 2 - I - 0x000D4E 00:CD3E: 10        .byte $10   ; 
- D 2 - I - 0x000D4F 00:CD3F: E1        .byte $E1   ; 
- D 2 - I - 0x000D50 00:CD40: B1        .byte $B1   ; 
- D 2 - I - 0x000D51 00:CD41: B1        .byte $B1   ; 
- D 2 - I - 0x000D52 00:CD42: 81        .byte $81   ; 
- D 2 - I - 0x000D53 00:CD43: 81        .byte $81   ; 
- D 2 - I - 0x000D54 00:CD44: 43        .byte $43   ; 
- D 2 - I - 0x000D55 00:CD45: 60        .byte $60   ; 
- D 2 - I - 0x000D56 00:CD46: 80        .byte $80   ; 
- D 2 - I - 0x000D57 00:CD47: 60        .byte $60   ; 
- D 2 - I - 0x000D58 00:CD48: 40        .byte $40   ; 
- D 2 - I - 0x000D59 00:CD49: 11        .byte $11   ; 
- D 2 - I - 0x000D5A 00:CD4A: 41        .byte $41   ; 
- D 2 - I - 0x000D5B 00:CD4B: 15        .byte $15   ; 
- D 2 - I - 0x000D5C 00:CD4C: C1        .byte $C1   ; 
- D 2 - I - 0x000D5D 00:CD4D: D8        .byte $D8   ; 
- D 2 - I - 0x000D5E 00:CD4E: B7        .byte $B7   ; 
- D 2 - I - 0x000D5F 00:CD4F: 44        .byte $44   ; 
off_FE_CD50:
- D 2 - I - 0x000D60 00:CD50: E3        .byte $E3   ; 
- D 2 - I - 0x000D61 00:CD51: 61        .byte $61   ; 
- D 2 - I - 0x000D62 00:CD52: 60        .byte $60   ; 
- D 2 - I - 0x000D63 00:CD53: 60        .byte $60   ; 
- D 2 - I - 0x000D64 00:CD54: B1        .byte $B1   ; 
- D 2 - I - 0x000D65 00:CD55: E2        .byte $E2   ; 
- D 2 - I - 0x000D66 00:CD56: 11        .byte $11   ; 
- D 2 - I - 0x000D67 00:CD57: FE        .byte $FE   ; 
- D 2 - I - 0x000D68 00:CD58: 08        .byte $08   ; 
- D 2 - I - 0x000D69 00:CD59: 50 CD     .word off_FE_CD50
- D 2 - I - 0x000D6B 00:CD5B: D8        .byte $D8   ; 
- D 2 - I - 0x000D6C 00:CD5C: B8        .byte $B8   ; 
- D 2 - I - 0x000D6D 00:CD5D: 44        .byte $44   ; 
off_FE_CD5E:
- D 2 - I - 0x000D6E 00:CD5E: E3        .byte $E3   ; 
- D 2 - I - 0x000D6F 00:CD5F: 61        .byte $61   ; 
- D 2 - I - 0x000D70 00:CD60: E2        .byte $E2   ; 
- D 2 - I - 0x000D71 00:CD61: 61        .byte $61   ; 
- D 2 - I - 0x000D72 00:CD62: 11        .byte $11   ; 
- D 2 - I - 0x000D73 00:CD63: 61        .byte $61   ; 
- D 2 - I - 0x000D74 00:CD64: FE        .byte $FE   ; 
- D 2 - I - 0x000D75 00:CD65: 04        .byte $04   ; 
- D 2 - I - 0x000D76 00:CD66: 5E CD     .word off_FE_CD5E
- D 2 - I - 0x000D78 00:CD68: E3        .byte $E3   ; 
- D 2 - I - 0x000D79 00:CD69: 91        .byte $91   ; 
- D 2 - I - 0x000D7A 00:CD6A: E2        .byte $E2   ; 
- D 2 - I - 0x000D7B 00:CD6B: 91        .byte $91   ; 
- D 2 - I - 0x000D7C 00:CD6C: 41        .byte $41   ; 
- D 2 - I - 0x000D7D 00:CD6D: 91        .byte $91   ; 
- D 2 - I - 0x000D7E 00:CD6E: E3        .byte $E3   ; 
- D 2 - I - 0x000D7F 00:CD6F: 91        .byte $91   ; 
- D 2 - I - 0x000D80 00:CD70: E2        .byte $E2   ; 
- D 2 - I - 0x000D81 00:CD71: 91        .byte $91   ; 
- D 2 - I - 0x000D82 00:CD72: 41        .byte $41   ; 
- D 2 - I - 0x000D83 00:CD73: 91        .byte $91   ; 
- D 2 - I - 0x000D84 00:CD74: E3        .byte $E3   ; 
- D 2 - I - 0x000D85 00:CD75: 61        .byte $61   ; 
- D 2 - I - 0x000D86 00:CD76: E2        .byte $E2   ; 
- D 2 - I - 0x000D87 00:CD77: 61        .byte $61   ; 
- D 2 - I - 0x000D88 00:CD78: 11        .byte $11   ; 
- D 2 - I - 0x000D89 00:CD79: 61        .byte $61   ; 
- D 2 - I - 0x000D8A 00:CD7A: E3        .byte $E3   ; 
- D 2 - I - 0x000D8B 00:CD7B: 61        .byte $61   ; 
- D 2 - I - 0x000D8C 00:CD7C: E2        .byte $E2   ; 
- D 2 - I - 0x000D8D 00:CD7D: 10        .byte $10   ; 
- D 2 - I - 0x000D8E 00:CD7E: E3        .byte $E3   ; 
- D 2 - I - 0x000D8F 00:CD7F: B0        .byte $B0   ; 
- D 2 - I - 0x000D90 00:CD80: E2        .byte $E2   ; 
- D 2 - I - 0x000D91 00:CD81: 11        .byte $11   ; 
- D 2 - I - 0x000D92 00:CD82: 61        .byte $61   ; 
- D 2 - I - 0x000D93 00:CD83: E4        .byte $E4   ; 
- D 2 - I - 0x000D94 00:CD84: B1        .byte $B1   ; 
- D 2 - I - 0x000D95 00:CD85: E3        .byte $E3   ; 
- D 2 - I - 0x000D96 00:CD86: B1        .byte $B1   ; 
- D 2 - I - 0x000D97 00:CD87: 61        .byte $61   ; 
- D 2 - I - 0x000D98 00:CD88: B1        .byte $B1   ; 
- D 2 - I - 0x000D99 00:CD89: 21        .byte $21   ; 
- D 2 - I - 0x000D9A 00:CD8A: E2        .byte $E2   ; 
- D 2 - I - 0x000D9B 00:CD8B: 21        .byte $21   ; 
- D 2 - I - 0x000D9C 00:CD8C: E3        .byte $E3   ; 
- D 2 - I - 0x000D9D 00:CD8D: 91        .byte $91   ; 
- D 2 - I - 0x000D9E 00:CD8E: E2        .byte $E2   ; 
- D 2 - I - 0x000D9F 00:CD8F: B1        .byte $B1   ; 
- D 2 - I - 0x000DA0 00:CD90: E3        .byte $E3   ; 
- D 2 - I - 0x000DA1 00:CD91: 41        .byte $41   ; 
- D 2 - I - 0x000DA2 00:CD92: E2        .byte $E2   ; 
- D 2 - I - 0x000DA3 00:CD93: 41        .byte $41   ; 
- D 2 - I - 0x000DA4 00:CD94: E3        .byte $E3   ; 
- D 2 - I - 0x000DA5 00:CD95: B1        .byte $B1   ; 
- D 2 - I - 0x000DA6 00:CD96: E2        .byte $E2   ; 
- D 2 - I - 0x000DA7 00:CD97: 41        .byte $41   ; 
- D 2 - I - 0x000DA8 00:CD98: E4        .byte $E4   ; 
- D 2 - I - 0x000DA9 00:CD99: 91        .byte $91   ; 
- D 2 - I - 0x000DAA 00:CD9A: E3        .byte $E3   ; 
- D 2 - I - 0x000DAB 00:CD9B: 91        .byte $91   ; 
- D 2 - I - 0x000DAC 00:CD9C: 41        .byte $41   ; 
- D 2 - I - 0x000DAD 00:CD9D: 91        .byte $91   ; 
- D 2 - I - 0x000DAE 00:CD9E: E4        .byte $E4   ; 
- D 2 - I - 0x000DAF 00:CD9F: B1        .byte $B1   ; 
- D 2 - I - 0x000DB0 00:CDA0: E3        .byte $E3   ; 
- D 2 - I - 0x000DB1 00:CDA1: B1        .byte $B1   ; 
- D 2 - I - 0x000DB2 00:CDA2: 61        .byte $61   ; 
- D 2 - I - 0x000DB3 00:CDA3: B1        .byte $B1   ; 
- D 2 - I - 0x000DB4 00:CDA4: 21        .byte $21   ; 
- D 2 - I - 0x000DB5 00:CDA5: E2        .byte $E2   ; 
- D 2 - I - 0x000DB6 00:CDA6: 21        .byte $21   ; 
- D 2 - I - 0x000DB7 00:CDA7: E3        .byte $E3   ; 
- D 2 - I - 0x000DB8 00:CDA8: 91        .byte $91   ; 
- D 2 - I - 0x000DB9 00:CDA9: E2        .byte $E2   ; 
- D 2 - I - 0x000DBA 00:CDAA: 21        .byte $21   ; 
- D 2 - I - 0x000DBB 00:CDAB: E3        .byte $E3   ; 
- D 2 - I - 0x000DBC 00:CDAC: 41        .byte $41   ; 
- D 2 - I - 0x000DBD 00:CDAD: E2        .byte $E2   ; 
- D 2 - I - 0x000DBE 00:CDAE: 41        .byte $41   ; 
- D 2 - I - 0x000DBF 00:CDAF: E3        .byte $E3   ; 
- D 2 - I - 0x000DC0 00:CDB0: B1        .byte $B1   ; 
- D 2 - I - 0x000DC1 00:CDB1: E2        .byte $E2   ; 
- D 2 - I - 0x000DC2 00:CDB2: 41        .byte $41   ; 
- D 2 - I - 0x000DC3 00:CDB3: E3        .byte $E3   ; 
- D 2 - I - 0x000DC4 00:CDB4: 61        .byte $61   ; 
- D 2 - I - 0x000DC5 00:CDB5: E2        .byte $E2   ; 
- D 2 - I - 0x000DC6 00:CDB6: 10        .byte $10   ; 
- D 2 - I - 0x000DC7 00:CDB7: E3        .byte $E3   ; 
- D 2 - I - 0x000DC8 00:CDB8: B0        .byte $B0   ; 
- D 2 - I - 0x000DC9 00:CDB9: E2        .byte $E2   ; 
- D 2 - I - 0x000DCA 00:CDBA: 11        .byte $11   ; 
- D 2 - I - 0x000DCB 00:CDBB: 61        .byte $61   ; 
- D 2 - I - 0x000DCC 00:CDBC: FE        .byte $FE   ; 
- D 2 - I - 0x000DCD 00:CDBD: FF        .byte $FF   ; 
- D 2 - I - 0x000DCE 00:CDBE: 38 CD     .word off_FE_CD38


; bzk garbage
- - - - - - 0x000DD0 00:CDC0: FF        .byte $FF   ; 



_off004_CDC1_0F:
- D 2 - I - 0x000DD1 00:CDC1: D7        .byte $D7   ; 
- D 2 - I - 0x000DD2 00:CDC2: 3A        .byte $3A   ; 
- D 2 - I - 0x000DD3 00:CDC3: 44        .byte $44   ; 
- D 2 - I - 0x000DD4 00:CDC4: E1        .byte $E1   ; 
- D 2 - I - 0x000DD5 00:CDC5: 61        .byte $61   ; 
- D 2 - I - 0x000DD6 00:CDC6: 60        .byte $60   ; 
- D 2 - I - 0x000DD7 00:CDC7: 60        .byte $60   ; 
- D 2 - I - 0x000DD8 00:CDC8: 81        .byte $81   ; 
- D 2 - I - 0x000DD9 00:CDC9: 61        .byte $61   ; 
- D 2 - I - 0x000DDA 00:CDCA: A1        .byte $A1   ; 
- D 2 - I - 0x000DDB 00:CDCB: 80        .byte $80   ; 
- D 2 - I - 0x000DDC 00:CDCC: 60        .byte $60   ; 
- D 2 - I - 0x000DDD 00:CDCD: 33        .byte $33   ; 
- D 2 - I - 0x000DDE 00:CDCE: 10        .byte $10   ; 
- D 2 - I - 0x000DDF 00:CDCF: 30        .byte $30   ; 
- D 2 - I - 0x000DE0 00:CDD0: 60        .byte $60   ; 
- D 2 - I - 0x000DE1 00:CDD1: 80        .byte $80   ; 
- D 2 - I - 0x000DE2 00:CDD2: A6        .byte $A6   ; 
- D 2 - I - 0x000DE3 00:CDD3: FF        .byte $FF   ; 



_off004_CDD4_10:
- D 2 - I - 0x000DE4 00:CDD4: D7        .byte $D7   ; 
- D 2 - I - 0x000DE5 00:CDD5: 3A        .byte $3A   ; 
- D 2 - I - 0x000DE6 00:CDD6: 44        .byte $44   ; 
- D 2 - I - 0x000DE7 00:CDD7: E1        .byte $E1   ; 
- D 2 - I - 0x000DE8 00:CDD8: 11        .byte $11   ; 
- D 2 - I - 0x000DE9 00:CDD9: 10        .byte $10   ; 
- D 2 - I - 0x000DEA 00:CDDA: 10        .byte $10   ; 
- D 2 - I - 0x000DEB 00:CDDB: 31        .byte $31   ; 
- D 2 - I - 0x000DEC 00:CDDC: 11        .byte $11   ; 
- D 2 - I - 0x000DED 00:CDDD: 61        .byte $61   ; 
- D 2 - I - 0x000DEE 00:CDDE: 30        .byte $30   ; 
- D 2 - I - 0x000DEF 00:CDDF: 10        .byte $10   ; 
- D 2 - I - 0x000DF0 00:CDE0: E2        .byte $E2   ; 
- D 2 - I - 0x000DF1 00:CDE1: A3        .byte $A3   ; 
- D 2 - I - 0x000DF2 00:CDE2: 80        .byte $80   ; 
- D 2 - I - 0x000DF3 00:CDE3: A0        .byte $A0   ; 
- D 2 - I - 0x000DF4 00:CDE4: E1        .byte $E1   ; 
- D 2 - I - 0x000DF5 00:CDE5: 10        .byte $10   ; 
- D 2 - I - 0x000DF6 00:CDE6: 30        .byte $30   ; 
- D 2 - I - 0x000DF7 00:CDE7: 66        .byte $66   ; 
- D 2 - I - 0x000DF8 00:CDE8: FF        .byte $FF   ; 



_off004_CDE9_11:
- D 2 - I - 0x000DF9 00:CDE9: D8        .byte $D8   ; 
- D 2 - I - 0x000DFA 00:CDEA: 3A        .byte $3A   ; 
- D 2 - I - 0x000DFB 00:CDEB: 25        .byte $25   ; 
- D 2 - I - 0x000DFC 00:CDEC: E1        .byte $E1   ; 
- D 2 - I - 0x000DFD 00:CDED: 61        .byte $61   ; 
- D 2 - I - 0x000DFE 00:CDEE: 40        .byte $40   ; 
- D 2 - I - 0x000DFF 00:CDEF: 60        .byte $60   ; 
- D 2 - I - 0x000E00 00:CDF0: D9        .byte $D9   ; 
- D 2 - I - 0x000E01 00:CDF1: 3A        .byte $3A   ; 
- D 2 - I - 0x000E02 00:CDF2: 25        .byte $25   ; 
- D 2 - I - 0x000E03 00:CDF3: 11        .byte $11   ; 
- D 2 - I - 0x000E04 00:CDF4: E2        .byte $E2   ; 
- D 2 - I - 0x000E05 00:CDF5: B0        .byte $B0   ; 
- D 2 - I - 0x000E06 00:CDF6: E1        .byte $E1   ; 
- D 2 - I - 0x000E07 00:CDF7: 10        .byte $10   ; 
- D 2 - I - 0x000E08 00:CDF8: 41        .byte $41   ; 
- D 2 - I - 0x000E09 00:CDF9: DA        .byte $DA   ; 
- D 2 - I - 0x000E0A 00:CDFA: 3A        .byte $3A   ; 
- D 2 - I - 0x000E0B 00:CDFB: 25        .byte $25   ; 
- D 2 - I - 0x000E0C 00:CDFC: 10        .byte $10   ; 
- D 2 - I - 0x000E0D 00:CDFD: DB        .byte $DB   ; 
- D 2 - I - 0x000E0E 00:CDFE: 3A        .byte $3A   ; 
- D 2 - I - 0x000E0F 00:CDFF: 25        .byte $25   ; 
- D 2 - I - 0x000E10 00:CE00: 40        .byte $40   ; 
- D 2 - I - 0x000E11 00:CE01: 65        .byte $65   ; 
- D 2 - I - 0x000E12 00:CE02: FF        .byte $FF   ; 



_off004_CE03_12:
- D 2 - I - 0x000E13 00:CE03: D8        .byte $D8   ; 
- D 2 - I - 0x000E14 00:CE04: 3A        .byte $3A   ; 
- D 2 - I - 0x000E15 00:CE05: 25        .byte $25   ; 
- D 2 - I - 0x000E16 00:CE06: E1        .byte $E1   ; 
- D 2 - I - 0x000E17 00:CE07: 11        .byte $11   ; 
- D 2 - I - 0x000E18 00:CE08: E2        .byte $E2   ; 
- D 2 - I - 0x000E19 00:CE09: B0        .byte $B0   ; 
- D 2 - I - 0x000E1A 00:CE0A: E1        .byte $E1   ; 
- D 2 - I - 0x000E1B 00:CE0B: 10        .byte $10   ; 
- D 2 - I - 0x000E1C 00:CE0C: D9        .byte $D9   ; 
- D 2 - I - 0x000E1D 00:CE0D: 39        .byte $39   ; 
- D 2 - I - 0x000E1E 00:CE0E: 25        .byte $25   ; 
- D 2 - I - 0x000E1F 00:CE0F: E2        .byte $E2   ; 
- D 2 - I - 0x000E20 00:CE10: 81        .byte $81   ; 
- D 2 - I - 0x000E21 00:CE11: 60        .byte $60   ; 
- D 2 - I - 0x000E22 00:CE12: 80        .byte $80   ; 
- D 2 - I - 0x000E23 00:CE13: B1        .byte $B1   ; 
- D 2 - I - 0x000E24 00:CE14: DA        .byte $DA   ; 
- D 2 - I - 0x000E25 00:CE15: 3A        .byte $3A   ; 
- D 2 - I - 0x000E26 00:CE16: 25        .byte $25   ; 
- D 2 - I - 0x000E27 00:CE17: 80        .byte $80   ; 
- D 2 - I - 0x000E28 00:CE18: DB        .byte $DB   ; 
- D 2 - I - 0x000E29 00:CE19: 3A        .byte $3A   ; 
- D 2 - I - 0x000E2A 00:CE1A: 25        .byte $25   ; 
- D 2 - I - 0x000E2B 00:CE1B: B0        .byte $B0   ; 
- D 2 - I - 0x000E2C 00:CE1C: E1        .byte $E1   ; 
- D 2 - I - 0x000E2D 00:CE1D: 15        .byte $15   ; 
- D 2 - I - 0x000E2E 00:CE1E: FF        .byte $FF   ; 



_off004_CE1F_13:
- D 2 - I - 0x000E2F 00:CE1F: D8        .byte $D8   ; 
- D 2 - I - 0x000E30 00:CE20: FC        .byte $FC   ; 
- D 2 - I - 0x000E31 00:CE21: E2        .byte $E2   ; 
- D 2 - I - 0x000E32 00:CE22: 91        .byte $91   ; 
- D 2 - I - 0x000E33 00:CE23: 60        .byte $60   ; 
- D 2 - I - 0x000E34 00:CE24: 90        .byte $90   ; 
- D 2 - I - 0x000E35 00:CE25: D9        .byte $D9   ; 
- D 2 - I - 0x000E36 00:CE26: FC        .byte $FC   ; 
- D 2 - I - 0x000E37 00:CE27: 41        .byte $41   ; 
- D 2 - I - 0x000E38 00:CE28: 10        .byte $10   ; 
- D 2 - I - 0x000E39 00:CE29: 40        .byte $40   ; 
- D 2 - I - 0x000E3A 00:CE2A: 60        .byte $60   ; 
- D 2 - I - 0x000E3B 00:CE2B: 40        .byte $40   ; 
- D 2 - I - 0x000E3C 00:CE2C: DA        .byte $DA   ; 
- D 2 - I - 0x000E3D 00:CE2D: FC        .byte $FC   ; 
- D 2 - I - 0x000E3E 00:CE2E: 60        .byte $60   ; 
- D 2 - I - 0x000E3F 00:CE2F: DB        .byte $DB   ; 
- D 2 - I - 0x000E40 00:CE30: FC        .byte $FC   ; 
- D 2 - I - 0x000E41 00:CE31: 80        .byte $80   ; 
- D 2 - I - 0x000E42 00:CE32: 95        .byte $95   ; 
- D 2 - I - 0x000E43 00:CE33: FF        .byte $FF   ; 



_off004_CE34_17:
- - - - - - 0x000E44 00:CE34: 25        .byte $25   ; 
- - - - - - 0x000E45 00:CE35: 12        .byte $12   ; 
- - - - - - 0x000E46 00:CE36: 00        .byte $00   ; 
- - - - - - 0x000E47 00:CE37: 50        .byte $50   ; 
- - - - - - 0x000E48 00:CE38: 00        .byte $00   ; 
- - - - - - 0x000E49 00:CE39: 43        .byte $43   ; 
- - - - - - 0x000E4A 00:CE3A: 00        .byte $00   ; 
- - - - - - 0x000E4B 00:CE3B: 38        .byte $38   ; 
- - - - - - 0x000E4C 00:CE3C: 00        .byte $00   ; 
- - - - - - 0x000E4D 00:CE3D: 43        .byte $43   ; 
- - - - - - 0x000E4E 00:CE3E: 00        .byte $00   ; 
- - - - - - 0x000E4F 00:CE3F: 38        .byte $38   ; 
- - - - - - 0x000E50 00:CE40: 2F        .byte $2F   ; 
- - - - - - 0x000E51 00:CE41: 15        .byte $15   ; 
- - - - - - 0x000E52 00:CE42: 00        .byte $00   ; 
- - - - - - 0x000E53 00:CE43: 2A        .byte $2A   ; 
- - - - - - 0x000E54 00:CE44: FF        .byte $FF   ; 



sub_CE45:
loc_CE45:
C D 2 - - - 0x000E55 00:CE45: 86 49     STX ram_0049
C - - - - - 0x000E57 00:CE47: 84 38     STY ram_0038
C - - - - - 0x000E59 00:CE49: 85 27     STA ram_0027
C - - - - - 0x000E5B 00:CE4B: 4A        LSR
C - - - - - 0x000E5C 00:CE4C: 4A        LSR
C - - - - - 0x000E5D 00:CE4D: 4A        LSR
C - - - - - 0x000E5E 00:CE4E: 4A        LSR
C - - - - - 0x000E5F 00:CE4F: 29 0C     AND #$0C
C - - - - - 0x000E61 00:CE51: 85 16     STA ram_0016
C - - - - - 0x000E63 00:CE53: 4A        LSR
C - - - - - 0x000E64 00:CE54: 4A        LSR
C - - - - - 0x000E65 00:CE55: A8        TAY
C - - - - - 0x000E66 00:CE56: BE AE CE  LDX tbl_CEAE,Y
C - - - - - 0x000E69 00:CE59: A5 27     LDA ram_0027
C - - - - - 0x000E6B 00:CE5B: 29 3F     AND #$3F
C - - - - - 0x000E6D 00:CE5D: F0 34     BEQ bra_CE93
C - - - - - 0x000E6F 00:CE5F: D5 02     CMP ram_0002,X
C - - - - - 0x000E71 00:CE61: 90 46     BCC bra_CEA9
C - - - - - 0x000E73 00:CE63: D0 04     BNE bra_CE69
C - - - - - 0x000E75 00:CE65: C9 01     CMP #$01
C - - - - - 0x000E77 00:CE67: D0 40     BNE bra_CEA9
bra_CE69:
C - - - - - 0x000E79 00:CE69: 85 27     STA ram_0027
C - - - - - 0x000E7B 00:CE6B: A0 00     LDY #$00
C - - - - - 0x000E7D 00:CE6D: 94 02     STY ram_0002,X
C - - - - - 0x000E7F 00:CE6F: 0A        ASL
C - - - - - 0x000E80 00:CE70: A8        TAY
C - - - - - 0x000E81 00:CE71: B9 40 CB  LDA tbl_CB42_sound - 2,Y
C - - - - - 0x000E84 00:CE74: 95 03     STA ram_0003,X
C - - - - - 0x000E86 00:CE76: 85 F2     STA ram_00F2
C - - - - - 0x000E88 00:CE78: B9 41 CB  LDA tbl_CB42_sound - 1,Y
C - - - - - 0x000E8B 00:CE7B: 95 04     STA ram_0004,X
C - - - - - 0x000E8D 00:CE7D: 85 F3     STA ram_00F3
C - - - - - 0x000E8F 00:CE7F: A0 01     LDY #$01
C - - - - - 0x000E91 00:CE81: 94 00     STY ram_0000,X
C - - - - - 0x000E93 00:CE83: 88        DEY
C - - - - - 0x000E94 00:CE84: 94 07     STY ram_btn_hold,X
C - - - - - 0x000E96 00:CE86: 94 08     STY ram_0008,X
C - - - - - 0x000E98 00:CE88: B1 F2     LDA (ram_00F2),Y
C - - - - - 0x000E9A 00:CE8A: 29 F0     AND #$F0
C - - - - - 0x000E9C 00:CE8C: C9 20     CMP #$20
C - - - - - 0x000E9E 00:CE8E: F0 01     BEQ bra_CE91
C - - - - - 0x000EA0 00:CE90: C8        INY
bra_CE91:
C - - - - - 0x000EA1 00:CE91: 94 0A     STY ram_000A,X
bra_CE93:
C - - - - - 0x000EA3 00:CE93: A9 00     LDA #$00
C - - - - - 0x000EA5 00:CE95: A4 16     LDY ram_0016
C - - - - - 0x000EA7 00:CE97: C0 08     CPY #$08
C - - - - - 0x000EA9 00:CE99: F0 02     BEQ bra_CE9D
C - - - - - 0x000EAB 00:CE9B: A9 30     LDA #$30
bra_CE9D:
C - - - - - 0x000EAD 00:CE9D: 99 00 40  STA $4000,Y
C - - - - - 0x000EB0 00:CEA0: 99 01 40  STA $4001,Y
C - - - - - 0x000EB3 00:CEA3: A5 27     LDA ram_0027
C - - - - - 0x000EB5 00:CEA5: 29 3F     AND #$3F
C - - - - - 0x000EB7 00:CEA7: 95 02     STA ram_0002,X
bra_CEA9:
C - - - - - 0x000EB9 00:CEA9: A6 49     LDX ram_0049
C - - - - - 0x000EBB 00:CEAB: A4 38     LDY ram_0038
C - - - - - 0x000EBD 00:CEAD: 60        RTS



tbl_CEAE:
- D 2 - - - 0x000EBE 00:CEAE: 10        .byte $10   ; 00
- D 2 - - - 0x000EBF 00:CEAF: 21        .byte $21   ; 01
- D 2 - - - 0x000EC0 00:CEB0: 32        .byte $32   ; 02
- D 2 - - - 0x000EC1 00:CEB1: 43        .byte $43   ; 03



loc_CEB2:
C D 2 - - - 0x000EC2 00:CEB2: B5 07     LDA ram_btn_hold,X
C - - - - - 0x000EC4 00:CEB4: 18        CLC
C - - - - - 0x000EC5 00:CEB5: 69 01     ADC #$01
C - - - - - 0x000EC7 00:CEB7: C8        INY
C - - - - - 0x000EC8 00:CEB8: D1 F6     CMP (ram_00F6),Y
C - - - - - 0x000ECA 00:CEBA: F0 14     BEQ bra_CED0
C - - - - - 0x000ECC 00:CEBC: 30 03     BMI bra_CEC1
C - - - - - 0x000ECE 00:CEBE: 38        SEC
C - - - - - 0x000ECF 00:CEBF: E9 01     SBC #$01
bra_CEC1:
C - - - - - 0x000ED1 00:CEC1: 95 07     STA ram_btn_hold,X
C - - - - - 0x000ED3 00:CEC3: C8        INY
C - - - - - 0x000ED4 00:CEC4: B1 F6     LDA (ram_00F6),Y
C - - - - - 0x000ED6 00:CEC6: 95 03     STA ram_0003,X
C - - - - - 0x000ED8 00:CEC8: C8        INY
C - - - - - 0x000ED9 00:CEC9: B1 F6     LDA (ram_00F6),Y
C - - - - - 0x000EDB 00:CECB: 95 04     STA ram_0004,X
C - - - - - 0x000EDD 00:CECD: 4C E3 CE  JMP loc_CEE3
bra_CED0:
C - - - - - 0x000EE0 00:CED0: A9 00     LDA #$00
C - - - - - 0x000EE2 00:CED2: 95 07     STA ram_btn_hold,X
C - - - - - 0x000EE4 00:CED4: C8        INY
C - - - - - 0x000EE5 00:CED5: C8        INY
C - - - - - 0x000EE6 00:CED6: C8        INY
C - - - - - 0x000EE7 00:CED7: 98        TYA
C - - - - - 0x000EE8 00:CED8: 18        CLC
C - - - - - 0x000EE9 00:CED9: 65 F6     ADC ram_00F6
C - - - - - 0x000EEB 00:CEDB: 95 03     STA ram_0003,X
C - - - - - 0x000EED 00:CEDD: A9 00     LDA #$00
C - - - - - 0x000EEF 00:CEDF: 65 F7     ADC ram_00F7
C - - - - - 0x000EF1 00:CEE1: 95 04     STA ram_0004,X
loc_CEE3:
C D 2 - - - 0x000EF3 00:CEE3: A9 01     LDA #$01
C - - - - - 0x000EF5 00:CEE5: 95 00     STA ram_0000,X
C - - - - - 0x000EF7 00:CEE7: 4C 1B CF  JMP loc_CF1B
bra_CEEA:
C - - - - - 0x000EFA 00:CEEA: 94 02     STY ram_0002,X
C - - - - - 0x000EFC 00:CEEC: 98        TYA
C - - - - - 0x000EFD 00:CEED: A6 F5     LDX ram_00F5
C - - - - - 0x000EFF 00:CEEF: E0 08     CPX #$08
C - - - - - 0x000F01 00:CEF1: F0 02     BEQ bra_CEF5
C - - - - - 0x000F03 00:CEF3: A9 30     LDA #$30
bra_CEF5:
C - - - - - 0x000F05 00:CEF5: 9D 00 40  STA $4000,X
C - - - - - 0x000F08 00:CEF8: 60        RTS



sub_CEF9:
C - - - - - 0x000F09 00:CEF9: A2 10     LDX #$10
C - - - - - 0x000F0B 00:CEFB: A0 00     LDY #$00
bra_CEFD_loop:
C - - - - - 0x000F0D 00:CEFD: 86 F4     STX ram_00F4
C - - - - - 0x000F0F 00:CEFF: 84 F5     STY ram_00F5
C - - - - - 0x000F11 00:CF01: B5 02     LDA ram_0002,X
C - - - - - 0x000F13 00:CF03: F0 03     BEQ bra_CF08
C - - - - - 0x000F15 00:CF05: 20 1B CF  JSR sub_CF1B
bra_CF08:
C - - - - - 0x000F18 00:CF08: A5 F4     LDA ram_00F4
C - - - - - 0x000F1A 00:CF0A: 18        CLC
C - - - - - 0x000F1B 00:CF0B: 69 11     ADC #$11
C - - - - - 0x000F1D 00:CF0D: C9 54     CMP #$54
C - - - - - 0x000F1F 00:CF0F: D0 01     BNE bra_CF12
C - - - - - 0x000F21 00:CF11: 60        RTS
bra_CF12:
C - - - - - 0x000F22 00:CF12: AA        TAX
C - - - - - 0x000F23 00:CF13: A5 F5     LDA ram_00F5
C - - - - - 0x000F25 00:CF15: 18        CLC
C - - - - - 0x000F26 00:CF16: 69 04     ADC #$04
C - - - - - 0x000F28 00:CF18: A8        TAY
C - - - - - 0x000F29 00:CF19: 90 E2     BCC bra_CEFD_loop



loc_CF1B:
sub_CF1B:
C D 2 - - - 0x000F2B 00:CF1B: A0 00     LDY #$00
C - - - - - 0x000F2D 00:CF1D: B5 03     LDA ram_0003,X
C - - - - - 0x000F2F 00:CF1F: 85 F6     STA ram_00F6
C - - - - - 0x000F31 00:CF21: B5 04     LDA ram_0004,X
C - - - - - 0x000F33 00:CF23: 85 F7     STA ram_00F7
C - - - - - 0x000F35 00:CF25: D6 00     DEC ram_0000,X
C - - - - - 0x000F37 00:CF27: F0 1B     BEQ bra_CF44
C - - - - - 0x000F39 00:CF29: A5 67     LDA ram_0067
C - - - - - 0x000F3B 00:CF2B: F0 14     BEQ bra_CF41
- - - - - - 0x000F3D 00:CF2D: B5 02     LDA ram_0002,X
- - - - - - 0x000F3F 00:CF2F: C9 17     CMP #$17
- - - - - - 0x000F41 00:CF31: F0 0D     BEQ bra_CF40_RTS
loc_CF33:
- - - - - - 0x000F43 00:CF33: F6 00     INC ram_0000,X
- - - - - - 0x000F45 00:CF35: 98        TYA
- - - - - - 0x000F46 00:CF36: 95 08     STA ram_0008,X
- - - - - - 0x000F48 00:CF38: A6 F5     LDX ram_00F5
- - - - - - 0x000F4A 00:CF3A: 9D 02 40  STA $4002,X
- - - - - - 0x000F4D 00:CF3D: 9D 03 40  STA $4003,X
bra_CF40_RTS:
- - - - - - 0x000F50 00:CF40: 60        RTS
bra_CF41:
C - - - - - 0x000F51 00:CF41: 4C AC CF  JMP loc_CFAC
bra_CF44:
C - - - - - 0x000F54 00:CF44: B1 F6     LDA (ram_00F6),Y
C - - - - - 0x000F56 00:CF46: C9 FE     CMP #$FE
C - - - - - 0x000F58 00:CF48: 90 05     BCC bra_CF4F
C - - - - - 0x000F5A 00:CF4A: D0 9E     BNE bra_CEEA
C - - - - - 0x000F5C 00:CF4C: 4C B2 CE  JMP loc_CEB2
bra_CF4F:
C - - - - - 0x000F5F 00:CF4F: B5 0A     LDA ram_000A,X
C - - - - - 0x000F61 00:CF51: F0 03     BEQ bra_CF56
C - - - - - 0x000F63 00:CF53: 4C F9 CF  JMP loc_CFF9
bra_CF56:
C - - - - - 0x000F66 00:CF56: B1 F6     LDA (ram_00F6),Y
C - - - - - 0x000F68 00:CF58: 29 F0     AND #$F0
C - - - - - 0x000F6A 00:CF5A: C9 20     CMP #$20
C - - - - - 0x000F6C 00:CF5C: D0 13     BNE bra_CF71
C - - - - - 0x000F6E 00:CF5E: B1 F6     LDA (ram_00F6),Y
C - - - - - 0x000F70 00:CF60: 29 0F     AND #$0F
C - - - - - 0x000F72 00:CF62: 95 01     STA ram_0001,X
C - - - - - 0x000F74 00:CF64: C8        INY
C - - - - - 0x000F75 00:CF65: B1 F6     LDA (ram_00F6),Y
C - - - - - 0x000F77 00:CF67: A6 F5     LDX ram_00F5
C - - - - - 0x000F79 00:CF69: 9D 00 40  STA $4000,X
C - - - - - 0x000F7C 00:CF6C: A6 F4     LDX ram_00F4
C - - - - - 0x000F7E 00:CF6E: 95 09     STA ram_0009,X
C - - - - - 0x000F80 00:CF70: C8        INY
bra_CF71:
C - - - - - 0x000F81 00:CF71: B5 01     LDA ram_0001,X
C - - - - - 0x000F83 00:CF73: 95 00     STA ram_0000,X
C - - - - - 0x000F85 00:CF75: A6 F5     LDX ram_00F5
C - - - - - 0x000F87 00:CF77: E0 08     CPX #$08
C - - - - - 0x000F89 00:CF79: F0 1E     BEQ bra_CF99
C - - - - - 0x000F8B 00:CF7B: A6 F4     LDX ram_00F4
C - - - - - 0x000F8D 00:CF7D: B5 09     LDA ram_0009,X
C - - - - - 0x000F8F 00:CF7F: 29 F0     AND #$F0
C - - - - - 0x000F91 00:CF81: 95 09     STA ram_0009,X
C - - - - - 0x000F93 00:CF83: B1 F6     LDA (ram_00F6),Y
C - - - - - 0x000F95 00:CF85: C9 F8     CMP #$F8
C - - - - - 0x000F97 00:CF87: D0 03     BNE bra_CF8C
C - - - - - 0x000F99 00:CF89: C8        INY
C - - - - - 0x000F9A 00:CF8A: B1 F6     LDA (ram_00F6),Y
bra_CF8C:
C - - - - - 0x000F9C 00:CF8C: 4A        LSR
C - - - - - 0x000F9D 00:CF8D: 4A        LSR
C - - - - - 0x000F9E 00:CF8E: 4A        LSR
C - - - - - 0x000F9F 00:CF8F: 4A        LSR
C - - - - - 0x000FA0 00:CF90: 15 09     ORA ram_0009,X
C - - - - - 0x000FA2 00:CF92: 95 09     STA ram_0009,X
C - - - - - 0x000FA4 00:CF94: A6 F5     LDX ram_00F5
C - - - - - 0x000FA6 00:CF96: 9D 00 40  STA $4000,X
bra_CF99:
C - - - - - 0x000FA9 00:CF99: B1 F6     LDA (ram_00F6),Y
C - - - - - 0x000FAB 00:CF9B: 29 07     AND #$07
C - - - - - 0x000FAD 00:CF9D: 85 F0     STA ram_00F0
C - - - - - 0x000FAF 00:CF9F: C8        INY
C - - - - - 0x000FB0 00:CFA0: B1 F6     LDA (ram_00F6),Y
C - - - - - 0x000FB2 00:CFA2: 85 F1     STA ram_00F1
C - - - - - 0x000FB4 00:CFA4: A6 F4     LDX ram_00F4
C - - - - - 0x000FB6 00:CFA6: 20 9C D0  JSR sub_D09C
C - - - - - 0x000FB9 00:CFA9: 4C BF D0  JMP loc_D0BF



loc_CFAC:
C D 2 - - - 0x000FBC 00:CFAC: B5 0A     LDA ram_000A,X
C - - - - - 0x000FBE 00:CFAE: D0 01     BNE bra_CFB1
C - - - - - 0x000FC0 00:CFB0: 60        RTS
bra_CFB1:
C - - - - - 0x000FC1 00:CFB1: A5 F5     LDA ram_00F5
C - - - - - 0x000FC3 00:CFB3: C9 08     CMP #$08
C - - - - - 0x000FC5 00:CFB5: D0 01     BNE bra_CFB8
C - - - - - 0x000FC7 00:CFB7: 60        RTS
bra_CFB8:
C - - - - - 0x000FC8 00:CFB8: A5 F6     LDA ram_00F6
C - - - - - 0x000FCA 00:CFBA: D0 02     BNE bra_CFBE
C - - - - - 0x000FCC 00:CFBC: C6 F7     DEC ram_00F7
bra_CFBE:
C - - - - - 0x000FCE 00:CFBE: C6 F6     DEC ram_00F6
C - - - - - 0x000FD0 00:CFC0: A0 00     LDY #$00
C - - - - - 0x000FD2 00:CFC2: B1 F6     LDA (ram_00F6),Y
C - - - - - 0x000FD4 00:CFC4: 29 F0     AND #$F0
C - - - - - 0x000FD6 00:CFC6: C9 C0     CMP #$C0
C - - - - - 0x000FD8 00:CFC8: D0 01     BNE bra_CFCB
C - - - - - 0x000FDA 00:CFCA: 60        RTS
bra_CFCB:
C - - - - - 0x000FDB 00:CFCB: B5 0C     LDA ram_000C,X
C - - - - - 0x000FDD 00:CFCD: 38        SEC
C - - - - - 0x000FDE 00:CFCE: E9 01     SBC #$01
C - - - - - 0x000FE0 00:CFD0: 95 0C     STA ram_000C,X
C - - - - - 0x000FE2 00:CFD2: D5 00     CMP ram_0000,X
C - - - - - 0x000FE4 00:CFD4: D0 08     BNE bra_CFDE
C - - - - - 0x000FE6 00:CFD6: 38        SEC
C - - - - - 0x000FE7 00:CFD7: F5 10     SBC ram_0010,X
C - - - - - 0x000FE9 00:CFD9: 90 08     BCC bra_CFE3
C - - - - - 0x000FEB 00:CFDB: F0 06     BEQ bra_CFE3
C - - - - - 0x000FED 00:CFDD: 60        RTS
bra_CFDE:
C - - - - - 0x000FEE 00:CFDE: 38        SEC
C - - - - - 0x000FEF 00:CFDF: E9 01     SBC #$01
C - - - - - 0x000FF1 00:CFE1: 95 0C     STA ram_000C,X
bra_CFE3:
C - - - - - 0x000FF3 00:CFE3: B5 09     LDA ram_0009,X
C - - - - - 0x000FF5 00:CFE5: 29 0F     AND #$0F
C - - - - - 0x000FF7 00:CFE7: 38        SEC
C - - - - - 0x000FF8 00:CFE8: E9 01     SBC #$01
C - - - - - 0x000FFA 00:CFEA: 10 01     BPL bra_CFED
C - - - - - 0x000FFC 00:CFEC: 60        RTS
bra_CFED:
C - - - - - 0x000FFD 00:CFED: B5 09     LDA ram_0009,X
C - - - - - 0x000FFF 00:CFEF: E9 01     SBC #$01
C - - - - - 0x001001 00:CFF1: 95 09     STA ram_0009,X
C - - - - - 0x001003 00:CFF3: A6 F5     LDX ram_00F5
C - - - - - 0x001005 00:CFF5: 9D 00 40  STA $4000,X
C - - - - - 0x001008 00:CFF8: 60        RTS



loc_CFF9:
C D 2 - - - 0x001009 00:CFF9: A5 67     LDA ram_0067
C - - - - - 0x00100B 00:CFFB: F0 03     BEQ bra_D000
- - - - - - 0x00100D 00:CFFD: 4C 33 CF  JMP loc_CF33
bra_D000:
C - - - - - 0x001010 00:D000: B1 F6     LDA (ram_00F6),Y
C - - - - - 0x001012 00:D002: 29 F0     AND #$F0
C - - - - - 0x001014 00:D004: C9 D0     CMP #$D0
C - - - - - 0x001016 00:D006: D0 26     BNE bra_D02E
C - - - - - 0x001018 00:D008: B1 F6     LDA (ram_00F6),Y
C - - - - - 0x00101A 00:D00A: 29 0F     AND #$0F
C - - - - - 0x00101C 00:D00C: 95 0D     STA ram_000D,X
C - - - - - 0x00101E 00:D00E: C8        INY
C - - - - - 0x00101F 00:D00F: B1 F6     LDA (ram_00F6),Y
C - - - - - 0x001021 00:D011: 95 05     STA ram_btn_press,X
C - - - - - 0x001023 00:D013: A6 F5     LDX ram_00F5
C - - - - - 0x001025 00:D015: 9D 00 40  STA $4000,X
C - - - - - 0x001028 00:D018: C8        INY
C - - - - - 0x001029 00:D019: E0 08     CPX #$08
C - - - - - 0x00102B 00:D01B: F0 11     BEQ bra_D02E
C - - - - - 0x00102D 00:D01D: B1 F6     LDA (ram_00F6),Y
C - - - - - 0x00102F 00:D01F: 4A        LSR
C - - - - - 0x001030 00:D020: 4A        LSR
C - - - - - 0x001031 00:D021: 4A        LSR
C - - - - - 0x001032 00:D022: 4A        LSR
C - - - - - 0x001033 00:D023: A6 F4     LDX ram_00F4
C - - - - - 0x001035 00:D025: 95 0F     STA ram_000F,X
C - - - - - 0x001037 00:D027: B1 F6     LDA (ram_00F6),Y
C - - - - - 0x001039 00:D029: 29 0F     AND #$0F
C - - - - - 0x00103B 00:D02B: 95 10     STA ram_0010,X
C - - - - - 0x00103D 00:D02D: C8        INY
bra_D02E:
C - - - - - 0x00103E 00:D02E: B1 F6     LDA (ram_00F6),Y
C - - - - - 0x001040 00:D030: 29 F0     AND #$F0
C - - - - - 0x001042 00:D032: C9 E0     CMP #$E0
C - - - - - 0x001044 00:D034: D0 09     BNE bra_D03F
C - - - - - 0x001046 00:D036: B1 F6     LDA (ram_00F6),Y
C - - - - - 0x001048 00:D038: 29 0F     AND #$0F
C - - - - - 0x00104A 00:D03A: A6 F4     LDX ram_00F4
C - - - - - 0x00104C 00:D03C: 95 0B     STA ram_000B,X
C - - - - - 0x00104E 00:D03E: C8        INY
bra_D03F:
C - - - - - 0x00104F 00:D03F: 20 BF D0  JSR sub_D0BF
C - - - - - 0x001052 00:D042: 88        DEY
C - - - - - 0x001053 00:D043: B1 F6     LDA (ram_00F6),Y
C - - - - - 0x001055 00:D045: 29 0F     AND #$0F
C - - - - - 0x001057 00:D047: 85 F0     STA ram_00F0
C - - - - - 0x001059 00:D049: F0 0B     BEQ bra_D056
C - - - - - 0x00105B 00:D04B: B5 0D     LDA ram_000D,X
C - - - - - 0x00105D 00:D04D: 18        CLC
bra_D04E:
C - - - - - 0x00105E 00:D04E: 75 0D     ADC ram_000D,X
C - - - - - 0x001060 00:D050: C6 F0     DEC ram_00F0
C - - - - - 0x001062 00:D052: D0 FA     BNE bra_D04E
C - - - - - 0x001064 00:D054: F0 02     BEQ bra_D058
bra_D056:
C - - - - - 0x001066 00:D056: B5 0D     LDA ram_000D,X
bra_D058:
C - - - - - 0x001068 00:D058: 95 00     STA ram_0000,X
C - - - - - 0x00106A 00:D05A: 18        CLC
C - - - - - 0x00106B 00:D05B: 75 0F     ADC ram_000F,X
C - - - - - 0x00106D 00:D05D: 95 0C     STA ram_000C,X
C - - - - - 0x00106F 00:D05F: B5 05     LDA ram_btn_press,X
C - - - - - 0x001071 00:D061: 95 09     STA ram_0009,X
C - - - - - 0x001073 00:D063: A6 F5     LDX ram_00F5
C - - - - - 0x001075 00:D065: 9D 00 40  STA $4000,X
C - - - - - 0x001078 00:D068: B1 F6     LDA (ram_00F6),Y
C - - - - - 0x00107A 00:D06A: 4A        LSR
C - - - - - 0x00107B 00:D06B: 4A        LSR
C - - - - - 0x00107C 00:D06C: 4A        LSR
C - - - - - 0x00107D 00:D06D: 4A        LSR
C - - - - - 0x00107E 00:D06E: C9 0C     CMP #$0C
C - - - - - 0x001080 00:D070: D0 0C     BNE bra_D07E
C - - - - - 0x001082 00:D072: A9 00     LDA #$00
C - - - - - 0x001084 00:D074: E0 08     CPX #$08
C - - - - - 0x001086 00:D076: F0 02     BEQ bra_D07A
C - - - - - 0x001088 00:D078: A9 30     LDA #$30
bra_D07A:
C - - - - - 0x00108A 00:D07A: 9D 00 40  STA $4000,X
C - - - - - 0x00108D 00:D07D: 60        RTS
bra_D07E:
C - - - - - 0x00108E 00:D07E: A6 F4     LDX ram_00F4
C - - - - - 0x001090 00:D080: 0A        ASL
C - - - - - 0x001091 00:D081: A8        TAY
C - - - - - 0x001092 00:D082: B9 D1 D0  LDA tbl_D0D1,Y
C - - - - - 0x001095 00:D085: 85 F0     STA ram_00F0
C - - - - - 0x001097 00:D087: C8        INY
C - - - - - 0x001098 00:D088: B9 D1 D0  LDA tbl_D0D1,Y
C - - - - - 0x00109B 00:D08B: 85 F1     STA ram_00F1
C - - - - - 0x00109D 00:D08D: B4 0B     LDY ram_000B,X
loc_D08F:
C D 2 - - - 0x00109F 00:D08F: 98        TYA
C - - - - - 0x0010A0 00:D090: C9 04     CMP #$04
C - - - - - 0x0010A2 00:D092: F0 08     BEQ bra_D09C
C - - - - - 0x0010A4 00:D094: 46 F0     LSR ram_00F0
C - - - - - 0x0010A6 00:D096: 66 F1     ROR ram_00F1
C - - - - - 0x0010A8 00:D098: C8        INY
C - - - - - 0x0010A9 00:D099: 4C 8F D0  JMP loc_D08F
bra_D09C:
sub_D09C:
C - - - - - 0x0010AC 00:D09C: A5 F0     LDA ram_00F0
C - - - - - 0x0010AE 00:D09E: 09 08     ORA #$08
C - - - - - 0x0010B0 00:D0A0: 85 F0     STA ram_00F0
C - - - - - 0x0010B2 00:D0A2: D5 08     CMP ram_0008,X
C - - - - - 0x0010B4 00:D0A4: D0 08     BNE bra_D0AE
C - - - - - 0x0010B6 00:D0A6: A6 F5     LDX ram_00F5
C - - - - - 0x0010B8 00:D0A8: E0 08     CPX #$08
C - - - - - 0x0010BA 00:D0AA: F0 04     BEQ bra_D0B0
C - - - - - 0x0010BC 00:D0AC: D0 09     BNE bra_D0B7
bra_D0AE:
C - - - - - 0x0010BE 00:D0AE: 95 08     STA ram_0008,X
bra_D0B0:
C - - - - - 0x0010C0 00:D0B0: A5 F0     LDA ram_00F0
C - - - - - 0x0010C2 00:D0B2: A6 F5     LDX ram_00F5
C - - - - - 0x0010C4 00:D0B4: 9D 03 40  STA $4003,X
bra_D0B7:
C - - - - - 0x0010C7 00:D0B7: A6 F5     LDX ram_00F5
C - - - - - 0x0010C9 00:D0B9: A5 F1     LDA ram_00F1
C - - - - - 0x0010CB 00:D0BB: 9D 02 40  STA $4002,X
C - - - - - 0x0010CE 00:D0BE: 60        RTS



loc_D0BF:
sub_D0BF:
C D 2 - - - 0x0010CF 00:D0BF: C8        INY
C - - - - - 0x0010D0 00:D0C0: 98        TYA
C - - - - - 0x0010D1 00:D0C1: 18        CLC
C - - - - - 0x0010D2 00:D0C2: 65 F6     ADC ram_00F6
C - - - - - 0x0010D4 00:D0C4: A6 F4     LDX ram_00F4
C - - - - - 0x0010D6 00:D0C6: 95 03     STA ram_0003,X
C - - - - - 0x0010D8 00:D0C8: 90 06     BCC bra_D0D0_RTS
C - - - - - 0x0010DA 00:D0CA: A5 F7     LDA ram_00F7
C - - - - - 0x0010DC 00:D0CC: 69 00     ADC #$00
C - - - - - 0x0010DE 00:D0CE: 95 04     STA ram_0004,X
bra_D0D0_RTS:
C - - - - - 0x0010E0 00:D0D0: 60        RTS



tbl_D0D1:
- - - - - - 0x0010E1 00:D0D1: 06        .byte $06   ; 
- - - - - - 0x0010E2 00:D0D2: AE        .byte $AE   ; 
- D 2 - - - 0x0010E3 00:D0D3: 06        .byte $06   ; 
- D 2 - - - 0x0010E4 00:D0D4: 4E        .byte $4E   ; 
- D 2 - - - 0x0010E5 00:D0D5: 05        .byte $05   ; 
- D 2 - - - 0x0010E6 00:D0D6: F4        .byte $F4   ; 
- D 2 - - - 0x0010E7 00:D0D7: 05        .byte $05   ; 
- D 2 - - - 0x0010E8 00:D0D8: 9E        .byte $9E   ; 
- D 2 - - - 0x0010E9 00:D0D9: 05        .byte $05   ; 
- D 2 - - - 0x0010EA 00:D0DA: 4E        .byte $4E   ; 
- - - - - - 0x0010EB 00:D0DB: 05        .byte $05   ; 
- - - - - - 0x0010EC 00:D0DC: 01        .byte $01   ; 
- D 2 - - - 0x0010ED 00:D0DD: 04        .byte $04   ; 
- D 2 - - - 0x0010EE 00:D0DE: B9        .byte $B9   ; 
- - - - - - 0x0010EF 00:D0DF: 04        .byte $04   ; 
- - - - - - 0x0010F0 00:D0E0: 76        .byte $76   ; 
- D 2 - - - 0x0010F1 00:D0E1: 04        .byte $04   ; 
- D 2 - - - 0x0010F2 00:D0E2: 36        .byte $36   ; 
- D 2 - - - 0x0010F3 00:D0E3: 03        .byte $03   ; 
- D 2 - - - 0x0010F4 00:D0E4: F9        .byte $F9   ; 
- D 2 - - - 0x0010F5 00:D0E5: 03        .byte $03   ; 
- D 2 - - - 0x0010F6 00:D0E6: C0        .byte $C0   ; 
- D 2 - - - 0x0010F7 00:D0E7: 03        .byte $03   ; 
- D 2 - - - 0x0010F8 00:D0E8: 8A        .byte $8A   ; 



sub_D0E9_read_pointers_after_JSR:
C - - - - - 0x0010F9 00:D0E9: 0A        ASL
C - - - - - 0x0010FA 00:D0EA: A8        TAY
C - - - - - 0x0010FB 00:D0EB: C8        INY
C - - - - - 0x0010FC 00:D0EC: 68        PLA
C - - - - - 0x0010FD 00:D0ED: 85 80     STA ram_0080
C - - - - - 0x0010FF 00:D0EF: 68        PLA
C - - - - - 0x001100 00:D0F0: 85 81     STA ram_0081
C - - - - - 0x001102 00:D0F2: B1 80     LDA (ram_0080),Y
C - - - - - 0x001104 00:D0F4: AA        TAX
C - - - - - 0x001105 00:D0F5: C8        INY
C - - - - - 0x001106 00:D0F6: B1 80     LDA (ram_0080),Y
C - - - - - 0x001108 00:D0F8: 85 81     STA ram_0081
C - - - - - 0x00110A 00:D0FA: 86 80     STX ram_0080
C - - - - - 0x00110C 00:D0FC: 6C 80 00  JMP (ram_0080)



sub_D0FF:
C - - - - - 0x00110F 00:D0FF: C6 B5     DEC ram_00B5
C - - - - - 0x001111 00:D101: 30 11     BMI bra_D114
C - - - - - 0x001113 00:D103: A5 B5     LDA ram_00B5
C - - - - - 0x001115 00:D105: C9 12     CMP #$12
C - - - - - 0x001117 00:D107: F0 13     BEQ bra_D11C
C - - - - - 0x001119 00:D109: C9 11     CMP #$11
C - - - - - 0x00111B 00:D10B: F0 0F     BEQ bra_D11C
C - - - - - 0x00111D 00:D10D: C9 03     CMP #$03
C - - - - - 0x00111F 00:D10F: D0 09     BNE bra_D11A_RTS
C - - - - - 0x001121 00:D111: 4C 97 D1  JMP loc_D197
bra_D114:
C - - - - - 0x001124 00:D114: A9 00     LDA #$00
C - - - - - 0x001126 00:D116: 85 B5     STA ram_00B5
C - - - - - 0x001128 00:D118: 85 9B     STA ram_009B
bra_D11A_RTS:
C - - - - - 0x00112A 00:D11A: 60        RTS


; bzk garbage
- - - - - - 0x00112B 00:D11B: 60        RTS



bra_D11C:
loc_D11C:
C D 2 - - - 0x00112C 00:D11C: A5 9A     LDA ram_player_state
C - - - - - 0x00112E 00:D11E: C9 04     CMP #$04
C - - - - - 0x001130 00:D120: 90 10     BCC bra_D132    ; if idle, left or right
C - - - - - 0x001132 00:D122: C9 27     CMP #$27
C - - - - - 0x001134 00:D124: B0 0C     BCS bra_D132    ; if jump + punch, is that possible to do?
C - - - - - 0x001136 00:D126: 29 30     AND #con_state_kick + con_state_punch
C - - - - - 0x001138 00:D128: F0 08     BEQ bra_D132
C - - - - - 0x00113A 00:D12A: A5 BD     LDA ram_jump_timer
C - - - - - 0x00113C 00:D12C: 05 C9     ORA ram_00C9
C - - - - - 0x00113E 00:D12E: 05 E5     ORA ram_00E5
C - - - - - 0x001140 00:D130: D0 00     BNE bra_D132    ; bzk optimize, useless
bra_D132:
C - - - - - 0x001142 00:D132: A5 9A     LDA ram_player_state
C - - - - - 0x001144 00:D134: 20 E9 D0  JSR sub_D0E9_read_pointers_after_JSR
- D 2 - I - 0x001147 00:D137: 97 D3     .word ofs_003_D397_00
- D 2 - I - 0x001149 00:D139: 07 D3     .word ofs_003_D307_01
- D 2 - I - 0x00114B 00:D13B: 03 D3     .word ofs_003_D303_02
- - - - - - 0x00114D 00:D13D: 97 D3     .word ofs_003_D397_03
- D 2 - I - 0x00114F 00:D13F: 37 D3     .word ofs_003_D337_04
- D 2 - I - 0x001151 00:D141: 44 D3     .word ofs_003_D344_05
- D 2 - I - 0x001153 00:D143: 48 D3     .word ofs_003_D348_06
- - - - - - 0x001155 00:D145: 97 D3     .word ofs_003_D397_07
- D 2 - I - 0x001157 00:D147: C1 D1     .word ofs_003_D1C1_08
- D 2 - I - 0x001159 00:D149: E2 D2     .word ofs_003_D2E2_09
- D 2 - I - 0x00115B 00:D14B: C1 D2     .word ofs_003_D2C1_0A
- - - - - - 0x00115D 00:D14D: 97 D3     .word ofs_003_D397_0B
- - - - - - 0x00115F 00:D14F: 97 D3     .word ofs_003_D397_0C
- - - - - - 0x001161 00:D151: 97 D3     .word ofs_003_D397_0D
- - - - - - 0x001163 00:D153: 97 D3     .word ofs_003_D397_0E
- - - - - - 0x001165 00:D155: 97 D3     .word ofs_003_D397_0F
- D 2 - I - 0x001167 00:D157: 4C D3     .word ofs_003_D34C_10
- D 2 - I - 0x001169 00:D159: 6F D3     .word ofs_003_D36F_11
- D 2 - I - 0x00116B 00:D15B: 66 D3     .word ofs_003_D366_12
- - - - - - 0x00116D 00:D15D: 97 D3     .word ofs_003_D397_13
- D 2 - I - 0x00116F 00:D15F: 55 D3     .word ofs_003_D355_14
- D 2 - I - 0x001171 00:D161: 62 D3     .word ofs_003_D362_15
- D 2 - I - 0x001173 00:D163: 5E D3     .word ofs_003_D35E_16
- - - - - - 0x001175 00:D165: 97 D3     .word ofs_003_D397_17
- D 2 - I - 0x001177 00:D167: C1 D1     .word ofs_003_D1C1_18
- D 2 - I - 0x001179 00:D169: E2 D2     .word ofs_003_D2E2_19
- D 2 - I - 0x00117B 00:D16B: C1 D2     .word ofs_003_D2C1_1A
- - - - - - 0x00117D 00:D16D: 97 D3     .word ofs_003_D397_1B
- - - - - - 0x00117F 00:D16F: 97 D3     .word ofs_003_D397_1C
- - - - - - 0x001181 00:D171: 97 D3     .word ofs_003_D397_1D
- - - - - - 0x001183 00:D173: 97 D3     .word ofs_003_D397_1E
- - - - - - 0x001185 00:D175: 97 D3     .word ofs_003_D397_1F
- D 2 - I - 0x001187 00:D177: 73 D3     .word ofs_003_D373_20
- D 2 - I - 0x001189 00:D179: 7C D3     .word ofs_003_D37C_21
- D 2 - I - 0x00118B 00:D17B: 80 D3     .word ofs_003_D380_22
- - - - - - 0x00118D 00:D17D: 97 D3     .word ofs_003_D397_23
- D 2 - I - 0x00118F 00:D17F: 84 D3     .word ofs_003_D384_24
- D 2 - I - 0x001191 00:D181: 87 D3     .word ofs_003_D387_25
- D 2 - I - 0x001193 00:D183: 8A D3     .word ofs_003_D38A_26
- - - - - - 0x001195 00:D185: 97 D3     .word ofs_003_D397_27
- - - - - - 0x001197 00:D187: C1 D1     .word ofs_003_D1C1_28
- - - - - - 0x001199 00:D189: E2 D2     .word ofs_003_D2E2_29
- - - - - - 0x00119B 00:D18B: 48 D3     .word ofs_003_D348_2A
- - - - - - 0x00119D 00:D18D: 97 D3     .word ofs_003_D397_2B
- - - - - - 0x00119F 00:D18F: 97 D3     .word ofs_003_D397_2C
- - - - - - 0x0011A1 00:D191: 97 D3     .word ofs_003_D397_2D
- - - - - - 0x0011A3 00:D193: 97 D3     .word ofs_003_D397_2E
- - - - - - 0x0011A5 00:D195: 97 D3     .word ofs_003_D397_2F



loc_D197:
C D 2 - - - 0x0011A7 00:D197: A5 9A     LDA ram_player_state
C - - - - - 0x0011A9 00:D199: 29 0F     AND #$0F
C - - - - - 0x0011AB 00:D19B: AA        TAX
C - - - - - 0x0011AC 00:D19C: BD A2 D1  LDA tbl_D1A2,X
C - - - - - 0x0011AF 00:D19F: 85 B6     STA ram_player_animation
C - - - - - 0x0011B1 00:D1A1: 60        RTS



tbl_D1A2:
- D 2 - - - 0x0011B2 00:D1A2: 00        .byte $00   ; 00 idle
- D 2 - - - 0x0011B3 00:D1A3: 00        .byte $00   ; 01 right
- D 2 - - - 0x0011B4 00:D1A4: 00        .byte $00   ; 02 left
- - - - - - 0x0011B5 00:D1A5: 04        .byte $04   ; 03 
- D 2 - - - 0x0011B6 00:D1A6: 04        .byte $04   ; 04 duck
- D 2 - - - 0x0011B7 00:D1A7: 04        .byte $04   ; 05 right + duck
- D 2 - - - 0x0011B8 00:D1A8: 00        .byte $00   ; 06 left + duck
- - - - - - 0x0011B9 00:D1A9: 00        .byte $00   ; 07 
- D 2 - - - 0x0011BA 00:D1AA: 00        .byte $00   ; 08 jump
- D 2 - - - 0x0011BB 00:D1AB: 00        .byte $00   ; 09 right + jump
- D 2 - - - 0x0011BC 00:D1AC: 00        .byte $00   ; 0A left + jump
; bzk garbage, these are not possible
- - - - - - 0x0011BD 00:D1AD: 00        .byte $00   ; 0B 
- - - - - - 0x0011BE 00:D1AE: 00        .byte $00   ; 0C 
- - - - - - 0x0011BF 00:D1AF: 00        .byte $00   ; 0D 
- - - - - - 0x0011C0 00:D1B0: 00        .byte $00   ; 0E 


; bzk garbage
- - - - - - 0x0011C1 00:D1B1: A6 B6     LDX ram_player_animation
- - - - - - 0x0011C3 00:D1B3: 86 79     STX ram_0079
- - - - - - 0x0011C5 00:D1B5: A9 04     LDA #$04
- - - - - - 0x0011C7 00:D1B7: 8A        TXA
- - - - - - 0x0011C8 00:D1B8: 29 07     AND #$07
- - - - - - 0x0011CA 00:D1BA: D0 02     BNE bra_D1BE
- - - - - - 0x0011CC 00:D1BC: A9 00     LDA #$00
bra_D1BE:
- - - - - - 0x0011CE 00:D1BE: 85 B6     STA ram_player_animation
- - - - - - 0x0011D0 00:D1C0: 60        RTS



ofs_003_D1C1_08:
ofs_003_D1C1_18:
ofs_003_D1C1_28:
C - - J - - 0x0011D1 00:D1C1: A5 BC     LDA ram_00BC
C - - - - - 0x0011D3 00:D1C3: 20 9C D3  JSR sub_D39C
loc_D1C6:
C D 2 - - - 0x0011D6 00:D1C6: A9 14     LDA #$14
C - - - - - 0x0011D8 00:D1C8: 85 B5     STA ram_00B5
C - - - - - 0x0011DA 00:D1CA: A6 BD     LDX ram_jump_timer
C - - - - - 0x0011DC 00:D1CC: BD D9 D1  LDA tbl_D1D9,X
C - - - - - 0x0011DF 00:D1CF: 18        CLC
C - - - - - 0x0011E0 00:D1D0: 65 BA     ADC ram_pos_Y_player
C - - - - - 0x0011E2 00:D1D2: 85 BA     STA ram_pos_Y_player
C - - - - - 0x0011E4 00:D1D4: E6 BD     INC ram_jump_timer
C - - - - - 0x0011E6 00:D1D6: 4C FE D1  JMP loc_D1FE



tbl_D1D9:
- D 2 - - - 0x0011E9 00:D1D9: 00        .byte $00   ; 
- D 2 - - - 0x0011EA 00:D1DA: FA        .byte $FA   ; 
- D 2 - - - 0x0011EB 00:D1DB: FA        .byte $FA   ; 
- D 2 - - - 0x0011EC 00:D1DC: FA        .byte $FA   ; 
- D 2 - - - 0x0011ED 00:D1DD: FB        .byte $FB   ; 
- D 2 - - - 0x0011EE 00:D1DE: FC        .byte $FC   ; 
- D 2 - - - 0x0011EF 00:D1DF: FC        .byte $FC   ; 
- D 2 - - - 0x0011F0 00:D1E0: FD        .byte $FD   ; 
- D 2 - - - 0x0011F1 00:D1E1: FD        .byte $FD   ; 
- D 2 - - - 0x0011F2 00:D1E2: FD        .byte $FD   ; 
- D 2 - - - 0x0011F3 00:D1E3: FE        .byte $FE   ; 
- D 2 - - - 0x0011F4 00:D1E4: FE        .byte $FE   ; 
- D 2 - - - 0x0011F5 00:D1E5: FF        .byte $FF   ; 
- D 2 - - - 0x0011F6 00:D1E6: 01        .byte $01   ; 
- D 2 - - - 0x0011F7 00:D1E7: 02        .byte $02   ; 
- D 2 - - - 0x0011F8 00:D1E8: 02        .byte $02   ; 
- D 2 - - - 0x0011F9 00:D1E9: 03        .byte $03   ; 
- D 2 - - - 0x0011FA 00:D1EA: 03        .byte $03   ; 
- D 2 - - - 0x0011FB 00:D1EB: 03        .byte $03   ; 
- D 2 - - - 0x0011FC 00:D1EC: 04        .byte $04   ; 
- D 2 - - - 0x0011FD 00:D1ED: 04        .byte $04   ; 
- D 2 - - - 0x0011FE 00:D1EE: 05        .byte $05   ; 
- D 2 - - - 0x0011FF 00:D1EF: 06        .byte $06   ; 
- D 2 - - - 0x001200 00:D1F0: 06        .byte $06   ; 
- D 2 - - - 0x001201 00:D1F1: 06        .byte $06   ; 
- - - - - - 0x001202 00:D1F2: 00        .byte $00   ; 
- - - - - - 0x001203 00:D1F3: 00        .byte $00   ; 
- - - - - - 0x001204 00:D1F4: 00        .byte $00   ; 
- - - - - - 0x001205 00:D1F5: 00        .byte $00   ; 
- - - - - - 0x001206 00:D1F6: 00        .byte $00   ; 
- - - - - - 0x001207 00:D1F7: 00        .byte $00   ; 
- - - - - - 0x001208 00:D1F8: 00        .byte $00   ; 
- - - - - - 0x001209 00:D1F9: 00        .byte $00   ; 
- - - - - - 0x00120A 00:D1FA: 00        .byte $00   ; 
- - - - - - 0x00120B 00:D1FB: 00        .byte $00   ; 
- - - - - - 0x00120C 00:D1FC: 00        .byte $00   ; 
- - - - - - 0x00120D 00:D1FD: 00        .byte $00   ; 



loc_D1FE:
C D 2 - - - 0x00120E 00:D1FE: A5 73     LDA ram_0073
C - - - - - 0x001210 00:D200: F0 2F     BEQ bra_D231
C - - - - - 0x001212 00:D202: A5 68     LDA ram_enemy_type
C - - - - - 0x001214 00:D204: C9 04     CMP #$04
C - - - - - 0x001216 00:D206: D0 29     BNE bra_D231
C - - - - - 0x001218 00:D208: A5 EF     LDA ram_00EF
C - - - - - 0x00121A 00:D20A: F0 25     BEQ bra_D231
C - - - - - 0x00121C 00:D20C: A5 BD     LDA ram_jump_timer
C - - - - - 0x00121E 00:D20E: C9 0B     CMP #$0B
C - - - - - 0x001220 00:D210: F0 07     BEQ bra_D219
C - - - - - 0x001222 00:D212: C9 0E     CMP #$0E
C - - - - - 0x001224 00:D214: F0 0C     BEQ bra_D222
C - - - - - 0x001226 00:D216: 4C 31 D2  JMP loc_D231
bra_D219:
C - - - - - 0x001229 00:D219: A9 01     LDA #$01
C - - - - - 0x00122B 00:D21B: 85 E2     STA ram_00E2
C - - - - - 0x00122D 00:D21D: E6 EF     INC ram_00EF
C - - - - - 0x00122F 00:D21F: 4C 31 D2  JMP loc_D231
bra_D222:
C - - - - - 0x001232 00:D222: 20 98 D5  JSR sub_D598
C - - - - - 0x001235 00:D225: A9 80     LDA #$80
C - - - - - 0x001237 00:D227: 05 EF     ORA ram_00EF
C - - - - - 0x001239 00:D229: 85 EF     STA ram_00EF
C - - - - - 0x00123B 00:D22B: A9 80     LDA #$80
C - - - - - 0x00123D 00:D22D: 85 7D     STA ram_007D
C - - - - - 0x00123F 00:D22F: E6 EF     INC ram_00EF
bra_D231:
loc_D231:
C D 2 - - - 0x001241 00:D231: A5 BD     LDA ram_jump_timer
C - - - - - 0x001243 00:D233: C9 15     CMP #$15
C - - - - - 0x001245 00:D235: F0 2A     BEQ bra_D261
C - - - - - 0x001247 00:D237: C9 19     CMP #$19
C - - - - - 0x001249 00:D239: F0 3A     BEQ bra_D275
C - - - - - 0x00124B 00:D23B: C9 24     CMP #$24
C - - - - - 0x00124D 00:D23D: F0 3C     BEQ bra_D27B
C - - - - - 0x00124F 00:D23F: A5 E2     LDA ram_00E2
C - - - - - 0x001251 00:D241: 0A        ASL
C - - - - - 0x001252 00:D242: B0 42     BCS bra_D286
C - - - - - 0x001254 00:D244: 4A        LSR
C - - - - - 0x001255 00:D245: 4A        LSR
C - - - - - 0x001256 00:D246: B0 4E     BCS bra_D296_check_kick_in_the_air
C - - - - - 0x001258 00:D248: A5 BD     LDA ram_jump_timer
C - - - - - 0x00125A 00:D24A: C9 14     CMP #$14
C - - - - - 0x00125C 00:D24C: B0 0E     BCS bra_D25C
C - - - - - 0x00125E 00:D24E: A5 07     LDA ram_btn_hold
C - - - - - 0x001260 00:D250: 0A        ASL
C - - - - - 0x001261 00:D251: 0A        ASL
C - - - - - 0x001262 00:D252: B0 51     BCS bra_D2A5_A_was_pressed
C - - - - - 0x001264 00:D254: 90 06     BCC bra_D25C
- - - - - - 0x001266 00:D256: A9 00     LDA #$00
- - - - - - 0x001268 00:D258: 85 B5     STA ram_00B5
- - - - - - 0x00126A 00:D25A: 85 BD     STA ram_jump_timer
bra_D25C:
C - - - - - 0x00126C 00:D25C: A9 04     LDA #$04
C - - - - - 0x00126E 00:D25E: 85 B6     STA ram_player_animation
C - - - - - 0x001270 00:D260: 60        RTS
bra_D261:
C - - - - - 0x001271 00:D261: A5 E2     LDA ram_00E2
C - - - - - 0x001273 00:D263: F0 F7     BEQ bra_D25C
C - - - - - 0x001275 00:D265: 0A        ASL
C - - - - - 0x001276 00:D266: B0 F4     BCS bra_D25C
- - - - - - 0x001278 00:D268: A5 E1     LDA ram_00E1
- - - - - - 0x00127A 00:D26A: 38        SEC
- - - - - - 0x00127B 00:D26B: E9 04     SBC #$04
- - - - - - 0x00127D 00:D26D: 90 ED     BCC bra_D25C
- - - - - - 0x00127F 00:D26F: A5 E2     LDA ram_00E2
- - - - - - 0x001281 00:D271: 09 02     ORA #$02
- - - - - - 0x001283 00:D273: D0 41     BNE bra_D2B6
bra_D275:
C - - - - - 0x001285 00:D275: A5 E2     LDA ram_00E2
C - - - - - 0x001287 00:D277: 4A        LSR
C - - - - - 0x001288 00:D278: 4A        LSR
C - - - - - 0x001289 00:D279: B0 40     BCS bra_D2BB
bra_D27B:
C - - - - - 0x00128B 00:D27B: A9 00     LDA #$00
C - - - - - 0x00128D 00:D27D: 85 E2     STA ram_00E2
C - - - - - 0x00128F 00:D27F: 85 BD     STA ram_jump_timer
C - - - - - 0x001291 00:D281: A9 05     LDA #$05
C - - - - - 0x001293 00:D283: 85 B5     STA ram_00B5
C - - - - - 0x001295 00:D285: 60        RTS
bra_D286:
C - - - - - 0x001296 00:D286: A5 E1     LDA ram_00E1
C - - - - - 0x001298 00:D288: 18        CLC
C - - - - - 0x001299 00:D289: 69 01     ADC #$01
C - - - - - 0x00129B 00:D28B: 85 E1     STA ram_00E1
C - - - - - 0x00129D 00:D28D: 38        SEC
C - - - - - 0x00129E 00:D28E: E9 06     SBC #$06
C - - - - - 0x0012A0 00:D290: 10 CA     BPL bra_D25C
C - - - - - 0x0012A2 00:D292: 09 01     ORA #$01
C - - - - - 0x0012A4 00:D294: D0 20     BNE bra_D2B6
bra_D296_check_kick_in_the_air:
C - - - - - 0x0012A6 00:D296: A5 07     LDA ram_btn_hold
C - - - - - 0x0012A8 00:D298: 0A        ASL
C - - - - - 0x0012A9 00:D299: B0 1B     BCS bra_D2B6    ; if B was pressed
C - - - - - 0x0012AB 00:D29B: A5 E2     LDA ram_00E2
C - - - - - 0x0012AD 00:D29D: 09 80     ORA #$80
C - - - - - 0x0012AF 00:D29F: 85 E2     STA ram_00E2
C - - - - - 0x0012B1 00:D2A1: A9 00     LDA #$00
C - - - - - 0x0012B3 00:D2A3: F0 11     BEQ bra_D2B6
bra_D2A5_A_was_pressed:
C - - - - - 0x0012B5 00:D2A5: A9 81     LDA #$81
C - - - - - 0x0012B7 00:D2A7: 20 45 CE  JSR sub_CE45
C - - - - - 0x0012BA 00:D2AA: A9 01     LDA #$01
C - - - - - 0x0012BC 00:D2AC: 85 E2     STA ram_00E2
C - - - - - 0x0012BE 00:D2AE: D0 06     BNE bra_D2B6
- - - - - - 0x0012C0 00:D2B0: A9 00     LDA #$00
- - - - - - 0x0012C2 00:D2B2: 85 B5     STA ram_00B5
- - - - - - 0x0012C4 00:D2B4: 85 BD     STA ram_jump_timer
bra_D2B6:
C - - - - - 0x0012C6 00:D2B6: A9 05     LDA #$05
C - - - - - 0x0012C8 00:D2B8: 85 B6     STA ram_player_animation
C - - - - - 0x0012CA 00:D2BA: 60        RTS
bra_D2BB:
- - - - - - 0x0012CB 00:D2BB: A9 08     LDA #con_state_jump
- - - - - - 0x0012CD 00:D2BD: 85 9A     STA ram_player_state
- - - - - - 0x0012CF 00:D2BF: D0 F5     BNE bra_D2B6



bra_D2C1:
ofs_003_D2C1_0A:
ofs_003_D2C1_1A:
C - - J - - 0x0012D1 00:D2C1: A9 00     LDA #$00
C - - - - - 0x0012D3 00:D2C3: 20 9C D3  JSR sub_D39C
C - - - - - 0x0012D6 00:D2C6: A5 BC     LDA ram_00BC
C - - - - - 0x0012D8 00:D2C8: 4A        LSR
C - - - - - 0x0012D9 00:D2C9: B0 17     BCS bra_D2E2
C - - - - - 0x0012DB 00:D2CB: A5 BB     LDA ram_pos_X_player
C - - - - - 0x0012DD 00:D2CD: 38        SEC
C - - - - - 0x0012DE 00:D2CE: E9 04     SBC #$04
C - - - - - 0x0012E0 00:D2D0: 85 BB     STA ram_pos_X_player
C - - - - - 0x0012E2 00:D2D2: A5 BB     LDA ram_pos_X_player
C - - - - - 0x0012E4 00:D2D4: 38        SEC
C - - - - - 0x0012E5 00:D2D5: E9 1E     SBC #$1E
C - - - - - 0x0012E7 00:D2D7: 90 03     BCC bra_D2DC
C - - - - - 0x0012E9 00:D2D9: 4C C6 D1  JMP loc_D1C6
bra_D2DC:
C - - - - - 0x0012EC 00:D2DC: A9 09     LDA #con_state_jump + con_state_move_right
C - - - - - 0x0012EE 00:D2DE: 85 9A     STA ram_player_state
C - - - - - 0x0012F0 00:D2E0: D0 00     BNE bra_D2E2    ; bzk optimize, useless
bra_D2E2:
ofs_003_D2E2_09:
ofs_003_D2E2_19:
ofs_003_D2E2_29:
C - - J - - 0x0012F2 00:D2E2: A9 01     LDA #$01
C - - - - - 0x0012F4 00:D2E4: 20 9C D3  JSR sub_D39C
C - - - - - 0x0012F7 00:D2E7: A5 BC     LDA ram_00BC
C - - - - - 0x0012F9 00:D2E9: 4A        LSR
C - - - - - 0x0012FA 00:D2EA: 90 D5     BCC bra_D2C1
C - - - - - 0x0012FC 00:D2EC: A5 BB     LDA ram_pos_X_player
C - - - - - 0x0012FE 00:D2EE: 18        CLC
C - - - - - 0x0012FF 00:D2EF: 69 04     ADC #$04
C - - - - - 0x001301 00:D2F1: 85 BB     STA ram_pos_X_player
C - - - - - 0x001303 00:D2F3: A5 BB     LDA ram_pos_X_player
C - - - - - 0x001305 00:D2F5: 38        SEC
C - - - - - 0x001306 00:D2F6: E9 E6     SBC #$E6
C - - - - - 0x001308 00:D2F8: B0 03     BCS bra_D2FD
C - - - - - 0x00130A 00:D2FA: 4C C6 D1  JMP loc_D1C6
bra_D2FD:
C - - - - - 0x00130D 00:D2FD: A9 0A     LDA #con_state_jump + con_state_move_left
C - - - - - 0x00130F 00:D2FF: 85 9A     STA ram_player_state
C - - - - - 0x001311 00:D301: D0 BE     BNE bra_D2C1



ofs_003_D303_02:
C - - J - - 0x001313 00:D303: A9 00     LDA #$00
C - - - - - 0x001315 00:D305: F0 02     BEQ bra_D309



ofs_003_D307_01:
C - - J - - 0x001317 00:D307: A9 01     LDA #$01
bra_D309:
C - - - - - 0x001319 00:D309: 20 9C D3  JSR sub_D39C
C - - - - - 0x00131C 00:D30C: A5 DD     LDA ram_hit_timer
C - - - - - 0x00131E 00:D30E: C9 28     CMP #$28
C - - - - - 0x001320 00:D310: 90 24     BCC bra_D336_RTS
C - - - - - 0x001322 00:D312: A9 01     LDA #$01
C - - - - - 0x001324 00:D314: 85 B5     STA ram_00B5
C - - - - - 0x001326 00:D316: A5 BB     LDA ram_pos_X_player
C - - - - - 0x001328 00:D318: A6 BC     LDX ram_00BC
C - - - - - 0x00132A 00:D31A: F0 08     BEQ bra_D324
C - - - - - 0x00132C 00:D31C: C9 DE     CMP #$DE
C - - - - - 0x00132E 00:D31E: B0 0A     BCS bra_D32A
C - - - - - 0x001330 00:D320: E6 BB     INC ram_pos_X_player
C - - - - - 0x001332 00:D322: D0 06     BNE bra_D32A
bra_D324:
C - - - - - 0x001334 00:D324: C9 23     CMP #$23
C - - - - - 0x001336 00:D326: 90 02     BCC bra_D32A
C - - - - - 0x001338 00:D328: C6 BB     DEC ram_pos_X_player
bra_D32A:
C - - - - - 0x00133A 00:D32A: A2 00     LDX #$00
C - - - - - 0x00133C 00:D32C: A5 BB     LDA ram_pos_X_player
C - - - - - 0x00133E 00:D32E: 29 04     AND #$04
C - - - - - 0x001340 00:D330: F0 02     BEQ bra_D334
C - - - - - 0x001342 00:D332: A2 01     LDX #$01
bra_D334:
C - - - - - 0x001344 00:D334: 86 B6     STX ram_player_animation
bra_D336_RTS:
C - - - - - 0x001346 00:D336: 60        RTS



ofs_003_D337_04:
C - - J - - 0x001347 00:D337: A5 BC     LDA ram_00BC
bra_D339:
C - - - - - 0x001349 00:D339: 20 9C D3  JSR sub_D39C
C - - - - - 0x00134C 00:D33C: A9 01     LDA #$01
C - - - - - 0x00134E 00:D33E: 85 B5     STA ram_00B5
C - - - - - 0x001350 00:D340: A9 04     LDA #$04
C - - - - - 0x001352 00:D342: D0 55     BNE bra_D399



ofs_003_D344_05:
C - - J - - 0x001354 00:D344: A9 01     LDA #$01
C - - - - - 0x001356 00:D346: D0 F1     BNE bra_D339



ofs_003_D348_06:
ofs_003_D348_2A:
C - - J - - 0x001358 00:D348: A9 00     LDA #$00
C - - - - - 0x00135A 00:D34A: F0 ED     BEQ bra_D339



ofs_003_D34C_10:
C - - J - - 0x00135C 00:D34C: A5 BC     LDA ram_00BC
C - - - - - 0x00135E 00:D34E: 20 9C D3  JSR sub_D39C
C - - - - - 0x001361 00:D351: A9 03     LDA #$03
C - - - - - 0x001363 00:D353: D0 44     BNE bra_D399



ofs_003_D355_14:
C - - J - - 0x001365 00:D355: A5 BC     LDA ram_00BC
bra_D357:
C - - - - - 0x001367 00:D357: 20 9C D3  JSR sub_D39C
C - - - - - 0x00136A 00:D35A: A9 06     LDA #$06
C - - - - - 0x00136C 00:D35C: D0 3B     BNE bra_D399
ofs_003_D35E_16:
C - - J - - 0x00136E 00:D35E: A9 00     LDA #$00
C - - - - - 0x001370 00:D360: F0 F5     BEQ bra_D357



ofs_003_D362_15:
C - - J - - 0x001372 00:D362: A9 01     LDA #$01
C - - - - - 0x001374 00:D364: D0 F1     BNE bra_D357



ofs_003_D366_12:
C - - J - - 0x001376 00:D366: A9 00     LDA #$00
bra_D368:
C - - - - - 0x001378 00:D368: 20 9C D3  JSR sub_D39C
C - - - - - 0x00137B 00:D36B: A9 07     LDA #$07
C - - - - - 0x00137D 00:D36D: D0 2A     BNE bra_D399



ofs_003_D36F_11:
C - - J - - 0x00137F 00:D36F: A9 01     LDA #$01
C - - - - - 0x001381 00:D371: D0 F5     BNE bra_D368



ofs_003_D373_20:
C - - J - - 0x001383 00:D373: A5 BC     LDA ram_00BC
bra_D375:
C - - - - - 0x001385 00:D375: 20 9C D3  JSR sub_D39C
C - - - - - 0x001388 00:D378: A9 02     LDA #$02
C - - - - - 0x00138A 00:D37A: D0 1D     BNE bra_D399



ofs_003_D37C_21:
C - - J - - 0x00138C 00:D37C: A9 01     LDA #$01
C - - - - - 0x00138E 00:D37E: D0 F5     BNE bra_D375



ofs_003_D380_22:
C - - J - - 0x001390 00:D380: A9 00     LDA #$00
C - - - - - 0x001392 00:D382: F0 F1     BEQ bra_D375



ofs_003_D384_24:
C - - J - - 0x001394 00:D384: A5 BC     LDA ram_00BC
C - - - - - 0x001396 00:D386: 2C        .byte $2C   ; BIT
ofs_003_D387_25:
C - - - - - 0x001397 00:D387: A9 01     LDA #$01
C - - - - - 0x001399 00:D389: 2C        .byte $2C   ; BIT
ofs_003_D38A_26:
C - - - - - 0x00139A 00:D38A: A9 00     LDA #$00
C - - - - - 0x00139C 00:D38C: 20 9C D3  JSR sub_D39C
C - - - - - 0x00139F 00:D38F: A9 08     LDA #$08
C - - - - - 0x0013A1 00:D391: D0 06     BNE bra_D399


; bzk garbage
- - - - - - 0x0013A3 00:D393: A9 05     LDA #$05
- - - - - - 0x0013A5 00:D395: 85 B5     STA ram_00B5



ofs_003_D397_00:
ofs_003_D397_03:
ofs_003_D397_07:
ofs_003_D397_0B:
ofs_003_D397_0C:
ofs_003_D397_0D:
ofs_003_D397_0E:
ofs_003_D397_0F:
ofs_003_D397_13:
ofs_003_D397_17:
ofs_003_D397_1B:
ofs_003_D397_1C:
ofs_003_D397_1D:
ofs_003_D397_1E:
ofs_003_D397_1F:
ofs_003_D397_23:
ofs_003_D397_27:
ofs_003_D397_2B:
ofs_003_D397_2C:
ofs_003_D397_2D:
ofs_003_D397_2E:
ofs_003_D397_2F:
C - - J - - 0x0013A7 00:D397: A9 00     LDA #$00
bra_D399:
C - - - - - 0x0013A9 00:D399: 85 B6     STA ram_player_animation
C - - - - - 0x0013AB 00:D39B: 60        RTS



sub_D39C:   ; bzk optimize
C - - - - - 0x0013AC 00:D39C: 85 BC     STA ram_00BC
C - - - - - 0x0013AE 00:D39E: 60        RTS



sub_D39F:
C - - - - - 0x0013AF 00:D39F: A5 AF     LDA ram_00AF
C - - - - - 0x0013B1 00:D3A1: F0 03     BEQ bra_D3A6
C - - - - - 0x0013B3 00:D3A3: 4C 36 D6  JMP loc_D636
bra_D3A6:
C - - - - - 0x0013B6 00:D3A6: A5 66     LDA ram_0066
C - - - - - 0x0013B8 00:D3A8: F0 03     BEQ bra_D3AD
C - - - - - 0x0013BA 00:D3AA: 4C AF D6  JMP loc_D6AF
bra_D3AD:
C - - - - - 0x0013BD 00:D3AD: A5 B5     LDA ram_00B5
C - - - - - 0x0013BF 00:D3AF: F0 01     BEQ bra_D3B2
C - - - - - 0x0013C1 00:D3B1: 60        RTS
bra_D3B2:
C - - - - - 0x0013C2 00:D3B2: A5 73     LDA ram_0073
C - - - - - 0x0013C4 00:D3B4: F0 03     BEQ bra_D3B9
C - - - - - 0x0013C6 00:D3B6: 4C 2A D4  JMP loc_D42A
bra_D3B9:
C - - - - - 0x0013C9 00:D3B9: A5 BD     LDA ram_jump_timer
C - - - - - 0x0013CB 00:D3BB: D0 5E     BNE bra_D41B_RTS
C - - - - - 0x0013CD 00:D3BD: A5 9B     LDA ram_009B
C - - - - - 0x0013CF 00:D3BF: D0 5A     BNE bra_D41B_RTS
C - - - - - 0x0013D1 00:D3C1: A5 07     LDA ram_btn_hold
C - - - - - 0x0013D3 00:D3C3: 29 07     AND #con_btn_Right + con_btn_Left + con_btn_Down
C - - - - - 0x0013D5 00:D3C5: 85 9A     STA ram_player_state
C - - - - - 0x0013D7 00:D3C7: A5 05     LDA ram_btn_press
C - - - - - 0x0013D9 00:D3C9: 29 08     AND #con_btn_Up
C - - - - - 0x0013DB 00:D3CB: 05 9A     ORA ram_player_state
C - - - - - 0x0013DD 00:D3CD: 85 9A     STA ram_player_state
C - - - - - 0x0013DF 00:D3CF: A5 05     LDA ram_btn_press
C - - - - - 0x0013E1 00:D3D1: 4A        LSR
C - - - - - 0x0013E2 00:D3D2: 4A        LSR
C - - - - - 0x0013E3 00:D3D3: 29 30     AND #$30
C - - - - - 0x0013E5 00:D3D5: F0 0E     BEQ bra_D3E5
C - - - - - 0x0013E7 00:D3D7: C9 30     CMP #$30
C - - - - - 0x0013E9 00:D3D9: F0 0A     BEQ bra_D3E5
C - - - - - 0x0013EB 00:D3DB: 05 9A     ORA ram_player_state
C - - - - - 0x0013ED 00:D3DD: 85 9A     STA ram_player_state
loc_D3DF:
C D 2 - - - 0x0013EF 00:D3DF: A9 01     LDA #$01
C - - - - - 0x0013F1 00:D3E1: 85 9B     STA ram_009B
C - - - - - 0x0013F3 00:D3E3: D0 14     BNE bra_D3F9
bra_D3E5:
C - - - - - 0x0013F5 00:D3E5: A5 B5     LDA ram_00B5
C - - - - - 0x0013F7 00:D3E7: D0 32     BNE bra_D41B_RTS
loc_D3E9:
C D 2 - - - 0x0013F9 00:D3E9: A5 9A     LDA ram_player_state
C - - - - - 0x0013FB 00:D3EB: F0 2F     BEQ bra_D41C_idle
C - - - - - 0x0013FD 00:D3ED: C9 08     CMP #$08
C - - - - - 0x0013FF 00:D3EF: B0 08     BCS bra_D3F9    ; if jump, kick or punch
C - - - - - 0x001401 00:D3F1: C9 03     CMP #$03
C - - - - - 0x001403 00:D3F3: F0 26     BEQ bra_D41B_RTS    ; if both left and right, is that possible to do?
C - - - - - 0x001405 00:D3F5: 90 2C     BCC bra_D423    ; if left or right
C - - - - - 0x001407 00:D3F7: B0 25     BCS bra_D41E    ; if duck
bra_D3F9:
C - - - - - 0x001409 00:D3F9: A9 14     LDA #$14
C - - - - - 0x00140B 00:D3FB: 85 B5     STA ram_00B5
C - - - - - 0x00140D 00:D3FD: A5 9A     LDA ram_player_state
C - - - - - 0x00140F 00:D3FF: 29 30     AND #con_state_kick + con_state_punch
C - - - - - 0x001411 00:D401: F0 0D     BEQ bra_D410
C - - - - - 0x001413 00:D403: C9 30     CMP #con_state_kick + con_state_punch   ; bzk is that possible to do?
C - - - - - 0x001415 00:D405: F0 09     BEQ bra_D410
C - - - - - 0x001417 00:D407: 29 08     AND #con_state_jump
C - - - - - 0x001419 00:D409: D0 05     BNE bra_D410
C - - - - - 0x00141B 00:D40B: A9 81     LDA #$81
C - - - - - 0x00141D 00:D40D: 20 45 CE  JSR sub_CE45
bra_D410:
C - - - - - 0x001420 00:D410: A9 00     LDA #$00
C - - - - - 0x001422 00:D412: 85 E2     STA ram_00E2
C - - - - - 0x001424 00:D414: 85 E1     STA ram_00E1
C - - - - - 0x001426 00:D416: 60        RTS


; bzk garbage
- - - - - - 0x001427 00:D417: A9 00     LDA #con_state_idle
- - - - - - 0x001429 00:D419: 85 9A     STA ram_player_state



bra_D41B_RTS:
C - - - - - 0x00142B 00:D41B: 60        RTS
bra_D41C_idle:  ; bzk optimize, loading the same A = 00 after BEQ
C - - - - - 0x00142C 00:D41C: A9 00     LDA #$00
bra_D41E:   ; bzk optimize, writing state from the same state address, BCS to 0x001430
C - - - - - 0x00142E 00:D41E: 85 9A     STA ram_player_state
C - - - - - 0x001430 00:D420: A9 01     LDA #$01
C - - - - - 0x001432 00:D422: 2C        .byte $2C   ; BIT
bra_D423:
C - - - - - 0x001433 00:D423: A9 05     LDA #$05
C - - - - - 0x001435 00:D425: 85 B5     STA ram_00B5
C - - - - - 0x001437 00:D427: 4C 1C D1  JMP loc_D11C



loc_D42A:
C D 2 - - - 0x00143A 00:D42A: A9 B0     LDA #$B0
C - - - - - 0x00143C 00:D42C: 85 73     STA ram_0073
C - - - - - 0x00143E 00:D42E: A5 B8     LDA ram_00B8
C - - - - - 0x001440 00:D430: F0 03     BEQ bra_D435
C - - - - - 0x001442 00:D432: 4C AA D5  JMP loc_D5AA
bra_D435:
C - - - - - 0x001445 00:D435: A5 64     LDA ram_0064
C - - - - - 0x001447 00:D437: D0 2D     BNE bra_D466_RTS
C - - - - - 0x001449 00:D439: A5 9A     LDA ram_player_state
C - - - - - 0x00144B 00:D43B: 85 9B     STA ram_009B
C - - - - - 0x00144D 00:D43D: A5 9C     LDA ram_009C
C - - - - - 0x00144F 00:D43F: 20 E9 D0  JSR sub_D0E9_read_pointers_after_JSR
- D 2 - I - 0x001452 00:D442: 50 D4     .word ofs_004_D450_00
- D 2 - I - 0x001454 00:D444: 8B D4     .word ofs_004_D48B_01
- D 2 - I - 0x001456 00:D446: 67 D4     .word ofs_004_D467_02
- D 2 - I - 0x001458 00:D448: F1 D4     .word ofs_004_D4F1_03
- D 2 - I - 0x00145A 00:D44A: 14 D5     .word ofs_004_D514_04
- D 2 - I - 0x00145C 00:D44C: 25 D5     .word ofs_004_D525_05
- D 2 - I - 0x00145E 00:D44E: 98 D6     .word ofs_004_D698_06



ofs_004_D450_00:
C - - J - - 0x001460 00:D450: A9 8B     LDA #$8B
C - - - - - 0x001462 00:D452: 20 45 CE  JSR sub_CE45
C - - - - - 0x001465 00:D455: A9 CC     LDA #$CC
C - - - - - 0x001467 00:D457: 20 45 CE  JSR sub_CE45
C - - - - - 0x00146A 00:D45A: A9 07     LDA #$07
C - - - - - 0x00146C 00:D45C: 85 CE     STA ram_enemy_animation
C - - - - - 0x00146E 00:D45E: 85 7C     STA ram_007C
C - - - - - 0x001470 00:D460: A9 10     LDA #$10
C - - - - - 0x001472 00:D462: 85 B5     STA ram_00B5
C - - - - - 0x001474 00:D464: E6 9C     INC ram_009C
bra_D466_RTS:
C - - - - - 0x001476 00:D466: 60        RTS



ofs_004_D467_02:
C - - J - - 0x001477 00:D467: A5 DB     LDA ram_hp_player
C - - - - - 0x001479 00:D469: D0 19     BNE bra_D484
C - - - - - 0x00147B 00:D46B: A9 50     LDA #$50
C - - - - - 0x00147D 00:D46D: 85 8A     STA ram_008A
C - - - - - 0x00147F 00:D46F: 20 35 C7  JSR sub_C735
C - - - - - 0x001482 00:D472: A9 0A     LDA #$0A
C - - - - - 0x001484 00:D474: 20 57 C4  JSR sub_C457
C - - - - - 0x001487 00:D477: A5 D5     LDA ram_00D5
C - - - - - 0x001489 00:D479: D0 05     BNE bra_D480
C - - - - - 0x00148B 00:D47B: A9 8A     LDA #$8A
C - - - - - 0x00148D 00:D47D: 20 45 CE  JSR sub_CE45
bra_D480:
C - - - - - 0x001490 00:D480: A9 01     LDA #$01
C - - - - - 0x001492 00:D482: 85 D5     STA ram_00D5
bra_D484:
C - - - - - 0x001494 00:D484: E6 9C     INC ram_009C
C - - - - - 0x001496 00:D486: A9 30     LDA #$30
C - - - - - 0x001498 00:D488: 85 7D     STA ram_007D
C - - - - - 0x00149A 00:D48A: 60        RTS



ofs_004_D48B_01:
C - - J - - 0x00149B 00:D48B: A5 BD     LDA ram_jump_timer
C - - - - - 0x00149D 00:D48D: D0 06     BNE bra_D495_RTS
C - - - - - 0x00149F 00:D48F: A5 7D     LDA ram_007D
C - - - - - 0x0014A1 00:D491: F0 03     BEQ bra_D496
C - - - - - 0x0014A3 00:D493: C6 7D     DEC ram_007D
bra_D495_RTS:
C - - - - - 0x0014A5 00:D495: 60        RTS
bra_D496:
C - - - - - 0x0014A6 00:D496: A9 0A     LDA #$0A
C - - - - - 0x0014A8 00:D498: 85 7D     STA ram_007D
C - - - - - 0x0014AA 00:D49A: A5 CC     LDA ram_00CC
C - - - - - 0x0014AC 00:D49C: D0 0A     BNE bra_D4A8
C - - - - - 0x0014AE 00:D49E: A9 0F     LDA #$0F
C - - - - - 0x0014B0 00:D4A0: 20 45 CE  JSR sub_CE45
C - - - - - 0x0014B3 00:D4A3: A9 50     LDA #$50
C - - - - - 0x0014B5 00:D4A5: 20 45 CE  JSR sub_CE45
bra_D4A8:
C - - - - - 0x0014B8 00:D4A8: E6 CC     INC ram_00CC
C - - - - - 0x0014BA 00:D4AA: A5 CC     LDA ram_00CC
C - - - - - 0x0014BC 00:D4AC: C9 07     CMP #$07
C - - - - - 0x0014BE 00:D4AE: D0 2A     BNE bra_D4DA
C - - - - - 0x0014C0 00:D4B0: E6 9C     INC ram_009C
C - - - - - 0x0014C2 00:D4B2: A9 80     LDA #$80
C - - - - - 0x0014C4 00:D4B4: 85 7D     STA ram_007D
C - - - - - 0x0014C6 00:D4B6: 20 BA D4  JSR sub_D4BA
C - - - - - 0x0014C9 00:D4B9: 60        RTS



sub_D4BA:
C - - - - - 0x0014CA 00:D4BA: A0 41     LDY #$41
C - - - - - 0x0014CC 00:D4BC: A9 FB     LDA #$FB
C - - - - - 0x0014CE 00:D4BE: A6 BC     LDX ram_00BC
C - - - - - 0x0014D0 00:D4C0: F0 04     BEQ bra_D4C6
C - - - - - 0x0014D2 00:D4C2: A9 FC     LDA #$FC
C - - - - - 0x0014D4 00:D4C4: A0 41     LDY #$41
bra_D4C6:
C - - - - - 0x0014D6 00:D4C6: 18        CLC
C - - - - - 0x0014D7 00:D4C7: 65 BB     ADC ram_pos_X_player
C - - - - - 0x0014D9 00:D4C9: 8D 1F 02  STA ram_spr_X + $1C
C - - - - - 0x0014DC 00:D4CC: 8C 1E 02  STY ram_spr_A + $1C
C - - - - - 0x0014DF 00:D4CF: A9 A3     LDA #$A3
C - - - - - 0x0014E1 00:D4D1: 8D 1C 02  STA ram_spr_Y + $1C
C - - - - - 0x0014E4 00:D4D4: A9 E2     LDA #$E2
C - - - - - 0x0014E6 00:D4D6: 8D 1D 02  STA ram_spr_T + $1C
C - - - - - 0x0014E9 00:D4D9: 60        RTS
bra_D4DA:
C - - - - - 0x0014EA 00:D4DA: A6 CC     LDX ram_00CC
C - - - - - 0x0014EC 00:D4DC: BD E9 D4  LDA tbl_D4E9_victory_actions,X
C - - - - - 0x0014EF 00:D4DF: 85 9A     STA ram_player_state
C - - - - - 0x0014F1 00:D4E1: 4C DF D3  JMP loc_D3DF



loc_D4E4_set_player_state:  ; 01 02 09
C D 2 - - - 0x0014F4 00:D4E4: 85 9A     STA ram_player_state
C - - - - - 0x0014F6 00:D4E6: 4C E9 D3  JMP loc_D3E9



tbl_D4E9_victory_actions:
- - - - - - 0x0014F9 00:D4E9: 00        .byte con_state_idle                                          ; 00
- D 2 - - - 0x0014FA 00:D4EA: 21        .byte con_state_punch                  + con_state_move_right ; 01
- D 2 - - - 0x0014FB 00:D4EB: 12        .byte con_state_kick                   + con_state_move_left  ; 02
- D 2 - - - 0x0014FC 00:D4EC: 15        .byte con_state_kick  + con_state_duck + con_state_move_right ; 03
- D 2 - - - 0x0014FD 00:D4ED: 16        .byte con_state_kick  + con_state_duck + con_state_move_left  ; 04
- D 2 - - - 0x0014FE 00:D4EE: 11        .byte con_state_kick                   + con_state_move_right ; 05
- D 2 - - - 0x0014FF 00:D4EF: 22        .byte con_state_punch                  + con_state_move_left  ; 06
- - - - - - 0x001500 00:D4F0: 00        .byte con_state_idle                                          ; 07



ofs_004_D4F1_03:
C - - J - - 0x001501 00:D4F1: A5 7D     LDA ram_007D
C - - - - - 0x001503 00:D4F3: F0 03     BEQ bra_D4F8
C - - - - - 0x001505 00:D4F5: C6 7D     DEC ram_007D
C - - - - - 0x001507 00:D4F7: 60        RTS
bra_D4F8:
C - - - - - 0x001508 00:D4F8: A9 0A     LDA #$0A
C - - - - - 0x00150A 00:D4FA: 85 7D     STA ram_007D
C - - - - - 0x00150C 00:D4FC: A5 DB     LDA ram_hp_player
C - - - - - 0x00150E 00:D4FE: C9 09     CMP #$09
C - - - - - 0x001510 00:D500: B0 19     BCS bra_D51B
C - - - - - 0x001512 00:D502: E6 DB     INC ram_hp_player
C - - - - - 0x001514 00:D504: A5 34     LDA ram_0034
C - - - - - 0x001516 00:D506: D0 05     BNE bra_D50D
C - - - - - 0x001518 00:D508: A9 89     LDA #$89
C - - - - - 0x00151A 00:D50A: 20 45 CE  JSR sub_CE45
bra_D50D:
C - - - - - 0x00151D 00:D50D: A9 08     LDA #$08
C - - - - - 0x00151F 00:D50F: 85 8A     STA ram_008A
C - - - - - 0x001521 00:D511: 4C 35 C7  JMP loc_C735



ofs_004_D514_04:
ofs_005_D514_01:
ofs_005_D514_03:
C - - J - - 0x001524 00:D514: A5 7D     LDA ram_007D
C - - - - - 0x001526 00:D516: F0 07     BEQ bra_D51F
C - - - - - 0x001528 00:D518: C6 7D     DEC ram_007D
C - - - - - 0x00152A 00:D51A: 60        RTS



bra_D51B:
C - - - - - 0x00152B 00:D51B: A9 60     LDA #$60
C - - - - - 0x00152D 00:D51D: 85 7D     STA ram_007D
bra_D51F:
C - - - - - 0x00152F 00:D51F: E6 9C     INC ram_009C
C - - - - - 0x001531 00:D521: 60        RTS



bra_D522:
C - - - - - 0x001532 00:D522: 4C 98 D6  JMP loc_D698



ofs_004_D525_05:
C - - J - - 0x001535 00:D525: A5 68     LDA ram_enemy_type
C - - - - - 0x001537 00:D527: C9 04     CMP #$04
C - - - - - 0x001539 00:D529: D0 F7     BNE bra_D522
C - - - - - 0x00153B 00:D52B: A9 F8     LDA #$F8
C - - - - - 0x00153D 00:D52D: 8D 1C 02  STA ram_spr_Y + $1C
C - - - - - 0x001540 00:D530: A0 40     LDY #$40
C - - - - - 0x001542 00:D532: A6 EF     LDX ram_00EF
C - - - - - 0x001544 00:D534: F0 11     BEQ bra_D547
C - - - - - 0x001546 00:D536: E0 01     CPX #$01
C - - - - - 0x001548 00:D538: F0 16     BEQ bra_D550
C - - - - - 0x00154A 00:D53A: E0 02     CPX #$02
C - - - - - 0x00154C 00:D53C: F0 21     BEQ bra_D55F
C - - - - - 0x00154E 00:D53E: E0 85     CPX #$85
C - - - - - 0x001550 00:D540: F0 2C     BEQ bra_D56E
C - - - - - 0x001552 00:D542: E0 05     CPX #$05
C - - - - - 0x001554 00:D544: F0 44     BEQ bra_D58A
- - - - - - 0x001556 00:D546: 60        RTS
bra_D547:
C - - - - - 0x001557 00:D547: 20 2A C9  JSR sub_C92A
C - - - - - 0x00155A 00:D54A: 20 54 C9  JSR sub_C954
C - - - - - 0x00155D 00:D54D: E6 EF     INC ram_00EF
C - - - - - 0x00155F 00:D54F: 60        RTS
bra_D550:
C - - - - - 0x001560 00:D550: C4 BB     CPY ram_pos_X_player
C - - - - - 0x001562 00:D552: F0 3D     BEQ bra_D591
C - - - - - 0x001564 00:D554: 90 04     BCC bra_D55A
bra_D556:
C - - - - - 0x001566 00:D556: A9 01     LDA #con_state_move_right
C - - - - - 0x001568 00:D558: D0 02     BNE bra_D55C
bra_D55A:
C - - - - - 0x00156A 00:D55A: A9 02     LDA #con_state_move_left
bra_D55C:
C - - - - - 0x00156C 00:D55C: 4C E4 D4  JMP loc_D4E4_set_player_state
bra_D55F:
C - - - - - 0x00156F 00:D55F: C4 BB     CPY ram_pos_X_player
C - - - - - 0x001571 00:D561: D0 F3     BNE bra_D556
C - - - - - 0x001573 00:D563: E6 EF     INC ram_00EF
C - - - - - 0x001575 00:D565: A9 64     LDA #$64
C - - - - - 0x001577 00:D567: 85 7D     STA ram_007D
; jumping and hitting the gong
C - - - - - 0x001579 00:D569: A9 09     LDA #con_state_jump + con_state_move_right
C - - - - - 0x00157B 00:D56B: 4C E4 D4  JMP loc_D4E4_set_player_state
bra_D56E:
C - - - - - 0x00157E 00:D56E: A5 BD     LDA ram_jump_timer
C - - - - - 0x001580 00:D570: D0 1E     BNE bra_D590_RTS
C - - - - - 0x001582 00:D572: A5 50     LDA ram_game_mode
C - - - - - 0x001584 00:D574: F0 06     BEQ bra_D57C_lvl_1
C - - - - - 0x001586 00:D576: A9 00     LDA #$00
C - - - - - 0x001588 00:D578: 85 BC     STA ram_00BC
C - - - - - 0x00158A 00:D57A: 85 69     STA ram_0069
bra_D57C_lvl_1:
C - - - - - 0x00158C 00:D57C: 20 BA D4  JSR sub_D4BA
C - - - - - 0x00158F 00:D57F: C6 7D     DEC ram_007D
C - - - - - 0x001591 00:D581: 10 0D     BPL bra_D590_RTS
C - - - - - 0x001593 00:D583: A5 EF     LDA ram_00EF
C - - - - - 0x001595 00:D585: 29 0F     AND #$0F
C - - - - - 0x001597 00:D587: 85 EF     STA ram_00EF
C - - - - - 0x001599 00:D589: 60        RTS
bra_D58A:
C - - - - - 0x00159A 00:D58A: A5 BD     LDA ram_jump_timer
C - - - - - 0x00159C 00:D58C: D0 02     BNE bra_D590_RTS
C - - - - - 0x00159E 00:D58E: E6 9C     INC ram_009C
bra_D590_RTS:
C - - - - - 0x0015A0 00:D590: 60        RTS
bra_D591:
C - - - - - 0x0015A1 00:D591: E6 EF     INC ram_00EF
C - - - - - 0x0015A3 00:D593: A9 00     LDA #$00
C - - - - - 0x0015A5 00:D595: 85 CC     STA ram_00CC
C - - - - - 0x0015A7 00:D597: 60        RTS



sub_D598:
C - - - - - 0x0015A8 00:D598: 20 9B D6  JSR sub_D69B
C - - - - - 0x0015AB 00:D59B: A9 14     LDA #$14
C - - - - - 0x0015AD 00:D59D: 20 45 CE  JSR sub_CE45
C - - - - - 0x0015B0 00:D5A0: A9 55     LDA #$55
C - - - - - 0x0015B2 00:D5A2: 20 45 CE  JSR sub_CE45
C - - - - - 0x0015B5 00:D5A5: A9 D6     LDA #$D6
C - - - - - 0x0015B7 00:D5A7: 4C 45 CE  JMP loc_CE45



loc_D5AA:
C D 2 - - - 0x0015BA 00:D5AA: A5 B8     LDA ram_00B8
C - - - - - 0x0015BC 00:D5AC: 4A        LSR
C - - - - - 0x0015BD 00:D5AD: 90 21     BCC bra_D5D0
C - - - - - 0x0015BF 00:D5AF: C6 7D     DEC ram_007D
C - - - - - 0x0015C1 00:D5B1: D0 59     BNE bra_D60C
C - - - - - 0x0015C3 00:D5B3: A9 8B     LDA #$8B
C - - - - - 0x0015C5 00:D5B5: 20 45 CE  JSR sub_CE45
C - - - - - 0x0015C8 00:D5B8: A9 CC     LDA #$CC
C - - - - - 0x0015CA 00:D5BA: 20 45 CE  JSR sub_CE45
C - - - - - 0x0015CD 00:D5BD: A9 09     LDA #$09
C - - - - - 0x0015CF 00:D5BF: 85 B6     STA ram_player_animation
C - - - - - 0x0015D1 00:D5C1: A9 20     LDA #$20
C - - - - - 0x0015D3 00:D5C3: 85 7D     STA ram_007D
C - - - - - 0x0015D5 00:D5C5: A9 FE     LDA #$FE
C - - - - - 0x0015D7 00:D5C7: 85 B8     STA ram_00B8
C - - - - - 0x0015D9 00:D5C9: A9 F8     LDA #$F8
C - - - - - 0x0015DB 00:D5CB: 8D 18 02  STA ram_spr_Y + $18
C - - - - - 0x0015DE 00:D5CE: D0 3C     BNE bra_D60C
bra_D5D0:
C - - - - - 0x0015E0 00:D5D0: C6 7D     DEC ram_007D
C - - - - - 0x0015E2 00:D5D2: D0 BC     BNE bra_D590_RTS
C - - - - - 0x0015E4 00:D5D4: E6 7D     INC ram_007D
C - - - - - 0x0015E6 00:D5D6: A5 B8     LDA ram_00B8
C - - - - - 0x0015E8 00:D5D8: 0A        ASL
C - - - - - 0x0015E9 00:D5D9: 90 2B     BCC bra_D606
C - - - - - 0x0015EB 00:D5DB: A5 09     LDA ram_0009
C - - - - - 0x0015ED 00:D5DD: 4A        LSR
C - - - - - 0x0015EE 00:D5DE: 4A        LSR
C - - - - - 0x0015EF 00:D5DF: 4A        LSR
C - - - - - 0x0015F0 00:D5E0: 4A        LSR
C - - - - - 0x0015F1 00:D5E1: B0 15     BCS bra_D5F8
C - - - - - 0x0015F3 00:D5E3: A5 6A     LDA ram_006A
C - - - - - 0x0015F5 00:D5E5: D0 1F     BNE bra_D606
C - - - - - 0x0015F7 00:D5E7: A9 01     LDA #$01
C - - - - - 0x0015F9 00:D5E9: 85 6A     STA ram_006A
C - - - - - 0x0015FB 00:D5EB: 20 9B D6  JSR sub_D69B
C - - - - - 0x0015FE 00:D5EE: A9 87     LDA #$87
C - - - - - 0x001600 00:D5F0: 20 45 CE  JSR sub_CE45
C - - - - - 0x001603 00:D5F3: A9 0A     LDA #$0A
C - - - - - 0x001605 00:D5F5: 85 B6     STA ram_player_animation
C - - - - - 0x001607 00:D5F7: 60        RTS
bra_D5F8:
C - - - - - 0x001608 00:D5F8: A5 6A     LDA ram_006A
C - - - - - 0x00160A 00:D5FA: F0 0A     BEQ bra_D606
C - - - - - 0x00160C 00:D5FC: A9 00     LDA #$00
C - - - - - 0x00160E 00:D5FE: 85 6A     STA ram_006A
C - - - - - 0x001610 00:D600: A9 09     LDA #$09
C - - - - - 0x001612 00:D602: 85 B6     STA ram_player_animation
C - - - - - 0x001614 00:D604: E6 6B     INC ram_006B
bra_D606:
C - - - - - 0x001616 00:D606: A5 6B     LDA ram_006B
C - - - - - 0x001618 00:D608: C9 06     CMP #$06
C - - - - - 0x00161A 00:D60A: F0 05     BEQ bra_D611
bra_D60C:
C - - - - - 0x00161C 00:D60C: A9 10     LDA #$10
C - - - - - 0x00161E 00:D60E: 85 73     STA ram_0073
C - - - - - 0x001620 00:D610: 60        RTS
bra_D611:
C - - - - - 0x001621 00:D611: A5 64     LDA ram_0064
C - - - - - 0x001623 00:D613: F0 09     BEQ bra_D61E
C - - - - - 0x001625 00:D615: A9 01     LDA #$01
C - - - - - 0x001627 00:D617: 85 AF     STA ram_00AF
C - - - - - 0x001629 00:D619: A9 00     LDA #$00
C - - - - - 0x00162B 00:D61B: 85 9C     STA ram_009C
C - - - - - 0x00162D 00:D61D: 60        RTS
bra_D61E:
C - - - - - 0x00162E 00:D61E: A5 60     LDA ram_lives
C - - - - - 0x001630 00:D620: D0 0F     BNE bra_D631
C - - - - - 0x001632 00:D622: A9 11     LDA #$11
C - - - - - 0x001634 00:D624: 20 45 CE  JSR sub_CE45
C - - - - - 0x001637 00:D627: A9 52     LDA #$52
C - - - - - 0x001639 00:D629: 20 45 CE  JSR sub_CE45
C - - - - - 0x00163C 00:D62C: A9 93     LDA #$93
C - - - - - 0x00163E 00:D62E: 20 45 CE  JSR sub_CE45
bra_D631:
C - - - - - 0x001641 00:D631: A9 01     LDA #$01
C - - - - - 0x001643 00:D633: 85 0A     STA ram_000A
C - - - - - 0x001645 00:D635: 60        RTS



loc_D636:
C D 2 - - - 0x001646 00:D636: A9 0A     LDA #$0A
C - - - - - 0x001648 00:D638: 85 73     STA ram_0073
C - - - - - 0x00164A 00:D63A: A5 9C     LDA ram_009C
C - - - - - 0x00164C 00:D63C: 20 E9 D0  JSR sub_D0E9_read_pointers_after_JSR
- D 2 - I - 0x00164F 00:D63F: 49 D6     .word ofs_005_D649_00
- D 2 - I - 0x001651 00:D641: 14 D5     .word ofs_005_D514_01
- D 2 - I - 0x001653 00:D643: 65 D6     .word ofs_005_D665_02
- D 2 - I - 0x001655 00:D645: 14 D5     .word ofs_005_D514_03
- D 2 - I - 0x001657 00:D647: 98 D6     .word ofs_005_D698_04



ofs_005_D649_00:
C - - J - - 0x001659 00:D649: A2 02     LDX #$02
C - - - - - 0x00165B 00:D64B: 86 D5     STX ram_00D5
C - - - - - 0x00165D 00:D64D: A9 1B     LDA #$1B
C - - - - - 0x00165F 00:D64F: A0 01     LDY #$01
C - - - - - 0x001661 00:D651: 20 85 C4  JSR sub_C485
C - - - - - 0x001664 00:D654: A9 2A     LDA #$2A
C - - - - - 0x001666 00:D656: 20 9F C4  JSR sub_C49F
C - - - - - 0x001669 00:D659: A9 14     LDA #$14
C - - - - - 0x00166B 00:D65B: 20 9F C4  JSR sub_C49F
bra_D65E:
C - - - - - 0x00166E 00:D65E: A9 3C     LDA #$3C
loc_D660:
C D 2 - - - 0x001670 00:D660: 85 7D     STA ram_007D
C - - - - - 0x001672 00:D662: E6 9C     INC ram_009C
C - - - - - 0x001674 00:D664: 60        RTS



ofs_005_D665_02:
C - - J - - 0x001675 00:D665: A5 B1     LDA ram_00B1
C - - - - - 0x001677 00:D667: C9 10     CMP #$10
C - - - - - 0x001679 00:D669: D0 F3     BNE bra_D65E
C - - - - - 0x00167B 00:D66B: A9 00     LDA #$00    ; con_state_idle
C - - - - - 0x00167D 00:D66D: 85 9A     STA ram_player_state
C - - - - - 0x00167F 00:D66F: 85 B6     STA ram_player_animation
C - - - - - 0x001681 00:D671: 20 BA D4  JSR sub_D4BA
C - - - - - 0x001684 00:D674: A9 0A     LDA #$0A
C - - - - - 0x001686 00:D676: 20 57 C4  JSR sub_C457
C - - - - - 0x001689 00:D679: A9 01     LDA #$01
C - - - - - 0x00168B 00:D67B: 85 D5     STA ram_00D5
C - - - - - 0x00168D 00:D67D: A9 50     LDA #$50
C - - - - - 0x00168F 00:D67F: 85 8A     STA ram_008A
C - - - - - 0x001691 00:D681: 20 35 C7  JSR sub_C735
C - - - - - 0x001694 00:D684: A9 00     LDA #$00
C - - - - - 0x001696 00:D686: 20 45 CE  JSR sub_CE45
C - - - - - 0x001699 00:D689: A9 40     LDA #$40
C - - - - - 0x00169B 00:D68B: 20 45 CE  JSR sub_CE45
C - - - - - 0x00169E 00:D68E: A9 8A     LDA #$8A
C - - - - - 0x0016A0 00:D690: 20 45 CE  JSR sub_CE45
C - - - - - 0x0016A3 00:D693: A9 5A     LDA #$5A
C - - - - - 0x0016A5 00:D695: 4C 60 D6  JMP loc_D660



loc_D698:
ofs_004_D698_06:
ofs_005_D698_04:
C D 2 - - - 0x0016A8 00:D698: E6 0B     INC ram_000B
C - - - - - 0x0016AA 00:D69A: 60        RTS



sub_D69B:
loc_D69B:
C D 2 - - - 0x0016AB 00:D69B: A9 80     LDA #$80
C - - - - - 0x0016AD 00:D69D: 20 45 CE  JSR sub_CE45
C - - - - - 0x0016B0 00:D6A0: A9 C0     LDA #$C0
C - - - - - 0x0016B2 00:D6A2: 20 45 CE  JSR sub_CE45
sub_D6A5:
C - - - - - 0x0016B5 00:D6A5: A9 00     LDA #$00
C - - - - - 0x0016B7 00:D6A7: 20 45 CE  JSR sub_CE45
C - - - - - 0x0016BA 00:D6AA: A9 40     LDA #$40
C - - - - - 0x0016BC 00:D6AC: 4C 45 CE  JMP loc_CE45



loc_D6AF:
C D 2 - - - 0x0016BF 00:D6AF: A5 B5     LDA ram_00B5
C - - - - - 0x0016C1 00:D6B1: D0 2C     BNE bra_D6DF_RTS
C - - - - - 0x0016C3 00:D6B3: A5 B7     LDA ram_00B7
C - - - - - 0x0016C5 00:D6B5: 20 E9 D0  JSR sub_D0E9_read_pointers_after_JSR
- D 2 - I - 0x0016C8 00:D6B8: BE D6     .word ofs_006_D6BE_00
- D 2 - I - 0x0016CA 00:D6BA: E4 D6     .word ofs_006_D6E4_01
- - - - - - 0x0016CC 00:D6BC: FC D6     .word ofs_006_D6FC_02



ofs_006_D6BE_00:
C - - J - - 0x0016CE 00:D6BE: E6 6C     INC ram_006C
C - - - - - 0x0016D0 00:D6C0: A6 6C     LDX ram_006C
C - - - - - 0x0016D2 00:D6C2: BD 09 D7  LDA tbl_D709,X
C - - - - - 0x0016D5 00:D6C5: C9 FF     CMP #$FF
C - - - - - 0x0016D7 00:D6C7: F0 0F     BEQ bra_D6D8
C - - - - - 0x0016D9 00:D6C9: C9 30     CMP #$30
C - - - - - 0x0016DB 00:D6CB: F0 13     BEQ bra_D6E0
C - - - - - 0x0016DD 00:D6CD: C9 80     CMP #$80
C - - - - - 0x0016DF 00:D6CF: F0 23     BEQ bra_D6F4
C - - - - - 0x0016E1 00:D6D1: A8        TAY
bra_D6D2_set_player_state:
C - - - - - 0x0016E2 00:D6D2: 98        TYA
C - - - - - 0x0016E3 00:D6D3: 85 9A     STA ram_player_state
C - - - - - 0x0016E5 00:D6D5: 4C E9 D3  JMP loc_D3E9
bra_D6D8:
C - - - - - 0x0016E8 00:D6D8: A9 00     LDA #$00
C - - - - - 0x0016EA 00:D6DA: 85 6C     STA ram_006C
C - - - - - 0x0016EC 00:D6DC: 20 9B D6  JSR sub_D69B
bra_D6DF_RTS:
C - - - - - 0x0016EF 00:D6DF: 60        RTS
bra_D6E0:
C - - - - - 0x0016F0 00:D6E0: A9 01     LDA #$01
C - - - - - 0x0016F2 00:D6E2: 85 B7     STA ram_00B7
ofs_006_D6E4_01:
C - - - - - 0x0016F4 00:D6E4: A5 D6     LDA ram_dist_betw_fighters
C - - - - - 0x0016F6 00:D6E6: C9 02     CMP #$02
C - - - - - 0x0016F8 00:D6E8: 90 1A     BCC bra_D704
C - - - - - 0x0016FA 00:D6EA: A0 01     LDY #con_state_move_right
C - - - - - 0x0016FC 00:D6EC: A6 CF     LDX ram_00CF
C - - - - - 0x0016FE 00:D6EE: F0 E2     BEQ bra_D6D2_set_player_state
C - - - - - 0x001700 00:D6F0: A0 02     LDY #con_state_move_left
C - - - - - 0x001702 00:D6F2: D0 DE     BNE bra_D6D2_set_player_state
bra_D6F4:
- - - - - - 0x001704 00:D6F4: A9 02     LDA #$02
- - - - - - 0x001706 00:D6F6: 85 B7     STA ram_00B7
- - - - - - 0x001708 00:D6F8: A9 20     LDA #$20
- - - - - - 0x00170A 00:D6FA: 85 7D     STA ram_007D
ofs_006_D6FC_02:
- - - - - - 0x00170C 00:D6FC: C6 7D     DEC ram_007D
- - - - - - 0x00170E 00:D6FE: F0 04     BEQ bra_D704
- - - - - - 0x001710 00:D700: A0 00     LDY #con_state_idle
- - - - - - 0x001712 00:D702: F0 CE     BEQ bra_D6D2_set_player_state
bra_D704:
C - - - - - 0x001714 00:D704: A9 00     LDA #$00
C - - - - - 0x001716 00:D706: 85 B7     STA ram_00B7
C - - - - - 0x001718 00:D708: 60        RTS



tbl_D709:
- - - - - - 0x001719 00:D709: 00        .byte $00   ; 
- D 2 - - - 0x00171A 00:D70A: 09        .byte $09   ; 
- D 2 - - - 0x00171B 00:D70B: 20        .byte $20   ; 
- D 2 - - - 0x00171C 00:D70C: 11        .byte $11   ; 
- D 2 - - - 0x00171D 00:D70D: 30        .byte $30   ; 
- D 2 - - - 0x00171E 00:D70E: 14        .byte $14   ; 
- D 2 - - - 0x00171F 00:D70F: 20        .byte $20   ; 
- D 2 - - - 0x001720 00:D710: 30        .byte $30   ; 
- D 2 - - - 0x001721 00:D711: 11        .byte $11   ; 
- D 2 - - - 0x001722 00:D712: 11        .byte $11   ; 
- D 2 - - - 0x001723 00:D713: 14        .byte $14   ; 
- D 2 - - - 0x001724 00:D714: 0A        .byte $0A   ; 
- D 2 - - - 0x001725 00:D715: 00        .byte $00   ; 
- D 2 - - - 0x001726 00:D716: 20        .byte $20   ; 
- D 2 - - - 0x001727 00:D717: 30        .byte $30   ; 
- D 2 - - - 0x001728 00:D718: 10        .byte $10   ; 
- D 2 - - - 0x001729 00:D719: 20        .byte $20   ; 
- D 2 - - - 0x00172A 00:D71A: 00        .byte $00   ; 
- D 2 - - - 0x00172B 00:D71B: 14        .byte $14   ; 
- D 2 - - - 0x00172C 00:D71C: 30        .byte $30   ; 
- D 2 - - - 0x00172D 00:D71D: 11        .byte $11   ; 
- D 2 - - - 0x00172E 00:D71E: 0A        .byte $0A   ; 
- D 2 - - - 0x00172F 00:D71F: 00        .byte $00   ; 
- D 2 - - - 0x001730 00:D720: 11        .byte $11   ; 
- D 2 - - - 0x001731 00:D721: 30        .byte $30   ; 
- D 2 - - - 0x001732 00:D722: 04        .byte $04   ; 
- D 2 - - - 0x001733 00:D723: 24        .byte $24   ; 
- D 2 - - - 0x001734 00:D724: 20        .byte $20   ; 
- D 2 - - - 0x001735 00:D725: 14        .byte $14   ; 
- D 2 - - - 0x001736 00:D726: 00        .byte $00   ; 
- D 2 - - - 0x001737 00:D727: 30        .byte $30   ; 
- D 2 - - - 0x001738 00:D728: 20        .byte $20   ; 
- D 2 - - - 0x001739 00:D729: 11        .byte $11   ; 
- D 2 - - - 0x00173A 00:D72A: 00        .byte $00   ; 
- D 2 - - - 0x00173B 00:D72B: 09        .byte $09   ; 
- D 2 - - - 0x00173C 00:D72C: 10        .byte $10   ; 
- D 2 - - - 0x00173D 00:D72D: 30        .byte $30   ; 
- D 2 - - - 0x00173E 00:D72E: 09        .byte $09   ; 
- D 2 - - - 0x00173F 00:D72F: 20        .byte $20   ; 
- D 2 - - - 0x001740 00:D730: 30        .byte $30   ; 
- D 2 - - - 0x001741 00:D731: 11        .byte $11   ; 
- D 2 - - - 0x001742 00:D732: FF        .byte $FF   ; 



sub_D733:
C - - - - - 0x001743 00:D733: A5 B6     LDA ram_player_animation
C - - - - - 0x001745 00:D735: 0A        ASL
C - - - - - 0x001746 00:D736: AA        TAX
C - - - - - 0x001747 00:D737: BD C7 D7  LDA tbl_D7C7,X
C - - - - - 0x00174A 00:D73A: 85 90     STA ram_0090
C - - - - - 0x00174C 00:D73C: BD C8 D7  LDA tbl_D7C7 + 1,X
C - - - - - 0x00174F 00:D73F: 85 91     STA ram_0091
C - - - - - 0x001751 00:D741: A2 0C     LDX #$0C
C - - - - - 0x001753 00:D743: A9 23     LDA #$23
C - - - - - 0x001755 00:D745: 85 94     STA ram_0094
C - - - - - 0x001757 00:D747: A9 02     LDA #$02
C - - - - - 0x001759 00:D749: 85 95     STA ram_0095
C - - - - - 0x00175B 00:D74B: A5 BA     LDA ram_pos_Y_player
C - - - - - 0x00175D 00:D74D: 85 96     STA ram_0096
C - - - - - 0x00175F 00:D74F: A5 64     LDA ram_0064
C - - - - - 0x001761 00:D751: D0 1C     BNE bra_D76F
C - - - - - 0x001763 00:D753: A5 CC     LDA ram_00CC
C - - - - - 0x001765 00:D755: D0 18     BNE bra_D76F
C - - - - - 0x001767 00:D757: A5 9A     LDA ram_player_state
C - - - - - 0x001769 00:D759: C9 08     CMP #con_state_jump
C - - - - - 0x00176B 00:D75B: F0 04     BEQ bra_D761_player_is_jumping
C - - - - - 0x00176D 00:D75D: A5 BD     LDA ram_jump_timer
C - - - - - 0x00176F 00:D75F: D0 0E     BNE bra_D76F
bra_D761_player_is_jumping:
C - - - - - 0x001771 00:D761: A5 B5     LDA ram_00B5
C - - - - - 0x001773 00:D763: D0 0E     BNE bra_D773
C - - - - - 0x001775 00:D765: A5 50     LDA ram_game_mode
C - - - - - 0x001777 00:D767: D0 06     BNE bra_D76F    ; if level 2
C - - - - - 0x001779 00:D769: A5 CF     LDA ram_00CF
C - - - - - 0x00177B 00:D76B: 49 01     EOR #$01
C - - - - - 0x00177D 00:D76D: 85 BC     STA ram_00BC
bra_D76F:
C - - - - - 0x00177F 00:D76F: A5 BC     LDA ram_00BC
C - - - - - 0x001781 00:D771: 85 69     STA ram_0069
bra_D773:
C - - - - - 0x001783 00:D773: A5 69     LDA ram_0069
C - - - - - 0x001785 00:D775: 85 97     STA ram_0097
C - - - - - 0x001787 00:D777: A5 BB     LDA ram_pos_X_player
C - - - - - 0x001789 00:D779: 85 93     STA ram_0093
C - - - - - 0x00178B 00:D77B: 4C 7E D7  JMP loc_D77E    ; bzk optimize



loc_D77E:
sub_D77E:
C D 2 - - - 0x00178E 00:D77E: A0 00     LDY #$00
C - - - - - 0x001790 00:D780: B1 90     LDA (ram_0090),Y
C - - - - - 0x001792 00:D782: 85 92     STA ram_0092
bra_D784_loop:
C - - - - - 0x001794 00:D784: C8        INY
C - - - - - 0x001795 00:D785: B1 90     LDA (ram_0090),Y
C - - - - - 0x001797 00:D787: 18        CLC
C - - - - - 0x001798 00:D788: 65 96     ADC ram_0096
C - - - - - 0x00179A 00:D78A: 91 94     STA (ram_0094),Y
C - - - - - 0x00179C 00:D78C: C8        INY
C - - - - - 0x00179D 00:D78D: B1 90     LDA (ram_0090),Y
C - - - - - 0x00179F 00:D78F: 91 94     STA (ram_0094),Y
C - - - - - 0x0017A1 00:D791: C8        INY
C - - - - - 0x0017A2 00:D792: A5 97     LDA ram_0097
C - - - - - 0x0017A4 00:D794: D0 11     BNE bra_D7A7
C - - - - - 0x0017A6 00:D796: B1 90     LDA (ram_0090),Y
C - - - - - 0x0017A8 00:D798: 49 40     EOR #$40
C - - - - - 0x0017AA 00:D79A: 91 94     STA (ram_0094),Y
C - - - - - 0x0017AC 00:D79C: C8        INY
C - - - - - 0x0017AD 00:D79D: B1 90     LDA (ram_0090),Y
C - - - - - 0x0017AF 00:D79F: 49 FF     EOR #$FF
C - - - - - 0x0017B1 00:D7A1: 38        SEC
C - - - - - 0x0017B2 00:D7A2: E9 07     SBC #$07
C - - - - - 0x0017B4 00:D7A4: 4C AE D7  JMP loc_D7AE
bra_D7A7:
C - - - - - 0x0017B7 00:D7A7: B1 90     LDA (ram_0090),Y
C - - - - - 0x0017B9 00:D7A9: 91 94     STA (ram_0094),Y
C - - - - - 0x0017BB 00:D7AB: C8        INY
C - - - - - 0x0017BC 00:D7AC: B1 90     LDA (ram_0090),Y
loc_D7AE:
C D 2 - - - 0x0017BE 00:D7AE: 18        CLC
C - - - - - 0x0017BF 00:D7AF: 65 93     ADC ram_0093
C - - - - - 0x0017C1 00:D7B1: 91 94     STA (ram_0094),Y
C - - - - - 0x0017C3 00:D7B3: CA        DEX
C - - - - - 0x0017C4 00:D7B4: C6 92     DEC ram_0092
C - - - - - 0x0017C6 00:D7B6: D0 CC     BNE bra_D784_loop
C - - - - - 0x0017C8 00:D7B8: 8A        TXA
C - - - - - 0x0017C9 00:D7B9: 0A        ASL
C - - - - - 0x0017CA 00:D7BA: 0A        ASL
C - - - - - 0x0017CB 00:D7BB: AA        TAX
bra_D7BC_loop:
C - - - - - 0x0017CC 00:D7BC: CA        DEX
C - - - - - 0x0017CD 00:D7BD: 30 07     BMI bra_D7C6_RTS
C - - - - - 0x0017CF 00:D7BF: A9 F0     LDA #$F0
C - - - - - 0x0017D1 00:D7C1: C8        INY
C - - - - - 0x0017D2 00:D7C2: 91 94     STA (ram_0094),Y
C - - - - - 0x0017D4 00:D7C4: D0 F6     BNE bra_D7BC_loop
bra_D7C6_RTS:
C - - - - - 0x0017D6 00:D7C6: 60        RTS



tbl_D7C7:
- D 2 - - - 0x0017D7 00:D7C7: DD D7     .word _off000_D7DD_00
- D 2 - - - 0x0017D9 00:D7C9: 06 D8     .word _off000_D806_01
- D 2 - - - 0x0017DB 00:D7CB: 2B D8     .word _off000_D82B_02
- D 2 - - - 0x0017DD 00:D7CD: 58 D8     .word _off000_D858_03
- D 2 - - - 0x0017DF 00:D7CF: 89 D8     .word _off000_D889_04
- D 2 - - - 0x0017E1 00:D7D1: AE D8     .word _off000_D8AE_05
- D 2 - - - 0x0017E3 00:D7D3: DB D8     .word _off000_D8DB_06
- D 2 - - - 0x0017E5 00:D7D5: 08 D9     .word _off000_D908_07
- D 2 - - - 0x0017E7 00:D7D7: 35 D9     .word _off000_D935_08
- D 2 - - - 0x0017E9 00:D7D9: 5E D9     .word _off000_D95E_09
- D 2 - - - 0x0017EB 00:D7DB: 7B D9     .word _off000_D97B_0A



_off000_D7DD_00:
- D 2 - I - 0x0017ED 00:D7DD: 0A        .byte $0A   ; 
- D 2 - I - 0x0017EE 00:D7DE: E0        .byte $E0   ; 
- D 2 - I - 0x0017EF 00:D7DF: 00        .byte $00   ; 
- D 2 - I - 0x0017F0 00:D7E0: 01        .byte $01   ; 
- D 2 - I - 0x0017F1 00:D7E1: FB        .byte $FB   ; 
- D 2 - I - 0x0017F2 00:D7E2: E0        .byte $E0   ; 
- D 2 - I - 0x0017F3 00:D7E3: 01        .byte $01   ; 
- D 2 - I - 0x0017F4 00:D7E4: 01        .byte $01   ; 
- D 2 - I - 0x0017F5 00:D7E5: 03        .byte $03   ; 
- D 2 - I - 0x0017F6 00:D7E6: E8        .byte $E8   ; 
- D 2 - I - 0x0017F7 00:D7E7: 02        .byte $02   ; 
- D 2 - I - 0x0017F8 00:D7E8: 01        .byte $01   ; 
- D 2 - I - 0x0017F9 00:D7E9: FA        .byte $FA   ; 
- D 2 - I - 0x0017FA 00:D7EA: E8        .byte $E8   ; 
- D 2 - I - 0x0017FB 00:D7EB: 03        .byte $03   ; 
- D 2 - I - 0x0017FC 00:D7EC: 01        .byte $01   ; 
- D 2 - I - 0x0017FD 00:D7ED: 02        .byte $02   ; 
- D 2 - I - 0x0017FE 00:D7EE: E8        .byte $E8   ; 
- D 2 - I - 0x0017FF 00:D7EF: 04        .byte $04   ; 
- D 2 - I - 0x001800 00:D7F0: 01        .byte $01   ; 
- D 2 - I - 0x001801 00:D7F1: 0A        .byte $0A   ; 
- D 2 - I - 0x001802 00:D7F2: F0        .byte $F0   ; 
- D 2 - I - 0x001803 00:D7F3: 08        .byte $08   ; 
- D 2 - I - 0x001804 00:D7F4: 03        .byte $03   ; 
- D 2 - I - 0x001805 00:D7F5: F6        .byte $F6   ; 
- D 2 - I - 0x001806 00:D7F6: F0        .byte $F0   ; 
- D 2 - I - 0x001807 00:D7F7: 09        .byte $09   ; 
- D 2 - I - 0x001808 00:D7F8: 03        .byte $03   ; 
- D 2 - I - 0x001809 00:D7F9: FC        .byte $FC   ; 
- D 2 - I - 0x00180A 00:D7FA: F0        .byte $F0   ; 
- D 2 - I - 0x00180B 00:D7FB: 46        .byte $46   ; 
- D 2 - I - 0x00180C 00:D7FC: 03        .byte $03   ; 
- D 2 - I - 0x00180D 00:D7FD: 02        .byte $02   ; 
- D 2 - I - 0x00180E 00:D7FE: F8        .byte $F8   ; 
- D 2 - I - 0x00180F 00:D7FF: 0A        .byte $0A   ; 
- D 2 - I - 0x001810 00:D800: 02        .byte $02   ; 
- D 2 - I - 0x001811 00:D801: F6        .byte $F6   ; 
- D 2 - I - 0x001812 00:D802: F8        .byte $F8   ; 
- D 2 - I - 0x001813 00:D803: 47        .byte $47   ; 
- D 2 - I - 0x001814 00:D804: 02        .byte $02   ; 
- D 2 - I - 0x001815 00:D805: 02        .byte $02   ; 



_off000_D806_01:
- D 2 - I - 0x001816 00:D806: 09        .byte $09   ; 
- D 2 - I - 0x001817 00:D807: E0        .byte $E0   ; 
- D 2 - I - 0x001818 00:D808: 00        .byte $00   ; 
- D 2 - I - 0x001819 00:D809: 01        .byte $01   ; 
- D 2 - I - 0x00181A 00:D80A: FB        .byte $FB   ; 
- D 2 - I - 0x00181B 00:D80B: E0        .byte $E0   ; 
- D 2 - I - 0x00181C 00:D80C: 01        .byte $01   ; 
- D 2 - I - 0x00181D 00:D80D: 01        .byte $01   ; 
- D 2 - I - 0x00181E 00:D80E: 03        .byte $03   ; 
- D 2 - I - 0x00181F 00:D80F: E8        .byte $E8   ; 
- D 2 - I - 0x001820 00:D810: 02        .byte $02   ; 
- D 2 - I - 0x001821 00:D811: 01        .byte $01   ; 
- D 2 - I - 0x001822 00:D812: FA        .byte $FA   ; 
- D 2 - I - 0x001823 00:D813: E8        .byte $E8   ; 
- D 2 - I - 0x001824 00:D814: 03        .byte $03   ; 
- D 2 - I - 0x001825 00:D815: 01        .byte $01   ; 
- D 2 - I - 0x001826 00:D816: 02        .byte $02   ; 
- D 2 - I - 0x001827 00:D817: E8        .byte $E8   ; 
- D 2 - I - 0x001828 00:D818: 04        .byte $04   ; 
- D 2 - I - 0x001829 00:D819: 01        .byte $01   ; 
- D 2 - I - 0x00182A 00:D81A: 0A        .byte $0A   ; 
- D 2 - I - 0x00182B 00:D81B: F0        .byte $F0   ; 
- D 2 - I - 0x00182C 00:D81C: 05        .byte $05   ; 
- D 2 - I - 0x00182D 00:D81D: 03        .byte $03   ; 
- D 2 - I - 0x00182E 00:D81E: F9        .byte $F9   ; 
- D 2 - I - 0x00182F 00:D81F: F0        .byte $F0   ; 
- D 2 - I - 0x001830 00:D820: 06        .byte $06   ; 
- D 2 - I - 0x001831 00:D821: 03        .byte $03   ; 
- D 2 - I - 0x001832 00:D822: 01        .byte $01   ; 
- D 2 - I - 0x001833 00:D823: F8        .byte $F8   ; 
- D 2 - I - 0x001834 00:D824: 07        .byte $07   ; 
- D 2 - I - 0x001835 00:D825: 02        .byte $02   ; 
- D 2 - I - 0x001836 00:D826: F9        .byte $F9   ; 
- D 2 - I - 0x001837 00:D827: F8        .byte $F8   ; 
- D 2 - I - 0x001838 00:D828: 45        .byte $45   ; 
- D 2 - I - 0x001839 00:D829: 02        .byte $02   ; 
- D 2 - I - 0x00183A 00:D82A: 00        .byte $00   ; 



_off000_D82B_02:
- D 2 - I - 0x00183B 00:D82B: 0B        .byte $0B   ; 
- D 2 - I - 0x00183C 00:D82C: E0        .byte $E0   ; 
- D 2 - I - 0x00183D 00:D82D: 00        .byte $00   ; 
- D 2 - I - 0x00183E 00:D82E: 01        .byte $01   ; 
- D 2 - I - 0x00183F 00:D82F: 08        .byte $08   ; 
- D 2 - I - 0x001840 00:D830: E0        .byte $E0   ; 
- D 2 - I - 0x001841 00:D831: 01        .byte $01   ; 
- D 2 - I - 0x001842 00:D832: 01        .byte $01   ; 
- D 2 - I - 0x001843 00:D833: 10        .byte $10   ; 
- D 2 - I - 0x001844 00:D834: E8        .byte $E8   ; 
- D 2 - I - 0x001845 00:D835: 0B        .byte $0B   ; 
- D 2 - I - 0x001846 00:D836: 01        .byte $01   ; 
- D 2 - I - 0x001847 00:D837: 07        .byte $07   ; 
- D 2 - I - 0x001848 00:D838: E8        .byte $E8   ; 
- D 2 - I - 0x001849 00:D839: 0C        .byte $0C   ; 
- D 2 - I - 0x00184A 00:D83A: 01        .byte $01   ; 
- D 2 - I - 0x00184B 00:D83B: 0F        .byte $0F   ; 
- D 2 - I - 0x00184C 00:D83C: E8        .byte $E8   ; 
- D 2 - I - 0x00184D 00:D83D: 0D        .byte $0D   ; 
- D 2 - I - 0x00184E 00:D83E: 01        .byte $01   ; 
- D 2 - I - 0x00184F 00:D83F: 17        .byte $17   ; 
- D 2 - I - 0x001850 00:D840: F0        .byte $F0   ; 
- D 2 - I - 0x001851 00:D841: 0E        .byte $0E   ; 
- D 2 - I - 0x001852 00:D842: 02        .byte $02   ; 
- D 2 - I - 0x001853 00:D843: 00        .byte $00   ; 
- D 2 - I - 0x001854 00:D844: F0        .byte $F0   ; 
- D 2 - I - 0x001855 00:D845: 0F        .byte $0F   ; 
- D 2 - I - 0x001856 00:D846: 03        .byte $03   ; 
- D 2 - I - 0x001857 00:D847: 08        .byte $08   ; 
- D 2 - I - 0x001858 00:D848: F0        .byte $F0   ; 
- D 2 - I - 0x001859 00:D849: 10        .byte $10   ; 
- D 2 - I - 0x00185A 00:D84A: 03        .byte $03   ; 
- D 2 - I - 0x00185B 00:D84B: 10        .byte $10   ; 
- D 2 - I - 0x00185C 00:D84C: F8        .byte $F8   ; 
- D 2 - I - 0x00185D 00:D84D: 11        .byte $11   ; 
- D 2 - I - 0x00185E 00:D84E: 02        .byte $02   ; 
- D 2 - I - 0x00185F 00:D84F: 00        .byte $00   ; 
- D 2 - I - 0x001860 00:D850: F8        .byte $F8   ; 
- D 2 - I - 0x001861 00:D851: 12        .byte $12   ; 
- D 2 - I - 0x001862 00:D852: 02        .byte $02   ; 
- D 2 - I - 0x001863 00:D853: 08        .byte $08   ; 
- D 2 - I - 0x001864 00:D854: F8        .byte $F8   ; 
- D 2 - I - 0x001865 00:D855: 13        .byte $13   ; 
- D 2 - I - 0x001866 00:D856: 02        .byte $02   ; 
- D 2 - I - 0x001867 00:D857: 10        .byte $10   ; 



_off000_D858_03:
- D 2 - I - 0x001868 00:D858: 0C        .byte $0C   ; 
- D 2 - I - 0x001869 00:D859: DF        .byte $DF   ; 
- D 2 - I - 0x00186A 00:D85A: 25        .byte $25   ; 
- D 2 - I - 0x00186B 00:D85B: 01        .byte $01   ; 
- D 2 - I - 0x00186C 00:D85C: 04        .byte $04   ; 
- D 2 - I - 0x00186D 00:D85D: E0        .byte $E0   ; 
- D 2 - I - 0x00186E 00:D85E: 26        .byte $26   ; 
- D 2 - I - 0x00186F 00:D85F: 01        .byte $01   ; 
- D 2 - I - 0x001870 00:D860: 0C        .byte $0C   ; 
- D 2 - I - 0x001871 00:D861: E0        .byte $E0   ; 
- D 2 - I - 0x001872 00:D862: 27        .byte $27   ; 
- D 2 - I - 0x001873 00:D863: 01        .byte $01   ; 
- D 2 - I - 0x001874 00:D864: 14        .byte $14   ; 
- D 2 - I - 0x001875 00:D865: E7        .byte $E7   ; 
- D 2 - I - 0x001876 00:D866: 28        .byte $28   ; 
- D 2 - I - 0x001877 00:D867: 01        .byte $01   ; 
- D 2 - I - 0x001878 00:D868: 04        .byte $04   ; 
- D 2 - I - 0x001879 00:D869: E8        .byte $E8   ; 
- D 2 - I - 0x00187A 00:D86A: 29        .byte $29   ; 
- D 2 - I - 0x00187B 00:D86B: 03        .byte $03   ; 
- D 2 - I - 0x00187C 00:D86C: 0C        .byte $0C   ; 
- D 2 - I - 0x00187D 00:D86D: EF        .byte $EF   ; 
- D 2 - I - 0x00187E 00:D86E: 2A        .byte $2A   ; 
- D 2 - I - 0x00187F 00:D86F: 03        .byte $03   ; 
- D 2 - I - 0x001880 00:D870: 04        .byte $04   ; 
- D 2 - I - 0x001881 00:D871: F0        .byte $F0   ; 
- D 2 - I - 0x001882 00:D872: 2B        .byte $2B   ; 
- D 2 - I - 0x001883 00:D873: 02        .byte $02   ; 
- D 2 - I - 0x001884 00:D874: 0C        .byte $0C   ; 
- D 2 - I - 0x001885 00:D875: EE        .byte $EE   ; 
- D 2 - I - 0x001886 00:D876: 2C        .byte $2C   ; 
- D 2 - I - 0x001887 00:D877: 02        .byte $02   ; 
- D 2 - I - 0x001888 00:D878: 14        .byte $14   ; 
- D 2 - I - 0x001889 00:D879: F7        .byte $F7   ; 
- D 2 - I - 0x00188A 00:D87A: 2D        .byte $2D   ; 
- D 2 - I - 0x00188B 00:D87B: 02        .byte $02   ; 
- D 2 - I - 0x00188C 00:D87C: 04        .byte $04   ; 
- D 2 - I - 0x00188D 00:D87D: F3        .byte $F3   ; 
- D 2 - I - 0x00188E 00:D87E: 2E        .byte $2E   ; 
- D 2 - I - 0x00188F 00:D87F: 02        .byte $02   ; 
- D 2 - I - 0x001890 00:D880: 15        .byte $15   ; 
- D 2 - I - 0x001891 00:D881: F4        .byte $F4   ; 
- D 2 - I - 0x001892 00:D882: 2F        .byte $2F   ; 
- D 2 - I - 0x001893 00:D883: 02        .byte $02   ; 
- D 2 - I - 0x001894 00:D884: 1A        .byte $1A   ; 
- D 2 - I - 0x001895 00:D885: FF        .byte $FF   ; 
- D 2 - I - 0x001896 00:D886: 40        .byte $40   ; 
- D 2 - I - 0x001897 00:D887: 02        .byte $02   ; 
- D 2 - I - 0x001898 00:D888: 03        .byte $03   ; 



_off000_D889_04:
- D 2 - I - 0x001899 00:D889: 09        .byte $09   ; 
- D 2 - I - 0x00189A 00:D88A: E8        .byte $E8   ; 
- D 2 - I - 0x00189B 00:D88B: 00        .byte $00   ; 
- D 2 - I - 0x00189C 00:D88C: 01        .byte $01   ; 
- D 2 - I - 0x00189D 00:D88D: FB        .byte $FB   ; 
- D 2 - I - 0x00189E 00:D88E: E8        .byte $E8   ; 
- D 2 - I - 0x00189F 00:D88F: 01        .byte $01   ; 
- D 2 - I - 0x0018A0 00:D890: 01        .byte $01   ; 
- D 2 - I - 0x0018A1 00:D891: 03        .byte $03   ; 
- D 2 - I - 0x0018A2 00:D892: EF        .byte $EF   ; 
- D 2 - I - 0x0018A3 00:D893: 1E        .byte $1E   ; 
- D 2 - I - 0x0018A4 00:D894: 03        .byte $03   ; 
- D 2 - I - 0x0018A5 00:D895: F3        .byte $F3   ; 
- D 2 - I - 0x0018A6 00:D896: F0        .byte $F0   ; 
- D 2 - I - 0x0018A7 00:D897: 1F        .byte $1F   ; 
- D 2 - I - 0x0018A8 00:D898: 03        .byte $03   ; 
- D 2 - I - 0x0018A9 00:D899: F6        .byte $F6   ; 
- D 2 - I - 0x0018AA 00:D89A: F0        .byte $F0   ; 
- D 2 - I - 0x0018AB 00:D89B: 20        .byte $20   ; 
- D 2 - I - 0x0018AC 00:D89C: 03        .byte $03   ; 
- D 2 - I - 0x0018AD 00:D89D: FE        .byte $FE   ; 
- D 2 - I - 0x0018AE 00:D89E: F0        .byte $F0   ; 
- D 2 - I - 0x0018AF 00:D89F: 21        .byte $21   ; 
- D 2 - I - 0x0018B0 00:D8A0: 03        .byte $03   ; 
- D 2 - I - 0x0018B1 00:D8A1: 06        .byte $06   ; 
- D 2 - I - 0x0018B2 00:D8A2: F8        .byte $F8   ; 
- D 2 - I - 0x0018B3 00:D8A3: 22        .byte $22   ; 
- D 2 - I - 0x0018B4 00:D8A4: 02        .byte $02   ; 
- D 2 - I - 0x0018B5 00:D8A5: F8        .byte $F8   ; 
- D 2 - I - 0x0018B6 00:D8A6: F8        .byte $F8   ; 
- D 2 - I - 0x0018B7 00:D8A7: 23        .byte $23   ; 
- D 2 - I - 0x0018B8 00:D8A8: 02        .byte $02   ; 
- D 2 - I - 0x0018B9 00:D8A9: 00        .byte $00   ; 
- D 2 - I - 0x0018BA 00:D8AA: F8        .byte $F8   ; 
- D 2 - I - 0x0018BB 00:D8AB: 24        .byte $24   ; 
- D 2 - I - 0x0018BC 00:D8AC: 02        .byte $02   ; 
- D 2 - I - 0x0018BD 00:D8AD: 08        .byte $08   ; 



_off000_D8AE_05:
- D 2 - I - 0x0018BE 00:D8AE: 0B        .byte $0B   ; 
- D 2 - I - 0x0018BF 00:D8AF: E6        .byte $E6   ; 
- D 2 - I - 0x0018C0 00:D8B0: 00        .byte $00   ; 
- D 2 - I - 0x0018C1 00:D8B1: 01        .byte $01   ; 
- D 2 - I - 0x0018C2 00:D8B2: FB        .byte $FB   ; 
- D 2 - I - 0x0018C3 00:D8B3: E6        .byte $E6   ; 
- D 2 - I - 0x0018C4 00:D8B4: 14        .byte $14   ; 
- D 2 - I - 0x0018C5 00:D8B5: 01        .byte $01   ; 
- D 2 - I - 0x0018C6 00:D8B6: 03        .byte $03   ; 
- D 2 - I - 0x0018C7 00:D8B7: ED        .byte $ED   ; 
- D 2 - I - 0x0018C8 00:D8B8: 15        .byte $15   ; 
- D 2 - I - 0x0018C9 00:D8B9: 01        .byte $01   ; 
- D 2 - I - 0x0018CA 00:D8BA: F4        .byte $F4   ; 
- D 2 - I - 0x0018CB 00:D8BB: EE        .byte $EE   ; 
- D 2 - I - 0x0018CC 00:D8BC: 16        .byte $16   ; 
- D 2 - I - 0x0018CD 00:D8BD: 03        .byte $03   ; 
- D 2 - I - 0x0018CE 00:D8BE: FB        .byte $FB   ; 
- D 2 - I - 0x0018CF 00:D8BF: EE        .byte $EE   ; 
- D 2 - I - 0x0018D0 00:D8C0: 17        .byte $17   ; 
- D 2 - I - 0x0018D1 00:D8C1: 03        .byte $03   ; 
- D 2 - I - 0x0018D2 00:D8C2: 03        .byte $03   ; 
- D 2 - I - 0x0018D3 00:D8C3: ED        .byte $ED   ; 
- D 2 - I - 0x0018D4 00:D8C4: 18        .byte $18   ; 
- D 2 - I - 0x0018D5 00:D8C5: 03        .byte $03   ; 
- D 2 - I - 0x0018D6 00:D8C6: 0B        .byte $0B   ; 
- D 2 - I - 0x0018D7 00:D8C7: F6        .byte $F6   ; 
- D 2 - I - 0x0018D8 00:D8C8: 19        .byte $19   ; 
- D 2 - I - 0x0018D9 00:D8C9: 02        .byte $02   ; 
- D 2 - I - 0x0018DA 00:D8CA: FC        .byte $FC   ; 
- D 2 - I - 0x0018DB 00:D8CB: F6        .byte $F6   ; 
- D 2 - I - 0x0018DC 00:D8CC: 1A        .byte $1A   ; 
- D 2 - I - 0x0018DD 00:D8CD: 02        .byte $02   ; 
- D 2 - I - 0x0018DE 00:D8CE: 04        .byte $04   ; 
- D 2 - I - 0x0018DF 00:D8CF: F5        .byte $F5   ; 
- D 2 - I - 0x0018E0 00:D8D0: 1B        .byte $1B   ; 
- D 2 - I - 0x0018E1 00:D8D1: 02        .byte $02   ; 
- D 2 - I - 0x0018E2 00:D8D2: 0B        .byte $0B   ; 
- D 2 - I - 0x0018E3 00:D8D3: F5        .byte $F5   ; 
- D 2 - I - 0x0018E4 00:D8D4: 1C        .byte $1C   ; 
- D 2 - I - 0x0018E5 00:D8D5: 02        .byte $02   ; 
- D 2 - I - 0x0018E6 00:D8D6: 13        .byte $13   ; 
- D 2 - I - 0x0018E7 00:D8D7: FE        .byte $FE   ; 
- D 2 - I - 0x0018E8 00:D8D8: 1D        .byte $1D   ; 
- D 2 - I - 0x0018E9 00:D8D9: 02        .byte $02   ; 
- D 2 - I - 0x0018EA 00:D8DA: FD        .byte $FD   ; 



_off000_D8DB_06:
- D 2 - I - 0x0018EB 00:D8DB: 0B        .byte $0B   ; 
- D 2 - I - 0x0018EC 00:D8DC: E5        .byte $E5   ; 
- D 2 - I - 0x0018ED 00:D8DD: 25        .byte $25   ; 
- D 2 - I - 0x0018EE 00:D8DE: 01        .byte $01   ; 
- D 2 - I - 0x0018EF 00:D8DF: FB        .byte $FB   ; 
- D 2 - I - 0x0018F0 00:D8E0: E6        .byte $E6   ; 
- D 2 - I - 0x0018F1 00:D8E1: 26        .byte $26   ; 
- D 2 - I - 0x0018F2 00:D8E2: 01        .byte $01   ; 
- D 2 - I - 0x0018F3 00:D8E3: 03        .byte $03   ; 
- D 2 - I - 0x0018F4 00:D8E4: E6        .byte $E6   ; 
- D 2 - I - 0x0018F5 00:D8E5: 27        .byte $27   ; 
- D 2 - I - 0x0018F6 00:D8E6: 01        .byte $01   ; 
- D 2 - I - 0x0018F7 00:D8E7: 0B        .byte $0B   ; 
- D 2 - I - 0x0018F8 00:D8E8: ED        .byte $ED   ; 
- D 2 - I - 0x0018F9 00:D8E9: 30        .byte $30   ; 
- D 2 - I - 0x0018FA 00:D8EA: 01        .byte $01   ; 
- D 2 - I - 0x0018FB 00:D8EB: FB        .byte $FB   ; 
- D 2 - I - 0x0018FC 00:D8EC: EE        .byte $EE   ; 
- D 2 - I - 0x0018FD 00:D8ED: 31        .byte $31   ; 
- D 2 - I - 0x0018FE 00:D8EE: 03        .byte $03   ; 
- D 2 - I - 0x0018FF 00:D8EF: 03        .byte $03   ; 
- D 2 - I - 0x001900 00:D8F0: F5        .byte $F5   ; 
- D 2 - I - 0x001901 00:D8F1: 32        .byte $32   ; 
- D 2 - I - 0x001902 00:D8F2: 02        .byte $02   ; 
- D 2 - I - 0x001903 00:D8F3: FA        .byte $FA   ; 
- D 2 - I - 0x001904 00:D8F4: F5        .byte $F5   ; 
- D 2 - I - 0x001905 00:D8F5: 33        .byte $33   ; 
- D 2 - I - 0x001906 00:D8F6: 02        .byte $02   ; 
- D 2 - I - 0x001907 00:D8F7: 02        .byte $02   ; 
- D 2 - I - 0x001908 00:D8F8: F3        .byte $F3   ; 
- D 2 - I - 0x001909 00:D8F9: 34        .byte $34   ; 
- D 2 - I - 0x00190A 00:D8FA: 02        .byte $02   ; 
- D 2 - I - 0x00190B 00:D8FB: 0A        .byte $0A   ; 
- D 2 - I - 0x00190C 00:D8FC: F5        .byte $F5   ; 
- D 2 - I - 0x00190D 00:D8FD: 35        .byte $35   ; 
- D 2 - I - 0x00190E 00:D8FE: 02        .byte $02   ; 
- D 2 - I - 0x00190F 00:D8FF: 12        .byte $12   ; 
- D 2 - I - 0x001910 00:D900: FB        .byte $FB   ; 
- D 2 - I - 0x001911 00:D901: 36        .byte $36   ; 
- D 2 - I - 0x001912 00:D902: 02        .byte $02   ; 
- D 2 - I - 0x001913 00:D903: 19        .byte $19   ; 
- D 2 - I - 0x001914 00:D904: FD        .byte $FD   ; 
- D 2 - I - 0x001915 00:D905: 37        .byte $37   ; 
- D 2 - I - 0x001916 00:D906: 02        .byte $02   ; 
- D 2 - I - 0x001917 00:D907: FD        .byte $FD   ; 



_off000_D908_07:
- D 2 - I - 0x001918 00:D908: 0B        .byte $0B   ; 
- D 2 - I - 0x001919 00:D909: DF        .byte $DF   ; 
- D 2 - I - 0x00191A 00:D90A: 25        .byte $25   ; 
- D 2 - I - 0x00191B 00:D90B: 01        .byte $01   ; 
- D 2 - I - 0x00191C 00:D90C: 03        .byte $03   ; 
- D 2 - I - 0x00191D 00:D90D: E0        .byte $E0   ; 
- D 2 - I - 0x00191E 00:D90E: 38        .byte $38   ; 
- D 2 - I - 0x00191F 00:D90F: 01        .byte $01   ; 
- D 2 - I - 0x001920 00:D910: 0B        .byte $0B   ; 
- D 2 - I - 0x001921 00:D911: DE        .byte $DE   ; 
- D 2 - I - 0x001922 00:D912: 39        .byte $39   ; 
- D 2 - I - 0x001923 00:D913: 02        .byte $02   ; 
- D 2 - I - 0x001924 00:D914: 1A        .byte $1A   ; 
- D 2 - I - 0x001925 00:D915: E7        .byte $E7   ; 
- D 2 - I - 0x001926 00:D916: 30        .byte $30   ; 
- D 2 - I - 0x001927 00:D917: 01        .byte $01   ; 
- D 2 - I - 0x001928 00:D918: 03        .byte $03   ; 
- D 2 - I - 0x001929 00:D919: E8        .byte $E8   ; 
- D 2 - I - 0x00192A 00:D91A: 3A        .byte $3A   ; 
- D 2 - I - 0x00192B 00:D91B: 03        .byte $03   ; 
- D 2 - I - 0x00192C 00:D91C: 0B        .byte $0B   ; 
- D 2 - I - 0x00192D 00:D91D: E9        .byte $E9   ; 
- D 2 - I - 0x00192E 00:D91E: 3B        .byte $3B   ; 
- D 2 - I - 0x00192F 00:D91F: 02        .byte $02   ; 
- D 2 - I - 0x001930 00:D920: 12        .byte $12   ; 
- D 2 - I - 0x001931 00:D921: E4        .byte $E4   ; 
- D 2 - I - 0x001932 00:D922: 3C        .byte $3C   ; 
- D 2 - I - 0x001933 00:D923: 02        .byte $02   ; 
- D 2 - I - 0x001934 00:D924: 16        .byte $16   ; 
- D 2 - I - 0x001935 00:D925: EF        .byte $EF   ; 
- D 2 - I - 0x001936 00:D926: 3D        .byte $3D   ; 
- D 2 - I - 0x001937 00:D927: 03        .byte $03   ; 
- D 2 - I - 0x001938 00:D928: 03        .byte $03   ; 
- D 2 - I - 0x001939 00:D929: F0        .byte $F0   ; 
- D 2 - I - 0x00193A 00:D92A: 3E        .byte $3E   ; 
- D 2 - I - 0x00193B 00:D92B: 02        .byte $02   ; 
- D 2 - I - 0x00193C 00:D92C: 0B        .byte $0B   ; 
- D 2 - I - 0x00193D 00:D92D: F7        .byte $F7   ; 
- D 2 - I - 0x00193E 00:D92E: 3F        .byte $3F   ; 
- D 2 - I - 0x00193F 00:D92F: 02        .byte $02   ; 
- D 2 - I - 0x001940 00:D930: 03        .byte $03   ; 
- D 2 - I - 0x001941 00:D931: FF        .byte $FF   ; 
- D 2 - I - 0x001942 00:D932: 40        .byte $40   ; 
- D 2 - I - 0x001943 00:D933: 02        .byte $02   ; 
- D 2 - I - 0x001944 00:D934: 02        .byte $02   ; 



_off000_D935_08:
- D 2 - I - 0x001945 00:D935: 0A        .byte $0A   ; 
- D 2 - I - 0x001946 00:D936: E5        .byte $E5   ; 
- D 2 - I - 0x001947 00:D937: 00        .byte $00   ; 
- D 2 - I - 0x001948 00:D938: 01        .byte $01   ; 
- D 2 - I - 0x001949 00:D939: 08        .byte $08   ; 
- D 2 - I - 0x00194A 00:D93A: E5        .byte $E5   ; 
- D 2 - I - 0x00194B 00:D93B: 01        .byte $01   ; 
- D 2 - I - 0x00194C 00:D93C: 01        .byte $01   ; 
- D 2 - I - 0x00194D 00:D93D: 10        .byte $10   ; 
- D 2 - I - 0x00194E 00:D93E: ED        .byte $ED   ; 
- D 2 - I - 0x00194F 00:D93F: 0B        .byte $0B   ; 
- D 2 - I - 0x001950 00:D940: 01        .byte $01   ; 
- D 2 - I - 0x001951 00:D941: 07        .byte $07   ; 
- D 2 - I - 0x001952 00:D942: ED        .byte $ED   ; 
- D 2 - I - 0x001953 00:D943: 0C        .byte $0C   ; 
- D 2 - I - 0x001954 00:D944: 01        .byte $01   ; 
- D 2 - I - 0x001955 00:D945: 0F        .byte $0F   ; 
- D 2 - I - 0x001956 00:D946: ED        .byte $ED   ; 
- D 2 - I - 0x001957 00:D947: 0D        .byte $0D   ; 
- D 2 - I - 0x001958 00:D948: 01        .byte $01   ; 
- D 2 - I - 0x001959 00:D949: 17        .byte $17   ; 
- D 2 - I - 0x00195A 00:D94A: FA        .byte $FA   ; 
- D 2 - I - 0x00195B 00:D94B: 41        .byte $41   ; 
- D 2 - I - 0x00195C 00:D94C: 02        .byte $02   ; 
- D 2 - I - 0x00195D 00:D94D: FD        .byte $FD   ; 
- D 2 - I - 0x00195E 00:D94E: F7        .byte $F7   ; 
- D 2 - I - 0x00195F 00:D94F: 42        .byte $42   ; 
- D 2 - I - 0x001960 00:D950: 02        .byte $02   ; 
- D 2 - I - 0x001961 00:D951: 04        .byte $04   ; 
- D 2 - I - 0x001962 00:D952: F5        .byte $F5   ; 
- D 2 - I - 0x001963 00:D953: 43        .byte $43   ; 
- D 2 - I - 0x001964 00:D954: 03        .byte $03   ; 
- D 2 - I - 0x001965 00:D955: 0A        .byte $0A   ; 
- D 2 - I - 0x001966 00:D956: F7        .byte $F7   ; 
- D 2 - I - 0x001967 00:D957: 44        .byte $44   ; 
- D 2 - I - 0x001968 00:D958: 02        .byte $02   ; 
- D 2 - I - 0x001969 00:D959: 10        .byte $10   ; 
- D 2 - I - 0x00196A 00:D95A: FF        .byte $FF   ; 
- D 2 - I - 0x00196B 00:D95B: 40        .byte $40   ; 
- D 2 - I - 0x00196C 00:D95C: 02        .byte $02   ; 
- D 2 - I - 0x00196D 00:D95D: 11        .byte $11   ; 



_off000_D95E_09:
- D 2 - I - 0x00196E 00:D95E: 07        .byte $07   ; 
- D 2 - I - 0x00196F 00:D95F: F0        .byte $F0   ; 
- D 2 - I - 0x001970 00:D960: E8        .byte $E8   ; 
- D 2 - I - 0x001971 00:D961: 02        .byte $02   ; 
- D 2 - I - 0x001972 00:D962: F4        .byte $F4   ; 
- D 2 - I - 0x001973 00:D963: F0        .byte $F0   ; 
- D 2 - I - 0x001974 00:D964: E8        .byte $E8   ; 
- D 2 - I - 0x001975 00:D965: 42        .byte $42   ; 
- D 2 - I - 0x001976 00:D966: 02        .byte $02   ; 
- D 2 - I - 0x001977 00:D967: F8        .byte $F8   ; 
- D 2 - I - 0x001978 00:D968: F5        .byte $F5   ; 
- D 2 - I - 0x001979 00:D969: 03        .byte $03   ; 
- D 2 - I - 0x00197A 00:D96A: F4        .byte $F4   ; 
- D 2 - I - 0x00197B 00:D96B: F8        .byte $F8   ; 
- D 2 - I - 0x00197C 00:D96C: F4        .byte $F4   ; 
- D 2 - I - 0x00197D 00:D96D: 02        .byte $02   ; 
- D 2 - I - 0x00197E 00:D96E: FB        .byte $FB   ; 
- D 2 - I - 0x00197F 00:D96F: F8        .byte $F8   ; 
- D 2 - I - 0x001980 00:D970: F5        .byte $F5   ; 
- D 2 - I - 0x001981 00:D971: 43        .byte $43   ; 
- D 2 - I - 0x001982 00:D972: 02        .byte $02   ; 
- D 2 - I - 0x001983 00:D973: FD        .byte $FD   ; 
- D 2 - I - 0x001984 00:D974: E4        .byte $E4   ; 
- D 2 - I - 0x001985 00:D975: 03        .byte $03   ; 
- D 2 - I - 0x001986 00:D976: EC        .byte $EC   ; 
- D 2 - I - 0x001987 00:D977: FD        .byte $FD   ; 
- D 2 - I - 0x001988 00:D978: E4        .byte $E4   ; 
- D 2 - I - 0x001989 00:D979: 43        .byte $43   ; 
- D 2 - I - 0x00198A 00:D97A: 0A        .byte $0A   ; 



_off000_D97B_0A:
- D 2 - I - 0x00198B 00:D97B: 07        .byte $07   ; 
- D 2 - I - 0x00198C 00:D97C: F0        .byte $F0   ; 
- D 2 - I - 0x00198D 00:D97D: E9        .byte $E9   ; 
- D 2 - I - 0x00198E 00:D97E: 02        .byte $02   ; 
- D 2 - I - 0x00198F 00:D97F: F5        .byte $F5   ; 
- D 2 - I - 0x001990 00:D980: F0        .byte $F0   ; 
- D 2 - I - 0x001991 00:D981: E9        .byte $E9   ; 
- D 2 - I - 0x001992 00:D982: 42        .byte $42   ; 
- D 2 - I - 0x001993 00:D983: 01        .byte $01   ; 
- D 2 - I - 0x001994 00:D984: F8        .byte $F8   ; 
- D 2 - I - 0x001995 00:D985: F5        .byte $F5   ; 
- D 2 - I - 0x001996 00:D986: 03        .byte $03   ; 
- D 2 - I - 0x001997 00:D987: F4        .byte $F4   ; 
- D 2 - I - 0x001998 00:D988: F8        .byte $F8   ; 
- D 2 - I - 0x001999 00:D989: F4        .byte $F4   ; 
- D 2 - I - 0x00199A 00:D98A: 02        .byte $02   ; 
- D 2 - I - 0x00199B 00:D98B: FB        .byte $FB   ; 
- D 2 - I - 0x00199C 00:D98C: F8        .byte $F8   ; 
- D 2 - I - 0x00199D 00:D98D: F5        .byte $F5   ; 
- D 2 - I - 0x00199E 00:D98E: 43        .byte $43   ; 
- D 2 - I - 0x00199F 00:D98F: 02        .byte $02   ; 
- D 2 - I - 0x0019A0 00:D990: FD        .byte $FD   ; 
- D 2 - I - 0x0019A1 00:D991: E4        .byte $E4   ; 
- D 2 - I - 0x0019A2 00:D992: 03        .byte $03   ; 
- D 2 - I - 0x0019A3 00:D993: EC        .byte $EC   ; 
- D 2 - I - 0x0019A4 00:D994: FD        .byte $FD   ; 
- D 2 - I - 0x0019A5 00:D995: E4        .byte $E4   ; 
- D 2 - I - 0x0019A6 00:D996: 43        .byte $43   ; 
- D 2 - I - 0x0019A7 00:D997: 0A        .byte $0A   ; 



sub_D998:
C - - - - - 0x0019A8 00:D998: A5 DD     LDA ram_hit_timer
C - - - - - 0x0019AA 00:D99A: C9 40     CMP #$40
C - - - - - 0x0019AC 00:D99C: B0 01     BCS bra_D99F
C - - - - - 0x0019AE 00:D99E: 60        RTS
bra_D99F:
C - - - - - 0x0019AF 00:D99F: A5 64     LDA ram_0064
C - - - - - 0x0019B1 00:D9A1: F0 01     BEQ bra_D9A4
C - - - - - 0x0019B3 00:D9A3: 60        RTS
bra_D9A4:
C - - - - - 0x0019B4 00:D9A4: A5 68     LDA ram_enemy_type
C - - - - - 0x0019B6 00:D9A6: C9 01     CMP #$01
C - - - - - 0x0019B8 00:D9A8: F0 05     BEQ bra_D9AF
C - - - - - 0x0019BA 00:D9AA: C9 03     CMP #$03
C - - - - - 0x0019BC 00:D9AC: F0 01     BEQ bra_D9AF
C - - - - - 0x0019BE 00:D9AE: 60        RTS
bra_D9AF:
C - - - - - 0x0019BF 00:D9AF: A2 01     LDX #$01
C - - - - - 0x0019C1 00:D9B1: A5 F8     LDA ram_00F8
C - - - - - 0x0019C3 00:D9B3: C9 00     CMP #$00
C - - - - - 0x0019C5 00:D9B5: 90 02     BCC bra_D9B9
C - - - - - 0x0019C7 00:D9B7: A2 02     LDX #$02
bra_D9B9:
C - - - - - 0x0019C9 00:D9B9: 86 96     STX ram_0096
C - - - - - 0x0019CB 00:D9BB: A5 D2     LDA ram_00D2
C - - - - - 0x0019CD 00:D9BD: 4A        LSR
C - - - - - 0x0019CE 00:D9BE: B0 0E     BCS bra_D9CE
loc_D9C0:
C D 2 - - - 0x0019D0 00:D9C0: A5 D2     LDA ram_00D2
C - - - - - 0x0019D2 00:D9C2: 4A        LSR
C - - - - - 0x0019D3 00:D9C3: 4A        LSR
C - - - - - 0x0019D4 00:D9C4: B0 3A     BCS bra_DA00
loc_D9C6:
C D 2 - - - 0x0019D6 00:D9C6: A5 D2     LDA ram_00D2
C - - - - - 0x0019D8 00:D9C8: 4A        LSR
C - - - - - 0x0019D9 00:D9C9: 4A        LSR
C - - - - - 0x0019DA 00:D9CA: 4A        LSR
C - - - - - 0x0019DB 00:D9CB: B0 66     BCS bra_DA33
C - - - - - 0x0019DD 00:D9CD: 60        RTS
bra_D9CE:
C - - - - - 0x0019DE 00:D9CE: AD 03 02  LDA ram_spr_X
C - - - - - 0x0019E1 00:D9D1: 4A        LSR
C - - - - - 0x0019E2 00:D9D2: 29 01     AND #$01
C - - - - - 0x0019E4 00:D9D4: 4D 01 02  EOR ram_spr_T
C - - - - - 0x0019E7 00:D9D7: 8D 01 02  STA ram_spr_T
C - - - - - 0x0019EA 00:D9DA: AD 03 02  LDA ram_spr_X
C - - - - - 0x0019ED 00:D9DD: 85 90     STA ram_0090
C - - - - - 0x0019EF 00:D9DF: A5 A4     LDA ram_00A4
C - - - - - 0x0019F1 00:D9E1: 4A        LSR
C - - - - - 0x0019F2 00:D9E2: 20 63 DA  JSR sub_DA63
C - - - - - 0x0019F5 00:D9E5: 8E 03 02  STX ram_spr_X
C - - - - - 0x0019F8 00:D9E8: A5 D2     LDA ram_00D2
C - - - - - 0x0019FA 00:D9EA: 0A        ASL
C - - - - - 0x0019FB 00:D9EB: B0 03     BCS bra_D9F0
C - - - - - 0x0019FD 00:D9ED: 4C C0 D9  JMP loc_D9C0
bra_D9F0:
C - - - - - 0x001A00 00:D9F0: 8E 00 02  STX ram_spr_Y
C - - - - - 0x001A03 00:D9F3: A9 06     LDA #$06
C - - - - - 0x001A05 00:D9F5: 25 D2     AND ram_00D2
C - - - - - 0x001A07 00:D9F7: 85 D2     STA ram_00D2
C - - - - - 0x001A09 00:D9F9: 25 A4     AND ram_00A4
C - - - - - 0x001A0B 00:D9FB: 85 A4     STA ram_00A4
C - - - - - 0x001A0D 00:D9FD: 4C C0 D9  JMP loc_D9C0
bra_DA00:
C - - - - - 0x001A10 00:DA00: AD 07 02  LDA ram_spr_X + $04
C - - - - - 0x001A13 00:DA03: 4A        LSR
C - - - - - 0x001A14 00:DA04: 29 01     AND #$01
C - - - - - 0x001A16 00:DA06: 4D 05 02  EOR ram_spr_T + $04
C - - - - - 0x001A19 00:DA09: 8D 05 02  STA ram_spr_T + $04
C - - - - - 0x001A1C 00:DA0C: AD 07 02  LDA ram_spr_X + $04
C - - - - - 0x001A1F 00:DA0F: 85 90     STA ram_0090
C - - - - - 0x001A21 00:DA11: A5 A4     LDA ram_00A4
C - - - - - 0x001A23 00:DA13: 4A        LSR
C - - - - - 0x001A24 00:DA14: 4A        LSR
C - - - - - 0x001A25 00:DA15: 20 63 DA  JSR sub_DA63
C - - - - - 0x001A28 00:DA18: 8E 07 02  STX ram_spr_X + $04
C - - - - - 0x001A2B 00:DA1B: A5 D2     LDA ram_00D2
C - - - - - 0x001A2D 00:DA1D: 0A        ASL
C - - - - - 0x001A2E 00:DA1E: B0 03     BCS bra_DA23
C - - - - - 0x001A30 00:DA20: 4C C6 D9  JMP loc_D9C6
bra_DA23:
C - - - - - 0x001A33 00:DA23: 8E 04 02  STX ram_spr_Y + $04
C - - - - - 0x001A36 00:DA26: A9 05     LDA #$05
C - - - - - 0x001A38 00:DA28: 25 D2     AND ram_00D2
C - - - - - 0x001A3A 00:DA2A: 85 D2     STA ram_00D2
C - - - - - 0x001A3C 00:DA2C: 25 A4     AND ram_00A4
C - - - - - 0x001A3E 00:DA2E: 85 A4     STA ram_00A4
C - - - - - 0x001A40 00:DA30: 4C C6 D9  JMP loc_D9C6
bra_DA33:
C - - - - - 0x001A43 00:DA33: AD 0B 02  LDA ram_spr_X + $08
C - - - - - 0x001A46 00:DA36: 4A        LSR
C - - - - - 0x001A47 00:DA37: 29 01     AND #$01
C - - - - - 0x001A49 00:DA39: 4D 09 02  EOR ram_spr_T + $08
C - - - - - 0x001A4C 00:DA3C: 8D 09 02  STA ram_spr_T + $08
C - - - - - 0x001A4F 00:DA3F: AD 0B 02  LDA ram_spr_X + $08
C - - - - - 0x001A52 00:DA42: 85 90     STA ram_0090
C - - - - - 0x001A54 00:DA44: A5 A4     LDA ram_00A4
C - - - - - 0x001A56 00:DA46: 4A        LSR
C - - - - - 0x001A57 00:DA47: 4A        LSR
C - - - - - 0x001A58 00:DA48: 4A        LSR
C - - - - - 0x001A59 00:DA49: 20 63 DA  JSR sub_DA63
C - - - - - 0x001A5C 00:DA4C: 8E 0B 02  STX ram_spr_X + $08
C - - - - - 0x001A5F 00:DA4F: A5 D2     LDA ram_00D2
C - - - - - 0x001A61 00:DA51: 0A        ASL
C - - - - - 0x001A62 00:DA52: B0 01     BCS bra_DA55
C - - - - - 0x001A64 00:DA54: 60        RTS
bra_DA55:
C - - - - - 0x001A65 00:DA55: 8E 0A 02  STX ram_spr_A + $08
C - - - - - 0x001A68 00:DA58: A9 03     LDA #$03
C - - - - - 0x001A6A 00:DA5A: 25 D2     AND ram_00D2
C - - - - - 0x001A6C 00:DA5C: 85 D2     STA ram_00D2
C - - - - - 0x001A6E 00:DA5E: 25 A4     AND ram_00A4
C - - - - - 0x001A70 00:DA60: 85 A4     STA ram_00A4
C - - - - - 0x001A72 00:DA62: 60        RTS



sub_DA63:
C - - - - - 0x001A73 00:DA63: 90 12     BCC bra_DA77
C - - - - - 0x001A75 00:DA65: A5 90     LDA ram_0090
C - - - - - 0x001A77 00:DA67: 18        CLC
C - - - - - 0x001A78 00:DA68: 65 96     ADC ram_0096
C - - - - - 0x001A7A 00:DA6A: 85 90     STA ram_0090
C - - - - - 0x001A7C 00:DA6C: C9 04     CMP #$04
C - - - - - 0x001A7E 00:DA6E: B0 16     BCS bra_DA86
C - - - - - 0x001A80 00:DA70: C9 00     CMP #$00
C - - - - - 0x001A82 00:DA72: B0 15     BCS bra_DA89
- - - - - - 0x001A84 00:DA74: 4C 86 DA  JMP loc_DA86
bra_DA77:
C - - - - - 0x001A87 00:DA77: A5 90     LDA ram_0090
C - - - - - 0x001A89 00:DA79: 38        SEC
C - - - - - 0x001A8A 00:DA7A: E5 96     SBC ram_0096
C - - - - - 0x001A8C 00:DA7C: 85 90     STA ram_0090
C - - - - - 0x001A8E 00:DA7E: C9 FA     CMP #$FA
C - - - - - 0x001A90 00:DA80: 90 04     BCC bra_DA86
C - - - - - 0x001A92 00:DA82: C9 FE     CMP #$FE
C - - - - - 0x001A94 00:DA84: 90 03     BCC bra_DA89
bra_DA86:
loc_DA86:
C - - - - - 0x001A96 00:DA86: A6 90     LDX ram_0090
C - - - - - 0x001A98 00:DA88: 60        RTS
bra_DA89:
C - - - - - 0x001A99 00:DA89: A9 80     LDA #$80
C - - - - - 0x001A9B 00:DA8B: 05 D2     ORA ram_00D2
C - - - - - 0x001A9D 00:DA8D: 85 D2     STA ram_00D2
C - - - - - 0x001A9F 00:DA8F: A2 F8     LDX #$F8
C - - - - - 0x001AA1 00:DA91: 60        RTS


; bzk garbage
- - - - - - 0x001AA2 00:DA92: 60        RTS



sub_DA93:
C - - - - - 0x001AA3 00:DA93: A5 66     LDA ram_0066
C - - - - - 0x001AA5 00:DA95: 05 64     ORA ram_0064
C - - - - - 0x001AA7 00:DA97: F0 0B     BEQ bra_DAA4
C - - - - - 0x001AA9 00:DA99: A9 00     LDA #$00
C - - - - - 0x001AAB 00:DA9B: A2 20     LDX #$20
bra_DA9D:
C - - - - - 0x001AAD 00:DA9D: 9D 30 03  STA ram_0330,X
C - - - - - 0x001AB0 00:DAA0: CA        DEX
C - - - - - 0x001AB1 00:DAA1: 10 FA     BPL bra_DA9D
C - - - - - 0x001AB3 00:DAA3: 60        RTS
bra_DAA4:
C - - - - - 0x001AB4 00:DAA4: A9 0A     LDA #$0A
C - - - - - 0x001AB6 00:DAA6: 38        SEC
C - - - - - 0x001AB7 00:DAA7: E5 DC     SBC ram_hp_enemy
C - - - - - 0x001AB9 00:DAA9: AA        TAX
C - - - - - 0x001ABA 00:DAAA: E0 06     CPX #$06
C - - - - - 0x001ABC 00:DAAC: 90 04     BCC bra_DAB2
C - - - - - 0x001ABE 00:DAAE: A9 ED     LDA #$ED
C - - - - - 0x001AC0 00:DAB0: D0 02     BNE bra_DAB4
bra_DAB2:
C - - - - - 0x001AC2 00:DAB2: A9 EE     LDA #$EE
bra_DAB4:
C - - - - - 0x001AC4 00:DAB4: A0 00     LDY #$00
bra_DAB6:
C - - - - - 0x001AC6 00:DAB6: E0 00     CPX #$00
C - - - - - 0x001AC8 00:DAB8: F0 07     BEQ bra_DAC1
C - - - - - 0x001ACA 00:DABA: 9D 30 03  STA ram_0330,X
C - - - - - 0x001ACD 00:DABD: C8        INY
C - - - - - 0x001ACE 00:DABE: CA        DEX
C - - - - - 0x001ACF 00:DABF: D0 F5     BNE bra_DAB6
bra_DAC1:
C - - - - - 0x001AD1 00:DAC1: A9 EF     LDA #$EF
bra_DAC3:
C - - - - - 0x001AD3 00:DAC3: C0 0A     CPY #$0A
C - - - - - 0x001AD5 00:DAC5: F0 06     BEQ bra_DACD
C - - - - - 0x001AD7 00:DAC7: 99 30 03  STA ram_0330,Y
C - - - - - 0x001ADA 00:DACA: C8        INY
C - - - - - 0x001ADB 00:DACB: D0 F6     BNE bra_DAC3
bra_DACD:
C - - - - - 0x001ADD 00:DACD: A9 EF     LDA #$EF
C - - - - - 0x001ADF 00:DACF: A0 00     LDY #$00
C - - - - - 0x001AE1 00:DAD1: A6 DB     LDX ram_hp_player
C - - - - - 0x001AE3 00:DAD3: F0 07     BEQ bra_DADC
bra_DAD5:
C - - - - - 0x001AE5 00:DAD5: 99 40 03  STA ram_0340,Y
C - - - - - 0x001AE8 00:DAD8: C8        INY
C - - - - - 0x001AE9 00:DAD9: CA        DEX
C - - - - - 0x001AEA 00:DADA: D0 F9     BNE bra_DAD5
bra_DADC:
C - - - - - 0x001AEC 00:DADC: C0 05     CPY #$05
C - - - - - 0x001AEE 00:DADE: B0 04     BCS bra_DAE4
C - - - - - 0x001AF0 00:DAE0: A9 ED     LDA #$ED
C - - - - - 0x001AF2 00:DAE2: D0 02     BNE bra_DAE6
bra_DAE4:
C - - - - - 0x001AF4 00:DAE4: A9 EE     LDA #$EE
bra_DAE6:
C - - - - - 0x001AF6 00:DAE6: C0 09     CPY #$09
C - - - - - 0x001AF8 00:DAE8: F0 06     BEQ bra_DAF0_RTS
C - - - - - 0x001AFA 00:DAEA: 99 40 03  STA ram_0340,Y
C - - - - - 0x001AFD 00:DAED: C8        INY
C - - - - - 0x001AFE 00:DAEE: D0 F6     BNE bra_DAE6
bra_DAF0_RTS:
C - - - - - 0x001B00 00:DAF0: 60        RTS



tbl_DAF1:
- - - - - - 0x001B01 00:DAF1: 00        .byte $00   ; 
- - - - - - 0x001B02 00:DAF2: 00        .byte $00   ; 
- D 2 - - - 0x001B03 00:DAF3: 01        .byte $01   ; 
- D 2 - - - 0x001B04 00:DAF4: 02        .byte $02   ; 
- - - - - - 0x001B05 00:DAF5: 00        .byte $00   ; 
- D 2 - - - 0x001B06 00:DAF6: 03        .byte $03   ; 
- D 2 - - - 0x001B07 00:DAF7: 03        .byte $03   ; 
- D 2 - - - 0x001B08 00:DAF8: 02        .byte $02   ; 
- D 2 - - - 0x001B09 00:DAF9: 01        .byte $01   ; 
- - - - - - 0x001B0A 00:DAFA: 00        .byte $00   ; 
- - - - - - 0x001B0B 00:DAFB: 00        .byte $00   ; 
- - - - - - 0x001B0C 00:DAFC: 00        .byte $00   ; 
- - - - - - 0x001B0D 00:DAFD: 00        .byte $00   ; 
- - - - - - 0x001B0E 00:DAFE: 00        .byte $00   ; 
- - - - - - 0x001B0F 00:DAFF: 00        .byte $00   ; 
- - - - - - 0x001B10 00:DB00: 00        .byte $00   ; 



tbl_DB01:
- D 2 - - - 0x001B11 00:DB01: 40        .byte $40   ; 
- D 2 - - - 0x001B12 00:DB02: B0        .byte $B0   ; 
- D 2 - - - 0x001B13 00:DB03: C0        .byte $C0   ; 
- D 2 - - - 0x001B14 00:DB04: E0        .byte $E0   ; 
- D 2 - - - 0x001B15 00:DB05: 38        .byte $38   ; 
- D 2 - - - 0x001B16 00:DB06: A0        .byte $A0   ; 
- D 2 - - - 0x001B17 00:DB07: B0        .byte $B0   ; 
- D 2 - - - 0x001B18 00:DB08: D8        .byte $D8   ; 
- D 2 - - - 0x001B19 00:DB09: 30        .byte $30   ; 
- D 2 - - - 0x001B1A 00:DB0A: 98        .byte $98   ; 
- D 2 - - - 0x001B1B 00:DB0B: A8        .byte $A8   ; 
- D 2 - - - 0x001B1C 00:DB0C: D0        .byte $D0   ; 
- D 2 - - - 0x001B1D 00:DB0D: 28        .byte $28   ; 
- D 2 - - - 0x001B1E 00:DB0E: 90        .byte $90   ; 
- D 2 - - - 0x001B1F 00:DB0F: A0        .byte $A0   ; 
- D 2 - - - 0x001B20 00:DB10: C8        .byte $C8   ; 
- D 2 - - - 0x001B21 00:DB11: 20        .byte $20   ; 
- D 2 - - - 0x001B22 00:DB12: 88        .byte $88   ; 
- D 2 - - - 0x001B23 00:DB13: 98        .byte $98   ; 
- D 2 - - - 0x001B24 00:DB14: C0        .byte $C0   ; 
- D 2 - - - 0x001B25 00:DB15: 18        .byte $18   ; 
- D 2 - - - 0x001B26 00:DB16: 70        .byte $70   ; 
- D 2 - - - 0x001B27 00:DB17: 80        .byte $80   ; 
- D 2 - - - 0x001B28 00:DB18: B8        .byte $B8   ; 
- D 2 - - - 0x001B29 00:DB19: 10        .byte $10   ; 
- D 2 - - - 0x001B2A 00:DB1A: 68        .byte $68   ; 
- D 2 - - - 0x001B2B 00:DB1B: 78        .byte $78   ; 
- D 2 - - - 0x001B2C 00:DB1C: B0        .byte $B0   ; 
- D 2 - - - 0x001B2D 00:DB1D: 10        .byte $10   ; 
- D 2 - - - 0x001B2E 00:DB1E: 50        .byte $50   ; 
- D 2 - - - 0x001B2F 00:DB1F: 60        .byte $60   ; 
- D 2 - - - 0x001B30 00:DB20: A8        .byte $A8   ; 
- D 2 - - - 0x001B31 00:DB21: 08        .byte $08   ; 
- D 2 - - - 0x001B32 00:DB22: 40        .byte $40   ; 
- D 2 - - - 0x001B33 00:DB23: 50        .byte $50   ; 
- D 2 - - - 0x001B34 00:DB24: A0        .byte $A0   ; 
- D 2 - - - 0x001B35 00:DB25: 08        .byte $08   ; 
- D 2 - - - 0x001B36 00:DB26: 30        .byte $30   ; 
- D 2 - - - 0x001B37 00:DB27: 40        .byte $40   ; 
- D 2 - - - 0x001B38 00:DB28: 98        .byte $98   ; 



sub_DB29:
C - - - - - 0x001B39 00:DB29: A5 E0     LDA ram_00E0
C - - - - - 0x001B3B 00:DB2B: C9 44     CMP #$44
C - - - - - 0x001B3D 00:DB2D: B0 02     BCS bra_DB31
C - - - - - 0x001B3F 00:DB2F: E6 E0     INC ram_00E0
bra_DB31:
C - - - - - 0x001B41 00:DB31: A5 DD     LDA ram_hit_timer
C - - - - - 0x001B43 00:DB33: C9 40     CMP #$40
C - - - - - 0x001B45 00:DB35: B0 67     BCS bra_DB9E
C - - - - - 0x001B47 00:DB37: E6 DD     INC ram_hit_timer
C - - - - - 0x001B49 00:DB39: C9 26     CMP #$26
C - - - - - 0x001B4B 00:DB3B: D0 52     BNE bra_DB8F
C - - - - - 0x001B4D 00:DB3D: A9 00     LDA #$00
C - - - - - 0x001B4F 00:DB3F: 85 D8     STA ram_00D8
C - - - - - 0x001B51 00:DB41: 85 D9     STA ram_00D9
C - - - - - 0x001B53 00:DB43: A9 F8     LDA #$F8
C - - - - - 0x001B55 00:DB45: 8D 18 02  STA ram_spr_Y + $18
C - - - - - 0x001B58 00:DB48: A5 DA     LDA ram_00DA
C - - - - - 0x001B5A 00:DB4A: F0 52     BEQ bra_DB9E
C - - - - - 0x001B5C 00:DB4C: A9 93     LDA #$93
C - - - - - 0x001B5E 00:DB4E: 8D 1C 02  STA ram_spr_Y + $1C
C - - - - - 0x001B61 00:DB51: 8D 20 02  STA ram_spr_Y + $20
C - - - - - 0x001B64 00:DB54: A5 75     LDA ram_0075
C - - - - - 0x001B66 00:DB56: 8D 23 02  STA ram_spr_X + $20
C - - - - - 0x001B69 00:DB59: 38        SEC
C - - - - - 0x001B6A 00:DB5A: E9 08     SBC #$08
C - - - - - 0x001B6C 00:DB5C: 8D 1F 02  STA ram_spr_X + $1C
C - - - - - 0x001B6F 00:DB5F: A9 01     LDA #$01
C - - - - - 0x001B71 00:DB61: 8D 1E 02  STA ram_spr_A + $1C
C - - - - - 0x001B74 00:DB64: 8D 22 02  STA ram_spr_A + $20
C - - - - - 0x001B77 00:DB67: A5 DA     LDA ram_00DA
C - - - - - 0x001B79 00:DB69: 18        CLC
C - - - - - 0x001B7A 00:DB6A: 69 D1     ADC #$D1
C - - - - - 0x001B7C 00:DB6C: 8D 1D 02  STA ram_spr_T + $1C
C - - - - - 0x001B7F 00:DB6F: A9 D5     LDA #$D5
C - - - - - 0x001B81 00:DB71: 8D 21 02  STA ram_spr_T + $20
C - - - - - 0x001B84 00:DB74: A6 DA     LDX ram_00DA
C - - - - - 0x001B86 00:DB76: F0 16     BEQ bra_DB8E_RTS
C - - - - - 0x001B88 00:DB78: BD 9A DB  LDA tbl_DB9B - 1,X
C - - - - - 0x001B8B 00:DB7B: 85 8A     STA ram_008A
C - - - - - 0x001B8D 00:DB7D: 20 35 C7  JSR sub_C735
C - - - - - 0x001B90 00:DB80: A2 00     LDX #$00
C - - - - - 0x001B92 00:DB82: A5 ED     LDA ram_00ED
C - - - - - 0x001B94 00:DB84: F0 02     BEQ bra_DB88
- - - - - - 0x001B96 00:DB86: 86 CE     STX ram_enemy_animation
bra_DB88:
C - - - - - 0x001B98 00:DB88: 86 DA     STX ram_00DA
C - - - - - 0x001B9A 00:DB8A: 86 EE     STX ram_00EE
C - - - - - 0x001B9C 00:DB8C: 86 ED     STX ram_00ED
bra_DB8E_RTS:
C - - - - - 0x001B9E 00:DB8E: 60        RTS
bra_DB8F:
C - - - - - 0x001B9F 00:DB8F: A5 64     LDA ram_0064
C - - - - - 0x001BA1 00:DB91: F0 FB     BEQ bra_DB8E_RTS
C - - - - - 0x001BA3 00:DB93: AD 01 07  LDA ram_0701
C - - - - - 0x001BA6 00:DB96: F0 F6     BEQ bra_DB8E_RTS
C - - - - - 0x001BA8 00:DB98: 4C B6 DF  JMP loc_DFB6



tbl_DB9B:
- D 2 - - - 0x001BAB 00:DB9B: 01        .byte $01   ; 00
- D 2 - - - 0x001BAC 00:DB9C: 02        .byte $02   ; 01
- D 2 - - - 0x001BAD 00:DB9D: 03        .byte $03   ; 02



bra_DB9E:
C - - - - - 0x001BAE 00:DB9E: A5 E0     LDA ram_00E0
C - - - - - 0x001BB0 00:DBA0: C9 43     CMP #$43
C - - - - - 0x001BB2 00:DBA2: D0 08     BNE bra_DBAC
C - - - - - 0x001BB4 00:DBA4: A9 F0     LDA #$F0
C - - - - - 0x001BB6 00:DBA6: 8D 1C 02  STA ram_spr_Y + $1C
C - - - - - 0x001BB9 00:DBA9: 8D 20 02  STA ram_spr_Y + $20
bra_DBAC:
C - - - - - 0x001BBC 00:DBAC: A5 73     LDA ram_0073
C - - - - - 0x001BBE 00:DBAE: F0 03     BEQ bra_DBB3
C - - - - - 0x001BC0 00:DBB0: C6 73     DEC ram_0073
C - - - - - 0x001BC2 00:DBB2: 60        RTS
bra_DBB3:
C - - - - - 0x001BC3 00:DBB3: 8D 01 07  STA ram_0701
C - - - - - 0x001BC6 00:DBB6: A5 64     LDA ram_0064
C - - - - - 0x001BC8 00:DBB8: F0 03     BEQ bra_DBBD
C - - - - - 0x001BCA 00:DBBA: 4C CE DE  JMP loc_DECE
bra_DBBD:
C - - - - - 0x001BCD 00:DBBD: A5 BD     LDA ram_jump_timer
C - - - - - 0x001BCF 00:DBBF: D0 06     BNE bra_DBC7
C - - - - - 0x001BD1 00:DBC1: A5 B5     LDA ram_00B5
C - - - - - 0x001BD3 00:DBC3: C9 11     CMP #$11
C - - - - - 0x001BD5 00:DBC5: B0 06     BCS bra_DBCD
bra_DBC7:
C - - - - - 0x001BD7 00:DBC7: A5 B5     LDA ram_00B5
C - - - - - 0x001BD9 00:DBC9: C9 0B     CMP #$0B
C - - - - - 0x001BDB 00:DBCB: B0 03     BCS bra_DBD0
bra_DBCD:
C - - - - - 0x001BDD 00:DBCD: 4C B2 DC  JMP loc_DCB2
bra_DBD0:
C - - - - - 0x001BE0 00:DBD0: A5 BD     LDA ram_jump_timer
C - - - - - 0x001BE2 00:DBD2: D0 77     BNE bra_DC4B
loc_DBD4:
C D 2 - - - 0x001BE4 00:DBD4: 20 DB E0  JSR sub_E0DB
C - - - - - 0x001BE7 00:DBD7: BD 2C E4  LDA tbl_E42C,X
C - - - - - 0x001BEA 00:DBDA: C9 80     CMP #$80
C - - - - - 0x001BEC 00:DBDC: F0 5D     BEQ bra_DC3B
C - - - - - 0x001BEE 00:DBDE: 85 93     STA ram_0093
C - - - - - 0x001BF0 00:DBE0: 85 94     STA ram_0094
C - - - - - 0x001BF2 00:DBE2: BD 2D E4  LDA tbl_E42C + 1,X
C - - - - - 0x001BF5 00:DBE5: 85 91     STA ram_0091
C - - - - - 0x001BF7 00:DBE7: 85 96     STA ram_0096
C - - - - - 0x001BF9 00:DBE9: 20 41 E1  JSR sub_E141
C - - - - - 0x001BFC 00:DBEC: 85 93     STA ram_0093
C - - - - - 0x001BFE 00:DBEE: BD 2E E4  LDA tbl_E42C + 2,X
C - - - - - 0x001C01 00:DBF1: 85 95     STA ram_0095
C - - - - - 0x001C03 00:DBF3: A5 68     LDA ram_enemy_type
C - - - - - 0x001C05 00:DBF5: C9 04     CMP #$04
C - - - - - 0x001C07 00:DBF7: D0 18     BNE bra_DC11
C - - - - - 0x001C09 00:DBF9: A5 ED     LDA ram_00ED
C - - - - - 0x001C0B 00:DBFB: 29 C0     AND #$C0
C - - - - - 0x001C0D 00:DBFD: F0 12     BEQ bra_DC11
C - - - - - 0x001C0F 00:DBFF: A2 02     LDX #$02
C - - - - - 0x001C11 00:DC01: A5 ED     LDA ram_00ED
C - - - - - 0x001C13 00:DC03: 0A        ASL
C - - - - - 0x001C14 00:DC04: B0 06     BCS bra_DC0C
C - - - - - 0x001C16 00:DC06: CA        DEX
C - - - - - 0x001C17 00:DC07: 0A        ASL
C - - - - - 0x001C18 00:DC08: B0 02     BCS bra_DC0C
- - - - - - 0x001C1A 00:DC0A: 90 2F     BCC bra_DC3B
bra_DC0C:
C - - - - - 0x001C1C 00:DC0C: 8A        TXA
C - - - - - 0x001C1D 00:DC0D: C5 95     CMP ram_0095
C - - - - - 0x001C1F 00:DC0F: D0 2A     BNE bra_DC3B
bra_DC11:
C - - - - - 0x001C21 00:DC11: 20 10 E1  JSR sub_E110
C - - - - - 0x001C24 00:DC14: 85 92     STA ram_0092
C - - - - - 0x001C26 00:DC16: C9 80     CMP #$80
C - - - - - 0x001C28 00:DC18: F0 21     BEQ bra_DC3B
C - - - - - 0x001C2A 00:DC1A: 85 92     STA ram_0092
C - - - - - 0x001C2C 00:DC1C: 85 94     STA ram_0094
C - - - - - 0x001C2E 00:DC1E: A5 68     LDA ram_enemy_type
C - - - - - 0x001C30 00:DC20: C9 03     CMP #$03
C - - - - - 0x001C32 00:DC22: B0 06     BCS bra_DC2A
C - - - - - 0x001C34 00:DC24: BD F4 E1  LDA tbl_E1F4,X
C - - - - - 0x001C37 00:DC27: 4C 2D DC  JMP loc_DC2D
bra_DC2A:
C - - - - - 0x001C3A 00:DC2A: BD CC E2  LDA tbl_E2CC,X
loc_DC2D:
C D 2 - - - 0x001C3D 00:DC2D: 85 90     STA ram_0090
C - - - - - 0x001C3F 00:DC2F: 85 96     STA ram_0096
C - - - - - 0x001C41 00:DC31: 20 52 E1  JSR sub_E152
C - - - - - 0x001C44 00:DC34: 85 92     STA ram_0092
C - - - - - 0x001C46 00:DC36: 20 5A E1  JSR sub_E15A
C - - - - - 0x001C49 00:DC39: D0 0C     BNE bra_DC47
bra_DC3B:
C - - - - - 0x001C4B 00:DC3B: A5 95     LDA ram_0095
C - - - - - 0x001C4D 00:DC3D: C9 03     CMP #$03
C - - - - - 0x001C4F 00:DC3F: D0 71     BNE bra_DCB2
C - - - - - 0x001C51 00:DC41: A9 04     LDA #$04
C - - - - - 0x001C53 00:DC43: 85 95     STA ram_0095
C - - - - - 0x001C55 00:DC45: D0 CA     BNE bra_DC11
bra_DC47:
C - - - - - 0x001C57 00:DC47: 85 D9     STA ram_00D9
C - - - - - 0x001C59 00:DC49: D0 13     BNE bra_DC5E
bra_DC4B:
C - - - - - 0x001C5B 00:DC4B: A5 B6     LDA ram_player_animation
C - - - - - 0x001C5D 00:DC4D: C9 05     CMP #$05
C - - - - - 0x001C5F 00:DC4F: D0 61     BNE bra_DCB2
C - - - - - 0x001C61 00:DC51: A5 BA     LDA ram_pos_Y_player
C - - - - - 0x001C63 00:DC53: C9 AB     CMP #$AB
C - - - - - 0x001C65 00:DC55: B0 5B     BCS bra_DCB2
C - - - - - 0x001C67 00:DC57: C9 A3     CMP #$A3
C - - - - - 0x001C69 00:DC59: 90 57     BCC bra_DCB2
C - - - - - 0x001C6B 00:DC5B: 4C D4 DB  JMP loc_DBD4
bra_DC5E:
C - - - - - 0x001C6E 00:DC5E: 20 CC DD  JSR sub_DDCC
C - - - - - 0x001C71 00:DC61: A5 A4     LDA ram_00A4
C - - - - - 0x001C73 00:DC63: C9 81     CMP #$81
C - - - - - 0x001C75 00:DC65: B0 35     BCS bra_DC9C
C - - - - - 0x001C77 00:DC67: A9 00     LDA #$00
C - - - - - 0x001C79 00:DC69: 85 C3     STA ram_00C3
C - - - - - 0x001C7B 00:DC6B: A5 F8     LDA ram_00F8
C - - - - - 0x001C7D 00:DC6D: C9 09     CMP #$09
C - - - - - 0x001C7F 00:DC6F: 90 02     BCC bra_DC73
C - - - - - 0x001C81 00:DC71: A9 09     LDA #$09
bra_DC73:
C - - - - - 0x001C83 00:DC73: 0A        ASL
C - - - - - 0x001C84 00:DC74: 0A        ASL
C - - - - - 0x001C85 00:DC75: AA        TAX
C - - - - - 0x001C86 00:DC76: A5 09     LDA ram_0009
C - - - - - 0x001C88 00:DC78: A0 00     LDY #$00
bra_DC7A:
C - - - - - 0x001C8A 00:DC7A: DD 01 DB  CMP tbl_DB01,X
C - - - - - 0x001C8D 00:DC7D: 90 06     BCC bra_DC85
C - - - - - 0x001C8F 00:DC7F: C8        INY
C - - - - - 0x001C90 00:DC80: E8        INX
C - - - - - 0x001C91 00:DC81: C0 04     CPY #$04
C - - - - - 0x001C93 00:DC83: D0 F5     BNE bra_DC7A
bra_DC85:
C - - - - - 0x001C95 00:DC85: A5 68     LDA ram_enemy_type
C - - - - - 0x001C97 00:DC87: F0 0E     BEQ bra_DC97
C - - - - - 0x001C99 00:DC89: A5 0F     LDA ram_000F
C - - - - - 0x001C9B 00:DC8B: C9 80     CMP #$80
C - - - - - 0x001C9D 00:DC8D: 90 08     BCC bra_DC97
C - - - - - 0x001C9F 00:DC8F: 84 7B     STY ram_007B
C - - - - - 0x001CA1 00:DC91: F0 0D     BEQ bra_DCA0
C - - - - - 0x001CA3 00:DC93: C0 03     CPY #$03
C - - - - - 0x001CA5 00:DC95: B0 09     BCS bra_DCA0
bra_DC97:
C - - - - - 0x001CA7 00:DC97: A9 05     LDA #$05
C - - - - - 0x001CA9 00:DC99: 20 B6 E8  JSR sub_E8B6
bra_DC9C:
C - - - - - 0x001CAC 00:DC9C: A9 00     LDA #$00
C - - - - - 0x001CAE 00:DC9E: 85 7B     STA ram_007B
bra_DCA0:
C - - - - - 0x001CB0 00:DCA0: 20 16 DE  JSR sub_DE16
C - - - - - 0x001CB3 00:DCA3: A5 93     LDA ram_0093
C - - - - - 0x001CB5 00:DCA5: 85 75     STA ram_0075
C - - - - - 0x001CB7 00:DCA7: A5 B6     LDA ram_player_animation
C - - - - - 0x001CB9 00:DCA9: 29 0F     AND #$0F
C - - - - - 0x001CBB 00:DCAB: AA        TAX
C - - - - - 0x001CBC 00:DCAC: BD F1 DA  LDA tbl_DAF1,X
C - - - - - 0x001CBF 00:DCAF: 85 DA     STA ram_00DA
C - - - - - 0x001CC1 00:DCB1: 60        RTS
bra_DCB2:
loc_DCB2:
C D 2 - - - 0x001CC2 00:DCB2: A5 DD     LDA ram_hit_timer
C - - - - - 0x001CC4 00:DCB4: C9 3E     CMP #$3E
C - - - - - 0x001CC6 00:DCB6: 90 0E     BCC bra_DCC6
C - - - - - 0x001CC8 00:DCB8: A5 ED     LDA ram_00ED
C - - - - - 0x001CCA 00:DCBA: D0 0D     BNE bra_DCC9
C - - - - - 0x001CCC 00:DCBC: A5 C2     LDA ram_00C2
C - - - - - 0x001CCE 00:DCBE: C9 0E     CMP #$0E
C - - - - - 0x001CD0 00:DCC0: B0 04     BCS bra_DCC6
C - - - - - 0x001CD2 00:DCC2: C9 03     CMP #$03
C - - - - - 0x001CD4 00:DCC4: B0 03     BCS bra_DCC9
bra_DCC6:
C - - - - - 0x001CD6 00:DCC6: 4C CE DE  JMP loc_DECE
bra_DCC9:
C - - - - - 0x001CD9 00:DCC9: 20 FA E0  JSR sub_E0FA
C - - - - - 0x001CDC 00:DCCC: BD 5D E3  LDA tbl_E35D,X
C - - - - - 0x001CDF 00:DCCF: C9 80     CMP #$80
C - - - - - 0x001CE1 00:DCD1: F0 56     BEQ bra_DD29
C - - - - - 0x001CE3 00:DCD3: 85 93     STA ram_0093
C - - - - - 0x001CE5 00:DCD5: 85 94     STA ram_0094
C - - - - - 0x001CE7 00:DCD7: BD 5E E3  LDA tbl_E35D + 1,X
C - - - - - 0x001CEA 00:DCDA: 85 91     STA ram_0091
C - - - - - 0x001CEC 00:DCDC: 85 96     STA ram_0096
C - - - - - 0x001CEE 00:DCDE: 20 52 E1  JSR sub_E152
C - - - - - 0x001CF1 00:DCE1: 85 93     STA ram_0093
C - - - - - 0x001CF3 00:DCE3: BD 5F E3  LDA tbl_E35D + 2,X
C - - - - - 0x001CF6 00:DCE6: 85 95     STA ram_0095
C - - - - - 0x001CF8 00:DCE8: C9 04     CMP #$04
C - - - - - 0x001CFA 00:DCEA: D0 0F     BNE bra_DCFB
C - - - - - 0x001CFC 00:DCEC: A2 02     LDX #$02
C - - - - - 0x001CFE 00:DCEE: A5 ED     LDA ram_00ED
C - - - - - 0x001D00 00:DCF0: 0A        ASL
C - - - - - 0x001D01 00:DCF1: B0 06     BCS bra_DCF9
C - - - - - 0x001D03 00:DCF3: CA        DEX
C - - - - - 0x001D04 00:DCF4: 0A        ASL
C - - - - - 0x001D05 00:DCF5: B0 02     BCS bra_DCF9
- - - - - - 0x001D07 00:DCF7: F0 30     BEQ bra_DD29
bra_DCF9:
C - - - - - 0x001D09 00:DCF9: 86 95     STX ram_0095
bra_DCFB:
C - - - - - 0x001D0B 00:DCFB: A5 BD     LDA ram_jump_timer
C - - - - - 0x001D0D 00:DCFD: F0 05     BEQ bra_DD04
C - - - - - 0x001D0F 00:DCFF: 20 4A DD  JSR sub_DD4A
C - - - - - 0x001D12 00:DD02: F0 25     BEQ bra_DD29
bra_DD04:
C - - - - - 0x001D14 00:DD04: 20 E7 E0  JSR sub_E0E7
C - - - - - 0x001D17 00:DD07: 18        CLC
C - - - - - 0x001D18 00:DD08: 65 95     ADC ram_0095
C - - - - - 0x001D1A 00:DD0A: 65 95     ADC ram_0095
C - - - - - 0x001D1C 00:DD0C: AA        TAX
C - - - - - 0x001D1D 00:DD0D: BD E2 E3  LDA tbl_E3E4 - 2,X
C - - - - - 0x001D20 00:DD10: C9 80     CMP #$80
C - - - - - 0x001D22 00:DD12: F0 15     BEQ bra_DD29
C - - - - - 0x001D24 00:DD14: 85 92     STA ram_0092
C - - - - - 0x001D26 00:DD16: 85 94     STA ram_0094
C - - - - - 0x001D28 00:DD18: BD E3 E3  LDA tbl_E3E4 - 1,X
C - - - - - 0x001D2B 00:DD1B: 85 90     STA ram_0090
C - - - - - 0x001D2D 00:DD1D: 85 96     STA ram_0096
C - - - - - 0x001D2F 00:DD1F: 20 41 E1  JSR sub_E141
C - - - - - 0x001D32 00:DD22: 85 92     STA ram_0092
C - - - - - 0x001D34 00:DD24: 20 5A E1  JSR sub_E15A
C - - - - - 0x001D37 00:DD27: D0 0A     BNE bra_DD33
bra_DD29:
C - - - - - 0x001D39 00:DD29: A5 95     LDA ram_0095
C - - - - - 0x001D3B 00:DD2B: C9 03     CMP #$03
C - - - - - 0x001D3D 00:DD2D: D0 18     BNE bra_DD47
C - - - - - 0x001D3F 00:DD2F: E6 95     INC ram_0095
C - - - - - 0x001D41 00:DD31: D0 C8     BNE bra_DCFB
bra_DD33:
C - - - - - 0x001D43 00:DD33: 85 D8     STA ram_00D8
C - - - - - 0x001D45 00:DD35: A5 95     LDA ram_0095
C - - - - - 0x001D47 00:DD37: C9 04     CMP #$04
C - - - - - 0x001D49 00:DD39: D0 02     BNE bra_DD3D
C - - - - - 0x001D4B 00:DD3B: C6 95     DEC ram_0095
bra_DD3D:
C - - - - - 0x001D4D 00:DD3D: A5 BD     LDA ram_jump_timer
C - - - - - 0x001D4F 00:DD3F: F0 02     BEQ bra_DD43
C - - - - - 0x001D51 00:DD41: C6 95     DEC ram_0095
bra_DD43:
C - - - - - 0x001D53 00:DD43: A5 D8     LDA ram_00D8
C - - - - - 0x001D55 00:DD45: D0 3F     BNE bra_DD86
bra_DD47:
C - - - - - 0x001D57 00:DD47: 4C CE DE  JMP loc_DECE



sub_DD4A:
C - - - - - 0x001D5A 00:DD4A: A2 00     LDX #$00
C - - - - - 0x001D5C 00:DD4C: A0 01     LDY #$01
C - - - - - 0x001D5E 00:DD4E: A5 BA     LDA ram_pos_Y_player
C - - - - - 0x001D60 00:DD50: C9 A5     CMP #$A5
C - - - - - 0x001D62 00:DD52: 90 16     BCC bra_DD6A
C - - - - - 0x001D64 00:DD54: C9 AA     CMP #$AA
C - - - - - 0x001D66 00:DD56: 90 0A     BCC bra_DD62
C - - - - - 0x001D68 00:DD58: C8        INY
C - - - - - 0x001D69 00:DD59: C9 B8     CMP #$B8
C - - - - - 0x001D6B 00:DD5B: 90 05     BCC bra_DD62
C - - - - - 0x001D6D 00:DD5D: C8        INY
C - - - - - 0x001D6E 00:DD5E: C9 BF     CMP #$BF
C - - - - - 0x001D70 00:DD60: B0 08     BCS bra_DD6A
bra_DD62:
C - - - - - 0x001D72 00:DD62: 98        TYA
C - - - - - 0x001D73 00:DD63: C5 95     CMP ram_0095
C - - - - - 0x001D75 00:DD65: D0 03     BNE bra_DD6A
C - - - - - 0x001D77 00:DD67: E6 95     INC ram_0095
C - - - - - 0x001D79 00:DD69: E8        INX
bra_DD6A:
C - - - - - 0x001D7A 00:DD6A: 8A        TXA
C - - - - - 0x001D7B 00:DD6B: 60        RTS


; bzk garbage
- - - - - - 0x001D7C 00:DD6C: 38        SEC
- - - - - - 0x001D7D 00:DD6D: E5 B2     SBC ram_00B2
- - - - - - 0x001D7F 00:DD6F: 30 12     BMI bra_DD83
- - - - - - 0x001D81 00:DD71: C9 07     CMP #$07
- - - - - - 0x001D83 00:DD73: B0 0E     BCS bra_DD83
- - - - - - 0x001D85 00:DD75: 90 09     BCC bra_DD80
- - - - - - 0x001D87 00:DD77: 38        SEC
- - - - - - 0x001D88 00:DD78: E5 B2     SBC ram_00B2
- - - - - - 0x001D8A 00:DD7A: 90 07     BCC bra_DD83
- - - - - - 0x001D8C 00:DD7C: C9 09     CMP #$09
- - - - - - 0x001D8E 00:DD7E: B0 03     BCS bra_DD83
bra_DD80:
- - - - - - 0x001D90 00:DD80: A9 01     LDA #$01
- - - - - - 0x001D92 00:DD82: 2C        .byte $2C   ; BIT
bra_DD83:
- - - - - - 0x001D93 00:DD83: A9 00     LDA #$00
- - - - - - 0x001D95 00:DD85: 60        RTS



bra_DD86:
C - - - - - 0x001D96 00:DD86: 20 51 DE  JSR sub_DE51
loc_DD89:
C D 2 - - - 0x001D99 00:DD89: A9 00     LDA #$00
C - - - - - 0x001D9B 00:DD8B: 85 E6     STA ram_00E6
C - - - - - 0x001D9D 00:DD8D: 85 E0     STA ram_00E0
C - - - - - 0x001D9F 00:DD8F: A5 66     LDA ram_0066
C - - - - - 0x001DA1 00:DD91: D0 02     BNE bra_DD95
C - - - - - 0x001DA3 00:DD93: E6 DB     INC ram_hp_player
bra_DD95:
C - - - - - 0x001DA5 00:DD95: A5 DB     LDA ram_hp_player
C - - - - - 0x001DA7 00:DD97: C9 05     CMP #$05
C - - - - - 0x001DA9 00:DD99: D0 05     BNE bra_DDA0
C - - - - - 0x001DAB 00:DD9B: A9 86     LDA #$86
C - - - - - 0x001DAD 00:DD9D: 20 45 CE  JSR sub_CE45
bra_DDA0:
C - - - - - 0x001DB0 00:DDA0: A5 DB     LDA ram_hp_player
C - - - - - 0x001DB2 00:DDA2: C9 09     CMP #$09
C - - - - - 0x001DB4 00:DDA4: B0 05     BCS bra_DDAB
C - - - - - 0x001DB6 00:DDA6: A9 00     LDA #$00
C - - - - - 0x001DB8 00:DDA8: 85 DD     STA ram_hit_timer
C - - - - - 0x001DBA 00:DDAA: 60        RTS
bra_DDAB:
C - - - - - 0x001DBB 00:DDAB: A2 00     LDX #$00    ; con_state_idle
C - - - - - 0x001DBD 00:DDAD: 86 C2     STX ram_00C2
C - - - - - 0x001DBF 00:DDAF: 86 6B     STX ram_006B
C - - - - - 0x001DC1 00:DDB1: 86 B5     STX ram_00B5
C - - - - - 0x001DC3 00:DDB3: 86 BD     STX ram_jump_timer
C - - - - - 0x001DC5 00:DDB5: 86 9A     STX ram_player_state
C - - - - - 0x001DC7 00:DDB7: A9 BF     LDA #$BF
C - - - - - 0x001DC9 00:DDB9: 85 BA     STA ram_pos_Y_player
C - - - - - 0x001DCB 00:DDBB: CA        DEX
C - - - - - 0x001DCC 00:DDBC: 86 73     STX ram_0073
C - - - - - 0x001DCE 00:DDBE: 86 B8     STX ram_00B8
C - - - - - 0x001DD0 00:DDC0: A9 20     LDA #$20
C - - - - - 0x001DD2 00:DDC2: 85 7D     STA ram_007D
C - - - - - 0x001DD4 00:DDC4: 20 A5 D6  JSR sub_D6A5
bra_DDC7_RTS:
C - - - - - 0x001DD7 00:DDC7: 60        RTS



tbl_DDC8:
- D 2 - - - 0x001DD8 00:DDC8: 9E        .byte $9E   ; 01
- D 2 - - - 0x001DD9 00:DDC9: AC        .byte $AC   ; 02
- D 2 - - - 0x001DDA 00:DDCA: B7        .byte $B7   ; 03
- D 2 - - - 0x001DDB 00:DDCB: B7        .byte $B7   ; 04



sub_DDCC:
C - - - - - 0x001DDC 00:DDCC: 18        CLC
C - - - - - 0x001DDD 00:DDCD: A5 B1     LDA ram_00B1
C - - - - - 0x001DDF 00:DDCF: A2 01     LDX #$01
C - - - - - 0x001DE1 00:DDD1: 20 65 C7  JSR sub_C765
C - - - - - 0x001DE4 00:DDD4: 85 B1     STA ram_00B1
C - - - - - 0x001DE6 00:DDD6: A5 CE     LDA ram_enemy_animation
C - - - - - 0x001DE8 00:DDD8: C9 07     CMP #$07
C - - - - - 0x001DEA 00:DDDA: F0 2F     BEQ bra_DE0B
C - - - - - 0x001DEC 00:DDDC: A9 82     LDA #$82
C - - - - - 0x001DEE 00:DDDE: 20 45 CE  JSR sub_CE45
C - - - - - 0x001DF1 00:DDE1: A9 C3     LDA #$C3
C - - - - - 0x001DF3 00:DDE3: 20 45 CE  JSR sub_CE45
C - - - - - 0x001DF6 00:DDE6: A6 95     LDX ram_0095
C - - - - - 0x001DF8 00:DDE8: F0 DD     BEQ bra_DDC7_RTS
C - - - - - 0x001DFA 00:DDEA: BD C7 DD  LDA tbl_DDC8 - 1,X
C - - - - - 0x001DFD 00:DDED: 8D 18 02  STA ram_spr_Y + $18
C - - - - - 0x001E00 00:DDF0: A9 F1     LDA #$F1
C - - - - - 0x001E02 00:DDF2: 8D 19 02  STA ram_spr_T + $18
C - - - - - 0x001E05 00:DDF5: A9 01     LDA #$01
C - - - - - 0x001E07 00:DDF7: 8D 1A 02  STA ram_spr_A + $18
C - - - - - 0x001E0A 00:DDFA: A5 93     LDA ram_0093
C - - - - - 0x001E0C 00:DDFC: AA        TAX
C - - - - - 0x001E0D 00:DDFD: 38        SEC
C - - - - - 0x001E0E 00:DDFE: E9 04     SBC #$04
C - - - - - 0x001E10 00:DE00: 8D 1B 02  STA ram_spr_X + $18
C - - - - - 0x001E13 00:DE03: A5 CF     LDA ram_00CF
C - - - - - 0x001E15 00:DE05: D0 04     BNE bra_DE0B
C - - - - - 0x001E17 00:DE07: 86 75     STX ram_0075
C - - - - - 0x001E19 00:DE09: F0 04     BEQ bra_DE0F
bra_DE0B:
C - - - - - 0x001E1B 00:DE0B: A5 64     LDA ram_0064
C - - - - - 0x001E1D 00:DE0D: D0 06     BNE bra_DE15_RTS
bra_DE0F:
C - - - - - 0x001E1F 00:DE0F: A9 00     LDA #$00
C - - - - - 0x001E21 00:DE11: 85 E0     STA ram_00E0
C - - - - - 0x001E23 00:DE13: 85 DD     STA ram_hit_timer
bra_DE15_RTS:
C - - - - - 0x001E25 00:DE15: 60        RTS



sub_DE16:
C - - - - - 0x001E26 00:DE16: A5 66     LDA ram_0066
C - - - - - 0x001E28 00:DE18: D0 02     BNE bra_DE1C
C - - - - - 0x001E2A 00:DE1A: E6 DC     INC ram_hp_enemy
bra_DE1C:
C - - - - - 0x001E2C 00:DE1C: A5 DC     LDA ram_hp_enemy
C - - - - - 0x001E2E 00:DE1E: C9 09     CMP #$09
C - - - - - 0x001E30 00:DE20: 90 25     BCC bra_DE47
C - - - - - 0x001E32 00:DE22: A9 09     LDA #$09
C - - - - - 0x001E34 00:DE24: 85 DC     STA ram_hp_enemy
C - - - - - 0x001E36 00:DE26: A2 00     LDX #$00
C - - - - - 0x001E38 00:DE28: 86 90     STX ram_0090
C - - - - - 0x001E3A 00:DE2A: A0 06     LDY #$06
C - - - - - 0x001E3C 00:DE2C: 20 82 DF  JSR sub_DF82
C - - - - - 0x001E3F 00:DE2F: A9 10     LDA #$10
C - - - - - 0x001E41 00:DE31: 85 7D     STA ram_007D
C - - - - - 0x001E43 00:DE33: A9 01     LDA #$01
C - - - - - 0x001E45 00:DE35: 85 A2     STA ram_00A2
C - - - - - 0x001E47 00:DE37: 20 A5 D6  JSR sub_D6A5
C - - - - - 0x001E4A 00:DE3A: A9 00     LDA #$00
C - - - - - 0x001E4C 00:DE3C: 85 E5     STA ram_00E5
C - - - - - 0x001E4E 00:DE3E: 85 C9     STA ram_00C9
C - - - - - 0x001E50 00:DE40: 85 AD     STA ram_00AD
C - - - - - 0x001E52 00:DE42: A9 F0     LDA #$F0
C - - - - - 0x001E54 00:DE44: 85 73     STA ram_0073
bra_DE46_RTS:
C - - - - - 0x001E56 00:DE46: 60        RTS
bra_DE47:
C - - - - - 0x001E57 00:DE47: A9 00     LDA #$00
C - - - - - 0x001E59 00:DE49: 8D 02 07  STA ram_0702
C - - - - - 0x001E5C 00:DE4C: F0 F8     BEQ bra_DE46_RTS



tbl_DE4E:
- D 2 - - - 0x001E5E 00:DE4E: 9E        .byte $9E   ; 01
- D 2 - - - 0x001E5F 00:DE4F: AC        .byte $AC   ; 02
- D 2 - - - 0x001E60 00:DE50: B7        .byte $B7   ; 03



sub_DE51:
C - - - - - 0x001E61 00:DE51: A5 CE     LDA ram_enemy_animation
C - - - - - 0x001E63 00:DE53: C9 07     CMP #$07
C - - - - - 0x001E65 00:DE55: D0 01     BNE bra_DE58
- - - - - - 0x001E67 00:DE57: 60        RTS
bra_DE58:
C - - - - - 0x001E68 00:DE58: A5 64     LDA ram_0064
C - - - - - 0x001E6A 00:DE5A: F0 13     BEQ bra_DE6F
C - - - - - 0x001E6C 00:DE5C: A0 06     LDY #$06
C - - - - - 0x001E6E 00:DE5E: A2 00     LDX #$00
C - - - - - 0x001E70 00:DE60: A5 F8     LDA ram_00F8
bra_DE62_loop:
C - - - - - 0x001E72 00:DE62: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x001E75 00:DE65: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x001E78 00:DE68: E8        INX
C - - - - - 0x001E79 00:DE69: E8        INX
C - - - - - 0x001E7A 00:DE6A: E8        INX
C - - - - - 0x001E7B 00:DE6B: E8        INX
C - - - - - 0x001E7C 00:DE6C: 88        DEY
C - - - - - 0x001E7D 00:DE6D: 10 F3     BPL bra_DE62_loop
bra_DE6F:
C - - - - - 0x001E7F 00:DE6F: A6 95     LDX ram_0095
C - - - - - 0x001E81 00:DE71: F0 D3     BEQ bra_DE46_RTS
C - - - - - 0x001E83 00:DE73: BD 4D DE  LDA tbl_DE4E - 1,X
C - - - - - 0x001E86 00:DE76: 8D 18 02  STA ram_spr_Y + $18
C - - - - - 0x001E89 00:DE79: A9 EF     LDA #$EF
C - - - - - 0x001E8B 00:DE7B: 8D 19 02  STA ram_spr_T + $18
C - - - - - 0x001E8E 00:DE7E: A9 00     LDA #$00
C - - - - - 0x001E90 00:DE80: 8D 1A 02  STA ram_spr_A + $18
C - - - - - 0x001E93 00:DE83: A5 D2     LDA ram_00D2
C - - - - - 0x001E95 00:DE85: 0A        ASL
C - - - - - 0x001E96 00:DE86: B0 41     BCS bra_DEC9
C - - - - - 0x001E98 00:DE88: A5 93     LDA ram_0093
loc_DE8A:
C D 2 - - - 0x001E9A 00:DE8A: 38        SEC
C - - - - - 0x001E9B 00:DE8B: E9 04     SBC #$04
C - - - - - 0x001E9D 00:DE8D: 8D 1B 02  STA ram_spr_X + $18
C - - - - - 0x001EA0 00:DE90: A9 84     LDA #$84
C - - - - - 0x001EA2 00:DE92: 20 45 CE  JSR sub_CE45
C - - - - - 0x001EA5 00:DE95: A9 C5     LDA #$C5
C - - - - - 0x001EA7 00:DE97: 20 45 CE  JSR sub_CE45
C - - - - - 0x001EAA 00:DE9A: A9 01     LDA #$01
C - - - - - 0x001EAC 00:DE9C: 85 D8     STA ram_00D8
C - - - - - 0x001EAE 00:DE9E: A5 64     LDA ram_0064
C - - - - - 0x001EB0 00:DEA0: F0 0F     BEQ bra_DEB1
C - - - - - 0x001EB2 00:DEA2: A9 01     LDA #$01
C - - - - - 0x001EB4 00:DEA4: 85 64     STA ram_0064
C - - - - - 0x001EB6 00:DEA6: 85 7D     STA ram_007D
C - - - - - 0x001EB8 00:DEA8: A9 01     LDA #$01
C - - - - - 0x001EBA 00:DEAA: 85 B8     STA ram_00B8
C - - - - - 0x001EBC 00:DEAC: A9 50     LDA #$50
C - - - - - 0x001EBE 00:DEAE: 85 73     STA ram_0073
C - - - - - 0x001EC0 00:DEB0: 60        RTS
bra_DEB1:
C - - - - - 0x001EC1 00:DEB1: A9 00     LDA #$00
C - - - - - 0x001EC3 00:DEB3: 85 DD     STA ram_hit_timer
C - - - - - 0x001EC5 00:DEB5: A5 BD     LDA ram_jump_timer
C - - - - - 0x001EC7 00:DEB7: F0 0F     BEQ bra_DEC8_RTS
C - - - - - 0x001EC9 00:DEB9: C9 0D     CMP #$0D
C - - - - - 0x001ECB 00:DEBB: B0 07     BCS bra_DEC4
C - - - - - 0x001ECD 00:DEBD: A9 1A     LDA #$1A
C - - - - - 0x001ECF 00:DEBF: 38        SEC
C - - - - - 0x001ED0 00:DEC0: E5 BD     SBC ram_jump_timer
C - - - - - 0x001ED2 00:DEC2: 85 BD     STA ram_jump_timer
bra_DEC4:
C - - - - - 0x001ED4 00:DEC4: A9 08     LDA #con_state_jump
C - - - - - 0x001ED6 00:DEC6: 85 9A     STA ram_player_state
bra_DEC8_RTS:
C - - - - - 0x001ED8 00:DEC8: 60        RTS
bra_DEC9:
C - - - - - 0x001ED9 00:DEC9: A5 7F     LDA ram_007F
C - - - - - 0x001EDB 00:DECB: 4C 8A DE  JMP loc_DE8A



loc_DECE:
C D 2 - - - 0x001EDE 00:DECE: A5 64     LDA ram_0064
C - - - - - 0x001EE0 00:DED0: 4A        LSR
C - - - - - 0x001EE1 00:DED1: B0 09     BCS bra_DEDC
C - - - - - 0x001EE3 00:DED3: A5 68     LDA ram_enemy_type
C - - - - - 0x001EE5 00:DED5: 4A        LSR
C - - - - - 0x001EE6 00:DED6: B0 04     BCS bra_DEDC
C - - - - - 0x001EE8 00:DED8: C9 01     CMP #$01
C - - - - - 0x001EEA 00:DEDA: 90 EC     BCC bra_DEC8_RTS
bra_DEDC:
C - - - - - 0x001EEC 00:DEDC: A5 BD     LDA ram_jump_timer
C - - - - - 0x001EEE 00:DEDE: F0 03     BEQ bra_DEE3
C - - - - - 0x001EF0 00:DEE0: 4C 98 DF  JMP loc_DF98
bra_DEE3:
loc_DEE3:
C D 2 - - - 0x001EF3 00:DEE3: 20 DB E0  JSR sub_E0DB
C - - - - - 0x001EF6 00:DEE6: BD 2C E4  LDA tbl_E42C,X
C - - - - - 0x001EF9 00:DEE9: C9 80     CMP #$80
C - - - - - 0x001EFB 00:DEEB: F0 44     BEQ bra_DF31
C - - - - - 0x001EFD 00:DEED: 85 93     STA ram_0093
C - - - - - 0x001EFF 00:DEEF: 85 94     STA ram_0094
C - - - - - 0x001F01 00:DEF1: BD 2D E4  LDA tbl_E42C + 1,X
C - - - - - 0x001F04 00:DEF4: 85 91     STA ram_0091
C - - - - - 0x001F06 00:DEF6: 85 96     STA ram_0096
C - - - - - 0x001F08 00:DEF8: 20 41 E1  JSR sub_E141
C - - - - - 0x001F0B 00:DEFB: 85 93     STA ram_0093
C - - - - - 0x001F0D 00:DEFD: A5 BD     LDA ram_jump_timer
C - - - - - 0x001F0F 00:DEFF: D0 06     BNE bra_DF07
C - - - - - 0x001F11 00:DF01: BD 2E E4  LDA tbl_E42C + 2,X
C - - - - - 0x001F14 00:DF04: 85 95     STA ram_0095
C - - - - - 0x001F16 00:DF06: AA        TAX
bra_DF07:
C - - - - - 0x001F17 00:DF07: A5 95     LDA ram_0095
C - - - - - 0x001F19 00:DF09: A4 A4     LDY ram_00A4
C - - - - - 0x001F1B 00:DF0B: C0 81     CPY #$81
C - - - - - 0x001F1D 00:DF0D: B0 0E     BCS bra_DF1D
C - - - - - 0x001F1F 00:DF0F: 0A        ASL
C - - - - - 0x001F20 00:DF10: 0A        ASL
C - - - - - 0x001F21 00:DF11: A8        TAY
C - - - - - 0x001F22 00:DF12: B9 FF 01  LDA ram_spr_X - 4,Y
C - - - - - 0x001F25 00:DF15: 85 92     STA ram_0092
C - - - - - 0x001F27 00:DF17: A9 0B     LDA #$0B
C - - - - - 0x001F29 00:DF19: 85 90     STA ram_0090
C - - - - - 0x001F2B 00:DF1B: D0 0F     BNE bra_DF2C
bra_DF1D:
C - - - - - 0x001F2D 00:DF1D: 18        CLC
C - - - - - 0x001F2E 00:DF1E: 69 02     ADC #$02
C - - - - - 0x001F30 00:DF20: C5 CE     CMP ram_enemy_animation
C - - - - - 0x001F32 00:DF22: D0 0D     BNE bra_DF31
C - - - - - 0x001F34 00:DF24: A5 AB     LDA ram_00AB
C - - - - - 0x001F36 00:DF26: 85 92     STA ram_0092
C - - - - - 0x001F38 00:DF28: A9 08     LDA #$08
C - - - - - 0x001F3A 00:DF2A: 85 90     STA ram_0090
bra_DF2C:
C - - - - - 0x001F3C 00:DF2C: 20 5A E1  JSR sub_E15A
C - - - - - 0x001F3F 00:DF2F: D0 03     BNE bra_DF34
bra_DF31:
C - - - - - 0x001F41 00:DF31: 4C B6 DF  JMP loc_DFB6
bra_DF34:
C - - - - - 0x001F44 00:DF34: A5 93     LDA ram_0093
C - - - - - 0x001F46 00:DF36: 85 75     STA ram_0075
C - - - - - 0x001F48 00:DF38: A5 A4     LDA ram_00A4
C - - - - - 0x001F4A 00:DF3A: C9 81     CMP #$81
C - - - - - 0x001F4C 00:DF3C: B0 1A     BCS bra_DF58
C - - - - - 0x001F4E 00:DF3E: 20 63 DF  JSR sub_DF63
bra_DF41:
C - - - - - 0x001F51 00:DF41: 20 CC DD  JSR sub_DDCC
C - - - - - 0x001F54 00:DF44: A9 01     LDA #$01
C - - - - - 0x001F56 00:DF46: A6 64     LDX ram_0064
C - - - - - 0x001F58 00:DF48: F0 05     BEQ bra_DF4F
C - - - - - 0x001F5A 00:DF4A: A9 02     LDA #$02
C - - - - - 0x001F5C 00:DF4C: 8D 01 07  STA ram_0701
bra_DF4F:
C - - - - - 0x001F5F 00:DF4F: 85 DA     STA ram_00DA
C - - - - - 0x001F61 00:DF51: A9 26     LDA #$26
C - - - - - 0x001F63 00:DF53: 85 DD     STA ram_hit_timer
C - - - - - 0x001F65 00:DF55: 85 E0     STA ram_00E0
bra_DF57_RTS:
C - - - - - 0x001F67 00:DF57: 60        RTS
bra_DF58:
C - - - - - 0x001F68 00:DF58: A9 40     LDA #$40
C - - - - - 0x001F6A 00:DF5A: 05 A4     ORA ram_00A4
C - - - - - 0x001F6C 00:DF5C: 85 A4     STA ram_00A4
C - - - - - 0x001F6E 00:DF5E: D0 E1     BNE bra_DF41



tbl_DF60:
- D 2 - - - 0x001F70 00:DF60: 06        .byte $06   ; 01
- D 2 - - - 0x001F71 00:DF61: 05        .byte $05   ; 02
- D 2 - - - 0x001F72 00:DF62: 03        .byte $03   ; 03



sub_DF63:
C - - - - - 0x001F73 00:DF63: A5 A4     LDA ram_00A4
C - - - - - 0x001F75 00:DF65: C9 81     CMP #$81
C - - - - - 0x001F77 00:DF67: B0 EE     BCS bra_DF57_RTS
C - - - - - 0x001F79 00:DF69: A9 00     LDA #$00
C - - - - - 0x001F7B 00:DF6B: A6 95     LDX ram_0095
C - - - - - 0x001F7D 00:DF6D: CA        DEX
C - - - - - 0x001F7E 00:DF6E: 95 A5     STA ram_00A5,X
C - - - - - 0x001F80 00:DF70: BD 60 DF  LDA tbl_DF60,X
C - - - - - 0x001F83 00:DF73: 25 D2     AND ram_00D2
C - - - - - 0x001F85 00:DF75: 85 D2     STA ram_00D2
C - - - - - 0x001F87 00:DF77: 25 A4     AND ram_00A4
C - - - - - 0x001F89 00:DF79: 85 A4     STA ram_00A4
C - - - - - 0x001F8B 00:DF7B: A6 95     LDX ram_0095
C - - - - - 0x001F8D 00:DF7D: CA        DEX
C - - - - - 0x001F8E 00:DF7E: 86 90     STX ram_0090
C - - - - - 0x001F90 00:DF80: A0 01     LDY #$01
sub_DF82:
loc_DF82:
C D 2 - - - 0x001F92 00:DF82: A5 90     LDA ram_0090
C - - - - - 0x001F94 00:DF84: 0A        ASL
C - - - - - 0x001F95 00:DF85: 0A        ASL
C - - - - - 0x001F96 00:DF86: AA        TAX
C - - - - - 0x001F97 00:DF87: E6 90     INC ram_0090
C - - - - - 0x001F99 00:DF89: 88        DEY
C - - - - - 0x001F9A 00:DF8A: 30 0B     BMI bra_DF97_RTS
C - - - - - 0x001F9C 00:DF8C: A9 F8     LDA #$F8
C - - - - - 0x001F9E 00:DF8E: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x001FA1 00:DF91: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x001FA4 00:DF94: 4C 82 DF  JMP loc_DF82
bra_DF97_RTS:
C - - - - - 0x001FA7 00:DF97: 60        RTS



loc_DF98:
C D 2 - - - 0x001FA8 00:DF98: A2 01     LDX #$01
C - - - - - 0x001FAA 00:DF9A: A5 BA     LDA ram_pos_Y_player
C - - - - - 0x001FAC 00:DF9C: C9 A4     CMP #$A4
C - - - - - 0x001FAE 00:DF9E: 90 91     BCC bra_DF31
C - - - - - 0x001FB0 00:DFA0: C9 AA     CMP #$AA
C - - - - - 0x001FB2 00:DFA2: 90 0A     BCC bra_DFAE
C - - - - - 0x001FB4 00:DFA4: E8        INX
C - - - - - 0x001FB5 00:DFA5: C9 B6     CMP #$B6
C - - - - - 0x001FB7 00:DFA7: 90 05     BCC bra_DFAE
C - - - - - 0x001FB9 00:DFA9: E8        INX
C - - - - - 0x001FBA 00:DFAA: C9 BE     CMP #$BE
C - - - - - 0x001FBC 00:DFAC: B0 83     BCS bra_DF31
bra_DFAE:
C - - - - - 0x001FBE 00:DFAE: 8A        TXA
C - - - - - 0x001FBF 00:DFAF: 85 95     STA ram_0095
C - - - - - 0x001FC1 00:DFB1: 85 C7     STA ram_00C7
C - - - - - 0x001FC3 00:DFB3: 4C E3 DE  JMP loc_DEE3



loc_DFB6:
C D 2 - - - 0x001FC6 00:DFB6: A5 64     LDA ram_0064
C - - - - - 0x001FC8 00:DFB8: F0 25     BEQ bra_DFDF
C - - - - - 0x001FCA 00:DFBA: A9 00     LDA #$00
C - - - - - 0x001FCC 00:DFBC: 85 7E     STA ram_007E
C - - - - - 0x001FCE 00:DFBE: A2 02     LDX #$02
bra_DFC0:
C - - - - - 0x001FD0 00:DFC0: B5 A5     LDA ram_00A5,X
C - - - - - 0x001FD2 00:DFC2: 0A        ASL
C - - - - - 0x001FD3 00:DFC3: 0A        ASL
C - - - - - 0x001FD4 00:DFC4: 26 7E     ROL ram_007E
C - - - - - 0x001FD6 00:DFC6: CA        DEX
C - - - - - 0x001FD7 00:DFC7: 10 F7     BPL bra_DFC0
C - - - - - 0x001FD9 00:DFC9: A5 7E     LDA ram_007E
C - - - - - 0x001FDB 00:DFCB: 85 D2     STA ram_00D2
C - - - - - 0x001FDD 00:DFCD: A9 00     LDA #$00
C - - - - - 0x001FDF 00:DFCF: 85 7E     STA ram_007E
C - - - - - 0x001FE1 00:DFD1: A2 02     LDX #$02
bra_DFD3:
C - - - - - 0x001FE3 00:DFD3: B5 A5     LDA ram_00A5,X
C - - - - - 0x001FE5 00:DFD5: 0A        ASL
C - - - - - 0x001FE6 00:DFD6: 26 7E     ROL ram_007E
C - - - - - 0x001FE8 00:DFD8: CA        DEX
C - - - - - 0x001FE9 00:DFD9: 10 F8     BPL bra_DFD3
C - - - - - 0x001FEB 00:DFDB: A5 7E     LDA ram_007E
C - - - - - 0x001FED 00:DFDD: 85 A4     STA ram_00A4
bra_DFDF:
C - - - - - 0x001FEF 00:DFDF: A9 00     LDA #$00
C - - - - - 0x001FF1 00:DFE1: 85 97     STA ram_0097
loc_DFE3:
C D 2 - - - 0x001FF3 00:DFE3: E6 97     INC ram_0097
C - - - - - 0x001FF5 00:DFE5: A5 97     LDA ram_0097
C - - - - - 0x001FF7 00:DFE7: 85 95     STA ram_0095
C - - - - - 0x001FF9 00:DFE9: A5 64     LDA ram_0064
C - - - - - 0x001FFB 00:DFEB: D0 09     BNE bra_DFF6
C - - - - - 0x001FFD 00:DFED: A5 68     LDA ram_enemy_type
C - - - - - 0x001FFF 00:DFEF: C9 02     CMP #$02
C - - - - - 0x002001 00:DFF1: D0 03     BNE bra_DFF6
C - - - - - 0x002003 00:DFF3: 4C 7A E0  JMP loc_E07A
bra_DFF6:
C - - - - - 0x002006 00:DFF6: A5 97     LDA ram_0097
C - - - - - 0x002008 00:DFF8: C9 04     CMP #$04
C - - - - - 0x00200A 00:DFFA: F0 06     BEQ bra_E002
C - - - - - 0x00200C 00:DFFC: C9 05     CMP #$05
C - - - - - 0x00200E 00:DFFE: 90 06     BCC bra_E006
C - - - - - 0x002010 00:E000: B0 95     BCS bra_DF97_RTS
bra_E002:
C - - - - - 0x002012 00:E002: C6 95     DEC ram_0095
C - - - - - 0x002014 00:E004: A5 95     LDA ram_0095
bra_E006:
C - - - - - 0x002016 00:E006: AA        TAX
C - - - - - 0x002017 00:E007: 0A        ASL
C - - - - - 0x002018 00:E008: 0A        ASL
C - - - - - 0x002019 00:E009: A8        TAY
C - - - - - 0x00201A 00:E00A: B9 FF 01  LDA ram_spr_X - 4,Y
loc_E00D:
C D 3 - - - 0x00201D 00:E00D: C9 F8     CMP #$F8
C - - - - - 0x00201F 00:E00F: F0 56     BEQ bra_E067
C - - - - - 0x002021 00:E011: 85 93     STA ram_0093
C - - - - - 0x002023 00:E013: A9 0B     LDA #$0B
C - - - - - 0x002025 00:E015: 85 91     STA ram_0091
C - - - - - 0x002027 00:E017: A5 BD     LDA ram_jump_timer
C - - - - - 0x002029 00:E019: F0 21     BEQ bra_E03C
C - - - - - 0x00202B 00:E01B: A2 01     LDX #$01
C - - - - - 0x00202D 00:E01D: A5 BA     LDA ram_pos_Y_player
C - - - - - 0x00202F 00:E01F: C9 A0     CMP #$A0
C - - - - - 0x002031 00:E021: 90 44     BCC bra_E067
C - - - - - 0x002033 00:E023: C9 AA     CMP #$AA
C - - - - - 0x002035 00:E025: 90 0C     BCC bra_E033
C - - - - - 0x002037 00:E027: E8        INX
C - - - - - 0x002038 00:E028: C9 B8     CMP #$B8
C - - - - - 0x00203A 00:E02A: 90 07     BCC bra_E033
C - - - - - 0x00203C 00:E02C: E8        INX
C - - - - - 0x00203D 00:E02D: C9 BF     CMP #$BF
C - - - - - 0x00203F 00:E02F: 90 02     BCC bra_E033
C - - - - - 0x002041 00:E031: B0 34     BCS bra_E067
bra_E033:
C - - - - - 0x002043 00:E033: 8A        TXA
C - - - - - 0x002044 00:E034: C5 95     CMP ram_0095
C - - - - - 0x002046 00:E036: 90 2F     BCC bra_E067
C - - - - - 0x002048 00:E038: E6 95     INC ram_0095
C - - - - - 0x00204A 00:E03A: E6 97     INC ram_0097
bra_E03C:
C - - - - - 0x00204C 00:E03C: 20 F3 E0  JSR sub_E0F3
C - - - - - 0x00204F 00:E03F: 18        CLC
C - - - - - 0x002050 00:E040: 65 97     ADC ram_0097
C - - - - - 0x002052 00:E042: 65 97     ADC ram_0097
C - - - - - 0x002054 00:E044: AA        TAX
C - - - - - 0x002055 00:E045: BD E2 E3  LDA tbl_E3E4 - 2,X
C - - - - - 0x002058 00:E048: C9 80     CMP #$80
C - - - - - 0x00205A 00:E04A: F0 15     BEQ bra_E061
C - - - - - 0x00205C 00:E04C: 85 92     STA ram_0092
C - - - - - 0x00205E 00:E04E: 85 94     STA ram_0094
C - - - - - 0x002060 00:E050: BD E3 E3  LDA tbl_E3E4 - 1,X
C - - - - - 0x002063 00:E053: 85 90     STA ram_0090
C - - - - - 0x002065 00:E055: 85 96     STA ram_0096
C - - - - - 0x002067 00:E057: 20 41 E1  JSR sub_E141
C - - - - - 0x00206A 00:E05A: 85 92     STA ram_0092
C - - - - - 0x00206C 00:E05C: 20 5A E1  JSR sub_E15A
C - - - - - 0x00206F 00:E05F: D0 34     BNE bra_E095
bra_E061:
C - - - - - 0x002071 00:E061: A5 BD     LDA ram_jump_timer
C - - - - - 0x002073 00:E063: F0 02     BEQ bra_E067
C - - - - - 0x002075 00:E065: E6 95     INC ram_0095
bra_E067:
C - - - - - 0x002077 00:E067: A5 A4     LDA ram_00A4
C - - - - - 0x002079 00:E069: C9 81     CMP #$81
C - - - - - 0x00207B 00:E06B: B0 03     BCS bra_E070
C - - - - - 0x00207D 00:E06D: 4C E3 DF  JMP loc_DFE3
bra_E070:
C - - - - - 0x002080 00:E070: A5 97     LDA ram_0097
C - - - - - 0x002082 00:E072: C9 03     CMP #$03
C - - - - - 0x002084 00:E074: D0 29     BNE bra_E09F_RTS
C - - - - - 0x002086 00:E076: E6 97     INC ram_0097
C - - - - - 0x002088 00:E078: 10 16     BPL bra_E090
loc_E07A:
C D 3 - - - 0x00208A 00:E07A: A5 A4     LDA ram_00A4
C - - - - - 0x00208C 00:E07C: C9 81     CMP #$81
C - - - - - 0x00208E 00:E07E: 90 1F     BCC bra_E09F_RTS
C - - - - - 0x002090 00:E080: A6 CE     LDX ram_enemy_animation
C - - - - - 0x002092 00:E082: CA        DEX
C - - - - - 0x002093 00:E083: CA        DEX
C - - - - - 0x002094 00:E084: CA        DEX
C - - - - - 0x002095 00:E085: 30 E0     BMI bra_E067
C - - - - - 0x002097 00:E087: E0 03     CPX #$03
C - - - - - 0x002099 00:E089: B0 DC     BCS bra_E067
C - - - - - 0x00209B 00:E08B: E8        INX
C - - - - - 0x00209C 00:E08C: 86 95     STX ram_0095
C - - - - - 0x00209E 00:E08E: 86 97     STX ram_0097
bra_E090:
C - - - - - 0x0020A0 00:E090: A5 AB     LDA ram_00AB
C - - - - - 0x0020A2 00:E092: 4C 0D E0  JMP loc_E00D
bra_E095:
C - - - - - 0x0020A5 00:E095: A5 93     LDA ram_0093
C - - - - - 0x0020A7 00:E097: 85 7F     STA ram_007F
C - - - - - 0x0020A9 00:E099: A9 03     LDA #$03
C - - - - - 0x0020AB 00:E09B: 85 7E     STA ram_007E
C - - - - - 0x0020AD 00:E09D: D0 01     BNE bra_E0A0
bra_E09F_RTS:
C - - - - - 0x0020AF 00:E09F: 60        RTS
bra_E0A0:
C - - - - - 0x0020B0 00:E0A0: A9 00     LDA #$00
C - - - - - 0x0020B2 00:E0A2: 8D 01 07  STA ram_0701
C - - - - - 0x0020B5 00:E0A5: 18        CLC
C - - - - - 0x0020B6 00:E0A6: A9 04     LDA #$04
C - - - - - 0x0020B8 00:E0A8: 65 7F     ADC ram_007F
C - - - - - 0x0020BA 00:E0AA: 85 7F     STA ram_007F
C - - - - - 0x0020BC 00:E0AC: A5 BD     LDA ram_jump_timer
C - - - - - 0x0020BE 00:E0AE: F0 02     BEQ bra_E0B2
C - - - - - 0x0020C0 00:E0B0: C6 95     DEC ram_0095
bra_E0B2:
C - - - - - 0x0020C2 00:E0B2: A5 A4     LDA ram_00A4
C - - - - - 0x0020C4 00:E0B4: C9 81     CMP #$81
C - - - - - 0x0020C6 00:E0B6: B0 1B     BCS bra_E0D3
C - - - - - 0x0020C8 00:E0B8: 20 63 DF  JSR sub_DF63
bra_E0BB:
C - - - - - 0x0020CB 00:E0BB: A9 80     LDA #$80
C - - - - - 0x0020CD 00:E0BD: 05 D2     ORA ram_00D2
C - - - - - 0x0020CF 00:E0BF: 85 D2     STA ram_00D2
C - - - - - 0x0020D1 00:E0C1: A5 7E     LDA ram_007E
C - - - - - 0x0020D3 00:E0C3: 20 51 DE  JSR sub_DE51
C - - - - - 0x0020D6 00:E0C6: A9 7F     LDA #$7F
C - - - - - 0x0020D8 00:E0C8: 25 D2     AND ram_00D2
C - - - - - 0x0020DA 00:E0CA: 85 D2     STA ram_00D2
C - - - - - 0x0020DC 00:E0CC: A5 64     LDA ram_0064
C - - - - - 0x0020DE 00:E0CE: D0 CF     BNE bra_E09F_RTS
C - - - - - 0x0020E0 00:E0D0: 4C 89 DD  JMP loc_DD89
bra_E0D3:
C - - - - - 0x0020E3 00:E0D3: A9 40     LDA #$40
C - - - - - 0x0020E5 00:E0D5: 05 A4     ORA ram_00A4
C - - - - - 0x0020E7 00:E0D7: 85 A4     STA ram_00A4
C - - - - - 0x0020E9 00:E0D9: D0 E0     BNE bra_E0BB



sub_E0DB:
C - - - - - 0x0020EB 00:E0DB: A4 B6     LDY ram_player_animation
sub_E0DD:
C - - - - - 0x0020ED 00:E0DD: A9 FD     LDA #$FD
bra_E0DF:
C - - - - - 0x0020EF 00:E0DF: 18        CLC
C - - - - - 0x0020F0 00:E0E0: 69 03     ADC #$03
C - - - - - 0x0020F2 00:E0E2: 88        DEY
C - - - - - 0x0020F3 00:E0E3: 10 FA     BPL bra_E0DF
C - - - - - 0x0020F5 00:E0E5: AA        TAX
C - - - - - 0x0020F6 00:E0E6: 60        RTS



sub_E0E7:
C - - - - - 0x0020F7 00:E0E7: A4 B6     LDY ram_player_animation
sub_E0E9:
C - - - - - 0x0020F9 00:E0E9: A9 F8     LDA #$F8
bra_E0EB:
C - - - - - 0x0020FB 00:E0EB: 18        CLC
C - - - - - 0x0020FC 00:E0EC: 69 08     ADC #$08
C - - - - - 0x0020FE 00:E0EE: 88        DEY
C - - - - - 0x0020FF 00:E0EF: 10 FA     BPL bra_E0EB
C - - - - - 0x002101 00:E0F1: AA        TAX
C - - - - - 0x002102 00:E0F2: 60        RTS



sub_E0F3:
C - - - - - 0x002103 00:E0F3: A5 B6     LDA ram_player_animation
C - - - - - 0x002105 00:E0F5: 0A        ASL
C - - - - - 0x002106 00:E0F6: 0A        ASL
C - - - - - 0x002107 00:E0F7: 0A        ASL
C - - - - - 0x002108 00:E0F8: AA        TAX
C - - - - - 0x002109 00:E0F9: 60        RTS



sub_E0FA:
C - - - - - 0x00210A 00:E0FA: A4 68     LDY ram_enemy_type
C - - - - - 0x00210C 00:E0FC: A9 E5     LDA #$E5
bra_E0FE:
C - - - - - 0x00210E 00:E0FE: 18        CLC
C - - - - - 0x00210F 00:E0FF: 69 1B     ADC #$1B
C - - - - - 0x002111 00:E101: 88        DEY
C - - - - - 0x002112 00:E102: 10 FA     BPL bra_E0FE
C - - - - - 0x002114 00:E104: 85 94     STA ram_0094
C - - - - - 0x002116 00:E106: A4 CE     LDY ram_enemy_animation
C - - - - - 0x002118 00:E108: 20 DD E0  JSR sub_E0DD
C - - - - - 0x00211B 00:E10B: 18        CLC
C - - - - - 0x00211C 00:E10C: 65 94     ADC ram_0094
C - - - - - 0x00211E 00:E10E: AA        TAX
C - - - - - 0x00211F 00:E10F: 60        RTS



sub_E110:
C - - - - - 0x002120 00:E110: A4 68     LDY ram_enemy_type
C - - - - - 0x002122 00:E112: C0 03     CPY #$03
C - - - - - 0x002124 00:E114: 90 03     BCC bra_E119
C - - - - - 0x002126 00:E116: 88        DEY
C - - - - - 0x002127 00:E117: 88        DEY
C - - - - - 0x002128 00:E118: 88        DEY
bra_E119:
C - - - - - 0x002129 00:E119: A9 B8     LDA #$B8
bra_E11B:
C - - - - - 0x00212B 00:E11B: 18        CLC
C - - - - - 0x00212C 00:E11C: 69 48     ADC #$48
C - - - - - 0x00212E 00:E11E: 88        DEY
C - - - - - 0x00212F 00:E11F: 10 FA     BPL bra_E11B
C - - - - - 0x002131 00:E121: 85 94     STA ram_0094
C - - - - - 0x002133 00:E123: A4 CE     LDY ram_enemy_animation
C - - - - - 0x002135 00:E125: 20 E9 E0  JSR sub_E0E9
C - - - - - 0x002138 00:E128: 18        CLC
C - - - - - 0x002139 00:E129: 65 94     ADC ram_0094
C - - - - - 0x00213B 00:E12B: 18        CLC
C - - - - - 0x00213C 00:E12C: 65 95     ADC ram_0095
C - - - - - 0x00213E 00:E12E: 65 95     ADC ram_0095
C - - - - - 0x002140 00:E130: 85 92     STA ram_0092
C - - - - - 0x002142 00:E132: AA        TAX
C - - - - - 0x002143 00:E133: A5 68     LDA ram_enemy_type
C - - - - - 0x002145 00:E135: C9 03     CMP #$03
C - - - - - 0x002147 00:E137: B0 04     BCS bra_E13D
C - - - - - 0x002149 00:E139: BD F3 E1  LDA tbl_E1F3,X
C - - - - - 0x00214C 00:E13C: 60        RTS
bra_E13D:
C - - - - - 0x00214D 00:E13D: BD CB E2  LDA tbl_E2CB,X
C - - - - - 0x002150 00:E140: 60        RTS



sub_E141:
C - - - - - 0x002151 00:E141: A5 BB     LDA ram_pos_X_player
C - - - - - 0x002153 00:E143: A4 69     LDY ram_0069
C - - - - - 0x002155 00:E145: D0 07     BNE bra_E14E
bra_E147:
C - - - - - 0x002157 00:E147: 38        SEC
C - - - - - 0x002158 00:E148: E5 94     SBC ram_0094
C - - - - - 0x00215A 00:E14A: 38        SEC
C - - - - - 0x00215B 00:E14B: E5 96     SBC ram_0096
C - - - - - 0x00215D 00:E14D: 60        RTS
bra_E14E:
C - - - - - 0x00215E 00:E14E: 18        CLC
C - - - - - 0x00215F 00:E14F: 65 94     ADC ram_0094
C - - - - - 0x002161 00:E151: 60        RTS



sub_E152:
C - - - - - 0x002162 00:E152: A5 CB     LDA ram_00CB
C - - - - - 0x002164 00:E154: A4 72     LDY ram_enemy_facing_direction
C - - - - - 0x002166 00:E156: F0 F6     BEQ bra_E14E
C - - - - - 0x002168 00:E158: D0 ED     BNE bra_E147



sub_E15A:
C - - - - - 0x00216A 00:E15A: A2 00     LDX #$00
C - - - - - 0x00216C 00:E15C: A5 92     LDA ram_0092
C - - - - - 0x00216E 00:E15E: 38        SEC
C - - - - - 0x00216F 00:E15F: E5 91     SBC ram_0091
C - - - - - 0x002171 00:E161: 38        SEC
C - - - - - 0x002172 00:E162: E5 93     SBC ram_0093
C - - - - - 0x002174 00:E164: B0 0B     BCS bra_E171
C - - - - - 0x002176 00:E166: A5 92     LDA ram_0092
C - - - - - 0x002178 00:E168: 18        CLC
C - - - - - 0x002179 00:E169: 65 90     ADC ram_0090
C - - - - - 0x00217B 00:E16B: 38        SEC
C - - - - - 0x00217C 00:E16C: E5 93     SBC ram_0093
C - - - - - 0x00217E 00:E16E: 90 01     BCC bra_E171
C - - - - - 0x002180 00:E170: E8        INX
bra_E171:
C - - - - - 0x002181 00:E171: 8A        TXA
C - - - - - 0x002182 00:E172: 60        RTS



tbl_E173:
- D 3 - - - 0x002183 00:E173: 75        .byte $75   ; 
- D 3 - - - 0x002184 00:E174: E1        .byte $E1   ; 
- - - - - - 0x002185 00:E175: 00        .byte $00   ; 
- - - - - - 0x002186 00:E176: 01        .byte $01   ; 
- - - - - - 0x002187 00:E177: 02        .byte $02   ; 
- - - - - - 0x002188 00:E178: 03        .byte $03   ; 
- - - - - - 0x002189 00:E179: 03        .byte $03   ; 
- - - - - - 0x00218A 00:E17A: 02        .byte $02   ; 
- - - - - - 0x00218B 00:E17B: 01        .byte $01   ; 
- - - - - - 0x00218C 00:E17C: 00        .byte $00   ; 
- - - - - - 0x00218D 00:E17D: 00        .byte $00   ; 
- - - - - - 0x00218E 00:E17E: 01        .byte $01   ; 
- - - - - - 0x00218F 00:E17F: 02        .byte $02   ; 
- - - - - - 0x002190 00:E180: 03        .byte $03   ; 
- - - - - - 0x002191 00:E181: 03        .byte $03   ; 
- - - - - - 0x002192 00:E182: 02        .byte $02   ; 
- - - - - - 0x002193 00:E183: 01        .byte $01   ; 
- - - - - - 0x002194 00:E184: 00        .byte $00   ; 
- D 3 - I - 0x002195 00:E185: 00        .byte $00   ; 
- - - - - - 0x002196 00:E186: 01        .byte $01   ; 
- - - - - - 0x002197 00:E187: 03        .byte $03   ; 
- - - - - - 0x002198 00:E188: 03        .byte $03   ; 
- - - - - - 0x002199 00:E189: 02        .byte $02   ; 
- - - - - - 0x00219A 00:E18A: 03        .byte $03   ; 
- - - - - - 0x00219B 00:E18B: 00        .byte $00   ; 
- - - - - - 0x00219C 00:E18C: 03        .byte $03   ; 
- - - - - - 0x00219D 00:E18D: 03        .byte $03   ; 
- - - - - - 0x00219E 00:E18E: 02        .byte $02   ; 
- - - - - - 0x00219F 00:E18F: 03        .byte $03   ; 
- - - - - - 0x0021A0 00:E190: 03        .byte $03   ; 
- - - - - - 0x0021A1 00:E191: 00        .byte $00   ; 
- - - - - - 0x0021A2 00:E192: 03        .byte $03   ; 
- - - - - - 0x0021A3 00:E193: 01        .byte $01   ; 
- - - - - - 0x0021A4 00:E194: 03        .byte $03   ; 
- D 3 - I - 0x0021A5 00:E195: 01        .byte $01   ; 
- - - - - - 0x0021A6 00:E196: 03        .byte $03   ; 
- - - - - - 0x0021A7 00:E197: 02        .byte $02   ; 
- - - - - - 0x0021A8 00:E198: 01        .byte $01   ; 
- - - - - - 0x0021A9 00:E199: 00        .byte $00   ; 
- - - - - - 0x0021AA 00:E19A: 01        .byte $01   ; 
- - - - - - 0x0021AB 00:E19B: 03        .byte $03   ; 
- - - - - - 0x0021AC 00:E19C: 00        .byte $00   ; 
- - - - - - 0x0021AD 00:E19D: 02        .byte $02   ; 
- - - - - - 0x0021AE 00:E19E: 03        .byte $03   ; 
- - - - - - 0x0021AF 00:E19F: 01        .byte $01   ; 
- - - - - - 0x0021B0 00:E1A0: 01        .byte $01   ; 
- - - - - - 0x0021B1 00:E1A1: 03        .byte $03   ; 
- - - - - - 0x0021B2 00:E1A2: 01        .byte $01   ; 
- - - - - - 0x0021B3 00:E1A3: 01        .byte $01   ; 
- - - - - - 0x0021B4 00:E1A4: 00        .byte $00   ; 
- D 3 - I - 0x0021B5 00:E1A5: 01        .byte $01   ; 
- - - - - - 0x0021B6 00:E1A6: 00        .byte $00   ; 
- - - - - - 0x0021B7 00:E1A7: 02        .byte $02   ; 
- - - - - - 0x0021B8 00:E1A8: 00        .byte $00   ; 
- - - - - - 0x0021B9 00:E1A9: 03        .byte $03   ; 
- - - - - - 0x0021BA 00:E1AA: 00        .byte $00   ; 
- - - - - - 0x0021BB 00:E1AB: 00        .byte $00   ; 
- - - - - - 0x0021BC 00:E1AC: 02        .byte $02   ; 
- - - - - - 0x0021BD 00:E1AD: 00        .byte $00   ; 
- - - - - - 0x0021BE 00:E1AE: 03        .byte $03   ; 
- - - - - - 0x0021BF 00:E1AF: 00        .byte $00   ; 
- - - - - - 0x0021C0 00:E1B0: 03        .byte $03   ; 
- - - - - - 0x0021C1 00:E1B1: 00        .byte $00   ; 
- - - - - - 0x0021C2 00:E1B2: 01        .byte $01   ; 
- - - - - - 0x0021C3 00:E1B3: 00        .byte $00   ; 
- - - - - - 0x0021C4 00:E1B4: 00        .byte $00   ; 
- D 3 - I - 0x0021C5 00:E1B5: 03        .byte $03   ; 
- - - - - - 0x0021C6 00:E1B6: 01        .byte $01   ; 
- - - - - - 0x0021C7 00:E1B7: 03        .byte $03   ; 
- - - - - - 0x0021C8 00:E1B8: 00        .byte $00   ; 
- - - - - - 0x0021C9 00:E1B9: 02        .byte $02   ; 
- - - - - - 0x0021CA 00:E1BA: 01        .byte $01   ; 
- - - - - - 0x0021CB 00:E1BB: 03        .byte $03   ; 
- - - - - - 0x0021CC 00:E1BC: 03        .byte $03   ; 
- - - - - - 0x0021CD 00:E1BD: 01        .byte $01   ; 
- - - - - - 0x0021CE 00:E1BE: 01        .byte $01   ; 
- - - - - - 0x0021CF 00:E1BF: 00        .byte $00   ; 
- - - - - - 0x0021D0 00:E1C0: 02        .byte $02   ; 
- - - - - - 0x0021D1 00:E1C1: 03        .byte $03   ; 
- - - - - - 0x0021D2 00:E1C2: 01        .byte $01   ; 
- - - - - - 0x0021D3 00:E1C3: 01        .byte $01   ; 
- - - - - - 0x0021D4 00:E1C4: 03        .byte $03   ; 
- D 3 - I - 0x0021D5 00:E1C5: 00        .byte $00   ; 
- - - - - - 0x0021D6 00:E1C6: 01        .byte $01   ; 
- - - - - - 0x0021D7 00:E1C7: 02        .byte $02   ; 
- - - - - - 0x0021D8 00:E1C8: 00        .byte $00   ; 
- - - - - - 0x0021D9 00:E1C9: 01        .byte $01   ; 
- - - - - - 0x0021DA 00:E1CA: 00        .byte $00   ; 
- - - - - - 0x0021DB 00:E1CB: 00        .byte $00   ; 
- - - - - - 0x0021DC 00:E1CC: 03        .byte $03   ; 
- - - - - - 0x0021DD 00:E1CD: 01        .byte $01   ; 
- - - - - - 0x0021DE 00:E1CE: 01        .byte $01   ; 
- - - - - - 0x0021DF 00:E1CF: 00        .byte $00   ; 
- - - - - - 0x0021E0 00:E1D0: 00        .byte $00   ; 
- - - - - - 0x0021E1 00:E1D1: 02        .byte $02   ; 
- - - - - - 0x0021E2 00:E1D2: 00        .byte $00   ; 
- - - - - - 0x0021E3 00:E1D3: 00        .byte $00   ; 
- - - - - - 0x0021E4 00:E1D4: 03        .byte $03   ; 
- D 3 - I - 0x0021E5 00:E1D5: 02        .byte $02   ; 
- - - - - - 0x0021E6 00:E1D6: 00        .byte $00   ; 
- - - - - - 0x0021E7 00:E1D7: 00        .byte $00   ; 
- - - - - - 0x0021E8 00:E1D8: 02        .byte $02   ; 
- - - - - - 0x0021E9 00:E1D9: 03        .byte $03   ; 
- - - - - - 0x0021EA 00:E1DA: 00        .byte $00   ; 
- - - - - - 0x0021EB 00:E1DB: 02        .byte $02   ; 
- - - - - - 0x0021EC 00:E1DC: 00        .byte $00   ; 
- - - - - - 0x0021ED 00:E1DD: 01        .byte $01   ; 
- - - - - - 0x0021EE 00:E1DE: 03        .byte $03   ; 
- - - - - - 0x0021EF 00:E1DF: 00        .byte $00   ; 
- - - - - - 0x0021F0 00:E1E0: 00        .byte $00   ; 
- - - - - - 0x0021F1 00:E1E1: 02        .byte $02   ; 
- - - - - - 0x0021F2 00:E1E2: 02        .byte $02   ; 
- - - - - - 0x0021F3 00:E1E3: 02        .byte $02   ; 
- - - - - - 0x0021F4 00:E1E4: 00        .byte $00   ; 
- D 3 - I - 0x0021F5 00:E1E5: 02        .byte $02   ; 
- - - - - - 0x0021F6 00:E1E6: 00        .byte $00   ; 
- - - - - - 0x0021F7 00:E1E7: 03        .byte $03   ; 
- - - - - - 0x0021F8 00:E1E8: 01        .byte $01   ; 
- - - - - - 0x0021F9 00:E1E9: 03        .byte $03   ; 
- - - - - - 0x0021FA 00:E1EA: 01        .byte $01   ; 
- - - - - - 0x0021FB 00:E1EB: 01        .byte $01   ; 
- - - - - - 0x0021FC 00:E1EC: 00        .byte $00   ; 
- - - - - - 0x0021FD 00:E1ED: 03        .byte $03   ; 
- - - - - - 0x0021FE 00:E1EE: 02        .byte $02   ; 
- - - - - - 0x0021FF 00:E1EF: 00        .byte $00   ; 
- - - - - - 0x002200 00:E1F0: 03        .byte $03   ; 
- - - - - - 0x002201 00:E1F1: 03        .byte $03   ; 
- - - - - - 0x002202 00:E1F2: 00        .byte $00   ; 



tbl_E1F3:
- - - - - - 0x002203 00:E1F3: 01        .byte $01   ; 
tbl_E1F4:
- - - - - - 0x002204 00:E1F4: 00        .byte $00   ; 
- D 3 - - - 0x002205 00:E1F5: 04        .byte $04   ; 
- D 3 - - - 0x002206 00:E1F6: 08        .byte $08   ; 
- D 3 - - - 0x002207 00:E1F7: 04        .byte $04   ; 
- D 3 - - - 0x002208 00:E1F8: 0B        .byte $0B   ; 
- D 3 - - - 0x002209 00:E1F9: FE        .byte $FE   ; 
- D 3 - - - 0x00220A 00:E1FA: 06        .byte $06   ; 
- D 3 - - - 0x00220B 00:E1FB: 0E        .byte $0E   ; 
- D 3 - - - 0x00220C 00:E1FC: 06        .byte $06   ; 
- D 3 - - - 0x00220D 00:E1FD: FC        .byte $FC   ; 
- D 3 - - - 0x00220E 00:E1FE: 08        .byte $08   ; 
- D 3 - - - 0x00220F 00:E1FF: FC        .byte $FC   ; 
- D 3 - - - 0x002210 00:E200: 0B        .byte $0B   ; 
- D 3 - - - 0x002211 00:E201: FD        .byte $FD   ; 
- D 3 - - - 0x002212 00:E202: 06        .byte $06   ; 
- D 3 - - - 0x002213 00:E203: 00        .byte $00   ; 
- D 3 - - - 0x002214 00:E204: 06        .byte $06   ; 
- D 3 - - - 0x002215 00:E205: 04        .byte $04   ; 
- D 3 - - - 0x002216 00:E206: 08        .byte $08   ; 
- D 3 - - - 0x002217 00:E207: 04        .byte $04   ; 
- D 3 - - - 0x002218 00:E208: 0B        .byte $0B   ; 
- D 3 - - - 0x002219 00:E209: 0E        .byte $0E   ; 
- D 3 - - - 0x00221A 00:E20A: 06        .byte $06   ; 
- D 3 - - - 0x00221B 00:E20B: 0E        .byte $0E   ; 
- D 3 - - - 0x00221C 00:E20C: 06        .byte $06   ; 
- - - - - - 0x00221D 00:E20D: FC        .byte $FC   ; 
- - - - - - 0x00221E 00:E20E: 08        .byte $08   ; 
- - - - - - 0x00221F 00:E20F: FA        .byte $FA   ; 
- - - - - - 0x002220 00:E210: 0B        .byte $0B   ; 
- - - - - - 0x002221 00:E211: F6        .byte $F6   ; 
- - - - - - 0x002222 00:E212: 06        .byte $06   ; 
- - - - - - 0x002223 00:E213: 06        .byte $06   ; 
- - - - - - 0x002224 00:E214: 06        .byte $06   ; 
- D 3 - - - 0x002225 00:E215: FC        .byte $FC   ; 
- D 3 - - - 0x002226 00:E216: 08        .byte $08   ; 
- D 3 - - - 0x002227 00:E217: FE        .byte $FE   ; 
- D 3 - - - 0x002228 00:E218: 0B        .byte $0B   ; 
- - - - - - 0x002229 00:E219: F6        .byte $F6   ; 
- - - - - - 0x00222A 00:E21A: 06        .byte $06   ; 
- - - - - - 0x00222B 00:E21B: 06        .byte $06   ; 
- - - - - - 0x00222C 00:E21C: 06        .byte $06   ; 
- D 3 - - - 0x00222D 00:E21D: 80        .byte $80   ; 
- - - - - - 0x00222E 00:E21E: 08        .byte $08   ; 
- - - - - - 0x00222F 00:E21F: FC        .byte $FC   ; 
- - - - - - 0x002230 00:E220: 0B        .byte $0B   ; 
- D 3 - - - 0x002231 00:E221: F4        .byte $F4   ; 
- D 3 - - - 0x002232 00:E222: 10        .byte $10   ; 
- D 3 - - - 0x002233 00:E223: 0C        .byte $0C   ; 
- D 3 - - - 0x002234 00:E224: 02        .byte $02   ; 
- D 3 - - - 0x002235 00:E225: FC        .byte $FC   ; 
- D 3 - - - 0x002236 00:E226: 08        .byte $08   ; 
- D 3 - - - 0x002237 00:E227: FE        .byte $FE   ; 
- D 3 - - - 0x002238 00:E228: 0B        .byte $0B   ; 
- D 3 - - - 0x002239 00:E229: 00        .byte $00   ; 
- D 3 - - - 0x00223A 00:E22A: 06        .byte $06   ; 
- D 3 - - - 0x00223B 00:E22B: 00        .byte $00   ; 
- D 3 - - - 0x00223C 00:E22C: 06        .byte $06   ; 
- - - - - - 0x00223D 00:E22D: 80        .byte $80   ; 
- - - - - - 0x00223E 00:E22E: 80        .byte $80   ; 
- - - - - - 0x00223F 00:E22F: 80        .byte $80   ; 
- - - - - - 0x002240 00:E230: 80        .byte $80   ; 
- - - - - - 0x002241 00:E231: 80        .byte $80   ; 
- - - - - - 0x002242 00:E232: 80        .byte $80   ; 
- - - - - - 0x002243 00:E233: 80        .byte $80   ; 
- - - - - - 0x002244 00:E234: 80        .byte $80   ; 
- - - - - - 0x002245 00:E235: 80        .byte $80   ; 
- - - - - - 0x002246 00:E236: 80        .byte $80   ; 
- - - - - - 0x002247 00:E237: 80        .byte $80   ; 
- - - - - - 0x002248 00:E238: 80        .byte $80   ; 
- - - - - - 0x002249 00:E239: 80        .byte $80   ; 
- - - - - - 0x00224A 00:E23A: 80        .byte $80   ; 
- - - - - - 0x00224B 00:E23B: 80        .byte $80   ; 
- - - - - - 0x00224C 00:E23C: 80        .byte $80   ; 
- D 3 - - - 0x00224D 00:E23D: 08        .byte $08   ; 
- D 3 - - - 0x00224E 00:E23E: 08        .byte $08   ; 
- D 3 - - - 0x00224F 00:E23F: 05        .byte $05   ; 
- D 3 - - - 0x002250 00:E240: 0B        .byte $0B   ; 
- D 3 - - - 0x002251 00:E241: 02        .byte $02   ; 
- D 3 - - - 0x002252 00:E242: 05        .byte $05   ; 
- D 3 - - - 0x002253 00:E243: 0E        .byte $0E   ; 
- D 3 - - - 0x002254 00:E244: 05        .byte $05   ; 
- D 3 - - - 0x002255 00:E245: 00        .byte $00   ; 
- D 3 - - - 0x002256 00:E246: 08        .byte $08   ; 
- D 3 - - - 0x002257 00:E247: FD        .byte $FD   ; 
- D 3 - - - 0x002258 00:E248: 0B        .byte $0B   ; 
- D 3 - - - 0x002259 00:E249: 01        .byte $01   ; 
- D 3 - - - 0x00225A 00:E24A: 06        .byte $06   ; 
- D 3 - - - 0x00225B 00:E24B: 01        .byte $01   ; 
- D 3 - - - 0x00225C 00:E24C: 06        .byte $06   ; 
- D 3 - - - 0x00225D 00:E24D: 0A        .byte $0A   ; 
- D 3 - - - 0x00225E 00:E24E: 08        .byte $08   ; 
- D 3 - - - 0x00225F 00:E24F: 05        .byte $05   ; 
- D 3 - - - 0x002260 00:E250: 0B        .byte $0B   ; 
- D 3 - - - 0x002261 00:E251: 02        .byte $02   ; 
- D 3 - - - 0x002262 00:E252: 05        .byte $05   ; 
- D 3 - - - 0x002263 00:E253: 0F        .byte $0F   ; 
- D 3 - - - 0x002264 00:E254: 05        .byte $05   ; 
- D 3 - - - 0x002265 00:E255: FB        .byte $FB   ; 
- D 3 - - - 0x002266 00:E256: 08        .byte $08   ; 
- D 3 - - - 0x002267 00:E257: FB        .byte $FB   ; 
- D 3 - - - 0x002268 00:E258: 0B        .byte $0B   ; 
- D 3 - - - 0x002269 00:E259: FB        .byte $FB   ; 
- D 3 - - - 0x00226A 00:E25A: 04        .byte $04   ; 
- D 3 - - - 0x00226B 00:E25B: 07        .byte $07   ; 
- D 3 - - - 0x00226C 00:E25C: 05        .byte $05   ; 
- D 3 - - - 0x00226D 00:E25D: 80        .byte $80   ; 
- - - - - - 0x00226E 00:E25E: 08        .byte $08   ; 
- D 3 - - - 0x00226F 00:E25F: FB        .byte $FB   ; 
- D 3 - - - 0x002270 00:E260: 0B        .byte $0B   ; 
- - - - - - 0x002271 00:E261: F9        .byte $F9   ; 
- - - - - - 0x002272 00:E262: 05        .byte $05   ; 
- - - - - - 0x002273 00:E263: 05        .byte $05   ; 
- - - - - - 0x002274 00:E264: 05        .byte $05   ; 
- D 3 - - - 0x002275 00:E265: 80        .byte $80   ; 
- - - - - - 0x002276 00:E266: 08        .byte $08   ; 
- D 3 - - - 0x002277 00:E267: 80        .byte $80   ; 
- - - - - - 0x002278 00:E268: 0B        .byte $0B   ; 
- D 3 - - - 0x002279 00:E269: F6        .byte $F6   ; 
- D 3 - - - 0x00227A 00:E26A: 09        .byte $09   ; 
- D 3 - - - 0x00227B 00:E26B: FF        .byte $FF   ; 
- D 3 - - - 0x00227C 00:E26C: 06        .byte $06   ; 
- D 3 - - - 0x00227D 00:E26D: 00        .byte $00   ; 
- D 3 - - - 0x00227E 00:E26E: 08        .byte $08   ; 
- D 3 - - - 0x00227F 00:E26F: FC        .byte $FC   ; 
- D 3 - - - 0x002280 00:E270: 0B        .byte $0B   ; 
- D 3 - - - 0x002281 00:E271: 07        .byte $07   ; 
- D 3 - - - 0x002282 00:E272: 05        .byte $05   ; 
- D 3 - - - 0x002283 00:E273: 07        .byte $07   ; 
- D 3 - - - 0x002284 00:E274: 06        .byte $06   ; 
- - - - - - 0x002285 00:E275: 80        .byte $80   ; 
- - - - - - 0x002286 00:E276: 08        .byte $08   ; 
- - - - - - 0x002287 00:E277: 80        .byte $80   ; 
- - - - - - 0x002288 00:E278: 0B        .byte $0B   ; 
- - - - - - 0x002289 00:E279: 80        .byte $80   ; 
- - - - - - 0x00228A 00:E27A: 06        .byte $06   ; 
- - - - - - 0x00228B 00:E27B: 80        .byte $80   ; 
- - - - - - 0x00228C 00:E27C: 06        .byte $06   ; 
- D 3 - - - 0x00228D 00:E27D: 00        .byte $00   ; 
- D 3 - - - 0x00228E 00:E27E: 08        .byte $08   ; 
- D 3 - - - 0x00228F 00:E27F: FD        .byte $FD   ; 
- D 3 - - - 0x002290 00:E280: 0B        .byte $0B   ; 
- D 3 - - - 0x002291 00:E281: 02        .byte $02   ; 
- D 3 - - - 0x002292 00:E282: 05        .byte $05   ; 
- D 3 - - - 0x002293 00:E283: 02        .byte $02   ; 
- D 3 - - - 0x002294 00:E284: 06        .byte $06   ; 
- D 3 - - - 0x002295 00:E285: FC        .byte $FC   ; 
- D 3 - - - 0x002296 00:E286: 07        .byte $07   ; 
- D 3 - - - 0x002297 00:E287: FA        .byte $FA   ; 
- D 3 - - - 0x002298 00:E288: 0B        .byte $0B   ; 
- D 3 - - - 0x002299 00:E289: F5        .byte $F5   ; 
- D 3 - - - 0x00229A 00:E28A: 05        .byte $05   ; 
- D 3 - - - 0x00229B 00:E28B: 08        .byte $08   ; 
- D 3 - - - 0x00229C 00:E28C: 05        .byte $05   ; 
- D 3 - - - 0x00229D 00:E28D: FC        .byte $FC   ; 
- D 3 - - - 0x00229E 00:E28E: 07        .byte $07   ; 
- D 3 - - - 0x00229F 00:E28F: FA        .byte $FA   ; 
- D 3 - - - 0x0022A0 00:E290: 0B        .byte $0B   ; 
- D 3 - - - 0x0022A1 00:E291: FD        .byte $FD   ; 
- D 3 - - - 0x0022A2 00:E292: 06        .byte $06   ; 
- D 3 - - - 0x0022A3 00:E293: 80        .byte $80   ; 
- - - - - - 0x0022A4 00:E294: 00        .byte $00   ; 
- D 3 - - - 0x0022A5 00:E295: 04        .byte $04   ; 
- D 3 - - - 0x0022A6 00:E296: 07        .byte $07   ; 
- D 3 - - - 0x0022A7 00:E297: 00        .byte $00   ; 
- D 3 - - - 0x0022A8 00:E298: 0B        .byte $0B   ; 
- D 3 - - - 0x0022A9 00:E299: 10        .byte $10   ; 
- D 3 - - - 0x0022AA 00:E29A: 06        .byte $06   ; 
- D 3 - - - 0x0022AB 00:E29B: 10        .byte $10   ; 
- D 3 - - - 0x0022AC 00:E29C: 06        .byte $06   ; 
- D 3 - - - 0x0022AD 00:E29D: FC        .byte $FC   ; 
- D 3 - - - 0x0022AE 00:E29E: 07        .byte $07   ; 
- D 3 - - - 0x0022AF 00:E29F: FB        .byte $FB   ; 
- D 3 - - - 0x0022B0 00:E2A0: 0B        .byte $0B   ; 
- D 3 - - - 0x0022B1 00:E2A1: F6        .byte $F6   ; 
- D 3 - - - 0x0022B2 00:E2A2: 05        .byte $05   ; 
- D 3 - - - 0x0022B3 00:E2A3: 07        .byte $07   ; 
- D 3 - - - 0x0022B4 00:E2A4: 04        .byte $04   ; 
- D 3 - - - 0x0022B5 00:E2A5: FC        .byte $FC   ; 
- D 3 - - - 0x0022B6 00:E2A6: 07        .byte $07   ; 
- D 3 - - - 0x0022B7 00:E2A7: FA        .byte $FA   ; 
- D 3 - - - 0x0022B8 00:E2A8: 0B        .byte $0B   ; 
- D 3 - - - 0x0022B9 00:E2A9: F6        .byte $F6   ; 
- D 3 - - - 0x0022BA 00:E2AA: 05        .byte $05   ; 
- D 3 - - - 0x0022BB 00:E2AB: 07        .byte $07   ; 
- D 3 - - - 0x0022BC 00:E2AC: 04        .byte $04   ; 
- D 3 - - - 0x0022BD 00:E2AD: 80        .byte $80   ; 
- - - - - - 0x0022BE 00:E2AE: 07        .byte $07   ; 
- D 3 - - - 0x0022BF 00:E2AF: FC        .byte $FC   ; 
- D 3 - - - 0x0022C0 00:E2B0: 0B        .byte $0B   ; 
- D 3 - - - 0x0022C1 00:E2B1: F6        .byte $F6   ; 
- D 3 - - - 0x0022C2 00:E2B2: 06        .byte $06   ; 
- D 3 - - - 0x0022C3 00:E2B3: 09        .byte $09   ; 
- D 3 - - - 0x0022C4 00:E2B4: 04        .byte $04   ; 
- D 3 - - - 0x0022C5 00:E2B5: FC        .byte $FC   ; 
- D 3 - - - 0x0022C6 00:E2B6: 07        .byte $07   ; 
- D 3 - - - 0x0022C7 00:E2B7: FB        .byte $FB   ; 
- D 3 - - - 0x0022C8 00:E2B8: 0B        .byte $0B   ; 
- D 3 - - - 0x0022C9 00:E2B9: 01        .byte $01   ; 
- D 3 - - - 0x0022CA 00:E2BA: 05        .byte $05   ; 
- D 3 - - - 0x0022CB 00:E2BB: 80        .byte $80   ; 
- - - - - - 0x0022CC 00:E2BC: 80        .byte $80   ; 
- - - - - - 0x0022CD 00:E2BD: 80        .byte $80   ; 
- - - - - - 0x0022CE 00:E2BE: 07        .byte $07   ; 
- - - - - - 0x0022CF 00:E2BF: 80        .byte $80   ; 
- - - - - - 0x0022D0 00:E2C0: 0B        .byte $0B   ; 
- - - - - - 0x0022D1 00:E2C1: 80        .byte $80   ; 
- - - - - - 0x0022D2 00:E2C2: 06        .byte $06   ; 
- - - - - - 0x0022D3 00:E2C3: 80        .byte $80   ; 
- - - - - - 0x0022D4 00:E2C4: 06        .byte $06   ; 
- - - - - - 0x0022D5 00:E2C5: 80        .byte $80   ; 
- - - - - - 0x0022D6 00:E2C6: 07        .byte $07   ; 
- - - - - - 0x0022D7 00:E2C7: 80        .byte $80   ; 
- - - - - - 0x0022D8 00:E2C8: 0B        .byte $0B   ; 
- - - - - - 0x0022D9 00:E2C9: 80        .byte $80   ; 
- - - - - - 0x0022DA 00:E2CA: 06        .byte $06   ; 



tbl_E2CB:
- - - - - - 0x0022DB 00:E2CB: 80        .byte $80   ; 
tbl_E2CC:
- - - - - - 0x0022DC 00:E2CC: 06        .byte $06   ; 
- D 3 - - - 0x0022DD 00:E2CD: 06        .byte $06   ; 
- D 3 - - - 0x0022DE 00:E2CE: 06        .byte $06   ; 
- D 3 - - - 0x0022DF 00:E2CF: 06        .byte $06   ; 
- D 3 - - - 0x0022E0 00:E2D0: 06        .byte $06   ; 
- D 3 - - - 0x0022E1 00:E2D1: FF        .byte $FF   ; 
- D 3 - - - 0x0022E2 00:E2D2: 03        .byte $03   ; 
- D 3 - - - 0x0022E3 00:E2D3: 0C        .byte $0C   ; 
- D 3 - - - 0x0022E4 00:E2D4: 03        .byte $03   ; 
- D 3 - - - 0x0022E5 00:E2D5: FE        .byte $FE   ; 
- D 3 - - - 0x0022E6 00:E2D6: 06        .byte $06   ; 
- D 3 - - - 0x0022E7 00:E2D7: FE        .byte $FE   ; 
- D 3 - - - 0x0022E8 00:E2D8: 06        .byte $06   ; 
- D 3 - - - 0x0022E9 00:E2D9: 00        .byte $00   ; 
- D 3 - - - 0x0022EA 00:E2DA: 04        .byte $04   ; 
- D 3 - - - 0x0022EB 00:E2DB: 00        .byte $00   ; 
- D 3 - - - 0x0022EC 00:E2DC: 04        .byte $04   ; 
- D 3 - - - 0x0022ED 00:E2DD: 06        .byte $06   ; 
- D 3 - - - 0x0022EE 00:E2DE: 06        .byte $06   ; 
- D 3 - - - 0x0022EF 00:E2DF: 07        .byte $07   ; 
- D 3 - - - 0x0022F0 00:E2E0: 06        .byte $06   ; 
- D 3 - - - 0x0022F1 00:E2E1: 0B        .byte $0B   ; 
- D 3 - - - 0x0022F2 00:E2E2: 03        .byte $03   ; 
- D 3 - - - 0x0022F3 00:E2E3: 0B        .byte $0B   ; 
- D 3 - - - 0x0022F4 00:E2E4: 03        .byte $03   ; 
- D 3 - - - 0x0022F5 00:E2E5: FF        .byte $FF   ; 
- D 3 - - - 0x0022F6 00:E2E6: 06        .byte $06   ; 
- - - - - - 0x0022F7 00:E2E7: FB        .byte $FB   ; 
- - - - - - 0x0022F8 00:E2E8: 05        .byte $05   ; 
- D 3 - - - 0x0022F9 00:E2E9: 04        .byte $04   ; 
- D 3 - - - 0x0022FA 00:E2EA: 03        .byte $03   ; 
- D 3 - - - 0x0022FB 00:E2EB: 04        .byte $04   ; 
- D 3 - - - 0x0022FC 00:E2EC: 03        .byte $03   ; 
- D 3 - - - 0x0022FD 00:E2ED: 80        .byte $80   ; 
- - - - - - 0x0022FE 00:E2EE: 80        .byte $80   ; 
- D 3 - - - 0x0022FF 00:E2EF: FE        .byte $FE   ; 
- D 3 - - - 0x002300 00:E2F0: 06        .byte $06   ; 
- D 3 - - - 0x002301 00:E2F1: FD        .byte $FD   ; 
- D 3 - - - 0x002302 00:E2F2: 03        .byte $03   ; 
- D 3 - - - 0x002303 00:E2F3: 03        .byte $03   ; 
- D 3 - - - 0x002304 00:E2F4: 03        .byte $03   ; 
- D 3 - - - 0x002305 00:E2F5: 80        .byte $80   ; 
- - - - - - 0x002306 00:E2F6: 80        .byte $80   ; 
- D 3 - - - 0x002307 00:E2F7: FB        .byte $FB   ; 
- D 3 - - - 0x002308 00:E2F8: 06        .byte $06   ; 
- D 3 - - - 0x002309 00:E2F9: F9        .byte $F9   ; 
- D 3 - - - 0x00230A 00:E2FA: 0C        .byte $0C   ; 
- D 3 - - - 0x00230B 00:E2FB: F9        .byte $F9   ; 
- D 3 - - - 0x00230C 00:E2FC: 0C        .byte $0C   ; 
- D 3 - - - 0x00230D 00:E2FD: 80        .byte $80   ; 
- - - - - - 0x00230E 00:E2FE: 80        .byte $80   ; 
- D 3 - - - 0x00230F 00:E2FF: 02        .byte $02   ; 
- D 3 - - - 0x002310 00:E300: 08        .byte $08   ; 
- D 3 - - - 0x002311 00:E301: 0A        .byte $0A   ; 
- D 3 - - - 0x002312 00:E302: 04        .byte $04   ; 
- D 3 - - - 0x002313 00:E303: 0A        .byte $0A   ; 
- D 3 - - - 0x002314 00:E304: 04        .byte $04   ; 
- - - - - - 0x002315 00:E305: 80        .byte $80   ; 
- - - - - - 0x002316 00:E306: 08        .byte $08   ; 
- - - - - - 0x002317 00:E307: 80        .byte $80   ; 
- - - - - - 0x002318 00:E308: 0B        .byte $0B   ; 
- - - - - - 0x002319 00:E309: 80        .byte $80   ; 
- - - - - - 0x00231A 00:E30A: 06        .byte $06   ; 
- - - - - - 0x00231B 00:E30B: 80        .byte $80   ; 
- - - - - - 0x00231C 00:E30C: 06        .byte $06   ; 
- D 3 - - - 0x00231D 00:E30D: FE        .byte $FE   ; 
- D 3 - - - 0x00231E 00:E30E: 06        .byte $06   ; 
- D 3 - - - 0x00231F 00:E30F: FE        .byte $FE   ; 
- D 3 - - - 0x002320 00:E310: 06        .byte $06   ; 
- D 3 - - - 0x002321 00:E311: 00        .byte $00   ; 
- D 3 - - - 0x002322 00:E312: 04        .byte $04   ; 
- D 3 - - - 0x002323 00:E313: 00        .byte $00   ; 
- D 3 - - - 0x002324 00:E314: 04        .byte $04   ; 
- D 3 - - - 0x002325 00:E315: 04        .byte $04   ; 
- D 3 - - - 0x002326 00:E316: 07        .byte $07   ; 
- D 3 - - - 0x002327 00:E317: 01        .byte $01   ; 
- D 3 - - - 0x002328 00:E318: 0C        .byte $0C   ; 
- D 3 - - - 0x002329 00:E319: FD        .byte $FD   ; 
- D 3 - - - 0x00232A 00:E31A: 04        .byte $04   ; 
- D 3 - - - 0x00232B 00:E31B: 0B        .byte $0B   ; 
- D 3 - - - 0x00232C 00:E31C: 04        .byte $04   ; 
- D 3 - - - 0x00232D 00:E31D: 04        .byte $04   ; 
- D 3 - - - 0x00232E 00:E31E: 07        .byte $07   ; 
- D 3 - - - 0x00232F 00:E31F: 01        .byte $01   ; 
- D 3 - - - 0x002330 00:E320: 0C        .byte $0C   ; 
- D 3 - - - 0x002331 00:E321: 01        .byte $01   ; 
- D 3 - - - 0x002332 00:E322: 04        .byte $04   ; 
- D 3 - - - 0x002333 00:E323: 0B        .byte $0B   ; 
- D 3 - - - 0x002334 00:E324: 04        .byte $04   ; 
- D 3 - - - 0x002335 00:E325: 04        .byte $04   ; 
- D 3 - - - 0x002336 00:E326: 07        .byte $07   ; 
- D 3 - - - 0x002337 00:E327: 02        .byte $02   ; 
- D 3 - - - 0x002338 00:E328: 0B        .byte $0B   ; 
- D 3 - - - 0x002339 00:E329: 0A        .byte $0A   ; 
- D 3 - - - 0x00233A 00:E32A: 06        .byte $06   ; 
- D 3 - - - 0x00233B 00:E32B: 0A        .byte $0A   ; 
- D 3 - - - 0x00233C 00:E32C: 06        .byte $06   ; 
- - - - - - 0x00233D 00:E32D: FC        .byte $FC   ; 
- - - - - - 0x00233E 00:E32E: 07        .byte $07   ; 
- D 3 - - - 0x00233F 00:E32F: FA        .byte $FA   ; 
- D 3 - - - 0x002340 00:E330: 0B        .byte $0B   ; 
- - - - - - 0x002341 00:E331: FF        .byte $FF   ; 
- - - - - - 0x002342 00:E332: 04        .byte $04   ; 
- - - - - - 0x002343 00:E333: FF        .byte $FF   ; 
- - - - - - 0x002344 00:E334: 04        .byte $04   ; 
- D 3 - - - 0x002345 00:E335: FC        .byte $FC   ; 
- D 3 - - - 0x002346 00:E336: 07        .byte $07   ; 
- D 3 - - - 0x002347 00:E337: 02        .byte $02   ; 
- D 3 - - - 0x002348 00:E338: 0B        .byte $0B   ; 
- D 3 - - - 0x002349 00:E339: F4        .byte $F4   ; 
- D 3 - - - 0x00234A 00:E33A: 04        .byte $04   ; 
- D 3 - - - 0x00234B 00:E33B: 08        .byte $08   ; 
- D 3 - - - 0x00234C 00:E33C: 04        .byte $04   ; 
- D 3 - - - 0x00234D 00:E33D: 80        .byte $80   ; 
- - - - - - 0x00234E 00:E33E: 07        .byte $07   ; 
- D 3 - - - 0x00234F 00:E33F: 01        .byte $01   ; 
- D 3 - - - 0x002350 00:E340: 0B        .byte $0B   ; 
- D 3 - - - 0x002351 00:E341: 08        .byte $08   ; 
- D 3 - - - 0x002352 00:E342: 04        .byte $04   ; 
- D 3 - - - 0x002353 00:E343: 80        .byte $80   ; 
- - - - - - 0x002354 00:E344: 00        .byte $00   ; 
- D 3 - - - 0x002355 00:E345: 04        .byte $04   ; 
- D 3 - - - 0x002356 00:E346: 07        .byte $07   ; 
- D 3 - - - 0x002357 00:E347: F9        .byte $F9   ; 
- D 3 - - - 0x002358 00:E348: 0B        .byte $0B   ; 
- D 3 - - - 0x002359 00:E349: 08        .byte $08   ; 
- D 3 - - - 0x00235A 00:E34A: 06        .byte $06   ; 
- D 3 - - - 0x00235B 00:E34B: 81        .byte $81   ; 
- D 3 - - - 0x00235C 00:E34C: 00        .byte $00   ; 
- - - - - - 0x00235D 00:E34D: 80        .byte $80   ; 
- - - - - - 0x00235E 00:E34E: 00        .byte $00   ; 
- - - - - - 0x00235F 00:E34F: 80        .byte $80   ; 
- - - - - - 0x002360 00:E350: 0B        .byte $0B   ; 
- - - - - - 0x002361 00:E351: 80        .byte $80   ; 
- - - - - - 0x002362 00:E352: 06        .byte $06   ; 
- - - - - - 0x002363 00:E353: 80        .byte $80   ; 
- - - - - - 0x002364 00:E354: 06        .byte $06   ; 
- D 3 - - - 0x002365 00:E355: ED        .byte $ED   ; 
- D 3 - - - 0x002366 00:E356: 07        .byte $07   ; 
- D 3 - - - 0x002367 00:E357: ED        .byte $ED   ; 
- D 3 - - - 0x002368 00:E358: 07        .byte $07   ; 
- - - - - - 0x002369 00:E359: 80        .byte $80   ; 
- - - - - - 0x00236A 00:E35A: 00        .byte $00   ; 
- D 3 - - - 0x00236B 00:E35B: 80        .byte $80   ; 
- - - - - - 0x00236C 00:E35C: 00        .byte $00   ; 



tbl_E35D:
; if 1st byte = 80, then 2nd and 3rd are not read
- D 3 - - - 0x00236D 00:E35D: 80        .byte $80, $80, $80   ; 
- D 3 - - - 0x002370 00:E360: 80        .byte $80, $80, $80   ; 
- D 3 - - - 0x002373 00:E363: 80        .byte $80, $80, $80   ; 
- D 3 - - - 0x002376 00:E366: E8        .byte $E8, $06, $01   ; 
- D 3 - - - 0x002379 00:E369: E6        .byte $E6, $06, $02   ; 
- D 3 - - - 0x00237C 00:E36C: E9        .byte $E9, $06, $03   ; 
- D 3 - - - 0x00237F 00:E36F: E9        .byte $E9, $06, $02   ; 
- - - - - - 0x002382 00:E372: 80        .byte $80, $80, $80   ; 
- - - - - - 0x002385 00:E375: 80        .byte $80, $80, $80   ; 
- D 3 - - - 0x002388 00:E378: 80        .byte $80, $80, $80   ; 
- D 3 - - - 0x00238B 00:E37B: 80        .byte $80, $80, $80   ; 
- D 3 - - - 0x00238E 00:E37E: 80        .byte $80, $80, $80   ; 
- D 3 - - - 0x002391 00:E381: 80        .byte $80, $80, $80   ; 
- D 3 - - - 0x002394 00:E384: 80        .byte $80, $80, $80   ; 
- D 3 - - - 0x002397 00:E387: 80        .byte $80, $80, $80   ; 
- D 3 - - - 0x00239A 00:E38A: EA        .byte $EA, $03, $02   ; 
- - - - - - 0x00239D 00:E38D: 80        .byte $80, $80, $80   ; 
- D 3 - - - 0x0023A0 00:E390: F3        .byte $F3, $03, $01   ; 
- D 3 - - - 0x0023A3 00:E393: 80        .byte $80, $80, $80   ; 
- D 3 - - - 0x0023A6 00:E396: 80        .byte $80, $80, $80   ; 
- D 3 - - - 0x0023A9 00:E399: 80        .byte $80, $80, $80   ; 
- D 3 - - - 0x0023AC 00:E39C: F1        .byte $F1, $03, $01   ; 
- D 3 - - - 0x0023AF 00:E39F: F0        .byte $F0, $03, $02   ; 
- D 3 - - - 0x0023B2 00:E3A2: F0        .byte $F0, $03, $03   ; 
- D 3 - - - 0x0023B5 00:E3A5: E9        .byte $E9, $03, $01   ; 
- - - - - - 0x0023B8 00:E3A8: 80        .byte $80, $80, $80   ; 
- - - - - - 0x0023BB 00:E3AB: 80        .byte $80, $80, $80   ; 
- D 3 - - - 0x0023BE 00:E3AE: 80        .byte $80, $80, $00   ; 
- D 3 - - - 0x0023C1 00:E3B1: 80        .byte $80, $80, $80   ; 
- D 3 - - - 0x0023C4 00:E3B4: 80        .byte $80, $80, $80   ; 
- D 3 - - - 0x0023C7 00:E3B7: F0        .byte $F0, $04, $01   ; 
- D 3 - - - 0x0023CA 00:E3BA: F6        .byte $F6, $03, $02   ; 
- D 3 - - - 0x0023CD 00:E3BD: F3        .byte $F3, $03, $03   ; 
- D 3 - - - 0x0023D0 00:E3C0: F3        .byte $F3, $03, $03   ; 
- - - - - - 0x0023D3 00:E3C3: 80        .byte $80, $80, $80   ; 
- D 3 - - - 0x0023D6 00:E3C6: F6        .byte $F6, $03, $01   ; 
- D 3 - - - 0x0023D9 00:E3C9: 80        .byte $80, $80, $80   ; 
- D 3 - - - 0x0023DC 00:E3CC: 80        .byte $80, $80, $80   ; 
- D 3 - - - 0x0023DF 00:E3CF: 80        .byte $80, $80, $80   ; 
- D 3 - - - 0x0023E2 00:E3D2: E9        .byte $E9, $03, $01   ; 
- D 3 - - - 0x0023E5 00:E3D5: F1        .byte $F1, $03, $01   ; 
- D 3 - - - 0x0023E8 00:E3D8: EB        .byte $EB, $03, $03   ; 
- D 3 - - - 0x0023EB 00:E3DB: EB        .byte $EB, $03, $02   ; 
- - - - - - 0x0023EE 00:E3DE: 80        .byte $80, $80, $80   ; 
- D 3 - - - 0x0023F1 00:E3E1: E1        .byte $E1, $03, $04   ; 



tbl_E3E4:
; if 1st byte = 80, then 2nd and 3rd are not read
- D 3 - - - 0x0023F4 00:E3E4: FD        .byte $FD, $07, $FC   ; 
- D 3 - - - 0x0023F7 00:E3E7: 08        .byte $08, $FC, $04   ; 
- D 3 - - - 0x0023FA 00:E3EA: 01        .byte $01, $04, $FD   ; 
- D 3 - - - 0x0023FD 00:E3ED: 07        .byte $07, $FC, $08   ; 
- D 3 - - - 0x002400 00:E3F0: F8        .byte $F8, $04, $04   ; 
- D 3 - - - 0x002403 00:E3F3: 04        .byte $04, $0A, $07   ; 
- D 3 - - - 0x002406 00:E3F6: 09        .byte $09, $09, $01   ; 
- D 3 - - - 0x002409 00:E3F9: 07        .byte $07, $11, $04   ; 
- D 3 - - - 0x00240C 00:E3FC: 06        .byte $06, $07, $09   ; 
- D 3 - - - 0x00240F 00:E3FF: 09        .byte $09, $04, $05   ; 
- D 3 - - - 0x002412 00:E402: 80        .byte $80, $80, $80   ; 
- - - - - - 0x002415 00:E405: 07        .byte $07, $FD, $06   ; 
- D 3 - - - 0x002418 00:E408: FB        .byte $FB, $0C, $FB   ; 
- D 3 - - - 0x00241B 00:E40B: 0C        .byte $0C, $80, $07   ; 
- D 3 - - - 0x00241E 00:E40E: FC        .byte $FC, $0C, $FC   ; 
- D 3 - - - 0x002421 00:E411: 0D        .byte $0D, $FC, $0D   ; 
- D 3 - - - 0x002424 00:E414: 80        .byte $80, $07, $FE   ; 
- D 3 - - - 0x002427 00:E417: 09        .byte $09, $FD, $08   ; 
- D 3 - - - 0x00242A 00:E41A: 80        .byte $80, $80, $05   ; 
- D 3 - - - 0x00242D 00:E41D: 07        .byte $07, $08, $09   ; 
- D 3 - - - 0x002430 00:E420: 03        .byte $03, $06, $80   ; 
- - - - - - 0x002433 00:E423: 06        .byte $06, $80, $07   ; 
- D 3 - - - 0x002436 00:E426: 09        .byte $09, $08, $FE   ; 
- - - - - - 0x002439 00:E429: 06        .byte $06, $10, $06   ; 



tbl_E42C:
; if 1st byte = 80, then 2nd and 3rd are not read
- D 3 - - - 0x00243C 00:E42C: 80        .byte $80, $80, $80   ; 
- D 3 - - - 0x00243F 00:E42F: 80        .byte $80, $80, $80   ; 
- D 3 - - - 0x002442 00:E432: 18        .byte $18, $05, $02   ; 
- D 3 - - - 0x002445 00:E435: 1D        .byte $1D, $04, $03   ; 
- D 3 - - - 0x002448 00:E438: 80        .byte $80, $80, $80   ; 
- D 3 - - - 0x00244B 00:E43B: 13        .byte $13, $03, $01   ; 
- D 3 - - - 0x00244E 00:E43E: 1A        .byte $1A, $04, $03   ; 
- D 3 - - - 0x002451 00:E441: 1D        .byte $1D, $04, $01   ; 
- D 3 - - - 0x002454 00:E444: 18        .byte $18, $05, $02   ; 



sub_E447:
C - - - - - 0x002457 00:E447: A5 CF     LDA ram_00CF
C - - - - - 0x002459 00:E449: D0 28     BNE bra_E473
C - - - - - 0x00245B 00:E44B: A5 CB     LDA ram_00CB
C - - - - - 0x00245D 00:E44D: 38        SEC
C - - - - - 0x00245E 00:E44E: E5 BB     SBC ram_pos_X_player
loc_E450:
C D 3 - - - 0x002460 00:E450: 85 7F     STA ram_007F
C - - - - - 0x002462 00:E452: A6 68     LDX ram_enemy_type
C - - - - - 0x002464 00:E454: A9 00     LDA #$00
bra_E456:
C - - - - - 0x002466 00:E456: E0 00     CPX #$00
C - - - - - 0x002468 00:E458: F0 06     BEQ bra_E460
C - - - - - 0x00246A 00:E45A: 18        CLC
C - - - - - 0x00246B 00:E45B: 69 06     ADC #$06
C - - - - - 0x00246D 00:E45D: CA        DEX
C - - - - - 0x00246E 00:E45E: D0 F6     BNE bra_E456
bra_E460:
C - - - - - 0x002470 00:E460: AA        TAX
C - - - - - 0x002471 00:E461: A0 00     LDY #$00
bra_E463:
C - - - - - 0x002473 00:E463: BD 7E E4  LDA tbl_E47E,X
C - - - - - 0x002476 00:E466: 38        SEC
C - - - - - 0x002477 00:E467: E5 7F     SBC ram_007F
C - - - - - 0x002479 00:E469: B0 10     BCS bra_E47B
C - - - - - 0x00247B 00:E46B: C8        INY
C - - - - - 0x00247C 00:E46C: E8        INX
C - - - - - 0x00247D 00:E46D: C0 06     CPY #$06
C - - - - - 0x00247F 00:E46F: B0 0A     BCS bra_E47B
C - - - - - 0x002481 00:E471: 90 F0     BCC bra_E463
bra_E473:
C - - - - - 0x002483 00:E473: A5 BB     LDA ram_pos_X_player
C - - - - - 0x002485 00:E475: 38        SEC
C - - - - - 0x002486 00:E476: E5 CB     SBC ram_00CB
C - - - - - 0x002488 00:E478: 4C 50 E4  JMP loc_E450
bra_E47B:
C - - - - - 0x00248B 00:E47B: 84 D6     STY ram_dist_betw_fighters
C - - - - - 0x00248D 00:E47D: 60        RTS



tbl_E47E:
- D 3 - - - 0x00248E 00:E47E: 0E        .byte $0E   ; 
- D 3 - - - 0x00248F 00:E47F: 24        .byte $24   ; 
- D 3 - - - 0x002490 00:E480: 30        .byte $30   ; 
- D 3 - - - 0x002491 00:E481: 48        .byte $48   ; 
- D 3 - - - 0x002492 00:E482: 50        .byte $50   ; 
- D 3 - - - 0x002493 00:E483: 70        .byte $70   ; 
- D 3 - - - 0x002494 00:E484: 0A        .byte $0A   ; 
- D 3 - - - 0x002495 00:E485: 14        .byte $14   ; 
- D 3 - - - 0x002496 00:E486: 2C        .byte $2C   ; 
- D 3 - - - 0x002497 00:E487: 40        .byte $40   ; 
- D 3 - - - 0x002498 00:E488: 50        .byte $50   ; 
- D 3 - - - 0x002499 00:E489: 70        .byte $70   ; 
- D 3 - - - 0x00249A 00:E48A: 0C        .byte $0C   ; 
- D 3 - - - 0x00249B 00:E48B: 23        .byte $23   ; 
- D 3 - - - 0x00249C 00:E48C: 30        .byte $30   ; 
- D 3 - - - 0x00249D 00:E48D: 40        .byte $40   ; 
- D 3 - - - 0x00249E 00:E48E: 50        .byte $50   ; 
- D 3 - - - 0x00249F 00:E48F: 70        .byte $70   ; 
- D 3 - - - 0x0024A0 00:E490: 0B        .byte $0B   ; 
- D 3 - - - 0x0024A1 00:E491: 15        .byte $15   ; 
- D 3 - - - 0x0024A2 00:E492: 23        .byte $23   ; 
- D 3 - - - 0x0024A3 00:E493: 3C        .byte $3C   ; 
- D 3 - - - 0x0024A4 00:E494: 58        .byte $58   ; 
- D 3 - - - 0x0024A5 00:E495: 70        .byte $70   ; 
- D 3 - - - 0x0024A6 00:E496: 15        .byte $15   ; 
- D 3 - - - 0x0024A7 00:E497: 20        .byte $20   ; 
- D 3 - - - 0x0024A8 00:E498: 38        .byte $38   ; 
- D 3 - - - 0x0024A9 00:E499: 45        .byte $45   ; 
- D 3 - - - 0x0024AA 00:E49A: 60        .byte $60   ; 
- D 3 - - - 0x0024AB 00:E49B: 70        .byte $70   ; 



sub_E49C:
C - - - - - 0x0024AC 00:E49C: E6 C1     INC ram_00C1
C - - - - - 0x0024AE 00:E49E: A5 B8     LDA ram_00B8
C - - - - - 0x0024B0 00:E4A0: D0 17     BNE bra_E4B9_RTS
C - - - - - 0x0024B2 00:E4A2: A5 A4     LDA ram_00A4
C - - - - - 0x0024B4 00:E4A4: C9 81     CMP #$81
C - - - - - 0x0024B6 00:E4A6: B0 11     BCS bra_E4B9_RTS
C - - - - - 0x0024B8 00:E4A8: A5 AD     LDA ram_00AD
C - - - - - 0x0024BA 00:E4AA: 05 EE     ORA ram_00EE
C - - - - - 0x0024BC 00:E4AC: 05 ED     ORA ram_00ED
C - - - - - 0x0024BE 00:E4AE: 05 C9     ORA ram_00C9
C - - - - - 0x0024C0 00:E4B0: 05 E5     ORA ram_00E5
C - - - - - 0x0024C2 00:E4B2: D0 02     BNE bra_E4B6
C - - - - - 0x0024C4 00:E4B4: F0 04     BEQ bra_E4BA
bra_E4B6:
C - - - - - 0x0024C6 00:E4B6: 4C 5F E7  JMP loc_E75F
bra_E4B9_RTS:
C - - - - - 0x0024C9 00:E4B9: 60        RTS
bra_E4BA:
C - - - - - 0x0024CA 00:E4BA: 20 47 E4  JSR sub_E447
C - - - - - 0x0024CD 00:E4BD: A5 CE     LDA ram_enemy_animation
C - - - - - 0x0024CF 00:E4BF: C9 02     CMP #$02
C - - - - - 0x0024D1 00:E4C1: 90 03     BCC bra_E4C6
C - - - - - 0x0024D3 00:E4C3: 4C 4D E5  JMP loc_E54D
bra_E4C6:
C - - - - - 0x0024D6 00:E4C6: A5 D6     LDA ram_dist_betw_fighters
C - - - - - 0x0024D8 00:E4C8: D0 07     BNE bra_E4D1
C - - - - - 0x0024DA 00:E4CA: A9 05     LDA #$05
C - - - - - 0x0024DC 00:E4CC: 85 C2     STA ram_00C2
C - - - - - 0x0024DE 00:E4CE: 4C B4 E8  JMP loc_E8B4
bra_E4D1:
C - - - - - 0x0024E1 00:E4D1: A5 F8     LDA ram_00F8
C - - - - - 0x0024E3 00:E4D3: A6 50     LDX ram_game_mode
C - - - - - 0x0024E5 00:E4D5: F0 06     BEQ bra_E4DD_lvl_1
C - - - - - 0x0024E7 00:E4D7: 8A        TXA
C - - - - - 0x0024E8 00:E4D8: E8        INX
C - - - - - 0x0024E9 00:E4D9: E8        INX
C - - - - - 0x0024EA 00:E4DA: E8        INX
C - - - - - 0x0024EB 00:E4DB: E8        INX
C - - - - - 0x0024EC 00:E4DC: AA        TAX
bra_E4DD_lvl_1:
C - - - - - 0x0024ED 00:E4DD: C9 04     CMP #$04
C - - - - - 0x0024EF 00:E4DF: B0 0C     BCS bra_E4ED
C - - - - - 0x0024F1 00:E4E1: C9 02     CMP #$02
C - - - - - 0x0024F3 00:E4E3: B0 02     BCS bra_E4E7
C - - - - - 0x0024F5 00:E4E5: 90 26     BCC bra_E50D
bra_E4E7:
- - - - - - 0x0024F7 00:E4E7: A5 DC     LDA ram_hp_enemy
- - - - - - 0x0024F9 00:E4E9: C9 06     CMP #$06
- - - - - - 0x0024FB 00:E4EB: 90 20     BCC bra_E50D
bra_E4ED:
- - - - - - 0x0024FD 00:E4ED: A5 D6     LDA ram_dist_betw_fighters
- - - - - - 0x0024FF 00:E4EF: C9 03     CMP #$03
- - - - - - 0x002501 00:E4F1: B0 1A     BCS bra_E50D
- - - - - - 0x002503 00:E4F3: A5 BD     LDA ram_jump_timer
- - - - - - 0x002505 00:E4F5: F0 16     BEQ bra_E50D
- - - - - - 0x002507 00:E4F7: C9 0B     CMP #$0B
- - - - - - 0x002509 00:E4F9: B0 12     BCS bra_E50D
- - - - - - 0x00250B 00:E4FB: A9 0A     LDA #$0A
- - - - - - 0x00250D 00:E4FD: 85 C2     STA ram_00C2
- - - - - - 0x00250F 00:E4FF: A9 05     LDA #$05
- - - - - - 0x002511 00:E501: 85 CE     STA ram_enemy_animation
- - - - - - 0x002513 00:E503: 85 7C     STA ram_007C
bra_E505:
C - - - - - 0x002515 00:E505: 4C 5F E7  JMP loc_E75F
bra_E508:
C - - - - - 0x002518 00:E508: E6 6D     INC ram_006D
C - - - - - 0x00251A 00:E50A: 4C 41 E6  JMP loc_E641
bra_E50D:
C - - - - - 0x00251D 00:E50D: A5 CF     LDA ram_00CF
C - - - - - 0x00251F 00:E50F: 85 72     STA ram_enemy_facing_direction
C - - - - - 0x002521 00:E511: A5 6D     LDA ram_006D
C - - - - - 0x002523 00:E513: 29 0F     AND #$0F
C - - - - - 0x002525 00:E515: C9 06     CMP #$06
C - - - - - 0x002527 00:E517: F0 EF     BEQ bra_E508
C - - - - - 0x002529 00:E519: C9 04     CMP #$04
C - - - - - 0x00252B 00:E51B: F0 77     BEQ bra_E594
C - - - - - 0x00252D 00:E51D: C9 0D     CMP #$0D
C - - - - - 0x00252F 00:E51F: B0 73     BCS bra_E594
C - - - - - 0x002531 00:E521: A5 C2     LDA ram_00C2
C - - - - - 0x002533 00:E523: D0 06     BNE bra_E52B
C - - - - - 0x002535 00:E525: A5 09     LDA ram_0009
C - - - - - 0x002537 00:E527: 29 1F     AND #$1F
C - - - - - 0x002539 00:E529: F0 69     BEQ bra_E594
bra_E52B:
C - - - - - 0x00253B 00:E52B: A6 F8     LDX ram_00F8
C - - - - - 0x00253D 00:E52D: E0 05     CPX #$05
C - - - - - 0x00253F 00:E52F: 90 02     BCC bra_E533
C - - - - - 0x002541 00:E531: A2 05     LDX #$05
bra_E533:
C - - - - - 0x002543 00:E533: A5 0F     LDA ram_000F
C - - - - - 0x002545 00:E535: DD 83 E5  CMP tbl_E583,X
C - - - - - 0x002548 00:E538: 90 13     BCC bra_E54D
C - - - - - 0x00254A 00:E53A: A5 D6     LDA ram_dist_betw_fighters
C - - - - - 0x00254C 00:E53C: C9 01     CMP #$01
C - - - - - 0x00254E 00:E53E: D0 0D     BNE bra_E54D
C - - - - - 0x002550 00:E540: E6 6D     INC ram_006D
C - - - - - 0x002552 00:E542: A5 0F     LDA ram_000F
C - - - - - 0x002554 00:E544: 29 04     AND #$04
C - - - - - 0x002556 00:E546: F0 13     BEQ bra_E55B
C - - - - - 0x002558 00:E548: D0 0D     BNE bra_E557


; bzk garbage
- - - - - - 0x00255A 00:E54A: 4C 9E E5  JMP loc_E59E



bra_E54D:
loc_E54D:
C D 3 - - - 0x00255D 00:E54D: A5 7B     LDA ram_007B
C - - - - - 0x00255F 00:E54F: C9 02     CMP #$02
C - - - - - 0x002561 00:E551: F0 08     BEQ bra_E55B
C - - - - - 0x002563 00:E553: C9 03     CMP #$03
C - - - - - 0x002565 00:E555: D0 13     BNE bra_E56A
bra_E557:
C - - - - - 0x002567 00:E557: A9 03     LDA #$03
C - - - - - 0x002569 00:E559: D0 02     BNE bra_E55D
bra_E55B:
C - - - - - 0x00256B 00:E55B: A9 02     LDA #$02
bra_E55D:
C - - - - - 0x00256D 00:E55D: 85 C3     STA ram_00C3
C - - - - - 0x00256F 00:E55F: A9 00     LDA #$00
C - - - - - 0x002571 00:E561: 85 7B     STA ram_007B
C - - - - - 0x002573 00:E563: 20 0D EC  JSR sub_EC0D
C - - - - - 0x002576 00:E566: 20 D8 EB  JSR sub_EBD8
C - - - - - 0x002579 00:E569: 60        RTS
bra_E56A:
C - - - - - 0x00257A 00:E56A: A5 C2     LDA ram_00C2
C - - - - - 0x00257C 00:E56C: D0 97     BNE bra_E505
C - - - - - 0x00257E 00:E56E: E6 6D     INC ram_006D
C - - - - - 0x002580 00:E570: A5 D6     LDA ram_dist_betw_fighters
C - - - - - 0x002582 00:E572: 20 E9 D0  JSR sub_D0E9_read_pointers_after_JSR
- D 3 - I - 0x002585 00:E575: 36 E6     .word ofs_007_E636_00
- D 3 - I - 0x002587 00:E577: 89 E5     .word ofs_007_E589_01
- D 3 - I - 0x002589 00:E579: 89 E5     .word ofs_007_E589_02
- D 3 - I - 0x00258B 00:E57B: 8C E5     .word ofs_007_E58C_03
- D 3 - I - 0x00258D 00:E57D: 4B E6     .word ofs_007_E64B_04
- D 3 - I - 0x00258F 00:E57F: 9E E5     .word ofs_007_E59E_05
- D 3 - I - 0x002591 00:E581: 9B E5     .word ofs_007_E59B_06



tbl_E583:
- D 3 - - - 0x002593 00:E583: A0        .byte $A0   ; 00
- D 3 - - - 0x002594 00:E584: 80        .byte $80   ; 01
- D 3 - - - 0x002595 00:E585: 70        .byte $70   ; 02
- D 3 - - - 0x002596 00:E586: 60        .byte $60   ; 03
- D 3 - - - 0x002597 00:E587: 40        .byte $40   ; 04
- D 3 - - - 0x002598 00:E588: 30        .byte $30   ; 05



ofs_007_E589_01:    ; bzk optimize
ofs_007_E589_02:
C - - J - - 0x002599 00:E589: 4C D8 EB  JMP loc_EBD8



ofs_007_E58C_03:
C - - J - - 0x00259C 00:E58C: A5 09     LDA ram_0009
C - - - - - 0x00259E 00:E58E: 4A        LSR
C - - - - - 0x00259F 00:E58F: 4A        LSR
C - - - - - 0x0025A0 00:E590: B0 02     BCS bra_E594
C - - - - - 0x0025A2 00:E592: 90 0A     BCC bra_E59E
bra_E594:
C - - - - - 0x0025A4 00:E594: A9 00     LDA #$00
C - - - - - 0x0025A6 00:E596: 85 6D     STA ram_006D
C - - - - - 0x0025A8 00:E598: 4C 4B E6  JMP loc_E64B



ofs_007_E59B_06:    ; bzk optimize
C - - J - - 0x0025AB 00:E59B: 4C 4B E6  JMP loc_E64B



bra_E59E:
loc_E59E:
ofs_007_E59E_05:
C - - J - - 0x0025AE 00:E59E: A5 68     LDA ram_enemy_type
C - - - - - 0x0025B0 00:E5A0: 20 E9 D0  JSR sub_D0E9_read_pointers_after_JSR
- D 3 - I - 0x0025B3 00:E5A3: AD E5     .word ofs_008_E5AD_00
- D 3 - I - 0x0025B5 00:E5A5: B8 E6     .word ofs_008_E6B8_01
- D 3 - I - 0x0025B7 00:E5A7: B0 E5     .word ofs_008_E5B0_02
- D 3 - I - 0x0025B9 00:E5A9: F4 E5     .word ofs_008_E5F4_03
- D 3 - I - 0x0025BB 00:E5AB: F7 E5     .word ofs_008_E5F7_04



ofs_008_E5AD_00:    ; bzk optimize
C - - J - - 0x0025BD 00:E5AD: 4C 4B E6  JMP loc_E64B



ofs_008_E5B0_02:
C - - J - - 0x0025C0 00:E5B0: AD 00 07  LDA ram_0700
C - - - - - 0x0025C3 00:E5B3: F0 05     BEQ bra_E5BA
C - - - - - 0x0025C5 00:E5B5: CE 00 07  DEC ram_0700
C - - - - - 0x0025C8 00:E5B8: 10 37     BPL bra_E5F1
bra_E5BA:
C - - - - - 0x0025CA 00:E5BA: A5 B8     LDA ram_00B8
C - - - - - 0x0025CC 00:E5BC: F0 01     BEQ bra_E5BF
- - - - - - 0x0025CE 00:E5BE: 60        RTS
bra_E5BF:
C - - - - - 0x0025CF 00:E5BF: A5 A4     LDA ram_00A4
C - - - - - 0x0025D1 00:E5C1: D0 2E     BNE bra_E5F1
C - - - - - 0x0025D3 00:E5C3: 20 1C E7  JSR sub_E71C
C - - - - - 0x0025D6 00:E5C6: C0 00     CPY #$00
C - - - - - 0x0025D8 00:E5C8: F0 27     BEQ bra_E5F1
C - - - - - 0x0025DA 00:E5CA: A5 09     LDA ram_0009
C - - - - - 0x0025DC 00:E5CC: 29 30     AND #$30
C - - - - - 0x0025DE 00:E5CE: F0 7B     BEQ bra_E64B
C - - - - - 0x0025E0 00:E5D0: A9 80     LDA #$80
C - - - - - 0x0025E2 00:E5D2: 85 A4     STA ram_00A4
C - - - - - 0x0025E4 00:E5D4: 20 64 EA  JSR sub_EA64
C - - - - - 0x0025E7 00:E5D7: BD 7F EA  LDA tbl_EA7F,X
C - - - - - 0x0025EA 00:E5DA: 85 C2     STA ram_00C2
C - - - - - 0x0025EC 00:E5DC: E6 74     INC ram_0074
C - - - - - 0x0025EE 00:E5DE: A5 74     LDA ram_0074
C - - - - - 0x0025F0 00:E5E0: C9 03     CMP #$03
C - - - - - 0x0025F2 00:E5E2: 90 04     BCC bra_E5E8
C - - - - - 0x0025F4 00:E5E4: A9 00     LDA #$00
C - - - - - 0x0025F6 00:E5E6: 85 74     STA ram_0074
bra_E5E8:
C - - - - - 0x0025F8 00:E5E8: 18        CLC
C - - - - - 0x0025F9 00:E5E9: 69 03     ADC #$03
C - - - - - 0x0025FB 00:E5EB: 85 7C     STA ram_007C
C - - - - - 0x0025FD 00:E5ED: A9 02     LDA #$02
C - - - - - 0x0025FF 00:E5EF: 85 CE     STA ram_enemy_animation
bra_E5F1:
C - - - - - 0x002601 00:E5F1: 4C 5F E7  JMP loc_E75F



ofs_008_E5F4_03:    ; bzk optimize
C - - J - - 0x002604 00:E5F4: 4C 56 E6  JMP loc_E656



ofs_008_E5F7_04:
C - - J - - 0x002607 00:E5F7: A5 C1     LDA ram_00C1
C - - - - - 0x002609 00:E5F9: 29 0E     AND #$0E
C - - - - - 0x00260B 00:E5FB: D0 02     BNE bra_E5FF
C - - - - - 0x00260D 00:E5FD: 90 F2     BCC bra_E5F1
bra_E5FF:
C - - - - - 0x00260F 00:E5FF: A5 0F     LDA ram_000F
C - - - - - 0x002611 00:E601: 0A        ASL
C - - - - - 0x002612 00:E602: 0A        ASL
C - - - - - 0x002613 00:E603: 0A        ASL
C - - - - - 0x002614 00:E604: B0 08     BCS bra_E60E
C - - - - - 0x002616 00:E606: 0A        ASL
C - - - - - 0x002617 00:E607: B0 08     BCS bra_E611
C - - - - - 0x002619 00:E609: 0A        ASL
C - - - - - 0x00261A 00:E60A: B0 08     BCS bra_E614
C - - - - - 0x00261C 00:E60C: 90 E3     BCC bra_E5F1
bra_E60E:
C - - - - - 0x00261E 00:E60E: A9 1F     LDA #$1F
C - - - - - 0x002620 00:E610: 2C        .byte $2C   ; BIT
bra_E611:
C - - - - - 0x002621 00:E611: A9 12     LDA #$12
C - - - - - 0x002623 00:E613: 2C        .byte $2C   ; BIT
bra_E614:
C - - - - - 0x002624 00:E614: A9 1C     LDA #$1C
C - - - - - 0x002626 00:E616: 85 EE     STA ram_00EE
C - - - - - 0x002628 00:E618: A5 0F     LDA ram_000F
C - - - - - 0x00262A 00:E61A: 29 88     AND #$88
C - - - - - 0x00262C 00:E61C: D0 03     BNE bra_E621
C - - - - - 0x00262E 00:E61E: A9 40     LDA #$40
C - - - - - 0x002630 00:E620: 2C        .byte $2C   ; BIT
bra_E621:
C - - - - - 0x002631 00:E621: A9 80     LDA #$80
C - - - - - 0x002633 00:E623: 05 EE     ORA ram_00EE
C - - - - - 0x002635 00:E625: 85 EE     STA ram_00EE
C - - - - - 0x002637 00:E627: 20 64 EA  JSR sub_EA64
C - - - - - 0x00263A 00:E62A: BD 7F EA  LDA tbl_EA7F,X
C - - - - - 0x00263D 00:E62D: 85 C2     STA ram_00C2
C - - - - - 0x00263F 00:E62F: A9 02     LDA #$02
C - - - - - 0x002641 00:E631: 85 CE     STA ram_enemy_animation
C - - - - - 0x002643 00:E633: 4C 5F E7  JMP loc_E75F



ofs_007_E636_00:
C - - J - - 0x002646 00:E636: A5 BD     LDA ram_jump_timer
C - - - - - 0x002648 00:E638: D0 0E     BNE bra_E648
C - - - - - 0x00264A 00:E63A: A5 68     LDA ram_enemy_type
C - - - - - 0x00264C 00:E63C: F0 B3     BEQ bra_E5F1
C - - - - - 0x00264E 00:E63E: 4C B4 E8  JMP loc_E8B4



loc_E641:
C D 3 - - - 0x002651 00:E641: A5 CF     LDA ram_00CF
C - - - - - 0x002653 00:E643: F0 0E     BEQ bra_E653
bra_E645:
C - - - - - 0x002655 00:E645: 4C 3B E8  JMP loc_E83B



bra_E648:
C - - - - - 0x002658 00:E648: 4C B4 E8  JMP loc_E8B4



bra_E64B:
loc_E64B:
ofs_007_E64B_04:
C D 3 - - - 0x00265B 00:E64B: A9 01     LDA #$01
C - - - - - 0x00265D 00:E64D: 85 CE     STA ram_enemy_animation
C - - - - - 0x00265F 00:E64F: A5 CF     LDA ram_00CF
C - - - - - 0x002661 00:E651: F0 F2     BEQ bra_E645
bra_E653:
C - - - - - 0x002663 00:E653: 4C 19 E8  JMP loc_E819



loc_E656:
C D 3 - - - 0x002666 00:E656: AD 00 07  LDA ram_0700
C - - - - - 0x002669 00:E659: F0 05     BEQ bra_E660
C - - - - - 0x00266B 00:E65B: CE 00 07  DEC ram_0700
C - - - - - 0x00266E 00:E65E: 10 2A     BPL bra_E68A
bra_E660:
C - - - - - 0x002670 00:E660: 20 4A E7  JSR sub_E74A
C - - - - - 0x002673 00:E663: C0 00     CPY #$00
C - - - - - 0x002675 00:E665: F0 23     BEQ bra_E68A
C - - - - - 0x002677 00:E667: 20 1C E7  JSR sub_E71C
C - - - - - 0x00267A 00:E66A: C0 00     CPY #$00
C - - - - - 0x00267C 00:E66C: F0 1C     BEQ bra_E68A
C - - - - - 0x00267E 00:E66E: E6 74     INC ram_0074
C - - - - - 0x002680 00:E670: A5 74     LDA ram_0074
C - - - - - 0x002682 00:E672: C9 07     CMP #$07
C - - - - - 0x002684 00:E674: B0 0E     BCS bra_E684
C - - - - - 0x002686 00:E676: 29 03     AND #$03
C - - - - - 0x002688 00:E678: C9 01     CMP #$01
C - - - - - 0x00268A 00:E67A: F0 11     BEQ bra_E68D
C - - - - - 0x00268C 00:E67C: C9 02     CMP #$02
C - - - - - 0x00268E 00:E67E: F0 16     BEQ bra_E696
C - - - - - 0x002690 00:E680: C9 03     CMP #$03
C - - - - - 0x002692 00:E682: F0 21     BEQ bra_E6A5
bra_E684:
C - - - - - 0x002694 00:E684: C9 0A     CMP #$0A
C - - - - - 0x002696 00:E686: B0 02     BCS bra_E68A
C - - - - - 0x002698 00:E688: 85 74     STA ram_0074
bra_E68A:
C - - - - - 0x00269A 00:E68A: 4C 5F E7  JMP loc_E75F
bra_E68D:
C - - - - - 0x00269D 00:E68D: A5 D2     LDA ram_00D2
C - - - - - 0x00269F 00:E68F: 4A        LSR
C - - - - - 0x0026A0 00:E690: B0 F8     BCS bra_E68A
C - - - - - 0x0026A2 00:E692: A9 0A     LDA #$0A
C - - - - - 0x0026A4 00:E694: D0 1D     BNE bra_E6B3
bra_E696:
C - - - - - 0x0026A6 00:E696: A5 F8     LDA ram_00F8
C - - - - - 0x0026A8 00:E698: 4A        LSR
C - - - - - 0x0026A9 00:E699: 90 0F     BCC bra_E6AA
bra_E69B:
C - - - - - 0x0026AB 00:E69B: A5 D2     LDA ram_00D2
C - - - - - 0x0026AD 00:E69D: 4A        LSR
C - - - - - 0x0026AE 00:E69E: 4A        LSR
C - - - - - 0x0026AF 00:E69F: B0 E9     BCS bra_E68A
C - - - - - 0x0026B1 00:E6A1: A9 0B     LDA #$0B
C - - - - - 0x0026B3 00:E6A3: D0 0E     BNE bra_E6B3
bra_E6A5:
C - - - - - 0x0026B5 00:E6A5: A5 F8     LDA ram_00F8
C - - - - - 0x0026B7 00:E6A7: 4A        LSR
C - - - - - 0x0026B8 00:E6A8: 90 F1     BCC bra_E69B
bra_E6AA:
C - - - - - 0x0026BA 00:E6AA: A5 D2     LDA ram_00D2
C - - - - - 0x0026BC 00:E6AC: 4A        LSR
C - - - - - 0x0026BD 00:E6AD: 4A        LSR
C - - - - - 0x0026BE 00:E6AE: 4A        LSR
C - - - - - 0x0026BF 00:E6AF: B0 D9     BCS bra_E68A
C - - - - - 0x0026C1 00:E6B1: A9 0C     LDA #$0C
bra_E6B3:
C - - - - - 0x0026C3 00:E6B3: 85 C3     STA ram_00C3
C - - - - - 0x0026C5 00:E6B5: 4C BA EC  JMP loc_ECBA



ofs_008_E6B8_01:
C - - J - - 0x0026C8 00:E6B8: AD 00 07  LDA ram_0700
C - - - - - 0x0026CB 00:E6BB: F0 05     BEQ bra_E6C2
C - - - - - 0x0026CD 00:E6BD: CE 00 07  DEC ram_0700
C - - - - - 0x0026D0 00:E6C0: 10 C8     BPL bra_E68A
bra_E6C2:
C - - - - - 0x0026D2 00:E6C2: 20 4A E7  JSR sub_E74A
C - - - - - 0x0026D5 00:E6C5: C0 00     CPY #$00
C - - - - - 0x0026D7 00:E6C7: F0 25     BEQ bra_E6EE
C - - - - - 0x0026D9 00:E6C9: 20 1C E7  JSR sub_E71C
C - - - - - 0x0026DC 00:E6CC: C0 00     CPY #$00
C - - - - - 0x0026DE 00:E6CE: F0 1E     BEQ bra_E6EE
C - - - - - 0x0026E0 00:E6D0: E6 74     INC ram_0074
C - - - - - 0x0026E2 00:E6D2: A5 74     LDA ram_0074
C - - - - - 0x0026E4 00:E6D4: C5 10     CMP ram_0010
C - - - - - 0x0026E6 00:E6D6: B0 0E     BCS bra_E6E6
C - - - - - 0x0026E8 00:E6D8: 29 07     AND #$07
C - - - - - 0x0026EA 00:E6DA: C9 01     CMP #$01
C - - - - - 0x0026EC 00:E6DC: F0 13     BEQ bra_E6F1
C - - - - - 0x0026EE 00:E6DE: C9 04     CMP #$04
C - - - - - 0x0026F0 00:E6E0: F0 20     BEQ bra_E702
C - - - - - 0x0026F2 00:E6E2: C9 06     CMP #$06
C - - - - - 0x0026F4 00:E6E4: F0 2B     BEQ bra_E711
bra_E6E6:
C - - - - - 0x0026F6 00:E6E6: C9 0A     CMP #$0A
C - - - - - 0x0026F8 00:E6E8: 90 04     BCC bra_E6EE
C - - - - - 0x0026FA 00:E6EA: A9 00     LDA #$00
C - - - - - 0x0026FC 00:E6EC: 85 74     STA ram_0074
bra_E6EE:
C - - - - - 0x0026FE 00:E6EE: 4C 5F E7  JMP loc_E75F
bra_E6F1:
C - - - - - 0x002701 00:E6F1: A5 F8     LDA ram_00F8
C - - - - - 0x002703 00:E6F3: 4A        LSR
C - - - - - 0x002704 00:E6F4: 90 11     BCC bra_E707
bra_E6F6:
C - - - - - 0x002706 00:E6F6: A5 D2     LDA ram_00D2
C - - - - - 0x002708 00:E6F8: 4A        LSR
C - - - - - 0x002709 00:E6F9: B0 F3     BCS bra_E6EE
C - - - - - 0x00270B 00:E6FB: A9 0A     LDA #$0A
bra_E6FD:
C - - - - - 0x00270D 00:E6FD: 85 C3     STA ram_00C3
C - - - - - 0x00270F 00:E6FF: 4C 70 EC  JMP loc_EC70
bra_E702:
C - - - - - 0x002712 00:E702: A5 F8     LDA ram_00F8
C - - - - - 0x002714 00:E704: 4A        LSR
C - - - - - 0x002715 00:E705: 90 EF     BCC bra_E6F6
bra_E707:
C - - - - - 0x002717 00:E707: A5 D2     LDA ram_00D2
C - - - - - 0x002719 00:E709: 4A        LSR
C - - - - - 0x00271A 00:E70A: 4A        LSR
C - - - - - 0x00271B 00:E70B: B0 E1     BCS bra_E6EE
C - - - - - 0x00271D 00:E70D: A9 0B     LDA #$0B
C - - - - - 0x00271F 00:E70F: D0 EC     BNE bra_E6FD
bra_E711:
C - - - - - 0x002721 00:E711: A5 D2     LDA ram_00D2
C - - - - - 0x002723 00:E713: 4A        LSR
C - - - - - 0x002724 00:E714: 4A        LSR
C - - - - - 0x002725 00:E715: 4A        LSR
C - - - - - 0x002726 00:E716: B0 D6     BCS bra_E6EE
C - - - - - 0x002728 00:E718: A9 0C     LDA #$0C
C - - - - - 0x00272A 00:E71A: D0 E1     BNE bra_E6FD



sub_E71C:
C - - - - - 0x00272C 00:E71C: A6 F8     LDX ram_00F8
C - - - - - 0x00272E 00:E71E: A5 50     LDA ram_game_mode
C - - - - - 0x002730 00:E720: D0 02     BNE bra_E724_lvl_2
- - - - - - 0x002732 00:E722: E8        INX
- - - - - - 0x002733 00:E723: E8        INX
bra_E724_lvl_2:
C - - - - - 0x002734 00:E724: 8A        TXA
C - - - - - 0x002735 00:E725: C9 05     CMP #$05
C - - - - - 0x002737 00:E727: 90 02     BCC bra_E72B
C - - - - - 0x002739 00:E729: A9 05     LDA #$05
bra_E72B:
C - - - - - 0x00273B 00:E72B: A6 50     LDX ram_game_mode
C - - - - - 0x00273D 00:E72D: F0 03     BEQ bra_E732_lvl_1
C - - - - - 0x00273F 00:E72F: 18        CLC
C - - - - - 0x002740 00:E730: 69 05     ADC #$05
bra_E732_lvl_1:
C - - - - - 0x002742 00:E732: AA        TAX
C - - - - - 0x002743 00:E733: A0 01     LDY #$01
C - - - - - 0x002745 00:E735: A5 D6     LDA ram_dist_betw_fighters
C - - - - - 0x002747 00:E737: DD 3E E7  CMP tbl_E73E,X
C - - - - - 0x00274A 00:E73A: B0 01     BCS bra_E73D_RTS
- - - - - - 0x00274C 00:E73C: 88        DEY
bra_E73D_RTS:
C - - - - - 0x00274D 00:E73D: 60        RTS



tbl_E73E:
- - - - - - 0x00274E 00:E73E: 04        .byte $04   ; 00
- - - - - - 0x00274F 00:E73F: 03        .byte $03   ; 01
- - - - - - 0x002750 00:E740: 02        .byte $02   ; 02
- - - - - - 0x002751 00:E741: 03        .byte $03   ; 03
- - - - - - 0x002752 00:E742: 01        .byte $01   ; 04
- D 3 - - - 0x002753 00:E743: 01        .byte $01   ; 05
- D 3 - - - 0x002754 00:E744: 02        .byte $02   ; 06
- D 3 - - - 0x002755 00:E745: 01        .byte $01   ; 07
- D 3 - - - 0x002756 00:E746: 02        .byte $02   ; 08
- D 3 - - - 0x002757 00:E747: 01        .byte $01   ; 09
- D 3 - - - 0x002758 00:E748: 01        .byte $01   ; 0A
- - - - - - 0x002759 00:E749: 01        .byte $01   ; 0B



sub_E74A:
C - - - - - 0x00275A 00:E74A: A0 01     LDY #$01
C - - - - - 0x00275C 00:E74C: A5 50     LDA ram_game_mode
C - - - - - 0x00275E 00:E74E: D0 06     BNE bra_E756_RTS    ; if level 2
- - - - - - 0x002760 00:E750: A6 F8     LDX ram_00F8
- - - - - - 0x002762 00:E752: E0 01     CPX #$01
- - - - - - 0x002764 00:E754: 90 01     BCC bra_E757
bra_E756_RTS:
C - - - - - 0x002766 00:E756: 60        RTS
bra_E757:
- - - - - - 0x002767 00:E757: A5 D2     LDA ram_00D2
- - - - - - 0x002769 00:E759: 29 07     AND #$07
- - - - - - 0x00276B 00:E75B: F0 F9     BEQ bra_E756_RTS
- - - - - - 0x00276D 00:E75D: 88        DEY
- - - - - - 0x00276E 00:E75E: 60        RTS



loc_E75F:
C D 3 - - - 0x00276F 00:E75F: A5 DD     LDA ram_hit_timer
C - - - - - 0x002771 00:E761: C9 27     CMP #$27
C - - - - - 0x002773 00:E763: B0 01     BCS bra_E766
- - - - - - 0x002775 00:E765: 60        RTS
bra_E766:
C - - - - - 0x002776 00:E766: 20 47 E4  JSR sub_E447
C - - - - - 0x002779 00:E769: A5 AD     LDA ram_00AD
C - - - - - 0x00277B 00:E76B: C9 00     CMP #$00
C - - - - - 0x00277D 00:E76D: D0 03     BNE bra_E772
C - - - - - 0x00277F 00:E76F: 4C CB E8  JMP loc_E8CB
bra_E772:
C - - - - - 0x002782 00:E772: A5 E5     LDA ram_00E5
C - - - - - 0x002784 00:E774: C9 00     CMP #$00
C - - - - - 0x002786 00:E776: F0 0F     BEQ bra_E787
C - - - - - 0x002788 00:E778: A9 02     LDA #$02
C - - - - - 0x00278A 00:E77A: A6 68     LDX ram_enemy_type
C - - - - - 0x00278C 00:E77C: F0 02     BEQ bra_E780
C - - - - - 0x00278E 00:E77E: A9 04     LDA #$04
bra_E780:
C - - - - - 0x002790 00:E780: C5 D6     CMP ram_dist_betw_fighters
C - - - - - 0x002792 00:E782: 90 2D     BCC bra_E7B1
C - - - - - 0x002794 00:E784: 4C C2 E7  JMP loc_E7C2
bra_E787:
C - - - - - 0x002797 00:E787: A5 C9     LDA ram_00C9
C - - - - - 0x002799 00:E789: F0 37     BEQ bra_E7C2
C - - - - - 0x00279B 00:E78B: A9 02     LDA #$02
C - - - - - 0x00279D 00:E78D: A6 68     LDX ram_enemy_type
C - - - - - 0x00279F 00:E78F: F0 02     BEQ bra_E793
C - - - - - 0x0027A1 00:E791: A9 04     LDA #$04
bra_E793:
C - - - - - 0x0027A3 00:E793: A6 68     LDX ram_enemy_type
C - - - - - 0x0027A5 00:E795: D0 12     BNE bra_E7A9
C - - - - - 0x0027A7 00:E797: A6 F8     LDX ram_00F8
C - - - - - 0x0027A9 00:E799: D0 0E     BNE bra_E7A9
C - - - - - 0x0027AB 00:E79B: A5 DC     LDA ram_hp_enemy
C - - - - - 0x0027AD 00:E79D: C9 05     CMP #$05
C - - - - - 0x0027AF 00:E79F: F0 08     BEQ bra_E7A9
C - - - - - 0x0027B1 00:E7A1: C9 08     CMP #$08
C - - - - - 0x0027B3 00:E7A3: F0 04     BEQ bra_E7A9
C - - - - - 0x0027B5 00:E7A5: A6 BD     LDX ram_jump_timer
C - - - - - 0x0027B7 00:E7A7: D0 07     BNE bra_E7B0_RTS
bra_E7A9:
C - - - - - 0x0027B9 00:E7A9: C5 D6     CMP ram_dist_betw_fighters
C - - - - - 0x0027BB 00:E7AB: 90 04     BCC bra_E7B1
C - - - - - 0x0027BD 00:E7AD: 4C C2 E7  JMP loc_E7C2
bra_E7B0_RTS:
C - - - - - 0x0027C0 00:E7B0: 60        RTS
bra_E7B1:
C - - - - - 0x0027C1 00:E7B1: A9 00     LDA #$00
C - - - - - 0x0027C3 00:E7B3: 85 C9     STA ram_00C9
C - - - - - 0x0027C5 00:E7B5: 85 AD     STA ram_00AD
C - - - - - 0x0027C7 00:E7B7: 85 E5     STA ram_00E5
C - - - - - 0x0027C9 00:E7B9: 85 C2     STA ram_00C2
C - - - - - 0x0027CB 00:E7BB: A5 CF     LDA ram_00CF
C - - - - - 0x0027CD 00:E7BD: 85 72     STA ram_enemy_facing_direction
C - - - - - 0x0027CF 00:E7BF: 4C CB E8  JMP loc_E8CB
bra_E7C2:
loc_E7C2:
C D 3 - - - 0x0027D2 00:E7C2: A5 AD     LDA ram_00AD
C - - - - - 0x0027D4 00:E7C4: C9 01     CMP #$01
C - - - - - 0x0027D6 00:E7C6: F0 07     BEQ bra_E7CF
C - - - - - 0x0027D8 00:E7C8: C9 02     CMP #$02
C - - - - - 0x0027DA 00:E7CA: F0 21     BEQ bra_E7ED
- - - - - - 0x0027DC 00:E7CC: 4C CB E8  JMP loc_E8CB
bra_E7CF:
C - - - - - 0x0027DF 00:E7CF: A5 C9     LDA ram_00C9
C - - - - - 0x0027E1 00:E7D1: 05 E5     ORA ram_00E5
C - - - - - 0x0027E3 00:E7D3: D0 66     BNE bra_E83B
C - - - - - 0x0027E5 00:E7D5: A9 80     LDA #$80
C - - - - - 0x0027E7 00:E7D7: A6 68     LDX ram_enemy_type
C - - - - - 0x0027E9 00:E7D9: F0 0B     BEQ bra_E7E6
C - - - - - 0x0027EB 00:E7DB: A5 BB     LDA ram_pos_X_player
C - - - - - 0x0027ED 00:E7DD: C9 A0     CMP #$A0
C - - - - - 0x0027EF 00:E7DF: 90 03     BCC bra_E7E4
C - - - - - 0x0027F1 00:E7E1: A9 50     LDA #$50
C - - - - - 0x0027F3 00:E7E3: 2C        .byte $2C   ; BIT
bra_E7E4:
C - - - - - 0x0027F4 00:E7E4: A9 D0     LDA #$D0
bra_E7E6:
C - - - - - 0x0027F6 00:E7E6: C5 71     CMP ram_0071
C - - - - - 0x0027F8 00:E7E8: B0 21     BCS bra_E80B
C - - - - - 0x0027FA 00:E7EA: 4C 3B E8  JMP loc_E83B
bra_E7ED:
C - - - - - 0x0027FD 00:E7ED: A5 C9     LDA ram_00C9
C - - - - - 0x0027FF 00:E7EF: 05 E5     ORA ram_00E5
C - - - - - 0x002801 00:E7F1: D0 26     BNE bra_E819
C - - - - - 0x002803 00:E7F3: A9 80     LDA #$80
C - - - - - 0x002805 00:E7F5: A6 68     LDX ram_enemy_type
C - - - - - 0x002807 00:E7F7: F0 0B     BEQ bra_E804
C - - - - - 0x002809 00:E7F9: A5 BB     LDA ram_pos_X_player
C - - - - - 0x00280B 00:E7FB: C9 60     CMP #$60
C - - - - - 0x00280D 00:E7FD: 90 03     BCC bra_E802
C - - - - - 0x00280F 00:E7FF: A9 30     LDA #$30
C - - - - - 0x002811 00:E801: 2C        .byte $2C   ; BIT
bra_E802:
C - - - - - 0x002812 00:E802: A9 B0     LDA #$B0
bra_E804:
C - - - - - 0x002814 00:E804: C5 71     CMP ram_0071
C - - - - - 0x002816 00:E806: 90 03     BCC bra_E80B
C - - - - - 0x002818 00:E808: 4C 19 E8  JMP loc_E819
bra_E80B:
C - - - - - 0x00281B 00:E80B: A5 D6     LDA ram_dist_betw_fighters
C - - - - - 0x00281D 00:E80D: D0 03     BNE bra_E812
C - - - - - 0x00281F 00:E80F: 4C AA E8  JMP loc_E8AA
bra_E812:
C - - - - - 0x002822 00:E812: A9 00     LDA #$00
C - - - - - 0x002824 00:E814: 85 AD     STA ram_00AD
C - - - - - 0x002826 00:E816: 85 C2     STA ram_00C2
C - - - - - 0x002828 00:E818: 60        RTS
bra_E819:
loc_E819:
C D 3 - - - 0x002829 00:E819: A5 DD     LDA ram_hit_timer
C - - - - - 0x00282B 00:E81B: C9 30     CMP #$30
C - - - - - 0x00282D 00:E81D: B0 01     BCS bra_E820
- - - - - - 0x00282F 00:E81F: 60        RTS
bra_E820:
C - - - - - 0x002830 00:E820: 20 7E E8  JSR sub_E87E
C - - - - - 0x002833 00:E823: 85 C2     STA ram_00C2
C - - - - - 0x002835 00:E825: A5 71     LDA ram_0071
C - - - - - 0x002837 00:E827: 18        CLC
C - - - - - 0x002838 00:E828: 69 08     ADC #$08
C - - - - - 0x00283A 00:E82A: 85 71     STA ram_0071
C - - - - - 0x00283C 00:E82C: 20 71 E8  JSR sub_E871
C - - - - - 0x00283F 00:E82F: A5 71     LDA ram_0071
C - - - - - 0x002841 00:E831: C9 DC     CMP #$DC
C - - - - - 0x002843 00:E833: 90 3B     BCC bra_E870_RTS
C - - - - - 0x002845 00:E835: A9 DC     LDA #$DC
C - - - - - 0x002847 00:E837: 85 71     STA ram_0071
C - - - - - 0x002849 00:E839: D0 22     BNE bra_E85D
bra_E83B:
loc_E83B:
C D 3 - - - 0x00284B 00:E83B: A5 DD     LDA ram_hit_timer
C - - - - - 0x00284D 00:E83D: C9 28     CMP #$28
C - - - - - 0x00284F 00:E83F: B0 01     BCS bra_E842
- - - - - - 0x002851 00:E841: 60        RTS
bra_E842:
C - - - - - 0x002852 00:E842: 20 7E E8  JSR sub_E87E
C - - - - - 0x002855 00:E845: 85 C2     STA ram_00C2
C - - - - - 0x002857 00:E847: A5 71     LDA ram_0071
C - - - - - 0x002859 00:E849: 38        SEC
C - - - - - 0x00285A 00:E84A: E9 08     SBC #$08
C - - - - - 0x00285C 00:E84C: 85 71     STA ram_0071
C - - - - - 0x00285E 00:E84E: 20 71 E8  JSR sub_E871
C - - - - - 0x002861 00:E851: A5 71     LDA ram_0071
C - - - - - 0x002863 00:E853: C9 2A     CMP #$2A
C - - - - - 0x002865 00:E855: B0 19     BCS bra_E870_RTS
C - - - - - 0x002867 00:E857: A9 2A     LDA #$2A
C - - - - - 0x002869 00:E859: 85 71     STA ram_0071
C - - - - - 0x00286B 00:E85B: D0 03     BNE bra_E860
bra_E85D:
C - - - - - 0x00286D 00:E85D: A9 01     LDA #$01
C - - - - - 0x00286F 00:E85F: 2C        .byte $2C   ; BIT
bra_E860:
C - - - - - 0x002870 00:E860: A9 02     LDA #$02
C - - - - - 0x002872 00:E862: 85 AD     STA ram_00AD
C - - - - - 0x002874 00:E864: A5 CF     LDA ram_00CF
C - - - - - 0x002876 00:E866: 85 72     STA ram_enemy_facing_direction
C - - - - - 0x002878 00:E868: A9 00     LDA #$00
C - - - - - 0x00287A 00:E86A: 85 C9     STA ram_00C9
C - - - - - 0x00287C 00:E86C: A9 00     LDA #$00
C - - - - - 0x00287E 00:E86E: 85 E5     STA ram_00E5
bra_E870_RTS:
C - - - - - 0x002880 00:E870: 60        RTS



sub_E871:
C - - - - - 0x002881 00:E871: A2 00     LDX #$00
C - - - - - 0x002883 00:E873: 29 08     AND #$08
C - - - - - 0x002885 00:E875: D0 02     BNE bra_E879
C - - - - - 0x002887 00:E877: A2 01     LDX #$01
bra_E879:
C - - - - - 0x002889 00:E879: 86 CE     STX ram_enemy_animation
C - - - - - 0x00288B 00:E87B: 86 7C     STX ram_007C
C - - - - - 0x00288D 00:E87D: 60        RTS



sub_E87E:
C - - - - - 0x00288E 00:E87E: A6 F8     LDX ram_00F8
C - - - - - 0x002890 00:E880: A5 50     LDA ram_game_mode
C - - - - - 0x002892 00:E882: F0 02     BEQ bra_E886_lvl_1
C - - - - - 0x002894 00:E884: E8        INX
C - - - - - 0x002895 00:E885: E8        INX
bra_E886_lvl_1:
C - - - - - 0x002896 00:E886: E0 14     CPX #$14
C - - - - - 0x002898 00:E888: B0 04     BCS bra_E88E
C - - - - - 0x00289A 00:E88A: BD 92 E8  LDA tbl_E892,X
bra_E88D_RTS:
C - - - - - 0x00289D 00:E88D: 60        RTS
bra_E88E:
C - - - - - 0x00289E 00:E88E: A9 01     LDA #$01
C - - - - - 0x0028A0 00:E890: D0 FB     BNE bra_E88D_RTS



tbl_E892:
- D 3 - - - 0x0028A2 00:E892: 0B        .byte $0B   ; 
- - - - - - 0x0028A3 00:E893: 09        .byte $09   ; 
- D 3 - - - 0x0028A4 00:E894: 06        .byte $06   ; 
- D 3 - - - 0x0028A5 00:E895: 04        .byte $04   ; 
- D 3 - - - 0x0028A6 00:E896: 02        .byte $02   ; 
- D 3 - - - 0x0028A7 00:E897: 03        .byte $03   ; 
- D 3 - - - 0x0028A8 00:E898: 02        .byte $02   ; 
- D 3 - - - 0x0028A9 00:E899: 01        .byte $01   ; 
- D 3 - - - 0x0028AA 00:E89A: 02        .byte $02   ; 
- D 3 - - - 0x0028AB 00:E89B: 03        .byte $03   ; 
- D 3 - - - 0x0028AC 00:E89C: 01        .byte $01   ; 
- D 3 - - - 0x0028AD 00:E89D: 02        .byte $02   ; 
- D 3 - - - 0x0028AE 00:E89E: 02        .byte $02   ; 
- D 3 - - - 0x0028AF 00:E89F: 03        .byte $03   ; 
- D 3 - - - 0x0028B0 00:E8A0: 02        .byte $02   ; 
- D 3 - - - 0x0028B1 00:E8A1: 02        .byte $02   ; 
- D 3 - - - 0x0028B2 00:E8A2: 02        .byte $02   ; 
- D 3 - - - 0x0028B3 00:E8A3: 02        .byte $02   ; 
- D 3 - - - 0x0028B4 00:E8A4: 01        .byte $01   ; 
- D 3 - - - 0x0028B5 00:E8A5: 01        .byte $01   ; 
- - - - - - 0x0028B6 00:E8A6: 01        .byte $01   ; 
- - - - - - 0x0028B7 00:E8A7: 01        .byte $01   ; 
- - - - - - 0x0028B8 00:E8A8: 01        .byte $01   ; 
- - - - - - 0x0028B9 00:E8A9: 01        .byte $01   ; 



loc_E8AA:
C D 3 - - - 0x0028BA 00:E8AA: A9 08     LDA #$08
C - - - - - 0x0028BC 00:E8AC: 2C        .byte $2C   ; BIT
loc_E8AD:
C - - - - - 0x0028BD 00:E8AD: A9 09     LDA #$09
C - - - - - 0x0028BF 00:E8AF: 85 E5     STA ram_00E5
C - - - - - 0x0028C1 00:E8B1: 4C BD E8  JMP loc_E8BD



loc_E8B4:
C D 3 - - - 0x0028C4 00:E8B4: A9 08     LDA #$08
sub_E8B6:
C - - - - - 0x0028C6 00:E8B6: 85 C9     STA ram_00C9
C - - - - - 0x0028C8 00:E8B8: A5 CF     LDA ram_00CF
C - - - - - 0x0028CA 00:E8BA: 49 01     EOR #$01
C - - - - - 0x0028CC 00:E8BC: 2C        .byte $2C   ; BIT
loc_E8BD:
C - - - - - 0x0028CD 00:E8BD: A5 CF     LDA ram_00CF
C - - - - - 0x0028CF 00:E8BF: C9 01     CMP #$01
C - - - - - 0x0028D1 00:E8C1: F0 03     BEQ bra_E8C6
C - - - - - 0x0028D3 00:E8C3: A9 01     LDA #$01
C - - - - - 0x0028D5 00:E8C5: 2C        .byte $2C   ; BIT
bra_E8C6:
C - - - - - 0x0028D6 00:E8C6: A9 02     LDA #$02
C - - - - - 0x0028D8 00:E8C8: 85 AD     STA ram_00AD
C - - - - - 0x0028DA 00:E8CA: 60        RTS



loc_E8CB:
C D 3 - - - 0x0028DB 00:E8CB: A5 A4     LDA ram_00A4
C - - - - - 0x0028DD 00:E8CD: C9 81     CMP #$81
C - - - - - 0x0028DF 00:E8CF: 90 03     BCC bra_E8D4
- - - - - - 0x0028E1 00:E8D1: 4C 52 EA  JMP loc_EA52
bra_E8D4:
C - - - - - 0x0028E4 00:E8D4: A5 ED     LDA ram_00ED
C - - - - - 0x0028E6 00:E8D6: F0 03     BEQ bra_E8DB
C - - - - - 0x0028E8 00:E8D8: 4C 52 EA  JMP loc_EA52
bra_E8DB:
C - - - - - 0x0028EB 00:E8DB: A5 C2     LDA ram_00C2
C - - - - - 0x0028ED 00:E8DD: C9 00     CMP #$00
C - - - - - 0x0028EF 00:E8DF: F0 1B     BEQ bra_E8FC_RTS
C - - - - - 0x0028F1 00:E8E1: 38        SEC
C - - - - - 0x0028F2 00:E8E2: E9 01     SBC #$01
C - - - - - 0x0028F4 00:E8E4: 85 C2     STA ram_00C2
C - - - - - 0x0028F6 00:E8E6: 20 64 EA  JSR sub_EA64
C - - - - - 0x0028F9 00:E8E9: E8        INX
C - - - - - 0x0028FA 00:E8EA: A5 C2     LDA ram_00C2
C - - - - - 0x0028FC 00:E8EC: DD 7F EA  CMP tbl_EA7F,X
C - - - - - 0x0028FF 00:E8EF: F0 16     BEQ bra_E907
C - - - - - 0x002901 00:E8F1: E8        INX
C - - - - - 0x002902 00:E8F2: A5 C2     LDA ram_00C2
C - - - - - 0x002904 00:E8F4: DD 7F EA  CMP tbl_EA7F,X
C - - - - - 0x002907 00:E8F7: F0 07     BEQ bra_E900
C - - - - - 0x002909 00:E8F9: 4C 63 EA  JMP loc_EA63_RTS
bra_E8FC_RTS:
C - - - - - 0x00290C 00:E8FC: 60        RTS


; bzk garbage
- - - - - - 0x00290D 00:E8FD: A9 02     LDA #$02
- - - - - - 0x00290F 00:E8FF: 2C        .byte $2C   ; BIT



bra_E900:
C - - - - - 0x002910 00:E900: A9 00     LDA #$00
C - - - - - 0x002912 00:E902: 85 CE     STA ram_enemy_animation
C - - - - - 0x002914 00:E904: 85 C3     STA ram_00C3
C - - - - - 0x002916 00:E906: 60        RTS
bra_E907:
C - - - - - 0x002917 00:E907: A5 7C     LDA ram_007C
C - - - - - 0x002919 00:E909: 85 CE     STA ram_enemy_animation
C - - - - - 0x00291B 00:E90B: A5 68     LDA ram_enemy_type
C - - - - - 0x00291D 00:E90D: C9 03     CMP #$03
C - - - - - 0x00291F 00:E90F: F0 0F     BEQ bra_E920
C - - - - - 0x002921 00:E911: C9 01     CMP #$01
C - - - - - 0x002923 00:E913: F0 08     BEQ bra_E91D
C - - - - - 0x002925 00:E915: C9 04     CMP #$04
C - - - - - 0x002927 00:E917: D0 03     BNE bra_E91C_RTS
C - - - - - 0x002929 00:E919: 4C 57 EA  JMP loc_EA57
bra_E91C_RTS:
C - - - - - 0x00292C 00:E91C: 60        RTS
bra_E91D:
C - - - - - 0x00292D 00:E91D: 4C DA E9  JMP loc_E9DA
bra_E920:
C - - - - - 0x002930 00:E920: A5 C3     LDA ram_00C3
C - - - - - 0x002932 00:E922: C9 0A     CMP #$0A
C - - - - - 0x002934 00:E924: F0 09     BEQ bra_E92F
C - - - - - 0x002936 00:E926: C9 0B     CMP #$0B
C - - - - - 0x002938 00:E928: F0 3D     BEQ bra_E967
C - - - - - 0x00293A 00:E92A: C9 0C     CMP #$0C
C - - - - - 0x00293C 00:E92C: F0 72     BEQ bra_E9A0
C - - - - - 0x00293E 00:E92E: 60        RTS
bra_E92F:
C - - - - - 0x00293F 00:E92F: A9 00     LDA #$00
C - - - - - 0x002941 00:E931: 85 C3     STA ram_00C3
C - - - - - 0x002943 00:E933: A5 D2     LDA ram_00D2
C - - - - - 0x002945 00:E935: 4A        LSR
C - - - - - 0x002946 00:E936: 90 01     BCC bra_E939
- - - - - - 0x002948 00:E938: 60        RTS
bra_E939:
C - - - - - 0x002949 00:E939: A0 9C     LDY #$9C
C - - - - - 0x00294B 00:E93B: A5 72     LDA ram_enemy_facing_direction
C - - - - - 0x00294D 00:E93D: D0 03     BNE bra_E942
C - - - - - 0x00294F 00:E93F: A9 F0     LDA #$F0
C - - - - - 0x002951 00:E941: 2C        .byte $2C   ; BIT
bra_E942:
C - - - - - 0x002952 00:E942: A9 10     LDA #$10
loc_E944:
C D 3 - - - 0x002954 00:E944: 18        CLC
C - - - - - 0x002955 00:E945: 65 CB     ADC ram_00CB
C - - - - - 0x002957 00:E947: 8D 03 02  STA ram_spr_X
C - - - - - 0x00295A 00:E94A: 8C 00 02  STY ram_spr_Y
C - - - - - 0x00295D 00:E94D: A9 06     LDA #$06
C - - - - - 0x00295F 00:E94F: 25 A4     AND ram_00A4
C - - - - - 0x002961 00:E951: 85 A4     STA ram_00A4
C - - - - - 0x002963 00:E953: A5 72     LDA ram_enemy_facing_direction
C - - - - - 0x002965 00:E955: F0 03     BEQ bra_E95A
C - - - - - 0x002967 00:E957: A9 01     LDA #$01
C - - - - - 0x002969 00:E959: 2C        .byte $2C   ; BIT
bra_E95A:
C - - - - - 0x00296A 00:E95A: A9 00     LDA #$00
C - - - - - 0x00296C 00:E95C: 05 A4     ORA ram_00A4
C - - - - - 0x00296E 00:E95E: 85 A4     STA ram_00A4
C - - - - - 0x002970 00:E960: A9 01     LDA #$01
C - - - - - 0x002972 00:E962: 05 D2     ORA ram_00D2
C - - - - - 0x002974 00:E964: 85 D2     STA ram_00D2
C - - - - - 0x002976 00:E966: 60        RTS
bra_E967:
C - - - - - 0x002977 00:E967: A9 00     LDA #$00
C - - - - - 0x002979 00:E969: 85 C3     STA ram_00C3
C - - - - - 0x00297B 00:E96B: A5 D2     LDA ram_00D2
C - - - - - 0x00297D 00:E96D: 4A        LSR
C - - - - - 0x00297E 00:E96E: 4A        LSR
C - - - - - 0x00297F 00:E96F: 90 01     BCC bra_E972
- - - - - - 0x002981 00:E971: 60        RTS
bra_E972:
C - - - - - 0x002982 00:E972: A0 A8     LDY #$A8
C - - - - - 0x002984 00:E974: A5 72     LDA ram_enemy_facing_direction
C - - - - - 0x002986 00:E976: D0 03     BNE bra_E97B
C - - - - - 0x002988 00:E978: A9 F8     LDA #$F8
C - - - - - 0x00298A 00:E97A: 2C        .byte $2C   ; BIT
bra_E97B:
C - - - - - 0x00298B 00:E97B: A9 08     LDA #$08
loc_E97D:
C D 3 - - - 0x00298D 00:E97D: 18        CLC
C - - - - - 0x00298E 00:E97E: 65 CB     ADC ram_00CB
C - - - - - 0x002990 00:E980: 8D 07 02  STA ram_spr_X + $04
C - - - - - 0x002993 00:E983: 8C 04 02  STY ram_spr_Y + $04
C - - - - - 0x002996 00:E986: A9 05     LDA #$05
C - - - - - 0x002998 00:E988: 25 A4     AND ram_00A4
C - - - - - 0x00299A 00:E98A: 85 A4     STA ram_00A4
C - - - - - 0x00299C 00:E98C: A5 72     LDA ram_enemy_facing_direction
C - - - - - 0x00299E 00:E98E: F0 03     BEQ bra_E993
C - - - - - 0x0029A0 00:E990: A9 02     LDA #$02
C - - - - - 0x0029A2 00:E992: 2C        .byte $2C   ; BIT
bra_E993:
C - - - - - 0x0029A3 00:E993: A9 00     LDA #$00
C - - - - - 0x0029A5 00:E995: 05 A4     ORA ram_00A4
C - - - - - 0x0029A7 00:E997: 85 A4     STA ram_00A4
C - - - - - 0x0029A9 00:E999: A9 02     LDA #$02
C - - - - - 0x0029AB 00:E99B: 05 D2     ORA ram_00D2
C - - - - - 0x0029AD 00:E99D: 85 D2     STA ram_00D2
C - - - - - 0x0029AF 00:E99F: 60        RTS
bra_E9A0:
C - - - - - 0x0029B0 00:E9A0: A9 00     LDA #$00
C - - - - - 0x0029B2 00:E9A2: 85 C3     STA ram_00C3
C - - - - - 0x0029B4 00:E9A4: A5 D2     LDA ram_00D2
C - - - - - 0x0029B6 00:E9A6: 4A        LSR
C - - - - - 0x0029B7 00:E9A7: 4A        LSR
C - - - - - 0x0029B8 00:E9A8: 4A        LSR
C - - - - - 0x0029B9 00:E9A9: 90 01     BCC bra_E9AC
- - - - - - 0x0029BB 00:E9AB: 60        RTS
bra_E9AC:
C - - - - - 0x0029BC 00:E9AC: A0 B4     LDY #$B4
C - - - - - 0x0029BE 00:E9AE: A5 72     LDA ram_enemy_facing_direction
C - - - - - 0x0029C0 00:E9B0: D0 03     BNE bra_E9B5
C - - - - - 0x0029C2 00:E9B2: A9 F0     LDA #$F0
C - - - - - 0x0029C4 00:E9B4: 2C        .byte $2C   ; BIT
bra_E9B5:
C - - - - - 0x0029C5 00:E9B5: A9 10     LDA #$10
loc_E9B7:
C D 3 - - - 0x0029C7 00:E9B7: 18        CLC
C - - - - - 0x0029C8 00:E9B8: 65 CB     ADC ram_00CB
C - - - - - 0x0029CA 00:E9BA: 8D 0B 02  STA ram_spr_X + $08
C - - - - - 0x0029CD 00:E9BD: 8C 08 02  STY ram_spr_Y + $08
C - - - - - 0x0029D0 00:E9C0: A9 03     LDA #$03
C - - - - - 0x0029D2 00:E9C2: 25 A4     AND ram_00A4
C - - - - - 0x0029D4 00:E9C4: 85 A4     STA ram_00A4
C - - - - - 0x0029D6 00:E9C6: A5 72     LDA ram_enemy_facing_direction
C - - - - - 0x0029D8 00:E9C8: F0 03     BEQ bra_E9CD
C - - - - - 0x0029DA 00:E9CA: A9 04     LDA #$04
C - - - - - 0x0029DC 00:E9CC: 2C        .byte $2C   ; BIT
bra_E9CD:
C - - - - - 0x0029DD 00:E9CD: A9 00     LDA #$00
C - - - - - 0x0029DF 00:E9CF: 05 A4     ORA ram_00A4
C - - - - - 0x0029E1 00:E9D1: 85 A4     STA ram_00A4
C - - - - - 0x0029E3 00:E9D3: A9 04     LDA #$04
C - - - - - 0x0029E5 00:E9D5: 05 D2     ORA ram_00D2
C - - - - - 0x0029E7 00:E9D7: 85 D2     STA ram_00D2
C - - - - - 0x0029E9 00:E9D9: 60        RTS



loc_E9DA:
C D 3 - - - 0x0029EA 00:E9DA: A5 C3     LDA ram_00C3
C - - - - - 0x0029EC 00:E9DC: C9 0A     CMP #$0A
C - - - - - 0x0029EE 00:E9DE: F0 0C     BEQ bra_E9EC
C - - - - - 0x0029F0 00:E9E0: C9 0B     CMP #$0B
C - - - - - 0x0029F2 00:E9E2: F0 29     BEQ bra_EA0D
C - - - - - 0x0029F4 00:E9E4: C9 0C     CMP #$0C
C - - - - - 0x0029F6 00:E9E6: D0 03     BNE bra_E9EB_RTS
C - - - - - 0x0029F8 00:E9E8: 4C 2F EA  JMP loc_EA2F
bra_E9EB_RTS:
C - - - - - 0x0029FB 00:E9EB: 60        RTS
bra_E9EC:
C - - - - - 0x0029FC 00:E9EC: A5 D2     LDA ram_00D2
C - - - - - 0x0029FE 00:E9EE: 4A        LSR
C - - - - - 0x0029FF 00:E9EF: 90 01     BCC bra_E9F2
- - - - - - 0x002A01 00:E9F1: 60        RTS
bra_E9F2:
C - - - - - 0x002A02 00:E9F2: A0 9C     LDY #$9C
C - - - - - 0x002A04 00:E9F4: A6 72     LDX ram_enemy_facing_direction
C - - - - - 0x002A06 00:E9F6: F0 06     BEQ bra_E9FE
C - - - - - 0x002A08 00:E9F8: A2 0A     LDX #$0A
C - - - - - 0x002A0A 00:E9FA: A9 62     LDA #$62
C - - - - - 0x002A0C 00:E9FC: D0 04     BNE bra_EA02
bra_E9FE:
C - - - - - 0x002A0E 00:E9FE: A2 F6     LDX #$F6
C - - - - - 0x002A10 00:EA00: A9 22     LDA #$22
bra_EA02:
C - - - - - 0x002A12 00:EA02: 8D 02 02  STA ram_spr_A
C - - - - - 0x002A15 00:EA05: A9 03     LDA #$03
C - - - - - 0x002A17 00:EA07: 85 CE     STA ram_enemy_animation
C - - - - - 0x002A19 00:EA09: 8A        TXA
C - - - - - 0x002A1A 00:EA0A: 4C 44 E9  JMP loc_E944
bra_EA0D:
C - - - - - 0x002A1D 00:EA0D: A5 D2     LDA ram_00D2
C - - - - - 0x002A1F 00:EA0F: 4A        LSR
C - - - - - 0x002A20 00:EA10: 4A        LSR
C - - - - - 0x002A21 00:EA11: 90 01     BCC bra_EA14
- - - - - - 0x002A23 00:EA13: 60        RTS
bra_EA14:
C - - - - - 0x002A24 00:EA14: A0 A8     LDY #$A8
C - - - - - 0x002A26 00:EA16: A6 72     LDX ram_enemy_facing_direction
C - - - - - 0x002A28 00:EA18: F0 06     BEQ bra_EA20
C - - - - - 0x002A2A 00:EA1A: A2 0A     LDX #$0A
C - - - - - 0x002A2C 00:EA1C: A9 62     LDA #$62
C - - - - - 0x002A2E 00:EA1E: D0 04     BNE bra_EA24
bra_EA20:
C - - - - - 0x002A30 00:EA20: A2 E8     LDX #$E8
C - - - - - 0x002A32 00:EA22: A9 22     LDA #$22
bra_EA24:
C - - - - - 0x002A34 00:EA24: 8D 06 02  STA ram_spr_A + $04
C - - - - - 0x002A37 00:EA27: A9 04     LDA #$04
C - - - - - 0x002A39 00:EA29: 85 CE     STA ram_enemy_animation
C - - - - - 0x002A3B 00:EA2B: 8A        TXA
C - - - - - 0x002A3C 00:EA2C: 4C 7D E9  JMP loc_E97D



loc_EA2F:
C D 3 - - - 0x002A3F 00:EA2F: A5 D2     LDA ram_00D2
C - - - - - 0x002A41 00:EA31: 4A        LSR
C - - - - - 0x002A42 00:EA32: 4A        LSR
C - - - - - 0x002A43 00:EA33: 4A        LSR
C - - - - - 0x002A44 00:EA34: 90 01     BCC bra_EA37
- - - - - - 0x002A46 00:EA36: 60        RTS
bra_EA37:
C - - - - - 0x002A47 00:EA37: A0 B4     LDY #$B4
C - - - - - 0x002A49 00:EA39: A6 72     LDX ram_enemy_facing_direction
C - - - - - 0x002A4B 00:EA3B: F0 06     BEQ bra_EA43
C - - - - - 0x002A4D 00:EA3D: A2 0E     LDX #$0E
C - - - - - 0x002A4F 00:EA3F: A9 62     LDA #$62
C - - - - - 0x002A51 00:EA41: D0 04     BNE bra_EA47
bra_EA43:
C - - - - - 0x002A53 00:EA43: A2 E8     LDX #$E8
C - - - - - 0x002A55 00:EA45: A9 22     LDA #$22
bra_EA47:
C - - - - - 0x002A57 00:EA47: 8D 0A 02  STA ram_spr_A + $08
C - - - - - 0x002A5A 00:EA4A: A9 05     LDA #$05
C - - - - - 0x002A5C 00:EA4C: 85 CE     STA ram_enemy_animation
C - - - - - 0x002A5E 00:EA4E: 8A        TXA
C - - - - - 0x002A5F 00:EA4F: 4C B7 E9  JMP loc_E9B7



loc_EA52:
C D 3 - - - 0x002A62 00:EA52: A9 0B     LDA #$0B
C - - - - - 0x002A64 00:EA54: 85 C2     STA ram_00C2
C - - - - - 0x002A66 00:EA56: 60        RTS



loc_EA57:
C D 3 - - - 0x002A67 00:EA57: A5 EE     LDA ram_00EE
C - - - - - 0x002A69 00:EA59: D0 01     BNE bra_EA5C
C - - - - - 0x002A6B 00:EA5B: 60        RTS
bra_EA5C:
C - - - - - 0x002A6C 00:EA5C: 85 ED     STA ram_00ED
C - - - - - 0x002A6E 00:EA5E: A9 08     LDA #$08
C - - - - - 0x002A70 00:EA60: 85 CE     STA ram_enemy_animation
C - - - - - 0x002A72 00:EA62: 60        RTS



loc_EA63_RTS:
C D 3 - - - 0x002A73 00:EA63: 60        RTS



sub_EA64:
C - - - - - 0x002A74 00:EA64: A9 00     LDA #$00
C - - - - - 0x002A76 00:EA66: A5 61     LDA ram_0061
C - - - - - 0x002A78 00:EA68: 29 F0     AND #$F0
C - - - - - 0x002A7A 00:EA6A: 85 7F     STA ram_007F
C - - - - - 0x002A7C 00:EA6C: A6 68     LDX ram_enemy_type
C - - - - - 0x002A7E 00:EA6E: A9 00     LDA #$00
bra_EA70:
C - - - - - 0x002A80 00:EA70: E0 00     CPX #$00
C - - - - - 0x002A82 00:EA72: F0 06     BEQ bra_EA7A
C - - - - - 0x002A84 00:EA74: 18        CLC
C - - - - - 0x002A85 00:EA75: 69 03     ADC #$03
C - - - - - 0x002A87 00:EA77: CA        DEX
C - - - - - 0x002A88 00:EA78: 10 F6     BPL bra_EA70
bra_EA7A:
C - - - - - 0x002A8A 00:EA7A: 18        CLC
C - - - - - 0x002A8B 00:EA7B: 65 7F     ADC ram_007F
C - - - - - 0x002A8D 00:EA7D: AA        TAX
C - - - - - 0x002A8E 00:EA7E: 60        RTS



tbl_EA7F:
- D 3 - - - 0x002A8F 00:EA7F: 0E        .byte $0E   ; 
- D 3 - - - 0x002A90 00:EA80: 06        .byte $06   ; 
- D 3 - - - 0x002A91 00:EA81: 02        .byte $02   ; 
- D 3 - - - 0x002A92 00:EA82: 0D        .byte $0D   ; 
- D 3 - - - 0x002A93 00:EA83: 06        .byte $06   ; 
- D 3 - - - 0x002A94 00:EA84: 02        .byte $02   ; 
- D 3 - - - 0x002A95 00:EA85: 0E        .byte $0E   ; 
- D 3 - - - 0x002A96 00:EA86: 09        .byte $09   ; 
- D 3 - - - 0x002A97 00:EA87: 03        .byte $03   ; 
- D 3 - - - 0x002A98 00:EA88: 0D        .byte $0D   ; 
- D 3 - - - 0x002A99 00:EA89: 07        .byte $07   ; 
- D 3 - - - 0x002A9A 00:EA8A: 01        .byte $01   ; 
- D 3 - - - 0x002A9B 00:EA8B: 0D        .byte $0D   ; 
- D 3 - - - 0x002A9C 00:EA8C: 07        .byte $07   ; 
- D 3 - - - 0x002A9D 00:EA8D: 02        .byte $02   ; 
- - - - - - 0x002A9E 00:EA8E: 00        .byte $00   ; 
- D 3 - - - 0x002A9F 00:EA8F: 0D        .byte $0D   ; 
- D 3 - - - 0x002AA0 00:EA90: 08        .byte $08   ; 
- D 3 - - - 0x002AA1 00:EA91: 02        .byte $02   ; 
- D 3 - - - 0x002AA2 00:EA92: 09        .byte $09   ; 
- D 3 - - - 0x002AA3 00:EA93: 07        .byte $07   ; 
- D 3 - - - 0x002AA4 00:EA94: 01        .byte $01   ; 
- D 3 - - - 0x002AA5 00:EA95: 0D        .byte $0D   ; 
- D 3 - - - 0x002AA6 00:EA96: 0A        .byte $0A   ; 
- D 3 - - - 0x002AA7 00:EA97: 02        .byte $02   ; 
- D 3 - - - 0x002AA8 00:EA98: 0C        .byte $0C   ; 
- D 3 - - - 0x002AA9 00:EA99: 09        .byte $09   ; 
- D 3 - - - 0x002AAA 00:EA9A: 02        .byte $02   ; 
- D 3 - - - 0x002AAB 00:EA9B: 0C        .byte $0C   ; 
- D 3 - - - 0x002AAC 00:EA9C: 09        .byte $09   ; 
- D 3 - - - 0x002AAD 00:EA9D: 01        .byte $01   ; 
- - - - - - 0x002AAE 00:EA9E: 00        .byte $00   ; 
- D 3 - - - 0x002AAF 00:EA9F: 09        .byte $09   ; 
- D 3 - - - 0x002AB0 00:EAA0: 08        .byte $08   ; 
- D 3 - - - 0x002AB1 00:EAA1: 02        .byte $02   ; 
- D 3 - - - 0x002AB2 00:EAA2: 0A        .byte $0A   ; 
- D 3 - - - 0x002AB3 00:EAA3: 09        .byte $09   ; 
- D 3 - - - 0x002AB4 00:EAA4: 02        .byte $02   ; 
- D 3 - - - 0x002AB5 00:EAA5: 0E        .byte $0E   ; 
- D 3 - - - 0x002AB6 00:EAA6: 0A        .byte $0A   ; 
- D 3 - - - 0x002AB7 00:EAA7: 02        .byte $02   ; 
- D 3 - - - 0x002AB8 00:EAA8: 0C        .byte $0C   ; 
- D 3 - - - 0x002AB9 00:EAA9: 09        .byte $09   ; 
- D 3 - - - 0x002ABA 00:EAAA: 02        .byte $02   ; 
- D 3 - - - 0x002ABB 00:EAAB: 0B        .byte $0B   ; 
- D 3 - - - 0x002ABC 00:EAAC: 09        .byte $09   ; 
- D 3 - - - 0x002ABD 00:EAAD: 02        .byte $02   ; 
- - - - - - 0x002ABE 00:EAAE: 00        .byte $00   ; 
- D 3 - - - 0x002ABF 00:EAAF: 0A        .byte $0A   ; 
- D 3 - - - 0x002AC0 00:EAB0: 08        .byte $08   ; 
- D 3 - - - 0x002AC1 00:EAB1: 02        .byte $02   ; 
- D 3 - - - 0x002AC2 00:EAB2: 0B        .byte $0B   ; 
- D 3 - - - 0x002AC3 00:EAB3: 08        .byte $08   ; 
- D 3 - - - 0x002AC4 00:EAB4: 02        .byte $02   ; 
- D 3 - - - 0x002AC5 00:EAB5: 09        .byte $09   ; 
- D 3 - - - 0x002AC6 00:EAB6: 07        .byte $07   ; 
- D 3 - - - 0x002AC7 00:EAB7: 02        .byte $02   ; 
- D 3 - - - 0x002AC8 00:EAB8: 0B        .byte $0B   ; 
- D 3 - - - 0x002AC9 00:EAB9: 09        .byte $09   ; 
- D 3 - - - 0x002ACA 00:EABA: 02        .byte $02   ; 
- D 3 - - - 0x002ACB 00:EABB: 09        .byte $09   ; 
- D 3 - - - 0x002ACC 00:EABC: 07        .byte $07   ; 
- D 3 - - - 0x002ACD 00:EABD: 02        .byte $02   ; 
- - - - - - 0x002ACE 00:EABE: 00        .byte $00   ; 
- D 3 - - - 0x002ACF 00:EABF: 0A        .byte $0A   ; 
- D 3 - - - 0x002AD0 00:EAC0: 08        .byte $08   ; 
- D 3 - - - 0x002AD1 00:EAC1: 02        .byte $02   ; 
- D 3 - - - 0x002AD2 00:EAC2: 09        .byte $09   ; 
- D 3 - - - 0x002AD3 00:EAC3: 06        .byte $06   ; 
- D 3 - - - 0x002AD4 00:EAC4: 02        .byte $02   ; 
- D 3 - - - 0x002AD5 00:EAC5: 0A        .byte $0A   ; 
- D 3 - - - 0x002AD6 00:EAC6: 08        .byte $08   ; 
- D 3 - - - 0x002AD7 00:EAC7: 02        .byte $02   ; 
- D 3 - - - 0x002AD8 00:EAC8: 0A        .byte $0A   ; 
- D 3 - - - 0x002AD9 00:EAC9: 06        .byte $06   ; 
- D 3 - - - 0x002ADA 00:EACA: 02        .byte $02   ; 
- D 3 - - - 0x002ADB 00:EACB: 0B        .byte $0B   ; 
- D 3 - - - 0x002ADC 00:EACC: 08        .byte $08   ; 
- D 3 - - - 0x002ADD 00:EACD: 02        .byte $02   ; 
- - - - - - 0x002ADE 00:EACE: 00        .byte $00   ; 
- D 3 - - - 0x002ADF 00:EACF: 0C        .byte $0C   ; 
- D 3 - - - 0x002AE0 00:EAD0: 0A        .byte $0A   ; 
- D 3 - - - 0x002AE1 00:EAD1: 02        .byte $02   ; 
- D 3 - - - 0x002AE2 00:EAD2: 0B        .byte $0B   ; 
- D 3 - - - 0x002AE3 00:EAD3: 08        .byte $08   ; 
- D 3 - - - 0x002AE4 00:EAD4: 03        .byte $03   ; 
- D 3 - - - 0x002AE5 00:EAD5: 0C        .byte $0C   ; 
- D 3 - - - 0x002AE6 00:EAD6: 0A        .byte $0A   ; 
- D 3 - - - 0x002AE7 00:EAD7: 03        .byte $03   ; 
- D 3 - - - 0x002AE8 00:EAD8: 0A        .byte $0A   ; 
- D 3 - - - 0x002AE9 00:EAD9: 09        .byte $09   ; 
- D 3 - - - 0x002AEA 00:EADA: 02        .byte $02   ; 
- D 3 - - - 0x002AEB 00:EADB: 0A        .byte $0A   ; 
- D 3 - - - 0x002AEC 00:EADC: 08        .byte $08   ; 
- D 3 - - - 0x002AED 00:EADD: 01        .byte $01   ; 
- - - - - - 0x002AEE 00:EADE: 00        .byte $00   ; 
- D 3 - - - 0x002AEF 00:EADF: 0C        .byte $0C   ; 
- D 3 - - - 0x002AF0 00:EAE0: 0B        .byte $0B   ; 
- D 3 - - - 0x002AF1 00:EAE1: 03        .byte $03   ; 
- D 3 - - - 0x002AF2 00:EAE2: 0A        .byte $0A   ; 
- D 3 - - - 0x002AF3 00:EAE3: 09        .byte $09   ; 
- D 3 - - - 0x002AF4 00:EAE4: 03        .byte $03   ; 
- D 3 - - - 0x002AF5 00:EAE5: 09        .byte $09   ; 
- D 3 - - - 0x002AF6 00:EAE6: 08        .byte $08   ; 
- D 3 - - - 0x002AF7 00:EAE7: 03        .byte $03   ; 
- D 3 - - - 0x002AF8 00:EAE8: 09        .byte $09   ; 
- D 3 - - - 0x002AF9 00:EAE9: 08        .byte $08   ; 
- D 3 - - - 0x002AFA 00:EAEA: 03        .byte $03   ; 
- D 3 - - - 0x002AFB 00:EAEB: 09        .byte $09   ; 
- D 3 - - - 0x002AFC 00:EAEC: 08        .byte $08   ; 
- D 3 - - - 0x002AFD 00:EAED: 03        .byte $03   ; 
- - - - - - 0x002AFE 00:EAEE: 00        .byte $00   ; 
- D 3 - - - 0x002AFF 00:EAEF: 0A        .byte $0A   ; 
- D 3 - - - 0x002B00 00:EAF0: 08        .byte $08   ; 
- D 3 - - - 0x002B01 00:EAF1: 02        .byte $02   ; 
- D 3 - - - 0x002B02 00:EAF2: 0B        .byte $0B   ; 
- D 3 - - - 0x002B03 00:EAF3: 06        .byte $06   ; 
- D 3 - - - 0x002B04 00:EAF4: 02        .byte $02   ; 
- D 3 - - - 0x002B05 00:EAF5: 09        .byte $09   ; 
- D 3 - - - 0x002B06 00:EAF6: 06        .byte $06   ; 
- D 3 - - - 0x002B07 00:EAF7: 02        .byte $02   ; 
- D 3 - - - 0x002B08 00:EAF8: 0A        .byte $0A   ; 
- D 3 - - - 0x002B09 00:EAF9: 06        .byte $06   ; 
- D 3 - - - 0x002B0A 00:EAFA: 02        .byte $02   ; 
- D 3 - - - 0x002B0B 00:EAFB: 08        .byte $08   ; 
- D 3 - - - 0x002B0C 00:EAFC: 07        .byte $07   ; 
- D 3 - - - 0x002B0D 00:EAFD: 02        .byte $02   ; 
- - - - - - 0x002B0E 00:EAFE: 00        .byte $00   ; 
- D 3 - - - 0x002B0F 00:EAFF: 09        .byte $09   ; 
- D 3 - - - 0x002B10 00:EB00: 07        .byte $07   ; 
- D 3 - - - 0x002B11 00:EB01: 03        .byte $03   ; 
- D 3 - - - 0x002B12 00:EB02: 09        .byte $09   ; 
- D 3 - - - 0x002B13 00:EB03: 07        .byte $07   ; 
- D 3 - - - 0x002B14 00:EB04: 03        .byte $03   ; 
- D 3 - - - 0x002B15 00:EB05: 09        .byte $09   ; 
- D 3 - - - 0x002B16 00:EB06: 07        .byte $07   ; 
- D 3 - - - 0x002B17 00:EB07: 03        .byte $03   ; 
- D 3 - - - 0x002B18 00:EB08: 09        .byte $09   ; 
- D 3 - - - 0x002B19 00:EB09: 07        .byte $07   ; 
- D 3 - - - 0x002B1A 00:EB0A: 03        .byte $03   ; 
- D 3 - - - 0x002B1B 00:EB0B: 08        .byte $08   ; 
- D 3 - - - 0x002B1C 00:EB0C: 07        .byte $07   ; 
- D 3 - - - 0x002B1D 00:EB0D: 03        .byte $03   ; 
- - - - - - 0x002B1E 00:EB0E: 00        .byte $00   ; 
- D 3 - - - 0x002B1F 00:EB0F: 08        .byte $08   ; 
- D 3 - - - 0x002B20 00:EB10: 07        .byte $07   ; 
- D 3 - - - 0x002B21 00:EB11: 03        .byte $03   ; 
- D 3 - - - 0x002B22 00:EB12: 07        .byte $07   ; 
- D 3 - - - 0x002B23 00:EB13: 06        .byte $06   ; 
- D 3 - - - 0x002B24 00:EB14: 03        .byte $03   ; 
- D 3 - - - 0x002B25 00:EB15: 08        .byte $08   ; 
- D 3 - - - 0x002B26 00:EB16: 07        .byte $07   ; 
- D 3 - - - 0x002B27 00:EB17: 03        .byte $03   ; 
- D 3 - - - 0x002B28 00:EB18: 08        .byte $08   ; 
- D 3 - - - 0x002B29 00:EB19: 07        .byte $07   ; 
- D 3 - - - 0x002B2A 00:EB1A: 03        .byte $03   ; 
- D 3 - - - 0x002B2B 00:EB1B: 08        .byte $08   ; 
- D 3 - - - 0x002B2C 00:EB1C: 07        .byte $07   ; 
- D 3 - - - 0x002B2D 00:EB1D: 03        .byte $03   ; 
- - - - - - 0x002B2E 00:EB1E: 00        .byte $00   ; 



sub_EB1F:
- - - - - - 0x002B2F 00:EB1F: A2 00     LDX #$00
- - - - - - 0x002B31 00:EB21: A5 63     LDA ram_0063
bra_EB23:
- - - - - - 0x002B33 00:EB23: E8        INX
- - - - - - 0x002B34 00:EB24: 38        SEC
- - - - - - 0x002B35 00:EB25: E9 05     SBC #$05
- - - - - - 0x002B37 00:EB27: 10 FA     BPL bra_EB23
- - - - - - 0x002B39 00:EB29: A0 00     LDY #$00
- - - - - - 0x002B3B 00:EB2B: 8A        TXA
- - - - - - 0x002B3C 00:EB2C: 4A        LSR
- - - - - - 0x002B3D 00:EB2D: B0 02     BCS bra_EB31
- - - - - - 0x002B3F 00:EB2F: A0 40     LDY #$40
bra_EB31:
- - - - - - 0x002B41 00:EB31: 84 90     STY ram_0090
- - - - - - 0x002B43 00:EB33: A5 68     LDA ram_enemy_type
- - - - - - 0x002B45 00:EB35: 0A        ASL
- - - - - - 0x002B46 00:EB36: 0A        ASL
- - - - - - 0x002B47 00:EB37: 0A        ASL
- - - - - - 0x002B48 00:EB38: 0A        ASL
- - - - - - 0x002B49 00:EB39: 65 90     ADC ram_0090
- - - - - - 0x002B4B 00:EB3B: 85 90     STA ram_0090
- - - - - - 0x002B4D 00:EB3D: AD 79 07  LDA ram_0779
- - - - - - 0x002B50 00:EB40: 29 0F     AND #$0F
- - - - - - 0x002B52 00:EB42: 65 90     ADC ram_0090
- - - - - - 0x002B54 00:EB44: AA        TAX
- - - - - - 0x002B55 00:EB45: EE 79 07  INC ram_0779
- - - - - - 0x002B58 00:EB48: BD 4E EB  LDA tbl_EB4E,X
- - - - - - 0x002B5B 00:EB4B: 85 C3     STA ram_00C3
- - - - - - 0x002B5D 00:EB4D: 60        RTS



tbl_EB4E:
- - - - - - 0x002B5E 00:EB4E: 07        .byte $07   ; 
- - - - - - 0x002B5F 00:EB4F: 05        .byte $05   ; 
- - - - - - 0x002B60 00:EB50: 07        .byte $07   ; 
- - - - - - 0x002B61 00:EB51: 07        .byte $07   ; 
- - - - - - 0x002B62 00:EB52: 03        .byte $03   ; 
- - - - - - 0x002B63 00:EB53: 07        .byte $07   ; 
- - - - - - 0x002B64 00:EB54: 07        .byte $07   ; 
- - - - - - 0x002B65 00:EB55: 01        .byte $01   ; 
- - - - - - 0x002B66 00:EB56: 07        .byte $07   ; 
- - - - - - 0x002B67 00:EB57: 07        .byte $07   ; 
- - - - - - 0x002B68 00:EB58: 04        .byte $04   ; 
- - - - - - 0x002B69 00:EB59: 07        .byte $07   ; 
- - - - - - 0x002B6A 00:EB5A: 05        .byte $05   ; 
- - - - - - 0x002B6B 00:EB5B: 07        .byte $07   ; 
- - - - - - 0x002B6C 00:EB5C: 01        .byte $01   ; 
- - - - - - 0x002B6D 00:EB5D: 07        .byte $07   ; 
- - - - - - 0x002B6E 00:EB5E: 03        .byte $03   ; 
- - - - - - 0x002B6F 00:EB5F: 05        .byte $05   ; 
- - - - - - 0x002B70 00:EB60: 03        .byte $03   ; 
- - - - - - 0x002B71 00:EB61: 02        .byte $02   ; 
- - - - - - 0x002B72 00:EB62: 03        .byte $03   ; 
- - - - - - 0x002B73 00:EB63: 05        .byte $05   ; 
- - - - - - 0x002B74 00:EB64: 03        .byte $03   ; 
- - - - - - 0x002B75 00:EB65: 02        .byte $02   ; 
- - - - - - 0x002B76 00:EB66: 07        .byte $07   ; 
- - - - - - 0x002B77 00:EB67: 03        .byte $03   ; 
- - - - - - 0x002B78 00:EB68: 01        .byte $01   ; 
- - - - - - 0x002B79 00:EB69: 03        .byte $03   ; 
- - - - - - 0x002B7A 00:EB6A: 07        .byte $07   ; 
- - - - - - 0x002B7B 00:EB6B: 03        .byte $03   ; 
- - - - - - 0x002B7C 00:EB6C: 02        .byte $02   ; 
- - - - - - 0x002B7D 00:EB6D: 03        .byte $03   ; 
- - - - - - 0x002B7E 00:EB6E: 07        .byte $07   ; 
- - - - - - 0x002B7F 00:EB6F: 02        .byte $02   ; 
- - - - - - 0x002B80 00:EB70: 01        .byte $01   ; 
- - - - - - 0x002B81 00:EB71: 02        .byte $02   ; 
- - - - - - 0x002B82 00:EB72: 07        .byte $07   ; 
- - - - - - 0x002B83 00:EB73: 05        .byte $05   ; 
- - - - - - 0x002B84 00:EB74: 01        .byte $01   ; 
- - - - - - 0x002B85 00:EB75: 02        .byte $02   ; 
- - - - - - 0x002B86 00:EB76: 04        .byte $04   ; 
- - - - - - 0x002B87 00:EB77: 07        .byte $07   ; 
- - - - - - 0x002B88 00:EB78: 05        .byte $05   ; 
- - - - - - 0x002B89 00:EB79: 02        .byte $02   ; 
- - - - - - 0x002B8A 00:EB7A: 05        .byte $05   ; 
- - - - - - 0x002B8B 00:EB7B: 02        .byte $02   ; 
- - - - - - 0x002B8C 00:EB7C: 05        .byte $05   ; 
- - - - - - 0x002B8D 00:EB7D: 07        .byte $07   ; 
- - - - - - 0x002B8E 00:EB7E: 02        .byte $02   ; 
- - - - - - 0x002B8F 00:EB7F: 03        .byte $03   ; 
- - - - - - 0x002B90 00:EB80: 02        .byte $02   ; 
- - - - - - 0x002B91 00:EB81: 07        .byte $07   ; 
- - - - - - 0x002B92 00:EB82: 03        .byte $03   ; 
- - - - - - 0x002B93 00:EB83: 02        .byte $02   ; 
- - - - - - 0x002B94 00:EB84: 04        .byte $04   ; 
- - - - - - 0x002B95 00:EB85: 05        .byte $05   ; 
- - - - - - 0x002B96 00:EB86: 06        .byte $06   ; 
- - - - - - 0x002B97 00:EB87: 07        .byte $07   ; 
- - - - - - 0x002B98 00:EB88: 03        .byte $03   ; 
- - - - - - 0x002B99 00:EB89: 04        .byte $04   ; 
- - - - - - 0x002B9A 00:EB8A: 05        .byte $05   ; 
- - - - - - 0x002B9B 00:EB8B: 07        .byte $07   ; 
- - - - - - 0x002B9C 00:EB8C: 02        .byte $02   ; 
- - - - - - 0x002B9D 00:EB8D: 04        .byte $04   ; 
- - - - - - 0x002B9E 00:EB8E: 03        .byte $03   ; 
- - - - - - 0x002B9F 00:EB8F: 01        .byte $01   ; 
- - - - - - 0x002BA0 00:EB90: 07        .byte $07   ; 
- - - - - - 0x002BA1 00:EB91: 04        .byte $04   ; 
- - - - - - 0x002BA2 00:EB92: 03        .byte $03   ; 
- - - - - - 0x002BA3 00:EB93: 07        .byte $07   ; 
- - - - - - 0x002BA4 00:EB94: 01        .byte $01   ; 
- - - - - - 0x002BA5 00:EB95: 03        .byte $03   ; 
- - - - - - 0x002BA6 00:EB96: 01        .byte $01   ; 
- - - - - - 0x002BA7 00:EB97: 03        .byte $03   ; 
- - - - - - 0x002BA8 00:EB98: 04        .byte $04   ; 
- - - - - - 0x002BA9 00:EB99: 07        .byte $07   ; 
- - - - - - 0x002BAA 00:EB9A: 01        .byte $01   ; 
- - - - - - 0x002BAB 00:EB9B: 07        .byte $07   ; 
- - - - - - 0x002BAC 00:EB9C: 04        .byte $04   ; 
- - - - - - 0x002BAD 00:EB9D: 03        .byte $03   ; 
- - - - - - 0x002BAE 00:EB9E: 01        .byte $01   ; 
- - - - - - 0x002BAF 00:EB9F: 02        .byte $02   ; 
- - - - - - 0x002BB0 00:EBA0: 05        .byte $05   ; 
- - - - - - 0x002BB1 00:EBA1: 02        .byte $02   ; 
- - - - - - 0x002BB2 00:EBA2: 04        .byte $04   ; 
- - - - - - 0x002BB3 00:EBA3: 01        .byte $01   ; 
- - - - - - 0x002BB4 00:EBA4: 05        .byte $05   ; 
- - - - - - 0x002BB5 00:EBA5: 02        .byte $02   ; 
- - - - - - 0x002BB6 00:EBA6: 07        .byte $07   ; 
- - - - - - 0x002BB7 00:EBA7: 01        .byte $01   ; 
- - - - - - 0x002BB8 00:EBA8: 02        .byte $02   ; 
- - - - - - 0x002BB9 00:EBA9: 01        .byte $01   ; 
- - - - - - 0x002BBA 00:EBAA: 05        .byte $05   ; 
- - - - - - 0x002BBB 00:EBAB: 04        .byte $04   ; 
- - - - - - 0x002BBC 00:EBAC: 02        .byte $02   ; 
- - - - - - 0x002BBD 00:EBAD: 07        .byte $07   ; 
- - - - - - 0x002BBE 00:EBAE: 02        .byte $02   ; 
- - - - - - 0x002BBF 00:EBAF: 04        .byte $04   ; 
- - - - - - 0x002BC0 00:EBB0: 01        .byte $01   ; 
- - - - - - 0x002BC1 00:EBB1: 02        .byte $02   ; 
- - - - - - 0x002BC2 00:EBB2: 01        .byte $01   ; 
- - - - - - 0x002BC3 00:EBB3: 04        .byte $04   ; 
- - - - - - 0x002BC4 00:EBB4: 02        .byte $02   ; 
- - - - - - 0x002BC5 00:EBB5: 07        .byte $07   ; 
- - - - - - 0x002BC6 00:EBB6: 04        .byte $04   ; 
- - - - - - 0x002BC7 00:EBB7: 05        .byte $05   ; 
- - - - - - 0x002BC8 00:EBB8: 01        .byte $01   ; 
- - - - - - 0x002BC9 00:EBB9: 07        .byte $07   ; 
- - - - - - 0x002BCA 00:EBBA: 02        .byte $02   ; 
- - - - - - 0x002BCB 00:EBBB: 04        .byte $04   ; 
- - - - - - 0x002BCC 00:EBBC: 05        .byte $05   ; 
- - - - - - 0x002BCD 00:EBBD: 02        .byte $02   ; 
- - - - - - 0x002BCE 00:EBBE: 03        .byte $03   ; 
- - - - - - 0x002BCF 00:EBBF: 03        .byte $03   ; 
- - - - - - 0x002BD0 00:EBC0: 07        .byte $07   ; 
- - - - - - 0x002BD1 00:EBC1: 02        .byte $02   ; 
- - - - - - 0x002BD2 00:EBC2: 04        .byte $04   ; 
- - - - - - 0x002BD3 00:EBC3: 02        .byte $02   ; 
- - - - - - 0x002BD4 00:EBC4: 04        .byte $04   ; 
- - - - - - 0x002BD5 00:EBC5: 02        .byte $02   ; 
- - - - - - 0x002BD6 00:EBC6: 03        .byte $03   ; 
- - - - - - 0x002BD7 00:EBC7: 04        .byte $04   ; 
- - - - - - 0x002BD8 00:EBC8: 05        .byte $05   ; 
- - - - - - 0x002BD9 00:EBC9: 02        .byte $02   ; 
- - - - - - 0x002BDA 00:EBCA: 01        .byte $01   ; 
- - - - - - 0x002BDB 00:EBCB: 03        .byte $03   ; 
- - - - - - 0x002BDC 00:EBCC: 02        .byte $02   ; 
- - - - - - 0x002BDD 00:EBCD: 04        .byte $04   ; 



tbl_EBCE:
- D 3 - - - 0x002BDE 00:EBCE: 32        .byte $32   ; 00
- D 3 - - - 0x002BDF 00:EBCF: 28        .byte $28   ; 01
- D 3 - - - 0x002BE0 00:EBD0: 00        .byte $00   ; 02
- D 3 - - - 0x002BE1 00:EBD1: 14        .byte $14   ; 03
- D 3 - - - 0x002BE2 00:EBD2: 28        .byte $28   ; 04
- D 3 - - - 0x002BE3 00:EBD3: 28        .byte $28   ; 05
- D 3 - - - 0x002BE4 00:EBD4: 3C        .byte $3C   ; 06
- D 3 - - - 0x002BE5 00:EBD5: 28        .byte $28   ; 07
- D 3 - - - 0x002BE6 00:EBD6: 28        .byte $28   ; 08
- - - - - - 0x002BE7 00:EBD7: 28        .byte $28   ; 09



sub_EBD8:
loc_EBD8:
C D 3 - - - 0x002BE8 00:EBD8: A6 B6     LDX ram_player_animation
C - - - - - 0x002BEA 00:EBDA: E0 09     CPX #$09
C - - - - - 0x002BEC 00:EBDC: 90 02     BCC bra_EBE0
- - - - - - 0x002BEE 00:EBDE: A2 09     LDX #$09
bra_EBE0:
C - - - - - 0x002BF0 00:EBE0: BD CE EB  LDA tbl_EBCE,X
C - - - - - 0x002BF3 00:EBE3: 85 7E     STA ram_007E
C - - - - - 0x002BF5 00:EBE5: A9 00     LDA #$00
C - - - - - 0x002BF7 00:EBE7: A6 68     LDX ram_enemy_type
loc_EBE9_loop:
C D 3 - - - 0x002BF9 00:EBE9: E0 00     CPX #$00
C - - - - - 0x002BFB 00:EBEB: F0 07     BEQ bra_EBF4
C - - - - - 0x002BFD 00:EBED: 18        CLC
C - - - - - 0x002BFE 00:EBEE: 69 04     ADC #$04
C - - - - - 0x002C00 00:EBF0: CA        DEX
C - - - - - 0x002C01 00:EBF1: 4C E9 EB  JMP loc_EBE9_loop
bra_EBF4:
C - - - - - 0x002C04 00:EBF4: 85 7F     STA ram_007F
C - - - - - 0x002C06 00:EBF6: 20 0D EC  JSR sub_EC0D
C - - - - - 0x002C09 00:EBF9: 18        CLC
C - - - - - 0x002C0A 00:EBFA: 65 7F     ADC ram_007F
C - - - - - 0x002C0C 00:EBFC: 18        CLC
C - - - - - 0x002C0D 00:EBFD: 65 7E     ADC ram_007E
C - - - - - 0x002C0F 00:EBFF: AA        TAX
C - - - - - 0x002C10 00:EC00: BD 57 ED  LDA tbl_ED57,X
C - - - - - 0x002C13 00:EC03: 85 C3     STA ram_00C3
C - - - - - 0x002C15 00:EC05: A5 68     LDA ram_enemy_type
C - - - - - 0x002C17 00:EC07: 20 3D EC  JSR sub_EC3D
C - - - - - 0x002C1A 00:EC0A: 4C 5F E7  JMP loc_E75F



sub_EC0D:
C - - - - - 0x002C1D 00:EC0D: AD 73 E1  LDA tbl_E173
C - - - - - 0x002C20 00:EC10: 85 80     STA ram_0080
C - - - - - 0x002C22 00:EC12: AD 74 E1  LDA tbl_E173 + 1
C - - - - - 0x002C25 00:EC15: 85 81     STA ram_0081
C - - - - - 0x002C27 00:EC17: A5 F8     LDA ram_00F8
C - - - - - 0x002C29 00:EC19: 29 07     AND #$07
C - - - - - 0x002C2B 00:EC1B: AA        TAX
C - - - - - 0x002C2C 00:EC1C: A0 10     LDY #$10
C - - - - - 0x002C2E 00:EC1E: 20 2C EC  JSR sub_EC2C
C - - - - - 0x002C31 00:EC21: E6 78     INC ram_0078
C - - - - - 0x002C33 00:EC23: A5 78     LDA ram_0078
C - - - - - 0x002C35 00:EC25: 29 0F     AND #$0F
C - - - - - 0x002C37 00:EC27: 85 78     STA ram_0078
C - - - - - 0x002C39 00:EC29: B1 80     LDA (ram_0080),Y
C - - - - - 0x002C3B 00:EC2B: 60        RTS



sub_EC2C:
bra_EC2C_loop:
C - - - - - 0x002C3C 00:EC2C: 8A        TXA
C - - - - - 0x002C3D 00:EC2D: F0 0D     BEQ bra_EC3C_RTS
C - - - - - 0x002C3F 00:EC2F: 98        TYA
C - - - - - 0x002C40 00:EC30: 18        CLC
C - - - - - 0x002C41 00:EC31: 65 80     ADC ram_0080
C - - - - - 0x002C43 00:EC33: 85 80     STA ram_0080
C - - - - - 0x002C45 00:EC35: 90 02     BCC bra_EC39
- - - - - - 0x002C47 00:EC37: E6 81     INC ram_0081
bra_EC39:
C - - - - - 0x002C49 00:EC39: CA        DEX
C - - - - - 0x002C4A 00:EC3A: D0 F0     BNE bra_EC2C_loop
bra_EC3C_RTS:
C - - - - - 0x002C4C 00:EC3C: 60        RTS



sub_EC3D:
C - - - - - 0x002C4D 00:EC3D: 20 E9 D0  JSR sub_D0E9_read_pointers_after_JSR
- D 3 - I - 0x002C50 00:EC40: 4A EC     .word ofs_009_EC4A_00
- D 3 - I - 0x002C52 00:EC42: 70 EC     .word ofs_009_EC70_01
- D 3 - I - 0x002C54 00:EC44: 95 EC     .word ofs_009_EC95_02
- D 3 - I - 0x002C56 00:EC46: BA EC     .word ofs_009_ECBA_03
- D 3 - I - 0x002C58 00:EC48: E4 EC     .word ofs_009_ECE4_04



loc_EC4A:
ofs_009_EC4A_00:
C - - J - - 0x002C5A 00:EC4A: A5 C3     LDA ram_00C3
C - - - - - 0x002C5C 00:EC4C: 20 E9 D0  JSR sub_D0E9_read_pointers_after_JSR
- - - - - - 0x002C5F 00:EC4F: 01 ED     .word ofs_010_ED01_00
- D 3 - I - 0x002C61 00:EC51: 16 ED     .word ofs_010_ED16_01
- D 3 - I - 0x002C63 00:EC53: 1A ED     .word ofs_010_ED1A_02
- D 3 - I - 0x002C65 00:EC55: 1E ED     .word ofs_010_ED1E_03
- D 3 - I - 0x002C67 00:EC57: 22 ED     .word ofs_010_ED22_04
- D 3 - I - 0x002C69 00:EC59: 12 ED     .word ofs_010_ED12_05
- - - - - - 0x002C6B 00:EC5B: 36 ED     .word ofs_010_ED36_06
- D 3 - I - 0x002C6D 00:EC5D: 63 EC     .word ofs_010_EC63_07
- - - - - - 0x002C6F 00:EC5F: 6A EC     .word ofs_010_EC6A_08
- - - - - - 0x002C71 00:EC61: 41 ED     .word ofs_010_ED41_09



ofs_010_EC63_07:
C - - J - - 0x002C73 00:EC63: A9 00     LDA #$00
C - - - - - 0x002C75 00:EC65: 85 7C     STA ram_007C
C - - - - - 0x002C77 00:EC67: 4C 41 E6  JMP loc_E641



ofs_010_EC6A_08:
- - - - - - 0x002C7A 00:EC6A: 20 1F EB  JSR sub_EB1F
- - - - - - 0x002C7D 00:EC6D: 4C 4A EC  JMP loc_EC4A



loc_EC70:
ofs_009_EC70_01:
C D 3 J - - 0x002C80 00:EC70: A5 C3     LDA ram_00C3
C - - - - - 0x002C82 00:EC72: 20 E9 D0  JSR sub_D0E9_read_pointers_after_JSR
- - - - - - 0x002C85 00:EC75: 01 ED     .word ofs_010_ED01_00
- D 3 - I - 0x002C87 00:EC77: 2A ED     .word ofs_010_ED2A_01
- D 3 - I - 0x002C89 00:EC79: 22 ED     .word ofs_010_ED22_02
- D 3 - I - 0x002C8B 00:EC7B: 0E ED     .word ofs_010_ED0E_03
- D 3 - I - 0x002C8D 00:EC7D: 36 ED     .word ofs_010_ED36_04
- - - - - - 0x002C8F 00:EC7F: 39 ED     .word ofs_010_ED39_05
- - - - - - 0x002C91 00:EC81: 12 ED     .word ofs_010_ED12_06
- D 3 - I - 0x002C93 00:EC83: 1E ED     .word ofs_010_ED1E_07
- - - - - - 0x002C95 00:EC85: 8F EC     .word ofs_010_EC8F_08
- - - - - - 0x002C97 00:EC87: 41 ED     .word ofs_010_ED41_09
- D 3 - I - 0x002C99 00:EC89: 16 ED     .word ofs_010_ED16_0A
- D 3 - I - 0x002C9B 00:EC8B: 1A ED     .word ofs_010_ED1A_0B
- D 3 - I - 0x002C9D 00:EC8D: 1E ED     .word ofs_010_ED1E_0C



ofs_010_EC8F_08:
- - - - - - 0x002C9F 00:EC8F: 20 1F EB  JSR sub_EB1F
- - - - - - 0x002CA2 00:EC92: 4C 70 EC  JMP loc_EC70



ofs_009_EC95_02:
loc_EC95:
C - - J - - 0x002CA5 00:EC95: A5 C3     LDA ram_00C3
C - - - - - 0x002CA7 00:EC97: 20 E9 D0  JSR sub_D0E9_read_pointers_after_JSR
- - - - - - 0x002CAA 00:EC9A: 01 ED     .word ofs_010_ED01_00
- - - - - - 0x002CAC 00:EC9C: 16 ED     .word ofs_010_ED16_01
- D 3 - I - 0x002CAE 00:EC9E: 1A ED     .word ofs_010_ED1A_02
- D 3 - I - 0x002CB0 00:ECA0: 1E ED     .word ofs_010_ED1E_03
- D 3 - I - 0x002CB2 00:ECA2: 22 ED     .word ofs_010_ED22_04
- D 3 - I - 0x002CB4 00:ECA4: 12 ED     .word ofs_010_ED12_05
- - - - - - 0x002CB6 00:ECA6: 36 ED     .word ofs_010_ED36_06
- D 3 - I - 0x002CB8 00:ECA8: 39 ED     .word ofs_010_ED39_07
- - - - - - 0x002CBA 00:ECAA: B4 EC     .word ofs_010_ECB4_08
- - - - - - 0x002CBC 00:ECAC: 41 ED     .word ofs_010_ED41_09
- - - - - - 0x002CBE 00:ECAE: 16 ED     .word ofs_010_ED16_0A
- - - - - - 0x002CC0 00:ECB0: 1A ED     .word ofs_010_ED1A_0B
- - - - - - 0x002CC2 00:ECB2: 1E ED     .word ofs_010_ED1E_0C



ofs_010_ECB4_08:
- - - - - - 0x002CC4 00:ECB4: 20 1F EB  JSR sub_EB1F
- - - - - - 0x002CC7 00:ECB7: 4C 95 EC  JMP loc_EC95



loc_ECBA:
ofs_009_ECBA_03:
C D 3 J - - 0x002CCA 00:ECBA: A5 C3     LDA ram_00C3
C - - - - - 0x002CCC 00:ECBC: 20 E9 D0  JSR sub_D0E9_read_pointers_after_JSR
- - - - - - 0x002CCF 00:ECBF: 01 ED     .word ofs_010_ED01_00
- - - - - - 0x002CD1 00:ECC1: 2A ED     .word ofs_010_ED2A_01
- D 3 - I - 0x002CD3 00:ECC3: 1A ED     .word ofs_010_ED1A_02
- D 3 - I - 0x002CD5 00:ECC5: 22 ED     .word ofs_010_ED22_03
- D 3 - I - 0x002CD7 00:ECC7: 16 ED     .word ofs_010_ED16_04
- D 3 - I - 0x002CD9 00:ECC9: 12 ED     .word ofs_010_ED12_05
- - - - - - 0x002CDB 00:ECCB: 36 ED     .word ofs_010_ED36_06
- D 3 - I - 0x002CDD 00:ECCD: D9 EC     .word ofs_010_ECD9_07
- - - - - - 0x002CDF 00:ECCF: DE EC     .word ofs_010_ECDE_08
- - - - - - 0x002CE1 00:ECD1: 41 ED     .word ofs_010_ED41_09
- D 3 - I - 0x002CE3 00:ECD3: 2A ED     .word ofs_010_ED2A_0A
- D 3 - I - 0x002CE5 00:ECD5: 1A ED     .word ofs_010_ED1A_0B
- D 3 - I - 0x002CE7 00:ECD7: 1E ED     .word ofs_010_ED1E_0C



ofs_010_ECD9_07:
C - - J - - 0x002CE9 00:ECD9: A9 00     LDA #$00
C - - - - - 0x002CEB 00:ECDB: 4C 41 E6  JMP loc_E641



ofs_010_ECDE_08:
- - - - - - 0x002CEE 00:ECDE: 20 1F EB  JSR sub_EB1F
- - - - - - 0x002CF1 00:ECE1: 4C BA EC  JMP loc_ECBA



ofs_009_ECE4_04:
C - - J - - 0x002CF4 00:ECE4: A5 C3     LDA ram_00C3
C - - - - - 0x002CF6 00:ECE6: 20 E9 D0  JSR sub_D0E9_read_pointers_after_JSR
- - - - - - 0x002CF9 00:ECE9: 01 ED     .word ofs_010_ED01_00
- D 3 - I - 0x002CFB 00:ECEB: 16 ED     .word ofs_010_ED16_01
- D 3 - I - 0x002CFD 00:ECED: 22 ED     .word ofs_010_ED22_02
- D 3 - I - 0x002CFF 00:ECEF: 1E ED     .word ofs_010_ED1E_03
- D 3 - I - 0x002D01 00:ECF1: 12 ED     .word ofs_010_ED12_04
- D 3 - I - 0x002D03 00:ECF3: 1A ED     .word ofs_010_ED1A_05
- - - - - - 0x002D05 00:ECF5: 36 ED     .word ofs_010_ED36_06
- - - - - - 0x002D07 00:ECF7: 39 ED     .word ofs_010_ED39_07
- - - - - - 0x002D09 00:ECF9: 3C ED     .word ofs_010_ED3C_08
- - - - - - 0x002D0B 00:ECFB: 41 ED     .word ofs_010_ED41_09
- - - - - - 0x002D0D 00:ECFD: 2A ED     .word ofs_010_ED2A_0A
- - - - - - 0x002D0F 00:ECFF: 2A ED     .word ofs_010_ED2A_0B



ofs_010_ED01_00:
- - - - - - 0x002D11 00:ED01: A9 00     LDA #$00
- - - - - - 0x002D13 00:ED03: 85 7C     STA ram_007C
- - - - - - 0x002D15 00:ED05: A9 01     LDA #$01
- - - - - - 0x002D17 00:ED07: 4C 50 ED  JMP loc_ED50


; bzk garbage
- - - - - - 0x002D1A 00:ED0A: A9 00     LDA #$00
- - - - - - 0x002D1C 00:ED0C: D0 36     BNE bra_ED44



ofs_010_ED0E_03:
C - - J - - 0x002D1E 00:ED0E: A9 01     LDA #$01
C - - - - - 0x002D20 00:ED10: D0 32     BNE bra_ED44

ofs_010_ED12_05:
ofs_010_ED12_06:
ofs_010_ED12_04:
C - - J - - 0x002D22 00:ED12: A9 02     LDA #$02
C - - - - - 0x002D24 00:ED14: D0 2E     BNE bra_ED44

ofs_010_ED16_01:
ofs_010_ED16_0A:
ofs_010_ED16_04:
C - - J - - 0x002D26 00:ED16: A9 03     LDA #$03
C - - - - - 0x002D28 00:ED18: D0 2A     BNE bra_ED44

ofs_010_ED1A_02:
ofs_010_ED1A_0B:
ofs_010_ED1A_05:
C - - J - - 0x002D2A 00:ED1A: A9 04     LDA #$04
C - - - - - 0x002D2C 00:ED1C: D0 26     BNE bra_ED44

ofs_010_ED1E_03:
ofs_010_ED1E_07:
ofs_010_ED1E_0C:
C - - J - - 0x002D2E 00:ED1E: A9 05     LDA #$05
C - - - - - 0x002D30 00:ED20: D0 22     BNE bra_ED44

ofs_010_ED22_04:
ofs_010_ED22_02:
ofs_010_ED22_03:
C - - J - - 0x002D32 00:ED22: A9 06     LDA #$06
C - - - - - 0x002D34 00:ED24: D0 1E     BNE bra_ED44


; bzk garbage
- - - - - - 0x002D36 00:ED26: A9 07     LDA #$07
- - - - - - 0x002D38 00:ED28: D0 1A     BNE bra_ED44

ofs_010_ED2A_01:
ofs_010_ED2A_0A:
ofs_010_ED2A_0B:
C - - J - - 0x002D3A 00:ED2A: A9 08     LDA #$08
C - - - - - 0x002D3C 00:ED2C: D0 16     BNE bra_ED44


; bzk garbage
- - - - - - 0x002D3E 00:ED2E: A9 09     LDA #$09
- - - - - - 0x002D40 00:ED30: D0 12     BNE bra_ED44
- - - - - - 0x002D42 00:ED32: A9 0A     LDA #$0A
- - - - - - 0x002D44 00:ED34: D0 0E     BNE bra_ED44



ofs_010_ED36_06:
ofs_010_ED36_04:
C - - J - - 0x002D46 00:ED36: 4C 4B E6  JMP loc_E64B



ofs_010_ED39_05:
ofs_010_ED39_07:
C - - J - - 0x002D49 00:ED39: 4C 41 E6  JMP loc_E641



ofs_010_ED3C_08:
- - - - - - 0x002D4C 00:ED3C: A9 15     LDA #$15
- - - - - - 0x002D4E 00:ED3E: 4C 50 ED  JMP loc_ED50



ofs_010_ED41_09:
- - - - - - 0x002D51 00:ED41: 4C AD E8  JMP loc_E8AD



bra_ED44:
C - - - - - 0x002D54 00:ED44: 85 7C     STA ram_007C
C - - - - - 0x002D56 00:ED46: A9 02     LDA #$02
C - - - - - 0x002D58 00:ED48: 85 CE     STA ram_enemy_animation
C - - - - - 0x002D5A 00:ED4A: 20 64 EA  JSR sub_EA64
C - - - - - 0x002D5D 00:ED4D: BD 7F EA  LDA tbl_EA7F,X
loc_ED50:
C - - - - - 0x002D60 00:ED50: 85 C2     STA ram_00C2
C - - - - - 0x002D62 00:ED52: A9 00     LDA #$00
C - - - - - 0x002D64 00:ED54: 85 7B     STA ram_007B
C - - - - - 0x002D66 00:ED56: 60        RTS



tbl_ED57:
- D 3 - - - 0x002D67 00:ED57: 02        .byte $02   ; 
- D 3 - - - 0x002D68 00:ED58: 01        .byte $01   ; 
- D 3 - - - 0x002D69 00:ED59: 02        .byte $02   ; 
- - - - - - 0x002D6A 00:ED5A: 04        .byte $04   ; 
- D 3 - - - 0x002D6B 00:ED5B: 04        .byte $04   ; 
- D 3 - - - 0x002D6C 00:ED5C: 02        .byte $02   ; 
- D 3 - - - 0x002D6D 00:ED5D: 03        .byte $03   ; 
- D 3 - - - 0x002D6E 00:ED5E: 02        .byte $02   ; 
- D 3 - - - 0x002D6F 00:ED5F: 04        .byte $04   ; 
- D 3 - - - 0x002D70 00:ED60: 07        .byte $07   ; 
- - - - - - 0x002D71 00:ED61: 04        .byte $04   ; 
- D 3 - - - 0x002D72 00:ED62: 03        .byte $03   ; 
- D 3 - - - 0x002D73 00:ED63: 03        .byte $03   ; 
- D 3 - - - 0x002D74 00:ED64: 02        .byte $02   ; 
- - - - - - 0x002D75 00:ED65: 04        .byte $04   ; 
- D 3 - - - 0x002D76 00:ED66: 03        .byte $03   ; 
- D 3 - - - 0x002D77 00:ED67: 01        .byte $01   ; 
- D 3 - - - 0x002D78 00:ED68: 03        .byte $03   ; 
- D 3 - - - 0x002D79 00:ED69: 02        .byte $02   ; 
- D 3 - - - 0x002D7A 00:ED6A: 03        .byte $03   ; 
- D 3 - - - 0x002D7B 00:ED6B: 03        .byte $03   ; 
- D 3 - - - 0x002D7C 00:ED6C: 07        .byte $07   ; 
- D 3 - - - 0x002D7D 00:ED6D: 03        .byte $03   ; 
- D 3 - - - 0x002D7E 00:ED6E: 03        .byte $03   ; 
- - - - - - 0x002D7F 00:ED6F: 01        .byte $01   ; 
- - - - - - 0x002D80 00:ED70: 02        .byte $02   ; 
- D 3 - - - 0x002D81 00:ED71: 04        .byte $04   ; 
- D 3 - - - 0x002D82 00:ED72: 02        .byte $02   ; 
- D 3 - - - 0x002D83 00:ED73: 03        .byte $03   ; 
- D 3 - - - 0x002D84 00:ED74: 03        .byte $03   ; 
- D 3 - - - 0x002D85 00:ED75: 04        .byte $04   ; 
- D 3 - - - 0x002D86 00:ED76: 03        .byte $03   ; 
- D 3 - - - 0x002D87 00:ED77: 03        .byte $03   ; 
- D 3 - - - 0x002D88 00:ED78: 07        .byte $07   ; 
- - - - - - 0x002D89 00:ED79: 03        .byte $03   ; 
- D 3 - - - 0x002D8A 00:ED7A: 04        .byte $04   ; 
- D 3 - - - 0x002D8B 00:ED7B: 03        .byte $03   ; 
- D 3 - - - 0x002D8C 00:ED7C: 03        .byte $03   ; 
- D 3 - - - 0x002D8D 00:ED7D: 02        .byte $02   ; 
- D 3 - - - 0x002D8E 00:ED7E: 03        .byte $03   ; 
- D 3 - - - 0x002D8F 00:ED7F: 04        .byte $04   ; 
- D 3 - - - 0x002D90 00:ED80: 03        .byte $03   ; 
- D 3 - - - 0x002D91 00:ED81: 04        .byte $04   ; 
- D 3 - - - 0x002D92 00:ED82: 05        .byte $05   ; 
- D 3 - - - 0x002D93 00:ED83: 02        .byte $02   ; 
- D 3 - - - 0x002D94 00:ED84: 02        .byte $02   ; 
- D 3 - - - 0x002D95 00:ED85: 01        .byte $01   ; 
- D 3 - - - 0x002D96 00:ED86: 03        .byte $03   ; 
- D 3 - - - 0x002D97 00:ED87: 04        .byte $04   ; 
- D 3 - - - 0x002D98 00:ED88: 04        .byte $04   ; 
- D 3 - - - 0x002D99 00:ED89: 04        .byte $04   ; 
- D 3 - - - 0x002D9A 00:ED8A: 03        .byte $03   ; 
- D 3 - - - 0x002D9B 00:ED8B: 04        .byte $04   ; 
- D 3 - - - 0x002D9C 00:ED8C: 07        .byte $07   ; 
- D 3 - - - 0x002D9D 00:ED8D: 04        .byte $04   ; 
- D 3 - - - 0x002D9E 00:ED8E: 07        .byte $07   ; 
- D 3 - - - 0x002D9F 00:ED8F: 02        .byte $02   ; 
- D 3 - - - 0x002DA0 00:ED90: 03        .byte $03   ; 
- D 3 - - - 0x002DA1 00:ED91: 02        .byte $02   ; 
- D 3 - - - 0x002DA2 00:ED92: 02        .byte $02   ; 
- D 3 - - - 0x002DA3 00:ED93: 04        .byte $04   ; 
- D 3 - - - 0x002DA4 00:ED94: 05        .byte $05   ; 
- D 3 - - - 0x002DA5 00:ED95: 03        .byte $03   ; 
- D 3 - - - 0x002DA6 00:ED96: 04        .byte $04   ; 
- D 3 - - - 0x002DA7 00:ED97: 02        .byte $02   ; 
- D 3 - - - 0x002DA8 00:ED98: 02        .byte $02   ; 
- D 3 - - - 0x002DA9 00:ED99: 05        .byte $05   ; 
- D 3 - - - 0x002DAA 00:ED9A: 02        .byte $02   ; 
- D 3 - - - 0x002DAB 00:ED9B: 02        .byte $02   ; 
- D 3 - - - 0x002DAC 00:ED9C: 05        .byte $05   ; 
- D 3 - - - 0x002DAD 00:ED9D: 02        .byte $02   ; 
- - - - - - 0x002DAE 00:ED9E: 07        .byte $07   ; 
- D 3 - - - 0x002DAF 00:ED9F: 07        .byte $07   ; 
- D 3 - - - 0x002DB0 00:EDA0: 03        .byte $03   ; 
- - - - - - 0x002DB1 00:EDA1: 07        .byte $07   ; 
- - - - - - 0x002DB2 00:EDA2: 03        .byte $03   ; 
- - - - - - 0x002DB3 00:EDA3: 02        .byte $02   ; 
- - - - - - 0x002DB4 00:EDA4: 02        .byte $02   ; 
- - - - - - 0x002DB5 00:EDA5: 02        .byte $02   ; 
- - - - - - 0x002DB6 00:EDA6: 02        .byte $02   ; 
- - - - - - 0x002DB7 00:EDA7: 02        .byte $02   ; 
- - - - - - 0x002DB8 00:EDA8: 01        .byte $01   ; 
- - - - - - 0x002DB9 00:EDA9: 03        .byte $03   ; 
- - - - - - 0x002DBA 00:EDAA: 04        .byte $04   ; 
- - - - - - 0x002DBB 00:EDAB: 01        .byte $01   ; 
- - - - - - 0x002DBC 00:EDAC: 02        .byte $02   ; 
- - - - - - 0x002DBD 00:EDAD: 03        .byte $03   ; 
- - - - - - 0x002DBE 00:EDAE: 02        .byte $02   ; 
- - - - - - 0x002DBF 00:EDAF: 04        .byte $04   ; 
- - - - - - 0x002DC0 00:EDB0: 02        .byte $02   ; 
- - - - - - 0x002DC1 00:EDB1: 01        .byte $01   ; 
- - - - - - 0x002DC2 00:EDB2: 03        .byte $03   ; 
- - - - - - 0x002DC3 00:EDB3: 03        .byte $03   ; 
- - - - - - 0x002DC4 00:EDB4: 04        .byte $04   ; 
- - - - - - 0x002DC5 00:EDB5: 01        .byte $01   ; 
- - - - - - 0x002DC6 00:EDB6: 03        .byte $03   ; 
- - - - - - 0x002DC7 00:EDB7: 01        .byte $01   ; 
- - - - - - 0x002DC8 00:EDB8: 03        .byte $03   ; 
- - - - - - 0x002DC9 00:EDB9: 05        .byte $05   ; 
- - - - - - 0x002DCA 00:EDBA: 02        .byte $02   ; 



sub_EDBB:
loc_EDBB:
C D 3 - - - 0x002DCB 00:EDBB: A5 68     LDA ram_enemy_type
C - - - - - 0x002DCD 00:EDBD: C9 02     CMP #$02
C - - - - - 0x002DCF 00:EDBF: F0 09     BEQ bra_EDCA
C - - - - - 0x002DD1 00:EDC1: 60        RTS



tbl_EDC2:
- D 3 - - - 0x002DD2 00:EDC2: 97        .byte $97   ; 00
- D 3 - - - 0x002DD3 00:EDC3: EA        .byte $EA   ; 01
- D 3 - - - 0x002DD4 00:EDC4: 20        .byte $20   ; 02
- D 3 - - - 0x002DD5 00:EDC5: 00        .byte $00   ; 03



tbl_EDC6:
- D 3 - - - 0x002DD6 00:EDC6: 62        .byte $62   ; 
tbl_EDC7:
- D 3 - - - 0x002DD7 00:EDC7: 50        .byte $50   ; 
- D 3 - - - 0x002DD8 00:EDC8: 50        .byte $50   ; 
- D 3 - - - 0x002DD9 00:EDC9: 98        .byte $98   ; 



bra_EDCA:
C - - - - - 0x002DDA 00:EDCA: A2 07     LDX #$07
C - - - - - 0x002DDC 00:EDCC: A9 AA     LDA #$AA
bra_EDCE_loop:
C - - - - - 0x002DDE 00:EDCE: 9D 00 04  STA ram_0400,X
C - - - - - 0x002DE1 00:EDD1: CA        DEX
C - - - - - 0x002DE2 00:EDD2: 10 FA     BPL bra_EDCE_loop
C - - - - - 0x002DE4 00:EDD4: A5 71     LDA ram_0071
C - - - - - 0x002DE6 00:EDD6: 4A        LSR
C - - - - - 0x002DE7 00:EDD7: 4A        LSR
C - - - - - 0x002DE8 00:EDD8: 4A        LSR
C - - - - - 0x002DE9 00:EDD9: A8        TAY
C - - - - - 0x002DEA 00:EDDA: 29 02     AND #$02
C - - - - - 0x002DEC 00:EDDC: AA        TAX
C - - - - - 0x002DED 00:EDDD: 98        TYA
C - - - - - 0x002DEE 00:EDDE: 4A        LSR
C - - - - - 0x002DEF 00:EDDF: 4A        LSR
C - - - - - 0x002DF0 00:EDE0: E9 00     SBC #$00
C - - - - - 0x002DF2 00:EDE2: A8        TAY
C - - - - - 0x002DF3 00:EDE3: BD C6 ED  LDA tbl_EDC6,X
C - - - - - 0x002DF6 00:EDE6: 99 00 04  STA ram_0400,Y
C - - - - - 0x002DF9 00:EDE9: BD C7 ED  LDA tbl_EDC7,X
C - - - - - 0x002DFC 00:EDEC: 99 01 04  STA ram_0401,Y
C - - - - - 0x002DFF 00:EDEF: AD 00 04  LDA ram_0400
C - - - - - 0x002E02 00:EDF2: 09 33     ORA #$33
C - - - - - 0x002E04 00:EDF4: 8D 00 04  STA ram_0400
C - - - - - 0x002E07 00:EDF7: AD 07 04  LDA ram_0407
C - - - - - 0x002E0A 00:EDFA: 09 CC     ORA #$CC
C - - - - - 0x002E0C 00:EDFC: 8D 07 04  STA ram_0407
C - - - - - 0x002E0F 00:EDFF: AD 02 07  LDA ram_0702
C - - - - - 0x002E12 00:EE02: C9 04     CMP #$04
C - - - - - 0x002E14 00:EE04: 90 67     BCC bra_EE6D
C - - - - - 0x002E16 00:EE06: A2 1F     LDX #$1F
C - - - - - 0x002E18 00:EE08: A9 00     LDA #$00
bra_EE0A_loop:  ; clear 0500-051F
C - - - - - 0x002E1A 00:EE0A: 9D 00 05  STA ram_0500,X
C - - - - - 0x002E1D 00:EE0D: CA        DEX
C - - - - - 0x002E1E 00:EE0E: 10 FA     BPL bra_EE0A_loop
C - - - - - 0x002E20 00:EE10: A5 CE     LDA ram_enemy_animation
C - - - - - 0x002E22 00:EE12: C9 02     CMP #$02
C - - - - - 0x002E24 00:EE14: B0 44     BCS bra_EE5A
C - - - - - 0x002E26 00:EE16: A0 00     LDY #$00
C - - - - - 0x002E28 00:EE18: A6 72     LDX ram_enemy_facing_direction
C - - - - - 0x002E2A 00:EE1A: F0 02     BEQ bra_EE1E
C - - - - - 0x002E2C 00:EE1C: A0 FF     LDY #$FF
bra_EE1E:
C - - - - - 0x002E2E 00:EE1E: A5 71     LDA ram_0071
C - - - - - 0x002E30 00:EE20: 4A        LSR
C - - - - - 0x002E31 00:EE21: 4A        LSR
C - - - - - 0x002E32 00:EE22: 4A        LSR
C - - - - - 0x002E33 00:EE23: 85 97     STA ram_0097
C - - - - - 0x002E35 00:EE25: 98        TYA
C - - - - - 0x002E36 00:EE26: 18        CLC
C - - - - - 0x002E37 00:EE27: 65 97     ADC ram_0097
C - - - - - 0x002E39 00:EE29: 29 1F     AND #$1F
C - - - - - 0x002E3B 00:EE2B: A8        TAY
C - - - - - 0x002E3C 00:EE2C: E6 AA     INC ram_00AA
C - - - - - 0x002E3E 00:EE2E: A5 AA     LDA ram_00AA
C - - - - - 0x002E40 00:EE30: AA        TAX
C - - - - - 0x002E41 00:EE31: 29 04     AND #$04
C - - - - - 0x002E43 00:EE33: F0 04     BEQ bra_EE39
C - - - - - 0x002E45 00:EE35: 8A        TXA
C - - - - - 0x002E46 00:EE36: 49 03     EOR #$03
C - - - - - 0x002E48 00:EE38: AA        TAX
bra_EE39:
C - - - - - 0x002E49 00:EE39: 8A        TXA
C - - - - - 0x002E4A 00:EE3A: 29 03     AND #$03
C - - - - - 0x002E4C 00:EE3C: AA        TAX
bra_EE3D:
C - - - - - 0x002E4D 00:EE3D: A5 AA     LDA ram_00AA
C - - - - - 0x002E4F 00:EE3F: 29 08     AND #$08
C - - - - - 0x002E51 00:EE41: F0 0C     BEQ bra_EE4F
C - - - - - 0x002E53 00:EE43: BD 44 EF  LDA tbl_EF44,X
C - - - - - 0x002E56 00:EE46: 99 01 05  STA ram_0501,Y
C - - - - - 0x002E59 00:EE49: C8        INY
bra_EE4A:
C - - - - - 0x002E5A 00:EE4A: CA        DEX
C - - - - - 0x002E5B 00:EE4B: 10 F0     BPL bra_EE3D
C - - - - - 0x002E5D 00:EE4D: 30 1E     BMI bra_EE6D
bra_EE4F:
C - - - - - 0x002E5F 00:EE4F: BD 48 EF  LDA tbl_EF48,X
C - - - - - 0x002E62 00:EE52: 99 00 05  STA ram_0500,Y
C - - - - - 0x002E65 00:EE55: 88        DEY
C - - - - - 0x002E66 00:EE56: 10 F2     BPL bra_EE4A
C - - - - - 0x002E68 00:EE58: 30 13     BMI bra_EE6D
bra_EE5A:
C - - - - - 0x002E6A 00:EE5A: D0 1A     BNE bra_EE76
C - - - - - 0x002E6C 00:EE5C: A2 0A     LDX #$0A
C - - - - - 0x002E6E 00:EE5E: A9 02     LDA #$02
C - - - - - 0x002E70 00:EE60: A4 72     LDY ram_enemy_facing_direction
C - - - - - 0x002E72 00:EE62: F0 04     BEQ bra_EE68
C - - - - - 0x002E74 00:EE64: A2 02     LDX #$02
C - - - - - 0x002E76 00:EE66: A9 FD     LDA #$FD
bra_EE68:
C - - - - - 0x002E78 00:EE68: A8        TAY
C - - - - - 0x002E79 00:EE69: 86 AA     STX ram_00AA
C - - - - - 0x002E7B 00:EE6B: D0 B1     BNE bra_EE1E
bra_EE6D:
loc_EE6D:
C D 3 - - - 0x002E7D 00:EE6D: A9 E5     LDA #$E5
C - - - - - 0x002E7F 00:EE6F: 8D 00 05  STA ram_0500
C - - - - - 0x002E82 00:EE72: 8D 1F 05  STA ram_051F
C - - - - - 0x002E85 00:EE75: 60        RTS
bra_EE76:
C - - - - - 0x002E86 00:EE76: C9 06     CMP #$06
C - - - - - 0x002E88 00:EE78: B0 31     BCS bra_EEAB
C - - - - - 0x002E8A 00:EE7A: 38        SEC
C - - - - - 0x002E8B 00:EE7B: E9 03     SBC #$03
C - - - - - 0x002E8D 00:EE7D: 0A        ASL
C - - - - - 0x002E8E 00:EE7E: A8        TAY
C - - - - - 0x002E8F 00:EE7F: A2 03     LDX #$03
bra_EE81_loop:
C - - - - - 0x002E91 00:EE81: BD C2 ED  LDA tbl_EDC2,X
C - - - - - 0x002E94 00:EE84: 9D 10 02  STA ram_spr_Y + $10,X
C - - - - - 0x002E97 00:EE87: CA        DEX
C - - - - - 0x002E98 00:EE88: 10 F7     BPL bra_EE81_loop
C - - - - - 0x002E9A 00:EE8A: B9 4C EF  LDA tbl_EF4C,Y
C - - - - - 0x002E9D 00:EE8D: 8D 10 02  STA ram_spr_Y + $10
C - - - - - 0x002EA0 00:EE90: B9 4D EF  LDA tbl_EF4D,Y
C - - - - - 0x002EA3 00:EE93: 85 A6     STA ram_00A6
C - - - - - 0x002EA5 00:EE95: A5 A4     LDA ram_00A4
C - - - - - 0x002EA7 00:EE97: F0 D4     BEQ bra_EE6D
C - - - - - 0x002EA9 00:EE99: C9 C0     CMP #$C0
C - - - - - 0x002EAB 00:EE9B: B0 21     BCS bra_EEBE
C - - - - - 0x002EAD 00:EE9D: C9 89     CMP #$89
C - - - - - 0x002EAF 00:EE9F: B0 04     BCS bra_EEA5
C - - - - - 0x002EB1 00:EEA1: E6 A4     INC ram_00A4
C - - - - - 0x002EB3 00:EEA3: D0 1D     BNE bra_EEC2
bra_EEA5:
C - - - - - 0x002EB5 00:EEA5: 09 C0     ORA #$C0
C - - - - - 0x002EB7 00:EEA7: 85 A4     STA ram_00A4
C - - - - - 0x002EB9 00:EEA9: D0 17     BNE bra_EEC2
bra_EEAB:
C - - - - - 0x002EBB 00:EEAB: D0 C0     BNE bra_EE6D
C - - - - - 0x002EBD 00:EEAD: A9 00     LDA #$00
C - - - - - 0x002EBF 00:EEAF: 8D 13 02  STA ram_spr_X + $10
C - - - - - 0x002EC2 00:EEB2: F0 B9     BEQ bra_EE6D
bra_EEB4:
C - - - - - 0x002EC4 00:EEB4: A9 00     LDA #$00
C - - - - - 0x002EC6 00:EEB6: 85 A4     STA ram_00A4
C - - - - - 0x002EC8 00:EEB8: 85 C2     STA ram_00C2
C - - - - - 0x002ECA 00:EEBA: 85 7C     STA ram_007C
C - - - - - 0x002ECC 00:EEBC: F0 AF     BEQ bra_EE6D
bra_EEBE:
C - - - - - 0x002ECE 00:EEBE: F0 F4     BEQ bra_EEB4
C - - - - - 0x002ED0 00:EEC0: C6 A4     DEC ram_00A4
bra_EEC2:
C - - - - - 0x002ED2 00:EEC2: A5 71     LDA ram_0071
C - - - - - 0x002ED4 00:EEC4: 29 F8     AND #$F8
C - - - - - 0x002ED6 00:EEC6: A8        TAY
C - - - - - 0x002ED7 00:EEC7: 4A        LSR
C - - - - - 0x002ED8 00:EEC8: 4A        LSR
C - - - - - 0x002ED9 00:EEC9: 4A        LSR
C - - - - - 0x002EDA 00:EECA: A6 72     LDX ram_enemy_facing_direction
C - - - - - 0x002EDC 00:EECC: D0 41     BNE bra_EF0F
C - - - - - 0x002EDE 00:EECE: AA        TAX
C - - - - - 0x002EDF 00:EECF: 98        TYA
C - - - - - 0x002EE0 00:EED0: 18        CLC
C - - - - - 0x002EE1 00:EED1: 69 E8     ADC #$E8
C - - - - - 0x002EE3 00:EED3: 8D 13 02  STA ram_spr_X + $10
C - - - - - 0x002EE6 00:EED6: 8A        TXA
C - - - - - 0x002EE7 00:EED7: C9 06     CMP #$06
C - - - - - 0x002EE9 00:EED9: 90 D9     BCC bra_EEB4
C - - - - - 0x002EEB 00:EEDB: 38        SEC
C - - - - - 0x002EEC 00:EEDC: E9 04     SBC #$04
C - - - - - 0x002EEE 00:EEDE: 18        CLC
C - - - - - 0x002EEF 00:EEDF: 65 A6     ADC ram_00A6
C - - - - - 0x002EF1 00:EEE1: 85 A6     STA ram_00A6
C - - - - - 0x002EF3 00:EEE3: A5 A4     LDA ram_00A4
C - - - - - 0x002EF5 00:EEE5: 29 0F     AND #$0F
C - - - - - 0x002EF7 00:EEE7: 85 90     STA ram_0090
C - - - - - 0x002EF9 00:EEE9: A5 A6     LDA ram_00A6
C - - - - - 0x002EFB 00:EEEB: 38        SEC
C - - - - - 0x002EFC 00:EEEC: E5 90     SBC ram_0090
C - - - - - 0x002EFE 00:EEEE: 85 A6     STA ram_00A6
C - - - - - 0x002F00 00:EEF0: 85 AB     STA ram_00AB
C - - - - - 0x002F02 00:EEF2: 29 1F     AND #$1F
C - - - - - 0x002F04 00:EEF4: C9 02     CMP #$02
C - - - - - 0x002F06 00:EEF6: B0 06     BCS bra_EEFE
- - - - - - 0x002F08 00:EEF8: A5 A4     LDA ram_00A4
- - - - - - 0x002F0A 00:EEFA: 09 C0     ORA #$C0
- - - - - - 0x002F0C 00:EEFC: 85 A4     STA ram_00A4
bra_EEFE:
C - - - - - 0x002F0E 00:EEFE: A2 00     LDX #$00
C - - - - - 0x002F10 00:EF00: A9 01     LDA #$01
bra_EF02:
C - - - - - 0x002F12 00:EF02: 18        CLC
C - - - - - 0x002F13 00:EF03: 65 AB     ADC ram_00AB
C - - - - - 0x002F15 00:EF05: 0A        ASL
C - - - - - 0x002F16 00:EF06: 0A        ASL
C - - - - - 0x002F17 00:EF07: 0A        ASL
C - - - - - 0x002F18 00:EF08: 85 AB     STA ram_00AB
C - - - - - 0x002F1A 00:EF0A: 86 A9     STX ram_00A9
C - - - - - 0x002F1C 00:EF0C: 4C 6D EE  JMP loc_EE6D
bra_EF0F:
C - - - - - 0x002F1F 00:EF0F: AA        TAX
C - - - - - 0x002F20 00:EF10: 98        TYA
C - - - - - 0x002F21 00:EF11: 18        CLC
C - - - - - 0x002F22 00:EF12: 69 18     ADC #$18
C - - - - - 0x002F24 00:EF14: 8D 13 02  STA ram_spr_X + $10
C - - - - - 0x002F27 00:EF17: 8A        TXA
C - - - - - 0x002F28 00:EF18: C9 1A     CMP #$1A
C - - - - - 0x002F2A 00:EF1A: B0 98     BCS bra_EEB4
C - - - - - 0x002F2C 00:EF1C: 18        CLC
C - - - - - 0x002F2D 00:EF1D: 69 04     ADC #$04
C - - - - - 0x002F2F 00:EF1F: 65 A6     ADC ram_00A6
C - - - - - 0x002F31 00:EF21: 85 A6     STA ram_00A6
C - - - - - 0x002F33 00:EF23: A5 A4     LDA ram_00A4
C - - - - - 0x002F35 00:EF25: 29 0F     AND #$0F
C - - - - - 0x002F37 00:EF27: 85 90     STA ram_0090
C - - - - - 0x002F39 00:EF29: 18        CLC
C - - - - - 0x002F3A 00:EF2A: 65 A6     ADC ram_00A6
C - - - - - 0x002F3C 00:EF2C: 85 AB     STA ram_00AB
C - - - - - 0x002F3E 00:EF2E: 29 1F     AND #$1F
C - - - - - 0x002F40 00:EF30: C9 1D     CMP #$1D
C - - - - - 0x002F42 00:EF32: 90 06     BCC bra_EF3A
C - - - - - 0x002F44 00:EF34: A5 A4     LDA ram_00A4
C - - - - - 0x002F46 00:EF36: 09 C0     ORA #$C0
C - - - - - 0x002F48 00:EF38: 85 A4     STA ram_00A4
bra_EF3A:
C - - - - - 0x002F4A 00:EF3A: A9 0B     LDA #$0B
C - - - - - 0x002F4C 00:EF3C: 38        SEC
C - - - - - 0x002F4D 00:EF3D: E5 90     SBC ram_0090
C - - - - - 0x002F4F 00:EF3F: AA        TAX
C - - - - - 0x002F50 00:EF40: A9 FF     LDA #$FF
C - - - - - 0x002F52 00:EF42: 30 BE     BMI bra_EF02



tbl_EF44:
- D 3 - - - 0x002F54 00:EF44: AA        .byte $AA   ; 00
- D 3 - - - 0x002F55 00:EF45: 29        .byte $29   ; 01
- D 3 - - - 0x002F56 00:EF46: 29        .byte $29   ; 02
- D 3 - - - 0x002F57 00:EF47: 29        .byte $29   ; 03



tbl_EF48:
- D 3 - - - 0x002F58 00:EF48: 2A        .byte $2A   ; 00
- D 3 - - - 0x002F59 00:EF49: 29        .byte $29   ; 01
- D 3 - - - 0x002F5A 00:EF4A: 29        .byte $29   ; 02
- D 3 - - - 0x002F5B 00:EF4B: 29        .byte $29   ; 03



tbl_EF4C:
- D 3 - - - 0x002F5C 00:EF4C: 9F        .byte $9F   ; 
tbl_EF4D:
- D 3 - - - 0x002F5D 00:EF4D: 80        .byte $80   ; 
- D 3 - - - 0x002F5E 00:EF4E: A7        .byte $A7   ; 
- D 3 - - - 0x002F5F 00:EF4F: A0        .byte $A0   ; 
- D 3 - - - 0x002F60 00:EF50: AF        .byte $AF   ; 
- D 3 - - - 0x002F61 00:EF51: C0        .byte $C0   ; 



sub_EF52:
C - - - - - 0x002F62 00:EF52: A5 EF     LDA ram_00EF
C - - - - - 0x002F64 00:EF54: 0A        ASL
C - - - - - 0x002F65 00:EF55: 90 1F     BCC bra_EF76
C - - - - - 0x002F67 00:EF57: EE 00 07  INC ram_0700
C - - - - - 0x002F6A 00:EF5A: AD 00 07  LDA ram_0700
C - - - - - 0x002F6D 00:EF5D: 4A        LSR
C - - - - - 0x002F6E 00:EF5E: 90 04     BCC bra_EF64
C - - - - - 0x002F70 00:EF60: A0 01     LDY #$01
C - - - - - 0x002F72 00:EF62: D0 02     BNE bra_EF66
bra_EF64:
C - - - - - 0x002F74 00:EF64: A0 FF     LDY #$FF
bra_EF66:
C - - - - - 0x002F76 00:EF66: A2 44     LDX #$44
bra_EF68_loop:
C - - - - - 0x002F78 00:EF68: 98        TYA
C - - - - - 0x002F79 00:EF69: 18        CLC
C - - - - - 0x002F7A 00:EF6A: 7D B3 02  ADC ram_spr_X + $B0,X
C - - - - - 0x002F7D 00:EF6D: 9D B3 02  STA ram_spr_X + $B0,X
C - - - - - 0x002F80 00:EF70: CA        DEX
C - - - - - 0x002F81 00:EF71: CA        DEX
C - - - - - 0x002F82 00:EF72: CA        DEX
C - - - - - 0x002F83 00:EF73: CA        DEX
C - - - - - 0x002F84 00:EF74: 10 F2     BPL bra_EF68_loop
bra_EF76:
C - - - - - 0x002F86 00:EF76: A6 68     LDX ram_enemy_type
C - - - - - 0x002F88 00:EF78: A5 CE     LDA ram_enemy_animation
bra_EF7A_loop:
C - - - - - 0x002F8A 00:EF7A: 18        CLC
C - - - - - 0x002F8B 00:EF7B: 69 09     ADC #$09
C - - - - - 0x002F8D 00:EF7D: CA        DEX
C - - - - - 0x002F8E 00:EF7E: D0 FA     BNE bra_EF7A_loop
C - - - - - 0x002F90 00:EF80: 0A        ASL
C - - - - - 0x002F91 00:EF81: AA        TAX
C - - - - - 0x002F92 00:EF82: BD 7B F7  LDA tbl_F77B,X
C - - - - - 0x002F95 00:EF85: 85 80     STA ram_0080
C - - - - - 0x002F97 00:EF87: BD 7C F7  LDA tbl_F77B + 1,X
C - - - - - 0x002F9A 00:EF8A: 85 81     STA ram_0081
C - - - - - 0x002F9C 00:EF8C: BD D5 F7  LDA tbl_F7D5,X
C - - - - - 0x002F9F 00:EF8F: 85 90     STA ram_0090
C - - - - - 0x002FA1 00:EF91: BD D6 F7  LDA tbl_F7D5 + 1,X
C - - - - - 0x002FA4 00:EF94: 85 91     STA ram_0091
C - - - - - 0x002FA6 00:EF96: A2 0B     LDX #$0B
C - - - - - 0x002FA8 00:EF98: A9 53     LDA #$53
C - - - - - 0x002FAA 00:EF9A: 85 94     STA ram_0094
C - - - - - 0x002FAC 00:EF9C: A9 02     LDA #$02
C - - - - - 0x002FAE 00:EF9E: 85 95     STA ram_0095
C - - - - - 0x002FB0 00:EFA0: A5 CA     LDA ram_00CA
C - - - - - 0x002FB2 00:EFA2: 85 96     STA ram_0096
C - - - - - 0x002FB4 00:EFA4: A5 72     LDA ram_enemy_facing_direction
C - - - - - 0x002FB6 00:EFA6: 49 01     EOR #$01
C - - - - - 0x002FB8 00:EFA8: 85 97     STA ram_0097
C - - - - - 0x002FBA 00:EFAA: D0 07     BNE bra_EFB3
C - - - - - 0x002FBC 00:EFAC: A5 71     LDA ram_0071
C - - - - - 0x002FBE 00:EFAE: 18        CLC
C - - - - - 0x002FBF 00:EFAF: 69 08     ADC #$08
C - - - - - 0x002FC1 00:EFB1: D0 02     BNE bra_EFB5
bra_EFB3:
C - - - - - 0x002FC3 00:EFB3: A5 71     LDA ram_0071
bra_EFB5:
C - - - - - 0x002FC5 00:EFB5: 29 F8     AND #$F8
C - - - - - 0x002FC7 00:EFB7: 85 93     STA ram_0093
C - - - - - 0x002FC9 00:EFB9: 85 CB     STA ram_00CB
C - - - - - 0x002FCB 00:EFBB: 20 7E D7  JSR sub_D77E
C - - - - - 0x002FCE 00:EFBE: A0 00     LDY #$00
C - - - - - 0x002FD0 00:EFC0: A2 00     LDX #$00
C - - - - - 0x002FD2 00:EFC2: A5 72     LDA ram_enemy_facing_direction
C - - - - - 0x002FD4 00:EFC4: D0 1E     BNE bra_EFE4
bra_EFC6:
C - - - - - 0x002FD6 00:EFC6: B1 80     LDA (ram_0080),Y
bra_EFC8:
C - - - - - 0x002FD8 00:EFC8: 0A        ASL
C - - - - - 0x002FD9 00:EFC9: 85 82     STA ram_0082
C - - - - - 0x002FDB 00:EFCB: 90 05     BCC bra_EFD2
C - - - - - 0x002FDD 00:EFCD: C8        INY
C - - - - - 0x002FDE 00:EFCE: B1 80     LDA (ram_0080),Y
C - - - - - 0x002FE0 00:EFD0: D0 02     BNE bra_EFD4
bra_EFD2:
C - - - - - 0x002FE2 00:EFD2: A9 00     LDA #$00
bra_EFD4:
C - - - - - 0x002FE4 00:EFD4: 9D 00 03  STA ram_0300,X
C - - - - - 0x002FE7 00:EFD7: E8        INX
C - - - - - 0x002FE8 00:EFD8: A5 82     LDA ram_0082
C - - - - - 0x002FEA 00:EFDA: C9 80     CMP #$80
C - - - - - 0x002FEC 00:EFDC: D0 EA     BNE bra_EFC8
C - - - - - 0x002FEE 00:EFDE: C8        INY
C - - - - - 0x002FEF 00:EFDF: E0 1B     CPX #$1B
C - - - - - 0x002FF1 00:EFE1: 90 E3     BCC bra_EFC6
C - - - - - 0x002FF3 00:EFE3: 60        RTS
bra_EFE4:
C - - - - - 0x002FF4 00:EFE4: A2 06     LDX #$06
bra_EFE6:
C - - - - - 0x002FF6 00:EFE6: 86 83     STX ram_0083
C - - - - - 0x002FF8 00:EFE8: B1 80     LDA (ram_0080),Y
bra_EFEA:
C - - - - - 0x002FFA 00:EFEA: 0A        ASL
C - - - - - 0x002FFB 00:EFEB: 85 82     STA ram_0082
C - - - - - 0x002FFD 00:EFED: 90 07     BCC bra_EFF6
C - - - - - 0x002FFF 00:EFEF: C8        INY
C - - - - - 0x003000 00:EFF0: B1 80     LDA (ram_0080),Y
C - - - - - 0x003002 00:EFF2: 49 80     EOR #$80
C - - - - - 0x003004 00:EFF4: D0 02     BNE bra_EFF8
bra_EFF6:
C - - - - - 0x003006 00:EFF6: A9 00     LDA #$00
bra_EFF8:
C - - - - - 0x003008 00:EFF8: 9D 00 03  STA ram_0300,X
C - - - - - 0x00300B 00:EFFB: CA        DEX
C - - - - - 0x00300C 00:EFFC: A5 82     LDA ram_0082
C - - - - - 0x00300E 00:EFFE: C9 80     CMP #$80
C - - - - - 0x003010 00:F000: D0 E8     BNE bra_EFEA
C - - - - - 0x003012 00:F002: 18        CLC
C - - - - - 0x003013 00:F003: A9 07     LDA #$07
C - - - - - 0x003015 00:F005: 65 83     ADC ram_0083
C - - - - - 0x003017 00:F007: AA        TAX
C - - - - - 0x003018 00:F008: C8        INY
C - - - - - 0x003019 00:F009: E0 1C     CPX #$1C
C - - - - - 0x00301B 00:F00B: 90 D9     BCC bra_EFE6
C - - - - - 0x00301D 00:F00D: 60        RTS



sub_F00E:
C - - - - - 0x00301E 00:F00E: A5 68     LDA ram_enemy_type
C - - - - - 0x003020 00:F010: C9 04     CMP #$04
C - - - - - 0x003022 00:F012: D0 5E     BNE bra_F072_RTS
C - - - - - 0x003024 00:F014: A6 CE     LDX ram_enemy_animation
C - - - - - 0x003026 00:F016: E0 08     CPX #$08
C - - - - - 0x003028 00:F018: D0 46     BNE bra_F060
C - - - - - 0x00302A 00:F01A: A0 BF     LDY #$BF
C - - - - - 0x00302C 00:F01C: A5 ED     LDA ram_00ED
C - - - - - 0x00302E 00:F01E: F0 40     BEQ bra_F060
C - - - - - 0x003030 00:F020: 0A        ASL
C - - - - - 0x003031 00:F021: B0 05     BCS bra_F028
C - - - - - 0x003033 00:F023: 0A        ASL
C - - - - - 0x003034 00:F024: 90 23     BCC bra_F049
C - - - - - 0x003036 00:F026: A0 B7     LDY #$B7
bra_F028:
C - - - - - 0x003038 00:F028: 84 CA     STY ram_00CA
C - - - - - 0x00303A 00:F02A: C6 ED     DEC ram_00ED
C - - - - - 0x00303C 00:F02C: A5 ED     LDA ram_00ED
C - - - - - 0x00303E 00:F02E: 29 1F     AND #$1F
C - - - - - 0x003040 00:F030: F0 17     BEQ bra_F049
C - - - - - 0x003042 00:F032: A9 04     LDA #$04
C - - - - - 0x003044 00:F034: A6 72     LDX ram_enemy_facing_direction
C - - - - - 0x003046 00:F036: D0 02     BNE bra_F03A
C - - - - - 0x003048 00:F038: A9 FC     LDA #$FC
bra_F03A:
C - - - - - 0x00304A 00:F03A: 18        CLC
C - - - - - 0x00304B 00:F03B: 65 71     ADC ram_0071
C - - - - - 0x00304D 00:F03D: 85 71     STA ram_0071
C - - - - - 0x00304F 00:F03F: A2 08     LDX #$08
C - - - - - 0x003051 00:F041: C9 C8     CMP #$C8
C - - - - - 0x003053 00:F043: B0 04     BCS bra_F049
C - - - - - 0x003055 00:F045: C9 38     CMP #$38
C - - - - - 0x003057 00:F047: B0 1D     BCS bra_F066
bra_F049:
C - - - - - 0x003059 00:F049: A9 04     LDA #$04
C - - - - - 0x00305B 00:F04B: A6 72     LDX ram_enemy_facing_direction
C - - - - - 0x00305D 00:F04D: D0 02     BNE bra_F051
C - - - - - 0x00305F 00:F04F: A9 FC     LDA #$FC
bra_F051:
C - - - - - 0x003061 00:F051: 18        CLC
C - - - - - 0x003062 00:F052: 65 71     ADC ram_0071
C - - - - - 0x003064 00:F054: 85 71     STA ram_0071
C - - - - - 0x003066 00:F056: A0 00     LDY #$00
C - - - - - 0x003068 00:F058: 84 CE     STY ram_enemy_animation
C - - - - - 0x00306A 00:F05A: 84 7C     STY ram_007C
C - - - - - 0x00306C 00:F05C: 84 ED     STY ram_00ED
C - - - - - 0x00306E 00:F05E: 84 EE     STY ram_00EE
bra_F060:
C - - - - - 0x003070 00:F060: A2 BF     LDX #$BF
C - - - - - 0x003072 00:F062: 86 CA     STX ram_00CA
C - - - - - 0x003074 00:F064: A2 00     LDX #$00
bra_F066:
C - - - - - 0x003076 00:F066: A0 07     LDY #$07
bra_F068_loop:
C - - - - - 0x003078 00:F068: BD 73 F0  LDA tbl_F073,X
C - - - - - 0x00307B 00:F06B: 99 00 04  STA ram_0400,Y
C - - - - - 0x00307E 00:F06E: E8        INX
C - - - - - 0x00307F 00:F06F: 88        DEY
C - - - - - 0x003080 00:F070: 10 F6     BPL bra_F068_loop
bra_F072_RTS:
C - - - - - 0x003082 00:F072: 60        RTS



tbl_F073:
- D 3 - - - 0x003083 00:F073: DC        .byte $DC   ; 00
- D 3 - - - 0x003084 00:F074: 50        .byte $50   ; 01
- D 3 - - - 0x003085 00:F075: 50        .byte $50   ; 02
- D 3 - - - 0x003086 00:F076: 50        .byte $50   ; 03
- D 3 - - - 0x003087 00:F077: 50        .byte $50   ; 04
- D 3 - - - 0x003088 00:F078: 50        .byte $50   ; 05
- D 3 - - - 0x003089 00:F079: 50        .byte $50   ; 06
- D 3 - - - 0x00308A 00:F07A: 73        .byte $73   ; 07
- D 3 - - - 0x00308B 00:F07B: DD        .byte $DD   ; 08
- D 3 - - - 0x00308C 00:F07C: 55        .byte $55   ; 09
- D 3 - - - 0x00308D 00:F07D: 55        .byte $55   ; 0A
- D 3 - - - 0x00308E 00:F07E: 55        .byte $55   ; 0B
- D 3 - - - 0x00308F 00:F07F: 55        .byte $55   ; 0C
- D 3 - - - 0x003090 00:F080: 55        .byte $55   ; 0D
- D 3 - - - 0x003091 00:F081: 55        .byte $55   ; 0E
- D 3 - - - 0x003092 00:F082: 77        .byte $77   ; 0F



sub_F083_set_2006:
C - - - - - 0x003093 00:F083: 8E 06 20  STX $2006
C - - - - - 0x003096 00:F086: 8D 06 20  STA $2006
C - - - - - 0x003099 00:F089: 60        RTS



sub_F08A:
C - - - - - 0x00309A 00:F08A: AD 02 20  LDA $2002
C - - - - - 0x00309D 00:F08D: A9 03     LDA #$03
C - - - - - 0x00309F 00:F08F: 85 91     STA ram_0091
C - - - - - 0x0030A1 00:F091: A2 00     LDX #$00
C - - - - - 0x0030A3 00:F093: 86 96     STX ram_0096
C - - - - - 0x0030A5 00:F095: A5 CA     LDA ram_00CA
C - - - - - 0x0030A7 00:F097: C9 B7     CMP #$B7
C - - - - - 0x0030A9 00:F099: D0 02     BNE bra_F09D
C - - - - - 0x0030AB 00:F09B: A2 07     LDX #$07
bra_F09D:
C - - - - - 0x0030AD 00:F09D: 86 90     STX ram_0090
C - - - - - 0x0030AF 00:F09F: A9 07     LDA #$07
C - - - - - 0x0030B1 00:F0A1: 85 97     STA ram_0097
C - - - - - 0x0030B3 00:F0A3: A5 71     LDA ram_0071
C - - - - - 0x0030B5 00:F0A5: 4A        LSR
C - - - - - 0x0030B6 00:F0A6: 4A        LSR
C - - - - - 0x0030B7 00:F0A7: 4A        LSR
C - - - - - 0x0030B8 00:F0A8: 38        SEC
; !!!
C D 3 - - - 0x0030B9 00:F0A9: E9 05     SBC #$05
C - - - - - 0x0030BB 00:F0AB: 10 0B     BPL bra_F0B8
- - - - - - 0x0030BD 00:F0AD: 38        SEC
- - - - - - 0x0030BE 00:F0AE: E9 01     SBC #$01
- - - - - - 0x0030C0 00:F0B0: 49 FF     EOR #$FF
- - - - - - 0x0030C2 00:F0B2: 85 96     STA ram_0096
- - - - - - 0x0030C4 00:F0B4: A2 00     LDX #$00
- - - - - - 0x0030C6 00:F0B6: F0 0C     BEQ bra_F0C4
bra_F0B8:
C - - - - - 0x0030C8 00:F0B8: C9 16     CMP #$16
C - - - - - 0x0030CA 00:F0BA: AA        TAX
C - - - - - 0x0030CB 00:F0BB: 90 07     BCC bra_F0C4
C - - - - - 0x0030CD 00:F0BD: 38        SEC
C - - - - - 0x0030CE 00:F0BE: E9 1D     SBC #$1D
C - - - - - 0x0030D0 00:F0C0: 49 FF     EOR #$FF
C - - - - - 0x0030D2 00:F0C2: 85 97     STA ram_0097
bra_F0C4:
C - - - - - 0x0030D4 00:F0C4: 8A        TXA
C - - - - - 0x0030D5 00:F0C5: 18        CLC
C - - - - - 0x0030D6 00:F0C6: 69 82     ADC #$82
bra_F0C8_loop:
C - - - - - 0x0030D8 00:F0C8: A2 22     LDX #$22
C - - - - - 0x0030DA 00:F0CA: 20 83 F0  JSR sub_F083_set_2006
C - - - - - 0x0030DD 00:F0CD: A4 96     LDY ram_0096
C - - - - - 0x0030DF 00:F0CF: 48        PHA
bra_F0D0_loop:
C - - - - - 0x0030E0 00:F0D0: B1 90     LDA (ram_0090),Y
C - - - - - 0x0030E2 00:F0D2: 8D 07 20  STA $2007
C - - - - - 0x0030E5 00:F0D5: C8        INY
C - - - - - 0x0030E6 00:F0D6: C4 97     CPY ram_0097
C - - - - - 0x0030E8 00:F0D8: D0 F6     BNE bra_F0D0_loop
C - - - - - 0x0030EA 00:F0DA: A9 07     LDA #$07
C - - - - - 0x0030EC 00:F0DC: 18        CLC
C - - - - - 0x0030ED 00:F0DD: 65 96     ADC ram_0096
C - - - - - 0x0030EF 00:F0DF: 85 96     STA ram_0096
C - - - - - 0x0030F1 00:F0E1: A9 07     LDA #$07
C - - - - - 0x0030F3 00:F0E3: 18        CLC
C - - - - - 0x0030F4 00:F0E4: 65 97     ADC ram_0097
C - - - - - 0x0030F6 00:F0E6: 85 97     STA ram_0097
C - - - - - 0x0030F8 00:F0E8: 68        PLA
C - - - - - 0x0030F9 00:F0E9: 18        CLC
C - - - - - 0x0030FA 00:F0EA: 69 20     ADC #$20
C - - - - - 0x0030FC 00:F0EC: 30 DA     BMI bra_F0C8_loop
C - - - - - 0x0030FE 00:F0EE: 60        RTS



sub_F0EF:
C - - - - - 0x0030FF 00:F0EF: A5 68     LDA ram_enemy_type
C - - - - - 0x003101 00:F0F1: C9 02     CMP #$02
C - - - - - 0x003103 00:F0F3: D0 42     BNE bra_F137_RTS
C - - - - - 0x003105 00:F0F5: A2 22     LDX #> $2260
C - - - - - 0x003107 00:F0F7: A9 60     LDA #< $2260
C - - - - - 0x003109 00:F0F9: 20 83 F0  JSR sub_F083_set_2006
C - - - - - 0x00310C 00:F0FC: A2 00     LDX #$00
bra_F0FE_loop:
C - - - - - 0x00310E 00:F0FE: BD 00 05  LDA ram_0500,X
C - - - - - 0x003111 00:F101: 8D 07 20  STA $2007
C - - - - - 0x003114 00:F104: E8        INX
C - - - - - 0x003115 00:F105: E0 20     CPX #$20
C - - - - - 0x003117 00:F107: D0 F5     BNE bra_F0FE_loop
C - - - - - 0x003119 00:F109: A5 CE     LDA ram_enemy_animation
C - - - - - 0x00311B 00:F10B: C9 03     CMP #$03
C - - - - - 0x00311D 00:F10D: 90 28     BCC bra_F137_RTS
C - - - - - 0x00311F 00:F10F: C9 06     CMP #$06
C - - - - - 0x003121 00:F111: F0 24     BEQ bra_F137_RTS
C - - - - - 0x003123 00:F113: A5 A4     LDA ram_00A4
C - - - - - 0x003125 00:F115: 29 7F     AND #$7F
C - - - - - 0x003127 00:F117: A8        TAY
C - - - - - 0x003128 00:F118: F0 1D     BEQ bra_F137_RTS
C - - - - - 0x00312A 00:F11A: A5 A6     LDA ram_00A6
C - - - - - 0x00312C 00:F11C: A2 22     LDX #$22
C - - - - - 0x00312E 00:F11E: 20 83 F0  JSR sub_F083_set_2006
C - - - - - 0x003131 00:F121: 98        TYA
C - - - - - 0x003132 00:F122: 29 0F     AND #$0F
C - - - - - 0x003134 00:F124: AA        TAX
C - - - - - 0x003135 00:F125: A4 A9     LDY ram_00A9
C - - - - - 0x003137 00:F127: A5 CE     LDA ram_enemy_animation
C - - - - - 0x003139 00:F129: C9 07     CMP #$07
C - - - - - 0x00313B 00:F12B: F0 0B     BEQ bra_F138
bra_F12D_loop:
C - - - - - 0x00313D 00:F12D: B9 5D F1  LDA tbl_F15D,Y
C - - - - - 0x003140 00:F130: 8D 07 20  STA $2007
C - - - - - 0x003143 00:F133: C8        INY
C - - - - - 0x003144 00:F134: CA        DEX
C - - - - - 0x003145 00:F135: 10 F6     BPL bra_F12D_loop
bra_F137_RTS:
C - - - - - 0x003147 00:F137: 60        RTS
bra_F138:
- - - - - - 0x003148 00:F138: A9 00     LDA #$00
- - - - - - 0x00314A 00:F13A: 85 A4     STA ram_00A4
- - - - - - 0x00314C 00:F13C: 8D 13 02  STA ram_spr_X + $10
bra_F13F_loop:
- - - - - - 0x00314F 00:F13F: 8D 07 20  STA $2007
- - - - - - 0x003152 00:F142: C8        INY
- - - - - - 0x003153 00:F143: CA        DEX
- - - - - - 0x003154 00:F144: 10 F9     BPL bra_F13F_loop
- - - - - - 0x003156 00:F146: 30 EF     BMI bra_F137_RTS



sub_F148:
loc_F148:
C D 3 - - - 0x003158 00:F148: A2 23     LDX #> $23E8
C - - - - - 0x00315A 00:F14A: A9 E8     LDA #< $23E8
C - - - - - 0x00315C 00:F14C: 20 83 F0  JSR sub_F083_set_2006
C - - - - - 0x00315F 00:F14F: A2 00     LDX #$00
bra_F151_loop:
C - - - - - 0x003161 00:F151: BD 00 04  LDA ram_0400,X
C - - - - - 0x003164 00:F154: 8D 07 20  STA $2007
C - - - - - 0x003167 00:F157: E8        INX
C - - - - - 0x003168 00:F158: E0 08     CPX #$08
C - - - - - 0x00316A 00:F15A: 90 F5     BCC bra_F151_loop
C - - - - - 0x00316C 00:F15C: 60        RTS



tbl_F15D:
- D 3 - - - 0x00316D 00:F15D: 00        .byte $00   ; 00
- D 3 - - - 0x00316E 00:F15E: 2A        .byte $2A   ; 01
- D 3 - - - 0x00316F 00:F15F: 29        .byte $29   ; 02
- D 3 - - - 0x003170 00:F160: 29        .byte $29   ; 03
- D 3 - - - 0x003171 00:F161: 29        .byte $29   ; 04
- D 3 - - - 0x003172 00:F162: 29        .byte $29   ; 05
- D 3 - - - 0x003173 00:F163: 29        .byte $29   ; 06
- D 3 - - - 0x003174 00:F164: 29        .byte $29   ; 07
- D 3 - - - 0x003175 00:F165: 29        .byte $29   ; 08
- D 3 - - - 0x003176 00:F166: 29        .byte $29   ; 09
- D 3 - - - 0x003177 00:F167: AA        .byte $AA   ; 0A
- D 3 - - - 0x003178 00:F168: 00        .byte $00   ; 0B



_off001_F169_00:
- D 3 - I - 0x003179 00:F169: 19        .byte $19   ; 
- D 3 - I - 0x00317A 00:F16A: 24        .byte $24   ; 
- D 3 - I - 0x00317B 00:F16B: 27        .byte $27   ; 
- D 3 - I - 0x00317C 00:F16C: 3D        .byte $3D   ; 
- D 3 - I - 0x00317D 00:F16D: 25        .byte $25   ; 
- D 3 - I - 0x00317E 00:F16E: 26        .byte $26   ; 
- D 3 - I - 0x00317F 00:F16F: 20        .byte $20   ; 
- D 3 - I - 0x003180 00:F170: 21        .byte $21   ; 
- D 3 - I - 0x003181 00:F171: 3D        .byte $3D   ; 
- D 3 - I - 0x003182 00:F172: 47        .byte $47   ; 
- D 3 - I - 0x003183 00:F173: 0B        .byte $0B   ; 
- D 3 - I - 0x003184 00:F174: 49        .byte $49   ; 
- D 3 - I - 0x003185 00:F175: 25        .byte $25   ; 
- D 3 - I - 0x003186 00:F176: 3D        .byte $3D   ; 
- D 3 - I - 0x003187 00:F177: 3E        .byte $3E   ; 
- D 3 - I - 0x003188 00:F178: 2C        .byte $2C   ; 
- D 3 - I - 0x003189 00:F179: 39        .byte $39   ; 
- D 3 - I - 0x00318A 00:F17A: 3B        .byte $3B   ; 



_off001_F17B_01:
- D 3 - I - 0x00318B 00:F17B: 31        .byte $31   ; 
- D 3 - I - 0x00318C 00:F17C: 24        .byte $24   ; 
- D 3 - I - 0x00318D 00:F17D: 27        .byte $27   ; 
- D 3 - I - 0x00318E 00:F17E: 79        .byte $79   ; 
- D 3 - I - 0x00318F 00:F17F: 25        .byte $25   ; 
- D 3 - I - 0x003190 00:F180: 22        .byte $22   ; 
- D 3 - I - 0x003191 00:F181: 20        .byte $20   ; 
- D 3 - I - 0x003192 00:F182: 21        .byte $21   ; 
- D 3 - I - 0x003193 00:F183: 39        .byte $39   ; 
- D 3 - I - 0x003194 00:F184: 0B        .byte $0B   ; 
- D 3 - I - 0x003195 00:F185: 96        .byte $96   ; 
- D 3 - I - 0x003196 00:F186: 48        .byte $48   ; 
- D 3 - I - 0x003197 00:F187: 39        .byte $39   ; 
- D 3 - I - 0x003198 00:F188: 32        .byte $32   ; 
- D 3 - I - 0x003199 00:F189: 33        .byte $33   ; 
- D 3 - I - 0x00319A 00:F18A: 35        .byte $35   ; 



_off001_F18B_02:
- D 3 - I - 0x00319B 00:F18B: 19        .byte $19   ; 
- D 3 - I - 0x00319C 00:F18C: 24        .byte $24   ; 
- D 3 - I - 0x00319D 00:F18D: 27        .byte $27   ; 
- D 3 - I - 0x00319E 00:F18E: 1D        .byte $1D   ; 
- D 3 - I - 0x00319F 00:F18F: 23        .byte $23   ; 
- D 3 - I - 0x0031A0 00:F190: 20        .byte $20   ; 
- D 3 - I - 0x0031A1 00:F191: 21        .byte $21   ; 
- D 3 - I - 0x0031A2 00:F192: 3D        .byte $3D   ; 
- D 3 - I - 0x0031A3 00:F193: 36        .byte $36   ; 
- D 3 - I - 0x0031A4 00:F194: 1B        .byte $1B   ; 
- D 3 - I - 0x0031A5 00:F195: 96        .byte $96   ; 
- D 3 - I - 0x0031A6 00:F196: 25        .byte $25   ; 
- D 3 - I - 0x0031A7 00:F197: 3D        .byte $3D   ; 
- D 3 - I - 0x0031A8 00:F198: 37        .byte $37   ; 
- D 3 - I - 0x0031A9 00:F199: B7        .byte $B7   ; 
- D 3 - I - 0x0031AA 00:F19A: 39        .byte $39   ; 
- D 3 - I - 0x0031AB 00:F19B: 3B        .byte $3B   ; 



_off001_F19C_03:
- D 3 - I - 0x0031AC 00:F19C: 31        .byte $31   ; 
- D 3 - I - 0x0031AD 00:F19D: 24        .byte $24   ; 
- D 3 - I - 0x0031AE 00:F19E: 1D        .byte $1D   ; 
- D 3 - I - 0x0031AF 00:F19F: 39        .byte $39   ; 
- D 3 - I - 0x0031B0 00:F1A0: 1C        .byte $1C   ; 
- D 3 - I - 0x0031B1 00:F1A1: 1F        .byte $1F   ; 
- D 3 - I - 0x0031B2 00:F1A2: 1E        .byte $1E   ; 
- D 3 - I - 0x0031B3 00:F1A3: 79        .byte $79   ; 
- D 3 - I - 0x0031B4 00:F1A4: 47        .byte $47   ; 
- D 3 - I - 0x0031B5 00:F1A5: 0B        .byte $0B   ; 
- D 3 - I - 0x0031B6 00:F1A6: 96        .byte $96   ; 
- D 3 - I - 0x0031B7 00:F1A7: 25        .byte $25   ; 
- D 3 - I - 0x0031B8 00:F1A8: 79        .byte $79   ; 
- D 3 - I - 0x0031B9 00:F1A9: 3E        .byte $3E   ; 
- D 3 - I - 0x0031BA 00:F1AA: 2C        .byte $2C   ; 
- D 3 - I - 0x0031BB 00:F1AB: 39        .byte $39   ; 
- D 3 - I - 0x0031BC 00:F1AC: 3B        .byte $3B   ; 



_off001_F1AD_04:
- D 3 - I - 0x0031BD 00:F1AD: 31        .byte $31   ; 
- D 3 - I - 0x0031BE 00:F1AE: 24        .byte $24   ; 
- D 3 - I - 0x0031BF 00:F1AF: 1D        .byte $1D   ; 
- D 3 - I - 0x0031C0 00:F1B0: 39        .byte $39   ; 
- D 3 - I - 0x0031C1 00:F1B1: 1F        .byte $1F   ; 
- D 3 - I - 0x0031C2 00:F1B2: 0B        .byte $0B   ; 
- D 3 - I - 0x0031C3 00:F1B3: 1E        .byte $1E   ; 
- D 3 - I - 0x0031C4 00:F1B4: 79        .byte $79   ; 
- D 3 - I - 0x0031C5 00:F1B5: 47        .byte $47   ; 
- D 3 - I - 0x0031C6 00:F1B6: 0B        .byte $0B   ; 
- D 3 - I - 0x0031C7 00:F1B7: 96        .byte $96   ; 
- D 3 - I - 0x0031C8 00:F1B8: 25        .byte $25   ; 
- D 3 - I - 0x0031C9 00:F1B9: 79        .byte $79   ; 
- D 3 - I - 0x0031CA 00:F1BA: 3E        .byte $3E   ; 
- D 3 - I - 0x0031CB 00:F1BB: 2C        .byte $2C   ; 
- D 3 - I - 0x0031CC 00:F1BC: 39        .byte $39   ; 
- D 3 - I - 0x0031CD 00:F1BD: 3B        .byte $3B   ; 



_off001_F1BE_05:
- D 3 - I - 0x0031CE 00:F1BE: 01        .byte $01   ; 
- D 3 - I - 0x0031CF 00:F1BF: 31        .byte $31   ; 
- D 3 - I - 0x0031D0 00:F1C0: 24        .byte $24   ; 
- D 3 - I - 0x0031D1 00:F1C1: 1D        .byte $1D   ; 
- D 3 - I - 0x0031D2 00:F1C2: 01        .byte $01   ; 
- D 3 - I - 0x0031D3 00:F1C3: 79        .byte $79   ; 
- D 3 - I - 0x0031D4 00:F1C4: 26        .byte $26   ; 
- D 3 - I - 0x0031D5 00:F1C5: 27        .byte $27   ; 
- D 3 - I - 0x0031D6 00:F1C6: 28        .byte $28   ; 
- D 3 - I - 0x0031D7 00:F1C7: 21        .byte $21   ; 



_off001_F1C8_06:
- D 3 - I - 0x0031D8 00:F1C8: 31        .byte $31   ; 
- D 3 - I - 0x0031D9 00:F1C9: 24        .byte $24   ; 
- D 3 - I - 0x0031DA 00:F1CA: 27        .byte $27   ; 
- D 3 - I - 0x0031DB 00:F1CB: 19        .byte $19   ; 
- D 3 - I - 0x0031DC 00:F1CC: 1F        .byte $1F   ; 
- D 3 - I - 0x0031DD 00:F1CD: 21        .byte $21   ; 
- D 3 - I - 0x0031DE 00:F1CE: 79        .byte $79   ; 
- D 3 - I - 0x0031DF 00:F1CF: 22        .byte $22   ; 
- D 3 - I - 0x0031E0 00:F1D0: 23        .byte $23   ; 
- D 3 - I - 0x0031E1 00:F1D1: 24        .byte $24   ; 
- D 3 - I - 0x0031E2 00:F1D2: 20        .byte $20   ; 
- D 3 - I - 0x0031E3 00:F1D3: 31        .byte $31   ; 
- D 3 - I - 0x0031E4 00:F1D4: 44        .byte $44   ; 
- D 3 - I - 0x0031E5 00:F1D5: 3B        .byte $3B   ; 



_off002_F1D6_00:
- D 3 - I - 0x0031E6 00:F1D6: 06        .byte $06   ; 
- D 3 - I - 0x0031E7 00:F1D7: D8        .byte $D8   ; 
- D 3 - I - 0x0031E8 00:F1D8: 99        .byte $99   ; 
- D 3 - I - 0x0031E9 00:F1D9: 01        .byte $01   ; 
- D 3 - I - 0x0031EA 00:F1DA: 06        .byte $06   ; 
- D 3 - I - 0x0031EB 00:F1DB: E0        .byte $E0   ; 
- D 3 - I - 0x0031EC 00:F1DC: CC        .byte $CC   ; 
- D 3 - I - 0x0031ED 00:F1DD: 00        .byte $00   ; 
- D 3 - I - 0x0031EE 00:F1DE: 10        .byte $10   ; 
- D 3 - I - 0x0031EF 00:F1DF: F0        .byte $F0   ; 
- D 3 - I - 0x0031F0 00:F1E0: 76        .byte $76   ; 
- D 3 - I - 0x0031F1 00:F1E1: 00        .byte $00   ; 
- D 3 - I - 0x0031F2 00:F1E2: 01        .byte $01   ; 
- D 3 - I - 0x0031F3 00:F1E3: F0        .byte $F0   ; 
- D 3 - I - 0x0031F4 00:F1E4: 76        .byte $76   ; 
- D 3 - I - 0x0031F5 00:F1E5: 40        .byte $40   ; 
- D 3 - I - 0x0031F6 00:F1E6: 09        .byte $09   ; 
- D 3 - I - 0x0031F7 00:F1E7: F8        .byte $F8   ; 
- D 3 - I - 0x0031F8 00:F1E8: 78        .byte $78   ; 
- D 3 - I - 0x0031F9 00:F1E9: 00        .byte $00   ; 
- D 3 - I - 0x0031FA 00:F1EA: FA        .byte $FA   ; 
- D 3 - I - 0x0031FB 00:F1EB: F8        .byte $F8   ; 
- D 3 - I - 0x0031FC 00:F1EC: 78        .byte $78   ; 
- D 3 - I - 0x0031FD 00:F1ED: 00        .byte $00   ; 
- D 3 - I - 0x0031FE 00:F1EE: 0E        .byte $0E   ; 



_off002_F1EF_01:
- D 3 - I - 0x0031FF 00:F1EF: 06        .byte $06   ; 
- D 3 - I - 0x003200 00:F1F0: D8        .byte $D8   ; 
- D 3 - I - 0x003201 00:F1F1: 99        .byte $99   ; 
- D 3 - I - 0x003202 00:F1F2: 01        .byte $01   ; 
- D 3 - I - 0x003203 00:F1F3: FE        .byte $FE   ; 
- D 3 - I - 0x003204 00:F1F4: E0        .byte $E0   ; 
- D 3 - I - 0x003205 00:F1F5: CC        .byte $CC   ; 
- D 3 - I - 0x003206 00:F1F6: 00        .byte $00   ; 
- D 3 - I - 0x003207 00:F1F7: 08        .byte $08   ; 
- D 3 - I - 0x003208 00:F1F8: F0        .byte $F0   ; 
- D 3 - I - 0x003209 00:F1F9: 76        .byte $76   ; 
- D 3 - I - 0x00320A 00:F1FA: 00        .byte $00   ; 
- D 3 - I - 0x00320B 00:F1FB: F9        .byte $F9   ; 
- D 3 - I - 0x00320C 00:F1FC: F0        .byte $F0   ; 
- D 3 - I - 0x00320D 00:F1FD: 76        .byte $76   ; 
- D 3 - I - 0x00320E 00:F1FE: 40        .byte $40   ; 
- D 3 - I - 0x00320F 00:F1FF: 01        .byte $01   ; 
- D 3 - I - 0x003210 00:F200: F8        .byte $F8   ; 
- D 3 - I - 0x003211 00:F201: 78        .byte $78   ; 
- D 3 - I - 0x003212 00:F202: 00        .byte $00   ; 
- D 3 - I - 0x003213 00:F203: FA        .byte $FA   ; 
- D 3 - I - 0x003214 00:F204: F8        .byte $F8   ; 
- D 3 - I - 0x003215 00:F205: 79        .byte $79   ; 
- D 3 - I - 0x003216 00:F206: 00        .byte $00   ; 
- D 3 - I - 0x003217 00:F207: 03        .byte $03   ; 



_off002_F208_02:
- D 3 - I - 0x003218 00:F208: 08        .byte $08   ; 
- D 3 - I - 0x003219 00:F209: E0        .byte $E0   ; 
- D 3 - I - 0x00321A 00:F20A: CC        .byte $CC   ; 
- D 3 - I - 0x00321B 00:F20B: 00        .byte $00   ; 
- D 3 - I - 0x00321C 00:F20C: 10        .byte $10   ; 
- D 3 - I - 0x00321D 00:F20D: E6        .byte $E6   ; 
- D 3 - I - 0x00321E 00:F20E: 9B        .byte $9B   ; 
- D 3 - I - 0x00321F 00:F20F: 01        .byte $01   ; 
- D 3 - I - 0x003220 00:F210: 12        .byte $12   ; 
- D 3 - I - 0x003221 00:F211: E6        .byte $E6   ; 
- D 3 - I - 0x003222 00:F212: A5        .byte $A5   ; 
- D 3 - I - 0x003223 00:F213: 01        .byte $01   ; 
- D 3 - I - 0x003224 00:F214: 1A        .byte $1A   ; 
- D 3 - I - 0x003225 00:F215: EE        .byte $EE   ; 
- D 3 - I - 0x003226 00:F216: 9A        .byte $9A   ; 
- D 3 - I - 0x003227 00:F217: 00        .byte $00   ; 
- D 3 - I - 0x003228 00:F218: FB        .byte $FB   ; 
- D 3 - I - 0x003229 00:F219: F0        .byte $F0   ; 
- D 3 - I - 0x00322A 00:F21A: 76        .byte $76   ; 
- D 3 - I - 0x00322B 00:F21B: 00        .byte $00   ; 
- D 3 - I - 0x00322C 00:F21C: 02        .byte $02   ; 
- D 3 - I - 0x00322D 00:F21D: F0        .byte $F0   ; 
- D 3 - I - 0x00322E 00:F21E: 76        .byte $76   ; 
- D 3 - I - 0x00322F 00:F21F: 40        .byte $40   ; 
- D 3 - I - 0x003230 00:F220: 09        .byte $09   ; 
- D 3 - I - 0x003231 00:F221: F8        .byte $F8   ; 
- D 3 - I - 0x003232 00:F222: 7A        .byte $7A   ; 
- D 3 - I - 0x003233 00:F223: 00        .byte $00   ; 
- D 3 - I - 0x003234 00:F224: FA        .byte $FA   ; 
- D 3 - I - 0x003235 00:F225: F8        .byte $F8   ; 
- D 3 - I - 0x003236 00:F226: 78        .byte $78   ; 
- D 3 - I - 0x003237 00:F227: 00        .byte $00   ; 
- D 3 - I - 0x003238 00:F228: 0E        .byte $0E   ; 



_off002_F229_03:
- D 3 - I - 0x003239 00:F229: 07        .byte $07   ; 
- D 3 - I - 0x00323A 00:F22A: DE        .byte $DE   ; 
- D 3 - I - 0x00323B 00:F22B: 9C        .byte $9C   ; 
- D 3 - I - 0x00323C 00:F22C: 01        .byte $01   ; 
- D 3 - I - 0x00323D 00:F22D: E6        .byte $E6   ; 
- D 3 - I - 0x00323E 00:F22E: E3        .byte $E3   ; 
- D 3 - I - 0x00323F 00:F22F: 9D        .byte $9D   ; 
- D 3 - I - 0x003240 00:F230: 01        .byte $01   ; 
- D 3 - I - 0x003241 00:F231: EE        .byte $EE   ; 
- D 3 - I - 0x003242 00:F232: E7        .byte $E7   ; 
- D 3 - I - 0x003243 00:F233: 9E        .byte $9E   ; 
- D 3 - I - 0x003244 00:F234: 01        .byte $01   ; 
- D 3 - I - 0x003245 00:F235: F6        .byte $F6   ; 
- D 3 - I - 0x003246 00:F236: F0        .byte $F0   ; 
- D 3 - I - 0x003247 00:F237: 76        .byte $76   ; 
- D 3 - I - 0x003248 00:F238: 00        .byte $00   ; 
- D 3 - I - 0x003249 00:F239: F9        .byte $F9   ; 
- D 3 - I - 0x00324A 00:F23A: F0        .byte $F0   ; 
- D 3 - I - 0x00324B 00:F23B: 76        .byte $76   ; 
- D 3 - I - 0x00324C 00:F23C: 40        .byte $40   ; 
- D 3 - I - 0x00324D 00:F23D: 01        .byte $01   ; 
- D 3 - I - 0x00324E 00:F23E: F8        .byte $F8   ; 
- D 3 - I - 0x00324F 00:F23F: 78        .byte $78   ; 
- D 3 - I - 0x003250 00:F240: 00        .byte $00   ; 
- D 3 - I - 0x003251 00:F241: F2        .byte $F2   ; 
- D 3 - I - 0x003252 00:F242: F8        .byte $F8   ; 
- D 3 - I - 0x003253 00:F243: 78        .byte $78   ; 
- D 3 - I - 0x003254 00:F244: 00        .byte $00   ; 
- D 3 - I - 0x003255 00:F245: 06        .byte $06   ; 



_off002_F246_04:
- D 3 - I - 0x003256 00:F246: 08        .byte $08   ; 
- D 3 - I - 0x003257 00:F247: E8        .byte $E8   ; 
- D 3 - I - 0x003258 00:F248: A0        .byte $A0   ; 
- D 3 - I - 0x003259 00:F249: 01        .byte $01   ; 
- D 3 - I - 0x00325A 00:F24A: F5        .byte $F5   ; 
- D 3 - I - 0x00325B 00:F24B: E8        .byte $E8   ; 
- D 3 - I - 0x00325C 00:F24C: A1        .byte $A1   ; 
- D 3 - I - 0x00325D 00:F24D: 01        .byte $01   ; 
- D 3 - I - 0x00325E 00:F24E: FD        .byte $FD   ; 
- D 3 - I - 0x00325F 00:F24F: E8        .byte $E8   ; 
- D 3 - I - 0x003260 00:F250: 9F        .byte $9F   ; 
- D 3 - I - 0x003261 00:F251: 01        .byte $01   ; 
- D 3 - I - 0x003262 00:F252: ED        .byte $ED   ; 
- D 3 - I - 0x003263 00:F253: E6        .byte $E6   ; 
- D 3 - I - 0x003264 00:F254: A5        .byte $A5   ; 
- D 3 - I - 0x003265 00:F255: 01        .byte $01   ; 
- D 3 - I - 0x003266 00:F256: E5        .byte $E5   ; 
- D 3 - I - 0x003267 00:F257: F8        .byte $F8   ; 
- D 3 - I - 0x003268 00:F258: 78        .byte $78   ; 
- D 3 - I - 0x003269 00:F259: 00        .byte $00   ; 
- D 3 - I - 0x00326A 00:F25A: F2        .byte $F2   ; 
- D 3 - I - 0x00326B 00:F25B: F8        .byte $F8   ; 
- D 3 - I - 0x00326C 00:F25C: 78        .byte $78   ; 
- D 3 - I - 0x00326D 00:F25D: 00        .byte $00   ; 
- D 3 - I - 0x00326E 00:F25E: 06        .byte $06   ; 
- D 3 - I - 0x00326F 00:F25F: F0        .byte $F0   ; 
- D 3 - I - 0x003270 00:F260: 76        .byte $76   ; 
- D 3 - I - 0x003271 00:F261: 00        .byte $00   ; 
- D 3 - I - 0x003272 00:F262: F9        .byte $F9   ; 
- D 3 - I - 0x003273 00:F263: F0        .byte $F0   ; 
- D 3 - I - 0x003274 00:F264: 76        .byte $76   ; 
- D 3 - I - 0x003275 00:F265: 40        .byte $40   ; 
- D 3 - I - 0x003276 00:F266: 01        .byte $01   ; 



_off002_F267_05:
- D 3 - I - 0x003277 00:F267: 09        .byte $09   ; 
- D 3 - I - 0x003278 00:F268: EC        .byte $EC   ; 
- D 3 - I - 0x003279 00:F269: A3        .byte $A3   ; 
- D 3 - I - 0x00327A 00:F26A: 01        .byte $01   ; 
- D 3 - I - 0x00327B 00:F26B: F9        .byte $F9   ; 
- D 3 - I - 0x00327C 00:F26C: EC        .byte $EC   ; 
- D 3 - I - 0x00327D 00:F26D: A4        .byte $A4   ; 
- D 3 - I - 0x00327E 00:F26E: 01        .byte $01   ; 
- D 3 - I - 0x00327F 00:F26F: 01        .byte $01   ; 
- D 3 - I - 0x003280 00:F270: EC        .byte $EC   ; 
- D 3 - I - 0x003281 00:F271: A2        .byte $A2   ; 
- D 3 - I - 0x003282 00:F272: 01        .byte $01   ; 
- D 3 - I - 0x003283 00:F273: F1        .byte $F1   ; 
- D 3 - I - 0x003284 00:F274: EC        .byte $EC   ; 
- D 3 - I - 0x003285 00:F275: A5        .byte $A5   ; 
- D 3 - I - 0x003286 00:F276: 01        .byte $01   ; 
- D 3 - I - 0x003287 00:F277: E9        .byte $E9   ; 
- D 3 - I - 0x003288 00:F278: F4        .byte $F4   ; 
- D 3 - I - 0x003289 00:F279: 48        .byte $48   ; 
- D 3 - I - 0x00328A 00:F27A: 00        .byte $00   ; 
- D 3 - I - 0x00328B 00:F27B: F1        .byte $F1   ; 
- D 3 - I - 0x00328C 00:F27C: F4        .byte $F4   ; 
- D 3 - I - 0x00328D 00:F27D: A8        .byte $A8   ; 
- D 3 - I - 0x00328E 00:F27E: 00        .byte $00   ; 
- D 3 - I - 0x00328F 00:F27F: F9        .byte $F9   ; 
- D 3 - I - 0x003290 00:F280: F4        .byte $F4   ; 
- D 3 - I - 0x003291 00:F281: A9        .byte $A9   ; 
- D 3 - I - 0x003292 00:F282: 00        .byte $00   ; 
- D 3 - I - 0x003293 00:F283: 01        .byte $01   ; 
- D 3 - I - 0x003294 00:F284: FE        .byte $FE   ; 
- D 3 - I - 0x003295 00:F285: CF        .byte $CF   ; 
- D 3 - I - 0x003296 00:F286: 00        .byte $00   ; 
- D 3 - I - 0x003297 00:F287: F2        .byte $F2   ; 
- D 3 - I - 0x003298 00:F288: FC        .byte $FC   ; 
- D 3 - I - 0x003299 00:F289: AA        .byte $AA   ; 
- D 3 - I - 0x00329A 00:F28A: 00        .byte $00   ; 
- D 3 - I - 0x00329B 00:F28B: 0C        .byte $0C   ; 



_off002_F28C_06:
- D 3 - I - 0x00329C 00:F28C: 08        .byte $08   ; 
- D 3 - I - 0x00329D 00:F28D: E0        .byte $E0   ; 
- D 3 - I - 0x00329E 00:F28E: CC        .byte $CC   ; 
- D 3 - I - 0x00329F 00:F28F: 00        .byte $00   ; 
- D 3 - I - 0x0032A0 00:F290: 08        .byte $08   ; 
- D 3 - I - 0x0032A1 00:F291: E6        .byte $E6   ; 
- D 3 - I - 0x0032A2 00:F292: A5        .byte $A5   ; 
- D 3 - I - 0x0032A3 00:F293: 01        .byte $01   ; 
- D 3 - I - 0x0032A4 00:F294: 0A        .byte $0A   ; 
- D 3 - I - 0x0032A5 00:F295: E8        .byte $E8   ; 
- D 3 - I - 0x0032A6 00:F296: AB        .byte $AB   ; 
- D 3 - I - 0x0032A7 00:F297: 00        .byte $00   ; 
- D 3 - I - 0x0032A8 00:F298: F8        .byte $F8   ; 
- D 3 - I - 0x0032A9 00:F299: E8        .byte $E8   ; 
- D 3 - I - 0x0032AA 00:F29A: A6        .byte $A6   ; 
- D 3 - I - 0x0032AB 00:F29B: 00        .byte $00   ; 
- D 3 - I - 0x0032AC 00:F29C: F0        .byte $F0   ; 
- D 3 - I - 0x0032AD 00:F29D: E8        .byte $E8   ; 
- D 3 - I - 0x0032AE 00:F29E: A7        .byte $A7   ; 
- D 3 - I - 0x0032AF 00:F29F: 00        .byte $00   ; 
- D 3 - I - 0x0032B0 00:F2A0: E8        .byte $E8   ; 
- D 3 - I - 0x0032B1 00:F2A1: F0        .byte $F0   ; 
- D 3 - I - 0x0032B2 00:F2A2: 76        .byte $76   ; 
- D 3 - I - 0x0032B3 00:F2A3: 00        .byte $00   ; 
- D 3 - I - 0x0032B4 00:F2A4: FD        .byte $FD   ; 
- D 3 - I - 0x0032B5 00:F2A5: F0        .byte $F0   ; 
- D 3 - I - 0x0032B6 00:F2A6: 76        .byte $76   ; 
- D 3 - I - 0x0032B7 00:F2A7: 40        .byte $40   ; 
- D 3 - I - 0x0032B8 00:F2A8: 01        .byte $01   ; 
- D 3 - I - 0x0032B9 00:F2A9: F8        .byte $F8   ; 
- D 3 - I - 0x0032BA 00:F2AA: 78        .byte $78   ; 
- D 3 - I - 0x0032BB 00:F2AB: 00        .byte $00   ; 
- D 3 - I - 0x0032BC 00:F2AC: FE        .byte $FE   ; 



_off001_F2AD_0B:
- D 3 - I - 0x0032BD 00:F2AD: 05        .byte $05   ; 
- D 3 - I - 0x0032BE 00:F2AE: 0E        .byte $0E   ; 
- D 3 - I - 0x0032BF 00:F2AF: 1D        .byte $1D   ; 
- D 3 - I - 0x0032C0 00:F2B0: 0C        .byte $0C   ; 
- D 3 - I - 0x0032C1 00:F2B1: 0D        .byte $0D   ; 
- D 3 - I - 0x0032C2 00:F2B2: 0F        .byte $0F   ; 
- D 3 - I - 0x0032C3 00:F2B3: 1D        .byte $1D   ; 
- D 3 - I - 0x0032C4 00:F2B4: 15        .byte $15   ; 
- D 3 - I - 0x0032C5 00:F2B5: 49        .byte $49   ; 
- D 3 - I - 0x0032C6 00:F2B6: 18        .byte $18   ; 
- D 3 - I - 0x0032C7 00:F2B7: 09        .byte $09   ; 
- D 3 - I - 0x0032C8 00:F2B8: 17        .byte $17   ; 



_off001_F2B9_0C:
- D 3 - I - 0x0032C9 00:F2B9: 11        .byte $11   ; 
- D 3 - I - 0x0032CA 00:F2BA: 11        .byte $11   ; 
- D 3 - I - 0x0032CB 00:F2BB: 39        .byte $39   ; 
- D 3 - I - 0x0032CC 00:F2BC: 10        .byte $10   ; 
- D 3 - I - 0x0032CD 00:F2BD: 12        .byte $12   ; 
- D 3 - I - 0x0032CE 00:F2BE: 21        .byte $21   ; 
- D 3 - I - 0x0032CF 00:F2BF: 39        .byte $39   ; 
- D 3 - I - 0x0032D0 00:F2C0: 15        .byte $15   ; 
- D 3 - I - 0x0032D1 00:F2C1: 16        .byte $16   ; 
- D 3 - I - 0x0032D2 00:F2C2: 18        .byte $18   ; 
- D 3 - I - 0x0032D3 00:F2C3: 11        .byte $11   ; 
- D 3 - I - 0x0032D4 00:F2C4: 17        .byte $17   ; 



_off001_F2C5_0D:
- D 3 - I - 0x0032D5 00:F2C5: 01        .byte $01   ; 
- D 3 - I - 0x0032D6 00:F2C6: 11        .byte $11   ; 
- D 3 - I - 0x0032D7 00:F2C7: 11        .byte $11   ; 
- D 3 - I - 0x0032D8 00:F2C8: 01        .byte $01   ; 
- D 3 - I - 0x0032D9 00:F2C9: 31        .byte $31   ; 
- D 3 - I - 0x0032DA 00:F2CA: 7A        .byte $7A   ; 
- D 3 - I - 0x0032DB 00:F2CB: 19        .byte $19   ; 



_off001_F2CC_0E:
- D 3 - I - 0x0032DC 00:F2CC: 01        .byte $01   ; 
- D 3 - I - 0x0032DD 00:F2CD: 01        .byte $01   ; 
- D 3 - I - 0x0032DE 00:F2CE: 01        .byte $01   ; 
- D 3 - I - 0x0032DF 00:F2CF: 61        .byte $61   ; 
- D 3 - I - 0x0032E0 00:F2D0: 78        .byte $78   ; 
- D 3 - I - 0x0032E1 00:F2D1: 79        .byte $79   ; 



_off001_F2D2_0F:
- D 3 - I - 0x0032E2 00:F2D2: 69        .byte $69   ; 
- D 3 - I - 0x0032E3 00:F2D3: 13        .byte $13   ; 
- D 3 - I - 0x0032E4 00:F2D4: 15        .byte $15   ; 
- D 3 - I - 0x0032E5 00:F2D5: 0E        .byte $0E   ; 
- D 3 - I - 0x0032E6 00:F2D6: 79        .byte $79   ; 
- D 3 - I - 0x0032E7 00:F2D7: 14        .byte $14   ; 
- D 3 - I - 0x0032E8 00:F2D8: 16        .byte $16   ; 
- D 3 - I - 0x0032E9 00:F2D9: 0D        .byte $0D   ; 
- D 3 - I - 0x0032EA 00:F2DA: 0F        .byte $0F   ; 
- D 3 - I - 0x0032EB 00:F2DB: 19        .byte $19   ; 
- D 3 - I - 0x0032EC 00:F2DC: A4        .byte $A4   ; 
- D 3 - I - 0x0032ED 00:F2DD: 18        .byte $18   ; 
- D 3 - I - 0x0032EE 00:F2DE: 11        .byte $11   ; 
- D 3 - I - 0x0032EF 00:F2DF: 1A        .byte $1A   ; 



_off001_F2E0_11:
- D 3 - I - 0x0032F0 00:F2E0: 69        .byte $69   ; 
- D 3 - I - 0x0032F1 00:F2E1: 13        .byte $13   ; 
- D 3 - I - 0x0032F2 00:F2E2: 15        .byte $15   ; 
- D 3 - I - 0x0032F3 00:F2E3: 0E        .byte $0E   ; 
- D 3 - I - 0x0032F4 00:F2E4: 79        .byte $79   ; 
- D 3 - I - 0x0032F5 00:F2E5: 14        .byte $14   ; 
- D 3 - I - 0x0032F6 00:F2E6: 16        .byte $16   ; 
- D 3 - I - 0x0032F7 00:F2E7: 0D        .byte $0D   ; 
- D 3 - I - 0x0032F8 00:F2E8: 0F        .byte $0F   ; 
- D 3 - I - 0x0032F9 00:F2E9: 19        .byte $19   ; 
- D 3 - I - 0x0032FA 00:F2EA: 49        .byte $49   ; 
- D 3 - I - 0x0032FB 00:F2EB: 1D        .byte $1D   ; 
- D 3 - I - 0x0032FC 00:F2EC: 21        .byte $21   ; 
- D 3 - I - 0x0032FD 00:F2ED: 1C        .byte $1C   ; 



_off001_F2EE_09:
- D 3 - I - 0x0032FE 00:F2EE: 05        .byte $05   ; 
- D 3 - I - 0x0032FF 00:F2EF: 1A        .byte $1A   ; 
- D 3 - I - 0x003300 00:F2F0: 3D        .byte $3D   ; 
- D 3 - I - 0x003301 00:F2F1: 17        .byte $17   ; 
- D 3 - I - 0x003302 00:F2F2: 18        .byte $18   ; 
- D 3 - I - 0x003303 00:F2F3: 19        .byte $19   ; 
- D 3 - I - 0x003304 00:F2F4: 1B        .byte $1B   ; 
- D 3 - I - 0x003305 00:F2F5: 1D        .byte $1D   ; 
- D 3 - I - 0x003306 00:F2F6: 15        .byte $15   ; 
- D 3 - I - 0x003307 00:F2F7: 16        .byte $16   ; 
- D 3 - I - 0x003308 00:F2F8: 18        .byte $18   ; 
- D 3 - I - 0x003309 00:F2F9: 09        .byte $09   ; 
- D 3 - I - 0x00330A 00:F2FA: 17        .byte $17   ; 



_off001_F2FB_0A:
- D 3 - I - 0x00330B 00:F2FB: 09        .byte $09   ; 
- D 3 - I - 0x00330C 00:F2FC: 1A        .byte $1A   ; 
- D 3 - I - 0x00330D 00:F2FD: 79        .byte $79   ; 
- D 3 - I - 0x00330E 00:F2FE: 17        .byte $17   ; 
- D 3 - I - 0x00330F 00:F2FF: 18        .byte $18   ; 
- D 3 - I - 0x003310 00:F300: 19        .byte $19   ; 
- D 3 - I - 0x003311 00:F301: 1B        .byte $1B   ; 
- D 3 - I - 0x003312 00:F302: 39        .byte $39   ; 
- D 3 - I - 0x003313 00:F303: 1E        .byte $1E   ; 
- D 3 - I - 0x003314 00:F304: 16        .byte $16   ; 
- D 3 - I - 0x003315 00:F305: 1D        .byte $1D   ; 
- D 3 - I - 0x003316 00:F306: 21        .byte $21   ; 
- D 3 - I - 0x003317 00:F307: 1F        .byte $1F   ; 



_off002_F308_0B:
- D 3 - I - 0x003318 00:F308: 05        .byte $05   ; 
- D 3 - I - 0x003319 00:F309: E0        .byte $E0   ; 
- D 3 - I - 0x00331A 00:F30A: 51        .byte $51   ; 
- D 3 - I - 0x00331B 00:F30B: 00        .byte $00   ; 
- D 3 - I - 0x00331C 00:F30C: 08        .byte $08   ; 
- D 3 - I - 0x00331D 00:F30D: F0        .byte $F0   ; 
- D 3 - I - 0x00331E 00:F30E: 4A        .byte $4A   ; 
- D 3 - I - 0x00331F 00:F30F: 00        .byte $00   ; 
- D 3 - I - 0x003320 00:F310: 00        .byte $00   ; 
- D 3 - I - 0x003321 00:F311: F0        .byte $F0   ; 
- D 3 - I - 0x003322 00:F312: 4B        .byte $4B   ; 
- D 3 - I - 0x003323 00:F313: 00        .byte $00   ; 
- D 3 - I - 0x003324 00:F314: 08        .byte $08   ; 
- D 3 - I - 0x003325 00:F315: F8        .byte $F8   ; 
- D 3 - I - 0x003326 00:F316: 49        .byte $49   ; 
- D 3 - I - 0x003327 00:F317: 00        .byte $00   ; 
- D 3 - I - 0x003328 00:F318: 00        .byte $00   ; 
- D 3 - I - 0x003329 00:F319: F8        .byte $F8   ; 
- D 3 - I - 0x00332A 00:F31A: 4F        .byte $4F   ; 
- D 3 - I - 0x00332B 00:F31B: 00        .byte $00   ; 
- D 3 - I - 0x00332C 00:F31C: 10        .byte $10   ; 



_off002_F31D_0C:
- D 3 - I - 0x00332D 00:F31D: 06        .byte $06   ; 
- D 3 - I - 0x00332E 00:F31E: E0        .byte $E0   ; 
- D 3 - I - 0x00332F 00:F31F: 51        .byte $51   ; 
- D 3 - I - 0x003330 00:F320: 00        .byte $00   ; 
- D 3 - I - 0x003331 00:F321: F8        .byte $F8   ; 
- D 3 - I - 0x003332 00:F322: E0        .byte $E0   ; 
- D 3 - I - 0x003333 00:F323: CC        .byte $CC   ; 
- D 3 - I - 0x003334 00:F324: 00        .byte $00   ; 
- D 3 - I - 0x003335 00:F325: 08        .byte $08   ; 
- D 3 - I - 0x003336 00:F326: F0        .byte $F0   ; 
- D 3 - I - 0x003337 00:F327: 4C        .byte $4C   ; 
- D 3 - I - 0x003338 00:F328: 00        .byte $00   ; 
- D 3 - I - 0x003339 00:F329: F8        .byte $F8   ; 
- D 3 - I - 0x00333A 00:F32A: F0        .byte $F0   ; 
- D 3 - I - 0x00333B 00:F32B: 50        .byte $50   ; 
- D 3 - I - 0x00333C 00:F32C: 00        .byte $00   ; 
- D 3 - I - 0x00333D 00:F32D: 00        .byte $00   ; 
- D 3 - I - 0x00333E 00:F32E: F8        .byte $F8   ; 
- D 3 - I - 0x00333F 00:F32F: 49        .byte $49   ; 
- D 3 - I - 0x003340 00:F330: 00        .byte $00   ; 
- D 3 - I - 0x003341 00:F331: F8        .byte $F8   ; 
- D 3 - I - 0x003342 00:F332: F8        .byte $F8   ; 
- D 3 - I - 0x003343 00:F333: 4F        .byte $4F   ; 
- D 3 - I - 0x003344 00:F334: 00        .byte $00   ; 
- D 3 - I - 0x003345 00:F335: 08        .byte $08   ; 



_off002_F336_0D:
- D 3 - I - 0x003346 00:F336: 07        .byte $07   ; 
- D 3 - I - 0x003347 00:F337: E8        .byte $E8   ; 
- D 3 - I - 0x003348 00:F338: 51        .byte $51   ; 
- D 3 - I - 0x003349 00:F339: 00        .byte $00   ; 
- D 3 - I - 0x00334A 00:F33A: F8        .byte $F8   ; 
- D 3 - I - 0x00334B 00:F33B: E8        .byte $E8   ; 
- D 3 - I - 0x00334C 00:F33C: CC        .byte $CC   ; 
- D 3 - I - 0x00334D 00:F33D: 00        .byte $00   ; 
- D 3 - I - 0x00334E 00:F33E: 08        .byte $08   ; 
- D 3 - I - 0x00334F 00:F33F: F0        .byte $F0   ; 
- D 3 - I - 0x003350 00:F340: 52        .byte $52   ; 
- D 3 - I - 0x003351 00:F341: 00        .byte $00   ; 
- D 3 - I - 0x003352 00:F342: F5        .byte $F5   ; 
- D 3 - I - 0x003353 00:F343: F0        .byte $F0   ; 
- D 3 - I - 0x003354 00:F344: 55        .byte $55   ; 
- D 3 - I - 0x003355 00:F345: 00        .byte $00   ; 
- D 3 - I - 0x003356 00:F346: FD        .byte $FD   ; 
- D 3 - I - 0x003357 00:F347: F0        .byte $F0   ; 
- D 3 - I - 0x003358 00:F348: 56        .byte $56   ; 
- D 3 - I - 0x003359 00:F349: 00        .byte $00   ; 
- D 3 - I - 0x00335A 00:F34A: 05        .byte $05   ; 
- D 3 - I - 0x00335B 00:F34B: F8        .byte $F8   ; 
- D 3 - I - 0x00335C 00:F34C: 53        .byte $53   ; 
- D 3 - I - 0x00335D 00:F34D: 00        .byte $00   ; 
- D 3 - I - 0x00335E 00:F34E: F5        .byte $F5   ; 
- D 3 - I - 0x00335F 00:F34F: F8        .byte $F8   ; 
- D 3 - I - 0x003360 00:F350: 4F        .byte $4F   ; 
- D 3 - I - 0x003361 00:F351: 00        .byte $00   ; 
- D 3 - I - 0x003362 00:F352: 06        .byte $06   ; 



_off002_F353_0E:
- D 3 - I - 0x003363 00:F353: 05        .byte $05   ; 
- D 3 - I - 0x003364 00:F354: F0        .byte $F0   ; 
- D 3 - I - 0x003365 00:F355: 51        .byte $51   ; 
- D 3 - I - 0x003366 00:F356: 00        .byte $00   ; 
- D 3 - I - 0x003367 00:F357: F8        .byte $F8   ; 
- D 3 - I - 0x003368 00:F358: F0        .byte $F0   ; 
- D 3 - I - 0x003369 00:F359: 57        .byte $57   ; 
- D 3 - I - 0x00336A 00:F35A: 00        .byte $00   ; 
- D 3 - I - 0x00336B 00:F35B: 00        .byte $00   ; 
- D 3 - I - 0x00336C 00:F35C: FE        .byte $FE   ; 
- D 3 - I - 0x00336D 00:F35D: F0        .byte $F0   ; 
- D 3 - I - 0x00336E 00:F35E: 00        .byte $00   ; 
- D 3 - I - 0x00336F 00:F35F: F0        .byte $F0   ; 
- D 3 - I - 0x003370 00:F360: FE        .byte $FE   ; 
- D 3 - I - 0x003371 00:F361: F0        .byte $F0   ; 
- D 3 - I - 0x003372 00:F362: 00        .byte $00   ; 
- D 3 - I - 0x003373 00:F363: F7        .byte $F7   ; 
- D 3 - I - 0x003374 00:F364: F8        .byte $F8   ; 
- D 3 - I - 0x003375 00:F365: 5A        .byte $5A   ; 
- D 3 - I - 0x003376 00:F366: 00        .byte $00   ; 
- D 3 - I - 0x003377 00:F367: 00        .byte $00   ; 



_off002_F368_0F:
- D 3 - I - 0x003378 00:F368: 07        .byte $07   ; 
- D 3 - I - 0x003379 00:F369: E0        .byte $E0   ; 
- D 3 - I - 0x00337A 00:F36A: 51        .byte $51   ; 
- D 3 - I - 0x00337B 00:F36B: 00        .byte $00   ; 
- D 3 - I - 0x00337C 00:F36C: 00        .byte $00   ; 
- D 3 - I - 0x00337D 00:F36D: E8        .byte $E8   ; 
- D 3 - I - 0x00337E 00:F36E: A7        .byte $A7   ; 
- D 3 - I - 0x00337F 00:F36F: 00        .byte $00   ; 
- D 3 - I - 0x003380 00:F370: E8        .byte $E8   ; 
- D 3 - I - 0x003381 00:F371: EA        .byte $EA   ; 
- D 3 - I - 0x003382 00:F372: 5B        .byte $5B   ; 
- D 3 - I - 0x003383 00:F373: 00        .byte $00   ; 
- D 3 - I - 0x003384 00:F374: F0        .byte $F0   ; 
- D 3 - I - 0x003385 00:F375: EA        .byte $EA   ; 
- D 3 - I - 0x003386 00:F376: 5C        .byte $5C   ; 
- D 3 - I - 0x003387 00:F377: 00        .byte $00   ; 
- D 3 - I - 0x003388 00:F378: F8        .byte $F8   ; 
- D 3 - I - 0x003389 00:F379: F0        .byte $F0   ; 
- D 3 - I - 0x00338A 00:F37A: 4B        .byte $4B   ; 
- D 3 - I - 0x00338B 00:F37B: 00        .byte $00   ; 
- D 3 - I - 0x00338C 00:F37C: 00        .byte $00   ; 
- D 3 - I - 0x00338D 00:F37D: F2        .byte $F2   ; 
- D 3 - I - 0x00338E 00:F37E: 5D        .byte $5D   ; 
- D 3 - I - 0x00338F 00:F37F: 00        .byte $00   ; 
- D 3 - I - 0x003390 00:F380: FA        .byte $FA   ; 
- D 3 - I - 0x003391 00:F381: F8        .byte $F8   ; 
- D 3 - I - 0x003392 00:F382: 4F        .byte $4F   ; 
- D 3 - I - 0x003393 00:F383: 00        .byte $00   ; 
- D 3 - I - 0x003394 00:F384: 08        .byte $08   ; 



_off002_F385_11:
- D 3 - I - 0x003395 00:F385: 05        .byte $05   ; 
- D 3 - I - 0x003396 00:F386: E0        .byte $E0   ; 
- D 3 - I - 0x003397 00:F387: 51        .byte $51   ; 
- D 3 - I - 0x003398 00:F388: 00        .byte $00   ; 
- D 3 - I - 0x003399 00:F389: 00        .byte $00   ; 
- D 3 - I - 0x00339A 00:F38A: F0        .byte $F0   ; 
- D 3 - I - 0x00339B 00:F38B: 5E        .byte $5E   ; 
- D 3 - I - 0x00339C 00:F38C: 00        .byte $00   ; 
- D 3 - I - 0x00339D 00:F38D: F8        .byte $F8   ; 
- D 3 - I - 0x00339E 00:F38E: F0        .byte $F0   ; 
- D 3 - I - 0x00339F 00:F38F: 4B        .byte $4B   ; 
- D 3 - I - 0x0033A0 00:F390: 00        .byte $00   ; 
- D 3 - I - 0x0033A1 00:F391: 00        .byte $00   ; 
- D 3 - I - 0x0033A2 00:F392: F8        .byte $F8   ; 
- D 3 - I - 0x0033A3 00:F393: 49        .byte $49   ; 
- D 3 - I - 0x0033A4 00:F394: 00        .byte $00   ; 
- D 3 - I - 0x0033A5 00:F395: 00        .byte $00   ; 
- D 3 - I - 0x0033A6 00:F396: F8        .byte $F8   ; 
- D 3 - I - 0x0033A7 00:F397: 5F        .byte $5F   ; 
- D 3 - I - 0x0033A8 00:F398: 00        .byte $00   ; 
- D 3 - I - 0x0033A9 00:F399: 08        .byte $08   ; 



_off002_F39A_09:
- D 3 - I - 0x0033AA 00:F39A: 05        .byte $05   ; 
- D 3 - I - 0x0033AB 00:F39B: E0        .byte $E0   ; 
- D 3 - I - 0x0033AC 00:F39C: 51        .byte $51   ; 
- D 3 - I - 0x0033AD 00:F39D: 00        .byte $00   ; 
- D 3 - I - 0x0033AE 00:F39E: 08        .byte $08   ; 
- D 3 - I - 0x0033AF 00:F39F: F0        .byte $F0   ; 
- D 3 - I - 0x0033B0 00:F3A0: 4A        .byte $4A   ; 
- D 3 - I - 0x0033B1 00:F3A1: 00        .byte $00   ; 
- D 3 - I - 0x0033B2 00:F3A2: 00        .byte $00   ; 
- D 3 - I - 0x0033B3 00:F3A3: F0        .byte $F0   ; 
- D 3 - I - 0x0033B4 00:F3A4: 4D        .byte $4D   ; 
- D 3 - I - 0x0033B5 00:F3A5: 00        .byte $00   ; 
- D 3 - I - 0x0033B6 00:F3A6: 08        .byte $08   ; 
- D 3 - I - 0x0033B7 00:F3A7: F8        .byte $F8   ; 
- D 3 - I - 0x0033B8 00:F3A8: 49        .byte $49   ; 
- D 3 - I - 0x0033B9 00:F3A9: 00        .byte $00   ; 
- D 3 - I - 0x0033BA 00:F3AA: 00        .byte $00   ; 
- D 3 - I - 0x0033BB 00:F3AB: F8        .byte $F8   ; 
- D 3 - I - 0x0033BC 00:F3AC: 4F        .byte $4F   ; 
- D 3 - I - 0x0033BD 00:F3AD: 00        .byte $00   ; 
- D 3 - I - 0x0033BE 00:F3AE: 10        .byte $10   ; 



_off002_F3AF_0A:
- D 3 - I - 0x0033BF 00:F3AF: 05        .byte $05   ; 
- D 3 - I - 0x0033C0 00:F3B0: E0        .byte $E0   ; 
- D 3 - I - 0x0033C1 00:F3B1: 51        .byte $51   ; 
- D 3 - I - 0x0033C2 00:F3B2: 00        .byte $00   ; 
- D 3 - I - 0x0033C3 00:F3B3: 00        .byte $00   ; 
- D 3 - I - 0x0033C4 00:F3B4: F0        .byte $F0   ; 
- D 3 - I - 0x0033C5 00:F3B5: 4E        .byte $4E   ; 
- D 3 - I - 0x0033C6 00:F3B6: 00        .byte $00   ; 
- D 3 - I - 0x0033C7 00:F3B7: F8        .byte $F8   ; 
- D 3 - I - 0x0033C8 00:F3B8: F0        .byte $F0   ; 
- D 3 - I - 0x0033C9 00:F3B9: 4D        .byte $4D   ; 
- D 3 - I - 0x0033CA 00:F3BA: 00        .byte $00   ; 
- D 3 - I - 0x0033CB 00:F3BB: 00        .byte $00   ; 
- D 3 - I - 0x0033CC 00:F3BC: F8        .byte $F8   ; 
- D 3 - I - 0x0033CD 00:F3BD: 77        .byte $77   ; 
- D 3 - I - 0x0033CE 00:F3BE: 00        .byte $00   ; 
- D 3 - I - 0x0033CF 00:F3BF: 00        .byte $00   ; 
- D 3 - I - 0x0033D0 00:F3C0: F8        .byte $F8   ; 
- D 3 - I - 0x0033D1 00:F3C1: 7F        .byte $7F   ; 
- D 3 - I - 0x0033D2 00:F3C2: 00        .byte $00   ; 
- D 3 - I - 0x0033D3 00:F3C3: 08        .byte $08   ; 



_off001_F3C4_12:
- D 3 - I - 0x0033D4 00:F3C4: 39        .byte $39   ; 
- D 3 - I - 0x0033D5 00:F3C5: 34        .byte $34   ; 
- D 3 - I - 0x0033D6 00:F3C6: 36        .byte $36   ; 
- D 3 - I - 0x0033D7 00:F3C7: 39        .byte $39   ; 
- D 3 - I - 0x0033D8 00:F3C8: 79        .byte $79   ; 
- D 3 - I - 0x0033D9 00:F3C9: 33        .byte $33   ; 
- D 3 - I - 0x0033DA 00:F3CA: 35        .byte $35   ; 
- D 3 - I - 0x0033DB 00:F3CB: 37        .byte $37   ; 
- D 3 - I - 0x0033DC 00:F3CC: 3A        .byte $3A   ; 
- D 3 - I - 0x0033DD 00:F3CD: 79        .byte $79   ; 
- D 3 - I - 0x0033DE 00:F3CE: 47        .byte $47   ; 
- D 3 - I - 0x0033DF 00:F3CF: 2B        .byte $2B   ; 
- D 3 - I - 0x0033E0 00:F3D0: 2D        .byte $2D   ; 
- D 3 - I - 0x0033E1 00:F3D1: 2F        .byte $2F   ; 
- D 3 - I - 0x0033E2 00:F3D2: 69        .byte $69   ; 
- D 3 - I - 0x0033E3 00:F3D3: 3E        .byte $3E   ; 
- D 3 - I - 0x0033E4 00:F3D4: 2C        .byte $2C   ; 
- D 3 - I - 0x0033E5 00:F3D5: 30        .byte $30   ; 



_off001_F3D6_13:
- D 3 - I - 0x0033E6 00:F3D6: 39        .byte $39   ; 
- D 3 - I - 0x0033E7 00:F3D7: 34        .byte $34   ; 
- D 3 - I - 0x0033E8 00:F3D8: 36        .byte $36   ; 
- D 3 - I - 0x0033E9 00:F3D9: 39        .byte $39   ; 
- D 3 - I - 0x0033EA 00:F3DA: 79        .byte $79   ; 
- D 3 - I - 0x0033EB 00:F3DB: 33        .byte $33   ; 
- D 3 - I - 0x0033EC 00:F3DC: 35        .byte $35   ; 
- D 3 - I - 0x0033ED 00:F3DD: 37        .byte $37   ; 
- D 3 - I - 0x0033EE 00:F3DE: 3A        .byte $3A   ; 
- D 3 - I - 0x0033EF 00:F3DF: 39        .byte $39   ; 
- D 3 - I - 0x0033F0 00:F3E0: 31        .byte $31   ; 
- D 3 - I - 0x0033F1 00:F3E1: 2D        .byte $2D   ; 
- D 3 - I - 0x0033F2 00:F3E2: 34        .byte $34   ; 
- D 3 - I - 0x0033F3 00:F3E3: 39        .byte $39   ; 
- D 3 - I - 0x0033F4 00:F3E4: 32        .byte $32   ; 
- D 3 - I - 0x0033F5 00:F3E5: 33        .byte $33   ; 
- D 3 - I - 0x0033F6 00:F3E6: 35        .byte $35   ; 



_off001_F3E7_14:
- D 3 - I - 0x0033F7 00:F3E7: 1D        .byte $1D   ; 
- D 3 - I - 0x0033F8 00:F3E8: 34        .byte $34   ; 
- D 3 - I - 0x0033F9 00:F3E9: 36        .byte $36   ; 
- D 3 - I - 0x0033FA 00:F3EA: 3B        .byte $3B   ; 
- D 3 - I - 0x0033FB 00:F3EB: 3D        .byte $3D   ; 
- D 3 - I - 0x0033FC 00:F3EC: 33        .byte $33   ; 
- D 3 - I - 0x0033FD 00:F3ED: 35        .byte $35   ; 
- D 3 - I - 0x0033FE 00:F3EE: 37        .byte $37   ; 
- D 3 - I - 0x0033FF 00:F3EF: 3A        .byte $3A   ; 
- D 3 - I - 0x003400 00:F3F0: 3D        .byte $3D   ; 
- D 3 - I - 0x003401 00:F3F1: 36        .byte $36   ; 
- D 3 - I - 0x003402 00:F3F2: 38        .byte $38   ; 
- D 3 - I - 0x003403 00:F3F3: 2D        .byte $2D   ; 
- D 3 - I - 0x003404 00:F3F4: 2F        .byte $2F   ; 
- D 3 - I - 0x003405 00:F3F5: 35        .byte $35   ; 
- D 3 - I - 0x003406 00:F3F6: 37        .byte $37   ; 
- D 3 - I - 0x003407 00:F3F7: B7        .byte $B7   ; 
- D 3 - I - 0x003408 00:F3F8: 30        .byte $30   ; 



_off001_F3F9_15:
- D 3 - I - 0x003409 00:F3F9: 31        .byte $31   ; 
- D 3 - I - 0x00340A 00:F3FA: 3D        .byte $3D   ; 
- D 3 - I - 0x00340B 00:F3FB: 2F        .byte $2F   ; 
- D 3 - I - 0x00340C 00:F3FC: 31        .byte $31   ; 
- D 3 - I - 0x00340D 00:F3FD: 3E        .byte $3E   ; 
- D 3 - I - 0x00340E 00:F3FE: 30        .byte $30   ; 
- D 3 - I - 0x00340F 00:F3FF: 79        .byte $79   ; 
- D 3 - I - 0x003410 00:F400: 47        .byte $47   ; 
- D 3 - I - 0x003411 00:F401: 2B        .byte $2B   ; 
- D 3 - I - 0x003412 00:F402: 41        .byte $41   ; 
- D 3 - I - 0x003413 00:F403: 3A        .byte $3A   ; 
- D 3 - I - 0x003414 00:F404: 79        .byte $79   ; 
- D 3 - I - 0x003415 00:F405: 3E        .byte $3E   ; 
- D 3 - I - 0x003416 00:F406: 2C        .byte $2C   ; 
- D 3 - I - 0x003417 00:F407: 39        .byte $39   ; 
- D 3 - I - 0x003418 00:F408: 3B        .byte $3B   ; 



_off001_F409_16:
- D 3 - I - 0x003419 00:F409: 31        .byte $31   ; 
- D 3 - I - 0x00341A 00:F40A: 34        .byte $34   ; 
- D 3 - I - 0x00341B 00:F40B: 2F        .byte $2F   ; 
- D 3 - I - 0x00341C 00:F40C: 71        .byte $71   ; 
- D 3 - I - 0x00341D 00:F40D: 31        .byte $31   ; 
- D 3 - I - 0x00341E 00:F40E: 32        .byte $32   ; 
- D 3 - I - 0x00341F 00:F40F: 30        .byte $30   ; 
- D 3 - I - 0x003420 00:F410: 79        .byte $79   ; 
- D 3 - I - 0x003421 00:F411: 47        .byte $47   ; 
- D 3 - I - 0x003422 00:F412: 2B        .byte $2B   ; 
- D 3 - I - 0x003423 00:F413: 41        .byte $41   ; 
- D 3 - I - 0x003424 00:F414: 3A        .byte $3A   ; 
- D 3 - I - 0x003425 00:F415: 79        .byte $79   ; 
- D 3 - I - 0x003426 00:F416: 3E        .byte $3E   ; 
- D 3 - I - 0x003427 00:F417: 2C        .byte $2C   ; 
- D 3 - I - 0x003428 00:F418: 39        .byte $39   ; 
- D 3 - I - 0x003429 00:F419: 3B        .byte $3B   ; 



_off001_F41A_17:
- D 3 - I - 0x00342A 00:F41A: 01        .byte $01   ; 
- D 3 - I - 0x00342B 00:F41B: 31        .byte $31   ; 
- D 3 - I - 0x00342C 00:F41C: 34        .byte $34   ; 
- D 3 - I - 0x00342D 00:F41D: 2F        .byte $2F   ; 
- D 3 - I - 0x00342E 00:F41E: 19        .byte $19   ; 
- D 3 - I - 0x00342F 00:F41F: 49        .byte $49   ; 
- D 3 - I - 0x003430 00:F420: 40        .byte $40   ; 
- D 3 - I - 0x003431 00:F421: 79        .byte $79   ; 
- D 3 - I - 0x003432 00:F422: 3D        .byte $3D   ; 
- D 3 - I - 0x003433 00:F423: 3F        .byte $3F   ; 
- D 3 - I - 0x003434 00:F424: 41        .byte $41   ; 
- D 3 - I - 0x003435 00:F425: 42        .byte $42   ; 



_off001_F426_18:
- D 3 - I - 0x003436 00:F426: 31        .byte $31   ; 
- D 3 - I - 0x003437 00:F427: 34        .byte $34   ; 
- D 3 - I - 0x003438 00:F428: 2C        .byte $2C   ; 
- D 3 - I - 0x003439 00:F429: 39        .byte $39   ; 
- D 3 - I - 0x00343A 00:F42A: 2B        .byte $2B   ; 
- D 3 - I - 0x00343B 00:F42B: 2D        .byte $2D   ; 
- D 3 - I - 0x00343C 00:F42C: 28        .byte $28   ; 
- D 3 - I - 0x00343D 00:F42D: 31        .byte $31   ; 
- D 3 - I - 0x00343E 00:F42E: 43        .byte $43   ; 
- D 3 - I - 0x00343F 00:F42F: 45        .byte $45   ; 
- D 3 - I - 0x003440 00:F430: 31        .byte $31   ; 
- D 3 - I - 0x003441 00:F431: 44        .byte $44   ; 
- D 3 - I - 0x003442 00:F432: 3B        .byte $3B   ; 



_off002_F433_12:
- D 3 - I - 0x003443 00:F433: 06        .byte $06   ; 
- D 3 - I - 0x003444 00:F434: D8        .byte $D8   ; 
- D 3 - I - 0x003445 00:F435: E3        .byte $E3   ; 
- D 3 - I - 0x003446 00:F436: 00        .byte $00   ; 
- D 3 - I - 0x003447 00:F437: 08        .byte $08   ; 
- D 3 - I - 0x003448 00:F438: E8        .byte $E8   ; 
- D 3 - I - 0x003449 00:F439: 70        .byte $70   ; 
- D 3 - I - 0x00344A 00:F43A: 00        .byte $00   ; 
- D 3 - I - 0x00344B 00:F43B: F9        .byte $F9   ; 
- D 3 - I - 0x00344C 00:F43C: E8        .byte $E8   ; 
- D 3 - I - 0x00344D 00:F43D: 71        .byte $71   ; 
- D 3 - I - 0x00344E 00:F43E: 00        .byte $00   ; 
- D 3 - I - 0x00344F 00:F43F: 01        .byte $01   ; 
- D 3 - I - 0x003450 00:F440: F8        .byte $F8   ; 
- D 3 - I - 0x003451 00:F441: 78        .byte $78   ; 
- D 3 - I - 0x003452 00:F442: 00        .byte $00   ; 
- D 3 - I - 0x003453 00:F443: F2        .byte $F2   ; 
- D 3 - I - 0x003454 00:F444: F8        .byte $F8   ; 
- D 3 - I - 0x003455 00:F445: CD        .byte $CD   ; 
- D 3 - I - 0x003456 00:F446: 00        .byte $00   ; 
- D 3 - I - 0x003457 00:F447: 00        .byte $00   ; 
- D 3 - I - 0x003458 00:F448: F8        .byte $F8   ; 
- D 3 - I - 0x003459 00:F449: 78        .byte $78   ; 
- D 3 - I - 0x00345A 00:F44A: 40        .byte $40   ; 
- D 3 - I - 0x00345B 00:F44B: 09        .byte $09   ; 



_off002_F44C_13:
- D 3 - I - 0x00345C 00:F44C: 05        .byte $05   ; 
- D 3 - I - 0x00345D 00:F44D: D8        .byte $D8   ; 
- D 3 - I - 0x00345E 00:F44E: E3        .byte $E3   ; 
- D 3 - I - 0x00345F 00:F44F: 00        .byte $00   ; 
- D 3 - I - 0x003460 00:F450: 08        .byte $08   ; 
- D 3 - I - 0x003461 00:F451: E8        .byte $E8   ; 
- D 3 - I - 0x003462 00:F452: 70        .byte $70   ; 
- D 3 - I - 0x003463 00:F453: 00        .byte $00   ; 
- D 3 - I - 0x003464 00:F454: F9        .byte $F9   ; 
- D 3 - I - 0x003465 00:F455: E8        .byte $E8   ; 
- D 3 - I - 0x003466 00:F456: 71        .byte $71   ; 
- D 3 - I - 0x003467 00:F457: 00        .byte $00   ; 
- D 3 - I - 0x003468 00:F458: 01        .byte $01   ; 
- D 3 - I - 0x003469 00:F459: F8        .byte $F8   ; 
- D 3 - I - 0x00346A 00:F45A: 78        .byte $78   ; 
- D 3 - I - 0x00346B 00:F45B: 00        .byte $00   ; 
- D 3 - I - 0x00346C 00:F45C: FA        .byte $FA   ; 
- D 3 - I - 0x00346D 00:F45D: F8        .byte $F8   ; 
- D 3 - I - 0x00346E 00:F45E: 79        .byte $79   ; 
- D 3 - I - 0x00346F 00:F45F: 00        .byte $00   ; 
- D 3 - I - 0x003470 00:F460: 03        .byte $03   ; 



_off002_F461_14:
- D 3 - I - 0x003471 00:F461: 06        .byte $06   ; 
- D 3 - I - 0x003472 00:F462: D8        .byte $D8   ; 
- D 3 - I - 0x003473 00:F463: E3        .byte $E3   ; 
- D 3 - I - 0x003474 00:F464: 40        .byte $40   ; 
- D 3 - I - 0x003475 00:F465: 10        .byte $10   ; 
- D 3 - I - 0x003476 00:F466: E8        .byte $E8   ; 
- D 3 - I - 0x003477 00:F467: 70        .byte $70   ; 
- D 3 - I - 0x003478 00:F468: 00        .byte $00   ; 
- D 3 - I - 0x003479 00:F469: 01        .byte $01   ; 
- D 3 - I - 0x00347A 00:F46A: E8        .byte $E8   ; 
- D 3 - I - 0x00347B 00:F46B: 71        .byte $71   ; 
- D 3 - I - 0x00347C 00:F46C: 00        .byte $00   ; 
- D 3 - I - 0x00347D 00:F46D: 09        .byte $09   ; 
- D 3 - I - 0x00347E 00:F46E: F8        .byte $F8   ; 
- D 3 - I - 0x00347F 00:F46F: 7A        .byte $7A   ; 
- D 3 - I - 0x003480 00:F470: 00        .byte $00   ; 
- D 3 - I - 0x003481 00:F471: FA        .byte $FA   ; 
- D 3 - I - 0x003482 00:F472: F8        .byte $F8   ; 
- D 3 - I - 0x003483 00:F473: CD        .byte $CD   ; 
- D 3 - I - 0x003484 00:F474: 00        .byte $00   ; 
- D 3 - I - 0x003485 00:F475: 08        .byte $08   ; 
- D 3 - I - 0x003486 00:F476: F8        .byte $F8   ; 
- D 3 - I - 0x003487 00:F477: 78        .byte $78   ; 
- D 3 - I - 0x003488 00:F478: 40        .byte $40   ; 
- D 3 - I - 0x003489 00:F479: 11        .byte $11   ; 



_off002_F47A_15:
- D 3 - I - 0x00348A 00:F47A: 05        .byte $05   ; 
- D 3 - I - 0x00348B 00:F47B: E0        .byte $E0   ; 
- D 3 - I - 0x00348C 00:F47C: CE        .byte $CE   ; 
- D 3 - I - 0x00348D 00:F47D: 00        .byte $00   ; 
- D 3 - I - 0x00348E 00:F47E: F0        .byte $F0   ; 
- D 3 - I - 0x00348F 00:F47F: E8        .byte $E8   ; 
- D 3 - I - 0x003490 00:F480: 72        .byte $72   ; 
- D 3 - I - 0x003491 00:F481: 00        .byte $00   ; 
- D 3 - I - 0x003492 00:F482: FA        .byte $FA   ; 
- D 3 - I - 0x003493 00:F483: E8        .byte $E8   ; 
- D 3 - I - 0x003494 00:F484: 73        .byte $73   ; 
- D 3 - I - 0x003495 00:F485: 00        .byte $00   ; 
- D 3 - I - 0x003496 00:F486: 02        .byte $02   ; 
- D 3 - I - 0x003497 00:F487: F8        .byte $F8   ; 
- D 3 - I - 0x003498 00:F488: 78        .byte $78   ; 
- D 3 - I - 0x003499 00:F489: 00        .byte $00   ; 
- D 3 - I - 0x00349A 00:F48A: F2        .byte $F2   ; 
- D 3 - I - 0x00349B 00:F48B: F8        .byte $F8   ; 
- D 3 - I - 0x00349C 00:F48C: 78        .byte $78   ; 
- D 3 - I - 0x00349D 00:F48D: 00        .byte $00   ; 
- D 3 - I - 0x00349E 00:F48E: 06        .byte $06   ; 



_off002_F48F_16:
- D 3 - I - 0x00349F 00:F48F: 04        .byte $04   ; 
- D 3 - I - 0x0034A0 00:F490: E8        .byte $E8   ; 
- D 3 - I - 0x0034A1 00:F491: 72        .byte $72   ; 
- D 3 - I - 0x0034A2 00:F492: 00        .byte $00   ; 
- D 3 - I - 0x0034A3 00:F493: FA        .byte $FA   ; 
- D 3 - I - 0x0034A4 00:F494: E8        .byte $E8   ; 
- D 3 - I - 0x0034A5 00:F495: 73        .byte $73   ; 
- D 3 - I - 0x0034A6 00:F496: 00        .byte $00   ; 
- D 3 - I - 0x0034A7 00:F497: 02        .byte $02   ; 
- D 3 - I - 0x0034A8 00:F498: F8        .byte $F8   ; 
- D 3 - I - 0x0034A9 00:F499: 78        .byte $78   ; 
- D 3 - I - 0x0034AA 00:F49A: 00        .byte $00   ; 
- D 3 - I - 0x0034AB 00:F49B: F2        .byte $F2   ; 
- D 3 - I - 0x0034AC 00:F49C: F8        .byte $F8   ; 
- D 3 - I - 0x0034AD 00:F49D: 78        .byte $78   ; 
- D 3 - I - 0x0034AE 00:F49E: 00        .byte $00   ; 
- D 3 - I - 0x0034AF 00:F49F: 06        .byte $06   ; 



_off002_F4A0_17:
- D 3 - I - 0x0034B0 00:F4A0: 05        .byte $05   ; 
- D 3 - I - 0x0034B1 00:F4A1: F0        .byte $F0   ; 
- D 3 - I - 0x0034B2 00:F4A2: 7B        .byte $7B   ; 
- D 3 - I - 0x0034B3 00:F4A3: 00        .byte $00   ; 
- D 3 - I - 0x0034B4 00:F4A4: F0        .byte $F0   ; 
- D 3 - I - 0x0034B5 00:F4A5: F0        .byte $F0   ; 
- D 3 - I - 0x0034B6 00:F4A6: 7C        .byte $7C   ; 
- D 3 - I - 0x0034B7 00:F4A7: 00        .byte $00   ; 
- D 3 - I - 0x0034B8 00:F4A8: F8        .byte $F8   ; 
- D 3 - I - 0x0034B9 00:F4A9: F0        .byte $F0   ; 
- D 3 - I - 0x0034BA 00:F4AA: 7D        .byte $7D   ; 
- D 3 - I - 0x0034BB 00:F4AB: 00        .byte $00   ; 
- D 3 - I - 0x0034BC 00:F4AC: 00        .byte $00   ; 
- D 3 - I - 0x0034BD 00:F4AD: F8        .byte $F8   ; 
- D 3 - I - 0x0034BE 00:F4AE: 79        .byte $79   ; 
- D 3 - I - 0x0034BF 00:F4AF: 40        .byte $40   ; 
- D 3 - I - 0x0034C0 00:F4B0: F1        .byte $F1   ; 
- D 3 - I - 0x0034C1 00:F4B1: F8        .byte $F8   ; 
- D 3 - I - 0x0034C2 00:F4B2: 7E        .byte $7E   ; 
- D 3 - I - 0x0034C3 00:F4B3: 00        .byte $00   ; 
- D 3 - I - 0x0034C4 00:F4B4: 0E        .byte $0E   ; 



_off002_F4B5_18:
- D 3 - I - 0x0034C5 00:F4B5: 07        .byte $07   ; 
- D 3 - I - 0x0034C6 00:F4B6: E0        .byte $E0   ; 
- D 3 - I - 0x0034C7 00:F4B7: 80        .byte $80   ; 
- D 3 - I - 0x0034C8 00:F4B8: 00        .byte $00   ; 
- D 3 - I - 0x0034C9 00:F4B9: E8        .byte $E8   ; 
- D 3 - I - 0x0034CA 00:F4BA: E0        .byte $E0   ; 
- D 3 - I - 0x0034CB 00:F4BB: CC        .byte $CC   ; 
- D 3 - I - 0x0034CC 00:F4BC: 00        .byte $00   ; 
- D 3 - I - 0x0034CD 00:F4BD: 08        .byte $08   ; 
- D 3 - I - 0x0034CE 00:F4BE: E8        .byte $E8   ; 
- D 3 - I - 0x0034CF 00:F4BF: 81        .byte $81   ; 
- D 3 - I - 0x0034D0 00:F4C0: 00        .byte $00   ; 
- D 3 - I - 0x0034D1 00:F4C1: EA        .byte $EA   ; 
- D 3 - I - 0x0034D2 00:F4C2: E8        .byte $E8   ; 
- D 3 - I - 0x0034D3 00:F4C3: 82        .byte $82   ; 
- D 3 - I - 0x0034D4 00:F4C4: 00        .byte $00   ; 
- D 3 - I - 0x0034D5 00:F4C5: F2        .byte $F2   ; 
- D 3 - I - 0x0034D6 00:F4C6: E8        .byte $E8   ; 
- D 3 - I - 0x0034D7 00:F4C7: 83        .byte $83   ; 
- D 3 - I - 0x0034D8 00:F4C8: 00        .byte $00   ; 
- D 3 - I - 0x0034D9 00:F4C9: FA        .byte $FA   ; 
- D 3 - I - 0x0034DA 00:F4CA: E8        .byte $E8   ; 
- D 3 - I - 0x0034DB 00:F4CB: 84        .byte $84   ; 
- D 3 - I - 0x0034DC 00:F4CC: 00        .byte $00   ; 
- D 3 - I - 0x0034DD 00:F4CD: 02        .byte $02   ; 
- D 3 - I - 0x0034DE 00:F4CE: F8        .byte $F8   ; 
- D 3 - I - 0x0034DF 00:F4CF: 78        .byte $78   ; 
- D 3 - I - 0x0034E0 00:F4D0: 00        .byte $00   ; 
- D 3 - I - 0x0034E1 00:F4D1: FE        .byte $FE   ; 



_off001_F4D2_1D:
- D 3 - I - 0x0034E2 00:F4D2: 19        .byte $19   ; 
- D 3 - I - 0x0034E3 00:F4D3: 40        .byte $40   ; 
- D 3 - I - 0x0034E4 00:F4D4: 41        .byte $41   ; 
- D 3 - I - 0x0034E5 00:F4D5: 01        .byte $01   ; 
- D 3 - I - 0x0034E6 00:F4D6: 19        .byte $19   ; 
- D 3 - I - 0x0034E7 00:F4D7: 42        .byte $42   ; 
- D 3 - I - 0x0034E8 00:F4D8: 43        .byte $43   ; 
- D 3 - I - 0x0034E9 00:F4D9: 01        .byte $01   ; 



_off001_F4DA_1B:
- D 3 - I - 0x0034EA 00:F4DA: 19        .byte $19   ; 
- D 3 - I - 0x0034EB 00:F4DB: 40        .byte $40   ; 
- D 3 - I - 0x0034EC 00:F4DC: 41        .byte $41   ; 
- D 3 - I - 0x0034ED 00:F4DD: 19        .byte $19   ; 
- D 3 - I - 0x0034EE 00:F4DE: 44        .byte $44   ; 
- D 3 - I - 0x0034EF 00:F4DF: 45        .byte $45   ; 
- D 3 - I - 0x0034F0 00:F4E0: 19        .byte $19   ; 
- D 3 - I - 0x0034F1 00:F4E1: 46        .byte $46   ; 
- D 3 - I - 0x0034F2 00:F4E2: 47        .byte $47   ; 
- D 3 - I - 0x0034F3 00:F4E3: 19        .byte $19   ; 
- D 3 - I - 0x0034F4 00:F4E4: 48        .byte $48   ; 
- D 3 - I - 0x0034F5 00:F4E5: 49        .byte $49   ; 



_off001_F4E6_1C:
- D 3 - I - 0x0034F6 00:F4E6: 31        .byte $31   ; 
- D 3 - I - 0x0034F7 00:F4E7: 40        .byte $40   ; 
- D 3 - I - 0x0034F8 00:F4E8: 41        .byte $41   ; 
- D 3 - I - 0x0034F9 00:F4E9: 31        .byte $31   ; 
- D 3 - I - 0x0034FA 00:F4EA: 44        .byte $44   ; 
- D 3 - I - 0x0034FB 00:F4EB: 45        .byte $45   ; 
- D 3 - I - 0x0034FC 00:F4EC: 31        .byte $31   ; 
- D 3 - I - 0x0034FD 00:F4ED: 4A        .byte $4A   ; 
- D 3 - I - 0x0034FE 00:F4EE: 4B        .byte $4B   ; 
- D 3 - I - 0x0034FF 00:F4EF: 31        .byte $31   ; 
- D 3 - I - 0x003500 00:F4F0: 4C        .byte $4C   ; 
- D 3 - I - 0x003501 00:F4F1: 4D        .byte $4D   ; 



_off001_F4F2_20:
- D 3 - I - 0x003502 00:F4F2: 01        .byte $01   ; 
- D 3 - I - 0x003503 00:F4F3: 21        .byte $21   ; 
- D 3 - I - 0x003504 00:F4F4: 4E        .byte $4E   ; 
- D 3 - I - 0x003505 00:F4F5: 31        .byte $31   ; 
- D 3 - I - 0x003506 00:F4F6: 4F        .byte $4F   ; 
- D 3 - I - 0x003507 00:F4F7: 50        .byte $50   ; 
- D 3 - I - 0x003508 00:F4F8: 01        .byte $01   ; 



_off001_F4F9_1F:
- D 3 - I - 0x003509 00:F4F9: 01        .byte $01   ; 
- D 3 - I - 0x00350A 00:F4FA: 01        .byte $01   ; 
- D 3 - I - 0x00350B 00:F4FB: 31        .byte $31   ; 
- D 3 - I - 0x00350C 00:F4FC: 51        .byte $51   ; 
- D 3 - I - 0x00350D 00:F4FD: 52        .byte $52   ; 
- D 3 - I - 0x00350E 00:F4FE: 21        .byte $21   ; 
- D 3 - I - 0x00350F 00:F4FF: 53        .byte $53   ; 



_off001_F500_1E:
- D 3 - I - 0x003510 00:F500: 41        .byte $41   ; 
- D 3 - I - 0x003511 00:F501: 54        .byte $54   ; 
- D 3 - I - 0x003512 00:F502: 71        .byte $71   ; 
- D 3 - I - 0x003513 00:F503: 55        .byte $55   ; 
- D 3 - I - 0x003514 00:F504: 56        .byte $56   ; 
- D 3 - I - 0x003515 00:F505: 57        .byte $57   ; 
- D 3 - I - 0x003516 00:F506: 31        .byte $31   ; 
- D 3 - I - 0x003517 00:F507: 58        .byte $58   ; 
- D 3 - I - 0x003518 00:F508: 59        .byte $59   ; 
- D 3 - I - 0x003519 00:F509: 11        .byte $11   ; 
- D 3 - I - 0x00351A 00:F50A: 5A        .byte $5A   ; 



_off001_F50B_21:
- D 3 - I - 0x00351B 00:F50B: 01        .byte $01   ; 
- D 3 - I - 0x00351C 00:F50C: 01        .byte $01   ; 
- D 3 - I - 0x00351D 00:F50D: 09        .byte $09   ; 
- D 3 - I - 0x00351E 00:F50E: 5B        .byte $5B   ; 
- D 3 - I - 0x00351F 00:F50F: 31        .byte $31   ; 
- D 3 - I - 0x003520 00:F510: 5C        .byte $5C   ; 
- D 3 - I - 0x003521 00:F511: 5D        .byte $5D   ; 



_off001_F512_22:
- D 3 - I - 0x003522 00:F512: 01        .byte $01   ; 
- D 3 - I - 0x003523 00:F513: 01        .byte $01   ; 
- D 3 - I - 0x003524 00:F514: 19        .byte $19   ; 
- D 3 - I - 0x003525 00:F515: 3F        .byte $3F   ; 
- D 3 - I - 0x003526 00:F516: 78        .byte $78   ; 
- D 3 - I - 0x003527 00:F517: 39        .byte $39   ; 
- D 3 - I - 0x003528 00:F518: 5E        .byte $5E   ; 
- D 3 - I - 0x003529 00:F519: 79        .byte $79   ; 
- D 3 - I - 0x00352A 00:F51A: 7A        .byte $7A   ; 



_off001_F51B_23:
- D 3 - I - 0x00352B 00:F51B: 31        .byte $31   ; 
- D 3 - I - 0x00352C 00:F51C: 40        .byte $40   ; 
- D 3 - I - 0x00352D 00:F51D: 41        .byte $41   ; 
- D 3 - I - 0x00352E 00:F51E: 31        .byte $31   ; 
- D 3 - I - 0x00352F 00:F51F: 44        .byte $44   ; 
- D 3 - I - 0x003530 00:F520: 45        .byte $45   ; 
- D 3 - I - 0x003531 00:F521: 31        .byte $31   ; 
- D 3 - I - 0x003532 00:F522: 4A        .byte $4A   ; 
- D 3 - I - 0x003533 00:F523: 4B        .byte $4B   ; 
- D 3 - I - 0x003534 00:F524: 31        .byte $31   ; 
- D 3 - I - 0x003535 00:F525: 4C        .byte $4C   ; 
- D 3 - I - 0x003536 00:F526: 4D        .byte $4D   ; 



_off002_F527_1D:
- D 3 - I - 0x003537 00:F527: 05        .byte $05   ; 
- D 3 - I - 0x003538 00:F528: E1        .byte $E1   ; 
- D 3 - I - 0x003539 00:F529: F6        .byte $F6   ; 
- D 3 - I - 0x00353A 00:F52A: 01        .byte $01   ; 
- D 3 - I - 0x00353B 00:F52B: 05        .byte $05   ; 
- D 3 - I - 0x00353C 00:F52C: E7        .byte $E7   ; 
- D 3 - I - 0x00353D 00:F52D: 63        .byte $63   ; 
- D 3 - I - 0x00353E 00:F52E: 00        .byte $00   ; 
- D 3 - I - 0x00353F 00:F52F: 0A        .byte $0A   ; 
- D 3 - I - 0x003540 00:F530: E9        .byte $E9   ; 
- D 3 - I - 0x003541 00:F531: 66        .byte $66   ; 
- D 3 - I - 0x003542 00:F532: 00        .byte $00   ; 
- D 3 - I - 0x003543 00:F533: 02        .byte $02   ; 
- D 3 - I - 0x003544 00:F534: F2        .byte $F2   ; 
- D 3 - I - 0x003545 00:F535: 67        .byte $67   ; 
- D 3 - I - 0x003546 00:F536: 02        .byte $02   ; 
- D 3 - I - 0x003547 00:F537: 06        .byte $06   ; 
- D 3 - I - 0x003548 00:F538: FA        .byte $FA   ; 
- D 3 - I - 0x003549 00:F539: 68        .byte $68   ; 
- D 3 - I - 0x00354A 00:F53A: 02        .byte $02   ; 
- D 3 - I - 0x00354B 00:F53B: 07        .byte $07   ; 



_off002_F53C_1B:
- D 3 - I - 0x00354C 00:F53C: 05        .byte $05   ; 
- D 3 - I - 0x00354D 00:F53D: E1        .byte $E1   ; 
- D 3 - I - 0x00354E 00:F53E: 61        .byte $61   ; 
- D 3 - I - 0x00354F 00:F53F: 01        .byte $01   ; 
- D 3 - I - 0x003550 00:F540: 05        .byte $05   ; 
- D 3 - I - 0x003551 00:F541: E7        .byte $E7   ; 
- D 3 - I - 0x003552 00:F542: 63        .byte $63   ; 
- D 3 - I - 0x003553 00:F543: 00        .byte $00   ; 
- D 3 - I - 0x003554 00:F544: 0A        .byte $0A   ; 
- D 3 - I - 0x003555 00:F545: E9        .byte $E9   ; 
- D 3 - I - 0x003556 00:F546: 62        .byte $62   ; 
- D 3 - I - 0x003557 00:F547: 00        .byte $00   ; 
- D 3 - I - 0x003558 00:F548: FE        .byte $FE   ; 
- D 3 - I - 0x003559 00:F549: FD        .byte $FD   ; 
- D 3 - I - 0x00355A 00:F54A: 64        .byte $64   ; 
- D 3 - I - 0x00355B 00:F54B: 02        .byte $02   ; 
- D 3 - I - 0x00355C 00:F54C: FA        .byte $FA   ; 
- D 3 - I - 0x00355D 00:F54D: FD        .byte $FD   ; 
- D 3 - I - 0x00355E 00:F54E: 64        .byte $64   ; 
- D 3 - I - 0x00355F 00:F54F: 02        .byte $02   ; 
- D 3 - I - 0x003560 00:F550: 08        .byte $08   ; 



_off002_F551_1C:
- D 3 - I - 0x003561 00:F551: 05        .byte $05   ; 
- D 3 - I - 0x003562 00:F552: E1        .byte $E1   ; 
- D 3 - I - 0x003563 00:F553: 61        .byte $61   ; 
- D 3 - I - 0x003564 00:F554: 01        .byte $01   ; 
- D 3 - I - 0x003565 00:F555: FD        .byte $FD   ; 
- D 3 - I - 0x003566 00:F556: E7        .byte $E7   ; 
- D 3 - I - 0x003567 00:F557: 63        .byte $63   ; 
- D 3 - I - 0x003568 00:F558: 00        .byte $00   ; 
- D 3 - I - 0x003569 00:F559: 02        .byte $02   ; 
- D 3 - I - 0x00356A 00:F55A: E9        .byte $E9   ; 
- D 3 - I - 0x00356B 00:F55B: 62        .byte $62   ; 
- D 3 - I - 0x00356C 00:F55C: 00        .byte $00   ; 
- D 3 - I - 0x00356D 00:F55D: F6        .byte $F6   ; 
- D 3 - I - 0x00356E 00:F55E: FD        .byte $FD   ; 
- D 3 - I - 0x00356F 00:F55F: 64        .byte $64   ; 
- D 3 - I - 0x003570 00:F560: 02        .byte $02   ; 
- D 3 - I - 0x003571 00:F561: FB        .byte $FB   ; 
- D 3 - I - 0x003572 00:F562: FD        .byte $FD   ; 
- D 3 - I - 0x003573 00:F563: 64        .byte $64   ; 
- D 3 - I - 0x003574 00:F564: 02        .byte $02   ; 
- D 3 - I - 0x003575 00:F565: FE        .byte $FE   ; 



_off002_F566_20:
- D 3 - I - 0x003576 00:F566: 05        .byte $05   ; 
- D 3 - I - 0x003577 00:F567: E8        .byte $E8   ; 
- D 3 - I - 0x003578 00:F568: 6A        .byte $6A   ; 
- D 3 - I - 0x003579 00:F569: 01        .byte $01   ; 
- D 3 - I - 0x00357A 00:F56A: 02        .byte $02   ; 
- D 3 - I - 0x00357B 00:F56B: EC        .byte $EC   ; 
- D 3 - I - 0x00357C 00:F56C: 6B        .byte $6B   ; 
- D 3 - I - 0x00357D 00:F56D: 01        .byte $01   ; 
- D 3 - I - 0x00357E 00:F56E: FA        .byte $FA   ; 
- D 3 - I - 0x00357F 00:F56F: F3        .byte $F3   ; 
- D 3 - I - 0x003580 00:F570: 6C        .byte $6C   ; 
- D 3 - I - 0x003581 00:F571: 00        .byte $00   ; 
- D 3 - I - 0x003582 00:F572: F3        .byte $F3   ; 
- D 3 - I - 0x003583 00:F573: F8        .byte $F8   ; 
- D 3 - I - 0x003584 00:F574: 6D        .byte $6D   ; 
- D 3 - I - 0x003585 00:F575: 02        .byte $02   ; 
- D 3 - I - 0x003586 00:F576: F7        .byte $F7   ; 
- D 3 - I - 0x003587 00:F577: F8        .byte $F8   ; 
- D 3 - I - 0x003588 00:F578: 6E        .byte $6E   ; 
- D 3 - I - 0x003589 00:F579: 02        .byte $02   ; 
- D 3 - I - 0x00358A 00:F57A: FF        .byte $FF   ; 



_off002_F57B_1F:
- D 3 - I - 0x00358B 00:F57B: 06        .byte $06   ; 
- D 3 - I - 0x00358C 00:F57C: E6        .byte $E6   ; 
- D 3 - I - 0x00358D 00:F57D: F6        .byte $F6   ; 
- D 3 - I - 0x00358E 00:F57E: 01        .byte $01   ; 
- D 3 - I - 0x00358F 00:F57F: FD        .byte $FD   ; 
- D 3 - I - 0x003590 00:F580: E8        .byte $E8   ; 
- D 3 - I - 0x003591 00:F581: 6F        .byte $6F   ; 
- D 3 - I - 0x003592 00:F582: 01        .byte $01   ; 
- D 3 - I - 0x003593 00:F583: F6        .byte $F6   ; 
- D 3 - I - 0x003594 00:F584: E8        .byte $E8   ; 
- D 3 - I - 0x003595 00:F585: F7        .byte $F7   ; 
- D 3 - I - 0x003596 00:F586: 01        .byte $01   ; 
- D 3 - I - 0x003597 00:F587: 05        .byte $05   ; 
- D 3 - I - 0x003598 00:F588: EE        .byte $EE   ; 
- D 3 - I - 0x003599 00:F589: F2        .byte $F2   ; 
- D 3 - I - 0x00359A 00:F58A: 00        .byte $00   ; 
- D 3 - I - 0x00359B 00:F58B: FE        .byte $FE   ; 
- D 3 - I - 0x00359C 00:F58C: F8        .byte $F8   ; 
- D 3 - I - 0x00359D 00:F58D: F8        .byte $F8   ; 
- D 3 - I - 0x00359E 00:F58E: 02        .byte $02   ; 
- D 3 - I - 0x00359F 00:F58F: 00        .byte $00   ; 
- D 3 - I - 0x0035A0 00:F590: FD        .byte $FD   ; 
- D 3 - I - 0x0035A1 00:F591: 64        .byte $64   ; 
- D 3 - I - 0x0035A2 00:F592: 02        .byte $02   ; 
- D 3 - I - 0x0035A3 00:F593: F8        .byte $F8   ; 



_off002_F594_1E:
- D 3 - I - 0x0035A4 00:F594: 04        .byte $04   ; 
- D 3 - I - 0x0035A5 00:F595: E0        .byte $E0   ; 
- D 3 - I - 0x0035A6 00:F596: FC        .byte $FC   ; 
- D 3 - I - 0x0035A7 00:F597: 02        .byte $02   ; 
- D 3 - I - 0x0035A8 00:F598: F0        .byte $F0   ; 
- D 3 - I - 0x0035A9 00:F599: E1        .byte $E1   ; 
- D 3 - I - 0x0035AA 00:F59A: FD        .byte $FD   ; 
- D 3 - I - 0x0035AB 00:F59B: 01        .byte $01   ; 
- D 3 - I - 0x0035AC 00:F59C: FB        .byte $FB   ; 
- D 3 - I - 0x0035AD 00:F59D: E2        .byte $E2   ; 
- D 3 - I - 0x0035AE 00:F59E: FE        .byte $FE   ; 
- D 3 - I - 0x0035AF 00:F59F: 01        .byte $01   ; 
- D 3 - I - 0x0035B0 00:F5A0: 03        .byte $03   ; 
- D 3 - I - 0x0035B1 00:F5A1: FD        .byte $FD   ; 
- D 3 - I - 0x0035B2 00:F5A2: 64        .byte $64   ; 
- D 3 - I - 0x0035B3 00:F5A3: 02        .byte $02   ; 
- D 3 - I - 0x0035B4 00:F5A4: 00        .byte $00   ; 



_off002_F5A5_21:
- D 3 - I - 0x0035B5 00:F5A5: 05        .byte $05   ; 
- D 3 - I - 0x0035B6 00:F5A6: E8        .byte $E8   ; 
- D 3 - I - 0x0035B7 00:F5A7: 65        .byte $65   ; 
- D 3 - I - 0x0035B8 00:F5A8: 01        .byte $01   ; 
- D 3 - I - 0x0035B9 00:F5A9: 03        .byte $03   ; 
- D 3 - I - 0x0035BA 00:F5AA: E9        .byte $E9   ; 
- D 3 - I - 0x0035BB 00:F5AB: F9        .byte $F9   ; 
- D 3 - I - 0x0035BC 00:F5AC: 00        .byte $00   ; 
- D 3 - I - 0x0035BD 00:F5AD: 0B        .byte $0B   ; 
- D 3 - I - 0x0035BE 00:F5AE: F0        .byte $F0   ; 
- D 3 - I - 0x0035BF 00:F5AF: FA        .byte $FA   ; 
- D 3 - I - 0x0035C0 00:F5B0: 00        .byte $00   ; 
- D 3 - I - 0x0035C1 00:F5B1: 00        .byte $00   ; 
- D 3 - I - 0x0035C2 00:F5B2: FC        .byte $FC   ; 
- D 3 - I - 0x0035C3 00:F5B3: FB        .byte $FB   ; 
- D 3 - I - 0x0035C4 00:F5B4: 02        .byte $02   ; 
- D 3 - I - 0x0035C5 00:F5B5: F3        .byte $F3   ; 
- D 3 - I - 0x0035C6 00:F5B6: F8        .byte $F8   ; 
- D 3 - I - 0x0035C7 00:F5B7: 60        .byte $60   ; 
- D 3 - I - 0x0035C8 00:F5B8: 02        .byte $02   ; 
- D 3 - I - 0x0035C9 00:F5B9: 08        .byte $08   ; 



_off002_F5BA_22:
- D 3 - I - 0x0035CA 00:F5BA: 04        .byte $04   ; 
- D 3 - I - 0x0035CB 00:F5BB: F3        .byte $F3   ; 
- D 3 - I - 0x0035CC 00:F5BC: C8        .byte $C8   ; 
- D 3 - I - 0x0035CD 00:F5BD: 01        .byte $01   ; 
- D 3 - I - 0x0035CE 00:F5BE: 06        .byte $06   ; 
- D 3 - I - 0x0035CF 00:F5BF: FA        .byte $FA   ; 
- D 3 - I - 0x0035D0 00:F5C0: C9        .byte $C9   ; 
- D 3 - I - 0x0035D1 00:F5C1: 00        .byte $00   ; 
- D 3 - I - 0x0035D2 00:F5C2: 09        .byte $09   ; 
- D 3 - I - 0x0035D3 00:F5C3: FD        .byte $FD   ; 
- D 3 - I - 0x0035D4 00:F5C4: 64        .byte $64   ; 
- D 3 - I - 0x0035D5 00:F5C5: 02        .byte $02   ; 
- D 3 - I - 0x0035D6 00:F5C6: F0        .byte $F0   ; 
- D 3 - I - 0x0035D7 00:F5C7: FD        .byte $FD   ; 
- D 3 - I - 0x0035D8 00:F5C8: 64        .byte $64   ; 
- D 3 - I - 0x0035D9 00:F5C9: 02        .byte $02   ; 
- D 3 - I - 0x0035DA 00:F5CA: F6        .byte $F6   ; 



_off002_F5CB_23:
- D 3 - I - 0x0035DB 00:F5CB: 05        .byte $05   ; 
- D 3 - I - 0x0035DC 00:F5CC: E1        .byte $E1   ; 
- D 3 - I - 0x0035DD 00:F5CD: 61        .byte $61   ; 
- D 3 - I - 0x0035DE 00:F5CE: 01        .byte $01   ; 
- D 3 - I - 0x0035DF 00:F5CF: FD        .byte $FD   ; 
- D 3 - I - 0x0035E0 00:F5D0: E4        .byte $E4   ; 
- D 3 - I - 0x0035E1 00:F5D1: 69        .byte $69   ; 
- D 3 - I - 0x0035E2 00:F5D2: 01        .byte $01   ; 
- D 3 - I - 0x0035E3 00:F5D3: F6        .byte $F6   ; 
- D 3 - I - 0x0035E4 00:F5D4: E7        .byte $E7   ; 
- D 3 - I - 0x0035E5 00:F5D5: 63        .byte $63   ; 
- D 3 - I - 0x0035E6 00:F5D6: 00        .byte $00   ; 
- D 3 - I - 0x0035E7 00:F5D7: 02        .byte $02   ; 
- D 3 - I - 0x0035E8 00:F5D8: FD        .byte $FD   ; 
- D 3 - I - 0x0035E9 00:F5D9: 64        .byte $64   ; 
- D 3 - I - 0x0035EA 00:F5DA: 02        .byte $02   ; 
- D 3 - I - 0x0035EB 00:F5DB: FB        .byte $FB   ; 
- D 3 - I - 0x0035EC 00:F5DC: FD        .byte $FD   ; 
- D 3 - I - 0x0035ED 00:F5DD: 64        .byte $64   ; 
- D 3 - I - 0x0035EE 00:F5DE: 02        .byte $02   ; 
- D 3 - I - 0x0035EF 00:F5DF: FE        .byte $FE   ; 



_off001_F5E0_24:
- D 3 - I - 0x0035F0 00:F5E0: 19        .byte $19   ; 
- D 3 - I - 0x0035F1 00:F5E1: 02        .byte $02   ; 
- D 3 - I - 0x0035F2 00:F5E2: 04        .byte $04   ; 
- D 3 - I - 0x0035F3 00:F5E3: 7D        .byte $7D   ; 
- D 3 - I - 0x0035F4 00:F5E4: 64        .byte $64   ; 
- D 3 - I - 0x0035F5 00:F5E5: 01        .byte $01   ; 
- D 3 - I - 0x0035F6 00:F5E6: 03        .byte $03   ; 
- D 3 - I - 0x0035F7 00:F5E7: 20        .byte $20   ; 
- D 3 - I - 0x0035F8 00:F5E8: 05        .byte $05   ; 
- D 3 - I - 0x0035F9 00:F5E9: 3D        .byte $3D   ; 
- D 3 - I - 0x0035FA 00:F5EA: 09        .byte $09   ; 
- D 3 - I - 0x0035FB 00:F5EB: 0B        .byte $0B   ; 
- D 3 - I - 0x0035FC 00:F5EC: 49        .byte $49   ; 
- D 3 - I - 0x0035FD 00:F5ED: 06        .byte $06   ; 
- D 3 - I - 0x0035FE 00:F5EE: 1D        .byte $1D   ; 
- D 3 - I - 0x0035FF 00:F5EF: 0C        .byte $0C   ; 
- D 3 - I - 0x003600 00:F5F0: 05        .byte $05   ; 
- D 3 - I - 0x003601 00:F5F1: 07        .byte $07   ; 



_off001_F5F2_25:
- D 3 - I - 0x003602 00:F5F2: 19        .byte $19   ; 
- D 3 - I - 0x003603 00:F5F3: 02        .byte $02   ; 
- D 3 - I - 0x003604 00:F5F4: 04        .byte $04   ; 
- D 3 - I - 0x003605 00:F5F5: 7D        .byte $7D   ; 
- D 3 - I - 0x003606 00:F5F6: 64        .byte $64   ; 
- D 3 - I - 0x003607 00:F5F7: 01        .byte $01   ; 
- D 3 - I - 0x003608 00:F5F8: 03        .byte $03   ; 
- D 3 - I - 0x003609 00:F5F9: 20        .byte $20   ; 
- D 3 - I - 0x00360A 00:F5FA: 05        .byte $05   ; 
- D 3 - I - 0x00360B 00:F5FB: 3D        .byte $3D   ; 
- D 3 - I - 0x00360C 00:F5FC: 08        .byte $08   ; 
- D 3 - I - 0x00360D 00:F5FD: 0B        .byte $0B   ; 
- D 3 - I - 0x00360E 00:F5FE: 49        .byte $49   ; 
- D 3 - I - 0x00360F 00:F5FF: 06        .byte $06   ; 
- D 3 - I - 0x003610 00:F600: 2D        .byte $2D   ; 
- D 3 - I - 0x003611 00:F601: 0A        .byte $0A   ; 
- D 3 - I - 0x003612 00:F602: 05        .byte $05   ; 
- D 3 - I - 0x003613 00:F603: 07        .byte $07   ; 



_off001_F604_26:
- D 3 - I - 0x003614 00:F604: 15        .byte $15   ; 
- D 3 - I - 0x003615 00:F605: 02        .byte $02   ; 
- D 3 - I - 0x003616 00:F606: 07        .byte $07   ; 
- D 3 - I - 0x003617 00:F607: 1D        .byte $1D   ; 
- D 3 - I - 0x003618 00:F608: 06        .byte $06   ; 
- D 3 - I - 0x003619 00:F609: 20        .byte $20   ; 
- D 3 - I - 0x00361A 00:F60A: 08        .byte $08   ; 
- D 3 - I - 0x00361B 00:F60B: 1D        .byte $1D   ; 
- D 3 - I - 0x00361C 00:F60C: 0B        .byte $0B   ; 
- D 3 - I - 0x00361D 00:F60D: 49        .byte $49   ; 
- D 3 - I - 0x00361E 00:F60E: 06        .byte $06   ; 
- D 3 - I - 0x00361F 00:F60F: 0D        .byte $0D   ; 
- D 3 - I - 0x003620 00:F610: 05        .byte $05   ; 
- D 3 - I - 0x003621 00:F611: 07        .byte $07   ; 



_off001_F612_27:
- D 3 - I - 0x003622 00:F612: 31        .byte $31   ; 
- D 3 - I - 0x003623 00:F613: 02        .byte $02   ; 
- D 3 - I - 0x003624 00:F614: 04        .byte $04   ; 
- D 3 - I - 0x003625 00:F615: 39        .byte $39   ; 
- D 3 - I - 0x003626 00:F616: 09        .byte $09   ; 
- D 3 - I - 0x003627 00:F617: 1F        .byte $1F   ; 
- D 3 - I - 0x003628 00:F618: 0A        .byte $0A   ; 
- D 3 - I - 0x003629 00:F619: 31        .byte $31   ; 
- D 3 - I - 0x00362A 00:F61A: 01        .byte $01   ; 
- D 3 - I - 0x00362B 00:F61B: 03        .byte $03   ; 
- D 3 - I - 0x00362C 00:F61C: 31        .byte $31   ; 
- D 3 - I - 0x00362D 00:F61D: 02        .byte $02   ; 
- D 3 - I - 0x00362E 00:F61E: 46        .byte $46   ; 



_off001_F61F_28:
- D 3 - I - 0x00362F 00:F61F: 31        .byte $31   ; 
- D 3 - I - 0x003630 00:F620: 02        .byte $02   ; 
- D 3 - I - 0x003631 00:F621: 04        .byte $04   ; 
- D 3 - I - 0x003632 00:F622: 19        .byte $19   ; 
- D 3 - I - 0x003633 00:F623: 1F        .byte $1F   ; 
- D 3 - I - 0x003634 00:F624: 0A        .byte $0A   ; 
- D 3 - I - 0x003635 00:F625: 79        .byte $79   ; 
- D 3 - I - 0x003636 00:F626: 09        .byte $09   ; 
- D 3 - I - 0x003637 00:F627: 0B        .byte $0B   ; 
- D 3 - I - 0x003638 00:F628: 49        .byte $49   ; 
- D 3 - I - 0x003639 00:F629: 06        .byte $06   ; 
- D 3 - I - 0x00363A 00:F62A: 39        .byte $39   ; 
- D 3 - I - 0x00363B 00:F62B: 0C        .byte $0C   ; 
- D 3 - I - 0x00363C 00:F62C: 39        .byte $39   ; 
- D 3 - I - 0x00363D 00:F62D: 46        .byte $46   ; 



_off001_F62E_29:
- D 3 - I - 0x00363E 00:F62E: 01        .byte $01   ; 
- D 3 - I - 0x00363F 00:F62F: 19        .byte $19   ; 
- D 3 - I - 0x003640 00:F630: 02        .byte $02   ; 
- D 3 - I - 0x003641 00:F631: 04        .byte $04   ; 
- D 3 - I - 0x003642 00:F632: 61        .byte $61   ; 
- D 3 - I - 0x003643 00:F633: 04        .byte $04   ; 
- D 3 - I - 0x003644 00:F634: 0E        .byte $0E   ; 
- D 3 - I - 0x003645 00:F635: 79        .byte $79   ; 
- D 3 - I - 0x003646 00:F636: 0D        .byte $0D   ; 
- D 3 - I - 0x003647 00:F637: 0F        .byte $0F   ; 
- D 3 - I - 0x003648 00:F638: 01        .byte $01   ; 
- D 3 - I - 0x003649 00:F639: 49        .byte $49   ; 



_off001_F63A_2C:
- D 3 - I - 0x00364A 00:F63A: 01        .byte $01   ; 
- D 3 - I - 0x00364B 00:F63B: 39        .byte $39   ; 
- D 3 - I - 0x00364C 00:F63C: 10        .byte $10   ; 
- D 3 - I - 0x00364D 00:F63D: 12        .byte $12   ; 
- D 3 - I - 0x00364E 00:F63E: 11        .byte $11   ; 
- D 3 - I - 0x00364F 00:F63F: 39        .byte $39   ; 
- D 3 - I - 0x003650 00:F640: 49        .byte $49   ; 
- D 3 - I - 0x003651 00:F641: 13        .byte $13   ; 
- D 3 - I - 0x003652 00:F642: 14        .byte $14   ; 
- D 3 - I - 0x003653 00:F643: 01        .byte $01   ; 



_off001_F644_2A:
- D 3 - I - 0x003654 00:F644: 39        .byte $39   ; 
- D 3 - I - 0x003655 00:F645: 61        .byte $61   ; 
- D 3 - I - 0x003656 00:F646: 02        .byte $02   ; 
- D 3 - I - 0x003657 00:F647: 04        .byte $04   ; 
- D 3 - I - 0x003658 00:F648: 1D        .byte $1D   ; 
- D 3 - I - 0x003659 00:F649: 62        .byte $62   ; 
- D 3 - I - 0x00365A 00:F64A: 1F        .byte $1F   ; 
- D 3 - I - 0x00365B 00:F64B: 0A        .byte $0A   ; 
- D 3 - I - 0x00365C 00:F64C: 79        .byte $79   ; 
- D 3 - I - 0x00365D 00:F64D: 0D        .byte $0D   ; 
- D 3 - I - 0x00365E 00:F64E: 0F        .byte $0F   ; 
- D 3 - I - 0x00365F 00:F64F: 01        .byte $01   ; 
- D 3 - I - 0x003660 00:F650: 03        .byte $03   ; 
- D 3 - I - 0x003661 00:F651: 19        .byte $19   ; 
- D 3 - I - 0x003662 00:F652: 02        .byte $02   ; 
- D 3 - I - 0x003663 00:F653: 46        .byte $46   ; 



_off002_F654_24:
- D 3 - I - 0x003664 00:F654: 05        .byte $05   ; 
- D 3 - I - 0x003665 00:F655: E0        .byte $E0   ; 
- D 3 - I - 0x003666 00:F656: CC        .byte $CC   ; 
- D 3 - I - 0x003667 00:F657: 00        .byte $00   ; 
- D 3 - I - 0x003668 00:F658: 10        .byte $10   ; 
- D 3 - I - 0x003669 00:F659: F0        .byte $F0   ; 
- D 3 - I - 0x00366A 00:F65A: 86        .byte $86   ; 
- D 3 - I - 0x00366B 00:F65B: 00        .byte $00   ; 
- D 3 - I - 0x00366C 00:F65C: 02        .byte $02   ; 
- D 3 - I - 0x00366D 00:F65D: F0        .byte $F0   ; 
- D 3 - I - 0x00366E 00:F65E: 86        .byte $86   ; 
- D 3 - I - 0x00366F 00:F65F: 00        .byte $00   ; 
- D 3 - I - 0x003670 00:F660: 09        .byte $09   ; 
- D 3 - I - 0x003671 00:F661: F8        .byte $F8   ; 
- D 3 - I - 0x003672 00:F662: 85        .byte $85   ; 
- D 3 - I - 0x003673 00:F663: 00        .byte $00   ; 
- D 3 - I - 0x003674 00:F664: F9        .byte $F9   ; 
- D 3 - I - 0x003675 00:F665: FE        .byte $FE   ; 
- D 3 - I - 0x003676 00:F666: E5        .byte $E5   ; 
- D 3 - I - 0x003677 00:F667: 40        .byte $40   ; 
- D 3 - I - 0x003678 00:F668: 0C        .byte $0C   ; 



_off002_F669_25:
- D 3 - I - 0x003679 00:F669: 05        .byte $05   ; 
- D 3 - I - 0x00367A 00:F66A: E0        .byte $E0   ; 
- D 3 - I - 0x00367B 00:F66B: CC        .byte $CC   ; 
- D 3 - I - 0x00367C 00:F66C: 00        .byte $00   ; 
- D 3 - I - 0x00367D 00:F66D: 10        .byte $10   ; 
- D 3 - I - 0x00367E 00:F66E: F0        .byte $F0   ; 
- D 3 - I - 0x00367F 00:F66F: 86        .byte $86   ; 
- D 3 - I - 0x003680 00:F670: 00        .byte $00   ; 
- D 3 - I - 0x003681 00:F671: 02        .byte $02   ; 
- D 3 - I - 0x003682 00:F672: F0        .byte $F0   ; 
- D 3 - I - 0x003683 00:F673: 86        .byte $86   ; 
- D 3 - I - 0x003684 00:F674: 00        .byte $00   ; 
- D 3 - I - 0x003685 00:F675: 09        .byte $09   ; 
- D 3 - I - 0x003686 00:F676: F8        .byte $F8   ; 
- D 3 - I - 0x003687 00:F677: 87        .byte $87   ; 
- D 3 - I - 0x003688 00:F678: 00        .byte $00   ; 
- D 3 - I - 0x003689 00:F679: 00        .byte $00   ; 
- D 3 - I - 0x00368A 00:F67A: FE        .byte $FE   ; 
- D 3 - I - 0x00368B 00:F67B: E5        .byte $E5   ; 
- D 3 - I - 0x00368C 00:F67C: 40        .byte $40   ; 
- D 3 - I - 0x00368D 00:F67D: 0C        .byte $0C   ; 



_off002_F67E_26:
- D 3 - I - 0x00368E 00:F67E: 05        .byte $05   ; 
- D 3 - I - 0x00368F 00:F67F: E0        .byte $E0   ; 
- D 3 - I - 0x003690 00:F680: 89        .byte $89   ; 
- D 3 - I - 0x003691 00:F681: 00        .byte $00   ; 
- D 3 - I - 0x003692 00:F682: 08        .byte $08   ; 
- D 3 - I - 0x003693 00:F683: F0        .byte $F0   ; 
- D 3 - I - 0x003694 00:F684: 86        .byte $86   ; 
- D 3 - I - 0x003695 00:F685: 00        .byte $00   ; 
- D 3 - I - 0x003696 00:F686: 02        .byte $02   ; 
- D 3 - I - 0x003697 00:F687: F0        .byte $F0   ; 
- D 3 - I - 0x003698 00:F688: 86        .byte $86   ; 
- D 3 - I - 0x003699 00:F689: 00        .byte $00   ; 
- D 3 - I - 0x00369A 00:F68A: 09        .byte $09   ; 
- D 3 - I - 0x00369B 00:F68B: F8        .byte $F8   ; 
- D 3 - I - 0x00369C 00:F68C: 88        .byte $88   ; 
- D 3 - I - 0x00369D 00:F68D: 00        .byte $00   ; 
- D 3 - I - 0x00369E 00:F68E: 00        .byte $00   ; 
- D 3 - I - 0x00369F 00:F68F: FE        .byte $FE   ; 
- D 3 - I - 0x0036A0 00:F690: E5        .byte $E5   ; 
- D 3 - I - 0x0036A1 00:F691: 40        .byte $40   ; 
- D 3 - I - 0x0036A2 00:F692: 0C        .byte $0C   ; 



_off002_F693_27:
- D 3 - I - 0x0036A3 00:F693: 06        .byte $06   ; 
- D 3 - I - 0x0036A4 00:F694: E1        .byte $E1   ; 
- D 3 - I - 0x0036A5 00:F695: 8A        .byte $8A   ; 
- D 3 - I - 0x0036A6 00:F696: 00        .byte $00   ; 
- D 3 - I - 0x0036A7 00:F697: E8        .byte $E8   ; 
- D 3 - I - 0x0036A8 00:F698: E1        .byte $E1   ; 
- D 3 - I - 0x0036A9 00:F699: 8B        .byte $8B   ; 
- D 3 - I - 0x0036AA 00:F69A: 00        .byte $00   ; 
- D 3 - I - 0x0036AB 00:F69B: F0        .byte $F0   ; 
- D 3 - I - 0x0036AC 00:F69C: E9        .byte $E9   ; 
- D 3 - I - 0x0036AD 00:F69D: 8C        .byte $8C   ; 
- D 3 - I - 0x0036AE 00:F69E: 00        .byte $00   ; 
- D 3 - I - 0x0036AF 00:F69F: EB        .byte $EB   ; 
- D 3 - I - 0x0036B0 00:F6A0: E9        .byte $E9   ; 
- D 3 - I - 0x0036B1 00:F6A1: 8D        .byte $8D   ; 
- D 3 - I - 0x0036B2 00:F6A2: 00        .byte $00   ; 
- D 3 - I - 0x0036B3 00:F6A3: F3        .byte $F3   ; 
- D 3 - I - 0x0036B4 00:F6A4: F0        .byte $F0   ; 
- D 3 - I - 0x0036B5 00:F6A5: 86        .byte $86   ; 
- D 3 - I - 0x0036B6 00:F6A6: 00        .byte $00   ; 
- D 3 - I - 0x0036B7 00:F6A7: FD        .byte $FD   ; 
- D 3 - I - 0x0036B8 00:F6A8: FE        .byte $FE   ; 
- D 3 - I - 0x0036B9 00:F6A9: E5        .byte $E5   ; 
- D 3 - I - 0x0036BA 00:F6AA: 00        .byte $00   ; 
- D 3 - I - 0x0036BB 00:F6AB: FE        .byte $FE   ; 



_off002_F6AC_28:
- D 3 - I - 0x0036BC 00:F6AC: 07        .byte $07   ; 
- D 3 - I - 0x0036BD 00:F6AD: E0        .byte $E0   ; 
- D 3 - I - 0x0036BE 00:F6AE: 8E        .byte $8E   ; 
- D 3 - I - 0x0036BF 00:F6AF: 00        .byte $00   ; 
- D 3 - I - 0x0036C0 00:F6B0: F5        .byte $F5   ; 
- D 3 - I - 0x0036C1 00:F6B1: E2        .byte $E2   ; 
- D 3 - I - 0x0036C2 00:F6B2: 8F        .byte $8F   ; 
- D 3 - I - 0x0036C3 00:F6B3: 00        .byte $00   ; 
- D 3 - I - 0x0036C4 00:F6B4: F1        .byte $F1   ; 
- D 3 - I - 0x0036C5 00:F6B5: E8        .byte $E8   ; 
- D 3 - I - 0x0036C6 00:F6B6: 90        .byte $90   ; 
- D 3 - I - 0x0036C7 00:F6B7: 00        .byte $00   ; 
- D 3 - I - 0x0036C8 00:F6B8: F9        .byte $F9   ; 
- D 3 - I - 0x0036C9 00:F6B9: F0        .byte $F0   ; 
- D 3 - I - 0x0036CA 00:F6BA: 86        .byte $86   ; 
- D 3 - I - 0x0036CB 00:F6BB: 00        .byte $00   ; 
- D 3 - I - 0x0036CC 00:F6BC: FA        .byte $FA   ; 
- D 3 - I - 0x0036CD 00:F6BD: F0        .byte $F0   ; 
- D 3 - I - 0x0036CE 00:F6BE: 86        .byte $86   ; 
- D 3 - I - 0x0036CF 00:F6BF: 00        .byte $00   ; 
- D 3 - I - 0x0036D0 00:F6C0: 01        .byte $01   ; 
- D 3 - I - 0x0036D1 00:F6C1: F8        .byte $F8   ; 
- D 3 - I - 0x0036D2 00:F6C2: 85        .byte $85   ; 
- D 3 - I - 0x0036D3 00:F6C3: 00        .byte $00   ; 
- D 3 - I - 0x0036D4 00:F6C4: F1        .byte $F1   ; 
- D 3 - I - 0x0036D5 00:F6C5: FE        .byte $FE   ; 
- D 3 - I - 0x0036D6 00:F6C6: E5        .byte $E5   ; 
- D 3 - I - 0x0036D7 00:F6C7: 00        .byte $00   ; 
- D 3 - I - 0x0036D8 00:F6C8: 06        .byte $06   ; 



_off002_F6C9_29:
- D 3 - I - 0x0036D9 00:F6C9: 07        .byte $07   ; 
- D 3 - I - 0x0036DA 00:F6CA: E8        .byte $E8   ; 
- D 3 - I - 0x0036DB 00:F6CB: 8E        .byte $8E   ; 
- D 3 - I - 0x0036DC 00:F6CC: 00        .byte $00   ; 
- D 3 - I - 0x0036DD 00:F6CD: FD        .byte $FD   ; 
- D 3 - I - 0x0036DE 00:F6CE: EA        .byte $EA   ; 
- D 3 - I - 0x0036DF 00:F6CF: 8F        .byte $8F   ; 
- D 3 - I - 0x0036E0 00:F6D0: 00        .byte $00   ; 
- D 3 - I - 0x0036E1 00:F6D1: F9        .byte $F9   ; 
- D 3 - I - 0x0036E2 00:F6D2: F0        .byte $F0   ; 
- D 3 - I - 0x0036E3 00:F6D3: 90        .byte $90   ; 
- D 3 - I - 0x0036E4 00:F6D4: 00        .byte $00   ; 
- D 3 - I - 0x0036E5 00:F6D5: 01        .byte $01   ; 
- D 3 - I - 0x0036E6 00:F6D6: F0        .byte $F0   ; 
- D 3 - I - 0x0036E7 00:F6D7: 96        .byte $96   ; 
- D 3 - I - 0x0036E8 00:F6D8: 00        .byte $00   ; 
- D 3 - I - 0x0036E9 00:F6D9: 09        .byte $09   ; 
- D 3 - I - 0x0036EA 00:F6DA: F8        .byte $F8   ; 
- D 3 - I - 0x0036EB 00:F6DB: 91        .byte $91   ; 
- D 3 - I - 0x0036EC 00:F6DC: 00        .byte $00   ; 
- D 3 - I - 0x0036ED 00:F6DD: EA        .byte $EA   ; 
- D 3 - I - 0x0036EE 00:F6DE: F8        .byte $F8   ; 
- D 3 - I - 0x0036EF 00:F6DF: 86        .byte $86   ; 
- D 3 - I - 0x0036F0 00:F6E0: 00        .byte $00   ; 
- D 3 - I - 0x0036F1 00:F6E1: 03        .byte $03   ; 
- D 3 - I - 0x0036F2 00:F6E2: F8        .byte $F8   ; 
- D 3 - I - 0x0036F3 00:F6E3: 92        .byte $92   ; 
- D 3 - I - 0x0036F4 00:F6E4: 00        .byte $00   ; 
- D 3 - I - 0x0036F5 00:F6E5: 0B        .byte $0B   ; 



_off002_F6E6_2C:
- D 3 - I - 0x0036F6 00:F6E6: 08        .byte $08   ; 
- D 3 - I - 0x0036F7 00:F6E7: E8        .byte $E8   ; 
- D 3 - I - 0x0036F8 00:F6E8: 8E        .byte $8E   ; 
- D 3 - I - 0x0036F9 00:F6E9: 00        .byte $00   ; 
- D 3 - I - 0x0036FA 00:F6EA: E5        .byte $E5   ; 
- D 3 - I - 0x0036FB 00:F6EB: E8        .byte $E8   ; 
- D 3 - I - 0x0036FC 00:F6EC: 93        .byte $93   ; 
- D 3 - I - 0x0036FD 00:F6ED: 00        .byte $00   ; 
- D 3 - I - 0x0036FE 00:F6EE: ED        .byte $ED   ; 
- D 3 - I - 0x0036FF 00:F6EF: E8        .byte $E8   ; 
- D 3 - I - 0x003700 00:F6F0: 94        .byte $94   ; 
- D 3 - I - 0x003701 00:F6F1: 00        .byte $00   ; 
- D 3 - I - 0x003702 00:F6F2: F5        .byte $F5   ; 
- D 3 - I - 0x003703 00:F6F3: EE        .byte $EE   ; 
- D 3 - I - 0x003704 00:F6F4: F3        .byte $F3   ; 
- D 3 - I - 0x003705 00:F6F5: 00        .byte $00   ; 
- D 3 - I - 0x003706 00:F6F6: E1        .byte $E1   ; 
- D 3 - I - 0x003707 00:F6F7: F0        .byte $F0   ; 
- D 3 - I - 0x003708 00:F6F8: 95        .byte $95   ; 
- D 3 - I - 0x003709 00:F6F9: 00        .byte $00   ; 
- D 3 - I - 0x00370A 00:F6FA: E9        .byte $E9   ; 
- D 3 - I - 0x00370B 00:F6FB: F0        .byte $F0   ; 
- D 3 - I - 0x00370C 00:F6FC: 96        .byte $96   ; 
- D 3 - I - 0x00370D 00:F6FD: 00        .byte $00   ; 
- D 3 - I - 0x00370E 00:F6FE: F1        .byte $F1   ; 
- D 3 - I - 0x00370F 00:F6FF: F0        .byte $F0   ; 
- D 3 - I - 0x003710 00:F700: 97        .byte $97   ; 
- D 3 - I - 0x003711 00:F701: 00        .byte $00   ; 
- D 3 - I - 0x003712 00:F702: F9        .byte $F9   ; 
- D 3 - I - 0x003713 00:F703: E6        .byte $E6   ; 
- D 3 - I - 0x003714 00:F704: 98        .byte $98   ; 
- D 3 - I - 0x003715 00:F705: 00        .byte $00   ; 
- D 3 - I - 0x003716 00:F706: 0D        .byte $0D   ; 



_off002_F707_2A:
- D 3 - I - 0x003717 00:F707: 06        .byte $06   ; 
- D 3 - I - 0x003718 00:F708: E0        .byte $E0   ; 
- D 3 - I - 0x003719 00:F709: 8E        .byte $8E   ; 
- D 3 - I - 0x00371A 00:F70A: 00        .byte $00   ; 
- D 3 - I - 0x00371B 00:F70B: FD        .byte $FD   ; 
- D 3 - I - 0x00371C 00:F70C: E8        .byte $E8   ; 
- D 3 - I - 0x00371D 00:F70D: 74        .byte $74   ; 
- D 3 - I - 0x00371E 00:F70E: 00        .byte $00   ; 
- D 3 - I - 0x00371F 00:F70F: F3        .byte $F3   ; 
- D 3 - I - 0x003720 00:F710: E8        .byte $E8   ; 
- D 3 - I - 0x003721 00:F711: 75        .byte $75   ; 
- D 3 - I - 0x003722 00:F712: 00        .byte $00   ; 
- D 3 - I - 0x003723 00:F713: FB        .byte $FB   ; 
- D 3 - I - 0x003724 00:F714: F0        .byte $F0   ; 
- D 3 - I - 0x003725 00:F715: 91        .byte $91   ; 
- D 3 - I - 0x003726 00:F716: 00        .byte $00   ; 
- D 3 - I - 0x003727 00:F717: EA        .byte $EA   ; 
- D 3 - I - 0x003728 00:F718: F0        .byte $F0   ; 
- D 3 - I - 0x003729 00:F719: 86        .byte $86   ; 
- D 3 - I - 0x00372A 00:F71A: 00        .byte $00   ; 
- D 3 - I - 0x00372B 00:F71B: 05        .byte $05   ; 
- D 3 - I - 0x00372C 00:F71C: FE        .byte $FE   ; 
- D 3 - I - 0x00372D 00:F71D: E5        .byte $E5   ; 
- D 3 - I - 0x00372E 00:F71E: 00        .byte $00   ; 
- D 3 - I - 0x00372F 00:F71F: 06        .byte $06   ; 



_off002_F720_2B:
- D 3 - I - 0x003730 00:F720: 0A        .byte $0A   ; 
- D 3 - I - 0x003731 00:F721: E8        .byte $E8   ; 
- D 3 - I - 0x003732 00:F722: E5        .byte $E5   ; 
- D 3 - I - 0x003733 00:F723: 80        .byte $80   ; 
- D 3 - I - 0x003734 00:F724: F4        .byte $F4   ; 
- D 3 - I - 0x003735 00:F725: E8        .byte $E8   ; 
- D 3 - I - 0x003736 00:F726: E5        .byte $E5   ; 
- D 3 - I - 0x003737 00:F727: C0        .byte $C0   ; 
- D 3 - I - 0x003738 00:F728: 06        .byte $06   ; 
- D 3 - I - 0x003739 00:F729: F0        .byte $F0   ; 
- D 3 - I - 0x00373A 00:F72A: EB        .byte $EB   ; 
- D 3 - I - 0x00373B 00:F72B: 00        .byte $00   ; 
- D 3 - I - 0x00373C 00:F72C: F5        .byte $F5   ; 
- D 3 - I - 0x00373D 00:F72D: F0        .byte $F0   ; 
- D 3 - I - 0x00373E 00:F72E: E7        .byte $E7   ; 
- D 3 - I - 0x00373F 00:F72F: 00        .byte $00   ; 
- D 3 - I - 0x003740 00:F730: FD        .byte $FD   ; 
- D 3 - I - 0x003741 00:F731: F0        .byte $F0   ; 
- D 3 - I - 0x003742 00:F732: EB        .byte $EB   ; 
- D 3 - I - 0x003743 00:F733: 40        .byte $40   ; 
- D 3 - I - 0x003744 00:F734: 05        .byte $05   ; 
- D 3 - I - 0x003745 00:F735: F8        .byte $F8   ; 
- D 3 - I - 0x003746 00:F736: F5        .byte $F5   ; 
- D 3 - I - 0x003747 00:F737: 00        .byte $00   ; 
- D 3 - I - 0x003748 00:F738: F5        .byte $F5   ; 
- D 3 - I - 0x003749 00:F739: F8        .byte $F8   ; 
- D 3 - I - 0x00374A 00:F73A: EC        .byte $EC   ; 
- D 3 - I - 0x00374B 00:F73B: 00        .byte $00   ; 
- D 3 - I - 0x00374C 00:F73C: FD        .byte $FD   ; 
- D 3 - I - 0x00374D 00:F73D: F8        .byte $F8   ; 
- D 3 - I - 0x00374E 00:F73E: F5        .byte $F5   ; 
- D 3 - I - 0x00374F 00:F73F: 40        .byte $40   ; 
- D 3 - I - 0x003750 00:F740: 05        .byte $05   ; 
- D 3 - I - 0x003751 00:F741: FD        .byte $FD   ; 
- D 3 - I - 0x003752 00:F742: E4        .byte $E4   ; 
- D 3 - I - 0x003753 00:F743: 00        .byte $00   ; 
- D 3 - I - 0x003754 00:F744: ED        .byte $ED   ; 
- D 3 - I - 0x003755 00:F745: FD        .byte $FD   ; 
- D 3 - I - 0x003756 00:F746: E4        .byte $E4   ; 
- D 3 - I - 0x003757 00:F747: 40        .byte $40   ; 
- D 3 - I - 0x003758 00:F748: 0D        .byte $0D   ; 



_off001_F749_07:
_off001_F749_08:
_off001_F749_10:
_off001_F749_19:
_off001_F749_1A:
_off001_F749_2B:
- D 3 - I - 0x003759 00:F749: 01        .byte $01   ; 
- D 3 - I - 0x00375A 00:F74A: 01        .byte $01   ; 
- D 3 - I - 0x00375B 00:F74B: 01        .byte $01   ; 
- D 3 - I - 0x00375C 00:F74C: 01        .byte $01   ; 



_off002_F74D_08:
_off002_F74D_1A:
- - - - - - 0x00375D 00:F74D: 01        .byte $01   ; 
- - - - - - 0x00375E 00:F74E: F0        .byte $F0   ; 
- - - - - - 0x00375F 00:F74F: F0        .byte $F0   ; 
- - - - - - 0x003760 00:F750: F0        .byte $F0   ; 
- - - - - - 0x003761 00:F751: F0        .byte $F0   ; 



_off002_F752_07:
_off002_F752_10:
_off002_F752_19:
- D 3 - I - 0x003762 00:F752: 0A        .byte $0A   ; 
- D 3 - I - 0x003763 00:F753: E8        .byte $E8   ; 
- D 3 - I - 0x003764 00:F754: E6        .byte $E6   ; 
- D 3 - I - 0x003765 00:F755: 00        .byte $00   ; 
- D 3 - I - 0x003766 00:F756: F4        .byte $F4   ; 
- D 3 - I - 0x003767 00:F757: E8        .byte $E8   ; 
- D 3 - I - 0x003768 00:F758: E6        .byte $E6   ; 
- D 3 - I - 0x003769 00:F759: 40        .byte $40   ; 
- D 3 - I - 0x00376A 00:F75A: 06        .byte $06   ; 
- D 3 - I - 0x00376B 00:F75B: F0        .byte $F0   ; 
- D 3 - I - 0x00376C 00:F75C: EB        .byte $EB   ; 
- D 3 - I - 0x00376D 00:F75D: 00        .byte $00   ; 
- D 3 - I - 0x00376E 00:F75E: F5        .byte $F5   ; 
- D 3 - I - 0x00376F 00:F75F: F0        .byte $F0   ; 
- D 3 - I - 0x003770 00:F760: E7        .byte $E7   ; 
- D 3 - I - 0x003771 00:F761: 00        .byte $00   ; 
- D 3 - I - 0x003772 00:F762: FD        .byte $FD   ; 
- D 3 - I - 0x003773 00:F763: F0        .byte $F0   ; 
- D 3 - I - 0x003774 00:F764: EB        .byte $EB   ; 
- D 3 - I - 0x003775 00:F765: 40        .byte $40   ; 
- D 3 - I - 0x003776 00:F766: 05        .byte $05   ; 
- D 3 - I - 0x003777 00:F767: F8        .byte $F8   ; 
- D 3 - I - 0x003778 00:F768: F5        .byte $F5   ; 
- D 3 - I - 0x003779 00:F769: 00        .byte $00   ; 
- D 3 - I - 0x00377A 00:F76A: F5        .byte $F5   ; 
- D 3 - I - 0x00377B 00:F76B: F8        .byte $F8   ; 
- D 3 - I - 0x00377C 00:F76C: EC        .byte $EC   ; 
- D 3 - I - 0x00377D 00:F76D: 00        .byte $00   ; 
- D 3 - I - 0x00377E 00:F76E: FD        .byte $FD   ; 
- D 3 - I - 0x00377F 00:F76F: F8        .byte $F8   ; 
- D 3 - I - 0x003780 00:F770: F5        .byte $F5   ; 
- D 3 - I - 0x003781 00:F771: 40        .byte $40   ; 
- D 3 - I - 0x003782 00:F772: 05        .byte $05   ; 
- D 3 - I - 0x003783 00:F773: FD        .byte $FD   ; 
- D 3 - I - 0x003784 00:F774: E4        .byte $E4   ; 
- D 3 - I - 0x003785 00:F775: 00        .byte $00   ; 
- D 3 - I - 0x003786 00:F776: ED        .byte $ED   ; 
- D 3 - I - 0x003787 00:F777: FD        .byte $FD   ; 
- D 3 - I - 0x003788 00:F778: E4        .byte $E4   ; 
- D 3 - I - 0x003789 00:F779: 40        .byte $40   ; 
- D 3 - I - 0x00378A 00:F77A: 0D        .byte $0D   ; 



tbl_F77B:
; 00
- D 3 - - - 0x00378B 00:F77B: 69 F1     .word _off001_F169_00
- D 3 - - - 0x00378D 00:F77D: 7B F1     .word _off001_F17B_01
- D 3 - - - 0x00378F 00:F77F: 8B F1     .word _off001_F18B_02
- D 3 - - - 0x003791 00:F781: 9C F1     .word _off001_F19C_03
- D 3 - - - 0x003793 00:F783: AD F1     .word _off001_F1AD_04
- D 3 - - - 0x003795 00:F785: BE F1     .word _off001_F1BE_05
- D 3 - - - 0x003797 00:F787: C8 F1     .word _off001_F1C8_06
- D 3 - - - 0x003799 00:F789: 49 F7     .word _off001_F749_07
- - - - - - 0x00379B 00:F78B: 49 F7     .word _off001_F749_08
; 01
- D 3 - - - 0x00379D 00:F78D: EE F2     .word _off001_F2EE_09
- D 3 - - - 0x00379F 00:F78F: FB F2     .word _off001_F2FB_0A
- D 3 - - - 0x0037A1 00:F791: AD F2     .word _off001_F2AD_0B
- D 3 - - - 0x0037A3 00:F793: B9 F2     .word _off001_F2B9_0C
- D 3 - - - 0x0037A5 00:F795: C5 F2     .word _off001_F2C5_0D
- D 3 - - - 0x0037A7 00:F797: CC F2     .word _off001_F2CC_0E
- D 3 - - - 0x0037A9 00:F799: D2 F2     .word _off001_F2D2_0F
- D 3 - - - 0x0037AB 00:F79B: 49 F7     .word _off001_F749_10
- D 3 - - - 0x0037AD 00:F79D: E0 F2     .word _off001_F2E0_11
; 02
- D 3 - - - 0x0037AF 00:F79F: C4 F3     .word _off001_F3C4_12
- D 3 - - - 0x0037B1 00:F7A1: D6 F3     .word _off001_F3D6_13
- D 3 - - - 0x0037B3 00:F7A3: E7 F3     .word _off001_F3E7_14
- D 3 - - - 0x0037B5 00:F7A5: F9 F3     .word _off001_F3F9_15
- D 3 - - - 0x0037B7 00:F7A7: 09 F4     .word _off001_F409_16
- D 3 - - - 0x0037B9 00:F7A9: 1A F4     .word _off001_F41A_17
- D 3 - - - 0x0037BB 00:F7AB: 26 F4     .word _off001_F426_18
- D 3 - - - 0x0037BD 00:F7AD: 49 F7     .word _off001_F749_19
- - - - - - 0x0037BF 00:F7AF: 49 F7     .word _off001_F749_1A
; 03
- D 3 - - - 0x0037C1 00:F7B1: DA F4     .word _off001_F4DA_1B
- D 3 - - - 0x0037C3 00:F7B3: E6 F4     .word _off001_F4E6_1C
- D 3 - - - 0x0037C5 00:F7B5: D2 F4     .word _off001_F4D2_1D
- D 3 - - - 0x0037C7 00:F7B7: 00 F5     .word _off001_F500_1E
- D 3 - - - 0x0037C9 00:F7B9: F9 F4     .word _off001_F4F9_1F
- D 3 - - - 0x0037CB 00:F7BB: F2 F4     .word _off001_F4F2_20
- D 3 - - - 0x0037CD 00:F7BD: 0B F5     .word _off001_F50B_21
- D 3 - - - 0x0037CF 00:F7BF: 12 F5     .word _off001_F512_22
- D 3 - - - 0x0037D1 00:F7C1: 1B F5     .word _off001_F51B_23
; 04
- D 3 - - - 0x0037D3 00:F7C3: E0 F5     .word _off001_F5E0_24
- D 3 - - - 0x0037D5 00:F7C5: F2 F5     .word _off001_F5F2_25
- D 3 - - - 0x0037D7 00:F7C7: 04 F6     .word _off001_F604_26
- D 3 - - - 0x0037D9 00:F7C9: 12 F6     .word _off001_F612_27
- D 3 - - - 0x0037DB 00:F7CB: 1F F6     .word _off001_F61F_28
- D 3 - - - 0x0037DD 00:F7CD: 2E F6     .word _off001_F62E_29
- D 3 - - - 0x0037DF 00:F7CF: 44 F6     .word _off001_F644_2A
- D 3 - - - 0x0037E1 00:F7D1: 49 F7     .word _off001_F749_2B
- D 3 - - - 0x0037E3 00:F7D3: 3A F6     .word _off001_F63A_2C



tbl_F7D5:
; 00
- D 3 - - - 0x0037E5 00:F7D5: D6 F1     .word _off002_F1D6_00
- D 3 - - - 0x0037E7 00:F7D7: EF F1     .word _off002_F1EF_01
- D 3 - - - 0x0037E9 00:F7D9: 08 F2     .word _off002_F208_02
- D 3 - - - 0x0037EB 00:F7DB: 29 F2     .word _off002_F229_03
- D 3 - - - 0x0037ED 00:F7DD: 46 F2     .word _off002_F246_04
- D 3 - - - 0x0037EF 00:F7DF: 67 F2     .word _off002_F267_05
- D 3 - - - 0x0037F1 00:F7E1: 8C F2     .word _off002_F28C_06
- D 3 - - - 0x0037F3 00:F7E3: 52 F7     .word _off002_F752_07
- - - - - - 0x0037F5 00:F7E5: 4D F7     .word _off002_F74D_08
; 01
- D 3 - - - 0x0037F7 00:F7E7: 9A F3     .word _off002_F39A_09
- D 3 - - - 0x0037F9 00:F7E9: AF F3     .word _off002_F3AF_0A
- D 3 - - - 0x0037FB 00:F7EB: 08 F3     .word _off002_F308_0B
- D 3 - - - 0x0037FD 00:F7ED: 1D F3     .word _off002_F31D_0C
- D 3 - - - 0x0037FF 00:F7EF: 36 F3     .word _off002_F336_0D
- D 3 - - - 0x003801 00:F7F1: 53 F3     .word _off002_F353_0E
- D 3 - - - 0x003803 00:F7F3: 68 F3     .word _off002_F368_0F
- D 3 - - - 0x003805 00:F7F5: 52 F7     .word _off002_F752_10
- D 3 - - - 0x003807 00:F7F7: 85 F3     .word _off002_F385_11
; 02
- D 3 - - - 0x003809 00:F7F9: 33 F4     .word _off002_F433_12
- D 3 - - - 0x00380B 00:F7FB: 4C F4     .word _off002_F44C_13
- D 3 - - - 0x00380D 00:F7FD: 61 F4     .word _off002_F461_14
- D 3 - - - 0x00380F 00:F7FF: 7A F4     .word _off002_F47A_15
- D 3 - - - 0x003811 00:F801: 8F F4     .word _off002_F48F_16
- D 3 - - - 0x003813 00:F803: A0 F4     .word _off002_F4A0_17
- D 3 - - - 0x003815 00:F805: B5 F4     .word _off002_F4B5_18
- D 3 - - - 0x003817 00:F807: 52 F7     .word _off002_F752_19
- - - - - - 0x003819 00:F809: 4D F7     .word _off002_F74D_1A
; 03
- D 3 - - - 0x00381B 00:F80B: 3C F5     .word _off002_F53C_1B
- D 3 - - - 0x00381D 00:F80D: 51 F5     .word _off002_F551_1C
- D 3 - - - 0x00381F 00:F80F: 27 F5     .word _off002_F527_1D
- D 3 - - - 0x003821 00:F811: 94 F5     .word _off002_F594_1E
- D 3 - - - 0x003823 00:F813: 7B F5     .word _off002_F57B_1F
- D 3 - - - 0x003825 00:F815: 66 F5     .word _off002_F566_20
- D 3 - - - 0x003827 00:F817: A5 F5     .word _off002_F5A5_21
- D 3 - - - 0x003829 00:F819: BA F5     .word _off002_F5BA_22
- D 3 - - - 0x00382B 00:F81B: CB F5     .word _off002_F5CB_23
; 04
- D 3 - - - 0x00382D 00:F81D: 54 F6     .word _off002_F654_24
- D 3 - - - 0x00382F 00:F81F: 69 F6     .word _off002_F669_25
- D 3 - - - 0x003831 00:F821: 7E F6     .word _off002_F67E_26
- D 3 - - - 0x003833 00:F823: 93 F6     .word _off002_F693_27
- D 3 - - - 0x003835 00:F825: AC F6     .word _off002_F6AC_28
- D 3 - - - 0x003837 00:F827: C9 F6     .word _off002_F6C9_29
- D 3 - - - 0x003839 00:F829: 07 F7     .word _off002_F707_2A
- D 3 - - - 0x00383B 00:F82B: 20 F7     .word _off002_F720_2B
- D 3 - - - 0x00383D 00:F82D: E6 F6     .word _off002_F6E6_2C


; bzk garbage
- - - - - - 0x00383F 00:F82F: A9 00     LDA #$00
- - - - - - 0x003841 00:F831: 8D 01 20  STA $2001
- - - - - - 0x003844 00:F834: 8D 00 20  STA $2000
- - - - - - 0x003847 00:F837: 60        RTS



sub_F838:
C - - - - - 0x003848 00:F838: A5 53     LDA ram_for_2000
C - - - - - 0x00384A 00:F83A: 8D 00 20  STA $2000
C - - - - - 0x00384D 00:F83D: 60        RTS



sub_F83E:
C - - - - - 0x00384E 00:F83E: AD 02 20  LDA $2002
C - - - - - 0x003851 00:F841: A9 00     LDA #$00
C - - - - - 0x003853 00:F843: 8D 05 20  STA $2005
C - - - - - 0x003856 00:F846: 8D 05 20  STA $2005
C - - - - - 0x003859 00:F849: A9 1E     LDA #$1E
C - - - - - 0x00385B 00:F84B: 85 54     STA ram_for_2001
C - - - - - 0x00385D 00:F84D: A9 88     LDA #$88
C - - - - - 0x00385F 00:F84F: 85 53     STA ram_for_2000
C - - - - - 0x003861 00:F851: 8D 00 20  STA $2000
C - - - - - 0x003864 00:F854: 60        RTS



sub_F855:
C - - - - - 0x003865 00:F855: A0 00     LDY #$00
C - - - - - 0x003867 00:F857: A5 63     LDA ram_0063
C - - - - - 0x003869 00:F859: F0 0A     BEQ bra_F865
bra_F85B_loop:
C - - - - - 0x00386B 00:F85B: C9 05     CMP #$05
C - - - - - 0x00386D 00:F85D: 90 06     BCC bra_F865
C - - - - - 0x00386F 00:F85F: 38        SEC
C - - - - - 0x003870 00:F860: E9 05     SBC #$05
C - - - - - 0x003872 00:F862: C8        INY
C - - - - - 0x003873 00:F863: D0 F6     BNE bra_F85B_loop
bra_F865:
C - - - - - 0x003875 00:F865: 0A        ASL
C - - - - - 0x003876 00:F866: AA        TAX
C - - - - - 0x003877 00:F867: BD 01 FB  LDA tbl_FB01,X
C - - - - - 0x00387A 00:F86A: 85 90     STA ram_0090
C - - - - - 0x00387C 00:F86C: BD 02 FB  LDA tbl_FB01 + 1,X
C - - - - - 0x00387F 00:F86F: 85 91     STA ram_0091
C - - - - - 0x003881 00:F871: 98        TYA
C - - - - - 0x003882 00:F872: 29 03     AND #$03
C - - - - - 0x003884 00:F874: 0A        ASL
C - - - - - 0x003885 00:F875: AA        TAX
C - - - - - 0x003886 00:F876: BD 0B FB  LDA tbl_FB0B,X
C - - - - - 0x003889 00:F879: 85 92     STA ram_0092
C - - - - - 0x00388B 00:F87B: BD 0C FB  LDA tbl_FB0B + 1,X
C - - - - - 0x00388E 00:F87E: 85 93     STA ram_0093
C - - - - - 0x003890 00:F880: A9 00     LDA #< $3F00
C - - - - - 0x003892 00:F882: A2 3F     LDX #> $3F00
C - - - - - 0x003894 00:F884: A8        TAY ; Y = 00
C - - - - - 0x003895 00:F885: 20 83 F0  JSR sub_F083_set_2006
bra_F888:
C - - - - - 0x003898 00:F888: B1 90     LDA (ram_0090),Y
C - - - - - 0x00389A 00:F88A: 8D 07 20  STA $2007
C - - - - - 0x00389D 00:F88D: C8        INY
C - - - - - 0x00389E 00:F88E: C0 0C     CPY #$0C
C - - - - - 0x0038A0 00:F890: D0 F6     BNE bra_F888
C - - - - - 0x0038A2 00:F892: A0 00     LDY #$00
bra_F894_loop:
C - - - - - 0x0038A4 00:F894: B1 92     LDA (ram_0092),Y
C - - - - - 0x0038A6 00:F896: 8D 07 20  STA $2007
C - - - - - 0x0038A9 00:F899: C8        INY
C - - - - - 0x0038AA 00:F89A: C0 04     CPY #$04
C - - - - - 0x0038AC 00:F89C: D0 F6     BNE bra_F894_loop
C - - - - - 0x0038AE 00:F89E: A5 64     LDA ram_0064
C - - - - - 0x0038B0 00:F8A0: F0 0A     BEQ bra_F8AC
C - - - - - 0x0038B2 00:F8A2: AD 73 FB  LDA tbl_FB73
C - - - - - 0x0038B5 00:F8A5: 85 90     STA ram_0090
C - - - - - 0x0038B7 00:F8A7: AD 74 FB  LDA tbl_FB73 + 1
C - - - - - 0x0038BA 00:F8AA: 85 91     STA ram_0091
bra_F8AC:
C - - - - - 0x0038BC 00:F8AC: A0 0C     LDY #$0C
bra_F8AE_loop:
C - - - - - 0x0038BE 00:F8AE: B1 90     LDA (ram_0090),Y
C - - - - - 0x0038C0 00:F8B0: 8D 07 20  STA $2007
C - - - - - 0x0038C3 00:F8B3: C8        INY
C - - - - - 0x0038C4 00:F8B4: C0 10     CPY #$10
C - - - - - 0x0038C6 00:F8B6: D0 F6     BNE bra_F8AE_loop
C - - - - - 0x0038C8 00:F8B8: A2 00     LDX #$00
bra_F8BA_loop:
C - - - - - 0x0038CA 00:F8BA: BD 13 FB  LDA tbl_FB13,X
C - - - - - 0x0038CD 00:F8BD: 8D 07 20  STA $2007
C - - - - - 0x0038D0 00:F8C0: E8        INX
C - - - - - 0x0038D1 00:F8C1: E0 0C     CPX #$0C
C - - - - - 0x0038D3 00:F8C3: D0 F5     BNE bra_F8BA_loop
C - - - - - 0x0038D5 00:F8C5: A2 3F     LDX #> $3F00
C - - - - - 0x0038D7 00:F8C7: A9 00     LDA #< $3F00
C - - - - - 0x0038D9 00:F8C9: 20 83 F0  JSR sub_F083_set_2006
C - - - - - 0x0038DC 00:F8CC: AA        TAX
C - - - - - 0x0038DD 00:F8CD: 20 83 F0  JSR sub_F083_set_2006
C - - - - - 0x0038E0 00:F8D0: A2 20     LDX #> $2000
C - - - - - 0x0038E2 00:F8D2: A9 00     LDA #< $2000
C - - - - - 0x0038E4 00:F8D4: 85 92     STA ram_0092    ; A = 00
C - - - - - 0x0038E6 00:F8D6: 20 83 F0  JSR sub_F083_set_2006
bra_F8D9:
C - - - - - 0x0038E9 00:F8D9: A0 00     LDY #$00
C - - - - - 0x0038EB 00:F8DB: A6 92     LDX ram_0092
C - - - - - 0x0038ED 00:F8DD: BD 56 F9  LDA tbl_F956,X
C - - - - - 0x0038F0 00:F8E0: 85 90     STA ram_0090
C - - - - - 0x0038F2 00:F8E2: E8        INX
C - - - - - 0x0038F3 00:F8E3: BD 56 F9  LDA tbl_F956,X
C - - - - - 0x0038F6 00:F8E6: 85 91     STA ram_0091
C - - - - - 0x0038F8 00:F8E8: E8        INX
C - - - - - 0x0038F9 00:F8E9: 86 92     STX ram_0092
C - - - - - 0x0038FB 00:F8EB: E0 09     CPX #$09
C - - - - - 0x0038FD 00:F8ED: B0 1F     BCS bra_F90E
bra_F8EF_loop:
C - - - - - 0x0038FF 00:F8EF: B1 90     LDA (ram_0090),Y
C - - - - - 0x003901 00:F8F1: C9 39     CMP #$39
C - - - - - 0x003903 00:F8F3: F0 E4     BEQ bra_F8D9
C - - - - - 0x003905 00:F8F5: C9 34     CMP #$34
C - - - - - 0x003907 00:F8F7: D0 0F     BNE bra_F908
C - - - - - 0x003909 00:F8F9: C8        INY
C - - - - - 0x00390A 00:F8FA: B1 90     LDA (ram_0090),Y
C - - - - - 0x00390C 00:F8FC: AA        TAX
C - - - - - 0x00390D 00:F8FD: C8        INY
C - - - - - 0x00390E 00:F8FE: B1 90     LDA (ram_0090),Y
bra_F900_loop:
C - - - - - 0x003910 00:F900: 8D 07 20  STA $2007
C - - - - - 0x003913 00:F903: CA        DEX
C - - - - - 0x003914 00:F904: D0 FA     BNE bra_F900_loop
C - - - - - 0x003916 00:F906: F0 03     BEQ bra_F90B
bra_F908:
C - - - - - 0x003918 00:F908: 8D 07 20  STA $2007
bra_F90B:
C - - - - - 0x00391B 00:F90B: C8        INY
C - - - - - 0x00391C 00:F90C: D0 E1     BNE bra_F8EF_loop
bra_F90E:
sub_F90E:
C - - - - - 0x00391E 00:F90E: A2 47     LDX #$47
bra_F910:
C - - - - - 0x003920 00:F910: BD 85 FB  LDA tbl_FB85,X
C - - - - - 0x003923 00:F913: 9D B0 02  STA ram_spr_Y + $B0,X
C - - - - - 0x003926 00:F916: CA        DEX
C - - - - - 0x003927 00:F917: 10 F7     BPL bra_F910
C - - - - - 0x003929 00:F919: A5 66     LDA ram_0066
C - - - - - 0x00392B 00:F91B: F0 05     BEQ bra_F922_RTS
C - - - - - 0x00392D 00:F91D: A9 2C     LDA #$2C
C - - - - - 0x00392F 00:F91F: 20 57 C4  JSR sub_C457
bra_F922_RTS:
C - - - - - 0x003932 00:F922: 60        RTS



sub_F923:
C - - - - - 0x003933 00:F923: A9 03     LDA #$03
C - - - - - 0x003935 00:F925: 20 AB C3  JSR sub_C3AB
C - - - - - 0x003938 00:F928: A9 16     LDA #$16
C - - - - - 0x00393A 00:F92A: 20 57 C4  JSR sub_C457
C - - - - - 0x00393D 00:F92D: A9 15     LDA #$15
C - - - - - 0x00393F 00:F92F: 20 57 C4  JSR sub_C457
C - - - - - 0x003942 00:F932: A9 18     LDA #$18
C - - - - - 0x003944 00:F934: 20 57 C4  JSR sub_C457
C - - - - - 0x003947 00:F937: A9 19     LDA #$19
C - - - - - 0x003949 00:F939: 20 57 C4  JSR sub_C457
C - - - - - 0x00394C 00:F93C: A2 66     LDX #$66
C - - - - - 0x00394E 00:F93E: 20 66 C2  JSR sub_C266
C - - - - - 0x003951 00:F941: 20 77 C2  JSR sub_C277
C - - - - - 0x003954 00:F944: A2 23     LDX #> $23D0
C - - - - - 0x003956 00:F946: A9 D0     LDA #< $23D0
C - - - - - 0x003958 00:F948: A0 07     LDY #$07
C - - - - - 0x00395A 00:F94A: 20 83 F0  JSR sub_F083_set_2006
C - - - - - 0x00395D 00:F94D: A9 55     LDA #$55
bra_F94F_loop:
C - - - - - 0x00395F 00:F94F: 8D 07 20  STA $2007
C - - - - - 0x003962 00:F952: 88        DEY
C - - - - - 0x003963 00:F953: 10 FA     BPL bra_F94F_loop
C - - - - - 0x003965 00:F955: 60        RTS



tbl_F956:
- D 3 - - - 0x003966 00:F956: 5E F9     .word off_F95E_00
- D 3 - - - 0x003968 00:F958: A4 F9     .word off_F9A4_01
- D 3 - - - 0x00396A 00:F95A: 64 FA     .word off_FA64_02
- D 3 - - - 0x00396C 00:F95C: B5 FA     .word off_FAB5_03



off_F95E_00:
- D 3 - I - 0x00396E 00:F95E: 34        .byte $34   ; 
- D 3 - I - 0x00396F 00:F95F: 20        .byte $20   ; 
- D 3 - I - 0x003970 00:F960: FE        .byte $FE   ; 
- D 3 - I - 0x003971 00:F961: 34        .byte $34   ; 
- D 3 - I - 0x003972 00:F962: 20        .byte $20   ; 
- D 3 - I - 0x003973 00:F963: 71        .byte $71   ; 
- D 3 - I - 0x003974 00:F964: 34        .byte $34   ; 
- D 3 - I - 0x003975 00:F965: 20        .byte $20   ; 
- D 3 - I - 0x003976 00:F966: FE        .byte $FE   ; 
- D 3 - I - 0x003977 00:F967: 34        .byte $34   ; 
- D 3 - I - 0x003978 00:F968: 09        .byte $09   ; 
- D 3 - I - 0x003979 00:F969: 71        .byte $71   ; 
- D 3 - I - 0x00397A 00:F96A: 00        .byte $00   ; 
- D 3 - I - 0x00397B 00:F96B: 5F        .byte $5F   ; 
- D 3 - I - 0x00397C 00:F96C: 66        .byte $66   ; 
- D 3 - I - 0x00397D 00:F96D: 6E        .byte $6E   ; 
- D 3 - I - 0x00397E 00:F96E: 6D        .byte $6D   ; 
- D 3 - I - 0x00397F 00:F96F: 6A        .byte $6A   ; 
- D 3 - I - 0x003980 00:F970: 00        .byte $00   ; 
- D 3 - I - 0x003981 00:F971: 2E        .byte $2E   ; 
- D 3 - I - 0x003982 00:F972: 3C        .byte $3C   ; 
- D 3 - I - 0x003983 00:F973: AE        .byte $AE   ; 
- D 3 - I - 0x003984 00:F974: E0        .byte $E0   ; 
- D 3 - I - 0x003985 00:F975: BC        .byte $BC   ; 
- D 3 - I - 0x003986 00:F976: F7        .byte $F7   ; 
- D 3 - I - 0x003987 00:F977: 00        .byte $00   ; 
- D 3 - I - 0x003988 00:F978: 34        .byte $34   ; 
- D 3 - I - 0x003989 00:F979: 09        .byte $09   ; 
- D 3 - I - 0x00398A 00:F97A: 71        .byte $71   ; 
- D 3 - I - 0x00398B 00:F97B: 34        .byte $34   ; 
- D 3 - I - 0x00398C 00:F97C: 20        .byte $20   ; 
- D 3 - I - 0x00398D 00:F97D: FE        .byte $FE   ; 
- D 3 - I - 0x00398E 00:F97E: 71        .byte $71   ; 
- D 3 - I - 0x00398F 00:F97F: 71        .byte $71   ; 
- D 3 - I - 0x003990 00:F980: FF        .byte $FF   ; 
- D 3 - I - 0x003991 00:F981: F0        .byte $F0   ; 
- D 3 - I - 0x003992 00:F982: FF        .byte $FF   ; 
- D 3 - I - 0x003993 00:F983: FF        .byte $FF   ; 
- D 3 - I - 0x003994 00:F984: 63        .byte $63   ; 
- D 3 - I - 0x003995 00:F985: E3        .byte $E3   ; 
- D 3 - I - 0x003996 00:F986: 34        .byte $34   ; 
- D 3 - I - 0x003997 00:F987: 04        .byte $04   ; 
- D 3 - I - 0x003998 00:F988: FF        .byte $FF   ; 
- D 3 - I - 0x003999 00:F989: 00        .byte $00   ; 
- D 3 - I - 0x00399A 00:F98A: F7        .byte $F7   ; 
- D 3 - I - 0x00399B 00:F98B: 34        .byte $34   ; 
- D 3 - I - 0x00399C 00:F98C: 07        .byte $07   ; 
- D 3 - I - 0x00399D 00:F98D: FF        .byte $FF   ; 
- D 3 - I - 0x00399E 00:F98E: F0        .byte $F0   ; 
- D 3 - I - 0x00399F 00:F98F: FF        .byte $FF   ; 
- D 3 - I - 0x0039A0 00:F990: FF        .byte $FF   ; 
- D 3 - I - 0x0039A1 00:F991: FF        .byte $FF   ; 
- D 3 - I - 0x0039A2 00:F992: E3        .byte $E3   ; 
- D 3 - I - 0x0039A3 00:F993: 6F        .byte $6F   ; 
- D 3 - I - 0x0039A4 00:F994: FF        .byte $FF   ; 
- D 3 - I - 0x0039A5 00:F995: FF        .byte $FF   ; 
- D 3 - I - 0x0039A6 00:F996: FF        .byte $FF   ; 
- D 3 - I - 0x0039A7 00:F997: 71        .byte $71   ; 
- D 3 - I - 0x0039A8 00:F998: 71        .byte $71   ; 
- D 3 - I - 0x0039A9 00:F999: FE        .byte $FE   ; 
- D 3 - I - 0x0039AA 00:F99A: FE        .byte $FE   ; 
- D 3 - I - 0x0039AB 00:F99B: 34        .byte $34   ; 
- D 3 - I - 0x0039AC 00:F99C: 1C        .byte $1C   ; 
- D 3 - I - 0x0039AD 00:F99D: FF        .byte $FF   ; 
- D 3 - I - 0x0039AE 00:F99E: FE        .byte $FE   ; 
- D 3 - I - 0x0039AF 00:F99F: FE        .byte $FE   ; 
- D 3 - I - 0x0039B0 00:F9A0: 34        .byte $34   ; 
- D 3 - I - 0x0039B1 00:F9A1: 20        .byte $20   ; 
- D 3 - I - 0x0039B2 00:F9A2: 71        .byte $71   ; 
- D 3 - I - 0x0039B3 00:F9A3: 39        .byte $39   ; 



off_F9A4_01:
- D 3 - I - 0x0039B4 00:F9A4: 72        .byte $72   ; 
- D 3 - I - 0x0039B5 00:F9A5: 73        .byte $73   ; 
- D 3 - I - 0x0039B6 00:F9A6: 74        .byte $74   ; 
- D 3 - I - 0x0039B7 00:F9A7: 72        .byte $72   ; 
- D 3 - I - 0x0039B8 00:F9A8: 72        .byte $72   ; 
- D 3 - I - 0x0039B9 00:F9A9: 73        .byte $73   ; 
- D 3 - I - 0x0039BA 00:F9AA: 74        .byte $74   ; 
- D 3 - I - 0x0039BB 00:F9AB: 72        .byte $72   ; 
- D 3 - I - 0x0039BC 00:F9AC: 72        .byte $72   ; 
- D 3 - I - 0x0039BD 00:F9AD: 73        .byte $73   ; 
- D 3 - I - 0x0039BE 00:F9AE: 74        .byte $74   ; 
- D 3 - I - 0x0039BF 00:F9AF: 72        .byte $72   ; 
- D 3 - I - 0x0039C0 00:F9B0: 72        .byte $72   ; 
- D 3 - I - 0x0039C1 00:F9B1: 73        .byte $73   ; 
- D 3 - I - 0x0039C2 00:F9B2: 74        .byte $74   ; 
- D 3 - I - 0x0039C3 00:F9B3: 72        .byte $72   ; 
- D 3 - I - 0x0039C4 00:F9B4: 72        .byte $72   ; 
- D 3 - I - 0x0039C5 00:F9B5: 73        .byte $73   ; 
- D 3 - I - 0x0039C6 00:F9B6: 74        .byte $74   ; 
- D 3 - I - 0x0039C7 00:F9B7: 72        .byte $72   ; 
- D 3 - I - 0x0039C8 00:F9B8: 72        .byte $72   ; 
- D 3 - I - 0x0039C9 00:F9B9: 73        .byte $73   ; 
- D 3 - I - 0x0039CA 00:F9BA: 74        .byte $74   ; 
- D 3 - I - 0x0039CB 00:F9BB: 72        .byte $72   ; 
- D 3 - I - 0x0039CC 00:F9BC: 72        .byte $72   ; 
- D 3 - I - 0x0039CD 00:F9BD: 73        .byte $73   ; 
- D 3 - I - 0x0039CE 00:F9BE: 74        .byte $74   ; 
- D 3 - I - 0x0039CF 00:F9BF: 72        .byte $72   ; 
- D 3 - I - 0x0039D0 00:F9C0: 72        .byte $72   ; 
- D 3 - I - 0x0039D1 00:F9C1: 73        .byte $73   ; 
- D 3 - I - 0x0039D2 00:F9C2: 74        .byte $74   ; 
- D 3 - I - 0x0039D3 00:F9C3: 72        .byte $72   ; 
- D 3 - I - 0x0039D4 00:F9C4: E5        .byte $E5   ; 
- D 3 - I - 0x0039D5 00:F9C5: FF        .byte $FF   ; 
- D 3 - I - 0x0039D6 00:F9C6: 00        .byte $00   ; 
- D 3 - I - 0x0039D7 00:F9C7: 75        .byte $75   ; 
- D 3 - I - 0x0039D8 00:F9C8: FF        .byte $FF   ; 
- D 3 - I - 0x0039D9 00:F9C9: FF        .byte $FF   ; 
- D 3 - I - 0x0039DA 00:F9CA: 00        .byte $00   ; 
- D 3 - I - 0x0039DB 00:F9CB: 75        .byte $75   ; 
- D 3 - I - 0x0039DC 00:F9CC: FF        .byte $FF   ; 
- D 3 - I - 0x0039DD 00:F9CD: FF        .byte $FF   ; 
- D 3 - I - 0x0039DE 00:F9CE: 34        .byte $34   ; 
- D 3 - I - 0x0039DF 00:F9CF: 0C        .byte $0C   ; 
- D 3 - I - 0x0039E0 00:F9D0: E5        .byte $E5   ; 
- D 3 - I - 0x0039E1 00:F9D1: FF        .byte $FF   ; 
- D 3 - I - 0x0039E2 00:F9D2: FF        .byte $FF   ; 
- D 3 - I - 0x0039E3 00:F9D3: 75        .byte $75   ; 
- D 3 - I - 0x0039E4 00:F9D4: 00        .byte $00   ; 
- D 3 - I - 0x0039E5 00:F9D5: FF        .byte $FF   ; 
- D 3 - I - 0x0039E6 00:F9D6: FF        .byte $FF   ; 
- D 3 - I - 0x0039E7 00:F9D7: 75        .byte $75   ; 
- D 3 - I - 0x0039E8 00:F9D8: 00        .byte $00   ; 
- D 3 - I - 0x0039E9 00:F9D9: FF        .byte $FF   ; 
- D 3 - I - 0x0039EA 00:F9DA: E5        .byte $E5   ; 
- D 3 - I - 0x0039EB 00:F9DB: E5        .byte $E5   ; 
- D 3 - I - 0x0039EC 00:F9DC: FF        .byte $FF   ; 
- D 3 - I - 0x0039ED 00:F9DD: 00        .byte $00   ; 
- D 3 - I - 0x0039EE 00:F9DE: 75        .byte $75   ; 
- D 3 - I - 0x0039EF 00:F9DF: FF        .byte $FF   ; 
- D 3 - I - 0x0039F0 00:F9E0: FF        .byte $FF   ; 
- D 3 - I - 0x0039F1 00:F9E1: 00        .byte $00   ; 
- D 3 - I - 0x0039F2 00:F9E2: 75        .byte $75   ; 
- D 3 - I - 0x0039F3 00:F9E3: FF        .byte $FF   ; 
- D 3 - I - 0x0039F4 00:F9E4: FF        .byte $FF   ; 
- D 3 - I - 0x0039F5 00:F9E5: E5        .byte $E5   ; 
- D 3 - I - 0x0039F6 00:F9E6: F5        .byte $F5   ; 
- D 3 - I - 0x0039F7 00:F9E7: F5        .byte $F5   ; 
- D 3 - I - 0x0039F8 00:F9E8: FB        .byte $FB   ; 
- D 3 - I - 0x0039F9 00:F9E9: FC        .byte $FC   ; 
- D 3 - I - 0x0039FA 00:F9EA: F5        .byte $F5   ; 
- D 3 - I - 0x0039FB 00:F9EB: F5        .byte $F5   ; 
- D 3 - I - 0x0039FC 00:F9EC: 7C        .byte $7C   ; 
- D 3 - I - 0x0039FD 00:F9ED: 7D        .byte $7D   ; 
- D 3 - I - 0x0039FE 00:F9EE: F5        .byte $F5   ; 
- D 3 - I - 0x0039FF 00:F9EF: F5        .byte $F5   ; 
- D 3 - I - 0x003A00 00:F9F0: E5        .byte $E5   ; 
- D 3 - I - 0x003A01 00:F9F1: FF        .byte $FF   ; 
- D 3 - I - 0x003A02 00:F9F2: FF        .byte $FF   ; 
- D 3 - I - 0x003A03 00:F9F3: 75        .byte $75   ; 
- D 3 - I - 0x003A04 00:F9F4: 00        .byte $00   ; 
- D 3 - I - 0x003A05 00:F9F5: FF        .byte $FF   ; 
- D 3 - I - 0x003A06 00:F9F6: FF        .byte $FF   ; 
- D 3 - I - 0x003A07 00:F9F7: 75        .byte $75   ; 
- D 3 - I - 0x003A08 00:F9F8: FF        .byte $FF   ; 
- D 3 - I - 0x003A09 00:F9F9: FF        .byte $FF   ; 
- D 3 - I - 0x003A0A 00:F9FA: E5        .byte $E5   ; 
- D 3 - I - 0x003A0B 00:F9FB: E5        .byte $E5   ; 
- D 3 - I - 0x003A0C 00:F9FC: FF        .byte $FF   ; 
- D 3 - I - 0x003A0D 00:F9FD: F3        .byte $F3   ; 
- D 3 - I - 0x003A0E 00:F9FE: 76        .byte $76   ; 
- D 3 - I - 0x003A0F 00:F9FF: F4        .byte $F4   ; 
- D 3 - I - 0x003A10 00:FA00: 00        .byte $00   ; 
- D 3 - I - 0x003A11 00:FA01: F3        .byte $F3   ; 
- D 3 - I - 0x003A12 00:FA02: 76        .byte $76   ; 
- D 3 - I - 0x003A13 00:FA03: F4        .byte $F4   ; 
- D 3 - I - 0x003A14 00:FA04: 00        .byte $00   ; 
- D 3 - I - 0x003A15 00:FA05: E5        .byte $E5   ; 
- D 3 - I - 0x003A16 00:FA06: F5        .byte $F5   ; 
- D 3 - I - 0x003A17 00:FA07: F5        .byte $F5   ; 
- D 3 - I - 0x003A18 00:FA08: FD        .byte $FD   ; 
- D 3 - I - 0x003A19 00:FA09: 7B        .byte $7B   ; 
- D 3 - I - 0x003A1A 00:FA0A: F5        .byte $F5   ; 
- D 3 - I - 0x003A1B 00:FA0B: F5        .byte $F5   ; 
- D 3 - I - 0x003A1C 00:FA0C: 7E        .byte $7E   ; 
- D 3 - I - 0x003A1D 00:FA0D: 7F        .byte $7F   ; 
- D 3 - I - 0x003A1E 00:FA0E: F5        .byte $F5   ; 
- D 3 - I - 0x003A1F 00:FA0F: F5        .byte $F5   ; 
- D 3 - I - 0x003A20 00:FA10: E5        .byte $E5   ; 
- D 3 - I - 0x003A21 00:FA11: FF        .byte $FF   ; 
- D 3 - I - 0x003A22 00:FA12: F3        .byte $F3   ; 
- D 3 - I - 0x003A23 00:FA13: 76        .byte $76   ; 
- D 3 - I - 0x003A24 00:FA14: F4        .byte $F4   ; 
- D 3 - I - 0x003A25 00:FA15: FF        .byte $FF   ; 
- D 3 - I - 0x003A26 00:FA16: F3        .byte $F3   ; 
- D 3 - I - 0x003A27 00:FA17: 76        .byte $76   ; 
- D 3 - I - 0x003A28 00:FA18: F4        .byte $F4   ; 
- D 3 - I - 0x003A29 00:FA19: FF        .byte $FF   ; 
- D 3 - I - 0x003A2A 00:FA1A: E5        .byte $E5   ; 
- D 3 - I - 0x003A2B 00:FA1B: E5        .byte $E5   ; 
- D 3 - I - 0x003A2C 00:FA1C: FF        .byte $FF   ; 
- D 3 - I - 0x003A2D 00:FA1D: FF        .byte $FF   ; 
- D 3 - I - 0x003A2E 00:FA1E: 80        .byte $80   ; 
- D 3 - I - 0x003A2F 00:FA1F: FF        .byte $FF   ; 
- D 3 - I - 0x003A30 00:FA20: FF        .byte $FF   ; 
- D 3 - I - 0x003A31 00:FA21: FF        .byte $FF   ; 
- D 3 - I - 0x003A32 00:FA22: 80        .byte $80   ; 
- D 3 - I - 0x003A33 00:FA23: FF        .byte $FF   ; 
- D 3 - I - 0x003A34 00:FA24: FF        .byte $FF   ; 
- D 3 - I - 0x003A35 00:FA25: 34        .byte $34   ; 
- D 3 - I - 0x003A36 00:FA26: 0C        .byte $0C   ; 
- D 3 - I - 0x003A37 00:FA27: E5        .byte $E5   ; 
- D 3 - I - 0x003A38 00:FA28: FF        .byte $FF   ; 
- D 3 - I - 0x003A39 00:FA29: FF        .byte $FF   ; 
- D 3 - I - 0x003A3A 00:FA2A: 80        .byte $80   ; 
- D 3 - I - 0x003A3B 00:FA2B: FF        .byte $FF   ; 
- D 3 - I - 0x003A3C 00:FA2C: FF        .byte $FF   ; 
- D 3 - I - 0x003A3D 00:FA2D: FF        .byte $FF   ; 
- D 3 - I - 0x003A3E 00:FA2E: 80        .byte $80   ; 
- D 3 - I - 0x003A3F 00:FA2F: FF        .byte $FF   ; 
- D 3 - I - 0x003A40 00:FA30: FF        .byte $FF   ; 
- D 3 - I - 0x003A41 00:FA31: E5        .byte $E5   ; 
- D 3 - I - 0x003A42 00:FA32: E5        .byte $E5   ; 
- D 3 - I - 0x003A43 00:FA33: FF        .byte $FF   ; 
- D 3 - I - 0x003A44 00:FA34: FF        .byte $FF   ; 
- D 3 - I - 0x003A45 00:FA35: 80        .byte $80   ; 
- D 3 - I - 0x003A46 00:FA36: FF        .byte $FF   ; 
- D 3 - I - 0x003A47 00:FA37: FF        .byte $FF   ; 
- D 3 - I - 0x003A48 00:FA38: FF        .byte $FF   ; 
- D 3 - I - 0x003A49 00:FA39: 80        .byte $80   ; 
- D 3 - I - 0x003A4A 00:FA3A: 34        .byte $34   ; 
- D 3 - I - 0x003A4B 00:FA3B: 10        .byte $10   ; 
- D 3 - I - 0x003A4C 00:FA3C: FF        .byte $FF   ; 
- D 3 - I - 0x003A4D 00:FA3D: 80        .byte $80   ; 
- D 3 - I - 0x003A4E 00:FA3E: FF        .byte $FF   ; 
- D 3 - I - 0x003A4F 00:FA3F: FF        .byte $FF   ; 
- D 3 - I - 0x003A50 00:FA40: FF        .byte $FF   ; 
- D 3 - I - 0x003A51 00:FA41: 80        .byte $80   ; 
- D 3 - I - 0x003A52 00:FA42: FF        .byte $FF   ; 
- D 3 - I - 0x003A53 00:FA43: FF        .byte $FF   ; 
- D 3 - I - 0x003A54 00:FA44: E5        .byte $E5   ; 
- D 3 - I - 0x003A55 00:FA45: E5        .byte $E5   ; 
- D 3 - I - 0x003A56 00:FA46: 34        .byte $34   ; 
- D 3 - I - 0x003A57 00:FA47: 1E        .byte $1E   ; 
- D 3 - I - 0x003A58 00:FA48: FF        .byte $FF   ; 
- D 3 - I - 0x003A59 00:FA49: E5        .byte $E5   ; 
- D 3 - I - 0x003A5A 00:FA4A: E5        .byte $E5   ; 
- D 3 - I - 0x003A5B 00:FA4B: FF        .byte $FF   ; 
- D 3 - I - 0x003A5C 00:FA4C: FF        .byte $FF   ; 
- D 3 - I - 0x003A5D 00:FA4D: E7        .byte $E7   ; 
- D 3 - I - 0x003A5E 00:FA4E: E8        .byte $E8   ; 
- D 3 - I - 0x003A5F 00:FA4F: FF        .byte $FF   ; 
- D 3 - I - 0x003A60 00:FA50: E7        .byte $E7   ; 
- D 3 - I - 0x003A61 00:FA51: E8        .byte $E8   ; 
- D 3 - I - 0x003A62 00:FA52: FF        .byte $FF   ; 
- D 3 - I - 0x003A63 00:FA53: E7        .byte $E7   ; 
- D 3 - I - 0x003A64 00:FA54: E8        .byte $E8   ; 
- D 3 - I - 0x003A65 00:FA55: 34        .byte $34   ; 
- D 3 - I - 0x003A66 00:FA56: 0A        .byte $0A   ; 
- D 3 - I - 0x003A67 00:FA57: FF        .byte $FF   ; 
- D 3 - I - 0x003A68 00:FA58: E7        .byte $E7   ; 
- D 3 - I - 0x003A69 00:FA59: E8        .byte $E8   ; 
- D 3 - I - 0x003A6A 00:FA5A: FF        .byte $FF   ; 
- D 3 - I - 0x003A6B 00:FA5B: E7        .byte $E7   ; 
- D 3 - I - 0x003A6C 00:FA5C: E8        .byte $E8   ; 
- D 3 - I - 0x003A6D 00:FA5D: FF        .byte $FF   ; 
- D 3 - I - 0x003A6E 00:FA5E: E7        .byte $E7   ; 
- D 3 - I - 0x003A6F 00:FA5F: E8        .byte $E8   ; 
- D 3 - I - 0x003A70 00:FA60: FF        .byte $FF   ; 
- D 3 - I - 0x003A71 00:FA61: FF        .byte $FF   ; 
- D 3 - I - 0x003A72 00:FA62: E5        .byte $E5   ; 
- D 3 - I - 0x003A73 00:FA63: 39        .byte $39   ; 



off_FA64_02:
- D 3 - I - 0x003A74 00:FA64: E5        .byte $E5   ; 
- D 3 - I - 0x003A75 00:FA65: FF        .byte $FF   ; 
- D 3 - I - 0x003A76 00:FA66: FF        .byte $FF   ; 
- D 3 - I - 0x003A77 00:FA67: E9        .byte $E9   ; 
- D 3 - I - 0x003A78 00:FA68: EA        .byte $EA   ; 
- D 3 - I - 0x003A79 00:FA69: FF        .byte $FF   ; 
- D 3 - I - 0x003A7A 00:FA6A: E9        .byte $E9   ; 
- D 3 - I - 0x003A7B 00:FA6B: EA        .byte $EA   ; 
- D 3 - I - 0x003A7C 00:FA6C: FF        .byte $FF   ; 
- D 3 - I - 0x003A7D 00:FA6D: E9        .byte $E9   ; 
- D 3 - I - 0x003A7E 00:FA6E: EA        .byte $EA   ; 
- D 3 - I - 0x003A7F 00:FA6F: 34        .byte $34   ; 
- D 3 - I - 0x003A80 00:FA70: 0A        .byte $0A   ; 
- D 3 - I - 0x003A81 00:FA71: FF        .byte $FF   ; 
- D 3 - I - 0x003A82 00:FA72: E9        .byte $E9   ; 
- D 3 - I - 0x003A83 00:FA73: EA        .byte $EA   ; 
- D 3 - I - 0x003A84 00:FA74: FF        .byte $FF   ; 
- D 3 - I - 0x003A85 00:FA75: E9        .byte $E9   ; 
- D 3 - I - 0x003A86 00:FA76: EA        .byte $EA   ; 
- D 3 - I - 0x003A87 00:FA77: FF        .byte $FF   ; 
- D 3 - I - 0x003A88 00:FA78: E9        .byte $E9   ; 
- D 3 - I - 0x003A89 00:FA79: EA        .byte $EA   ; 
- D 3 - I - 0x003A8A 00:FA7A: FF        .byte $FF   ; 
- D 3 - I - 0x003A8B 00:FA7B: FF        .byte $FF   ; 
- D 3 - I - 0x003A8C 00:FA7C: E5        .byte $E5   ; 
- D 3 - I - 0x003A8D 00:FA7D: E5        .byte $E5   ; 
- D 3 - I - 0x003A8E 00:FA7E: FF        .byte $FF   ; 
- D 3 - I - 0x003A8F 00:FA7F: FF        .byte $FF   ; 
- D 3 - I - 0x003A90 00:FA80: E9        .byte $E9   ; 
- D 3 - I - 0x003A91 00:FA81: EA        .byte $EA   ; 
- D 3 - I - 0x003A92 00:FA82: FF        .byte $FF   ; 
- D 3 - I - 0x003A93 00:FA83: E9        .byte $E9   ; 
- D 3 - I - 0x003A94 00:FA84: EA        .byte $EA   ; 
- D 3 - I - 0x003A95 00:FA85: FF        .byte $FF   ; 
- D 3 - I - 0x003A96 00:FA86: E9        .byte $E9   ; 
- D 3 - I - 0x003A97 00:FA87: EA        .byte $EA   ; 
- D 3 - I - 0x003A98 00:FA88: 34        .byte $34   ; 
- D 3 - I - 0x003A99 00:FA89: 0A        .byte $0A   ; 
- D 3 - I - 0x003A9A 00:FA8A: FF        .byte $FF   ; 
- D 3 - I - 0x003A9B 00:FA8B: E9        .byte $E9   ; 
- D 3 - I - 0x003A9C 00:FA8C: EA        .byte $EA   ; 
- D 3 - I - 0x003A9D 00:FA8D: FF        .byte $FF   ; 
- D 3 - I - 0x003A9E 00:FA8E: E9        .byte $E9   ; 
- D 3 - I - 0x003A9F 00:FA8F: EA        .byte $EA   ; 
- D 3 - I - 0x003AA0 00:FA90: FF        .byte $FF   ; 
- D 3 - I - 0x003AA1 00:FA91: E9        .byte $E9   ; 
- D 3 - I - 0x003AA2 00:FA92: EA        .byte $EA   ; 
- D 3 - I - 0x003AA3 00:FA93: FF        .byte $FF   ; 
- D 3 - I - 0x003AA4 00:FA94: FF        .byte $FF   ; 
- D 3 - I - 0x003AA5 00:FA95: E5        .byte $E5   ; 
- D 3 - I - 0x003AA6 00:FA96: E5        .byte $E5   ; 
- D 3 - I - 0x003AA7 00:FA97: 34        .byte $34   ; 
- D 3 - I - 0x003AA8 00:FA98: 1E        .byte $1E   ; 
- D 3 - I - 0x003AA9 00:FA99: FF        .byte $FF   ; 
- D 3 - I - 0x003AAA 00:FA9A: E5        .byte $E5   ; 
- D 3 - I - 0x003AAB 00:FA9B: E5        .byte $E5   ; 
- D 3 - I - 0x003AAC 00:FA9C: 34        .byte $34   ; 
- D 3 - I - 0x003AAD 00:FA9D: 1E        .byte $1E   ; 
- D 3 - I - 0x003AAE 00:FA9E: FF        .byte $FF   ; 
- D 3 - I - 0x003AAF 00:FA9F: E5        .byte $E5   ; 
- D 3 - I - 0x003AB0 00:FAA0: E5        .byte $E5   ; 
- D 3 - I - 0x003AB1 00:FAA1: 34        .byte $34   ; 
- D 3 - I - 0x003AB2 00:FAA2: 1E        .byte $1E   ; 
- D 3 - I - 0x003AB3 00:FAA3: FF        .byte $FF   ; 
- D 3 - I - 0x003AB4 00:FAA4: E5        .byte $E5   ; 
- D 3 - I - 0x003AB5 00:FAA5: E5        .byte $E5   ; 
- D 3 - I - 0x003AB6 00:FAA6: 34        .byte $34   ; 
- D 3 - I - 0x003AB7 00:FAA7: 1E        .byte $1E   ; 
- D 3 - I - 0x003AB8 00:FAA8: FF        .byte $FF   ; 
- D 3 - I - 0x003AB9 00:FAA9: E5        .byte $E5   ; 
- D 3 - I - 0x003ABA 00:FAAA: E5        .byte $E5   ; 
- D 3 - I - 0x003ABB 00:FAAB: 34        .byte $34   ; 
- D 3 - I - 0x003ABC 00:FAAC: 1E        .byte $1E   ; 
- D 3 - I - 0x003ABD 00:FAAD: FF        .byte $FF   ; 
- D 3 - I - 0x003ABE 00:FAAE: E5        .byte $E5   ; 
- D 3 - I - 0x003ABF 00:FAAF: E5        .byte $E5   ; 
- D 3 - I - 0x003AC0 00:FAB0: 34        .byte $34   ; 
- D 3 - I - 0x003AC1 00:FAB1: 1E        .byte $1E   ; 
- D 3 - I - 0x003AC2 00:FAB2: FF        .byte $FF   ; 
- D 3 - I - 0x003AC3 00:FAB3: E5        .byte $E5   ; 
- D 3 - I - 0x003AC4 00:FAB4: 39        .byte $39   ; 



off_FAB5_03:
- D 3 - I - 0x003AC5 00:FAB5: 34        .byte $34   ; 
- D 3 - I - 0x003AC6 00:FAB6: 25        .byte $25   ; 
- D 3 - I - 0x003AC7 00:FAB7: 72        .byte $72   ; 
- D 3 - I - 0x003AC8 00:FAB8: 34        .byte $34   ; 
- D 3 - I - 0x003AC9 00:FAB9: 16        .byte $16   ; 
- D 3 - I - 0x003ACA 00:FABA: E6        .byte $E6   ; 
- D 3 - I - 0x003ACB 00:FABB: 34        .byte $34   ; 
- D 3 - I - 0x003ACC 00:FABC: 09        .byte $09   ; 
- D 3 - I - 0x003ACD 00:FABD: 72        .byte $72   ; 
- D 3 - I - 0x003ACE 00:FABE: EB        .byte $EB   ; 
- D 3 - I - 0x003ACF 00:FABF: 34        .byte $34   ; 
- D 3 - I - 0x003AD0 00:FAC0: 09        .byte $09   ; 
- D 3 - I - 0x003AD1 00:FAC1: ED        .byte $ED   ; 
- D 3 - I - 0x003AD2 00:FAC2: F6        .byte $F6   ; 
- D 3 - I - 0x003AD3 00:FAC3: F1        .byte $F1   ; 
- D 3 - I - 0x003AD4 00:FAC4: F2        .byte $F2   ; 
- D 3 - I - 0x003AD5 00:FAC5: F6        .byte $F6   ; 
- D 3 - I - 0x003AD6 00:FAC6: EE        .byte $EE   ; 
- D 3 - I - 0x003AD7 00:FAC7: EE        .byte $EE   ; 
- D 3 - I - 0x003AD8 00:FAC8: EE        .byte $EE   ; 
- D 3 - I - 0x003AD9 00:FAC9: 34        .byte $34   ; 
- D 3 - I - 0x003ADA 00:FACA: 06        .byte $06   ; 
- D 3 - I - 0x003ADB 00:FACB: EF        .byte $EF   ; 
- D 3 - I - 0x003ADC 00:FACC: EC        .byte $EC   ; 
- D 3 - I - 0x003ADD 00:FACD: 34        .byte $34   ; 
- D 3 - I - 0x003ADE 00:FACE: 07        .byte $07   ; 
- D 3 - I - 0x003ADF 00:FACF: 72        .byte $72   ; 
- D 3 - I - 0x003AE0 00:FAD0: 00        .byte $00   ; 
- D 3 - I - 0x003AE1 00:FAD1: 00        .byte $00   ; 
- D 3 - I - 0x003AE2 00:FAD2: 00        .byte $00   ; 
- D 3 - I - 0x003AE3 00:FAD3: DF        .byte $DF, $E3, $E3   ; LEE
- D 3 - I - 0x003AE6 00:FAD6: 34        .byte $34   ; 
- D 3 - I - 0x003AE7 00:FAD7: 14        .byte $14   ; 
- D 3 - I - 0x003AE8 00:FAD8: 00        .byte $00   ; 
- D 3 - I - 0x003AE9 00:FAD9: 34        .byte $34   ; 
- D 3 - I - 0x003AEA 00:FADA: 43        .byte $43   ; 
- D 3 - I - 0x003AEB 00:FADB: 72        .byte $72   ; 
- D 3 - I - 0x003AEC 00:FADC: 34        .byte $34   ; 
- D 3 - I - 0x003AED 00:FADD: 10        .byte $10   ; 
- D 3 - I - 0x003AEE 00:FADE: FF        .byte $FF   ; 
- D 3 - I - 0x003AEF 00:FADF: BF        .byte $BF   ; 
- D 3 - I - 0x003AF0 00:FAE0: AF        .byte $AF   ; 
- D 3 - I - 0x003AF1 00:FAE1: EF        .byte $EF   ; 
- D 3 - I - 0x003AF2 00:FAE2: AF        .byte $AF   ; 
- D 3 - I - 0x003AF3 00:FAE3: AF        .byte $AF   ; 
- D 3 - I - 0x003AF4 00:FAE4: BF        .byte $BF   ; 
- D 3 - I - 0x003AF5 00:FAE5: AF        .byte $AF   ; 
- D 3 - I - 0x003AF6 00:FAE6: EF        .byte $EF   ; 
- D 3 - I - 0x003AF7 00:FAE7: BB        .byte $BB   ; 
- D 3 - I - 0x003AF8 00:FAE8: AA        .byte $AA   ; 
- D 3 - I - 0x003AF9 00:FAE9: AE        .byte $AE   ; 
- D 3 - I - 0x003AFA 00:FAEA: AF        .byte $AF   ; 
- D 3 - I - 0x003AFB 00:FAEB: AF        .byte $AF   ; 
- D 3 - I - 0x003AFC 00:FAEC: AB        .byte $AB   ; 
- D 3 - I - 0x003AFD 00:FAED: AA        .byte $AA   ; 
- D 3 - I - 0x003AFE 00:FAEE: EE        .byte $EE   ; 
- D 3 - I - 0x003AFF 00:FAEF: BB        .byte $BB   ; 
- D 3 - I - 0x003B00 00:FAF0: 34        .byte $34   ; 
- D 3 - I - 0x003B01 00:FAF1: 06        .byte $06   ; 
- D 3 - I - 0x003B02 00:FAF2: AA        .byte $AA   ; 
- D 3 - I - 0x003B03 00:FAF3: EE        .byte $EE   ; 
- D 3 - I - 0x003B04 00:FAF4: 73        .byte $73   ; 
- D 3 - I - 0x003B05 00:FAF5: 34        .byte $34   ; 
- D 3 - I - 0x003B06 00:FAF6: 06        .byte $06   ; 
- D 3 - I - 0x003B07 00:FAF7: 50        .byte $50   ; 
- D 3 - I - 0x003B08 00:FAF8: DC        .byte $DC   ; 
- D 3 - I - 0x003B09 00:FAF9: FF        .byte $FF   ; 
- D 3 - I - 0x003B0A 00:FAFA: 34        .byte $34   ; 
- D 3 - I - 0x003B0B 00:FAFB: 06        .byte $06   ; 
- D 3 - I - 0x003B0C 00:FAFC: AF        .byte $AF   ; 
- D 3 - I - 0x003B0D 00:FAFD: 34        .byte $34   ; 
- D 3 - I - 0x003B0E 00:FAFE: 09        .byte $09   ; 
- D 3 - I - 0x003B0F 00:FAFF: FF        .byte $FF   ; 
- D 3 - I - 0x003B10 00:FB00: 39        .byte $39   ; 



tbl_FB01:
- D 3 - - - 0x003B11 00:FB01: 1F FB     .word off_FB1F_00
- D 3 - - - 0x003B13 00:FB03: 2F FB     .word off_FB2F_01
- D 3 - - - 0x003B15 00:FB05: 3F FB     .word off_FB3F_02
- D 3 - - - 0x003B17 00:FB07: 4F FB     .word off_FB4F_03
- D 3 - - - 0x003B19 00:FB09: 5F FB     .word off_FB5F_04



tbl_FB0B:
- D 3 - - - 0x003B1B 00:FB0B: 6F FB     .word off_FB6F_00
- D 3 - - - 0x003B1D 00:FB0D: 75 FB     .word off_FB75_01
- D 3 - - - 0x003B1F 00:FB0F: 79 FB     .word off_FB79_02
- D 3 - - - 0x003B21 00:FB11: 7D FB     .word off_FB7D_03



tbl_FB13:
- D 3 - - - 0x003B23 00:FB13: 0F        .byte $0F   ; 
- D 3 - - - 0x003B24 00:FB14: 16        .byte $16   ; 
- D 3 - - - 0x003B25 00:FB15: 0E        .byte $0E   ; 
- D 3 - - - 0x003B26 00:FB16: 36        .byte $36   ; 
- D 3 - - - 0x003B27 00:FB17: 0F        .byte $0F   ; 
- D 3 - - - 0x003B28 00:FB18: 12        .byte $12   ; 
- D 3 - - - 0x003B29 00:FB19: 25        .byte $25   ; 
- D 3 - - - 0x003B2A 00:FB1A: 15        .byte $15   ; 
- D 3 - - - 0x003B2B 00:FB1B: 0F        .byte $0F   ; 
- D 3 - - - 0x003B2C 00:FB1C: 36        .byte $36   ; 
- D 3 - - - 0x003B2D 00:FB1D: 25        .byte $25   ; 
- D 3 - - - 0x003B2E 00:FB1E: 0E        .byte $0E   ; 



off_FB1F_00:
- D 3 - I - 0x003B2F 00:FB1F: 0F        .byte $0F   ; 
- D 3 - I - 0x003B30 00:FB20: 36        .byte $36   ; 
- D 3 - I - 0x003B31 00:FB21: 0F        .byte $0F   ; 
- D 3 - I - 0x003B32 00:FB22: 36        .byte $36   ; 
- D 3 - I - 0x003B33 00:FB23: 0F        .byte $0F   ; 
- D 3 - I - 0x003B34 00:FB24: 0F        .byte $0F   ; 
- D 3 - I - 0x003B35 00:FB25: 12        .byte $12   ; 
- D 3 - I - 0x003B36 00:FB26: 12        .byte $12   ; 
- D 3 - I - 0x003B37 00:FB27: 0F        .byte $0F   ; 
- D 3 - I - 0x003B38 00:FB28: 15        .byte $15   ; 
- D 3 - I - 0x003B39 00:FB29: 2A        .byte $2A   ; 
- D 3 - I - 0x003B3A 00:FB2A: 30        .byte $30   ; 
- D 3 - I - 0x003B3B 00:FB2B: 0F        .byte $0F   ; 
- D 3 - I - 0x003B3C 00:FB2C: 36        .byte $36   ; 
- D 3 - I - 0x003B3D 00:FB2D: 12        .byte $12   ; 
- D 3 - I - 0x003B3E 00:FB2E: 30        .byte $30   ; 



off_FB2F_01:
- D 3 - I - 0x003B3F 00:FB2F: 0F        .byte $0F   ; 
- D 3 - I - 0x003B40 00:FB30: 37        .byte $37   ; 
- D 3 - I - 0x003B41 00:FB31: 0F        .byte $0F   ; 
- D 3 - I - 0x003B42 00:FB32: 37        .byte $37   ; 
- D 3 - I - 0x003B43 00:FB33: 0F        .byte $0F   ; 
- D 3 - I - 0x003B44 00:FB34: 0F        .byte $0F   ; 
- D 3 - I - 0x003B45 00:FB35: 13        .byte $13   ; 
- D 3 - I - 0x003B46 00:FB36: 13        .byte $13   ; 
- D 3 - I - 0x003B47 00:FB37: 0F        .byte $0F   ; 
- D 3 - I - 0x003B48 00:FB38: 15        .byte $15   ; 
- D 3 - I - 0x003B49 00:FB39: 2A        .byte $2A   ; 
- D 3 - I - 0x003B4A 00:FB3A: 30        .byte $30   ; 
- D 3 - I - 0x003B4B 00:FB3B: 0F        .byte $0F   ; 
- D 3 - I - 0x003B4C 00:FB3C: 37        .byte $37   ; 
- D 3 - I - 0x003B4D 00:FB3D: 13        .byte $13   ; 
- D 3 - I - 0x003B4E 00:FB3E: 30        .byte $30   ; 



off_FB3F_02:
- D 3 - I - 0x003B4F 00:FB3F: 0F        .byte $0F   ; 
- D 3 - I - 0x003B50 00:FB40: 26        .byte $26   ; 
- D 3 - I - 0x003B51 00:FB41: 0F        .byte $0F   ; 
- D 3 - I - 0x003B52 00:FB42: 26        .byte $26   ; 
- D 3 - I - 0x003B53 00:FB43: 0F        .byte $0F   ; 
- D 3 - I - 0x003B54 00:FB44: 0F        .byte $0F   ; 
- D 3 - I - 0x003B55 00:FB45: 1A        .byte $1A   ; 
- D 3 - I - 0x003B56 00:FB46: 1A        .byte $1A   ; 
- D 3 - I - 0x003B57 00:FB47: 0F        .byte $0F   ; 
- D 3 - I - 0x003B58 00:FB48: 15        .byte $15   ; 
- D 3 - I - 0x003B59 00:FB49: 2A        .byte $2A   ; 
- D 3 - I - 0x003B5A 00:FB4A: 30        .byte $30   ; 
- D 3 - I - 0x003B5B 00:FB4B: 0F        .byte $0F   ; 
- D 3 - I - 0x003B5C 00:FB4C: 26        .byte $26   ; 
- D 3 - I - 0x003B5D 00:FB4D: 1A        .byte $1A   ; 
- D 3 - I - 0x003B5E 00:FB4E: 30        .byte $30   ; 



off_FB4F_03:
- D 3 - I - 0x003B5F 00:FB4F: 0F        .byte $0F   ; 
- D 3 - I - 0x003B60 00:FB50: 25        .byte $25   ; 
- D 3 - I - 0x003B61 00:FB51: 0F        .byte $0F   ; 
- D 3 - I - 0x003B62 00:FB52: 25        .byte $25   ; 
- D 3 - I - 0x003B63 00:FB53: 0F        .byte $0F   ; 
- D 3 - I - 0x003B64 00:FB54: 25        .byte $25   ; 
- D 3 - I - 0x003B65 00:FB55: 0F        .byte $0F   ; 
- D 3 - I - 0x003B66 00:FB56: 25        .byte $25   ; 
- D 3 - I - 0x003B67 00:FB57: 0F        .byte $0F   ; 
- D 3 - I - 0x003B68 00:FB58: 15        .byte $15   ; 
- D 3 - I - 0x003B69 00:FB59: 2A        .byte $2A   ; 
- D 3 - I - 0x003B6A 00:FB5A: 30        .byte $30   ; 
- D 3 - I - 0x003B6B 00:FB5B: 0F        .byte $0F   ; 
- D 3 - I - 0x003B6C 00:FB5C: 36        .byte $36   ; 
- D 3 - I - 0x003B6D 00:FB5D: 25        .byte $25   ; 
- D 3 - I - 0x003B6E 00:FB5E: 30        .byte $30   ; 



off_FB5F_04:
- D 3 - I - 0x003B6F 00:FB5F: 0F        .byte $0F   ; 
- D 3 - I - 0x003B70 00:FB60: 36        .byte $36   ; 
- D 3 - I - 0x003B71 00:FB61: 0F        .byte $0F   ; 
- D 3 - I - 0x003B72 00:FB62: 36        .byte $36   ; 
- D 3 - I - 0x003B73 00:FB63: 0F        .byte $0F   ; 
- D 3 - I - 0x003B74 00:FB64: 0F        .byte $0F   ; 
- D 3 - I - 0x003B75 00:FB65: 30        .byte $30   ; 
- D 3 - I - 0x003B76 00:FB66: 30        .byte $30   ; 
- D 3 - I - 0x003B77 00:FB67: 0F        .byte $0F   ; 
- D 3 - I - 0x003B78 00:FB68: 15        .byte $15   ; 
- D 3 - I - 0x003B79 00:FB69: 2A        .byte $2A   ; 
- D 3 - I - 0x003B7A 00:FB6A: 30        .byte $30   ; 
- D 3 - I - 0x003B7B 00:FB6B: 0F        .byte $0F   ; 
- D 3 - I - 0x003B7C 00:FB6C: 36        .byte $36   ; 
- D 3 - I - 0x003B7D 00:FB6D: 30        .byte $30   ; 
- D 3 - I - 0x003B7E 00:FB6E: 30        .byte $30   ; 



off_FB6F_00:
- D 3 - I - 0x003B7F 00:FB6F: 0F        .byte $0F   ; 
- D 3 - I - 0x003B80 00:FB70: 19        .byte $19   ; 
- D 3 - I - 0x003B81 00:FB71: 16        .byte $16   ; 
- D 3 - I - 0x003B82 00:FB72: 30        .byte $30   ; 



tbl_FB73:
- D 3 - - - 0x003B83 00:FB73: 75 FB     .word off___FB75
off___FB75:
off_FB75_01:
- D 3 - I - 0x003B85 00:FB75: 0F        .byte $0F   ; 
- D 3 - I - 0x003B86 00:FB76: 14        .byte $14   ; 
- D 3 - I - 0x003B87 00:FB77: 21        .byte $21   ; 
- D 3 - I - 0x003B88 00:FB78: 30        .byte $30   ; 



off_FB79_02:
- D 3 - I - 0x003B89 00:FB79: 0F        .byte $0F   ; 
- D 3 - I - 0x003B8A 00:FB7A: 27        .byte $27   ; 
- D 3 - I - 0x003B8B 00:FB7B: 19        .byte $19   ; 
- D 3 - I - 0x003B8C 00:FB7C: 30        .byte $30   ; 



off_FB7D_03:
- D 3 - I - 0x003B8D 00:FB7D: 0F        .byte $0F   ; 
- D 3 - I - 0x003B8E 00:FB7E: 14        .byte $14   ; 
- D 3 - I - 0x003B8F 00:FB7F: 10        .byte $10   ; 
- D 3 - I - 0x003B90 00:FB80: 30        .byte $30   ; 
- D 3 - I - 0x003B91 00:FB81: 0F        .byte $0F   ; 
- D 3 - I - 0x003B92 00:FB82: 25        .byte $25   ; 
- D 3 - I - 0x003B93 00:FB83: 29        .byte $29   ; 
- D 3 - I - 0x003B94 00:FB84: 30        .byte $30   ; 



tbl_FB85:
- D 3 - - - 0x003B95 00:FB85: 67        .byte $67   ; 
- D 3 - - - 0x003B96 00:FB86: D7        .byte $D7   ; 
- D 3 - - - 0x003B97 00:FB87: 01        .byte $01   ; 
- D 3 - - - 0x003B98 00:FB88: 70        .byte $70   ; 
- D 3 - - - 0x003B99 00:FB89: 67        .byte $67   ; 
- D 3 - - - 0x003B9A 00:FB8A: D7        .byte $D7   ; 
- D 3 - - - 0x003B9B 00:FB8B: 01        .byte $01   ; 
- D 3 - - - 0x003B9C 00:FB8C: 88        .byte $88   ; 
- D 3 - - - 0x003B9D 00:FB8D: 6F        .byte $6F   ; 
- D 3 - - - 0x003B9E 00:FB8E: D8        .byte $D8   ; 
- D 3 - - - 0x003B9F 00:FB8F: 01        .byte $01   ; 
- D 3 - - - 0x003BA0 00:FB90: 70        .byte $70   ; 
- D 3 - - - 0x003BA1 00:FB91: 6F        .byte $6F   ; 
- D 3 - - - 0x003BA2 00:FB92: D9        .byte $D9   ; 
- D 3 - - - 0x003BA3 00:FB93: 01        .byte $01   ; 
- D 3 - - - 0x003BA4 00:FB94: 78        .byte $78   ; 
- D 3 - - - 0x003BA5 00:FB95: 6F        .byte $6F   ; 
- D 3 - - - 0x003BA6 00:FB96: D9        .byte $D9   ; 
- D 3 - - - 0x003BA7 00:FB97: 41        .byte $41   ; 
- D 3 - - - 0x003BA8 00:FB98: 80        .byte $80   ; 
- D 3 - - - 0x003BA9 00:FB99: 6F        .byte $6F   ; 
- D 3 - - - 0x003BAA 00:FB9A: D8        .byte $D8   ; 
- D 3 - - - 0x003BAB 00:FB9B: 41        .byte $41   ; 
- D 3 - - - 0x003BAC 00:FB9C: 88        .byte $88   ; 
- D 3 - - - 0x003BAD 00:FB9D: 77        .byte $77   ; 
- D 3 - - - 0x003BAE 00:FB9E: DA        .byte $DA   ; 
- D 3 - - - 0x003BAF 00:FB9F: 01        .byte $01   ; 
- D 3 - - - 0x003BB0 00:FBA0: 70        .byte $70   ; 
- D 3 - - - 0x003BB1 00:FBA1: 77        .byte $77   ; 
- D 3 - - - 0x003BB2 00:FBA2: DE        .byte $DE   ; 
- D 3 - - - 0x003BB3 00:FBA3: 01        .byte $01   ; 
- D 3 - - - 0x003BB4 00:FBA4: 78        .byte $78   ; 
- D 3 - - - 0x003BB5 00:FBA5: 77        .byte $77   ; 
- D 3 - - - 0x003BB6 00:FBA6: DF        .byte $DF   ; 
- D 3 - - - 0x003BB7 00:FBA7: 01        .byte $01   ; 
- D 3 - - - 0x003BB8 00:FBA8: 80        .byte $80   ; 
- D 3 - - - 0x003BB9 00:FBA9: 77        .byte $77   ; 
- D 3 - - - 0x003BBA 00:FBAA: DA        .byte $DA   ; 
- D 3 - - - 0x003BBB 00:FBAB: 41        .byte $41   ; 
- D 3 - - - 0x003BBC 00:FBAC: 88        .byte $88   ; 
- D 3 - - - 0x003BBD 00:FBAD: 7F        .byte $7F   ; 
- D 3 - - - 0x003BBE 00:FBAE: DB        .byte $DB   ; 
- D 3 - - - 0x003BBF 00:FBAF: 01        .byte $01   ; 
- D 3 - - - 0x003BC0 00:FBB0: 70        .byte $70   ; 
- D 3 - - - 0x003BC1 00:FBB1: 7F        .byte $7F   ; 
- D 3 - - - 0x003BC2 00:FBB2: E0        .byte $E0   ; 
- D 3 - - - 0x003BC3 00:FBB3: 01        .byte $01   ; 
- D 3 - - - 0x003BC4 00:FBB4: 78        .byte $78   ; 
- D 3 - - - 0x003BC5 00:FBB5: 7F        .byte $7F   ; 
- D 3 - - - 0x003BC6 00:FBB6: E1        .byte $E1   ; 
- D 3 - - - 0x003BC7 00:FBB7: 01        .byte $01   ; 
- D 3 - - - 0x003BC8 00:FBB8: 80        .byte $80   ; 
- D 3 - - - 0x003BC9 00:FBB9: 7F        .byte $7F   ; 
- D 3 - - - 0x003BCA 00:FBBA: DB        .byte $DB   ; 
- D 3 - - - 0x003BCB 00:FBBB: 41        .byte $41   ; 
- D 3 - - - 0x003BCC 00:FBBC: 88        .byte $88   ; 
- D 3 - - - 0x003BCD 00:FBBD: 87        .byte $87   ; 
- D 3 - - - 0x003BCE 00:FBBE: DC        .byte $DC   ; 
- D 3 - - - 0x003BCF 00:FBBF: 01        .byte $01   ; 
- D 3 - - - 0x003BD0 00:FBC0: 70        .byte $70   ; 
- D 3 - - - 0x003BD1 00:FBC1: 87        .byte $87   ; 
- D 3 - - - 0x003BD2 00:FBC2: DD        .byte $DD   ; 
- D 3 - - - 0x003BD3 00:FBC3: 01        .byte $01   ; 
- D 3 - - - 0x003BD4 00:FBC4: 78        .byte $78   ; 
- D 3 - - - 0x003BD5 00:FBC5: 87        .byte $87   ; 
- D 3 - - - 0x003BD6 00:FBC6: DD        .byte $DD   ; 
- D 3 - - - 0x003BD7 00:FBC7: 41        .byte $41   ; 
- D 3 - - - 0x003BD8 00:FBC8: 80        .byte $80   ; 
- D 3 - - - 0x003BD9 00:FBC9: 87        .byte $87   ; 
- D 3 - - - 0x003BDA 00:FBCA: DC        .byte $DC   ; 
- D 3 - - - 0x003BDB 00:FBCB: 41        .byte $41   ; 
- D 3 - - - 0x003BDC 00:FBCC: 88        .byte $88   ; 



sub_FBCD:
C - - - - - 0x003BDD 00:FBCD: A5 77     LDA ram_0077
C - - - - - 0x003BDF 00:FBCF: 0A        ASL
C - - - - - 0x003BE0 00:FBD0: B0 11     BCS bra_FBE3
C - - - - - 0x003BE2 00:FBD2: A2 17     LDX #$17
bra_FBD4_loop:
C - - - - - 0x003BE4 00:FBD4: BD 2F FD  LDA tbl_FD2F_oam_data,X
C - - - - - 0x003BE7 00:FBD7: 9D 00 02  STA ram_oam,X
C - - - - - 0x003BEA 00:FBDA: CA        DEX
C - - - - - 0x003BEB 00:FBDB: 10 F7     BPL bra_FBD4_loop
C - - - - - 0x003BED 00:FBDD: A9 00     LDA #$00
C - - - - - 0x003BEF 00:FBDF: 85 9F     STA ram_009F
C - - - - - 0x003BF1 00:FBE1: 85 76     STA ram_0076
bra_FBE3:
C - - - - - 0x003BF3 00:FBE3: A9 80     LDA #$80
C - - - - - 0x003BF5 00:FBE5: 05 77     ORA ram_0077
C - - - - - 0x003BF7 00:FBE7: 85 77     STA ram_0077
C - - - - - 0x003BF9 00:FBE9: A5 F8     LDA ram_00F8
C - - - - - 0x003BFB 00:FBEB: 29 1F     AND #$1F
C - - - - - 0x003BFD 00:FBED: 18        CLC
C - - - - - 0x003BFE 00:FBEE: 6D 05 FD  ADC tbl_FD05
C - - - - - 0x003C01 00:FBF1: 85 90     STA ram_0090
C - - - - - 0x003C03 00:FBF3: A9 00     LDA #$00
C - - - - - 0x003C05 00:FBF5: 6D 06 FD  ADC tbl_FD05 + 1
C - - - - - 0x003C08 00:FBF8: 85 91     STA ram_0091
C - - - - - 0x003C0A 00:FBFA: A4 76     LDY ram_0076
C - - - - - 0x003C0C 00:FBFC: C0 0A     CPY #$0A
C - - - - - 0x003C0E 00:FBFE: F0 32     BEQ bra_FC32
C - - - - - 0x003C10 00:FC00: A5 9F     LDA ram_009F
C - - - - - 0x003C12 00:FC02: D0 1D     BNE bra_FC21
C - - - - - 0x003C14 00:FC04: B1 90     LDA (ram_0090),Y
C - - - - - 0x003C16 00:FC06: 29 03     AND #$03
C - - - - - 0x003C18 00:FC08: AA        TAX
C - - - - - 0x003C19 00:FC09: B5 A5     LDA ram_00A5,X
C - - - - - 0x003C1B 00:FC0B: D0 1A     BNE bra_FC27
bra_FC0D:
C - - - - - 0x003C1D 00:FC0D: B1 90     LDA (ram_0090),Y
C - - - - - 0x003C1F 00:FC0F: 95 A5     STA ram_00A5,X
C - - - - - 0x003C21 00:FC11: 29 3C     AND #$3C
C - - - - - 0x003C23 00:FC13: 0A        ASL
C - - - - - 0x003C24 00:FC14: 85 9F     STA ram_009F
C - - - - - 0x003C26 00:FC16: 8A        TXA
C - - - - - 0x003C27 00:FC17: 0A        ASL
C - - - - - 0x003C28 00:FC18: 0A        ASL
C - - - - - 0x003C29 00:FC19: AA        TAX
C - - - - - 0x003C2A 00:FC1A: A9 F8     LDA #$F8
C - - - - - 0x003C2C 00:FC1C: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x003C2F 00:FC1F: E6 76     INC ram_0076
bra_FC21:
C - - - - - 0x003C31 00:FC21: C6 9F     DEC ram_009F
bra_FC23_loop:
C - - - - - 0x003C33 00:FC23: 20 54 FC  JSR sub_FC54
C - - - - - 0x003C36 00:FC26: 60        RTS
bra_FC27:
C - - - - - 0x003C37 00:FC27: A2 02     LDX #$02
bra_FC29_loop:
C - - - - - 0x003C39 00:FC29: B5 A5     LDA ram_00A5,X
C - - - - - 0x003C3B 00:FC2B: F0 E0     BEQ bra_FC0D
- - - - - - 0x003C3D 00:FC2D: CA        DEX
- - - - - - 0x003C3E 00:FC2E: 10 F9     BPL bra_FC29_loop
- - - - - - 0x003C40 00:FC30: 30 F1     BMI bra_FC23_loop
bra_FC32:
C - - - - - 0x003C42 00:FC32: A2 02     LDX #$02
bra_FC34_loop:
C - - - - - 0x003C44 00:FC34: B5 A5     LDA ram_00A5,X
C - - - - - 0x003C46 00:FC36: D0 EB     BNE bra_FC23_loop
C - - - - - 0x003C48 00:FC38: CA        DEX
C - - - - - 0x003C49 00:FC39: 10 F9     BPL bra_FC34_loop
C - - - - - 0x003C4B 00:FC3B: A2 17     LDX #$17
C - - - - - 0x003C4D 00:FC3D: A9 F8     LDA #$F8
bra_FC3F_hide_sprites_loop:
C - - - - - 0x003C4F 00:FC3F: 9D 00 02  STA ram_oam,X
C - - - - - 0x003C52 00:FC42: CA        DEX
C - - - - - 0x003C53 00:FC43: 10 FA     BPL bra_FC3F_hide_sprites_loop
C - - - - - 0x003C55 00:FC45: A5 77     LDA ram_0077
C - - - - - 0x003C57 00:FC47: 29 0F     AND #$0F
C - - - - - 0x003C59 00:FC49: 85 77     STA ram_0077
C - - - - - 0x003C5B 00:FC4B: A9 40     LDA #$40
C - - - - - 0x003C5D 00:FC4D: 85 73     STA ram_0073
C - - - - - 0x003C5F 00:FC4F: A9 01     LDA #$01
C - - - - - 0x003C61 00:FC51: 85 AF     STA ram_00AF
C - - - - - 0x003C63 00:FC53: 60        RTS



sub_FC54:
C - - - - - 0x003C64 00:FC54: A2 02     LDX #$02
bra_FC56_loop:
C - - - - - 0x003C66 00:FC56: 8A        TXA
C - - - - - 0x003C67 00:FC57: 0A        ASL
C - - - - - 0x003C68 00:FC58: 0A        ASL
C - - - - - 0x003C69 00:FC59: A8        TAY
C - - - - - 0x003C6A 00:FC5A: A9 00     LDA #$00
C - - - - - 0x003C6C 00:FC5C: 85 92     STA ram_0092
C - - - - - 0x003C6E 00:FC5E: 85 9D     STA ram_009D
C - - - - - 0x003C70 00:FC60: B5 A5     LDA ram_00A5,X
C - - - - - 0x003C72 00:FC62: D0 0A     BNE bra_FC6E
C - - - - - 0x003C74 00:FC64: A9 F8     LDA #$F8
C - - - - - 0x003C76 00:FC66: 99 03 02  STA ram_spr_X,Y
bra_FC69_loop:
C - - - - - 0x003C79 00:FC69: CA        DEX
C - - - - - 0x003C7A 00:FC6A: 10 EA     BPL bra_FC56_loop
C - - - - - 0x003C7C 00:FC6C: 30 25     BMI bra_FC93
bra_FC6E:
C - - - - - 0x003C7E 00:FC6E: 0A        ASL
C - - - - - 0x003C7F 00:FC6F: 90 02     BCC bra_FC73
C - - - - - 0x003C81 00:FC71: E6 92     INC ram_0092
bra_FC73:
C - - - - - 0x003C83 00:FC73: 0A        ASL
C - - - - - 0x003C84 00:FC74: 26 9D     ROL ram_009D
bra_FC76:
C - - - - - 0x003C86 00:FC76: A5 9D     LDA ram_009D
C - - - - - 0x003C88 00:FC78: D0 02     BNE bra_FC7C
C - - - - - 0x003C8A 00:FC7A: A9 FF     LDA #$FF
bra_FC7C:
C - - - - - 0x003C8C 00:FC7C: 18        CLC
C - - - - - 0x003C8D 00:FC7D: 79 03 02  ADC ram_spr_X,Y
C - - - - - 0x003C90 00:FC80: 99 03 02  STA ram_spr_X,Y
C - - - - - 0x003C93 00:FC83: C9 F8     CMP #$F8
C - - - - - 0x003C95 00:FC85: F0 06     BEQ bra_FC8D
C - - - - - 0x003C97 00:FC87: C6 92     DEC ram_0092
C - - - - - 0x003C99 00:FC89: F0 EB     BEQ bra_FC76
C - - - - - 0x003C9B 00:FC8B: D0 DC     BNE bra_FC69_loop
bra_FC8D:
- - - - - - 0x003C9D 00:FC8D: A9 00     LDA #$00
- - - - - - 0x003C9F 00:FC8F: 95 A5     STA ram_00A5,X
- - - - - - 0x003CA1 00:FC91: F0 D6     BEQ bra_FC69_loop
bra_FC93:
C - - - - - 0x003CA3 00:FC93: A9 04     LDA #$04
C - - - - - 0x003CA5 00:FC95: 85 90     STA ram_0090
C - - - - - 0x003CA7 00:FC97: A9 02     LDA #$02
C - - - - - 0x003CA9 00:FC99: 85 91     STA ram_0091
C - - - - - 0x003CAB 00:FC9B: A9 00     LDA #$00
C - - - - - 0x003CAD 00:FC9D: 85 92     STA ram_0092
C - - - - - 0x003CAF 00:FC9F: 20 C0 FC  JSR sub_FCC0
C - - - - - 0x003CB2 00:FCA2: A9 08     LDA #$08
C - - - - - 0x003CB4 00:FCA4: 85 90     STA ram_0090
C - - - - - 0x003CB6 00:FCA6: A9 02     LDA #$02
C - - - - - 0x003CB8 00:FCA8: 85 91     STA ram_0091
C - - - - - 0x003CBA 00:FCAA: A9 20     LDA #$20
C - - - - - 0x003CBC 00:FCAC: 85 92     STA ram_0092
C - - - - - 0x003CBE 00:FCAE: 20 C0 FC  JSR sub_FCC0
C - - - - - 0x003CC1 00:FCB1: A9 00     LDA #$00
C - - - - - 0x003CC3 00:FCB3: 85 90     STA ram_0090
C - - - - - 0x003CC5 00:FCB5: A9 02     LDA #$02
C - - - - - 0x003CC7 00:FCB7: 85 91     STA ram_0091
C - - - - - 0x003CC9 00:FCB9: A9 40     LDA #$40
C - - - - - 0x003CCB 00:FCBB: 85 92     STA ram_0092
C - - - - - 0x003CCD 00:FCBD: 4C C0 FC  JMP loc_FCC0



sub_FCC0:
loc_FCC0:
C D 3 - - - 0x003CD0 00:FCC0: A0 03     LDY #$03
C - - - - - 0x003CD2 00:FCC2: B1 90     LDA (ram_0090),Y
C - - - - - 0x003CD4 00:FCC4: 29 0C     AND #$0C
C - - - - - 0x003CD6 00:FCC6: 0A        ASL
C - - - - - 0x003CD7 00:FCC7: 18        CLC
C - - - - - 0x003CD8 00:FCC8: 65 92     ADC ram_0092
C - - - - - 0x003CDA 00:FCCA: AA        TAX
C - - - - - 0x003CDB 00:FCCB: A0 00     LDY #$00
bra_FCCD_loop:
C - - - - - 0x003CDD 00:FCCD: BD 47 FD  LDA tbl_FD47,X
C - - - - - 0x003CE0 00:FCD0: 91 90     STA (ram_0090),Y
C - - - - - 0x003CE2 00:FCD2: C8        INY
C - - - - - 0x003CE3 00:FCD3: E8        INX
C - - - - - 0x003CE4 00:FCD4: C0 03     CPY #$03
C - - - - - 0x003CE6 00:FCD6: D0 F5     BNE bra_FCCD_loop
loc_FCD8:
C D 3 - - - 0x003CE8 00:FCD8: C8        INY
C - - - - - 0x003CE9 00:FCD9: E8        INX
C - - - - - 0x003CEA 00:FCDA: C0 0D     CPY #$0D
C - - - - - 0x003CEC 00:FCDC: F0 0F     BEQ bra_FCED
C - - - - - 0x003CEE 00:FCDE: A0 00     LDY #$00
C - - - - - 0x003CF0 00:FCE0: BD 47 FD  LDA tbl_FD47,X
C - - - - - 0x003CF3 00:FCE3: 18        CLC
C - - - - - 0x003CF4 00:FCE4: 71 90     ADC (ram_0090),Y
C - - - - - 0x003CF6 00:FCE6: A0 0C     LDY #$0C
C - - - - - 0x003CF8 00:FCE8: 91 90     STA (ram_0090),Y
C - - - - - 0x003CFA 00:FCEA: 4C D8 FC  JMP loc_FCD8
bra_FCED:
C - - - - - 0x003CFD 00:FCED: BD 47 FD  LDA tbl_FD47,X
C - - - - - 0x003D00 00:FCF0: 91 90     STA (ram_0090),Y
C - - - - - 0x003D02 00:FCF2: C8        INY
C - - - - - 0x003D03 00:FCF3: E8        INX
C - - - - - 0x003D04 00:FCF4: C0 0F     CPY #$0F
C - - - - - 0x003D06 00:FCF6: D0 F5     BNE bra_FCED
C - - - - - 0x003D08 00:FCF8: A0 03     LDY #$03
C - - - - - 0x003D0A 00:FCFA: BD 47 FD  LDA tbl_FD47,X
C - - - - - 0x003D0D 00:FCFD: 18        CLC
C - - - - - 0x003D0E 00:FCFE: 71 90     ADC (ram_0090),Y
C - - - - - 0x003D10 00:FD00: A0 0F     LDY #$0F
C - - - - - 0x003D12 00:FD02: 91 90     STA (ram_0090),Y
C - - - - - 0x003D14 00:FD04: 60        RTS



tbl_FD05:
- D 3 - - - 0x003D15 00:FD05: 07 FD     .word off_FD07
off_FD07:
- D 3 - I - 0x003D17 00:FD07: 31        .byte $31   ; 
- D 3 - I - 0x003D18 00:FD08: 10        .byte $10   ; 
- D 3 - I - 0x003D19 00:FD09: 62        .byte $62   ; 
- D 3 - I - 0x003D1A 00:FD0A: 1D        .byte $1D   ; 
- D 3 - I - 0x003D1B 00:FD0B: F8        .byte $F8   ; 
- D 3 - I - 0x003D1C 00:FD0C: 9A        .byte $9A   ; 
- D 3 - I - 0x003D1D 00:FD0D: 5C        .byte $5C   ; 
- D 3 - I - 0x003D1E 00:FD0E: F1        .byte $F1   ; 
- D 3 - I - 0x003D1F 00:FD0F: 32        .byte $32   ; 
- D 3 - I - 0x003D20 00:FD10: B4        .byte $B4   ; 
- D 3 - I - 0x003D21 00:FD11: 5D        .byte $5D   ; 
- D 3 - I - 0x003D22 00:FD12: B2        .byte $B2   ; 
- D 3 - I - 0x003D23 00:FD13: DC        .byte $DC   ; 
- D 3 - I - 0x003D24 00:FD14: DD        .byte $DD   ; 
- D 3 - I - 0x003D25 00:FD15: 1C        .byte $1C   ; 
- D 3 - I - 0x003D26 00:FD16: B2        .byte $B2   ; 
- D 3 - I - 0x003D27 00:FD17: E1        .byte $E1   ; 
- D 3 - I - 0x003D28 00:FD18: 9E        .byte $9E   ; 
- D 3 - I - 0x003D29 00:FD19: E0        .byte $E0   ; 
- D 3 - I - 0x003D2A 00:FD1A: AE        .byte $AE   ; 
- D 3 - I - 0x003D2B 00:FD1B: A1        .byte $A1   ; 
- D 3 - I - 0x003D2C 00:FD1C: F0        .byte $F0   ; 
- D 3 - I - 0x003D2D 00:FD1D: E9        .byte $E9   ; 
- D 3 - I - 0x003D2E 00:FD1E: 28        .byte $28   ; 
- D 3 - I - 0x003D2F 00:FD1F: 22        .byte $22   ; 
- D 3 - I - 0x003D30 00:FD20: 69        .byte $69   ; 
- D 3 - I - 0x003D31 00:FD21: 5C        .byte $5C   ; 
- D 3 - I - 0x003D32 00:FD22: 50        .byte $50   ; 
- - - - - - 0x003D33 00:FD23: 21        .byte $21   ; 
- - - - - - 0x003D34 00:FD24: AE        .byte $AE   ; 
- - - - - - 0x003D35 00:FD25: 70        .byte $70   ; 
- - - - - - 0x003D36 00:FD26: AE        .byte $AE   ; 
- - - - - - 0x003D37 00:FD27: A9        .byte $A9   ; 
- - - - - - 0x003D38 00:FD28: A8        .byte $A8   ; 
- - - - - - 0x003D39 00:FD29: E1        .byte $E1   ; 
- - - - - - 0x003D3A 00:FD2A: 9C        .byte $9C   ; 
- - - - - - 0x003D3B 00:FD2B: 52        .byte $52   ; 
- - - - - - 0x003D3C 00:FD2C: 61        .byte $61   ; 
- - - - - - 0x003D3D 00:FD2D: DC        .byte $DC   ; 
- - - - - - 0x003D3E 00:FD2E: 92        .byte $92   ; 



tbl_FD2F_oam_data:
- D 3 - - - 0x003D3F 00:FD2F: 98        .byte $98, $C8, $20, $F8   ; 
- D 3 - - - 0x003D43 00:FD33: AA        .byte $AA, $C3, $20, $F8   ; 
- D 3 - - - 0x003D47 00:FD37: B6        .byte $B6, $C8, $20, $F8   ; 
- D 3 - - - 0x003D4B 00:FD3B: 98        .byte $98, $C7, $20, $F8   ; 
- D 3 - - - 0x003D4F 00:FD3F: AA        .byte $AA, $C4, $20, $F8   ; 
- D 3 - - - 0x003D53 00:FD43: B6        .byte $B6, $C7, $20, $F8   ; 



tbl_FD47:
- D 3 - - - 0x003D57 00:FD47: AA        .byte $AA   ; 
- D 3 - - - 0x003D58 00:FD48: C4        .byte $C4   ; 
- D 3 - - - 0x003D59 00:FD49: 20        .byte $20   ; 
- - - - - - 0x003D5A 00:FD4A: 00        .byte $00   ; 
- D 3 - - - 0x003D5B 00:FD4B: 00        .byte $00   ; 
- D 3 - - - 0x003D5C 00:FD4C: C3        .byte $C3   ; 
- D 3 - - - 0x003D5D 00:FD4D: 20        .byte $20   ; 
- D 3 - - - 0x003D5E 00:FD4E: F8        .byte $F8   ; 
- D 3 - - - 0x003D5F 00:FD4F: AA        .byte $AA   ; 
- D 3 - - - 0x003D60 00:FD50: 59        .byte $59   ; 
- D 3 - - - 0x003D61 00:FD51: E0        .byte $E0   ; 
- - - - - - 0x003D62 00:FD52: 00        .byte $00   ; 
- D 3 - - - 0x003D63 00:FD53: 08        .byte $08   ; 
- D 3 - - - 0x003D64 00:FD54: 58        .byte $58   ; 
- D 3 - - - 0x003D65 00:FD55: E0        .byte $E0   ; 
- D 3 - - - 0x003D66 00:FD56: 00        .byte $00   ; 
- D 3 - - - 0x003D67 00:FD57: AA        .byte $AA   ; 
- D 3 - - - 0x003D68 00:FD58: C4        .byte $C4   ; 
- D 3 - - - 0x003D69 00:FD59: E0        .byte $E0   ; 
- - - - - - 0x003D6A 00:FD5A: 00        .byte $00   ; 
- D 3 - - - 0x003D6B 00:FD5B: 00        .byte $00   ; 
- D 3 - - - 0x003D6C 00:FD5C: C3        .byte $C3   ; 
- D 3 - - - 0x003D6D 00:FD5D: E0        .byte $E0   ; 
- D 3 - - - 0x003D6E 00:FD5E: 08        .byte $08   ; 
- D 3 - - - 0x003D6F 00:FD5F: AA        .byte $AA   ; 
- D 3 - - - 0x003D70 00:FD60: 59        .byte $59   ; 
- D 3 - - - 0x003D71 00:FD61: 20        .byte $20   ; 
- - - - - - 0x003D72 00:FD62: 00        .byte $00   ; 
- D 3 - - - 0x003D73 00:FD63: F8        .byte $F8   ; 
- D 3 - - - 0x003D74 00:FD64: 58        .byte $58   ; 
- D 3 - - - 0x003D75 00:FD65: 20        .byte $20   ; 
- D 3 - - - 0x003D76 00:FD66: 00        .byte $00   ; 
- D 3 - - - 0x003D77 00:FD67: B4        .byte $B4   ; 
- D 3 - - - 0x003D78 00:FD68: C5        .byte $C5   ; 
- D 3 - - - 0x003D79 00:FD69: 20        .byte $20   ; 
- - - - - - 0x003D7A 00:FD6A: 00        .byte $00   ; 
- D 3 - - - 0x003D7B 00:FD6B: 00        .byte $00   ; 
- D 3 - - - 0x003D7C 00:FD6C: C6        .byte $C6   ; 
- D 3 - - - 0x003D7D 00:FD6D: 20        .byte $20   ; 
- D 3 - - - 0x003D7E 00:FD6E: 06        .byte $06   ; 
- D 3 - - - 0x003D7F 00:FD6F: B2        .byte $B2   ; 
- D 3 - - - 0x003D80 00:FD70: C7        .byte $C7   ; 
- D 3 - - - 0x003D81 00:FD71: 20        .byte $20   ; 
- - - - - - 0x003D82 00:FD72: 00        .byte $00   ; 
- D 3 - - - 0x003D83 00:FD73: 00        .byte $00   ; 
- D 3 - - - 0x003D84 00:FD74: C7        .byte $C7   ; 
- D 3 - - - 0x003D85 00:FD75: 60        .byte $60   ; 
- D 3 - - - 0x003D86 00:FD76: 06        .byte $06   ; 
- D 3 - - - 0x003D87 00:FD77: B4        .byte $B4   ; 
- D 3 - - - 0x003D88 00:FD78: C6        .byte $C6   ; 
- D 3 - - - 0x003D89 00:FD79: 60        .byte $60   ; 
- - - - - - 0x003D8A 00:FD7A: 00        .byte $00   ; 
- D 3 - - - 0x003D8B 00:FD7B: 00        .byte $00   ; 
- D 3 - - - 0x003D8C 00:FD7C: C5        .byte $C5   ; 
- D 3 - - - 0x003D8D 00:FD7D: 60        .byte $60   ; 
- D 3 - - - 0x003D8E 00:FD7E: 06        .byte $06   ; 
- D 3 - - - 0x003D8F 00:FD7F: B7        .byte $B7   ; 
- D 3 - - - 0x003D90 00:FD80: C7        .byte $C7   ; 
- D 3 - - - 0x003D91 00:FD81: A0        .byte $A0   ; 
- - - - - - 0x003D92 00:FD82: 00        .byte $00   ; 
- D 3 - - - 0x003D93 00:FD83: 00        .byte $00   ; 
- D 3 - - - 0x003D94 00:FD84: C7        .byte $C7   ; 
- D 3 - - - 0x003D95 00:FD85: E0        .byte $E0   ; 
- D 3 - - - 0x003D96 00:FD86: 06        .byte $06   ; 
- D 3 - - - 0x003D97 00:FD87: 98        .byte $98   ; 
- D 3 - - - 0x003D98 00:FD88: C5        .byte $C5   ; 
- D 3 - - - 0x003D99 00:FD89: 20        .byte $20   ; 
- - - - - - 0x003D9A 00:FD8A: 00        .byte $00   ; 
- D 3 - - - 0x003D9B 00:FD8B: 00        .byte $00   ; 
- D 3 - - - 0x003D9C 00:FD8C: C6        .byte $C6   ; 
- D 3 - - - 0x003D9D 00:FD8D: 20        .byte $20   ; 
- D 3 - - - 0x003D9E 00:FD8E: 06        .byte $06   ; 
- D 3 - - - 0x003D9F 00:FD8F: 96        .byte $96   ; 
- D 3 - - - 0x003DA0 00:FD90: C7        .byte $C7   ; 
- D 3 - - - 0x003DA1 00:FD91: 20        .byte $20   ; 
- - - - - - 0x003DA2 00:FD92: 00        .byte $00   ; 
- D 3 - - - 0x003DA3 00:FD93: 00        .byte $00   ; 
- D 3 - - - 0x003DA4 00:FD94: C7        .byte $C7   ; 
- D 3 - - - 0x003DA5 00:FD95: 60        .byte $60   ; 
- D 3 - - - 0x003DA6 00:FD96: 06        .byte $06   ; 
- D 3 - - - 0x003DA7 00:FD97: 98        .byte $98   ; 
- D 3 - - - 0x003DA8 00:FD98: C6        .byte $C6   ; 
- D 3 - - - 0x003DA9 00:FD99: 60        .byte $60   ; 
- - - - - - 0x003DAA 00:FD9A: 00        .byte $00   ; 
- D 3 - - - 0x003DAB 00:FD9B: 00        .byte $00   ; 
- D 3 - - - 0x003DAC 00:FD9C: C5        .byte $C5   ; 
- D 3 - - - 0x003DAD 00:FD9D: 60        .byte $60   ; 
- D 3 - - - 0x003DAE 00:FD9E: 06        .byte $06   ; 
- D 3 - - - 0x003DAF 00:FD9F: 9B        .byte $9B   ; 
- D 3 - - - 0x003DB0 00:FDA0: C7        .byte $C7   ; 
- D 3 - - - 0x003DB1 00:FDA1: A0        .byte $A0   ; 
- - - - - - 0x003DB2 00:FDA2: 00        .byte $00   ; 
- D 3 - - - 0x003DB3 00:FDA3: 00        .byte $00   ; 
- D 3 - - - 0x003DB4 00:FDA4: C7        .byte $C7   ; 
- D 3 - - - 0x003DB5 00:FDA5: E0        .byte $E0   ; 
- D 3 - - - 0x003DB6 00:FDA6: 06        .byte $06   ; 



sub_FDA7:
C - - - - - 0x003DB7 00:FDA7: A9 08     LDA #$08
C - - - - - 0x003DB9 00:FDA9: 20 AB C3  JSR sub_C3AB
C - - - - - 0x003DBC 00:FDAC: A9 1A     LDA #$1A
C - - - - - 0x003DBE 00:FDAE: 20 57 C4  JSR sub_C457
C - - - - - 0x003DC1 00:FDB1: A9 20     LDA #$20
C - - - - - 0x003DC3 00:FDB3: 20 57 C4  JSR sub_C457
C - - - - - 0x003DC6 00:FDB6: 60        RTS



sub_FDB7:
C - - - - - 0x003DC7 00:FDB7: A9 06     LDA #$06
C - - - - - 0x003DC9 00:FDB9: 4C 57 C4  JMP loc_C457



sub_FDBC:
C - - - - - 0x003DCC 00:FDBC: A2 69     LDX #$69
C - - - - - 0x003DCE 00:FDBE: A9 00     LDA #$00
bra_FDC0_loop:
C - - - - - 0x003DD0 00:FDC0: 95 00     STA ram_0069 - $69,X
C - - - - - 0x003DD2 00:FDC2: E8        INX
C - - - - - 0x003DD3 00:FDC3: E0 F0     CPX #$F0
C - - - - - 0x003DD5 00:FDC5: D0 F9     BNE bra_FDC0_loop
C - - - - - 0x003DD7 00:FDC7: 85 0E     STA ram_000E
C - - - - - 0x003DD9 00:FDC9: 8D 03 02  STA ram_spr_X
C - - - - - 0x003DDC 00:FDCC: 8D 07 02  STA ram_spr_X + $04
C - - - - - 0x003DDF 00:FDCF: 8D 0B 02  STA ram_spr_X + $08
C - - - - - 0x003DE2 00:FDD2: A2 01     LDX #$01
C - - - - - 0x003DE4 00:FDD4: 86 BC     STX ram_00BC
C - - - - - 0x003DE6 00:FDD6: CA        DEX
C - - - - - 0x003DE7 00:FDD7: 86 72     STX ram_enemy_facing_direction
C - - - - - 0x003DE9 00:FDD9: A9 BF     LDA #$BF
C - - - - - 0x003DEB 00:FDDB: 85 BA     STA ram_pos_Y_player
C - - - - - 0x003DED 00:FDDD: 85 CA     STA ram_00CA
C - - - - - 0x003DEF 00:FDDF: A9 40     LDA #$40
C - - - - - 0x003DF1 00:FDE1: 85 E6     STA ram_00E6
C - - - - - 0x003DF3 00:FDE3: 8D 02 07  STA ram_0702
C - - - - - 0x003DF6 00:FDE6: 85 DD     STA ram_hit_timer
C - - - - - 0x003DF8 00:FDE8: A6 64     LDX ram_0064
C - - - - - 0x003DFA 00:FDEA: F0 02     BEQ bra_FDEE
C - - - - - 0x003DFC 00:FDEC: A9 80     LDA #$80
bra_FDEE:
C - - - - - 0x003DFE 00:FDEE: 85 BB     STA ram_pos_X_player
C - - - - - 0x003E00 00:FDF0: A9 A0     LDA #$A0
C - - - - - 0x003E02 00:FDF2: 85 71     STA ram_0071
C - - - - - 0x003E04 00:FDF4: 85 CB     STA ram_00CB
C - - - - - 0x003E06 00:FDF6: A9 40     LDA #$40
C - - - - - 0x003E08 00:FDF8: 85 DD     STA ram_hit_timer
C - - - - - 0x003E0A 00:FDFA: A9 07     LDA #$07
C - - - - - 0x003E0C 00:FDFC: 8D 00 07  STA ram_0700
C - - - - - 0x003E0F 00:FDFF: A5 64     LDA ram_0064
C - - - - - 0x003E11 00:FE01: F0 03     BEQ bra_FE06
C - - - - - 0x003E13 00:FE03: 4C 56 FE  JMP loc_FE56
bra_FE06:
C - - - - - 0x003E16 00:FE06: A5 68     LDA ram_enemy_type
C - - - - - 0x003E18 00:FE08: 20 E9 D0  JSR sub_D0E9_read_pointers_after_JSR
- D 3 - I - 0x003E1B 00:FE0B: 15 FE     .word ofs_011_FE15_00
- D 3 - I - 0x003E1D 00:FE0D: 1A FE     .word ofs_011_FE1A_01
- D 3 - I - 0x003E1F 00:FE0F: 34 FE     .word ofs_011_FE34_02
- D 3 - I - 0x003E21 00:FE11: 38 FE     .word ofs_011_FE38_03
- D 3 - I - 0x003E23 00:FE13: 52 FE     .word ofs_011_FE52_04



ofs_011_FE15_00:
C - - J - - 0x003E25 00:FE15: A9 0C     LDA #$0C
bra_FE17:
C - - - - - 0x003E27 00:FE17: 4C 57 C4  JMP loc_C457



ofs_011_FE1A_01:
C - - J - - 0x003E2A 00:FE1A: A9 00     LDA #$00
C - - - - - 0x003E2C 00:FE1C: 8D 03 02  STA ram_spr_X
C - - - - - 0x003E2F 00:FE1F: 8D 07 02  STA ram_spr_X + $04
C - - - - - 0x003E32 00:FE22: 8D 0B 02  STA ram_spr_X + $08
C - - - - - 0x003E35 00:FE25: A9 CA     LDA #$CA
C - - - - - 0x003E37 00:FE27: 8D 01 02  STA ram_spr_T
C - - - - - 0x003E3A 00:FE2A: 8D 05 02  STA ram_spr_T + $04
C - - - - - 0x003E3D 00:FE2D: 8D 09 02  STA ram_spr_T + $08
C - - - - - 0x003E40 00:FE30: A9 0D     LDA #$0D
C - - - - - 0x003E42 00:FE32: D0 E3     BNE bra_FE17



ofs_011_FE34_02:
C - - J - - 0x003E44 00:FE34: A9 0E     LDA #$0E
C - - - - - 0x003E46 00:FE36: D0 DF     BNE bra_FE17



ofs_011_FE38_03:
C - - J - - 0x003E48 00:FE38: A9 00     LDA #$00
C - - - - - 0x003E4A 00:FE3A: 8D 02 02  STA ram_spr_A
C - - - - - 0x003E4D 00:FE3D: 8D 06 02  STA ram_spr_A + $04
C - - - - - 0x003E50 00:FE40: 8D 0A 02  STA ram_spr_A + $08
C - - - - - 0x003E53 00:FE43: A9 D0     LDA #$D0
C - - - - - 0x003E55 00:FE45: 8D 01 02  STA ram_spr_T
C - - - - - 0x003E58 00:FE48: 8D 05 02  STA ram_spr_T + $04
C - - - - - 0x003E5B 00:FE4B: 8D 09 02  STA ram_spr_T + $08
C - - - - - 0x003E5E 00:FE4E: A9 0F     LDA #$0F
C - - - - - 0x003E60 00:FE50: D0 C5     BNE bra_FE17



ofs_011_FE52_04:
C - - J - - 0x003E62 00:FE52: A9 10     LDA #$10
C - - - - - 0x003E64 00:FE54: D0 C1     BNE bra_FE17



loc_FE56:
C D 3 - - - 0x003E66 00:FE56: A9 0B     LDA #$0B
C - - - - - 0x003E68 00:FE58: A0 01     LDY #$01
C - - - - - 0x003E6A 00:FE5A: 20 85 C4  JSR sub_C485
C - - - - - 0x003E6D 00:FE5D: A9 2F     LDA #$2F
C - - - - - 0x003E6F 00:FE5F: 4C AB C3  JMP loc_C3AB


; bzk garbage
- - - - - - 0x003E72 00:FE62: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E80 00:FE70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E90 00:FE80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003EA0 00:FE90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003EB0 00:FEA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003EC0 00:FEB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003ED0 00:FEC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003EE0 00:FED0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003EF0 00:FEE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F00 00:FEF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F10 00:FF00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F20 00:FF10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F30 00:FF20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F40 00:FF30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F50 00:FF40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F60 00:FF50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F70 00:FF60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F80 00:FF70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



tbl_FF80:
- - - - - - 0x003F90 00:FF80: 93 C9     .word _off003_C993_00
- - - - - - 0x003F92 00:FF82: 9B C9     .word _off003_C99B_01
- - - - - - 0x003F94 00:FF84: A1 C9     .word _off003_C9A1_02
- D 3 - I - 0x003F96 00:FF86: A7 C9     .word _off003_C9A7_03
- D 3 - I - 0x003F98 00:FF88: F5 C9     .word _off003_C9F5_04
- - - - - - 0x003F9A 00:FF8A: 06 CA     .word _off003_CA06_05
- D 3 - I - 0x003F9C 00:FF8C: 57 CA     .word _off003_CA57_06
- D 3 - I - 0x003F9E 00:FF8E: A7 C9     .word _off003_C9A7_07
- D 3 - I - 0x003FA0 00:FF90: 8C C9     .word _off003_C98C_08
- - - - - - 0x003FA2 00:FF92: 11 CA     .word _off003_CA11_09
- D 3 - I - 0x003FA4 00:FF94: 4B CA     .word _off003_CA4B_0A
- D 3 - I - 0x003FA6 00:FF96: 28 CB     .word _off003_CB28_0B
- D 3 - I - 0x003FA8 00:FF98: 21 CA     .word _off003_CA21_0C
- D 3 - I - 0x003FAA 00:FF9A: 2A CA     .word _off003_CA2A_0D
- D 3 - I - 0x003FAC 00:FF9C: 32 CA     .word _off003_CA32_0E
- D 3 - I - 0x003FAE 00:FF9E: 3B CA     .word _off003_CA3B_0F
- D 3 - I - 0x003FB0 00:FFA0: 44 CA     .word _off003_CA44_10
- - - - - - 0x003FB2 00:FFA2: 6B CA     .word _off003_CA6B_11
- - - - - - 0x003FB4 00:FFA4: BA CA     .word _off003_CABA_12
- D 3 - I - 0x003FB6 00:FFA6: EC CA     .word _off003_CAEC_13
- D 3 - I - 0x003FB8 00:FFA8: B5 CA     .word _off003_CAB5_14
- D 3 - I - 0x003FBA 00:FFAA: E1 CA     .word _off003_CAE1_15
- D 3 - I - 0x003FBC 00:FFAC: D6 CA     .word _off003_CAD6_16
- D 3 - I - 0x003FBE 00:FFAE: 8A CA     .word _off003_CA8A_17
- D 3 - I - 0x003FC0 00:FFB0: C2 CA     .word _off003_CAC2_18
- D 3 - I - 0x003FC2 00:FFB2: CC CA     .word _off003_CACC_19
- D 3 - I - 0x003FC4 00:FFB4: 78 CA     .word _off003_CA78_1A
- D 3 - I - 0x003FC6 00:FFB6: 93 CA     .word _off003_CA93_1B
- D 3 - I - 0x003FC8 00:FFB8: F1 CA     .word _off003_CAF1_1C
- D 3 - I - 0x003FCA 00:FFBA: F6 CA     .word _off003_CAF6_1D
- - - - - - 0x003FCC 00:FFBC: CC CA     .word _off003_CACC_1E
- - - - - - 0x003FCE 00:FFBE: D6 CA     .word _off003_CAD6_1F
- D 3 - I - 0x003FD0 00:FFC0: 81 CA     .word _off003_CA81_20
- - - - - - 0x003FD2 00:FFC2: FB CA     .word _off003_CAFB_21
- - - - - - 0x003FD4 00:FFC4: FE C9     .word _off003_C9FE_22
- - - - - - 0x003FD6 00:FFC6: CB C9     .word _off003_C9CB_23
- D 3 - I - 0x003FD8 00:FFC8: 00 CB     .word _off003_CB00_24
- D 3 - I - 0x003FDA 00:FFCA: 09 CB     .word _off003_CB09_25
- - - - - - 0x003FDC 00:FFCC: 10 CB     .word _off003_CB10_26
- - - - - - 0x003FDE 00:FFCE: 18 CB     .word _off003_CB18_27
- D 3 - I - 0x003FE0 00:FFD0: 21 CB     .word _off003_CB21_28
- D 3 - I - 0x003FE2 00:FFD2: A2 CA     .word _off003_CAA2_29
- D 3 - I - 0x003FE4 00:FFD4: B0 CA     .word _off003_CAB0_2A
- - - - - - 0x003FE6 00:FFD6: B5 CA     .word _off003_CAB5_2B
- D 3 - I - 0x003FE8 00:FFD8: 39 CB     .word _off003_CB39_2C
- - - - - - 0x003FEA 00:FFDA: B5 CA     .word _off003_CAB5_2D
- - - - - - 0x003FEC 00:FFDC: B5 CA     .word _off003_CAB5_2E
- D 3 - I - 0x003FEE 00:FFDE: 69 C9     .word _off003_C969_2F


; bzk мусор
- - - - - - 0x003FF0 00:FFE0: FF        .byte $FF   ; 
- - - - - - 0x003FF1 00:FFE1: FF        .byte $FF   ; 
- - - - - - 0x003FF2 00:FFE2: FF        .byte $FF   ; 
- - - - - - 0x003FF3 00:FFE3: FF        .byte $FF   ; 
- - - - - - 0x003FF4 00:FFE4: FF        .byte $FF   ; 
- - - - - - 0x003FF5 00:FFE5: FF        .byte $FF   ; 
- - - - - - 0x003FF6 00:FFE6: FF        .byte $FF   ; 
- - - - - - 0x003FF7 00:FFE7: FF        .byte $FF   ; 
- - - - - - 0x003FF8 00:FFE8: FF        .byte $FF   ; 
- - - - - - 0x003FF9 00:FFE9: FF        .byte $FF   ; 
- - - - - - 0x003FFA 00:FFEA: FF        .byte $FF   ; 
- - - - - - 0x003FFB 00:FFEB: FF        .byte $FF   ; 
- - - - - - 0x003FFC 00:FFEC: FF        .byte $FF   ; 
- - - - - - 0x003FFD 00:FFED: FF        .byte $FF   ; 
- - - - - - 0x003FFE 00:FFEE: FF        .byte $FF   ; 
- - - - - - 0x003FFF 00:FFEF: FF        .byte $FF   ; 
- - - - - - 0x004000 00:FFF0: FF        .byte $FF   ; 
- - - - - - 0x004001 00:FFF1: FF        .byte $FF   ; 
- - - - - - 0x004002 00:FFF2: FF        .byte $FF   ; 
- - - - - - 0x004003 00:FFF3: FF        .byte $FF   ; 
- - - - - - 0x004004 00:FFF4: FF        .byte $FF   ; 
- - - - - - 0x004005 00:FFF5: FF        .byte $FF   ; 
- - - - - - 0x004006 00:FFF6: FF        .byte $FF   ; 



tbl_FFF7:
- D 3 - - - 0x004007 00:FFF7: 03        .byte $03   ; 
- D 3 - - - 0x004008 00:FFF8: 01        .byte $01   ; 
- D 3 - - - 0x004009 00:FFF9: 03        .byte $03   ; 



.segment "VECTORS"
- D 3 - - - 0x00400A 00:FFFA: 70 C0     .word vec_C070_NMI
- D 3 - - - 0x00400C 00:FFFC: 10 C0     .word vec_C010_RESET
- - - - - - 0x00400E 00:FFFE: 04 C1     .word vec_C104_IRQ



