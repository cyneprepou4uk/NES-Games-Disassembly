.segment "BANK_FF"
.include "bank_ram.inc"
.include "bank_val.inc"
.org $C000  ; for listing file
; 0x000010-0x00400F



vec_C000_RESET:
vec_C000_IRQ:
C - - - - - 0x000010 00:C000: D8        CLD
C - - - - - 0x000011 00:C001: 78        SEI
bra_C002_loop:
C - - - - - 0x000012 00:C002: AD 02 20  LDA $2002
C - - - - - 0x000015 00:C005: 10 FB     BPL bra_C002_loop
C - - - - - 0x000017 00:C007: A2 00     LDX #$00
C - - - - - 0x000019 00:C009: 8E 00 20  STX $2000
C - - - - - 0x00001C 00:C00C: 8E 01 20  STX $2001
C - - - - - 0x00001F 00:C00F: CA        DEX
C - - - - - 0x000020 00:C010: 9A        TXS
C - - - - - 0x000021 00:C011: A6 27     LDX ram_0027
C - - - - - 0x000023 00:C013: A0 06     LDY #$06
C - - - - - 0x000025 00:C015: 84 02     STY ram_0002
C - - - - - 0x000027 00:C017: A0 00     LDY #$00
C - - - - - 0x000029 00:C019: 84 01     STY ram_0001
C - - - - - 0x00002B 00:C01B: A9 00     LDA #$00
bra_C01D_loop:
C - - - - - 0x00002D 00:C01D: 91 01     STA (ram_0001),Y
C - - - - - 0x00002F 00:C01F: 88        DEY
C - - - - - 0x000030 00:C020: D0 FB     BNE bra_C01D_loop
C - - - - - 0x000032 00:C022: C6 02     DEC ram_0002
C - - - - - 0x000034 00:C024: 10 F7     BPL bra_C01D_loop
C - - - - - 0x000036 00:C026: 8A        TXA
C - - - - - 0x000037 00:C027: D0 02     BNE bra_C02B
C - - - - - 0x000039 00:C029: A2 5F     LDX #$5F
bra_C02B:
C - - - - - 0x00003B 00:C02B: 8E 00 05  STX ram_random
C - - - - - 0x00003E 00:C02E: 20 95 C1  JSR sub_C195
C - - - - - 0x000041 00:C031: 20 A5 C1  JSR sub_C1A5_hide_all_sprites
C - - - - - 0x000044 00:C034: A0 00     LDY #$00
C - - - - - 0x000046 00:C036: 8D 05 20  STA $2005
C - - - - - 0x000049 00:C039: 8D 05 20  STA $2005
C - - - - - 0x00004C 00:C03C: C8        INY
C - - - - - 0x00004D 00:C03D: 84 38     STY ram_0038
C - - - - - 0x00004F 00:C03F: A9 0F     LDA #$0F
C - - - - - 0x000051 00:C041: 8D 15 40  STA $4015
C - - - - - 0x000054 00:C044: A9 90     LDA #$90
C - - - - - 0x000056 00:C046: 8D 00 20  STA $2000
C - - - - - 0x000059 00:C049: 85 09     STA ram_for_2000
C - - - - - 0x00005B 00:C04B: A9 06     LDA #$06
C - - - - - 0x00005D 00:C04D: 85 0A     STA ram_for_2001
loc_C04F:
C D 2 - - - 0x00005F 00:C04F: A9 00     LDA #$00
C - - - - - 0x000061 00:C051: 85 30     STA ram_0030
C - - - - - 0x000063 00:C053: A5 38     LDA ram_0038
C - - - - - 0x000065 00:C055: F0 06     BEQ bra_C05D
C - - - - - 0x000067 00:C057: A5 3E     LDA ram_003E
C - - - - - 0x000069 00:C059: C9 01     CMP #$01
C - - - - - 0x00006B 00:C05B: D0 03     BNE bra_C060
bra_C05D:
C - - - - - 0x00006D 00:C05D: 20 F7 FF  JSR sub_FFF7
bra_C060:
C - - - - - 0x000070 00:C060: 20 75 C3  JSR sub_C375
C - - - - - 0x000073 00:C063: 20 AA C0  JSR sub_C0AA
C - - - - - 0x000076 00:C066: A9 01     LDA #$01
C - - - - - 0x000078 00:C068: 85 32     STA ram_0032
loc_C06A:
C D 2 - - - 0x00007A 00:C06A: A5 30     LDA ram_0030
C - - - - - 0x00007C 00:C06C: F0 09     BEQ bra_C077
C - - - - - 0x00007E 00:C06E: E6 27     INC ram_0027
C - - - - - 0x000080 00:C070: A9 00     LDA #$00
C - - - - - 0x000082 00:C072: 85 32     STA ram_0032
C - - - - - 0x000084 00:C074: 4C 4F C0  JMP loc_C04F
bra_C077:
C - - - - - 0x000087 00:C077: 20 56 C4  JSR sub_C456_roll_rng
C - - - - - 0x00008A 00:C07A: 4C 6A C0  JMP loc_C06A



vec_C07D_NMI:
C - - - - - 0x00008D 00:C07D: 48        PHA
C - - - - - 0x00008E 00:C07E: 8A        TXA
C - - - - - 0x00008F 00:C07F: 48        PHA
C - - - - - 0x000090 00:C080: 98        TYA
C - - - - - 0x000091 00:C081: 48        PHA
C - - - - - 0x000092 00:C082: A9 00     LDA #$00
C - - - - - 0x000094 00:C084: 8D 03 20  STA $2003
C - - - - - 0x000097 00:C087: A9 02     LDA #$02
C - - - - - 0x000099 00:C089: 8D 14 40  STA $4014
C - - - - - 0x00009C 00:C08C: A5 32     LDA ram_0032
C - - - - - 0x00009E 00:C08E: F0 10     BEQ bra_C0A0
C - - - - - 0x0000A0 00:C090: 20 B5 C1  JSR sub_C1B5_write_palette
C - - - - - 0x0000A3 00:C093: 20 EC C2  JSR sub_C2EC_write_buffer_to_ppu
C - - - - - 0x0000A6 00:C096: 20 FD C3  JSR sub_C3FD_set_scroll
C - - - - - 0x0000A9 00:C099: 20 A4 C2  JSR sub_C2A4_read_joystick_registers
C - - - - - 0x0000AC 00:C09C: A0 01     LDY #$01
C - - - - - 0x0000AE 00:C09E: 84 30     STY ram_0030
bra_C0A0:
C - - - - - 0x0000B0 00:C0A0: A9 01     LDA #$01
C - - - - - 0x0000B2 00:C0A2: 85 33     STA ram_nmi_trigger_flag
C - - - - - 0x0000B4 00:C0A4: 68        PLA
C - - - - - 0x0000B5 00:C0A5: A8        TAY
C - - - - - 0x0000B6 00:C0A6: 68        PLA
C - - - - - 0x0000B7 00:C0A7: AA        TAX
C - - - - - 0x0000B8 00:C0A8: 68        PLA
C - - - - - 0x0000B9 00:C0A9: 40        RTI



sub_C0AA:
C - - - - - 0x0000BA 00:C0AA: A5 38     LDA ram_0038
C - - - - - 0x0000BC 00:C0AC: F0 03     BEQ bra_C0B1
C - - - - - 0x0000BE 00:C0AE: 4C 19 C1  JMP loc_C119
bra_C0B1:
C - - - - - 0x0000C1 00:C0B1: A5 1A     LDA ram_btn_hold
C - - - - - 0x0000C3 00:C0B3: 29 10     AND #con_btn_Start
C - - - - - 0x0000C5 00:C0B5: F0 41     BEQ bra_C0F8    ; if not pressed
C - - - - - 0x0000C7 00:C0B7: A4 34     LDY ram_0034
C - - - - - 0x0000C9 00:C0B9: D0 41     BNE bra_C0FC
C - - - - - 0x0000CB 00:C0BB: C8        INY
C - - - - - 0x0000CC 00:C0BC: 84 34     STY ram_0034
C - - - - - 0x0000CE 00:C0BE: A4 3D     LDY ram_003D
C - - - - - 0x0000D0 00:C0C0: C0 07     CPY #$07
C - - - - - 0x0000D2 00:C0C2: F0 26     BEQ bra_C0EA
C - - - - - 0x0000D4 00:C0C4: C0 04     CPY #$04
C - - - - - 0x0000D6 00:C0C6: F0 04     BEQ bra_C0CC
C - - - - - 0x0000D8 00:C0C8: C0 06     CPY #$06
C - - - - - 0x0000DA 00:C0CA: D0 30     BNE bra_C0FC
bra_C0CC:
C - - - - - 0x0000DC 00:C0CC: A2 07     LDX #$07
bra_C0CE_loop:
C - - - - - 0x0000DE 00:C0CE: B5 20     LDA ram_0020,X
C - - - - - 0x0000E0 00:C0D0: 95 28     STA ram_0028,X
C - - - - - 0x0000E2 00:C0D2: CA        DEX
C - - - - - 0x0000E3 00:C0D3: 10 F9     BPL bra_C0CE_loop
C - - - - - 0x0000E5 00:C0D5: A5 0A     LDA ram_for_2001
C - - - - - 0x0000E7 00:C0D7: 29 0E     AND #$0E
C - - - - - 0x0000E9 00:C0D9: 8D 01 20  STA $2001
C - - - - - 0x0000EC 00:C0DC: 85 0A     STA ram_for_2001
C - - - - - 0x0000EE 00:C0DE: 84 3B     STY ram_003B
C - - - - - 0x0000F0 00:C0E0: A9 07     LDA #$07
C - - - - - 0x0000F2 00:C0E2: 85 3D     STA ram_003D
C - - - - - 0x0000F4 00:C0E4: 20 CB CB  JSR sub_CBCB
C - - - - - 0x0000F7 00:C0E7: 4C F2 C0  JMP loc_C0F2
bra_C0EA:
C - - - - - 0x0000FA 00:C0EA: A9 14     LDA #$14
C - - - - - 0x0000FC 00:C0EC: 85 21     STA ram_0021
C - - - - - 0x0000FE 00:C0EE: A9 0A     LDA #$0A
C - - - - - 0x000100 00:C0F0: 85 3D     STA ram_003D
loc_C0F2:
C D 2 - - - 0x000102 00:C0F2: A9 80     LDA #$80
C - - - - - 0x000104 00:C0F4: 85 FD     STA ram_00FD
C - - - - - 0x000106 00:C0F6: D0 04     BNE bra_C0FC    ; jmp
bra_C0F8:
C - - - - - 0x000108 00:C0F8: A9 00     LDA #$00
C - - - - - 0x00010A 00:C0FA: 85 34     STA ram_0034
bra_C0FC:
C - - - - - 0x00010C 00:C0FC: A5 3D     LDA ram_003D
C - - - - - 0x00010E 00:C0FE: 20 8B C3  JSR sub_C38B_jump_to_pointers_after_jsr
- D 2 - I - 0x000111 00:C101: 0A C7     .word ofs_000_C70A_00
- D 2 - I - 0x000113 00:C103: 97 C7     .word ofs_000_C797_01
- D 2 - I - 0x000115 00:C105: B7 C7     .word ofs_000_C7B7_02
- D 2 - I - 0x000117 00:C107: C6 C7     .word ofs_000_C7C6_03
- D 2 - I - 0x000119 00:C109: 07 C9     .word ofs_000_C907_04
- D 2 - I - 0x00011B 00:C10B: A2 C9     .word ofs_000_C9A2_05
- D 2 - I - 0x00011D 00:C10D: E7 C9     .word ofs_000_C9E7_06
- D 2 - I - 0x00011F 00:C10F: 2B C4     .word ofs_000_C42B_07_RTS
- - - - - - 0x000121 00:C111: 28 CA     .word ofs_000_CA28_08
- - - - - - 0x000123 00:C113: 31 CA     .word ofs_000_CA31_09
- D 2 - I - 0x000125 00:C115: 3A CA     .word ofs_000_CA3A_0A
- D 2 - I - 0x000127 00:C117: 5B CA     .word ofs_000_CA5B_0B



loc_C119:
C D 2 - - - 0x000129 00:C119: A5 1A     LDA ram_btn_hold
C - - - - - 0x00012B 00:C11B: 29 30     AND #con_btn_Start + con_btn_Select
C - - - - - 0x00012D 00:C11D: C9 10     CMP #con_btn_Start
C - - - - - 0x00012F 00:C11F: D0 13     BNE bra_C134_not_start
; start was pressed
C - - - - - 0x000131 00:C121: A9 00     LDA #$00
C - - - - - 0x000133 00:C123: 85 38     STA ram_0038
C - - - - - 0x000135 00:C125: 85 3D     STA ram_003D
C - - - - - 0x000137 00:C127: 85 43     STA ram_0043
C - - - - - 0x000139 00:C129: 20 CB CB  JSR sub_CBCB
C - - - - - 0x00013C 00:C12C: 20 0A C4  JSR sub_C40A_disable_rendering
C - - - - - 0x00013F 00:C12F: A5 E0     LDA ram_00E0
C - - - - - 0x000141 00:C131: 85 39     STA ram_game_mode
C - - - - - 0x000143 00:C133: 60        RTS
bra_C134_not_start:
C - - - - - 0x000144 00:C134: A6 3E     LDX ram_003E
C - - - - - 0x000146 00:C136: F0 21     BEQ bra_C159
C - - - - - 0x000148 00:C138: C9 20     CMP #con_btn_Select
C - - - - - 0x00014A 00:C13A: D0 1F     BNE bra_C15B_not_select
; select was pressed
C - - - - - 0x00014C 00:C13C: E0 01     CPX #$01
C - - - - - 0x00014E 00:C13E: D0 14     BNE bra_C154
C - - - - - 0x000150 00:C140: A5 35     LDA ram_0035
C - - - - - 0x000152 00:C142: D0 23     BNE bra_C167
C - - - - - 0x000154 00:C144: A4 39     LDY ram_game_mode
C - - - - - 0x000156 00:C146: C8        INY
C - - - - - 0x000157 00:C147: C0 02     CPY #$02
C - - - - - 0x000159 00:C149: D0 02     BNE bra_C14D    ; if 2 players
C - - - - - 0x00015B 00:C14B: A0 00     LDY #$00
bra_C14D:
C - - - - - 0x00015D 00:C14D: 84 39     STY ram_game_mode
C - - - - - 0x00015F 00:C14F: 84 E0     STY ram_00E0
C - - - - - 0x000161 00:C151: 4C 63 C1  JMP loc_C163
bra_C154:
C - - - - - 0x000164 00:C154: 20 CB CB  JSR sub_CBCB
C - - - - - 0x000167 00:C157: 85 3E     STA ram_003E
bra_C159:
C - - - - - 0x000169 00:C159: F0 25     BEQ bra_C180
bra_C15B_not_select:
C - - - - - 0x00016B 00:C15B: C9 00     CMP #$00
C - - - - - 0x00016D 00:C15D: D0 04     BNE bra_C163
C - - - - - 0x00016F 00:C15F: 85 35     STA ram_0035
C - - - - - 0x000171 00:C161: F0 0E     BEQ bra_C171    ; jmp
bra_C163:
loc_C163:
C D 2 - - - 0x000173 00:C163: A9 01     LDA #$01
C - - - - - 0x000175 00:C165: 85 35     STA ram_0035
bra_C167:
C - - - - - 0x000177 00:C167: A5 25     LDA ram_0025
C - - - - - 0x000179 00:C169: C9 25     CMP #$25
C - - - - - 0x00017B 00:C16B: B0 04     BCS bra_C171
C - - - - - 0x00017D 00:C16D: A9 25     LDA #$25
C - - - - - 0x00017F 00:C16F: 85 25     STA ram_0025
bra_C171:
C - - - - - 0x000181 00:C171: E0 01     CPX #$01
C - - - - - 0x000183 00:C173: D0 0B     BNE bra_C180
C - - - - - 0x000185 00:C175: A0 88     LDY #$88
C - - - - - 0x000187 00:C177: A5 39     LDA ram_game_mode
C - - - - - 0x000189 00:C179: F0 02     BEQ bra_C17D_set_cursor_pos    ; if 1 player
C - - - - - 0x00018B 00:C17B: A0 A0     LDY #$A0
bra_C17D_set_cursor_pos:
C - - - - - 0x00018D 00:C17D: 8C 00 02  STY ram_spr_Y
bra_C180:
C - - - - - 0x000190 00:C180: A5 3E     LDA ram_003E
C - - - - - 0x000192 00:C182: 20 8B C3  JSR sub_C38B_jump_to_pointers_after_jsr
- D 2 - I - 0x000195 00:C185: 87 CA     .word ofs_001_CA87_00
- D 2 - I - 0x000197 00:C187: C9 CA     .word ofs_001_CAC9_01
- D 2 - I - 0x000199 00:C189: DD CA     .word ofs_001_CADD_02
- D 2 - I - 0x00019B 00:C18B: E4 CA     .word ofs_001_CAE4_03
- D 2 - I - 0x00019D 00:C18D: EE CA     .word ofs_001_CAEE_04
- D 2 - I - 0x00019F 00:C18F: F4 CA     .word ofs_001_CAF4_05
- D 2 - I - 0x0001A1 00:C191: 04 CB     .word ofs_001_CB04_06
- D 2 - I - 0x0001A3 00:C193: C1 CB     .word ofs_001_CBC1_07



sub_C195:
C - - - - - 0x0001A5 00:C195: A9 03     LDA #$03
C - - - - - 0x0001A7 00:C197: 20 9C C1  JSR sub_C19C
sub_C19A:
C - - - - - 0x0001AA 00:C19A: A9 01     LDA #$01
sub_C19C:
C - - - - - 0x0001AC 00:C19C: 85 02     STA ram_0002
C - - - - - 0x0001AE 00:C19E: A9 24     LDA #$24
C - - - - - 0x0001B0 00:C1A0: 85 01     STA ram_0001
C - - - - - 0x0001B2 00:C1A2: 4C 30 C3  JMP loc_C330



sub_C1A5_hide_all_sprites:
C - - - - - 0x0001B5 00:C1A5: A0 02     LDY #> ram_oam
C - - - - - 0x0001B7 00:C1A7: 84 02     STY ram_0002
C - - - - - 0x0001B9 00:C1A9: A0 00     LDY #< ram_oam
C - - - - - 0x0001BB 00:C1AB: 84 01     STY ram_0001
; bzk make sure high byte of OAM address is always 00, or add LDY 00 here
C - - - - - 0x0001BD 00:C1AD: A9 F4     LDA #$F4
bra_C1AF_loop:
C - - - - - 0x0001BF 00:C1AF: 91 01     STA (ram_0001),Y
C - - - - - 0x0001C1 00:C1B1: 88        DEY
C - - - - - 0x0001C2 00:C1B2: D0 FB     BNE bra_C1AF_loop
C - - - - - 0x0001C4 00:C1B4: 60        RTS



sub_C1B5_write_palette:
C - - - - - 0x0001C5 00:C1B5: A4 3C     LDY ram_003C
C - - - - - 0x0001C7 00:C1B7: F0 23     BEQ bra_C1DC_RTS
C - - - - - 0x0001C9 00:C1B9: 88        DEY
C - - - - - 0x0001CA 00:C1BA: F0 11     BEQ bra_C1CD_01
C - - - - - 0x0001CC 00:C1BC: 88        DEY
C - - - - - 0x0001CD 00:C1BD: F0 07     BEQ bra_C1C6_02
; case 03
C - - - - - 0x0001CF 00:C1BF: A9 4A     LDA #< tbl_EE4A_palette
C - - - - - 0x0001D1 00:C1C1: A2 EE     LDX #> tbl_EE4A_palette
C - - - - - 0x0001D3 00:C1C3: 4C D1 C1  JMP loc_C1D1
bra_C1C6_02:
C - - - - - 0x0001D6 00:C1C6: A9 32     LDA #< tbl_EE32_palette
C - - - - - 0x0001D8 00:C1C8: A2 EE     LDX #> tbl_EE32_palette
C - - - - - 0x0001DA 00:C1CA: 4C D1 C1  JMP loc_C1D1
bra_C1CD_01:
C - - - - - 0x0001DD 00:C1CD: A9 11     LDA #< tbl_EE11_palette
C - - - - - 0x0001DF 00:C1CF: A2 EE     LDX #> tbl_EE11_palette
loc_C1D1:
C D 2 - - - 0x0001E1 00:C1D1: A0 00     LDY #$00
C - - - - - 0x0001E3 00:C1D3: 84 3C     STY ram_003C
C - - - - - 0x0001E5 00:C1D5: 85 01     STA ram_0001
C - - - - - 0x0001E7 00:C1D7: 86 02     STX ram_0002
C - - - - - 0x0001E9 00:C1D9: 20 F4 C3  JSR sub_C3F4_write_indirect_data_to_ppu
bra_C1DC_RTS:
C - - - - - 0x0001EC 00:C1DC: 60        RTS



sub_C1DD_add_16bit_to_16_bit:
C - - - - - 0x0001ED 00:C1DD: A5 A8     LDA ram_00A8
C - - - - - 0x0001EF 00:C1DF: 85 14     STA ram_0014
C - - - - - 0x0001F1 00:C1E1: A5 A9     LDA ram_00A9
C - - - - - 0x0001F3 00:C1E3: 85 15     STA ram_0015
C - - - - - 0x0001F5 00:C1E5: A5 AA     LDA ram_00AA
C - - - - - 0x0001F7 00:C1E7: 85 12     STA ram_0012
C - - - - - 0x0001F9 00:C1E9: A9 00     LDA #$00
C - - - - - 0x0001FB 00:C1EB: 85 13     STA ram_0013
C - - - - - 0x0001FD 00:C1ED: 20 A1 C3  JSR sub_C3A1_add_16bit_to_16_bit
C - - - - - 0x000200 00:C1F0: A8        TAY
C - - - - - 0x000201 00:C1F1: AA        TAX
C - - - - - 0x000202 00:C1F2: 60        RTS



sub_C1F3:
C - - - - - 0x000203 00:C1F3: 20 DD C1  JSR sub_C1DD_add_16bit_to_16_bit
bra_C1F6_loop:
C - - - - - 0x000206 00:C1F6: B1 14     LDA (ram_0014),Y
C - - - - - 0x000208 00:C1F8: 95 B0     STA ram_00B0,X
C - - - - - 0x00020A 00:C1FA: C8        INY
C - - - - - 0x00020B 00:C1FB: E8        INX
C - - - - - 0x00020C 00:C1FC: E0 20     CPX #$20
C - - - - - 0x00020E 00:C1FE: D0 F6     BNE bra_C1F6_loop
C - - - - - 0x000210 00:C200: A9 00     LDA #$00
C - - - - - 0x000212 00:C202: A8        TAY
C - - - - - 0x000213 00:C203: 91 14     STA (ram_0014),Y    ; 0300 0320 0340 0360 0380 03A0
C - - - - - 0x000215 00:C205: 60        RTS



sub_C206:
C - - - - - 0x000216 00:C206: A5 AA     LDA ram_00AA
C - - - - - 0x000218 00:C208: 18        CLC
C - - - - - 0x000219 00:C209: 69 20     ADC #$20
C - - - - - 0x00021B 00:C20B: 85 AA     STA ram_00AA
C - - - - - 0x00021D 00:C20D: 60        RTS



sub_C20E:
C - - - - - 0x00021E 00:C20E: 20 DD C1  JSR sub_C1DD_add_16bit_to_16_bit
bra_C211_loop:
C - - - - - 0x000221 00:C211: B5 B0     LDA ram_00B0,X
C - - - - - 0x000223 00:C213: 91 14     STA (ram_0014),Y
C - - - - - 0x000225 00:C215: C8        INY
C - - - - - 0x000226 00:C216: E8        INX
C - - - - - 0x000227 00:C217: E0 20     CPX #$20
C - - - - - 0x000229 00:C219: D0 F6     BNE bra_C211_loop
bra_C21B_RTS:
C - - - - - 0x00022B 00:C21B: 60        RTS



loc_C21C_sprites_handler:
sub_C21C_sprites_handler:
C D 2 - - - 0x00022C 00:C21C: A5 B0     LDA ram_00B0
C - - - - - 0x00022E 00:C21E: F0 FB     BEQ bra_C21B_RTS
C - - - - - 0x000230 00:C220: A9 F2     LDA #> tbl_F28C_animations_data
C - - - - - 0x000232 00:C222: 85 15     STA ram_0015
C - - - - - 0x000234 00:C224: A9 8C     LDA #< tbl_F28C_animations_data
C - - - - - 0x000236 00:C226: 85 14     STA ram_0014
C - - - - - 0x000238 00:C228: A5 B6     LDA ram_00B6
C - - - - - 0x00023A 00:C22A: 20 8E C2  JSR sub_C28E
C - - - - - 0x00023D 00:C22D: A0 00     LDY #$00
C - - - - - 0x00023F 00:C22F: B1 12     LDA (ram_0012),Y
C - - - - - 0x000241 00:C231: 85 14     STA ram_0014
C - - - - - 0x000243 00:C233: C8        INY
C - - - - - 0x000244 00:C234: B1 12     LDA (ram_0012),Y
C - - - - - 0x000246 00:C236: 85 15     STA ram_0015
C - - - - - 0x000248 00:C238: C8        INY
C - - - - - 0x000249 00:C239: B1 12     LDA (ram_0012),Y
C - - - - - 0x00024B 00:C23B: 85 01     STA ram_0001
C - - - - - 0x00024D 00:C23D: C8        INY
C - - - - - 0x00024E 00:C23E: B1 12     LDA (ram_0012),Y
C - - - - - 0x000250 00:C240: 85 02     STA ram_0002
C - - - - - 0x000252 00:C242: C8        INY
C - - - - - 0x000253 00:C243: 84 0D     STY ram_000D
C - - - - - 0x000255 00:C245: A0 00     LDY #$00
C - - - - - 0x000257 00:C247: A6 BA     LDX ram_00BA
bra_C249_loop:
C - - - - - 0x000259 00:C249: B1 14     LDA (ram_0014),Y
C - - - - - 0x00025B 00:C24B: C8        INY
C - - - - - 0x00025C 00:C24C: 18        CLC
C - - - - - 0x00025D 00:C24D: 65 B8     ADC ram_00B8
C - - - - - 0x00025F 00:C24F: 69 FF     ADC #$FF
C - - - - - 0x000261 00:C251: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x000264 00:C254: E8        INX
C - - - - - 0x000265 00:C255: 84 0C     STY ram_000C
C - - - - - 0x000267 00:C257: A4 0D     LDY ram_000D
C - - - - - 0x000269 00:C259: B1 12     LDA (ram_0012),Y
C - - - - - 0x00026B 00:C25B: 9D 00 02  STA ram_spr_T - 1,X
C - - - - - 0x00026E 00:C25E: E6 0D     INC ram_000D
C - - - - - 0x000270 00:C260: E8        INX
C - - - - - 0x000271 00:C261: A4 0C     LDY ram_000C
C - - - - - 0x000273 00:C263: A5 B7     LDA ram_00B7
C - - - - - 0x000275 00:C265: 06 02     ASL ram_0002
C - - - - - 0x000277 00:C267: 26 01     ROL ram_0001
C - - - - - 0x000279 00:C269: 90 02     BCC bra_C26D
C - - - - - 0x00027B 00:C26B: 49 40     EOR #$40
bra_C26D:
C - - - - - 0x00027D 00:C26D: 9D 00 02  STA ram_spr_A - 2,X
C - - - - - 0x000280 00:C270: E8        INX
C - - - - - 0x000281 00:C271: B1 14     LDA (ram_0014),Y
C - - - - - 0x000283 00:C273: 24 B7     BIT ram_00B7
C - - - - - 0x000285 00:C275: 70 03     BVS bra_C27A
C - - - - - 0x000287 00:C277: 18        CLC
C - - - - - 0x000288 00:C278: 90 06     BCC bra_C280    ; jmp
bra_C27A:
- - - - - - 0x00028A 00:C27A: 49 FF     EOR #$FF
- - - - - - 0x00028C 00:C27C: 38        SEC
- - - - - - 0x00028D 00:C27D: E9 08     SBC #$08
- - - - - - 0x00028F 00:C27F: 38        SEC
bra_C280:
C - - - - - 0x000290 00:C280: 65 B9     ADC ram_00B9
C - - - - - 0x000292 00:C282: C8        INY
C - - - - - 0x000293 00:C283: 9D 00 02  STA ram_spr_X - 3,X
C - - - - - 0x000296 00:C286: E8        INX
C - - - - - 0x000297 00:C287: B1 14     LDA (ram_0014),Y
C - - - - - 0x000299 00:C289: C9 AA     CMP #$AA
C - - - - - 0x00029B 00:C28B: D0 BC     BNE bra_C249_loop
C - - - - - 0x00029D 00:C28D: 60        RTS



sub_C28E:
C - - - - - 0x00029E 00:C28E: 0A        ASL
C - - - - - 0x00029F 00:C28F: 85 12     STA ram_0012
C - - - - - 0x0002A1 00:C291: A9 00     LDA #$00
C - - - - - 0x0002A3 00:C293: A8        TAY
C - - - - - 0x0002A4 00:C294: 2A        ROL
C - - - - - 0x0002A5 00:C295: 85 13     STA ram_0013
C - - - - - 0x0002A7 00:C297: 20 A1 C3  JSR sub_C3A1_add_16bit_to_16_bit
C - - - - - 0x0002AA 00:C29A: B1 14     LDA (ram_0014),Y
C - - - - - 0x0002AC 00:C29C: 85 12     STA ram_0012
C - - - - - 0x0002AE 00:C29E: C8        INY
C - - - - - 0x0002AF 00:C29F: B1 14     LDA (ram_0014),Y
C - - - - - 0x0002B1 00:C2A1: 85 13     STA ram_0013
C - - - - - 0x0002B3 00:C2A3: 60        RTS



sub_C2A4_read_joystick_registers:
C - - - - - 0x0002B4 00:C2A4: A2 01     LDX #$01
C - - - - - 0x0002B6 00:C2A6: 8E 16 40  STX $4016
C - - - - - 0x0002B9 00:C2A9: CA        DEX
C - - - - - 0x0002BA 00:C2AA: 8A        TXA
C - - - - - 0x0002BB 00:C2AB: 8D 16 40  STA $4016
C - - - - - 0x0002BE 00:C2AE: 20 B2 C2  JSR sub_C2B2
C - - - - - 0x0002C1 00:C2B1: E8        INX
sub_C2B2:
C - - - - - 0x0002C2 00:C2B2: A0 08     LDY #$08
bra_C2B4_loop:
C - - - - - 0x0002C4 00:C2B4: 48        PHA
C - - - - - 0x0002C5 00:C2B5: BD 16 40  LDA $4016,X
C - - - - - 0x0002C8 00:C2B8: 85 01     STA ram_0001
C - - - - - 0x0002CA 00:C2BA: 4A        LSR
C - - - - - 0x0002CB 00:C2BB: 05 01     ORA ram_0001
C - - - - - 0x0002CD 00:C2BD: 4A        LSR
C - - - - - 0x0002CE 00:C2BE: 68        PLA
C - - - - - 0x0002CF 00:C2BF: 2A        ROL
C - - - - - 0x0002D0 00:C2C0: 88        DEY
C - - - - - 0x0002D1 00:C2C1: D0 F1     BNE bra_C2B4_loop
C - - - - - 0x0002D3 00:C2C3: 86 01     STX ram_0001
C - - - - - 0x0002D5 00:C2C5: 06 01     ASL ram_0001
C - - - - - 0x0002D7 00:C2C7: A6 01     LDX ram_0001
C - - - - - 0x0002D9 00:C2C9: B4 1A     LDY ram_btn_hold,X
C - - - - - 0x0002DB 00:C2CB: 84 01     STY ram_0001
C - - - - - 0x0002DD 00:C2CD: 95 1A     STA ram_btn_hold,X
C - - - - - 0x0002DF 00:C2CF: 95 1B     STA ram_btn_press,X
C - - - - - 0x0002E1 00:C2D1: 29 FF     AND #$FF
C - - - - - 0x0002E3 00:C2D3: 10 08     BPL bra_C2DD
C - - - - - 0x0002E5 00:C2D5: 24 01     BIT ram_0001
C - - - - - 0x0002E7 00:C2D7: 10 04     BPL bra_C2DD
C - - - - - 0x0002E9 00:C2D9: 29 7F     AND #$7F
C - - - - - 0x0002EB 00:C2DB: 95 1B     STA ram_btn_press,X
bra_C2DD:
C - - - - - 0x0002ED 00:C2DD: 85 02     STA ram_0002
C - - - - - 0x0002EF 00:C2DF: 24 02     BIT ram_0002
C - - - - - 0x0002F1 00:C2E1: 50 08     BVC bra_C2EB_RTS
C - - - - - 0x0002F3 00:C2E3: 24 01     BIT ram_0001
C - - - - - 0x0002F5 00:C2E5: 50 04     BVC bra_C2EB_RTS
C - - - - - 0x0002F7 00:C2E7: 29 BF     AND #$BF
C - - - - - 0x0002F9 00:C2E9: 95 1B     STA ram_btn_press,X
bra_C2EB_RTS:
C - - - - - 0x0002FB 00:C2EB: 60        RTS



sub_C2EC_write_buffer_to_ppu:
C - - - - - 0x0002FC 00:C2EC: A5 31     LDA ram_buffer_ready_flag
C - - - - - 0x0002FE 00:C2EE: F0 3F     BEQ bra_C32F_RTS
C - - - - - 0x000300 00:C2F0: A9 91     LDA #< ram_ppu_buffer
C - - - - - 0x000302 00:C2F2: 85 01     STA ram_0001
C - - - - - 0x000304 00:C2F4: A9 05     LDA #> ram_ppu_buffer
C - - - - - 0x000306 00:C2F6: 85 02     STA ram_0002
C - - - - - 0x000308 00:C2F8: A5 09     LDA ram_for_2000
C - - - - - 0x00030A 00:C2FA: 29 FB     AND #$FB
C - - - - - 0x00030C 00:C2FC: 8D 00 20  STA $2000
C - - - - - 0x00030F 00:C2FF: 85 09     STA ram_for_2000
C - - - - - 0x000311 00:C301: AE 02 20  LDX $2002
C - - - - - 0x000314 00:C304: A0 00     LDY #$00
C - - - - - 0x000316 00:C306: F0 19     BEQ bra_C321_begin    ; jmp
bra_C308_main_loop:
C - - - - - 0x000318 00:C308: 8D 06 20  STA $2006
C - - - - - 0x00031B 00:C30B: C8        INY
C - - - - - 0x00031C 00:C30C: B1 01     LDA (ram_0001),Y
C - - - - - 0x00031E 00:C30E: 8D 06 20  STA $2006
C - - - - - 0x000321 00:C311: C8        INY
C - - - - - 0x000322 00:C312: B1 01     LDA (ram_0001),Y
C - - - - - 0x000324 00:C314: 29 3F     AND #$3F
C - - - - - 0x000326 00:C316: AA        TAX
bra_C317_write_tiles_loop:
C - - - - - 0x000327 00:C317: C8        INY
C - - - - - 0x000328 00:C318: B1 01     LDA (ram_0001),Y
C - - - - - 0x00032A 00:C31A: 8D 07 20  STA $2007
C - - - - - 0x00032D 00:C31D: CA        DEX
C - - - - - 0x00032E 00:C31E: D0 F7     BNE bra_C317_write_tiles_loop
C - - - - - 0x000330 00:C320: C8        INY
bra_C321_begin:
C - - - - - 0x000331 00:C321: B1 01     LDA (ram_0001),Y
C - - - - - 0x000333 00:C323: D0 E3     BNE bra_C308_main_loop
C - - - - - 0x000335 00:C325: A9 00     LDA #$00
C - - - - - 0x000337 00:C327: 8D 90 05  STA ram_buffer_index
C - - - - - 0x00033A 00:C32A: 8D 91 05  STA ram_ppu_buffer
C - - - - - 0x00033D 00:C32D: 85 31     STA ram_buffer_ready_flag
bra_C32F_RTS:
C - - - - - 0x00033F 00:C32F: 60        RTS



loc_C330:
C D 2 - - - 0x000340 00:C330: AD 02 20  LDA $2002
C - - - - - 0x000343 00:C333: A5 09     LDA ram_for_2000
C - - - - - 0x000345 00:C335: 29 FB     AND #$FB
C - - - - - 0x000347 00:C337: 8D 00 20  STA $2000
C - - - - - 0x00034A 00:C33A: 85 09     STA ram_for_2000
C - - - - - 0x00034C 00:C33C: A9 1C     LDA #$1C
C - - - - - 0x00034E 00:C33E: 18        CLC
bra_C33F_loop:
C - - - - - 0x00034F 00:C33F: 69 04     ADC #$04
C - - - - - 0x000351 00:C341: C6 02     DEC ram_0002
C - - - - - 0x000353 00:C343: D0 FA     BNE bra_C33F_loop
C - - - - - 0x000355 00:C345: 85 03     STA ram_0003
C - - - - - 0x000357 00:C347: 8D 06 20  STA $2006
C - - - - - 0x00035A 00:C34A: A9 00     LDA #$00
C - - - - - 0x00035C 00:C34C: 8D 06 20  STA $2006
C - - - - - 0x00035F 00:C34F: A2 04     LDX #$04
C - - - - - 0x000361 00:C351: A0 00     LDY #$00
C - - - - - 0x000363 00:C353: A5 01     LDA ram_0001
bra_C355_loop:
C - - - - - 0x000365 00:C355: 8D 07 20  STA $2007
C - - - - - 0x000368 00:C358: 88        DEY
C - - - - - 0x000369 00:C359: D0 FA     BNE bra_C355_loop
C - - - - - 0x00036B 00:C35B: CA        DEX
C - - - - - 0x00036C 00:C35C: D0 F7     BNE bra_C355_loop
C - - - - - 0x00036E 00:C35E: A5 03     LDA ram_0003
C - - - - - 0x000370 00:C360: 69 03     ADC #$03
C - - - - - 0x000372 00:C362: 8D 06 20  STA $2006
C - - - - - 0x000375 00:C365: A9 C0     LDA #$C0
C - - - - - 0x000377 00:C367: 8D 06 20  STA $2006
C - - - - - 0x00037A 00:C36A: A0 40     LDY #$40
C - - - - - 0x00037C 00:C36C: A9 00     LDA #$00
bra_C36E_loop:
C - - - - - 0x00037E 00:C36E: 8D 07 20  STA $2007
C - - - - - 0x000381 00:C371: 88        DEY
C - - - - - 0x000382 00:C372: D0 FA     BNE bra_C36E_loop
C - - - - - 0x000384 00:C374: 60        RTS



sub_C375:
C - - - - - 0x000385 00:C375: A2 03     LDX #$03
C - - - - - 0x000387 00:C377: C6 20     DEC ram_0020
C - - - - - 0x000389 00:C379: 10 06     BPL bra_C381
C - - - - - 0x00038B 00:C37B: A9 0A     LDA #$0A
C - - - - - 0x00038D 00:C37D: 85 20     STA ram_0020
C - - - - - 0x00038F 00:C37F: A2 05     LDX #$05
bra_C381:
bra_C381_loop:
C - - - - - 0x000391 00:C381: B5 21     LDA ram_0021,X
C - - - - - 0x000393 00:C383: F0 02     BEQ bra_C387
C - - - - - 0x000395 00:C385: D6 21     DEC ram_0021,X
bra_C387:
C - - - - - 0x000397 00:C387: CA        DEX
C - - - - - 0x000398 00:C388: 10 F7     BPL bra_C381_loop
C - - - - - 0x00039A 00:C38A: 60        RTS



sub_C38B_jump_to_pointers_after_jsr:
C - - - - - 0x00039B 00:C38B: 0A        ASL
C - - - - - 0x00039C 00:C38C: A8        TAY
C - - - - - 0x00039D 00:C38D: C8        INY
C - - - - - 0x00039E 00:C38E: 68        PLA
C - - - - - 0x00039F 00:C38F: 85 14     STA ram_0014
C - - - - - 0x0003A1 00:C391: 68        PLA
C - - - - - 0x0003A2 00:C392: 85 15     STA ram_0015
C - - - - - 0x0003A4 00:C394: B1 14     LDA (ram_0014),Y
C - - - - - 0x0003A6 00:C396: AA        TAX
C - - - - - 0x0003A7 00:C397: C8        INY
C - - - - - 0x0003A8 00:C398: B1 14     LDA (ram_0014),Y
C - - - - - 0x0003AA 00:C39A: 85 15     STA ram_0015
C - - - - - 0x0003AC 00:C39C: 86 14     STX ram_0014
C - - - - - 0x0003AE 00:C39E: 6C 14 00  JMP (ram_0014)



sub_C3A1_add_16bit_to_16_bit:
C - - - - - 0x0003B1 00:C3A1: 48        PHA
C - - - - - 0x0003B2 00:C3A2: 18        CLC
C - - - - - 0x0003B3 00:C3A3: A5 14     LDA ram_0014
C - - - - - 0x0003B5 00:C3A5: 65 12     ADC ram_0012
C - - - - - 0x0003B7 00:C3A7: 85 14     STA ram_0014
C - - - - - 0x0003B9 00:C3A9: A5 15     LDA ram_0015
C - - - - - 0x0003BB 00:C3AB: 65 13     ADC ram_0013
C - - - - - 0x0003BD 00:C3AD: 85 15     STA ram_0015
C - - - - - 0x0003BF 00:C3AF: 68        PLA
C - - - - - 0x0003C0 00:C3B0: 60        RTS



sub_C3B1_draw_screen:
C - - - - - 0x0003C1 00:C3B1: 86 01     STX ram_0001
C - - - - - 0x0003C3 00:C3B3: 84 02     STY ram_0002
C - - - - - 0x0003C5 00:C3B5: 4C F4 C3  JMP loc_C3F4_write_indirect_data_to_ppu



bra_C3B8_loop:
; first 2 bytes are for 2000, then checking next byte, which is a counter + flags
; if 00-3F, print following bytes horisontally
; if 40-7F, print a single following byte (counter minus 40)
; if 80-FF, print following bytes vertically (counter minus 80)
C - - - - - 0x0003C8 00:C3B8: 8D 06 20  STA $2006
C - - - - - 0x0003CB 00:C3BB: C8        INY
C - - - - - 0x0003CC 00:C3BC: B1 01     LDA (ram_0001),Y
C - - - - - 0x0003CE 00:C3BE: 8D 06 20  STA $2006
C - - - - - 0x0003D1 00:C3C1: C8        INY
C - - - - - 0x0003D2 00:C3C2: B1 01     LDA (ram_0001),Y
C - - - - - 0x0003D4 00:C3C4: 0A        ASL
C - - - - - 0x0003D5 00:C3C5: 48        PHA
C - - - - - 0x0003D6 00:C3C6: A5 09     LDA ram_for_2000
C - - - - - 0x0003D8 00:C3C8: 09 04     ORA #$04
C - - - - - 0x0003DA 00:C3CA: B0 02     BCS bra_C3CE_print_vertically   ; if byte 80+
C - - - - - 0x0003DC 00:C3CC: 29 FB     AND #$FB    ; otherwise horisontally
bra_C3CE_print_vertically:
C - - - - - 0x0003DE 00:C3CE: 8D 00 20  STA $2000
C - - - - - 0x0003E1 00:C3D1: 85 09     STA ram_for_2000
C - - - - - 0x0003E3 00:C3D3: 68        PLA
C - - - - - 0x0003E4 00:C3D4: 0A        ASL
C - - - - - 0x0003E5 00:C3D5: 90 03     BCC bra_C3DA_print_string_horisontally
C - - - - - 0x0003E7 00:C3D7: 09 02     ORA #$02    ; this forces C = 1 after LSR x 2
C - - - - - 0x0003E9 00:C3D9: C8        INY
bra_C3DA_print_string_horisontally:
C - - - - - 0x0003EA 00:C3DA: 4A        LSR
C - - - - - 0x0003EB 00:C3DB: 4A        LSR
C - - - - - 0x0003EC 00:C3DC: AA        TAX
bra_C3DD_loop:
C - - - - - 0x0003ED 00:C3DD: B0 01     BCS bra_C3E0_keep_printing_this_tile
C - - - - - 0x0003EF 00:C3DF: C8        INY ; otherwise read next tile
bra_C3E0_keep_printing_this_tile:
C - - - - - 0x0003F0 00:C3E0: B1 01     LDA (ram_0001),Y
C - - - - - 0x0003F2 00:C3E2: 8D 07 20  STA $2007
C - - - - - 0x0003F5 00:C3E5: CA        DEX
C - - - - - 0x0003F6 00:C3E6: D0 F5     BNE bra_C3DD_loop
C - - - - - 0x0003F8 00:C3E8: 38        SEC
C - - - - - 0x0003F9 00:C3E9: 98        TYA
C - - - - - 0x0003FA 00:C3EA: 65 01     ADC ram_0001
C - - - - - 0x0003FC 00:C3EC: 85 01     STA ram_0001
C - - - - - 0x0003FE 00:C3EE: A9 00     LDA #$00
C - - - - - 0x000400 00:C3F0: 65 02     ADC ram_0002
C - - - - - 0x000402 00:C3F2: 85 02     STA ram_0002
sub_C3F4_write_indirect_data_to_ppu:
loc_C3F4_write_indirect_data_to_ppu:
C D 2 - - - 0x000404 00:C3F4: AE 02 20  LDX $2002
C - - - - - 0x000407 00:C3F7: A0 00     LDY #$00
C - - - - - 0x000409 00:C3F9: B1 01     LDA (ram_0001),Y
C - - - - - 0x00040B 00:C3FB: D0 BB     BNE bra_C3B8_loop
sub_C3FD_set_scroll:
C - - - - - 0x00040D 00:C3FD: 48        PHA
; bzk optimize, camera is always 00
C - - - - - 0x00040E 00:C3FE: A5 1E     LDA ram_pos_X_camera
C - - - - - 0x000410 00:C400: 8D 05 20  STA $2005
C - - - - - 0x000413 00:C403: A5 1F     LDA ram_pos_Y_camera
C - - - - - 0x000415 00:C405: 8D 05 20  STA $2005
C - - - - - 0x000418 00:C408: 68        PLA
C - - - - - 0x000419 00:C409: 60        RTS



sub_C40A_disable_rendering:
C - - - - - 0x00041A 00:C40A: 20 22 C4  JSR sub_C422_wait_for_next_nmi_trigger
C - - - - - 0x00041D 00:C40D: A5 0A     LDA ram_for_2001
C - - - - - 0x00041F 00:C40F: 29 E7     AND #$E7
C - - - - - 0x000421 00:C411: 8D 01 20  STA $2001
C - - - - - 0x000424 00:C414: 60        RTS



sub_C415_enable_rendering:
loc_C415_enable_rendering:
C D 2 - - - 0x000425 00:C415: 20 22 C4  JSR sub_C422_wait_for_next_nmi_trigger
C - - - - - 0x000428 00:C418: A5 0A     LDA ram_for_2001
C - - - - - 0x00042A 00:C41A: 09 18     ORA #$18
C - - - - - 0x00042C 00:C41C: 8D 01 20  STA $2001
C - - - - - 0x00042F 00:C41F: 85 0A     STA ram_for_2001
C - - - - - 0x000431 00:C421: 60        RTS



sub_C422_wait_for_next_nmi_trigger:
C - - - - - 0x000432 00:C422: A9 00     LDA #$00
C - - - - - 0x000434 00:C424: 85 33     STA ram_nmi_trigger_flag
C - - - - - 0x000436 00:C426: EA        NOP ; bzk optimize, no need for NOP here
bra_C427_infiite_loop:
C - - - - - 0x000437 00:C427: A5 33     LDA ram_nmi_trigger_flag
C - - - - - 0x000439 00:C429: F0 FC     BEQ bra_C427_infiite_loop
ofs_000_C42B_07_RTS:
C - - - - - 0x00043B 00:C42B: 60        RTS



sub_C42C_disable_bg:
C - - - - - 0x00043C 00:C42C: A5 0A     LDA ram_for_2001
C - - - - - 0x00043E 00:C42E: 29 EF     AND #$EF
C - - - - - 0x000440 00:C430: 8D 01 20  STA $2001
C - - - - - 0x000443 00:C433: 85 0A     STA ram_for_2001
C - - - - - 0x000445 00:C435: 60        RTS



sub_C436_enable_bg:
C - - - - - 0x000446 00:C436: A5 0A     LDA ram_for_2001
C - - - - - 0x000448 00:C438: 09 10     ORA #$10
C - - - - - 0x00044A 00:C43A: 8D 01 20  STA $2001
C - - - - - 0x00044D 00:C43D: 85 0A     STA ram_for_2001
C - - - - - 0x00044F 00:C43F: 60        RTS



sub_C440_write_to_oam:
; bzk optimize, too much code for writing 4 bytes of spr data
C - - - - - 0x000450 00:C440: A9 00     LDA #< ram_oam
C - - - - - 0x000452 00:C442: 85 04     STA ram_0004
C - - - - - 0x000454 00:C444: A9 02     LDA #> ram_oam
C - - - - - 0x000456 00:C446: 85 05     STA ram_0005
C - - - - - 0x000458 00:C448: A4 03     LDY ram_0003
C - - - - - 0x00045A 00:C44A: 88        DEY
C - - - - - 0x00045B 00:C44B: A6 03     LDX ram_0003
bra_C44D_loop:
C - - - - - 0x00045D 00:C44D: B1 01     LDA (ram_0001),Y
C - - - - - 0x00045F 00:C44F: 91 04     STA (ram_0004),Y
C - - - - - 0x000461 00:C451: 88        DEY
C - - - - - 0x000462 00:C452: CA        DEX
C - - - - - 0x000463 00:C453: D0 F8     BNE bra_C44D_loop
C - - - - - 0x000465 00:C455: 60        RTS



sub_C456_roll_rng:
C - - - - - 0x000466 00:C456: AD 00 05  LDA ram_random
C - - - - - 0x000469 00:C459: 18        CLC
C - - - - - 0x00046A 00:C45A: 69 0F     ADC #$0F
C - - - - - 0x00046C 00:C45C: 8D 00 05  STA ram_random
C - - - - - 0x00046F 00:C45F: AD 01 05  LDA ram_random + 1
C - - - - - 0x000472 00:C462: 69 11     ADC #$11
C - - - - - 0x000474 00:C464: 8D 01 05  STA ram_random + 1
C - - - - - 0x000477 00:C467: 4D 00 05  EOR ram_random
C - - - - - 0x00047A 00:C46A: 18        CLC
C - - - - - 0x00047B 00:C46B: 10 01     BPL bra_C46E
C - - - - - 0x00047D 00:C46D: 38        SEC
bra_C46E:
C - - - - - 0x00047E 00:C46E: 6E 02 05  ROR ram_random + 2
C - - - - - 0x000481 00:C471: 6E 03 05  ROR ram_random + 3
C - - - - - 0x000484 00:C474: AD 00 05  LDA ram_random
C - - - - - 0x000487 00:C477: 60        RTS



sub_C478:
C - - - - - 0x000488 00:C478: A9 01     LDA #$01
C - - - - - 0x00048A 00:C47A: 85 0E     STA ram_000E
C - - - - - 0x00048C 00:C47C: A4 6D     LDY ram_006D
C - - - - - 0x00048E 00:C47E: A6 6E     LDX ram_006E
C - - - - - 0x000490 00:C480: A9 79     LDA #$79
C - - - - - 0x000492 00:C482: 20 CC C5  JSR sub_C5CC
C - - - - - 0x000495 00:C485: 84 14     STY ram_0014
C - - - - - 0x000497 00:C487: 86 15     STX ram_0015
C - - - - - 0x000499 00:C489: A4 6D     LDY ram_006D
C - - - - - 0x00049B 00:C48B: A6 6E     LDX ram_006E
C - - - - - 0x00049D 00:C48D: A9 C7     LDA #$C7
C - - - - - 0x00049F 00:C48F: 20 CC C5  JSR sub_C5CC
C - - - - - 0x0004A2 00:C492: 84 12     STY ram_0012
C - - - - - 0x0004A4 00:C494: 86 13     STX ram_0013
C - - - - - 0x0004A6 00:C496: 4C A5 C4  JMP loc_C4A5



sub_C499:
C - - - - - 0x0004A9 00:C499: A9 00     LDA #$00
C - - - - - 0x0004AB 00:C49B: 85 0E     STA ram_000E
C - - - - - 0x0004AD 00:C49D: 85 14     STA ram_0014
C - - - - - 0x0004AF 00:C49F: 85 15     STA ram_0015
C - - - - - 0x0004B1 00:C4A1: 85 12     STA ram_0012
C - - - - - 0x0004B3 00:C4A3: 85 13     STA ram_0013
loc_C4A5:
C D 2 - - - 0x0004B5 00:C4A5: A4 68     LDY ram_0068
C - - - - - 0x0004B7 00:C4A7: 84 A5     STY ram_00A5
C - - - - - 0x0004B9 00:C4A9: A5 69     LDA ram_0069
C - - - - - 0x0004BB 00:C4AB: 38        SEC
C - - - - - 0x0004BC 00:C4AC: E9 10     SBC #$10
C - - - - - 0x0004BE 00:C4AE: 85 A6     STA ram_00A6
C - - - - - 0x0004C0 00:C4B0: AA        TAX
C - - - - - 0x0004C1 00:C4B1: A9 94     LDA #$94
C - - - - - 0x0004C3 00:C4B3: 20 CC C5  JSR sub_C5CC
C - - - - - 0x0004C6 00:C4B6: 18        CLC
C - - - - - 0x0004C7 00:C4B7: 98        TYA
C - - - - - 0x0004C8 00:C4B8: 69 71     ADC #$71
C - - - - - 0x0004CA 00:C4BA: A8        TAY
C - - - - - 0x0004CB 00:C4BB: 8A        TXA
C - - - - - 0x0004CC 00:C4BC: 69 0E     ADC #$0E
C - - - - - 0x0004CE 00:C4BE: AA        TAX
C - - - - - 0x0004CF 00:C4BF: 98        TYA
C - - - - - 0x0004D0 00:C4C0: 38        SEC
C - - - - - 0x0004D1 00:C4C1: E5 14     SBC ram_0014
C - - - - - 0x0004D3 00:C4C3: 85 98     STA ram_0098
C - - - - - 0x0004D5 00:C4C5: 8A        TXA
C - - - - - 0x0004D6 00:C4C6: E5 15     SBC ram_0015
C - - - - - 0x0004D8 00:C4C8: C9 50     CMP #$50
C - - - - - 0x0004DA 00:C4CA: 6A        ROR
C - - - - - 0x0004DB 00:C4CB: 85 99     STA ram_0099
C - - - - - 0x0004DD 00:C4CD: 66 98     ROR ram_0098
C - - - - - 0x0004DF 00:C4CF: A4 A5     LDY ram_00A5
C - - - - - 0x0004E1 00:C4D1: A6 A6     LDX ram_00A6
C - - - - - 0x0004E3 00:C4D3: A9 A0     LDA #$A0
C - - - - - 0x0004E5 00:C4D5: 20 CC C5  JSR sub_C5CC
C - - - - - 0x0004E8 00:C4D8: 18        CLC
C - - - - - 0x0004E9 00:C4D9: 98        TYA
C - - - - - 0x0004EA 00:C4DA: 65 12     ADC ram_0012
C - - - - - 0x0004EC 00:C4DC: A8        TAY
C - - - - - 0x0004ED 00:C4DD: 8A        TXA
C - - - - - 0x0004EE 00:C4DE: 65 13     ADC ram_0013
C - - - - - 0x0004F0 00:C4E0: AA        TAX
C - - - - - 0x0004F1 00:C4E1: 20 F8 C5  JSR sub_C5F8
C - - - - - 0x0004F4 00:C4E4: E9 00     SBC #$00
C - - - - - 0x0004F6 00:C4E6: 49 7F     EOR #$7F
C - - - - - 0x0004F8 00:C4E8: 85 B8     STA ram_00B8
C - - - - - 0x0004FA 00:C4EA: A5 0E     LDA ram_000E
C - - - - - 0x0004FC 00:C4EC: F0 08     BEQ bra_C4F6
C - - - - - 0x0004FE 00:C4EE: A5 69     LDA ram_0069
C - - - - - 0x000500 00:C4F0: C9 06     CMP #$06
C - - - - - 0x000502 00:C4F2: B0 10     BCS bra_C504
C - - - - - 0x000504 00:C4F4: 90 0A     BCC bra_C500    ; jmp
bra_C4F6:
C - - - - - 0x000506 00:C4F6: A5 68     LDA ram_0068
C - - - - - 0x000508 00:C4F8: C9 40     CMP #$40
C - - - - - 0x00050A 00:C4FA: A5 69     LDA ram_0069
C - - - - - 0x00050C 00:C4FC: E9 08     SBC #$08
C - - - - - 0x00050E 00:C4FE: B0 04     BCS bra_C504
bra_C500:
C - - - - - 0x000510 00:C500: A2 FF     LDX #$FF
C - - - - - 0x000512 00:C502: 86 B8     STX ram_00B8
bra_C504:
C - - - - - 0x000514 00:C504: A4 63     LDY ram_0063
C - - - - - 0x000516 00:C506: A5 64     LDA ram_0064
C - - - - - 0x000518 00:C508: 38        SEC
C - - - - - 0x000519 00:C509: E9 10     SBC #$10
C - - - - - 0x00051B 00:C50B: AA        TAX
C - - - - - 0x00051C 00:C50C: 20 F8 C5  JSR sub_C5F8
C - - - - - 0x00051F 00:C50F: 49 80     EOR #$80
C - - - - - 0x000521 00:C511: 85 B9     STA ram_00B9
C - - - - - 0x000523 00:C513: 60        RTS



sub_C514:
C - - - - - 0x000524 00:C514: A9 0F     LDA #$0F
bra_C516_loop:
C - - - - - 0x000526 00:C516: 38        SEC
C - - - - - 0x000527 00:C517: E9 05     SBC #$05
C - - - - - 0x000529 00:C519: AA        TAX
C - - - - - 0x00052A 00:C51A: A0 00     LDY #$00
C - - - - - 0x00052C 00:C51C: B5 60     LDA ram_0060,X
C - - - - - 0x00052E 00:C51E: 0A        ASL
C - - - - - 0x00052F 00:C51F: 90 04     BCC bra_C525
C - - - - - 0x000531 00:C521: D6 62     DEC ram_0062,X
C - - - - - 0x000533 00:C523: D6 62     DEC ram_0062,X
bra_C525:
C - - - - - 0x000535 00:C525: 0A        ASL
C - - - - - 0x000536 00:C526: 90 02     BCC bra_C52A
C - - - - - 0x000538 00:C528: F6 62     INC ram_0062,X
bra_C52A:
C - - - - - 0x00053A 00:C52A: 18        CLC
C - - - - - 0x00053B 00:C52B: 75 61     ADC ram_0061,X
C - - - - - 0x00053D 00:C52D: 95 61     STA ram_0061,X
C - - - - - 0x00053F 00:C52F: 98        TYA
C - - - - - 0x000540 00:C530: 75 62     ADC ram_0062,X
C - - - - - 0x000542 00:C532: 95 62     STA ram_0062,X
C - - - - - 0x000544 00:C534: 10 01     BPL bra_C537
C - - - - - 0x000546 00:C536: 88        DEY
bra_C537:
C - - - - - 0x000547 00:C537: 06 15     ASL ram_0015
C - - - - - 0x000549 00:C539: 75 63     ADC ram_0063,X
C - - - - - 0x00054B 00:C53B: 95 63     STA ram_0063,X
C - - - - - 0x00054D 00:C53D: 98        TYA
C - - - - - 0x00054E 00:C53E: 75 64     ADC ram_0064,X
C - - - - - 0x000550 00:C540: 95 64     STA ram_0064,X
C - - - - - 0x000552 00:C542: 8A        TXA
C - - - - - 0x000553 00:C543: D0 D1     BNE bra_C516_loop
C - - - - - 0x000555 00:C545: A5 6E     LDA ram_006E
C - - - - - 0x000557 00:C547: 10 6E     BPL bra_C5B7
C - - - - - 0x000559 00:C549: E6 C1     INC ram_00C1
C - - - - - 0x00055B 00:C54B: A5 C1     LDA ram_00C1
C - - - - - 0x00055D 00:C54D: C9 03     CMP #$03
C - - - - - 0x00055F 00:C54F: B0 08     BCS bra_C559
C - - - - - 0x000561 00:C551: A9 01     LDA #$01
C - - - - - 0x000563 00:C553: 85 FF     STA ram_00FF
C - - - - - 0x000565 00:C555: A9 00     LDA #$00
C - - - - - 0x000567 00:C557: 85 7B     STA ram_007B
bra_C559:
C - - - - - 0x000569 00:C559: A9 0A     LDA #$0A
bra_C55B_loop:
C - - - - - 0x00056B 00:C55B: 38        SEC
C - - - - - 0x00056C 00:C55C: E9 05     SBC #$05
C - - - - - 0x00056E 00:C55E: AA        TAX
C - - - - - 0x00056F 00:C55F: B5 62     LDA ram_0062,X
C - - - - - 0x000571 00:C561: C9 80     CMP #$80
C - - - - - 0x000573 00:C563: 6A        ROR
C - - - - - 0x000574 00:C564: 95 62     STA ram_0062,X
C - - - - - 0x000576 00:C566: 76 61     ROR ram_0061,X
C - - - - - 0x000578 00:C568: C9 80     CMP #$80
C - - - - - 0x00057A 00:C56A: 6A        ROR
C - - - - - 0x00057B 00:C56B: A8        TAY
C - - - - - 0x00057C 00:C56C: B5 61     LDA ram_0061,X
C - - - - - 0x00057E 00:C56E: 6A        ROR
C - - - - - 0x00057F 00:C56F: 18        CLC
C - - - - - 0x000580 00:C570: 75 61     ADC ram_0061,X
C - - - - - 0x000582 00:C572: 95 61     STA ram_0061,X
C - - - - - 0x000584 00:C574: 98        TYA
C - - - - - 0x000585 00:C575: 75 62     ADC ram_0062,X
C - - - - - 0x000587 00:C577: 95 62     STA ram_0062,X
C - - - - - 0x000589 00:C579: 8A        TXA
C - - - - - 0x00058A 00:C57A: D0 DF     BNE bra_C55B_loop
C - - - - - 0x00058C 00:C57C: A5 6C     LDA ram_006C
C - - - - - 0x00058E 00:C57E: C9 80     CMP #$80
C - - - - - 0x000590 00:C580: 6A        ROR
C - - - - - 0x000591 00:C581: 85 6C     STA ram_006C
C - - - - - 0x000593 00:C583: 66 6B     ROR ram_006B
C - - - - - 0x000595 00:C585: A4 6B     LDY ram_006B
C - - - - - 0x000597 00:C587: 84 10     STY ram_0010
C - - - - - 0x000599 00:C589: C9 80     CMP #$80
C - - - - - 0x00059B 00:C58B: 6A        ROR
C - - - - - 0x00059C 00:C58C: 66 10     ROR ram_0010
C - - - - - 0x00059E 00:C58E: C9 80     CMP #$80
C - - - - - 0x0005A0 00:C590: 6A        ROR
C - - - - - 0x0005A1 00:C591: A8        TAY
C - - - - - 0x0005A2 00:C592: A5 10     LDA ram_0010
C - - - - - 0x0005A4 00:C594: 6A        ROR
C - - - - - 0x0005A5 00:C595: 18        CLC
C - - - - - 0x0005A6 00:C596: 65 6B     ADC ram_006B
C - - - - - 0x0005A8 00:C598: 85 6B     STA ram_006B
C - - - - - 0x0005AA 00:C59A: 98        TYA
C - - - - - 0x0005AB 00:C59B: 65 6C     ADC ram_006C
C - - - - - 0x0005AD 00:C59D: 85 6C     STA ram_006C
C - - - - - 0x0005AF 00:C59F: A0 00     LDY #$00
C - - - - - 0x0005B1 00:C5A1: 98        TYA
C - - - - - 0x0005B2 00:C5A2: 38        SEC
C - - - - - 0x0005B3 00:C5A3: E5 6D     SBC ram_006D
C - - - - - 0x0005B5 00:C5A5: 85 6D     STA ram_006D
C - - - - - 0x0005B7 00:C5A7: 98        TYA
C - - - - - 0x0005B8 00:C5A8: E5 6E     SBC ram_006E
C - - - - - 0x0005BA 00:C5AA: 85 6E     STA ram_006E
C - - - - - 0x0005BC 00:C5AC: 98        TYA
C - - - - - 0x0005BD 00:C5AD: 38        SEC
C - - - - - 0x0005BE 00:C5AE: E5 6B     SBC ram_006B
C - - - - - 0x0005C0 00:C5B0: 85 6B     STA ram_006B
C - - - - - 0x0005C2 00:C5B2: 98        TYA
C - - - - - 0x0005C3 00:C5B3: E5 6C     SBC ram_006C
C - - - - - 0x0005C5 00:C5B5: 85 6C     STA ram_006C
bra_C5B7:
C - - - - - 0x0005C7 00:C5B7: A5 6D     LDA ram_006D
C - - - - - 0x0005C9 00:C5B9: 85 6F     STA ram_006F
C - - - - - 0x0005CB 00:C5BB: A5 6E     LDA ram_006E
C - - - - - 0x0005CD 00:C5BD: 4A        LSR
C - - - - - 0x0005CE 00:C5BE: 66 6F     ROR ram_006F
C - - - - - 0x0005D0 00:C5C0: 4A        LSR
C - - - - - 0x0005D1 00:C5C1: 66 6F     ROR ram_006F
C - - - - - 0x0005D3 00:C5C3: C9 00     CMP #$00
C - - - - - 0x0005D5 00:C5C5: F0 04     BEQ bra_C5CB_RTS
C - - - - - 0x0005D7 00:C5C7: A9 FF     LDA #$FF
C - - - - - 0x0005D9 00:C5C9: 85 6F     STA ram_006F
bra_C5CB_RTS:
C - - - - - 0x0005DB 00:C5CB: 60        RTS



sub_C5CC:
C - - - - - 0x0005DC 00:C5CC: 84 10     STY ram_0010
C - - - - - 0x0005DE 00:C5CE: 86 11     STX ram_0011
C - - - - - 0x0005E0 00:C5D0: 85 16     STA ram_0016
C - - - - - 0x0005E2 00:C5D2: A9 00     LDA #$00
C - - - - - 0x0005E4 00:C5D4: 85 17     STA ram_0017
C - - - - - 0x0005E6 00:C5D6: 85 18     STA ram_0018
C - - - - - 0x0005E8 00:C5D8: A2 08     LDX #$08
bra_C5DA_loop:
C - - - - - 0x0005EA 00:C5DA: 66 16     ROR ram_0016
C - - - - - 0x0005EC 00:C5DC: 90 0D     BCC bra_C5EB
C - - - - - 0x0005EE 00:C5DE: 18        CLC
C - - - - - 0x0005EF 00:C5DF: A5 17     LDA ram_0017
C - - - - - 0x0005F1 00:C5E1: 65 10     ADC ram_0010
C - - - - - 0x0005F3 00:C5E3: 85 17     STA ram_0017
C - - - - - 0x0005F5 00:C5E5: A5 18     LDA ram_0018
C - - - - - 0x0005F7 00:C5E7: 65 11     ADC ram_0011
C - - - - - 0x0005F9 00:C5E9: 85 18     STA ram_0018
bra_C5EB:
C - - - - - 0x0005FB 00:C5EB: 0A        ASL
C - - - - - 0x0005FC 00:C5EC: 66 18     ROR ram_0018
C - - - - - 0x0005FE 00:C5EE: 66 17     ROR ram_0017
C - - - - - 0x000600 00:C5F0: CA        DEX
C - - - - - 0x000601 00:C5F1: D0 E7     BNE bra_C5DA_loop
C - - - - - 0x000603 00:C5F3: A4 17     LDY ram_0017
C - - - - - 0x000605 00:C5F5: A6 18     LDX ram_0018
C - - - - - 0x000607 00:C5F7: 60        RTS



sub_C5F8:
C - - - - - 0x000608 00:C5F8: 84 17     STY ram_0017
C - - - - - 0x00060A 00:C5FA: 86 18     STX ram_0018
C - - - - - 0x00060C 00:C5FC: A9 00     LDA #$00
C - - - - - 0x00060E 00:C5FE: 85 16     STA ram_0016
C - - - - - 0x000610 00:C600: A2 07     LDX #$07
C - - - - - 0x000612 00:C602: 18        CLC
C - - - - - 0x000613 00:C603: A5 17     LDA ram_0017
C - - - - - 0x000615 00:C605: 65 98     ADC ram_0098
C - - - - - 0x000617 00:C607: A8        TAY
C - - - - - 0x000618 00:C608: A5 18     LDA ram_0018
C - - - - - 0x00061A 00:C60A: 65 99     ADC ram_0099
bra_C60C_loop:
C - - - - - 0x00061C 00:C60C: 90 04     BCC bra_C612
C - - - - - 0x00061E 00:C60E: 84 17     STY ram_0017
C - - - - - 0x000620 00:C610: 85 18     STA ram_0018
bra_C612:
C - - - - - 0x000622 00:C612: 26 16     ROL ram_0016
C - - - - - 0x000624 00:C614: 26 17     ROL ram_0017
C - - - - - 0x000626 00:C616: 26 18     ROL ram_0018
C - - - - - 0x000628 00:C618: 38        SEC
C - - - - - 0x000629 00:C619: A5 17     LDA ram_0017
C - - - - - 0x00062B 00:C61B: E5 98     SBC ram_0098
C - - - - - 0x00062D 00:C61D: A8        TAY
C - - - - - 0x00062E 00:C61E: A5 18     LDA ram_0018
C - - - - - 0x000630 00:C620: E5 99     SBC ram_0099
C - - - - - 0x000632 00:C622: CA        DEX
C - - - - - 0x000633 00:C623: 10 E7     BPL bra_C60C_loop
C - - - - - 0x000635 00:C625: B0 01     BCS bra_C628
C - - - - - 0x000637 00:C627: CA        DEX
bra_C628:
C - - - - - 0x000638 00:C628: A5 16     LDA ram_0016
C - - - - - 0x00063A 00:C62A: 60        RTS



sub_C62B:
C - - - - - 0x00063B 00:C62B: A9 00     LDA #$00
C - - - - - 0x00063D 00:C62D: 85 9D     STA ram_009D
C - - - - - 0x00063F 00:C62F: 85 9E     STA ram_009E
C - - - - - 0x000641 00:C631: 85 9F     STA ram_009F
C - - - - - 0x000643 00:C633: 85 A0     STA ram_00A0
C - - - - - 0x000645 00:C635: 85 97     STA ram_0097
C - - - - - 0x000647 00:C637: A2 07     LDX #$07
bra_C639_loop:
C - - - - - 0x000649 00:C639: 66 9B     ROR ram_009B
C - - - - - 0x00064B 00:C63B: 90 0F     BCC bra_C64C
C - - - - - 0x00064D 00:C63D: 18        CLC
C - - - - - 0x00064E 00:C63E: A0 02     LDY #$02
bra_C640_loop:
C - - - - - 0x000650 00:C640: B9 9D 00  LDA ram_009D,Y
C - - - - - 0x000653 00:C643: 79 97 00  ADC ram_0097,Y
C - - - - - 0x000656 00:C646: 99 9D 00  STA ram_009D,Y
C - - - - - 0x000659 00:C649: 88        DEY
C - - - - - 0x00065A 00:C64A: 10 F4     BPL bra_C640_loop
bra_C64C:
C - - - - - 0x00065C 00:C64C: 06 99     ASL ram_0099
C - - - - - 0x00065E 00:C64E: 26 98     ROL ram_0098
C - - - - - 0x000660 00:C650: 26 97     ROL ram_0097
C - - - - - 0x000662 00:C652: CA        DEX
C - - - - - 0x000663 00:C653: 10 E4     BPL bra_C639_loop
C - - - - - 0x000665 00:C655: A5 98     LDA ram_0098
C - - - - - 0x000667 00:C657: 85 99     STA ram_0099
C - - - - - 0x000669 00:C659: A5 97     LDA ram_0097
C - - - - - 0x00066B 00:C65B: 85 98     STA ram_0098
C - - - - - 0x00066D 00:C65D: A9 00     LDA #$00
C - - - - - 0x00066F 00:C65F: 85 97     STA ram_0097
C - - - - - 0x000671 00:C661: A2 07     LDX #$07
bra_C663_loop:
C - - - - - 0x000673 00:C663: 66 9C     ROR ram_009C
C - - - - - 0x000675 00:C665: 90 13     BCC bra_C67A
C - - - - - 0x000677 00:C667: 18        CLC
C - - - - - 0x000678 00:C668: A0 02     LDY #$02
bra_C66A_loop:
C - - - - - 0x00067A 00:C66A: B9 9E 00  LDA ram_009E,Y
C - - - - - 0x00067D 00:C66D: 79 97 00  ADC ram_0097,Y
C - - - - - 0x000680 00:C670: 99 9E 00  STA ram_009E,Y
C - - - - - 0x000683 00:C673: 88        DEY
C - - - - - 0x000684 00:C674: 10 F4     BPL bra_C66A_loop
C - - - - - 0x000686 00:C676: 90 02     BCC bra_C67A
- - - - - - 0x000688 00:C678: E6 9D     INC ram_009D
bra_C67A:
C - - - - - 0x00068A 00:C67A: 06 99     ASL ram_0099
C - - - - - 0x00068C 00:C67C: 26 98     ROL ram_0098
C - - - - - 0x00068E 00:C67E: 26 97     ROL ram_0097
C - - - - - 0x000690 00:C680: CA        DEX
C - - - - - 0x000691 00:C681: 10 E0     BPL bra_C663_loop
C - - - - - 0x000693 00:C683: 60        RTS



sub_C684:
C - - - - - 0x000694 00:C684: A9 00     LDA #$00
C - - - - - 0x000696 00:C686: 85 9B     STA ram_009B
C - - - - - 0x000698 00:C688: 85 9C     STA ram_009C
C - - - - - 0x00069A 00:C68A: 85 9A     STA ram_009A
C - - - - - 0x00069C 00:C68C: A2 07     LDX #$07
bra_C68E_loop:
C - - - - - 0x00069E 00:C68E: 46 98     LSR ram_0098
C - - - - - 0x0006A0 00:C690: 66 99     ROR ram_0099
C - - - - - 0x0006A2 00:C692: 66 9A     ROR ram_009A
C - - - - - 0x0006A4 00:C694: 38        SEC
C - - - - - 0x0006A5 00:C695: A0 02     LDY #$02
bra_C697_loop:
C - - - - - 0x0006A7 00:C697: B9 9D 00  LDA ram_009D,Y
C - - - - - 0x0006AA 00:C69A: F9 98 00  SBC ram_0098,Y
C - - - - - 0x0006AD 00:C69D: 99 A1 00  STA ram_00A1,Y
C - - - - - 0x0006B0 00:C6A0: 88        DEY
C - - - - - 0x0006B1 00:C6A1: 10 F4     BPL bra_C697_loop
C - - - - - 0x0006B3 00:C6A3: 90 0C     BCC bra_C6B1
C - - - - - 0x0006B5 00:C6A5: A0 02     LDY #$02
bra_C6A7_loop:
C - - - - - 0x0006B7 00:C6A7: B9 A1 00  LDA ram_00A1,Y
C - - - - - 0x0006BA 00:C6AA: 99 9D 00  STA ram_009D,Y
C - - - - - 0x0006BD 00:C6AD: 88        DEY
C - - - - - 0x0006BE 00:C6AE: 10 F7     BPL bra_C6A7_loop
C - - - - - 0x0006C0 00:C6B0: 38        SEC
bra_C6B1:
C - - - - - 0x0006C1 00:C6B1: 26 9B     ROL ram_009B
C - - - - - 0x0006C3 00:C6B3: CA        DEX
C - - - - - 0x0006C4 00:C6B4: 10 D8     BPL bra_C68E_loop
C - - - - - 0x0006C6 00:C6B6: A5 99     LDA ram_0099
C - - - - - 0x0006C8 00:C6B8: 85 98     STA ram_0098
C - - - - - 0x0006CA 00:C6BA: A5 9A     LDA ram_009A
C - - - - - 0x0006CC 00:C6BC: 85 99     STA ram_0099
C - - - - - 0x0006CE 00:C6BE: A9 00     LDA #$00
C - - - - - 0x0006D0 00:C6C0: 85 9A     STA ram_009A
C - - - - - 0x0006D2 00:C6C2: A2 07     LDX #$07
bra_C6C4_loop:
C - - - - - 0x0006D4 00:C6C4: 46 98     LSR ram_0098
C - - - - - 0x0006D6 00:C6C6: 66 99     ROR ram_0099
C - - - - - 0x0006D8 00:C6C8: 66 9A     ROR ram_009A
C - - - - - 0x0006DA 00:C6CA: 38        SEC
C - - - - - 0x0006DB 00:C6CB: A0 02     LDY #$02
bra_C6CD_loop:
C - - - - - 0x0006DD 00:C6CD: B9 9E 00  LDA ram_009E,Y
C - - - - - 0x0006E0 00:C6D0: F9 98 00  SBC ram_0098,Y
C - - - - - 0x0006E3 00:C6D3: 99 A1 00  STA ram_00A1,Y
C - - - - - 0x0006E6 00:C6D6: 88        DEY
C - - - - - 0x0006E7 00:C6D7: 10 F4     BPL bra_C6CD_loop
C - - - - - 0x0006E9 00:C6D9: 90 0C     BCC bra_C6E7
C - - - - - 0x0006EB 00:C6DB: A0 02     LDY #$02
bra_C6DD_loop:
C - - - - - 0x0006ED 00:C6DD: B9 A1 00  LDA ram_00A1,Y
C - - - - - 0x0006F0 00:C6E0: 99 9E 00  STA ram_009E,Y
C - - - - - 0x0006F3 00:C6E3: 88        DEY
C - - - - - 0x0006F4 00:C6E4: 10 F7     BPL bra_C6DD_loop
C - - - - - 0x0006F6 00:C6E6: 38        SEC
bra_C6E7:
C - - - - - 0x0006F7 00:C6E7: 26 9C     ROL ram_009C
C - - - - - 0x0006F9 00:C6E9: CA        DEX
C - - - - - 0x0006FA 00:C6EA: 10 D8     BPL bra_C6C4_loop
C - - - - - 0x0006FC 00:C6EC: 60        RTS



sub_C6ED:
C - - - - - 0x0006FD 00:C6ED: A5 9B     LDA ram_009B
C - - - - - 0x0006FF 00:C6EF: 85 A4     STA ram_00A4
C - - - - - 0x000701 00:C6F1: 10 11     BPL bra_C704_RTS
bra_C6F3:
sub_C6F3:
C - - - - - 0x000703 00:C6F3: A5 9C     LDA ram_009C
C - - - - - 0x000705 00:C6F5: 49 FF     EOR #$FF
C - - - - - 0x000707 00:C6F7: 38        SEC
C - - - - - 0x000708 00:C6F8: 69 00     ADC #$00
C - - - - - 0x00070A 00:C6FA: 85 9C     STA ram_009C
C - - - - - 0x00070C 00:C6FC: A5 9B     LDA ram_009B
C - - - - - 0x00070E 00:C6FE: 49 FF     EOR #$FF
C - - - - - 0x000710 00:C700: 69 00     ADC #$00
C - - - - - 0x000712 00:C702: 85 9B     STA ram_009B
bra_C704_RTS:
C - - - - - 0x000714 00:C704: 60        RTS



sub_C705:
C - - - - - 0x000715 00:C705: A5 A4     LDA ram_00A4
C - - - - - 0x000717 00:C707: 30 EA     BMI bra_C6F3
C - - - - - 0x000719 00:C709: 60        RTS



ofs_000_C70A_00:
C - - J - - 0x00071A 00:C70A: A4 43     LDY ram_0043
C - - - - - 0x00071C 00:C70C: D0 0D     BNE bra_C71B
C - - - - - 0x00071E 00:C70E: 20 9A C1  JSR sub_C19A
C - - - - - 0x000721 00:C711: 20 41 ED  JSR sub_ED41_draw_whole_field
C - - - - - 0x000724 00:C714: A9 00     LDA #$00
C - - - - - 0x000726 00:C716: 85 3C     STA ram_003C
C - - - - - 0x000728 00:C718: E6 43     INC ram_0043
C - - - - - 0x00072A 00:C71A: 60        RTS
bra_C71B:
C - - - - - 0x00072B 00:C71B: 88        DEY
C - - - - - 0x00072C 00:C71C: D0 1B     BNE bra_C739
C - - - - - 0x00072E 00:C71E: 20 4D ED  JSR sub_ED4D_print_level_select_options
C - - - - - 0x000731 00:C721: 20 A5 C1  JSR sub_C1A5_hide_all_sprites
C - - - - - 0x000734 00:C724: A9 88     LDA #< tbl_F288_select_level_cursor_spr_data
C - - - - - 0x000736 00:C726: 85 01     STA ram_0001
C - - - - - 0x000738 00:C728: A9 F2     LDA #> tbl_F288_select_level_cursor_spr_data
C - - - - - 0x00073A 00:C72A: 85 02     STA ram_0002
C - - - - - 0x00073C 00:C72C: A9 04     LDA #$04
C - - - - - 0x00073E 00:C72E: 85 03     STA ram_0003
C - - - - - 0x000740 00:C730: 20 40 C4  JSR sub_C440_write_to_oam
C - - - - - 0x000743 00:C733: 20 7A C7  JSR sub_C77A
C - - - - - 0x000746 00:C736: E6 43     INC ram_0043
C - - - - - 0x000748 00:C738: 60        RTS
bra_C739:
C - - - - - 0x000749 00:C739: 88        DEY
C - - - - - 0x00074A 00:C73A: D0 06     BNE bra_C742
C - - - - - 0x00074C 00:C73C: 20 15 C4  JSR sub_C415_enable_rendering
C - - - - - 0x00074F 00:C73F: E6 43     INC ram_0043
C - - - - - 0x000751 00:C741: 60        RTS
bra_C742:
C - - - - - 0x000752 00:C742: 88        DEY
C - - - - - 0x000753 00:C743: D0 0D     BNE bra_C752
C - - - - - 0x000755 00:C745: A5 1A     LDA ram_btn_hold
C - - - - - 0x000757 00:C747: 29 10     AND #con_btn_Start
C - - - - - 0x000759 00:C749: D0 06     BNE bra_C751_RTS
C - - - - - 0x00075B 00:C74B: A9 01     LDA #$01
C - - - - - 0x00075D 00:C74D: 85 35     STA ram_0035
C - - - - - 0x00075F 00:C74F: E6 43     INC ram_0043
bra_C751_RTS:
C - - - - - 0x000761 00:C751: 60        RTS
bra_C752:
C - - - - - 0x000762 00:C752: A5 1A     LDA ram_btn_hold
C - - - - - 0x000764 00:C754: 29 10     AND #con_btn_Start
C - - - - - 0x000766 00:C756: D0 34     BNE bra_C78C_start
C - - - - - 0x000768 00:C758: A5 1A     LDA ram_btn_hold
C - - - - - 0x00076A 00:C75A: 29 03     AND #con_btn_Right + con_btn_Left
C - - - - - 0x00076C 00:C75C: F0 29     BEQ bra_C787
C - - - - - 0x00076E 00:C75E: A4 35     LDY ram_0035
C - - - - - 0x000770 00:C760: D0 24     BNE bra_C786_RTS
C - - - - - 0x000772 00:C762: E6 35     INC ram_0035
C - - - - - 0x000774 00:C764: A4 3A     LDY ram_003A
C - - - - - 0x000776 00:C766: 29 02     AND #$02
C - - - - - 0x000778 00:C768: D0 09     BNE bra_C773
C - - - - - 0x00077A 00:C76A: C8        INY
C - - - - - 0x00077B 00:C76B: C0 05     CPY #$05
C - - - - - 0x00077D 00:C76D: D0 09     BNE bra_C778
C - - - - - 0x00077F 00:C76F: A0 00     LDY #$00
C - - - - - 0x000781 00:C771: F0 05     BEQ bra_C778    ; jmp
bra_C773:
C - - - - - 0x000783 00:C773: 88        DEY
C - - - - - 0x000784 00:C774: 10 02     BPL bra_C778
C - - - - - 0x000786 00:C776: A0 04     LDY #$04
bra_C778:
C - - - - - 0x000788 00:C778: 84 3A     STY ram_003A
sub_C77A:
C - - - - - 0x00078A 00:C77A: A5 3A     LDA ram_003A
C - - - - - 0x00078C 00:C77C: 0A        ASL
C - - - - - 0x00078D 00:C77D: 0A        ASL
C - - - - - 0x00078E 00:C77E: 0A        ASL
C - - - - - 0x00078F 00:C77F: 0A        ASL
C - - - - - 0x000790 00:C780: 18        CLC
C - - - - - 0x000791 00:C781: 69 60     ADC #$60
C - - - - - 0x000793 00:C783: 8D 03 02  STA ram_spr_X
bra_C786_RTS:
C - - - - - 0x000796 00:C786: 60        RTS
bra_C787:
C - - - - - 0x000797 00:C787: A9 00     LDA #$00
C - - - - - 0x000799 00:C789: 85 35     STA ram_0035
C - - - - - 0x00079B 00:C78B: 60        RTS
bra_C78C_start:
C - - - - - 0x00079C 00:C78C: A5 3A     LDA ram_003A
C - - - - - 0x00079E 00:C78E: 85 4C     STA ram_level
C - - - - - 0x0007A0 00:C790: A9 00     LDA #$00
C - - - - - 0x0007A2 00:C792: 85 4D     STA ram_004D
C - - - - - 0x0007A4 00:C794: E6 3D     INC ram_003D
C - - - - - 0x0007A6 00:C796: 60        RTS



sub_C797:
ofs_000_C797_01:
C - - - - - 0x0007A7 00:C797: 20 0A C4  JSR sub_C40A_disable_rendering
C - - - - - 0x0007AA 00:C79A: 20 9A C1  JSR sub_C19A
C - - - - - 0x0007AD 00:C79D: 20 41 ED  JSR sub_ED41_draw_whole_field
C - - - - - 0x0007B0 00:C7A0: 20 59 ED  JSR sub_ED59
C - - - - - 0x0007B3 00:C7A3: A2 0F     LDX #$0F
C - - - - - 0x0007B5 00:C7A5: A9 00     LDA #$00
bra_C7A7_loop:  ; 0050-005F
C - - - - - 0x0007B7 00:C7A7: 95 50     STA ram_sets_counter,X  ; and a bunch of other addresses
C - - - - - 0x0007B9 00:C7A9: CA        DEX
C - - - - - 0x0007BA 00:C7AA: 10 FB     BPL bra_C7A7_loop
C - - - - - 0x0007BC 00:C7AC: 85 78     STA ram_0078
C - - - - - 0x0007BE 00:C7AE: 85 7A     STA ram_fault_counter
C - - - - - 0x0007C0 00:C7B0: A9 C1     LDA #$C1
C - - - - - 0x0007C2 00:C7B2: 85 8D     STA ram_008D
C - - - - - 0x0007C4 00:C7B4: E6 3D     INC ram_003D
C - - - - - 0x0007C6 00:C7B6: 60        RTS



sub_C7B7:
ofs_000_C7B7_02:
C - - - - - 0x0007C7 00:C7B7: 20 15 C4  JSR sub_C415_enable_rendering
C - - - - - 0x0007CA 00:C7BA: 20 2C C4  JSR sub_C42C_disable_bg
C - - - - - 0x0007CD 00:C7BD: 20 A5 C1  JSR sub_C1A5_hide_all_sprites
C - - - - - 0x0007D0 00:C7C0: 20 70 ED  JSR sub_ED70
C - - - - - 0x0007D3 00:C7C3: E6 3D     INC ram_003D
C - - - - - 0x0007D5 00:C7C5: 60        RTS



sub_C7C6:
ofs_000_C7C6_03:
C - - - - - 0x0007D6 00:C7C6: 20 CA E8  JSR sub_E8CA
C - - - - - 0x0007D9 00:C7C9: A9 01     LDA #$01
C - - - - - 0x0007DB 00:C7CB: 85 31     STA ram_buffer_ready_flag
C - - - - - 0x0007DD 00:C7CD: 20 E7 C7  JSR sub_C7E7_default_players_data
C - - - - - 0x0007E0 00:C7D0: 20 E1 D7  JSR sub_D7E1
C - - - - - 0x0007E3 00:C7D3: A5 4C     LDA ram_level
C - - - - - 0x0007E5 00:C7D5: C9 02     CMP #$02
C - - - - - 0x0007E7 00:C7D7: B0 08     BCS bra_C7E1
C - - - - - 0x0007E9 00:C7D9: A9 20     LDA #$20
C - - - - - 0x0007EB 00:C7DB: 8D 19 03  STA ram_0319
C - - - - - 0x0007EE 00:C7DE: 8D 39 03  STA ram_0339
bra_C7E1:
C - - - - - 0x0007F1 00:C7E1: 20 36 C4  JSR sub_C436_enable_bg
C - - - - - 0x0007F4 00:C7E4: E6 3D     INC ram_003D
C - - - - - 0x0007F6 00:C7E6: 60        RTS



sub_C7E7_default_players_data:
; executes each time game reloads players after goal and stuff
C - - - - - 0x0007F7 00:C7E7: A0 BF     LDY #$BF
bra_C7E9_loop:
C - - - - - 0x0007F9 00:C7E9: B9 47 C8  LDA tbl_C847,Y
C - - - - - 0x0007FC 00:C7EC: 99 00 03  STA ram_0300,Y
C - - - - - 0x0007FF 00:C7EF: 88        DEY
C - - - - - 0x000800 00:C7F0: D0 F7     BNE bra_C7E9_loop
; Y = 00
C - - - - - 0x000802 00:C7F2: B9 47 C8  LDA tbl_C847,Y
C - - - - - 0x000805 00:C7F5: 99 00 03  STA ram_0300,Y
C - - - - - 0x000808 00:C7F8: A9 00     LDA #$00
C - - - - - 0x00080A 00:C7FA: 85 46     STA ram_0046
C - - - - - 0x00080C 00:C7FC: A5 39     LDA ram_game_mode
C - - - - - 0x00080E 00:C7FE: D0 07     BNE bra_C807    ; if 2 players
C - - - - - 0x000810 00:C800: 8D 20 03  STA ram_0320
C - - - - - 0x000813 00:C803: 8D 60 03  STA ram_0360
bra_C806_RTS:
C - - - - - 0x000816 00:C806: 60        RTS
bra_C807:
C - - - - - 0x000817 00:C807: A5 8D     LDA ram_008D
C - - - - - 0x000819 00:C809: 29 02     AND #$02
C - - - - - 0x00081B 00:C80B: D0 1C     BNE bra_C829
C - - - - - 0x00081D 00:C80D: A5 8D     LDA ram_008D
C - - - - - 0x00081F 00:C80F: 29 04     AND #$04
C - - - - - 0x000821 00:C811: F0 03     BEQ bra_C816
C - - - - - 0x000823 00:C813: 20 38 C8  JSR sub_C838
bra_C816:
C - - - - - 0x000826 00:C816: A5 8D     LDA ram_008D
C - - - - - 0x000828 00:C818: 29 01     AND #$01
C - - - - - 0x00082A 00:C81A: F0 EA     BEQ bra_C806_RTS
sub_C81C:
C - - - - - 0x00082C 00:C81C: AC 47 03  LDY ram_0347
C - - - - - 0x00082F 00:C81F: AE 67 03  LDX ram_0367
C - - - - - 0x000832 00:C822: 8E 47 03  STX ram_0347
C - - - - - 0x000835 00:C825: 8C 67 03  STY ram_0367
C - - - - - 0x000838 00:C828: 60        RTS
bra_C829:
C - - - - - 0x000839 00:C829: A5 8D     LDA ram_008D
C - - - - - 0x00083B 00:C82B: 29 04     AND #$04
C - - - - - 0x00083D 00:C82D: F0 03     BEQ bra_C832
- - - - - - 0x00083F 00:C82F: 20 1C C8  JSR sub_C81C
bra_C832:
C - - - - - 0x000842 00:C832: A5 8D     LDA ram_008D
C - - - - - 0x000844 00:C834: 29 01     AND #$01
C - - - - - 0x000846 00:C836: F0 CE     BEQ bra_C806_RTS
sub_C838:
C - - - - - 0x000848 00:C838: AC 07 03  LDY ram_0307
C - - - - - 0x00084B 00:C83B: AE 27 03  LDX ram_0327
C - - - - - 0x00084E 00:C83E: 8E 07 03  STX ram_0307
C - - - - - 0x000851 00:C841: 8C 27 03  STY ram_0327
C - - - - - 0x000854 00:C844: E6 46     INC ram_0046
C - - - - - 0x000856 00:C846: 60        RTS



tbl_C847:
- D 2 - - - 0x000857 00:C847: 01        .byte $01   ; 
- D 2 - - - 0x000858 00:C848: 00        .byte $00   ; 
- D 2 - - - 0x000859 00:C849: 03        .byte $03   ; 
- D 2 - - - 0x00085A 00:C84A: 00        .byte $00   ; 
- D 2 - - - 0x00085B 00:C84B: 00        .byte $00   ; 
- D 2 - - - 0x00085C 00:C84C: 0E        .byte $0E   ; 
- D 2 - - - 0x00085D 00:C84D: 11        .byte $11   ; 
- D 2 - - - 0x00085E 00:C84E: 00        .byte $00   ; 
- D 2 - - - 0x00085F 00:C84F: D8        .byte $D8   ; 
- D 2 - - - 0x000860 00:C850: 80        .byte $80   ; 
- D 2 - - - 0x000861 00:C851: 00        .byte $00   ; 
- D 2 - - - 0x000862 00:C852: 00        .byte $00   ; 
- D 2 - - - 0x000863 00:C853: 00        .byte $00   ; 
- D 2 - - - 0x000864 00:C854: 00        .byte $00   ; 
- D 2 - - - 0x000865 00:C855: 00        .byte $00   ; 
- D 2 - - - 0x000866 00:C856: 00        .byte $00   ; 
- D 2 - - - 0x000867 00:C857: 00        .byte $00   ; 
- D 2 - - - 0x000868 00:C858: 0E        .byte $0E   ; 
- D 2 - - - 0x000869 00:C859: 00        .byte $00   ; 
- D 2 - - - 0x00086A 00:C85A: 00        .byte $00   ; 
- D 2 - - - 0x00086B 00:C85B: C0        .byte $C0   ; 
- D 2 - - - 0x00086C 00:C85C: 40        .byte $40   ; 
- D 2 - - - 0x00086D 00:C85D: 7C        .byte $7C   ; 
- D 2 - - - 0x00086E 00:C85E: E8        .byte $E8   ; 
- D 2 - - - 0x00086F 00:C85F: 00        .byte $00   ; 
- D 2 - - - 0x000870 00:C860: 18        .byte $18   ; 
- D 2 - - - 0x000871 00:C861: 00        .byte $00   ; 
- D 2 - - - 0x000872 00:C862: 00        .byte $00   ; 
- D 2 - - - 0x000873 00:C863: 00        .byte $00   ; 
- D 2 - - - 0x000874 00:C864: 00        .byte $00   ; 
- D 2 - - - 0x000875 00:C865: 00        .byte $00   ; 
- D 2 - - - 0x000876 00:C866: 00        .byte $00   ; 
- D 2 - - - 0x000877 00:C867: 01        .byte $01   ; 
- D 2 - - - 0x000878 00:C868: 00        .byte $00   ; 
- D 2 - - - 0x000879 00:C869: 03        .byte $03   ; 
- D 2 - - - 0x00087A 00:C86A: 00        .byte $00   ; 
- D 2 - - - 0x00087B 00:C86B: 00        .byte $00   ; 
- D 2 - - - 0x00087C 00:C86C: 0E        .byte $0E   ; 
- D 2 - - - 0x00087D 00:C86D: 11        .byte $11   ; 
- D 2 - - - 0x00087E 00:C86E: 01        .byte $01   ; 
- D 2 - - - 0x00087F 00:C86F: A8        .byte $A8   ; 
- D 2 - - - 0x000880 00:C870: 80        .byte $80   ; 
- D 2 - - - 0x000881 00:C871: 30        .byte $30   ; 
- D 2 - - - 0x000882 00:C872: 00        .byte $00   ; 
- D 2 - - - 0x000883 00:C873: 00        .byte $00   ; 
- D 2 - - - 0x000884 00:C874: 00        .byte $00   ; 
- D 2 - - - 0x000885 00:C875: 00        .byte $00   ; 
- D 2 - - - 0x000886 00:C876: 00        .byte $00   ; 
- D 2 - - - 0x000887 00:C877: 00        .byte $00   ; 
- D 2 - - - 0x000888 00:C878: 0E        .byte $0E   ; 
- D 2 - - - 0x000889 00:C879: 00        .byte $00   ; 
- D 2 - - - 0x00088A 00:C87A: 00        .byte $00   ; 
- D 2 - - - 0x00088B 00:C87B: F0        .byte $F0   ; 
- D 2 - - - 0x00088C 00:C87C: 10        .byte $10   ; 
- D 2 - - - 0x00088D 00:C87D: 7C        .byte $7C   ; 
- D 2 - - - 0x00088E 00:C87E: E8        .byte $E8   ; 
- D 2 - - - 0x00088F 00:C87F: 00        .byte $00   ; 
- D 2 - - - 0x000890 00:C880: 18        .byte $18   ; 
- D 2 - - - 0x000891 00:C881: 00        .byte $00   ; 
- D 2 - - - 0x000892 00:C882: 00        .byte $00   ; 
- D 2 - - - 0x000893 00:C883: 00        .byte $00   ; 
- D 2 - - - 0x000894 00:C884: 00        .byte $00   ; 
- D 2 - - - 0x000895 00:C885: 00        .byte $00   ; 
- D 2 - - - 0x000896 00:C886: 00        .byte $00   ; 
- D 2 - - - 0x000897 00:C887: 01        .byte $01   ; 
- D 2 - - - 0x000898 00:C888: 00        .byte $00   ; 
- D 2 - - - 0x000899 00:C889: 03        .byte $03   ; 
- D 2 - - - 0x00089A 00:C88A: 00        .byte $00   ; 
- D 2 - - - 0x00089B 00:C88B: 00        .byte $00   ; 
- D 2 - - - 0x00089C 00:C88C: 0A        .byte $0A   ; 
- D 2 - - - 0x00089D 00:C88D: 29        .byte $29   ; 
- D 2 - - - 0x00089E 00:C88E: 03        .byte $03   ; 
- D 2 - - - 0x00089F 00:C88F: 2C        .byte $2C   ; 
- D 2 - - - 0x0008A0 00:C890: 80        .byte $80   ; 
- D 2 - - - 0x0008A1 00:C891: 70        .byte $70   ; 
- D 2 - - - 0x0008A2 00:C892: 00        .byte $00   ; 
- D 2 - - - 0x0008A3 00:C893: 00        .byte $00   ; 
- D 2 - - - 0x0008A4 00:C894: 00        .byte $00   ; 
- D 2 - - - 0x0008A5 00:C895: 00        .byte $00   ; 
- D 2 - - - 0x0008A6 00:C896: 00        .byte $00   ; 
- D 2 - - - 0x0008A7 00:C897: 00        .byte $00   ; 
- D 2 - - - 0x0008A8 00:C898: 08        .byte $08   ; 
- D 2 - - - 0x0008A9 00:C899: 00        .byte $00   ; 
- D 2 - - - 0x0008AA 00:C89A: 00        .byte $00   ; 
- D 2 - - - 0x0008AB 00:C89B: D0        .byte $D0   ; 
- D 2 - - - 0x0008AC 00:C89C: 30        .byte $30   ; 
- D 2 - - - 0x0008AD 00:C89D: 24        .byte $24   ; 
- D 2 - - - 0x0008AE 00:C89E: 70        .byte $70   ; 
- D 2 - - - 0x0008AF 00:C89F: 80        .byte $80   ; 
- D 2 - - - 0x0008B0 00:C8A0: 80        .byte $80   ; 
- D 2 - - - 0x0008B1 00:C8A1: 00        .byte $00   ; 
- D 2 - - - 0x0008B2 00:C8A2: 00        .byte $00   ; 
- D 2 - - - 0x0008B3 00:C8A3: 00        .byte $00   ; 
- D 2 - - - 0x0008B4 00:C8A4: 00        .byte $00   ; 
- D 2 - - - 0x0008B5 00:C8A5: 00        .byte $00   ; 
- D 2 - - - 0x0008B6 00:C8A6: 00        .byte $00   ; 
- D 2 - - - 0x0008B7 00:C8A7: 01        .byte $01   ; 
- D 2 - - - 0x0008B8 00:C8A8: 00        .byte $00   ; 
- D 2 - - - 0x0008B9 00:C8A9: 03        .byte $03   ; 
- D 2 - - - 0x0008BA 00:C8AA: 00        .byte $00   ; 
- D 2 - - - 0x0008BB 00:C8AB: 00        .byte $00   ; 
- D 2 - - - 0x0008BC 00:C8AC: 0A        .byte $0A   ; 
- D 2 - - - 0x0008BD 00:C8AD: 29        .byte $29   ; 
- D 2 - - - 0x0008BE 00:C8AE: 03        .byte $03   ; 
- D 2 - - - 0x0008BF 00:C8AF: 44        .byte $44   ; 
- D 2 - - - 0x0008C0 00:C8B0: 80        .byte $80   ; 
- D 2 - - - 0x0008C1 00:C8B1: A0        .byte $A0   ; 
- D 2 - - - 0x0008C2 00:C8B2: 00        .byte $00   ; 
- D 2 - - - 0x0008C3 00:C8B3: 00        .byte $00   ; 
- D 2 - - - 0x0008C4 00:C8B4: 00        .byte $00   ; 
- D 2 - - - 0x0008C5 00:C8B5: 00        .byte $00   ; 
- D 2 - - - 0x0008C6 00:C8B6: 00        .byte $00   ; 
- D 2 - - - 0x0008C7 00:C8B7: 00        .byte $00   ; 
- D 2 - - - 0x0008C8 00:C8B8: 08        .byte $08   ; 
- D 2 - - - 0x0008C9 00:C8B9: 00        .byte $00   ; 
- D 2 - - - 0x0008CA 00:C8BA: 00        .byte $00   ; 
- D 2 - - - 0x0008CB 00:C8BB: D0        .byte $D0   ; 
- D 2 - - - 0x0008CC 00:C8BC: 30        .byte $30   ; 
- D 2 - - - 0x0008CD 00:C8BD: 24        .byte $24   ; 
- D 2 - - - 0x0008CE 00:C8BE: 70        .byte $70   ; 
- D 2 - - - 0x0008CF 00:C8BF: 80        .byte $80   ; 
- D 2 - - - 0x0008D0 00:C8C0: 80        .byte $80   ; 
- D 2 - - - 0x0008D1 00:C8C1: 00        .byte $00   ; 
- D 2 - - - 0x0008D2 00:C8C2: 00        .byte $00   ; 
- D 2 - - - 0x0008D3 00:C8C3: 00        .byte $00   ; 
- D 2 - - - 0x0008D4 00:C8C4: 00        .byte $00   ; 
- D 2 - - - 0x0008D5 00:C8C5: 00        .byte $00   ; 
- D 2 - - - 0x0008D6 00:C8C6: 00        .byte $00   ; 
- D 2 - - - 0x0008D7 00:C8C7: 01        .byte $01   ; 
- D 2 - - - 0x0008D8 00:C8C8: 00        .byte $00   ; 
- D 2 - - - 0x0008D9 00:C8C9: 00        .byte $00   ; 
- D 2 - - - 0x0008DA 00:C8CA: 00        .byte $00   ; 
- D 2 - - - 0x0008DB 00:C8CB: 00        .byte $00   ; 
- D 2 - - - 0x0008DC 00:C8CC: 00        .byte $00   ; 
- D 2 - - - 0x0008DD 00:C8CD: 18        .byte $18   ; 
- D 2 - - - 0x0008DE 00:C8CE: 02        .byte $02   ; 
- D 2 - - - 0x0008DF 00:C8CF: B0        .byte $B0   ; 
- D 2 - - - 0x0008E0 00:C8D0: 80        .byte $80   ; 
- D 2 - - - 0x0008E1 00:C8D1: 60        .byte $60   ; 
- D 2 - - - 0x0008E2 00:C8D2: 00        .byte $00   ; 
- D 2 - - - 0x0008E3 00:C8D3: 00        .byte $00   ; 
- D 2 - - - 0x0008E4 00:C8D4: 00        .byte $00   ; 
- D 2 - - - 0x0008E5 00:C8D5: 00        .byte $00   ; 
- D 2 - - - 0x0008E6 00:C8D6: 00        .byte $00   ; 
- D 2 - - - 0x0008E7 00:C8D7: 01        .byte $01   ; 
- D 2 - - - 0x0008E8 00:C8D8: 00        .byte $00   ; 
- D 2 - - - 0x0008E9 00:C8D9: 00        .byte $00   ; 
- D 2 - - - 0x0008EA 00:C8DA: 00        .byte $00   ; 
- D 2 - - - 0x0008EB 00:C8DB: 02        .byte $02   ; 
- D 2 - - - 0x0008EC 00:C8DC: 00        .byte $00   ; 
- D 2 - - - 0x0008ED 00:C8DD: 00        .byte $00   ; 
- D 2 - - - 0x0008EE 00:C8DE: 00        .byte $00   ; 
- D 2 - - - 0x0008EF 00:C8DF: 00        .byte $00   ; 
- D 2 - - - 0x0008F0 00:C8E0: 00        .byte $00   ; 
- D 2 - - - 0x0008F1 00:C8E1: 01        .byte $01   ; 
- D 2 - - - 0x0008F2 00:C8E2: 00        .byte $00   ; 
- D 2 - - - 0x0008F3 00:C8E3: 00        .byte $00   ; 
- D 2 - - - 0x0008F4 00:C8E4: 00        .byte $00   ; 
- D 2 - - - 0x0008F5 00:C8E5: 00        .byte $00   ; 
- D 2 - - - 0x0008F6 00:C8E6: 00        .byte $00   ; 
- D 2 - - - 0x0008F7 00:C8E7: 01        .byte $01   ; 
- D 2 - - - 0x0008F8 00:C8E8: 00        .byte $00   ; 
- D 2 - - - 0x0008F9 00:C8E9: 00        .byte $00   ; 
- D 2 - - - 0x0008FA 00:C8EA: 00        .byte $00   ; 
- D 2 - - - 0x0008FB 00:C8EB: 00        .byte $00   ; 
- D 2 - - - 0x0008FC 00:C8EC: 00        .byte $00   ; 
- D 2 - - - 0x0008FD 00:C8ED: 20        .byte $20   ; 
- D 2 - - - 0x0008FE 00:C8EE: 02        .byte $02   ; 
- D 2 - - - 0x0008FF 00:C8EF: B0        .byte $B0   ; 
- D 2 - - - 0x000900 00:C8F0: 80        .byte $80   ; 
- D 2 - - - 0x000901 00:C8F1: 64        .byte $64   ; 
- D 2 - - - 0x000902 00:C8F2: 00        .byte $00   ; 
- D 2 - - - 0x000903 00:C8F3: 00        .byte $00   ; 
- D 2 - - - 0x000904 00:C8F4: 00        .byte $00   ; 
- D 2 - - - 0x000905 00:C8F5: 00        .byte $00   ; 
- D 2 - - - 0x000906 00:C8F6: 00        .byte $00   ; 
- D 2 - - - 0x000907 00:C8F7: 01        .byte $01   ; 
- D 2 - - - 0x000908 00:C8F8: 01        .byte $01   ; 
- D 2 - - - 0x000909 00:C8F9: 00        .byte $00   ; 
- D 2 - - - 0x00090A 00:C8FA: 00        .byte $00   ; 
- D 2 - - - 0x00090B 00:C8FB: 00        .byte $00   ; 
- D 2 - - - 0x00090C 00:C8FC: 00        .byte $00   ; 
- D 2 - - - 0x00090D 00:C8FD: 00        .byte $00   ; 
- D 2 - - - 0x00090E 00:C8FE: 00        .byte $00   ; 
- D 2 - - - 0x00090F 00:C8FF: 00        .byte $00   ; 
- D 2 - - - 0x000910 00:C900: 00        .byte $00   ; 
- D 2 - - - 0x000911 00:C901: 01        .byte $01   ; 
- D 2 - - - 0x000912 00:C902: 00        .byte $00   ; 
- D 2 - - - 0x000913 00:C903: 00        .byte $00   ; 
- D 2 - - - 0x000914 00:C904: 00        .byte $00   ; 
- D 2 - - - 0x000915 00:C905: 00        .byte $00   ; 
- D 2 - - - 0x000916 00:C906: 00        .byte $00   ; 



sub_C907:
ofs_000_C907_04:
C - - - - - 0x000917 00:C907: 20 D5 CB  JSR sub_CBD5
C - - - - - 0x00091A 00:C90A: 20 76 E0  JSR sub_E076
C - - - - - 0x00091D 00:C90D: 20 0B CD  JSR sub_CD0B
C - - - - - 0x000920 00:C910: 20 A9 D8  JSR sub_D8A9
C - - - - - 0x000923 00:C913: 20 F5 E5  JSR sub_E5F5
C - - - - - 0x000926 00:C916: 20 90 D7  JSR sub_D790
C - - - - - 0x000929 00:C919: 20 20 C9  JSR sub_C920
C - - - - - 0x00092C 00:C91C: 20 6F C9  JSR sub_C96F
C - - - - - 0x00092F 00:C91F: 60        RTS



sub_C920:
C - - - - - 0x000930 00:C920: A5 8D     LDA ram_008D
C - - - - - 0x000932 00:C922: 10 04     BPL bra_C928
C - - - - - 0x000934 00:C924: 29 02     AND #$02
C - - - - - 0x000936 00:C926: F0 03     BEQ bra_C92B
bra_C928:
C - - - - - 0x000938 00:C928: AD 10 03  LDA ram_input_p1
bra_C92B:
C - - - - - 0x00093B 00:C92B: A4 39     LDY ram_game_mode
C - - - - - 0x00093D 00:C92D: F0 03     BEQ bra_C932    ; if 1 player
C - - - - - 0x00093F 00:C92F: 0D 30 03  ORA ram_input_p2
bra_C932:
C - - - - - 0x000942 00:C932: 29 0F     AND #$0F
C - - - - - 0x000944 00:C934: F0 06     BEQ bra_C93C
C - - - - - 0x000946 00:C936: A9 40     LDA #$40
C - - - - - 0x000948 00:C938: 05 FE     ORA ram_00FE
C - - - - - 0x00094A 00:C93A: 85 FE     STA ram_00FE
bra_C93C:
C - - - - - 0x00094C 00:C93C: A5 7B     LDA ram_007B
C - - - - - 0x00094E 00:C93E: F0 0C     BEQ bra_C94C_RTS
C - - - - - 0x000950 00:C940: A9 40     LDA #$40
C - - - - - 0x000952 00:C942: 24 6C     BIT ram_006C
C - - - - - 0x000954 00:C944: 10 02     BPL bra_C948
C - - - - - 0x000956 00:C946: A9 C0     LDA #$C0
bra_C948:
C - - - - - 0x000958 00:C948: 05 FF     ORA ram_00FF
C - - - - - 0x00095A 00:C94A: 85 FF     STA ram_00FF
bra_C94C_RTS:
C - - - - - 0x00095C 00:C94C: 60        RTS



sub_C94D:
C - - - - - 0x00095D 00:C94D: A0 00     LDY #$00
C - - - - - 0x00095F 00:C94F: A5 84     LDA ram_0084
C - - - - - 0x000961 00:C951: C9 04     CMP #$04
C - - - - - 0x000963 00:C953: D0 01     BNE bra_C956
C - - - - - 0x000965 00:C955: C8        INY
bra_C956:
C - - - - - 0x000966 00:C956: 84 7B     STY ram_007B
C - - - - - 0x000968 00:C958: 0A        ASL
C - - - - - 0x000969 00:C959: AA        TAX
C - - - - - 0x00096A 00:C95A: BD 65 C9  LDA tbl_C965,X
C - - - - - 0x00096D 00:C95D: A8        TAY
C - - - - - 0x00096E 00:C95E: BD 66 C9  LDA tbl_C965 + 1,X
C - - - - - 0x000971 00:C961: 99 F1 00  STA ram_00F1,Y
C - - - - - 0x000974 00:C964: 60        RTS



tbl_C965:
; 00
- D 2 - - - 0x000975 00:C965: 0E        .byte $0E   ; 00FF
- D 2 - - - 0x000976 00:C966: 04        .byte $04   ; 
; 01
- D 2 - - - 0x000977 00:C967: 0E        .byte $0E   ; 00FF
- D 2 - - - 0x000978 00:C968: 08        .byte $08   ; 
; 02
- D 2 - - - 0x000979 00:C969: 0E        .byte $0E   ; 00FF
- D 2 - - - 0x00097A 00:C96A: 10        .byte $10   ; 
; 03
- D 2 - - - 0x00097B 00:C96B: 0E        .byte $0E   ; 00FF
- D 2 - - - 0x00097C 00:C96C: 20        .byte $20   ; 
; 04
- D 2 - - - 0x00097D 00:C96D: 00        .byte $00   ; 00F1
- D 2 - - - 0x00097E 00:C96E: 00        .byte $00   ; 



sub_C96F:
C - - - - - 0x00097F 00:C96F: A4 24     LDY ram_0024
C - - - - - 0x000981 00:C971: 88        DEY
C - - - - - 0x000982 00:C972: D0 03     BNE bra_C977
C - - - - - 0x000984 00:C974: 20 46 E6  JSR sub_E646_display_mario_message
bra_C977:
C - - - - - 0x000987 00:C977: A5 79     LDA ram_mario_message
C - - - - - 0x000989 00:C979: F0 0A     BEQ bra_C985
C - - - - - 0x00098B 00:C97B: A5 8F     LDA ram_008F
C - - - - - 0x00098D 00:C97D: D0 06     BNE bra_C985
C - - - - - 0x00098F 00:C97F: E6 8F     INC ram_008F
C - - - - - 0x000991 00:C981: A9 0A     LDA #$0A
C - - - - - 0x000993 00:C983: 85 24     STA ram_0024
bra_C985:
C - - - - - 0x000995 00:C985: A5 78     LDA ram_0078
C - - - - - 0x000997 00:C987: F0 18     BEQ bra_C9A1_RTS
C - - - - - 0x000999 00:C989: E6 3D     INC ram_003D
C - - - - - 0x00099B 00:C98B: E6 3E     INC ram_003E
C - - - - - 0x00099D 00:C98D: A9 00     LDA #$00
C - - - - - 0x00099F 00:C98F: 85 78     STA ram_0078
C - - - - - 0x0009A1 00:C991: 20 46 E6  JSR sub_E646_display_mario_message
C - - - - - 0x0009A4 00:C994: A9 10     LDA #$10
C - - - - - 0x0009A6 00:C996: AC 91 03  LDY ram_0391
C - - - - - 0x0009A9 00:C999: C0 05     CPY #$05
C - - - - - 0x0009AB 00:C99B: B0 02     BCS bra_C99F
C - - - - - 0x0009AD 00:C99D: A9 30     LDA #$30
bra_C99F:
C - - - - - 0x0009AF 00:C99F: 85 21     STA ram_0021
bra_C9A1_RTS:
C - - - - - 0x0009B1 00:C9A1: 60        RTS



ofs_000_C9A2_05:
C - - J - - 0x0009B2 00:C9A2: A5 21     LDA ram_0021
C - - - - - 0x0009B4 00:C9A4: D0 0E     BNE bra_C9B4
C - - - - - 0x0009B6 00:C9A6: A9 FF     LDA #$FF
C - - - - - 0x0009B8 00:C9A8: AC 8A 03  LDY ram_index_oam
C - - - - - 0x0009BB 00:C9AB: 99 01 02  STA ram_spr_T,Y
C - - - - - 0x0009BE 00:C9AE: 99 05 02  STA ram_spr_T + $04,Y
C - - - - - 0x0009C1 00:C9B1: E6 3D     INC ram_003D
bra_C9B3_RTS:
C - - - - - 0x0009C3 00:C9B3: 60        RTS
bra_C9B4:
C - - - - - 0x0009C4 00:C9B4: C9 0E     CMP #$0E
C - - - - - 0x0009C6 00:C9B6: D0 0B     BNE bra_C9C3
C - - - - - 0x0009C8 00:C9B8: 20 7F E7  JSR sub_E77F
C - - - - - 0x0009CB 00:C9BB: 20 CA E8  JSR sub_E8CA
loc_C9BE:
C D 2 - - - 0x0009CE 00:C9BE: A9 01     LDA #$01
C - - - - - 0x0009D0 00:C9C0: 85 31     STA ram_buffer_ready_flag
bra_C9C2_RTS:
C - - - - - 0x0009D2 00:C9C2: 60        RTS
bra_C9C3:
C - - - - - 0x0009D3 00:C9C3: C9 0D     CMP #$0D
C - - - - - 0x0009D5 00:C9C5: D0 10     BNE bra_C9D7
C - - - - - 0x0009D7 00:C9C7: A5 57     LDA ram_0057
C - - - - - 0x0009D9 00:C9C9: C9 01     CMP #$01
C - - - - - 0x0009DB 00:C9CB: D0 F5     BNE bra_C9C2_RTS
C - - - - - 0x0009DD 00:C9CD: A5 58     LDA ram_score
C - - - - - 0x0009DF 00:C9CF: 05 59     ORA ram_score + 1
C - - - - - 0x0009E1 00:C9D1: D0 EF     BNE bra_C9C2_RTS
C - - - - - 0x0009E3 00:C9D3: 20 85 E6  JSR sub_E685_deuce_message
C - - - - - 0x0009E6 00:C9D6: 60        RTS
bra_C9D7:
C - - - - - 0x0009E7 00:C9D7: C9 02     CMP #$02
C - - - - - 0x0009E9 00:C9D9: D0 D8     BNE bra_C9B3_RTS
C - - - - - 0x0009EB 00:C9DB: 20 0C E8  JSR sub_E80C
C - - - - - 0x0009EE 00:C9DE: 20 65 E9  JSR sub_E965
C - - - - - 0x0009F1 00:C9E1: 20 96 CC  JSR sub_CC96
C - - - - - 0x0009F4 00:C9E4: 4C BE C9  JMP loc_C9BE



ofs_000_C9E7_06:
C - - J - - 0x0009F7 00:C9E7: 20 DB E9  JSR sub_E9DB
C - - - - - 0x0009FA 00:C9EA: A9 01     LDA #$01
C - - - - - 0x0009FC 00:C9EC: 85 31     STA ram_buffer_ready_flag
C - - - - - 0x0009FE 00:C9EE: A5 25     LDA ram_0025
C - - - - - 0x000A00 00:C9F0: D0 2F     BNE bra_CA21_RTS
C - - - - - 0x000A02 00:C9F2: 20 83 E8  JSR sub_E883
C - - - - - 0x000A05 00:C9F5: A5 5E     LDA ram_005E
C - - - - - 0x000A07 00:C9F7: 85 3D     STA ram_003D
C - - - - - 0x000A09 00:C9F9: C9 0B     CMP #$0B
C - - - - - 0x000A0B 00:C9FB: D0 24     BNE bra_CA21_RTS
C - - - - - 0x000A0D 00:C9FD: 20 AF E8  JSR sub_E8AF
C - - - - - 0x000A10 00:CA00: 20 05 EB  JSR sub_EB05
C - - - - - 0x000A13 00:CA03: 20 CD CC  JSR sub_CCCD
C - - - - - 0x000A16 00:CA06: A5 5C     LDA ram_005C
C - - - - - 0x000A18 00:CA08: 0A        ASL
C - - - - - 0x000A19 00:CA09: A8        TAY
C - - - - - 0x000A1A 00:CA0A: B9 22 CA  LDA tbl_CA22,Y
C - - - - - 0x000A1D 00:CA0D: AA        TAX
C - - - - - 0x000A1E 00:CA0E: B9 23 CA  LDA tbl_CA22 + 1,Y
C - - - - - 0x000A21 00:CA11: 95 FC     STA ram_00FD - 1,X
C - - - - - 0x000A23 00:CA13: A0 20     LDY #$20
C - - - - - 0x000A25 00:CA15: A5 5C     LDA ram_005C
C - - - - - 0x000A27 00:CA17: D0 02     BNE bra_CA1B
- - - - - - 0x000A29 00:CA19: A0 50     LDY #$50
bra_CA1B:
C - - - - - 0x000A2B 00:CA1B: 84 25     STY ram_0025
C - - - - - 0x000A2D 00:CA1D: A9 00     LDA #$00
C - - - - - 0x000A2F 00:CA1F: 85 44     STA ram_0044
bra_CA21_RTS:
C - - - - - 0x000A31 00:CA21: 60        RTS



tbl_CA22:
; bzk optimize, 1st byte is the same
; 00
- - - - - - 0x000A32 00:CA22: 01        .byte $01   ; 00FD
- - - - - - 0x000A33 00:CA23: 01        .byte $01   ; 
; 01
- D 2 - - - 0x000A34 00:CA24: 01        .byte $01   ; 00FD
- D 2 - - - 0x000A35 00:CA25: 02        .byte $02   ; 
; 02
- - - - - - 0x000A36 00:CA26: 01        .byte $01   ; 00FD
- - - - - - 0x000A37 00:CA27: 04        .byte $04   ; 



ofs_000_CA28_08:
- - - - - - 0x000A38 00:CA28: A5 25     LDA ram_0025
- - - - - - 0x000A3A 00:CA2A: D0 04     BNE bra_CA30_RTS
- - - - - - 0x000A3C 00:CA2C: A9 04     LDA #$04
- - - - - - 0x000A3E 00:CA2E: D0 28     BNE bra_CA58    ; jmp
bra_CA30_RTS:
- - - - - - 0x000A40 00:CA30: 60        RTS



ofs_000_CA31_09:
- - - - - - 0x000A41 00:CA31: A5 25     LDA ram_0025
- - - - - - 0x000A43 00:CA33: D0 04     BNE bra_CA39_RTS
- - - - - - 0x000A45 00:CA35: A5 3B     LDA ram_003B
- - - - - - 0x000A47 00:CA37: 85 3D     STA ram_003D
bra_CA39_RTS:
- - - - - - 0x000A49 00:CA39: 60        RTS



ofs_000_CA3A_0A:
C - - J - - 0x000A4A 00:CA3A: A5 21     LDA ram_0021
C - - - - - 0x000A4C 00:CA3C: F0 0F     BEQ bra_CA4D
C - - - - - 0x000A4E 00:CA3E: C9 0A     CMP #$0A
C - - - - - 0x000A50 00:CA40: D0 18     BNE bra_CA5A_RTS
C - - - - - 0x000A52 00:CA42: A5 0A     LDA ram_for_2001
C - - - - - 0x000A54 00:CA44: 09 10     ORA #$10
C - - - - - 0x000A56 00:CA46: 8D 01 20  STA $2001
C - - - - - 0x000A59 00:CA49: 85 0A     STA ram_for_2001
C - - - - - 0x000A5B 00:CA4B: D0 0D     BNE bra_CA5A_RTS    ; jmp
bra_CA4D:
C - - - - - 0x000A5D 00:CA4D: A2 07     LDX #$07
bra_CA4F_loop:
C - - - - - 0x000A5F 00:CA4F: B5 28     LDA ram_0028,X
C - - - - - 0x000A61 00:CA51: 95 20     STA ram_0020,X
C - - - - - 0x000A63 00:CA53: CA        DEX
C - - - - - 0x000A64 00:CA54: 10 F9     BPL bra_CA4F_loop
C - - - - - 0x000A66 00:CA56: A5 3B     LDA ram_003B
bra_CA58:
C - - - - - 0x000A68 00:CA58: 85 3D     STA ram_003D
bra_CA5A_RTS:
C - - - - - 0x000A6A 00:CA5A: 60        RTS



ofs_000_CA5B_0B:
C - - J - - 0x000A6B 00:CA5B: A5 44     LDA ram_0044
C - - - - - 0x000A6D 00:CA5D: D0 1F     BNE bra_CA7E
C - - - - - 0x000A6F 00:CA5F: A5 25     LDA ram_0025
C - - - - - 0x000A71 00:CA61: D0 10     BNE bra_CA73_RTS
C - - - - - 0x000A73 00:CA63: A5 5C     LDA ram_005C
C - - - - - 0x000A75 00:CA65: C9 01     CMP #$01
C - - - - - 0x000A77 00:CA67: F0 0B     BEQ bra_CA74
- - - - - - 0x000A79 00:CA69: A9 01     LDA #$01
- - - - - - 0x000A7B 00:CA6B: 85 38     STA ram_0038
- - - - - - 0x000A7D 00:CA6D: 85 35     STA ram_0035
- - - - - - 0x000A7F 00:CA6F: A9 00     LDA #$00
- - - - - - 0x000A81 00:CA71: 85 3E     STA ram_003E
bra_CA73_RTS:
C - - - - - 0x000A83 00:CA73: 60        RTS
bra_CA74:
C - - - - - 0x000A84 00:CA74: 20 DA EA  JSR sub_EADA
C - - - - - 0x000A87 00:CA77: A9 20     LDA #$20
C - - - - - 0x000A89 00:CA79: 85 25     STA ram_0025
C - - - - - 0x000A8B 00:CA7B: E6 44     INC ram_0044
C - - - - - 0x000A8D 00:CA7D: 60        RTS
bra_CA7E:
C - - - - - 0x000A8E 00:CA7E: A5 25     LDA ram_0025
C - - - - - 0x000A90 00:CA80: D0 F1     BNE bra_CA73_RTS
C - - - - - 0x000A92 00:CA82: A9 01     LDA #$01
C - - - - - 0x000A94 00:CA84: 85 3D     STA ram_003D
C - - - - - 0x000A96 00:CA86: 60        RTS



ofs_001_CA87_00:
C - - J - - 0x000A97 00:CA87: 20 0A C4  JSR sub_C40A_disable_rendering
C - - - - - 0x000A9A 00:CA8A: A5 E0     LDA ram_00E0
C - - - - - 0x000A9C 00:CA8C: 85 39     STA ram_game_mode
C - - - - - 0x000A9E 00:CA8E: 20 9A C1  JSR sub_C19A
C - - - - - 0x000AA1 00:CA91: 20 A5 C1  JSR sub_C1A5_hide_all_sprites
C - - - - - 0x000AA4 00:CA94: A2 E6     LDX #< tbl_EEE6_title_screen
C - - - - - 0x000AA6 00:CA96: A0 EE     LDY #> tbl_EEE6_title_screen
C - - - - - 0x000AA8 00:CA98: 20 B1 C3  JSR sub_C3B1_draw_screen
C - - - - - 0x000AAB 00:CA9B: A9 02     LDA #$02
C - - - - - 0x000AAD 00:CA9D: 85 3C     STA ram_003C
C - - - - - 0x000AAF 00:CA9F: A9 01     LDA #$01
C - - - - - 0x000AB1 00:CAA1: 85 35     STA ram_0035
C - - - - - 0x000AB3 00:CAA3: A9 84     LDA #< tbl_F284_select_game_mode_cursor_spr_data
C - - - - - 0x000AB5 00:CAA5: 85 01     STA ram_0001
C - - - - - 0x000AB7 00:CAA7: A9 F2     LDA #> tbl_F284_select_game_mode_cursor_spr_data
C - - - - - 0x000AB9 00:CAA9: 85 02     STA ram_0002
C - - - - - 0x000ABB 00:CAAB: A9 04     LDA #$04
C - - - - - 0x000ABD 00:CAAD: 85 03     STA ram_0003
C - - - - - 0x000ABF 00:CAAF: 20 40 C4  JSR sub_C440_write_to_oam
C - - - - - 0x000AC2 00:CAB2: E6 3E     INC ram_003E
C - - - - - 0x000AC4 00:CAB4: A4 3F     LDY ram_demo_counter
C - - - - - 0x000AC6 00:CAB6: D0 08     BNE bra_CAC0
C - - - - - 0x000AC8 00:CAB8: A0 03     LDY #$03
C - - - - - 0x000ACA 00:CABA: 84 3F     STY ram_demo_counter
C - - - - - 0x000ACC 00:CABC: A9 4F     LDA #$4F
C - - - - - 0x000ACE 00:CABE: D0 04     BNE bra_CAC4_set_timer    ; jmp
bra_CAC0:
C - - - - - 0x000AD0 00:CAC0: C6 3F     DEC ram_demo_counter
C - - - - - 0x000AD2 00:CAC2: A9 25     LDA #$25
bra_CAC4_set_timer:
C - - - - - 0x000AD4 00:CAC4: 85 25     STA ram_0025
C - - - - - 0x000AD6 00:CAC6: 4C 15 C4  JMP loc_C415_enable_rendering



ofs_001_CAC9_01:
C - - J - - 0x000AD9 00:CAC9: A4 25     LDY ram_0025
C - - - - - 0x000ADB 00:CACB: F0 0D     BEQ bra_CADA
C - - - - - 0x000ADD 00:CACD: C0 4B     CPY #$4B
C - - - - - 0x000ADF 00:CACF: D0 08     BNE bra_CAD9_RTS
C - - - - - 0x000AE1 00:CAD1: A9 08     LDA #$08
C - - - - - 0x000AE3 00:CAD3: 85 FD     STA ram_00FD
C - - - - - 0x000AE5 00:CAD5: A0 48     LDY #$48
C - - - - - 0x000AE7 00:CAD7: 84 25     STY ram_0025
bra_CAD9_RTS:
C - - - - - 0x000AE9 00:CAD9: 60        RTS
bra_CADA:
C - - - - - 0x000AEA 00:CADA: E6 3E     INC ram_003E
C - - - - - 0x000AEC 00:CADC: 60        RTS



ofs_001_CADD_02:
C - - J - - 0x000AED 00:CADD: A9 01     LDA #$01
C - - - - - 0x000AEF 00:CADF: 85 39     STA ram_game_mode
C - - - - - 0x000AF1 00:CAE1: E6 3E     INC ram_003E
C - - - - - 0x000AF3 00:CAE3: 60        RTS



ofs_001_CAE4_03:
C - - J - - 0x000AF4 00:CAE4: 20 97 C7  JSR sub_C797
C - - - - - 0x000AF7 00:CAE7: A9 00     LDA #$00
C - - - - - 0x000AF9 00:CAE9: 85 4C     STA ram_level
C - - - - - 0x000AFB 00:CAEB: E6 3E     INC ram_003E
C - - - - - 0x000AFD 00:CAED: 60        RTS



ofs_001_CAEE_04:
C - - J - - 0x000AFE 00:CAEE: 20 B7 C7  JSR sub_C7B7
C - - - - - 0x000B01 00:CAF1: E6 3E     INC ram_003E
C - - - - - 0x000B03 00:CAF3: 60        RTS



ofs_001_CAF4_05:
C - - J - - 0x000B04 00:CAF4: 20 C6 C7  JSR sub_C7C6
C - - - - - 0x000B07 00:CAF7: A9 00     LDA #$00
C - - - - - 0x000B09 00:CAF9: 85 49     STA ram_0049
C - - - - - 0x000B0B 00:CAFB: 85 48     STA ram_0048
C - - - - - 0x000B0D 00:CAFD: 85 4B     STA ram_004B
C - - - - - 0x000B0F 00:CAFF: 85 4A     STA ram_004A
C - - - - - 0x000B11 00:CB01: E6 3E     INC ram_003E
C - - - - - 0x000B13 00:CB03: 60        RTS



ofs_001_CB04_06:
C - - J - - 0x000B14 00:CB04: A5 48     LDA ram_0048
C - - - - - 0x000B16 00:CB06: F0 0C     BEQ bra_CB14
C - - - - - 0x000B18 00:CB08: C6 48     DEC ram_0048
C - - - - - 0x000B1A 00:CB0A: AD 10 03  LDA ram_input_p1
C - - - - - 0x000B1D 00:CB0D: 29 0F     AND #$0F
C - - - - - 0x000B1F 00:CB0F: 85 1B     STA ram_btn_press
C - - - - - 0x000B21 00:CB11: 4C 28 CB  JMP loc_CB28
bra_CB14:
C - - - - - 0x000B24 00:CB14: A4 49     LDY ram_0049
C - - - - - 0x000B26 00:CB16: B9 59 CB  LDA tbl_CB59,Y
C - - - - - 0x000B29 00:CB19: C9 AA     CMP #$AA
C - - - - - 0x000B2B 00:CB1B: F0 35     BEQ bra_CB52
C - - - - - 0x000B2D 00:CB1D: 85 1B     STA ram_btn_press
C - - - - - 0x000B2F 00:CB1F: C8        INY
C - - - - - 0x000B30 00:CB20: B9 59 CB  LDA tbl_CB59,Y
C - - - - - 0x000B33 00:CB23: 85 48     STA ram_0048
C - - - - - 0x000B35 00:CB25: C8        INY
C - - - - - 0x000B36 00:CB26: 84 49     STY ram_0049
loc_CB28:
C D 2 - - - 0x000B38 00:CB28: A5 4A     LDA ram_004A
C - - - - - 0x000B3A 00:CB2A: F0 0C     BEQ bra_CB38
C - - - - - 0x000B3C 00:CB2C: C6 4A     DEC ram_004A
C - - - - - 0x000B3E 00:CB2E: AD 30 03  LDA ram_input_p2
C - - - - - 0x000B41 00:CB31: 29 0F     AND #$0F
C - - - - - 0x000B43 00:CB33: 85 1D     STA ram_p2_btn_press
C - - - - - 0x000B45 00:CB35: 4C 48 CB  JMP loc_CB48
bra_CB38:
C - - - - - 0x000B48 00:CB38: A4 4B     LDY ram_004B
C - - - - - 0x000B4A 00:CB3A: B9 8E CB  LDA tbl_CB8E,Y
C - - - - - 0x000B4D 00:CB3D: 85 1D     STA ram_p2_btn_press
C - - - - - 0x000B4F 00:CB3F: C8        INY
C - - - - - 0x000B50 00:CB40: B9 8E CB  LDA tbl_CB8E,Y
C - - - - - 0x000B53 00:CB43: 85 4A     STA ram_004A
C - - - - - 0x000B55 00:CB45: C8        INY
C - - - - - 0x000B56 00:CB46: 84 4B     STY ram_004B
loc_CB48:
C D 2 - - - 0x000B58 00:CB48: 20 07 C9  JSR sub_C907
C - - - - - 0x000B5B 00:CB4B: A5 3E     LDA ram_003E
C - - - - - 0x000B5D 00:CB4D: C9 07     CMP #$07
C - - - - - 0x000B5F 00:CB4F: F0 03     BEQ bra_CB54
C - - - - - 0x000B61 00:CB51: 60        RTS
bra_CB52:
- - - - - - 0x000B62 00:CB52: E6 3E     INC ram_003E
bra_CB54:
C - - - - - 0x000B64 00:CB54: A9 08     LDA #$08
C - - - - - 0x000B66 00:CB56: 85 25     STA ram_0025
C - - - - - 0x000B68 00:CB58: 60        RTS



tbl_CB59:
- D 2 - - - 0x000B69 00:CB59: 01        .byte con_btn_Right, $08   ; 
- D 2 - - - 0x000B6B 00:CB5B: 00        .byte $00, $A4   ; 
- D 2 - - - 0x000B6D 00:CB5D: 80        .byte con_btn_A, $B4   ; 
- D 2 - - - 0x000B6F 00:CB5F: 02        .byte con_btn_Left, $2C   ; 
- D 2 - - - 0x000B71 00:CB61: 00        .byte $00, $2C   ; 
- D 2 - - - 0x000B73 00:CB63: 80        .byte con_btn_A, $20   ; 
- D 2 - - - 0x000B75 00:CB65: 08        .byte $08, $40   ; 
- D 2 - - - 0x000B77 00:CB67: 80        .byte con_btn_A, $20   ; 
- D 2 - - - 0x000B79 00:CB69: 80        .byte con_btn_A, $20   ; 
- D 2 - - - 0x000B7B 00:CB6B: 80        .byte con_btn_A, $20   ; 
- D 2 - - - 0x000B7D 00:CB6D: 80        .byte con_btn_A, $20   ; 
- D 2 - - - 0x000B7F 00:CB6F: 01        .byte con_btn_Right, $08   ; 
- D 2 - - - 0x000B81 00:CB71: 00        .byte $00, $10   ; 
- D 2 - - - 0x000B83 00:CB73: 80        .byte con_btn_A, $20   ; 
- D 2 - - - 0x000B85 00:CB75: 01        .byte con_btn_Right, $08   ; 
- D 2 - - - 0x000B87 00:CB77: 00        .byte $00, $10   ; 
- D 2 - - - 0x000B89 00:CB79: 80        .byte con_btn_A, $20   ; 
- D 2 - - - 0x000B8B 00:CB7B: 80        .byte con_btn_A, $20   ; 
- D 2 - - - 0x000B8D 00:CB7D: 04        .byte con_btn_Down, $18   ; 
- D 2 - - - 0x000B8F 00:CB7F: 80        .byte con_btn_A, $28   ; 
- D 2 - - - 0x000B91 00:CB81: 80        .byte con_btn_A, $28   ; 
- D 2 - - - 0x000B93 00:CB83: 04        .byte con_btn_Down, $18   ; 
- D 2 - - - 0x000B95 00:CB85: 80        .byte con_btn_A, $20   ; 
- D 2 - - - 0x000B97 00:CB87: 80        .byte con_btn_A, $20   ; 
- D 2 - - - 0x000B99 00:CB89: 80        .byte con_btn_A, $FF   ; 
- - - - - - 0x000B9B 00:CB8B: 80        .byte con_btn_A, $FF   ; 
- - - - - - 0x000B9D 00:CB8D: AA        .byte $AA   ; end token



tbl_CB8E:
- D 2 - - - 0x000B9E 00:CB8E: 00        .byte $00, $A8   ; 
- D 2 - - - 0x000BA0 00:CB90: 08        .byte con_btn_Up, $20   ; 
- D 2 - - - 0x000BA2 00:CB92: 02        .byte con_btn_Left, $04   ; 
- D 2 - - - 0x000BA4 00:CB94: 00        .byte $00, $BC   ; 
- D 2 - - - 0x000BA6 00:CB96: 80        .byte con_btn_A, $20   ; 
- D 2 - - - 0x000BA8 00:CB98: 04        .byte con_btn_Down, $10   ; 
- D 2 - - - 0x000BAA 00:CB9A: 00        .byte $00, $38   ; 
- D 2 - - - 0x000BAC 00:CB9C: 80        .byte con_btn_A, $24   ; 
- D 2 - - - 0x000BAE 00:CB9E: 05        .byte con_btn_Right + con_btn_Down, $24   ; 
- D 2 - - - 0x000BB0 00:CBA0: 00        .byte $00, $24   ; 
- D 2 - - - 0x000BB2 00:CBA2: 80        .byte con_btn_A, $48   ; 
- D 2 - - - 0x000BB4 00:CBA4: 80        .byte con_btn_A, $38   ; 
- D 2 - - - 0x000BB6 00:CBA6: 80        .byte con_btn_A, $38   ; 
- D 2 - - - 0x000BB8 00:CBA8: 02        .byte con_btn_Left, $20   ; 
- D 2 - - - 0x000BBA 00:CBAA: 80        .byte con_btn_A, $30   ; 
- D 2 - - - 0x000BBC 00:CBAC: 80        .byte con_btn_A, $30   ; 
- D 2 - - - 0x000BBE 00:CBAE: 80        .byte con_btn_A, $20   ; 
- D 2 - - - 0x000BC0 00:CBB0: 08        .byte con_btn_Up, $40   ; 
- D 2 - - - 0x000BC2 00:CBB2: 80        .byte con_btn_A, $20   ; 
- D 2 - - - 0x000BC4 00:CBB4: 80        .byte con_btn_A, $20   ; 
- D 2 - - - 0x000BC6 00:CBB6: 80        .byte con_btn_A, $20   ; 
- D 2 - - - 0x000BC8 00:CBB8: 80        .byte con_btn_A, $20   ; 
- D 2 - - - 0x000BCA 00:CBBA: 80        .byte con_btn_A, $20   ; 
- D 2 - - - 0x000BCC 00:CBBC: 80        .byte con_btn_A, $FF   ; 
- - - - - - 0x000BCE 00:CBBE: 80        .byte con_btn_A, $FF   ; 
- - - - - - 0x000BD0 00:CBC0: AA        .byte $AA   ; end token



ofs_001_CBC1_07:
C - - J - - 0x000BD1 00:CBC1: A5 25     LDA ram_0025
C - - - - - 0x000BD3 00:CBC3: D0 05     BNE bra_CBCA_RTS
C - - - - - 0x000BD5 00:CBC5: 20 CB CB  JSR sub_CBCB
C - - - - - 0x000BD8 00:CBC8: 85 3E     STA ram_003E
bra_CBCA_RTS:
C - - - - - 0x000BDA 00:CBCA: 60        RTS



sub_CBCB:
C - - - - - 0x000BDB 00:CBCB: A9 00     LDA #$00
C - - - - - 0x000BDD 00:CBCD: A2 02     LDX #$02
bra_CBCF_loop:
C - - - - - 0x000BDF 00:CBCF: 95 FD     STA ram_00FD,X
C - - - - - 0x000BE1 00:CBD1: CA        DEX
C - - - - - 0x000BE2 00:CBD2: 10 FB     BPL bra_CBCF_loop
C - - - - - 0x000BE4 00:CBD4: 60        RTS



sub_CBD5:
C - - - - - 0x000BE5 00:CBD5: A5 39     LDA ram_game_mode
C - - - - - 0x000BE7 00:CBD7: D0 2C     BNE bra_CC05    ; if 2 players
C - - - - - 0x000BE9 00:CBD9: A0 03     LDY #$03
C - - - - - 0x000BEB 00:CBDB: AD A8 03  LDA ram_03A8
C - - - - - 0x000BEE 00:CBDE: CD 08 03  CMP ram_pos_Y_p1
C - - - - - 0x000BF1 00:CBE1: B0 09     BCS bra_CBEC
C - - - - - 0x000BF3 00:CBE3: A0 06     LDY #$06
C - - - - - 0x000BF5 00:CBE5: CD 48 03  CMP ram_pos_Y_p3
C - - - - - 0x000BF8 00:CBE8: 90 02     BCC bra_CBEC
C - - - - - 0x000BFA 00:CBEA: A0 00     LDY #$00
bra_CBEC:
C - - - - - 0x000BFC 00:CBEC: B9 7E CC  LDA tbl_CC7E,Y
C - - - - - 0x000BFF 00:CBEF: 8D 0A 03  STA ram_030A
C - - - - - 0x000C02 00:CBF2: B9 7F CC  LDA tbl_CC7E + 1,Y
C - - - - - 0x000C05 00:CBF5: 8D 4A 03  STA ram_034A
C - - - - - 0x000C08 00:CBF8: B9 80 CC  LDA tbl_CC7E + 2,Y
C - - - - - 0x000C0B 00:CBFB: 8D 8A 03  STA ram_index_oam
C - - - - - 0x000C0E 00:CBFE: 18        CLC
C - - - - - 0x000C0F 00:CBFF: 69 04     ADC #$04
C - - - - - 0x000C11 00:CC01: 8D AA 03  STA ram_03AA
C - - - - - 0x000C14 00:CC04: 60        RTS
bra_CC05:
C - - - - - 0x000C15 00:CC05: A0 00     LDY #$00
C - - - - - 0x000C17 00:CC07: A2 00     LDX #$00    ; p1/p2
C - - - - - 0x000C19 00:CC09: AD A8 03  LDA ram_03A8
C - - - - - 0x000C1C 00:CC0C: C9 70     CMP #$70
C - - - - - 0x000C1E 00:CC0E: B0 04     BCS bra_CC14
C - - - - - 0x000C20 00:CC10: A0 06     LDY #$06
C - - - - - 0x000C22 00:CC12: A2 40     LDX #$40    ; p3/p4
bra_CC14:
C - - - - - 0x000C24 00:CC14: DD 08 03  CMP ram_pos_Y_p1,X  ; ram_pos_Y_p3
C - - - - - 0x000C27 00:CC17: B0 03     BCS bra_CC1C
C - - - - - 0x000C29 00:CC19: C8        INY
C - - - - - 0x000C2A 00:CC1A: C8        INY
C - - - - - 0x000C2B 00:CC1B: C8        INY
bra_CC1C:
C - - - - - 0x000C2C 00:CC1C: DD 28 03  CMP ram_pos_Y_p2,X  ; ram_pos_Y_p4
C - - - - - 0x000C2F 00:CC1F: B0 03     BCS bra_CC24
C - - - - - 0x000C31 00:CC21: C8        INY
C - - - - - 0x000C32 00:CC22: C8        INY
C - - - - - 0x000C33 00:CC23: C8        INY
bra_CC24:
C - - - - - 0x000C34 00:CC24: B9 87 CC  LDA tbl_CC87,Y
C - - - - - 0x000C37 00:CC27: 8D 8A 03  STA ram_index_oam
C - - - - - 0x000C3A 00:CC2A: 18        CLC
C - - - - - 0x000C3B 00:CC2B: 69 04     ADC #$04
C - - - - - 0x000C3D 00:CC2D: 8D AA 03  STA ram_03AA
C - - - - - 0x000C40 00:CC30: C0 08     CPY #$08
C - - - - - 0x000C42 00:CC32: B0 25     BCS bra_CC59
C - - - - - 0x000C44 00:CC34: B9 88 CC  LDA tbl_CC87 + 1,Y
C - - - - - 0x000C47 00:CC37: AA        TAX
C - - - - - 0x000C48 00:CC38: B9 89 CC  LDA tbl_CC87 + 2,Y
C - - - - - 0x000C4B 00:CC3B: A8        TAY
C - - - - - 0x000C4C 00:CC3C: 20 68 CC  JSR sub_CC68
C - - - - - 0x000C4F 00:CC3F: A2 58     LDX #$58
C - - - - - 0x000C51 00:CC41: A0 74     LDY #$74
sub_CC43:
C - - - - - 0x000C53 00:CC43: AD 48 03  LDA ram_pos_Y_p3
C - - - - - 0x000C56 00:CC46: CD 68 03  CMP ram_pos_Y_p4
C - - - - - 0x000C59 00:CC49: 90 07     BCC bra_CC52
C - - - - - 0x000C5B 00:CC4B: 8E 4A 03  STX ram_034A
C - - - - - 0x000C5E 00:CC4E: 8C 6A 03  STY ram_036A
C - - - - - 0x000C61 00:CC51: 60        RTS
bra_CC52:
C - - - - - 0x000C62 00:CC52: 8E 6A 03  STX ram_036A
C - - - - - 0x000C65 00:CC55: 8C 4A 03  STY ram_034A
C - - - - - 0x000C68 00:CC58: 60        RTS
bra_CC59:
C - - - - - 0x000C69 00:CC59: B9 88 CC  LDA tbl_CC87 + 1,Y
C - - - - - 0x000C6C 00:CC5C: AA        TAX
C - - - - - 0x000C6D 00:CC5D: B9 89 CC  LDA tbl_CC87 + 2,Y
C - - - - - 0x000C70 00:CC60: A8        TAY
C - - - - - 0x000C71 00:CC61: 20 43 CC  JSR sub_CC43
C - - - - - 0x000C74 00:CC64: A2 00     LDX #$00
C - - - - - 0x000C76 00:CC66: A0 28     LDY #$28
sub_CC68:
C - - - - - 0x000C78 00:CC68: AD 08 03  LDA ram_pos_Y_p1
C - - - - - 0x000C7B 00:CC6B: CD 28 03  CMP ram_pos_Y_p2
C - - - - - 0x000C7E 00:CC6E: 90 07     BCC bra_CC77
C - - - - - 0x000C80 00:CC70: 8E 0A 03  STX ram_030A
C - - - - - 0x000C83 00:CC73: 8C 2A 03  STY ram_032A
C - - - - - 0x000C86 00:CC76: 60        RTS
bra_CC77:
C - - - - - 0x000C87 00:CC77: 8E 2A 03  STX ram_032A
C - - - - - 0x000C8A 00:CC7A: 8C 0A 03  STY ram_030A
C - - - - - 0x000C8D 00:CC7D: 60        RTS



tbl_CC7E:
; 00
- D 2 - - - 0x000C8E 00:CC7E: 00        .byte $00   ; 
- D 2 - - - 0x000C8F 00:CC7F: 30        .byte $30   ; 
- D 2 - - - 0x000C90 00:CC80: 28        .byte $28   ; 
; 03
- D 2 - - - 0x000C91 00:CC81: 08        .byte $08   ; 
- D 2 - - - 0x000C92 00:CC82: 30        .byte $30   ; 
- D 2 - - - 0x000C93 00:CC83: 00        .byte $00   ; 
; 06
- D 2 - - - 0x000C94 00:CC84: 00        .byte $00   ; 
- D 2 - - - 0x000C95 00:CC85: 28        .byte $28   ; 
- D 2 - - - 0x000C96 00:CC86: 44        .byte $44   ; 



tbl_CC87:
; 00
- D 2 - - - 0x000C97 00:CC87: 00        .byte $00   ; oam index
- D 2 - - - 0x000C98 00:CC88: 08        .byte $08   ; 
- D 2 - - - 0x000C99 00:CC89: 30        .byte $30   ; 
; 03
- D 2 - - - 0x000C9A 00:CC8A: 28        .byte $28   ; oam index
- D 2 - - - 0x000C9B 00:CC8B: 00        .byte $00   ; 
- D 2 - - - 0x000C9C 00:CC8C: 30        .byte $30   ; 
; 06
- D 2 - - - 0x000C9D 00:CC8D: 50        .byte $50   ; oam index
- D 2 - - - 0x000C9E 00:CC8E: 00        .byte $00   ; 
- D 2 - - - 0x000C9F 00:CC8F: 28        .byte $28   ; 
; 09
- D 2 - - - 0x000CA0 00:CC90: 6C        .byte $6C   ; oam index
- D 2 - - - 0x000CA1 00:CC91: 50        .byte $50   ; 
- D 2 - - - 0x000CA2 00:CC92: 74        .byte $74   ; 
; 0C
- D 2 - - - 0x000CA3 00:CC93: 88        .byte $88   ; oam index
- D 2 - - - 0x000CA4 00:CC94: 50        .byte $50   ; 
- D 2 - - - 0x000CA5 00:CC95: 6C        .byte $6C   ; 



sub_CC96:
C - - - - - 0x000CA6 00:CC96: A5 5C     LDA ram_005C
C - - - - - 0x000CA8 00:CC98: F0 3D     BEQ bra_CCD7_RTS
C - - - - - 0x000CAA 00:CC9A: AC 08 03  LDY ram_pos_Y_p1
C - - - - - 0x000CAD 00:CC9D: AE 09 03  LDX ram_pos_X_p1
C - - - - - 0x000CB0 00:CCA0: 20 BA CC  JSR sub_CCBA
C - - - - - 0x000CB3 00:CCA3: D0 03     BNE bra_CCA8
C - - - - - 0x000CB5 00:CCA5: 20 D8 CC  JSR sub_CCD8
bra_CCA8:
C - - - - - 0x000CB8 00:CCA8: A5 39     LDA ram_game_mode
C - - - - - 0x000CBA 00:CCAA: F0 2B     BEQ bra_CCD7_RTS    ; if 1 player
C - - - - - 0x000CBC 00:CCAC: AC 28 03  LDY ram_pos_Y_p2
C - - - - - 0x000CBF 00:CCAF: AE 29 03  LDX ram_pos_X_p2
C - - - - - 0x000CC2 00:CCB2: 20 BA CC  JSR sub_CCBA
C - - - - - 0x000CC5 00:CCB5: D0 20     BNE bra_CCD7_RTS
C - - - - - 0x000CC7 00:CCB7: 4C F5 CC  JMP loc_CCF5



sub_CCBA:
; X = pos_X
; Y = pos_Y
C - - - - - 0x000CCA 00:CCBA: A9 FF     LDA #$FF
C - - - - - 0x000CCC 00:CCBC: C0 C0     CPY #$C0
C - - - - - 0x000CCE 00:CCBE: B0 0A     BCS bra_CCCA
C - - - - - 0x000CD0 00:CCC0: E0 4C     CPX #$4C
C - - - - - 0x000CD2 00:CCC2: 90 06     BCC bra_CCCA
C - - - - - 0x000CD4 00:CCC4: E0 B4     CPX #$B4
C - - - - - 0x000CD6 00:CCC6: B0 02     BCS bra_CCCA
C - - - - - 0x000CD8 00:CCC8: A9 00     LDA #$00
bra_CCCA:
C - - - - - 0x000CDA 00:CCCA: C9 00     CMP #$00
C - - - - - 0x000CDC 00:CCCC: 60        RTS



sub_CCCD:
C - - - - - 0x000CDD 00:CCCD: 20 D8 CC  JSR sub_CCD8
C - - - - - 0x000CE0 00:CCD0: A4 39     LDY ram_game_mode
C - - - - - 0x000CE2 00:CCD2: F0 03     BEQ bra_CCD7_RTS    ; if 1 player
- - - - - - 0x000CE4 00:CCD4: 20 F5 CC  JSR sub_CCF5
bra_CCD7_RTS:
C - - - - - 0x000CE7 00:CCD7: 60        RTS



sub_CCD8:
C - - - - - 0x000CE8 00:CCD8: A9 01     LDA #$01
C - - - - - 0x000CEA 00:CCDA: 85 B0     STA ram_00B0
C - - - - - 0x000CEC 00:CCDC: A9 00     LDA #$00
C - - - - - 0x000CEE 00:CCDE: 85 B6     STA ram_00B6
C - - - - - 0x000CF0 00:CCE0: AD 07 03  LDA ram_0307
C - - - - - 0x000CF3 00:CCE3: 85 B7     STA ram_00B7
C - - - - - 0x000CF5 00:CCE5: AD 0A 03  LDA ram_030A
C - - - - - 0x000CF8 00:CCE8: A2 48     LDX #$48
C - - - - - 0x000CFA 00:CCEA: A0 A0     LDY #$A0
bra_CCEC:
C - - - - - 0x000CFC 00:CCEC: 85 BA     STA ram_00BA
C - - - - - 0x000CFE 00:CCEE: 84 B8     STY ram_00B8
C - - - - - 0x000D00 00:CCF0: 86 B9     STX ram_00B9
C - - - - - 0x000D02 00:CCF2: 4C 1C C2  JMP loc_C21C_sprites_handler



loc_CCF5:
sub_CCF5:
C D 2 - - - 0x000D05 00:CCF5: A9 01     LDA #$01
C - - - - - 0x000D07 00:CCF7: 85 B0     STA ram_00B0
C - - - - - 0x000D09 00:CCF9: A9 05     LDA #$05
C - - - - - 0x000D0B 00:CCFB: 85 B6     STA ram_00B6
C - - - - - 0x000D0D 00:CCFD: AD 27 03  LDA ram_0327
C - - - - - 0x000D10 00:CD00: 85 B7     STA ram_00B7
C - - - - - 0x000D12 00:CD02: AD 2A 03  LDA ram_032A
C - - - - - 0x000D15 00:CD05: A2 B8     LDX #$B8
C - - - - - 0x000D17 00:CD07: A0 A0     LDY #$A0
C - - - - - 0x000D19 00:CD09: D0 E1     BNE bra_CCEC    ; jmp



sub_CD0B:
C - - - - - 0x000D1B 00:CD0B: A9 00     LDA #< ram_0300
C - - - - - 0x000D1D 00:CD0D: 85 A8     STA ram_00A8
C - - - - - 0x000D1F 00:CD0F: A9 03     LDA #> ram_0300
C - - - - - 0x000D21 00:CD11: 85 A9     STA ram_00A9
C - - - - - 0x000D23 00:CD13: A9 00     LDA #$00
C - - - - - 0x000D25 00:CD15: 85 AA     STA ram_00AA
C - - - - - 0x000D27 00:CD17: A9 01     LDA #$01    ; counter
C - - - - - 0x000D29 00:CD19: 85 AB     STA ram_00AB
C - - - - - 0x000D2B 00:CD1B: A6 1B     LDX ram_btn_press
C - - - - - 0x000D2D 00:CD1D: A4 1D     LDY ram_p2_btn_press
C - - - - - 0x000D2F 00:CD1F: A5 46     LDA ram_0046
C - - - - - 0x000D31 00:CD21: F0 04     BEQ bra_CD27
C - - - - - 0x000D33 00:CD23: A6 1D     LDX ram_p2_btn_press
C - - - - - 0x000D35 00:CD25: A4 1B     LDY ram_btn_press
bra_CD27:
C - - - - - 0x000D37 00:CD27: 8E 10 03  STX ram_input_p1
C - - - - - 0x000D3A 00:CD2A: 8C 30 03  STY ram_input_p2
bra_CD2D_loop:
C - - - - - 0x000D3D 00:CD2D: 20 F3 C1  JSR sub_C1F3
C - - - - - 0x000D40 00:CD30: A5 B0     LDA ram_00B0
C - - - - - 0x000D42 00:CD32: F0 1C     BEQ bra_CD50
C - - - - - 0x000D44 00:CD34: A5 8D     LDA ram_008D
C - - - - - 0x000D46 00:CD36: 10 06     BPL bra_CD3E
C - - - - - 0x000D48 00:CD38: 20 80 D5  JSR sub_D580
C - - - - - 0x000D4B 00:CD3B: 4C 44 CD  JMP loc_CD44
bra_CD3E:
C - - - - - 0x000D4E 00:CD3E: 20 58 CD  JSR sub_CD58
C - - - - - 0x000D51 00:CD41: 20 D9 D0  JSR sub_D0D9
loc_CD44:
C D 2 - - - 0x000D54 00:CD44: 20 0E D2  JSR sub_D20E
C - - - - - 0x000D57 00:CD47: 20 32 D1  JSR sub_D132
C - - - - - 0x000D5A 00:CD4A: 20 1C C2  JSR sub_C21C_sprites_handler
C - - - - - 0x000D5D 00:CD4D: 20 0E C2  JSR sub_C20E
bra_CD50:
C - - - - - 0x000D60 00:CD50: 20 06 C2  JSR sub_C206
C - - - - - 0x000D63 00:CD53: C6 AB     DEC ram_00AB
C - - - - - 0x000D65 00:CD55: 10 D6     BPL bra_CD2D_loop
C - - - - - 0x000D67 00:CD57: 60        RTS



sub_CD58:
C - - - - - 0x000D68 00:CD58: A5 87     LDA ram_0087
C - - - - - 0x000D6A 00:CD5A: C9 FF     CMP #$FF
C - - - - - 0x000D6C 00:CD5C: F0 03     BEQ bra_CD61
C - - - - - 0x000D6E 00:CD5E: 4C 92 CD  JMP loc_CD92
bra_CD61:
C - - - - - 0x000D71 00:CD61: A5 B4     LDA ram_00B4
C - - - - - 0x000D73 00:CD63: D0 1E     BNE bra_CD83
C - - - - - 0x000D75 00:CD65: A5 C0     LDA ram_00C0
C - - - - - 0x000D77 00:CD67: 29 C0     AND #$C0
C - - - - - 0x000D79 00:CD69: F0 0F     BEQ bra_CD7A
C - - - - - 0x000D7B 00:CD6B: 85 B1     STA ram_00B1
C - - - - - 0x000D7D 00:CD6D: A5 C9     LDA ram_00C9
C - - - - - 0x000D7F 00:CD6F: 85 B4     STA ram_00B4
C - - - - - 0x000D81 00:CD71: 20 8B D0  JSR sub_D08B
C - - - - - 0x000D84 00:CD74: 20 7E CE  JSR sub_CE7E
C - - - - - 0x000D87 00:CD77: 4C C1 CD  JMP loc_CDC1
bra_CD7A:
C - - - - - 0x000D8A 00:CD7A: 20 97 D4  JSR sub_D497
C - - - - - 0x000D8D 00:CD7D: 20 C5 CD  JSR sub_CDC5
C - - - - - 0x000D90 00:CD80: 4C C1 CD  JMP loc_CDC1
bra_CD83:
C - - - - - 0x000D93 00:CD83: 24 BB     BIT ram_00BB
C - - - - - 0x000D95 00:CD85: 30 3A     BMI bra_CDC1
C - - - - - 0x000D97 00:CD87: 20 D2 CF  JSR sub_CFD2
C - - - - - 0x000D9A 00:CD8A: 10 35     BPL bra_CDC1
C - - - - - 0x000D9C 00:CD8C: 20 CA CE  JSR sub_CECA
C - - - - - 0x000D9F 00:CD8F: 4C C1 CD  JMP loc_CDC1



loc_CD92:
C D 2 - - - 0x000DA2 00:CD92: A5 B4     LDA ram_00B4
C - - - - - 0x000DA4 00:CD94: D0 28     BNE bra_CDBE
C - - - - - 0x000DA6 00:CD96: A5 C0     LDA ram_00C0
C - - - - - 0x000DA8 00:CD98: 29 C0     AND #$C0
C - - - - - 0x000DAA 00:CD9A: F0 22     BEQ bra_CDBE
C - - - - - 0x000DAC 00:CD9C: A4 C9     LDY ram_00C9
C - - - - - 0x000DAE 00:CD9E: 84 B4     STY ram_00B4
C - - - - - 0x000DB0 00:CDA0: 29 80     AND #$80
C - - - - - 0x000DB2 00:CDA2: F0 0A     BEQ bra_CDAE
C - - - - - 0x000DB4 00:CDA4: A0 38     LDY #$38
C - - - - - 0x000DB6 00:CDA6: A5 C2     LDA ram_00C2
C - - - - - 0x000DB8 00:CDA8: F0 0C     BEQ bra_CDB6
C - - - - - 0x000DBA 00:CDAA: A0 49     LDY #$49
C - - - - - 0x000DBC 00:CDAC: D0 08     BNE bra_CDB6    ; jmp
bra_CDAE:
C - - - - - 0x000DBE 00:CDAE: A0 95     LDY #$95
C - - - - - 0x000DC0 00:CDB0: A5 C2     LDA ram_00C2
C - - - - - 0x000DC2 00:CDB2: F0 02     BEQ bra_CDB6
C - - - - - 0x000DC4 00:CDB4: A0 A6     LDY #$A6
bra_CDB6:
C - - - - - 0x000DC6 00:CDB6: 84 B5     STY ram_00B5
C - - - - - 0x000DC8 00:CDB8: A9 00     LDA #$00
C - - - - - 0x000DCA 00:CDBA: 85 B3     STA ram_00B3
C - - - - - 0x000DCC 00:CDBC: F0 03     BEQ bra_CDC1    ; jmp
bra_CDBE:
C - - - - - 0x000DCE 00:CDBE: 20 C5 CD  JSR sub_CDC5
bra_CDC1:
loc_CDC1:   ; bzk optimize
C D 2 - - - 0x000DD1 00:CDC1: 20 7D D2  JSR sub_D27D
C - - - - - 0x000DD4 00:CDC4: 60        RTS



sub_CDC5:
C - - - - - 0x000DD5 00:CDC5: A5 B4     LDA ram_00B4
C - - - - - 0x000DD7 00:CDC7: D0 39     BNE bra_CE02_RTS
C - - - - - 0x000DD9 00:CDC9: A5 87     LDA ram_0087
C - - - - - 0x000DDB 00:CDCB: C9 FF     CMP #$FF
C - - - - - 0x000DDD 00:CDCD: D0 34     BNE bra_CE03
C - - - - - 0x000DDF 00:CDCF: A5 B5     LDA ram_00B5
C - - - - - 0x000DE1 00:CDD1: C9 37     CMP #$37
C - - - - - 0x000DE3 00:CDD3: B0 2D     BCS bra_CE02_RTS
C - - - - - 0x000DE5 00:CDD5: C9 0D     CMP #$0D
C - - - - - 0x000DE7 00:CDD7: 90 0E     BCC bra_CDE7
C - - - - - 0x000DE9 00:CDD9: C9 29     CMP #$29
C - - - - - 0x000DEB 00:CDDB: B0 14     BCS bra_CDF1
C - - - - - 0x000DED 00:CDDD: A0 C8     LDY #$C8
C - - - - - 0x000DEF 00:CDDF: A5 C2     LDA ram_00C2
C - - - - - 0x000DF1 00:CDE1: F0 1C     BEQ bra_CDFF
C - - - - - 0x000DF3 00:CDE3: A0 D3     LDY #$D3
C - - - - - 0x000DF5 00:CDE5: D0 18     BNE bra_CDFF    ; jmp
bra_CDE7:
C - - - - - 0x000DF7 00:CDE7: A0 D0     LDY #$D0
C - - - - - 0x000DF9 00:CDE9: A5 C2     LDA ram_00C2
C - - - - - 0x000DFB 00:CDEB: D0 12     BNE bra_CDFF
C - - - - - 0x000DFD 00:CDED: A0 00     LDY #$00
C - - - - - 0x000DFF 00:CDEF: F0 08     BEQ bra_CDF9    ; jmp
bra_CDF1:
C - - - - - 0x000E01 00:CDF1: A0 C5     LDY #$C5
C - - - - - 0x000E03 00:CDF3: A5 C2     LDA ram_00C2
C - - - - - 0x000E05 00:CDF5: F0 08     BEQ bra_CDFF
C - - - - - 0x000E07 00:CDF7: A0 2A     LDY #$2A
bra_CDF9:
C - - - - - 0x000E09 00:CDF9: A5 C0     LDA ram_00C0
C - - - - - 0x000E0B 00:CDFB: 29 0F     AND #$0F
C - - - - - 0x000E0D 00:CDFD: D0 03     BNE bra_CE02_RTS
bra_CDFF:
C - - - - - 0x000E0F 00:CDFF: 4C 55 CE  JMP loc_CE55
bra_CE02_RTS:
C - - - - - 0x000E12 00:CE02: 60        RTS
bra_CE03:
C - - - - - 0x000E13 00:CE03: A5 B5     LDA ram_00B5
C - - - - - 0x000E15 00:CE05: C9 37     CMP #$37
C - - - - - 0x000E17 00:CE07: B0 52     BCS bra_CE5B_RTS
C - - - - - 0x000E19 00:CE09: C9 0D     CMP #$0D
C - - - - - 0x000E1B 00:CE0B: 90 20     BCC bra_CE2D
C - - - - - 0x000E1D 00:CE0D: C9 29     CMP #$29
C - - - - - 0x000E1F 00:CE0F: B0 30     BCS bra_CE41
C - - - - - 0x000E21 00:CE11: A5 C0     LDA ram_00C0
C - - - - - 0x000E23 00:CE13: 29 0F     AND #$0F
C - - - - - 0x000E25 00:CE15: F0 45     BEQ bra_CE5C
C - - - - - 0x000E27 00:CE17: A0 C8     LDY #$C8
C - - - - - 0x000E29 00:CE19: 29 03     AND #$03
C - - - - - 0x000E2B 00:CE1B: F0 08     BEQ bra_CE25
C - - - - - 0x000E2D 00:CE1D: C9 01     CMP #$01
C - - - - - 0x000E2F 00:CE1F: F0 34     BEQ bra_CE55
bra_CE21:
C - - - - - 0x000E31 00:CE21: A0 D3     LDY #$D3
C - - - - - 0x000E33 00:CE23: D0 30     BNE bra_CE55    ; jmp
bra_CE25:
C - - - - - 0x000E35 00:CE25: A5 B9     LDA ram_00B9
C - - - - - 0x000E37 00:CE27: C9 80     CMP #$80
C - - - - - 0x000E39 00:CE29: 90 2A     BCC bra_CE55
C - - - - - 0x000E3B 00:CE2B: B0 F4     BCS bra_CE21    ; jmp
bra_CE2D:
C - - - - - 0x000E3D 00:CE2D: A2 00     LDX #$00
C - - - - - 0x000E3F 00:CE2F: 86 C2     STX ram_00C2
C - - - - - 0x000E41 00:CE31: A0 00     LDY #$00
C - - - - - 0x000E43 00:CE33: A5 C0     LDA ram_00C0
C - - - - - 0x000E45 00:CE35: 29 0F     AND #$0F
C - - - - - 0x000E47 00:CE37: F0 1C     BEQ bra_CE55
C - - - - - 0x000E49 00:CE39: A0 D0     LDY #$D0
C - - - - - 0x000E4B 00:CE3B: 29 02     AND #$02
C - - - - - 0x000E4D 00:CE3D: D0 16     BNE bra_CE55
C - - - - - 0x000E4F 00:CE3F: F0 1A     BEQ bra_CE5B_RTS    ; jmp
bra_CE41:
C - - - - - 0x000E51 00:CE41: A2 01     LDX #$01
C - - - - - 0x000E53 00:CE43: 86 C2     STX ram_00C2
C - - - - - 0x000E55 00:CE45: A0 2A     LDY #$2A
C - - - - - 0x000E57 00:CE47: A5 C0     LDA ram_00C0
C - - - - - 0x000E59 00:CE49: 29 0F     AND #$0F
C - - - - - 0x000E5B 00:CE4B: F0 08     BEQ bra_CE55
C - - - - - 0x000E5D 00:CE4D: A0 C5     LDY #$C5
C - - - - - 0x000E5F 00:CE4F: 29 01     AND #$01
C - - - - - 0x000E61 00:CE51: D0 02     BNE bra_CE55
C - - - - - 0x000E63 00:CE53: F0 06     BEQ bra_CE5B_RTS    ; jmp
bra_CE55:
loc_CE55:
C D 2 - - - 0x000E65 00:CE55: 84 B5     STY ram_00B5
C - - - - - 0x000E67 00:CE57: A9 00     LDA #$00
C - - - - - 0x000E69 00:CE59: 85 B3     STA ram_00B3
bra_CE5B_RTS:
C - - - - - 0x000E6B 00:CE5B: 60        RTS
bra_CE5C:
C - - - - - 0x000E6C 00:CE5C: A2 0E     LDX #$0E
C - - - - - 0x000E6E 00:CE5E: A5 B5     LDA ram_00B5
C - - - - - 0x000E70 00:CE60: C9 1B     CMP #$1B
C - - - - - 0x000E72 00:CE62: 90 02     BCC bra_CE66
C - - - - - 0x000E74 00:CE64: A2 1C     LDX #$1C
bra_CE66:
C - - - - - 0x000E76 00:CE66: 86 15     STX ram_0015
C - - - - - 0x000E78 00:CE68: A0 0E     LDY #$0E
C - - - - - 0x000E7A 00:CE6A: A2 00     LDX #$00
C - - - - - 0x000E7C 00:CE6C: A5 B9     LDA ram_00B9
C - - - - - 0x000E7E 00:CE6E: C9 80     CMP #$80
C - - - - - 0x000E80 00:CE70: 90 04     BCC bra_CE76
C - - - - - 0x000E82 00:CE72: A0 1C     LDY #$1C
C - - - - - 0x000E84 00:CE74: A2 01     LDX #$01
bra_CE76:
C - - - - - 0x000E86 00:CE76: 86 C2     STX ram_00C2
C - - - - - 0x000E88 00:CE78: C4 15     CPY ram_0015
C - - - - - 0x000E8A 00:CE7A: F0 DF     BEQ bra_CE5B_RTS
C - - - - - 0x000E8C 00:CE7C: D0 D7     BNE bra_CE55    ; jmp



sub_CE7E:
C - - - - - 0x000E8E 00:CE7E: A2 00     LDX #$00
C - - - - - 0x000E90 00:CE80: 24 C0     BIT ram_00C0
C - - - - - 0x000E92 00:CE82: 30 02     BMI bra_CE86
C - - - - - 0x000E94 00:CE84: A2 06     LDX #$06
bra_CE86:
C - - - - - 0x000E96 00:CE86: A5 B8     LDA ram_00B8
C - - - - - 0x000E98 00:CE88: C9 A8     CMP #$A8
C - - - - - 0x000E9A 00:CE8A: B0 03     BCS bra_CE8F
C - - - - - 0x000E9C 00:CE8C: E8        INX
C - - - - - 0x000E9D 00:CE8D: E8        INX
C - - - - - 0x000E9E 00:CE8E: E8        INX
bra_CE8F:
C - - - - - 0x000E9F 00:CE8F: A5 6F     LDA ram_006F
C - - - - - 0x000EA1 00:CE91: C9 10     CMP #$10
C - - - - - 0x000EA3 00:CE93: 90 06     BCC bra_CE9B
C - - - - - 0x000EA5 00:CE95: E8        INX
C - - - - - 0x000EA6 00:CE96: C9 80     CMP #$80
C - - - - - 0x000EA8 00:CE98: 90 01     BCC bra_CE9B
C - - - - - 0x000EAA 00:CE9A: E8        INX
bra_CE9B:
C - - - - - 0x000EAB 00:CE9B: 86 C8     STX ram_00C8
C - - - - - 0x000EAD 00:CE9D: A5 C2     LDA ram_00C2
C - - - - - 0x000EAF 00:CE9F: D0 06     BNE bra_CEA7
C - - - - - 0x000EB1 00:CEA1: BD B1 CE  LDA tbl_CEB1,X
C - - - - - 0x000EB4 00:CEA4: 4C AA CE  JMP loc_CEAA
bra_CEA7:
C - - - - - 0x000EB7 00:CEA7: BD BD CE  LDA tbl_CEBD,X
loc_CEAA:
C D 2 - - - 0x000EBA 00:CEAA: 85 B5     STA ram_00B5
C - - - - - 0x000EBC 00:CEAC: A9 01     LDA #$01
C - - - - - 0x000EBE 00:CEAE: 85 B3     STA ram_00B3
C - - - - - 0x000EC0 00:CEB0: 60        RTS



tbl_CEB1:
- D 2 - - - 0x000EC1 00:CEB1: 38        .byte $38   ; 00
- D 2 - - - 0x000EC2 00:CEB2: 38        .byte $38   ; 01
- D 2 - - - 0x000EC3 00:CEB3: 5A        .byte $5A   ; 02
- D 2 - - - 0x000EC4 00:CEB4: 79        .byte $79   ; 03
- D 2 - - - 0x000EC5 00:CEB5: 79        .byte $79   ; 04
- D 2 - - - 0x000EC6 00:CEB6: 5A        .byte $5A   ; 05
- D 2 - - - 0x000EC7 00:CEB7: 95        .byte $95   ; 06
- D 2 - - - 0x000EC8 00:CEB8: 95        .byte $95   ; 07
- - - - - - 0x000EC9 00:CEB9: 38        .byte $38   ; 08
- - - - - - 0x000ECA 00:CEBA: 95        .byte $95   ; 09
- - - - - - 0x000ECB 00:CEBB: 95        .byte $95   ; 0A
- D 2 - - - 0x000ECC 00:CEBC: 38        .byte $38   ; 0B



tbl_CEBD:
- D 2 - - - 0x000ECD 00:CEBD: 49        .byte $49   ; 00
- D 2 - - - 0x000ECE 00:CEBE: 49        .byte $49   ; 01
- D 2 - - - 0x000ECF 00:CEBF: 6B        .byte $6B   ; 02
- D 2 - - - 0x000ED0 00:CEC0: 87        .byte $87   ; 03
- D 2 - - - 0x000ED1 00:CEC1: 87        .byte $87   ; 04
- D 2 - - - 0x000ED2 00:CEC2: 6B        .byte $6B   ; 05
- D 2 - - - 0x000ED3 00:CEC3: A6        .byte $A6   ; 06
- D 2 - - - 0x000ED4 00:CEC4: A6        .byte $A6   ; 07
- - - - - - 0x000ED5 00:CEC5: 49        .byte $49   ; 08
- D 2 - - - 0x000ED6 00:CEC6: A6        .byte $A6   ; 09
- - - - - - 0x000ED7 00:CEC7: A6        .byte $A6   ; 0A
- - - - - - 0x000ED8 00:CEC8: 49        .byte $49   ; 0B



bra_CEC9_RTS:
C - - - - - 0x000ED9 00:CEC9: 60        RTS
sub_CECA:
C - - - - - 0x000EDA 00:CECA: A5 C8     LDA ram_00C8
C - - - - - 0x000EDC 00:CECC: C9 02     CMP #$02
C - - - - - 0x000EDE 00:CECE: F0 04     BEQ bra_CED4
C - - - - - 0x000EE0 00:CED0: C9 05     CMP #$05
C - - - - - 0x000EE2 00:CED2: D0 0A     BNE bra_CEDE
bra_CED4:
C - - - - - 0x000EE4 00:CED4: A2 06     LDX #$06
C - - - - - 0x000EE6 00:CED6: A4 C2     LDY ram_00C2
C - - - - - 0x000EE8 00:CED8: F0 0C     BEQ bra_CEE6
C - - - - - 0x000EEA 00:CEDA: A2 FA     LDX #$FA
C - - - - - 0x000EEC 00:CEDC: D0 08     BNE bra_CEE6    ; jmp
bra_CEDE:
C - - - - - 0x000EEE 00:CEDE: A2 0C     LDX #$0C
C - - - - - 0x000EF0 00:CEE0: A4 C2     LDY ram_00C2
C - - - - - 0x000EF2 00:CEE2: F0 02     BEQ bra_CEE6
C - - - - - 0x000EF4 00:CEE4: A2 F3     LDX #$F3
bra_CEE6:
C - - - - - 0x000EF6 00:CEE6: 86 11     STX ram_0011
C - - - - - 0x000EF8 00:CEE8: A5 B9     LDA ram_00B9
C - - - - - 0x000EFA 00:CEEA: 18        CLC
C - - - - - 0x000EFB 00:CEEB: 65 11     ADC ram_0011
C - - - - - 0x000EFD 00:CEED: 38        SEC
C - - - - - 0x000EFE 00:CEEE: E5 70     SBC ram_0070
C - - - - - 0x000F00 00:CEF0: 90 06     BCC bra_CEF8
C - - - - - 0x000F02 00:CEF2: C9 0A     CMP #$0A
C - - - - - 0x000F04 00:CEF4: B0 D3     BCS bra_CEC9_RTS
C - - - - - 0x000F06 00:CEF6: 90 04     BCC bra_CEFC    ; jmp
bra_CEF8:
C - - - - - 0x000F08 00:CEF8: C9 F6     CMP #$F6
C - - - - - 0x000F0A 00:CEFA: 90 CD     BCC bra_CEC9_RTS
bra_CEFC:
C - - - - - 0x000F0C 00:CEFC: A5 6F     LDA ram_006F
C - - - - - 0x000F0E 00:CEFE: C9 05     CMP #$05
C - - - - - 0x000F10 00:CF00: 90 C7     BCC bra_CEC9_RTS
C - - - - - 0x000F12 00:CF02: C9 B0     CMP #$B0
C - - - - - 0x000F14 00:CF04: B0 C3     BCS bra_CEC9_RTS
C - - - - - 0x000F16 00:CF06: A5 AB     LDA ram_00AB
C - - - - - 0x000F18 00:CF08: D0 0A     BNE bra_CF14
C - - - - - 0x000F1A 00:CF0A: 24 8D     BIT ram_008D
C - - - - - 0x000F1C 00:CF0C: 50 06     BVC bra_CF14
C - - - - - 0x000F1E 00:CF0E: A9 02     LDA #$02
C - - - - - 0x000F20 00:CF10: 85 86     STA ram_0086
C - - - - - 0x000F22 00:CF12: D0 B5     BNE bra_CEC9_RTS    ; jmp
bra_CF14:
C - - - - - 0x000F24 00:CF14: A5 C8     LDA ram_00C8
C - - - - - 0x000F26 00:CF16: C9 08     CMP #$08
C - - - - - 0x000F28 00:CF18: F0 AF     BEQ bra_CEC9_RTS
C - - - - - 0x000F2A 00:CF1A: C9 0B     CMP #$0B
C - - - - - 0x000F2C 00:CF1C: F0 AB     BEQ bra_CEC9_RTS
C - - - - - 0x000F2E 00:CF1E: 0A        ASL
C - - - - - 0x000F2F 00:CF1F: 0A        ASL
C - - - - - 0x000F30 00:CF20: A8        TAY
C - - - - - 0x000F31 00:CF21: B9 A2 CF  LDA tbl_CFA2,Y
C - - - - - 0x000F34 00:CF24: 85 84     STA ram_0084
C - - - - - 0x000F36 00:CF26: C8        INY
C - - - - - 0x000F37 00:CF27: B9 A2 CF  LDA tbl_CFA2,Y
C - - - - - 0x000F3A 00:CF2A: 85 85     STA ram_0085
C - - - - - 0x000F3C 00:CF2C: C8        INY
C - - - - - 0x000F3D 00:CF2D: B9 A2 CF  LDA tbl_CFA2,Y
C - - - - - 0x000F40 00:CF30: 18        CLC
C - - - - - 0x000F41 00:CF31: 65 68     ADC ram_0068
C - - - - - 0x000F43 00:CF33: 85 82     STA ram_0082
C - - - - - 0x000F45 00:CF35: C8        INY
C - - - - - 0x000F46 00:CF36: B9 A2 CF  LDA tbl_CFA2,Y
C - - - - - 0x000F49 00:CF39: 65 69     ADC ram_0069
C - - - - - 0x000F4B 00:CF3B: 85 83     STA ram_0083
C - - - - - 0x000F4D 00:CF3D: A5 63     LDA ram_0063
C - - - - - 0x000F4F 00:CF3F: 85 14     STA ram_0014
C - - - - - 0x000F51 00:CF41: A5 64     LDA ram_0064
C - - - - - 0x000F53 00:CF43: 85 15     STA ram_0015
C - - - - - 0x000F55 00:CF45: A5 B4     LDA ram_00B4
C - - - - - 0x000F57 00:CF47: 38        SEC
C - - - - - 0x000F58 00:CF48: E9 13     SBC #$13
C - - - - - 0x000F5A 00:CF4A: A4 C9     LDY ram_00C9
C - - - - - 0x000F5C 00:CF4C: C0 18     CPY #$18
C - - - - - 0x000F5E 00:CF4E: F0 03     BEQ bra_CF53
C - - - - - 0x000F60 00:CF50: 38        SEC
C - - - - - 0x000F61 00:CF51: E9 05     SBC #$05
bra_CF53:
C - - - - - 0x000F63 00:CF53: A4 C2     LDY ram_00C2
C - - - - - 0x000F65 00:CF55: F0 05     BEQ bra_CF5C
C - - - - - 0x000F67 00:CF57: 49 FF     EOR #$FF
C - - - - - 0x000F69 00:CF59: 18        CLC
C - - - - - 0x000F6A 00:CF5A: 69 02     ADC #$02
bra_CF5C:
C - - - - - 0x000F6C 00:CF5C: 85 A4     STA ram_00A4
C - - - - - 0x000F6E 00:CF5E: 24 A4     BIT ram_00A4
C - - - - - 0x000F70 00:CF60: 10 05     BPL bra_CF67
C - - - - - 0x000F72 00:CF62: 49 FF     EOR #$FF
C - - - - - 0x000F74 00:CF64: 18        CLC
C - - - - - 0x000F75 00:CF65: 69 01     ADC #$01
bra_CF67:
C - - - - - 0x000F77 00:CF67: 4A        LSR
C - - - - - 0x000F78 00:CF68: AA        TAX
C - - - - - 0x000F79 00:CF69: F0 22     BEQ bra_CF8D
C - - - - - 0x000F7B 00:CF6B: A9 00     LDA #$00
C - - - - - 0x000F7D 00:CF6D: 85 13     STA ram_0013
C - - - - - 0x000F7F 00:CF6F: A0 C0     LDY #$C0    ; 00C0
C - - - - - 0x000F81 00:CF71: A5 C9     LDA ram_00C9
C - - - - - 0x000F83 00:CF73: C9 18     CMP #$18
C - - - - - 0x000F85 00:CF75: D0 04     BNE bra_CF7B
C - - - - - 0x000F87 00:CF77: A0 20     LDY #$20    ; 0020
C - - - - - 0x000F89 00:CF79: E6 13     INC ram_0013
bra_CF7B:
C - - - - - 0x000F8B 00:CF7B: 84 12     STY ram_0012
bra_CF7D_loop:
C - - - - - 0x000F8D 00:CF7D: A5 A4     LDA ram_00A4
C - - - - - 0x000F8F 00:CF7F: 10 06     BPL bra_CF87
C - - - - - 0x000F91 00:CF81: 20 6F D5  JSR sub_D56F
C - - - - - 0x000F94 00:CF84: 4C 8A CF  JMP loc_CF8A
bra_CF87:
C - - - - - 0x000F97 00:CF87: 20 A1 C3  JSR sub_C3A1_add_16bit_to_16_bit
loc_CF8A:
C D 2 - - - 0x000F9A 00:CF8A: CA        DEX
C - - - - - 0x000F9B 00:CF8B: D0 F0     BNE bra_CF7D_loop
bra_CF8D:
C - - - - - 0x000F9D 00:CF8D: A5 15     LDA ram_0015
C - - - - - 0x000F9F 00:CF8F: 85 81     STA ram_0081
C - - - - - 0x000FA1 00:CF91: A5 14     LDA ram_0014
C - - - - - 0x000FA3 00:CF93: 85 80     STA ram_0080
C - - - - - 0x000FA5 00:CF95: A9 01     LDA #$01
C - - - - - 0x000FA7 00:CF97: 85 86     STA ram_0086
C - - - - - 0x000FA9 00:CF99: A5 AB     LDA ram_00AB
C - - - - - 0x000FAB 00:CF9B: 85 40     STA ram_0040
C - - - - - 0x000FAD 00:CF9D: A9 0A     LDA #$0A
C - - - - - 0x000FAF 00:CF9F: 85 BF     STA ram_00BF
C - - - - - 0x000FB1 00:CFA1: 60        RTS



tbl_CFA2:
; 00
- D 2 - - - 0x000FB2 00:CFA2: 00        .byte $00   ; 
- D 2 - - - 0x000FB3 00:CFA3: 01        .byte $01   ; 
- D 2 - - - 0x000FB4 00:CFA4: 80        .byte $80   ; 
- D 2 - - - 0x000FB5 00:CFA5: 0D        .byte $0D   ; 
; 01
- D 2 - - - 0x000FB6 00:CFA6: 00        .byte $00   ; 
- D 2 - - - 0x000FB7 00:CFA7: 00        .byte $00   ; 
- D 2 - - - 0x000FB8 00:CFA8: 00        .byte $00   ; 
- D 2 - - - 0x000FB9 00:CFA9: 0E        .byte $0E   ; 
; 02
- - - - - - 0x000FBA 00:CFAA: 02        .byte $02   ; 
- - - - - - 0x000FBB 00:CFAB: 01        .byte $01   ; 
- - - - - - 0x000FBC 00:CFAC: 00        .byte $00   ; 
- - - - - - 0x000FBD 00:CFAD: 0B        .byte $0B   ; 
; 03
- - - - - - 0x000FBE 00:CFAE: 01        .byte $01   ; 
- - - - - - 0x000FBF 00:CFAF: 01        .byte $01   ; 
- - - - - - 0x000FC0 00:CFB0: 00        .byte $00   ; 
- - - - - - 0x000FC1 00:CFB1: 09        .byte $09   ; 
; 04
- D 2 - - - 0x000FC2 00:CFB2: 01        .byte $01   ; 
- D 2 - - - 0x000FC3 00:CFB3: 00        .byte $00   ; 
- D 2 - - - 0x000FC4 00:CFB4: 00        .byte $00   ; 
- D 2 - - - 0x000FC5 00:CFB5: 09        .byte $09   ; 
; 05
- D 2 - - - 0x000FC6 00:CFB6: 02        .byte $02   ; 
- D 2 - - - 0x000FC7 00:CFB7: 00        .byte $00   ; 
- D 2 - - - 0x000FC8 00:CFB8: 00        .byte $00   ; 
- D 2 - - - 0x000FC9 00:CFB9: 07        .byte $07   ; 
; 06
- D 2 - - - 0x000FCA 00:CFBA: 04        .byte $04   ; 
- D 2 - - - 0x000FCB 00:CFBB: 01        .byte $01   ; 
- D 2 - - - 0x000FCC 00:CFBC: 80        .byte $80   ; 
- D 2 - - - 0x000FCD 00:CFBD: 0E        .byte $0E   ; 
; 07
- D 2 - - - 0x000FCE 00:CFBE: 04        .byte $04   ; 
- D 2 - - - 0x000FCF 00:CFBF: 00        .byte $00   ; 
- D 2 - - - 0x000FD0 00:CFC0: 80        .byte $80   ; 
- D 2 - - - 0x000FD1 00:CFC1: 0E        .byte $0E   ; 
; 08 unused 0x000F28
- - - - - - 0x000FD2 00:CFC2: 00        .byte $00   ; 
- - - - - - 0x000FD3 00:CFC3: 00        .byte $00   ; 
- - - - - - 0x000FD4 00:CFC4: 00        .byte $00   ; 
- - - - - - 0x000FD5 00:CFC5: 00        .byte $00   ; 
; 09
- D 2 - - - 0x000FD6 00:CFC6: 04        .byte $04   ; 
- D 2 - - - 0x000FD7 00:CFC7: 02        .byte $02   ; 
- D 2 - - - 0x000FD8 00:CFC8: A0        .byte $A0   ; 
- D 2 - - - 0x000FD9 00:CFC9: 0B        .byte $0B   ; 
; 0A
- - - - - - 0x000FDA 00:CFCA: 04        .byte $04   ; 
- - - - - - 0x000FDB 00:CFCB: 02        .byte $02   ; 
- - - - - - 0x000FDC 00:CFCC: 60        .byte $60   ; 
- - - - - - 0x000FDD 00:CFCD: 0B        .byte $0B   ; 
; 0B unused 0x000F2C
; bzk garbage
- - - - - - 0x000FDE 00:CFCE: 00        .byte $00   ; 
- - - - - - 0x000FDF 00:CFCF: 00        .byte $00   ; 
- - - - - - 0x000FE0 00:CFD0: 00        .byte $00   ; 
- - - - - - 0x000FE1 00:CFD1: 00        .byte $00   ; 



sub_CFD2:
C - - - - - 0x000FE2 00:CFD2: A5 B4     LDA ram_00B4
C - - - - - 0x000FE4 00:CFD4: C9 09     CMP #$09
C - - - - - 0x000FE6 00:CFD6: 90 7E     BCC bra_D056
C - - - - - 0x000FE8 00:CFD8: 20 A2 D0  JSR sub_D0A2
C - - - - - 0x000FEB 00:CFDB: 30 32     BMI bra_D00F
C - - - - - 0x000FED 00:CFDD: A5 B6     LDA ram_00B6
C - - - - - 0x000FEF 00:CFDF: C9 02     CMP #$02
C - - - - - 0x000FF1 00:CFE1: F0 08     BEQ bra_CFEB
C - - - - - 0x000FF3 00:CFE3: C9 07     CMP #$07
C - - - - - 0x000FF5 00:CFE5: F0 04     BEQ bra_CFEB
C - - - - - 0x000FF7 00:CFE7: C9 18     CMP #$18
C - - - - - 0x000FF9 00:CFE9: D0 21     BNE bra_D00C
bra_CFEB:
C - - - - - 0x000FFB 00:CFEB: A4 B3     LDY ram_00B3
C - - - - - 0x000FFD 00:CFED: 88        DEY
C - - - - - 0x000FFE 00:CFEE: D0 1C     BNE bra_D00C
C - - - - - 0x001000 00:CFF0: A5 BB     LDA ram_00BB
C - - - - - 0x001002 00:CFF2: C9 0E     CMP #$0E
C - - - - - 0x001004 00:CFF4: B0 16     BCS bra_D00C
C - - - - - 0x001006 00:CFF6: A5 B6     LDA ram_00B6
C - - - - - 0x001008 00:CFF8: C9 18     CMP #$18
C - - - - - 0x00100A 00:CFFA: D0 07     BNE bra_D003
C - - - - - 0x00100C 00:CFFC: A5 B4     LDA ram_00B4
C - - - - - 0x00100E 00:CFFE: 18        CLC
C - - - - - 0x00100F 00:CFFF: 69 05     ADC #$05
C - - - - - 0x001011 00:D001: 85 B4     STA ram_00B4
bra_D003:
C - - - - - 0x001013 00:D003: E6 B3     INC ram_00B3
C - - - - - 0x001015 00:D005: E6 B3     INC ram_00B3
C - - - - - 0x001017 00:D007: A9 80     LDA #$80
C - - - - - 0x001019 00:D009: 85 BB     STA ram_00BB
C - - - - - 0x00101B 00:D00B: 60        RTS
bra_D00C:
C - - - - - 0x00101C 00:D00C: A9 7F     LDA #$7F
C - - - - - 0x00101E 00:D00E: 60        RTS
bra_D00F:
C - - - - - 0x00101F 00:D00F: A5 C8     LDA ram_00C8
C - - - - - 0x001021 00:D011: C9 06     CMP #$06
C - - - - - 0x001023 00:D013: B0 12     BCS bra_D027
C - - - - - 0x001025 00:D015: C9 02     CMP #$02
C - - - - - 0x001027 00:D017: 90 0E     BCC bra_D027
C - - - - - 0x001029 00:D019: C9 03     CMP #$03
C - - - - - 0x00102B 00:D01B: F0 04     BEQ bra_D021
C - - - - - 0x00102D 00:D01D: C9 05     CMP #$05
C - - - - - 0x00102F 00:D01F: D0 3C     BNE bra_D05D
bra_D021:
C - - - - - 0x001031 00:D021: A5 C2     LDA ram_00C2
C - - - - - 0x001033 00:D023: F0 41     BEQ bra_D066
C - - - - - 0x001035 00:D025: D0 4D     BNE bra_D074    ; jmp
bra_D027:
loc_D027:
C D 2 - - - 0x001037 00:D027: A5 B6     LDA ram_00B6
C - - - - - 0x001039 00:D029: C9 01     CMP #$01
C - - - - - 0x00103B 00:D02B: F0 16     BEQ bra_D043
C - - - - - 0x00103D 00:D02D: C9 06     CMP #$06
C - - - - - 0x00103F 00:D02F: F0 12     BEQ bra_D043
C - - - - - 0x001041 00:D031: C9 02     CMP #$02
C - - - - - 0x001043 00:D033: F0 14     BEQ bra_D049
C - - - - - 0x001045 00:D035: C9 07     CMP #$07
C - - - - - 0x001047 00:D037: F0 10     BEQ bra_D049
C - - - - - 0x001049 00:D039: C9 03     CMP #$03
C - - - - - 0x00104B 00:D03B: F0 16     BEQ bra_D053
C - - - - - 0x00104D 00:D03D: C9 08     CMP #$08
C - - - - - 0x00104F 00:D03F: F0 12     BEQ bra_D053
C - - - - - 0x001051 00:D041: D0 13     BNE bra_D056
bra_D043:
C - - - - - 0x001053 00:D043: A9 02     LDA #$02
C - - - - - 0x001055 00:D045: 85 B3     STA ram_00B3
C - - - - - 0x001057 00:D047: D0 0A     BNE bra_D053    ; jmp
bra_D049:
C - - - - - 0x001059 00:D049: A5 B3     LDA ram_00B3
C - - - - - 0x00105B 00:D04B: C9 03     CMP #$03
C - - - - - 0x00105D 00:D04D: B0 04     BCS bra_D053
C - - - - - 0x00105F 00:D04F: A9 03     LDA #$03
C - - - - - 0x001061 00:D051: 85 B3     STA ram_00B3
bra_D053:
C - - - - - 0x001063 00:D053: A9 80     LDA #$80
C - - - - - 0x001065 00:D055: 60        RTS
bra_D056:
C - - - - - 0x001066 00:D056: A9 80     LDA #$80
C - - - - - 0x001068 00:D058: 85 BB     STA ram_00BB
C - - - - - 0x00106A 00:D05A: A9 7F     LDA #$7F
C - - - - - 0x00106C 00:D05C: 60        RTS
bra_D05D:
C - - - - - 0x00106D 00:D05D: E6 B4     INC ram_00B4
C - - - - - 0x00106F 00:D05F: E6 B4     INC ram_00B4
C - - - - - 0x001071 00:D061: E6 B4     INC ram_00B4
C - - - - - 0x001073 00:D063: 4C 27 D0  JMP loc_D027
bra_D066:
C - - - - - 0x001076 00:D066: C6 B4     DEC ram_00B4
C - - - - - 0x001078 00:D068: A5 B6     LDA ram_00B6
C - - - - - 0x00107A 00:D06A: C9 13     CMP #$13
C - - - - - 0x00107C 00:D06C: F0 DB     BEQ bra_D049
C - - - - - 0x00107E 00:D06E: C9 14     CMP #$14
C - - - - - 0x001080 00:D070: F0 D7     BEQ bra_D049
C - - - - - 0x001082 00:D072: D0 E2     BNE bra_D056    ; jmp
bra_D074:
C - - - - - 0x001084 00:D074: A5 B4     LDA ram_00B4
C - - - - - 0x001086 00:D076: 18        CLC
C - - - - - 0x001087 00:D077: 69 05     ADC #$05
C - - - - - 0x001089 00:D079: 85 B4     STA ram_00B4
C - - - - - 0x00108B 00:D07B: A5 B6     LDA ram_00B6
C - - - - - 0x00108D 00:D07D: C9 17     CMP #$17
C - - - - - 0x00108F 00:D07F: F0 C2     BEQ bra_D043
C - - - - - 0x001091 00:D081: C9 18     CMP #$18
C - - - - - 0x001093 00:D083: F0 C4     BEQ bra_D049
C - - - - - 0x001095 00:D085: C9 19     CMP #$19
C - - - - - 0x001097 00:D087: F0 CA     BEQ bra_D053
C - - - - - 0x001099 00:D089: D0 CB     BNE bra_D056    ; jmp



sub_D08B:
C - - - - - 0x00109B 00:D08B: A5 B8     LDA ram_00B8
C - - - - - 0x00109D 00:D08D: 18        CLC
C - - - - - 0x00109E 00:D08E: 69 06     ADC #$06
C - - - - - 0x0010A0 00:D090: 38        SEC
C - - - - - 0x0010A1 00:D091: E5 71     SBC ram_0071
loc_D093:
C D 2 - - - 0x0010A3 00:D093: 90 06     BCC bra_D09B
C - - - - - 0x0010A5 00:D095: 10 08     BPL bra_D09F
C - - - - - 0x0010A7 00:D097: A9 7F     LDA #$7F
C - - - - - 0x0010A9 00:D099: 10 04     BPL bra_D09F    ; jmp
bra_D09B:
C - - - - - 0x0010AB 00:D09B: 30 02     BMI bra_D09F    ; jmp if 0x0010A9 fails
- - - - - - 0x0010AD 00:D09D: A9 80     LDA #$80
bra_D09F:
C - - - - - 0x0010AF 00:D09F: 85 BB     STA ram_00BB
C - - - - - 0x0010B1 00:D0A1: 60        RTS



sub_D0A2:
C - - - - - 0x0010B2 00:D0A2: A4 B6     LDY ram_00B6
C - - - - - 0x0010B4 00:D0A4: B9 B1 D0  LDA tbl_D0B1,Y
C - - - - - 0x0010B7 00:D0A7: 18        CLC
C - - - - - 0x0010B8 00:D0A8: 65 B8     ADC ram_00B8
C - - - - - 0x0010BA 00:D0AA: 38        SEC
C - - - - - 0x0010BB 00:D0AB: ED 88 03  SBC ram_0388
C - - - - - 0x0010BE 00:D0AE: 4C 93 D0  JMP loc_D093



tbl_D0B1:
- D 2 - - - 0x0010C1 00:D0B1: 03        .byte $03   ; 00
- D 2 - - - 0x0010C2 00:D0B2: F8        .byte $F8   ; 01
- D 2 - - - 0x0010C3 00:D0B3: F4        .byte $F4   ; 02
- D 2 - - - 0x0010C4 00:D0B4: E6        .byte $E6   ; 03
- - - - - - 0x0010C5 00:D0B5: 00        .byte $00   ; 04
- D 2 - - - 0x0010C6 00:D0B6: 03        .byte $03   ; 05
- D 2 - - - 0x0010C7 00:D0B7: F8        .byte $F8   ; 06
- D 2 - - - 0x0010C8 00:D0B8: F4        .byte $F4   ; 07
- D 2 - - - 0x0010C9 00:D0B9: E6        .byte $E6   ; 08
- - - - - - 0x0010CA 00:D0BA: 00        .byte $00   ; 09
- - - - - - 0x0010CB 00:D0BB: 00        .byte $00   ; 0A
- - - - - - 0x0010CC 00:D0BC: 00        .byte $00   ; 0B
- - - - - - 0x0010CD 00:D0BD: 00        .byte $00   ; 0C
- - - - - - 0x0010CE 00:D0BE: 00        .byte $00   ; 0D
- - - - - - 0x0010CF 00:D0BF: 00        .byte $00   ; 0E
- - - - - - 0x0010D0 00:D0C0: 00        .byte $00   ; 0F
- - - - - - 0x0010D1 00:D0C1: 00        .byte $00   ; 10
- - - - - - 0x0010D2 00:D0C2: 00        .byte $00   ; 11
- - - - - - 0x0010D3 00:D0C3: 00        .byte $00   ; 12
- D 2 - - - 0x0010D4 00:D0C4: E4        .byte $E4   ; 13
- D 2 - - - 0x0010D5 00:D0C5: D4        .byte $D4   ; 14
- D 2 - - - 0x0010D6 00:D0C6: 00        .byte $00   ; 15
- - - - - - 0x0010D7 00:D0C7: 00        .byte $00   ; 16
- D 2 - - - 0x0010D8 00:D0C8: F8        .byte $F8   ; 17
- D 2 - - - 0x0010D9 00:D0C9: E4        .byte $E4   ; 18
- D 2 - - - 0x0010DA 00:D0CA: D4        .byte $D4   ; 19
- - - - - - 0x0010DB 00:D0CB: 00        .byte $00   ; 1A
- - - - - - 0x0010DC 00:D0CC: 00        .byte $00   ; 1B
- - - - - - 0x0010DD 00:D0CD: 00        .byte $00   ; 1C
- - - - - - 0x0010DE 00:D0CE: 00        .byte $00   ; 1D
- - - - - - 0x0010DF 00:D0CF: 00        .byte $00   ; 1E
- - - - - - 0x0010E0 00:D0D0: 00        .byte $00   ; 1F
- - - - - - 0x0010E1 00:D0D1: 00        .byte $00   ; 20
- - - - - - 0x0010E2 00:D0D2: 00        .byte $00   ; 21
- - - - - - 0x0010E3 00:D0D3: 00        .byte $00   ; 22
- - - - - - 0x0010E4 00:D0D4: 00        .byte $00   ; 23
- - - - - - 0x0010E5 00:D0D5: 00        .byte $00   ; 24
- - - - - - 0x0010E6 00:D0D6: 00        .byte $00   ; 25
- - - - - - 0x0010E7 00:D0D7: 00        .byte $00   ; 26
- - - - - - 0x0010E8 00:D0D8: 00        .byte $00   ; 27



sub_D0D9:
C - - - - - 0x0010E9 00:D0D9: 20 FA D0  JSR sub_D0FA
C - - - - - 0x0010EC 00:D0DC: A5 BF     LDA ram_00BF
C - - - - - 0x0010EE 00:D0DE: F0 02     BEQ bra_D0E2
C - - - - - 0x0010F0 00:D0E0: C6 BF     DEC ram_00BF
bra_D0E2:
C - - - - - 0x0010F2 00:D0E2: F0 0B     BEQ bra_D0EF
C - - - - - 0x0010F4 00:D0E4: A5 86     LDA ram_0086
C - - - - - 0x0010F6 00:D0E6: C9 02     CMP #$02
C - - - - - 0x0010F8 00:D0E8: D0 04     BNE bra_D0EE_RTS
C - - - - - 0x0010FA 00:D0EA: C6 86     DEC ram_0086
C - - - - - 0x0010FC 00:D0EC: C6 86     DEC ram_0086
bra_D0EE_RTS:
C - - - - - 0x0010FE 00:D0EE: 60        RTS
bra_D0EF:
C - - - - - 0x0010FF 00:D0EF: A5 86     LDA ram_0086
C - - - - - 0x001101 00:D0F1: C9 02     CMP #$02
C - - - - - 0x001103 00:D0F3: D0 04     BNE bra_D0F9_RTS
C - - - - - 0x001105 00:D0F5: A9 0A     LDA #$0A
C - - - - - 0x001107 00:D0F7: 85 BF     STA ram_00BF
bra_D0F9_RTS:
C - - - - - 0x001109 00:D0F9: 60        RTS



sub_D0FA:
C - - - - - 0x00110A 00:D0FA: A5 CF     LDA ram_00CF
C - - - - - 0x00110C 00:D0FC: 85 11     STA ram_0011
C - - - - - 0x00110E 00:D0FE: A5 B8     LDA ram_00B8
C - - - - - 0x001110 00:D100: 38        SEC
C - - - - - 0x001111 00:D101: E5 71     SBC ram_0071
C - - - - - 0x001113 00:D103: 90 07     BCC bra_D10C
C - - - - - 0x001115 00:D105: 10 09     BPL bra_D110
C - - - - - 0x001117 00:D107: A9 7F     LDA #$7F
C - - - - - 0x001119 00:D109: 4C 10 D1  JMP loc_D110
bra_D10C:
C - - - - - 0x00111C 00:D10C: 30 02     BMI bra_D110
C - - - - - 0x00111E 00:D10E: A9 80     LDA #$80
bra_D110:
loc_D110:
C D 2 - - - 0x001120 00:D110: 85 CF     STA ram_00CF
C - - - - - 0x001122 00:D112: 45 11     EOR ram_0011
C - - - - - 0x001124 00:D114: 10 1B     BPL bra_D131_RTS
C - - - - - 0x001126 00:D116: A5 B9     LDA ram_00B9
C - - - - - 0x001128 00:D118: 38        SEC
C - - - - - 0x001129 00:D119: E5 70     SBC ram_0070
C - - - - - 0x00112B 00:D11B: 10 06     BPL bra_D123
C - - - - - 0x00112D 00:D11D: C9 FC     CMP #$FC
C - - - - - 0x00112F 00:D11F: B0 06     BCS bra_D127
C - - - - - 0x001131 00:D121: 90 0E     BCC bra_D131_RTS    ; jmp
bra_D123:
C - - - - - 0x001133 00:D123: C9 04     CMP #$04
C - - - - - 0x001135 00:D125: B0 0A     BCS bra_D131_RTS
bra_D127:
C - - - - - 0x001137 00:D127: A5 6F     LDA ram_006F
C - - - - - 0x001139 00:D129: C9 58     CMP #$58
C - - - - - 0x00113B 00:D12B: B0 04     BCS bra_D131_RTS
C - - - - - 0x00113D 00:D12D: A9 02     LDA #$02
C - - - - - 0x00113F 00:D12F: 85 86     STA ram_0086
bra_D131_RTS:
C - - - - - 0x001141 00:D131: 60        RTS



sub_D132:
C - - - - - 0x001142 00:D132: A5 39     LDA ram_game_mode
C - - - - - 0x001144 00:D134: F0 FB     BEQ bra_D131_RTS    ; if 1 player
C - - - - - 0x001146 00:D136: A5 AB     LDA ram_00AB
C - - - - - 0x001148 00:D138: F0 F7     BEQ bra_D131_RTS
C - - - - - 0x00114A 00:D13A: A5 CD     LDA ram_00CD
C - - - - - 0x00114C 00:D13C: 85 15     STA ram_0015
C - - - - - 0x00114E 00:D13E: 29 0F     AND #$0F
C - - - - - 0x001150 00:D140: 85 14     STA ram_0014
C - - - - - 0x001152 00:D142: A0 3D     LDY #$3D
C - - - - - 0x001154 00:D144: B1 A8     LDA (ram_00A8),Y    ; 033D 037D
C - - - - - 0x001156 00:D146: 29 0F     AND #$0F
C - - - - - 0x001158 00:D148: 85 12     STA ram_0012
C - - - - - 0x00115A 00:D14A: A9 00     LDA #$00
C - - - - - 0x00115C 00:D14C: 85 01     STA ram_0001
C - - - - - 0x00115E 00:D14E: 85 CD     STA ram_00CD
C - - - - - 0x001160 00:D150: 85 02     STA ram_0002
C - - - - - 0x001162 00:D152: 20 D3 D1  JSR sub_D1D3
C - - - - - 0x001165 00:D155: 20 EE D1  JSR sub_D1EE
C - - - - - 0x001168 00:D158: A5 02     LDA ram_0002
C - - - - - 0x00116A 00:D15A: C9 30     CMP #$30
C - - - - - 0x00116C 00:D15C: F0 08     BEQ bra_D166
C - - - - - 0x00116E 00:D15E: A9 00     LDA #$00
C - - - - - 0x001170 00:D160: 85 03     STA ram_0003
C - - - - - 0x001172 00:D162: 85 04     STA ram_0004
C - - - - - 0x001174 00:D164: F0 5E     BEQ bra_D1C4    ; jmp
bra_D166:
C - - - - - 0x001176 00:D166: A5 15     LDA ram_0015
C - - - - - 0x001178 00:D168: 29 30     AND #$30
C - - - - - 0x00117A 00:D16A: F0 12     BEQ bra_D17E
C - - - - - 0x00117C 00:D16C: C9 10     CMP #$10
C - - - - - 0x00117E 00:D16E: F0 2A     BEQ bra_D19A
C - - - - - 0x001180 00:D170: C9 20     CMP #$20
C - - - - - 0x001182 00:D172: F0 3C     BEQ bra_D1B0
C - - - - - 0x001184 00:D174: A5 14     LDA ram_0014
C - - - - - 0x001186 00:D176: 85 03     STA ram_0003
C - - - - - 0x001188 00:D178: A5 12     LDA ram_0012
C - - - - - 0x00118A 00:D17A: 85 04     STA ram_0004
C - - - - - 0x00118C 00:D17C: 10 46     BPL bra_D1C4
bra_D17E:
- - - - - - 0x00118E 00:D17E: 20 9A D1  JSR sub_D19A
- - - - - - 0x001191 00:D181: A5 03     LDA ram_0003
- - - - - - 0x001193 00:D183: 85 05     STA ram_0005
- - - - - - 0x001195 00:D185: A5 04     LDA ram_0004
- - - - - - 0x001197 00:D187: 85 06     STA ram_0006
- - - - - - 0x001199 00:D189: 20 B0 D1  JSR sub_D1B0
- - - - - - 0x00119C 00:D18C: A5 03     LDA ram_0003
- - - - - - 0x00119E 00:D18E: 05 05     ORA ram_0005
- - - - - - 0x0011A0 00:D190: 85 03     STA ram_0003
- - - - - - 0x0011A2 00:D192: A5 04     LDA ram_0004
- - - - - - 0x0011A4 00:D194: 05 06     ORA ram_0006
- - - - - - 0x0011A6 00:D196: 85 04     STA ram_0004
- - - - - - 0x0011A8 00:D198: 10 2A     BPL bra_D1C4
bra_D19A:
sub_D19A:
C - - - - - 0x0011AA 00:D19A: 24 01     BIT ram_0001
C - - - - - 0x0011AC 00:D19C: 10 09     BPL bra_D1A7
C - - - - - 0x0011AE 00:D19E: A9 04     LDA #$04
C - - - - - 0x0011B0 00:D1A0: 85 03     STA ram_0003
C - - - - - 0x0011B2 00:D1A2: 0A        ASL
C - - - - - 0x0011B3 00:D1A3: 85 04     STA ram_0004
C - - - - - 0x0011B5 00:D1A5: 10 1D     BPL bra_D1C4
bra_D1A7:
C - - - - - 0x0011B7 00:D1A7: A9 04     LDA #$04
C - - - - - 0x0011B9 00:D1A9: 85 04     STA ram_0004
C - - - - - 0x0011BB 00:D1AB: 0A        ASL
C - - - - - 0x0011BC 00:D1AC: 85 03     STA ram_0003
C - - - - - 0x0011BE 00:D1AE: 10 14     BPL bra_D1C4
bra_D1B0:
sub_D1B0:
C - - - - - 0x0011C0 00:D1B0: 24 01     BIT ram_0001
C - - - - - 0x0011C2 00:D1B2: 50 09     BVC bra_D1BD
C - - - - - 0x0011C4 00:D1B4: A9 01     LDA #$01
C - - - - - 0x0011C6 00:D1B6: 85 03     STA ram_0003
C - - - - - 0x0011C8 00:D1B8: 0A        ASL
C - - - - - 0x0011C9 00:D1B9: 85 04     STA ram_0004
C - - - - - 0x0011CB 00:D1BB: 10 07     BPL bra_D1C4
bra_D1BD:
C - - - - - 0x0011CD 00:D1BD: A9 01     LDA #$01
C - - - - - 0x0011CF 00:D1BF: 85 04     STA ram_0004
C - - - - - 0x0011D1 00:D1C1: 0A        ASL
C - - - - - 0x0011D2 00:D1C2: 85 03     STA ram_0003
bra_D1C4:
C - - - - - 0x0011D4 00:D1C4: A5 02     LDA ram_0002
C - - - - - 0x0011D6 00:D1C6: 05 03     ORA ram_0003
C - - - - - 0x0011D8 00:D1C8: 85 CD     STA ram_00CD
C - - - - - 0x0011DA 00:D1CA: 29 F0     AND #$F0
C - - - - - 0x0011DC 00:D1CC: 05 04     ORA ram_0004
C - - - - - 0x0011DE 00:D1CE: A0 3D     LDY #$3D
C - - - - - 0x0011E0 00:D1D0: 91 A8     STA (ram_00A8),Y    ; 033D 037D
C - - - - - 0x0011E2 00:D1D2: 60        RTS



sub_D1D3:
C - - - - - 0x0011E3 00:D1D3: A5 B8     LDA ram_00B8
C - - - - - 0x0011E5 00:D1D5: A0 28     LDY #$28
C - - - - - 0x0011E7 00:D1D7: 38        SEC
C - - - - - 0x0011E8 00:D1D8: F1 A8     SBC (ram_00A8),Y    ; 0328 0368
C - - - - - 0x0011EA 00:D1DA: 10 09     BPL bra_D1E5
C - - - - - 0x0011EC 00:D1DC: 49 FF     EOR #$FF
C - - - - - 0x0011EE 00:D1DE: 18        CLC
C - - - - - 0x0011EF 00:D1DF: 69 01     ADC #$01
C - - - - - 0x0011F1 00:D1E1: A2 80     LDX #$80
C - - - - - 0x0011F3 00:D1E3: 86 01     STX ram_0001
bra_D1E5:
C - - - - - 0x0011F5 00:D1E5: C9 0C     CMP #$0C
C - - - - - 0x0011F7 00:D1E7: B0 04     BCS bra_D1ED_RTS
C - - - - - 0x0011F9 00:D1E9: A2 20     LDX #$20
C - - - - - 0x0011FB 00:D1EB: 86 02     STX ram_0002
bra_D1ED_RTS:
C - - - - - 0x0011FD 00:D1ED: 60        RTS



sub_D1EE:
C - - - - - 0x0011FE 00:D1EE: A5 B9     LDA ram_00B9
C - - - - - 0x001200 00:D1F0: C8        INY
C - - - - - 0x001201 00:D1F1: 38        SEC
C - - - - - 0x001202 00:D1F2: F1 A8     SBC (ram_00A8),Y    ; 0329 0369
C - - - - - 0x001204 00:D1F4: 10 0D     BPL bra_D203
C - - - - - 0x001206 00:D1F6: 49 FF     EOR #$FF
C - - - - - 0x001208 00:D1F8: 18        CLC
C - - - - - 0x001209 00:D1F9: 69 01     ADC #$01
C - - - - - 0x00120B 00:D1FB: AA        TAX
C - - - - - 0x00120C 00:D1FC: A9 40     LDA #$40
C - - - - - 0x00120E 00:D1FE: 05 01     ORA ram_0001
C - - - - - 0x001210 00:D200: 85 01     STA ram_0001
C - - - - - 0x001212 00:D202: 8A        TXA
bra_D203:
C - - - - - 0x001213 00:D203: C9 10     CMP #$10
C - - - - - 0x001215 00:D205: B0 06     BCS bra_D20D_RTS
C - - - - - 0x001217 00:D207: A9 10     LDA #$10
C - - - - - 0x001219 00:D209: 05 02     ORA ram_0002
C - - - - - 0x00121B 00:D20B: 85 02     STA ram_0002
bra_D20D_RTS:
C - - - - - 0x00121D 00:D20D: 60        RTS



sub_D20E:
C - - - - - 0x00121E 00:D20E: A5 C1     LDA ram_00C1
C - - - - - 0x001220 00:D210: 85 15     STA ram_0015
C - - - - - 0x001222 00:D212: 46 15     LSR ram_0015
C - - - - - 0x001224 00:D214: 90 08     BCC bra_D21E
C - - - - - 0x001226 00:D216: A5 27     LDA ram_0027
C - - - - - 0x001228 00:D218: 29 04     AND #$04
C - - - - - 0x00122A 00:D21A: D0 02     BNE bra_D21E
C - - - - - 0x00122C 00:D21C: E6 15     INC ram_0015
bra_D21E:
C - - - - - 0x00122E 00:D21E: 46 15     LSR ram_0015
C - - - - - 0x001230 00:D220: 90 08     BCC bra_D22A
C - - - - - 0x001232 00:D222: A5 27     LDA ram_0027
C - - - - - 0x001234 00:D224: 29 02     AND #$02
C - - - - - 0x001236 00:D226: D0 02     BNE bra_D22A
C - - - - - 0x001238 00:D228: E6 15     INC ram_0015
bra_D22A:
C - - - - - 0x00123A 00:D22A: 46 15     LSR ram_0015
C - - - - - 0x00123C 00:D22C: 90 08     BCC bra_D236
C - - - - - 0x00123E 00:D22E: A5 27     LDA ram_0027
C - - - - - 0x001240 00:D230: 29 01     AND #$01
C - - - - - 0x001242 00:D232: D0 02     BNE bra_D236
C - - - - - 0x001244 00:D234: E6 15     INC ram_0015
bra_D236:
C - - - - - 0x001246 00:D236: A5 CD     LDA ram_00CD
C - - - - - 0x001248 00:D238: 49 0F     EOR #$0F
C - - - - - 0x00124A 00:D23A: 25 C0     AND ram_00C0
C - - - - - 0x00124C 00:D23C: 29 0F     AND #$0F
C - - - - - 0x00124E 00:D23E: F0 3C     BEQ bra_D27C_RTS
C - - - - - 0x001250 00:D240: AA        TAX
C - - - - - 0x001251 00:D241: 29 04     AND #$04
C - - - - - 0x001253 00:D243: F0 0A     BEQ bra_D24F
C - - - - - 0x001255 00:D245: A5 B8     LDA ram_00B8
C - - - - - 0x001257 00:D247: C5 C7     CMP ram_00C7
C - - - - - 0x001259 00:D249: B0 04     BCS bra_D24F
C - - - - - 0x00125B 00:D24B: 65 15     ADC ram_0015
C - - - - - 0x00125D 00:D24D: 85 B8     STA ram_00B8
bra_D24F:
C - - - - - 0x00125F 00:D24F: 8A        TXA
C - - - - - 0x001260 00:D250: 29 08     AND #$08
C - - - - - 0x001262 00:D252: F0 0A     BEQ bra_D25E
C - - - - - 0x001264 00:D254: A5 B8     LDA ram_00B8
C - - - - - 0x001266 00:D256: C5 C6     CMP ram_00C6
C - - - - - 0x001268 00:D258: 90 04     BCC bra_D25E
C - - - - - 0x00126A 00:D25A: E5 15     SBC ram_0015
C - - - - - 0x00126C 00:D25C: 85 B8     STA ram_00B8
bra_D25E:
C - - - - - 0x00126E 00:D25E: 8A        TXA
C - - - - - 0x00126F 00:D25F: 29 01     AND #$01
C - - - - - 0x001271 00:D261: F0 0A     BEQ bra_D26D
C - - - - - 0x001273 00:D263: A5 B9     LDA ram_00B9
C - - - - - 0x001275 00:D265: C5 C4     CMP ram_00C4
C - - - - - 0x001277 00:D267: B0 04     BCS bra_D26D
C - - - - - 0x001279 00:D269: 65 15     ADC ram_0015
C - - - - - 0x00127B 00:D26B: 85 B9     STA ram_00B9
bra_D26D:
C - - - - - 0x00127D 00:D26D: 8A        TXA
C - - - - - 0x00127E 00:D26E: 29 02     AND #$02
C - - - - - 0x001280 00:D270: F0 0A     BEQ bra_D27C_RTS
C - - - - - 0x001282 00:D272: A5 B9     LDA ram_00B9
C - - - - - 0x001284 00:D274: C5 C5     CMP ram_00C5
C - - - - - 0x001286 00:D276: 90 04     BCC bra_D27C_RTS
C - - - - - 0x001288 00:D278: E5 15     SBC ram_0015
C - - - - - 0x00128A 00:D27A: 85 B9     STA ram_00B9
bra_D27C_RTS:
C - - - - - 0x00128C 00:D27C: 60        RTS



sub_D27D:
C - - - - - 0x00128D 00:D27D: 20 D0 D2  JSR sub_D2D0
C - - - - - 0x001290 00:D280: 20 C9 D2  JSR sub_D2C9
C - - - - - 0x001293 00:D283: D0 1F     BNE bra_D2A4_RTS
C - - - - - 0x001295 00:D285: A5 8D     LDA ram_008D
C - - - - - 0x001297 00:D287: 29 42     AND #$42
C - - - - - 0x001299 00:D289: C9 40     CMP #$40
C - - - - - 0x00129B 00:D28B: D0 14     BNE bra_D2A1
C - - - - - 0x00129D 00:D28D: A5 B6     LDA ram_00B6
C - - - - - 0x00129F 00:D28F: C9 14     CMP #$14
C - - - - - 0x0012A1 00:D291: F0 08     BEQ bra_D29B
C - - - - - 0x0012A3 00:D293: C9 13     CMP #$13
C - - - - - 0x0012A5 00:D295: D0 0A     BNE bra_D2A1
C - - - - - 0x0012A7 00:D297: C6 B8     DEC ram_00B8
C - - - - - 0x0012A9 00:D299: C6 B8     DEC ram_00B8
bra_D29B:
C - - - - - 0x0012AB 00:D29B: C6 B8     DEC ram_00B8
C - - - - - 0x0012AD 00:D29D: C6 B8     DEC ram_00B8
C - - - - - 0x0012AF 00:D29F: C6 B8     DEC ram_00B8
bra_D2A1:
C - - - - - 0x0012B1 00:D2A1: 20 DD D2  JSR sub_D2DD
bra_D2A4_RTS:
C - - - - - 0x0012B4 00:D2A4: 60        RTS



sub_D2A5:
C - - - - - 0x0012B5 00:D2A5: 20 D0 D2  JSR sub_D2D0
C - - - - - 0x0012B8 00:D2A8: 20 C9 D2  JSR sub_D2C9
C - - - - - 0x0012BB 00:D2AB: D0 F7     BNE bra_D2A4_RTS
C - - - - - 0x0012BD 00:D2AD: A5 8D     LDA ram_008D
C - - - - - 0x0012BF 00:D2AF: 29 42     AND #$42
C - - - - - 0x0012C1 00:D2B1: C9 42     CMP #$42
C - - - - - 0x0012C3 00:D2B3: D0 10     BNE bra_D2C5
C - - - - - 0x0012C5 00:D2B5: A5 B6     LDA ram_00B6
C - - - - - 0x0012C7 00:D2B7: C9 2D     CMP #$2D
C - - - - - 0x0012C9 00:D2B9: F0 06     BEQ bra_D2C1
C - - - - - 0x0012CB 00:D2BB: C9 2C     CMP #$2C
C - - - - - 0x0012CD 00:D2BD: D0 06     BNE bra_D2C5
C - - - - - 0x0012CF 00:D2BF: E6 B8     INC ram_00B8
bra_D2C1:
C - - - - - 0x0012D1 00:D2C1: E6 B8     INC ram_00B8
C - - - - - 0x0012D3 00:D2C3: E6 B8     INC ram_00B8
bra_D2C5:
C - - - - - 0x0012D5 00:D2C5: 20 07 D3  JSR sub_D307
C - - - - - 0x0012D8 00:D2C8: 60        RTS



sub_D2C9:
C - - - - - 0x0012D9 00:D2C9: A5 B3     LDA ram_00B3
C - - - - - 0x0012DB 00:D2CB: F0 02     BEQ bra_D2CF_RTS
C - - - - - 0x0012DD 00:D2CD: C6 B3     DEC ram_00B3
bra_D2CF_RTS:
C - - - - - 0x0012DF 00:D2CF: 60        RTS



sub_D2D0:
C - - - - - 0x0012E0 00:D2D0: A5 B4     LDA ram_00B4
C - - - - - 0x0012E2 00:D2D2: F0 02     BEQ bra_D2D6_RTS
C - - - - - 0x0012E4 00:D2D4: C6 B4     DEC ram_00B4
bra_D2D6_RTS:
C - - - - - 0x0012E6 00:D2D6: 60        RTS



bra_D2D7_loop:
C - - - - - 0x0012E7 00:D2D7: C8        INY
C - - - - - 0x0012E8 00:D2D8: B9 1C D3  LDA tbl_D31C,Y
C - - - - - 0x0012EB 00:D2DB: 85 B5     STA ram_00B5
sub_D2DD:
C - - - - - 0x0012ED 00:D2DD: A4 B5     LDY ram_00B5
C - - - - - 0x0012EF 00:D2DF: B9 1C D3  LDA tbl_D31C,Y
C - - - - - 0x0012F2 00:D2E2: C9 FF     CMP #$FF
C - - - - - 0x0012F4 00:D2E4: F0 F1     BEQ bra_D2D7_loop
C - - - - - 0x0012F6 00:D2E6: 85 B6     STA ram_00B6
C - - - - - 0x0012F8 00:D2E8: C8        INY
C - - - - - 0x0012F9 00:D2E9: A5 C9     LDA ram_00C9
C - - - - - 0x0012FB 00:D2EB: C9 18     CMP #$18
C - - - - - 0x0012FD 00:D2ED: D0 0A     BNE bra_D2F9
C - - - - - 0x0012FF 00:D2EF: B9 1C D3  LDA tbl_D31C,Y
C - - - - - 0x001302 00:D2F2: C8        INY
C - - - - - 0x001303 00:D2F3: C8        INY
loc_D2F4:
C D 2 - - - 0x001304 00:D2F4: 85 B3     STA ram_00B3
C - - - - - 0x001306 00:D2F6: 84 B5     STY ram_00B5
C - - - - - 0x001308 00:D2F8: 60        RTS
bra_D2F9:
C - - - - - 0x001309 00:D2F9: C8        INY
C - - - - - 0x00130A 00:D2FA: B9 1C D3  LDA tbl_D31C,Y
C - - - - - 0x00130D 00:D2FD: C8        INY
C - - - - - 0x00130E 00:D2FE: 4C F4 D2  JMP loc_D2F4



bra_D301_loop:
C - - - - - 0x001311 00:D301: C8        INY
C - - - - - 0x001312 00:D302: B9 F7 D3  LDA tbl_D3F7,Y
C - - - - - 0x001315 00:D305: 85 B5     STA ram_00B5
sub_D307:
C - - - - - 0x001317 00:D307: A4 B5     LDY ram_00B5
C - - - - - 0x001319 00:D309: B9 F7 D3  LDA tbl_D3F7,Y
C - - - - - 0x00131C 00:D30C: C9 FF     CMP #$FF
C - - - - - 0x00131E 00:D30E: F0 F1     BEQ bra_D301_loop
C - - - - - 0x001320 00:D310: 85 B6     STA ram_00B6
C - - - - - 0x001322 00:D312: C8        INY
C - - - - - 0x001323 00:D313: B9 F7 D3  LDA tbl_D3F7,Y
C - - - - - 0x001326 00:D316: 85 B3     STA ram_00B3
C - - - - - 0x001328 00:D318: C8        INY
C - - - - - 0x001329 00:D319: 84 B5     STY ram_00B5
C - - - - - 0x00132B 00:D31B: 60        RTS



tbl_D31C:
; 00
- D 2 - - - 0x00132C 00:D31C: 00        .byte $00, $03, $03   ; 
- D 2 - - - 0x00132F 00:D31F: 0D        .byte $0D, $03, $03   ; 
- D 2 - - - 0x001332 00:D322: 0E        .byte $0E, $03, $03   ; 
- D 2 - - - 0x001335 00:D325: 0D        .byte $0D, $03, $03   ; 
- D 2 - - - 0x001338 00:D328: FF        .byte $FF, $00   ; 
; 0E
- D 2 - - - 0x00133A 00:D32A: 0A        .byte $0A, $20, $22   ; 
- D 2 - - - 0x00133D 00:D32D: 0B        .byte $0B, $26, $28   ; 
- D 2 - - - 0x001340 00:D330: 0A        .byte $0A, $34, $36   ; 
- D 2 - - - 0x001343 00:D333: 0B        .byte $0B, $2A, $2C   ; 
- D 2 - - - 0x001346 00:D336: FF        .byte $FF, $0E   ; 
; 1C
- D 2 - - - 0x001348 00:D338: 3A        .byte $3A, $36, $38   ; 
- D 2 - - - 0x00134B 00:D33B: 3B        .byte $3B, $2A, $2C   ; 
- D 2 - - - 0x00134E 00:D33E: 3A        .byte $3A, $1E, $20   ; 
- D 2 - - - 0x001351 00:D341: 3B        .byte $3B, $24, $26   ; 
- D 2 - - - 0x001354 00:D344: FF        .byte $FF, $1C   ; 
; 2A
- D 2 - - - 0x001356 00:D346: 05        .byte $05, $03, $03   ; 
- D 2 - - - 0x001359 00:D349: 0F        .byte $0F, $03, $03   ; 
- D 2 - - - 0x00135C 00:D34C: 10        .byte $10, $03, $03   ; 
- D 2 - - - 0x00135F 00:D34F: 0F        .byte $0F, $03, $03   ; 
- D 2 - - - 0x001362 00:D352: FF        .byte $FF, $2A   ; 
; 38
- D 2 - - - 0x001364 00:D354: 00        .byte $00, $01, $01   ; 
- D 2 - - - 0x001367 00:D357: 01        .byte $01, $05, $07   ; 
- D 2 - - - 0x00136A 00:D35A: 02        .byte $02, $05, $08   ; 
- D 2 - - - 0x00136D 00:D35D: 03        .byte $03, $05, $07   ; 
- D 2 - - - 0x001370 00:D360: 04        .byte $04, $0A, $13   ; 
- D 2 - - - 0x001373 00:D363: FF        .byte $FF, $0E   ; 
; 49
- D 2 - - - 0x001375 00:D365: 05        .byte $05, $01, $01   ; 
- D 2 - - - 0x001378 00:D368: 06        .byte $06, $05, $07   ; 
- D 2 - - - 0x00137B 00:D36B: 07        .byte $07, $05, $08   ; 
- D 2 - - - 0x00137E 00:D36E: 08        .byte $08, $05, $07   ; 
- D 2 - - - 0x001381 00:D371: 09        .byte $09, $0A, $13   ; 
- D 2 - - - 0x001384 00:D374: FF        .byte $FF, $0E   ; 
; 5A
- D 2 - - - 0x001386 00:D376: 00        .byte $00, $01, $01   ; 
- D 2 - - - 0x001389 00:D379: 13        .byte $13, $06, $08   ; 
- D 2 - - - 0x00138C 00:D37C: 14        .byte $14, $06, $08   ; 
- D 2 - - - 0x00138F 00:D37F: 15        .byte $15, $04, $06   ; 
- D 2 - - - 0x001392 00:D382: 16        .byte $16, $0A, $13   ; 
- D 2 - - - 0x001395 00:D385: FF        .byte $FF, $0E   ; 
; 6B
- D 2 - - - 0x001397 00:D387: 05        .byte $05, $01, $01   ; 
- D 2 - - - 0x00139A 00:D38A: 17        .byte $17, $06, $08   ; 
- D 2 - - - 0x00139D 00:D38D: 18        .byte $18, $07, $0A   ; 
- D 2 - - - 0x0013A0 00:D390: 19        .byte $19, $0C, $15   ; 
- D 2 - - - 0x0013A3 00:D393: FF        .byte $FF, $0E   ; 
; 79
- D 2 - - - 0x0013A5 00:D395: 00        .byte $00, $01, $01   ; 
- D 2 - - - 0x0013A8 00:D398: 01        .byte $01, $05, $07   ; 
- D 2 - - - 0x0013AB 00:D39B: 02        .byte $02, $07, $0A   ; 
- D 2 - - - 0x0013AE 00:D39E: 03        .byte $03, $0E, $17   ; 
- D 2 - - - 0x0013B1 00:D3A1: FF        .byte $FF, $0E   ; 
; 87
- D 2 - - - 0x0013B3 00:D3A3: 05        .byte $05, $01, $01   ; 
- D 2 - - - 0x0013B6 00:D3A6: 06        .byte $06, $05, $07   ; 
- D 2 - - - 0x0013B9 00:D3A9: 07        .byte $07, $07, $0A   ; 
- D 2 - - - 0x0013BC 00:D3AC: 08        .byte $08, $0E, $17   ; 
- D 2 - - - 0x0013BF 00:D3AF: FF        .byte $FF, $0E   ; 
; 95
- D 2 - - - 0x0013C1 00:D3B1: 00        .byte $00, $01, $01   ; 
- D 2 - - - 0x0013C4 00:D3B4: 01        .byte $01, $05, $07   ; 
- D 2 - - - 0x0013C7 00:D3B7: 02        .byte $02, $05, $08   ; 
- D 2 - - - 0x0013CA 00:D3BA: 03        .byte $03, $05, $07   ; 
- D 2 - - - 0x0013CD 00:D3BD: 0C        .byte $0C, $0A, $13   ; 
- D 2 - - - 0x0013D0 00:D3C0: FF        .byte $FF, $0E   ; 
; A6
- D 2 - - - 0x0013D2 00:D3C2: 05        .byte $05, $01, $01   ; 
- D 2 - - - 0x0013D5 00:D3C5: 06        .byte $06, $05, $07   ; 
- D 2 - - - 0x0013D8 00:D3C8: 07        .byte $07, $05, $08   ; 
- D 2 - - - 0x0013DB 00:D3CB: 08        .byte $08, $05, $07   ; 
- D 2 - - - 0x0013DE 00:D3CE: 24        .byte $24, $0A, $13   ; 
- D 2 - - - 0x0013E1 00:D3D1: FF        .byte $FF, $0E   ; 
; B7
- D 2 - - - 0x0013E3 00:D3D3: 13        .byte $13, $05, $08   ; 
- D 2 - - - 0x0013E6 00:D3D6: 14        .byte $14, $05, $08   ; 
- D 2 - - - 0x0013E9 00:D3D9: 15        .byte $15, $05, $08   ; 
- D 2 - - - 0x0013EC 00:D3DC: 16        .byte $16, $0A, $14   ; 
- D 2 - - - 0x0013EF 00:D3DF: FF        .byte $FF, $0E   ; 
; C5
- D 2 - - - 0x0013F1 00:D3E1: 07        .byte $07, $04, $06   ; 
- D 2 - - - 0x0013F4 00:D3E4: 02        .byte $02, $04, $06   ; 
- D 2 - - - 0x0013F7 00:D3E7: 01        .byte $01, $04, $06   ; 
- D 2 - - - 0x0013FA 00:D3EA: FF        .byte $FF, $00   ; 
; D0
- D 2 - - - 0x0013FC 00:D3EC: 03        .byte $03, $04, $06   ; 
- D 2 - - - 0x0013FF 00:D3EF: 07        .byte $07, $04, $06   ; 
- D 2 - - - 0x001402 00:D3F2: 06        .byte $06, $04, $06   ; 
- D 2 - - - 0x001405 00:D3F5: FF        .byte $FF, $2A   ; 



tbl_D3F7:
; 00
- D 2 - - - 0x001407 00:D3F7: 1A        .byte $1A, $03   ; 
- D 2 - - - 0x001409 00:D3F9: 25        .byte $25, $03   ; 
- D 2 - - - 0x00140B 00:D3FB: 26        .byte $26, $03   ; 
- D 2 - - - 0x00140D 00:D3FD: 25        .byte $25, $03   ; 
- D 2 - - - 0x00140F 00:D3FF: FF        .byte $FF, $00   ; 
; 0A
- D 2 - - - 0x001411 00:D401: 22        .byte $22, $22   ; 
- D 2 - - - 0x001413 00:D403: 23        .byte $23, $20   ; 
- D 2 - - - 0x001415 00:D405: 22        .byte $22, $30   ; 
- D 2 - - - 0x001417 00:D407: 23        .byte $23, $28   ; 
- D 2 - - - 0x001419 00:D409: FF        .byte $FF, $0A   ; 
; 14
- D 2 - - - 0x00141B 00:D40B: 3C        .byte $3C, $20   ; 
- D 2 - - - 0x00141D 00:D40D: 3D        .byte $3D, $2E   ; 
- D 2 - - - 0x00141F 00:D40F: 3C        .byte $3C, $24   ; 
- D 2 - - - 0x001421 00:D411: 3D        .byte $3D, $26   ; 
- D 2 - - - 0x001423 00:D413: FF        .byte $FF, $14   ; 
; 1E
- D 2 - - - 0x001425 00:D415: 1E        .byte $1E, $03   ; 
- D 2 - - - 0x001427 00:D417: 27        .byte $27, $03   ; 
- D 2 - - - 0x001429 00:D419: 28        .byte $28, $03   ; 
- D 2 - - - 0x00142B 00:D41B: 27        .byte $27, $03   ; 
- D 2 - - - 0x00142D 00:D41D: FF        .byte $FF, $1E   ; 
; 28
- D 2 - - - 0x00142F 00:D41F: 1A        .byte $1A, $03   ; 
- D 2 - - - 0x001431 00:D421: 1B        .byte $1B, $06   ; 
- D 2 - - - 0x001433 00:D423: 1C        .byte $1C, $06   ; 
- D 2 - - - 0x001435 00:D425: 1D        .byte $1D, $0A   ; 
- D 2 - - - 0x001437 00:D427: FF        .byte $FF, $0A   ; 
; 32
- D 2 - - - 0x001439 00:D429: 1E        .byte $1E, $03   ; 
- D 2 - - - 0x00143B 00:D42B: 1F        .byte $1F, $06   ; 
- D 2 - - - 0x00143D 00:D42D: 20        .byte $20, $06   ; 
- D 2 - - - 0x00143F 00:D42F: 21        .byte $21, $0A   ; 
- D 2 - - - 0x001441 00:D431: FF        .byte $FF, $0A   ; 
; 3C
- D 2 - - - 0x001443 00:D433: 1A        .byte $1A, $03   ; 
- D 2 - - - 0x001445 00:D435: 2B        .byte $2B, $06   ; 
- D 2 - - - 0x001447 00:D437: 2C        .byte $2C, $06   ; 
- D 2 - - - 0x001449 00:D439: 2D        .byte $2D, $0A   ; 
- D 2 - - - 0x00144B 00:D43B: FF        .byte $FF, $0A   ; 
; 46
- D 2 - - - 0x00144D 00:D43D: 1E        .byte $1E, $03   ; 
- D 2 - - - 0x00144F 00:D43F: 1F        .byte $1F, $06   ; 
- D 2 - - - 0x001451 00:D441: 2E        .byte $2E, $06   ; 
- D 2 - - - 0x001453 00:D443: 21        .byte $21, $0A   ; 
- D 2 - - - 0x001455 00:D445: FF        .byte $FF, $0A   ; 
; 50
- D 2 - - - 0x001457 00:D447: 1A        .byte $1A, $04   ; 
- D 2 - - - 0x001459 00:D449: 2B        .byte $2B, $08   ; 
- D 2 - - - 0x00145B 00:D44B: 2C        .byte $2C, $0C   ; 
- D 2 - - - 0x00145D 00:D44D: FF        .byte $FF, $0A   ; 
; 5A
- D 2 - - - 0x00145F 00:D44F: 1E        .byte $1E, $04   ; 
- D 2 - - - 0x001461 00:D451: 1F        .byte $1F, $08   ; 
- D 2 - - - 0x001463 00:D453: 2E        .byte $2E, $0C   ; 
- D 2 - - - 0x001465 00:D455: FF        .byte $FF, $0A   ; 
; 64
- D 2 - - - 0x001467 00:D457: 2B        .byte $2B, $06   ; 
- D 2 - - - 0x001469 00:D459: 2C        .byte $2C, $06   ; 
- D 2 - - - 0x00146B 00:D45B: 2D        .byte $2D, $0A   ; 
- D 2 - - - 0x00146D 00:D45D: FF        .byte $FF, $0A   ; 

- D 2 - - - 0x00146F 00:D45F: 20        .byte $20, $04   ; 
- D 2 - - - 0x001471 00:D461: 1C        .byte $1C, $04   ; 
- D 2 - - - 0x001473 00:D463: 1B        .byte $1B, $04   ; 
- D 2 - - - 0x001475 00:D465: FF        .byte $FF, $00   ; 
; 6E
- D 2 - - - 0x001477 00:D467: 1C        .byte $1C, $04   ; 
- D 2 - - - 0x001479 00:D469: 20        .byte $20, $04   ; 
- D 2 - - - 0x00147B 00:D46B: 1F        .byte $1F, $04   ; 
- D 2 - - - 0x00147D 00:D46D: FF        .byte $FF, $1E   ; 



sub_D46F:
C - - - - - 0x00147F 00:D46F: A9 05     LDA #$05
C - - - - - 0x001481 00:D471: A4 C2     LDY ram_00C2
C - - - - - 0x001483 00:D473: 84 0C     STY ram_000C
C - - - - - 0x001485 00:D475: F0 02     BEQ bra_D479
C - - - - - 0x001487 00:D477: A9 F9     LDA #$F9
bra_D479:
C - - - - - 0x001489 00:D479: 18        CLC
C - - - - - 0x00148A 00:D47A: 65 B9     ADC ram_00B9
C - - - - - 0x00148C 00:D47C: 85 0E     STA ram_000E
C - - - - - 0x00148E 00:D47E: 20 9B D4  JSR sub_D49B
C - - - - - 0x001491 00:D481: A4 0C     LDY ram_000C
C - - - - - 0x001493 00:D483: 84 C2     STY ram_00C2
C - - - - - 0x001495 00:D485: 60        RTS



sub_D486:
C - - - - - 0x001496 00:D486: 20 97 D4  JSR sub_D497
C - - - - - 0x001499 00:D489: A9 FB     LDA #$FB
C - - - - - 0x00149B 00:D48B: A4 C2     LDY ram_00C2
C - - - - - 0x00149D 00:D48D: F0 02     BEQ bra_D491
C - - - - - 0x00149F 00:D48F: A9 07     LDA #$07
bra_D491:
C - - - - - 0x0014A1 00:D491: 18        CLC
C - - - - - 0x0014A2 00:D492: 65 C3     ADC ram_00C3
C - - - - - 0x0014A4 00:D494: 85 C3     STA ram_00C3
C - - - - - 0x0014A6 00:D496: 60        RTS



sub_D497:
C - - - - - 0x0014A7 00:D497: A5 B9     LDA ram_00B9
C - - - - - 0x0014A9 00:D499: 85 0E     STA ram_000E
sub_D49B:
C - - - - - 0x0014AB 00:D49B: A5 89     LDA ram_0089
C - - - - - 0x0014AD 00:D49D: 38        SEC
C - - - - - 0x0014AE 00:D49E: E5 B8     SBC ram_00B8
C - - - - - 0x0014B0 00:D4A0: A8        TAY
C - - - - - 0x0014B1 00:D4A1: A9 00     LDA #$00
C - - - - - 0x0014B3 00:D4A3: E9 00     SBC #$00
C - - - - - 0x0014B5 00:D4A5: 10 03     BPL bra_D4AA
C - - - - - 0x0014B7 00:D4A7: 20 07 D5  JSR sub_D507
bra_D4AA:
C - - - - - 0x0014BA 00:D4AA: 85 98     STA ram_0098
C - - - - - 0x0014BC 00:D4AC: 84 99     STY ram_0099
C - - - - - 0x0014BE 00:D4AE: A5 8A     LDA ram_008A
C - - - - - 0x0014C0 00:D4B0: 38        SEC
C - - - - - 0x0014C1 00:D4B1: E5 88     SBC ram_0088
C - - - - - 0x0014C3 00:D4B3: 85 9C     STA ram_009C
C - - - - - 0x0014C5 00:D4B5: A9 00     LDA #$00
C - - - - - 0x0014C7 00:D4B7: E9 00     SBC #$00
C - - - - - 0x0014C9 00:D4B9: 85 9B     STA ram_009B
C - - - - - 0x0014CB 00:D4BB: 20 ED C6  JSR sub_C6ED
C - - - - - 0x0014CE 00:D4BE: 20 2B C6  JSR sub_C62B
C - - - - - 0x0014D1 00:D4C1: A5 8B     LDA ram_008B
C - - - - - 0x0014D3 00:D4C3: 38        SEC
C - - - - - 0x0014D4 00:D4C4: E5 89     SBC ram_0089
C - - - - - 0x0014D6 00:D4C6: A8        TAY
C - - - - - 0x0014D7 00:D4C7: A9 00     LDA #$00
C - - - - - 0x0014D9 00:D4C9: E9 00     SBC #$00
C - - - - - 0x0014DB 00:D4CB: 10 03     BPL bra_D4D0
C - - - - - 0x0014DD 00:D4CD: 20 07 D5  JSR sub_D507
bra_D4D0:
C - - - - - 0x0014E0 00:D4D0: 85 98     STA ram_0098
C - - - - - 0x0014E2 00:D4D2: 84 99     STY ram_0099
C - - - - - 0x0014E4 00:D4D4: 20 84 C6  JSR sub_C684
C - - - - - 0x0014E7 00:D4D7: 20 05 C7  JSR sub_C705
C - - - - - 0x0014EA 00:D4DA: A5 88     LDA ram_0088
C - - - - - 0x0014EC 00:D4DC: 18        CLC
C - - - - - 0x0014ED 00:D4DD: 65 9C     ADC ram_009C
C - - - - - 0x0014EF 00:D4DF: A8        TAY
C - - - - - 0x0014F0 00:D4E0: A9 00     LDA #$00
C - - - - - 0x0014F2 00:D4E2: 65 9B     ADC ram_009B
C - - - - - 0x0014F4 00:D4E4: AA        TAX
C - - - - - 0x0014F5 00:D4E5: 98        TYA
C - - - - - 0x0014F6 00:D4E6: 38        SEC
C - - - - - 0x0014F7 00:D4E7: E5 0E     SBC ram_000E
C - - - - - 0x0014F9 00:D4E9: 85 C3     STA ram_00C3
C - - - - - 0x0014FB 00:D4EB: 8A        TXA
C - - - - - 0x0014FC 00:D4EC: E9 00     SBC #$00
C - - - - - 0x0014FE 00:D4EE: 30 0A     BMI bra_D4FA
C - - - - - 0x001500 00:D4F0: A0 00     LDY #$00
C - - - - - 0x001502 00:D4F2: 24 C3     BIT ram_00C3
C - - - - - 0x001504 00:D4F4: 10 0E     BPL bra_D504
- - - - - - 0x001506 00:D4F6: A2 7F     LDX #$7F
- - - - - - 0x001508 00:D4F8: 10 08     BPL bra_D502    ; jmp
bra_D4FA:
C - - - - - 0x00150A 00:D4FA: A0 01     LDY #$01
C - - - - - 0x00150C 00:D4FC: 24 C3     BIT ram_00C3
C - - - - - 0x00150E 00:D4FE: 30 04     BMI bra_D504
C - - - - - 0x001510 00:D500: A2 80     LDX #$80
bra_D502:
C - - - - - 0x001512 00:D502: 86 C3     STX ram_00C3
bra_D504:
C - - - - - 0x001514 00:D504: 84 C2     STY ram_00C2
C - - - - - 0x001516 00:D506: 60        RTS



sub_D507:
C - - - - - 0x001517 00:D507: AA        TAX
C - - - - - 0x001518 00:D508: 98        TYA
C - - - - - 0x001519 00:D509: 49 FF     EOR #$FF
C - - - - - 0x00151B 00:D50B: 38        SEC
C - - - - - 0x00151C 00:D50C: 69 00     ADC #$00
C - - - - - 0x00151E 00:D50E: A8        TAY
C - - - - - 0x00151F 00:D50F: 8A        TXA
C - - - - - 0x001520 00:D510: 49 FF     EOR #$FF
C - - - - - 0x001522 00:D512: 69 00     ADC #$00
C - - - - - 0x001524 00:D514: 60        RTS



sub_D515:
C - - - - - 0x001525 00:D515: A9 FA     LDA #$FA
C - - - - - 0x001527 00:D517: D0 02     BNE bra_D51B    ; jmp



sub_D519:
C - - - - - 0x001529 00:D519: A9 0A     LDA #$0A
bra_D51B:
C - - - - - 0x00152B 00:D51B: 18        CLC
C - - - - - 0x00152C 00:D51C: 65 B9     ADC ram_00B9
C - - - - - 0x00152E 00:D51E: 85 0E     STA ram_000E
C - - - - - 0x001530 00:D520: A5 B8     LDA ram_00B8
C - - - - - 0x001532 00:D522: 85 12     STA ram_0012
C - - - - - 0x001534 00:D524: A9 00     LDA #$00
C - - - - - 0x001536 00:D526: 85 13     STA ram_0013
C - - - - - 0x001538 00:D528: A9 00     LDA #> $0093
C - - - - - 0x00153A 00:D52A: 85 15     STA ram_0015
C - - - - - 0x00153C 00:D52C: A9 93     LDA #< $0093
C - - - - - 0x00153E 00:D52E: 85 14     STA ram_0014
C - - - - - 0x001540 00:D530: 20 A1 C3  JSR sub_C3A1_add_16bit_to_16_bit
C - - - - - 0x001543 00:D533: A5 0E     LDA ram_000E
C - - - - - 0x001545 00:D535: 49 80     EOR #$80
C - - - - - 0x001547 00:D537: 85 A4     STA ram_00A4
C - - - - - 0x001549 00:D539: 10 05     BPL bra_D540
C - - - - - 0x00154B 00:D53B: 49 FF     EOR #$FF
C - - - - - 0x00154D 00:D53D: 38        SEC
C - - - - - 0x00154E 00:D53E: 69 00     ADC #$00
bra_D540:
C - - - - - 0x001550 00:D540: 85 99     STA ram_0099
C - - - - - 0x001552 00:D542: A9 00     LDA #$00
C - - - - - 0x001554 00:D544: 85 98     STA ram_0098
C - - - - - 0x001556 00:D546: A9 B3     LDA #$B3
C - - - - - 0x001558 00:D548: 85 9C     STA ram_009C
C - - - - - 0x00155A 00:D54A: A9 0F     LDA #$0F
C - - - - - 0x00155C 00:D54C: 85 9B     STA ram_009B
C - - - - - 0x00155E 00:D54E: 20 2B C6  JSR sub_C62B
C - - - - - 0x001561 00:D551: A5 15     LDA ram_0015
C - - - - - 0x001563 00:D553: 85 98     STA ram_0098
C - - - - - 0x001565 00:D555: A5 14     LDA ram_0014
C - - - - - 0x001567 00:D557: 85 99     STA ram_0099
C - - - - - 0x001569 00:D559: 20 84 C6  JSR sub_C684
C - - - - - 0x00156C 00:D55C: A5 A4     LDA ram_00A4
C - - - - - 0x00156E 00:D55E: 10 03     BPL bra_D563
C - - - - - 0x001570 00:D560: 20 F3 C6  JSR sub_C6F3
bra_D563:
C - - - - - 0x001573 00:D563: A5 9B     LDA ram_009B
C - - - - - 0x001575 00:D565: 18        CLC
C - - - - - 0x001576 00:D566: 69 10     ADC #$10
C - - - - - 0x001578 00:D568: 85 BD     STA ram_00BD
C - - - - - 0x00157A 00:D56A: A5 9C     LDA ram_009C
C - - - - - 0x00157C 00:D56C: 85 BC     STA ram_00BC
C - - - - - 0x00157E 00:D56E: 60        RTS



sub_D56F:
C - - - - - 0x00157F 00:D56F: A5 14     LDA ram_0014
C - - - - - 0x001581 00:D571: 38        SEC
C - - - - - 0x001582 00:D572: E5 12     SBC ram_0012
C - - - - - 0x001584 00:D574: 85 14     STA ram_0014
C - - - - - 0x001586 00:D576: A5 15     LDA ram_0015
C - - - - - 0x001588 00:D578: E5 13     SBC ram_0013
C - - - - - 0x00158A 00:D57A: 85 15     STA ram_0015
C - - - - - 0x00158C 00:D57C: 60        RTS



bra_D57D:
C - - - - - 0x00158D 00:D57D: 4C 92 CD  JMP loc_CD92
sub_D580:
C - - - - - 0x001590 00:D580: A5 AB     LDA ram_00AB
C - - - - - 0x001592 00:D582: F0 F9     BEQ bra_D57D
C - - - - - 0x001594 00:D584: A5 8D     LDA ram_008D
C - - - - - 0x001596 00:D586: 29 02     AND #$02
C - - - - - 0x001598 00:D588: D0 F3     BNE bra_D57D
C - - - - - 0x00159A 00:D58A: A5 C0     LDA ram_00C0
C - - - - - 0x00159C 00:D58C: 29 F3     AND #$F3
C - - - - - 0x00159E 00:D58E: 85 C0     STA ram_00C0
C - - - - - 0x0015A0 00:D590: A5 26     LDA ram_0026
C - - - - - 0x0015A2 00:D592: C9 01     CMP #$01
C - - - - - 0x0015A4 00:D594: F0 0E     BEQ bra_D5A4
C - - - - - 0x0015A6 00:D596: A5 8C     LDA ram_serve_status_1
C - - - - - 0x0015A8 00:D598: F0 6F     BEQ bra_D609_holding_the_ball
C - - - - - 0x0015AA 00:D59A: C9 01     CMP #$01
C - - - - - 0x0015AC 00:D59C: F0 2B     BEQ bra_D5C9_tossing_the_ball_up
C - - - - - 0x0015AE 00:D59E: C9 02     CMP #$02
C - - - - - 0x0015B0 00:D5A0: F0 4E     BEQ bra_D5F0_racket_swing_start
C - - - - - 0x0015B2 00:D5A2: D0 D9     BNE bra_D57D    ; jmp racket swing in process
bra_D5A4:
C - - - - - 0x0015B4 00:D5A4: A9 15     LDA #$15
C - - - - - 0x0015B6 00:D5A6: 85 26     STA ram_0026
C - - - - - 0x0015B8 00:D5A8: A9 01     LDA #$01    ; tossing the ball up
C - - - - - 0x0015BA 00:D5AA: 85 8C     STA ram_serve_status_1
C - - - - - 0x0015BC 00:D5AC: A9 13     LDA #$13
C - - - - - 0x0015BE 00:D5AE: 85 6C     STA ram_006C
C - - - - - 0x0015C0 00:D5B0: A9 12     LDA #$12
C - - - - - 0x0015C2 00:D5B2: 85 B6     STA ram_00B6
C - - - - - 0x0015C4 00:D5B4: 20 19 D5  JSR sub_D519
C - - - - - 0x0015C7 00:D5B7: A2 00     LDX #$00
C - - - - - 0x0015C9 00:D5B9: A5 B9     LDA ram_00B9
C - - - - - 0x0015CB 00:D5BB: 49 7F     EOR #$7F
C - - - - - 0x0015CD 00:D5BD: 10 01     BPL bra_D5C0
C - - - - - 0x0015CF 00:D5BF: CA        DEX
bra_D5C0:
C - - - - - 0x0015D0 00:D5C0: 65 BC     ADC ram_00BC
C - - - - - 0x0015D2 00:D5C2: 85 63     STA ram_0063
C - - - - - 0x0015D4 00:D5C4: 8A        TXA
C - - - - - 0x0015D5 00:D5C5: 65 BD     ADC ram_00BD
C - - - - - 0x0015D7 00:D5C7: 85 64     STA ram_0064
bra_D5C9_tossing_the_ball_up:
C - - - - - 0x0015D9 00:D5C9: A5 C0     LDA ram_00C0
C - - - - - 0x0015DB 00:D5CB: 29 F0     AND #$F0
C - - - - - 0x0015DD 00:D5CD: 85 C0     STA ram_00C0
C - - - - - 0x0015DF 00:D5CF: A5 6C     LDA ram_006C
C - - - - - 0x0015E1 00:D5D1: 10 06     BPL bra_D5D9
C - - - - - 0x0015E3 00:D5D3: A5 6F     LDA ram_006F
C - - - - - 0x0015E5 00:D5D5: C9 64     CMP #$64
C - - - - - 0x0015E7 00:D5D7: 90 28     BCC bra_D601
bra_D5D9:
C - - - - - 0x0015E9 00:D5D9: A5 C0     LDA ram_00C0
C - - - - - 0x0015EB 00:D5DB: 29 80     AND #$80
C - - - - - 0x0015ED 00:D5DD: F0 41     BEQ bra_D620_RTS
C - - - - - 0x0015EF 00:D5DF: A9 17     LDA #$17
C - - - - - 0x0015F1 00:D5E1: 85 B4     STA ram_00B4
C - - - - - 0x0015F3 00:D5E3: E6 8C     INC ram_serve_status_1
C - - - - - 0x0015F5 00:D5E5: A9 B7     LDA #$B7
C - - - - - 0x0015F7 00:D5E7: 85 B5     STA ram_00B5
C - - - - - 0x0015F9 00:D5E9: A9 01     LDA #$01
C - - - - - 0x0015FB 00:D5EB: 85 B3     STA ram_00B3
C - - - - - 0x0015FD 00:D5ED: 4C FD D5  JMP loc_D5FD
bra_D5F0_racket_swing_start:
C - - - - - 0x001600 00:D5F0: A5 B4     LDA ram_00B4
C - - - - - 0x001602 00:D5F2: F0 89     BEQ bra_D57D
C - - - - - 0x001604 00:D5F4: C9 10     CMP #$10
C - - - - - 0x001606 00:D5F6: D0 05     BNE bra_D5FD
C - - - - - 0x001608 00:D5F8: E6 8C     INC ram_serve_status_1
C - - - - - 0x00160A 00:D5FA: 20 C6 D6  JSR sub_D6C6
bra_D5FD:
loc_D5FD:
C D 2 - - - 0x00160D 00:D5FD: 20 7D D2  JSR sub_D27D
C - - - - - 0x001610 00:D600: 60        RTS
bra_D601:
C - - - - - 0x001611 00:D601: A9 00     LDA #$00    ; holding the ball
C - - - - - 0x001613 00:D603: 85 8C     STA ram_serve_status_1
C - - - - - 0x001615 00:D605: A9 11     LDA #$11
C - - - - - 0x001617 00:D607: 85 B6     STA ram_00B6
bra_D609_holding_the_ball:
C - - - - - 0x001619 00:D609: 20 19 D5  JSR sub_D519
C - - - - - 0x00161C 00:D60C: A5 BC     LDA ram_00BC
C - - - - - 0x00161E 00:D60E: 85 63     STA ram_0063
C - - - - - 0x001620 00:D610: A5 BD     LDA ram_00BD
C - - - - - 0x001622 00:D612: 85 64     STA ram_0064
C - - - - - 0x001624 00:D614: A9 78     LDA #$78
C - - - - - 0x001626 00:D616: 85 6D     STA ram_006D
C - - - - - 0x001628 00:D618: A9 01     LDA #$01
C - - - - - 0x00162A 00:D61A: 85 6E     STA ram_006E
C - - - - - 0x00162C 00:D61C: A9 00     LDA #$00
C - - - - - 0x00162E 00:D61E: 85 6C     STA ram_006C
bra_D620_RTS:
C - - - - - 0x001630 00:D620: 60        RTS



sub_D621:
C - - - - - 0x001631 00:D621: A5 AB     LDA ram_00AB
C - - - - - 0x001633 00:D623: F0 06     BEQ bra_D62B
C - - - - - 0x001635 00:D625: A5 8D     LDA ram_008D
C - - - - - 0x001637 00:D627: 29 02     AND #$02
C - - - - - 0x001639 00:D629: D0 0F     BNE bra_D63A
bra_D62B:
C - - - - - 0x00163B 00:D62B: A9 00     LDA #$00
C - - - - - 0x00163D 00:D62D: 85 CA     STA ram_00CA
C - - - - - 0x00163F 00:D62F: A9 01     LDA #$01
C - - - - - 0x001641 00:D631: 85 CB     STA ram_00CB
C - - - - - 0x001643 00:D633: 20 11 DC  JSR sub_DC11
C - - - - - 0x001646 00:D636: 20 A5 D2  JSR sub_D2A5
C - - - - - 0x001649 00:D639: 60        RTS
bra_D63A:
C - - - - - 0x00164A 00:D63A: A5 26     LDA ram_0026
C - - - - - 0x00164C 00:D63C: C9 01     CMP #$01
C - - - - - 0x00164E 00:D63E: D0 25     BNE bra_D665
C - - - - - 0x001650 00:D640: A9 40     LDA #$40
C - - - - - 0x001652 00:D642: 85 26     STA ram_0026
C - - - - - 0x001654 00:D644: A9 13     LDA #$13
C - - - - - 0x001656 00:D646: 85 6C     STA ram_006C
C - - - - - 0x001658 00:D648: A9 01     LDA #$01    ; tossing the ball up
C - - - - - 0x00165A 00:D64A: 85 8C     STA ram_serve_status_1
C - - - - - 0x00165C 00:D64C: A9 2A     LDA #$2A
C - - - - - 0x00165E 00:D64E: 85 B6     STA ram_00B6
C - - - - - 0x001660 00:D650: 20 15 D5  JSR sub_D515
C - - - - - 0x001663 00:D653: A2 00     LDX #$00
C - - - - - 0x001665 00:D655: A5 B9     LDA ram_00B9
C - - - - - 0x001667 00:D657: 49 7F     EOR #$7F
C - - - - - 0x001669 00:D659: 10 01     BPL bra_D65C
C - - - - - 0x00166B 00:D65B: CA        DEX
bra_D65C:
C - - - - - 0x00166C 00:D65C: 65 BC     ADC ram_00BC
C - - - - - 0x00166E 00:D65E: 85 63     STA ram_0063
C - - - - - 0x001670 00:D660: 8A        TXA
C - - - - - 0x001671 00:D661: 65 BD     ADC ram_00BD
C - - - - - 0x001673 00:D663: 85 64     STA ram_0064
bra_D665:
C - - - - - 0x001675 00:D665: A5 8C     LDA ram_serve_status_1
C - - - - - 0x001677 00:D667: F0 33     BEQ bra_D69C_holding_the_ball
C - - - - - 0x001679 00:D669: A9 00     LDA #$00
C - - - - - 0x00167B 00:D66B: 85 C0     STA ram_00C0
C - - - - - 0x00167D 00:D66D: A5 B4     LDA ram_00B4
C - - - - - 0x00167F 00:D66F: D0 23     BNE bra_D694
C - - - - - 0x001681 00:D671: A5 26     LDA ram_0026
C - - - - - 0x001683 00:D673: C9 39     CMP #$39
C - - - - - 0x001685 00:D675: F0 0B     BEQ bra_D682
C - - - - - 0x001687 00:D677: C9 3A     CMP #$3A
C - - - - - 0x001689 00:D679: D0 20     BNE bra_D69B_RTS
C - - - - - 0x00168B 00:D67B: AD 01 05  LDA ram_random + 1
C - - - - - 0x00168E 00:D67E: 29 03     AND #$03
C - - - - - 0x001690 00:D680: D0 19     BNE bra_D69B_RTS
bra_D682:
C - - - - - 0x001692 00:D682: E6 8C     INC ram_serve_status_1
C - - - - - 0x001694 00:D684: A9 17     LDA #$17
C - - - - - 0x001696 00:D686: 85 B4     STA ram_00B4
C - - - - - 0x001698 00:D688: A9 60     LDA #$60
C - - - - - 0x00169A 00:D68A: 85 B5     STA ram_00B5
C - - - - - 0x00169C 00:D68C: A9 01     LDA #$01
C - - - - - 0x00169E 00:D68E: 85 B3     STA ram_00B3
bra_D690:
C - - - - - 0x0016A0 00:D690: 20 A5 D2  JSR sub_D2A5
C - - - - - 0x0016A3 00:D693: 60        RTS
bra_D694:
C - - - - - 0x0016A4 00:D694: C9 10     CMP #$10
C - - - - - 0x0016A6 00:D696: D0 F8     BNE bra_D690
C - - - - - 0x0016A8 00:D698: 20 08 D7  JSR sub_D708
bra_D69B_RTS:
C - - - - - 0x0016AB 00:D69B: 60        RTS
bra_D69C_holding_the_ball:
C - - - - - 0x0016AC 00:D69C: A5 20     LDA ram_0020
C - - - - - 0x0016AE 00:D69E: F0 07     BEQ bra_D6A7
C - - - - - 0x0016B0 00:D6A0: AD 02 05  LDA ram_random + 2
C - - - - - 0x0016B3 00:D6A3: 29 70     AND #$70
C - - - - - 0x0016B5 00:D6A5: D0 07     BNE bra_D6AE
bra_D6A7:
C - - - - - 0x0016B7 00:D6A7: AD 03 05  LDA ram_random + 3
C - - - - - 0x0016BA 00:D6AA: 29 03     AND #$03
C - - - - - 0x0016BC 00:D6AC: 85 C0     STA ram_00C0
bra_D6AE:
C - - - - - 0x0016BE 00:D6AE: 20 15 D5  JSR sub_D515
C - - - - - 0x0016C1 00:D6B1: A5 BC     LDA ram_00BC
C - - - - - 0x0016C3 00:D6B3: 85 63     STA ram_0063
C - - - - - 0x0016C5 00:D6B5: A5 BD     LDA ram_00BD
C - - - - - 0x0016C7 00:D6B7: 85 64     STA ram_0064
C - - - - - 0x0016C9 00:D6B9: A9 40     LDA #$40
C - - - - - 0x0016CB 00:D6BB: 85 6D     STA ram_006D
C - - - - - 0x0016CD 00:D6BD: A9 01     LDA #$01
C - - - - - 0x0016CF 00:D6BF: 85 6E     STA ram_006E
C - - - - - 0x0016D1 00:D6C1: A9 00     LDA #$00
C - - - - - 0x0016D3 00:D6C3: 85 6C     STA ram_006C
C - - - - - 0x0016D5 00:D6C5: 60        RTS



sub_D6C6:
C - - - - - 0x0016D6 00:D6C6: A0 00     LDY #$00
C - - - - - 0x0016D8 00:D6C8: A2 01     LDX #$01
C - - - - - 0x0016DA 00:D6CA: A5 6F     LDA ram_006F
C - - - - - 0x0016DC 00:D6CC: C9 68     CMP #$68
C - - - - - 0x0016DE 00:D6CE: 90 33     BCC bra_D703
C - - - - - 0x0016E0 00:D6D0: C9 B8     CMP #$B8
C - - - - - 0x0016E2 00:D6D2: B0 2F     BCS bra_D703
C - - - - - 0x0016E4 00:D6D4: C9 78     CMP #$78
C - - - - - 0x0016E6 00:D6D6: 90 0C     BCC bra_D6E4
C - - - - - 0x0016E8 00:D6D8: C8        INY
C - - - - - 0x0016E9 00:D6D9: C9 90     CMP #$90
C - - - - - 0x0016EB 00:D6DB: 90 07     BCC bra_D6E4
C - - - - - 0x0016ED 00:D6DD: C8        INY
C - - - - - 0x0016EE 00:D6DE: CA        DEX
C - - - - - 0x0016EF 00:D6DF: C9 A8     CMP #$A8
C - - - - - 0x0016F1 00:D6E1: 90 01     BCC bra_D6E4
C - - - - - 0x0016F3 00:D6E3: C8        INY
bra_D6E4:
C - - - - - 0x0016F4 00:D6E4: 20 3A D7  JSR sub_D73A
C - - - - - 0x0016F7 00:D6E7: A5 6F     LDA ram_006F
C - - - - - 0x0016F9 00:D6E9: C9 AC     CMP #$AC
C - - - - - 0x0016FB 00:D6EB: B0 15     BCS bra_D702_RTS
C - - - - - 0x0016FD 00:D6ED: A9 A5     LDA #$A5
C - - - - - 0x0016FF 00:D6EF: A4 6C     LDY ram_006C
C - - - - - 0x001701 00:D6F1: 10 02     BPL bra_D6F5
C - - - - - 0x001703 00:D6F3: A9 A0     LDA #$A0
bra_D6F5:
C - - - - - 0x001705 00:D6F5: C5 6F     CMP ram_006F
C - - - - - 0x001707 00:D6F7: B0 09     BCS bra_D702_RTS
C - - - - - 0x001709 00:D6F9: A9 01     LDA #$01
C - - - - - 0x00170B 00:D6FB: 8D 5E 03  STA ram_035E
C - - - - - 0x00170E 00:D6FE: A9 02     LDA #$02
C - - - - - 0x001710 00:D700: 85 85     STA ram_0085
bra_D702_RTS:
C - - - - - 0x001712 00:D702: 60        RTS
bra_D703:
C - - - - - 0x001713 00:D703: A9 50     LDA #$50
C - - - - - 0x001715 00:D705: 85 26     STA ram_0026
C - - - - - 0x001717 00:D707: 60        RTS



sub_D708:
C - - - - - 0x001718 00:D708: A0 04     LDY #$04
C - - - - - 0x00171A 00:D70A: A2 00     LDX #$00
C - - - - - 0x00171C 00:D70C: 20 56 C4  JSR sub_C456_roll_rng
C - - - - - 0x00171F 00:D70F: C9 10     CMP #$10
C - - - - - 0x001721 00:D711: 90 0C     BCC bra_D71F
C - - - - - 0x001723 00:D713: C8        INY
C - - - - - 0x001724 00:D714: C9 80     CMP #$80
C - - - - - 0x001726 00:D716: 90 07     BCC bra_D71F
C - - - - - 0x001728 00:D718: C8        INY
C - - - - - 0x001729 00:D719: C9 F4     CMP #$F4
C - - - - - 0x00172B 00:D71B: 90 02     BCC bra_D71F
C - - - - - 0x00172D 00:D71D: C8        INY
C - - - - - 0x00172E 00:D71E: E8        INX
bra_D71F:
C - - - - - 0x00172F 00:D71F: 20 3A D7  JSR sub_D73A
C - - - - - 0x001732 00:D722: AD 01 05  LDA ram_random + 1
C - - - - - 0x001735 00:D725: A4 4C     LDY ram_level
C - - - - - 0x001737 00:D727: D9 35 D7  CMP tbl_D735,Y
C - - - - - 0x00173A 00:D72A: B0 08     BCS bra_D734_RTS
C - - - - - 0x00173C 00:D72C: A9 02     LDA #$02
C - - - - - 0x00173E 00:D72E: 85 85     STA ram_0085
C - - - - - 0x001740 00:D730: A9 0E     LDA #$0E
C - - - - - 0x001742 00:D732: 85 83     STA ram_0083
bra_D734_RTS:
C - - - - - 0x001744 00:D734: 60        RTS



tbl_D735:
- D 2 - - - 0x001745 00:D735: 18        .byte $18   ; 00
- - - - - - 0x001746 00:D736: 28        .byte $28   ; 01
- - - - - - 0x001747 00:D737: 38        .byte $38   ; 02
- - - - - - 0x001748 00:D738: 50        .byte $50   ; 03
- D 2 - - - 0x001749 00:D739: 60        .byte $60   ; 04



sub_D73A:
C - - - - - 0x00174A 00:D73A: 98        TYA
C - - - - - 0x00174B 00:D73B: 0A        ASL
C - - - - - 0x00174C 00:D73C: A8        TAY
C - - - - - 0x00174D 00:D73D: B9 80 D7  LDA tbl_D780,Y
C - - - - - 0x001750 00:D740: 85 82     STA ram_0082
C - - - - - 0x001752 00:D742: B9 81 D7  LDA tbl_D780 + 1,Y
C - - - - - 0x001755 00:D745: 85 83     STA ram_0083
C - - - - - 0x001757 00:D747: 86 85     STX ram_0085
C - - - - - 0x001759 00:D749: A9 03     LDA #$03
C - - - - - 0x00175B 00:D74B: 85 84     STA ram_0084
C - - - - - 0x00175D 00:D74D: A2 00     LDX #$00
C - - - - - 0x00175F 00:D74F: 86 15     STX ram_0015
C - - - - - 0x001761 00:D751: 20 56 C4  JSR sub_C456_roll_rng
C - - - - - 0x001764 00:D754: 85 14     STA ram_0014
C - - - - - 0x001766 00:D756: 20 56 C4  JSR sub_C456_roll_rng
C - - - - - 0x001769 00:D759: 65 14     ADC ram_0014
C - - - - - 0x00176B 00:D75B: 26 15     ROL ram_0015
C - - - - - 0x00176D 00:D75D: 85 14     STA ram_0014
C - - - - - 0x00176F 00:D75F: A2 50     LDX #$50
C - - - - - 0x001771 00:D761: A0 0D     LDY #$0D
C - - - - - 0x001773 00:D763: A5 8D     LDA ram_008D
C - - - - - 0x001775 00:D765: 29 01     AND #$01
C - - - - - 0x001777 00:D767: D0 04     BNE bra_D76D
C - - - - - 0x001779 00:D769: A2 D0     LDX #$D0
C - - - - - 0x00177B 00:D76B: A0 10     LDY #$10
bra_D76D:
C - - - - - 0x00177D 00:D76D: 8A        TXA
C - - - - - 0x00177E 00:D76E: 65 14     ADC ram_0014
C - - - - - 0x001780 00:D770: 85 80     STA ram_0080
C - - - - - 0x001782 00:D772: 98        TYA
C - - - - - 0x001783 00:D773: 65 15     ADC ram_0015
C - - - - - 0x001785 00:D775: 85 81     STA ram_0081
C - - - - - 0x001787 00:D777: A9 01     LDA #$01
C - - - - - 0x001789 00:D779: 85 86     STA ram_0086
C - - - - - 0x00178B 00:D77B: A5 AB     LDA ram_00AB
C - - - - - 0x00178D 00:D77D: 85 40     STA ram_0040
C - - - - - 0x00178F 00:D77F: 60        RTS



tbl_D780:
; 00
- - - - - - 0x001790 00:D780: 00        .byte $00   ; 
- - - - - - 0x001791 00:D781: 13        .byte $13   ; 
; 01
- D 2 - - - 0x001792 00:D782: D0        .byte $D0   ; 
- D 2 - - - 0x001793 00:D783: 14        .byte $14   ; 
; 02
- D 2 - - - 0x001794 00:D784: 00        .byte $00   ; 
- D 2 - - - 0x001795 00:D785: 16        .byte $16   ; 
; 03
- D 2 - - - 0x001796 00:D786: 00        .byte $00   ; 
- D 2 - - - 0x001797 00:D787: 18        .byte $18   ; 
; 04
- D 2 - - - 0x001798 00:D788: 80        .byte $80   ; 
- D 2 - - - 0x001799 00:D789: 0C        .byte $0C   ; 
; 05
- D 2 - - - 0x00179A 00:D78A: 00        .byte $00   ; 
- D 2 - - - 0x00179B 00:D78B: 0E        .byte $0E   ; 
; 06
- D 2 - - - 0x00179C 00:D78C: C0        .byte $C0   ; 
- D 2 - - - 0x00179D 00:D78D: 0E        .byte $0E   ; 
; 07
- D 2 - - - 0x00179E 00:D78E: 00        .byte $00   ; 
- D 2 - - - 0x00179F 00:D78F: 10        .byte $10   ; 



sub_D790:
C - - - - - 0x0017A0 00:D790: 24 8D     BIT ram_008D
C - - - - - 0x0017A2 00:D792: 10 4C     BPL bra_D7E0_RTS
C - - - - - 0x0017A4 00:D794: A2 06     LDX #$06
C - - - - - 0x0017A6 00:D796: AC 09 03  LDY ram_pos_X_p1
C - - - - - 0x0017A9 00:D799: A5 8D     LDA ram_008D
C - - - - - 0x0017AB 00:D79B: 29 02     AND #$02
C - - - - - 0x0017AD 00:D79D: F0 05     BEQ bra_D7A4
C - - - - - 0x0017AF 00:D79F: A2 F6     LDX #$F6
C - - - - - 0x0017B1 00:D7A1: AC 49 03  LDY ram_pos_X_p3
bra_D7A4:
C - - - - - 0x0017B4 00:D7A4: 86 15     STX ram_0015
C - - - - - 0x0017B6 00:D7A6: 98        TYA
C - - - - - 0x0017B7 00:D7A7: 18        CLC
C - - - - - 0x0017B8 00:D7A8: 65 15     ADC ram_0015
C - - - - - 0x0017BA 00:D7AA: AE 8A 03  LDX ram_index_oam
C - - - - - 0x0017BD 00:D7AD: A4 8C     LDY ram_serve_status_1
C - - - - - 0x0017BF 00:D7AF: F0 06     BEQ bra_D7B7_holding_the_ball
C - - - - - 0x0017C1 00:D7B1: C0 01     CPY #$01
C - - - - - 0x0017C3 00:D7B3: F0 05     BEQ bra_D7BA_tossing_the_ball_up
C - - - - - 0x0017C5 00:D7B5: D0 06     BNE bra_D7BD_racket_swing    ; jmp
bra_D7B7_holding_the_ball:
C - - - - - 0x0017C7 00:D7B7: 9D 03 02  STA ram_spr_X,X
bra_D7BA_tossing_the_ball_up:
C - - - - - 0x0017CA 00:D7BA: 9D 07 02  STA ram_spr_X + $04,X
bra_D7BD_racket_swing:
C - - - - - 0x0017CD 00:D7BD: A6 86     LDX ram_0086
C - - - - - 0x0017CF 00:D7BF: F0 1F     BEQ bra_D7E0_RTS
C - - - - - 0x0017D1 00:D7C1: A5 8D     LDA ram_008D
C - - - - - 0x0017D3 00:D7C3: 29 7F     AND #$7F
C - - - - - 0x0017D5 00:D7C5: 85 8D     STA ram_008D
C - - - - - 0x0017D7 00:D7C7: A9 F0     LDA #$F0
C - - - - - 0x0017D9 00:D7C9: 8D 14 03  STA ram_0314
C - - - - - 0x0017DC 00:D7CC: A9 10     LDA #$10
C - - - - - 0x0017DE 00:D7CE: 8D 15 03  STA ram_0315
C - - - - - 0x0017E1 00:D7D1: A9 D0     LDA #$D0
C - - - - - 0x0017E3 00:D7D3: 8D 54 03  STA ram_0354
C - - - - - 0x0017E6 00:D7D6: A9 30     LDA #$30
C - - - - - 0x0017E8 00:D7D8: 8D 55 03  STA ram_0355
C - - - - - 0x0017EB 00:D7DB: A9 00     LDA #$00
C - - - - - 0x0017ED 00:D7DD: 8D 7B 03  STA ram_037B
bra_D7E0_RTS:
C - - - - - 0x0017F0 00:D7E0: 60        RTS



sub_D7E1:
C - - - - - 0x0017F1 00:D7E1: A9 0A     LDA #$0A
C - - - - - 0x0017F3 00:D7E3: 85 26     STA ram_0026
C - - - - - 0x0017F5 00:D7E5: A5 8D     LDA ram_008D
C - - - - - 0x0017F7 00:D7E7: 09 C0     ORA #$C0
C - - - - - 0x0017F9 00:D7E9: 85 8D     STA ram_008D
C - - - - - 0x0017FB 00:D7EB: A9 10     LDA #$10
C - - - - - 0x0017FD 00:D7ED: 85 64     STA ram_0064
C - - - - - 0x0017FF 00:D7EF: A9 01     LDA #$01
C - - - - - 0x001801 00:D7F1: 85 6E     STA ram_006E
C - - - - - 0x001803 00:D7F3: A2 0A     LDX #$0A
C - - - - - 0x001805 00:D7F5: A0 00     LDY #$00
C - - - - - 0x001807 00:D7F7: A5 8D     LDA ram_008D
C - - - - - 0x001809 00:D7F9: 29 02     AND #$02
C - - - - - 0x00180B 00:D7FB: F0 04     BEQ bra_D801
C - - - - - 0x00180D 00:D7FD: A2 1A     LDX #$1A
C - - - - - 0x00180F 00:D7FF: A0 C0     LDY #$C0
bra_D801:
C - - - - - 0x001811 00:D801: 86 69     STX ram_0069
C - - - - - 0x001813 00:D803: 84 68     STY ram_0068
C - - - - - 0x001815 00:D805: A5 8D     LDA ram_008D
C - - - - - 0x001817 00:D807: 29 03     AND #$03
C - - - - - 0x001819 00:D809: 0A        ASL
C - - - - - 0x00181A 00:D80A: 0A        ASL
C - - - - - 0x00181B 00:D80B: 0A        ASL
C - - - - - 0x00181C 00:D80C: A8        TAY
C - - - - - 0x00181D 00:D80D: B9 89 D8  LDA tbl_D889,Y
C - - - - - 0x001820 00:D810: 8D 09 03  STA ram_pos_X_p1
C - - - - - 0x001823 00:D813: B9 8A D8  LDA tbl_D889 + 1,Y
C - - - - - 0x001826 00:D816: 8D 29 03  STA ram_pos_X_p2
C - - - - - 0x001829 00:D819: B9 8B D8  LDA tbl_D889 + 2,Y
C - - - - - 0x00182C 00:D81C: 8D 49 03  STA ram_pos_X_p3
C - - - - - 0x00182F 00:D81F: B9 8C D8  LDA tbl_D889 + 3,Y
C - - - - - 0x001832 00:D822: 8D 69 03  STA ram_pos_X_p4
C - - - - - 0x001835 00:D825: A5 8D     LDA ram_008D
C - - - - - 0x001837 00:D827: 29 02     AND #$02
C - - - - - 0x001839 00:D829: D0 0F     BNE bra_D83A
C - - - - - 0x00183B 00:D82B: B9 8D D8  LDA tbl_D889 + 4,Y
C - - - - - 0x00183E 00:D82E: 8D 14 03  STA ram_0314
C - - - - - 0x001841 00:D831: B9 8E D8  LDA tbl_D889 + 5,Y
C - - - - - 0x001844 00:D834: 8D 15 03  STA ram_0315
C - - - - - 0x001847 00:D837: 4C 4C D8  JMP loc_D84C
bra_D83A:
C - - - - - 0x00184A 00:D83A: B9 8D D8  LDA tbl_D889 + 4,Y
C - - - - - 0x00184D 00:D83D: 8D 54 03  STA ram_0354
C - - - - - 0x001850 00:D840: B9 8E D8  LDA tbl_D889 + 5,Y
C - - - - - 0x001853 00:D843: 8D 55 03  STA ram_0355
C - - - - - 0x001856 00:D846: B9 8F D8  LDA tbl_D889 + 6,Y
C - - - - - 0x001859 00:D849: 8D 08 03  STA ram_pos_Y_p1
loc_D84C:
C D 2 - - - 0x00185C 00:D84C: A0 01     LDY #$01
C - - - - - 0x00185E 00:D84E: A5 8D     LDA ram_008D
C - - - - - 0x001860 00:D850: 29 02     AND #$02
C - - - - - 0x001862 00:D852: F0 0C     BEQ bra_D860
C - - - - - 0x001864 00:D854: A0 02     LDY #$02
C - - - - - 0x001866 00:D856: A9 10     LDA #$10
C - - - - - 0x001868 00:D858: 8D 15 03  STA ram_0315
C - - - - - 0x00186B 00:D85B: A9 F0     LDA #$F0
C - - - - - 0x00186D 00:D85D: 8D 14 03  STA ram_0314
bra_D860:
C - - - - - 0x001870 00:D860: 84 73     STY ram_0073
C - - - - - 0x001872 00:D862: A9 E8     LDA #$E8
C - - - - - 0x001874 00:D864: 85 6A     STA ram_006A
C - - - - - 0x001876 00:D866: A9 80     LDA #$80
C - - - - - 0x001878 00:D868: 85 71     STA ram_0071
C - - - - - 0x00187A 00:D86A: A9 00     LDA #$00
C - - - - - 0x00187C 00:D86C: 85 61     STA ram_0061
C - - - - - 0x00187E 00:D86E: 85 62     STA ram_0062
C - - - - - 0x001880 00:D870: 85 66     STA ram_0066
C - - - - - 0x001882 00:D872: 85 67     STA ram_0067
C - - - - - 0x001884 00:D874: 85 6B     STA ram_006B
C - - - - - 0x001886 00:D876: 85 6C     STA ram_006C
C - - - - - 0x001888 00:D878: 85 8C     STA ram_serve_status_1
C - - - - - 0x00188A 00:D87A: 85 86     STA ram_0086
C - - - - - 0x00188C 00:D87C: 85 79     STA ram_mario_message
C - - - - - 0x00188E 00:D87E: 85 72     STA ram_0072
C - - - - - 0x001890 00:D880: 85 8E     STA ram_serve_status_2
C - - - - - 0x001892 00:D882: 85 8F     STA ram_008F
C - - - - - 0x001894 00:D884: 85 24     STA ram_0024
C - - - - - 0x001896 00:D886: 85 7B     STA ram_007B
C - - - - - 0x001898 00:D888: 60        RTS



tbl_D889:
; 00
- D 2 - - - 0x001899 00:D889: 58        .byte $58   ; 
- D 2 - - - 0x00189A 00:D88A: A8        .byte $A8   ; 
- D 2 - - - 0x00189B 00:D88B: 98        .byte $98   ; 
- D 2 - - - 0x00189C 00:D88C: 64        .byte $64   ; 
- D 2 - - - 0x00189D 00:D88D: 78        .byte $78   ; 
- D 2 - - - 0x00189E 00:D88E: 40        .byte $40   ; 
- - - - - - 0x00189F 00:D88F: 00        .byte $00   ; 
- - - - - - 0x0018A0 00:D890: 00        .byte $00   ; unused
; 01
- D 2 - - - 0x0018A1 00:D891: A8        .byte $A8   ; 
- D 2 - - - 0x0018A2 00:D892: 58        .byte $58   ; 
- D 2 - - - 0x0018A3 00:D893: 68        .byte $68   ; 
- D 2 - - - 0x0018A4 00:D894: 98        .byte $98   ; 
- D 2 - - - 0x0018A5 00:D895: C0        .byte $C0   ; 
- D 2 - - - 0x0018A6 00:D896: 88        .byte $88   ; 
- - - - - - 0x0018A7 00:D897: 00        .byte $00   ; 
- - - - - - 0x0018A8 00:D898: 00        .byte $00   ; unused
; 02
- D 2 - - - 0x0018A9 00:D899: A8        .byte $A8   ; 
- D 2 - - - 0x0018AA 00:D89A: 58        .byte $58   ; 
- D 2 - - - 0x0018AB 00:D89B: 68        .byte $68   ; 
- D 2 - - - 0x0018AC 00:D89C: 98        .byte $98   ; 
- D 2 - - - 0x0018AD 00:D89D: 7C        .byte $7C   ; 
- D 2 - - - 0x0018AE 00:D89E: 58        .byte $58   ; 
- D 2 - - - 0x0018AF 00:D89F: C8        .byte $C8   ; 
- - - - - - 0x0018B0 00:D8A0: 00        .byte $00   ; unused
; 03
- D 2 - - - 0x0018B1 00:D8A1: 58        .byte $58   ; 
- D 2 - - - 0x0018B2 00:D8A2: A8        .byte $A8   ; 
- D 2 - - - 0x0018B3 00:D8A3: 98        .byte $98   ; 
- D 2 - - - 0x0018B4 00:D8A4: 68        .byte $68   ; 
- D 2 - - - 0x0018B5 00:D8A5: A8        .byte $A8   ; 
- D 2 - - - 0x0018B6 00:D8A6: 84        .byte $84   ; 
- D 2 - - - 0x0018B7 00:D8A7: C8        .byte $C8   ; 
- - - - - - 0x0018B8 00:D8A8: 00        .byte $00   ; unused



sub_D8A9:
C - - - - - 0x0018B9 00:D8A9: A9 40     LDA #< ram_0340
C - - - - - 0x0018BB 00:D8AB: 85 A8     STA ram_00A8
C - - - - - 0x0018BD 00:D8AD: A9 03     LDA #> ram_0340
C - - - - - 0x0018BF 00:D8AF: 85 A9     STA ram_00A9
C - - - - - 0x0018C1 00:D8B1: A9 00     LDA #$00
C - - - - - 0x0018C3 00:D8B3: 85 AA     STA ram_00AA
C - - - - - 0x0018C5 00:D8B5: A9 01     LDA #$01    ; counter
C - - - - - 0x0018C7 00:D8B7: 85 AB     STA ram_00AB
bra_D8B9_loop:
C - - - - - 0x0018C9 00:D8B9: 20 F3 C1  JSR sub_C1F3
C - - - - - 0x0018CC 00:D8BC: A5 B0     LDA ram_00B0
C - - - - - 0x0018CE 00:D8BE: F0 1F     BEQ bra_D8DF
C - - - - - 0x0018D0 00:D8C0: A5 8D     LDA ram_008D
C - - - - - 0x0018D2 00:D8C2: 30 06     BMI bra_D8CA
C - - - - - 0x0018D4 00:D8C4: 20 E7 D8  JSR sub_D8E7
C - - - - - 0x0018D7 00:D8C7: 4C CD D8  JMP loc_D8CD
bra_D8CA:
C - - - - - 0x0018DA 00:D8CA: 20 21 D6  JSR sub_D621
loc_D8CD:
C D 2 - - - 0x0018DD 00:D8CD: 20 48 DA  JSR sub_DA48
C - - - - - 0x0018E0 00:D8D0: 20 32 D1  JSR sub_D132
C - - - - - 0x0018E3 00:D8D3: 20 0E D2  JSR sub_D20E
C - - - - - 0x0018E6 00:D8D6: 20 8D DC  JSR sub_DC8D
C - - - - - 0x0018E9 00:D8D9: 20 1C C2  JSR sub_C21C_sprites_handler
C - - - - - 0x0018EC 00:D8DC: 20 0E C2  JSR sub_C20E
bra_D8DF:
C - - - - - 0x0018EF 00:D8DF: 20 06 C2  JSR sub_C206
C - - - - - 0x0018F2 00:D8E2: C6 AB     DEC ram_00AB
C - - - - - 0x0018F4 00:D8E4: 10 D3     BPL bra_D8B9_loop
C - - - - - 0x0018F6 00:D8E6: 60        RTS



sub_D8E7:
C - - - - - 0x0018F7 00:D8E7: A5 87     LDA ram_0087
C - - - - - 0x0018F9 00:D8E9: C9 01     CMP #$01
C - - - - - 0x0018FB 00:D8EB: F0 03     BEQ bra_D8F0
C - - - - - 0x0018FD 00:D8ED: 4C EA D9  JMP loc_D9EA
bra_D8F0:
C - - - - - 0x001900 00:D8F0: A5 CB     LDA ram_00CB
C - - - - - 0x001902 00:D8F2: F0 24     BEQ bra_D918
C - - - - - 0x001904 00:D8F4: C6 CB     DEC ram_00CB
C - - - - - 0x001906 00:D8F6: 20 8F DF  JSR sub_DF8F
C - - - - - 0x001909 00:D8F9: A5 AB     LDA ram_00AB
C - - - - - 0x00190B 00:D8FB: D0 03     BNE bra_D900
C - - - - - 0x00190D 00:D8FD: 20 F5 DF  JSR sub_DFF5
bra_D900:
C - - - - - 0x001910 00:D900: 20 86 D4  JSR sub_D486
C - - - - - 0x001913 00:D903: A9 00     LDA #$00
C - - - - - 0x001915 00:D905: A4 C9     LDY ram_00C9
C - - - - - 0x001917 00:D907: D0 02     BNE bra_D90B
C - - - - - 0x001919 00:D909: A9 05     LDA #$05
bra_D90B:
C - - - - - 0x00191B 00:D90B: 20 21 E0  JSR sub_E021
C - - - - - 0x00191E 00:D90E: A2 10     LDX #$10
C - - - - - 0x001920 00:D910: 86 C0     STX ram_00C0
C - - - - - 0x001922 00:D912: 20 07 DA  JSR sub_DA07
C - - - - - 0x001925 00:D915: 4C 00 DA  JMP loc_DA00
bra_D918:
C - - - - - 0x001928 00:D918: A5 39     LDA ram_game_mode
C - - - - - 0x00192A 00:D91A: F0 36     BEQ bra_D952    ; if 1 player
C - - - - - 0x00192C 00:D91C: A5 C9     LDA ram_00C9
C - - - - - 0x00192E 00:D91E: D0 32     BNE bra_D952
C - - - - - 0x001930 00:D920: A5 AB     LDA ram_00AB
C - - - - - 0x001932 00:D922: D0 0A     BNE bra_D92E
C - - - - - 0x001934 00:D924: 24 8D     BIT ram_008D
C - - - - - 0x001936 00:D926: 70 1D     BVS bra_D945
C - - - - - 0x001938 00:D928: AD 48 03  LDA ram_pos_Y_p3
C - - - - - 0x00193B 00:D92B: 4C 31 D9  JMP loc_D931
bra_D92E:
C - - - - - 0x00193E 00:D92E: AD 68 03  LDA ram_pos_Y_p4
loc_D931:
C D 2 - - - 0x001941 00:D931: E9 04     SBC #$04
C - - - - - 0x001943 00:D933: C5 71     CMP ram_0071
C - - - - - 0x001945 00:D935: 90 0E     BCC bra_D945
C - - - - - 0x001947 00:D937: A0 00     LDY #$00
C - - - - - 0x001949 00:D939: 8C 59 03  STY ram_0359
C - - - - - 0x00194C 00:D93C: 8C 79 03  STY ram_0379
C - - - - - 0x00194F 00:D93F: A9 01     LDA #$01
C - - - - - 0x001951 00:D941: 85 C9     STA ram_00C9
C - - - - - 0x001953 00:D943: D0 09     BNE bra_D94E    ; jmp
bra_D945:
C - - - - - 0x001955 00:D945: 20 C7 DA  JSR sub_DAC7
C - - - - - 0x001958 00:D948: 20 6F D4  JSR sub_D46F
C - - - - - 0x00195B 00:D94B: 4C 00 DA  JMP loc_DA00
bra_D94E:
C - - - - - 0x00195E 00:D94E: A9 10     LDA #$10
C - - - - - 0x001960 00:D950: 85 C0     STA ram_00C0
bra_D952:
C - - - - - 0x001962 00:D952: A5 B4     LDA ram_00B4
C - - - - - 0x001964 00:D954: F0 03     BEQ bra_D959
C - - - - - 0x001966 00:D956: 4C CE D9  JMP loc_D9CE
bra_D959:
C - - - - - 0x001969 00:D959: A5 C3     LDA ram_00C3
C - - - - - 0x00196B 00:D95B: 85 10     STA ram_0010
C - - - - - 0x00196D 00:D95D: 20 6F D4  JSR sub_D46F
C - - - - - 0x001970 00:D960: 24 BB     BIT ram_00BB
C - - - - - 0x001972 00:D962: 10 15     BPL bra_D979
C - - - - - 0x001974 00:D964: 20 07 DA  JSR sub_DA07
C - - - - - 0x001977 00:D967: 30 10     BMI bra_D979
C - - - - - 0x001979 00:D969: A5 C3     LDA ram_00C3
C - - - - - 0x00197B 00:D96B: 30 06     BMI bra_D973
C - - - - - 0x00197D 00:D96D: C9 04     CMP #$04
C - - - - - 0x00197F 00:D96F: B0 08     BCS bra_D979
C - - - - - 0x001981 00:D971: 90 45     BCC bra_D9B8    ; jmp
bra_D973:
C - - - - - 0x001983 00:D973: C9 FC     CMP #$FC
C - - - - - 0x001985 00:D975: 90 02     BCC bra_D979
C - - - - - 0x001987 00:D977: B0 3F     BCS bra_D9B8    ; jmp
bra_D979:
C - - - - - 0x001989 00:D979: A5 C0     LDA ram_00C0
C - - - - - 0x00198B 00:D97B: F0 17     BEQ bra_D994
C - - - - - 0x00198D 00:D97D: A5 C3     LDA ram_00C3
C - - - - - 0x00198F 00:D97F: F0 06     BEQ bra_D987
C - - - - - 0x001991 00:D981: 45 10     EOR ram_0010
C - - - - - 0x001993 00:D983: 29 80     AND #$80
C - - - - - 0x001995 00:D985: F0 05     BEQ bra_D98C
bra_D987:
C - - - - - 0x001997 00:D987: A9 00     LDA #$00
C - - - - - 0x001999 00:D989: 4C 94 D9  JMP loc_D994
bra_D98C:
C - - - - - 0x00199C 00:D98C: A9 01     LDA #$01
C - - - - - 0x00199E 00:D98E: A4 C3     LDY ram_00C3
C - - - - - 0x0019A0 00:D990: 10 02     BPL bra_D994
C - - - - - 0x0019A2 00:D992: A9 02     LDA #$02
bra_D994:
loc_D994:
C D 2 - - - 0x0019A4 00:D994: A4 39     LDY ram_game_mode
C - - - - - 0x0019A6 00:D996: D0 1B     BNE bra_D9B3    ; if 2 players
C - - - - - 0x0019A8 00:D998: A4 84     LDY ram_0084
C - - - - - 0x0019AA 00:D99A: C0 04     CPY #$04
C - - - - - 0x0019AC 00:D99C: D0 15     BNE bra_D9B3
C - - - - - 0x0019AE 00:D99E: A4 B8     LDY ram_00B8
C - - - - - 0x0019B0 00:D9A0: C0 34     CPY #$34
C - - - - - 0x0019B2 00:D9A2: 90 0F     BCC bra_D9B3
C - - - - - 0x0019B4 00:D9A4: 09 08     ORA #$08
C - - - - - 0x0019B6 00:D9A6: 85 C0     STA ram_00C0
C - - - - - 0x0019B8 00:D9A8: A0 01     LDY #$01
C - - - - - 0x0019BA 00:D9AA: 84 C9     STY ram_00C9
C - - - - - 0x0019BC 00:D9AC: A9 14     LDA #$14
C - - - - - 0x0019BE 00:D9AE: 20 21 E0  JSR sub_E021
C - - - - - 0x0019C1 00:D9B1: A5 C0     LDA ram_00C0
bra_D9B3:
C - - - - - 0x0019C3 00:D9B3: 85 C0     STA ram_00C0
C - - - - - 0x0019C5 00:D9B5: 4C 00 DA  JMP loc_DA00
bra_D9B8:
C - - - - - 0x0019C8 00:D9B8: A9 00     LDA #$00
C - - - - - 0x0019CA 00:D9BA: 85 C0     STA ram_00C0
C - - - - - 0x0019CC 00:D9BC: 20 E7 DA  JSR sub_DAE7
C - - - - - 0x0019CF 00:D9BF: F0 0A     BEQ bra_D9CB
C - - - - - 0x0019D1 00:D9C1: A9 17     LDA #$17
C - - - - - 0x0019D3 00:D9C3: 85 B4     STA ram_00B4
C - - - - - 0x0019D5 00:D9C5: 20 33 DA  JSR sub_DA33
C - - - - - 0x0019D8 00:D9C8: 20 68 DA  JSR sub_DA68
bra_D9CB:
C - - - - - 0x0019DB 00:D9CB: 4C 03 DA  JMP loc_DA03
loc_D9CE:
C D 2 - - - 0x0019DE 00:D9CE: 24 BB     BIT ram_00BB
C - - - - - 0x0019E0 00:D9D0: 10 2E     BPL bra_DA00
C - - - - - 0x0019E2 00:D9D2: 20 33 DA  JSR sub_DA33
C - - - - - 0x0019E5 00:D9D5: 30 29     BMI bra_DA00
C - - - - - 0x0019E7 00:D9D7: A5 C9     LDA ram_00C9
C - - - - - 0x0019E9 00:D9D9: F0 25     BEQ bra_DA00
C - - - - - 0x0019EB 00:D9DB: 20 2D DC  JSR sub_DC2D
C - - - - - 0x0019EE 00:D9DE: 20 AB DC  JSR sub_DCAB
C - - - - - 0x0019F1 00:D9E1: 20 31 DD  JSR sub_DD31
C - - - - - 0x0019F4 00:D9E4: 20 54 DD  JSR sub_DD54
C - - - - - 0x0019F7 00:D9E7: 4C 00 DA  JMP loc_DA00
loc_D9EA:
C D 2 - - - 0x0019FA 00:D9EA: A5 CB     LDA ram_00CB
C - - - - - 0x0019FC 00:D9EC: D0 08     BNE bra_D9F6
C - - - - - 0x0019FE 00:D9EE: E6 CB     INC ram_00CB
C - - - - - 0x001A00 00:D9F0: 20 1E DB  JSR sub_DB1E
C - - - - - 0x001A03 00:D9F3: 4C 00 DA  JMP loc_DA00
bra_D9F6:
C - - - - - 0x001A06 00:D9F6: A5 B4     LDA ram_00B4
C - - - - - 0x001A08 00:D9F8: D0 06     BNE bra_DA00
C - - - - - 0x001A0A 00:D9FA: 20 A8 DA  JSR sub_DAA8
C - - - - - 0x001A0D 00:D9FD: 4C 00 DA  JMP loc_DA00
bra_DA00:
loc_DA00:
C D 2 - - - 0x001A10 00:DA00: 20 82 DB  JSR sub_DB82
loc_DA03:
C D 2 - - - 0x001A13 00:DA03: 20 A5 D2  JSR sub_D2A5
C - - - - - 0x001A16 00:DA06: 60        RTS



sub_DA07:
C - - - - - 0x001A17 00:DA07: A2 01     LDX #$01
C - - - - - 0x001A19 00:DA09: A5 B8     LDA ram_00B8
C - - - - - 0x001A1B 00:DA0B: C9 50     CMP #$50
C - - - - - 0x001A1D 00:DA0D: 90 03     BCC bra_DA12
C - - - - - 0x001A1F 00:DA0F: E8        INX
C - - - - - 0x001A20 00:DA10: D0 07     BNE bra_DA19
bra_DA12:
C - - - - - 0x001A22 00:DA12: A4 84     LDY ram_0084
C - - - - - 0x001A24 00:DA14: C0 04     CPY #$04
C - - - - - 0x001A26 00:DA16: D0 01     BNE bra_DA19
C - - - - - 0x001A28 00:DA18: CA        DEX
bra_DA19:
C - - - - - 0x001A29 00:DA19: 18        CLC
C - - - - - 0x001A2A 00:DA1A: 7D 30 DA  ADC tbl_DA30,X
C - - - - - 0x001A2D 00:DA1D: 38        SEC
C - - - - - 0x001A2E 00:DA1E: E5 71     SBC ram_0071
C - - - - - 0x001A30 00:DA20: 90 07     BCC bra_DA29
C - - - - - 0x001A32 00:DA22: 10 09     BPL bra_DA2D
- - - - - - 0x001A34 00:DA24: A9 7F     LDA #$7F
- - - - - - 0x001A36 00:DA26: 4C 2D DA  JMP loc_DA2D
bra_DA29:
C - - - - - 0x001A39 00:DA29: 30 02     BMI bra_DA2D
C - - - - - 0x001A3B 00:DA2B: A9 80     LDA #$80
bra_DA2D:
loc_DA2D:
C - - - - - 0x001A3D 00:DA2D: 85 BB     STA ram_00BB
C - - - - - 0x001A3F 00:DA2F: 60        RTS



tbl_DA30:
- D 2 - - - 0x001A40 00:DA30: 05        .byte $05   ; 00
- D 2 - - - 0x001A41 00:DA31: 06        .byte $06   ; 01
- D 2 - - - 0x001A42 00:DA32: 0B        .byte $0B   ; 02



sub_DA33:
C - - - - - 0x001A43 00:DA33: A5 B8     LDA ram_00B8
C - - - - - 0x001A45 00:DA35: 38        SEC
C - - - - - 0x001A46 00:DA36: E5 71     SBC ram_0071
C - - - - - 0x001A48 00:DA38: 90 07     BCC bra_DA41
C - - - - - 0x001A4A 00:DA3A: 10 09     BPL bra_DA45
- - - - - - 0x001A4C 00:DA3C: A9 7F     LDA #$7F
- - - - - - 0x001A4E 00:DA3E: 4C 45 DA  JMP loc_DA45
bra_DA41:
C - - - - - 0x001A51 00:DA41: 30 02     BMI bra_DA45
- - - - - - 0x001A53 00:DA43: A9 80     LDA #$80
bra_DA45:
loc_DA45:
C - - - - - 0x001A55 00:DA45: 85 BB     STA ram_00BB
C - - - - - 0x001A57 00:DA47: 60        RTS



sub_DA48:
C - - - - - 0x001A58 00:DA48: A5 86     LDA ram_0086
C - - - - - 0x001A5A 00:DA4A: 85 15     STA ram_0015
C - - - - - 0x001A5C 00:DA4C: 20 FA D0  JSR sub_D0FA
C - - - - - 0x001A5F 00:DA4F: A5 15     LDA ram_0015
C - - - - - 0x001A61 00:DA51: C9 01     CMP #$01
C - - - - - 0x001A63 00:DA53: F0 10     BEQ bra_DA65
C - - - - - 0x001A65 00:DA55: A5 86     LDA ram_0086
C - - - - - 0x001A67 00:DA57: C9 02     CMP #$02
C - - - - - 0x001A69 00:DA59: D0 0C     BNE bra_DA67_RTS
C - - - - - 0x001A6B 00:DA5B: A4 C9     LDY ram_00C9
C - - - - - 0x001A6D 00:DA5D: F0 08     BEQ bra_DA67_RTS
C - - - - - 0x001A6F 00:DA5F: A4 79     LDY ram_mario_message
C - - - - - 0x001A71 00:DA61: D0 04     BNE bra_DA67_RTS
C - - - - - 0x001A73 00:DA63: A5 15     LDA ram_0015
bra_DA65:
C - - - - - 0x001A75 00:DA65: 85 86     STA ram_0086
bra_DA67_RTS:
C - - - - - 0x001A77 00:DA67: 60        RTS



sub_DA68:
C - - - - - 0x001A78 00:DA68: A0 00     LDY #$00
C - - - - - 0x001A7A 00:DA6A: A5 B8     LDA ram_00B8
C - - - - - 0x001A7C 00:DA6C: C9 50     CMP #$50
C - - - - - 0x001A7E 00:DA6E: B0 11     BCS bra_DA81
C - - - - - 0x001A80 00:DA70: A2 32     LDX #$32
C - - - - - 0x001A82 00:DA72: A5 C2     LDA ram_00C2
C - - - - - 0x001A84 00:DA74: F0 02     BEQ bra_DA78
C - - - - - 0x001A86 00:DA76: A2 28     LDX #$28
bra_DA78:
loc_DA78:
C D 2 - - - 0x001A88 00:DA78: 86 B5     STX ram_00B5
C - - - - - 0x001A8A 00:DA7A: A9 01     LDA #$01
C - - - - - 0x001A8C 00:DA7C: 85 B3     STA ram_00B3
C - - - - - 0x001A8E 00:DA7E: 84 C8     STY ram_00C8
C - - - - - 0x001A90 00:DA80: 60        RTS
bra_DA81:
C - - - - - 0x001A91 00:DA81: C8        INY
C - - - - - 0x001A92 00:DA82: A5 6F     LDA ram_006F
C - - - - - 0x001A94 00:DA84: C9 50     CMP #$50
C - - - - - 0x001A96 00:DA86: 90 06     BCC bra_DA8E
C - - - - - 0x001A98 00:DA88: C8        INY
C - - - - - 0x001A99 00:DA89: C9 88     CMP #$88
C - - - - - 0x001A9B 00:DA8B: 90 01     BCC bra_DA8E
C - - - - - 0x001A9D 00:DA8D: C8        INY
bra_DA8E:
C - - - - - 0x001A9E 00:DA8E: 98        TYA
C - - - - - 0x001A9F 00:DA8F: AA        TAX
C - - - - - 0x001AA0 00:DA90: CA        DEX
C - - - - - 0x001AA1 00:DA91: A5 C2     LDA ram_00C2
C - - - - - 0x001AA3 00:DA93: F0 06     BEQ bra_DA9B
C - - - - - 0x001AA5 00:DA95: BD A2 DA  LDA tbl_DAA2,X
C - - - - - 0x001AA8 00:DA98: 4C 9E DA  JMP loc_DA9E
bra_DA9B:
C - - - - - 0x001AAB 00:DA9B: BD A5 DA  LDA tbl_DAA5,X
loc_DA9E:
C D 2 - - - 0x001AAE 00:DA9E: AA        TAX
C - - - - - 0x001AAF 00:DA9F: 4C 78 DA  JMP loc_DA78



tbl_DAA2:
- D 2 - - - 0x001AB2 00:DAA2: 28        .byte $28   ; 00
- D 2 - - - 0x001AB3 00:DAA3: 50        .byte $50   ; 01
- D 2 - - - 0x001AB4 00:DAA4: 3C        .byte $3C   ; 02



tbl_DAA5:
- D 2 - - - 0x001AB5 00:DAA5: 32        .byte $32   ; 00
- D 2 - - - 0x001AB6 00:DAA6: 58        .byte $58   ; 01
- D 2 - - - 0x001AB7 00:DAA7: 46        .byte $46   ; 02



sub_DAA8:
C - - - - - 0x001AB8 00:DAA8: A5 CA     LDA ram_00CA
C - - - - - 0x001ABA 00:DAAA: F0 1A     BEQ bra_DAC6_RTS
C - - - - - 0x001ABC 00:DAAC: C9 01     CMP #$01
C - - - - - 0x001ABE 00:DAAE: F0 04     BEQ bra_DAB4
C - - - - - 0x001AC0 00:DAB0: A9 04     LDA #$04
C - - - - - 0x001AC2 00:DAB2: D0 02     BNE bra_DAB6    ; jmp
bra_DAB4:
C - - - - - 0x001AC4 00:DAB4: A9 00     LDA #$00
bra_DAB6:
C - - - - - 0x001AC6 00:DAB6: A4 B9     LDY ram_00B9
C - - - - - 0x001AC8 00:DAB8: C0 80     CPY #$80
C - - - - - 0x001ACA 00:DABA: B0 03     BCS bra_DABF
C - - - - - 0x001ACC 00:DABC: 18        CLC
C - - - - - 0x001ACD 00:DABD: 69 03     ADC #$03
bra_DABF:
C - - - - - 0x001ACF 00:DABF: 20 0B DE  JSR sub_DE0B
C - - - - - 0x001AD2 00:DAC2: D0 02     BNE bra_DAC6_RTS
C - - - - - 0x001AD4 00:DAC4: 85 CA     STA ram_00CA
bra_DAC6_RTS:
C - - - - - 0x001AD6 00:DAC6: 60        RTS



sub_DAC7:
C - - - - - 0x001AD7 00:DAC7: A5 AB     LDA ram_00AB
C - - - - - 0x001AD9 00:DAC9: F0 07     BEQ bra_DAD2
C - - - - - 0x001ADB 00:DACB: AE 7C 03  LDX ram_037C
C - - - - - 0x001ADE 00:DACE: F0 16     BEQ bra_DAE6_RTS
C - - - - - 0x001AE0 00:DAD0: D0 05     BNE bra_DAD7    ; jmp
bra_DAD2:
C - - - - - 0x001AE2 00:DAD2: AE 5C 03  LDX ram_035C
C - - - - - 0x001AE5 00:DAD5: F0 0F     BEQ bra_DAE6_RTS
bra_DAD7:
C - - - - - 0x001AE7 00:DAD7: CA        DEX
C - - - - - 0x001AE8 00:DAD8: 8A        TXA
C - - - - - 0x001AE9 00:DAD9: 20 0B DE  JSR sub_DE0B
C - - - - - 0x001AEC 00:DADC: D0 08     BNE bra_DAE6_RTS
C - - - - - 0x001AEE 00:DADE: 8D 5C 03  STA ram_035C
C - - - - - 0x001AF1 00:DAE1: 8D 7C 03  STA ram_037C
C - - - - - 0x001AF4 00:DAE4: 85 CC     STA ram_00CC
bra_DAE6_RTS:
C - - - - - 0x001AF6 00:DAE6: 60        RTS



sub_DAE7:
C - - - - - 0x001AF7 00:DAE7: A5 79     LDA ram_mario_message
C - - - - - 0x001AF9 00:DAE9: D0 2E     BNE bra_DB19
C - - - - - 0x001AFB 00:DAEB: A5 8B     LDA ram_008B
C - - - - - 0x001AFD 00:DAED: C9 2C     CMP #$2C
C - - - - - 0x001AFF 00:DAEF: 90 28     BCC bra_DB19
C - - - - - 0x001B01 00:DAF1: A9 0C     LDA #$0C
C - - - - - 0x001B03 00:DAF3: A2 20     LDX #$20
C - - - - - 0x001B05 00:DAF5: A4 39     LDY ram_game_mode
C - - - - - 0x001B07 00:DAF7: F0 04     BEQ bra_DAFD    ; if 1 player
C - - - - - 0x001B09 00:DAF9: A9 0B     LDA #$0B
C - - - - - 0x001B0B 00:DAFB: A2 80     LDX #$80
bra_DAFD:
C - - - - - 0x001B0D 00:DAFD: E4 80     CPX ram_0080
C - - - - - 0x001B0F 00:DAFF: E5 81     SBC ram_0081
C - - - - - 0x001B11 00:DB01: B0 16     BCS bra_DB19
C - - - - - 0x001B13 00:DB03: A9 14     LDA #$14
C - - - - - 0x001B15 00:DB05: A2 00     LDX #$00
C - - - - - 0x001B17 00:DB07: A4 39     LDY ram_game_mode
C - - - - - 0x001B19 00:DB09: F0 04     BEQ bra_DB0F    ; if 1 player
C - - - - - 0x001B1B 00:DB0B: A9 14     LDA #$14
C - - - - - 0x001B1D 00:DB0D: A2 A0     LDX #$A0
bra_DB0F:
C - - - - - 0x001B1F 00:DB0F: E4 80     CPX ram_0080
C - - - - - 0x001B21 00:DB11: E5 81     SBC ram_0081
C - - - - - 0x001B23 00:DB13: 90 04     BCC bra_DB19
C - - - - - 0x001B25 00:DB15: A9 01     LDA #$01
C - - - - - 0x001B27 00:DB17: D0 04     BNE bra_DB1D_RTS
bra_DB19:
C - - - - - 0x001B29 00:DB19: A9 00     LDA #$00
C - - - - - 0x001B2B 00:DB1B: 85 C9     STA ram_00C9
bra_DB1D_RTS:
C - - - - - 0x001B2D 00:DB1D: 60        RTS



sub_DB1E:
C - - - - - 0x001B2E 00:DB1E: A5 CA     LDA ram_00CA
C - - - - - 0x001B30 00:DB20: D0 5F     BNE bra_DB81_RTS
C - - - - - 0x001B32 00:DB22: A5 AB     LDA ram_00AB
C - - - - - 0x001B34 00:DB24: D0 10     BNE bra_DB36
C - - - - - 0x001B36 00:DB26: AC 5A 03  LDY ram_035A
C - - - - - 0x001B39 00:DB29: D0 06     BNE bra_DB31
C - - - - - 0x001B3B 00:DB2B: 24 8D     BIT ram_008D
C - - - - - 0x001B3D 00:DB2D: 50 49     BVC bra_DB78
C - - - - - 0x001B3F 00:DB2F: 70 31     BVS bra_DB62    ; jmp
bra_DB31:
C - - - - - 0x001B41 00:DB31: 88        DEY
C - - - - - 0x001B42 00:DB32: F0 40     BEQ bra_DB74
C - - - - - 0x001B44 00:DB34: D0 2C     BNE bra_DB62    ; jmp
bra_DB36:
C - - - - - 0x001B46 00:DB36: A5 39     LDA ram_game_mode
C - - - - - 0x001B48 00:DB38: F0 0F     BEQ bra_DB49    ; if 1 player
C - - - - - 0x001B4A 00:DB3A: 20 56 C4  JSR sub_C456_roll_rng
C - - - - - 0x001B4D 00:DB3D: C9 25     CMP #$25
C - - - - - 0x001B4F 00:DB3F: B0 37     BCS bra_DB78
C - - - - - 0x001B51 00:DB41: A5 B8     LDA ram_00B8
C - - - - - 0x001B53 00:DB43: C9 50     CMP #$50
C - - - - - 0x001B55 00:DB45: 90 1B     BCC bra_DB62
C - - - - - 0x001B57 00:DB47: B0 2B     BCS bra_DB74    ; jmp
bra_DB49:
C - - - - - 0x001B59 00:DB49: A2 64     LDX #$64
C - - - - - 0x001B5B 00:DB4B: A5 4C     LDA ram_level
C - - - - - 0x001B5D 00:DB4D: C9 03     CMP #$03
C - - - - - 0x001B5F 00:DB4F: 90 02     BCC bra_DB53
C - - - - - 0x001B61 00:DB51: A2 82     LDX #$82
bra_DB53:
C - - - - - 0x001B63 00:DB53: 86 10     STX ram_0010
C - - - - - 0x001B65 00:DB55: 20 56 C4  JSR sub_C456_roll_rng
C - - - - - 0x001B68 00:DB58: C5 10     CMP ram_0010
C - - - - - 0x001B6A 00:DB5A: B0 12     BCS bra_DB6E
C - - - - - 0x001B6C 00:DB5C: A5 B8     LDA ram_00B8
C - - - - - 0x001B6E 00:DB5E: C9 50     CMP #$50
C - - - - - 0x001B70 00:DB60: B0 1F     BCS bra_DB81_RTS
bra_DB62:
C - - - - - 0x001B72 00:DB62: E6 CA     INC ram_00CA
C - - - - - 0x001B74 00:DB64: A9 10     LDA #$10
C - - - - - 0x001B76 00:DB66: 85 C0     STA ram_00C0
C - - - - - 0x001B78 00:DB68: A9 0A     LDA #$0A
C - - - - - 0x001B7A 00:DB6A: 20 21 E0  JSR sub_E021
C - - - - - 0x001B7D 00:DB6D: 60        RTS
bra_DB6E:
C - - - - - 0x001B7E 00:DB6E: A5 B8     LDA ram_00B8
C - - - - - 0x001B80 00:DB70: C9 50     CMP #$50
C - - - - - 0x001B82 00:DB72: 90 0D     BCC bra_DB81_RTS
bra_DB74:
C - - - - - 0x001B84 00:DB74: E6 CA     INC ram_00CA
C - - - - - 0x001B86 00:DB76: E6 CA     INC ram_00CA
bra_DB78:
C - - - - - 0x001B88 00:DB78: A9 10     LDA #$10
C - - - - - 0x001B8A 00:DB7A: 85 C0     STA ram_00C0
C - - - - - 0x001B8C 00:DB7C: A9 0F     LDA #$0F
C - - - - - 0x001B8E 00:DB7E: 20 21 E0  JSR sub_E021
bra_DB81_RTS:
C - - - - - 0x001B91 00:DB81: 60        RTS



sub_DB82:
C - - - - - 0x001B92 00:DB82: A5 B4     LDA ram_00B4
C - - - - - 0x001B94 00:DB84: D0 39     BNE bra_DBBF_RTS
C - - - - - 0x001B96 00:DB86: A5 87     LDA ram_0087
C - - - - - 0x001B98 00:DB88: C9 01     CMP #$01
C - - - - - 0x001B9A 00:DB8A: D0 34     BNE bra_DBC0
C - - - - - 0x001B9C 00:DB8C: A5 B5     LDA ram_00B5
C - - - - - 0x001B9E 00:DB8E: C9 27     CMP #$27
C - - - - - 0x001BA0 00:DB90: B0 2D     BCS bra_DBBF_RTS
C - - - - - 0x001BA2 00:DB92: C9 09     CMP #$09
C - - - - - 0x001BA4 00:DB94: 90 0E     BCC bra_DBA4
C - - - - - 0x001BA6 00:DB96: C9 1D     CMP #$1D
C - - - - - 0x001BA8 00:DB98: B0 14     BCS bra_DBAE
C - - - - - 0x001BAA 00:DB9A: A0 6A     LDY #$6A
C - - - - - 0x001BAC 00:DB9C: A5 C2     LDA ram_00C2
C - - - - - 0x001BAE 00:DB9E: D0 1C     BNE bra_DBBC
C - - - - - 0x001BB0 00:DBA0: A0 72     LDY #$72
C - - - - - 0x001BB2 00:DBA2: D0 18     BNE bra_DBBC    ; jmp
bra_DBA4:
C - - - - - 0x001BB4 00:DBA4: A0 70     LDY #$70
C - - - - - 0x001BB6 00:DBA6: A5 C2     LDA ram_00C2
C - - - - - 0x001BB8 00:DBA8: F0 12     BEQ bra_DBBC
C - - - - - 0x001BBA 00:DBAA: A0 00     LDY #$00
C - - - - - 0x001BBC 00:DBAC: F0 08     BEQ bra_DBB6    ; jmp
bra_DBAE:
C - - - - - 0x001BBE 00:DBAE: A0 68     LDY #$68
C - - - - - 0x001BC0 00:DBB0: A5 C2     LDA ram_00C2
C - - - - - 0x001BC2 00:DBB2: D0 08     BNE bra_DBBC
C - - - - - 0x001BC4 00:DBB4: A0 1E     LDY #$1E
bra_DBB6:
C - - - - - 0x001BC6 00:DBB6: A5 C0     LDA ram_00C0
C - - - - - 0x001BC8 00:DBB8: 29 0F     AND #$0F
C - - - - - 0x001BCA 00:DBBA: D0 03     BNE bra_DBBF_RTS
bra_DBBC:
C - - - - - 0x001BCC 00:DBBC: 4C 0A DC  JMP loc_DC0A
bra_DBBF_RTS:
C - - - - - 0x001BCF 00:DBBF: 60        RTS
bra_DBC0:
C - - - - - 0x001BD0 00:DBC0: A5 B5     LDA ram_00B5
C - - - - - 0x001BD2 00:DBC2: C9 27     CMP #$27
C - - - - - 0x001BD4 00:DBC4: B0 4A     BCS bra_DC10_RTS
C - - - - - 0x001BD6 00:DBC6: C9 09     CMP #$09
C - - - - - 0x001BD8 00:DBC8: 90 20     BCC bra_DBEA
C - - - - - 0x001BDA 00:DBCA: C9 1D     CMP #$1D
C - - - - - 0x001BDC 00:DBCC: B0 2C     BCS bra_DBFA
C - - - - - 0x001BDE 00:DBCE: A5 C0     LDA ram_00C0
C - - - - - 0x001BE0 00:DBD0: 29 0F     AND #$0F
C - - - - - 0x001BE2 00:DBD2: F0 3D     BEQ bra_DC11
C - - - - - 0x001BE4 00:DBD4: A0 72     LDY #$72
C - - - - - 0x001BE6 00:DBD6: 29 03     AND #$03
C - - - - - 0x001BE8 00:DBD8: F0 08     BEQ bra_DBE2
C - - - - - 0x001BEA 00:DBDA: C9 01     CMP #$01
C - - - - - 0x001BEC 00:DBDC: F0 2C     BEQ bra_DC0A
bra_DBDE:
C - - - - - 0x001BEE 00:DBDE: A0 6A     LDY #$6A
C - - - - - 0x001BF0 00:DBE0: D0 28     BNE bra_DC0A    ; jmp
bra_DBE2:
C - - - - - 0x001BF2 00:DBE2: A5 B9     LDA ram_00B9
C - - - - - 0x001BF4 00:DBE4: C9 80     CMP #$80
C - - - - - 0x001BF6 00:DBE6: 90 22     BCC bra_DC0A
C - - - - - 0x001BF8 00:DBE8: B0 F4     BCS bra_DBDE    ; jmp
bra_DBEA:
C - - - - - 0x001BFA 00:DBEA: A0 00     LDY #$00
C - - - - - 0x001BFC 00:DBEC: A5 C0     LDA ram_00C0
C - - - - - 0x001BFE 00:DBEE: 29 0F     AND #$0F
C - - - - - 0x001C00 00:DBF0: F0 18     BEQ bra_DC0A
C - - - - - 0x001C02 00:DBF2: A0 70     LDY #$70
C - - - - - 0x001C04 00:DBF4: 29 01     AND #$01
C - - - - - 0x001C06 00:DBF6: D0 12     BNE bra_DC0A
C - - - - - 0x001C08 00:DBF8: F0 16     BEQ bra_DC10_RTS    ; jmp
bra_DBFA:
C - - - - - 0x001C0A 00:DBFA: A0 1E     LDY #$1E
C - - - - - 0x001C0C 00:DBFC: A5 C0     LDA ram_00C0
C - - - - - 0x001C0E 00:DBFE: 29 0F     AND #$0F
C - - - - - 0x001C10 00:DC00: F0 08     BEQ bra_DC0A
C - - - - - 0x001C12 00:DC02: A0 68     LDY #$68
C - - - - - 0x001C14 00:DC04: 29 02     AND #$02
C - - - - - 0x001C16 00:DC06: D0 02     BNE bra_DC0A
C - - - - - 0x001C18 00:DC08: F0 06     BEQ bra_DC10_RTS    ; jmp
bra_DC0A:
loc_DC0A:
C D 2 - - - 0x001C1A 00:DC0A: 84 B5     STY ram_00B5
C - - - - - 0x001C1C 00:DC0C: A9 00     LDA #$00
C - - - - - 0x001C1E 00:DC0E: 85 B3     STA ram_00B3
bra_DC10_RTS:
C - - - - - 0x001C20 00:DC10: 60        RTS
bra_DC11:
sub_DC11:
C - - - - - 0x001C21 00:DC11: A2 0A     LDX #$0A
C - - - - - 0x001C23 00:DC13: A5 B5     LDA ram_00B5
C - - - - - 0x001C25 00:DC15: C9 13     CMP #$13
C - - - - - 0x001C27 00:DC17: 90 02     BCC bra_DC1B
C - - - - - 0x001C29 00:DC19: A2 14     LDX #$14
bra_DC1B:
C - - - - - 0x001C2B 00:DC1B: 86 15     STX ram_0015
C - - - - - 0x001C2D 00:DC1D: A0 0A     LDY #$0A
C - - - - - 0x001C2F 00:DC1F: A5 B9     LDA ram_00B9
C - - - - - 0x001C31 00:DC21: C9 80     CMP #$80
C - - - - - 0x001C33 00:DC23: B0 02     BCS bra_DC27
C - - - - - 0x001C35 00:DC25: A0 14     LDY #$14
bra_DC27:
C - - - - - 0x001C37 00:DC27: C4 15     CPY ram_0015
C - - - - - 0x001C39 00:DC29: F0 E5     BEQ bra_DC10_RTS
C - - - - - 0x001C3B 00:DC2B: D0 DD     BNE bra_DC0A    ; jmp



sub_DC2D:
C - - - - - 0x001C3D 00:DC2D: A9 51     LDA #< tbl_DE51
C - - - - - 0x001C3F 00:DC2F: 85 14     STA ram_0014
C - - - - - 0x001C41 00:DC31: A9 DE     LDA #> tbl_DE51
C - - - - - 0x001C43 00:DC33: 85 15     STA ram_0015
C - - - - - 0x001C45 00:DC35: A9 40     LDA #< $0040
C - - - - - 0x001C47 00:DC37: 85 12     STA ram_0012
C - - - - - 0x001C49 00:DC39: A9 00     LDA #> $0040
C - - - - - 0x001C4B 00:DC3B: 85 13     STA ram_0013
C - - - - - 0x001C4D 00:DC3D: A4 4C     LDY ram_level
C - - - - - 0x001C4F 00:DC3F: F0 07     BEQ bra_DC48
C - - - - - 0x001C51 00:DC41: A5 8D     LDA ram_008D
C - - - - - 0x001C53 00:DC43: 29 02     AND #$02
C - - - - - 0x001C55 00:DC45: D0 01     BNE bra_DC48
C - - - - - 0x001C57 00:DC47: 88        DEY
bra_DC48:
C - - - - - 0x001C58 00:DC48: A4 4C     LDY ram_level
C - - - - - 0x001C5A 00:DC4A: F0 06     BEQ bra_DC52
bra_DC4C_loop:
C - - - - - 0x001C5C 00:DC4C: 20 A1 C3  JSR sub_C3A1_add_16bit_to_16_bit
C - - - - - 0x001C5F 00:DC4F: 88        DEY
C - - - - - 0x001C60 00:DC50: D0 FA     BNE bra_DC4C_loop
bra_DC52:
; 0013 = 00
C - - - - - 0x001C62 00:DC52: A9 08     LDA #< $0008
C - - - - - 0x001C64 00:DC54: 85 12     STA ram_0012
C - - - - - 0x001C66 00:DC56: 20 63 DC  JSR sub_DC63
C - - - - - 0x001C69 00:DC59: CA        DEX
C - - - - - 0x001C6A 00:DC5A: F0 06     BEQ bra_DC62_RTS
bra_DC5C_loop:
C - - - - - 0x001C6C 00:DC5C: 20 A1 C3  JSR sub_C3A1_add_16bit_to_16_bit
C - - - - - 0x001C6F 00:DC5F: CA        DEX
C - - - - - 0x001C70 00:DC60: D0 FA     BNE bra_DC5C_loop
bra_DC62_RTS:
C - - - - - 0x001C72 00:DC62: 60        RTS



sub_DC63:
C - - - - - 0x001C73 00:DC63: A0 00     LDY #$00    ; p1
C - - - - - 0x001C75 00:DC65: A5 39     LDA ram_game_mode
C - - - - - 0x001C77 00:DC67: F0 06     BEQ bra_DC6F    ; if 1 player
C - - - - - 0x001C79 00:DC69: A5 40     LDA ram_0040
C - - - - - 0x001C7B 00:DC6B: F0 02     BEQ bra_DC6F
C - - - - - 0x001C7D 00:DC6D: A0 20     LDY #$20    ; p2
bra_DC6F:
C - - - - - 0x001C7F 00:DC6F: B9 08 03  LDA ram_pos_Y_p1,Y
C - - - - - 0x001C82 00:DC72: A2 01     LDX #$01
C - - - - - 0x001C84 00:DC74: C9 A0     CMP #$A0
C - - - - - 0x001C86 00:DC76: 90 02     BCC bra_DC7A
C - - - - - 0x001C88 00:DC78: A2 05     LDX #$05
bra_DC7A:
C - - - - - 0x001C8A 00:DC7A: B9 09 03  LDA ram_pos_X_p1,Y
C - - - - - 0x001C8D 00:DC7D: C9 60     CMP #$60
C - - - - - 0x001C8F 00:DC7F: 90 0B     BCC bra_DC8C_RTS
C - - - - - 0x001C91 00:DC81: E8        INX ; 02/06
C - - - - - 0x001C92 00:DC82: C9 80     CMP #$80
C - - - - - 0x001C94 00:DC84: 90 06     BCC bra_DC8C_RTS
C - - - - - 0x001C96 00:DC86: E8        INX ; 03/07
C - - - - - 0x001C97 00:DC87: C9 A0     CMP #$A0
C - - - - - 0x001C99 00:DC89: 90 01     BCC bra_DC8C_RTS
C - - - - - 0x001C9B 00:DC8B: E8        INX ; 04/08
bra_DC8C_RTS:
C - - - - - 0x001C9C 00:DC8C: 60        RTS



sub_DC8D:
C - - - - - 0x001C9D 00:DC8D: A5 B8     LDA ram_00B8
C - - - - - 0x001C9F 00:DC8F: A2 01     LDX #$01
C - - - - - 0x001CA1 00:DC91: C9 44     CMP #$44
C - - - - - 0x001CA3 00:DC93: 90 02     BCC bra_DC97
C - - - - - 0x001CA5 00:DC95: A2 05     LDX #$05
bra_DC97:
C - - - - - 0x001CA7 00:DC97: A5 B9     LDA ram_00B9
C - - - - - 0x001CA9 00:DC99: C9 68     CMP #$68
C - - - - - 0x001CAB 00:DC9B: 90 0B     BCC bra_DCA8
C - - - - - 0x001CAD 00:DC9D: E8        INX ; 02/06
C - - - - - 0x001CAE 00:DC9E: C9 80     CMP #$80
C - - - - - 0x001CB0 00:DCA0: 90 06     BCC bra_DCA8
C - - - - - 0x001CB2 00:DCA2: E8        INX ; 03/07
C - - - - - 0x001CB3 00:DCA3: C9 98     CMP #$98
C - - - - - 0x001CB5 00:DCA5: 90 01     BCC bra_DCA8
C - - - - - 0x001CB7 00:DCA7: E8        INX ; 04/08
bra_DCA8:
C - - - - - 0x001CB8 00:DCA8: 86 CC     STX ram_00CC
C - - - - - 0x001CBA 00:DCAA: 60        RTS



sub_DCAB:
C - - - - - 0x001CBB 00:DCAB: A0 00     LDY #$00
C - - - - - 0x001CBD 00:DCAD: 20 56 C4  JSR sub_C456_roll_rng
C - - - - - 0x001CC0 00:DCB0: C9 FF     CMP #$FF
C - - - - - 0x001CC2 00:DCB2: D0 02     BNE bra_DCB6
C - - - - - 0x001CC4 00:DCB4: E9 01     SBC #$01
bra_DCB6:
bra_DCB6_loop:
C - - - - - 0x001CC6 00:DCB6: D1 14     CMP (ram_0014),Y
C - - - - - 0x001CC8 00:DCB8: C8        INY
C - - - - - 0x001CC9 00:DCB9: B0 FB     BCS bra_DCB6_loop
C - - - - - 0x001CCB 00:DCBB: 88        DEY
C - - - - - 0x001CCC 00:DCBC: 98        TYA
C - - - - - 0x001CCD 00:DCBD: 0A        ASL
C - - - - - 0x001CCE 00:DCBE: 0A        ASL
C - - - - - 0x001CCF 00:DCBF: A8        TAY
C - - - - - 0x001CD0 00:DCC0: B9 11 DD  LDA tbl_DD11,Y
C - - - - - 0x001CD3 00:DCC3: 84 10     STY ram_0010
C - - - - - 0x001CD5 00:DCC5: C9 40     CMP #$40
C - - - - - 0x001CD7 00:DCC7: F0 28     BEQ bra_DCF1
C - - - - - 0x001CD9 00:DCC9: A2 A0     LDX #$A0
C - - - - - 0x001CDB 00:DCCB: C0 00     CPY #$00
C - - - - - 0x001CDD 00:DCCD: F0 06     BEQ bra_DCD5
C - - - - - 0x001CDF 00:DCCF: C0 10     CPY #$10
C - - - - - 0x001CE1 00:DCD1: F0 02     BEQ bra_DCD5
C - - - - - 0x001CE3 00:DCD3: A2 60     LDX #$60
bra_DCD5:
C - - - - - 0x001CE5 00:DCD5: A4 39     LDY ram_game_mode
C - - - - - 0x001CE7 00:DCD7: D0 05     BNE bra_DCDE    ; if 2 players
C - - - - - 0x001CE9 00:DCD9: 86 12     STX ram_0012
C - - - - - 0x001CEB 00:DCDB: 18        CLC
C - - - - - 0x001CEC 00:DCDC: 65 12     ADC ram_0012
bra_DCDE:
C - - - - - 0x001CEE 00:DCDE: A4 4C     LDY ram_level
C - - - - - 0x001CF0 00:DCE0: C0 03     CPY #$03
C - - - - - 0x001CF2 00:DCE2: 90 0D     BCC bra_DCF1
C - - - - - 0x001CF4 00:DCE4: A0 20     LDY #$20
C - - - - - 0x001CF6 00:DCE6: E0 A0     CPX #$A0
C - - - - - 0x001CF8 00:DCE8: F0 02     BEQ bra_DCEC
C - - - - - 0x001CFA 00:DCEA: A0 E0     LDY #$E0
bra_DCEC:
C - - - - - 0x001CFC 00:DCEC: 84 12     STY ram_0012
C - - - - - 0x001CFE 00:DCEE: 18        CLC
C - - - - - 0x001CFF 00:DCEF: 65 12     ADC ram_0012
bra_DCF1:
C - - - - - 0x001D01 00:DCF1: 85 12     STA ram_0012
C - - - - - 0x001D03 00:DCF3: A4 10     LDY ram_0010
C - - - - - 0x001D05 00:DCF5: B9 12 DD  LDA tbl_DD11 + 1,Y
C - - - - - 0x001D08 00:DCF8: 85 13     STA ram_0013
C - - - - - 0x001D0A 00:DCFA: B9 13 DD  LDA tbl_DD11 + 2,Y
C - - - - - 0x001D0D 00:DCFD: C0 10     CPY #$10
C - - - - - 0x001D0F 00:DCFF: 90 08     BCC bra_DD09
C - - - - - 0x001D11 00:DD01: A6 4C     LDX ram_level
C - - - - - 0x001D13 00:DD03: E0 03     CPX #$03
C - - - - - 0x001D15 00:DD05: 90 02     BCC bra_DD09
C - - - - - 0x001D17 00:DD07: 69 37     ADC #$37
bra_DD09:
C - - - - - 0x001D19 00:DD09: 85 14     STA ram_0014
C - - - - - 0x001D1B 00:DD0B: B9 14 DD  LDA tbl_DD11 + 3,Y
C - - - - - 0x001D1E 00:DD0E: 85 15     STA ram_0015
C - - - - - 0x001D20 00:DD10: 60        RTS



tbl_DD11:
; 00
- D 2 - - - 0x001D21 00:DD11: 3F        .byte $3F   ; 
- D 2 - - - 0x001D22 00:DD12: 0C        .byte $0C   ; 
- D 2 - - - 0x001D23 00:DD13: 00        .byte $00   ; 
- D 2 - - - 0x001D24 00:DD14: 0C        .byte $0C   ; 
; 01
- D 2 - - - 0x001D25 00:DD15: 40        .byte $40   ; 
- D 2 - - - 0x001D26 00:DD16: 0E        .byte $0E   ; 
- D 2 - - - 0x001D27 00:DD17: 80        .byte $80   ; 
- D 2 - - - 0x001D28 00:DD18: 0C        .byte $0C   ; 
; 02
- D 2 - - - 0x001D29 00:DD19: 40        .byte $40   ; 
- D 2 - - - 0x001D2A 00:DD1A: 10        .byte $10   ; 
- D 2 - - - 0x001D2B 00:DD1B: 80        .byte $80   ; 
- D 2 - - - 0x001D2C 00:DD1C: 0C        .byte $0C   ; 
; 03
- D 2 - - - 0x001D2D 00:DD1D: C1        .byte $C1   ; 
- D 2 - - - 0x001D2E 00:DD1E: 11        .byte $11   ; 
- D 2 - - - 0x001D2F 00:DD1F: 00        .byte $00   ; 
- D 2 - - - 0x001D30 00:DD20: 0C        .byte $0C   ; 
; 04
- D 2 - - - 0x001D31 00:DD21: 10        .byte $10   ; 
- D 2 - - - 0x001D32 00:DD22: 0C        .byte $0C   ; 
- D 2 - - - 0x001D33 00:DD23: 58        .byte $58   ; 
- D 2 - - - 0x001D34 00:DD24: 0A        .byte $0A   ; 
; 05
- D 2 - - - 0x001D35 00:DD25: 40        .byte $40   ; 
- D 2 - - - 0x001D36 00:DD26: 0E        .byte $0E   ; 
- D 2 - - - 0x001D37 00:DD27: 58        .byte $58   ; 
- D 2 - - - 0x001D38 00:DD28: 0A        .byte $0A   ; 
; 06
- D 2 - - - 0x001D39 00:DD29: 40        .byte $40   ; 
- D 2 - - - 0x001D3A 00:DD2A: 10        .byte $10   ; 
- D 2 - - - 0x001D3B 00:DD2B: 58        .byte $58   ; 
- D 2 - - - 0x001D3C 00:DD2C: 0A        .byte $0A   ; 
; 07
- D 2 - - - 0x001D3D 00:DD2D: F0        .byte $F0   ; 
- D 2 - - - 0x001D3E 00:DD2E: 11        .byte $11   ; 
- D 2 - - - 0x001D3F 00:DD2F: 58        .byte $58   ; 
- D 2 - - - 0x001D40 00:DD30: 0A        .byte $0A   ; 



sub_DD31:
C - - - - - 0x001D41 00:DD31: 20 56 C4  JSR sub_C456_roll_rng
C - - - - - 0x001D44 00:DD34: 18        CLC
C - - - - - 0x001D45 00:DD35: 65 12     ADC ram_0012
C - - - - - 0x001D47 00:DD37: 85 80     STA ram_0080
C - - - - - 0x001D49 00:DD39: AD 02 05  LDA ram_random + 2
C - - - - - 0x001D4C 00:DD3C: 29 01     AND #$01
C - - - - - 0x001D4E 00:DD3E: 65 13     ADC ram_0013
C - - - - - 0x001D50 00:DD40: 85 81     STA ram_0081
C - - - - - 0x001D52 00:DD42: AD 03 05  LDA ram_random + 3
C - - - - - 0x001D55 00:DD45: 18        CLC
C - - - - - 0x001D56 00:DD46: 65 14     ADC ram_0014
C - - - - - 0x001D58 00:DD48: 85 82     STA ram_0082
C - - - - - 0x001D5A 00:DD4A: AD 00 05  LDA ram_random
C - - - - - 0x001D5D 00:DD4D: 29 01     AND #$01
C - - - - - 0x001D5F 00:DD4F: 65 15     ADC ram_0015
C - - - - - 0x001D61 00:DD51: 85 83     STA ram_0083
C - - - - - 0x001D63 00:DD53: 60        RTS



sub_DD54:
C - - - - - 0x001D64 00:DD54: A5 6F     LDA ram_006F
C - - - - - 0x001D66 00:DD56: C9 B0     CMP #$B0
C - - - - - 0x001D68 00:DD58: 90 03     BCC bra_DD5D
- - - - - - 0x001D6A 00:DD5A: 4C FA DD  JMP loc_DDFA
bra_DD5D:
C - - - - - 0x001D6D 00:DD5D: A9 00     LDA #$00
C - - - - - 0x001D6F 00:DD5F: 85 84     STA ram_0084
C - - - - - 0x001D71 00:DD61: 85 85     STA ram_0085
C - - - - - 0x001D73 00:DD63: 85 15     STA ram_0015
C - - - - - 0x001D75 00:DD65: A6 C8     LDX ram_00C8
C - - - - - 0x001D77 00:DD67: F0 16     BEQ bra_DD7F
C - - - - - 0x001D79 00:DD69: CA        DEX
C - - - - - 0x001D7A 00:DD6A: BD 7C DD  LDA tbl_DD7C,X
C - - - - - 0x001D7D 00:DD6D: 85 84     STA ram_0084
C - - - - - 0x001D7F 00:DD6F: C9 04     CMP #$04
C - - - - - 0x001D81 00:DD71: D0 06     BNE bra_DD79
C - - - - - 0x001D83 00:DD73: A9 02     LDA #$02
C - - - - - 0x001D85 00:DD75: 85 85     STA ram_0085
C - - - - - 0x001D87 00:DD77: D0 71     BNE bra_DDEA    ; jmp
bra_DD79:
C - - - - - 0x001D89 00:DD79: 4C C5 DD  JMP loc_DDC5



tbl_DD7C:
- D 2 - - - 0x001D8C 00:DD7C: 04        .byte $04   ; 01
- D 2 - - - 0x001D8D 00:DD7D: 01        .byte $01   ; 02
- D 2 - - - 0x001D8E 00:DD7E: 02        .byte $02   ; 03



bra_DD7F:
C - - - - - 0x001D8F 00:DD7F: A5 39     LDA ram_game_mode
C - - - - - 0x001D91 00:DD81: F0 30     BEQ bra_DDB3    ; if 1 player
C - - - - - 0x001D93 00:DD83: AD 28 03  LDA ram_pos_Y_p2
C - - - - - 0x001D96 00:DD86: C9 A0     CMP #$A0
C - - - - - 0x001D98 00:DD88: B0 04     BCS bra_DD8E
C - - - - - 0x001D9A 00:DD8A: A9 01     LDA #$01
C - - - - - 0x001D9C 00:DD8C: 85 15     STA ram_0015
bra_DD8E:
C - - - - - 0x001D9E 00:DD8E: A0 00     LDY #$00
C - - - - - 0x001DA0 00:DD90: AE 08 03  LDX ram_pos_Y_p1
C - - - - - 0x001DA3 00:DD93: E0 A0     CPX #$A0
C - - - - - 0x001DA5 00:DD95: B0 02     BCS bra_DD99
C - - - - - 0x001DA7 00:DD97: A0 01     LDY #$01
bra_DD99:
C - - - - - 0x001DA9 00:DD99: 20 56 C4  JSR sub_C456_roll_rng
C - - - - - 0x001DAC 00:DD9C: 29 03     AND #$03
C - - - - - 0x001DAE 00:DD9E: AA        TAX
C - - - - - 0x001DAF 00:DD9F: 98        TYA
C - - - - - 0x001DB0 00:DDA0: 05 15     ORA ram_0015
C - - - - - 0x001DB2 00:DDA2: F0 2C     BEQ bra_DDD0
C - - - - - 0x001DB4 00:DDA4: 98        TYA
C - - - - - 0x001DB5 00:DDA5: 25 15     AND ram_0015
C - - - - - 0x001DB7 00:DDA7: F0 05     BEQ bra_DDAE
C - - - - - 0x001DB9 00:DDA9: 8A        TXA
C - - - - - 0x001DBA 00:DDAA: D0 15     BNE bra_DDC1
- - - - - - 0x001DBC 00:DDAC: F0 22     BEQ bra_DDD0    ; jmp
bra_DDAE:
C - - - - - 0x001DBE 00:DDAE: 8A        TXA
C - - - - - 0x001DBF 00:DDAF: F0 10     BEQ bra_DDC1
C - - - - - 0x001DC1 00:DDB1: D0 1D     BNE bra_DDD0    ; jmp
bra_DDB3:
C - - - - - 0x001DC3 00:DDB3: AD 08 03  LDA ram_pos_Y_p1
C - - - - - 0x001DC6 00:DDB6: C9 A0     CMP #$A0
C - - - - - 0x001DC8 00:DDB8: B0 16     BCS bra_DDD0
C - - - - - 0x001DCA 00:DDBA: AD 03 05  LDA ram_random + 3
C - - - - - 0x001DCD 00:DDBD: 29 01     AND #$01
C - - - - - 0x001DCF 00:DDBF: F0 0F     BEQ bra_DDD0
bra_DDC1:
C - - - - - 0x001DD1 00:DDC1: A9 04     LDA #$04
C - - - - - 0x001DD3 00:DDC3: 85 84     STA ram_0084
loc_DDC5:
C D 2 - - - 0x001DD5 00:DDC5: AD 02 05  LDA ram_random + 2
C - - - - - 0x001DD8 00:DDC8: 29 01     AND #$01
C - - - - - 0x001DDA 00:DDCA: F0 0C     BEQ bra_DDD8
C - - - - - 0x001DDC 00:DDCC: E6 85     INC ram_0085
C - - - - - 0x001DDE 00:DDCE: D0 08     BNE bra_DDD8
bra_DDD0:
C - - - - - 0x001DE0 00:DDD0: A5 81     LDA ram_0081
C - - - - - 0x001DE2 00:DDD2: C9 0D     CMP #$0D
C - - - - - 0x001DE4 00:DDD4: 90 02     BCC bra_DDD8
C - - - - - 0x001DE6 00:DDD6: E6 85     INC ram_0085
bra_DDD8:
C - - - - - 0x001DE8 00:DDD8: A5 CE     LDA ram_00CE
C - - - - - 0x001DEA 00:DDDA: F0 0E     BEQ bra_DDEA
C - - - - - 0x001DEC 00:DDDC: A6 4C     LDX ram_level
C - - - - - 0x001DEE 00:DDDE: 20 56 C4  JSR sub_C456_roll_rng
C - - - - - 0x001DF1 00:DDE1: DD 06 DE  CMP tbl_DE06,X
C - - - - - 0x001DF4 00:DDE4: B0 14     BCS bra_DDFA
C - - - - - 0x001DF6 00:DDE6: A9 00     LDA #$00
C - - - - - 0x001DF8 00:DDE8: 85 CE     STA ram_00CE
bra_DDEA:
C - - - - - 0x001DFA 00:DDEA: 20 56 C4  JSR sub_C456_roll_rng
C - - - - - 0x001DFD 00:DDED: A0 00     LDY #$00
C - - - - - 0x001DFF 00:DDEF: A6 4C     LDX ram_level
C - - - - - 0x001E01 00:DDF1: DD 01 DE  CMP tbl_DE01,X
C - - - - - 0x001E04 00:DDF4: 90 01     BCC bra_DDF7
C - - - - - 0x001E06 00:DDF6: C8        INY
bra_DDF7:
C - - - - - 0x001E07 00:DDF7: 84 86     STY ram_0086
C - - - - - 0x001E09 00:DDF9: 60        RTS
bra_DDFA:
loc_DDFA:
C - - - - - 0x001E0A 00:DDFA: A9 00     LDA #$00
C - - - - - 0x001E0C 00:DDFC: 85 C9     STA ram_00C9
C - - - - - 0x001E0E 00:DDFE: 85 CE     STA ram_00CE
C - - - - - 0x001E10 00:DE00: 60        RTS



tbl_DE01:
- D 2 - - - 0x001E11 00:DE01: 20        .byte $20   ; 00
- - - - - - 0x001E12 00:DE02: 20        .byte $20   ; 01
- - - - - - 0x001E13 00:DE03: 0E        .byte $0E   ; 02
- - - - - - 0x001E14 00:DE04: 02        .byte $02   ; 03
- D 2 - - - 0x001E15 00:DE05: 01        .byte $01   ; 04



tbl_DE06:
- D 2 - - - 0x001E16 00:DE06: 30        .byte $30   ; 00
- - - - - - 0x001E17 00:DE07: 50        .byte $50   ; 01
- - - - - - 0x001E18 00:DE08: 70        .byte $70   ; 02
- - - - - - 0x001E19 00:DE09: 90        .byte $90   ; 03
- - - - - - 0x001E1A 00:DE0A: B0        .byte $B0   ; 04



sub_DE0B:
C - - - - - 0x001E1B 00:DE0B: 0A        ASL
C - - - - - 0x001E1C 00:DE0C: A8        TAY
C - - - - - 0x001E1D 00:DE0D: A9 41     LDA #< tbl_DE41
C - - - - - 0x001E1F 00:DE0F: 85 10     STA ram_0010
C - - - - - 0x001E21 00:DE11: A9 DE     LDA #> tbl_DE41
C - - - - - 0x001E23 00:DE13: 85 11     STA ram_0011
C - - - - - 0x001E25 00:DE15: B1 10     LDA (ram_0010),Y
C - - - - - 0x001E27 00:DE17: C5 B8     CMP ram_00B8
C - - - - - 0x001E29 00:DE19: F0 0A     BEQ bra_DE25
C - - - - - 0x001E2B 00:DE1B: B0 04     BCS bra_DE21
C - - - - - 0x001E2D 00:DE1D: A9 08     LDA #$08
C - - - - - 0x001E2F 00:DE1F: D0 06     BNE bra_DE27    ; jmp
bra_DE21:
C - - - - - 0x001E31 00:DE21: A9 04     LDA #$04
C - - - - - 0x001E33 00:DE23: D0 02     BNE bra_DE27    ; jmp
bra_DE25:
C - - - - - 0x001E35 00:DE25: A9 00     LDA #$00
bra_DE27:
C - - - - - 0x001E37 00:DE27: 85 15     STA ram_0015
C - - - - - 0x001E39 00:DE29: C8        INY
C - - - - - 0x001E3A 00:DE2A: B1 10     LDA (ram_0010),Y
C - - - - - 0x001E3C 00:DE2C: C5 B9     CMP ram_00B9
C - - - - - 0x001E3E 00:DE2E: F0 0A     BEQ bra_DE3A
C - - - - - 0x001E40 00:DE30: B0 04     BCS bra_DE36
C - - - - - 0x001E42 00:DE32: A9 02     LDA #$02
C - - - - - 0x001E44 00:DE34: D0 06     BNE bra_DE3C    ; jmp
bra_DE36:
C - - - - - 0x001E46 00:DE36: A9 01     LDA #$01
C - - - - - 0x001E48 00:DE38: D0 02     BNE bra_DE3C    ; jmp
bra_DE3A:
C - - - - - 0x001E4A 00:DE3A: A9 00     LDA #$00
bra_DE3C:
C - - - - - 0x001E4C 00:DE3C: 05 15     ORA ram_0015
C - - - - - 0x001E4E 00:DE3E: 85 C0     STA ram_00C0
C - - - - - 0x001E50 00:DE40: 60        RTS



tbl_DE41:
- D 2 - I - 0x001E51 00:DE41: 5C        .byte $5C, $8C   ; 00
- D 2 - I - 0x001E53 00:DE43: 5C        .byte $5C, $9C   ; 01
- D 2 - I - 0x001E55 00:DE45: 5C        .byte $5C, $64   ; 02
- D 2 - I - 0x001E57 00:DE47: 5C        .byte $5C, $74   ; 03
- D 2 - I - 0x001E59 00:DE49: 2C        .byte $2C, $8C   ; 04
- D 2 - I - 0x001E5B 00:DE4B: 2C        .byte $2C, $A0   ; 05
- D 2 - I - 0x001E5D 00:DE4D: 2C        .byte $2C, $60   ; 06
- D 2 - I - 0x001E5F 00:DE4F: 2C        .byte $2C, $74   ; 07



tbl_DE51:
- D 2 - I - 0x001E61 00:DE51: 34        .byte $34   ; 
- D 2 - I - 0x001E62 00:DE52: 67        .byte $67   ; 
- D 2 - I - 0x001E63 00:DE53: 67        .byte $67   ; 
- D 2 - I - 0x001E64 00:DE54: 67        .byte $67   ; 
- D 2 - I - 0x001E65 00:DE55: CD        .byte $CD   ; 
- D 2 - I - 0x001E66 00:DE56: FF        .byte $FF   ; 
- - - - - - 0x001E67 00:DE57: FF        .byte $FF   ; 
- - - - - - 0x001E68 00:DE58: FF        .byte $FF   ; 
- D 2 - I - 0x001E69 00:DE59: 00        .byte $00   ; 
- D 2 - I - 0x001E6A 00:DE5A: 34        .byte $34   ; 
- D 2 - I - 0x001E6B 00:DE5B: 67        .byte $67   ; 
- D 2 - I - 0x001E6C 00:DE5C: 67        .byte $67   ; 
- D 2 - I - 0x001E6D 00:DE5D: 67        .byte $67   ; 
- D 2 - I - 0x001E6E 00:DE5E: CD        .byte $CD   ; 
- D 2 - I - 0x001E6F 00:DE5F: FF        .byte $FF   ; 
- - - - - - 0x001E70 00:DE60: FF        .byte $FF   ; 
- D 2 - I - 0x001E71 00:DE61: 00        .byte $00   ; 
- D 2 - I - 0x001E72 00:DE62: 34        .byte $34   ; 
- D 2 - I - 0x001E73 00:DE63: 67        .byte $67   ; 
- D 2 - I - 0x001E74 00:DE64: 67        .byte $67   ; 
- D 2 - I - 0x001E75 00:DE65: 67        .byte $67   ; 
- D 2 - I - 0x001E76 00:DE66: 9A        .byte $9A   ; 
- D 2 - I - 0x001E77 00:DE67: FF        .byte $FF   ; 
- - - - - - 0x001E78 00:DE68: FF        .byte $FF   ; 
- - - - - - 0x001E79 00:DE69: 00        .byte $00   ; 
- - - - - - 0x001E7A 00:DE6A: 00        .byte $00   ; 
- - - - - - 0x001E7B 00:DE6B: 34        .byte $34   ; 
- - - - - - 0x001E7C 00:DE6C: 67        .byte $67   ; 
- - - - - - 0x001E7D 00:DE6D: 67        .byte $67   ; 
- - - - - - 0x001E7E 00:DE6E: 67        .byte $67   ; 
- - - - - - 0x001E7F 00:DE6F: 9A        .byte $9A   ; 
- - - - - - 0x001E80 00:DE70: FF        .byte $FF   ; 
- D 2 - I - 0x001E81 00:DE71: 1A        .byte $1A   ; 
- D 2 - I - 0x001E82 00:DE72: 1A        .byte $1A   ; 
- D 2 - I - 0x001E83 00:DE73: 1A        .byte $1A   ; 
- D 2 - I - 0x001E84 00:DE74: 1A        .byte $1A   ; 
- D 2 - I - 0x001E85 00:DE75: B3        .byte $B3   ; 
- D 2 - I - 0x001E86 00:DE76: E6        .byte $E6   ; 
- D 2 - I - 0x001E87 00:DE77: FF        .byte $FF   ; 
- - - - - - 0x001E88 00:DE78: FF        .byte $FF   ; 
- D 2 - I - 0x001E89 00:DE79: 00        .byte $00   ; 
- D 2 - I - 0x001E8A 00:DE7A: 1A        .byte $1A   ; 
- D 2 - I - 0x001E8B 00:DE7B: 1A        .byte $1A   ; 
- D 2 - I - 0x001E8C 00:DE7C: 1A        .byte $1A   ; 
- D 2 - I - 0x001E8D 00:DE7D: 34        .byte $34   ; 
- D 2 - I - 0x001E8E 00:DE7E: CD        .byte $CD   ; 
- D 2 - I - 0x001E8F 00:DE7F: FF        .byte $FF   ; 
- - - - - - 0x001E90 00:DE80: FF        .byte $FF   ; 
- D 2 - I - 0x001E91 00:DE81: 00        .byte $00   ; 
- D 2 - I - 0x001E92 00:DE82: 00        .byte $00   ; 
- D 2 - I - 0x001E93 00:DE83: 1A        .byte $1A   ; 
- D 2 - I - 0x001E94 00:DE84: 1A        .byte $1A   ; 
- D 2 - I - 0x001E95 00:DE85: 1A        .byte $1A   ; 
- D 2 - I - 0x001E96 00:DE86: 4D        .byte $4D   ; 
- D 2 - I - 0x001E97 00:DE87: E6        .byte $E6   ; 
- D 2 - I - 0x001E98 00:DE88: FF        .byte $FF   ; 
- D 2 - I - 0x001E99 00:DE89: 00        .byte $00   ; 
- D 2 - I - 0x001E9A 00:DE8A: 00        .byte $00   ; 
- D 2 - I - 0x001E9B 00:DE8B: 00        .byte $00   ; 
- D 2 - I - 0x001E9C 00:DE8C: 1A        .byte $1A   ; 
- D 2 - I - 0x001E9D 00:DE8D: 1A        .byte $1A   ; 
- D 2 - I - 0x001E9E 00:DE8E: 34        .byte $34   ; 
- D 2 - I - 0x001E9F 00:DE8F: 67        .byte $67   ; 
- D 2 - I - 0x001EA0 00:DE90: FF        .byte $FF   ; 
- - - - - - 0x001EA1 00:DE91: 34        .byte $34   ; 
- - - - - - 0x001EA2 00:DE92: 67        .byte $67   ; 
- - - - - - 0x001EA3 00:DE93: 80        .byte $80   ; 
- - - - - - 0x001EA4 00:DE94: 80        .byte $80   ; 
- - - - - - 0x001EA5 00:DE95: CD        .byte $CD   ; 
- - - - - - 0x001EA6 00:DE96: FF        .byte $FF   ; 
- - - - - - 0x001EA7 00:DE97: FF        .byte $FF   ; 
- - - - - - 0x001EA8 00:DE98: FF        .byte $FF   ; 
- - - - - - 0x001EA9 00:DE99: 00        .byte $00   ; 
- - - - - - 0x001EAA 00:DE9A: 34        .byte $34   ; 
- - - - - - 0x001EAB 00:DE9B: 67        .byte $67   ; 
- - - - - - 0x001EAC 00:DE9C: 80        .byte $80   ; 
- - - - - - 0x001EAD 00:DE9D: 80        .byte $80   ; 
- - - - - - 0x001EAE 00:DE9E: CD        .byte $CD   ; 
- - - - - - 0x001EAF 00:DE9F: FF        .byte $FF   ; 
- - - - - - 0x001EB0 00:DEA0: FF        .byte $FF   ; 
- - - - - - 0x001EB1 00:DEA1: 1A        .byte $1A   ; 
- - - - - - 0x001EB2 00:DEA2: 4D        .byte $4D   ; 
- - - - - - 0x001EB3 00:DEA3: 80        .byte $80   ; 
- - - - - - 0x001EB4 00:DEA4: 80        .byte $80   ; 
- - - - - - 0x001EB5 00:DEA5: 80        .byte $80   ; 
- - - - - - 0x001EB6 00:DEA6: B3        .byte $B3   ; 
- - - - - - 0x001EB7 00:DEA7: FF        .byte $FF   ; 
- - - - - - 0x001EB8 00:DEA8: FF        .byte $FF   ; 
- - - - - - 0x001EB9 00:DEA9: 00        .byte $00   ; 
- - - - - - 0x001EBA 00:DEAA: 1A        .byte $1A   ; 
- - - - - - 0x001EBB 00:DEAB: 4D        .byte $4D   ; 
- - - - - - 0x001EBC 00:DEAC: 80        .byte $80   ; 
- - - - - - 0x001EBD 00:DEAD: 80        .byte $80   ; 
- - - - - - 0x001EBE 00:DEAE: 80        .byte $80   ; 
- - - - - - 0x001EBF 00:DEAF: B3        .byte $B3   ; 
- - - - - - 0x001EC0 00:DEB0: FF        .byte $FF   ; 
- - - - - - 0x001EC1 00:DEB1: 1A        .byte $1A   ; 
- - - - - - 0x001EC2 00:DEB2: 34        .byte $34   ; 
- - - - - - 0x001EC3 00:DEB3: 34        .byte $34   ; 
- - - - - - 0x001EC4 00:DEB4: 34        .byte $34   ; 
- - - - - - 0x001EC5 00:DEB5: B3        .byte $B3   ; 
- - - - - - 0x001EC6 00:DEB6: E6        .byte $E6   ; 
- - - - - - 0x001EC7 00:DEB7: FF        .byte $FF   ; 
- - - - - - 0x001EC8 00:DEB8: FF        .byte $FF   ; 
- - - - - - 0x001EC9 00:DEB9: 00        .byte $00   ; 
- - - - - - 0x001ECA 00:DEBA: 1A        .byte $1A   ; 
- - - - - - 0x001ECB 00:DEBB: 34        .byte $34   ; 
- - - - - - 0x001ECC 00:DEBC: 34        .byte $34   ; 
- - - - - - 0x001ECD 00:DEBD: 4D        .byte $4D   ; 
- - - - - - 0x001ECE 00:DEBE: CD        .byte $CD   ; 
- - - - - - 0x001ECF 00:DEBF: FF        .byte $FF   ; 
- - - - - - 0x001ED0 00:DEC0: FF        .byte $FF   ; 
- - - - - - 0x001ED1 00:DEC1: 00        .byte $00   ; 
- - - - - - 0x001ED2 00:DEC2: 1A        .byte $1A   ; 
- - - - - - 0x001ED3 00:DEC3: 34        .byte $34   ; 
- - - - - - 0x001ED4 00:DEC4: 34        .byte $34   ; 
- - - - - - 0x001ED5 00:DEC5: 34        .byte $34   ; 
- - - - - - 0x001ED6 00:DEC6: 67        .byte $67   ; 
- - - - - - 0x001ED7 00:DEC7: E6        .byte $E6   ; 
- - - - - - 0x001ED8 00:DEC8: FF        .byte $FF   ; 
- - - - - - 0x001ED9 00:DEC9: 00        .byte $00   ; 
- - - - - - 0x001EDA 00:DECA: 00        .byte $00   ; 
- - - - - - 0x001EDB 00:DECB: 1A        .byte $1A   ; 
- - - - - - 0x001EDC 00:DECC: 34        .byte $34   ; 
- - - - - - 0x001EDD 00:DECD: 34        .byte $34   ; 
- - - - - - 0x001EDE 00:DECE: 4D        .byte $4D   ; 
- - - - - - 0x001EDF 00:DECF: 80        .byte $80   ; 
- - - - - - 0x001EE0 00:DED0: FF        .byte $FF   ; 
- - - - - - 0x001EE1 00:DED1: 34        .byte $34   ; 
- - - - - - 0x001EE2 00:DED2: 67        .byte $67   ; 
- - - - - - 0x001EE3 00:DED3: 80        .byte $80   ; 
- - - - - - 0x001EE4 00:DED4: 80        .byte $80   ; 
- - - - - - 0x001EE5 00:DED5: B3        .byte $B3   ; 
- - - - - - 0x001EE6 00:DED6: E6        .byte $E6   ; 
- - - - - - 0x001EE7 00:DED7: FF        .byte $FF   ; 
- - - - - - 0x001EE8 00:DED8: FF        .byte $FF   ; 
- - - - - - 0x001EE9 00:DED9: 00        .byte $00   ; 
- - - - - - 0x001EEA 00:DEDA: 34        .byte $34   ; 
- - - - - - 0x001EEB 00:DEDB: 67        .byte $67   ; 
- - - - - - 0x001EEC 00:DEDC: 80        .byte $80   ; 
- - - - - - 0x001EED 00:DEDD: 9A        .byte $9A   ; 
- - - - - - 0x001EEE 00:DEDE: CD        .byte $CD   ; 
- - - - - - 0x001EEF 00:DEDF: FF        .byte $FF   ; 
- - - - - - 0x001EF0 00:DEE0: FF        .byte $FF   ; 
- - - - - - 0x001EF1 00:DEE1: 1A        .byte $1A   ; 
- - - - - - 0x001EF2 00:DEE2: 4D        .byte $4D   ; 
- - - - - - 0x001EF3 00:DEE3: 80        .byte $80   ; 
- - - - - - 0x001EF4 00:DEE4: 80        .byte $80   ; 
- - - - - - 0x001EF5 00:DEE5: 80        .byte $80   ; 
- - - - - - 0x001EF6 00:DEE6: B3        .byte $B3   ; 
- - - - - - 0x001EF7 00:DEE7: E6        .byte $E6   ; 
- - - - - - 0x001EF8 00:DEE8: FF        .byte $FF   ; 
- - - - - - 0x001EF9 00:DEE9: 00        .byte $00   ; 
- - - - - - 0x001EFA 00:DEEA: 1A        .byte $1A   ; 
- - - - - - 0x001EFB 00:DEEB: 4D        .byte $4D   ; 
- - - - - - 0x001EFC 00:DEEC: 80        .byte $80   ; 
- - - - - - 0x001EFD 00:DEED: 80        .byte $80   ; 
- - - - - - 0x001EFE 00:DEEE: 9A        .byte $9A   ; 
- - - - - - 0x001EFF 00:DEEF: CD        .byte $CD   ; 
- - - - - - 0x001F00 00:DEF0: FF        .byte $FF   ; 
- - - - - - 0x001F01 00:DEF1: 00        .byte $00   ; 
- - - - - - 0x001F02 00:DEF2: 1A        .byte $1A   ; 
- - - - - - 0x001F03 00:DEF3: 34        .byte $34   ; 
- - - - - - 0x001F04 00:DEF4: 34        .byte $34   ; 
- - - - - - 0x001F05 00:DEF5: 9A        .byte $9A   ; 
- - - - - - 0x001F06 00:DEF6: CD        .byte $CD   ; 
- - - - - - 0x001F07 00:DEF7: E6        .byte $E6   ; 
- - - - - - 0x001F08 00:DEF8: FF        .byte $FF   ; 
- - - - - - 0x001F09 00:DEF9: 00        .byte $00   ; 
- - - - - - 0x001F0A 00:DEFA: 1A        .byte $1A   ; 
- - - - - - 0x001F0B 00:DEFB: 34        .byte $34   ; 
- - - - - - 0x001F0C 00:DEFC: 34        .byte $34   ; 
- - - - - - 0x001F0D 00:DEFD: 4D        .byte $4D   ; 
- - - - - - 0x001F0E 00:DEFE: B3        .byte $B3   ; 
- - - - - - 0x001F0F 00:DEFF: E6        .byte $E6   ; 
- - - - - - 0x001F10 00:DF00: FF        .byte $FF   ; 
- - - - - - 0x001F11 00:DF01: 00        .byte $00   ; 
- - - - - - 0x001F12 00:DF02: 1A        .byte $1A   ; 
- - - - - - 0x001F13 00:DF03: 34        .byte $34   ; 
- - - - - - 0x001F14 00:DF04: 34        .byte $34   ; 
- - - - - - 0x001F15 00:DF05: 4D        .byte $4D   ; 
- - - - - - 0x001F16 00:DF06: 80        .byte $80   ; 
- - - - - - 0x001F17 00:DF07: E6        .byte $E6   ; 
- - - - - - 0x001F18 00:DF08: FF        .byte $FF   ; 
- - - - - - 0x001F19 00:DF09: 00        .byte $00   ; 
- - - - - - 0x001F1A 00:DF0A: 1A        .byte $1A   ; 
- - - - - - 0x001F1B 00:DF0B: 34        .byte $34   ; 
- - - - - - 0x001F1C 00:DF0C: 34        .byte $34   ; 
- - - - - - 0x001F1D 00:DF0D: 4D        .byte $4D   ; 
- - - - - - 0x001F1E 00:DF0E: 67        .byte $67   ; 
- - - - - - 0x001F1F 00:DF0F: FF        .byte $FF   ; 
- - - - - - 0x001F20 00:DF10: 34        .byte $34   ; 
- - - - - - 0x001F21 00:DF11: 67        .byte $67   ; 
- - - - - - 0x001F22 00:DF12: 80        .byte $80   ; 
- - - - - - 0x001F23 00:DF13: 80        .byte $80   ; 
- - - - - - 0x001F24 00:DF14: B3        .byte $B3   ; 
- - - - - - 0x001F25 00:DF15: E6        .byte $E6   ; 
- - - - - - 0x001F26 00:DF16: FF        .byte $FF   ; 
- - - - - - 0x001F27 00:DF17: FF        .byte $FF   ; 
- - - - - - 0x001F28 00:DF18: 00        .byte $00   ; 
- - - - - - 0x001F29 00:DF19: 34        .byte $34   ; 
- - - - - - 0x001F2A 00:DF1A: 67        .byte $67   ; 
- - - - - - 0x001F2B 00:DF1B: 80        .byte $80   ; 
- - - - - - 0x001F2C 00:DF1C: 9A        .byte $9A   ; 
- - - - - - 0x001F2D 00:DF1D: CD        .byte $CD   ; 
- - - - - - 0x001F2E 00:DF1E: FF        .byte $FF   ; 
- - - - - - 0x001F2F 00:DF1F: FF        .byte $FF   ; 
- - - - - - 0x001F30 00:DF20: 1A        .byte $1A   ; 
- - - - - - 0x001F31 00:DF21: 4D        .byte $4D   ; 
- - - - - - 0x001F32 00:DF22: 80        .byte $80   ; 
- - - - - - 0x001F33 00:DF23: 80        .byte $80   ; 
- - - - - - 0x001F34 00:DF24: 80        .byte $80   ; 
- - - - - - 0x001F35 00:DF25: B3        .byte $B3   ; 
- - - - - - 0x001F36 00:DF26: FF        .byte $FF   ; 
- - - - - - 0x001F37 00:DF27: 00        .byte $00   ; 
- - - - - - 0x001F38 00:DF28: 1A        .byte $1A   ; 
- - - - - - 0x001F39 00:DF29: 4D        .byte $4D   ; 
- - - - - - 0x001F3A 00:DF2A: 80        .byte $80   ; 
- - - - - - 0x001F3B 00:DF2B: 80        .byte $80   ; 
- - - - - - 0x001F3C 00:DF2C: 9A        .byte $9A   ; 
- - - - - - 0x001F3D 00:DF2D: CD        .byte $CD   ; 
- - - - - - 0x001F3E 00:DF2E: FF        .byte $FF   ; 
- - - - - - 0x001F3F 00:DF2F: 1A        .byte $1A   ; 
- - - - - - 0x001F40 00:DF30: 34        .byte $34   ; 
- - - - - - 0x001F41 00:DF31: 4D        .byte $4D   ; 
- - - - - - 0x001F42 00:DF32: 4D        .byte $4D   ; 
- - - - - - 0x001F43 00:DF33: 9A        .byte $9A   ; 
- - - - - - 0x001F44 00:DF34: CD        .byte $CD   ; 
- - - - - - 0x001F45 00:DF35: E6        .byte $E6   ; 
- - - - - - 0x001F46 00:DF36: FF        .byte $FF   ; 
- - - - - - 0x001F47 00:DF37: 1A        .byte $1A   ; 
- - - - - - 0x001F48 00:DF38: 34        .byte $34   ; 
- - - - - - 0x001F49 00:DF39: 4D        .byte $4D   ; 
- - - - - - 0x001F4A 00:DF3A: 4D        .byte $4D   ; 
- - - - - - 0x001F4B 00:DF3B: 67        .byte $67   ; 
- - - - - - 0x001F4C 00:DF3C: B3        .byte $B3   ; 
- - - - - - 0x001F4D 00:DF3D: E6        .byte $E6   ; 
- - - - - - 0x001F4E 00:DF3E: FF        .byte $FF   ; 
- - - - - - 0x001F4F 00:DF3F: 00        .byte $00   ; 
- - - - - - 0x001F50 00:DF40: 1A        .byte $1A   ; 
- - - - - - 0x001F51 00:DF41: 34        .byte $34   ; 
- - - - - - 0x001F52 00:DF42: 4D        .byte $4D   ; 
- - - - - - 0x001F53 00:DF43: 67        .byte $67   ; 
- - - - - - 0x001F54 00:DF44: 9A        .byte $9A   ; 
- - - - - - 0x001F55 00:DF45: E6        .byte $E6   ; 
- - - - - - 0x001F56 00:DF46: FF        .byte $FF   ; 
- - - - - - 0x001F57 00:DF47: 00        .byte $00   ; 
- - - - - - 0x001F58 00:DF48: 1A        .byte $1A   ; 
- - - - - - 0x001F59 00:DF49: 34        .byte $34   ; 
- - - - - - 0x001F5A 00:DF4A: 4D        .byte $4D   ; 
- - - - - - 0x001F5B 00:DF4B: 67        .byte $67   ; 
- - - - - - 0x001F5C 00:DF4C: 80        .byte $80   ; 
- - - - - - 0x001F5D 00:DF4D: B3        .byte $B3   ; 
- - - - - - 0x001F5E 00:DF4E: FF        .byte $FF   ; 
- - - - - - 0x001F5F 00:DF4F: 34        .byte $34   ; 
- - - - - - 0x001F60 00:DF50: 4D        .byte $4D   ; 
- - - - - - 0x001F61 00:DF51: 67        .byte $67   ; 
- - - - - - 0x001F62 00:DF52: 80        .byte $80   ; 
- - - - - - 0x001F63 00:DF53: B3        .byte $B3   ; 
- - - - - - 0x001F64 00:DF54: CD        .byte $CD   ; 
- - - - - - 0x001F65 00:DF55: E6        .byte $E6   ; 
- - - - - - 0x001F66 00:DF56: FF        .byte $FF   ; 
- - - - - - 0x001F67 00:DF57: 1A        .byte $1A   ; 
- - - - - - 0x001F68 00:DF58: 4D        .byte $4D   ; 
- D 2 - I - 0x001F69 00:DF59: 67        .byte $67   ; 
- D 2 - I - 0x001F6A 00:DF5A: 80        .byte $80   ; 
- D 2 - I - 0x001F6B 00:DF5B: 9A        .byte $9A   ; 
- D 2 - I - 0x001F6C 00:DF5C: CD        .byte $CD   ; 
- D 2 - I - 0x001F6D 00:DF5D: E6        .byte $E6   ; 
- D 2 - I - 0x001F6E 00:DF5E: FF        .byte $FF   ; 
- - - - - - 0x001F6F 00:DF5F: 1A        .byte $1A   ; 
- - - - - - 0x001F70 00:DF60: 34        .byte $34   ; 
- D 2 - I - 0x001F71 00:DF61: 67        .byte $67   ; 
- D 2 - I - 0x001F72 00:DF62: 80        .byte $80   ; 
- D 2 - I - 0x001F73 00:DF63: 9A        .byte $9A   ; 
- D 2 - I - 0x001F74 00:DF64: B3        .byte $B3   ; 
- D 2 - I - 0x001F75 00:DF65: E6        .byte $E6   ; 
- - - - - - 0x001F76 00:DF66: FF        .byte $FF   ; 
- - - - - - 0x001F77 00:DF67: 1A        .byte $1A   ; 
- - - - - - 0x001F78 00:DF68: 34        .byte $34   ; 
- - - - - - 0x001F79 00:DF69: 4D        .byte $4D   ; 
- - - - - - 0x001F7A 00:DF6A: 80        .byte $80   ; 
- - - - - - 0x001F7B 00:DF6B: 9A        .byte $9A   ; 
- - - - - - 0x001F7C 00:DF6C: B3        .byte $B3   ; 
- - - - - - 0x001F7D 00:DF6D: CD        .byte $CD   ; 
- - - - - - 0x001F7E 00:DF6E: FF        .byte $FF   ; 
- - - - - - 0x001F7F 00:DF6F: 1A        .byte $1A   ; 
- - - - - - 0x001F80 00:DF70: 34        .byte $34   ; 
- D 2 - I - 0x001F81 00:DF71: 4D        .byte $4D   ; 
- D 2 - I - 0x001F82 00:DF72: 67        .byte $67   ; 
- D 2 - I - 0x001F83 00:DF73: 9A        .byte $9A   ; 
- D 2 - I - 0x001F84 00:DF74: B3        .byte $B3   ; 
- D 2 - I - 0x001F85 00:DF75: CD        .byte $CD   ; 
- D 2 - I - 0x001F86 00:DF76: FF        .byte $FF   ; 
- - - - - - 0x001F87 00:DF77: 1A        .byte $1A   ; 
- - - - - - 0x001F88 00:DF78: 34        .byte $34   ; 
- D 2 - I - 0x001F89 00:DF79: 4D        .byte $4D   ; 
- D 2 - I - 0x001F8A 00:DF7A: 67        .byte $67   ; 
- D 2 - I - 0x001F8B 00:DF7B: 80        .byte $80   ; 
- D 2 - I - 0x001F8C 00:DF7C: B3        .byte $B3   ; 
- D 2 - I - 0x001F8D 00:DF7D: CD        .byte $CD   ; 
- D 2 - I - 0x001F8E 00:DF7E: FF        .byte $FF   ; 
- - - - - - 0x001F8F 00:DF7F: 1A        .byte $1A   ; 
- - - - - - 0x001F90 00:DF80: 34        .byte $34   ; 
- D 2 - I - 0x001F91 00:DF81: 4D        .byte $4D   ; 
- D 2 - I - 0x001F92 00:DF82: 67        .byte $67   ; 
- D 2 - I - 0x001F93 00:DF83: 9A        .byte $9A   ; 
- D 2 - I - 0x001F94 00:DF84: B3        .byte $B3   ; 
- D 2 - I - 0x001F95 00:DF85: E6        .byte $E6   ; 
- - - - - - 0x001F96 00:DF86: FF        .byte $FF   ; 
- - - - - - 0x001F97 00:DF87: 1A        .byte $1A   ; 
- - - - - - 0x001F98 00:DF88: 34        .byte $34   ; 
- - - - - - 0x001F99 00:DF89: 4D        .byte $4D   ; 
- - - - - - 0x001F9A 00:DF8A: 67        .byte $67   ; 
- - - - - - 0x001F9B 00:DF8B: 9A        .byte $9A   ; 
- - - - - - 0x001F9C 00:DF8C: B3        .byte $B3   ; 
- - - - - - 0x001F9D 00:DF8D: CD        .byte $CD   ; 
- - - - - - 0x001F9E 00:DF8E: FF        .byte $FF   ; 



sub_DF8F:
C - - - - - 0x001F9F 00:DF8F: A9 00     LDA #$00
C - - - - - 0x001FA1 00:DF91: 85 C9     STA ram_00C9
C - - - - - 0x001FA3 00:DF93: A5 B8     LDA ram_00B8
C - - - - - 0x001FA5 00:DF95: 24 8D     BIT ram_008D
C - - - - - 0x001FA7 00:DF97: 50 04     BVC bra_DF9D
C - - - - - 0x001FA9 00:DF99: C9 44     CMP #$44
C - - - - - 0x001FAB 00:DF9B: B0 57     BCS bra_DFF4_RTS
bra_DF9D:
C - - - - - 0x001FAD 00:DF9D: C9 50     CMP #$50
C - - - - - 0x001FAF 00:DF9F: B0 3E     BCS bra_DFDF
C - - - - - 0x001FB1 00:DFA1: A5 B9     LDA ram_00B9
C - - - - - 0x001FB3 00:DFA3: 38        SEC
C - - - - - 0x001FB4 00:DFA4: E5 8A     SBC ram_008A
C - - - - - 0x001FB6 00:DFA6: B0 04     BCS bra_DFAC
C - - - - - 0x001FB8 00:DFA8: 49 FF     EOR #$FF
C - - - - - 0x001FBA 00:DFAA: 69 01     ADC #$01
bra_DFAC:
C - - - - - 0x001FBC 00:DFAC: 85 15     STA ram_0015
C - - - - - 0x001FBE 00:DFAE: A6 4C     LDX ram_level
C - - - - - 0x001FC0 00:DFB0: A5 8D     LDA ram_008D
C - - - - - 0x001FC2 00:DFB2: 29 02     AND #$02
C - - - - - 0x001FC4 00:DFB4: F0 03     BEQ bra_DFB9
C - - - - - 0x001FC6 00:DFB6: 18        CLC
C - - - - - 0x001FC7 00:DFB7: 69 05     ADC #$05
bra_DFB9:
; bzk optimize, LDY 004C right here instead of LDX 004C above + TXA TAY here
; even better do it right before 0x001FDA
; since you don't need Y until then to save cycles in case of BCC to RTS
C - - - - - 0x001FC9 00:DFB9: 8A        TXA
C - - - - - 0x001FCA 00:DFBA: A8        TAY
C - - - - - 0x001FCB 00:DFBB: 0A        ASL
C - - - - - 0x001FCC 00:DFBC: AA        TAX
C - - - - - 0x001FCD 00:DFBD: BD 44 E0  LDA tbl_E044,X
C - - - - - 0x001FD0 00:DFC0: E8        INX
C - - - - - 0x001FD1 00:DFC1: C5 15     CMP ram_0015
C - - - - - 0x001FD3 00:DFC3: 90 2F     BCC bra_DFF4_RTS
C - - - - - 0x001FD5 00:DFC5: A5 B8     LDA ram_00B8
C - - - - - 0x001FD7 00:DFC7: 7D 44 E0  ADC tbl_E044,X
C - - - - - 0x001FDA 00:DFCA: F9 58 E0  SBC tbl_E058,Y
C - - - - - 0x001FDD 00:DFCD: 38        SEC
C - - - - - 0x001FDE 00:DFCE: E5 8B     SBC ram_008B
C - - - - - 0x001FE0 00:DFD0: B0 04     BCS bra_DFD6
C - - - - - 0x001FE2 00:DFD2: 49 FF     EOR #$FF
C - - - - - 0x001FE4 00:DFD4: 69 01     ADC #$01
bra_DFD6:
C - - - - - 0x001FE6 00:DFD6: 85 15     STA ram_0015
C - - - - - 0x001FE8 00:DFD8: BD 44 E0  LDA tbl_E044,X
C - - - - - 0x001FEB 00:DFDB: C5 15     CMP ram_0015
C - - - - - 0x001FED 00:DFDD: 90 15     BCC bra_DFF4_RTS
bra_DFDF:
C - - - - - 0x001FEF 00:DFDF: A5 AB     LDA ram_00AB
C - - - - - 0x001FF1 00:DFE1: D0 0F     BNE bra_DFF2
C - - - - - 0x001FF3 00:DFE3: AD 59 03  LDA ram_0359
C - - - - - 0x001FF6 00:DFE6: F0 0A     BEQ bra_DFF2
C - - - - - 0x001FF8 00:DFE8: 20 56 C4  JSR sub_C456_roll_rng
C - - - - - 0x001FFB 00:DFEB: C9 A0     CMP #$A0
C - - - - - 0x001FFD 00:DFED: 90 05     BCC bra_DFF4_RTS
C - - - - - 0x001FFF 00:DFEF: CE 59 03  DEC ram_0359
bra_DFF2:
C - - - - - 0x002002 00:DFF2: E6 C9     INC ram_00C9
bra_DFF4_RTS:
C - - - - - 0x002004 00:DFF4: 60        RTS



sub_DFF5:
C - - - - - 0x002005 00:DFF5: A5 84     LDA ram_0084
C - - - - - 0x002007 00:DFF7: D0 27     BNE bra_E020_RTS
C - - - - - 0x002009 00:DFF9: A5 4C     LDA ram_level
C - - - - - 0x00200B 00:DFFB: C9 03     CMP #$03
C - - - - - 0x00200D 00:DFFD: 90 21     BCC bra_E020_RTS
- - - - - - 0x00200F 00:DFFF: A2 00     LDX #$00
- - - - - - 0x002011 00:E001: A0 01     LDY #$01
- - - - - - 0x002013 00:E003: A5 C9     LDA ram_00C9
- - - - - - 0x002015 00:E005: D0 0D     BNE bra_E014
- - - - - - 0x002017 00:E007: A5 CC     LDA ram_00CC
- - - - - - 0x002019 00:E009: C9 05     CMP #$05
- - - - - - 0x00201B 00:E00B: 90 13     BCC bra_E020_RTS
- - - - - - 0x00201D 00:E00D: 84 C9     STY ram_00C9
- - - - - - 0x00201F 00:E00F: 8E 59 03  STX ram_0359
- - - - - - 0x002022 00:E012: B0 0C     BCS bra_E020_RTS
bra_E014:
- - - - - - 0x002024 00:E014: AD 5C 03  LDA ram_035C
- - - - - - 0x002027 00:E017: C9 05     CMP #$05
- - - - - - 0x002029 00:E019: 90 05     BCC bra_E020_RTS
- - - - - - 0x00202B 00:E01B: 8C 59 03  STY ram_0359
- - - - - - 0x00202E 00:E01E: 86 C9     STX ram_00C9
bra_E020_RTS:
C - - - - - 0x002030 00:E020: 60        RTS



sub_E021:
C - - - - - 0x002031 00:E021: 18        CLC
C - - - - - 0x002032 00:E022: 65 4C     ADC ram_level
C - - - - - 0x002034 00:E024: AA        TAX
C - - - - - 0x002035 00:E025: BD 2B E0  LDA tbl_E02B,X
C - - - - - 0x002038 00:E028: 85 C1     STA ram_00C1
C - - - - - 0x00203A 00:E02A: 60        RTS



tbl_E02B:
; 00
- D 3 - - - 0x00203B 00:E02B: 04        .byte $04   ; 00
- D 3 - - - 0x00203C 00:E02C: 06        .byte $06   ; 01
- - - - - - 0x00203D 00:E02D: 08        .byte $08   ; 02
- - - - - - 0x00203E 00:E02E: 0B        .byte $0B   ; 03
- D 3 - - - 0x00203F 00:E02F: 0E        .byte $0E   ; 04
; 05
- D 3 - - - 0x002040 00:E030: 03        .byte $03   ; 00
- - - - - - 0x002041 00:E031: 05        .byte $05   ; 01
- - - - - - 0x002042 00:E032: 06        .byte $06   ; 02
- - - - - - 0x002043 00:E033: 08        .byte $08   ; 03
- D 3 - - - 0x002044 00:E034: 0B        .byte $0B   ; 04
; 0A
- D 3 - - - 0x002045 00:E035: 06        .byte $06   ; 00
- - - - - - 0x002046 00:E036: 07        .byte $07   ; 01
- - - - - - 0x002047 00:E037: 08        .byte $08   ; 02
- - - - - - 0x002048 00:E038: 09        .byte $09   ; 03
- D 3 - - - 0x002049 00:E039: 0A        .byte $0A   ; 04
; 0F
- D 3 - - - 0x00204A 00:E03A: 04        .byte $04   ; 00
- - - - - - 0x00204B 00:E03B: 05        .byte $05   ; 01
- - - - - - 0x00204C 00:E03C: 06        .byte $06   ; 02
- - - - - - 0x00204D 00:E03D: 08        .byte $08   ; 03
- D 3 - - - 0x00204E 00:E03E: 0A        .byte $0A   ; 04
; 14
- D 3 - - - 0x00204F 00:E03F: 01        .byte $01   ; 00
- - - - - - 0x002050 00:E040: 02        .byte $02   ; 01
- - - - - - 0x002051 00:E041: 02        .byte $02   ; 02
- - - - - - 0x002052 00:E042: 04        .byte $04   ; 03
- D 3 - - - 0x002053 00:E043: 06        .byte $06   ; 04



tbl_E044:
; 00
- D 3 - - - 0x002054 00:E044: 20        .byte $20   ; 
- D 3 - - - 0x002055 00:E045: 20        .byte $20   ; 
; 01
- D 3 - - - 0x002056 00:E046: 34        .byte $34   ; 
- D 3 - - - 0x002057 00:E047: 24        .byte $24   ; 
; 02
- - - - - - 0x002058 00:E048: 40        .byte $40   ; 
- - - - - - 0x002059 00:E049: 28        .byte $28   ; 
; 03
- - - - - - 0x00205A 00:E04A: 48        .byte $48   ; 
- - - - - - 0x00205B 00:E04B: 2C        .byte $2C   ; 
; 04
- D 3 - - - 0x00205C 00:E04C: 50        .byte $50   ; 
- D 3 - - - 0x00205D 00:E04D: 32        .byte $32   ; 
; 05
- - - - - - 0x00205E 00:E04E: 30        .byte $30   ; 
- - - - - - 0x00205F 00:E04F: 24        .byte $24   ; 
; 06
- - - - - - 0x002060 00:E050: 40        .byte $40   ; 
- - - - - - 0x002061 00:E051: 28        .byte $28   ; 
; 07
- - - - - - 0x002062 00:E052: 50        .byte $50   ; 
- - - - - - 0x002063 00:E053: 2C        .byte $2C   ; 
; 08
- - - - - - 0x002064 00:E054: 60        .byte $60   ; 
- - - - - - 0x002065 00:E055: 32        .byte $32   ; 
; 09
- - - - - - 0x002066 00:E056: 80        .byte $80   ; 
- - - - - - 0x002067 00:E057: 38        .byte $38   ; 



tbl_E058:
- D 3 - - - 0x002068 00:E058: 08        .byte $08   ; 00
- D 3 - - - 0x002069 00:E059: 0E        .byte $0E   ; 01
- - - - - - 0x00206A 00:E05A: 1C        .byte $1C   ; 02
- - - - - - 0x00206B 00:E05B: 24        .byte $24   ; 03
- D 3 - - - 0x00206C 00:E05C: 2C        .byte $2C   ; 04
- - - - - - 0x00206D 00:E05D: 0A        .byte $0A   ; 05
- - - - - - 0x00206E 00:E05E: 10        .byte $10   ; 06
- - - - - - 0x00206F 00:E05F: 1C        .byte $1C   ; 07
- - - - - - 0x002070 00:E060: 24        .byte $24   ; 08
- - - - - - 0x002071 00:E061: 2C        .byte $2C   ; 09


; bzk garbage
- - - - - - 0x002072 00:E062: A5 15     LDA ram_0015
- - - - - - 0x002074 00:E064: 85 9B     STA ram_009B
- - - - - - 0x002076 00:E066: A5 14     LDA ram_0014
- - - - - - 0x002078 00:E068: 85 9C     STA ram_009C
- - - - - - 0x00207A 00:E06A: 20 F3 C6  JSR sub_C6F3
- - - - - - 0x00207D 00:E06D: A5 9B     LDA ram_009B
- - - - - - 0x00207F 00:E06F: 85 15     STA ram_0015
- - - - - - 0x002081 00:E071: A5 9C     LDA ram_009C
- - - - - - 0x002083 00:E073: 85 14     STA ram_0014
- - - - - - 0x002085 00:E075: 60        RTS



sub_E076:
C - - - - - 0x002086 00:E076: A9 80     LDA #< ram_0380
C - - - - - 0x002088 00:E078: 85 A8     STA ram_00A8
C - - - - - 0x00208A 00:E07A: A9 03     LDA #> ram_0380
C - - - - - 0x00208C 00:E07C: 85 A9     STA ram_00A9
C - - - - - 0x00208E 00:E07E: A9 00     LDA #$00
C - - - - - 0x002090 00:E080: 85 AA     STA ram_00AA
C - - - - - 0x002092 00:E082: 20 F3 C1  JSR sub_C1F3
C - - - - - 0x002095 00:E085: A5 B0     LDA ram_00B0
C - - - - - 0x002097 00:E087: F0 31     BEQ bra_E0BA_RTS
C - - - - - 0x002099 00:E089: 20 46 E1  JSR sub_E146
C - - - - - 0x00209C 00:E08C: 20 1C C2  JSR sub_C21C_sprites_handler
C - - - - - 0x00209F 00:E08F: 20 0E C2  JSR sub_C20E
C - - - - - 0x0020A2 00:E092: 20 06 C2  JSR sub_C206
C - - - - - 0x0020A5 00:E095: 20 F3 C1  JSR sub_C1F3
C - - - - - 0x0020A8 00:E098: 20 99 C4  JSR sub_C499
C - - - - - 0x0020AB 00:E09B: AD 86 03  LDA ram_0386
C - - - - - 0x0020AE 00:E09E: C9 3E     CMP #$3E
C - - - - - 0x0020B0 00:E0A0: F0 0A     BEQ bra_E0AC
C - - - - - 0x0020B2 00:E0A2: C9 2F     CMP #$2F
C - - - - - 0x0020B4 00:E0A4: 18        CLC
C - - - - - 0x0020B5 00:E0A5: D0 01     BNE bra_E0A8
C - - - - - 0x0020B7 00:E0A7: 38        SEC
bra_E0A8:
C - - - - - 0x0020B8 00:E0A8: 69 04     ADC #$04
C - - - - - 0x0020BA 00:E0AA: 85 B6     STA ram_00B6
bra_E0AC:
C - - - - - 0x0020BC 00:E0AC: A5 B8     LDA ram_00B8
C - - - - - 0x0020BE 00:E0AE: 85 71     STA ram_0071
C - - - - - 0x0020C0 00:E0B0: A5 B9     LDA ram_00B9
C - - - - - 0x0020C2 00:E0B2: 85 70     STA ram_0070
C - - - - - 0x0020C4 00:E0B4: 20 1C C2  JSR sub_C21C_sprites_handler
C - - - - - 0x0020C7 00:E0B7: 20 0E C2  JSR sub_C20E
bra_E0BA_RTS:
C - - - - - 0x0020CA 00:E0BA: 60        RTS



sub_E0BB:
C - - - - - 0x0020CB 00:E0BB: A5 86     LDA ram_0086
C - - - - - 0x0020CD 00:E0BD: C9 01     CMP #$01
C - - - - - 0x0020CF 00:E0BF: D0 14     BNE bra_E0D5_RTS
C - - - - - 0x0020D1 00:E0C1: A5 B6     LDA ram_00B6
C - - - - - 0x0020D3 00:E0C3: C9 3E     CMP #$3E
C - - - - - 0x0020D5 00:E0C5: F0 0A     BEQ bra_E0D1
C - - - - - 0x0020D7 00:E0C7: A5 C1     LDA ram_00C1
C - - - - - 0x0020D9 00:E0C9: C9 03     CMP #$03
C - - - - - 0x0020DB 00:E0CB: B0 04     BCS bra_E0D1
C - - - - - 0x0020DD 00:E0CD: A5 79     LDA ram_mario_message
C - - - - - 0x0020DF 00:E0CF: F0 04     BEQ bra_E0D5_RTS
bra_E0D1:
C - - - - - 0x0020E1 00:E0D1: A0 00     LDY #$00
C - - - - - 0x0020E3 00:E0D3: 84 86     STY ram_0086
bra_E0D5_RTS:
C - - - - - 0x0020E5 00:E0D5: 60        RTS



sub_E0D6:
C - - - - - 0x0020E6 00:E0D6: AD A8 03  LDA ram_03A8
C - - - - - 0x0020E9 00:E0D9: 85 89     STA ram_0089
C - - - - - 0x0020EB 00:E0DB: AD A9 03  LDA ram_03A9
C - - - - - 0x0020EE 00:E0DE: 85 88     STA ram_0088
C - - - - - 0x0020F0 00:E0E0: A5 63     LDA ram_0063
C - - - - - 0x0020F2 00:E0E2: 48        PHA
C - - - - - 0x0020F3 00:E0E3: A5 64     LDA ram_0064
C - - - - - 0x0020F5 00:E0E5: 48        PHA
C - - - - - 0x0020F6 00:E0E6: A5 68     LDA ram_0068
C - - - - - 0x0020F8 00:E0E8: 48        PHA
C - - - - - 0x0020F9 00:E0E9: A5 69     LDA ram_0069
C - - - - - 0x0020FB 00:E0EB: 48        PHA
C - - - - - 0x0020FC 00:E0EC: A5 B8     LDA ram_00B8
C - - - - - 0x0020FE 00:E0EE: 48        PHA
C - - - - - 0x0020FF 00:E0EF: A5 B9     LDA ram_00B9
C - - - - - 0x002101 00:E0F1: 48        PHA
C - - - - - 0x002102 00:E0F2: A5 61     LDA ram_0061
C - - - - - 0x002104 00:E0F4: 85 9B     STA ram_009B
C - - - - - 0x002106 00:E0F6: A9 00     LDA #$00
C - - - - - 0x002108 00:E0F8: 85 9C     STA ram_009C
C - - - - - 0x00210A 00:E0FA: 85 98     STA ram_0098
C - - - - - 0x00210C 00:E0FC: 85 9D     STA ram_009D
C - - - - - 0x00210E 00:E0FE: 85 9E     STA ram_009E
C - - - - - 0x002110 00:E100: 20 ED C6  JSR sub_C6ED
C - - - - - 0x002113 00:E103: A5 9B     LDA ram_009B
C - - - - - 0x002115 00:E105: 85 99     STA ram_0099
C - - - - - 0x002117 00:E107: A5 01     LDA ram_0001
C - - - - - 0x002119 00:E109: 85 9F     STA ram_009F
C - - - - - 0x00211B 00:E10B: A5 02     LDA ram_0002
C - - - - - 0x00211D 00:E10D: 85 A0     STA ram_00A0
C - - - - - 0x00211F 00:E10F: 20 2B C6  JSR sub_C62B
C - - - - - 0x002122 00:E112: 20 05 C7  JSR sub_C705
C - - - - - 0x002125 00:E115: A5 80     LDA ram_0080
C - - - - - 0x002127 00:E117: 18        CLC
C - - - - - 0x002128 00:E118: 65 9B     ADC ram_009B
C - - - - - 0x00212A 00:E11A: 85 63     STA ram_0063
C - - - - - 0x00212C 00:E11C: A5 81     LDA ram_0081
C - - - - - 0x00212E 00:E11E: 85 64     STA ram_0064
C - - - - - 0x002130 00:E120: A5 82     LDA ram_0082
C - - - - - 0x002132 00:E122: 85 68     STA ram_0068
C - - - - - 0x002134 00:E124: A5 83     LDA ram_0083
C - - - - - 0x002136 00:E126: 85 69     STA ram_0069
C - - - - - 0x002138 00:E128: 20 99 C4  JSR sub_C499
C - - - - - 0x00213B 00:E12B: A5 B8     LDA ram_00B8
C - - - - - 0x00213D 00:E12D: 85 8B     STA ram_008B
C - - - - - 0x00213F 00:E12F: A5 B9     LDA ram_00B9
C - - - - - 0x002141 00:E131: 85 8A     STA ram_008A
C - - - - - 0x002143 00:E133: 68        PLA
C - - - - - 0x002144 00:E134: 85 B9     STA ram_00B9
C - - - - - 0x002146 00:E136: 68        PLA
C - - - - - 0x002147 00:E137: 85 B8     STA ram_00B8
C - - - - - 0x002149 00:E139: 68        PLA
C - - - - - 0x00214A 00:E13A: 85 69     STA ram_0069
C - - - - - 0x00214C 00:E13C: 68        PLA
C - - - - - 0x00214D 00:E13D: 85 68     STA ram_0068
C - - - - - 0x00214F 00:E13F: 68        PLA
C - - - - - 0x002150 00:E140: 85 64     STA ram_0064
C - - - - - 0x002152 00:E142: 68        PLA
C - - - - - 0x002153 00:E143: 85 63     STA ram_0063
C - - - - - 0x002155 00:E145: 60        RTS



sub_E146:
C - - - - - 0x002156 00:E146: 20 BB E0  JSR sub_E0BB
C - - - - - 0x002159 00:E149: A5 C5     LDA ram_00C5
C - - - - - 0x00215B 00:E14B: F0 02     BEQ bra_E14F
C - - - - - 0x00215D 00:E14D: C6 C5     DEC ram_00C5
bra_E14F:
C - - - - - 0x00215F 00:E14F: A5 86     LDA ram_0086
C - - - - - 0x002161 00:E151: D0 44     BNE bra_E197
C - - - - - 0x002163 00:E153: A0 01     LDY #$01
C - - - - - 0x002165 00:E155: A5 67     LDA ram_0067
C - - - - - 0x002167 00:E157: D0 04     BNE bra_E15D
C - - - - - 0x002169 00:E159: A0 00     LDY #$00
C - - - - - 0x00216B 00:E15B: F0 04     BEQ bra_E161    ; jmp
bra_E15D:
C - - - - - 0x00216D 00:E15D: 10 02     BPL bra_E161
C - - - - - 0x00216F 00:E15F: A0 FF     LDY #$FF
bra_E161:
C - - - - - 0x002171 00:E161: 84 87     STY ram_0087
C - - - - - 0x002173 00:E163: 84 C6     STY ram_00C6
C - - - - - 0x002175 00:E165: 20 14 C5  JSR sub_C514
C - - - - - 0x002178 00:E168: A5 B9     LDA ram_00B9
C - - - - - 0x00217A 00:E16A: 85 C9     STA ram_00C9
C - - - - - 0x00217C 00:E16C: 20 78 C4  JSR sub_C478
C - - - - - 0x00217F 00:E16F: A5 62     LDA ram_0062
C - - - - - 0x002181 00:E171: 10 17     BPL bra_E18A
C - - - - - 0x002183 00:E173: A5 B9     LDA ram_00B9
C - - - - - 0x002185 00:E175: 10 13     BPL bra_E18A
C - - - - - 0x002187 00:E177: A5 C9     LDA ram_00C9
C - - - - - 0x002189 00:E179: 30 0F     BMI bra_E18A
C - - - - - 0x00218B 00:E17B: A9 00     LDA #$00
C - - - - - 0x00218D 00:E17D: 85 B9     STA ram_00B9
C - - - - - 0x00218F 00:E17F: 85 61     STA ram_0061
C - - - - - 0x002191 00:E181: 85 62     STA ram_0062
C - - - - - 0x002193 00:E183: A9 3E     LDA #$3E
C - - - - - 0x002195 00:E185: 85 B6     STA ram_00B6
C - - - - - 0x002197 00:E187: 8D A6 03  STA ram_03A6
bra_E18A:
C - - - - - 0x00219A 00:E18A: 20 65 E3  JSR sub_E365
C - - - - - 0x00219D 00:E18D: 20 22 E4  JSR sub_E422
C - - - - - 0x0021A0 00:E190: 20 D0 E4  JSR sub_E4D0
C - - - - - 0x0021A3 00:E193: 20 13 E5  JSR sub_E513
C - - - - - 0x0021A6 00:E196: 60        RTS
bra_E197:
C - - - - - 0x0021A7 00:E197: A0 00     LDY #$00
C - - - - - 0x0021A9 00:E199: 84 86     STY ram_0086
C - - - - - 0x0021AB 00:E19B: 84 87     STY ram_0087
C - - - - - 0x0021AD 00:E19D: C9 01     CMP #$01
C - - - - - 0x0021AF 00:E19F: D0 03     BNE bra_E1A4
C - - - - - 0x0021B1 00:E1A1: 4C 3B E2  JMP loc_E23B
bra_E1A4:
loc_E1A4:
C D 3 - - - 0x0021B4 00:E1A4: A5 C5     LDA ram_00C5
C - - - - - 0x0021B6 00:E1A6: F0 01     BEQ bra_E1A9
C - - - - - 0x0021B8 00:E1A8: 60        RTS
bra_E1A9:
C - - - - - 0x0021B9 00:E1A9: A9 05     LDA #$05
C - - - - - 0x0021BB 00:E1AB: 85 C5     STA ram_00C5
C - - - - - 0x0021BD 00:E1AD: A9 02     LDA #$02
C - - - - - 0x0021BF 00:E1AF: 85 FF     STA ram_00FF
C - - - - - 0x0021C1 00:E1B1: A5 71     LDA ram_0071
C - - - - - 0x0021C3 00:E1B3: C9 44     CMP #$44
C - - - - - 0x0021C5 00:E1B5: 90 1C     BCC bra_E1D3
C - - - - - 0x0021C7 00:E1B7: C9 54     CMP #$54
C - - - - - 0x0021C9 00:E1B9: 90 08     BCC bra_E1C3
C - - - - - 0x0021CB 00:E1BB: C9 88     CMP #$88
C - - - - - 0x0021CD 00:E1BD: 90 0A     BCC bra_E1C9
C - - - - - 0x0021CF 00:E1BF: C9 A0     CMP #$A0
C - - - - - 0x0021D1 00:E1C1: B0 10     BCS bra_E1D3
bra_E1C3:
C - - - - - 0x0021D3 00:E1C3: 20 35 E5  JSR sub_E535
C - - - - - 0x0021D6 00:E1C6: 4C D6 E1  JMP loc_E1D6
bra_E1C9:
C - - - - - 0x0021D9 00:E1C9: E6 C8     INC ram_00C8
C - - - - - 0x0021DB 00:E1CB: A9 00     LDA #$00
C - - - - - 0x0021DD 00:E1CD: 85 66     STA ram_0066
C - - - - - 0x0021DF 00:E1CF: 85 67     STA ram_0067
C - - - - - 0x0021E1 00:E1D1: F0 03     BEQ bra_E1D6    ; jmp
bra_E1D3:
C - - - - - 0x0021E3 00:E1D3: 20 27 E5  JSR sub_E527
bra_E1D6:
loc_E1D6:
C D 3 - - - 0x0021E6 00:E1D6: A0 00     LDY #$00
C - - - - - 0x0021E8 00:E1D8: 38        SEC
C - - - - - 0x0021E9 00:E1D9: E5 61     SBC ram_0061
C - - - - - 0x0021EB 00:E1DB: 85 61     STA ram_0061
C - - - - - 0x0021ED 00:E1DD: 98        TYA
C - - - - - 0x0021EE 00:E1DE: E5 62     SBC ram_0062
C - - - - - 0x0021F0 00:E1E0: 85 62     STA ram_0062
C - - - - - 0x0021F2 00:E1E2: 20 6C E5  JSR sub_E56C
C - - - - - 0x0021F5 00:E1E5: A5 C1     LDA ram_00C1
C - - - - - 0x0021F7 00:E1E7: D0 51     BNE bra_E23A_RTS
C - - - - - 0x0021F9 00:E1E9: A9 03     LDA #$03
C - - - - - 0x0021FB 00:E1EB: 85 C1     STA ram_00C1
C - - - - - 0x0021FD 00:E1ED: A5 C6     LDA ram_00C6
C - - - - - 0x0021FF 00:E1EF: 30 17     BMI bra_E208
C - - - - - 0x002201 00:E1F1: A0 00     LDY #con_msg_in
C - - - - - 0x002203 00:E1F3: A2 01     LDX #$01
C - - - - - 0x002205 00:E1F5: A5 71     LDA ram_0071
C - - - - - 0x002207 00:E1F7: C9 70     CMP #$70
C - - - - - 0x002209 00:E1F9: 90 37     BCC bra_E232
- - - - - - 0x00220B 00:E1FB: 24 8D     BIT ram_008D
- - - - - - 0x00220D 00:E1FD: 50 03     BVC bra_E202
- - - - - - 0x00220F 00:E1FF: 4C A3 E4  JMP loc_E4A3
bra_E202:
- - - - - - 0x002212 00:E202: A0 01     LDY #con_msg_out
- - - - - - 0x002214 00:E204: A2 02     LDX #$02
- - - - - - 0x002216 00:E206: D0 2A     BNE bra_E232    ; jmp
bra_E208:
C - - - - - 0x002218 00:E208: 24 8D     BIT ram_008D
C - - - - - 0x00221A 00:E20A: 50 11     BVC bra_E21D
- - - - - - 0x00221C 00:E20C: 38        SEC
- - - - - - 0x00221D 00:E20D: A5 68     LDA ram_0068
- - - - - - 0x00221F 00:E20F: E9 80     SBC #$80
- - - - - - 0x002221 00:E211: 85 68     STA ram_0068
- - - - - - 0x002223 00:E213: B0 02     BCS bra_E217
- - - - - - 0x002225 00:E215: C6 69     DEC ram_0069
bra_E217:
- - - - - - 0x002227 00:E217: A0 00     LDY #con_msg_in
- - - - - - 0x002229 00:E219: A2 02     LDX #$02
- - - - - - 0x00222B 00:E21B: 10 15     BPL bra_E232    ; jmp
bra_E21D:
C - - - - - 0x00222D 00:E21D: A0 00     LDY #con_msg_in
C - - - - - 0x00222F 00:E21F: A2 02     LDX #$02
C - - - - - 0x002231 00:E221: A5 71     LDA ram_0071
C - - - - - 0x002233 00:E223: C9 70     CMP #$70
C - - - - - 0x002235 00:E225: B0 0B     BCS bra_E232
- - - - - - 0x002237 00:E227: 24 8D     BIT ram_008D
- - - - - - 0x002239 00:E229: 50 03     BVC bra_E22E
- - - - - - 0x00223B 00:E22B: 4C A3 E4  JMP loc_E4A3
bra_E22E:
- - - - - - 0x00223E 00:E22E: A0 01     LDY #con_msg_out
- - - - - - 0x002240 00:E230: A2 01     LDX #$01
bra_E232:
C - - - - - 0x002242 00:E232: 84 79     STY ram_mario_message
C - - - - - 0x002244 00:E234: 86 5B     STX ram_005B
C - - - - - 0x002246 00:E236: A9 00     LDA #$00
C - - - - - 0x002248 00:E238: 85 7A     STA ram_fault_counter
bra_E23A_RTS:
C - - - - - 0x00224A 00:E23A: 60        RTS



loc_E23B:
C D 3 - - - 0x00224B 00:E23B: A4 C4     LDY ram_00C4
C - - - - - 0x00224D 00:E23D: F0 23     BEQ bra_E262
C - - - - - 0x00224F 00:E23F: C6 C4     DEC ram_00C4
C - - - - - 0x002251 00:E241: D0 1F     BNE bra_E262
C - - - - - 0x002253 00:E243: A5 8D     LDA ram_008D
C - - - - - 0x002255 00:E245: 29 0F     AND #$0F
C - - - - - 0x002257 00:E247: 85 8D     STA ram_008D
C - - - - - 0x002259 00:E249: A2 02     LDX #$02
C - - - - - 0x00225B 00:E24B: A4 C1     LDY ram_00C1
C - - - - - 0x00225D 00:E24D: D0 13     BNE bra_E262
C - - - - - 0x00225F 00:E24F: 6A        ROR
C - - - - - 0x002260 00:E250: 6A        ROR
C - - - - - 0x002261 00:E251: B0 02     BCS bra_E255
- - - - - - 0x002263 00:E253: A2 01     LDX #$01
bra_E255:
C - - - - - 0x002265 00:E255: 86 5B     STX ram_005B
C - - - - - 0x002267 00:E257: A0 02     LDY #$02
C - - - - - 0x002269 00:E259: 84 C1     STY ram_00C1
C - - - - - 0x00226B 00:E25B: A9 00     LDA #$00
C - - - - - 0x00226D 00:E25D: 85 7A     STA ram_fault_counter
C - - - - - 0x00226F 00:E25F: 4C A4 E1  JMP loc_E1A4
bra_E262:
C - - - - - 0x002272 00:E262: 20 4D C9  JSR sub_C94D
C - - - - - 0x002275 00:E265: A9 00     LDA #$00
C - - - - - 0x002277 00:E267: 85 C1     STA ram_00C1
C - - - - - 0x002279 00:E269: A5 84     LDA ram_0084
C - - - - - 0x00227B 00:E26B: 0A        ASL
C - - - - - 0x00227C 00:E26C: C9 08     CMP #$08
C - - - - - 0x00227E 00:E26E: 90 02     BCC bra_E272
; C = 1
C - - - - - 0x002280 00:E270: 69 00     ADC #$00
bra_E272:
C - - - - - 0x002282 00:E272: 65 85     ADC ram_0085
C - - - - - 0x002284 00:E274: 85 16     STA ram_0016
C - - - - - 0x002286 00:E276: 0A        ASL
C - - - - - 0x002287 00:E277: 0A        ASL
C - - - - - 0x002288 00:E278: 65 16     ADC ram_0016
C - - - - - 0x00228A 00:E27A: 65 4C     ADC ram_level
C - - - - - 0x00228C 00:E27C: 0A        ASL
C - - - - - 0x00228D 00:E27D: 85 12     STA ram_0012
C - - - - - 0x00228F 00:E27F: A9 00     LDA #$00
C - - - - - 0x002291 00:E281: 85 13     STA ram_0013
C - - - - - 0x002293 00:E283: A9 E3     LDA #> tbl_E3AA
C - - - - - 0x002295 00:E285: 85 15     STA ram_0015
C - - - - - 0x002297 00:E287: A9 AA     LDA #< tbl_E3AA
C - - - - - 0x002299 00:E289: 85 14     STA ram_0014
C - - - - - 0x00229B 00:E28B: 20 A1 C3  JSR sub_C3A1_add_16bit_to_16_bit
C - - - - - 0x00229E 00:E28E: A0 00     LDY #$00
C - - - - - 0x0022A0 00:E290: B1 14     LDA (ram_0014),Y
C - - - - - 0x0022A2 00:E292: 85 6A     STA ram_006A
C - - - - - 0x0022A4 00:E294: C8        INY
C - - - - - 0x0022A5 00:E295: B1 14     LDA (ram_0014),Y
C - - - - - 0x0022A7 00:E297: 85 67     STA ram_0067
C - - - - - 0x0022A9 00:E299: 38        SEC
C - - - - - 0x0022AA 00:E29A: A5 82     LDA ram_0082
C - - - - - 0x0022AC 00:E29C: E5 68     SBC ram_0068
C - - - - - 0x0022AE 00:E29E: 85 9C     STA ram_009C
C - - - - - 0x0022B0 00:E2A0: A5 83     LDA ram_0083
C - - - - - 0x0022B2 00:E2A2: E5 69     SBC ram_0069
C - - - - - 0x0022B4 00:E2A4: 85 9B     STA ram_009B
C - - - - - 0x0022B6 00:E2A6: 20 ED C6  JSR sub_C6ED
C - - - - - 0x0022B9 00:E2A9: A5 9B     LDA ram_009B
C - - - - - 0x0022BB 00:E2AB: 85 9E     STA ram_009E
C - - - - - 0x0022BD 00:E2AD: A5 9C     LDA ram_009C
C - - - - - 0x0022BF 00:E2AF: 85 9F     STA ram_009F
C - - - - - 0x0022C1 00:E2B1: A9 00     LDA #$00
C - - - - - 0x0022C3 00:E2B3: 85 9D     STA ram_009D
C - - - - - 0x0022C5 00:E2B5: 85 A0     STA ram_00A0
C - - - - - 0x0022C7 00:E2B7: A5 67     LDA ram_0067
C - - - - - 0x0022C9 00:E2B9: 85 9B     STA ram_009B
C - - - - - 0x0022CB 00:E2BB: A5 66     LDA ram_0066
C - - - - - 0x0022CD 00:E2BD: 85 9C     STA ram_009C
C - - - - - 0x0022CF 00:E2BF: A5 A4     LDA ram_00A4
C - - - - - 0x0022D1 00:E2C1: 10 0E     BPL bra_E2D1
C - - - - - 0x0022D3 00:E2C3: 20 F3 C6  JSR sub_C6F3
C - - - - - 0x0022D6 00:E2C6: A5 9B     LDA ram_009B
C - - - - - 0x0022D8 00:E2C8: 85 67     STA ram_0067
C - - - - - 0x0022DA 00:E2CA: A5 9C     LDA ram_009C
C - - - - - 0x0022DC 00:E2CC: 85 66     STA ram_0066
C - - - - - 0x0022DE 00:E2CE: 20 ED C6  JSR sub_C6ED
bra_E2D1:
C - - - - - 0x0022E1 00:E2D1: A5 9B     LDA ram_009B
C - - - - - 0x0022E3 00:E2D3: 85 98     STA ram_0098
C - - - - - 0x0022E5 00:E2D5: A5 9C     LDA ram_009C
C - - - - - 0x0022E7 00:E2D7: 85 99     STA ram_0099
C - - - - - 0x0022E9 00:E2D9: 20 84 C6  JSR sub_C684
C - - - - - 0x0022EC 00:E2DC: A5 9C     LDA ram_009C
C - - - - - 0x0022EE 00:E2DE: 85 02     STA ram_0002
C - - - - - 0x0022F0 00:E2E0: A5 9B     LDA ram_009B
C - - - - - 0x0022F2 00:E2E2: 85 01     STA ram_0001
C - - - - - 0x0022F4 00:E2E4: A5 6A     LDA ram_006A
C - - - - - 0x0022F6 00:E2E6: 0A        ASL
C - - - - - 0x0022F7 00:E2E7: 85 99     STA ram_0099
C - - - - - 0x0022F9 00:E2E9: A9 00     LDA #$00
C - - - - - 0x0022FB 00:E2EB: 2A        ROL
C - - - - - 0x0022FC 00:E2EC: 85 98     STA ram_0098
C - - - - - 0x0022FE 00:E2EE: 20 2B C6  JSR sub_C62B
C - - - - - 0x002301 00:E2F1: A5 9F     LDA ram_009F
C - - - - - 0x002303 00:E2F3: 85 6C     STA ram_006C
C - - - - - 0x002305 00:E2F5: A5 A0     LDA ram_00A0
C - - - - - 0x002307 00:E2F7: 85 6B     STA ram_006B
C - - - - - 0x002309 00:E2F9: A5 6E     LDA ram_006E
C - - - - - 0x00230B 00:E2FB: 85 9E     STA ram_009E
C - - - - - 0x00230D 00:E2FD: A5 6D     LDA ram_006D
C - - - - - 0x00230F 00:E2FF: 85 9F     STA ram_009F
C - - - - - 0x002311 00:E301: A9 00     LDA #$00
C - - - - - 0x002313 00:E303: 85 9D     STA ram_009D
C - - - - - 0x002315 00:E305: 85 A0     STA ram_00A0
C - - - - - 0x002317 00:E307: A5 01     LDA ram_0001
C - - - - - 0x002319 00:E309: 85 98     STA ram_0098
C - - - - - 0x00231B 00:E30B: A5 02     LDA ram_0002
C - - - - - 0x00231D 00:E30D: 85 99     STA ram_0099
C - - - - - 0x00231F 00:E30F: 20 84 C6  JSR sub_C684
C - - - - - 0x002322 00:E312: 38        SEC
C - - - - - 0x002323 00:E313: A5 6B     LDA ram_006B
C - - - - - 0x002325 00:E315: E5 9C     SBC ram_009C
C - - - - - 0x002327 00:E317: 85 6B     STA ram_006B
C - - - - - 0x002329 00:E319: A5 6C     LDA ram_006C
C - - - - - 0x00232B 00:E31B: E5 9B     SBC ram_009B
C - - - - - 0x00232D 00:E31D: 85 6C     STA ram_006C
C - - - - - 0x00232F 00:E31F: 38        SEC
C - - - - - 0x002330 00:E320: A5 80     LDA ram_0080
C - - - - - 0x002332 00:E322: E5 63     SBC ram_0063
C - - - - - 0x002334 00:E324: 85 9C     STA ram_009C
C - - - - - 0x002336 00:E326: A5 81     LDA ram_0081
C - - - - - 0x002338 00:E328: E5 64     SBC ram_0064
C - - - - - 0x00233A 00:E32A: 85 9B     STA ram_009B
C - - - - - 0x00233C 00:E32C: 20 ED C6  JSR sub_C6ED
C - - - - - 0x00233F 00:E32F: A5 9B     LDA ram_009B
C - - - - - 0x002341 00:E331: 85 9E     STA ram_009E
C - - - - - 0x002343 00:E333: A5 9C     LDA ram_009C
C - - - - - 0x002345 00:E335: 85 9F     STA ram_009F
C - - - - - 0x002347 00:E337: A9 00     LDA #$00
C - - - - - 0x002349 00:E339: 85 9D     STA ram_009D
C - - - - - 0x00234B 00:E33B: 85 A0     STA ram_00A0
C - - - - - 0x00234D 00:E33D: A5 01     LDA ram_0001
C - - - - - 0x00234F 00:E33F: 85 98     STA ram_0098
C - - - - - 0x002351 00:E341: A5 02     LDA ram_0002
C - - - - - 0x002353 00:E343: 85 99     STA ram_0099
C - - - - - 0x002355 00:E345: 20 84 C6  JSR sub_C684
C - - - - - 0x002358 00:E348: 20 05 C7  JSR sub_C705
C - - - - - 0x00235B 00:E34B: A5 9B     LDA ram_009B
C - - - - - 0x00235D 00:E34D: 85 62     STA ram_0062
C - - - - - 0x00235F 00:E34F: A5 9C     LDA ram_009C
C - - - - - 0x002361 00:E351: 10 02     BPL bra_E355
C - - - - - 0x002363 00:E353: E6 62     INC ram_0062
bra_E355:
C - - - - - 0x002365 00:E355: A9 00     LDA #$00
C - - - - - 0x002367 00:E357: 85 61     STA ram_0061
C - - - - - 0x002369 00:E359: A5 6A     LDA ram_006A
C - - - - - 0x00236B 00:E35B: 49 FF     EOR #$FF
C - - - - - 0x00236D 00:E35D: 85 6A     STA ram_006A
C - - - - - 0x00236F 00:E35F: E6 6A     INC ram_006A
C - - - - - 0x002371 00:E361: 20 D6 E0  JSR sub_E0D6
C - - - - - 0x002374 00:E364: 60        RTS



sub_E365:
C - - - - - 0x002375 00:E365: A5 B6     LDA ram_00B6
C - - - - - 0x002377 00:E367: C9 3E     CMP #$3E
C - - - - - 0x002379 00:E369: F0 3E     BEQ bra_E3A9_RTS
C - - - - - 0x00237B 00:E36B: A5 69     LDA ram_0069
C - - - - - 0x00237D 00:E36D: 38        SEC
C - - - - - 0x00237E 00:E36E: E9 04     SBC #$04
C - - - - - 0x002380 00:E370: 0A        ASL
C - - - - - 0x002381 00:E371: 0A        ASL
C - - - - - 0x002382 00:E372: 85 15     STA ram_0015
C - - - - - 0x002384 00:E374: A5 6F     LDA ram_006F
C - - - - - 0x002386 00:E376: 18        CLC
C - - - - - 0x002387 00:E377: 69 20     ADC #$20
C - - - - - 0x002389 00:E379: 08        PHP
C - - - - - 0x00238A 00:E37A: 38        SEC
C - - - - - 0x00238B 00:E37B: E5 15     SBC ram_0015
C - - - - - 0x00238D 00:E37D: B0 07     BCS bra_E386
C - - - - - 0x00238F 00:E37F: 28        PLP
C - - - - - 0x002390 00:E380: B0 05     BCS bra_E387
C - - - - - 0x002392 00:E382: A9 00     LDA #$00
C - - - - - 0x002394 00:E384: F0 01     BEQ bra_E387    ; jmp
bra_E386:
C - - - - - 0x002396 00:E386: 28        PLP
bra_E387:
C - - - - - 0x002397 00:E387: A0 33     LDY #$33
C - - - - - 0x002399 00:E389: C9 A8     CMP #$A8
C - - - - - 0x00239B 00:E38B: B0 1A     BCS bra_E3A7
C - - - - - 0x00239D 00:E38D: 88        DEY
C - - - - - 0x00239E 00:E38E: C9 78     CMP #$78
C - - - - - 0x0023A0 00:E390: B0 15     BCS bra_E3A7
C - - - - - 0x0023A2 00:E392: 88        DEY
C - - - - - 0x0023A3 00:E393: C9 2C     CMP #$2C
C - - - - - 0x0023A5 00:E395: B0 10     BCS bra_E3A7
C - - - - - 0x0023A7 00:E397: 88        DEY
C - - - - - 0x0023A8 00:E398: C9 01     CMP #$01
C - - - - - 0x0023AA 00:E39A: B0 0B     BCS bra_E3A7
C - - - - - 0x0023AC 00:E39C: A5 71     LDA ram_0071
C - - - - - 0x0023AE 00:E39E: C9 70     CMP #$70
C - - - - - 0x0023B0 00:E3A0: 90 04     BCC bra_E3A6
C - - - - - 0x0023B2 00:E3A2: A5 C8     LDA ram_00C8
C - - - - - 0x0023B4 00:E3A4: D0 01     BNE bra_E3A7
bra_E3A6:
C - - - - - 0x0023B6 00:E3A6: 88        DEY
bra_E3A7:
C - - - - - 0x0023B7 00:E3A7: 84 B6     STY ram_00B6
bra_E3A9_RTS:
C - - - - - 0x0023B9 00:E3A9: 60        RTS



tbl_E3AA:
; ???
- D 3 - I - 0x0023BA 00:E3AA: 15        .byte $15   ; 
- D 3 - I - 0x0023BB 00:E3AB: 20        .byte $20   ; 

- - - - - - 0x0023BC 00:E3AC: 21        .byte $21   ; 
- - - - - - 0x0023BD 00:E3AD: 28        .byte $28   ; 

- - - - - - 0x0023BE 00:E3AE: 2F        .byte $2F   ; 
- - - - - - 0x0023BF 00:E3AF: 30        .byte $30   ; 

- - - - - - 0x0023C0 00:E3B0: 30        .byte $30   ; 
- - - - - - 0x0023C1 00:E3B1: 38        .byte $38   ; 

- D 3 - I - 0x0023C2 00:E3B2: 54        .byte $54   ; 
- D 3 - I - 0x0023C3 00:E3B3: 40        .byte $40   ; 

- D 3 - I - 0x0023C4 00:E3B4: 18        .byte $18   ; 
- D 3 - I - 0x0023C5 00:E3B5: 20        .byte $20   ; 

- - - - - - 0x0023C6 00:E3B6: 26        .byte $26   ; 
- - - - - - 0x0023C7 00:E3B7: 28        .byte $28   ; 

- - - - - - 0x0023C8 00:E3B8: 36        .byte $36   ; 
- - - - - - 0x0023C9 00:E3B9: 30        .byte $30   ; 

- - - - - - 0x0023CA 00:E3BA: 4A        .byte $4A   ; 
- - - - - - 0x0023CB 00:E3BB: 38        .byte $38   ; 

- D 3 - I - 0x0023CC 00:E3BC: 60        .byte $60   ; 
- D 3 - I - 0x0023CD 00:E3BD: 40        .byte $40   ; 

- D 3 - I - 0x0023CE 00:E3BE: 15        .byte $15   ; 
- D 3 - I - 0x0023CF 00:E3BF: 20        .byte $20   ; 

- - - - - - 0x0023D0 00:E3C0: 21        .byte $21   ; 
- - - - - - 0x0023D1 00:E3C1: 28        .byte $28   ; 

- - - - - - 0x0023D2 00:E3C2: 28        .byte $28   ; 
- - - - - - 0x0023D3 00:E3C3: 2C        .byte $2C   ; 

- - - - - - 0x0023D4 00:E3C4: 2F        .byte $2F   ; 
- - - - - - 0x0023D5 00:E3C5: 30        .byte $30   ; 

- D 3 - I - 0x0023D6 00:E3C6: 40        .byte $40   ; 
- D 3 - I - 0x0023D7 00:E3C7: 38        .byte $38   ; 

- D 3 - I - 0x0023D8 00:E3C8: 1C        .byte $1C   ; 
- D 3 - I - 0x0023D9 00:E3C9: 20        .byte $20   ; 

- - - - - - 0x0023DA 00:E3CA: 2B        .byte $2B   ; 
- - - - - - 0x0023DB 00:E3CB: 28        .byte $28   ; 

- - - - - - 0x0023DC 00:E3CC: 35        .byte $35   ; 
- - - - - - 0x0023DD 00:E3CD: 2C        .byte $2C   ; 

- - - - - - 0x0023DE 00:E3CE: 3F        .byte $3F   ; 
- - - - - - 0x0023DF 00:E3CF: 30        .byte $30   ; 

- D 3 - I - 0x0023E0 00:E3D0: 56        .byte $56   ; 
- D 3 - I - 0x0023E1 00:E3D1: 38        .byte $38   ; 

- D 3 - I - 0x0023E2 00:E3D2: 18        .byte $18   ; 
- D 3 - I - 0x0023E3 00:E3D3: 30        .byte $30   ; 

- - - - - - 0x0023E4 00:E3D4: 18        .byte $18   ; 
- - - - - - 0x0023E5 00:E3D5: 38        .byte $38   ; 

- - - - - - 0x0023E6 00:E3D6: 18        .byte $18   ; 
- - - - - - 0x0023E7 00:E3D7: 44        .byte $44   ; 

- - - - - - 0x0023E8 00:E3D8: 20        .byte $20   ; 
- - - - - - 0x0023E9 00:E3D9: 5C        .byte $5C   ; 

- D 3 - I - 0x0023EA 00:E3DA: 20        .byte $20   ; 
- D 3 - I - 0x0023EB 00:E3DB: 68        .byte $68   ; 

- D 3 - I - 0x0023EC 00:E3DC: 18        .byte $18   ; 
- D 3 - I - 0x0023ED 00:E3DD: 30        .byte $30   ; 

- - - - - - 0x0023EE 00:E3DE: 18        .byte $18   ; 
- - - - - - 0x0023EF 00:E3DF: 38        .byte $38   ; 

- - - - - - 0x0023F0 00:E3E0: 20        .byte $20   ; 
- - - - - - 0x0023F1 00:E3E1: 44        .byte $44   ; 

- - - - - - 0x0023F2 00:E3E2: 20        .byte $20   ; 
- - - - - - 0x0023F3 00:E3E3: 5C        .byte $5C   ; 

- D 3 - I - 0x0023F4 00:E3E4: 20        .byte $20   ; 
- D 3 - I - 0x0023F5 00:E3E5: 68        .byte $68   ; 

- D 3 - I - 0x0023F6 00:E3E6: 12        .byte $12   ; 
- D 3 - I - 0x0023F7 00:E3E7: 22        .byte $22   ; 

- D 3 - I - 0x0023F8 00:E3E8: 19        .byte $19   ; 
- D 3 - I - 0x0023F9 00:E3E9: 28        .byte $28   ; 

- - - - - - 0x0023FA 00:E3EA: 24        .byte $24   ; 
- - - - - - 0x0023FB 00:E3EB: 30        .byte $30   ; 

- - - - - - 0x0023FC 00:E3EC: 31        .byte $31   ; 
- - - - - - 0x0023FD 00:E3ED: 38        .byte $38   ; 

- D 3 - I - 0x0023FE 00:E3EE: 40        .byte $40   ; 
- D 3 - I - 0x0023FF 00:E3EF: 40        .byte $40   ; 

- D 3 - I - 0x002400 00:E3F0: 18        .byte $18   ; 
- D 3 - I - 0x002401 00:E3F1: 22        .byte $22   ; 

- - - - - - 0x002402 00:E3F2: 21        .byte $21   ; 
- - - - - - 0x002403 00:E3F3: 28        .byte $28   ; 

- - - - - - 0x002404 00:E3F4: 30        .byte $30   ; 
- - - - - - 0x002405 00:E3F5: 30        .byte $30   ; 

- - - - - - 0x002406 00:E3F6: 41        .byte $41   ; 
- - - - - - 0x002407 00:E3F7: 38        .byte $38   ; 

- D 3 - I - 0x002408 00:E3F8: 55        .byte $55   ; 
- D 3 - I - 0x002409 00:E3F9: 40        .byte $40   ; 

- D 3 - I - 0x00240A 00:E3FA: 14        .byte $14   ; 
- D 3 - I - 0x00240B 00:E3FB: 30        .byte $30   ; 

- - - - - - 0x00240C 00:E3FC: 1B        .byte $1B   ; 
- - - - - - 0x00240D 00:E3FD: 38        .byte $38   ; 

- - - - - - 0x00240E 00:E3FE: 24        .byte $24   ; 
- - - - - - 0x00240F 00:E3FF: 40        .byte $40   ; 

- - - - - - 0x002410 00:E400: 3D        .byte $3D   ; 
- - - - - - 0x002411 00:E401: 48        .byte $48   ; 

- D 3 - I - 0x002412 00:E402: 37        .byte $37   ; 
- D 3 - I - 0x002413 00:E403: 50        .byte $50   ; 

- D 3 - I - 0x002414 00:E404: 09        .byte $09   ; 
- D 3 - I - 0x002415 00:E405: 10        .byte $10   ; 

- - - - - - 0x002416 00:E406: 0E        .byte $0E   ; 
- - - - - - 0x002417 00:E407: 14        .byte $14   ; 

- - - - - - 0x002418 00:E408: 14        .byte $14   ; 
- - - - - - 0x002419 00:E409: 18        .byte $18   ; 

- - - - - - 0x00241A 00:E40A: 24        .byte $24   ; 
- - - - - - 0x00241B 00:E40B: 20        .byte $20   ; 

- D 3 - I - 0x00241C 00:E40C: 38        .byte $38   ; 
- D 3 - I - 0x00241D 00:E40D: 28        .byte $28   ; 

- D 3 - I - 0x00241E 00:E40E: 0A        .byte $0A   ; 
- D 3 - I - 0x00241F 00:E40F: 10        .byte $10   ; 

- - - - - - 0x002420 00:E410: 0F        .byte $0F   ; 
- - - - - - 0x002421 00:E411: 14        .byte $14   ; 

- - - - - - 0x002422 00:E412: 16        .byte $16   ; 
- - - - - - 0x002423 00:E413: 18        .byte $18   ; 

- - - - - - 0x002424 00:E414: 28        .byte $28   ; 
- - - - - - 0x002425 00:E415: 20        .byte $20   ; 

- D 3 - I - 0x002426 00:E416: 3E        .byte $3E   ; 
- D 3 - I - 0x002427 00:E417: 28        .byte $28   ; 

- D 3 - I - 0x002428 00:E418: 0C        .byte $0C   ; 
- D 3 - I - 0x002429 00:E419: 10        .byte $10   ; 

- - - - - - 0x00242A 00:E41A: 14        .byte $14   ; 
- - - - - - 0x00242B 00:E41B: 14        .byte $14   ; 

- - - - - - 0x00242C 00:E41C: 1D        .byte $1D   ; 
- - - - - - 0x00242D 00:E41D: 18        .byte $18   ; 

- - - - - - 0x00242E 00:E41E: 34        .byte $34   ; 
- - - - - - 0x00242F 00:E41F: 20        .byte $20   ; 

- D 3 - I - 0x002430 00:E420: 51        .byte $51   ; 
- D 3 - I - 0x002431 00:E421: 28        .byte $28   ; 



sub_E422:
C - - - - - 0x002432 00:E422: A0 40     LDY #$10 * $04
C - - - - - 0x002434 00:E424: 20 81 E5  JSR sub_E581
C - - - - - 0x002437 00:E427: 85 78     STA ram_0078
C - - - - - 0x002439 00:E429: D0 63     BNE bra_E48E
C - - - - - 0x00243B 00:E42B: A4 C1     LDY ram_00C1
C - - - - - 0x00243D 00:E42D: F0 5E     BEQ bra_E48D_RTS
C - - - - - 0x00243F 00:E42F: 88        DEY
C - - - - - 0x002440 00:E430: D0 3A     BNE bra_E46C
C - - - - - 0x002442 00:E432: A9 02     LDA #$02
C - - - - - 0x002444 00:E434: 85 C1     STA ram_00C1
C - - - - - 0x002446 00:E436: A5 8D     LDA ram_008D
C - - - - - 0x002448 00:E438: 24 8D     BIT ram_008D
C - - - - - 0x00244A 00:E43A: 10 04     BPL bra_E440
C - - - - - 0x00244C 00:E43C: E6 C8     INC ram_00C8
C - - - - - 0x00244E 00:E43E: 10 63     BPL bra_E4A3
bra_E440:
C - - - - - 0x002450 00:E440: 70 1A     BVS bra_E45C
C - - - - - 0x002452 00:E442: A0 20     LDY #$08 * $04
C - - - - - 0x002454 00:E444: A5 87     LDA ram_0087
C - - - - - 0x002456 00:E446: 10 02     BPL bra_E44A
C - - - - - 0x002458 00:E448: A0 28     LDY #$0A * $04
bra_E44A:
C - - - - - 0x00245A 00:E44A: A5 39     LDA ram_game_mode
C - - - - - 0x00245C 00:E44C: F0 05     BEQ bra_E453    ; if 1 player
C - - - - - 0x00245E 00:E44E: 98        TYA
C - - - - - 0x00245F 00:E44F: 18        CLC
C - - - - - 0x002460 00:E450: 69 10     ADC #$04 * $04
C - - - - - 0x002462 00:E452: A8        TAY
bra_E453:
C - - - - - 0x002463 00:E453: 20 81 E5  JSR sub_E581
C - - - - - 0x002466 00:E456: 85 79     STA ram_0079
C - - - - - 0x002468 00:E458: F0 6B     BEQ bra_E4C5
C - - - - - 0x00246A 00:E45A: D0 3C     BNE bra_E498    ; jmp
bra_E45C:
C - - - - - 0x00246C 00:E45C: 29 03     AND #$03
C - - - - - 0x00246E 00:E45E: 0A        ASL
C - - - - - 0x00246F 00:E45F: 0A        ASL
C - - - - - 0x002470 00:E460: 0A        ASL
C - - - - - 0x002471 00:E461: A8        TAY
C - - - - - 0x002472 00:E462: 20 81 E5  JSR sub_E581
C - - - - - 0x002475 00:E465: D0 3C     BNE bra_E4A3
C - - - - - 0x002477 00:E467: 85 79     STA ram_0079
C - - - - - 0x002479 00:E469: 4C C5 E4  JMP loc_E4C5
bra_E46C:
C - - - - - 0x00247C 00:E46C: C0 02     CPY #$02
C - - - - - 0x00247E 00:E46E: D0 15     BNE bra_E485
C - - - - - 0x002480 00:E470: A9 01     LDA #$01
C - - - - - 0x002482 00:E472: 85 72     STA ram_0072
C - - - - - 0x002484 00:E474: A6 71     LDX ram_0071
C - - - - - 0x002486 00:E476: E0 70     CPX #$70
C - - - - - 0x002488 00:E478: 90 02     BCC bra_E47C
C - - - - - 0x00248A 00:E47A: A9 02     LDA #$02
bra_E47C:
C - - - - - 0x00248C 00:E47C: 20 21 E6  JSR sub_E621_update_mario_headtracking
C - - - - - 0x00248F 00:E47F: E6 C1     INC ram_00C1
C - - - - - 0x002491 00:E481: 20 46 E6  JSR sub_E646_display_mario_message
C - - - - - 0x002494 00:E484: 60        RTS
bra_E485:
C - - - - - 0x002495 00:E485: C0 07     CPY #$07
C - - - - - 0x002497 00:E487: 90 04     BCC bra_E48D_RTS
C - - - - - 0x002499 00:E489: A0 01     LDY #$01
C - - - - - 0x00249B 00:E48B: 84 78     STY ram_0078
bra_E48D_RTS:
C - - - - - 0x00249D 00:E48D: 60        RTS
bra_E48E:
C - - - - - 0x00249E 00:E48E: A4 C1     LDY ram_00C1
C - - - - - 0x0024A0 00:E490: D0 FB     BNE bra_E48D_RTS
- - - - - - 0x0024A2 00:E492: A9 01     LDA #con_msg_out
- - - - - - 0x0024A4 00:E494: 85 79     STA ram_mario_message
- - - - - - 0x0024A6 00:E496: D0 00     BNE bra_E498    ; jmp
bra_E498:
loc_E498:
C D 3 - - - 0x0024A8 00:E498: A2 02     LDX #$02
C - - - - - 0x0024AA 00:E49A: A5 87     LDA ram_0087
C - - - - - 0x0024AC 00:E49C: 10 02     BPL bra_E4A0
C - - - - - 0x0024AE 00:E49E: A2 01     LDX #$01
bra_E4A0:
C - - - - - 0x0024B0 00:E4A0: 4C BE E4  JMP loc_E4BE
bra_E4A3:
loc_E4A3:
C - - - - - 0x0024B3 00:E4A3: A9 03     LDA #con_msg_fault
C - - - - - 0x0024B5 00:E4A5: 85 79     STA ram_mario_message
C - - - - - 0x0024B7 00:E4A7: A5 7A     LDA ram_fault_counter
C - - - - - 0x0024B9 00:E4A9: D0 07     BNE bra_E4B2_double_fault
C - - - - - 0x0024BB 00:E4AB: E6 7A     INC ram_fault_counter
C - - - - - 0x0024BD 00:E4AD: A9 00     LDA #$00
C - - - - - 0x0024BF 00:E4AF: 85 5B     STA ram_005B
C - - - - - 0x0024C1 00:E4B1: 60        RTS
bra_E4B2_double_fault:
C - - - - - 0x0024C2 00:E4B2: E6 79     INC ram_mario_message   ; con_msg_double_fault
C - - - - - 0x0024C4 00:E4B4: A2 01     LDX #$01
C - - - - - 0x0024C6 00:E4B6: A5 8D     LDA ram_008D
C - - - - - 0x0024C8 00:E4B8: 6A        ROR
C - - - - - 0x0024C9 00:E4B9: 6A        ROR
C - - - - - 0x0024CA 00:E4BA: B0 02     BCS bra_E4BE
- - - - - - 0x0024CC 00:E4BC: A2 02     LDX #$02
bra_E4BE:
loc_E4BE:
C D 3 - - - 0x0024CE 00:E4BE: 86 5B     STX ram_005B
C - - - - - 0x0024D0 00:E4C0: A9 00     LDA #$00
C - - - - - 0x0024D2 00:E4C2: 85 7A     STA ram_fault_counter
C - - - - - 0x0024D4 00:E4C4: 60        RTS
bra_E4C5:
loc_E4C5:
C D 3 - - - 0x0024D5 00:E4C5: A2 01     LDX #$01
C - - - - - 0x0024D7 00:E4C7: A5 87     LDA ram_0087
C - - - - - 0x0024D9 00:E4C9: 10 02     BPL bra_E4CD
C - - - - - 0x0024DB 00:E4CB: A2 02     LDX #$02
bra_E4CD:
C - - - - - 0x0024DD 00:E4CD: 4C BE E4  JMP loc_E4BE



sub_E4D0:
C - - - - - 0x0024E0 00:E4D0: A5 C2     LDA ram_00C2
C - - - - - 0x0024E2 00:E4D2: D0 3E     BNE bra_E512_RTS
C - - - - - 0x0024E4 00:E4D4: 38        SEC
C - - - - - 0x0024E5 00:E4D5: A5 68     LDA ram_0068
C - - - - - 0x0024E7 00:E4D7: E9 B0     SBC #$B0
C - - - - - 0x0024E9 00:E4D9: A5 69     LDA ram_0069
C - - - - - 0x0024EB 00:E4DB: E9 11     SBC #$11
C - - - - - 0x0024ED 00:E4DD: AA        TAX
C - - - - - 0x0024EE 00:E4DE: 45 C0     EOR ram_00C0
C - - - - - 0x0024F0 00:E4E0: 10 2E     BPL bra_E510
C - - - - - 0x0024F2 00:E4E2: A5 6F     LDA ram_006F
C - - - - - 0x0024F4 00:E4E4: C9 40     CMP #$40
C - - - - - 0x0024F6 00:E4E6: B0 28     BCS bra_E510
C - - - - - 0x0024F8 00:E4E8: A5 70     LDA ram_0070
C - - - - - 0x0024FA 00:E4EA: C9 30     CMP #$30
C - - - - - 0x0024FC 00:E4EC: 90 22     BCC bra_E510
C - - - - - 0x0024FE 00:E4EE: C9 D1     CMP #$D1
C - - - - - 0x002500 00:E4F0: B0 1E     BCS bra_E510
C - - - - - 0x002502 00:E4F2: A9 01     LDA #$01
C - - - - - 0x002504 00:E4F4: 85 C2     STA ram_00C2
C - - - - - 0x002506 00:E4F6: 20 27 E5  JSR sub_E527
C - - - - - 0x002509 00:E4F9: A9 02     LDA #$02
C - - - - - 0x00250B 00:E4FB: 85 FF     STA ram_00FF
C - - - - - 0x00250D 00:E4FD: A5 C1     LDA ram_00C1
C - - - - - 0x00250F 00:E4FF: D0 0F     BNE bra_E510
C - - - - - 0x002511 00:E501: A9 02     LDA #$02
C - - - - - 0x002513 00:E503: 85 C1     STA ram_00C1
C - - - - - 0x002515 00:E505: 24 8D     BIT ram_008D
C - - - - - 0x002517 00:E507: 70 9A     BVS bra_E4A3
C - - - - - 0x002519 00:E509: A9 02     LDA #con_msg_net
C - - - - - 0x00251B 00:E50B: 85 79     STA ram_mario_message
C - - - - - 0x00251D 00:E50D: 4C 98 E4  JMP loc_E498
bra_E510:
C - - - - - 0x002520 00:E510: 86 C0     STX ram_00C0
bra_E512_RTS:
C - - - - - 0x002522 00:E512: 60        RTS



sub_E513:
C - - - - - 0x002523 00:E513: A5 C7     LDA ram_00C7
C - - - - - 0x002525 00:E515: D0 0F     BNE bra_E526_RTS
C - - - - - 0x002527 00:E517: A5 71     LDA ram_0071
C - - - - - 0x002529 00:E519: C9 20     CMP #$20
C - - - - - 0x00252B 00:E51B: B0 09     BCS bra_E526_RTS
C - - - - - 0x00252D 00:E51D: 20 27 E5  JSR sub_E527
C - - - - - 0x002530 00:E520: A9 02     LDA #$02
C - - - - - 0x002532 00:E522: 85 FF     STA ram_00FF
C - - - - - 0x002534 00:E524: E6 C7     INC ram_00C7
bra_E526_RTS:
C - - - - - 0x002536 00:E526: 60        RTS



sub_E527:
C - - - - - 0x002537 00:E527: A5 62     LDA ram_0062
C - - - - - 0x002539 00:E529: C9 80     CMP #$80
C - - - - - 0x00253B 00:E52B: 6A        ROR
C - - - - - 0x00253C 00:E52C: 66 61     ROR ram_0061
C - - - - - 0x00253E 00:E52E: C9 80     CMP #$80
C - - - - - 0x002540 00:E530: 6A        ROR
C - - - - - 0x002541 00:E531: 85 62     STA ram_0062
C - - - - - 0x002543 00:E533: 66 61     ROR ram_0061
sub_E535:
C - - - - - 0x002545 00:E535: 20 6C E5  JSR sub_E56C
C - - - - - 0x002548 00:E538: A0 00     LDY #$00
C - - - - - 0x00254A 00:E53A: 98        TYA
C - - - - - 0x00254B 00:E53B: 38        SEC
C - - - - - 0x00254C 00:E53C: E5 66     SBC ram_0066
C - - - - - 0x00254E 00:E53E: 85 66     STA ram_0066
C - - - - - 0x002550 00:E540: 98        TYA
C - - - - - 0x002551 00:E541: E5 67     SBC ram_0067
C - - - - - 0x002553 00:E543: C9 80     CMP #$80
C - - - - - 0x002555 00:E545: 6A        ROR
C - - - - - 0x002556 00:E546: 66 66     ROR ram_0066
C - - - - - 0x002558 00:E548: C9 80     CMP #$80
C - - - - - 0x00255A 00:E54A: 6A        ROR
C - - - - - 0x00255B 00:E54B: 85 67     STA ram_0067
C - - - - - 0x00255D 00:E54D: 66 66     ROR ram_0066
C - - - - - 0x00255F 00:E54F: A5 67     LDA ram_0067
C - - - - - 0x002561 00:E551: 10 08     BPL bra_E55B
C - - - - - 0x002563 00:E553: C9 F4     CMP #$F4
C - - - - - 0x002565 00:E555: B0 0C     BCS bra_E563
C - - - - - 0x002567 00:E557: A9 F4     LDA #$F4
C - - - - - 0x002569 00:E559: D0 06     BNE bra_E561    ; jmp
bra_E55B:
C - - - - - 0x00256B 00:E55B: C9 0B     CMP #$0B
C - - - - - 0x00256D 00:E55D: 90 04     BCC bra_E563
C - - - - - 0x00256F 00:E55F: A9 0B     LDA #$0B
bra_E561:
C - - - - - 0x002571 00:E561: 85 67     STA ram_0067
bra_E563:
C - - - - - 0x002573 00:E563: A5 71     LDA ram_0071
C - - - - - 0x002575 00:E565: C9 70     CMP #$70
C - - - - - 0x002577 00:E567: 90 00     BCC bra_E569    ; bzk optimize, useless branch (or bug?)
bra_E569:
C - - - - - 0x002579 00:E569: E6 C8     INC ram_00C8
C - - - - - 0x00257B 00:E56B: 60        RTS



sub_E56C:
C - - - - - 0x00257C 00:E56C: A5 62     LDA ram_0062
C - - - - - 0x00257E 00:E56E: 10 08     BPL bra_E578
C - - - - - 0x002580 00:E570: C9 F4     CMP #$F4
C - - - - - 0x002582 00:E572: B0 0C     BCS bra_E580_RTS
- - - - - - 0x002584 00:E574: A9 F4     LDA #$F4
- - - - - - 0x002586 00:E576: D0 06     BNE bra_E57E    ; jmp
bra_E578:
C - - - - - 0x002588 00:E578: C9 0B     CMP #$0B
C - - - - - 0x00258A 00:E57A: 90 04     BCC bra_E580_RTS
- - - - - - 0x00258C 00:E57C: A9 0B     LDA #$0B
bra_E57E:
- - - - - - 0x00258E 00:E57E: 85 62     STA ram_0062
bra_E580_RTS:
C - - - - - 0x002590 00:E580: 60        RTS



sub_E581:
C - - - - - 0x002591 00:E581: A9 0A     LDA #$0A
bra_E583_loop:
C - - - - - 0x002593 00:E583: 38        SEC
C - - - - - 0x002594 00:E584: E9 05     SBC #$05
C - - - - - 0x002596 00:E586: AA        TAX
C - - - - - 0x002597 00:E587: 38        SEC
C - - - - - 0x002598 00:E588: B5 63     LDA ram_0063,X
C - - - - - 0x00259A 00:E58A: F9 AD E5  SBC tbl_E5AD,Y
C - - - - - 0x00259D 00:E58D: C8        INY
C - - - - - 0x00259E 00:E58E: B5 64     LDA ram_0064,X
C - - - - - 0x0025A0 00:E590: F9 AD E5  SBC tbl_E5AD,Y
C - - - - - 0x0025A3 00:E593: C8        INY
C - - - - - 0x0025A4 00:E594: 90 14     BCC bra_E5AA
C - - - - - 0x0025A6 00:E596: B5 63     LDA ram_0063,X
C - - - - - 0x0025A8 00:E598: F9 AD E5  SBC tbl_E5AD,Y
C - - - - - 0x0025AB 00:E59B: C8        INY
C - - - - - 0x0025AC 00:E59C: B5 64     LDA ram_0064,X
C - - - - - 0x0025AE 00:E59E: F9 AD E5  SBC tbl_E5AD,Y
C - - - - - 0x0025B1 00:E5A1: C8        INY
C - - - - - 0x0025B2 00:E5A2: B0 06     BCS bra_E5AA
C - - - - - 0x0025B4 00:E5A4: 8A        TXA
C - - - - - 0x0025B5 00:E5A5: D0 DC     BNE bra_E583_loop
C - - - - - 0x0025B7 00:E5A7: A9 00     LDA #$00
C - - - - - 0x0025B9 00:E5A9: 60        RTS
bra_E5AA:
C - - - - - 0x0025BA 00:E5AA: A9 01     LDA #$01
C - - - - - 0x0025BC 00:E5AC: 60        RTS



tbl_E5AD:
; 00
- D 3 - - - 0x0025BD 00:E5AD: B0        .byte $B0   ; 
- D 3 - - - 0x0025BE 00:E5AE: 11        .byte $11   ; 
- D 3 - - - 0x0025BF 00:E5AF: 50        .byte $50   ; 
- D 3 - - - 0x0025C0 00:E5B0: 16        .byte $16   ; 
; 01
- D 3 - - - 0x0025C1 00:E5B1: 10        .byte $10   ; 
- D 3 - - - 0x0025C2 00:E5B2: 10        .byte $10   ; 
- D 3 - - - 0x0025C3 00:E5B3: 50        .byte $50   ; 
- D 3 - - - 0x0025C4 00:E5B4: 13        .byte $13   ; 
; 02
- D 3 - - - 0x0025C5 00:E5B5: B0        .byte $B0   ; 
- D 3 - - - 0x0025C6 00:E5B6: 11        .byte $11   ; 
- D 3 - - - 0x0025C7 00:E5B7: 50        .byte $50   ; 
- D 3 - - - 0x0025C8 00:E5B8: 16        .byte $16   ; 
; 03
- D 3 - - - 0x0025C9 00:E5B9: D0        .byte $D0   ; 
- D 3 - - - 0x0025CA 00:E5BA: 0C        .byte $0C   ; 
- D 3 - - - 0x0025CB 00:E5BB: 10        .byte $10   ; 
- D 3 - - - 0x0025CC 00:E5BC: 10        .byte $10   ; 
; 04
- D 3 - - - 0x0025CD 00:E5BD: 90        .byte $90   ; 
- D 3 - - - 0x0025CE 00:E5BE: 0D        .byte $0D   ; 
- D 3 - - - 0x0025CF 00:E5BF: B0        .byte $B0   ; 
- D 3 - - - 0x0025D0 00:E5C0: 11        .byte $11   ; 
; 05
- D 3 - - - 0x0025D1 00:E5C1: 10        .byte $10   ; 
- D 3 - - - 0x0025D2 00:E5C2: 10        .byte $10   ; 
- D 3 - - - 0x0025D3 00:E5C3: 50        .byte $50   ; 
- D 3 - - - 0x0025D4 00:E5C4: 13        .byte $13   ; 
; 06
- D 3 - - - 0x0025D5 00:E5C5: 90        .byte $90   ; 
- D 3 - - - 0x0025D6 00:E5C6: 0D        .byte $0D   ; 
- D 3 - - - 0x0025D7 00:E5C7: B0        .byte $B0   ; 
- D 3 - - - 0x0025D8 00:E5C8: 11        .byte $11   ; 
; 07
- D 3 - - - 0x0025D9 00:E5C9: D0        .byte $D0   ; 
- D 3 - - - 0x0025DA 00:E5CA: 0C        .byte $0C   ; 
- D 3 - - - 0x0025DB 00:E5CB: 10        .byte $10   ; 
- D 3 - - - 0x0025DC 00:E5CC: 10        .byte $10   ; 
; 08
- D 3 - - - 0x0025DD 00:E5CD: B0        .byte $B0   ; 
- D 3 - - - 0x0025DE 00:E5CE: 11        .byte $11   ; 
- D 3 - - - 0x0025DF 00:E5CF: 40        .byte $40   ; 
- D 3 - - - 0x0025E0 00:E5D0: 1A        .byte $1A   ; 
; 09
- D 3 - - - 0x0025E1 00:E5D1: C0        .byte $C0   ; 
- D 3 - - - 0x0025E2 00:E5D2: 0C        .byte $0C   ; 
- D 3 - - - 0x0025E3 00:E5D3: 50        .byte $50   ; 
- D 3 - - - 0x0025E4 00:E5D4: 13        .byte $13   ; 
; 0A
- D 3 - - - 0x0025E5 00:E5D5: 60        .byte $60   ; 
- D 3 - - - 0x0025E6 00:E5D6: 0A        .byte $0A   ; 
- D 3 - - - 0x0025E7 00:E5D7: B0        .byte $B0   ; 
- D 3 - - - 0x0025E8 00:E5D8: 11        .byte $11   ; 
; 0B
- D 3 - - - 0x0025E9 00:E5D9: D0        .byte $D0   ; 
- D 3 - - - 0x0025EA 00:E5DA: 0C        .byte $0C   ; 
- D 3 - - - 0x0025EB 00:E5DB: 50        .byte $50   ; 
- D 3 - - - 0x0025EC 00:E5DC: 13        .byte $13   ; 
; 0C
- D 3 - - - 0x0025ED 00:E5DD: B0        .byte $B0   ; 
- D 3 - - - 0x0025EE 00:E5DE: 11        .byte $11   ; 
- D 3 - - - 0x0025EF 00:E5DF: 40        .byte $40   ; 
- D 3 - - - 0x0025F0 00:E5E0: 1A        .byte $1A   ; 
; 0D
- D 3 - - - 0x0025F1 00:E5E1: 20        .byte $20   ; 
- D 3 - - - 0x0025F2 00:E5E2: 0C        .byte $0C   ; 
- D 3 - - - 0x0025F3 00:E5E3: F0        .byte $F0   ; 
- D 3 - - - 0x0025F4 00:E5E4: 13        .byte $13   ; 
; 0E
- D 3 - - - 0x0025F5 00:E5E5: 60        .byte $60   ; 
- D 3 - - - 0x0025F6 00:E5E6: 0A        .byte $0A   ; 
- D 3 - - - 0x0025F7 00:E5E7: B0        .byte $B0   ; 
- D 3 - - - 0x0025F8 00:E5E8: 11        .byte $11   ; 
; 0F
- D 3 - - - 0x0025F9 00:E5E9: 30        .byte $30   ; 
- D 3 - - - 0x0025FA 00:E5EA: 0C        .byte $0C   ; 
- D 3 - - - 0x0025FB 00:E5EB: F0        .byte $F0   ; 
- D 3 - - - 0x0025FC 00:E5EC: 13        .byte $13   ; 
; 10
- D 3 - - - 0x0025FD 00:E5ED: 00        .byte $00   ; 
- D 3 - - - 0x0025FE 00:E5EE: 04        .byte $04   ; 
- D 3 - - - 0x0025FF 00:E5EF: 00        .byte $00   ; 
- D 3 - - - 0x002600 00:E5F0: 20        .byte $20   ; 
; 11
- D 3 - - - 0x002601 00:E5F1: 00        .byte $00   ; 
- D 3 - - - 0x002602 00:E5F2: 04        .byte $04   ; 
- D 3 - - - 0x002603 00:E5F3: 00        .byte $00   ; 
- D 3 - - - 0x002604 00:E5F4: 19        .byte $19   ; 



sub_E5F5:
C - - - - - 0x002605 00:E5F5: A4 79     LDY ram_mario_message
C - - - - - 0x002607 00:E5F7: C0 03     CPY #$03
C - - - - - 0x002609 00:E5F9: 90 0C     BCC bra_E607_not_fault_messages
C - - - - - 0x00260B 00:E5FB: A5 8D     LDA ram_008D
C - - - - - 0x00260D 00:E5FD: 6A        ROR
C - - - - - 0x00260E 00:E5FE: 6A        ROR
C - - - - - 0x00260F 00:E5FF: A9 01     LDA #$01
C - - - - - 0x002611 00:E601: B0 1E     BCS bra_E621
C - - - - - 0x002613 00:E603: A9 02     LDA #$02
C - - - - - 0x002615 00:E605: D0 1A     BNE bra_E621    ; jmp
bra_E607_not_fault_messages:
C - - - - - 0x002617 00:E607: A5 72     LDA ram_0072
C - - - - - 0x002619 00:E609: D0 1E     BNE bra_E629_RTS
C - - - - - 0x00261B 00:E60B: A9 01     LDA #$01
C - - - - - 0x00261D 00:E60D: A6 71     LDX ram_0071
C - - - - - 0x00261F 00:E60F: E0 60     CPX #$60
C - - - - - 0x002621 00:E611: 90 08     BCC bra_E61B
C - - - - - 0x002623 00:E613: A9 00     LDA #$00
C - - - - - 0x002625 00:E615: E0 80     CPX #$80
C - - - - - 0x002627 00:E617: 90 02     BCC bra_E61B
C - - - - - 0x002629 00:E619: A9 02     LDA #$02
bra_E61B:
C - - - - - 0x00262B 00:E61B: C5 73     CMP ram_0073
C - - - - - 0x00262D 00:E61D: F0 0A     BEQ bra_E629_RTS
C - - - - - 0x00262F 00:E61F: 85 73     STA ram_0073
bra_E621:
sub_E621_update_mario_headtracking:
C - - - - - 0x002631 00:E621: 18        CLC
C - - - - - 0x002632 00:E622: 69 06     ADC #$06
C - - - - - 0x002634 00:E624: 0A        ASL
C - - - - - 0x002635 00:E625: A8        TAY
C - - - - - 0x002636 00:E626: 20 5D E6  JSR sub_E65D
bra_E629_RTS:
C - - - - - 0x002639 00:E629: 60        RTS



_off001_E62A_06_facing_down:
- D 3 - I - 0x00263A 00:E62A: 05        .byte $05   ; 
- D 3 - I - 0x00263B 00:E62B: 21 3B     .dbyt $213B
- D 3 - I - 0x00263D 00:E62D: 02        .byte $02   ; 
- D 3 - I - 0x00263E 00:E62E: 7D        .byte $7D, $AF   ; 



_off001_E630_07_facing_left:
- D 3 - I - 0x002640 00:E630: 05        .byte $05   ; 
- D 3 - I - 0x002641 00:E631: 21 3B     .dbyt $213B
- D 3 - I - 0x002643 00:E633: 02        .byte $02   ; 
- D 3 - I - 0x002644 00:E634: 7E        .byte $7E, $7F   ; 



_off001_E636_08_facing_up:
- D 3 - I - 0x002646 00:E636: 05        .byte $05   ; 
- D 3 - I - 0x002647 00:E637: 21 3B     .dbyt $213B
- D 3 - I - 0x002649 00:E639: 02        .byte $02   ; 
- D 3 - I - 0x00264A 00:E63A: 80        .byte $80, $81   ; 



tbl_E63C:
; bzk optimize, 1st byte always 02
; 00 in
- D 3 - - - 0x00264C 00:E63C: 02        .byte $02   ; 
- D 3 - - - 0x00264D 00:E63D: 02        .byte $02   ; 
; 01 out
- D 3 - - - 0x00264E 00:E63E: 02        .byte $02   ; 
- D 3 - - - 0x00264F 00:E63F: 01        .byte $01   ; 
; 02 net
- D 3 - - - 0x002650 00:E640: 02        .byte $02   ; 
- D 3 - - - 0x002651 00:E641: 04        .byte $04   ; 
; 03 fault
- D 3 - - - 0x002652 00:E642: 02        .byte $02   ; 
- D 3 - - - 0x002653 00:E643: 08        .byte $08   ; 
; 04 double fault
- D 3 - - - 0x002654 00:E644: 02        .byte $02   ; 
- D 3 - - - 0x002655 00:E645: 08        .byte $08   ; 



sub_E646_display_mario_message:
C - - - - - 0x002656 00:E646: A5 8E     LDA ram_serve_status_2
C - - - - - 0x002658 00:E648: D0 0F     BNE bra_E659
C - - - - - 0x00265A 00:E64A: E6 8E     INC ram_serve_status_2
C - - - - - 0x00265C 00:E64C: A5 79     LDA ram_mario_message
C - - - - - 0x00265E 00:E64E: 0A        ASL
C - - - - - 0x00265F 00:E64F: A8        TAY
C - - - - - 0x002660 00:E650: B9 3C E6  LDA tbl_E63C,Y
C - - - - - 0x002663 00:E653: AA        TAX
C - - - - - 0x002664 00:E654: B9 3D E6  LDA tbl_E63C + 1,Y
C - - - - - 0x002667 00:E657: 95 FC     STA ram_00FE - 2,X
bra_E659:
C - - - - - 0x002669 00:E659: A5 79     LDA ram_mario_message
C - - - - - 0x00266B 00:E65B: 0A        ASL
C - - - - - 0x00266C 00:E65C: A8        TAY
bra_E65D:
sub_E65D:
C - - - - - 0x00266D 00:E65D: B9 93 E6  LDA tbl_E693_mario_messages_and_headtracking,Y
C - - - - - 0x002670 00:E660: 85 14     STA ram_0014
C - - - - - 0x002672 00:E662: B9 94 E6  LDA tbl_E693_mario_messages_and_headtracking + 1,Y
C - - - - - 0x002675 00:E665: 85 15     STA ram_0015
C - - - - - 0x002677 00:E667: A0 00     LDY #$00
C - - - - - 0x002679 00:E669: B1 14     LDA (ram_0014),Y
C - - - - - 0x00267B 00:E66B: AA        TAX
C - - - - - 0x00267C 00:E66C: AC 90 05  LDY ram_buffer_index
C - - - - - 0x00267F 00:E66F: E6 14     INC ram_0014
C - - - - - 0x002681 00:E671: D0 02     BNE bra_E675
- - - - - - 0x002683 00:E673: E6 15     INC ram_0015
bra_E675:
C - - - - - 0x002685 00:E675: 20 2A ED  JSR sub_ED2A_fill_buffer
C - - - - - 0x002688 00:E678: A9 00     LDA #$00
C - - - - - 0x00268A 00:E67A: 99 91 05  STA ram_ppu_buffer,Y
C - - - - - 0x00268D 00:E67D: 8C 90 05  STY ram_buffer_index
C - - - - - 0x002690 00:E680: A9 01     LDA #$01
C - - - - - 0x002692 00:E682: 85 31     STA ram_buffer_ready_flag
bra_E684_RTS:
C - - - - - 0x002694 00:E684: 60        RTS



sub_E685_deuce_message:
C - - - - - 0x002695 00:E685: A5 79     LDA ram_mario_message
C - - - - - 0x002697 00:E687: C9 03     CMP #con_msg_fault    ; fault message id
C - - - - - 0x002699 00:E689: F0 F9     BEQ bra_E684_RTS
C - - - - - 0x00269B 00:E68B: A9 10     LDA #$10
C - - - - - 0x00269D 00:E68D: 85 FE     STA ram_00FE
C - - - - - 0x00269F 00:E68F: A0 0A     LDY #con_msg_deuce * $02    ; deuce message id * 2
C - - - - - 0x0026A1 00:E691: D0 CA     BNE bra_E65D    ; jmp



tbl_E693_mario_messages_and_headtracking:
- D 3 - - - 0x0026A3 00:E693: A5 E6     .word _off001_E6A5_00_in
- D 3 - - - 0x0026A5 00:E695: C2 E6     .word _off001_E6C2_01_out
- D 3 - - - 0x0026A7 00:E697: E2 E6     .word _off001_E6E2_02_net
- D 3 - - - 0x0026A9 00:E699: 02 E7     .word _off001_E702_03_fault
- D 3 - - - 0x0026AB 00:E69B: 25 E7     .word _off001_E725_04_double_fault
- D 3 - - - 0x0026AD 00:E69D: 52 E7     .word _off001_E752_05_deuce
- D 3 - - - 0x0026AF 00:E69F: 2A E6     .word _off001_E62A_06_facing_down
- D 3 - - - 0x0026B1 00:E6A1: 30 E6     .word _off001_E630_07_facing_left
- D 3 - - - 0x0026B3 00:E6A3: 36 E6     .word _off001_E636_08_facing_up



_off001_E6A5_00_in:
- D 3 - I - 0x0026B5 00:E6A5: 1C        .byte $1C   ; 
- D 3 - I - 0x0026B6 00:E6A6: 20 B8     .dbyt $20B8
- D 3 - I - 0x0026B8 00:E6A8: 05        .byte $05   ; 
- D 3 - I - 0x0026B9 00:E6A9: B4        .byte $B4, $B5, $B6, $B7, $B8   ; 

- D 3 - I - 0x0026BE 00:E6AE: 20 D8     .dbyt $20D8
- D 3 - I - 0x0026C0 00:E6B0: 05        .byte $05   ; 
- D 3 - I - 0x0026C1 00:E6B1: B9        .byte $B9, $BA, $BB, $BC, $D7   ; in!

- D 3 - I - 0x0026C6 00:E6B6: 20 F8     .dbyt $20F8
- D 3 - I - 0x0026C8 00:E6B8: 05        .byte $05   ; 
- D 3 - I - 0x0026C9 00:E6B9: BE        .byte $BE, $BF, $B6, $C0, $C1   ; 

- D 3 - I - 0x0026CE 00:E6BE: 21 1B     .dbyt $211B
- D 3 - I - 0x0026D0 00:E6C0: 01        .byte $01   ; 
- D 3 - I - 0x0026D1 00:E6C1: C2        .byte $C2   ; 



_off001_E6C2_01_out:
- D 3 - I - 0x0026D2 00:E6C2: 1F        .byte $1F   ; 
- D 3 - I - 0x0026D3 00:E6C3: 20 B7     .dbyt $20B7
- D 3 - I - 0x0026D5 00:E6C5: 06        .byte $06   ; 
- D 3 - I - 0x0026D6 00:E6C6: B4        .byte $B4, $B5, $B6, $B6, $B7, $B8   ; 

- D 3 - I - 0x0026DC 00:E6CC: 20 D7     .dbyt $20D7
- D 3 - I - 0x0026DE 00:E6CE: 06        .byte $06   ; 
- D 3 - I - 0x0026DF 00:E6CF: B9        .byte $B9, $C3, $C4, $C5, $BC, $D7   ; out!

- D 3 - I - 0x0026E5 00:E6D5: 20 F7     .dbyt $20F7
- D 3 - I - 0x0026E7 00:E6D7: 06        .byte $06   ; 
- D 3 - I - 0x0026E8 00:E6D8: BE        .byte $BE, $BF, $B6, $B6, $C0, $C1   ; 

- D 3 - I - 0x0026EE 00:E6DE: 21 1B     .dbyt $211B
- D 3 - I - 0x0026F0 00:E6E0: 01        .byte $01   ; 
- D 3 - I - 0x0026F1 00:E6E1: C2        .byte $C2   ; 



_off001_E6E2_02_net:
- D 3 - I - 0x0026F2 00:E6E2: 1F        .byte $1F   ; 
- D 3 - I - 0x0026F3 00:E6E3: 20 B7     .dbyt $20B7
- D 3 - I - 0x0026F5 00:E6E5: 06        .byte $06   ; 
- D 3 - I - 0x0026F6 00:E6E6: B4        .byte $B4, $B5, $B6, $B6, $B7, $B8   ; 

- D 3 - I - 0x0026FC 00:E6EC: 20 D7     .dbyt $20D7
- D 3 - I - 0x0026FE 00:E6EE: 06        .byte $06   ; 
- D 3 - I - 0x0026FF 00:E6EF: B9        .byte $B9, $BB, $C6, $C5, $BC, $D7   ; net!

- D 3 - I - 0x002705 00:E6F5: 20 F7     .dbyt $20F7
- D 3 - I - 0x002707 00:E6F7: 06        .byte $06   ; 
- D 3 - I - 0x002708 00:E6F8: BE        .byte $BE, $BF, $B6, $B6, $C0, $C1   ; 

- D 3 - I - 0x00270E 00:E6FE: 21 1B     .dbyt $211B
- D 3 - I - 0x002710 00:E700: 01        .byte $01   ; 
- D 3 - I - 0x002711 00:E701: C2        .byte $C2   ; 



_off001_E702_03_fault:
- D 3 - I - 0x002712 00:E702: 22        .byte $22   ; 
- D 3 - I - 0x002713 00:E703: 20 B7     .dbyt $20B7
- D 3 - I - 0x002715 00:E705: 07        .byte $07   ; 
- D 3 - I - 0x002716 00:E706: B4        .byte $B4, $B5, $B6, $B6, $B6, $B7, $B8   ; 

- D 3 - I - 0x00271D 00:E70D: 20 D7     .dbyt $20D7
- D 3 - I - 0x00271F 00:E70F: 07        .byte $07   ; 
- D 3 - I - 0x002720 00:E710: B9        .byte $B9, $C7, $C8, $C9, $CA, $BC, $BD   ; fault!

- D 3 - I - 0x002727 00:E717: 20 F7     .dbyt $20F7
- D 3 - I - 0x002729 00:E719: 07        .byte $07   ; 
- D 3 - I - 0x00272A 00:E71A: BE        .byte $BE, $BF, $B6, $B6, $B6, $C0, $D6   ; 

- D 3 - I - 0x002731 00:E721: 21 1B     .dbyt $211B
- D 3 - I - 0x002733 00:E723: 01        .byte $01   ; 
- D 3 - I - 0x002734 00:E724: CB        .byte $CB   ; 



_off001_E725_04_double_fault:
- D 3 - I - 0x002735 00:E725: 2C        .byte $2C   ; 
- D 3 - I - 0x002736 00:E726: 20 97     .dbyt $2097
- D 3 - I - 0x002738 00:E728: 07        .byte $07   ; 
- D 3 - I - 0x002739 00:E729: B4        .byte $B4, $B5, $B6, $B6, $B6, $B7, $B8   ; 

- D 3 - I - 0x002740 00:E730: 20 B7     .dbyt $20B7
- D 3 - I - 0x002742 00:E732: 07        .byte $07   ; 
- D 3 - I - 0x002743 00:E733: B9        .byte $B9, $CC, $CD, $CE, $CF, $D0, $BD   ; double

- D 3 - I - 0x00274A 00:E73A: 20 D7     .dbyt $20D7
- D 3 - I - 0x00274C 00:E73C: 07        .byte $07   ; 
- D 3 - I - 0x00274D 00:E73D: B9        .byte $B9, $C7, $C8, $C9, $CA, $BC, $BD   ; fault!

- D 3 - I - 0x002754 00:E744: 20 F7     .dbyt $20F7
- D 3 - I - 0x002756 00:E746: 07        .byte $07   ; 
- D 3 - I - 0x002757 00:E747: BE        .byte $BE, $BF, $B6, $B6, $B6, $C0, $D6   ; 

- D 3 - I - 0x00275E 00:E74E: 21 1B     .dbyt $211B
- D 3 - I - 0x002760 00:E750: 01        .byte $01   ; 
- D 3 - I - 0x002761 00:E751: CB        .byte $CB   ; 



_off001_E752_05_deuce:
- D 3 - I - 0x002762 00:E752: 2C        .byte $2C   ; 
- D 3 - I - 0x002763 00:E753: 20 97     .dbyt $2097
- D 3 - I - 0x002765 00:E755: 07        .byte $07   ; 
- D 3 - I - 0x002766 00:E756: 24        .byte $24, $24, $24, $7C, $4D, $4D, $4D   ; field tiles (to overwrite previous double fault message?)

- D 3 - I - 0x00276D 00:E75D: 20 B7     .dbyt $20B7
- D 3 - I - 0x00276F 00:E75F: 07        .byte $07   ; 
- D 3 - I - 0x002770 00:E760: B4        .byte $B4, $B5, $B6, $B6, $B6, $B7, $B8   ; 

- D 3 - I - 0x002777 00:E767: 20 D7     .dbyt $20D7
- D 3 - I - 0x002779 00:E769: 07        .byte $07   ; 
- D 3 - I - 0x00277A 00:E76A: B9        .byte $B9, $D5, $D1, $D2, $D3, $D4, $BD   ; deuce!

- D 3 - I - 0x002781 00:E771: 20 F7     .dbyt $20F7
- D 3 - I - 0x002783 00:E773: 07        .byte $07   ; 
- D 3 - I - 0x002784 00:E774: BE        .byte $BE, $BF, $B6, $B6, $B6, $C0, $D6   ; 

- D 3 - I - 0x00278B 00:E77B: 21 1B     .dbyt $211B
- D 3 - I - 0x00278D 00:E77D: 01        .byte $01   ; 
- D 3 - I - 0x00278E 00:E77E: CB        .byte $CB   ; 



sub_E77F:
C - - - - - 0x00278F 00:E77F: A9 00     LDA #$00
C - - - - - 0x002791 00:E781: 85 5C     STA ram_005C
C - - - - - 0x002793 00:E783: 85 5D     STA ram_005D
C - - - - - 0x002795 00:E785: A9 02     LDA #$02
C - - - - - 0x002797 00:E787: 85 5E     STA ram_005E
C - - - - - 0x002799 00:E789: A9 10     LDA #$10
C - - - - - 0x00279B 00:E78B: 85 25     STA ram_0025
C - - - - - 0x00279D 00:E78D: A5 5B     LDA ram_005B
C - - - - - 0x00279F 00:E78F: D0 01     BNE bra_E792
C - - - - - 0x0027A1 00:E791: 60        RTS
bra_E792:
C - - - - - 0x0027A2 00:E792: AA        TAX
C - - - - - 0x0027A3 00:E793: CA        DEX
C - - - - - 0x0027A4 00:E794: 8A        TXA
C - - - - - 0x0027A5 00:E795: 49 01     EOR #$01
C - - - - - 0x0027A7 00:E797: A8        TAY
C - - - - - 0x0027A8 00:E798: F6 58     INC ram_score,X
C - - - - - 0x0027AA 00:E79A: A5 57     LDA ram_0057
C - - - - - 0x0027AC 00:E79C: F0 1A     BEQ bra_E7B8
C - - - - - 0x0027AE 00:E79E: C9 02     CMP #$02
C - - - - - 0x0027B0 00:E7A0: F0 38     BEQ bra_E7DA
C - - - - - 0x0027B2 00:E7A2: B9 58 00  LDA ram_score,Y
C - - - - - 0x0027B5 00:E7A5: F0 04     BEQ bra_E7AB
C - - - - - 0x0027B7 00:E7A7: C6 58     DEC ram_score
C - - - - - 0x0027B9 00:E7A9: C6 59     DEC ram_score + 1
bra_E7AB:
C - - - - - 0x0027BB 00:E7AB: B5 58     LDA ram_score,X
C - - - - - 0x0027BD 00:E7AD: C9 02     CMP #$02
C - - - - - 0x0027BF 00:E7AF: D0 20     BNE bra_E7D1
bra_E7B1:
C - - - - - 0x0027C1 00:E7B1: D6 58     DEC ram_score,X
C - - - - - 0x0027C3 00:E7B3: A5 5B     LDA ram_005B
C - - - - - 0x0027C5 00:E7B5: 85 5C     STA ram_005C
C - - - - - 0x0027C7 00:E7B7: 60        RTS
bra_E7B8:
C - - - - - 0x0027C8 00:E7B8: B5 58     LDA ram_score,X
C - - - - - 0x0027CA 00:E7BA: C9 04     CMP #$04
C - - - - - 0x0027CC 00:E7BC: F0 F3     BEQ bra_E7B1
C - - - - - 0x0027CE 00:E7BE: C9 03     CMP #$03
C - - - - - 0x0027D0 00:E7C0: D0 0F     BNE bra_E7D1
C - - - - - 0x0027D2 00:E7C2: B9 58 00  LDA ram_score,Y
C - - - - - 0x0027D5 00:E7C5: C9 03     CMP #$03
C - - - - - 0x0027D7 00:E7C7: D0 08     BNE bra_E7D1
C - - - - - 0x0027D9 00:E7C9: E6 57     INC ram_0057
C - - - - - 0x0027DB 00:E7CB: A9 00     LDA #$00
C - - - - - 0x0027DD 00:E7CD: 85 58     STA ram_score
C - - - - - 0x0027DF 00:E7CF: 85 59     STA ram_score + 1
bra_E7D1:
C - - - - - 0x0027E1 00:E7D1: A5 8D     LDA ram_008D
C - - - - - 0x0027E3 00:E7D3: 49 01     EOR #$01
bra_E7D5:
loc_E7D5:
C - - - - - 0x0027E5 00:E7D5: 09 C0     ORA #$C0
C - - - - - 0x0027E7 00:E7D7: 85 8D     STA ram_008D
C - - - - - 0x0027E9 00:E7D9: 60        RTS
bra_E7DA:
- - - - - - 0x0027EA 00:E7DA: B5 58     LDA ram_score,X
- - - - - - 0x0027EC 00:E7DC: C9 33     CMP #$33
- - - - - - 0x0027EE 00:E7DE: D0 04     BNE bra_E7E4
- - - - - - 0x0027F0 00:E7E0: C6 58     DEC ram_score
- - - - - - 0x0027F2 00:E7E2: C6 59     DEC ram_score + 1
bra_E7E4:
- - - - - - 0x0027F4 00:E7E4: B5 58     LDA ram_score,X
- - - - - - 0x0027F6 00:E7E6: C9 07     CMP #$07
- - - - - - 0x0027F8 00:E7E8: 90 09     BCC bra_E7F3
- - - - - - 0x0027FA 00:E7EA: F9 58 00  SBC ram_score,Y
- - - - - - 0x0027FD 00:E7ED: 30 04     BMI bra_E7F3
- - - - - - 0x0027FF 00:E7EF: C9 02     CMP #$02
- - - - - - 0x002801 00:E7F1: B0 BE     BCS bra_E7B1
bra_E7F3:
- - - - - - 0x002803 00:E7F3: A5 8D     LDA ram_008D
- - - - - - 0x002805 00:E7F5: 29 07     AND #$07
- - - - - - 0x002807 00:E7F7: AA        TAX
- - - - - - 0x002808 00:E7F8: BD 04 E8  LDA tbl_E804,X
- - - - - - 0x00280B 00:E7FB: A4 39     LDY ram_game_mode
- - - - - - 0x00280D 00:E7FD: D0 D6     BNE bra_E7D5    ; if 2 players
- - - - - - 0x00280F 00:E7FF: 29 03     AND #$03
- - - - - - 0x002811 00:E801: 4C D5 E7  JMP loc_E7D5



tbl_E804:
- - - - - - 0x002814 00:E804: 01        .byte $01   ; 00
- - - - - - 0x002815 00:E805: 03        .byte $03   ; 01
- - - - - - 0x002816 00:E806: 04        .byte $04   ; 02
- - - - - - 0x002817 00:E807: 02        .byte $02   ; 03
- - - - - - 0x002818 00:E808: 05        .byte $05   ; 04
- - - - - - 0x002819 00:E809: 07        .byte $07   ; 05
- - - - - - 0x00281A 00:E80A: 00        .byte $00   ; 06
- - - - - - 0x00281B 00:E80B: 06        .byte $06   ; 07



sub_E80C:
C - - - - - 0x00281C 00:E80C: A6 50     LDX ram_sets_counter
C - - - - - 0x00281E 00:E80E: A4 50     LDY ram_sets_counter
C - - - - - 0x002820 00:E810: A5 5C     LDA ram_005C
C - - - - - 0x002822 00:E812: D0 05     BNE bra_E819
C - - - - - 0x002824 00:E814: A9 08     LDA #$08
C - - - - - 0x002826 00:E816: 85 25     STA ram_0025
C - - - - - 0x002828 00:E818: 60        RTS
bra_E819:
C - - - - - 0x002829 00:E819: A9 12     LDA #$12
C - - - - - 0x00282B 00:E81B: 85 25     STA ram_0025
C - - - - - 0x00282D 00:E81D: A5 5C     LDA ram_005C
C - - - - - 0x00282F 00:E81F: C9 01     CMP #$01
C - - - - - 0x002831 00:E821: F0 06     BEQ bra_E829
C - - - - - 0x002833 00:E823: E8        INX
C - - - - - 0x002834 00:E824: E8        INX
C - - - - - 0x002835 00:E825: E8        INX
C - - - - - 0x002836 00:E826: 4C 2C E8  JMP loc_E82C
bra_E829:
C - - - - - 0x002839 00:E829: C8        INY
C - - - - - 0x00283A 00:E82A: C8        INY
C - - - - - 0x00283B 00:E82B: C8        INY
loc_E82C:
C D 3 - - - 0x00283C 00:E82C: A9 00     LDA #$00
C - - - - - 0x00283E 00:E82E: 85 58     STA ram_score
C - - - - - 0x002840 00:E830: 85 59     STA ram_score + 1
C - - - - - 0x002842 00:E832: 85 57     STA ram_0057
C - - - - - 0x002844 00:E834: F6 51     INC ram_set_wins,X
C - - - - - 0x002846 00:E836: B5 51     LDA ram_set_wins,X
C - - - - - 0x002848 00:E838: C9 07     CMP #$07
C - - - - - 0x00284A 00:E83A: F0 3A     BEQ bra_E876
C - - - - - 0x00284C 00:E83C: C9 06     CMP #$06
C - - - - - 0x00284E 00:E83E: D0 0B     BNE bra_E84B
C - - - - - 0x002850 00:E840: B9 51 00  LDA ram_set_wins,Y
C - - - - - 0x002853 00:E843: C9 06     CMP #$06
C - - - - - 0x002855 00:E845: F0 28     BEQ bra_E86F
C - - - - - 0x002857 00:E847: C9 05     CMP #$05
C - - - - - 0x002859 00:E849: D0 2B     BNE bra_E876
bra_E84B:
loc_E84B:
C D 3 - - - 0x00285B 00:E84B: 86 4F     STX ram_004F
C - - - - - 0x00285D 00:E84D: A9 10     LDA #$10
C - - - - - 0x00285F 00:E84F: 85 4E     STA ram_004E
C - - - - - 0x002861 00:E851: E6 5A     INC ram_005A
C - - - - - 0x002863 00:E853: A5 5A     LDA ram_005A
C - - - - - 0x002865 00:E855: 29 03     AND #$03
C - - - - - 0x002867 00:E857: 0A        ASL
C - - - - - 0x002868 00:E858: 09 C0     ORA #$C0
C - - - - - 0x00286A 00:E85A: 85 8D     STA ram_008D
C - - - - - 0x00286C 00:E85C: A5 5A     LDA ram_005A
C - - - - - 0x00286E 00:E85E: 29 01     AND #$01
C - - - - - 0x002870 00:E860: D0 02     BNE bra_E864
C - - - - - 0x002872 00:E862: E6 8D     INC ram_008D
bra_E864:
C - - - - - 0x002874 00:E864: A5 39     LDA ram_game_mode
C - - - - - 0x002876 00:E866: D0 06     BNE bra_E86E_RTS    ; if 2 players
C - - - - - 0x002878 00:E868: A5 8D     LDA ram_008D
C - - - - - 0x00287A 00:E86A: 29 FB     AND #$FB
C - - - - - 0x00287C 00:E86C: 85 8D     STA ram_008D
bra_E86E_RTS:
C - - - - - 0x00287E 00:E86E: 60        RTS
bra_E86F:
- - - - - - 0x00287F 00:E86F: A9 02     LDA #$02
- - - - - - 0x002881 00:E871: 85 57     STA ram_0057
- - - - - - 0x002883 00:E873: 4C 4B E8  JMP loc_E84B
bra_E876:
C - - - - - 0x002886 00:E876: A9 01     LDA #$01
C - - - - - 0x002888 00:E878: 85 5D     STA ram_005D
C - - - - - 0x00288A 00:E87A: B5 51     LDA ram_set_wins,X
C - - - - - 0x00288C 00:E87C: 09 80     ORA #$80
C - - - - - 0x00288E 00:E87E: 95 51     STA ram_set_wins,X
C - - - - - 0x002890 00:E880: 4C 4B E8  JMP loc_E84B



sub_E883:
C - - - - - 0x002893 00:E883: A5 5D     LDA ram_005D
C - - - - - 0x002895 00:E885: D0 01     BNE bra_E888
bra_E887_RTS:
C - - - - - 0x002897 00:E887: 60        RTS
bra_E888:
C - - - - - 0x002898 00:E888: A9 18     LDA #$18
C - - - - - 0x00289A 00:E88A: 85 25     STA ram_0025
C - - - - - 0x00289C 00:E88C: E6 50     INC ram_sets_counter
C - - - - - 0x00289E 00:E88E: A5 50     LDA ram_sets_counter
C - - - - - 0x0028A0 00:E890: C9 03     CMP #$03
C - - - - - 0x0028A2 00:E892: F0 12     BEQ bra_E8A6
C - - - - - 0x0028A4 00:E894: C9 02     CMP #$02
C - - - - - 0x0028A6 00:E896: D0 EF     BNE bra_E887_RTS
C - - - - - 0x0028A8 00:E898: 24 51     BIT ram_set_wins
C - - - - - 0x0028AA 00:E89A: 30 06     BMI bra_E8A2
- - - - - - 0x0028AC 00:E89C: 24 52     BIT ram_set_wins + 1
- - - - - - 0x0028AE 00:E89E: 10 06     BPL bra_E8A6
- - - - - - 0x0028B0 00:E8A0: 30 E5     BMI bra_E887_RTS    ; jmp
bra_E8A2:
C - - - - - 0x0028B2 00:E8A2: 24 52     BIT ram_set_wins + 1
C - - - - - 0x0028B4 00:E8A4: 10 E1     BPL bra_E887_RTS
bra_E8A6:
C - - - - - 0x0028B6 00:E8A6: A9 0B     LDA #$0B
C - - - - - 0x0028B8 00:E8A8: 85 5E     STA ram_005E
C - - - - - 0x0028BA 00:E8AA: A9 20     LDA #$20
C - - - - - 0x0028BC 00:E8AC: 85 25     STA ram_0025
C - - - - - 0x0028BE 00:E8AE: 60        RTS



sub_E8AF:
C - - - - - 0x0028BF 00:E8AF: A5 5C     LDA ram_005C
C - - - - - 0x0028C1 00:E8B1: C9 02     CMP #$02
C - - - - - 0x0028C3 00:E8B3: F0 14     BEQ bra_E8C9_RTS
C - - - - - 0x0028C5 00:E8B5: A4 4C     LDY ram_level
C - - - - - 0x0028C7 00:E8B7: C0 04     CPY #$04
C - - - - - 0x0028C9 00:E8B9: F0 02     BEQ bra_E8BD_max_diff
C - - - - - 0x0028CB 00:E8BB: E6 4C     INC ram_level
bra_E8BD_max_diff:
C - - - - - 0x0028CD 00:E8BD: E6 4D     INC ram_004D
C - - - - - 0x0028CF 00:E8BF: A4 4D     LDY ram_004D
C - - - - - 0x0028D1 00:E8C1: C0 02     CPY #$02
C - - - - - 0x0028D3 00:E8C3: D0 04     BNE bra_E8C9_RTS
- - - - - - 0x0028D5 00:E8C5: A9 00     LDA #$00
- - - - - - 0x0028D7 00:E8C7: 85 5C     STA ram_005C
bra_E8C9_RTS:
C - - - - - 0x0028D9 00:E8C9: 60        RTS



sub_E8CA:
C - - - - - 0x0028DA 00:E8CA: AC 90 05  LDY ram_buffer_index
C - - - - - 0x0028DD 00:E8CD: A2 05     LDX #$05
C - - - - - 0x0028DF 00:E8CF: A9 EA     LDA #> tbl_EA8B_you
C - - - - - 0x0028E1 00:E8D1: 85 15     STA ram_0015
C - - - - - 0x0028E3 00:E8D3: A9 8B     LDA #< tbl_EA8B_you
C - - - - - 0x0028E5 00:E8D5: 85 14     STA ram_0014
C - - - - - 0x0028E7 00:E8D7: 20 2A ED  JSR sub_ED2A_fill_buffer
C - - - - - 0x0028EA 00:E8DA: 20 10 E9  JSR sub_E910_print_score
C - - - - - 0x0028ED 00:E8DD: A2 0C     LDX #$0C
C - - - - - 0x0028EF 00:E8DF: A9 EA     LDA #> tbl_EA90_com
C - - - - - 0x0028F1 00:E8E1: 85 15     STA ram_0015
C - - - - - 0x0028F3 00:E8E3: A9 90     LDA #< tbl_EA90_com
C - - - - - 0x0028F5 00:E8E5: 85 14     STA ram_0014
C - - - - - 0x0028F7 00:E8E7: 20 2A ED  JSR sub_ED2A_fill_buffer
C - - - - - 0x0028FA 00:E8EA: E8        INX
C - - - - - 0x0028FB 00:E8EB: 20 10 E9  JSR sub_E910_print_score
C - - - - - 0x0028FE 00:E8EE: A5 57     LDA ram_0057
C - - - - - 0x002900 00:E8F0: C9 01     CMP #$01
C - - - - - 0x002902 00:E8F2: D0 13     BNE bra_E907_close_buffer
C - - - - - 0x002904 00:E8F4: A5 58     LDA ram_score
C - - - - - 0x002906 00:E8F6: 05 59     ORA ram_score + 1
C - - - - - 0x002908 00:E8F8: D0 0D     BNE bra_E907_close_buffer
C - - - - - 0x00290A 00:E8FA: A2 0A     LDX #$0A
C - - - - - 0x00290C 00:E8FC: A9 EA     LDA #> tbl_EAD0_score_40_40
C - - - - - 0x00290E 00:E8FE: 85 15     STA ram_0015
C - - - - - 0x002910 00:E900: A9 D0     LDA #< tbl_EAD0_score_40_40
C - - - - - 0x002912 00:E902: 85 14     STA ram_0014
C - - - - - 0x002914 00:E904: 20 2A ED  JSR sub_ED2A_fill_buffer
bra_E907_close_buffer:
C - - - - - 0x002917 00:E907: A9 00     LDA #$00
C - - - - - 0x002919 00:E909: 99 91 05  STA ram_ppu_buffer,Y
C - - - - - 0x00291C 00:E90C: 8C 90 05  STY ram_buffer_index
C - - - - - 0x00291F 00:E90F: 60        RTS



sub_E910_print_score:
C - - - - - 0x002920 00:E910: A5 57     LDA ram_0057
C - - - - - 0x002922 00:E912: F0 1A     BEQ bra_E92E
C - - - - - 0x002924 00:E914: C9 02     CMP #$02
C - - - - - 0x002926 00:E916: F0 1C     BEQ bra_E934
C - - - - - 0x002928 00:E918: B5 58     LDA ram_score,X
C - - - - - 0x00292A 00:E91A: 0A        ASL
C - - - - - 0x00292B 00:E91B: 18        CLC
C - - - - - 0x00292C 00:E91C: 69 08     ADC #$08
loc_E91E:
C D 3 - - - 0x00292E 00:E91E: AA        TAX
C - - - - - 0x00292F 00:E91F: BD 9C EA  LDA tbl_EA9C_score_tiles,X
C - - - - - 0x002932 00:E922: 99 91 05  STA ram_ppu_buffer,Y
C - - - - - 0x002935 00:E925: C8        INY
C - - - - - 0x002936 00:E926: BD 9D EA  LDA tbl_EA9C_score_tiles + 1,X
C - - - - - 0x002939 00:E929: 99 91 05  STA ram_ppu_buffer,Y
C - - - - - 0x00293C 00:E92C: C8        INY
C - - - - - 0x00293D 00:E92D: 60        RTS
bra_E92E:
C - - - - - 0x00293E 00:E92E: B5 58     LDA ram_score,X
C - - - - - 0x002940 00:E930: 0A        ASL
C - - - - - 0x002941 00:E931: 4C 1E E9  JMP loc_E91E
bra_E934:
- - - - - - 0x002944 00:E934: A9 00     LDA #$00
- - - - - - 0x002946 00:E936: 85 15     STA ram_0015
- - - - - - 0x002948 00:E938: A9 50     LDA #$50
- - - - - - 0x00294A 00:E93A: 85 14     STA ram_0014
- - - - - - 0x00294C 00:E93C: A9 04     LDA #$04
- - - - - - 0x00294E 00:E93E: 85 11     STA ram_0011
- - - - - - 0x002950 00:E940: B5 58     LDA ram_score,X
bra_E942_loop:
- - - - - - 0x002952 00:E942: C5 14     CMP ram_0014
- - - - - - 0x002954 00:E944: 26 15     ROL ram_0015
- - - - - - 0x002956 00:E946: C5 14     CMP ram_0014
- - - - - - 0x002958 00:E948: 90 02     BCC bra_E94C
- - - - - - 0x00295A 00:E94A: E5 14     SBC ram_0014
bra_E94C:
- - - - - - 0x00295C 00:E94C: 46 14     LSR ram_0014
- - - - - - 0x00295E 00:E94E: C6 11     DEC ram_0011
- - - - - - 0x002960 00:E950: D0 F0     BNE bra_E942_loop
- - - - - - 0x002962 00:E952: 85 14     STA ram_0014
- - - - - - 0x002964 00:E954: A5 15     LDA ram_0015
- - - - - - 0x002966 00:E956: D0 02     BNE bra_E95A
- - - - - - 0x002968 00:E958: A9 76     LDA #$76
bra_E95A:
- - - - - - 0x00296A 00:E95A: 99 91 05  STA ram_ppu_buffer,Y
- - - - - - 0x00296D 00:E95D: C8        INY
- - - - - - 0x00296E 00:E95E: A5 14     LDA ram_0014
- - - - - - 0x002970 00:E960: 99 91 05  STA ram_ppu_buffer,Y
- - - - - - 0x002973 00:E963: C8        INY
- - - - - - 0x002974 00:E964: 60        RTS



sub_E965:
C - - - - - 0x002975 00:E965: A5 5C     LDA ram_005C
C - - - - - 0x002977 00:E967: F0 39     BEQ bra_E9A2_RTS
C - - - - - 0x002979 00:E969: A0 20     LDY #$20
C - - - - - 0x00297B 00:E96B: A5 8D     LDA ram_008D
C - - - - - 0x00297D 00:E96D: 29 02     AND #$02
C - - - - - 0x00297F 00:E96F: F0 02     BEQ bra_E973
C - - - - - 0x002981 00:E971: A0 40     LDY #$40
bra_E973:
C - - - - - 0x002983 00:E973: 84 FD     STY ram_00FD
C - - - - - 0x002985 00:E975: AC 90 05  LDY ram_buffer_index
C - - - - - 0x002988 00:E978: A2 14     LDX #$14
C - - - - - 0x00298A 00:E97A: A9 EA     LDA #> tbl_EAA8_I_II_III_top
C - - - - - 0x00298C 00:E97C: 85 15     STA ram_0015
C - - - - - 0x00298E 00:E97E: A9 A8     LDA #< tbl_EAA8_I_II_III_top
C - - - - - 0x002990 00:E980: 85 14     STA ram_0014
C - - - - - 0x002992 00:E982: 20 2A ED  JSR sub_ED2A_fill_buffer
C - - - - - 0x002995 00:E985: 20 A3 E9  JSR sub_E9A3
C - - - - - 0x002998 00:E988: A2 14     LDX #$14
C - - - - - 0x00299A 00:E98A: A9 EA     LDA #> tbl_EABC_I_II_III_bottom
C - - - - - 0x00299C 00:E98C: 85 15     STA ram_0015
C - - - - - 0x00299E 00:E98E: A9 BC     LDA #< tbl_EABC_I_II_III_bottom
C - - - - - 0x0029A0 00:E990: 85 14     STA ram_0014
C - - - - - 0x0029A2 00:E992: 20 2A ED  JSR sub_ED2A_fill_buffer
C - - - - - 0x0029A5 00:E995: A2 03     LDX #$03
C - - - - - 0x0029A7 00:E997: 20 A3 E9  JSR sub_E9A3
C - - - - - 0x0029AA 00:E99A: A9 00     LDA #$00
C - - - - - 0x0029AC 00:E99C: 99 91 05  STA ram_ppu_buffer,Y
C - - - - - 0x0029AF 00:E99F: 8C 90 05  STY ram_buffer_index
bra_E9A2_RTS:
C - - - - - 0x0029B2 00:E9A2: 60        RTS



sub_E9A3:
C - - - - - 0x0029B3 00:E9A3: B5 51     LDA ram_set_wins,X
C - - - - - 0x0029B5 00:E9A5: 29 0F     AND #$0F
C - - - - - 0x0029B7 00:E9A7: 99 91 05  STA ram_ppu_buffer,Y
C - - - - - 0x0029BA 00:E9AA: C8        INY
C - - - - - 0x0029BB 00:E9AB: 20 D4 E9  JSR sub_E9D4
C - - - - - 0x0029BE 00:E9AE: A5 50     LDA ram_sets_counter
C - - - - - 0x0029C0 00:E9B0: F0 1C     BEQ bra_E9CE
C - - - - - 0x0029C2 00:E9B2: B5 52     LDA ram_set_wins + 1,X
C - - - - - 0x0029C4 00:E9B4: 29 0F     AND #$0F
C - - - - - 0x0029C6 00:E9B6: 99 91 05  STA ram_ppu_buffer,Y
C - - - - - 0x0029C9 00:E9B9: C8        INY
C - - - - - 0x0029CA 00:E9BA: 20 D4 E9  JSR sub_E9D4
C - - - - - 0x0029CD 00:E9BD: A5 50     LDA ram_sets_counter
C - - - - - 0x0029CF 00:E9BF: C9 01     CMP #$01
C - - - - - 0x0029D1 00:E9C1: F0 0E     BEQ bra_E9D1
C - - - - - 0x0029D3 00:E9C3: B5 53     LDA ram_set_wins + 2,X
C - - - - - 0x0029D5 00:E9C5: 29 0F     AND #$0F
C - - - - - 0x0029D7 00:E9C7: 99 91 05  STA ram_ppu_buffer,Y
C - - - - - 0x0029DA 00:E9CA: C8        INY
C - - - - - 0x0029DB 00:E9CB: 4C D4 E9  JMP loc_E9D4
bra_E9CE:
C - - - - - 0x0029DE 00:E9CE: 20 D1 E9  JSR sub_E9D1
bra_E9D1:
sub_E9D1:
C - - - - - 0x0029E1 00:E9D1: 20 D4 E9  JSR sub_E9D4
sub_E9D4:
loc_E9D4:
C D 3 - - - 0x0029E4 00:E9D4: A9 76     LDA #$76
C - - - - - 0x0029E6 00:E9D6: 99 91 05  STA ram_ppu_buffer,Y
C - - - - - 0x0029E9 00:E9D9: C8        INY
C - - - - - 0x0029EA 00:E9DA: 60        RTS



sub_E9DB:
C - - - - - 0x0029EB 00:E9DB: A5 5C     LDA ram_005C
C - - - - - 0x0029ED 00:E9DD: F0 0F     BEQ bra_E9EE_RTS
C - - - - - 0x0029EF 00:E9DF: A6 4F     LDX ram_004F
C - - - - - 0x0029F1 00:E9E1: AC 90 05  LDY ram_buffer_index
C - - - - - 0x0029F4 00:E9E4: C6 4E     DEC ram_004E
C - - - - - 0x0029F6 00:E9E6: F0 07     BEQ bra_E9EF
C - - - - - 0x0029F8 00:E9E8: A5 4E     LDA ram_004E
C - - - - - 0x0029FA 00:E9EA: C9 18     CMP #$18
C - - - - - 0x0029FC 00:E9EC: F0 10     BEQ bra_E9FE
bra_E9EE_RTS:
C - - - - - 0x0029FE 00:E9EE: 60        RTS
bra_E9EF:
C - - - - - 0x0029FF 00:E9EF: A9 28     LDA #$28
C - - - - - 0x002A01 00:E9F1: 85 4E     STA ram_004E
C - - - - - 0x002A03 00:E9F3: A5 5D     LDA ram_005D
C - - - - - 0x002A05 00:E9F5: D0 33     BNE bra_EA2A
C - - - - - 0x002A07 00:E9F7: 20 16 EA  JSR sub_EA16
C - - - - - 0x002A0A 00:E9FA: A9 76     LDA #$76
C - - - - - 0x002A0C 00:E9FC: D0 0B     BNE bra_EA09    ; jmp
bra_E9FE:
C - - - - - 0x002A0E 00:E9FE: A5 5D     LDA ram_005D
C - - - - - 0x002A10 00:EA00: D0 47     BNE bra_EA49
C - - - - - 0x002A12 00:EA02: 20 16 EA  JSR sub_EA16
C - - - - - 0x002A15 00:EA05: B5 51     LDA ram_set_wins,X
C - - - - - 0x002A17 00:EA07: 29 0F     AND #$0F
bra_EA09:
loc_EA09:
C D 3 - - - 0x002A19 00:EA09: 99 91 05  STA ram_ppu_buffer,Y
C - - - - - 0x002A1C 00:EA0C: C8        INY
C - - - - - 0x002A1D 00:EA0D: A9 00     LDA #$00
C - - - - - 0x002A1F 00:EA0F: 99 91 05  STA ram_ppu_buffer,Y
C - - - - - 0x002A22 00:EA12: 8C 90 05  STY ram_buffer_index
C - - - - - 0x002A25 00:EA15: 60        RTS



sub_EA16:
C - - - - - 0x002A26 00:EA16: A9 22     LDA #$22
C - - - - - 0x002A28 00:EA18: 99 91 05  STA ram_ppu_buffer,Y
C - - - - - 0x002A2B 00:EA1B: C8        INY
C - - - - - 0x002A2C 00:EA1C: BD 82 EA  LDA tbl_EA82,X
C - - - - - 0x002A2F 00:EA1F: 99 91 05  STA ram_ppu_buffer,Y
C - - - - - 0x002A32 00:EA22: C8        INY
C - - - - - 0x002A33 00:EA23: A9 01     LDA #$01
C - - - - - 0x002A35 00:EA25: 99 91 05  STA ram_ppu_buffer,Y
C - - - - - 0x002A38 00:EA28: C8        INY
C - - - - - 0x002A39 00:EA29: 60        RTS
bra_EA2A:
C - - - - - 0x002A3A 00:EA2A: A6 50     LDX ram_sets_counter
C - - - - - 0x002A3C 00:EA2C: 20 6E EA  JSR sub_EA6E
C - - - - - 0x002A3F 00:EA2F: A9 76     LDA #$76
C - - - - - 0x002A41 00:EA31: 99 91 05  STA ram_ppu_buffer,Y
C - - - - - 0x002A44 00:EA34: C8        INY
C - - - - - 0x002A45 00:EA35: 20 16 EA  JSR sub_EA16
C - - - - - 0x002A48 00:EA38: A9 76     LDA #$76
C - - - - - 0x002A4A 00:EA3A: 99 91 05  STA ram_ppu_buffer,Y
C - - - - - 0x002A4D 00:EA3D: C8        INY
C - - - - - 0x002A4E 00:EA3E: E8        INX
C - - - - - 0x002A4F 00:EA3F: E8        INX
C - - - - - 0x002A50 00:EA40: E8        INX
C - - - - - 0x002A51 00:EA41: 20 16 EA  JSR sub_EA16
C - - - - - 0x002A54 00:EA44: A9 76     LDA #$76
C - - - - - 0x002A56 00:EA46: 4C 09 EA  JMP loc_EA09
bra_EA49:
C - - - - - 0x002A59 00:EA49: A6 50     LDX ram_sets_counter
C - - - - - 0x002A5B 00:EA4B: 20 6E EA  JSR sub_EA6E
C - - - - - 0x002A5E 00:EA4E: 8A        TXA
C - - - - - 0x002A5F 00:EA4F: 18        CLC
C - - - - - 0x002A60 00:EA50: 69 29     ADC #$29
C - - - - - 0x002A62 00:EA52: 99 91 05  STA ram_ppu_buffer,Y
C - - - - - 0x002A65 00:EA55: C8        INY
C - - - - - 0x002A66 00:EA56: 20 16 EA  JSR sub_EA16
C - - - - - 0x002A69 00:EA59: B5 51     LDA ram_set_wins,X
C - - - - - 0x002A6B 00:EA5B: 29 0F     AND #$0F
C - - - - - 0x002A6D 00:EA5D: 99 91 05  STA ram_ppu_buffer,Y
C - - - - - 0x002A70 00:EA60: C8        INY
C - - - - - 0x002A71 00:EA61: E8        INX
C - - - - - 0x002A72 00:EA62: E8        INX
C - - - - - 0x002A73 00:EA63: E8        INX
C - - - - - 0x002A74 00:EA64: 20 16 EA  JSR sub_EA16
C - - - - - 0x002A77 00:EA67: B5 51     LDA ram_set_wins,X
C - - - - - 0x002A79 00:EA69: 29 0F     AND #$0F
C - - - - - 0x002A7B 00:EA6B: 4C 09 EA  JMP loc_EA09



sub_EA6E:
C - - - - - 0x002A7E 00:EA6E: A9 21     LDA #$21
C - - - - - 0x002A80 00:EA70: 99 91 05  STA ram_ppu_buffer,Y
C - - - - - 0x002A83 00:EA73: C8        INY
C - - - - - 0x002A84 00:EA74: BD 88 EA  LDA tbl_EA88,X
C - - - - - 0x002A87 00:EA77: 99 91 05  STA ram_ppu_buffer,Y
C - - - - - 0x002A8A 00:EA7A: C8        INY
C - - - - - 0x002A8B 00:EA7B: A9 01     LDA #$01
C - - - - - 0x002A8D 00:EA7D: 99 91 05  STA ram_ppu_buffer,Y
C - - - - - 0x002A90 00:EA80: C8        INY
C - - - - - 0x002A91 00:EA81: 60        RTS



tbl_EA82:
- D 3 - - - 0x002A92 00:EA82: 4F        .byte $4F   ; 00
- D 3 - - - 0x002A93 00:EA83: 51        .byte $51   ; 01
- D 3 - - - 0x002A94 00:EA84: 53        .byte $53   ; 02
- D 3 - - - 0x002A95 00:EA85: 0F        .byte $0F   ; 03
- D 3 - - - 0x002A96 00:EA86: 11        .byte $11   ; 04
- D 3 - - - 0x002A97 00:EA87: 13        .byte $13   ; 05



tbl_EA88:
- D 3 - - - 0x002A98 00:EA88: EF        .byte $EF   ; 00
- D 3 - - - 0x002A99 00:EA89: F1        .byte $F1   ; 01
- D 3 - - - 0x002A9A 00:EA8A: F3        .byte $F3   ; 02



tbl_EA8B_you:
- D 3 - I - 0x002A9B 00:EA8B: 21 24     .dbyt $2124
- D 3 - I - 0x002A9D 00:EA8D: 04        .byte $04   ; 
- D 3 - I - 0x002A9E 00:EA8E: 0F        .byte $0F, $11   ; You



tbl_EA90_com:
- D 3 - I - 0x002AA0 00:EA90: 21 04     .dbyt $2104
- D 3 - I - 0x002AA2 00:EA92: 04        .byte $04   ; 
- D 3 - I - 0x002AA3 00:EA93: 76        .byte $76, $76, $76, $76   ; 
- D 3 - I - 0x002AA7 00:EA97: 20 E4     .dbyt $20E4
- D 3 - I - 0x002AA9 00:EA99: 04        .byte $04   ; 
- D 3 - I - 0x002AAA 00:EA9A: 14        .byte $14, $FF   ; Com



tbl_EA9C_score_tiles:
- D 3 - - - 0x002AAC 00:EA9C: 76        .byte $76, $00   ; 0
- D 3 - - - 0x002AAE 00:EA9E: 01        .byte $01, $05   ; 15
- D 3 - - - 0x002AB0 00:EAA0: 03        .byte $03, $00   ; 30
- D 3 - - - 0x002AB2 00:EAA2: 04        .byte $04, $00   ; 40
- D 3 - - - 0x002AB4 00:EAA4: 76        .byte $76, $76   ; empty
- D 3 - - - 0x002AB6 00:EAA6: 76        .byte $76, $0A   ; A



tbl_EAA8_I_II_III_top:
- D 3 - I - 0x002AB8 00:EAA8: 21 EB     .dbyt $21EB
- D 3 - I - 0x002ABA 00:EAAA: 0A        .byte $0A   ; 
- D 3 - I - 0x002ABB 00:EAAB: 76        .byte $76, $76, $76, $76   ; 
- D 3 - I - 0x002ABF 00:EAAF: 29        .byte $29, $76, $2A, $76, $2B, $76   ; I II III

- D 3 - I - 0x002AC5 00:EAB5: 22 4B     .dbyt $224B
- D 3 - I - 0x002AC7 00:EAB7: 0A        .byte $0A   ; 
- D 3 - I - 0x002AC8 00:EAB8: 76        .byte $76, $0F, $11, $76   ; You



tbl_EABC_I_II_III_bottom:
- D 3 - I - 0x002ACC 00:EABC: 22 2B     .dbyt $222B
- D 3 - I - 0x002ACE 00:EABE: 0A        .byte $0A   ; 
- D 3 - I - 0x002ACF 00:EABF: 76        .byte $76, $76, $76, $76, $76   ; 
- D 3 - I - 0x002AD4 00:EAC4: 76        .byte $76, $76, $76, $76, $76   ; 

- D 3 - I - 0x002AD9 00:EAC9: 22 0B     .dbyt $220B
- D 3 - I - 0x002ADB 00:EACB: 0A        .byte $0A   ; 
- D 3 - I - 0x002ADC 00:EACC: 76        .byte $76, $14, $FF, $76   ; Com



tbl_EAD0_score_40_40:
- D 3 - I - 0x002AE0 00:EAD0: 20 E6     .dbyt $20E6
- D 3 - I - 0x002AE2 00:EAD2: 02        .byte $02   ; 
- D 3 - I - 0x002AE3 00:EAD3: 04        .byte $04, $00   ; 40

- D 3 - I - 0x002AE5 00:EAD5: 21 26     .dbyt $2126
- D 3 - I - 0x002AE7 00:EAD7: 02        .byte $02   ; 
- D 3 - I - 0x002AE8 00:EAD8: 04        .byte $04, $00   ; 40



sub_EADA:
C - - - - - 0x002AEA 00:EADA: AC 90 05  LDY ram_buffer_index
C - - - - - 0x002AED 00:EADD: A9 EA     LDA #> tbl_EAEB_next_player
C - - - - - 0x002AEF 00:EADF: 85 15     STA ram_0015
C - - - - - 0x002AF1 00:EAE1: A9 EB     LDA #< tbl_EAEB_next_player
C - - - - - 0x002AF3 00:EAE3: 85 14     STA ram_0014
C - - - - - 0x002AF5 00:EAE5: A2 1A     LDX #$1A
C - - - - - 0x002AF7 00:EAE7: 20 1A ED  JSR sub_ED1A_fill_ppu_buffer
C - - - - - 0x002AFA 00:EAEA: 60        RTS



tbl_EAEB_next_player:
- D 3 - I - 0x002AFB 00:EAEB: 22 0B     .dbyt $220B
- D 3 - I - 0x002AFD 00:EAED: 0A        .byte $0A   ; 
- D 3 - I - 0x002AFE 00:EAEE: 76        .byte $76, $76, $76   ; 
- D 3 - I - 0x002B01 00:EAF1: 17        .byte $17, $0E, $21, $1D   ; next
- D 3 - I - 0x002B05 00:EAF5: 76        .byte $76, $76, $76   ; 

- D 3 - I - 0x002B08 00:EAF8: 22 4B     .dbyt $224B
- D 3 - I - 0x002B0A 00:EAFA: 0A        .byte $0A   ; 
- D 3 - I - 0x002B0B 00:EAFB: 76        .byte $76, $76   ; 
- D 3 - I - 0x002B0D 00:EAFD: 19        .byte $19, $15, $0A, $22, $0E, $1B   ; player
- D 3 - I - 0x002B13 00:EB03: 76        .byte $76, $76   ; 



sub_EB05:
C - - - - - 0x002B15 00:EB05: AC 90 05  LDY ram_buffer_index
C - - - - - 0x002B18 00:EB08: A9 EB     LDA #> tbl_EB92_field_tiles
C - - - - - 0x002B1A 00:EB0A: 85 15     STA ram_0015
C - - - - - 0x002B1C 00:EB0C: A9 92     LDA #< tbl_EB92_field_tiles
C - - - - - 0x002B1E 00:EB0E: 85 14     STA ram_0014
C - - - - - 0x002B20 00:EB10: A2 36     LDX #$36
C - - - - - 0x002B22 00:EB12: 20 1A ED  JSR sub_ED1A_fill_ppu_buffer
C - - - - - 0x002B25 00:EB15: A9 01     LDA #$01
C - - - - - 0x002B27 00:EB17: 85 32     STA ram_0032
C - - - - - 0x002B29 00:EB19: 20 22 C4  JSR sub_C422_wait_for_next_nmi_trigger
C - - - - - 0x002B2C 00:EB1C: 20 7D ED  JSR sub_ED7D
C - - - - - 0x002B2F 00:EB1F: A9 01     LDA #$01
C - - - - - 0x002B31 00:EB21: 85 32     STA ram_0032
C - - - - - 0x002B33 00:EB23: 20 22 C4  JSR sub_C422_wait_for_next_nmi_trigger
C - - - - - 0x002B36 00:EB26: A5 5C     LDA ram_005C
C - - - - - 0x002B38 00:EB28: F0 2D     BEQ bra_EB57
C - - - - - 0x002B3A 00:EB2A: AC 90 05  LDY ram_buffer_index
C - - - - - 0x002B3D 00:EB2D: A2 34     LDX #$34
C - - - - - 0x002B3F 00:EB2F: A9 EB     LDA #> tbl_EBC8_game_set
C - - - - - 0x002B41 00:EB31: 85 15     STA ram_0015
C - - - - - 0x002B43 00:EB33: A9 C8     LDA #< tbl_EBC8_game_set
C - - - - - 0x002B45 00:EB35: 85 14     STA ram_0014
C - - - - - 0x002B47 00:EB37: 20 2A ED  JSR sub_ED2A_fill_buffer
C - - - - - 0x002B4A 00:EB3A: A5 5C     LDA ram_005C
C - - - - - 0x002B4C 00:EB3C: C9 01     CMP #$01
C - - - - - 0x002B4E 00:EB3E: F0 09     BEQ bra_EB49
- - - - - - 0x002B50 00:EB40: A9 EC     LDA #> tbl_EC09_you_lost
- - - - - - 0x002B52 00:EB42: 85 15     STA ram_0015
- - - - - - 0x002B54 00:EB44: A9 09     LDA #< tbl_EC09_you_lost
- - - - - - 0x002B56 00:EB46: 4C 4F EB  JMP loc_EB4F
bra_EB49:
C - - - - - 0x002B59 00:EB49: A9 EB     LDA #> tbl_EBFC_you_won
C - - - - - 0x002B5B 00:EB4B: 85 15     STA ram_0015
C - - - - - 0x002B5D 00:EB4D: A9 FC     LDA #< tbl_EBFC_you_won
loc_EB4F:
C - - - - - 0x002B5F 00:EB4F: 85 14     STA ram_0014
C - - - - - 0x002B61 00:EB51: A2 0D     LDX #$0D
C - - - - - 0x002B63 00:EB53: 20 1A ED  JSR sub_ED1A_fill_ppu_buffer
C - - - - - 0x002B66 00:EB56: 60        RTS
bra_EB57:
- - - - - - 0x002B67 00:EB57: AC 90 05  LDY ram_buffer_index
- - - - - - 0x002B6A 00:EB5A: A2 5A     LDX #$5A
- - - - - - 0x002B6C 00:EB5C: A9 EC     LDA #> tbl_EC16_winner_congratulations
- - - - - - 0x002B6E 00:EB5E: 85 15     STA ram_0015
- - - - - - 0x002B70 00:EB60: A9 16     LDA #< tbl_EC16_winner_congratulations
- - - - - - 0x002B72 00:EB62: 85 14     STA ram_0014
- - - - - - 0x002B74 00:EB64: 20 1A ED  JSR sub_ED1A_fill_ppu_buffer
- - - - - - 0x002B77 00:EB67: A9 01     LDA #$01
- - - - - - 0x002B79 00:EB69: 85 32     STA ram_0032
- - - - - - 0x002B7B 00:EB6B: 20 22 C4  JSR sub_C422_wait_for_next_nmi_trigger
- - - - - - 0x002B7E 00:EB6E: AC 90 05  LDY ram_buffer_index
- - - - - - 0x002B81 00:EB71: A5 3A     LDA ram_003A
- - - - - - 0x002B83 00:EB73: 0A        ASL
- - - - - - 0x002B84 00:EB74: AA        TAX
- - - - - - 0x002B85 00:EB75: BD A2 EC  LDA tbl_ECA2_prize_money,X
- - - - - - 0x002B88 00:EB78: 85 14     STA ram_0014
- - - - - - 0x002B8A 00:EB7A: BD A3 EC  LDA tbl_ECA2_prize_money + 1,X
- - - - - - 0x002B8D 00:EB7D: 85 15     STA ram_0015
- - - - - - 0x002B8F 00:EB7F: A2 16     LDX #$16
- - - - - - 0x002B91 00:EB81: 20 2A ED  JSR sub_ED2A_fill_buffer
- - - - - - 0x002B94 00:EB84: A2 32     LDX #$32
- - - - - - 0x002B96 00:EB86: A9 EC     LDA #> tbl_EC70_cup_tiles
- - - - - - 0x002B98 00:EB88: 85 15     STA ram_0015
- - - - - - 0x002B9A 00:EB8A: A9 70     LDA #< tbl_EC70_cup_tiles
- - - - - - 0x002B9C 00:EB8C: 85 14     STA ram_0014
- - - - - - 0x002B9E 00:EB8E: 20 1A ED  JSR sub_ED1A_fill_ppu_buffer
- - - - - - 0x002BA1 00:EB91: 60        RTS



tbl_EB92_field_tiles:
- D 3 - I - 0x002BA2 00:EB92: 20 C3     .dbyt $20C3
- D 3 - I - 0x002BA4 00:EB94: 06        .byte $06   ; 
- D 3 - I - 0x002BA5 00:EB95: 7B        .byte $7B, $24, $24, $24, $24, $24   ; 

- D 3 - I - 0x002BAB 00:EB9B: 20 E3     .dbyt $20E3
- D 3 - I - 0x002BAD 00:EB9D: 06        .byte $06   ; 
- D 3 - I - 0x002BAE 00:EB9E: 24        .byte $24, $24, $24, $24, $24, $24   ; 

- D 3 - I - 0x002BB4 00:EBA4: 21 03     .dbyt $2103
- D 3 - I - 0x002BB6 00:EBA6: 06        .byte $06   ; 
- D 3 - I - 0x002BB7 00:EBA7: 24        .byte $24, $24, $24, $24, $24, $24   ; 

- D 3 - I - 0x002BBD 00:EBAD: 21 23     .dbyt $2123
- D 3 - I - 0x002BBF 00:EBAF: 06        .byte $06   ; 
- D 3 - I - 0x002BC0 00:EBB0: 24        .byte $24, $24, $24, $24, $24, $24   ; 

- D 3 - I - 0x002BC6 00:EBB6: 21 43     .dbyt $2143
- D 3 - I - 0x002BC8 00:EBB8: 06        .byte $06   ; 
- D 3 - I - 0x002BC9 00:EBB9: 24        .byte $24, $24, $24, $24, $24, $45   ; 

- D 3 - I - 0x002BCF 00:EBBF: 23 C8     .dbyt $23C8
- D 3 - I - 0x002BD1 00:EBC1: 01        .byte $01   ; 
- D 3 - I - 0x002BD2 00:EBC2: AA        .byte $AA   ; nametable attributes

- D 3 - I - 0x002BD3 00:EBC3: 23 CE     .dbyt $23CE
- D 3 - I - 0x002BD5 00:EBC5: 02        .byte $02   ; 
- D 3 - I - 0x002BD6 00:EBC6: 08        .byte $08, $AA   ; nametable attributes



tbl_EBC8_game_set:
- D 3 - I - 0x002BD8 00:EBC8: 21 EB     .dbyt $21EB
- D 3 - I - 0x002BDA 00:EBCA: 0A        .byte $0A   ; 
- D 3 - I - 0x002BDB 00:EBCB: 76        .byte $76, $76, $76, $76, $76   ; 
- D 3 - I - 0x002BE0 00:EBD0: 76        .byte $76, $76, $76, $76, $76   ; 

- D 3 - I - 0x002BE5 00:EBD5: 22 0B     .dbyt $220B
- D 3 - I - 0x002BE7 00:EBD7: 0A        .byte $0A   ; 
- D 3 - I - 0x002BE8 00:EBD8: 76        .byte $76, $10, $0A, $16, $0E   ; game
- D 3 - I - 0x002BED 00:EBDD: 76        .byte $76, $1C, $0E, $1D, $76   ; set

- D 3 - I - 0x002BF2 00:EBE2: 22 2B     .dbyt $222B
- D 3 - I - 0x002BF4 00:EBE4: 0A        .byte $0A   ; 
- D 3 - I - 0x002BF5 00:EBE5: 76        .byte $76, $76, $76, $76, $76   ; 
- D 3 - I - 0x002BFA 00:EBEA: 76        .byte $76, $76, $76, $76, $76   ; 

- D 3 - I - 0x002BFF 00:EBEF: 22 6B     .dbyt $226B
- D 3 - I - 0x002C01 00:EBF1: 0A        .byte $0A   ; 
- D 3 - I - 0x002C02 00:EBF2: 76        .byte $76, $76, $76, $76, $76   ; 
- D 3 - I - 0x002C07 00:EBF7: 76        .byte $76, $76, $76, $76, $76   ; 



tbl_EBFC_you_won:
- D 3 - I - 0x002C0C 00:EBFC: 22 4B     .dbyt $224B
- D 3 - I - 0x002C0E 00:EBFE: 0A        .byte $0A   ; 
- D 3 - I - 0x002C0F 00:EBFF: 76        .byte $76, $22, $18, $1E, $76   ; you
- D 3 - I - 0x002C14 00:EC04: 20        .byte $20, $18, $17, $27, $76   ; won!



tbl_EC09_you_lost:
- - - - - - 0x002C19 00:EC09: 22 4B     .dbyt $224B
- - - - - - 0x002C1B 00:EC0B: 0A        .byte $0A   ; 
- - - - - - 0x002C1C 00:EC0C: 76        .byte $76, $22, $18, $1E, $76   ; you
- - - - - - 0x002C21 00:EC11: 15        .byte $15, $18, $1C, $1D, $27   ; lost



tbl_EC16_winner_congratulations:
- - - - - - 0x002C26 00:EC16: 21 EA     .dbyt $21EA
- - - - - - 0x002C28 00:EC18: 0C        .byte $0C   ; 
- - - - - - 0x002C29 00:EC19: 76        .byte $76, $76, $76, $76, $76, $76   ; 
- - - - - - 0x002C2F 00:EC1F: 76        .byte $76, $76, $76, $76, $76, $76   ; 

- - - - - - 0x002C35 00:EC25: 22 0A     .dbyt $220A
- - - - - - 0x002C37 00:EC27: 0C        .byte $0C   ; 
- - - - - - 0x002C38 00:EC28: 76        .byte $76, $76, $76   ; 
- - - - - - 0x002C3B 00:EC2B: 20        .byte $20, $12, $17, $17, $0E, $1B   ; winner
- - - - - - 0x002C41 00:EC31: 76        .byte $76, $76, $76   ; 

- - - - - - 0x002C44 00:EC34: 22 2A     .dbyt $222A
- - - - - - 0x002C46 00:EC36: 0C        .byte $0C   ; 
- - - - - - 0x002C47 00:EC37: 76        .byte $76, $76, $76, $76, $76, $76   ; 
- - - - - - 0x002C4D 00:EC3D: 76        .byte $76, $76, $76, $76, $76, $76   ; 

- - - - - - 0x002C53 00:EC43: 22 4A     .dbyt $224A
- - - - - - 0x002C55 00:EC45: 0C        .byte $0C   ; 
- - - - - - 0x002C56 00:EC46: 76        .byte $76, $0C, $18, $17, $10, $1B, $0A, $1D, $1E   ; congratu
- - - - - - 0x002C5F 00:EC4F: 76        .byte $76, $76, $76   ; 

- - - - - - 0x002C62 00:EC52: 22 6A     .dbyt $226A
- - - - - - 0x002C64 00:EC54: 0C        .byte $0C   ; 
- - - - - - 0x002C65 00:EC55: 76        .byte $76, $76, $76   ; 
- - - - - - 0x002C68 00:EC58: 15        .byte $15, $0A, $1D, $12, $18, $17, $1C, $27, $76   ; lations!

- - - - - - 0x002C71 00:EC61: 22 CA     .dbyt $22CA
- - - - - - 0x002C73 00:EC63: 0C        .byte $0C   ; 
- - - - - - 0x002C74 00:EC64: 76        .byte $76, $76, $76, $76, $76, $76   ; 
- - - - - - 0x002C7A 00:EC6A: 76        .byte $76, $76, $76, $76, $76, $76   ; 



tbl_EC70_cup_tiles:
- - - - - - 0x002C80 00:EC70: 23 0A     .dbyt $230A
- - - - - - 0x002C82 00:EC72: 0C        .byte $0C   ; 
- - - - - - 0x002C83 00:EC73: 76        .byte $76, $76, $76, $76, $76, $76   ; 
- - - - - - 0x002C89 00:EC79: 76        .byte $76, $76, $76, $76, $76, $76   ; 

- - - - - - 0x002C8F 00:EC7F: 22 8A     .dbyt $228A
- - - - - - 0x002C91 00:EC81: 0C        .byte $0C   ; 
- - - - - - 0x002C92 00:EC82: 76        .byte $76, $76, $76, $76, $76   ; 
- - - - - - 0x002C97 00:EC87: 82        .byte $82, $83   ; cup tiles top
- - - - - - 0x002C99 00:EC89: 76        .byte $76, $76, $76, $76, $76   ; 

- - - - - - 0x002C9E 00:EC8E: 22 AA     .dbyt $22AA
- - - - - - 0x002CA0 00:EC90: 0C        .byte $0C   ; 
- - - - - - 0x002CA1 00:EC91: 76        .byte $76, $76, $76, $76, $76   ; 
- - - - - - 0x002CA6 00:EC96: 84        .byte $84, $85   ; cup tiles bottom
- - - - - - 0x002CA8 00:EC98: 76        .byte $76, $76, $76, $76, $76   ; 

- - - - - - 0x002CAD 00:EC9D: 23 EB     .dbyt $23EB
- - - - - - 0x002CAF 00:EC9F: 02        .byte $02   ; 
- - - - - - 0x002CB0 00:ECA0: 0C        .byte $0C, $03   ; nametable attributes



tbl_ECA2_prize_money:
- - - - - - 0x002CB2 00:ECA2: AC EC     .word _off000_ECAC_00_10000
- - - - - - 0x002CB4 00:ECA4: C2 EC     .word _off000_ECC2_01_20000
- - - - - - 0x002CB6 00:ECA6: D8 EC     .word _off000_ECD8_02_30000
- - - - - - 0x002CB8 00:ECA8: EE EC     .word _off000_ECEE_03_50000
- - - - - - 0x002CBA 00:ECAA: 04 ED     .word _off000_ED04_04_100000



_off000_ECAC_00_10000:
- - - - - - 0x002CBC 00:ECAC: 22 EA     .dbyt $22EA
- - - - - - 0x002CBE 00:ECAE: 0C        .byte $0C   ; 
- - - - - - 0x002CBF 00:ECAF: 76        .byte $76, $76, $2C, $76, $76   ; $
- - - - - - 0x002CC4 00:ECB4: 01        .byte $01, $00, $00, $00, $00   ; 10000
- - - - - - 0x002CC9 00:ECB9: 76        .byte $76, $76   ; 

- - - - - - 0x002CCB 00:ECBB: 3F 0C     .dbyt $3F0C
- - - - - - 0x002CCD 00:ECBD: 04        .byte $04   ; 
- - - - - - 0x002CCE 00:ECBE: 17        .byte $17, $0F, $30, $10   ; bg colors



_off000_ECC2_01_20000:
- - - - - - 0x002CD2 00:ECC2: 22 EA     .dbyt $22EA
- - - - - - 0x002CD4 00:ECC4: 0C        .byte $0C   ; 
- - - - - - 0x002CD5 00:ECC5: 76        .byte $76, $76, $2C, $76, $76   ; $
- - - - - - 0x002CDA 00:ECCA: 02        .byte $02, $00, $00, $00, $00   ; 20000
- - - - - - 0x002CDF 00:ECCF: 76        .byte $76, $76   ; 

- - - - - - 0x002CE1 00:ECD1: 3F 0C     .dbyt $3F0C
- - - - - - 0x002CE3 00:ECD3: 04        .byte $04   ; 
- - - - - - 0x002CE4 00:ECD4: 17        .byte $17, $0F, $25, $30   ; bg colors



_off000_ECD8_02_30000:
- - - - - - 0x002CE8 00:ECD8: 22 EA     .dbyt $22EA
- - - - - - 0x002CEA 00:ECDA: 0C        .byte $0C   ; 
- - - - - - 0x002CEB 00:ECDB: 76        .byte $76, $76, $2C, $76, $76   ; $
- - - - - - 0x002CF0 00:ECE0: 03        .byte $03, $00, $00, $00, $00   ; 30000
- - - - - - 0x002CF5 00:ECE5: 76        .byte $76, $76   ; 

- - - - - - 0x002CF7 00:ECE7: 3F 0C     .dbyt $3F0C
- - - - - - 0x002CF9 00:ECE9: 04        .byte $04   ; 
- - - - - - 0x002CFA 00:ECEA: 17        .byte $17, $0F, $21, $30   ; bg colors



_off000_ECEE_03_50000:
- - - - - - 0x002CFE 00:ECEE: 22 EA     .dbyt $22EA
- - - - - - 0x002D00 00:ECF0: 0C        .byte $0C   ; 
- - - - - - 0x002D01 00:ECF1: 76        .byte $76, $76, $2C, $76, $76   ; $
- - - - - - 0x002D06 00:ECF6: 05        .byte $05, $00, $00, $00, $00   ; 50000
- - - - - - 0x002D0B 00:ECFB: 76        .byte $76, $76   ; 

- - - - - - 0x002D0D 00:ECFD: 3F 0C     .dbyt $3F0C
- - - - - - 0x002D0F 00:ECFF: 04        .byte $04   ; 
- - - - - - 0x002D10 00:ED00: 17        .byte $17, $0F, $10, $30   ; bg colors



_off000_ED04_04_100000:
- - - - - - 0x002D14 00:ED04: 22 EA     .dbyt $22EA
- - - - - - 0x002D16 00:ED06: 0C        .byte $0C   ; 
- - - - - - 0x002D17 00:ED07: 76        .byte $76, $76, $2C, $76   ; $
- - - - - - 0x002D1B 00:ED0B: 01        .byte $01, $00, $00, $00, $00, $00   ; 100000
- - - - - - 0x002D21 00:ED11: 76        .byte $76, $76   ; 

- - - - - - 0x002D23 00:ED13: 3F 0C     .dbyt $3F0C
- - - - - - 0x002D25 00:ED15: 04        .byte $04   ; 
- - - - - - 0x002D26 00:ED16: 17        .byte $17, $0F, $27, $30   ; bg colors



sub_ED1A_fill_ppu_buffer:
C - - - - - 0x002D2A 00:ED1A: 20 2A ED  JSR sub_ED2A_fill_buffer
C - - - - - 0x002D2D 00:ED1D: A9 00     LDA #$00
C - - - - - 0x002D2F 00:ED1F: 99 91 05  STA ram_ppu_buffer,Y
C - - - - - 0x002D32 00:ED22: 8C 90 05  STY ram_buffer_index
C - - - - - 0x002D35 00:ED25: A9 01     LDA #$01
C - - - - - 0x002D37 00:ED27: 85 31     STA ram_buffer_ready_flag
C - - - - - 0x002D39 00:ED29: 60        RTS



sub_ED2A_fill_buffer:
; X = indirect bytes counter
C - - - - - 0x002D3A 00:ED2A: 84 11     STY ram_0011
C - - - - - 0x002D3C 00:ED2C: A5 14     LDA ram_0014
C - - - - - 0x002D3E 00:ED2E: 38        SEC
C - - - - - 0x002D3F 00:ED2F: E5 11     SBC ram_0011
C - - - - - 0x002D41 00:ED31: 85 14     STA ram_0014
C - - - - - 0x002D43 00:ED33: B0 02     BCS bra_ED37
C - - - - - 0x002D45 00:ED35: C6 15     DEC ram_0015
bra_ED37:
bra_ED37_loop:
C - - - - - 0x002D47 00:ED37: B1 14     LDA (ram_0014),Y
C - - - - - 0x002D49 00:ED39: 99 91 05  STA ram_ppu_buffer,Y
C - - - - - 0x002D4C 00:ED3C: C8        INY
C - - - - - 0x002D4D 00:ED3D: CA        DEX
C - - - - - 0x002D4E 00:ED3E: D0 F7     BNE bra_ED37_loop
C - - - - - 0x002D50 00:ED40: 60        RTS ; bzk some code expects X = 00 from here



sub_ED41_draw_whole_field:
C - - - - - 0x002D51 00:ED41: A2 09     LDX #< tbl_F009_whole_field
C - - - - - 0x002D53 00:ED43: A0 F0     LDY #> tbl_F009_whole_field
C - - - - - 0x002D55 00:ED45: 20 B1 C3  JSR sub_C3B1_draw_screen
C - - - - - 0x002D58 00:ED48: A9 01     LDA #$01
C - - - - - 0x002D5A 00:ED4A: 85 3C     STA ram_003C
C - - - - - 0x002D5C 00:ED4C: 60        RTS



sub_ED4D_print_level_select_options:
C - - - - - 0x002D5D 00:ED4D: A2 8F     LDX #< tbl_EE8F_level_select_options
C - - - - - 0x002D5F 00:ED4F: A0 EE     LDY #> tbl_EE8F_level_select_options
C - - - - - 0x002D61 00:ED51: 20 B1 C3  JSR sub_C3B1_draw_screen
C - - - - - 0x002D64 00:ED54: A9 03     LDA #$03
C - - - - - 0x002D66 00:ED56: 85 3C     STA ram_003C
C - - - - - 0x002D68 00:ED58: 60        RTS



sub_ED59:
C - - - - - 0x002D69 00:ED59: A5 4C     LDA ram_level
C - - - - - 0x002D6B 00:ED5B: 0A        ASL
C - - - - - 0x002D6C 00:ED5C: A8        TAY
C - - - - - 0x002D6D 00:ED5D: B9 62 EE  LDA tbl_EE62_enemy_spr_palette,Y
C - - - - - 0x002D70 00:ED60: 85 14     STA ram_0014
C - - - - - 0x002D72 00:ED62: B9 63 EE  LDA tbl_EE62_enemy_spr_palette + 1,Y
C - - - - - 0x002D75 00:ED65: 85 15     STA ram_0015
C - - - - - 0x002D77 00:ED67: A2 07     LDX #$07
C - - - - - 0x002D79 00:ED69: AC 90 05  LDY ram_buffer_index
C - - - - - 0x002D7C 00:ED6C: 20 1A ED  JSR sub_ED1A_fill_ppu_buffer
C - - - - - 0x002D7F 00:ED6F: 60        RTS



sub_ED70:
C - - - - - 0x002D80 00:ED70: 20 7D ED  JSR sub_ED7D
C - - - - - 0x002D83 00:ED73: A9 01     LDA #$01
C - - - - - 0x002D85 00:ED75: 85 32     STA ram_0032
C - - - - - 0x002D87 00:ED77: 20 22 C4  JSR sub_C422_wait_for_next_nmi_trigger
C - - - - - 0x002D8A 00:ED7A: 4C 8E ED  JMP loc_ED8E



sub_ED7D:
C - - - - - 0x002D8D 00:ED7D: AC 90 05  LDY ram_buffer_index
C - - - - - 0x002D90 00:ED80: A9 9F     LDA #< tbl_ED9F_field_tiles_after_mario_message
C - - - - - 0x002D92 00:ED82: 85 14     STA ram_0014
C - - - - - 0x002D94 00:ED84: A9 ED     LDA #> tbl_ED9F_field_tiles_after_mario_message
C - - - - - 0x002D96 00:ED86: 85 15     STA ram_0015
C - - - - - 0x002D98 00:ED88: A2 31     LDX #$31
C - - - - - 0x002D9A 00:ED8A: 20 1A ED  JSR sub_ED1A_fill_ppu_buffer
C - - - - - 0x002D9D 00:ED8D: 60        RTS



loc_ED8E:
C D 3 - - - 0x002D9E 00:ED8E: A9 D0     LDA #< tbl_EDD0
C - - - - - 0x002DA0 00:ED90: 85 14     STA ram_0014
C - - - - - 0x002DA2 00:ED92: A9 ED     LDA #> tbl_EDD0
C - - - - - 0x002DA4 00:ED94: 85 15     STA ram_0015
C - - - - - 0x002DA6 00:ED96: A2 41     LDX #$41
C - - - - - 0x002DA8 00:ED98: AC 90 05  LDY ram_buffer_index
C - - - - - 0x002DAB 00:ED9B: 20 1A ED  JSR sub_ED1A_fill_ppu_buffer
C - - - - - 0x002DAE 00:ED9E: 60        RTS



tbl_ED9F_field_tiles_after_mario_message:
- D 3 - I - 0x002DAF 00:ED9F: 20 97     .dbyt $2097
- D 3 - I - 0x002DB1 00:EDA1: 07        .byte $07   ; 
- D 3 - I - 0x002DB2 00:EDA2: 24        .byte $24, $24, $24, $7C, $4D, $4D, $4D   ; 

- D 3 - I - 0x002DB9 00:EDA9: 20 B7     .dbyt $20B7
- D 3 - I - 0x002DBB 00:EDAB: 07        .byte $07   ; 
- D 3 - I - 0x002DBC 00:EDAC: 24        .byte $24, $24, $24, $24, $7C, $4D, $4D   ; 

- D 3 - I - 0x002DC3 00:EDB3: 20 D7     .dbyt $20D7
- D 3 - I - 0x002DC5 00:EDB5: 07        .byte $07   ; 
- D 3 - I - 0x002DC6 00:EDB6: 24        .byte $24, $24, $24, $24, $24, $7C, $4D   ; 

- D 3 - I - 0x002DCD 00:EDBD: 20 F7     .dbyt $20F7
- D 3 - I - 0x002DCF 00:EDBF: 07        .byte $07   ; 
- D 3 - I - 0x002DD0 00:EDC0: 24        .byte $24, $24, $24, $24, $24, $24, $7C   ; 

- D 3 - I - 0x002DD7 00:EDC7: 21 1B     .dbyt $211B
- D 3 - I - 0x002DD9 00:EDC9: 01        .byte $01   ; 
- D 3 - I - 0x002DDA 00:EDCA: 24        .byte $24   ; 

- D 3 - I - 0x002DDB 00:EDCB: 21 3B     .dbyt $213B
- D 3 - I - 0x002DDD 00:EDCD: 02        .byte $02   ; 
- D 3 - I - 0x002DDE 00:EDCE: 7D        .byte $7D, $AF   ; 



tbl_EDD0:
- D 3 - I - 0x002DE0 00:EDD0: 21 EB     .dbyt $21EB
- D 3 - I - 0x002DE2 00:EDD2: 0A        .byte $0A   ; 
- D 3 - I - 0x002DE3 00:EDD3: 4D        .byte $4D, $4D, $4D, $4D, $6D, $6E, $4D, $4D, $4D, $4D   ; 

- D 3 - I - 0x002DED 00:EDDD: 22 0B     .dbyt $220B
- D 3 - I - 0x002DEF 00:EDDF: 0A        .byte $0A   ; 
- D 3 - I - 0x002DF0 00:EDE0: 4D        .byte $4D, $4D, $4D, $4D, $6D, $6E, $4D, $4D, $4D, $4D   ; 

- D 3 - I - 0x002DFA 00:EDEA: 22 2B     .dbyt $222B
- D 3 - I - 0x002DFC 00:EDEC: 0A        .byte $0A   ; 
- D 3 - I - 0x002DFD 00:EDED: 4D        .byte $4D, $4D, $4D, $4D, $6D, $6E, $4D, $4D, $4D, $4D   ; 

- D 3 - I - 0x002E07 00:EDF7: 22 4B     .dbyt $224B
- D 3 - I - 0x002E09 00:EDF9: 0A        .byte $0A   ; 
- D 3 - I - 0x002E0A 00:EDFA: 4D        .byte $4D, $4D, $4D, $4D, $6D, $6E, $4D, $4D, $4D, $4D   ; 

- D 3 - I - 0x002E14 00:EE04: 22 6B     .dbyt $226B
- D 3 - I - 0x002E16 00:EE06: 0A        .byte $0A   ; 
- D 3 - I - 0x002E17 00:EE07: A4        .byte $A4, $A4, $A4, $A4, $89, $8A, $A4, $A4, $A4, $A4   ; 



tbl_EE11_palette:
- D 3 - I - 0x002E21 00:EE11: 3F 00     .dbyt $3F00
- D 3 - I - 0x002E23 00:EE13: 1D        .byte $1D   ; 
- D 3 - I - 0x002E24 00:EE14: 17        .byte $17, $0F, $30, $19   ; 
- D 3 - I - 0x002E28 00:EE18: 17        .byte $17, $0F, $30, $27   ; 
- D 3 - I - 0x002E2C 00:EE1C: 17        .byte $17, $21, $30, $02   ; 
- D 3 - I - 0x002E30 00:EE20: 17        .byte $17, $0F, $30, $02   ; 

- D 3 - I - 0x002E34 00:EE24: 17        .byte $17, $0F, $27, $21   ; 
- D 3 - I - 0x002E38 00:EE28: 17        .byte $17, $07, $27, $20   ; 
- D 3 - I - 0x002E3C 00:EE2C: 17        .byte $17, $39, $0F, $17   ; 
- D 3 - I - 0x002E40 00:EE30: 17        .byte $17   ; 

- D 3 - I - 0x002E41 00:EE31: 00        .byte $00   ; end token



tbl_EE32_palette:
- D 3 - I - 0x002E42 00:EE32: 3F 00     .dbyt $3F00
- D 3 - I - 0x002E44 00:EE34: 14        .byte $14   ; 
- D 3 - I - 0x002E45 00:EE35: 0F        .byte $0F, $30, $0F, $21   ; 
- D 3 - I - 0x002E49 00:EE39: 0F        .byte $0F, $0F, $27, $0F   ; 
- D 3 - I - 0x002E4D 00:EE3D: 0F        .byte $0F, $0F, $30, $0F   ; 
- D 3 - I - 0x002E51 00:EE41: 0F        .byte $0F, $30, $29, $19   ; 

- D 3 - I - 0x002E55 00:EE45: 0F        .byte $0F, $35, $35, $35   ; 

- D 3 - I - 0x002E59 00:EE49: 00        .byte $00   ; end token



tbl_EE4A_palette:
- D 3 - I - 0x002E5A 00:EE4A: 3F 00     .dbyt $3F00
- D 3 - I - 0x002E5C 00:EE4C: 14        .byte $14   ; 
- D 3 - I - 0x002E5D 00:EE4D: 17        .byte $17, $0F, $30, $19   ; 
- D 3 - I - 0x002E61 00:EE51: 17        .byte $17, $0F, $30, $27   ; 
- D 3 - I - 0x002E65 00:EE55: 17        .byte $17, $21, $30, $02   ; 
- D 3 - I - 0x002E69 00:EE59: 17        .byte $17, $0F, $22, $02   ; 

- D 3 - I - 0x002E6D 00:EE5D: 17        .byte $17, $30, $25, $0F   ; 

- D 3 - I - 0x002E71 00:EE61: 00        .byte $00   ; end token



tbl_EE62_enemy_spr_palette:
- D 3 - - - 0x002E72 00:EE62: 6C EE     .word _off002_EE6C_00
- D 3 - - - 0x002E74 00:EE64: 73 EE     .word _off002_EE73_01
- D 3 - - - 0x002E76 00:EE66: 7A EE     .word _off002_EE7A_02
- D 3 - - - 0x002E78 00:EE68: 81 EE     .word _off002_EE81_03
- D 3 - - - 0x002E7A 00:EE6A: 88 EE     .word _off002_EE88_04

_off002_EE6C_00:
- D 3 - I - 0x002E7C 00:EE6C: 3F 1C     .dbyt $3F1C
- D 3 - I - 0x002E7E 00:EE6E: 04        .byte $04   ; 
- D 3 - I - 0x002E7F 00:EE6F: 17        .byte $17, $07, $36, $2B   ; 

_off002_EE73_01:
- D 3 - I - 0x002E83 00:EE73: 3F 1C     .dbyt $3F1C
- D 3 - I - 0x002E85 00:EE75: 04        .byte $04   ; 
- D 3 - I - 0x002E86 00:EE76: 17        .byte $17, $07, $27, $25   ; 

_off002_EE7A_02:
- D 3 - I - 0x002E8A 00:EE7A: 3F 1C     .dbyt $3F1C
- D 3 - I - 0x002E8C 00:EE7C: 04        .byte $04   ; 
- D 3 - I - 0x002E8D 00:EE7D: 17        .byte $17, $0F, $27, $31   ; 

_off002_EE81_03:
- D 3 - I - 0x002E91 00:EE81: 3F 1C     .dbyt $3F1C
- D 3 - I - 0x002E93 00:EE83: 04        .byte $04   ; 
- D 3 - I - 0x002E94 00:EE84: 17        .byte $17, $0F, $27, $04   ; 

_off002_EE88_04:
- D 3 - I - 0x002E98 00:EE88: 3F 1C     .dbyt $3F1C
- D 3 - I - 0x002E9A 00:EE8A: 04        .byte $04   ; 
- D 3 - I - 0x002E9B 00:EE8B: 17        .byte $17, $07, $26, $0F   ; 



tbl_EE8F_level_select_options:
- D 3 - I - 0x002E9F 00:EE8F: 21 EB     .dbyt $21EB
- D 3 - I - 0x002EA1 00:EE91: 4B        .byte $40 + $0B   ; print single byte
- D 3 - I - 0x002EA2 00:EE92: 76        .byte $76   ; 

- D 3 - I - 0x002EA3 00:EE93: 22 0B     .dbyt $220B
- D 3 - I - 0x002EA5 00:EE95: 0B        .byte $0B   ; 
- D 3 - I - 0x002EA6 00:EE96: 76        .byte $76, $1C, $0E, $15, $0E, $0C, $1D, $76, $76, $76, $76   ; 

- D 3 - I - 0x002EB1 00:EEA1: 22 2B     .dbyt $222B
- D 3 - I - 0x002EB3 00:EEA3: 0B        .byte $0B   ; 
- D 3 - I - 0x002EB4 00:EEA4: 76        .byte $76, $76, $76, $76, $76, $15, $0E, $1F, $0E, $15, $76   ; 

- D 3 - I - 0x002EBF 00:EEAF: 22 4B     .dbyt $224B
- D 3 - I - 0x002EC1 00:EEB1: 4B        .byte $40 + $0B   ; print single byte
- D 3 - I - 0x002EC2 00:EEB2: 76        .byte $76   ; 
- D 3 - I - 0x002EC3 00:EEB3: 22 6B     .dbyt $226B

- D 3 - I - 0x002EC5 00:EEB5: 0B        .byte $0B   ; 
- D 3 - I - 0x002EC6 00:EEB6: 76        .byte $76, $01, $76, $02, $76, $03, $76, $04, $76, $05, $76   ; 

- D 3 - I - 0x002ED1 00:EEC1: 22 8B     .dbyt $228B
- D 3 - I - 0x002ED3 00:EEC3: 4B        .byte $40 + $0B   ; print single byte
- D 3 - I - 0x002ED4 00:EEC4: 76        .byte $76   ; 

- D 3 - I - 0x002ED5 00:EEC5: 22 AB     .dbyt $22AB
- D 3 - I - 0x002ED7 00:EEC7: 4B        .byte $40 + $0B   ; print single byte
- D 3 - I - 0x002ED8 00:EEC8: 76        .byte $76   ; 

- D 3 - I - 0x002ED9 00:EEC9: 20 C4     .dbyt $20C4
- D 3 - I - 0x002EDB 00:EECB: 45        .byte $40 + $05   ; print single byte
- D 3 - I - 0x002EDC 00:EECC: 24        .byte $24   ; 

- D 3 - I - 0x002EDD 00:EECD: 21 43     .dbyt $2143
- D 3 - I - 0x002EDF 00:EECF: 45        .byte $40 + $05   ; print single byte
- D 3 - I - 0x002EE0 00:EED0: 24        .byte $24   ; 

- D 3 - I - 0x002EE1 00:EED1: 20 C3     .dbyt $20C3
- D 3 - I - 0x002EE3 00:EED3: 84        .byte $80 + $04   ; print vertically
- D 3 - I - 0x002EE4 00:EED4: 7B        .byte $7B, $24, $24, $24   ; 

- D 3 - I - 0x002EE8 00:EED8: 20 E8     .dbyt $20E8
- D 3 - I - 0x002EEA 00:EEDA: 84        .byte $80 + $04   ; print vertically
- D 3 - I - 0x002EEB 00:EEDB: 24        .byte $24, $24, $24, $45   ; 

- D 3 - I - 0x002EEF 00:EEDF: 23 E3     .dbyt $23E3
- D 3 - I - 0x002EF1 00:EEE1: 03        .byte $03   ; 
- D 3 - I - 0x002EF2 00:EEE2: F0        .byte $F0, $F0, $30   ; nametable attributes

- D 3 - I - 0x002EF5 00:EEE5: 00        .byte $00   ; end token



tbl_EEE6_title_screen:
- D 3 - I - 0x002EF6 00:EEE6: 20 83     .dbyt $2083
- D 3 - I - 0x002EF8 00:EEE8: 1A        .byte $1A   ; 
- D 3 - I - 0x002EF9 00:EEE9: D8        .byte $D8, $D9, $D9, $DA, $24, $D8, $D9, $D9, $DA, $24, $E7, $E8, $24, $E9, $24, $E7   ; 
- D 3 - I - 0x002F09 00:EEF9: E8        .byte $E8, $24, $E9, $24, $E9, $24, $F8, $D9, $D9, $DA   ; 

- D 3 - I - 0x002F13 00:EF03: 20 A3     .dbyt $20A3
- D 3 - I - 0x002F15 00:EF05: 1A        .byte $1A   ; 
- D 3 - I - 0x002F16 00:EF06: DB        .byte $DB, $DC, $DD, $DE, $24, $E3, $E4, $E4, $DE, $24, $EA, $EB, $EC, $E5, $24, $EA   ; 
- D 3 - I - 0x002F26 00:EF16: EB        .byte $EB, $EC, $E5, $24, $E5, $24, $E3, $E4, $E4, $DE   ; 

- D 3 - I - 0x002F30 00:EF20: 20 C4     .dbyt $20C4
- D 3 - I - 0x002F32 00:EF22: 16        .byte $16   ; 
- D 3 - I - 0x002F33 00:EF23: DF        .byte $DF, $E0, $24, $24, $E5, $24, $24, $24, $24, $EA, $4D, $ED, $E5, $24, $EA, $4D   ; 
- D 3 - I - 0x002F43 00:EF33: ED        .byte $ED, $E5, $24, $E5, $24, $E5   ; 

- D 3 - I - 0x002F49 00:EF39: 20 E4     .dbyt $20E4
- D 3 - I - 0x002F4B 00:EF3B: 19        .byte $19   ; 
- D 3 - I - 0x002F4C 00:EF3C: DF        .byte $DF, $E0, $24, $24, $E6, $D9, $D9, $DA, $24, $EE, $EF, $F0, $F1, $24, $EE, $EF   ; 
- D 3 - I - 0x002F5C 00:EF4C: F0        .byte $F0, $F1, $24, $E5, $24, $E6, $D9, $D9, $F9   ; 

- D 3 - I - 0x002F65 00:EF55: 21 04     .dbyt $2104
- D 3 - I - 0x002F67 00:EF57: 19        .byte $19   ; 
- D 3 - I - 0x002F68 00:EF58: DF        .byte $DF, $E0, $24, $24, $E3, $E4, $E4, $DE, $24, $E5, $F2, $4D, $F3, $24, $E5, $F2   ; 
- D 3 - I - 0x002F78 00:EF68: 4D        .byte $4D, $F3, $24, $E5, $24, $FA, $E4, $E4, $FD   ; 

- D 3 - I - 0x002F81 00:EF71: 21 24     .dbyt $2124
- D 3 - I - 0x002F83 00:EF73: 19        .byte $19   ; 
- D 3 - I - 0x002F84 00:EF74: DF        .byte $DF, $E0, $24, $24, $E5, $24, $24, $24, $24, $E5, $F4, $F5, $F3, $24, $E5, $F4   ; 
- D 3 - I - 0x002F94 00:EF84: F5        .byte $F5, $F3, $24, $E5, $24, $24, $24, $24, $E5   ; 

- D 3 - I - 0x002F9D 00:EF8D: 21 44     .dbyt $2144
- D 3 - I - 0x002F9F 00:EF8F: 19        .byte $19   ; 
- D 3 - I - 0x002FA0 00:EF90: DF        .byte $DF, $E0, $24, $24, $E6, $D9, $D9, $DA, $24, $E5, $24, $F6, $F7, $24, $E5, $24   ; 
- D 3 - I - 0x002FB0 00:EFA0: F6        .byte $F6, $F7, $24, $E5, $24, $D8, $D9, $D9, $FE   ; 

- D 3 - I - 0x002FB9 00:EFA9: 21 64     .dbyt $2164
- D 3 - I - 0x002FBB 00:EFAB: 19        .byte $19   ; 
- D 3 - I - 0x002FBC 00:EFAC: E1        .byte $E1, $E2, $24, $24, $DB, $E4, $E4, $DE, $24, $FC, $24, $24, $FC, $24, $FC, $24   ; 
- D 3 - I - 0x002FCC 00:EFBC: 24        .byte $24, $FC, $24, $FC, $24, $DB, $E4, $E4, $FB   ; 

- D 3 - I - 0x002FD5 00:EFC5: 22 2A     .dbyt $222A
- D 3 - I - 0x002FD7 00:EFC7: 0C        .byte $0C   ; 
- D 3 - I - 0x002FD8 00:EFC8: 1C        .byte $1C, $12, $17, $10, $15, $0E, $1C, $24, $10, $0A, $16, $0E   ; 

- D 3 - I - 0x002FE4 00:EFD4: 22 8A     .dbyt $228A
- D 3 - I - 0x002FE6 00:EFD6: 0C        .byte $0C   ; 
- D 3 - I - 0x002FE7 00:EFD7: 0D        .byte $0D, $18, $1E, $0B, $15, $0E, $1C, $24, $10, $0A, $16, $0E   ; 

- D 3 - I - 0x002FF3 00:EFE3: 23 05     .dbyt $2305
- D 3 - I - 0x002FF5 00:EFE5: 16        .byte $16   ; 
- D 3 - I - 0x002FF6 00:EFE6: 25        .byte $25, $01, $09, $08, $03, $24, $17, $12, $17, $1D, $0E, $17, $0D, $18, $24, $0C   ; 
- D 3 - I - 0x003006 00:EFF6: 18        .byte $18, $28, $15, $1D, $0D, $26   ; 

- D 3 - I - 0x00300C 00:EFFC: 23 C0     .dbyt $23C0
- D 3 - I - 0x00300E 00:EFFE: 60        .byte $40 + $20   ; print single byte, nametable attributes
- D 3 - I - 0x00300F 00:EFFF: 00        .byte $00   ; 

- D 3 - I - 0x003010 00:F000: 23 E0     .dbyt $23E0
- D 3 - I - 0x003012 00:F002: 50        .byte $40 + $10   ; print single byte, nametable attributes
- D 3 - I - 0x003013 00:F003: 55        .byte $55   ; 

- D 3 - I - 0x003014 00:F004: 23 F0     .dbyt $23F0
- D 3 - I - 0x003016 00:F006: 50        .byte $40 + $10   ; print single byte, nametable attributes
- D 3 - I - 0x003017 00:F007: AA        .byte $AA   ; 

- D 3 - I - 0x003018 00:F008: 00        .byte $00   ; end token



tbl_F009_whole_field:
- D 3 - I - 0x003019 00:F009: 20 C9     .dbyt $20C9
- D 3 - I - 0x00301B 00:F00B: 0E        .byte $0E   ; 
- D 3 - I - 0x00301C 00:F00C: 30        .byte $30, $31, $32, $32, $32, $32, $33, $34, $32, $32, $32, $32, $35, $36   ; 

- D 3 - I - 0x00302A 00:F01A: 20 E9     .dbyt $20E9
- D 3 - I - 0x00302C 00:F01C: 0E        .byte $0E   ; 
- D 3 - I - 0x00302D 00:F01D: 37        .byte $37, $38, $4D, $4D, $4D, $4D, $4D, $4D, $4D, $4D, $4D, $4D, $39, $3A   ; 

- D 3 - I - 0x00303B 00:F02B: 21 09     .dbyt $2109
- D 3 - I - 0x00303D 00:F02D: 0E        .byte $0E   ; 
- D 3 - I - 0x00303E 00:F02E: 3B        .byte $3B, $3C, $4D, $4D, $4D, $4D, $4D, $4D, $4D, $4D, $4D, $4D, $3D, $3E   ; 

- D 3 - I - 0x00304C 00:F03C: 21 29     .dbyt $2129
- D 3 - I - 0x00304E 00:F03E: 0E        .byte $0E   ; 
- D 3 - I - 0x00304F 00:F03F: 3F        .byte $3F, $40, $32, $32, $32, $32, $41, $42, $32, $32, $32, $32, $43, $44   ; 

- D 3 - I - 0x00305D 00:F04D: 21 48     .dbyt $2148
- D 3 - I - 0x00305F 00:F04F: 10        .byte $10   ; 
- D 3 - I - 0x003060 00:F050: 45        .byte $45, $46, $47, $4D, $4D, $4D, $4D, $6D, $6E, $4D, $4D, $4D, $4D, $48, $49, $4A   ; 

- D 3 - I - 0x003070 00:F060: 21 68     .dbyt $2168
- D 3 - I - 0x003072 00:F062: 10        .byte $10   ; 
- D 3 - I - 0x003073 00:F063: 9B        .byte $9B, $90, $91, $4D, $4D, $4D, $4D, $6D, $6E, $4D, $4D, $4D, $4D, $92, $93, $9E   ; 

- D 3 - I - 0x003083 00:F073: 21 86     .dbyt $2186
- D 3 - I - 0x003085 00:F075: 14        .byte $14   ; 
- D 3 - I - 0x003086 00:F076: 51        .byte $51, $52, $53, $54, $55, $56, $57, $55, $56, $58, $4B, $55, $56, $57, $55, $56   ; 
- D 3 - I - 0x003096 00:F086: 59        .byte $59, $5A, $5B, $5C   ; 

- D 3 - I - 0x00309A 00:F08A: 21 A6     .dbyt $21A6
- D 3 - I - 0x00309C 00:F08C: 14        .byte $14   ; 
- D 3 - I - 0x00309D 00:F08D: 5D        .byte $5D, $5E, $5F, $60, $61, $62, $63, $61, $62, $64, $4C, $61, $62, $63, $61, $62   ; 
- D 3 - I - 0x0030AD 00:F09D: 66        .byte $66, $67, $68, $69   ; 

- D 3 - I - 0x0030B1 00:F0A1: 21 C7     .dbyt $21C7
- D 3 - I - 0x0030B3 00:F0A3: 12        .byte $12   ; 
- D 3 - I - 0x0030B4 00:F0A4: 95        .byte $95, $96, $A0, $4D, $4D, $4D, $4D, $4D, $6D, $6E, $4D, $4D, $4D, $4D, $4D, $A1   ; 
- D 3 - I - 0x0030C4 00:F0B4: 99        .byte $99, $9A   ; 

- D 3 - I - 0x0030C6 00:F0B6: 21 E7     .dbyt $21E7
- D 3 - I - 0x0030C8 00:F0B8: 12        .byte $12   ; 
- D 3 - I - 0x0030C9 00:F0B9: 9B        .byte $9B, $4D, $8D, $4D, $4D, $4D, $4D, $4D, $6D, $6E, $4D, $4D, $4D, $4D, $4D, $8E   ; 
- D 3 - I - 0x0030D9 00:F0C9: 4D        .byte $4D, $9E   ; 

- D 3 - I - 0x0030DB 00:F0CB: 22 07     .dbyt $2207
- D 3 - I - 0x0030DD 00:F0CD: 12        .byte $12   ; 
- D 3 - I - 0x0030DE 00:F0CE: 9F        .byte $9F, $90, $91, $4D, $4D, $4D, $4D, $4D, $6D, $6E, $4D, $4D, $4D, $4D, $4D, $92   ; 
- D 3 - I - 0x0030EE 00:F0DE: 93        .byte $93, $A2   ; 

- D 3 - I - 0x0030F0 00:F0E0: 22 27     .dbyt $2227
- D 3 - I - 0x0030F2 00:F0E2: 12        .byte $12   ; 
- D 3 - I - 0x0030F3 00:F0E3: 8F        .byte $8F, $97, $4D, $4D, $4D, $4D, $4D, $4D, $6D, $6E, $4D, $4D, $4D, $4D, $4D, $4D   ; 
- D 3 - I - 0x003103 00:F0F3: 98        .byte $98, $94   ; 

- D 3 - I - 0x003105 00:F0F5: 22 46     .dbyt $2246
- D 3 - I - 0x003107 00:F0F7: 14        .byte $14   ; 
- D 3 - I - 0x003108 00:F0F8: 95        .byte $95, $96, $9C, $4D, $4D, $4D, $4D, $4D, $4D, $6D, $6E, $4D, $4D, $4D, $4D, $4D   ; 
- D 3 - I - 0x003118 00:F108: 4D        .byte $4D, $9D, $99, $9A   ; 

- D 3 - I - 0x00311C 00:F10C: 22 66     .dbyt $2266
- D 3 - I - 0x00311E 00:F10E: 14        .byte $14   ; 
- D 3 - I - 0x00311F 00:F10F: 9B        .byte $9B, $4D, $87, $A4, $A4, $A4, $A4, $A4, $A4, $89, $8A, $A4, $A4, $A4, $A4, $A4   ; 
- D 3 - I - 0x00312F 00:F11F: A4        .byte $A4, $8B, $4D, $9E   ; 

- D 3 - I - 0x003133 00:F123: 22 86     .dbyt $2286
- D 3 - I - 0x003135 00:F125: 03        .byte $03   ; 
- D 3 - I - 0x003136 00:F126: 9F        .byte $9F, $4D, $8D   ; 

- D 3 - I - 0x003139 00:F129: 22 97     .dbyt $2297
- D 3 - I - 0x00313B 00:F12B: 03        .byte $03   ; 
- D 3 - I - 0x00313C 00:F12C: 8E        .byte $8E, $4D, $A2   ; 

- D 3 - I - 0x00313F 00:F12F: 22 A6     .dbyt $22A6
- D 3 - I - 0x003141 00:F131: 03        .byte $03   ; 
- D 3 - I - 0x003142 00:F132: 8F        .byte $8F, $90, $91   ; 

- D 3 - I - 0x003145 00:F135: 22 B7     .dbyt $22B7
- D 3 - I - 0x003147 00:F137: 03        .byte $03   ; 
- D 3 - I - 0x003148 00:F138: 92        .byte $92, $93, $94   ; 

- D 3 - I - 0x00314B 00:F13B: 22 C5     .dbyt $22C5
- D 3 - I - 0x00314D 00:F13D: 03        .byte $03   ; 
- D 3 - I - 0x00314E 00:F13E: 95        .byte $95, $96, $97   ; 

- D 3 - I - 0x003151 00:F141: 22 D8     .dbyt $22D8
- D 3 - I - 0x003153 00:F143: 03        .byte $03   ; 
- D 3 - I - 0x003154 00:F144: 98        .byte $98, $99, $9A   ; 

- D 3 - I - 0x003157 00:F147: 22 E5     .dbyt $22E5
- D 3 - I - 0x003159 00:F149: 03        .byte $03   ; 
- D 3 - I - 0x00315A 00:F14A: 9B        .byte $9B, $4D, $9C   ; 

- D 3 - I - 0x00315D 00:F14D: 22 F8     .dbyt $22F8
- D 3 - I - 0x00315F 00:F14F: 03        .byte $03   ; 
- D 3 - I - 0x003160 00:F150: 9D        .byte $9D, $4D, $9E   ; 

- D 3 - I - 0x003163 00:F153: 23 05     .dbyt $2305
- D 3 - I - 0x003165 00:F155: 03        .byte $03   ; 
- D 3 - I - 0x003166 00:F156: 9F        .byte $9F, $4D, $A0   ; 

- D 3 - I - 0x003169 00:F159: 23 18     .dbyt $2318
- D 3 - I - 0x00316B 00:F15B: 03        .byte $03   ; 
- D 3 - I - 0x00316C 00:F15C: A1        .byte $A1, $4D, $A2   ; 

- D 3 - I - 0x00316F 00:F15F: 23 25     .dbyt $2325
- D 3 - I - 0x003171 00:F161: 16        .byte $16   ; 
- D 3 - I - 0x003172 00:F162: A3        .byte $A3, $A4, $A5, $A4, $A4, $A4, $A4, $A4, $A4, $A4, $A6, $A7, $A4, $A4, $A4, $A4   ; 
- D 3 - I - 0x003182 00:F172: A4        .byte $A4, $A4, $A4, $A8, $A4, $A9   ; 

- D 3 - I - 0x003188 00:F178: 22 89     .dbyt $2289
- D 3 - I - 0x00318A 00:F17A: 4E        .byte $40 + $0E   ; print single byte
- D 3 - I - 0x00318B 00:F17B: 4D        .byte $4D   ; 

- D 3 - I - 0x00318C 00:F17C: 22 A9     .dbyt $22A9
- D 3 - I - 0x00318E 00:F17E: 4E        .byte $40 + $0E   ; print single byte
- D 3 - I - 0x00318F 00:F17F: 4D        .byte $4D   ; 

- D 3 - I - 0x003190 00:F180: 22 C8     .dbyt $22C8
- D 3 - I - 0x003192 00:F182: 50        .byte $40 + $10   ; print single byte
- D 3 - I - 0x003193 00:F183: 4D        .byte $4D   ; 

- D 3 - I - 0x003194 00:F184: 22 E8     .dbyt $22E8
- D 3 - I - 0x003196 00:F186: 50        .byte $40 + $10   ; print single byte
- D 3 - I - 0x003197 00:F187: 4D        .byte $4D   ; 

- D 3 - I - 0x003198 00:F188: 23 08     .dbyt $2308
- D 3 - I - 0x00319A 00:F18A: 50        .byte $40 + $10   ; print single byte
- D 3 - I - 0x00319B 00:F18B: 4D        .byte $4D   ; 

- D 3 - I - 0x00319C 00:F18C: 21 3B     .dbyt $213B
- D 3 - I - 0x00319E 00:F18E: 86        .byte $80 + $06   ; print vertically
- D 3 - I - 0x00319F 00:F18F: 7D        .byte $7D, $AA, $AB, $AC, $AD, $13   ; 

- D 3 - I - 0x0031A5 00:F195: 21 3C     .dbyt $213C
- D 3 - I - 0x0031A7 00:F197: 85        .byte $80 + $05   ; print vertically
- D 3 - I - 0x0031A8 00:F198: AF        .byte $AF, $B0, $B1, $B2, $B3   ; 

- D 3 - I - 0x0031AD 00:F19D: 21 BD     .dbyt $21BD
- D 3 - I - 0x0031AF 00:F19F: 82        .byte $80 + $02   ; print vertically
- D 3 - I - 0x0031B0 00:F1A0: 1A        .byte $1A, $23   ; 

- D 3 - I - 0x0031B2 00:F1A2: 20 00     .dbyt $2000
- D 3 - I - 0x0031B4 00:F1A4: 20        .byte $20   ; 
- D 3 - I - 0x0031B5 00:F1A5: 2F        .byte $2F, $2E, $2F, $2E, $2F, $2E, $2F, $2E, $2F, $2E, $2F, $2E, $2F, $2E, $2F, $2E   ; 
- D 3 - I - 0x0031C5 00:F1B5: 2F        .byte $2F, $2E, $2F, $2E, $2F, $2E, $2F, $2E, $2F, $2E, $2F, $2E, $2F, $2E, $2F, $2E   ; 

- D 3 - I - 0x0031D5 00:F1C5: 20 20     .dbyt $2020
- D 3 - I - 0x0031D7 00:F1C7: 20        .byte $20   ; 
- D 3 - I - 0x0031D8 00:F1C8: 2E        .byte $2E, $2F, $2E, $2F, $2E, $2F, $2E, $2F, $2E, $2F, $2E, $2F, $2E, $2F, $2E, $2F   ; 
- D 3 - I - 0x0031E8 00:F1D8: 2E        .byte $2E, $2F, $2E, $2F, $2E, $2F, $2E, $2F, $2E, $2F, $2E, $2F, $2E, $2F, $2E, $2F   ; 

- D 3 - I - 0x0031F8 00:F1E8: 20 40     .dbyt $2040
- D 3 - I - 0x0031FA 00:F1EA: 07        .byte $07   ; 
- D 3 - I - 0x0031FB 00:F1EB: 2F        .byte $2F, $2E, $2F, $2E, $2D, $78, $4F   ; 

- D 3 - I - 0x003202 00:F1F2: 20 47     .dbyt $2047
- D 3 - I - 0x003204 00:F1F4: 53        .byte $40 + $13   ; print single byte
- D 3 - I - 0x003205 00:F1F5: 4D        .byte $4D   ; 

- D 3 - I - 0x003206 00:F1F6: 20 59     .dbyt $2059
- D 3 - I - 0x003208 00:F1F8: 14        .byte $14   ; 
- D 3 - I - 0x003209 00:F1F9: 50        .byte $50, $79, $4E, $2F, $2E, $2F, $2E, $2E, $2F, $2D, $78, $4D, $4D, $4F, $70, $71   ; 
- D 3 - I - 0x003219 00:F209: 72        .byte $72, $73, $74, $75   ; 

- D 3 - I - 0x00321D 00:F20D: 20 6D     .dbyt $206D
- D 3 - I - 0x00321F 00:F20F: 4C        .byte $40 + $0C   ; print single byte
- D 3 - I - 0x003220 00:F210: 4D        .byte $4D   ; 

- D 3 - I - 0x003221 00:F211: 20 79     .dbyt $2079
- D 3 - I - 0x003223 00:F213: 0D        .byte $0D   ; 
- D 3 - I - 0x003224 00:F214: 50        .byte $50, $4D, $4D, $79, $4E, $2E, $2F, $2D, $78, $4D, $4D, $4D, $7B   ; 

- D 3 - I - 0x003231 00:F221: 20 9A     .dbyt $209A
- D 3 - I - 0x003233 00:F223: 0B        .byte $0B   ; 
- D 3 - I - 0x003234 00:F224: 7C        .byte $7C, $4D, $4D, $4D, $79, $4E, $4D, $4D, $4D, $4D, $7B   ; 

- D 3 - I - 0x00323F 00:F22F: 20 BB     .dbyt $20BB
- D 3 - I - 0x003241 00:F231: 09        .byte $09   ; 
- D 3 - I - 0x003242 00:F232: 7C        .byte $7C, $4D, $4D, $4D, $4D, $4D, $4D, $4D, $7B   ; 

- D 3 - I - 0x00324B 00:F23B: 20 DC     .dbyt $20DC
- D 3 - I - 0x00324D 00:F23D: 07        .byte $07   ; 
- D 3 - I - 0x00324E 00:F23E: 7C        .byte $7C, $4D, $4D, $4D, $4D, $4D, $7B   ; 

- D 3 - I - 0x003255 00:F245: 20 FD     .dbyt $20FD
- D 3 - I - 0x003257 00:F247: 05        .byte $05   ; 
- D 3 - I - 0x003258 00:F248: 7C        .byte $7C, $4D, $4D, $4D, $7B   ; 

- D 3 - I - 0x00325D 00:F24D: 21 1E     .dbyt $211E
- D 3 - I - 0x00325F 00:F24F: 03        .byte $03   ; 
- D 3 - I - 0x003260 00:F250: 7C        .byte $7C, $4D, $7B   ; 

- D 3 - I - 0x003263 00:F253: 21 3F     .dbyt $213F
- D 3 - I - 0x003265 00:F255: 01        .byte $01   ; 
- D 3 - I - 0x003266 00:F256: 7C        .byte $7C   ; 

- D 3 - I - 0x003267 00:F257: 20 C3     .dbyt $20C3
- D 3 - I - 0x003269 00:F259: 85        .byte $80 + $05   ; print vertically
- D 3 - I - 0x00326A 00:F25A: 65        .byte $65, $6C, $6C, $6C, $86   ; 

- D 3 - I - 0x00326F 00:F25F: 20 C8     .dbyt $20C8
- D 3 - I - 0x003271 00:F261: 85        .byte $80 + $05   ; print vertically
- D 3 - I - 0x003272 00:F262: 6B        .byte $6B, $6F, $6F, $6F, $8C   ; 

- D 3 - I - 0x003277 00:F267: 20 C4     .dbyt $20C4
- D 3 - I - 0x003279 00:F269: 44        .byte $40 + $04   ; print single byte
- D 3 - I - 0x00327A 00:F26A: 6A        .byte $6A   ; 

- D 3 - I - 0x00327B 00:F26B: 21 44     .dbyt $2144
- D 3 - I - 0x00327D 00:F26D: 44        .byte $40 + $04   ; print single byte
- D 3 - I - 0x00327E 00:F26E: 88        .byte $88   ; 

- D 3 - I - 0x00327F 00:F26F: 23 C0     .dbyt $23C0
- D 3 - I - 0x003281 00:F271: 48        .byte $40 + $8   ; print single byte
- D 3 - I - 0x003282 00:F272: AA        .byte $AA   ; nametable attributes

- D 3 - I - 0x003283 00:F273: 23 C8     .dbyt $23C8
- D 3 - I - 0x003285 00:F275: 02        .byte $02   ; 
- D 3 - I - 0x003286 00:F276: EA        .byte $EA, $02   ; nametable attributes

- D 3 - I - 0x003288 00:F278: 23 CE     .dbyt $23CE
- D 3 - I - 0x00328A 00:F27A: 03        .byte $03   ; 
- D 3 - I - 0x00328B 00:F27B: 0C        .byte $0C, $BB, $02   ; nametable attributes

- D 3 - I - 0x00328E 00:F27E: 23 D6     .dbyt $23D6
- D 3 - I - 0x003290 00:F280: 02        .byte $02   ; 
- D 3 - I - 0x003291 00:F281: 44        .byte $44, $19   ; nametable attributes

- D 3 - I - 0x003293 00:F283: 00        .byte $00   ; end token



tbl_F284_select_game_mode_cursor_spr_data:
- D 3 - I - 0x003294 00:F284: F4        .byte $F4   ; spr_Y
- D 3 - I - 0x003295 00:F285: FE        .byte $FE   ; spr_T
- D 3 - I - 0x003296 00:F286: 00        .byte $00   ; spr_A
- D 3 - I - 0x003297 00:F287: 40        .byte $40   ; spr_X



tbl_F288_select_level_cursor_spr_data:
- D 3 - I - 0x003298 00:F288: A0        .byte $A0   ; spr_Y
- D 3 - I - 0x003299 00:F289: FD        .byte $FD   ; spr_T
- D 3 - I - 0x00329A 00:F28A: 00        .byte $00   ; spr_A
- D 3 - I - 0x00329B 00:F28B: 98        .byte $98   ; spr_X



tbl_F28C_animations_data:
- D 3 - I - 0x00329C 00:F28C: 0A F3     .word _off004_F30A_00
- D 3 - I - 0x00329E 00:F28E: 18 F3     .word _off004_F318_01
- D 3 - I - 0x0032A0 00:F290: 26 F3     .word _off004_F326_02
- D 3 - I - 0x0032A2 00:F292: 34 F3     .word _off004_F334_03
- D 3 - I - 0x0032A4 00:F294: 42 F3     .word _off004_F342_04
- D 3 - I - 0x0032A6 00:F296: 50 F3     .word _off004_F350_05
- D 3 - I - 0x0032A8 00:F298: 5E F3     .word _off004_F35E_06
- D 3 - I - 0x0032AA 00:F29A: 6C F3     .word _off004_F36C_07
- D 3 - I - 0x0032AC 00:F29C: 7A F3     .word _off004_F37A_08
- D 3 - I - 0x0032AE 00:F29E: 88 F3     .word _off004_F388_09
- D 3 - I - 0x0032B0 00:F2A0: 96 F3     .word _off004_F396_0A
- D 3 - I - 0x0032B2 00:F2A2: A4 F3     .word _off004_F3A4_0B
- D 3 - I - 0x0032B4 00:F2A4: B2 F3     .word _off004_F3B2_0C
- D 3 - I - 0x0032B6 00:F2A6: C0 F3     .word _off004_F3C0_0D
- D 3 - I - 0x0032B8 00:F2A8: CE F3     .word _off004_F3CE_0E
- D 3 - I - 0x0032BA 00:F2AA: DC F3     .word _off004_F3DC_0F
- D 3 - I - 0x0032BC 00:F2AC: EA F3     .word _off004_F3EA_10
- D 3 - I - 0x0032BE 00:F2AE: F8 F3     .word _off004_F3F8_11
- D 3 - I - 0x0032C0 00:F2B0: 06 F4     .word _off004_F406_12
- D 3 - I - 0x0032C2 00:F2B2: 14 F4     .word _off004_F414_13
- D 3 - I - 0x0032C4 00:F2B4: 22 F4     .word _off004_F422_14
- D 3 - I - 0x0032C6 00:F2B6: 30 F4     .word _off004_F430_15
- D 3 - I - 0x0032C8 00:F2B8: 3E F4     .word _off004_F43E_16
- D 3 - I - 0x0032CA 00:F2BA: 4C F4     .word _off004_F44C_17
- D 3 - I - 0x0032CC 00:F2BC: 5A F4     .word _off004_F45A_18
- D 3 - I - 0x0032CE 00:F2BE: 68 F4     .word _off004_F468_19
- D 3 - I - 0x0032D0 00:F2C0: 76 F4     .word _off004_F476_1A
- D 3 - I - 0x0032D2 00:F2C2: 81 F4     .word _off004_F481_1B
- D 3 - I - 0x0032D4 00:F2C4: 8C F4     .word _off004_F48C_1C
- D 3 - I - 0x0032D6 00:F2C6: 97 F4     .word _off004_F497_1D
- D 3 - I - 0x0032D8 00:F2C8: A2 F4     .word _off004_F4A2_1E
- D 3 - I - 0x0032DA 00:F2CA: AD F4     .word _off004_F4AD_1F
- D 3 - I - 0x0032DC 00:F2CC: B8 F4     .word _off004_F4B8_20
- D 3 - I - 0x0032DE 00:F2CE: C3 F4     .word _off004_F4C3_21
- D 3 - I - 0x0032E0 00:F2D0: CE F4     .word _off004_F4CE_22
- D 3 - I - 0x0032E2 00:F2D2: D9 F4     .word _off004_F4D9_23
- D 3 - I - 0x0032E4 00:F2D4: E4 F4     .word _off004_F4E4_24
- D 3 - I - 0x0032E6 00:F2D6: F2 F4     .word _off004_F4F2_25
- D 3 - I - 0x0032E8 00:F2D8: FD F4     .word _off004_F4FD_26
- D 3 - I - 0x0032EA 00:F2DA: 08 F5     .word _off004_F508_27
- D 3 - I - 0x0032EC 00:F2DC: 13 F5     .word _off004_F513_28
- D 3 - I - 0x0032EE 00:F2DE: 1E F5     .word _off004_F51E_29
- D 3 - I - 0x0032F0 00:F2E0: 29 F5     .word _off004_F529_2A
- D 3 - I - 0x0032F2 00:F2E2: 34 F5     .word _off004_F534_2B
- D 3 - I - 0x0032F4 00:F2E4: 3F F5     .word _off004_F53F_2C
- D 3 - I - 0x0032F6 00:F2E6: 4A F5     .word _off004_F54A_2D
- D 3 - I - 0x0032F8 00:F2E8: 55 F5     .word _off004_F555_2E
- D 3 - I - 0x0032FA 00:F2EA: 60 F5     .word _off004_F560_2F
- D 3 - I - 0x0032FC 00:F2EC: 65 F5     .word _off004_F565_30
- D 3 - I - 0x0032FE 00:F2EE: 6A F5     .word _off004_F56A_31
- D 3 - I - 0x003300 00:F2F0: 6F F5     .word _off004_F56F_32
- D 3 - I - 0x003302 00:F2F2: 74 F5     .word _off004_F574_33
- D 3 - I - 0x003304 00:F2F4: 79 F5     .word _off004_F579_34
- D 3 - I - 0x003306 00:F2F6: 7E F5     .word _off004_F57E_35
- D 3 - I - 0x003308 00:F2F8: 83 F5     .word _off004_F583_36
- D 3 - I - 0x00330A 00:F2FA: 88 F5     .word _off004_F588_37
- - - - - - 0x00330C 00:F2FC: 8D F5     .word _off004_F58D_38
- - - - - - 0x00330E 00:F2FE: 98 F5     .word _off004_F598_39
- D 3 - I - 0x003310 00:F300: A3 F5     .word _off004_F5A3_3A
- D 3 - I - 0x003312 00:F302: B1 F5     .word _off004_F5B1_3B
- D 3 - I - 0x003314 00:F304: BF F5     .word _off004_F5BF_3C
- D 3 - I - 0x003316 00:F306: CA F5     .word _off004_F5CA_3D
- D 3 - I - 0x003318 00:F308: D5 F5     .word _off004_F5D5_3E



_off004_F30A_00:
- D 3 - I - 0x00331A 00:F30A: DA F5     .word _off007_F5DA_00
; spr_A
- D 3 - I - 0x00331C 00:F30C: 00        .byte $00, $00   ; 
; spr_T
- D 3 - I - 0x00331E 00:F30E: 01        .byte $01   ; 00
- D 3 - I - 0x00331F 00:F30F: 00        .byte $00   ; 01
- D 3 - I - 0x003320 00:F310: 03        .byte $03   ; 02
- D 3 - I - 0x003321 00:F311: 04        .byte $04   ; 03
- D 3 - I - 0x003322 00:F312: 02        .byte $02   ; 04
- D 3 - I - 0x003323 00:F313: 05        .byte $05   ; 05
- D 3 - I - 0x003324 00:F314: 06        .byte $06   ; 06
- D 3 - I - 0x003325 00:F315: 07        .byte $07   ; 07
- D 3 - I - 0x003326 00:F316: 08        .byte $08   ; 08
- D 3 - I - 0x003327 00:F317: FF        .byte $FF   ; 09



_off004_F318_01:
- D 3 - I - 0x003328 00:F318: EF F5     .word _off007_F5EF_01
; spr_A
- D 3 - I - 0x00332A 00:F31A: 00        .byte $00, $00   ; 
; spr_T
- D 3 - I - 0x00332C 00:F31C: 09        .byte $09   ; 00
- D 3 - I - 0x00332D 00:F31D: 0A        .byte $0A   ; 01
- D 3 - I - 0x00332E 00:F31E: 0B        .byte $0B   ; 02
- D 3 - I - 0x00332F 00:F31F: 0C        .byte $0C   ; 03
- D 3 - I - 0x003330 00:F320: 0D        .byte $0D   ; 04
- D 3 - I - 0x003331 00:F321: 06        .byte $06   ; 05
- D 3 - I - 0x003332 00:F322: 0E        .byte $0E   ; 06
- D 3 - I - 0x003333 00:F323: 0F        .byte $0F   ; 07
- D 3 - I - 0x003334 00:F324: 10        .byte $10   ; 08
- D 3 - I - 0x003335 00:F325: FF        .byte $FF   ; 09



_off004_F326_02:
- D 3 - I - 0x003336 00:F326: 04 F6     .word _off007_F604_02
; spr_A
- D 3 - I - 0x003338 00:F328: 00        .byte $00, $00   ; 
; spr_T
- D 3 - I - 0x00333A 00:F32A: FF        .byte $FF   ; 00
- D 3 - I - 0x00333B 00:F32B: 01        .byte $01   ; 01
- D 3 - I - 0x00333C 00:F32C: FF        .byte $FF   ; 02
- D 3 - I - 0x00333D 00:F32D: 11        .byte $11   ; 03
- D 3 - I - 0x00333E 00:F32E: 12        .byte $12   ; 04
- D 3 - I - 0x00333F 00:F32F: 13        .byte $13   ; 05
- D 3 - I - 0x003340 00:F330: 14        .byte $14   ; 06
- D 3 - I - 0x003341 00:F331: 15        .byte $15   ; 07
- D 3 - I - 0x003342 00:F332: 16        .byte $16   ; 08
- D 3 - I - 0x003343 00:F333: 17        .byte $17   ; 09



_off004_F334_03:
- D 3 - I - 0x003344 00:F334: 04 F6     .word _off007_F604_03
; spr_A
- D 3 - I - 0x003346 00:F336: 00        .byte $00, $00   ; 
; spr_T
- D 3 - I - 0x003348 00:F338: FF        .byte $FF   ; 00
- D 3 - I - 0x003349 00:F339: 18        .byte $18   ; 01
- D 3 - I - 0x00334A 00:F33A: 19        .byte $19   ; 02
- D 3 - I - 0x00334B 00:F33B: 1A        .byte $1A   ; 03
- D 3 - I - 0x00334C 00:F33C: 1B        .byte $1B   ; 04
- D 3 - I - 0x00334D 00:F33D: 1C        .byte $1C   ; 05
- D 3 - I - 0x00334E 00:F33E: 1D        .byte $1D   ; 06
- D 3 - I - 0x00334F 00:F33F: FF        .byte $FF   ; 07
- D 3 - I - 0x003350 00:F340: 1E        .byte $1E   ; 08
- D 3 - I - 0x003351 00:F341: 17        .byte $17   ; 09



_off004_F342_04:
- D 3 - I - 0x003352 00:F342: 58 F6     .word _off007_F658_04
; spr_A
- D 3 - I - 0x003354 00:F344: 00        .byte $00, $00   ; 
; spr_T
- D 3 - I - 0x003356 00:F346: 1F        .byte $1F   ; 00
- D 3 - I - 0x003357 00:F347: 20        .byte $20   ; 01
- D 3 - I - 0x003358 00:F348: FF        .byte $FF   ; 02
- D 3 - I - 0x003359 00:F349: 21        .byte $21   ; 03
- D 3 - I - 0x00335A 00:F34A: 22        .byte $22   ; 04
- D 3 - I - 0x00335B 00:F34B: FF        .byte $FF   ; 05
- D 3 - I - 0x00335C 00:F34C: 23        .byte $23   ; 06
- D 3 - I - 0x00335D 00:F34D: 24        .byte $24   ; 07
- D 3 - I - 0x00335E 00:F34E: 1E        .byte $1E   ; 08
- D 3 - I - 0x00335F 00:F34F: 17        .byte $17   ; 09



_off004_F350_05:
- D 3 - I - 0x003360 00:F350: AC F6     .word _off007_F6AC_05
; spr_A
- D 3 - I - 0x003362 00:F352: 83        .byte $83, $00   ; 
; spr_T
- D 3 - I - 0x003364 00:F354: 01        .byte $01   ; 00
- D 3 - I - 0x003365 00:F355: FF        .byte $FF   ; 01
- D 3 - I - 0x003366 00:F356: 25        .byte $25   ; 02
- D 3 - I - 0x003367 00:F357: 26        .byte $26   ; 03
- D 3 - I - 0x003368 00:F358: 28        .byte $28   ; 04
- D 3 - I - 0x003369 00:F359: 29        .byte $29   ; 05
- D 3 - I - 0x00336A 00:F35A: 08        .byte $08   ; 06
- D 3 - I - 0x00336B 00:F35B: 07        .byte $07   ; 07
- D 3 - I - 0x00336C 00:F35C: 27        .byte $27   ; 08
- D 3 - I - 0x00336D 00:F35D: FF        .byte $FF   ; 09



_off004_F35E_06:
- D 3 - I - 0x00336E 00:F35E: EF F5     .word _off007_F5EF_06
; spr_A
- D 3 - I - 0x003370 00:F360: 81        .byte $81, $80   ; 
; spr_T
- D 3 - I - 0x003372 00:F362: 09        .byte $09   ; 00
- D 3 - I - 0x003373 00:F363: 2A        .byte $2A   ; 01
- D 3 - I - 0x003374 00:F364: 2B        .byte $2B   ; 02
- D 3 - I - 0x003375 00:F365: FF        .byte $FF   ; 03
- D 3 - I - 0x003376 00:F366: 2C        .byte $2C   ; 04
- D 3 - I - 0x003377 00:F367: 2D        .byte $2D   ; 05
- D 3 - I - 0x003378 00:F368: FF        .byte $FF   ; 06
- D 3 - I - 0x003379 00:F369: 10        .byte $10   ; 07
- D 3 - I - 0x00337A 00:F36A: 0F        .byte $0F   ; 08
- D 3 - I - 0x00337B 00:F36B: 2E        .byte $2E   ; 09



_off004_F36C_07:
- D 3 - I - 0x00337C 00:F36C: 19 F6     .word _off007_F619_07
; spr_A
- D 3 - I - 0x00337E 00:F36E: 41        .byte $41, $80   ; 
; spr_T
- D 3 - I - 0x003380 00:F370: FF        .byte $FF   ; 00
- D 3 - I - 0x003381 00:F371: 01        .byte $01   ; 01
- D 3 - I - 0x003382 00:F372: FF        .byte $FF   ; 02
- D 3 - I - 0x003383 00:F373: 2F        .byte $2F   ; 03
- D 3 - I - 0x003384 00:F374: 31        .byte $31   ; 04
- D 3 - I - 0x003385 00:F375: 32        .byte $32   ; 05
- D 3 - I - 0x003386 00:F376: 30        .byte $30   ; 06
- D 3 - I - 0x003387 00:F377: 17        .byte $17   ; 07
- D 3 - I - 0x003388 00:F378: 16        .byte $16   ; 08
- D 3 - I - 0x003389 00:F379: FF        .byte $FF   ; 09



_off004_F37A_08:
- D 3 - I - 0x00338A 00:F37A: 19 F6     .word _off007_F619_08
; spr_A
- D 3 - I - 0x00338C 00:F37C: 4D        .byte $4D, $80   ; 
; spr_T
- D 3 - I - 0x00338E 00:F37E: 33        .byte $33   ; 00
- D 3 - I - 0x00338F 00:F37F: 18        .byte $18   ; 01
- D 3 - I - 0x003390 00:F380: 34        .byte $34   ; 02
- D 3 - I - 0x003391 00:F381: 35        .byte $35   ; 03
- D 3 - I - 0x003392 00:F382: 1D        .byte $1D   ; 04
- D 3 - I - 0x003393 00:F383: 1C        .byte $1C   ; 05
- D 3 - I - 0x003394 00:F384: FF        .byte $FF   ; 06
- D 3 - I - 0x003395 00:F385: 17        .byte $17   ; 07
- D 3 - I - 0x003396 00:F386: 1E        .byte $1E   ; 08
- D 3 - I - 0x003397 00:F387: FF        .byte $FF   ; 09



_off004_F388_09:
- D 3 - I - 0x003398 00:F388: 58 F6     .word _off007_F658_09
; spr_A
- D 3 - I - 0x00339A 00:F38A: 93        .byte $93, $C0   ; 
; spr_T
- D 3 - I - 0x00339C 00:F38C: 20        .byte $20   ; 00
- D 3 - I - 0x00339D 00:F38D: 36        .byte $36   ; 01
- D 3 - I - 0x00339E 00:F38E: FF        .byte $FF   ; 02
- D 3 - I - 0x00339F 00:F38F: 22        .byte $22   ; 03
- D 3 - I - 0x0033A0 00:F390: 37        .byte $37   ; 04
- D 3 - I - 0x0033A1 00:F391: FF        .byte $FF   ; 05
- D 3 - I - 0x0033A2 00:F392: 24        .byte $24   ; 06
- D 3 - I - 0x0033A3 00:F393: 23        .byte $23   ; 07
- D 3 - I - 0x0033A4 00:F394: 17        .byte $17   ; 08
- D 3 - I - 0x0033A5 00:F395: 1E        .byte $1E   ; 09



_off004_F396_0A:
- D 3 - I - 0x0033A6 00:F396: 58 F6     .word _off007_F658_0A
; spr_A
- D 3 - I - 0x0033A8 00:F398: 00        .byte $00, $00   ; 
; spr_T
- D 3 - I - 0x0033AA 00:F39A: 38        .byte $38   ; 00
- D 3 - I - 0x0033AB 00:F39B: 39        .byte $39   ; 01
- D 3 - I - 0x0033AC 00:F39C: FF        .byte $FF   ; 02
- D 3 - I - 0x0033AD 00:F39D: 3A        .byte $3A   ; 03
- D 3 - I - 0x0033AE 00:F39E: 3B        .byte $3B   ; 04
- D 3 - I - 0x0033AF 00:F39F: FF        .byte $FF   ; 05
- D 3 - I - 0x0033B0 00:F3A0: 3C        .byte $3C   ; 06
- D 3 - I - 0x0033B1 00:F3A1: 3D        .byte $3D   ; 07
- D 3 - I - 0x0033B2 00:F3A2: 3E        .byte $3E   ; 08
- D 3 - I - 0x0033B3 00:F3A3: 3F        .byte $3F   ; 09



_off004_F3A4_0B:
- D 3 - I - 0x0033B4 00:F3A4: 04 F6     .word _off007_F604_0B
; spr_A
- D 3 - I - 0x0033B6 00:F3A6: 00        .byte $00, $00   ; 
; spr_T
- D 3 - I - 0x0033B8 00:F3A8: FF        .byte $FF   ; 00
- D 3 - I - 0x0033B9 00:F3A9: 40        .byte $40   ; 01
- D 3 - I - 0x0033BA 00:F3AA: FF        .byte $FF   ; 02
- D 3 - I - 0x0033BB 00:F3AB: 41        .byte $41   ; 03
- D 3 - I - 0x0033BC 00:F3AC: 42        .byte $42   ; 04
- D 3 - I - 0x0033BD 00:F3AD: 43        .byte $43   ; 05
- D 3 - I - 0x0033BE 00:F3AE: 44        .byte $44   ; 06
- D 3 - I - 0x0033BF 00:F3AF: FF        .byte $FF   ; 07
- D 3 - I - 0x0033C0 00:F3B0: 45        .byte $45   ; 08
- D 3 - I - 0x0033C1 00:F3B1: 46        .byte $46   ; 09



_off004_F3B2_0C:
- D 3 - I - 0x0033C2 00:F3B2: 51 F7     .word _off007_F751_0C
; spr_A
- D 3 - I - 0x0033C4 00:F3B4: 20        .byte $20, $00   ; 
; spr_T
- D 3 - I - 0x0033C6 00:F3B6: FF        .byte $FF   ; 00
- D 3 - I - 0x0033C7 00:F3B7: 8D        .byte $8D   ; 01
- D 3 - I - 0x0033C8 00:F3B8: 8A        .byte $8A   ; 02
- D 3 - I - 0x0033C9 00:F3B9: 8E        .byte $8E   ; 03
- D 3 - I - 0x0033CA 00:F3BA: 21        .byte $21   ; 04
- D 3 - I - 0x0033CB 00:F3BB: 8F        .byte $8F   ; 05
- D 3 - I - 0x0033CC 00:F3BC: 23        .byte $23   ; 06
- D 3 - I - 0x0033CD 00:F3BD: 24        .byte $24   ; 07
- D 3 - I - 0x0033CE 00:F3BE: 1E        .byte $1E   ; 08
- D 3 - I - 0x0033CF 00:F3BF: 17        .byte $17   ; 09



_off004_F3C0_0D:
- D 3 - I - 0x0033D0 00:F3C0: DA F5     .word _off007_F5DA_0D
; spr_A
- D 3 - I - 0x0033D2 00:F3C2: 00        .byte $00, $00   ; 
; spr_T
- D 3 - I - 0x0033D4 00:F3C4: 01        .byte $01   ; 00
- D 3 - I - 0x0033D5 00:F3C5: 00        .byte $00   ; 01
- D 3 - I - 0x0033D6 00:F3C6: 03        .byte $03   ; 02
- D 3 - I - 0x0033D7 00:F3C7: 04        .byte $04   ; 03
- D 3 - I - 0x0033D8 00:F3C8: 02        .byte $02   ; 04
- D 3 - I - 0x0033D9 00:F3C9: 4A        .byte $4A   ; 05
- D 3 - I - 0x0033DA 00:F3CA: 4B        .byte $4B   ; 06
- D 3 - I - 0x0033DB 00:F3CB: 47        .byte $47   ; 07
- D 3 - I - 0x0033DC 00:F3CC: 48        .byte $48   ; 08
- D 3 - I - 0x0033DD 00:F3CD: FF        .byte $FF   ; 09



_off004_F3CE_0E:
- D 3 - I - 0x0033DE 00:F3CE: DA F5     .word _off007_F5DA_0E
; spr_A
- D 3 - I - 0x0033E0 00:F3D0: 00        .byte $00, $00   ; 
; spr_T
- D 3 - I - 0x0033E2 00:F3D2: 01        .byte $01   ; 00
- D 3 - I - 0x0033E3 00:F3D3: 00        .byte $00   ; 01
- D 3 - I - 0x0033E4 00:F3D4: 03        .byte $03   ; 02
- D 3 - I - 0x0033E5 00:F3D5: 04        .byte $04   ; 03
- D 3 - I - 0x0033E6 00:F3D6: 02        .byte $02   ; 04
- D 3 - I - 0x0033E7 00:F3D7: 4C        .byte $4C   ; 05
- D 3 - I - 0x0033E8 00:F3D8: 4D        .byte $4D   ; 06
- D 3 - I - 0x0033E9 00:F3D9: 49        .byte $49   ; 07
- D 3 - I - 0x0033EA 00:F3DA: 8C        .byte $8C   ; 08
- D 3 - I - 0x0033EB 00:F3DB: FF        .byte $FF   ; 09



_off004_F3DC_0F:
- D 3 - I - 0x0033EC 00:F3DC: AC F6     .word _off007_F6AC_0F
; spr_A
- D 3 - I - 0x0033EE 00:F3DE: 83        .byte $83, $00   ; 
; spr_T
- D 3 - I - 0x0033F0 00:F3E0: 01        .byte $01   ; 00
- D 3 - I - 0x0033F1 00:F3E1: FF        .byte $FF   ; 01
- D 3 - I - 0x0033F2 00:F3E2: 25        .byte $25   ; 02
- D 3 - I - 0x0033F3 00:F3E3: 26        .byte $26   ; 03
- D 3 - I - 0x0033F4 00:F3E4: 4E        .byte $4E   ; 04
- D 3 - I - 0x0033F5 00:F3E5: 4F        .byte $4F   ; 05
- D 3 - I - 0x0033F6 00:F3E6: 48        .byte $48   ; 06
- D 3 - I - 0x0033F7 00:F3E7: 47        .byte $47   ; 07
- D 3 - I - 0x0033F8 00:F3E8: 27        .byte $27   ; 08
- D 3 - I - 0x0033F9 00:F3E9: FF        .byte $FF   ; 09



_off004_F3EA_10:
- D 3 - I - 0x0033FA 00:F3EA: AC F6     .word _off007_F6AC_10
; spr_A
- D 3 - I - 0x0033FC 00:F3EC: 83        .byte $83, $00   ; 
; spr_T
- D 3 - I - 0x0033FE 00:F3EE: 01        .byte $01   ; 00
- D 3 - I - 0x0033FF 00:F3EF: FF        .byte $FF   ; 01
- D 3 - I - 0x003400 00:F3F0: 25        .byte $25   ; 02
- D 3 - I - 0x003401 00:F3F1: 26        .byte $26   ; 03
- D 3 - I - 0x003402 00:F3F2: 50        .byte $50   ; 04
- D 3 - I - 0x003403 00:F3F3: 51        .byte $51   ; 05
- D 3 - I - 0x003404 00:F3F4: 8C        .byte $8C   ; 06
- D 3 - I - 0x003405 00:F3F5: 49        .byte $49   ; 07
- D 3 - I - 0x003406 00:F3F6: 27        .byte $27   ; 08
- D 3 - I - 0x003407 00:F3F7: FF        .byte $FF   ; 09



_off004_F3F8_11:
- D 3 - I - 0x003408 00:F3F8: 2E F6     .word _off007_F62E_11
; spr_A
- D 3 - I - 0x00340A 00:F3FA: 00        .byte $00, $00   ; 
; spr_T
- D 3 - I - 0x00340C 00:F3FC: 52        .byte $52   ; 00
- D 3 - I - 0x00340D 00:F3FD: 53        .byte $53   ; 01
- D 3 - I - 0x00340E 00:F3FE: 54        .byte $54   ; 02
- D 3 - I - 0x00340F 00:F3FF: 55        .byte $55   ; 03
- D 3 - I - 0x003410 00:F400: 56        .byte $56   ; 04
- D 3 - I - 0x003411 00:F401: 57        .byte $57   ; 05
- D 3 - I - 0x003412 00:F402: 58        .byte $58   ; 06
- D 3 - I - 0x003413 00:F403: 59        .byte $59   ; 07
- D 3 - I - 0x003414 00:F404: FF        .byte $FF   ; 08
- D 3 - I - 0x003415 00:F405: FF        .byte $FF   ; 09



_off004_F406_12:
- D 3 - I - 0x003416 00:F406: 58 F6     .word _off007_F658_12
; spr_A
- D 3 - I - 0x003418 00:F408: 00        .byte $00, $00   ; 
; spr_T
- D 3 - I - 0x00341A 00:F40A: 5A        .byte $5A   ; 00
- D 3 - I - 0x00341B 00:F40B: 5B        .byte $5B   ; 01
- D 3 - I - 0x00341C 00:F40C: 5C        .byte $5C   ; 02
- D 3 - I - 0x00341D 00:F40D: 5D        .byte $5D   ; 03
- D 3 - I - 0x00341E 00:F40E: 5E        .byte $5E   ; 04
- D 3 - I - 0x00341F 00:F40F: 5F        .byte $5F   ; 05
- D 3 - I - 0x003420 00:F410: 60        .byte $60   ; 06
- D 3 - I - 0x003421 00:F411: 61        .byte $61   ; 07
- D 3 - I - 0x003422 00:F412: 62        .byte $62   ; 08
- D 3 - I - 0x003423 00:F413: 63        .byte $63   ; 09



_off004_F414_13:
- D 3 - I - 0x003424 00:F414: 43 F6     .word _off007_F643_13
; spr_A
- D 3 - I - 0x003426 00:F416: 00        .byte $00, $00   ; 
; spr_T
- D 3 - I - 0x003428 00:F418: 64        .byte $64   ; 00
- D 3 - I - 0x003429 00:F419: 65        .byte $65   ; 01
- D 3 - I - 0x00342A 00:F41A: 66        .byte $66   ; 02
- D 3 - I - 0x00342B 00:F41B: 67        .byte $67   ; 03
- D 3 - I - 0x00342C 00:F41C: 68        .byte $68   ; 04
- D 3 - I - 0x00342D 00:F41D: 69        .byte $69   ; 05
- D 3 - I - 0x00342E 00:F41E: 6A        .byte $6A   ; 06
- D 3 - I - 0x00342F 00:F41F: FF        .byte $FF   ; 07
- D 3 - I - 0x003430 00:F420: FF        .byte $FF   ; 08
- D 3 - I - 0x003431 00:F421: FF        .byte $FF   ; 09



_off004_F422_14:
- D 3 - I - 0x003432 00:F422: 97 F6     .word _off007_F697_14
; spr_A
- D 3 - I - 0x003434 00:F424: 00        .byte $00, $00   ; 
; spr_T
- D 3 - I - 0x003436 00:F426: 6B        .byte $6B   ; 00
- D 3 - I - 0x003437 00:F427: 6C        .byte $6C   ; 01
- D 3 - I - 0x003438 00:F428: 6D        .byte $6D   ; 02
- D 3 - I - 0x003439 00:F429: 6E        .byte $6E   ; 03
- D 3 - I - 0x00343A 00:F42A: 6F        .byte $6F   ; 04
- D 3 - I - 0x00343B 00:F42B: 70        .byte $70   ; 05
- D 3 - I - 0x00343C 00:F42C: 71        .byte $71   ; 06
- D 3 - I - 0x00343D 00:F42D: 72        .byte $72   ; 07
- D 3 - I - 0x00343E 00:F42E: 73        .byte $73   ; 08
- D 3 - I - 0x00343F 00:F42F: FF        .byte $FF   ; 09



_off004_F430_15:
- D 3 - I - 0x003440 00:F430: 6D F6     .word _off007_F66D_15
; spr_A
- D 3 - I - 0x003442 00:F432: 00        .byte $00, $00   ; 
; spr_T
- D 3 - I - 0x003444 00:F434: 74        .byte $74   ; 00
- D 3 - I - 0x003445 00:F435: 75        .byte $75   ; 01
- D 3 - I - 0x003446 00:F436: 76        .byte $76   ; 02
- D 3 - I - 0x003447 00:F437: 77        .byte $77   ; 03
- D 3 - I - 0x003448 00:F438: 78        .byte $78   ; 04
- D 3 - I - 0x003449 00:F439: 79        .byte $79   ; 05
- D 3 - I - 0x00344A 00:F43A: FF        .byte $FF   ; 06
- D 3 - I - 0x00344B 00:F43B: FF        .byte $FF   ; 07
- D 3 - I - 0x00344C 00:F43C: FF        .byte $FF   ; 08
- D 3 - I - 0x00344D 00:F43D: FF        .byte $FF   ; 09



_off004_F43E_16:
- D 3 - I - 0x00344E 00:F43E: 82 F6     .word _off007_F682_16
; spr_A
- D 3 - I - 0x003450 00:F440: 00        .byte $00, $00   ; 
; spr_T
- D 3 - I - 0x003452 00:F442: 7A        .byte $7A   ; 00
- D 3 - I - 0x003453 00:F443: 7B        .byte $7B   ; 01
- D 3 - I - 0x003454 00:F444: 7C        .byte $7C   ; 02
- D 3 - I - 0x003455 00:F445: 7D        .byte $7D   ; 03
- D 3 - I - 0x003456 00:F446: 7E        .byte $7E   ; 04
- D 3 - I - 0x003457 00:F447: 7F        .byte $7F   ; 05
- D 3 - I - 0x003458 00:F448: FF        .byte $FF   ; 06
- D 3 - I - 0x003459 00:F449: FF        .byte $FF   ; 07
- D 3 - I - 0x00345A 00:F44A: FF        .byte $FF   ; 08
- D 3 - I - 0x00345B 00:F44B: FF        .byte $FF   ; 09



_off004_F44C_17:
- D 3 - I - 0x00345C 00:F44C: 04 F6     .word _off007_F604_17
; spr_A
- D 3 - I - 0x00345E 00:F44E: 80        .byte $80, $C0   ; 
; spr_T
- D 3 - I - 0x003460 00:F450: 01        .byte $01   ; 00
- D 3 - I - 0x003461 00:F451: FF        .byte $FF   ; 01
- D 3 - I - 0x003462 00:F452: FF        .byte $FF   ; 02
- D 3 - I - 0x003463 00:F453: 80        .byte $80   ; 03
- D 3 - I - 0x003464 00:F454: 81        .byte $81   ; 04
- D 3 - I - 0x003465 00:F455: 82        .byte $82   ; 05
- D 3 - I - 0x003466 00:F456: 83        .byte $83   ; 06
- D 3 - I - 0x003467 00:F457: FF        .byte $FF   ; 07
- D 3 - I - 0x003468 00:F458: 10        .byte $10   ; 08
- D 3 - I - 0x003469 00:F459: 0F        .byte $0F   ; 09



_off004_F45A_18:
- D 3 - I - 0x00346A 00:F45A: AC F6     .word _off007_F6AC_18
; spr_A
- D 3 - I - 0x00346C 00:F45C: 83        .byte $83, $00   ; 
; spr_T
- D 3 - I - 0x00346E 00:F45E: 01        .byte $01   ; 00
- D 3 - I - 0x00346F 00:F45F: 84        .byte $84   ; 01
- D 3 - I - 0x003470 00:F460: 85        .byte $85   ; 02
- D 3 - I - 0x003471 00:F461: 86        .byte $86   ; 03
- D 3 - I - 0x003472 00:F462: 87        .byte $87   ; 04
- D 3 - I - 0x003473 00:F463: 88        .byte $88   ; 05
- D 3 - I - 0x003474 00:F464: 17        .byte $17   ; 06
- D 3 - I - 0x003475 00:F465: 16        .byte $16   ; 07
- D 3 - I - 0x003476 00:F466: FF        .byte $FF   ; 08
- D 3 - I - 0x003477 00:F467: FF        .byte $FF   ; 09



_off004_F468_19:
- D 3 - I - 0x003478 00:F468: C1 F6     .word _off007_F6C1_19
; spr_A
- D 3 - I - 0x00347A 00:F46A: 8F        .byte $8F, $00   ; 
; spr_T
- D 3 - I - 0x00347C 00:F46C: 19        .byte $19   ; 00
- D 3 - I - 0x00347D 00:F46D: 89        .byte $89   ; 01
- D 3 - I - 0x00347E 00:F46E: 8A        .byte $8A   ; 02
- D 3 - I - 0x00347F 00:F46F: 8B        .byte $8B   ; 03
- D 3 - I - 0x003480 00:F470: 1D        .byte $1D   ; 04
- D 3 - I - 0x003481 00:F471: 1C        .byte $1C   ; 05
- D 3 - I - 0x003482 00:F472: 17        .byte $17   ; 06
- D 3 - I - 0x003483 00:F473: 1E        .byte $1E   ; 07
- D 3 - I - 0x003484 00:F474: FF        .byte $FF   ; 08
- D 3 - I - 0x003485 00:F475: FF        .byte $FF   ; 09



_off004_F476_1A:
- D 3 - I - 0x003486 00:F476: D6 F6     .word _off007_F6D6_1A
; spr_A
- D 3 - I - 0x003488 00:F478: 00        .byte $00, $00   ; 
; spr_T
- D 3 - I - 0x00348A 00:F47A: 90        .byte $90   ; 00
- D 3 - I - 0x00348B 00:F47B: 91        .byte $91   ; 01
- D 3 - I - 0x00348C 00:F47C: 92        .byte $92   ; 02
- D 3 - I - 0x00348D 00:F47D: 93        .byte $93   ; 03
- D 3 - I - 0x00348E 00:F47E: 94        .byte $94   ; 04
- D 3 - I - 0x00348F 00:F47F: 95        .byte $95   ; 05
- D 3 - I - 0x003490 00:F480: 96        .byte $96   ; 06



_off004_F481_1B:
- D 3 - I - 0x003491 00:F481: E5 F6     .word _off007_F6E5_1B
; spr_A
- D 3 - I - 0x003493 00:F483: 00        .byte $00, $00   ; 
; spr_T
- D 3 - I - 0x003495 00:F485: 97        .byte $97   ; 00
- D 3 - I - 0x003496 00:F486: 98        .byte $98   ; 01
- D 3 - I - 0x003497 00:F487: 99        .byte $99   ; 02
- D 3 - I - 0x003498 00:F488: 9A        .byte $9A   ; 03
- D 3 - I - 0x003499 00:F489: 9B        .byte $9B   ; 04
- D 3 - I - 0x00349A 00:F48A: 9C        .byte $9C   ; 05
- D 3 - I - 0x00349B 00:F48B: FF        .byte $FF   ; 06



_off004_F48C_1C:
- D 3 - I - 0x00349C 00:F48C: F4 F6     .word _off007_F6F4_1C
; spr_A
- D 3 - I - 0x00349E 00:F48E: 00        .byte $00, $00   ; 
; spr_T
- D 3 - I - 0x0034A0 00:F490: 9D        .byte $9D   ; 00
- D 3 - I - 0x0034A1 00:F491: FF        .byte $FF   ; 01
- D 3 - I - 0x0034A2 00:F492: FF        .byte $FF   ; 02
- D 3 - I - 0x0034A3 00:F493: 9F        .byte $9F   ; 03
- D 3 - I - 0x0034A4 00:F494: A0        .byte $A0   ; 04
- D 3 - I - 0x0034A5 00:F495: 9E        .byte $9E   ; 05
- D 3 - I - 0x0034A6 00:F496: A1        .byte $A1   ; 06



_off004_F497_1D:
- D 3 - I - 0x0034A7 00:F497: F4 F6     .word _off007_F6F4_1D
; spr_A
- D 3 - I - 0x0034A9 00:F499: 00        .byte $00, $00   ; 
; spr_T
- D 3 - I - 0x0034AB 00:F49B: FF        .byte $FF   ; 00
- D 3 - I - 0x0034AC 00:F49C: A2        .byte $A2   ; 01
- D 3 - I - 0x0034AD 00:F49D: A3        .byte $A3   ; 02
- D 3 - I - 0x0034AE 00:F49E: FF        .byte $FF   ; 03
- D 3 - I - 0x0034AF 00:F49F: A4        .byte $A4   ; 04
- D 3 - I - 0x0034B0 00:F4A0: FF        .byte $FF   ; 05
- D 3 - I - 0x0034B1 00:F4A1: A5        .byte $A5   ; 06



_off004_F4A2_1E:
- D 3 - I - 0x0034B2 00:F4A2: D6 F6     .word _off007_F6D6_1E
; spr_A
- D 3 - I - 0x0034B4 00:F4A4: 06        .byte $06, $00   ; 
; spr_T
- D 3 - I - 0x0034B6 00:F4A6: FF        .byte $FF   ; 00
- D 3 - I - 0x0034B7 00:F4A7: A6        .byte $A6   ; 01
- D 3 - I - 0x0034B8 00:F4A8: A7        .byte $A7   ; 02
- D 3 - I - 0x0034B9 00:F4A9: A8        .byte $A8   ; 03
- D 3 - I - 0x0034BA 00:F4AA: A9        .byte $A9   ; 04
- D 3 - I - 0x0034BB 00:F4AB: 96        .byte $96   ; 05
- D 3 - I - 0x0034BC 00:F4AC: 95        .byte $95   ; 06



_off004_F4AD_1F:
- D 3 - I - 0x0034BD 00:F4AD: D6 F6     .word _off007_F6D6_1F
; spr_A
- D 3 - I - 0x0034BF 00:F4AF: 06        .byte $06, $00   ; 
; spr_T
- D 3 - I - 0x0034C1 00:F4B1: FF        .byte $FF   ; 00
- D 3 - I - 0x0034C2 00:F4B2: AA        .byte $AA   ; 01
- D 3 - I - 0x0034C3 00:F4B3: AB        .byte $AB   ; 02
- D 3 - I - 0x0034C4 00:F4B4: AC        .byte $AC   ; 03
- D 3 - I - 0x0034C5 00:F4B5: AD        .byte $AD   ; 04
- D 3 - I - 0x0034C6 00:F4B6: 9C        .byte $9C   ; 05
- D 3 - I - 0x0034C7 00:F4B7: 9B        .byte $9B   ; 06



_off004_F4B8_20:
- D 3 - I - 0x0034C8 00:F4B8: 03 F7     .word _off007_F703_20
; spr_A
- D 3 - I - 0x0034CA 00:F4BA: 02        .byte $02, $00   ; 
; spr_T
- D 3 - I - 0x0034CC 00:F4BC: FF        .byte $FF   ; 00
- D 3 - I - 0x0034CD 00:F4BD: AE        .byte $AE   ; 01
- D 3 - I - 0x0034CE 00:F4BE: FF        .byte $FF   ; 02
- D 3 - I - 0x0034CF 00:F4BF: FF        .byte $FF   ; 03
- D 3 - I - 0x0034D0 00:F4C0: AF        .byte $AF   ; 04
- D 3 - I - 0x0034D1 00:F4C1: B0        .byte $B0   ; 05
- D 3 - I - 0x0034D2 00:F4C2: A1        .byte $A1   ; 06



_off004_F4C3_21:
- D 3 - I - 0x0034D3 00:F4C3: 03 F7     .word _off007_F703_21
; spr_A
- D 3 - I - 0x0034D5 00:F4C5: 02        .byte $02, $00   ; 
; spr_T
- D 3 - I - 0x0034D7 00:F4C7: B1        .byte $B1   ; 00
- D 3 - I - 0x0034D8 00:F4C8: B3        .byte $B3   ; 01
- D 3 - I - 0x0034D9 00:F4C9: FF        .byte $FF   ; 02
- D 3 - I - 0x0034DA 00:F4CA: B2        .byte $B2   ; 03
- D 3 - I - 0x0034DB 00:F4CB: B4        .byte $B4   ; 04
- D 3 - I - 0x0034DC 00:F4CC: FF        .byte $FF   ; 05
- D 3 - I - 0x0034DD 00:F4CD: A5        .byte $A5   ; 06



_off004_F4CE_22:
- D 3 - I - 0x0034DE 00:F4CE: E5 F6     .word _off007_F6E5_22
; spr_A
- D 3 - I - 0x0034E0 00:F4D0: 00        .byte $00, $00   ; 
; spr_T
- D 3 - I - 0x0034E2 00:F4D2: B5        .byte $B5   ; 00
- D 3 - I - 0x0034E3 00:F4D3: FF        .byte $FF   ; 01
- D 3 - I - 0x0034E4 00:F4D4: B6        .byte $B6   ; 02
- D 3 - I - 0x0034E5 00:F4D5: B7        .byte $B7   ; 03
- D 3 - I - 0x0034E6 00:F4D6: B8        .byte $B8   ; 04
- D 3 - I - 0x0034E7 00:F4D7: B9        .byte $B9   ; 05
- D 3 - I - 0x0034E8 00:F4D8: FF        .byte $FF   ; 06



_off004_F4D9_23:
- D 3 - I - 0x0034E9 00:F4D9: E5 F6     .word _off007_F6E5_23
; spr_A
- D 3 - I - 0x0034EB 00:F4DB: 00        .byte $00, $00   ; 
; spr_T
- D 3 - I - 0x0034ED 00:F4DD: FF        .byte $FF   ; 00
- D 3 - I - 0x0034EE 00:F4DE: FF        .byte $FF   ; 01
- D 3 - I - 0x0034EF 00:F4DF: BA        .byte $BA   ; 02
- D 3 - I - 0x0034F0 00:F4E0: BB        .byte $BB   ; 03
- D 3 - I - 0x0034F1 00:F4E1: BC        .byte $BC   ; 04
- D 3 - I - 0x0034F2 00:F4E2: BD        .byte $BD   ; 05
- D 3 - I - 0x0034F3 00:F4E3: B5        .byte $B5   ; 06



_off004_F4E4_24:
- D 3 - I - 0x0034F4 00:F4E4: 51 F7     .word _off007_F751_24
; spr_A
- D 3 - I - 0x0034F6 00:F4E6: 03        .byte $03, $C0   ; 
; spr_T
- D 3 - I - 0x0034F8 00:F4E8: F9        .byte $F9   ; 00
- D 3 - I - 0x0034F9 00:F4E9: FF        .byte $FF   ; 01
- D 3 - I - 0x0034FA 00:F4EA: FA        .byte $FA   ; 02
- D 3 - I - 0x0034FB 00:F4EB: 8A        .byte $8A   ; 03
- D 3 - I - 0x0034FC 00:F4EC: FB        .byte $FB   ; 04
- D 3 - I - 0x0034FD 00:F4ED: FC        .byte $FC   ; 05
- D 3 - I - 0x0034FE 00:F4EE: 24        .byte $24   ; 06
- D 3 - I - 0x0034FF 00:F4EF: 23        .byte $23   ; 07
- D 3 - I - 0x003500 00:F4F0: 17        .byte $17   ; 08
- D 3 - I - 0x003501 00:F4F1: 1E        .byte $1E   ; 09



_off004_F4F2_25:
- D 3 - I - 0x003502 00:F4F2: D6 F6     .word _off007_F6D6_25
; spr_A
- D 3 - I - 0x003504 00:F4F4: 00        .byte $00, $00   ; 
; spr_T
- D 3 - I - 0x003506 00:F4F6: 90        .byte $90   ; 00
- D 3 - I - 0x003507 00:F4F7: 91        .byte $91   ; 01
- D 3 - I - 0x003508 00:F4F8: 92        .byte $92   ; 02
- D 3 - I - 0x003509 00:F4F9: C2        .byte $C2   ; 03
- D 3 - I - 0x00350A 00:F4FA: C3        .byte $C3   ; 04
- D 3 - I - 0x00350B 00:F4FB: BE        .byte $BE   ; 05
- D 3 - I - 0x00350C 00:F4FC: BF        .byte $BF   ; 06



_off004_F4FD_26:
- D 3 - I - 0x00350D 00:F4FD: D6 F6     .word _off007_F6D6_26
; spr_A
- D 3 - I - 0x00350F 00:F4FF: 00        .byte $00, $00   ; 
; spr_T
- D 3 - I - 0x003511 00:F501: 90        .byte $90   ; 00
- D 3 - I - 0x003512 00:F502: 91        .byte $91   ; 01
- D 3 - I - 0x003513 00:F503: 92        .byte $92   ; 02
- D 3 - I - 0x003514 00:F504: C2        .byte $C2   ; 03
- D 3 - I - 0x003515 00:F505: C4        .byte $C4   ; 04
- D 3 - I - 0x003516 00:F506: C0        .byte $C0   ; 05
- D 3 - I - 0x003517 00:F507: C1        .byte $C1   ; 06



_off004_F508_27:
- D 3 - I - 0x003518 00:F508: D6 F6     .word _off007_F6D6_27
; spr_A
- D 3 - I - 0x00351A 00:F50A: 06        .byte $06, $00   ; 
; spr_T
- D 3 - I - 0x00351C 00:F50C: FF        .byte $FF   ; 00
- D 3 - I - 0x00351D 00:F50D: A6        .byte $A6   ; 01
- D 3 - I - 0x00351E 00:F50E: A7        .byte $A7   ; 02
- D 3 - I - 0x00351F 00:F50F: C5        .byte $C5   ; 03
- D 3 - I - 0x003520 00:F510: C6        .byte $C6   ; 04
- D 3 - I - 0x003521 00:F511: BF        .byte $BF   ; 05
- D 3 - I - 0x003522 00:F512: BE        .byte $BE   ; 06



_off004_F513_28:
- D 3 - I - 0x003523 00:F513: D6 F6     .word _off007_F6D6_28
; spr_A
- D 3 - I - 0x003525 00:F515: 06        .byte $06, $00   ; 
; spr_T
- D 3 - I - 0x003527 00:F517: FF        .byte $FF   ; 00
- D 3 - I - 0x003528 00:F518: A6        .byte $A6   ; 01
- D 3 - I - 0x003529 00:F519: A7        .byte $A7   ; 02
- D 3 - I - 0x00352A 00:F51A: C7        .byte $C7   ; 03
- D 3 - I - 0x00352B 00:F51B: A9        .byte $A9   ; 04
- D 3 - I - 0x00352C 00:F51C: C1        .byte $C1   ; 05
- D 3 - I - 0x00352D 00:F51D: C0        .byte $C0   ; 06



_off004_F51E_29:
- D 3 - I - 0x00352E 00:F51E: E5 F6     .word _off007_F6E5_29
; spr_A
- D 3 - I - 0x003530 00:F520: 00        .byte $00, $00   ; 
; spr_T
- D 3 - I - 0x003532 00:F522: C8        .byte $C8   ; 00
- D 3 - I - 0x003533 00:F523: FF        .byte $FF   ; 01
- D 3 - I - 0x003534 00:F524: C9        .byte $C9   ; 02
- D 3 - I - 0x003535 00:F525: CA        .byte $CA   ; 03
- D 3 - I - 0x003536 00:F526: CB        .byte $CB   ; 04
- D 3 - I - 0x003537 00:F527: CC        .byte $CC   ; 05
- D 3 - I - 0x003538 00:F528: FF        .byte $FF   ; 06



_off004_F529_2A:
- D 3 - I - 0x003539 00:F529: 12 F7     .word _off007_F712_2A
; spr_A
- D 3 - I - 0x00353B 00:F52B: 00        .byte $00, $00   ; 
; spr_T
- D 3 - I - 0x00353D 00:F52D: FF        .byte $FF   ; 00
- D 3 - I - 0x00353E 00:F52E: FF        .byte $FF   ; 01
- D 3 - I - 0x00353F 00:F52F: CD        .byte $CD   ; 02
- D 3 - I - 0x003540 00:F530: CE        .byte $CE   ; 03
- D 3 - I - 0x003541 00:F531: CF        .byte $CF   ; 04
- D 3 - I - 0x003542 00:F532: D0        .byte $D0   ; 05
- D 3 - I - 0x003543 00:F533: D1        .byte $D1   ; 06



_off004_F534_2B:
- D 3 - I - 0x003544 00:F534: 12 F7     .word _off007_F712_2B
; spr_A
- D 3 - I - 0x003546 00:F536: 00        .byte $00, $00   ; 
; spr_T
- D 3 - I - 0x003548 00:F538: D2        .byte $D2   ; 00
- D 3 - I - 0x003549 00:F539: D3        .byte $D3   ; 01
- D 3 - I - 0x00354A 00:F53A: D4        .byte $D4   ; 02
- D 3 - I - 0x00354B 00:F53B: D5        .byte $D5   ; 03
- D 3 - I - 0x00354C 00:F53C: D6        .byte $D6   ; 04
- D 3 - I - 0x00354D 00:F53D: FF        .byte $FF   ; 05
- D 3 - I - 0x00354E 00:F53E: D7        .byte $D7   ; 06



_off004_F53F_2C:
- D 3 - I - 0x00354F 00:F53F: 21 F7     .word _off007_F721_2C
; spr_A
- D 3 - I - 0x003551 00:F541: 00        .byte $00, $00   ; 
; spr_T
- D 3 - I - 0x003553 00:F543: D8        .byte $D8   ; 00
- D 3 - I - 0x003554 00:F544: D9        .byte $D9   ; 01
- D 3 - I - 0x003555 00:F545: DA        .byte $DA   ; 02
- D 3 - I - 0x003556 00:F546: DB        .byte $DB   ; 03
- D 3 - I - 0x003557 00:F547: DC        .byte $DC   ; 04
- D 3 - I - 0x003558 00:F548: DD        .byte $DD   ; 05
- D 3 - I - 0x003559 00:F549: DE        .byte $DE   ; 06



_off004_F54A_2D:
- D 3 - I - 0x00355A 00:F54A: 30 F7     .word _off007_F730_2D
; spr_A
- D 3 - I - 0x00355C 00:F54C: 00        .byte $00, $00   ; 
; spr_T
- D 3 - I - 0x00355E 00:F54E: DF        .byte $DF   ; 00
- D 3 - I - 0x00355F 00:F54F: E0        .byte $E0   ; 01
- D 3 - I - 0x003560 00:F550: E1        .byte $E1   ; 02
- D 3 - I - 0x003561 00:F551: E2        .byte $E2   ; 03
- D 3 - I - 0x003562 00:F552: E3        .byte $E3   ; 04
- D 3 - I - 0x003563 00:F553: FF        .byte $FF   ; 05
- D 3 - I - 0x003564 00:F554: FF        .byte $FF   ; 06



_off004_F555_2E:
- D 3 - I - 0x003565 00:F555: 03 F7     .word _off007_F703_2E
; spr_A
- D 3 - I - 0x003567 00:F557: 00        .byte $00, $00   ; 
; spr_T
- D 3 - I - 0x003569 00:F559: FF        .byte $FF   ; 00
- D 3 - I - 0x00356A 00:F55A: A2        .byte $A2   ; 01
- D 3 - I - 0x00356B 00:F55B: A3        .byte $A3   ; 02
- D 3 - I - 0x00356C 00:F55C: FF        .byte $FF   ; 03
- D 3 - I - 0x00356D 00:F55D: A4        .byte $A4   ; 04
- D 3 - I - 0x00356E 00:F55E: FF        .byte $FF   ; 05
- D 3 - I - 0x00356F 00:F55F: E4        .byte $E4   ; 06



_off004_F560_2F:
- D 3 - I - 0x003570 00:F560: 3F F7     .word _off007_F73F_2F
; spr_A
- D 3 - I - 0x003572 00:F562: 00        .byte $00, $00   ; 
; spr_T
- D 3 - I - 0x003574 00:F564: F0        .byte $F0   ; 00



_off004_F565_30:
- D 3 - I - 0x003575 00:F565: 3F F7     .word _off007_F73F_30
; spr_A
- D 3 - I - 0x003577 00:F567: 00        .byte $00, $00   ; 
; spr_T
- D 3 - I - 0x003579 00:F569: F1        .byte $F1   ; 00



_off004_F56A_31:
- D 3 - I - 0x00357A 00:F56A: 3F F7     .word _off007_F73F_31
; spr_A
- D 3 - I - 0x00357C 00:F56C: 00        .byte $00, $00   ; 
; spr_T
- D 3 - I - 0x00357E 00:F56E: F2        .byte $F2   ; 00



_off004_F56F_32:
- D 3 - I - 0x00357F 00:F56F: 3F F7     .word _off007_F73F_32
; spr_A
- D 3 - I - 0x003581 00:F571: 00        .byte $00, $00   ; 
; spr_T
- D 3 - I - 0x003583 00:F573: F3        .byte $F3   ; 00



_off004_F574_33:
- D 3 - I - 0x003584 00:F574: 3F F7     .word _off007_F73F_33
; spr_A
- D 3 - I - 0x003586 00:F576: 00        .byte $00, $00   ; 
; spr_T
- D 3 - I - 0x003588 00:F578: F4        .byte $F4   ; 00



_off004_F579_34:
- D 3 - I - 0x003589 00:F579: 3F F7     .word _off007_F73F_34
; spr_A
- D 3 - I - 0x00358B 00:F57B: 00        .byte $00, $00   ; 
; spr_T
- D 3 - I - 0x00358D 00:F57D: F5        .byte $F5   ; 00



_off004_F57E_35:
- D 3 - I - 0x00358E 00:F57E: 3F F7     .word _off007_F73F_35
; spr_A
- D 3 - I - 0x003590 00:F580: 00        .byte $00, $00   ; 
; spr_T
- D 3 - I - 0x003592 00:F582: F6        .byte $F6   ; 00



_off004_F583_36:
- D 3 - I - 0x003593 00:F583: 3F F7     .word _off007_F73F_36
; spr_A
- D 3 - I - 0x003595 00:F585: 00        .byte $00, $00   ; 
; spr_T
- D 3 - I - 0x003597 00:F587: F7        .byte $F7   ; 00



_off004_F588_37:
- D 3 - I - 0x003598 00:F588: 3F F7     .word _off007_F73F_37
; spr_A
- D 3 - I - 0x00359A 00:F58A: 00        .byte $00, $00   ; 
; spr_T
- D 3 - I - 0x00359C 00:F58C: F8        .byte $F8   ; 00



_off004_F58D_38:
- - - - - - 0x00359D 00:F58D: D6 F6     .word _off007_F6D6_38
; spr_A
- - - - - - 0x00359F 00:F58F: 04        .byte $04, $00   ; 
; spr_T
- - - - - - 0x0035A1 00:F591: FF        .byte $FF   ; 00
- - - - - - 0x0035A2 00:F592: AA        .byte $AA   ; 01
- - - - - - 0x0035A3 00:F593: E5        .byte $E5   ; 02
- - - - - - 0x0035A4 00:F594: E6        .byte $E6   ; 03
- - - - - - 0x0035A5 00:F595: E7        .byte $E7   ; 04
- - - - - - 0x0035A6 00:F596: 9C        .byte $9C   ; 05
- - - - - - 0x0035A7 00:F597: E8        .byte $E8   ; 06



_off004_F598_39:
- - - - - - 0x0035A8 00:F598: 42 F7     .word _off007_F742_39
; spr_A
- - - - - - 0x0035AA 00:F59A: 04        .byte $04, $00   ; 
; spr_T
- - - - - - 0x0035AC 00:F59C: E9        .byte $E9   ; 00
- - - - - - 0x0035AD 00:F59D: EA        .byte $EA   ; 01
- - - - - - 0x0035AE 00:F59E: EB        .byte $EB   ; 02
- - - - - - 0x0035AF 00:F59F: EC        .byte $EC   ; 03
- - - - - - 0x0035B0 00:F5A0: ED        .byte $ED   ; 04
- - - - - - 0x0035B1 00:F5A1: A5        .byte $A5   ; 05
- - - - - - 0x0035B2 00:F5A2: FF        .byte $FF   ; 06



_off004_F5A3_3A:
- D 3 - I - 0x0035B3 00:F5A3: 58 F6     .word _off007_F658_3A
; spr_A
- D 3 - I - 0x0035B5 00:F5A5: FF        .byte $FF, $C0   ; 
; spr_T
- D 3 - I - 0x0035B7 00:F5A7: 39        .byte $39   ; 00
- D 3 - I - 0x0035B8 00:F5A8: 38        .byte $38   ; 01
- D 3 - I - 0x0035B9 00:F5A9: FF        .byte $FF   ; 02
- D 3 - I - 0x0035BA 00:F5AA: 3B        .byte $3B   ; 03
- D 3 - I - 0x0035BB 00:F5AB: 3A        .byte $3A   ; 04
- D 3 - I - 0x0035BC 00:F5AC: FF        .byte $FF   ; 05
- D 3 - I - 0x0035BD 00:F5AD: 3D        .byte $3D   ; 06
- D 3 - I - 0x0035BE 00:F5AE: 3C        .byte $3C   ; 07
- D 3 - I - 0x0035BF 00:F5AF: 3F        .byte $3F   ; 08
- D 3 - I - 0x0035C0 00:F5B0: 3E        .byte $3E   ; 09



_off004_F5B1_3B:
- D 3 - I - 0x0035C1 00:F5B1: 66 F7     .word _off007_F766_3B
; spr_A
- D 3 - I - 0x0035C3 00:F5B3: FF        .byte $FF, $C0   ; 
; spr_T
- D 3 - I - 0x0035C5 00:F5B5: 40        .byte $40   ; 00
- D 3 - I - 0x0035C6 00:F5B6: 42        .byte $42   ; 01
- D 3 - I - 0x0035C7 00:F5B7: 41        .byte $41   ; 02
- D 3 - I - 0x0035C8 00:F5B8: 44        .byte $44   ; 03
- D 3 - I - 0x0035C9 00:F5B9: 43        .byte $43   ; 04
- D 3 - I - 0x0035CA 00:F5BA: 46        .byte $46   ; 05
- D 3 - I - 0x0035CB 00:F5BB: 45        .byte $45   ; 06
- D 3 - I - 0x0035CC 00:F5BC: FF        .byte $FF   ; 07
- D 3 - I - 0x0035CD 00:F5BD: FF        .byte $FF   ; 08
- D 3 - I - 0x0035CE 00:F5BE: FF        .byte $FF   ; 09



_off004_F5BF_3C:
- D 3 - I - 0x0035CF 00:F5BF: E5 F6     .word _off007_F6E5_3C
; spr_A
- D 3 - I - 0x0035D1 00:F5C1: FE        .byte $FE, $00   ; 
; spr_T
- D 3 - I - 0x0035D3 00:F5C3: B5        .byte $B5   ; 00
- D 3 - I - 0x0035D4 00:F5C4: FF        .byte $FF   ; 01
- D 3 - I - 0x0035D5 00:F5C5: B7        .byte $B7   ; 02
- D 3 - I - 0x0035D6 00:F5C6: B6        .byte $B6   ; 03
- D 3 - I - 0x0035D7 00:F5C7: B9        .byte $B9   ; 04
- D 3 - I - 0x0035D8 00:F5C8: B8        .byte $B8   ; 05
- D 3 - I - 0x0035D9 00:F5C9: FF        .byte $FF   ; 06



_off004_F5CA_3D:
- D 3 - I - 0x0035DA 00:F5CA: 7B F7     .word _off007_F77B_3D
; spr_A
- D 3 - I - 0x0035DC 00:F5CC: FE        .byte $FE, $00   ; 
; spr_T
- D 3 - I - 0x0035DE 00:F5CE: B5        .byte $B5   ; 00
- D 3 - I - 0x0035DF 00:F5CF: BB        .byte $BB   ; 01
- D 3 - I - 0x0035E0 00:F5D0: BA        .byte $BA   ; 02
- D 3 - I - 0x0035E1 00:F5D1: BD        .byte $BD   ; 03
- D 3 - I - 0x0035E2 00:F5D2: BC        .byte $BC   ; 04
- D 3 - I - 0x0035E3 00:F5D3: FF        .byte $FF   ; 05
- D 3 - I - 0x0035E4 00:F5D4: FF        .byte $FF   ; 06



_off004_F5D5_3E:
- D 3 - I - 0x0035E5 00:F5D5: 3F F7     .word _off007_F73F_3E
; spr_A
- D 3 - I - 0x0035E7 00:F5D7: 00        .byte $00, $00   ; 
; spr_T
- D 3 - I - 0x0035E9 00:F5D9: FF        .byte $FF   ; 00



_off007_F5DA_00:
_off007_F5DA_0D:
_off007_F5DA_0E:
; spr_Y, spr_X
- D 3 - I - 0x0035EA 00:F5DA: E3        .byte $E3, $FD   ; 00
- D 3 - I - 0x0035EC 00:F5DC: E7        .byte $E7, $F0   ; 01
- D 3 - I - 0x0035EE 00:F5DE: EB        .byte $EB, $F8   ; 02
- D 3 - I - 0x0035F0 00:F5E0: EB        .byte $EB, $00   ; 03
- D 3 - I - 0x0035F2 00:F5E2: EF        .byte $EF, $F0   ; 04
- D 3 - I - 0x0035F4 00:F5E4: F3        .byte $F3, $F8   ; 05
- D 3 - I - 0x0035F6 00:F5E6: F3        .byte $F3, $00   ; 06
- D 3 - I - 0x0035F8 00:F5E8: FB        .byte $FB, $F8   ; 07
- D 3 - I - 0x0035FA 00:F5EA: FB        .byte $FB, $00   ; 08
- D 3 - I - 0x0035FC 00:F5EC: 04        .byte $04, $00   ; 09
- D 3 - I - 0x0035FE 00:F5EE: AA        .byte $AA   ; end token



_off007_F5EF_01:
_off007_F5EF_06:
; spr_Y, spr_X
- D 3 - I - 0x0035FF 00:F5EF: E3        .byte $E3, $FC   ; 00
- D 3 - I - 0x003601 00:F5F1: EB        .byte $EB, $F8   ; 01
- D 3 - I - 0x003603 00:F5F3: EB        .byte $EB, $00   ; 02
- D 3 - I - 0x003605 00:F5F5: F3        .byte $F3, $F0   ; 03
- D 3 - I - 0x003607 00:F5F7: F3        .byte $F3, $F8   ; 04
- D 3 - I - 0x003609 00:F5F9: F3        .byte $F3, $00   ; 05
- D 3 - I - 0x00360B 00:F5FB: FB        .byte $FB, $F0   ; 06
- D 3 - I - 0x00360D 00:F5FD: FB        .byte $FB, $F8   ; 07
- D 3 - I - 0x00360F 00:F5FF: FB        .byte $FB, $00   ; 08
- D 3 - I - 0x003611 00:F601: F7        .byte $F7, $08   ; 09
- D 3 - I - 0x003613 00:F603: AA        .byte $AA   ; end token



_off007_F604_02:
_off007_F604_03:
_off007_F604_0B:
_off007_F604_17:
; spr_Y, spr_X
- D 3 - I - 0x003614 00:F604: E3        .byte $E3, $FB   ; 00
- D 3 - I - 0x003616 00:F606: E3        .byte $E3, $FD   ; 01
- D 3 - I - 0x003618 00:F608: E6        .byte $E6, $0A   ; 02
- D 3 - I - 0x00361A 00:F60A: EB        .byte $EB, $FA   ; 03
- D 3 - I - 0x00361C 00:F60C: EB        .byte $EB, $02   ; 04
- D 3 - I - 0x00361E 00:F60E: F3        .byte $F3, $F8   ; 05
- D 3 - I - 0x003620 00:F610: F3        .byte $F3, $00   ; 06
- D 3 - I - 0x003622 00:F612: F7        .byte $F7, $08   ; 07
- D 3 - I - 0x003624 00:F614: FB        .byte $FB, $F8   ; 08
- D 3 - I - 0x003626 00:F616: FB        .byte $FB, $00   ; 09
- D 3 - I - 0x003628 00:F618: AA        .byte $AA   ; end token



_off007_F619_07:
_off007_F619_08:
; spr_Y, spr_X
- D 3 - I - 0x003629 00:F619: E3        .byte $E3, $F0   ; 00
- D 3 - I - 0x00362B 00:F61B: E3        .byte $E3, $FB   ; 01
- D 3 - I - 0x00362D 00:F61D: EB        .byte $EB, $F4   ; 02
- D 3 - I - 0x00362F 00:F61F: EB        .byte $EB, $FC   ; 03
- D 3 - I - 0x003631 00:F621: F3        .byte $F3, $F8   ; 04
- D 3 - I - 0x003633 00:F623: F3        .byte $F3, $00   ; 05
- D 3 - I - 0x003635 00:F625: F5        .byte $F5, $F0   ; 06
- D 3 - I - 0x003637 00:F627: FB        .byte $FB, $F8   ; 07
- D 3 - I - 0x003639 00:F629: FB        .byte $FB, $00   ; 08
- D 3 - I - 0x00363B 00:F62B: 04        .byte $04, $00   ; 09
- D 3 - I - 0x00363D 00:F62D: AA        .byte $AA   ; end token



_off007_F62E_11:
; spr_Y, spr_X
- D 3 - I - 0x00363E 00:F62E: E3        .byte $E3, $FC   ; 00
- D 3 - I - 0x003640 00:F630: EB        .byte $EB, $F8   ; 01
- D 3 - I - 0x003642 00:F632: EB        .byte $EB, $00   ; 02
- D 3 - I - 0x003644 00:F634: EB        .byte $EB, $08   ; 03
- D 3 - I - 0x003646 00:F636: F3        .byte $F3, $F6   ; 04
- D 3 - I - 0x003648 00:F638: F3        .byte $F3, $FE   ; 05
- D 3 - I - 0x00364A 00:F63A: FB        .byte $FB, $F6   ; 06
- D 3 - I - 0x00364C 00:F63C: FB        .byte $FB, $FE   ; 07
- D 3 - I - 0x00364E 00:F63E: 04        .byte $04, $F8   ; 08
- D 3 - I - 0x003650 00:F640: 04        .byte $04, $00   ; 09
- D 3 - I - 0x003652 00:F642: AA        .byte $AA   ; end token



_off007_F643_13:
; spr_Y, spr_X
- D 3 - I - 0x003653 00:F643: E3        .byte $E3, $F0   ; 00
- D 3 - I - 0x003655 00:F645: E3        .byte $E3, $F8   ; 01
- D 3 - I - 0x003657 00:F647: E3        .byte $E3, $00   ; 02
- D 3 - I - 0x003659 00:F649: EB        .byte $EB, $FF   ; 03
- D 3 - I - 0x00365B 00:F64B: F3        .byte $F3, $FC   ; 04
- D 3 - I - 0x00365D 00:F64D: FB        .byte $FB, $F8   ; 05
- D 3 - I - 0x00365F 00:F64F: FB        .byte $FB, $00   ; 06
- D 3 - I - 0x003661 00:F651: 04        .byte $04, $F8   ; 07
- D 3 - I - 0x003663 00:F653: 04        .byte $04, $00   ; 08
- D 3 - I - 0x003665 00:F655: 0C        .byte $0C, $00   ; 09
- D 3 - I - 0x003667 00:F657: AA        .byte $AA   ; end token



_off007_F658_04:
_off007_F658_09:
_off007_F658_0A:
_off007_F658_12:
_off007_F658_3A:
; spr_Y, spr_X
- D 3 - I - 0x003668 00:F658: E3        .byte $E3, $F8   ; 00
- D 3 - I - 0x00366A 00:F65A: E3        .byte $E3, $00   ; 01
- D 3 - I - 0x00366C 00:F65C: EB        .byte $EB, $F0   ; 02
- D 3 - I - 0x00366E 00:F65E: EB        .byte $EB, $F8   ; 03
- D 3 - I - 0x003670 00:F660: EB        .byte $EB, $00   ; 04
- D 3 - I - 0x003672 00:F662: F3        .byte $F3, $F0   ; 05
- D 3 - I - 0x003674 00:F664: F3        .byte $F3, $F8   ; 06
- D 3 - I - 0x003676 00:F666: F3        .byte $F3, $00   ; 07
- D 3 - I - 0x003678 00:F668: FB        .byte $FB, $F8   ; 08
- D 3 - I - 0x00367A 00:F66A: FB        .byte $FB, $00   ; 09
- D 3 - I - 0x00367C 00:F66C: AA        .byte $AA   ; end token



_off007_F66D_15:
; spr_Y, spr_X
- D 3 - I - 0x00367D 00:F66D: E3        .byte $E3, $00   ; 00
- D 3 - I - 0x00367F 00:F66F: EB        .byte $EB, $08   ; 01
- D 3 - I - 0x003681 00:F671: EB        .byte $EB, $FE   ; 02
- D 3 - I - 0x003683 00:F673: EB        .byte $EB, $06   ; 03
- D 3 - I - 0x003685 00:F675: F3        .byte $F3, $FE   ; 04
- D 3 - I - 0x003687 00:F677: FB        .byte $FB, $FE   ; 05
- D 3 - I - 0x003689 00:F679: 04        .byte $04, $F8   ; 06
- D 3 - I - 0x00368B 00:F67B: 04        .byte $04, $00   ; 07
- D 3 - I - 0x00368D 00:F67D: 0C        .byte $0C, $F8   ; 08
- D 3 - I - 0x00368F 00:F67F: 0C        .byte $0C, $00   ; 09
- D 3 - I - 0x003691 00:F681: AA        .byte $AA   ; end token



_off007_F682_16:
; spr_Y, spr_X
- D 3 - I - 0x003692 00:F682: E3        .byte $E3, $04   ; 00
- D 3 - I - 0x003694 00:F684: EB        .byte $EB, $FC   ; 01
- D 3 - I - 0x003696 00:F686: EB        .byte $EB, $04   ; 02
- D 3 - I - 0x003698 00:F688: F3        .byte $F3, $F8   ; 03
- D 3 - I - 0x00369A 00:F68A: F3        .byte $F3, $00   ; 04
- D 3 - I - 0x00369C 00:F68C: FB        .byte $FB, $00   ; 05
- D 3 - I - 0x00369E 00:F68E: 04        .byte $04, $F8   ; 06
- D 3 - I - 0x0036A0 00:F690: 04        .byte $04, $00   ; 07
- D 3 - I - 0x0036A2 00:F692: 0C        .byte $0C, $F8   ; 08
- D 3 - I - 0x0036A4 00:F694: 0C        .byte $0C, $00   ; 09
- D 3 - I - 0x0036A6 00:F696: AA        .byte $AA   ; end token



_off007_F697_14:
; spr_Y, spr_X
- D 3 - I - 0x0036A7 00:F697: D3        .byte $D3, $08   ; 00
- D 3 - I - 0x0036A9 00:F699: DB        .byte $DB, $08   ; 01
- D 3 - I - 0x0036AB 00:F69B: E3        .byte $E3, $00   ; 02
- D 3 - I - 0x0036AD 00:F69D: E3        .byte $E3, $08   ; 03
- D 3 - I - 0x0036AF 00:F69F: EB        .byte $EB, $F8   ; 04
- D 3 - I - 0x0036B1 00:F6A1: EB        .byte $EB, $00   ; 05
- D 3 - I - 0x0036B3 00:F6A3: F3        .byte $F3, $F8   ; 06
- D 3 - I - 0x0036B5 00:F6A5: F3        .byte $F3, $00   ; 07
- D 3 - I - 0x0036B7 00:F6A7: FB        .byte $FB, $00   ; 08
- D 3 - I - 0x0036B9 00:F6A9: FB        .byte $FB, $08   ; 09
- D 3 - I - 0x0036BB 00:F6AB: AA        .byte $AA   ; end token



_off007_F6AC_05:
_off007_F6AC_0F:
_off007_F6AC_10:
_off007_F6AC_18:
; spr_Y, spr_X
- D 3 - I - 0x0036BC 00:F6AC: E3        .byte $E3, $FB   ; 00
- D 3 - I - 0x0036BE 00:F6AE: EB        .byte $EB, $F0   ; 01
- D 3 - I - 0x0036C0 00:F6B0: EB        .byte $EB, $F8   ; 02
- D 3 - I - 0x0036C2 00:F6B2: EB        .byte $EB, $00   ; 03
- D 3 - I - 0x0036C4 00:F6B4: F3        .byte $F3, $F8   ; 04
- D 3 - I - 0x0036C6 00:F6B6: F3        .byte $F3, $00   ; 05
- D 3 - I - 0x0036C8 00:F6B8: FB        .byte $FB, $F8   ; 06
- D 3 - I - 0x0036CA 00:F6BA: FB        .byte $FB, $00   ; 07
- D 3 - I - 0x0036CC 00:F6BC: EB        .byte $EB, $08   ; 08
- D 3 - I - 0x0036CE 00:F6BE: 04        .byte $04, $00   ; 09
- D 3 - I - 0x0036D0 00:F6C0: AA        .byte $AA   ; end token



_off007_F6C1_19:
; spr_Y, spr_X
- D 3 - I - 0x0036D1 00:F6C1: DC        .byte $DC, $F0   ; 00
- D 3 - I - 0x0036D3 00:F6C3: E3        .byte $E3, $F8   ; 01
- D 3 - I - 0x0036D5 00:F6C5: E3        .byte $E3, $00   ; 02
- D 3 - I - 0x0036D7 00:F6C7: EB        .byte $EB, $FC   ; 03
- D 3 - I - 0x0036D9 00:F6C9: F3        .byte $F3, $F8   ; 04
- D 3 - I - 0x0036DB 00:F6CB: F3        .byte $F3, $00   ; 05
- D 3 - I - 0x0036DD 00:F6CD: FB        .byte $FB, $F8   ; 06
- D 3 - I - 0x0036DF 00:F6CF: FB        .byte $FB, $00   ; 07
- D 3 - I - 0x0036E1 00:F6D1: 04        .byte $04, $F8   ; 08
- D 3 - I - 0x0036E3 00:F6D3: 04        .byte $04, $00   ; 09
- D 3 - I - 0x0036E5 00:F6D5: AA        .byte $AA   ; end token



_off007_F6D6_1A:
_off007_F6D6_1E:
_off007_F6D6_1F:
_off007_F6D6_25:
_off007_F6D6_26:
_off007_F6D6_27:
_off007_F6D6_28:
_off007_F6D6_38:
; spr_Y, spr_X
- D 3 - I - 0x0036E6 00:F6D6: E3        .byte $E3, $F8   ; 00
- D 3 - I - 0x0036E8 00:F6D8: EB        .byte $EB, $F8   ; 01
- D 3 - I - 0x0036EA 00:F6DA: EB        .byte $EB, $00   ; 02
- D 3 - I - 0x0036EC 00:F6DC: F3        .byte $F3, $F8   ; 03
- D 3 - I - 0x0036EE 00:F6DE: F3        .byte $F3, $00   ; 04
- D 3 - I - 0x0036F0 00:F6E0: FB        .byte $FB, $F8   ; 05
- D 3 - I - 0x0036F2 00:F6E2: FB        .byte $FB, $00   ; 06
- D 3 - I - 0x0036F4 00:F6E4: AA        .byte $AA   ; end token



_off007_F6E5_1B:
_off007_F6E5_22:
_off007_F6E5_23:
_off007_F6E5_29:
_off007_F6E5_3C:
; spr_Y, spr_X
- D 3 - I - 0x0036F5 00:F6E5: EB        .byte $EB, $FC   ; 00
- D 3 - I - 0x0036F7 00:F6E7: EF        .byte $EF, $F4   ; 01
- D 3 - I - 0x0036F9 00:F6E9: F3        .byte $F3, $F8   ; 02
- D 3 - I - 0x0036FB 00:F6EB: F3        .byte $F3, $00   ; 03
- D 3 - I - 0x0036FD 00:F6ED: FB        .byte $FB, $F8   ; 04
- D 3 - I - 0x0036FF 00:F6EF: FB        .byte $FB, $00   ; 05
- D 3 - I - 0x003701 00:F6F1: EB        .byte $EB, $FB   ; 06
- D 3 - I - 0x003703 00:F6F3: AA        .byte $AA   ; end token



_off007_F6F4_1C:
_off007_F6F4_1D:
; spr_Y, spr_X
- D 3 - I - 0x003704 00:F6F4: EB        .byte $EB, $FE   ; 00
- D 3 - I - 0x003706 00:F6F6: EB        .byte $EB, $00   ; 01
- D 3 - I - 0x003708 00:F6F8: EB        .byte $EB, $08   ; 02
- D 3 - I - 0x00370A 00:F6FA: F3        .byte $F3, $F8   ; 03
- D 3 - I - 0x00370C 00:F6FC: F3        .byte $F3, $00   ; 04
- D 3 - I - 0x00370E 00:F6FE: F7        .byte $F7, $F4   ; 05
- D 3 - I - 0x003710 00:F700: FB        .byte $FB, $FE   ; 06
- D 3 - I - 0x003712 00:F702: AA        .byte $AA   ; end token



_off007_F703_20:
_off007_F703_21:
_off007_F703_2E:
; spr_Y, spr_X
- D 3 - I - 0x003713 00:F703: E7        .byte $E7, $F2   ; 00
- D 3 - I - 0x003715 00:F705: EB        .byte $EB, $FA   ; 01
- D 3 - I - 0x003717 00:F707: EB        .byte $EB, $02   ; 02
- D 3 - I - 0x003719 00:F709: EF        .byte $EF, $F2   ; 03
- D 3 - I - 0x00371B 00:F70B: F3        .byte $F3, $FA   ; 04
- D 3 - I - 0x00371D 00:F70D: F7        .byte $F7, $02   ; 05
- D 3 - I - 0x00371F 00:F70F: FB        .byte $FB, $FA   ; 06
- D 3 - I - 0x003721 00:F711: AA        .byte $AA   ; end token



_off007_F712_2A:
_off007_F712_2B:
; spr_Y, spr_X
- D 3 - I - 0x003722 00:F712: E3        .byte $E3, $00   ; 00
- D 3 - I - 0x003724 00:F714: E3        .byte $E3, $08   ; 01
- D 3 - I - 0x003726 00:F716: EB        .byte $EB, $F8   ; 02
- D 3 - I - 0x003728 00:F718: EB        .byte $EB, $00   ; 03
- D 3 - I - 0x00372A 00:F71A: F3        .byte $F3, $FC   ; 04
- D 3 - I - 0x00372C 00:F71C: F3        .byte $F3, $04   ; 05
- D 3 - I - 0x00372E 00:F71E: FB        .byte $FB, $FC   ; 06
- D 3 - I - 0x003730 00:F720: AA        .byte $AA   ; end token



_off007_F721_2C:
; spr_Y, spr_X
- D 3 - I - 0x003731 00:F721: DB        .byte $DB, $FC   ; 00
- D 3 - I - 0x003733 00:F723: E3        .byte $E3, $FC   ; 01
- D 3 - I - 0x003735 00:F725: EB        .byte $EB, $F8   ; 02
- D 3 - I - 0x003737 00:F727: EB        .byte $EB, $00   ; 03
- D 3 - I - 0x003739 00:F729: F3        .byte $F3, $F8   ; 04
- D 3 - I - 0x00373B 00:F72B: F3        .byte $F3, $00   ; 05
- D 3 - I - 0x00373D 00:F72D: FB        .byte $FB, $FB   ; 06
- D 3 - I - 0x00373F 00:F72F: AA        .byte $AA   ; end token



_off007_F730_2D:
; spr_Y, spr_X
- D 3 - I - 0x003740 00:F730: EB        .byte $EB, $FF   ; 00
- D 3 - I - 0x003742 00:F732: F3        .byte $F3, $F8   ; 01
- D 3 - I - 0x003744 00:F734: F3        .byte $F3, $00   ; 02
- D 3 - I - 0x003746 00:F736: FB        .byte $FB, $FB   ; 03
- D 3 - I - 0x003748 00:F738: FB        .byte $FB, $03   ; 04
- D 3 - I - 0x00374A 00:F73A: 04        .byte $04, $F8   ; 05
- D 3 - I - 0x00374C 00:F73C: 04        .byte $04, $00   ; 06
- D 3 - I - 0x00374E 00:F73E: AA        .byte $AA   ; end token



_off007_F73F_2F:
_off007_F73F_30:
_off007_F73F_31:
_off007_F73F_32:
_off007_F73F_33:
_off007_F73F_34:
_off007_F73F_35:
_off007_F73F_36:
_off007_F73F_37:
_off007_F73F_3E:
; spr_Y, spr_X
- D 3 - I - 0x00374F 00:F73F: FC        .byte $FC, $FC   ; 00
- D 3 - I - 0x003751 00:F741: AA        .byte $AA   ; end token



_off007_F742_39:
; spr_Y, spr_X
- - - - - - 0x003752 00:F742: E3        .byte $E3, $F0   ; 00
- - - - - - 0x003754 00:F744: EB        .byte $EB, $F0   ; 01
- - - - - - 0x003756 00:F746: EB        .byte $EB, $F8   ; 02
- - - - - - 0x003758 00:F748: F3        .byte $F3, $F8   ; 03
- - - - - - 0x00375A 00:F74A: F3        .byte $F3, $00   ; 04
- - - - - - 0x00375C 00:F74C: FB        .byte $FB, $FA   ; 05
- - - - - - 0x00375E 00:F74E: FB        .byte $FB, $02   ; 06
- - - - - - 0x003760 00:F750: AA        .byte $AA   ; end token



_off007_F751_0C:
_off007_F751_24:
; spr_Y, spr_X
- D 3 - I - 0x003761 00:F751: DB        .byte $DB, $F8   ; 00
- D 3 - I - 0x003763 00:F753: DB        .byte $DB, $00   ; 01
- D 3 - I - 0x003765 00:F755: E3        .byte $E3, $F8   ; 02
- D 3 - I - 0x003767 00:F757: E3        .byte $E3, $00   ; 03
- D 3 - I - 0x003769 00:F759: EB        .byte $EB, $F8   ; 04
- D 3 - I - 0x00376B 00:F75B: EB        .byte $EB, $00   ; 05
- D 3 - I - 0x00376D 00:F75D: F3        .byte $F3, $F8   ; 06
- D 3 - I - 0x00376F 00:F75F: F3        .byte $F3, $00   ; 07
- D 3 - I - 0x003771 00:F761: FB        .byte $FB, $F8   ; 08
- D 3 - I - 0x003773 00:F763: FB        .byte $FB, $00   ; 09
- D 3 - I - 0x003775 00:F765: AA        .byte $AA   ; end token



_off007_F766_3B:
; spr_Y, spr_X
- D 3 - I - 0x003776 00:F766: E3        .byte $E3, $FB   ; 00
- D 3 - I - 0x003778 00:F768: EB        .byte $EB, $F6   ; 01
- D 3 - I - 0x00377A 00:F76A: EB        .byte $EB, $FE   ; 02
- D 3 - I - 0x00377C 00:F76C: F3        .byte $F3, $F8   ; 03
- D 3 - I - 0x00377E 00:F76E: F3        .byte $F3, $00   ; 04
- D 3 - I - 0x003780 00:F770: FB        .byte $FB, $F8   ; 05
- D 3 - I - 0x003782 00:F772: FB        .byte $FB, $00   ; 06
- D 3 - I - 0x003784 00:F774: 04        .byte $04, $F8   ; 07
- D 3 - I - 0x003786 00:F776: 04        .byte $04, $00   ; 08
- D 3 - I - 0x003788 00:F778: 0C        .byte $0C, $F8   ; 09
- D 3 - I - 0x00378A 00:F77A: AA        .byte $AA   ; end token



_off007_F77B_3D:
; spr_Y, spr_X
- D 3 - I - 0x00378B 00:F77B: EB        .byte $EB, $FD   ; 00
- D 3 - I - 0x00378D 00:F77D: F3        .byte $F3, $F8   ; 01
- D 3 - I - 0x00378F 00:F77F: F3        .byte $F3, $00   ; 02
- D 3 - I - 0x003791 00:F781: FB        .byte $FB, $F8   ; 03
- D 3 - I - 0x003793 00:F783: FB        .byte $FB, $00   ; 04
- D 3 - I - 0x003795 00:F785: 04        .byte $04, $F8   ; 05
- D 3 - I - 0x003797 00:F787: 04        .byte $04, $00   ; 06
- D 3 - I - 0x003799 00:F789: AA        .byte $AA   ; end token


; bzk garbage
- - - - - - 0x00379A 00:F78A: FF        .byte $FF, $00, $FF, $00, $FF, $00   ; 
- - - - - - 0x0037A0 00:F790: FF        .byte $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00   ; 
- - - - - - 0x0037B0 00:F7A0: FF        .byte $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00   ; 
- - - - - - 0x0037C0 00:F7B0: FF        .byte $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00   ; 
- - - - - - 0x0037D0 00:F7C0: FF        .byte $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00   ; 
- - - - - - 0x0037E0 00:F7D0: FF        .byte $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00   ; 
- - - - - - 0x0037F0 00:F7E0: FF        .byte $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00   ; 
- - - - - - 0x003800 00:F7F0: FF        .byte $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00   ; 


; bzk garbage                                  --- byte 08 for some reason
;                                              |
- - - - - - 0x003810 00:F800: 08        .byte $08, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF   ; 
- - - - - - 0x003820 00:F810: 00        .byte $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF   ; 
- - - - - - 0x003830 00:F820: 00        .byte $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF   ; 
- - - - - - 0x003840 00:F830: 00        .byte $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF   ; 
- - - - - - 0x003850 00:F840: 00        .byte $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF   ; 
- - - - - - 0x003860 00:F850: 00        .byte $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF   ; 
- - - - - - 0x003870 00:F860: 00        .byte $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF   ; 
- - - - - - 0x003880 00:F870: 00        .byte $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF, $00, $FF   ; 


; bzk garbage
- - - - - - 0x003890 00:F880: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0038A0 00:F890: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0038B0 00:F8A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0038C0 00:F8B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0038D0 00:F8C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0038E0 00:F8D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



loc_F8E0:
C D 3 - - - 0x0038F0 00:F8E0: A9 C0     LDA #$C0
C - - - - - 0x0038F2 00:F8E2: 8D 17 40  STA $4017
C - - - - - 0x0038F5 00:F8E5: A5 F0     LDA ram_00F0
C - - - - - 0x0038F7 00:F8E7: 18        CLC
C - - - - - 0x0038F8 00:F8E8: 69 FE     ADC #$FE
C - - - - - 0x0038FA 00:F8EA: B0 02     BCS bra_F8EE
C - - - - - 0x0038FC 00:F8EC: A9 00     LDA #$00
bra_F8EE:
C - - - - - 0x0038FE 00:F8EE: 85 F0     STA ram_00F0
C - - - - - 0x003900 00:F8F0: 8D 11 40  STA $4011
C - - - - - 0x003903 00:F8F3: 20 39 FA  JSR sub_FA39
C - - - - - 0x003906 00:F8F6: A9 00     LDA #$00
C - - - - - 0x003908 00:F8F8: 85 FF     STA ram_00FF
C - - - - - 0x00390A 00:F8FA: 85 FE     STA ram_00FE
C - - - - - 0x00390C 00:F8FC: 85 FD     STA ram_00FD
C - - - - - 0x00390E 00:F8FE: 60        RTS


; bzk garbage
- - - - - - 0x00390F 00:F8FF: FF        .byte $FF   ; 



tbl_F900:
; 00
- - - - - - 0x003910 00:F900: 07        .byte $07   ; 
- - - - - - 0x003911 00:F901: F0        .byte $F0   ; 
; 01
- D 3 - - - 0x003912 00:F902: 00        .byte $00   ; 
- D 3 - - - 0x003913 00:F903: 69        .byte $69   ; 
; 02
- - - - - - 0x003914 00:F904: 00        .byte $00   ; 
- D 3 - - - 0x003915 00:F905: 00        .byte $00   ; 
; 03
- D 3 - - - 0x003916 00:F906: 00        .byte $00   ; 
- D 3 - - - 0x003917 00:F907: D4        .byte $D4   ; 
; 04
- D 3 - - - 0x003918 00:F908: 00        .byte $00   ; 
- D 3 - - - 0x003919 00:F909: BD        .byte $BD   ; 
; 05
- D 3 - - - 0x00391A 00:F90A: 00        .byte $00   ; 
- D 3 - - - 0x00391B 00:F90B: B2        .byte $B2   ; 
; 06
- D 3 - - - 0x00391C 00:F90C: 00        .byte $00   ; 
- D 3 - - - 0x00391D 00:F90D: A8        .byte $A8   ; 
; 07
- D 3 - - - 0x00391E 00:F90E: 00        .byte $00   ; 
- D 3 - - - 0x00391F 00:F90F: 9F        .byte $9F   ; 
; 08
- D 3 - - - 0x003920 00:F910: 00        .byte $00   ; 
- D 3 - - - 0x003921 00:F911: 96        .byte $96   ; 
; 09
- D 3 - - - 0x003922 00:F912: 00        .byte $00   ; 
- D 3 - - - 0x003923 00:F913: 8D        .byte $8D   ; 
; 0A
- D 3 - - - 0x003924 00:F914: 00        .byte $00   ; 
- D 3 - - - 0x003925 00:F915: 7E        .byte $7E   ; 
; 0B
- D 3 - - - 0x003926 00:F916: 00        .byte $00   ; 
- D 3 - - - 0x003927 00:F917: 70        .byte $70   ; 
; 0C
- D 3 - - - 0x003928 00:F918: 01        .byte $01   ; 
- D 3 - - - 0x003929 00:F919: AB        .byte $AB   ; 
; 0D
- D 3 - - - 0x00392A 00:F91A: 01        .byte $01   ; 
- D 3 - - - 0x00392B 00:F91B: 93        .byte $93   ; 
; 0E
- D 3 - - - 0x00392C 00:F91C: 01        .byte $01   ; 
- D 3 - - - 0x00392D 00:F91D: 7C        .byte $7C   ; 
; 0F
- D 3 - - - 0x00392E 00:F91E: 01        .byte $01   ; 
- D 3 - - - 0x00392F 00:F91F: 67        .byte $67   ; 
; 10
- D 3 - - - 0x003930 00:F920: 01        .byte $01   ; 
- D 3 - - - 0x003931 00:F921: 52        .byte $52   ; 
; 11
- D 3 - - - 0x003932 00:F922: 01        .byte $01   ; 
- D 3 - - - 0x003933 00:F923: 3F        .byte $3F   ; 
; 12
- D 3 - - - 0x003934 00:F924: 01        .byte $01   ; 
- D 3 - - - 0x003935 00:F925: 2D        .byte $2D   ; 
; 13
- D 3 - - - 0x003936 00:F926: 01        .byte $01   ; 
- D 3 - - - 0x003937 00:F927: 1C        .byte $1C   ; 
; 14
- D 3 - - - 0x003938 00:F928: 01        .byte $01   ; 
- D 3 - - - 0x003939 00:F929: 0C        .byte $0C   ; 
; 15
- D 3 - - - 0x00393A 00:F92A: 00        .byte $00   ; 
- D 3 - - - 0x00393B 00:F92B: FD        .byte $FD   ; 
; 16
- D 3 - - - 0x00393C 00:F92C: 00        .byte $00   ; 
- D 3 - - - 0x00393D 00:F92D: EE        .byte $EE   ; 
; 17
- D 3 - - - 0x00393E 00:F92E: 00        .byte $00   ; 
- D 3 - - - 0x00393F 00:F92F: E1        .byte $E1   ; 
; 18
- D 3 - - - 0x003940 00:F930: 03        .byte $03   ; 
- D 3 - - - 0x003941 00:F931: 57        .byte $57   ; 
; 19
- - - - - - 0x003942 00:F932: 02        .byte $02   ; 
- - - - - - 0x003943 00:F933: F9        .byte $F9   ; 
; 1A
- - - - - - 0x003944 00:F934: 02        .byte $02   ; 
- - - - - - 0x003945 00:F935: A6        .byte $A6   ; 
; 1B
- - - - - - 0x003946 00:F936: 02        .byte $02   ; 
- - - - - - 0x003947 00:F937: 80        .byte $80   ; 
; 1C
- D 3 - - - 0x003948 00:F938: 02        .byte $02   ; 
- D 3 - - - 0x003949 00:F939: 3A        .byte $3A   ; 
; 1D
- D 3 - - - 0x00394A 00:F93A: 01        .byte $01   ; 
- D 3 - - - 0x00394B 00:F93B: FC        .byte $FC   ; 
; 1E
- D 3 - - - 0x00394C 00:F93C: 01        .byte $01   ; 
- D 3 - - - 0x00394D 00:F93D: C4        .byte $C4   ; 
; 1F
- D 3 - - - 0x00394E 00:F93E: 00        .byte $00   ; 
- D 3 - - - 0x00394F 00:F93F: 5E        .byte $5E   ; 
; 20
- D 3 - - - 0x003950 00:F940: 00        .byte $00   ; 
- D 3 - - - 0x003951 00:F941: 53        .byte $53   ; 
; 21
- D 3 - - - 0x003952 00:F942: 00        .byte $00   ; 
- D 3 - - - 0x003953 00:F943: 4F        .byte $4F   ; 
; 22
- D 3 - - - 0x003954 00:F944: 00        .byte $00   ; 
- D 3 - - - 0x003955 00:F945: 4A        .byte $4A   ; 
; 23
- D 3 - - - 0x003956 00:F946: 00        .byte $00   ; 
- D 3 - - - 0x003957 00:F947: 20        .byte $20   ; 



tbl_F948:
; 00
- D 3 - - - 0x003958 00:F948: 05        .byte $05   ; 00
- D 3 - - - 0x003959 00:F949: 0B        .byte $0B   ; 01
- D 3 - - - 0x00395A 00:F94A: 16        .byte $16   ; 02
- D 3 - - - 0x00395B 00:F94B: 2C        .byte $2C   ; 03
- D 3 - - - 0x00395C 00:F94C: 58        .byte $58   ; 04
- D 3 - - - 0x00395D 00:F94D: 21        .byte $21   ; 05
- D 3 - - - 0x00395E 00:F94E: 06        .byte $06   ; 06
- D 3 - - - 0x00395F 00:F94F: 11        .byte $11   ; 07
; 08
- D 3 - - - 0x003960 00:F950: 05        .byte $05   ; 00
- D 3 - - - 0x003961 00:F951: 0A        .byte $0A   ; 01
- D 3 - - - 0x003962 00:F952: 14        .byte $14   ; 02
- D 3 - - - 0x003963 00:F953: 28        .byte $28   ; 03
- D 3 - - - 0x003964 00:F954: 0D        .byte $0D   ; 04
- D 3 - - - 0x003965 00:F955: 21        .byte $21   ; 05
- D 3 - - - 0x003966 00:F956: 06        .byte $06   ; 06
- D 3 - - - 0x003967 00:F957: 07        .byte $07   ; 07
; 10
- - - - - - 0x003968 00:F958: 06        .byte $06   ; 00
- - - - - - 0x003969 00:F959: 0C        .byte $0C   ; 01
- - - - - - 0x00396A 00:F95A: 18        .byte $18   ; 02
- - - - - - 0x00396B 00:F95B: 30        .byte $30   ; 03
- - - - - - 0x00396C 00:F95C: 10        .byte $10   ; 04
- - - - - - 0x00396D 00:F95D: 24        .byte $24   ; 05
- - - - - - 0x00396E 00:F95E: 48        .byte $48   ; 06
- - - - - - 0x00396F 00:F95F: 08        .byte $08   ; 07



sub_F960:
C - - - - - 0x003970 00:F960: AA        TAX
C - - - - - 0x003971 00:F961: 6A        ROR
C - - - - - 0x003972 00:F962: 8A        TXA
C - - - - - 0x003973 00:F963: 2A        ROL
C - - - - - 0x003974 00:F964: 2A        ROL
C - - - - - 0x003975 00:F965: 2A        ROL
sub_F966:
C - - - - - 0x003976 00:F966: 29 07     AND #$07
C - - - - - 0x003978 00:F968: 18        CLC
C - - - - - 0x003979 00:F969: 65 F6     ADC ram_00F6
C - - - - - 0x00397B 00:F96B: A8        TAY
C - - - - - 0x00397C 00:F96C: B9 48 F9  LDA tbl_F948,Y
C - - - - - 0x00397F 00:F96F: 60        RTS



sub_F970:
C - - - - - 0x003980 00:F970: A2 90     LDX #$90
C - - - - - 0x003982 00:F972: D0 09     BNE bra_F97D_set_4000   ; jmp


; bzk garbage
- - - - - - 0x003984 00:F974: A2 90     LDX #$90
- - - - - - 0x003986 00:F976: D0 0E     BNE bra_F986_set_4004   ; jmp



sub_F978:
C - - - - - 0x003988 00:F978: A0 7F     LDY #$7F
sub_F97A:
C - - - - - 0x00398A 00:F97A: 8C 01 40  STY $4001
bra_F97D_set_4000:
C - - - - - 0x00398D 00:F97D: 8E 00 40  STX $4000
C - - - - - 0x003990 00:F980: 60        RTS



sub_F981:
C - - - - - 0x003991 00:F981: A0 7F     LDY #$7F
sub_F983:
C - - - - - 0x003993 00:F983: 8C 05 40  STY $4005
bra_F986_set_4004:
C - - - - - 0x003996 00:F986: 8E 04 40  STX $4004
C - - - - - 0x003999 00:F989: 60        RTS



sub_F98A:
C - - - - - 0x00399A 00:F98A: 84 F1     STY ram_00F1
C - - - - - 0x00399C 00:F98C: 86 F3     STX ram_00F3
C - - - - - 0x00399E 00:F98E: D0 03     BNE bra_F993    ; jmp



sub_F990:
C - - - - - 0x0039A0 00:F990: 20 7A F9  JSR sub_F97A
bra_F993:
sub_F993:
C - - - - - 0x0039A3 00:F993: A2 00     LDX #$00
bra_F995:
C - - - - - 0x0039A5 00:F995: A8        TAY
C - - - - - 0x0039A6 00:F996: B9 01 F9  LDA tbl_F900 + 1,Y
C - - - - - 0x0039A9 00:F999: F0 0B     BEQ bra_F9A6_RTS
C - - - - - 0x0039AB 00:F99B: 9D 02 40  STA $4002,X     ; 4002 4006 400A
C - - - - - 0x0039AE 00:F99E: B9 00 F9  LDA tbl_F900,Y
C - - - - - 0x0039B1 00:F9A1: 09 08     ORA #$08
C - - - - - 0x0039B3 00:F9A3: 9D 03 40  STA $4003,X     ; 4003 4007 400B
bra_F9A6_RTS:
C - - - - - 0x0039B6 00:F9A6: 60        RTS


; bzk garbage
- - - - - - 0x0039B7 00:F9A7: 20 83 F9  JSR sub_F983



sub_F9AA:
C - - - - - 0x0039BA 00:F9AA: A2 04     LDX #$04    ; 4006-4007
C - - - - - 0x0039BC 00:F9AC: D0 E7     BNE bra_F995    ; jmp



sub_F9AE:
C - - - - - 0x0039BE 00:F9AE: A2 08     LDX #$08    ; 400A-400B
C - - - - - 0x0039C0 00:F9B0: D0 E3     BNE bra_F995    ; jmp



sub_F9B2:
C - - - - - 0x0039C2 00:F9B2: 84 F1     STY ram_00F1
C - - - - - 0x0039C4 00:F9B4: A0 1C     LDY #$1C
sub_F9B6:
C - - - - - 0x0039C6 00:F9B6: 86 F3     STX ram_00F3
C - - - - - 0x0039C8 00:F9B8: 8C 08 40  STY $4008
C - - - - - 0x0039CB 00:F9BB: 8D 0A 40  STA $400A
C - - - - - 0x0039CE 00:F9BE: A9 08     LDA #$08
C - - - - - 0x0039D0 00:F9C0: 8D 0B 40  STA $400B
C - - - - - 0x0039D3 00:F9C3: A5 F0     LDA ram_00F0
C - - - - - 0x0039D5 00:F9C5: 18        CLC
C - - - - - 0x0039D6 00:F9C6: 69 C2     ADC #$C2
C - - - - - 0x0039D8 00:F9C8: B0 02     BCS bra_F9CC
C - - - - - 0x0039DA 00:F9CA: A9 00     LDA #$00
bra_F9CC:
C - - - - - 0x0039DC 00:F9CC: 85 F0     STA ram_00F0
C - - - - - 0x0039DE 00:F9CE: 60        RTS
bra_F9CF:
C - - - - - 0x0039DF 00:F9CF: A9 10     LDA #$10
C - - - - - 0x0039E1 00:F9D1: 8D F8 07  STA ram_07F8
C - - - - - 0x0039E4 00:F9D4: A9 06     LDA #$06
C - - - - - 0x0039E6 00:F9D6: 20 93 F9  JSR sub_F993
bra_F9D9:
C - - - - - 0x0039E9 00:F9D9: A2 96     LDX #$96
C - - - - - 0x0039EB 00:F9DB: A0 84     LDY #$84
C - - - - - 0x0039ED 00:F9DD: AD F8 07  LDA ram_07F8
C - - - - - 0x0039F0 00:F9E0: C9 0D     CMP #$0D
C - - - - - 0x0039F2 00:F9E2: B0 02     BCS bra_F9E6
C - - - - - 0x0039F4 00:F9E4: A0 8D     LDY #$8D
bra_F9E6:
C - - - - - 0x0039F6 00:F9E6: C9 0C     CMP #$0C
C - - - - - 0x0039F8 00:F9E8: B0 04     BCS bra_F9EE
C - - - - - 0x0039FA 00:F9EA: 4A        LSR
C - - - - - 0x0039FB 00:F9EB: 09 90     ORA #$90
C - - - - - 0x0039FD 00:F9ED: AA        TAX
bra_F9EE:
C - - - - - 0x0039FE 00:F9EE: 20 7A F9  JSR sub_F97A
C - - - - - 0x003A01 00:F9F1: CE F8 07  DEC ram_07F8
C - - - - - 0x003A04 00:F9F4: D0 51     BNE bra_FA47
C - - - - - 0x003A06 00:F9F6: 20 70 F9  JSR sub_F970
C - - - - - 0x003A09 00:F9F9: D0 4C     BNE bra_FA47
bra_F9FB:
C - - - - - 0x003A0B 00:F9FB: A2 12     LDX #$12
C - - - - - 0x003A0D 00:F9FD: A9 1C     LDA #$1C
C - - - - - 0x003A0F 00:F9FF: 20 8A F9  JSR sub_F98A
C - - - - - 0x003A12 00:FA02: A9 0A     LDA #$0A
C - - - - - 0x003A14 00:FA04: 85 F4     STA ram_00F4
bra_FA06:
C - - - - - 0x003A16 00:FA06: A2 5A     LDX #$5A
C - - - - - 0x003A18 00:FA08: A0 8C     LDY #$8C
C - - - - - 0x003A1A 00:FA0A: A5 F3     LDA ram_00F3
C - - - - - 0x003A1C 00:FA0C: C9 0F     CMP #$0F
C - - - - - 0x003A1E 00:FA0E: B0 08     BCS bra_FA18
C - - - - - 0x003A20 00:FA10: A0 8D     LDY #$8D
C - - - - - 0x003A22 00:FA12: C9 0A     CMP #$0A
C - - - - - 0x003A24 00:FA14: B0 12     BCS bra_FA28
C - - - - - 0x003A26 00:FA16: D0 0D     BNE bra_FA25
bra_FA18:
C - - - - - 0x003A28 00:FA18: D0 07     BNE bra_FA21
C - - - - - 0x003A2A 00:FA1A: A9 18     LDA #$18
C - - - - - 0x003A2C 00:FA1C: 20 93 F9  JSR sub_F993
C - - - - - 0x003A2F 00:FA1F: D0 07     BNE bra_FA28
bra_FA21:
C - - - - - 0x003A31 00:FA21: C6 F4     DEC ram_00F4
C - - - - - 0x003A33 00:FA23: A5 F4     LDA ram_00F4
bra_FA25:
C - - - - - 0x003A35 00:FA25: 09 50     ORA #$50
C - - - - - 0x003A37 00:FA27: AA        TAX
bra_FA28:
loc_FA28:
C D 3 - - - 0x003A38 00:FA28: 20 7A F9  JSR sub_F97A
loc_FA2B:
C D 3 - - - 0x003A3B 00:FA2B: C6 F3     DEC ram_00F3
C - - - - - 0x003A3D 00:FA2D: D0 07     BNE bra_FA36
loc_FA2F:
C D 3 - - - 0x003A3F 00:FA2F: 20 70 F9  JSR sub_F970
C - - - - - 0x003A42 00:FA32: A9 00     LDA #$00
C - - - - - 0x003A44 00:FA34: 85 F1     STA ram_00F1
bra_FA36:
C - - - - - 0x003A46 00:FA36: 4C 7A FA  JMP loc_FA7A



sub_FA39:
C - - - - - 0x003A49 00:FA39: A6 FA     LDX ram_00FA
C - - - - - 0x003A4B 00:FA3B: D0 3D     BNE bra_FA7A
C - - - - - 0x003A4D 00:FA3D: AE F8 07  LDX ram_07F8
C - - - - - 0x003A50 00:FA40: D0 97     BNE bra_F9D9
C - - - - - 0x003A52 00:FA42: A5 FF     LDA ram_00FF
C - - - - - 0x003A54 00:FA44: 4A        LSR
C - - - - - 0x003A55 00:FA45: B0 88     BCS bra_F9CF
bra_FA47:
C - - - - - 0x003A57 00:FA47: A4 FF     LDY ram_00FF
C - - - - - 0x003A59 00:FA49: 84 00     STY ram_0000
C - - - - - 0x003A5B 00:FA4B: A5 F1     LDA ram_00F1
C - - - - - 0x003A5D 00:FA4D: 4A        LSR
C - - - - - 0x003A5E 00:FA4E: 46 FF     LSR ram_00FF
C - - - - - 0x003A60 00:FA50: 4A        LSR
C - - - - - 0x003A61 00:FA51: B0 B3     BCS bra_FA06
C - - - - - 0x003A63 00:FA53: 46 FF     LSR ram_00FF
C - - - - - 0x003A65 00:FA55: B0 A4     BCS bra_F9FB
C - - - - - 0x003A67 00:FA57: 4A        LSR
C - - - - - 0x003A68 00:FA58: B0 2D     BCS bra_FA87
C - - - - - 0x003A6A 00:FA5A: 46 FF     LSR ram_00FF
C - - - - - 0x003A6C 00:FA5C: B0 22     BCS bra_FA80
C - - - - - 0x003A6E 00:FA5E: 4A        LSR
C - - - - - 0x003A6F 00:FA5F: B0 65     BCS bra_FAC6
C - - - - - 0x003A71 00:FA61: 46 FF     LSR ram_00FF
C - - - - - 0x003A73 00:FA63: B0 56     BCS bra_FABB
C - - - - - 0x003A75 00:FA65: 4A        LSR
C - - - - - 0x003A76 00:FA66: B0 35     BCS bra_FA9D
C - - - - - 0x003A78 00:FA68: 46 FF     LSR ram_00FF
C - - - - - 0x003A7A 00:FA6A: B0 2A     BCS bra_FA96
C - - - - - 0x003A7C 00:FA6C: 4A        LSR
C - - - - - 0x003A7D 00:FA6D: B0 61     BCS bra_FAD0
C - - - - - 0x003A7F 00:FA6F: 46 FF     LSR ram_00FF
C - - - - - 0x003A81 00:FA71: B0 56     BCS bra_FAC9
C - - - - - 0x003A83 00:FA73: 4A        LSR
C - - - - - 0x003A84 00:FA74: B0 07     BCS bra_FA7D
C - - - - - 0x003A86 00:FA76: 46 FF     LSR ram_00FF
C - - - - - 0x003A88 00:FA78: B0 6B     BCS bra_FAE5
bra_FA7A:
loc_FA7A:   ; bzk optimize
C D 3 - - - 0x003A8A 00:FA7A: 4C C1 FB  JMP loc_FBC1
bra_FA7D:
C - - - - - 0x003A8D 00:FA7D: 4C F4 FA  JMP loc_FAF4
bra_FA80:
C - - - - - 0x003A90 00:FA80: A2 07     LDX #$07
C - - - - - 0x003A92 00:FA82: A9 7F     LDA #$7F
C - - - - - 0x003A94 00:FA84: 20 B2 F9  JSR sub_F9B2
bra_FA87:
C - - - - - 0x003A97 00:FA87: A5 F0     LDA ram_00F0
C - - - - - 0x003A99 00:FA89: 18        CLC
C - - - - - 0x003A9A 00:FA8A: 69 0F     ADC #$0F
C - - - - - 0x003A9C 00:FA8C: 85 F0     STA ram_00F0
C - - - - - 0x003A9E 00:FA8E: A9 90     LDA #$90
C - - - - - 0x003AA0 00:FA90: 8D 00 40  STA $4000
C - - - - - 0x003AA3 00:FA93: 4C 2B FA  JMP loc_FA2B
bra_FA96:
C - - - - - 0x003AA6 00:FA96: A2 15     LDX #$15
C - - - - - 0x003AA8 00:FA98: A9 47     LDA #$47
C - - - - - 0x003AAA 00:FA9A: 20 B2 F9  JSR sub_F9B2
bra_FA9D:
C - - - - - 0x003AAD 00:FA9D: A5 F3     LDA ram_00F3
C - - - - - 0x003AAF 00:FA9F: C9 10     CMP #$10
C - - - - - 0x003AB1 00:FAA1: 90 07     BCC bra_FAAA
C - - - - - 0x003AB3 00:FAA3: D0 E2     BNE bra_FA87
C - - - - - 0x003AB5 00:FAA5: A9 02     LDA #$02
C - - - - - 0x003AB7 00:FAA7: 20 93 F9  JSR sub_F993
bra_FAAA:
C - - - - - 0x003ABA 00:FAAA: A0 84     LDY #$84
bra_FAAC:
C - - - - - 0x003ABC 00:FAAC: A2 96     LDX #$96
C - - - - - 0x003ABE 00:FAAE: A5 F3     LDA ram_00F3
C - - - - - 0x003AC0 00:FAB0: C9 0C     CMP #$0C
C - - - - - 0x003AC2 00:FAB2: B0 04     BCS bra_FAB8
C - - - - - 0x003AC4 00:FAB4: 4A        LSR
C - - - - - 0x003AC5 00:FAB5: 09 90     ORA #$90
C - - - - - 0x003AC7 00:FAB7: AA        TAX
bra_FAB8:
C - - - - - 0x003AC8 00:FAB8: 4C 28 FA  JMP loc_FA28
bra_FABB:
C - - - - - 0x003ACB 00:FABB: A2 05     LDX #$05
C - - - - - 0x003ACD 00:FABD: A9 6A     LDA #$6A
C - - - - - 0x003ACF 00:FABF: 84 F1     STY ram_00F1
C - - - - - 0x003AD1 00:FAC1: A0 14     LDY #$14
C - - - - - 0x003AD3 00:FAC3: 20 B6 F9  JSR sub_F9B6
bra_FAC6:
C - - - - - 0x003AD6 00:FAC6: 4C 2B FA  JMP loc_FA2B
bra_FAC9:
C - - - - - 0x003AD9 00:FAC9: A2 22     LDX #$22
C - - - - - 0x003ADB 00:FACB: A9 6A     LDA #$6A
C - - - - - 0x003ADD 00:FACD: 20 B2 F9  JSR sub_F9B2
bra_FAD0:
C - - - - - 0x003AE0 00:FAD0: A5 F3     LDA ram_00F3
C - - - - - 0x003AE2 00:FAD2: C9 1B     CMP #$1B
C - - - - - 0x003AE4 00:FAD4: B0 B1     BCS bra_FA87
C - - - - - 0x003AE6 00:FAD6: C9 18     CMP #$18
C - - - - - 0x003AE8 00:FAD8: 90 07     BCC bra_FAE1
C - - - - - 0x003AEA 00:FADA: D0 DC     BNE bra_FAB8
C - - - - - 0x003AEC 00:FADC: A9 02     LDA #$02
C - - - - - 0x003AEE 00:FADE: 20 93 F9  JSR sub_F993
bra_FAE1:
C - - - - - 0x003AF1 00:FAE1: A0 85     LDY #$85
C - - - - - 0x003AF3 00:FAE3: D0 C7     BNE bra_FAAC    ; jmp
bra_FAE5:
C - - - - - 0x003AF5 00:FAE5: A2 FF     LDX #$FF
C - - - - - 0x003AF7 00:FAE7: A9 6A     LDA #$6A
C - - - - - 0x003AF9 00:FAE9: 84 F1     STY ram_00F1
C - - - - - 0x003AFB 00:FAEB: A0 14     LDY #$14
C - - - - - 0x003AFD 00:FAED: 20 B6 F9  JSR sub_F9B6
C - - - - - 0x003B00 00:FAF0: A9 00     LDA #$00
C - - - - - 0x003B02 00:FAF2: 85 F4     STA ram_00F4
loc_FAF4:
C D 3 - - - 0x003B04 00:FAF4: A5 F3     LDA ram_00F3
C - - - - - 0x003B06 00:FAF6: C9 F8     CMP #$F8
C - - - - - 0x003B08 00:FAF8: 90 0D     BCC bra_FB07
C - - - - - 0x003B0A 00:FAFA: D0 3D     BNE bra_FB39
C - - - - - 0x003B0C 00:FAFC: A2 B1     LDX #$B1
C - - - - - 0x003B0E 00:FAFE: A0 9D     LDY #$9D
C - - - - - 0x003B10 00:FB00: A9 30     LDA #$30
C - - - - - 0x003B12 00:FB02: 20 90 F9  JSR sub_F990
C - - - - - 0x003B15 00:FB05: D0 2D     BNE bra_FB34
bra_FB07:
C - - - - - 0x003B17 00:FB07: 46 FF     LSR ram_00FF
C - - - - - 0x003B19 00:FB09: B0 03     BCS bra_FB0E
C - - - - - 0x003B1B 00:FB0B: 4C 2F FA  JMP loc_FA2F
bra_FB0E:
C - - - - - 0x003B1E 00:FB0E: A5 00     LDA ram_0000
C - - - - - 0x003B20 00:FB10: 29 80     AND #$80
C - - - - - 0x003B22 00:FB12: D0 07     BNE bra_FB1B
C - - - - - 0x003B24 00:FB14: A0 9D     LDY #$9D
C - - - - - 0x003B26 00:FB16: 8C 01 40  STY $4001
C - - - - - 0x003B29 00:FB19: D0 19     BNE bra_FB34    ; jmp
bra_FB1B:
C - - - - - 0x003B2B 00:FB1B: A4 F4     LDY ram_00F4
C - - - - - 0x003B2D 00:FB1D: 85 F4     STA ram_00F4
C - - - - - 0x003B2F 00:FB1F: 98        TYA
C - - - - - 0x003B30 00:FB20: 45 F4     EOR ram_00F4
C - - - - - 0x003B32 00:FB22: F0 10     BEQ bra_FB34
C - - - - - 0x003B34 00:FB24: A5 F3     LDA ram_00F3
C - - - - - 0x003B36 00:FB26: C9 A0     CMP #$A0
C - - - - - 0x003B38 00:FB28: B0 05     BCS bra_FB2F
C - - - - - 0x003B3A 00:FB2A: A9 46     LDA #$46
C - - - - - 0x003B3C 00:FB2C: 20 93 F9  JSR sub_F993
bra_FB2F:
C - - - - - 0x003B3F 00:FB2F: A0 A5     LDY #$A5
C - - - - - 0x003B41 00:FB31: 8C 01 40  STY $4001
bra_FB34:
C - - - - - 0x003B44 00:FB34: A2 B1     LDX #$B1
C - - - - - 0x003B46 00:FB36: 8E 00 40  STX $4000
bra_FB39:
C - - - - - 0x003B49 00:FB39: 4C 2B FA  JMP loc_FA2B



loc_FB3C:
C D 3 - - - 0x003B4C 00:FB3C: 84 F2     STY ram_00F2
C - - - - - 0x003B4E 00:FB3E: A9 18     LDA #$18
C - - - - - 0x003B50 00:FB40: 85 F5     STA ram_00F5
C - - - - - 0x003B52 00:FB42: A2 81     LDX #$81
C - - - - - 0x003B54 00:FB44: 20 81 F9  JSR sub_F981
C - - - - - 0x003B57 00:FB47: A9 BD     LDA #$BD
C - - - - - 0x003B59 00:FB49: D0 66     BNE bra_FBB1    ; jmp



loc_FB4B:
C D 3 - - - 0x003B5B 00:FB4B: A5 F5     LDA ram_00F5
C - - - - - 0x003B5D 00:FB4D: C9 16     CMP #$16
C - - - - - 0x003B5F 00:FB4F: D0 04     BNE bra_FB55
bra_FB51:
C - - - - - 0x003B61 00:FB51: A9 B2     LDA #$B2
C - - - - - 0x003B63 00:FB53: D0 5C     BNE bra_FBB1    ; jmp
bra_FB55:
C - - - - - 0x003B65 00:FB55: C9 13     CMP #$13
C - - - - - 0x003B67 00:FB57: D0 07     BNE bra_FB60
C - - - - - 0x003B69 00:FB59: A2 82     LDX #$82
C - - - - - 0x003B6B 00:FB5B: 20 81 F9  JSR sub_F981
C - - - - - 0x003B6E 00:FB5E: D0 F1     BNE bra_FB51    ; jmp
bra_FB60:
C - - - - - 0x003B70 00:FB60: C9 0C     CMP #$0C
C - - - - - 0x003B72 00:FB62: D0 04     BNE bra_FB68
C - - - - - 0x003B74 00:FB64: A9 E1     LDA #$E1
C - - - - - 0x003B76 00:FB66: D0 49     BNE bra_FBB1   ; jmp
bra_FB68:
C - - - - - 0x003B78 00:FB68: C9 0A     CMP #$0A
C - - - - - 0x003B7A 00:FB6A: D0 42     BNE bra_FBAE
C - - - - - 0x003B7C 00:FB6C: A2 84     LDX #$84
C - - - - - 0x003B7E 00:FB6E: 20 81 F9  JSR sub_F981
C - - - - - 0x003B81 00:FB71: A9 FD     LDA #$FD
C - - - - - 0x003B83 00:FB73: D0 3C     BNE bra_FBB1   ; jmp
bra_FB75:
C - - - - - 0x003B85 00:FB75: 84 F2     STY ram_00F2
C - - - - - 0x003B87 00:FB77: A9 18     LDA #$18
C - - - - - 0x003B89 00:FB79: 85 F5     STA ram_00F5
C - - - - - 0x003B8B 00:FB7B: A2 82     LDX #$82
C - - - - - 0x003B8D 00:FB7D: 20 81 F9  JSR sub_F981
C - - - - - 0x003B90 00:FB80: A9 63     LDA #$63
C - - - - - 0x003B92 00:FB82: D0 2D     BNE bra_FBB1   ; jmp
bra_FB84:
C - - - - - 0x003B94 00:FB84: A5 F5     LDA ram_00F5
C - - - - - 0x003B96 00:FB86: C9 16     CMP #$16
C - - - - - 0x003B98 00:FB88: D0 04     BNE bra_FB8E
C - - - - - 0x003B9A 00:FB8A: A9 5E     LDA #$5E
C - - - - - 0x003B9C 00:FB8C: D0 23     BNE bra_FBB1   ; jmp
bra_FB8E:
C - - - - - 0x003B9E 00:FB8E: C9 10     CMP #$10
C - - - - - 0x003BA0 00:FB90: D0 0B     BNE bra_FB9D
C - - - - - 0x003BA2 00:FB92: A2 82     LDX #$82
C - - - - - 0x003BA4 00:FB94: A0 85     LDY #$85
C - - - - - 0x003BA6 00:FB96: 20 83 F9  JSR sub_F983
C - - - - - 0x003BA9 00:FB99: A9 89     LDA #$89
C - - - - - 0x003BAB 00:FB9B: D0 14     BNE bra_FBB1   ; jmp
bra_FB9D:
C - - - - - 0x003BAD 00:FB9D: C9 0F     CMP #$0F
C - - - - - 0x003BAF 00:FB9F: D0 04     BNE bra_FBA5
C - - - - - 0x003BB1 00:FBA1: A2 84     LDX #$84
C - - - - - 0x003BB3 00:FBA3: D0 06     BNE bra_FBAB   ; jmp
bra_FBA5:
C - - - - - 0x003BB5 00:FBA5: C9 0C     CMP #$0C
C - - - - - 0x003BB7 00:FBA7: D0 05     BNE bra_FBAE
C - - - - - 0x003BB9 00:FBA9: A2 82     LDX #$82
bra_FBAB:
C - - - - - 0x003BBB 00:FBAB: 20 81 F9  JSR sub_F981
bra_FBAE:
C - - - - - 0x003BBE 00:FBAE: 4C DC FC  JMP loc_FCDC
bra_FBB1:
C - - - - - 0x003BC1 00:FBB1: A0 08     LDY #$08
C - - - - - 0x003BC3 00:FBB3: 8C 07 40  STY $4007
C - - - - - 0x003BC6 00:FBB6: 8D 06 40  STA $4006
C - - - - - 0x003BC9 00:FBB9: D0 F3     BNE bra_FBAE    ; jmp
bra_FBBB:
C - - - - - 0x003BCB 00:FBBB: 4C 3C FB  JMP loc_FB3C
bra_FBBE:
C - - - - - 0x003BCE 00:FBBE: 4C 4B FB  JMP loc_FB4B



loc_FBC1:
C D 3 - - - 0x003BD1 00:FBC1: A4 FE     LDY ram_00FE
C - - - - - 0x003BD3 00:FBC3: A5 F2     LDA ram_00F2
C - - - - - 0x003BD5 00:FBC5: A6 FB     LDX ram_00FB
C - - - - - 0x003BD7 00:FBC7: D0 2D     BNE bra_FBF6
C - - - - - 0x003BD9 00:FBC9: 4A        LSR
C - - - - - 0x003BDA 00:FBCA: B0 F2     BCS bra_FBBE
C - - - - - 0x003BDC 00:FBCC: 46 FE     LSR ram_00FE
C - - - - - 0x003BDE 00:FBCE: B0 EB     BCS bra_FBBB
C - - - - - 0x003BE0 00:FBD0: 4A        LSR
C - - - - - 0x003BE1 00:FBD1: B0 B1     BCS bra_FB84
C - - - - - 0x003BE3 00:FBD3: 46 FE     LSR ram_00FE
C - - - - - 0x003BE5 00:FBD5: B0 9E     BCS bra_FB75
C - - - - - 0x003BE7 00:FBD7: 4A        LSR
C - - - - - 0x003BE8 00:FBD8: B0 31     BCS bra_FC0B
C - - - - - 0x003BEA 00:FBDA: 46 FE     LSR ram_00FE
C - - - - - 0x003BEC 00:FBDC: B0 21     BCS bra_FBFF
C - - - - - 0x003BEE 00:FBDE: 4A        LSR
C - - - - - 0x003BEF 00:FBDF: B0 4A     BCS bra_FC2B
C - - - - - 0x003BF1 00:FBE1: 46 FE     LSR ram_00FE
C - - - - - 0x003BF3 00:FBE3: B0 3A     BCS bra_FC1F
C - - - - - 0x003BF5 00:FBE5: 4A        LSR
C - - - - - 0x003BF6 00:FBE6: B0 75     BCS bra_FC5D
C - - - - - 0x003BF8 00:FBE8: 46 FE     LSR ram_00FE
C - - - - - 0x003BFA 00:FBEA: B0 65     BCS bra_FC51
C - - - - - 0x003BFC 00:FBEC: 4A        LSR
C - - - - - 0x003BFD 00:FBED: 46 FE     LSR ram_00FE
C - - - - - 0x003BFF 00:FBEF: 4A        LSR
C - - - - - 0x003C00 00:FBF0: B0 0A     BCS bra_FBFC
C - - - - - 0x003C02 00:FBF2: 46 FE     LSR ram_00FE
C - - - - - 0x003C04 00:FBF4: B0 03     BCS bra_FBF9
bra_FBF6:
C - - - - - 0x003C06 00:FBF6: 4C E4 FC  JMP loc_FCE4
bra_FBF9:
C - - - - - 0x003C09 00:FBF9: 4C 9E FC  JMP loc_FC9E
bra_FBFC:
C - - - - - 0x003C0C 00:FBFC: 4C B4 FC  JMP loc_FCB4
bra_FBFF:
C - - - - - 0x003C0F 00:FBFF: 84 F2     STY ram_00F2
C - - - - - 0x003C11 00:FC01: A9 14     LDA #$14
C - - - - - 0x003C13 00:FC03: 85 F5     STA ram_00F5
C - - - - - 0x003C15 00:FC05: A0 10     LDY #$10
C - - - - - 0x003C17 00:FC07: A9 54     LDA #$54
C - - - - - 0x003C19 00:FC09: D0 38     BNE bra_FC43    ; jmp
bra_FC0B:
C - - - - - 0x003C1B 00:FC0B: A5 F5     LDA ram_00F5
C - - - - - 0x003C1D 00:FC0D: C9 13     CMP #$13
C - - - - - 0x003C1F 00:FC0F: D0 04     BNE bra_FC15
C - - - - - 0x003C21 00:FC11: A9 50     LDA #$50
C - - - - - 0x003C23 00:FC13: D0 31     BNE bra_FC46   ; jmp
bra_FC15:
C - - - - - 0x003C25 00:FC15: C9 06     CMP #$06
C - - - - - 0x003C27 00:FC17: D0 35     BNE bra_FC4E
C - - - - - 0x003C29 00:FC19: A0 0C     LDY #$0C
C - - - - - 0x003C2B 00:FC1B: A9 6A     LDA #$6A
C - - - - - 0x003C2D 00:FC1D: D0 24     BNE bra_FC43    ; jmp
bra_FC1F:
C - - - - - 0x003C2F 00:FC1F: 84 F2     STY ram_00F2
C - - - - - 0x003C31 00:FC21: A9 18     LDA #$18
C - - - - - 0x003C33 00:FC23: 85 F5     STA ram_00F5
C - - - - - 0x003C35 00:FC25: A0 14     LDY #$14
bra_FC27:
C - - - - - 0x003C37 00:FC27: A9 4B     LDA #$4B
C - - - - - 0x003C39 00:FC29: D0 18     BNE bra_FC43   ; jmp
bra_FC2B:
C - - - - - 0x003C3B 00:FC2B: A5 F5     LDA ram_00F5
C - - - - - 0x003C3D 00:FC2D: C9 17     CMP #$17
C - - - - - 0x003C3F 00:FC2F: D0 04     BNE bra_FC35
C - - - - - 0x003C41 00:FC31: A9 47     LDA #$47
C - - - - - 0x003C43 00:FC33: D0 11     BNE bra_FC46    ; jmp
bra_FC35:
C - - - - - 0x003C45 00:FC35: A0 08     LDY #$08
C - - - - - 0x003C47 00:FC37: C9 10     CMP #$10
C - - - - - 0x003C49 00:FC39: F0 EC     BEQ bra_FC27
C - - - - - 0x003C4B 00:FC3B: A0 10     LDY #$10
C - - - - - 0x003C4D 00:FC3D: C9 0B     CMP #$0B
C - - - - - 0x003C4F 00:FC3F: F0 E6     BEQ bra_FC27
C - - - - - 0x003C51 00:FC41: D0 0B     BNE bra_FC4E    ; jmp
bra_FC43:
C - - - - - 0x003C53 00:FC43: 8C 08 40  STY $4008
bra_FC46:
C - - - - - 0x003C56 00:FC46: 8D 0A 40  STA $400A
C - - - - - 0x003C59 00:FC49: A2 08     LDX #$08
C - - - - - 0x003C5B 00:FC4B: 8E 0B 40  STX $400B
bra_FC4E:
C - - - - - 0x003C5E 00:FC4E: 4C DC FC  JMP loc_FCDC
bra_FC51:
C - - - - - 0x003C61 00:FC51: 84 F2     STY ram_00F2
C - - - - - 0x003C63 00:FC53: A9 14     LDA #$14
C - - - - - 0x003C65 00:FC55: 85 F5     STA ram_00F5
C - - - - - 0x003C67 00:FC57: A0 18     LDY #$18
C - - - - - 0x003C69 00:FC59: A9 50     LDA #$50
C - - - - - 0x003C6B 00:FC5B: D0 E6     BNE bra_FC43    ; jmp
bra_FC5D:
C - - - - - 0x003C6D 00:FC5D: A5 F5     LDA ram_00F5
C - - - - - 0x003C6F 00:FC5F: C9 13     CMP #$13
C - - - - - 0x003C71 00:FC61: D0 04     BNE bra_FC67
C - - - - - 0x003C73 00:FC63: A9 47     LDA #$47
C - - - - - 0x003C75 00:FC65: D0 DF     BNE bra_FC46    ; jmp
bra_FC67:
C - - - - - 0x003C77 00:FC67: C9 0D     CMP #$0D
C - - - - - 0x003C79 00:FC69: D0 06     BNE bra_FC71
C - - - - - 0x003C7B 00:FC6B: A0 08     LDY #$08
C - - - - - 0x003C7D 00:FC6D: A9 4B     LDA #$4B
C - - - - - 0x003C7F 00:FC6F: D0 D2     BNE bra_FC43    ; jmp
bra_FC71:
C - - - - - 0x003C81 00:FC71: C9 06     CMP #$06
C - - - - - 0x003C83 00:FC73: D0 06     BNE bra_FC7B
C - - - - - 0x003C85 00:FC75: A0 0E     LDY #$0E
C - - - - - 0x003C87 00:FC77: A9 59     LDA #$59
C - - - - - 0x003C89 00:FC79: D0 C8     BNE bra_FC43    ; jmp
bra_FC7B:
C - - - - - 0x003C8B 00:FC7B: C9 04     CMP #$04
C - - - - - 0x003C8D 00:FC7D: D0 04     BNE bra_FC83
C - - - - - 0x003C8F 00:FC7F: A9 5F     LDA #$5F
C - - - - - 0x003C91 00:FC81: D0 C3     BNE bra_FC46    ; jmp
bra_FC83:
C - - - - - 0x003C93 00:FC83: C9 01     CMP #$01
C - - - - - 0x003C95 00:FC85: D0 06     BNE bra_FC8D
C - - - - - 0x003C97 00:FC87: A0 02     LDY #$02
C - - - - - 0x003C99 00:FC89: A9 64     LDA #$64
C - - - - - 0x003C9B 00:FC8B: D0 B6     BNE bra_FC43    ; jmp
bra_FC8D:
C - - - - - 0x003C9D 00:FC8D: C9 06     CMP #$06
C - - - - - 0x003C9F 00:FC8F: 90 04     BCC bra_FC95
C - - - - - 0x003CA1 00:FC91: C9 0D     CMP #$0D
C - - - - - 0x003CA3 00:FC93: B0 B9     BCS bra_FC4E
bra_FC95:
C - - - - - 0x003CA5 00:FC95: A5 F0     LDA ram_00F0
C - - - - - 0x003CA7 00:FC97: 18        CLC
C - - - - - 0x003CA8 00:FC98: 69 10     ADC #$10
C - - - - - 0x003CAA 00:FC9A: 85 F0     STA ram_00F0
C - - - - - 0x003CAC 00:FC9C: D0 B0     BNE bra_FC4E    ; jmp
loc_FC9E:
C D 3 - - - 0x003CAE 00:FC9E: 84 F2     STY ram_00F2
C - - - - - 0x003CB0 00:FCA0: A9 05     LDA #$05
C - - - - - 0x003CB2 00:FCA2: 85 F5     STA ram_00F5
C - - - - - 0x003CB4 00:FCA4: A2 3F     LDX #$3F
C - - - - - 0x003CB6 00:FCA6: EE FD 07  INC ram_07FD
C - - - - - 0x003CB9 00:FCA9: AD FD 07  LDA ram_07FD
C - - - - - 0x003CBC 00:FCAC: 4A        LSR
C - - - - - 0x003CBD 00:FCAD: 90 02     BCC bra_FCB1
C - - - - - 0x003CBF 00:FCAF: A2 50     LDX #$50
bra_FCB1:
C - - - - - 0x003CC1 00:FCB1: 8E F6 07  STX ram_07F6
loc_FCB4:
C D 3 - - - 0x003CC4 00:FCB4: AD F6 07  LDA ram_07F6
C - - - - - 0x003CC7 00:FCB7: 4A        LSR
C - - - - - 0x003CC8 00:FCB8: 4A        LSR
C - - - - - 0x003CC9 00:FCB9: 4A        LSR
C - - - - - 0x003CCA 00:FCBA: 6D F6 07  ADC ram_07F6
C - - - - - 0x003CCD 00:FCBD: 8D F6 07  STA ram_07F6
C - - - - - 0x003CD0 00:FCC0: 0A        ASL
C - - - - - 0x003CD1 00:FCC1: 0A        ASL
C - - - - - 0x003CD2 00:FCC2: 8D 06 40  STA $4006
C - - - - - 0x003CD5 00:FCC5: 2A        ROL
C - - - - - 0x003CD6 00:FCC6: 29 03     AND #$03
C - - - - - 0x003CD8 00:FCC8: 8D 07 40  STA $4007
C - - - - - 0x003CDB 00:FCCB: A0 81     LDY #$81
C - - - - - 0x003CDD 00:FCCD: A2 50     LDX #$50
C - - - - - 0x003CDF 00:FCCF: A5 F5     LDA ram_00F5
C - - - - - 0x003CE1 00:FCD1: C9 04     CMP #$04
C - - - - - 0x003CE3 00:FCD3: 90 04     BCC bra_FCD9
C - - - - - 0x003CE5 00:FCD5: 18        CLC
C - - - - - 0x003CE6 00:FCD6: 69 4D     ADC #$4D
C - - - - - 0x003CE8 00:FCD8: AA        TAX
bra_FCD9:
C - - - - - 0x003CE9 00:FCD9: 20 83 F9  JSR sub_F983
loc_FCDC:
C D 3 - - - 0x003CEC 00:FCDC: C6 F5     DEC ram_00F5
C - - - - - 0x003CEE 00:FCDE: D0 04     BNE bra_FCE4
C - - - - - 0x003CF0 00:FCE0: A9 00     LDA #$00
C - - - - - 0x003CF2 00:FCE2: 85 F2     STA ram_00F2
bra_FCE4:
loc_FCE4:
C D 3 - - - 0x003CF4 00:FCE4: A5 FD     LDA ram_00FD
C - - - - - 0x003CF6 00:FCE6: D0 05     BNE bra_FCED
C - - - - - 0x003CF8 00:FCE8: A5 FB     LDA ram_00FB
C - - - - - 0x003CFA 00:FCEA: D0 29     BNE bra_FD15
C - - - - - 0x003CFC 00:FCEC: 60        RTS
bra_FCED:
C - - - - - 0x003CFD 00:FCED: A0 07     LDY #$07
bra_FCEF_loop:
C - - - - - 0x003CFF 00:FCEF: 0A        ASL
C - - - - - 0x003D00 00:FCF0: B0 03     BCS bra_FCF5
C - - - - - 0x003D02 00:FCF2: 88        DEY
C - - - - - 0x003D03 00:FCF3: D0 FA     BNE bra_FCEF_loop
bra_FCF5:
C - - - - - 0x003D05 00:FCF5: 84 FC     STY ram_00FC
C - - - - - 0x003D07 00:FCF7: B9 FA FD  LDA tbl_FDFA_music,Y
C - - - - - 0x003D0A 00:FCFA: A8        TAY
C - - - - - 0x003D0B 00:FCFB: A2 00     LDX #$00
C - - - - - 0x003D0D 00:FCFD: 86 FB     STX ram_00FB
bra_FCFF_loop:
C - - - - - 0x003D0F 00:FCFF: B9 FA FD  LDA tbl_FDFA_music,Y
C - - - - - 0x003D12 00:FD02: 95 F6     STA ram_00F6,X
C - - - - - 0x003D14 00:FD04: C8        INY
C - - - - - 0x003D15 00:FD05: E8        INX
C - - - - - 0x003D16 00:FD06: E0 05     CPX #$05
C - - - - - 0x003D18 00:FD08: D0 F5     BNE bra_FCFF_loop
C - - - - - 0x003D1A 00:FD0A: A9 01     LDA #$01
C - - - - - 0x003D1C 00:FD0C: 8D F0 07  STA ram_07F0
C - - - - - 0x003D1F 00:FD0F: 8D F1 07  STA ram_07F1
C - - - - - 0x003D22 00:FD12: 8D F2 07  STA ram_07F2
bra_FD15:
C - - - - - 0x003D25 00:FD15: A5 FC     LDA ram_00FC
C - - - - - 0x003D27 00:FD17: D0 19     BNE bra_FD32
; 00
- - - - - - 0x003D29 00:FD19: AD FE 07  LDA ram_07FE
- - - - - - 0x003D2C 00:FD1C: F0 14     BEQ bra_FD32
- - - - - - 0x003D2E 00:FD1E: AD F0 07  LDA ram_07F0
- - - - - - 0x003D31 00:FD21: A2 90     LDX #$90
- - - - - - 0x003D33 00:FD23: C9 03     CMP #$03
- - - - - - 0x003D35 00:FD25: 90 08     BCC bra_FD2F
- - - - - - 0x003D37 00:FD27: A2 9D     LDX #$9D
- - - - - - 0x003D39 00:FD29: 29 07     AND #$07
- - - - - - 0x003D3B 00:FD2B: D0 02     BNE bra_FD2F
- - - - - - 0x003D3D 00:FD2D: A2 9A     LDX #$9A
bra_FD2F:
- - - - - - 0x003D3F 00:FD2F: 8E 04 40  STX $4004
bra_FD32:
C - - - - - 0x003D42 00:FD32: CE F0 07  DEC ram_07F0
C - - - - - 0x003D45 00:FD35: D0 36     BNE bra_FD6D
C - - - - - 0x003D47 00:FD37: A4 FB     LDY ram_00FB
C - - - - - 0x003D49 00:FD39: E6 FB     INC ram_00FB
C - - - - - 0x003D4B 00:FD3B: B1 F7     LDA (ram_00F7),Y
C - - - - - 0x003D4D 00:FD3D: D0 05     BNE bra_FD44
; 00
C - - - - - 0x003D4F 00:FD3F: 85 FB     STA ram_00FB
C - - - - - 0x003D51 00:FD41: 85 FA     STA ram_00FA
C - - - - - 0x003D53 00:FD43: 60        RTS
bra_FD44:
C - - - - - 0x003D54 00:FD44: 20 60 F9  JSR sub_F960
C - - - - - 0x003D57 00:FD47: 8D F0 07  STA ram_07F0
C - - - - - 0x003D5A 00:FD4A: 8A        TXA
C - - - - - 0x003D5B 00:FD4B: 29 3E     AND #$3E
C - - - - - 0x003D5D 00:FD4D: 20 AA F9  JSR sub_F9AA
C - - - - - 0x003D60 00:FD50: 8D FE 07  STA ram_07FE
C - - - - - 0x003D63 00:FD53: D0 04     BNE bra_FD59
C - - - - - 0x003D65 00:FD55: A2 90     LDX #$90
C - - - - - 0x003D67 00:FD57: D0 11     BNE bra_FD6A   ; jmp
bra_FD59:
C - - - - - 0x003D69 00:FD59: A2 9D     LDX #$9D
C - - - - - 0x003D6B 00:FD5B: A5 FC     LDA ram_00FC
C - - - - - 0x003D6D 00:FD5D: F0 0B     BEQ bra_FD6A
C - - - - - 0x003D6F 00:FD5F: A2 86     LDX #$86
C - - - - - 0x003D71 00:FD61: AD F0 07  LDA ram_07F0
C - - - - - 0x003D74 00:FD64: C9 08     CMP #$08
C - - - - - 0x003D76 00:FD66: B0 02     BCS bra_FD6A
C - - - - - 0x003D78 00:FD68: A2 82     LDX #$82
bra_FD6A:
C - - - - - 0x003D7A 00:FD6A: 20 81 F9  JSR sub_F981
bra_FD6D:
C - - - - - 0x003D7D 00:FD6D: A4 FA     LDY ram_00FA
C - - - - - 0x003D7F 00:FD6F: F0 4E     BEQ bra_FDBF
C - - - - - 0x003D81 00:FD71: A5 FC     LDA ram_00FC
C - - - - - 0x003D83 00:FD73: D0 0A     BNE bra_FD7F
- - - - - - 0x003D85 00:FD75: AD F1 07  LDA ram_07F1
- - - - - - 0x003D88 00:FD78: C9 03     CMP #$03
- - - - - - 0x003D8A 00:FD7A: B0 03     BCS bra_FD7F
- - - - - - 0x003D8C 00:FD7C: 20 70 F9  JSR sub_F970
bra_FD7F:
C - - - - - 0x003D8F 00:FD7F: CE F1 07  DEC ram_07F1
C - - - - - 0x003D92 00:FD82: D0 3B     BNE bra_FDBF
C - - - - - 0x003D94 00:FD84: E6 FA     INC ram_00FA
C - - - - - 0x003D96 00:FD86: B1 F7     LDA (ram_00F7),Y
C - - - - - 0x003D98 00:FD88: 10 0C     BPL bra_FD96
; 80-FF
C - - - - - 0x003D9A 00:FD8A: 20 66 F9  JSR sub_F966
C - - - - - 0x003D9D 00:FD8D: 8D F3 07  STA ram_07F3
C - - - - - 0x003DA0 00:FD90: A4 FA     LDY ram_00FA
C - - - - - 0x003DA2 00:FD92: E6 FA     INC ram_00FA
C - - - - - 0x003DA4 00:FD94: B1 F7     LDA (ram_00F7),Y
bra_FD96:
C - - - - - 0x003DA6 00:FD96: 20 93 F9  JSR sub_F993
C - - - - - 0x003DA9 00:FD99: D0 04     BNE bra_FD9F
C - - - - - 0x003DAB 00:FD9B: A2 10     LDX #$10
C - - - - - 0x003DAD 00:FD9D: D0 17     BNE bra_FDB6   ; jmp
bra_FD9F:
C - - - - - 0x003DAF 00:FD9F: A2 5A     LDX #$5A
C - - - - - 0x003DB1 00:FDA1: A5 FC     LDA ram_00FC
C - - - - - 0x003DB3 00:FDA3: F0 11     BEQ bra_FDB6
C - - - - - 0x003DB5 00:FDA5: A2 46     LDX #$46
C - - - - - 0x003DB7 00:FDA7: AD F3 07  LDA ram_07F3
C - - - - - 0x003DBA 00:FDAA: C9 08     CMP #$08
C - - - - - 0x003DBC 00:FDAC: B0 02     BCS bra_FDB0
C - - - - - 0x003DBE 00:FDAE: A2 42     LDX #$42
bra_FDB0:
C - - - - - 0x003DC0 00:FDB0: A5 F9     LDA ram_00F9
C - - - - - 0x003DC2 00:FDB2: D0 02     BNE bra_FDB6
- - - - - - 0x003DC4 00:FDB4: A2 86     LDX #$86
bra_FDB6:
C - - - - - 0x003DC6 00:FDB6: 20 78 F9  JSR sub_F978
C - - - - - 0x003DC9 00:FDB9: AD F3 07  LDA ram_07F3
C - - - - - 0x003DCC 00:FDBC: 8D F1 07  STA ram_07F1
bra_FDBF:
C - - - - - 0x003DCF 00:FDBF: A4 F9     LDY ram_00F9
C - - - - - 0x003DD1 00:FDC1: F0 36     BEQ bra_FDF9_RTS
C - - - - - 0x003DD3 00:FDC3: AD F2 07  LDA ram_07F2
C - - - - - 0x003DD6 00:FDC6: C9 02     CMP #$02
C - - - - - 0x003DD8 00:FDC8: D0 05     BNE bra_FDCF
C - - - - - 0x003DDA 00:FDCA: A9 00     LDA #$00
C - - - - - 0x003DDC 00:FDCC: 8D 08 40  STA $4008
bra_FDCF:
C - - - - - 0x003DDF 00:FDCF: CE F2 07  DEC ram_07F2
C - - - - - 0x003DE2 00:FDD2: D0 25     BNE bra_FDF9_RTS
C - - - - - 0x003DE4 00:FDD4: E6 F9     INC ram_00F9
C - - - - - 0x003DE6 00:FDD6: B1 F7     LDA (ram_00F7),Y
C - - - - - 0x003DE8 00:FDD8: 20 60 F9  JSR sub_F960
C - - - - - 0x003DEB 00:FDDB: 8D F2 07  STA ram_07F2
C - - - - - 0x003DEE 00:FDDE: A0 38     LDY #$38
C - - - - - 0x003DF0 00:FDE0: 18        CLC
C - - - - - 0x003DF1 00:FDE1: 69 FF     ADC #$FF
C - - - - - 0x003DF3 00:FDE3: C9 0E     CMP #$0E
C - - - - - 0x003DF5 00:FDE5: B0 03     BCS bra_FDEA
C - - - - - 0x003DF7 00:FDE7: 0A        ASL
C - - - - - 0x003DF8 00:FDE8: 0A        ASL
C - - - - - 0x003DF9 00:FDE9: A8        TAY
bra_FDEA:
C - - - - - 0x003DFA 00:FDEA: A5 FC     LDA ram_00FC
C - - - - - 0x003DFC 00:FDEC: D0 02     BNE bra_FDF0
- - - - - - 0x003DFE 00:FDEE: A0 88     LDY #$88
bra_FDF0:
C - - - - - 0x003E00 00:FDF0: 8C 08 40  STY $4008
C - - - - - 0x003E03 00:FDF3: 8A        TXA
C - - - - - 0x003E04 00:FDF4: 29 3E     AND #$3E
C - - - - - 0x003E06 00:FDF6: 20 AE F9  JSR sub_F9AE
bra_FDF9_RTS:
C - - - - - 0x003E09 00:FDF9: 60        RTS



tbl_FDFA_music:
- - - - - - 0x003E0A 00:FDFA: 08        .byte off_FE02 - tbl_FDFA_music   ; 00
- D 3 - - - 0x003E0B 00:FDFB: 0D        .byte off_FE07 - tbl_FDFA_music   ; 01
- - - - - - 0x003E0C 00:FDFC: 12        .byte off_FE0C - tbl_FDFA_music   ; 02
- D 3 - - - 0x003E0D 00:FDFD: 17        .byte off_FE11 - tbl_FDFA_music   ; 03
- - - - - - 0x003E0E 00:FDFE: 17        .byte off_FE11 - tbl_FDFA_music   ; 04
- D 3 - - - 0x003E0F 00:FDFF: 1C        .byte off_FE16 - tbl_FDFA_music   ; 05
- D 3 - - - 0x003E10 00:FE00: 21        .byte off_FE1B - tbl_FDFA_music   ; 06
- D 3 - - - 0x003E11 00:FE01: 26        .byte off_FE20 - tbl_FDFA_music   ; 07



off_FE02:
- - - - - - 0x003E12 00:FE02: 10        .byte $10   ; 
- - - - - - 0x003E13 00:FE03: 25 FE     .word _off006_FE25_00
- - - - - - 0x003E15 00:FE05: 72        .byte off_FE97 - _off006_FE25_00
- - - - - - 0x003E16 00:FE06: 1B        .byte off_FE40 - _off006_FE25_00

off_FE07:
- D 3 - - - 0x003E17 00:FE07: 08        .byte $08   ; 
- D 3 - - - 0x003E18 00:FE08: B4 FE     .word _off006_FEB4_01
- D 3 - - - 0x003E1A 00:FE0A: 28        .byte off_FEDC - _off006_FEB4_01
- D 3 - - - 0x003E1B 00:FE0B: 10        .byte off_FEC4 - _off006_FEB4_01

off_FE0C:
- - - - - - 0x003E1C 00:FE0C: 10        .byte $10   ; 
- - - - - - 0x003E1D 00:FE0D: 2A FF     .word _off006_FF2A_02
- - - - - - 0x003E1F 00:FE0F: 28        .byte off_FF52 - _off006_FF2A_02
- - - - - - 0x003E20 00:FE10: 0C        .byte off_FF36 - _off006_FF2A_02

off_FE11:
- D 3 - - - 0x003E21 00:FE11: 08        .byte $08   ; 
- D 3 - - - 0x003E22 00:FE12: 5B FF     .word _off006_FF5B_04
- D 3 - - - 0x003E24 00:FE14: 6E        .byte off_FFC9 - _off006_FF5B_04
- D 3 - - - 0x003E25 00:FE15: 2A        .byte off_FF85 - _off006_FF5B_04

off_FE16:
- D 3 - - - 0x003E26 00:FE16: 00        .byte $00   ; 
- D 3 - - - 0x003E27 00:FE17: ED FE     .word _off006_FEED_05
- D 3 - - - 0x003E29 00:FE19: 08        .byte off_FEF5 - _off006_FEED_05
- D 3 - - - 0x003E2A 00:FE1A: 00        .byte off_FEED - _off006_FEED_05

off_FE1B:
- D 3 - - - 0x003E2B 00:FE1B: 00        .byte $00   ; 
- D 3 - - - 0x003E2C 00:FE1C: 06 FF     .word _off006_FF06_06
- D 3 - - - 0x003E2E 00:FE1E: 11        .byte off_FF17 - _off006_FF06_06
- D 3 - - - 0x003E2F 00:FE1F: 00        .byte off_FF06 - _off006_FF06_06

off_FE20:
- D 3 - - - 0x003E30 00:FE20: 08        .byte $08   ; 
- D 3 - - - 0x003E31 00:FE21: E3 FF     .word _off006_FFE3_07
- D 3 - - - 0x003E33 00:FE23: 00        .byte off_FFE3 -  _off006_FFE3_07
- D 3 - - - 0x003E34 00:FE24: 00        .byte off_FFE3 -  _off006_FFE3_07



_off006_FE25_00:
- - - - - - 0x003E35 00:FE25: C6        .byte $C6   ; 
- - - - - - 0x003E36 00:FE26: 67        .byte $67   ; 
- - - - - - 0x003E37 00:FE27: 6A        .byte $6A   ; 
- - - - - - 0x003E38 00:FE28: E0        .byte $E0   ; 
- - - - - - 0x003E39 00:FE29: 84        .byte $84   ; 
- - - - - - 0x003E3A 00:FE2A: 23        .byte $23   ; 
- - - - - - 0x003E3B 00:FE2B: E7        .byte $E7   ; 
- - - - - - 0x003E3C 00:FE2C: AA        .byte $AA   ; 
- - - - - - 0x003E3D 00:FE2D: AE        .byte $AE   ; 
- - - - - - 0x003E3E 00:FE2E: 86        .byte $86   ; 
- - - - - - 0x003E3F 00:FE2F: 88        .byte $88   ; 
- - - - - - 0x003E40 00:FE30: 8D        .byte $8D   ; 
- - - - - - 0x003E41 00:FE31: 84        .byte $84   ; 
- - - - - - 0x003E42 00:FE32: CC        .byte $CC   ; 
- - - - - - 0x003E43 00:FE33: CE        .byte $CE   ; 
- - - - - - 0x003E44 00:FE34: CC        .byte $CC   ; 
- - - - - - 0x003E45 00:FE35: 44        .byte $44   ; 
- - - - - - 0x003E46 00:FE36: 48        .byte $48   ; 
- - - - - - 0x003E47 00:FE37: 46        .byte $46   ; 
- - - - - - 0x003E48 00:FE38: 48        .byte $48   ; 
- - - - - - 0x003E49 00:FE39: C6        .byte $C6   ; 
- - - - - - 0x003E4A 00:FE3A: 44        .byte $44   ; 
- - - - - - 0x003E4B 00:FE3B: 6E        .byte $6E   ; 
- - - - - - 0x003E4C 00:FE3C: 6A        .byte $6A   ; 
- - - - - - 0x003E4D 00:FE3D: 6E        .byte $6E   ; 
- - - - - - 0x003E4E 00:FE3E: 87        .byte $87   ; 
- - - - - - 0x003E4F 00:FE3F: 00        .byte $00   ; end token
off_FE40:
- - - - - - 0x003E50 00:FE40: 87        .byte $87   ; 
- - - - - - 0x003E51 00:FE41: 26        .byte $26   ; 
- - - - - - 0x003E52 00:FE42: 20        .byte $20   ; 
- - - - - - 0x003E53 00:FE43: 18        .byte $18   ; 
- - - - - - 0x003E54 00:FE44: 26        .byte $26   ; 
- - - - - - 0x003E55 00:FE45: 20        .byte $20   ; 
- - - - - - 0x003E56 00:FE46: 18        .byte $18   ; 
- - - - - - 0x003E57 00:FE47: 20        .byte $20   ; 
- - - - - - 0x003E58 00:FE48: 18        .byte $18   ; 
- - - - - - 0x003E59 00:FE49: 38        .byte $38   ; 
- - - - - - 0x003E5A 00:FE4A: 20        .byte $20   ; 
- - - - - - 0x003E5B 00:FE4B: 18        .byte $18   ; 
- - - - - - 0x003E5C 00:FE4C: 38        .byte $38   ; 
- - - - - - 0x003E5D 00:FE4D: 20        .byte $20   ; 
- - - - - - 0x003E5E 00:FE4E: 3C        .byte $3C   ; 
- - - - - - 0x003E5F 00:FE4F: 38        .byte $38   ; 
- - - - - - 0x003E60 00:FE50: 20        .byte $20   ; 
- - - - - - 0x003E61 00:FE51: 3C        .byte $3C   ; 
- - - - - - 0x003E62 00:FE52: 38        .byte $38   ; 
- - - - - - 0x003E63 00:FE53: 20        .byte $20   ; 
- - - - - - 0x003E64 00:FE54: 3C        .byte $3C   ; 
- - - - - - 0x003E65 00:FE55: 38        .byte $38   ; 
- - - - - - 0x003E66 00:FE56: 20        .byte $20   ; 
- - - - - - 0x003E67 00:FE57: 3C        .byte $3C   ; 
- - - - - - 0x003E68 00:FE58: 38        .byte $38   ; 
- - - - - - 0x003E69 00:FE59: 22        .byte $22   ; 
- - - - - - 0x003E6A 00:FE5A: 18        .byte $18   ; 
- - - - - - 0x003E6B 00:FE5B: 3A        .byte $3A   ; 
- - - - - - 0x003E6C 00:FE5C: 22        .byte $22   ; 
- - - - - - 0x003E6D 00:FE5D: 18        .byte $18   ; 
- - - - - - 0x003E6E 00:FE5E: 3A        .byte $3A   ; 
- - - - - - 0x003E6F 00:FE5F: 22        .byte $22   ; 
- - - - - - 0x003E70 00:FE60: 18        .byte $18   ; 
- - - - - - 0x003E71 00:FE61: 3A        .byte $3A   ; 
- - - - - - 0x003E72 00:FE62: 22        .byte $22   ; 
- - - - - - 0x003E73 00:FE63: 18        .byte $18   ; 
- - - - - - 0x003E74 00:FE64: 3A        .byte $3A   ; 
- - - - - - 0x003E75 00:FE65: 2A        .byte $2A   ; 
- - - - - - 0x003E76 00:FE66: 20        .byte $20   ; 
- - - - - - 0x003E77 00:FE67: 18        .byte $18   ; 
- - - - - - 0x003E78 00:FE68: 2A        .byte $2A   ; 
- - - - - - 0x003E79 00:FE69: 20        .byte $20   ; 
- - - - - - 0x003E7A 00:FE6A: 18        .byte $18   ; 
- - - - - - 0x003E7B 00:FE6B: 2A        .byte $2A   ; 
- - - - - - 0x003E7C 00:FE6C: 20        .byte $20   ; 
- - - - - - 0x003E7D 00:FE6D: 18        .byte $18   ; 
- - - - - - 0x003E7E 00:FE6E: 2A        .byte $2A   ; 
- - - - - - 0x003E7F 00:FE6F: 20        .byte $20   ; 
- - - - - - 0x003E80 00:FE70: 18        .byte $18   ; 
- - - - - - 0x003E81 00:FE71: 26        .byte $26   ; 
- - - - - - 0x003E82 00:FE72: 20        .byte $20   ; 
- - - - - - 0x003E83 00:FE73: 18        .byte $18   ; 
- - - - - - 0x003E84 00:FE74: 26        .byte $26   ; 
- - - - - - 0x003E85 00:FE75: 20        .byte $20   ; 
- - - - - - 0x003E86 00:FE76: 18        .byte $18   ; 
- - - - - - 0x003E87 00:FE77: 2A        .byte $2A   ; 
- - - - - - 0x003E88 00:FE78: 22        .byte $22   ; 
- - - - - - 0x003E89 00:FE79: 1C        .byte $1C   ; 
- - - - - - 0x003E8A 00:FE7A: 2A        .byte $2A   ; 
- - - - - - 0x003E8B 00:FE7B: 22        .byte $22   ; 
- - - - - - 0x003E8C 00:FE7C: 1C        .byte $1C   ; 
- - - - - - 0x003E8D 00:FE7D: 2E        .byte $2E   ; 
- - - - - - 0x003E8E 00:FE7E: 26        .byte $26   ; 
- - - - - - 0x003E8F 00:FE7F: 20        .byte $20   ; 
- - - - - - 0x003E90 00:FE80: 2E        .byte $2E   ; 
- - - - - - 0x003E91 00:FE81: 26        .byte $26   ; 
- - - - - - 0x003E92 00:FE82: 20        .byte $20   ; 
- - - - - - 0x003E93 00:FE83: 2E        .byte $2E   ; 
- - - - - - 0x003E94 00:FE84: 26        .byte $26   ; 
- - - - - - 0x003E95 00:FE85: 34        .byte $34   ; 
- - - - - - 0x003E96 00:FE86: 2E        .byte $2E   ; 
- - - - - - 0x003E97 00:FE87: 26        .byte $26   ; 
- - - - - - 0x003E98 00:FE88: 20        .byte $20   ; 
- - - - - - 0x003E99 00:FE89: 2A        .byte $2A   ; 
- - - - - - 0x003E9A 00:FE8A: 22        .byte $22   ; 
- - - - - - 0x003E9B 00:FE8B: 18        .byte $18   ; 
- - - - - - 0x003E9C 00:FE8C: 2A        .byte $2A   ; 
- - - - - - 0x003E9D 00:FE8D: 22        .byte $22   ; 
- - - - - - 0x003E9E 00:FE8E: 18        .byte $18   ; 
- - - - - - 0x003E9F 00:FE8F: 26        .byte $26   ; 
- - - - - - 0x003EA0 00:FE90: 1C        .byte $1C   ; 
- - - - - - 0x003EA1 00:FE91: 3C        .byte $3C   ; 
- - - - - - 0x003EA2 00:FE92: 26        .byte $26   ; 
- - - - - - 0x003EA3 00:FE93: 1C        .byte $1C   ; 
- - - - - - 0x003EA4 00:FE94: 3C        .byte $3C   ; 
- - - - - - 0x003EA5 00:FE95: 86        .byte $86   ; 
- - - - - - 0x003EA6 00:FE96: 26        .byte $26   ; 
off_FE97:
- - - - - - 0x003EA7 00:FE97: 98        .byte $98   ; 
- - - - - - 0x003EA8 00:FE98: B8        .byte $B8   ; 
- - - - - - 0x003EA9 00:FE99: 98        .byte $98   ; 
- - - - - - 0x003EAA 00:FE9A: B8        .byte $B8   ; 
- - - - - - 0x003EAB 00:FE9B: A0        .byte $A0   ; 
- - - - - - 0x003EAC 00:FE9C: BC        .byte $BC   ; 
- - - - - - 0x003EAD 00:FE9D: A0        .byte $A0   ; 
- - - - - - 0x003EAE 00:FE9E: BC        .byte $BC   ; 
- - - - - - 0x003EAF 00:FE9F: A2        .byte $A2   ; 
- - - - - - 0x003EB0 00:FEA0: 98        .byte $98   ; 
- - - - - - 0x003EB1 00:FEA1: A2        .byte $A2   ; 
- - - - - - 0x003EB2 00:FEA2: 98        .byte $98   ; 
- - - - - - 0x003EB3 00:FEA3: AA        .byte $AA   ; 
- - - - - - 0x003EB4 00:FEA4: A0        .byte $A0   ; 
- - - - - - 0x003EB5 00:FEA5: AA        .byte $AA   ; 
- - - - - - 0x003EB6 00:FEA6: A0        .byte $A0   ; 
- - - - - - 0x003EB7 00:FEA7: 98        .byte $98   ; 
- - - - - - 0x003EB8 00:FEA8: B8        .byte $B8   ; 
- - - - - - 0x003EB9 00:FEA9: 9C        .byte $9C   ; 
- - - - - - 0x003EBA 00:FEAA: BA        .byte $BA   ; 
- - - - - - 0x003EBB 00:FEAB: A0        .byte $A0   ; 
- - - - - - 0x003EBC 00:FEAC: BC        .byte $BC   ; 
- - - - - - 0x003EBD 00:FEAD: A0        .byte $A0   ; 
- - - - - - 0x003EBE 00:FEAE: BC        .byte $BC   ; 
- - - - - - 0x003EBF 00:FEAF: A2        .byte $A2   ; 
- - - - - - 0x003EC0 00:FEB0: 98        .byte $98   ; 
- - - - - - 0x003EC1 00:FEB1: A6        .byte $A6   ; 
- - - - - - 0x003EC2 00:FEB2: 9C        .byte $9C   ; 
- - - - - - 0x003EC3 00:FEB3: 99        .byte $99   ; 



_off006_FEB4_01:
- D 3 - I - 0x003EC4 00:FEB4: 10        .byte $10   ; 
- D 3 - I - 0x003EC5 00:FEB5: 52        .byte $52   ; 
- D 3 - I - 0x003EC6 00:FEB6: 12        .byte $12   ; 
- D 3 - I - 0x003EC7 00:FEB7: 8E        .byte $8E   ; 
- D 3 - I - 0x003EC8 00:FEB8: 8C        .byte $8C   ; 
- D 3 - I - 0x003EC9 00:FEB9: 4E        .byte $4E   ; 
- D 3 - I - 0x003ECA 00:FEBA: 8C        .byte $8C   ; 
- D 3 - I - 0x003ECB 00:FEBB: 4C        .byte $4C   ; 
- D 3 - I - 0x003ECC 00:FEBC: 88        .byte $88   ; 
- D 3 - I - 0x003ECD 00:FEBD: 86        .byte $86   ; 
- D 3 - I - 0x003ECE 00:FEBE: 88        .byte $88   ; 
- D 3 - I - 0x003ECF 00:FEBF: C6        .byte $C6   ; 
- D 3 - I - 0x003ED0 00:FEC0: C4        .byte $C4   ; 
- D 3 - I - 0x003ED1 00:FEC1: C4        .byte $C4   ; 
- D 3 - I - 0x003ED2 00:FEC2: 84        .byte $84   ; 
- D 3 - I - 0x003ED3 00:FEC3: 00        .byte $00   ; end token
off_FEC4:
- D 3 - I - 0x003ED4 00:FEC4: 80        .byte $80   ; 
- D 3 - I - 0x003ED5 00:FEC5: 0A        .byte $0A   ; 
- D 3 - I - 0x003ED6 00:FEC6: 81        .byte $81   ; 
- D 3 - I - 0x003ED7 00:FEC7: 0C        .byte $0C   ; 
- D 3 - I - 0x003ED8 00:FEC8: 80        .byte $80   ; 
- D 3 - I - 0x003ED9 00:FEC9: 0C        .byte $0C   ; 
- D 3 - I - 0x003EDA 00:FECA: 82        .byte $82   ; 
- D 3 - I - 0x003EDB 00:FECB: 08        .byte $08   ; 
- D 3 - I - 0x003EDC 00:FECC: 06        .byte $06   ; 
- D 3 - I - 0x003EDD 00:FECD: 81        .byte $81   ; 
- D 3 - I - 0x003EDE 00:FECE: 2A        .byte $2A   ; 
- D 3 - I - 0x003EDF 00:FECF: 82        .byte $82   ; 
- D 3 - I - 0x003EE0 00:FED0: 06        .byte $06   ; 
- D 3 - I - 0x003EE1 00:FED1: 81        .byte $81   ; 
- D 3 - I - 0x003EE2 00:FED2: 2A        .byte $2A   ; 
- D 3 - I - 0x003EE3 00:FED3: 82        .byte $82   ; 
- D 3 - I - 0x003EE4 00:FED4: 2E        .byte $2E   ; 
- D 3 - I - 0x003EE5 00:FED5: 2A        .byte $2A   ; 
- D 3 - I - 0x003EE6 00:FED6: 26        .byte $26   ; 
- D 3 - I - 0x003EE7 00:FED7: 83        .byte $83   ; 
- D 3 - I - 0x003EE8 00:FED8: 20        .byte $20   ; 
- D 3 - I - 0x003EE9 00:FED9: 04        .byte $04   ; 
- D 3 - I - 0x003EEA 00:FEDA: 04        .byte $04   ; 
- D 3 - I - 0x003EEB 00:FEDB: 04        .byte $04   ; 
off_FEDC:
- D 3 - I - 0x003EEC 00:FEDC: 98        .byte $98   ; 
- D 3 - I - 0x003EED 00:FEDD: B8        .byte $B8   ; 
- D 3 - I - 0x003EEE 00:FEDE: 98        .byte $98   ; 
- D 3 - I - 0x003EEF 00:FEDF: B8        .byte $B8   ; 
- D 3 - I - 0x003EF0 00:FEE0: BA        .byte $BA   ; 
- D 3 - I - 0x003EF1 00:FEE1: B8        .byte $B8   ; 
- D 3 - I - 0x003EF2 00:FEE2: BA        .byte $BA   ; 
- D 3 - I - 0x003EF3 00:FEE3: B8        .byte $B8   ; 
- D 3 - I - 0x003EF4 00:FEE4: 24        .byte $24   ; 
- D 3 - I - 0x003EF5 00:FEE5: 66        .byte $66   ; 
- D 3 - I - 0x003EF6 00:FEE6: 26        .byte $26   ; 
- D 3 - I - 0x003EF7 00:FEE7: A2        .byte $A2   ; 
- D 3 - I - 0x003EF8 00:FEE8: A0        .byte $A0   ; 
- D 3 - I - 0x003EF9 00:FEE9: 5C        .byte $5C   ; 
- D 3 - I - 0x003EFA 00:FEEA: D8        .byte $D8   ; 
- D 3 - I - 0x003EFB 00:FEEB: 58        .byte $58   ; 
- D 3 - I - 0x003EFC 00:FEEC: C4        .byte $C4   ; 



_off006_FEED_05:
off_FEED:
- D 3 - I - 0x003EFD 00:FEED: E7        .byte $E7   ; 
- D 3 - I - 0x003EFE 00:FEEE: 26        .byte $26   ; 
- D 3 - I - 0x003EFF 00:FEEF: A2        .byte $A2   ; 
- D 3 - I - 0x003F00 00:FEF0: A6        .byte $A6   ; 
- D 3 - I - 0x003F01 00:FEF1: AA        .byte $AA   ; 
- D 3 - I - 0x003F02 00:FEF2: AE        .byte $AE   ; 
- D 3 - I - 0x003F03 00:FEF3: 07        .byte $07   ; 
- D 3 - I - 0x003F04 00:FEF4: 00        .byte $00   ; end token
off_FEF5:
- D 3 - I - 0x003F05 00:FEF5: 84        .byte $84   ; 
- D 3 - I - 0x003F06 00:FEF6: 62        .byte $62   ; 
- D 3 - I - 0x003F07 00:FEF7: 58        .byte $58   ; 
- D 3 - I - 0x003F08 00:FEF8: 7A        .byte $7A   ; 
- D 3 - I - 0x003F09 00:FEF9: 58        .byte $58   ; 
- D 3 - I - 0x003F0A 00:FEFA: 66        .byte $66   ; 
- D 3 - I - 0x003F0B 00:FEFB: 62        .byte $62   ; 
- D 3 - I - 0x003F0C 00:FEFC: 5C        .byte $5C   ; 
- D 3 - I - 0x003F0D 00:FEFD: 66        .byte $66   ; 
- D 3 - I - 0x003F0E 00:FEFE: 46        .byte $46   ; 
- D 3 - I - 0x003F0F 00:FEFF: AF        .byte $AF   ; 
- D 3 - I - 0x003F10 00:FF00: 2A        .byte $2A   ; 
- D 3 - I - 0x003F11 00:FF01: A7        .byte $A7   ; 
- D 3 - I - 0x003F12 00:FF02: 22        .byte $22   ; 
- D 3 - I - 0x003F13 00:FF03: A1        .byte $A1   ; 
- D 3 - I - 0x003F14 00:FF04: 1C        .byte $1C   ; 
- D 3 - I - 0x003F15 00:FF05: 19        .byte $19   ; 



_off006_FF06_06:
off_FF06:
- D 3 - I - 0x003F16 00:FF06: 0C        .byte $0C   ; 
- D 3 - I - 0x003F17 00:FF07: 8E        .byte $8E   ; 
- D 3 - I - 0x003F18 00:FF08: C5        .byte $C5   ; 
- D 3 - I - 0x003F19 00:FF09: 47        .byte $47   ; 
- D 3 - I - 0x003F1A 00:FF0A: 48        .byte $48   ; 
- D 3 - I - 0x003F1B 00:FF0B: 46        .byte $46   ; 
- D 3 - I - 0x003F1C 00:FF0C: 46        .byte $46   ; 
- D 3 - I - 0x003F1D 00:FF0D: 6C        .byte $6C   ; 
- D 3 - I - 0x003F1E 00:FF0E: 6C        .byte $6C   ; 
- D 3 - I - 0x003F1F 00:FF0F: 6A        .byte $6A   ; 
- D 3 - I - 0x003F20 00:FF10: 6A        .byte $6A   ; 
- D 3 - I - 0x003F21 00:FF11: 66        .byte $66   ; 
- D 3 - I - 0x003F22 00:FF12: 66        .byte $66   ; 
- D 3 - I - 0x003F23 00:FF13: 22        .byte $22   ; 
- D 3 - I - 0x003F24 00:FF14: 22        .byte $22   ; 
- D 3 - I - 0x003F25 00:FF15: E2        .byte $E2   ; 
- D 3 - I - 0x003F26 00:FF16: 00        .byte $00   ; end token
off_FF17:
- D 3 - I - 0x003F27 00:FF17: 62        .byte $62   ; 
- D 3 - I - 0x003F28 00:FF18: 58        .byte $58   ; 
- D 3 - I - 0x003F29 00:FF19: 58        .byte $58   ; 
- D 3 - I - 0x003F2A 00:FF1A: 58        .byte $58   ; 
- D 3 - I - 0x003F2B 00:FF1B: 62        .byte $62   ; 
- D 3 - I - 0x003F2C 00:FF1C: 58        .byte $58   ; 
- D 3 - I - 0x003F2D 00:FF1D: 58        .byte $58   ; 
- D 3 - I - 0x003F2E 00:FF1E: 58        .byte $58   ; 
- D 3 - I - 0x003F2F 00:FF1F: 60        .byte $60   ; 
- D 3 - I - 0x003F30 00:FF20: 58        .byte $58   ; 
- D 3 - I - 0x003F31 00:FF21: 78        .byte $78   ; 
- D 3 - I - 0x003F32 00:FF22: 58        .byte $58   ; 
- D 3 - I - 0x003F33 00:FF23: 66        .byte $66   ; 
- D 3 - I - 0x003F34 00:FF24: 60        .byte $60   ; 
- D 3 - I - 0x003F35 00:FF25: 58        .byte $58   ; 
- D 3 - I - 0x003F36 00:FF26: 60        .byte $60   ; 
- D 3 - I - 0x003F37 00:FF27: 22        .byte $22   ; 
- D 3 - I - 0x003F38 00:FF28: 22        .byte $22   ; 
- D 3 - I - 0x003F39 00:FF29: E2        .byte $E2   ; 



_off006_FF2A_02:
- - - - - - 0x003F3A 00:FF2A: C7        .byte $C7   ; 
- - - - - - 0x003F3B 00:FF2B: 2F        .byte $2F   ; 
- - - - - - 0x003F3C 00:FF2C: C7        .byte $C7   ; 
- - - - - - 0x003F3D 00:FF2D: 0D        .byte $0D   ; 
- - - - - - 0x003F3E 00:FF2E: CF        .byte $CF   ; 
- - - - - - 0x003F3F 00:FF2F: 13        .byte $13   ; 
- - - - - - 0x003F40 00:FF30: CF        .byte $CF   ; 
- - - - - - 0x003F41 00:FF31: 8C        .byte $8C   ; 
- - - - - - 0x003F42 00:FF32: 88        .byte $88   ; 
- - - - - - 0x003F43 00:FF33: C6        .byte $C6   ; 
- - - - - - 0x003F44 00:FF34: C4        .byte $C4   ; 
- - - - - - 0x003F45 00:FF35: 00        .byte $00   ; end token
off_FF36:
- - - - - - 0x003F46 00:FF36: 87        .byte $87   ; 
- - - - - - 0x003F47 00:FF37: 2A        .byte $2A   ; 
- - - - - - 0x003F48 00:FF38: 84        .byte $84   ; 
- - - - - - 0x003F49 00:FF39: 26        .byte $26   ; 
- - - - - - 0x003F4A 00:FF3A: 87        .byte $87   ; 
- - - - - - 0x003F4B 00:FF3B: 22        .byte $22   ; 
- - - - - - 0x003F4C 00:FF3C: 18        .byte $18   ; 
- - - - - - 0x003F4D 00:FF3D: 38        .byte $38   ; 
- - - - - - 0x003F4E 00:FF3E: 34        .byte $34   ; 
- - - - - - 0x003F4F 00:FF3F: 18        .byte $18   ; 
- - - - - - 0x003F50 00:FF40: 38        .byte $38   ; 
- - - - - - 0x003F51 00:FF41: 34        .byte $34   ; 
- - - - - - 0x003F52 00:FF42: 3C        .byte $3C   ; 
- - - - - - 0x003F53 00:FF43: 38        .byte $38   ; 
- - - - - - 0x003F54 00:FF44: 32        .byte $32   ; 
- - - - - - 0x003F55 00:FF45: 3C        .byte $3C   ; 
- - - - - - 0x003F56 00:FF46: 38        .byte $38   ; 
- - - - - - 0x003F57 00:FF47: 32        .byte $32   ; 
- - - - - - 0x003F58 00:FF48: 84        .byte $84   ; 
- - - - - - 0x003F59 00:FF49: 18        .byte $18   ; 
- - - - - - 0x003F5A 00:FF4A: 87        .byte $87   ; 
- - - - - - 0x003F5B 00:FF4B: 38        .byte $38   ; 
- - - - - - 0x003F5C 00:FF4C: 38        .byte $38   ; 
- - - - - - 0x003F5D 00:FF4D: 3A        .byte $3A   ; 
- - - - - - 0x003F5E 00:FF4E: 3C        .byte $3C   ; 
- - - - - - 0x003F5F 00:FF4F: 82        .byte $82   ; 
- - - - - - 0x003F60 00:FF50: 18        .byte $18   ; 
- - - - - - 0x003F61 00:FF51: 18        .byte $18   ; 
off_FF52:
- - - - - - 0x003F62 00:FF52: C5        .byte $C5   ; 
- - - - - - 0x003F63 00:FF53: 84        .byte $84   ; 
- - - - - - 0x003F64 00:FF54: 98        .byte $98   ; 
- - - - - - 0x003F65 00:FF55: B8        .byte $B8   ; 
- - - - - - 0x003F66 00:FF56: A6        .byte $A6   ; 
- - - - - - 0x003F67 00:FF57: 9C        .byte $9C   ; 
- - - - - - 0x003F68 00:FF58: D8        .byte $D8   ; 
- - - - - - 0x003F69 00:FF59: 98        .byte $98   ; 
- - - - - - 0x003F6A 00:FF5A: 98        .byte $98   ; 



_off006_FF5B_04:
- D 3 - I - 0x003F6B 00:FF5B: 6B        .byte $6B   ; 
- D 3 - I - 0x003F6C 00:FF5C: E9        .byte $E9   ; 
- D 3 - I - 0x003F6D 00:FF5D: 67        .byte $67   ; 
- D 3 - I - 0x003F6E 00:FF5E: E5        .byte $E5   ; 
- D 3 - I - 0x003F6F 00:FF5F: 2B        .byte $2B   ; 
- D 3 - I - 0x003F70 00:FF60: E7        .byte $E7   ; 
- D 3 - I - 0x003F71 00:FF61: 25        .byte $25   ; 
- D 3 - I - 0x003F72 00:FF62: E1        .byte $E1   ; 
- D 3 - I - 0x003F73 00:FF63: DD        .byte $DD   ; 
- D 3 - I - 0x003F74 00:FF64: 85        .byte $85   ; 
- D 3 - I - 0x003F75 00:FF65: DB        .byte $DB   ; 
- D 3 - I - 0x003F76 00:FF66: 1D        .byte $1D   ; 
- D 3 - I - 0x003F77 00:FF67: DF        .byte $DF   ; 
- D 3 - I - 0x003F78 00:FF68: A0        .byte $A0   ; 
- D 3 - I - 0x003F79 00:FF69: 86        .byte $86   ; 
- D 3 - I - 0x003F7A 00:FF6A: AE        .byte $AE   ; 
- D 3 - I - 0x003F7B 00:FF6B: AA        .byte $AA   ; 
- D 3 - I - 0x003F7C 00:FF6C: 2F        .byte $2F   ; 
- D 3 - I - 0x003F7D 00:FF6D: E7        .byte $E7   ; 
- D 3 - I - 0x003F7E 00:FF6E: 3D        .byte $3D   ; 
- D 3 - I - 0x003F7F 00:FF6F: E1        .byte $E1   ; 
- D 3 - I - 0x003F80 00:FF70: DD        .byte $DD   ; 
- D 3 - I - 0x003F81 00:FF71: 85        .byte $85   ; 
- D 3 - I - 0x003F82 00:FF72: FD        .byte $FD   ; 
- D 3 - I - 0x003F83 00:FF73: 19        .byte $19   ; 
- D 3 - I - 0x003F84 00:FF74: DD        .byte $DD   ; 
- D 3 - I - 0x003F85 00:FF75: 60        .byte $60   ; 
- D 3 - I - 0x003F86 00:FF76: 44        .byte $44   ; 
- D 3 - I - 0x003F87 00:FF77: A0        .byte $A0   ; 
- D 3 - I - 0x003F88 00:FF78: 64        .byte $64   ; 
- D 3 - I - 0x003F89 00:FF79: 44        .byte $44   ; 
- D 3 - I - 0x003F8A 00:FF7A: A4        .byte $A4   ; 
- D 3 - I - 0x003F8B 00:FF7B: E7        .byte $E7   ; 
- D 3 - I - 0x003F8C 00:FF7C: 85        .byte $85   ; 
- D 3 - I - 0x003F8D 00:FF7D: DD        .byte $DD   ; 
- D 3 - I - 0x003F8E 00:FF7E: 1B        .byte $1B   ; 
- D 3 - I - 0x003F8F 00:FF7F: DD        .byte $DD   ; 
- D 3 - I - 0x003F90 00:FF80: 66        .byte $66   ; 
- D 3 - I - 0x003F91 00:FF81: 44        .byte $44   ; 
- D 3 - I - 0x003F92 00:FF82: 66        .byte $66   ; 
- D 3 - I - 0x003F93 00:FF83: 44        .byte $44   ; 
- D 3 - I - 0x003F94 00:FF84: 00        .byte $00   ; end token
off_FF85:
- D 3 - I - 0x003F95 00:FF85: 85        .byte $85   ; 
- D 3 - I - 0x003F96 00:FF86: 44        .byte $44   ; 
- D 3 - I - 0x003F97 00:FF87: 87        .byte $87   ; 
- D 3 - I - 0x003F98 00:FF88: 42        .byte $42   ; 
- D 3 - I - 0x003F99 00:FF89: 85        .byte $85   ; 
- D 3 - I - 0x003F9A 00:FF8A: 40        .byte $40   ; 
- D 3 - I - 0x003F9B 00:FF8B: 87        .byte $87   ; 
- D 3 - I - 0x003F9C 00:FF8C: 3E        .byte $3E   ; 
- D 3 - I - 0x003F9D 00:FF8D: 84        .byte $84   ; 
- D 3 - I - 0x003F9E 00:FF8E: 02        .byte $02   ; 
- D 3 - I - 0x003F9F 00:FF8F: 87        .byte $87   ; 
- D 3 - I - 0x003FA0 00:FF90: 16        .byte $16   ; 
- D 3 - I - 0x003FA1 00:FF91: 84        .byte $84   ; 
- D 3 - I - 0x003FA2 00:FF92: 14        .byte $14   ; 
- D 3 - I - 0x003FA3 00:FF93: 87        .byte $87   ; 
- D 3 - I - 0x003FA4 00:FF94: 12        .byte $12   ; 
- D 3 - I - 0x003FA5 00:FF95: 87        .byte $87   ; 
- D 3 - I - 0x003FA6 00:FF96: 10        .byte $10   ; 
- D 3 - I - 0x003FA7 00:FF97: 85        .byte $85   ; 
- D 3 - I - 0x003FA8 00:FF98: 04        .byte $04   ; 
- D 3 - I - 0x003FA9 00:FF99: 87        .byte $87   ; 
- D 3 - I - 0x003FAA 00:FF9A: 04        .byte $04   ; 
- D 3 - I - 0x003FAB 00:FF9B: 12        .byte $12   ; 
- D 3 - I - 0x003FAC 00:FF9C: 02        .byte $02   ; 
- D 3 - I - 0x003FAD 00:FF9D: 84        .byte $84   ; 
- D 3 - I - 0x003FAE 00:FF9E: 40        .byte $40   ; 
- D 3 - I - 0x003FAF 00:FF9F: 87        .byte $87   ; 
- D 3 - I - 0x003FB0 00:FFA0: 12        .byte $12   ; 
- D 3 - I - 0x003FB1 00:FFA1: 12        .byte $12   ; 
- D 3 - I - 0x003FB2 00:FFA2: 40        .byte $40   ; 
- D 3 - I - 0x003FB3 00:FFA3: 12        .byte $12   ; 
- D 3 - I - 0x003FB4 00:FFA4: 84        .byte $84   ; 
- D 3 - I - 0x003FB5 00:FFA5: 02        .byte $02   ; 
- D 3 - I - 0x003FB6 00:FFA6: 86        .byte $86   ; 
- D 3 - I - 0x003FB7 00:FFA7: 0C        .byte $0C   ; 
- D 3 - I - 0x003FB8 00:FFA8: 04        .byte $04   ; 
- D 3 - I - 0x003FB9 00:FFA9: 08        .byte $08   ; 
- D 3 - I - 0x003FBA 00:FFAA: 16        .byte $16   ; 
- D 3 - I - 0x003FBB 00:FFAB: 84        .byte $84   ; 
- D 3 - I - 0x003FBC 00:FFAC: 3E        .byte $3E   ; 
- D 3 - I - 0x003FBD 00:FFAD: 87        .byte $87   ; 
- D 3 - I - 0x003FBE 00:FFAE: 12        .byte $12   ; 
- D 3 - I - 0x003FBF 00:FFAF: 12        .byte $12   ; 
- D 3 - I - 0x003FC0 00:FFB0: 16        .byte $16   ; 
- D 3 - I - 0x003FC1 00:FFB1: 12        .byte $12   ; 
- D 3 - I - 0x003FC2 00:FFB2: 84        .byte $84   ; 
- D 3 - I - 0x003FC3 00:FFB3: 14        .byte $14   ; 
- D 3 - I - 0x003FC4 00:FFB4: 87        .byte $87   ; 
- D 3 - I - 0x003FC5 00:FFB5: 16        .byte $16   ; 
- D 3 - I - 0x003FC6 00:FFB6: 81        .byte $81   ; 
- D 3 - I - 0x003FC7 00:FFB7: 02        .byte $02   ; 
- D 3 - I - 0x003FC8 00:FFB8: 04        .byte $04   ; 
- D 3 - I - 0x003FC9 00:FFB9: 82        .byte $82   ; 
- D 3 - I - 0x003FCA 00:FFBA: 02        .byte $02   ; 
- D 3 - I - 0x003FCB 00:FFBB: 81        .byte $81   ; 
- D 3 - I - 0x003FCC 00:FFBC: 3E        .byte $3E   ; 
- D 3 - I - 0x003FCD 00:FFBD: 04        .byte $04   ; 
- D 3 - I - 0x003FCE 00:FFBE: 82        .byte $82   ; 
- D 3 - I - 0x003FCF 00:FFBF: 02        .byte $02   ; 
- D 3 - I - 0x003FD0 00:FFC0: 87        .byte $87   ; 
- D 3 - I - 0x003FD1 00:FFC1: 16        .byte $16   ; 
- D 3 - I - 0x003FD2 00:FFC2: 85        .byte $85   ; 
- D 3 - I - 0x003FD3 00:FFC3: 04        .byte $04   ; 
- D 3 - I - 0x003FD4 00:FFC4: 81        .byte $81   ; 
- D 3 - I - 0x003FD5 00:FFC5: 2E        .byte $2E   ; 
- D 3 - I - 0x003FD6 00:FFC6: 04        .byte $04   ; 
- D 3 - I - 0x003FD7 00:FFC7: 2E        .byte $2E   ; 
- D 3 - I - 0x003FD8 00:FFC8: 04        .byte $04   ; 
off_FFC9:
- D 3 - I - 0x003FD9 00:FFC9: 09        .byte $09   ; 
- D 3 - I - 0x003FDA 00:FFCA: DD        .byte $DD   ; 
- D 3 - I - 0x003FDB 00:FFCB: 9C        .byte $9C   ; 
- D 3 - I - 0x003FDC 00:FFCC: 2B        .byte $2B   ; 
- D 3 - I - 0x003FDD 00:FFCD: FB        .byte $FB   ; 
- D 3 - I - 0x003FDE 00:FFCE: BA        .byte $BA   ; 
- D 3 - I - 0x003FDF 00:FFCF: 9C        .byte $9C   ; 
- D 3 - I - 0x003FE0 00:FFD0: BA        .byte $BA   ; 
- D 3 - I - 0x003FE1 00:FFD1: DC        .byte $DC   ; 
- D 3 - I - 0x003FE2 00:FFD2: 98        .byte $98   ; 
- D 3 - I - 0x003FE3 00:FFD3: A6        .byte $A6   ; 
- D 3 - I - 0x003FE4 00:FFD4: 86        .byte $86   ; 
- D 3 - I - 0x003FE5 00:FFD5: 98        .byte $98   ; 
- D 3 - I - 0x003FE6 00:FFD6: A6        .byte $A6   ; 
- D 3 - I - 0x003FE7 00:FFD7: 9C        .byte $9C   ; 
- D 3 - I - 0x003FE8 00:FFD8: A6        .byte $A6   ; 
- D 3 - I - 0x003FE9 00:FFD9: 88        .byte $88   ; 
- D 3 - I - 0x003FEA 00:FFDA: 07        .byte $07   ; 
- D 3 - I - 0x003FEB 00:FFDB: D9        .byte $D9   ; 
- D 3 - I - 0x003FEC 00:FFDC: 86        .byte $86   ; 
- D 3 - I - 0x003FED 00:FFDD: 09        .byte $09   ; 
- D 3 - I - 0x003FEE 00:FFDE: DD        .byte $DD   ; 
- D 3 - I - 0x003FEF 00:FFDF: 88        .byte $88   ; 
- D 3 - I - 0x003FF0 00:FFE0: E6        .byte $E6   ; 
- D 3 - I - 0x003FF1 00:FFE1: A6        .byte $A6   ; 
- D 3 - I - 0x003FF2 00:FFE2: B8        .byte $B8   ; 



_off006_FFE3_07:
off_FFE3:
- D 3 - I - 0x003FF3 00:FFE3: 02        .byte $02   ; 
- D 3 - I - 0x003FF4 00:FFE4: 12        .byte $12   ; 
- D 3 - I - 0x003FF5 00:FFE5: 02        .byte $02   ; 
- D 3 - I - 0x003FF6 00:FFE6: 12        .byte $12   ; 
- D 3 - I - 0x003FF7 00:FFE7: 02        .byte $02   ; 
- D 3 - I - 0x003FF8 00:FFE8: 12        .byte $12   ; 
- D 3 - I - 0x003FF9 00:FFE9: 02        .byte $02   ; 
- D 3 - I - 0x003FFA 00:FFEA: 52        .byte $52   ; 
- D 3 - I - 0x003FFB 00:FFEB: 00        .byte $00   ; end token


; bzk garbage
- - - - - - 0x003FFC 00:FFEC: FF        .byte $FF, $FF, $FF, $FF   ; 
- - - - - - 0x004000 00:FFF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



sub_FFF7:
C - - - - - 0x004007 00:FFF7: 4C E0 F8  JMP loc_F8E0



.segment "VECTORS"
- D 3 - - - 0x00400A 00:FFFA: 7D C0     .word vec_C07D_NMI
- D 3 - - - 0x00400C 00:FFFC: 00 C0     .word vec_C000_RESET
- - - - - - 0x00400E 00:FFFE: 00 C0     .word vec_C000_IRQ



