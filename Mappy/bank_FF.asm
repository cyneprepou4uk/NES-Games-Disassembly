.segment "BANK_FF"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $C000  ; for listing file
; 0x000010-0x00400F

tbl_C000:
; bzk sometimes 0x001EE2 reads this table up to C0FF, where code is
; I can't tell if it's bad since I don't know what this does yet
- - - - - - 0x000010 00:C000: 43        .byte $43   ; 
- - - - - - 0x000011 00:C001: 4F        .byte $4F   ; 
- - - - - - 0x000012 00:C002: 50        .byte $50   ; 
- - - - - - 0x000013 00:C003: 59        .byte $59   ; 
- - - - - - 0x000014 00:C004: 52        .byte $52   ; 
- D 2 - - - 0x000015 00:C005: 49        .byte $49   ; 
- - - - - - 0x000016 00:C006: 47        .byte $47   ; 
- - - - - - 0x000017 00:C007: 48        .byte $48   ; 
- D 2 - - - 0x000018 00:C008: 54        .byte $54   ; 
- - - - - - 0x000019 00:C009: 20        .byte $20   ; 
- D 2 - - - 0x00001A 00:C00A: 31        .byte $31   ; 
- D 2 - - - 0x00001B 00:C00B: 39        .byte $39   ; 
- - - - - - 0x00001C 00:C00C: 38        .byte $38   ; 
- - - - - - 0x00001D 00:C00D: 33        .byte $33   ; 
- - - - - - 0x00001E 00:C00E: 20        .byte $20   ; 
- - - - - - 0x00001F 00:C00F: 31        .byte $31   ; 
- - - - - - 0x000020 00:C010: 39        .byte $39   ; 
- - - - - - 0x000021 00:C011: 38        .byte $38   ; 
- - - - - - 0x000022 00:C012: 34        .byte $34   ; 
- D 2 - - - 0x000023 00:C013: 20        .byte $20   ; 
- - - - - - 0x000024 00:C014: 4E        .byte $4E   ; 
- - - - - - 0x000025 00:C015: 41        .byte $41   ; 
- - - - - - 0x000026 00:C016: 4D        .byte $4D   ; 
- D 2 - - - 0x000027 00:C017: 43        .byte $43   ; 
- - - - - - 0x000028 00:C018: 4F        .byte $4F   ; 
- - - - - - 0x000029 00:C019: 20        .byte $20   ; 
- D 2 - - - 0x00002A 00:C01A: 4C        .byte $4C   ; 
- D 2 - - - 0x00002B 00:C01B: 54        .byte $54   ; 
- D 2 - - - 0x00002C 00:C01C: 44        .byte $44   ; 
- D 2 - - - 0x00002D 00:C01D: 2E        .byte $2E   ; 
- - - - - - 0x00002E 00:C01E: 41        .byte $41   ; 
- - - - - - 0x00002F 00:C01F: 4C        .byte $4C   ; 
- D 2 - - - 0x000030 00:C020: 4C        .byte $4C   ; 
- - - - - - 0x000031 00:C021: 20        .byte $20   ; 
- D 2 - - - 0x000032 00:C022: 52        .byte $52   ; 
- - - - - - 0x000033 00:C023: 49        .byte $49   ; 
- D 2 - - - 0x000034 00:C024: 47        .byte $47   ; 
- - - - - - 0x000035 00:C025: 48        .byte $48   ; 
- D 2 - - - 0x000036 00:C026: 54        .byte $54   ; 
- - - - - - 0x000037 00:C027: 53        .byte $53   ; 
- - - - - - 0x000038 00:C028: 20        .byte $20   ; 
- - - - - - 0x000039 00:C029: 52        .byte $52   ; 
- - - - - - 0x00003A 00:C02A: 45        .byte $45   ; 
- D 2 - - - 0x00003B 00:C02B: 53        .byte $53   ; 
- D 2 - - - 0x00003C 00:C02C: 45        .byte $45   ; 
- - - - - - 0x00003D 00:C02D: 52        .byte $52   ; 
- - - - - - 0x00003E 00:C02E: 56        .byte $56   ; 
- - - - - - 0x00003F 00:C02F: 45        .byte $45   ; 
- - - - - - 0x000040 00:C030: 44        .byte $44   ; 



vec_C031_RESET:
C - - - - - 0x000041 00:C031: 78        SEI
C D 2 - - - 0x000042 00:C032: D8        CLD
C - - - - - 0x000043 00:C033: A2 5F     LDX #$5F
C - - - - - 0x000045 00:C035: 9A        TXS
C - - - - - 0x000046 00:C036: A9 00     LDA #$00
C - - - - - 0x000048 00:C038: 8D 00 20  STA $2000
C - - - - - 0x00004B 00:C03B: 8D 01 20  STA $2001
bra_C03E_loop:
C - - - - - 0x00004E 00:C03E: AD 02 20  LDA $2002
C - - - - - 0x000051 00:C041: 10 FB     BPL bra_C03E_loop
C - - - - - 0x000053 00:C043: A9 07     LDA #$07
C - - - - - 0x000055 00:C045: 85 01     STA ram_0001
C - - - - - 0x000057 00:C047: A9 00     LDA #$00
C D 2 - - - 0x000059 00:C049: 85 00     STA ram_0000
C - - - - - 0x00005B 00:C04B: A8        TAY
bra_C04C_loop:  ; clear 0100-07FF
C - - - - - 0x00005C 00:C04C: 91 00     STA (ram_0000),Y
C - - - - - 0x00005E 00:C04E: C8        INY
C - - - - - 0x00005F 00:C04F: D0 FB     BNE bra_C04C_loop
C - - - - - 0x000061 00:C051: C6 01     DEC ram_0001
C D 2 - - - 0x000063 00:C053: D0 F7     BNE bra_C04C_loop
C D 2 - - - 0x000065 00:C055: 20 5C C2  JSR sub_C25C
C D 2 - - - 0x000068 00:C058: A9 5A     LDA #$5A
C D 2 - - - 0x00006A 00:C05A: 85 3E     STA ram_reset_check_1
C - - - - - 0x00006C 00:C05C: A9 A5     LDA #$A5
C - - - - - 0x00006E 00:C05E: 85 3F     STA ram_reset_check_2
C - - - - - 0x000070 00:C060: A0 00     LDY #$00
C D 2 - - - 0x000072 00:C062: 20 28 C1  JSR sub_C128
C - - - - - 0x000075 00:C065: 20 B5 F4  JSR sub_F4B5
C - - - - - 0x000078 00:C068: A9 88     LDA #$88
C - - - - - 0x00007A 00:C06A: 8D 00 20  STA $2000
loc_C06D_main_game_script_loop:
bra_C06D_infinite_loop:
C D 2 - - - 0x00007D 00:C06D: A5 20     LDA ram_nmi_trigger_flag
C - - - - - 0x00007F 00:C06F: F0 FC     BEQ bra_C06D_infinite_loop
C - - - - - 0x000081 00:C071: A9 07     LDA #> ram_oam
C - - - - - 0x000083 00:C073: 8D 14 40  STA $4014
C - - - - - 0x000086 00:C076: 20 50 C1  JSR sub_C150
C - - - - - 0x000089 00:C079: 20 C9 C1  JSR sub_C1C9_read_joy_regs
C D 2 - - - 0x00008C 00:C07C: 20 D0 C0  JSR sub_C0D0
C D 2 - - - 0x00008F 00:C07F: A2 14     LDX #$14
C D 2 - - - 0x000091 00:C081: 86 2C     STX ram_index_oam
C - - - - - 0x000093 00:C083: A5 28     LDA ram_cam_pos_X_lo
C - - - - - 0x000095 00:C085: 85 10     STA ram_0010
C D 2 - - - 0x000097 00:C087: A5 29     LDA ram_cam_pos_X_hi
C - - - - - 0x000099 00:C089: 06 10     ASL ram_0010
C D 2 - - - 0x00009B 00:C08B: 2A        ROL
C D 2 - - - 0x00009C 00:C08C: 06 10     ASL ram_0010
C D 2 - - - 0x00009E 00:C08E: 2A        ROL
C - - - - - 0x00009F 00:C08F: 06 10     ASL ram_0010
C D 2 - - - 0x0000A1 00:C091: 2A        ROL
C D 2 - - - 0x0000A2 00:C092: 8D 05 20  STA $2005
C - - - - - 0x0000A5 00:C095: A9 00     LDA #$00    ; scroll Y is always 00
C - - - - - 0x0000A7 00:C097: 8D 05 20  STA $2005
C D 2 - - - 0x0000AA 00:C09A: A9 88     LDA #$88
C - - - - - 0x0000AC 00:C09C: 69 00     ADC #$00
C - - - - - 0x0000AE 00:C09E: 8D 00 20  STA $2000
C D 2 - - - 0x0000B1 00:C0A1: 20 F1 F4  JSR sub_F4F1_update_sound_engine
C D 2 - - - 0x0000B4 00:C0A4: A5 23     LDA ram_0023
C - - - - - 0x0000B6 00:C0A6: F0 0D     BEQ bra_C0B5
C - - - - - 0x0000B8 00:C0A8: 20 35 D7  JSR sub_D735
C - - - - - 0x0000BB 00:C0AB: A5 24     LDA ram_0024
C - - - - - 0x0000BD 00:C0AD: 29 03     AND #$03
C - - - - - 0x0000BF 00:C0AF: C9 01     CMP #$01
C D 2 - - - 0x0000C1 00:C0B1: D0 14     BNE bra_C0C7
- - - - - - 0x0000C3 00:C0B3: F0 12     BEQ bra_C0C7    ; jmp bzk optimize, always jump to C0C7
bra_C0B5:
C D 2 - - - 0x0000C5 00:C0B5: A5 24     LDA ram_0024
C D 2 - - - 0x0000C7 00:C0B7: 29 03     AND #$03
C - - - - - 0x0000C9 00:C0B9: C9 01     CMP #$01
C - - - - - 0x0000CB 00:C0BB: D0 02     BNE bra_C0BF
C D 2 - - - 0x0000CD 00:C0BD: EA        NOP ; bzk garbage
C D 2 - - - 0x0000CE 00:C0BE: EA        NOP
bra_C0BF:
C - - - - - 0x0000CF 00:C0BF: 20 C9 C7  JSR sub_C7C9
C - - - - - 0x0000D2 00:C0C2: A0 00     LDY #$00
C - - - - - 0x0000D4 00:C0C4: 20 46 C1  JSR sub_C146
bra_C0C7:
C - - - - - 0x0000D7 00:C0C7: E6 21     INC ram_frame_counter
C - - - - - 0x0000D9 00:C0C9: A9 00     LDA #$00
C D 2 - - - 0x0000DB 00:C0CB: 85 20     STA ram_nmi_trigger_flag
C D 2 - - - 0x0000DD 00:C0CD: 4C 6D C0  JMP loc_C06D_main_game_script_loop



sub_C0D0:
C D 2 - - - 0x0000E0 00:C0D0: A2 00     LDX #$00
C - - - - - 0x0000E2 00:C0D2: A5 23     LDA ram_0023
C - - - - - 0x0000E4 00:C0D4: F0 41     BEQ bra_C117
C D 2 - - - 0x0000E6 00:C0D6: A5 24     LDA ram_0024
C - - - - - 0x0000E8 00:C0D8: 29 03     AND #$03
C D 2 - - - 0x0000EA 00:C0DA: C9 01     CMP #$01
C - - - - - 0x0000EC 00:C0DC: EA        NOP ; bzk garbage
C D 2 - - - 0x0000ED 00:C0DD: EA        NOP
C D 2 - - - 0x0000EE 00:C0DE: A9 68     LDA #$68
C - - - - - 0x0000F0 00:C0E0: 85 10     STA ram_0010
C - - - - - 0x0000F2 00:C0E2: A0 67     LDY #$67
C - - - - - 0x0000F4 00:C0E4: A5 21     LDA ram_frame_counter
C - - - - - 0x0000F6 00:C0E6: 29 10     AND #$10
C - - - - - 0x0000F8 00:C0E8: D0 02     BNE bra_C0EC    ; each 16th frame
C - - - - - 0x0000FA 00:C0EA: A0 F7     LDY #$F7
bra_C0EC:
C - - - - - 0x0000FC 00:C0EC: 84 11     STY ram_0011
C D 2 - - - 0x0000FE 00:C0EE: A0 00     LDY #$00
bra_C0F0_loop:
C - - - - - 0x000100 00:C0F0: A5 11     LDA ram_0011
C - - - - - 0x000102 00:C0F2: 9D 00 07  STA ram_spr_Y,X
C - - - - - 0x000105 00:C0F5: E8        INX
C - - - - - 0x000106 00:C0F6: B9 23 C1  LDA tbl_C123_spr_T,Y
C - - - - - 0x000109 00:C0F9: C8        INY
C D 2 - - - 0x00010A 00:C0FA: 9D 00 07  STA ram_spr_T - $01,X
C - - - - - 0x00010D 00:C0FD: E8        INX
C - - - - - 0x00010E 00:C0FE: A9 02     LDA #$02
C - - - - - 0x000110 00:C100: 9D 00 07  STA ram_spr_A - $02,X
C - - - - - 0x000113 00:C103: E8        INX
C - - - - - 0x000114 00:C104: A5 10     LDA ram_0010
C - - - - - 0x000116 00:C106: 9D 00 07  STA ram_spr_X - $03,X
C - - - - - 0x000119 00:C109: 18        CLC
C - - - - - 0x00011A 00:C10A: 69 08     ADC #$08
C - - - - - 0x00011C 00:C10C: 85 10     STA ram_0010
C - - - - - 0x00011E 00:C10E: E8        INX
C - - - - - 0x00011F 00:C10F: E0 14     CPX #$14
C - - - - - 0x000121 00:C111: D0 DD     BNE bra_C0F0_loop
bra_C113_loop:
C - - - - - 0x000123 00:C113: E8        INX
C - - - - - 0x000124 00:C114: 10 FD     BPL bra_C113_loop
C - - - - - 0x000126 00:C116: 60        RTS
bra_C117:
C - - - - - 0x000127 00:C117: A9 F7     LDA #$F7
bra_C119_hide_all_sprites_loop:
C - - - - - 0x000129 00:C119: 9D 00 07  STA ram_spr_Y,X
C - - - - - 0x00012C 00:C11C: E8        INX
C - - - - - 0x00012D 00:C11D: E8        INX
C - - - - - 0x00012E 00:C11E: E8        INX
C - - - - - 0x00012F 00:C11F: E8        INX
C - - - - - 0x000130 00:C120: D0 F7     BNE bra_C119_hide_all_sprites_loop
C - - - - - 0x000132 00:C122: 60        RTS



tbl_C123_spr_T:
- D 2 - - - 0x000133 00:C123: D0        .byte $D0   ; 00
- D 2 - - - 0x000134 00:C124: D2        .byte $D2   ; 01
- D 2 - - - 0x000135 00:C125: DC        .byte $DC   ; 02
- D 2 - - - 0x000136 00:C126: CF        .byte $CF   ; 03
- D 2 - - - 0x000137 00:C127: D4        .byte $D4   ; 04



sub_C128:
; bzk optimize, Y is always 00
C - - - - - 0x000138 00:C128: B9 3E C1  LDA tbl_C13E,Y
C - - - - - 0x00013B 00:C12B: 85 1E     STA ram_001E
C - - - - - 0x00013D 00:C12D: B9 3F C1  LDA tbl_C13E + $01,Y
C - - - - - 0x000140 00:C130: 85 1F     STA ram_001F
C - - - - - 0x000142 00:C132: BA        TSX
C - - - - - 0x000143 00:C133: 8A        TXA
C - - - - - 0x000144 00:C134: BE 40 C1  LDX tbl_C140,Y
C - - - - - 0x000147 00:C137: 9D C1 00  STA a: ram_00C1,X
C - - - - - 0x00014A 00:C13A: 9A        TXS
C - - - - - 0x00014B 00:C13B: 6C 1E 00  JMP (ram_001E)



tbl_C13E:
- D 2 - - - 0x00014E 00:C13E: 4F C8     .word ofs_C84F

tbl_C140:
- D 2 - - - 0x000150 00:C140: 3F        .byte $3F   ; 



sub_C141:
C - - - - - 0x000151 00:C141: BA        TSX
C - - - - - 0x000152 00:C142: 8A        TXA
C - - - - - 0x000153 00:C143: 29 C0     AND #$C0
C - - - - - 0x000155 00:C145: A8        TAY
sub_C146:
C - - - - - 0x000156 00:C146: BA        TSX
C - - - - - 0x000157 00:C147: 8A        TXA
C - - - - - 0x000158 00:C148: BE 00 01  LDX ram_stack,Y
C - - - - - 0x00015B 00:C14B: 99 00 01  STA ram_stack,Y
C - - - - - 0x00015E 00:C14E: 9A        TXS
ofs_000_C14F_00_RTS:
ofs_001_C14F_00_RTS:
ofs_002_C14F_00_RTS:
ofs_003_C14F_00_RTS:
ofs_000_C14F_1A_RTS:
ofs_001_C14F_0B_RTS:
ofs_001_C14F_0C_RTS:
ofs_006_C14F_00_RTS:
C - - - - - 0x00015F 00:C14F: 60        RTS



sub_C150:
C - - - - - 0x000160 00:C150: 20 41 C2  JSR sub_C241_disable_rendering
bra_C153_loop:
C - - - - - 0x000163 00:C153: E4 2A     CPX ram_002A
C - - - - - 0x000165 00:C155: F0 1E     BEQ bra_C175
C - - - - - 0x000167 00:C157: BC 00 05  LDY ram_0500,X
C - - - - - 0x00016A 00:C15A: E8        INX
C - - - - - 0x00016B 00:C15B: BD 00 05  LDA ram_0500,X
C - - - - - 0x00016E 00:C15E: E8        INX
C - - - - - 0x00016F 00:C15F: 8D 06 20  STA $2006
C - - - - - 0x000172 00:C162: 8C 06 20  STY $2006
C - - - - - 0x000175 00:C165: BC 00 05  LDY ram_0500,X
C - - - - - 0x000178 00:C168: E8        INX
bra_C169_loop:
C - - - - - 0x000179 00:C169: BD 00 05  LDA ram_0500,X
C - - - - - 0x00017C 00:C16C: E8        INX
C - - - - - 0x00017D 00:C16D: 8D 07 20  STA $2007
C - - - - - 0x000180 00:C170: 88        DEY
C - - - - - 0x000181 00:C171: D0 F6     BNE bra_C169_loop
C - - - - - 0x000183 00:C173: F0 DE     BEQ bra_C153_loop    ; jmp
bra_C175:
C - - - - - 0x000185 00:C175: A2 00     LDX #$00
loc_C177_loop:
C D 2 - - - 0x000187 00:C177: E4 2B     CPX ram_002B
C - - - - - 0x000189 00:C179: F0 27     BEQ bra_C1A2
C - - - - - 0x00018B 00:C17B: BC C0 04  LDY ram_ppu_buffer,X
C - - - - - 0x00018E 00:C17E: E8        INX
C - - - - - 0x00018F 00:C17F: BD C0 04  LDA ram_ppu_buffer,X
C - - - - - 0x000192 00:C182: E8        INX
C - - - - - 0x000193 00:C183: 8D 06 20  STA $2006
C - - - - - 0x000196 00:C186: 8C 06 20  STY $2006
C - - - - - 0x000199 00:C189: BD C0 04  LDA ram_ppu_buffer,X
C - - - - - 0x00019C 00:C18C: E8        INX
C - - - - - 0x00019D 00:C18D: 85 1E     STA ram_001E
C - - - - - 0x00019F 00:C18F: BD C0 04  LDA ram_ppu_buffer,X
C - - - - - 0x0001A2 00:C192: E8        INX
C - - - - - 0x0001A3 00:C193: 85 1F     STA ram_001F
C - - - - - 0x0001A5 00:C195: AD 07 20  LDA $2007
C - - - - - 0x0001A8 00:C198: AD 07 20  LDA $2007
C - - - - - 0x0001AB 00:C19B: A0 08     LDY #$08
C - - - - - 0x0001AD 00:C19D: 91 1E     STA (ram_001E),Y
C - - - - - 0x0001AF 00:C19F: 4C 77 C1  JMP loc_C177_loop
bra_C1A2:
C - - - - - 0x0001B2 00:C1A2: 20 39 C2  JSR sub_C239_enable_rendering
C - - - - - 0x0001B5 00:C1A5: A9 00     LDA #$00
C - - - - - 0x0001B7 00:C1A7: 8D 05 20  STA $2005
C - - - - - 0x0001BA 00:C1AA: 8D 05 20  STA $2005
C - - - - - 0x0001BD 00:C1AD: A9 88     LDA #$88
C - - - - - 0x0001BF 00:C1AF: 8D 00 20  STA $2000
C - - - - - 0x0001C2 00:C1B2: A6 2B     LDX ram_002B
bra_C1B4_loop:
C - - - - - 0x0001C4 00:C1B4: EA        NOP ; bzk garbage
C - - - - - 0x0001C5 00:C1B5: EA        NOP
C - - - - - 0x0001C6 00:C1B6: E8        INX
C - - - - - 0x0001C7 00:C1B7: E0 40     CPX #$40
C - - - - - 0x0001C9 00:C1B9: D0 F9     BNE bra_C1B4_loop
C - - - - - 0x0001CB 00:C1BB: A6 2A     LDX ram_002A
bra_C1BD_loop:
C - - - - - 0x0001CD 00:C1BD: EA        NOP ; bzk garbage
C - - - - - 0x0001CE 00:C1BE: EA        NOP
C - - - - - 0x0001CF 00:C1BF: EA        NOP
C - - - - - 0x0001D0 00:C1C0: EA        NOP
C - - - - - 0x0001D1 00:C1C1: E8        INX
C - - - - - 0x0001D2 00:C1C2: D0 F9     BNE bra_C1BD_loop
C - - - - - 0x0001D4 00:C1C4: 86 2A     STX ram_002A
C - - - - - 0x0001D6 00:C1C6: 86 2B     STX ram_002B
C - - - - - 0x0001D8 00:C1C8: 60        RTS



sub_C1C9_read_joy_regs:
C - - - - - 0x0001D9 00:C1C9: A2 01     LDX #$01
C - - - - - 0x0001DB 00:C1CB: 8E 16 40  STX $4016
C - - - - - 0x0001DE 00:C1CE: CA        DEX
C - - - - - 0x0001DF 00:C1CF: 8E 16 40  STX $4016
C - - - - - 0x0001E2 00:C1D2: 20 49 C2  JSR sub_C249_read_regs
C - - - - - 0x0001E5 00:C1D5: E8        INX
C - - - - - 0x0001E6 00:C1D6: 20 49 C2  JSR sub_C249_read_regs
C - - - - - 0x0001E9 00:C1D9: A5 41     LDA ram_player_index
C - - - - - 0x0001EB 00:C1DB: 49 01     EOR #$01
C - - - - - 0x0001ED 00:C1DD: AA        TAX
C - - - - - 0x0001EE 00:C1DE: 76 10     ROR ram_0010,X
C - - - - - 0x0001F0 00:C1E0: 76 10     ROR ram_0010,X
C - - - - - 0x0001F2 00:C1E2: A6 41     LDX ram_player_index
C - - - - - 0x0001F4 00:C1E4: 76 10     ROR ram_0010,X
C - - - - - 0x0001F6 00:C1E6: 2A        ROL
C - - - - - 0x0001F7 00:C1E7: 76 10     ROR ram_0010,X
C - - - - - 0x0001F9 00:C1E9: 2A        ROL
C - - - - - 0x0001FA 00:C1EA: 29 03     AND #$03
C - - - - - 0x0001FC 00:C1EC: C9 01     CMP #$01
C - - - - - 0x0001FE 00:C1EE: 26 22     ROL ram_input_AB
C - - - - - 0x000200 00:C1F0: 66 11     ROR ram_0011
C - - - - - 0x000202 00:C1F2: 66 10     ROR ram_0010
C - - - - - 0x000204 00:C1F4: 26 24     ROL ram_0024
C - - - - - 0x000206 00:C1F6: 66 11     ROR ram_0011
C - - - - - 0x000208 00:C1F8: 66 10     ROR ram_0010
C - - - - - 0x00020A 00:C1FA: 26 25     ROL ram_0025
C - - - - - 0x00020C 00:C1FC: B5 10     LDA ram_0010,X
C - - - - - 0x00020E 00:C1FE: 29 0F     AND #$0F
C - - - - - 0x000210 00:C200: 4A        LSR
C - - - - - 0x000211 00:C201: 4A        LSR
C - - - - - 0x000212 00:C202: AA        TAX
C - - - - - 0x000213 00:C203: BD 58 C2  LDA tbl_C258,X
C - - - - - 0x000216 00:C206: A2 00     LDX #$00
C - - - - - 0x000218 00:C208: C5 26     CMP ram_input_dpad
C - - - - - 0x00021A 00:C20A: F0 01     BEQ bra_C20D
C - - - - - 0x00021C 00:C20C: E8        INX
bra_C20D:
C - - - - - 0x00021D 00:C20D: 85 26     STA ram_input_dpad
C - - - - - 0x00021F 00:C20F: 86 27     STX ram_0027
C - - - - - 0x000221 00:C211: A5 42     LDA ram_demo_flag
C - - - - - 0x000223 00:C213: F0 1F     BEQ bra_C234    ; if demo
; if not demo
C - - - - - 0x000225 00:C215: A5 4F     LDA ram_004F
C - - - - - 0x000227 00:C217: 05 4B     ORA ram_004B
C - - - - - 0x000229 00:C219: D0 19     BNE bra_C234
C - - - - - 0x00022B 00:C21B: AD 0F 04  LDA ram_040F
C - - - - - 0x00022E 00:C21E: F0 14     BEQ bra_C234
C - - - - - 0x000230 00:C220: A5 25     LDA ram_0025
C - - - - - 0x000232 00:C222: 29 03     AND #$03
C - - - - - 0x000234 00:C224: C9 01     CMP #$01
C - - - - - 0x000236 00:C226: D0 0B     BNE bra_C233_RTS
C - - - - - 0x000238 00:C228: 45 23     EOR ram_0023
C - - - - - 0x00023A 00:C22A: 85 23     STA ram_0023
C - - - - - 0x00023C 00:C22C: F0 05     BEQ bra_C233_RTS
C - - - - - 0x00023E 00:C22E: A9 01     LDA #$01
C - - - - - 0x000240 00:C230: 8D 00 06  STA ram_0600
bra_C233_RTS:
C - - - - - 0x000243 00:C233: 60        RTS
bra_C234:
C - - - - - 0x000244 00:C234: A9 00     LDA #$00
C - - - - - 0x000246 00:C236: 85 23     STA ram_0023
C - - - - - 0x000248 00:C238: 60        RTS



sub_C239_enable_rendering:
C - - - - - 0x000249 00:C239: A2 1E     LDX #$1E
C - - - - - 0x00024B 00:C23B: 8E 01 20  STX $2001
C - - - - - 0x00024E 00:C23E: 86 2D     STX ram_for_2001
C - - - - - 0x000250 00:C240: 60        RTS



sub_C241_disable_rendering:
C - - - - - 0x000251 00:C241: A2 00     LDX #$00
C - - - - - 0x000253 00:C243: 8E 01 20  STX $2001
C - - - - - 0x000256 00:C246: 86 2D     STX ram_for_2001
C - - - - - 0x000258 00:C248: 60        RTS



sub_C249_read_regs:
C - - - - - 0x000259 00:C249: A0 08     LDY #$08
bra_C24B_loop:
C - - - - - 0x00025B 00:C24B: BD 16 40  LDA $4016,X
C - - - - - 0x00025E 00:C24E: 29 03     AND #$03
C - - - - - 0x000260 00:C250: C9 01     CMP #$01
C - - - - - 0x000262 00:C252: 76 10     ROR ram_0010,X
C - - - - - 0x000264 00:C254: 88        DEY
C - - - - - 0x000265 00:C255: D0 F4     BNE bra_C24B_loop
C - - - - - 0x000267 00:C257: 60        RTS



tbl_C258:
- D 2 - - - 0x000268 00:C258: 00        .byte $00   ; 00 default
- D 2 - - - 0x000269 00:C259: FF        .byte $FF   ; 01 left
- D 2 - - - 0x00026A 00:C25A: 01        .byte $01   ; 02 right
; bzk garbage?
- - - - - - 0x00026B 00:C25B: 00        .byte $00   ; 03



sub_C25C:
C - - - - - 0x00026C 00:C25C: A5 3E     LDA ram_reset_check_1
C - - - - - 0x00026E 00:C25E: C9 5A     CMP #$5A
C - - - - - 0x000270 00:C260: D0 45     BNE bra_C2A7_first_game_launch
- - - - - - 0x000272 00:C262: A5 3F     LDA ram_reset_check_2
- - - - - - 0x000274 00:C264: C9 A5     CMP #$A5
- - - - - - 0x000276 00:C266: D0 3F     BNE bra_C2A7_first_game_launch
; soft reset code
- - - - - - 0x000278 00:C268: A5 41     LDA ram_player_index
- - - - - - 0x00027A 00:C26A: F0 03     BEQ bra_C26F_currently_1st_is_playing
- - - - - - 0x00027C 00:C26C: 20 81 CA  JSR sub_CA81
bra_C26F_currently_1st_is_playing:
- - - - - - 0x00027F 00:C26F: 20 B3 C2  JSR sub_C2B3
- - - - - - 0x000282 00:C272: 20 E5 C2  JSR sub_C2E5_clear_0020_00FF
- - - - - - 0x000285 00:C275: A2 01     LDX #$01
- - - - - - 0x000287 00:C277: B5 00     LDA ram_0000,X
- - - - - - 0x000289 00:C279: E8        INX ; 02
- - - - - - 0x00028A 00:C27A: 85 40     STA ram_game_mode
- - - - - - 0x00028C 00:C27C: B5 00     LDA ram_0000,X
- - - - - - 0x00028E 00:C27E: E8        INX ; 03
- - - - - - 0x00028F 00:C27F: 85 41     STA ram_player_index
- - - - - - 0x000291 00:C281: B5 00     LDA ram_0000,X
- - - - - - 0x000293 00:C283: E8        INX ; 04
- - - - - - 0x000294 00:C284: 85 4A     STA ram_004A
- - - - - - 0x000296 00:C286: B5 00     LDA ram_0000,X
- - - - - - 0x000298 00:C288: E8        INX ; 05
- - - - - - 0x000299 00:C289: 85 77     STA ram_0077
- - - - - - 0x00029B 00:C28B: A0 71     LDY #$71
- - - - - - 0x00029D 00:C28D: 20 97 C2  JSR sub_C297
- - - - - - 0x0002A0 00:C290: A0 B1     LDY #$B1
- - - - - - 0x0002A2 00:C292: 20 97 C2  JSR sub_C297
- - - - - - 0x0002A5 00:C295: A0 44     LDY #$44
sub_C297:
- - - - - - 0x0002A7 00:C297: A9 04     LDA #$04
- - - - - - 0x0002A9 00:C299: 85 00     STA ram_0000
bra_C29B_loop:
- - - - - - 0x0002AB 00:C29B: B5 00     LDA ram_0000,X
- - - - - - 0x0002AD 00:C29D: E8        INX
- - - - - - 0x0002AE 00:C29E: 99 00 00  STA ram_0000,Y
- - - - - - 0x0002B1 00:C2A1: C8        INY
- - - - - - 0x0002B2 00:C2A2: C6 00     DEC ram_0000
- - - - - - 0x0002B4 00:C2A4: D0 F5     BNE bra_C29B_loop
- - - - - - 0x0002B6 00:C2A6: 60        RTS
bra_C2A7_first_game_launch:
C - - - - - 0x0002B7 00:C2A7: 20 E5 C2  JSR sub_C2E5_clear_0020_00FF
C - - - - - 0x0002BA 00:C2AA: A9 02     LDA #$02
C - - - - - 0x0002BC 00:C2AC: 85 45     STA ram_max_score + $01
C - - - - - 0x0002BE 00:C2AE: A9 01     LDA #$01
C - - - - - 0x0002C0 00:C2B0: 85 77     STA ram_0077
C - - - - - 0x0002C2 00:C2B2: 60        RTS



sub_C2B3:
- - - - - - 0x0002C3 00:C2B3: A2 01     LDX #$01
- - - - - - 0x0002C5 00:C2B5: A5 40     LDA ram_game_mode
- - - - - - 0x0002C7 00:C2B7: 95 00     STA ram_0000,X
- - - - - - 0x0002C9 00:C2B9: E8        INX ; 02
- - - - - - 0x0002CA 00:C2BA: A5 41     LDA ram_player_index
- - - - - - 0x0002CC 00:C2BC: 95 00     STA ram_0000,X
- - - - - - 0x0002CE 00:C2BE: E8        INX ; 03
- - - - - - 0x0002CF 00:C2BF: A5 4A     LDA ram_004A
- - - - - - 0x0002D1 00:C2C1: 95 00     STA ram_0000,X
- - - - - - 0x0002D3 00:C2C3: E8        INX ; 04
- - - - - - 0x0002D4 00:C2C4: A5 77     LDA ram_0077
- - - - - - 0x0002D6 00:C2C6: 95 00     STA ram_0000,X
- - - - - - 0x0002D8 00:C2C8: E8        INX ; 05
- - - - - - 0x0002D9 00:C2C9: A0 71     LDY #< ram_current_score
- - - - - - 0x0002DB 00:C2CB: 20 D5 C2  JSR sub_C2D5
- - - - - - 0x0002DE 00:C2CE: A0 B1     LDY #< ram_00B1
- - - - - - 0x0002E0 00:C2D0: 20 D5 C2  JSR sub_C2D5
- - - - - - 0x0002E3 00:C2D3: A0 44     LDY #< ram_max_score
sub_C2D5:
- - - - - - 0x0002E5 00:C2D5: A9 04     LDA #$04
- - - - - - 0x0002E7 00:C2D7: 85 00     STA ram_0000
bra_C2D9_loop:
- - - - - - 0x0002E9 00:C2D9: B9 00 00  LDA ram_0000,Y
- - - - - - 0x0002EC 00:C2DC: C8        INY
- - - - - - 0x0002ED 00:C2DD: 95 00     STA ram_0000,X
- - - - - - 0x0002EF 00:C2DF: E8        INX
- - - - - - 0x0002F0 00:C2E0: C6 00     DEC ram_0000
- - - - - - 0x0002F2 00:C2E2: D0 F5     BNE bra_C2D9_loop
- - - - - - 0x0002F4 00:C2E4: 60        RTS



sub_C2E5_clear_0020_00FF:
C - - - - - 0x0002F5 00:C2E5: A2 20     LDX #$20
C - - - - - 0x0002F7 00:C2E7: A9 00     LDA #$00
bra_C2E9_loop:
C - - - - - 0x0002F9 00:C2E9: 95 00     STA ram_0000,X
C - - - - - 0x0002FB 00:C2EB: E8        INX
C - - - - - 0x0002FC 00:C2EC: D0 FB     BNE bra_C2E9_loop
C - - - - - 0x0002FE 00:C2EE: 60        RTS



vec_C2EF_NMI:
C - - - - - 0x0002FF 00:C2EF: 08        PHP
C - - - - - 0x000300 00:C2F0: 48        PHA
C - - - - - 0x000301 00:C2F1: 8A        TXA
C - - - - - 0x000302 00:C2F2: 48        PHA
C - - - - - 0x000303 00:C2F3: 98        TYA
C - - - - - 0x000304 00:C2F4: 48        PHA
; checking flag in case of lags in the game
; so sound engine won't be executed twice on the same frame
C - - - - - 0x000305 00:C2F5: A5 20     LDA ram_nmi_trigger_flag
C - - - - - 0x000307 00:C2F7: F0 03     BEQ bra_C2FC_skip_sound_engine
C - - - - - 0x000309 00:C2F9: 20 F1 F4  JSR sub_F4F1_update_sound_engine
bra_C2FC_skip_sound_engine:
C - - - - - 0x00030C 00:C2FC: E6 20     INC ram_nmi_trigger_flag
C - - - - - 0x00030E 00:C2FE: 68        PLA
C - - - - - 0x00030F 00:C2FF: A8        TAY
C - - - - - 0x000310 00:C300: 68        PLA
C - - - - - 0x000311 00:C301: AA        TAX
C - - - - - 0x000312 00:C302: 68        PLA
C - - - - - 0x000313 00:C303: 28        PLP
vec_C304_IRQ:
C - - - - - 0x000314 00:C304: 40        RTI



loc_C305:
sub_C305:
C D 2 - - - 0x000315 00:C305: A5 2C     LDA ram_index_oam
C - - - - - 0x000317 00:C307: 48        PHA
C - - - - - 0x000318 00:C308: A0 00     LDY #$00
C - - - - - 0x00031A 00:C30A: 84 11     STY ram_0011
C - - - - - 0x00031C 00:C30C: B1 1E     LDA (ram_001E),Y
C - - - - - 0x00031E 00:C30E: C8        INY
C - - - - - 0x00031F 00:C30F: 38        SEC
C - - - - - 0x000320 00:C310: E5 28     SBC ram_cam_pos_X_lo
C - - - - - 0x000322 00:C312: 85 10     STA ram_0010
C - - - - - 0x000324 00:C314: B1 1E     LDA (ram_001E),Y
C - - - - - 0x000326 00:C316: C8        INY
C - - - - - 0x000327 00:C317: E5 29     SBC ram_cam_pos_X_hi
C - - - - - 0x000329 00:C319: 06 10     ASL ram_0010
C - - - - - 0x00032B 00:C31B: 2A        ROL
C - - - - - 0x00032C 00:C31C: 06 10     ASL ram_0010
C - - - - - 0x00032E 00:C31E: 2A        ROL
C - - - - - 0x00032F 00:C31F: 06 10     ASL ram_0010
C - - - - - 0x000331 00:C321: 2A        ROL
C - - - - - 0x000332 00:C322: 90 02     BCC bra_C326
C - - - - - 0x000334 00:C324: C6 11     DEC ram_0011
bra_C326:
C - - - - - 0x000336 00:C326: 85 10     STA ram_0010
C - - - - - 0x000338 00:C328: B1 1E     LDA (ram_001E),Y
C - - - - - 0x00033A 00:C32A: C8        INY
C - - - - - 0x00033B 00:C32B: 85 16     STA ram_0016
C - - - - - 0x00033D 00:C32D: B1 1E     LDA (ram_001E),Y
C - - - - - 0x00033F 00:C32F: C8        INY
C - - - - - 0x000340 00:C330: 06 16     ASL ram_0016
C - - - - - 0x000342 00:C332: 2A        ROL
C - - - - - 0x000343 00:C333: 06 16     ASL ram_0016
C - - - - - 0x000345 00:C335: 2A        ROL
C - - - - - 0x000346 00:C336: 06 16     ASL ram_0016
C - - - - - 0x000348 00:C338: 2A        ROL
C - - - - - 0x000349 00:C339: 85 16     STA ram_0016
C - - - - - 0x00034B 00:C33B: 20 42 C3  JSR sub_C342
C - - - - - 0x00034E 00:C33E: 68        PLA
C - - - - - 0x00034F 00:C33F: C5 2C     CMP ram_index_oam
C - - - - - 0x000351 00:C341: 60        RTS



sub_C342:
C - - - - - 0x000352 00:C342: B1 1E     LDA (ram_001E),Y
loc_C344:
C D 2 - - - 0x000354 00:C344: 85 15     STA ram_0015
C - - - - - 0x000356 00:C346: 29 FE     AND #$FE
C - - - - - 0x000358 00:C348: AA        TAX
C - - - - - 0x000359 00:C349: BD 56 C3  LDA tbl_C356,X
C - - - - - 0x00035C 00:C34C: 85 1C     STA ram_001C
C - - - - - 0x00035E 00:C34E: BD 57 C3  LDA tbl_C356 + $01,X
C - - - - - 0x000361 00:C351: 85 1D     STA ram_001D
C - - - - - 0x000363 00:C353: 6C 1C 00  JMP (ram_001C)



tbl_C356:
- D 2 - - - 0x000366 00:C356: 4F C1     .word ofs_000_C14F_00_RTS
- D 2 - - - 0x000368 00:C358: C0 C3     .word ofs_000_C3C0_02
- D 2 - - - 0x00036A 00:C35A: A8 C4     .word ofs_000_C4A8_04
- D 2 - - - 0x00036C 00:C35C: B0 C4     .word ofs_000_C4B0_06
- D 2 - - - 0x00036E 00:C35E: C6 C4     .word ofs_000_C4C6_08
- D 2 - - - 0x000370 00:C360: F5 C4     .word ofs_000_C4F5_0A
- D 2 - - - 0x000372 00:C362: 18 C5     .word ofs_000_C518_0C
- D 2 - - - 0x000374 00:C364: 10 C5     .word ofs_000_C510_0E
- D 2 - - - 0x000376 00:C366: 21 C5     .word ofs_000_C521_10
- D 2 - - - 0x000378 00:C368: A3 C5     .word ofs_000_C5A3_12
- D 2 - - - 0x00037A 00:C36A: B2 C5     .word ofs_000_C5B2_14
- D 2 - - - 0x00037C 00:C36C: F6 C5     .word ofs_000_C5F6_16
- D 2 - - - 0x00037E 00:C36E: 1E C6     .word ofs_000_C61E_18
- - - - - - 0x000380 00:C370: 4F C1     .word ofs_000_C14F_1A_RTS
- D 2 - - - 0x000382 00:C372: 87 C6     .word ofs_000_C687_1C_NAMCOT
- D 2 - - - 0x000384 00:C374: AC C6     .word ofs_000_C6AC_1E
- D 2 - - - 0x000386 00:C376: C1 C6     .word ofs_000_C6C1_20
- D 2 - - - 0x000388 00:C378: 7C C3     .word ofs_000_C37C_22
- D 2 - - - 0x00038A 00:C37A: A7 C3     .word ofs_000_C3A7_24



ofs_000_C37C_22:
C - - J - - 0x00038C 00:C37C: A9 AE     LDA #$AE
C - - - - - 0x00038E 00:C37E: 85 12     STA ram_0012
C - - - - - 0x000390 00:C380: A9 00     LDA #$00
C - - - - - 0x000392 00:C382: 85 14     STA ram_0014
C - - - - - 0x000394 00:C384: A9 03     LDA #$03
C - - - - - 0x000396 00:C386: 85 13     STA ram_0013
C - - - - - 0x000398 00:C388: A5 1E     LDA ram_001E
C - - - - - 0x00039A 00:C38A: C9 20     CMP #$20
C - - - - - 0x00039C 00:C38C: D0 04     BNE bra_C392
C - - - - - 0x00039E 00:C38E: A9 66     LDA #$66
C - - - - - 0x0003A0 00:C390: 85 12     STA ram_0012
bra_C392:
C - - - - - 0x0003A2 00:C392: 20 15 C4  JSR sub_C415_write_spr_data
C - - - - - 0x0003A5 00:C395: A9 67     LDA #$67
C - - - - - 0x0003A7 00:C397: 85 12     STA ram_0012
C - - - - - 0x0003A9 00:C399: A5 10     LDA ram_0010
C - - - - - 0x0003AB 00:C39B: 18        CLC
C - - - - - 0x0003AC 00:C39C: 69 08     ADC #$08
C - - - - - 0x0003AE 00:C39E: 85 10     STA ram_0010
C - - - - - 0x0003B0 00:C3A0: 90 02     BCC bra_C3A4_not_overflow
- - - - - - 0x0003B2 00:C3A2: E6 11     INC ram_0011
bra_C3A4_not_overflow:
C - - - - - 0x0003B4 00:C3A4: 4C 15 C4  JMP loc_C415_write_spr_data



ofs_000_C3A7_24:
C - - J - - 0x0003B7 00:C3A7: A0 07     LDY #$07
C - - - - - 0x0003B9 00:C3A9: B1 1E     LDA (ram_001E),Y
C - - - - - 0x0003BB 00:C3AB: 29 08     AND #$08
C - - - - - 0x0003BD 00:C3AD: F0 10     BEQ bra_C3BF_RTS
C - - - - - 0x0003BF 00:C3AF: A9 06     LDA #$06
C - - - - - 0x0003C1 00:C3B1: 4C 44 C3  JMP loc_C344



sub_C3B4:
C - - - - - 0x0003C4 00:C3B4: A0 05     LDY #$05
C - - - - - 0x0003C6 00:C3B6: B1 1E     LDA (ram_001E),Y
C - - - - - 0x0003C8 00:C3B8: AA        TAX
C - - - - - 0x0003C9 00:C3B9: BD 7C C4  LDA tbl_C47C,X
C - - - - - 0x0003CC 00:C3BC: 85 13     STA ram_0013
C - - - - - 0x0003CE 00:C3BE: 8A        TXA
bra_C3BF_RTS:
C - - - - - 0x0003CF 00:C3BF: 60        RTS



ofs_000_C3C0_02:
C - - J - - 0x0003D0 00:C3C0: 20 B4 C3  JSR sub_C3B4
C - - - - - 0x0003D3 00:C3C3: 0A        ASL
C - - - - - 0x0003D4 00:C3C4: 0A        ASL
C - - - - - 0x0003D5 00:C3C5: 85 12     STA ram_0012
C - - - - - 0x0003D7 00:C3C7: A0 07     LDY #$07
C - - - - - 0x0003D9 00:C3C9: B1 1E     LDA (ram_001E),Y
C - - - - - 0x0003DB 00:C3CB: 4A        LSR
C - - - - - 0x0003DC 00:C3CC: 4A        LSR
C - - - - - 0x0003DD 00:C3CD: 29 03     AND #$03
C - - - - - 0x0003DF 00:C3CF: 05 12     ORA ram_0012
loc_C3D1:
C D 2 - - - 0x0003E1 00:C3D1: AA        TAX
C - - - - - 0x0003E2 00:C3D2: BD 80 C4  LDA tbl_C480,X
C - - - - - 0x0003E5 00:C3D5: 85 12     STA ram_0012
loc_C3D7:
sub_C3D7:
C D 2 - - - 0x0003E7 00:C3D7: A0 06     LDY #$06
C - - - - - 0x0003E9 00:C3D9: B1 1E     LDA (ram_001E),Y
C - - - - - 0x0003EB 00:C3DB: 30 06     BMI bra_C3E3
C - - - - - 0x0003ED 00:C3DD: A5 13     LDA ram_0013
C - - - - - 0x0003EF 00:C3DF: 49 40     EOR #$40
C - - - - - 0x0003F1 00:C3E1: 85 13     STA ram_0013
bra_C3E3:
sub_C3E3:
loc_C3E3:
C D 2 - - - 0x0003F3 00:C3E3: A5 13     LDA ram_0013
C - - - - - 0x0003F5 00:C3E5: 2A        ROL
C - - - - - 0x0003F6 00:C3E6: 2A        ROL
C - - - - - 0x0003F7 00:C3E7: 2A        ROL
C - - - - - 0x0003F8 00:C3E8: 29 03     AND #$03
C - - - - - 0x0003FA 00:C3EA: 85 14     STA ram_0014
loc_C3EC:
C D 2 - - - 0x0003FC 00:C3EC: 20 01 C4  JSR sub_C401
C - - - - - 0x0003FF 00:C3EF: A5 10     LDA ram_0010
C - - - - - 0x000401 00:C3F1: 38        SEC
C - - - - - 0x000402 00:C3F2: E9 08     SBC #$08
C - - - - - 0x000404 00:C3F4: 85 10     STA ram_0010
C - - - - - 0x000406 00:C3F6: B0 02     BCS bra_C3FA
C - - - - - 0x000408 00:C3F8: C6 11     DEC ram_0011
bra_C3FA:
C - - - - - 0x00040A 00:C3FA: A5 16     LDA ram_0016
C - - - - - 0x00040C 00:C3FC: 18        CLC
C - - - - - 0x00040D 00:C3FD: 69 08     ADC #$08
C - - - - - 0x00040F 00:C3FF: 85 16     STA ram_0016
sub_C401:
C - - - - - 0x000411 00:C401: 20 0F C4  JSR sub_C40F
C - - - - - 0x000414 00:C404: A5 10     LDA ram_0010
C - - - - - 0x000416 00:C406: 18        CLC
C - - - - - 0x000417 00:C407: 69 08     ADC #$08
C - - - - - 0x000419 00:C409: 85 10     STA ram_0010
C - - - - - 0x00041B 00:C40B: 90 02     BCC bra_C40F_not_overflow
C - - - - - 0x00041D 00:C40D: E6 11     INC ram_0011
bra_C40F_not_overflow:
sub_C40F:
C - - - - - 0x00041F 00:C40F: 20 15 C4  JSR sub_C415_write_spr_data
C - - - - - 0x000422 00:C412: E6 12     INC ram_0012
C - - - - - 0x000424 00:C414: 60        RTS



sub_C415_write_spr_data:
loc_C415_write_spr_data:
; for a single sprite (4 bytes)
C D 2 - - - 0x000425 00:C415: A5 11     LDA ram_0011
C - - - - - 0x000427 00:C417: D0 3B     BNE bra_C454_RTS
C - - - - - 0x000429 00:C419: A5 10     LDA ram_0010
C - - - - - 0x00042B 00:C41B: C9 F9     CMP #$F9
C - - - - - 0x00042D 00:C41D: B0 35     BCS bra_C454_RTS
C - - - - - 0x00042F 00:C41F: A6 2C     LDX ram_index_oam
C - - - - - 0x000431 00:C421: E0 34     CPX #$34
C - - - - - 0x000433 00:C423: 90 0E     BCC bra_C433
C - - - - - 0x000435 00:C425: A5 21     LDA ram_frame_counter
C - - - - - 0x000437 00:C427: 29 0F     AND #$0F
C - - - - - 0x000439 00:C429: A8        TAY
C - - - - - 0x00043A 00:C42A: 8A        TXA
C - - - - - 0x00043B 00:C42B: 59 55 C4  EOR tbl_C455,Y
C - - - - - 0x00043E 00:C42E: C9 34     CMP #$34
C - - - - - 0x000440 00:C430: 90 01     BCC bra_C433
C - - - - - 0x000442 00:C432: AA        TAX
bra_C433:
C - - - - - 0x000443 00:C433: A5 16     LDA ram_0016
C - - - - - 0x000445 00:C435: 38        SEC
C - - - - - 0x000446 00:C436: E9 01     SBC #$01
C - - - - - 0x000448 00:C438: 9D 00 07  STA ram_spr_Y,X
C - - - - - 0x00044B 00:C43B: A5 12     LDA ram_0012
C - - - - - 0x00044D 00:C43D: 45 14     EOR ram_0014
C - - - - - 0x00044F 00:C43F: 9D 01 07  STA ram_spr_T,X
C - - - - - 0x000452 00:C442: 20 65 C4  JSR sub_C465
C - - - - - 0x000455 00:C445: 9D 02 07  STA ram_spr_A,X
C - - - - - 0x000458 00:C448: A5 10     LDA ram_0010
C - - - - - 0x00045A 00:C44A: 9D 03 07  STA ram_spr_X,X
C - - - - - 0x00045D 00:C44D: A5 2C     LDA ram_index_oam
C - - - - - 0x00045F 00:C44F: 18        CLC
C - - - - - 0x000460 00:C450: 69 04     ADC #$04
C - - - - - 0x000462 00:C452: 85 2C     STA ram_index_oam
bra_C454_RTS:
C - - - - - 0x000464 00:C454: 60        RTS



tbl_C455:
- D 2 - - - 0x000465 00:C455: 00        .byte $00   ; 00
- D 2 - - - 0x000466 00:C456: F0        .byte $F0   ; 01
- D 2 - - - 0x000467 00:C457: 20        .byte $20   ; 02
- D 2 - - - 0x000468 00:C458: D0        .byte $D0   ; 03
- D 2 - - - 0x000469 00:C459: 40        .byte $40   ; 04
- D 2 - - - 0x00046A 00:C45A: B0        .byte $B0   ; 05
- D 2 - - - 0x00046B 00:C45B: 60        .byte $60   ; 06
- D 2 - - - 0x00046C 00:C45C: 90        .byte $90   ; 07
- D 2 - - - 0x00046D 00:C45D: 80        .byte $80   ; 08
- D 2 - - - 0x00046E 00:C45E: 70        .byte $70   ; 09
- D 2 - - - 0x00046F 00:C45F: A0        .byte $A0   ; 0A
- D 2 - - - 0x000470 00:C460: 50        .byte $50   ; 0B
- D 2 - - - 0x000471 00:C461: C0        .byte $C0   ; 0C
- D 2 - - - 0x000472 00:C462: 30        .byte $30   ; 0D
- D 2 - - - 0x000473 00:C463: E0        .byte $E0   ; 0E
- D 2 - - - 0x000474 00:C464: 10        .byte $10   ; 0F



sub_C465:
C - - - - - 0x000475 00:C465: A5 7C     LDA ram_bonus_round
C - - - - - 0x000477 00:C467: D0 10     BNE bra_C479    ; if it is a bonus round
C - - - - - 0x000479 00:C469: A5 15     LDA ram_0015
C - - - - - 0x00047B 00:C46B: 4A        LSR
C - - - - - 0x00047C 00:C46C: B0 06     BCS bra_C474
C - - - - - 0x00047E 00:C46E: A5 16     LDA ram_0016
C - - - - - 0x000480 00:C470: C9 40     CMP #$40
C - - - - - 0x000482 00:C472: B0 05     BCS bra_C479
bra_C474:
C - - - - - 0x000484 00:C474: A5 13     LDA ram_0013
C - - - - - 0x000486 00:C476: 09 20     ORA #$20
C - - - - - 0x000488 00:C478: 60        RTS
bra_C479:
C - - - - - 0x000489 00:C479: A5 13     LDA ram_0013
C - - - - - 0x00048B 00:C47B: 60        RTS



tbl_C47C:
- D 2 - - - 0x00048C 00:C47C: 00        .byte $00   ; 00
- D 2 - - - 0x00048D 00:C47D: 02        .byte $02   ; 01
- D 2 - - - 0x00048E 00:C47E: 02        .byte $02   ; 02
- D 2 - - - 0x00048F 00:C47F: 01        .byte $01   ; 03



tbl_C480:
- D 2 - - - 0x000490 00:C480: 04        .byte $04   ; 00
- D 2 - - - 0x000491 00:C481: 00        .byte $00   ; 01
- D 2 - - - 0x000492 00:C482: 04        .byte $04   ; 02
- D 2 - - - 0x000493 00:C483: 00        .byte $00   ; 03
- D 2 - - - 0x000494 00:C484: 74        .byte $74   ; 04
- D 2 - - - 0x000495 00:C485: 78        .byte $78   ; 05
- D 2 - - - 0x000496 00:C486: 7C        .byte $7C   ; 06
- D 2 - - - 0x000497 00:C487: A4        .byte $A4   ; 07
- D 2 - - - 0x000498 00:C488: 34        .byte $34   ; 08
- D 2 - - - 0x000499 00:C489: 38        .byte $38   ; 09
- D 2 - - - 0x00049A 00:C48A: 34        .byte $34   ; 0A
- D 2 - - - 0x00049B 00:C48B: 30        .byte $30   ; 0B
- D 2 - - - 0x00049C 00:C48C: 1C        .byte $1C   ; 0C
- D 2 - - - 0x00049D 00:C48D: 18        .byte $18   ; 0D
- D 2 - - - 0x00049E 00:C48E: 1C        .byte $1C   ; 0E
- D 2 - - - 0x00049F 00:C48F: 18        .byte $18   ; 0F
- D 2 - - - 0x0004A0 00:C490: 10        .byte $10   ; 10
- D 2 - - - 0x0004A1 00:C491: 74        .byte $74   ; 11
- D 2 - - - 0x0004A2 00:C492: 48        .byte $48   ; 12
- D 2 - - - 0x0004A3 00:C493: 28        .byte $28   ; 13
- D 2 - - - 0x0004A4 00:C494: 08        .byte $08   ; 14
- D 2 - - - 0x0004A5 00:C495: 0C        .byte $0C   ; 15
- D 2 - - - 0x0004A6 00:C496: 08        .byte $08   ; 16
- D 2 - - - 0x0004A7 00:C497: 0C        .byte $0C   ; 17
- D 2 - - - 0x0004A8 00:C498: 74        .byte $74   ; 18
- D 2 - - - 0x0004A9 00:C499: 78        .byte $78   ; 19
- D 2 - - - 0x0004AA 00:C49A: 7C        .byte $7C   ; 1A
- D 2 - - - 0x0004AB 00:C49B: A4        .byte $A4   ; 1B
- D 2 - - - 0x0004AC 00:C49C: 40        .byte $40   ; 1C
- D 2 - - - 0x0004AD 00:C49D: 44        .byte $44   ; 1D
- D 2 - - - 0x0004AE 00:C49E: 40        .byte $40   ; 1E
- D 2 - - - 0x0004AF 00:C49F: 44        .byte $44   ; 1F
- D 2 - - - 0x0004B0 00:C4A0: 20        .byte $20   ; 20
- D 2 - - - 0x0004B1 00:C4A1: 24        .byte $24   ; 21
- D 2 - - - 0x0004B2 00:C4A2: 20        .byte $20   ; 22
- D 2 - - - 0x0004B3 00:C4A3: 24        .byte $24   ; 23
- D 2 - - - 0x0004B4 00:C4A4: 14        .byte $14   ; 24
- - - - - - 0x0004B5 00:C4A5: A8        .byte $A8   ; 25
- D 2 - - - 0x0004B6 00:C4A6: 4C        .byte $4C   ; 26
- D 2 - - - 0x0004B7 00:C4A7: 2C        .byte $2C   ; 27



ofs_000_C4A8_04:
C - - J - - 0x0004B8 00:C4A8: 20 B4 C3  JSR sub_C3B4
C - - - - - 0x0004BB 00:C4AB: 09 10     ORA #$10
C - - - - - 0x0004BD 00:C4AD: 4C D1 C3  JMP loc_C3D1



ofs_000_C4B0_06:
C - - J - - 0x0004C0 00:C4B0: 20 B4 C3  JSR sub_C3B4
C - - - - - 0x0004C3 00:C4B3: 0A        ASL
C - - - - - 0x0004C4 00:C4B4: 0A        ASL
C - - - - - 0x0004C5 00:C4B5: 69 14     ADC #$14
C - - - - - 0x0004C7 00:C4B7: 85 12     STA ram_0012
C - - - - - 0x0004C9 00:C4B9: A0 07     LDY #$07
C - - - - - 0x0004CB 00:C4BB: B1 1E     LDA (ram_001E),Y
C - - - - - 0x0004CD 00:C4BD: 29 0C     AND #$0C
C - - - - - 0x0004CF 00:C4BF: 4A        LSR
C - - - - - 0x0004D0 00:C4C0: 4A        LSR
C - - - - - 0x0004D1 00:C4C1: 05 12     ORA ram_0012
C - - - - - 0x0004D3 00:C4C3: 4C D1 C3  JMP loc_C3D1



ofs_000_C4C6_08:
C - - J - - 0x0004D6 00:C4C6: A5 21     LDA ram_frame_counter
C - - - - - 0x0004D8 00:C4C8: 4A        LSR
C - - - - - 0x0004D9 00:C4C9: 29 03     AND #$03
C - - - - - 0x0004DB 00:C4CB: 85 13     STA ram_0013
C - - - - - 0x0004DD 00:C4CD: A9 50     LDA #$50
C - - - - - 0x0004DF 00:C4CF: 85 12     STA ram_0012
C - - - - - 0x0004E1 00:C4D1: A0 06     LDY #$06
C - - - - - 0x0004E3 00:C4D3: B1 1E     LDA (ram_001E),Y
C - - - - - 0x0004E5 00:C4D5: 30 06     BMI bra_C4DD
C - - - - - 0x0004E7 00:C4D7: A5 13     LDA ram_0013
C - - - - - 0x0004E9 00:C4D9: 09 40     ORA #$40
C - - - - - 0x0004EB 00:C4DB: 85 13     STA ram_0013
bra_C4DD:
C - - - - - 0x0004ED 00:C4DD: 20 E3 C3  JSR sub_C3E3
C - - - - - 0x0004F0 00:C4E0: A5 10     LDA ram_0010
C - - - - - 0x0004F2 00:C4E2: 38        SEC
C - - - - - 0x0004F3 00:C4E3: E9 08     SBC #$08
C - - - - - 0x0004F5 00:C4E5: 85 10     STA ram_0010
C - - - - - 0x0004F7 00:C4E7: B0 02     BCS bra_C4EB
C - - - - - 0x0004F9 00:C4E9: C6 11     DEC ram_0011
bra_C4EB:
C - - - - - 0x0004FB 00:C4EB: A5 16     LDA ram_0016
C - - - - - 0x0004FD 00:C4ED: 18        CLC
C - - - - - 0x0004FE 00:C4EE: 69 08     ADC #$08
C - - - - - 0x000500 00:C4F0: 85 16     STA ram_0016
C - - - - - 0x000502 00:C4F2: 4C E3 C3  JMP loc_C3E3



ofs_000_C4F5_0A:
C - - J - - 0x000505 00:C4F5: A9 3C     LDA #$3C
C - - - - - 0x000507 00:C4F7: 85 12     STA ram_0012
C - - - - - 0x000509 00:C4F9: A0 05     LDY #$05
C - - - - - 0x00050B 00:C4FB: B1 1E     LDA (ram_001E),Y
C - - - - - 0x00050D 00:C4FD: C9 01     CMP #$01
C - - - - - 0x00050F 00:C4FF: D0 08     BNE bra_C509
C - - - - - 0x000511 00:C501: A0 41     LDY #$41
C - - - - - 0x000513 00:C503: A5 21     LDA ram_frame_counter
C - - - - - 0x000515 00:C505: 29 10     AND #$10
C - - - - - 0x000517 00:C507: D0 02     BNE bra_C50B    ; each 16th frame
bra_C509:
C - - - - - 0x000519 00:C509: A0 01     LDY #$01
bra_C50B:
C - - - - - 0x00051B 00:C50B: 84 13     STY ram_0013
C - - - - - 0x00051D 00:C50D: 4C E3 C3  JMP loc_C3E3



ofs_000_C510_0E:
C - - J - - 0x000520 00:C510: A0 07     LDY #$07
C - - - - - 0x000522 00:C512: B1 1E     LDA (ram_001E),Y
C - - - - - 0x000524 00:C514: 29 08     AND #$08
C - - - - - 0x000526 00:C516: D0 08     BNE bra_C520_RTS
ofs_000_C518_0C:
C - - J - - 0x000528 00:C518: 20 B4 C3  JSR sub_C3B4
C - - - - - 0x00052B 00:C51B: 09 24     ORA #$24
C - - - - - 0x00052D 00:C51D: 4C D1 C3  JMP loc_C3D1
bra_C520_RTS:
C - - - - - 0x000530 00:C520: 60        RTS



ofs_000_C521_10:
C - - J - - 0x000531 00:C521: A5 21     LDA ram_frame_counter
C - - - - - 0x000533 00:C523: 4A        LSR
C - - - - - 0x000534 00:C524: 29 03     AND #$03
C - - - - - 0x000536 00:C526: 85 13     STA ram_0013
C - - - - - 0x000538 00:C528: A9 00     LDA #$00
C - - - - - 0x00053A 00:C52A: 85 14     STA ram_0014
C - - - - - 0x00053C 00:C52C: A0 07     LDY #$07
C - - - - - 0x00053E 00:C52E: B1 1E     LDA (ram_001E),Y
C - - - - - 0x000540 00:C530: 08        PHP
C - - - - - 0x000541 00:C531: 0A        ASL
C - - - - - 0x000542 00:C532: AA        TAX
C - - - - - 0x000543 00:C533: 20 40 C5  JSR sub_C540
C - - - - - 0x000546 00:C536: A2 28     LDX #$28
C - - - - - 0x000548 00:C538: 20 40 C5  JSR sub_C540
C - - - - - 0x00054B 00:C53B: 28        PLP
C - - - - - 0x00054C 00:C53C: 10 24     BPL bra_C562_RTS
C - - - - - 0x00054E 00:C53E: A2 2C     LDX #$2C
sub_C540:
C - - - - - 0x000550 00:C540: 20 43 C5  JSR sub_C543
sub_C543:
C - - - - - 0x000553 00:C543: 20 63 C5  JSR sub_C563
C - - - - - 0x000556 00:C546: A5 16     LDA ram_0016
C - - - - - 0x000558 00:C548: 18        CLC
C - - - - - 0x000559 00:C549: 69 08     ADC #$08
C - - - - - 0x00055B 00:C54B: 85 16     STA ram_0016
C - - - - - 0x00055D 00:C54D: 20 63 C5  JSR sub_C563
C - - - - - 0x000560 00:C550: A5 16     LDA ram_0016
C - - - - - 0x000562 00:C552: 38        SEC
C - - - - - 0x000563 00:C553: E9 08     SBC #$08
C - - - - - 0x000565 00:C555: 85 16     STA ram_0016
C - - - - - 0x000567 00:C557: A5 10     LDA ram_0010
C - - - - - 0x000569 00:C559: 18        CLC
C - - - - - 0x00056A 00:C55A: 69 08     ADC #$08
C - - - - - 0x00056C 00:C55C: 85 10     STA ram_0010
C - - - - - 0x00056E 00:C55E: 90 02     BCC bra_C562_RTS
C - - - - - 0x000570 00:C560: E6 11     INC ram_0011
bra_C562_RTS:
C - - - - - 0x000572 00:C562: 60        RTS



sub_C563:
C - - - - - 0x000573 00:C563: BD 73 C5  LDA tbl_C573,X
C - - - - - 0x000576 00:C566: F0 09     BEQ bra_C571
C - - - - - 0x000578 00:C568: 85 12     STA ram_0012
C - - - - - 0x00057A 00:C56A: 86 17     STX ram_0017
C - - - - - 0x00057C 00:C56C: 20 15 C4  JSR sub_C415_write_spr_data
C - - - - - 0x00057F 00:C56F: A6 17     LDX ram_0017
bra_C571:
C - - - - - 0x000581 00:C571: E8        INX
C - - - - - 0x000582 00:C572: 60        RTS



tbl_C573:
- D 2 - - - 0x000583 00:C573: 00        .byte $00   ; 00
- D 2 - - - 0x000584 00:C574: 00        .byte $00   ; 01
- D 2 - - - 0x000585 00:C575: 58        .byte $58   ; 02
- D 2 - - - 0x000586 00:C576: 5C        .byte $5C   ; 03
- D 2 - - - 0x000587 00:C577: 00        .byte $00   ; 04
- D 2 - - - 0x000588 00:C578: 00        .byte $00   ; 05
- D 2 - - - 0x000589 00:C579: 5E        .byte $5E   ; 06
- D 2 - - - 0x00058A 00:C57A: 5F        .byte $5F   ; 07
- D 2 - - - 0x00058B 00:C57B: 00        .byte $00   ; 08
- D 2 - - - 0x00058C 00:C57C: 00        .byte $00   ; 09
- D 2 - - - 0x00058D 00:C57D: 58        .byte $58   ; 0A
- D 2 - - - 0x00058E 00:C57E: 64        .byte $64   ; 0B
- - - - - - 0x00058F 00:C57F: 5A        .byte $5A   ; 0C
- - - - - - 0x000590 00:C580: 5B        .byte $5B   ; 0D
- - - - - - 0x000591 00:C581: 58        .byte $58   ; 0E
- - - - - - 0x000592 00:C582: 5C        .byte $5C   ; 0F
- - - - - - 0x000593 00:C583: 5A        .byte $5A   ; 10
- - - - - - 0x000594 00:C584: 5B        .byte $5B   ; 11
- - - - - - 0x000595 00:C585: 62        .byte $62   ; 12
- - - - - - 0x000596 00:C586: 63        .byte $63   ; 13
- - - - - - 0x000597 00:C587: 58        .byte $58   ; 14
- - - - - - 0x000598 00:C588: 5C        .byte $5C   ; 15
- - - - - - 0x000599 00:C589: 58        .byte $58   ; 16
- - - - - - 0x00059A 00:C58A: 59        .byte $59   ; 17
- - - - - - 0x00059B 00:C58B: 58        .byte $58   ; 18
- - - - - - 0x00059C 00:C58C: 5D        .byte $5D   ; 19
- - - - - - 0x00059D 00:C58D: 58        .byte $58   ; 1A
- - - - - - 0x00059E 00:C58E: 59        .byte $59   ; 1B
- - - - - - 0x00059F 00:C58F: 5E        .byte $5E   ; 1C
- - - - - - 0x0005A0 00:C590: 5F        .byte $5F   ; 1D
- - - - - - 0x0005A1 00:C591: 58        .byte $58   ; 1E
- - - - - - 0x0005A2 00:C592: 59        .byte $59   ; 1F
- - - - - - 0x0005A3 00:C593: 60        .byte $60   ; 20
- - - - - - 0x0005A4 00:C594: 61        .byte $61   ; 21
- - - - - - 0x0005A5 00:C595: 58        .byte $58   ; 22
- - - - - - 0x0005A6 00:C596: 59        .byte $59   ; 23
- - - - - - 0x0005A7 00:C597: 62        .byte $62   ; 24
- - - - - - 0x0005A8 00:C598: 63        .byte $63   ; 25
- - - - - - 0x0005A9 00:C599: 58        .byte $58   ; 26
- - - - - - 0x0005AA 00:C59A: 59        .byte $59   ; 27
- D 2 - - - 0x0005AB 00:C59B: 58        .byte $58   ; 28
- D 2 - - - 0x0005AC 00:C59C: 59        .byte $59   ; 29
- D 2 - - - 0x0005AD 00:C59D: 58        .byte $58   ; 2A
- D 2 - - - 0x0005AE 00:C59E: 59        .byte $59   ; 2B
- D 2 - - - 0x0005AF 00:C59F: 00        .byte $00   ; 2C
- D 2 - - - 0x0005B0 00:C5A0: 65        .byte $65   ; 2D
- D 2 - - - 0x0005B1 00:C5A1: 58        .byte $58   ; 2E
- D 2 - - - 0x0005B2 00:C5A2: 5C        .byte $5C   ; 2F



ofs_000_C5A3_12:
C - - J - - 0x0005B3 00:C5A3: A9 02     LDA #$02
C - - - - - 0x0005B5 00:C5A5: 85 13     STA ram_0013
C - - - - - 0x0005B7 00:C5A7: A9 70     LDA #$70
C - - - - - 0x0005B9 00:C5A9: 85 12     STA ram_0012
C - - - - - 0x0005BB 00:C5AB: A9 00     LDA #$00
C - - - - - 0x0005BD 00:C5AD: 85 14     STA ram_0014
C - - - - - 0x0005BF 00:C5AF: 4C EC C3  JMP loc_C3EC



loc_C5B2:
ofs_000_C5B2_14:
C D 2 J - - 0x0005C2 00:C5B2: A9 02     LDA #$02
C - - - - - 0x0005C4 00:C5B4: 85 13     STA ram_0013
C - - - - - 0x0005C6 00:C5B6: A9 00     LDA #$00
C - - - - - 0x0005C8 00:C5B8: 85 14     STA ram_0014
C - - - - - 0x0005CA 00:C5BA: A9 69     LDA #$69
C - - - - - 0x0005CC 00:C5BC: 85 12     STA ram_0012
C - - - - - 0x0005CE 00:C5BE: A5 10     LDA ram_0010
C - - - - - 0x0005D0 00:C5C0: 38        SEC
C - - - - - 0x0005D1 00:C5C1: E9 08     SBC #$08
C - - - - - 0x0005D3 00:C5C3: 85 10     STA ram_0010
C - - - - - 0x0005D5 00:C5C5: B0 02     BCS bra_C5C9
- - - - - - 0x0005D7 00:C5C7: C6 11     DEC ram_0011
bra_C5C9:
C - - - - - 0x0005D9 00:C5C9: A5 16     LDA ram_0016
C - - - - - 0x0005DB 00:C5CB: 38        SEC
C - - - - - 0x0005DC 00:C5CC: E9 08     SBC #$08
C - - - - - 0x0005DE 00:C5CE: 85 16     STA ram_0016
C - - - - - 0x0005E0 00:C5D0: 20 01 C4  JSR sub_C401
C - - - - - 0x0005E3 00:C5D3: A5 10     LDA ram_0010
C - - - - - 0x0005E5 00:C5D5: 38        SEC
C - - - - - 0x0005E6 00:C5D6: E9 08     SBC #$08
C - - - - - 0x0005E8 00:C5D8: 85 10     STA ram_0010
C - - - - - 0x0005EA 00:C5DA: B0 02     BCS bra_C5DE_not_underflow
- - - - - - 0x0005EC 00:C5DC: C6 11     DEC ram_0011
bra_C5DE_not_underflow:
C - - - - - 0x0005EE 00:C5DE: A5 16     LDA ram_0016
C - - - - - 0x0005F0 00:C5E0: 18        CLC
C - - - - - 0x0005F1 00:C5E1: 69 08     ADC #$08
C - - - - - 0x0005F3 00:C5E3: 85 16     STA ram_0016
C - - - - - 0x0005F5 00:C5E5: 20 0F C4  JSR sub_C40F
C - - - - - 0x0005F8 00:C5E8: A5 10     LDA ram_0010
C - - - - - 0x0005FA 00:C5EA: 18        CLC
C - - - - - 0x0005FB 00:C5EB: 69 08     ADC #$08
C - - - - - 0x0005FD 00:C5ED: 85 10     STA ram_0010
C - - - - - 0x0005FF 00:C5EF: 90 02     BCC bra_C5F3_not_overflow
- - - - - - 0x000601 00:C5F1: E6 11     INC ram_0011
bra_C5F3_not_overflow:
C - - - - - 0x000603 00:C5F3: 4C EC C3  JMP loc_C3EC



ofs_000_C5F6_16:
C - - J - - 0x000606 00:C5F6: A9 00     LDA #$00
C - - - - - 0x000608 00:C5F8: 85 13     STA ram_0013
C - - - - - 0x00060A 00:C5FA: A0 07     LDY #$07
C - - - - - 0x00060C 00:C5FC: B1 1E     LDA (ram_001E),Y
C - - - - - 0x00060E 00:C5FE: 0A        ASL
C - - - - - 0x00060F 00:C5FF: 30 13     BMI bra_C614
C - - - - - 0x000611 00:C601: 29 0C     AND #$0C
C - - - - - 0x000613 00:C603: 09 80     ORA #$80
C - - - - - 0x000615 00:C605: 85 12     STA ram_0012
C - - - - - 0x000617 00:C607: B1 1E     LDA (ram_001E),Y
C - - - - - 0x000619 00:C609: 29 08     AND #$08
C - - - - - 0x00061B 00:C60B: F0 04     BEQ bra_C611
C - - - - - 0x00061D 00:C60D: A9 C0     LDA #$C0
C - - - - - 0x00061F 00:C60F: 85 13     STA ram_0013
bra_C611:
C - - - - - 0x000621 00:C611: 4C D7 C3  JMP loc_C3D7
bra_C614:
C - - - - - 0x000624 00:C614: 4A        LSR
C - - - - - 0x000625 00:C615: 29 04     AND #$04
C - - - - - 0x000627 00:C617: 09 90     ORA #$90
C - - - - - 0x000629 00:C619: 85 12     STA ram_0012
C - - - - - 0x00062B 00:C61B: 4C D7 C3  JMP loc_C3D7



ofs_000_C61E_18:
C - - J - - 0x00062E 00:C61E: A9 02     LDA #$02
C - - - - - 0x000630 00:C620: 85 13     STA ram_0013
C - - - - - 0x000632 00:C622: A9 00     LDA #$00
C - - - - - 0x000634 00:C624: 85 14     STA ram_0014
C - - - - - 0x000636 00:C626: A5 21     LDA ram_frame_counter
C - - - - - 0x000638 00:C628: 29 20     AND #$20
C - - - - - 0x00063A 00:C62A: F0 11     BEQ bra_C63D    ; each 32th frame
C - - - - - 0x00063C 00:C62C: A9 E8     LDA #$E8
C - - - - - 0x00063E 00:C62E: 85 12     STA ram_0012
C - - - - - 0x000640 00:C630: 20 4C C6  JSR sub_C64C
C - - - - - 0x000643 00:C633: A5 16     LDA ram_0016
C - - - - - 0x000645 00:C635: 38        SEC
C - - - - - 0x000646 00:C636: E9 08     SBC #$08
C - - - - - 0x000648 00:C638: 85 16     STA ram_0016
C - - - - - 0x00064A 00:C63A: 4C 15 C4  JMP loc_C415_write_spr_data
bra_C63D:
sub_C63D:
C - - - - - 0x00064D 00:C63D: A9 DD     LDA #$DD
C - - - - - 0x00064F 00:C63F: 85 12     STA ram_0012
C - - - - - 0x000651 00:C641: A5 10     LDA ram_0010
C - - - - - 0x000653 00:C643: 38        SEC
C - - - - - 0x000654 00:C644: E9 06     SBC #$06
C - - - - - 0x000656 00:C646: 85 10     STA ram_0010
C - - - - - 0x000658 00:C648: B0 02     BCS bra_C64C_not_underflow
C - - - - - 0x00065A 00:C64A: C6 11     DEC ram_0011
bra_C64C_not_underflow:
sub_C64C:
C - - - - - 0x00065C 00:C64C: A9 03     LDA #$03
C - - - - - 0x00065E 00:C64E: 85 18     STA ram_0018
bra_C650_loop:
C - - - - - 0x000660 00:C650: 20 5C C6  JSR sub_C65C
C - - - - - 0x000663 00:C653: C6 18     DEC ram_0018
C - - - - - 0x000665 00:C655: D0 F9     BNE bra_C650_loop
C - - - - - 0x000667 00:C657: A9 02     LDA #$02
C - - - - - 0x000669 00:C659: 4C 5E C6  JMP loc_C65E    ; bzk optimize, BNE



sub_C65C:
C - - - - - 0x00066C 00:C65C: A9 03     LDA #$03
loc_C65E:
C D 2 - - - 0x00066E 00:C65E: 85 17     STA ram_0017
bra_C660_loop:
C - - - - - 0x000670 00:C660: 20 15 C4  JSR sub_C415_write_spr_data
C - - - - - 0x000673 00:C663: A5 10     LDA ram_0010
C - - - - - 0x000675 00:C665: 18        CLC
C - - - - - 0x000676 00:C666: 69 08     ADC #$08
C - - - - - 0x000678 00:C668: 85 10     STA ram_0010
C - - - - - 0x00067A 00:C66A: 90 02     BCC bra_C66E_not_overflow
C - - - - - 0x00067C 00:C66C: E6 11     INC ram_0011
bra_C66E_not_overflow:
C - - - - - 0x00067E 00:C66E: E6 12     INC ram_0012
C - - - - - 0x000680 00:C670: C6 17     DEC ram_0017
C - - - - - 0x000682 00:C672: D0 EC     BNE bra_C660_loop
C - - - - - 0x000684 00:C674: A5 10     LDA ram_0010
C - - - - - 0x000686 00:C676: 38        SEC
C - - - - - 0x000687 00:C677: E9 18     SBC #$18
C - - - - - 0x000689 00:C679: 85 10     STA ram_0010
C - - - - - 0x00068B 00:C67B: B0 02     BCS bra_C67F_not_underflow
C - - - - - 0x00068D 00:C67D: C6 11     DEC ram_0011
bra_C67F_not_underflow:
C - - - - - 0x00068F 00:C67F: A5 16     LDA ram_0016
C - - - - - 0x000691 00:C681: 18        CLC
C - - - - - 0x000692 00:C682: 69 08     ADC #$08
C - - - - - 0x000694 00:C684: 85 16     STA ram_0016
C - - - - - 0x000696 00:C686: 60        RTS



ofs_000_C687_1C_NAMCOT:
C - - J - - 0x000697 00:C687: A9 02     LDA #$02
C - - - - - 0x000699 00:C689: 85 13     STA ram_0013
C - - - - - 0x00069B 00:C68B: A9 00     LDA #$00
C - - - - - 0x00069D 00:C68D: 85 14     STA ram_0014
C - - - - - 0x00069F 00:C68F: A9 F4     LDA #$F4    ; initial tile
C - - - - - 0x0006A1 00:C691: 85 12     STA ram_0012
C - - - - - 0x0006A3 00:C693: A9 08     LDA #$08    ; counter
C - - - - - 0x0006A5 00:C695: 85 17     STA ram_0017
bra_C697_loop:
C - - - - - 0x0006A7 00:C697: 20 15 C4  JSR sub_C415_write_spr_data
C - - - - - 0x0006AA 00:C69A: A5 10     LDA ram_0010
C - - - - - 0x0006AC 00:C69C: 18        CLC
C - - - - - 0x0006AD 00:C69D: 69 08     ADC #$08
C - - - - - 0x0006AF 00:C69F: 85 10     STA ram_0010
C - - - - - 0x0006B1 00:C6A1: 90 02     BCC bra_C6A5_not_overflow
- - - - - - 0x0006B3 00:C6A3: E6 11     INC ram_0011
bra_C6A5_not_overflow:
C - - - - - 0x0006B5 00:C6A5: E6 12     INC ram_0012
C - - - - - 0x0006B7 00:C6A7: C6 17     DEC ram_0017
C - - - - - 0x0006B9 00:C6A9: D0 EC     BNE bra_C697_loop
C - - - - - 0x0006BB 00:C6AB: 60        RTS



ofs_000_C6AC_1E:
C - - J - - 0x0006BC 00:C6AC: A0 07     LDY #$07
C - - - - - 0x0006BE 00:C6AE: B1 1E     LDA (ram_001E),Y
C - - - - - 0x0006C0 00:C6B0: C9 08     CMP #$08
C - - - - - 0x0006C2 00:C6B2: A9 98     LDA #$98
C - - - - - 0x0006C4 00:C6B4: 90 02     BCC bra_C6B8
C - - - - - 0x0006C6 00:C6B6: A9 9C     LDA #$9C
bra_C6B8:
C - - - - - 0x0006C8 00:C6B8: 85 12     STA ram_0012
C - - - - - 0x0006CA 00:C6BA: A9 00     LDA #$00
C - - - - - 0x0006CC 00:C6BC: 85 13     STA ram_0013
C - - - - - 0x0006CE 00:C6BE: 4C D7 C3  JMP loc_C3D7



ofs_000_C6C1_20:
C - - J - - 0x0006D1 00:C6C1: A5 1E     LDA ram_001E
C - - - - - 0x0006D3 00:C6C3: C9 20     CMP #$20
C - - - - - 0x0006D5 00:C6C5: 90 05     BCC bra_C6CC
C - - - - - 0x0006D7 00:C6C7: D0 0E     BNE bra_C6D7
C - - - - - 0x0006D9 00:C6C9: 4C B2 C5  JMP loc_C5B2
bra_C6CC:
- - - - - - 0x0006DC 00:C6CC: A9 A8     LDA #$A8
- - - - - - 0x0006DE 00:C6CE: 85 12     STA ram_0012
- - - - - - 0x0006E0 00:C6D0: A9 02     LDA #$02
- - - - - - 0x0006E2 00:C6D2: 85 13     STA ram_0013
- - - - - - 0x0006E4 00:C6D4: 4C D7 C3  JMP loc_C3D7
bra_C6D7:
C - - - - - 0x0006E7 00:C6D7: A9 2C     LDA #$2C
C - - - - - 0x0006E9 00:C6D9: 85 12     STA ram_0012
C - - - - - 0x0006EB 00:C6DB: A9 01     LDA #$01
C - - - - - 0x0006ED 00:C6DD: 85 13     STA ram_0013
C - - - - - 0x0006EF 00:C6DF: 20 D7 C3  JSR sub_C3D7
C - - - - - 0x0006F2 00:C6E2: A5 16     LDA ram_0016
C - - - - - 0x0006F4 00:C6E4: 38        SEC
C - - - - - 0x0006F5 00:C6E5: E9 10     SBC #$10
C - - - - - 0x0006F7 00:C6E7: 85 16     STA ram_0016
C - - - - - 0x0006F9 00:C6E9: A9 AE     LDA #$AE
C - - - - - 0x0006FB 00:C6EB: 85 12     STA ram_0012
C - - - - - 0x0006FD 00:C6ED: A9 03     LDA #$03
C - - - - - 0x0006FF 00:C6EF: 85 13     STA ram_0013
C - - - - - 0x000701 00:C6F1: 20 4D E8  JSR sub_E84D
C - - - - - 0x000704 00:C6F4: A9 67     LDA #$67
C - - - - - 0x000706 00:C6F6: 85 12     STA ram_0012
C - - - - - 0x000708 00:C6F8: 4C 4D E8  JMP loc_E84D



loc_C6FB:
C D 2 - - - 0x00070B 00:C6FB: A0 00     LDY #$00
bra_C6FD_loop:
C - - - - - 0x00070D 00:C6FD: B1 12     LDA (ram_0012),Y
C - - - - - 0x00070F 00:C6FF: D0 16     BNE bra_C717
C - - - - - 0x000711 00:C701: C8        INY
loc_C702_loop:
C D 2 - - - 0x000712 00:C702: B1 12     LDA (ram_0012),Y
C - - - - - 0x000714 00:C704: F0 10     BEQ bra_C716_RTS
C - - - - - 0x000716 00:C706: 10 02     BPL bra_C70A
C - - - - - 0x000718 00:C708: C6 11     DEC ram_0011
bra_C70A:
C - - - - - 0x00071A 00:C70A: C8        INY
C - - - - - 0x00071B 00:C70B: 18        CLC
C - - - - - 0x00071C 00:C70C: 65 10     ADC ram_0010
C - - - - - 0x00071E 00:C70E: 85 10     STA ram_0010
C - - - - - 0x000720 00:C710: 90 EB     BCC bra_C6FD_loop   ; if not overflow
; if overflow
C - - - - - 0x000722 00:C712: E6 11     INC ram_0011
C - - - - - 0x000724 00:C714: B0 E7     BCS bra_C6FD_loop   ; jmp
bra_C716_RTS:
C - - - - - 0x000726 00:C716: 60        RTS
bra_C717:
C - - - - - 0x000727 00:C717: C8        INY
C - - - - - 0x000728 00:C718: 85 15     STA ram_0015
C - - - - - 0x00072A 00:C71A: 85 16     STA ram_0016
C - - - - - 0x00072C 00:C71C: 20 8E C7  JSR sub_C78E
bra_C71F_loop:
C - - - - - 0x00072F 00:C71F: A5 14     LDA ram_0014
C - - - - - 0x000731 00:C721: 30 5E     BMI bra_C781
C - - - - - 0x000733 00:C723: A5 10     LDA ram_0010
C - - - - - 0x000735 00:C725: 85 17     STA ram_0017
C - - - - - 0x000737 00:C727: A5 11     LDA ram_0011
C - - - - - 0x000739 00:C729: 85 18     STA ram_0018
C - - - - - 0x00073B 00:C72B: 06 17     ASL ram_0017
C - - - - - 0x00073D 00:C72D: 26 18     ROL ram_0018
C - - - - - 0x00073F 00:C72F: 06 17     ASL ram_0017
C - - - - - 0x000741 00:C731: 2A        ROL
C - - - - - 0x000742 00:C732: 06 17     ASL ram_0017
C - - - - - 0x000744 00:C734: 06 17     ASL ram_0017
C - - - - - 0x000746 00:C736: 26 18     ROL ram_0018
C - - - - - 0x000748 00:C738: 06 17     ASL ram_0017
C - - - - - 0x00074A 00:C73A: 26 18     ROL ram_0018
C - - - - - 0x00074C 00:C73C: 06 17     ASL ram_0017
C - - - - - 0x00074E 00:C73E: 26 18     ROL ram_0018
C - - - - - 0x000750 00:C740: 06 17     ASL ram_0017
C - - - - - 0x000752 00:C742: 2A        ROL
C - - - - - 0x000753 00:C743: 29 03     AND #$03
C - - - - - 0x000755 00:C745: AA        TAX
C - - - - - 0x000756 00:C746: A5 14     LDA ram_0014
C - - - - - 0x000758 00:C748: 85 17     STA ram_0017
C - - - - - 0x00075A 00:C74A: A9 03     LDA #$03
C - - - - - 0x00075C 00:C74C: E8        INX
C - - - - - 0x00075D 00:C74D: CA        DEX
C - - - - - 0x00075E 00:C74E: F0 09     BEQ bra_C759
bra_C750_loop:
C - - - - - 0x000760 00:C750: 0A        ASL
C - - - - - 0x000761 00:C751: 0A        ASL
C - - - - - 0x000762 00:C752: 06 17     ASL ram_0017
C - - - - - 0x000764 00:C754: 06 17     ASL ram_0017
C - - - - - 0x000766 00:C756: CA        DEX
C - - - - - 0x000767 00:C757: D0 F7     BNE bra_C750_loop
bra_C759:
C - - - - - 0x000769 00:C759: A6 18     LDX ram_0018
C - - - - - 0x00076B 00:C75B: 49 FF     EOR #$FF
C - - - - - 0x00076D 00:C75D: 3D 80 01  AND ram_0180,X
C - - - - - 0x000770 00:C760: 05 17     ORA ram_0017
C - - - - - 0x000772 00:C762: 9D 80 01  STA ram_0180,X
C - - - - - 0x000775 00:C765: 46 18     LSR ram_0018
C - - - - - 0x000777 00:C767: 46 18     LSR ram_0018
C - - - - - 0x000779 00:C769: 46 18     LSR ram_0018
C - - - - - 0x00077B 00:C76B: 8A        TXA
C - - - - - 0x00077C 00:C76C: 29 07     AND #$07
C - - - - - 0x00077E 00:C76E: AA        TAX
C - - - - - 0x00077F 00:C76F: A9 01     LDA #$01
C - - - - - 0x000781 00:C771: E8        INX
C - - - - - 0x000782 00:C772: CA        DEX
C - - - - - 0x000783 00:C773: F0 04     BEQ bra_C779
bra_C775_loop:
C - - - - - 0x000785 00:C775: 0A        ASL
C - - - - - 0x000786 00:C776: CA        DEX
C - - - - - 0x000787 00:C777: D0 FC     BNE bra_C775_loop
bra_C779:
C - - - - - 0x000789 00:C779: A6 18     LDX ram_0018
C - - - - - 0x00078B 00:C77B: 1D 70 01  ORA ram_0170,X
C - - - - - 0x00078E 00:C77E: 9D 70 01  STA ram_0170,X
bra_C781:
C - - - - - 0x000791 00:C781: E6 10     INC ram_0010
C - - - - - 0x000793 00:C783: D0 02     BNE bra_C787
C - - - - - 0x000795 00:C785: E6 11     INC ram_0011
bra_C787:
C - - - - - 0x000797 00:C787: C6 16     DEC ram_0016
C - - - - - 0x000799 00:C789: D0 94     BNE bra_C71F_loop
C - - - - - 0x00079B 00:C78B: 4C 02 C7  JMP loc_C702_loop



sub_C78E:
C - - - - - 0x00079E 00:C78E: A5 2D     LDA ram_for_2001
C - - - - - 0x0007A0 00:C790: F0 22     BEQ bra_C7B4
C - - - - - 0x0007A2 00:C792: A6 2A     LDX ram_002A
C - - - - - 0x0007A4 00:C794: A5 10     LDA ram_0010
C - - - - - 0x0007A6 00:C796: 9D 00 05  STA ram_0500,X
C - - - - - 0x0007A9 00:C799: E8        INX
C - - - - - 0x0007AA 00:C79A: A5 11     LDA ram_0011
C - - - - - 0x0007AC 00:C79C: 9D 00 05  STA ram_0500,X
C - - - - - 0x0007AF 00:C79F: E8        INX
C - - - - - 0x0007B0 00:C7A0: A5 15     LDA ram_0015
C - - - - - 0x0007B2 00:C7A2: 9D 00 05  STA ram_0500,X
C - - - - - 0x0007B5 00:C7A5: E8        INX
bra_C7A6_loop:
C - - - - - 0x0007B6 00:C7A6: B1 12     LDA (ram_0012),Y
C - - - - - 0x0007B8 00:C7A8: C8        INY
C - - - - - 0x0007B9 00:C7A9: 9D 00 05  STA ram_0500,X
C - - - - - 0x0007BC 00:C7AC: E8        INX
C - - - - - 0x0007BD 00:C7AD: C6 15     DEC ram_0015
C - - - - - 0x0007BF 00:C7AF: D0 F5     BNE bra_C7A6_loop
C - - - - - 0x0007C1 00:C7B1: 86 2A     STX ram_002A
C - - - - - 0x0007C3 00:C7B3: 60        RTS
bra_C7B4:
C - - - - - 0x0007C4 00:C7B4: A5 11     LDA ram_0011
C - - - - - 0x0007C6 00:C7B6: 8D 06 20  STA $2006
C - - - - - 0x0007C9 00:C7B9: A5 10     LDA ram_0010
C - - - - - 0x0007CB 00:C7BB: 8D 06 20  STA $2006
bra_C7BE_loop:
C - - - - - 0x0007CE 00:C7BE: B1 12     LDA (ram_0012),Y
C - - - - - 0x0007D0 00:C7C0: C8        INY
C - - - - - 0x0007D1 00:C7C1: 8D 07 20  STA $2007
C - - - - - 0x0007D4 00:C7C4: C6 15     DEC ram_0015
C - - - - - 0x0007D6 00:C7C6: D0 F6     BNE bra_C7BE_loop
C - - - - - 0x0007D8 00:C7C8: 60        RTS



sub_C7C9:
C - - - - - 0x0007D9 00:C7C9: A9 00     LDA #$00
C - - - - - 0x0007DB 00:C7CB: 85 12     STA ram_0012
C - - - - - 0x0007DD 00:C7CD: 85 13     STA ram_0013
C - - - - - 0x0007DF 00:C7CF: A9 C0     LDA #< $23C0
C - - - - - 0x0007E1 00:C7D1: 85 10     STA ram_0010
C - - - - - 0x0007E3 00:C7D3: A9 23     LDA #> $23C0
C - - - - - 0x0007E5 00:C7D5: 85 11     STA ram_0011
C - - - - - 0x0007E7 00:C7D7: 20 E2 C7  JSR sub_C7E2
C - - - - - 0x0007EA 00:C7DA: A9 C0     LDA #< $27C0
C - - - - - 0x0007EC 00:C7DC: 85 10     STA ram_0010
C - - - - - 0x0007EE 00:C7DE: A9 27     LDA #> $27C0
C - - - - - 0x0007F0 00:C7E0: 85 11     STA ram_0011
sub_C7E2:
C - - - - - 0x0007F2 00:C7E2: A9 08     LDA #$08
C - - - - - 0x0007F4 00:C7E4: 85 14     STA ram_0014
bra_C7E6_loop:
C - - - - - 0x0007F6 00:C7E6: A9 08     LDA #$08
C - - - - - 0x0007F8 00:C7E8: 85 15     STA ram_0015
loc_C7EA_loop:
C D 2 - - - 0x0007FA 00:C7EA: A4 12     LDY ram_0012
C - - - - - 0x0007FC 00:C7EC: B9 70 01  LDA ram_0170,Y
C - - - - - 0x0007FF 00:C7EF: F0 12     BEQ bra_C803
C - - - - - 0x000801 00:C7F1: 4A        LSR
C - - - - - 0x000802 00:C7F2: 99 70 01  STA ram_0170,Y
C - - - - - 0x000805 00:C7F5: 90 03     BCC bra_C7FA
C - - - - - 0x000807 00:C7F7: 20 18 C8  JSR sub_C818
bra_C7FA:
C - - - - - 0x00080A 00:C7FA: E6 10     INC ram_0010
C - - - - - 0x00080C 00:C7FC: E6 13     INC ram_0013
C - - - - - 0x00080E 00:C7FE: C6 15     DEC ram_0015
C - - - - - 0x000810 00:C800: 4C EA C7  JMP loc_C7EA_loop
bra_C803:
C - - - - - 0x000813 00:C803: A5 10     LDA ram_0010
C - - - - - 0x000815 00:C805: 18        CLC
C - - - - - 0x000816 00:C806: 65 15     ADC ram_0015
C - - - - - 0x000818 00:C808: 85 10     STA ram_0010
C - - - - - 0x00081A 00:C80A: A5 13     LDA ram_0013
C - - - - - 0x00081C 00:C80C: 18        CLC
C - - - - - 0x00081D 00:C80D: 65 15     ADC ram_0015
C - - - - - 0x00081F 00:C80F: 85 13     STA ram_0013
C - - - - - 0x000821 00:C811: E6 12     INC ram_0012
C - - - - - 0x000823 00:C813: C6 14     DEC ram_0014
C - - - - - 0x000825 00:C815: D0 CF     BNE bra_C7E6_loop
C - - - - - 0x000827 00:C817: 60        RTS



sub_C818:
C - - - - - 0x000828 00:C818: A5 2D     LDA ram_for_2001
C - - - - - 0x00082A 00:C81A: F0 20     BEQ bra_C83C
C - - - - - 0x00082C 00:C81C: A6 2A     LDX ram_002A
C - - - - - 0x00082E 00:C81E: A5 10     LDA ram_0010
C - - - - - 0x000830 00:C820: 9D 00 05  STA ram_0500,X
C - - - - - 0x000833 00:C823: E8        INX
C - - - - - 0x000834 00:C824: A5 11     LDA ram_0011
C - - - - - 0x000836 00:C826: 9D 00 05  STA ram_0500,X
C - - - - - 0x000839 00:C829: E8        INX
C - - - - - 0x00083A 00:C82A: A9 01     LDA #$01
C - - - - - 0x00083C 00:C82C: 9D 00 05  STA ram_0500,X
C - - - - - 0x00083F 00:C82F: E8        INX
C - - - - - 0x000840 00:C830: A4 13     LDY ram_0013
C - - - - - 0x000842 00:C832: B9 80 01  LDA ram_0180,Y
C - - - - - 0x000845 00:C835: 9D 00 05  STA ram_0500,X
C - - - - - 0x000848 00:C838: E8        INX
C - - - - - 0x000849 00:C839: 86 2A     STX ram_002A
C - - - - - 0x00084B 00:C83B: 60        RTS
bra_C83C:
- - - - - - 0x00084C 00:C83C: A5 11     LDA ram_0011
- - - - - - 0x00084E 00:C83E: 8D 06 20  STA $2006
- - - - - - 0x000851 00:C841: A5 10     LDA ram_0010
- - - - - - 0x000853 00:C843: 8D 06 20  STA $2006
- - - - - - 0x000856 00:C846: A4 13     LDY ram_0013
- - - - - - 0x000858 00:C848: B9 80 01  LDA ram_0180,Y
- - - - - - 0x00085B 00:C84B: 8D 07 20  STA $2007
- - - - - - 0x00085E 00:C84E: 60        RTS



loc_C84F:
ofs_C84F:
C D 2 J - - 0x00085F 00:C84F: A9 00     LDA #$00    ; demo
C - - - - - 0x000861 00:C851: 85 42     STA ram_demo_flag
C - - - - - 0x000863 00:C853: 20 BF F4  JSR sub_F4BF
C - - - - - 0x000866 00:C856: A5 41     LDA ram_player_index
C - - - - - 0x000868 00:C858: F0 03     BEQ bra_C85D_currently_1st_is_playing
C - - - - - 0x00086A 00:C85A: 20 81 CA  JSR sub_CA81
bra_C85D_currently_1st_is_playing:
C - - - - - 0x00086D 00:C85D: 85 75     STA ram_0075
C - - - - - 0x00086F 00:C85F: A9 02     LDA #$02
C - - - - - 0x000871 00:C861: 85 76     STA ram_score_for_1up
C - - - - - 0x000873 00:C863: A9 FF     LDA #$FF
C - - - - - 0x000875 00:C865: 85 48     STA ram_0048
C - - - - - 0x000877 00:C867: A9 07     LDA #$07
C - - - - - 0x000879 00:C869: 85 49     STA ram_0049
C - - - - - 0x00087B 00:C86B: A9 03     LDA #$03
C - - - - - 0x00087D 00:C86D: 85 70     STA ram_lives_1
C - - - - - 0x00087F 00:C86F: A2 20     LDX #$20
C - - - - - 0x000881 00:C871: A9 00     LDA #$00
bra_C873_loop:
C - - - - - 0x000883 00:C873: 95 70     STA ram_plr_data_1,X
C - - - - - 0x000885 00:C875: E8        INX
C - - - - - 0x000886 00:C876: E0 40     CPX #$40
C - - - - - 0x000888 00:C878: D0 F9     BNE bra_C873_loop
C - - - - - 0x00088A 00:C87A: 20 41 C2  JSR sub_C241_disable_rendering
C - - - - - 0x00088D 00:C87D: 20 B1 CB  JSR sub_CBB1
C - - - - - 0x000890 00:C880: 20 39 C2  JSR sub_C239_enable_rendering
C - - - - - 0x000893 00:C883: A9 00     LDA #$00
C - - - - - 0x000895 00:C885: 85 28     STA ram_cam_pos_X_lo
C - - - - - 0x000897 00:C887: 85 29     STA ram_cam_pos_X_hi
C - - - - - 0x000899 00:C889: 20 2B CD  JSR sub_CD2B
C - - - - - 0x00089C 00:C88C: A9 F0     LDA #$F0
C - - - - - 0x00089E 00:C88E: 85 0F     STA ram_000F
bra_C890_loop:
C - - - - - 0x0008A0 00:C890: 20 41 C1  JSR sub_C141
C - - - - - 0x0008A3 00:C893: 20 3E CD  JSR sub_CD3E
C - - - - - 0x0008A6 00:C896: EA        NOP ; bzk garbage
C - - - - - 0x0008A7 00:C897: EA        NOP
C - - - - - 0x0008A8 00:C898: EA        NOP
C - - - - - 0x0008A9 00:C899: 20 3E D7  JSR sub_D73E
C - - - - - 0x0008AC 00:C89C: A5 25     LDA ram_0025
C - - - - - 0x0008AE 00:C89E: 29 03     AND #$03
C - - - - - 0x0008B0 00:C8A0: C9 01     CMP #$01
C - - - - - 0x0008B2 00:C8A2: F0 07     BEQ bra_C8AB_start_was_pressed
C - - - - - 0x0008B4 00:C8A4: C6 0F     DEC ram_000F
C - - - - - 0x0008B6 00:C8A6: D0 E8     BNE bra_C890_loop
C - - - - - 0x0008B8 00:C8A8: 4C 65 FF  JMP loc_FF65
bra_C8AB_start_was_pressed:
C - - - - - 0x0008BB 00:C8AB: A9 01     LDA #$01    ; not demo anymore
C - - - - - 0x0008BD 00:C8AD: 85 42     STA ram_demo_flag
C - - - - - 0x0008BF 00:C8AF: A5 4A     LDA ram_004A
C - - - - - 0x0008C1 00:C8B1: 85 40     STA ram_game_mode
C - - - - - 0x0008C3 00:C8B3: A9 00     LDA #$00
C - - - - - 0x0008C5 00:C8B5: 85 41     STA ram_player_index
C - - - - - 0x0008C7 00:C8B7: 85 71     STA ram_score_xx000000
C - - - - - 0x0008C9 00:C8B9: 85 72     STA ram_score_00xx0000
C - - - - - 0x0008CB 00:C8BB: 85 73     STA ram_score_0000xx00
C - - - - - 0x0008CD 00:C8BD: 85 74     STA ram_score_000000xx
C - - - - - 0x0008CF 00:C8BF: 85 7A     STA ram_current_round
C - - - - - 0x0008D1 00:C8C1: 85 7D     STA ram_rounds_counter
C - - - - - 0x0008D3 00:C8C3: A9 01     LDA #$01
C - - - - - 0x0008D5 00:C8C5: 85 77     STA ram_0077
C - - - - - 0x0008D7 00:C8C7: A2 00     LDX #$00
bra_C8C9_loop:
C - - - - - 0x0008D9 00:C8C9: B5 70     LDA ram_plr_data_1,X
C - - - - - 0x0008DB 00:C8CB: 95 B0     STA ram_plr_data_2,X
C - - - - - 0x0008DD 00:C8CD: E8        INX
C - - - - - 0x0008DE 00:C8CE: E0 20     CPX #$20
C - - - - - 0x0008E0 00:C8D0: D0 F7     BNE bra_C8C9_loop
C - - - - - 0x0008E2 00:C8D2: C6 70     DEC ram_lives_1
C - - - - - 0x0008E4 00:C8D4: 20 A7 CA  JSR sub_CAA7_clear_data_of_all_objects
C - - - - - 0x0008E7 00:C8D7: 20 41 C2  JSR sub_C241_disable_rendering
C - - - - - 0x0008EA 00:C8DA: 20 49 CD  JSR sub_CD49
C - - - - - 0x0008ED 00:C8DD: 20 5B E3  JSR sub_E35B
C - - - - - 0x0008F0 00:C8E0: 20 C5 E5  JSR sub_E5C5
C - - - - - 0x0008F3 00:C8E3: 20 62 E8  JSR sub_E862
C - - - - - 0x0008F6 00:C8E6: 20 01 F0  JSR sub_F001
C - - - - - 0x0008F9 00:C8E9: 20 39 C2  JSR sub_C239_enable_rendering
C - - - - - 0x0008FC 00:C8EC: A2 00     LDX #$00
bra_C8EE_loop:
C - - - - - 0x0008FE 00:C8EE: BD 00 02  LDA ram_0200,X
C - - - - - 0x000901 00:C8F1: 9D 00 03  STA ram_0300,X
C - - - - - 0x000904 00:C8F4: E8        INX
C - - - - - 0x000905 00:C8F5: D0 F7     BNE bra_C8EE_loop
C - - - - - 0x000907 00:C8F7: A2 01     LDX #$01
bra_C8F9_loop:
C - - - - - 0x000909 00:C8F9: B5 70     LDA ram_plr_data_1,X
C - - - - - 0x00090B 00:C8FB: 95 B0     STA ram_plr_data_2,X
C - - - - - 0x00090D 00:C8FD: E8        INX
C - - - - - 0x00090E 00:C8FE: E0 40     CPX #$40
C - - - - - 0x000910 00:C900: D0 F7     BNE bra_C8F9_loop
loc_C902:
C D 2 - - - 0x000912 00:C902: 20 C1 F3  JSR sub_F3C1
C - - - - - 0x000915 00:C905: 20 F1 D7  JSR sub_D7F1
C - - - - - 0x000918 00:C908: 20 46 D8  JSR sub_D846
C - - - - - 0x00091B 00:C90B: A9 00     LDA #$00
C - - - - - 0x00091D 00:C90D: 85 4B     STA ram_004B
C - - - - - 0x00091F 00:C90F: 85 4F     STA ram_004F
C - - - - - 0x000921 00:C911: 85 31     STA ram_0031
C - - - - - 0x000923 00:C913: A9 3C     LDA #$3C
C - - - - - 0x000925 00:C915: 85 0F     STA ram_000F
bra_C917_loop:
C - - - - - 0x000927 00:C917: 20 41 C1  JSR sub_C141
C - - - - - 0x00092A 00:C91A: 20 60 CB  JSR sub_CB60
C - - - - - 0x00092D 00:C91D: 20 02 CB  JSR sub_CB02
C - - - - - 0x000930 00:C920: AD A6 CB  LDA tbl_CBA6
C - - - - - 0x000933 00:C923: 85 1E     STA ram_001E
C - - - - - 0x000935 00:C925: AD A7 CB  LDA tbl_CBA6 + $01
C - - - - - 0x000938 00:C928: 85 1F     STA ram_001F
C - - - - - 0x00093A 00:C92A: 20 3B CB  JSR sub_CB3B
C - - - - - 0x00093D 00:C92D: C6 0F     DEC ram_000F
C - - - - - 0x00093F 00:C92F: D0 E6     BNE bra_C917_loop
C - - - - - 0x000941 00:C931: A9 02     LDA #$02
C - - - - - 0x000943 00:C933: 8D 0F 04  STA ram_040F
C - - - - - 0x000946 00:C936: A2 20     LDX #$20
bra_C938_loop:
C - - - - - 0x000948 00:C938: A9 02     LDA #$02
C - - - - - 0x00094A 00:C93A: 9D 0F 04  STA ram_040F,X
C - - - - - 0x00094D 00:C93D: 8A        TXA
C - - - - - 0x00094E 00:C93E: 18        CLC
C - - - - - 0x00094F 00:C93F: 69 10     ADC #$10
C - - - - - 0x000951 00:C941: AA        TAX
C - - - - - 0x000952 00:C942: E4 68     CPX ram_0068
C - - - - - 0x000954 00:C944: D0 F2     BNE bra_C938_loop
bra_C946_loop:
C - - - - - 0x000956 00:C946: 20 41 C1  JSR sub_C141
C - - - - - 0x000959 00:C949: A5 60     LDA ram_0060
C - - - - - 0x00095B 00:C94B: C9 01     CMP #$01
C - - - - - 0x00095D 00:C94D: F0 12     BEQ bra_C961
C - - - - - 0x00095F 00:C94F: C9 03     CMP #$03
C - - - - - 0x000961 00:C951: D0 06     BNE bra_C959
C - - - - - 0x000963 00:C953: A5 61     LDA ram_0061
C - - - - - 0x000965 00:C955: C9 3C     CMP #$3C
C - - - - - 0x000967 00:C957: D0 08     BNE bra_C961
bra_C959:
C - - - - - 0x000969 00:C959: A9 01     LDA #$01
C - - - - - 0x00096B 00:C95B: 8D 13 06  STA ram_0613
C - - - - - 0x00096E 00:C95E: 8D 14 06  STA ram_0614
bra_C961:
C - - - - - 0x000971 00:C961: 20 60 CB  JSR sub_CB60
C - - - - - 0x000974 00:C964: 20 E6 F2  JSR sub_F2E6
C - - - - - 0x000977 00:C967: A5 4F     LDA ram_004F
C - - - - - 0x000979 00:C969: D0 07     BNE bra_C972
C - - - - - 0x00097B 00:C96B: A5 4B     LDA ram_004B
C - - - - - 0x00097D 00:C96D: F0 D7     BEQ bra_C946_loop
C - - - - - 0x00097F 00:C96F: 4C 28 CA  JMP loc_CA28
bra_C972:
C - - - - - 0x000982 00:C972: 20 41 C1  JSR sub_C141
C - - - - - 0x000985 00:C975: 20 60 CB  JSR sub_CB60
C - - - - - 0x000988 00:C978: AD A5 04  LDA ram_04A5
C - - - - - 0x00098B 00:C97B: 0D AD 04  ORA ram_04AD
C - - - - - 0x00098E 00:C97E: D0 F2     BNE bra_C972
C - - - - - 0x000990 00:C980: A9 B4     LDA #$B4
C - - - - - 0x000992 00:C982: 85 0F     STA ram_000F
bra_C984_loop:
C - - - - - 0x000994 00:C984: 20 41 C1  JSR sub_C141
C - - - - - 0x000997 00:C987: A5 0F     LDA ram_000F
C - - - - - 0x000999 00:C989: C9 78     CMP #$78
C - - - - - 0x00099B 00:C98B: D0 08     BNE bra_C995
C - - - - - 0x00099D 00:C98D: A9 01     LDA #$01
C - - - - - 0x00099F 00:C98F: 8D 11 06  STA ram_0611
C - - - - - 0x0009A2 00:C992: 8D 12 06  STA ram_0612
bra_C995:
C - - - - - 0x0009A5 00:C995: 20 60 CB  JSR sub_CB60
C - - - - - 0x0009A8 00:C998: C6 0F     DEC ram_000F
C - - - - - 0x0009AA 00:C99A: D0 E8     BNE bra_C984_loop
C - - - - - 0x0009AC 00:C99C: 20 BF F4  JSR sub_F4BF
loc_C99F:
C D 2 - - - 0x0009AF 00:C99F: 20 E8 D6  JSR sub_D6E8
C - - - - - 0x0009B2 00:C9A2: 20 A7 CA  JSR sub_CAA7_clear_data_of_all_objects
C - - - - - 0x0009B5 00:C9A5: A2 20     LDX #$20
C - - - - - 0x0009B7 00:C9A7: A9 00     LDA #$00
bra_C9A9_loop:
C - - - - - 0x0009B9 00:C9A9: 95 70     STA ram_plr_data_1,X
C - - - - - 0x0009BB 00:C9AB: E8        INX
C - - - - - 0x0009BC 00:C9AC: E0 40     CPX #$40
C - - - - - 0x0009BE 00:C9AE: D0 F9     BNE bra_C9A9_loop
C - - - - - 0x0009C0 00:C9B0: 20 41 C2  JSR sub_C241_disable_rendering
C - - - - - 0x0009C3 00:C9B3: 20 49 CD  JSR sub_CD49
C - - - - - 0x0009C6 00:C9B6: 20 5B E3  JSR sub_E35B
C - - - - - 0x0009C9 00:C9B9: A5 7C     LDA ram_bonus_round
C - - - - - 0x0009CB 00:C9BB: D0 12     BNE bra_C9CF_it_is_a_bonus_round
C - - - - - 0x0009CD 00:C9BD: 20 C5 E5  JSR sub_E5C5
C - - - - - 0x0009D0 00:C9C0: 20 62 E8  JSR sub_E862
C - - - - - 0x0009D3 00:C9C3: 20 01 F0  JSR sub_F001
C - - - - - 0x0009D6 00:C9C6: 20 17 EF  JSR sub_EF17
C - - - - - 0x0009D9 00:C9C9: 20 39 C2  JSR sub_C239_enable_rendering
C - - - - - 0x0009DC 00:C9CC: 4C 02 C9  JMP loc_C902
bra_C9CF_it_is_a_bonus_round:
C - - - - - 0x0009DF 00:C9CF: 20 C1 F3  JSR sub_F3C1
C - - - - - 0x0009E2 00:C9D2: 20 3A F1  JSR sub_F13A
C - - - - - 0x0009E5 00:C9D5: 20 39 C2  JSR sub_C239_enable_rendering
C - - - - - 0x0009E8 00:C9D8: 20 0B D8  JSR sub_D80B
C - - - - - 0x0009EB 00:C9DB: 20 C0 D8  JSR sub_D8C0
C - - - - - 0x0009EE 00:C9DE: A9 00     LDA #$00
C - - - - - 0x0009F0 00:C9E0: 85 4B     STA ram_004B
C - - - - - 0x0009F2 00:C9E2: 85 4F     STA ram_004F
C - - - - - 0x0009F4 00:C9E4: A9 AC     LDA #$AC
C - - - - - 0x0009F6 00:C9E6: 85 0F     STA ram_000F
C - - - - - 0x0009F8 00:C9E8: A9 08     LDA #$08
C - - - - - 0x0009FA 00:C9EA: 85 0E     STA ram_000E
bra_C9EC_loop:
C - - - - - 0x0009FC 00:C9EC: 20 41 C1  JSR sub_C141
C - - - - - 0x0009FF 00:C9EF: 20 7B CB  JSR sub_CB7B
C - - - - - 0x000A02 00:C9F2: A5 4B     LDA ram_004B
C - - - - - 0x000A04 00:C9F4: F0 08     BEQ bra_C9FE
C - - - - - 0x000A06 00:C9F6: AD 2F 04  LDA ram_042F
C - - - - - 0x000A09 00:C9F9: 0D 3F 04  ORA ram_043F
C - - - - - 0x000A0C 00:C9FC: F0 13     BEQ bra_CA11
bra_C9FE:
C - - - - - 0x000A0E 00:C9FE: A5 4F     LDA ram_004F
C - - - - - 0x000A10 00:CA00: D0 0F     BNE bra_CA11
C - - - - - 0x000A12 00:CA02: A5 0F     LDA ram_000F
C - - - - - 0x000A14 00:CA04: 38        SEC
C - - - - - 0x000A15 00:CA05: E9 01     SBC #$01
C - - - - - 0x000A17 00:CA07: 85 0F     STA ram_000F
C - - - - - 0x000A19 00:CA09: B0 02     BCS bra_CA0D
C - - - - - 0x000A1B 00:CA0B: C6 0E     DEC ram_000E
bra_CA0D:
C - - - - - 0x000A1D 00:CA0D: 05 0E     ORA ram_000E
C - - - - - 0x000A1F 00:CA0F: D0 DB     BNE bra_C9EC_loop
bra_CA11:
C - - - - - 0x000A21 00:CA11: A9 1E     LDA #$1E
C - - - - - 0x000A23 00:CA13: 85 0F     STA ram_000F
bra_CA15_loop:
C - - - - - 0x000A25 00:CA15: 20 41 C1  JSR sub_C141
C - - - - - 0x000A28 00:CA18: 20 1C D7  JSR sub_D71C
C - - - - - 0x000A2B 00:CA1B: C6 0F     DEC ram_000F
C - - - - - 0x000A2D 00:CA1D: D0 F6     BNE bra_CA15_loop
C - - - - - 0x000A2F 00:CA1F: 20 BF F4  JSR sub_F4BF
C - - - - - 0x000A32 00:CA22: 20 1A CE  JSR sub_CE1A
C - - - - - 0x000A35 00:CA25: 4C 9F C9  JMP loc_C99F



loc_CA28:
bra_CA28_loop:
C D 2 - - - 0x000A38 00:CA28: 20 41 C1  JSR sub_C141
C - - - - - 0x000A3B 00:CA2B: 20 60 CB  JSR sub_CB60
C - - - - - 0x000A3E 00:CA2E: AD 0F 04  LDA ram_040F
C - - - - - 0x000A41 00:CA31: D0 F5     BNE bra_CA28_loop
C - - - - - 0x000A43 00:CA33: A5 40     LDA ram_game_mode
C - - - - - 0x000A45 00:CA35: D0 0A     BNE bra_CA41_2_players
- - - - - - 0x000A47 00:CA37: A5 70     LDA ram_lives_1
- - - - - - 0x000A49 00:CA39: D0 2C     BNE bra_CA67
- - - - - - 0x000A4B 00:CA3B: 20 C3 CA  JSR sub_CAC3
- - - - - - 0x000A4E 00:CA3E: 4C 4F C8  JMP loc_C84F
bra_CA41_2_players:
C - - - - - 0x000A51 00:CA41: A5 70     LDA ram_lives_1
C - - - - - 0x000A53 00:CA43: D0 1B     BNE bra_CA60
C - - - - - 0x000A55 00:CA45: 20 B4 CA  JSR sub_CAB4
C - - - - - 0x000A58 00:CA48: A5 B0     LDA ram_lives_2
C - - - - - 0x000A5A 00:CA4A: D0 18     BNE bra_CA64
C - - - - - 0x000A5C 00:CA4C: A9 3C     LDA #$3C
C - - - - - 0x000A5E 00:CA4E: 85 0F     STA ram_000F
bra_CA50_loop:
C - - - - - 0x000A60 00:CA50: 20 41 C1  JSR sub_C141
C - - - - - 0x000A63 00:CA53: 20 31 CB  JSR sub_CB31
C - - - - - 0x000A66 00:CA56: 20 1C D7  JSR sub_D71C
C - - - - - 0x000A69 00:CA59: C6 0F     DEC ram_000F
C - - - - - 0x000A6B 00:CA5B: D0 F3     BNE bra_CA50_loop
C - - - - - 0x000A6D 00:CA5D: 4C 4F C8  JMP loc_C84F
bra_CA60:
C - - - - - 0x000A70 00:CA60: A5 B0     LDA ram_lives_2
C - - - - - 0x000A72 00:CA62: F0 03     BEQ bra_CA67
bra_CA64:
C - - - - - 0x000A74 00:CA64: 20 81 CA  JSR sub_CA81
bra_CA67:
C - - - - - 0x000A77 00:CA67: C6 70     DEC ram_lives_1
C - - - - - 0x000A79 00:CA69: 20 A7 CA  JSR sub_CAA7_clear_data_of_all_objects
C - - - - - 0x000A7C 00:CA6C: 20 41 C2  JSR sub_C241_disable_rendering
C - - - - - 0x000A7F 00:CA6F: 20 49 CD  JSR sub_CD49
C - - - - - 0x000A82 00:CA72: 20 5B E3  JSR sub_E35B
C - - - - - 0x000A85 00:CA75: 20 14 E6  JSR sub_E614
C - - - - - 0x000A88 00:CA78: 20 B2 E8  JSR sub_E8B2
C - - - - - 0x000A8B 00:CA7B: 20 39 C2  JSR sub_C239_enable_rendering
C - - - - - 0x000A8E 00:CA7E: 4C 02 C9  JMP loc_C902



sub_CA81:
C - - - - - 0x000A91 00:CA81: A5 41     LDA ram_player_index
C - - - - - 0x000A93 00:CA83: 49 01     EOR #$01
C - - - - - 0x000A95 00:CA85: 85 41     STA ram_player_index
C - - - - - 0x000A97 00:CA87: A2 00     LDX #$00
bra_CA89_loop:
C - - - - - 0x000A99 00:CA89: BD 00 02  LDA ram_0200,X
C - - - - - 0x000A9C 00:CA8C: BC 00 03  LDY ram_0300,X
C - - - - - 0x000A9F 00:CA8F: 9D 00 03  STA ram_0300,X
C - - - - - 0x000AA2 00:CA92: 98        TYA
C - - - - - 0x000AA3 00:CA93: 9D 00 02  STA ram_0200,X
C - - - - - 0x000AA6 00:CA96: E8        INX
C - - - - - 0x000AA7 00:CA97: D0 F0     BNE bra_CA89_loop
bra_CA99_loop:
C - - - - - 0x000AA9 00:CA99: B5 70     LDA ram_plr_data_1,X
C - - - - - 0x000AAB 00:CA9B: B4 B0     LDY ram_plr_data_2,X
C - - - - - 0x000AAD 00:CA9D: 95 B0     STA ram_plr_data_2,X
C - - - - - 0x000AAF 00:CA9F: 94 70     STY ram_plr_data_1,X
C - - - - - 0x000AB1 00:CAA1: E8        INX
C - - - - - 0x000AB2 00:CAA2: E0 40     CPX #$40
C - - - - - 0x000AB4 00:CAA4: D0 F3     BNE bra_CA99_loop
C - - - - - 0x000AB6 00:CAA6: 60        RTS



sub_CAA7_clear_data_of_all_objects:
C - - - - - 0x000AB7 00:CAA7: A9 00     LDA #$00
C - - - - - 0x000AB9 00:CAA9: A2 00     LDX #$00    ; bzk optimize, TAX
bra_CAAB_loop:
C - - - - - 0x000ABB 00:CAAB: 9D 00 04  STA ram_obj_data_1,X
C - - - - - 0x000ABE 00:CAAE: E8        INX
C - - - - - 0x000ABF 00:CAAF: E0 C0     CPX #$C0
C - - - - - 0x000AC1 00:CAB1: D0 F8     BNE bra_CAAB_loop
C - - - - - 0x000AC3 00:CAB3: 60        RTS



sub_CAB4:
C - - - - - 0x000AC4 00:CAB4: A5 B0     LDA ram_lives_2
C - - - - - 0x000AC6 00:CAB6: F0 0B     BEQ bra_CAC3
C - - - - - 0x000AC8 00:CAB8: A9 78     LDA #$78
C - - - - - 0x000ACA 00:CABA: 85 0F     STA ram_000F
C - - - - - 0x000ACC 00:CABC: A9 00     LDA #$00
C - - - - - 0x000ACE 00:CABE: 85 0E     STA ram_000E
C - - - - - 0x000AD0 00:CAC0: 4C DA CA  JMP loc_CADA
bra_CAC3:
sub_CAC3:
C - - - - - 0x000AD3 00:CAC3: A9 01     LDA #$01
C - - - - - 0x000AD5 00:CAC5: 8D 15 06  STA ram_0615
C - - - - - 0x000AD8 00:CAC8: 8D 16 06  STA ram_0616
C - - - - - 0x000ADB 00:CACB: 8D 17 06  STA ram_0617
C - - - - - 0x000ADE 00:CACE: A9 00     LDA #$00    ; set demo mode
C - - - - - 0x000AE0 00:CAD0: 85 42     STA ram_demo_flag
C - - - - - 0x000AE2 00:CAD2: A9 A4     LDA #$A4
C - - - - - 0x000AE4 00:CAD4: 85 0F     STA ram_000F
C - - - - - 0x000AE6 00:CAD6: A9 01     LDA #$01
C - - - - - 0x000AE8 00:CAD8: 85 0E     STA ram_000E
loc_CADA:
bra_CADA_loop:
C D 2 - - - 0x000AEA 00:CADA: 20 41 C1  JSR sub_C141
C - - - - - 0x000AED 00:CADD: A5 40     LDA ram_game_mode
C - - - - - 0x000AEF 00:CADF: F0 03     BEQ bra_CAE4_1_player
C - - - - - 0x000AF1 00:CAE1: 20 02 CB  JSR sub_CB02
bra_CAE4_1_player:
C - - - - - 0x000AF4 00:CAE4: 20 31 CB  JSR sub_CB31
C - - - - - 0x000AF7 00:CAE7: 20 1C D7  JSR sub_D71C
C - - - - - 0x000AFA 00:CAEA: A5 25     LDA ram_0025
C - - - - - 0x000AFC 00:CAEC: 29 03     AND #$03
C - - - - - 0x000AFE 00:CAEE: C9 01     CMP #$01
C - - - - - 0x000B00 00:CAF0: F0 0F     BEQ bra_CB01_RTS
C - - - - - 0x000B02 00:CAF2: A5 0F     LDA ram_000F
C - - - - - 0x000B04 00:CAF4: 38        SEC
C - - - - - 0x000B05 00:CAF5: E9 01     SBC #$01
C - - - - - 0x000B07 00:CAF7: 85 0F     STA ram_000F
C - - - - - 0x000B09 00:CAF9: B0 02     BCS bra_CAFD_not_underflow
C - - - - - 0x000B0B 00:CAFB: C6 0E     DEC ram_000E
bra_CAFD_not_underflow:
C - - - - - 0x000B0D 00:CAFD: 05 0E     ORA ram_000E
C - - - - - 0x000B0F 00:CAFF: D0 D9     BNE bra_CADA_loop
bra_CB01_RTS:
C - - - - - 0x000B11 00:CB01: 60        RTS



sub_CB02:
C - - - - - 0x000B12 00:CB02: AD 8A CB  LDA tbl_CB8A
C - - - - - 0x000B15 00:CB05: 85 1E     STA ram_001E
C - - - - - 0x000B17 00:CB07: AD 8B CB  LDA tbl_CB8A + $01
C - - - - - 0x000B1A 00:CB0A: 85 1F     STA ram_001F
C - - - - - 0x000B1C 00:CB0C: 20 3B CB  JSR sub_CB3B
C - - - - - 0x000B1F 00:CB0F: A5 41     LDA ram_player_index
C - - - - - 0x000B21 00:CB11: 18        CLC
C - - - - - 0x000B22 00:CB12: 69 D6     ADC #$D6
sub_CB14:
C - - - - - 0x000B24 00:CB14: F0 0F     BEQ bra_CB25
C - - - - - 0x000B26 00:CB16: 85 12     STA ram_0012
C - - - - - 0x000B28 00:CB18: A9 02     LDA #$02
C - - - - - 0x000B2A 00:CB1A: 85 13     STA ram_0013
C - - - - - 0x000B2C 00:CB1C: A9 00     LDA #$00
C - - - - - 0x000B2E 00:CB1E: 85 14     STA ram_0014
C - - - - - 0x000B30 00:CB20: 85 15     STA ram_0015
C - - - - - 0x000B32 00:CB22: 20 15 C4  JSR sub_C415_write_spr_data
bra_CB25:
C - - - - - 0x000B35 00:CB25: A5 10     LDA ram_0010
C - - - - - 0x000B37 00:CB27: 18        CLC
C - - - - - 0x000B38 00:CB28: 69 08     ADC #$08
C - - - - - 0x000B3A 00:CB2A: 85 10     STA ram_0010
C - - - - - 0x000B3C 00:CB2C: D0 02     BNE bra_CB30_RTS
- - - - - - 0x000B3E 00:CB2E: E6 11     INC ram_0011
bra_CB30_RTS:
C - - - - - 0x000B40 00:CB30: 60        RTS



sub_CB31:
C - - - - - 0x000B41 00:CB31: AD 97 CB  LDA tbl_CB97
C - - - - - 0x000B44 00:CB34: 85 1E     STA ram_001E
C - - - - - 0x000B46 00:CB36: AD 98 CB  LDA tbl_CB97 + $01
C - - - - - 0x000B49 00:CB39: 85 1F     STA ram_001F
sub_CB3B:
C - - - - - 0x000B4B 00:CB3B: A0 00     LDY #$00
C - - - - - 0x000B4D 00:CB3D: B1 1E     LDA (ram_001E),Y
C - - - - - 0x000B4F 00:CB3F: C8        INY
C - - - - - 0x000B50 00:CB40: 85 10     STA ram_0010
C - - - - - 0x000B52 00:CB42: B1 1E     LDA (ram_001E),Y
C - - - - - 0x000B54 00:CB44: C8        INY
C - - - - - 0x000B55 00:CB45: 85 11     STA ram_0011
C - - - - - 0x000B57 00:CB47: B1 1E     LDA (ram_001E),Y
C - - - - - 0x000B59 00:CB49: C8        INY
C - - - - - 0x000B5A 00:CB4A: 85 16     STA ram_0016
C - - - - - 0x000B5C 00:CB4C: B1 1E     LDA (ram_001E),Y
C - - - - - 0x000B5E 00:CB4E: C8        INY
C - - - - - 0x000B5F 00:CB4F: 85 18     STA ram_0018
bra_CB51_loop:
C - - - - - 0x000B61 00:CB51: B1 1E     LDA (ram_001E),Y
C - - - - - 0x000B63 00:CB53: 84 17     STY ram_0017
C - - - - - 0x000B65 00:CB55: 20 14 CB  JSR sub_CB14
C - - - - - 0x000B68 00:CB58: A4 17     LDY ram_0017
C - - - - - 0x000B6A 00:CB5A: C8        INY
C - - - - - 0x000B6B 00:CB5B: C6 18     DEC ram_0018
C - - - - - 0x000B6D 00:CB5D: D0 F2     BNE bra_CB51_loop
C - - - - - 0x000B6F 00:CB5F: 60        RTS



sub_CB60:
C - - - - - 0x000B70 00:CB60: 20 FE E3  JSR sub_E3FE
C - - - - - 0x000B73 00:CB63: 20 D8 D8  JSR sub_D8D8
C - - - - - 0x000B76 00:CB66: 20 4E ED  JSR sub_ED4E
C - - - - - 0x000B79 00:CB69: 20 3F EF  JSR sub_EF3F
C - - - - - 0x000B7C 00:CB6C: 20 34 E6  JSR sub_E634
C - - - - - 0x000B7F 00:CB6F: 20 CC E8  JSR sub_E8CC
C - - - - - 0x000B82 00:CB72: 20 4D F0  JSR sub_F04D
C - - - - - 0x000B85 00:CB75: 20 1C D7  JSR sub_D71C
C - - - - - 0x000B88 00:CB78: 4C AB D5  JMP loc_D5AB



sub_CB7B:
C - - - - - 0x000B8B 00:CB7B: 20 FE E3  JSR sub_E3FE
C - - - - - 0x000B8E 00:CB7E: 20 D8 D8  JSR sub_D8D8
C - - - - - 0x000B91 00:CB81: 20 8F F1  JSR sub_F18F
C - - - - - 0x000B94 00:CB84: 20 1C D7  JSR sub_D71C
C - - - - - 0x000B97 00:CB87: 4C AB D5  JMP loc_D5AB



tbl_CB8A:
- D 2 - - - 0x000B9A 00:CB8A: 8C CB     .word off_CB8C

off_CB8C:
- D 2 - I - 0x000B9C 00:CB8C: 58        .byte $58   ; 
- D 2 - I - 0x000B9D 00:CB8D: 00        .byte $00   ; 
- D 2 - I - 0x000B9E 00:CB8E: 78        .byte $78   ; 
- D 2 - I - 0x000B9F 00:CB8F: 07        .byte $07   ; 
- D 2 - I - 0x000BA0 00:CB90: D0        .byte $D0   ; 
- D 2 - I - 0x000BA1 00:CB91: D1        .byte $D1   ; 
- D 2 - I - 0x000BA2 00:CB92: D2        .byte $D2   ; 
- D 2 - I - 0x000BA3 00:CB93: D3        .byte $D3   ; 
- D 2 - I - 0x000BA4 00:CB94: D4        .byte $D4   ; 
- D 2 - I - 0x000BA5 00:CB95: D5        .byte $D5   ; 
- D 2 - I - 0x000BA6 00:CB96: 00        .byte $00   ; 



tbl_CB97:
- D 2 - - - 0x000BA7 00:CB97: 99 CB     .word off_CB99

off_CB99:
- D 2 - I - 0x000BA9 00:CB99: 58        .byte $58   ; 
- D 2 - I - 0x000BAA 00:CB9A: 00        .byte $00   ; 
- D 2 - I - 0x000BAB 00:CB9B: 88        .byte $88   ; 
- D 2 - I - 0x000BAC 00:CB9C: 09        .byte $09   ; 
- D 2 - I - 0x000BAD 00:CB9D: D8        .byte $D8   ; 
- D 2 - I - 0x000BAE 00:CB9E: D2        .byte $D2   ; 
- D 2 - I - 0x000BAF 00:CB9F: D9        .byte $D9   ; 
- D 2 - I - 0x000BB0 00:CBA0: D4        .byte $D4   ; 
- D 2 - I - 0x000BB1 00:CBA1: 00        .byte $00   ; 
- D 2 - I - 0x000BB2 00:CBA2: DA        .byte $DA   ; 
- D 2 - I - 0x000BB3 00:CBA3: DB        .byte $DB   ; 
- D 2 - I - 0x000BB4 00:CBA4: D4        .byte $D4   ; 
- D 2 - I - 0x000BB5 00:CBA5: D5        .byte $D5   ; 



tbl_CBA6:
- D 2 - - - 0x000BB6 00:CBA6: A8 CB     .word off_CBA8

off_CBA8:
- D 2 - I - 0x000BB8 00:CBA8: 60        .byte $60   ; 
- D 2 - I - 0x000BB9 00:CBA9: 00        .byte $00   ; 
- D 2 - I - 0x000BBA 00:CBAA: 88        .byte $88   ; 
- D 2 - I - 0x000BBB 00:CBAB: 05        .byte $05   ; 
- D 2 - I - 0x000BBC 00:CBAC: D5        .byte $D5   ; 
- D 2 - I - 0x000BBD 00:CBAD: D4        .byte $D4   ; 
- D 2 - I - 0x000BBE 00:CBAE: D2        .byte $D2   ; 
- D 2 - I - 0x000BBF 00:CBAF: CA        .byte $CA   ; 
- D 2 - I - 0x000BC0 00:CBB0: D3        .byte $D3   ; 



sub_CBB1:
C - - - - - 0x000BC1 00:CBB1: 20 F5 CB  JSR sub_CBF5_clear_ppu_2000_27FF
C - - - - - 0x000BC4 00:CBB4: A0 02     LDY #$02
C - - - - - 0x000BC6 00:CBB6: 20 15 CC  JSR sub_CC15
C - - - - - 0x000BC9 00:CBB9: A0 00     LDY #con_D640_00
C - - - - - 0x000BCB 00:CBBB: 20 D9 D5  JSR sub_D5D9
C - - - - - 0x000BCE 00:CBBE: A0 04     LDY #con_D640_04
C - - - - - 0x000BD0 00:CBC0: 20 D9 D5  JSR sub_D5D9
C - - - - - 0x000BD3 00:CBC3: A0 08     LDY #con_D640_08
C - - - - - 0x000BD5 00:CBC5: 20 D9 D5  JSR sub_D5D9
C - - - - - 0x000BD8 00:CBC8: A9 B0     LDA #$B0    ; tiles for MAPPY at the logo
C - - - - - 0x000BDA 00:CBCA: 85 10     STA ram_0010
C - - - - - 0x000BDC 00:CBCC: A0 00     LDY #$00
bra_CBCE_loop:
C - - - - - 0x000BDE 00:CBCE: A2 14     LDX #$14
C - - - - - 0x000BE0 00:CBD0: B9 EE CB  LDA tbl_CBED_ppu + $01,Y
C - - - - - 0x000BE3 00:CBD3: 8D 06 20  STA $2006
C - - - - - 0x000BE6 00:CBD6: B9 ED CB  LDA tbl_CBED_ppu,Y
C - - - - - 0x000BE9 00:CBD9: 8D 06 20  STA $2006
bra_CBDC_loop:
C - - - - - 0x000BEC 00:CBDC: A5 10     LDA ram_0010
C - - - - - 0x000BEE 00:CBDE: 8D 07 20  STA $2007
C - - - - - 0x000BF1 00:CBE1: E6 10     INC ram_0010
C - - - - - 0x000BF3 00:CBE3: CA        DEX
C - - - - - 0x000BF4 00:CBE4: D0 F6     BNE bra_CBDC_loop
C - - - - - 0x000BF6 00:CBE6: C8        INY
C - - - - - 0x000BF7 00:CBE7: C8        INY
C - - - - - 0x000BF8 00:CBE8: C0 08     CPY #$08
C - - - - - 0x000BFA 00:CBEA: D0 E2     BNE bra_CBCE_loop
C - - - - - 0x000BFC 00:CBEC: 60        RTS



tbl_CBED_ppu:
- D 2 - - - 0x000BFD 00:CBED: 07 21     .word $2107
- D 2 - - - 0x000BFF 00:CBEF: 27 21     .word $2127
- D 2 - - - 0x000C01 00:CBF1: 47 21     .word $2147
- D 2 - - - 0x000C03 00:CBF3: 67 21     .word $2167



sub_CBF5_clear_ppu_2000_27FF:
C - - - - - 0x000C05 00:CBF5: A9 00     LDA #$00
C - - - - - 0x000C07 00:CBF7: 85 2A     STA ram_002A
C - - - - - 0x000C09 00:CBF9: 85 2B     STA ram_002B
C - - - - - 0x000C0B 00:CBFB: A9 20     LDA #> $2000
C - - - - - 0x000C0D 00:CBFD: 8D 06 20  STA $2006
C - - - - - 0x000C10 00:CC00: A9 00     LDA #< $2000
C - - - - - 0x000C12 00:CC02: 8D 06 20  STA $2006
C - - - - - 0x000C15 00:CC05: A9 00     LDA #$00
C - - - - - 0x000C17 00:CC07: A0 08     LDY #$08
C - - - - - 0x000C19 00:CC09: A2 00     LDX #$00
bra_CC0B_loop:
C - - - - - 0x000C1B 00:CC0B: 8D 07 20  STA $2007
C - - - - - 0x000C1E 00:CC0E: CA        DEX
C - - - - - 0x000C1F 00:CC0F: D0 FA     BNE bra_CC0B_loop
C - - - - - 0x000C21 00:CC11: 88        DEY
C - - - - - 0x000C22 00:CC12: D0 F7     BNE bra_CC0B_loop
bra_CC14_RTS:
C - - - - - 0x000C24 00:CC14: 60        RTS



sub_CC15:
C - - - - - 0x000C25 00:CC15: B9 41 CC  LDA tbl_CC41,Y
C - - - - - 0x000C28 00:CC18: 85 10     STA ram_0010
C - - - - - 0x000C2A 00:CC1A: B9 42 CC  LDA tbl_CC41 + $01,Y
C - - - - - 0x000C2D 00:CC1D: 85 11     STA ram_0011
C - - - - - 0x000C2F 00:CC1F: A0 00     LDY #$00
bra_CC21_loop:
C - - - - - 0x000C31 00:CC21: B1 10     LDA (ram_0010),Y
C - - - - - 0x000C33 00:CC23: F0 EF     BEQ bra_CC14_RTS
C - - - - - 0x000C35 00:CC25: C8        INY
C - - - - - 0x000C36 00:CC26: 85 12     STA ram_0012
C - - - - - 0x000C38 00:CC28: B1 10     LDA (ram_0010),Y
C - - - - - 0x000C3A 00:CC2A: C8        INY
C - - - - - 0x000C3B 00:CC2B: AA        TAX
C - - - - - 0x000C3C 00:CC2C: B1 10     LDA (ram_0010),Y
C - - - - - 0x000C3E 00:CC2E: C8        INY
C - - - - - 0x000C3F 00:CC2F: 8D 06 20  STA $2006
C - - - - - 0x000C42 00:CC32: 8E 06 20  STX $2006
bra_CC35_loop:
C - - - - - 0x000C45 00:CC35: B1 10     LDA (ram_0010),Y
C - - - - - 0x000C47 00:CC37: C8        INY
C - - - - - 0x000C48 00:CC38: 8D 07 20  STA $2007
C - - - - - 0x000C4B 00:CC3B: C6 12     DEC ram_0012
C - - - - - 0x000C4D 00:CC3D: D0 F6     BNE bra_CC35_loop
C - - - - - 0x000C4F 00:CC3F: F0 E0     BEQ bra_CC21_loop   ; jmp



tbl_CC41:
- D 2 - - - 0x000C51 00:CC41: 4B CC     .word off_CC4B_00
- D 2 - - - 0x000C53 00:CC43: 60 CC     .word off_CC60_02_logo_screen
- D 2 - - - 0x000C55 00:CC45: EF CC     .word off_CCEF_04
- D 2 - - - 0x000C57 00:CC47: 03 CD     .word off_CD03_06
- D 2 - - - 0x000C59 00:CC49: 17 CD     .word off_CD17_08



off_CC4B_00:
- D 2 - I - 0x000C5B 00:CC4B: 11        .byte $11   ; counter
- D 2 - I - 0x000C5C 00:CC4C: 4B 20     .word $204B ; ppu
- D 2 - I - 0x000C5E 00:CC4E: A0        .byte $A0, $A1, $A2, $A3, $A4, $A5, $A6, $A7   ; HI-SCORE
- D 2 - I - 0x000C66 00:CC56: 00        .byte $00, $00, $00, $AC, $AD, $00, $00, $00   ; MP
- D 2 - I - 0x000C6E 00:CC5E: AE        .byte $AE   ; 

- D 2 - I - 0x000C6F 00:CC5F: 00        .byte $00   ; end token



off_CC60_02_logo_screen:
- D 2 - I - 0x000C70 00:CC60: 20        .byte $20   ; counter
- D 2 - I - 0x000C71 00:CC61: 00 3F     .word $3F00 ; ppu
- D 2 - I - 0x000C73 00:CC63: 0F        .byte $0F, $30, $16, $21   ; background palette
- D 2 - I - 0x000C77 00:CC67: 0F        .byte $0F, $16, $17, $13   ; 
- D 2 - I - 0x000C7B 00:CC6B: 0F        .byte $0F, $27, $29, $13   ; 
- D 2 - I - 0x000C7F 00:CC6F: 0F        .byte $0F, $29, $21, $13   ; 

- D 2 - I - 0x000C83 00:CC73: 0F        .byte $0F, $10, $11, $36   ; sprite palette
- D 2 - I - 0x000C87 00:CC77: 0F        .byte $0F, $25, $11, $27   ; 
- D 2 - I - 0x000C8B 00:CC7B: 0F        .byte $0F, $16, $11, $36   ; 
- D 2 - I - 0x000C8F 00:CC7F: 0F        .byte $0F, $30, $30, $30   ; 

- D 2 - I - 0x000C93 00:CC83: 06        .byte $06   ; counter
- D 2 - I - 0x000C94 00:CC84: D1 23     .word $23D1 ; ppu
- D 2 - I - 0x000C96 00:CC86: 55        .byte $55, $55, $55, $AA, $FF, $FF   ; nametable attributes

- D 2 - I - 0x000C9C 00:CC8C: 15        .byte $15   ; counter
- D 2 - I - 0x000C9D 00:CC8D: 45 20     .word $2045 ; ppu
- D 2 - I - 0x000C9F 00:CC8F: A8        .byte $A8, $AA, $AB, $00, $00, $00, $A0, $A1   ; 1UP HI-SCORE 2UP
- D 2 - I - 0x000CA7 00:CC97: A2        .byte $A2, $A3, $A4, $A5, $A6, $A7, $00, $00   ; 
- D 2 - I - 0x000CAF 00:CC9F: 00        .byte $00, $00, $A9, $AA, $AB   ; 

- D 2 - I - 0x000CB4 00:CCA4: 08        .byte $08   ; counter
- D 2 - I - 0x000CB5 00:CCA5: EB 21     .word $21EB ; ppu
- D 2 - I - 0x000CB7 00:CCA7: 02        .byte $02, $00, $1A, $16, $0B, $23, $0F, $1C   ; 1 PLAYER

- D 2 - I - 0x000CBF 00:CCAF: 09        .byte $09   ; counter
- D 2 - I - 0x000CC0 00:CCB0: 2B 22     .word $222B ; ppu
- D 2 - I - 0x000CC2 00:CCB2: 03        .byte $03, $00, $1A, $16, $0B, $23, $0F, $1C, $1D   ; 2 PLAYERS

- D 2 - I - 0x000CCB 00:CCBB: 01        .byte $01   ; counter
- D 2 - I - 0x000CCC 00:CCBC: 8B 22     .word $228B ; ppu
- D 2 - I - 0x000CCE 00:CCBE: 27        .byte $27   ; half of the letter N from NAMCOT

- D 2 - I - 0x000CCF 00:CCBF: 16        .byte $16   ; counter
- D 2 - I - 0x000CD0 00:CCC0: E5 22     .word $22E5 ; ppu
- D 2 - I - 0x000CD2 00:CCC2: 26        .byte $26, $00, $02, $0A, $09, $04, $00, $02   ; @ 1993 1994 NAMCO LTD.
- D 2 - I - 0x000CDA 00:CCCA: 0A        .byte $0A, $09, $05, $00, $18, $0B, $17, $0D   ; 
- D 2 - I - 0x000CE2 00:CCD2: 19        .byte $19, $00, $16, $1E, $0E, $25   ; 

- D 2 - I - 0x000CE8 00:CCD8: 13        .byte $13   ; counter
- D 2 - I - 0x000CE9 00:CCD9: 27 23     .word $2327 ; ppu
- D 2 - I - 0x000CEB 00:CCDB: 0B        .byte $0B, $16, $16, $00, $1C, $13, $11, $12   ; ALL RIGHTS RESERVED
- D 2 - I - 0x000CF3 00:CCE3: 1E        .byte $1E, $1D, $00, $1C, $0F, $1D, $0F, $1C   ; 
- D 2 - I - 0x000CFB 00:CCEB: 20        .byte $20, $0F, $0E   ; 

- D 2 - I - 0x000CFE 00:CCEE: 00        .byte $00   ; end token



off_CCEF_04:
- D 2 - I - 0x000CFF 00:CCEF: 10        .byte $10   ; counter
- D 2 - I - 0x000D00 00:CCF0: 00 3F     .word $3F00 ; ppu
- D 2 - I - 0x000D02 00:CCF2: 0F        .byte $0F, $30, $16, $21   ; background palette
- D 2 - I - 0x000D06 00:CCF6: 0F        .byte $0F, $16, $36, $17   ; 
- D 2 - I - 0x000D0A 00:CCFA: 0F        .byte $0F, $19, $11, $36   ; 
- D 2 - I - 0x000D0E 00:CCFE: 0F        .byte $0F, $29, $19, $13   ; 

- D 2 - I - 0x000D12 00:CD02: 00        .byte $00   ; end token



off_CD03_06:
- D 2 - I - 0x000D13 00:CD03: 10        .byte $10   ; counter
- D 2 - I - 0x000D14 00:CD04: 00 3F     .word $3F00 ; ppu
- D 2 - I - 0x000D16 00:CD06: 0F        .byte $0F, $30, $16, $21   ; background palette
- D 2 - I - 0x000D1A 00:CD0A: 0F        .byte $0F, $11, $36, $17   ; 
- D 2 - I - 0x000D1E 00:CD0E: 0F        .byte $0F, $19, $11, $36   ; 
- D 2 - I - 0x000D22 00:CD12: 0F        .byte $0F, $29, $19, $13   ; 

- D 2 - I - 0x000D26 00:CD16: 00        .byte $00   ; end token



off_CD17_08:
- D 2 - I - 0x000D27 00:CD17: 10        .byte $10   ; counter
- D 2 - I - 0x000D28 00:CD18: 00 3F     .word $3F00 ; ppu
- D 2 - I - 0x000D2A 00:CD1A: 0F        .byte $0F, $30, $16, $21   ; background palette
- D 2 - I - 0x000D2E 00:CD1E: 0F        .byte $0F, $19, $36, $17   ; 
- D 2 - I - 0x000D32 00:CD22: 0F        .byte $0F, $19, $11, $36   ; 
- D 2 - I - 0x000D36 00:CD26: 0F        .byte $0F, $29, $19, $13   ; 

- D 2 - I - 0x000D3A 00:CD2A: 00        .byte $00   ; end token



sub_CD2B:
C - - - - - 0x000D3B 00:CD2B: A2 00     LDX #$00
bra_CD2D_loop:
C - - - - - 0x000D3D 00:CD2D: BD 39 CD  LDA tbl_CD39,X
C - - - - - 0x000D40 00:CD30: 9D 90 04  STA ram_0490,X
C - - - - - 0x000D43 00:CD33: E8        INX
C - - - - - 0x000D44 00:CD34: E0 05     CPX #$05
C - - - - - 0x000D46 00:CD36: D0 F5     BNE bra_CD2D_loop
C - - - - - 0x000D48 00:CD38: 60        RTS



tbl_CD39:
- D 2 - - - 0x000D49 00:CD39: 00        .byte $00   ; 00
- D 2 - - - 0x000D4A 00:CD3A: 0C        .byte $0C   ; 01
- D 2 - - - 0x000D4B 00:CD3B: 00        .byte $00   ; 02
- D 2 - - - 0x000D4C 00:CD3C: 14        .byte $14   ; 03
- D 2 - - - 0x000D4D 00:CD3D: 1C        .byte $1C   ; 04



sub_CD3E:
C - - - - - 0x000D4E 00:CD3E: A9 90     LDA #< ram_0490
C - - - - - 0x000D50 00:CD40: 85 1E     STA ram_001E
C - - - - - 0x000D52 00:CD42: A9 04     LDA #> ram_0490
C - - - - - 0x000D54 00:CD44: 85 1F     STA ram_001F
C - - - - - 0x000D56 00:CD46: 4C 05 C3  JMP loc_C305



sub_CD49:
C - - - - - 0x000D59 00:CD49: 20 F5 CB  JSR sub_CBF5_clear_ppu_2000_27FF
C - - - - - 0x000D5C 00:CD4C: 20 03 D7  JSR sub_D703
C - - - - - 0x000D5F 00:CD4F: A5 7A     LDA ram_current_round
C - - - - - 0x000D61 00:CD51: 0A        ASL
C - - - - - 0x000D62 00:CD52: 0A        ASL
C - - - - - 0x000D63 00:CD53: 85 1F     STA ram_001F    ; save index for later
C - - - - - 0x000D65 00:CD55: AA        TAX
C - - - - - 0x000D66 00:CD56: BD BF CD  LDA tbl_CDBF_round_attributes,X
C - - - - - 0x000D69 00:CD59: 85 7C     STA ram_bonus_round
C - - - - - 0x000D6B 00:CD5B: F0 30     BEQ bra_CD8D_not_a_bonus_round
C - - - - - 0x000D6D 00:CD5D: A9 00     LDA #$00
C - - - - - 0x000D6F 00:CD5F: 85 28     STA ram_cam_pos_X_lo
C - - - - - 0x000D71 00:CD61: 85 29     STA ram_cam_pos_X_hi
C - - - - - 0x000D73 00:CD63: A0 0C     LDY #$0C
C - - - - - 0x000D75 00:CD65: 20 26 D1  JSR sub_D126
C - - - - - 0x000D78 00:CD68: 20 39 C2  JSR sub_C239_enable_rendering
C - - - - - 0x000D7B 00:CD6B: A9 01     LDA #$01
C - - - - - 0x000D7D 00:CD6D: 8D 0E 06  STA ram_060E
C - - - - - 0x000D80 00:CD70: 8D 0F 06  STA ram_060F
C - - - - - 0x000D83 00:CD73: 8D 10 06  STA ram_0610
C - - - - - 0x000D86 00:CD76: A9 D2     LDA #$D2
C - - - - - 0x000D88 00:CD78: 85 0F     STA ram_000F
bra_CD7A_loop:
C - - - - - 0x000D8A 00:CD7A: 20 41 C1  JSR sub_C141
C - - - - - 0x000D8D 00:CD7D: 20 FF CD  JSR sub_CDFF
C - - - - - 0x000D90 00:CD80: C6 0F     DEC ram_000F
C - - - - - 0x000D92 00:CD82: D0 F6     BNE bra_CD7A_loop
C - - - - - 0x000D94 00:CD84: 20 41 C2  JSR sub_C241_disable_rendering
C - - - - - 0x000D97 00:CD87: 20 F5 CB  JSR sub_CBF5_clear_ppu_2000_27FF
C - - - - - 0x000D9A 00:CD8A: 20 03 D7  JSR sub_D703
bra_CD8D_not_a_bonus_round:
C - - - - - 0x000D9D 00:CD8D: A0 08     LDY #$08
C - - - - - 0x000D9F 00:CD8F: 20 69 CF  JSR sub_CF69
C - - - - - 0x000DA2 00:CD92: A6 1F     LDX ram_001F
C - - - - - 0x000DA4 00:CD94: BC C0 CD  LDY tbl_CDBF_round_attributes + $01,X
C - - - - - 0x000DA7 00:CD97: 20 15 CC  JSR sub_CC15
C - - - - - 0x000DAA 00:CD9A: A6 1F     LDX ram_001F
C - - - - - 0x000DAC 00:CD9C: BC C1 CD  LDY tbl_CDBF_round_attributes + $02,X
C - - - - - 0x000DAF 00:CD9F: 20 69 CF  JSR sub_CF69
C - - - - - 0x000DB2 00:CDA2: A6 1F     LDX ram_001F
C - - - - - 0x000DB4 00:CDA4: BC C2 CD  LDY tbl_CDBF_round_attributes + $03,X
C - - - - - 0x000DB7 00:CDA7: 20 26 D1  JSR sub_D126
; 0170-0187
C - - - - - 0x000DBA 00:CDAA: A2 00     LDX #$00
C - - - - - 0x000DBC 00:CDAC: A0 18     LDY #$18
C - - - - - 0x000DBE 00:CDAE: A9 00     LDA #$00
C - - - - - 0x000DC0 00:CDB0: 20 B7 CD  JSR sub_CDB7
; 0188-01FF
C - - - - - 0x000DC3 00:CDB3: A0 78     LDY #$78
C - - - - - 0x000DC5 00:CDB5: A9 55     LDA #$55
sub_CDB7:
bra_CDB7_loop:
C - - - - - 0x000DC7 00:CDB7: 9D 70 01  STA ram_0170,X
C - - - - - 0x000DCA 00:CDBA: E8        INX
C - - - - - 0x000DCB 00:CDBB: 88        DEY
C - - - - - 0x000DCC 00:CDBC: D0 F9     BNE bra_CDB7_loop
C - - - - - 0x000DCE 00:CDBE: 60        RTS



tbl_CDBF_round_attributes:
- D 2 - - - 0x000DCF 00:CDBF: 00        .byte $00, $04, $00, $00   ; 00 bonus round index, index for 0x000C51, index for 0x000FB6, index for 0x001195
- D 2 - - - 0x000DD3 00:CDC3: 00        .byte $00, $08, $00, $00   ; 01
- D 2 - - - 0x000DD7 00:CDC7: 02        .byte $02, $04, $0A, $0A   ; 02
- D 2 - - - 0x000DDB 00:CDCB: 00        .byte $00, $06, $02, $02   ; 03
- D 2 - - - 0x000DDF 00:CDCF: 00        .byte $00, $04, $02, $02   ; 04
- D 2 - - - 0x000DE3 00:CDD3: 00        .byte $00, $08, $02, $02   ; 05
- D 2 - - - 0x000DE7 00:CDD7: 04        .byte $04, $04, $0A, $0A   ; 06
- D 2 - - - 0x000DEB 00:CDDB: 00        .byte $00, $06, $04, $04   ; 07
- D 2 - - - 0x000DEF 00:CDDF: 00        .byte $00, $04, $04, $04   ; 08
- D 2 - - - 0x000DF3 00:CDE3: 00        .byte $00, $08, $04, $04   ; 09
- D 2 - - - 0x000DF7 00:CDE7: 06        .byte $06, $04, $0A, $0A   ; 0A
- D 2 - - - 0x000DFB 00:CDEB: 00        .byte $00, $06, $06, $06   ; 0B
- D 2 - - - 0x000DFF 00:CDEF: 00        .byte $00, $04, $06, $06   ; 0C
- D 2 - - - 0x000E03 00:CDF3: 00        .byte $00, $08, $06, $06   ; 0D
- D 2 - - - 0x000E07 00:CDF7: 08        .byte $08, $04, $0A, $0A   ; 0E
- D 2 - - - 0x000E0B 00:CDFB: 00        .byte $00, $06, $00, $00   ; 0F



sub_CDFF:
C - - - - - 0x000E0F 00:CDFF: A9 7C     LDA #$7C
C - - - - - 0x000E11 00:CE01: 85 10     STA ram_0010
C - - - - - 0x000E13 00:CE03: A9 00     LDA #$00
C - - - - - 0x000E15 00:CE05: 85 11     STA ram_0011
C - - - - - 0x000E17 00:CE07: 85 14     STA ram_0014
C - - - - - 0x000E19 00:CE09: 85 15     STA ram_0015
C - - - - - 0x000E1B 00:CE0B: A9 AA     LDA #$AA
C - - - - - 0x000E1D 00:CE0D: 85 16     STA ram_0016
C - - - - - 0x000E1F 00:CE0F: A9 CB     LDA #$CB
C - - - - - 0x000E21 00:CE11: 85 12     STA ram_0012
C - - - - - 0x000E23 00:CE13: A9 02     LDA #$02
C - - - - - 0x000E25 00:CE15: 85 13     STA ram_0013
C - - - - - 0x000E27 00:CE17: 4C EC C3  JMP loc_C3EC



sub_CE1A:
C - - - - - 0x000E2A 00:CE1A: A9 00     LDA #$00
C - - - - - 0x000E2C 00:CE1C: 85 28     STA ram_cam_pos_X_lo
C - - - - - 0x000E2E 00:CE1E: 85 29     STA ram_cam_pos_X_hi
C - - - - - 0x000E30 00:CE20: 20 41 C2  JSR sub_C241_disable_rendering
C - - - - - 0x000E33 00:CE23: 20 F5 CB  JSR sub_CBF5_clear_ppu_2000_27FF
C - - - - - 0x000E36 00:CE26: 20 03 D7  JSR sub_D703
C - - - - - 0x000E39 00:CE29: 20 39 C2  JSR sub_C239_enable_rendering
C - - - - - 0x000E3C 00:CE2C: A0 00     LDY #$00
C - - - - - 0x000E3E 00:CE2E: 20 CD CE  JSR sub_CECD
C - - - - - 0x000E41 00:CE31: A9 01     LDA #$01
C - - - - - 0x000E43 00:CE33: 8D 01 06  STA ram_0601
C - - - - - 0x000E46 00:CE36: 8D 18 06  STA ram_0618
C - - - - - 0x000E49 00:CE39: 20 BB CE  JSR sub_CEBB
C - - - - - 0x000E4C 00:CE3C: A0 04     LDY #$04
C - - - - - 0x000E4E 00:CE3E: 20 CD CE  JSR sub_CECD
C - - - - - 0x000E51 00:CE41: A0 0E     LDY #con_D640_0E
C - - - - - 0x000E53 00:CE43: 20 D9 D5  JSR sub_D5D9
C - - - - - 0x000E56 00:CE46: A0 12     LDY #con_D640_12
C - - - - - 0x000E58 00:CE48: 20 D9 D5  JSR sub_D5D9
C - - - - - 0x000E5B 00:CE4B: 20 BB CE  JSR sub_CEBB
C - - - - - 0x000E5E 00:CE4E: A0 08     LDY #$08
C - - - - - 0x000E60 00:CE50: 20 CD CE  JSR sub_CECD
C - - - - - 0x000E63 00:CE53: A0 10     LDY #con_D640_10
C - - - - - 0x000E65 00:CE55: 20 D9 D5  JSR sub_D5D9
C - - - - - 0x000E68 00:CE58: A0 14     LDY #con_D640_14
C - - - - - 0x000E6A 00:CE5A: 20 D9 D5  JSR sub_D5D9
C - - - - - 0x000E6D 00:CE5D: 20 94 CE  JSR sub_CE94
C - - - - - 0x000E70 00:CE60: A5 5A     LDA ram_005A
C - - - - - 0x000E72 00:CE62: 85 5E     STA ram_005E
C - - - - - 0x000E74 00:CE64: F0 10     BEQ bra_CE76
C - - - - - 0x000E76 00:CE66: A5 52     LDA ram_0052
C - - - - - 0x000E78 00:CE68: D0 0C     BNE bra_CE76
C - - - - - 0x000E7A 00:CE6A: A0 0C     LDY #$0C
C - - - - - 0x000E7C 00:CE6C: 20 CD CE  JSR sub_CECD
C - - - - - 0x000E7F 00:CE6F: A5 5E     LDA ram_005E
C - - - - - 0x000E81 00:CE71: 18        CLC
C - - - - - 0x000E82 00:CE72: 69 50     ADC #$50
C - - - - - 0x000E84 00:CE74: 85 5E     STA ram_005E
bra_CE76:
C - - - - - 0x000E86 00:CE76: 20 94 CE  JSR sub_CE94
C - - - - - 0x000E89 00:CE79: A0 10     LDY #$10
C - - - - - 0x000E8B 00:CE7B: 20 CD CE  JSR sub_CECD
C - - - - - 0x000E8E 00:CE7E: A0 0A     LDY #con_D536_0A
C - - - - - 0x000E90 00:CE80: 20 E5 D4  JSR sub_D4E5
C - - - - - 0x000E93 00:CE83: A0 16     LDY #con_D640_16
C - - - - - 0x000E95 00:CE85: 20 D9 D5  JSR sub_D5D9
C - - - - - 0x000E98 00:CE88: 20 94 CE  JSR sub_CE94
C - - - - - 0x000E9B 00:CE8B: A9 01     LDA #$01
C - - - - - 0x000E9D 00:CE8D: 85 43     STA ram_0043
C - - - - - 0x000E9F 00:CE8F: A0 0C     LDY #con_D536_0C
C - - - - - 0x000EA1 00:CE91: 4C E5 D4  JMP loc_D4E5



sub_CE94:
C - - - - - 0x000EA4 00:CE94: A9 78     LDA #$78
C - - - - - 0x000EA6 00:CE96: 85 0F     STA ram_000F
bra_CE98_loop:
C - - - - - 0x000EA8 00:CE98: 20 41 C1  JSR sub_C141
C - - - - - 0x000EAB 00:CE9B: A9 38     LDA #$38
C - - - - - 0x000EAD 00:CE9D: 85 10     STA ram_0010
C - - - - - 0x000EAF 00:CE9F: A9 70     LDA #$70
C - - - - - 0x000EB1 00:CEA1: 85 16     STA ram_0016
C - - - - - 0x000EB3 00:CEA3: A9 00     LDA #$00
C - - - - - 0x000EB5 00:CEA5: 85 11     STA ram_0011
C - - - - - 0x000EB7 00:CEA7: 85 14     STA ram_0014
C - - - - - 0x000EB9 00:CEA9: A9 02     LDA #$02
C - - - - - 0x000EBB 00:CEAB: 85 13     STA ram_0013
C - - - - - 0x000EBD 00:CEAD: 20 3D C6  JSR sub_C63D
C - - - - - 0x000EC0 00:CEB0: 20 1C D7  JSR sub_D71C
C - - - - - 0x000EC3 00:CEB3: 20 AB D5  JSR sub_D5AB
C - - - - - 0x000EC6 00:CEB6: C6 0F     DEC ram_000F
C - - - - - 0x000EC8 00:CEB8: D0 DE     BNE bra_CE98_loop
C - - - - - 0x000ECA 00:CEBA: 60        RTS



sub_CEBB:
C - - - - - 0x000ECB 00:CEBB: A9 78     LDA #$78
C - - - - - 0x000ECD 00:CEBD: 85 0F     STA ram_000F
bra_CEBF_loop:
C - - - - - 0x000ECF 00:CEBF: 20 41 C1  JSR sub_C141
C - - - - - 0x000ED2 00:CEC2: 20 1C D7  JSR sub_D71C
C - - - - - 0x000ED5 00:CEC5: 20 AB D5  JSR sub_D5AB
C - - - - - 0x000ED8 00:CEC8: C6 0F     DEC ram_000F
C - - - - - 0x000EDA 00:CECA: D0 F3     BNE bra_CEBF_loop
C - - - - - 0x000EDC 00:CECC: 60        RTS



sub_CECD:
C - - - - - 0x000EDD 00:CECD: B9 08 CF  LDA tbl_CF08,Y
C - - - - - 0x000EE0 00:CED0: 85 10     STA ram_0010
C - - - - - 0x000EE2 00:CED2: B9 09 CF  LDA tbl_CF08 + $01,Y
C - - - - - 0x000EE5 00:CED5: 85 11     STA ram_0011
C - - - - - 0x000EE7 00:CED7: B9 0A CF  LDA tbl_CF08 + $02,Y
C - - - - - 0x000EEA 00:CEDA: 85 12     STA ram_0012
C - - - - - 0x000EEC 00:CEDC: B9 0B CF  LDA tbl_CF08 + $03,Y
C - - - - - 0x000EEF 00:CEDF: 85 13     STA ram_0013
C - - - - - 0x000EF1 00:CEE1: A9 80     LDA #$80
C - - - - - 0x000EF3 00:CEE3: 85 14     STA ram_0014
C - - - - - 0x000EF5 00:CEE5: 4C FB C6  JMP loc_C6FB


; bzk garbage
- - - - - - 0x000EF8 00:CEE8: A2 00     LDX #$00
- - - - - - 0x000EFA 00:CEEA: A9 00     LDA #$00
bra_CEEC_loop:
- - - - - - 0x000EFC 00:CEEC: 95 04     STA ram_0004,X
- - - - - - 0x000EFE 00:CEEE: E8        INX
- - - - - - 0x000EFF 00:CEEF: E0 04     CPX #$04
- - - - - - 0x000F01 00:CEF1: D0 F9     BNE bra_CEEC_loop
- - - - - - 0x000F03 00:CEF3: A5 51     LDA ram_0051
- - - - - - 0x000F05 00:CEF5: F0 04     BEQ bra_CEFB_RTS
- - - - - - 0x000F07 00:CEF7: A9 50     LDA #$50
- - - - - - 0x000F09 00:CEF9: 85 06     STA ram_0006
bra_CEFB_RTS:
- - - - - - 0x000F0B 00:CEFB: 60        RTS


; bzk garbage
- - - - - - 0x000F0C 00:CEFC: A2 00     LDX #$00
- - - - - - 0x000F0E 00:CEFE: A9 00     LDA #$00
bra_CF00_loop:
- - - - - - 0x000F10 00:CF00: 95 00     STA ram_0000,X
- - - - - - 0x000F12 00:CF02: E8        INX
- - - - - - 0x000F13 00:CF03: E0 04     CPX #$04
- - - - - - 0x000F15 00:CF05: D0 F9     BNE bra_CF00_loop
- - - - - - 0x000F17 00:CF07: 60        RTS



tbl_CF08:
- D 2 - - - 0x000F18 00:CF08: 0C 21     .word $210C
- D 2 - - - 0x000F1A 00:CF0A: 1C CF     .word off_CF1C_00

- D 2 - - - 0x000F1C 00:CF0C: 67 21     .word $2167
- D 2 - - - 0x000F1E 00:CF0E: 26 CF     .word off_CF26_01

- D 2 - - - 0x000F20 00:CF10: 09 22     .word $2209
- D 2 - - - 0x000F22 00:CF12: 3A CF     .word off_CF3A_02

- D 2 - - - 0x000F24 00:CF14: 86 22     .word $2286
- D 2 - - - 0x000F26 00:CF16: 48 CF     .word off_CF48_03

- D 2 - - - 0x000F28 00:CF18: 0D 23     .word $230D
- D 2 - - - 0x000F2A 00:CF1A: 5F CF     .word off_CF5F_04



off_CF1C_00:
- D 2 - I - 0x000F2C 00:CF1C: 08        .byte $08   ; 
- D 2 - I - 0x000F2D 00:CF1D: 0F        .byte $0F, $0B, $1C, $18, $13, $18, $11, $1D   ; 

- D 2 - I - 0x000F35 00:CF25: 00        .byte $00   ; end token



off_CF26_01:
- D 2 - I - 0x000F36 00:CF26: 02        .byte $02   ; 
- D 2 - I - 0x000F37 00:CF27: 28        .byte $28, $29   ; 

- D 2 - I - 0x000F39 00:CF29: 1E        .byte $1E   ; 
- D 2 - I - 0x000F3A 00:CF2A: 0E        .byte $0E   ; 
- D 2 - I - 0x000F3B 00:CF2B: 2A        .byte $2A, $2B, $00, $03, $01, $01, $00, $8B, $00, $00, $00, $00, $00, $8A   ; 

- D 2 - I - 0x000F49 00:CF39: 00        .byte $00   ; end token



off_CF3A_02:
- D 2 - I - 0x000F4A 00:CF3A: 0C        .byte $0C   ; 
- D 2 - I - 0x000F4B 00:CF3B: 03        .byte $03, $01, $01, $01, $00, $8B, $00, $00, $00, $00, $00, $8A   ; 

- D 2 - I - 0x000F57 00:CF47: 00        .byte $00   ; end token



off_CF48_03:
- D 2 - I - 0x000F58 00:CF48: 15        .byte $15   ; 
- D 2 - I - 0x000F59 00:CF49: 1A        .byte $1A, $0F, $1C, $10, $0F, $0D, $1E, $00, $11, $0B, $17, $0F, $00, $00, $8A, $00   ; 
- D 2 - I - 0x000F69 00:CF59: 00        .byte $00, $06, $01, $01, $01   ; 

- D 2 - I - 0x000F6E 00:CF5E: 00        .byte $00   ; end token



off_CF5F_04:
- D 2 - I - 0x000F6F 00:CF5F: 08        .byte $08   ; 
- D 2 - I - 0x000F70 00:CF60: 1E        .byte $1E, $19, $1E, $0B, $16, $00, $00, $8A   ; 

- D 2 - I - 0x000F78 00:CF68: 00        .byte $00   ; end token



sub_CF69:
C - - - - - 0x000F79 00:CF69: B9 A6 CF  LDA tbl_CFA6,Y
C - - - - - 0x000F7C 00:CF6C: 85 10     STA ram_0010
C - - - - - 0x000F7E 00:CF6E: B9 A7 CF  LDA tbl_CFA6 + $01,Y
C - - - - - 0x000F81 00:CF71: 85 11     STA ram_0011
C - - - - - 0x000F83 00:CF73: A0 00     LDY #$00
bra_CF75_loop:
C - - - - - 0x000F85 00:CF75: B1 10     LDA (ram_0010),Y
C - - - - - 0x000F87 00:CF77: F0 2C     BEQ bra_CFA5_RTS
C - - - - - 0x000F89 00:CF79: C8        INY
C - - - - - 0x000F8A 00:CF7A: 85 17     STA ram_0017
C - - - - - 0x000F8C 00:CF7C: B1 10     LDA (ram_0010),Y
C - - - - - 0x000F8E 00:CF7E: C8        INY
C - - - - - 0x000F8F 00:CF7F: AA        TAX
C - - - - - 0x000F90 00:CF80: B1 10     LDA (ram_0010),Y
C - - - - - 0x000F92 00:CF82: C8        INY
C - - - - - 0x000F93 00:CF83: 8D 06 20  STA $2006
C - - - - - 0x000F96 00:CF86: 8E 06 20  STX $2006
C - - - - - 0x000F99 00:CF89: 84 16     STY ram_0016
bra_CF8B_loop:
C - - - - - 0x000F9B 00:CF8B: B1 10     LDA (ram_0010),Y
C - - - - - 0x000F9D 00:CF8D: F0 0D     BEQ bra_CF9C
C - - - - - 0x000F9F 00:CF8F: C8        INY
C - - - - - 0x000FA0 00:CF90: AA        TAX
C - - - - - 0x000FA1 00:CF91: B1 10     LDA (ram_0010),Y
C - - - - - 0x000FA3 00:CF93: C8        INY
bra_CF94_loop:
C - - - - - 0x000FA4 00:CF94: 8D 07 20  STA $2007
C - - - - - 0x000FA7 00:CF97: CA        DEX
C - - - - - 0x000FA8 00:CF98: D0 FA     BNE bra_CF94_loop
C - - - - - 0x000FAA 00:CF9A: F0 EF     BEQ bra_CF8B_loop
bra_CF9C:
C - - - - - 0x000FAC 00:CF9C: C8        INY
C - - - - - 0x000FAD 00:CF9D: C6 17     DEC ram_0017
C - - - - - 0x000FAF 00:CF9F: F0 D4     BEQ bra_CF75_loop
C - - - - - 0x000FB1 00:CFA1: A4 16     LDY ram_0016
C - - - - - 0x000FB3 00:CFA3: D0 E6     BNE bra_CF8B_loop   ; jmp
bra_CFA5_RTS:
C - - - - - 0x000FB5 00:CFA5: 60        RTS



tbl_CFA6:
- D 2 - - - 0x000FB6 00:CFA6: B2 CF     .word off_CFB2_00
- D 2 - - - 0x000FB8 00:CFA8: DB CF     .word off_CFDB_01
- D 2 - - - 0x000FBA 00:CFAA: 0E D0     .word off_D00E_02
- D 2 - - - 0x000FBC 00:CFAC: 47 D0     .word off_D047_03
- D 2 - - - 0x000FBE 00:CFAE: 7A D0     .word off_D07A_04
- D 2 - - - 0x000FC0 00:CFB0: C5 D0     .word off_D0C5_05



off_CFB2_00:
- D 2 - I - 0x000FC2 00:CFB2: 01        .byte $01   ; 
- D 2 - I - 0x000FC3 00:CFB3: A3 20     .word $20A3
- D 2 - I - 0x000FC5 00:CFB5: 01        .byte $01, $5A   ; 
- D 2 - I - 0x000FC7 00:CFB7: 1C        .byte $1C, $84   ; 
- D 2 - I - 0x000FC9 00:CFB9: 02        .byte $02, $00   ; 
- D 2 - I - 0x000FCB 00:CFBB: 01        .byte $01, $5A   ; 
- D 2 - I - 0x000FCD 00:CFBD: 1D        .byte $1D, $84   ; 
- D 2 - I - 0x000FCF 00:CFBF: 01        .byte $01, $00   ; 
- D 2 - I - 0x000FD1 00:CFC1: 01        .byte $01, $5A   ; 
- D 2 - I - 0x000FD3 00:CFC3: 1E        .byte $1E, $84   ; 
- D 2 - I - 0x000FD5 00:CFC5: 00        .byte $00   ; 

- D 2 - I - 0x000FD6 00:CFC6: 01        .byte $01   ; 
- D 2 - I - 0x000FD7 00:CFC7: A0 24     .word $24A0
- D 2 - I - 0x000FD9 00:CFC9: 18        .byte $18, $84   ; 
- D 2 - I - 0x000FDB 00:CFCB: 01        .byte $01, $5B   ; 
- D 2 - I - 0x000FDD 00:CFCD: 07        .byte $07, $00   ; 
- D 2 - I - 0x000FDF 00:CFCF: 19        .byte $19, $84   ; 
- D 2 - I - 0x000FE1 00:CFD1: 01        .byte $01, $5B   ; 
- D 2 - I - 0x000FE3 00:CFD3: 06        .byte $06, $00   ; 
- D 2 - I - 0x000FE5 00:CFD5: 1A        .byte $1A, $84   ; 
- D 2 - I - 0x000FE7 00:CFD7: 01        .byte $01, $5B   ; 
- D 2 - I - 0x000FE9 00:CFD9: 00        .byte $00   ; 

- D 2 - I - 0x000FEA 00:CFDA: 00        .byte $00   ; end token



off_CFDB_01:
- D 2 - I - 0x000FEB 00:CFDB: 01        .byte $01   ; 
- D 2 - I - 0x000FEC 00:CFDC: 93 20     .word $2093
- D 2 - I - 0x000FEE 00:CFDE: 01        .byte $01, $74   ; 
- D 2 - I - 0x000FF0 00:CFE0: 0C        .byte $0C, $75   ; 
- D 2 - I - 0x000FF2 00:CFE2: 01        .byte $01, $00   ; 
- D 2 - I - 0x000FF4 00:CFE4: 01        .byte $01, $7B   ; 
- D 2 - I - 0x000FF6 00:CFE6: 1E        .byte $1E, $84   ; 
- D 2 - I - 0x000FF8 00:CFE8: 01        .byte $01, $00   ; 
- D 2 - I - 0x000FFA 00:CFEA: 01        .byte $01, $77   ; 
- D 2 - I - 0x000FFC 00:CFEC: 1E        .byte $1E, $84   ; 
- D 2 - I - 0x000FFE 00:CFEE: 01        .byte $01, $7B   ; 
- D 2 - I - 0x001000 00:CFF0: 1F        .byte $1F, $84   ; 
- D 2 - I - 0x001002 00:CFF2: 00        .byte $00   ; 

- D 2 - I - 0x001003 00:CFF3: 01        .byte $01   ; 
- D 2 - I - 0x001004 00:CFF4: 80 24     .word $2480
- D 2 - I - 0x001006 00:CFF6: 08        .byte $08, $75   ; 
- D 2 - I - 0x001008 00:CFF8: 01        .byte $01, $76   ; 
- D 2 - I - 0x00100A 00:CFFA: 17        .byte $17, $00   ; 
- D 2 - I - 0x00100C 00:CFFC: 1A        .byte $1A, $84   ; 
- D 2 - I - 0x00100E 00:CFFE: 01        .byte $01, $7E   ; 
- D 2 - I - 0x001010 00:D000: 05        .byte $05, $00   ; 
- D 2 - I - 0x001012 00:D002: 1A        .byte $1A, $84   ; 
- D 2 - I - 0x001014 00:D004: 01        .byte $01, $7A   ; 
- D 2 - I - 0x001016 00:D006: 05        .byte $05, $00   ; 
- D 2 - I - 0x001018 00:D008: 1B        .byte $1B, $84   ; 
- D 2 - I - 0x00101A 00:D00A: 01        .byte $01, $7E   ; 
- D 2 - I - 0x00101C 00:D00C: 00        .byte $00   ; 

- D 2 - I - 0x00101D 00:D00D: 00        .byte $00   ; end token



off_D00E_02:
- D 2 - I - 0x00101E 00:D00E: 01        .byte $01   ; 
- D 2 - I - 0x00101F 00:D00F: 91 20     .word $2091
- D 2 - I - 0x001021 00:D011: 01        .byte $01, $74   ; 
- D 2 - I - 0x001023 00:D013: 0E        .byte $0E, $75   ; 
- D 2 - I - 0x001025 00:D015: 10        .byte $10, $00   ; 
- D 2 - I - 0x001027 00:D017: 01        .byte $01, $7B   ; 
- D 2 - I - 0x001029 00:D019: 0F        .byte $0F, $84   ; 
- D 2 - I - 0x00102B 00:D01B: 10        .byte $10, $00   ; 
- D 2 - I - 0x00102D 00:D01D: 01        .byte $01, $77   ; 
- D 2 - I - 0x00102F 00:D01F: 0F        .byte $0F, $84   ; 
- D 2 - I - 0x001031 00:D021: 08        .byte $08, $00   ; 
- D 2 - I - 0x001033 00:D023: 07        .byte $07, $81   ; 
- D 2 - I - 0x001035 00:D025: 01        .byte $01, $7B   ; 
- D 2 - I - 0x001037 00:D027: 10        .byte $10, $84   ; 
- D 2 - I - 0x001039 00:D029: 00        .byte $00   ; 

- D 2 - I - 0x00103A 00:D02A: 01        .byte $01   ; 
- D 2 - I - 0x00103B 00:D02B: 80 24     .word $2480
- D 2 - I - 0x00103D 00:D02D: 0A        .byte $0A, $75   ; 
- D 2 - I - 0x00103F 00:D02F: 01        .byte $01, $76   ; 
- D 2 - I - 0x001041 00:D031: 15        .byte $15, $00   ; 
- D 2 - I - 0x001043 00:D033: 0B        .byte $0B, $84   ; 
- D 2 - I - 0x001045 00:D035: 01        .byte $01, $7E   ; 
- D 2 - I - 0x001047 00:D037: 14        .byte $14, $00   ; 
- D 2 - I - 0x001049 00:D039: 0B        .byte $0B, $84   ; 
- D 2 - I - 0x00104B 00:D03B: 01        .byte $01, $7A   ; 
- D 2 - I - 0x00104D 00:D03D: 14        .byte $14, $00   ; 
- D 2 - I - 0x00104F 00:D03F: 0C        .byte $0C, $84   ; 
- D 2 - I - 0x001051 00:D041: 01        .byte $01, $7E   ; 
- D 2 - I - 0x001053 00:D043: 07        .byte $07, $81   ; 
- D 2 - I - 0x001055 00:D045: 00        .byte $00   ; 

- D 2 - I - 0x001056 00:D046: 00        .byte $00   ; end token



off_D047_03:
- D 2 - I - 0x001057 00:D047: 01        .byte $01   ; 
- D 2 - I - 0x001058 00:D048: 82 20     .word $2082
- D 2 - I - 0x00105A 00:D04A: 01        .byte $01, $74   ; 
- D 2 - I - 0x00105C 00:D04C: 1D        .byte $1D, $75   ; 
- D 2 - I - 0x00105E 00:D04E: 01        .byte $01, $00   ; 
- D 2 - I - 0x001060 00:D050: 01        .byte $01, $7B   ; 
- D 2 - I - 0x001062 00:D052: 1E        .byte $1E, $84   ; 
- D 2 - I - 0x001064 00:D054: 01        .byte $01, $00   ; 
- D 2 - I - 0x001066 00:D056: 01        .byte $01, $77   ; 
- D 2 - I - 0x001068 00:D058: 1E        .byte $1E, $84   ; 
- D 2 - I - 0x00106A 00:D05A: 01        .byte $01, $7B   ; 
- D 2 - I - 0x00106C 00:D05C: 1F        .byte $1F, $84   ; 
- D 2 - I - 0x00106E 00:D05E: 00        .byte $00   ; 

- D 2 - I - 0x00106F 00:D05F: 01        .byte $01   ; 
- D 2 - I - 0x001070 00:D060: 80 24     .word $2480
- D 2 - I - 0x001072 00:D062: 19        .byte $19, $75   ; 
- D 2 - I - 0x001074 00:D064: 01        .byte $01, $76   ; 
- D 2 - I - 0x001076 00:D066: 06        .byte $06, $00   ; 
- D 2 - I - 0x001078 00:D068: 1A        .byte $1A, $84   ; 
- D 2 - I - 0x00107A 00:D06A: 01        .byte $01, $7E   ; 
- D 2 - I - 0x00107C 00:D06C: 05        .byte $05, $00   ; 
- D 2 - I - 0x00107E 00:D06E: 1A        .byte $1A, $84   ; 
- D 2 - I - 0x001080 00:D070: 01        .byte $01, $7A   ; 
- D 2 - I - 0x001082 00:D072: 05        .byte $05, $00   ; 
- D 2 - I - 0x001084 00:D074: 1B        .byte $1B, $84   ; 
- D 2 - I - 0x001086 00:D076: 01        .byte $01, $7E   ; 
- D 2 - I - 0x001088 00:D078: 00        .byte $00   ; 

- D 2 - I - 0x001089 00:D079: 00        .byte $00   ; end token



off_D07A_04:
- D 2 - I - 0x00108A 00:D07A: 05        .byte $05   ; 
- D 2 - I - 0x00108B 00:D07B: 01 21     .word $2101
- D 2 - I - 0x00108D 00:D07D: 01        .byte $01, $4C   ; 
- D 2 - I - 0x00108F 00:D07F: 1E        .byte $1E, $4A   ; 
- D 2 - I - 0x001091 00:D081: 01        .byte $01, $00   ; 
- D 2 - I - 0x001093 00:D083: 01        .byte $01, $4C   ; 
- D 2 - I - 0x001095 00:D085: 1F        .byte $1F, $00   ; 
- D 2 - I - 0x001097 00:D087: 01        .byte $01, $4C   ; 
- D 2 - I - 0x001099 00:D089: 1F        .byte $1F, $00   ; 
- D 2 - I - 0x00109B 00:D08B: 01        .byte $01, $4C   ; 
- D 2 - I - 0x00109D 00:D08D: 1F        .byte $1F, $00   ; 
- D 2 - I - 0x00109F 00:D08F: 00        .byte $00   ; 

- D 2 - I - 0x0010A0 00:D090: 05        .byte $05   ; 
- D 2 - I - 0x0010A1 00:D091: 00 25     .word $2500
- D 2 - I - 0x0010A3 00:D093: 1A        .byte $1A, $4A   ; 
- D 2 - I - 0x0010A5 00:D095: 01        .byte $01, $4D   ; 
- D 2 - I - 0x0010A7 00:D097: 1F        .byte $1F, $00   ; 
- D 2 - I - 0x0010A9 00:D099: 01        .byte $01, $4D   ; 
- D 2 - I - 0x0010AB 00:D09B: 1F        .byte $1F, $00   ; 
- D 2 - I - 0x0010AD 00:D09D: 01        .byte $01, $4D   ; 
- D 2 - I - 0x0010AF 00:D09F: 1F        .byte $1F, $00   ; 
- D 2 - I - 0x0010B1 00:D0A1: 01        .byte $01, $4D   ; 
- D 2 - I - 0x0010B3 00:D0A3: 05        .byte $05, $00   ; 
- D 2 - I - 0x0010B5 00:D0A5: 00        .byte $00   ; 

- D 2 - I - 0x0010B6 00:D0A6: 20        .byte $20   ; 
- D 2 - I - 0x0010B7 00:D0A7: 80 23     .word $2380
- D 2 - I - 0x0010B9 00:D0A9: 01        .byte $01, $4E   ; 
- D 2 - I - 0x0010BB 00:D0AB: 01        .byte $01, $4F   ; 
- D 2 - I - 0x0010BD 00:D0AD: 00        .byte $00   ; 

- D 2 - I - 0x0010BE 00:D0AE: 20        .byte $20   ; 
- D 2 - I - 0x0010BF 00:D0AF: 80 27     .word $2780
- D 2 - I - 0x0010C1 00:D0B1: 01        .byte $01, $4E   ; 
- D 2 - I - 0x0010C3 00:D0B3: 01        .byte $01, $4F   ; 
- D 2 - I - 0x0010C5 00:D0B5: 00        .byte $00   ; 

- D 2 - I - 0x0010C6 00:D0B6: 01        .byte $01   ; 
- D 2 - I - 0x0010C7 00:D0B7: C0 23     .word $23C0
- D 2 - I - 0x0010C9 00:D0B9: 08        .byte $08, $00   ; 
- D 2 - I - 0x0010CB 00:D0BB: 38        .byte $38, $55   ; 
- D 2 - I - 0x0010CD 00:D0BD: 00        .byte $00   ; 

- D 2 - I - 0x0010CE 00:D0BE: 01        .byte $01   ; 
- D 2 - I - 0x0010CF 00:D0BF: C0 27     .word $27C0
- D 2 - I - 0x0010D1 00:D0C1: 40        .byte $40, $55   ; 
- D 2 - I - 0x0010D3 00:D0C3: 00        .byte $00   ; 

- D 2 - I - 0x0010D4 00:D0C4: 00        .byte $00   ; end token



off_D0C5_05:
- D 2 - I - 0x0010D5 00:D0C5: 05        .byte $05   ; 
- D 2 - I - 0x0010D6 00:D0C6: A2 20     .word $20A2
- D 2 - I - 0x0010D8 00:D0C8: 01        .byte $01, $82   ; 
- D 2 - I - 0x0010DA 00:D0CA: 01        .byte $01, $83   ; 
- D 2 - I - 0x0010DC 00:D0CC: 04        .byte $04, $4A   ; 
- D 2 - I - 0x0010DE 00:D0CE: 00        .byte $00   ; 

- D 2 - I - 0x0010DF 00:D0CF: 16        .byte $16   ; 
- D 2 - I - 0x0010E0 00:D0D0: C2 20     .word $20C2
- D 2 - I - 0x0010E2 00:D0D2: 01        .byte $01, $4C   ; 
- D 2 - I - 0x0010E4 00:D0D4: 01        .byte $01, $4D   ; 
- D 2 - I - 0x0010E6 00:D0D6: 04        .byte $04, $00   ; 
- D 2 - I - 0x0010E8 00:D0D8: 01        .byte $01, $4C   ; 
- D 2 - I - 0x0010EA 00:D0DA: 01        .byte $01, $4D   ; 
- D 2 - I - 0x0010EC 00:D0DC: 04        .byte $04, $00   ; 
- D 2 - I - 0x0010EE 00:D0DE: 01        .byte $01, $4C   ; 
- D 2 - I - 0x0010F0 00:D0E0: 01        .byte $01, $4D   ; 
- D 2 - I - 0x0010F2 00:D0E2: 04        .byte $04, $00   ; 
- D 2 - I - 0x0010F4 00:D0E4: 01        .byte $01, $4C   ; 
- D 2 - I - 0x0010F6 00:D0E6: 01        .byte $01, $4D   ; 
- D 2 - I - 0x0010F8 00:D0E8: 04        .byte $04, $00   ; 
- D 2 - I - 0x0010FA 00:D0EA: 01        .byte $01, $4C   ; 
- D 2 - I - 0x0010FC 00:D0EC: 01        .byte $01, $4D   ; 
- D 2 - I - 0x0010FE 00:D0EE: 06        .byte $06, $00   ; 
- D 2 - I - 0x001100 00:D0F0: 00        .byte $00   ; 

- D 2 - I - 0x001101 00:D0F1: 04        .byte $04   ; 
- D 2 - I - 0x001102 00:D0F2: A0 24     .word $24A0
- D 2 - I - 0x001104 00:D0F4: 01        .byte $01, $82   ; 
- D 2 - I - 0x001106 00:D0F6: 01        .byte $01, $83   ; 
- D 2 - I - 0x001108 00:D0F8: 04        .byte $04, $4A   ; 
- D 2 - I - 0x00110A 00:D0FA: 00        .byte $00   ; 

- D 2 - I - 0x00110B 00:D0FB: 01        .byte $01   ; 
- D 2 - I - 0x00110C 00:D0FC: B8 24     .word $24B8
- D 2 - I - 0x00110E 00:D0FE: 01        .byte $01, $82   ; 
- D 2 - I - 0x001110 00:D100: 01        .byte $01, $83   ; 
- D 2 - I - 0x001112 00:D102: 00        .byte $00   ; 

- D 2 - I - 0x001113 00:D103: 16        .byte $16   ; 
- D 2 - I - 0x001114 00:D104: C0 24     .word $24C0
- D 2 - I - 0x001116 00:D106: 01        .byte $01, $4C   ; 
- D 2 - I - 0x001118 00:D108: 01        .byte $01, $4D   ; 
- D 2 - I - 0x00111A 00:D10A: 04        .byte $04, $00   ; 
- D 2 - I - 0x00111C 00:D10C: 01        .byte $01, $4C   ; 
- D 2 - I - 0x00111E 00:D10E: 01        .byte $01, $4D   ; 
- D 2 - I - 0x001120 00:D110: 04        .byte $04, $00   ; 
- D 2 - I - 0x001122 00:D112: 01        .byte $01, $4C   ; 
- D 2 - I - 0x001124 00:D114: 01        .byte $01, $4D   ; 
- D 2 - I - 0x001126 00:D116: 04        .byte $04, $00   ; 
- D 2 - I - 0x001128 00:D118: 01        .byte $01, $4C   ; 
- D 2 - I - 0x00112A 00:D11A: 01        .byte $01, $4D   ; 
- D 2 - I - 0x00112C 00:D11C: 04        .byte $04, $00   ; 
- D 2 - I - 0x00112E 00:D11E: 01        .byte $01, $4C   ; 
- D 2 - I - 0x001130 00:D120: 01        .byte $01, $4D   ; 
- D 2 - I - 0x001132 00:D122: 06        .byte $06, $00   ; 
- D 2 - I - 0x001134 00:D124: 00        .byte $00   ; 

- D 2 - I - 0x001135 00:D125: 00        .byte $00   ; end token



sub_D126:
C - - - - - 0x001136 00:D126: B9 85 D1  LDA tbl_D185,Y
C - - - - - 0x001139 00:D129: 85 10     STA ram_0010
C - - - - - 0x00113B 00:D12B: B9 86 D1  LDA tbl_D185 + $01,Y
C - - - - - 0x00113E 00:D12E: 85 11     STA ram_0011
C - - - - - 0x001140 00:D130: A0 00     LDY #$00
bra_D132_loop:
C - - - - - 0x001142 00:D132: B1 10     LDA (ram_0010),Y
C - - - - - 0x001144 00:D134: F0 4E     BEQ bra_D184_RTS
C - - - - - 0x001146 00:D136: C8        INY
C - - - - - 0x001147 00:D137: 85 17     STA ram_0017
C - - - - - 0x001149 00:D139: B1 10     LDA (ram_0010),Y
C - - - - - 0x00114B 00:D13B: C8        INY
C - - - - - 0x00114C 00:D13C: 85 12     STA ram_0012
C - - - - - 0x00114E 00:D13E: B1 10     LDA (ram_0010),Y
C - - - - - 0x001150 00:D140: C8        INY
C - - - - - 0x001151 00:D141: 85 13     STA ram_0013
bra_D143_loop:
C - - - - - 0x001153 00:D143: B1 10     LDA (ram_0010),Y
C - - - - - 0x001155 00:D145: C8        INY
C - - - - - 0x001156 00:D146: 85 14     STA ram_0014
C - - - - - 0x001158 00:D148: B1 10     LDA (ram_0010),Y
C - - - - - 0x00115A 00:D14A: C8        INY
C - - - - - 0x00115B 00:D14B: 85 15     STA ram_0015
C - - - - - 0x00115D 00:D14D: 84 16     STY ram_0016
C - - - - - 0x00115F 00:D14F: A0 00     LDY #$00
bra_D151_loop:
C - - - - - 0x001161 00:D151: A5 15     LDA ram_0015
C - - - - - 0x001163 00:D153: 8D 06 20  STA $2006
C - - - - - 0x001166 00:D156: A5 14     LDA ram_0014
C - - - - - 0x001168 00:D158: 8D 06 20  STA $2006
C - - - - - 0x00116B 00:D15B: B1 12     LDA (ram_0012),Y
C - - - - - 0x00116D 00:D15D: C8        INY
C - - - - - 0x00116E 00:D15E: AA        TAX
bra_D15F_loop:
C - - - - - 0x00116F 00:D15F: B1 12     LDA (ram_0012),Y
C - - - - - 0x001171 00:D161: C8        INY
C - - - - - 0x001172 00:D162: 8D 07 20  STA $2007
C - - - - - 0x001175 00:D165: CA        DEX
C - - - - - 0x001176 00:D166: D0 F7     BNE bra_D15F_loop
C - - - - - 0x001178 00:D168: B1 12     LDA (ram_0012),Y
C - - - - - 0x00117A 00:D16A: F0 10     BEQ bra_D17C
C - - - - - 0x00117C 00:D16C: 10 02     BPL bra_D170
- - - - - - 0x00117E 00:D16E: C6 15     DEC ram_0015
bra_D170:
C - - - - - 0x001180 00:D170: C8        INY
C - - - - - 0x001181 00:D171: 18        CLC
C - - - - - 0x001182 00:D172: 65 14     ADC ram_0014
C - - - - - 0x001184 00:D174: 85 14     STA ram_0014
C - - - - - 0x001186 00:D176: 90 D9     BCC bra_D151_loop   ; if not overflow
; if overflow
C - - - - - 0x001188 00:D178: E6 15     INC ram_0015
C - - - - - 0x00118A 00:D17A: B0 D5     BCS bra_D151_loop   ; jmp
bra_D17C:
C - - - - - 0x00118C 00:D17C: A4 16     LDY ram_0016
C - - - - - 0x00118E 00:D17E: C6 17     DEC ram_0017
C - - - - - 0x001190 00:D180: D0 C1     BNE bra_D143_loop
C - - - - - 0x001192 00:D182: F0 AE     BEQ bra_D132_loop   ; jmp
bra_D184_RTS:
C - - - - - 0x001194 00:D184: 60        RTS



tbl_D185:
- D 2 - - - 0x001195 00:D185: 93 D1     .word _off007_D193_00
- D 2 - - - 0x001197 00:D187: F5 D1     .word _off007_D1F5_01
- D 2 - - - 0x001199 00:D189: 62 D2     .word _off007_D262_02
- D 2 - - - 0x00119B 00:D18B: D9 D2     .word _off007_D2D9_03
- - - - - - 0x00119D 00:D18D: 50 D3     .word _off007_D350_04
- D 2 - - - 0x00119F 00:D18F: 1C D4     .word _off007_D41C_05
- D 2 - - - 0x0011A1 00:D191: 83 D4     .word _off007_D483_06



_off007_D193_00:
- D 2 - I - 0x0011A3 00:D193: 04        .byte $04   ; counter
- D 2 - I - 0x0011A4 00:D194: 51 D3     .word off_D351
- D 2 - I - 0x0011A6 00:D196: A8 20     .word $20A8
- D 2 - I - 0x0011A8 00:D198: B2 20     .word $20B2
- D 2 - I - 0x0011AA 00:D19A: A8 24     .word $24A8
- D 2 - I - 0x0011AC 00:D19C: B2 24     .word $24B2

- D 2 - I - 0x0011AE 00:D19E: 03        .byte $03   ; 
- D 2 - I - 0x0011AF 00:D19F: 6B D3     .word off_D36B
- D 2 - I - 0x0011B1 00:D1A1: 8D 20     .word $208D
- D 2 - I - 0x0011B3 00:D1A3: 9D 20     .word $209D
- D 2 - I - 0x0011B5 00:D1A5: 8D 24     .word $248D

- D 2 - I - 0x0011B7 00:D1A7: 01        .byte $01   ; 
- D 2 - I - 0x0011B8 00:D1A8: B3 D3     .word off_D3B3
- D 2 - I - 0x0011BA 00:D1AA: 06 21     .word $2106

- D 2 - I - 0x0011BC 00:D1AC: 04        .byte $04   ; 
- D 2 - I - 0x0011BD 00:D1AD: D1 D3     .word off_D3D1
- D 2 - I - 0x0011BF 00:D1AF: 86 21     .word $2186
- D 2 - I - 0x0011C1 00:D1B1: 06 22     .word $2206
- D 2 - I - 0x0011C3 00:D1B3: 86 22     .word $2286
- D 2 - I - 0x0011C5 00:D1B5: 06 23     .word $2306

- D 2 - I - 0x0011C7 00:D1B7: 01        .byte $01   ; 
- D 2 - I - 0x0011C8 00:D1B8: C2 D3     .word off_D3C2
- D 2 - I - 0x0011CA 00:D1BA: 00 25     .word $2500

- D 2 - I - 0x0011CC 00:D1BC: 04        .byte $04   ; 
- D 2 - I - 0x0011CD 00:D1BD: C5 D3     .word off_D3C5
- D 2 - I - 0x0011CF 00:D1BF: 85 25     .word $2585
- D 2 - I - 0x0011D1 00:D1C1: 05 26     .word $2605
- D 2 - I - 0x0011D3 00:D1C3: 85 26     .word $2685
- D 2 - I - 0x0011D5 00:D1C5: 05 27     .word $2705

- D 2 - I - 0x0011D7 00:D1C7: 15        .byte $15   ; 
- D 2 - I - 0x0011D8 00:D1C8: 10 D4     .word off_D410
- D 2 - I - 0x0011DA 00:D1CA: 82 21     .word $2182
- D 2 - I - 0x0011DC 00:D1CC: 02 22     .word $2202
- D 2 - I - 0x0011DE 00:D1CE: 82 22     .word $2282
- D 2 - I - 0x0011E0 00:D1D0: 02 23     .word $2302
- D 2 - I - 0x0011E2 00:D1D2: A2 23     .word $23A2
- D 2 - I - 0x0011E4 00:D1D4: 92 21     .word $2192
- D 2 - I - 0x0011E6 00:D1D6: 12 22     .word $2212
- D 2 - I - 0x0011E8 00:D1D8: 92 22     .word $2292
- D 2 - I - 0x0011EA 00:D1DA: 12 23     .word $2312
- D 2 - I - 0x0011EC 00:D1DC: B2 23     .word $23B2
- D 2 - I - 0x0011EE 00:D1DE: 1C 21     .word $211C
- D 2 - I - 0x0011F0 00:D1E0: 86 25     .word $2586
- D 2 - I - 0x0011F2 00:D1E2: 06 26     .word $2606
- D 2 - I - 0x0011F4 00:D1E4: 86 26     .word $2686
- D 2 - I - 0x0011F6 00:D1E6: 06 27     .word $2706
- D 2 - I - 0x0011F8 00:D1E8: A6 27     .word $27A6
- D 2 - I - 0x0011FA 00:D1EA: 96 25     .word $2596
- D 2 - I - 0x0011FC 00:D1EC: 16 26     .word $2616
- D 2 - I - 0x0011FE 00:D1EE: 96 26     .word $2696
- D 2 - I - 0x001200 00:D1F0: 16 27     .word $2716
- D 2 - I - 0x001202 00:D1F2: B6 27     .word $27B6

- D 2 - I - 0x001204 00:D1F4: 00        .byte $00   ; end token



_off007_D1F5_01:
- D 2 - I - 0x001205 00:D1F5: 08        .byte $08   ; counter
- D 2 - I - 0x001206 00:D1F6: 5D D3     .word off_D35D
- D 2 - I - 0x001208 00:D1F8: C3 20     .word $20C3
- D 2 - I - 0x00120A 00:D1FA: C7 20     .word $20C7
- D 2 - I - 0x00120C 00:D1FC: CB 20     .word $20CB
- D 2 - I - 0x00120E 00:D1FE: CF 20     .word $20CF
- D 2 - I - 0x001210 00:D200: CB 24     .word $24CB
- D 2 - I - 0x001212 00:D202: CF 24     .word $24CF
- D 2 - I - 0x001214 00:D204: D3 24     .word $24D3
- D 2 - I - 0x001216 00:D206: D7 24     .word $24D7

- D 2 - I - 0x001218 00:D208: 04        .byte $04   ; 
- D 2 - I - 0x001219 00:D209: 51 D3     .word off_D351
- D 2 - I - 0x00121B 00:D20B: B5 20     .word $20B5
- D 2 - I - 0x00121D 00:D20D: B8 20     .word $20B8
- D 2 - I - 0x00121F 00:D20F: A2 24     .word $24A2
- D 2 - I - 0x001221 00:D211: A5 24     .word $24A5

- D 2 - I - 0x001223 00:D213: 01        .byte $01   ; 
- D 2 - I - 0x001224 00:D214: 6F D3     .word off_D36F
- D 2 - I - 0x001226 00:D216: BC 20     .word $20BC

- D 2 - I - 0x001228 00:D218: 02        .byte $02   ; 
- D 2 - I - 0x001229 00:D219: B3 D3     .word off_D3B3
- D 2 - I - 0x00122B 00:D21B: 06 21     .word $2106
- D 2 - I - 0x00122D 00:D21D: 06 23     .word $2306

- D 2 - I - 0x00122F 00:D21F: 03        .byte $03   ; 
- D 2 - I - 0x001230 00:D220: E0 D3     .word off_D3E0
- D 2 - I - 0x001232 00:D222: 86 21     .word $2186
- D 2 - I - 0x001234 00:D224: 06 22     .word $2206
- D 2 - I - 0x001236 00:D226: 86 22     .word $2286

- D 2 - I - 0x001238 00:D228: 02        .byte $02   ; 
- D 2 - I - 0x001239 00:D229: C2 D3     .word off_D3C2
- D 2 - I - 0x00123B 00:D22B: 00 25     .word $2500
- D 2 - I - 0x00123D 00:D22D: 00 27     .word $2700

- D 2 - I - 0x00123F 00:D22F: 03        .byte $03   ; 
- D 2 - I - 0x001240 00:D230: EF D3     .word off_D3EF
- D 2 - I - 0x001242 00:D232: 80 25     .word $2580
- D 2 - I - 0x001244 00:D234: 00 26     .word $2600
- D 2 - I - 0x001246 00:D236: 80 26     .word $2680

- D 2 - I - 0x001248 00:D238: 13        .byte $13   ; 
- D 2 - I - 0x001249 00:D239: 10 D4     .word off_D410
- D 2 - I - 0x00124B 00:D23B: 02 21     .word $2102
- D 2 - I - 0x00124D 00:D23D: 82 21     .word $2182
- D 2 - I - 0x00124F 00:D23F: 02 22     .word $2202
- D 2 - I - 0x001251 00:D241: 82 22     .word $2282
- D 2 - I - 0x001253 00:D243: 02 23     .word $2302
- D 2 - I - 0x001255 00:D245: A2 23     .word $23A2
- D 2 - I - 0x001257 00:D247: 10 22     .word $2210
- D 2 - I - 0x001259 00:D249: 1C 21     .word $211C
- D 2 - I - 0x00125B 00:D24B: 9C 21     .word $219C
- D 2 - I - 0x00125D 00:D24D: 9C 22     .word $229C
- D 2 - I - 0x00125F 00:D24F: 1C 23     .word $231C
- D 2 - I - 0x001261 00:D251: BC 23     .word $23BC
- D 2 - I - 0x001263 00:D253: 08 26     .word $2608
- D 2 - I - 0x001265 00:D255: 16 25     .word $2516
- D 2 - I - 0x001267 00:D257: 96 25     .word $2596
- D 2 - I - 0x001269 00:D259: 16 26     .word $2616
- D 2 - I - 0x00126B 00:D25B: 96 26     .word $2696
- D 2 - I - 0x00126D 00:D25D: 16 27     .word $2716
- D 2 - I - 0x00126F 00:D25F: B6 27     .word $27B6

- D 2 - I - 0x001271 00:D261: 00        .byte $00   ; end token



_off007_D262_02:
- D 2 - I - 0x001272 00:D262: 02        .byte $02   ; counter
- D 2 - I - 0x001273 00:D263: 81 D3     .word off_D381
- D 2 - I - 0x001275 00:D265: 82 20     .word $2082
- D 2 - I - 0x001277 00:D267: 96 24     .word $2496

- D 2 - I - 0x001279 00:D269: 03        .byte $03   ; 
- D 2 - I - 0x00127A 00:D26A: 51 D3     .word off_D351
- D 2 - I - 0x00127C 00:D26C: B2 20     .word $20B2
- D 2 - I - 0x00127E 00:D26E: BD 20     .word $20BD
- D 2 - I - 0x001280 00:D270: A8 24     .word $24A8

- D 2 - I - 0x001282 00:D272: 04        .byte $04   ; 
- D 2 - I - 0x001283 00:D273: 5D D3     .word off_D35D
- D 2 - I - 0x001285 00:D275: B6 20     .word $20B6
- D 2 - I - 0x001287 00:D277: B9 20     .word $20B9
- D 2 - I - 0x001289 00:D279: A1 24     .word $24A1
- D 2 - I - 0x00128B 00:D27B: A4 24     .word $24A4

- D 2 - I - 0x00128D 00:D27D: 03        .byte $03   ; 
- D 2 - I - 0x00128E 00:D27E: B3 D3     .word off_D3B3
- D 2 - I - 0x001290 00:D280: 06 21     .word $2106
- D 2 - I - 0x001292 00:D282: 86 21     .word $2186
- D 2 - I - 0x001294 00:D284: 86 22     .word $2286

- D 2 - I - 0x001296 00:D286: 01        .byte $01   ; 
- D 2 - I - 0x001297 00:D287: FE D3     .word off_D3FE
- D 2 - I - 0x001299 00:D289: 06 22     .word $2206

- D 2 - I - 0x00129B 00:D28B: 01        .byte $01   ; 
- D 2 - I - 0x00129C 00:D28C: D1 D3     .word off_D3D1
- D 2 - I - 0x00129E 00:D28E: 06 23     .word $2306

- D 2 - I - 0x0012A0 00:D290: 04        .byte $04   ; 
- D 2 - I - 0x0012A1 00:D291: C2 D3     .word off_D3C2
- D 2 - I - 0x0012A3 00:D293: 00 25     .word $2500
- D 2 - I - 0x0012A5 00:D295: 80 25     .word $2580
- D 2 - I - 0x0012A7 00:D297: 00 26     .word $2600
- D 2 - I - 0x0012A9 00:D299: 80 26     .word $2680

- D 2 - I - 0x0012AB 00:D29B: 01        .byte $01   ; 
- D 2 - I - 0x0012AC 00:D29C: C5 D3     .word off_D3C5
- D 2 - I - 0x0012AE 00:D29E: 05 27     .word $2705

- D 2 - I - 0x0012B0 00:D2A0: 01        .byte $01   ; 
- D 2 - I - 0x0012B1 00:D2A1: 16 D4     .word off_D416
- D 2 - I - 0x0012B3 00:D2A3: 1C 21     .word $211C

- D 2 - I - 0x0012B5 00:D2A5: 18        .byte $18   ; 
- D 2 - I - 0x0012B6 00:D2A6: 10 D4     .word off_D410
- D 2 - I - 0x0012B8 00:D2A8: 02 21     .word $2102
- D 2 - I - 0x0012BA 00:D2AA: 82 21     .word $2182
- D 2 - I - 0x0012BC 00:D2AC: 02 22     .word $2202
- D 2 - I - 0x0012BE 00:D2AE: 82 22     .word $2282
- D 2 - I - 0x0012C0 00:D2B0: 02 23     .word $2302
- D 2 - I - 0x0012C2 00:D2B2: A2 23     .word $23A2
- D 2 - I - 0x0012C4 00:D2B4: 12 21     .word $2112
- D 2 - I - 0x0012C6 00:D2B6: 92 21     .word $2192
- D 2 - I - 0x0012C8 00:D2B8: 12 22     .word $2212
- D 2 - I - 0x0012CA 00:D2BA: 92 22     .word $2292
- D 2 - I - 0x0012CC 00:D2BC: 12 23     .word $2312
- D 2 - I - 0x0012CE 00:D2BE: B2 23     .word $23B2
- D 2 - I - 0x0012D0 00:D2C0: 06 25     .word $2506
- D 2 - I - 0x0012D2 00:D2C2: 86 25     .word $2586
- D 2 - I - 0x0012D4 00:D2C4: 06 26     .word $2606
- D 2 - I - 0x0012D6 00:D2C6: 86 26     .word $2686
- D 2 - I - 0x0012D8 00:D2C8: 06 27     .word $2706
- D 2 - I - 0x0012DA 00:D2CA: A6 27     .word $27A6
- D 2 - I - 0x0012DC 00:D2CC: 16 25     .word $2516
- D 2 - I - 0x0012DE 00:D2CE: 96 25     .word $2596
- D 2 - I - 0x0012E0 00:D2D0: 16 26     .word $2616
- D 2 - I - 0x0012E2 00:D2D2: 96 26     .word $2696
- D 2 - I - 0x0012E4 00:D2D4: 16 27     .word $2716
- D 2 - I - 0x0012E6 00:D2D6: B6 27     .word $27B6

- D 2 - I - 0x0012E8 00:D2D8: 00        .byte $00   ; end token



_off007_D2D9_03:
- D 2 - I - 0x0012E9 00:D2D9: 08        .byte $08   ; counter
- D 2 - I - 0x0012EA 00:D2DA: 51 D3     .word off_D351
- D 2 - I - 0x0012EC 00:D2DC: A3 20     .word $20A3
- D 2 - I - 0x0012EE 00:D2DE: A9 20     .word $20A9
- D 2 - I - 0x0012F0 00:D2E0: AF 20     .word $20AF
- D 2 - I - 0x0012F2 00:D2E2: B5 20     .word $20B5
- D 2 - I - 0x0012F4 00:D2E4: A5 24     .word $24A5
- D 2 - I - 0x0012F6 00:D2E6: AB 24     .word $24AB
- D 2 - I - 0x0012F8 00:D2E8: B1 24     .word $24B1
- D 2 - I - 0x0012FA 00:D2EA: B7 24     .word $24B7

- D 2 - I - 0x0012FC 00:D2EC: 08        .byte $08   ; 
- D 2 - I - 0x0012FD 00:D2ED: 5D D3     .word off_D35D
- D 2 - I - 0x0012FF 00:D2EF: A6 20     .word $20A6
- D 2 - I - 0x001301 00:D2F1: AC 20     .word $20AC
- D 2 - I - 0x001303 00:D2F3: B2 20     .word $20B2
- D 2 - I - 0x001305 00:D2F5: B8 20     .word $20B8
- D 2 - I - 0x001307 00:D2F7: A2 24     .word $24A2
- D 2 - I - 0x001309 00:D2F9: A8 24     .word $24A8
- D 2 - I - 0x00130B 00:D2FB: AE 24     .word $24AE
- D 2 - I - 0x00130D 00:D2FD: B4 24     .word $24B4

- D 2 - I - 0x00130F 00:D2FF: 01        .byte $01   ; 
- D 2 - I - 0x001310 00:D300: A1 D3     .word off_D3A1
- D 2 - I - 0x001312 00:D302: BC 20     .word $20BC

- D 2 - I - 0x001314 00:D304: 04        .byte $04   ; 
- D 2 - I - 0x001315 00:D305: 65 D3     .word off_D365
- D 2 - I - 0x001317 00:D307: 88 20     .word $2088
- D 2 - I - 0x001319 00:D309: 94 20     .word $2094
- D 2 - I - 0x00131B 00:D30B: 84 24     .word $2484
- D 2 - I - 0x00131D 00:D30D: 90 24     .word $2490

- D 2 - I - 0x00131F 00:D30F: 05        .byte $05   ; 
- D 2 - I - 0x001320 00:D310: C2 D3     .word off_D3C2
- D 2 - I - 0x001322 00:D312: 06 21     .word $2106
- D 2 - I - 0x001324 00:D314: 86 21     .word $2186
- D 2 - I - 0x001326 00:D316: 06 22     .word $2206
- D 2 - I - 0x001328 00:D318: 86 22     .word $2286
- D 2 - I - 0x00132A 00:D31A: 06 23     .word $2306

- D 2 - I - 0x00132C 00:D31C: 05        .byte $05   ; 
- D 2 - I - 0x00132D 00:D31D: B3 D3     .word off_D3B3
- D 2 - I - 0x00132F 00:D31F: 00 25     .word $2500
- D 2 - I - 0x001331 00:D321: 80 25     .word $2580
- D 2 - I - 0x001333 00:D323: 00 26     .word $2600
- D 2 - I - 0x001335 00:D325: 80 26     .word $2680
- D 2 - I - 0x001337 00:D327: 00 27     .word $2700

- D 2 - I - 0x001339 00:D329: 12        .byte $12   ; 
- D 2 - I - 0x00133A 00:D32A: 10 D4     .word off_D410
- D 2 - I - 0x00133C 00:D32C: 02 21     .word $2102
- D 2 - I - 0x00133E 00:D32E: 82 21     .word $2182
- D 2 - I - 0x001340 00:D330: 02 23     .word $2302
- D 2 - I - 0x001342 00:D332: A2 23     .word $23A2
- D 2 - I - 0x001344 00:D334: 0C 22     .word $220C
- D 2 - I - 0x001346 00:D336: 8C 22     .word $228C
- D 2 - I - 0x001348 00:D338: 9C 21     .word $219C
- D 2 - I - 0x00134A 00:D33A: 1C 22     .word $221C
- D 2 - I - 0x00134C 00:D33C: 9C 22     .word $229C
- D 2 - I - 0x00134E 00:D33E: 1C 23     .word $231C
- D 2 - I - 0x001350 00:D340: BC 23     .word $23BC
- D 2 - I - 0x001352 00:D342: 1C 21     .word $211C
- D 2 - I - 0x001354 00:D344: 0C 26     .word $260C
- D 2 - I - 0x001356 00:D346: 8C 26     .word $268C
- D 2 - I - 0x001358 00:D348: 16 25     .word $2516
- D 2 - I - 0x00135A 00:D34A: 96 25     .word $2596
- D 2 - I - 0x00135C 00:D34C: 16 27     .word $2716
- D 2 - I - 0x00135E 00:D34E: B6 27     .word $27B6
_off007_D350_04:
- D 2 - I - 0x001360 00:D350: 00        .byte $00   ; end token



off_D351:
- D 2 - I - 0x001361 00:D351: 02        .byte $02   ; counter
- D 2 - I - 0x001362 00:D352: 5C        .byte $5C, $5D   ; tiles
- D 2 - I - 0x001364 00:D354: 20        .byte $20   ; ppu offset

- D 2 - I - 0x001365 00:D355: 02        .byte $02   ; 
- D 2 - I - 0x001366 00:D356: 5E        .byte $5E, $5F   ; 
- D 2 - I - 0x001368 00:D358: 20        .byte $20   ; 

- D 2 - I - 0x001369 00:D359: 02        .byte $02   ; 
- D 2 - I - 0x00136A 00:D35A: 60        .byte $60, $60   ; 
- D 2 - I - 0x00136C 00:D35C: 00        .byte $00   ; end token



off_D35D:
- D 2 - I - 0x00136D 00:D35D: 02        .byte $02   ; counter
- D 2 - I - 0x00136E 00:D35E: 71        .byte $71, $72   ; tiles
- D 2 - I - 0x001370 00:D360: 20        .byte $20   ; ppu offset

- D 2 - I - 0x001371 00:D361: 02        .byte $02   ; 
- D 2 - I - 0x001372 00:D362: 73        .byte $73, $73   ; 
- D 2 - I - 0x001374 00:D364: 00        .byte $00   ; end token



off_D365:
- D 2 - I - 0x001375 00:D365: 04        .byte $04   ; counter
- D 2 - I - 0x001376 00:D366: 76        .byte $76, $00, $00, $74   ; tiles
- D 2 - I - 0x00137A 00:D36A: 00        .byte $00   ; end token



off_D36B:
- D 2 - I - 0x00137B 00:D36B: 02        .byte $02   ; counter
- D 2 - I - 0x00137C 00:D36C: 61        .byte $61, $62   ; tiles
- D 2 - I - 0x00137E 00:D36E: 1F        .byte $1F   ; ppu offset
off_D36F:
- D 2 - I - 0x00137F 00:D36F: 04        .byte $04   ; 
- D 2 - I - 0x001380 00:D370: 63        .byte $63, $64, $65, $66   ; tiles
- D 2 - I - 0x001384 00:D374: 20        .byte $20   ; ppu offset

- D 2 - I - 0x001385 00:D375: 04        .byte $04   ; 
- D 2 - I - 0x001386 00:D376: 67        .byte $67, $68, $69, $6A   ; 
- D 2 - I - 0x00138A 00:D37A: 20        .byte $20   ; 

- D 2 - I - 0x00138B 00:D37B: 04        .byte $04   ; 
- D 2 - I - 0x00138C 00:D37C: 67        .byte $67, $6B, $6C, $6A   ; 
- D 2 - I - 0x001390 00:D380: 00        .byte $00   ; end token



off_D381:
- D 2 - I - 0x001391 00:D381: 04        .byte $04   ; counter
- D 2 - I - 0x001392 00:D382: 74        .byte $74, $75, $75, $76   ; tiles
- D 2 - I - 0x001396 00:D386: 1F        .byte $1F   ; ppu offset

- D 2 - I - 0x001397 00:D387: 06        .byte $06   ; 
- D 2 - I - 0x001398 00:D388: 7B        .byte $7B, $84, $78, $79, $84, $7E   ; 
- D 2 - I - 0x00139E 00:D38E: 20        .byte $20   ; 

- D 2 - I - 0x00139F 00:D38F: 06        .byte $06   ; 
- D 2 - I - 0x0013A0 00:D390: 77        .byte $77, $84, $7C, $7D, $84, $7A   ; 
- D 2 - I - 0x0013A6 00:D396: 1F        .byte $1F   ; 

- D 2 - I - 0x0013A7 00:D397: 08        .byte $08   ; 
- D 2 - I - 0x0013A8 00:D398: 7B        .byte $7B, $84, $84, $6B, $6C, $84, $84, $7E   ; 
- D 2 - I - 0x0013B0 00:D3A0: 00        .byte $00   ; end token



off_D3A1:
- D 2 - I - 0x0013B1 00:D3A1: 04        .byte $04   ; counter
- D 2 - I - 0x0013B2 00:D3A2: 78        .byte $78, $7F, $80, $79   ; tiles
- D 2 - I - 0x0013B6 00:D3A6: 20        .byte $20   ; ppu offset

- D 2 - I - 0x0013B7 00:D3A7: 04        .byte $04   ; 
- D 2 - I - 0x0013B8 00:D3A8: 7C        .byte $7C, $00, $00, $7D   ; 
- D 2 - I - 0x0013BC 00:D3AC: 20        .byte $20   ; 

- D 2 - I - 0x0013BD 00:D3AD: 04        .byte $04   ; 
- D 2 - I - 0x0013BE 00:D3AE: 6B        .byte $6B, $00, $00, $6C   ; 
- D 2 - I - 0x0013C2 00:D3B2: 00        .byte $00   ; end token



off_D3B3:
- D 2 - I - 0x0013C3 00:D3B3: 01        .byte $01   ; counter
- D 2 - I - 0x0013C4 00:D3B4: 4B        .byte $4B   ; tiles
- D 2 - I - 0x0013C5 00:D3B5: 06        .byte $06   ; ppu offset

- D 2 - I - 0x0013C6 00:D3B6: 01        .byte $01   ; 
- D 2 - I - 0x0013C7 00:D3B7: 4B        .byte $4B   ; 
- D 2 - I - 0x0013C8 00:D3B8: 05        .byte $05   ; 

- D 2 - I - 0x0013C9 00:D3B9: 01        .byte $01   ; 
- D 2 - I - 0x0013CA 00:D3BA: 4B        .byte $4B   ; 
- D 2 - I - 0x0013CB 00:D3BB: 05        .byte $05   ; 

- D 2 - I - 0x0013CC 00:D3BC: 01        .byte $01   ; 
- D 2 - I - 0x0013CD 00:D3BD: 4B        .byte $4B   ; 
- D 2 - I - 0x0013CE 00:D3BE: 05        .byte $05   ; 

- D 2 - I - 0x0013CF 00:D3BF: 01        .byte $01   ; 
- D 2 - I - 0x0013D0 00:D3C0: 4B        .byte $4B   ; 
- D 2 - I - 0x0013D1 00:D3C1: 00        .byte $00   ; end token



off_D3C2:
- D 2 - I - 0x0013D2 00:D3C2: 01        .byte $01   ; counter
- D 2 - I - 0x0013D3 00:D3C3: 4B        .byte $4B   ; tiles
- D 2 - I - 0x0013D4 00:D3C4: 05        .byte $05   ; ppu offset
off_D3C5:
- D 2 - I - 0x0013D5 00:D3C5: 01        .byte $01   ; counter
- D 2 - I - 0x0013D6 00:D3C6: 4B        .byte $4B   ; tiles
- D 2 - I - 0x0013D7 00:D3C7: 05        .byte $05   ; ppu offset

- D 2 - I - 0x0013D8 00:D3C8: 01        .byte $01   ; 
- D 2 - I - 0x0013D9 00:D3C9: 4B        .byte $4B   ; 
- D 2 - I - 0x0013DA 00:D3CA: 05        .byte $05   ; 

- D 2 - I - 0x0013DB 00:D3CB: 01        .byte $01   ; 
- D 2 - I - 0x0013DC 00:D3CC: 4B        .byte $4B   ; 
- D 2 - I - 0x0013DD 00:D3CD: 06        .byte $06   ; 

- D 2 - I - 0x0013DE 00:D3CE: 01        .byte $01   ; 
- D 2 - I - 0x0013DF 00:D3CF: 4B        .byte $4B   ; 
- D 2 - I - 0x0013E0 00:D3D0: 00        .byte $00   ; end token



off_D3D1:
- D 2 - I - 0x0013E1 00:D3D1: 01        .byte $01   ; counter
- D 2 - I - 0x0013E2 00:D3D2: 4B        .byte $4B   ; tiles
- D 2 - I - 0x0013E3 00:D3D3: 06        .byte $06   ; ppu offset

- D 2 - I - 0x0013E4 00:D3D4: 01        .byte $01   ; 
- D 2 - I - 0x0013E5 00:D3D5: 4B        .byte $4B   ; 
- D 2 - I - 0x0013E6 00:D3D6: 05        .byte $05   ; 

- D 2 - I - 0x0013E7 00:D3D7: 01        .byte $01   ; 
- D 2 - I - 0x0013E8 00:D3D8: 4B        .byte $4B   ; 
- D 2 - I - 0x0013E9 00:D3D9: 05        .byte $05   ; 

- D 2 - I - 0x0013EA 00:D3DA: 01        .byte $01   ; 
- D 2 - I - 0x0013EB 00:D3DB: 4B        .byte $4B   ; 
- D 2 - I - 0x0013EC 00:D3DC: 07        .byte $07   ; 

- D 2 - I - 0x0013ED 00:D3DD: 01        .byte $01   ; 
- D 2 - I - 0x0013EE 00:D3DE: 4B        .byte $4B   ; 
- D 2 - I - 0x0013EF 00:D3DF: 00        .byte $00   ; end token



off_D3E0:
- D 2 - I - 0x0013F0 00:D3E0: 01        .byte $01   ; counter
- D 2 - I - 0x0013F1 00:D3E1: 4B        .byte $4B   ; tiles
- D 2 - I - 0x0013F2 00:D3E2: 05        .byte $05   ; ppu offset

- D 2 - I - 0x0013F3 00:D3E3: 01        .byte $01   ; 
- D 2 - I - 0x0013F4 00:D3E4: 4B        .byte $4B   ; 
- D 2 - I - 0x0013F5 00:D3E5: 04        .byte $04   ; 

- D 2 - I - 0x0013F6 00:D3E6: 01        .byte $01   ; 
- D 2 - I - 0x0013F7 00:D3E7: 4B        .byte $4B   ; 
- D 2 - I - 0x0013F8 00:D3E8: 05        .byte $05   ; 

- D 2 - I - 0x0013F9 00:D3E9: 01        .byte $01   ; 
- D 2 - I - 0x0013FA 00:D3EA: 4B        .byte $4B   ; 
- D 2 - I - 0x0013FB 00:D3EB: 07        .byte $07   ; 

- D 2 - I - 0x0013FC 00:D3EC: 01        .byte $01   ; 
- D 2 - I - 0x0013FD 00:D3ED: 4B        .byte $4B   ; 
- D 2 - I - 0x0013FE 00:D3EE: 00        .byte $00   ; end token



off_D3EF:
- D 2 - I - 0x0013FF 00:D3EF: 01        .byte $01   ; counter
- D 2 - I - 0x001400 00:D3F0: 4B        .byte $4B   ; tiles
- D 2 - I - 0x001401 00:D3F1: 07        .byte $07   ; ppu offset

- D 2 - I - 0x001402 00:D3F2: 01        .byte $01   ; 
- D 2 - I - 0x001403 00:D3F3: 4B        .byte $4B   ; 
- D 2 - I - 0x001404 00:D3F4: 05        .byte $05   ; 

- D 2 - I - 0x001405 00:D3F5: 01        .byte $01   ; 
- D 2 - I - 0x001406 00:D3F6: 4B        .byte $4B   ; 
- D 2 - I - 0x001407 00:D3F7: 04        .byte $04   ; 

- D 2 - I - 0x001408 00:D3F8: 01        .byte $01   ; 
- D 2 - I - 0x001409 00:D3F9: 4B        .byte $4B   ; 
- D 2 - I - 0x00140A 00:D3FA: 05        .byte $05   ; 

- D 2 - I - 0x00140B 00:D3FB: 01        .byte $01   ; 
- D 2 - I - 0x00140C 00:D3FC: 4B        .byte $4B   ; 
- D 2 - I - 0x00140D 00:D3FD: 00        .byte $00   ; end token



off_D3FE:
- D 2 - I - 0x00140E 00:D3FE: 01        .byte $01   ; counter
- D 2 - I - 0x00140F 00:D3FF: 4B        .byte $4B   ; tiles
- D 2 - I - 0x001410 00:D400: 06        .byte $06   ; ppu offset

- D 2 - I - 0x001411 00:D401: 01        .byte $01   ; 
- D 2 - I - 0x001412 00:D402: 4B        .byte $4B   ; 
- D 2 - I - 0x001413 00:D403: 05        .byte $05   ; 

- D 2 - I - 0x001414 00:D404: 01        .byte $01   ; 
- D 2 - I - 0x001415 00:D405: 4B        .byte $4B   ; 
- D 2 - I - 0x001416 00:D406: 05        .byte $05   ; 

- D 2 - I - 0x001417 00:D407: 01        .byte $01   ; 
- D 2 - I - 0x001418 00:D408: 4B        .byte $4B   ; 
- D 2 - I - 0x001419 00:D409: 03        .byte $03   ; 

- D 2 - I - 0x00141A 00:D40A: 01        .byte $01   ; 
- D 2 - I - 0x00141B 00:D40B: 4B        .byte $4B   ; 
- D 2 - I - 0x00141C 00:D40C: 02        .byte $02   ; 

- D 2 - I - 0x00141D 00:D40D: 01        .byte $01   ; 
- D 2 - I - 0x00141E 00:D40E: 4B        .byte $4B   ; 
- D 2 - I - 0x00141F 00:D40F: 00        .byte $00   ; end token



off_D410:
- D 2 - I - 0x001420 00:D410: 04        .byte $04   ; counter
- D 2 - I - 0x001421 00:D411: 00        .byte $00, $00, $00, $00   ; tiles
- D 2 - I - 0x001425 00:D415: 00        .byte $00   ; end token



off_D416:
- D 2 - I - 0x001426 00:D416: 04        .byte $04   ; counter
- D 2 - I - 0x001427 00:D417: 49        .byte $49, $49, $49, $49   ; tiles
- D 2 - I - 0x00142B 00:D41B: 00        .byte $00   ; end token



_off007_D41C_05:
- D 2 - I - 0x00142C 00:D41C: 05        .byte $05   ; counter
- D 2 - I - 0x00142D 00:D41D: 67 D4     .word off_D467
- D 2 - I - 0x00142F 00:D41F: E8 20     .word $20E8
- D 2 - I - 0x001431 00:D421: EE 22     .word $22EE
- D 2 - I - 0x001433 00:D423: E0 26     .word $26E0
- D 2 - I - 0x001435 00:D425: 66 25     .word $2566
- D 2 - I - 0x001437 00:D427: F2 24     .word $24F2

- D 2 - I - 0x001439 00:D429: 06        .byte $06   ; 
- D 2 - I - 0x00143A 00:D42A: 5B D4     .word off_D45B
- D 2 - I - 0x00143C 00:D42C: 68 22     .word $2268
- D 2 - I - 0x00143E 00:D42E: 14 21     .word $2114
- D 2 - I - 0x001440 00:D430: 1A 22     .word $221A
- D 2 - I - 0x001442 00:D432: 00 25     .word $2500
- D 2 - I - 0x001444 00:D434: EC 25     .word $25EC
- D 2 - I - 0x001446 00:D436: 72 26     .word $2672

- D 2 - I - 0x001448 00:D438: 04        .byte $04   ; 
- D 2 - I - 0x001449 00:D439: 7B D4     .word off_D47B
- D 2 - I - 0x00144B 00:D43B: 02 22     .word $2202
- D 2 - I - 0x00144D 00:D43D: 8E 22     .word $228E
- D 2 - I - 0x00144F 00:D43F: 80 26     .word $2680
- D 2 - I - 0x001451 00:D441: 12 26     .word $2612

- D 2 - I - 0x001453 00:D443: 0A        .byte $0A   ; 
- D 2 - I - 0x001454 00:D444: 10 D4     .word off_D410
- D 2 - I - 0x001456 00:D446: 84 23     .word $2384
- D 2 - I - 0x001458 00:D448: A4 23     .word $23A4
- D 2 - I - 0x00145A 00:D44A: AA 23     .word $23AA
- D 2 - I - 0x00145C 00:D44C: B0 23     .word $23B0
- D 2 - I - 0x00145E 00:D44E: B6 23     .word $23B6
- D 2 - I - 0x001460 00:D450: BC 23     .word $23BC
- D 2 - I - 0x001462 00:D452: A2 27     .word $27A2
- D 2 - I - 0x001464 00:D454: A8 27     .word $27A8
- D 2 - I - 0x001466 00:D456: AE 27     .word $27AE
- D 2 - I - 0x001468 00:D458: B4 27     .word $27B4

- D 2 - I - 0x00146A 00:D45A: 00        .byte $00   ; end token



off_D45B:
- D 2 - I - 0x00146B 00:D45B: 02        .byte $02   ; counter
- D 2 - I - 0x00146C 00:D45C: 00        .byte $00, $00   ; tiles
- D 2 - I - 0x00146E 00:D45E: 20        .byte $20   ; ppu offset

- D 2 - I - 0x00146F 00:D45F: 02        .byte $02   ; 
- D 2 - I - 0x001470 00:D460: 00        .byte $00, $00   ; 
- D 2 - I - 0x001472 00:D462: 20        .byte $20   ; 

- D 2 - I - 0x001473 00:D463: 02        .byte $02   ; 
- D 2 - I - 0x001474 00:D464: 00        .byte $00, $00   ; 
- D 2 - I - 0x001476 00:D466: 20        .byte $20   ; 
off_D467:
- D 2 - I - 0x001477 00:D467: 02        .byte $02   ; counter
- D 2 - I - 0x001478 00:D468: 00        .byte $00, $00   ; tiles
- D 2 - I - 0x00147A 00:D46A: 20        .byte $20   ; ppu offset

- D 2 - I - 0x00147B 00:D46B: 02        .byte $02   ; 
- D 2 - I - 0x00147C 00:D46C: 00        .byte $00, $00   ; 
- D 2 - I - 0x00147E 00:D46E: 20        .byte $20   ; 

- D 2 - I - 0x00147F 00:D46F: 02        .byte $02   ; 
- D 2 - I - 0x001480 00:D470: 00        .byte $00, $00   ; 
- D 2 - I - 0x001482 00:D472: 20        .byte $20   ; 

- D 2 - I - 0x001483 00:D473: 02        .byte $02   ; 
- D 2 - I - 0x001484 00:D474: 00        .byte $00, $00   ; 
- D 2 - I - 0x001486 00:D476: 20        .byte $20   ; 

- D 2 - I - 0x001487 00:D477: 02        .byte $02   ; 
- D 2 - I - 0x001488 00:D478: 00        .byte $00, $00   ; 
- D 2 - I - 0x00148A 00:D47A: 00        .byte $00   ; end token



off_D47B:
- D 2 - I - 0x00148B 00:D47B: 02        .byte $02   ; counter
- D 2 - I - 0x00148C 00:D47C: 82        .byte $82, $83   ; tiles
- D 2 - I - 0x00148E 00:D47E: 06        .byte $06   ; ppu offset

- D 2 - I - 0x00148F 00:D47F: 02        .byte $02   ; 
- D 2 - I - 0x001490 00:D480: 82        .byte $82, $83   ; 
- D 2 - I - 0x001492 00:D482: 00        .byte $00   ; end token



_off007_D483_06:
- D 2 - I - 0x001493 00:D483: 01        .byte $01   ; counter
- D 2 - I - 0x001494 00:D484: 93 D4     .word off_D493
- D 2 - I - 0x001496 00:D486: 6A 21     .word $216A

- D 2 - I - 0x001498 00:D488: 01        .byte $01   ; 
- D 2 - I - 0x001499 00:D489: A0 D4     .word off_D4A0
- D 2 - I - 0x00149B 00:D48B: 51 22     .word $2251

- D 2 - I - 0x00149D 00:D48D: 01        .byte $01   ; 
- D 2 - I - 0x00149E 00:D48E: AF D4     .word off_D4AF
- D 2 - I - 0x0014A0 00:D490: C9 22     .word $22C9

- D 2 - I - 0x0014A2 00:D492: 00        .byte $00   ; end token



off_D493:
- D 2 - I - 0x0014A3 00:D493: 0B        .byte $0B   ; counter
- D 2 - I - 0x0014A4 00:D494: 0C        .byte $0C, $19, $18, $1F, $1D, $00, $1C, $19, $1F, $18, $0E   ; tiles
- D 2 - I - 0x0014AF 00:D49F: 00        .byte $00   ; end token



off_D4A0:
- D 2 - I - 0x0014B0 00:D4A0: 02        .byte $02   ; counter
- D 2 - I - 0x0014B1 00:D4A1: 28        .byte $28, $29   ; tiles
- D 2 - I - 0x0014B3 00:D4A3: 1A        .byte $1A   ; ppu offset

- D 2 - I - 0x0014B4 00:D4A4: 09        .byte $09   ; 
- D 2 - I - 0x0014B5 00:D4A5: 1D        .byte $1D, $1E, $13, $18, $11, $00, $2A, $2B, $1D   ; 
- D 2 - I - 0x0014BE 00:D4AE: 00        .byte $00   ; end token



off_D4AF:
- D 2 - I - 0x0014BF 00:D4AF: 0D        .byte $0D   ; counter
- D 2 - I - 0x0014C0 00:D4B0: 0C        .byte $0C, $0F, $10, $19, $1C, $0F, $00, $00, $00, $0F, $18, $0E, $1D   ; tiles
- D 2 - I - 0x0014CD 00:D4BD: 00        .byte $00   ; end token



sub_D4BE:
loc_D4BE:
C D 2 - - - 0x0014CE 00:D4BE: 85 19     STA ram_0019
bra_D4C0_loop:
C - - - - - 0x0014D0 00:D4C0: A4 19     LDY ram_0019
C - - - - - 0x0014D2 00:D4C2: 20 CA D4  JSR sub_D4CA
C - - - - - 0x0014D5 00:D4C5: C6 18     DEC ram_0018
C - - - - - 0x0014D7 00:D4C7: D0 F7     BNE bra_D4C0_loop
bra_D4C9_RTS:
C - - - - - 0x0014D9 00:D4C9: 60        RTS



sub_D4CA:
loc_D4CA:
C D 2 - - - 0x0014DA 00:D4CA: A5 42     LDA ram_demo_flag
C - - - - - 0x0014DC 00:D4CC: F0 FB     BEQ bra_D4C9_RTS    ; if demo
; if not demo
C - - - - - 0x0014DE 00:D4CE: 85 43     STA ram_0043
C - - - - - 0x0014E0 00:D4D0: 98        TYA
C - - - - - 0x0014E1 00:D4D1: 18        CLC
C - - - - - 0x0014E2 00:D4D2: 6D 61 D5  ADC tbl_D561
C - - - - - 0x0014E5 00:D4D5: 85 12     STA ram_0012
C - - - - - 0x0014E7 00:D4D7: AD 62 D5  LDA tbl_D561 + $01
C - - - - - 0x0014EA 00:D4DA: 69 00     ADC #$00
C - - - - - 0x0014EC 00:D4DC: 85 13     STA ram_0013
C - - - - - 0x0014EE 00:D4DE: A2 74     LDX #< ram_score_000000xx
C - - - - - 0x0014F0 00:D4E0: A0 03     LDY #$03
C - - - - - 0x0014F2 00:D4E2: 4C 02 D5  JMP loc_D502



sub_D4E5:
loc_D4E5:
C D 2 - - - 0x0014F5 00:D4E5: B9 36 D5  LDA tbl_D536,Y
C - - - - - 0x0014F8 00:D4E8: 85 10     STA ram_0010
C - - - - - 0x0014FA 00:D4EA: B9 37 D5  LDA tbl_D536 + $01,Y
C - - - - - 0x0014FD 00:D4ED: 85 11     STA ram_0011
C - - - - - 0x0014FF 00:D4EF: A0 00     LDY #$00
C - - - - - 0x001501 00:D4F1: B1 10     LDA (ram_0010),Y
C - - - - - 0x001503 00:D4F3: C8        INY ; 01
C - - - - - 0x001504 00:D4F4: AA        TAX
C - - - - - 0x001505 00:D4F5: B1 10     LDA (ram_0010),Y
C - - - - - 0x001507 00:D4F7: C8        INY ; 02
C - - - - - 0x001508 00:D4F8: 85 12     STA ram_0012
C - - - - - 0x00150A 00:D4FA: B1 10     LDA (ram_0010),Y
C - - - - - 0x00150C 00:D4FC: C8        INY ; 03
C - - - - - 0x00150D 00:D4FD: 85 13     STA ram_0013
C - - - - - 0x00150F 00:D4FF: B1 10     LDA (ram_0010),Y
C - - - - - 0x001511 00:D501: A8        TAY
loc_D502:
C D 2 - - - 0x001512 00:D502: 18        CLC
bra_D503_loop:
C - - - - - 0x001513 00:D503: B1 12     LDA (ram_0012),Y
C - - - - - 0x001515 00:D505: 29 0F     AND #$0F
C - - - - - 0x001517 00:D507: 85 14     STA ram_0014
C - - - - - 0x001519 00:D509: B1 12     LDA (ram_0012),Y
C - - - - - 0x00151B 00:D50B: 29 F0     AND #$F0
C - - - - - 0x00151D 00:D50D: 85 15     STA ram_0015
C - - - - - 0x00151F 00:D50F: B5 00     LDA ram_0000,X
C - - - - - 0x001521 00:D511: 29 0F     AND #$0F
C - - - - - 0x001523 00:D513: 65 14     ADC ram_0014
C - - - - - 0x001525 00:D515: C9 0A     CMP #$0A
C - - - - - 0x001527 00:D517: 90 02     BCC bra_D51B
C - - - - - 0x001529 00:D519: 69 05     ADC #$05
bra_D51B:
C - - - - - 0x00152B 00:D51B: 85 14     STA ram_0014
C - - - - - 0x00152D 00:D51D: 18        CLC
C - - - - - 0x00152E 00:D51E: B5 00     LDA ram_0000,X
C - - - - - 0x001530 00:D520: 29 F0     AND #$F0
C - - - - - 0x001532 00:D522: 65 14     ADC ram_0014
C - - - - - 0x001534 00:D524: 65 15     ADC ram_0015
C - - - - - 0x001536 00:D526: B0 04     BCS bra_D52C
C - - - - - 0x001538 00:D528: C9 A0     CMP #$A0
C - - - - - 0x00153A 00:D52A: 90 03     BCC bra_D52F
bra_D52C:
C - - - - - 0x00153C 00:D52C: 69 5F     ADC #$5F
C - - - - - 0x00153E 00:D52E: 38        SEC
bra_D52F:
C - - - - - 0x00153F 00:D52F: 95 00     STA ram_0000,X
C - - - - - 0x001541 00:D531: CA        DEX
C - - - - - 0x001542 00:D532: 88        DEY
C - - - - - 0x001543 00:D533: 10 CE     BPL bra_D503_loop
C - - - - - 0x001545 00:D535: 60        RTS



tbl_D536:
; see con_D536
- D 2 - - - 0x001546 00:D536: 44 D5     .word off_D544_00
- D 2 - - - 0x001548 00:D538: 48 D5     .word off_D548_02
- D 2 - - - 0x00154A 00:D53A: 4C D5     .word off_D54C_04
- D 2 - - - 0x00154C 00:D53C: 50 D5     .word off_D550_06
- D 2 - - - 0x00154E 00:D53E: 54 D5     .word off_D554_08
- D 2 - - - 0x001550 00:D540: 58 D5     .word off_D558_0A
- D 2 - - - 0x001552 00:D542: 5C D5     .word off_D55C_0C



off_D544_00:
- D 2 - I - 0x001554 00:D544: 76        .byte < ram_score_for_1up   ; 
- D 2 - I - 0x001555 00:D545: 49 00     .word ram_0049
- D 2 - I - 0x001557 00:D547: 00        .byte $00   ; index



off_D548_02:
- D 2 - I - 0x001558 00:D548: 70        .byte < ram_lives_1   ; 
- D 2 - I - 0x001559 00:D549: 60 D5     .word off_D560
- D 2 - I - 0x00155B 00:D54B: 00        .byte $00   ; index



off_D54C_04:
- D 2 - I - 0x00155C 00:D54C: 77        .byte < ram_0077   ; 
- D 2 - I - 0x00155D 00:D54D: 60 D5     .word off_D560
- D 2 - I - 0x00155F 00:D54F: 00        .byte $00   ; index



off_D550_06:
- D 2 - I - 0x001560 00:D550: 50        .byte < ram_0050   ; 
- D 2 - I - 0x001561 00:D551: 60 D5     .word off_D560
- D 2 - I - 0x001563 00:D553: 00        .byte $00   ; index



off_D554_08:
- D 2 - I - 0x001564 00:D554: 57        .byte < ram_0057   ; 
- D 2 - I - 0x001565 00:D555: 67 D5     .word off_D567
- D 2 - I - 0x001567 00:D557: 03        .byte $03   ; index



off_D558_0A:
- D 2 - I - 0x001568 00:D558: 5F        .byte < ram_005F   ; 
- D 2 - I - 0x001569 00:D559: 54 00     .word ram_0054
- D 2 - I - 0x00156B 00:D55B: 03        .byte $03   ; index



off_D55C_0C:
- D 2 - I - 0x00156C 00:D55C: 74        .byte < ram_score_000000xx   ; 
- D 2 - I - 0x00156D 00:D55D: 5C 00     .word ram_005C
- D 2 - I - 0x00156F 00:D55F: 03        .byte $03   ; index



off_D560:
- D 2 - I - 0x001570 00:D560: 01        .byte $01   ; 



tbl_D561:   ; bzk optimize
- D 2 - - - 0x001571 00:D561: 63 D5     .word off_D563

off_D563:
- D 2 - I - 0x001573 00:D563: 00        .byte $00   ; 
- D 2 - I - 0x001574 00:D564: 00        .byte $00   ; 
- D 2 - I - 0x001575 00:D565: 01        .byte $01   ; 
- D 2 - I - 0x001576 00:D566: 00        .byte $00   ; 
off_D567:
- D 2 - I - 0x001577 00:D567: 00        .byte $00   ; 
- D 2 - I - 0x001578 00:D568: 00        .byte $00   ; 
- D 2 - I - 0x001579 00:D569: 02        .byte $02   ; 
- D 2 - I - 0x00157A 00:D56A: 00        .byte $00   ; 
- D 2 - I - 0x00157B 00:D56B: 00        .byte $00   ; 
- D 2 - I - 0x00157C 00:D56C: 00        .byte $00   ; 
- D 2 - I - 0x00157D 00:D56D: 03        .byte $03   ; 
- D 2 - I - 0x00157E 00:D56E: 00        .byte $00   ; 
- D 2 - I - 0x00157F 00:D56F: 00        .byte $00   ; 
- D 2 - I - 0x001580 00:D570: 00        .byte $00   ; 
- D 2 - I - 0x001581 00:D571: 04        .byte $04   ; 
- D 2 - I - 0x001582 00:D572: 00        .byte $00   ; 
- D 2 - I - 0x001583 00:D573: 00        .byte $00   ; 
- D 2 - I - 0x001584 00:D574: 00        .byte $00   ; 
- D 2 - I - 0x001585 00:D575: 05        .byte $05   ; 
- D 2 - I - 0x001586 00:D576: 00        .byte $00   ; 
- D 2 - I - 0x001587 00:D577: 00        .byte $00   ; 
- D 2 - I - 0x001588 00:D578: 00        .byte $00   ; 
- D 2 - I - 0x001589 00:D579: 02        .byte $02   ; 
- D 2 - I - 0x00158A 00:D57A: 00        .byte $00   ; 
- D 2 - I - 0x00158B 00:D57B: 00        .byte $00   ; 
- D 2 - I - 0x00158C 00:D57C: 00        .byte $00   ; 
- D 2 - I - 0x00158D 00:D57D: 04        .byte $04   ; 
- D 2 - I - 0x00158E 00:D57E: 00        .byte $00   ; 
- D 2 - I - 0x00158F 00:D57F: 00        .byte $00   ; 
- D 2 - I - 0x001590 00:D580: 00        .byte $00   ; 
- D 2 - I - 0x001591 00:D581: 08        .byte $08   ; 
- D 2 - I - 0x001592 00:D582: 00        .byte $00   ; 
- - - - - - 0x001593 00:D583: 00        .byte $00   ; 
- - - - - - 0x001594 00:D584: 00        .byte $00   ; 
- - - - - - 0x001595 00:D585: 12        .byte $12   ; 
- - - - - - 0x001596 00:D586: 00        .byte $00   ; 
- - - - - - 0x001597 00:D587: 00        .byte $00   ; 
- - - - - - 0x001598 00:D588: 00        .byte $00   ; 
- - - - - - 0x001599 00:D589: 16        .byte $16   ; 
- - - - - - 0x00159A 00:D58A: 00        .byte $00   ; 
- - - - - - 0x00159B 00:D58B: 00        .byte $00   ; 
- - - - - - 0x00159C 00:D58C: 00        .byte $00   ; 
- - - - - - 0x00159D 00:D58D: 20        .byte $20   ; 
- - - - - - 0x00159E 00:D58E: 00        .byte $00   ; 
- - - - - - 0x00159F 00:D58F: 00        .byte $00   ; 
- - - - - - 0x0015A0 00:D590: 00        .byte $00   ; 
- - - - - - 0x0015A1 00:D591: 30        .byte $30   ; 
- - - - - - 0x0015A2 00:D592: 00        .byte $00   ; 
- - - - - - 0x0015A3 00:D593: 00        .byte $00   ; 
- - - - - - 0x0015A4 00:D594: 00        .byte $00   ; 
- - - - - - 0x0015A5 00:D595: 40        .byte $40   ; 
- - - - - - 0x0015A6 00:D596: 00        .byte $00   ; 
- - - - - - 0x0015A7 00:D597: 00        .byte $00   ; 
- - - - - - 0x0015A8 00:D598: 00        .byte $00   ; 
- - - - - - 0x0015A9 00:D599: 50        .byte $50   ; 
- - - - - - 0x0015AA 00:D59A: 00        .byte $00   ; 
- - - - - - 0x0015AB 00:D59B: 00        .byte $00   ; 
- - - - - - 0x0015AC 00:D59C: 00        .byte $00   ; 
- - - - - - 0x0015AD 00:D59D: 60        .byte $60   ; 
- - - - - - 0x0015AE 00:D59E: 00        .byte $00   ; 
- D 2 - I - 0x0015AF 00:D59F: 00        .byte $00   ; 
- D 2 - I - 0x0015B0 00:D5A0: 00        .byte $00   ; 
- D 2 - I - 0x0015B1 00:D5A1: 00        .byte $00   ; 
- D 2 - I - 0x0015B2 00:D5A2: 10        .byte $10   ; 
- D 2 - I - 0x0015B3 00:D5A3: 00        .byte $00   ; 
- D 2 - I - 0x0015B4 00:D5A4: 00        .byte $00   ; 
- D 2 - I - 0x0015B5 00:D5A5: 00        .byte $00   ; 
- D 2 - I - 0x0015B6 00:D5A6: 50        .byte $50   ; 
- D 2 - I - 0x0015B7 00:D5A7: 00        .byte $00   ; 
- D 2 - I - 0x0015B8 00:D5A8: 00        .byte $00   ; 
- D 2 - I - 0x0015B9 00:D5A9: 10        .byte $10   ; 
- D 2 - I - 0x0015BA 00:D5AA: 00        .byte $00   ; 



loc_D5AB:
sub_D5AB:
C D 2 - - - 0x0015BB 00:D5AB: A5 30     LDA ram_0030
C - - - - - 0x0015BD 00:D5AD: F0 0F     BEQ bra_D5BE
C - - - - - 0x0015BF 00:D5AF: 85 18     STA ram_0018
C - - - - - 0x0015C1 00:D5B1: A9 40     LDA #$40
C - - - - - 0x0015C3 00:D5B3: 20 BE D4  JSR sub_D4BE
C - - - - - 0x0015C6 00:D5B6: A9 00     LDA #$00
C - - - - - 0x0015C8 00:D5B8: 85 30     STA ram_0030
C - - - - - 0x0015CA 00:D5BA: A9 01     LDA #$01
C - - - - - 0x0015CC 00:D5BC: 85 43     STA ram_0043
bra_D5BE:
C - - - - - 0x0015CE 00:D5BE: A5 43     LDA ram_0043
C - - - - - 0x0015D0 00:D5C0: F0 66     BEQ bra_D628_RTS
C - - - - - 0x0015D2 00:D5C2: C9 01     CMP #$01
C - - - - - 0x0015D4 00:D5C4: F0 0F     BEQ bra_D5D5
C - - - - - 0x0015D6 00:D5C6: A9 00     LDA #$00
C - - - - - 0x0015D8 00:D5C8: 85 43     STA ram_0043
C - - - - - 0x0015DA 00:D5CA: 20 94 D6  JSR sub_D694_check_max_score
C - - - - - 0x0015DD 00:D5CD: 20 AA D6  JSR sub_D6AA
C - - - - - 0x0015E0 00:D5D0: A0 08     LDY #con_D640_08
C - - - - - 0x0015E2 00:D5D2: 4C D9 D5  JMP loc_D5D9
bra_D5D5:
C - - - - - 0x0015E5 00:D5D5: E6 43     INC ram_0043
C - - - - - 0x0015E7 00:D5D7: A0 00     LDY #con_D640_00
sub_D5D9:
loc_D5D9:
C D 2 - - - 0x0015E9 00:D5D9: B9 40 D6  LDA tbl_D640,Y
C - - - - - 0x0015EC 00:D5DC: 85 10     STA ram_0010
C - - - - - 0x0015EE 00:D5DE: B9 41 D6  LDA tbl_D640 + $01,Y
C - - - - - 0x0015F1 00:D5E1: 85 11     STA ram_0011
C - - - - - 0x0015F3 00:D5E3: A0 00     LDY #$00
C - - - - - 0x0015F5 00:D5E5: B1 10     LDA (ram_0010),Y
C - - - - - 0x0015F7 00:D5E7: C8        INY
C - - - - - 0x0015F8 00:D5E8: 85 12     STA ram_0012
C - - - - - 0x0015FA 00:D5EA: B1 10     LDA (ram_0010),Y
C - - - - - 0x0015FC 00:D5EC: C8        INY
C - - - - - 0x0015FD 00:D5ED: 85 13     STA ram_0013
C - - - - - 0x0015FF 00:D5EF: B1 10     LDA (ram_0010),Y
C - - - - - 0x001601 00:D5F1: C8        INY
C - - - - - 0x001602 00:D5F2: AA        TAX
C - - - - - 0x001603 00:D5F3: B1 10     LDA (ram_0010),Y
C - - - - - 0x001605 00:D5F5: C8        INY
C - - - - - 0x001606 00:D5F6: 85 14     STA ram_0014
C - - - - - 0x001608 00:D5F8: B1 10     LDA (ram_0010),Y
C - - - - - 0x00160A 00:D5FA: 85 15     STA ram_0015
C - - - - - 0x00160C 00:D5FC: A4 2A     LDY ram_002A
C - - - - - 0x00160E 00:D5FE: A5 12     LDA ram_0012
C - - - - - 0x001610 00:D600: 99 00 05  STA ram_0500,Y
C - - - - - 0x001613 00:D603: C8        INY
C - - - - - 0x001614 00:D604: A5 13     LDA ram_0013
C - - - - - 0x001616 00:D606: 99 00 05  STA ram_0500,Y
C - - - - - 0x001619 00:D609: C8        INY
C - - - - - 0x00161A 00:D60A: A5 14     LDA ram_0014
C - - - - - 0x00161C 00:D60C: 0A        ASL
C - - - - - 0x00161D 00:D60D: 99 00 05  STA ram_0500,Y
C - - - - - 0x001620 00:D610: C8        INY
bra_D611:
C - - - - - 0x001621 00:D611: B5 00     LDA ram_0000,X
C - - - - - 0x001623 00:D613: 4A        LSR
C - - - - - 0x001624 00:D614: 4A        LSR
C - - - - - 0x001625 00:D615: 4A        LSR
C - - - - - 0x001626 00:D616: 4A        LSR
C - - - - - 0x001627 00:D617: 20 29 D6  JSR sub_D629
C - - - - - 0x00162A 00:D61A: B5 00     LDA ram_0000,X
C - - - - - 0x00162C 00:D61C: E8        INX
C - - - - - 0x00162D 00:D61D: 29 0F     AND #$0F
C - - - - - 0x00162F 00:D61F: 20 29 D6  JSR sub_D629
C - - - - - 0x001632 00:D622: C6 14     DEC ram_0014
C - - - - - 0x001634 00:D624: D0 EB     BNE bra_D611
C - - - - - 0x001636 00:D626: 84 2A     STY ram_002A
bra_D628_RTS:
C - - - - - 0x001638 00:D628: 60        RTS



sub_D629:
C - - - - - 0x001639 00:D629: D0 09     BNE bra_D634
C - - - - - 0x00163B 00:D62B: C6 15     DEC ram_0015
C - - - - - 0x00163D 00:D62D: 30 05     BMI bra_D634
C - - - - - 0x00163F 00:D62F: 99 00 05  STA ram_0500,Y
C - - - - - 0x001642 00:D632: C8        INY
C - - - - - 0x001643 00:D633: 60        RTS
bra_D634:
C - - - - - 0x001644 00:D634: 18        CLC
C - - - - - 0x001645 00:D635: 69 01     ADC #$01
C - - - - - 0x001647 00:D637: 99 00 05  STA ram_0500,Y
C - - - - - 0x00164A 00:D63A: C8        INY
C - - - - - 0x00164B 00:D63B: A9 00     LDA #$00
C - - - - - 0x00164D 00:D63D: 85 15     STA ram_0015
C - - - - - 0x00164F 00:D63F: 60        RTS



tbl_D640:
; see con_D640
- D 2 - - - 0x001650 00:D640: 58 D6     .word _off000_D658_00
- - - - - - 0x001652 00:D642: 5D D6     .word _off000_D65D_02
- D 2 - - - 0x001654 00:D644: 67 D6     .word _off000_D667_04
- - - - - - 0x001656 00:D646: 62 D6     .word _off000_D662_06
- D 2 - - - 0x001658 00:D648: 6C D6     .word _off000_D66C_08
- D 2 - - - 0x00165A 00:D64A: 71 D6     .word _off000_D671_0A
- D 2 - - - 0x00165C 00:D64C: 76 D6     .word _off000_D676_0C
- D 2 - - - 0x00165E 00:D64E: 7B D6     .word _off000_D67B_0E
- D 2 - - - 0x001660 00:D650: 80 D6     .word _off000_D680_10
- D 2 - - - 0x001662 00:D652: 85 D6     .word _off000_D685_12
- D 2 - - - 0x001664 00:D654: 8A D6     .word _off000_D68A_14
- D 2 - - - 0x001666 00:D656: 8F D6     .word _off000_D68F_16



_off000_D658_00:
- D 2 - I - 0x001668 00:D658: 62 20     .word $2062
- D 2 - I - 0x00166A 00:D65A: 71        .byte $71   ; 
- D 2 - I - 0x00166B 00:D65B: 04        .byte $04   ; 
- D 2 - I - 0x00166C 00:D65C: 06        .byte $06   ; 



_off000_D65D_02:
- - - - - - 0x00166D 00:D65D: 74 20     .word $2074
- - - - - - 0x00166F 00:D65F: 71        .byte $71   ; 
- - - - - - 0x001670 00:D660: 04        .byte $04   ; 
- - - - - - 0x001671 00:D661: 06        .byte $06   ; 



_off000_D662_06:
- - - - - - 0x001672 00:D662: 62 20     .word $2062
- - - - - - 0x001674 00:D664: B1        .byte $B1   ; 
- - - - - - 0x001675 00:D665: 04        .byte $04   ; 
- - - - - - 0x001676 00:D666: 06        .byte $06   ; 



_off000_D667_04:
- D 2 - I - 0x001677 00:D667: 74 20     .word $2074
- D 2 - I - 0x001679 00:D669: B1        .byte $B1   ; 
- D 2 - I - 0x00167A 00:D66A: 04        .byte $04   ; 
- D 2 - I - 0x00167B 00:D66B: 06        .byte $06   ; 



_off000_D66C_08:
- D 2 - I - 0x00167C 00:D66C: 6B 20     .word $206B
- D 2 - I - 0x00167E 00:D66E: 44        .byte $44   ; 
- D 2 - I - 0x00167F 00:D66F: 04        .byte $04   ; 
- D 2 - I - 0x001680 00:D670: 06        .byte $06   ; 



_off000_D671_0A:
- D 2 - I - 0x001681 00:D671: 76 20     .word $2076
- D 2 - I - 0x001683 00:D673: 70        .byte $70   ; 
- D 2 - I - 0x001684 00:D674: 01        .byte $01   ; 
- D 2 - I - 0x001685 00:D675: 01        .byte $01   ; 



_off000_D676_0C:
- D 2 - I - 0x001686 00:D676: 7A 20     .word $207A
- D 2 - I - 0x001688 00:D678: 77        .byte $77   ; 
- D 2 - I - 0x001689 00:D679: 01        .byte $01   ; 
- D 2 - I - 0x00168A 00:D67A: 01        .byte $01   ; 



_off000_D67B_0E:
- D 2 - I - 0x00168B 00:D67B: 90 21     .word $2190
- D 2 - I - 0x00168D 00:D67D: 50        .byte $50   ; 
- D 2 - I - 0x00168E 00:D67E: 01        .byte $01   ; 
- D 2 - I - 0x00168F 00:D67F: 01        .byte $01   ; 



_off000_D680_10:
- D 2 - I - 0x001690 00:D680: 10 22     .word $2210
- D 2 - I - 0x001692 00:D682: 51        .byte $51   ; 
- D 2 - I - 0x001693 00:D683: 01        .byte $01   ; 
- D 2 - I - 0x001694 00:D684: 01        .byte $01   ; 



_off000_D685_12:
- D 2 - I - 0x001695 00:D685: 97 21     .word $2197
- D 2 - I - 0x001697 00:D687: 56        .byte $56   ; 
- D 2 - I - 0x001698 00:D688: 02        .byte $02   ; 
- D 2 - I - 0x001699 00:D689: 02        .byte $02   ; 



_off000_D68A_14:
- D 2 - I - 0x00169A 00:D68A: 17 22     .word $2217
- D 2 - I - 0x00169C 00:D68C: 5A        .byte $5A   ; 
- D 2 - I - 0x00169D 00:D68D: 02        .byte $02   ; 
- D 2 - I - 0x00169E 00:D68E: 02        .byte $02   ; 



_off000_D68F_16:
- D 2 - I - 0x00169F 00:D68F: 15 23     .word $2315
- D 2 - I - 0x0016A1 00:D691: 5D        .byte $5D   ; 
- D 2 - I - 0x0016A2 00:D692: 03        .byte $03   ; 
- D 2 - I - 0x0016A3 00:D693: 04        .byte $04   ; 



sub_D694_check_max_score:
C - - - - - 0x0016A4 00:D694: A2 03     LDX #$03
C - - - - - 0x0016A6 00:D696: 38        SEC
bra_D697_loop:
C - - - - - 0x0016A7 00:D697: B5 44     LDA ram_max_score,X
C - - - - - 0x0016A9 00:D699: F5 71     SBC ram_current_score,X
C - - - - - 0x0016AB 00:D69B: CA        DEX
C - - - - - 0x0016AC 00:D69C: 10 F9     BPL bra_D697_loop
C - - - - - 0x0016AE 00:D69E: B0 09     BCS bra_D6A9_RTS    ; max score was not beaten yet
C - - - - - 0x0016B0 00:D6A0: A2 03     LDX #$03
bra_D6A2_loop:
C - - - - - 0x0016B2 00:D6A2: B5 71     LDA ram_current_score,X
C - - - - - 0x0016B4 00:D6A4: 95 44     STA ram_max_score,X
C - - - - - 0x0016B6 00:D6A6: CA        DEX
C - - - - - 0x0016B7 00:D6A7: 10 F9     BPL bra_D6A2_loop
bra_D6A9_RTS:
C - - - - - 0x0016B9 00:D6A9: 60        RTS



sub_D6AA:
C - - - - - 0x0016BA 00:D6AA: A5 75     LDA ram_0075
C - - - - - 0x0016BC 00:D6AC: C5 48     CMP ram_0048
C - - - - - 0x0016BE 00:D6AE: F0 F9     BEQ bra_D6A9_RTS
C - - - - - 0x0016C0 00:D6B0: A5 72     LDA ram_score_00xx0000
C - - - - - 0x0016C2 00:D6B2: C5 76     CMP ram_score_for_1up
C - - - - - 0x0016C4 00:D6B4: 90 F3     BCC bra_D6A9_RTS
C - - - - - 0x0016C6 00:D6B6: A5 75     LDA ram_0075
C - - - - - 0x0016C8 00:D6B8: D0 02     BNE bra_D6BC
C - - - - - 0x0016CA 00:D6BA: 85 76     STA ram_score_for_1up
bra_D6BC:
C - - - - - 0x0016CC 00:D6BC: E6 75     INC ram_0075
C - - - - - 0x0016CE 00:D6BE: D0 02     BNE bra_D6C2
- - - - - - 0x0016D0 00:D6C0: C6 75     DEC ram_0075
bra_D6C2:
C - - - - - 0x0016D2 00:D6C2: A0 00     LDY #con_D536_00
C - - - - - 0x0016D4 00:D6C4: 20 E5 D4  JSR sub_D4E5
C - - - - - 0x0016D7 00:D6C7: 90 04     BCC bra_D6CD
- - - - - - 0x0016D9 00:D6C9: A5 48     LDA ram_0048
- - - - - - 0x0016DB 00:D6CB: 85 75     STA ram_0075
bra_D6CD:
C - - - - - 0x0016DD 00:D6CD: A9 01     LDA #$01
C - - - - - 0x0016DF 00:D6CF: 8D 02 06  STA ram_0602
C - - - - - 0x0016E2 00:D6D2: 8D 03 06  STA ram_0603
C - - - - - 0x0016E5 00:D6D5: 8D 04 06  STA ram_0604
C - - - - - 0x0016E8 00:D6D8: A0 02     LDY #con_D536_02
C - - - - - 0x0016EA 00:D6DA: 20 E5 D4  JSR sub_D4E5
C - - - - - 0x0016ED 00:D6DD: 90 04     BCC bra_D6E3_not_overflow
- - - - - - 0x0016EF 00:D6DF: A9 99     LDA #$99
- - - - - - 0x0016F1 00:D6E1: 85 70     STA ram_lives_1
bra_D6E3_not_overflow:
C - - - - - 0x0016F3 00:D6E3: A0 0A     LDY #con_D640_0A
C - - - - - 0x0016F5 00:D6E5: 4C D9 D5  JMP loc_D5D9



sub_D6E8:
C - - - - - 0x0016F8 00:D6E8: A0 04     LDY #con_D536_04
C - - - - - 0x0016FA 00:D6EA: 20 E5 D4  JSR sub_D4E5
C - - - - - 0x0016FD 00:D6ED: E6 7A     INC ram_current_round
C - - - - - 0x0016FF 00:D6EF: A5 7A     LDA ram_current_round
C - - - - - 0x001701 00:D6F1: 29 0F     AND #$0F
C - - - - - 0x001703 00:D6F3: 85 7A     STA ram_current_round
C - - - - - 0x001705 00:D6F5: A5 7D     LDA ram_rounds_counter
C - - - - - 0x001707 00:D6F7: 18        CLC
C - - - - - 0x001708 00:D6F8: 69 01     ADC #$01
C - - - - - 0x00170A 00:D6FA: C9 20     CMP #$20
C - - - - - 0x00170C 00:D6FC: 90 02     BCC bra_D700_not_overflow
- - - - - - 0x00170E 00:D6FE: A9 1C     LDA #$1C
bra_D700_not_overflow:
C - - - - - 0x001710 00:D700: 85 7D     STA ram_rounds_counter
C - - - - - 0x001712 00:D702: 60        RTS



sub_D703:
C - - - - - 0x001713 00:D703: A0 00     LDY #$00
C - - - - - 0x001715 00:D705: 20 15 CC  JSR sub_CC15
C - - - - - 0x001718 00:D708: A0 08     LDY #con_D640_08
C - - - - - 0x00171A 00:D70A: 20 D9 D5  JSR sub_D5D9
C - - - - - 0x00171D 00:D70D: A0 0A     LDY #con_D640_0A
C - - - - - 0x00171F 00:D70F: 20 D9 D5  JSR sub_D5D9
C - - - - - 0x001722 00:D712: A0 0C     LDY #con_D640_0C
C - - - - - 0x001724 00:D714: 20 D9 D5  JSR sub_D5D9
C - - - - - 0x001727 00:D717: A0 00     LDY #con_D640_00
C - - - - - 0x001729 00:D719: 4C D9 D5  JMP loc_D5D9



sub_D71C:
C - - - - - 0x00172C 00:D71C: A5 42     LDA ram_demo_flag
C - - - - - 0x00172E 00:D71E: F0 15     BEQ bra_D735_demo
; if not demo
C - - - - - 0x001730 00:D720: A5 21     LDA ram_frame_counter
C - - - - - 0x001732 00:D722: 29 0F     AND #$0F
C - - - - - 0x001734 00:D724: D0 0E     BNE bra_D734_RTS
; each 16th frame
C - - - - - 0x001736 00:D726: A5 21     LDA ram_frame_counter
C - - - - - 0x001738 00:D728: 4A        LSR
C - - - - - 0x001739 00:D729: 4A        LSR
C - - - - - 0x00173A 00:D72A: 4A        LSR
C - - - - - 0x00173B 00:D72B: 29 02     AND #$02
C - - - - - 0x00173D 00:D72D: 05 41     ORA ram_player_index
C - - - - - 0x00173F 00:D72F: 0A        ASL
C - - - - - 0x001740 00:D730: A8        TAY
C - - - - - 0x001741 00:D731: 4C 7A D7  JMP loc_D77A
bra_D734_RTS:
C - - - - - 0x001744 00:D734: 60        RTS
bra_D735_demo:
sub_D735:
C - - - - - 0x001745 00:D735: A9 02     LDA #$02
C - - - - - 0x001747 00:D737: 05 41     ORA ram_player_index
C - - - - - 0x001749 00:D739: 0A        ASL
C - - - - - 0x00174A 00:D73A: A8        TAY
C - - - - - 0x00174B 00:D73B: 4C 7A D7  JMP loc_D77A



sub_D73E:
C - - - - - 0x00174E 00:D73E: A5 24     LDA ram_0024
C - - - - - 0x001750 00:D740: 29 03     AND #$03
C - - - - - 0x001752 00:D742: C9 01     CMP #$01
C - - - - - 0x001754 00:D744: D0 0A     BNE bra_D750
C - - - - - 0x001756 00:D746: A9 F0     LDA #$F0
C - - - - - 0x001758 00:D748: 85 0F     STA ram_000F
C - - - - - 0x00175A 00:D74A: A5 4A     LDA ram_004A
C - - - - - 0x00175C 00:D74C: 49 01     EOR #$01
C - - - - - 0x00175E 00:D74E: 85 4A     STA ram_004A
bra_D750:
C - - - - - 0x001760 00:D750: A5 4A     LDA ram_004A
C - - - - - 0x001762 00:D752: 0A        ASL
C - - - - - 0x001763 00:D753: 69 08     ADC #$08
C - - - - - 0x001765 00:D755: 48        PHA
C - - - - - 0x001766 00:D756: A8        TAY
C - - - - - 0x001767 00:D757: 20 7A D7  JSR sub_D77A
C - - - - - 0x00176A 00:D75A: 68        PLA
C - - - - - 0x00176B 00:D75B: 18        CLC
C - - - - - 0x00176C 00:D75C: 69 04     ADC #$04
C - - - - - 0x00176E 00:D75E: A8        TAY
C - - - - - 0x00176F 00:D75F: 4C 7A D7  JMP loc_D77A


; bzk garbage
- - - - - - 0x001772 00:D762: A5 22     LDA ram_input_AB
- - - - - - 0x001774 00:D764: 29 03     AND #$03
- - - - - - 0x001776 00:D766: C9 01     CMP #$01
- - - - - - 0x001778 00:D768: D0 0A     BNE bra_D774
- - - - - - 0x00177A 00:D76A: A9 F0     LDA #$F0
- - - - - - 0x00177C 00:D76C: 85 0F     STA ram_000F
- - - - - - 0x00177E 00:D76E: A5 2E     LDA ram_002E
- - - - - - 0x001780 00:D770: 49 01     EOR #$01
- - - - - - 0x001782 00:D772: 85 2E     STA ram_002E
bra_D774:
- - - - - - 0x001784 00:D774: A5 2E     LDA ram_002E
- - - - - - 0x001786 00:D776: 0A        ASL
- - - - - - 0x001787 00:D777: 69 10     ADC #$10
- - - - - - 0x001789 00:D779: A8        TAY



loc_D77A:
sub_D77A:
C D 2 - - - 0x00178A 00:D77A: B9 AD D7  LDA tbl_D7AD,Y
C - - - - - 0x00178D 00:D77D: 85 10     STA ram_0010
C - - - - - 0x00178F 00:D77F: B9 AE D7  LDA tbl_D7AD + $01,Y
C - - - - - 0x001792 00:D782: 85 11     STA ram_0011
C - - - - - 0x001794 00:D784: A0 00     LDY #$00
C - - - - - 0x001796 00:D786: A6 2A     LDX ram_002A
C - - - - - 0x001798 00:D788: B1 10     LDA (ram_0010),Y
C - - - - - 0x00179A 00:D78A: C8        INY
C - - - - - 0x00179B 00:D78B: 9D 00 05  STA ram_0500,X
C - - - - - 0x00179E 00:D78E: E8        INX
C - - - - - 0x00179F 00:D78F: B1 10     LDA (ram_0010),Y
C - - - - - 0x0017A1 00:D791: C8        INY
C - - - - - 0x0017A2 00:D792: 9D 00 05  STA ram_0500,X
C - - - - - 0x0017A5 00:D795: E8        INX
C - - - - - 0x0017A6 00:D796: B1 10     LDA (ram_0010),Y
C - - - - - 0x0017A8 00:D798: C8        INY
C - - - - - 0x0017A9 00:D799: 9D 00 05  STA ram_0500,X
C - - - - - 0x0017AC 00:D79C: 85 12     STA ram_0012
C - - - - - 0x0017AE 00:D79E: E8        INX
bra_D79F_loop:
C - - - - - 0x0017AF 00:D79F: B1 10     LDA (ram_0010),Y
C - - - - - 0x0017B1 00:D7A1: C8        INY
C - - - - - 0x0017B2 00:D7A2: 9D 00 05  STA ram_0500,X
C - - - - - 0x0017B5 00:D7A5: E8        INX
C - - - - - 0x0017B6 00:D7A6: C6 12     DEC ram_0012
C - - - - - 0x0017B8 00:D7A8: D0 F5     BNE bra_D79F_loop
C - - - - - 0x0017BA 00:D7AA: 86 2A     STX ram_002A
C - - - - - 0x0017BC 00:D7AC: 60        RTS



tbl_D7AD:
- D 2 - - - 0x0017BD 00:D7AD: C1 D7     .word _off001_D7C1_00
- D 2 - - - 0x0017BF 00:D7AF: C7 D7     .word _off001_D7C7_01
- D 2 - - - 0x0017C1 00:D7B1: CD D7     .word _off001_D7CD_02
- D 2 - - - 0x0017C3 00:D7B3: D3 D7     .word _off001_D7D3_03
- D 2 - - - 0x0017C5 00:D7B5: D9 D7     .word _off001_D7D9_04
- D 2 - - - 0x0017C7 00:D7B7: E1 D7     .word _off001_D7E1_05
- D 2 - - - 0x0017C9 00:D7B9: DD D7     .word _off001_D7DD_06
- D 2 - - - 0x0017CB 00:D7BB: E5 D7     .word _off001_D7E5_07
- - - - - - 0x0017CD 00:D7BD: E9 D7     .word _off001_D7E9_08
- - - - - - 0x0017CF 00:D7BF: ED D7     .word _off001_D7ED_09



_off001_D7C1_00:
- D 2 - I - 0x0017D1 00:D7C1: 45 20     .word $2045
- D 2 - I - 0x0017D3 00:D7C3: 03        .byte $03   ; counter
- D 2 - I - 0x0017D4 00:D7C4: 00        .byte $00, $00, $00   ; 



_off001_D7C7_01:
- D 2 - I - 0x0017D7 00:D7C7: 45 20     .word $2045
- D 2 - I - 0x0017D9 00:D7C9: 03        .byte $03   ; counter
- D 2 - I - 0x0017DA 00:D7CA: 00        .byte $00, $00, $00   ; 



_off001_D7CD_02:
- D 2 - I - 0x0017DD 00:D7CD: 45 20     .word $2045
- D 2 - I - 0x0017DF 00:D7CF: 03        .byte $03   ; counter
- D 2 - I - 0x0017E0 00:D7D0: A8        .byte $A8, $AA, $AB   ; 



_off001_D7D3_03:
- D 2 - I - 0x0017E3 00:D7D3: 45 20     .word $2045
- D 2 - I - 0x0017E5 00:D7D5: 03        .byte $03   ; counter
- D 2 - I - 0x0017E6 00:D7D6: A9        .byte $A9, $AA, $AB   ; 



_off001_D7D9_04:
- D 2 - I - 0x0017E9 00:D7D9: E9 21     .word $21E9
- D 2 - I - 0x0017EB 00:D7DB: 01        .byte $01   ; counter
- D 2 - I - 0x0017EC 00:D7DC: AF        .byte $AF   ; 



_off001_D7DD_06:
- D 2 - I - 0x0017ED 00:D7DD: 29 22     .word $2229
- D 2 - I - 0x0017EF 00:D7DF: 01        .byte $01   ; counter
- D 2 - I - 0x0017F0 00:D7E0: 00        .byte $00   ; 



_off001_D7E1_05:
- D 2 - I - 0x0017F1 00:D7E1: E9 21     .word $21E9
- D 2 - I - 0x0017F3 00:D7E3: 01        .byte $01   ; counter
- D 2 - I - 0x0017F4 00:D7E4: 00        .byte $00   ; 



_off001_D7E5_07:
- D 2 - I - 0x0017F5 00:D7E5: 29 22     .word $2229
- D 2 - I - 0x0017F7 00:D7E7: 01        .byte $01   ; counter
- D 2 - I - 0x0017F8 00:D7E8: AF        .byte $AF   ; 



_off001_D7E9_08:
- - - - - - 0x0017F9 00:D7E9: AC 21     .word $21AC
- - - - - - 0x0017FB 00:D7EB: 01        .byte $01   ; counter
- - - - - - 0x0017FC 00:D7EC: 00        .byte $00   ; 



_off001_D7ED_09:
- - - - - - 0x0017FD 00:D7ED: AC 21     .word $21AC
- - - - - - 0x0017FF 00:D7EF: 01        .byte $01   ; counter
- - - - - - 0x001800 00:D7F0: 18        .byte $18   ; 



sub_D7F1:
; bzk optimize, code similar to 0x00181B
C - - - - - 0x001801 00:D7F1: 20 25 D8  JSR sub_D825
bra_D7F4_loop:
C - - - - - 0x001804 00:D7F4: B9 38 D8  LDA tbl_D838,Y
C - - - - - 0x001807 00:D7F7: 91 1E     STA (ram_001E),Y
C - - - - - 0x001809 00:D7F9: C8        INY
C - - - - - 0x00180A 00:D7FA: C0 07     CPY #$07
C - - - - - 0x00180C 00:D7FC: D0 F6     BNE bra_D7F4_loop
C - - - - - 0x00180E 00:D7FE: A9 4B     LDA #$4B
C - - - - - 0x001810 00:D800: A0 08     LDY #$08
C - - - - - 0x001812 00:D802: 91 1E     STA (ram_001E),Y
C - - - - - 0x001814 00:D804: A9 00     LDA #$00
C - - - - - 0x001816 00:D806: A0 0F     LDY #$0F
C - - - - - 0x001818 00:D808: 91 1E     STA (ram_001E),Y
C - - - - - 0x00181A 00:D80A: 60        RTS



sub_D80B:
; bzk optimize, code similar to 0x001801
C - - - - - 0x00181B 00:D80B: 20 25 D8  JSR sub_D825
bra_D80E_loop:
C - - - - - 0x00181E 00:D80E: B9 3F D8  LDA tbl_D83F,Y
C - - - - - 0x001821 00:D811: 91 1E     STA (ram_001E),Y
C - - - - - 0x001823 00:D813: C8        INY
C - - - - - 0x001824 00:D814: C0 07     CPY #$07
C - - - - - 0x001826 00:D816: D0 F6     BNE bra_D80E_loop
C - - - - - 0x001828 00:D818: A9 00     LDA #$00
C - - - - - 0x00182A 00:D81A: A0 08     LDY #$08
C - - - - - 0x00182C 00:D81C: 91 1E     STA (ram_001E),Y
C - - - - - 0x00182E 00:D81E: A9 02     LDA #$02
C - - - - - 0x001830 00:D820: A0 0F     LDY #$0F
C - - - - - 0x001832 00:D822: 91 1E     STA (ram_001E),Y
C - - - - - 0x001834 00:D824: 60        RTS



sub_D825:
C - - - - - 0x001835 00:D825: A9 00     LDA #$00
C - - - - - 0x001837 00:D827: 85 28     STA ram_cam_pos_X_lo
C - - - - - 0x001839 00:D829: A9 1C     LDA #$1C
C - - - - - 0x00183B 00:D82B: 85 29     STA ram_cam_pos_X_hi
C - - - - - 0x00183D 00:D82D: A9 00     LDA #< ram_obj_data_1
C - - - - - 0x00183F 00:D82F: 85 1E     STA ram_001E
C - - - - - 0x001841 00:D831: A9 04     LDA #> ram_obj_data_1
C - - - - - 0x001843 00:D833: 85 1F     STA ram_001F
C - - - - - 0x001845 00:D835: A0 00     LDY #$00
C - - - - - 0x001847 00:D837: 60        RTS



tbl_D838:
- D 2 - - - 0x001848 00:D838: 00        .byte $00   ; 00 con_0400_00
- D 2 - - - 0x001849 00:D839: 34        .byte $34   ; 01 con_0400_01
- D 2 - - - 0x00184A 00:D83A: 00        .byte $00   ; 02 con_0400_02
- D 2 - - - 0x00184B 00:D83B: 1A        .byte $1A   ; 03 con_0400_03
- D 2 - - - 0x00184C 00:D83C: 02        .byte $02   ; 04 con_0400_04
- D 2 - - - 0x00184D 00:D83D: 00        .byte $00   ; 05 con_0400_05
- D 2 - - - 0x00184E 00:D83E: FF        .byte $FF   ; 06 con_0400_06



tbl_D83F:
- D 2 - - - 0x00184F 00:D83F: 00        .byte $00   ; 00 con_0400_00
- D 2 - - - 0x001850 00:D840: 35        .byte $35   ; 01 con_0400_01
- D 2 - - - 0x001851 00:D841: 00        .byte $00   ; 02 con_0400_02
- D 2 - - - 0x001852 00:D842: 0A        .byte $0A   ; 03 con_0400_03
- D 2 - - - 0x001853 00:D843: 06        .byte $06   ; 04 con_0400_04
- D 2 - - - 0x001854 00:D844: 00        .byte $00   ; 05 con_0400_05
- D 2 - - - 0x001855 00:D845: FF        .byte $FF   ; 06 con_0400_06



sub_D846:
C - - - - - 0x001856 00:D846: A9 30     LDA #$30
C - - - - - 0x001858 00:D848: 85 4C     STA ram_obj_index
C - - - - - 0x00185A 00:D84A: A9 00     LDA #$00
C - - - - - 0x00185C 00:D84C: 85 4D     STA ram_ai_delay_timer
C - - - - - 0x00185E 00:D84E: A9 10     LDA #$10
C - - - - - 0x001860 00:D850: 85 4E     STA ram_ai_max_delay
C - - - - - 0x001862 00:D852: A9 30     LDA #< ram_0430
C - - - - - 0x001864 00:D854: 85 1E     STA ram_001E
C - - - - - 0x001866 00:D856: A9 04     LDA #> ram_0430
C - - - - - 0x001868 00:D858: 85 1F     STA ram_001F
C - - - - - 0x00186A 00:D85A: A2 00     LDX #$00
bra_D85C_loop:
C - - - - - 0x00186C 00:D85C: A9 03     LDA #$03
C - - - - - 0x00186E 00:D85E: 20 94 D8  JSR sub_D894
C - - - - - 0x001871 00:D861: A9 01     LDA #$01
C - - - - - 0x001873 00:D863: A0 06     LDY #$06
C - - - - - 0x001875 00:D865: 91 1E     STA (ram_001E),Y
C - - - - - 0x001877 00:D867: 8A        TXA
C - - - - - 0x001878 00:D868: 18        CLC
C - - - - - 0x001879 00:D869: 69 08     ADC #$08
C - - - - - 0x00187B 00:D86B: AA        TAX
C - - - - - 0x00187C 00:D86C: A5 1E     LDA ram_001E
C - - - - - 0x00187E 00:D86E: 18        CLC
C - - - - - 0x00187F 00:D86F: 69 10     ADC #$10
C - - - - - 0x001881 00:D871: 85 1E     STA ram_001E
C - - - - - 0x001883 00:D873: C5 68     CMP ram_0068
C - - - - - 0x001885 00:D875: D0 E5     BNE bra_D85C_loop
C - - - - - 0x001887 00:D877: A9 00     LDA #$00
C - - - - - 0x001889 00:D879: 85 35     STA ram_0035
C - - - - - 0x00188B 00:D87B: A9 09     LDA #$09
C - - - - - 0x00188D 00:D87D: 85 36     STA ram_0036
C - - - - - 0x00188F 00:D87F: A9 04     LDA #$04
C - - - - - 0x001891 00:D881: 85 37     STA ram_0037
C - - - - - 0x001893 00:D883: A9 20     LDA #< ram_0420
C - - - - - 0x001895 00:D885: 85 1E     STA ram_001E
C - - - - - 0x001897 00:D887: A9 04     LDA #> ram_0420
C - - - - - 0x001899 00:D889: 85 1F     STA ram_001F
C - - - - - 0x00189B 00:D88B: A9 FF     LDA #$FF
C - - - - - 0x00189D 00:D88D: 8D 26 04  STA ram_0426
C - - - - - 0x0018A0 00:D890: A2 00     LDX #$00
C - - - - - 0x0018A2 00:D892: A9 02     LDA #$02
sub_D894:
C - - - - - 0x0018A4 00:D894: A0 05     LDY #$05
C - - - - - 0x0018A6 00:D896: 91 1E     STA (ram_001E),Y
C - - - - - 0x0018A8 00:D898: 8A        TXA
C - - - - - 0x0018A9 00:D899: 0A        ASL
C - - - - - 0x0018AA 00:D89A: 0A        ASL
C - - - - - 0x0018AB 00:D89B: 69 20     ADC #$20
C - - - - - 0x0018AD 00:D89D: A0 00     LDY #$00
C - - - - - 0x0018AF 00:D89F: 91 1E     STA (ram_001E),Y
C - - - - - 0x0018B1 00:D8A1: C8        INY
C - - - - - 0x0018B2 00:D8A2: BD 64 02  LDA ram_0264,X
C - - - - - 0x0018B5 00:D8A5: 91 1E     STA (ram_001E),Y
C - - - - - 0x0018B7 00:D8A7: BD 65 02  LDA ram_0265,X
C - - - - - 0x0018BA 00:D8AA: A0 03     LDY #$03
C - - - - - 0x0018BC 00:D8AC: 91 1E     STA (ram_001E),Y
C - - - - - 0x0018BE 00:D8AE: C8        INY
C - - - - - 0x0018BF 00:D8AF: A9 02     LDA #$02
C - - - - - 0x0018C1 00:D8B1: 91 1E     STA (ram_001E),Y
C - - - - - 0x0018C3 00:D8B3: A9 00     LDA #$00
C - - - - - 0x0018C5 00:D8B5: A0 0F     LDY #$0F
C - - - - - 0x0018C7 00:D8B7: 91 1E     STA (ram_001E),Y
C - - - - - 0x0018C9 00:D8B9: A9 4B     LDA #$4B
C - - - - - 0x0018CB 00:D8BB: A0 08     LDY #$08
C - - - - - 0x0018CD 00:D8BD: 91 1E     STA (ram_001E),Y
C - - - - - 0x0018CF 00:D8BF: 60        RTS



sub_D8C0:
C - - - - - 0x0018D0 00:D8C0: A2 00     LDX #$00
bra_D8C2_loop:
C - - - - - 0x0018D2 00:D8C2: BD D3 D8  LDA tbl_D8D3,X
C - - - - - 0x0018D5 00:D8C5: 9D 10 04  STA ram_0410,X
C - - - - - 0x0018D8 00:D8C8: E8        INX
C - - - - - 0x0018D9 00:D8C9: E0 05     CPX #$05
C - - - - - 0x0018DB 00:D8CB: D0 F5     BNE bra_D8C2_loop
C - - - - - 0x0018DD 00:D8CD: A9 0E     LDA #$0E
C - - - - - 0x0018DF 00:D8CF: 8D 1F 04  STA ram_041F
C - - - - - 0x0018E2 00:D8D2: 60        RTS



tbl_D8D3:
- D 2 - - - 0x0018E3 00:D8D3: 00        .byte $00   ; 00
- D 2 - - - 0x0018E4 00:D8D4: 05        .byte $05   ; 01
- D 2 - - - 0x0018E5 00:D8D5: 00        .byte $00   ; 02
- D 2 - - - 0x0018E6 00:D8D6: 18        .byte $18   ; 03
- D 2 - - - 0x0018E7 00:D8D7: 18        .byte $18   ; 04



sub_D8D8:
C - - - - - 0x0018E8 00:D8D8: A9 00     LDA #< ram_obj_data_1
C - - - - - 0x0018EA 00:D8DA: 85 1E     STA ram_001E
C - - - - - 0x0018EC 00:D8DC: A9 04     LDA #> ram_obj_data_1
C - - - - - 0x0018EE 00:D8DE: 85 1F     STA ram_001F
bra_D8E0_loop:
C - - - - - 0x0018F0 00:D8E0: 20 39 D9  JSR sub_D939
C - - - - - 0x0018F3 00:D8E3: 20 2C DA  JSR sub_DA2C
C - - - - - 0x0018F6 00:D8E6: 20 05 C3  JSR sub_C305
C - - - - - 0x0018F9 00:D8E9: A5 1E     LDA ram_001E
C - - - - - 0x0018FB 00:D8EB: 18        CLC
C - - - - - 0x0018FC 00:D8EC: 69 10     ADC #$10
C - - - - - 0x0018FE 00:D8EE: 85 1E     STA ram_001E
C - - - - - 0x001900 00:D8F0: C9 90     CMP #$90
C - - - - - 0x001902 00:D8F2: D0 EC     BNE bra_D8E0_loop
C - - - - - 0x001904 00:D8F4: E6 4D     INC ram_ai_delay_timer
C - - - - - 0x001906 00:D8F6: A5 4D     LDA ram_ai_delay_timer
C - - - - - 0x001908 00:D8F8: C5 4E     CMP ram_ai_max_delay
C - - - - - 0x00190A 00:D8FA: 90 3C     BCC bra_D938_RTS
C - - - - - 0x00190C 00:D8FC: A9 00     LDA #$00
C - - - - - 0x00190E 00:D8FE: 85 4D     STA ram_ai_delay_timer
C - - - - - 0x001910 00:D900: A6 4C     LDX ram_obj_index
C - - - - - 0x001912 00:D902: BD 0F 04  LDA ram_040F,X
C - - - - - 0x001915 00:D905: C9 1A     CMP #$1A
C - - - - - 0x001917 00:D907: D0 22     BNE bra_D92B
C - - - - - 0x001919 00:D909: BD 07 04  LDA ram_0407,X
C - - - - - 0x00191C 00:D90C: D0 1D     BNE bra_D92B
C - - - - - 0x00191E 00:D90E: 9D 00 04  STA ram_obj_data_1,X
C - - - - - 0x001921 00:D911: 9D 02 04  STA ram_0402,X
C - - - - - 0x001924 00:D914: A9 1D     LDA #$1D
C - - - - - 0x001926 00:D916: 9D 01 04  STA ram_0401,X
C - - - - - 0x001929 00:D919: A9 06     LDA #$06
C - - - - - 0x00192B 00:D91B: 9D 03 04  STA ram_0403,X
C - - - - - 0x00192E 00:D91E: 9D 04 04  STA ram_0404,X
C - - - - - 0x001931 00:D921: A9 1C     LDA #$1C
C - - - - - 0x001933 00:D923: 9D 0F 04  STA ram_040F,X
C - - - - - 0x001936 00:D926: A9 00     LDA #$00
C - - - - - 0x001938 00:D928: 9D 08 04  STA ram_0408,X
bra_D92B:
C - - - - - 0x00193B 00:D92B: 8A        TXA
C - - - - - 0x00193C 00:D92C: 18        CLC
C - - - - - 0x00193D 00:D92D: 69 10     ADC #$10
C - - - - - 0x00193F 00:D92F: AA        TAX
C - - - - - 0x001940 00:D930: E0 90     CPX #$90
C - - - - - 0x001942 00:D932: D0 02     BNE bra_D936
C - - - - - 0x001944 00:D934: A2 10     LDX #$10
bra_D936:
C - - - - - 0x001946 00:D936: 86 4C     STX ram_obj_index
bra_D938_RTS:
C - - - - - 0x001948 00:D938: 60        RTS



sub_D939:
C - - - - - 0x001949 00:D939: A0 0D     LDY #$0D
C - - - - - 0x00194B 00:D93B: A5 1E     LDA ram_001E
C - - - - - 0x00194D 00:D93D: F0 4B     BEQ bra_D98A
C - - - - - 0x00194F 00:D93F: A9 00     LDA #$00
C - - - - - 0x001951 00:D941: 91 1E     STA (ram_001E),Y
C - - - - - 0x001953 00:D943: A5 1E     LDA ram_001E
C - - - - - 0x001955 00:D945: C9 20     CMP #$20
C - - - - - 0x001957 00:D947: 90 02     BCC bra_D94B
C - - - - - 0x001959 00:D949: F0 4D     BEQ bra_D998
bra_D94B:
C - - - - - 0x00195B 00:D94B: A0 0F     LDY #$0F
C - - - - - 0x00195D 00:D94D: B1 1E     LDA (ram_001E),Y
C - - - - - 0x00195F 00:D94F: C9 02     CMP #$02
C - - - - - 0x001961 00:D951: F0 44     BEQ bra_D997_RTS
C - - - - - 0x001963 00:D953: C9 0C     CMP #$0C
C - - - - - 0x001965 00:D955: D0 40     BNE bra_D997_RTS
C - - - - - 0x001967 00:D957: AD 0F 04  LDA ram_040F
C - - - - - 0x00196A 00:D95A: C9 0C     CMP #$0C
C - - - - - 0x00196C 00:D95C: D0 12     BNE bra_D970
C - - - - - 0x00196E 00:D95E: A0 00     LDY #$00
C - - - - - 0x001970 00:D960: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001972 00:D962: 38        SEC
C - - - - - 0x001973 00:D963: ED 00 04  SBC ram_obj_data_1
C - - - - - 0x001976 00:D966: C8        INY
C - - - - - 0x001977 00:D967: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001979 00:D969: ED 01 04  SBC ram_0401
C - - - - - 0x00197C 00:D96C: C9 02     CMP #$02
C - - - - - 0x00197E 00:D96E: 90 27     BCC bra_D997_RTS
bra_D970:
C - - - - - 0x001980 00:D970: A0 0A     LDY #$0A
C - - - - - 0x001982 00:D972: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001984 00:D974: 29 FC     AND #$FC
C - - - - - 0x001986 00:D976: 09 01     ORA #$01
C - - - - - 0x001988 00:D978: A0 03     LDY #$03
C - - - - - 0x00198A 00:D97A: D1 1E     CMP (ram_001E),Y
C - - - - - 0x00198C 00:D97C: D0 19     BNE bra_D997_RTS
C - - - - - 0x00198E 00:D97E: A0 0A     LDY #$0A
C - - - - - 0x001990 00:D980: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001992 00:D982: 4A        LSR
C - - - - - 0x001993 00:D983: A0 0D     LDY #$0D
C - - - - - 0x001995 00:D985: B0 2E     BCS bra_D9B5
C - - - - - 0x001997 00:D987: 4C BC D9  JMP loc_D9BC
bra_D98A:
C - - - - - 0x00199A 00:D98A: A5 42     LDA ram_demo_flag
C - - - - - 0x00199C 00:D98C: F0 39     BEQ bra_D9C7_demo
; if not demo
C - - - - - 0x00199E 00:D98E: A5 26     LDA ram_input_dpad
C - - - - - 0x0019A0 00:D990: 91 1E     STA (ram_001E),Y
C - - - - - 0x0019A2 00:D992: A5 22     LDA ram_input_AB
C - - - - - 0x0019A4 00:D994: C8        INY
C - - - - - 0x0019A5 00:D995: 91 1E     STA (ram_001E),Y
bra_D997_RTS:
C - - - - - 0x0019A7 00:D997: 60        RTS
bra_D998:
C - - - - - 0x0019A8 00:D998: AD 2F 04  LDA ram_042F
C - - - - - 0x0019AB 00:D99B: C9 02     CMP #$02
C - - - - - 0x0019AD 00:D99D: F0 F8     BEQ bra_D997_RTS
C - - - - - 0x0019AF 00:D99F: C9 0C     CMP #$0C
C - - - - - 0x0019B1 00:D9A1: D0 F4     BNE bra_D997_RTS
C - - - - - 0x0019B3 00:D9A3: A5 36     LDA ram_0036
C - - - - - 0x0019B5 00:D9A5: CD 23 04  CMP ram_0423
C - - - - - 0x0019B8 00:D9A8: 90 ED     BCC bra_D997_RTS
C - - - - - 0x0019BA 00:D9AA: AD 21 04  LDA ram_0421
C - - - - - 0x0019BD 00:D9AD: C9 06     CMP #$06
C - - - - - 0x0019BF 00:D9AF: 90 0B     BCC bra_D9BC
C - - - - - 0x0019C1 00:D9B1: C9 34     CMP #$34
C - - - - - 0x0019C3 00:D9B3: 90 0C     BCC bra_D9C1
bra_D9B5:
C - - - - - 0x0019C5 00:D9B5: A9 FF     LDA #$FF
C - - - - - 0x0019C7 00:D9B7: 91 1E     STA (ram_001E),Y
C - - - - - 0x0019C9 00:D9B9: 60        RTS
bra_D9BA:
C - - - - - 0x0019CA 00:D9BA: 30 F9     BMI bra_D9B5
bra_D9BC:
loc_D9BC:
C D 2 - - - 0x0019CC 00:D9BC: A9 01     LDA #$01
C - - - - - 0x0019CE 00:D9BE: 91 1E     STA (ram_001E),Y
C - - - - - 0x0019D0 00:D9C0: 60        RTS
bra_D9C1:
C - - - - - 0x0019D1 00:D9C1: AD 26 04  LDA ram_0426
C - - - - - 0x0019D4 00:D9C4: 91 1E     STA (ram_001E),Y
C - - - - - 0x0019D6 00:D9C6: 60        RTS
bra_D9C7_demo:
C - - - - - 0x0019D7 00:D9C7: 0E 0E 04  ASL ram_040E
C - - - - - 0x0019DA 00:D9CA: A5 3C     LDA ram_003C
C - - - - - 0x0019DC 00:D9CC: F0 03     BEQ bra_D9D1
C - - - - - 0x0019DE 00:D9CE: C6 3C     DEC ram_003C
C - - - - - 0x0019E0 00:D9D0: 60        RTS
bra_D9D1:
C - - - - - 0x0019E1 00:D9D1: A6 3D     LDX ram_003D
C - - - - - 0x0019E3 00:D9D3: BD E1 FF  LDA tbl_FFE1,X
C - - - - - 0x0019E6 00:D9D6: F0 0F     BEQ bra_D9E7    ; bzk optimize, there is no 00 inside the table
C - - - - - 0x0019E8 00:D9D8: 0A        ASL
C - - - - - 0x0019E9 00:D9D9: 0A        ASL
C - - - - - 0x0019EA 00:D9DA: 85 3C     STA ram_003C
C - - - - - 0x0019EC 00:D9DC: BD E1 FF  LDA tbl_FFE1,X
C - - - - - 0x0019EF 00:D9DF: E8        INX
C - - - - - 0x0019F0 00:D9E0: 86 3D     STX ram_003D
C - - - - - 0x0019F2 00:D9E2: 0A        ASL
C - - - - - 0x0019F3 00:D9E3: B0 D5     BCS bra_D9BA
C - - - - - 0x0019F5 00:D9E5: 30 05     BMI bra_D9EC
bra_D9E7:
C - - - - - 0x0019F7 00:D9E7: A9 00     LDA #$00
C - - - - - 0x0019F9 00:D9E9: 91 1E     STA (ram_001E),Y
C - - - - - 0x0019FB 00:D9EB: 60        RTS
bra_D9EC:
C - - - - - 0x0019FC 00:D9EC: EE 0E 04  INC ram_040E
C - - - - - 0x0019FF 00:D9EF: 60        RTS



loc_D9F0:
sub_D9F0:
C D 2 - - - 0x001A00 00:D9F0: AD 21 04  LDA ram_0421
C - - - - - 0x001A03 00:D9F3: 38        SEC
C - - - - - 0x001A04 00:D9F4: E9 06     SBC #$06
C - - - - - 0x001A06 00:D9F6: C9 2E     CMP #$2E
C - - - - - 0x001A08 00:D9F8: B0 08     BCS bra_DA02
C - - - - - 0x001A0A 00:D9FA: A5 35     LDA ram_0035
C - - - - - 0x001A0C 00:D9FC: F0 20     BEQ bra_DA1E_RTS
C - - - - - 0x001A0E 00:D9FE: A9 00     LDA #$00
C - - - - - 0x001A10 00:DA00: 85 35     STA ram_0035
bra_DA02:
sub_DA02:
C - - - - - 0x001A12 00:DA02: A5 36     LDA ram_0036
C - - - - - 0x001A14 00:DA04: C9 09     CMP #$09
C - - - - - 0x001A16 00:DA06: D0 07     BNE bra_DA0F
C - - - - - 0x001A18 00:DA08: A9 04     LDA #$04
C - - - - - 0x001A1A 00:DA0A: 85 37     STA ram_0037
C - - - - - 0x001A1C 00:DA0C: 4C 17 DA  JMP loc_DA17
bra_DA0F:
C - - - - - 0x001A1F 00:DA0F: C9 19     CMP #$19
C - - - - - 0x001A21 00:DA11: D0 04     BNE bra_DA17
C - - - - - 0x001A23 00:DA13: A9 FC     LDA #$FC
C - - - - - 0x001A25 00:DA15: 85 37     STA ram_0037
bra_DA17:
loc_DA17:
C D 2 - - - 0x001A27 00:DA17: A5 36     LDA ram_0036
C - - - - - 0x001A29 00:DA19: 18        CLC
C - - - - - 0x001A2A 00:DA1A: 65 37     ADC ram_0037
C - - - - - 0x001A2C 00:DA1C: 85 36     STA ram_0036
bra_DA1E_RTS:
C - - - - - 0x001A2E 00:DA1E: 60        RTS



bra_DA1F_bonus_round:
C - - - - - 0x001A2F 00:DA1F: BD 7A E1  LDA tbl_E17A,X
C - - - - - 0x001A32 00:DA22: 85 1C     STA ram_001C
C - - - - - 0x001A34 00:DA24: BD 7B E1  LDA tbl_E17A + $01,X
C - - - - - 0x001A37 00:DA27: 85 1D     STA ram_001D
C - - - - - 0x001A39 00:DA29: 6C 1C 00  JMP (ram_001C)



sub_DA2C:
C - - - - - 0x001A3C 00:DA2C: A0 0F     LDY #$0F
C - - - - - 0x001A3E 00:DA2E: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001A40 00:DA30: AA        TAX
C - - - - - 0x001A41 00:DA31: A5 7C     LDA ram_bonus_round
C - - - - - 0x001A43 00:DA33: D0 EA     BNE bra_DA1F_bonus_round
C - - - - - 0x001A45 00:DA35: BD 42 DA  LDA tbl_DA42,X
C - - - - - 0x001A48 00:DA38: 85 1C     STA ram_001C
C - - - - - 0x001A4A 00:DA3A: BD 43 DA  LDA tbl_DA42 + $01,X
C - - - - - 0x001A4D 00:DA3D: 85 1D     STA ram_001D
C - - - - - 0x001A4F 00:DA3F: 6C 1C 00  JMP (ram_001C)



tbl_DA42:
- D 2 - - - 0x001A52 00:DA42: 4F C1     .word ofs_001_C14F_00_RTS
- D 2 - - - 0x001A54 00:DA44: 70 DA     .word ofs_001_DA70_01
- D 2 - - - 0x001A56 00:DA46: C7 DA     .word ofs_001_DAC7_02
- D 2 - - - 0x001A58 00:DA48: 94 DB     .word ofs_001_DB94_03
- D 2 - - - 0x001A5A 00:DA4A: 45 DB     .word ofs_001_DB45_04
- D 2 - - - 0x001A5C 00:DA4C: 02 DC     .word ofs_001_DC02_05
- D 2 - - - 0x001A5E 00:DA4E: 5C DC     .word ofs_001_DC5C_06
- D 2 - - - 0x001A60 00:DA50: FE DC     .word ofs_001_DCFE_07
- D 2 - - - 0x001A62 00:DA52: 62 DD     .word ofs_001_DD62_08
- D 2 - - - 0x001A64 00:DA54: A8 DD     .word ofs_001_DDA8_09
- D 2 - - - 0x001A66 00:DA56: C6 DD     .word ofs_001_DDC6_0A
- D 2 - - - 0x001A68 00:DA58: 4F C1     .word ofs_001_C14F_0B_RTS
- D 2 - - - 0x001A6A 00:DA5A: 4F C1     .word ofs_001_C14F_0C_RTS
- D 2 - - - 0x001A6C 00:DA5C: D4 DD     .word ofs_001_DDD4_0D
- D 2 - - - 0x001A6E 00:DA5E: E0 DD     .word ofs_001_DDE0_0E
- D 2 - - - 0x001A70 00:DA60: 2D DE     .word ofs_001_DE2D_0F
- D 2 - - - 0x001A72 00:DA62: 61 DE     .word ofs_001_DE61_10
- D 2 - - - 0x001A74 00:DA64: 37 DB     .word ofs_001_DB37_11
- D 2 - - - 0x001A76 00:DA66: 25 DE     .word ofs_001_DE25_12
- D 2 - - - 0x001A78 00:DA68: 7A DE     .word ofs_001_DE7A_13
- D 2 - - - 0x001A7A 00:DA6A: 98 DE     .word ofs_001_DE98_14
- D 2 - - - 0x001A7C 00:DA6C: 55 DB     .word ofs_001_DB55_15
- D 2 - - - 0x001A7E 00:DA6E: 7B DB     .word ofs_001_DB7B_16



ofs_001_DA70_01:
C - - J - - 0x001A80 00:DA70: A5 1E     LDA ram_001E
C - - - - - 0x001A82 00:DA72: C9 20     CMP #$20
C - - - - - 0x001A84 00:DA74: D0 08     BNE bra_DA7E
C - - - - - 0x001A86 00:DA76: AD 2A 04  LDA ram_042A
C - - - - - 0x001A89 00:DA79: F0 03     BEQ bra_DA7E
C - - - - - 0x001A8B 00:DA7B: CE 2A 04  DEC ram_042A
bra_DA7E:
C - - - - - 0x001A8E 00:DA7E: 20 B7 E0  JSR sub_E0B7
C - - - - - 0x001A91 00:DA81: F0 55     BEQ bra_DAD8
C - - - - - 0x001A93 00:DA83: 20 90 EA  JSR sub_EA90
C - - - - - 0x001A96 00:DA86: 20 B1 F0  JSR sub_F0B1
C - - - - - 0x001A99 00:DA89: 20 E7 F0  JSR sub_F0E7
C - - - - - 0x001A9C 00:DA8C: D0 03     BNE bra_DA91
C - - - - - 0x001A9E 00:DA8E: 4C 83 DB  JMP loc_DB83
bra_DA91:
C - - - - - 0x001AA1 00:DA91: A0 08     LDY #$08
C - - - - - 0x001AA3 00:DA93: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001AA5 00:DA95: 38        SEC
C - - - - - 0x001AA6 00:DA96: E9 49     SBC #$49
C - - - - - 0x001AA8 00:DA98: C9 09     CMP #$09
C - - - - - 0x001AAA 00:DA9A: B0 06     BCS bra_DAA2
C - - - - - 0x001AAC 00:DA9C: 20 E9 DE  JSR sub_DEE9
C - - - - - 0x001AAF 00:DA9F: 4C 72 E9  JMP loc_E972
bra_DAA2:
loc_DAA2:
C D 2 - - - 0x001AB2 00:DAA2: A5 1E     LDA ram_001E
C - - - - - 0x001AB4 00:DAA4: C9 20     CMP #$20
C - - - - - 0x001AB6 00:DAA6: F0 03     BEQ bra_DAAB
C - - - - - 0x001AB8 00:DAA8: 20 A6 DE  JSR sub_DEA6
bra_DAAB:
C - - - - - 0x001ABB 00:DAAB: A9 0B     LDA #$0B
C - - - - - 0x001ABD 00:DAAD: A0 07     LDY #$07
C - - - - - 0x001ABF 00:DAAF: 91 1E     STA (ram_001E),Y
C - - - - - 0x001AC1 00:DAB1: A9 D0     LDA #$D0
loc_DAB3:
C D 2 - - - 0x001AC3 00:DAB3: A0 0B     LDY #$0B
C - - - - - 0x001AC5 00:DAB5: 91 1E     STA (ram_001E),Y
C - - - - - 0x001AC7 00:DAB7: A9 09     LDA #$09
C - - - - - 0x001AC9 00:DAB9: C8        INY ; 0C
C - - - - - 0x001ACA 00:DABA: 91 1E     STA (ram_001E),Y
C - - - - - 0x001ACC 00:DABC: A9 04     LDA #$04
C - - - - - 0x001ACE 00:DABE: A0 0F     LDY #$0F
C - - - - - 0x001AD0 00:DAC0: 91 1E     STA (ram_001E),Y
C - - - - - 0x001AD2 00:DAC2: A0 04     LDY #$04
C - - - - - 0x001AD4 00:DAC4: 91 1E     STA (ram_001E),Y
C - - - - - 0x001AD6 00:DAC6: 60        RTS



ofs_001_DAC7_02:
C - - J - - 0x001AD7 00:DAC7: A0 07     LDY #$07
C - - - - - 0x001AD9 00:DAC9: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001ADB 00:DACB: 38        SEC
C - - - - - 0x001ADC 00:DACC: E9 01     SBC #$01
C - - - - - 0x001ADE 00:DACE: 91 1E     STA (ram_001E),Y
C - - - - - 0x001AE0 00:DAD0: D0 03     BNE bra_DAD5
C - - - - - 0x001AE2 00:DAD2: 4C 83 DB  JMP loc_DB83
bra_DAD5:
C - - - - - 0x001AE5 00:DAD5: 4C 3D E0  JMP loc_E03D
bra_DAD8:
loc_DAD8:
C D 2 - - - 0x001AE8 00:DAD8: A5 1E     LDA ram_001E
C - - - - - 0x001AEA 00:DADA: D0 35     BNE bra_DB11
C - - - - - 0x001AEC 00:DADC: A9 1E     LDA #$1E
C - - - - - 0x001AEE 00:DADE: 8D 04 04  STA ram_0404
C - - - - - 0x001AF1 00:DAE1: A9 00     LDA #$00
C - - - - - 0x001AF3 00:DAE3: 8D 07 04  STA ram_0407
C - - - - - 0x001AF6 00:DAE6: A9 08     LDA #$08
C - - - - - 0x001AF8 00:DAE8: 8D 0F 04  STA ram_040F
C - - - - - 0x001AFB 00:DAEB: A9 01     LDA #$01
C - - - - - 0x001AFD 00:DAED: 85 4B     STA ram_004B
sub_DAEF:
C - - - - - 0x001AFF 00:DAEF: 20 BF F4  JSR sub_F4BF
C - - - - - 0x001B02 00:DAF2: A2 10     LDX #$10
bra_DAF4_loop:
C - - - - - 0x001B04 00:DAF4: BD 0F 04  LDA ram_040F,X
C - - - - - 0x001B07 00:DAF7: C9 16     CMP #$16
C - - - - - 0x001B09 00:DAF9: F0 0C     BEQ bra_DB07
C - - - - - 0x001B0B 00:DAFB: C9 20     CMP #$20
C - - - - - 0x001B0D 00:DAFD: F0 08     BEQ bra_DB07
C - - - - - 0x001B0F 00:DAFF: A9 00     LDA #$00
C - - - - - 0x001B11 00:DB01: 9D 0F 04  STA ram_040F,X
C - - - - - 0x001B14 00:DB04: 9D 04 04  STA ram_0404,X
bra_DB07:
C - - - - - 0x001B17 00:DB07: 8A        TXA
C - - - - - 0x001B18 00:DB08: 18        CLC
C - - - - - 0x001B19 00:DB09: 69 10     ADC #$10
C - - - - - 0x001B1B 00:DB0B: AA        TAX
C - - - - - 0x001B1C 00:DB0C: E0 90     CPX #$90
C - - - - - 0x001B1E 00:DB0E: D0 E4     BNE bra_DAF4_loop
C - - - - - 0x001B20 00:DB10: 60        RTS
bra_DB11:
C - - - - - 0x001B21 00:DB11: A9 20     LDA #$20
C - - - - - 0x001B23 00:DB13: A0 04     LDY #$04
C - - - - - 0x001B25 00:DB15: 91 1E     STA (ram_001E),Y
C - - - - - 0x001B27 00:DB17: A9 22     LDA #$22
C - - - - - 0x001B29 00:DB19: A0 0F     LDY #$0F
C - - - - - 0x001B2B 00:DB1B: 91 1E     STA (ram_001E),Y
C - - - - - 0x001B2D 00:DB1D: A0 05     LDY #$05
C - - - - - 0x001B2F 00:DB1F: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001B31 00:DB21: AA        TAX
C - - - - - 0x001B32 00:DB22: A9 78     LDA #$78
C - - - - - 0x001B34 00:DB24: E0 03     CPX #$03
C - - - - - 0x001B36 00:DB26: D0 02     BNE bra_DB2A
C - - - - - 0x001B38 00:DB28: A5 65     LDA ram_0065
bra_DB2A:
C - - - - - 0x001B3A 00:DB2A: A0 07     LDY #$07
C - - - - - 0x001B3C 00:DB2C: 91 1E     STA (ram_001E),Y
C - - - - - 0x001B3E 00:DB2E: BC 33 DB  LDY tbl_DB34 - $01,X
C - - - - - 0x001B41 00:DB31: 4C CA D4  JMP loc_D4CA



tbl_DB34:
- - - - - - 0x001B44 00:DB34: 44        .byte $44   ; 00
- D 2 - - - 0x001B45 00:DB35: 44        .byte $44   ; 01
- D 2 - - - 0x001B46 00:DB36: 08        .byte $08   ; 02



ofs_001_DB37_11:
C - - J - - 0x001B47 00:DB37: A0 07     LDY #$07
C - - - - - 0x001B49 00:DB39: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001B4B 00:DB3B: 38        SEC
C - - - - - 0x001B4C 00:DB3C: E9 01     SBC #$01
C - - - - - 0x001B4E 00:DB3E: 91 1E     STA (ram_001E),Y
C - - - - - 0x001B50 00:DB40: D0 12     BNE bra_DB54_RTS
C - - - - - 0x001B52 00:DB42: 4C 17 DD  JMP loc_DD17



ofs_001_DB45_04:
C - - J - - 0x001B55 00:DB45: EE 07 04  INC ram_0407
C - - - - - 0x001B58 00:DB48: AD 07 04  LDA ram_0407
C - - - - - 0x001B5B 00:DB4B: C9 20     CMP #$20
C - - - - - 0x001B5D 00:DB4D: 90 05     BCC bra_DB54_RTS
C - - - - - 0x001B5F 00:DB4F: A9 2A     LDA #$2A
C - - - - - 0x001B61 00:DB51: 8D 0F 04  STA ram_040F
bra_DB54_RTS:
C - - - - - 0x001B64 00:DB54: 60        RTS



ofs_001_DB55_15:
C - - J - - 0x001B65 00:DB55: AD A5 04  LDA ram_04A5
C - - - - - 0x001B68 00:DB58: 0D AD 04  ORA ram_04AD
C - - - - - 0x001B6B 00:DB5B: D0 1D     BNE bra_DB7A_RTS
C - - - - - 0x001B6D 00:DB5D: 20 BF F4  JSR sub_F4BF
C - - - - - 0x001B70 00:DB60: A9 01     LDA #$01
C - - - - - 0x001B72 00:DB62: 8D 0B 06  STA ram_060B
C - - - - - 0x001B75 00:DB65: 8D 0C 06  STA ram_060C
C - - - - - 0x001B78 00:DB68: 8D 0D 06  STA ram_060D
C - - - - - 0x001B7B 00:DB6B: A9 16     LDA #$16
C - - - - - 0x001B7D 00:DB6D: 8D 04 04  STA ram_0404
C - - - - - 0x001B80 00:DB70: A9 00     LDA #$00
C - - - - - 0x001B82 00:DB72: 8D 07 04  STA ram_0407
C - - - - - 0x001B85 00:DB75: A9 2C     LDA #$2C
C - - - - - 0x001B87 00:DB77: 8D 0F 04  STA ram_040F
bra_DB7A_RTS:
C - - - - - 0x001B8A 00:DB7A: 60        RTS



ofs_001_DB7B_16:
C - - J - - 0x001B8B 00:DB7B: EE 07 04  INC ram_0407
C - - - - - 0x001B8E 00:DB7E: 10 FA     BPL bra_DB7A_RTS
C - - - - - 0x001B90 00:DB80: 4C 6F DE  JMP loc_DE6F



loc_DB83:
C D 2 - - - 0x001B93 00:DB83: A9 00     LDA #$00
C - - - - - 0x001B95 00:DB85: A0 08     LDY #$08
C - - - - - 0x001B97 00:DB87: 91 1E     STA (ram_001E),Y
C - - - - - 0x001B99 00:DB89: A9 06     LDA #$06
C - - - - - 0x001B9B 00:DB8B: A0 0F     LDY #$0F
C - - - - - 0x001B9D 00:DB8D: 91 1E     STA (ram_001E),Y
C - - - - - 0x001B9F 00:DB8F: A0 04     LDY #$04
C - - - - - 0x001BA1 00:DB91: 91 1E     STA (ram_001E),Y
bra_DB93_RTS:
C - - - - - 0x001BA3 00:DB93: 60        RTS



ofs_001_DB94_03:
C - - J - - 0x001BA4 00:DB94: 20 02 E1  JSR sub_E102
C - - - - - 0x001BA7 00:DB97: F0 0B     BEQ bra_DBA4
C - - - - - 0x001BA9 00:DB99: A0 08     LDY #$08
C - - - - - 0x001BAB 00:DB9B: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001BAD 00:DB9D: 38        SEC
C - - - - - 0x001BAE 00:DB9E: E9 49     SBC #$49
C - - - - - 0x001BB0 00:DBA0: C9 07     CMP #$07
C - - - - - 0x001BB2 00:DBA2: B0 03     BCS bra_DBA7
bra_DBA4:
C - - - - - 0x001BB4 00:DBA4: 4C D8 DA  JMP loc_DAD8
bra_DBA7:
C - - - - - 0x001BB7 00:DBA7: A0 03     LDY #$03
C - - - - - 0x001BB9 00:DBA9: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001BBB 00:DBAB: C9 1C     CMP #$1C
C - - - - - 0x001BBD 00:DBAD: 90 03     BCC bra_DBB2
C - - - - - 0x001BBF 00:DBAF: 4C D8 DA  JMP loc_DAD8
bra_DBB2:
C - - - - - 0x001BC2 00:DBB2: 20 6A E0  JSR sub_E06A
C - - - - - 0x001BC5 00:DBB5: 20 69 E4  JSR sub_E469
C - - - - - 0x001BC8 00:DBB8: B0 D9     BCS bra_DB93_RTS
loc_DBBA:
C D 2 - - - 0x001BCA 00:DBBA: A0 05     LDY #$05
C - - - - - 0x001BCC 00:DBBC: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001BCE 00:DBBE: D0 23     BNE bra_DBE3
C - - - - - 0x001BD0 00:DBC0: 86 18     STX ram_0018
C - - - - - 0x001BD2 00:DBC2: A5 42     LDA ram_demo_flag
C - - - - - 0x001BD4 00:DBC4: 8D 0A 06  STA ram_060A
C - - - - - 0x001BD7 00:DBC7: A0 3C     LDY #$3C
C - - - - - 0x001BD9 00:DBC9: 20 CA D4  JSR sub_D4CA
C - - - - - 0x001BDC 00:DBCC: A6 18     LDX ram_0018
C - - - - - 0x001BDE 00:DBCE: BD 02 02  LDA ram_0202,X
C - - - - - 0x001BE1 00:DBD1: D0 10     BNE bra_DBE3
C - - - - - 0x001BE3 00:DBD3: A9 01     LDA #$01
C - - - - - 0x001BE5 00:DBD5: 9D 00 02  STA ram_0200,X
C - - - - - 0x001BE8 00:DBD8: A9 09     LDA #$09
C - - - - - 0x001BEA 00:DBDA: 9D 01 02  STA ram_0201,X
C - - - - - 0x001BED 00:DBDD: A9 80     LDA #$80
C - - - - - 0x001BEF 00:DBDF: 9D 02 02  STA ram_0202,X
C - - - - - 0x001BF2 00:DBE2: 60        RTS
bra_DBE3:
C - - - - - 0x001BF3 00:DBE3: A0 01     LDY #$01
C - - - - - 0x001BF5 00:DBE5: BD 01 02  LDA ram_0201,X
C - - - - - 0x001BF8 00:DBE8: C9 08     CMP #$08
C - - - - - 0x001BFA 00:DBEA: 90 01     BCC bra_DBED
C - - - - - 0x001BFC 00:DBEC: C8        INY
bra_DBED:
C - - - - - 0x001BFD 00:DBED: 98        TYA
C - - - - - 0x001BFE 00:DBEE: 9D 00 02  STA ram_0200,X
C - - - - - 0x001C01 00:DBF1: 8A        TXA
C - - - - - 0x001C02 00:DBF2: A0 0B     LDY #$0B
C - - - - - 0x001C04 00:DBF4: 91 1E     STA (ram_001E),Y
C - - - - - 0x001C06 00:DBF6: A9 00     LDA #$00
C - - - - - 0x001C08 00:DBF8: A0 07     LDY #$07
C - - - - - 0x001C0A 00:DBFA: 91 1E     STA (ram_001E),Y
C - - - - - 0x001C0C 00:DBFC: A9 0A     LDA #$0A
C - - - - - 0x001C0E 00:DBFE: A0 0F     LDY #$0F
C - - - - - 0x001C10 00:DC00: 91 1E     STA (ram_001E),Y
ofs_001_DC02_05:
C - - - - - 0x001C12 00:DC02: A0 0B     LDY #$0B
C - - - - - 0x001C14 00:DC04: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001C16 00:DC06: AA        TAX
C - - - - - 0x001C17 00:DC07: 20 A4 E4  JSR sub_E4A4
C - - - - - 0x001C1A 00:DC0A: BD 02 02  LDA ram_0202,X
C - - - - - 0x001C1D 00:DC0D: 10 03     BPL bra_DC12
C - - - - - 0x001C1F 00:DC0F: 4C 83 DB  JMP loc_DB83
bra_DC12:
C - - - - - 0x001C22 00:DC12: BD 01 02  LDA ram_0201,X
C - - - - - 0x001C25 00:DC15: C9 07     CMP #$07
C - - - - - 0x001C27 00:DC17: D0 3F     BNE bra_DC58_RTS
C - - - - - 0x001C29 00:DC19: A0 05     LDY #$05
C - - - - - 0x001C2B 00:DC1B: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001C2D 00:DC1D: D0 03     BNE bra_DC22
C - - - - - 0x001C2F 00:DC1F: DE 02 02  DEC ram_0202,X
bra_DC22:
C - - - - - 0x001C32 00:DC22: A9 00     LDA #$00
C - - - - - 0x001C34 00:DC24: A0 08     LDY #$08
C - - - - - 0x001C36 00:DC26: 91 1E     STA (ram_001E),Y
C - - - - - 0x001C38 00:DC28: A9 0C     LDA #$0C
C - - - - - 0x001C3A 00:DC2A: A0 0F     LDY #$0F
C - - - - - 0x001C3C 00:DC2C: 91 1E     STA (ram_001E),Y
C - - - - - 0x001C3E 00:DC2E: A9 06     LDA #$06
C - - - - - 0x001C40 00:DC30: A0 04     LDY #$04
C - - - - - 0x001C42 00:DC32: 91 1E     STA (ram_001E),Y
C - - - - - 0x001C44 00:DC34: A5 1E     LDA ram_001E
C - - - - - 0x001C46 00:DC36: C9 20     CMP #$20
C - - - - - 0x001C48 00:DC38: F0 1F     BEQ bra_DC59
C - - - - - 0x001C4A 00:DC3A: A0 0A     LDY #$0A
C - - - - - 0x001C4C 00:DC3C: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001C4E 00:DC3E: 29 FC     AND #$FC
C - - - - - 0x001C50 00:DC40: 09 01     ORA #$01
C - - - - - 0x001C52 00:DC42: A0 03     LDY #$03
C - - - - - 0x001C54 00:DC44: D1 1E     CMP (ram_001E),Y
C - - - - - 0x001C56 00:DC46: 90 10     BCC bra_DC58_RTS
C - - - - - 0x001C58 00:DC48: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001C5A 00:DC4A: 29 FC     AND #$FC
C - - - - - 0x001C5C 00:DC4C: 85 10     STA ram_0010
C - - - - - 0x001C5E 00:DC4E: A0 0A     LDY #$0A
C - - - - - 0x001C60 00:DC50: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001C62 00:DC52: 29 01     AND #$01
C - - - - - 0x001C64 00:DC54: 05 10     ORA ram_0010
C - - - - - 0x001C66 00:DC56: 91 1E     STA (ram_001E),Y
bra_DC58_RTS:
C - - - - - 0x001C68 00:DC58: 60        RTS
bra_DC59:
C - - - - - 0x001C69 00:DC59: 4C F0 D9  JMP loc_D9F0



ofs_001_DC5C_06:
C - - J - - 0x001C6C 00:DC5C: 20 02 E1  JSR sub_E102
C - - - - - 0x001C6F 00:DC5F: D0 03     BNE bra_DC64
C - - - - - 0x001C71 00:DC61: 4C D8 DA  JMP loc_DAD8
bra_DC64:
C - - - - - 0x001C74 00:DC64: A0 03     LDY #$03
C - - - - - 0x001C76 00:DC66: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001C78 00:DC68: 29 03     AND #$03
C - - - - - 0x001C7A 00:DC6A: 38        SEC
C - - - - - 0x001C7B 00:DC6B: E9 01     SBC #$01
C - - - - - 0x001C7D 00:DC6D: C9 02     CMP #$02
C - - - - - 0x001C7F 00:DC6F: B0 06     BCS bra_DC77
C - - - - - 0x001C81 00:DC71: A0 0D     LDY #$0D
C - - - - - 0x001C83 00:DC73: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001C85 00:DC75: D0 56     BNE bra_DCCD
bra_DC77:
C - - - - - 0x001C87 00:DC77: A0 08     LDY #$08
C - - - - - 0x001C89 00:DC79: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001C8B 00:DC7B: C9 59     CMP #$59
C - - - - - 0x001C8D 00:DC7D: F0 12     BEQ bra_DC91
C - - - - - 0x001C8F 00:DC7F: 38        SEC
C - - - - - 0x001C90 00:DC80: E9 30     SBC #$30
C - - - - - 0x001C92 00:DC82: C9 20     CMP #$20
C - - - - - 0x001C94 00:DC84: 90 0B     BCC bra_DC91
C - - - - - 0x001C96 00:DC86: A0 03     LDY #$03
C - - - - - 0x001C98 00:DC88: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001C9A 00:DC8A: C9 06     CMP #$06
C - - - - - 0x001C9C 00:DC8C: 90 03     BCC bra_DC91
C - - - - - 0x001C9E 00:DC8E: 4C 84 E0  JMP loc_E084
bra_DC91:
C - - - - - 0x001CA1 00:DC91: A0 03     LDY #$03
C - - - - - 0x001CA3 00:DC93: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001CA5 00:DC95: 29 FC     AND #$FC
C - - - - - 0x001CA7 00:DC97: 85 10     STA ram_0010
C - - - - - 0x001CA9 00:DC99: A5 1E     LDA ram_001E
C - - - - - 0x001CAB 00:DC9B: C9 20     CMP #$20
C - - - - - 0x001CAD 00:DC9D: F0 1E     BEQ bra_DCBD
C - - - - - 0x001CAF 00:DC9F: A0 0A     LDY #$0A
C - - - - - 0x001CB1 00:DCA1: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001CB3 00:DCA3: 29 FC     AND #$FC
C - - - - - 0x001CB5 00:DCA5: C5 10     CMP ram_0010
C - - - - - 0x001CB7 00:DCA7: F0 0B     BEQ bra_DCB4
C - - - - - 0x001CB9 00:DCA9: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001CBB 00:DCAB: 29 03     AND #$03
C - - - - - 0x001CBD 00:DCAD: 05 10     ORA ram_0010
C - - - - - 0x001CBF 00:DCAF: 91 1E     STA (ram_001E),Y
C - - - - - 0x001CC1 00:DCB1: 4C 83 DB  JMP loc_DB83
bra_DCB4:
C - - - - - 0x001CC4 00:DCB4: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001CC6 00:DCB6: 49 01     EOR #$01
C - - - - - 0x001CC8 00:DCB8: 91 1E     STA (ram_001E),Y
C - - - - - 0x001CCA 00:DCBA: 4C 83 DB  JMP loc_DB83
bra_DCBD:
C - - - - - 0x001CCD 00:DCBD: A5 10     LDA ram_0010
C - - - - - 0x001CCF 00:DCBF: 09 01     ORA #$01
C - - - - - 0x001CD1 00:DCC1: 38        SEC
C - - - - - 0x001CD2 00:DCC2: E5 37     SBC ram_0037
C - - - - - 0x001CD4 00:DCC4: 85 36     STA ram_0036
C - - - - - 0x001CD6 00:DCC6: A9 01     LDA #$01
C - - - - - 0x001CD8 00:DCC8: 85 35     STA ram_0035
C - - - - - 0x001CDA 00:DCCA: 4C 83 DB  JMP loc_DB83
bra_DCCD:
C - - - - - 0x001CDD 00:DCCD: A0 06     LDY #$06
C - - - - - 0x001CDF 00:DCCF: 91 1E     STA (ram_001E),Y
C - - - - - 0x001CE1 00:DCD1: A0 03     LDY #$03
C - - - - - 0x001CE3 00:DCD3: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001CE5 00:DCD5: 29 FE     AND #$FE
C - - - - - 0x001CE7 00:DCD7: 09 02     ORA #$02
C - - - - - 0x001CE9 00:DCD9: 91 1E     STA (ram_001E),Y
C - - - - - 0x001CEB 00:DCDB: 88        DEY
C - - - - - 0x001CEC 00:DCDC: A9 00     LDA #$00
C - - - - - 0x001CEE 00:DCDE: 91 1E     STA (ram_001E),Y
C - - - - - 0x001CF0 00:DCE0: A9 10     LDA #$10
C - - - - - 0x001CF2 00:DCE2: A0 07     LDY #$07
C - - - - - 0x001CF4 00:DCE4: 91 1E     STA (ram_001E),Y
C - - - - - 0x001CF6 00:DCE6: A9 E0     LDA #$E0
C - - - - - 0x001CF8 00:DCE8: A0 0B     LDY #$0B
C - - - - - 0x001CFA 00:DCEA: 91 1E     STA (ram_001E),Y
C - - - - - 0x001CFC 00:DCEC: A9 04     LDA #$04
C - - - - - 0x001CFE 00:DCEE: C8        INY
C - - - - - 0x001CFF 00:DCEF: 91 1E     STA (ram_001E),Y
C - - - - - 0x001D01 00:DCF1: A9 0E     LDA #$0E
C - - - - - 0x001D03 00:DCF3: A0 0F     LDY #$0F
C - - - - - 0x001D05 00:DCF5: 91 1E     STA (ram_001E),Y
C - - - - - 0x001D07 00:DCF7: A9 04     LDA #$04
C - - - - - 0x001D09 00:DCF9: A0 04     LDY #$04
C - - - - - 0x001D0B 00:DCFB: 91 1E     STA (ram_001E),Y
C - - - - - 0x001D0D 00:DCFD: 60        RTS



ofs_001_DCFE_07:
C - - J - - 0x001D0E 00:DCFE: A0 08     LDY #$08
C - - - - - 0x001D10 00:DD00: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001D12 00:DD02: 38        SEC
C - - - - - 0x001D13 00:DD03: E9 49     SBC #$49
C - - - - - 0x001D15 00:DD05: C9 10     CMP #$10
C - - - - - 0x001D17 00:DD07: 90 37     BCC bra_DD40
C - - - - - 0x001D19 00:DD09: A0 07     LDY #$07
C - - - - - 0x001D1B 00:DD0B: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001D1D 00:DD0D: 38        SEC
C - - - - - 0x001D1E 00:DD0E: E9 01     SBC #$01
C - - - - - 0x001D20 00:DD10: 91 1E     STA (ram_001E),Y
C - - - - - 0x001D22 00:DD12: F0 03     BEQ bra_DD17
C - - - - - 0x001D24 00:DD14: 4C 3D E0  JMP loc_E03D
bra_DD17:
loc_DD17:
C D 2 - - - 0x001D27 00:DD17: A9 00     LDA #$00
C - - - - - 0x001D29 00:DD19: A0 02     LDY #$02
C - - - - - 0x001D2B 00:DD1B: 91 1E     STA (ram_001E),Y
C - - - - - 0x001D2D 00:DD1D: C8        INY
C - - - - - 0x001D2E 00:DD1E: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001D30 00:DD20: 29 FC     AND #$FC
C - - - - - 0x001D32 00:DD22: 09 02     ORA #$02
C - - - - - 0x001D34 00:DD24: 91 1E     STA (ram_001E),Y
C - - - - - 0x001D36 00:DD26: A9 4B     LDA #$4B
C - - - - - 0x001D38 00:DD28: A0 08     LDY #$08
C - - - - - 0x001D3A 00:DD2A: 91 1E     STA (ram_001E),Y
C - - - - - 0x001D3C 00:DD2C: A0 05     LDY #$05
C - - - - - 0x001D3E 00:DD2E: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001D40 00:DD30: D0 03     BNE bra_DD35
C - - - - - 0x001D42 00:DD32: 20 DE E3  JSR sub_E3DE
bra_DD35:
C - - - - - 0x001D45 00:DD35: A9 02     LDA #$02
C - - - - - 0x001D47 00:DD37: A0 0F     LDY #$0F
C - - - - - 0x001D49 00:DD39: 91 1E     STA (ram_001E),Y
C - - - - - 0x001D4B 00:DD3B: A0 04     LDY #$04
C - - - - - 0x001D4D 00:DD3D: 91 1E     STA (ram_001E),Y
C - - - - - 0x001D4F 00:DD3F: 60        RTS
bra_DD40:
C - - - - - 0x001D50 00:DD40: A5 1E     LDA ram_001E
C - - - - - 0x001D52 00:DD42: C9 20     CMP #$20
C - - - - - 0x001D54 00:DD44: F0 06     BEQ bra_DD4C
C - - - - - 0x001D56 00:DD46: 20 A6 DE  JSR sub_DEA6
C - - - - - 0x001D59 00:DD49: 4C 4F DD  JMP loc_DD4F
bra_DD4C:
C - - - - - 0x001D5C 00:DD4C: 20 02 DA  JSR sub_DA02
loc_DD4F:
C D 2 - - - 0x001D5F 00:DD4F: A9 00     LDA #$00
C - - - - - 0x001D61 00:DD51: 38        SEC
C - - - - - 0x001D62 00:DD52: A0 06     LDY #$06
C - - - - - 0x001D64 00:DD54: F1 1E     SBC (ram_001E),Y
C - - - - - 0x001D66 00:DD56: 91 1E     STA (ram_001E),Y
C - - - - - 0x001D68 00:DD58: A9 06     LDA #$06
C - - - - - 0x001D6A 00:DD5A: C8        INY
C - - - - - 0x001D6B 00:DD5B: 91 1E     STA (ram_001E),Y
C - - - - - 0x001D6D 00:DD5D: A9 00     LDA #$00
C - - - - - 0x001D6F 00:DD5F: 4C B3 DA  JMP loc_DAB3



ofs_001_DD62_08:
C - - J - - 0x001D72 00:DD62: 20 B1 F0  JSR sub_F0B1
C - - - - - 0x001D75 00:DD65: 20 E7 F0  JSR sub_F0E7
C - - - - - 0x001D78 00:DD68: F0 38     BEQ bra_DDA2
C - - - - - 0x001D7A 00:DD6A: A0 08     LDY #$08
C - - - - - 0x001D7C 00:DD6C: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001D7E 00:DD6E: 38        SEC
C - - - - - 0x001D7F 00:DD6F: E9 49     SBC #$49
C - - - - - 0x001D81 00:DD71: C9 09     CMP #$09
C - - - - - 0x001D83 00:DD73: B0 30     BCS bra_DDA5
C - - - - - 0x001D85 00:DD75: A5 1E     LDA ram_001E
C - - - - - 0x001D87 00:DD77: D0 03     BNE bra_DD7C
C - - - - - 0x001D89 00:DD79: 20 34 E1  JSR sub_E134
bra_DD7C:
C - - - - - 0x001D8C 00:DD7C: A9 80     LDA #$80
C - - - - - 0x001D8E 00:DD7E: 20 09 DF  JSR sub_DF09
C - - - - - 0x001D91 00:DD81: A0 07     LDY #$07
C - - - - - 0x001D93 00:DD83: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001D95 00:DD85: 38        SEC
C - - - - - 0x001D96 00:DD86: E9 01     SBC #$01
C - - - - - 0x001D98 00:DD88: 91 1E     STA (ram_001E),Y
C - - - - - 0x001D9A 00:DD8A: D0 15     BNE bra_DDA1_RTS
C - - - - - 0x001D9C 00:DD8C: A0 05     LDY #$05
C - - - - - 0x001D9E 00:DD8E: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001DA0 00:DD90: D0 03     BNE bra_DD95
C - - - - - 0x001DA2 00:DD92: 4C 17 DD  JMP loc_DD17
bra_DD95:
C - - - - - 0x001DA5 00:DD95: A5 65     LDA ram_0065
C - - - - - 0x001DA7 00:DD97: A0 07     LDY #$07
C - - - - - 0x001DA9 00:DD99: 91 1E     STA (ram_001E),Y
C - - - - - 0x001DAB 00:DD9B: A9 12     LDA #$12
C - - - - - 0x001DAD 00:DD9D: A0 0F     LDY #$0F
C - - - - - 0x001DAF 00:DD9F: 91 1E     STA (ram_001E),Y
bra_DDA1_RTS:
C - - - - - 0x001DB1 00:DDA1: 60        RTS
bra_DDA2:
C - - - - - 0x001DB2 00:DDA2: 4C 83 DB  JMP loc_DB83
bra_DDA5:
C - - - - - 0x001DB5 00:DDA5: 4C A2 DA  JMP loc_DAA2



ofs_001_DDA8_09:
C - - J - - 0x001DB8 00:DDA8: A0 07     LDY #$07
C - - - - - 0x001DBA 00:DDAA: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001DBC 00:DDAC: 38        SEC
C - - - - - 0x001DBD 00:DDAD: E9 01     SBC #$01
C - - - - - 0x001DBF 00:DDAF: 91 1E     STA (ram_001E),Y
C - - - - - 0x001DC1 00:DDB1: D0 EE     BNE bra_DDA1_RTS
C - - - - - 0x001DC3 00:DDB3: A9 40     LDA #$40
C - - - - - 0x001DC5 00:DDB5: A0 07     LDY #$07
C - - - - - 0x001DC7 00:DDB7: 91 1E     STA (ram_001E),Y
C - - - - - 0x001DC9 00:DDB9: A9 0E     LDA #$0E
C - - - - - 0x001DCB 00:DDBB: A0 04     LDY #$04
C - - - - - 0x001DCD 00:DDBD: 91 1E     STA (ram_001E),Y
C - - - - - 0x001DCF 00:DDBF: A9 14     LDA #$14
C - - - - - 0x001DD1 00:DDC1: A0 0F     LDY #$0F
C - - - - - 0x001DD3 00:DDC3: 91 1E     STA (ram_001E),Y
bra_DDC5_RTS:
C - - - - - 0x001DD5 00:DDC5: 60        RTS



ofs_001_DDC6_0A:
C - - J - - 0x001DD6 00:DDC6: A0 07     LDY #$07
C - - - - - 0x001DD8 00:DDC8: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001DDA 00:DDCA: 38        SEC
C - - - - - 0x001DDB 00:DDCB: E9 01     SBC #$01
C - - - - - 0x001DDD 00:DDCD: 91 1E     STA (ram_001E),Y
C - - - - - 0x001DDF 00:DDCF: D0 F4     BNE bra_DDC5_RTS
C - - - - - 0x001DE1 00:DDD1: 4C 17 DD  JMP loc_DD17



ofs_001_DDD4_0D:
C - - J - - 0x001DE4 00:DDD4: A0 07     LDY #$07
C - - - - - 0x001DE6 00:DDD6: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001DE8 00:DDD8: F0 05     BEQ bra_DDDF_RTS
C - - - - - 0x001DEA 00:DDDA: 38        SEC
C - - - - - 0x001DEB 00:DDDB: E9 01     SBC #$01
C - - - - - 0x001DED 00:DDDD: 91 1E     STA (ram_001E),Y
bra_DDDF_RTS:
C - - - - - 0x001DEF 00:DDDF: 60        RTS



ofs_001_DDE0_0E:
C - - J - - 0x001DF0 00:DDE0: A5 4B     LDA ram_004B
C - - - - - 0x001DF2 00:DDE2: 05 4F     ORA ram_004F
C - - - - - 0x001DF4 00:DDE4: D0 3E     BNE bra_DE24_RTS
C - - - - - 0x001DF6 00:DDE6: A0 08     LDY #$08
C - - - - - 0x001DF8 00:DDE8: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001DFA 00:DDEA: 38        SEC
C - - - - - 0x001DFB 00:DDEB: E9 49     SBC #$49
C - - - - - 0x001DFD 00:DDED: C9 07     CMP #$07
C - - - - - 0x001DFF 00:DDEF: 90 16     BCC bra_DE07
C - - - - - 0x001E01 00:DDF1: A0 03     LDY #$03
C - - - - - 0x001E03 00:DDF3: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001E05 00:DDF5: C9 1C     CMP #$1C
C - - - - - 0x001E07 00:DDF7: B0 0B     BCS bra_DE04
C - - - - - 0x001E09 00:DDF9: 20 6A E0  JSR sub_E06A
C - - - - - 0x001E0C 00:DDFC: 20 69 E4  JSR sub_E469
C - - - - - 0x001E0F 00:DDFF: B0 23     BCS bra_DE24_RTS
C - - - - - 0x001E11 00:DE01: 4C BA DB  JMP loc_DBBA
bra_DE04:
- - - - - - 0x001E14 00:DE04: 4C D8 DA  JMP loc_DAD8
bra_DE07:
C - - - - - 0x001E17 00:DE07: A5 1E     LDA ram_001E
C - - - - - 0x001E19 00:DE09: C9 20     CMP #$20
C - - - - - 0x001E1B 00:DE0B: D0 1D     BNE bra_DE2A
C - - - - - 0x001E1D 00:DE0D: A9 24     LDA #$24
C - - - - - 0x001E1F 00:DE0F: 8D 2F 04  STA ram_042F
C - - - - - 0x001E22 00:DE12: A9 12     LDA #$12
C - - - - - 0x001E24 00:DE14: 8D 24 04  STA ram_0424
C - - - - - 0x001E27 00:DE17: A9 78     LDA #$78
C - - - - - 0x001E29 00:DE19: 8D 27 04  STA ram_0427
C - - - - - 0x001E2C 00:DE1C: A9 09     LDA #$09
C - - - - - 0x001E2E 00:DE1E: 85 36     STA ram_0036
C - - - - - 0x001E30 00:DE20: A9 04     LDA #$04
C - - - - - 0x001E32 00:DE22: 85 37     STA ram_0037
bra_DE24_RTS:
C - - - - - 0x001E34 00:DE24: 60        RTS
ofs_001_DE25_12:
C - - J - - 0x001E35 00:DE25: CE 27 04  DEC ram_0427
C - - - - - 0x001E38 00:DE28: D0 FA     BNE bra_DE24_RTS
bra_DE2A:
C - - - - - 0x001E3A 00:DE2A: 4C 17 DD  JMP loc_DD17



ofs_001_DE2D_0F:
C - - J - - 0x001E3D 00:DE2D: CE 27 04  DEC ram_0427
C - - - - - 0x001E40 00:DE30: F0 27     BEQ bra_DE59
C - - - - - 0x001E42 00:DE32: AD 23 04  LDA ram_0423
C - - - - - 0x001E45 00:DE35: CD 03 04  CMP ram_0403
C - - - - - 0x001E48 00:DE38: D0 3F     BNE bra_DE79_RTS
C - - - - - 0x001E4A 00:DE3A: AD 21 04  LDA ram_0421
C - - - - - 0x001E4D 00:DE3D: 38        SEC
C - - - - - 0x001E4E 00:DE3E: ED 01 04  SBC ram_0401
C - - - - - 0x001E51 00:DE41: C9 02     CMP #$02
C - - - - - 0x001E53 00:DE43: B0 34     BCS bra_DE79_RTS
C - - - - - 0x001E55 00:DE45: A9 20     LDA #$20
C - - - - - 0x001E57 00:DE47: 8D 2F 04  STA ram_042F
C - - - - - 0x001E5A 00:DE4A: A9 15     LDA #$15
C - - - - - 0x001E5C 00:DE4C: 8D 24 04  STA ram_0424
C - - - - - 0x001E5F 00:DE4F: A9 78     LDA #$78
C - - - - - 0x001E61 00:DE51: 8D 27 04  STA ram_0427
C - - - - - 0x001E64 00:DE54: A0 44     LDY #$44
C - - - - - 0x001E66 00:DE56: 4C CA D4  JMP loc_D4CA
bra_DE59:
C - - - - - 0x001E69 00:DE59: A9 10     LDA #$10
C - - - - - 0x001E6B 00:DE5B: 8D 2A 04  STA ram_042A
C - - - - - 0x001E6E 00:DE5E: 4C 17 DD  JMP loc_DD17



ofs_001_DE61_10:
C - - J - - 0x001E71 00:DE61: CE 27 04  DEC ram_0427
C - - - - - 0x001E74 00:DE64: D0 13     BNE bra_DE79_RTS
C - - - - - 0x001E76 00:DE66: A5 4B     LDA ram_004B
C - - - - - 0x001E78 00:DE68: 05 4F     ORA ram_004F
C - - - - - 0x001E7A 00:DE6A: D0 03     BNE bra_DE6F
C - - - - - 0x001E7C 00:DE6C: 4C 17 DD  JMP loc_DD17
bra_DE6F:
loc_DE6F:
C D 2 - - - 0x001E7F 00:DE6F: A9 00     LDA #$00
C - - - - - 0x001E81 00:DE71: A0 0F     LDY #$0F
C - - - - - 0x001E83 00:DE73: 91 1E     STA (ram_001E),Y
C - - - - - 0x001E85 00:DE75: A0 04     LDY #$04
C - - - - - 0x001E87 00:DE77: 91 1E     STA (ram_001E),Y
bra_DE79_RTS:
C - - - - - 0x001E89 00:DE79: 60        RTS



ofs_001_DE7A_13:
C - - J - - 0x001E8A 00:DE7A: A0 07     LDY #$07
C - - - - - 0x001E8C 00:DE7C: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001E8E 00:DE7E: 38        SEC
C - - - - - 0x001E8F 00:DE7F: E9 01     SBC #$01
C - - - - - 0x001E91 00:DE81: 91 1E     STA (ram_001E),Y
C - - - - - 0x001E93 00:DE83: D0 12     BNE bra_DE97_RTS
C - - - - - 0x001E95 00:DE85: A9 28     LDA #$28
C - - - - - 0x001E97 00:DE87: A0 0F     LDY #$0F
C - - - - - 0x001E99 00:DE89: 91 1E     STA (ram_001E),Y
C - - - - - 0x001E9B 00:DE8B: A9 24     LDA #$24
C - - - - - 0x001E9D 00:DE8D: A0 04     LDY #$04
C - - - - - 0x001E9F 00:DE8F: 91 1E     STA (ram_001E),Y
C - - - - - 0x001EA1 00:DE91: A9 40     LDA #$40
C - - - - - 0x001EA3 00:DE93: A0 07     LDY #$07
C - - - - - 0x001EA5 00:DE95: 91 1E     STA (ram_001E),Y
bra_DE97_RTS:
C - - - - - 0x001EA7 00:DE97: 60        RTS



ofs_001_DE98_14:
C - - J - - 0x001EA8 00:DE98: A0 07     LDY #$07
C - - - - - 0x001EAA 00:DE9A: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001EAC 00:DE9C: 38        SEC
C - - - - - 0x001EAD 00:DE9D: E9 01     SBC #$01
C - - - - - 0x001EAF 00:DE9F: 91 1E     STA (ram_001E),Y
C - - - - - 0x001EB1 00:DEA1: D0 F4     BNE bra_DE97_RTS
C - - - - - 0x001EB3 00:DEA3: 4C 83 DB  JMP loc_DB83



sub_DEA6:
C - - - - - 0x001EB6 00:DEA6: A0 06     LDY #$06
C - - - - - 0x001EB8 00:DEA8: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001EBA 00:DEAA: 29 01     AND #$01
C - - - - - 0x001EBC 00:DEAC: 49 01     EOR #$01
C - - - - - 0x001EBE 00:DEAE: 85 10     STA ram_0010
C - - - - - 0x001EC0 00:DEB0: A0 03     LDY #$03
C - - - - - 0x001EC2 00:DEB2: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001EC4 00:DEB4: 29 FC     AND #$FC
C - - - - - 0x001EC6 00:DEB6: 05 10     ORA ram_0010
C - - - - - 0x001EC8 00:DEB8: 85 10     STA ram_0010
C - - - - - 0x001ECA 00:DEBA: A0 01     LDY #$01
C - - - - - 0x001ECC 00:DEBC: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001ECE 00:DEBE: CD 01 04  CMP ram_0401
C - - - - - 0x001ED1 00:DEC1: AD 03 04  LDA ram_0403
C - - - - - 0x001ED4 00:DEC4: 29 FC     AND #$FC
C - - - - - 0x001ED6 00:DEC6: 69 00     ADC #$00
C - - - - - 0x001ED8 00:DEC8: A0 0A     LDY #$0A
C - - - - - 0x001EDA 00:DECA: 91 1E     STA (ram_001E),Y
C - - - - - 0x001EDC 00:DECC: C5 10     CMP ram_0010
C - - - - - 0x001EDE 00:DECE: D0 11     BNE bra_DEE1_RTS
C - - - - - 0x001EE0 00:DED0: A6 21     LDX ram_frame_counter
C - - - - - 0x001EE2 00:DED2: BD 00 C0  LDA tbl_C000,X
C - - - - - 0x001EE5 00:DED5: 4A        LSR
C - - - - - 0x001EE6 00:DED6: A9 04     LDA #$04
C - - - - - 0x001EE8 00:DED8: 90 02     BCC bra_DEDC
C - - - - - 0x001EEA 00:DEDA: A9 FC     LDA #$FC
bra_DEDC:
C - - - - - 0x001EEC 00:DEDC: 18        CLC
C - - - - - 0x001EED 00:DEDD: 71 1E     ADC (ram_001E),Y
C - - - - - 0x001EEF 00:DEDF: 91 1E     STA (ram_001E),Y
bra_DEE1_RTS:
C - - - - - 0x001EF1 00:DEE1: 60        RTS
bra_DEE2:
C - - - - - 0x001EF2 00:DEE2: A9 00     LDA #$00
C - - - - - 0x001EF4 00:DEE4: A0 07     LDY #$07
C - - - - - 0x001EF6 00:DEE6: 91 1E     STA (ram_001E),Y
bra_DEE8_RTS:
C - - - - - 0x001EF8 00:DEE8: 60        RTS



sub_DEE9:
C - - - - - 0x001EF9 00:DEE9: A5 1E     LDA ram_001E
C - - - - - 0x001EFB 00:DEEB: D0 0A     BNE bra_DEF7
C - - - - - 0x001EFD 00:DEED: A0 0D     LDY #$0D
C - - - - - 0x001EFF 00:DEEF: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001F01 00:DEF1: F0 EF     BEQ bra_DEE2
C - - - - - 0x001F03 00:DEF3: A0 06     LDY #$06
C - - - - - 0x001F05 00:DEF5: 91 1E     STA (ram_001E),Y
bra_DEF7:
C - - - - - 0x001F07 00:DEF7: A0 07     LDY #$07
C - - - - - 0x001F09 00:DEF9: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001F0B 00:DEFB: 18        CLC
C - - - - - 0x001F0C 00:DEFC: 69 01     ADC #$01
C - - - - - 0x001F0E 00:DEFE: 91 1E     STA (ram_001E),Y
C - - - - - 0x001F10 00:DF00: A0 09     LDY #$09
C - - - - - 0x001F12 00:DF02: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001F14 00:DF04: D0 E2     BNE bra_DEE8_RTS
C - - - - - 0x001F16 00:DF06: 20 18 E0  JSR sub_E018
sub_DF09:
C - - - - - 0x001F19 00:DF09: A2 04     LDX #$04
loc_DF0B:
C D 2 - - - 0x001F1B 00:DF0B: 85 10     STA ram_0010
C - - - - - 0x001F1D 00:DF0D: 20 8A DF  JSR sub_DF8A
C - - - - - 0x001F20 00:DF10: A0 06     LDY #$06
C - - - - - 0x001F22 00:DF12: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001F24 00:DF14: 30 3D     BMI bra_DF53
C - - - - - 0x001F26 00:DF16: A0 01     LDY #$01
C - - - - - 0x001F28 00:DF18: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001F2A 00:DF1A: C9 38     CMP #$38
C - - - - - 0x001F2C 00:DF1C: F0 18     BEQ bra_DF36
C - - - - - 0x001F2E 00:DF1E: 88        DEY
C - - - - - 0x001F2F 00:DF1F: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001F31 00:DF21: 18        CLC
C - - - - - 0x001F32 00:DF22: 65 10     ADC ram_0010
C - - - - - 0x001F34 00:DF24: 91 1E     STA (ram_001E),Y
C - - - - - 0x001F36 00:DF26: 90 2A     BCC bra_DF52_RTS
C - - - - - 0x001F38 00:DF28: C8        INY
C - - - - - 0x001F39 00:DF29: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001F3B 00:DF2B: 69 00     ADC #$00
C - - - - - 0x001F3D 00:DF2D: 91 1E     STA (ram_001E),Y
C - - - - - 0x001F3F 00:DF2F: C9 38     CMP #$38
C - - - - - 0x001F41 00:DF31: B0 03     BCS bra_DF36
C - - - - - 0x001F43 00:DF33: 4C CD DF  JMP loc_DFCD
bra_DF36:
C - - - - - 0x001F46 00:DF36: 88        DEY
C - - - - - 0x001F47 00:DF37: A9 00     LDA #$00
C - - - - - 0x001F49 00:DF39: 91 1E     STA (ram_001E),Y
C - - - - - 0x001F4B 00:DF3B: A9 4D     LDA #$4D
C - - - - - 0x001F4D 00:DF3D: A0 08     LDY #$08
C - - - - - 0x001F4F 00:DF3F: 91 1E     STA (ram_001E),Y
C - - - - - 0x001F51 00:DF41: A5 1E     LDA ram_001E
C - - - - - 0x001F53 00:DF43: F0 0D     BEQ bra_DF52_RTS
C - - - - - 0x001F55 00:DF45: C9 20     CMP #$20
C - - - - - 0x001F57 00:DF47: D0 03     BNE bra_DF4C
C - - - - - 0x001F59 00:DF49: 20 F0 D9  JSR sub_D9F0
bra_DF4C:
C - - - - - 0x001F5C 00:DF4C: A9 FF     LDA #$FF
C - - - - - 0x001F5E 00:DF4E: A0 06     LDY #$06
C - - - - - 0x001F60 00:DF50: 91 1E     STA (ram_001E),Y
bra_DF52_RTS:
C - - - - - 0x001F62 00:DF52: 60        RTS
bra_DF53:
C - - - - - 0x001F63 00:DF53: A0 00     LDY #$00
C - - - - - 0x001F65 00:DF55: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001F67 00:DF57: 38        SEC
C - - - - - 0x001F68 00:DF58: E5 10     SBC ram_0010
C - - - - - 0x001F6A 00:DF5A: 91 1E     STA (ram_001E),Y
C - - - - - 0x001F6C 00:DF5C: B0 2B     BCS bra_DF89_RTS
C - - - - - 0x001F6E 00:DF5E: C8        INY
C - - - - - 0x001F6F 00:DF5F: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001F71 00:DF61: E9 00     SBC #$00
C - - - - - 0x001F73 00:DF63: 91 1E     STA (ram_001E),Y
C - - - - - 0x001F75 00:DF65: C9 02     CMP #$02
C - - - - - 0x001F77 00:DF67: B0 60     BCS bra_DFC9
C - - - - - 0x001F79 00:DF69: A9 02     LDA #$02
C - - - - - 0x001F7B 00:DF6B: 91 1E     STA (ram_001E),Y
C - - - - - 0x001F7D 00:DF6D: 88        DEY
C - - - - - 0x001F7E 00:DF6E: A9 00     LDA #$00
C - - - - - 0x001F80 00:DF70: 91 1E     STA (ram_001E),Y
C - - - - - 0x001F82 00:DF72: A9 4C     LDA #$4C
C - - - - - 0x001F84 00:DF74: A0 08     LDY #$08
C - - - - - 0x001F86 00:DF76: 91 1E     STA (ram_001E),Y
C - - - - - 0x001F88 00:DF78: A5 1E     LDA ram_001E
C - - - - - 0x001F8A 00:DF7A: F0 0D     BEQ bra_DF89_RTS
C - - - - - 0x001F8C 00:DF7C: C9 20     CMP #$20
C - - - - - 0x001F8E 00:DF7E: D0 03     BNE bra_DF83
C - - - - - 0x001F90 00:DF80: 20 F0 D9  JSR sub_D9F0
bra_DF83:
C - - - - - 0x001F93 00:DF83: A9 01     LDA #$01
C - - - - - 0x001F95 00:DF85: A0 06     LDY #$06
C - - - - - 0x001F97 00:DF87: 91 1E     STA (ram_001E),Y
bra_DF89_RTS:
C - - - - - 0x001F99 00:DF89: 60        RTS



sub_DF8A:
C - - - - - 0x001F9A 00:DF8A: A0 05     LDY #$05
C - - - - - 0x001F9C 00:DF8C: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001F9E 00:DF8E: D0 24     BNE bra_DFB4_RTS
C - - - - - 0x001FA0 00:DF90: AD 01 04  LDA ram_0401
C - - - - - 0x001FA3 00:DF93: 38        SEC
C - - - - - 0x001FA4 00:DF94: E9 0F     SBC #$0F
C - - - - - 0x001FA6 00:DF96: C9 1C     CMP #$1C
C - - - - - 0x001FA8 00:DF98: B0 1A     BCS bra_DFB4_RTS
C - - - - - 0x001FAA 00:DF9A: AD 06 04  LDA ram_0406
C - - - - - 0x001FAD 00:DF9D: 30 16     BMI bra_DFB5
C - - - - - 0x001FAF 00:DF9F: A5 28     LDA ram_cam_pos_X_lo
C - - - - - 0x001FB1 00:DFA1: 18        CLC
C - - - - - 0x001FB2 00:DFA2: 65 10     ADC ram_0010
C - - - - - 0x001FB4 00:DFA4: 85 11     STA ram_0011
C - - - - - 0x001FB6 00:DFA6: A5 29     LDA ram_cam_pos_X_hi
C - - - - - 0x001FB8 00:DFA8: 69 00     ADC #$00
C - - - - - 0x001FBA 00:DFAA: C9 1C     CMP #$1C
C - - - - - 0x001FBC 00:DFAC: B0 06     BCS bra_DFB4_RTS
C - - - - - 0x001FBE 00:DFAE: 85 29     STA ram_cam_pos_X_hi
C - - - - - 0x001FC0 00:DFB0: A5 11     LDA ram_0011
C - - - - - 0x001FC2 00:DFB2: 85 28     STA ram_cam_pos_X_lo
bra_DFB4_RTS:
C - - - - - 0x001FC4 00:DFB4: 60        RTS
bra_DFB5:
C - - - - - 0x001FC5 00:DFB5: A5 28     LDA ram_cam_pos_X_lo
C - - - - - 0x001FC7 00:DFB7: 38        SEC
C - - - - - 0x001FC8 00:DFB8: E5 10     SBC ram_0010
C - - - - - 0x001FCA 00:DFBA: 85 11     STA ram_0011
C - - - - - 0x001FCC 00:DFBC: A5 29     LDA ram_cam_pos_X_hi
C - - - - - 0x001FCE 00:DFBE: E9 00     SBC #$00
C - - - - - 0x001FD0 00:DFC0: 90 06     BCC bra_DFC8_RTS
C - - - - - 0x001FD2 00:DFC2: 85 29     STA ram_cam_pos_X_hi
C - - - - - 0x001FD4 00:DFC4: A5 11     LDA ram_0011
C - - - - - 0x001FD6 00:DFC6: 85 28     STA ram_cam_pos_X_lo
bra_DFC8_RTS:
C - - - - - 0x001FD8 00:DFC8: 60        RTS
bra_DFC9:
C - - - - - 0x001FD9 00:DFC9: 8A        TXA
C - - - - - 0x001FDA 00:DFCA: 09 04     ORA #$04
C - - - - - 0x001FDC 00:DFCC: AA        TAX
loc_DFCD:
sub_DFCD:
C D 2 - - - 0x001FDD 00:DFCD: A0 01     LDY #$01
C - - - - - 0x001FDF 00:DFCF: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001FE1 00:DFD1: 18        CLC
C - - - - - 0x001FE2 00:DFD2: 7D 10 E0  ADC tbl_E010,X
C - - - - - 0x001FE5 00:DFD5: 0A        ASL
C - - - - - 0x001FE6 00:DFD6: 0A        ASL
C - - - - - 0x001FE7 00:DFD7: 0A        ASL
C - - - - - 0x001FE8 00:DFD8: 85 10     STA ram_0010
C - - - - - 0x001FEA 00:DFDA: A0 03     LDY #$03
C - - - - - 0x001FEC 00:DFDC: B1 1E     LDA (ram_001E),Y
C - - - - - 0x001FEE 00:DFDE: 90 02     BCC bra_DFE2
C - - - - - 0x001FF0 00:DFE0: 09 20     ORA #$20
bra_DFE2:
C - - - - - 0x001FF2 00:DFE2: 18        CLC
C - - - - - 0x001FF3 00:DFE3: 7D 11 E0  ADC tbl_E010 + $01,X
C - - - - - 0x001FF6 00:DFE6: 4A        LSR
C - - - - - 0x001FF7 00:DFE7: 66 10     ROR ram_0010
C - - - - - 0x001FF9 00:DFE9: 4A        LSR
C - - - - - 0x001FFA 00:DFEA: 66 10     ROR ram_0010
C - - - - - 0x001FFC 00:DFEC: 4A        LSR
C - - - - - 0x001FFD 00:DFED: 66 10     ROR ram_0010
C - - - - - 0x001FFF 00:DFEF: 09 20     ORA #$20
C - - - - - 0x002001 00:DFF1: 85 11     STA ram_0011
C - - - - - 0x002003 00:DFF3: A6 2B     LDX ram_002B
C - - - - - 0x002005 00:DFF5: A5 10     LDA ram_0010
C - - - - - 0x002007 00:DFF7: 9D C0 04  STA ram_ppu_buffer,X
C - - - - - 0x00200A 00:DFFA: E8        INX
C - - - - - 0x00200B 00:DFFB: A5 11     LDA ram_0011
C - - - - - 0x00200D 00:DFFD: 9D C0 04  STA ram_ppu_buffer,X
C - - - - - 0x002010 00:E000: E8        INX
C - - - - - 0x002011 00:E001: A5 1E     LDA ram_001E
C - - - - - 0x002013 00:E003: 9D C0 04  STA ram_ppu_buffer,X
C - - - - - 0x002016 00:E006: E8        INX
C - - - - - 0x002017 00:E007: A5 1F     LDA ram_001F
C - - - - - 0x002019 00:E009: 9D C0 04  STA ram_ppu_buffer,X
C - - - - - 0x00201C 00:E00C: E8        INX
C - - - - - 0x00201D 00:E00D: 86 2B     STX ram_002B
C - - - - - 0x00201F 00:E00F: 60        RTS



tbl_E010:
; 00
- D 3 - - - 0x002020 00:E010: 01        .byte $01   ; 
- D 3 - - - 0x002021 00:E011: 00        .byte $00   ; 
; 02
- D 3 - - - 0x002022 00:E012: 02        .byte $02   ; 
- D 3 - - - 0x002023 00:E013: 01        .byte $01   ; 
; 04 (00)
- D 3 - - - 0x002024 00:E014: 01        .byte $01   ; 
- D 3 - - - 0x002025 00:E015: 02        .byte $02   ; 
; 06 (02)
- D 3 - - - 0x002026 00:E016: 00        .byte $00   ; 
- D 3 - - - 0x002027 00:E017: 01        .byte $01   ; 



sub_E018:
C - - - - - 0x002028 00:E018: A0 00     LDY #$00
C - - - - - 0x00202A 00:E01A: A5 60     LDA ram_0060
C - - - - - 0x00202C 00:E01C: F0 02     BEQ bra_E020
C - - - - - 0x00202E 00:E01E: A0 04     LDY #$04
bra_E020:
C - - - - - 0x002030 00:E020: 84 10     STY ram_0010
C - - - - - 0x002032 00:E022: A0 05     LDY #$05
C - - - - - 0x002034 00:E024: B1 1E     LDA (ram_001E),Y
C - - - - - 0x002036 00:E026: F0 0A     BEQ bra_E032
C - - - - - 0x002038 00:E028: C9 03     CMP #$03
C - - - - - 0x00203A 00:E02A: 90 09     BCC bra_E035
C - - - - - 0x00203C 00:E02C: A5 64     LDA ram_0064
C - - - - - 0x00203E 00:E02E: 18        CLC
C - - - - - 0x00203F 00:E02F: 65 10     ADC ram_0010
C - - - - - 0x002041 00:E031: 60        RTS
bra_E032:
C - - - - - 0x002042 00:E032: A5 63     LDA ram_0063
C - - - - - 0x002044 00:E034: 60        RTS
bra_E035:
C - - - - - 0x002045 00:E035: A5 64     LDA ram_0064
C - - - - - 0x002047 00:E037: 18        CLC
C - - - - - 0x002048 00:E038: 69 04     ADC #$04
C - - - - - 0x00204A 00:E03A: 65 10     ADC ram_0010
C - - - - - 0x00204C 00:E03C: 60        RTS



loc_E03D:
C D 3 - - - 0x00204D 00:E03D: A0 0C     LDY #$0C
C - - - - - 0x00204F 00:E03F: B1 1E     LDA (ram_001E),Y
C - - - - - 0x002051 00:E041: 88        DEY
C - - - - - 0x002052 00:E042: 18        CLC
C - - - - - 0x002053 00:E043: 71 1E     ADC (ram_001E),Y
C - - - - - 0x002055 00:E045: 91 1E     STA (ram_001E),Y
C - - - - - 0x002057 00:E047: 0A        ASL
C - - - - - 0x002058 00:E048: 90 0B     BCC bra_E055
C - - - - - 0x00205A 00:E04A: 48        PHA
C - - - - - 0x00205B 00:E04B: A0 03     LDY #$03
C - - - - - 0x00205D 00:E04D: B1 1E     LDA (ram_001E),Y
C - - - - - 0x00205F 00:E04F: 38        SEC
C - - - - - 0x002060 00:E050: E9 01     SBC #$01
C - - - - - 0x002062 00:E052: 91 1E     STA (ram_001E),Y
C - - - - - 0x002064 00:E054: 68        PLA
bra_E055:
C - - - - - 0x002065 00:E055: A0 02     LDY #$02
C - - - - - 0x002067 00:E057: 18        CLC
C - - - - - 0x002068 00:E058: 71 1E     ADC (ram_001E),Y
C - - - - - 0x00206A 00:E05A: 91 1E     STA (ram_001E),Y
C - - - - - 0x00206C 00:E05C: C8        INY
C - - - - - 0x00206D 00:E05D: B1 1E     LDA (ram_001E),Y
C - - - - - 0x00206F 00:E05F: 69 00     ADC #$00
C - - - - - 0x002071 00:E061: 91 1E     STA (ram_001E),Y
C - - - - - 0x002073 00:E063: A9 30     LDA #$30
C - - - - - 0x002075 00:E065: A2 02     LDX #$02
C - - - - - 0x002077 00:E067: 4C 0B DF  JMP loc_DF0B



sub_E06A:
C - - - - - 0x00207A 00:E06A: 20 18 E0  JSR sub_E018
C - - - - - 0x00207D 00:E06D: 18        CLC
C - - - - - 0x00207E 00:E06E: 69 20     ADC #$20
C - - - - - 0x002080 00:E070: A0 02     LDY #$02
C - - - - - 0x002082 00:E072: 71 1E     ADC (ram_001E),Y
C - - - - - 0x002084 00:E074: 91 1E     STA (ram_001E),Y
C - - - - - 0x002086 00:E076: 90 2B     BCC bra_E0A3
C - - - - - 0x002088 00:E078: C8        INY
C - - - - - 0x002089 00:E079: B1 1E     LDA (ram_001E),Y
C - - - - - 0x00208B 00:E07B: 69 00     ADC #$00
C - - - - - 0x00208D 00:E07D: 91 1E     STA (ram_001E),Y
C - - - - - 0x00208F 00:E07F: A2 04     LDX #$04
C - - - - - 0x002091 00:E081: 4C A0 E0  JMP loc_E0A0



loc_E084:
C D 3 - - - 0x002094 00:E084: 20 18 E0  JSR sub_E018
C - - - - - 0x002097 00:E087: 18        CLC
C - - - - - 0x002098 00:E088: 69 20     ADC #$20
loc_E08A:
C D 3 - - - 0x00209A 00:E08A: 85 10     STA ram_0010
C - - - - - 0x00209C 00:E08C: A0 02     LDY #$02
C - - - - - 0x00209E 00:E08E: B1 1E     LDA (ram_001E),Y
C - - - - - 0x0020A0 00:E090: 38        SEC
C - - - - - 0x0020A1 00:E091: E5 10     SBC ram_0010
C - - - - - 0x0020A3 00:E093: 91 1E     STA (ram_001E),Y
C - - - - - 0x0020A5 00:E095: B0 0C     BCS bra_E0A3
C - - - - - 0x0020A7 00:E097: C8        INY
C - - - - - 0x0020A8 00:E098: B1 1E     LDA (ram_001E),Y
C - - - - - 0x0020AA 00:E09A: E9 00     SBC #$00
C - - - - - 0x0020AC 00:E09C: 91 1E     STA (ram_001E),Y
C - - - - - 0x0020AE 00:E09E: A2 00     LDX #$00
loc_E0A0:
C D 3 - - - 0x0020B0 00:E0A0: 20 CD DF  JSR sub_DFCD
bra_E0A3:
C - - - - - 0x0020B3 00:E0A3: A0 0D     LDY #$0D
C - - - - - 0x0020B5 00:E0A5: B1 1E     LDA (ram_001E),Y
C - - - - - 0x0020B7 00:E0A7: F0 04     BEQ bra_E0AD
C - - - - - 0x0020B9 00:E0A9: A0 06     LDY #$06
C - - - - - 0x0020BB 00:E0AB: 91 1E     STA (ram_001E),Y
bra_E0AD:
C - - - - - 0x0020BD 00:E0AD: A0 07     LDY #$07
C - - - - - 0x0020BF 00:E0AF: B1 1E     LDA (ram_001E),Y
C - - - - - 0x0020C1 00:E0B1: 18        CLC
C - - - - - 0x0020C2 00:E0B2: 69 01     ADC #$01
C - - - - - 0x0020C4 00:E0B4: 91 1E     STA (ram_001E),Y
C - - - - - 0x0020C6 00:E0B6: 60        RTS



sub_E0B7:
C - - - - - 0x0020C7 00:E0B7: A5 1E     LDA ram_001E
C - - - - - 0x0020C9 00:E0B9: D0 44     BNE bra_E0FF
C - - - - - 0x0020CB 00:E0BB: A5 2E     LDA ram_002E
C - - - - - 0x0020CD 00:E0BD: D0 40     BNE bra_E0FF
C - - - - - 0x0020CF 00:E0BF: A2 10     LDX #$10
bra_E0C1_loop:
C - - - - - 0x0020D1 00:E0C1: BD 0F 04  LDA ram_040F,X
C - - - - - 0x0020D4 00:E0C4: C9 02     CMP #$02
C - - - - - 0x0020D6 00:E0C6: D0 2E     BNE bra_E0F6
C - - - - - 0x0020D8 00:E0C8: E0 20     CPX #$20
C - - - - - 0x0020DA 00:E0CA: D0 05     BNE bra_E0D1
C - - - - - 0x0020DC 00:E0CC: AD 2A 04  LDA ram_042A
C - - - - - 0x0020DF 00:E0CF: D0 25     BNE bra_E0F6
bra_E0D1:
C - - - - - 0x0020E1 00:E0D1: BD 03 04  LDA ram_0403,X
C - - - - - 0x0020E4 00:E0D4: CD 03 04  CMP ram_0403
C - - - - - 0x0020E7 00:E0D7: D0 1D     BNE bra_E0F6
C - - - - - 0x0020E9 00:E0D9: BD 00 04  LDA ram_obj_data_1,X
C - - - - - 0x0020EC 00:E0DC: 38        SEC
C - - - - - 0x0020ED 00:E0DD: ED 00 04  SBC ram_obj_data_1
C - - - - - 0x0020F0 00:E0E0: BD 01 04  LDA ram_0401,X
C - - - - - 0x0020F3 00:E0E3: ED 01 04  SBC ram_0401
C - - - - - 0x0020F6 00:E0E6: 18        CLC
C - - - - - 0x0020F7 00:E0E7: 69 01     ADC #$01
C - - - - - 0x0020F9 00:E0E9: C9 02     CMP #$02
C - - - - - 0x0020FB 00:E0EB: B0 09     BCS bra_E0F6
C - - - - - 0x0020FD 00:E0ED: BD 06 04  LDA ram_0406,X
C - - - - - 0x002100 00:E0F0: 8D 06 04  STA ram_0406
C - - - - - 0x002103 00:E0F3: A9 00     LDA #$00
C - - - - - 0x002105 00:E0F5: 60        RTS
bra_E0F6:
C - - - - - 0x002106 00:E0F6: 8A        TXA
C - - - - - 0x002107 00:E0F7: 18        CLC
C - - - - - 0x002108 00:E0F8: 69 10     ADC #$10
C - - - - - 0x00210A 00:E0FA: AA        TAX
C - - - - - 0x00210B 00:E0FB: E0 90     CPX #$90
C - - - - - 0x00210D 00:E0FD: D0 C2     BNE bra_E0C1_loop
bra_E0FF:
C - - - - - 0x00210F 00:E0FF: A9 FF     LDA #$FF
C - - - - - 0x002111 00:E101: 60        RTS



sub_E102:
C - - - - - 0x002112 00:E102: A5 1E     LDA ram_001E
C - - - - - 0x002114 00:E104: D0 2B     BNE bra_E131
C - - - - - 0x002116 00:E106: AD 12 04  LDA ram_0412
C - - - - - 0x002119 00:E109: 38        SEC
C - - - - - 0x00211A 00:E10A: ED 02 04  SBC ram_0402
C - - - - - 0x00211D 00:E10D: AD 13 04  LDA ram_0413
C - - - - - 0x002120 00:E110: ED 03 04  SBC ram_0403
C - - - - - 0x002123 00:E113: 18        CLC
C - - - - - 0x002124 00:E114: 69 01     ADC #$01
C - - - - - 0x002126 00:E116: C9 02     CMP #$02
C - - - - - 0x002128 00:E118: B0 17     BCS bra_E131
C - - - - - 0x00212A 00:E11A: AD 10 04  LDA ram_0410
C - - - - - 0x00212D 00:E11D: 38        SEC
C - - - - - 0x00212E 00:E11E: ED 00 04  SBC ram_obj_data_1
C - - - - - 0x002131 00:E121: AD 11 04  LDA ram_0411
C - - - - - 0x002134 00:E124: ED 01 04  SBC ram_0401
C - - - - - 0x002137 00:E127: 18        CLC
C - - - - - 0x002138 00:E128: 69 01     ADC #$01
C - - - - - 0x00213A 00:E12A: C9 02     CMP #$02
C - - - - - 0x00213C 00:E12C: B0 03     BCS bra_E131
C - - - - - 0x00213E 00:E12E: A9 00     LDA #$00
C - - - - - 0x002140 00:E130: 60        RTS
bra_E131:
C - - - - - 0x002141 00:E131: A9 FF     LDA #$FF
C - - - - - 0x002143 00:E133: 60        RTS



sub_E134:
C - - - - - 0x002144 00:E134: A2 20     LDX #$20
bra_E136_loop:
C - - - - - 0x002146 00:E136: BD 0F 04  LDA ram_040F,X
C - - - - - 0x002149 00:E139: C9 02     CMP #$02
C - - - - - 0x00214B 00:E13B: D0 33     BNE bra_E170
C - - - - - 0x00214D 00:E13D: BD 03 04  LDA ram_0403,X
C - - - - - 0x002150 00:E140: CD 03 04  CMP ram_0403
C - - - - - 0x002153 00:E143: D0 2B     BNE bra_E170
C - - - - - 0x002155 00:E145: BD 00 04  LDA ram_obj_data_1,X
C - - - - - 0x002158 00:E148: 38        SEC
C - - - - - 0x002159 00:E149: ED 00 04  SBC ram_obj_data_1
C - - - - - 0x00215C 00:E14C: BD 01 04  LDA ram_0401,X
C - - - - - 0x00215F 00:E14F: ED 01 04  SBC ram_0401
C - - - - - 0x002162 00:E152: 18        CLC
C - - - - - 0x002163 00:E153: 69 01     ADC #$01
C - - - - - 0x002165 00:E155: C9 02     CMP #$02
C - - - - - 0x002167 00:E157: B0 17     BCS bra_E170
C - - - - - 0x002169 00:E159: AD 06 04  LDA ram_0406
C - - - - - 0x00216C 00:E15C: 9D 06 04  STA ram_0406,X
C - - - - - 0x00216F 00:E15F: A9 0C     LDA #$0C
C - - - - - 0x002171 00:E161: 9D 04 04  STA ram_0404,X
C - - - - - 0x002174 00:E164: A9 10     LDA #$10
C - - - - - 0x002176 00:E166: 9D 0F 04  STA ram_040F,X
C - - - - - 0x002179 00:E169: A9 08     LDA #$08
C - - - - - 0x00217B 00:E16B: 9D 07 04  STA ram_0407,X
C - - - - - 0x00217E 00:E16E: E6 30     INC ram_0030
bra_E170:
C - - - - - 0x002180 00:E170: 8A        TXA
C - - - - - 0x002181 00:E171: 18        CLC
C - - - - - 0x002182 00:E172: 69 01     ADC #$01    ; bzk optimize, INX
C - - - - - 0x002184 00:E174: AA        TAX
C - - - - - 0x002185 00:E175: E0 90     CPX #$90
C - - - - - 0x002187 00:E177: D0 BD     BNE bra_E136_loop
C - - - - - 0x002189 00:E179: 60        RTS



tbl_E17A:
- D 3 - - - 0x00218A 00:E17A: 4F C1     .word ofs_002_C14F_00_RTS
- D 3 - - - 0x00218C 00:E17C: 9D E1     .word ofs_002_E19D_01
- D 3 - - - 0x00218E 00:E17E: 9C E1     .word ofs_002_E19C_02_RTS
- D 3 - - - 0x002190 00:E180: 00 E2     .word ofs_002_E200_03
- D 3 - - - 0x002192 00:E182: 30 E2     .word ofs_002_E230_04
- D 3 - - - 0x002194 00:E184: A1 E2     .word ofs_002_E2A1_05
- D 3 - - - 0x002196 00:E186: AC E2     .word ofs_002_E2AC_06
- D 3 - - - 0x002198 00:E188: EE E2     .word ofs_002_E2EE_07
- - - - - - 0x00219A 00:E18A: E0 E2     .word ofs_002_E2E0_08
- D 3 - - - 0x00219C 00:E18C: 39 E3     .word ofs_002_E339_09



bra_E18E:
sub_E18E:
C - - - - - 0x00219E 00:E18E: A9 00     LDA #$00
C - - - - - 0x0021A0 00:E190: 8D 07 04  STA ram_0407
C - - - - - 0x0021A3 00:E193: A9 01     LDA #$01
C - - - - - 0x0021A5 00:E195: 85 4B     STA ram_004B
C - - - - - 0x0021A7 00:E197: A9 04     LDA #$04
C - - - - - 0x0021A9 00:E199: 8D 0F 04  STA ram_040F
ofs_002_E19C_02_RTS:
C - - - - - 0x0021AC 00:E19C: 60        RTS



ofs_002_E19D_01:
C - - J - - 0x0021AD 00:E19D: A0 08     LDY #$08
C - - - - - 0x0021AF 00:E19F: B1 1E     LDA (ram_001E),Y
C - - - - - 0x0021B1 00:E1A1: 38        SEC
C - - - - - 0x0021B2 00:E1A2: E9 49     SBC #$49
C - - - - - 0x0021B4 00:E1A4: C9 07     CMP #$07
C - - - - - 0x0021B6 00:E1A6: 90 E6     BCC bra_E18E
C - - - - - 0x0021B8 00:E1A8: A0 03     LDY #$03
C - - - - - 0x0021BA 00:E1AA: B1 1E     LDA (ram_001E),Y
C - - - - - 0x0021BC 00:E1AC: C9 1C     CMP #$1C
C - - - - - 0x0021BE 00:E1AE: B0 DE     BCS bra_E18E
C - - - - - 0x0021C0 00:E1B0: 20 6A E0  JSR sub_E06A
C - - - - - 0x0021C3 00:E1B3: 20 69 E4  JSR sub_E469
C - - - - - 0x0021C6 00:E1B6: B0 28     BCS bra_E1E0_RTS
C - - - - - 0x0021C8 00:E1B8: A0 05     LDY #$05
C - - - - - 0x0021CA 00:E1BA: B1 1E     LDA (ram_001E),Y
C - - - - - 0x0021CC 00:E1BC: D0 23     BNE bra_E1E1
C - - - - - 0x0021CE 00:E1BE: 86 18     STX ram_0018
C - - - - - 0x0021D0 00:E1C0: A9 01     LDA #$01
C - - - - - 0x0021D2 00:E1C2: 8D 0A 06  STA ram_060A
C - - - - - 0x0021D5 00:E1C5: A0 3C     LDY #$3C
C - - - - - 0x0021D7 00:E1C7: 20 CA D4  JSR sub_D4CA
C - - - - - 0x0021DA 00:E1CA: A6 18     LDX ram_0018
C - - - - - 0x0021DC 00:E1CC: BD 02 02  LDA ram_0202,X
C - - - - - 0x0021DF 00:E1CF: D0 10     BNE bra_E1E1
C - - - - - 0x0021E1 00:E1D1: A9 01     LDA #$01
C - - - - - 0x0021E3 00:E1D3: 9D 00 02  STA ram_0200,X
C - - - - - 0x0021E6 00:E1D6: A9 09     LDA #$09
C - - - - - 0x0021E8 00:E1D8: 9D 01 02  STA ram_0201,X
C - - - - - 0x0021EB 00:E1DB: A9 80     LDA #$80
C - - - - - 0x0021ED 00:E1DD: 9D 02 02  STA ram_0202,X
bra_E1E0_RTS:
C - - - - - 0x0021F0 00:E1E0: 60        RTS
bra_E1E1:
C - - - - - 0x0021F1 00:E1E1: A0 01     LDY #$01
C - - - - - 0x0021F3 00:E1E3: BD 01 02  LDA ram_0201,X
C - - - - - 0x0021F6 00:E1E6: C9 08     CMP #$08
C - - - - - 0x0021F8 00:E1E8: 90 01     BCC bra_E1EB
- - - - - - 0x0021FA 00:E1EA: C8        INY
bra_E1EB:
C - - - - - 0x0021FB 00:E1EB: 98        TYA
C - - - - - 0x0021FC 00:E1EC: 9D 00 02  STA ram_0200,X
C - - - - - 0x0021FF 00:E1EF: 8A        TXA
C - - - - - 0x002200 00:E1F0: A0 0B     LDY #$0B
C - - - - - 0x002202 00:E1F2: 91 1E     STA (ram_001E),Y
C - - - - - 0x002204 00:E1F4: A9 00     LDA #$00
C - - - - - 0x002206 00:E1F6: A0 07     LDY #$07
C - - - - - 0x002208 00:E1F8: 91 1E     STA (ram_001E),Y
C - - - - - 0x00220A 00:E1FA: A9 06     LDA #$06
C - - - - - 0x00220C 00:E1FC: A0 0F     LDY #$0F
C - - - - - 0x00220E 00:E1FE: 91 1E     STA (ram_001E),Y
ofs_002_E200_03:
C - - - - - 0x002210 00:E200: A0 0B     LDY #$0B
C - - - - - 0x002212 00:E202: B1 1E     LDA (ram_001E),Y
C - - - - - 0x002214 00:E204: AA        TAX
C - - - - - 0x002215 00:E205: 20 A4 E4  JSR sub_E4A4
C - - - - - 0x002218 00:E208: BD 02 02  LDA ram_0202,X
C - - - - - 0x00221B 00:E20B: 30 50     BMI bra_E25D
C - - - - - 0x00221D 00:E20D: BD 01 02  LDA ram_0201,X
C - - - - - 0x002220 00:E210: C9 07     CMP #$07
C - - - - - 0x002222 00:E212: D0 1B     BNE bra_E22F_RTS
C - - - - - 0x002224 00:E214: A0 05     LDY #$05
C - - - - - 0x002226 00:E216: B1 1E     LDA (ram_001E),Y
C - - - - - 0x002228 00:E218: D0 03     BNE bra_E21D
C - - - - - 0x00222A 00:E21A: DE 02 02  DEC ram_0202,X
bra_E21D:
C - - - - - 0x00222D 00:E21D: A9 00     LDA #$00
C - - - - - 0x00222F 00:E21F: A0 08     LDY #$08
C - - - - - 0x002231 00:E221: 91 1E     STA (ram_001E),Y
C - - - - - 0x002233 00:E223: A9 08     LDA #$08
C - - - - - 0x002235 00:E225: A0 0F     LDY #$0F
C - - - - - 0x002237 00:E227: 91 1E     STA (ram_001E),Y
C - - - - - 0x002239 00:E229: A9 06     LDA #$06
C - - - - - 0x00223B 00:E22B: A0 04     LDY #$04
C - - - - - 0x00223D 00:E22D: 91 1E     STA (ram_001E),Y
bra_E22F_RTS:
C - - - - - 0x00223F 00:E22F: 60        RTS



ofs_002_E230_04:
C - - J - - 0x002240 00:E230: A0 03     LDY #$03
C - - - - - 0x002242 00:E232: B1 1E     LDA (ram_001E),Y
C - - - - - 0x002244 00:E234: C9 08     CMP #$08
C - - - - - 0x002246 00:E236: 90 0F     BCC bra_E247
C - - - - - 0x002248 00:E238: 29 03     AND #$03
C - - - - - 0x00224A 00:E23A: 38        SEC
C - - - - - 0x00224B 00:E23B: E9 01     SBC #$01
C - - - - - 0x00224D 00:E23D: C9 02     CMP #$02
C - - - - - 0x00224F 00:E23F: B0 06     BCS bra_E247
C - - - - - 0x002251 00:E241: A0 0D     LDY #$0D
C - - - - - 0x002253 00:E243: B1 1E     LDA (ram_001E),Y
C - - - - - 0x002255 00:E245: D0 29     BNE bra_E270
bra_E247:
C - - - - - 0x002257 00:E247: A0 08     LDY #$08
C - - - - - 0x002259 00:E249: B1 1E     LDA (ram_001E),Y
C - - - - - 0x00225B 00:E24B: 38        SEC
C - - - - - 0x00225C 00:E24C: E9 30     SBC #$30
C - - - - - 0x00225E 00:E24E: C9 20     CMP #$20
C - - - - - 0x002260 00:E250: 90 0B     BCC bra_E25D
C - - - - - 0x002262 00:E252: A0 03     LDY #$03
C - - - - - 0x002264 00:E254: B1 1E     LDA (ram_001E),Y
C - - - - - 0x002266 00:E256: C9 06     CMP #$06
C - - - - - 0x002268 00:E258: 90 03     BCC bra_E25D
C - - - - - 0x00226A 00:E25A: 4C 84 E0  JMP loc_E084
bra_E25D:   ; bzk optimize, 2 branches here from other routines, better replace with JMPs
C - - - - - 0x00226D 00:E25D: A9 00     LDA #$00
C - - - - - 0x00226F 00:E25F: A0 08     LDY #$08
C - - - - - 0x002271 00:E261: 91 1E     STA (ram_001E),Y
C - - - - - 0x002273 00:E263: A9 02     LDA #$02
C - - - - - 0x002275 00:E265: A0 0F     LDY #$0F
C - - - - - 0x002277 00:E267: 91 1E     STA (ram_001E),Y
C - - - - - 0x002279 00:E269: A9 06     LDA #$06
C - - - - - 0x00227B 00:E26B: A0 04     LDY #$04
C - - - - - 0x00227D 00:E26D: 91 1E     STA (ram_001E),Y
C - - - - - 0x00227F 00:E26F: 60        RTS
bra_E270:
C - - - - - 0x002280 00:E270: A0 06     LDY #$06
C - - - - - 0x002282 00:E272: 91 1E     STA (ram_001E),Y
C - - - - - 0x002284 00:E274: A0 03     LDY #$03
C - - - - - 0x002286 00:E276: B1 1E     LDA (ram_001E),Y
C - - - - - 0x002288 00:E278: 29 FE     AND #$FE
C - - - - - 0x00228A 00:E27A: 09 02     ORA #$02
C - - - - - 0x00228C 00:E27C: 91 1E     STA (ram_001E),Y
C - - - - - 0x00228E 00:E27E: 88        DEY
C - - - - - 0x00228F 00:E27F: A9 00     LDA #$00
C - - - - - 0x002291 00:E281: 91 1E     STA (ram_001E),Y
C - - - - - 0x002293 00:E283: A9 21     LDA #$21
C - - - - - 0x002295 00:E285: A0 07     LDY #$07
C - - - - - 0x002297 00:E287: 91 1E     STA (ram_001E),Y
C - - - - - 0x002299 00:E289: A9 E0     LDA #$E0
C - - - - - 0x00229B 00:E28B: A0 0B     LDY #$0B
C - - - - - 0x00229D 00:E28D: 91 1E     STA (ram_001E),Y
C - - - - - 0x00229F 00:E28F: A9 02     LDA #$02
C - - - - - 0x0022A1 00:E291: C8        INY
C - - - - - 0x0022A2 00:E292: 91 1E     STA (ram_001E),Y
C - - - - - 0x0022A4 00:E294: A9 0A     LDA #$0A
C - - - - - 0x0022A6 00:E296: A0 0F     LDY #$0F
C - - - - - 0x0022A8 00:E298: 91 1E     STA (ram_001E),Y
C - - - - - 0x0022AA 00:E29A: A9 04     LDA #$04
C - - - - - 0x0022AC 00:E29C: A0 04     LDY #$04
C - - - - - 0x0022AE 00:E29E: 91 1E     STA (ram_001E),Y
C - - - - - 0x0022B0 00:E2A0: 60        RTS



ofs_002_E2A1_05:
C - - J - - 0x0022B1 00:E2A1: A0 08     LDY #$08
C - - - - - 0x0022B3 00:E2A3: B1 1E     LDA (ram_001E),Y
C - - - - - 0x0022B5 00:E2A5: 38        SEC
C - - - - - 0x0022B6 00:E2A6: E9 49     SBC #$49
C - - - - - 0x0022B8 00:E2A8: C9 10     CMP #$10
C - - - - - 0x0022BA 00:E2AA: 90 0E     BCC bra_E2BA
ofs_002_E2AC_06:
C - - - - - 0x0022BC 00:E2AC: A0 07     LDY #$07
C - - - - - 0x0022BE 00:E2AE: B1 1E     LDA (ram_001E),Y
C - - - - - 0x0022C0 00:E2B0: 38        SEC
C - - - - - 0x0022C1 00:E2B1: E9 01     SBC #$01
C - - - - - 0x0022C3 00:E2B3: 91 1E     STA (ram_001E),Y
C - - - - - 0x0022C5 00:E2B5: F0 A6     BEQ bra_E25D
C - - - - - 0x0022C7 00:E2B7: 4C 3D E0  JMP loc_E03D
bra_E2BA:
C - - - - - 0x0022CA 00:E2BA: A9 00     LDA #$00
C - - - - - 0x0022CC 00:E2BC: 38        SEC
C - - - - - 0x0022CD 00:E2BD: A0 06     LDY #$06
C - - - - - 0x0022CF 00:E2BF: F1 1E     SBC (ram_001E),Y
C - - - - - 0x0022D1 00:E2C1: 91 1E     STA (ram_001E),Y
C - - - - - 0x0022D3 00:E2C3: A9 06     LDA #$06
C - - - - - 0x0022D5 00:E2C5: C8        INY
C - - - - - 0x0022D6 00:E2C6: 91 1E     STA (ram_001E),Y
C - - - - - 0x0022D8 00:E2C8: A9 00     LDA #$00
C - - - - - 0x0022DA 00:E2CA: A0 0B     LDY #$0B
C - - - - - 0x0022DC 00:E2CC: 91 1E     STA (ram_001E),Y
C - - - - - 0x0022DE 00:E2CE: A9 09     LDA #$09
C - - - - - 0x0022E0 00:E2D0: C8        INY
C - - - - - 0x0022E1 00:E2D1: 91 1E     STA (ram_001E),Y
C - - - - - 0x0022E3 00:E2D3: A9 0C     LDA #$0C
C - - - - - 0x0022E5 00:E2D5: A0 0F     LDY #$0F
C - - - - - 0x0022E7 00:E2D7: 91 1E     STA (ram_001E),Y
C - - - - - 0x0022E9 00:E2D9: A9 04     LDA #$04
C - - - - - 0x0022EB 00:E2DB: A0 04     LDY #$04
C - - - - - 0x0022ED 00:E2DD: 91 1E     STA (ram_001E),Y
C - - - - - 0x0022EF 00:E2DF: 60        RTS



ofs_002_E2E0_08:
- - - - - - 0x0022F0 00:E2E0: CE 37 04  DEC ram_0437
- - - - - - 0x0022F3 00:E2E3: D0 08     BNE bra_E2ED_RTS
- - - - - - 0x0022F5 00:E2E5: A9 00     LDA #$00
- - - - - - 0x0022F7 00:E2E7: 8D 34 04  STA ram_0434
- - - - - - 0x0022FA 00:E2EA: 8D 3F 04  STA ram_043F
bra_E2ED_RTS:
- - - - - - 0x0022FD 00:E2ED: 60        RTS



ofs_002_E2EE_07:
C - - J - - 0x0022FE 00:E2EE: AD 13 04  LDA ram_0413
C - - - - - 0x002301 00:E2F1: CD 03 04  CMP ram_0403
C - - - - - 0x002304 00:E2F4: D0 3B     BNE bra_E331_RTS
C - - - - - 0x002306 00:E2F6: AD 11 04  LDA ram_0411
C - - - - - 0x002309 00:E2F9: 38        SEC
C - - - - - 0x00230A 00:E2FA: ED 01 04  SBC ram_0401
C - - - - - 0x00230D 00:E2FD: C9 02     CMP #$02
C - - - - - 0x00230F 00:E2FF: B0 30     BCS bra_E331_RTS
C - - - - - 0x002311 00:E301: E6 51     INC ram_0051
C - - - - - 0x002313 00:E303: A9 20     LDA #$20
C - - - - - 0x002315 00:E305: 85 5A     STA ram_005A
C - - - - - 0x002317 00:E307: 20 BF F4  JSR sub_F4BF
C - - - - - 0x00231A 00:E30A: A9 01     LDA #$01
C - - - - - 0x00231C 00:E30C: 8D 06 06  STA ram_0606
C - - - - - 0x00231F 00:E30F: A9 00     LDA #$00
C - - - - - 0x002321 00:E311: 8D 14 04  STA ram_0414
C - - - - - 0x002324 00:E314: 8D 1F 04  STA ram_041F
C - - - - - 0x002327 00:E317: 20 8E E1  JSR sub_E18E
C - - - - - 0x00232A 00:E31A: A9 12     LDA #$12
C - - - - - 0x00232C 00:E31C: 8D 2F 04  STA ram_042F
C - - - - - 0x00232F 00:E31F: A2 00     LDX #$00
bra_E321_loop:
C - - - - - 0x002331 00:E321: BD 32 E3  LDA tbl_E332,X
C - - - - - 0x002334 00:E324: 9D 20 04  STA ram_0420,X
C - - - - - 0x002337 00:E327: E8        INX
C - - - - - 0x002338 00:E328: E0 07     CPX #$07
C - - - - - 0x00233A 00:E32A: D0 F5     BNE bra_E321_loop
C - - - - - 0x00233C 00:E32C: A9 00     LDA #$00
C - - - - - 0x00233E 00:E32E: 8D 2B 04  STA ram_042B
bra_E331_RTS:
C - - - - - 0x002341 00:E331: 60        RTS



tbl_E332:
- D 3 - - - 0x002342 00:E332: 00        .byte $00   ; 00
- D 3 - - - 0x002343 00:E333: 05        .byte $05   ; 01
- D 3 - - - 0x002344 00:E334: 00        .byte $00   ; 02
- D 3 - - - 0x002345 00:E335: 18        .byte $18   ; 03
- D 3 - - - 0x002346 00:E336: 06        .byte $06   ; 04
- D 3 - - - 0x002347 00:E337: 02        .byte $02   ; 05
- D 3 - - - 0x002348 00:E338: FF        .byte $FF   ; 06



ofs_002_E339_09:
C - - J - - 0x002349 00:E339: AD 28 04  LDA ram_0428
C - - - - - 0x00234C 00:E33C: 38        SEC
C - - - - - 0x00234D 00:E33D: E9 30     SBC #$30
C - - - - - 0x00234F 00:E33F: C9 19     CMP #$19
C - - - - - 0x002351 00:E341: B0 03     BCS bra_E346
C - - - - - 0x002353 00:E343: 20 56 E4  JSR sub_E456
bra_E346:
C - - - - - 0x002356 00:E346: AD 23 04  LDA ram_0423
C - - - - - 0x002359 00:E349: C9 06     CMP #$06
C - - - - - 0x00235B 00:E34B: 90 05     BCC bra_E352
C - - - - - 0x00235D 00:E34D: A9 40     LDA #$40
C - - - - - 0x00235F 00:E34F: 4C 8A E0  JMP loc_E08A
bra_E352:
C - - - - - 0x002362 00:E352: A9 00     LDA #$00
C - - - - - 0x002364 00:E354: 8D 24 04  STA ram_0424
C - - - - - 0x002367 00:E357: 8D 2F 04  STA ram_042F
C - - - - - 0x00236A 00:E35A: 60        RTS



sub_E35B:
C - - - - - 0x00236B 00:E35B: A6 7A     LDX ram_current_round
C - - - - - 0x00236D 00:E35D: BC E1 E4  LDY tbl_E4E1,X
C - - - - - 0x002370 00:E360: B9 F1 E4  LDA tbl_E4F1,Y
C - - - - - 0x002373 00:E363: 85 1C     STA ram_001C
C - - - - - 0x002375 00:E365: B9 F2 E4  LDA tbl_E4F1 + $01,Y
C - - - - - 0x002378 00:E368: 85 1D     STA ram_001D
C - - - - - 0x00237A 00:E36A: A0 00     LDY #$00
C - - - - - 0x00237C 00:E36C: B1 1C     LDA (ram_001C),Y
C - - - - - 0x00237E 00:E36E: C8        INY
C - - - - - 0x00237F 00:E36F: 85 80     STA ram_0080
C - - - - - 0x002381 00:E371: A2 00     LDX #$00
bra_E373_loop:
C - - - - - 0x002383 00:E373: A9 00     LDA #$00
C - - - - - 0x002385 00:E375: 9D 00 02  STA ram_0200,X
C - - - - - 0x002388 00:E378: 9D 01 02  STA ram_0201,X
C - - - - - 0x00238B 00:E37B: A9 03     LDA #$03
C - - - - - 0x00238D 00:E37D: 9D 02 02  STA ram_0202,X
C - - - - - 0x002390 00:E380: B1 1C     LDA (ram_001C),Y
C - - - - - 0x002392 00:E382: C8        INY
C - - - - - 0x002393 00:E383: 84 1B     STY ram_001B
C - - - - - 0x002395 00:E385: 9D 03 02  STA ram_0203,X
C - - - - - 0x002398 00:E388: A8        TAY
C - - - - - 0x002399 00:E389: B9 37 E5  LDA tbl_E537,Y
C - - - - - 0x00239C 00:E38C: 85 10     STA ram_0010
C - - - - - 0x00239E 00:E38E: B9 38 E5  LDA tbl_E538,Y
C - - - - - 0x0023A1 00:E391: 85 11     STA ram_0011
C - - - - - 0x0023A3 00:E393: 20 BD E3  JSR sub_E3BD
C - - - - - 0x0023A6 00:E396: A5 10     LDA ram_0010
C - - - - - 0x0023A8 00:E398: 9D 04 02  STA ram_0204,X
C - - - - - 0x0023AB 00:E39B: A5 11     LDA ram_0011
C - - - - - 0x0023AD 00:E39D: 9D 05 02  STA ram_0205,X
C - - - - - 0x0023B0 00:E3A0: A4 1B     LDY ram_001B
C - - - - - 0x0023B2 00:E3A2: 8A        TXA
C - - - - - 0x0023B3 00:E3A3: 18        CLC
C - - - - - 0x0023B4 00:E3A4: 69 08     ADC #$08
C - - - - - 0x0023B6 00:E3A6: AA        TAX
C - - - - - 0x0023B7 00:E3A7: E4 80     CPX ram_0080
C - - - - - 0x0023B9 00:E3A9: D0 C8     BNE bra_E373_loop
C - - - - - 0x0023BB 00:E3AB: A2 00     LDX #$00
bra_E3AD_loop:
C - - - - - 0x0023BD 00:E3AD: 86 1B     STX ram_001B
C - - - - - 0x0023BF 00:E3AF: 20 27 E4  JSR sub_E427
C - - - - - 0x0023C2 00:E3B2: A5 1B     LDA ram_001B
C - - - - - 0x0023C4 00:E3B4: 18        CLC
C - - - - - 0x0023C5 00:E3B5: 69 08     ADC #$08
C - - - - - 0x0023C7 00:E3B7: AA        TAX
C - - - - - 0x0023C8 00:E3B8: E4 80     CPX ram_0080
C - - - - - 0x0023CA 00:E3BA: D0 F1     BNE bra_E3AD_loop
C - - - - - 0x0023CC 00:E3BC: 60        RTS



sub_E3BD:
C - - - - - 0x0023CD 00:E3BD: A5 10     LDA ram_0010
C - - - - - 0x0023CF 00:E3BF: 29 1F     AND #$1F
C - - - - - 0x0023D1 00:E3C1: 06 10     ASL ram_0010
C - - - - - 0x0023D3 00:E3C3: 26 11     ROL ram_0011
C - - - - - 0x0023D5 00:E3C5: 06 10     ASL ram_0010
C - - - - - 0x0023D7 00:E3C7: 26 11     ROL ram_0011
C - - - - - 0x0023D9 00:E3C9: 06 10     ASL ram_0010
C - - - - - 0x0023DB 00:E3CB: 26 11     ROL ram_0011
C - - - - - 0x0023DD 00:E3CD: 85 10     STA ram_0010
C - - - - - 0x0023DF 00:E3CF: A5 11     LDA ram_0011
C - - - - - 0x0023E1 00:E3D1: 29 20     AND #$20
C - - - - - 0x0023E3 00:E3D3: 05 10     ORA ram_0010
C - - - - - 0x0023E5 00:E3D5: 85 10     STA ram_0010
C - - - - - 0x0023E7 00:E3D7: A5 11     LDA ram_0011
C - - - - - 0x0023E9 00:E3D9: 29 1F     AND #$1F
C - - - - - 0x0023EB 00:E3DB: 85 11     STA ram_0011
C - - - - - 0x0023ED 00:E3DD: 60        RTS



sub_E3DE:
C - - - - - 0x0023EE 00:E3DE: A2 00     LDX #$00
bra_E3E0_loop:
C - - - - - 0x0023F0 00:E3E0: 86 1B     STX ram_001B
C - - - - - 0x0023F2 00:E3E2: BD 02 02  LDA ram_0202,X
C - - - - - 0x0023F5 00:E3E5: 30 0C     BMI bra_E3F3
C - - - - - 0x0023F7 00:E3E7: C9 03     CMP #$03
C - - - - - 0x0023F9 00:E3E9: F0 08     BEQ bra_E3F3
C - - - - - 0x0023FB 00:E3EB: A9 03     LDA #$03
C - - - - - 0x0023FD 00:E3ED: 9D 02 02  STA ram_0202,X
C - - - - - 0x002400 00:E3F0: 20 27 E4  JSR sub_E427
bra_E3F3:
C - - - - - 0x002403 00:E3F3: A5 1B     LDA ram_001B
C - - - - - 0x002405 00:E3F5: 18        CLC
C - - - - - 0x002406 00:E3F6: 69 08     ADC #$08
C - - - - - 0x002408 00:E3F8: AA        TAX
C - - - - - 0x002409 00:E3F9: E4 80     CPX ram_0080
C - - - - - 0x00240B 00:E3FB: D0 E3     BNE bra_E3E0_loop
C - - - - - 0x00240D 00:E3FD: 60        RTS



sub_E3FE:
C - - - - - 0x00240E 00:E3FE: A2 00     LDX #$00
bra_E400_loop:
C - - - - - 0x002410 00:E400: 86 1B     STX ram_001B
C - - - - - 0x002412 00:E402: 20 10 E4  JSR sub_E410
C - - - - - 0x002415 00:E405: A5 1B     LDA ram_001B
C - - - - - 0x002417 00:E407: 18        CLC
C - - - - - 0x002418 00:E408: 69 08     ADC #$08
C - - - - - 0x00241A 00:E40A: AA        TAX
C - - - - - 0x00241B 00:E40B: E4 80     CPX ram_0080
C - - - - - 0x00241D 00:E40D: D0 F1     BNE bra_E400_loop
bra_E40F_RTS:
C - - - - - 0x00241F 00:E40F: 60        RTS



sub_E410:
C - - - - - 0x002420 00:E410: BD 00 02  LDA ram_0200,X
C - - - - - 0x002423 00:E413: F0 FA     BEQ bra_E40F_RTS
C - - - - - 0x002425 00:E415: FE 01 02  INC ram_0201,X
C - - - - - 0x002428 00:E418: BD 01 02  LDA ram_0201,X
C - - - - - 0x00242B 00:E41B: C9 0A     CMP #$0A
C - - - - - 0x00242D 00:E41D: 90 08     BCC bra_E427
C - - - - - 0x00242F 00:E41F: A9 00     LDA #$00
C - - - - - 0x002431 00:E421: 9D 01 02  STA ram_0201,X
C - - - - - 0x002434 00:E424: DE 00 02  DEC ram_0200,X
bra_E427:
sub_E427:
C - - - - - 0x002437 00:E427: BC 03 02  LDY ram_0203,X
C - - - - - 0x00243A 00:E42A: B9 37 E5  LDA tbl_E537,Y
C - - - - - 0x00243D 00:E42D: 85 10     STA ram_0010
C - - - - - 0x00243F 00:E42F: B9 38 E5  LDA tbl_E538,Y
C - - - - - 0x002442 00:E432: 85 11     STA ram_0011
C - - - - - 0x002444 00:E434: BD 02 02  LDA ram_0202,X
C - - - - - 0x002447 00:E437: 10 09     BPL bra_E442
C - - - - - 0x002449 00:E439: A9 00     LDA #$00
C - - - - - 0x00244B 00:E43B: 85 14     STA ram_0014
C - - - - - 0x00244D 00:E43D: A0 14     LDY #$14
C - - - - - 0x00244F 00:E43F: 4C 49 E4  JMP loc_E449
bra_E442:
C - - - - - 0x002452 00:E442: 85 14     STA ram_0014
C - - - - - 0x002454 00:E444: BD 01 02  LDA ram_0201,X
C - - - - - 0x002457 00:E447: 0A        ASL
C - - - - - 0x002458 00:E448: A8        TAY
loc_E449:
C D 3 - - - 0x002459 00:E449: B9 69 E5  LDA tbl_E569,Y
C - - - - - 0x00245C 00:E44C: 85 12     STA ram_0012
C - - - - - 0x00245E 00:E44E: B9 6A E5  LDA tbl_E569 + $01,Y
C - - - - - 0x002461 00:E451: 85 13     STA ram_0013
C - - - - - 0x002463 00:E453: 4C FB C6  JMP loc_C6FB



sub_E456:
C - - - - - 0x002466 00:E456: AD 37 E5  LDA tbl_E537
C - - - - - 0x002469 00:E459: 85 10     STA ram_0010
C - - - - - 0x00246B 00:E45B: AD 38 E5  LDA tbl_E538
C - - - - - 0x00246E 00:E45E: 85 11     STA ram_0011
C - - - - - 0x002470 00:E460: A9 00     LDA #$00
C - - - - - 0x002472 00:E462: 85 14     STA ram_0014
C - - - - - 0x002474 00:E464: A0 14     LDY #$14
C - - - - - 0x002476 00:E466: 4C 49 E4  JMP loc_E449



sub_E469:
C - - - - - 0x002479 00:E469: A2 00     LDX #$00
bra_E46B_loop:
C - - - - - 0x00247B 00:E46B: BD 02 02  LDA ram_0202,X
C - - - - - 0x00247E 00:E46E: 30 27     BMI bra_E497
C - - - - - 0x002480 00:E470: A0 01     LDY #$01
C - - - - - 0x002482 00:E472: B1 1E     LDA (ram_001E),Y
C - - - - - 0x002484 00:E474: 38        SEC
C - - - - - 0x002485 00:E475: FD 04 02  SBC ram_0204,X
C - - - - - 0x002488 00:E478: 18        CLC
C - - - - - 0x002489 00:E479: 69 01     ADC #$01
C - - - - - 0x00248B 00:E47B: C9 04     CMP #$04
C - - - - - 0x00248D 00:E47D: B0 18     BCS bra_E497
C - - - - - 0x00248F 00:E47F: BD 05 02  LDA ram_0205,X
C - - - - - 0x002492 00:E482: 18        CLC
C - - - - - 0x002493 00:E483: 6D CE E4  ADC tbl_E4CD + $01
C - - - - - 0x002496 00:E486: 85 11     STA ram_0011
C - - - - - 0x002498 00:E488: A0 02     LDY #$02
C - - - - - 0x00249A 00:E48A: B1 1E     LDA (ram_001E),Y
C - - - - - 0x00249C 00:E48C: 18        CLC
C - - - - - 0x00249D 00:E48D: ED CD E4  SBC tbl_E4CD
C - - - - - 0x0024A0 00:E490: C8        INY
C - - - - - 0x0024A1 00:E491: B1 1E     LDA (ram_001E),Y
C - - - - - 0x0024A3 00:E493: E5 11     SBC ram_0011
C - - - - - 0x0024A5 00:E495: F0 0B     BEQ bra_E4A2
bra_E497:
C - - - - - 0x0024A7 00:E497: 8A        TXA
C - - - - - 0x0024A8 00:E498: 18        CLC
C - - - - - 0x0024A9 00:E499: 69 08     ADC #$08
C - - - - - 0x0024AB 00:E49B: AA        TAX
C - - - - - 0x0024AC 00:E49C: E4 80     CPX ram_0080
C - - - - - 0x0024AE 00:E49E: D0 CB     BNE bra_E46B_loop
C - - - - - 0x0024B0 00:E4A0: 38        SEC
C - - - - - 0x0024B1 00:E4A1: 60        RTS
bra_E4A2:
C - - - - - 0x0024B2 00:E4A2: 18        CLC
C - - - - - 0x0024B3 00:E4A3: 60        RTS



sub_E4A4:
C - - - - - 0x0024B4 00:E4A4: A9 06     LDA #$06
C - - - - - 0x0024B6 00:E4A6: A0 04     LDY #$04
C - - - - - 0x0024B8 00:E4A8: 91 1E     STA (ram_001E),Y
C - - - - - 0x0024BA 00:E4AA: A0 07     LDY #$07
C - - - - - 0x0024BC 00:E4AC: B1 1E     LDA (ram_001E),Y
C - - - - - 0x0024BE 00:E4AE: 0A        ASL
C - - - - - 0x0024BF 00:E4AF: A8        TAY
C - - - - - 0x0024C0 00:E4B0: B9 CE E4  LDA tbl_E4CD + $01,Y
C - - - - - 0x0024C3 00:E4B3: 48        PHA
C - - - - - 0x0024C4 00:E4B4: B9 CD E4  LDA tbl_E4CD,Y
C - - - - - 0x0024C7 00:E4B7: A0 02     LDY #$02
C - - - - - 0x0024C9 00:E4B9: 91 1E     STA (ram_001E),Y
C - - - - - 0x0024CB 00:E4BB: C8        INY
C - - - - - 0x0024CC 00:E4BC: 68        PLA
C - - - - - 0x0024CD 00:E4BD: 18        CLC
C - - - - - 0x0024CE 00:E4BE: 7D 05 02  ADC ram_0205,X
C - - - - - 0x0024D1 00:E4C1: 91 1E     STA (ram_001E),Y
C - - - - - 0x0024D3 00:E4C3: A0 07     LDY #$07
C - - - - - 0x0024D5 00:E4C5: B1 1E     LDA (ram_001E),Y
C - - - - - 0x0024D7 00:E4C7: 18        CLC
C - - - - - 0x0024D8 00:E4C8: 69 01     ADC #$01
C - - - - - 0x0024DA 00:E4CA: 91 1E     STA (ram_001E),Y
C - - - - - 0x0024DC 00:E4CC: 60        RTS



tbl_E4CD:
; 00
- D 3 - - - 0x0024DD 00:E4CD: 40        .byte $40   ; 
- D 3 - - - 0x0024DE 00:E4CE: FE        .byte $FE   ; 
; 01
- D 3 - - - 0x0024DF 00:E4CF: 80        .byte $80   ; 
- D 3 - - - 0x0024E0 00:E4D0: FE        .byte $FE   ; 
; 02
- D 3 - - - 0x0024E1 00:E4D1: C0        .byte $C0   ; 
- D 3 - - - 0x0024E2 00:E4D2: FE        .byte $FE   ; 
; 03
- D 3 - - - 0x0024E3 00:E4D3: 00        .byte $00   ; 
- D 3 - - - 0x0024E4 00:E4D4: FF        .byte $FF   ; 
; 04
- D 3 - - - 0x0024E5 00:E4D5: C0        .byte $C0   ; 
- D 3 - - - 0x0024E6 00:E4D6: FE        .byte $FE   ; 
; 05
- D 3 - - - 0x0024E7 00:E4D7: 80        .byte $80   ; 
- D 3 - - - 0x0024E8 00:E4D8: FE        .byte $FE   ; 
; 06
- D 3 - - - 0x0024E9 00:E4D9: 40        .byte $40   ; 
- D 3 - - - 0x0024EA 00:E4DA: FE        .byte $FE   ; 
; 07
- D 3 - - - 0x0024EB 00:E4DB: 00        .byte $00   ; 
- D 3 - - - 0x0024EC 00:E4DC: FE        .byte $FE   ; 
; 08
- D 3 - - - 0x0024ED 00:E4DD: C0        .byte $C0   ; 
- D 3 - - - 0x0024EE 00:E4DE: FD        .byte $FD   ; 
; 09
- D 3 - - - 0x0024EF 00:E4DF: 00        .byte $00   ; 
- D 3 - - - 0x0024F0 00:E4E0: FE        .byte $FE   ; 



tbl_E4E1:
- D 3 - - - 0x0024F1 00:E4E1: 00        .byte $00   ; 00
- D 3 - - - 0x0024F2 00:E4E2: 0A        .byte $0A   ; 01
- D 3 - - - 0x0024F3 00:E4E3: 08        .byte $08   ; 02
- D 3 - - - 0x0024F4 00:E4E4: 02        .byte $02   ; 03
- D 3 - - - 0x0024F5 00:E4E5: 02        .byte $02   ; 04
- D 3 - - - 0x0024F6 00:E4E6: 02        .byte $02   ; 05
- D 3 - - - 0x0024F7 00:E4E7: 08        .byte $08   ; 06
- D 3 - - - 0x0024F8 00:E4E8: 04        .byte $04   ; 07
- D 3 - - - 0x0024F9 00:E4E9: 04        .byte $04   ; 08
- D 3 - - - 0x0024FA 00:E4EA: 04        .byte $04   ; 09
- D 3 - - - 0x0024FB 00:E4EB: 08        .byte $08   ; 0A
- D 3 - - - 0x0024FC 00:E4EC: 06        .byte $06   ; 0B
- D 3 - - - 0x0024FD 00:E4ED: 0C        .byte $0C   ; 0C
- D 3 - - - 0x0024FE 00:E4EE: 06        .byte $06   ; 0D
- D 3 - - - 0x0024FF 00:E4EF: 08        .byte $08   ; 0E
- D 3 - - - 0x002500 00:E4F0: 00        .byte $00   ; 0F



tbl_E4F1:
- D 3 - - - 0x002501 00:E4F1: FF E4     .word off_E4FF_00
- D 3 - - - 0x002503 00:E4F3: 0B E5     .word off_E50B_01
- D 3 - - - 0x002505 00:E4F5: 12 E5     .word off_E512_02
- D 3 - - - 0x002507 00:E4F7: 19 E5     .word off_E519_03
- D 3 - - - 0x002509 00:E4F9: 2A E5     .word off_E52A_04
- D 3 - - - 0x00250B 00:E4FB: 04 E5     .word off_E504_05
- D 3 - - - 0x00250D 00:E4FD: 21 E5     .word off_E521_06



off_E4FF_00:
- D 3 - I - 0x00250F 00:E4FF: 20        .byte $04 * $08   ; counter * 08
- D 3 - I - 0x002510 00:E500: 0E        .byte $0E   ; 
- D 3 - I - 0x002511 00:E501: 14        .byte $14   ; 
- D 3 - I - 0x002512 00:E502: 28        .byte $28   ; 
- D 3 - I - 0x002513 00:E503: 30        .byte $30   ; 



off_E504_05:
- D 3 - I - 0x002514 00:E504: 30        .byte $06 * $08   ; counter * 08
- D 3 - I - 0x002515 00:E505: 0E        .byte $0E   ; 
- D 3 - I - 0x002516 00:E506: 14        .byte $14   ; 
- D 3 - I - 0x002517 00:E507: 28        .byte $28   ; 
- D 3 - I - 0x002518 00:E508: 30        .byte $30   ; 
- D 3 - I - 0x002519 00:E509: 06        .byte $06   ; 
- D 3 - I - 0x00251A 00:E50A: 22        .byte $22   ; 



off_E50B_01:
- D 3 - I - 0x00251B 00:E50B: 30        .byte $06 * $08   ; counter * 08
- D 3 - I - 0x00251C 00:E50C: 04        .byte $04   ; 
- D 3 - I - 0x00251D 00:E50D: 08        .byte $08   ; 
- D 3 - I - 0x00251E 00:E50E: 0E        .byte $0E   ; 
- D 3 - I - 0x00251F 00:E50F: 18        .byte $18   ; 
- D 3 - I - 0x002520 00:E510: 20        .byte $20   ; 
- D 3 - I - 0x002521 00:E511: 30        .byte $30   ; 



off_E512_02:
- D 3 - I - 0x002522 00:E512: 30        .byte $06 * $08   ; counter * 08
- D 3 - I - 0x002523 00:E513: 04        .byte $04   ; 
- D 3 - I - 0x002524 00:E514: 0A        .byte $0A   ; 
- D 3 - I - 0x002525 00:E515: 0E        .byte $0E   ; 
- D 3 - I - 0x002526 00:E516: 14        .byte $14   ; 
- D 3 - I - 0x002527 00:E517: 28        .byte $28   ; 
- D 3 - I - 0x002528 00:E518: 30        .byte $30   ; 



off_E519_03:
- D 3 - I - 0x002529 00:E519: 38        .byte $07 * $08   ; counter * 08
- D 3 - I - 0x00252A 00:E51A: 02        .byte $02   ; 
- D 3 - I - 0x00252B 00:E51B: 0C        .byte $0C   ; 
- D 3 - I - 0x00252C 00:E51C: 0E        .byte $0E   ; 
- D 3 - I - 0x00252D 00:E51D: 18        .byte $18   ; 
- D 3 - I - 0x00252E 00:E51E: 1A        .byte $1A   ; 
- D 3 - I - 0x00252F 00:E51F: 24        .byte $24   ; 
- D 3 - I - 0x002530 00:E520: 30        .byte $30   ; 



off_E521_06:
- D 3 - I - 0x002531 00:E521: 40        .byte $08 * $08   ; counter * 08
- D 3 - I - 0x002532 00:E522: 02        .byte $02   ; 
- D 3 - I - 0x002533 00:E523: 04        .byte $04   ; 
- D 3 - I - 0x002534 00:E524: 0C        .byte $0C   ; 
- D 3 - I - 0x002535 00:E525: 0E        .byte $0E   ; 
- D 3 - I - 0x002536 00:E526: 18        .byte $18   ; 
- D 3 - I - 0x002537 00:E527: 1A        .byte $1A   ; 
- D 3 - I - 0x002538 00:E528: 24        .byte $24   ; 
- D 3 - I - 0x002539 00:E529: 30        .byte $30   ; 



off_E52A_04:
- D 3 - I - 0x00253A 00:E52A: 60        .byte $0C * $08   ; counter * 08
- D 3 - I - 0x00253B 00:E52B: 00        .byte $00   ; 
- D 3 - I - 0x00253C 00:E52C: 08        .byte $08   ; 
- D 3 - I - 0x00253D 00:E52D: 10        .byte $10   ; 
- D 3 - I - 0x00253E 00:E52E: 12        .byte $12   ; 
- D 3 - I - 0x00253F 00:E52F: 16        .byte $16   ; 
- D 3 - I - 0x002540 00:E530: 18        .byte $18   ; 
- D 3 - I - 0x002541 00:E531: 1C        .byte $1C   ; 
- D 3 - I - 0x002542 00:E532: 1E        .byte $1E   ; 
- D 3 - I - 0x002543 00:E533: 26        .byte $26   ; 
- D 3 - I - 0x002544 00:E534: 2A        .byte $2A   ; 
- D 3 - I - 0x002545 00:E535: 2C        .byte $2C   ; 
- D 3 - I - 0x002546 00:E536: 2E        .byte $2E   ; 



tbl_E537:
- D 3 - - - 0x002547 00:E537: 04        .byte $04   ; 
tbl_E538:
- D 3 - - - 0x002548 00:E538: 22        .byte $22   ; 
- D 3 - - - 0x002549 00:E539: 02        .byte $02   ; 
- D 3 - - - 0x00254A 00:E53A: 22        .byte $22   ; 
- D 3 - - - 0x00254B 00:E53B: 1C        .byte $1C   ; 
- D 3 - - - 0x00254C 00:E53C: 22        .byte $22   ; 
- D 3 - - - 0x00254D 00:E53D: 82        .byte $82   ; 
- D 3 - - - 0x00254E 00:E53E: 22        .byte $22   ; 
- D 3 - - - 0x00254F 00:E53F: 90        .byte $90   ; 
- D 3 - - - 0x002550 00:E540: 22        .byte $22   ; 
- D 3 - - - 0x002551 00:E541: 9C        .byte $9C   ; 
- D 3 - - - 0x002552 00:E542: 22        .byte $22   ; 
- D 3 - - - 0x002553 00:E543: 0C        .byte $0C   ; 
- D 3 - - - 0x002554 00:E544: 23        .byte $23   ; 
- D 3 - - - 0x002555 00:E545: 82        .byte $82   ; 
- D 3 - - - 0x002556 00:E546: 23        .byte $23   ; 
- D 3 - - - 0x002557 00:E547: 8A        .byte $8A   ; 
- D 3 - - - 0x002558 00:E548: 23        .byte $23   ; 
- D 3 - - - 0x002559 00:E549: 90        .byte $90   ; 
- D 3 - - - 0x00255A 00:E54A: 23        .byte $23   ; 
- D 3 - - - 0x00255B 00:E54B: 92        .byte $92   ; 
- D 3 - - - 0x00255C 00:E54C: 23        .byte $23   ; 
- D 3 - - - 0x00255D 00:E54D: 96        .byte $96   ; 
- D 3 - - - 0x00255E 00:E54E: 23        .byte $23   ; 
- D 3 - - - 0x00255F 00:E54F: 9C        .byte $9C   ; 
- D 3 - - - 0x002560 00:E550: 23        .byte $23   ; 
- D 3 - - - 0x002561 00:E551: 16        .byte $16   ; 
- D 3 - - - 0x002562 00:E552: 26        .byte $26   ; 
- D 3 - - - 0x002563 00:E553: 82        .byte $82   ; 
- D 3 - - - 0x002564 00:E554: 26        .byte $26   ; 
- D 3 - - - 0x002565 00:E555: 14        .byte $14   ; 
- D 3 - - - 0x002566 00:E556: 26        .byte $26   ; 
- D 3 - - - 0x002567 00:E557: 88        .byte $88   ; 
- D 3 - - - 0x002568 00:E558: 26        .byte $26   ; 
- D 3 - - - 0x002569 00:E559: 16        .byte $16   ; 
- D 3 - - - 0x00256A 00:E55A: 26        .byte $26   ; 
- D 3 - - - 0x00256B 00:E55B: 0C        .byte $0C   ; 
- D 3 - - - 0x00256C 00:E55C: 27        .byte $27   ; 
- D 3 - - - 0x00256D 00:E55D: 82        .byte $82   ; 
- D 3 - - - 0x00256E 00:E55E: 27        .byte $27   ; 
- D 3 - - - 0x00256F 00:E55F: 86        .byte $86   ; 
- D 3 - - - 0x002570 00:E560: 27        .byte $27   ; 
- D 3 - - - 0x002571 00:E561: 88        .byte $88   ; 
- D 3 - - - 0x002572 00:E562: 27        .byte $27   ; 
- D 3 - - - 0x002573 00:E563: 8E        .byte $8E   ; 
- D 3 - - - 0x002574 00:E564: 27        .byte $27   ; 
- D 3 - - - 0x002575 00:E565: 94        .byte $94   ; 
- D 3 - - - 0x002576 00:E566: 27        .byte $27   ; 
- D 3 - - - 0x002577 00:E567: 96        .byte $96   ; 
- D 3 - - - 0x002578 00:E568: 27        .byte $27   ; 



tbl_E569:
- D 3 - - - 0x002579 00:E569: 7F E5     .word _off002_E57F_00
- D 3 - - - 0x00257B 00:E56B: 8B E5     .word _off002_E58B_01
- D 3 - - - 0x00257D 00:E56D: 91 E5     .word _off002_E591_02
- D 3 - - - 0x00257F 00:E56F: 97 E5     .word _off002_E597_03
- D 3 - - - 0x002581 00:E571: 91 E5     .word _off002_E591_04
- D 3 - - - 0x002583 00:E573: 8B E5     .word _off002_E58B_05
- D 3 - - - 0x002585 00:E575: 7F E5     .word _off002_E57F_06
- D 3 - - - 0x002587 00:E577: 9D E5     .word _off002_E59D_07
- D 3 - - - 0x002589 00:E579: A9 E5     .word _off002_E5A9_08
- D 3 - - - 0x00258B 00:E57B: 9D E5     .word _off002_E59D_09
- D 3 - - - 0x00258D 00:E57D: B5 E5     .word _off002_E5B5_0A



_off002_E57F_00:
_off002_E57F_06:
- D 3 - I - 0x00258F 00:E57F: 04        .byte $04   ; counter
- D 3 - I - 0x002590 00:E580: 30        .byte $30, $30, $30, $30   ; tiles
- D 3 - I - 0x002594 00:E584: DC        .byte $DC   ; ppu offset

- D 3 - I - 0x002595 00:E585: 04        .byte $04   ; 
- D 3 - I - 0x002596 00:E586: 00        .byte $00, $00, $00, $00   ; 
- D 3 - I - 0x00259A 00:E58A: 00        .byte $00   ; end token



_off002_E58B_01:
_off002_E58B_05:
- D 3 - I - 0x00259B 00:E58B: 04        .byte $04   ; counter
- D 3 - I - 0x00259C 00:E58C: 31        .byte $31, $32, $33, $34   ; tiles
- D 3 - I - 0x0025A0 00:E590: 00        .byte $00   ; end token



_off002_E591_02:
_off002_E591_04:
- D 3 - I - 0x0025A1 00:E591: 04        .byte $04   ; counter
- D 3 - I - 0x0025A2 00:E592: 35        .byte $35, $36, $37, $38   ; tiles
- D 3 - I - 0x0025A6 00:E596: 00        .byte $00   ; end token



_off002_E597_03:
- D 3 - I - 0x0025A7 00:E597: 04        .byte $04   ; counter
- D 3 - I - 0x0025A8 00:E598: 39        .byte $39, $3A, $3B, $3C   ; tiles
- D 3 - I - 0x0025AC 00:E59C: 00        .byte $00   ; end token



_off002_E59D_07:
_off002_E59D_09:
- D 3 - I - 0x0025AD 00:E59D: 04        .byte $04   ; counter
- D 3 - I - 0x0025AE 00:E59E: 3D        .byte $3D, $59, $59, $42   ; tiles
- D 3 - I - 0x0025B2 00:E5A2: DC        .byte $DC   ; ppu offset

- D 3 - I - 0x0025B3 00:E5A3: 04        .byte $04   ; 
- D 3 - I - 0x0025B4 00:E5A4: 3E        .byte $3E, $3F, $40, $41   ; 
- D 3 - I - 0x0025B8 00:E5A8: 00        .byte $00   ; end token



_off002_E5A9_08:
- D 3 - I - 0x0025B9 00:E5A9: 04        .byte $04   ; counter
- D 3 - I - 0x0025BA 00:E5AA: 43        .byte $43, $59, $59, $48   ; tiles
- D 3 - I - 0x0025BE 00:E5AE: DC        .byte $DC   ; ppu offset

- D 3 - I - 0x0025BF 00:E5AF: 04        .byte $04   ; 
- D 3 - I - 0x0025C0 00:E5B0: 44        .byte $44, $45, $46, $47   ; 
- D 3 - I - 0x0025C4 00:E5B4: 00        .byte $00   ; end token



_off002_E5B5_0A:
- D 3 - I - 0x0025C5 00:E5B5: 04        .byte $04   ; counter
- D 3 - I - 0x0025C6 00:E5B6: 85        .byte $85, $00, $00, $86   ; tiles
- D 3 - I - 0x0025CA 00:E5BA: 1D        .byte $1D   ; ppu offset

- D 3 - I - 0x0025CB 00:E5BB: 02        .byte $02   ; 
- D 3 - I - 0x0025CC 00:E5BC: 00        .byte $00, $00   ; 
- D 3 - I - 0x0025CE 00:E5BE: BD        .byte $BD   ; 

- D 3 - I - 0x0025CF 00:E5BF: 04        .byte $04   ; 
- D 3 - I - 0x0025D0 00:E5C0: 00        .byte $00, $00, $00, $00   ; 
- D 3 - I - 0x0025D4 00:E5C4: 00        .byte $00   ; end token



sub_E5C5:
C - - - - - 0x0025D5 00:E5C5: AD 98 E7  LDA tbl_E798
C - - - - - 0x0025D8 00:E5C8: 85 1C     STA ram_001C
C - - - - - 0x0025DA 00:E5CA: AD 99 E7  LDA tbl_E798 + $01
C - - - - - 0x0025DD 00:E5CD: 85 1D     STA ram_001D
C - - - - - 0x0025DF 00:E5CF: A0 00     LDY #$00
C - - - - - 0x0025E1 00:E5D1: B1 1C     LDA (ram_001C),Y
C - - - - - 0x0025E3 00:E5D3: 85 81     STA ram_0081
C - - - - - 0x0025E5 00:E5D5: 4A        LSR
C - - - - - 0x0025E6 00:E5D6: 4A        LSR
C - - - - - 0x0025E7 00:E5D7: 4A        LSR
C - - - - - 0x0025E8 00:E5D8: 85 7B     STA ram_items_counter
C - - - - - 0x0025EA 00:E5DA: F0 57     BEQ bra_E633_RTS
C - - - - - 0x0025EC 00:E5DC: C8        INY
C - - - - - 0x0025ED 00:E5DD: A2 00     LDX #$00
bra_E5DF_loop:
C - - - - - 0x0025EF 00:E5DF: A9 02     LDA #$02
C - - - - - 0x0025F1 00:E5E1: 9D 60 02  STA ram_0260,X
C - - - - - 0x0025F4 00:E5E4: A9 00     LDA #$00
C - - - - - 0x0025F6 00:E5E6: 9D 63 02  STA ram_0263,X
C - - - - - 0x0025F9 00:E5E9: B1 1C     LDA (ram_001C),Y
C - - - - - 0x0025FB 00:E5EB: C8        INY
C - - - - - 0x0025FC 00:E5EC: 84 1B     STY ram_001B
C - - - - - 0x0025FE 00:E5EE: 9D 61 02  STA ram_0261,X
C - - - - - 0x002601 00:E5F1: A8        TAY
C - - - - - 0x002602 00:E5F2: B9 A5 E7  LDA tbl_E7A5,Y
C - - - - - 0x002605 00:E5F5: 85 10     STA ram_0010
C - - - - - 0x002607 00:E5F7: B9 A6 E7  LDA tbl_E7A6,Y
C - - - - - 0x00260A 00:E5FA: 85 11     STA ram_0011
C - - - - - 0x00260C 00:E5FC: 20 BD E3  JSR sub_E3BD
C - - - - - 0x00260F 00:E5FF: A5 10     LDA ram_0010
C - - - - - 0x002611 00:E601: 9D 64 02  STA ram_0264,X
C - - - - - 0x002614 00:E604: A5 11     LDA ram_0011
C - - - - - 0x002616 00:E606: 9D 65 02  STA ram_0265,X
C - - - - - 0x002619 00:E609: A4 1B     LDY ram_001B
C - - - - - 0x00261B 00:E60B: 8A        TXA
C - - - - - 0x00261C 00:E60C: 18        CLC
C - - - - - 0x00261D 00:E60D: 69 08     ADC #$08
C - - - - - 0x00261F 00:E60F: AA        TAX
C - - - - - 0x002620 00:E610: E4 81     CPX ram_0081
C - - - - - 0x002622 00:E612: D0 CB     BNE bra_E5DF_loop
sub_E614:
C - - - - - 0x002624 00:E614: A2 00     LDX #$00
C - - - - - 0x002626 00:E616: 86 31     STX ram_0031
bra_E618_loop:
C - - - - - 0x002628 00:E618: 86 1B     STX ram_001B
C - - - - - 0x00262A 00:E61A: BD 60 02  LDA ram_0260,X
C - - - - - 0x00262D 00:E61D: C9 02     CMP #$02
C - - - - - 0x00262F 00:E61F: D0 08     BNE bra_E629
C - - - - - 0x002631 00:E621: A9 00     LDA #$00
C - - - - - 0x002633 00:E623: 9D 63 02  STA ram_0263,X
C - - - - - 0x002636 00:E626: 20 2C E7  JSR sub_E72C
bra_E629:
C - - - - - 0x002639 00:E629: A5 1B     LDA ram_001B
C - - - - - 0x00263B 00:E62B: 18        CLC
C - - - - - 0x00263C 00:E62C: 69 08     ADC #$08
C - - - - - 0x00263E 00:E62E: AA        TAX
C - - - - - 0x00263F 00:E62F: E4 81     CPX ram_0081
C - - - - - 0x002641 00:E631: D0 E5     BNE bra_E618_loop
bra_E633_RTS:
C - - - - - 0x002643 00:E633: 60        RTS



sub_E634:
C - - - - - 0x002644 00:E634: A5 81     LDA ram_0081
C - - - - - 0x002646 00:E636: F0 11     BEQ bra_E649_RTS
C - - - - - 0x002648 00:E638: A2 00     LDX #$00
bra_E63A_loop:
C - - - - - 0x00264A 00:E63A: 86 1B     STX ram_001B
C - - - - - 0x00264C 00:E63C: 20 4A E6  JSR sub_E64A
C - - - - - 0x00264F 00:E63F: A5 1B     LDA ram_001B
C - - - - - 0x002651 00:E641: 18        CLC
C - - - - - 0x002652 00:E642: 69 08     ADC #$08
C - - - - - 0x002654 00:E644: AA        TAX
C - - - - - 0x002655 00:E645: E4 81     CPX ram_0081
C - - - - - 0x002657 00:E647: D0 F1     BNE bra_E63A_loop
bra_E649_RTS:
C - - - - - 0x002659 00:E649: 60        RTS



sub_E64A:
C - - - - - 0x00265A 00:E64A: BC 60 02  LDY ram_0260,X
C - - - - - 0x00265D 00:E64D: B9 5A E6  LDA tbl_E65A,Y
C - - - - - 0x002660 00:E650: 85 1C     STA ram_001C
C - - - - - 0x002662 00:E652: B9 5B E6  LDA tbl_E65A + $01,Y
C - - - - - 0x002665 00:E655: 85 1D     STA ram_001D
C - - - - - 0x002667 00:E657: 6C 1C 00  JMP (ram_001C)



tbl_E65A:
- D 3 - - - 0x00266A 00:E65A: 4F C1     .word ofs_003_C14F_00_RTS
- D 3 - - - 0x00266C 00:E65C: 60 E6     .word ofs_003_E660_01
- D 3 - - - 0x00266E 00:E65E: FA E6     .word ofs_003_E6FA_02



ofs_003_E660_01:
C - - J - - 0x002670 00:E660: 20 57 E7  JSR sub_E757_fat_cat_hide_inside_item
C - - - - - 0x002673 00:E663: BD 63 02  LDA ram_0263,X
C - - - - - 0x002676 00:E666: F0 05     BEQ bra_E66D
C - - - - - 0x002678 00:E668: 20 1E E7  JSR sub_E71E
C - - - - - 0x00267B 00:E66B: A6 1B     LDX ram_001B
bra_E66D:
C - - - - - 0x00267D 00:E66D: BD 65 02  LDA ram_0265,X
C - - - - - 0x002680 00:E670: CD 03 04  CMP ram_0403
C - - - - - 0x002683 00:E673: D0 D4     BNE bra_E649_RTS
C - - - - - 0x002685 00:E675: BD 64 02  LDA ram_0264,X
C - - - - - 0x002688 00:E678: 38        SEC
C - - - - - 0x002689 00:E679: ED 01 04  SBC ram_0401
C - - - - - 0x00268C 00:E67C: C9 02     CMP #$02
C - - - - - 0x00268E 00:E67E: B0 C9     BCS bra_E649_RTS
C - - - - - 0x002690 00:E680: C6 7B     DEC ram_items_counter
C - - - - - 0x002692 00:E682: D0 13     BNE bra_E697
C - - - - - 0x002694 00:E684: A9 01     LDA #$01
C - - - - - 0x002696 00:E686: 85 4F     STA ram_004F
C - - - - - 0x002698 00:E688: A9 00     LDA #$00
C - - - - - 0x00269A 00:E68A: 8D 0F 04  STA ram_040F
C - - - - - 0x00269D 00:E68D: 8D 04 04  STA ram_0404
C - - - - - 0x0026A0 00:E690: 8A        TXA
C - - - - - 0x0026A1 00:E691: 48        PHA
C - - - - - 0x0026A2 00:E692: 20 EF DA  JSR sub_DAEF
C - - - - - 0x0026A5 00:E695: 68        PLA
C - - - - - 0x0026A6 00:E696: AA        TAX
bra_E697:
C - - - - - 0x0026A7 00:E697: A5 42     LDA ram_demo_flag
C - - - - - 0x0026A9 00:E699: 8D 08 06  STA ram_0608
C - - - - - 0x0026AC 00:E69C: A9 04     LDA #$04
C - - - - - 0x0026AE 00:E69E: 9D 60 02  STA ram_0260,X
C - - - - - 0x0026B1 00:E6A1: A9 3C     LDA #$3C
C - - - - - 0x0026B3 00:E6A3: 9D 62 02  STA ram_0262,X
C - - - - - 0x0026B6 00:E6A6: A9 01     LDA #$01
C - - - - - 0x0026B8 00:E6A8: 85 18     STA ram_0018
C - - - - - 0x0026BA 00:E6AA: BD 63 02  LDA ram_0263,X
C - - - - - 0x0026BD 00:E6AD: F0 07     BEQ bra_E6B6
C - - - - - 0x0026BF 00:E6AF: A5 31     LDA ram_0031
C - - - - - 0x0026C1 00:E6B1: 18        CLC
C - - - - - 0x0026C2 00:E6B2: 69 02     ADC #$02
C - - - - - 0x0026C4 00:E6B4: 85 18     STA ram_0018
bra_E6B6:
C - - - - - 0x0026C6 00:E6B6: BD 61 02  LDA ram_0261,X
C - - - - - 0x0026C9 00:E6B9: 29 FC     AND #$FC
C - - - - - 0x0026CB 00:E6BB: 20 BE D4  JSR sub_D4BE
C - - - - - 0x0026CE 00:E6BE: A6 1B     LDX ram_001B
C - - - - - 0x0026D0 00:E6C0: 20 0A E7  JSR sub_E70A
C - - - - - 0x0026D3 00:E6C3: A6 1B     LDX ram_001B
C - - - - - 0x0026D5 00:E6C5: BD 63 02  LDA ram_0263,X
C - - - - - 0x0026D8 00:E6C8: D0 2D     BNE bra_E6F7
C - - - - - 0x0026DA 00:E6CA: A2 00     LDX #$00
bra_E6CC_loop:
C - - - - - 0x0026DC 00:E6CC: 86 1A     STX ram_001A
C - - - - - 0x0026DE 00:E6CE: BD 60 02  LDA ram_0260,X
C - - - - - 0x0026E1 00:E6D1: C9 02     CMP #$02
C - - - - - 0x0026E3 00:E6D3: D0 0D     BNE bra_E6E2
C - - - - - 0x0026E5 00:E6D5: BD 63 02  LDA ram_0263,X
C - - - - - 0x0026E8 00:E6D8: F0 08     BEQ bra_E6E2
C - - - - - 0x0026EA 00:E6DA: A9 00     LDA #$00
C - - - - - 0x0026EC 00:E6DC: 9D 63 02  STA ram_0263,X
C - - - - - 0x0026EF 00:E6DF: 20 2C E7  JSR sub_E72C
bra_E6E2:
C - - - - - 0x0026F2 00:E6E2: A5 1A     LDA ram_001A
C - - - - - 0x0026F4 00:E6E4: 18        CLC
C - - - - - 0x0026F5 00:E6E5: 69 08     ADC #$08
C - - - - - 0x0026F7 00:E6E7: AA        TAX
C - - - - - 0x0026F8 00:E6E8: E4 81     CPX ram_0081
C - - - - - 0x0026FA 00:E6EA: D0 E0     BNE bra_E6CC_loop
C - - - - - 0x0026FC 00:E6EC: A5 1B     LDA ram_001B
C - - - - - 0x0026FE 00:E6EE: 49 08     EOR #$08
C - - - - - 0x002700 00:E6F0: AA        TAX
C - - - - - 0x002701 00:E6F1: A9 01     LDA #$01
C - - - - - 0x002703 00:E6F3: 9D 63 02  STA ram_0263,X
C - - - - - 0x002706 00:E6F6: 60        RTS
bra_E6F7:
C - - - - - 0x002707 00:E6F7: E6 31     INC ram_0031
C - - - - - 0x002709 00:E6F9: 60        RTS



ofs_003_E6FA_02:
C - - J - - 0x00270A 00:E6FA: 20 F5 E7  JSR sub_E7F5
C - - - - - 0x00270D 00:E6FD: A6 1B     LDX ram_001B
C - - - - - 0x00270F 00:E6FF: DE 62 02  DEC ram_0262,X
C - - - - - 0x002712 00:E702: D0 19     BNE bra_E71D_RTS
C - - - - - 0x002714 00:E704: A9 00     LDA #$00
C - - - - - 0x002716 00:E706: 9D 60 02  STA ram_0260,X
C - - - - - 0x002719 00:E709: 60        RTS



bra_E70A:
sub_E70A:
C - - - - - 0x00271A 00:E70A: A0 0A     LDY #$0A
C - - - - - 0x00271C 00:E70C: B9 B9 E7  LDA tbl_E7B9,Y
C - - - - - 0x00271F 00:E70F: 85 12     STA ram_0012
C - - - - - 0x002721 00:E711: B9 BA E7  LDA tbl_E7B9 + $01,Y
C - - - - - 0x002724 00:E714: 85 13     STA ram_0013
C - - - - - 0x002726 00:E716: A9 80     LDA #$80
C - - - - - 0x002728 00:E718: 85 14     STA ram_0014
C - - - - - 0x00272A 00:E71A: 4C 47 E7  JMP loc_E747
bra_E71D_RTS:
C - - - - - 0x00272D 00:E71D: 60        RTS



sub_E71E:
C - - - - - 0x00272E 00:E71E: A5 21     LDA ram_frame_counter
C - - - - - 0x002730 00:E720: 29 03     AND #$03
C - - - - - 0x002732 00:E722: 49 01     EOR #$01
C - - - - - 0x002734 00:E724: D0 F7     BNE bra_E71D_RTS    ; each even frame
C - - - - - 0x002736 00:E726: A5 21     LDA ram_frame_counter
C - - - - - 0x002738 00:E728: 29 04     AND #$04
C - - - - - 0x00273A 00:E72A: F0 DE     BEQ bra_E70A    ; each 4th frame
sub_E72C:
C - - - - - 0x00273C 00:E72C: BD 61 02  LDA ram_0261,X
C - - - - - 0x00273F 00:E72F: 4A        LSR
C - - - - - 0x002740 00:E730: 29 FE     AND #$FE
C - - - - - 0x002742 00:E732: A8        TAY
C - - - - - 0x002743 00:E733: C9 06     CMP #$06
C - - - - - 0x002745 00:E735: A9 00     LDA #$00
C - - - - - 0x002747 00:E737: 90 02     BCC bra_E73B
C - - - - - 0x002749 00:E739: A9 02     LDA #$02
bra_E73B:
C - - - - - 0x00274B 00:E73B: 85 14     STA ram_0014
C - - - - - 0x00274D 00:E73D: B9 B9 E7  LDA tbl_E7B9,Y
C - - - - - 0x002750 00:E740: 85 12     STA ram_0012
C - - - - - 0x002752 00:E742: B9 BA E7  LDA tbl_E7B9 + $01,Y
C - - - - - 0x002755 00:E745: 85 13     STA ram_0013
loc_E747:
C D 3 - - - 0x002757 00:E747: BC 61 02  LDY ram_0261,X
C - - - - - 0x00275A 00:E74A: B9 A5 E7  LDA tbl_E7A5,Y
C - - - - - 0x00275D 00:E74D: 85 10     STA ram_0010
C - - - - - 0x00275F 00:E74F: B9 A6 E7  LDA tbl_E7A6,Y
C - - - - - 0x002762 00:E752: 85 11     STA ram_0011
C - - - - - 0x002764 00:E754: 4C FB C6  JMP loc_C6FB



sub_E757_fat_cat_hide_inside_item:
C - - - - - 0x002767 00:E757: AD 2F 04  LDA ram_042F
C - - - - - 0x00276A 00:E75A: C9 02     CMP #$02
C - - - - - 0x00276C 00:E75C: D0 29     BNE bra_E787_RTS
C - - - - - 0x00276E 00:E75E: AD 2A 04  LDA ram_042A
C - - - - - 0x002771 00:E761: D0 24     BNE bra_E787_RTS
C - - - - - 0x002773 00:E763: BD 65 02  LDA ram_0265,X
C - - - - - 0x002776 00:E766: CD 23 04  CMP ram_0423
C - - - - - 0x002779 00:E769: D0 1C     BNE bra_E787_RTS
C - - - - - 0x00277B 00:E76B: BD 64 02  LDA ram_0264,X
C - - - - - 0x00277E 00:E76E: CD 21 04  CMP ram_0421
C - - - - - 0x002781 00:E771: D0 14     BNE bra_E787_RTS
C - - - - - 0x002783 00:E773: A9 00     LDA #$00
C - - - - - 0x002785 00:E775: 8D 20 04  STA ram_0420
C - - - - - 0x002788 00:E778: A9 13     LDA #$13
C - - - - - 0x00278A 00:E77A: 8D 24 04  STA ram_0424
C - - - - - 0x00278D 00:E77D: A9 1E     LDA #$1E
C - - - - - 0x00278F 00:E77F: 8D 2F 04  STA ram_042F
; timer for a fat cat to hide inside an item
C - - - - - 0x002792 00:E782: A9 78     LDA #$78
C - - - - - 0x002794 00:E784: 8D 27 04  STA ram_0427
bra_E787_RTS:
C - - - - - 0x002797 00:E787: 60        RTS


; bzk garbage
- - - - - - 0x002798 00:E788: 02        .byte $02, $02, $00, $02, $02, $02, $00, $02   ; 
- - - - - - 0x0027A0 00:E790: 02        .byte $02, $02, $00, $02, $02, $02, $00, $02   ; 



tbl_E798:
- D 3 - - - 0x0027A8 00:E798: 9A E7     .word off_E79A

off_E79A:
- D 3 - I - 0x0027AA 00:E79A: 50        .byte $0A * $08   ; counter * 08
- D 3 - I - 0x0027AB 00:E79B: 00        .byte $00   ; 
- D 3 - I - 0x0027AC 00:E79C: 02        .byte $02   ; 
- D 3 - I - 0x0027AD 00:E79D: 04        .byte $04   ; 
- D 3 - I - 0x0027AE 00:E79E: 06        .byte $06   ; 
- D 3 - I - 0x0027AF 00:E79F: 08        .byte $08   ; 
- D 3 - I - 0x0027B0 00:E7A0: 0A        .byte $0A   ; 
- D 3 - I - 0x0027B1 00:E7A1: 0C        .byte $0C   ; 
- D 3 - I - 0x0027B2 00:E7A2: 0E        .byte $0E   ; 
- D 3 - I - 0x0027B3 00:E7A3: 10        .byte $10   ; 
- D 3 - I - 0x0027B4 00:E7A4: 12        .byte $12   ; 



tbl_E7A5:
- D 3 - - - 0x0027B5 00:E7A5: 52        .byte $52   ; 
tbl_E7A6:
- D 3 - - - 0x0027B6 00:E7A6: 25        .byte $25   ; 
- D 3 - - - 0x0027B7 00:E7A7: D8        .byte $D8   ; 
- D 3 - - - 0x0027B8 00:E7A8: 22        .byte $22   ; 
- D 3 - - - 0x0027B9 00:E7A9: 41        .byte $41   ; 
- D 3 - - - 0x0027BA 00:E7AA: 26        .byte $26   ; 
- D 3 - - - 0x0027BB 00:E7AB: 4A        .byte $4A   ; 
- D 3 - - - 0x0027BC 00:E7AC: 27        .byte $27   ; 
- D 3 - - - 0x0027BD 00:E7AD: 49        .byte $49   ; 
- D 3 - - - 0x0027BE 00:E7AE: 21        .byte $21   ; 
- D 3 - - - 0x0027BF 00:E7AF: 42        .byte $42   ; 
- D 3 - - - 0x0027C0 00:E7B0: 27        .byte $27   ; 
- D 3 - - - 0x0027C1 00:E7B1: D7        .byte $D7   ; 
- D 3 - - - 0x0027C2 00:E7B2: 21        .byte $21   ; 
- D 3 - - - 0x0027C3 00:E7B3: 48        .byte $48   ; 
- D 3 - - - 0x0027C4 00:E7B4: 23        .byte $23   ; 
- D 3 - - - 0x0027C5 00:E7B5: C7        .byte $C7   ; 
- D 3 - - - 0x0027C6 00:E7B6: 21        .byte $21   ; 
- D 3 - - - 0x0027C7 00:E7B7: 53        .byte $53   ; 
- D 3 - - - 0x0027C8 00:E7B8: 26        .byte $26   ; 



tbl_E7B9:
- D 3 - - - 0x0027C9 00:E7B9: C5 E7     .word off_E7C5_00
- D 3 - - - 0x0027CB 00:E7BB: CD E7     .word off_E7CD_01
- D 3 - - - 0x0027CD 00:E7BD: D5 E7     .word off_E7D5_02
- D 3 - - - 0x0027CF 00:E7BF: DD E7     .word off_E7DD_03
- D 3 - - - 0x0027D1 00:E7C1: E5 E7     .word off_E7E5_04
- D 3 - - - 0x0027D3 00:E7C3: ED E7     .word off_E7ED_05



off_E7C5_00:
- D 3 - I - 0x0027D5 00:E7C5: 02        .byte $02   ; counter
- D 3 - I - 0x0027D6 00:E7C6: 8C        .byte $8C, $8D   ; tiles
- D 3 - I - 0x0027D8 00:E7C8: 1E        .byte $1E   ; ppu offset

- D 3 - I - 0x0027D9 00:E7C9: 02        .byte $02   ; 
- D 3 - I - 0x0027DA 00:E7CA: 8E        .byte $8E, $8F   ; 
- D 3 - I - 0x0027DC 00:E7CC: 00        .byte $00   ; end token



off_E7CD_01:
- D 3 - I - 0x0027DD 00:E7CD: 02        .byte $02   ; counter
- D 3 - I - 0x0027DE 00:E7CE: 90        .byte $90, $91   ; tiles
- D 3 - I - 0x0027E0 00:E7D0: 1E        .byte $1E   ; ppu offset

- D 3 - I - 0x0027E1 00:E7D1: 02        .byte $02   ; 
- D 3 - I - 0x0027E2 00:E7D2: 92        .byte $92, $93   ; 
- D 3 - I - 0x0027E4 00:E7D4: 00        .byte $00   ; end token



off_E7D5_02:
- D 3 - I - 0x0027E5 00:E7D5: 02        .byte $02   ; counter
- D 3 - I - 0x0027E6 00:E7D6: 94        .byte $94, $95   ; tiles
- D 3 - I - 0x0027E8 00:E7D8: 1E        .byte $1E   ; ppu offset

- D 3 - I - 0x0027E9 00:E7D9: 02        .byte $02   ; 
- D 3 - I - 0x0027EA 00:E7DA: 96        .byte $96, $97   ; 
- D 3 - I - 0x0027EC 00:E7DC: 00        .byte $00   ; end token



off_E7DD_03:
- D 3 - I - 0x0027ED 00:E7DD: 02        .byte $02   ; counter
- D 3 - I - 0x0027EE 00:E7DE: 98        .byte $98, $99   ; tiles
- D 3 - I - 0x0027F0 00:E7E0: 1E        .byte $1E   ; ppu offset

- D 3 - I - 0x0027F1 00:E7E1: 02        .byte $02   ; 
- D 3 - I - 0x0027F2 00:E7E2: 9A        .byte $9A, $9B   ; 
- D 3 - I - 0x0027F4 00:E7E4: 00        .byte $00   ; end token



off_E7E5_04:
- D 3 - I - 0x0027F5 00:E7E5: 02        .byte $02   ; counter
- D 3 - I - 0x0027F6 00:E7E6: 9C        .byte $9C, $9D   ; tiles
- D 3 - I - 0x0027F8 00:E7E8: 1E        .byte $1E   ; ppu offset

- D 3 - I - 0x0027F9 00:E7E9: 02        .byte $02   ; 
- D 3 - I - 0x0027FA 00:E7EA: 9E        .byte $9E, $9F   ; 
- D 3 - I - 0x0027FC 00:E7EC: 00        .byte $00   ; end token



off_E7ED_05:
- D 3 - I - 0x0027FD 00:E7ED: 02        .byte $02   ; counter
- D 3 - I - 0x0027FE 00:E7EE: 00        .byte $00, $00   ; tiles
- D 3 - I - 0x002800 00:E7F0: 1E        .byte $1E   ; ppu offset

- D 3 - I - 0x002801 00:E7F1: 02        .byte $02   ; 
- D 3 - I - 0x002802 00:E7F2: 00        .byte $00, $00   ; 
- D 3 - I - 0x002804 00:E7F4: 00        .byte $00   ; end token



sub_E7F5:
C - - - - - 0x002805 00:E7F5: A9 00     LDA #$00
C - - - - - 0x002807 00:E7F7: 85 11     STA ram_0011
C - - - - - 0x002809 00:E7F9: 38        SEC
C - - - - - 0x00280A 00:E7FA: E5 28     SBC ram_cam_pos_X_lo
C - - - - - 0x00280C 00:E7FC: 85 10     STA ram_0010
C - - - - - 0x00280E 00:E7FE: BD 64 02  LDA ram_0264,X
C - - - - - 0x002811 00:E801: E5 29     SBC ram_cam_pos_X_hi
C - - - - - 0x002813 00:E803: 18        CLC
C - - - - - 0x002814 00:E804: 69 01     ADC #$01
C - - - - - 0x002816 00:E806: 06 10     ASL ram_0010
C - - - - - 0x002818 00:E808: 2A        ROL
C - - - - - 0x002819 00:E809: 06 10     ASL ram_0010
C - - - - - 0x00281B 00:E80B: 2A        ROL
C - - - - - 0x00281C 00:E80C: 06 10     ASL ram_0010
C - - - - - 0x00281E 00:E80E: 2A        ROL
C - - - - - 0x00281F 00:E80F: 85 10     STA ram_0010
C - - - - - 0x002821 00:E811: 90 02     BCC bra_E815
- - - - - - 0x002823 00:E813: C6 11     DEC ram_0011
bra_E815:
C - - - - - 0x002825 00:E815: BD 65 02  LDA ram_0265,X
C - - - - - 0x002828 00:E818: 38        SEC
C - - - - - 0x002829 00:E819: E9 01     SBC #$01
C - - - - - 0x00282B 00:E81B: 0A        ASL
C - - - - - 0x00282C 00:E81C: 0A        ASL
C - - - - - 0x00282D 00:E81D: 0A        ASL
C - - - - - 0x00282E 00:E81E: 85 16     STA ram_0016
C - - - - - 0x002830 00:E820: BD 61 02  LDA ram_0261,X
C - - - - - 0x002833 00:E823: 4A        LSR
C - - - - - 0x002834 00:E824: 4A        LSR
C - - - - - 0x002835 00:E825: 18        CLC
C - - - - - 0x002836 00:E826: 69 AC     ADC #$AC
C - - - - - 0x002838 00:E828: 85 12     STA ram_0012
C - - - - - 0x00283A 00:E82A: A9 03     LDA #$03
C - - - - - 0x00283C 00:E82C: 85 13     STA ram_0013
C - - - - - 0x00283E 00:E82E: 20 4D E8  JSR sub_E84D
C - - - - - 0x002841 00:E831: A9 67     LDA #$67
C - - - - - 0x002843 00:E833: 85 12     STA ram_0012
C - - - - - 0x002845 00:E835: 20 4D E8  JSR sub_E84D
C - - - - - 0x002848 00:E838: A6 1B     LDX ram_001B
C - - - - - 0x00284A 00:E83A: BD 63 02  LDA ram_0263,X
C - - - - - 0x00284D 00:E83D: F0 22     BEQ bra_E861_RTS
C - - - - - 0x00284F 00:E83F: A9 68     LDA #$68
C - - - - - 0x002851 00:E841: 85 12     STA ram_0012
C - - - - - 0x002853 00:E843: 20 4D E8  JSR sub_E84D
C - - - - - 0x002856 00:E846: A5 31     LDA ram_0031
C - - - - - 0x002858 00:E848: 18        CLC
C - - - - - 0x002859 00:E849: 69 B0     ADC #$B0
C - - - - - 0x00285B 00:E84B: 85 12     STA ram_0012
sub_E84D:
loc_E84D:
C D 3 - - - 0x00285D 00:E84D: A9 00     LDA #$00
C - - - - - 0x00285F 00:E84F: 85 14     STA ram_0014
C - - - - - 0x002861 00:E851: 85 15     STA ram_0015
C - - - - - 0x002863 00:E853: 20 15 C4  JSR sub_C415_write_spr_data
C - - - - - 0x002866 00:E856: A5 10     LDA ram_0010
C - - - - - 0x002868 00:E858: 18        CLC
C - - - - - 0x002869 00:E859: 69 08     ADC #$08
C - - - - - 0x00286B 00:E85B: 85 10     STA ram_0010
C - - - - - 0x00286D 00:E85D: 90 02     BCC bra_E861_RTS
C - - - - - 0x00286F 00:E85F: E6 11     INC ram_0011
bra_E861_RTS:
C - - - - - 0x002871 00:E861: 60        RTS



sub_E862:
C - - - - - 0x002872 00:E862: A5 7A     LDA ram_current_round
C - - - - - 0x002874 00:E864: 0A        ASL
C - - - - - 0x002875 00:E865: A8        TAY
C - - - - - 0x002876 00:E866: B9 FC EA  LDA tbl_EAFC,Y
C - - - - - 0x002879 00:E869: 85 1C     STA ram_001C
C - - - - - 0x00287B 00:E86B: B9 FD EA  LDA tbl_EAFC + $01,Y
C - - - - - 0x00287E 00:E86E: 85 1D     STA ram_001D
C - - - - - 0x002880 00:E870: A0 00     LDY #$00
C - - - - - 0x002882 00:E872: B1 1C     LDA (ram_001C),Y
C - - - - - 0x002884 00:E874: 85 83     STA ram_0083
C - - - - - 0x002886 00:E876: F0 53     BEQ bra_E8CB_RTS    ; if bonus round
C - - - - - 0x002888 00:E878: C8        INY
C - - - - - 0x002889 00:E879: A2 00     LDX #$00
bra_E87B_loop:
C - - - - - 0x00288B 00:E87B: 86 1B     STX ram_001B
C - - - - - 0x00288D 00:E87D: A9 00     LDA #$00
C - - - - - 0x00288F 00:E87F: 9D B0 02  STA ram_02B0,X
C - - - - - 0x002892 00:E882: 9D B6 02  STA ram_02B6,X
C - - - - - 0x002895 00:E885: B1 1C     LDA (ram_001C),Y
C - - - - - 0x002897 00:E887: C8        INY
C - - - - - 0x002898 00:E888: 9D B1 02  STA ram_02B1,X
C - - - - - 0x00289B 00:E88B: B1 1C     LDA (ram_001C),Y
C - - - - - 0x00289D 00:E88D: C8        INY
C - - - - - 0x00289E 00:E88E: 9D B2 02  STA ram_02B2,X
C - - - - - 0x0028A1 00:E891: 85 10     STA ram_0010
C - - - - - 0x0028A3 00:E893: B1 1C     LDA (ram_001C),Y
C - - - - - 0x0028A5 00:E895: C8        INY
C - - - - - 0x0028A6 00:E896: 9D B3 02  STA ram_02B3,X
C - - - - - 0x0028A9 00:E899: 85 11     STA ram_0011
C - - - - - 0x0028AB 00:E89B: 20 BD E3  JSR sub_E3BD
C - - - - - 0x0028AE 00:E89E: A5 10     LDA ram_0010
C - - - - - 0x0028B0 00:E8A0: 9D B4 02  STA ram_02B4,X
C - - - - - 0x0028B3 00:E8A3: A5 11     LDA ram_0011
C - - - - - 0x0028B5 00:E8A5: 9D B5 02  STA ram_02B5,X
C - - - - - 0x0028B8 00:E8A8: A5 1B     LDA ram_001B
C - - - - - 0x0028BA 00:E8AA: 18        CLC
C - - - - - 0x0028BB 00:E8AB: 69 08     ADC #$08
C - - - - - 0x0028BD 00:E8AD: AA        TAX
C - - - - - 0x0028BE 00:E8AE: E4 83     CPX ram_0083
C - - - - - 0x0028C0 00:E8B0: D0 C9     BNE bra_E87B_loop
sub_E8B2:
C - - - - - 0x0028C2 00:E8B2: A2 00     LDX #$00
bra_E8B4_loop:
C - - - - - 0x0028C4 00:E8B4: 86 1B     STX ram_001B
C - - - - - 0x0028C6 00:E8B6: BD B1 02  LDA ram_02B1,X
C - - - - - 0x0028C9 00:E8B9: 29 FC     AND #$FC
C - - - - - 0x0028CB 00:E8BB: 9D B1 02  STA ram_02B1,X
C - - - - - 0x0028CE 00:E8BE: 20 FF E8  JSR sub_E8FF
C - - - - - 0x0028D1 00:E8C1: A5 1B     LDA ram_001B
C - - - - - 0x0028D3 00:E8C3: 18        CLC
C - - - - - 0x0028D4 00:E8C4: 69 08     ADC #$08
C - - - - - 0x0028D6 00:E8C6: AA        TAX
C - - - - - 0x0028D7 00:E8C7: E4 83     CPX ram_0083
C - - - - - 0x0028D9 00:E8C9: D0 E9     BNE bra_E8B4_loop
bra_E8CB_RTS:
C - - - - - 0x0028DB 00:E8CB: 60        RTS



sub_E8CC:
C - - - - - 0x0028DC 00:E8CC: A5 83     LDA ram_0083
C - - - - - 0x0028DE 00:E8CE: F0 FB     BEQ bra_E8CB_RTS
C - - - - - 0x0028E0 00:E8D0: A2 00     LDX #$00
bra_E8D2:
C - - - - - 0x0028E2 00:E8D2: 86 1B     STX ram_001B
C - - - - - 0x0028E4 00:E8D4: 20 1D E9  JSR sub_E91D
C - - - - - 0x0028E7 00:E8D7: A5 1B     LDA ram_001B
C - - - - - 0x0028E9 00:E8D9: 18        CLC
C - - - - - 0x0028EA 00:E8DA: 69 08     ADC #$08
C - - - - - 0x0028EC 00:E8DC: AA        TAX
C - - - - - 0x0028ED 00:E8DD: E4 83     CPX ram_0083
C - - - - - 0x0028EF 00:E8DF: D0 F1     BNE bra_E8D2
C - - - - - 0x0028F1 00:E8E1: A5 21     LDA ram_frame_counter
C - - - - - 0x0028F3 00:E8E3: 29 03     AND #$03
C - - - - - 0x0028F5 00:E8E5: 0A        ASL
C - - - - - 0x0028F6 00:E8E6: 0A        ASL
C - - - - - 0x0028F7 00:E8E7: 0A        ASL
C - - - - - 0x0028F8 00:E8E8: AA        TAX
C - - - - - 0x0028F9 00:E8E9: BD B0 02  LDA ram_02B0,X
C - - - - - 0x0028FC 00:E8EC: D0 DD     BNE bra_E8CB_RTS
C - - - - - 0x0028FE 00:E8EE: BD B1 02  LDA ram_02B1,X
C - - - - - 0x002901 00:E8F1: 29 0A     AND #$0A
C - - - - - 0x002903 00:E8F3: 49 08     EOR #$08
C - - - - - 0x002905 00:E8F5: D0 D4     BNE bra_E8CB_RTS
C - - - - - 0x002907 00:E8F7: A0 10     LDY #$10
C - - - - - 0x002909 00:E8F9: A5 21     LDA ram_frame_counter
C - - - - - 0x00290B 00:E8FB: 29 04     AND #$04
C - - - - - 0x00290D 00:E8FD: F0 03     BEQ bra_E902    ; each 4th frames
bra_E8FF:
sub_E8FF:
C - - - - - 0x00290F 00:E8FF: BC B1 02  LDY ram_02B1,X
bra_E902:
loc_E902:
C D 3 - - - 0x002912 00:E902: BD B2 02  LDA ram_02B2,X
C - - - - - 0x002915 00:E905: 85 10     STA ram_0010
C - - - - - 0x002917 00:E907: BD B3 02  LDA ram_02B3,X
C - - - - - 0x00291A 00:E90A: 85 11     STA ram_0011
C - - - - - 0x00291C 00:E90C: B9 4F EC  LDA tbl_EC4F,Y
C - - - - - 0x00291F 00:E90F: 85 12     STA ram_0012
C - - - - - 0x002921 00:E911: B9 50 EC  LDA tbl_EC4F + $01,Y
C - - - - - 0x002924 00:E914: 85 13     STA ram_0013
C - - - - - 0x002926 00:E916: A9 80     LDA #$80
C - - - - - 0x002928 00:E918: 85 14     STA ram_0014
C - - - - - 0x00292A 00:E91A: 4C FB C6  JMP loc_C6FB



sub_E91D:
C - - - - - 0x00292D 00:E91D: BD B0 02  LDA ram_02B0,X
C - - - - - 0x002930 00:E920: F0 20     BEQ bra_E942_RTS
C - - - - - 0x002932 00:E922: FE B6 02  INC ram_02B6,X
C - - - - - 0x002935 00:E925: BD B6 02  LDA ram_02B6,X
C - - - - - 0x002938 00:E928: C9 05     CMP #$05
C - - - - - 0x00293A 00:E92A: 90 17     BCC bra_E943
C - - - - - 0x00293C 00:E92C: A9 00     LDA #$00
C - - - - - 0x00293E 00:E92E: 9D B0 02  STA ram_02B0,X
C - - - - - 0x002941 00:E931: 9D B6 02  STA ram_02B6,X
C - - - - - 0x002944 00:E934: BD B1 02  LDA ram_02B1,X
C - - - - - 0x002947 00:E937: 29 06     AND #$06
C - - - - - 0x002949 00:E939: 49 02     EOR #$02
C - - - - - 0x00294B 00:E93B: 9D B1 02  STA ram_02B1,X
C - - - - - 0x00294E 00:E93E: 29 02     AND #$02
C - - - - - 0x002950 00:E940: F0 BD     BEQ bra_E8FF
bra_E942_RTS:
C - - - - - 0x002952 00:E942: 60        RTS
bra_E943:
C - - - - - 0x002953 00:E943: 0A        ASL
C - - - - - 0x002954 00:E944: 85 10     STA ram_0010
C - - - - - 0x002956 00:E946: 20 4D E9  JSR sub_E94D
C - - - - - 0x002959 00:E949: A8        TAY
C - - - - - 0x00295A 00:E94A: 4C 02 E9  JMP loc_E902



sub_E94D:
C - - - - - 0x00295D 00:E94D: BD B1 02  LDA ram_02B1,X
C - - - - - 0x002960 00:E950: 29 06     AND #$06
C - - - - - 0x002962 00:E952: F0 0C     BEQ bra_E960
C - - - - - 0x002964 00:E954: C9 04     CMP #$04
C - - - - - 0x002966 00:E956: 90 0E     BCC bra_E966
C - - - - - 0x002968 00:E958: F0 12     BEQ bra_E96C
C - - - - - 0x00296A 00:E95A: A9 22     LDA #$22
C - - - - - 0x00296C 00:E95C: 38        SEC
C - - - - - 0x00296D 00:E95D: E5 10     SBC ram_0010
C - - - - - 0x00296F 00:E95F: 60        RTS
bra_E960:
C - - - - - 0x002970 00:E960: A5 10     LDA ram_0010
C - - - - - 0x002972 00:E962: 18        CLC
C - - - - - 0x002973 00:E963: 69 10     ADC #$10
C - - - - - 0x002975 00:E965: 60        RTS
bra_E966:
C - - - - - 0x002976 00:E966: A9 1A     LDA #$1A
C - - - - - 0x002978 00:E968: 38        SEC
C - - - - - 0x002979 00:E969: E5 10     SBC ram_0010
C - - - - - 0x00297B 00:E96B: 60        RTS
bra_E96C:
C - - - - - 0x00297C 00:E96C: A5 10     LDA ram_0010
C - - - - - 0x00297E 00:E96E: 18        CLC
C - - - - - 0x00297F 00:E96F: 69 18     ADC #$18
bra_E971_RTS:
C - - - - - 0x002981 00:E971: 60        RTS



loc_E972:
C D 3 - - - 0x002982 00:E972: A5 83     LDA ram_0083
C - - - - - 0x002984 00:E974: F0 FB     BEQ bra_E971_RTS
C - - - - - 0x002986 00:E976: A0 0E     LDY #$0E
C - - - - - 0x002988 00:E978: B1 1E     LDA (ram_001E),Y
C - - - - - 0x00298A 00:E97A: 29 03     AND #$03
C - - - - - 0x00298C 00:E97C: C9 01     CMP #$01
C - - - - - 0x00298E 00:E97E: D0 F1     BNE bra_E971_RTS
C - - - - - 0x002990 00:E980: A0 00     LDY #$00
C - - - - - 0x002992 00:E982: A2 00     LDX #$00
bra_E984_loop:
C - - - - - 0x002994 00:E984: 20 B8 E9  JSR sub_E9B8
C - - - - - 0x002997 00:E987: 8A        TXA
C - - - - - 0x002998 00:E988: 18        CLC
C - - - - - 0x002999 00:E989: 69 08     ADC #$08
C - - - - - 0x00299B 00:E98B: AA        TAX
C - - - - - 0x00299C 00:E98C: E4 83     CPX ram_0083
C - - - - - 0x00299E 00:E98E: D0 F4     BNE bra_E984_loop
C - - - - - 0x0029A0 00:E990: 88        DEY
C - - - - - 0x0029A1 00:E991: 30 DE     BMI bra_E971_RTS
bra_E993_loop:
C - - - - - 0x0029A3 00:E993: B9 12 00  LDA ram_0012,Y
C - - - - - 0x0029A6 00:E996: 88        DEY
C - - - - - 0x0029A7 00:E997: B6 12     LDX ram_0012,Y
bra_E999_loop:
C - - - - - 0x0029A9 00:E999: 88        DEY
C - - - - - 0x0029AA 00:E99A: 30 08     BMI bra_E9A4
C - - - - - 0x0029AC 00:E99C: D9 12 00  CMP a: ram_0012,Y
C - - - - - 0x0029AF 00:E99F: B0 F2     BCS bra_E993_loop
- - - - - - 0x0029B1 00:E9A1: 88        DEY
- - - - - - 0x0029B2 00:E9A2: 90 F5     BCC bra_E999_loop
bra_E9A4:
sub_E9A4:
C - - - - - 0x0029B4 00:E9A4: A9 01     LDA #$01
C - - - - - 0x0029B6 00:E9A6: 9D B0 02  STA ram_02B0,X
C - - - - - 0x0029B9 00:E9A9: 20 05 EA  JSR sub_EA05
C - - - - - 0x0029BC 00:E9AC: BD B1 02  LDA ram_02B1,X
C - - - - - 0x0029BF 00:E9AF: 29 0A     AND #$0A
C - - - - - 0x0029C1 00:E9B1: 49 08     EOR #$08
C - - - - - 0x0029C3 00:E9B3: D0 BC     BNE bra_E971_RTS
C - - - - - 0x0029C5 00:E9B5: 4C 04 EE  JMP loc_EE04



sub_E9B8:
C - - - - - 0x0029C8 00:E9B8: 84 11     STY ram_0011
C - - - - - 0x0029CA 00:E9BA: A5 1E     LDA ram_001E
C - - - - - 0x0029CC 00:E9BC: 9D B7 02  STA ram_02B7,X
C - - - - - 0x0029CF 00:E9BF: D0 0A     BNE bra_E9CB
C - - - - - 0x0029D1 00:E9C1: BD B4 02  LDA ram_02B4,X
C - - - - - 0x0029D4 00:E9C4: 38        SEC
C - - - - - 0x0029D5 00:E9C5: E5 29     SBC ram_cam_pos_X_hi
C - - - - - 0x0029D7 00:E9C7: C9 21     CMP #$21
C - - - - - 0x0029D9 00:E9C9: B0 20     BCS bra_E9EB
bra_E9CB:
C - - - - - 0x0029DB 00:E9CB: A0 03     LDY #$03
C - - - - - 0x0029DD 00:E9CD: B1 1E     LDA (ram_001E),Y
C - - - - - 0x0029DF 00:E9CF: 38        SEC
C - - - - - 0x0029E0 00:E9D0: FD B5 02  SBC ram_02B5,X
C - - - - - 0x0029E3 00:E9D3: C9 02     CMP #$02
C - - - - - 0x0029E5 00:E9D5: B0 14     BCS bra_E9EB
C - - - - - 0x0029E7 00:E9D7: A0 01     LDY #$01
C - - - - - 0x0029E9 00:E9D9: B1 1E     LDA (ram_001E),Y
C - - - - - 0x0029EB 00:E9DB: 38        SEC
C - - - - - 0x0029EC 00:E9DC: FD B4 02  SBC ram_02B4,X
C - - - - - 0x0029EF 00:E9DF: 85 10     STA ram_0010
C - - - - - 0x0029F1 00:E9E1: A0 06     LDY #$06
C - - - - - 0x0029F3 00:E9E3: B1 1E     LDA (ram_001E),Y
C - - - - - 0x0029F5 00:E9E5: 30 07     BMI bra_E9EE
C - - - - - 0x0029F7 00:E9E7: E6 10     INC ram_0010
C - - - - - 0x0029F9 00:E9E9: 30 07     BMI bra_E9F2
bra_E9EB:
C - - - - - 0x0029FB 00:E9EB: A4 11     LDY ram_0011
C - - - - - 0x0029FD 00:E9ED: 60        RTS
bra_E9EE:
C - - - - - 0x0029FE 00:E9EE: A5 10     LDA ram_0010
C - - - - - 0x002A00 00:E9F0: 30 F9     BMI bra_E9EB
bra_E9F2:
C - - - - - 0x002A02 00:E9F2: A4 11     LDY ram_0011
C - - - - - 0x002A04 00:E9F4: 96 12     STX ram_0012,Y
C - - - - - 0x002A06 00:E9F6: C8        INY
C - - - - - 0x002A07 00:E9F7: A5 10     LDA ram_0010
C - - - - - 0x002A09 00:E9F9: 10 05     BPL bra_EA00
C - - - - - 0x002A0B 00:E9FB: A9 00     LDA #$00
C - - - - - 0x002A0D 00:E9FD: 38        SEC
C - - - - - 0x002A0E 00:E9FE: E5 10     SBC ram_0010
bra_EA00:
C - - - - - 0x002A10 00:EA00: 99 12 00  STA ram_0012,Y
C - - - - - 0x002A13 00:EA03: C8        INY
C - - - - - 0x002A14 00:EA04: 60        RTS



sub_EA05:
C - - - - - 0x002A15 00:EA05: BD B1 02  LDA ram_02B1,X
C - - - - - 0x002A18 00:EA08: 29 06     AND #$06
C - - - - - 0x002A1A 00:EA0A: A8        TAY
C - - - - - 0x002A1B 00:EA0B: B9 49 EA  LDA tbl_EA49,Y
C - - - - - 0x002A1E 00:EA0E: 85 1C     STA ram_001C
C - - - - - 0x002A20 00:EA10: B9 4A EA  LDA tbl_EA49 + $01,Y
C - - - - - 0x002A23 00:EA13: 85 1D     STA ram_001D
C - - - - - 0x002A25 00:EA15: A0 00     LDY #$00
bra_EA17_loop:
C - - - - - 0x002A27 00:EA17: C0 10     CPY #$10
C - - - - - 0x002A29 00:EA19: F0 21     BEQ bra_EA3C
C - - - - - 0x002A2B 00:EA1B: B9 04 04  LDA ram_0404,Y
C - - - - - 0x002A2E 00:EA1E: F0 1C     BEQ bra_EA3C
C - - - - - 0x002A30 00:EA20: B9 0F 04  LDA ram_040F,Y
C - - - - - 0x002A33 00:EA23: C9 16     CMP #$16
C - - - - - 0x002A35 00:EA25: F0 15     BEQ bra_EA3C
C - - - - - 0x002A37 00:EA27: B9 03 04  LDA ram_0403,Y
C - - - - - 0x002A3A 00:EA2A: 38        SEC
C - - - - - 0x002A3B 00:EA2B: FD B5 02  SBC ram_02B5,X
C - - - - - 0x002A3E 00:EA2E: C9 02     CMP #$02
C - - - - - 0x002A40 00:EA30: B0 0A     BCS bra_EA3C
C - - - - - 0x002A42 00:EA32: BD B4 02  LDA ram_02B4,X
C - - - - - 0x002A45 00:EA35: 38        SEC
C - - - - - 0x002A46 00:EA36: F9 01 04  SBC ram_0401,Y
C - - - - - 0x002A49 00:EA39: 20 46 EA  JSR sub_EA46_indirect_jump
bra_EA3C:
C - - - - - 0x002A4C 00:EA3C: 98        TYA
C - - - - - 0x002A4D 00:EA3D: 18        CLC
C - - - - - 0x002A4E 00:EA3E: 69 10     ADC #$10
C - - - - - 0x002A50 00:EA40: A8        TAY
C - - - - - 0x002A51 00:EA41: C0 90     CPY #$90
C - - - - - 0x002A53 00:EA43: D0 D2     BNE bra_EA17_loop
C - - - - - 0x002A55 00:EA45: 60        RTS



sub_EA46_indirect_jump:
C - - - - - 0x002A56 00:EA46: 6C 1C 00  JMP (ram_001C)



tbl_EA49:
- D 3 - - - 0x002A59 00:EA49: 5E EA     .word ofs_004_EA5E_00
- D 3 - - - 0x002A5B 00:EA4B: 51 EA     .word ofs_004_EA51_01
- D 3 - - - 0x002A5D 00:EA4D: 69 EA     .word ofs_004_EA69_02
- D 3 - - - 0x002A5F 00:EA4F: 59 EA     .word ofs_004_EA59_03



ofs_004_EA51_01:
C - - J - - 0x002A61 00:EA51: 18        CLC
C - - - - - 0x002A62 00:EA52: 69 01     ADC #$01
C - - - - - 0x002A64 00:EA54: C9 04     CMP #$04
C - - - - - 0x002A66 00:EA56: 90 18     BCC bra_EA70
C - - - - - 0x002A68 00:EA58: 60        RTS



ofs_004_EA59_03:
C - - J - - 0x002A69 00:EA59: C9 04     CMP #$04
C - - - - - 0x002A6B 00:EA5B: 4C 63 EA  JMP loc_EA63



ofs_004_EA5E_00:
C - - J - - 0x002A6E 00:EA5E: 18        CLC
C - - - - - 0x002A6F 00:EA5F: 69 02     ADC #$02
C - - - - - 0x002A71 00:EA61: C9 03     CMP #$03
loc_EA63:
C D 3 - - - 0x002A73 00:EA63: B0 2A     BCS bra_EA8F_RTS
C - - - - - 0x002A75 00:EA65: A9 01     LDA #$01
C - - - - - 0x002A77 00:EA67: 90 09     BCC bra_EA72    ; jmp
ofs_004_EA69_02:
C - - J - - 0x002A79 00:EA69: 38        SEC
C - - - - - 0x002A7A 00:EA6A: E9 02     SBC #$02
C - - - - - 0x002A7C 00:EA6C: C9 03     CMP #$03
C - - - - - 0x002A7E 00:EA6E: B0 1F     BCS bra_EA8F_RTS
bra_EA70:
C - - - - - 0x002A80 00:EA70: A9 FF     LDA #$FF
bra_EA72:
C - - - - - 0x002A82 00:EA72: 99 06 04  STA ram_0406,Y
C - - - - - 0x002A85 00:EA75: A9 0C     LDA #$0C
C - - - - - 0x002A87 00:EA77: 99 04 04  STA ram_0404,Y
C - - - - - 0x002A8A 00:EA7A: A9 10     LDA #$10
C - - - - - 0x002A8C 00:EA7C: 99 0F 04  STA ram_040F,Y
C - - - - - 0x002A8F 00:EA7F: A9 08     LDA #$08
C - - - - - 0x002A91 00:EA81: 99 07 04  STA ram_0407,Y
C - - - - - 0x002A94 00:EA84: C0 00     CPY #$00
C - - - - - 0x002A96 00:EA86: F0 07     BEQ bra_EA8F_RTS
C - - - - - 0x002A98 00:EA88: BD B7 02  LDA ram_02B7,X
C - - - - - 0x002A9B 00:EA8B: D0 02     BNE bra_EA8F_RTS
C - - - - - 0x002A9D 00:EA8D: E6 30     INC ram_0030
bra_EA8F_RTS:
C - - - - - 0x002A9F 00:EA8F: 60        RTS



sub_EA90:
C - - - - - 0x002AA0 00:EA90: A9 00     LDA #$00
C - - - - - 0x002AA2 00:EA92: A0 09     LDY #$09
C - - - - - 0x002AA4 00:EA94: 91 1E     STA (ram_001E),Y
C - - - - - 0x002AA6 00:EA96: A2 00     LDX #$00
bra_EA98_loop:
C - - - - - 0x002AA8 00:EA98: BD B0 02  LDA ram_02B0,X
C - - - - - 0x002AAB 00:EA9B: D0 4B     BNE bra_EAE8
C - - - - - 0x002AAD 00:EA9D: BD B1 02  LDA ram_02B1,X
C - - - - - 0x002AB0 00:EAA0: 29 02     AND #$02
C - - - - - 0x002AB2 00:EAA2: D0 44     BNE bra_EAE8
C - - - - - 0x002AB4 00:EAA4: A0 03     LDY #$03
C - - - - - 0x002AB6 00:EAA6: B1 1E     LDA (ram_001E),Y
C - - - - - 0x002AB8 00:EAA8: 38        SEC
C - - - - - 0x002AB9 00:EAA9: FD B5 02  SBC ram_02B5,X
C - - - - - 0x002ABC 00:EAAC: C9 02     CMP #$02
C - - - - - 0x002ABE 00:EAAE: B0 38     BCS bra_EAE8
C - - - - - 0x002AC0 00:EAB0: A0 06     LDY #$06
C - - - - - 0x002AC2 00:EAB2: B1 1E     LDA (ram_001E),Y
C - - - - - 0x002AC4 00:EAB4: 30 28     BMI bra_EADE
C - - - - - 0x002AC6 00:EAB6: BD B4 02  LDA ram_02B4,X
C - - - - - 0x002AC9 00:EAB9: 38        SEC
C - - - - - 0x002ACA 00:EABA: A0 01     LDY #$01
C - - - - - 0x002ACC 00:EABC: F1 1E     SBC (ram_001E),Y
C - - - - - 0x002ACE 00:EABE: C9 02     CMP #$02
C - - - - - 0x002AD0 00:EAC0: D0 26     BNE bra_EAE8
bra_EAC2:
C - - - - - 0x002AD2 00:EAC2: A5 1E     LDA ram_001E
C - - - - - 0x002AD4 00:EAC4: 9D B7 02  STA ram_02B7,X
C - - - - - 0x002AD7 00:EAC7: F0 0E     BEQ bra_EAD7
C - - - - - 0x002AD9 00:EAC9: C9 20     CMP #$20
C - - - - - 0x002ADB 00:EACB: 90 07     BCC bra_EAD4
C - - - - - 0x002ADD 00:EACD: BD B1 02  LDA ram_02B1,X
C - - - - - 0x002AE0 00:EAD0: 29 08     AND #$08
C - - - - - 0x002AE2 00:EAD2: D0 1E     BNE bra_EAF2
bra_EAD4:
C - - - - - 0x002AE4 00:EAD4: 20 A4 E9  JSR sub_E9A4
bra_EAD7:
C - - - - - 0x002AE7 00:EAD7: A9 01     LDA #$01
C - - - - - 0x002AE9 00:EAD9: A0 09     LDY #$09
C - - - - - 0x002AEB 00:EADB: 91 1E     STA (ram_001E),Y
C - - - - - 0x002AED 00:EADD: 60        RTS
bra_EADE:
C - - - - - 0x002AEE 00:EADE: BD B4 02  LDA ram_02B4,X
C - - - - - 0x002AF1 00:EAE1: 38        SEC
C - - - - - 0x002AF2 00:EAE2: A0 01     LDY #$01
C - - - - - 0x002AF4 00:EAE4: D1 1E     CMP (ram_001E),Y
C - - - - - 0x002AF6 00:EAE6: F0 DA     BEQ bra_EAC2
bra_EAE8:
C - - - - - 0x002AF8 00:EAE8: 8A        TXA
C - - - - - 0x002AF9 00:EAE9: 18        CLC
C - - - - - 0x002AFA 00:EAEA: 69 08     ADC #$08
C - - - - - 0x002AFC 00:EAEC: AA        TAX
C - - - - - 0x002AFD 00:EAED: E4 83     CPX ram_0083
C - - - - - 0x002AFF 00:EAEF: D0 A7     BNE bra_EA98_loop
C - - - - - 0x002B01 00:EAF1: 60        RTS
bra_EAF2:
C - - - - - 0x002B02 00:EAF2: A0 06     LDY #$06
C - - - - - 0x002B04 00:EAF4: 38        SEC
C - - - - - 0x002B05 00:EAF5: A9 00     LDA #$00
C - - - - - 0x002B07 00:EAF7: F1 1E     SBC (ram_001E),Y
C - - - - - 0x002B09 00:EAF9: 91 1E     STA (ram_001E),Y
C - - - - - 0x002B0B 00:EAFB: 60        RTS



tbl_EAFC:
- D 3 - - - 0x002B0C 00:EAFC: 1C EB     .word _off003_EB1C_00
- D 3 - - - 0x002B0E 00:EAFE: 3B EB     .word _off003_EB3B_01
- - - - - - 0x002B10 00:EB00: 4E EC     .word _off003_EC4E_02
- D 3 - - - 0x002B12 00:EB02: 5A EB     .word _off003_EB5A_03
- D 3 - - - 0x002B14 00:EB04: 73 EB     .word _off003_EB73_04
- D 3 - - - 0x002B16 00:EB06: 8C EB     .word _off003_EB8C_05
- - - - - - 0x002B18 00:EB08: 4E EC     .word _off003_EC4E_06
- D 3 - - - 0x002B1A 00:EB0A: A8 EB     .word _off003_EBA8_07
- D 3 - - - 0x002B1C 00:EB0C: C4 EB     .word _off003_EBC4_08
- D 3 - - - 0x002B1E 00:EB0E: DD EB     .word _off003_EBDD_09
- - - - - - 0x002B20 00:EB10: 4E EC     .word _off003_EC4E_0A
- D 3 - - - 0x002B22 00:EB12: F3 EB     .word _off003_EBF3_0B
- D 3 - - - 0x002B24 00:EB14: 09 EC     .word _off003_EC09_0C
- D 3 - - - 0x002B26 00:EB16: 22 EC     .word _off003_EC22_0D
- - - - - - 0x002B28 00:EB18: 4E EC     .word _off003_EC4E_0E
- D 3 - - - 0x002B2A 00:EB1A: 2F EC     .word _off003_EC2F_0F



_off003_EB1C_00:
- D 3 - I - 0x002B2C 00:EB1C: 50        .byte $0A * $08   ; counter * 08
- D 3 - I - 0x002B2D 00:EB1D: 08        .byte $08, $AC, $21   ; 
- D 3 - I - 0x002B30 00:EB20: 08        .byte $08, $2C, $23   ; 
- D 3 - I - 0x002B33 00:EB23: 0C        .byte $0C, $2F, $25   ; 
- D 3 - I - 0x002B36 00:EB26: 0C        .byte $0C, $AF, $26   ; 
- D 3 - I - 0x002B39 00:EB29: 00        .byte $00, $2C, $21   ; 
- D 3 - I - 0x002B3C 00:EB2C: 00        .byte $00, $BD, $21   ; 
- D 3 - I - 0x002B3F 00:EB2F: 00        .byte $00, $AC, $22   ; 
- D 3 - I - 0x002B42 00:EB32: 04        .byte $04, $BD, $22   ; 
- D 3 - I - 0x002B45 00:EB35: 04        .byte $04, $3D, $23   ; 
- D 3 - I - 0x002B48 00:EB38: 04        .byte $04, $2F, $26   ; 



_off003_EB3B_01:
- D 3 - I - 0x002B4B 00:EB3B: 50        .byte $0A * $08   ; counter * 08
- D 3 - I - 0x002B4C 00:EB3C: 08        .byte $08, $2C, $22   ; 
- D 3 - I - 0x002B4F 00:EB3F: 08        .byte $08, $2C, $23   ; 
- D 3 - I - 0x002B52 00:EB42: 0C        .byte $0C, $2F, $25   ; 
- D 3 - I - 0x002B55 00:EB45: 0C        .byte $0C, $2F, $27   ; 
- D 3 - I - 0x002B58 00:EB48: 00        .byte $00, $2C, $21   ; 
- D 3 - I - 0x002B5B 00:EB4B: 00        .byte $00, $AC, $22   ; 
- D 3 - I - 0x002B5E 00:EB4E: 00        .byte $00, $3D, $23   ; 
- D 3 - I - 0x002B61 00:EB51: 00        .byte $00, $2A, $26   ; 
- D 3 - I - 0x002B64 00:EB54: 04        .byte $04, $3D, $22   ; 
- D 3 - I - 0x002B67 00:EB57: 04        .byte $04, $A5, $25   ; 



_off003_EB5A_03:
- D 3 - I - 0x002B6A 00:EB5A: 40        .byte $08 * $08   ; counter * 08
- D 3 - I - 0x002B6B 00:EB5B: 08        .byte $08, $2C, $21   ; 
- D 3 - I - 0x002B6E 00:EB5E: 08        .byte $08, $2C, $23   ; 
- D 3 - I - 0x002B71 00:EB61: 0C        .byte $0C, $B0, $25   ; 
- D 3 - I - 0x002B74 00:EB64: 0C        .byte $0C, $B0, $26   ; 
- D 3 - I - 0x002B77 00:EB67: 00        .byte $00, $25, $27   ; 
- D 3 - I - 0x002B7A 00:EB6A: 04        .byte $04, $2B, $22   ; 
- D 3 - I - 0x002B7D 00:EB6D: 04        .byte $04, $2F, $25   ; 
- D 3 - I - 0x002B80 00:EB70: 04        .byte $04, $30, $26   ; 



_off003_EB73_04:
- D 3 - I - 0x002B83 00:EB73: 40        .byte $08 * $08   ; counter * 08
- D 3 - I - 0x002B84 00:EB74: 08        .byte $08, $AB, $21   ; 
- D 3 - I - 0x002B87 00:EB77: 08        .byte $08, $AB, $22   ; 
- D 3 - I - 0x002B8A 00:EB7A: 0C        .byte $0C, $B0, $25   ; 
- D 3 - I - 0x002B8D 00:EB7D: 0C        .byte $0C, $B0, $26   ; 
- D 3 - I - 0x002B90 00:EB80: 00        .byte $00, $26, $22   ; 
- D 3 - I - 0x002B93 00:EB83: 00        .byte $00, $2A, $25   ; 
- D 3 - I - 0x002B96 00:EB86: 04        .byte $04, $2F, $27   ; 
- D 3 - I - 0x002B99 00:EB89: 04        .byte $04, $31, $23   ; 



_off003_EB8C_05:
- D 3 - I - 0x002B9C 00:EB8C: 48        .byte $09 * $08   ; counter * 08
- D 3 - I - 0x002B9D 00:EB8D: 08        .byte $08, $2C, $21   ; 
- D 3 - I - 0x002BA0 00:EB90: 08        .byte $08, $2C, $23   ; 
- D 3 - I - 0x002BA3 00:EB93: 0C        .byte $0C, $2F, $25   ; 
- D 3 - I - 0x002BA6 00:EB96: 0C        .byte $0C, $B0, $26   ; 
- D 3 - I - 0x002BA9 00:EB99: 00        .byte $00, $AB, $21   ; 
- D 3 - I - 0x002BAC 00:EB9C: 00        .byte $00, $A6, $22   ; 
- D 3 - I - 0x002BAF 00:EB9F: 00        .byte $00, $25, $27   ; 
- D 3 - I - 0x002BB2 00:EBA2: 04        .byte $04, $B5, $25   ; 
- D 3 - I - 0x002BB5 00:EBA5: 04        .byte $04, $30, $26   ; 



_off003_EBA8_07:
- D 3 - I - 0x002BB8 00:EBA8: 48        .byte $09 * $08   ; counter * 08
- D 3 - I - 0x002BB9 00:EBA9: 08        .byte $08, $AC, $21   ; 
- D 3 - I - 0x002BBC 00:EBAC: 08        .byte $08, $39, $22   ; 
- D 3 - I - 0x002BBF 00:EBAF: 08        .byte $08, $2C, $23   ; 
- D 3 - I - 0x002BC2 00:EBB2: 0C        .byte $0C, $AF, $26   ; 
- D 3 - I - 0x002BC5 00:EBB5: 00        .byte $00, $26, $22   ; 
- D 3 - I - 0x002BC8 00:EBB8: 00        .byte $00, $3D, $23   ; 
- D 3 - I - 0x002BCB 00:EBBB: 04        .byte $04, $2F, $27   ; 
- D 3 - I - 0x002BCE 00:EBBE: 04        .byte $04, $2F, $25   ; 
- D 3 - I - 0x002BD1 00:EBC1: 04        .byte $04, $B5, $25   ; 



_off003_EBC4_08:
- D 3 - I - 0x002BD4 00:EBC4: 40        .byte $08 * $08   ; counter * 08
- D 3 - I - 0x002BD5 00:EBC5: 08        .byte $08, $2C, $23   ; 
- D 3 - I - 0x002BD8 00:EBC8: 08        .byte $08, $AF, $25   ; 
- D 3 - I - 0x002BDB 00:EBCB: 0C        .byte $0C, $39, $22   ; 
- D 3 - I - 0x002BDE 00:EBCE: 0C        .byte $0C, $2F, $25   ; 
- D 3 - I - 0x002BE1 00:EBD1: 00        .byte $00, $2C, $22   ; 
- D 3 - I - 0x002BE4 00:EBD4: 00        .byte $00, $A6, $22   ; 
- D 3 - I - 0x002BE7 00:EBD7: 00        .byte $00, $AF, $26   ; 
- D 3 - I - 0x002BEA 00:EBDA: 04        .byte $04, $3D, $23   ; 



_off003_EBDD_09:
- D 3 - I - 0x002BED 00:EBDD: 38        .byte $07 * $08   ; counter * 08
- D 3 - I - 0x002BEE 00:EBDE: 0C        .byte $0C, $AC, $21   ; 
- D 3 - I - 0x002BF1 00:EBE1: 0C        .byte $0C, $39, $22   ; 
- D 3 - I - 0x002BF4 00:EBE4: 0C        .byte $0C, $3D, $23   ; 
- D 3 - I - 0x002BF7 00:EBE7: 0C        .byte $0C, $AF, $25   ; 
- D 3 - I - 0x002BFA 00:EBEA: 00        .byte $00, $2C, $22   ; 
- D 3 - I - 0x002BFD 00:EBED: 00        .byte $00, $A6, $22   ; 
- D 3 - I - 0x002C00 00:EBF0: 00        .byte $00, $2F, $26   ; 



_off003_EBF3_0B:
- D 3 - I - 0x002C03 00:EBF3: 38        .byte $07 * $08   ; counter * 08
- D 3 - I - 0x002C04 00:EBF4: 08        .byte $08, $30, $21   ; 
- D 3 - I - 0x002C07 00:EBF7: 08        .byte $08, $35, $23   ; 
- D 3 - I - 0x002C0A 00:EBFA: 08        .byte $08, $A6, $25   ; 
- D 3 - I - 0x002C0D 00:EBFD: 0C        .byte $0C, $35, $22   ; 
- D 3 - I - 0x002C10 00:EC00: 00        .byte $00, $A6, $26   ; 
- D 3 - I - 0x002C13 00:EC03: 00        .byte $00, $26, $27   ; 
- D 3 - I - 0x002C16 00:EC06: 04        .byte $04, $26, $25   ; 



_off003_EC09_0C:
- D 3 - I - 0x002C19 00:EC09: 40        .byte $08 * $08   ; counter * 08
- D 3 - I - 0x002C1A 00:EC0A: 08        .byte $08, $30, $21   ; 
- D 3 - I - 0x002C1D 00:EC0D: 08        .byte $08, $26, $26   ; 
- D 3 - I - 0x002C20 00:EC10: 0C        .byte $0C, $35, $23   ; 
- D 3 - I - 0x002C23 00:EC13: 0C        .byte $0C, $2B, $25   ; 
- D 3 - I - 0x002C26 00:EC16: 00        .byte $00, $30, $22   ; 
- D 3 - I - 0x002C29 00:EC19: 00        .byte $00, $A6, $22   ; 
- D 3 - I - 0x002C2C 00:EC1C: 00        .byte $00, $26, $27   ; 
- D 3 - I - 0x002C2F 00:EC1F: 04        .byte $04, $AB, $25   ; 



_off003_EC22_0D:
- D 3 - I - 0x002C32 00:EC22: 20        .byte $04 * $08   ; counter * 08
- D 3 - I - 0x002C33 00:EC23: 08        .byte $08, $35, $21   ; 
- D 3 - I - 0x002C36 00:EC26: 08        .byte $08, $26, $25   ; 
- D 3 - I - 0x002C39 00:EC29: 08        .byte $08, $A6, $26   ; 
- D 3 - I - 0x002C3C 00:EC2C: 0C        .byte $0C, $B5, $22   ; 



_off003_EC2F_0F:
- D 3 - I - 0x002C3F 00:EC2F: 50        .byte $0A * $08   ; counter * 08
- D 3 - I - 0x002C40 00:EC30: 08        .byte $08, $BD, $22   ; 
- D 3 - I - 0x002C43 00:EC33: 08        .byte $08, $2C, $23   ; 
- D 3 - I - 0x002C46 00:EC36: 0C        .byte $0C, $2F, $27   ; 
- D 3 - I - 0x002C49 00:EC39: 0C        .byte $0C, $BD, $21   ; 
- D 3 - I - 0x002C4C 00:EC3C: 00        .byte $00, $2C, $21   ; 
- D 3 - I - 0x002C4F 00:EC3F: 00        .byte $00, $2C, $22   ; 
- D 3 - I - 0x002C52 00:EC42: 00        .byte $00, $A6, $22   ; 
- D 3 - I - 0x002C55 00:EC45: 00        .byte $00, $AA, $26   ; 
- D 3 - I - 0x002C58 00:EC48: 04        .byte $04, $2F, $25   ; 
- D 3 - I - 0x002C5B 00:EC4B: 04        .byte $04, $2F, $26   ; 



_off003_EC4E_02:
_off003_EC4E_06:
_off003_EC4E_0A:
_off003_EC4E_0E:
- - - - - - 0x002C5E 00:EC4E: 00        .byte $00   ; bonus rounds



tbl_EC4F:
- D 3 - - - 0x002C5F 00:EC4F: 71 EC     .word _off004_EC71_00
- - - - - - 0x002C61 00:EC51: C5 EC     .word _off004_ECC5_01
- D 3 - - - 0x002C63 00:EC53: 7A EC     .word _off004_EC7A_02
- - - - - - 0x002C65 00:EC55: 01 ED     .word _off004_ED01_03
- D 3 - - - 0x002C67 00:EC57: 83 EC     .word _off004_EC83_04
- - - - - - 0x002C69 00:EC59: C5 EC     .word _off004_ECC5_05
- D 3 - - - 0x002C6B 00:EC5B: 8C EC     .word _off004_EC8C_06
- - - - - - 0x002C6D 00:EC5D: 01 ED     .word _off004_ED01_07
- D 3 - - - 0x002C6F 00:EC5F: 95 EC     .word _off004_EC95_08
- D 3 - - - 0x002C71 00:EC61: 9E EC     .word _off004_EC9E_09
- D 3 - - - 0x002C73 00:EC63: AA EC     .word _off004_ECAA_0A
- D 3 - - - 0x002C75 00:EC65: B6 EC     .word _off004_ECB6_0B
- D 3 - - - 0x002C77 00:EC67: C5 EC     .word _off004_ECC5_0C
- D 3 - - - 0x002C79 00:EC69: D4 EC     .word _off004_ECD4_0D
- D 3 - - - 0x002C7B 00:EC6B: E2 EC     .word _off004_ECE2_0E
- D 3 - - - 0x002C7D 00:EC6D: F0 EC     .word _off004_ECF0_0F
- D 3 - - - 0x002C7F 00:EC6F: 01 ED     .word _off004_ED01_10



_off004_EC71_00:
- D 3 - I - 0x002C81 00:EC71: 01        .byte $01   ; counter
- D 3 - I - 0x002C82 00:EC72: 56        .byte $56   ; tiles
- D 3 - I - 0x002C83 00:EC73: 1F        .byte $1F   ; ppu offset

- D 3 - I - 0x002C84 00:EC74: 01        .byte $01   ; 
- D 3 - I - 0x002C85 00:EC75: 58        .byte $58   ; 
- D 3 - I - 0x002C86 00:EC76: 1F        .byte $1F   ; 

- D 3 - I - 0x002C87 00:EC77: 01        .byte $01   ; 
- D 3 - I - 0x002C88 00:EC78: 56        .byte $56   ; 
- D 3 - I - 0x002C89 00:EC79: 00        .byte $00   ; end token



_off004_EC7A_02:
- D 3 - I - 0x002C8A 00:EC7A: 01        .byte $01   ; counter
- D 3 - I - 0x002C8B 00:EC7B: 56        .byte $56   ; tiles
- D 3 - I - 0x002C8C 00:EC7C: 1F        .byte $1F   ; ppu offset

- D 3 - I - 0x002C8D 00:EC7D: 01        .byte $01   ; 
- D 3 - I - 0x002C8E 00:EC7E: 57        .byte $57   ; 
- D 3 - I - 0x002C8F 00:EC7F: 1F        .byte $1F   ; 

- D 3 - I - 0x002C90 00:EC80: 01        .byte $01   ; 
- D 3 - I - 0x002C91 00:EC81: 56        .byte $56   ; 
- D 3 - I - 0x002C92 00:EC82: 00        .byte $00   ; end token



_off004_EC83_04:
- D 3 - I - 0x002C93 00:EC83: 01        .byte $01   ; counter
- D 3 - I - 0x002C94 00:EC84: 53        .byte $53   ; tiles
- D 3 - I - 0x002C95 00:EC85: 1F        .byte $1F   ; ppu offset

- D 3 - I - 0x002C96 00:EC86: 01        .byte $01   ; 
- D 3 - I - 0x002C97 00:EC87: 55        .byte $55   ; 
- D 3 - I - 0x002C98 00:EC88: 1F        .byte $1F   ; 

- D 3 - I - 0x002C99 00:EC89: 01        .byte $01   ; 
- D 3 - I - 0x002C9A 00:EC8A: 53        .byte $53   ; 
- D 3 - I - 0x002C9B 00:EC8B: 00        .byte $00   ; end token



_off004_EC8C_06:
- D 3 - I - 0x002C9C 00:EC8C: 01        .byte $01   ; counter
- D 3 - I - 0x002C9D 00:EC8D: 53        .byte $53   ; tiles
- D 3 - I - 0x002C9E 00:EC8E: 1F        .byte $1F   ; ppu offset

- D 3 - I - 0x002C9F 00:EC8F: 01        .byte $01   ; 
- D 3 - I - 0x002CA0 00:EC90: 54        .byte $54   ; 
- D 3 - I - 0x002CA1 00:EC91: 1F        .byte $1F   ; 

- D 3 - I - 0x002CA2 00:EC92: 01        .byte $01   ; 
- D 3 - I - 0x002CA3 00:EC93: 53        .byte $53   ; 
- D 3 - I - 0x002CA4 00:EC94: 00        .byte $00   ; end token



_off004_EC95_08:
- D 3 - I - 0x002CA5 00:EC95: 01        .byte $01   ; counter
- D 3 - I - 0x002CA6 00:EC96: 52        .byte $52   ; tiles
- D 3 - I - 0x002CA7 00:EC97: 1F        .byte $1F   ; ppu offset

- D 3 - I - 0x002CA8 00:EC98: 01        .byte $01   ; 
- D 3 - I - 0x002CA9 00:EC99: 52        .byte $52   ; 
- D 3 - I - 0x002CAA 00:EC9A: 1F        .byte $1F   ; 

- D 3 - I - 0x002CAB 00:EC9B: 01        .byte $01   ; 
- D 3 - I - 0x002CAC 00:EC9C: 52        .byte $52   ; 
- D 3 - I - 0x002CAD 00:EC9D: 00        .byte $00   ; end token



_off004_EC9E_09:
- D 3 - I - 0x002CAE 00:EC9E: 02        .byte $02   ; counter
- D 3 - I - 0x002CAF 00:EC9F: 87        .byte $87, $00   ; tiles
- D 3 - I - 0x002CB1 00:ECA1: 1E        .byte $1E   ; ppu offset

- D 3 - I - 0x002CB2 00:ECA2: 02        .byte $02   ; 
- D 3 - I - 0x002CB3 00:ECA3: 87        .byte $87, $00   ; 
- D 3 - I - 0x002CB5 00:ECA5: 1E        .byte $1E   ; 

- D 3 - I - 0x002CB6 00:ECA6: 02        .byte $02   ; 
- D 3 - I - 0x002CB7 00:ECA7: 87        .byte $87, $00   ; 
- D 3 - I - 0x002CB9 00:ECA9: 00        .byte $00   ; end token



_off004_ECAA_0A:
- D 3 - I - 0x002CBA 00:ECAA: 02        .byte $02   ; counter
- D 3 - I - 0x002CBB 00:ECAB: 87        .byte $87, $89   ; tiles
- D 3 - I - 0x002CBD 00:ECAD: 1E        .byte $1E   ; ppu offset

- D 3 - I - 0x002CBE 00:ECAE: 02        .byte $02   ; 
- D 3 - I - 0x002CBF 00:ECAF: 87        .byte $87, $89   ; 
- D 3 - I - 0x002CC1 00:ECB1: 1E        .byte $1E   ; 

- D 3 - I - 0x002CC2 00:ECB2: 02        .byte $02   ; 
- D 3 - I - 0x002CC3 00:ECB3: 87        .byte $87, $89   ; 
- D 3 - I - 0x002CC5 00:ECB5: 00        .byte $00   ; end token



_off004_ECB6_0B:
- D 3 - I - 0x002CC6 00:ECB6: 03        .byte $03   ; counter
- D 3 - I - 0x002CC7 00:ECB7: 87        .byte $87, $88, $00   ; tiles
- D 3 - I - 0x002CCA 00:ECBA: 1D        .byte $1D   ; ppu offset

- D 3 - I - 0x002CCB 00:ECBB: 03        .byte $03   ; 
- D 3 - I - 0x002CCC 00:ECBC: 87        .byte $87, $88, $00   ; 
- D 3 - I - 0x002CCF 00:ECBF: 1D        .byte $1D   ; 

- D 3 - I - 0x002CD0 00:ECC0: 03        .byte $03   ; 
- D 3 - I - 0x002CD1 00:ECC1: 87        .byte $87, $88, $00   ; 
- D 3 - I - 0x002CD4 00:ECC4: 00        .byte $00   ; end token



_off004_ECC5_01:
_off004_ECC5_05:
_off004_ECC5_0C:
- D 3 - I - 0x002CD5 00:ECC5: 03        .byte $03   ; counter
- D 3 - I - 0x002CD6 00:ECC6: 87        .byte $87, $88, $89   ; tiles
- D 3 - I - 0x002CD9 00:ECC9: 1D        .byte $1D   ; ppu offset

- D 3 - I - 0x002CDA 00:ECCA: 03        .byte $03   ; 
- D 3 - I - 0x002CDB 00:ECCB: 87        .byte $87, $88, $89   ; 
- D 3 - I - 0x002CDE 00:ECCE: 1D        .byte $1D   ; 

- D 3 - I - 0x002CDF 00:ECCF: 03        .byte $03   ; 
- D 3 - I - 0x002CE0 00:ECD0: 87        .byte $87, $88, $89   ; 
- D 3 - I - 0x002CE3 00:ECD3: 00        .byte $00   ; end token



_off004_ECD4_0D:
- D 3 - I - 0x002CE4 00:ECD4: 00        .byte $00   ; counter
- D 3 - I - 0x002CE5 00:ECD5: FF        .byte $FF   ; ppu offset

- D 3 - I - 0x002CE6 00:ECD6: 02        .byte $02   ; counter
- D 3 - I - 0x002CE7 00:ECD7: 00        .byte $00, $89   ; tiles
- D 3 - I - 0x002CE9 00:ECD9: 1E        .byte $1E   ; ppu offset

- D 3 - I - 0x002CEA 00:ECDA: 02        .byte $02   ; 
- D 3 - I - 0x002CEB 00:ECDB: 00        .byte $00, $89   ; 
- D 3 - I - 0x002CED 00:ECDD: 1E        .byte $1E   ; 

- D 3 - I - 0x002CEE 00:ECDE: 02        .byte $02   ; 
- D 3 - I - 0x002CEF 00:ECDF: 00        .byte $00, $89   ; 
- D 3 - I - 0x002CF1 00:ECE1: 00        .byte $00   ; end token



_off004_ECE2_0E:
- D 3 - I - 0x002CF2 00:ECE2: 00        .byte $00   ; counter
- D 3 - I - 0x002CF3 00:ECE3: FF        .byte $FF   ; ppu offset

- D 3 - I - 0x002CF4 00:ECE4: 02        .byte $02   ; counter
- D 3 - I - 0x002CF5 00:ECE5: 87        .byte $87, $89   ; tiles
- D 3 - I - 0x002CF7 00:ECE7: 1E        .byte $1E   ; ppu offset

- D 3 - I - 0x002CF8 00:ECE8: 02        .byte $02   ; 
- D 3 - I - 0x002CF9 00:ECE9: 87        .byte $87, $89   ; 
- D 3 - I - 0x002CFB 00:ECEB: 1E        .byte $1E   ; 

- D 3 - I - 0x002CFC 00:ECEC: 02        .byte $02   ; 
- D 3 - I - 0x002CFD 00:ECED: 87        .byte $87, $89   ; 
- D 3 - I - 0x002CFF 00:ECEF: 00        .byte $00   ; end token



_off004_ECF0_0F:
- D 3 - I - 0x002D00 00:ECF0: 00        .byte $00   ; counter
- D 3 - I - 0x002D01 00:ECF1: FE        .byte $FE   ; ppu offset

- D 3 - I - 0x002D02 00:ECF2: 03        .byte $03   ; counter
- D 3 - I - 0x002D03 00:ECF3: 00        .byte $00, $88, $89   ; tiles
- D 3 - I - 0x002D06 00:ECF6: 1D        .byte $1D   ; ppu offset

- D 3 - I - 0x002D07 00:ECF7: 03        .byte $03   ; 
- D 3 - I - 0x002D08 00:ECF8: 00        .byte $00, $88, $89   ; 
- D 3 - I - 0x002D0B 00:ECFB: 1D        .byte $1D   ; 

- D 3 - I - 0x002D0C 00:ECFC: 03        .byte $03   ; 
- D 3 - I - 0x002D0D 00:ECFD: 00        .byte $00, $88, $89   ; 
- D 3 - I - 0x002D10 00:ED00: 00        .byte $00   ; end token



_off004_ED01_03:
_off004_ED01_07:
_off004_ED01_10:
- D 3 - I - 0x002D11 00:ED01: 00        .byte $00   ; counter
- D 3 - I - 0x002D12 00:ED02: FE        .byte $FE   ; ppu offset

- D 3 - I - 0x002D13 00:ED03: 03        .byte $03   ; counter
- D 3 - I - 0x002D14 00:ED04: 87        .byte $87, $88, $89   ; tiles
- D 3 - I - 0x002D17 00:ED07: 1D        .byte $1D   ; ppu offset

- D 3 - I - 0x002D18 00:ED08: 03        .byte $03   ; 
- D 3 - I - 0x002D19 00:ED09: 87        .byte $87, $88, $89   ; 
- D 3 - I - 0x002D1C 00:ED0C: 1D        .byte $1D   ; 

- D 3 - I - 0x002D1D 00:ED0D: 03        .byte $03   ; 
- D 3 - I - 0x002D1E 00:ED0E: 87        .byte $87, $88, $89   ; 
- D 3 - I - 0x002D21 00:ED11: 00        .byte $00   ; end token



bra_ED12:
C - - - - - 0x002D22 00:ED12: A9 60     LDA #$60
C - - - - - 0x002D24 00:ED14: 20 4D EE  JSR sub_EE4D
C - - - - - 0x002D27 00:ED17: 20 05 C3  JSR sub_C305
C - - - - - 0x002D2A 00:ED1A: D0 31     BNE bra_ED4D_RTS
loc_ED1C:
C D 3 - - - 0x002D2C 00:ED1C: A9 30     LDA #$30
C - - - - - 0x002D2E 00:ED1E: 85 4C     STA ram_obj_index
C - - - - - 0x002D30 00:ED20: A9 00     LDA #$00
C - - - - - 0x002D32 00:ED22: A0 05     LDY #$05
C - - - - - 0x002D34 00:ED24: 91 1E     STA (ram_001E),Y
C - - - - - 0x002D36 00:ED26: A0 04     LDY #$04
C - - - - - 0x002D38 00:ED28: 91 1E     STA (ram_001E),Y
C - - - - - 0x002D3A 00:ED2A: A2 20     LDX #$20
bra_ED2C_loop:
C - - - - - 0x002D3C 00:ED2C: BD 0B 04  LDA ram_040B,X
C - - - - - 0x002D3F 00:ED2F: C5 1E     CMP ram_001E
C - - - - - 0x002D41 00:ED31: D0 11     BNE bra_ED44
C - - - - - 0x002D43 00:ED33: BD 0F 04  LDA ram_040F,X
C - - - - - 0x002D46 00:ED36: C9 18     CMP #$18
C - - - - - 0x002D48 00:ED38: D0 0A     BNE bra_ED44
C - - - - - 0x002D4A 00:ED3A: A9 1A     LDA #$1A
C - - - - - 0x002D4C 00:ED3C: 9D 0F 04  STA ram_040F,X
C - - - - - 0x002D4F 00:ED3F: A9 3C     LDA #$3C
C - - - - - 0x002D51 00:ED41: 9D 07 04  STA ram_0407,X
bra_ED44:
C - - - - - 0x002D54 00:ED44: 8A        TXA
C - - - - - 0x002D55 00:ED45: 18        CLC
C - - - - - 0x002D56 00:ED46: 69 10     ADC #$10
C - - - - - 0x002D58 00:ED48: AA        TAX
C - - - - - 0x002D59 00:ED49: E0 90     CPX #$90
C - - - - - 0x002D5B 00:ED4B: D0 DF     BNE bra_ED2C_loop
bra_ED4D_RTS:
C - - - - - 0x002D5D 00:ED4D: 60        RTS



sub_ED4E:
C - - - - - 0x002D5E 00:ED4E: A9 A0     LDA #< ram_obj_data_2
C - - - - - 0x002D60 00:ED50: 85 1E     STA ram_001E
C - - - - - 0x002D62 00:ED52: A9 04     LDA #> ram_obj_data_2
C - - - - - 0x002D64 00:ED54: 85 1F     STA ram_001F
bra_ED56_loop:
C - - - - - 0x002D66 00:ED56: 20 65 ED  JSR sub_ED65
C - - - - - 0x002D69 00:ED59: A5 1E     LDA ram_001E
C - - - - - 0x002D6B 00:ED5B: 18        CLC
C - - - - - 0x002D6C 00:ED5C: 69 08     ADC #$08
C - - - - - 0x002D6E 00:ED5E: 85 1E     STA ram_001E
C - - - - - 0x002D70 00:ED60: C9 C0     CMP #$C0
C - - - - - 0x002D72 00:ED62: D0 F2     BNE bra_ED56_loop
C - - - - - 0x002D74 00:ED64: 60        RTS



sub_ED65:
C - - - - - 0x002D75 00:ED65: A0 05     LDY #$05
C - - - - - 0x002D77 00:ED67: B1 1E     LDA (ram_001E),Y
C - - - - - 0x002D79 00:ED69: F0 E2     BEQ bra_ED4D_RTS
C - - - - - 0x002D7B 00:ED6B: C9 02     CMP #$02
C - - - - - 0x002D7D 00:ED6D: B0 A3     BCS bra_ED12
C - - - - - 0x002D7F 00:ED6F: A5 42     LDA ram_demo_flag
C - - - - - 0x002D81 00:ED71: 8D 09 06  STA ram_0609
C - - - - - 0x002D84 00:ED74: 20 77 EE  JSR sub_EE77
C - - - - - 0x002D87 00:ED77: 20 C9 EE  JSR sub_EEC9
C - - - - - 0x002D8A 00:ED7A: A9 08     LDA #$08
C - - - - - 0x002D8C 00:ED7C: A0 04     LDY #$04
C - - - - - 0x002D8E 00:ED7E: 91 1E     STA (ram_001E),Y
C - - - - - 0x002D90 00:ED80: A5 63     LDA ram_0063
C - - - - - 0x002D92 00:ED82: 18        CLC
C - - - - - 0x002D93 00:ED83: 69 08     ADC #$08
C - - - - - 0x002D95 00:ED85: 20 4D EE  JSR sub_EE4D
C - - - - - 0x002D98 00:ED88: 20 05 C3  JSR sub_C305
C - - - - - 0x002D9B 00:ED8B: D0 C0     BNE bra_ED4D_RTS
C - - - - - 0x002D9D 00:ED8D: A0 00     LDY #$00
C - - - - - 0x002D9F 00:ED8F: A2 20     LDX #$20
bra_ED91_loop:
C - - - - - 0x002DA1 00:ED91: 20 E2 ED  JSR sub_EDE2
C - - - - - 0x002DA4 00:ED94: 8A        TXA
C - - - - - 0x002DA5 00:ED95: 18        CLC
C - - - - - 0x002DA6 00:ED96: 69 10     ADC #$10
C - - - - - 0x002DA8 00:ED98: AA        TAX
C - - - - - 0x002DA9 00:ED99: E0 90     CPX #$90
C - - - - - 0x002DAB 00:ED9B: D0 F4     BNE bra_ED91_loop
C - - - - - 0x002DAD 00:ED9D: 98        TYA
C - - - - - 0x002DAE 00:ED9E: D0 03     BNE bra_EDA3
C - - - - - 0x002DB0 00:EDA0: 4C 1C ED  JMP loc_ED1C
bra_EDA3:
C - - - - - 0x002DB3 00:EDA3: A2 FD     LDX #$FD
C - - - - - 0x002DB5 00:EDA5: 0A        ASL
C - - - - - 0x002DB6 00:EDA6: 69 FE     ADC #$FE
C - - - - - 0x002DB8 00:EDA8: 48        PHA
C - - - - - 0x002DB9 00:EDA9: 30 02     BMI bra_EDAD
C - - - - - 0x002DBB 00:EDAB: A2 FF     LDX #$FF
bra_EDAD:
C - - - - - 0x002DBD 00:EDAD: A0 07     LDY #$07
C - - - - - 0x002DBF 00:EDAF: 91 1E     STA (ram_001E),Y
C - - - - - 0x002DC1 00:EDB1: A9 02     LDA #$02
C - - - - - 0x002DC3 00:EDB3: A0 05     LDY #$05
C - - - - - 0x002DC5 00:EDB5: 91 1E     STA (ram_001E),Y
C - - - - - 0x002DC7 00:EDB7: A9 10     LDA #$10
C - - - - - 0x002DC9 00:EDB9: A0 04     LDY #$04
C - - - - - 0x002DCB 00:EDBB: 91 1E     STA (ram_001E),Y
C - - - - - 0x002DCD 00:EDBD: A9 00     LDA #$00
C - - - - - 0x002DCF 00:EDBF: A0 06     LDY #$06
C - - - - - 0x002DD1 00:EDC1: 38        SEC
C - - - - - 0x002DD2 00:EDC2: F1 1E     SBC (ram_001E),Y
C - - - - - 0x002DD4 00:EDC4: 91 1E     STA (ram_001E),Y
C - - - - - 0x002DD6 00:EDC6: 10 02     BPL bra_EDCA
C - - - - - 0x002DD8 00:EDC8: A2 FE     LDX #$FE
bra_EDCA:
C - - - - - 0x002DDA 00:EDCA: A0 01     LDY #$01
C - - - - - 0x002DDC 00:EDCC: 8A        TXA
C - - - - - 0x002DDD 00:EDCD: 18        CLC
C - - - - - 0x002DDE 00:EDCE: 71 1E     ADC (ram_001E),Y
C - - - - - 0x002DE0 00:EDD0: 91 1E     STA (ram_001E),Y
C - - - - - 0x002DE2 00:EDD2: A9 01     LDA #$01
C - - - - - 0x002DE4 00:EDD4: 85 18     STA ram_0018
C - - - - - 0x002DE6 00:EDD6: 68        PLA
C - - - - - 0x002DE7 00:EDD7: 0A        ASL
C - - - - - 0x002DE8 00:EDD8: 90 02     BCC bra_EDDC
C - - - - - 0x002DEA 00:EDDA: E6 18     INC ram_0018
bra_EDDC:
C - - - - - 0x002DEC 00:EDDC: 18        CLC
C - - - - - 0x002DED 00:EDDD: 69 14     ADC #$14
C - - - - - 0x002DEF 00:EDDF: 4C BE D4  JMP loc_D4BE



sub_EDE2:
C - - - - - 0x002DF2 00:EDE2: BD 0B 04  LDA ram_040B,X
C - - - - - 0x002DF5 00:EDE5: C5 1E     CMP ram_001E
C - - - - - 0x002DF7 00:EDE7: D0 1A     BNE bra_EE03_RTS
C - - - - - 0x002DF9 00:EDE9: BD 0F 04  LDA ram_040F,X
C - - - - - 0x002DFC 00:EDEC: C9 16     CMP #$16
C - - - - - 0x002DFE 00:EDEE: D0 13     BNE bra_EE03_RTS
C - - - - - 0x002E00 00:EDF0: A9 18     LDA #$18
C - - - - - 0x002E02 00:EDF2: 9D 0F 04  STA ram_040F,X
C - - - - - 0x002E05 00:EDF5: A9 00     LDA #$00
C - - - - - 0x002E07 00:EDF7: 9D 04 04  STA ram_0404,X
C - - - - - 0x002E0A 00:EDFA: C8        INY
C - - - - - 0x002E0B 00:EDFB: E0 20     CPX #$20
C - - - - - 0x002E0D 00:EDFD: D0 04     BNE bra_EE03_RTS
C - - - - - 0x002E0F 00:EDFF: 98        TYA
C - - - - - 0x002E10 00:EE00: 09 40     ORA #$40
C - - - - - 0x002E12 00:EE02: A8        TAY
bra_EE03_RTS:
C - - - - - 0x002E13 00:EE03: 60        RTS



loc_EE04:
C D 3 - - - 0x002E14 00:EE04: A0 00     LDY #$00
bra_EE06_loop:
C - - - - - 0x002E16 00:EE06: B9 A5 04  LDA ram_04A5,Y
C - - - - - 0x002E19 00:EE09: F0 0A     BEQ bra_EE15
C - - - - - 0x002E1B 00:EE0B: 98        TYA
C - - - - - 0x002E1C 00:EE0C: 18        CLC
C - - - - - 0x002E1D 00:EE0D: 69 08     ADC #$08
C - - - - - 0x002E1F 00:EE0F: A8        TAY
C - - - - - 0x002E20 00:EE10: C0 20     CPY #$20
C - - - - - 0x002E22 00:EE12: D0 F2     BNE bra_EE06_loop
- - - - - - 0x002E24 00:EE14: 60        RTS
bra_EE15:
C - - - - - 0x002E25 00:EE15: A9 01     LDA #$01
C - - - - - 0x002E27 00:EE17: 99 A5 04  STA ram_04A5,Y
C - - - - - 0x002E2A 00:EE1A: A9 00     LDA #$00
C - - - - - 0x002E2C 00:EE1C: 99 A0 04  STA ram_obj_data_2,Y
C - - - - - 0x002E2F 00:EE1F: 99 A2 04  STA ram_04A2,Y
C - - - - - 0x002E32 00:EE22: BD B5 02  LDA ram_02B5,X
C - - - - - 0x002E35 00:EE25: 38        SEC
C - - - - - 0x002E36 00:EE26: E9 01     SBC #$01
C - - - - - 0x002E38 00:EE28: 99 A3 04  STA ram_04A3,Y
C - - - - - 0x002E3B 00:EE2B: BD B1 02  LDA ram_02B1,X
C - - - - - 0x002E3E 00:EE2E: 29 04     AND #$04
C - - - - - 0x002E40 00:EE30: F0 0F     BEQ bra_EE41
C - - - - - 0x002E42 00:EE32: A9 FF     LDA #$FF
C - - - - - 0x002E44 00:EE34: 99 A6 04  STA ram_04A6,Y
C - - - - - 0x002E47 00:EE37: BD B4 02  LDA ram_02B4,X
C - - - - - 0x002E4A 00:EE3A: 38        SEC
C - - - - - 0x002E4B 00:EE3B: E9 02     SBC #$02
C - - - - - 0x002E4D 00:EE3D: 99 A1 04  STA ram_04A1,Y
C - - - - - 0x002E50 00:EE40: 60        RTS
bra_EE41:
C - - - - - 0x002E51 00:EE41: A9 01     LDA #$01
C - - - - - 0x002E53 00:EE43: 99 A6 04  STA ram_04A6,Y
C - - - - - 0x002E56 00:EE46: BD B4 02  LDA ram_02B4,X
C - - - - - 0x002E59 00:EE49: 99 A1 04  STA ram_04A1,Y
C - - - - - 0x002E5C 00:EE4C: 60        RTS



sub_EE4D:
C - - - - - 0x002E5D 00:EE4D: 85 10     STA ram_0010
C - - - - - 0x002E5F 00:EE4F: A0 06     LDY #$06
C - - - - - 0x002E61 00:EE51: B1 1E     LDA (ram_001E),Y
C - - - - - 0x002E63 00:EE53: 30 11     BMI bra_EE66
C - - - - - 0x002E65 00:EE55: A0 00     LDY #$00
C - - - - - 0x002E67 00:EE57: B1 1E     LDA (ram_001E),Y
C - - - - - 0x002E69 00:EE59: 18        CLC
C - - - - - 0x002E6A 00:EE5A: 65 10     ADC ram_0010
C - - - - - 0x002E6C 00:EE5C: 91 1E     STA (ram_001E),Y
C - - - - - 0x002E6E 00:EE5E: C8        INY
C - - - - - 0x002E6F 00:EE5F: B1 1E     LDA (ram_001E),Y
C - - - - - 0x002E71 00:EE61: 69 00     ADC #$00
C - - - - - 0x002E73 00:EE63: 91 1E     STA (ram_001E),Y
C - - - - - 0x002E75 00:EE65: 60        RTS
bra_EE66:
C - - - - - 0x002E76 00:EE66: A0 00     LDY #$00
C - - - - - 0x002E78 00:EE68: B1 1E     LDA (ram_001E),Y
C - - - - - 0x002E7A 00:EE6A: 38        SEC
C - - - - - 0x002E7B 00:EE6B: E5 10     SBC ram_0010
C - - - - - 0x002E7D 00:EE6D: 91 1E     STA (ram_001E),Y
C - - - - - 0x002E7F 00:EE6F: C8        INY
C - - - - - 0x002E80 00:EE70: B1 1E     LDA (ram_001E),Y
C - - - - - 0x002E82 00:EE72: E9 00     SBC #$00
C - - - - - 0x002E84 00:EE74: 91 1E     STA (ram_001E),Y
C - - - - - 0x002E86 00:EE76: 60        RTS



sub_EE77:
C - - - - - 0x002E87 00:EE77: A2 20     LDX #$20
bra_EE79_loop:
C - - - - - 0x002E89 00:EE79: BD 04 04  LDA ram_0404,X
C - - - - - 0x002E8C 00:EE7C: F0 41     BEQ bra_EEBF
C - - - - - 0x002E8E 00:EE7E: BD 0F 04  LDA ram_040F,X
C - - - - - 0x002E91 00:EE81: 38        SEC
C - - - - - 0x002E92 00:EE82: E9 16     SBC #$16
C - - - - - 0x002E94 00:EE84: C9 06     CMP #$06
C - - - - - 0x002E96 00:EE86: 90 37     BCC bra_EEBF
C - - - - - 0x002E98 00:EE88: BD 03 04  LDA ram_0403,X
C - - - - - 0x002E9B 00:EE8B: A0 03     LDY #$03
C - - - - - 0x002E9D 00:EE8D: 38        SEC
C - - - - - 0x002E9E 00:EE8E: F1 1E     SBC (ram_001E),Y
C - - - - - 0x002EA0 00:EE90: 18        CLC
C - - - - - 0x002EA1 00:EE91: 69 01     ADC #$01
C - - - - - 0x002EA3 00:EE93: C9 04     CMP #$04
C - - - - - 0x002EA5 00:EE95: B0 28     BCS bra_EEBF
C - - - - - 0x002EA7 00:EE97: BD 01 04  LDA ram_0401,X
C - - - - - 0x002EAA 00:EE9A: A0 01     LDY #$01
C - - - - - 0x002EAC 00:EE9C: 38        SEC
C - - - - - 0x002EAD 00:EE9D: F1 1E     SBC (ram_001E),Y
C - - - - - 0x002EAF 00:EE9F: 48        PHA
C - - - - - 0x002EB0 00:EEA0: A0 06     LDY #$06
C - - - - - 0x002EB2 00:EEA2: B1 1E     LDA (ram_001E),Y
C - - - - - 0x002EB4 00:EEA4: 10 05     BPL bra_EEAB
C - - - - - 0x002EB6 00:EEA6: 68        PLA
C - - - - - 0x002EB7 00:EEA7: 18        CLC
C - - - - - 0x002EB8 00:EEA8: 69 01     ADC #$01
C - - - - - 0x002EBA 00:EEAA: 48        PHA
bra_EEAB:
C - - - - - 0x002EBB 00:EEAB: 68        PLA
C - - - - - 0x002EBC 00:EEAC: C9 02     CMP #$02
C - - - - - 0x002EBE 00:EEAE: B0 0F     BCS bra_EEBF
C - - - - - 0x002EC0 00:EEB0: A5 1E     LDA ram_001E
C - - - - - 0x002EC2 00:EEB2: 9D 0B 04  STA ram_040B,X
C - - - - - 0x002EC5 00:EEB5: A9 00     LDA #$00
C - - - - - 0x002EC7 00:EEB7: 9D 07 04  STA ram_0407,X
C - - - - - 0x002ECA 00:EEBA: A9 16     LDA #$16
C - - - - - 0x002ECC 00:EEBC: 9D 0F 04  STA ram_040F,X
bra_EEBF:
C - - - - - 0x002ECF 00:EEBF: 8A        TXA
C - - - - - 0x002ED0 00:EEC0: 18        CLC
C - - - - - 0x002ED1 00:EEC1: 69 10     ADC #$10
C - - - - - 0x002ED3 00:EEC3: AA        TAX
C - - - - - 0x002ED4 00:EEC4: E0 90     CPX #$90
C - - - - - 0x002ED6 00:EEC6: D0 B1     BNE bra_EE79_loop
C - - - - - 0x002ED8 00:EEC8: 60        RTS



sub_EEC9:
C - - - - - 0x002ED9 00:EEC9: A2 20     LDX #$20
bra_EECB_loop:
C - - - - - 0x002EDB 00:EECB: BD 0B 04  LDA ram_040B,X
C - - - - - 0x002EDE 00:EECE: C5 1E     CMP ram_001E
C - - - - - 0x002EE0 00:EED0: D0 0F     BNE bra_EEE1
C - - - - - 0x002EE2 00:EED2: BD 0F 04  LDA ram_040F,X
C - - - - - 0x002EE5 00:EED5: C9 16     CMP #$16
C - - - - - 0x002EE7 00:EED7: D0 08     BNE bra_EEE1
C - - - - - 0x002EE9 00:EED9: A5 63     LDA ram_0063
C - - - - - 0x002EEB 00:EEDB: 18        CLC
C - - - - - 0x002EEC 00:EEDC: 69 08     ADC #$08
C - - - - - 0x002EEE 00:EEDE: 20 EB EE  JSR sub_EEEB
bra_EEE1:
C - - - - - 0x002EF1 00:EEE1: 8A        TXA
C - - - - - 0x002EF2 00:EEE2: 18        CLC
C - - - - - 0x002EF3 00:EEE3: 69 10     ADC #$10
C - - - - - 0x002EF5 00:EEE5: AA        TAX
C - - - - - 0x002EF6 00:EEE6: E0 90     CPX #$90
C - - - - - 0x002EF8 00:EEE8: D0 E1     BNE bra_EECB_loop
C - - - - - 0x002EFA 00:EEEA: 60        RTS



sub_EEEB:
C - - - - - 0x002EFB 00:EEEB: 85 10     STA ram_0010
C - - - - - 0x002EFD 00:EEED: A0 06     LDY #$06
C - - - - - 0x002EFF 00:EEEF: B1 1E     LDA (ram_001E),Y
C - - - - - 0x002F01 00:EEF1: 30 12     BMI bra_EF05
C - - - - - 0x002F03 00:EEF3: BD 00 04  LDA ram_obj_data_1,X
C - - - - - 0x002F06 00:EEF6: 18        CLC
C - - - - - 0x002F07 00:EEF7: 65 10     ADC ram_0010
C - - - - - 0x002F09 00:EEF9: 9D 00 04  STA ram_obj_data_1,X
C - - - - - 0x002F0C 00:EEFC: BD 01 04  LDA ram_0401,X
C - - - - - 0x002F0F 00:EEFF: 69 00     ADC #$00
C - - - - - 0x002F11 00:EF01: 9D 01 04  STA ram_0401,X
C - - - - - 0x002F14 00:EF04: 60        RTS
bra_EF05:
C - - - - - 0x002F15 00:EF05: BD 00 04  LDA ram_obj_data_1,X
C - - - - - 0x002F18 00:EF08: 38        SEC
C - - - - - 0x002F19 00:EF09: E5 10     SBC ram_0010
C - - - - - 0x002F1B 00:EF0B: 9D 00 04  STA ram_obj_data_1,X
C - - - - - 0x002F1E 00:EF0E: BD 01 04  LDA ram_0401,X
C - - - - - 0x002F21 00:EF11: E9 00     SBC #$00
C - - - - - 0x002F23 00:EF13: 9D 01 04  STA ram_0401,X
C - - - - - 0x002F26 00:EF16: 60        RTS



sub_EF17:
C - - - - - 0x002F27 00:EF17: A5 7A     LDA ram_current_round
C - - - - - 0x002F29 00:EF19: 38        SEC
C - - - - - 0x002F2A 00:EF1A: E9 07     SBC #$07
C - - - - - 0x002F2C 00:EF1C: C9 03     CMP #$03
C - - - - - 0x002F2E 00:EF1E: A9 00     LDA #$00
C - - - - - 0x002F30 00:EF20: B0 0C     BCS bra_EF2E_RTS
C - - - - - 0x002F32 00:EF22: A2 00     LDX #$00
bra_EF24_loop:
C - - - - - 0x002F34 00:EF24: BD 2F EF  LDA tbl_EF2F,X
C - - - - - 0x002F37 00:EF27: 95 A0     STA ram_00A0,X
C - - - - - 0x002F39 00:EF29: E8        INX
C - - - - - 0x002F3A 00:EF2A: E0 10     CPX #$10
C - - - - - 0x002F3C 00:EF2C: D0 F6     BNE bra_EF24_loop
bra_EF2E_RTS:
C - - - - - 0x002F3E 00:EF2E: 60        RTS



tbl_EF2F:
- D 3 - - - 0x002F3F 00:EF2F: 00        .byte $00   ; 00
- D 3 - - - 0x002F40 00:EF30: 03        .byte $03   ; 01
- D 3 - - - 0x002F41 00:EF31: 00        .byte $00   ; 02
- D 3 - - - 0x002F42 00:EF32: 06        .byte $06   ; 03
- D 3 - - - 0x002F43 00:EF33: 0A        .byte $0A   ; 04
- D 3 - - - 0x002F44 00:EF34: 01        .byte $01   ; 05
- D 3 - - - 0x002F45 00:EF35: 00        .byte $00   ; 06
- D 3 - - - 0x002F46 00:EF36: 00        .byte $00   ; 07
- D 3 - - - 0x002F47 00:EF37: 00        .byte $00   ; 08
- D 3 - - - 0x002F48 00:EF38: 37        .byte $37   ; 09
- D 3 - - - 0x002F49 00:EF39: 00        .byte $00   ; 0A
- D 3 - - - 0x002F4A 00:EF3A: 06        .byte $06   ; 0B
- D 3 - - - 0x002F4B 00:EF3B: 0A        .byte $0A   ; 0C
- D 3 - - - 0x002F4C 00:EF3C: 01        .byte $01   ; 0D
- D 3 - - - 0x002F4D 00:EF3D: 00        .byte $00   ; 0E
- D 3 - - - 0x002F4E 00:EF3E: 00        .byte $00   ; 0F



sub_EF3F:
C - - - - - 0x002F4F 00:EF3F: A9 A0     LDA #< ram_00A0
C - - - - - 0x002F51 00:EF41: 85 1E     STA ram_001E
C - - - - - 0x002F53 00:EF43: A9 00     LDA #> ram_00A0
C - - - - - 0x002F55 00:EF45: 85 1F     STA ram_001F
C - - - - - 0x002F57 00:EF47: 20 4E EF  JSR sub_EF4E
C - - - - - 0x002F5A 00:EF4A: A9 A8     LDA #$A8
C - - - - - 0x002F5C 00:EF4C: 85 1E     STA ram_001E
sub_EF4E:
C - - - - - 0x002F5E 00:EF4E: A0 05     LDY #$05
C - - - - - 0x002F60 00:EF50: B1 1E     LDA (ram_001E),Y
C - - - - - 0x002F62 00:EF52: F0 DA     BEQ bra_EF2E_RTS
C - - - - - 0x002F64 00:EF54: C9 02     CMP #$02
C - - - - - 0x002F66 00:EF56: 90 20     BCC bra_EF78
C - - - - - 0x002F68 00:EF58: 20 9B EF  JSR sub_EF9B
C - - - - - 0x002F6B 00:EF5B: A0 02     LDY #$02
C - - - - - 0x002F6D 00:EF5D: B1 1E     LDA (ram_001E),Y
C - - - - - 0x002F6F 00:EF5F: 18        CLC
C - - - - - 0x002F70 00:EF60: 69 80     ADC #$80
C - - - - - 0x002F72 00:EF62: 91 1E     STA (ram_001E),Y
C - - - - - 0x002F74 00:EF64: C8        INY
C - - - - - 0x002F75 00:EF65: B1 1E     LDA (ram_001E),Y
C - - - - - 0x002F77 00:EF67: 69 00     ADC #$00
C - - - - - 0x002F79 00:EF69: 91 1E     STA (ram_001E),Y
C - - - - - 0x002F7B 00:EF6B: C9 1C     CMP #$1C
C - - - - - 0x002F7D 00:EF6D: 90 06     BCC bra_EF75
C - - - - - 0x002F7F 00:EF6F: A9 00     LDA #$00
C - - - - - 0x002F81 00:EF71: A0 05     LDY #$05
C - - - - - 0x002F83 00:EF73: 91 1E     STA (ram_001E),Y
bra_EF75:
C - - - - - 0x002F85 00:EF75: 4C 05 C3  JMP loc_C305
bra_EF78:
C - - - - - 0x002F88 00:EF78: A0 03     LDY #$03
C - - - - - 0x002F8A 00:EF7A: B1 1E     LDA (ram_001E),Y
C - - - - - 0x002F8C 00:EF7C: CD 03 04  CMP ram_0403
C - - - - - 0x002F8F 00:EF7F: D0 17     BNE bra_EF98
C - - - - - 0x002F91 00:EF81: A0 01     LDY #$01
C - - - - - 0x002F93 00:EF83: B1 1E     LDA (ram_001E),Y
C - - - - - 0x002F95 00:EF85: 38        SEC
C - - - - - 0x002F96 00:EF86: ED 01 04  SBC ram_0401
C - - - - - 0x002F99 00:EF89: C9 02     CMP #$02
C - - - - - 0x002F9B 00:EF8B: B0 0B     BCS bra_EF98
C - - - - - 0x002F9D 00:EF8D: A5 42     LDA ram_demo_flag
C - - - - - 0x002F9F 00:EF8F: 8D 07 06  STA ram_0607
C - - - - - 0x002FA2 00:EF92: A9 02     LDA #$02
C - - - - - 0x002FA4 00:EF94: A0 05     LDY #$05
C - - - - - 0x002FA6 00:EF96: 91 1E     STA (ram_001E),Y
bra_EF98:
C - - - - - 0x002FA8 00:EF98: 4C 05 C3  JMP loc_C305



sub_EF9B:
C - - - - - 0x002FAB 00:EF9B: A2 20     LDX #$20
bra_EF9D_loop:
C - - - - - 0x002FAD 00:EF9D: BD 0F 04  LDA ram_040F,X
C - - - - - 0x002FB0 00:EFA0: C9 16     CMP #$16
C - - - - - 0x002FB2 00:EFA2: B0 53     BCS bra_EFF7
C - - - - - 0x002FB4 00:EFA4: A0 00     LDY #$00
C - - - - - 0x002FB6 00:EFA6: B1 1E     LDA (ram_001E),Y
C - - - - - 0x002FB8 00:EFA8: 38        SEC
C - - - - - 0x002FB9 00:EFA9: FD 00 04  SBC ram_obj_data_1,X
C - - - - - 0x002FBC 00:EFAC: C8        INY
C - - - - - 0x002FBD 00:EFAD: B1 1E     LDA (ram_001E),Y
C - - - - - 0x002FBF 00:EFAF: FD 01 04  SBC ram_0401,X
C - - - - - 0x002FC2 00:EFB2: 18        CLC
C - - - - - 0x002FC3 00:EFB3: 69 01     ADC #$01
C - - - - - 0x002FC5 00:EFB5: C9 02     CMP #$02
C - - - - - 0x002FC7 00:EFB7: B0 3E     BCS bra_EFF7
C - - - - - 0x002FC9 00:EFB9: C8        INY
C - - - - - 0x002FCA 00:EFBA: B1 1E     LDA (ram_001E),Y
C - - - - - 0x002FCC 00:EFBC: 38        SEC
C - - - - - 0x002FCD 00:EFBD: FD 02 04  SBC ram_0402,X
C - - - - - 0x002FD0 00:EFC0: C8        INY
C - - - - - 0x002FD1 00:EFC1: B1 1E     LDA (ram_001E),Y
C - - - - - 0x002FD3 00:EFC3: FD 03 04  SBC ram_0403,X
C - - - - - 0x002FD6 00:EFC6: 18        CLC
C - - - - - 0x002FD7 00:EFC7: 69 01     ADC #$01
C - - - - - 0x002FD9 00:EFC9: C9 02     CMP #$02
C - - - - - 0x002FDB 00:EFCB: B0 2A     BCS bra_EFF7
C - - - - - 0x002FDD 00:EFCD: A5 65     LDA ram_0065
C - - - - - 0x002FDF 00:EFCF: 9D 07 04  STA ram_0407,X
C - - - - - 0x002FE2 00:EFD2: A9 26     LDA #$26
C - - - - - 0x002FE4 00:EFD4: 9D 0F 04  STA ram_040F,X
C - - - - - 0x002FE7 00:EFD7: A9 22     LDA #$22
C - - - - - 0x002FE9 00:EFD9: 9D 04 04  STA ram_0404,X
C - - - - - 0x002FEC 00:EFDC: BD 03 04  LDA ram_0403,X
C - - - - - 0x002FEF 00:EFDF: C9 19     CMP #$19
C - - - - - 0x002FF1 00:EFE1: 90 05     BCC bra_EFE8
C - - - - - 0x002FF3 00:EFE3: A9 19     LDA #$19
C - - - - - 0x002FF5 00:EFE5: 9D 03 04  STA ram_0403,X
bra_EFE8:
C - - - - - 0x002FF8 00:EFE8: 86 1B     STX ram_001B
C - - - - - 0x002FFA 00:EFEA: A0 08     LDY #$08
C - - - - - 0x002FFC 00:EFEC: E0 20     CPX #$20
C - - - - - 0x002FFE 00:EFEE: D0 02     BNE bra_EFF2
C - - - - - 0x003000 00:EFF0: A0 44     LDY #$44
bra_EFF2:
C - - - - - 0x003002 00:EFF2: 20 CA D4  JSR sub_D4CA
C - - - - - 0x003005 00:EFF5: A6 1B     LDX ram_001B
bra_EFF7:
C - - - - - 0x003007 00:EFF7: 8A        TXA
C - - - - - 0x003008 00:EFF8: 18        CLC
C - - - - - 0x003009 00:EFF9: 69 10     ADC #$10
C - - - - - 0x00300B 00:EFFB: AA        TAX
C - - - - - 0x00300C 00:EFFC: E0 90     CPX #$90
C - - - - - 0x00300E 00:EFFE: D0 9D     BNE bra_EF9D_loop
C - - - - - 0x003010 00:F000: 60        RTS



sub_F001:
C - - - - - 0x003011 00:F001: A5 7A     LDA ram_current_round
C - - - - - 0x003013 00:F003: 0A        ASL
C - - - - - 0x003014 00:F004: E9 15     SBC #$15
C - - - - - 0x003016 00:F006: C9 06     CMP #$06
C - - - - - 0x003018 00:F008: B0 36     BCS bra_F040_RTS
C - - - - - 0x00301A 00:F00A: 0A        ASL
C - - - - - 0x00301B 00:F00B: AA        TAX
C - - - - - 0x00301C 00:F00C: A0 00     LDY #$00
C - - - - - 0x00301E 00:F00E: 20 13 F0  JSR sub_F013
C - - - - - 0x003021 00:F011: A0 08     LDY #$08
sub_F013:
C - - - - - 0x003023 00:F013: A9 02     LDA #$02
C - - - - - 0x003025 00:F015: 99 90 00  STA ram_0090,Y
C - - - - - 0x003028 00:F018: BD 41 F0  LDA tbl_F041_ppu,X
C - - - - - 0x00302B 00:F01B: E8        INX
C - - - - - 0x00302C 00:F01C: 99 92 00  STA ram_0092,Y
C - - - - - 0x00302F 00:F01F: 85 10     STA ram_0010
C - - - - - 0x003031 00:F021: BD 41 F0  LDA tbl_F041_ppu,X
C - - - - - 0x003034 00:F024: E8        INX
C - - - - - 0x003035 00:F025: 86 1B     STX ram_001B
C - - - - - 0x003037 00:F027: 99 93 00  STA ram_0093,Y
C - - - - - 0x00303A 00:F02A: 85 11     STA ram_0011
C - - - - - 0x00303C 00:F02C: 20 BD E3  JSR sub_E3BD
C - - - - - 0x00303F 00:F02F: A5 10     LDA ram_0010
C - - - - - 0x003041 00:F031: 99 94 00  STA ram_0094,Y
C - - - - - 0x003044 00:F034: A5 11     LDA ram_0011
C - - - - - 0x003046 00:F036: 99 95 00  STA ram_0095,Y
C - - - - - 0x003049 00:F039: A2 00     LDX #$00
C - - - - - 0x00304B 00:F03B: 20 6D F0  JSR sub_F06D
C - - - - - 0x00304E 00:F03E: A6 1B     LDX ram_001B
bra_F040_RTS:
C - - - - - 0x003050 00:F040: 60        RTS



tbl_F041_ppu:
- D 3 - - - 0x003051 00:F041: 09 22     .word $2209     ; 00
- D 3 - - - 0x003053 00:F043: 88 25     .word $2588     ; 01
- D 3 - - - 0x003055 00:F045: 93 22     .word $2293     ; 02
- D 3 - - - 0x003057 00:F047: 11 26     .word $2611     ; 03
- D 3 - - - 0x003059 00:F049: 09 22     .word $2209     ; 04
- D 3 - - - 0x00305B 00:F04B: 07 26     .word $2607     ; 05



sub_F04D:
C - - - - - 0x00305D 00:F04D: A0 00     LDY #$00
C - - - - - 0x00305F 00:F04F: 20 54 F0  JSR sub_F054
C - - - - - 0x003062 00:F052: A0 08     LDY #$08
sub_F054:
C - - - - - 0x003064 00:F054: B9 90 00  LDA ram_0090,Y
C - - - - - 0x003067 00:F057: F0 E7     BEQ bra_F040_RTS
C - - - - - 0x003069 00:F059: C9 02     CMP #$02
C - - - - - 0x00306B 00:F05B: 90 3F     BCC bra_F09C
C - - - - - 0x00306D 00:F05D: D0 29     BNE bra_F088
C - - - - - 0x00306F 00:F05F: A5 21     LDA ram_frame_counter
C - - - - - 0x003071 00:F061: 29 03     AND #$03
C - - - - - 0x003073 00:F063: C9 02     CMP #$02
C - - - - - 0x003075 00:F065: D0 D9     BNE bra_F040_RTS
; each 3rd of 4 frames
C - - - - - 0x003077 00:F067: A5 21     LDA ram_frame_counter
C - - - - - 0x003079 00:F069: 29 04     AND #$04
C - - - - - 0x00307B 00:F06B: 4A        LSR
C - - - - - 0x00307C 00:F06C: AA        TAX
sub_F06D:
loc_F06D:
C D 3 - - - 0x00307D 00:F06D: B9 92 00  LDA ram_0092,Y
C - - - - - 0x003080 00:F070: 85 10     STA ram_0010
C - - - - - 0x003082 00:F072: B9 93 00  LDA ram_0093,Y
C - - - - - 0x003085 00:F075: 85 11     STA ram_0011
C - - - - - 0x003087 00:F077: A9 80     LDA #$80
C - - - - - 0x003089 00:F079: 85 14     STA ram_0014
C - - - - - 0x00308B 00:F07B: BD 28 F1  LDA tbl_F128,X
C - - - - - 0x00308E 00:F07E: 85 12     STA ram_0012
C - - - - - 0x003090 00:F080: BD 29 F1  LDA tbl_F128 + $01,X
C - - - - - 0x003093 00:F083: 85 13     STA ram_0013
C - - - - - 0x003095 00:F085: 4C FB C6  JMP loc_C6FB
bra_F088:
C - - - - - 0x003098 00:F088: 20 CE F0  JSR sub_F0CE
C - - - - - 0x00309B 00:F08B: F0 B3     BEQ bra_F040_RTS
C - - - - - 0x00309D 00:F08D: A9 01     LDA #$01
C - - - - - 0x00309F 00:F08F: 99 90 00  STA ram_0090,Y
C - - - - - 0x0030A2 00:F092: A9 78     LDA #$78
C - - - - - 0x0030A4 00:F094: 99 96 00  STA ram_0096,Y
C - - - - - 0x0030A7 00:F097: A2 00     LDX #$00
C - - - - - 0x0030A9 00:F099: 4C 6D F0  JMP loc_F06D
bra_F09C:
C - - - - - 0x0030AC 00:F09C: B9 96 00  LDA ram_0096,Y
C - - - - - 0x0030AF 00:F09F: 38        SEC
C - - - - - 0x0030B0 00:F0A0: E9 01     SBC #$01
C - - - - - 0x0030B2 00:F0A2: 99 96 00  STA ram_0096,Y
C - - - - - 0x0030B5 00:F0A5: D0 99     BNE bra_F040_RTS
C - - - - - 0x0030B7 00:F0A7: A9 00     LDA #$00
C - - - - - 0x0030B9 00:F0A9: 99 90 00  STA ram_0090,Y
C - - - - - 0x0030BC 00:F0AC: A2 04     LDX #$04
C - - - - - 0x0030BE 00:F0AE: 4C 6D F0  JMP loc_F06D



sub_F0B1:
C - - - - - 0x0030C1 00:F0B1: A0 00     LDY #$00
C - - - - - 0x0030C3 00:F0B3: 20 B8 F0  JSR sub_F0B8
C - - - - - 0x0030C6 00:F0B6: A0 08     LDY #$08
sub_F0B8:
C - - - - - 0x0030C8 00:F0B8: B9 90 00  LDA ram_0090,Y
C - - - - - 0x0030CB 00:F0BB: C9 02     CMP #$02
C - - - - - 0x0030CD 00:F0BD: D0 27     BNE bra_F0E6_RTS
C - - - - - 0x0030CF 00:F0BF: 20 CE F0  JSR sub_F0CE
C - - - - - 0x0030D2 00:F0C2: D0 22     BNE bra_F0E6_RTS
C - - - - - 0x0030D4 00:F0C4: A9 03     LDA #$03
C - - - - - 0x0030D6 00:F0C6: 99 90 00  STA ram_0090,Y
C - - - - - 0x0030D9 00:F0C9: A2 02     LDX #$02
C - - - - - 0x0030DB 00:F0CB: 4C 6D F0  JMP loc_F06D



sub_F0CE:
C - - - - - 0x0030DE 00:F0CE: B9 94 00  LDA ram_0094,Y
C - - - - - 0x0030E1 00:F0D1: 38        SEC
C - - - - - 0x0030E2 00:F0D2: ED 01 04  SBC ram_0401
C - - - - - 0x0030E5 00:F0D5: C9 02     CMP #$02
C - - - - - 0x0030E7 00:F0D7: B0 0B     BCS bra_F0E4
C - - - - - 0x0030E9 00:F0D9: B9 95 00  LDA ram_0095,Y
C - - - - - 0x0030EC 00:F0DC: 38        SEC
C - - - - - 0x0030ED 00:F0DD: ED 03 04  SBC ram_0403
C - - - - - 0x0030F0 00:F0E0: C9 02     CMP #$02
C - - - - - 0x0030F2 00:F0E2: F0 02     BEQ bra_F0E6_RTS
bra_F0E4:
C - - - - - 0x0030F4 00:F0E4: A9 FF     LDA #$FF
bra_F0E6_RTS:
C - - - - - 0x0030F6 00:F0E6: 60        RTS



sub_F0E7:
C - - - - - 0x0030F7 00:F0E7: A2 00     LDX #$00
C - - - - - 0x0030F9 00:F0E9: 20 F0 F0  JSR sub_F0F0
C - - - - - 0x0030FC 00:F0EC: F0 39     BEQ bra_F127_RTS
C - - - - - 0x0030FE 00:F0EE: A2 08     LDX #$08
sub_F0F0:
C - - - - - 0x003100 00:F0F0: B5 90     LDA ram_0090,X
C - - - - - 0x003102 00:F0F2: C9 01     CMP #$01
C - - - - - 0x003104 00:F0F4: D0 31     BNE bra_F127_RTS
C - - - - - 0x003106 00:F0F6: B5 95     LDA ram_0095,X
C - - - - - 0x003108 00:F0F8: 38        SEC
C - - - - - 0x003109 00:F0F9: A0 03     LDY #$03
C - - - - - 0x00310B 00:F0FB: F1 1E     SBC (ram_001E),Y
C - - - - - 0x00310D 00:F0FD: C9 02     CMP #$02
C - - - - - 0x00310F 00:F0FF: D0 E3     BNE bra_F0E4
C - - - - - 0x003111 00:F101: B5 94     LDA ram_0094,X
C - - - - - 0x003113 00:F103: 38        SEC
C - - - - - 0x003114 00:F104: A0 01     LDY #$01
C - - - - - 0x003116 00:F106: F1 1E     SBC (ram_001E),Y
C - - - - - 0x003118 00:F108: F0 0E     BEQ bra_F118
C - - - - - 0x00311A 00:F10A: C9 01     CMP #$01
C - - - - - 0x00311C 00:F10C: D0 19     BNE bra_F127_RTS
C - - - - - 0x00311E 00:F10E: A0 00     LDY #$00
C - - - - - 0x003120 00:F110: B1 1E     LDA (ram_001E),Y
C - - - - - 0x003122 00:F112: C9 C0     CMP #$C0
C - - - - - 0x003124 00:F114: 90 CE     BCC bra_F0E4
C - - - - - 0x003126 00:F116: B0 08     BCS bra_F120
bra_F118:
C - - - - - 0x003128 00:F118: A0 00     LDY #$00
C - - - - - 0x00312A 00:F11A: B1 1E     LDA (ram_001E),Y
C - - - - - 0x00312C 00:F11C: C9 40     CMP #$40
C - - - - - 0x00312E 00:F11E: B0 C4     BCS bra_F0E4
bra_F120:
C - - - - - 0x003130 00:F120: A9 01     LDA #$01
C - - - - - 0x003132 00:F122: 8D 07 06  STA ram_0607
C - - - - - 0x003135 00:F125: A9 00     LDA #$00
bra_F127_RTS:
C - - - - - 0x003137 00:F127: 60        RTS



tbl_F128:
- D 3 - - - 0x003138 00:F128: 2E F1     .word off_F12E_00
- D 3 - - - 0x00313A 00:F12A: 32 F1     .word off_F132_01
- D 3 - - - 0x00313C 00:F12C: 36 F1     .word off_F136_02



off_F12E_00:
- D 3 - I - 0x00313E 00:F12E: 02        .byte $02   ; counter
- D 3 - I - 0x00313F 00:F12F: 51        .byte $51, $51   ; tiles
- D 3 - I - 0x003141 00:F131: 00        .byte $00   ; end token



off_F132_01:
- D 3 - I - 0x003142 00:F132: 02        .byte $02   ; counter
- D 3 - I - 0x003143 00:F133: 50        .byte $50, $50   ; tiles
- D 3 - I - 0x003145 00:F135: 00        .byte $00   ; end token



off_F136_02:
- D 3 - I - 0x003146 00:F136: 02        .byte $02   ; counter
- D 3 - I - 0x003147 00:F137: 4A        .byte $4A, $4A   ; tiles
- D 3 - I - 0x003149 00:F139: 00        .byte $00   ; end token



sub_F13A:
C - - - - - 0x00314A 00:F13A: A4 7C     LDY ram_bonus_round
C - - - - - 0x00314C 00:F13C: B9 7F F2  LDA tbl_F281_balloons_positions - $02,Y
C - - - - - 0x00314F 00:F13F: 85 1C     STA ram_001C
C - - - - - 0x003151 00:F141: B9 80 F2  LDA tbl_F281_balloons_positions - $01,Y
C - - - - - 0x003154 00:F144: 85 1D     STA ram_001D
C - - - - - 0x003156 00:F146: A0 00     LDY #$00
C - - - - - 0x003158 00:F148: B1 1C     LDA (ram_001C),Y    ; bzk optimize, always 78
C - - - - - 0x00315A 00:F14A: C8        INY
C - - - - - 0x00315B 00:F14B: 85 53     STA ram_0053
C - - - - - 0x00315D 00:F14D: 4A        LSR
C - - - - - 0x00315E 00:F14E: 4A        LSR
C - - - - - 0x00315F 00:F14F: 4A        LSR
C - - - - - 0x003160 00:F150: 85 52     STA ram_0052
C - - - - - 0x003162 00:F152: A9 00     LDA #$00
C - - - - - 0x003164 00:F154: 85 50     STA ram_0050
C - - - - - 0x003166 00:F156: 85 51     STA ram_0051
C - - - - - 0x003168 00:F158: A2 00     LDX #$00
bra_F15A_loop:  ; clear 0054-005F
C - - - - - 0x00316A 00:F15A: 95 54     STA ram_0054,X
C - - - - - 0x00316C 00:F15C: E8        INX
C - - - - - 0x00316D 00:F15D: E0 0C     CPX #$0C
C - - - - - 0x00316F 00:F15F: D0 F9     BNE bra_F15A_loop
C - - - - - 0x003171 00:F161: A2 00     LDX #$00
bra_F163_loop:
C - - - - - 0x003173 00:F163: A9 02     LDA #$02
C - - - - - 0x003175 00:F165: 9D 60 02  STA ram_0260,X
C - - - - - 0x003178 00:F168: B1 1C     LDA (ram_001C),Y
C - - - - - 0x00317A 00:F16A: C8        INY
C - - - - - 0x00317B 00:F16B: 85 10     STA ram_0010
C - - - - - 0x00317D 00:F16D: 9D 66 02  STA ram_0266,X
C - - - - - 0x003180 00:F170: B1 1C     LDA (ram_001C),Y
C - - - - - 0x003182 00:F172: C8        INY
C - - - - - 0x003183 00:F173: 85 11     STA ram_0011
C - - - - - 0x003185 00:F175: 9D 67 02  STA ram_0267,X
C - - - - - 0x003188 00:F178: 20 BD E3  JSR sub_E3BD
C - - - - - 0x00318B 00:F17B: A5 10     LDA ram_0010
C - - - - - 0x00318D 00:F17D: 9D 64 02  STA ram_0264,X
C - - - - - 0x003190 00:F180: A5 11     LDA ram_0011
C - - - - - 0x003192 00:F182: 9D 65 02  STA ram_0265,X
C - - - - - 0x003195 00:F185: 8A        TXA
C - - - - - 0x003196 00:F186: 18        CLC
C - - - - - 0x003197 00:F187: 69 08     ADC #$08
C - - - - - 0x003199 00:F189: AA        TAX
C - - - - - 0x00319A 00:F18A: E4 53     CPX ram_0053
C - - - - - 0x00319C 00:F18C: D0 D5     BNE bra_F163_loop
C - - - - - 0x00319E 00:F18E: 60        RTS



sub_F18F:
C - - - - - 0x00319F 00:F18F: A5 53     LDA ram_0053
C - - - - - 0x0031A1 00:F191: F0 11     BEQ bra_F1A4_RTS
C - - - - - 0x0031A3 00:F193: A2 00     LDX #$00
bra_F195_loop:
C - - - - - 0x0031A5 00:F195: 86 1B     STX ram_001B
C - - - - - 0x0031A7 00:F197: 20 A5 F1  JSR sub_F1A5
C - - - - - 0x0031AA 00:F19A: A5 1B     LDA ram_001B
C - - - - - 0x0031AC 00:F19C: 18        CLC
C - - - - - 0x0031AD 00:F19D: 69 08     ADC #$08
C - - - - - 0x0031AF 00:F19F: AA        TAX
C - - - - - 0x0031B0 00:F1A0: E4 53     CPX ram_0053
C - - - - - 0x0031B2 00:F1A2: D0 F1     BNE bra_F195_loop
bra_F1A4_RTS:
C - - - - - 0x0031B4 00:F1A4: 60        RTS



sub_F1A5:       ; bzk optimize, only with 01 index code goes somewhere
C - - - - - 0x0031B5 00:F1A5: BC 60 02  LDY ram_0260,X
C - - - - - 0x0031B8 00:F1A8: B9 B5 F1  LDA tbl_F1B5,Y
C - - - - - 0x0031BB 00:F1AB: 85 1C     STA ram_001C
C - - - - - 0x0031BD 00:F1AD: B9 B6 F1  LDA tbl_F1B5 + $01,Y
C - - - - - 0x0031C0 00:F1B0: 85 1D     STA ram_001D
C - - - - - 0x0031C2 00:F1B2: 6C 1C 00  JMP (ram_001C)



tbl_F1B5:
- D 3 - - - 0x0031C5 00:F1B5: 4F C1     .word ofs_006_C14F_00_RTS
- D 3 - - - 0x0031C7 00:F1B7: B9 F1     .word ofs_006_F1B9_01



ofs_006_F1B9_01:
C - - J - - 0x0031C9 00:F1B9: 20 33 F2  JSR sub_F233
C - - - - - 0x0031CC 00:F1BC: 20 15 F2  JSR sub_F215
C - - - - - 0x0031CF 00:F1BF: A6 1B     LDX ram_001B
C - - - - - 0x0031D1 00:F1C1: BD 60 02  LDA ram_0260,X
C - - - - - 0x0031D4 00:F1C4: C9 02     CMP #$02
C - - - - - 0x0031D6 00:F1C6: D0 4C     BNE bra_F214_RTS
C - - - - - 0x0031D8 00:F1C8: BD 65 02  LDA ram_0265,X
C - - - - - 0x0031DB 00:F1CB: CD 03 04  CMP ram_0403
C - - - - - 0x0031DE 00:F1CE: D0 44     BNE bra_F214_RTS
C - - - - - 0x0031E0 00:F1D0: BD 64 02  LDA ram_0264,X
C - - - - - 0x0031E3 00:F1D3: 38        SEC
C - - - - - 0x0031E4 00:F1D4: ED 01 04  SBC ram_0401
C - - - - - 0x0031E7 00:F1D7: C9 02     CMP #$02
C - - - - - 0x0031E9 00:F1D9: B0 39     BCS bra_F214_RTS
C - - - - - 0x0031EB 00:F1DB: AD 0F 04  LDA ram_040F
C - - - - - 0x0031EE 00:F1DE: C9 08     CMP #$08
C - - - - - 0x0031F0 00:F1E0: D0 0F     BNE bra_F1F1
C - - - - - 0x0031F2 00:F1E2: A9 00     LDA #$00
C - - - - - 0x0031F4 00:F1E4: 8D 08 04  STA ram_0408
C - - - - - 0x0031F7 00:F1E7: A9 02     LDA #$02
C - - - - - 0x0031F9 00:F1E9: 8D 0F 04  STA ram_040F
C - - - - - 0x0031FC 00:F1EC: A9 06     LDA #$06
C - - - - - 0x0031FE 00:F1EE: 8D 04 04  STA ram_0404
bra_F1F1:
loc_F1F1:
C D 3 - - - 0x003201 00:F1F1: A9 01     LDA #$01
C - - - - - 0x003203 00:F1F3: 8D 08 06  STA ram_0608
C - - - - - 0x003206 00:F1F6: A9 00     LDA #$00
C - - - - - 0x003208 00:F1F8: 9D 60 02  STA ram_0260,X
C - - - - - 0x00320B 00:F1FB: C6 52     DEC ram_0052
C - - - - - 0x00320D 00:F1FD: A0 06     LDY #con_D536_06
C - - - - - 0x00320F 00:F1FF: 20 E5 D4  JSR sub_D4E5
C - - - - - 0x003212 00:F202: A0 08     LDY #con_D536_08
C - - - - - 0x003214 00:F204: 20 E5 D4  JSR sub_D4E5
C - - - - - 0x003217 00:F207: AD 77 F2  LDA tbl_F277
C - - - - - 0x00321A 00:F20A: 85 12     STA ram_0012
C - - - - - 0x00321C 00:F20C: AD 78 F2  LDA tbl_F277 + $01
C - - - - - 0x00321F 00:F20F: 85 13     STA ram_0013
C - - - - - 0x003221 00:F211: 4C 50 F2  JMP loc_F250
bra_F214_RTS:
C - - - - - 0x003224 00:F214: 60        RTS



sub_F215:
C - - - - - 0x003225 00:F215: BD 65 02  LDA ram_0265,X
C - - - - - 0x003228 00:F218: CD 23 04  CMP ram_0423
C - - - - - 0x00322B 00:F21B: D0 F7     BNE bra_F214_RTS
C - - - - - 0x00322D 00:F21D: BD 64 02  LDA ram_0264,X
C - - - - - 0x003230 00:F220: 38        SEC
C - - - - - 0x003231 00:F221: ED 21 04  SBC ram_0421
C - - - - - 0x003234 00:F224: C9 02     CMP #$02
C - - - - - 0x003236 00:F226: B0 EC     BCS bra_F214_RTS
C - - - - - 0x003238 00:F228: A9 00     LDA #$00
C - - - - - 0x00323A 00:F22A: 8D 2F 04  STA ram_042F
C - - - - - 0x00323D 00:F22D: 8D 24 04  STA ram_0424
C - - - - - 0x003240 00:F230: 4C F1 F1  JMP loc_F1F1



sub_F233:
C - - - - - 0x003243 00:F233: A5 1B     LDA ram_001B
C - - - - - 0x003245 00:F235: 4A        LSR
C - - - - - 0x003246 00:F236: 4A        LSR
C - - - - - 0x003247 00:F237: 4A        LSR
C - - - - - 0x003248 00:F238: 45 21     EOR ram_frame_counter
C - - - - - 0x00324A 00:F23A: 29 0F     AND #$0F
C - - - - - 0x00324C 00:F23C: D0 D6     BNE bra_F214_RTS
; each 16th frame
C - - - - - 0x00324E 00:F23E: A5 21     LDA ram_frame_counter
C - - - - - 0x003250 00:F240: 29 10     AND #$10
C - - - - - 0x003252 00:F242: 4A        LSR
C - - - - - 0x003253 00:F243: 4A        LSR
C - - - - - 0x003254 00:F244: 4A        LSR
C - - - - - 0x003255 00:F245: A8        TAY
C - - - - - 0x003256 00:F246: B9 63 F2  LDA tbl_F263,Y
C - - - - - 0x003259 00:F249: 85 12     STA ram_0012
C - - - - - 0x00325B 00:F24B: B9 64 F2  LDA tbl_F263 + $01,Y
C - - - - - 0x00325E 00:F24E: 85 13     STA ram_0013
loc_F250:
C D 3 - - - 0x003260 00:F250: A6 1B     LDX ram_001B
C - - - - - 0x003262 00:F252: BD 66 02  LDA ram_0266,X
C - - - - - 0x003265 00:F255: 85 10     STA ram_0010
C - - - - - 0x003267 00:F257: BD 67 02  LDA ram_0267,X
C - - - - - 0x00326A 00:F25A: 85 11     STA ram_0011
C - - - - - 0x00326C 00:F25C: A9 00     LDA #$00
C - - - - - 0x00326E 00:F25E: 85 14     STA ram_0014
C - - - - - 0x003270 00:F260: 4C FB C6  JMP loc_C6FB



tbl_F263:
- D 3 - - - 0x003273 00:F263: 67 F2     .word off_F267_00
- D 3 - - - 0x003275 00:F265: 6F F2     .word off_F26F_01



off_F267_00:
- D 3 - I - 0x003277 00:F267: 02        .byte $02   ; counter
- D 3 - I - 0x003278 00:F268: 28        .byte $28, $29   ; tiles
- D 3 - I - 0x00327A 00:F26A: 1E        .byte $1E   ; ppu offset

- D 3 - I - 0x00327B 00:F26B: 02        .byte $02   ; 
- D 3 - I - 0x00327C 00:F26C: 2A        .byte $2A, $2B   ; 
- D 3 - I - 0x00327E 00:F26E: 00        .byte $00   ; 



off_F26F_01:
- D 3 - I - 0x00327F 00:F26F: 02        .byte $02   ; counter
- D 3 - I - 0x003280 00:F270: 2C        .byte $2C, $2D   ; tiles
- D 3 - I - 0x003282 00:F272: 1E        .byte $1E   ; ppu offset

- D 3 - I - 0x003283 00:F273: 02        .byte $02   ; 
- D 3 - I - 0x003284 00:F274: 2E        .byte $2E, $2F   ; 
- D 3 - I - 0x003286 00:F276: 00        .byte $00   ; 



tbl_F277:
- D 3 - - - 0x003287 00:F277: 79 F2     .word off_F279

off_F279:
- D 3 - I - 0x003289 00:F279: 02        .byte $02   ; counter
- D 3 - I - 0x00328A 00:F27A: 00        .byte $00, $00   ; tiles
- D 3 - I - 0x00328C 00:F27C: 1E        .byte $1E   ; ppu offset

- D 3 - I - 0x00328D 00:F27D: 02        .byte $02   ; 
- D 3 - I - 0x00328E 00:F27E: 00        .byte $00, $00   ; 
- D 3 - I - 0x003290 00:F280: 00        .byte $00   ; 



tbl_F281_balloons_positions:
- D 3 - - - 0x003291 00:F281: 89 F2     .word _off005_F289_02
- D 3 - - - 0x003293 00:F283: A8 F2     .word _off005_F2A8_04
- D 3 - - - 0x003295 00:F285: C7 F2     .word _off005_F2C7_06
- D 3 - - - 0x003297 00:F287: C7 F2     .word _off005_F2C7_08



_off005_F289_02:
- D 3 - I - 0x003299 00:F289: 78        .byte $0F * $08   ; counter * 08
- D 3 - I - 0x00329A 00:F28A: D5        .byte $D5   ; 
- D 3 - I - 0x00329B 00:F28B: 24        .byte $24   ; 
- D 3 - I - 0x00329C 00:F28C: 55        .byte $55   ; 
- D 3 - I - 0x00329D 00:F28D: 26        .byte $26   ; 
- D 3 - I - 0x00329E 00:F28E: 0F        .byte $0F   ; 
- D 3 - I - 0x00329F 00:F28F: 25        .byte $25   ; 
- D 3 - I - 0x0032A0 00:F290: 0C        .byte $0C   ; 
- D 3 - I - 0x0032A1 00:F291: 26        .byte $26   ; 
- D 3 - I - 0x0032A2 00:F292: E9        .byte $E9   ; 
- D 3 - I - 0x0032A3 00:F293: 24        .byte $24   ; 
- D 3 - I - 0x0032A4 00:F294: 03        .byte $03   ; 
- D 3 - I - 0x0032A5 00:F295: 25        .byte $25   ; 
- D 3 - I - 0x0032A6 00:F296: C3        .byte $C3   ; 
- D 3 - I - 0x0032A7 00:F297: 26        .byte $26   ; 
- D 3 - I - 0x0032A8 00:F298: FD        .byte $FD   ; 
- D 3 - I - 0x0032A9 00:F299: 20        .byte $20   ; 
- D 3 - I - 0x0032AA 00:F29A: 9A        .byte $9A   ; 
- D 3 - I - 0x0032AB 00:F29B: 22        .byte $22   ; 
- D 3 - I - 0x0032AC 00:F29C: F7        .byte $F7   ; 
- D 3 - I - 0x0032AD 00:F29D: 20        .byte $20   ; 
- D 3 - I - 0x0032AE 00:F29E: 94        .byte $94   ; 
- D 3 - I - 0x0032AF 00:F29F: 21        .byte $21   ; 
- D 3 - I - 0x0032B0 00:F2A0: F1        .byte $F1   ; 
- D 3 - I - 0x0032B1 00:F2A1: 20        .byte $20   ; 
- D 3 - I - 0x0032B2 00:F2A2: EB        .byte $EB   ; 
- D 3 - I - 0x0032B3 00:F2A3: 20        .byte $20   ; 
- D 3 - I - 0x0032B4 00:F2A4: 06        .byte $06   ; 
- D 3 - I - 0x0032B5 00:F2A5: 21        .byte $21   ; 
- D 3 - I - 0x0032B6 00:F2A6: C5        .byte $C5   ; 
- D 3 - I - 0x0032B7 00:F2A7: 20        .byte $20   ; 



_off005_F2A8_04:
- D 3 - I - 0x0032B8 00:F2A8: 78        .byte $0F * $08   ; counter * 08
- D 3 - I - 0x0032B9 00:F2A9: D5        .byte $D5   ; 
- D 3 - I - 0x0032BA 00:F2AA: 24        .byte $24   ; 
- D 3 - I - 0x0032BB 00:F2AB: 55        .byte $55   ; 
- D 3 - I - 0x0032BC 00:F2AC: 26        .byte $26   ; 
- D 3 - I - 0x0032BD 00:F2AD: EF        .byte $EF   ; 
- D 3 - I - 0x0032BE 00:F2AE: 24        .byte $24   ; 
- D 3 - I - 0x0032BF 00:F2AF: 0C        .byte $0C   ; 
- D 3 - I - 0x0032C0 00:F2B0: 26        .byte $26   ; 
- D 3 - I - 0x0032C1 00:F2B1: 49        .byte $49   ; 
- D 3 - I - 0x0032C2 00:F2B2: 25        .byte $25   ; 
- D 3 - I - 0x0032C3 00:F2B3: C3        .byte $C3   ; 
- D 3 - I - 0x0032C4 00:F2B4: 24        .byte $24   ; 
- D 3 - I - 0x0032C5 00:F2B5: C3        .byte $C3   ; 
- D 3 - I - 0x0032C6 00:F2B6: 26        .byte $26   ; 
- D 3 - I - 0x0032C7 00:F2B7: 9D        .byte $9D   ; 
- D 3 - I - 0x0032C8 00:F2B8: 21        .byte $21   ; 
- D 3 - I - 0x0032C9 00:F2B9: 9A        .byte $9A   ; 
- D 3 - I - 0x0032CA 00:F2BA: 22        .byte $22   ; 
- D 3 - I - 0x0032CB 00:F2BB: 17        .byte $17   ; 
- D 3 - I - 0x0032CC 00:F2BC: 21        .byte $21   ; 
- D 3 - I - 0x0032CD 00:F2BD: D1        .byte $D1   ; 
- D 3 - I - 0x0032CE 00:F2BE: 20        .byte $20   ; 
- D 3 - I - 0x0032CF 00:F2BF: D1        .byte $D1   ; 
- D 3 - I - 0x0032D0 00:F2C0: 22        .byte $22   ; 
- D 3 - I - 0x0032D1 00:F2C1: 0B        .byte $0B   ; 
- D 3 - I - 0x0032D2 00:F2C2: 22        .byte $22   ; 
- D 3 - I - 0x0032D3 00:F2C3: EB        .byte $EB   ; 
- D 3 - I - 0x0032D4 00:F2C4: 20        .byte $20   ; 
- D 3 - I - 0x0032D5 00:F2C5: C5        .byte $C5   ; 
- D 3 - I - 0x0032D6 00:F2C6: 20        .byte $20   ; 



_off005_F2C7_06:
_off005_F2C7_08:
- D 3 - I - 0x0032D7 00:F2C7: 78        .byte $0F * $08   ; counter * 08
- D 3 - I - 0x0032D8 00:F2C8: D5        .byte $D5   ; 
- D 3 - I - 0x0032D9 00:F2C9: 24        .byte $24   ; 
- D 3 - I - 0x0032DA 00:F2CA: 55        .byte $55   ; 
- D 3 - I - 0x0032DB 00:F2CB: 26        .byte $26   ; 
- D 3 - I - 0x0032DC 00:F2CC: CF        .byte $CF   ; 
- D 3 - I - 0x0032DD 00:F2CD: 24        .byte $24   ; 
- D 3 - I - 0x0032DE 00:F2CE: 29        .byte $29   ; 
- D 3 - I - 0x0032DF 00:F2CF: 25        .byte $25   ; 
- D 3 - I - 0x0032E0 00:F2D0: C3        .byte $C3   ; 
- D 3 - I - 0x0032E1 00:F2D1: 24        .byte $24   ; 
- D 3 - I - 0x0032E2 00:F2D2: C3        .byte $C3   ; 
- D 3 - I - 0x0032E3 00:F2D3: 26        .byte $26   ; 
- D 3 - I - 0x0032E4 00:F2D4: 80        .byte $80   ; 
- D 3 - I - 0x0032E5 00:F2D5: 25        .byte $25   ; 
- D 3 - I - 0x0032E6 00:F2D6: 3D        .byte $3D   ; 
- D 3 - I - 0x0032E7 00:F2D7: 21        .byte $21   ; 
- D 3 - I - 0x0032E8 00:F2D8: 9A        .byte $9A   ; 
- D 3 - I - 0x0032E9 00:F2D9: 22        .byte $22   ; 
- D 3 - I - 0x0032EA 00:F2DA: F7        .byte $F7   ; 
- D 3 - I - 0x0032EB 00:F2DB: 20        .byte $20   ; 
- D 3 - I - 0x0032EC 00:F2DC: 11        .byte $11   ; 
- D 3 - I - 0x0032ED 00:F2DD: 21        .byte $21   ; 
- D 3 - I - 0x0032EE 00:F2DE: D1        .byte $D1   ; 
- D 3 - I - 0x0032EF 00:F2DF: 22        .byte $22   ; 
- D 3 - I - 0x0032F0 00:F2E0: 0B        .byte $0B   ; 
- D 3 - I - 0x0032F1 00:F2E1: 22        .byte $22   ; 
- D 3 - I - 0x0032F2 00:F2E2: EB        .byte $EB   ; 
- D 3 - I - 0x0032F3 00:F2E3: 20        .byte $20   ; 
- D 3 - I - 0x0032F4 00:F2E4: E5        .byte $E5   ; 
- D 3 - I - 0x0032F5 00:F2E5: 20        .byte $20   ; 



sub_F2E6:
C - - - - - 0x0032F6 00:F2E6: A5 60     LDA ram_0060
C - - - - - 0x0032F8 00:F2E8: F0 14     BEQ bra_F2FE
C - - - - - 0x0032FA 00:F2EA: C9 02     CMP #$02
C - - - - - 0x0032FC 00:F2EC: 90 41     BCC bra_F32F
C - - - - - 0x0032FE 00:F2EE: F0 6B     BEQ bra_F35B
C - - - - - 0x003300 00:F2F0: A5 61     LDA ram_0061
C - - - - - 0x003302 00:F2F2: C9 3C     CMP #$3C
C - - - - - 0x003304 00:F2F4: F0 07     BEQ bra_F2FD_RTS
C - - - - - 0x003306 00:F2F6: E6 61     INC ram_0061
C - - - - - 0x003308 00:F2F8: A5 42     LDA ram_demo_flag
C - - - - - 0x00330A 00:F2FA: 8D 05 06  STA ram_0605
bra_F2FD_RTS:
C - - - - - 0x00330D 00:F2FD: 60        RTS
bra_F2FE:
C - - - - - 0x00330E 00:F2FE: E6 61     INC ram_0061
C - - - - - 0x003310 00:F300: A5 61     LDA ram_0061
C - - - - - 0x003312 00:F302: C9 3C     CMP #$3C
C - - - - - 0x003314 00:F304: D0 F7     BNE bra_F2FD_RTS
C - - - - - 0x003316 00:F306: A9 00     LDA #$00
C - - - - - 0x003318 00:F308: 85 61     STA ram_0061
C - - - - - 0x00331A 00:F30A: E6 62     INC ram_hurry_timer
C - - - - - 0x00331C 00:F30C: A5 62     LDA ram_hurry_timer
C - - - - - 0x00331E 00:F30E: C5 66     CMP ram_max_hurry_timer_1
C - - - - - 0x003320 00:F310: D0 EB     BNE bra_F2FD_RTS
C - - - - - 0x003322 00:F312: A9 01     LDA #$01
C - - - - - 0x003324 00:F314: 85 60     STA ram_0060
C - - - - - 0x003326 00:F316: A2 00     LDX #$00
bra_F318_loop:
C - - - - - 0x003328 00:F318: BD AA F3  LDA tbl_F3AA,X
C - - - - - 0x00332B 00:F31B: 9D 90 04  STA ram_0490,X
C - - - - - 0x00332E 00:F31E: E8        INX
C - - - - - 0x00332F 00:F31F: E0 08     CPX #$08
C - - - - - 0x003331 00:F321: D0 F5     BNE bra_F318_loop
loc_F323:
C D 3 - - - 0x003333 00:F323: 20 BF F4  JSR sub_F4BF
C - - - - - 0x003336 00:F326: A9 03     LDA #$03
C - - - - - 0x003338 00:F328: 8D F5 06  STA ram_06F5
C - - - - - 0x00333B 00:F32B: 8D F6 06  STA ram_06F6
C - - - - - 0x00333E 00:F32E: 60        RTS
bra_F32F:
C - - - - - 0x00333F 00:F32F: 20 83 F3  JSR sub_F383
C - - - - - 0x003342 00:F332: 20 B2 F3  JSR sub_F3B2
C - - - - - 0x003345 00:F335: A5 42     LDA ram_demo_flag
C - - - - - 0x003347 00:F337: 8D 05 06  STA ram_0605
C - - - - - 0x00334A 00:F33A: AD 91 04  LDA ram_0491
C - - - - - 0x00334D 00:F33D: F0 BE     BEQ bra_F2FD_RTS
C - - - - - 0x00334F 00:F33F: A9 02     LDA #$02
C - - - - - 0x003351 00:F341: 85 60     STA ram_0060
C - - - - - 0x003353 00:F343: A9 00     LDA #$00
C - - - - - 0x003355 00:F345: 85 61     STA ram_0061
C - - - - - 0x003357 00:F347: 85 62     STA ram_hurry_timer
C - - - - - 0x003359 00:F349: A6 68     LDX ram_0068
C - - - - - 0x00335B 00:F34B: A9 1A     LDA #$1A
C - - - - - 0x00335D 00:F34D: 9D 0F 04  STA ram_040F,X
C - - - - - 0x003360 00:F350: A9 01     LDA #$01
C - - - - - 0x003362 00:F352: 9D 07 04  STA ram_0407,X
C - - - - - 0x003365 00:F355: A9 03     LDA #$03
C - - - - - 0x003367 00:F357: 9D 05 04  STA ram_0405,X
C - - - - - 0x00336A 00:F35A: 60        RTS
bra_F35B:
C - - - - - 0x00336B 00:F35B: E6 61     INC ram_0061
C - - - - - 0x00336D 00:F35D: A5 61     LDA ram_0061
C - - - - - 0x00336F 00:F35F: C9 3C     CMP #$3C
C - - - - - 0x003371 00:F361: D0 9A     BNE bra_F2FD_RTS
C - - - - - 0x003373 00:F363: A9 00     LDA #$00
C - - - - - 0x003375 00:F365: 85 61     STA ram_0061
C - - - - - 0x003377 00:F367: E6 62     INC ram_hurry_timer
C - - - - - 0x003379 00:F369: A5 62     LDA ram_hurry_timer
C - - - - - 0x00337B 00:F36B: C5 67     CMP ram_max_hurry_timer_2
C - - - - - 0x00337D 00:F36D: D0 8E     BNE bra_F2FD_RTS
C - - - - - 0x00337F 00:F36F: A9 03     LDA #$03
C - - - - - 0x003381 00:F371: 85 60     STA ram_0060
C - - - - - 0x003383 00:F373: A9 1A     LDA #$1A
C - - - - - 0x003385 00:F375: 8D 1F 04  STA ram_041F
C - - - - - 0x003388 00:F378: A9 01     LDA #$01
C - - - - - 0x00338A 00:F37A: 8D 17 04  STA ram_0417
C - - - - - 0x00338D 00:F37D: 8D 15 04  STA ram_0415
C - - - - - 0x003390 00:F380: 4C 23 F3  JMP loc_F323



sub_F383:
C - - - - - 0x003393 00:F383: A2 00     LDX #$00
bra_F385_loop:
C - - - - - 0x003395 00:F385: BD 90 04  LDA ram_0490,X
C - - - - - 0x003398 00:F388: 95 10     STA ram_0010,X
C - - - - - 0x00339A 00:F38A: E8        INX
C - - - - - 0x00339B 00:F38B: E0 08     CPX #$08
C - - - - - 0x00339D 00:F38D: D0 F6     BNE bra_F385_loop
C - - - - - 0x00339F 00:F38F: A5 21     LDA ram_frame_counter
C - - - - - 0x0033A1 00:F391: 29 03     AND #$03
C - - - - - 0x0033A3 00:F393: 85 13     STA ram_0013
bra_F395_loop:
C - - - - - 0x0033A5 00:F395: 20 15 C4  JSR sub_C415_write_spr_data
C - - - - - 0x0033A8 00:F398: A5 10     LDA ram_0010
C - - - - - 0x0033AA 00:F39A: 18        CLC
C - - - - - 0x0033AB 00:F39B: 69 08     ADC #$08
C - - - - - 0x0033AD 00:F39D: 85 10     STA ram_0010
C - - - - - 0x0033AF 00:F39F: 90 02     BCC bra_F3A3_not_overflow
C - - - - - 0x0033B1 00:F3A1: E6 11     INC ram_0011
bra_F3A3_not_overflow:
C - - - - - 0x0033B3 00:F3A3: E6 12     INC ram_0012
C - - - - - 0x0033B5 00:F3A5: C6 17     DEC ram_0017
C - - - - - 0x0033B7 00:F3A7: D0 EC     BNE bra_F395_loop
C - - - - - 0x0033B9 00:F3A9: 60        RTS



tbl_F3AA:
- D 3 - - - 0x0033BA 00:F3AA: F8        .byte $F8   ; 00
- D 3 - - - 0x0033BB 00:F3AB: 00        .byte $00   ; 01
- D 3 - - - 0x0033BC 00:F3AC: A0        .byte $A0   ; 02
- D 3 - - - 0x0033BD 00:F3AD: 00        .byte $00   ; 03
- D 3 - - - 0x0033BE 00:F3AE: 00        .byte $00   ; 04
- D 3 - - - 0x0033BF 00:F3AF: 00        .byte $00   ; 05
- D 3 - - - 0x0033C0 00:F3B0: 68        .byte $68   ; 06
- D 3 - - - 0x0033C1 00:F3B1: 04        .byte $04   ; 07



sub_F3B2:
C - - - - - 0x0033C2 00:F3B2: AD 90 04  LDA ram_0490
C - - - - - 0x0033C5 00:F3B5: 38        SEC
C - - - - - 0x0033C6 00:F3B6: E9 02     SBC #$02
C - - - - - 0x0033C8 00:F3B8: 8D 90 04  STA ram_0490
C - - - - - 0x0033CB 00:F3BB: B0 03     BCS bra_F3C0_RTS
C - - - - - 0x0033CD 00:F3BD: CE 91 04  DEC ram_0491
bra_F3C0_RTS:
C - - - - - 0x0033D0 00:F3C0: 60        RTS



sub_F3C1:
C - - - - - 0x0033D1 00:F3C1: A9 00     LDA #$00
C - - - - - 0x0033D3 00:F3C3: 85 60     STA ram_0060
C - - - - - 0x0033D5 00:F3C5: 85 61     STA ram_0061
C - - - - - 0x0033D7 00:F3C7: 85 62     STA ram_hurry_timer
C - - - - - 0x0033D9 00:F3C9: A5 7D     LDA ram_rounds_counter
C - - - - - 0x0033DB 00:F3CB: 0A        ASL
C - - - - - 0x0033DC 00:F3CC: 65 7D     ADC ram_rounds_counter
C - - - - - 0x0033DE 00:F3CE: 0A        ASL
C - - - - - 0x0033DF 00:F3CF: AA        TAX
C - - - - - 0x0033E0 00:F3D0: A0 00     LDY #$00
bra_F3D2_loop:
C - - - - - 0x0033E2 00:F3D2: BD DF F3  LDA tbl_F3DF,X
C - - - - - 0x0033E5 00:F3D5: 99 63 00  STA ram_0063,Y
C - - - - - 0x0033E8 00:F3D8: E8        INX
C - - - - - 0x0033E9 00:F3D9: C8        INY
C - - - - - 0x0033EA 00:F3DA: C0 06     CPY #$06
C - - - - - 0x0033EC 00:F3DC: D0 F4     BNE bra_F3D2_loop
C - - - - - 0x0033EE 00:F3DE: 60        RTS



tbl_F3DF:
- D 3 - - - 0x0033EF 00:F3DF: 20        .byte $20, $1C, $B4, $50, $46, $60   ; 00 ???, ???, ???, hurry timer 1, hurry timer 2, ???
- D 3 - - - 0x0033F5 00:F3E5: 20        .byte $20, $1E, $A0, $3C, $46, $60   ; 01
- D 3 - - - 0x0033FB 00:F3EB: 1E        .byte $1E, $1C, $B4, $50, $46, $60   ; 02
- D 3 - - - 0x003401 00:F3F1: 22        .byte $22, $23, $A0, $46, $37, $60   ; 03
- D 3 - - - 0x003407 00:F3F7: 22        .byte $22, $24, $A0, $46, $37, $60   ; 04
- D 3 - - - 0x00340D 00:F3FD: 22        .byte $22, $26, $96, $3C, $32, $60   ; 05
- D 3 - - - 0x003413 00:F403: 1E        .byte $1E, $1C, $B4, $50, $46, $60   ; 06
- D 3 - - - 0x003419 00:F409: 24        .byte $24, $26, $8C, $28, $32, $70   ; 07
- D 3 - - - 0x00341F 00:F40F: 24        .byte $24, $28, $8C, $28, $32, $70   ; 08
- D 3 - - - 0x003425 00:F415: 24        .byte $24, $2A, $78, $1E, $41, $70   ; 09
- D 3 - - - 0x00342B 00:F41B: 1E        .byte $1E, $1C, $B4, $50, $46, $60   ; 0A
- D 3 - - - 0x003431 00:F421: 26        .byte $26, $28, $78, $28, $2D, $70   ; 0B
- D 3 - - - 0x003437 00:F427: 26        .byte $26, $2A, $78, $28, $2D, $70   ; 0C
- D 3 - - - 0x00343D 00:F42D: 26        .byte $26, $2C, $64, $1E, $32, $70   ; 0D
- D 3 - - - 0x003443 00:F433: 1E        .byte $1E, $1C, $B4, $50, $46, $60   ; 0E
- D 3 - - - 0x003449 00:F439: 28        .byte $28, $2C, $64, $1E, $2D, $70   ; 0F
- D 3 - - - 0x00344F 00:F43F: 28        .byte $28, $2E, $64, $1E, $2D, $70   ; 10
- D 3 - - - 0x003455 00:F445: 28        .byte $28, $30, $5A, $14, $28, $70   ; 11
- D 3 - - - 0x00345B 00:F44B: 1E        .byte $1E, $1C, $B4, $50, $46, $60   ; 12
- D 3 - - - 0x003461 00:F451: 2A        .byte $2A, $2E, $5A, $1E, $2D, $80   ; 13
- - - - - - 0x003467 00:F457: 2A        .byte $2A, $30, $50, $14, $28, $80   ; 14
- - - - - - 0x00346D 00:F45D: 2A        .byte $2A, $34, $5A, $1E, $2D, $80   ; 15
- - - - - - 0x003473 00:F463: 1E        .byte $1E, $1C, $B4, $50, $46, $60   ; 16
- - - - - - 0x003479 00:F469: 2C        .byte $2C, $32, $50, $1E, $28, $80   ; 17
- - - - - - 0x00347F 00:F46F: 2C        .byte $2C, $32, $3C, $14, $28, $80   ; 18
- - - - - - 0x003485 00:F475: 2C        .byte $2C, $34, $50, $1E, $28, $80   ; 19
- - - - - - 0x00348B 00:F47B: 1E        .byte $1E, $1C, $B4, $50, $46, $60   ; 1A
- - - - - - 0x003491 00:F481: 2C        .byte $2C, $32, $3C, $14, $28, $80   ; 1B
- - - - - - 0x003497 00:F487: 2C        .byte $2C, $36, $50, $1E, $23, $80   ; 1C
- - - - - - 0x00349D 00:F48D: 2C        .byte $2C, $38, $50, $1E, $28, $80   ; 1D
- - - - - - 0x0034A3 00:F493: 1E        .byte $1E, $1C, $B4, $50, $46, $60   ; 1E
- - - - - - 0x0034A9 00:F499: 2C        .byte $2C, $38, $3C, $14, $28, $80   ; 1F



sub_F49F_jump_to_pointers_after_jsr:
C - - - - - 0x0034AF 00:F49F: 0A        ASL
C - - - - - 0x0034B0 00:F4A0: A8        TAY
C - - - - - 0x0034B1 00:F4A1: C8        INY
C - - - - - 0x0034B2 00:F4A2: 68        PLA
C - - - - - 0x0034B3 00:F4A3: 85 F6     STA ram_00F6
C - - - - - 0x0034B5 00:F4A5: 68        PLA
C - - - - - 0x0034B6 00:F4A6: 85 F7     STA ram_00F7
C - - - - - 0x0034B8 00:F4A8: B1 F6     LDA (ram_00F6),Y
C - - - - - 0x0034BA 00:F4AA: AA        TAX
C - - - - - 0x0034BB 00:F4AB: C8        INY
C - - - - - 0x0034BC 00:F4AC: B1 F6     LDA (ram_00F6),Y
C - - - - - 0x0034BE 00:F4AE: 85 F7     STA ram_00F7
C - - - - - 0x0034C0 00:F4B0: 86 F6     STX ram_00F6
C - - - - - 0x0034C2 00:F4B2: 6C F6 00  JMP (ram_00F6)



sub_F4B5:
C - - - - - 0x0034C5 00:F4B5: A9 0F     LDA #$0F
C - - - - - 0x0034C7 00:F4B7: 8D 15 40  STA $4015
C - - - - - 0x0034CA 00:F4BA: A9 C0     LDA #$C0
C - - - - - 0x0034CC 00:F4BC: 8D 17 40  STA $4017
sub_F4BF:
C - - - - - 0x0034CF 00:F4BF: A9 19     LDA #< ram_0619
C - - - - - 0x0034D1 00:F4C1: 85 F0     STA ram_00F0
C - - - - - 0x0034D3 00:F4C3: A9 06     LDA #> ram_0619
C - - - - - 0x0034D5 00:F4C5: 85 F1     STA ram_00F1
C - - - - - 0x0034D7 00:F4C7: A2 00     LDX #$00
C - - - - - 0x0034D9 00:F4C9: A0 00     LDY #$00
bra_F4CB_loop:
C - - - - - 0x0034DB 00:F4CB: A9 00     LDA #$00
C - - - - - 0x0034DD 00:F4CD: 91 F0     STA (ram_00F0),Y
C - - - - - 0x0034DF 00:F4CF: 9D 00 06  STA ram_0600,X
C - - - - - 0x0034E2 00:F4D2: 18        CLC
C - - - - - 0x0034E3 00:F4D3: A5 F0     LDA ram_00F0
C - - - - - 0x0034E5 00:F4D5: 69 08     ADC #$08
C - - - - - 0x0034E7 00:F4D7: 85 F0     STA ram_00F0
C - - - - - 0x0034E9 00:F4D9: 90 02     BCC bra_F4DD_not_overflow
- - - - - - 0x0034EB 00:F4DB: E6 F1     INC ram_00F1
bra_F4DD_not_overflow:
C - - - - - 0x0034ED 00:F4DD: E8        INX
C - - - - - 0x0034EE 00:F4DE: E0 19     CPX #$19
C - - - - - 0x0034F0 00:F4E0: D0 E9     BNE bra_F4CB_loop
C - - - - - 0x0034F2 00:F4E2: A2 19     LDX #$19
C - - - - - 0x0034F4 00:F4E4: A0 00     LDY #$00
bra_F4E6_loop:
C - - - - - 0x0034F6 00:F4E6: B9 9E F8  LDA tbl_F89E,Y
C - - - - - 0x0034F9 00:F4E9: 99 E2 06  STA ram_06E2,Y
C - - - - - 0x0034FC 00:F4EC: C8        INY
C - - - - - 0x0034FD 00:F4ED: CA        DEX
C - - - - - 0x0034FE 00:F4EE: D0 F6     BNE bra_F4E6_loop
C - - - - - 0x003500 00:F4F0: 60        RTS



sub_F4F1_update_sound_engine:
C - - - - - 0x003501 00:F4F1: A5 23     LDA ram_0023
C - - - - - 0x003503 00:F4F3: D0 06     BNE bra_F4FB
C - - - - - 0x003505 00:F4F5: A9 19     LDA #$19
C - - - - - 0x003507 00:F4F7: 85 F5     STA ram_00F5
C - - - - - 0x003509 00:F4F9: 10 0E     BPL bra_F509
bra_F4FB:
C - - - - - 0x00350B 00:F4FB: A9 01     LDA #$01
C - - - - - 0x00350D 00:F4FD: 85 F5     STA ram_00F5
C - - - - - 0x00350F 00:F4FF: A9 10     LDA #$10
C - - - - - 0x003511 00:F501: 8D 04 40  STA $4004
C - - - - - 0x003514 00:F504: A9 00     LDA #$00
C - - - - - 0x003516 00:F506: 8D 08 40  STA $4008
bra_F509:
C - - - - - 0x003519 00:F509: A9 00     LDA #$00
C - - - - - 0x00351B 00:F50B: 85 FC     STA ram_00FC
C - - - - - 0x00351D 00:F50D: 85 FD     STA ram_00FD
C - - - - - 0x00351F 00:F50F: 85 FE     STA ram_00FE
C - - - - - 0x003521 00:F511: 85 FF     STA ram_00FF
C - - - - - 0x003523 00:F513: A5 F5     LDA ram_00F5
C - - - - - 0x003525 00:F515: 85 F4     STA ram_00F4
C - - - - - 0x003527 00:F517: A9 19     LDA #$19
C - - - - - 0x003529 00:F519: 85 F0     STA ram_00F0
C - - - - - 0x00352B 00:F51B: A9 06     LDA #$06
C - - - - - 0x00352D 00:F51D: 85 F1     STA ram_00F1
bra_F51F_loop:
C - - - - - 0x00352F 00:F51F: A0 00     LDY #$00
C - - - - - 0x003531 00:F521: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x003533 00:F523: F0 35     BEQ bra_F55A
C - - - - - 0x003535 00:F525: C9 05     CMP #$05
C - - - - - 0x003537 00:F527: 90 0B     BCC bra_F534
C - - - - - 0x003539 00:F529: 38        SEC
C - - - - - 0x00353A 00:F52A: E9 05     SBC #$05
C - - - - - 0x00353C 00:F52C: AA        TAX
C - - - - - 0x00353D 00:F52D: A9 01     LDA #$01
C - - - - - 0x00353F 00:F52F: 95 FC     STA ram_00FC,X
C - - - - - 0x003541 00:F531: 4C 5A F5  JMP loc_F55A
bra_F534:
C - - - - - 0x003544 00:F534: AA        TAX
C - - - - - 0x003545 00:F535: CA        DEX
C - - - - - 0x003546 00:F536: B5 FC     LDA ram_00FC,X
C - - - - - 0x003548 00:F538: D0 20     BNE bra_F55A
C - - - - - 0x00354A 00:F53A: A9 01     LDA #$01
C - - - - - 0x00354C 00:F53C: 95 FC     STA ram_00FC,X
C - - - - - 0x00354E 00:F53E: 8A        TXA
C - - - - - 0x00354F 00:F53F: A8        TAY
C - - - - - 0x003550 00:F540: 18        CLC
C - - - - - 0x003551 00:F541: 69 05     ADC #$05
C - - - - - 0x003553 00:F543: A0 00     LDY #$00
C - - - - - 0x003555 00:F545: 91 F0     STA (ram_00F0),Y
C - - - - - 0x003557 00:F547: 8A        TXA
C - - - - - 0x003558 00:F548: 0A        ASL
C - - - - - 0x003559 00:F549: 0A        ASL
C - - - - - 0x00355A 00:F54A: AA        TAX
C - - - - - 0x00355B 00:F54B: A9 04     LDA #$04
C - - - - - 0x00355D 00:F54D: 85 F6     STA ram_00F6
bra_F54F_loop:
C - - - - - 0x00355F 00:F54F: C8        INY
C - - - - - 0x003560 00:F550: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x003562 00:F552: 9D 00 40  STA $4000,X
C - - - - - 0x003565 00:F555: E8        INX
C - - - - - 0x003566 00:F556: C6 F6     DEC ram_00F6
C - - - - - 0x003568 00:F558: D0 F5     BNE bra_F54F_loop
bra_F55A:
loc_F55A:
C D 3 - - - 0x00356A 00:F55A: 18        CLC
C - - - - - 0x00356B 00:F55B: A5 F0     LDA ram_00F0
C - - - - - 0x00356D 00:F55D: 69 08     ADC #$08
C - - - - - 0x00356F 00:F55F: 85 F0     STA ram_00F0
C - - - - - 0x003571 00:F561: 90 02     BCC bra_F565
- - - - - - 0x003573 00:F563: E6 F1     INC ram_00F1
bra_F565:
C - - - - - 0x003575 00:F565: C6 F4     DEC ram_00F4
C - - - - - 0x003577 00:F567: D0 B6     BNE bra_F51F_loop
C - - - - - 0x003579 00:F569: A2 00     LDX #$00
bra_F56B_loop:
C - - - - - 0x00357B 00:F56B: 86 F6     STX ram_00F6
C - - - - - 0x00357D 00:F56D: B5 FC     LDA ram_00FC,X
C - - - - - 0x00357F 00:F56F: D0 0C     BNE bra_F57D
C - - - - - 0x003581 00:F571: 8A        TXA
C - - - - - 0x003582 00:F572: 0A        ASL
C - - - - - 0x003583 00:F573: 0A        ASL
C - - - - - 0x003584 00:F574: AA        TAX
C - - - - - 0x003585 00:F575: 0A        ASL
C - - - - - 0x003586 00:F576: 29 10     AND #$10
C - - - - - 0x003588 00:F578: 49 10     EOR #$10
; 4000 4004 4008 400C
C - - - - - 0x00358A 00:F57A: 9D 00 40  STA $4000,X
bra_F57D:
C - - - - - 0x00358D 00:F57D: A6 F6     LDX ram_00F6
C - - - - - 0x00358F 00:F57F: E8        INX
C - - - - - 0x003590 00:F580: E0 04     CPX #$04
C - - - - - 0x003592 00:F582: 90 E7     BCC bra_F56B_loop
C - - - - - 0x003594 00:F584: A0 00     LDY #$00
C - - - - - 0x003596 00:F586: 84 F4     STY ram_00F4
C - - - - - 0x003598 00:F588: A9 19     LDA #$19
C - - - - - 0x00359A 00:F58A: 85 F0     STA ram_00F0
C - - - - - 0x00359C 00:F58C: A9 06     LDA #$06
C - - - - - 0x00359E 00:F58E: 85 F1     STA ram_00F1
bra_F590_loop:
C - - - - - 0x0035A0 00:F590: A6 F4     LDX ram_00F4
C - - - - - 0x0035A2 00:F592: BD 85 F8  LDA tbl_F885,X
C - - - - - 0x0035A5 00:F595: F0 0D     BEQ bra_F5A4
C - - - - - 0x0035A7 00:F597: BD 00 06  LDA ram_0600,X
C - - - - - 0x0035AA 00:F59A: D0 15     BNE bra_F5B1
C - - - - - 0x0035AC 00:F59C: A0 00     LDY #$00
C - - - - - 0x0035AE 00:F59E: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x0035B0 00:F5A0: F0 16     BEQ bra_F5B8
C - - - - - 0x0035B2 00:F5A2: D0 28     BNE bra_F5CC    ; jmp
bra_F5A4:
C - - - - - 0x0035B4 00:F5A4: BD 00 06  LDA ram_0600,X
C - - - - - 0x0035B7 00:F5A7: F0 0F     BEQ bra_F5B8
C - - - - - 0x0035B9 00:F5A9: A0 00     LDY #$00
C - - - - - 0x0035BB 00:F5AB: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x0035BD 00:F5AD: D0 1D     BNE bra_F5CC
C - - - - - 0x0035BF 00:F5AF: F0 28     BEQ bra_F5D9    ; jmp
bra_F5B1:
C - - - - - 0x0035C1 00:F5B1: A9 00     LDA #$00
C - - - - - 0x0035C3 00:F5B3: 9D 00 06  STA ram_0600,X
C - - - - - 0x0035C6 00:F5B6: 10 21     BPL bra_F5D9    ; jmp
bra_F5B8:
loc_F5B8:
C D 3 - - - 0x0035C8 00:F5B8: 18        CLC
C - - - - - 0x0035C9 00:F5B9: A5 F0     LDA ram_00F0
C - - - - - 0x0035CB 00:F5BB: 69 08     ADC #$08
C - - - - - 0x0035CD 00:F5BD: 85 F0     STA ram_00F0
C - - - - - 0x0035CF 00:F5BF: 90 02     BCC bra_F5C3
- - - - - - 0x0035D1 00:F5C1: E6 F1     INC ram_00F1
bra_F5C3:
C - - - - - 0x0035D3 00:F5C3: E6 F4     INC ram_00F4
C - - - - - 0x0035D5 00:F5C5: A5 F4     LDA ram_00F4
C - - - - - 0x0035D7 00:F5C7: C5 F5     CMP ram_00F5
C - - - - - 0x0035D9 00:F5C9: 90 C5     BCC bra_F590_loop
C - - - - - 0x0035DB 00:F5CB: 60        RTS
bra_F5CC:
C - - - - - 0x0035DC 00:F5CC: A0 07     LDY #$07
C - - - - - 0x0035DE 00:F5CE: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x0035E0 00:F5D0: 38        SEC
C - - - - - 0x0035E1 00:F5D1: E9 01     SBC #$01
C - - - - - 0x0035E3 00:F5D3: 91 F0     STA (ram_00F0),Y
C - - - - - 0x0035E5 00:F5D5: F0 5C     BEQ bra_F633
C - - - - - 0x0035E7 00:F5D7: D0 DF     BNE bra_F5B8    ; jmp
bra_F5D9:
C - - - - - 0x0035E9 00:F5D9: A5 F4     LDA ram_00F4
C - - - - - 0x0035EB 00:F5DB: C9 13     CMP #$13
C - - - - - 0x0035ED 00:F5DD: F0 10     BEQ bra_F5EF_13
C - - - - - 0x0035EF 00:F5DF: C9 14     CMP #$14
C - - - - - 0x0035F1 00:F5E1: F0 19     BEQ bra_F5FC_14
C - - - - - 0x0035F3 00:F5E3: A9 00     LDA #$00
C - - - - - 0x0035F5 00:F5E5: A0 05     LDY #$05
C - - - - - 0x0035F7 00:F5E7: 91 F0     STA (ram_00F0),Y
C - - - - - 0x0035F9 00:F5E9: 20 F4 F7  JSR sub_F7F4
C - - - - - 0x0035FC 00:F5EC: 4C 06 F6  JMP loc_F606
bra_F5EF_13:
C - - - - - 0x0035FF 00:F5EF: AD 79 F8  LDA tbl_F879_13
C - - - - - 0x003602 00:F5F2: 85 F8     STA ram_00F8
C - - - - - 0x003604 00:F5F4: AD 7A F8  LDA tbl_F879_13 + $01
C - - - - - 0x003607 00:F5F7: 85 F9     STA ram_00F9
C - - - - - 0x003609 00:F5F9: 4C 06 F6  JMP loc_F606
bra_F5FC_14:
C - - - - - 0x00360C 00:F5FC: AD 7B F8  LDA tbl_F87B_14
C - - - - - 0x00360F 00:F5FF: 85 FA     STA ram_00FA
C - - - - - 0x003611 00:F601: AD 7C F8  LDA tbl_F87B_14 + $01
C - - - - - 0x003614 00:F604: 85 FB     STA ram_00FB
loc_F606:
C D 3 - - - 0x003616 00:F606: 20 0B F8  JSR sub_F80B_read_sound_data
C - - - - - 0x003619 00:F609: A0 00     LDY #$00
C - - - - - 0x00361B 00:F60B: 91 F0     STA (ram_00F0),Y
C - - - - - 0x00361D 00:F60D: 20 0B F8  JSR sub_F80B_read_sound_data
C - - - - - 0x003620 00:F610: A0 01     LDY #$01
C - - - - - 0x003622 00:F612: 91 F0     STA (ram_00F0),Y
C - - - - - 0x003624 00:F614: 20 0B F8  JSR sub_F80B_read_sound_data
C - - - - - 0x003627 00:F617: A0 02     LDY #$02
C - - - - - 0x003629 00:F619: 91 F0     STA (ram_00F0),Y
C - - - - - 0x00362B 00:F61B: 20 0B F8  JSR sub_F80B_read_sound_data
C - - - - - 0x00362E 00:F61E: A0 04     LDY #$04
C - - - - - 0x003630 00:F620: 91 F0     STA (ram_00F0),Y
C - - - - - 0x003632 00:F622: A0 00     LDY #$00
C - - - - - 0x003634 00:F624: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x003636 00:F626: C9 04     CMP #$04
C - - - - - 0x003638 00:F628: D0 0C     BNE bra_F636
- - - - - - 0x00363A 00:F62A: 20 0B F8  JSR sub_F80B_read_sound_data
- - - - - - 0x00363D 00:F62D: A0 03     LDY #$03
- - - - - - 0x00363F 00:F62F: 91 F0     STA (ram_00F0),Y
- - - - - - 0x003641 00:F631: 10 03     BPL bra_F636    ; jmp
bra_F633:
C - - - - - 0x003643 00:F633: 20 F4 F7  JSR sub_F7F4
bra_F636:
loc_F636:
C D 3 - - - 0x003646 00:F636: 20 0B F8  JSR sub_F80B_read_sound_data
C - - - - - 0x003649 00:F639: C9 E8     CMP #$E8
C - - - - - 0x00364B 00:F63B: B0 6A     BCS bra_F6A7_E8_FF_control_byte
; 00-E7
C - - - - - 0x00364D 00:F63D: C9 60     CMP #$60
C - - - - - 0x00364F 00:F63F: F0 3B     BEQ bra_F67C_60
C - - - - - 0x003651 00:F641: B0 5C     BCS bra_F69F_61_E7
; 00-5F
C - - - - - 0x003653 00:F643: 48        PHA
C - - - - - 0x003654 00:F644: 29 F8     AND #$F8
C - - - - - 0x003656 00:F646: 4A        LSR
C - - - - - 0x003657 00:F647: 4A        LSR
C - - - - - 0x003658 00:F648: AA        TAX
C - - - - - 0x003659 00:F649: BD 3B F8  LDA tbl_F83B,X
C - - - - - 0x00365C 00:F64C: 85 F6     STA ram_00F6
C - - - - - 0x00365E 00:F64E: BD 3C F8  LDA tbl_F83B + $01,X
C - - - - - 0x003661 00:F651: 85 F7     STA ram_00F7
C - - - - - 0x003663 00:F653: 68        PLA
C - - - - - 0x003664 00:F654: 29 07     AND #$07
C - - - - - 0x003666 00:F656: F0 08     BEQ bra_F660
C - - - - - 0x003668 00:F658: AA        TAX
bra_F659_loop:
C - - - - - 0x003669 00:F659: 46 F6     LSR ram_00F6
C - - - - - 0x00366B 00:F65B: 66 F7     ROR ram_00F7
C - - - - - 0x00366D 00:F65D: CA        DEX
C - - - - - 0x00366E 00:F65E: D0 F9     BNE bra_F659_loop
bra_F660:
C - - - - - 0x003670 00:F660: A0 04     LDY #$04
C - - - - - 0x003672 00:F662: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x003674 00:F664: 29 F8     AND #$F8
C - - - - - 0x003676 00:F666: 05 F6     ORA ram_00F6
C - - - - - 0x003678 00:F668: 91 F0     STA (ram_00F0),Y
C - - - - - 0x00367A 00:F66A: A5 F7     LDA ram_00F7
C - - - - - 0x00367C 00:F66C: 88        DEY
C - - - - - 0x00367D 00:F66D: 91 F0     STA (ram_00F0),Y
C - - - - - 0x00367F 00:F66F: A0 00     LDY #$00
C - - - - - 0x003681 00:F671: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x003683 00:F673: C9 05     CMP #$05
C - - - - - 0x003685 00:F675: 90 05     BCC bra_F67C
C - - - - - 0x003687 00:F677: 38        SEC
C - - - - - 0x003688 00:F678: E9 04     SBC #$04
C - - - - - 0x00368A 00:F67A: 91 F0     STA (ram_00F0),Y
bra_F67C_60:
bra_F67C:
C - - - - - 0x00368C 00:F67C: A0 06     LDY #$06
C - - - - - 0x00368E 00:F67E: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x003690 00:F680: 85 F6     STA ram_00F6
C - - - - - 0x003692 00:F682: A6 F4     LDX ram_00F4
C - - - - - 0x003694 00:F684: BD E2 06  LDA ram_06E2,X
C - - - - - 0x003697 00:F687: 85 F7     STA ram_00F7
C - - - - - 0x003699 00:F689: A9 00     LDA #$00
C - - - - - 0x00369B 00:F68B: A2 08     LDX #$08
bra_F68D_loop:
C - - - - - 0x00369D 00:F68D: 46 F7     LSR ram_00F7
C - - - - - 0x00369F 00:F68F: 90 03     BCC bra_F694
C - - - - - 0x0036A1 00:F691: 18        CLC
C - - - - - 0x0036A2 00:F692: 65 F6     ADC ram_00F6
bra_F694:
C - - - - - 0x0036A4 00:F694: 06 F6     ASL ram_00F6
C - - - - - 0x0036A6 00:F696: CA        DEX
C - - - - - 0x0036A7 00:F697: D0 F4     BNE bra_F68D_loop
C - - - - - 0x0036A9 00:F699: C8        INY
C - - - - - 0x0036AA 00:F69A: 91 F0     STA (ram_00F0),Y
C - - - - - 0x0036AC 00:F69C: 4C B8 F5  JMP loc_F5B8
bra_F69F_61_E7:
C - - - - - 0x0036AF 00:F69F: E9 60     SBC #$60
C - - - - - 0x0036B1 00:F6A1: A0 06     LDY #$06
C - - - - - 0x0036B3 00:F6A3: 91 F0     STA (ram_00F0),Y
C - - - - - 0x0036B5 00:F6A5: 10 8F     BPL bra_F636    ; jmp
bra_F6A7_E8_FF_control_byte:
C - - - - - 0x0036B7 00:F6A7: E9 E8     SBC #$E8
C - - - - - 0x0036B9 00:F6A9: 20 9F F4  JSR sub_F49F_jump_to_pointers_after_jsr
- D 3 - I - 0x0036BC 00:F6AC: D0 F6     .word ofs_005_F6D0_E8
- D 3 - I - 0x0036BE 00:F6AE: DE F6     .word ofs_005_F6DE_E9
- D 3 - I - 0x0036C0 00:F6B0: F0 F6     .word ofs_005_F6F0_EA
- - - - - - 0x0036C2 00:F6B2: 02 F7     .word ofs_005_F702_EB
- - - - - - 0x0036C4 00:F6B4: 14 F7     .word ofs_005_F714_EC
- - - - - - 0x0036C6 00:F6B6: 1E F7     .word ofs_005_F71E_ED
- D 3 - I - 0x0036C8 00:F6B8: 28 F7     .word ofs_005_F728_EE
- D 3 - I - 0x0036CA 00:F6BA: 32 F7     .word ofs_005_F732_EF
- D 3 - I - 0x0036CC 00:F6BC: 3F F7     .word ofs_005_F73F_F0
- D 3 - I - 0x0036CE 00:F6BE: 43 F7     .word ofs_005_F743_F1
- D 3 - I - 0x0036D0 00:F6C0: 46 F7     .word ofs_005_F746_F2
- D 3 - I - 0x0036D2 00:F6C2: 5A F7     .word ofs_005_F75A_F3
- D 3 - I - 0x0036D4 00:F6C4: 5E F7     .word ofs_005_F75E_F4
- D 3 - I - 0x0036D6 00:F6C6: 61 F7     .word ofs_005_F761_F5
- D 3 - I - 0x0036D8 00:F6C8: 75 F7     .word ofs_005_F775_F6
- D 3 - I - 0x0036DA 00:F6CA: 79 F7     .word ofs_005_F779_F7
- D 3 - I - 0x0036DC 00:F6CC: 7C F7     .word ofs_005_F77C_F8
- D 3 - I - 0x0036DE 00:F6CE: C2 F7     .word ofs_005_F7C2_F9



ofs_005_F6D0_E8:
C - - J - - 0x0036E0 00:F6D0: A6 F4     LDX ram_00F4
C - - - - - 0x0036E2 00:F6D2: A9 00     LDA #$00
C - - - - - 0x0036E4 00:F6D4: 9D 00 06  STA ram_0600,X
C - - - - - 0x0036E7 00:F6D7: A0 00     LDY #$00
C - - - - - 0x0036E9 00:F6D9: 91 F0     STA (ram_00F0),Y
C - - - - - 0x0036EB 00:F6DB: 4C B8 F5  JMP loc_F5B8



ofs_005_F6DE_E9:
C - - J - - 0x0036EE 00:F6DE: 20 0B F8  JSR sub_F80B_read_sound_data
C - - - - - 0x0036F1 00:F6E1: 85 F6     STA ram_00F6
C - - - - - 0x0036F3 00:F6E3: A0 01     LDY #$01
C - - - - - 0x0036F5 00:F6E5: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x0036F7 00:F6E7: 29 3F     AND #$3F
C - - - - - 0x0036F9 00:F6E9: 05 F6     ORA ram_00F6
C - - - - - 0x0036FB 00:F6EB: 91 F0     STA (ram_00F0),Y
C - - - - - 0x0036FD 00:F6ED: 4C 36 F6  JMP loc_F636



ofs_005_F6F0_EA:
C - - J - - 0x003700 00:F6F0: 20 0B F8  JSR sub_F80B_read_sound_data
C - - - - - 0x003703 00:F6F3: 85 F6     STA ram_00F6
C - - - - - 0x003705 00:F6F5: A0 01     LDY #$01
C - - - - - 0x003707 00:F6F7: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x003709 00:F6F9: 29 C0     AND #$C0
C - - - - - 0x00370B 00:F6FB: 05 F6     ORA ram_00F6
C - - - - - 0x00370D 00:F6FD: 91 F0     STA (ram_00F0),Y
C - - - - - 0x00370F 00:F6FF: 4C 36 F6  JMP loc_F636



ofs_005_F702_EB:
- - - - - - 0x003712 00:F702: 20 0B F8  JSR sub_F80B_read_sound_data
- - - - - - 0x003715 00:F705: 85 F6     STA ram_00F6
- - - - - - 0x003717 00:F707: A0 01     LDY #$01
- - - - - - 0x003719 00:F709: B1 F0     LDA (ram_00F0),Y
- - - - - - 0x00371B 00:F70B: 29 F0     AND #$F0
- - - - - - 0x00371D 00:F70D: 05 F6     ORA ram_00F6
- - - - - - 0x00371F 00:F70F: 91 F0     STA (ram_00F0),Y
- - - - - - 0x003721 00:F711: 4C 36 F6  JMP loc_F636



ofs_005_F714_EC:
- - - - - - 0x003724 00:F714: 20 0B F8  JSR sub_F80B_read_sound_data
- - - - - - 0x003727 00:F717: A0 02     LDY #$02
- - - - - - 0x003729 00:F719: 91 F0     STA (ram_00F0),Y
- - - - - - 0x00372B 00:F71B: 4C 36 F6  JMP loc_F636



ofs_005_F71E_ED:
- - - - - - 0x00372E 00:F71E: 20 0B F8  JSR sub_F80B_read_sound_data
- - - - - - 0x003731 00:F721: A0 04     LDY #$04
- - - - - - 0x003733 00:F723: 91 F0     STA (ram_00F0),Y
- - - - - - 0x003735 00:F725: 4C 36 F6  JMP loc_F636



ofs_005_F728_EE:
C - - J - - 0x003738 00:F728: 20 0B F8  JSR sub_F80B_read_sound_data
C - - - - - 0x00373B 00:F72B: A0 01     LDY #$01
C - - - - - 0x00373D 00:F72D: 91 F0     STA (ram_00F0),Y
C - - - - - 0x00373F 00:F72F: 4C 36 F6  JMP loc_F636



ofs_005_F732_EF:
C - - J - - 0x003742 00:F732: A9 00     LDA #$00
C - - - - - 0x003744 00:F734: A2 08     LDX #$08
bra_F736_loop:  ; clear 0161-0169
C - - - - - 0x003746 00:F736: 9D 61 01  STA ram_0161,X
C - - - - - 0x003749 00:F739: CA        DEX
C - - - - - 0x00374A 00:F73A: 10 FA     BPL bra_F736_loop
C - - - - - 0x00374C 00:F73C: 4C 36 F6  JMP loc_F636



ofs_005_F73F_F0:
C - - J - - 0x00374F 00:F73F: A2 00     LDX #$00
C - - - - - 0x003751 00:F741: F0 05     BEQ bra_F748    ; jmp



ofs_005_F743_F1:
C - - J - - 0x003753 00:F743: A2 01     LDX #$01
C - - - - - 0x003755 00:F745: 2C        .byte $2C   ; BIT opcode
ofs_005_F746_F2:
C - - - - - 0x003756 00:F746: A2 02     LDX #$02
bra_F748:
C - - - - - 0x003758 00:F748: 20 0B F8  JSR sub_F80B_read_sound_data
C - - - - - 0x00375B 00:F74B: FE 61 01  INC ram_0161,X
C - - - - - 0x00375E 00:F74E: DD 61 01  CMP ram_0161,X
C - - - - - 0x003761 00:F751: D0 6F     BNE bra_F7C2
C - - - - - 0x003763 00:F753: A9 00     LDA #$00
C - - - - - 0x003765 00:F755: 9D 61 01  STA ram_0161,X
C - - - - - 0x003768 00:F758: F0 36     BEQ bra_F790    ; jmp



ofs_005_F75A_F3:
C - - J - - 0x00376A 00:F75A: A2 00     LDX #$00
C - - - - - 0x00376C 00:F75C: F0 05     BEQ bra_F763    ; jmp



ofs_005_F75E_F4:
C - - J - - 0x00376E 00:F75E: A2 01     LDX #$01
C - - - - - 0x003770 00:F760: 2C        .byte $2C   ; BIT opcode
ofs_005_F761_F5:
C - - - - - 0x003771 00:F761: A2 02     LDX #$02
bra_F763:
C - - - - - 0x003773 00:F763: 20 0B F8  JSR sub_F80B_read_sound_data
C - - - - - 0x003776 00:F766: FE 64 01  INC ram_0164,X
C - - - - - 0x003779 00:F769: DD 64 01  CMP ram_0164,X
C - - - - - 0x00377C 00:F76C: D0 22     BNE bra_F790
C - - - - - 0x00377E 00:F76E: A9 00     LDA #$00
C - - - - - 0x003780 00:F770: 9D 64 01  STA ram_0164,X
C - - - - - 0x003783 00:F773: F0 4D     BEQ bra_F7C2    ; jmp



ofs_005_F775_F6:
C - - J - - 0x003785 00:F775: A2 00     LDX #$00
C - - - - - 0x003787 00:F777: F0 05     BEQ bra_F77E    ; jmp



ofs_005_F779_F7:
C - - J - - 0x003789 00:F779: A2 01     LDX #$01
C - - - - - 0x00378B 00:F77B: 2C        .byte $2C   ; BIT opcode
ofs_005_F77C_F8:
C - - - - - 0x00378C 00:F77C: A2 02     LDX #$02
bra_F77E:
C - - - - - 0x00378E 00:F77E: 20 0B F8  JSR sub_F80B_read_sound_data
C - - - - - 0x003791 00:F781: FE 67 01  INC ram_0167,X
C - - - - - 0x003794 00:F784: DD 67 01  CMP ram_0167,X
C - - - - - 0x003797 00:F787: D0 07     BNE bra_F790
C - - - - - 0x003799 00:F789: A9 00     LDA #$00
C - - - - - 0x00379B 00:F78B: 9D 67 01  STA ram_0167,X
C - - - - - 0x00379E 00:F78E: F0 32     BEQ bra_F7C2    ; jmp
bra_F790:
C - - - - - 0x0037A0 00:F790: A5 F4     LDA ram_00F4
C - - - - - 0x0037A2 00:F792: C9 13     CMP #$13
C - - - - - 0x0037A4 00:F794: F0 10     BEQ bra_F7A6_13
C - - - - - 0x0037A6 00:F796: C9 14     CMP #$14
C - - - - - 0x0037A8 00:F798: F0 1A     BEQ bra_F7B4_14
C - - - - - 0x0037AA 00:F79A: A0 05     LDY #$05
C - - - - - 0x0037AC 00:F79C: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x0037AE 00:F79E: 18        CLC
C - - - - - 0x0037AF 00:F79F: 69 01     ADC #$01
C - - - - - 0x0037B1 00:F7A1: 91 F0     STA (ram_00F0),Y
C - - - - - 0x0037B3 00:F7A3: 4C 36 F6  JMP loc_F636
bra_F7A6_13:
C - - - - - 0x0037B6 00:F7A6: A5 F8     LDA ram_00F8
C - - - - - 0x0037B8 00:F7A8: 18        CLC
C - - - - - 0x0037B9 00:F7A9: 69 02     ADC #$02
C - - - - - 0x0037BB 00:F7AB: 85 F8     STA ram_00F8
C - - - - - 0x0037BD 00:F7AD: 90 02     BCC bra_F7B1_not_overflow
- - - - - - 0x0037BF 00:F7AF: E6 F9     INC ram_00F9
bra_F7B1_not_overflow:
C - - - - - 0x0037C1 00:F7B1: 4C 36 F6  JMP loc_F636
bra_F7B4_14:
C - - - - - 0x0037C4 00:F7B4: A5 FA     LDA ram_00FA
C - - - - - 0x0037C6 00:F7B6: 18        CLC
C - - - - - 0x0037C7 00:F7B7: 69 02     ADC #$02
C - - - - - 0x0037C9 00:F7B9: 85 FA     STA ram_00FA
C - - - - - 0x0037CB 00:F7BB: 90 02     BCC bra_F7BF
- - - - - - 0x0037CD 00:F7BD: E6 FB     INC ram_00FB
bra_F7BF:
C - - - - - 0x0037CF 00:F7BF: 4C 36 F6  JMP loc_F636
bra_F7C2:
ofs_005_F7C2_F9:
C - - - - - 0x0037D2 00:F7C2: A5 F4     LDA ram_00F4
C - - - - - 0x0037D4 00:F7C4: C9 13     CMP #$13
C - - - - - 0x0037D6 00:F7C6: F0 0E     BEQ bra_F7D6_13
C - - - - - 0x0037D8 00:F7C8: C9 14     CMP #$14
C - - - - - 0x0037DA 00:F7CA: F0 19     BEQ bra_F7E5_14
C - - - - - 0x0037DC 00:F7CC: 20 0B F8  JSR sub_F80B_read_sound_data
C - - - - - 0x0037DF 00:F7CF: A0 05     LDY #$05
C - - - - - 0x0037E1 00:F7D1: 91 F0     STA (ram_00F0),Y
C - - - - - 0x0037E3 00:F7D3: 4C 36 F6  JMP loc_F636
bra_F7D6_13:
C - - - - - 0x0037E6 00:F7D6: 20 0B F8  JSR sub_F80B_read_sound_data
C - - - - - 0x0037E9 00:F7D9: 48        PHA
C - - - - - 0x0037EA 00:F7DA: 20 0B F8  JSR sub_F80B_read_sound_data
C - - - - - 0x0037ED 00:F7DD: 85 F9     STA ram_00F9
C - - - - - 0x0037EF 00:F7DF: 68        PLA
C - - - - - 0x0037F0 00:F7E0: 85 F8     STA ram_00F8
C - - - - - 0x0037F2 00:F7E2: 4C 36 F6  JMP loc_F636
bra_F7E5_14:
C - - - - - 0x0037F5 00:F7E5: 20 0B F8  JSR sub_F80B_read_sound_data
C - - - - - 0x0037F8 00:F7E8: 48        PHA
C - - - - - 0x0037F9 00:F7E9: 20 0B F8  JSR sub_F80B_read_sound_data
C - - - - - 0x0037FC 00:F7EC: 85 FB     STA ram_00FB
C - - - - - 0x0037FE 00:F7EE: 68        PLA
C - - - - - 0x0037FF 00:F7EF: 85 FA     STA ram_00FA
C - - - - - 0x003801 00:F7F1: 4C 36 F6  JMP loc_F636



sub_F7F4:
C - - - - - 0x003804 00:F7F4: A5 F4     LDA ram_00F4
C - - - - - 0x003806 00:F7F6: C9 13     CMP #$13
C - - - - - 0x003808 00:F7F8: F0 10     BEQ bra_F80A_RTS
C - - - - - 0x00380A 00:F7FA: C9 14     CMP #$14
C - - - - - 0x00380C 00:F7FC: F0 0C     BEQ bra_F80A_RTS
C - - - - - 0x00380E 00:F7FE: 0A        ASL
C - - - - - 0x00380F 00:F7FF: AA        TAX
C - - - - - 0x003810 00:F800: BD 53 F8  LDA tbl_F853_sound_data,X
C - - - - - 0x003813 00:F803: 85 F2     STA ram_00F2
C - - - - - 0x003815 00:F805: BD 54 F8  LDA tbl_F853_sound_data + $01,X
C - - - - - 0x003818 00:F808: 85 F3     STA ram_00F3
bra_F80A_RTS:
C - - - - - 0x00381A 00:F80A: 60        RTS



sub_F80B_read_sound_data:
C - - - - - 0x00381B 00:F80B: A5 F4     LDA ram_00F4
C - - - - - 0x00381D 00:F80D: C9 13     CMP #$13
C - - - - - 0x00381F 00:F80F: F0 14     BEQ bra_F825_13
C - - - - - 0x003821 00:F811: C9 14     CMP #$14
C - - - - - 0x003823 00:F813: F0 1B     BEQ bra_F830_14
C - - - - - 0x003825 00:F815: A0 05     LDY #$05
C - - - - - 0x003827 00:F817: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x003829 00:F819: A8        TAY
C - - - - - 0x00382A 00:F81A: B1 F2     LDA (ram_00F2),Y
C - - - - - 0x00382C 00:F81C: 48        PHA
C - - - - - 0x00382D 00:F81D: C8        INY
C - - - - - 0x00382E 00:F81E: 98        TYA
C - - - - - 0x00382F 00:F81F: A0 05     LDY #$05
C - - - - - 0x003831 00:F821: 91 F0     STA (ram_00F0),Y
C - - - - - 0x003833 00:F823: 68        PLA
C - - - - - 0x003834 00:F824: 60        RTS
bra_F825_13:
C - - - - - 0x003835 00:F825: A0 00     LDY #$00
C - - - - - 0x003837 00:F827: B1 F8     LDA (ram_00F8),Y
C - - - - - 0x003839 00:F829: E6 F8     INC ram_00F8
C - - - - - 0x00383B 00:F82B: D0 02     BNE bra_F82F_RTS
C - - - - - 0x00383D 00:F82D: E6 F9     INC ram_00F9
bra_F82F_RTS:
C - - - - - 0x00383F 00:F82F: 60        RTS
bra_F830_14:
C - - - - - 0x003840 00:F830: A0 00     LDY #$00
C - - - - - 0x003842 00:F832: B1 FA     LDA (ram_00FA),Y
C - - - - - 0x003844 00:F834: E6 FA     INC ram_00FA
C - - - - - 0x003846 00:F836: D0 02     BNE bra_F83A_RTS
C - - - - - 0x003848 00:F838: E6 FB     INC ram_00FB
bra_F83A_RTS:
C - - - - - 0x00384A 00:F83A: 60        RTS



tbl_F83B:
; 00
- D 3 - - - 0x00384B 00:F83B: 07        .byte $07   ; 
- D 3 - - - 0x00384C 00:F83C: F2        .byte $F2   ; 
; 01
- D 3 - - - 0x00384D 00:F83D: 07        .byte $07   ; 
- D 3 - - - 0x00384E 00:F83E: 80        .byte $80   ; 
; 02
- D 3 - - - 0x00384F 00:F83F: 07        .byte $07   ; 
- D 3 - - - 0x003850 00:F840: 14        .byte $14   ; 
; 03
- D 3 - - - 0x003851 00:F841: 06        .byte $06   ; 
- D 3 - - - 0x003852 00:F842: AE        .byte $AE   ; 
; 04
- D 3 - - - 0x003853 00:F843: 06        .byte $06   ; 
- D 3 - - - 0x003854 00:F844: 43        .byte $43   ; 
; 05
- D 3 - - - 0x003855 00:F845: 05        .byte $05   ; 
- D 3 - - - 0x003856 00:F846: F4        .byte $F4   ; 
; 06
- D 3 - - - 0x003857 00:F847: 05        .byte $05   ; 
- D 3 - - - 0x003858 00:F848: 9E        .byte $9E   ; 
; 07
- D 3 - - - 0x003859 00:F849: 05        .byte $05   ; 
- D 3 - - - 0x00385A 00:F84A: 4E        .byte $4E   ; 
; 08
- D 3 - - - 0x00385B 00:F84B: 05        .byte $05   ; 
- D 3 - - - 0x00385C 00:F84C: 02        .byte $02   ; 
; 09
- D 3 - - - 0x00385D 00:F84D: 04        .byte $04   ; 
- D 3 - - - 0x00385E 00:F84E: BA        .byte $BA   ; 
; 0A
- D 3 - - - 0x00385F 00:F84F: 04        .byte $04   ; 
- D 3 - - - 0x003860 00:F850: 76        .byte $76   ; 
; 0B
- D 3 - - - 0x003861 00:F851: 04        .byte $04   ; 
- D 3 - - - 0x003862 00:F852: 36        .byte $36   ; 



tbl_F853_sound_data:
- D 3 - - - 0x003863 00:F853: 86 FE     .word _off006_FE86_00
- D 3 - - - 0x003865 00:F855: 92 FE     .word _off006_FE92_01
- D 3 - - - 0x003867 00:F857: 13 FB     .word _off006_FB13_02
- D 3 - - - 0x003869 00:F859: 2B FB     .word _off006_FB2B_03
- D 3 - - - 0x00386B 00:F85B: 3D FB     .word _off006_FB3D_04
- D 3 - - - 0x00386D 00:F85D: BA FD     .word _off006_FDBA_05
- D 3 - - - 0x00386F 00:F85F: A6 FD     .word _off006_FDA6_06
- D 3 - - - 0x003871 00:F861: 9F FD     .word _off006_FD9F_07
- D 3 - - - 0x003873 00:F863: 89 FD     .word _off006_FD89_08
- D 3 - - - 0x003875 00:F865: 64 FD     .word _off006_FD64_09
- D 3 - - - 0x003877 00:F867: 56 FD     .word _off006_FD56_0A
- D 3 - - - 0x003879 00:F869: 1A FD     .word _off006_FD1A_0B
- D 3 - - - 0x00387B 00:F86B: 38 FD     .word _off006_FD38_0C
- D 3 - - - 0x00387D 00:F86D: 47 FD     .word _off006_FD47_0D
- D 3 - - - 0x00387F 00:F86F: 55 FB     .word _off006_FB55_0E
- D 3 - - - 0x003881 00:F871: F5 FB     .word _off006_FBF5_0F
- D 3 - - - 0x003883 00:F873: 69 FC     .word _off006_FC69_10
- D 3 - - - 0x003885 00:F875: 5A FE     .word _off006_FE5A_11
- D 3 - - - 0x003887 00:F877: 72 FE     .word _off006_FE72_12
tbl_F879_13:
- D 3 - - - 0x003889 00:F879: B7 F8     .word _off006_F8B7_13
tbl_F87B_14:
- D 3 - - - 0x00388B 00:F87B: 14 FA     .word _off006_FA14_14
; continue of tbl_F853_sound_data
- D 3 - - - 0x00388D 00:F87D: C2 FD     .word _off006_FDC2_15
- D 3 - - - 0x00388F 00:F87F: F9 FD     .word _off006_FDF9_16
- D 3 - - - 0x003891 00:F881: 2A FE     .word _off006_FE2A_17
- D 3 - - - 0x003893 00:F883: 0D FF     .word _off006_FF0D_18



; sound engine control bytes (cb)
; handlers at 0x0036BC
con_cb_E8                               = $E8 ; 
; con_cb_E9                             = $E9 ; 
; con_cb_EA                             = $EA ; 
; con_cb_EB                             = $EB ; 
; con_cb_EC                             = $EC ; 
; con_cb_ED                             = $ED ; 
; con_cb_EE                             = $EE ; 
; con_cb_EF                             = $EF ; 
; con_cb_F0                             = $F0 ; 
; con_cb_F1                             = $F1 ; 
; con_cb_F2                             = $F2 ; 
; con_cb_F3                             = $F3 ; 
; con_cb_F4                             = $F4 ; 
; con_cb_F5                             = $F5 ; 
; con_cb_F6                             = $F6 ; 
; con_cb_F7                             = $F7 ; 
; con_cb_F8                             = $F8 ; 
; con_cb_F9                             = $F9 ; 



tbl_F885:
; bzk optimize, only 2 values = 01
- D 3 - - - 0x003895 00:F885: 00        .byte $00   ; 00
- D 3 - - - 0x003896 00:F886: 00        .byte $00   ; 01
- D 3 - - - 0x003897 00:F887: 00        .byte $00   ; 02
- D 3 - - - 0x003898 00:F888: 00        .byte $00   ; 03
- D 3 - - - 0x003899 00:F889: 00        .byte $00   ; 04
- D 3 - - - 0x00389A 00:F88A: 00        .byte $00   ; 05
- D 3 - - - 0x00389B 00:F88B: 00        .byte $00   ; 06
- D 3 - - - 0x00389C 00:F88C: 00        .byte $00   ; 07
- D 3 - - - 0x00389D 00:F88D: 01        .byte $01   ; 08
- D 3 - - - 0x00389E 00:F88E: 00        .byte $00   ; 09
- D 3 - - - 0x00389F 00:F88F: 01        .byte $01   ; 0A
- D 3 - - - 0x0038A0 00:F890: 00        .byte $00   ; 0B
- D 3 - - - 0x0038A1 00:F891: 00        .byte $00   ; 0C
- D 3 - - - 0x0038A2 00:F892: 00        .byte $00   ; 0D
- D 3 - - - 0x0038A3 00:F893: 00        .byte $00   ; 0E
- D 3 - - - 0x0038A4 00:F894: 00        .byte $00   ; 0F
- D 3 - - - 0x0038A5 00:F895: 00        .byte $00   ; 10
- D 3 - - - 0x0038A6 00:F896: 00        .byte $00   ; 11
- D 3 - - - 0x0038A7 00:F897: 00        .byte $00   ; 12
- D 3 - - - 0x0038A8 00:F898: 00        .byte $00   ; 13
- D 3 - - - 0x0038A9 00:F899: 00        .byte $00   ; 14
- D 3 - - - 0x0038AA 00:F89A: 00        .byte $00   ; 15
- D 3 - - - 0x0038AB 00:F89B: 00        .byte $00   ; 16
- D 3 - - - 0x0038AC 00:F89C: 00        .byte $00   ; 17
- D 3 - - - 0x0038AD 00:F89D: 00        .byte $00   ; 18



tbl_F89E:
; bzk optimize, only 2 values = 04
- D 3 - - - 0x0038AE 00:F89E: 01        .byte $01   ; 00
- D 3 - - - 0x0038AF 00:F89F: 01        .byte $01   ; 01
- D 3 - - - 0x0038B0 00:F8A0: 01        .byte $01   ; 02
- D 3 - - - 0x0038B1 00:F8A1: 01        .byte $01   ; 03
- D 3 - - - 0x0038B2 00:F8A2: 01        .byte $01   ; 04
- D 3 - - - 0x0038B3 00:F8A3: 01        .byte $01   ; 05
- D 3 - - - 0x0038B4 00:F8A4: 01        .byte $01   ; 06
- D 3 - - - 0x0038B5 00:F8A5: 01        .byte $01   ; 07
- D 3 - - - 0x0038B6 00:F8A6: 01        .byte $01   ; 08
- D 3 - - - 0x0038B7 00:F8A7: 01        .byte $01   ; 09
- D 3 - - - 0x0038B8 00:F8A8: 01        .byte $01   ; 0A
- D 3 - - - 0x0038B9 00:F8A9: 01        .byte $01   ; 0B
- D 3 - - - 0x0038BA 00:F8AA: 01        .byte $01   ; 0C
- D 3 - - - 0x0038BB 00:F8AB: 01        .byte $01   ; 0D
- D 3 - - - 0x0038BC 00:F8AC: 01        .byte $01   ; 0E
- D 3 - - - 0x0038BD 00:F8AD: 01        .byte $01   ; 0F
- D 3 - - - 0x0038BE 00:F8AE: 01        .byte $01   ; 10
- D 3 - - - 0x0038BF 00:F8AF: 01        .byte $01   ; 11
- D 3 - - - 0x0038C0 00:F8B0: 01        .byte $01   ; 12
- D 3 - - - 0x0038C1 00:F8B1: 04        .byte $04   ; 13
- D 3 - - - 0x0038C2 00:F8B2: 04        .byte $04   ; 14
- D 3 - - - 0x0038C3 00:F8B3: 01        .byte $01   ; 15
- D 3 - - - 0x0038C4 00:F8B4: 01        .byte $01   ; 16
- D 3 - - - 0x0038C5 00:F8B5: 01        .byte $01   ; 17
- D 3 - - - 0x0038C6 00:F8B6: 01        .byte $01   ; 18



_off006_F8B7_13:
- D 3 - I - 0x0038C7 00:F8B7: 01        .byte $01   ; 
- D 3 - I - 0x0038C8 00:F8B8: 03        .byte $03   ; 
- D 3 - I - 0x0038C9 00:F8B9: 7F        .byte $7F   ; 
- D 3 - I - 0x0038CA 00:F8BA: 40        .byte $40   ; 
- D 3 - I - 0x0038CB 00:F8BB: EF        .byte $EF   ; 
off_F9_F8BC:
off_F0_F8BC:
- D 3 - I - 0x0038CC 00:F8BC: 64        .byte $64   ; 
- D 3 - I - 0x0038CD 00:F8BD: 32        .byte $32   ; 
- D 3 - I - 0x0038CE 00:F8BE: 13        .byte $13   ; 
- D 3 - I - 0x0038CF 00:F8BF: 0B        .byte $0B   ; 
- D 3 - I - 0x0038D0 00:F8C0: 13        .byte $13   ; 
- D 3 - I - 0x0038D1 00:F8C1: EA        .byte $EA   ; 
- D 3 - I - 0x0038D2 00:F8C2: 20        .byte $20   ; 
- D 3 - I - 0x0038D3 00:F8C3: 67        .byte $67   ; 
- D 3 - I - 0x0038D4 00:F8C4: 1B        .byte $1B   ; 
- D 3 - I - 0x0038D5 00:F8C5: 69        .byte $69   ; 
- D 3 - I - 0x0038D6 00:F8C6: 13        .byte $13   ; 
- D 3 - I - 0x0038D7 00:F8C7: EA        .byte $EA   ; 
- D 3 - I - 0x0038D8 00:F8C8: 03        .byte $03   ; 
- D 3 - I - 0x0038D9 00:F8C9: 64        .byte $64   ; 
- D 3 - I - 0x0038DA 00:F8CA: 03        .byte $03   ; 
- D 3 - I - 0x0038DB 00:F8CB: 13        .byte $13   ; 
- D 3 - I - 0x0038DC 00:F8CC: 63        .byte $63   ; 
- D 3 - I - 0x0038DD 00:F8CD: 03        .byte $03   ; 
- D 3 - I - 0x0038DE 00:F8CE: 61        .byte $61   ; 
- D 3 - I - 0x0038DF 00:F8CF: 52        .byte $52   ; 
- D 3 - I - 0x0038E0 00:F8D0: 63        .byte $63   ; 
- D 3 - I - 0x0038E1 00:F8D1: 3A        .byte $3A   ; 
- D 3 - I - 0x0038E2 00:F8D2: EA        .byte $EA   ; 
- D 3 - I - 0x0038E3 00:F8D3: 20        .byte $20   ; 
- D 3 - I - 0x0038E4 00:F8D4: 71        .byte $71   ; 
- D 3 - I - 0x0038E5 00:F8D5: 03        .byte $03   ; 
- D 3 - I - 0x0038E6 00:F8D6: EA        .byte $EA   ; 
- D 3 - I - 0x0038E7 00:F8D7: 03        .byte $03   ; 
- D 3 - I - 0x0038E8 00:F8D8: 64        .byte $64   ; 
- D 3 - I - 0x0038E9 00:F8D9: 2A        .byte $2A   ; 
- D 3 - I - 0x0038EA 00:F8DA: 03        .byte $03   ; 
- D 3 - I - 0x0038EB 00:F8DB: 5A        .byte $5A   ; 
- D 3 - I - 0x0038EC 00:F8DC: 03        .byte $03   ; 
- D 3 - I - 0x0038ED 00:F8DD: EA        .byte $EA   ; 
- D 3 - I - 0x0038EE 00:F8DE: 20        .byte $20   ; 
- D 3 - I - 0x0038EF 00:F8DF: 67        .byte $67   ; 
- D 3 - I - 0x0038F0 00:F8E0: 13        .byte $13   ; 
- D 3 - I - 0x0038F1 00:F8E1: 69        .byte $69   ; 
- D 3 - I - 0x0038F2 00:F8E2: 03        .byte $03   ; 
- D 3 - I - 0x0038F3 00:F8E3: EA        .byte $EA   ; 
- D 3 - I - 0x0038F4 00:F8E4: 03        .byte $03   ; 
- D 3 - I - 0x0038F5 00:F8E5: 64        .byte $64   ; 
- D 3 - I - 0x0038F6 00:F8E6: 52        .byte $52   ; 
- D 3 - I - 0x0038F7 00:F8E7: 03        .byte $03   ; 
- D 3 - I - 0x0038F8 00:F8E8: 63        .byte $63   ; 
- D 3 - I - 0x0038F9 00:F8E9: 52        .byte $52   ; 
- D 3 - I - 0x0038FA 00:F8EA: 64        .byte $64   ; 
- D 3 - I - 0x0038FB 00:F8EB: 3A        .byte $3A   ; 
- D 3 - I - 0x0038FC 00:F8EC: EA        .byte $EA   ; 
- D 3 - I - 0x0038FD 00:F8ED: 20        .byte $20   ; 
- D 3 - I - 0x0038FE 00:F8EE: 71        .byte $71   ; 
- D 3 - I - 0x0038FF 00:F8EF: 2A        .byte $2A   ; 
- D 3 - I - 0x003900 00:F8F0: EA        .byte $EA   ; 
- D 3 - I - 0x003901 00:F8F1: 03        .byte $03   ; 
- D 3 - I - 0x003902 00:F8F2: 63        .byte $63   ; 
- D 3 - I - 0x003903 00:F8F3: 12        .byte $12   ; 
- D 3 - I - 0x003904 00:F8F4: 61        .byte $61   ; 
- D 3 - I - 0x003905 00:F8F5: 2A        .byte $2A   ; 
- D 3 - I - 0x003906 00:F8F6: 63        .byte $63   ; 
- D 3 - I - 0x003907 00:F8F7: 52        .byte $52   ; 
- D 3 - I - 0x003908 00:F8F8: 61        .byte $61   ; 
- D 3 - I - 0x003909 00:F8F9: 12        .byte $12   ; 
- D 3 - I - 0x00390A 00:F8FA: 63        .byte $63   ; 
- D 3 - I - 0x00390B 00:F8FB: 2A        .byte $2A   ; 
- D 3 - I - 0x00390C 00:F8FC: 61        .byte $61   ; 
- D 3 - I - 0x00390D 00:F8FD: 52        .byte $52   ; 
- D 3 - I - 0x00390E 00:F8FE: 63        .byte $63   ; 
- D 3 - I - 0x00390F 00:F8FF: 12        .byte $12   ; 
- D 3 - I - 0x003910 00:F900: 61        .byte $61   ; 
- D 3 - I - 0x003911 00:F901: 52        .byte $52   ; 
- D 3 - I - 0x003912 00:F902: 63        .byte $63   ; 
- D 3 - I - 0x003913 00:F903: 1A        .byte $1A   ; 
- D 3 - I - 0x003914 00:F904: 61        .byte $61   ; 
- D 3 - I - 0x003915 00:F905: 3A        .byte $3A   ; 
- D 3 - I - 0x003916 00:F906: 63        .byte $63   ; 
- D 3 - I - 0x003917 00:F907: 52        .byte $52   ; 
- D 3 - I - 0x003918 00:F908: 61        .byte $61   ; 
- D 3 - I - 0x003919 00:F909: 22        .byte $22   ; 
- D 3 - I - 0x00391A 00:F90A: 63        .byte $63   ; 
- D 3 - I - 0x00391B 00:F90B: 3A        .byte $3A   ; 
- D 3 - I - 0x00391C 00:F90C: 61        .byte $61   ; 
- D 3 - I - 0x00391D 00:F90D: 52        .byte $52   ; 
- D 3 - I - 0x00391E 00:F90E: 63        .byte $63   ; 
- D 3 - I - 0x00391F 00:F90F: 22        .byte $22   ; 
- D 3 - I - 0x003920 00:F910: 61        .byte $61   ; 
- D 3 - I - 0x003921 00:F911: 52        .byte $52   ; 
- D 3 - I - 0x003922 00:F912: F6        .byte $F6   ; 
- D 3 - I - 0x003923 00:F913: 04        .byte $04   ; 
- D 3 - I - 0x003924 00:F914: FE F9     .word off_F6_F9FE
- D 3 - I - 0x003926 00:F916: 64        .byte $64   ; 
- D 3 - I - 0x003927 00:F917: 60        .byte $60   ; 
- D 3 - I - 0x003928 00:F918: 63        .byte $63   ; 
- D 3 - I - 0x003929 00:F919: 13        .byte $13   ; 
- D 3 - I - 0x00392A 00:F91A: 61        .byte $61   ; 
- D 3 - I - 0x00392B 00:F91B: 0B        .byte $0B   ; 
- D 3 - I - 0x00392C 00:F91C: 64        .byte $64   ; 
- D 3 - I - 0x00392D 00:F91D: 03        .byte $03   ; 
- D 3 - I - 0x00392E 00:F91E: 63        .byte $63   ; 
- D 3 - I - 0x00392F 00:F91F: 2A        .byte $2A   ; 
- D 3 - I - 0x003930 00:F920: 65        .byte $65   ; 
- D 3 - I - 0x003931 00:F921: 52        .byte $52   ; 
- D 3 - I - 0x003932 00:F922: 64        .byte $64   ; 
- D 3 - I - 0x003933 00:F923: 52        .byte $52   ; 
- D 3 - I - 0x003934 00:F924: 4A        .byte $4A   ; 
- D 3 - I - 0x003935 00:F925: 3A        .byte $3A   ; 
- D 3 - I - 0x003936 00:F926: F3        .byte $F3   ; 
- D 3 - I - 0x003937 00:F927: 03        .byte $03   ; 
- D 3 - I - 0x003938 00:F928: 97 F9     .word off_F3_F997
- D 3 - I - 0x00393A 00:F92A: F0        .byte $F0   ; 
- D 3 - I - 0x00393B 00:F92B: 02        .byte $02   ; 
- D 3 - I - 0x00393C 00:F92C: BC F8     .word off_F0_F8BC
off_F0_F92E:
- D 3 - I - 0x00393E 00:F92E: 63        .byte $63   ; 
- D 3 - I - 0x00393F 00:F92F: 12        .byte $12   ; 
- D 3 - I - 0x003940 00:F930: 61        .byte $61   ; 
- D 3 - I - 0x003941 00:F931: 4A        .byte $4A   ; 
- D 3 - I - 0x003942 00:F932: 63        .byte $63   ; 
- D 3 - I - 0x003943 00:F933: 32        .byte $32   ; 
- D 3 - I - 0x003944 00:F934: 61        .byte $61   ; 
- D 3 - I - 0x003945 00:F935: 12        .byte $12   ; 
- D 3 - I - 0x003946 00:F936: 63        .byte $63   ; 
- D 3 - I - 0x003947 00:F937: 4A        .byte $4A   ; 
- D 3 - I - 0x003948 00:F938: 61        .byte $61   ; 
- D 3 - I - 0x003949 00:F939: 32        .byte $32   ; 
- D 3 - I - 0x00394A 00:F93A: F0        .byte $F0   ; 
- D 3 - I - 0x00394B 00:F93B: 05        .byte $05   ; 
- D 3 - I - 0x00394C 00:F93C: 2E F9     .word off_F0_F92E
- D 3 - I - 0x00394E 00:F93E: 63        .byte $63   ; 
- D 3 - I - 0x00394F 00:F93F: 12        .byte $12   ; 
- D 3 - I - 0x003950 00:F940: 61        .byte $61   ; 
- D 3 - I - 0x003951 00:F941: 4A        .byte $4A   ; 
off_F0_F942:
- D 3 - I - 0x003952 00:F942: 63        .byte $63   ; 
- D 3 - I - 0x003953 00:F943: 02        .byte $02   ; 
- D 3 - I - 0x003954 00:F944: 61        .byte $61   ; 
- D 3 - I - 0x003955 00:F945: 3A        .byte $3A   ; 
- D 3 - I - 0x003956 00:F946: 63        .byte $63   ; 
- D 3 - I - 0x003957 00:F947: 22        .byte $22   ; 
- D 3 - I - 0x003958 00:F948: 61        .byte $61   ; 
- D 3 - I - 0x003959 00:F949: 02        .byte $02   ; 
- D 3 - I - 0x00395A 00:F94A: 63        .byte $63   ; 
- D 3 - I - 0x00395B 00:F94B: 3A        .byte $3A   ; 
- D 3 - I - 0x00395C 00:F94C: 61        .byte $61   ; 
- D 3 - I - 0x00395D 00:F94D: 22        .byte $22   ; 
- D 3 - I - 0x00395E 00:F94E: F0        .byte $F0   ; 
- D 3 - I - 0x00395F 00:F94F: 05        .byte $05   ; 
- D 3 - I - 0x003960 00:F950: 42 F9     .word off_F0_F942
- D 3 - I - 0x003962 00:F952: 64        .byte $64   ; 
- D 3 - I - 0x003963 00:F953: 02        .byte $02   ; 
off_F9_F954:
- D 3 - I - 0x003964 00:F954: 63        .byte $63   ; 
- D 3 - I - 0x003965 00:F955: 51        .byte $51   ; 
- D 3 - I - 0x003966 00:F956: 61        .byte $61   ; 
- D 3 - I - 0x003967 00:F957: 02        .byte $02   ; 
- D 3 - I - 0x003968 00:F958: 63        .byte $63   ; 
- D 3 - I - 0x003969 00:F959: 12        .byte $12   ; 
- D 3 - I - 0x00396A 00:F95A: 61        .byte $61   ; 
- D 3 - I - 0x00396B 00:F95B: 51        .byte $51   ; 
- D 3 - I - 0x00396C 00:F95C: 63        .byte $63   ; 
- D 3 - I - 0x00396D 00:F95D: 02        .byte $02   ; 
- D 3 - I - 0x00396E 00:F95E: 61        .byte $61   ; 
- D 3 - I - 0x00396F 00:F95F: 12        .byte $12   ; 
- D 3 - I - 0x003970 00:F960: 63        .byte $63   ; 
- D 3 - I - 0x003971 00:F961: 1A        .byte $1A   ; 
- D 3 - I - 0x003972 00:F962: 61        .byte $61   ; 
- D 3 - I - 0x003973 00:F963: 02        .byte $02   ; 
- D 3 - I - 0x003974 00:F964: 63        .byte $63   ; 
- D 3 - I - 0x003975 00:F965: 12        .byte $12   ; 
- D 3 - I - 0x003976 00:F966: 61        .byte $61   ; 
- D 3 - I - 0x003977 00:F967: 1A        .byte $1A   ; 
- D 3 - I - 0x003978 00:F968: 63        .byte $63   ; 
- D 3 - I - 0x003979 00:F969: 2A        .byte $2A   ; 
- D 3 - I - 0x00397A 00:F96A: 61        .byte $61   ; 
- D 3 - I - 0x00397B 00:F96B: 12        .byte $12   ; 
- D 3 - I - 0x00397C 00:F96C: 63        .byte $63   ; 
- D 3 - I - 0x00397D 00:F96D: 1A        .byte $1A   ; 
- D 3 - I - 0x00397E 00:F96E: 61        .byte $61   ; 
- D 3 - I - 0x00397F 00:F96F: 2A        .byte $2A   ; 
- D 3 - I - 0x003980 00:F970: 63        .byte $63   ; 
- D 3 - I - 0x003981 00:F971: 3A        .byte $3A   ; 
- D 3 - I - 0x003982 00:F972: 61        .byte $61   ; 
- D 3 - I - 0x003983 00:F973: 1A        .byte $1A   ; 
- D 3 - I - 0x003984 00:F974: 63        .byte $63   ; 
- D 3 - I - 0x003985 00:F975: 2A        .byte $2A   ; 
- D 3 - I - 0x003986 00:F976: 61        .byte $61   ; 
- D 3 - I - 0x003987 00:F977: 3A        .byte $3A   ; 
- D 3 - I - 0x003988 00:F978: 63        .byte $63   ; 
- D 3 - I - 0x003989 00:F979: 4A        .byte $4A   ; 
- D 3 - I - 0x00398A 00:F97A: 61        .byte $61   ; 
- D 3 - I - 0x00398B 00:F97B: 2A        .byte $2A   ; 
- D 3 - I - 0x00398C 00:F97C: 63        .byte $63   ; 
- D 3 - I - 0x00398D 00:F97D: 3A        .byte $3A   ; 
- D 3 - I - 0x00398E 00:F97E: 61        .byte $61   ; 
- D 3 - I - 0x00398F 00:F97F: 4A        .byte $4A   ; 
- D 3 - I - 0x003990 00:F980: 63        .byte $63   ; 
- D 3 - I - 0x003991 00:F981: 52        .byte $52   ; 
- D 3 - I - 0x003992 00:F982: 61        .byte $61   ; 
- D 3 - I - 0x003993 00:F983: 03        .byte $03   ; 
- D 3 - I - 0x003994 00:F984: 64        .byte $64   ; 
- D 3 - I - 0x003995 00:F985: 13        .byte $13   ; 
- D 3 - I - 0x003996 00:F986: 63        .byte $63   ; 
- D 3 - I - 0x003997 00:F987: 0B        .byte $0B   ; 
- D 3 - I - 0x003998 00:F988: 61        .byte $61   ; 
- D 3 - I - 0x003999 00:F989: 13        .byte $13   ; 
- D 3 - I - 0x00399A 00:F98A: 63        .byte $63   ; 
- D 3 - I - 0x00399B 00:F98B: 0B        .byte $0B   ; 
- D 3 - I - 0x00399C 00:F98C: 61        .byte $61   ; 
- D 3 - I - 0x00399D 00:F98D: 13        .byte $13   ; 
- D 3 - I - 0x00399E 00:F98E: 63        .byte $63   ; 
- D 3 - I - 0x00399F 00:F98F: 0B        .byte $0B   ; 
- D 3 - I - 0x0039A0 00:F990: 61        .byte $61   ; 
- D 3 - I - 0x0039A1 00:F991: 13        .byte $13   ; 
- D 3 - I - 0x0039A2 00:F992: F0        .byte $F0   ; 
- D 3 - I - 0x0039A3 00:F993: 02        .byte $02   ; 
- D 3 - I - 0x0039A4 00:F994: BC F8     .word off_F0_F8BC
- D 3 - I - 0x0039A6 00:F996: E8        .byte $E8   ; 
off_F9_F997:
off_F3_F997:
- D 3 - I - 0x0039A7 00:F997: 64        .byte $64   ; 
- D 3 - I - 0x0039A8 00:F998: 60        .byte $60   ; 
- D 3 - I - 0x0039A9 00:F999: 13        .byte $13   ; 
- D 3 - I - 0x0039AA 00:F99A: 0B        .byte $0B   ; 
- D 3 - I - 0x0039AB 00:F99B: 13        .byte $13   ; 
- D 3 - I - 0x0039AC 00:F99C: 1B        .byte $1B   ; 
- D 3 - I - 0x0039AD 00:F99D: 13        .byte $13   ; 
- D 3 - I - 0x0039AE 00:F99E: 0B        .byte $0B   ; 
- D 3 - I - 0x0039AF 00:F99F: 13        .byte $13   ; 
- D 3 - I - 0x0039B0 00:F9A0: F3        .byte $F3   ; 
- D 3 - I - 0x0039B1 00:F9A1: 02        .byte $02   ; 
- D 3 - I - 0x0039B2 00:F9A2: C6 F9     .word off_F3_F9C6
- D 3 - I - 0x0039B4 00:F9A4: 64        .byte $64   ; 
- D 3 - I - 0x0039B5 00:F9A5: 3A        .byte $3A   ; 
- D 3 - I - 0x0039B6 00:F9A6: 4B        .byte $4B   ; 
- D 3 - I - 0x0039B7 00:F9A7: 3B        .byte $3B   ; 
- D 3 - I - 0x0039B8 00:F9A8: 13        .byte $13   ; 
- D 3 - I - 0x0039B9 00:F9A9: EA        .byte $EA   ; 
- D 3 - I - 0x0039BA 00:F9AA: 0F        .byte $0F   ; 
- D 3 - I - 0x0039BB 00:F9AB: 70        .byte $70   ; 
- D 3 - I - 0x0039BC 00:F9AC: 52        .byte $52   ; 
- D 3 - I - 0x0039BD 00:F9AD: EA        .byte $EA   ; 
- D 3 - I - 0x0039BE 00:F9AE: 03        .byte $03   ; 
- D 3 - I - 0x0039BF 00:F9AF: 64        .byte $64   ; 
- D 3 - I - 0x0039C0 00:F9B0: 60        .byte $60   ; 
- D 3 - I - 0x0039C1 00:F9B1: 03        .byte $03   ; 
- D 3 - I - 0x0039C2 00:F9B2: 5A        .byte $5A   ; 
- D 3 - I - 0x0039C3 00:F9B3: 03        .byte $03   ; 
- D 3 - I - 0x0039C4 00:F9B4: 13        .byte $13   ; 
- D 3 - I - 0x0039C5 00:F9B5: 03        .byte $03   ; 
- D 3 - I - 0x0039C6 00:F9B6: 13        .byte $13   ; 
- D 3 - I - 0x0039C7 00:F9B7: 23        .byte $23   ; 
- D 3 - I - 0x0039C8 00:F9B8: 2A        .byte $2A   ; 
- D 3 - I - 0x0039C9 00:F9B9: 2B        .byte $2B   ; 
- D 3 - I - 0x0039CA 00:F9BA: 1B        .byte $1B   ; 
- D 3 - I - 0x0039CB 00:F9BB: 13        .byte $13   ; 
- D 3 - I - 0x0039CC 00:F9BC: 68        .byte $68   ; 
- D 3 - I - 0x0039CD 00:F9BD: 03        .byte $03   ; 
- D 3 - I - 0x0039CE 00:F9BE: EA        .byte $EA   ; 
- D 3 - I - 0x0039CF 00:F9BF: 0D        .byte $0D   ; 
- D 3 - I - 0x0039D0 00:F9C0: 0B        .byte $0B   ; 
- D 3 - I - 0x0039D1 00:F9C1: EA        .byte $EA   ; 
- D 3 - I - 0x0039D2 00:F9C2: 03        .byte $03   ; 
- D 3 - I - 0x0039D3 00:F9C3: F9        .byte $F9   ; 
- D 3 - I - 0x0039D4 00:F9C4: 97 F9     .word off_F9_F997
off_F3_F9C6:
- D 3 - I - 0x0039D6 00:F9C6: 64        .byte $64   ; 
- D 3 - I - 0x0039D7 00:F9C7: 60        .byte $60   ; 
- D 3 - I - 0x0039D8 00:F9C8: 52        .byte $52   ; 
- D 3 - I - 0x0039D9 00:F9C9: 13        .byte $13   ; 
- D 3 - I - 0x0039DA 00:F9CA: 2B        .byte $2B   ; 
- D 3 - I - 0x0039DB 00:F9CB: 63        .byte $63   ; 
- D 3 - I - 0x0039DC 00:F9CC: 4B        .byte $4B   ; 
- D 3 - I - 0x0039DD 00:F9CD: 61        .byte $61   ; 
- D 3 - I - 0x0039DE 00:F9CE: 3B        .byte $3B   ; 
- D 3 - I - 0x0039DF 00:F9CF: 63        .byte $63   ; 
- D 3 - I - 0x0039E0 00:F9D0: 4B        .byte $4B   ; 
- D 3 - I - 0x0039E1 00:F9D1: 64        .byte $64   ; 
- D 3 - I - 0x0039E2 00:F9D2: 3B        .byte $3B   ; 
- D 3 - I - 0x0039E3 00:F9D3: 61        .byte $61   ; 
- D 3 - I - 0x0039E4 00:F9D4: 3B        .byte $3B   ; 
- D 3 - I - 0x0039E5 00:F9D5: 63        .byte $63   ; 
- D 3 - I - 0x0039E6 00:F9D6: 33        .byte $33   ; 
- D 3 - I - 0x0039E7 00:F9D7: 65        .byte $65   ; 
- D 3 - I - 0x0039E8 00:F9D8: 3B        .byte $3B   ; 
- D 3 - I - 0x0039E9 00:F9D9: EA        .byte $EA   ; 
- D 3 - I - 0x0039EA 00:F9DA: 3C        .byte $3C   ; 
- D 3 - I - 0x0039EB 00:F9DB: 68        .byte $68   ; 
- D 3 - I - 0x0039EC 00:F9DC: 53        .byte $53   ; 
- D 3 - I - 0x0039ED 00:F9DD: EA        .byte $EA   ; 
- D 3 - I - 0x0039EE 00:F9DE: 03        .byte $03   ; 
- D 3 - I - 0x0039EF 00:F9DF: 63        .byte $63   ; 
- D 3 - I - 0x0039F0 00:F9E0: 3B        .byte $3B   ; 
- D 3 - I - 0x0039F1 00:F9E1: 61        .byte $61   ; 
- D 3 - I - 0x0039F2 00:F9E2: 13        .byte $13   ; 
- D 3 - I - 0x0039F3 00:F9E3: 63        .byte $63   ; 
- D 3 - I - 0x0039F4 00:F9E4: 2B        .byte $2B   ; 
- D 3 - I - 0x0039F5 00:F9E5: 61        .byte $61   ; 
- D 3 - I - 0x0039F6 00:F9E6: 3B        .byte $3B   ; 
- D 3 - I - 0x0039F7 00:F9E7: 63        .byte $63   ; 
- D 3 - I - 0x0039F8 00:F9E8: 13        .byte $13   ; 
- D 3 - I - 0x0039F9 00:F9E9: 61        .byte $61   ; 
- D 3 - I - 0x0039FA 00:F9EA: 2B        .byte $2B   ; 
- D 3 - I - 0x0039FB 00:F9EB: 63        .byte $63   ; 
- D 3 - I - 0x0039FC 00:F9EC: 3B        .byte $3B   ; 
- D 3 - I - 0x0039FD 00:F9ED: 61        .byte $61   ; 
- D 3 - I - 0x0039FE 00:F9EE: 0B        .byte $0B   ; 
- D 3 - I - 0x0039FF 00:F9EF: 63        .byte $63   ; 
- D 3 - I - 0x003A00 00:F9F0: 13        .byte $13   ; 
- D 3 - I - 0x003A01 00:F9F1: 65        .byte $65   ; 
- D 3 - I - 0x003A02 00:F9F2: 52        .byte $52   ; 
- D 3 - I - 0x003A03 00:F9F3: 64        .byte $64   ; 
- D 3 - I - 0x003A04 00:F9F4: 4A        .byte $4A   ; 
- D 3 - I - 0x003A05 00:F9F5: 3A        .byte $3A   ; 
- D 3 - I - 0x003A06 00:F9F6: 2A        .byte $2A   ; 
- D 3 - I - 0x003A07 00:F9F7: 67        .byte $67   ; 
- D 3 - I - 0x003A08 00:F9F8: 52        .byte $52   ; 
- D 3 - I - 0x003A09 00:F9F9: 69        .byte $69   ; 
- D 3 - I - 0x003A0A 00:F9FA: 52        .byte $52   ; 
- D 3 - I - 0x003A0B 00:F9FB: F9        .byte $F9   ; 
- D 3 - I - 0x003A0C 00:F9FC: BC F8     .word off_F9_F8BC
off_F6_F9FE:
- D 3 - I - 0x003A0E 00:F9FE: 63        .byte $63   ; 
- D 3 - I - 0x003A0F 00:F9FF: 52        .byte $52   ; 
- D 3 - I - 0x003A10 00:FA00: 61        .byte $61   ; 
- D 3 - I - 0x003A11 00:FA01: 03        .byte $03   ; 
- D 3 - I - 0x003A12 00:FA02: 63        .byte $63   ; 
- D 3 - I - 0x003A13 00:FA03: 13        .byte $13   ; 
- D 3 - I - 0x003A14 00:FA04: 61        .byte $61   ; 
- D 3 - I - 0x003A15 00:FA05: 52        .byte $52   ; 
- D 3 - I - 0x003A16 00:FA06: 64        .byte $64   ; 
- D 3 - I - 0x003A17 00:FA07: 3A        .byte $3A   ; 
- D 3 - I - 0x003A18 00:FA08: 2A        .byte $2A   ; 
- D 3 - I - 0x003A19 00:FA09: 63        .byte $63   ; 
- D 3 - I - 0x003A1A 00:FA0A: 2A        .byte $2A   ; 
- D 3 - I - 0x003A1B 00:FA0B: 61        .byte $61   ; 
- D 3 - I - 0x003A1C 00:FA0C: 3A        .byte $3A   ; 
- D 3 - I - 0x003A1D 00:FA0D: 64        .byte $64   ; 
- D 3 - I - 0x003A1E 00:FA0E: 4A        .byte $4A   ; 
- D 3 - I - 0x003A1F 00:FA0F: 68        .byte $68   ; 
- D 3 - I - 0x003A20 00:FA10: 52        .byte $52   ; 
- D 3 - I - 0x003A21 00:FA11: F9        .byte $F9   ; 
- D 3 - I - 0x003A22 00:FA12: 54 F9     .word off_F9_F954



_off006_FA14_14:
- D 3 - I - 0x003A24 00:FA14: 03        .byte $03   ; 
- D 3 - I - 0x003A25 00:FA15: 23        .byte $23   ; 
- D 3 - I - 0x003A26 00:FA16: 7F        .byte $7F   ; 
- D 3 - I - 0x003A27 00:FA17: 08        .byte $08   ; 
off_F2_FA18:
off_F9_FA18:
- D 3 - I - 0x003A28 00:FA18: 68        .byte $68   ; 
- D 3 - I - 0x003A29 00:FA19: 3A        .byte $3A   ; 
- D 3 - I - 0x003A2A 00:FA1A: 67        .byte $67   ; 
- D 3 - I - 0x003A2B 00:FA1B: 12        .byte $12   ; 
- D 3 - I - 0x003A2C 00:FA1C: 64        .byte $64   ; 
- D 3 - I - 0x003A2D 00:FA1D: 3A        .byte $3A   ; 
- D 3 - I - 0x003A2E 00:FA1E: 61        .byte $61   ; 
- D 3 - I - 0x003A2F 00:FA1F: 3A        .byte $3A   ; 
- D 3 - I - 0x003A30 00:FA20: 64        .byte $64   ; 
- D 3 - I - 0x003A31 00:FA21: 12        .byte $12   ; 
- D 3 - I - 0x003A32 00:FA22: 63        .byte $63   ; 
- D 3 - I - 0x003A33 00:FA23: 3A        .byte $3A   ; 
- D 3 - I - 0x003A34 00:FA24: 61        .byte $61   ; 
- D 3 - I - 0x003A35 00:FA25: 4A        .byte $4A   ; 
- D 3 - I - 0x003A36 00:FA26: 64        .byte $64   ; 
- D 3 - I - 0x003A37 00:FA27: 5A        .byte $5A   ; 
- D 3 - I - 0x003A38 00:FA28: 68        .byte $68   ; 
- D 3 - I - 0x003A39 00:FA29: 03        .byte $03   ; 
- D 3 - I - 0x003A3A 00:FA2A: 67        .byte $67   ; 
- D 3 - I - 0x003A3B 00:FA2B: 3A        .byte $3A   ; 
- D 3 - I - 0x003A3C 00:FA2C: 64        .byte $64   ; 
- D 3 - I - 0x003A3D 00:FA2D: 03        .byte $03   ; 
- D 3 - I - 0x003A3E 00:FA2E: 61        .byte $61   ; 
- D 3 - I - 0x003A3F 00:FA2F: 03        .byte $03   ; 
- D 3 - I - 0x003A40 00:FA30: 64        .byte $64   ; 
- D 3 - I - 0x003A41 00:FA31: 52        .byte $52   ; 
- D 3 - I - 0x003A42 00:FA32: 4A        .byte $4A   ; 
- D 3 - I - 0x003A43 00:FA33: 3A        .byte $3A   ; 
- D 3 - I - 0x003A44 00:FA34: 68        .byte $68   ; 
- D 3 - I - 0x003A45 00:FA35: 2A        .byte $2A   ; 
- D 3 - I - 0x003A46 00:FA36: 67        .byte $67   ; 
- D 3 - I - 0x003A47 00:FA37: 02        .byte $02   ; 
- D 3 - I - 0x003A48 00:FA38: 64        .byte $64   ; 
- D 3 - I - 0x003A49 00:FA39: 2A        .byte $2A   ; 
- D 3 - I - 0x003A4A 00:FA3A: 61        .byte $61   ; 
- D 3 - I - 0x003A4B 00:FA3B: 2A        .byte $2A   ; 
- D 3 - I - 0x003A4C 00:FA3C: 64        .byte $64   ; 
- D 3 - I - 0x003A4D 00:FA3D: 02        .byte $02   ; 
- D 3 - I - 0x003A4E 00:FA3E: 63        .byte $63   ; 
- D 3 - I - 0x003A4F 00:FA3F: 2A        .byte $2A   ; 
- D 3 - I - 0x003A50 00:FA40: 61        .byte $61   ; 
- D 3 - I - 0x003A51 00:FA41: 3A        .byte $3A   ; 
- D 3 - I - 0x003A52 00:FA42: 64        .byte $64   ; 
- D 3 - I - 0x003A53 00:FA43: 4A        .byte $4A   ; 
- D 3 - I - 0x003A54 00:FA44: 68        .byte $68   ; 
- D 3 - I - 0x003A55 00:FA45: 52        .byte $52   ; 
- D 3 - I - 0x003A56 00:FA46: 67        .byte $67   ; 
- D 3 - I - 0x003A57 00:FA47: 2A        .byte $2A   ; 
- D 3 - I - 0x003A58 00:FA48: 64        .byte $64   ; 
- D 3 - I - 0x003A59 00:FA49: 52        .byte $52   ; 
- D 3 - I - 0x003A5A 00:FA4A: 61        .byte $61   ; 
- D 3 - I - 0x003A5B 00:FA4B: 52        .byte $52   ; 
- D 3 - I - 0x003A5C 00:FA4C: 64        .byte $64   ; 
- D 3 - I - 0x003A5D 00:FA4D: 2A        .byte $2A   ; 
- D 3 - I - 0x003A5E 00:FA4E: 22        .byte $22   ; 
- D 3 - I - 0x003A5F 00:FA4F: 1A        .byte $1A   ; 
- D 3 - I - 0x003A60 00:FA50: 51        .byte $51   ; 
- D 3 - I - 0x003A61 00:FA51: 52        .byte $52   ; 
- D 3 - I - 0x003A62 00:FA52: 51        .byte $51   ; 
- D 3 - I - 0x003A63 00:FA53: 52        .byte $52   ; 
- D 3 - I - 0x003A64 00:FA54: 02        .byte $02   ; 
- D 3 - I - 0x003A65 00:FA55: 03        .byte $03   ; 
- D 3 - I - 0x003A66 00:FA56: 0A        .byte $0A   ; 
- D 3 - I - 0x003A67 00:FA57: 0B        .byte $0B   ; 
- D 3 - I - 0x003A68 00:FA58: F8        .byte $F8   ; 
- D 3 - I - 0x003A69 00:FA59: 04        .byte $04   ; 
- D 3 - I - 0x003A6A 00:FA5A: 0A FB     .word off_F8_FB0A
- D 3 - I - 0x003A6C 00:FA5C: 74        .byte $74   ; 
- D 3 - I - 0x003A6D 00:FA5D: 12        .byte $12   ; 
- D 3 - I - 0x003A6E 00:FA5E: 64        .byte $64   ; 
- D 3 - I - 0x003A6F 00:FA5F: 52        .byte $52   ; 
- D 3 - I - 0x003A70 00:FA60: 03        .byte $03   ; 
- D 3 - I - 0x003A71 00:FA61: 0B        .byte $0B   ; 
- D 3 - I - 0x003A72 00:FA62: F5        .byte $F5   ; 
- D 3 - I - 0x003A73 00:FA63: 03        .byte $03   ; 
- D 3 - I - 0x003A74 00:FA64: AA FA     .word off_F5_FAAA
- D 3 - I - 0x003A76 00:FA66: F2        .byte $F2   ; 
- D 3 - I - 0x003A77 00:FA67: 02        .byte $02   ; 
- D 3 - I - 0x003A78 00:FA68: 18 FA     .word off_F2_FA18
- D 3 - I - 0x003A7A 00:FA6A: EE        .byte $EE   ; 
- D 3 - I - 0x003A7B 00:FA6B: 7F        .byte $7F   ; 
- D 3 - I - 0x003A7C 00:FA6C: 68        .byte $68   ; 
- D 3 - I - 0x003A7D 00:FA6D: 12        .byte $12   ; 
- D 3 - I - 0x003A7E 00:FA6E: 66        .byte $66   ; 
- D 3 - I - 0x003A7F 00:FA6F: 32        .byte $32   ; 
- D 3 - I - 0x003A80 00:FA70: 62        .byte $62   ; 
- D 3 - I - 0x003A81 00:FA71: 4A        .byte $4A   ; 
- D 3 - I - 0x003A82 00:FA72: 64        .byte $64   ; 
- D 3 - I - 0x003A83 00:FA73: 5A        .byte $5A   ; 
- D 3 - I - 0x003A84 00:FA74: 68        .byte $68   ; 
- D 3 - I - 0x003A85 00:FA75: 13        .byte $13   ; 
- D 3 - I - 0x003A86 00:FA76: 64        .byte $64   ; 
- D 3 - I - 0x003A87 00:FA77: 5A        .byte $5A   ; 
- D 3 - I - 0x003A88 00:FA78: 68        .byte $68   ; 
- D 3 - I - 0x003A89 00:FA79: 4A        .byte $4A   ; 
- D 3 - I - 0x003A8A 00:FA7A: 5A        .byte $5A   ; 
- D 3 - I - 0x003A8B 00:FA7B: 64        .byte $64   ; 
- D 3 - I - 0x003A8C 00:FA7C: 32        .byte $32   ; 
- D 3 - I - 0x003A8D 00:FA7D: 6C        .byte $6C   ; 
- D 3 - I - 0x003A8E 00:FA7E: 4A        .byte $4A   ; 
- D 3 - I - 0x003A8F 00:FA7F: 68        .byte $68   ; 
- D 3 - I - 0x003A90 00:FA80: 02        .byte $02   ; 
- D 3 - I - 0x003A91 00:FA81: 66        .byte $66   ; 
- D 3 - I - 0x003A92 00:FA82: 22        .byte $22   ; 
- D 3 - I - 0x003A93 00:FA83: 62        .byte $62   ; 
- D 3 - I - 0x003A94 00:FA84: 3A        .byte $3A   ; 
- D 3 - I - 0x003A95 00:FA85: 64        .byte $64   ; 
- D 3 - I - 0x003A96 00:FA86: 4A        .byte $4A   ; 
- D 3 - I - 0x003A97 00:FA87: 68        .byte $68   ; 
- D 3 - I - 0x003A98 00:FA88: 03        .byte $03   ; 
- D 3 - I - 0x003A99 00:FA89: 64        .byte $64   ; 
- D 3 - I - 0x003A9A 00:FA8A: 4A        .byte $4A   ; 
- D 3 - I - 0x003A9B 00:FA8B: 68        .byte $68   ; 
- D 3 - I - 0x003A9C 00:FA8C: 3A        .byte $3A   ; 
- D 3 - I - 0x003A9D 00:FA8D: 4A        .byte $4A   ; 
- D 3 - I - 0x003A9E 00:FA8E: 64        .byte $64   ; 
- D 3 - I - 0x003A9F 00:FA8F: 22        .byte $22   ; 
- D 3 - I - 0x003AA0 00:FA90: 6C        .byte $6C   ; 
- D 3 - I - 0x003AA1 00:FA91: 3A        .byte $3A   ; 
- D 3 - I - 0x003AA2 00:FA92: EE        .byte $EE   ; 
- D 3 - I - 0x003AA3 00:FA93: 23        .byte $23   ; 
off_F9_FA94:
- D 3 - I - 0x003AA4 00:FA94: 64        .byte $64   ; 
- D 3 - I - 0x003AA5 00:FA95: 51        .byte $51   ; 
- D 3 - I - 0x003AA6 00:FA96: 52        .byte $52   ; 
- D 3 - I - 0x003AA7 00:FA97: 02        .byte $02   ; 
- D 3 - I - 0x003AA8 00:FA98: 03        .byte $03   ; 
- D 3 - I - 0x003AA9 00:FA99: 12        .byte $12   ; 
- D 3 - I - 0x003AAA 00:FA9A: 13        .byte $13   ; 
- D 3 - I - 0x003AAB 00:FA9B: 1A        .byte $1A   ; 
- D 3 - I - 0x003AAC 00:FA9C: 1B        .byte $1B   ; 
- D 3 - I - 0x003AAD 00:FA9D: 2A        .byte $2A   ; 
- D 3 - I - 0x003AAE 00:FA9E: 2B        .byte $2B   ; 
- D 3 - I - 0x003AAF 00:FA9F: 3A        .byte $3A   ; 
- D 3 - I - 0x003AB0 00:FAA0: 3B        .byte $3B   ; 
- D 3 - I - 0x003AB1 00:FAA1: 4A        .byte $4A   ; 
- D 3 - I - 0x003AB2 00:FAA2: 4A        .byte $4A   ; 
- D 3 - I - 0x003AB3 00:FAA3: 32        .byte $32   ; 
- D 3 - I - 0x003AB4 00:FAA4: 12        .byte $12   ; 
- D 3 - I - 0x003AB5 00:FAA5: F2        .byte $F2   ; 
- D 3 - I - 0x003AB6 00:FAA6: 02        .byte $02   ; 
- D 3 - I - 0x003AB7 00:FAA7: 18 FA     .word off_F2_FA18
- D 3 - I - 0x003AB9 00:FAA9: E8        .byte $E8   ; 
off_F5_FAAA:
- D 3 - I - 0x003ABA 00:FAAA: 68        .byte $68   ; 
- D 3 - I - 0x003ABB 00:FAAB: 13        .byte $13   ; 
- D 3 - I - 0x003ABC 00:FAAC: 67        .byte $67   ; 
- D 3 - I - 0x003ABD 00:FAAD: 4A        .byte $4A   ; 
- D 3 - I - 0x003ABE 00:FAAE: 64        .byte $64   ; 
- D 3 - I - 0x003ABF 00:FAAF: 13        .byte $13   ; 
- D 3 - I - 0x003AC0 00:FAB0: 61        .byte $61   ; 
- D 3 - I - 0x003AC1 00:FAB1: 13        .byte $13   ; 
- D 3 - I - 0x003AC2 00:FAB2: 64        .byte $64   ; 
- D 3 - I - 0x003AC3 00:FAB3: 4A        .byte $4A   ; 
- D 3 - I - 0x003AC4 00:FAB4: 63        .byte $63   ; 
- D 3 - I - 0x003AC5 00:FAB5: 13        .byte $13   ; 
- D 3 - I - 0x003AC6 00:FAB6: 61        .byte $61   ; 
- D 3 - I - 0x003AC7 00:FAB7: 23        .byte $23   ; 
- D 3 - I - 0x003AC8 00:FAB8: 64        .byte $64   ; 
- D 3 - I - 0x003AC9 00:FAB9: 33        .byte $33   ; 
- D 3 - I - 0x003ACA 00:FABA: 68        .byte $68   ; 
- D 3 - I - 0x003ACB 00:FABB: 3B        .byte $3B   ; 
- D 3 - I - 0x003ACC 00:FABC: 67        .byte $67   ; 
- D 3 - I - 0x003ACD 00:FABD: 13        .byte $13   ; 
- D 3 - I - 0x003ACE 00:FABE: 64        .byte $64   ; 
- D 3 - I - 0x003ACF 00:FABF: 3B        .byte $3B   ; 
- D 3 - I - 0x003AD0 00:FAC0: 61        .byte $61   ; 
- D 3 - I - 0x003AD1 00:FAC1: 3B        .byte $3B   ; 
- D 3 - I - 0x003AD2 00:FAC2: 64        .byte $64   ; 
- D 3 - I - 0x003AD3 00:FAC3: 2B        .byte $2B   ; 
- D 3 - I - 0x003AD4 00:FAC4: 63        .byte $63   ; 
- D 3 - I - 0x003AD5 00:FAC5: 23        .byte $23   ; 
- D 3 - I - 0x003AD6 00:FAC6: 61        .byte $61   ; 
- D 3 - I - 0x003AD7 00:FAC7: 23        .byte $23   ; 
- D 3 - I - 0x003AD8 00:FAC8: 64        .byte $64   ; 
- D 3 - I - 0x003AD9 00:FAC9: 13        .byte $13   ; 
- D 3 - I - 0x003ADA 00:FACA: 68        .byte $68   ; 
- D 3 - I - 0x003ADB 00:FACB: 03        .byte $03   ; 
- D 3 - I - 0x003ADC 00:FACC: 67        .byte $67   ; 
- D 3 - I - 0x003ADD 00:FACD: 3A        .byte $3A   ; 
- D 3 - I - 0x003ADE 00:FACE: 64        .byte $64   ; 
- D 3 - I - 0x003ADF 00:FACF: 03        .byte $03   ; 
- D 3 - I - 0x003AE0 00:FAD0: 61        .byte $61   ; 
- D 3 - I - 0x003AE1 00:FAD1: 03        .byte $03   ; 
- D 3 - I - 0x003AE2 00:FAD2: 64        .byte $64   ; 
- D 3 - I - 0x003AE3 00:FAD3: 3A        .byte $3A   ; 
- D 3 - I - 0x003AE4 00:FAD4: 63        .byte $63   ; 
- D 3 - I - 0x003AE5 00:FAD5: 03        .byte $03   ; 
- D 3 - I - 0x003AE6 00:FAD6: 61        .byte $61   ; 
- D 3 - I - 0x003AE7 00:FAD7: 13        .byte $13   ; 
- D 3 - I - 0x003AE8 00:FAD8: 64        .byte $64   ; 
- D 3 - I - 0x003AE9 00:FAD9: 23        .byte $23   ; 
- D 3 - I - 0x003AEA 00:FADA: 78        .byte $78   ; 
- D 3 - I - 0x003AEB 00:FADB: 2B        .byte $2B   ; 
- D 3 - I - 0x003AEC 00:FADC: 68        .byte $68   ; 
- D 3 - I - 0x003AED 00:FADD: 2B        .byte $2B   ; 
- D 3 - I - 0x003AEE 00:FADE: 13        .byte $13   ; 
- D 3 - I - 0x003AEF 00:FADF: 67        .byte $67   ; 
- D 3 - I - 0x003AF0 00:FAE0: 4A        .byte $4A   ; 
- D 3 - I - 0x003AF1 00:FAE1: 64        .byte $64   ; 
- D 3 - I - 0x003AF2 00:FAE2: 13        .byte $13   ; 
- D 3 - I - 0x003AF3 00:FAE3: 61        .byte $61   ; 
- D 3 - I - 0x003AF4 00:FAE4: 13        .byte $13   ; 
- D 3 - I - 0x003AF5 00:FAE5: 64        .byte $64   ; 
- D 3 - I - 0x003AF6 00:FAE6: 1B        .byte $1B   ; 
- D 3 - I - 0x003AF7 00:FAE7: 63        .byte $63   ; 
- D 3 - I - 0x003AF8 00:FAE8: 13        .byte $13   ; 
- D 3 - I - 0x003AF9 00:FAE9: 61        .byte $61   ; 
- D 3 - I - 0x003AFA 00:FAEA: 13        .byte $13   ; 
- D 3 - I - 0x003AFB 00:FAEB: 64        .byte $64   ; 
- D 3 - I - 0x003AFC 00:FAEC: 03        .byte $03   ; 
- D 3 - I - 0x003AFD 00:FAED: 68        .byte $68   ; 
- D 3 - I - 0x003AFE 00:FAEE: 52        .byte $52   ; 
- D 3 - I - 0x003AFF 00:FAEF: 64        .byte $64   ; 
- D 3 - I - 0x003B00 00:FAF0: 13        .byte $13   ; 
- D 3 - I - 0x003B01 00:FAF1: 2B        .byte $2B   ; 
- D 3 - I - 0x003B02 00:FAF2: 3B        .byte $3B   ; 
- D 3 - I - 0x003B03 00:FAF3: 68        .byte $68   ; 
- D 3 - I - 0x003B04 00:FAF4: 5B        .byte $5B   ; 
- D 3 - I - 0x003B05 00:FAF5: 64        .byte $64   ; 
- D 3 - I - 0x003B06 00:FAF6: 3B        .byte $3B   ; 
- D 3 - I - 0x003B07 00:FAF7: 1B        .byte $1B   ; 
- D 3 - I - 0x003B08 00:FAF8: 1B        .byte $1B   ; 
- D 3 - I - 0x003B09 00:FAF9: 1B        .byte $1B   ; 
- D 3 - I - 0x003B0A 00:FAFA: 1B        .byte $1B   ; 
- D 3 - I - 0x003B0B 00:FAFB: 2B        .byte $2B   ; 
- D 3 - I - 0x003B0C 00:FAFC: 2B        .byte $2B   ; 
- D 3 - I - 0x003B0D 00:FAFD: 2B        .byte $2B   ; 
- D 3 - I - 0x003B0E 00:FAFE: 2B        .byte $2B   ; 
- D 3 - I - 0x003B0F 00:FAFF: 2A        .byte $2A   ; 
- D 3 - I - 0x003B10 00:FB00: 2A        .byte $2A   ; 
- D 3 - I - 0x003B11 00:FB01: 3A        .byte $3A   ; 
- D 3 - I - 0x003B12 00:FB02: 4A        .byte $4A   ; 
- D 3 - I - 0x003B13 00:FB03: 67        .byte $67   ; 
- D 3 - I - 0x003B14 00:FB04: 52        .byte $52   ; 
- D 3 - I - 0x003B15 00:FB05: 69        .byte $69   ; 
- D 3 - I - 0x003B16 00:FB06: 52        .byte $52   ; 
- D 3 - I - 0x003B17 00:FB07: F9        .byte $F9   ; 
- D 3 - I - 0x003B18 00:FB08: 18 FA     .word off_F9_FA18
off_F8_FB0A:
- D 3 - I - 0x003B1A 00:FB0A: 74        .byte $74   ; 
- D 3 - I - 0x003B1B 00:FB0B: 60        .byte $60   ; 
- D 3 - I - 0x003B1C 00:FB0C: 64        .byte $64   ; 
- D 3 - I - 0x003B1D 00:FB0D: 2A        .byte $2A   ; 
- D 3 - I - 0x003B1E 00:FB0E: 68        .byte $68   ; 
- D 3 - I - 0x003B1F 00:FB0F: 52        .byte $52   ; 
- D 3 - I - 0x003B20 00:FB10: F9        .byte $F9   ; 
- D 3 - I - 0x003B21 00:FB11: 94 FA     .word off_F9_FA94



_off006_FB13_02:
- D 3 - I - 0x003B23 00:FB13: 01        .byte $01   ; 
- D 3 - I - 0x003B24 00:FB14: 04        .byte $04   ; 
- D 3 - I - 0x003B25 00:FB15: 7F        .byte $7F   ; 
- D 3 - I - 0x003B26 00:FB16: 40        .byte $40   ; 
- D 3 - I - 0x003B27 00:FB17: 6C        .byte $6C   ; 
- D 3 - I - 0x003B28 00:FB18: 2B        .byte $2B   ; 
- D 3 - I - 0x003B29 00:FB19: 64        .byte $64   ; 
- D 3 - I - 0x003B2A 00:FB1A: 13        .byte $13   ; 
- D 3 - I - 0x003B2B 00:FB1B: 6C        .byte $6C   ; 
- D 3 - I - 0x003B2C 00:FB1C: 52        .byte $52   ; 
- D 3 - I - 0x003B2D 00:FB1D: 64        .byte $64   ; 
- D 3 - I - 0x003B2E 00:FB1E: 13        .byte $13   ; 
- D 3 - I - 0x003B2F 00:FB1F: 70        .byte $70   ; 
- D 3 - I - 0x003B30 00:FB20: 2B        .byte $2B   ; 
- D 3 - I - 0x003B31 00:FB21: 3B        .byte $3B   ; 
- D 3 - I - 0x003B32 00:FB22: EA        .byte $EA   ; 
- D 3 - I - 0x003B33 00:FB23: 20        .byte $20   ; 
- D 3 - I - 0x003B34 00:FB24: 8D        .byte $8D   ; 
- D 3 - I - 0x003B35 00:FB25: 4B        .byte $4B   ; 
- D 3 - I - 0x003B36 00:FB26: EA        .byte $EA   ; 
- D 3 - I - 0x003B37 00:FB27: 10        .byte $10   ; 
- D 3 - I - 0x003B38 00:FB28: 73        .byte $73   ; 
- D 3 - I - 0x003B39 00:FB29: 4B        .byte $4B   ; 
- D 3 - I - 0x003B3A 00:FB2A: E8        .byte con_cb_E8   ; 



_off006_FB2B_03:
- D 3 - I - 0x003B3B 00:FB2B: 03        .byte $03   ; 
- D 3 - I - 0x003B3C 00:FB2C: 23        .byte $23   ; 
- D 3 - I - 0x003B3D 00:FB2D: 7F        .byte $7F   ; 
- D 3 - I - 0x003B3E 00:FB2E: 08        .byte $08   ; 
- D 3 - I - 0x003B3F 00:FB2F: 70        .byte $70   ; 
- D 3 - I - 0x003B40 00:FB30: 52        .byte $52   ; 
- D 3 - I - 0x003B41 00:FB31: 53        .byte $53   ; 
- D 3 - I - 0x003B42 00:FB32: 3A        .byte $3A   ; 
- D 3 - I - 0x003B43 00:FB33: 3B        .byte $3B   ; 
- D 3 - I - 0x003B44 00:FB34: EE        .byte $EE   ; 
- D 3 - I - 0x003B45 00:FB35: FF        .byte $FF   ; 
- D 3 - I - 0x003B46 00:FB36: 8D        .byte $8D   ; 
- D 3 - I - 0x003B47 00:FB37: 32        .byte $32   ; 
- D 3 - I - 0x003B48 00:FB38: EE        .byte $EE   ; 
- D 3 - I - 0x003B49 00:FB39: 13        .byte $13   ; 
- D 3 - I - 0x003B4A 00:FB3A: 73        .byte $73   ; 
- D 3 - I - 0x003B4B 00:FB3B: 32        .byte $32   ; 
- D 3 - I - 0x003B4C 00:FB3C: E8        .byte con_cb_E8   ; 



_off006_FB3D_04:
- D 3 - I - 0x003B4D 00:FB3D: 02        .byte $02   ; 
- D 3 - I - 0x003B4E 00:FB3E: 04        .byte $04   ; 
- D 3 - I - 0x003B4F 00:FB3F: 7F        .byte $7F   ; 
- D 3 - I - 0x003B50 00:FB40: 40        .byte $40   ; 
- D 3 - I - 0x003B51 00:FB41: 6C        .byte $6C   ; 
- D 3 - I - 0x003B52 00:FB42: 60        .byte $60   ; 
- D 3 - I - 0x003B53 00:FB43: 64        .byte $64   ; 
- D 3 - I - 0x003B54 00:FB44: 52        .byte $52   ; 
- D 3 - I - 0x003B55 00:FB45: 6C        .byte $6C   ; 
- D 3 - I - 0x003B56 00:FB46: 2A        .byte $2A   ; 
- D 3 - I - 0x003B57 00:FB47: 64        .byte $64   ; 
- D 3 - I - 0x003B58 00:FB48: 52        .byte $52   ; 
- D 3 - I - 0x003B59 00:FB49: 70        .byte $70   ; 
- D 3 - I - 0x003B5A 00:FB4A: 13        .byte $13   ; 
- D 3 - I - 0x003B5B 00:FB4B: 13        .byte $13   ; 
- D 3 - I - 0x003B5C 00:FB4C: EA        .byte $EA   ; 
- D 3 - I - 0x003B5D 00:FB4D: 20        .byte $20   ; 
- D 3 - I - 0x003B5E 00:FB4E: 8D        .byte $8D   ; 
- D 3 - I - 0x003B5F 00:FB4F: 13        .byte $13   ; 
- D 3 - I - 0x003B60 00:FB50: EA        .byte $EA   ; 
- D 3 - I - 0x003B61 00:FB51: 10        .byte $10   ; 
- D 3 - I - 0x003B62 00:FB52: 73        .byte $73   ; 
- D 3 - I - 0x003B63 00:FB53: 13        .byte $13   ; 
- D 3 - I - 0x003B64 00:FB54: E8        .byte con_cb_E8   ; 



_off006_FB55_0E:
- D 3 - I - 0x003B65 00:FB55: 01        .byte $01   ; 
- D 3 - I - 0x003B66 00:FB56: 07        .byte $07   ; 
- D 3 - I - 0x003B67 00:FB57: 7F        .byte $7F   ; 
- D 3 - I - 0x003B68 00:FB58: 40        .byte $40   ; 
- D 3 - I - 0x003B69 00:FB59: EF        .byte $EF   ; 
- D 3 - I - 0x003B6A 00:FB5A: 6C        .byte $6C   ; 
- D 3 - I - 0x003B6B 00:FB5B: 2B        .byte $2B   ; 
- D 3 - I - 0x003B6C 00:FB5C: 66        .byte $66   ; 
- D 3 - I - 0x003B6D 00:FB5D: 2B        .byte $2B   ; 
- D 3 - I - 0x003B6E 00:FB5E: 2B        .byte $2B   ; 
- D 3 - I - 0x003B6F 00:FB5F: 68        .byte $68   ; 
- D 3 - I - 0x003B70 00:FB60: 2B        .byte $2B   ; 
- D 3 - I - 0x003B71 00:FB61: 13        .byte $13   ; 
- D 3 - I - 0x003B72 00:FB62: 2B        .byte $2B   ; 
- D 3 - I - 0x003B73 00:FB63: 78        .byte $78   ; 
- D 3 - I - 0x003B74 00:FB64: 3B        .byte $3B   ; 
- D 3 - I - 0x003B75 00:FB65: 72        .byte $72   ; 
- D 3 - I - 0x003B76 00:FB66: 43        .byte $43   ; 
- D 3 - I - 0x003B77 00:FB67: 66        .byte $66   ; 
- D 3 - I - 0x003B78 00:FB68: 43        .byte $43   ; 
- D 3 - I - 0x003B79 00:FB69: EA        .byte $EA   ; 
- D 3 - I - 0x003B7A 00:FB6A: 0F        .byte $0F   ; 
- D 3 - I - 0x003B7B 00:FB6B: CC        .byte $CC   ; 
- D 3 - I - 0x003B7C 00:FB6C: 4B        .byte $4B   ; 
- D 3 - I - 0x003B7D 00:FB6D: EA        .byte $EA   ; 
- D 3 - I - 0x003B7E 00:FB6E: 05        .byte $05   ; 
- D 3 - I - 0x003B7F 00:FB6F: 7E        .byte $7E   ; 
- D 3 - I - 0x003B80 00:FB70: 42        .byte $42   ; 
- D 3 - I - 0x003B81 00:FB71: 6A        .byte $6A   ; 
- D 3 - I - 0x003B82 00:FB72: 1A        .byte $1A   ; 
- D 3 - I - 0x003B83 00:FB73: 03        .byte $03   ; 
- D 3 - I - 0x003B84 00:FB74: 7E        .byte $7E   ; 
- D 3 - I - 0x003B85 00:FB75: 1B        .byte $1B   ; 
- D 3 - I - 0x003B86 00:FB76: 2B        .byte $2B   ; 
- D 3 - I - 0x003B87 00:FB77: 74        .byte $74   ; 
- D 3 - I - 0x003B88 00:FB78: 03        .byte $03   ; 
- D 3 - I - 0x003B89 00:FB79: 6A        .byte $6A   ; 
- D 3 - I - 0x003B8A 00:FB7A: 52        .byte $52   ; 
- D 3 - I - 0x003B8B 00:FB7B: 74        .byte $74   ; 
- D 3 - I - 0x003B8C 00:FB7C: 42        .byte $42   ; 
- D 3 - I - 0x003B8D 00:FB7D: 2A        .byte $2A   ; 
- D 3 - I - 0x003B8E 00:FB7E: 42        .byte $42   ; 
- D 3 - I - 0x003B8F 00:FB7F: F3        .byte $F3   ; 
- D 3 - I - 0x003B90 00:FB80: 02        .byte $02   ; 
- D 3 - I - 0x003B91 00:FB81: 51        .byte $51   ; 
- D 3 - I - 0x003B92 00:FB82: 6A        .byte $6A   ; 
- D 3 - I - 0x003B93 00:FB83: 42        .byte $42   ; 
- D 3 - I - 0x003B94 00:FB84: 2A        .byte $2A   ; 
- D 3 - I - 0x003B95 00:FB85: 03        .byte $03   ; 
- D 3 - I - 0x003B96 00:FB86: BA        .byte $BA   ; 
- D 3 - I - 0x003B97 00:FB87: 52        .byte $52   ; 
- D 3 - I - 0x003B98 00:FB88: F0        .byte $F0   ; 
- D 3 - I - 0x003B99 00:FB89: 02        .byte $02   ; 
- D 3 - I - 0x003B9A 00:FB8A: 1A        .byte $1A   ; 
- D 3 - I - 0x003B9B 00:FB8B: 74        .byte $74   ; 
- D 3 - I - 0x003B9C 00:FB8C: 60        .byte $60   ; 
- D 3 - I - 0x003B9D 00:FB8D: 6A        .byte $6A   ; 
- D 3 - I - 0x003B9E 00:FB8E: 2A        .byte $2A   ; 
- D 3 - I - 0x003B9F 00:FB8F: 42        .byte $42   ; 
- D 3 - I - 0x003BA0 00:FB90: 42        .byte $42   ; 
- D 3 - I - 0x003BA1 00:FB91: 2A        .byte $2A   ; 
- D 3 - I - 0x003BA2 00:FB92: 42        .byte $42   ; 
- D 3 - I - 0x003BA3 00:FB93: 52        .byte $52   ; 
- D 3 - I - 0x003BA4 00:FB94: 03        .byte $03   ; 
- D 3 - I - 0x003BA5 00:FB95: 74        .byte $74   ; 
- D 3 - I - 0x003BA6 00:FB96: 1B        .byte $1B   ; 
- D 3 - I - 0x003BA7 00:FB97: 2B        .byte $2B   ; 
- D 3 - I - 0x003BA8 00:FB98: 7E        .byte $7E   ; 
- D 3 - I - 0x003BA9 00:FB99: 03        .byte $03   ; 
- D 3 - I - 0x003BAA 00:FB9A: 74        .byte $74   ; 
- D 3 - I - 0x003BAB 00:FB9B: 52        .byte $52   ; 
- D 3 - I - 0x003BAC 00:FB9C: 52        .byte $52   ; 
- D 3 - I - 0x003BAD 00:FB9D: 6A        .byte $6A   ; 
- D 3 - I - 0x003BAE 00:FB9E: 1B        .byte $1B   ; 
- D 3 - I - 0x003BAF 00:FB9F: 7E        .byte $7E   ; 
- D 3 - I - 0x003BB0 00:FBA0: 03        .byte $03   ; 
- D 3 - I - 0x003BB1 00:FBA1: 88        .byte $88   ; 
- D 3 - I - 0x003BB2 00:FBA2: 42        .byte $42   ; 
- D 3 - I - 0x003BB3 00:FBA3: 92        .byte $92   ; 
- D 3 - I - 0x003BB4 00:FBA4: 43        .byte $43   ; 
- D 3 - I - 0x003BB5 00:FBA5: E8        .byte $E8   ; 
- D 3 - I - 0x003BB6 00:FBA6: 6A        .byte $6A   ; 
- D 3 - I - 0x003BB7 00:FBA7: 2A        .byte $2A   ; 
- D 3 - I - 0x003BB8 00:FBA8: 74        .byte $74   ; 
- D 3 - I - 0x003BB9 00:FBA9: 42        .byte $42   ; 
- D 3 - I - 0x003BBA 00:FBAA: BA        .byte $BA   ; 
- D 3 - I - 0x003BBB 00:FBAB: 1A        .byte $1A   ; 
- D 3 - I - 0x003BBC 00:FBAC: 74        .byte $74   ; 
- D 3 - I - 0x003BBD 00:FBAD: 60        .byte $60   ; 
- D 3 - I - 0x003BBE 00:FBAE: 6A        .byte $6A   ; 
- D 3 - I - 0x003BBF 00:FBAF: 2A        .byte $2A   ; 
- D 3 - I - 0x003BC0 00:FBB0: 42        .byte $42   ; 
- D 3 - I - 0x003BC1 00:FBB1: 42        .byte $42   ; 
- D 3 - I - 0x003BC2 00:FBB2: 2A        .byte $2A   ; 
- D 3 - I - 0x003BC3 00:FBB3: 42        .byte $42   ; 
- D 3 - I - 0x003BC4 00:FBB4: 52        .byte $52   ; 
- D 3 - I - 0x003BC5 00:FBB5: F3        .byte $F3   ; 
- D 3 - I - 0x003BC6 00:FBB6: 02        .byte $02   ; 
- D 3 - I - 0x003BC7 00:FBB7: 75        .byte $75   ; 
- D 3 - I - 0x003BC8 00:FBB8: 6A        .byte $6A   ; 
- D 3 - I - 0x003BC9 00:FBB9: 3A        .byte $3A   ; 
- D 3 - I - 0x003BCA 00:FBBA: 74        .byte $74   ; 
- D 3 - I - 0x003BCB 00:FBBB: 1A        .byte $1A   ; 
- D 3 - I - 0x003BCC 00:FBBC: 92        .byte $92   ; 
- D 3 - I - 0x003BCD 00:FBBD: 2A        .byte $2A   ; 
- D 3 - I - 0x003BCE 00:FBBE: 74        .byte $74   ; 
- D 3 - I - 0x003BCF 00:FBBF: 2A        .byte $2A   ; 
- D 3 - I - 0x003BD0 00:FBC0: 74        .byte $74   ; 
- D 3 - I - 0x003BD1 00:FBC1: 42        .byte $42   ; 
- D 3 - I - 0x003BD2 00:FBC2: 6A        .byte $6A   ; 
- D 3 - I - 0x003BD3 00:FBC3: 42        .byte $42   ; 
- D 3 - I - 0x003BD4 00:FBC4: 2A        .byte $2A   ; 
- D 3 - I - 0x003BD5 00:FBC5: 42        .byte $42   ; 
- D 3 - I - 0x003BD6 00:FBC6: BA        .byte $BA   ; 
- D 3 - I - 0x003BD7 00:FBC7: 1A        .byte $1A   ; 
- D 3 - I - 0x003BD8 00:FBC8: F9        .byte $F9   ; 
- D 3 - I - 0x003BD9 00:FBC9: 57        .byte $57   ; 
- D 3 - I - 0x003BDA 00:FBCA: 6A        .byte $6A   ; 
- D 3 - I - 0x003BDB 00:FBCB: 03        .byte $03   ; 
- D 3 - I - 0x003BDC 00:FBCC: 74        .byte $74   ; 
- D 3 - I - 0x003BDD 00:FBCD: 52        .byte $52   ; 
- D 3 - I - 0x003BDE 00:FBCE: 92        .byte $92   ; 
- D 3 - I - 0x003BDF 00:FBCF: 42        .byte $42   ; 
- D 3 - I - 0x003BE0 00:FBD0: 74        .byte $74   ; 
- D 3 - I - 0x003BE1 00:FBD1: 52        .byte $52   ; 
- D 3 - I - 0x003BE2 00:FBD2: 52        .byte $52   ; 
- D 3 - I - 0x003BE3 00:FBD3: 6A        .byte $6A   ; 
- D 3 - I - 0x003BE4 00:FBD4: 52        .byte $52   ; 
- D 3 - I - 0x003BE5 00:FBD5: 74        .byte $74   ; 
- D 3 - I - 0x003BE6 00:FBD6: 03        .byte $03   ; 
- D 3 - I - 0x003BE7 00:FBD7: EA        .byte $EA   ; 
- D 3 - I - 0x003BE8 00:FBD8: 3F        .byte $3F   ; 
- D 3 - I - 0x003BE9 00:FBD9: BA        .byte $BA   ; 
- D 3 - I - 0x003BEA 00:FBDA: 1B        .byte $1B   ; 
- D 3 - I - 0x003BEB 00:FBDB: EA        .byte $EA   ; 
- D 3 - I - 0x003BEC 00:FBDC: 05        .byte $05   ; 
- D 3 - I - 0x003BED 00:FBDD: 7E        .byte $7E   ; 
- D 3 - I - 0x003BEE 00:FBDE: 2B        .byte $2B   ; 
- D 3 - I - 0x003BEF 00:FBDF: 6A        .byte $6A   ; 
- D 3 - I - 0x003BF0 00:FBE0: 03        .byte $03   ; 
- D 3 - I - 0x003BF1 00:FBE1: 1B        .byte $1B   ; 
- D 3 - I - 0x003BF2 00:FBE2: 7E        .byte $7E   ; 
- D 3 - I - 0x003BF3 00:FBE3: 2B        .byte $2B   ; 
- D 3 - I - 0x003BF4 00:FBE4: 1B        .byte $1B   ; 
- D 3 - I - 0x003BF5 00:FBE5: 74        .byte $74   ; 
- D 3 - I - 0x003BF6 00:FBE6: 03        .byte $03   ; 
- D 3 - I - 0x003BF7 00:FBE7: 6A        .byte $6A   ; 
- D 3 - I - 0x003BF8 00:FBE8: 52        .byte $52   ; 
- D 3 - I - 0x003BF9 00:FBE9: 74        .byte $74   ; 
- D 3 - I - 0x003BFA 00:FBEA: 42        .byte $42   ; 
- D 3 - I - 0x003BFB 00:FBEB: 2A        .byte $2A   ; 
- D 3 - I - 0x003BFC 00:FBEC: 42        .byte $42   ; 
- D 3 - I - 0x003BFD 00:FBED: 6A        .byte $6A   ; 
- D 3 - I - 0x003BFE 00:FBEE: 42        .byte $42   ; 
- D 3 - I - 0x003BFF 00:FBEF: 2A        .byte $2A   ; 
- D 3 - I - 0x003C00 00:FBF0: 03        .byte $03   ; 
- D 3 - I - 0x003C01 00:FBF1: BA        .byte $BA   ; 
- D 3 - I - 0x003C02 00:FBF2: 52        .byte $52   ; 
- D 3 - I - 0x003C03 00:FBF3: F9        .byte $F9   ; 
- D 3 - I - 0x003C04 00:FBF4: 1A        .byte $1A   ; 



_off006_FBF5_0F:
- D 3 - I - 0x003C05 00:FBF5: 02        .byte $02   ; 
- D 3 - I - 0x003C06 00:FBF6: 07        .byte $07   ; 
- D 3 - I - 0x003C07 00:FBF7: 7F        .byte $7F   ; 
- D 3 - I - 0x003C08 00:FBF8: 40        .byte $40   ; 
- D 3 - I - 0x003C09 00:FBF9: 6C        .byte $6C   ; 
- D 3 - I - 0x003C0A 00:FBFA: 13        .byte $13   ; 
- D 3 - I - 0x003C0B 00:FBFB: 66        .byte $66   ; 
- D 3 - I - 0x003C0C 00:FBFC: 13        .byte $13   ; 
- D 3 - I - 0x003C0D 00:FBFD: 13        .byte $13   ; 
- D 3 - I - 0x003C0E 00:FBFE: 68        .byte $68   ; 
- D 3 - I - 0x003C0F 00:FBFF: 13        .byte $13   ; 
- D 3 - I - 0x003C10 00:FC00: 52        .byte $52   ; 
- D 3 - I - 0x003C11 00:FC01: 13        .byte $13   ; 
- D 3 - I - 0x003C12 00:FC02: 78        .byte $78   ; 
- D 3 - I - 0x003C13 00:FC03: 13        .byte $13   ; 
- D 3 - I - 0x003C14 00:FC04: 72        .byte $72   ; 
- D 3 - I - 0x003C15 00:FC05: 1B        .byte $1B   ; 
- D 3 - I - 0x003C16 00:FC06: 66        .byte $66   ; 
- D 3 - I - 0x003C17 00:FC07: 1B        .byte $1B   ; 
- D 3 - I - 0x003C18 00:FC08: EA        .byte $EA   ; 
- D 3 - I - 0x003C19 00:FC09: 0F        .byte $0F   ; 
- D 3 - I - 0x003C1A 00:FC0A: CC        .byte $CC   ; 
- D 3 - I - 0x003C1B 00:FC0B: 23        .byte $23   ; 
- D 3 - I - 0x003C1C 00:FC0C: E9        .byte $E9   ; 
- D 3 - I - 0x003C1D 00:FC0D: 80        .byte $80   ; 
- D 3 - I - 0x003C1E 00:FC0E: EA        .byte $EA   ; 
- D 3 - I - 0x003C1F 00:FC0F: 03        .byte $03   ; 
- D 3 - I - 0x003C20 00:FC10: 7E        .byte $7E   ; 
- D 3 - I - 0x003C21 00:FC11: 41        .byte $41   ; 
- D 3 - I - 0x003C22 00:FC12: 02        .byte $02   ; 
- D 3 - I - 0x003C23 00:FC13: 74        .byte $74   ; 
- D 3 - I - 0x003C24 00:FC14: 1A        .byte $1A   ; 
- D 3 - I - 0x003C25 00:FC15: 7E        .byte $7E   ; 
- D 3 - I - 0x003C26 00:FC16: 29        .byte $29   ; 
- D 3 - I - 0x003C27 00:FC17: 41        .byte $41   ; 
- D 3 - I - 0x003C28 00:FC18: 74        .byte $74   ; 
- D 3 - I - 0x003C29 00:FC19: 02        .byte $02   ; 
- D 3 - I - 0x003C2A 00:FC1A: 7E        .byte $7E   ; 
- D 3 - I - 0x003C2B 00:FC1B: 51        .byte $51   ; 
- D 3 - I - 0x003C2C 00:FC1C: 0A        .byte $0A   ; 
- D 3 - I - 0x003C2D 00:FC1D: 74        .byte $74   ; 
- D 3 - I - 0x003C2E 00:FC1E: 2A        .byte $2A   ; 
- D 3 - I - 0x003C2F 00:FC1F: 7E        .byte $7E   ; 
- D 3 - I - 0x003C30 00:FC20: 1A        .byte $1A   ; 
- D 3 - I - 0x003C31 00:FC21: 51        .byte $51   ; 
- D 3 - I - 0x003C32 00:FC22: 74        .byte $74   ; 
- D 3 - I - 0x003C33 00:FC23: 19        .byte $19   ; 
- D 3 - I - 0x003C34 00:FC24: F1        .byte $F1   ; 
- D 3 - I - 0x003C35 00:FC25: 02        .byte $02   ; 
- D 3 - I - 0x003C36 00:FC26: 1B        .byte $1B   ; 
- D 3 - I - 0x003C37 00:FC27: 7E        .byte $7E   ; 
- D 3 - I - 0x003C38 00:FC28: 09        .byte $09   ; 
- D 3 - I - 0x003C39 00:FC29: 6A        .byte $6A   ; 
- D 3 - I - 0x003C3A 00:FC2A: 09        .byte $09   ; 
- D 3 - I - 0x003C3B 00:FC2B: 29        .byte $29   ; 
- D 3 - I - 0x003C3C 00:FC2C: 7E        .byte $7E   ; 
- D 3 - I - 0x003C3D 00:FC2D: 41        .byte $41   ; 
- D 3 - I - 0x003C3E 00:FC2E: 6A        .byte $6A   ; 
- D 3 - I - 0x003C3F 00:FC2F: 39        .byte $39   ; 
- D 3 - I - 0x003C40 00:FC30: 02        .byte $02   ; 
- D 3 - I - 0x003C41 00:FC31: 01        .byte $01   ; 
- D 3 - I - 0x003C42 00:FC32: 74        .byte $74   ; 
- D 3 - I - 0x003C43 00:FC33: 29        .byte $29   ; 
- D 3 - I - 0x003C44 00:FC34: 6A        .byte $6A   ; 
- D 3 - I - 0x003C45 00:FC35: 41        .byte $41   ; 
- D 3 - I - 0x003C46 00:FC36: 74        .byte $74   ; 
- D 3 - I - 0x003C47 00:FC37: 02        .byte $02   ; 
- D 3 - I - 0x003C48 00:FC38: F7        .byte $F7   ; 
- D 3 - I - 0x003C49 00:FC39: 03        .byte $03   ; 
- D 3 - I - 0x003C4A 00:FC3A: 65        .byte $65   ; 
- D 3 - I - 0x003C4B 00:FC3B: F4        .byte $F4   ; 
- D 3 - I - 0x003C4C 00:FC3C: 02        .byte $02   ; 
- D 3 - I - 0x003C4D 00:FC3D: 55        .byte $55   ; 
- D 3 - I - 0x003C4E 00:FC3E: 7E        .byte $7E   ; 
- D 3 - I - 0x003C4F 00:FC3F: 51        .byte $51   ; 
- D 3 - I - 0x003C50 00:FC40: 0A        .byte $0A   ; 
- D 3 - I - 0x003C51 00:FC41: 74        .byte $74   ; 
- D 3 - I - 0x003C52 00:FC42: 2A        .byte $2A   ; 
- D 3 - I - 0x003C53 00:FC43: 7E        .byte $7E   ; 
- D 3 - I - 0x003C54 00:FC44: 1A        .byte $1A   ; 
- D 3 - I - 0x003C55 00:FC45: 51        .byte $51   ; 
- D 3 - I - 0x003C56 00:FC46: 74        .byte $74   ; 
- D 3 - I - 0x003C57 00:FC47: 19        .byte $19   ; 
- D 3 - I - 0x003C58 00:FC48: F9        .byte $F9   ; 
- D 3 - I - 0x003C59 00:FC49: 32        .byte $32   ; 
- D 3 - I - 0x003C5A 00:FC4A: 7E        .byte $7E   ; 
- D 3 - I - 0x003C5B 00:FC4B: 51        .byte $51   ; 
- D 3 - I - 0x003C5C 00:FC4C: 12        .byte $12   ; 
- D 3 - I - 0x003C5D 00:FC4D: 74        .byte $74   ; 
- D 3 - I - 0x003C5E 00:FC4E: 2A        .byte $2A   ; 
- D 3 - I - 0x003C5F 00:FC4F: 6A        .byte $6A   ; 
- D 3 - I - 0x003C60 00:FC50: 1A        .byte $1A   ; 
- D 3 - I - 0x003C61 00:FC51: 1A        .byte $1A   ; 
- D 3 - I - 0x003C62 00:FC52: 0A        .byte $0A   ; 
- D 3 - I - 0x003C63 00:FC53: 0A        .byte $0A   ; 
- D 3 - I - 0x003C64 00:FC54: 02        .byte $02   ; 
- D 3 - I - 0x003C65 00:FC55: 02        .byte $02   ; 
- D 3 - I - 0x003C66 00:FC56: 51        .byte $51   ; 
- D 3 - I - 0x003C67 00:FC57: 51        .byte $51   ; 
- D 3 - I - 0x003C68 00:FC58: F9        .byte $F9   ; 
- D 3 - I - 0x003C69 00:FC59: 1B        .byte $1B   ; 
- D 3 - I - 0x003C6A 00:FC5A: 6A        .byte $6A   ; 
- D 3 - I - 0x003C6B 00:FC5B: 51        .byte $51   ; 
- D 3 - I - 0x003C6C 00:FC5C: 12        .byte $12   ; 
- D 3 - I - 0x003C6D 00:FC5D: 74        .byte $74   ; 
- D 3 - I - 0x003C6E 00:FC5E: 2A        .byte $2A   ; 
- D 3 - I - 0x003C6F 00:FC5F: 6A        .byte $6A   ; 
- D 3 - I - 0x003C70 00:FC60: 1A        .byte $1A   ; 
- D 3 - I - 0x003C71 00:FC61: 51        .byte $51   ; 
- D 3 - I - 0x003C72 00:FC62: 74        .byte $74   ; 
- D 3 - I - 0x003C73 00:FC63: 19        .byte $19   ; 
- D 3 - I - 0x003C74 00:FC64: 88        .byte $88   ; 
- D 3 - I - 0x003C75 00:FC65: 41        .byte $41   ; 
- D 3 - I - 0x003C76 00:FC66: 92        .byte $92   ; 
- D 3 - I - 0x003C77 00:FC67: 42        .byte $42   ; 
- D 3 - I - 0x003C78 00:FC68: E8        .byte con_cb_E8   ;  



_off006_FC69_10:
- D 3 - I - 0x003C79 00:FC69: 03        .byte $03   ; 
- D 3 - I - 0x003C7A 00:FC6A: 15        .byte $15   ; 
- D 3 - I - 0x003C7B 00:FC6B: 7F        .byte $7F   ; 
- D 3 - I - 0x003C7C 00:FC6C: 08        .byte $08   ; 
- D 3 - I - 0x003C7D 00:FC6D: 6C        .byte $6C   ; 
- D 3 - I - 0x003C7E 00:FC6E: 53        .byte $53   ; 
- D 3 - I - 0x003C7F 00:FC6F: 66        .byte $66   ; 
- D 3 - I - 0x003C80 00:FC70: 53        .byte $53   ; 
- D 3 - I - 0x003C81 00:FC71: 53        .byte $53   ; 
- D 3 - I - 0x003C82 00:FC72: 68        .byte $68   ; 
- D 3 - I - 0x003C83 00:FC73: 53        .byte $53   ; 
- D 3 - I - 0x003C84 00:FC74: 2B        .byte $2B   ; 
- D 3 - I - 0x003C85 00:FC75: 53        .byte $53   ; 
- D 3 - I - 0x003C86 00:FC76: EE        .byte $EE   ; 
- D 3 - I - 0x003C87 00:FC77: 8F        .byte $8F   ; 
- D 3 - I - 0x003C88 00:FC78: 78        .byte $78   ; 
- D 3 - I - 0x003C89 00:FC79: 53        .byte $53   ; 
- D 3 - I - 0x003C8A 00:FC7A: EE        .byte $EE   ; 
- D 3 - I - 0x003C8B 00:FC7B: 15        .byte $15   ; 
- D 3 - I - 0x003C8C 00:FC7C: 72        .byte $72   ; 
- D 3 - I - 0x003C8D 00:FC7D: 04        .byte $04   ; 
- D 3 - I - 0x003C8E 00:FC7E: 66        .byte $66   ; 
- D 3 - I - 0x003C8F 00:FC7F: 04        .byte $04   ; 
- D 3 - I - 0x003C90 00:FC80: EE        .byte $EE   ; 
- D 3 - I - 0x003C91 00:FC81: 8F        .byte $8F   ; 
- D 3 - I - 0x003C92 00:FC82: 9C        .byte $9C   ; 
- D 3 - I - 0x003C93 00:FC83: 14        .byte $14   ; 
- D 3 - I - 0x003C94 00:FC84: EE        .byte $EE   ; 
- D 3 - I - 0x003C95 00:FC85: 05        .byte $05   ; 
- D 3 - I - 0x003C96 00:FC86: 90        .byte $90   ; 
- D 3 - I - 0x003C97 00:FC87: 14        .byte $14   ; 
- D 3 - I - 0x003C98 00:FC88: EE        .byte $EE   ; 
- D 3 - I - 0x003C99 00:FC89: 10        .byte $10   ; 
- D 3 - I - 0x003C9A 00:FC8A: 6A        .byte $6A   ; 
- D 3 - I - 0x003C9B 00:FC8B: 43        .byte $43   ; 
- D 3 - I - 0x003C9C 00:FC8C: 65        .byte $65   ; 
- D 3 - I - 0x003C9D 00:FC8D: 43        .byte $43   ; 
- D 3 - I - 0x003C9E 00:FC8E: 04        .byte $04   ; 
- D 3 - I - 0x003C9F 00:FC8F: 6A        .byte $6A   ; 
- D 3 - I - 0x003CA0 00:FC90: 1C        .byte $1C   ; 
- D 3 - I - 0x003CA1 00:FC91: 04        .byte $04   ; 
- D 3 - I - 0x003CA2 00:FC92: 44        .byte $44   ; 
- D 3 - I - 0x003CA3 00:FC93: 1C        .byte $1C   ; 
- D 3 - I - 0x003CA4 00:FC94: 04        .byte $04   ; 
- D 3 - I - 0x003CA5 00:FC95: 43        .byte $43   ; 
- D 3 - I - 0x003CA6 00:FC96: 2B        .byte $2B   ; 
- D 3 - I - 0x003CA7 00:FC97: 65        .byte $65   ; 
- D 3 - I - 0x003CA8 00:FC98: 2B        .byte $2B   ; 
- D 3 - I - 0x003CA9 00:FC99: 43        .byte $43   ; 
- D 3 - I - 0x003CAA 00:FC9A: 6A        .byte $6A   ; 
- D 3 - I - 0x003CAB 00:FC9B: 04        .byte $04   ; 
- D 3 - I - 0x003CAC 00:FC9C: 43        .byte $43   ; 
- D 3 - I - 0x003CAD 00:FC9D: 2C        .byte $2C   ; 
- D 3 - I - 0x003CAE 00:FC9E: 04        .byte $04   ; 
- D 3 - I - 0x003CAF 00:FC9F: 43        .byte $43   ; 
- D 3 - I - 0x003CB0 00:FCA0: 2B        .byte $2B   ; 
- D 3 - I - 0x003CB1 00:FCA1: 2B        .byte $2B   ; 
- D 3 - I - 0x003CB2 00:FCA2: 65        .byte $65   ; 
- D 3 - I - 0x003CB3 00:FCA3: 2B        .byte $2B   ; 
- D 3 - I - 0x003CB4 00:FCA4: 43        .byte $43   ; 
- D 3 - I - 0x003CB5 00:FCA5: 6A        .byte $6A   ; 
- D 3 - I - 0x003CB6 00:FCA6: 0C        .byte $0C   ; 
- D 3 - I - 0x003CB7 00:FCA7: 43        .byte $43   ; 
- D 3 - I - 0x003CB8 00:FCA8: 2C        .byte $2C   ; 
- D 3 - I - 0x003CB9 00:FCA9: 0C        .byte $0C   ; 
- D 3 - I - 0x003CBA 00:FCAA: 43        .byte $43   ; 
- D 3 - I - 0x003CBB 00:FCAB: 2B        .byte $2B   ; 
- D 3 - I - 0x003CBC 00:FCAC: 1B        .byte $1B   ; 
- D 3 - I - 0x003CBD 00:FCAD: 65        .byte $65   ; 
- D 3 - I - 0x003CBE 00:FCAE: 1B        .byte $1B   ; 
- D 3 - I - 0x003CBF 00:FCAF: 3B        .byte $3B   ; 
- D 3 - I - 0x003CC0 00:FCB0: 6A        .byte $6A   ; 
- D 3 - I - 0x003CC1 00:FCB1: 53        .byte $53   ; 
- D 3 - I - 0x003CC2 00:FCB2: 3B        .byte $3B   ; 
- D 3 - I - 0x003CC3 00:FCB3: 1C        .byte $1C   ; 
- D 3 - I - 0x003CC4 00:FCB4: 53        .byte $53   ; 
- D 3 - I - 0x003CC5 00:FCB5: 3B        .byte $3B   ; 
- D 3 - I - 0x003CC6 00:FCB6: 1B        .byte $1B   ; 
- D 3 - I - 0x003CC7 00:FCB7: F2        .byte $F2   ; 
- D 3 - I - 0x003CC8 00:FCB8: 02        .byte $02   ; 
- D 3 - I - 0x003CC9 00:FCB9: 21        .byte $21   ; 
- D 3 - I - 0x003CCA 00:FCBA: 6A        .byte $6A   ; 
- D 3 - I - 0x003CCB 00:FCBB: 2B        .byte $2B   ; 
- D 3 - I - 0x003CCC 00:FCBC: 65        .byte $65   ; 
- D 3 - I - 0x003CCD 00:FCBD: 2B        .byte $2B   ; 
- D 3 - I - 0x003CCE 00:FCBE: 43        .byte $43   ; 
- D 3 - I - 0x003CCF 00:FCBF: 6A        .byte $6A   ; 
- D 3 - I - 0x003CD0 00:FCC0: 0C        .byte $0C   ; 
- D 3 - I - 0x003CD1 00:FCC1: 43        .byte $43   ; 
- D 3 - I - 0x003CD2 00:FCC2: 2C        .byte $2C   ; 
- D 3 - I - 0x003CD3 00:FCC3: 0C        .byte $0C   ; 
- D 3 - I - 0x003CD4 00:FCC4: 43        .byte $43   ; 
- D 3 - I - 0x003CD5 00:FCC5: 2B        .byte $2B   ; 
- D 3 - I - 0x003CD6 00:FCC6: 1B        .byte $1B   ; 
- D 3 - I - 0x003CD7 00:FCC7: 2B        .byte $2B   ; 
- D 3 - I - 0x003CD8 00:FCC8: 3B        .byte $3B   ; 
- D 3 - I - 0x003CD9 00:FCC9: 74        .byte $74   ; 
- D 3 - I - 0x003CDA 00:FCCA: 43        .byte $43   ; 
- D 3 - I - 0x003CDB 00:FCCB: 6A        .byte $6A   ; 
- D 3 - I - 0x003CDC 00:FCCC: 53        .byte $53   ; 
- D 3 - I - 0x003CDD 00:FCCD: 74        .byte $74   ; 
- D 3 - I - 0x003CDE 00:FCCE: 04        .byte $04   ; 
- D 3 - I - 0x003CDF 00:FCCF: F8        .byte $F8   ; 
- D 3 - I - 0x003CE0 00:FCD0: 03        .byte $03   ; 
- D 3 - I - 0x003CE1 00:FCD1: 9E        .byte $9E   ; 
- D 3 - I - 0x003CE2 00:FCD2: F5        .byte $F5   ; 
- D 3 - I - 0x003CE3 00:FCD3: 02        .byte $02   ; 
- D 3 - I - 0x003CE4 00:FCD4: 85        .byte $85   ; 
- D 3 - I - 0x003CE5 00:FCD5: 6A        .byte $6A   ; 
- D 3 - I - 0x003CE6 00:FCD6: 2B        .byte $2B   ; 
- D 3 - I - 0x003CE7 00:FCD7: 65        .byte $65   ; 
- D 3 - I - 0x003CE8 00:FCD8: 2B        .byte $2B   ; 
- D 3 - I - 0x003CE9 00:FCD9: 43        .byte $43   ; 
- D 3 - I - 0x003CEA 00:FCDA: 6A        .byte $6A   ; 
- D 3 - I - 0x003CEB 00:FCDB: 0C        .byte $0C   ; 
- D 3 - I - 0x003CEC 00:FCDC: 43        .byte $43   ; 
- D 3 - I - 0x003CED 00:FCDD: 2C        .byte $2C   ; 
- D 3 - I - 0x003CEE 00:FCDE: 0C        .byte $0C   ; 
- D 3 - I - 0x003CEF 00:FCDF: 43        .byte $43   ; 
- D 3 - I - 0x003CF0 00:FCE0: 2B        .byte $2B   ; 
- D 3 - I - 0x003CF1 00:FCE1: 1B        .byte $1B   ; 
- D 3 - I - 0x003CF2 00:FCE2: 65        .byte $65   ; 
- D 3 - I - 0x003CF3 00:FCE3: 1B        .byte $1B   ; 
- D 3 - I - 0x003CF4 00:FCE4: 3B        .byte $3B   ; 
- D 3 - I - 0x003CF5 00:FCE5: 6A        .byte $6A   ; 
- D 3 - I - 0x003CF6 00:FCE6: 53        .byte $53   ; 
- D 3 - I - 0x003CF7 00:FCE7: 3B        .byte $3B   ; 
- D 3 - I - 0x003CF8 00:FCE8: 1C        .byte $1C   ; 
- D 3 - I - 0x003CF9 00:FCE9: 53        .byte $53   ; 
- D 3 - I - 0x003CFA 00:FCEA: 3B        .byte $3B   ; 
- D 3 - I - 0x003CFB 00:FCEB: 1B        .byte $1B   ; 
- D 3 - I - 0x003CFC 00:FCEC: F9        .byte $F9   ; 
- D 3 - I - 0x003CFD 00:FCED: 51        .byte $51   ; 
- D 3 - I - 0x003CFE 00:FCEE: 6A        .byte $6A   ; 
- D 3 - I - 0x003CFF 00:FCEF: 2B        .byte $2B   ; 
- D 3 - I - 0x003D00 00:FCF0: 65        .byte $65   ; 
- D 3 - I - 0x003D01 00:FCF1: 2B        .byte $2B   ; 
- D 3 - I - 0x003D02 00:FCF2: 53        .byte $53   ; 
- D 3 - I - 0x003D03 00:FCF3: 6A        .byte $6A   ; 
- D 3 - I - 0x003D04 00:FCF4: 14        .byte $14   ; 
- D 3 - I - 0x003D05 00:FCF5: 53        .byte $53   ; 
- D 3 - I - 0x003D06 00:FCF6: 2C        .byte $2C   ; 
- D 3 - I - 0x003D07 00:FCF7: 14        .byte $14   ; 
- D 3 - I - 0x003D08 00:FCF8: 53        .byte $53   ; 
- D 3 - I - 0x003D09 00:FCF9: 2B        .byte $2B   ; 
- D 3 - I - 0x003D0A 00:FCFA: 1B        .byte $1B   ; 
- D 3 - I - 0x003D0B 00:FCFB: 65        .byte $65   ; 
- D 3 - I - 0x003D0C 00:FCFC: 1B        .byte $1B   ; 
- D 3 - I - 0x003D0D 00:FCFD: 3B        .byte $3B   ; 
- D 3 - I - 0x003D0E 00:FCFE: 6A        .byte $6A   ; 
- D 3 - I - 0x003D0F 00:FCFF: 53        .byte $53   ; 
- D 3 - I - 0x003D10 00:FD00: 3B        .byte $3B   ; 
- D 3 - I - 0x003D11 00:FD01: 1C        .byte $1C   ; 
- D 3 - I - 0x003D12 00:FD02: 53        .byte $53   ; 
- D 3 - I - 0x003D13 00:FD03: 3B        .byte $3B   ; 
- D 3 - I - 0x003D14 00:FD04: 1B        .byte $1B   ; 
- D 3 - I - 0x003D15 00:FD05: F9        .byte $F9   ; 
- D 3 - I - 0x003D16 00:FD06: 21        .byte $21   ; 
- D 3 - I - 0x003D17 00:FD07: 6A        .byte $6A   ; 
- D 3 - I - 0x003D18 00:FD08: 2B        .byte $2B   ; 
- D 3 - I - 0x003D19 00:FD09: 65        .byte $65   ; 
- D 3 - I - 0x003D1A 00:FD0A: 2B        .byte $2B   ; 
- D 3 - I - 0x003D1B 00:FD0B: 43        .byte $43   ; 
- D 3 - I - 0x003D1C 00:FD0C: 6A        .byte $6A   ; 
- D 3 - I - 0x003D1D 00:FD0D: 0C        .byte $0C   ; 
- D 3 - I - 0x003D1E 00:FD0E: 43        .byte $43   ; 
- D 3 - I - 0x003D1F 00:FD0F: 1B        .byte $1B   ; 
- D 3 - I - 0x003D20 00:FD10: 65        .byte $65   ; 
- D 3 - I - 0x003D21 00:FD11: 1B        .byte $1B   ; 
- D 3 - I - 0x003D22 00:FD12: 3B        .byte $3B   ; 
- D 3 - I - 0x003D23 00:FD13: 6A        .byte $6A   ; 
- D 3 - I - 0x003D24 00:FD14: 53        .byte $53   ; 
- D 3 - I - 0x003D25 00:FD15: 3B        .byte $3B   ; 
- D 3 - I - 0x003D26 00:FD16: 88        .byte $88   ; 
- D 3 - I - 0x003D27 00:FD17: 43        .byte $43   ; 
- D 3 - I - 0x003D28 00:FD18: 04        .byte $04   ; 
- D 3 - I - 0x003D29 00:FD19: E8        .byte con_cb_E8   ; 



_off006_FD1A_0B:
- D 3 - I - 0x003D2A 00:FD1A: 01        .byte $01   ; 
- D 3 - I - 0x003D2B 00:FD1B: 05        .byte $05   ; 
- D 3 - I - 0x003D2C 00:FD1C: 7F        .byte $7F   ; 
- D 3 - I - 0x003D2D 00:FD1D: 40        .byte $40   ; 
- D 3 - I - 0x003D2E 00:FD1E: 6C        .byte $6C   ; 
- D 3 - I - 0x003D2F 00:FD1F: 52        .byte $52   ; 
- D 3 - I - 0x003D30 00:FD20: 64        .byte $64   ; 
- D 3 - I - 0x003D31 00:FD21: 2B        .byte $2B   ; 
- D 3 - I - 0x003D32 00:FD22: 6C        .byte $6C   ; 
- D 3 - I - 0x003D33 00:FD23: 13        .byte $13   ; 
- D 3 - I - 0x003D34 00:FD24: 64        .byte $64   ; 
- D 3 - I - 0x003D35 00:FD25: 52        .byte $52   ; 
- D 3 - I - 0x003D36 00:FD26: 6C        .byte $6C   ; 
- D 3 - I - 0x003D37 00:FD27: 2B        .byte $2B   ; 
- D 3 - I - 0x003D38 00:FD28: 64        .byte $64   ; 
- D 3 - I - 0x003D39 00:FD29: 13        .byte $13   ; 
- D 3 - I - 0x003D3A 00:FD2A: 6C        .byte $6C   ; 
- D 3 - I - 0x003D3B 00:FD2B: 52        .byte $52   ; 
- D 3 - I - 0x003D3C 00:FD2C: 64        .byte $64   ; 
- D 3 - I - 0x003D3D 00:FD2D: 3A        .byte $3A   ; 
- D 3 - I - 0x003D3E 00:FD2E: EA        .byte $EA   ; 
- D 3 - I - 0x003D3F 00:FD2F: 20        .byte $20   ; 
- D 3 - I - 0x003D40 00:FD30: 80        .byte $80   ; 
- D 3 - I - 0x003D41 00:FD31: 32        .byte $32   ; 
- D 3 - I - 0x003D42 00:FD32: EA        .byte $EA   ; 
- D 3 - I - 0x003D43 00:FD33: 05        .byte $05   ; 
- D 3 - I - 0x003D44 00:FD34: 70        .byte $70   ; 
- D 3 - I - 0x003D45 00:FD35: 2A        .byte $2A   ; 
- D 3 - I - 0x003D46 00:FD36: 60        .byte $60   ; 
- D 3 - I - 0x003D47 00:FD37: E8        .byte con_cb_E8   ; 



_off006_FD38_0C:
- D 3 - I - 0x003D48 00:FD38: 03        .byte $03   ; 
- D 3 - I - 0x003D49 00:FD39: 2A        .byte $2A   ; 
- D 3 - I - 0x003D4A 00:FD3A: 7F        .byte $7F   ; 
- D 3 - I - 0x003D4B 00:FD3B: 08        .byte $08   ; 
- D 3 - I - 0x003D4C 00:FD3C: 70        .byte $70   ; 
- D 3 - I - 0x003D4D 00:FD3D: 2C        .byte $2C   ; 
- D 3 - I - 0x003D4E 00:FD3E: 14        .byte $14   ; 
- D 3 - I - 0x003D4F 00:FD3F: 53        .byte $53   ; 
- D 3 - I - 0x003D50 00:FD40: 3B        .byte $3B   ; 
- D 3 - I - 0x003D51 00:FD41: 80        .byte $80   ; 
- D 3 - I - 0x003D52 00:FD42: 1B        .byte $1B   ; 
- D 3 - I - 0x003D53 00:FD43: 70        .byte $70   ; 
- D 3 - I - 0x003D54 00:FD44: 03        .byte $03   ; 
- D 3 - I - 0x003D55 00:FD45: 60        .byte $60   ; 
- D 3 - I - 0x003D56 00:FD46: E8        .byte con_cb_E8   ; 



_off006_FD47_0D:
- D 3 - I - 0x003D57 00:FD47: 02        .byte $02   ; 
- D 3 - I - 0x003D58 00:FD48: 86        .byte $86   ; 
- D 3 - I - 0x003D59 00:FD49: 7F        .byte $7F   ; 
- D 3 - I - 0x003D5A 00:FD4A: 40        .byte $40   ; 
- D 3 - I - 0x003D5B 00:FD4B: 70        .byte $70   ; 
- D 3 - I - 0x003D5C 00:FD4C: 50        .byte $50   ; 
- D 3 - I - 0x003D5D 00:FD4D: 51        .byte $51   ; 
- D 3 - I - 0x003D5E 00:FD4E: 50        .byte $50   ; 
- D 3 - I - 0x003D5F 00:FD4F: 51        .byte $51   ; 
- D 3 - I - 0x003D60 00:FD50: EA        .byte $EA   ; 
- D 3 - I - 0x003D61 00:FD51: 07        .byte $07   ; 
- D 3 - I - 0x003D62 00:FD52: 80        .byte $80   ; 
- D 3 - I - 0x003D63 00:FD53: 59        .byte $59   ; 
- D 3 - I - 0x003D64 00:FD54: 49        .byte $49   ; 
- D 3 - I - 0x003D65 00:FD55: E8        .byte con_cb_E8   ; 



_off006_FD56_0A:
- D 3 - I - 0x003D66 00:FD56: 02        .byte $02   ; 
- D 3 - I - 0x003D67 00:FD57: FF        .byte $FF   ; 
- D 3 - I - 0x003D68 00:FD58: 7F        .byte $7F   ; 
- D 3 - I - 0x003D69 00:FD59: 40        .byte $40   ; 
- D 3 - I - 0x003D6A 00:FD5A: 61        .byte $61   ; 
- D 3 - I - 0x003D6B 00:FD5B: 52        .byte $52   ; 
- D 3 - I - 0x003D6C 00:FD5C: 5A        .byte $5A   ; 
- D 3 - I - 0x003D6D 00:FD5D: 03        .byte $03   ; 
- D 3 - I - 0x003D6E 00:FD5E: 0B        .byte $0B   ; 
- D 3 - I - 0x003D6F 00:FD5F: EA        .byte $EA   ; 
- D 3 - I - 0x003D70 00:FD60: 02        .byte $02   ; 
- D 3 - I - 0x003D71 00:FD61: 6A        .byte $6A   ; 
- D 3 - I - 0x003D72 00:FD62: 13        .byte $13   ; 
- D 3 - I - 0x003D73 00:FD63: E8        .byte con_cb_E8   ; 



_off006_FD64_09:
- D 3 - I - 0x003D74 00:FD64: 02        .byte $02   ; 
- D 3 - I - 0x003D75 00:FD65: DF        .byte $DF   ; 
- D 3 - I - 0x003D76 00:FD66: 7F        .byte $7F   ; 
- D 3 - I - 0x003D77 00:FD67: 38        .byte $38   ; 
- D 3 - I - 0x003D78 00:FD68: 62        .byte $62   ; 
- D 3 - I - 0x003D79 00:FD69: 53        .byte $53   ; 
- D 3 - I - 0x003D7A 00:FD6A: 04        .byte $04   ; 
- D 3 - I - 0x003D7B 00:FD6B: 14        .byte $14   ; 
- D 3 - I - 0x003D7C 00:FD6C: 2C        .byte $2C   ; 
- D 3 - I - 0x003D7D 00:FD6D: 3C        .byte $3C   ; 
- D 3 - I - 0x003D7E 00:FD6E: 53        .byte $53   ; 
- D 3 - I - 0x003D7F 00:FD6F: 3C        .byte $3C   ; 
- D 3 - I - 0x003D80 00:FD70: 2C        .byte $2C   ; 
- D 3 - I - 0x003D81 00:FD71: 14        .byte $14   ; 
- D 3 - I - 0x003D82 00:FD72: 04        .byte $04   ; 
- D 3 - I - 0x003D83 00:FD73: F7        .byte $F7   ; 
- D 3 - I - 0x003D84 00:FD74: 04        .byte $04   ; 
- D 3 - I - 0x003D85 00:FD75: 24        .byte $24   ; 
- D 3 - I - 0x003D86 00:FD76: F4        .byte $F4   ; 
- D 3 - I - 0x003D87 00:FD77: 03        .byte $03   ; 
- D 3 - I - 0x003D88 00:FD78: 20        .byte $20   ; 
- D 3 - I - 0x003D89 00:FD79: F1        .byte $F1   ; 
- D 3 - I - 0x003D8A 00:FD7A: 02        .byte $02   ; 
- D 3 - I - 0x003D8B 00:FD7B: 1C        .byte $1C   ; 
- D 3 - I - 0x003D8C 00:FD7C: E9        .byte $E9   ; 
- D 3 - I - 0x003D8D 00:FD7D: 40        .byte $40   ; 
- D 3 - I - 0x003D8E 00:FD7E: F9        .byte $F9   ; 
- D 3 - I - 0x003D8F 00:FD7F: 04        .byte $04   ; 
- D 3 - I - 0x003D90 00:FD80: E9        .byte $E9   ; 
- D 3 - I - 0x003D91 00:FD81: 80        .byte $80   ; 
- D 3 - I - 0x003D92 00:FD82: F9        .byte $F9   ; 
- D 3 - I - 0x003D93 00:FD83: 04        .byte $04   ; 
- D 3 - I - 0x003D94 00:FD84: E9        .byte $E9   ; 
- D 3 - I - 0x003D95 00:FD85: 00        .byte $00   ; 
- D 3 - I - 0x003D96 00:FD86: F9        .byte $F9   ; 
- D 3 - I - 0x003D97 00:FD87: 04        .byte $04   ; 
- D 3 - I - 0x003D98 00:FD88: E8        .byte con_cb_E8   ; 



_off006_FD89_08:
- D 3 - I - 0x003D99 00:FD89: 02        .byte $02   ; 
- D 3 - I - 0x003D9A 00:FD8A: CB        .byte $CB   ; 
- D 3 - I - 0x003D9B 00:FD8B: 7F        .byte $7F   ; 
- D 3 - I - 0x003D9C 00:FD8C: 48        .byte $48   ; 
- D 3 - I - 0x003D9D 00:FD8D: 61        .byte $61   ; 
- D 3 - I - 0x003D9E 00:FD8E: 04        .byte $04   ; 
- D 3 - I - 0x003D9F 00:FD8F: 5B        .byte $5B   ; 
- D 3 - I - 0x003DA0 00:FD90: 53        .byte $53   ; 
- D 3 - I - 0x003DA1 00:FD91: 4B        .byte $4B   ; 
- D 3 - I - 0x003DA2 00:FD92: 43        .byte $43   ; 
- D 3 - I - 0x003DA3 00:FD93: 3B        .byte $3B   ; 
- D 3 - I - 0x003DA4 00:FD94: 33        .byte $33   ; 
- D 3 - I - 0x003DA5 00:FD95: 2B        .byte $2B   ; 
- D 3 - I - 0x003DA6 00:FD96: 04        .byte $04   ; 
- D 3 - I - 0x003DA7 00:FD97: 5B        .byte $5B   ; 
- D 3 - I - 0x003DA8 00:FD98: 53        .byte $53   ; 
- D 3 - I - 0x003DA9 00:FD99: 4B        .byte $4B   ; 
- D 3 - I - 0x003DAA 00:FD9A: 43        .byte $43   ; 
- D 3 - I - 0x003DAB 00:FD9B: 3B        .byte $3B   ; 
- D 3 - I - 0x003DAC 00:FD9C: 33        .byte $33   ; 
- D 3 - I - 0x003DAD 00:FD9D: 2B        .byte $2B   ; 
- D 3 - I - 0x003DAE 00:FD9E: E8        .byte con_cb_E8   ; 



_off006_FD9F_07:
- D 3 - I - 0x003DAF 00:FD9F: 02        .byte $02   ; 
- D 3 - I - 0x003DB0 00:FDA0: 89        .byte $89   ; 
- D 3 - I - 0x003DB1 00:FDA1: 7F        .byte $7F   ; 
- D 3 - I - 0x003DB2 00:FDA2: 40        .byte $40   ; 
- D 3 - I - 0x003DB3 00:FDA3: 72        .byte $72   ; 
- D 3 - I - 0x003DB4 00:FDA4: 13        .byte $13   ; 
- D 3 - I - 0x003DB5 00:FDA5: E8        .byte con_cb_E8   ; 



_off006_FDA6_06:
- D 3 - I - 0x003DB6 00:FDA6: 02        .byte $02   ; 
- D 3 - I - 0x003DB7 00:FDA7: 7F        .byte $7F   ; 
- D 3 - I - 0x003DB8 00:FDA8: 7F        .byte $7F   ; 
- D 3 - I - 0x003DB9 00:FDA9: 38        .byte $38   ; 
- D 3 - I - 0x003DBA 00:FDAA: 62        .byte $62   ; 
- D 3 - I - 0x003DBB 00:FDAB: 1C        .byte $1C   ; 
- D 3 - I - 0x003DBC 00:FDAC: 14        .byte $14   ; 
- D 3 - I - 0x003DBD 00:FDAD: 0C        .byte $0C   ; 
- D 3 - I - 0x003DBE 00:FDAE: 04        .byte $04   ; 
- D 3 - I - 0x003DBF 00:FDAF: 5B        .byte $5B   ; 
- D 3 - I - 0x003DC0 00:FDB0: 53        .byte $53   ; 
- D 3 - I - 0x003DC1 00:FDB1: 4B        .byte $4B   ; 
- D 3 - I - 0x003DC2 00:FDB2: 43        .byte $43   ; 
- D 3 - I - 0x003DC3 00:FDB3: 3B        .byte $3B   ; 
- D 3 - I - 0x003DC4 00:FDB4: 33        .byte $33   ; 
- D 3 - I - 0x003DC5 00:FDB5: 2B        .byte $2B   ; 
- D 3 - I - 0x003DC6 00:FDB6: EA        .byte $EA   ; 
- D 3 - I - 0x003DC7 00:FDB7: 0F        .byte $0F   ; 
- D 3 - I - 0x003DC8 00:FDB8: 23        .byte $23   ; 
- D 3 - I - 0x003DC9 00:FDB9: E8        .byte con_cb_E8   ; 



_off006_FDBA_05:
- D 3 - I - 0x003DCA 00:FDBA: 01        .byte $01   ; 
- D 3 - I - 0x003DCB 00:FDBB: 8F        .byte $8F   ; 
- D 3 - I - 0x003DCC 00:FDBC: 7F        .byte $7F   ; 
- D 3 - I - 0x003DCD 00:FDBD: 68        .byte $68   ; 
- D 3 - I - 0x003DCE 00:FDBE: 63        .byte $63   ; 
- D 3 - I - 0x003DCF 00:FDBF: 0C        .byte $0C   ; 
- D 3 - I - 0x003DD0 00:FDC0: 04        .byte $04   ; 
- D 3 - I - 0x003DD1 00:FDC1: E8        .byte con_cb_E8   ; 



_off006_FDC2_15:
- D 3 - I - 0x003DD2 00:FDC2: 01        .byte $01   ; 
- D 3 - I - 0x003DD3 00:FDC3: 07        .byte $07   ; 
- D 3 - I - 0x003DD4 00:FDC4: 7F        .byte $7F   ; 
- D 3 - I - 0x003DD5 00:FDC5: 40        .byte $40   ; 
- D 3 - I - 0x003DD6 00:FDC6: 6E        .byte $6E   ; 
- D 3 - I - 0x003DD7 00:FDC7: 2B        .byte $2B   ; 
- D 3 - I - 0x003DD8 00:FDC8: 67        .byte $67   ; 
- D 3 - I - 0x003DD9 00:FDC9: 23        .byte $23   ; 
- D 3 - I - 0x003DDA 00:FDCA: 6E        .byte $6E   ; 
- D 3 - I - 0x003DDB 00:FDCB: 1B        .byte $1B   ; 
- D 3 - I - 0x003DDC 00:FDCC: 67        .byte $67   ; 
- D 3 - I - 0x003DDD 00:FDCD: 13        .byte $13   ; 
- D 3 - I - 0x003DDE 00:FDCE: 8A        .byte $8A   ; 
- D 3 - I - 0x003DDF 00:FDCF: 0B        .byte $0B   ; 
- D 3 - I - 0x003DE0 00:FDD0: 6E        .byte $6E   ; 
- D 3 - I - 0x003DE1 00:FDD1: 03        .byte $03   ; 
- D 3 - I - 0x003DE2 00:FDD2: 67        .byte $67   ; 
- D 3 - I - 0x003DE3 00:FDD3: 52        .byte $52   ; 
- D 3 - I - 0x003DE4 00:FDD4: 6E        .byte $6E   ; 
- D 3 - I - 0x003DE5 00:FDD5: 4A        .byte $4A   ; 
- D 3 - I - 0x003DE6 00:FDD6: 67        .byte $67   ; 
- D 3 - I - 0x003DE7 00:FDD7: 3A        .byte $3A   ; 
- D 3 - I - 0x003DE8 00:FDD8: 8A        .byte $8A   ; 
- D 3 - I - 0x003DE9 00:FDD9: 2A        .byte $2A   ; 
- D 3 - I - 0x003DEA 00:FDDA: 6E        .byte $6E   ; 
- D 3 - I - 0x003DEB 00:FDDB: 1A        .byte $1A   ; 
- D 3 - I - 0x003DEC 00:FDDC: 67        .byte $67   ; 
- D 3 - I - 0x003DED 00:FDDD: 22        .byte $22   ; 
- D 3 - I - 0x003DEE 00:FDDE: 6E        .byte $6E   ; 
- D 3 - I - 0x003DEF 00:FDDF: 2A        .byte $2A   ; 
- D 3 - I - 0x003DF0 00:FDE0: 67        .byte $67   ; 
- D 3 - I - 0x003DF1 00:FDE1: 32        .byte $32   ; 
- D 3 - I - 0x003DF2 00:FDE2: 8A        .byte $8A   ; 
- D 3 - I - 0x003DF3 00:FDE3: 3A        .byte $3A   ; 
- D 3 - I - 0x003DF4 00:FDE4: 6E        .byte $6E   ; 
- D 3 - I - 0x003DF5 00:FDE5: 2A        .byte $2A   ; 
- D 3 - I - 0x003DF6 00:FDE6: 67        .byte $67   ; 
- D 3 - I - 0x003DF7 00:FDE7: 32        .byte $32   ; 
- D 3 - I - 0x003DF8 00:FDE8: 6E        .byte $6E   ; 
- D 3 - I - 0x003DF9 00:FDE9: 3A        .byte $3A   ; 
- D 3 - I - 0x003DFA 00:FDEA: 67        .byte $67   ; 
- D 3 - I - 0x003DFB 00:FDEB: 42        .byte $42   ; 
- D 3 - I - 0x003DFC 00:FDEC: 8A        .byte $8A   ; 
- D 3 - I - 0x003DFD 00:FDED: 4A        .byte $4A   ; 
- D 3 - I - 0x003DFE 00:FDEE: 6E        .byte $6E   ; 
- D 3 - I - 0x003DFF 00:FDEF: 13        .byte $13   ; 
- D 3 - I - 0x003E00 00:FDF0: 67        .byte $67   ; 
- D 3 - I - 0x003E01 00:FDF1: 0B        .byte $0B   ; 
- D 3 - I - 0x003E02 00:FDF2: 6E        .byte $6E   ; 
- D 3 - I - 0x003E03 00:FDF3: 03        .byte $03   ; 
- D 3 - I - 0x003E04 00:FDF4: 67        .byte $67   ; 
- D 3 - I - 0x003E05 00:FDF5: 5A        .byte $5A   ; 
- D 3 - I - 0x003E06 00:FDF6: 8A        .byte $8A   ; 
- D 3 - I - 0x003E07 00:FDF7: 52        .byte $52   ; 
- D 3 - I - 0x003E08 00:FDF8: E8        .byte con_cb_E8   ; 



_off006_FDF9_16:
- D 3 - I - 0x003E09 00:FDF9: 02        .byte $02   ; 
- D 3 - I - 0x003E0A 00:FDFA: 07        .byte $07   ; 
- D 3 - I - 0x003E0B 00:FDFB: 7F        .byte $7F   ; 
- D 3 - I - 0x003E0C 00:FDFC: 40        .byte $40   ; 
- D 3 - I - 0x003E0D 00:FDFD: 75        .byte $75   ; 
- D 3 - I - 0x003E0E 00:FDFE: 13        .byte $13   ; 
- D 3 - I - 0x003E0F 00:FDFF: 6E        .byte $6E   ; 
- D 3 - I - 0x003E10 00:FE00: 03        .byte $03   ; 
- D 3 - I - 0x003E11 00:FE01: 67        .byte $67   ; 
- D 3 - I - 0x003E12 00:FE02: 52        .byte $52   ; 
- D 3 - I - 0x003E13 00:FE03: 75        .byte $75   ; 
- D 3 - I - 0x003E14 00:FE04: 4A        .byte $4A   ; 
- D 3 - I - 0x003E15 00:FE05: 2A        .byte $2A   ; 
- D 3 - I - 0x003E16 00:FE06: 3A        .byte $3A   ; 
- D 3 - I - 0x003E17 00:FE07: 2A        .byte $2A   ; 
- D 3 - I - 0x003E18 00:FE08: 8A        .byte $8A   ; 
- D 3 - I - 0x003E19 00:FE09: 13        .byte $13   ; 
- D 3 - I - 0x003E1A 00:FE0A: 6E        .byte $6E   ; 
- D 3 - I - 0x003E1B 00:FE0B: 03        .byte $03   ; 
- D 3 - I - 0x003E1C 00:FE0C: 67        .byte $67   ; 
- D 3 - I - 0x003E1D 00:FE0D: 13        .byte $13   ; 
- D 3 - I - 0x003E1E 00:FE0E: 6E        .byte $6E   ; 
- D 3 - I - 0x003E1F 00:FE0F: 1B        .byte $1B   ; 
- D 3 - I - 0x003E20 00:FE10: 67        .byte $67   ; 
- D 3 - I - 0x003E21 00:FE11: 13        .byte $13   ; 
- D 3 - I - 0x003E22 00:FE12: 75        .byte $75   ; 
- D 3 - I - 0x003E23 00:FE13: 03        .byte $03   ; 
- D 3 - I - 0x003E24 00:FE14: 3A        .byte $3A   ; 
- D 3 - I - 0x003E25 00:FE15: 6E        .byte $6E   ; 
- D 3 - I - 0x003E26 00:FE16: 03        .byte $03   ; 
- D 3 - I - 0x003E27 00:FE17: 67        .byte $67   ; 
- D 3 - I - 0x003E28 00:FE18: 13        .byte $13   ; 
- D 3 - I - 0x003E29 00:FE19: 6E        .byte $6E   ; 
- D 3 - I - 0x003E2A 00:FE1A: 1B        .byte $1B   ; 
- D 3 - I - 0x003E2B 00:FE1B: 67        .byte $67   ; 
- D 3 - I - 0x003E2C 00:FE1C: 23        .byte $23   ; 
- D 3 - I - 0x003E2D 00:FE1D: 8A        .byte $8A   ; 
- D 3 - I - 0x003E2E 00:FE1E: 2B        .byte $2B   ; 
- D 3 - I - 0x003E2F 00:FE1F: 6E        .byte $6E   ; 
- D 3 - I - 0x003E30 00:FE20: 52        .byte $52   ; 
- D 3 - I - 0x003E31 00:FE21: 67        .byte $67   ; 
- D 3 - I - 0x003E32 00:FE22: 2B        .byte $2B   ; 
- D 3 - I - 0x003E33 00:FE23: 6E        .byte $6E   ; 
- D 3 - I - 0x003E34 00:FE24: 23        .byte $23   ; 
- D 3 - I - 0x003E35 00:FE25: 67        .byte $67   ; 
- D 3 - I - 0x003E36 00:FE26: 1B        .byte $1B   ; 
- D 3 - I - 0x003E37 00:FE27: 8A        .byte $8A   ; 
- D 3 - I - 0x003E38 00:FE28: 13        .byte $13   ; 
- D 3 - I - 0x003E39 00:FE29: E8        .byte con_cb_E8   ; 



_off006_FE2A_17:
- D 3 - I - 0x003E3A 00:FE2A: 03        .byte $03   ; 
- D 3 - I - 0x003E3B 00:FE2B: 5D        .byte $5D   ; 
- D 3 - I - 0x003E3C 00:FE2C: 7F        .byte $7F   ; 
- D 3 - I - 0x003E3D 00:FE2D: 08        .byte $08   ; 
- D 3 - I - 0x003E3E 00:FE2E: 75        .byte $75   ; 
- D 3 - I - 0x003E3F 00:FE2F: 52        .byte $52   ; 
- D 3 - I - 0x003E40 00:FE30: 6E        .byte $6E   ; 
- D 3 - I - 0x003E41 00:FE31: 53        .byte $53   ; 
- D 3 - I - 0x003E42 00:FE32: 67        .byte $67   ; 
- D 3 - I - 0x003E43 00:FE33: 2B        .byte $2B   ; 
- D 3 - I - 0x003E44 00:FE34: 75        .byte $75   ; 
- D 3 - I - 0x003E45 00:FE35: 2A        .byte $2A   ; 
- D 3 - I - 0x003E46 00:FE36: 2B        .byte $2B   ; 
- D 3 - I - 0x003E47 00:FE37: 52        .byte $52   ; 
- D 3 - I - 0x003E48 00:FE38: 6E        .byte $6E   ; 
- D 3 - I - 0x003E49 00:FE39: 53        .byte $53   ; 
- D 3 - I - 0x003E4A 00:FE3A: 67        .byte $67   ; 
- D 3 - I - 0x003E4B 00:FE3B: 2B        .byte $2B   ; 
- D 3 - I - 0x003E4C 00:FE3C: 75        .byte $75   ; 
- D 3 - I - 0x003E4D 00:FE3D: 52        .byte $52   ; 
- D 3 - I - 0x003E4E 00:FE3E: 53        .byte $53   ; 
- D 3 - I - 0x003E4F 00:FE3F: 1A        .byte $1A   ; 
- D 3 - I - 0x003E50 00:FE40: 6E        .byte $6E   ; 
- D 3 - I - 0x003E51 00:FE41: 1B        .byte $1B   ; 
- D 3 - I - 0x003E52 00:FE42: 67        .byte $67   ; 
- D 3 - I - 0x003E53 00:FE43: 52        .byte $52   ; 
- D 3 - I - 0x003E54 00:FE44: 75        .byte $75   ; 
- D 3 - I - 0x003E55 00:FE45: 1A        .byte $1A   ; 
- D 3 - I - 0x003E56 00:FE46: 1B        .byte $1B   ; 
- D 3 - I - 0x003E57 00:FE47: 2A        .byte $2A   ; 
- D 3 - I - 0x003E58 00:FE48: 6E        .byte $6E   ; 
- D 3 - I - 0x003E59 00:FE49: 2B        .byte $2B   ; 
- D 3 - I - 0x003E5A 00:FE4A: 67        .byte $67   ; 
- D 3 - I - 0x003E5B 00:FE4B: 03        .byte $03   ; 
- D 3 - I - 0x003E5C 00:FE4C: 75        .byte $75   ; 
- D 3 - I - 0x003E5D 00:FE4D: 2A        .byte $2A   ; 
- D 3 - I - 0x003E5E 00:FE4E: 2B        .byte $2B   ; 
- D 3 - I - 0x003E5F 00:FE4F: 6E        .byte $6E   ; 
- D 3 - I - 0x003E60 00:FE50: 52        .byte $52   ; 
- D 3 - I - 0x003E61 00:FE51: 67        .byte $67   ; 
- D 3 - I - 0x003E62 00:FE52: 2B        .byte $2B   ; 
- D 3 - I - 0x003E63 00:FE53: 6E        .byte $6E   ; 
- D 3 - I - 0x003E64 00:FE54: 53        .byte $53   ; 
- D 3 - I - 0x003E65 00:FE55: 67        .byte $67   ; 
- D 3 - I - 0x003E66 00:FE56: 2B        .byte $2B   ; 
- D 3 - I - 0x003E67 00:FE57: 8A        .byte $8A   ; 
- D 3 - I - 0x003E68 00:FE58: 52        .byte $52   ; 
- D 3 - I - 0x003E69 00:FE59: E8        .byte con_cb_E8   ; 



_off006_FE5A_11:
- D 3 - I - 0x003E6A 00:FE5A: 01        .byte $01   ; 
- D 3 - I - 0x003E6B 00:FE5B: 03        .byte $03   ; 
- D 3 - I - 0x003E6C 00:FE5C: 7F        .byte $7F   ; 
- D 3 - I - 0x003E6D 00:FE5D: 40        .byte $40   ; 
- D 3 - I - 0x003E6E 00:FE5E: 6C        .byte $6C   ; 
- D 3 - I - 0x003E6F 00:FE5F: 52        .byte $52   ; 
- D 3 - I - 0x003E70 00:FE60: 64        .byte $64   ; 
- D 3 - I - 0x003E71 00:FE61: 03        .byte $03   ; 
- D 3 - I - 0x003E72 00:FE62: 6C        .byte $6C   ; 
- D 3 - I - 0x003E73 00:FE63: 13        .byte $13   ; 
- D 3 - I - 0x003E74 00:FE64: 64        .byte $64   ; 
- D 3 - I - 0x003E75 00:FE65: 52        .byte $52   ; 
- D 3 - I - 0x003E76 00:FE66: 70        .byte $70   ; 
- D 3 - I - 0x003E77 00:FE67: 3A        .byte $3A   ; 
- D 3 - I - 0x003E78 00:FE68: 2A        .byte $2A   ; 
- D 3 - I - 0x003E79 00:FE69: 6C        .byte $6C   ; 
- D 3 - I - 0x003E7A 00:FE6A: 2A        .byte $2A   ; 
- D 3 - I - 0x003E7B 00:FE6B: 64        .byte $64   ; 
- D 3 - I - 0x003E7C 00:FE6C: 3A        .byte $3A   ; 
- D 3 - I - 0x003E7D 00:FE6D: 70        .byte $70   ; 
- D 3 - I - 0x003E7E 00:FE6E: 4A        .byte $4A   ; 
- D 3 - I - 0x003E7F 00:FE6F: 80        .byte $80   ; 
- D 3 - I - 0x003E80 00:FE70: 52        .byte $52   ; 
- - - - - - 0x003E81 00:FE71: E8        .byte con_cb_E8   ; 



_off006_FE72_12:
- D 3 - I - 0x003E82 00:FE72: 02        .byte $02   ; 
- D 3 - I - 0x003E83 00:FE73: C4        .byte $C4   ; 
- D 3 - I - 0x003E84 00:FE74: 7F        .byte $7F   ; 
- D 3 - I - 0x003E85 00:FE75: 40        .byte $40   ; 
- D 3 - I - 0x003E86 00:FE76: 6C        .byte $6C   ; 
- D 3 - I - 0x003E87 00:FE77: 52        .byte $52   ; 
- D 3 - I - 0x003E88 00:FE78: 64        .byte $64   ; 
- D 3 - I - 0x003E89 00:FE79: 03        .byte $03   ; 
- D 3 - I - 0x003E8A 00:FE7A: 6C        .byte $6C   ; 
- D 3 - I - 0x003E8B 00:FE7B: 13        .byte $13   ; 
- D 3 - I - 0x003E8C 00:FE7C: 64        .byte $64   ; 
- D 3 - I - 0x003E8D 00:FE7D: 52        .byte $52   ; 
- D 3 - I - 0x003E8E 00:FE7E: 70        .byte $70   ; 
- D 3 - I - 0x003E8F 00:FE7F: 3A        .byte $3A   ; 
- D 3 - I - 0x003E90 00:FE80: 2A        .byte $2A   ; 
- D 3 - I - 0x003E91 00:FE81: 60        .byte $60   ; 
- D 3 - I - 0x003E92 00:FE82: 29        .byte $29   ; 
- D 3 - I - 0x003E93 00:FE83: 80        .byte $80   ; 
- D 3 - I - 0x003E94 00:FE84: 51        .byte $51   ; 
- - - - - - 0x003E95 00:FE85: E8        .byte con_cb_E8   ;  



_off006_FE86_00:
- D 3 - I - 0x003E96 00:FE86: 01        .byte $01   ; 
- D 3 - I - 0x003E97 00:FE87: 87        .byte $87   ; 
- D 3 - I - 0x003E98 00:FE88: 7F        .byte $7F   ; 
- D 3 - I - 0x003E99 00:FE89: 40        .byte $40   ; 
- D 3 - I - 0x003E9A 00:FE8A: 68        .byte $68   ; 
- D 3 - I - 0x003E9B 00:FE8B: 3B        .byte $3B   ; 
- D 3 - I - 0x003E9C 00:FE8C: 64        .byte $64   ; 
- D 3 - I - 0x003E9D 00:FE8D: 23        .byte $23   ; 
- D 3 - I - 0x003E9E 00:FE8E: 2B        .byte $2B   ; 
- D 3 - I - 0x003E9F 00:FE8F: 72        .byte $72   ; 
- D 3 - I - 0x003EA0 00:FE90: 3B        .byte $3B   ; 
- D 3 - I - 0x003EA1 00:FE91: E8        .byte con_cb_E8   ; 



_off006_FE92_01:
- D 3 - I - 0x003EA2 00:FE92: 01        .byte $01   ; 
- D 3 - I - 0x003EA3 00:FE93: 05        .byte $05   ; 
- D 3 - I - 0x003EA4 00:FE94: 7F        .byte $7F   ; 
- D 3 - I - 0x003EA5 00:FE95: 40        .byte $40   ; 
- D 3 - I - 0x003EA6 00:FE96: EF        .byte $EF   ; 
- D 3 - I - 0x003EA7 00:FE97: 6C        .byte $6C   ; 
- D 3 - I - 0x003EA8 00:FE98: 0B        .byte $0B   ; 
- D 3 - I - 0x003EA9 00:FE99: 63        .byte $63   ; 
- D 3 - I - 0x003EAA 00:FE9A: 03        .byte $03   ; 
- D 3 - I - 0x003EAB 00:FE9B: 69        .byte $69   ; 
- D 3 - I - 0x003EAC 00:FE9C: 52        .byte $52   ; 
- D 3 - I - 0x003EAD 00:FE9D: 63        .byte $63   ; 
- D 3 - I - 0x003EAE 00:FE9E: 1A        .byte $1A   ; 
- D 3 - I - 0x003EAF 00:FE9F: 69        .byte $69   ; 
- D 3 - I - 0x003EB0 00:FEA0: 32        .byte $32   ; 
- D 3 - I - 0x003EB1 00:FEA1: 63        .byte $63   ; 
- D 3 - I - 0x003EB2 00:FEA2: 3A        .byte $3A   ; 
- D 3 - I - 0x003EB3 00:FEA3: 69        .byte $69   ; 
- D 3 - I - 0x003EB4 00:FEA4: 1A        .byte $1A   ; 
- D 3 - I - 0x003EB5 00:FEA5: 63        .byte $63   ; 
- D 3 - I - 0x003EB6 00:FEA6: 0A        .byte $0A   ; 
- D 3 - I - 0x003EB7 00:FEA7: F6        .byte $F6   ; 
- D 3 - I - 0x003EB8 00:FEA8: 03        .byte $03   ; 
- D 3 - I - 0x003EB9 00:FEA9: 35        .byte $35   ; 
- D 3 - I - 0x003EBA 00:FEAA: F3        .byte $F3   ; 
- D 3 - I - 0x003EBB 00:FEAB: 02        .byte $02   ; 
- D 3 - I - 0x003EBC 00:FEAC: 35        .byte $35   ; 
- D 3 - I - 0x003EBD 00:FEAD: F0        .byte $F0   ; 
- D 3 - I - 0x003EBE 00:FEAE: 02        .byte $02   ; 
- D 3 - I - 0x003EBF 00:FEAF: 27        .byte $27   ; 
- D 3 - I - 0x003EC0 00:FEB0: 6C        .byte $6C   ; 
- D 3 - I - 0x003EC1 00:FEB1: 1A        .byte $1A   ; 
- D 3 - I - 0x003EC2 00:FEB2: 69        .byte $69   ; 
- D 3 - I - 0x003EC3 00:FEB3: 0A        .byte $0A   ; 
- D 3 - I - 0x003EC4 00:FEB4: 63        .byte $63   ; 
- D 3 - I - 0x003EC5 00:FEB5: 1A        .byte $1A   ; 
- D 3 - I - 0x003EC6 00:FEB6: 78        .byte $78   ; 
- D 3 - I - 0x003EC7 00:FEB7: 60        .byte $60   ; 
- D 3 - I - 0x003EC8 00:FEB8: E8        .byte $E8   ; 
- D 3 - I - 0x003EC9 00:FEB9: 69        .byte $69   ; 
- D 3 - I - 0x003ECA 00:FEBA: 1A        .byte $1A   ; 
- D 3 - I - 0x003ECB 00:FEBB: 63        .byte $63   ; 
- D 3 - I - 0x003ECC 00:FEBC: 0A        .byte $0A   ; 
- D 3 - I - 0x003ECD 00:FEBD: 69        .byte $69   ; 
- D 3 - I - 0x003ECE 00:FEBE: 1A        .byte $1A   ; 
- D 3 - I - 0x003ECF 00:FEBF: 63        .byte $63   ; 
- D 3 - I - 0x003ED0 00:FEC0: 32        .byte $32   ; 
- D 3 - I - 0x003ED1 00:FEC1: 69        .byte $69   ; 
- D 3 - I - 0x003ED2 00:FEC2: 60        .byte $60   ; 
- D 3 - I - 0x003ED3 00:FEC3: 6C        .byte $6C   ; 
- D 3 - I - 0x003ED4 00:FEC4: 3A        .byte $3A   ; 
- D 3 - I - 0x003ED5 00:FEC5: F9        .byte $F9   ; 
- D 3 - I - 0x003ED6 00:FEC6: 05        .byte $05   ; 
- D 3 - I - 0x003ED7 00:FEC7: 69        .byte $69   ; 
- D 3 - I - 0x003ED8 00:FEC8: 1A        .byte $1A   ; 
- D 3 - I - 0x003ED9 00:FEC9: 63        .byte $63   ; 
- D 3 - I - 0x003EDA 00:FECA: 0A        .byte $0A   ; 
- D 3 - I - 0x003EDB 00:FECB: 69        .byte $69   ; 
- D 3 - I - 0x003EDC 00:FECC: 1A        .byte $1A   ; 
- D 3 - I - 0x003EDD 00:FECD: 63        .byte $63   ; 
- D 3 - I - 0x003EDE 00:FECE: 0A        .byte $0A   ; 
- D 3 - I - 0x003EDF 00:FECF: 69        .byte $69   ; 
- D 3 - I - 0x003EE0 00:FED0: 60        .byte $60   ; 
- D 3 - I - 0x003EE1 00:FED1: 6C        .byte $6C   ; 
- D 3 - I - 0x003EE2 00:FED2: 1A        .byte $1A   ; 
- D 3 - I - 0x003EE3 00:FED3: F3        .byte $F3   ; 
- D 3 - I - 0x003EE4 00:FED4: 02        .byte $02   ; 
- D 3 - I - 0x003EE5 00:FED5: 62        .byte $62   ; 
- D 3 - I - 0x003EE6 00:FED6: 6C        .byte $6C   ; 
- D 3 - I - 0x003EE7 00:FED7: 33        .byte $33   ; 
- D 3 - I - 0x003EE8 00:FED8: 63        .byte $63   ; 
- D 3 - I - 0x003EE9 00:FED9: 2B        .byte $2B   ; 
- D 3 - I - 0x003EEA 00:FEDA: 69        .byte $69   ; 
- D 3 - I - 0x003EEB 00:FEDB: 1B        .byte $1B   ; 
- D 3 - I - 0x003EEC 00:FEDC: 63        .byte $63   ; 
- D 3 - I - 0x003EED 00:FEDD: 42        .byte $42   ; 
- D 3 - I - 0x003EEE 00:FEDE: 69        .byte $69   ; 
- D 3 - I - 0x003EEF 00:FEDF: 5A        .byte $5A   ; 
- D 3 - I - 0x003EF0 00:FEE0: 63        .byte $63   ; 
- D 3 - I - 0x003EF1 00:FEE1: 03        .byte $03   ; 
- D 3 - I - 0x003EF2 00:FEE2: 69        .byte $69   ; 
- D 3 - I - 0x003EF3 00:FEE3: 42        .byte $42   ; 
- D 3 - I - 0x003EF4 00:FEE4: 63        .byte $63   ; 
- D 3 - I - 0x003EF5 00:FEE5: 32        .byte $32   ; 
- D 3 - I - 0x003EF6 00:FEE6: 69        .byte $69   ; 
- D 3 - I - 0x003EF7 00:FEE7: 42        .byte $42   ; 
- D 3 - I - 0x003EF8 00:FEE8: 63        .byte $63   ; 
- D 3 - I - 0x003EF9 00:FEE9: 32        .byte $32   ; 
- D 3 - I - 0x003EFA 00:FEEA: 69        .byte $69   ; 
- D 3 - I - 0x003EFB 00:FEEB: 42        .byte $42   ; 
- D 3 - I - 0x003EFC 00:FEEC: 63        .byte $63   ; 
- D 3 - I - 0x003EFD 00:FEED: 5A        .byte $5A   ; 
- D 3 - I - 0x003EFE 00:FEEE: 69        .byte $69   ; 
- D 3 - I - 0x003EFF 00:FEEF: 60        .byte $60   ; 
- D 3 - I - 0x003F00 00:FEF0: 6C        .byte $6C   ; 
- D 3 - I - 0x003F01 00:FEF1: 03        .byte $03   ; 
- D 3 - I - 0x003F02 00:FEF2: F9        .byte $F9   ; 
- D 3 - I - 0x003F03 00:FEF3: 05        .byte $05   ; 
- D 3 - I - 0x003F04 00:FEF4: 6C        .byte $6C   ; 
- D 3 - I - 0x003F05 00:FEF5: 43        .byte $43   ; 
- D 3 - I - 0x003F06 00:FEF6: 63        .byte $63   ; 
- D 3 - I - 0x003F07 00:FEF7: 3B        .byte $3B   ; 
- D 3 - I - 0x003F08 00:FEF8: 69        .byte $69   ; 
- D 3 - I - 0x003F09 00:FEF9: 2B        .byte $2B   ; 
- D 3 - I - 0x003F0A 00:FEFA: 63        .byte $63   ; 
- D 3 - I - 0x003F0B 00:FEFB: 1B        .byte $1B   ; 
- D 3 - I - 0x003F0C 00:FEFC: 69        .byte $69   ; 
- D 3 - I - 0x003F0D 00:FEFD: 2B        .byte $2B   ; 
- D 3 - I - 0x003F0E 00:FEFE: 6C        .byte $6C   ; 
- D 3 - I - 0x003F0F 00:FEFF: 3B        .byte $3B   ; 
- D 3 - I - 0x003F10 00:FF00: 33        .byte $33   ; 
- D 3 - I - 0x003F11 00:FF01: 63        .byte $63   ; 
- D 3 - I - 0x003F12 00:FF02: 2B        .byte $2B   ; 
- D 3 - I - 0x003F13 00:FF03: 69        .byte $69   ; 
- D 3 - I - 0x003F14 00:FF04: 1B        .byte $1B   ; 
- D 3 - I - 0x003F15 00:FF05: 63        .byte $63   ; 
- D 3 - I - 0x003F16 00:FF06: 0B        .byte $0B   ; 
- D 3 - I - 0x003F17 00:FF07: 69        .byte $69   ; 
- D 3 - I - 0x003F18 00:FF08: 1B        .byte $1B   ; 
- D 3 - I - 0x003F19 00:FF09: 6C        .byte $6C   ; 
- D 3 - I - 0x003F1A 00:FF0A: 2B        .byte $2B   ; 
- D 3 - I - 0x003F1B 00:FF0B: F9        .byte $F9   ; 
- D 3 - I - 0x003F1C 00:FF0C: 05        .byte $05   ; 



_off006_FF0D_18:
- D 3 - I - 0x003F1D 00:FF0D: 02        .byte $02   ; 
- D 3 - I - 0x003F1E 00:FF0E: 90        .byte $90   ; 
- D 3 - I - 0x003F1F 00:FF0F: 7F        .byte $7F   ; 
- D 3 - I - 0x003F20 00:FF10: 40        .byte $40   ; 
- D 3 - I - 0x003F21 00:FF11: EF        .byte $EF   ; 
- D 3 - I - 0x003F22 00:FF12: 63        .byte $63   ; 
- D 3 - I - 0x003F23 00:FF13: 60        .byte $60   ; 
- D 3 - I - 0x003F24 00:FF14: EA        .byte $EA   ; 
- D 3 - I - 0x003F25 00:FF15: 03        .byte $03   ; 
- D 3 - I - 0x003F26 00:FF16: 6C        .byte $6C   ; 
- D 3 - I - 0x003F27 00:FF17: 18        .byte $18   ; 
- D 3 - I - 0x003F28 00:FF18: 19        .byte $19   ; 
- D 3 - I - 0x003F29 00:FF19: 09        .byte $09   ; 
- D 3 - I - 0x003F2A 00:FF1A: 01        .byte $01   ; 
- D 3 - I - 0x003F2B 00:FF1B: 69        .byte $69   ; 
- D 3 - I - 0x003F2C 00:FF1C: 50        .byte $50   ; 
- D 3 - I - 0x003F2D 00:FF1D: 63        .byte $63   ; 
- D 3 - I - 0x003F2E 00:FF1E: 50        .byte $50   ; 
- D 3 - I - 0x003F2F 00:FF1F: F7        .byte $F7   ; 
- D 3 - I - 0x003F30 00:FF20: 03        .byte $03   ; 
- D 3 - I - 0x003F31 00:FF21: 21        .byte $21   ; 
- D 3 - I - 0x003F32 00:FF22: F4        .byte $F4   ; 
- D 3 - I - 0x003F33 00:FF23: 02        .byte $02   ; 
- D 3 - I - 0x003F34 00:FF24: 21        .byte $21   ; 
- D 3 - I - 0x003F35 00:FF25: F1        .byte $F1   ; 
- D 3 - I - 0x003F36 00:FF26: 02        .byte $02   ; 
- D 3 - I - 0x003F37 00:FF27: 1B        .byte $1B   ; 
- D 3 - I - 0x003F38 00:FF28: 6C        .byte $6C   ; 
- D 3 - I - 0x003F39 00:FF29: 40        .byte $40   ; 
- D 3 - I - 0x003F3A 00:FF2A: 38        .byte $38   ; 
- D 3 - I - 0x003F3B 00:FF2B: 28        .byte $28   ; 
- D 3 - I - 0x003F3C 00:FF2C: F9        .byte $F9   ; 
- D 3 - I - 0x003F3D 00:FF2D: 09        .byte $09   ; 
- D 3 - I - 0x003F3E 00:FF2E: 6C        .byte $6C   ; 
- D 3 - I - 0x003F3F 00:FF2F: 30        .byte $30   ; 
- D 3 - I - 0x003F40 00:FF30: 28        .byte $28   ; 
- D 3 - I - 0x003F41 00:FF31: 18        .byte $18   ; 
- D 3 - I - 0x003F42 00:FF32: F4        .byte $F4   ; 
- D 3 - I - 0x003F43 00:FF33: 02        .byte $02   ; 
- D 3 - I - 0x003F44 00:FF34: 36        .byte $36   ; 
- D 3 - I - 0x003F45 00:FF35: 40        .byte $40   ; 
- D 3 - I - 0x003F46 00:FF36: 41        .byte $41   ; 
- D 3 - I - 0x003F47 00:FF37: 31        .byte $31   ; 
- D 3 - I - 0x003F48 00:FF38: 29        .byte $29   ; 
- D 3 - I - 0x003F49 00:FF39: 69        .byte $69   ; 
- D 3 - I - 0x003F4A 00:FF3A: 19        .byte $19   ; 
- D 3 - I - 0x003F4B 00:FF3B: 63        .byte $63   ; 
- D 3 - I - 0x003F4C 00:FF3C: 19        .byte $19   ; 
- D 3 - I - 0x003F4D 00:FF3D: 6C        .byte $6C   ; 
- D 3 - I - 0x003F4E 00:FF3E: 09        .byte $09   ; 
- D 3 - I - 0x003F4F 00:FF3F: 01        .byte $01   ; 
- D 3 - I - 0x003F50 00:FF40: 50        .byte $50   ; 
- D 3 - I - 0x003F51 00:FF41: F9        .byte $F9   ; 
- D 3 - I - 0x003F52 00:FF42: 09        .byte $09   ; 
- D 3 - I - 0x003F53 00:FF43: 6C        .byte $6C   ; 
- D 3 - I - 0x003F54 00:FF44: 50        .byte $50   ; 
- D 3 - I - 0x003F55 00:FF45: 69        .byte $69   ; 
- D 3 - I - 0x003F56 00:FF46: 51        .byte $51   ; 
- D 3 - I - 0x003F57 00:FF47: 6C        .byte $6C   ; 
- D 3 - I - 0x003F58 00:FF48: 41        .byte $41   ; 
- D 3 - I - 0x003F59 00:FF49: 63        .byte $63   ; 
- D 3 - I - 0x003F5A 00:FF4A: 41        .byte $41   ; 
- D 3 - I - 0x003F5B 00:FF4B: 6C        .byte $6C   ; 
- D 3 - I - 0x003F5C 00:FF4C: 39        .byte $39   ; 
- D 3 - I - 0x003F5D 00:FF4D: 40        .byte $40   ; 
- D 3 - I - 0x003F5E 00:FF4E: 69        .byte $69   ; 
- D 3 - I - 0x003F5F 00:FF4F: 41        .byte $41   ; 
- D 3 - I - 0x003F60 00:FF50: 6C        .byte $6C   ; 
- D 3 - I - 0x003F61 00:FF51: 31        .byte $31   ; 
- D 3 - I - 0x003F62 00:FF52: 63        .byte $63   ; 
- D 3 - I - 0x003F63 00:FF53: 31        .byte $31   ; 
- D 3 - I - 0x003F64 00:FF54: 6C        .byte $6C   ; 
- D 3 - I - 0x003F65 00:FF55: 29        .byte $29   ; 
- D 3 - I - 0x003F66 00:FF56: 18        .byte $18   ; 
- D 3 - I - 0x003F67 00:FF57: 19        .byte $19   ; 
- D 3 - I - 0x003F68 00:FF58: 09        .byte $09   ; 
- D 3 - I - 0x003F69 00:FF59: 01        .byte $01   ; 
- D 3 - I - 0x003F6A 00:FF5A: 69        .byte $69   ; 
- D 3 - I - 0x003F6B 00:FF5B: 50        .byte $50   ; 
- D 3 - I - 0x003F6C 00:FF5C: 63        .byte $63   ; 
- D 3 - I - 0x003F6D 00:FF5D: 30        .byte $30   ; 
- D 3 - I - 0x003F6E 00:FF5E: 69        .byte $69   ; 
- D 3 - I - 0x003F6F 00:FF5F: 28        .byte $28   ; 
- D 3 - I - 0x003F70 00:FF60: 6F        .byte $6F   ; 
- D 3 - I - 0x003F71 00:FF61: 18        .byte $18   ; 
- D 3 - I - 0x003F72 00:FF62: 6C        .byte $6C   ; 
- D 3 - I - 0x003F73 00:FF63: 60        .byte $60   ; 
- D 3 - I - 0x003F74 00:FF64: E8        .byte con_cb_E8   ; 



loc_FF65:
C D 3 - - - 0x003F75 00:FF65: A9 00     LDA #$00
C - - - - - 0x003F77 00:FF67: 85 7A     STA ram_current_round
C - - - - - 0x003F79 00:FF69: 85 7D     STA ram_rounds_counter
C - - - - - 0x003F7B 00:FF6B: A9 01     LDA #$01
C - - - - - 0x003F7D 00:FF6D: 85 77     STA ram_0077
C - - - - - 0x003F7F 00:FF6F: 20 A7 CA  JSR sub_CAA7_clear_data_of_all_objects
C - - - - - 0x003F82 00:FF72: 20 41 C2  JSR sub_C241_disable_rendering
C - - - - - 0x003F85 00:FF75: 20 49 CD  JSR sub_CD49
C - - - - - 0x003F88 00:FF78: 20 5B E3  JSR sub_E35B
C - - - - - 0x003F8B 00:FF7B: 20 C5 E5  JSR sub_E5C5
C - - - - - 0x003F8E 00:FF7E: 20 62 E8  JSR sub_E862
C - - - - - 0x003F91 00:FF81: 20 01 F0  JSR sub_F001
C - - - - - 0x003F94 00:FF84: 20 39 C2  JSR sub_C239_enable_rendering
C - - - - - 0x003F97 00:FF87: A2 00     LDX #$00
bra_FF89_loop:
C - - - - - 0x003F99 00:FF89: BD 00 02  LDA ram_0200,X
C - - - - - 0x003F9C 00:FF8C: 9D 00 03  STA ram_0300,X
C - - - - - 0x003F9F 00:FF8F: E8        INX
C - - - - - 0x003FA0 00:FF90: D0 F7     BNE bra_FF89_loop
C - - - - - 0x003FA2 00:FF92: 20 C1 F3  JSR sub_F3C1
C - - - - - 0x003FA5 00:FF95: 20 F1 D7  JSR sub_D7F1
C - - - - - 0x003FA8 00:FF98: 20 46 D8  JSR sub_D846
C - - - - - 0x003FAB 00:FF9B: A9 00     LDA #$00
C - - - - - 0x003FAD 00:FF9D: 85 4B     STA ram_004B
C - - - - - 0x003FAF 00:FF9F: 85 4F     STA ram_004F
C - - - - - 0x003FB1 00:FFA1: 85 31     STA ram_0031
C - - - - - 0x003FB3 00:FFA3: 85 3C     STA ram_003C
C - - - - - 0x003FB5 00:FFA5: 85 3D     STA ram_003D
C - - - - - 0x003FB7 00:FFA7: A9 02     LDA #$02
C - - - - - 0x003FB9 00:FFA9: 8D 0F 04  STA ram_040F
C - - - - - 0x003FBC 00:FFAC: A2 20     LDX #$20
bra_FFAE_loop:
C - - - - - 0x003FBE 00:FFAE: A9 02     LDA #$02
C - - - - - 0x003FC0 00:FFB0: 9D 0F 04  STA ram_040F,X
C - - - - - 0x003FC3 00:FFB3: 8A        TXA
C - - - - - 0x003FC4 00:FFB4: 18        CLC
C - - - - - 0x003FC5 00:FFB5: 69 10     ADC #$10
C - - - - - 0x003FC7 00:FFB7: AA        TAX
C - - - - - 0x003FC8 00:FFB8: E4 68     CPX ram_0068
C - - - - - 0x003FCA 00:FFBA: D0 F2     BNE bra_FFAE_loop
bra_FFBC_loop:
C - - - - - 0x003FCC 00:FFBC: 20 41 C1  JSR sub_C141
C - - - - - 0x003FCF 00:FFBF: 20 60 CB  JSR sub_CB60
C - - - - - 0x003FD2 00:FFC2: 20 E6 F2  JSR sub_F2E6
C - - - - - 0x003FD5 00:FFC5: A5 4F     LDA ram_004F
C - - - - - 0x003FD7 00:FFC7: 05 4B     ORA ram_004B
C - - - - - 0x003FD9 00:FFC9: D0 10     BNE bra_FFDB
C - - - - - 0x003FDB 00:FFCB: A5 24     LDA ram_0024
C - - - - - 0x003FDD 00:FFCD: 29 03     AND #$03
C - - - - - 0x003FDF 00:FFCF: C9 01     CMP #$01
C - - - - - 0x003FE1 00:FFD1: F0 08     BEQ bra_FFDB
C - - - - - 0x003FE3 00:FFD3: A5 25     LDA ram_0025
C - - - - - 0x003FE5 00:FFD5: 29 03     AND #$03
C - - - - - 0x003FE7 00:FFD7: C9 01     CMP #$01
C - - - - - 0x003FE9 00:FFD9: D0 E1     BNE bra_FFBC_loop
bra_FFDB:
C - - - - - 0x003FEB 00:FFDB: 20 41 C1  JSR sub_C141
C - - - - - 0x003FEE 00:FFDE: 4C 4F C8  JMP loc_C84F



tbl_FFE1:
- D 3 - - - 0x003FF1 00:FFE1: 85        .byte $85   ; 00
- D 3 - - - 0x003FF2 00:FFE2: 11        .byte $11   ; 01
- D 3 - - - 0x003FF3 00:FFE3: C8        .byte $C8   ; 02
- D 3 - - - 0x003FF4 00:FFE4: 40        .byte $40   ; 03
- D 3 - - - 0x003FF5 00:FFE5: D5        .byte $D5   ; 04
- D 3 - - - 0x003FF6 00:FFE6: 21        .byte $21   ; 05
- D 3 - - - 0x003FF7 00:FFE7: C4        .byte $C4   ; 06
- D 3 - - - 0x003FF8 00:FFE8: 85        .byte $85   ; 07
- D 3 - - - 0x003FF9 00:FFE9: 15        .byte $15   ; 08
- D 3 - - - 0x003FFA 00:FFEA: 84        .byte $84   ; 09
- D 3 - - - 0x003FFB 00:FFEB: 40        .byte $40   ; 0A
- D 3 - - - 0x003FFC 00:FFEC: C5        .byte $C5   ; 0B
- D 3 - - - 0x003FFD 00:FFED: 09        .byte $09   ; 0C
- D 3 - - - 0x003FFE 00:FFEE: E5        .byte $E5   ; 0D
- D 3 - - - 0x003FFF 00:FFEF: 0D        .byte $0D   ; 0E
- D 3 - - - 0x004000 00:FFF0: B2        .byte $B2   ; 0F
- D 3 - - - 0x004001 00:FFF1: CE        .byte $CE   ; 10
- D 3 - - - 0x004002 00:FFF2: E1        .byte $E1   ; 11
- D 3 - - - 0x004003 00:FFF3: 11        .byte $11   ; 12
- D 3 - - - 0x004004 00:FFF4: C8        .byte $C8   ; 13
- D 3 - - - 0x004005 00:FFF5: 40        .byte $40   ; 14
- D 3 - - - 0x004006 00:FFF6: D9        .byte $D9   ; 15
- D 3 - - - 0x004007 00:FFF7: 99        .byte $99   ; 16
- D 3 - - - 0x004008 00:FFF8: FF        .byte $FF   ; 17
- - - - - - 0x004009 00:FFF9: FF        .byte $FF   ; 18



.out .sprintf("Free bytes in bank FF: 0x%X [%d]", ($FFFA - *), ($FFFA - *))



.segment "VECTORS"
- D 3 - - - 0x00400A 00:FFFA: EF C2     .word vec_C2EF_NMI
- D 3 - - - 0x00400C 00:FFFC: 31 C0     .word vec_C031_RESET
- - - - - - 0x00400E 00:FFFE: 04 C3     .word vec_C304_IRQ



