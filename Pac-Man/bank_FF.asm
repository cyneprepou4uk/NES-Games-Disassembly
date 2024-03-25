.segment "BANK_FF"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $C000  ; for listing file
; 0x000010-0x00400F

; bzk garbage
- D 2 - - A 0x000010 00:C000: 43        .byte "COPY RIGHT 1984 "   ; 
- - - - - - 0x000020 00:C010: 31        .byte "1980 NAMCO LTD. "   ; 
- - - - - - 0x000030 00:C020: 41        .byte "ALL RIGHTS RESERVED" ;



vec_C033_RESET:
C - - - - - 0x000043 00:C033: 78        SEI
C - - - - - 0x000044 00:C034: D8        CLD
C - - - - - 0x000045 00:C035: A9 00     LDA #$00
C - - - - - 0x000047 00:C037: 8D 00 20  STA $2000
C - - - - - 0x00004A 00:C03A: 8D 01 20  STA $2001
bra_C03D_loop:
C - - - - - 0x00004D 00:C03D: AD 02 20  LDA $2002
C - - - - - 0x000050 00:C040: 10 FB     BPL bra_C03D_loop
C - - - - - 0x000052 00:C042: A2 FF     LDX #$FF
C - - - - - 0x000054 00:C044: 9A        TXS
; clear 0000-003D
C - - - - - 0x000055 00:C045: A9 00     LDA #$00
C - - - - - 0x000057 00:C047: A8        TAY
bra_C048_loop:
C - - - - - 0x000058 00:C048: 99 00 00  STA ram_0000,Y
C - - - - - 0x00005B 00:C04B: C8        INY
C - - - - - 0x00005C 00:C04C: C0 3E     CPY #$3E
C - - - - - 0x00005E 00:C04E: D0 F8     BNE bra_C048_loop
; A = 00
C - - - - - 0x000060 00:C050: A2 08     LDX #$08
C - - - - - 0x000062 00:C052: A0 87     LDY #$87
bra_C054_loop:
C - - - - - 0x000064 00:C054: 91 00     STA (ram_0000),Y    ; 0087-07FF
C - - - - - 0x000066 00:C056: C8        INY
C - - - - - 0x000067 00:C057: D0 FB     BNE bra_C054_loop
C - - - - - 0x000069 00:C059: E6 01     INC ram_0001
C - - - - - 0x00006B 00:C05B: E4 01     CPX ram_0001
C - - - - - 0x00006D 00:C05D: D0 F5     BNE bra_C054_loop
C - - - - - 0x00006F 00:C05F: A9 06     LDA #$06
C - - - - - 0x000071 00:C061: 8D 01 20  STA $2001
C - - - - - 0x000074 00:C064: A9 00     LDA #$00
C - - - - - 0x000076 00:C066: 8D 05 20  STA $2005
C - - - - - 0x000079 00:C069: 8D 05 20  STA $2005
C - - - - - 0x00007C 00:C06C: 85 41     STA ram_scroll_X
C - - - - - 0x00007E 00:C06E: 85 42     STA ram_scroll_Y
C - - - - - 0x000080 00:C070: 8D 00 20  STA $2000
C - - - - - 0x000083 00:C073: 8D 01 20  STA $2001
C - - - - - 0x000086 00:C076: A8        TAY
; 0052-0060
bra_C077_loop:
C - - - - - 0x000087 00:C077: B9 EB C0  LDA tbl_C0EB_reset_hash,Y
C - - - - - 0x00008A 00:C07A: D9 52 00  CMP ram_reset_check,Y
C - - - - - 0x00008D 00:C07D: D0 07     BNE bra_C086
C - - - - - 0x00008F 00:C07F: C8        INY
C - - - - - 0x000090 00:C080: C0 0F     CPY #$0F
C - - - - - 0x000092 00:C082: D0 F3     BNE bra_C077_loop
C - - - - - 0x000094 00:C084: F0 1A     BEQ bra_C0A0    ; jmp
bra_C086:
; clear 0000-00FF
C - - - - - 0x000096 00:C086: A9 00     LDA #$00
C - - - - - 0x000098 00:C088: A8        TAY
bra_C089_loop:
C - - - - - 0x000099 00:C089: 99 00 00  STA ram_0000,Y
C - - - - - 0x00009C 00:C08C: C8        INY
C - - - - - 0x00009D 00:C08D: D0 FA     BNE bra_C089_loop
; set 0052-0060
C - - - - - 0x00009F 00:C08F: A0 00     LDY #$00
bra_C091_loop:
C - - - - - 0x0000A1 00:C091: B9 EB C0  LDA tbl_C0EB_reset_hash,Y
C - - - - - 0x0000A4 00:C094: 99 52 00  STA ram_reset_check,Y
C - - - - - 0x0000A7 00:C097: C8        INY
C - - - - - 0x0000A8 00:C098: C0 0F     CPY #$0F
C - - - - - 0x0000AA 00:C09A: D0 F5     BNE bra_C091_loop
; set hi-score to 10.000
C - - - - - 0x0000AC 00:C09C: A9 01     LDA #$01
C - - - - - 0x0000AE 00:C09E: 85 64     STA ram_score_hi + $03
bra_C0A0:
C - - - - - 0x0000B0 00:C0A0: A0 00     LDY #con_script_00
C - - - - - 0x0000B2 00:C0A2: 84 3F     STY ram_script
C - - - - - 0x0000B4 00:C0A4: A9 07     LDA #> ram_oam
C - - - - - 0x0000B6 00:C0A6: 85 45     STA ram_for_4014
C - - - - - 0x0000B8 00:C0A8: A9 01     LDA #$01
C - - - - - 0x0000BA 00:C0AA: C5 47     CMP ram_game_mode
C - - - - - 0x0000BC 00:C0AC: D0 19     BNE bra_C0C7
C - - - - - 0x0000BE 00:C0AE: C5 46     CMP ram_current_player
C - - - - - 0x0000C0 00:C0B0: D0 15     BNE bra_C0C7
bra_C0B2_loop:
- - - - - - 0x0000C2 00:C0B2: B9 77 00  LDA ram_data_p2,Y
- - - - - - 0x0000C5 00:C0B5: 85 00     STA ram_0000
- - - - - - 0x0000C7 00:C0B7: B9 67 00  LDA ram_data_p1,Y
- - - - - - 0x0000CA 00:C0BA: 99 77 00  STA ram_data_p2,Y
- - - - - - 0x0000CD 00:C0BD: A5 00     LDA ram_0000
- - - - - - 0x0000CF 00:C0BF: 99 67 00  STA ram_data_p1,Y
- - - - - - 0x0000D2 00:C0C2: C8        INY
- - - - - - 0x0000D3 00:C0C3: C0 10     CPY #$10
- - - - - - 0x0000D5 00:C0C5: D0 EB     BNE bra_C0B2_loop
bra_C0C7:
C - - - - - 0x0000D7 00:C0C7: A9 1F     LDA #$1F
C - - - - - 0x0000D9 00:C0C9: 8D 15 40  STA $4015
C - - - - - 0x0000DC 00:C0CC: A9 C0     LDA #$C0
C - - - - - 0x0000DE 00:C0CE: 8D 17 40  STA $4017
C - - - - - 0x0000E1 00:C0D1: 20 18 EE  JSR sub_EE18
C - - - - - 0x0000E4 00:C0D4: 20 40 EE  JSR sub_EE40
C - - - - - 0x0000E7 00:C0D7: A9 88     LDA #$88
C - - - - - 0x0000E9 00:C0D9: 85 43     STA ram_for_2000
C - - - - - 0x0000EB 00:C0DB: 8D 00 20  STA $2000
C - - - - - 0x0000EE 00:C0DE: A9 FF     LDA #$FF
C - - - - - 0x0000F0 00:C0E0: 85 48     STA ram_flag_demo
C - - - - - 0x0000F2 00:C0E2: 8D 3F 02  STA ram_ppu_buffer_score
C - - - - - 0x0000F5 00:C0E5: 8D 4B 02  STA ram_ppu_buffer_main
C - - - - - 0x0000F8 00:C0E8: 4C 68 C1  JMP loc_C168



tbl_C0EB_reset_hash:
; developers often use bytes 55 and AA for reset checks
- D 2 - - - 0x0000FB 00:C0EB: 48        .byte "HIROKI AOYAGI"
- D 2 - - - 0x000108 00:C0F8: AA        .byte $AA, $55   ; 



vec_C0FA_NMI:
C - - - - - 0x00010A 00:C0FA: 48        PHA
C - - - - - 0x00010B 00:C0FB: 8A        TXA
C - - - - - 0x00010C 00:C0FC: 48        PHA
C - - - - - 0x00010D 00:C0FD: 98        TYA
C - - - - - 0x00010E 00:C0FE: 48        PHA
C - - - - - 0x00010F 00:C0FF: A9 1E     LDA #$1E
C - - - - - 0x000111 00:C101: 8D 01 20  STA $2001
C - - - - - 0x000114 00:C104: A9 00     LDA #$00    ; < ram_oam
C - - - - - 0x000116 00:C106: 8D 03 20  STA $2003
C - - - - - 0x000119 00:C109: 85 40     STA ram_nmi_wait
C - - - - - 0x00011B 00:C10B: A5 45     LDA ram_for_4014
C - - - - - 0x00011D 00:C10D: 8D 14 40  STA $4014
C - - - - - 0x000120 00:C110: 20 E9 DD  JSR sub_DDE9_write_buffer_to_ppu
C - - - - - 0x000123 00:C113: 20 1C E2  JSR sub_E21C_analyze_obj_ppu_pos
C - - - - - 0x000126 00:C116: A5 41     LDA ram_scroll_X
C - - - - - 0x000128 00:C118: 8D 05 20  STA $2005
C - - - - - 0x00012B 00:C11B: A5 42     LDA ram_scroll_Y
C - - - - - 0x00012D 00:C11D: 8D 05 20  STA $2005
C - - - - - 0x000130 00:C120: A5 47     LDA ram_game_mode
C - - - - - 0x000132 00:C122: 25 46     AND ram_current_player
C - - - - - 0x000134 00:C124: 29 01     AND #$01
C - - - - - 0x000136 00:C126: 0A        ASL
C - - - - - 0x000137 00:C127: 05 43     ORA ram_for_2000
C - - - - - 0x000139 00:C129: 8D 00 20  STA $2000
; read input
C - - - - - 0x00013C 00:C12C: A9 01     LDA #$01
C - - - - - 0x00013E 00:C12E: 8D 16 40  STA $4016
C - - - - - 0x000141 00:C131: A9 00     LDA #$00
C - - - - - 0x000143 00:C133: 8D 16 40  STA $4016
C - - - - - 0x000146 00:C136: A2 08     LDX #$08
bra_C138_loop:
C - - - - - 0x000148 00:C138: AD 16 40  LDA $4016
C - - - - - 0x00014B 00:C13B: 29 03     AND #$03
C - - - - - 0x00014D 00:C13D: C9 01     CMP #$01
C - - - - - 0x00014F 00:C13F: 66 4D     ROR ram_btn_1p
C - - - - - 0x000151 00:C141: AD 17 40  LDA $4017
C - - - - - 0x000154 00:C144: 29 03     AND #$03
C - - - - - 0x000156 00:C146: C9 01     CMP #$01
C - - - - - 0x000158 00:C148: 66 4E     ROR ram_btn_2p
C - - - - - 0x00015A 00:C14A: CA        DEX
C - - - - - 0x00015B 00:C14B: D0 EB     BNE bra_C138_loop
; give control to a specific player
C - - - - - 0x00015D 00:C14D: A6 4D     LDX ram_btn_1p
C - - - - - 0x00015F 00:C14F: A5 46     LDA ram_current_player
C - - - - - 0x000161 00:C151: 25 47     AND ram_game_mode
C - - - - - 0x000163 00:C153: F0 02     BEQ bra_C157
C - - - - - 0x000165 00:C155: A6 4E     LDX ram_btn_2p
bra_C157:
C - - - - - 0x000167 00:C157: 86 4F     STX ram_btn_total
C - - - - - 0x000169 00:C159: E6 4B     INC ram_frame_cnt
; 
C - - - - - 0x00016B 00:C15B: A5 48     LDA ram_flag_demo
C - - - - - 0x00016D 00:C15D: D0 03     BNE bra_C162
C - - - - - 0x00016F 00:C15F: 20 5C EE  JSR sub_EE5C_update_sound_engine
bra_C162:
C - - - - - 0x000172 00:C162: 68        PLA
C - - - - - 0x000173 00:C163: A8        TAY
C - - - - - 0x000174 00:C164: 68        PLA
C - - - - - 0x000175 00:C165: AA        TAX
C - - - - - 0x000176 00:C166: 68        PLA
vec_C167_IRQ:
C - - - - - 0x000177 00:C167: 40        RTI



loc_C168:
C D 2 - - - 0x000178 00:C168: A9 01     LDA #$01
C - - - - - 0x00017A 00:C16A: 85 40     STA ram_nmi_wait
bra_C16C_infinite_loop:
C - - - - - 0x00017C 00:C16C: A5 40     LDA ram_nmi_wait
C - - - - - 0x00017E 00:C16E: D0 FC     BNE bra_C16C_infinite_loop
C - - - - - 0x000180 00:C170: A9 08     LDA #$08
C - - - - - 0x000182 00:C172: 8D 00 20  STA $2000
C - - - - - 0x000185 00:C175: 85 43     STA ram_for_2000
C - - - - - 0x000187 00:C177: AD 02 20  LDA $2002
C - - - - - 0x00018A 00:C17A: A9 00     LDA #$00
C - - - - - 0x00018C 00:C17C: 8D 01 20  STA $2001
C - - - - - 0x00018F 00:C17F: AA        TAX
bra_C180_loop:
C - - - - - 0x000190 00:C180: 9D 00 07  STA ram_oam,X   ; 0700-07FF
C - - - - - 0x000193 00:C183: E8        INX
C - - - - - 0x000194 00:C184: D0 FA     BNE bra_C180_loop
C - - - - - 0x000196 00:C186: 85 46     STA ram_current_player
C - - - - - 0x000198 00:C188: 20 FF E2  JSR sub_E2FF
C - - - - - 0x00019B 00:C18B: 20 84 C2  JSR sub_C284_set_bg_attr
C - - - - - 0x00019E 00:C18E: 20 1F C2  JSR sub_C21F_draw_logo_screen
C - - - - - 0x0001A1 00:C191: 20 93 E3  JSR sub_E393
C - - - - - 0x0001A4 00:C194: AD 02 20  LDA $2002
C - - - - - 0x0001A7 00:C197: A9 3F     LDA #> $3F00
C - - - - - 0x0001A9 00:C199: 8D 06 20  STA $2006
C - - - - - 0x0001AC 00:C19C: A9 00     LDA #< $3F00
C - - - - - 0x0001AE 00:C19E: 8D 06 20  STA $2006
C - - - - - 0x0001B1 00:C1A1: A0 00     LDY #$00
bra_C1A3_loop:
C - - - - - 0x0001B3 00:C1A3: B9 95 C3  LDA tbl_C395_background_palette,Y
C - - - - - 0x0001B6 00:C1A6: 8D 07 20  STA $2007
C - - - - - 0x0001B9 00:C1A9: C8        INY
C - - - - - 0x0001BA 00:C1AA: C0 10     CPY #$10
C - - - - - 0x0001BC 00:C1AC: D0 F5     BNE bra_C1A3_loop
C - - - - - 0x0001BE 00:C1AE: A9 2D     LDA #con_tile + $2D
C - - - - - 0x0001C0 00:C1B0: 85 6C     STA ram_power_pellet_tile_p1
C - - - - - 0x0001C2 00:C1B2: 85 6D     STA ram_power_pellet_tile_p1 + $01
C - - - - - 0x0001C4 00:C1B4: 85 6E     STA ram_power_pellet_tile_p1 + $02
C - - - - - 0x0001C6 00:C1B6: 85 6F     STA ram_power_pellet_tile_p1 + $03
C - - - - - 0x0001C8 00:C1B8: A9 FF     LDA #$FF
C - - - - - 0x0001CA 00:C1BA: 8D 3F 02  STA ram_ppu_buffer_score
C - - - - - 0x0001CD 00:C1BD: 85 48     STA ram_flag_demo
C - - - - - 0x0001CF 00:C1BF: A9 00     LDA #$00
C - - - - - 0x0001D1 00:C1C1: 85 47     STA ram_game_mode
C - - - - - 0x0001D3 00:C1C3: 85 46     STA ram_current_player
C - - - - - 0x0001D5 00:C1C5: 85 42     STA ram_scroll_Y
C - - - - - 0x0001D7 00:C1C7: 85 41     STA ram_scroll_X
C - - - - - 0x0001D9 00:C1C9: 85 4C     STA ram_004C
C - - - - - 0x0001DB 00:C1CB: 85 87     STA ram_0087
C - - - - - 0x0001DD 00:C1CD: 85 88     STA ram_0088
C - - - - - 0x0001DF 00:C1CF: A5 3F     LDA ram_script
C - - - - - 0x0001E1 00:C1D1: D0 04     BNE bra_C1D7
; if con_script_00
C - - - - - 0x0001E3 00:C1D3: A9 8A     LDA #$8A    ; nmt 2800
C - - - - - 0x0001E5 00:C1D5: D0 02     BNE bra_C1D9    ; jmp
bra_C1D7:
C - - - - - 0x0001E7 00:C1D7: A9 88     LDA #$88    ; nmt 2000
bra_C1D9:
C - - - - - 0x0001E9 00:C1D9: 8D 00 20  STA $2000
C - - - - - 0x0001EC 00:C1DC: 85 43     STA ram_for_2000
loc_C1DE:
C D 2 - - - 0x0001EE 00:C1DE: A9 01     LDA #$01
C - - - - - 0x0001F0 00:C1E0: 85 40     STA ram_nmi_wait
bra_C1E2_infinite_loop:
C - - - - - 0x0001F2 00:C1E2: A5 40     LDA ram_nmi_wait
C - - - - - 0x0001F4 00:C1E4: D0 FC     BNE bra_C1E2_infinite_loop
C - - - - - 0x0001F6 00:C1E6: A4 3F     LDY ram_script
C - - - - - 0x0001F8 00:C1E8: B9 F5 C1  LDA tbl_C1F5,Y
C - - - - - 0x0001FB 00:C1EB: 85 10     STA ram_indirect_jmp
C - - - - - 0x0001FD 00:C1ED: B9 F6 C1  LDA tbl_C1F5 + $01,Y
C - - - - - 0x000200 00:C1F0: 85 11     STA ram_indirect_jmp + $01
C - - - - - 0x000202 00:C1F2: 6C 10 00  JMP (ram_indirect_jmp)



tbl_C1F5:
- D 2 - - - 0x000205 00:C1F5: FB C1     .word ofs_000_C1FB_00
- D 2 - - - 0x000207 00:C1F7: BD C3     .word ofs_000_C3BD_02
- D 2 - - - 0x000209 00:C1F9: 58 C4     .word ofs_000_C458_04



ofs_000_C1FB_00:
C - - J - - 0x00020B 00:C1FB: A5 4D     LDA ram_btn_1p
C - - - - - 0x00020D 00:C1FD: 29 0C     AND #con_btns_SS
C - - - - - 0x00020F 00:C1FF: F0 07     BEQ bra_C208
- - - - - - 0x000211 00:C201: A9 02     LDA #con_script_02
- - - - - - 0x000213 00:C203: 85 3F     STA ram_script
- - - - - - 0x000215 00:C205: 4C 68 C1  JMP loc_C168
bra_C208:
C - - - - - 0x000218 00:C208: E6 42     INC ram_scroll_Y
C - - - - - 0x00021A 00:C20A: A9 F0     LDA #$F0
C - - - - - 0x00021C 00:C20C: C5 42     CMP ram_scroll_Y
C - - - - - 0x00021E 00:C20E: D0 0C     BNE bra_C21C
C - - - - - 0x000220 00:C210: A9 00     LDA #$00
C - - - - - 0x000222 00:C212: 85 42     STA ram_scroll_Y
C - - - - - 0x000224 00:C214: A9 88     LDA #$88
C - - - - - 0x000226 00:C216: 85 43     STA ram_for_2000
C - - - - - 0x000228 00:C218: A9 02     LDA #con_script_02
C - - - - - 0x00022A 00:C21A: 85 3F     STA ram_script
bra_C21C:
C - - - - - 0x00022C 00:C21C: 4C DE C1  JMP loc_C1DE



sub_C21F_draw_logo_screen:
C - - - - - 0x00022F 00:C21F: A9 20     LDA #> $20E5
C - - - - - 0x000231 00:C221: 85 00     STA ram_0000
C - - - - - 0x000233 00:C223: A9 E5     LDA #< $20E5
C - - - - - 0x000235 00:C225: 85 01     STA ram_0001
C - - - - - 0x000237 00:C227: A9 06     LDA #$06    ; counter
C - - - - - 0x000239 00:C229: 85 02     STA ram_0002
C - - - - - 0x00023B 00:C22B: A0 00     LDY #$00
bra_C22D_loop:
C - - - - - 0x00023D 00:C22D: AD 02 20  LDA $2002
C - - - - - 0x000240 00:C230: A5 00     LDA ram_0000
C - - - - - 0x000242 00:C232: 8D 06 20  STA $2006
C - - - - - 0x000245 00:C235: A5 01     LDA ram_0001
C - - - - - 0x000247 00:C237: 8D 06 20  STA $2006
C - - - - - 0x00024A 00:C23A: A9 17     LDA #$17
C - - - - - 0x00024C 00:C23C: 85 03     STA ram_0003
bra_C23E_loop:
C - - - - - 0x00024E 00:C23E: B9 9F C2  LDA tbl_C29F_pacman_logo,Y
C - - - - - 0x000251 00:C241: 8D 07 20  STA $2007
C - - - - - 0x000254 00:C244: C8        INY
C - - - - - 0x000255 00:C245: C6 03     DEC ram_0003
C - - - - - 0x000257 00:C247: D0 F5     BNE bra_C23E_loop
C - - - - - 0x000259 00:C249: A5 01     LDA ram_0001
C - - - - - 0x00025B 00:C24B: 18        CLC
C - - - - - 0x00025C 00:C24C: 69 20     ADC #< $0020
C - - - - - 0x00025E 00:C24E: 85 01     STA ram_0001
C - - - - - 0x000260 00:C250: A9 00     LDA #> $0020
C - - - - - 0x000262 00:C252: 65 00     ADC ram_0000
C - - - - - 0x000264 00:C254: 85 00     STA ram_0000
C - - - - - 0x000266 00:C256: C6 02     DEC ram_0002
C - - - - - 0x000268 00:C258: D0 D3     BNE bra_C22D_loop
; draw text
C - - - - - 0x00026A 00:C25A: A9 06     LDA #$06    ; counter
C - - - - - 0x00026C 00:C25C: 85 00     STA ram_0000
C - - - - - 0x00026E 00:C25E: A0 00     LDY #$00
bra_C260_loop:
C - - - - - 0x000270 00:C260: AD 02 20  LDA $2002
C - - - - - 0x000273 00:C263: B9 29 C3  LDA tbl_C329_logo_text,Y
C - - - - - 0x000276 00:C266: 8D 06 20  STA $2006
C - - - - - 0x000279 00:C269: C8        INY
C - - - - - 0x00027A 00:C26A: B9 29 C3  LDA tbl_C329_logo_text,Y
C - - - - - 0x00027D 00:C26D: 8D 06 20  STA $2006
C - - - - - 0x000280 00:C270: C8        INY
bra_C271_loop:
C - - - - - 0x000281 00:C271: B9 29 C3  LDA tbl_C329_logo_text,Y
C - - - - - 0x000284 00:C274: C9 FF     CMP #$FF
C - - - - - 0x000286 00:C276: F0 06     BEQ bra_C27E
C - - - - - 0x000288 00:C278: 8D 07 20  STA $2007
C - - - - - 0x00028B 00:C27B: C8        INY
C - - - - - 0x00028C 00:C27C: D0 F3     BNE bra_C271_loop
bra_C27E:
C - - - - - 0x00028E 00:C27E: C8        INY
C - - - - - 0x00028F 00:C27F: C6 00     DEC ram_0000
C - - - - - 0x000291 00:C281: D0 DD     BNE bra_C260_loop
C - - - - - 0x000293 00:C283: 60        RTS



sub_C284_set_bg_attr:
C - - - - - 0x000294 00:C284: AD 02 20  LDA $2002
C - - - - - 0x000297 00:C287: A9 23     LDA #> $23C8
C - - - - - 0x000299 00:C289: 8D 06 20  STA $2006
C - - - - - 0x00029C 00:C28C: A9 C8     LDA #< $23C8
C - - - - - 0x00029E 00:C28E: 8D 06 20  STA $2006
C - - - - - 0x0002A1 00:C291: A0 00     LDY #$00
bra_C293_loop:
C - - - - - 0x0002A3 00:C293: B9 A5 C3  LDA tbl_C3A5_background_attributes,Y
C - - - - - 0x0002A6 00:C296: 8D 07 20  STA $2007
C - - - - - 0x0002A9 00:C299: C8        INY
C - - - - - 0x0002AA 00:C29A: C0 18     CPY #$18
C - - - - - 0x0002AC 00:C29C: D0 F5     BNE bra_C293_loop
C - - - - - 0x0002AE 00:C29E: 60        RTS



tbl_C29F_pacman_logo:
- D 2 - - - 0x0002AF 00:C29F: E4        .byte $E4, $E8, $E8, $E8, $E8, $E8, $E8, $E8, $E8, $E8, $E8, $E8, $E8, $E8, $E8, $E8, $E8, $E8, $E8, $E8, $E8, $E8, $E5   ; 
- D 2 - - - 0x0002C6 00:C2B6: EB        .byte $EB, $88, $80, $81, $82, $83, $84, $85, $86, $87, $88, $88, $89, $8A, $8B, $8C, $8D, $8E, $8F, $90, $91, $A3, $E9   ; 
- D 2 - - - 0x0002DD 00:C2CD: EB        .byte $EB, $88, $92, $93, $94, $95, $96, $97, $98, $99, $9A, $9B, $9C, $9D, $9E, $9F, $A0, $A1, $A2, $A3, $A4, $A3, $E9   ; 
- D 2 - - - 0x0002F4 00:C2E4: EB        .byte $EB, $88, $92, $A5, $A6, $A7, $A8, $A9, $AA, $AB, $AC, $AD, $AE, $A3, $AF, $D0, $D1, $D2, $A3, $D3, $A4, $A3, $E9   ; 
- D 2 - - - 0x00030B 00:C2FB: EB        .byte $EB, $88, $D4, $D5, $D6, $D7, $D8, $D9, $DA, $DB, $88, $88, $DC, $D7, $DD, $DE, $DF, $E0, $E1, $E2, $E3, $A3, $E9   ; 
- D 2 - - - 0x000322 00:C312: E7        .byte $E7, $EA, $EA, $EA, $EA, $EA, $EA, $EA, $EA, $EA, $EA, $EA, $EA, $EA, $EA, $EA, $EA, $EA, $EA, $EA, $EA, $EA, $E6   ; 



tbl_C329_logo_text:
; 00 
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 2 - - - 0x000339 00:C329: 20 65     .dbyt $2065 ; 
- D 2 - - - 0x00033B 00:C32B: B0        .byte                          $B0, $B3, $B2, $20, $20, $20, $20, $B4, $B5, $B6, $B7   ; 
- D 2 - - - 0x000346 00:C336: B8        .byte $B8, $B9, $BA, $BB, $20, $20, $20, $B1, $B3, $B2   ; 
- D 2 - - - 0x000350 00:C340: FF        .byte $FF   ; end token
; 01 
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 2 - - - 0x000351 00:C341: 22 0A     .dbyt $220A ; 
- D 2 - - - 0x000353 00:C343: 5C        .byte                                                   $5C, $2D, $31, $20, $50, $4C   ; 
- D 2 - - - 0x000359 00:C349: 41        .byte $41, $59, $45, $52   ; 
- D 2 - - - 0x00035D 00:C34D: FF        .byte $FF   ; end token
; 02 
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 2 - - - 0x00035E 00:C34E: 22 4C     .dbyt $224C ; 
- D 2 - - - 0x000360 00:C350: 32        .byte                                                             $32, $20, $50, $4C   ; 
- D 2 - - - 0x000364 00:C354: 41        .byte $41, $59, $45, $52, $53   ; 
- D 2 - - - 0x000369 00:C359: FF        .byte $FF   ; end token
; 03 
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 2 - - - 0x00036A 00:C35A: 22 AC     .dbyt $22AC ; 
- D 2 - - - 0x00036C 00:C35C: 23        .byte                                                             $23, $24, $25, $26   ; 
- D 2 - - - 0x000370 00:C360: 27        .byte $27, $28, $29, $2A, $2B   ; 
- D 2 - - - 0x000375 00:C365: FF        .byte $FF   ; end token
; 04 
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 2 - - - 0x000376 00:C366: 23 05     .dbyt $2305 ; 
- D 2 - - - 0x000378 00:C368: 5D        .byte                          $5D, $20, $31, $39, $38, $30, $20, $31, $39, $38, $34   ; 
- D 2 - - - 0x000383 00:C373: 20        .byte $20, $4E, $41, $4D, $43, $4F, $20, $4C, $54, $44, $5B   ; 
- D 2 - - - 0x00038E 00:C37E: FF        .byte $FF   ; end token
; 05 
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 2 - - - 0x00038F 00:C37F: 23 47     .dbyt $2347 ; 
- D 2 - - - 0x000391 00:C381: 41        .byte                                    $41, $4C, $4C, $20, $52, $49, $47, $48, $54   ; 
- D 2 - - - 0x00039A 00:C38A: 53        .byte $53, $20, $52, $45, $53, $45, $52, $56, $45, $44   ; 
- D 2 - - - 0x0003A4 00:C394: FF        .byte $FF   ; end token



tbl_C395_background_palette:
- D 2 - - - 0x0003A5 00:C395: 0F        .byte $0F, $20, $0F, $06   ; 
- D 2 - - - 0x0003A9 00:C399: 0F        .byte $0F, $26, $20, $27   ; 
- D 2 - - - 0x0003AD 00:C39D: 0F        .byte $0F, $06, $0F, $26   ; 
- D 2 - - - 0x0003B1 00:C3A1: 0F        .byte $0F, $06, $20, $26   ; 



tbl_C3A5_background_attributes:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 2 - - - 0x0003B5 00:C3A5: 80        .byte                                         $80, $A0, $A0, $A0, $A0, $A0, $A0, $00   ; 
- D 2 - - - 0x0003BD 00:C3AD: 00        .byte $00, $66, $55, $55, $55, $55, $DD, $00, $08, $0A, $0A, $0A, $0A, $0A, $0A, $00   ; 



ofs_000_C3BD_02:
C - - J - - 0x0003CD 00:C3BD: A5 87     LDA ram_0087
C - - - - - 0x0003CF 00:C3BF: 05 88     ORA ram_0088
C - - - - - 0x0003D1 00:C3C1: D0 19     BNE bra_C3DC
C - - - - - 0x0003D3 00:C3C3: A0 00     LDY #$00
bra_C3C5_loop:
C - - - - - 0x0003D5 00:C3C5: B9 4D C4  LDA tbl_C44D,Y
C - - - - - 0x0003D8 00:C3C8: 99 4B 02  STA ram_ppu_buffer_main,Y
C - - - - - 0x0003DB 00:C3CB: C8        INY
C - - - - - 0x0003DC 00:C3CC: C9 FF     CMP #$FF
C - - - - - 0x0003DE 00:C3CE: D0 F5     BNE bra_C3C5_loop
C - - - - - 0x0003E0 00:C3D0: A5 4D     LDA ram_btn_1p
C - - - - - 0x0003E2 00:C3D2: 29 04     AND #con_btn_Select
C - - - - - 0x0003E4 00:C3D4: 85 50     STA ram_direction_1
C - - - - - 0x0003E6 00:C3D6: A5 4D     LDA ram_btn_1p
C - - - - - 0x0003E8 00:C3D8: 29 08     AND #con_btn_Start
C - - - - - 0x0003EA 00:C3DA: 85 51     STA ram_direction_2
bra_C3DC:
C - - - - - 0x0003EC 00:C3DC: 18        CLC
C - - - - - 0x0003ED 00:C3DD: A9 01     LDA #< $0001
C - - - - - 0x0003EF 00:C3DF: 65 87     ADC ram_0087
C - - - - - 0x0003F1 00:C3E1: 85 87     STA ram_0087
C - - - - - 0x0003F3 00:C3E3: A5 88     LDA ram_0088
C - - - - - 0x0003F5 00:C3E5: 69 00     ADC #> $0001
C - - - - - 0x0003F7 00:C3E7: 85 88     STA ram_0088
C - - - - - 0x0003F9 00:C3E9: C9 02     CMP #$02
C - - - - - 0x0003FB 00:C3EB: D0 0B     BNE bra_C3F8
; start demo mode when timer is 200h
C - - - - - 0x0003FD 00:C3ED: A9 00     LDA #$00
C - - - - - 0x0003FF 00:C3EF: 85 87     STA ram_0087
C - - - - - 0x000401 00:C3F1: A9 04     LDA #con_script_04
C - - - - - 0x000403 00:C3F3: 85 3F     STA ram_script
C - - - - - 0x000405 00:C3F5: 4C DE C1  JMP loc_C1DE
bra_C3F8:
C - - - - - 0x000408 00:C3F8: A5 4D     LDA ram_btn_1p
C - - - - - 0x00040A 00:C3FA: 29 04     AND #con_btn_Select
C - - - - - 0x00040C 00:C3FC: C5 50     CMP ram_direction_1
C - - - - - 0x00040E 00:C3FE: F0 2F     BEQ bra_C42F
C - - - - - 0x000410 00:C400: 85 50     STA ram_direction_1
; reset timer
C - - - - - 0x000412 00:C402: A9 00     LDA #> $0001
C - - - - - 0x000414 00:C404: 85 88     STA ram_0088
C - - - - - 0x000416 00:C406: A9 01     LDA #< $0001
C - - - - - 0x000418 00:C408: 85 87     STA ram_0087
C - - - - - 0x00041A 00:C40A: A5 50     LDA ram_direction_1
C - - - - - 0x00041C 00:C40C: F0 21     BEQ bra_C42F
C - - - - - 0x00041E 00:C40E: A2 00     LDX #$00
C - - - - - 0x000420 00:C410: E6 47     INC ram_game_mode
C - - - - - 0x000422 00:C412: A5 47     LDA ram_game_mode
C - - - - - 0x000424 00:C414: 29 01     AND #$01
C - - - - - 0x000426 00:C416: 85 47     STA ram_game_mode
C - - - - - 0x000428 00:C418: F0 01     BEQ bra_C41B
C - - - - - 0x00042A 00:C41A: E8        INX
bra_C41B:
C - - - - - 0x00042B 00:C41B: BD 55 C4  LDA tbl_C455,X
C - - - - - 0x00042E 00:C41E: 8D 4D 02  STA ram_ppu_buffer_main + $02
C - - - - - 0x000431 00:C421: BD 56 C4  LDA tbl_C455 + $01,X
C - - - - - 0x000434 00:C424: 8D 51 02  STA ram_ppu_buffer_main + $06
C - - - - - 0x000437 00:C427: A9 22     LDA #$22
C - - - - - 0x000439 00:C429: 8D 4B 02  STA ram_ppu_buffer_main
C - - - - - 0x00043C 00:C42C: 4C DE C1  JMP loc_C1DE
bra_C42F:
C - - - - - 0x00043F 00:C42F: A5 4D     LDA ram_btn_1p
C - - - - - 0x000441 00:C431: 29 08     AND #con_btn_Start
C - - - - - 0x000443 00:C433: C5 51     CMP ram_direction_2
C - - - - - 0x000445 00:C435: D0 03     BNE bra_C43A
C - - - - - 0x000447 00:C437: 4C DE C1  JMP loc_C1DE
bra_C43A:
C - - - - - 0x00044A 00:C43A: 85 51     STA ram_direction_2
C - - - - - 0x00044C 00:C43C: A5 51     LDA ram_direction_2
C - - - - - 0x00044E 00:C43E: D0 03     BNE bra_C443
C - - - - - 0x000450 00:C440: 4C DE C1  JMP loc_C1DE
bra_C443:
C - - - - - 0x000453 00:C443: A9 00     LDA #$00
C - - - - - 0x000455 00:C445: 85 48     STA ram_flag_demo
C - - - - - 0x000457 00:C447: 20 40 EE  JSR sub_EE40
C - - - - - 0x00045A 00:C44A: 4C 8A C9  JMP loc_C98A



tbl_C44D:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 2 - - - 0x00045D 00:C44D: 22 0A     .dbyt $220A ; 
- D 2 - - - 0x00045F 00:C44F: 5C        .byte                                                   $5C, $00, $22, $4A, $20   ; 
- D 2 - - - 0x000464 00:C454: FF        .byte $FF   ; end token



tbl_C455:
; either 5C 20 or 20 5C pair is read
- D 2 - - - 0x000465 00:C455: 5C        .byte $5C   ; 
- D 2 - - - 0x000466 00:C456: 20        .byte $20   ; 
- D 2 - - - 0x000467 00:C457: 5C        .byte $5C   ; 



ofs_000_C458_04:
C - - J - - 0x000468 00:C458: A5 4D     LDA ram_btn_1p
C - - - - - 0x00046A 00:C45A: 29 0C     AND #con_btns_SS
C - - - - - 0x00046C 00:C45C: F0 07     BEQ bra_C465
C - - - - - 0x00046E 00:C45E: A9 02     LDA #con_script_02
C - - - - - 0x000470 00:C460: 85 3F     STA ram_script
C - - - - - 0x000472 00:C462: 4C 68 C1  JMP loc_C168
bra_C465:
C - - - - - 0x000475 00:C465: A4 87     LDY ram_0087
C - - - - - 0x000477 00:C467: B9 74 C4  LDA tbl_C474,Y
C - - - - - 0x00047A 00:C46A: 85 10     STA ram_indirect_jmp
C - - - - - 0x00047C 00:C46C: B9 75 C4  LDA tbl_C474 + $01,Y
C - - - - - 0x00047F 00:C46F: 85 11     STA ram_indirect_jmp + $01
C - - - - - 0x000481 00:C471: 6C 10 00  JMP (ram_indirect_jmp)



tbl_C474:
- D 2 - - - 0x000484 00:C474: 8C C4     .word ofs_001_C48C_00
- D 2 - - - 0x000486 00:C476: B9 C4     .word ofs_001_C4B9_02
- D 2 - - - 0x000488 00:C478: B9 C4     .word ofs_001_C4B9_04
- D 2 - - - 0x00048A 00:C47A: B9 C4     .word ofs_001_C4B9_06
- D 2 - - - 0x00048C 00:C47C: B9 C4     .word ofs_001_C4B9_08
- D 2 - - - 0x00048E 00:C47E: B9 C4     .word ofs_001_C4B9_0A
- D 2 - - - 0x000490 00:C480: B9 C4     .word ofs_001_C4B9_0C
- D 2 - - - 0x000492 00:C482: B9 C4     .word ofs_001_C4B9_0E
- D 2 - - - 0x000494 00:C484: B9 C4     .word ofs_001_C4B9_10
- D 2 - - - 0x000496 00:C486: B9 C4     .word ofs_001_C4B9_12
- D 2 - - - 0x000498 00:C488: CF C4     .word ofs_001_C4CF_14
- D 2 - - - 0x00049A 00:C48A: C8 C6     .word ofs_001_C6C8_16



ofs_001_C48C_00:
C - - J - - 0x00049C 00:C48C: A9 01     LDA #$01
C - - - - - 0x00049E 00:C48E: 85 40     STA ram_nmi_wait
bra_C490_infinite_loop:
C - - - - - 0x0004A0 00:C490: A5 40     LDA ram_nmi_wait
C - - - - - 0x0004A2 00:C492: D0 FC     BNE bra_C490_infinite_loop
C - - - - - 0x0004A4 00:C494: A9 08     LDA #$08
C - - - - - 0x0004A6 00:C496: 8D 00 20  STA $2000
C - - - - - 0x0004A9 00:C499: 85 43     STA ram_for_2000
C - - - - - 0x0004AB 00:C49B: A9 00     LDA #$00
C - - - - - 0x0004AD 00:C49D: 8D 01 20  STA $2001
C - - - - - 0x0004B0 00:C4A0: 85 88     STA ram_0088
C - - - - - 0x0004B2 00:C4A2: 20 1E C5  JSR sub_C51E
C - - - - - 0x0004B5 00:C4A5: 20 4E C5  JSR sub_C54E
C - - - - - 0x0004B8 00:C4A8: 20 EC C4  JSR sub_C4EC
C - - - - - 0x0004BB 00:C4AB: E6 87     INC ram_0087
C - - - - - 0x0004BD 00:C4AD: E6 87     INC ram_0087
C - - - - - 0x0004BF 00:C4AF: A9 88     LDA #$88
C - - - - - 0x0004C1 00:C4B1: 8D 00 20  STA $2000
C - - - - - 0x0004C4 00:C4B4: 85 43     STA ram_for_2000
C - - - - - 0x0004C6 00:C4B6: 4C DE C1  JMP loc_C1DE



ofs_001_C4B9_02:
ofs_001_C4B9_04:
ofs_001_C4B9_06:
ofs_001_C4B9_08:
ofs_001_C4B9_0A:
ofs_001_C4B9_0C:
ofs_001_C4B9_0E:
ofs_001_C4B9_10:
ofs_001_C4B9_12:
C - - J - - 0x0004C9 00:C4B9: E6 88     INC ram_0088
C - - - - - 0x0004CB 00:C4BB: A5 88     LDA ram_0088
C - - - - - 0x0004CD 00:C4BD: C9 30     CMP #$30
C - - - - - 0x0004CF 00:C4BF: D0 0B     BNE bra_C4CC
C - - - - - 0x0004D1 00:C4C1: A9 00     LDA #$00
C - - - - - 0x0004D3 00:C4C3: 85 88     STA ram_0088
C - - - - - 0x0004D5 00:C4C5: 20 EC C4  JSR sub_C4EC
C - - - - - 0x0004D8 00:C4C8: E6 87     INC ram_0087
C - - - - - 0x0004DA 00:C4CA: E6 87     INC ram_0087
bra_C4CC:
C - - - - - 0x0004DC 00:C4CC: 4C DE C1  JMP loc_C1DE



ofs_001_C4CF_14:
C - - J - - 0x0004DF 00:C4CF: E6 88     INC ram_0088
C - - - - - 0x0004E1 00:C4D1: A5 88     LDA ram_0088
C - - - - - 0x0004E3 00:C4D3: C9 80     CMP #$80
C - - - - - 0x0004E5 00:C4D5: F0 03     BEQ bra_C4DA
C - - - - - 0x0004E7 00:C4D7: 4C DE C1  JMP loc_C1DE
bra_C4DA:
C - - - - - 0x0004EA 00:C4DA: E6 87     INC ram_0087
C - - - - - 0x0004EC 00:C4DC: E6 87     INC ram_0087
C - - - - - 0x0004EE 00:C4DE: A9 00     LDA #$00
C - - - - - 0x0004F0 00:C4E0: 85 88     STA ram_0088
C - - - - - 0x0004F2 00:C4E2: 4C DE C1  JMP loc_C1DE


; bzk garbage
- - - - - - 0x0004F5 00:C4E5: A9 01     LDA #$01
- - - - - - 0x0004F7 00:C4E7: 85 47     STA ram_game_mode
- - - - - - 0x0004F9 00:C4E9: 4C 8A C9  JMP loc_C98A



sub_C4EC:
C - - - - - 0x0004FC 00:C4EC: A4 87     LDY ram_0087
C - - - - - 0x0004FE 00:C4EE: B9 D3 C5  LDA tbl_C5D3,Y
C - - - - - 0x000501 00:C4F1: 85 00     STA ram_0000
C - - - - - 0x000503 00:C4F3: B9 D4 C5  LDA tbl_C5D3 + $01,Y
C - - - - - 0x000506 00:C4F6: 85 01     STA ram_0001
C - - - - - 0x000508 00:C4F8: A0 00     LDY #$00
bra_C4FA_loop:
C - - - - - 0x00050A 00:C4FA: B1 00     LDA (ram_0000),Y    ; data from 0x0005E3
C - - - - - 0x00050C 00:C4FC: 99 4B 02  STA ram_ppu_buffer_main,Y
C - - - - - 0x00050F 00:C4FF: C8        INY
C - - - - - 0x000510 00:C500: C9 FF     CMP #$FF
C - - - - - 0x000512 00:C502: D0 F6     BNE bra_C4FA_loop
C - - - - - 0x000514 00:C504: B1 00     LDA (ram_0000),Y    ; data from 0x0005E3 (last byte)
C - - - - - 0x000516 00:C506: F0 01     BEQ bra_C509
C - - - - - 0x000518 00:C508: 60        RTS
bra_C509:
C - - - - - 0x000519 00:C509: A5 87     LDA ram_0087
C - - - - - 0x00051B 00:C50B: 38        SEC
C - - - - - 0x00051C 00:C50C: E9 02     SBC #$02
C - - - - - 0x00051E 00:C50E: 0A        ASL
C - - - - - 0x00051F 00:C50F: 0A        ASL
C - - - - - 0x000520 00:C510: A8        TAY
C - - - - - 0x000521 00:C511: A2 10     LDX #$10
bra_C513_loop:
; potential 0760-079F range, interval 10h
C - - - - - 0x000523 00:C513: B9 88 C6  LDA tbl_C688_spr_data,Y
C - - - - - 0x000526 00:C516: 99 60 07  STA ram_oam + $60,Y
C - - - - - 0x000529 00:C519: C8        INY
C - - - - - 0x00052A 00:C51A: CA        DEX
C - - - - - 0x00052B 00:C51B: D0 F6     BNE bra_C513_loop
C - - - - - 0x00052D 00:C51D: 60        RTS



sub_C51E:
C - - - - - 0x00052E 00:C51E: A9 20     LDA #> $20C0
C - - - - - 0x000530 00:C520: 8D 06 20  STA $2006
C - - - - - 0x000533 00:C523: A9 C0     LDA #< $20C0
C - - - - - 0x000535 00:C525: 8D 06 20  STA $2006
C - - - - - 0x000538 00:C528: A9 17     LDA #$17
C - - - - - 0x00053A 00:C52A: 85 00     STA ram_0000
bra_C52C_loop:
C - - - - - 0x00053C 00:C52C: A9 1C     LDA #$1C
C - - - - - 0x00053E 00:C52E: 85 01     STA ram_0001
C - - - - - 0x000540 00:C530: A9 2D     LDA #con_tile + $2D
C - - - - - 0x000542 00:C532: 8D 07 20  STA $2007
C - - - - - 0x000545 00:C535: 8D 07 20  STA $2007
C - - - - - 0x000548 00:C538: A9 20     LDA #con_tile + $20
bra_C53A_loop:
C - - - - - 0x00054A 00:C53A: 8D 07 20  STA $2007
C - - - - - 0x00054D 00:C53D: C6 01     DEC ram_0001
C - - - - - 0x00054F 00:C53F: D0 F9     BNE bra_C53A_loop
C - - - - - 0x000551 00:C541: A9 2D     LDA #con_tile + $2D
C - - - - - 0x000553 00:C543: 8D 07 20  STA $2007
C - - - - - 0x000556 00:C546: 8D 07 20  STA $2007
C - - - - - 0x000559 00:C549: C6 00     DEC ram_0000
C - - - - - 0x00055B 00:C54B: 10 DF     BPL bra_C52C_loop
C - - - - - 0x00055D 00:C54D: 60        RTS



sub_C54E:
C - - - - - 0x00055E 00:C54E: A9 23     LDA #> $23C0
C - - - - - 0x000560 00:C550: 8D 06 20  STA $2006
C - - - - - 0x000563 00:C553: A9 C0     LDA #< $23C0
C - - - - - 0x000565 00:C555: 8D 06 20  STA $2006
C - - - - - 0x000568 00:C558: A0 20     LDY #$20
C - - - - - 0x00056A 00:C55A: A9 00     LDA #$00
bra_C55C_loop:
C - - - - - 0x00056C 00:C55C: 8D 07 20  STA $2007
C - - - - - 0x00056F 00:C55F: 88        DEY
C - - - - - 0x000570 00:C560: D0 FA     BNE bra_C55C_loop
C - - - - - 0x000572 00:C562: A9 23     LDA #> $23D0
C - - - - - 0x000574 00:C564: 8D 06 20  STA $2006
C - - - - - 0x000577 00:C567: A9 D0     LDA #< $23D0
C - - - - - 0x000579 00:C569: 8D 06 20  STA $2006
C - - - - - 0x00057C 00:C56C: A9 03     LDA #$03
C - - - - - 0x00057E 00:C56E: 85 00     STA ram_0000
C - - - - - 0x000580 00:C570: A9 55     LDA #$55
bra_C572_loop:
C - - - - - 0x000582 00:C572: A0 08     LDY #$08
bra_C574_loop:
C - - - - - 0x000584 00:C574: 8D 07 20  STA $2007
C - - - - - 0x000587 00:C577: 88        DEY
C - - - - - 0x000588 00:C578: D0 FA     BNE bra_C574_loop
C - - - - - 0x00058A 00:C57A: 18        CLC
C - - - - - 0x00058B 00:C57B: 69 55     ADC #$55
C - - - - - 0x00058D 00:C57D: C6 00     DEC ram_0000
C - - - - - 0x00058F 00:C57F: D0 F1     BNE bra_C572_loop
C - - - - - 0x000591 00:C581: A9 3F     LDA #> $3F00
C - - - - - 0x000593 00:C583: 8D 06 20  STA $2006
C - - - - - 0x000596 00:C586: A9 00     LDA #< $3F00
C - - - - - 0x000598 00:C588: 8D 06 20  STA $2006
C - - - - - 0x00059B 00:C58B: A0 00     LDY #$00
bra_C58D_loop:
C - - - - - 0x00059D 00:C58D: B9 B3 C5  LDA tbl_C5B3_palette,Y
C - - - - - 0x0005A0 00:C590: 8D 07 20  STA $2007
C - - - - - 0x0005A3 00:C593: C8        INY
C - - - - - 0x0005A4 00:C594: C0 20     CPY #$20
C - - - - - 0x0005A6 00:C596: D0 F5     BNE bra_C58D_loop
C - - - - - 0x0005A8 00:C598: A9 23     LDA #> $23E8
C - - - - - 0x0005AA 00:C59A: 8D 06 20  STA $2006
C - - - - - 0x0005AD 00:C59D: A9 E8     LDA #< $23E8
C - - - - - 0x0005AF 00:C59F: 8D 06 20  STA $2006
C - - - - - 0x0005B2 00:C5A2: A9 AA     LDA #$AA
C - - - - - 0x0005B4 00:C5A4: 8D 07 20  STA $2007
C - - - - - 0x0005B7 00:C5A7: 8D 07 20  STA $2007
C - - - - - 0x0005BA 00:C5AA: 8D 07 20  STA $2007
C - - - - - 0x0005BD 00:C5AD: A9 22     LDA #$22
C - - - - - 0x0005BF 00:C5AF: 8D 07 20  STA $2007
C - - - - - 0x0005C2 00:C5B2: 60        RTS



tbl_C5B3_palette:
; bg
- D 2 - - - 0x0005C3 00:C5B3: 0F        .byte $0F, $20, $0F, $06   ; 
- D 2 - - - 0x0005C7 00:C5B7: 0F        .byte $0F, $06, $0F, $33   ; 
- D 2 - - - 0x0005CB 00:C5BB: 0F        .byte $0F, $33, $0F, $27   ; 
- D 2 - - - 0x0005CF 00:C5BF: 0F        .byte $0F, $17, $0F, $21   ; 
; spr
- D 2 - - - 0x0005D3 00:C5C3: 0F        .byte $0F, $27, $20, $06   ; 
- D 2 - - - 0x0005D7 00:C5C7: 0F        .byte $0F, $11, $20, $33   ; 
- D 2 - - - 0x0005DB 00:C5CB: 0F        .byte $0F, $20, $20, $21   ; 
- D 2 - - - 0x0005DF 00:C5CF: 0F        .byte $0F, $09, $20, $17   ; 



tbl_C5D3:
- D 2 - - - 0x0005E3 00:C5D3: E7 C5     .word _off000_C5E7_00
- D 2 - - - 0x0005E5 00:C5D5: FF C5     .word _off000_C5FF_02
- D 2 - - - 0x0005E7 00:C5D7: 0E C6     .word _off000_C60E_04
- D 2 - - - 0x0005E9 00:C5D9: 19 C6     .word _off000_C619_06
- D 2 - - - 0x0005EB 00:C5DB: 28 C6     .word _off000_C628_08
- D 2 - - - 0x0005ED 00:C5DD: 32 C6     .word _off000_C632_0A
- D 2 - - - 0x0005EF 00:C5DF: 41 C6     .word _off000_C641_0C
- D 2 - - - 0x0005F1 00:C5E1: 4C C6     .word _off000_C64C_0E
- D 2 - - - 0x0005F3 00:C5E3: 5B C6     .word _off000_C65B_10
- D 2 - - - 0x0005F5 00:C5E5: 66 C6     .word _off000_C666_12



; bzk careful here if you move this data
; code always reads next byte after FF via 0x000514
; and checks if it is 00 or not
; recommended to place additional FF or 01 or whatever byte after each chunk of data
; so it will be pairs of FF + 00 and FF + FF
; currently only FF + 00 pairs exist
_off000_C5E7_00:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 2 - I - 0x0005F7 00:C5E7: 20 E6     .dbyt $20E6 ; 
- D 2 - I - 0x0005F9 00:C5E9: 43        .byte                               $43, $48, $41, $52, $41, $43, $54, $45, $52, $20   ; 
- D 2 - I - 0x000603 00:C5F3: 3B        .byte $3B, $20, $20, $4E, $49, $43, $4B, $4E, $41, $4D, $45   ; 
- D 2 - I - 0x00060E 00:C5FE: FF        .byte $FF   ; end token



_off000_C5FF_02:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 2 - I - 0x00060F 00:C5FF: 21 48     .dbyt $2148 ; 
- D 2 - I - 0x000611 00:C601: 4F        .byte                                         $4F, $49, $4B, $41, $4B, $45, $2E, $2E   ; 
- D 2 - I - 0x000619 00:C609: 2E        .byte $2E, $2E, $2E   ; 
- D 2 - I - 0x00061C 00:C60C: FF        .byte $FF   ; end token
- D 2 - I - 0x00061D 00:C60D: 00        .byte $00   ; condition



_off000_C60E_04:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 2 - I - 0x00061E 00:C60E: 21 53     .dbyt $2153 ; 
- D 2 - I - 0x000620 00:C610: 5F        .byte $5F, $41, $4B, $41, $42, $45, $49, $5F   ; 
- D 2 - I - 0x000628 00:C618: FF        .byte $FF   ; end token



_off000_C619_06:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 2 - I - 0x000629 00:C619: 21 A8     .dbyt $21A8 ; 
- D 2 - I - 0x00062B 00:C61B: 4D        .byte $4D, $41, $43, $48, $49, $42, $55, $53   ; 
- D 2 - I - 0x000633 00:C623: 45        .byte $45, $2E, $2E   ; 
- D 2 - I - 0x000636 00:C626: FF        .byte $FF   ; end token
- D 2 - I - 0x000637 00:C627: 00        .byte $00   ; condition



_off000_C628_08:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 2 - I - 0x000638 00:C628: 21 B3     .dbyt $21B3 ; 
- D 2 - I - 0x00063A 00:C62A: 5F        .byte                $5F, $50, $49, $4E, $4B, $59, $5F   ; 
- D 2 - I - 0x000641 00:C631: FF        .byte $FF   ; end token



_off000_C632_0A:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 2 - I - 0x000642 00:C632: 22 08     .dbyt $2208 ; 
- D 2 - I - 0x000644 00:C634: C0        .byte                                         $C0, $C1, $C2, $C3, $C4, $C5, $C6, $C7   ; 
- D 2 - I - 0x00064C 00:C63C: 03        .byte $03, $03, $03   ; 
- D 2 - I - 0x00064F 00:C63F: FF        .byte $FF   ; end token
- D 2 - I - 0x000650 00:C640: 00        .byte $00   ; condition



_off000_C641_0C:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 2 - I - 0x000651 00:C641: 22 13     .dbyt $2213 ; 
- D 2 - I - 0x000653 00:C643: C8        .byte                $C8, $C3, $C9, $CA, $C5, $C0, $C7, $C8   ; 
- D 2 - I - 0x00065B 00:C64B: FF        .byte $FF   ; end token



_off000_C64C_0E:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 2 - I - 0x00065C 00:C64C: 22 68     .dbyt $2268 ; 
- D 2 - I - 0x00065E 00:C64E: 4F        .byte                                         $4F, $54, $4F, $42, $4F, $4B, $45, $2E   ; 
- D 2 - I - 0x000666 00:C656: 2E        .byte $2E, $2E, $2E   ; 
- D 2 - I - 0x000669 00:C659: FF        .byte $FF   ; end token
- D 2 - I - 0x00066A 00:C65A: 00        .byte $00   ; condition



_off000_C65B_10:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 2 - I - 0x00066B 00:C65B: 22 73     .dbyt $2273 ; 
- D 2 - I - 0x00066D 00:C65D: 5F        .byte                $5F, $47, $55, $5A, $55, $54, $41, $5F   ; 
- D 2 - I - 0x000675 00:C665: FF        .byte $FF   ; end token



_off000_C666_12:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 2 - I - 0x000676 00:C666: 22 AD     .dbyt $22AD ; 
- D 2 - I - 0x000678 00:C668: 03        .byte                                                                  $03, $20, $31   ; 
- D 2 - I - 0x00067B 00:C66B: 30        .byte $30, $20, $50, $54, $53, $00, $22, $ED, $01, $20, $35, $30, $20, $50, $54, $53   ; 
- D 2 - I - 0x00068B 00:C67B: 00        .byte $00, $23, $4C, $23, $24, $25, $26, $27, $28, $29, $2A, $2B   ; 
- D 2 - I - 0x000697 00:C687: FF        .byte $FF   ; end token
; bzk warning, read 0x0005F7



tbl_C688_spr_data:
; reading 4 lines bytes each time, start line depends on 0x000519
- D 2 - - - 0x000698 00:C688: 48        .byte $48, $1C, $40, $26   ; 02
- D 2 - - - 0x00069C 00:C68C: 48        .byte $48, $1B, $40, $2E   ; 03
- D 2 - - - 0x0006A0 00:C690: 50        .byte $50, $1F, $40, $26   ; 04
- D 2 - - - 0x0006A4 00:C694: 50        .byte $50, $1D, $40, $2E   ; 05
- D 2 - - - 0x0006A8 00:C698: 60        .byte $60, $1C, $41, $26   ; 06
- D 2 - - - 0x0006AC 00:C69C: 60        .byte $60, $1B, $41, $2E   ; 07
- D 2 - - - 0x0006B0 00:C6A0: 68        .byte $68, $1F, $41, $26   ; 08
- D 2 - - - 0x0006B4 00:C6A4: 68        .byte $68, $1D, $41, $2E   ; 09
- D 2 - - - 0x0006B8 00:C6A8: 78        .byte $78, $1C, $42, $26   ; 0A
- D 2 - - - 0x0006BC 00:C6AC: 78        .byte $78, $1B, $42, $2E   ; 0B
- D 2 - - - 0x0006C0 00:C6B0: 80        .byte $80, $1F, $42, $26   ; 0C
- D 2 - - - 0x0006C4 00:C6B4: 80        .byte $80, $1D, $42, $2E   ; 0D
- D 2 - - - 0x0006C8 00:C6B8: 90        .byte $90, $1C, $43, $26   ; 0E
- D 2 - - - 0x0006CC 00:C6BC: 90        .byte $90, $1B, $43, $2E   ; 
- D 2 - - - 0x0006D0 00:C6C0: 98        .byte $98, $1F, $43, $26   ; 
- D 2 - - - 0x0006D4 00:C6C4: 98        .byte $98, $1D, $43, $2E   ; 



ofs_001_C6C8_16:
C - - J - - 0x0006D8 00:C6C8: A4 88     LDY ram_0088
C - - - - - 0x0006DA 00:C6CA: B9 D7 C6  LDA tbl_C6D7,Y
C - - - - - 0x0006DD 00:C6CD: 85 10     STA ram_indirect_jmp
C - - - - - 0x0006DF 00:C6CF: B9 D8 C6  LDA tbl_C6D7 + $01,Y
C - - - - - 0x0006E2 00:C6D2: 85 11     STA ram_indirect_jmp + $01
C - - - - - 0x0006E4 00:C6D4: 6C 10 00  JMP (ram_indirect_jmp)



tbl_C6D7:
- D 2 - - - 0x0006E7 00:C6D7: DD C6     .word ofs_002_C6DD_00
- D 2 - - - 0x0006E9 00:C6D9: 28 C7     .word ofs_002_C728_02
- D 2 - - - 0x0006EB 00:C6DB: 8D C7     .word ofs_002_C78D_04



ofs_002_C6DD_00:
; clear 10 pts 50 pts text
C - - J - - 0x0006ED 00:C6DD: A0 00     LDY #$00
bra_C6DF_loop:
C - - - - - 0x0006EF 00:C6DF: B9 0E C9  LDA tbl_C90E,Y
C - - - - - 0x0006F2 00:C6E2: 99 4B 02  STA ram_ppu_buffer_main,Y
C - - - - - 0x0006F5 00:C6E5: C8        INY
C - - - - - 0x0006F6 00:C6E6: C9 FF     CMP #$FF
C - - - - - 0x0006F8 00:C6E8: D0 F5     BNE bra_C6DF_loop
C - - - - - 0x0006FA 00:C6EA: A9 FF     LDA #< $00FF
C - - - - - 0x0006FC 00:C6EC: 85 1A     STA ram_obj_pos_X_hi
C - - - - - 0x0006FE 00:C6EE: A9 00     LDA #> $00FF
C - - - - - 0x000700 00:C6F0: 85 1B     STA ram_obj_pos_X_lo
C - - - - - 0x000702 00:C6F2: 85 89     STA ram_0089
C - - - - - 0x000704 00:C6F4: 85 8A     STA ram_008A
C - - - - - 0x000706 00:C6F6: A9 F4     LDA #$F4
C - - - - - 0x000708 00:C6F8: 8D 74 02  STA ram_spr_pos_X_hi
C - - - - - 0x00070B 00:C6FB: A9 A8     LDA #$A8
C - - - - - 0x00070D 00:C6FD: 8D 76 02  STA ram_spr_pos_Y_hi
C - - - - - 0x000710 00:C700: A9 01     LDA #$01
C - - - - - 0x000712 00:C702: 8D 8C 02  STA ram_028C
C - - - - - 0x000715 00:C705: A9 20     LDA #$20
C - - - - - 0x000717 00:C707: 8D 92 02  STA ram_0292
C - - - - - 0x00071A 00:C70A: A9 00     LDA #$00
C - - - - - 0x00071C 00:C70C: A8        TAY
bra_C70D_loop:
C - - - - - 0x00071D 00:C70D: 99 1E 00  STA ram_obj_position + $04,Y
C - - - - - 0x000720 00:C710: C8        INY
C - - - - - 0x000721 00:C711: C0 14     CPY #$14
C - - - - - 0x000723 00:C713: D0 F8     BNE bra_C70D_loop
C - - - - - 0x000725 00:C715: A8        TAY
bra_C716_loop:
C - - - - - 0x000726 00:C716: 99 78 02  STA ram_spr_pos_X_hi + $04,Y
C - - - - - 0x000729 00:C719: C8        INY
C - - - - - 0x00072A 00:C71A: C0 14     CPY #$14
C - - - - - 0x00072C 00:C71C: D0 F8     BNE bra_C716_loop
C - - - - - 0x00072E 00:C71E: 20 5C DA  JSR sub_DA5C
C - - - - - 0x000731 00:C721: E6 88     INC ram_0088
C - - - - - 0x000733 00:C723: E6 88     INC ram_0088
C - - - - - 0x000735 00:C725: 4C DE C1  JMP loc_C1DE



ofs_002_C728_02:
; pacman is running from ghosts
C - - J - - 0x000738 00:C728: 20 12 C8  JSR sub_C812
C - - - - - 0x00073B 00:C72B: 20 EE C8  JSR sub_C8EE
C - - - - - 0x00073E 00:C72E: AD 74 02  LDA ram_spr_pos_X_hi
C - - - - - 0x000741 00:C731: C9 E0     CMP #$E0
C - - - - - 0x000743 00:C733: F0 0C     BEQ bra_C741
C - - - - - 0x000745 00:C735: C9 D1     CMP #$D1
C - - - - - 0x000747 00:C737: F0 08     BEQ bra_C741
C - - - - - 0x000749 00:C739: C9 C2     CMP #$C2
C - - - - - 0x00074B 00:C73B: F0 04     BEQ bra_C741
C - - - - - 0x00074D 00:C73D: C9 B3     CMP #$B3
C - - - - - 0x00074F 00:C73F: D0 03     BNE bra_C744
bra_C741:
C - - - - - 0x000751 00:C741: 20 DE C7  JSR sub_C7DE
bra_C744:
C - - - - - 0x000754 00:C744: AD 74 02  LDA ram_spr_pos_X_hi
C - - - - - 0x000757 00:C747: C9 40     CMP #$40
C - - - - - 0x000759 00:C749: F0 03     BEQ bra_C74E
C - - - - - 0x00075B 00:C74B: 4C DE C1  JMP loc_C1DE
bra_C74E:
C - - - - - 0x00075E 00:C74E: A0 00     LDY #$00
bra_C750_loop:
C - - - - - 0x000760 00:C750: A9 00     LDA #> $00C0
C - - - - - 0x000762 00:C752: 99 1E 00  STA ram_obj_pos_X_hi + $04,Y
C - - - - - 0x000765 00:C755: A9 C0     LDA #< $00C0
C - - - - - 0x000767 00:C757: 99 1F 00  STA ram_obj_pos_X_lo + $04,Y
C - - - - - 0x00076A 00:C75A: C8        INY
C - - - - - 0x00076B 00:C75B: C8        INY
C - - - - - 0x00076C 00:C75C: C8        INY
C - - - - - 0x00076D 00:C75D: C8        INY
C - - - - - 0x00076E 00:C75E: C0 10     CPY #$10
C - - - - - 0x000770 00:C760: D0 EE     BNE bra_C750_loop
C - - - - - 0x000772 00:C762: A9 01     LDA #> $0150
C - - - - - 0x000774 00:C764: 85 1A     STA ram_obj_pos_X_hi
C - - - - - 0x000776 00:C766: A9 50     LDA #< $0150
C - - - - - 0x000778 00:C768: 85 1B     STA ram_obj_pos_X_lo
C - - - - - 0x00077A 00:C76A: A9 01     LDA #$01
C - - - - - 0x00077C 00:C76C: 8D 93 02  STA ram_0293
C - - - - - 0x00077F 00:C76F: 8D 94 02  STA ram_0294
C - - - - - 0x000782 00:C772: 8D 95 02  STA ram_0295
C - - - - - 0x000785 00:C775: 8D 96 02  STA ram_0296
C - - - - - 0x000788 00:C778: A9 00     LDA #$00
C - - - - - 0x00078A 00:C77A: 85 89     STA ram_0089
C - - - - - 0x00078C 00:C77C: A9 22     LDA #$22
C - - - - - 0x00078E 00:C77E: 8D 4B 02  STA ram_ppu_buffer_main
C - - - - - 0x000791 00:C781: A9 20     LDA #$20
C - - - - - 0x000793 00:C783: 8D 4D 02  STA ram_ppu_buffer_main + $02
C - - - - - 0x000796 00:C786: E6 88     INC ram_0088
C - - - - - 0x000798 00:C788: E6 88     INC ram_0088
C - - - - - 0x00079A 00:C78A: 4C DE C1  JMP loc_C1DE



ofs_002_C78D_04:
; pacman is running at ghosts
C - - J - - 0x00079D 00:C78D: A5 8A     LDA ram_008A
C - - - - - 0x00079F 00:C78F: F0 47     BEQ bra_C7D8
C - - - - - 0x0007A1 00:C791: 20 64 C8  JSR sub_C864
C - - - - - 0x0007A4 00:C794: C6 8A     DEC ram_008A
C - - - - - 0x0007A6 00:C796: F0 03     BEQ bra_C79B
C - - - - - 0x0007A8 00:C798: 4C DE C1  JMP loc_C1DE
bra_C79B:
C - - - - - 0x0007AB 00:C79B: A0 00     LDY #$00
bra_C79D_loop:
C - - - - - 0x0007AD 00:C79D: B9 8D 02  LDA ram_028D,Y
C - - - - - 0x0007B0 00:C7A0: 29 E0     AND #$E0
C - - - - - 0x0007B2 00:C7A2: D0 03     BNE bra_C7A7
C - - - - - 0x0007B4 00:C7A4: C8        INY
C - - - - - 0x0007B5 00:C7A5: D0 F6     BNE bra_C79D_loop    ; jmp always?
bra_C7A7:
C - - - - - 0x0007B7 00:C7A7: A9 00     LDA #$00
C - - - - - 0x0007B9 00:C7A9: 99 8D 02  STA ram_028D,Y
C - - - - - 0x0007BC 00:C7AC: A9 00     LDA #$00
C - - - - - 0x0007BE 00:C7AE: 99 93 02  STA ram_0293,Y
C - - - - - 0x0007C1 00:C7B1: 98        TYA
C - - - - - 0x0007C2 00:C7B2: 0A        ASL
C - - - - - 0x0007C3 00:C7B3: 0A        ASL
C - - - - - 0x0007C4 00:C7B4: A8        TAY
C - - - - - 0x0007C5 00:C7B5: A9 00     LDA #$00
C - - - - - 0x0007C7 00:C7B7: 99 78 02  STA ram_spr_pos_X_hi + $04,Y
C - - - - - 0x0007CA 00:C7BA: 99 7A 02  STA ram_spr_pos_Y_hi + $04,Y
C - - - - - 0x0007CD 00:C7BD: 99 1E 00  STA ram_obj_pos_X_hi + $04,Y
C - - - - - 0x0007D0 00:C7C0: 99 1F 00  STA ram_obj_pos_X_lo + $04,Y
C - - - - - 0x0007D3 00:C7C3: A9 A8     LDA #$A8
C - - - - - 0x0007D5 00:C7C5: 8D 76 02  STA ram_spr_pos_Y_hi
C - - - - - 0x0007D8 00:C7C8: A5 89     LDA ram_0089
C - - - - - 0x0007DA 00:C7CA: C9 04     CMP #$04
C - - - - - 0x0007DC 00:C7CC: F0 03     BEQ bra_C7D1
C - - - - - 0x0007DE 00:C7CE: 4C DE C1  JMP loc_C1DE
bra_C7D1:
C - - - - - 0x0007E1 00:C7D1: A9 01     LDA #$01
C - - - - - 0x0007E3 00:C7D3: 85 47     STA ram_game_mode
C - - - - - 0x0007E5 00:C7D5: 4C 8A C9  JMP loc_C98A
bra_C7D8:
C - - - - - 0x0007E8 00:C7D8: 20 12 C8  JSR sub_C812
C - - - - - 0x0007EB 00:C7DB: 4C DE C1  JMP loc_C1DE



sub_C7DE:
C - - - - - 0x0007EE 00:C7DE: A0 00     LDY #$00
C - - - - - 0x0007F0 00:C7E0: 84 00     STY ram_0000
bra_C7E2_loop:
C - - - - - 0x0007F2 00:C7E2: B9 78 02  LDA ram_spr_pos_X_hi + $04,Y
C - - - - - 0x0007F5 00:C7E5: F0 08     BEQ bra_C7EF
- - - - - - 0x0007F7 00:C7E7: E6 00     INC ram_0000
- - - - - - 0x0007F9 00:C7E9: C8        INY
- - - - - - 0x0007FA 00:C7EA: C8        INY
- - - - - - 0x0007FB 00:C7EB: C8        INY
- - - - - - 0x0007FC 00:C7EC: C8        INY
- - - - - - 0x0007FD 00:C7ED: D0 F3     BNE bra_C7E2_loop
bra_C7EF:
C - - - - - 0x0007FF 00:C7EF: A9 F4     LDA #$F4
C - - - - - 0x000801 00:C7F1: 99 78 02  STA ram_spr_pos_X_hi + $04,Y
C - - - - - 0x000804 00:C7F4: A9 A8     LDA #$A8
C - - - - - 0x000806 00:C7F6: 99 7A 02  STA ram_spr_pos_Y_hi + $04,Y
C - - - - - 0x000809 00:C7F9: A9 FF     LDA #< $00FF
C - - - - - 0x00080B 00:C7FB: 99 1E 00  STA ram_obj_pos_X_hi + $04,Y
C - - - - - 0x00080E 00:C7FE: A9 00     LDA #> $00FF
C - - - - - 0x000810 00:C800: 99 1F 00  STA ram_obj_pos_X_lo + $04,Y
C - - - - - 0x000813 00:C803: A4 00     LDY ram_0000
C - - - - - 0x000815 00:C805: A5 89     LDA ram_0089
C - - - - - 0x000817 00:C807: 99 93 02  STA ram_0293,Y
C - - - - - 0x00081A 00:C80A: A9 0C     LDA #$0C
C - - - - - 0x00081C 00:C80C: 99 8D 02  STA ram_028D,Y
C - - - - - 0x00081F 00:C80F: E6 89     INC ram_0089
C - - - - - 0x000821 00:C811: 60        RTS



sub_C812:
C - - - - - 0x000822 00:C812: 20 A5 E9  JSR sub_E9A5
C - - - - - 0x000825 00:C815: 20 64 C8  JSR sub_C864
C - - - - - 0x000828 00:C818: 20 30 C9  JSR sub_C930
C - - - - - 0x00082B 00:C81B: 20 21 C8  JSR sub_C821
C - - - - - 0x00082E 00:C81E: 4C 5C DA  JMP loc_DA5C



sub_C821:
C - - - - - 0x000831 00:C821: A5 1A     LDA ram_obj_pos_X_hi
C - - - - - 0x000833 00:C823: 10 01     BPL bra_C826
C - - - - - 0x000835 00:C825: 60        RTS
bra_C826:
C - - - - - 0x000836 00:C826: AD 74 02  LDA ram_spr_pos_X_hi
C - - - - - 0x000839 00:C829: 18        CLC
C - - - - - 0x00083A 00:C82A: 69 08     ADC #$08
C - - - - - 0x00083C 00:C82C: 85 00     STA ram_0000
C - - - - - 0x00083E 00:C82E: A0 00     LDY #$00
C - - - - - 0x000840 00:C830: 84 01     STY ram_0001
bra_C832_loop:
C - - - - - 0x000842 00:C832: B9 78 02  LDA ram_spr_pos_X_hi + $04,Y
C - - - - - 0x000845 00:C835: F0 04     BEQ bra_C83B
C - - - - - 0x000847 00:C837: C5 00     CMP ram_0000
C - - - - - 0x000849 00:C839: 90 0B     BCC bra_C846
bra_C83B:
C - - - - - 0x00084B 00:C83B: E6 01     INC ram_0001
C - - - - - 0x00084D 00:C83D: C8        INY
C - - - - - 0x00084E 00:C83E: C8        INY
C - - - - - 0x00084F 00:C83F: C8        INY
C - - - - - 0x000850 00:C840: C8        INY
C - - - - - 0x000851 00:C841: C0 10     CPY #$10
C - - - - - 0x000853 00:C843: D0 ED     BNE bra_C832_loop
C - - - - - 0x000855 00:C845: 60        RTS
bra_C846:
C - - - - - 0x000856 00:C846: A4 89     LDY ram_0089
C - - - - - 0x000858 00:C848: E6 89     INC ram_0089
C - - - - - 0x00085A 00:C84A: A9 40     LDA #$40
C - - - - - 0x00085C 00:C84C: 85 8A     STA ram_008A
C - - - - - 0x00085E 00:C84E: B9 24 C9  LDA tbl_C924,Y
C - - - - - 0x000861 00:C851: A4 01     LDY ram_0001
C - - - - - 0x000863 00:C853: 99 8D 02  STA ram_028D,Y
C - - - - - 0x000866 00:C856: A9 00     LDA #$00
C - - - - - 0x000868 00:C858: 99 93 02  STA ram_0293,Y
C - - - - - 0x00086B 00:C85B: A9 00     LDA #$00
C - - - - - 0x00086D 00:C85D: 8D 8C 02  STA ram_028C
C - - - - - 0x000870 00:C860: 8D 76 02  STA ram_spr_pos_Y_hi
C - - - - - 0x000873 00:C863: 60        RTS



sub_C864:
C - - - - - 0x000874 00:C864: A5 1E     LDA ram_obj_pos_X_hi + $04
C - - - - - 0x000876 00:C866: 85 00     STA ram_0000
C - - - - - 0x000878 00:C868: A5 1F     LDA ram_obj_pos_X_lo + $04
C - - - - - 0x00087A 00:C86A: 85 01     STA ram_0001
C - - - - - 0x00087C 00:C86C: A0 00     LDY #$00
bra_C86E_loop:
C - - - - - 0x00087E 00:C86E: B9 22 00  LDA ram_obj_pos_X_hi + $08,Y
C - - - - - 0x000881 00:C871: 99 1E 00  STA ram_obj_pos_X_hi + $04,Y
C - - - - - 0x000884 00:C874: B9 23 00  LDA ram_obj_pos_X_lo + $08,Y
C - - - - - 0x000887 00:C877: 99 1F 00  STA ram_obj_pos_X_lo + $04,Y
C - - - - - 0x00088A 00:C87A: C8        INY
C - - - - - 0x00088B 00:C87B: C8        INY
C - - - - - 0x00088C 00:C87C: C8        INY
C - - - - - 0x00088D 00:C87D: C8        INY
C - - - - - 0x00088E 00:C87E: C0 0C     CPY #$0C
C - - - - - 0x000890 00:C880: D0 EC     BNE bra_C86E_loop
C - - - - - 0x000892 00:C882: A5 00     LDA ram_0000
C - - - - - 0x000894 00:C884: 85 2A     STA ram_obj_pos_X_hi + $10
C - - - - - 0x000896 00:C886: A5 01     LDA ram_0001
C - - - - - 0x000898 00:C888: 85 2B     STA ram_obj_pos_X_lo + $10
C - - - - - 0x00089A 00:C88A: AD 78 02  LDA ram_spr_pos_X_hi + $04
C - - - - - 0x00089D 00:C88D: 85 00     STA ram_0000
C - - - - - 0x00089F 00:C88F: AD 79 02  LDA ram_spr_pos_X_lo + $04
C - - - - - 0x0008A2 00:C892: 85 01     STA ram_0001
C - - - - - 0x0008A4 00:C894: AD 7A 02  LDA ram_spr_pos_Y_hi + $04
C - - - - - 0x0008A7 00:C897: 85 02     STA ram_0002
C - - - - - 0x0008A9 00:C899: AD 7B 02  LDA ram_spr_pos_Y_lo + $04
C - - - - - 0x0008AC 00:C89C: 85 03     STA ram_0003
C - - - - - 0x0008AE 00:C89E: A0 00     LDY #$00
bra_C8A0_loop:
C - - - - - 0x0008B0 00:C8A0: B9 7C 02  LDA ram_spr_pos_X_hi + $08,Y
C - - - - - 0x0008B3 00:C8A3: 99 78 02  STA ram_spr_pos_X_hi + $04,Y
C - - - - - 0x0008B6 00:C8A6: C8        INY
C - - - - - 0x0008B7 00:C8A7: C0 0C     CPY #$0C
C - - - - - 0x0008B9 00:C8A9: D0 F5     BNE bra_C8A0_loop
C - - - - - 0x0008BB 00:C8AB: A5 00     LDA ram_0000
C - - - - - 0x0008BD 00:C8AD: 8D 84 02  STA ram_spr_pos_X_hi + $10
C - - - - - 0x0008C0 00:C8B0: A5 01     LDA ram_0001
C - - - - - 0x0008C2 00:C8B2: 8D 85 02  STA ram_spr_pos_X_lo + $10
C - - - - - 0x0008C5 00:C8B5: A5 02     LDA ram_0002
C - - - - - 0x0008C7 00:C8B7: 8D 86 02  STA ram_spr_pos_Y_hi + $10
C - - - - - 0x0008CA 00:C8BA: A5 03     LDA ram_0003
C - - - - - 0x0008CC 00:C8BC: 8D 87 02  STA ram_spr_pos_Y_lo + $10
C - - - - - 0x0008CF 00:C8BF: AD 8D 02  LDA ram_028D
C - - - - - 0x0008D2 00:C8C2: 85 00     STA ram_0000
C - - - - - 0x0008D4 00:C8C4: A0 00     LDY #$00
bra_C8C6_loop:
C - - - - - 0x0008D6 00:C8C6: B9 8E 02  LDA ram_028E,Y
C - - - - - 0x0008D9 00:C8C9: 99 8D 02  STA ram_028D,Y
C - - - - - 0x0008DC 00:C8CC: C8        INY
C - - - - - 0x0008DD 00:C8CD: C0 03     CPY #$03
C - - - - - 0x0008DF 00:C8CF: D0 F5     BNE bra_C8C6_loop
C - - - - - 0x0008E1 00:C8D1: A5 00     LDA ram_0000
C - - - - - 0x0008E3 00:C8D3: 8D 90 02  STA ram_0290
C - - - - - 0x0008E6 00:C8D6: AD 93 02  LDA ram_0293
C - - - - - 0x0008E9 00:C8D9: 85 00     STA ram_0000
C - - - - - 0x0008EB 00:C8DB: A0 00     LDY #$00
bra_C8DD_loop:
C - - - - - 0x0008ED 00:C8DD: B9 94 02  LDA ram_0294,Y
C - - - - - 0x0008F0 00:C8E0: 99 93 02  STA ram_0293,Y
C - - - - - 0x0008F3 00:C8E3: C8        INY
C - - - - - 0x0008F4 00:C8E4: C0 03     CPY #$03
C - - - - - 0x0008F6 00:C8E6: D0 F5     BNE bra_C8DD_loop
C - - - - - 0x0008F8 00:C8E8: A5 00     LDA ram_0000
C - - - - - 0x0008FA 00:C8EA: 8D 96 02  STA ram_0296
C - - - - - 0x0008FD 00:C8ED: 60        RTS



sub_C8EE:
C - - - - - 0x0008FE 00:C8EE: A5 4B     LDA ram_frame_cnt
C - - - - - 0x000900 00:C8F0: 29 07     AND #$07
C - - - - - 0x000902 00:C8F2: F0 01     BEQ bra_C8F5
C - - - - - 0x000904 00:C8F4: 60        RTS
bra_C8F5:
; each 8 frames
C - - - - - 0x000905 00:C8F5: A2 00     LDX #$00
C - - - - - 0x000907 00:C8F7: A0 00     LDY #$00
C - - - - - 0x000909 00:C8F9: A5 4B     LDA ram_frame_cnt
C - - - - - 0x00090B 00:C8FB: 29 08     AND #$08
C - - - - - 0x00090D 00:C8FD: F0 02     BEQ bra_C901
C - - - - - 0x00090F 00:C8FF: A0 04     LDY #$04
bra_C901:
bra_C901_loop:
C - - - - - 0x000911 00:C901: B9 28 C9  LDA tbl_C928,Y
C - - - - - 0x000914 00:C904: 9D 4B 02  STA ram_ppu_buffer_main,X
C - - - - - 0x000917 00:C907: E8        INX
C - - - - - 0x000918 00:C908: C8        INY
C - - - - - 0x000919 00:C909: E0 04     CPX #$04
C - - - - - 0x00091B 00:C90B: D0 F4     BNE bra_C901_loop
C - - - - - 0x00091D 00:C90D: 60        RTS



tbl_C90E:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 2 - - - 0x00091E 00:C90E: 22 AD     .dbyt $22AD ; 
- D 2 - - - 0x000920 00:C910: 2D        .byte                                                                  $2D, $2D, $2D   ; 
- D 2 - - - 0x000923 00:C913: 2D        .byte $2D, $2D, $2D, $2D, $2D, $00, $22, $ED, $2D, $2D, $2D, $2D, $2D, $2D, $2D, $2D   ; 
- D 2 - - - 0x000933 00:C923: FF        .byte $FF   ; end token



tbl_C924:
- D 2 - - - 0x000934 00:C924: 2D        .byte $2D   ; 00 
- D 2 - - - 0x000935 00:C925: 2F        .byte $2F   ; 01 
- D 2 - - - 0x000936 00:C926: 32        .byte $32   ; 02 
- D 2 - - - 0x000937 00:C927: 34        .byte $34   ; 03 



tbl_C928:
; 00 
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 2 - - - 0x000938 00:C928: 22 C7     .dbyt $22C7 ; 
- D 2 - - - 0x00093A 00:C92A: 20        .byte                                    $20   ; 
- D 2 - - - 0x00093B 00:C92B: FF        .byte $FF   ; 
; 04 
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 2 - - - 0x00093C 00:C92C: 22 C7     .dbyt $22C7 ; 
- D 2 - - - 0x00093E 00:C92E: 01        .byte                                    $01   ; 
- D 2 - - - 0x00093F 00:C92F: FF        .byte $FF   ; 



sub_C930:
C - - - - - 0x000940 00:C930: A2 00     LDX #$00
C - - - - - 0x000942 00:C932: A5 1A     LDA ram_obj_pos_X_hi
C - - - - - 0x000944 00:C934: 30 02     BMI bra_C938
C - - - - - 0x000946 00:C936: A2 0A     LDX #$0A
bra_C938:
C - - - - - 0x000948 00:C938: 86 00     STX ram_0000
C - - - - - 0x00094A 00:C93A: E6 B7     INC ram_00B7
C - - - - - 0x00094C 00:C93C: A5 B7     LDA ram_00B7
C - - - - - 0x00094E 00:C93E: 29 07     AND #$07
C - - - - - 0x000950 00:C940: 18        CLC
C - - - - - 0x000951 00:C941: 65 00     ADC ram_0000
C - - - - - 0x000953 00:C943: A8        TAY
C - - - - - 0x000954 00:C944: B9 76 C9  LDA tbl_C976,Y
C - - - - - 0x000957 00:C947: 8D 8C 02  STA ram_028C
C - - - - - 0x00095A 00:C94A: A5 4B     LDA ram_frame_cnt
C - - - - - 0x00095C 00:C94C: 29 07     AND #$07
C - - - - - 0x00095E 00:C94E: F0 01     BEQ bra_C951
C - - - - - 0x000960 00:C950: 60        RTS
bra_C951:
; each 8 frames
C - - - - - 0x000961 00:C951: A5 4B     LDA ram_frame_cnt
C - - - - - 0x000963 00:C953: 29 08     AND #$08
C - - - - - 0x000965 00:C955: F0 02     BEQ bra_C959
C - - - - - 0x000967 00:C957: A9 01     LDA #$01
bra_C959:
C - - - - - 0x000969 00:C959: 18        CLC
C - - - - - 0x00096A 00:C95A: 65 00     ADC ram_0000
C - - - - - 0x00096C 00:C95C: 69 08     ADC #$08
C - - - - - 0x00096E 00:C95E: A8        TAY
C - - - - - 0x00096F 00:C95F: B9 76 C9  LDA tbl_C976,Y
C - - - - - 0x000972 00:C962: 85 00     STA ram_0000
C - - - - - 0x000974 00:C964: A0 00     LDY #$00
bra_C966_loop:
C - - - - - 0x000976 00:C966: B9 8D 02  LDA ram_028D,Y
C - - - - - 0x000979 00:C969: F0 05     BEQ bra_C970
C - - - - - 0x00097B 00:C96B: A5 00     LDA ram_0000
C - - - - - 0x00097D 00:C96D: 99 8D 02  STA ram_028D,Y
bra_C970:
C - - - - - 0x000980 00:C970: C8        INY
C - - - - - 0x000981 00:C971: C0 04     CPY #$04
C - - - - - 0x000983 00:C973: D0 F1     BNE bra_C966_loop
C - - - - - 0x000985 00:C975: 60        RTS



tbl_C976:
; indexes 08, 09, 12 and 13 are read via 0x00096F
; other indexes are read via 0x000954
- D 2 - - - 0x000986 00:C976: 04        .byte $04   ; 00 
- D 2 - - - 0x000987 00:C977: 04        .byte $04   ; 01 
- D 2 - - - 0x000988 00:C978: 04        .byte $04   ; 02 
- D 2 - - - 0x000989 00:C979: 05        .byte $05   ; 03 
- D 2 - - - 0x00098A 00:C97A: 05        .byte $05   ; 04 
- D 2 - - - 0x00098B 00:C97B: 04        .byte $04   ; 05 
- D 2 - - - 0x00098C 00:C97C: 01        .byte $01   ; 06 
- D 2 - - - 0x00098D 00:C97D: 01        .byte $01   ; 07 
- D 2 - - - 0x00098E 00:C97E: 0C        .byte $0C   ; 08 
- D 2 - - - 0x00098F 00:C97F: 0D        .byte $0D   ; 09 
- D 2 - - - 0x000990 00:C980: 08        .byte $08   ; 0A 
- D 2 - - - 0x000991 00:C981: 08        .byte $08   ; 0B 
- D 2 - - - 0x000992 00:C982: 08        .byte $08   ; 0C 
- D 2 - - - 0x000993 00:C983: 09        .byte $09   ; 0D 
- D 2 - - - 0x000994 00:C984: 09        .byte $09   ; 0E 
- D 2 - - - 0x000995 00:C985: 08        .byte $08   ; 0F 
- D 2 - - - 0x000996 00:C986: 01        .byte $01   ; 10 
- D 2 - - - 0x000997 00:C987: 01        .byte $01   ; 11 
- D 2 - - - 0x000998 00:C988: 1E        .byte $1E   ; 12 
- D 2 - - - 0x000999 00:C989: 1F        .byte $1F   ; 13 



loc_C98A:
C D 2 - - - 0x00099A 00:C98A: A9 08     LDA #$08
C - - - - - 0x00099C 00:C98C: 8D 00 20  STA $2000
C - - - - - 0x00099F 00:C98F: 85 43     STA ram_for_2000
bra_C991_infinite_loop:
C - - - - - 0x0009A1 00:C991: AD 02 20  LDA $2002
C - - - - - 0x0009A4 00:C994: 10 FB     BPL bra_C991_infinite_loop
C - - - - - 0x0009A6 00:C996: A9 00     LDA #$00    ; con_script_00
C - - - - - 0x0009A8 00:C998: 8D 01 20  STA $2001
C - - - - - 0x0009AB 00:C99B: 85 3F     STA ram_script
C - - - - - 0x0009AD 00:C99D: 85 46     STA ram_current_player
C - - - - - 0x0009AF 00:C99F: 85 69     STA ram_0069
C - - - - - 0x0009B1 00:C9A1: 85 4A     STA ram_flag_pause
C - - - - - 0x0009B3 00:C9A3: 20 FF E2  JSR sub_E2FF
C - - - - - 0x0009B6 00:C9A6: 20 7C E4  JSR sub_E47C
C - - - - - 0x0009B9 00:C9A9: 20 79 E3  JSR sub_E379
C - - - - - 0x0009BC 00:C9AC: A5 48     LDA ram_flag_demo
C - - - - - 0x0009BE 00:C9AE: F0 06     BEQ bra_C9B6
C - - - - - 0x0009C0 00:C9B0: A9 01     LDA #$01
C - - - - - 0x0009C2 00:C9B2: 85 67     STA ram_lives_p1
C - - - - - 0x0009C4 00:C9B4: D0 17     BNE bra_C9CD    ; jmp
bra_C9B6:
C - - - - - 0x0009C6 00:C9B6: A9 00     LDA #$00
C - - - - - 0x0009C8 00:C9B8: A8        TAY
bra_C9B9_loop:
; 0067-0086
C - - - - - 0x0009C9 00:C9B9: 99 67 00  STA ram_data_p1,Y
C - - - - - 0x0009CC 00:C9BC: C8        INY
C - - - - - 0x0009CD 00:C9BD: C0 20     CPY #$20
C - - - - - 0x0009CF 00:C9BF: D0 F8     BNE bra_C9B9_loop
C - - - - - 0x0009D1 00:C9C1: A9 03     LDA #$03
C - - - - - 0x0009D3 00:C9C3: 85 67     STA ram_lives_p1
C - - - - - 0x0009D5 00:C9C5: 85 77     STA ram_lives_p2
C - - - - - 0x0009D7 00:C9C7: 8D 00 06  STA ram_sfx_plr_ready
C - - - - - 0x0009DA 00:C9CA: 8D 01 06  STA ram_sfx_plr_ready + $01
bra_C9CD:
C - - - - - 0x0009DD 00:C9CD: A9 FF     LDA #$FF
C - - - - - 0x0009DF 00:C9CF: 85 68     STA ram_stage_p1
C - - - - - 0x0009E1 00:C9D1: 85 78     STA ram_stage_p2
C - - - - - 0x0009E3 00:C9D3: 8D 45 02  STA ram_ppu_buffer_hiscore
C - - - - - 0x0009E6 00:C9D6: A9 88     LDA #$88
C - - - - - 0x0009E8 00:C9D8: 85 43     STA ram_for_2000
C - - - - - 0x0009EA 00:C9DA: 8D 00 20  STA $2000
loc_C9DD:
bra_C9DD_loop:
C D 2 - - - 0x0009ED 00:C9DD: A9 01     LDA #$01
C - - - - - 0x0009EF 00:C9DF: 85 40     STA ram_nmi_wait
bra_C9E1_infinite_loop:
C - - - - - 0x0009F1 00:C9E1: A5 40     LDA ram_nmi_wait
C - - - - - 0x0009F3 00:C9E3: D0 FC     BNE bra_C9E1_infinite_loop
C - - - - - 0x0009F5 00:C9E5: A5 48     LDA ram_flag_demo
C - - - - - 0x0009F7 00:C9E7: F0 0D     BEQ bra_C9F6
C - - - - - 0x0009F9 00:C9E9: A5 4D     LDA ram_btn_1p
C - - - - - 0x0009FB 00:C9EB: 29 0C     AND #con_btns_SS
C - - - - - 0x0009FD 00:C9ED: F0 07     BEQ bra_C9F6
- - - - - - 0x0009FF 00:C9EF: A9 02     LDA #con_script_02
- - - - - - 0x000A01 00:C9F1: 85 3F     STA ram_script
- - - - - - 0x000A03 00:C9F3: 4C 68 C1  JMP loc_C168
bra_C9F6:
C - - - - - 0x000A06 00:C9F6: A5 4C     LDA ram_004C
C - - - - - 0x000A08 00:C9F8: F0 04     BEQ bra_C9FE
C - - - - - 0x000A0A 00:C9FA: C6 4C     DEC ram_004C
C - - - - - 0x000A0C 00:C9FC: D0 DF     BNE bra_C9DD_loop
bra_C9FE:
C - - - - - 0x000A0E 00:C9FE: A4 3F     LDY ram_script
C - - - - - 0x000A10 00:CA00: B9 0D CA  LDA tbl_CA0D,Y
C - - - - - 0x000A13 00:CA03: 85 10     STA ram_indirect_jmp
C - - - - - 0x000A15 00:CA05: B9 0E CA  LDA tbl_CA0D + $01,Y
C - - - - - 0x000A18 00:CA08: 85 11     STA ram_indirect_jmp + $01
C - - - - - 0x000A1A 00:CA0A: 6C 10 00  JMP (ram_indirect_jmp)



tbl_CA0D:
- D 2 - - - 0x000A1D 00:CA0D: 35 CE     .word ofs_003_CE35_00
- D 2 - - - 0x000A1F 00:CA0F: 9D CA     .word ofs_003_CA9D_02
- D 2 - - - 0x000A21 00:CA11: 1F CA     .word ofs_003_CA1F_04
- D 2 - - - 0x000A23 00:CA13: 0F CC     .word ofs_003_CC0F_06
- D 2 - - - 0x000A25 00:CA15: 3C CC     .word ofs_003_CC3C_08
- D 2 - - - 0x000A27 00:CA17: 61 CD     .word ofs_003_CD61_0A
- D 2 - - - 0x000A29 00:CA19: E6 CC     .word ofs_003_CCE6_0C
- D 2 - - - 0x000A2B 00:CA1B: 55 E6     .word ofs_003_E655_0E
- D 2 - - - 0x000A2D 00:CA1D: 4B E7     .word ofs_003_E74B_10



ofs_003_CA1F_04:
C - - J - - 0x000A2F 00:CA1F: AD 0F 06  LDA ram_060F
C - - - - - 0x000A32 00:CA22: F0 03     BEQ bra_CA27
C - - - - - 0x000A34 00:CA24: 4C DD C9  JMP loc_C9DD
bra_CA27:
C - - - - - 0x000A37 00:CA27: A5 4D     LDA ram_btn_1p
C - - - - - 0x000A39 00:CA29: 29 08     AND #con_btn_Start
C - - - - - 0x000A3B 00:CA2B: C5 49     CMP ram_0049
C - - - - - 0x000A3D 00:CA2D: F0 38     BEQ bra_CA67
C - - - - - 0x000A3F 00:CA2F: 85 49     STA ram_0049
C - - - - - 0x000A41 00:CA31: A5 49     LDA ram_0049
C - - - - - 0x000A43 00:CA33: F0 32     BEQ bra_CA67
C - - - - - 0x000A45 00:CA35: E6 4A     INC ram_flag_pause
C - - - - - 0x000A47 00:CA37: A2 22     LDX #$22    ; 2237
C - - - - - 0x000A49 00:CA39: A5 47     LDA ram_game_mode
C - - - - - 0x000A4B 00:CA3B: 25 46     AND ram_current_player
C - - - - - 0x000A4D 00:CA3D: F0 02     BEQ bra_CA41
C - - - - - 0x000A4F 00:CA3F: A2 2A     LDX #$2A    ; 2A37
bra_CA41:
C - - - - - 0x000A51 00:CA41: 8E 4B 02  STX ram_ppu_buffer_main
C - - - - - 0x000A54 00:CA44: A9 37     LDA #$37
C - - - - - 0x000A56 00:CA46: 8D 4C 02  STA ram_ppu_buffer_main + $01
C - - - - - 0x000A59 00:CA49: A2 06     LDX #$06
C - - - - - 0x000A5B 00:CA4B: A0 00     LDY #$00
C - - - - - 0x000A5D 00:CA4D: A5 4A     LDA ram_flag_pause
C - - - - - 0x000A5F 00:CA4F: 29 01     AND #$01
C - - - - - 0x000A61 00:CA51: F0 05     BEQ bra_CA58
C - - - - - 0x000A63 00:CA53: A2 00     LDX #$00
C - - - - - 0x000A65 00:CA55: 8D 0F 06  STA ram_060F
bra_CA58:
bra_CA58_loop:
C - - - - - 0x000A68 00:CA58: BD 91 CA  LDA tbl_CA91,X
C - - - - - 0x000A6B 00:CA5B: 99 4D 02  STA ram_ppu_buffer_main + $02,Y
C - - - - - 0x000A6E 00:CA5E: E8        INX
C - - - - - 0x000A6F 00:CA5F: C8        INY
C - - - - - 0x000A70 00:CA60: C0 06     CPY #$06
C - - - - - 0x000A72 00:CA62: D0 F4     BNE bra_CA58_loop
C - - - - - 0x000A74 00:CA64: 4C DD C9  JMP loc_C9DD
bra_CA67:
C - - - - - 0x000A77 00:CA67: A5 4A     LDA ram_flag_pause
C - - - - - 0x000A79 00:CA69: 29 01     AND #$01
C - - - - - 0x000A7B 00:CA6B: F0 03     BEQ bra_CA70
C - - - - - 0x000A7D 00:CA6D: 4C DD C9  JMP loc_C9DD
bra_CA70:
C - - - - - 0x000A80 00:CA70: 20 EF D0  JSR sub_D0EF
C - - - - - 0x000A83 00:CA73: 20 DF DE  JSR sub_DEDF_check_for_eating_pellets
C - - - - - 0x000A86 00:CA76: 20 FB D2  JSR sub_D2FB
C - - - - - 0x000A89 00:CA79: 20 F9 D8  JSR sub_D8F9
C - - - - - 0x000A8C 00:CA7C: 20 C2 D4  JSR sub_D4C2
C - - - - - 0x000A8F 00:CA7F: 20 37 D9  JSR sub_D937
C - - - - - 0x000A92 00:CA82: 20 C9 D8  JSR sub_D8C9
C - - - - - 0x000A95 00:CA85: 20 C9 DD  JSR sub_DDC9
C - - - - - 0x000A98 00:CA88: 20 0F D2  JSR sub_D20F
C - - - - - 0x000A9B 00:CA8B: 20 AB D9  JSR sub_D9AB
C - - - - - 0x000A9E 00:CA8E: 4C DD C9  JMP loc_C9DD



tbl_CA91:
- D 2 - - - 0x000AA1 00:CA91: 50        .byte $50, $41, $55, $53, $45, $FF   ; 00 
- D 2 - - - 0x000AA7 00:CA97: 2D        .byte $2D, $2D, $2D, $2D, $2D, $FF   ; 06 



ofs_003_CA9D_02:
C - - J - - 0x000AAD 00:CA9D: A5 87     LDA ram_0087
C - - - - - 0x000AAF 00:CA9F: F0 03     BEQ bra_CAA4
C - - - - - 0x000AB1 00:CAA1: 4C 1A CB  JMP loc_CB1A
bra_CAA4:
C - - - - - 0x000AB4 00:CAA4: A9 60     LDA #< (ram_oam + $60)
C - - - - - 0x000AB6 00:CAA6: 85 00     STA ram_0000
C - - - - - 0x000AB8 00:CAA8: A9 07     LDA #> (ram_oam + $60)
C - - - - - 0x000ABA 00:CAAA: 85 01     STA ram_0001
C - - - - - 0x000ABC 00:CAAC: A5 48     LDA ram_flag_demo
C - - - - - 0x000ABE 00:CAAE: D0 6A     BNE bra_CB1A
C - - - - - 0x000AC0 00:CAB0: A9 02     LDA #$02
C - - - - - 0x000AC2 00:CAB2: 85 04     STA ram_0004
C - - - - - 0x000AC4 00:CAB4: A0 00     LDY #$00
C - - - - - 0x000AC6 00:CAB6: 84 05     STY ram_0005
C - - - - - 0x000AC8 00:CAB8: 84 06     STY ram_0006
C - - - - - 0x000ACA 00:CABA: 84 07     STY ram_0007
bra_CABC_loop:
C - - - - - 0x000ACC 00:CABC: A6 06     LDX ram_0006
C - - - - - 0x000ACE 00:CABE: BD F6 CB  LDA tbl_CBF6_spr_pos,X
C - - - - - 0x000AD1 00:CAC1: 85 02     STA ram_0002    ; spr_X
C - - - - - 0x000AD3 00:CAC3: BD F7 CB  LDA tbl_CBF6_spr_pos + $01,X
C - - - - - 0x000AD6 00:CAC6: 85 03     STA ram_0003    ; spr_Y
C - - - - - 0x000AD8 00:CAC8: A6 07     LDX ram_0007
C - - - - - 0x000ADA 00:CACA: BD FC CB  LDA tbl_CBFC_spr_counter,X
C - - - - - 0x000ADD 00:CACD: 85 08     STA ram_0008    ; spr counter
bra_CACF_loop:
C - - - - - 0x000ADF 00:CACF: A5 03     LDA ram_0003    ; spr_Y
C - - - - - 0x000AE1 00:CAD1: 91 00     STA (ram_0000),Y    ; 0760-0798 (spr_Y)
C - - - - - 0x000AE3 00:CAD3: A6 05     LDX ram_0005
C - - - - - 0x000AE5 00:CAD5: BD D2 CB  LDA tbl_CBD2_spr_T,X
C - - - - - 0x000AE8 00:CAD8: C8        INY
C - - - - - 0x000AE9 00:CAD9: 91 00     STA (ram_0000),Y    ; 0761-0799 (spr_T)
C - - - - - 0x000AEB 00:CADB: BD E4 CB  LDA tbl_CBE4_spr_A,X
C - - - - - 0x000AEE 00:CADE: C8        INY
C - - - - - 0x000AEF 00:CADF: 91 00     STA (ram_0000),Y    ; 0762-079A (spr_A)
C - - - - - 0x000AF1 00:CAE1: A5 02     LDA ram_0002    ; spr_X
C - - - - - 0x000AF3 00:CAE3: C8        INY
C - - - - - 0x000AF4 00:CAE4: 91 00     STA (ram_0000),Y    ; 0763-079B (spr_X)
C - - - - - 0x000AF6 00:CAE6: A5 02     LDA ram_0002    ; spr_X
C - - - - - 0x000AF8 00:CAE8: 18        CLC
C - - - - - 0x000AF9 00:CAE9: 69 08     ADC #$08
C - - - - - 0x000AFB 00:CAEB: 85 02     STA ram_0002    ; spr_X
C - - - - - 0x000AFD 00:CAED: C8        INY
C - - - - - 0x000AFE 00:CAEE: E6 05     INC ram_0005
C - - - - - 0x000B00 00:CAF0: C6 08     DEC ram_0008    ; spr counter
C - - - - - 0x000B02 00:CAF2: D0 DB     BNE bra_CACF_loop
C - - - - - 0x000B04 00:CAF4: E6 06     INC ram_0006
C - - - - - 0x000B06 00:CAF6: E6 06     INC ram_0006
C - - - - - 0x000B08 00:CAF8: E6 07     INC ram_0007
C - - - - - 0x000B0A 00:CAFA: A5 69     LDA ram_0069
C - - - - - 0x000B0C 00:CAFC: D0 04     BNE bra_CB02
C - - - - - 0x000B0E 00:CAFE: A5 68     LDA ram_stage_p1
C - - - - - 0x000B10 00:CB00: D0 18     BNE bra_CB1A
bra_CB02:
C - - - - - 0x000B12 00:CB02: C6 04     DEC ram_0004
C - - - - - 0x000B14 00:CB04: F0 04     BEQ bra_CB0A
C - - - - - 0x000B16 00:CB06: 10 B4     BPL bra_CABC_loop
C - - - - - 0x000B18 00:CB08: 30 10     BMI bra_CB1A    ; jmp
bra_CB0A:
C - - - - - 0x000B1A 00:CB0A: A5 47     LDA ram_game_mode
C - - - - - 0x000B1C 00:CB0C: F0 0C     BEQ bra_CB1A
C - - - - - 0x000B1E 00:CB0E: A5 46     LDA ram_current_player
C - - - - - 0x000B20 00:CB10: F0 AA     BEQ bra_CABC_loop
C - - - - - 0x000B22 00:CB12: E6 05     INC ram_0005
C - - - - - 0x000B24 00:CB14: E6 05     INC ram_0005
C - - - - - 0x000B26 00:CB16: E6 05     INC ram_0005
C - - - - - 0x000B28 00:CB18: D0 A2     BNE bra_CABC_loop   ; jmp
bra_CB1A:
loc_CB1A:
C D 2 - - - 0x000B2A 00:CB1A: A5 87     LDA ram_0087
C - - - - - 0x000B2C 00:CB1C: C9 C0     CMP #$C0
C - - - - - 0x000B2E 00:CB1E: D0 03     BNE bra_CB23
; C0
C - - - - - 0x000B30 00:CB20: 4C B2 CB  JMP loc_CBB2
bra_CB23:
C - - - - - 0x000B33 00:CB23: E6 87     INC ram_0087
C - - - - - 0x000B35 00:CB25: A5 87     LDA ram_0087
C - - - - - 0x000B37 00:CB27: C9 78     CMP #$78
C - - - - - 0x000B39 00:CB29: F0 03     BEQ bra_CB2E_78
C - - - - - 0x000B3B 00:CB2B: 4C CF CB  JMP loc_CBCF
bra_CB2E_78:
C - - - - - 0x000B3E 00:CB2E: A9 A8     LDA #$A8
C - - - - - 0x000B40 00:CB30: 85 1C     STA ram_obj_pos_Y_hi
C - - - - - 0x000B42 00:CB32: A9 60     LDA #$60
C - - - - - 0x000B44 00:CB34: 85 1A     STA ram_obj_pos_X_hi
C - - - - - 0x000B46 00:CB36: 85 1E     STA ram_obj_pos_X_hi + $04
C - - - - - 0x000B48 00:CB38: 85 22     STA ram_obj_pos_X_hi + $08
C - - - - - 0x000B4A 00:CB3A: A9 58     LDA #$58
C - - - - - 0x000B4C 00:CB3C: 85 26     STA ram_obj_pos_X_hi + $0C
C - - - - - 0x000B4E 00:CB3E: 85 20     STA ram_obj_pos_Y_hi + $04
C - - - - - 0x000B50 00:CB40: A9 68     LDA #$68
C - - - - - 0x000B52 00:CB42: 85 2A     STA ram_obj_pos_X_hi + $10
C - - - - - 0x000B54 00:CB44: A9 70     LDA #$70
C - - - - - 0x000B56 00:CB46: 85 24     STA ram_obj_pos_Y_hi + $08
C - - - - - 0x000B58 00:CB48: 85 28     STA ram_obj_pos_Y_hi + $0C
C - - - - - 0x000B5A 00:CB4A: 85 2C     STA ram_obj_pos_Y_hi + $10
C - - - - - 0x000B5C 00:CB4C: A9 00     LDA #$00
C - - - - - 0x000B5E 00:CB4E: A8        TAY
bra_CB4F_loop:
; 0778-079B
C - - - - - 0x000B5F 00:CB4F: 99 78 07  STA ram_oam + $78,Y
C - - - - - 0x000B62 00:CB52: C8        INY
C - - - - - 0x000B63 00:CB53: C0 24     CPY #$24
C - - - - - 0x000B65 00:CB55: D0 F8     BNE bra_CB4F_loop
C - - - - - 0x000B67 00:CB57: A5 47     LDA ram_game_mode
C - - - - - 0x000B69 00:CB59: 25 46     AND ram_current_player
C - - - - - 0x000B6B 00:CB5B: F0 02     BEQ bra_CB5F
C - - - - - 0x000B6D 00:CB5D: A9 08     LDA #$08
bra_CB5F:
C - - - - - 0x000B6F 00:CB5F: 85 00     STA ram_0000
C - - - - - 0x000B71 00:CB61: A5 67     LDA ram_lives_p1
C - - - - - 0x000B73 00:CB63: 38        SEC
C - - - - - 0x000B74 00:CB64: E9 01     SBC #$01
C - - - - - 0x000B76 00:CB66: 0A        ASL
C - - - - - 0x000B77 00:CB67: A8        TAY
C - - - - - 0x000B78 00:CB68: B9 07 CC  LDA tbl_CC07,Y
C - - - - - 0x000B7B 00:CB6B: 18        CLC
C - - - - - 0x000B7C 00:CB6C: 65 00     ADC ram_0000
C - - - - - 0x000B7E 00:CB6E: 85 00     STA ram_0000
C - - - - - 0x000B80 00:CB70: B9 08 CC  LDA tbl_CC07 + $01,Y
C - - - - - 0x000B83 00:CB73: 85 01     STA ram_0001
C - - - - - 0x000B85 00:CB75: A5 00     LDA ram_0000    ; ppu hi
C - - - - - 0x000B87 00:CB77: 8D 4B 02  STA ram_ppu_buffer_main
C - - - - - 0x000B8A 00:CB7A: A5 01     LDA ram_0001    ; ppu lo
C - - - - - 0x000B8C 00:CB7C: 8D 4C 02  STA ram_ppu_buffer_main + $01
C - - - - - 0x000B8F 00:CB7F: A9 2D     LDA #con_tile + $2D
C - - - - - 0x000B91 00:CB81: 8D 4D 02  STA ram_ppu_buffer_main + $02
C - - - - - 0x000B94 00:CB84: 8D 4E 02  STA ram_ppu_buffer_main + $03
C - - - - - 0x000B97 00:CB87: A9 00     LDA #con_tile + $00
C - - - - - 0x000B99 00:CB89: 8D 4F 02  STA ram_ppu_buffer_main + $04
C - - - - - 0x000B9C 00:CB8C: A5 00     LDA ram_0000
C - - - - - 0x000B9E 00:CB8E: 8D 50 02  STA ram_ppu_buffer_main + $05
C - - - - - 0x000BA1 00:CB91: A5 01     LDA ram_0001
C - - - - - 0x000BA3 00:CB93: 18        CLC
C - - - - - 0x000BA4 00:CB94: 69 20     ADC #con_tile + $20
C - - - - - 0x000BA6 00:CB96: 8D 51 02  STA ram_ppu_buffer_main + $06
C - - - - - 0x000BA9 00:CB99: A9 2D     LDA #con_tile + $2D
C - - - - - 0x000BAB 00:CB9B: 8D 52 02  STA ram_ppu_buffer_main + $07
C - - - - - 0x000BAE 00:CB9E: 8D 53 02  STA ram_ppu_buffer_main + $08
C - - - - - 0x000BB1 00:CBA1: A9 FF     LDA #$FF    ; close buffer
C - - - - - 0x000BB3 00:CBA3: 8D 54 02  STA ram_ppu_buffer_main + $09
C - - - - - 0x000BB6 00:CBA6: 20 F9 D8  JSR sub_D8F9
C - - - - - 0x000BB9 00:CBA9: 20 37 D9  JSR sub_D937
C - - - - - 0x000BBC 00:CBAC: 20 AB D9  JSR sub_D9AB
C - - - - - 0x000BBF 00:CBAF: 4C CF CB  JMP loc_CBCF



loc_CBB2:
C D 2 - - - 0x000BC2 00:CBB2: AD 00 06  LDA ram_sfx_plr_ready
C - - - - - 0x000BC5 00:CBB5: 0D 01 06  ORA ram_sfx_plr_ready + $01
C - - - - - 0x000BC8 00:CBB8: D0 15     BNE bra_CBCF
C - - - - - 0x000BCA 00:CBBA: A5 48     LDA ram_flag_demo
C - - - - - 0x000BCC 00:CBBC: D0 0D     BNE bra_CBCB
C - - - - - 0x000BCE 00:CBBE: A9 00     LDA #$00
C - - - - - 0x000BD0 00:CBC0: 85 69     STA ram_0069
C - - - - - 0x000BD2 00:CBC2: A8        TAY
bra_CBC3_loop:
; 0760-07FF
C - - - - - 0x000BD3 00:CBC3: 99 60 07  STA ram_oam + $60,Y
C - - - - - 0x000BD6 00:CBC6: C8        INY
C - - - - - 0x000BD7 00:CBC7: C0 A0     CPY #$A0
C - - - - - 0x000BD9 00:CBC9: D0 F8     BNE bra_CBC3_loop
bra_CBCB:
C - - - - - 0x000BDB 00:CBCB: A9 04     LDA #con_script_04
C - - - - - 0x000BDD 00:CBCD: 85 3F     STA ram_script
bra_CBCF:
loc_CBCF:
C D 2 - - - 0x000BDF 00:CBCF: 4C DD C9  JMP loc_C9DD



tbl_CBD2_spr_T:
- D 2 - - - 0x000BE2 00:CBD2: C6        .byte $C6   ; 00 
- D 2 - - - 0x000BE3 00:CBD3: C3        .byte $C3   ; 01 
- D 2 - - - 0x000BE4 00:CBD4: C1        .byte $C1   ; 02 
- D 2 - - - 0x000BE5 00:CBD5: BA        .byte $BA   ; 03 
- D 2 - - - 0x000BE6 00:CBD6: C7        .byte $C7   ; 04 
- D 2 - - - 0x000BE7 00:CBD7: BB        .byte $BB   ; 05 
- D 2 - - - 0x000BE8 00:CBD8: B0        .byte $B0   ; 06 
- D 2 - - - 0x000BE9 00:CBD9: B1        .byte $B1   ; 07 
- D 2 - - - 0x000BEA 00:CBDA: B2        .byte $B2   ; 08 
- D 2 - - - 0x000BEB 00:CBDB: B3        .byte $B3   ; 09 
- D 2 - - - 0x000BEC 00:CBDC: B4        .byte $B4   ; 0A 
- D 2 - - - 0x000BED 00:CBDD: B5        .byte $B5   ; 0B 
- D 2 - - - 0x000BEE 00:CBDE: B6        .byte $B6   ; 0C 
- D 2 - - - 0x000BEF 00:CBDF: B7        .byte $B7   ; 0D 
- D 2 - - - 0x000BF0 00:CBE0: B4        .byte $B4   ; 0E 
- D 2 - - - 0x000BF1 00:CBE1: B8        .byte $B8   ; 0F 
- D 2 - - - 0x000BF2 00:CBE2: B9        .byte $B9   ; 10 
- D 2 - - - 0x000BF3 00:CBE3: B6        .byte $B6   ; 11 



tbl_CBE4_spr_A:
- D 2 - - - 0x000BF4 00:CBE4: 00        .byte $00   ; 00 
- D 2 - - - 0x000BF5 00:CBE5: 00        .byte $00   ; 01 
- D 2 - - - 0x000BF6 00:CBE6: 00        .byte $00   ; 02 
- D 2 - - - 0x000BF7 00:CBE7: 00        .byte $00   ; 03 
- D 2 - - - 0x000BF8 00:CBE8: 00        .byte $00   ; 04 
- D 2 - - - 0x000BF9 00:CBE9: 00        .byte $00   ; 05 
- D 2 - - - 0x000BFA 00:CBEA: 02        .byte $02   ; 06 
- D 2 - - - 0x000BFB 00:CBEB: 02        .byte $02   ; 07 
- D 2 - - - 0x000BFC 00:CBEC: 02        .byte $02   ; 08 
- D 2 - - - 0x000BFD 00:CBED: 02        .byte $02   ; 09 
- D 2 - - - 0x000BFE 00:CBEE: 02        .byte $02   ; 0A 
- D 2 - - - 0x000BFF 00:CBEF: 02        .byte $02   ; 0B 
- D 2 - - - 0x000C00 00:CBF0: 02        .byte $02   ; 0C 
- D 2 - - - 0x000C01 00:CBF1: 02        .byte $02   ; 0D 
- D 2 - - - 0x000C02 00:CBF2: 02        .byte $02   ; 0E 
- D 2 - - - 0x000C03 00:CBF3: 02        .byte $02   ; 0F 
- D 2 - - - 0x000C04 00:CBF4: 02        .byte $02   ; 10 
- D 2 - - - 0x000C05 00:CBF5: 02        .byte $02   ; 11 



tbl_CBF6_spr_pos:
; X, Y
- D 2 - - - 0x000C06 00:CBF6: 44        .byte $44, $88   ; 00 
- D 2 - - - 0x000C08 00:CBF8: 44        .byte $44, $60   ; 02 
- D 2 - - - 0x000C0A 00:CBFA: 50        .byte $50, $70   ; 04 



tbl_CBFC_spr_counter:
- D 2 - - - 0x000C0C 00:CBFC: 06        .byte $06   ; 00 
- D 2 - - - 0x000C0D 00:CBFD: 06        .byte $06   ; 02 
- D 2 - - - 0x000C0E 00:CBFE: 03        .byte $03   ; 04 


; bzk garbage
- - - - - - 0x000C0F 00:CBFF: C0        .byte $C0, $C1, $C2, $C3, $C4, $C5, $C3, $C6   ; 



tbl_CC07:
; ppu address?
- D 2 - - - 0x000C17 00:CC07: 23 17     .dbyt $2317 ; 01 
- D 2 - - - 0x000C19 00:CC09: 23 19     .dbyt $2319 ; 02 
- D 2 - - - 0x000C1B 00:CC0B: 23 1B     .dbyt $231B ; 03 
- D 2 - - - 0x000C1D 00:CC0D: 23 57     .dbyt $2357 ; 04 



ofs_003_CC0F_06:
C - - J - - 0x000C1F 00:CC0F: E6 DA     INC ram_00DA
C - - - - - 0x000C21 00:CC11: A9 28     LDA #$28
C - - - - - 0x000C23 00:CC13: C5 DA     CMP ram_00DA
C - - - - - 0x000C25 00:CC15: D0 16     BNE bra_CC2D
C - - - - - 0x000C27 00:CC17: A9 02     LDA #$02
C - - - - - 0x000C29 00:CC19: 85 DA     STA ram_00DA
C - - - - - 0x000C2B 00:CC1B: A9 04     LDA #con_script_04
C - - - - - 0x000C2D 00:CC1D: 85 3F     STA ram_script
C - - - - - 0x000C2F 00:CC1F: A9 08     LDA #$08
C - - - - - 0x000C31 00:CC21: A2 FE     LDX #$FE
bra_CC23_loop:
C - - - - - 0x000C33 00:CC23: E8        INX
C - - - - - 0x000C34 00:CC24: E8        INX
C - - - - - 0x000C35 00:CC25: D5 B8     CMP ram_00B8,X
C - - - - - 0x000C37 00:CC27: D0 FA     BNE bra_CC23_loop
C - - - - - 0x000C39 00:CC29: A9 06     LDA #$06
C - - - - - 0x000C3B 00:CC2B: 95 B8     STA ram_00B8,X
bra_CC2D:
C - - - - - 0x000C3D 00:CC2D: 20 C9 DD  JSR sub_DDC9
C - - - - - 0x000C40 00:CC30: 20 7F D8  JSR sub_D87F
C - - - - - 0x000C43 00:CC33: 20 37 D9  JSR sub_D937
C - - - - - 0x000C46 00:CC36: 20 AB D9  JSR sub_D9AB
C - - - - - 0x000C49 00:CC39: 4C DD C9  JMP loc_C9DD



ofs_003_CC3C_08:
C - - J - - 0x000C4C 00:CC3C: A5 87     LDA ram_0087
C - - - - - 0x000C4E 00:CC3E: D0 23     BNE bra_CC63
C - - - - - 0x000C50 00:CC40: C6 DB     DEC ram_00DB
C - - - - - 0x000C52 00:CC42: D0 13     BNE bra_CC57
C - - - - - 0x000C54 00:CC44: E6 87     INC ram_0087
C - - - - - 0x000C56 00:CC46: A9 0A     LDA #$0A
C - - - - - 0x000C58 00:CC48: 85 DB     STA ram_00DB
C - - - - - 0x000C5A 00:CC4A: 8D 03 06  STA ram_sfx_death
C - - - - - 0x000C5D 00:CC4D: A9 00     LDA #$00
C - - - - - 0x000C5F 00:CC4F: AA        TAX
bra_CC50_loop:
C - - - - - 0x000C60 00:CC50: 95 1E     STA ram_obj_position + $04,X
C - - - - - 0x000C62 00:CC52: E8        INX
C - - - - - 0x000C63 00:CC53: E0 14     CPX #$14
C - - - - - 0x000C65 00:CC55: D0 F9     BNE bra_CC50_loop
bra_CC57:
C - - - - - 0x000C67 00:CC57: 20 C9 DD  JSR sub_DDC9
C - - - - - 0x000C6A 00:CC5A: 20 37 D9  JSR sub_D937
C - - - - - 0x000C6D 00:CC5D: 20 AB D9  JSR sub_D9AB
C - - - - - 0x000C70 00:CC60: 4C DD C9  JMP loc_C9DD
bra_CC63:
C - - - - - 0x000C73 00:CC63: C6 DB     DEC ram_00DB
C - - - - - 0x000C75 00:CC65: 10 0F     BPL bra_CC76
C - - - - - 0x000C77 00:CC67: A9 0A     LDA #$0A
C - - - - - 0x000C79 00:CC69: 85 DB     STA ram_00DB
C - - - - - 0x000C7B 00:CC6B: A5 32     LDA ram_animation
C - - - - - 0x000C7D 00:CC6D: 18        CLC
C - - - - - 0x000C7E 00:CC6E: 69 01     ADC #$01
C - - - - - 0x000C80 00:CC70: 85 32     STA ram_animation
C - - - - - 0x000C82 00:CC72: C9 1E     CMP #$1E
C - - - - - 0x000C84 00:CC74: F0 09     BEQ bra_CC7F
bra_CC76:
C - - - - - 0x000C86 00:CC76: 20 C9 DD  JSR sub_DDC9
C - - - - - 0x000C89 00:CC79: 20 AB D9  JSR sub_D9AB
C - - - - - 0x000C8C 00:CC7C: 4C DD C9  JMP loc_C9DD
bra_CC7F:
C - - - - - 0x000C8F 00:CC7F: A5 48     LDA ram_flag_demo
C - - - - - 0x000C91 00:CC81: D0 3C     BNE bra_CCBF
C - - - - - 0x000C93 00:CC83: C6 67     DEC ram_lives_p1
C - - - - - 0x000C95 00:CC85: D0 0D     BNE bra_CC94
C - - - - - 0x000C97 00:CC87: A9 00     LDA #$00
C - - - - - 0x000C99 00:CC89: 85 87     STA ram_0087
C - - - - - 0x000C9B 00:CC8B: 85 69     STA ram_0069
C - - - - - 0x000C9D 00:CC8D: A9 0A     LDA #con_script_0A
C - - - - - 0x000C9F 00:CC8F: 85 3F     STA ram_script
C - - - - - 0x000CA1 00:CC91: 4C DD C9  JMP loc_C9DD
bra_CC94:
loc_CC94:
C D 2 - - - 0x000CA4 00:CC94: A9 00     LDA #con_script_00
C - - - - - 0x000CA6 00:CC96: 85 3F     STA ram_script
C - - - - - 0x000CA8 00:CC98: A9 01     LDA #$01
C - - - - - 0x000CAA 00:CC9A: 85 69     STA ram_0069
C - - - - - 0x000CAC 00:CC9C: A5 47     LDA ram_game_mode
C - - - - - 0x000CAE 00:CC9E: F0 04     BEQ bra_CCA4
C - - - - - 0x000CB0 00:CCA0: A5 77     LDA ram_lives_p2
C - - - - - 0x000CB2 00:CCA2: D0 26     BNE bra_CCCA
bra_CCA4:
C - - - - - 0x000CB4 00:CCA4: A5 67     LDA ram_lives_p1
C - - - - - 0x000CB6 00:CCA6: D0 3B     BNE bra_CCE3
C - - - - - 0x000CB8 00:CCA8: 85 69     STA ram_0069
C - - - - - 0x000CBA 00:CCAA: A5 46     LDA ram_current_player
C - - - - - 0x000CBC 00:CCAC: F0 11     BEQ bra_CCBF
; transfer data between two ranges using 0000 as intermediary
C - - - - - 0x000CBE 00:CCAE: A2 0F     LDX #$0F
bra_CCB0_loop:
C - - - - - 0x000CC0 00:CCB0: B5 67     LDA ram_data_p1,X
C - - - - - 0x000CC2 00:CCB2: 85 00     STA ram_0000
C - - - - - 0x000CC4 00:CCB4: B5 77     LDA ram_data_p2,X
C - - - - - 0x000CC6 00:CCB6: 95 67     STA ram_data_p1,X
C - - - - - 0x000CC8 00:CCB8: A5 00     LDA ram_0000
C - - - - - 0x000CCA 00:CCBA: 95 77     STA ram_data_p2,X
C - - - - - 0x000CCC 00:CCBC: CA        DEX
C - - - - - 0x000CCD 00:CCBD: 10 F1     BPL bra_CCB0_loop
bra_CCBF:
C - - - - - 0x000CCF 00:CCBF: A9 00     LDA #$00
C - - - - - 0x000CD1 00:CCC1: 85 46     STA ram_current_player
C - - - - - 0x000CD3 00:CCC3: A9 00     LDA #con_script_00
C - - - - - 0x000CD5 00:CCC5: 85 3F     STA ram_script
C - - - - - 0x000CD7 00:CCC7: 4C 68 C1  JMP loc_C168
bra_CCCA:
; transfer data between two ranges using 0000 as intermediary
; bzk optimize, same code as 0x000CBE, create a subroutine instead
C - - - - - 0x000CDA 00:CCCA: A2 0F     LDX #$0F
bra_CCCC_loop:
C - - - - - 0x000CDC 00:CCCC: B5 67     LDA ram_data_p1,X
C - - - - - 0x000CDE 00:CCCE: 85 00     STA ram_0000
C - - - - - 0x000CE0 00:CCD0: B5 77     LDA ram_data_p2,X
C - - - - - 0x000CE2 00:CCD2: 95 67     STA ram_data_p1,X
C - - - - - 0x000CE4 00:CCD4: A5 00     LDA ram_0000
C - - - - - 0x000CE6 00:CCD6: 95 77     STA ram_data_p2,X
C - - - - - 0x000CE8 00:CCD8: CA        DEX
C - - - - - 0x000CE9 00:CCD9: 10 F1     BPL bra_CCCC_loop
C - - - - - 0x000CEB 00:CCDB: E6 46     INC ram_current_player
C - - - - - 0x000CED 00:CCDD: A5 46     LDA ram_current_player
C - - - - - 0x000CEF 00:CCDF: 29 01     AND #$01
C - - - - - 0x000CF1 00:CCE1: 85 46     STA ram_current_player
bra_CCE3:
C - - - - - 0x000CF3 00:CCE3: 4C DD C9  JMP loc_C9DD



ofs_003_CCE6_0C:
C - - J - - 0x000CF6 00:CCE6: A5 87     LDA ram_0087
C - - - - - 0x000CF8 00:CCE8: D0 11     BNE bra_CCFB
C - - - - - 0x000CFA 00:CCEA: A2 00     LDX #$00
bra_CCEC_loop:
C - - - - - 0x000CFC 00:CCEC: 95 1E     STA ram_obj_position + $04,X
C - - - - - 0x000CFE 00:CCEE: E8        INX
C - - - - - 0x000CFF 00:CCEF: E0 14     CPX #$14
C - - - - - 0x000D01 00:CCF1: D0 F9     BNE bra_CCEC_loop
C - - - - - 0x000D03 00:CCF3: E6 87     INC ram_0087
C - - - - - 0x000D05 00:CCF5: A9 01     LDA #$01
C - - - - - 0x000D07 00:CCF7: 85 32     STA ram_animation
C - - - - - 0x000D09 00:CCF9: D0 55     BNE bra_CD50    ; jmp
bra_CCFB:
C - - - - - 0x000D0B 00:CCFB: A5 4B     LDA ram_frame_cnt
C - - - - - 0x000D0D 00:CCFD: 29 07     AND #$07
C - - - - - 0x000D0F 00:CCFF: D0 4F     BNE bra_CD50
C - - - - - 0x000D11 00:CD01: A2 00     LDX #$00
C - - - - - 0x000D13 00:CD03: A5 87     LDA ram_0087
C - - - - - 0x000D15 00:CD05: 29 01     AND #$01
C - - - - - 0x000D17 00:CD07: D0 02     BNE bra_CD0B
C - - - - - 0x000D19 00:CD09: A2 04     LDX #$04
bra_CD0B:
C - - - - - 0x000D1B 00:CD0B: A0 03     LDY #$03
bra_CD0D_loop:
C - - - - - 0x000D1D 00:CD0D: BD 59 CD  LDA tbl_CD59,X
C - - - - - 0x000D20 00:CD10: 99 4B 02  STA ram_ppu_buffer_main,Y
C - - - - - 0x000D23 00:CD13: E8        INX
C - - - - - 0x000D24 00:CD14: 88        DEY
C - - - - - 0x000D25 00:CD15: 10 F6     BPL bra_CD0D_loop
C - - - - - 0x000D27 00:CD17: E6 87     INC ram_0087
C - - - - - 0x000D29 00:CD19: A9 10     LDA #$10
C - - - - - 0x000D2B 00:CD1B: C5 87     CMP ram_0087
C - - - - - 0x000D2D 00:CD1D: D0 31     BNE bra_CD50
C - - - - - 0x000D2F 00:CD1F: A9 00     LDA #$00
C - - - - - 0x000D31 00:CD21: 85 1A     STA ram_obj_pos_X_hi
C - - - - - 0x000D33 00:CD23: 85 1C     STA ram_obj_pos_Y_hi
C - - - - - 0x000D35 00:CD25: 85 87     STA ram_0087
C - - - - - 0x000D37 00:CD27: A5 68     LDA ram_stage_p1
C - - - - - 0x000D39 00:CD29: C9 01     CMP #$01
C - - - - - 0x000D3B 00:CD2B: F0 18     BEQ bra_CD45
C - - - - - 0x000D3D 00:CD2D: E6 87     INC ram_0087
C - - - - - 0x000D3F 00:CD2F: E6 87     INC ram_0087
C - - - - - 0x000D41 00:CD31: C9 04     CMP #$04
C - - - - - 0x000D43 00:CD33: F0 10     BEQ bra_CD45
C - - - - - 0x000D45 00:CD35: E6 87     INC ram_0087
C - - - - - 0x000D47 00:CD37: E6 87     INC ram_0087
C - - - - - 0x000D49 00:CD39: C9 08     CMP #$08
C - - - - - 0x000D4B 00:CD3B: F0 08     BEQ bra_CD45
C - - - - - 0x000D4D 00:CD3D: C9 0C     CMP #$0C
C - - - - - 0x000D4F 00:CD3F: F0 04     BEQ bra_CD45
C - - - - - 0x000D51 00:CD41: C9 10     CMP #$10
C - - - - - 0x000D53 00:CD43: D0 07     BNE bra_CD4C
bra_CD45:
C - - - - - 0x000D55 00:CD45: A9 0E     LDA #con_script_0E
C - - - - - 0x000D57 00:CD47: 85 3F     STA ram_script
C - - - - - 0x000D59 00:CD49: 4C 50 CD  JMP loc_CD50
bra_CD4C:
C - - - - - 0x000D5C 00:CD4C: A9 00     LDA #con_script_00
C - - - - - 0x000D5E 00:CD4E: 85 3F     STA ram_script
bra_CD50:
loc_CD50:
C D 2 - - - 0x000D60 00:CD50: 20 C9 DD  JSR sub_DDC9
C - - - - - 0x000D63 00:CD53: 20 AB D9  JSR sub_D9AB
C - - - - - 0x000D66 00:CD56: 4C DD C9  JMP loc_C9DD



tbl_CD59:
- D 2 - - - 0x000D69 00:CD59: FF        .byte $FF, $11, $05, $3F   ; 00 
- D 2 - - - 0x000D6D 00:CD5D: FF        .byte $FF, $20, $05, $3F   ; 04 



ofs_003_CD61_0A:
C - - J - - 0x000D71 00:CD61: A5 87     LDA ram_0087
C - - - - - 0x000D73 00:CD63: F0 03     BEQ bra_CD68
C - - - - - 0x000D75 00:CD65: 4C EC CD  JMP loc_CDEC
bra_CD68:
C - - - - - 0x000D78 00:CD68: A0 00     LDY #$00
C - - - - - 0x000D7A 00:CD6A: A9 FF     LDA #$FF
bra_CD6C_loop:
; 0700-075F
C - - - - - 0x000D7C 00:CD6C: 99 00 07  STA ram_oam,Y
C - - - - - 0x000D7F 00:CD6F: C8        INY
C - - - - - 0x000D80 00:CD70: C0 60     CPY #$60
C - - - - - 0x000D82 00:CD72: D0 F8     BNE bra_CD6C_loop
C - - - - - 0x000D84 00:CD74: A9 60     LDA #< (ram_oam + $60)
C - - - - - 0x000D86 00:CD76: 85 00     STA ram_0000
C - - - - - 0x000D88 00:CD78: A9 07     LDA #> (ram_oam + $60)
C - - - - - 0x000D8A 00:CD7A: 85 01     STA ram_0001
C - - - - - 0x000D8C 00:CD7C: A9 03     LDA #$03
C - - - - - 0x000D8E 00:CD7E: 85 04     STA ram_0004
C - - - - - 0x000D90 00:CD80: A0 00     LDY #$00
C - - - - - 0x000D92 00:CD82: 84 05     STY ram_0005
C - - - - - 0x000D94 00:CD84: 84 06     STY ram_0006
C - - - - - 0x000D96 00:CD86: 84 07     STY ram_0007
bra_CD88_loop:
C - - - - - 0x000D98 00:CD88: A6 06     LDX ram_0006
C - - - - - 0x000D9A 00:CD8A: BD 29 CE  LDA tbl_CE29_spr_pos,X
C - - - - - 0x000D9D 00:CD8D: 85 02     STA ram_0002    ; spr_X
C - - - - - 0x000D9F 00:CD8F: BD 2A CE  LDA tbl_CE29_spr_pos + $01,X
C - - - - - 0x000DA2 00:CD92: 85 03     STA ram_0003    ; spr_Y
C - - - - - 0x000DA4 00:CD94: A6 07     LDX ram_0007
C - - - - - 0x000DA6 00:CD96: BD 31 CE  LDA tbl_CE31_spr_counter,X
C - - - - - 0x000DA9 00:CD99: 85 08     STA ram_0008    ; spr counter
bra_CD9B_loop:
C - - - - - 0x000DAB 00:CD9B: A5 03     LDA ram_0003    ; spr_Y
C - - - - - 0x000DAD 00:CD9D: 91 00     STA (ram_0000),Y    ; 0760-07A0 (spr_Y)
C - - - - - 0x000DAF 00:CD9F: A6 05     LDX ram_0005
C - - - - - 0x000DB1 00:CDA1: BD 01 CE  LDA tbl_CE01_spr_T,X
C - - - - - 0x000DB4 00:CDA4: C8        INY
C - - - - - 0x000DB5 00:CDA5: 91 00     STA (ram_0000),Y    ; 0761-07A1 (spr_T)
C - - - - - 0x000DB7 00:CDA7: BD 15 CE  LDA tbl_CE15_spr_A,X
C - - - - - 0x000DBA 00:CDAA: C8        INY
C - - - - - 0x000DBB 00:CDAB: 91 00     STA (ram_0000),Y    ; 0762-07A2 (spr_A)
C - - - - - 0x000DBD 00:CDAD: A5 02     LDA ram_0002    ; spr_X
C - - - - - 0x000DBF 00:CDAF: C8        INY
C - - - - - 0x000DC0 00:CDB0: 91 00     STA (ram_0000),Y    ; 0763-07A3 (spr_X)
C - - - - - 0x000DC2 00:CDB2: A5 02     LDA ram_0002    ; spr_X
C - - - - - 0x000DC4 00:CDB4: 18        CLC
C - - - - - 0x000DC5 00:CDB5: 69 08     ADC #$08
C - - - - - 0x000DC7 00:CDB7: 85 02     STA ram_0002    ; spr_X
C - - - - - 0x000DC9 00:CDB9: C8        INY
C - - - - - 0x000DCA 00:CDBA: E6 05     INC ram_0005
C - - - - - 0x000DCC 00:CDBC: C6 08     DEC ram_0008    ; spr counter
C - - - - - 0x000DCE 00:CDBE: D0 DB     BNE bra_CD9B_loop
C - - - - - 0x000DD0 00:CDC0: E6 06     INC ram_0006
C - - - - - 0x000DD2 00:CDC2: E6 06     INC ram_0006
C - - - - - 0x000DD4 00:CDC4: E6 07     INC ram_0007
C - - - - - 0x000DD6 00:CDC6: A5 47     LDA ram_game_mode
C - - - - - 0x000DD8 00:CDC8: F0 0A     BEQ bra_CDD4
C - - - - - 0x000DDA 00:CDCA: A5 77     LDA ram_lives_p2
C - - - - - 0x000DDC 00:CDCC: D0 06     BNE bra_CDD4
C - - - - - 0x000DDE 00:CDCE: A5 04     LDA ram_0004
C - - - - - 0x000DE0 00:CDD0: C9 02     CMP #$02
C - - - - - 0x000DE2 00:CDD2: F0 18     BEQ bra_CDEC
bra_CDD4:
C - - - - - 0x000DE4 00:CDD4: C6 04     DEC ram_0004
C - - - - - 0x000DE6 00:CDD6: F0 04     BEQ bra_CDDC
C - - - - - 0x000DE8 00:CDD8: 10 AE     BPL bra_CD88_loop
C - - - - - 0x000DEA 00:CDDA: 30 10     BMI bra_CDEC    ; jmp
bra_CDDC:
C - - - - - 0x000DEC 00:CDDC: A5 47     LDA ram_game_mode
C - - - - - 0x000DEE 00:CDDE: F0 0C     BEQ bra_CDEC
C - - - - - 0x000DF0 00:CDE0: A5 46     LDA ram_current_player
C - - - - - 0x000DF2 00:CDE2: F0 A4     BEQ bra_CD88_loop
C - - - - - 0x000DF4 00:CDE4: E6 05     INC ram_0005
C - - - - - 0x000DF6 00:CDE6: E6 05     INC ram_0005
C - - - - - 0x000DF8 00:CDE8: E6 05     INC ram_0005
C - - - - - 0x000DFA 00:CDEA: D0 9C     BNE bra_CD88_loop   ; jmp
bra_CDEC:
loc_CDEC:
C D 2 - - - 0x000DFC 00:CDEC: E6 87     INC ram_0087
C - - - - - 0x000DFE 00:CDEE: D0 0E     BNE bra_CDFE
C - - - - - 0x000E00 00:CDF0: A9 00     LDA #$00
C - - - - - 0x000E02 00:CDF2: A8        TAY
bra_CDF3_loop:
; 0760-07FF
C - - - - - 0x000E03 00:CDF3: 99 60 07  STA ram_oam + $60,Y
C - - - - - 0x000E06 00:CDF6: C8        INY
C - - - - - 0x000E07 00:CDF7: C0 A0     CPY #$A0
C - - - - - 0x000E09 00:CDF9: D0 F8     BNE bra_CDF3_loop
C - - - - - 0x000E0B 00:CDFB: 4C 94 CC  JMP loc_CC94
bra_CDFE:
C - - - - - 0x000E0E 00:CDFE: 4C DD C9  JMP loc_C9DD



tbl_CE01_spr_T:
- D 2 - - - 0x000E11 00:CE01: BC        .byte $BC   ; 00 
- D 2 - - - 0x000E12 00:CE02: B2        .byte $B2   ; 01 
- D 2 - - - 0x000E13 00:CE03: BD        .byte $BD   ; 02 
- D 2 - - - 0x000E14 00:CE04: B4        .byte $B4   ; 03 
- D 2 - - - 0x000E15 00:CE05: B6        .byte $B6   ; 04 
- D 2 - - - 0x000E16 00:CE06: BE        .byte $BE   ; 05 
- D 2 - - - 0x000E17 00:CE07: B4        .byte $B4   ; 06 
- D 2 - - - 0x000E18 00:CE08: B5        .byte $B5   ; 07 
- D 2 - - - 0x000E19 00:CE09: B0        .byte $B0   ; 08 
- D 2 - - - 0x000E1A 00:CE0A: B1        .byte $B1   ; 09 
- D 2 - - - 0x000E1B 00:CE0B: B2        .byte $B2   ; 0A 
- D 2 - - - 0x000E1C 00:CE0C: B3        .byte $B3   ; 0B 
- D 2 - - - 0x000E1D 00:CE0D: B4        .byte $B4   ; 0C 
- D 2 - - - 0x000E1E 00:CE0E: B5        .byte $B5   ; 0D 
- D 2 - - - 0x000E1F 00:CE0F: B6        .byte $B6   ; 0E 
- D 2 - - - 0x000E20 00:CE10: B7        .byte $B7   ; 0F 
- D 2 - - - 0x000E21 00:CE11: B4        .byte $B4   ; 10 
- D 2 - - - 0x000E22 00:CE12: B8        .byte $B8   ; 11 
- D 2 - - - 0x000E23 00:CE13: B9        .byte $B9   ; 12 
- D 2 - - - 0x000E24 00:CE14: B6        .byte $B6   ; 13 



tbl_CE15_spr_A:
- D 2 - - - 0x000E25 00:CE15: 00        .byte $00   ; 00 
- D 2 - - - 0x000E26 00:CE16: 00        .byte $00   ; 01 
- D 2 - - - 0x000E27 00:CE17: 00        .byte $00   ; 02 
- D 2 - - - 0x000E28 00:CE18: 00        .byte $00   ; 03 
- D 2 - - - 0x000E29 00:CE19: 00        .byte $00   ; 04 
- D 2 - - - 0x000E2A 00:CE1A: 00        .byte $00   ; 05 
- D 2 - - - 0x000E2B 00:CE1B: 00        .byte $00   ; 06 
- D 2 - - - 0x000E2C 00:CE1C: 00        .byte $00   ; 07 
- D 2 - - - 0x000E2D 00:CE1D: 02        .byte $02   ; 08 
- D 2 - - - 0x000E2E 00:CE1E: 02        .byte $02   ; 09 
- D 2 - - - 0x000E2F 00:CE1F: 02        .byte $02   ; 0A 
- D 2 - - - 0x000E30 00:CE20: 02        .byte $02   ; 0B 
- D 2 - - - 0x000E31 00:CE21: 02        .byte $02   ; 0C 
- D 2 - - - 0x000E32 00:CE22: 02        .byte $02   ; 0D 
- D 2 - - - 0x000E33 00:CE23: 02        .byte $02   ; 0E 
- D 2 - - - 0x000E34 00:CE24: 02        .byte $02   ; 0F 
- D 2 - - - 0x000E35 00:CE25: 02        .byte $02   ; 10 
- D 2 - - - 0x000E36 00:CE26: 02        .byte $02   ; 11 
- D 2 - - - 0x000E37 00:CE27: 02        .byte $02   ; 12 
- D 2 - - - 0x000E38 00:CE28: 02        .byte $02   ; 13 



tbl_CE29_spr_pos:
; X, Y
- D 2 - - - 0x000E39 00:CE29: 38        .byte $38, $88   ; 00 
- D 2 - - - 0x000E3B 00:CE2B: 60        .byte $60, $88   ; 02 
- D 2 - - - 0x000E3D 00:CE2D: 44        .byte $44, $60   ; 04 
- D 2 - - - 0x000E3F 00:CE2F: 50        .byte $50, $70   ; 06 



tbl_CE31_spr_counter:
- D 2 - - - 0x000E41 00:CE31: 04        .byte $04   ; 00 
- D 2 - - - 0x000E42 00:CE32: 04        .byte $04   ; 01 
- D 2 - - - 0x000E43 00:CE33: 06        .byte $06   ; 02 
- D 2 - - - 0x000E44 00:CE34: 03        .byte $03   ; 03 



ofs_003_CE35_00:
C - - J - - 0x000E45 00:CE35: A9 01     LDA #$01
C - - - - - 0x000E47 00:CE37: 85 40     STA ram_nmi_wait
bra_CE39_infinite_loop:
C - - - - - 0x000E49 00:CE39: A5 40     LDA ram_nmi_wait
C - - - - - 0x000E4B 00:CE3B: D0 FC     BNE bra_CE39_infinite_loop
C - - - - - 0x000E4D 00:CE3D: A9 08     LDA #$08
C - - - - - 0x000E4F 00:CE3F: 8D 00 20  STA $2000
C - - - - - 0x000E52 00:CE42: 85 43     STA ram_for_2000
C - - - - - 0x000E54 00:CE44: A9 00     LDA #$00
C - - - - - 0x000E56 00:CE46: 8D 01 20  STA $2001
C - - - - - 0x000E59 00:CE49: A2 00     LDX #$00
bra_CE4B_loop:
; 0087-00EF
C - - - - - 0x000E5B 00:CE4B: 95 87     STA ram_0087,X
C - - - - - 0x000E5D 00:CE4D: E8        INX
C - - - - - 0x000E5E 00:CE4E: E0 69     CPX #$69
C - - - - - 0x000E60 00:CE50: D0 F9     BNE bra_CE4B_loop
C - - - - - 0x000E62 00:CE52: AA        TAX
bra_CE53_loop:
; 0700-07FF
C - - - - - 0x000E63 00:CE53: 9D 00 07  STA ram_oam,X
C - - - - - 0x000E66 00:CE56: E8        INX
C - - - - - 0x000E67 00:CE57: D0 FA     BNE bra_CE53_loop
C - - - - - 0x000E69 00:CE59: AD 02 20  LDA $2002
C - - - - - 0x000E6C 00:CE5C: A9 3F     LDA #> $3F00
C - - - - - 0x000E6E 00:CE5E: 8D 06 20  STA $2006
C - - - - - 0x000E71 00:CE61: A9 00     LDA #< $3F00
C - - - - - 0x000E73 00:CE63: 8D 06 20  STA $2006
C - - - - - 0x000E76 00:CE66: A0 00     LDY #$00
bra_CE68_loop:
C - - - - - 0x000E78 00:CE68: B9 60 D0  LDA tbl_D060_palette,Y
C - - - - - 0x000E7B 00:CE6B: 8D 07 20  STA $2007
C - - - - - 0x000E7E 00:CE6E: C8        INY
C - - - - - 0x000E7F 00:CE6F: C0 20     CPY #$20
C - - - - - 0x000E81 00:CE71: D0 F5     BNE bra_CE68_loop
C - - - - - 0x000E83 00:CE73: A9 02     LDA #con_script_02
C - - - - - 0x000E85 00:CE75: 85 3F     STA ram_script
C - - - - - 0x000E87 00:CE77: A5 69     LDA ram_0069
C - - - - - 0x000E89 00:CE79: D0 1E     BNE bra_CE99
C - - - - - 0x000E8B 00:CE7B: 85 8B     STA ram_008B
C - - - - - 0x000E8D 00:CE7D: A9 01     LDA #con_tile + $01
C - - - - - 0x000E8F 00:CE7F: 85 6C     STA ram_power_pellet_tile_p1
C - - - - - 0x000E91 00:CE81: 85 6D     STA ram_power_pellet_tile_p1 + $01
C - - - - - 0x000E93 00:CE83: 85 6E     STA ram_power_pellet_tile_p1 + $02
C - - - - - 0x000E95 00:CE85: 85 6F     STA ram_power_pellet_tile_p1 + $03
C - - - - - 0x000E97 00:CE87: A9 C0     LDA #$C0
C - - - - - 0x000E99 00:CE89: 85 6A     STA ram_pellet_cnt_p1
C - - - - - 0x000E9B 00:CE8B: A5 68     LDA ram_stage_p1
C - - - - - 0x000E9D 00:CE8D: C9 16     CMP #$16
C - - - - - 0x000E9F 00:CE8F: F0 02     BEQ bra_CE93
C - - - - - 0x000EA1 00:CE91: E6 68     INC ram_stage_p1
bra_CE93:
C - - - - - 0x000EA3 00:CE93: 20 80 D0  JSR sub_D080
C - - - - - 0x000EA6 00:CE96: 20 5C E2  JSR sub_E25C
bra_CE99:
C - - - - - 0x000EA9 00:CE99: 20 79 E3  JSR sub_E379
C - - - - - 0x000EAC 00:CE9C: 20 FA CF  JSR sub_CFFA
C - - - - - 0x000EAF 00:CE9F: 20 CD E4  JSR sub_E4CD
C - - - - - 0x000EB2 00:CEA2: 20 3B E5  JSR sub_E53B
C - - - - - 0x000EB5 00:CEA5: 20 7C E4  JSR sub_E47C
C - - - - - 0x000EB8 00:CEA8: A6 68     LDX ram_stage_p1
C - - - - - 0x000EBA 00:CEAA: A9 00     LDA #$00
C - - - - - 0x000EBC 00:CEAC: 18        CLC
bra_CEAD_loop:
C - - - - - 0x000EBD 00:CEAD: CA        DEX
C - - - - - 0x000EBE 00:CEAE: 30 04     BMI bra_CEB4
C - - - - - 0x000EC0 00:CEB0: 69 06     ADC #$06
C - - - - - 0x000EC2 00:CEB2: D0 F9     BNE bra_CEAD_loop
bra_CEB4:
C - - - - - 0x000EC4 00:CEB4: 85 00     STA ram_0000
C - - - - - 0x000EC6 00:CEB6: AA        TAX
C - - - - - 0x000EC7 00:CEB7: BD 42 EB  LDA tbl_EB42,X
C - - - - - 0x000ECA 00:CEBA: AA        TAX
C - - - - - 0x000ECB 00:CEBB: A9 00     LDA #$00
C - - - - - 0x000ECD 00:CEBD: 18        CLC
bra_CEBE_loop:
C - - - - - 0x000ECE 00:CEBE: CA        DEX
C - - - - - 0x000ECF 00:CEBF: 30 04     BMI bra_CEC5
C - - - - - 0x000ED1 00:CEC1: 69 16     ADC #$16
C - - - - - 0x000ED3 00:CEC3: D0 F9     BNE bra_CEBE_loop
bra_CEC5:
C - - - - - 0x000ED5 00:CEC5: A8        TAY
C - - - - - 0x000ED6 00:CEC6: A2 00     LDX #$00
bra_CEC8_loop:
C - - - - - 0x000ED8 00:CEC8: B9 CC EB  LDA tbl_EBCC,Y
C - - - - - 0x000EDB 00:CECB: 95 9F     STA ram_009F,X
C - - - - - 0x000EDD 00:CECD: E8        INX
C - - - - - 0x000EDE 00:CECE: C8        INY
C - - - - - 0x000EDF 00:CECF: E0 16     CPX #$16
C - - - - - 0x000EE1 00:CED1: D0 F5     BNE bra_CEC8_loop
C - - - - - 0x000EE3 00:CED3: A6 00     LDX ram_0000
C - - - - - 0x000EE5 00:CED5: BD 42 EB  LDA tbl_EB42,X
C - - - - - 0x000EE8 00:CED8: 0A        ASL
C - - - - - 0x000EE9 00:CED9: 0A        ASL
C - - - - - 0x000EEA 00:CEDA: 0A        ASL
C - - - - - 0x000EEB 00:CEDB: AA        TAX
C - - - - - 0x000EEC 00:CEDC: A0 00     LDY #$00
C - - - - - 0x000EEE 00:CEDE: 84 D0     STY ram_00D0
C - - - - - 0x000EF0 00:CEE0: BD 3A EC  LDA tbl_EC3A,X
C - - - - - 0x000EF3 00:CEE3: 85 CF     STA ram_00CF
bra_CEE5_loop:
C - - - - - 0x000EF5 00:CEE5: BD 3A EC  LDA tbl_EC3A,X
C - - - - - 0x000EF8 00:CEE8: 99 97 00  STA ram_0097,Y
C - - - - - 0x000EFB 00:CEEB: E8        INX
C - - - - - 0x000EFC 00:CEEC: C8        INY
C - - - - - 0x000EFD 00:CEED: C0 08     CPY #$08
C - - - - - 0x000EFF 00:CEEF: D0 F4     BNE bra_CEE5_loop
C - - - - - 0x000F01 00:CEF1: E6 00     INC ram_0000
C - - - - - 0x000F03 00:CEF3: A6 00     LDX ram_0000
C - - - - - 0x000F05 00:CEF5: BD 42 EB  LDA tbl_EB42,X
C - - - - - 0x000F08 00:CEF8: 85 8C     STA ram_008C
C - - - - - 0x000F0A 00:CEFA: E6 00     INC ram_0000
C - - - - - 0x000F0C 00:CEFC: A6 00     LDX ram_0000
C - - - - - 0x000F0E 00:CEFE: BD 42 EB  LDA tbl_EB42,X
C - - - - - 0x000F11 00:CF01: 0A        ASL
C - - - - - 0x000F12 00:CF02: AA        TAX
C - - - - - 0x000F13 00:CF03: BD 5A EC  LDA tbl_EC5A,X
C - - - - - 0x000F16 00:CF06: 85 8D     STA ram_008D
C - - - - - 0x000F18 00:CF08: E8        INX
C - - - - - 0x000F19 00:CF09: BD 5A EC  LDA tbl_EC5A,X
C - - - - - 0x000F1C 00:CF0C: 85 8E     STA ram_008E
C - - - - - 0x000F1E 00:CF0E: E6 00     INC ram_0000
C - - - - - 0x000F20 00:CF10: A5 69     LDA ram_0069
C - - - - - 0x000F22 00:CF12: F0 24     BEQ bra_CF38
C - - - - - 0x000F24 00:CF14: A2 0C     LDX #$0C
C - - - - - 0x000F26 00:CF16: A0 00     LDY #$00
C - - - - - 0x000F28 00:CF18: BD 68 EC  LDA tbl_EC74 - $0C,X
C - - - - - 0x000F2B 00:CF1B: 99 8F 00  STA ram_008F,Y
C - - - - - 0x000F2E 00:CF1E: C8        INY
C - - - - - 0x000F2F 00:CF1F: E8        INX
C - - - - - 0x000F30 00:CF20: A9 C0     LDA #$C0
C - - - - - 0x000F32 00:CF22: 38        SEC
C - - - - - 0x000F33 00:CF23: E5 6A     SBC ram_pellet_cnt_p1
C - - - - - 0x000F35 00:CF25: 85 01     STA ram_0001
bra_CF27_loop:
C - - - - - 0x000F37 00:CF27: A5 01     LDA ram_0001
C - - - - - 0x000F39 00:CF29: 18        CLC
C - - - - - 0x000F3A 00:CF2A: 7D 68 EC  ADC tbl_EC74 - $0C,X
C - - - - - 0x000F3D 00:CF2D: 99 8F 00  STA ram_008F,Y
C - - - - - 0x000F40 00:CF30: C8        INY
C - - - - - 0x000F41 00:CF31: E8        INX
C - - - - - 0x000F42 00:CF32: C0 04     CPY #$04
C - - - - - 0x000F44 00:CF34: D0 F1     BNE bra_CF27_loop
C - - - - - 0x000F46 00:CF36: F0 16     BEQ bra_CF4E    ; jmp
bra_CF38:
C - - - - - 0x000F48 00:CF38: A6 00     LDX ram_0000
C - - - - - 0x000F4A 00:CF3A: BD 42 EB  LDA tbl_EB42,X
C - - - - - 0x000F4D 00:CF3D: 0A        ASL
C - - - - - 0x000F4E 00:CF3E: 0A        ASL
C - - - - - 0x000F4F 00:CF3F: AA        TAX
C - - - - - 0x000F50 00:CF40: A0 00     LDY #$00
bra_CF42_loop:
C - - - - - 0x000F52 00:CF42: BD 68 EC  LDA tbl_EC68,X
C - - - - - 0x000F55 00:CF45: 99 8F 00  STA ram_008F,Y
C - - - - - 0x000F58 00:CF48: E8        INX
C - - - - - 0x000F59 00:CF49: C8        INY
C - - - - - 0x000F5A 00:CF4A: C0 04     CPY #$04
C - - - - - 0x000F5C 00:CF4C: D0 F4     BNE bra_CF42_loop
bra_CF4E:
C - - - - - 0x000F5E 00:CF4E: A9 04     LDA #$04
C - - - - - 0x000F60 00:CF50: 85 B8     STA ram_00B8
C - - - - - 0x000F62 00:CF52: A9 01     LDA #$01
C - - - - - 0x000F64 00:CF54: 85 B9     STA ram_00B9
C - - - - - 0x000F66 00:CF56: A5 8F     LDA ram_008F
C - - - - - 0x000F68 00:CF58: 85 01     STA ram_0001
C - - - - - 0x000F6A 00:CF5A: A2 00     LDX #$00
bra_CF5C_loop:
C - - - - - 0x000F6C 00:CF5C: C6 01     DEC ram_0001
C - - - - - 0x000F6E 00:CF5E: F0 0C     BEQ bra_CF6C
C - - - - - 0x000F70 00:CF60: A9 02     LDA #$02
C - - - - - 0x000F72 00:CF62: 95 BA     STA ram_00BA,X
C - - - - - 0x000F74 00:CF64: A9 00     LDA #$00
C - - - - - 0x000F76 00:CF66: 95 BB     STA ram_00BB,X
C - - - - - 0x000F78 00:CF68: E8        INX
C - - - - - 0x000F79 00:CF69: E8        INX
C - - - - - 0x000F7A 00:CF6A: D0 F0     BNE bra_CF5C_loop
bra_CF6C:
C - - - - - 0x000F7C 00:CF6C: A9 00     LDA #$00
bra_CF6E_loop:
C - - - - - 0x000F7E 00:CF6E: E0 06     CPX #$06
C - - - - - 0x000F80 00:CF70: F0 08     BEQ bra_CF7A
C - - - - - 0x000F82 00:CF72: 95 BA     STA ram_00BA,X
C - - - - - 0x000F84 00:CF74: 95 BB     STA ram_00BB,X
C - - - - - 0x000F86 00:CF76: E8        INX
C - - - - - 0x000F87 00:CF77: E8        INX
C - - - - - 0x000F88 00:CF78: D0 F4     BNE bra_CF6E_loop
bra_CF7A:
C - - - - - 0x000F8A 00:CF7A: A5 90     LDA ram_0090
C - - - - - 0x000F8C 00:CF7C: 85 D3     STA ram_00D3
C - - - - - 0x000F8E 00:CF7E: E6 00     INC ram_0000
C - - - - - 0x000F90 00:CF80: A6 00     LDX ram_0000
C - - - - - 0x000F92 00:CF82: BD 42 EB  LDA tbl_EB42,X
C - - - - - 0x000F95 00:CF85: 85 93     STA ram_0093
C - - - - - 0x000F97 00:CF87: E6 00     INC ram_0000
C - - - - - 0x000F99 00:CF89: A6 00     LDX ram_0000
C - - - - - 0x000F9B 00:CF8B: BD 42 EB  LDA tbl_EB42,X
C - - - - - 0x000F9E 00:CF8E: 85 96     STA ram_0096
C - - - - - 0x000FA0 00:CF90: A5 A5     LDA ram_009F + $06
C - - - - - 0x000FA2 00:CF92: 85 B5     STA ram_00B5
C - - - - - 0x000FA4 00:CF94: A5 A6     LDA ram_009F + $07
C - - - - - 0x000FA6 00:CF96: 85 B6     STA ram_00B6
C - - - - - 0x000FA8 00:CF98: A5 AF     LDA ram_00AF
C - - - - - 0x000FAA 00:CF9A: 85 C4     STA ram_00C2 + $02
C - - - - - 0x000FAC 00:CF9C: 85 C6     STA ram_00C2 + $04
C - - - - - 0x000FAE 00:CF9E: 85 C8     STA ram_00C2 + $06
C - - - - - 0x000FB0 00:CFA0: 85 CA     STA ram_00CA
C - - - - - 0x000FB2 00:CFA2: A5 B0     LDA ram_00B0
C - - - - - 0x000FB4 00:CFA4: 85 C5     STA ram_00C3 + $02
C - - - - - 0x000FB6 00:CFA6: 85 C7     STA ram_00C3 + $04
C - - - - - 0x000FB8 00:CFA8: 85 C9     STA ram_00C3 + $06
C - - - - - 0x000FBA 00:CFAA: 85 CB     STA ram_00CB
C - - - - - 0x000FBC 00:CFAC: A9 01     LDA #$01
C - - - - - 0x000FBE 00:CFAE: 85 50     STA ram_direction_1
C - - - - - 0x000FC0 00:CFB0: 85 51     STA ram_direction_2
C - - - - - 0x000FC2 00:CFB2: A0 00     LDY #$00
C - - - - - 0x000FC4 00:CFB4: A2 00     LDX #$00
C - - - - - 0x000FC6 00:CFB6: A5 46     LDA ram_current_player
C - - - - - 0x000FC8 00:CFB8: 25 47     AND ram_game_mode
C - - - - - 0x000FCA 00:CFBA: F0 02     BEQ bra_CFBE
C - - - - - 0x000FCC 00:CFBC: A0 09     LDY #$09
bra_CFBE:
bra_CFBE_loop:
C - - - - - 0x000FCE 00:CFBE: B9 4E D0  LDA tbl_D04E_ppu,Y
C - - - - - 0x000FD1 00:CFC1: 9D 6B 02  STA ram_ppu_buffer_hud,X
C - - - - - 0x000FD4 00:CFC4: C8        INY
C - - - - - 0x000FD5 00:CFC5: E8        INX
C - - - - - 0x000FD6 00:CFC6: E0 09     CPX #$09
C - - - - - 0x000FD8 00:CFC8: D0 F4     BNE bra_CFBE_loop
C - - - - - 0x000FDA 00:CFCA: A0 00     LDY #$00
bra_CFCC_loop:
C - - - - - 0x000FDC 00:CFCC: B9 42 D0  LDA tbl_D042_spr_data,Y
C - - - - - 0x000FDF 00:CFCF: 99 32 00  STA ram_animation,Y     ; also ram_spr_pal
C - - - - - 0x000FE2 00:CFD2: C8        INY
C - - - - - 0x000FE3 00:CFD3: C0 0C     CPY #$0C
C - - - - - 0x000FE5 00:CFD5: D0 F5     BNE bra_CFCC_loop
C - - - - - 0x000FE7 00:CFD7: A0 00     LDY #$00
bra_CFD9_loop:
C - - - - - 0x000FE9 00:CFD9: B9 6C 00  LDA ram_power_pellet_tile_p1,Y  ; 006C 006D 006E 006F
C - - - - - 0x000FEC 00:CFDC: C9 02     CMP #con_tile + $02
C - - - - - 0x000FEE 00:CFDE: D0 05     BNE bra_CFE5
C - - - - - 0x000FF0 00:CFE0: A9 01     LDA #con_tile + $01
C - - - - - 0x000FF2 00:CFE2: 99 6C 00  STA ram_power_pellet_tile_p1,Y  ; 006C 006D 006E 006F
bra_CFE5:
C - - - - - 0x000FF5 00:CFE5: C8        INY
C - - - - - 0x000FF6 00:CFE6: C0 04     CPY #$04
C - - - - - 0x000FF8 00:CFE8: D0 EF     BNE bra_CFD9_loop
C - - - - - 0x000FFA 00:CFEA: 84 C0     STY ram_00C0
C - - - - - 0x000FFC 00:CFEC: A9 FF     LDA #$FF
C - - - - - 0x000FFE 00:CFEE: 85 89     STA ram_0089
C - - - - - 0x001000 00:CFF0: A9 88     LDA #$88
C - - - - - 0x001002 00:CFF2: 8D 00 20  STA $2000
C - - - - - 0x001005 00:CFF5: 85 43     STA ram_for_2000
C - - - - - 0x001007 00:CFF7: 4C DD C9  JMP loc_C9DD



sub_CFFA:
C - - - - - 0x00100A 00:CFFA: A0 22     LDY #$22    ; 2256
C - - - - - 0x00100C 00:CFFC: A5 46     LDA ram_current_player
C - - - - - 0x00100E 00:CFFE: 25 47     AND ram_game_mode
C - - - - - 0x001010 00:D000: F0 02     BEQ bra_D004
C - - - - - 0x001012 00:D002: A0 2A     LDY #$2A    ; 2A56
bra_D004:
C - - - - - 0x001014 00:D004: 84 00     STY ram_0000
C - - - - - 0x001016 00:D006: A9 56     LDA #$56
C - - - - - 0x001018 00:D008: 85 01     STA ram_0001
C - - - - - 0x00101A 00:D00A: A9 0A     LDA #$0A    ; counter
C - - - - - 0x00101C 00:D00C: 85 02     STA ram_0002
bra_D00E_loop:
C - - - - - 0x00101E 00:D00E: AD 02 20  LDA $2002
C - - - - - 0x001021 00:D011: A5 00     LDA ram_0000
C - - - - - 0x001023 00:D013: 8D 06 20  STA $2006
C - - - - - 0x001026 00:D016: A5 01     LDA ram_0001
C - - - - - 0x001028 00:D018: 8D 06 20  STA $2006
C - - - - - 0x00102B 00:D01B: A9 06     LDA #$06    ; counter
C - - - - - 0x00102D 00:D01D: 85 03     STA ram_0003
C - - - - - 0x00102F 00:D01F: A9 20     LDA #con_tile + $20
bra_D021_loop:
C - - - - - 0x001031 00:D021: 8D 07 20  STA $2007
C - - - - - 0x001034 00:D024: C6 03     DEC ram_0003
C - - - - - 0x001036 00:D026: D0 F9     BNE bra_D021_loop
C - - - - - 0x001038 00:D028: A9 2D     LDA #con_tile + $2D
C - - - - - 0x00103A 00:D02A: 8D 07 20  STA $2007
C - - - - - 0x00103D 00:D02D: 8D 07 20  STA $2007
C - - - - - 0x001040 00:D030: A5 01     LDA ram_0001
C - - - - - 0x001042 00:D032: 18        CLC
C - - - - - 0x001043 00:D033: 69 20     ADC #< $0020
C - - - - - 0x001045 00:D035: 85 01     STA ram_0001
C - - - - - 0x001047 00:D037: A5 00     LDA ram_0000
C - - - - - 0x001049 00:D039: 69 00     ADC #> $0020
C - - - - - 0x00104B 00:D03B: 85 00     STA ram_0000
C - - - - - 0x00104D 00:D03D: C6 02     DEC ram_0002
C - - - - - 0x00104F 00:D03F: D0 CD     BNE bra_D00E_loop
C - - - - - 0x001051 00:D041: 60        RTS



tbl_D042_spr_data:
; animation
- D 2 - - - 0x001052 00:D042: 04        .byte $04   ; 00 
- D 2 - - - 0x001053 00:D043: 0C        .byte $0C   ; 01 
- D 2 - - - 0x001054 00:D044: 0A        .byte $0A   ; 02 
- D 2 - - - 0x001055 00:D045: 0A        .byte $0A   ; 03 
- D 2 - - - 0x001056 00:D046: 0A        .byte $0A   ; 04 
- D 2 - - - 0x001057 00:D047: 00        .byte $00   ; 05 
; spr_A
- D 2 - - - 0x001058 00:D048: 00        .byte $00   ; 06 
- D 2 - - - 0x001059 00:D049: 00        .byte $00   ; 07 
- D 2 - - - 0x00105A 00:D04A: 01        .byte $01   ; 08 
- D 2 - - - 0x00105B 00:D04B: 02        .byte $02   ; 09 
- D 2 - - - 0x00105C 00:D04C: 03        .byte $03   ; 0A 
- D 2 - - - 0x00105D 00:D04D: 00        .byte $00   ; 0B 



tbl_D04E_ppu:
; 00 
- D 2 - - - 0x00105E 00:D04E: 21 36     .dbyt $2136 ; ram_ppu_buf_score

- D 2 - - - 0x001060 00:D050: 20 F7     .dbyt $20F7 ; ram_ppu_buffer_1up
- D 2 - - - 0x001062 00:D052: B0        .byte $B0, $B3, $B2   ; 1UP

- D 2 - - - 0x001065 00:D055: 20 B6     .dbyt $20B6 ; ram_ppu_buf_hiscore


; 09 
- D 2 - - - 0x001067 00:D057: 29 B6     .dbyt $29B6 ; ram_ppu_buf_score

- D 2 - - - 0x001069 00:D059: 29 77     .dbyt $2977 ; ram_ppu_buffer_1up
- D 2 - - - 0x00106B 00:D05B: B1        .byte $B1, $B3, $B2   ; 2UP

- D 2 - - - 0x00106E 00:D05E: 28 B6     .dbyt $28B6 ; ram_ppu_buf_hiscore



tbl_D060_palette:
; background
- D 2 - - - 0x001070 00:D060: 0F        .byte $0F, $20, $0F, $06   ; 
- D 2 - - - 0x001074 00:D064: 0F        .byte $0F, $11, $0F, $27   ; 
- D 2 - - - 0x001078 00:D068: 0F        .byte $0F, $16, $26, $06   ; 
- D 2 - - - 0x00107C 00:D06C: 0F        .byte $0F, $19, $17, $12   ; 
; sprites
- D 2 - - - 0x001080 00:D070: 0F        .byte $0F, $27, $20, $06   ; 
- D 2 - - - 0x001084 00:D074: 0F        .byte $0F, $11, $20, $33   ; 
- D 2 - - - 0x001088 00:D078: 0F        .byte $0F, $21, $20, $21   ; 
- D 2 - - - 0x00108C 00:D07C: 0F        .byte $0F, $09, $20, $17   ; 



sub_D080:
C - - - - - 0x001090 00:D080: AD 02 20  LDA $2002
C - - - - - 0x001093 00:D083: A9 23     LDA #> $23C0
C - - - - - 0x001095 00:D085: 8D 06 20  STA $2006
C - - - - - 0x001098 00:D088: A9 C0     LDA #< $23C0
C - - - - - 0x00109A 00:D08A: 8D 06 20  STA $2006
C - - - - - 0x00109D 00:D08D: A2 01     LDX #$01
bra_D08F:
C - - - - - 0x00109F 00:D08F: A0 00     LDY #$00
bra_D091_loop:
C - - - - - 0x0010A1 00:D091: B9 AF D0  LDA tbl_D0AF_bg_attr,Y
C - - - - - 0x0010A4 00:D094: 8D 07 20  STA $2007
C - - - - - 0x0010A7 00:D097: C8        INY
C - - - - - 0x0010A8 00:D098: C0 40     CPY #$40
C - - - - - 0x0010AA 00:D09A: D0 F5     BNE bra_D091_loop
C - - - - - 0x0010AC 00:D09C: CA        DEX
C - - - - - 0x0010AD 00:D09D: F0 01     BEQ bra_D0A0
C - - - - - 0x0010AF 00:D09F: 60        RTS
bra_D0A0:
C - - - - - 0x0010B0 00:D0A0: AD 02 20  LDA $2002
C - - - - - 0x0010B3 00:D0A3: A9 2B     LDA #> $2BC0
C - - - - - 0x0010B5 00:D0A5: 8D 06 20  STA $2006
C - - - - - 0x0010B8 00:D0A8: A9 C0     LDA #< $2BC0
C - - - - - 0x0010BA 00:D0AA: 8D 06 20  STA $2006
C - - - - - 0x0010BD 00:D0AD: D0 E0     BNE bra_D08F    ; jmp



tbl_D0AF_bg_attr:
- D 2 - - - 0x0010BF 00:D0AF: 55        .byte $55, $55, $55, $55, $55, $11, $00, $00, $55, $55, $55, $55, $55, $11, $00, $00   ; 
- D 2 - - - 0x0010CF 00:D0BF: 55        .byte $55, $55, $55, $55, $55, $11, $00, $00, $55, $55, $55, $55, $55, $51, $50, $50   ; 
- D 2 - - - 0x0010DF 00:D0CF: 55        .byte $55, $55, $55, $55, $55, $11, $05, $05, $55, $55, $55, $55, $55, $11, $00, $00   ; 
- D 2 - - - 0x0010EF 00:D0DF: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55   ; 



sub_D0EF:
C - - - - - 0x0010FF 00:D0EF: A5 89     LDA ram_0089
C - - - - - 0x001101 00:D0F1: 30 4E     BMI bra_D141
C - - - - - 0x001103 00:D0F3: E6 8A     INC ram_008A
C - - - - - 0x001105 00:D0F5: A9 3C     LDA #$3C
C - - - - - 0x001107 00:D0F7: C5 8A     CMP ram_008A
C - - - - - 0x001109 00:D0F9: D0 1C     BNE bra_D117
C - - - - - 0x00110B 00:D0FB: A9 00     LDA #$00
C - - - - - 0x00110D 00:D0FD: 85 8A     STA ram_008A
C - - - - - 0x00110F 00:D0FF: C6 89     DEC ram_0089
C - - - - - 0x001111 00:D101: 10 14     BPL bra_D117
C - - - - - 0x001113 00:D103: 85 88     STA ram_0088
C - - - - - 0x001115 00:D105: A2 00     LDX #$00
bra_D107_loop:
C - - - - - 0x001117 00:D107: B5 39     LDA ram_spr_pal + $01,X
C - - - - - 0x001119 00:D109: 29 FC     AND #$FC
C - - - - - 0x00111B 00:D10B: 85 00     STA ram_0000
C - - - - - 0x00111D 00:D10D: 8A        TXA
C - - - - - 0x00111E 00:D10E: 05 00     ORA ram_0000
C - - - - - 0x001120 00:D110: 95 39     STA ram_spr_pal + $01,X
C - - - - - 0x001122 00:D112: E8        INX
C - - - - - 0x001123 00:D113: E0 04     CPX #$04
C - - - - - 0x001125 00:D115: D0 F0     BNE bra_D107_loop
bra_D117:
C - - - - - 0x001127 00:D117: A5 89     LDA ram_0089
C - - - - - 0x001129 00:D119: C9 02     CMP #$02
C - - - - - 0x00112B 00:D11B: B0 24     BCS bra_D141
C - - - - - 0x00112D 00:D11D: A2 00     LDX #$00
C - - - - - 0x00112F 00:D11F: A5 8A     LDA ram_008A
C - - - - - 0x001131 00:D121: 29 08     AND #$08
C - - - - - 0x001133 00:D123: D0 02     BNE bra_D127
C - - - - - 0x001135 00:D125: A2 05     LDX #$05
bra_D127:
C - - - - - 0x001137 00:D127: A0 FF     LDY #$FF
bra_D129_loop:
C - - - - - 0x001139 00:D129: C8        INY
C - - - - - 0x00113A 00:D12A: B9 4B 02  LDA ram_ppu_buffer_main,Y
C - - - - - 0x00113D 00:D12D: C9 FF     CMP #$FF
C - - - - - 0x00113F 00:D12F: D0 F8     BNE bra_D129_loop
C - - - - - 0x001141 00:D131: 98        TYA
C - - - - - 0x001142 00:D132: D0 01     BNE bra_D135
C - - - - - 0x001144 00:D134: E8        INX
bra_D135:
bra_D135_loop:
C - - - - - 0x001145 00:D135: BD 05 D2  LDA tbl_D205,X
C - - - - - 0x001148 00:D138: 99 4B 02  STA ram_ppu_buffer_main,Y
C - - - - - 0x00114B 00:D13B: C8        INY
C - - - - - 0x00114C 00:D13C: E8        INX
C - - - - - 0x00114D 00:D13D: C9 FF     CMP #$FF
C - - - - - 0x00114F 00:D13F: D0 F4     BNE bra_D135_loop
bra_D141:
C - - - - - 0x001151 00:D141: A5 88     LDA ram_0088
C - - - - - 0x001153 00:D143: D0 2F     BNE bra_D174
C - - - - - 0x001155 00:D145: A5 CF     LDA ram_00CF
C - - - - - 0x001157 00:D147: C9 FF     CMP #$FF
C - - - - - 0x001159 00:D149: F0 29     BEQ bra_D174
C - - - - - 0x00115B 00:D14B: E6 D1     INC ram_00D1
C - - - - - 0x00115D 00:D14D: A5 D1     LDA ram_00D1
C - - - - - 0x00115F 00:D14F: C9 3C     CMP #$3C
C - - - - - 0x001161 00:D151: D0 21     BNE bra_D174
C - - - - - 0x001163 00:D153: A9 00     LDA #$00
C - - - - - 0x001165 00:D155: 85 D1     STA ram_00D1
C - - - - - 0x001167 00:D157: C6 CF     DEC ram_00CF
C - - - - - 0x001169 00:D159: 10 19     BPL bra_D174
C - - - - - 0x00116B 00:D15B: E6 D0     INC ram_00D0
C - - - - - 0x00116D 00:D15D: A5 D0     LDA ram_00D0
C - - - - - 0x00116F 00:D15F: 29 01     AND #$01
C - - - - - 0x001171 00:D161: F0 07     BEQ bra_D16A
C - - - - - 0x001173 00:D163: 20 03 E0  JSR sub_E003
C - - - - - 0x001176 00:D166: A9 0F     LDA #$0F
C - - - - - 0x001178 00:D168: D0 02     BNE bra_D16C    ; jmp
bra_D16A:
C - - - - - 0x00117A 00:D16A: A5 D2     LDA ram_00D2
bra_D16C:
C - - - - - 0x00117C 00:D16C: 85 87     STA ram_0087
C - - - - - 0x00117E 00:D16E: A6 D0     LDX ram_00D0
; 0098-009A
C - - - - - 0x001180 00:D170: B5 97     LDA ram_0097,X
C - - - - - 0x001182 00:D172: 85 CF     STA ram_00CF
bra_D174:
C - - - - - 0x001184 00:D174: A5 D3     LDA ram_00D3
C - - - - - 0x001186 00:D176: F0 1F     BEQ bra_D197
C - - - - - 0x001188 00:D178: 18        CLC
C - - - - - 0x001189 00:D179: 65 6A     ADC ram_pellet_cnt_p1
C - - - - - 0x00118B 00:D17B: C9 C0     CMP #$C0
C - - - - - 0x00118D 00:D17D: D0 18     BNE bra_D197
C - - - - - 0x00118F 00:D17F: 20 EB D1  JSR sub_D1EB
C - - - - - 0x001192 00:D182: A5 D3     LDA ram_00D3
C - - - - - 0x001194 00:D184: A2 00     LDX #$00
bra_D186_loop:
C - - - - - 0x001196 00:D186: D5 8F     CMP ram_008F,X
C - - - - - 0x001198 00:D188: D0 08     BNE bra_D192
C - - - - - 0x00119A 00:D18A: E8        INX
C - - - - - 0x00119B 00:D18B: B5 8F     LDA ram_008F,X
C - - - - - 0x00119D 00:D18D: 85 D3     STA ram_00D3
C - - - - - 0x00119F 00:D18F: 4C 97 D1  JMP loc_D197
bra_D192:
C - - - - - 0x0011A2 00:D192: E8        INX
C - - - - - 0x0011A3 00:D193: E0 04     CPX #$04
C - - - - - 0x0011A5 00:D195: D0 EF     BNE bra_D186_loop
bra_D197:
loc_D197:
C D 2 - - - 0x0011A7 00:D197: E6 D6     INC ram_00D6
C - - - - - 0x0011A9 00:D199: A9 60     LDA #$60
C - - - - - 0x0011AB 00:D19B: C5 D6     CMP ram_00D6
C - - - - - 0x0011AD 00:D19D: D0 13     BNE bra_D1B2
C - - - - - 0x0011AF 00:D19F: A9 00     LDA #$00
C - - - - - 0x0011B1 00:D1A1: 85 D6     STA ram_00D6
C - - - - - 0x0011B3 00:D1A3: E6 D5     INC ram_00D5
C - - - - - 0x0011B5 00:D1A5: A5 D5     LDA ram_00D5
C - - - - - 0x0011B7 00:D1A7: C5 96     CMP ram_0096
C - - - - - 0x0011B9 00:D1A9: D0 07     BNE bra_D1B2
C - - - - - 0x0011BB 00:D1AB: A9 00     LDA #$00
C - - - - - 0x0011BD 00:D1AD: 85 D5     STA ram_00D5
C - - - - - 0x0011BF 00:D1AF: 20 EB D1  JSR sub_D1EB
bra_D1B2:
C - - - - - 0x0011C2 00:D1B2: A6 D4     LDX ram_00D4
C - - - - - 0x0011C4 00:D1B4: E0 02     CPX #$02
C - - - - - 0x0011C6 00:D1B6: F0 17     BEQ bra_D1CF
C - - - - - 0x0011C8 00:D1B8: B5 8D     LDA ram_008D,X
C - - - - - 0x0011CA 00:D1BA: C5 6A     CMP ram_pellet_cnt_p1
C - - - - - 0x0011CC 00:D1BC: D0 11     BNE bra_D1CF
C - - - - - 0x0011CE 00:D1BE: E6 D4     INC ram_00D4
C - - - - - 0x0011D0 00:D1C0: A9 01     LDA #$01
C - - - - - 0x0011D2 00:D1C2: 85 D2     STA ram_00D2
C - - - - - 0x0011D4 00:D1C4: 8A        TXA
C - - - - - 0x0011D5 00:D1C5: 0A        ASL
C - - - - - 0x0011D6 00:D1C6: AA        TAX
C - - - - - 0x0011D7 00:D1C7: B5 AB     LDA ram_00AB,X
C - - - - - 0x0011D9 00:D1C9: 85 CA     STA ram_00CA
C - - - - - 0x0011DB 00:D1CB: B5 AC     LDA ram_00AC,X
C - - - - - 0x0011DD 00:D1CD: 85 CB     STA ram_00CB
bra_D1CF:
C - - - - - 0x0011DF 00:D1CF: 05 D7     ORA ram_fruit_timer_hi
C - - - - - 0x0011E1 00:D1D1: 05 D8     ORA ram_fruit_timer_lo
C - - - - - 0x0011E3 00:D1D3: F0 15     BEQ bra_D1EA_RTS
C - - - - - 0x0011E5 00:D1D5: C6 D8     DEC ram_fruit_timer_lo
C - - - - - 0x0011E7 00:D1D7: D0 11     BNE bra_D1EA_RTS
C - - - - - 0x0011E9 00:D1D9: A5 D7     LDA ram_fruit_timer_hi
C - - - - - 0x0011EB 00:D1DB: F0 07     BEQ bra_D1E4
C - - - - - 0x0011ED 00:D1DD: C6 D7     DEC ram_fruit_timer_hi
C - - - - - 0x0011EF 00:D1DF: A9 3C     LDA #$3C
C - - - - - 0x0011F1 00:D1E1: 85 D8     STA ram_fruit_timer_lo
C - - - - - 0x0011F3 00:D1E3: 60        RTS
bra_D1E4:
C - - - - - 0x0011F4 00:D1E4: 85 2E     STA ram_obj_pos_X_hi + $14
C - - - - - 0x0011F6 00:D1E6: 85 30     STA ram_obj_pos_Y_hi + $14
C - - - - - 0x0011F8 00:D1E8: 85 8B     STA ram_008B
bra_D1EA_RTS:
C - - - - - 0x0011FA 00:D1EA: 60        RTS



sub_D1EB:
C - - - - - 0x0011FB 00:D1EB: A2 00     LDX #$00
bra_D1ED_loop:
C - - - - - 0x0011FD 00:D1ED: B5 BA     LDA ram_00BA,X
C - - - - - 0x0011FF 00:D1EF: D0 05     BNE bra_D1F6
C - - - - - 0x001201 00:D1F1: A9 02     LDA #$02
C - - - - - 0x001203 00:D1F3: 95 BA     STA ram_00BA,X
C - - - - - 0x001205 00:D1F5: 60        RTS
bra_D1F6:
C - - - - - 0x001206 00:D1F6: E8        INX
C - - - - - 0x001207 00:D1F7: E8        INX
C - - - - - 0x001208 00:D1F8: E0 06     CPX #$06
C - - - - - 0x00120A 00:D1FA: D0 F1     BNE bra_D1ED_loop
C - - - - - 0x00120C 00:D1FC: 60        RTS


; bzk garbage, same bytes as 0x001FCE
- - - - - - 0x00120D 00:D1FD: 24        .byte $24, $25, $26, $27, $28, $29, $2A, $2B   ; 



tbl_D205:
; 00 
- - - - - - 0x001215 00:D205: 00        .byte $00   ; 
- D 2 - - - 0x001216 00:D206: 3F 15     .dbyt $3F15 ; 
- D 2 - - - 0x001218 00:D208: 11        .byte $11   ; 
- D 2 - - - 0x001219 00:D209: FF        .byte $FF   ; end token
; 05 
- - - - - - 0x00121A 00:D20A: 00        .byte $00   ; 
- D 2 - - - 0x00121B 00:D20B: 3F 15     .dbyt $3F15 ; 
- D 2 - - - 0x00121D 00:D20D: 20        .byte $20   ; 
- D 2 - - - 0x00121E 00:D20E: FF        .byte $FF   ; end token



sub_D20F:
C - - - - - 0x00121F 00:D20F: A5 6A     LDA ram_pellet_cnt_p1
C - - - - - 0x001221 00:D211: D0 01     BNE bra_D214
C - - - - - 0x001223 00:D213: 60        RTS
bra_D214:
C - - - - - 0x001224 00:D214: A9 1E     LDA #< (ram_obj_pos_X_hi + $04)
C - - - - - 0x001226 00:D216: 85 00     STA ram_0000
C - - - - - 0x001228 00:D218: A9 00     LDA #> (ram_obj_pos_X_hi + $04)
C - - - - - 0x00122A 00:D21A: 85 01     STA ram_0001
C - - - - - 0x00122C 00:D21C: A9 01     LDA #$01
C - - - - - 0x00122E 00:D21E: 85 02     STA ram_0002
C - - - - - 0x001230 00:D220: A2 00     LDX #$00
bra_D222_loop:
C - - - - - 0x001232 00:D222: B5 B8     LDA ram_00B8,X
C - - - - - 0x001234 00:D224: C9 04     CMP #$04
C - - - - - 0x001236 00:D226: D0 32     BNE bra_D25A
C - - - - - 0x001238 00:D228: A0 00     LDY #$00
C - - - - - 0x00123A 00:D22A: A5 1A     LDA ram_obj_pos_X_hi
C - - - - - 0x00123C 00:D22C: D1 00     CMP (ram_0000),Y    ; 001E 0022 0026 002A 002E
C - - - - - 0x00123E 00:D22E: B0 07     BCS bra_D237
C - - - - - 0x001240 00:D230: B1 00     LDA (ram_0000),Y    ; 001E 0022 0026 002A 002E
C - - - - - 0x001242 00:D232: 38        SEC
C - - - - - 0x001243 00:D233: E5 1A     SBC ram_obj_pos_X_hi
C - - - - - 0x001245 00:D235: B0 02     BCS bra_D239
bra_D237:
C - - - - - 0x001247 00:D237: F1 00     SBC (ram_0000),Y    ; 001E 0022 0026 002A 002E
bra_D239:
C - - - - - 0x001249 00:D239: C9 0A     CMP #$0A
C - - - - - 0x00124B 00:D23B: B0 1D     BCS bra_D25A
C - - - - - 0x00124D 00:D23D: 85 03     STA ram_0003
C - - - - - 0x00124F 00:D23F: A0 02     LDY #$02
C - - - - - 0x001251 00:D241: A5 1C     LDA ram_obj_pos_Y_hi
C - - - - - 0x001253 00:D243: D1 00     CMP (ram_0000),Y    ; 0020 0024 0028 002C 0030
C - - - - - 0x001255 00:D245: B0 07     BCS bra_D24E
C - - - - - 0x001257 00:D247: B1 00     LDA (ram_0000),Y    ; 0020 0024 0028 002C 0030
C - - - - - 0x001259 00:D249: 38        SEC
C - - - - - 0x00125A 00:D24A: E5 1C     SBC ram_obj_pos_Y_hi
C - - - - - 0x00125C 00:D24C: B0 02     BCS bra_D250
bra_D24E:
C - - - - - 0x00125E 00:D24E: F1 00     SBC (ram_0000),Y    ; 0020 0024 0028 002C 0030
bra_D250:
C - - - - - 0x001260 00:D250: C9 0A     CMP #$0A
C - - - - - 0x001262 00:D252: B0 06     BCS bra_D25A
C - - - - - 0x001264 00:D254: 65 03     ADC ram_0003
C - - - - - 0x001266 00:D256: C9 05     CMP #$05
C - - - - - 0x001268 00:D258: 90 10     BCC bra_D26A
bra_D25A:
C - - - - - 0x00126A 00:D25A: E8        INX
C - - - - - 0x00126B 00:D25B: E8        INX
C - - - - - 0x00126C 00:D25C: A5 00     LDA ram_0000
C - - - - - 0x00126E 00:D25E: 18        CLC
C - - - - - 0x00126F 00:D25F: 69 04     ADC #$04
C - - - - - 0x001271 00:D261: 85 00     STA ram_0000
C - - - - - 0x001273 00:D263: 06 02     ASL ram_0002
C - - - - - 0x001275 00:D265: E0 0A     CPX #$0A
C - - - - - 0x001277 00:D267: D0 B9     BNE bra_D222_loop
C - - - - - 0x001279 00:D269: 60        RTS
bra_D26A:
C - - - - - 0x00127A 00:D26A: E0 08     CPX #$08
C - - - - - 0x00127C 00:D26C: F0 45     BEQ bra_D2B3
C - - - - - 0x00127E 00:D26E: A5 02     LDA ram_0002
C - - - - - 0x001280 00:D270: 25 88     AND ram_0088
C - - - - - 0x001282 00:D272: F0 2E     BEQ bra_D2A2
C - - - - - 0x001284 00:D274: 8A        TXA
C - - - - - 0x001285 00:D275: 4A        LSR
C - - - - - 0x001286 00:D276: 85 03     STA ram_0003
C - - - - - 0x001288 00:D278: A4 D9     LDY ram_kill_cnt
C - - - - - 0x00128A 00:D27A: B9 D7 D2  LDA tbl_D2D7,Y
C - - - - - 0x00128D 00:D27D: A4 03     LDY ram_0003
C - - - - - 0x00128F 00:D27F: 99 33 00  STA ram_animation + $01,Y
C - - - - - 0x001292 00:D282: A9 00     LDA #$00
C - - - - - 0x001294 00:D284: 85 32     STA ram_animation
C - - - - - 0x001296 00:D286: A4 D9     LDY ram_kill_cnt
C - - - - - 0x001298 00:D288: B9 E7 D2  LDA tbl_D2E7,Y
C - - - - - 0x00129B 00:D28B: 85 DD     STA ram_00DD
C - - - - - 0x00129D 00:D28D: B9 E3 D2  LDA tbl_D2E3,Y
C - - - - - 0x0012A0 00:D290: 85 DE     STA ram_00DE
C - - - - - 0x0012A2 00:D292: E6 D9     INC ram_kill_cnt
C - - - - - 0x0012A4 00:D294: A9 08     LDA #$08
C - - - - - 0x0012A6 00:D296: 95 B8     STA ram_00B8,X
C - - - - - 0x0012A8 00:D298: 8D 07 06  STA ram_sfx_eat_ghost
C - - - - - 0x0012AB 00:D29B: A9 06     LDA #con_script_freeze
C - - - - - 0x0012AD 00:D29D: 85 3F     STA ram_script
C - - - - - 0x0012AF 00:D29F: 4C 60 E0  JMP loc_E060
bra_D2A2:
C - - - - - 0x0012B2 00:D2A2: A9 08     LDA #con_script_08
C - - - - - 0x0012B4 00:D2A4: 85 3F     STA ram_script
C - - - - - 0x0012B6 00:D2A6: A9 12     LDA #$12
C - - - - - 0x0012B8 00:D2A8: 85 32     STA ram_animation
C - - - - - 0x0012BA 00:D2AA: A9 80     LDA #$80
C - - - - - 0x0012BC 00:D2AC: 85 DB     STA ram_00DB
C - - - - - 0x0012BE 00:D2AE: A9 00     LDA #$00
C - - - - - 0x0012C0 00:D2B0: 85 87     STA ram_0087
C - - - - - 0x0012C2 00:D2B2: 60        RTS
bra_D2B3:
C - - - - - 0x0012C3 00:D2B3: A5 8B     LDA ram_008B
C - - - - - 0x0012C5 00:D2B5: F0 01     BEQ bra_D2B8
C - - - - - 0x0012C7 00:D2B7: 60        RTS
bra_D2B8:
C - - - - - 0x0012C8 00:D2B8: 85 D7     STA ram_fruit_timer_hi
C - - - - - 0x0012CA 00:D2BA: A9 80     LDA #$80
C - - - - - 0x0012CC 00:D2BC: 85 D8     STA ram_fruit_timer_lo
C - - - - - 0x0012CE 00:D2BE: 85 8B     STA ram_008B
C - - - - - 0x0012D0 00:D2C0: 8D 06 06  STA ram_sfx_eat_fruit
C - - - - - 0x0012D3 00:D2C3: A4 93     LDY ram_0093
C - - - - - 0x0012D5 00:D2C5: B9 EB D2  LDA tbl_D2EB,Y
C - - - - - 0x0012D8 00:D2C8: 85 DD     STA ram_00DD
C - - - - - 0x0012DA 00:D2CA: B9 F3 D2  LDA tbl_D2F3,Y
C - - - - - 0x0012DD 00:D2CD: 85 DE     STA ram_00DE
C - - - - - 0x0012DF 00:D2CF: B9 DB D2  LDA tbl_D2DB,Y
C - - - - - 0x0012E2 00:D2D2: 85 37     STA ram_animation + $05
C - - - - - 0x0012E4 00:D2D4: 4C 60 E0  JMP loc_E060



tbl_D2D7:
- D 2 - - - 0x0012E7 00:D2D7: 2D        .byte $2D   ; 00 
- D 2 - - - 0x0012E8 00:D2D8: 2F        .byte $2F   ; 01 
- D 2 - - - 0x0012E9 00:D2D9: 32        .byte $32   ; 02 
- D 2 - - - 0x0012EA 00:D2DA: 34        .byte $34   ; 03 



tbl_D2DB:
- D 2 - - - 0x0012EB 00:D2DB: 2C        .byte $2C   ; 00 
- D 2 - - - 0x0012EC 00:D2DC: 2E        .byte $2E   ; 01 
- D 2 - - - 0x0012ED 00:D2DD: 30        .byte $30   ; 02 
- D 2 - - - 0x0012EE 00:D2DE: 31        .byte $31   ; 03 
- D 2 - - - 0x0012EF 00:D2DF: 33        .byte $33   ; 04 
- D 2 - - - 0x0012F0 00:D2E0: 35        .byte $35   ; 05 
- D 2 - - - 0x0012F1 00:D2E1: 36        .byte $36   ; 06 
- D 2 - - - 0x0012F2 00:D2E2: 37        .byte $37   ; 07 



tbl_D2E3:
- D 2 - - - 0x0012F3 00:D2E3: 00        .byte $00   ; 00 
- D 2 - - - 0x0012F4 00:D2E4: 00        .byte $00   ; 01 
- D 2 - - - 0x0012F5 00:D2E5: 00        .byte $00   ; 02 
- D 2 - - - 0x0012F6 00:D2E6: 01        .byte $01   ; 03 



tbl_D2E7:
- D 2 - - - 0x0012F7 00:D2E7: 02        .byte $02   ; 00 
- D 2 - - - 0x0012F8 00:D2E8: 04        .byte $04   ; 01 
- D 2 - - - 0x0012F9 00:D2E9: 08        .byte $08   ; 02 
- D 2 - - - 0x0012FA 00:D2EA: 06        .byte $06   ; 03 



tbl_D2EB:
- D 2 - - - 0x0012FB 00:D2EB: 01        .byte $01   ; 00 
- D 2 - - - 0x0012FC 00:D2EC: 03        .byte $03   ; 01 
- D 2 - - - 0x0012FD 00:D2ED: 05        .byte $05   ; 02 
- D 2 - - - 0x0012FE 00:D2EE: 07        .byte $07   ; 03 
- D 2 - - - 0x0012FF 00:D2EF: 00        .byte $00   ; 04 
- D 2 - - - 0x001300 00:D2F0: 00        .byte $00   ; 05 
- D 2 - - - 0x001301 00:D2F1: 00        .byte $00   ; 06 
- D 2 - - - 0x001302 00:D2F2: 00        .byte $00   ; 07 



tbl_D2F3:
- D 2 - - - 0x001303 00:D2F3: 00        .byte $00   ; 00 
- D 2 - - - 0x001304 00:D2F4: 00        .byte $00   ; 01 
- D 2 - - - 0x001305 00:D2F5: 00        .byte $00   ; 02 
- D 2 - - - 0x001306 00:D2F6: 00        .byte $00   ; 03 
- D 2 - - - 0x001307 00:D2F7: 01        .byte $01   ; 04 
- D 2 - - - 0x001308 00:D2F8: 02        .byte $02   ; 05 
- D 2 - - - 0x001309 00:D2F9: 03        .byte $03   ; 06 
- D 2 - - - 0x00130A 00:D2FA: 05        .byte $05   ; 07 



sub_D2FB:
C - - - - - 0x00130B 00:D2FB: A5 48     LDA ram_flag_demo
C - - - - - 0x00130D 00:D2FD: F0 03     BEQ bra_D302
C - - - - - 0x00130F 00:D2FF: 4C 71 D4  JMP loc_D471
bra_D302:
C - - - - - 0x001312 00:D302: A5 4F     LDA ram_btn_total
C - - - - - 0x001314 00:D304: 29 F0     AND #con_btns_Dpad
C - - - - - 0x001316 00:D306: F0 35     BEQ bra_D33D
C - - - - - 0x001318 00:D308: A2 FF     LDX #$FF
bra_D30A_loop:
C - - - - - 0x00131A 00:D30A: E8        INX
C - - - - - 0x00131B 00:D30B: 0A        ASL
C - - - - - 0x00131C 00:D30C: 90 FC     BCC bra_D30A_loop
C - - - - - 0x00131E 00:D30E: BD 6D D4  LDA tbl_D46D_direction,X
loc_D311:
C D 2 - - - 0x001321 00:D311: 85 50     STA ram_direction_1
C - - - - - 0x001323 00:D313: 18        CLC
C - - - - - 0x001324 00:D314: 69 02     ADC #$02
C - - - - - 0x001326 00:D316: 29 03     AND #$03
C - - - - - 0x001328 00:D318: C5 51     CMP ram_direction_2
C - - - - - 0x00132A 00:D31A: D0 18     BNE bra_D334
C - - - - - 0x00132C 00:D31C: A5 1A     LDA ram_obj_pos_X_hi
C - - - - - 0x00132E 00:D31E: 05 1C     ORA ram_obj_pos_Y_hi
C - - - - - 0x001330 00:D320: 29 07     AND #$07
C - - - - - 0x001332 00:D322: D0 09     BNE bra_D32D
C - - - - - 0x001334 00:D324: A4 50     LDY ram_direction_1
C - - - - - 0x001336 00:D326: B9 2B 02  LDA ram_obj_ppu_tile_direction,Y  ; 022B 022C 022D 022E
C - - - - - 0x001339 00:D329: 29 F0     AND #$F0
C - - - - - 0x00133B 00:D32B: D0 07     BNE bra_D334
bra_D32D:
C - - - - - 0x00133D 00:D32D: A5 50     LDA ram_direction_1
C - - - - - 0x00133F 00:D32F: 85 51     STA ram_direction_2
C - - - - - 0x001341 00:D331: 4C 41 D3  JMP loc_D341
bra_D334:
C - - - - - 0x001344 00:D334: A6 50     LDX ram_direction_1
C - - - - - 0x001346 00:D336: BD 2B 02  LDA ram_obj_ppu_tile_direction,X  ; 022B 022C 022D 022E
C - - - - - 0x001349 00:D339: 29 F0     AND #$F0
C - - - - - 0x00134B 00:D33B: F0 04     BEQ bra_D341
bra_D33D:
C - - - - - 0x00134D 00:D33D: A5 51     LDA ram_direction_2
C - - - - - 0x00134F 00:D33F: 85 50     STA ram_direction_1
bra_D341:
loc_D341:
C D 2 - - - 0x001351 00:D341: A2 04     LDX #$04
C - - - - - 0x001353 00:D343: A5 88     LDA ram_0088
C - - - - - 0x001355 00:D345: D0 02     BNE bra_D349
C - - - - - 0x001357 00:D347: A2 0A     LDX #$0A
bra_D349:
C - - - - - 0x001359 00:D349: AD 2A 02  LDA ram_obj_ppu_tile_now
C - - - - - 0x00135C 00:D34C: C9 01     CMP #con_tile + $01
C - - - - - 0x00135E 00:D34E: F0 10     BEQ bra_D360    ; if power pellet (visible)
C - - - - - 0x001360 00:D350: C9 02     CMP #con_tile + $02
C - - - - - 0x001362 00:D352: F0 0C     BEQ bra_D360    ; if power pellet (not visible)
C - - - - - 0x001364 00:D354: CA        DEX
C - - - - - 0x001365 00:D355: CA        DEX
C - - - - - 0x001366 00:D356: C9 03     CMP #con_tile + $03
C - - - - - 0x001368 00:D358: F0 06     BEQ bra_D360    ; if normal pellet
C - - - - - 0x00136A 00:D35A: C9 09     CMP #con_tile + $09
C - - - - - 0x00136C 00:D35C: F0 02     BEQ bra_D360    ; if normal pellet (rare)
C - - - - - 0x00136E 00:D35E: CA        DEX
C - - - - - 0x00136F 00:D35F: CA        DEX
bra_D360:
C - - - - - 0x001370 00:D360: B5 9F     LDA ram_009F,X  ; 009F 00A5
C - - - - - 0x001372 00:D362: 85 B5     STA ram_00B5
C - - - - - 0x001374 00:D364: B5 A0     LDA ram_00A0,X  ; 00A0 00A6
C - - - - - 0x001376 00:D366: 85 B6     STA ram_00B6
C - - - - - 0x001378 00:D368: A5 51     LDA ram_direction_2
C - - - - - 0x00137A 00:D36A: 0A        ASL
C - - - - - 0x00137B 00:D36B: A8        TAY
C - - - - - 0x00137C 00:D36C: B9 79 D3  LDA tbl_D379,Y
C - - - - - 0x00137F 00:D36F: 85 10     STA ram_indirect_jmp
C - - - - - 0x001381 00:D371: B9 7A D3  LDA tbl_D379 + $01,Y
C - - - - - 0x001384 00:D374: 85 11     STA ram_indirect_jmp + $01
C - - - - - 0x001386 00:D376: 6C 10 00  JMP (ram_indirect_jmp)



tbl_D379:
- D 2 - - - 0x001389 00:D379: 81 D3     .word ofs_004_D381_00_up
- D 2 - - - 0x00138B 00:D37B: 85 D3     .word ofs_004_D385_01_left
- D 2 - - - 0x00138D 00:D37D: A0 D3     .word ofs_004_D3A0_02_down
- D 2 - - - 0x00138F 00:D37F: 9C D3     .word ofs_004_D39C_03_right



ofs_004_D381_00_up:
C - - J - - 0x001391 00:D381: A2 02     LDX #$02    ; obj_pos_Y_lo
C - - - - - 0x001393 00:D383: D0 02     BNE bra_D387    ; jmp



ofs_004_D385_01_left:
C - - J - - 0x001395 00:D385: A2 00     LDX #$00    ; obj_pos_X_lo
bra_D387:
C - - - - - 0x001397 00:D387: B5 1B     LDA ram_obj_position + $01,X  ; 001B 001D
C - - - - - 0x001399 00:D389: 38        SEC
C - - - - - 0x00139A 00:D38A: E5 B5     SBC ram_00B5
C - - - - - 0x00139C 00:D38C: 95 1B     STA ram_obj_position + $01,X  ; 001B 001D
C - - - - - 0x00139E 00:D38E: A9 00     LDA #$00
C - - - - - 0x0013A0 00:D390: B0 02     BCS bra_D394
C - - - - - 0x0013A2 00:D392: A9 01     LDA #$01
bra_D394:
C - - - - - 0x0013A4 00:D394: 18        CLC
C - - - - - 0x0013A5 00:D395: 65 B6     ADC ram_00B6
C - - - - - 0x0013A7 00:D397: 85 CC     STA ram_00CC
C - - - - - 0x0013A9 00:D399: 4C AF D3  JMP loc_D3AF



ofs_004_D39C_03_right:
C - - J - - 0x0013AC 00:D39C: A2 00     LDX #$00    ; obj_pos_X_lo
C - - - - - 0x0013AE 00:D39E: F0 02     BEQ bra_D3A2    ; jmp



ofs_004_D3A0_02_down:
C - - J - - 0x0013B0 00:D3A0: A2 02     LDX #$02    ; obj_pos_Y_lo
bra_D3A2:
C - - - - - 0x0013B2 00:D3A2: B5 1B     LDA ram_obj_position + $01,X  ; 001B 001D
C - - - - - 0x0013B4 00:D3A4: 18        CLC
C - - - - - 0x0013B5 00:D3A5: 65 B5     ADC ram_00B5
C - - - - - 0x0013B7 00:D3A7: 95 1B     STA ram_obj_position + $01,X  ; 001B 001D
C - - - - - 0x0013B9 00:D3A9: A9 00     LDA #$00
C - - - - - 0x0013BB 00:D3AB: 65 B6     ADC ram_00B6
C - - - - - 0x0013BD 00:D3AD: 85 CC     STA ram_00CC
loc_D3AF:
C D 2 - - - 0x0013BF 00:D3AF: C6 CC     DEC ram_00CC
C - - - - - 0x0013C1 00:D3B1: 10 01     BPL bra_D3B4
C - - - - - 0x0013C3 00:D3B3: 60        RTS
bra_D3B4:
C - - - - - 0x0013C4 00:D3B4: A5 51     LDA ram_direction_2
C - - - - - 0x0013C6 00:D3B6: 0A        ASL
C - - - - - 0x0013C7 00:D3B7: A8        TAY
C - - - - - 0x0013C8 00:D3B8: B9 C5 D3  LDA tbl_D3C5,Y
C - - - - - 0x0013CB 00:D3BB: 85 10     STA ram_indirect_jmp
C - - - - - 0x0013CD 00:D3BD: B9 C6 D3  LDA tbl_D3C5 + $01,Y
C - - - - - 0x0013D0 00:D3C0: 85 11     STA ram_indirect_jmp + $01
C - - - - - 0x0013D2 00:D3C2: 6C 10 00  JMP (ram_indirect_jmp)



tbl_D3C5:
- D 2 - - - 0x0013D5 00:D3C5: 05 D4     .word ofs_005_D405_00_up
- D 2 - - - 0x0013D7 00:D3C7: FB D3     .word ofs_005_D3FB_01_left
- D 2 - - - 0x0013D9 00:D3C9: D7 D3     .word ofs_005_D3D7_02_down
- D 2 - - - 0x0013DB 00:D3CB: CD D3     .word ofs_005_D3CD_03_right



ofs_005_D3CD_03_right:
C - - J - - 0x0013DD 00:D3CD: A2 00     LDX #$00    ; obj_pos_X_hi
C - - - - - 0x0013DF 00:D3CF: 86 00     STX ram_0000
C - - - - - 0x0013E1 00:D3D1: A9 03     LDA #$03    ; right
C - - - - - 0x0013E3 00:D3D3: 85 01     STA ram_0001
C - - - - - 0x0013E5 00:D3D5: D0 06     BNE bra_D3DD    ; jmp



ofs_005_D3D7_02_down:
C - - J - - 0x0013E7 00:D3D7: A2 02     LDX #$02    ; obj_pos_Y_hi, down
C - - - - - 0x0013E9 00:D3D9: 86 00     STX ram_0000
C - - - - - 0x0013EB 00:D3DB: 86 01     STX ram_0001
bra_D3DD:
C - - - - - 0x0013ED 00:D3DD: B5 1A     LDA ram_obj_position,X  ; 001A 001C
C - - - - - 0x0013EF 00:D3DF: 18        CLC
C - - - - - 0x0013F0 00:D3E0: 69 01     ADC #$01
C - - - - - 0x0013F2 00:D3E2: 95 1A     STA ram_obj_position,X  ; 001A 001C
C - - - - - 0x0013F4 00:D3E4: 29 04     AND #$04
C - - - - - 0x0013F6 00:D3E6: D0 44     BNE bra_D42C
C - - - - - 0x0013F8 00:D3E8: A6 01     LDX ram_0001
C - - - - - 0x0013FA 00:D3EA: BD 2B 02  LDA ram_obj_ppu_tile_direction,X  ; 022D 022E
C - - - - - 0x0013FD 00:D3ED: 29 F0     AND #$F0
C - - - - - 0x0013FF 00:D3EF: F0 3B     BEQ bra_D42C
C - - - - - 0x001401 00:D3F1: A6 00     LDX ram_0000
C - - - - - 0x001403 00:D3F3: B5 1A     LDA ram_obj_position,X  ; 001A 001C
C - - - - - 0x001405 00:D3F5: 29 FC     AND #$FC
C - - - - - 0x001407 00:D3F7: 95 1A     STA ram_obj_position,X  ; 001A 001C
C - - - - - 0x001409 00:D3F9: D0 31     BNE bra_D42C    ; jmp



ofs_005_D3FB_01_left:
C - - J - - 0x00140B 00:D3FB: A2 00     LDX #$00    ; obj_pos_X_hi
C - - - - - 0x00140D 00:D3FD: 86 00     STX ram_0000
C - - - - - 0x00140F 00:D3FF: A9 01     LDA #$01    ; left
C - - - - - 0x001411 00:D401: 85 01     STA ram_0001
C - - - - - 0x001413 00:D403: D0 08     BNE bra_D40D    ; jmp



ofs_005_D405_00_up:
C - - J - - 0x001415 00:D405: A2 02     LDX #$02    ; obj_pos_Y_hi
C - - - - - 0x001417 00:D407: 86 00     STX ram_0000
C - - - - - 0x001419 00:D409: A9 00     LDA #$00    ; up
C - - - - - 0x00141B 00:D40B: 85 01     STA ram_0001
bra_D40D:
C - - - - - 0x00141D 00:D40D: B5 1A     LDA ram_obj_position,X  ; 001A 001C
C - - - - - 0x00141F 00:D40F: 38        SEC
C - - - - - 0x001420 00:D410: E9 01     SBC #$01
C - - - - - 0x001422 00:D412: 95 1A     STA ram_obj_position,X  ; 001A 001C
C - - - - - 0x001424 00:D414: 29 04     AND #$04
C - - - - - 0x001426 00:D416: F0 14     BEQ bra_D42C
C - - - - - 0x001428 00:D418: A6 01     LDX ram_0001
C - - - - - 0x00142A 00:D41A: BD 2B 02  LDA ram_obj_ppu_tile_direction,X  ; 022B 022C
C - - - - - 0x00142D 00:D41D: 29 F0     AND #$F0
C - - - - - 0x00142F 00:D41F: F0 0B     BEQ bra_D42C
C - - - - - 0x001431 00:D421: A6 00     LDX ram_0000
C - - - - - 0x001433 00:D423: B5 1A     LDA ram_obj_position,X  ; 001A 001C
C - - - - - 0x001435 00:D425: 18        CLC
C - - - - - 0x001436 00:D426: 69 04     ADC #$04
C - - - - - 0x001438 00:D428: 29 FC     AND #$FC
C - - - - - 0x00143A 00:D42A: 95 1A     STA ram_obj_position,X  ; 001A 001C
bra_D42C:
C - - - - - 0x00143C 00:D42C: A5 1A     LDA ram_obj_pos_X_hi
C - - - - - 0x00143E 00:D42E: C9 18     CMP #$18
C - - - - - 0x001440 00:D430: 90 0A     BCC bra_D43C
; 18-FF
C - - - - - 0x001442 00:D432: C9 A9     CMP #$A9
C - - - - - 0x001444 00:D434: B0 06     BCS bra_D43C    ; if A9-FF
; 18-A8
C - - - - - 0x001446 00:D436: A5 38     LDA ram_spr_pal
C - - - - - 0x001448 00:D438: 29 DF     AND #$DF
C - - - - - 0x00144A 00:D43A: 90 04     BCC bra_D440    ; jmp
bra_D43C:
; 00-17 and A9-FF
C - - - - - 0x00144C 00:D43C: A9 20     LDA #$20
C - - - - - 0x00144E 00:D43E: 05 38     ORA ram_spr_pal
bra_D440:
C - - - - - 0x001450 00:D440: 85 38     STA ram_spr_pal
C - - - - - 0x001452 00:D442: A5 1A     LDA ram_obj_pos_X_hi
C - - - - - 0x001454 00:D444: C9 0B     CMP #$0B
C - - - - - 0x001456 00:D446: B0 06     BCS bra_D44E
C - - - - - 0x001458 00:D448: A9 BF     LDA #$BF
C - - - - - 0x00145A 00:D44A: 85 1A     STA ram_obj_pos_X_hi
C - - - - - 0x00145C 00:D44C: D0 08     BNE bra_D456    ; jmp
bra_D44E:
C - - - - - 0x00145E 00:D44E: C9 C0     CMP #$C0
C - - - - - 0x001460 00:D450: 90 04     BCC bra_D456
C - - - - - 0x001462 00:D452: A9 0B     LDA #$0B
C - - - - - 0x001464 00:D454: 85 1A     STA ram_obj_pos_X_hi
bra_D456:
C - - - - - 0x001466 00:D456: A5 1A     LDA ram_obj_pos_X_hi
C - - - - - 0x001468 00:D458: 05 1C     ORA ram_obj_pos_Y_hi
C - - - - - 0x00146A 00:D45A: 29 07     AND #$07
C - - - - - 0x00146C 00:D45C: D0 0C     BNE bra_D46A
C - - - - - 0x00146E 00:D45E: A5 50     LDA ram_direction_1
C - - - - - 0x001470 00:D460: C5 51     CMP ram_direction_2
C - - - - - 0x001472 00:D462: F0 06     BEQ bra_D46A
C - - - - - 0x001474 00:D464: 85 51     STA ram_direction_2
C - - - - - 0x001476 00:D466: E6 CC     INC ram_00CC
C - - - - - 0x001478 00:D468: E6 CC     INC ram_00CC
bra_D46A:
C - - - - - 0x00147A 00:D46A: 4C AF D3  JMP loc_D3AF



tbl_D46D_direction:
- D 2 - - - 0x00147D 00:D46D: 03        .byte $03   ; 00 right
- D 2 - - - 0x00147E 00:D46E: 01        .byte $01   ; 01 left
- D 2 - - - 0x00147F 00:D46F: 02        .byte $02   ; 02 down
- D 2 - - - 0x001480 00:D470: 00        .byte $00   ; 03 up



loc_D471:
C D 2 - - - 0x001481 00:D471: A4 E4     LDY ram_00E4
C - - - - - 0x001483 00:D473: C6 E3     DEC ram_00E3
C - - - - - 0x001485 00:D475: D0 0B     BNE bra_D482
C - - - - - 0x001487 00:D477: E6 E4     INC ram_00E4
C - - - - - 0x001489 00:D479: E6 E4     INC ram_00E4
C - - - - - 0x00148B 00:D47B: A4 E4     LDY ram_00E4
C - - - - - 0x00148D 00:D47D: B9 8A D4  LDA tbl_D48A,Y
C - - - - - 0x001490 00:D480: 85 E3     STA ram_00E3
bra_D482:
C - - - - - 0x001492 00:D482: B9 8B D4  LDA tbl_D48A + $01,Y
C - - - - - 0x001495 00:D485: 29 03     AND #$03
C - - - - - 0x001497 00:D487: 4C 11 D3  JMP loc_D311



tbl_D48A:
; 0x00149B was logged
- - - - - - 0x00149A 00:D48A: 00        .byte $00, $01   ; 00 
- D 2 - - - 0x00149C 00:D48C: D0        .byte $D0, $00   ; 01 
- D 2 - - - 0x00149E 00:D48E: 28        .byte $28, $01   ; 02 
- D 2 - - - 0x0014A0 00:D490: 28        .byte $28, $02   ; 03 
- D 2 - - - 0x0014A2 00:D492: 90        .byte $90, $03   ; 04 
- D 2 - - - 0x0014A4 00:D494: 38        .byte $38, $00   ; 05 
- D 2 - - - 0x0014A6 00:D496: 20        .byte $20, $03   ; 06 
- D 2 - - - 0x0014A8 00:D498: 18        .byte $18, $01   ; 07 
- D 2 - - - 0x0014AA 00:D49A: 60        .byte $60, $02   ; 08 
- D 2 - - - 0x0014AC 00:D49C: 30        .byte $30, $01   ; 09 
- D 2 - - - 0x0014AE 00:D49E: 10        .byte $10, $02   ; 0A 
- D 2 - - - 0x0014B0 00:D4A0: 48        .byte $48, $01   ; 0B 
- D 2 - - - 0x0014B2 00:D4A2: 18        .byte $18, $02   ; 0C 
- D 2 - - - 0x0014B4 00:D4A4: 40        .byte $40, $01   ; 0D 
- D 2 - - - 0x0014B6 00:D4A6: 20        .byte $20, $02   ; 0E 
- D 2 - - - 0x0014B8 00:D4A8: 18        .byte $18, $00   ; 0F 
- D 2 - - - 0x0014BA 00:D4AA: 20        .byte $20, $03   ; 10 
- D 2 - - - 0x0014BC 00:D4AC: 40        .byte $40, $02   ; 11 
- D 2 - - - 0x0014BE 00:D4AE: 38        .byte $38, $01   ; 12 
- D 2 - - - 0x0014C0 00:D4B0: 18        .byte $18, $02   ; 13 
- D 2 - - - 0x0014C2 00:D4B2: E0        .byte $E0, $03   ; 14 
- D 2 - - - 0x0014C4 00:D4B4: 30        .byte $30, $00   ; 15 
- D 2 - - - 0x0014C6 00:D4B6: 28        .byte $28, $01   ; 16 
- D 2 - - - 0x0014C8 00:D4B8: 28        .byte $28, $02   ; 17 
- D 2 - - - 0x0014CA 00:D4BA: 20        .byte $20, $02   ; 18 
- D 2 - - - 0x0014CC 00:D4BC: 80        .byte $80, $03   ; 19 
- D 2 - - - 0x0014CE 00:D4BE: 40        .byte $40, $00   ; 1A 
- D 2 - - - 0x0014D0 00:D4C0: 40        .byte $40, $01   ; 1B 



sub_D4C2:
C - - - - - 0x0014D2 00:D4C2: A2 00     LDX #$00
C - - - - - 0x0014D4 00:D4C4: A9 2F     LDA #< (ram_obj_ppu_tile + $05)
C - - - - - 0x0014D6 00:D4C6: 85 00     STA ram_0000
C - - - - - 0x0014D8 00:D4C8: A9 02     LDA #> (ram_obj_ppu_tile + $05)
C - - - - - 0x0014DA 00:D4CA: 85 01     STA ram_0001
C - - - - - 0x0014DC 00:D4CC: A9 1E     LDA #< (ram_obj_pos_X_hi + $04)
C - - - - - 0x0014DE 00:D4CE: 85 02     STA ram_0002
C - - - - - 0x0014E0 00:D4D0: A9 00     LDA #> (ram_obj_pos_X_hi + $04)
C - - - - - 0x0014E2 00:D4D2: 85 03     STA ram_0003
C - - - - - 0x0014E4 00:D4D4: A9 01     LDA #$01
C - - - - - 0x0014E6 00:D4D6: 85 04     STA ram_0004
bra_D4D8_loop:
C - - - - - 0x0014E8 00:D4D8: 20 F2 D4  JSR sub_D4F2
C - - - - - 0x0014EB 00:D4DB: A5 00     LDA ram_0000
C - - - - - 0x0014ED 00:D4DD: 18        CLC
C - - - - - 0x0014EE 00:D4DE: 69 04     ADC #$04
C - - - - - 0x0014F0 00:D4E0: 85 00     STA ram_0000
C - - - - - 0x0014F2 00:D4E2: A5 02     LDA ram_0002
C - - - - - 0x0014F4 00:D4E4: 18        CLC
C - - - - - 0x0014F5 00:D4E5: 69 04     ADC #$04
C - - - - - 0x0014F7 00:D4E7: 85 02     STA ram_0002
C - - - - - 0x0014F9 00:D4E9: 06 04     ASL ram_0004
C - - - - - 0x0014FB 00:D4EB: E8        INX
C - - - - - 0x0014FC 00:D4EC: E8        INX
C - - - - - 0x0014FD 00:D4ED: E0 08     CPX #$08
C - - - - - 0x0014FF 00:D4EF: D0 E7     BNE bra_D4D8_loop
C - - - - - 0x001501 00:D4F1: 60        RTS
sub_D4F2:
C - - - - - 0x001502 00:D4F2: B4 B8     LDY ram_00B8,X
C - - - - - 0x001504 00:D4F4: B9 01 D5  LDA tbl_D501,Y
C - - - - - 0x001507 00:D4F7: 85 10     STA ram_indirect_jmp
C - - - - - 0x001509 00:D4F9: B9 02 D5  LDA tbl_D501 + $01,Y
C - - - - - 0x00150C 00:D4FC: 85 11     STA ram_indirect_jmp + $01
C - - - - - 0x00150E 00:D4FE: 6C 10 00  JMP (ram_indirect_jmp)



tbl_D501:
- D 2 - - - 0x001511 00:D501: 40 D8     .word ofs_006_D840_00
- D 2 - - - 0x001513 00:D503: F0 D7     .word ofs_006_D7F0_02
- D 2 - - - 0x001515 00:D505: 0C D5     .word ofs_006_D50C_04
- D 2 - - - 0x001517 00:D507: 0C D5     .word ofs_006_D50C_06
- - - - - - 0x001519 00:D509: 0B D5     .word ofs_006_D50B_08_RTS



ofs_006_D50B_08_RTS:
- - - - - - 0x00151B 00:D50B: 60        RTS



ofs_006_D50C_04:
ofs_006_D50C_06:
C - - J - - 0x00151C 00:D50C: 20 8C D7  JSR sub_D78C
C - - - - - 0x00151F 00:D50F: B5 B9     LDA ram_00B9,X
C - - - - - 0x001521 00:D511: 0A        ASL
C - - - - - 0x001522 00:D512: A8        TAY
C - - - - - 0x001523 00:D513: B9 20 D5  LDA tbl_D520,Y
C - - - - - 0x001526 00:D516: 85 10     STA ram_indirect_jmp
C - - - - - 0x001528 00:D518: B9 21 D5  LDA tbl_D520 + $01,Y
C - - - - - 0x00152B 00:D51B: 85 11     STA ram_indirect_jmp + $01
C - - - - - 0x00152D 00:D51D: 6C 10 00  JMP (ram_indirect_jmp)



tbl_D520:
- D 2 - - - 0x001530 00:D520: 3E D5     .word ofs_007_D53E_00
- D 2 - - - 0x001532 00:D522: 42 D5     .word ofs_007_D542_01
- D 2 - - - 0x001534 00:D524: 28 D5     .word ofs_007_D528_02
- D 2 - - - 0x001536 00:D526: 2C D5     .word ofs_007_D52C_03



ofs_007_D528_02:
C - - J - - 0x001538 00:D528: A0 03     LDY #$03
C - - - - - 0x00153A 00:D52A: D0 02     BNE bra_D52E    ; jmp



ofs_007_D52C_03:
C - - J - - 0x00153C 00:D52C: A0 01     LDY #$01
bra_D52E:
C - - - - - 0x00153E 00:D52E: B1 02     LDA (ram_0002),Y    ; 001F 0021 0023 0025 0027 0029 002B 002D
C - - - - - 0x001540 00:D530: 18        CLC
C - - - - - 0x001541 00:D531: 75 C2     ADC ram_00C2,X
C - - - - - 0x001543 00:D533: 91 02     STA (ram_0002),Y    ; 001F 0021 0023 0025 0027 0029 002B 002D
C - - - - - 0x001545 00:D535: A9 00     LDA #$00
C - - - - - 0x001547 00:D537: 75 C3     ADC ram_00C3,X
C - - - - - 0x001549 00:D539: 85 CC     STA ram_00CC
C - - - - - 0x00154B 00:D53B: 4C 56 D5  JMP loc_D556



ofs_007_D53E_00:
C - - J - - 0x00154E 00:D53E: A0 03     LDY #$03
C - - - - - 0x001550 00:D540: D0 02     BNE bra_D544    ; jmp



ofs_007_D542_01:
C - - J - - 0x001552 00:D542: A0 01     LDY #$01
bra_D544:
C - - - - - 0x001554 00:D544: B1 02     LDA (ram_0002),Y    ; 001F 0021 0023 0025 0027 0029 002B 002D
C - - - - - 0x001556 00:D546: 38        SEC
C - - - - - 0x001557 00:D547: F5 C2     SBC ram_00C2,X
C - - - - - 0x001559 00:D549: 91 02     STA (ram_0002),Y    ; 001F 0021 0023 0025 0027 0029 002B 002D
C - - - - - 0x00155B 00:D54B: A9 00     LDA #$00
C - - - - - 0x00155D 00:D54D: B0 02     BCS bra_D551
C - - - - - 0x00155F 00:D54F: A9 01     LDA #$01
bra_D551:
C - - - - - 0x001561 00:D551: 18        CLC
C - - - - - 0x001562 00:D552: 75 C3     ADC ram_00C3,X
C - - - - - 0x001564 00:D554: 85 CC     STA ram_00CC
loc_D556:
C D 2 - - - 0x001566 00:D556: C6 CC     DEC ram_00CC
C - - - - - 0x001568 00:D558: 10 01     BPL bra_D55B
C - - - - - 0x00156A 00:D55A: 60        RTS
bra_D55B:
C - - - - - 0x00156B 00:D55B: B5 B9     LDA ram_00B9,X
C - - - - - 0x00156D 00:D55D: 0A        ASL
C - - - - - 0x00156E 00:D55E: A8        TAY
C - - - - - 0x00156F 00:D55F: B9 6C D5  LDA tbl_D56C,Y
C - - - - - 0x001572 00:D562: 85 10     STA ram_indirect_jmp
C - - - - - 0x001574 00:D564: B9 6D D5  LDA tbl_D56C + $01,Y
C - - - - - 0x001577 00:D567: 85 11     STA ram_indirect_jmp + $01
C - - - - - 0x001579 00:D569: 6C 10 00  JMP (ram_indirect_jmp)



tbl_D56C:
- D 2 - - - 0x00157C 00:D56C: 74 D5     .word ofs_008_D574_00
- D 2 - - - 0x00157E 00:D56E: 88 D5     .word ofs_008_D588_01
- D 2 - - - 0x001580 00:D570: 7A D5     .word ofs_008_D57A_02
- D 2 - - - 0x001582 00:D572: 82 D5     .word ofs_008_D582_03



ofs_008_D574_00:
C - - J - - 0x001584 00:D574: A9 FF     LDA #$FF
C - - - - - 0x001586 00:D576: 85 05     STA ram_0005
C - - - - - 0x001588 00:D578: D0 04     BNE bra_D57E    ; jmp



ofs_008_D57A_02:
C - - J - - 0x00158A 00:D57A: A9 01     LDA #$01
C - - - - - 0x00158C 00:D57C: 85 05     STA ram_0005
bra_D57E:
C - - - - - 0x00158E 00:D57E: A0 02     LDY #$02
C - - - - - 0x001590 00:D580: D0 0C     BNE bra_D58E    ; jmp



ofs_008_D582_03:
C - - J - - 0x001592 00:D582: A9 01     LDA #$01
C - - - - - 0x001594 00:D584: 85 05     STA ram_0005
C - - - - - 0x001596 00:D586: D0 04     BNE bra_D58C    ; jmp



ofs_008_D588_01:
C - - J - - 0x001598 00:D588: A9 FF     LDA #$FF
C - - - - - 0x00159A 00:D58A: 85 05     STA ram_0005
bra_D58C:
C - - - - - 0x00159C 00:D58C: A0 00     LDY #$00
bra_D58E:
C - - - - - 0x00159E 00:D58E: B1 02     LDA (ram_0002),Y    ; 001E 0020 0022 0024 0026 0028 002A 002C
C - - - - - 0x0015A0 00:D590: 18        CLC
C - - - - - 0x0015A1 00:D591: 65 05     ADC ram_0005
C - - - - - 0x0015A3 00:D593: 91 02     STA (ram_0002),Y    ; 001E 0020 0022 0024 0026 0028 002A 002C
C - - - - - 0x0015A5 00:D595: A0 00     LDY #$00
C - - - - - 0x0015A7 00:D597: B1 02     LDA (ram_0002),Y    ; 001E 0022 0026 002A
C - - - - - 0x0015A9 00:D599: C9 0A     CMP #$0A
C - - - - - 0x0015AB 00:D59B: D0 06     BNE bra_D5A3
C - - - - - 0x0015AD 00:D59D: A9 BF     LDA #$BF
C - - - - - 0x0015AF 00:D59F: 91 02     STA (ram_0002),Y    ; 001E 0022 0026 002A
C - - - - - 0x0015B1 00:D5A1: D0 12     BNE bra_D5B5    ; jmp
bra_D5A3:
C - - - - - 0x0015B3 00:D5A3: C9 C0     CMP #$C0
C - - - - - 0x0015B5 00:D5A5: D0 06     BNE bra_D5AD
C - - - - - 0x0015B7 00:D5A7: A9 0B     LDA #$0B
C - - - - - 0x0015B9 00:D5A9: 91 02     STA (ram_0002),Y    ; 001E 0022 0026 002A
C - - - - - 0x0015BB 00:D5AB: D0 08     BNE bra_D5B5    ; jmp
bra_D5AD:
C - - - - - 0x0015BD 00:D5AD: C9 18     CMP #$18
C - - - - - 0x0015BF 00:D5AF: 90 04     BCC bra_D5B5
C - - - - - 0x0015C1 00:D5B1: C9 A9     CMP #$A9
C - - - - - 0x0015C3 00:D5B3: 90 04     BCC bra_D5B9
bra_D5B5:
C - - - - - 0x0015C5 00:D5B5: A9 20     LDA #$20
C - - - - - 0x0015C7 00:D5B7: D0 02     BNE bra_D5BB    ; jmp
bra_D5B9:
C - - - - - 0x0015C9 00:D5B9: A9 00     LDA #$00
bra_D5BB:
C - - - - - 0x0015CB 00:D5BB: 85 05     STA ram_0005
C - - - - - 0x0015CD 00:D5BD: 8A        TXA
C - - - - - 0x0015CE 00:D5BE: 4A        LSR
C - - - - - 0x0015CF 00:D5BF: A8        TAY
C - - - - - 0x0015D0 00:D5C0: B9 39 00  LDA ram_spr_pal + $01,Y
C - - - - - 0x0015D3 00:D5C3: 29 DF     AND #$DF
C - - - - - 0x0015D5 00:D5C5: 05 05     ORA ram_0005
C - - - - - 0x0015D7 00:D5C7: 99 39 00  STA ram_spr_pal + $01,Y
C - - - - - 0x0015DA 00:D5CA: A0 00     LDY #$00
C - - - - - 0x0015DC 00:D5CC: B1 02     LDA (ram_0002),Y    ; 001E 0022 0026 002A
C - - - - - 0x0015DE 00:D5CE: A0 02     LDY #$02
C - - - - - 0x0015E0 00:D5D0: 11 02     ORA (ram_0002),Y    ; 0020 0024 0028 002C
C - - - - - 0x0015E2 00:D5D2: 29 07     AND #$07
C - - - - - 0x0015E4 00:D5D4: F0 03     BEQ bra_D5D9
C - - - - - 0x0015E6 00:D5D6: 4C 56 D5  JMP loc_D556
bra_D5D9:
C - - - - - 0x0015E9 00:D5D9: A0 00     LDY #$00
C - - - - - 0x0015EB 00:D5DB: B1 02     LDA (ram_0002),Y    ; 001E 0022 0026 002A
C - - - - - 0x0015ED 00:D5DD: C9 60     CMP #$60
C - - - - - 0x0015EF 00:D5DF: D0 25     BNE bra_D606
C - - - - - 0x0015F1 00:D5E1: A0 02     LDY #$02
C - - - - - 0x0015F3 00:D5E3: B1 02     LDA (ram_0002),Y    ; 0020 0024 0028 002C
C - - - - - 0x0015F5 00:D5E5: C9 70     CMP #$70
C - - - - - 0x0015F7 00:D5E7: D0 1D     BNE bra_D606
C - - - - - 0x0015F9 00:D5E9: A9 02     LDA #$02
C - - - - - 0x0015FB 00:D5EB: 95 B8     STA ram_00B8,X
C - - - - - 0x0015FD 00:D5ED: A9 00     LDA #$00
C - - - - - 0x0015FF 00:D5EF: 18        CLC
C - - - - - 0x001600 00:D5F0: E5 04     SBC ram_0004
C - - - - - 0x001602 00:D5F2: 25 88     AND ram_0088
C - - - - - 0x001604 00:D5F4: 85 88     STA ram_0088
C - - - - - 0x001606 00:D5F6: 8A        TXA
C - - - - - 0x001607 00:D5F7: 4A        LSR
C - - - - - 0x001608 00:D5F8: A8        TAY
C - - - - - 0x001609 00:D5F9: 85 05     STA ram_0005
C - - - - - 0x00160B 00:D5FB: B9 39 00  LDA ram_spr_pal + $01,Y
C - - - - - 0x00160E 00:D5FE: 29 FC     AND #$FC
C - - - - - 0x001610 00:D600: 05 05     ORA ram_0005
C - - - - - 0x001612 00:D602: 99 39 00  STA ram_spr_pal + $01,Y
C - - - - - 0x001615 00:D605: 60        RTS
bra_D606:
C - - - - - 0x001616 00:D606: B5 B8     LDA ram_00B8,X
C - - - - - 0x001618 00:D608: C9 06     CMP #$06
C - - - - - 0x00161A 00:D60A: D0 0B     BNE bra_D617
C - - - - - 0x00161C 00:D60C: A9 60     LDA #$60
C - - - - - 0x00161E 00:D60E: 85 CD     STA ram_00CD
C - - - - - 0x001620 00:D610: A9 6F     LDA #$6F
C - - - - - 0x001622 00:D612: 85 CE     STA ram_00CE
C - - - - - 0x001624 00:D614: 4C E3 D6  JMP loc_D6E3
bra_D617:
C - - - - - 0x001627 00:D617: A5 04     LDA ram_0004
C - - - - - 0x001629 00:D619: 25 88     AND ram_0088
C - - - - - 0x00162B 00:D61B: D0 58     BNE bra_D675
C - - - - - 0x00162D 00:D61D: A5 04     LDA ram_0004
C - - - - - 0x00162F 00:D61F: 25 87     AND ram_0087
C - - - - - 0x001631 00:D621: D0 17     BNE bra_D63A
C - - - - - 0x001633 00:D623: 8A        TXA
C - - - - - 0x001634 00:D624: A8        TAY
C - - - - - 0x001635 00:D625: B9 32 D6  LDA tbl_D632,Y
C - - - - - 0x001638 00:D628: 85 CD     STA ram_00CD
C - - - - - 0x00163A 00:D62A: B9 33 D6  LDA tbl_D632 + $01,Y
C - - - - - 0x00163D 00:D62D: 85 CE     STA ram_00CE
C - - - - - 0x00163F 00:D62F: 4C E3 D6  JMP loc_D6E3



tbl_D632:
- D 2 - - - 0x001642 00:D632: A8        .byte $A8, $08   ; 00 
- D 2 - - - 0x001644 00:D634: 18        .byte $18, $08   ; 02 
- D 2 - - - 0x001646 00:D636: A8        .byte $A8, $D0   ; 04 
- D 2 - - - 0x001648 00:D638: 18        .byte $18, $D0   ; 06 



bra_D63A:
C - - - - - 0x00164A 00:D63A: 8A        TXA
C - - - - - 0x00164B 00:D63B: A8        TAY
C - - - - - 0x00164C 00:D63C: B9 49 D6  LDA tbl_D649,Y
C - - - - - 0x00164F 00:D63F: 85 10     STA ram_indirect_jmp
C - - - - - 0x001651 00:D641: B9 4A D6  LDA tbl_D649 + $01,Y
C - - - - - 0x001654 00:D644: 85 11     STA ram_indirect_jmp + $01
C - - - - - 0x001656 00:D646: 6C 10 00  JMP (ram_indirect_jmp)



tbl_D649:
- D 2 - - - 0x001659 00:D649: A6 D6     .word ofs_009_D6A6_00
- D 2 - - - 0x00165B 00:D64B: B0 D6     .word ofs_009_D6B0_02
- D 2 - - - 0x00165D 00:D64D: CF D6     .word ofs_009_D6CF_04
- D 2 - - - 0x00165F 00:D64F: 51 D6     .word ofs_009_D651_06



ofs_009_D651_06:
C - - J - - 0x001661 00:D651: A5 1A     LDA ram_obj_pos_X_hi
C - - - - - 0x001663 00:D653: 38        SEC
C - - - - - 0x001664 00:D654: E5 2A     SBC ram_obj_pos_X_hi + $10
C - - - - - 0x001666 00:D656: B0 07     BCS bra_D65F
C - - - - - 0x001668 00:D658: 85 05     STA ram_0005
C - - - - - 0x00166A 00:D65A: A9 00     LDA #$00
C - - - - - 0x00166C 00:D65C: 38        SEC
C - - - - - 0x00166D 00:D65D: E5 05     SBC ram_0005
bra_D65F:
C - - - - - 0x00166F 00:D65F: C9 20     CMP #$20
C - - - - - 0x001671 00:D661: B0 43     BCS bra_D6A6
C - - - - - 0x001673 00:D663: A5 1C     LDA ram_obj_pos_Y_hi
C - - - - - 0x001675 00:D665: 38        SEC
C - - - - - 0x001676 00:D666: E5 2C     SBC ram_obj_pos_Y_hi + $10
C - - - - - 0x001678 00:D668: B0 07     BCS bra_D671
C - - - - - 0x00167A 00:D66A: 85 05     STA ram_0005
C - - - - - 0x00167C 00:D66C: A9 00     LDA #$00
C - - - - - 0x00167E 00:D66E: 38        SEC
C - - - - - 0x00167F 00:D66F: E5 05     SBC ram_0005
bra_D671:
C - - - - - 0x001681 00:D671: C9 20     CMP #$20
C - - - - - 0x001683 00:D673: B0 31     BCS bra_D6A6
bra_D675:
C - - - - - 0x001685 00:D675: A5 4B     LDA ram_frame_cnt
C - - - - - 0x001687 00:D677: 85 05     STA ram_0005
C - - - - - 0x001689 00:D679: A9 05     LDA #$05
C - - - - - 0x00168B 00:D67B: 85 06     STA ram_0006
bra_D67D_loop:
C - - - - - 0x00168D 00:D67D: C6 06     DEC ram_0006
C - - - - - 0x00168F 00:D67F: D0 04     BNE bra_D685
C - - - - - 0x001691 00:D681: A9 02     LDA #$02
C - - - - - 0x001693 00:D683: D0 1C     BNE bra_D6A1    ; jmp
bra_D685:
C - - - - - 0x001695 00:D685: E6 05     INC ram_0005
C - - - - - 0x001697 00:D687: A5 05     LDA ram_0005
C - - - - - 0x001699 00:D689: 29 03     AND #$03
C - - - - - 0x00169B 00:D68B: A8        TAY
C - - - - - 0x00169C 00:D68C: B1 00     LDA (ram_0000),Y    ; 022F 0230 0231 0232 0233 0234 0235 0236 0237 0238 0239 023A 023B 023C 023D 023E
C - - - - - 0x00169E 00:D68E: 29 F8     AND #$F8
C - - - - - 0x0016A0 00:D690: D0 EB     BNE bra_D67D_loop
C - - - - - 0x0016A2 00:D692: A5 05     LDA ram_0005
C - - - - - 0x0016A4 00:D694: 18        CLC
C - - - - - 0x0016A5 00:D695: 69 02     ADC #$02
C - - - - - 0x0016A7 00:D697: 29 03     AND #$03
C - - - - - 0x0016A9 00:D699: D5 B9     CMP ram_00B9,X
C - - - - - 0x0016AB 00:D69B: F0 E0     BEQ bra_D67D_loop
C - - - - - 0x0016AD 00:D69D: A5 05     LDA ram_0005
C - - - - - 0x0016AF 00:D69F: 29 03     AND #$03
bra_D6A1:
C - - - - - 0x0016B1 00:D6A1: 95 B9     STA ram_00B9,X
C - - - - - 0x0016B3 00:D6A3: 4C 56 D5  JMP loc_D556
bra_D6A6:
ofs_009_D6A6_00:
C - - J - - 0x0016B6 00:D6A6: A5 1A     LDA ram_obj_pos_X_hi
C - - - - - 0x0016B8 00:D6A8: 85 CD     STA ram_00CD
C - - - - - 0x0016BA 00:D6AA: A5 1C     LDA ram_obj_pos_Y_hi
C - - - - - 0x0016BC 00:D6AC: 85 CE     STA ram_00CE
C - - - - - 0x0016BE 00:D6AE: D0 33     BNE bra_D6E3
ofs_009_D6B0_02:
C - - J - - 0x0016C0 00:D6B0: A5 51     LDA ram_direction_2
C - - - - - 0x0016C2 00:D6B2: 0A        ASL
C - - - - - 0x0016C3 00:D6B3: A8        TAY
C - - - - - 0x0016C4 00:D6B4: B9 C7 D6  LDA tbl_D6C7,Y
C - - - - - 0x0016C7 00:D6B7: 18        CLC
C - - - - - 0x0016C8 00:D6B8: 65 1A     ADC ram_obj_pos_X_hi
C - - - - - 0x0016CA 00:D6BA: 85 CD     STA ram_00CD
C - - - - - 0x0016CC 00:D6BC: B9 C8 D6  LDA tbl_D6C7 + $01,Y
C - - - - - 0x0016CF 00:D6BF: 18        CLC
C - - - - - 0x0016D0 00:D6C0: 65 1C     ADC ram_obj_pos_Y_hi
C - - - - - 0x0016D2 00:D6C2: 85 CE     STA ram_00CE
C - - - - - 0x0016D4 00:D6C4: 4C E3 D6  JMP loc_D6E3



tbl_D6C7:
- D 2 - - - 0x0016D7 00:D6C7: 00        .byte $00, $E8   ; 00 
- D 2 - - - 0x0016D9 00:D6C9: E8        .byte $E8, $00   ; 01 
- D 2 - - - 0x0016DB 00:D6CB: 00        .byte $00, $18   ; 02 
- D 2 - - - 0x0016DD 00:D6CD: 18        .byte $18, $00   ; 03 



ofs_009_D6CF_04:
C - - J - - 0x0016DF 00:D6CF: A5 1A     LDA ram_obj_pos_X_hi
C - - - - - 0x0016E1 00:D6D1: 38        SEC
C - - - - - 0x0016E2 00:D6D2: E5 1E     SBC ram_obj_pos_X_hi + $04
C - - - - - 0x0016E4 00:D6D4: 18        CLC
C - - - - - 0x0016E5 00:D6D5: 65 1A     ADC ram_obj_pos_X_hi
C - - - - - 0x0016E7 00:D6D7: 85 CD     STA ram_00CD
C - - - - - 0x0016E9 00:D6D9: A5 1C     LDA ram_obj_pos_Y_hi
C - - - - - 0x0016EB 00:D6DB: 38        SEC
C - - - - - 0x0016EC 00:D6DC: E5 20     SBC ram_obj_pos_Y_hi + $04
C - - - - - 0x0016EE 00:D6DE: 18        CLC
C - - - - - 0x0016EF 00:D6DF: 65 1C     ADC ram_obj_pos_Y_hi
C - - - - - 0x0016F1 00:D6E1: 85 CE     STA ram_00CE
bra_D6E3:
loc_D6E3:
C D 2 - - - 0x0016F3 00:D6E3: B5 B8     LDA ram_00B8,X
C - - - - - 0x0016F5 00:D6E5: 38        SEC
C - - - - - 0x0016F6 00:D6E6: E9 04     SBC #$04
C - - - - - 0x0016F8 00:D6E8: A8        TAY
C - - - - - 0x0016F9 00:D6E9: B9 EC D7  LDA tbl_D7EC,Y
C - - - - - 0x0016FC 00:D6EC: 85 0A     STA ram_000A
C - - - - - 0x0016FE 00:D6EE: B9 ED D7  LDA tbl_D7EC + $01,Y
C - - - - - 0x001701 00:D6F1: 85 0B     STA ram_000B
C - - - - - 0x001703 00:D6F3: 20 2B E4  JSR sub_E42B
C - - - - - 0x001706 00:D6F6: A5 0C     LDA ram_000C
C - - - - - 0x001708 00:D6F8: C9 FF     CMP #$FF
C - - - - - 0x00170A 00:D6FA: D0 04     BNE bra_D700
C - - - - - 0x00170C 00:D6FC: A9 02     LDA #$02
C - - - - - 0x00170E 00:D6FE: D0 08     BNE bra_D708    ; jmp
bra_D700:
C - - - - - 0x001710 00:D700: A5 0D     LDA ram_000D
C - - - - - 0x001712 00:D702: C9 FF     CMP #$FF
C - - - - - 0x001714 00:D704: D0 05     BNE bra_D70B
C - - - - - 0x001716 00:D706: A5 0C     LDA ram_000C
bra_D708:
C - - - - - 0x001718 00:D708: 95 B9     STA ram_00B9,X
C - - - - - 0x00171A 00:D70A: 60        RTS
bra_D70B:
C - - - - - 0x00171B 00:D70B: A0 00     LDY #$00
C - - - - - 0x00171D 00:D70D: 84 05     STY ram_0005
C - - - - - 0x00171F 00:D70F: A5 CD     LDA ram_00CD
C - - - - - 0x001721 00:D711: 38        SEC
C - - - - - 0x001722 00:D712: F1 02     SBC (ram_0002),Y    ; 001E 0022 0026 002A
C - - - - - 0x001724 00:D714: B0 0F     BCS bra_D725
C - - - - - 0x001726 00:D716: 85 08     STA ram_0008
C - - - - - 0x001728 00:D718: A9 00     LDA #$00
C - - - - - 0x00172A 00:D71A: 38        SEC
C - - - - - 0x00172B 00:D71B: E5 08     SBC ram_0008
C - - - - - 0x00172D 00:D71D: E6 05     INC ram_0005
C - - - - - 0x00172F 00:D71F: E6 05     INC ram_0005
C - - - - - 0x001731 00:D721: E6 05     INC ram_0005
C - - - - - 0x001733 00:D723: E6 05     INC ram_0005
bra_D725:
C - - - - - 0x001735 00:D725: 85 06     STA ram_0006
C - - - - - 0x001737 00:D727: A5 CE     LDA ram_00CE
C - - - - - 0x001739 00:D729: A0 02     LDY #$02
C - - - - - 0x00173B 00:D72B: 38        SEC
C - - - - - 0x00173C 00:D72C: F1 02     SBC (ram_0002),Y    ; 0020 0024 0028 002C
C - - - - - 0x00173E 00:D72E: B0 0B     BCS bra_D73B
C - - - - - 0x001740 00:D730: 85 08     STA ram_0008
C - - - - - 0x001742 00:D732: A9 00     LDA #$00
C - - - - - 0x001744 00:D734: 38        SEC
C - - - - - 0x001745 00:D735: E5 08     SBC ram_0008
C - - - - - 0x001747 00:D737: E6 05     INC ram_0005
C - - - - - 0x001749 00:D739: E6 05     INC ram_0005
bra_D73B:
C - - - - - 0x00174B 00:D73B: 85 07     STA ram_0007
C - - - - - 0x00174D 00:D73D: A5 06     LDA ram_0006
C - - - - - 0x00174F 00:D73F: C5 07     CMP ram_0007
C - - - - - 0x001751 00:D741: B0 02     BCS bra_D745
C - - - - - 0x001753 00:D743: E6 05     INC ram_0005
bra_D745:
C - - - - - 0x001755 00:D745: A5 05     LDA ram_0005
C - - - - - 0x001757 00:D747: 0A        ASL
C - - - - - 0x001758 00:D748: 85 05     STA ram_0005
C - - - - - 0x00175A 00:D74A: A9 02     LDA #$02
C - - - - - 0x00175C 00:D74C: 85 06     STA ram_0006
bra_D74E:
C - - - - - 0x00175E 00:D74E: A4 05     LDY ram_0005
C - - - - - 0x001760 00:D750: B9 DC D7  LDA tbl_D7DC,Y
C - - - - - 0x001763 00:D753: A0 00     LDY #$00
bra_D755_loop:
C - - - - - 0x001765 00:D755: D9 0C 00  CMP ram_000C,Y
C - - - - - 0x001768 00:D758: F0 AE     BEQ bra_D708
C - - - - - 0x00176A 00:D75A: C8        INY
C - - - - - 0x00176B 00:D75B: C0 04     CPY #$04
C - - - - - 0x00176D 00:D75D: D0 F6     BNE bra_D755_loop
C - - - - - 0x00176F 00:D75F: E6 05     INC ram_0005
C - - - - - 0x001771 00:D761: C6 06     DEC ram_0006
C - - - - - 0x001773 00:D763: D0 E9     BNE bra_D74E
C - - - - - 0x001775 00:D765: B5 B9     LDA ram_00B9,X
C - - - - - 0x001777 00:D767: 38        SEC
C - - - - - 0x001778 00:D768: E9 01     SBC #$01
C - - - - - 0x00177A 00:D76A: 29 03     AND #$03
C - - - - - 0x00177C 00:D76C: A0 00     LDY #$00
bra_D76E_loop:
C - - - - - 0x00177E 00:D76E: D9 0C 00  CMP ram_000C,Y
C - - - - - 0x001781 00:D771: F0 95     BEQ bra_D708
C - - - - - 0x001783 00:D773: C8        INY
C - - - - - 0x001784 00:D774: C0 04     CPY #$04
C - - - - - 0x001786 00:D776: D0 F6     BNE bra_D76E_loop
C - - - - - 0x001788 00:D778: B5 B9     LDA ram_00B9,X
C - - - - - 0x00178A 00:D77A: 18        CLC
C - - - - - 0x00178B 00:D77B: 69 01     ADC #$01
C - - - - - 0x00178D 00:D77D: 29 03     AND #$03
C - - - - - 0x00178F 00:D77F: A0 00     LDY #$00
bra_D781_loop:
C - - - - - 0x001791 00:D781: D9 0C 00  CMP ram_000C,Y
C - - - - - 0x001794 00:D784: F0 82     BEQ bra_D708
C - - - - - 0x001796 00:D786: C8        INY
C - - - - - 0x001797 00:D787: C0 04     CPY #$04
C - - - - - 0x001799 00:D789: D0 F6     BNE bra_D781_loop
- - - - - - 0x00179B 00:D78B: 60        RTS



sub_D78C:
C - - - - - 0x00179C 00:D78C: B5 B8     LDA ram_00B8,X
C - - - - - 0x00179E 00:D78E: C9 06     CMP #$06
C - - - - - 0x0017A0 00:D790: F0 41     BEQ bra_D7D3
C - - - - - 0x0017A2 00:D792: A0 02     LDY #$02
C - - - - - 0x0017A4 00:D794: B1 02     LDA (ram_0002),Y    ; 0020 0024 0028 002C
C - - - - - 0x0017A6 00:D796: C9 70     CMP #$70
C - - - - - 0x0017A8 00:D798: D0 15     BNE bra_D7AF
C - - - - - 0x0017AA 00:D79A: A0 00     LDY #$00
C - - - - - 0x0017AC 00:D79C: B1 02     LDA (ram_0002),Y    ; 001E 0022 0026 002A
C - - - - - 0x0017AE 00:D79E: C9 90     CMP #$90
C - - - - - 0x0017B0 00:D7A0: B0 04     BCS bra_D7A6
C - - - - - 0x0017B2 00:D7A2: C9 30     CMP #$30
C - - - - - 0x0017B4 00:D7A4: B0 09     BCS bra_D7AF
bra_D7A6:
C - - - - - 0x0017B6 00:D7A6: A5 B3     LDA ram_00B3
C - - - - - 0x0017B8 00:D7A8: 95 C2     STA ram_00C2,X
C - - - - - 0x0017BA 00:D7AA: A5 B4     LDA ram_00B4
C - - - - - 0x0017BC 00:D7AC: 95 C3     STA ram_00C3,X
C - - - - - 0x0017BE 00:D7AE: 60        RTS
bra_D7AF:
C - - - - - 0x0017BF 00:D7AF: A5 04     LDA ram_0004
C - - - - - 0x0017C1 00:D7B1: 25 88     AND ram_0088
C - - - - - 0x0017C3 00:D7B3: D0 15     BNE bra_D7CA
C - - - - - 0x0017C5 00:D7B5: 8A        TXA
C - - - - - 0x0017C6 00:D7B6: D0 09     BNE bra_D7C1
C - - - - - 0x0017C8 00:D7B8: A5 CA     LDA ram_00CA
C - - - - - 0x0017CA 00:D7BA: 85 C2     STA ram_00C2
C - - - - - 0x0017CC 00:D7BC: A5 CB     LDA ram_00CB
C - - - - - 0x0017CE 00:D7BE: 85 C3     STA ram_00C3
C - - - - - 0x0017D0 00:D7C0: 60        RTS
bra_D7C1:
C - - - - - 0x0017D1 00:D7C1: A5 AF     LDA ram_00AF
C - - - - - 0x0017D3 00:D7C3: 95 C2     STA ram_00C2,X
C - - - - - 0x0017D5 00:D7C5: A5 B0     LDA ram_00B0
C - - - - - 0x0017D7 00:D7C7: 95 C3     STA ram_00C3,X
C - - - - - 0x0017D9 00:D7C9: 60        RTS
bra_D7CA:
C - - - - - 0x0017DA 00:D7CA: A5 B1     LDA ram_00B1
C - - - - - 0x0017DC 00:D7CC: 95 C2     STA ram_00C2,X
C - - - - - 0x0017DE 00:D7CE: A5 B2     LDA ram_00B2
C - - - - - 0x0017E0 00:D7D0: 95 C3     STA ram_00C3,X
C - - - - - 0x0017E2 00:D7D2: 60        RTS
bra_D7D3:
C - - - - - 0x0017E3 00:D7D3: A9 00     LDA #$00
C - - - - - 0x0017E5 00:D7D5: 95 C2     STA ram_00C2,X
C - - - - - 0x0017E7 00:D7D7: A9 02     LDA #$02
C - - - - - 0x0017E9 00:D7D9: 95 C3     STA ram_00C3,X
C - - - - - 0x0017EB 00:D7DB: 60        RTS



tbl_D7DC:
- D 2 - - - 0x0017EC 00:D7DC: 03        .byte $03   ; 00 
- D 2 - - - 0x0017ED 00:D7DD: 02        .byte $02   ; 01 
- D 2 - - - 0x0017EE 00:D7DE: 02        .byte $02   ; 02 
- D 2 - - - 0x0017EF 00:D7DF: 03        .byte $03   ; 03 
- D 2 - - - 0x0017F0 00:D7E0: 03        .byte $03   ; 04 
- D 2 - - - 0x0017F1 00:D7E1: 00        .byte $00   ; 05 
- D 2 - - - 0x0017F2 00:D7E2: 00        .byte $00   ; 06 
- D 2 - - - 0x0017F3 00:D7E3: 03        .byte $03   ; 07 
- D 2 - - - 0x0017F4 00:D7E4: 01        .byte $01   ; 08 
- D 2 - - - 0x0017F5 00:D7E5: 02        .byte $02   ; 09 
- D 2 - - - 0x0017F6 00:D7E6: 02        .byte $02   ; 0A 
- D 2 - - - 0x0017F7 00:D7E7: 01        .byte $01   ; 0B 
- D 2 - - - 0x0017F8 00:D7E8: 01        .byte $01   ; 0C 
- D 2 - - - 0x0017F9 00:D7E9: 00        .byte $00   ; 0D 
- D 2 - - - 0x0017FA 00:D7EA: 00        .byte $00   ; 0E 
- D 2 - - - 0x0017FB 00:D7EB: 01        .byte $01   ; 0F 



tbl_D7EC:
- D 2 - - - 0x0017FC 00:D7EC: 00        .byte $00, $00   ; 04 
- D 2 - - - 0x0017FE 00:D7EE: 2C        .byte $2C, $08   ; 06 



ofs_006_D7F0_02:
C - - J - - 0x001800 00:D7F0: A9 00     LDA #$00
C - - - - - 0x001802 00:D7F2: A8        TAY
C - - - - - 0x001803 00:D7F3: 85 05     STA ram_0005
C - - - - - 0x001805 00:D7F5: A9 80     LDA #$80
C - - - - - 0x001807 00:D7F7: 85 06     STA ram_0006
C - - - - - 0x001809 00:D7F9: B1 02     LDA (ram_0002),Y    ; 001E 0022 0026 002A
C - - - - - 0x00180B 00:D7FB: C9 60     CMP #$60
C - - - - - 0x00180D 00:D7FD: F0 1E     BEQ bra_D81D
C - - - - - 0x00180F 00:D7FF: 90 06     BCC bra_D807
C - - - - - 0x001811 00:D801: C6 05     DEC ram_0005
C - - - - - 0x001813 00:D803: A9 01     LDA #$01
C - - - - - 0x001815 00:D805: D0 02     BNE bra_D809    ; jmp
bra_D807:
C - - - - - 0x001817 00:D807: A9 03     LDA #$03
bra_D809:
C - - - - - 0x001819 00:D809: 95 B9     STA ram_00B9,X
C - - - - - 0x00181B 00:D80B: A0 01     LDY #$01
C - - - - - 0x00181D 00:D80D: B1 02     LDA (ram_0002),Y    ; 0027 002B
C - - - - - 0x00181F 00:D80F: 18        CLC
C - - - - - 0x001820 00:D810: 65 06     ADC ram_0006
C - - - - - 0x001822 00:D812: 91 02     STA (ram_0002),Y    ; 0027 002B
C - - - - - 0x001824 00:D814: A0 00     LDY #$00
C - - - - - 0x001826 00:D816: B1 02     LDA (ram_0002),Y    ; 0026 002A
C - - - - - 0x001828 00:D818: 65 05     ADC ram_0005
C - - - - - 0x00182A 00:D81A: 91 02     STA (ram_0002),Y    ; 0026 002A
C - - - - - 0x00182C 00:D81C: 60        RTS
bra_D81D:
C - - - - - 0x00182D 00:D81D: A9 00     LDA #$00
C - - - - - 0x00182F 00:D81F: 95 B9     STA ram_00B9,X
C - - - - - 0x001831 00:D821: A0 03     LDY #$03
C - - - - - 0x001833 00:D823: B1 02     LDA (ram_0002),Y    ; 0021 0025 0029 002D
C - - - - - 0x001835 00:D825: 38        SEC
C - - - - - 0x001836 00:D826: E9 80     SBC #$80
C - - - - - 0x001838 00:D828: 91 02     STA (ram_0002),Y    ; 0021 0025 0029 002D
C - - - - - 0x00183A 00:D82A: A0 02     LDY #$02
C - - - - - 0x00183C 00:D82C: B1 02     LDA (ram_0002),Y    ; 0020 0024 0028 002C
C - - - - - 0x00183E 00:D82E: E9 00     SBC #$00
C - - - - - 0x001840 00:D830: 91 02     STA (ram_0002),Y    ; 0020 0024 0028 002C
C - - - - - 0x001842 00:D832: C9 58     CMP #$58
C - - - - - 0x001844 00:D834: F0 01     BEQ bra_D837
C - - - - - 0x001846 00:D836: 60        RTS
bra_D837:
C - - - - - 0x001847 00:D837: A9 01     LDA #$01
C - - - - - 0x001849 00:D839: 95 B9     STA ram_00B9,X
C - - - - - 0x00184B 00:D83B: A9 04     LDA #$04
C - - - - - 0x00184D 00:D83D: 95 B8     STA ram_00B8,X
C - - - - - 0x00184F 00:D83F: 60        RTS



ofs_006_D840_00:
C - - J - - 0x001850 00:D840: A9 00     LDA #$00
C - - - - - 0x001852 00:D842: 85 05     STA ram_0005
C - - - - - 0x001854 00:D844: A9 80     LDA #$80
C - - - - - 0x001856 00:D846: 85 06     STA ram_0006
C - - - - - 0x001858 00:D848: B4 B9     LDY ram_00B9,X
C - - - - - 0x00185A 00:D84A: B9 57 D8  LDA tbl_D857,Y
C - - - - - 0x00185D 00:D84D: 85 10     STA ram_indirect_jmp
C - - - - - 0x00185F 00:D84F: B9 58 D8  LDA tbl_D857 + $01,Y
C - - - - - 0x001862 00:D852: 85 11     STA ram_indirect_jmp + $01
C - - - - - 0x001864 00:D854: 6C 10 00  JMP (ram_indirect_jmp)



tbl_D857:
- D 2 - - - 0x001867 00:D857: 5B D8     .word ofs_010_D85B_00
- D 2 - - - 0x001869 00:D859: 5D D8     .word ofs_010_D85D_02



ofs_010_D85B_00:
C - - J - - 0x00186B 00:D85B: C6 05     DEC ram_0005
ofs_010_D85D_02:
C - - - - - 0x00186D 00:D85D: A0 03     LDY #$03
C - - - - - 0x00186F 00:D85F: B1 02     LDA (ram_0002),Y    ; 0025 0029 002D
C - - - - - 0x001871 00:D861: 18        CLC
C - - - - - 0x001872 00:D862: 65 06     ADC ram_0006
C - - - - - 0x001874 00:D864: 91 02     STA (ram_0002),Y    ; 0025 0029 002D
C - - - - - 0x001876 00:D866: A0 02     LDY #$02
C - - - - - 0x001878 00:D868: B1 02     LDA (ram_0002),Y    ; 0024 0028 002C
C - - - - - 0x00187A 00:D86A: 65 05     ADC ram_0005
C - - - - - 0x00187C 00:D86C: 91 02     STA (ram_0002),Y    ; 0024 0028 002C
C - - - - - 0x00187E 00:D86E: C9 69     CMP #$69
C - - - - - 0x001880 00:D870: B0 04     BCS bra_D876
C - - - - - 0x001882 00:D872: A9 02     LDA #$02
C - - - - - 0x001884 00:D874: D0 06     BNE bra_D87C    ; jmp
bra_D876:
C - - - - - 0x001886 00:D876: C9 70     CMP #$70
C - - - - - 0x001888 00:D878: 90 04     BCC bra_D87E_RTS
C - - - - - 0x00188A 00:D87A: A9 00     LDA #$00
bra_D87C:
C - - - - - 0x00188C 00:D87C: 95 B9     STA ram_00B9,X
bra_D87E_RTS:
C - - - - - 0x00188E 00:D87E: 60        RTS



sub_D87F:
C - - - - - 0x00188F 00:D87F: A2 00     LDX #$00
C - - - - - 0x001891 00:D881: A9 2F     LDA #< (ram_obj_ppu_tile + $05)
C - - - - - 0x001893 00:D883: 85 00     STA ram_0000
C - - - - - 0x001895 00:D885: A9 02     LDA #> (ram_obj_ppu_tile + $05)
C - - - - - 0x001897 00:D887: 85 01     STA ram_0001
C - - - - - 0x001899 00:D889: A9 1E     LDA #< (ram_obj_pos_X_hi + $04)
C - - - - - 0x00189B 00:D88B: 85 02     STA ram_0002
C - - - - - 0x00189D 00:D88D: A9 00     LDA #> (ram_obj_pos_X_hi + $04)
C - - - - - 0x00189F 00:D88F: 85 03     STA ram_0003
C - - - - - 0x0018A1 00:D891: A9 01     LDA #$01
C - - - - - 0x0018A3 00:D893: 85 04     STA ram_0004
bra_D895_loop:
C - - - - - 0x0018A5 00:D895: 20 AF D8  JSR sub_D8AF
C - - - - - 0x0018A8 00:D898: A5 00     LDA ram_0000
C - - - - - 0x0018AA 00:D89A: 18        CLC
C - - - - - 0x0018AB 00:D89B: 69 04     ADC #$04
C - - - - - 0x0018AD 00:D89D: 85 00     STA ram_0000
C - - - - - 0x0018AF 00:D89F: A5 02     LDA ram_0002
C - - - - - 0x0018B1 00:D8A1: 18        CLC
C - - - - - 0x0018B2 00:D8A2: 69 04     ADC #$04
C - - - - - 0x0018B4 00:D8A4: 85 02     STA ram_0002
C - - - - - 0x0018B6 00:D8A6: 06 04     ASL ram_0004
C - - - - - 0x0018B8 00:D8A8: E8        INX
C - - - - - 0x0018B9 00:D8A9: E8        INX
C - - - - - 0x0018BA 00:D8AA: E0 08     CPX #$08
C - - - - - 0x0018BC 00:D8AC: D0 E7     BNE bra_D895_loop
C - - - - - 0x0018BE 00:D8AE: 60        RTS



sub_D8AF:
C - - - - - 0x0018BF 00:D8AF: B4 B8     LDY ram_00B8,X
C - - - - - 0x0018C1 00:D8B1: B9 BE D8  LDA tbl_D8BE,Y
C - - - - - 0x0018C4 00:D8B4: 85 10     STA ram_indirect_jmp
C - - - - - 0x0018C6 00:D8B6: B9 BF D8  LDA tbl_D8BE + $01,Y
C - - - - - 0x0018C9 00:D8B9: 85 11     STA ram_indirect_jmp + $01
C - - - - - 0x0018CB 00:D8BB: 6C 10 00  JMP (ram_indirect_jmp)



tbl_D8BE:
- D 2 - - - 0x0018CE 00:D8BE: C8 D8     .word ofs_006_D8C8_00_RTS
- D 2 - - - 0x0018D0 00:D8C0: C8 D8     .word ofs_006_D8C8_02_RTS
- D 2 - - - 0x0018D2 00:D8C2: C8 D8     .word ofs_006_D8C8_04_RTS
- D 2 - - - 0x0018D4 00:D8C4: 0C D5     .word ofs_006_D50C_06
- D 2 - - - 0x0018D6 00:D8C6: C8 D8     .word ofs_006_D8C8_08_RTS



ofs_006_D8C8_00_RTS:
ofs_006_D8C8_02_RTS:
ofs_006_D8C8_04_RTS:
ofs_006_D8C8_08_RTS:
C - - J - - 0x0018D8 00:D8C8: 60        RTS



sub_D8C9:
C - - - - - 0x0018D9 00:D8C9: A2 00     LDX #$00
C - - - - - 0x0018DB 00:D8CB: 86 00     STX ram_0000
bra_D8CD_loop:
C - - - - - 0x0018DD 00:D8CD: B5 B8     LDA ram_00B8,X
C - - - - - 0x0018DF 00:D8CF: C9 06     CMP #$06
C - - - - - 0x0018E1 00:D8D1: D0 04     BNE bra_D8D7
C - - - - - 0x0018E3 00:D8D3: 8D 08 06  STA ram_0608
C - - - - - 0x0018E6 00:D8D6: 60        RTS
bra_D8D7:
C - - - - - 0x0018E7 00:D8D7: E8        INX
C - - - - - 0x0018E8 00:D8D8: E8        INX
C - - - - - 0x0018E9 00:D8D9: E0 08     CPX #$08
C - - - - - 0x0018EB 00:D8DB: D0 F0     BNE bra_D8CD_loop
C - - - - - 0x0018ED 00:D8DD: A5 88     LDA ram_0088
C - - - - - 0x0018EF 00:D8DF: F0 04     BEQ bra_D8E5
C - - - - - 0x0018F1 00:D8E1: 8D 09 06  STA ram_0609
C - - - - - 0x0018F4 00:D8E4: 60        RTS
bra_D8E5:
C - - - - - 0x0018F5 00:D8E5: A0 00     LDY #$00
C - - - - - 0x0018F7 00:D8E7: A5 6A     LDA ram_pellet_cnt_p1
C - - - - - 0x0018F9 00:D8E9: C9 88     CMP #$88
C - - - - - 0x0018FB 00:D8EB: B0 06     BCS bra_D8F3
C - - - - - 0x0018FD 00:D8ED: C8        INY
C - - - - - 0x0018FE 00:D8EE: C9 42     CMP #$42
C - - - - - 0x001900 00:D8F0: B0 01     BCS bra_D8F3
C - - - - - 0x001902 00:D8F2: C8        INY
bra_D8F3:
C - - - - - 0x001903 00:D8F3: A9 01     LDA #$01
C - - - - - 0x001905 00:D8F5: 99 0A 06  STA ram_060A,Y  ; 060A 060B 060C
C - - - - - 0x001908 00:D8F8: 60        RTS



sub_D8F9:
C - - - - - 0x001909 00:D8F9: A5 51     LDA ram_direction_2
C - - - - - 0x00190B 00:D8FB: 0A        ASL
C - - - - - 0x00190C 00:D8FC: 18        CLC
C - - - - - 0x00190D 00:D8FD: 69 02     ADC #$02
C - - - - - 0x00190F 00:D8FF: 85 00     STA ram_0000
C - - - - - 0x001911 00:D901: A5 1A     LDA ram_obj_pos_X_hi
C - - - - - 0x001913 00:D903: 05 1C     ORA ram_obj_pos_Y_hi
C - - - - - 0x001915 00:D905: 29 07     AND #$07
C - - - - - 0x001917 00:D907: D0 10     BNE bra_D919
C - - - - - 0x001919 00:D909: A4 51     LDY ram_direction_2
C - - - - - 0x00191B 00:D90B: B9 2B 02  LDA ram_obj_ppu_tile_direction,Y  ; 022B 022C 022D 022E
C - - - - - 0x00191E 00:D90E: 29 F0     AND #$F0
C - - - - - 0x001920 00:D910: F0 07     BEQ bra_D919
C - - - - - 0x001922 00:D912: A5 B7     LDA ram_00B7
C - - - - - 0x001924 00:D914: 29 03     AND #$03
C - - - - - 0x001926 00:D916: 4C 1D D9  JMP loc_D91D
bra_D919:
C - - - - - 0x001929 00:D919: E6 B7     INC ram_00B7
C - - - - - 0x00192B 00:D91B: A5 B7     LDA ram_00B7
loc_D91D:
C D 2 - - - 0x00192D 00:D91D: 29 07     AND #$07
C - - - - - 0x00192F 00:D91F: C9 06     CMP #$06
C - - - - - 0x001931 00:D921: 90 04     BCC bra_D927
C - - - - - 0x001933 00:D923: A9 01     LDA #$01
C - - - - - 0x001935 00:D925: D0 07     BNE bra_D92E    ; jmp
bra_D927:
C - - - - - 0x001937 00:D927: A8        TAY
C - - - - - 0x001938 00:D928: B9 31 D9  LDA tbl_D931,Y
C - - - - - 0x00193B 00:D92B: 18        CLC
C - - - - - 0x00193C 00:D92C: 65 00     ADC ram_0000
bra_D92E:
C - - - - - 0x00193E 00:D92E: 85 32     STA ram_animation
C - - - - - 0x001940 00:D930: 60        RTS



tbl_D931:
- D 2 - - - 0x001941 00:D931: 00        .byte $00   ; 00 
- D 2 - - - 0x001942 00:D932: 00        .byte $00   ; 01 
- D 2 - - - 0x001943 00:D933: 00        .byte $00   ; 02 
- D 2 - - - 0x001944 00:D934: 01        .byte $01   ; 03 
- D 2 - - - 0x001945 00:D935: 01        .byte $01   ; 04 
- D 2 - - - 0x001946 00:D936: 00        .byte $00   ; 05 



sub_D937:
C - - - - - 0x001947 00:D937: A9 00     LDA #$00
C - - - - - 0x001949 00:D939: AA        TAX
C - - - - - 0x00194A 00:D93A: 85 00     STA ram_0000
C - - - - - 0x00194C 00:D93C: A5 4B     LDA ram_frame_cnt
C - - - - - 0x00194E 00:D93E: 29 08     AND #$08
C - - - - - 0x001950 00:D940: F0 04     BEQ bra_D946
C - - - - - 0x001952 00:D942: A9 01     LDA #$01
C - - - - - 0x001954 00:D944: 85 00     STA ram_0000
bra_D946:
C - - - - - 0x001956 00:D946: A9 01     LDA #$01
C - - - - - 0x001958 00:D948: 85 01     STA ram_0001
bra_D94A_loop:
C - - - - - 0x00195A 00:D94A: 20 56 D9  JSR sub_D956
C - - - - - 0x00195D 00:D94D: 06 01     ASL ram_0001
C - - - - - 0x00195F 00:D94F: E8        INX
C - - - - - 0x001960 00:D950: E8        INX
C - - - - - 0x001961 00:D951: E0 08     CPX #$08
C - - - - - 0x001963 00:D953: D0 F5     BNE bra_D94A_loop
ofs_011_D955_07_RTS:
C - - - - - 0x001965 00:D955: 60        RTS



sub_D956:
C - - - - - 0x001966 00:D956: B4 B8     LDY ram_00B8,X
C - - - - - 0x001968 00:D958: B9 65 D9  LDA tbl_D965,Y
C - - - - - 0x00196B 00:D95B: 85 10     STA ram_indirect_jmp
C - - - - - 0x00196D 00:D95D: B9 66 D9  LDA tbl_D965 + $01,Y
C - - - - - 0x001970 00:D960: 85 11     STA ram_indirect_jmp + $01
C - - - - - 0x001972 00:D962: 6C 10 00  JMP (ram_indirect_jmp)



tbl_D965:
- D 2 - - - 0x001975 00:D965: 8C D9     .word ofs_011_D98C_00
- D 2 - - - 0x001977 00:D967: 8C D9     .word ofs_011_D98C_02
- D 2 - - - 0x001979 00:D969: 8C D9     .word ofs_011_D98C_04
- D 2 - - - 0x00197B 00:D96B: 98 D9     .word ofs_011_D998_06
- D 2 - - - 0x00197D 00:D96D: 55 D9     .word ofs_011_D955_07_RTS



bra_D96F:
C - - - - - 0x00197F 00:D96F: B5 B9     LDA ram_00B9,X
C - - - - - 0x001981 00:D971: 85 03     STA ram_0003
C - - - - - 0x001983 00:D973: A9 0A     LDA #$0A
bra_D975_loop:
C - - - - - 0x001985 00:D975: C6 03     DEC ram_0003
C - - - - - 0x001987 00:D977: 30 05     BMI bra_D97E
C - - - - - 0x001989 00:D979: 18        CLC
C - - - - - 0x00198A 00:D97A: 69 02     ADC #$02
C - - - - - 0x00198C 00:D97C: D0 F7     BNE bra_D975_loop
bra_D97E:
C - - - - - 0x00198E 00:D97E: 18        CLC
C - - - - - 0x00198F 00:D97F: 65 00     ADC ram_0000
C - - - - - 0x001991 00:D981: 85 02     STA ram_0002
bra_D983:
C - - - - - 0x001993 00:D983: 8A        TXA
C - - - - - 0x001994 00:D984: 4A        LSR
C - - - - - 0x001995 00:D985: A8        TAY
C - - - - - 0x001996 00:D986: A5 02     LDA ram_0002
C - - - - - 0x001998 00:D988: 99 33 00  STA ram_animation + $01,Y
C - - - - - 0x00199B 00:D98B: 60        RTS



ofs_011_D98C_00:
ofs_011_D98C_02:
ofs_011_D98C_04:
C - - J - - 0x00199C 00:D98C: A5 01     LDA ram_0001
C - - - - - 0x00199E 00:D98E: 25 88     AND ram_0088
C - - - - - 0x0019A0 00:D990: F0 DD     BEQ bra_D96F
C - - - - - 0x0019A2 00:D992: A9 1E     LDA #$1E
C - - - - - 0x0019A4 00:D994: 85 02     STA ram_0002
C - - - - - 0x0019A6 00:D996: D0 E6     BNE bra_D97E    ; jmp



ofs_011_D998_06:
C - - J - - 0x0019A8 00:D998: B5 B9     LDA ram_00B9,X
C - - - - - 0x0019AA 00:D99A: 85 03     STA ram_0003
C - - - - - 0x0019AC 00:D99C: A9 20     LDA #$20
bra_D99E_loop:
C - - - - - 0x0019AE 00:D99E: C6 03     DEC ram_0003
C - - - - - 0x0019B0 00:D9A0: 30 05     BMI bra_D9A7
C - - - - - 0x0019B2 00:D9A2: 18        CLC
C - - - - - 0x0019B3 00:D9A3: 69 01     ADC #$01
C - - - - - 0x0019B5 00:D9A5: D0 F7     BNE bra_D99E_loop
bra_D9A7:
C - - - - - 0x0019B7 00:D9A7: 85 02     STA ram_0002
C - - - - - 0x0019B9 00:D9A9: 30 D8     BMI bra_D983    ; jmp?



sub_D9AB:
C - - - - - 0x0019BB 00:D9AB: A2 23     LDX #$23
bra_D9AD_loop:
C - - - - - 0x0019BD 00:D9AD: B5 1A     LDA ram_obj_position,X
C - - - - - 0x0019BF 00:D9AF: 9D 74 02  STA ram_spr_position,X
C - - - - - 0x0019C2 00:D9B2: CA        DEX
C - - - - - 0x0019C3 00:D9B3: 10 F8     BPL bra_D9AD_loop
C - - - - - 0x0019C5 00:D9B5: A9 84     LDA #< (ram_spr_pos_X_hi + $04 + $0C)
C - - - - - 0x0019C7 00:D9B7: 85 00     STA ram_0000
C - - - - - 0x0019C9 00:D9B9: A9 02     LDA #> (ram_spr_pos_X_hi + $04 + $0C)
C - - - - - 0x0019CB 00:D9BB: 85 01     STA ram_0001
C - - - - - 0x0019CD 00:D9BD: A9 08     LDA #$08
C - - - - - 0x0019CF 00:D9BF: 85 03     STA ram_0003
C - - - - - 0x0019D1 00:D9C1: A9 03     LDA #$03
C - - - - - 0x0019D3 00:D9C3: 85 02     STA ram_0002
loc_D9C5_loop:
C D 2 - - - 0x0019D5 00:D9C5: A5 03     LDA ram_0003
C - - - - - 0x0019D7 00:D9C7: 25 88     AND ram_0088
C - - - - - 0x0019D9 00:D9C9: D0 7B     BNE bra_DA46
C - - - - - 0x0019DB 00:D9CB: A0 00     LDY #$00
C - - - - - 0x0019DD 00:D9CD: AD 74 02  LDA ram_spr_pos_X_hi
C - - - - - 0x0019E0 00:D9D0: D1 00     CMP (ram_0000),Y    ; 0278 027C 0280 0284
C - - - - - 0x0019E2 00:D9D2: B0 08     BCS bra_D9DC
C - - - - - 0x0019E4 00:D9D4: B1 00     LDA (ram_0000),Y    ; 0278 027C 0280 0284
C - - - - - 0x0019E6 00:D9D6: 38        SEC
C - - - - - 0x0019E7 00:D9D7: ED 74 02  SBC ram_spr_pos_X_hi
C - - - - - 0x0019EA 00:D9DA: B0 02     BCS bra_D9DE
bra_D9DC:
C - - - - - 0x0019EC 00:D9DC: F1 00     SBC (ram_0000),Y    ; 0278 027C 0280 0284
bra_D9DE:
C - - - - - 0x0019EE 00:D9DE: C9 19     CMP #$19
C - - - - - 0x0019F0 00:D9E0: B0 64     BCS bra_DA46
C - - - - - 0x0019F2 00:D9E2: 85 04     STA ram_0004
C - - - - - 0x0019F4 00:D9E4: A0 02     LDY #$02
C - - - - - 0x0019F6 00:D9E6: AD 76 02  LDA ram_spr_pos_Y_hi
C - - - - - 0x0019F9 00:D9E9: D1 00     CMP (ram_0000),Y    ; 027A 027E 0282 0286
C - - - - - 0x0019FB 00:D9EB: B0 08     BCS bra_D9F5
C - - - - - 0x0019FD 00:D9ED: B1 00     LDA (ram_0000),Y    ; 027A 027E 0282 0286
C - - - - - 0x0019FF 00:D9EF: 38        SEC
C - - - - - 0x001A00 00:D9F0: ED 76 02  SBC ram_spr_pos_Y_hi
C - - - - - 0x001A03 00:D9F3: B0 02     BCS bra_D9F7
bra_D9F5:
C - - - - - 0x001A05 00:D9F5: F1 00     SBC (ram_0000),Y    ; 027A 027E 0282 0286
bra_D9F7:
C - - - - - 0x001A07 00:D9F7: C9 19     CMP #$19
C - - - - - 0x001A09 00:D9F9: B0 4B     BCS bra_DA46
C - - - - - 0x001A0B 00:D9FB: 65 04     ADC ram_0004
C - - - - - 0x001A0D 00:D9FD: C9 10     CMP #$10
C - - - - - 0x001A0F 00:D9FF: B0 45     BCS bra_DA46
C - - - - - 0x001A11 00:DA01: AD 74 02  LDA ram_spr_pos_X_hi
C - - - - - 0x001A14 00:DA04: 85 03     STA ram_0003
C - - - - - 0x001A16 00:DA06: AD 76 02  LDA ram_spr_pos_Y_hi
C - - - - - 0x001A19 00:DA09: 85 04     STA ram_0004
C - - - - - 0x001A1B 00:DA0B: AD 8C 02  LDA ram_028C
C - - - - - 0x001A1E 00:DA0E: 85 05     STA ram_0005
C - - - - - 0x001A20 00:DA10: AD 92 02  LDA ram_0292
C - - - - - 0x001A23 00:DA13: 85 06     STA ram_0006
C - - - - - 0x001A25 00:DA15: A0 00     LDY #$00
C - - - - - 0x001A27 00:DA17: B1 00     LDA (ram_0000),Y    ; 0278 027C 0280 0284
C - - - - - 0x001A29 00:DA19: 8D 74 02  STA ram_spr_pos_X_hi
C - - - - - 0x001A2C 00:DA1C: A5 03     LDA ram_0003
C - - - - - 0x001A2E 00:DA1E: 91 00     STA (ram_0000),Y    ; 0278 027C 0280 0284
C - - - - - 0x001A30 00:DA20: A0 02     LDY #$02
C - - - - - 0x001A32 00:DA22: B1 00     LDA (ram_0000),Y    ; 027A 027E 0282 0286
C - - - - - 0x001A34 00:DA24: 8D 76 02  STA ram_spr_pos_Y_hi
C - - - - - 0x001A37 00:DA27: A5 04     LDA ram_0004
C - - - - - 0x001A39 00:DA29: 91 00     STA (ram_0000),Y    ; 027A 027E 0282 0286
C - - - - - 0x001A3B 00:DA2B: A6 02     LDX ram_0002
C - - - - - 0x001A3D 00:DA2D: BD 8D 02  LDA ram_028D,X
C - - - - - 0x001A40 00:DA30: 8D 8C 02  STA ram_028C
C - - - - - 0x001A43 00:DA33: A5 05     LDA ram_0005
C - - - - - 0x001A45 00:DA35: 9D 8D 02  STA ram_028D,X
C - - - - - 0x001A48 00:DA38: BD 93 02  LDA ram_0293,X
C - - - - - 0x001A4B 00:DA3B: 8D 92 02  STA ram_0292
C - - - - - 0x001A4E 00:DA3E: A5 06     LDA ram_0006
C - - - - - 0x001A50 00:DA40: 9D 93 02  STA ram_0293,X
C - - - - - 0x001A53 00:DA43: 4C 56 DA  JMP loc_DA56
bra_DA46:
C - - - - - 0x001A56 00:DA46: A5 00     LDA ram_0000
C - - - - - 0x001A58 00:DA48: 38        SEC
C - - - - - 0x001A59 00:DA49: E9 04     SBC #$04
C - - - - - 0x001A5B 00:DA4B: 85 00     STA ram_0000
C - - - - - 0x001A5D 00:DA4D: 46 03     LSR ram_0003
C - - - - - 0x001A5F 00:DA4F: C6 02     DEC ram_0002
C - - - - - 0x001A61 00:DA51: 30 03     BMI bra_DA56
C - - - - - 0x001A63 00:DA53: 4C C5 D9  JMP loc_D9C5_loop
bra_DA56:
loc_DA56:
C D 2 - - - 0x001A66 00:DA56: 20 54 E1  JSR sub_E154_calculate_ppu_positions
C - - - - - 0x001A69 00:DA59: 4C 5C DA  JMP loc_DA5C



sub_DA5C:
loc_DA5C:
C D 2 - - - 0x001A6C 00:DA5C: A9 74     LDA #< ram_spr_position
C - - - - - 0x001A6E 00:DA5E: 85 00     STA ram_0000
C - - - - - 0x001A70 00:DA60: A9 02     LDA #> ram_spr_position
C - - - - - 0x001A72 00:DA62: 85 01     STA ram_0001
C - - - - - 0x001A74 00:DA64: A9 00     LDA #< ram_oam
C - - - - - 0x001A76 00:DA66: 85 02     STA ram_0002
C - - - - - 0x001A78 00:DA68: A9 07     LDA #> ram_oam
C - - - - - 0x001A7A 00:DA6A: 85 03     STA ram_0003
C - - - - - 0x001A7C 00:DA6C: A9 00     LDA #$00
C - - - - - 0x001A7E 00:DA6E: 85 04     STA ram_0004
loc_DA70:
C D 2 - - - 0x001A80 00:DA70: A9 00     LDA #$00
C - - - - - 0x001A82 00:DA72: 85 05     STA ram_0005
C - - - - - 0x001A84 00:DA74: AA        TAX
loc_DA75_loop:
C D 2 - - - 0x001A85 00:DA75: A0 02     LDY #$02
C - - - - - 0x001A87 00:DA77: B1 00     LDA (ram_0000),Y    ; 0276 027A 027E 0282 0286 028A
C - - - - - 0x001A89 00:DA79: D0 04     BNE bra_DA7F
C - - - - - 0x001A8B 00:DA7B: A9 FF     LDA #$FF
C - - - - - 0x001A8D 00:DA7D: D0 04     BNE bra_DA83    ; jmp
bra_DA7F:
C - - - - - 0x001A8F 00:DA7F: 18        CLC
C - - - - - 0x001A90 00:DA80: 7D C1 DD  ADC tbl_DDC1_spr_pos,X
bra_DA83:
C - - - - - 0x001A93 00:DA83: A0 00     LDY #$00
C - - - - - 0x001A95 00:DA85: 91 02     STA (ram_0002),Y    ; 0700-075C (spr_Y)
C - - - - - 0x001A97 00:DA87: A4 04     LDY ram_0004
C - - - - - 0x001A99 00:DA89: B9 8C 02  LDA ram_028C,Y
C - - - - - 0x001A9C 00:DA8C: 0A        ASL
C - - - - - 0x001A9D 00:DA8D: 2A        ROL
C - - - - - 0x001A9E 00:DA8E: 2A        ROL
C - - - - - 0x001A9F 00:DA8F: 29 03     AND #$03
C - - - - - 0x001AA1 00:DA91: F0 29     BEQ bra_DABC_00
C - - - - - 0x001AA3 00:DA93: C9 02     CMP #$02
C - - - - - 0x001AA5 00:DA95: F0 6B     BEQ bra_DB02_02
C - - - - - 0x001AA7 00:DA97: 90 46     BCC bra_DADF_01
; 03
- - - - - - 0x001AA9 00:DA99: B9 8C 02  LDA ram_028C,Y
- - - - - - 0x001AAC 00:DA9C: 0A        ASL
- - - - - - 0x001AAD 00:DA9D: 0A        ASL
- - - - - - 0x001AAE 00:DA9E: 18        CLC
- - - - - - 0x001AAF 00:DA9F: 65 05     ADC ram_0005
- - - - - - 0x001AB1 00:DAA1: A8        TAY
- - - - - - 0x001AB2 00:DAA2: 85 06     STA ram_0006
- - - - - - 0x001AB4 00:DAA4: B9 8D DC  LDA tbl_DC8D_spr_A,Y
- - - - - - 0x001AB7 00:DAA7: A0 01     LDY #$01
- - - - - - 0x001AB9 00:DAA9: 91 02     STA (ram_0002),Y
- - - - - - 0x001ABB 00:DAAB: A4 04     LDY ram_0004
- - - - - - 0x001ABD 00:DAAD: B9 92 02  LDA ram_0292,Y
- - - - - - 0x001AC0 00:DAB0: A4 06     LDY ram_0006
- - - - - - 0x001AC2 00:DAB2: 19 C1 DD  ORA tbl_DDC1_spr_pos,Y
- - - - - - 0x001AC5 00:DAB5: A0 02     LDY #$02
- - - - - - 0x001AC7 00:DAB7: 91 02     STA (ram_0002),Y
- - - - - - 0x001AC9 00:DAB9: 4C 22 DB  JMP loc_DB22
bra_DABC_00:
C - - - - - 0x001ACC 00:DABC: B9 8C 02  LDA ram_028C,Y
C - - - - - 0x001ACF 00:DABF: 0A        ASL
C - - - - - 0x001AD0 00:DAC0: 0A        ASL
C - - - - - 0x001AD1 00:DAC1: 18        CLC
C - - - - - 0x001AD2 00:DAC2: 65 05     ADC ram_0005
C - - - - - 0x001AD4 00:DAC4: A8        TAY
C - - - - - 0x001AD5 00:DAC5: 85 06     STA ram_0006
C - - - - - 0x001AD7 00:DAC7: B9 59 DB  LDA tbl_DB59_spr_T,Y
C - - - - - 0x001ADA 00:DACA: A0 01     LDY #$01
C - - - - - 0x001ADC 00:DACC: 91 02     STA (ram_0002),Y    ; 0701-075D (spr_T)
C - - - - - 0x001ADE 00:DACE: A4 04     LDY ram_0004
C - - - - - 0x001AE0 00:DAD0: B9 92 02  LDA ram_0292,Y
C - - - - - 0x001AE3 00:DAD3: A4 06     LDY ram_0006
C - - - - - 0x001AE5 00:DAD5: 19 8D DC  ORA tbl_DC8D_spr_A,Y
C - - - - - 0x001AE8 00:DAD8: A0 02     LDY #$02
C - - - - - 0x001AEA 00:DADA: 91 02     STA (ram_0002),Y    ; 0702-075E (spr_A)
C - - - - - 0x001AEC 00:DADC: 4C 22 DB  JMP loc_DB22
bra_DADF_01:
C - - - - - 0x001AEF 00:DADF: B9 8C 02  LDA ram_028C,Y
C - - - - - 0x001AF2 00:DAE2: 0A        ASL
C - - - - - 0x001AF3 00:DAE3: 0A        ASL
C - - - - - 0x001AF4 00:DAE4: 18        CLC
C - - - - - 0x001AF5 00:DAE5: 65 05     ADC ram_0005
C - - - - - 0x001AF7 00:DAE7: A8        TAY
C - - - - - 0x001AF8 00:DAE8: 85 06     STA ram_0006
C - - - - - 0x001AFA 00:DAEA: B9 59 DC  LDA tbl_DC59_spr_T,Y
C - - - - - 0x001AFD 00:DAED: A0 01     LDY #$01
C - - - - - 0x001AFF 00:DAEF: 91 02     STA (ram_0002),Y    ; 0701-072D and 0741-074D (spr_T)
C - - - - - 0x001B01 00:DAF1: A4 04     LDY ram_0004
C - - - - - 0x001B03 00:DAF3: B9 92 02  LDA ram_0292,Y
C - - - - - 0x001B06 00:DAF6: A4 06     LDY ram_0006
C - - - - - 0x001B08 00:DAF8: 19 8D DD  ORA tbl_DD8D_spr_A,Y
C - - - - - 0x001B0B 00:DAFB: A0 02     LDY #$02
C - - - - - 0x001B0D 00:DAFD: 91 02     STA (ram_0002),Y    ; 0702-072E and 0742-074E (spr_A)
C - - - - - 0x001B0F 00:DAFF: 4C 22 DB  JMP loc_DB22
bra_DB02_02:
- - - - - - 0x001B12 00:DB02: B9 8C 02  LDA ram_028C,Y
- - - - - - 0x001B15 00:DB05: 0A        ASL
- - - - - - 0x001B16 00:DB06: 0A        ASL
- - - - - - 0x001B17 00:DB07: 18        CLC
- - - - - - 0x001B18 00:DB08: 65 05     ADC ram_0005
- - - - - - 0x001B1A 00:DB0A: A8        TAY
- - - - - - 0x001B1B 00:DB0B: 85 06     STA ram_0006
- - - - - - 0x001B1D 00:DB0D: B9 8D DC  LDA tbl_DC8D_spr_A,Y
- - - - - - 0x001B20 00:DB10: A0 01     LDY #$01
- - - - - - 0x001B22 00:DB12: 91 02     STA (ram_0002),Y
- - - - - - 0x001B24 00:DB14: A4 04     LDY ram_0004
- - - - - - 0x001B26 00:DB16: B9 92 02  LDA ram_0292,Y
- - - - - - 0x001B29 00:DB19: A4 06     LDY ram_0006
- - - - - - 0x001B2B 00:DB1B: 19 C1 DD  ORA tbl_DDC1_spr_pos,Y
- - - - - - 0x001B2E 00:DB1E: A0 02     LDY #$02
- - - - - - 0x001B30 00:DB20: 91 02     STA (ram_0002),Y
loc_DB22:
C D 2 - - - 0x001B32 00:DB22: A0 00     LDY #$00
C - - - - - 0x001B34 00:DB24: B1 00     LDA (ram_0000),Y    ; 0274 0278 027C 0280 0284 0288
C - - - - - 0x001B36 00:DB26: D0 04     BNE bra_DB2C
C - - - - - 0x001B38 00:DB28: A9 FF     LDA #$FF
C - - - - - 0x001B3A 00:DB2A: D0 04     BNE bra_DB30    ; jmp
bra_DB2C:
C - - - - - 0x001B3C 00:DB2C: 18        CLC
C - - - - - 0x001B3D 00:DB2D: 7D C2 DD  ADC tbl_DDC1_spr_pos + $01,X
bra_DB30:
C - - - - - 0x001B40 00:DB30: A0 03     LDY #$03
C - - - - - 0x001B42 00:DB32: 91 02     STA (ram_0002),Y    ; 0703-075F (spr_X)
C - - - - - 0x001B44 00:DB34: A5 02     LDA ram_0002
C - - - - - 0x001B46 00:DB36: 18        CLC
C - - - - - 0x001B47 00:DB37: 69 04     ADC #$04
C - - - - - 0x001B49 00:DB39: 85 02     STA ram_0002
C - - - - - 0x001B4B 00:DB3B: E6 05     INC ram_0005
C - - - - - 0x001B4D 00:DB3D: E8        INX
C - - - - - 0x001B4E 00:DB3E: E8        INX
C - - - - - 0x001B4F 00:DB3F: E0 08     CPX #$08
C - - - - - 0x001B51 00:DB41: F0 03     BEQ bra_DB46
C - - - - - 0x001B53 00:DB43: 4C 75 DA  JMP loc_DA75_loop
bra_DB46:
C - - - - - 0x001B56 00:DB46: A5 00     LDA ram_0000
C - - - - - 0x001B58 00:DB48: 18        CLC
C - - - - - 0x001B59 00:DB49: 69 04     ADC #$04
C - - - - - 0x001B5B 00:DB4B: 85 00     STA ram_0000
C - - - - - 0x001B5D 00:DB4D: E6 04     INC ram_0004
C - - - - - 0x001B5F 00:DB4F: A5 04     LDA ram_0004
C - - - - - 0x001B61 00:DB51: C9 06     CMP #$06
C - - - - - 0x001B63 00:DB53: F0 03     BEQ bra_DB58_RTS
C - - - - - 0x001B65 00:DB55: 4C 70 DA  JMP loc_DA70
bra_DB58_RTS:
C - - - - - 0x001B68 00:DB58: 60        RTS



tbl_DB59_spr_T:
- D 2 - - - 0x001B69 00:DB59: 4C        .byte $4C, $4C, $4C, $4C   ; 00 
- D 2 - - - 0x001B6D 00:DB5D: 00        .byte $00, $00, $00, $00   ; 01 
- D 2 - - - 0x001B71 00:DB61: 04        .byte $04, $04, $03, $03   ; 02 
- D 2 - - - 0x001B75 00:DB65: 08        .byte $08, $08, $07, $07   ; 03 
- D 2 - - - 0x001B79 00:DB69: 02        .byte $02, $01, $02, $01   ; 04 
- D 2 - - - 0x001B7D 00:DB6D: 06        .byte $06, $05, $06, $05   ; 05 
- D 2 - - - 0x001B81 00:DB71: 03        .byte $03, $03, $04, $04   ; 06 
- D 2 - - - 0x001B85 00:DB75: 07        .byte $07, $07, $08, $08   ; 07 
- D 2 - - - 0x001B89 00:DB79: 01        .byte $01, $02, $01, $02   ; 08 
- D 2 - - - 0x001B8D 00:DB7D: 05        .byte $05, $06, $05, $06   ; 09 
- D 2 - - - 0x001B91 00:DB81: 18        .byte $18, $18, $19, $19   ; 0A 
- D 2 - - - 0x001B95 00:DB85: 18        .byte $18, $18, $1A, $1A   ; 0B 
- D 2 - - - 0x001B99 00:DB89: 1B        .byte $1B, $1C, $1D, $1F   ; 0C 
- D 2 - - - 0x001B9D 00:DB8D: 1B        .byte $1B, $1C, $1E, $20   ; 0D 
- D 2 - - - 0x001BA1 00:DB91: 21        .byte $21, $21, $22, $22   ; 0E 
- D 2 - - - 0x001BA5 00:DB95: 21        .byte $21, $21, $23, $23   ; 0F 
- D 2 - - - 0x001BA9 00:DB99: 1C        .byte $1C, $1B, $1F, $1D   ; 10 
- D 2 - - - 0x001BAD 00:DB9D: 1C        .byte $1C, $1B, $20, $1E   ; 11 
- D 2 - - - 0x001BB1 00:DBA1: 00        .byte $00, $00, $00, $00   ; 12 
- D 2 - - - 0x001BB5 00:DBA5: 09        .byte $09, $09, $0A, $0A   ; 13 
- D 2 - - - 0x001BB9 00:DBA9: 0B        .byte $0B, $0B, $0C, $0C   ; 14 
- D 2 - - - 0x001BBD 00:DBAD: 4C        .byte $4C, $4C, $0D, $0D   ; 15 
- D 2 - - - 0x001BC1 00:DBB1: 4C        .byte $4C, $4C, $0E, $0E   ; 16 
- D 2 - - - 0x001BC5 00:DBB5: 4C        .byte $4C, $4C, $0F, $0F   ; 17 
- D 2 - - - 0x001BC9 00:DBB9: 4C        .byte $4C, $4C, $10, $10   ; 18 
- D 2 - - - 0x001BCD 00:DBBD: 4C        .byte $4C, $4C, $11, $11   ; 19 
- D 2 - - - 0x001BD1 00:DBC1: 4C        .byte $4C, $4C, $12, $12   ; 1A 
- D 2 - - - 0x001BD5 00:DBC5: 4C        .byte $4C, $4C, $13, $13   ; 1B 
- D 2 - - - 0x001BD9 00:DBC9: 14        .byte $14, $15, $16, $17   ; 1C 
- D 2 - - - 0x001BDD 00:DBCD: 4C        .byte $4C, $4C, $4C, $4C   ; 1D 
- D 2 - - - 0x001BE1 00:DBD1: 24        .byte $24, $24, $25, $25   ; 1E 
- D 2 - - - 0x001BE5 00:DBD5: 24        .byte $24, $24, $26, $26   ; 1F 
- D 2 - - - 0x001BE9 00:DBD9: 27        .byte $27, $27, $4C, $4C   ; 20 
- D 2 - - - 0x001BED 00:DBDD: 28        .byte $28, $29, $2A, $2B   ; 21 
- D 2 - - - 0x001BF1 00:DBE1: 2C        .byte $2C, $2C, $2D, $2D   ; 22 
- D 2 - - - 0x001BF5 00:DBE5: 29        .byte $29, $28, $2B, $2A   ; 23 
- D 2 - - - 0x001BF9 00:DBE9: 90        .byte $90, $91, $92, $93   ; 24 
- D 2 - - - 0x001BFD 00:DBED: 94        .byte $94, $95, $96, $97   ; 25 
- D 2 - - - 0x001C01 00:DBF1: 98        .byte $98, $99, $9A, $9B   ; 26 
- D 2 - - - 0x001C05 00:DBF5: 9C        .byte $9C, $9D, $9E, $9F   ; 27 
- D 2 - - - 0x001C09 00:DBF9: A0        .byte $A0, $A1, $A2, $A3   ; 28 
- D 2 - - - 0x001C0D 00:DBFD: A4        .byte $A4, $A5, $A6, $A7   ; 29 
- D 2 - - - 0x001C11 00:DC01: A8        .byte $A8, $A9, $AA, $AB   ; 2A 
- D 2 - - - 0x001C15 00:DC05: AC        .byte $AC, $AD, $AE, $AF   ; 2B 
- D 2 - - - 0x001C19 00:DC09: 2E        .byte $2E, $2F, $30, $31   ; 2C 
- D 2 - - - 0x001C1D 00:DC0D: 32        .byte $32, $2F, $33, $31   ; 2D 
- D 2 - - - 0x001C21 00:DC11: 34        .byte $34, $2F, $35, $31   ; 2E 
- D 2 - - - 0x001C25 00:DC15: 36        .byte $36, $2F, $37, $31   ; 2F 
- D 2 - - - 0x001C29 00:DC19: 38        .byte $38, $2F, $39, $31   ; 30 
- D 2 - - - 0x001C2D 00:DC1D: 3A        .byte $3A, $2F, $3B, $31   ; 31 
- D 2 - - - 0x001C31 00:DC21: 3C        .byte $3C, $2F, $3D, $31   ; 32 
- D 2 - - - 0x001C35 00:DC25: 3E        .byte $3E, $3F, $40, $41   ; 33 
- D 2 - - - 0x001C39 00:DC29: 42        .byte $42, $3F, $43, $41   ; 34 
- D 2 - - - 0x001C3D 00:DC2D: 44        .byte $44, $45, $46, $47   ; 35 
- D 2 - - - 0x001C41 00:DC31: 48        .byte $48, $45, $49, $47   ; 36 
- D 2 - - - 0x001C45 00:DC35: 4A        .byte $4A, $45, $4B, $47   ; 37 
- D 2 - - - 0x001C49 00:DC39: 4D        .byte $4D, $4E, $4F, $50   ; 38 
- D 2 - - - 0x001C4D 00:DC3D: 4E        .byte $4E, $4D, $50, $4F   ; 39 
- D 2 - - - 0x001C51 00:DC41: 4F        .byte $4F, $50, $4D, $4E   ; 3A 
- D 2 - - - 0x001C55 00:DC45: 50        .byte $50, $4F, $4E, $4D   ; 3B 
- D 2 - - - 0x001C59 00:DC49: 4D        .byte $4D, $4E, $4F, $51   ; 3C 
- D 2 - - - 0x001C5D 00:DC4D: 4E        .byte $4E, $52, $53, $54   ; 3D 
- D 2 - - - 0x001C61 00:DC51: 4F        .byte $4F, $51, $4D, $4E   ; 3E 
- D 2 - - - 0x001C65 00:DC55: 53        .byte $53, $54, $4E, $52   ; 3F 



tbl_DC59_spr_T:
- D 2 - - - 0x001C69 00:DC59: 55        .byte $55, $4C, $56, $4C   ; 00 
- D 2 - - - 0x001C6D 00:DC5D: 56        .byte $56, $4C, $55, $4C   ; 01 
- D 2 - - - 0x001C71 00:DC61: 4C        .byte $4C, $57, $4C, $58   ; 02 
- D 2 - - - 0x001C75 00:DC65: 4C        .byte $4C, $59, $4C, $5A   ; 03 
- D 2 - - - 0x001C79 00:DC69: 4C        .byte $4C, $5B, $4C, $5C   ; 04 
- D 2 - - - 0x001C7D 00:DC6D: 4C        .byte $4C, $4C, $4C, $5D   ; 05 
- D 2 - - - 0x001C81 00:DC71: 18        .byte $18, $18, $19, $5E   ; 06 
- D 2 - - - 0x001C85 00:DC75: 60        .byte $60, $61, $19, $5E   ; 07 
- D 2 - - - 0x001C89 00:DC79: 1B        .byte $1B, $1C, $1D, $62   ; 08 
- D 2 - - - 0x001C8D 00:DC7D: 1B        .byte $1B, $1C, $1E, $63   ; 09 
- D 2 - - - 0x001C91 00:DC81: 64        .byte $64, $65, $66, $67   ; 0A 
- D 2 - - - 0x001C95 00:DC85: 64        .byte $64, $65, $68, $69   ; 0B 
- D 2 - - - 0x001C99 00:DC89: 6A        .byte $6A, $6B, $4C, $4C   ; 0C 



tbl_DC8D_spr_A:
- D 2 - - - 0x001C9D 00:DC8D: 00        .byte $00, $00, $00, $00   ; 00 
- D 2 - - - 0x001CA1 00:DC91: 00        .byte $00, $40, $80, $C0   ; 01 
- D 2 - - - 0x001CA5 00:DC95: 80        .byte $80, $C0, $80, $C0   ; 02 
- D 2 - - - 0x001CA9 00:DC99: 80        .byte $80, $C0, $80, $C0   ; 03 
- D 2 - - - 0x001CAD 00:DC9D: 00        .byte $00, $00, $80, $80   ; 04 
- D 2 - - - 0x001CB1 00:DCA1: 00        .byte $00, $00, $80, $80   ; 05 
- D 2 - - - 0x001CB5 00:DCA5: 00        .byte $00, $40, $00, $40   ; 06 
- D 2 - - - 0x001CB9 00:DCA9: 00        .byte $00, $40, $00, $40   ; 07 
- D 2 - - - 0x001CBD 00:DCAD: 40        .byte $40, $40, $C0, $C0   ; 08 
- D 2 - - - 0x001CC1 00:DCB1: 40        .byte $40, $40, $C0, $C0   ; 09 
- D 2 - - - 0x001CC5 00:DCB5: 00        .byte $00, $40, $00, $40   ; 0A 
- D 2 - - - 0x001CC9 00:DCB9: 00        .byte $00, $40, $00, $40   ; 0B 
- D 2 - - - 0x001CCD 00:DCBD: 00        .byte $00, $00, $00, $00   ; 0C 
- D 2 - - - 0x001CD1 00:DCC1: 00        .byte $00, $00, $00, $00   ; 0D 
- D 2 - - - 0x001CD5 00:DCC5: 00        .byte $00, $40, $00, $40   ; 0E 
- D 2 - - - 0x001CD9 00:DCC9: 00        .byte $00, $40, $00, $40   ; 0F 
- D 2 - - - 0x001CDD 00:DCCD: 40        .byte $40, $40, $40, $40   ; 10 
- D 2 - - - 0x001CE1 00:DCD1: 40        .byte $40, $40, $40, $40   ; 11 
- D 2 - - - 0x001CE5 00:DCD5: 00        .byte $00, $40, $80, $C0   ; 12 
- D 2 - - - 0x001CE9 00:DCD9: 00        .byte $00, $40, $00, $40   ; 13 
- D 2 - - - 0x001CED 00:DCDD: 00        .byte $00, $40, $00, $40   ; 14 
- D 2 - - - 0x001CF1 00:DCE1: 00        .byte $00, $00, $00, $40   ; 15 
- D 2 - - - 0x001CF5 00:DCE5: 00        .byte $00, $00, $00, $40   ; 16 
- D 2 - - - 0x001CF9 00:DCE9: 00        .byte $00, $00, $00, $40   ; 17 
- D 2 - - - 0x001CFD 00:DCED: 00        .byte $00, $00, $00, $40   ; 18 
- D 2 - - - 0x001D01 00:DCF1: 00        .byte $00, $00, $00, $40   ; 19 
- D 2 - - - 0x001D05 00:DCF5: 00        .byte $00, $00, $00, $40   ; 1A 
- D 2 - - - 0x001D09 00:DCF9: 00        .byte $00, $00, $00, $40   ; 1B 
- D 2 - - - 0x001D0D 00:DCFD: 00        .byte $00, $00, $00, $00   ; 1C 
- D 2 - - - 0x001D11 00:DD01: 00        .byte $00, $00, $00, $00   ; 1D 
- D 2 - - - 0x001D15 00:DD05: 00        .byte $00, $40, $00, $40   ; 1E 
- D 2 - - - 0x001D19 00:DD09: 00        .byte $00, $40, $00, $40   ; 1F 
- D 2 - - - 0x001D1D 00:DD0D: 00        .byte $00, $40, $00, $00   ; 20 
- D 2 - - - 0x001D21 00:DD11: 00        .byte $00, $00, $00, $00   ; 21 
- D 2 - - - 0x001D25 00:DD15: 00        .byte $00, $40, $00, $40   ; 22 
- D 2 - - - 0x001D29 00:DD19: 40        .byte $40, $40, $40, $40   ; 23 
- D 2 - - - 0x001D2D 00:DD1D: 00        .byte $00, $00, $00, $00   ; 24 
- D 2 - - - 0x001D31 00:DD21: 00        .byte $00, $00, $00, $00   ; 25 
- D 2 - - - 0x001D35 00:DD25: 00        .byte $00, $00, $00, $00   ; 26 
- D 2 - - - 0x001D39 00:DD29: 00        .byte $00, $00, $00, $00   ; 27 
- D 2 - - - 0x001D3D 00:DD2D: 00        .byte $00, $00, $00, $00   ; 28 
- D 2 - - - 0x001D41 00:DD31: 00        .byte $00, $00, $00, $00   ; 29 
- D 2 - - - 0x001D45 00:DD35: 00        .byte $00, $00, $00, $00   ; 2A 
- D 2 - - - 0x001D49 00:DD39: 00        .byte $00, $00, $00, $00   ; 2B 
- D 2 - - - 0x001D4D 00:DD3D: 00        .byte $00, $00, $00, $00   ; 2C 
- D 2 - - - 0x001D51 00:DD41: 00        .byte $00, $00, $00, $00   ; 2D 
- D 2 - - - 0x001D55 00:DD45: 00        .byte $00, $00, $00, $00   ; 2E 
- D 2 - - - 0x001D59 00:DD49: 00        .byte $00, $00, $00, $00   ; 2F 
- D 2 - - - 0x001D5D 00:DD4D: 00        .byte $00, $00, $00, $00   ; 30 
- D 2 - - - 0x001D61 00:DD51: 00        .byte $00, $00, $00, $00   ; 31 
- D 2 - - - 0x001D65 00:DD55: 00        .byte $00, $00, $00, $00   ; 32 
- D 2 - - - 0x001D69 00:DD59: 00        .byte $00, $00, $00, $00   ; 33 
- D 2 - - - 0x001D6D 00:DD5D: 00        .byte $00, $00, $00, $00   ; 34 
- D 2 - - - 0x001D71 00:DD61: 00        .byte $00, $00, $00, $00   ; 35 
- D 2 - - - 0x001D75 00:DD65: 00        .byte $00, $00, $00, $00   ; 36 
- D 2 - - - 0x001D79 00:DD69: 00        .byte $00, $00, $00, $00   ; 37 
- D 2 - - - 0x001D7D 00:DD6D: 00        .byte $00, $00, $00, $00   ; 38 
- D 2 - - - 0x001D81 00:DD71: 40        .byte $40, $40, $00, $40   ; 39 
- D 2 - - - 0x001D85 00:DD75: 80        .byte $80, $00, $80, $80   ; 3A 
- D 2 - - - 0x001D89 00:DD79: 00        .byte $00, $C0, $C0, $C0   ; 3B 
- D 2 - - - 0x001D8D 00:DD7D: 00        .byte $00, $00, $00, $00   ; 3C 
- D 2 - - - 0x001D91 00:DD81: 40        .byte $40, $00, $00, $00   ; 3D 
- D 2 - - - 0x001D95 00:DD85: 80        .byte $80, $80, $80, $80   ; 3E 
- D 2 - - - 0x001D99 00:DD89: 80        .byte $80, $80, $C0, $80   ; 3F 



tbl_DD8D_spr_A:
- D 2 - - - 0x001D9D 00:DD8D: 00        .byte $00   ; 00 
- D 2 - - - 0x001D9E 00:DD8E: 00        .byte $00   ; 01 
- D 2 - - - 0x001D9F 00:DD8F: 00        .byte $00   ; 02 
- D 2 - - - 0x001DA0 00:DD90: 00        .byte $00   ; 03 
- D 2 - - - 0x001DA1 00:DD91: 80        .byte $80   ; 04 
- D 2 - - - 0x001DA2 00:DD92: 00        .byte $00   ; 05 
- D 2 - - - 0x001DA3 00:DD93: 80        .byte $80   ; 06 
- D 2 - - - 0x001DA4 00:DD94: 00        .byte $00   ; 07 
- D 2 - - - 0x001DA5 00:DD95: 00        .byte $00   ; 08 
- D 2 - - - 0x001DA6 00:DD96: 00        .byte $00   ; 09 
- D 2 - - - 0x001DA7 00:DD97: 00        .byte $00   ; 0A 
- D 2 - - - 0x001DA8 00:DD98: 00        .byte $00   ; 0B 
- D 2 - - - 0x001DA9 00:DD99: 00        .byte $00   ; 0C 
- D 2 - - - 0x001DAA 00:DD9A: 00        .byte $00   ; 0D 
- D 2 - - - 0x001DAB 00:DD9B: 00        .byte $00   ; 0E 
- D 2 - - - 0x001DAC 00:DD9C: 00        .byte $00   ; 0F 
- D 2 - - - 0x001DAD 00:DD9D: 00        .byte $00   ; 10 
- D 2 - - - 0x001DAE 00:DD9E: 00        .byte $00   ; 11 
- D 2 - - - 0x001DAF 00:DD9F: 00        .byte $00   ; 12 
- D 2 - - - 0x001DB0 00:DDA0: 00        .byte $00   ; 13 
- D 2 - - - 0x001DB1 00:DDA1: 00        .byte $00   ; 14 
- D 2 - - - 0x001DB2 00:DDA2: 00        .byte $00   ; 15 
- D 2 - - - 0x001DB3 00:DDA3: 00        .byte $00   ; 16 
- D 2 - - - 0x001DB4 00:DDA4: 00        .byte $00   ; 17 
- D 2 - - - 0x001DB5 00:DDA5: 00        .byte $00   ; 18 
- D 2 - - - 0x001DB6 00:DDA6: 40        .byte $40   ; 19 
- D 2 - - - 0x001DB7 00:DDA7: 00        .byte $00   ; 1A 
- D 2 - - - 0x001DB8 00:DDA8: 00        .byte $00   ; 1B 
- D 2 - - - 0x001DB9 00:DDA9: 00        .byte $00   ; 1C 
- D 2 - - - 0x001DBA 00:DDAA: 00        .byte $00   ; 1D 
- D 2 - - - 0x001DBB 00:DDAB: 00        .byte $00   ; 1E 
- D 2 - - - 0x001DBC 00:DDAC: 00        .byte $00   ; 1F 
- D 2 - - - 0x001DBD 00:DDAD: 00        .byte $00   ; 20 
- D 2 - - - 0x001DBE 00:DDAE: 00        .byte $00   ; 21 
- D 2 - - - 0x001DBF 00:DDAF: 00        .byte $00   ; 22 
- D 2 - - - 0x001DC0 00:DDB0: 00        .byte $00   ; 23 
- D 2 - - - 0x001DC1 00:DDB1: 00        .byte $00   ; 24 
- D 2 - - - 0x001DC2 00:DDB2: 00        .byte $00   ; 25 
- D 2 - - - 0x001DC3 00:DDB3: 00        .byte $00   ; 26 
- D 2 - - - 0x001DC4 00:DDB4: 00        .byte $00   ; 27 
- D 2 - - - 0x001DC5 00:DDB5: 00        .byte $00   ; 28 
- D 2 - - - 0x001DC6 00:DDB6: 00        .byte $00   ; 29 
- D 2 - - - 0x001DC7 00:DDB7: 00        .byte $00   ; 2A 
- D 2 - - - 0x001DC8 00:DDB8: 00        .byte $00   ; 2B 
- D 2 - - - 0x001DC9 00:DDB9: 00        .byte $00   ; 2C 
- D 2 - - - 0x001DCA 00:DDBA: 00        .byte $00   ; 2D 
- D 2 - - - 0x001DCB 00:DDBB: 00        .byte $00   ; 2E 
- D 2 - - - 0x001DCC 00:DDBC: 00        .byte $00   ; 2F 
- D 2 - - - 0x001DCD 00:DDBD: 00        .byte $00   ; 30 
- D 2 - - - 0x001DCE 00:DDBE: 00        .byte $00   ; 31 
- D 2 - - - 0x001DCF 00:DDBF: 00        .byte $00   ; 32 
- D 2 - - - 0x001DD0 00:DDC0: 00        .byte $00   ; 33 



tbl_DDC1_spr_pos:
; Y, X
- D 2 - - - 0x001DD1 00:DDC1: 03        .byte $03, $F4   ; 00 
- D 2 - - - 0x001DD3 00:DDC3: 03        .byte $03, $FC   ; 02 
- D 2 - - - 0x001DD5 00:DDC5: 0B        .byte $0B, $F4   ; 04 
- D 2 - - - 0x001DD7 00:DDC7: 0B        .byte $0B, $FC   ; 06 



sub_DDC9:
C - - - - - 0x001DD9 00:DDC9: A5 4B     LDA ram_frame_cnt
C - - - - - 0x001DDB 00:DDCB: 29 0F     AND #$0F
C - - - - - 0x001DDD 00:DDCD: F0 01     BEQ bra_DDD0
C - - - - - 0x001DDF 00:DDCF: 60        RTS
bra_DDD0:
; each 16 frames
C - - - - - 0x001DE0 00:DDD0: AA        TAX
bra_DDD1_loop:
C - - - - - 0x001DE1 00:DDD1: B5 6C     LDA ram_power_pellet_tile_p1,X
C - - - - - 0x001DE3 00:DDD3: C9 07     CMP #con_tile + $07
C - - - - - 0x001DE5 00:DDD5: F0 0A     BEQ bra_DDE1
C - - - - - 0x001DE7 00:DDD7: C9 01     CMP #con_tile + $01
C - - - - - 0x001DE9 00:DDD9: D0 04     BNE bra_DDDF
C - - - - - 0x001DEB 00:DDDB: A9 02     LDA #con_tile + $02
C - - - - - 0x001DED 00:DDDD: D0 02     BNE bra_DDE1    ; jmp
bra_DDDF:
C - - - - - 0x001DEF 00:DDDF: A9 01     LDA #con_tile + $01
bra_DDE1:
C - - - - - 0x001DF1 00:DDE1: 95 6C     STA ram_power_pellet_tile_p1,X
C - - - - - 0x001DF3 00:DDE3: E8        INX
C - - - - - 0x001DF4 00:DDE4: E0 04     CPX #$04
C - - - - - 0x001DF6 00:DDE6: D0 E9     BNE bra_DDD1_loop
C - - - - - 0x001DF8 00:DDE8: 60        RTS



sub_DDE9_write_buffer_to_ppu:
C - - - - - 0x001DF9 00:DDE9: A5 48     LDA ram_flag_demo
C - - - - - 0x001DFB 00:DDEB: F0 03     BEQ bra_DDF0
C - - - - - 0x001DFD 00:DDED: 4C 7E DE  JMP loc_DE7E
bra_DDF0:
; score buffer
C - - - - - 0x001E00 00:DDF0: AD 3F 02  LDA ram_ppu_buffer_score
C - - - - - 0x001E03 00:DDF3: C9 FF     CMP #$FF
C - - - - - 0x001E05 00:DDF5: F0 53     BEQ bra_DE4A    ; skip if buffer is empty
C - - - - - 0x001E07 00:DDF7: AD 02 20  LDA $2002
C - - - - - 0x001E0A 00:DDFA: AD 6B 02  LDA ram_ppu_buf_score_hi
C - - - - - 0x001E0D 00:DDFD: 8D 06 20  STA $2006
C - - - - - 0x001E10 00:DE00: AD 6C 02  LDA ram_ppu_buf_score_lo
C - - - - - 0x001E13 00:DE03: 8D 06 20  STA $2006
C - - - - - 0x001E16 00:DE06: A0 00     LDY #$00
bra_DE08_loop:
C - - - - - 0x001E18 00:DE08: B9 3F 02  LDA ram_ppu_buffer_score,Y
C - - - - - 0x001E1B 00:DE0B: 8D 07 20  STA $2007
C - - - - - 0x001E1E 00:DE0E: C8        INY
C - - - - - 0x001E1F 00:DE0F: C0 06     CPY #$06
C - - - - - 0x001E21 00:DE11: D0 F5     BNE bra_DE08_loop
C - - - - - 0x001E23 00:DE13: A9 30     LDA #con_tile + $30
C - - - - - 0x001E25 00:DE15: 8D 07 20  STA $2007
C - - - - - 0x001E28 00:DE18: A9 FF     LDA #$FF
C - - - - - 0x001E2A 00:DE1A: 8D 3F 02  STA ram_ppu_buffer_score
; hiscore buffer
C - - - - - 0x001E2D 00:DE1D: AD 45 02  LDA ram_ppu_buffer_hiscore
C - - - - - 0x001E30 00:DE20: C9 FF     CMP #$FF
C - - - - - 0x001E32 00:DE22: F0 26     BEQ bra_DE4A    ; skip if buffer is empty
C - - - - - 0x001E34 00:DE24: AD 02 20  LDA $2002
C - - - - - 0x001E37 00:DE27: AD 72 02  LDA ram_ppu_buf_hiscore_hi
C - - - - - 0x001E3A 00:DE2A: 8D 06 20  STA $2006
C - - - - - 0x001E3D 00:DE2D: AD 73 02  LDA ram_ppu_buf_hiscore_lo
C - - - - - 0x001E40 00:DE30: 8D 06 20  STA $2006
C - - - - - 0x001E43 00:DE33: A0 00     LDY #$00
bra_DE35_loop:
C - - - - - 0x001E45 00:DE35: B9 45 02  LDA ram_ppu_buffer_hiscore,Y
C - - - - - 0x001E48 00:DE38: 8D 07 20  STA $2007
C - - - - - 0x001E4B 00:DE3B: C8        INY
C - - - - - 0x001E4C 00:DE3C: C0 06     CPY #$06
C - - - - - 0x001E4E 00:DE3E: D0 F5     BNE bra_DE35_loop
C - - - - - 0x001E50 00:DE40: A9 30     LDA #con_tile + $30
C - - - - - 0x001E52 00:DE42: 8D 07 20  STA $2007
C - - - - - 0x001E55 00:DE45: A9 FF     LDA #$FF
C - - - - - 0x001E57 00:DE47: 8D 45 02  STA ram_ppu_buffer_hiscore
bra_DE4A:
C - - - - - 0x001E5A 00:DE4A: A5 4B     LDA ram_frame_cnt
C - - - - - 0x001E5C 00:DE4C: 29 07     AND #$07
C - - - - - 0x001E5E 00:DE4E: D0 2E     BNE bra_DE7E
C - - - - - 0x001E60 00:DE50: AD 02 20  LDA $2002
C - - - - - 0x001E63 00:DE53: AD 6D 02  LDA ram_ppu_buffer_1up
C - - - - - 0x001E66 00:DE56: 8D 06 20  STA $2006
C - - - - - 0x001E69 00:DE59: AD 6E 02  LDA ram_ppu_buffer_1up + $01
C - - - - - 0x001E6C 00:DE5C: 8D 06 20  STA $2006
C - - - - - 0x001E6F 00:DE5F: A2 00     LDX #$00
C - - - - - 0x001E71 00:DE61: A5 4B     LDA ram_frame_cnt
C - - - - - 0x001E73 00:DE63: 29 18     AND #$18
C - - - - - 0x001E75 00:DE65: F0 0D     BEQ bra_DE74
bra_DE67_loop:
C - - - - - 0x001E77 00:DE67: BD 6F 02  LDA ram_ppu_buffer_1up + $02,X
C - - - - - 0x001E7A 00:DE6A: 8D 07 20  STA $2007
C - - - - - 0x001E7D 00:DE6D: E8        INX
C - - - - - 0x001E7E 00:DE6E: E0 03     CPX #$03
C - - - - - 0x001E80 00:DE70: D0 F5     BNE bra_DE67_loop
C - - - - - 0x001E82 00:DE72: F0 0A     BEQ bra_DE7E    ; jmp
bra_DE74:
C - - - - - 0x001E84 00:DE74: A9 20     LDA #con_tile + $20
bra_DE76_loop:
C - - - - - 0x001E86 00:DE76: 8D 07 20  STA $2007
C - - - - - 0x001E89 00:DE79: E8        INX
C - - - - - 0x001E8A 00:DE7A: E0 03     CPX #$03
C - - - - - 0x001E8C 00:DE7C: D0 F8     BNE bra_DE76_loop
bra_DE7E:
loc_DE7E:
C D 2 - - - 0x001E8E 00:DE7E: A0 00     LDY #$00
C - - - - - 0x001E90 00:DE80: A2 00     LDX #$00
C - - - - - 0x001E92 00:DE82: A5 46     LDA ram_current_player
C - - - - - 0x001E94 00:DE84: 25 47     AND ram_game_mode
C - - - - - 0x001E96 00:DE86: F0 02     BEQ bra_DE8A
C - - - - - 0x001E98 00:DE88: A0 08     LDY #$08
bra_DE8A:
bra_DE8A_loop:
C - - - - - 0x001E9A 00:DE8A: AD 02 20  LDA $2002
C - - - - - 0x001E9D 00:DE8D: B9 CF DE  LDA tbl_DECF,Y
C - - - - - 0x001EA0 00:DE90: 8D 06 20  STA $2006
C - - - - - 0x001EA3 00:DE93: B9 D0 DE  LDA tbl_DECF + $01,Y
C - - - - - 0x001EA6 00:DE96: 8D 06 20  STA $2006
C - - - - - 0x001EA9 00:DE99: B5 6C     LDA ram_power_pellet_tile_p1,X
C - - - - - 0x001EAB 00:DE9B: 8D 07 20  STA $2007
C - - - - - 0x001EAE 00:DE9E: C8        INY
C - - - - - 0x001EAF 00:DE9F: C8        INY
C - - - - - 0x001EB0 00:DEA0: E8        INX
C - - - - - 0x001EB1 00:DEA1: E0 04     CPX #$04
C - - - - - 0x001EB3 00:DEA3: D0 E5     BNE bra_DE8A_loop
C - - - - - 0x001EB5 00:DEA5: AD 02 20  LDA $2002
C - - - - - 0x001EB8 00:DEA8: A0 FF     LDY #$FF
bra_DEAA_loop:
C - - - - - 0x001EBA 00:DEAA: C8        INY
C - - - - - 0x001EBB 00:DEAB: B9 4B 02  LDA ram_ppu_buffer_main,Y
C - - - - - 0x001EBE 00:DEAE: C9 FF     CMP #$FF
C - - - - - 0x001EC0 00:DEB0: F0 19     BEQ bra_DECB    ; skip if buffer is empty
C - - - - - 0x001EC2 00:DEB2: 8D 06 20  STA $2006
C - - - - - 0x001EC5 00:DEB5: C8        INY
C - - - - - 0x001EC6 00:DEB6: B9 4B 02  LDA ram_ppu_buffer_main,Y
C - - - - - 0x001EC9 00:DEB9: 8D 06 20  STA $2006
bra_DEBC_loop:
C - - - - - 0x001ECC 00:DEBC: C8        INY
C - - - - - 0x001ECD 00:DEBD: B9 4B 02  LDA ram_ppu_buffer_main,Y
C - - - - - 0x001ED0 00:DEC0: F0 E8     BEQ bra_DEAA_loop
C - - - - - 0x001ED2 00:DEC2: C9 FF     CMP #$FF
C - - - - - 0x001ED4 00:DEC4: F0 05     BEQ bra_DECB    ; skip if there isn't anything else in the buffer
C - - - - - 0x001ED6 00:DEC6: 8D 07 20  STA $2007
C - - - - - 0x001ED9 00:DEC9: D0 F1     BNE bra_DEBC_loop   ; jmp
bra_DECB:
C - - - - - 0x001EDB 00:DECB: 8D 4B 02  STA ram_ppu_buffer_main
C - - - - - 0x001EDE 00:DECE: 60        RTS



tbl_DECF:
- D 2 - - - 0x001EDF 00:DECF: 20 B4     .dbyt $20B4 ; 00 
- D 2 - - - 0x001EE1 00:DED1: 20 A2     .dbyt $20A2 ; 02 
- D 2 - - - 0x001EE3 00:DED3: 22 D4     .dbyt $22D4 ; 04 
- D 2 - - - 0x001EE5 00:DED5: 22 C2     .dbyt $22C2 ; 06 
- D 2 - - - 0x001EE7 00:DED7: 28 B4     .dbyt $28B4 ; 08 
- D 2 - - - 0x001EE9 00:DED9: 28 A2     .dbyt $28A2 ; 0A 
- D 2 - - - 0x001EEB 00:DEDB: 2A D4     .dbyt $2AD4 ; 0C 
- D 2 - - - 0x001EED 00:DEDD: 2A C2     .dbyt $2AC2 ; 0E 



sub_DEDF_check_for_eating_pellets:
C - - - - - 0x001EEF 00:DEDF: A2 00     LDX #$00
C - - - - - 0x001EF1 00:DEE1: AD 2A 02  LDA ram_obj_ppu_tile_now
C - - - - - 0x001EF4 00:DEE4: C9 09     CMP #con_tile + $09
C - - - - - 0x001EF6 00:DEE6: F0 36     BEQ bra_DF1E    ; if normal pellet (rare)
C - - - - - 0x001EF8 00:DEE8: E8        INX
C - - - - - 0x001EF9 00:DEE9: E8        INX
C - - - - - 0x001EFA 00:DEEA: C9 03     CMP #con_tile + $03
C - - - - - 0x001EFC 00:DEEC: F0 30     BEQ bra_DF1E    ; if normal pellet
C - - - - - 0x001EFE 00:DEEE: C9 01     CMP #con_tile + $01
C - - - - - 0x001F00 00:DEF0: F0 05     BEQ bra_DEF7    ; if power pellet (visible)
C - - - - - 0x001F02 00:DEF2: C9 02     CMP #con_tile + $02
C - - - - - 0x001F04 00:DEF4: F0 01     BEQ bra_DEF7    ; if power pellet (not visible)
C - - - - - 0x001F06 00:DEF6: 60        RTS
bra_DEF7:
C - - - - - 0x001F07 00:DEF7: 20 C6 DF  JSR sub_DFC6
C - - - - - 0x001F0A 00:DEFA: A5 1A     LDA ram_obj_pos_X_hi
C - - - - - 0x001F0C 00:DEFC: 85 02     STA ram_0002
C - - - - - 0x001F0E 00:DEFE: A5 1C     LDA ram_obj_pos_Y_hi
C - - - - - 0x001F10 00:DF00: 85 03     STA ram_0003
C - - - - - 0x001F12 00:DF02: 20 DD E1  JSR sub_E1DD_convert_position_to_ppu
C - - - - - 0x001F15 00:DF05: A2 00     LDX #$00
C - - - - - 0x001F17 00:DF07: A5 03     LDA ram_0003
C - - - - - 0x001F19 00:DF09: 29 07     AND #$07
C - - - - - 0x001F1B 00:DF0B: F0 02     BEQ bra_DF0F
C - - - - - 0x001F1D 00:DF0D: E8        INX
C - - - - - 0x001F1E 00:DF0E: E8        INX
bra_DF0F:
C - - - - - 0x001F1F 00:DF0F: A5 02     LDA ram_0002    ; ppu_pos_lo
C - - - - - 0x001F21 00:DF11: 29 0F     AND #$0F
C - - - - - 0x001F23 00:DF13: C9 04     CMP #$04
C - - - - - 0x001F25 00:DF15: F0 01     BEQ bra_DF18
C - - - - - 0x001F27 00:DF17: E8        INX
bra_DF18:
C - - - - - 0x001F28 00:DF18: A9 07     LDA #con_tile + $07
C - - - - - 0x001F2A 00:DF1A: 95 6C     STA ram_power_pellet_tile_p1,X
C - - - - - 0x001F2C 00:DF1C: A2 04     LDX #$04
bra_DF1E:
C - - - - - 0x001F2E 00:DF1E: A9 00     LDA #$00
C - - - - - 0x001F30 00:DF20: 85 D5     STA ram_00D5
C - - - - - 0x001F32 00:DF22: 85 D6     STA ram_00D6
C - - - - - 0x001F34 00:DF24: A5 1A     LDA ram_obj_pos_X_hi
C - - - - - 0x001F36 00:DF26: 85 02     STA ram_0002
C - - - - - 0x001F38 00:DF28: A5 1C     LDA ram_obj_pos_Y_hi
C - - - - - 0x001F3A 00:DF2A: 85 03     STA ram_0003
C - - - - - 0x001F3C 00:DF2C: 20 DD E1  JSR sub_E1DD_convert_position_to_ppu
C - - - - - 0x001F3F 00:DF2F: A0 FF     LDY #$FF
bra_DF31_loop:
C - - - - - 0x001F41 00:DF31: C8        INY
C - - - - - 0x001F42 00:DF32: B9 4B 02  LDA ram_ppu_buffer_main,Y
C - - - - - 0x001F45 00:DF35: C9 FF     CMP #$FF
C - - - - - 0x001F47 00:DF37: D0 F8     BNE bra_DF31_loop
C - - - - - 0x001F49 00:DF39: 98        TYA
C - - - - - 0x001F4A 00:DF3A: F0 06     BEQ bra_DF42
C - - - - - 0x001F4C 00:DF3C: A9 00     LDA #$00
C - - - - - 0x001F4E 00:DF3E: 99 4B 02  STA ram_ppu_buffer_main,Y
C - - - - - 0x001F51 00:DF41: C8        INY
bra_DF42:
C - - - - - 0x001F52 00:DF42: A5 03     LDA ram_0003    ; ppu_pos_hi
C - - - - - 0x001F54 00:DF44: 99 4B 02  STA ram_ppu_buffer_main,Y
C - - - - - 0x001F57 00:DF47: C8        INY
C - - - - - 0x001F58 00:DF48: A5 02     LDA ram_0002    ; ppu_pos_lo
C - - - - - 0x001F5A 00:DF4A: 99 4B 02  STA ram_ppu_buffer_main,Y
C - - - - - 0x001F5D 00:DF4D: C8        INY
C - - - - - 0x001F5E 00:DF4E: BD A6 DF  LDA tbl_DFA6_tile,X
C - - - - - 0x001F61 00:DF51: 99 4B 02  STA ram_ppu_buffer_main,Y
C - - - - - 0x001F64 00:DF54: C8        INY
C - - - - - 0x001F65 00:DF55: A9 FF     LDA #$FF
C - - - - - 0x001F67 00:DF57: 99 4B 02  STA ram_ppu_buffer_main,Y
C - - - - - 0x001F6A 00:DF5A: A9 07     LDA #con_tile + $07
C - - - - - 0x001F6C 00:DF5C: 8D 2A 02  STA ram_obj_ppu_tile_now
C - - - - - 0x001F6F 00:DF5F: BD A7 DF  LDA tbl_DFA6_points + $01,X
C - - - - - 0x001F72 00:DF62: 85 DC     STA ram_00DC
C - - - - - 0x001F74 00:DF64: C6 6A     DEC ram_pellet_cnt_p1
C - - - - - 0x001F76 00:DF66: D0 0C     BNE bra_DF74
C - - - - - 0x001F78 00:DF68: A9 0C     LDA #con_script_stage_clear
C - - - - - 0x001F7A 00:DF6A: 85 3F     STA ram_script
C - - - - - 0x001F7C 00:DF6C: A9 00     LDA #$00
C - - - - - 0x001F7E 00:DF6E: 85 87     STA ram_0087
C - - - - - 0x001F80 00:DF70: A9 48     LDA #$48    ; pause timer
C - - - - - 0x001F82 00:DF72: 85 4C     STA ram_004C
bra_DF74:
C - - - - - 0x001F84 00:DF74: A5 6A     LDA ram_pellet_cnt_p1
C - - - - - 0x001F86 00:DF76: C9 37     CMP #$37
C - - - - - 0x001F88 00:DF78: F0 04     BEQ bra_DF7E_spawn_fruit
C - - - - - 0x001F8A 00:DF7A: C9 86     CMP #$86
C - - - - - 0x001F8C 00:DF7C: D0 1B     BNE bra_DF99_skip_fruit_spawn
bra_DF7E_spawn_fruit:
C - - - - - 0x001F8E 00:DF7E: A9 0A     LDA #$0A
C - - - - - 0x001F90 00:DF80: 85 D7     STA ram_fruit_timer_hi
C - - - - - 0x001F92 00:DF82: A9 3C     LDA #$3C
C - - - - - 0x001F94 00:DF84: 85 D8     STA ram_fruit_timer_lo
C - - - - - 0x001F96 00:DF86: A4 93     LDY ram_0093
C - - - - - 0x001F98 00:DF88: B9 BE DF  LDA tbl_DFBE_fruit_id,Y
C - - - - - 0x001F9B 00:DF8B: 85 37     STA ram_animation + $05
C - - - - - 0x001F9D 00:DF8D: A9 03     LDA #$03
C - - - - - 0x001F9F 00:DF8F: 85 3D     STA ram_spr_pal + $05
C - - - - - 0x001FA1 00:DF91: A9 60     LDA #$60
C - - - - - 0x001FA3 00:DF93: 85 2E     STA ram_obj_pos_X_hi + $14
C - - - - - 0x001FA5 00:DF95: A9 80     LDA #$80
C - - - - - 0x001FA7 00:DF97: 85 30     STA ram_obj_pos_Y_hi + $14
bra_DF99_skip_fruit_spawn:
C - - - - - 0x001FA9 00:DF99: A5 6A     LDA ram_pellet_cnt_p1
C - - - - - 0x001FAB 00:DF9B: 29 01     AND #$01
C - - - - - 0x001FAD 00:DF9D: A8        TAY
C - - - - - 0x001FAE 00:DF9E: A9 01     LDA #$01
C - - - - - 0x001FB0 00:DFA0: 99 04 06  STA ram_sfx_eat_pellet,Y  ; 0604 0605
C - - - - - 0x001FB3 00:DFA3: 4C 60 E0  JMP loc_E060



tbl_DFA6_tile:
tbl_DFA6_points:
- D 2 - - - 0x001FB6 00:DFA6: 08        .byte con_tile + $08, $01   ; 00 normal pellet (rare)
- D 2 - - - 0x001FB8 00:DFA8: 07        .byte con_tile + $07, $01   ; 02 normal pellet
- D 2 - - - 0x001FBA 00:DFAA: 07        .byte con_tile + $07, $05   ; 04 power pellet


; bzk garbage
- - - - - - 0x001FBC 00:DFAC: A2 00     LDX #$00
bra_DFAE_loop:
- - - - - - 0x001FBE 00:DFAE: B5 BA     LDA ram_00BA,X
- - - - - - 0x001FC0 00:DFB0: D0 05     BNE bra_DFB7
- - - - - - 0x001FC2 00:DFB2: A9 02     LDA #$02
- - - - - - 0x001FC4 00:DFB4: 95 BA     STA ram_00BA,X
- - - - - - 0x001FC6 00:DFB6: 60        RTS
bra_DFB7:
- - - - - - 0x001FC7 00:DFB7: E8        INX
- - - - - - 0x001FC8 00:DFB8: E8        INX
- - - - - - 0x001FC9 00:DFB9: E0 06     CPX #$06
- - - - - - 0x001FCB 00:DFBB: D0 F1     BNE bra_DFAE_loop
- - - - - - 0x001FCD 00:DFBD: 60        RTS



tbl_DFBE_fruit_id:
; bzk optimize, 24 + Y instead of this table
- D 2 - - - 0x001FCE 00:DFBE: 24        .byte $24   ; 00 
- D 2 - - - 0x001FCF 00:DFBF: 25        .byte $25   ; 01 
- D 2 - - - 0x001FD0 00:DFC0: 26        .byte $26   ; 02 
- D 2 - - - 0x001FD1 00:DFC1: 27        .byte $27   ; 03 
- D 2 - - - 0x001FD2 00:DFC2: 28        .byte $28   ; 04 
- D 2 - - - 0x001FD3 00:DFC3: 29        .byte $29   ; 05 
- D 2 - - - 0x001FD4 00:DFC4: 2A        .byte $2A   ; 06 
- D 2 - - - 0x001FD5 00:DFC5: 2B        .byte $2B   ; 07 



sub_DFC6:
C - - - - - 0x001FD6 00:DFC6: A5 8C     LDA ram_008C
C - - - - - 0x001FD8 00:DFC8: D0 06     BNE bra_DFD0
C - - - - - 0x001FDA 00:DFCA: A9 1E     LDA #$1E
C - - - - - 0x001FDC 00:DFCC: 85 8A     STA ram_008A
C - - - - - 0x001FDE 00:DFCE: A9 00     LDA #$00
bra_DFD0:
C - - - - - 0x001FE0 00:DFD0: 85 89     STA ram_0089
C - - - - - 0x001FE2 00:DFD2: A9 0F     LDA #$0F
C - - - - - 0x001FE4 00:DFD4: 85 88     STA ram_0088
C - - - - - 0x001FE6 00:DFD6: A2 03     LDX #$03
bra_DFD8_loop:
C - - - - - 0x001FE8 00:DFD8: B5 39     LDA ram_spr_pal + $01,X
C - - - - - 0x001FEA 00:DFDA: 29 FC     AND #$FC
C - - - - - 0x001FEC 00:DFDC: 09 01     ORA #$01
C - - - - - 0x001FEE 00:DFDE: 95 39     STA ram_spr_pal + $01,X
C - - - - - 0x001FF0 00:DFE0: CA        DEX
C - - - - - 0x001FF1 00:DFE1: 10 F5     BPL bra_DFD8_loop
C - - - - - 0x001FF3 00:DFE3: A0 FF     LDY #$FF
bra_DFE5_loop:
C - - - - - 0x001FF5 00:DFE5: C8        INY
C - - - - - 0x001FF6 00:DFE6: B9 4B 02  LDA ram_ppu_buffer_main,Y
C - - - - - 0x001FF9 00:DFE9: C9 FF     CMP #$FF
C - - - - - 0x001FFB 00:DFEB: D0 F8     BNE bra_DFE5_loop
C - - - - - 0x001FFD 00:DFED: A2 00     LDX #$00
C - - - - - 0x001FFF 00:DFEF: 98        TYA
C - - - - - 0x002000 00:DFF0: D0 01     BNE bra_DFF3
C - - - - - 0x002002 00:DFF2: E8        INX
bra_DFF3:
bra_DFF3_loop:
C - - - - - 0x002003 00:DFF3: BD 5B E0  LDA tbl_E05B,X
C - - - - - 0x002006 00:DFF6: 99 4B 02  STA ram_ppu_buffer_main,Y
C - - - - - 0x002009 00:DFF9: C8        INY
C - - - - - 0x00200A 00:DFFA: E8        INX
C - - - - - 0x00200B 00:DFFB: C9 FF     CMP #$FF
C - - - - - 0x00200D 00:DFFD: D0 F4     BNE bra_DFF3_loop
C - - - - - 0x00200F 00:DFFF: A9 00     LDA #$00
C - - - - - 0x002011 00:E001: 85 D9     STA ram_kill_cnt
sub_E003:
C - - - - - 0x002013 00:E003: A2 00     LDX #$00
C - - - - - 0x002015 00:E005: A9 2F     LDA #< (ram_obj_ppu_tile + $05)
C - - - - - 0x002017 00:E007: 85 00     STA ram_0000
C - - - - - 0x002019 00:E009: A9 02     LDA #> (ram_obj_ppu_tile + $05)
C - - - - - 0x00201B 00:E00B: 85 01     STA ram_0001
C - - - - - 0x00201D 00:E00D: A9 1E     LDA #< (ram_obj_pos_X_hi + $04)
C - - - - - 0x00201F 00:E00F: 85 02     STA ram_0002
C - - - - - 0x002021 00:E011: A9 00     LDA #> (ram_obj_pos_X_hi + $04)
C - - - - - 0x002023 00:E013: 85 03     STA ram_0003
C - - - - - 0x002025 00:E015: A9 0F     LDA #$0F
C - - - - - 0x002027 00:E017: C5 88     CMP ram_0088
C - - - - - 0x002029 00:E019: F0 04     BEQ bra_E01F
C - - - - - 0x00202B 00:E01B: A5 D2     LDA ram_00D2
C - - - - - 0x00202D 00:E01D: D0 27     BNE bra_E046
bra_E01F:
bra_E01F_loop:
C - - - - - 0x00202F 00:E01F: B5 B8     LDA ram_00B8,X
C - - - - - 0x002031 00:E021: C9 04     CMP #$04
C - - - - - 0x002033 00:E023: D0 21     BNE bra_E046
C - - - - - 0x002035 00:E025: B5 B9     LDA ram_00B9,X
C - - - - - 0x002037 00:E027: 18        CLC
C - - - - - 0x002038 00:E028: 69 02     ADC #$02
C - - - - - 0x00203A 00:E02A: 29 03     AND #$03
C - - - - - 0x00203C 00:E02C: 85 04     STA ram_0004
C - - - - - 0x00203E 00:E02E: A0 00     LDY #$00
C - - - - - 0x002040 00:E030: B1 02     LDA (ram_0002),Y    ; 001E 0022 0026 002A
C - - - - - 0x002042 00:E032: A0 02     LDY #$02
C - - - - - 0x002044 00:E034: 11 02     ORA (ram_0002),Y    ; 0020 0024 0028 002C
C - - - - - 0x002046 00:E036: 29 07     AND #$07
C - - - - - 0x002048 00:E038: D0 08     BNE bra_E042
C - - - - - 0x00204A 00:E03A: A4 04     LDY ram_0004
C - - - - - 0x00204C 00:E03C: B1 00     LDA (ram_0000),Y    ; 022F 0230 0231 0232 0233 0234 0235 0236 0237 0238 0239 023A 023B 023C 023D 023E
C - - - - - 0x00204E 00:E03E: 29 F8     AND #$F8
C - - - - - 0x002050 00:E040: D0 04     BNE bra_E046
bra_E042:
C - - - - - 0x002052 00:E042: A5 04     LDA ram_0004
C - - - - - 0x002054 00:E044: 95 B9     STA ram_00B9,X
bra_E046:
C - - - - - 0x002056 00:E046: A5 00     LDA ram_0000
C - - - - - 0x002058 00:E048: 18        CLC
C - - - - - 0x002059 00:E049: 69 04     ADC #$04
C - - - - - 0x00205B 00:E04B: 85 00     STA ram_0000
C - - - - - 0x00205D 00:E04D: A5 02     LDA ram_0002
C - - - - - 0x00205F 00:E04F: 18        CLC
C - - - - - 0x002060 00:E050: 69 04     ADC #$04
C - - - - - 0x002062 00:E052: 85 02     STA ram_0002
C - - - - - 0x002064 00:E054: E8        INX
C - - - - - 0x002065 00:E055: E8        INX
C - - - - - 0x002066 00:E056: E0 08     CPX #$08
C - - - - - 0x002068 00:E058: D0 C5     BNE bra_E01F_loop
C - - - - - 0x00206A 00:E05A: 60        RTS



tbl_E05B:
- D 3 - - - 0x00206B 00:E05B: 00        .byte $00   ; 
- D 3 - - - 0x00206C 00:E05C: 3F 15     .dbyt $3F15 ; 
- D 3 - - - 0x00206E 00:E05E: 11        .byte $11   ; 
- D 3 - - - 0x00206F 00:E05F: FF        .byte $FF   ; end token



loc_E060:
C D 3 - - - 0x002070 00:E060: A5 48     LDA ram_flag_demo
C - - - - - 0x002072 00:E062: F0 01     BEQ bra_E065
C - - - - - 0x002074 00:E064: 60        RTS
bra_E065:
C - - - - - 0x002075 00:E065: A0 00     LDY #$00
C - - - - - 0x002077 00:E067: A9 06     LDA #$06
C - - - - - 0x002079 00:E069: 85 00     STA ram_0000
C - - - - - 0x00207B 00:E06B: 18        CLC
bra_E06C_loop:
C - - - - - 0x00207C 00:E06C: B9 70 00  LDA ram_score_p1,Y
C - - - - - 0x00207F 00:E06F: 79 DC 00  ADC ram_00DC,Y
C - - - - - 0x002082 00:E072: 99 70 00  STA ram_score_p1,Y
C - - - - - 0x002085 00:E075: C9 0A     CMP #$0A
C - - - - - 0x002087 00:E077: 90 06     BCC bra_E07F
C - - - - - 0x002089 00:E079: E9 0A     SBC #$0A
C - - - - - 0x00208B 00:E07B: 99 70 00  STA ram_score_p1,Y
C - - - - - 0x00208E 00:E07E: 38        SEC
bra_E07F:
C - - - - - 0x00208F 00:E07F: A9 00     LDA #$00
; 00DC-00E1
C - - - - - 0x002091 00:E081: 99 DC 00  STA ram_00DC,Y
C - - - - - 0x002094 00:E084: C8        INY
C - - - - - 0x002095 00:E085: C6 00     DEC ram_0000
C - - - - - 0x002097 00:E087: D0 E3     BNE bra_E06C_loop
C - - - - - 0x002099 00:E089: A2 00     LDX #$00
C - - - - - 0x00209B 00:E08B: 88        DEY
bra_E08C_loop:
C - - - - - 0x00209C 00:E08C: B9 70 00  LDA ram_score_p1,Y
C - - - - - 0x00209F 00:E08F: 20 48 E1  JSR sub_E148
C - - - - - 0x0020A2 00:E092: C9 30     CMP #$30
C - - - - - 0x0020A4 00:E094: D0 0F     BNE bra_E0A5
C - - - - - 0x0020A6 00:E096: A9 20     LDA #$20
C - - - - - 0x0020A8 00:E098: 9D 3F 02  STA ram_ppu_buffer_score,X
C - - - - - 0x0020AB 00:E09B: E8        INX
C - - - - - 0x0020AC 00:E09C: 88        DEY
C - - - - - 0x0020AD 00:E09D: D0 ED     BNE bra_E08C_loop
bra_E09F_loop:
C - - - - - 0x0020AF 00:E09F: B9 70 00  LDA ram_score_p1,Y
C - - - - - 0x0020B2 00:E0A2: 20 48 E1  JSR sub_E148
bra_E0A5:
C - - - - - 0x0020B5 00:E0A5: 9D 3F 02  STA ram_ppu_buffer_score,X
C - - - - - 0x0020B8 00:E0A8: E8        INX
C - - - - - 0x0020B9 00:E0A9: 88        DEY
C - - - - - 0x0020BA 00:E0AA: 10 F3     BPL bra_E09F_loop
C - - - - - 0x0020BC 00:E0AC: A5 6B     LDA ram_006B
C - - - - - 0x0020BE 00:E0AE: D0 60     BNE bra_E110
C - - - - - 0x0020C0 00:E0B0: A9 01     LDA #$01
C - - - - - 0x0020C2 00:E0B2: C5 73     CMP ram_score_p1 + $03
C - - - - - 0x0020C4 00:E0B4: D0 5A     BNE bra_E110
C - - - - - 0x0020C6 00:E0B6: A9 01     LDA #$01
C - - - - - 0x0020C8 00:E0B8: 85 6B     STA ram_006B
C - - - - - 0x0020CA 00:E0BA: 8D 02 06  STA ram_0602
C - - - - - 0x0020CD 00:E0BD: E6 67     INC ram_lives_p1
C - - - - - 0x0020CF 00:E0BF: A5 67     LDA ram_lives_p1
C - - - - - 0x0020D1 00:E0C1: 38        SEC
C - - - - - 0x0020D2 00:E0C2: E9 02     SBC #$02
C - - - - - 0x0020D4 00:E0C4: 0A        ASL
C - - - - - 0x0020D5 00:E0C5: 85 00     STA ram_0000
C - - - - - 0x0020D7 00:E0C7: A0 FF     LDY #$FF
bra_E0C9_loop:
C - - - - - 0x0020D9 00:E0C9: C8        INY
C - - - - - 0x0020DA 00:E0CA: B9 4B 02  LDA ram_ppu_buffer_main,Y
C - - - - - 0x0020DD 00:E0CD: C9 FF     CMP #$FF
C - - - - - 0x0020DF 00:E0CF: D0 F8     BNE bra_E0C9_loop
C - - - - - 0x0020E1 00:E0D1: 98        TYA
C - - - - - 0x0020E2 00:E0D2: F0 06     BEQ bra_E0DA
C - - - - - 0x0020E4 00:E0D4: A9 00     LDA #$00
C - - - - - 0x0020E6 00:E0D6: 99 4B 02  STA ram_ppu_buffer_main,Y
C - - - - - 0x0020E9 00:E0D9: C8        INY
bra_E0DA:
C - - - - - 0x0020EA 00:E0DA: A5 46     LDA ram_current_player
C - - - - - 0x0020EC 00:E0DC: 25 47     AND ram_game_mode
C - - - - - 0x0020EE 00:E0DE: F0 02     BEQ bra_E0E2
C - - - - - 0x0020F0 00:E0E0: A9 08     LDA #$08
bra_E0E2:
C - - - - - 0x0020F2 00:E0E2: 85 01     STA ram_0001
C - - - - - 0x0020F4 00:E0E4: A2 00     LDX #$00
bra_E0E6_loop:
C - - - - - 0x0020F6 00:E0E6: BD 3A E1  LDA tbl_E13A,X
C - - - - - 0x0020F9 00:E0E9: 18        CLC
C - - - - - 0x0020FA 00:E0EA: 65 01     ADC ram_0001
C - - - - - 0x0020FC 00:E0EC: 99 4B 02  STA ram_ppu_buffer_main,Y
C - - - - - 0x0020FF 00:E0EF: C8        INY
C - - - - - 0x002100 00:E0F0: E8        INX
C - - - - - 0x002101 00:E0F1: BD 3A E1  LDA tbl_E13A,X
C - - - - - 0x002104 00:E0F4: 18        CLC
C - - - - - 0x002105 00:E0F5: 65 00     ADC ram_0000
C - - - - - 0x002107 00:E0F7: 99 4B 02  STA ram_ppu_buffer_main,Y
C - - - - - 0x00210A 00:E0FA: A9 03     LDA #$03
C - - - - - 0x00210C 00:E0FC: 85 02     STA ram_0002
bra_E0FE_loop:
C - - - - - 0x00210E 00:E0FE: C8        INY
C - - - - - 0x00210F 00:E0FF: E8        INX
C - - - - - 0x002110 00:E100: BD 3A E1  LDA tbl_E13A,X
C - - - - - 0x002113 00:E103: 99 4B 02  STA ram_ppu_buffer_main,Y
C - - - - - 0x002116 00:E106: C6 02     DEC ram_0002
C - - - - - 0x002118 00:E108: D0 F4     BNE bra_E0FE_loop
C - - - - - 0x00211A 00:E10A: C8        INY
C - - - - - 0x00211B 00:E10B: E8        INX
C - - - - - 0x00211C 00:E10C: E0 0A     CPX #$0A
C - - - - - 0x00211E 00:E10E: D0 D6     BNE bra_E0E6_loop
bra_E110:
C - - - - - 0x002120 00:E110: A0 05     LDY #$05
bra_E112_loop:
C - - - - - 0x002122 00:E112: B9 61 00  LDA ram_score_hi,Y
C - - - - - 0x002125 00:E115: D9 70 00  CMP ram_score_p1,Y
C - - - - - 0x002128 00:E118: F0 03     BEQ bra_E11D
C - - - - - 0x00212A 00:E11A: 90 05     BCC bra_E121
C - - - - - 0x00212C 00:E11C: 60        RTS
bra_E11D:
C - - - - - 0x00212D 00:E11D: 88        DEY
C - - - - - 0x00212E 00:E11E: 10 F2     BPL bra_E112_loop
C - - - - - 0x002130 00:E120: 60        RTS
bra_E121:
C - - - - - 0x002131 00:E121: A2 00     LDX #$00
bra_E123_loop:
C - - - - - 0x002133 00:E123: BD 3F 02  LDA ram_ppu_buffer_score,X
C - - - - - 0x002136 00:E126: 9D 45 02  STA ram_ppu_buffer_hiscore,X
C - - - - - 0x002139 00:E129: E8        INX
C - - - - - 0x00213A 00:E12A: E0 06     CPX #$06
C - - - - - 0x00213C 00:E12C: D0 F5     BNE bra_E123_loop
C - - - - - 0x00213E 00:E12E: A2 00     LDX #$00
bra_E130_loop:
C - - - - - 0x002140 00:E130: B5 70     LDA ram_score_p1,X
C - - - - - 0x002142 00:E132: 95 61     STA ram_score_hi,X
C - - - - - 0x002144 00:E134: E8        INX
C - - - - - 0x002145 00:E135: E0 06     CPX #$06
C - - - - - 0x002147 00:E137: D0 F7     BNE bra_E130_loop
C - - - - - 0x002149 00:E139: 60        RTS



tbl_E13A:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 3 - - - 0x00214A 00:E13A: 23 17     .dbyt $2317 ; 
- D 3 - - - 0x00214C 00:E13C: 3C        .byte                                    $3C, $3D, $00   ; 

;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 3 - - - 0x00214F 00:E13F: 23 37     .dbyt $2337 ; 
- D 3 - - - 0x002151 00:E141: 3E        .byte                                    $3E, $3F, $FF   ; 


; bzk garbage
- - - - - - 0x002154 00:E144: 4A        .byte $4A, $4A, $4A, $4A   ; 



sub_E148:
C - - - - - 0x002158 00:E148: 29 0F     AND #$0F
C - - - - - 0x00215A 00:E14A: C9 0A     CMP #$0A
C - - - - - 0x00215C 00:E14C: B0 03     BCS bra_E151
C - - - - - 0x00215E 00:E14E: 69 30     ADC #con_tile + $30
C - - - - - 0x002160 00:E150: 60        RTS
bra_E151:
- - - - - - 0x002161 00:E151: 69 36     ADC #con_tile + $36
- - - - - - 0x002163 00:E153: 60        RTS



sub_E154_calculate_ppu_positions:
C - - - - - 0x002164 00:E154: A5 1A     LDA ram_obj_pos_X_hi
C - - - - - 0x002166 00:E156: 85 02     STA ram_0002
C - - - - - 0x002168 00:E158: A5 1C     LDA ram_obj_pos_Y_hi
C - - - - - 0x00216A 00:E15A: 85 03     STA ram_0003
C - - - - - 0x00216C 00:E15C: 20 DD E1  JSR sub_E1DD_convert_position_to_ppu
C - - - - - 0x00216F 00:E15F: A5 03     LDA ram_0003    ; ppu_pos_hi
C - - - - - 0x002171 00:E161: 8D 00 02  STA ram_obj_ppu_pos_hi_now
C - - - - - 0x002174 00:E164: A5 02     LDA ram_0002    ; ppu_pos_lo
C - - - - - 0x002176 00:E166: 8D 01 02  STA ram_obj_ppu_pos_lo_now
C - - - - - 0x002179 00:E169: A2 00     LDX #$00
C - - - - - 0x00217B 00:E16B: A0 00     LDY #$00
bra_E16D_loop:
C - - - - - 0x00217D 00:E16D: B5 1A     LDA ram_obj_pos_X_hi,X
C - - - - - 0x00217F 00:E16F: 85 02     STA ram_0002
C - - - - - 0x002181 00:E171: B5 1C     LDA ram_obj_pos_Y_hi,X
C - - - - - 0x002183 00:E173: 85 03     STA ram_0003
C - - - - - 0x002185 00:E175: 20 DD E1  JSR sub_E1DD_convert_position_to_ppu
C - - - - - 0x002188 00:E178: A9 20     LDA #< $0020
C - - - - - 0x00218A 00:E17A: 85 14     STA ram_0014
C - - - - - 0x00218C 00:E17C: A9 00     LDA #> $0020
C - - - - - 0x00218E 00:E17E: 85 15     STA ram_0015
C - - - - - 0x002190 00:E180: A5 02     LDA ram_0002    ; ppu_pos_lo
C - - - - - 0x002192 00:E182: 85 12     STA ram_0012    ; ppu_pos_lo_copy
C - - - - - 0x002194 00:E184: A5 03     LDA ram_0003    ; ppu_pos_hi
C - - - - - 0x002196 00:E186: 85 13     STA ram_0013    ; ppu_pos_hi_copy
C - - - - - 0x002198 00:E188: 20 4E E2  JSR sub_E24E_sbc_0020
C - - - - - 0x00219B 00:E18B: A5 13     LDA ram_0013
; 0202-0222, interval 08
C - - - - - 0x00219D 00:E18D: 99 02 02  STA ram_obj_ppu_pos_hi_up,Y
C - - - - - 0x0021A0 00:E190: A5 12     LDA ram_0012    ; ppu_pos_lo_copy
C - - - - - 0x0021A2 00:E192: C8        INY
; 0203-0223, interval 08
C - - - - - 0x0021A3 00:E193: 99 02 02  STA ram_obj_ppu_pos_lo_up - $01,Y
C - - - - - 0x0021A6 00:E196: A5 03     LDA ram_0003    ; ppu_pos_hi
C - - - - - 0x0021A8 00:E198: C8        INY
; 0204-0224, interval 08
C - - - - - 0x0021A9 00:E199: 99 02 02  STA ram_obj_ppu_pos_hi_left - $02,Y
C - - - - - 0x0021AC 00:E19C: A5 02     LDA ram_0002    ; ppu_pos_lo
C - - - - - 0x0021AE 00:E19E: 38        SEC
C - - - - - 0x0021AF 00:E19F: E9 01     SBC #$01
C - - - - - 0x0021B1 00:E1A1: C8        INY
; 0205-0225, interval 08
C - - - - - 0x0021B2 00:E1A2: 99 02 02  STA ram_obj_ppu_pos_lo_left - $03,Y
C - - - - - 0x0021B5 00:E1A5: A9 20     LDA #< $0020
C - - - - - 0x0021B7 00:E1A7: 85 14     STA ram_0014
C - - - - - 0x0021B9 00:E1A9: A9 00     LDA #> $0020
C - - - - - 0x0021BB 00:E1AB: 85 15     STA ram_0015
C - - - - - 0x0021BD 00:E1AD: A5 02     LDA ram_0002    ; ppu_pos_lo
C - - - - - 0x0021BF 00:E1AF: 85 12     STA ram_0012    ; ppu_pos_lo_copy
C - - - - - 0x0021C1 00:E1B1: A5 03     LDA ram_0003    ; ppu_pos_hi
C - - - - - 0x0021C3 00:E1B3: 85 13     STA ram_0013    ; ppu_pos_hi_copy
C - - - - - 0x0021C5 00:E1B5: 20 40 E2  JSR sub_E240_add_0020
C - - - - - 0x0021C8 00:E1B8: A5 13     LDA ram_0013
C - - - - - 0x0021CA 00:E1BA: C8        INY
; 0206-0226, interval 08
C - - - - - 0x0021CB 00:E1BB: 99 02 02  STA ram_obj_ppu_pos_hi_down - $04,Y
C - - - - - 0x0021CE 00:E1BE: A5 12     LDA ram_0012    ; ppu_pos_lo_copy
C - - - - - 0x0021D0 00:E1C0: C8        INY
; 0207-0227, interval 08
C - - - - - 0x0021D1 00:E1C1: 99 02 02  STA ram_obj_ppu_pos_lo_down - $05,Y
C - - - - - 0x0021D4 00:E1C4: A5 03     LDA ram_0003    ; ppu_pos_hi
C - - - - - 0x0021D6 00:E1C6: C8        INY
; 0208-0228, interval 08
C - - - - - 0x0021D7 00:E1C7: 99 02 02  STA ram_obj_ppu_pos_hi_right - $06,Y
C - - - - - 0x0021DA 00:E1CA: A5 02     LDA ram_0002    ; ppu_pos_lo
C - - - - - 0x0021DC 00:E1CC: 18        CLC
C - - - - - 0x0021DD 00:E1CD: 69 01     ADC #$01
C - - - - - 0x0021DF 00:E1CF: C8        INY
; 0209-0229, interval 08
C - - - - - 0x0021E0 00:E1D0: 99 02 02  STA ram_obj_ppu_pos_lo_right - $07,Y
C - - - - - 0x0021E3 00:E1D3: E8        INX
C - - - - - 0x0021E4 00:E1D4: E8        INX
C - - - - - 0x0021E5 00:E1D5: E8        INX
C - - - - - 0x0021E6 00:E1D6: E8        INX
C - - - - - 0x0021E7 00:E1D7: C8        INY
C - - - - - 0x0021E8 00:E1D8: C0 28     CPY #$28
C - - - - - 0x0021EA 00:E1DA: D0 91     BNE bra_E16D_loop
C - - - - - 0x0021EC 00:E1DC: 60        RTS



sub_E1DD_convert_position_to_ppu:
C - - - - - 0x0021ED 00:E1DD: A9 00     LDA #$00
C - - - - - 0x0021EF 00:E1DF: 85 05     STA ram_0005
C - - - - - 0x0021F1 00:E1E1: A5 03     LDA ram_0003    ; pos_Y_hi
C - - - - - 0x0021F3 00:E1E3: 38        SEC
C - - - - - 0x0021F4 00:E1E4: E9 04     SBC #$04
C - - - - - 0x0021F6 00:E1E6: 29 F8     AND #$F8
C - - - - - 0x0021F8 00:E1E8: 0A        ASL
C - - - - - 0x0021F9 00:E1E9: 26 05     ROL ram_0005
C - - - - - 0x0021FB 00:E1EB: 0A        ASL
C - - - - - 0x0021FC 00:E1EC: 26 05     ROL ram_0005
C - - - - - 0x0021FE 00:E1EE: 18        CLC
C - - - - - 0x0021FF 00:E1EF: 69 40     ADC #$40
C - - - - - 0x002201 00:E1F1: 85 04     STA ram_0004
C - - - - - 0x002203 00:E1F3: A9 00     LDA #$00
C - - - - - 0x002205 00:E1F5: 65 05     ADC ram_0005
C - - - - - 0x002207 00:E1F7: 85 05     STA ram_0005
C - - - - - 0x002209 00:E1F9: A5 02     LDA ram_0002    ; pos_X_hi
C - - - - - 0x00220B 00:E1FB: 38        SEC
C - - - - - 0x00220C 00:E1FC: E9 04     SBC #$04
C - - - - - 0x00220E 00:E1FE: 4A        LSR
C - - - - - 0x00220F 00:E1FF: 4A        LSR
C - - - - - 0x002210 00:E200: 4A        LSR
C - - - - - 0x002211 00:E201: 18        CLC
C - - - - - 0x002212 00:E202: 65 04     ADC ram_0004
C - - - - - 0x002214 00:E204: 85 02     STA ram_0002    ; ppu_pos_lo
C - - - - - 0x002216 00:E206: A5 05     LDA ram_0005
C - - - - - 0x002218 00:E208: 18        CLC
C - - - - - 0x002219 00:E209: 69 20     ADC #$20
C - - - - - 0x00221B 00:E20B: 85 03     STA ram_0003    ; ppu_pos_hi
C - - - - - 0x00221D 00:E20D: A5 46     LDA ram_current_player
C - - - - - 0x00221F 00:E20F: 25 47     AND ram_game_mode
C - - - - - 0x002221 00:E211: D0 01     BNE bra_E214
C - - - - - 0x002223 00:E213: 60        RTS
bra_E214:
; add 0800 to ppu for 2nd player
C - - - - - 0x002224 00:E214: A5 03     LDA ram_0003    ; ppu_pos_hi
C - - - - - 0x002226 00:E216: 18        CLC
C - - - - - 0x002227 00:E217: 69 08     ADC #$08
C - - - - - 0x002229 00:E219: 85 03     STA ram_0003    ; ppu_pos_hi
C - - - - - 0x00222B 00:E21B: 60        RTS



sub_E21C_analyze_obj_ppu_pos:
C - - - - - 0x00222C 00:E21C: A2 00     LDX #$00
C - - - - - 0x00222E 00:E21E: A0 00     LDY #$00
C - - - - - 0x002230 00:E220: AD 02 20  LDA $2002
bra_E223_loop:
C - - - - - 0x002233 00:E223: BD 00 02  LDA ram_obj_ppu_position,X  ; 0200-0228, even
C - - - - - 0x002236 00:E226: 8D 06 20  STA $2006
C - - - - - 0x002239 00:E229: E8        INX
C - - - - - 0x00223A 00:E22A: BD 00 02  LDA ram_obj_ppu_position,X  ; 0201-0229, odd
C - - - - - 0x00223D 00:E22D: 8D 06 20  STA $2006
C - - - - - 0x002240 00:E230: AD 07 20  LDA $2007
C - - - - - 0x002243 00:E233: AD 07 20  LDA $2007
C - - - - - 0x002246 00:E236: 99 2A 02  STA ram_obj_ppu_tile,Y  ; 022A-023E
C - - - - - 0x002249 00:E239: E8        INX
C - - - - - 0x00224A 00:E23A: C8        INY
C - - - - - 0x00224B 00:E23B: E0 2A     CPX #$2A
C - - - - - 0x00224D 00:E23D: D0 E4     BNE bra_E223_loop
C - - - - - 0x00224F 00:E23F: 60        RTS



sub_E240_add_0020:
; bzk optimize, 0014-0015 is always = $0020
C - - - - - 0x002250 00:E240: 18        CLC
C - - - - - 0x002251 00:E241: A5 12     LDA ram_0012
C - - - - - 0x002253 00:E243: 65 14     ADC ram_0014
C - - - - - 0x002255 00:E245: 85 12     STA ram_0012
C - - - - - 0x002257 00:E247: A5 13     LDA ram_0013
C - - - - - 0x002259 00:E249: 65 15     ADC ram_0015
C - - - - - 0x00225B 00:E24B: 85 13     STA ram_0013
C - - - - - 0x00225D 00:E24D: 60        RTS



sub_E24E_sbc_0020:
; bzk optimize, 0014-0015 is always = $0020
C - - - - - 0x00225E 00:E24E: 38        SEC
C - - - - - 0x00225F 00:E24F: A5 12     LDA ram_0012
C - - - - - 0x002261 00:E251: E5 14     SBC ram_0014
C - - - - - 0x002263 00:E253: 85 12     STA ram_0012
C - - - - - 0x002265 00:E255: A5 13     LDA ram_0013
C - - - - - 0x002267 00:E257: E5 15     SBC ram_0015
C - - - - - 0x002269 00:E259: 85 13     STA ram_0013
C - - - - - 0x00226B 00:E25B: 60        RTS



sub_E25C:
C - - - - - 0x00226C 00:E25C: A9 20     LDA #$20    ; 2040
C - - - - - 0x00226E 00:E25E: 85 02     STA ram_0002
C - - - - - 0x002270 00:E260: A9 40     LDA #$40
C - - - - - 0x002272 00:E262: 85 03     STA ram_0003
C - - - - - 0x002274 00:E264: A5 47     LDA ram_game_mode
C - - - - - 0x002276 00:E266: 25 46     AND ram_current_player
C - - - - - 0x002278 00:E268: F0 04     BEQ bra_E26E
C - - - - - 0x00227A 00:E26A: A9 28     LDA #$28    ; 2840
C - - - - - 0x00227C 00:E26C: 85 02     STA ram_0002
bra_E26E:
C - - - - - 0x00227E 00:E26E: AD F9 FF  LDA tbl_FFF8 + $01
C - - - - - 0x002281 00:E271: 85 01     STA ram_0001
C - - - - - 0x002283 00:E273: AD F8 FF  LDA tbl_FFF8
C - - - - - 0x002286 00:E276: 85 00     STA ram_0000
C - - - - - 0x002288 00:E278: A2 1B     LDX #$1B
C - - - - - 0x00228A 00:E27A: A0 00     LDY #$00
bra_E27C_loop:
C - - - - - 0x00228C 00:E27C: AD 02 20  LDA $2002
C - - - - - 0x00228F 00:E27F: A5 02     LDA ram_0002
C - - - - - 0x002291 00:E281: 8D 06 20  STA $2006
C - - - - - 0x002294 00:E284: A5 03     LDA ram_0003
C - - - - - 0x002296 00:E286: 8D 06 20  STA $2006
C - - - - - 0x002299 00:E289: A9 16     LDA #$16
C - - - - - 0x00229B 00:E28B: 85 04     STA ram_0004
bra_E28D_loop:
C - - - - - 0x00229D 00:E28D: A9 00     LDA #$00
C - - - - - 0x00229F 00:E28F: 85 05     STA ram_0005
C - - - - - 0x0022A1 00:E291: B1 00     LDA (ram_0000),Y    ; data from 0x002C88
C - - - - - 0x0022A3 00:E293: 0A        ASL
C - - - - - 0x0022A4 00:E294: 26 05     ROL ram_0005
C - - - - - 0x0022A6 00:E296: 0A        ASL
C - - - - - 0x0022A7 00:E297: 26 05     ROL ram_0005
C - - - - - 0x0022A9 00:E299: B1 00     LDA (ram_0000),Y    ; data from 0x002C88
C - - - - - 0x0022AB 00:E29B: 29 3F     AND #$3F
bra_E29D_loop:
C - - - - - 0x0022AD 00:E29D: 8D 07 20  STA $2007
C - - - - - 0x0022B0 00:E2A0: C6 04     DEC ram_0004
C - - - - - 0x0022B2 00:E2A2: C6 05     DEC ram_0005
C - - - - - 0x0022B4 00:E2A4: 10 F7     BPL bra_E29D_loop
C - - - - - 0x0022B6 00:E2A6: C8        INY
C - - - - - 0x0022B7 00:E2A7: D0 02     BNE bra_E2AB
C - - - - - 0x0022B9 00:E2A9: E6 01     INC ram_0001
bra_E2AB:
C - - - - - 0x0022BB 00:E2AB: A5 04     LDA ram_0004
C - - - - - 0x0022BD 00:E2AD: D0 DE     BNE bra_E28D_loop
C - - - - - 0x0022BF 00:E2AF: A5 03     LDA ram_0003
C - - - - - 0x0022C1 00:E2B1: 18        CLC
C - - - - - 0x0022C2 00:E2B2: 69 20     ADC #< $0020
C - - - - - 0x0022C4 00:E2B4: 85 03     STA ram_0003
C - - - - - 0x0022C6 00:E2B6: A5 02     LDA ram_0002
C - - - - - 0x0022C8 00:E2B8: 69 00     ADC #> $0020
C - - - - - 0x0022CA 00:E2BA: 85 02     STA ram_0002
C - - - - - 0x0022CC 00:E2BC: CA        DEX
C - - - - - 0x0022CD 00:E2BD: D0 BD     BNE bra_E27C_loop
C - - - - - 0x0022CF 00:E2BF: A0 02     LDY #$02
C - - - - - 0x0022D1 00:E2C1: A9 21     LDA #$21    ; 21D6
C - - - - - 0x0022D3 00:E2C3: 85 00     STA ram_0000
C - - - - - 0x0022D5 00:E2C5: A9 D6     LDA #$D6
C - - - - - 0x0022D7 00:E2C7: 85 01     STA ram_0001
C - - - - - 0x0022D9 00:E2C9: A5 47     LDA ram_game_mode
C - - - - - 0x0022DB 00:E2CB: 25 46     AND ram_current_player
C - - - - - 0x0022DD 00:E2CD: F0 04     BEQ bra_E2D3
C - - - - - 0x0022DF 00:E2CF: A9 29     LDA #$29    ; 29D6
C - - - - - 0x0022E1 00:E2D1: 85 00     STA ram_0000
bra_E2D3:
bra_E2D3_loop:
C - - - - - 0x0022E3 00:E2D3: A2 07     LDX #$07
C - - - - - 0x0022E5 00:E2D5: AD 02 20  LDA $2002
C - - - - - 0x0022E8 00:E2D8: A5 00     LDA ram_0000
C - - - - - 0x0022EA 00:E2DA: 8D 06 20  STA $2006
C - - - - - 0x0022ED 00:E2DD: A5 01     LDA ram_0001
C - - - - - 0x0022EF 00:E2DF: 8D 06 20  STA $2006
C - - - - - 0x0022F2 00:E2E2: B9 FC E2  LDA tbl_E2FC,Y
bra_E2E5_loop:
C - - - - - 0x0022F5 00:E2E5: 8D 07 20  STA $2007
C - - - - - 0x0022F8 00:E2E8: CA        DEX
C - - - - - 0x0022F9 00:E2E9: 10 FA     BPL bra_E2E5_loop
C - - - - - 0x0022FB 00:E2EB: A5 01     LDA ram_0001
C - - - - - 0x0022FD 00:E2ED: 18        CLC
C - - - - - 0x0022FE 00:E2EE: 69 20     ADC #< $0020
C - - - - - 0x002300 00:E2F0: 85 01     STA ram_0001
C - - - - - 0x002302 00:E2F2: A9 00     LDA #> $0020
C - - - - - 0x002304 00:E2F4: 65 00     ADC ram_0000
C - - - - - 0x002306 00:E2F6: 85 00     STA ram_0000
C - - - - - 0x002308 00:E2F8: 88        DEY
C - - - - - 0x002309 00:E2F9: 10 D8     BPL bra_E2D3_loop
C - - - - - 0x00230B 00:E2FB: 60        RTS



tbl_E2FC:
; fill ppu with this byte
- D 3 - - - 0x00230C 00:E2FC: 2D        .byte con_tile + $2D   ; 00 
- D 3 - - - 0x00230D 00:E2FD: 04        .byte con_tile + $04   ; 01 
- D 3 - - - 0x00230E 00:E2FE: 2D        .byte con_tile + $2D   ; 02 



sub_E2FF:
C - - - - - 0x00230F 00:E2FF: AD 02 20  LDA $2002
C - - - - - 0x002312 00:E302: A9 20     LDA #> $2000
C - - - - - 0x002314 00:E304: 8D 06 20  STA $2006
C - - - - - 0x002317 00:E307: A9 00     LDA #< $2000
C - - - - - 0x002319 00:E309: 8D 06 20  STA $2006
C - - - - - 0x00231C 00:E30C: A9 01     LDA #$01
C - - - - - 0x00231E 00:E30E: 85 02     STA ram_0002
loc_E310:
C D 3 - - - 0x002320 00:E310: A9 01     LDA #$01
C - - - - - 0x002322 00:E312: 85 03     STA ram_0003
C - - - - - 0x002324 00:E314: A9 03     LDA #$03
C - - - - - 0x002326 00:E316: 85 00     STA ram_0000
C - - - - - 0x002328 00:E318: A9 C0     LDA #$C0
C - - - - - 0x00232A 00:E31A: 85 01     STA ram_0001
C - - - - - 0x00232C 00:E31C: A9 2D     LDA #con_tile + $2D
bra_E31E_loop:
C - - - - - 0x00232E 00:E31E: 8D 07 20  STA $2007
C - - - - - 0x002331 00:E321: C6 01     DEC ram_0001
C - - - - - 0x002333 00:E323: D0 F9     BNE bra_E31E_loop
C - - - - - 0x002335 00:E325: C6 00     DEC ram_0000
C - - - - - 0x002337 00:E327: 10 F5     BPL bra_E31E_loop
C - - - - - 0x002339 00:E329: C6 03     DEC ram_0003
C - - - - - 0x00233B 00:E32B: D0 08     BNE bra_E335
C - - - - - 0x00233D 00:E32D: A9 40     LDA #$40
C - - - - - 0x00233F 00:E32F: 85 01     STA ram_0001
C - - - - - 0x002341 00:E331: A9 00     LDA #$00
C - - - - - 0x002343 00:E333: F0 E9     BEQ bra_E31E_loop    ; jmp
bra_E335:
C - - - - - 0x002345 00:E335: C6 02     DEC ram_0002
C - - - - - 0x002347 00:E337: D0 10     BNE bra_E349
C - - - - - 0x002349 00:E339: AD 02 20  LDA $2002
C - - - - - 0x00234C 00:E33C: A9 28     LDA #> $2800
C - - - - - 0x00234E 00:E33E: 8D 06 20  STA $2006
C - - - - - 0x002351 00:E341: A9 00     LDA #< $2800
C - - - - - 0x002353 00:E343: 8D 06 20  STA $2006
C - - - - - 0x002356 00:E346: 4C 10 E3  JMP loc_E310
bra_E349:
C - - - - - 0x002359 00:E349: A9 01     LDA #$01
C - - - - - 0x00235B 00:E34B: 85 00     STA ram_0000
C - - - - - 0x00235D 00:E34D: AD 02 20  LDA $2002
C - - - - - 0x002360 00:E350: A9 23     LDA #> $23C0
C - - - - - 0x002362 00:E352: 8D 06 20  STA $2006
C - - - - - 0x002365 00:E355: A9 C0     LDA #< $23C0
C - - - - - 0x002367 00:E357: 8D 06 20  STA $2006
bra_E35A_loop:
C - - - - - 0x00236A 00:E35A: A9 00     LDA #$00
C - - - - - 0x00236C 00:E35C: A8        TAY
bra_E35D_loop:
C - - - - - 0x00236D 00:E35D: 8D 07 20  STA $2007
C - - - - - 0x002370 00:E360: C8        INY
C - - - - - 0x002371 00:E361: C0 20     CPY #$20
C - - - - - 0x002373 00:E363: D0 F8     BNE bra_E35D_loop
C - - - - - 0x002375 00:E365: C6 00     DEC ram_0000
C - - - - - 0x002377 00:E367: D0 01     BNE bra_E36A
C - - - - - 0x002379 00:E369: 60        RTS
bra_E36A:
- - - - - - 0x00237A 00:E36A: AD 02 20  LDA $2002
- - - - - - 0x00237D 00:E36D: A9 2B     LDA #> $2BC0
- - - - - - 0x00237F 00:E36F: 8D 06 20  STA $2006
- - - - - - 0x002382 00:E372: A9 C0     LDA #< $2BC0
- - - - - - 0x002384 00:E374: 8D 06 20  STA $2006
- - - - - - 0x002387 00:E377: D0 E1     BNE bra_E35A_loop   ; jmp



sub_E379:
C - - - - - 0x002389 00:E379: A9 20     LDA #$20
C - - - - - 0x00238B 00:E37B: 85 00     STA ram_0000
C - - - - - 0x00238D 00:E37D: A9 B6     LDA #$B6
C - - - - - 0x00238F 00:E37F: 85 01     STA ram_0001
C - - - - - 0x002391 00:E381: A9 80     LDA #$80
C - - - - - 0x002393 00:E383: 85 04     STA ram_0004
C - - - - - 0x002395 00:E385: A2 00     LDX #$00
C - - - - - 0x002397 00:E387: A5 47     LDA ram_game_mode
C - - - - - 0x002399 00:E389: 25 46     AND ram_current_player
C - - - - - 0x00239B 00:E38B: F0 18     BEQ bra_E3A5
C - - - - - 0x00239D 00:E38D: A9 28     LDA #$28
C - - - - - 0x00239F 00:E38F: 85 00     STA ram_0000
C - - - - - 0x0023A1 00:E391: D0 12     BNE bra_E3A5    ; jmp



sub_E393:
C - - - - - 0x0023A3 00:E393: A9 20     LDA #$20
C - - - - - 0x0023A5 00:E395: 85 00     STA ram_0000
C - - - - - 0x0023A7 00:E397: A9 83     LDA #$83
C - - - - - 0x0023A9 00:E399: 85 01     STA ram_0001
C - - - - - 0x0023AB 00:E39B: A9 09     LDA #$09
C - - - - - 0x0023AD 00:E39D: 85 04     STA ram_0004
C - - - - - 0x0023AF 00:E39F: A9 01     LDA #$01
C - - - - - 0x0023B1 00:E3A1: 85 47     STA ram_game_mode
C - - - - - 0x0023B3 00:E3A3: A2 0C     LDX #$0C
bra_E3A5:
C - - - - - 0x0023B5 00:E3A5: A5 47     LDA ram_game_mode
C - - - - - 0x0023B7 00:E3A7: 25 46     AND ram_current_player
C - - - - - 0x0023B9 00:E3A9: F0 05     BEQ bra_E3B0
C - - - - - 0x0023BB 00:E3AB: 8A        TXA
C - - - - - 0x0023BC 00:E3AC: 18        CLC
C - - - - - 0x0023BD 00:E3AD: 69 06     ADC #$06
C - - - - - 0x0023BF 00:E3AF: AA        TAX
bra_E3B0:
C - - - - - 0x0023C0 00:E3B0: A9 03     LDA #$03
C - - - - - 0x0023C2 00:E3B2: 85 05     STA ram_0005
bra_E3B4_loop:
C - - - - - 0x0023C4 00:E3B4: AD 02 20  LDA $2002
C - - - - - 0x0023C7 00:E3B7: A5 00     LDA ram_0000
C - - - - - 0x0023C9 00:E3B9: 8D 06 20  STA $2006
C - - - - - 0x0023CC 00:E3BC: A5 01     LDA ram_0001
C - - - - - 0x0023CE 00:E3BE: 8D 06 20  STA $2006
C - - - - - 0x0023D1 00:E3C1: BD 19 E4  LDA tbl_E419_score_addr,X
C - - - - - 0x0023D4 00:E3C4: 85 02     STA ram_0002
C - - - - - 0x0023D6 00:E3C6: BD 1A E4  LDA tbl_E419_score_addr + $01,X
C - - - - - 0x0023D9 00:E3C9: 85 03     STA ram_0003
C - - - - - 0x0023DB 00:E3CB: 20 EE E3  JSR sub_E3EE
C - - - - - 0x0023DE 00:E3CE: E8        INX
C - - - - - 0x0023DF 00:E3CF: E8        INX
C - - - - - 0x0023E0 00:E3D0: A5 01     LDA ram_0001
C - - - - - 0x0023E2 00:E3D2: 18        CLC
C - - - - - 0x0023E3 00:E3D3: 65 04     ADC ram_0004
C - - - - - 0x0023E5 00:E3D5: 85 01     STA ram_0001
C - - - - - 0x0023E7 00:E3D7: A9 00     LDA #$00
C - - - - - 0x0023E9 00:E3D9: 65 00     ADC ram_0000
C - - - - - 0x0023EB 00:E3DB: 85 00     STA ram_0000
C - - - - - 0x0023ED 00:E3DD: C6 05     DEC ram_0005
C - - - - - 0x0023EF 00:E3DF: A5 05     LDA ram_0005
C - - - - - 0x0023F1 00:E3E1: C9 01     CMP #$01
C - - - - - 0x0023F3 00:E3E3: D0 04     BNE bra_E3E9
C - - - - - 0x0023F5 00:E3E5: A5 47     LDA ram_game_mode
C - - - - - 0x0023F7 00:E3E7: F0 04     BEQ bra_E3ED_RTS
bra_E3E9:
C - - - - - 0x0023F9 00:E3E9: A5 05     LDA ram_0005
C - - - - - 0x0023FB 00:E3EB: D0 C7     BNE bra_E3B4_loop
bra_E3ED_RTS:
C - - - - - 0x0023FD 00:E3ED: 60        RTS



sub_E3EE:
C - - - - - 0x0023FE 00:E3EE: A0 05     LDY #$05
bra_E3F0_loop:
C - - - - - 0x002400 00:E3F0: B1 02     LDA (ram_0002),Y    ; 0064 0065 0066 0071 0072 0073 0074 0075 0081 0082 0083 0084 0085
C - - - - - 0x002402 00:E3F2: 29 0F     AND #$0F
C - - - - - 0x002404 00:E3F4: D0 0C     BNE bra_E402
C - - - - - 0x002406 00:E3F6: A9 20     LDA #con_tile + $20
C - - - - - 0x002408 00:E3F8: 8D 07 20  STA $2007
C - - - - - 0x00240B 00:E3FB: 88        DEY
C - - - - - 0x00240C 00:E3FC: D0 F2     BNE bra_E3F0_loop
C - - - - - 0x00240E 00:E3FE: F0 0B     BEQ bra_E40B    ; jmp
bra_E400_loop:
C - - - - - 0x002410 00:E400: B1 02     LDA (ram_0002),Y    ; 0062 0063 0064 0071 0072 0073 0081 0082
bra_E402:
C - - - - - 0x002412 00:E402: 20 48 E1  JSR sub_E148
C - - - - - 0x002415 00:E405: 8D 07 20  STA $2007
C - - - - - 0x002418 00:E408: 88        DEY
C - - - - - 0x002419 00:E409: D0 F5     BNE bra_E400_loop
bra_E40B:
; Y = 00
C - - - - - 0x00241B 00:E40B: B1 02     LDA (ram_0002),Y    ; 0061 0070 0080
C - - - - - 0x00241D 00:E40D: 20 48 E1  JSR sub_E148
C - - - - - 0x002420 00:E410: 8D 07 20  STA $2007
C - - - - - 0x002423 00:E413: A9 30     LDA #con_tile + $30
C - - - - - 0x002425 00:E415: 8D 07 20  STA $2007
C - - - - - 0x002428 00:E418: 60        RTS



tbl_E419_score_addr:
; 00 
- D 3 - - - 0x002429 00:E419: 61 00     .word ram_score_hi
- D 3 - - - 0x00242B 00:E41B: 70 00     .word ram_score_p1
- D 3 - - - 0x00242D 00:E41D: 80 00     .word ram_score_p2
; 06 
- D 3 - - - 0x00242F 00:E41F: 61 00     .word ram_score_hi
- D 3 - - - 0x002431 00:E421: 80 00     .word ram_score_p2
- D 3 - - - 0x002433 00:E423: 70 00     .word ram_score_p1
; 0C 
- D 3 - - - 0x002435 00:E425: 70 00     .word ram_score_p1
- D 3 - - - 0x002437 00:E427: 61 00     .word ram_score_hi
- D 3 - - - 0x002439 00:E429: 80 00     .word ram_score_p2



sub_E42B:
C - - - - - 0x00243B 00:E42B: A0 FF     LDY #$FF
C - - - - - 0x00243D 00:E42D: 84 0C     STY ram_000C
C - - - - - 0x00243F 00:E42F: 84 0D     STY ram_000D
C - - - - - 0x002441 00:E431: 84 0E     STY ram_000E
C - - - - - 0x002443 00:E433: 84 0F     STY ram_000F
C - - - - - 0x002445 00:E435: C8        INY ; 00
bra_E436_loop:
C - - - - - 0x002446 00:E436: B1 00     LDA (ram_0000),Y    ; 022F 0230 0231 0232 0233 0234 0235 0236 0237 0238 0239 023A 023B 023C 023D 023E
C - - - - - 0x002448 00:E438: C5 0A     CMP ram_000A
C - - - - - 0x00244A 00:E43A: F0 08     BEQ bra_E444
C - - - - - 0x00244C 00:E43C: 29 F8     AND #$F8
C - - - - - 0x00244E 00:E43E: F0 04     BEQ bra_E444
C - - - - - 0x002450 00:E440: C5 0B     CMP ram_000B
C - - - - - 0x002452 00:E442: D0 04     BNE bra_E448
bra_E444:
C - - - - - 0x002454 00:E444: 98        TYA
C - - - - - 0x002455 00:E445: 99 0C 00  STA ram_000C,Y
bra_E448:
C - - - - - 0x002458 00:E448: C8        INY
C - - - - - 0x002459 00:E449: C0 04     CPY #$04
C - - - - - 0x00245B 00:E44B: D0 E9     BNE bra_E436_loop
C - - - - - 0x00245D 00:E44D: B5 B9     LDA ram_00B9,X
C - - - - - 0x00245F 00:E44F: 18        CLC
C - - - - - 0x002460 00:E450: 69 02     ADC #$02
C - - - - - 0x002462 00:E452: 29 03     AND #$03
C - - - - - 0x002464 00:E454: A8        TAY
C - - - - - 0x002465 00:E455: A9 FF     LDA #$FF
C - - - - - 0x002467 00:E457: 99 0C 00  STA ram_000C,Y
C - - - - - 0x00246A 00:E45A: A9 03     LDA #$03
C - - - - - 0x00246C 00:E45C: 85 0B     STA ram_000B
bra_E45E_loop:
C - - - - - 0x00246E 00:E45E: A0 00     LDY #$00
bra_E460_loop:
C - - - - - 0x002470 00:E460: B9 0C 00  LDA ram_000C,Y
C - - - - - 0x002473 00:E463: C9 FF     CMP #$FF
C - - - - - 0x002475 00:E465: D0 0B     BNE bra_E472
C - - - - - 0x002477 00:E467: B9 0D 00  LDA ram_000D,Y
C - - - - - 0x00247A 00:E46A: 99 0C 00  STA ram_000C,Y
C - - - - - 0x00247D 00:E46D: A9 FF     LDA #$FF
C - - - - - 0x00247F 00:E46F: 99 0D 00  STA ram_000D,Y
bra_E472:
C - - - - - 0x002482 00:E472: C8        INY
C - - - - - 0x002483 00:E473: C0 03     CPY #$03
C - - - - - 0x002485 00:E475: D0 E9     BNE bra_E460_loop
C - - - - - 0x002487 00:E477: C6 0B     DEC ram_000B
C - - - - - 0x002489 00:E479: D0 E3     BNE bra_E45E_loop
C - - - - - 0x00248B 00:E47B: 60        RTS



sub_E47C:
C - - - - - 0x00248C 00:E47C: A2 01     LDX #$01
bra_E47E_loop:
C - - - - - 0x00248E 00:E47E: A0 00     LDY #$00
bra_E480_loop:
C - - - - - 0x002490 00:E480: B9 B6 E4  LDA tbl_E4B6,Y
C - - - - - 0x002493 00:E483: E0 00     CPX #$00
C - - - - - 0x002495 00:E485: D0 02     BNE bra_E489
C - - - - - 0x002497 00:E487: 69 07     ADC #$07
bra_E489:
C - - - - - 0x002499 00:E489: 8D 06 20  STA $2006
C - - - - - 0x00249C 00:E48C: C8        INY
C - - - - - 0x00249D 00:E48D: B9 B6 E4  LDA tbl_E4B6,Y
C - - - - - 0x0024A0 00:E490: 8D 06 20  STA $2006
C - - - - - 0x0024A3 00:E493: C8        INY
C - - - - - 0x0024A4 00:E494: B9 B6 E4  LDA tbl_E4B6,Y
C - - - - - 0x0024A7 00:E497: 85 00     STA ram_0000
bra_E499_loop:
C - - - - - 0x0024A9 00:E499: C8        INY
C - - - - - 0x0024AA 00:E49A: B9 B6 E4  LDA tbl_E4B6,Y
C - - - - - 0x0024AD 00:E49D: 8D 07 20  STA $2007
C - - - - - 0x0024B0 00:E4A0: C6 00     DEC ram_0000
C - - - - - 0x0024B2 00:E4A2: D0 F5     BNE bra_E499_loop
C - - - - - 0x0024B4 00:E4A4: C8        INY
C - - - - - 0x0024B5 00:E4A5: C0 11     CPY #$11
C - - - - - 0x0024B7 00:E4A7: D0 05     BNE bra_E4AE
C - - - - - 0x0024B9 00:E4A9: A5 47     LDA ram_game_mode
C - - - - - 0x0024BB 00:E4AB: D0 01     BNE bra_E4AE
C - - - - - 0x0024BD 00:E4AD: 60        RTS
bra_E4AE:
C - - - - - 0x0024BE 00:E4AE: C0 17     CPY #$17
C - - - - - 0x0024C0 00:E4B0: D0 CE     BNE bra_E480_loop
C - - - - - 0x0024C2 00:E4B2: CA        DEX
C - - - - - 0x0024C3 00:E4B3: F0 C9     BEQ bra_E47E_loop
C - - - - - 0x0024C5 00:E4B5: 60        RTS



tbl_E4B6:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 3 - - - 0x0024C6 00:E4B6: 20 76     .dbyt $2076 ; 
- D 3 - - - 0x0024C8 00:E4B8: 08        .byte $08   ; counter
- D 3 - - - 0x0024C9 00:E4B9: B4        .byte                               $B4, $B5, $B6, $B7, $B8, $B9, $BA, $BB   ; 

;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 3 - - - 0x0024D1 00:E4C1: 20 F7     .dbyt $20F7 ; 
- D 3 - - - 0x0024D3 00:E4C3: 03        .byte $03   ; counter
- D 3 - - - 0x0024D4 00:E4C4: B0        .byte                                    $B0, $B3, $B2   ; 

;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 3 - - - 0x0024D7 00:E4C7: 21 77     .dbyt $2177 ; 
- D 3 - - - 0x0024D9 00:E4C9: 03        .byte $03   ; counter
- D 3 - - - 0x0024DA 00:E4CA: B1        .byte                                    $B1, $B3, $B2   ; 



sub_E4CD:
C - - - - - 0x0024DD 00:E4CD: A5 67     LDA ram_lives_p1
C - - - - - 0x0024DF 00:E4CF: D0 01     BNE bra_E4D2
- - - - - - 0x0024E1 00:E4D1: 60        RTS
bra_E4D2:
C - - - - - 0x0024E2 00:E4D2: 18        CLC
C - - - - - 0x0024E3 00:E4D3: 69 01     ADC #$01
C - - - - - 0x0024E5 00:E4D5: C9 07     CMP #$07
C - - - - - 0x0024E7 00:E4D7: 90 02     BCC bra_E4DB
- - - - - - 0x0024E9 00:E4D9: A9 07     LDA #$07
bra_E4DB:
C - - - - - 0x0024EB 00:E4DB: 85 02     STA ram_0002
C - - - - - 0x0024ED 00:E4DD: A9 04     LDA #$04
C - - - - - 0x0024EF 00:E4DF: 85 03     STA ram_0003
C - - - - - 0x0024F1 00:E4E1: A9 23     LDA #$23
C - - - - - 0x0024F3 00:E4E3: 85 00     STA ram_0000
C - - - - - 0x0024F5 00:E4E5: A9 17     LDA #$17
C - - - - - 0x0024F7 00:E4E7: 85 01     STA ram_0001
C - - - - - 0x0024F9 00:E4E9: A5 46     LDA ram_current_player
C - - - - - 0x0024FB 00:E4EB: 25 47     AND ram_game_mode
C - - - - - 0x0024FD 00:E4ED: F0 07     BEQ bra_E4F6
C - - - - - 0x0024FF 00:E4EF: A5 00     LDA ram_0000
C - - - - - 0x002501 00:E4F1: 18        CLC
C - - - - - 0x002502 00:E4F2: 69 08     ADC #$08
C - - - - - 0x002504 00:E4F4: 85 00     STA ram_0000
bra_E4F6:
C - - - - - 0x002506 00:E4F6: C6 02     DEC ram_0002
C - - - - - 0x002508 00:E4F8: D0 01     BNE bra_E4FB
C - - - - - 0x00250A 00:E4FA: 60        RTS
bra_E4FB:
C - - - - - 0x00250B 00:E4FB: C6 03     DEC ram_0003
C - - - - - 0x00250D 00:E4FD: D0 07     BNE bra_E506
C - - - - - 0x00250F 00:E4FF: A5 01     LDA ram_0001
C - - - - - 0x002511 00:E501: 18        CLC
C - - - - - 0x002512 00:E502: 69 3A     ADC #$3A
C - - - - - 0x002514 00:E504: 85 01     STA ram_0001
bra_E506:
C - - - - - 0x002516 00:E506: A0 3C     LDY #$3C
C - - - - - 0x002518 00:E508: 20 14 E5  JSR sub_E514
C - - - - - 0x00251B 00:E50B: A5 01     LDA ram_0001
C - - - - - 0x00251D 00:E50D: 18        CLC
C - - - - - 0x00251E 00:E50E: 69 02     ADC #$02
C - - - - - 0x002520 00:E510: 85 01     STA ram_0001
C - - - - - 0x002522 00:E512: D0 E2     BNE bra_E4F6    ; jmp



sub_E514:
C - - - - - 0x002524 00:E514: A5 00     LDA ram_0000
C - - - - - 0x002526 00:E516: 8D 06 20  STA $2006
C - - - - - 0x002529 00:E519: A5 01     LDA ram_0001
C - - - - - 0x00252B 00:E51B: 8D 06 20  STA $2006
C - - - - - 0x00252E 00:E51E: 8C 07 20  STY $2007
C - - - - - 0x002531 00:E521: C8        INY
C - - - - - 0x002532 00:E522: 8C 07 20  STY $2007
C - - - - - 0x002535 00:E525: A5 00     LDA ram_0000
C - - - - - 0x002537 00:E527: 8D 06 20  STA $2006
C - - - - - 0x00253A 00:E52A: A5 01     LDA ram_0001
C - - - - - 0x00253C 00:E52C: 18        CLC
C - - - - - 0x00253D 00:E52D: 69 20     ADC #$20
C - - - - - 0x00253F 00:E52F: 8D 06 20  STA $2006
C - - - - - 0x002542 00:E532: C8        INY
C - - - - - 0x002543 00:E533: 8C 07 20  STY $2007
C - - - - - 0x002546 00:E536: C8        INY
C - - - - - 0x002547 00:E537: 8C 07 20  STY $2007
C - - - - - 0x00254A 00:E53A: 60        RTS



sub_E53B:
C - - - - - 0x00254B 00:E53B: A9 00     LDA #$00
C - - - - - 0x00254D 00:E53D: 85 03     STA ram_0003
C - - - - - 0x00254F 00:E53F: 85 0E     STA ram_000E
C - - - - - 0x002551 00:E541: 85 0F     STA ram_000F
C - - - - - 0x002553 00:E543: A9 15     LDA #$15
C - - - - - 0x002555 00:E545: 85 0A     STA ram_000A
C - - - - - 0x002557 00:E547: A9 11     LDA #$11
C - - - - - 0x002559 00:E549: 85 0D     STA ram_000D
C - - - - - 0x00255B 00:E54B: A9 05     LDA #$05
C - - - - - 0x00255D 00:E54D: 85 0B     STA ram_000B
C - - - - - 0x00255F 00:E54F: 85 0C     STA ram_000C
C - - - - - 0x002561 00:E551: A5 68     LDA ram_stage_p1
C - - - - - 0x002563 00:E553: 85 02     STA ram_0002
C - - - - - 0x002565 00:E555: 38        SEC
C - - - - - 0x002566 00:E556: E9 07     SBC #$07
C - - - - - 0x002568 00:E558: 90 0D     BCC bra_E567
C - - - - - 0x00256A 00:E55A: C9 0C     CMP #$0C
C - - - - - 0x00256C 00:E55C: 90 02     BCC bra_E560
C - - - - - 0x00256E 00:E55E: A9 0C     LDA #$0C
bra_E560:
C - - - - - 0x002570 00:E560: AA        TAX
C - - - - - 0x002571 00:E561: A9 07     LDA #$07
C - - - - - 0x002573 00:E563: 85 02     STA ram_0002
C - - - - - 0x002575 00:E565: D0 02     BNE bra_E569    ; jmp
bra_E567:
C - - - - - 0x002577 00:E567: A2 00     LDX #$00
bra_E569:
C - - - - - 0x002579 00:E569: A9 22     LDA #$22
C - - - - - 0x00257B 00:E56B: 85 00     STA ram_0000
C - - - - - 0x00257D 00:E56D: A9 56     LDA #$56
C - - - - - 0x00257F 00:E56F: 85 01     STA ram_0001
C - - - - - 0x002581 00:E571: A5 46     LDA ram_current_player
C - - - - - 0x002583 00:E573: 25 47     AND ram_game_mode
C - - - - - 0x002585 00:E575: F0 07     BEQ bra_E57E
C - - - - - 0x002587 00:E577: A5 00     LDA ram_0000
C - - - - - 0x002589 00:E579: 18        CLC
C - - - - - 0x00258A 00:E57A: 69 08     ADC #$08
C - - - - - 0x00258C 00:E57C: 85 00     STA ram_0000
bra_E57E:
C - - - - - 0x00258E 00:E57E: A9 05     LDA #$05
C - - - - - 0x002590 00:E580: 85 04     STA ram_0004
bra_E582_loop:
C - - - - - 0x002592 00:E582: C6 04     DEC ram_0004
C - - - - - 0x002594 00:E584: D0 07     BNE bra_E58D
C - - - - - 0x002596 00:E586: A5 01     LDA ram_0001
C - - - - - 0x002598 00:E588: 18        CLC
C - - - - - 0x002599 00:E589: 69 38     ADC #$38
C - - - - - 0x00259B 00:E58B: 85 01     STA ram_0001
bra_E58D:
C - - - - - 0x00259D 00:E58D: BD 19 E6  LDA tbl_E619,X
C - - - - - 0x0025A0 00:E590: 85 05     STA ram_0005
C - - - - - 0x0025A2 00:E592: 0A        ASL
C - - - - - 0x0025A3 00:E593: 0A        ASL
C - - - - - 0x0025A4 00:E594: 69 60     ADC #$60
C - - - - - 0x0025A6 00:E596: A8        TAY
C - - - - - 0x0025A7 00:E597: 20 14 E5  JSR sub_E514
C - - - - - 0x0025AA 00:E59A: A4 03     LDY ram_0003
C - - - - - 0x0025AC 00:E59C: B9 2D E6  LDA tbl_E62D,Y
C - - - - - 0x0025AF 00:E59F: 85 06     STA ram_0006
C - - - - - 0x0025B1 00:E5A1: B9 2E E6  LDA tbl_E62D + $01,Y
C - - - - - 0x0025B4 00:E5A4: 85 07     STA ram_0007
C - - - - - 0x0025B6 00:E5A6: A4 05     LDY ram_0005
C - - - - - 0x0025B8 00:E5A8: B9 3D E6  LDA tbl_E63D,Y
bra_E5AB_loop:
C - - - - - 0x0025BB 00:E5AB: C6 07     DEC ram_0007
C - - - - - 0x0025BD 00:E5AD: 30 04     BMI bra_E5B3
C - - - - - 0x0025BF 00:E5AF: 0A        ASL
C - - - - - 0x0025C0 00:E5B0: 0A        ASL
C - - - - - 0x0025C1 00:E5B1: 90 F8     BCC bra_E5AB_loop
bra_E5B3:
C - - - - - 0x0025C3 00:E5B3: A4 06     LDY ram_0006
C - - - - - 0x0025C5 00:E5B5: 19 0A 00  ORA ram_buffer_000A,Y
C - - - - - 0x0025C8 00:E5B8: 99 0A 00  STA ram_buffer_000A,Y
C - - - - - 0x0025CB 00:E5BB: A5 01     LDA ram_0001
C - - - - - 0x0025CD 00:E5BD: 18        CLC
C - - - - - 0x0025CE 00:E5BE: 69 02     ADC #$02
C - - - - - 0x0025D0 00:E5C0: 85 01     STA ram_0001
C - - - - - 0x0025D2 00:E5C2: E6 03     INC ram_0003
C - - - - - 0x0025D4 00:E5C4: E6 03     INC ram_0003
C - - - - - 0x0025D6 00:E5C6: E8        INX
C - - - - - 0x0025D7 00:E5C7: C6 02     DEC ram_0002
C - - - - - 0x0025D9 00:E5C9: 10 B7     BPL bra_E582_loop
C - - - - - 0x0025DB 00:E5CB: A2 23     LDX #$23    ; 23E5
C - - - - - 0x0025DD 00:E5CD: A5 47     LDA ram_game_mode
C - - - - - 0x0025DF 00:E5CF: 25 46     AND ram_current_player
C - - - - - 0x0025E1 00:E5D1: F0 02     BEQ bra_E5D5
C - - - - - 0x0025E3 00:E5D3: A2 2B     LDX #$2B    ; 2BE5
bra_E5D5:
C - - - - - 0x0025E5 00:E5D5: 8E 06 20  STX $2006
C - - - - - 0x0025E8 00:E5D8: 86 00     STX ram_0000
C - - - - - 0x0025EA 00:E5DA: A9 E5     LDA #$E5
C - - - - - 0x0025EC 00:E5DC: 8D 06 20  STA $2006
C - - - - - 0x0025EF 00:E5DF: A2 00     LDX #$00
bra_E5E1_loop:
C - - - - - 0x0025F1 00:E5E1: A9 03     LDA #$03
C - - - - - 0x0025F3 00:E5E3: 85 01     STA ram_0001
bra_E5E5_loop:
C - - - - - 0x0025F5 00:E5E5: B5 0A     LDA ram_buffer_000A,X
C - - - - - 0x0025F7 00:E5E7: 8D 07 20  STA $2007
C - - - - - 0x0025FA 00:E5EA: E8        INX
C - - - - - 0x0025FB 00:E5EB: C6 01     DEC ram_0001
C - - - - - 0x0025FD 00:E5ED: D0 F6     BNE bra_E5E5_loop
C - - - - - 0x0025FF 00:E5EF: E6 02     INC ram_0002
C - - - - - 0x002601 00:E5F1: D0 0C     BNE bra_E5FF
; 23ED or 2BED
C - - - - - 0x002603 00:E5F3: A5 00     LDA ram_0000
C - - - - - 0x002605 00:E5F5: 8D 06 20  STA $2006
C - - - - - 0x002608 00:E5F8: A9 ED     LDA #$ED
C - - - - - 0x00260A 00:E5FA: 8D 06 20  STA $2006
C - - - - - 0x00260D 00:E5FD: D0 E2     BNE bra_E5E1_loop   ; jmp
bra_E5FF:
C - - - - - 0x00260F 00:E5FF: A9 3F     LDA #> $3F1D
C - - - - - 0x002611 00:E601: 8D 06 20  STA $2006
C - - - - - 0x002614 00:E604: A9 1D     LDA #< $3F1D
C - - - - - 0x002616 00:E606: 8D 06 20  STA $2006
C - - - - - 0x002619 00:E609: A5 68     LDA ram_stage_p1
C - - - - - 0x00261B 00:E60B: C9 10     CMP #$10
C - - - - - 0x00261D 00:E60D: 90 02     BCC bra_E611
C - - - - - 0x00261F 00:E60F: A9 0F     LDA #$0F
bra_E611:
C - - - - - 0x002621 00:E611: A8        TAY
C - - - - - 0x002622 00:E612: B9 45 E6  LDA tbl_E645_fruit_color,Y
C - - - - - 0x002625 00:E615: 8D 07 20  STA $2007
C - - - - - 0x002628 00:E618: 60        RTS



tbl_E619:
- D 3 - - - 0x002629 00:E619: 00        .byte $00   ; 00 
- D 3 - - - 0x00262A 00:E61A: 01        .byte $01   ; 01 
- D 3 - - - 0x00262B 00:E61B: 02        .byte $02   ; 02 
- D 3 - - - 0x00262C 00:E61C: 02        .byte $02   ; 03 
- D 3 - - - 0x00262D 00:E61D: 03        .byte $03   ; 04 
- D 3 - - - 0x00262E 00:E61E: 03        .byte $03   ; 05 
- D 3 - - - 0x00262F 00:E61F: 04        .byte $04   ; 06 
- D 3 - - - 0x002630 00:E620: 04        .byte $04   ; 07 
- D 3 - - - 0x002631 00:E621: 05        .byte $05   ; 08 
- D 3 - - - 0x002632 00:E622: 05        .byte $05   ; 09 
- D 3 - - - 0x002633 00:E623: 06        .byte $06   ; 0A 
- D 3 - - - 0x002634 00:E624: 06        .byte $06   ; 0B 
- D 3 - - - 0x002635 00:E625: 07        .byte $07   ; 0C 
- D 3 - - - 0x002636 00:E626: 07        .byte $07   ; 0D 
- D 3 - - - 0x002637 00:E627: 07        .byte $07   ; 0E 
- D 3 - - - 0x002638 00:E628: 07        .byte $07   ; 0F 
- D 3 - - - 0x002639 00:E629: 07        .byte $07   ; 10 
- D 3 - - - 0x00263A 00:E62A: 07        .byte $07   ; 11 
- D 3 - - - 0x00263B 00:E62B: 07        .byte $07   ; 12 
- D 3 - - - 0x00263C 00:E62C: 07        .byte $07   ; 13 



tbl_E62D:
- D 3 - - - 0x00263D 00:E62D: 00        .byte $00, $03   ; 00 
- D 3 - - - 0x00263F 00:E62F: 01        .byte $01, $02   ; 02 
- D 3 - - - 0x002641 00:E631: 01        .byte $01, $03   ; 04 
- D 3 - - - 0x002643 00:E633: 02        .byte $02, $02   ; 06 
- D 3 - - - 0x002645 00:E635: 03        .byte $03, $01   ; 08 
- D 3 - - - 0x002647 00:E637: 04        .byte $04, $00   ; 0A 
- D 3 - - - 0x002649 00:E639: 04        .byte $04, $01   ; 0C 
- D 3 - - - 0x00264B 00:E63B: 05        .byte $05, $00   ; 0E 



tbl_E63D:
- D 3 - - - 0x00264D 00:E63D: 02        .byte $02   ; 00 
- D 3 - - - 0x00264E 00:E63E: 02        .byte $02   ; 01 
- D 3 - - - 0x00264F 00:E63F: 02        .byte $02   ; 02 
- D 3 - - - 0x002650 00:E640: 02        .byte $02   ; 03 
- D 3 - - - 0x002651 00:E641: 03        .byte $03   ; 04 
- D 3 - - - 0x002652 00:E642: 03        .byte $03   ; 05 
- D 3 - - - 0x002653 00:E643: 03        .byte $03   ; 06 
- D 3 - - - 0x002654 00:E644: 03        .byte $03   ; 07 



tbl_E645_fruit_color:
- D 3 - - - 0x002655 00:E645: 16        .byte $16   ; 00 
- D 3 - - - 0x002656 00:E646: 16        .byte $16   ; 01 
- D 3 - - - 0x002657 00:E647: 26        .byte $26   ; 02 
- D 3 - - - 0x002658 00:E648: 26        .byte $26   ; 03 
- D 3 - - - 0x002659 00:E649: 06        .byte $06   ; 04 
- D 3 - - - 0x00265A 00:E64A: 06        .byte $06   ; 05 
- D 3 - - - 0x00265B 00:E64B: 19        .byte $19   ; 06 
- D 3 - - - 0x00265C 00:E64C: 19        .byte $19   ; 07 
- D 3 - - - 0x00265D 00:E64D: 17        .byte $17   ; 08 
- D 3 - - - 0x00265E 00:E64E: 17        .byte $17   ; 09 
- D 3 - - - 0x00265F 00:E64F: 17        .byte $17   ; 0A 
- D 3 - - - 0x002660 00:E650: 17        .byte $17   ; 0B 
- D 3 - - - 0x002661 00:E651: 12        .byte $12   ; 0C 
- D 3 - - - 0x002662 00:E652: 12        .byte $12   ; 0D 
- D 3 - - - 0x002663 00:E653: 12        .byte $12   ; 0E 
- D 3 - - - 0x002664 00:E654: 12        .byte $12   ; 0F 



ofs_003_E655_0E:
C - - J - - 0x002665 00:E655: A9 08     LDA #$08
C - - - - - 0x002667 00:E657: 85 43     STA ram_for_2000
C - - - - - 0x002669 00:E659: 8D 00 20  STA $2000
bra_E65C_infinite_loop:
C - - - - - 0x00266C 00:E65C: AD 02 20  LDA $2002
C - - - - - 0x00266F 00:E65F: 10 FB     BPL bra_E65C_infinite_loop
C - - - - - 0x002671 00:E661: A9 01     LDA #$01
C - - - - - 0x002673 00:E663: 8D 0D 06  STA ram_060D
C - - - - - 0x002676 00:E666: 8D 0E 06  STA ram_060E
C - - - - - 0x002679 00:E669: A9 00     LDA #$00
C - - - - - 0x00267B 00:E66B: 8D 01 20  STA $2001
C - - - - - 0x00267E 00:E66E: 20 C4 E6  JSR sub_E6C4
C - - - - - 0x002681 00:E671: A9 01     LDA #$01
C - - - - - 0x002683 00:E673: 8D 8D 02  STA ram_028D
C - - - - - 0x002686 00:E676: A9 01     LDA #$01
C - - - - - 0x002688 00:E678: 8D 93 02  STA ram_0293
C - - - - - 0x00268B 00:E67B: A9 F7     LDA #$F7
C - - - - - 0x00268D 00:E67D: 8D 78 02  STA ram_spr_pos_X_hi + $04
C - - - - - 0x002690 00:E680: A9 7C     LDA #$7C
C - - - - - 0x002692 00:E682: 8D 7A 02  STA ram_spr_pos_Y_hi + $04
C - - - - - 0x002695 00:E685: A9 FF     LDA #< $00FF
C - - - - - 0x002697 00:E687: 85 1E     STA ram_obj_pos_X_hi + $04
C - - - - - 0x002699 00:E689: A9 00     LDA #> $00FF
C - - - - - 0x00269B 00:E68B: 85 1F     STA ram_obj_pos_X_lo + $04
C - - - - - 0x00269D 00:E68D: A9 00     LDA #$00
C - - - - - 0x00269F 00:E68F: 85 88     STA ram_0088
C - - - - - 0x0026A1 00:E691: AD 02 20  LDA $2002
C - - - - - 0x0026A4 00:E694: A9 3F     LDA #> $3F10
C - - - - - 0x0026A6 00:E696: 8D 06 20  STA $2006
C - - - - - 0x0026A9 00:E699: A9 10     LDA #< $3F10
C - - - - - 0x0026AB 00:E69B: 8D 06 20  STA $2006
C - - - - - 0x0026AE 00:E69E: A0 00     LDY #$00
bra_E6A0_loop:
C - - - - - 0x0026B0 00:E6A0: B9 3B E7  LDA tbl_E73B_spr_palette,Y
C - - - - - 0x0026B3 00:E6A3: 8D 07 20  STA $2007
C - - - - - 0x0026B6 00:E6A6: C8        INY
C - - - - - 0x0026B7 00:E6A7: C0 10     CPY #$10
C - - - - - 0x0026B9 00:E6A9: D0 F5     BNE bra_E6A0_loop
C - - - - - 0x0026BB 00:E6AB: A9 20     LDA #con_tile + $20
C - - - - - 0x0026BD 00:E6AD: 8D 6F 02  STA ram_ppu_buffer_1up + $02
C - - - - - 0x0026C0 00:E6B0: 8D 70 02  STA ram_ppu_buffer_1up + $03
C - - - - - 0x0026C3 00:E6B3: 8D 71 02  STA ram_ppu_buffer_1up + $04
C - - - - - 0x0026C6 00:E6B6: A9 10     LDA #con_script_10
C - - - - - 0x0026C8 00:E6B8: 85 3F     STA ram_script
C - - - - - 0x0026CA 00:E6BA: A9 88     LDA #$88
C - - - - - 0x0026CC 00:E6BC: 8D 00 20  STA $2000
C - - - - - 0x0026CF 00:E6BF: 85 43     STA ram_for_2000
C - - - - - 0x0026D1 00:E6C1: 4C DD C9  JMP loc_C9DD



sub_E6C4:
C - - - - - 0x0026D4 00:E6C4: A2 20     LDX #$20    ; 2000
C - - - - - 0x0026D6 00:E6C6: A5 47     LDA ram_game_mode
C - - - - - 0x0026D8 00:E6C8: 25 46     AND ram_current_player
C - - - - - 0x0026DA 00:E6CA: F0 02     BEQ bra_E6CE
C - - - - - 0x0026DC 00:E6CC: A2 28     LDX #$28    ; 2800
bra_E6CE:
C - - - - - 0x0026DE 00:E6CE: AD 02 20  LDA $2002
C - - - - - 0x0026E1 00:E6D1: 8E 06 20  STX $2006
C - - - - - 0x0026E4 00:E6D4: A9 00     LDA #$00
C - - - - - 0x0026E6 00:E6D6: 8D 06 20  STA $2006
C - - - - - 0x0026E9 00:E6D9: A9 1C     LDA #$1C
C - - - - - 0x0026EB 00:E6DB: 85 00     STA ram_0000
bra_E6DD_loop:
C - - - - - 0x0026ED 00:E6DD: A9 02     LDA #$02
C - - - - - 0x0026EF 00:E6DF: 85 01     STA ram_0001
C - - - - - 0x0026F1 00:E6E1: A9 1C     LDA #$1C
C - - - - - 0x0026F3 00:E6E3: 85 02     STA ram_0002
C - - - - - 0x0026F5 00:E6E5: A9 02     LDA #$02
C - - - - - 0x0026F7 00:E6E7: 85 03     STA ram_0003
C - - - - - 0x0026F9 00:E6E9: A9 2D     LDA #$2D
bra_E6EB_loop:
C - - - - - 0x0026FB 00:E6EB: 8D 07 20  STA $2007
C - - - - - 0x0026FE 00:E6EE: A6 01     LDX ram_0001
C - - - - - 0x002700 00:E6F0: F0 08     BEQ bra_E6FA
C - - - - - 0x002702 00:E6F2: C6 01     DEC ram_0001
C - - - - - 0x002704 00:E6F4: D0 F5     BNE bra_E6EB_loop
C - - - - - 0x002706 00:E6F6: A9 20     LDA #$20
C - - - - - 0x002708 00:E6F8: D0 F1     BNE bra_E6EB_loop    ; jmp
bra_E6FA:
C - - - - - 0x00270A 00:E6FA: A6 02     LDX ram_0002
C - - - - - 0x00270C 00:E6FC: F0 08     BEQ bra_E706
C - - - - - 0x00270E 00:E6FE: C6 02     DEC ram_0002
C - - - - - 0x002710 00:E700: D0 E9     BNE bra_E6EB_loop
C - - - - - 0x002712 00:E702: A9 2D     LDA #$2D
C - - - - - 0x002714 00:E704: D0 E5     BNE bra_E6EB_loop    ; jmp
bra_E706:
C - - - - - 0x002716 00:E706: C6 03     DEC ram_0003
C - - - - - 0x002718 00:E708: D0 E1     BNE bra_E6EB_loop
C - - - - - 0x00271A 00:E70A: C6 00     DEC ram_0000
C - - - - - 0x00271C 00:E70C: D0 CF     BNE bra_E6DD_loop
C - - - - - 0x00271E 00:E70E: A9 00     LDA #$00
C - - - - - 0x002720 00:E710: AA        TAX
bra_E711_loop:
C - - - - - 0x002721 00:E711: 8D 07 20  STA $2007
C - - - - - 0x002724 00:E714: E8        INX
C - - - - - 0x002725 00:E715: E0 40     CPX #$40
C - - - - - 0x002727 00:E717: D0 F8     BNE bra_E711_loop
C - - - - - 0x002729 00:E719: A5 87     LDA ram_0087
C - - - - - 0x00272B 00:E71B: C9 02     CMP #$02
C - - - - - 0x00272D 00:E71D: F0 01     BEQ bra_E720
C - - - - - 0x00272F 00:E71F: 60        RTS
bra_E720:
C - - - - - 0x002730 00:E720: A2 22     LDX #$22    ; 2230
C - - - - - 0x002732 00:E722: A5 47     LDA ram_game_mode
C - - - - - 0x002734 00:E724: 25 46     AND ram_current_player
C - - - - - 0x002736 00:E726: F0 02     BEQ bra_E72A
- - - - - - 0x002738 00:E728: A2 2A     LDX #$2A    ; 2A30
bra_E72A:
C - - - - - 0x00273A 00:E72A: AD 02 20  LDA $2002
C - - - - - 0x00273D 00:E72D: 8E 06 20  STX $2006
C - - - - - 0x002740 00:E730: A9 30     LDA #$30
C - - - - - 0x002742 00:E732: 8D 06 20  STA $2006
C - - - - - 0x002745 00:E735: A9 5E     LDA #$5E
C - - - - - 0x002747 00:E737: 8D 07 20  STA $2007
C - - - - - 0x00274A 00:E73A: 60        RTS



tbl_E73B_spr_palette:
- D 3 - - - 0x00274B 00:E73B: 0F        .byte $0F, $36, $20, $06   ; 
- D 3 - - - 0x00274F 00:E73F: 0F        .byte $0F, $27, $20, $06   ; 
- D 3 - - - 0x002753 00:E743: 0F        .byte $0F, $11, $20, $33   ; 
- D 3 - - - 0x002757 00:E747: 0F        .byte $0F, $36, $20, $11   ; 



ofs_003_E74B_10:
C - - J - - 0x00275B 00:E74B: 20 A5 E9  JSR sub_E9A5
C - - - - - 0x00275E 00:E74E: 20 20 EA  JSR sub_EA20
C - - - - - 0x002761 00:E751: 20 5C DA  JSR sub_DA5C
C - - - - - 0x002764 00:E754: 20 5A E7  JSR sub_E75A
C - - - - - 0x002767 00:E757: 4C DD C9  JMP loc_C9DD
sub_E75A:
C - - - - - 0x00276A 00:E75A: A4 87     LDY ram_0087
C - - - - - 0x00276C 00:E75C: B9 69 E7  LDA tbl_E769,Y
C - - - - - 0x00276F 00:E75F: 85 10     STA ram_indirect_jmp
C - - - - - 0x002771 00:E761: B9 6A E7  LDA tbl_E769 + $01,Y
C - - - - - 0x002774 00:E764: 85 11     STA ram_indirect_jmp + $01
C - - - - - 0x002776 00:E766: 6C 10 00  JMP (ram_indirect_jmp)



tbl_E769:
- D 3 - - - 0x002779 00:E769: 6F E7     .word ofs_012_E76F_00
- D 3 - - - 0x00277B 00:E76B: 53 E8     .word ofs_012_E853_02
- D 3 - - - 0x00277D 00:E76D: FA E8     .word ofs_012_E8FA_04



ofs_012_E76F_00:
C - - J - - 0x00277F 00:E76F: A4 88     LDY ram_0088
C - - - - - 0x002781 00:E771: B9 7E E7  LDA tbl_E77E,Y
C - - - - - 0x002784 00:E774: 85 10     STA ram_indirect_jmp
C - - - - - 0x002786 00:E776: B9 7F E7  LDA tbl_E77E + $01,Y
C - - - - - 0x002789 00:E779: 85 11     STA ram_indirect_jmp + $01
C - - - - - 0x00278B 00:E77B: 6C 10 00  JMP (ram_indirect_jmp)



tbl_E77E:
- D 3 - - - 0x00278E 00:E77E: 86 E7     .word ofs_013_E786_00
- D 3 - - - 0x002790 00:E780: AF E7     .word ofs_013_E7AF_02
- D 3 - - - 0x002792 00:E782: DA E7     .word ofs_013_E7DA_04
- D 3 - - - 0x002794 00:E784: 46 E8     .word ofs_013_E846_06



ofs_013_E786_00:
C - - J - - 0x002796 00:E786: AD 78 02  LDA ram_spr_pos_X_hi + $04
C - - - - - 0x002799 00:E789: C9 D0     CMP #$D0
C - - - - - 0x00279B 00:E78B: 90 01     BCC bra_E78E
C - - - - - 0x00279D 00:E78D: 60        RTS
bra_E78E:
C - - - - - 0x00279E 00:E78E: E6 88     INC ram_0088
C - - - - - 0x0027A0 00:E790: E6 88     INC ram_0088
C - - - - - 0x0027A2 00:E792: A9 0C     LDA #$0C
C - - - - - 0x0027A4 00:E794: 8D 8C 02  STA ram_028C
C - - - - - 0x0027A7 00:E797: A9 20     LDA #$20
C - - - - - 0x0027A9 00:E799: 8D 92 02  STA ram_0292
C - - - - - 0x0027AC 00:E79C: A9 F7     LDA #$F7
C - - - - - 0x0027AE 00:E79E: 8D 74 02  STA ram_spr_pos_X_hi
C - - - - - 0x0027B1 00:E7A1: A9 7C     LDA #$7C
C - - - - - 0x0027B3 00:E7A3: 8D 76 02  STA ram_spr_pos_Y_hi
C - - - - - 0x0027B6 00:E7A6: A9 FE     LDA #> $FEE0
C - - - - - 0x0027B8 00:E7A8: 85 1A     STA ram_obj_pos_X_hi
C - - - - - 0x0027BA 00:E7AA: A9 E0     LDA #< $FEE0
C - - - - - 0x0027BC 00:E7AC: 85 1B     STA ram_obj_pos_X_lo
C - - - - - 0x0027BE 00:E7AE: 60        RTS



ofs_013_E7AF_02:
C - - J - - 0x0027BF 00:E7AF: AD 74 02  LDA ram_spr_pos_X_hi
C - - - - - 0x0027C2 00:E7B2: F0 01     BEQ bra_E7B5
C - - - - - 0x0027C4 00:E7B4: 60        RTS
bra_E7B5:
C - - - - - 0x0027C5 00:E7B5: E6 88     INC ram_0088
C - - - - - 0x0027C7 00:E7B7: E6 88     INC ram_0088
C - - - - - 0x0027C9 00:E7B9: A9 40     LDA #$40
C - - - - - 0x0027CB 00:E7BB: 85 4C     STA ram_004C
C - - - - - 0x0027CD 00:E7BD: A9 1E     LDA #$1E
C - - - - - 0x0027CF 00:E7BF: 8D 8C 02  STA ram_028C
C - - - - - 0x0027D2 00:E7C2: A9 22     LDA #$22
C - - - - - 0x0027D4 00:E7C4: 8D 92 02  STA ram_0292
C - - - - - 0x0027D7 00:E7C7: A9 09     LDA #$09
C - - - - - 0x0027D9 00:E7C9: 8D 74 02  STA ram_spr_pos_X_hi
C - - - - - 0x0027DC 00:E7CC: A9 7C     LDA #$7C
C - - - - - 0x0027DE 00:E7CE: 8D 76 02  STA ram_spr_pos_Y_hi
C - - - - - 0x0027E1 00:E7D1: A9 01     LDA #> $0100
C - - - - - 0x0027E3 00:E7D3: 85 1A     STA ram_obj_pos_X_hi
C - - - - - 0x0027E5 00:E7D5: A9 00     LDA #< $0100
C - - - - - 0x0027E7 00:E7D7: 85 1B     STA ram_obj_pos_X_lo
C - - - - - 0x0027E9 00:E7D9: 60        RTS



ofs_013_E7DA_04:
C - - J - - 0x0027EA 00:E7DA: A9 01     LDA #$01
C - - - - - 0x0027EC 00:E7DC: 8D 0D 06  STA ram_060D
C - - - - - 0x0027EF 00:E7DF: 8D 0E 06  STA ram_060E
C - - - - - 0x0027F2 00:E7E2: AD 74 02  LDA ram_spr_pos_X_hi
C - - - - - 0x0027F5 00:E7E5: C9 80     CMP #$80
C - - - - - 0x0027F7 00:E7E7: B0 01     BCS bra_E7EA
C - - - - - 0x0027F9 00:E7E9: 60        RTS
bra_E7EA:
C - - - - - 0x0027FA 00:E7EA: E6 88     INC ram_0088
C - - - - - 0x0027FC 00:E7EC: E6 88     INC ram_0088
C - - - - - 0x0027FE 00:E7EE: A9 01     LDA #> $01C0
C - - - - - 0x002800 00:E7F0: 85 1E     STA ram_obj_pos_X_hi + $04
C - - - - - 0x002802 00:E7F2: 85 22     STA ram_obj_pos_X_hi + $08
C - - - - - 0x002804 00:E7F4: 85 26     STA ram_obj_pos_X_hi + $0C
C - - - - - 0x002806 00:E7F6: 85 2A     STA ram_obj_pos_X_hi + $10
C - - - - - 0x002808 00:E7F8: A9 C0     LDA #< $01C0
C - - - - - 0x00280A 00:E7FA: 85 1F     STA ram_obj_pos_X_lo + $04
C - - - - - 0x00280C 00:E7FC: 85 23     STA ram_obj_pos_X_lo + $08
C - - - - - 0x00280E 00:E7FE: 85 27     STA ram_obj_pos_X_lo + $0C
C - - - - - 0x002810 00:E800: 85 2B     STA ram_obj_pos_X_lo + $10
C - - - - - 0x002812 00:E802: 18        CLC
C - - - - - 0x002813 00:E803: A9 38     LDA #$38
C - - - - - 0x002815 00:E805: 8D 8D 02  STA ram_028D
C - - - - - 0x002818 00:E808: 69 01     ADC #$01
C - - - - - 0x00281A 00:E80A: 8D 8E 02  STA ram_028E
C - - - - - 0x00281D 00:E80D: 69 01     ADC #$01
C - - - - - 0x00281F 00:E80F: 8D 8F 02  STA ram_028F
C - - - - - 0x002822 00:E812: 69 01     ADC #$01
C - - - - - 0x002824 00:E814: 8D 90 02  STA ram_0290
C - - - - - 0x002827 00:E817: A9 21     LDA #$21
C - - - - - 0x002829 00:E819: 8D 93 02  STA ram_0293
C - - - - - 0x00282C 00:E81C: 8D 94 02  STA ram_0294
C - - - - - 0x00282F 00:E81F: 8D 95 02  STA ram_0295
C - - - - - 0x002832 00:E822: 8D 96 02  STA ram_0296
C - - - - - 0x002835 00:E825: A9 09     LDA #$09
C - - - - - 0x002837 00:E827: 8D 78 02  STA ram_spr_pos_X_hi + $04
C - - - - - 0x00283A 00:E82A: 8D 80 02  STA ram_spr_pos_X_hi + $0C
C - - - - - 0x00283D 00:E82D: A9 19     LDA #$19
C - - - - - 0x00283F 00:E82F: 8D 7C 02  STA ram_spr_pos_X_hi + $08
C - - - - - 0x002842 00:E832: 8D 84 02  STA ram_spr_pos_X_hi + $10
C - - - - - 0x002845 00:E835: A9 6C     LDA #$6C
C - - - - - 0x002847 00:E837: 8D 7A 02  STA ram_spr_pos_Y_hi + $04
C - - - - - 0x00284A 00:E83A: 8D 7E 02  STA ram_spr_pos_Y_hi + $08
C - - - - - 0x00284D 00:E83D: A9 7C     LDA #$7C
C - - - - - 0x00284F 00:E83F: 8D 82 02  STA ram_spr_pos_Y_hi + $0C
C - - - - - 0x002852 00:E842: 8D 86 02  STA ram_spr_pos_Y_hi + $10
C - - - - - 0x002855 00:E845: 60        RTS



ofs_013_E846_06:
C - - J - - 0x002856 00:E846: AD 78 02  LDA ram_spr_pos_X_hi + $04
C - - - - - 0x002859 00:E849: F0 01     BEQ bra_E84C
C - - - - - 0x00285B 00:E84B: 60        RTS
bra_E84C:
C - - - - - 0x00285C 00:E84C: A9 40     LDA #$40
C - - - - - 0x00285E 00:E84E: 85 4C     STA ram_004C
C - - - - - 0x002860 00:E850: 4C A0 E9  JMP loc_E9A0



ofs_012_E853_02:
C - - J - - 0x002863 00:E853: A4 88     LDY ram_0088
C - - - - - 0x002865 00:E855: B9 62 E8  LDA tbl_E862,Y
C - - - - - 0x002868 00:E858: 85 10     STA ram_indirect_jmp
C - - - - - 0x00286A 00:E85A: B9 63 E8  LDA tbl_E862 + $01,Y
C - - - - - 0x00286D 00:E85D: 85 11     STA ram_indirect_jmp + $01
C - - - - - 0x00286F 00:E85F: 6C 10 00  JMP (ram_indirect_jmp)



tbl_E862:
- D 3 - - - 0x002872 00:E862: 68 E8     .word ofs_014_E868_00
- D 3 - - - 0x002874 00:E864: 91 E8     .word ofs_014_E891_02
- D 3 - - - 0x002876 00:E866: CB E8     .word ofs_014_E8CB_04



ofs_014_E868_00:
C - - J - - 0x002878 00:E868: AD 78 02  LDA ram_spr_pos_X_hi + $04
C - - - - - 0x00287B 00:E86B: C9 A0     CMP #$A0
C - - - - - 0x00287D 00:E86D: 90 01     BCC bra_E870
C - - - - - 0x00287F 00:E86F: 60        RTS
bra_E870:
C - - - - - 0x002880 00:E870: E6 88     INC ram_0088
C - - - - - 0x002882 00:E872: E6 88     INC ram_0088
C - - - - - 0x002884 00:E874: A9 0C     LDA #$0C
C - - - - - 0x002886 00:E876: 8D 8C 02  STA ram_028C
C - - - - - 0x002889 00:E879: A9 20     LDA #$20
C - - - - - 0x00288B 00:E87B: 8D 92 02  STA ram_0292
C - - - - - 0x00288E 00:E87E: A9 F7     LDA #$F7
C - - - - - 0x002890 00:E880: 8D 74 02  STA ram_spr_pos_X_hi
C - - - - - 0x002893 00:E883: A9 7C     LDA #$7C
C - - - - - 0x002895 00:E885: 8D 76 02  STA ram_spr_pos_Y_hi
C - - - - - 0x002898 00:E888: A9 FF     LDA #> $FF00
C - - - - - 0x00289A 00:E88A: 85 1A     STA ram_obj_pos_X_hi
C - - - - - 0x00289C 00:E88C: A9 00     LDA #< $FF00
C - - - - - 0x00289E 00:E88E: 85 1B     STA ram_obj_pos_X_lo
C - - - - - 0x0028A0 00:E890: 60        RTS



ofs_014_E891_02:
C - - J - - 0x0028A1 00:E891: AD 74 02  LDA ram_spr_pos_X_hi
C - - - - - 0x0028A4 00:E894: C9 80     CMP #$80
C - - - - - 0x0028A6 00:E896: D0 23     BNE bra_E8BB
C - - - - - 0x0028A8 00:E898: A9 FF     LDA #> $FFC0
C - - - - - 0x0028AA 00:E89A: 85 1A     STA ram_obj_pos_X_hi
C - - - - - 0x0028AC 00:E89C: A9 C0     LDA #< $FFC0
C - - - - - 0x0028AE 00:E89E: 85 1B     STA ram_obj_pos_X_lo
C - - - - - 0x0028B0 00:E8A0: A9 42     LDA #$42
C - - - - - 0x0028B2 00:E8A2: 8D 8E 02  STA ram_028E
C - - - - - 0x0028B5 00:E8A5: A9 00     LDA #$00
C - - - - - 0x0028B7 00:E8A7: 8D 94 02  STA ram_0294
C - - - - - 0x0028BA 00:E8AA: A9 80     LDA #$80
C - - - - - 0x0028BC 00:E8AC: 8D 7C 02  STA ram_spr_pos_X_hi + $08
C - - - - - 0x0028BF 00:E8AF: A9 7C     LDA #$7C
C - - - - - 0x0028C1 00:E8B1: 8D 7E 02  STA ram_spr_pos_Y_hi + $08
C - - - - - 0x0028C4 00:E8B4: A9 00     LDA #$00
C - - - - - 0x0028C6 00:E8B6: 85 22     STA ram_obj_pos_X_hi + $08
C - - - - - 0x0028C8 00:E8B8: 85 23     STA ram_obj_pos_X_lo + $08
C - - - - - 0x0028CA 00:E8BA: 60        RTS
bra_E8BB:
C - - - - - 0x0028CB 00:E8BB: C9 78     CMP #$78
C - - - - - 0x0028CD 00:E8BD: F0 01     BEQ bra_E8C0
C - - - - - 0x0028CF 00:E8BF: 60        RTS
bra_E8C0:
C - - - - - 0x0028D0 00:E8C0: A9 00     LDA #$00
C - - - - - 0x0028D2 00:E8C2: 85 1A     STA ram_obj_pos_X_hi
C - - - - - 0x0028D4 00:E8C4: 85 1B     STA ram_obj_pos_X_lo
C - - - - - 0x0028D6 00:E8C6: E6 88     INC ram_0088
C - - - - - 0x0028D8 00:E8C8: E6 88     INC ram_0088
C - - - - - 0x0028DA 00:E8CA: 60        RTS



ofs_014_E8CB_04:
C - - J - - 0x0028DB 00:E8CB: AD 8C 02  LDA ram_028C
C - - - - - 0x0028DE 00:E8CE: 29 40     AND #$40
C - - - - - 0x0028E0 00:E8D0: D0 0F     BNE bra_E8E1
C - - - - - 0x0028E2 00:E8D2: A9 46     LDA #$46
C - - - - - 0x0028E4 00:E8D4: 8D 8C 02  STA ram_028C
C - - - - - 0x0028E7 00:E8D7: A9 45     LDA #$45
C - - - - - 0x0028E9 00:E8D9: 8D 8E 02  STA ram_028E
C - - - - - 0x0028EC 00:E8DC: A9 40     LDA #$40
C - - - - - 0x0028EE 00:E8DE: 85 89     STA ram_0089
C - - - - - 0x0028F0 00:E8E0: 60        RTS
bra_E8E1:
C - - - - - 0x0028F1 00:E8E1: C6 89     DEC ram_0089
C - - - - - 0x0028F3 00:E8E3: F0 01     BEQ bra_E8E6
C - - - - - 0x0028F5 00:E8E5: 60        RTS
bra_E8E6:
C - - - - - 0x0028F6 00:E8E6: AD 8C 02  LDA ram_028C
C - - - - - 0x0028F9 00:E8E9: C9 47     CMP #$47
C - - - - - 0x0028FB 00:E8EB: D0 03     BNE bra_E8F0
C - - - - - 0x0028FD 00:E8ED: 4C A0 E9  JMP loc_E9A0
bra_E8F0:
C - - - - - 0x002900 00:E8F0: A9 47     LDA #$47
C - - - - - 0x002902 00:E8F2: 8D 8C 02  STA ram_028C
C - - - - - 0x002905 00:E8F5: A9 40     LDA #$40
C - - - - - 0x002907 00:E8F7: 85 89     STA ram_0089
C - - - - - 0x002909 00:E8F9: 60        RTS



ofs_012_E8FA_04:
C - - J - - 0x00290A 00:E8FA: A4 88     LDY ram_0088
C - - - - - 0x00290C 00:E8FC: B9 09 E9  LDA tbl_E909,Y
C - - - - - 0x00290F 00:E8FF: 85 10     STA ram_indirect_jmp
C - - - - - 0x002911 00:E901: B9 0A E9  LDA tbl_E909 + $01,Y
C - - - - - 0x002914 00:E904: 85 11     STA ram_indirect_jmp + $01
C - - - - - 0x002916 00:E906: 6C 10 00  JMP (ram_indirect_jmp)



tbl_E909:
- D 3 - - - 0x002919 00:E909: 11 E9     .word ofs_015_E911_00
- D 3 - - - 0x00291B 00:E90B: 3A E9     .word ofs_015_E93A_02
- D 3 - - - 0x00291D 00:E90D: 65 E9     .word ofs_015_E965_04
- D 3 - - - 0x00291F 00:E90F: 96 E9     .word ofs_015_E996_06



ofs_015_E911_00:
C - - J - - 0x002921 00:E911: AD 78 02  LDA ram_spr_pos_X_hi + $04
C - - - - - 0x002924 00:E914: C9 D8     CMP #$D8
C - - - - - 0x002926 00:E916: 90 01     BCC bra_E919
C - - - - - 0x002928 00:E918: 60        RTS
bra_E919:
C - - - - - 0x002929 00:E919: E6 88     INC ram_0088
C - - - - - 0x00292B 00:E91B: E6 88     INC ram_0088
C - - - - - 0x00292D 00:E91D: A9 4C     LDA #$4C
C - - - - - 0x00292F 00:E91F: 8D 8C 02  STA ram_028C
C - - - - - 0x002932 00:E922: A9 20     LDA #$20
C - - - - - 0x002934 00:E924: 8D 92 02  STA ram_0292
C - - - - - 0x002937 00:E927: A9 F7     LDA #$F7
C - - - - - 0x002939 00:E929: 8D 74 02  STA ram_spr_pos_X_hi
C - - - - - 0x00293C 00:E92C: A9 7C     LDA #$7C
C - - - - - 0x00293E 00:E92E: 8D 76 02  STA ram_spr_pos_Y_hi
C - - - - - 0x002941 00:E931: A9 FF     LDA #> $FF00
C - - - - - 0x002943 00:E933: 85 1A     STA ram_obj_pos_X_hi
C - - - - - 0x002945 00:E935: A9 00     LDA #< $FF00
C - - - - - 0x002947 00:E937: 85 1B     STA ram_obj_pos_X_lo
C - - - - - 0x002949 00:E939: 60        RTS



ofs_015_E93A_02:
C - - J - - 0x00294A 00:E93A: AD 74 02  LDA ram_spr_pos_X_hi
C - - - - - 0x00294D 00:E93D: F0 01     BEQ bra_E940
C - - - - - 0x00294F 00:E93F: 60        RTS
bra_E940:
C - - - - - 0x002950 00:E940: E6 88     INC ram_0088
C - - - - - 0x002952 00:E942: E6 88     INC ram_0088
C - - - - - 0x002954 00:E944: A9 28     LDA #$28
C - - - - - 0x002956 00:E946: 85 4C     STA ram_004C
C - - - - - 0x002958 00:E948: A9 4A     LDA #$4A
C - - - - - 0x00295A 00:E94A: 8D 8C 02  STA ram_028C
C - - - - - 0x00295D 00:E94D: A9 23     LDA #$23
C - - - - - 0x00295F 00:E94F: 8D 92 02  STA ram_0292
C - - - - - 0x002962 00:E952: A9 09     LDA #$09
C - - - - - 0x002964 00:E954: 8D 74 02  STA ram_spr_pos_X_hi
C - - - - - 0x002967 00:E957: A9 7C     LDA #$7C
C - - - - - 0x002969 00:E959: 8D 76 02  STA ram_spr_pos_Y_hi
C - - - - - 0x00296C 00:E95C: A9 01     LDA #> $0100
C - - - - - 0x00296E 00:E95E: 85 1A     STA ram_obj_pos_X_hi
C - - - - - 0x002970 00:E960: A9 00     LDA #< $0100
C - - - - - 0x002972 00:E962: 85 1B     STA ram_obj_pos_X_lo
C - - - - - 0x002974 00:E964: 60        RTS



ofs_015_E965_04:
C - - J - - 0x002975 00:E965: A9 01     LDA #$01
C - - - - - 0x002977 00:E967: 8D 0D 06  STA ram_060D
C - - - - - 0x00297A 00:E96A: 8D 0E 06  STA ram_060E
C - - - - - 0x00297D 00:E96D: AD 74 02  LDA ram_spr_pos_X_hi
C - - - - - 0x002980 00:E970: C9 19     CMP #$19
C - - - - - 0x002982 00:E972: B0 01     BCS bra_E975
C - - - - - 0x002984 00:E974: 60        RTS
bra_E975:
C - - - - - 0x002985 00:E975: E6 88     INC ram_0088
C - - - - - 0x002987 00:E977: E6 88     INC ram_0088
C - - - - - 0x002989 00:E979: A9 4C     LDA #$4C
C - - - - - 0x00298B 00:E97B: 8D 8D 02  STA ram_028D
C - - - - - 0x00298E 00:E97E: A9 21     LDA #$21
C - - - - - 0x002990 00:E980: 8D 93 02  STA ram_0293
C - - - - - 0x002993 00:E983: A9 11     LDA #$11
C - - - - - 0x002995 00:E985: 8D 78 02  STA ram_spr_pos_X_hi + $04
C - - - - - 0x002998 00:E988: A9 84     LDA #$84
C - - - - - 0x00299A 00:E98A: 8D 7A 02  STA ram_spr_pos_Y_hi + $04
C - - - - - 0x00299D 00:E98D: A9 01     LDA #> $0100
C - - - - - 0x00299F 00:E98F: 85 1E     STA ram_obj_pos_X_hi + $04
C - - - - - 0x0029A1 00:E991: A9 00     LDA #< $0100
C - - - - - 0x0029A3 00:E993: 85 1F     STA ram_obj_pos_X_lo + $04
C - - - - - 0x0029A5 00:E995: 60        RTS



ofs_015_E996_06:
C - - J - - 0x0029A6 00:E996: AD 78 02  LDA ram_spr_pos_X_hi + $04
C - - - - - 0x0029A9 00:E999: F0 01     BEQ bra_E99C
C - - - - - 0x0029AB 00:E99B: 60        RTS
bra_E99C:
C - - - - - 0x0029AC 00:E99C: A9 40     LDA #$40
C - - - - - 0x0029AE 00:E99E: 85 4C     STA ram_004C
loc_E9A0:
C D 3 - - - 0x0029B0 00:E9A0: A9 00     LDA #con_script_00
C - - - - - 0x0029B2 00:E9A2: 85 3F     STA ram_script
C - - - - - 0x0029B4 00:E9A4: 60        RTS



sub_E9A5:
C - - - - - 0x0029B5 00:E9A5: A9 1A     LDA #< ram_obj_position
C - - - - - 0x0029B7 00:E9A7: 85 00     STA ram_0000
C - - - - - 0x0029B9 00:E9A9: A9 00     LDA #> ram_obj_position
C - - - - - 0x0029BB 00:E9AB: 85 01     STA ram_0001
C - - - - - 0x0029BD 00:E9AD: A9 74     LDA #< ram_spr_position
C - - - - - 0x0029BF 00:E9AF: 85 02     STA ram_0002
C - - - - - 0x0029C1 00:E9B1: A9 02     LDA #> ram_spr_position
C - - - - - 0x0029C3 00:E9B3: 85 03     STA ram_0003
C - - - - - 0x0029C5 00:E9B5: A2 00     LDX #$00
bra_E9B7_loop:
C - - - - - 0x0029C7 00:E9B7: A0 00     LDY #$00
C - - - - - 0x0029C9 00:E9B9: B1 02     LDA (ram_0002),Y    ; 0274 0278 027C 0280 0284
C - - - - - 0x0029CB 00:E9BB: F0 43     BEQ bra_EA00
C - - - - - 0x0029CD 00:E9BD: C8        INY
C - - - - - 0x0029CE 00:E9BE: B1 00     LDA (ram_0000),Y    ; 001B 001F 0023 0027 002B
C - - - - - 0x0029D0 00:E9C0: 18        CLC
C - - - - - 0x0029D1 00:E9C1: 71 02     ADC (ram_0002),Y    ; 0275 0279 027D 0281 0285
C - - - - - 0x0029D3 00:E9C3: 91 02     STA (ram_0002),Y    ; 0275 0279 027D 0281 0285
C - - - - - 0x0029D5 00:E9C5: 88        DEY
C - - - - - 0x0029D6 00:E9C6: B1 00     LDA (ram_0000),Y    ; 001A 001E 0022 0026 002A
C - - - - - 0x0029D8 00:E9C8: 71 02     ADC (ram_0002),Y    ; 0274 0278 027C 0280 0284
C - - - - - 0x0029DA 00:E9CA: 91 02     STA (ram_0002),Y    ; 0274 0278 027C 0280 0284
C - - - - - 0x0029DC 00:E9CC: C9 C0     CMP #$C0
C - - - - - 0x0029DE 00:E9CE: 90 0A     BCC bra_E9DA
bra_E9D0_loop:
C - - - - - 0x0029E0 00:E9D0: A9 20     LDA #$20
C - - - - - 0x0029E2 00:E9D2: 1D 92 02  ORA ram_0292,X
C - - - - - 0x0029E5 00:E9D5: 9D 92 02  STA ram_0292,X
C - - - - - 0x0029E8 00:E9D8: D0 0C     BNE bra_E9E6    ; jmp
bra_E9DA:
C - - - - - 0x0029EA 00:E9DA: C9 40     CMP #$40
C - - - - - 0x0029EC 00:E9DC: 90 F2     BCC bra_E9D0_loop
C - - - - - 0x0029EE 00:E9DE: A9 DF     LDA #$DF
C - - - - - 0x0029F0 00:E9E0: 3D 92 02  AND ram_0292,X
C - - - - - 0x0029F3 00:E9E3: 9D 92 02  STA ram_0292,X
bra_E9E6:
C - - - - - 0x0029F6 00:E9E6: A0 00     LDY #$00
C - - - - - 0x0029F8 00:E9E8: B1 02     LDA (ram_0002),Y    ; 0274 0278 027C 0280 0284
C - - - - - 0x0029FA 00:E9EA: C9 FC     CMP #$FC
C - - - - - 0x0029FC 00:E9EC: 90 0E     BCC bra_E9FC
bra_E9EE_loop:
C - - - - - 0x0029FE 00:E9EE: A9 00     LDA #$00
C - - - - - 0x002A00 00:E9F0: 91 02     STA (ram_0002),Y    ; 0274 0278 027C 0280 0284
C - - - - - 0x002A02 00:E9F2: 91 00     STA (ram_0000),Y    ; 001A 001E 0022 0026 002A
C - - - - - 0x002A04 00:E9F4: C8        INY
C - - - - - 0x002A05 00:E9F5: 91 00     STA (ram_0000),Y    ; 001B 001F 0023 0027 002B
C - - - - - 0x002A07 00:E9F7: C8        INY
C - - - - - 0x002A08 00:E9F8: 91 02     STA (ram_0002),Y    ; 0276 027A 027E 0282 0286
C - - - - - 0x002A0A 00:E9FA: D0 04     BNE bra_EA00
bra_E9FC:
C - - - - - 0x002A0C 00:E9FC: C9 04     CMP #$04
C - - - - - 0x002A0E 00:E9FE: 90 EE     BCC bra_E9EE_loop
bra_EA00:
C - - - - - 0x002A10 00:EA00: A5 00     LDA ram_0000
C - - - - - 0x002A12 00:EA02: 18        CLC
C - - - - - 0x002A13 00:EA03: 69 04     ADC #< $0004
C - - - - - 0x002A15 00:EA05: 85 00     STA ram_0000
C - - - - - 0x002A17 00:EA07: A5 01     LDA ram_0001
C - - - - - 0x002A19 00:EA09: 69 00     ADC #> $0004
C - - - - - 0x002A1B 00:EA0B: 85 01     STA ram_0001
C - - - - - 0x002A1D 00:EA0D: A5 02     LDA ram_0002
C - - - - - 0x002A1F 00:EA0F: 18        CLC
C - - - - - 0x002A20 00:EA10: 69 04     ADC #< $0004
C - - - - - 0x002A22 00:EA12: 85 02     STA ram_0002
C - - - - - 0x002A24 00:EA14: A5 03     LDA ram_0003
C - - - - - 0x002A26 00:EA16: 69 00     ADC #> $0004
C - - - - - 0x002A28 00:EA18: 85 03     STA ram_0003
C - - - - - 0x002A2A 00:EA1A: E8        INX
C - - - - - 0x002A2B 00:EA1B: E0 05     CPX #$05
C - - - - - 0x002A2D 00:EA1D: D0 98     BNE bra_E9B7_loop
C - - - - - 0x002A2F 00:EA1F: 60        RTS



sub_EA20:
C - - - - - 0x002A30 00:EA20: A4 87     LDY ram_0087
C - - - - - 0x002A32 00:EA22: B9 2F EA  LDA tbl_EA2F,Y
C - - - - - 0x002A35 00:EA25: 85 10     STA ram_indirect_jmp
C - - - - - 0x002A37 00:EA27: B9 30 EA  LDA tbl_EA2F + $01,Y
C - - - - - 0x002A3A 00:EA2A: 85 11     STA ram_indirect_jmp + $01
C - - - - - 0x002A3C 00:EA2C: 6C 10 00  JMP (ram_indirect_jmp)



tbl_EA2F:
- D 3 - - - 0x002A3F 00:EA2F: 35 EA     .word ofs_016_EA35_00
- D 3 - - - 0x002A41 00:EA31: C9 EA     .word ofs_016_EAC9_02
- D 3 - - - 0x002A43 00:EA33: F9 EA     .word ofs_016_EAF9_04



ofs_016_EA35_00:
C - - J - - 0x002A45 00:EA35: A4 88     LDY ram_0088
C - - - - - 0x002A47 00:EA37: B9 44 EA  LDA tbl_EA44,Y
C - - - - - 0x002A4A 00:EA3A: 85 10     STA ram_indirect_jmp
C - - - - - 0x002A4C 00:EA3C: B9 45 EA  LDA tbl_EA44 + $01,Y
C - - - - - 0x002A4F 00:EA3F: 85 11     STA ram_indirect_jmp + $01
C - - - - - 0x002A51 00:EA41: 6C 10 00  JMP (ram_indirect_jmp)



tbl_EA44:
- D 3 - - - 0x002A54 00:EA44: 4C EA     .word ofs_017_EA4C_00
- D 3 - - - 0x002A56 00:EA46: 62 EA     .word ofs_017_EA62_02
- D 3 - - - 0x002A58 00:EA48: 79 EA     .word ofs_017_EA79_04
- D 3 - - - 0x002A5A 00:EA4A: 90 EA     .word ofs_017_EA90_06



bra_EA4C:
loc_EA4C:
ofs_017_EA4C_00:
ofs_017_EA4C_04:
C D 3 J - - 0x002A5C 00:EA4C: E6 B7     INC ram_00B7
C - - - - - 0x002A5E 00:EA4E: A5 B7     LDA ram_00B7
C - - - - - 0x002A60 00:EA50: 29 07     AND #$07
C - - - - - 0x002A62 00:EA52: A8        TAY
C - - - - - 0x002A63 00:EA53: B9 5A EA  LDA tbl_EA5A,Y
C - - - - - 0x002A66 00:EA56: 8D 8D 02  STA ram_028D
C - - - - - 0x002A69 00:EA59: 60        RTS



tbl_EA5A:
- D 3 - - - 0x002A6A 00:EA5A: 04        .byte $04   ; 00 
- D 3 - - - 0x002A6B 00:EA5B: 04        .byte $04   ; 01 
- D 3 - - - 0x002A6C 00:EA5C: 04        .byte $04   ; 02 
- D 3 - - - 0x002A6D 00:EA5D: 05        .byte $05   ; 03 
- D 3 - - - 0x002A6E 00:EA5E: 05        .byte $05   ; 04 
- D 3 - - - 0x002A6F 00:EA5F: 04        .byte $04   ; 05 
- D 3 - - - 0x002A70 00:EA60: 01        .byte $01   ; 06 
- D 3 - - - 0x002A71 00:EA61: 01        .byte $01   ; 07 



sub_EA62:
ofs_017_EA62_02:
C - - J - - 0x002A72 00:EA62: A5 4B     LDA ram_frame_cnt
C - - - - - 0x002A74 00:EA64: 29 07     AND #$07
C - - - - - 0x002A76 00:EA66: D0 E4     BNE bra_EA4C
C - - - - - 0x002A78 00:EA68: A5 4B     LDA ram_frame_cnt
C - - - - - 0x002A7A 00:EA6A: 29 08     AND #$08
C - - - - - 0x002A7C 00:EA6C: D0 04     BNE bra_EA72
C - - - - - 0x002A7E 00:EA6E: A9 0C     LDA #$0C
C - - - - - 0x002A80 00:EA70: D0 02     BNE bra_EA74    ; jmp
bra_EA72:
C - - - - - 0x002A82 00:EA72: A9 0D     LDA #$0D
bra_EA74:
C - - - - - 0x002A84 00:EA74: 8D 8C 02  STA ram_028C
C - - - - - 0x002A87 00:EA77: D0 D3     BNE bra_EA4C    ; jmp



bra_EA79:
ofs_017_EA79_04:
C - - J - - 0x002A89 00:EA79: A5 4B     LDA ram_frame_cnt
C - - - - - 0x002A8B 00:EA7B: 29 07     AND #$07
C - - - - - 0x002A8D 00:EA7D: F0 01     BEQ bra_EA80
C - - - - - 0x002A8F 00:EA7F: 60        RTS
bra_EA80:
; each 8 frames
C - - - - - 0x002A90 00:EA80: A5 4B     LDA ram_frame_cnt
C - - - - - 0x002A92 00:EA82: 29 08     AND #$08
C - - - - - 0x002A94 00:EA84: D0 04     BNE bra_EA8A
C - - - - - 0x002A96 00:EA86: A9 1E     LDA #$1E
C - - - - - 0x002A98 00:EA88: D0 02     BNE bra_EA8C    ; jmp
bra_EA8A:
C - - - - - 0x002A9A 00:EA8A: A9 1F     LDA #$1F
bra_EA8C:
C - - - - - 0x002A9C 00:EA8C: 8D 8C 02  STA ram_028C
C - - - - - 0x002A9F 00:EA8F: 60        RTS



ofs_017_EA90_06:
C - - J - - 0x002AA0 00:EA90: E6 B7     INC ram_00B7
C - - - - - 0x002AA2 00:EA92: A5 B7     LDA ram_00B7
C - - - - - 0x002AA4 00:EA94: 29 07     AND #$07
C - - - - - 0x002AA6 00:EA96: A8        TAY
C - - - - - 0x002AA7 00:EA97: B9 B5 EA  LDA tbl_EAB5_index,Y
C - - - - - 0x002AAA 00:EA9A: A8        TAY
C - - - - - 0x002AAB 00:EA9B: B9 BD EA  LDA tbl_EABD,Y
C - - - - - 0x002AAE 00:EA9E: 8D 8D 02  STA ram_028D
C - - - - - 0x002AB1 00:EAA1: B9 BE EA  LDA tbl_EABD + $01,Y
C - - - - - 0x002AB4 00:EAA4: 8D 8E 02  STA ram_028E
C - - - - - 0x002AB7 00:EAA7: B9 BF EA  LDA tbl_EABD + $02,Y
C - - - - - 0x002ABA 00:EAAA: 8D 8F 02  STA ram_028F
C - - - - - 0x002ABD 00:EAAD: B9 C0 EA  LDA tbl_EABD + $03,Y
C - - - - - 0x002AC0 00:EAB0: 8D 90 02  STA ram_0290
C - - - - - 0x002AC3 00:EAB3: D0 C4     BNE bra_EA79    ; jmp



tbl_EAB5_index:
- D 3 - - - 0x002AC5 00:EAB5: 00        .byte $00   ; 00 
- D 3 - - - 0x002AC6 00:EAB6: 00        .byte $00   ; 01 
- D 3 - - - 0x002AC7 00:EAB7: 00        .byte $00   ; 02 
- D 3 - - - 0x002AC8 00:EAB8: 04        .byte $04   ; 03 
- D 3 - - - 0x002AC9 00:EAB9: 04        .byte $04   ; 04 
- D 3 - - - 0x002ACA 00:EABA: 00        .byte $00   ; 05 
- D 3 - - - 0x002ACB 00:EABB: 08        .byte $08   ; 06 
- D 3 - - - 0x002ACC 00:EABC: 08        .byte $08   ; 07 



tbl_EABD:
; 00 
- D 3 - - - 0x002ACD 00:EABD: 3C        .byte $3C   ; 
- D 3 - - - 0x002ACE 00:EABE: 3D        .byte $3D   ; 
- D 3 - - - 0x002ACF 00:EABF: 3E        .byte $3E   ; 
- D 3 - - - 0x002AD0 00:EAC0: 3F        .byte $3F   ; 
; 04 
- D 3 - - - 0x002AD1 00:EAC1: 3C        .byte $3C   ; 
- D 3 - - - 0x002AD2 00:EAC2: 40        .byte $40   ; 
- D 3 - - - 0x002AD3 00:EAC3: 3E        .byte $3E   ; 
- D 3 - - - 0x002AD4 00:EAC4: 41        .byte $41   ; 
; 08 
- D 3 - - - 0x002AD5 00:EAC5: 38        .byte $38   ; 
- D 3 - - - 0x002AD6 00:EAC6: 39        .byte $39   ; 
- D 3 - - - 0x002AD7 00:EAC7: 3A        .byte $3A   ; 
- D 3 - - - 0x002AD8 00:EAC8: 3B        .byte $3B   ; 



ofs_016_EAC9_02:
C - - J - - 0x002AD9 00:EAC9: A4 88     LDY ram_0088
C - - - - - 0x002ADB 00:EACB: B9 D8 EA  LDA tbl_EAD8,Y
C - - - - - 0x002ADE 00:EACE: 85 10     STA ram_indirect_jmp
C - - - - - 0x002AE0 00:EAD0: B9 D9 EA  LDA tbl_EAD8 + $01,Y
C - - - - - 0x002AE3 00:EAD3: 85 11     STA ram_indirect_jmp + $01
C - - - - - 0x002AE5 00:EAD5: 6C 10 00  JMP (ram_indirect_jmp)



tbl_EAD8:
- D 3 - - - 0x002AE8 00:EAD8: 4C EA     .word ofs_017_EA4C_00
- D 3 - - - 0x002AEA 00:EADA: DE EA     .word ofs_017_EADE_02
- D 3 - - - 0x002AEC 00:EADC: 4C EA     .word ofs_017_EA4C_04



ofs_017_EADE_02:
C - - J - - 0x002AEE 00:EADE: 20 62 EA  JSR sub_EA62
C - - - - - 0x002AF1 00:EAE1: AD 74 02  LDA ram_spr_pos_X_hi
C - - - - - 0x002AF4 00:EAE4: C9 7D     CMP #$7D
C - - - - - 0x002AF6 00:EAE6: D0 06     BNE bra_EAEE
C - - - - - 0x002AF8 00:EAE8: A9 43     LDA #$43
C - - - - - 0x002AFA 00:EAEA: 8D 8E 02  STA ram_028E
C - - - - - 0x002AFD 00:EAED: 60        RTS
bra_EAEE:
C - - - - - 0x002AFE 00:EAEE: C9 7B     CMP #$7B
C - - - - - 0x002B00 00:EAF0: F0 01     BEQ bra_EAF3
C - - - - - 0x002B02 00:EAF2: 60        RTS
bra_EAF3:
C - - - - - 0x002B03 00:EAF3: A9 44     LDA #$44
C - - - - - 0x002B05 00:EAF5: 8D 8E 02  STA ram_028E
C - - - - - 0x002B08 00:EAF8: 60        RTS



ofs_016_EAF9_04:
C - - J - - 0x002B09 00:EAF9: A4 88     LDY ram_0088
C - - - - - 0x002B0B 00:EAFB: B9 08 EB  LDA tbl_EB08,Y
C - - - - - 0x002B0E 00:EAFE: 85 10     STA ram_indirect_jmp
C - - - - - 0x002B10 00:EB00: B9 09 EB  LDA tbl_EB08 + $01,Y
C - - - - - 0x002B13 00:EB03: 85 11     STA ram_indirect_jmp + $01
C - - - - - 0x002B15 00:EB05: 6C 10 00  JMP (ram_indirect_jmp)



tbl_EB08:
- D 3 - - - 0x002B18 00:EB08: 4C EA     .word ofs_017_EA4C_00
- D 3 - - - 0x002B1A 00:EB0A: 10 EB     .word ofs_017_EB10_02
- D 3 - - - 0x002B1C 00:EB0C: 2B EB     .word ofs_017_EB2B_04
- D 3 - - - 0x002B1E 00:EB0E: 2B EB     .word ofs_017_EB2B_06



ofs_017_EB10_02:
C - - J - - 0x002B20 00:EB10: A5 4B     LDA ram_frame_cnt
C - - - - - 0x002B22 00:EB12: 29 07     AND #$07
C - - - - - 0x002B24 00:EB14: F0 03     BEQ bra_EB19
C - - - - - 0x002B26 00:EB16: 4C 4C EA  JMP loc_EA4C
bra_EB19:
; each 8 frames
C - - - - - 0x002B29 00:EB19: A5 4B     LDA ram_frame_cnt
C - - - - - 0x002B2B 00:EB1B: 29 08     AND #$08
C - - - - - 0x002B2D 00:EB1D: D0 04     BNE bra_EB23
C - - - - - 0x002B2F 00:EB1F: A9 48     LDA #$48
C - - - - - 0x002B31 00:EB21: D0 02     BNE bra_EB25    ; jmp
bra_EB23:
C - - - - - 0x002B33 00:EB23: A9 49     LDA #$49
bra_EB25:
C - - - - - 0x002B35 00:EB25: 8D 8C 02  STA ram_028C
C - - - - - 0x002B38 00:EB28: 4C 4C EA  JMP loc_EA4C



ofs_017_EB2B_04:
ofs_017_EB2B_06:
C - - J - - 0x002B3B 00:EB2B: A5 4B     LDA ram_frame_cnt
C - - - - - 0x002B3D 00:EB2D: 29 07     AND #$07
C - - - - - 0x002B3F 00:EB2F: F0 01     BEQ bra_EB32
C - - - - - 0x002B41 00:EB31: 60        RTS
bra_EB32:
; each 8 frames
C - - - - - 0x002B42 00:EB32: A5 4B     LDA ram_frame_cnt
C - - - - - 0x002B44 00:EB34: 29 08     AND #$08
C - - - - - 0x002B46 00:EB36: D0 04     BNE bra_EB3C
C - - - - - 0x002B48 00:EB38: A9 4A     LDA #$4A
C - - - - - 0x002B4A 00:EB3A: D0 02     BNE bra_EB3E    ; jmp
bra_EB3C:
C - - - - - 0x002B4C 00:EB3C: A9 4B     LDA #$4B
bra_EB3E:
C - - - - - 0x002B4E 00:EB3E: 8D 8C 02  STA ram_028C
C - - - - - 0x002B51 00:EB41: 60        RTS



tbl_EB42:
; this is where bytes are read from, pattern is the same for each 6 bytes
; 00 
- D 3 - - - 0x002B52 00:EB42: 00        .byte $00   ; 0x000EC7 0x000EE5
- D 3 - - - 0x002B53 00:EB43: 07        .byte $07   ; 0x000F05
- D 3 - - - 0x002B54 00:EB44: 00        .byte $00   ; 0x000F0E
- D 3 - - - 0x002B55 00:EB45: 00        .byte $00   ; 0x000F4A
- D 3 - - - 0x002B56 00:EB46: 00        .byte $00   ; 0x000F92
- D 3 - - - 0x002B57 00:EB47: 04        .byte $04   ; 0x000F9B
; 06 
- D 3 - - - 0x002B58 00:EB48: 01        .byte $01   ; 
- D 3 - - - 0x002B59 00:EB49: 06        .byte $06   ; 
- D 3 - - - 0x002B5A 00:EB4A: 01        .byte $01   ; 
- D 3 - - - 0x002B5B 00:EB4B: 01        .byte $01   ; 
- D 3 - - - 0x002B5C 00:EB4C: 01        .byte $01   ; 
- D 3 - - - 0x002B5D 00:EB4D: 04        .byte $04   ; 
; 0C 
- D 3 - - - 0x002B5E 00:EB4E: 01        .byte $01   ; 
- D 3 - - - 0x002B5F 00:EB4F: 04        .byte $04   ; 
- D 3 - - - 0x002B60 00:EB50: 02        .byte $02   ; 
- D 3 - - - 0x002B61 00:EB51: 02        .byte $02   ; 
- D 3 - - - 0x002B62 00:EB52: 02        .byte $02   ; 
- D 3 - - - 0x002B63 00:EB53: 03        .byte $03   ; 
; 12 
- D 3 - - - 0x002B64 00:EB54: 02        .byte $02   ; 
- D 3 - - - 0x002B65 00:EB55: 03        .byte $03   ; 
- D 3 - - - 0x002B66 00:EB56: 02        .byte $02   ; 
- D 3 - - - 0x002B67 00:EB57: 02        .byte $02   ; 
- D 3 - - - 0x002B68 00:EB58: 02        .byte $02   ; 
- D 3 - - - 0x002B69 00:EB59: 03        .byte $03   ; 
; 18 
- D 3 - - - 0x002B6A 00:EB5A: 02        .byte $02   ; 
- D 3 - - - 0x002B6B 00:EB5B: 02        .byte $02   ; 
- D 3 - - - 0x002B6C 00:EB5C: 02        .byte $02   ; 
- D 3 - - - 0x002B6D 00:EB5D: 02        .byte $02   ; 
- D 3 - - - 0x002B6E 00:EB5E: 03        .byte $03   ; 
- D 3 - - - 0x002B6F 00:EB5F: 03        .byte $03   ; 
; 1E 
- D 3 - - - 0x002B70 00:EB60: 03        .byte $03   ; 
- D 3 - - - 0x002B71 00:EB61: 05        .byte $05   ; 
- D 3 - - - 0x002B72 00:EB62: 03        .byte $03   ; 
- D 3 - - - 0x002B73 00:EB63: 02        .byte $02   ; 
- D 3 - - - 0x002B74 00:EB64: 03        .byte $03   ; 
- D 3 - - - 0x002B75 00:EB65: 03        .byte $03   ; 
; 24 
- D 3 - - - 0x002B76 00:EB66: 03        .byte $03   ; 
- D 3 - - - 0x002B77 00:EB67: 02        .byte $02   ; 
- D 3 - - - 0x002B78 00:EB68: 03        .byte $03   ; 
- D 3 - - - 0x002B79 00:EB69: 02        .byte $02   ; 
- D 3 - - - 0x002B7A 00:EB6A: 04        .byte $04   ; 
- D 3 - - - 0x002B7B 00:EB6B: 03        .byte $03   ; 
; 2A 
- D 3 - - - 0x002B7C 00:EB6C: 03        .byte $03   ; 
- D 3 - - - 0x002B7D 00:EB6D: 02        .byte $02   ; 
- D 3 - - - 0x002B7E 00:EB6E: 03        .byte $03   ; 
- D 3 - - - 0x002B7F 00:EB6F: 02        .byte $02   ; 
- D 3 - - - 0x002B80 00:EB70: 04        .byte $04   ; 
- D 3 - - - 0x002B81 00:EB71: 03        .byte $03   ; 
; 30 
- D 3 - - - 0x002B82 00:EB72: 03        .byte $03   ; 
- D 3 - - - 0x002B83 00:EB73: 01        .byte $01   ; 
- D 3 - - - 0x002B84 00:EB74: 04        .byte $04   ; 
- D 3 - - - 0x002B85 00:EB75: 02        .byte $02   ; 
- D 3 - - - 0x002B86 00:EB76: 05        .byte $05   ; 
- D 3 - - - 0x002B87 00:EB77: 03        .byte $03   ; 
; 36 
- D 3 - - - 0x002B88 00:EB78: 03        .byte $03   ; 
- D 3 - - - 0x002B89 00:EB79: 05        .byte $05   ; 
- D 3 - - - 0x002B8A 00:EB7A: 04        .byte $04   ; 
- D 3 - - - 0x002B8B 00:EB7B: 02        .byte $02   ; 
- D 3 - - - 0x002B8C 00:EB7C: 05        .byte $05   ; 
- D 3 - - - 0x002B8D 00:EB7D: 03        .byte $03   ; 
; 3C 
- D 3 - - - 0x002B8E 00:EB7E: 03        .byte $03   ; 
- D 3 - - - 0x002B8F 00:EB7F: 02        .byte $02   ; 
- D 3 - - - 0x002B90 00:EB80: 04        .byte $04   ; 
- D 3 - - - 0x002B91 00:EB81: 02        .byte $02   ; 
- D 3 - - - 0x002B92 00:EB82: 06        .byte $06   ; 
- D 3 - - - 0x002B93 00:EB83: 03        .byte $03   ; 
; 42 
- D 3 - - - 0x002B94 00:EB84: 03        .byte $03   ; 
- D 3 - - - 0x002B95 00:EB85: 01        .byte $01   ; 
- D 3 - - - 0x002B96 00:EB86: 05        .byte $05   ; 
- D 3 - - - 0x002B97 00:EB87: 02        .byte $02   ; 
- D 3 - - - 0x002B98 00:EB88: 06        .byte $06   ; 
- D 3 - - - 0x002B99 00:EB89: 03        .byte $03   ; 
; 48 
- D 3 - - - 0x002B9A 00:EB8A: 03        .byte $03   ; 
- D 3 - - - 0x002B9B 00:EB8B: 01        .byte $01   ; 
- D 3 - - - 0x002B9C 00:EB8C: 05        .byte $05   ; 
- D 3 - - - 0x002B9D 00:EB8D: 02        .byte $02   ; 
- D 3 - - - 0x002B9E 00:EB8E: 07        .byte $07   ; 
- D 3 - - - 0x002B9F 00:EB8F: 03        .byte $03   ; 
; 4E 
- D 3 - - - 0x002BA0 00:EB90: 03        .byte $03   ; 
- D 3 - - - 0x002BA1 00:EB91: 03        .byte $03   ; 
- D 3 - - - 0x002BA2 00:EB92: 05        .byte $05   ; 
- D 3 - - - 0x002BA3 00:EB93: 02        .byte $02   ; 
- D 3 - - - 0x002BA4 00:EB94: 07        .byte $07   ; 
- D 3 - - - 0x002BA5 00:EB95: 03        .byte $03   ; 
; 54 
- D 3 - - - 0x002BA6 00:EB96: 03        .byte $03   ; 
- D 3 - - - 0x002BA7 00:EB97: 01        .byte $01   ; 
- D 3 - - - 0x002BA8 00:EB98: 06        .byte $06   ; 
- D 3 - - - 0x002BA9 00:EB99: 02        .byte $02   ; 
- D 3 - - - 0x002BAA 00:EB9A: 07        .byte $07   ; 
- D 3 - - - 0x002BAB 00:EB9B: 03        .byte $03   ; 
; 5A 
- D 3 - - - 0x002BAC 00:EB9C: 03        .byte $03   ; 
- D 3 - - - 0x002BAD 00:EB9D: 01        .byte $01   ; 
- D 3 - - - 0x002BAE 00:EB9E: 06        .byte $06   ; 
- D 3 - - - 0x002BAF 00:EB9F: 02        .byte $02   ; 
- D 3 - - - 0x002BB0 00:EBA0: 07        .byte $07   ; 
- D 3 - - - 0x002BB1 00:EBA1: 03        .byte $03   ; 
; 60 
- D 3 - - - 0x002BB2 00:EBA2: 03        .byte $03   ; 
- D 3 - - - 0x002BB3 00:EBA3: 00        .byte $00   ; 
- D 3 - - - 0x002BB4 00:EBA4: 06        .byte $06   ; 
- D 3 - - - 0x002BB5 00:EBA5: 02        .byte $02   ; 
- D 3 - - - 0x002BB6 00:EBA6: 07        .byte $07   ; 
- D 3 - - - 0x002BB7 00:EBA7: 03        .byte $03   ; 
; 66 
- D 3 - - - 0x002BB8 00:EBA8: 03        .byte $03   ; 
- D 3 - - - 0x002BB9 00:EBA9: 01        .byte $01   ; 
- D 3 - - - 0x002BBA 00:EBAA: 06        .byte $06   ; 
- D 3 - - - 0x002BBB 00:EBAB: 02        .byte $02   ; 
- D 3 - - - 0x002BBC 00:EBAC: 07        .byte $07   ; 
- D 3 - - - 0x002BBD 00:EBAD: 03        .byte $03   ; 
; 6C 
- D 3 - - - 0x002BBE 00:EBAE: 03        .byte $03   ; 
- D 3 - - - 0x002BBF 00:EBAF: 00        .byte $00   ; 
- D 3 - - - 0x002BC0 00:EBB0: 06        .byte $06   ; 
- D 3 - - - 0x002BC1 00:EBB1: 02        .byte $02   ; 
- D 3 - - - 0x002BC2 00:EBB2: 07        .byte $07   ; 
- D 3 - - - 0x002BC3 00:EBB3: 03        .byte $03   ; 
; 72 
- D 3 - - - 0x002BC4 00:EBB4: 03        .byte $03   ; 
- D 3 - - - 0x002BC5 00:EBB5: 00        .byte $00   ; 
- D 3 - - - 0x002BC6 00:EBB6: 06        .byte $06   ; 
- D 3 - - - 0x002BC7 00:EBB7: 02        .byte $02   ; 
- D 3 - - - 0x002BC8 00:EBB8: 07        .byte $07   ; 
- D 3 - - - 0x002BC9 00:EBB9: 03        .byte $03   ; 
; 78 
- D 3 - - - 0x002BCA 00:EBBA: 03        .byte $03   ; 
- D 3 - - - 0x002BCB 00:EBBB: 00        .byte $00   ; 
- D 3 - - - 0x002BCC 00:EBBC: 06        .byte $06   ; 
- D 3 - - - 0x002BCD 00:EBBD: 02        .byte $02   ; 
- D 3 - - - 0x002BCE 00:EBBE: 07        .byte $07   ; 
- D 3 - - - 0x002BCF 00:EBBF: 03        .byte $03   ; 
; 7E 
- D 3 - - - 0x002BD0 00:EBC0: 04        .byte $04   ; 
- D 3 - - - 0x002BD1 00:EBC1: 00        .byte $00   ; 
- D 3 - - - 0x002BD2 00:EBC2: 06        .byte $06   ; 
- D 3 - - - 0x002BD3 00:EBC3: 02        .byte $02   ; 
- D 3 - - - 0x002BD4 00:EBC4: 07        .byte $07   ; 
- D 3 - - - 0x002BD5 00:EBC5: 03        .byte $03   ; 
; 84 
- D 3 - - - 0x002BD6 00:EBC6: 04        .byte $04   ; 
- D 3 - - - 0x002BD7 00:EBC7: 00        .byte $00   ; 
- D 3 - - - 0x002BD8 00:EBC8: 06        .byte $06   ; 
- D 3 - - - 0x002BD9 00:EBC9: 02        .byte $02   ; 
- D 3 - - - 0x002BDA 00:EBCA: 07        .byte $07   ; 
- D 3 - - - 0x002BDB 00:EBCB: 03        .byte $03   ; 



tbl_EBCC:
;                                             009F 00A0 00A1 00A2 00A3 00A4 00A5 00A6 00A7 00A8 00A9 00AA 00AB 00AC 00AD 00AE 00AF 00B0 00B1 00B2 00B3 00B4
- D 3 - - - 0x002BDC 00:EBCC: D0        .byte $D0, $00, $C0, $00, $A0, $00, $B0, $00, $A0, $00, $80, $00, $A0, $00, $B0, $00, $90, $00, $50, $00, $50, $00   ; 00 
- D 3 - - - 0x002BF2 00:EBE2: D0        .byte $D0, $00, $C0, $00, $A0, $00, $B0, $00, $A0, $00, $80, $00, $B0, $00, $C0, $00, $A0, $00, $50, $00, $50, $00   ; 01 
- D 3 - - - 0x002C08 00:EBF8: F0        .byte $F0, $00, $E0, $00, $C0, $00, $E0, $00, $D0, $00, $B0, $00, $E0, $00, $F0, $00, $D0, $00, $70, $00, $70, $00   ; 02 
- D 3 - - - 0x002C1E 00:EC0E: 00        .byte $00, $01, $F0, $00, $D0, $00, $00, $01, $F0, $00, $D0, $00, $00, $01, $10, $01, $F0, $00, $80, $00, $80, $00   ; 03 
- D 3 - - - 0x002C34 00:EC24: 00        .byte $00, $01, $F0, $00, $D0, $00, $00, $01, $F0, $00, $D0, $00, $20, $01, $30, $01, $10, $01, $80, $00, $80, $00   ; 04 



tbl_EC3A:
- D 3 - - - 0x002C4A 00:EC3A: 07        .byte $07, $14, $07, $14, $05, $14, $05, $FF   ; 00 
- D 3 - - - 0x002C52 00:EC42: 07        .byte $07, $14, $07, $14, $05, $FF, $00, $00   ; 01 
- D 3 - - - 0x002C5A 00:EC4A: 05        .byte $05, $14, $05, $14, $05, $FF, $00, $00   ; 02 
- D 3 - - - 0x002C62 00:EC52: 05        .byte $05, $14, $05, $14, $05, $FF, $00, $00   ; 03 
; bzk bug maybe, 8 bytes starting from 0x002C6A are read as index 04 because of 0x002BD6


tbl_EC5A:
- D 3 - - - 0x002C6A 00:EC5A: 14        .byte $14, $0A   ; 00 
- D 3 - - - 0x002C6C 00:EC5C: 1E        .byte $1E, $0F   ; 01 
- D 3 - - - 0x002C6E 00:EC5E: 28        .byte $28, $14   ; 02 
- D 3 - - - 0x002C70 00:EC60: 32        .byte $32, $19   ; 03 
- D 3 - - - 0x002C72 00:EC62: 3C        .byte $3C, $1E   ; 04 
- D 3 - - - 0x002C74 00:EC64: 50        .byte $50, $28   ; 05 
- D 3 - - - 0x002C76 00:EC66: 64        .byte $64, $32   ; 06 



tbl_EC68:
- D 3 - - - 0x002C78 00:EC68: 02        .byte $02, $1E, $5A, $00   ; 00 
- D 3 - - - 0x002C7C 00:EC6C: 03        .byte $03, $32, $00, $00   ; 01 
- D 3 - - - 0x002C80 00:EC70: 04        .byte $04, $00, $00, $00   ; 02 



tbl_EC74:
; some kind of special case (tbl_EB42 doesn't have index 03 (4th byte out of 6))
- D 3 - - - 0x002C84 00:EC74: 01        .byte $01, $07, $11, $20   ; 


; todo
tbl_EC78:
; 00 
- D 3 - I - 0x002C88 00:EC78: 2D        .byte $2D   ; 
- D 3 - I - 0x002C89 00:EC79: 1F        .byte $1F   ; 
- D 3 - I - 0x002C8A 00:EC7A: D0        .byte $D0   ; 
- D 3 - I - 0x002C8B 00:EC7B: D0        .byte $D0   ; 
- D 3 - I - 0x002C8C 00:EC7C: 10        .byte $10   ; 
- D 3 - I - 0x002C8D 00:EC7D: 13        .byte $13   ; 
- D 3 - I - 0x002C8E 00:EC7E: D0        .byte $D0   ; 
- D 3 - I - 0x002C8F 00:EC7F: D0        .byte $D0   ; 
- D 3 - I - 0x002C90 00:EC80: 10        .byte $10   ; 
- D 3 - I - 0x002C91 00:EC81: 1D        .byte $1D   ; 
- D 3 - I - 0x002C92 00:EC82: 2D        .byte $2D   ; 
- D 3 - I - 0x002C93 00:EC83: 11        .byte $11   ; 
- D 3 - I - 0x002C94 00:EC84: C3        .byte $C3   ; 
- D 3 - I - 0x002C95 00:EC85: C3        .byte $C3   ; 
- D 3 - I - 0x002C96 00:EC86: 03        .byte $03   ; 
- D 3 - I - 0x002C97 00:EC87: 11        .byte $11   ; 
- D 3 - I - 0x002C98 00:EC88: C3        .byte $C3   ; 
- D 3 - I - 0x002C99 00:EC89: C3        .byte $C3   ; 
- D 3 - I - 0x002C9A 00:EC8A: 03        .byte $03   ; 
- D 3 - I - 0x002C9B 00:EC8B: 11        .byte $11   ; 
- D 3 - I - 0x002C9C 00:EC8C: 2D        .byte $2D   ; 
- D 3 - I - 0x002C9D 00:EC8D: 11        .byte $11   ; 
- D 3 - I - 0x002C9E 00:EC8E: 03        .byte $03   ; 
- D 3 - I - 0x002C9F 00:EC8F: 1F        .byte $1F   ; 
- D 3 - I - 0x002CA0 00:EC90: 10        .byte $10   ; 
- D 3 - I - 0x002CA1 00:EC91: 1D        .byte $1D   ; 
; 01 
- D 3 - I - 0x002CA2 00:EC92: 03        .byte $03   ; 
- D 3 - I - 0x002CA3 00:EC93: 1F        .byte $1F   ; 
- D 3 - I - 0x002CA4 00:EC94: 10        .byte $10   ; 
- D 3 - I - 0x002CA5 00:EC95: 1D        .byte $1D   ; 
- D 3 - I - 0x002CA6 00:EC96: 03        .byte $03   ; 
- D 3 - I - 0x002CA7 00:EC97: 11        .byte $11   ; 
- D 3 - I - 0x002CA8 00:EC98: 03        .byte $03   ; 
- D 3 - I - 0x002CA9 00:EC99: 1F        .byte $1F   ; 
- D 3 - I - 0x002CAA 00:EC9A: 10        .byte $10   ; 
- D 3 - I - 0x002CAB 00:EC9B: 1D        .byte $1D   ; 
- D 3 - I - 0x002CAC 00:EC9C: 03        .byte $03   ; 
- D 3 - I - 0x002CAD 00:EC9D: 1F        .byte $1F   ; 
- D 3 - I - 0x002CAE 00:EC9E: 10        .byte $10   ; 
- D 3 - I - 0x002CAF 00:EC9F: 1D        .byte $1D   ; 
- D 3 - I - 0x002CB0 00:ECA0: 03        .byte $03   ; 
- D 3 - I - 0x002CB1 00:ECA1: 11        .byte $11   ; 
- D 3 - I - 0x002CB2 00:ECA2: 2D        .byte $2D   ; 
- D 3 - I - 0x002CB3 00:ECA3: 11        .byte $11   ; 
- D 3 - I - 0x002CB4 00:ECA4: 01        .byte $01   ; 
- D 3 - I - 0x002CB5 00:ECA5: 11        .byte $11   ; 
- D 3 - I - 0x002CB6 00:ECA6: 20        .byte $20   ; 
- D 3 - I - 0x002CB7 00:ECA7: 11        .byte $11   ; 
- D 3 - I - 0x002CB8 00:ECA8: 03        .byte $03   ; 
- D 3 - I - 0x002CB9 00:ECA9: 11        .byte $11   ; 
- D 3 - I - 0x002CBA 00:ECAA: 20        .byte $20   ; 
- D 3 - I - 0x002CBB 00:ECAB: 11        .byte $11   ; 
; 02 
- D 3 - I - 0x002CBC 00:ECAC: 03        .byte $03   ; 
- D 3 - I - 0x002CBD 00:ECAD: 11        .byte $11   ; 
- D 3 - I - 0x002CBE 00:ECAE: 03        .byte $03   ; 
- D 3 - I - 0x002CBF 00:ECAF: 11        .byte $11   ; 
- D 3 - I - 0x002CC0 00:ECB0: 20        .byte $20   ; 
- D 3 - I - 0x002CC1 00:ECB1: 11        .byte $11   ; 
- D 3 - I - 0x002CC2 00:ECB2: 03        .byte $03   ; 
- D 3 - I - 0x002CC3 00:ECB3: 11        .byte $11   ; 
- D 3 - I - 0x002CC4 00:ECB4: 20        .byte $20   ; 
- D 3 - I - 0x002CC5 00:ECB5: 11        .byte $11   ; 
- D 3 - I - 0x002CC6 00:ECB6: 01        .byte $01   ; 
- D 3 - I - 0x002CC7 00:ECB7: 11        .byte $11   ; 
- D 3 - I - 0x002CC8 00:ECB8: 2D        .byte $2D   ; 
- D 3 - I - 0x002CC9 00:ECB9: 11        .byte $11   ; 
- D 3 - I - 0x002CCA 00:ECBA: 03        .byte $03   ; 
- D 3 - I - 0x002CCB 00:ECBB: 1E        .byte $1E   ; 
- D 3 - I - 0x002CCC 00:ECBC: 10        .byte $10   ; 
- D 3 - I - 0x002CCD 00:ECBD: 1C        .byte $1C   ; 
- D 3 - I - 0x002CCE 00:ECBE: 03        .byte $03   ; 
- D 3 - I - 0x002CCF 00:ECBF: 1E        .byte $1E   ; 
- D 3 - I - 0x002CD0 00:ECC0: 10        .byte $10   ; 
- D 3 - I - 0x002CD1 00:ECC1: 1C        .byte $1C   ; 
- D 3 - I - 0x002CD2 00:ECC2: 03        .byte $03   ; 
- D 3 - I - 0x002CD3 00:ECC3: 1A        .byte $1A   ; 
- D 3 - I - 0x002CD4 00:ECC4: 03        .byte $03   ; 
- D 3 - I - 0x002CD5 00:ECC5: 1E        .byte $1E   ; 
; 03 
- D 3 - I - 0x002CD6 00:ECC6: 10        .byte $10   ; 
- D 3 - I - 0x002CD7 00:ECC7: 1C        .byte $1C   ; 
- D 3 - I - 0x002CD8 00:ECC8: 03        .byte $03   ; 
- D 3 - I - 0x002CD9 00:ECC9: 1E        .byte $1E   ; 
- D 3 - I - 0x002CDA 00:ECCA: 10        .byte $10   ; 
- D 3 - I - 0x002CDB 00:ECCB: 1C        .byte $1C   ; 
- D 3 - I - 0x002CDC 00:ECCC: 03        .byte $03   ; 
- D 3 - I - 0x002CDD 00:ECCD: 11        .byte $11   ; 
- D 3 - I - 0x002CDE 00:ECCE: 2D        .byte $2D   ; 
- D 3 - I - 0x002CDF 00:ECCF: 11        .byte $11   ; 
- D 3 - I - 0x002CE0 00:ECD0: C3        .byte $C3   ; 
- D 3 - I - 0x002CE1 00:ECD1: C3        .byte $C3   ; 
- D 3 - I - 0x002CE2 00:ECD2: C3        .byte $C3   ; 
- D 3 - I - 0x002CE3 00:ECD3: C3        .byte $C3   ; 
- D 3 - I - 0x002CE4 00:ECD4: 83        .byte $83   ; 
- D 3 - I - 0x002CE5 00:ECD5: 11        .byte $11   ; 
- D 3 - I - 0x002CE6 00:ECD6: 2D        .byte $2D   ; 
- D 3 - I - 0x002CE7 00:ECD7: 11        .byte $11   ; 
- D 3 - I - 0x002CE8 00:ECD8: 03        .byte $03   ; 
- D 3 - I - 0x002CE9 00:ECD9: 1F        .byte $1F   ; 
- D 3 - I - 0x002CEA 00:ECDA: 10        .byte $10   ; 
- D 3 - I - 0x002CEB 00:ECDB: 1D        .byte $1D   ; 
- D 3 - I - 0x002CEC 00:ECDC: 03        .byte $03   ; 
- D 3 - I - 0x002CED 00:ECDD: 1B        .byte $1B   ; 
- D 3 - I - 0x002CEE 00:ECDE: 03        .byte $03   ; 
- D 3 - I - 0x002CEF 00:ECDF: 1F        .byte $1F   ; 
; 04 
- D 3 - I - 0x002CF0 00:ECE0: 10        .byte $10   ; 
- D 3 - I - 0x002CF1 00:ECE1: 10        .byte $10   ; 
- D 3 - I - 0x002CF2 00:ECE2: 10        .byte $10   ; 
- D 3 - I - 0x002CF3 00:ECE3: 1D        .byte $1D   ; 
- D 3 - I - 0x002CF4 00:ECE4: 03        .byte $03   ; 
- D 3 - I - 0x002CF5 00:ECE5: 1B        .byte $1B   ; 
- D 3 - I - 0x002CF6 00:ECE6: 03        .byte $03   ; 
- D 3 - I - 0x002CF7 00:ECE7: 1F        .byte $1F   ; 
- D 3 - I - 0x002CF8 00:ECE8: 10        .byte $10   ; 
- D 3 - I - 0x002CF9 00:ECE9: 1D        .byte $1D   ; 
- D 3 - I - 0x002CFA 00:ECEA: 03        .byte $03   ; 
- D 3 - I - 0x002CFB 00:ECEB: 11        .byte $11   ; 
- D 3 - I - 0x002CFC 00:ECEC: 2D        .byte $2D   ; 
- D 3 - I - 0x002CFD 00:ECED: 11        .byte $11   ; 
- D 3 - I - 0x002CFE 00:ECEE: 03        .byte $03   ; 
- D 3 - I - 0x002CFF 00:ECEF: 1E        .byte $1E   ; 
- D 3 - I - 0x002D00 00:ECF0: 10        .byte $10   ; 
- D 3 - I - 0x002D01 00:ECF1: 1C        .byte $1C   ; 
- D 3 - I - 0x002D02 00:ECF2: 03        .byte $03   ; 
- D 3 - I - 0x002D03 00:ECF3: 11        .byte $11   ; 
- D 3 - I - 0x002D04 00:ECF4: 03        .byte $03   ; 
- D 3 - I - 0x002D05 00:ECF5: 1E        .byte $1E   ; 
- D 3 - I - 0x002D06 00:ECF6: 10        .byte $10   ; 
- D 3 - I - 0x002D07 00:ECF7: 13        .byte $13   ; 
- D 3 - I - 0x002D08 00:ECF8: 10        .byte $10   ; 
- D 3 - I - 0x002D09 00:ECF9: 1C        .byte $1C   ; 
; 05 
- D 3 - I - 0x002D0A 00:ECFA: 03        .byte $03   ; 
- D 3 - I - 0x002D0B 00:ECFB: 11        .byte $11   ; 
- D 3 - I - 0x002D0C 00:ECFC: 03        .byte $03   ; 
- D 3 - I - 0x002D0D 00:ECFD: 1E        .byte $1E   ; 
- D 3 - I - 0x002D0E 00:ECFE: 10        .byte $10   ; 
- D 3 - I - 0x002D0F 00:ECFF: 1C        .byte $1C   ; 
- D 3 - I - 0x002D10 00:ED00: 03        .byte $03   ; 
- D 3 - I - 0x002D11 00:ED01: 11        .byte $11   ; 
- D 3 - I - 0x002D12 00:ED02: 2D        .byte $2D   ; 
- D 3 - I - 0x002D13 00:ED03: 11        .byte $11   ; 
- D 3 - I - 0x002D14 00:ED04: C3        .byte $C3   ; 
- D 3 - I - 0x002D15 00:ED05: 03        .byte $03   ; 
- D 3 - I - 0x002D16 00:ED06: 11        .byte $11   ; 
- D 3 - I - 0x002D17 00:ED07: 83        .byte $83   ; 
- D 3 - I - 0x002D18 00:ED08: 11        .byte $11   ; 
- D 3 - I - 0x002D19 00:ED09: 83        .byte $83   ; 
- D 3 - I - 0x002D1A 00:ED0A: 11        .byte $11   ; 
- D 3 - I - 0x002D1B 00:ED0B: C3        .byte $C3   ; 
- D 3 - I - 0x002D1C 00:ED0C: 03        .byte $03   ; 
- D 3 - I - 0x002D1D 00:ED0D: 11        .byte $11   ; 
- D 3 - I - 0x002D1E 00:ED0E: 2D        .byte $2D   ; 
- D 3 - I - 0x002D1F 00:ED0F: 1E        .byte $1E   ; 
- D 3 - I - 0x002D20 00:ED10: 90        .byte $90   ; 
- D 3 - I - 0x002D21 00:ED11: 1D        .byte $1D   ; 
- D 3 - I - 0x002D22 00:ED12: 03        .byte $03   ; 
- D 3 - I - 0x002D23 00:ED13: 15        .byte $15   ; 
; 06 
- D 3 - I - 0x002D24 00:ED14: 10        .byte $10   ; 
- D 3 - I - 0x002D25 00:ED15: 18        .byte $18   ; 
- D 3 - I - 0x002D26 00:ED16: 08        .byte $08   ; 
- D 3 - I - 0x002D27 00:ED17: 1A        .byte $1A   ; 
- D 3 - I - 0x002D28 00:ED18: 08        .byte $08   ; 
- D 3 - I - 0x002D29 00:ED19: 19        .byte $19   ; 
- D 3 - I - 0x002D2A 00:ED1A: 10        .byte $10   ; 
- D 3 - I - 0x002D2B 00:ED1B: 14        .byte $14   ; 
- D 3 - I - 0x002D2C 00:ED1C: 03        .byte $03   ; 
- D 3 - I - 0x002D2D 00:ED1D: 1F        .byte $1F   ; 
- D 3 - I - 0x002D2E 00:ED1E: 90        .byte $90   ; 
- D 3 - I - 0x002D2F 00:ED1F: 1C        .byte $1C   ; 
- D 3 - I - 0x002D30 00:ED20: 2D        .byte $2D   ; 
- D 3 - I - 0x002D31 00:ED21: E0        .byte $E0   ; 
- D 3 - I - 0x002D32 00:ED22: 11        .byte $11   ; 
- D 3 - I - 0x002D33 00:ED23: 03        .byte $03   ; 
- D 3 - I - 0x002D34 00:ED24: 11        .byte $11   ; 
- D 3 - I - 0x002D35 00:ED25: C0        .byte $C0   ; 
- D 3 - I - 0x002D36 00:ED26: 80        .byte $80   ; 
- D 3 - I - 0x002D37 00:ED27: 11        .byte $11   ; 
- D 3 - I - 0x002D38 00:ED28: 03        .byte $03   ; 
- D 3 - I - 0x002D39 00:ED29: 11        .byte $11   ; 
- D 3 - I - 0x002D3A 00:ED2A: E0        .byte $E0   ; 
- D 3 - I - 0x002D3B 00:ED2B: 2D        .byte $2D   ; 
- D 3 - I - 0x002D3C 00:ED2C: E0        .byte $E0   ; 
- D 3 - I - 0x002D3D 00:ED2D: 11        .byte $11   ; 
; 07 
- D 3 - I - 0x002D3E 00:ED2E: 03        .byte $03   ; 
- D 3 - I - 0x002D3F 00:ED2F: 11        .byte $11   ; 
- D 3 - I - 0x002D40 00:ED30: 00        .byte $00   ; 
- D 3 - I - 0x002D41 00:ED31: 1F        .byte $1F   ; 
- D 3 - I - 0x002D42 00:ED32: 17        .byte $17   ; 
- D 3 - I - 0x002D43 00:ED33: 2C        .byte $2C   ; 
- D 3 - I - 0x002D44 00:ED34: 16        .byte $16   ; 
- D 3 - I - 0x002D45 00:ED35: 1D        .byte $1D   ; 
- D 3 - I - 0x002D46 00:ED36: 00        .byte $00   ; 
- D 3 - I - 0x002D47 00:ED37: 11        .byte $11   ; 
- D 3 - I - 0x002D48 00:ED38: 03        .byte $03   ; 
- D 3 - I - 0x002D49 00:ED39: 11        .byte $11   ; 
- D 3 - I - 0x002D4A 00:ED3A: E0        .byte $E0   ; 
- D 3 - I - 0x002D4B 00:ED3B: 2D        .byte $2D   ; 
- D 3 - I - 0x002D4C 00:ED3C: 22        .byte $22   ; 
- D 3 - I - 0x002D4D 00:ED3D: 90        .byte $90   ; 
- D 3 - I - 0x002D4E 00:ED3E: 1C        .byte $1C   ; 
- D 3 - I - 0x002D4F 00:ED3F: 03        .byte $03   ; 
- D 3 - I - 0x002D50 00:ED40: 1A        .byte $1A   ; 
- D 3 - I - 0x002D51 00:ED41: 00        .byte $00   ; 
- D 3 - I - 0x002D52 00:ED42: 11        .byte $11   ; 
- D 3 - I - 0x002D53 00:ED43: 80        .byte $80   ; 
- D 3 - I - 0x002D54 00:ED44: 11        .byte $11   ; 
- D 3 - I - 0x002D55 00:ED45: 00        .byte $00   ; 
- D 3 - I - 0x002D56 00:ED46: 1A        .byte $1A   ; 
- D 3 - I - 0x002D57 00:ED47: 03        .byte $03   ; 
; 08 
- D 3 - I - 0x002D58 00:ED48: 1E        .byte $1E   ; 
- D 3 - I - 0x002D59 00:ED49: 90        .byte $90   ; 
- D 3 - I - 0x002D5A 00:ED4A: 21        .byte $21   ; 
- D 3 - I - 0x002D5B 00:ED4B: 04        .byte $04   ; 
- D 3 - I - 0x002D5C 00:ED4C: 06        .byte $06   ; 
- D 3 - I - 0x002D5D 00:ED4D: C0        .byte $C0   ; 
- D 3 - I - 0x002D5E 00:ED4E: 03        .byte $03   ; 
- D 3 - I - 0x002D5F 00:ED4F: 40        .byte $40   ; 
- D 3 - I - 0x002D60 00:ED50: 11        .byte $11   ; 
- D 3 - I - 0x002D61 00:ED51: 80        .byte $80   ; 
- D 3 - I - 0x002D62 00:ED52: 11        .byte $11   ; 
- D 3 - I - 0x002D63 00:ED53: 40        .byte $40   ; 
- D 3 - I - 0x002D64 00:ED54: 03        .byte $03   ; 
- D 3 - I - 0x002D65 00:ED55: C0        .byte $C0   ; 
- D 3 - I - 0x002D66 00:ED56: 05        .byte $05   ; 
- D 3 - I - 0x002D67 00:ED57: 2D        .byte $2D   ; 
- D 3 - I - 0x002D68 00:ED58: 22        .byte $22   ; 
- D 3 - I - 0x002D69 00:ED59: 90        .byte $90   ; 
- D 3 - I - 0x002D6A 00:ED5A: 1D        .byte $1D   ; 
- D 3 - I - 0x002D6B 00:ED5B: 03        .byte $03   ; 
- D 3 - I - 0x002D6C 00:ED5C: 1B        .byte $1B   ; 
- D 3 - I - 0x002D6D 00:ED5D: 00        .byte $00   ; 
- D 3 - I - 0x002D6E 00:ED5E: 1E        .byte $1E   ; 
- D 3 - I - 0x002D6F 00:ED5F: 90        .byte $90   ; 
- D 3 - I - 0x002D70 00:ED60: 1C        .byte $1C   ; 
- D 3 - I - 0x002D71 00:ED61: 00        .byte $00   ; 
; 09 
- D 3 - I - 0x002D72 00:ED62: 1B        .byte $1B   ; 
- D 3 - I - 0x002D73 00:ED63: 03        .byte $03   ; 
- D 3 - I - 0x002D74 00:ED64: 1F        .byte $1F   ; 
- D 3 - I - 0x002D75 00:ED65: 90        .byte $90   ; 
- D 3 - I - 0x002D76 00:ED66: 21        .byte $21   ; 
- D 3 - I - 0x002D77 00:ED67: 2D        .byte $2D   ; 
- D 3 - I - 0x002D78 00:ED68: E0        .byte $E0   ; 
- D 3 - I - 0x002D79 00:ED69: 11        .byte $11   ; 
- D 3 - I - 0x002D7A 00:ED6A: 03        .byte $03   ; 
- D 3 - I - 0x002D7B 00:ED6B: 11        .byte $11   ; 
- D 3 - I - 0x002D7C 00:ED6C: C0        .byte $C0   ; 
- D 3 - I - 0x002D7D 00:ED6D: 80        .byte $80   ; 
- D 3 - I - 0x002D7E 00:ED6E: 11        .byte $11   ; 
- D 3 - I - 0x002D7F 00:ED6F: 03        .byte $03   ; 
- D 3 - I - 0x002D80 00:ED70: 11        .byte $11   ; 
- D 3 - I - 0x002D81 00:ED71: E0        .byte $E0   ; 
- D 3 - I - 0x002D82 00:ED72: 2D        .byte $2D   ; 
- D 3 - I - 0x002D83 00:ED73: E0        .byte $E0   ; 
- D 3 - I - 0x002D84 00:ED74: 11        .byte $11   ; 
- D 3 - I - 0x002D85 00:ED75: 03        .byte $03   ; 
- D 3 - I - 0x002D86 00:ED76: 11        .byte $11   ; 
- D 3 - I - 0x002D87 00:ED77: 00        .byte $00   ; 
- D 3 - I - 0x002D88 00:ED78: 1F        .byte $1F   ; 
- D 3 - I - 0x002D89 00:ED79: 90        .byte $90   ; 
- D 3 - I - 0x002D8A 00:ED7A: 1D        .byte $1D   ; 
- D 3 - I - 0x002D8B 00:ED7B: 00        .byte $00   ; 
; 0A 
- D 3 - I - 0x002D8C 00:ED7C: 11        .byte $11   ; 
- D 3 - I - 0x002D8D 00:ED7D: 03        .byte $03   ; 
- D 3 - I - 0x002D8E 00:ED7E: 11        .byte $11   ; 
- D 3 - I - 0x002D8F 00:ED7F: E0        .byte $E0   ; 
- D 3 - I - 0x002D90 00:ED80: 2D        .byte $2D   ; 
- D 3 - I - 0x002D91 00:ED81: 1F        .byte $1F   ; 
- D 3 - I - 0x002D92 00:ED82: 90        .byte $90   ; 
- D 3 - I - 0x002D93 00:ED83: 1C        .byte $1C   ; 
- D 3 - I - 0x002D94 00:ED84: 03        .byte $03   ; 
- D 3 - I - 0x002D95 00:ED85: 1A        .byte $1A   ; 
- D 3 - I - 0x002D96 00:ED86: 00        .byte $00   ; 
- D 3 - I - 0x002D97 00:ED87: 1E        .byte $1E   ; 
- D 3 - I - 0x002D98 00:ED88: 10        .byte $10   ; 
- D 3 - I - 0x002D99 00:ED89: 13        .byte $13   ; 
- D 3 - I - 0x002D9A 00:ED8A: 10        .byte $10   ; 
- D 3 - I - 0x002D9B 00:ED8B: 1C        .byte $1C   ; 
- D 3 - I - 0x002D9C 00:ED8C: 00        .byte $00   ; 
- D 3 - I - 0x002D9D 00:ED8D: 1A        .byte $1A   ; 
- D 3 - I - 0x002D9E 00:ED8E: 03        .byte $03   ; 
- D 3 - I - 0x002D9F 00:ED8F: 1E        .byte $1E   ; 
- D 3 - I - 0x002DA0 00:ED90: 90        .byte $90   ; 
- D 3 - I - 0x002DA1 00:ED91: 1D        .byte $1D   ; 
- D 3 - I - 0x002DA2 00:ED92: 2D        .byte $2D   ; 
- D 3 - I - 0x002DA3 00:ED93: 11        .byte $11   ; 
- D 3 - I - 0x002DA4 00:ED94: C3        .byte $C3   ; 
- D 3 - I - 0x002DA5 00:ED95: C3        .byte $C3   ; 
; 0B 
- D 3 - I - 0x002DA6 00:ED96: 03        .byte $03   ; 
- D 3 - I - 0x002DA7 00:ED97: 11        .byte $11   ; 
- D 3 - I - 0x002DA8 00:ED98: C3        .byte $C3   ; 
- D 3 - I - 0x002DA9 00:ED99: C3        .byte $C3   ; 
- D 3 - I - 0x002DAA 00:ED9A: 03        .byte $03   ; 
- D 3 - I - 0x002DAB 00:ED9B: 11        .byte $11   ; 
- D 3 - I - 0x002DAC 00:ED9C: 2D        .byte $2D   ; 
- D 3 - I - 0x002DAD 00:ED9D: 11        .byte $11   ; 
- D 3 - I - 0x002DAE 00:ED9E: 03        .byte $03   ; 
- D 3 - I - 0x002DAF 00:ED9F: 19        .byte $19   ; 
- D 3 - I - 0x002DB0 00:EDA0: 10        .byte $10   ; 
- D 3 - I - 0x002DB1 00:EDA1: 1D        .byte $1D   ; 
- D 3 - I - 0x002DB2 00:EDA2: 03        .byte $03   ; 
- D 3 - I - 0x002DB3 00:EDA3: 19        .byte $19   ; 
- D 3 - I - 0x002DB4 00:EDA4: 10        .byte $10   ; 
- D 3 - I - 0x002DB5 00:EDA5: 18        .byte $18   ; 
- D 3 - I - 0x002DB6 00:EDA6: 09        .byte $09   ; 
- D 3 - I - 0x002DB7 00:EDA7: 1A        .byte $1A   ; 
- D 3 - I - 0x002DB8 00:EDA8: 09        .byte $09   ; 
- D 3 - I - 0x002DB9 00:EDA9: 19        .byte $19   ; 
- D 3 - I - 0x002DBA 00:EDAA: 10        .byte $10   ; 
- D 3 - I - 0x002DBB 00:EDAB: 18        .byte $18   ; 
- D 3 - I - 0x002DBC 00:EDAC: 03        .byte $03   ; 
- D 3 - I - 0x002DBD 00:EDAD: 1F        .byte $1F   ; 
- D 3 - I - 0x002DBE 00:EDAE: 10        .byte $10   ; 
- D 3 - I - 0x002DBF 00:EDAF: 18        .byte $18   ; 
; 0C 
- D 3 - I - 0x002DC0 00:EDB0: 03        .byte $03   ; 
- D 3 - I - 0x002DC1 00:EDB1: 11        .byte $11   ; 
- D 3 - I - 0x002DC2 00:EDB2: 2D        .byte $2D   ; 
- D 3 - I - 0x002DC3 00:EDB3: 11        .byte $11   ; 
- D 3 - I - 0x002DC4 00:EDB4: 01        .byte $01   ; 
- D 3 - I - 0x002DC5 00:EDB5: 43        .byte $43   ; 
- D 3 - I - 0x002DC6 00:EDB6: 11        .byte $11   ; 
- D 3 - I - 0x002DC7 00:EDB7: C3        .byte $C3   ; 
- D 3 - I - 0x002DC8 00:EDB8: 03        .byte $03   ; 
- D 3 - I - 0x002DC9 00:EDB9: 00        .byte $00   ; 
- D 3 - I - 0x002DCA 00:EDBA: C3        .byte $C3   ; 
- D 3 - I - 0x002DCB 00:EDBB: 03        .byte $03   ; 
- D 3 - I - 0x002DCC 00:EDBC: 11        .byte $11   ; 
- D 3 - I - 0x002DCD 00:EDBD: 43        .byte $43   ; 
- D 3 - I - 0x002DCE 00:EDBE: 01        .byte $01   ; 
- D 3 - I - 0x002DCF 00:EDBF: 11        .byte $11   ; 
- D 3 - I - 0x002DD0 00:EDC0: 2D        .byte $2D   ; 
- D 3 - I - 0x002DD1 00:EDC1: 15        .byte $15   ; 
- D 3 - I - 0x002DD2 00:EDC2: 10        .byte $10   ; 
- D 3 - I - 0x002DD3 00:EDC3: 1D        .byte $1D   ; 
- D 3 - I - 0x002DD4 00:EDC4: 03        .byte $03   ; 
- D 3 - I - 0x002DD5 00:EDC5: 11        .byte $11   ; 
- D 3 - I - 0x002DD6 00:EDC6: 03        .byte $03   ; 
- D 3 - I - 0x002DD7 00:EDC7: 1B        .byte $1B   ; 
- D 3 - I - 0x002DD8 00:EDC8: 03        .byte $03   ; 
- D 3 - I - 0x002DD9 00:EDC9: 1F        .byte $1F   ; 
; 0D 
- D 3 - I - 0x002DDA 00:EDCA: 90        .byte $90   ; 
- D 3 - I - 0x002DDB 00:EDCB: 1D        .byte $1D   ; 
- D 3 - I - 0x002DDC 00:EDCC: 03        .byte $03   ; 
- D 3 - I - 0x002DDD 00:EDCD: 1B        .byte $1B   ; 
- D 3 - I - 0x002DDE 00:EDCE: 03        .byte $03   ; 
- D 3 - I - 0x002DDF 00:EDCF: 11        .byte $11   ; 
- D 3 - I - 0x002DE0 00:EDD0: 03        .byte $03   ; 
- D 3 - I - 0x002DE1 00:EDD1: 1F        .byte $1F   ; 
- D 3 - I - 0x002DE2 00:EDD2: 10        .byte $10   ; 
- D 3 - I - 0x002DE3 00:EDD3: 14        .byte $14   ; 
- D 3 - I - 0x002DE4 00:EDD4: 2D        .byte $2D   ; 
- D 3 - I - 0x002DE5 00:EDD5: 15        .byte $15   ; 
- D 3 - I - 0x002DE6 00:EDD6: 10        .byte $10   ; 
- D 3 - I - 0x002DE7 00:EDD7: 1C        .byte $1C   ; 
- D 3 - I - 0x002DE8 00:EDD8: 03        .byte $03   ; 
- D 3 - I - 0x002DE9 00:EDD9: 1A        .byte $1A   ; 
- D 3 - I - 0x002DEA 00:EDDA: 03        .byte $03   ; 
- D 3 - I - 0x002DEB 00:EDDB: 11        .byte $11   ; 
- D 3 - I - 0x002DEC 00:EDDC: 03        .byte $03   ; 
- D 3 - I - 0x002DED 00:EDDD: 1E        .byte $1E   ; 
- D 3 - I - 0x002DEE 00:EDDE: 10        .byte $10   ; 
- D 3 - I - 0x002DEF 00:EDDF: 13        .byte $13   ; 
- D 3 - I - 0x002DF0 00:EDE0: 10        .byte $10   ; 
- D 3 - I - 0x002DF1 00:EDE1: 1C        .byte $1C   ; 
- D 3 - I - 0x002DF2 00:EDE2: 03        .byte $03   ; 
- D 3 - I - 0x002DF3 00:EDE3: 11        .byte $11   ; 
; 0E 
- D 3 - I - 0x002DF4 00:EDE4: 03        .byte $03   ; 
- D 3 - I - 0x002DF5 00:EDE5: 1A        .byte $1A   ; 
- D 3 - I - 0x002DF6 00:EDE6: 03        .byte $03   ; 
- D 3 - I - 0x002DF7 00:EDE7: 1E        .byte $1E   ; 
- D 3 - I - 0x002DF8 00:EDE8: 10        .byte $10   ; 
- D 3 - I - 0x002DF9 00:EDE9: 14        .byte $14   ; 
- D 3 - I - 0x002DFA 00:EDEA: 2D        .byte $2D   ; 
- D 3 - I - 0x002DFB 00:EDEB: 11        .byte $11   ; 
- D 3 - I - 0x002DFC 00:EDEC: C3        .byte $C3   ; 
- D 3 - I - 0x002DFD 00:EDED: 03        .byte $03   ; 
- D 3 - I - 0x002DFE 00:EDEE: 11        .byte $11   ; 
- D 3 - I - 0x002DFF 00:EDEF: 83        .byte $83   ; 
- D 3 - I - 0x002E00 00:EDF0: 11        .byte $11   ; 
- D 3 - I - 0x002E01 00:EDF1: 83        .byte $83   ; 
- D 3 - I - 0x002E02 00:EDF2: 11        .byte $11   ; 
- D 3 - I - 0x002E03 00:EDF3: C3        .byte $C3   ; 
- D 3 - I - 0x002E04 00:EDF4: 03        .byte $03   ; 
- D 3 - I - 0x002E05 00:EDF5: 11        .byte $11   ; 
- D 3 - I - 0x002E06 00:EDF6: 2D        .byte $2D   ; 
- D 3 - I - 0x002E07 00:EDF7: 11        .byte $11   ; 
- D 3 - I - 0x002E08 00:EDF8: 03        .byte $03   ; 
- D 3 - I - 0x002E09 00:EDF9: 19        .byte $19   ; 
- D 3 - I - 0x002E0A 00:EDFA: 90        .byte $90   ; 
- D 3 - I - 0x002E0B 00:EDFB: 12        .byte $12   ; 
- D 3 - I - 0x002E0C 00:EDFC: 10        .byte $10   ; 
- D 3 - I - 0x002E0D 00:EDFD: 18        .byte $18   ; 
; 0F 
- D 3 - I - 0x002E0E 00:EDFE: 03        .byte $03   ; 
- D 3 - I - 0x002E0F 00:EDFF: 1A        .byte $1A   ; 
- D 3 - I - 0x002E10 00:EE00: 03        .byte $03   ; 
- D 3 - I - 0x002E11 00:EE01: 19        .byte $19   ; 
- D 3 - I - 0x002E12 00:EE02: 10        .byte $10   ; 
- D 3 - I - 0x002E13 00:EE03: 12        .byte $12   ; 
- D 3 - I - 0x002E14 00:EE04: 90        .byte $90   ; 
- D 3 - I - 0x002E15 00:EE05: 18        .byte $18   ; 
- D 3 - I - 0x002E16 00:EE06: 03        .byte $03   ; 
- D 3 - I - 0x002E17 00:EE07: 11        .byte $11   ; 
- D 3 - I - 0x002E18 00:EE08: 2D        .byte $2D   ; 
- D 3 - I - 0x002E19 00:EE09: 11        .byte $11   ; 
- D 3 - I - 0x002E1A 00:EE0A: C3        .byte $C3   ; 
- D 3 - I - 0x002E1B 00:EE0B: C3        .byte $C3   ; 
- D 3 - I - 0x002E1C 00:EE0C: C3        .byte $C3   ; 
- D 3 - I - 0x002E1D 00:EE0D: C3        .byte $C3   ; 
- D 3 - I - 0x002E1E 00:EE0E: 83        .byte $83   ; 
- D 3 - I - 0x002E1F 00:EE0F: 11        .byte $11   ; 
- D 3 - I - 0x002E20 00:EE10: 2D        .byte $2D   ; 
- D 3 - I - 0x002E21 00:EE11: 1E        .byte $1E   ; 
- D 3 - I - 0x002E22 00:EE12: D0        .byte $D0   ; 
- D 3 - I - 0x002E23 00:EE13: D0        .byte $D0   ; 
- D 3 - I - 0x002E24 00:EE14: D0        .byte $D0   ; 
- D 3 - I - 0x002E25 00:EE15: D0        .byte $D0   ; 
- D 3 - I - 0x002E26 00:EE16: 90        .byte $90   ; 
- D 3 - I - 0x002E27 00:EE17: 1C        .byte $1C   ; 



sub_EE18:
C - - - - - 0x002E28 00:EE18: A9 00     LDA #< ram_sfx
C - - - - - 0x002E2A 00:EE1A: 85 F0     STA ram_00F0
C - - - - - 0x002E2C 00:EE1C: A9 06     LDA #> ram_sfx
C - - - - - 0x002E2E 00:EE1E: 85 F1     STA ram_00F1
C - - - - - 0x002E30 00:EE20: A9 20     LDA #< ram_0620
C - - - - - 0x002E32 00:EE22: 85 F2     STA ram_00F2
C - - - - - 0x002E34 00:EE24: A9 06     LDA #> ram_0620
C - - - - - 0x002E36 00:EE26: 85 F3     STA ram_00F3
C - - - - - 0x002E38 00:EE28: AD 8C F0  LDA tbl_F08C
C - - - - - 0x002E3B 00:EE2B: 85 F4     STA ram_00F4
C - - - - - 0x002E3D 00:EE2D: AD 8D F0  LDA tbl_F08C + $01
C - - - - - 0x002E40 00:EE30: 85 F5     STA ram_00F5
C - - - - - 0x002E42 00:EE32: A9 40     LDA #$40
C - - - - - 0x002E44 00:EE34: 85 F7     STA ram_00F7
C - - - - - 0x002E46 00:EE36: A9 1F     LDA #$1F
C - - - - - 0x002E48 00:EE38: 8D 15 40  STA $4015
C - - - - - 0x002E4B 00:EE3B: A9 C0     LDA #$C0
C - - - - - 0x002E4D 00:EE3D: 8D 17 40  STA $4017
sub_EE40:
C - - - - - 0x002E50 00:EE40: A0 00     LDY #$00
C - - - - - 0x002E52 00:EE42: A9 00     LDA #$00
bra_EE44_loop:
C - - - - - 0x002E54 00:EE44: 91 F0     STA (ram_00F0),Y    ; 0600 0601 0602 0603 0604 0605 0606 0607 0608 0609 060A 060B 060C 060D 060E 060F
C - - - - - 0x002E56 00:EE46: C8        INY
C - - - - - 0x002E57 00:EE47: C0 10     CPY #$10
C - - - - - 0x002E59 00:EE49: D0 F9     BNE bra_EE44_loop
C - - - - - 0x002E5B 00:EE4B: A0 00     LDY #$00
C - - - - - 0x002E5D 00:EE4D: A2 10     LDX #$10
bra_EE4F_loop:
C - - - - - 0x002E5F 00:EE4F: A9 00     LDA #$00
C - - - - - 0x002E61 00:EE51: 91 F2     STA (ram_00F2),Y    ; 0620 0628 0630 0638 0640 0648 0650 0658 0660 0668 0670 0678 0680 0688 0690 0698
C - - - - - 0x002E63 00:EE53: 98        TYA
C - - - - - 0x002E64 00:EE54: 18        CLC
C - - - - - 0x002E65 00:EE55: 69 08     ADC #$08
C - - - - - 0x002E67 00:EE57: A8        TAY
C - - - - - 0x002E68 00:EE58: CA        DEX
C - - - - - 0x002E69 00:EE59: D0 F4     BNE bra_EE4F_loop
C - - - - - 0x002E6B 00:EE5B: 60        RTS



sub_EE5C_update_sound_engine:
C - - - - - 0x002E6C 00:EE5C: A9 00     LDA #$00
C - - - - - 0x002E6E 00:EE5E: 85 F8     STA ram_00F8
C - - - - - 0x002E70 00:EE60: 85 F9     STA ram_00F9
C - - - - - 0x002E72 00:EE62: 85 FA     STA ram_00FA
C - - - - - 0x002E74 00:EE64: 85 FB     STA ram_00FB
C - - - - - 0x002E76 00:EE66: 85 FD     STA ram_00FD
C - - - - - 0x002E78 00:EE68: 85 FF     STA ram_00FF
C - - - - - 0x002E7A 00:EE6A: A9 F8     LDA #$F8    ; < ram_00F8
C - - - - - 0x002E7C 00:EE6C: 85 FE     STA ram_00FE
bra_EE6E_loop:
C - - - - - 0x002E7E 00:EE6E: A4 FD     LDY ram_00FD
C - - - - - 0x002E80 00:EE70: B1 F2     LDA (ram_00F2),Y    ; 0620 0628 0630 0638 0640 0648 0650 0658 0660 0668 0670 0678 0680 0688 0690 0698
C - - - - - 0x002E82 00:EE72: F0 3A     BEQ bra_EEAE
C - - - - - 0x002E84 00:EE74: C9 05     CMP #$05
C - - - - - 0x002E86 00:EE76: 90 0B     BCC bra_EE83
C - - - - - 0x002E88 00:EE78: 38        SEC
C - - - - - 0x002E89 00:EE79: E9 05     SBC #$05
C - - - - - 0x002E8B 00:EE7B: A8        TAY
C - - - - - 0x002E8C 00:EE7C: A9 01     LDA #$01
C - - - - - 0x002E8E 00:EE7E: 91 FE     STA (ram_00FE),Y    ; 00F8 00F9 00FA
C - - - - - 0x002E90 00:EE80: 4C AE EE  JMP loc_EEAE
bra_EE83:
C - - - - - 0x002E93 00:EE83: 38        SEC
C - - - - - 0x002E94 00:EE84: E9 01     SBC #$01
C - - - - - 0x002E96 00:EE86: A8        TAY
C - - - - - 0x002E97 00:EE87: B1 FE     LDA (ram_00FE),Y    ; 00F8 00F9 00FA
C - - - - - 0x002E99 00:EE89: D0 23     BNE bra_EEAE
C - - - - - 0x002E9B 00:EE8B: A9 01     LDA #$01
C - - - - - 0x002E9D 00:EE8D: 91 FE     STA (ram_00FE),Y    ; 00F8 00F9 00FA
C - - - - - 0x002E9F 00:EE8F: 98        TYA
C - - - - - 0x002EA0 00:EE90: AA        TAX
C - - - - - 0x002EA1 00:EE91: 69 04     ADC #$04
C - - - - - 0x002EA3 00:EE93: A4 FD     LDY ram_00FD
C - - - - - 0x002EA5 00:EE95: 91 F2     STA (ram_00F2),Y    ; 0620 0628 0630 0638 0640 0648 0650 0658 0660 0668 0670 0678 0680 0688 0690 0698
C - - - - - 0x002EA7 00:EE97: 8A        TXA
C - - - - - 0x002EA8 00:EE98: 0A        ASL
C - - - - - 0x002EA9 00:EE99: 0A        ASL
C - - - - - 0x002EAA 00:EE9A: 85 F6     STA ram_00F6
C - - - - - 0x002EAC 00:EE9C: A2 00     LDX #$00
C - - - - - 0x002EAE 00:EE9E: A9 04     LDA #$04
bra_EEA0_loop:
C - - - - - 0x002EB0 00:EEA0: 48        PHA
C - - - - - 0x002EB1 00:EEA1: C8        INY
C - - - - - 0x002EB2 00:EEA2: B1 F2     LDA (ram_00F2),Y    ; 0621-069C
C - - - - - 0x002EB4 00:EEA4: 81 F6     STA (ram_00F6,X)    ; 4000 4001 4002 4003 4004 4005 4006 4007 4008 4009 400A 400B
C - - - - - 0x002EB6 00:EEA6: E6 F6     INC ram_00F6
C - - - - - 0x002EB8 00:EEA8: 68        PLA
C - - - - - 0x002EB9 00:EEA9: 38        SEC
C - - - - - 0x002EBA 00:EEAA: E9 01     SBC #$01
C - - - - - 0x002EBC 00:EEAC: D0 F2     BNE bra_EEA0_loop
bra_EEAE:
loc_EEAE:
C D 3 - - - 0x002EBE 00:EEAE: A5 FD     LDA ram_00FD
C - - - - - 0x002EC0 00:EEB0: 18        CLC
C - - - - - 0x002EC1 00:EEB1: 69 08     ADC #$08
C - - - - - 0x002EC3 00:EEB3: 85 FD     STA ram_00FD
C - - - - - 0x002EC5 00:EEB5: C9 80     CMP #$80
C - - - - - 0x002EC7 00:EEB7: 90 B5     BCC bra_EE6E_loop
C - - - - - 0x002EC9 00:EEB9: A0 00     LDY #$00
C - - - - - 0x002ECB 00:EEBB: 84 FC     STY ram_00FC
C - - - - - 0x002ECD 00:EEBD: 84 FD     STY ram_00FD
loc_EEBF:
C D 3 - - - 0x002ECF 00:EEBF: A4 FC     LDY ram_00FC
C - - - - - 0x002ED1 00:EEC1: B1 F0     LDA (ram_00F0),Y    ; 0600 0601 0602 0603 0604 0605 0606 0607 0608 0609 060A 060B 060C 060D 060E 060F
C - - - - - 0x002ED3 00:EEC3: D0 03     BNE bra_EEC8
C - - - - - 0x002ED5 00:EEC5: 4C 84 EF  JMP loc_EF84
bra_EEC8:
C - - - - - 0x002ED8 00:EEC8: A4 FD     LDY ram_00FD
C - - - - - 0x002EDA 00:EECA: B1 F2     LDA (ram_00F2),Y    ; 0620 0628 0630 0638 0640 0648 0650 0658 0660 0668 0670 0678 0680 0688 0690 0698
C - - - - - 0x002EDC 00:EECC: D0 51     BNE bra_EF1F
C - - - - - 0x002EDE 00:EECE: A5 FC     LDA ram_00FC
C - - - - - 0x002EE0 00:EED0: 0A        ASL
C - - - - - 0x002EE1 00:EED1: A8        TAY
C - - - - - 0x002EE2 00:EED2: B1 F4     LDA (ram_00F4),Y    ; low pointers 0x00309E
C - - - - - 0x002EE4 00:EED4: 48        PHA
C - - - - - 0x002EE5 00:EED5: A5 FD     LDA ram_00FD
C - - - - - 0x002EE7 00:EED7: 69 05     ADC #$05
C - - - - - 0x002EE9 00:EED9: A8        TAY
C - - - - - 0x002EEA 00:EEDA: 68        PLA
C - - - - - 0x002EEB 00:EEDB: 91 F2     STA (ram_00F2),Y    ; 0625 062D 0635 063D 0645 064D 0655 065D 0665 066D 0675 067D 0685 068D 0695 069D
C - - - - - 0x002EED 00:EEDD: A5 FC     LDA ram_00FC
C - - - - - 0x002EEF 00:EEDF: 0A        ASL
C - - - - - 0x002EF0 00:EEE0: 69 01     ADC #$01
C - - - - - 0x002EF2 00:EEE2: A8        TAY
C - - - - - 0x002EF3 00:EEE3: B1 F4     LDA (ram_00F4),Y    ; high pointers 0x00309E
C - - - - - 0x002EF5 00:EEE5: 48        PHA
C - - - - - 0x002EF6 00:EEE6: A5 FD     LDA ram_00FD
C - - - - - 0x002EF8 00:EEE8: 69 06     ADC #$06
C - - - - - 0x002EFA 00:EEEA: A8        TAY
C - - - - - 0x002EFB 00:EEEB: 68        PLA
C - - - - - 0x002EFC 00:EEEC: 91 F2     STA (ram_00F2),Y    ; 0626 062E 0636 063E 0646 064E 0656 065E 0666 066E 0676 067E 0686 068E 0696 069E
C - - - - - 0x002EFE 00:EEEE: 20 4F F0  JSR sub_F04F_get_sound_data_and_increase_pointer
C - - - - - 0x002F01 00:EEF1: A4 FD     LDY ram_00FD
C - - - - - 0x002F03 00:EEF3: 91 F2     STA (ram_00F2),Y    ; 0620 0628 0630 0638 0640 0648 0650 0658 0660 0668 0670 0678 0680 0688 0690 0698
C - - - - - 0x002F05 00:EEF5: 20 4F F0  JSR sub_F04F_get_sound_data_and_increase_pointer
C - - - - - 0x002F08 00:EEF8: AA        TAX
C - - - - - 0x002F09 00:EEF9: A5 FD     LDA ram_00FD
C - - - - - 0x002F0B 00:EEFB: 18        CLC
C - - - - - 0x002F0C 00:EEFC: 69 01     ADC #$01
C - - - - - 0x002F0E 00:EEFE: A8        TAY
C - - - - - 0x002F0F 00:EEFF: 8A        TXA
C - - - - - 0x002F10 00:EF00: 91 F2     STA (ram_00F2),Y    ; 0621 0629 0631 0639 0641 0649 0651 0659 0661 0669 0671 0679 0681 0689 0691 0699
C - - - - - 0x002F12 00:EF02: 20 4F F0  JSR sub_F04F_get_sound_data_and_increase_pointer
C - - - - - 0x002F15 00:EF05: AA        TAX
C - - - - - 0x002F16 00:EF06: A5 FD     LDA ram_00FD
C - - - - - 0x002F18 00:EF08: 18        CLC
C - - - - - 0x002F19 00:EF09: 69 02     ADC #$02
C - - - - - 0x002F1B 00:EF0B: A8        TAY
C - - - - - 0x002F1C 00:EF0C: 8A        TXA
C - - - - - 0x002F1D 00:EF0D: 91 F2     STA (ram_00F2),Y    ; 0622 062A 0632 063A 0642 064A 0652 065A 0662 066A 0672 067A 0682 068A 0692 069A
C - - - - - 0x002F1F 00:EF0F: 20 4F F0  JSR sub_F04F_get_sound_data_and_increase_pointer
C - - - - - 0x002F22 00:EF12: AA        TAX
C - - - - - 0x002F23 00:EF13: A5 FD     LDA ram_00FD
C - - - - - 0x002F25 00:EF15: 18        CLC
C - - - - - 0x002F26 00:EF16: 69 04     ADC #$04
C - - - - - 0x002F28 00:EF18: A8        TAY
C - - - - - 0x002F29 00:EF19: 8A        TXA
C - - - - - 0x002F2A 00:EF1A: 91 F2     STA (ram_00F2),Y    ; 0624 062C 0634 063C 0644 064C 0654 065C 0664 066C 0674 067C 0684 068C 0694 069C
C - - - - - 0x002F2C 00:EF1C: 4C 2E EF  JMP loc_EF2E
bra_EF1F:
C - - - - - 0x002F2F 00:EF1F: A5 FD     LDA ram_00FD
C - - - - - 0x002F31 00:EF21: 18        CLC
C - - - - - 0x002F32 00:EF22: 69 07     ADC #$07
C - - - - - 0x002F34 00:EF24: A8        TAY
C - - - - - 0x002F35 00:EF25: B1 F2     LDA (ram_00F2),Y    ; 0627 062F 0637 063F 0647 064F 0657 065F 0667 066F 0677 067F 0687 068F 0697 069F
C - - - - - 0x002F37 00:EF27: 38        SEC
C - - - - - 0x002F38 00:EF28: E9 01     SBC #$01
C - - - - - 0x002F3A 00:EF2A: 91 F2     STA (ram_00F2),Y    ; 0627 062F 0637 063F 0647 064F 0657 065F 0667 066F 0677 067F 0687 068F 0697 069F
C - - - - - 0x002F3C 00:EF2C: D0 56     BNE bra_EF84
loc_EF2E:
C D 3 - - - 0x002F3E 00:EF2E: 20 4F F0  JSR sub_F04F_get_sound_data_and_increase_pointer
C - - - - - 0x002F41 00:EF31: C9 F0     CMP #$F0
C - - - - - 0x002F43 00:EF33: B0 64     BCS bra_EF99_F0_FF_control_byte
C - - - - - 0x002F45 00:EF35: C9 C0     CMP #$C0
C - - - - - 0x002F47 00:EF37: B0 3E     BCS bra_EF77_C0_EF
; 00-BF
C - - - - - 0x002F49 00:EF39: 48        PHA
C - - - - - 0x002F4A 00:EF3A: 29 F0     AND #$F0
C - - - - - 0x002F4C 00:EF3C: 4A        LSR
C - - - - - 0x002F4D 00:EF3D: 4A        LSR
C - - - - - 0x002F4E 00:EF3E: 4A        LSR
C - - - - - 0x002F4F 00:EF3F: AA        TAX
C - - - - - 0x002F50 00:EF40: BD 74 F0  LDA tbl_F074,X
C - - - - - 0x002F53 00:EF43: 85 FE     STA ram_00FE
C - - - - - 0x002F55 00:EF45: BD 75 F0  LDA tbl_F074 + $01,X
C - - - - - 0x002F58 00:EF48: 85 FF     STA ram_00FF
C - - - - - 0x002F5A 00:EF4A: 68        PLA
C - - - - - 0x002F5B 00:EF4B: 29 0F     AND #$0F
C - - - - - 0x002F5D 00:EF4D: F0 08     BEQ bra_EF57_00
; 01-0F
C - - - - - 0x002F5F 00:EF4F: AA        TAX
bra_EF50_loop:
C - - - - - 0x002F60 00:EF50: 46 FE     LSR ram_00FE
C - - - - - 0x002F62 00:EF52: 66 FF     ROR ram_00FF
C - - - - - 0x002F64 00:EF54: CA        DEX
C - - - - - 0x002F65 00:EF55: D0 F9     BNE bra_EF50_loop
bra_EF57_00:
C - - - - - 0x002F67 00:EF57: A5 FD     LDA ram_00FD
C - - - - - 0x002F69 00:EF59: 18        CLC
C - - - - - 0x002F6A 00:EF5A: 69 04     ADC #$04
C - - - - - 0x002F6C 00:EF5C: A8        TAY
C - - - - - 0x002F6D 00:EF5D: B1 F2     LDA (ram_00F2),Y    ; 0624 062C 0634 063C 0644 064C 0654 065C 0664 066C 0674 067C 0684 068C 0694 069C
C - - - - - 0x002F6F 00:EF5F: 29 F8     AND #$F8
C - - - - - 0x002F71 00:EF61: 05 FE     ORA ram_00FE
C - - - - - 0x002F73 00:EF63: 91 F2     STA (ram_00F2),Y    ; 0624 062C 0634 063C 0644 064C 0654 065C 0664 066C 0674 067C 0684 068C 0694 069C
C - - - - - 0x002F75 00:EF65: A5 FF     LDA ram_00FF
C - - - - - 0x002F77 00:EF67: 88        DEY
C - - - - - 0x002F78 00:EF68: 91 F2     STA (ram_00F2),Y    ; 0623 062B 0633 063B 0643 064B 0653 065B 0663 066B 0673 067B 0683 068B 0693 069B
C - - - - - 0x002F7A 00:EF6A: A4 FD     LDY ram_00FD
C - - - - - 0x002F7C 00:EF6C: B1 F2     LDA (ram_00F2),Y    ; 0620 0628 0630 0638 0640 0648 0650 0658 0660 0668 0670 0678 0680 0688 0690 0698
C - - - - - 0x002F7E 00:EF6E: C9 05     CMP #$05
C - - - - - 0x002F80 00:EF70: 90 05     BCC bra_EF77
C - - - - - 0x002F82 00:EF72: 38        SEC
C - - - - - 0x002F83 00:EF73: E9 04     SBC #$04
C - - - - - 0x002F85 00:EF75: 91 F2     STA (ram_00F2),Y    ; 0620 0628 0630 0638 0640 0648 0650 0658 0660 0668 0670 0678 0680 0688 0690 0698
bra_EF77:
bra_EF77_C0_EF:
C - - - - - 0x002F87 00:EF77: 20 4F F0  JSR sub_F04F_get_sound_data_and_increase_pointer
C - - - - - 0x002F8A 00:EF7A: 48        PHA
C - - - - - 0x002F8B 00:EF7B: A5 FD     LDA ram_00FD
C - - - - - 0x002F8D 00:EF7D: 18        CLC
C - - - - - 0x002F8E 00:EF7E: 69 07     ADC #$07
C - - - - - 0x002F90 00:EF80: A8        TAY
C - - - - - 0x002F91 00:EF81: 68        PLA
C - - - - - 0x002F92 00:EF82: 91 F2     STA (ram_00F2),Y    ; 0627 062F 0637 063F 0647 064F 0657 065F 0667 066F 0677 067F 0687 068F 0697 069F
bra_EF84:
loc_EF84:
C D 3 - - - 0x002F94 00:EF84: A5 FD     LDA ram_00FD
C - - - - - 0x002F96 00:EF86: 18        CLC
C - - - - - 0x002F97 00:EF87: 69 08     ADC #$08
C - - - - - 0x002F99 00:EF89: 85 FD     STA ram_00FD
C - - - - - 0x002F9B 00:EF8B: A5 FC     LDA ram_00FC
C - - - - - 0x002F9D 00:EF8D: 69 01     ADC #$01
C - - - - - 0x002F9F 00:EF8F: 85 FC     STA ram_00FC
C - - - - - 0x002FA1 00:EF91: C9 10     CMP #$10
C - - - - - 0x002FA3 00:EF93: B0 03     BCS bra_EF98_RTS
C - - - - - 0x002FA5 00:EF95: 4C BF EE  JMP loc_EEBF
bra_EF98_RTS:
C - - - - - 0x002FA8 00:EF98: 60        RTS
bra_EF99_F0_FF_control_byte:
C - - - - - 0x002FA9 00:EF99: 29 0F     AND #$0F
C - - - - - 0x002FAB 00:EF9B: 0A        ASL
C - - - - - 0x002FAC 00:EF9C: AA        TAX
C - - - - - 0x002FAD 00:EF9D: BD AA EF  LDA tbl_EFAA,X
C - - - - - 0x002FB0 00:EFA0: 85 FE     STA ram_00FE
C - - - - - 0x002FB2 00:EFA2: BD AB EF  LDA tbl_EFAA + $01,X
C - - - - - 0x002FB5 00:EFA5: 85 FF     STA ram_00FF
C - - - - - 0x002FB7 00:EFA7: 6C FE 00  JMP (ram_00FE)



tbl_EFAA:
; a lot of unused code usually means that the sound engine was taken from another game
- D 3 - - - 0x002FBA 00:EFAA: CA EF     .word ofs_018_EFCA_00_turn_sound_off
- - - - - - 0x002FBC 00:EFAC: D7 EF     .word ofs_018_EFD7_01   ; never used
- D 3 - - - 0x002FBE 00:EFAE: EF EF     .word ofs_018_EFEF_02
- D 3 - - - 0x002FC0 00:EFB0: 07 F0     .word ofs_018_F007_03
- - - - - - 0x002FC2 00:EFB2: 1F F0     .word ofs_018_F01F_04   ; never used
- D 3 - - - 0x002FC4 00:EFB4: 2F F0     .word ofs_018_F02F_05
- - - - - - 0x002FC6 00:EFB6: 3F F0     .word ofs_018_F03F_06   ; never used
- - - - - - 0x002FC8 00:EFB8: CA EF     .word ofs_018_EFCA_07   ; never used
- - - - - - 0x002FCA 00:EFBA: CA EF     .word ofs_018_EFCA_08   ; never used
- - - - - - 0x002FCC 00:EFBC: CA EF     .word ofs_018_EFCA_09   ; never used
- - - - - - 0x002FCE 00:EFBE: CA EF     .word ofs_018_EFCA_0A   ; never used
- - - - - - 0x002FD0 00:EFC0: CA EF     .word ofs_018_EFCA_0B   ; never used
- - - - - - 0x002FD2 00:EFC2: CA EF     .word ofs_018_EFCA_0C   ; never used
- - - - - - 0x002FD4 00:EFC4: CA EF     .word ofs_018_EFCA_0D   ; never used
- - - - - - 0x002FD6 00:EFC6: CA EF     .word ofs_018_EFCA_0E   ; never used
- - - - - - 0x002FD8 00:EFC8: CA EF     .word ofs_018_EFCA_0F   ; never used



ofs_018_EFCA_00_turn_sound_off:
ofs_018_EFCA_07:
ofs_018_EFCA_08:
ofs_018_EFCA_09:
ofs_018_EFCA_0A:
ofs_018_EFCA_0B:
ofs_018_EFCA_0C:
ofs_018_EFCA_0D:
ofs_018_EFCA_0E:
ofs_018_EFCA_0F:
C - - J - - 0x002FDA 00:EFCA: A4 FC     LDY ram_00FC
C - - - - - 0x002FDC 00:EFCC: A9 00     LDA #$00
C - - - - - 0x002FDE 00:EFCE: 91 F0     STA (ram_00F0),Y    ; 0600 0601 0602 0603 0604 0605 0606 0607 0608 0609 060A 060B 060C 060D 060E 060F
C - - - - - 0x002FE0 00:EFD0: A4 FD     LDY ram_00FD
C - - - - - 0x002FE2 00:EFD2: 91 F2     STA (ram_00F2),Y    ; 0620 0628 0630 0638 0640 0648 0650 0658 0660 0668 0670 0678 0680 0688 0690 0698
C - - - - - 0x002FE4 00:EFD4: 4C 84 EF  JMP loc_EF84



ofs_018_EFD7_01:
- - - - - - 0x002FE7 00:EFD7: 20 4F F0  JSR sub_F04F_get_sound_data_and_increase_pointer
- - - - - - 0x002FEA 00:EFDA: 48        PHA
- - - - - - 0x002FEB 00:EFDB: A5 FD     LDA ram_00FD
- - - - - - 0x002FED 00:EFDD: 18        CLC
- - - - - - 0x002FEE 00:EFDE: 69 01     ADC #$01
- - - - - - 0x002FF0 00:EFE0: A8        TAY
- - - - - - 0x002FF1 00:EFE1: B1 F2     LDA (ram_00F2),Y
- - - - - - 0x002FF3 00:EFE3: 29 3F     AND #$3F
- - - - - - 0x002FF5 00:EFE5: 91 F2     STA (ram_00F2),Y
- - - - - - 0x002FF7 00:EFE7: 68        PLA
- - - - - - 0x002FF8 00:EFE8: 11 F2     ORA (ram_00F2),Y
- - - - - - 0x002FFA 00:EFEA: 91 F2     STA (ram_00F2),Y
- - - - - - 0x002FFC 00:EFEC: 4C 2E EF  JMP loc_EF2E



ofs_018_EFEF_02:
C - - J - - 0x002FFF 00:EFEF: 20 4F F0  JSR sub_F04F_get_sound_data_and_increase_pointer
C - - - - - 0x003002 00:EFF2: 48        PHA
C - - - - - 0x003003 00:EFF3: A5 FD     LDA ram_00FD
C - - - - - 0x003005 00:EFF5: 18        CLC
C - - - - - 0x003006 00:EFF6: 69 01     ADC #$01
C - - - - - 0x003008 00:EFF8: A8        TAY
C - - - - - 0x003009 00:EFF9: B1 F2     LDA (ram_00F2),Y    ; 0639
C - - - - - 0x00300B 00:EFFB: 29 CF     AND #$CF
C - - - - - 0x00300D 00:EFFD: 91 F2     STA (ram_00F2),Y    ; 0639
C - - - - - 0x00300F 00:EFFF: 68        PLA
C - - - - - 0x003010 00:F000: 11 F2     ORA (ram_00F2),Y    ; 0639
C - - - - - 0x003012 00:F002: 91 F2     STA (ram_00F2),Y    ; 0639
C - - - - - 0x003014 00:F004: 4C 2E EF  JMP loc_EF2E



ofs_018_F007_03:
C - - J - - 0x003017 00:F007: 20 4F F0  JSR sub_F04F_get_sound_data_and_increase_pointer
C - - - - - 0x00301A 00:F00A: 48        PHA
C - - - - - 0x00301B 00:F00B: A5 FD     LDA ram_00FD
C - - - - - 0x00301D 00:F00D: 18        CLC
C - - - - - 0x00301E 00:F00E: 69 01     ADC #$01
C - - - - - 0x003020 00:F010: A8        TAY
C - - - - - 0x003021 00:F011: B1 F2     LDA (ram_00F2),Y    ; 0639
C - - - - - 0x003023 00:F013: 29 F0     AND #$F0
C - - - - - 0x003025 00:F015: 91 F2     STA (ram_00F2),Y    ; 0639
C - - - - - 0x003027 00:F017: 68        PLA
C - - - - - 0x003028 00:F018: 11 F2     ORA (ram_00F2),Y    ; 0639
C - - - - - 0x00302A 00:F01A: 91 F2     STA (ram_00F2),Y    ; 0639
C - - - - - 0x00302C 00:F01C: 4C 2E EF  JMP loc_EF2E



ofs_018_F01F_04:
- - - - - - 0x00302F 00:F01F: 20 4F F0  JSR sub_F04F_get_sound_data_and_increase_pointer
- - - - - - 0x003032 00:F022: 48        PHA
- - - - - - 0x003033 00:F023: A5 FD     LDA ram_00FD
- - - - - - 0x003035 00:F025: 18        CLC
- - - - - - 0x003036 00:F026: 69 02     ADC #$02
- - - - - - 0x003038 00:F028: A8        TAY
- - - - - - 0x003039 00:F029: 68        PLA
- - - - - - 0x00303A 00:F02A: 91 F2     STA (ram_00F2),Y
- - - - - - 0x00303C 00:F02C: 4C 2E EF  JMP loc_EF2E



ofs_018_F02F_05:
C - - J - - 0x00303F 00:F02F: 20 4F F0  JSR sub_F04F_get_sound_data_and_increase_pointer
C - - - - - 0x003042 00:F032: 48        PHA
C - - - - - 0x003043 00:F033: A5 FD     LDA ram_00FD
C - - - - - 0x003045 00:F035: 18        CLC
C - - - - - 0x003046 00:F036: 69 04     ADC #$04
C - - - - - 0x003048 00:F038: A8        TAY
C - - - - - 0x003049 00:F039: 68        PLA
C - - - - - 0x00304A 00:F03A: 91 F2     STA (ram_00F2),Y    ; 063C 0644 064C 065C 069C
C - - - - - 0x00304C 00:F03C: 4C 2E EF  JMP loc_EF2E



ofs_018_F03F_06:
- - - - - - 0x00304F 00:F03F: 20 4F F0  JSR sub_F04F_get_sound_data_and_increase_pointer
- - - - - - 0x003052 00:F042: 48        PHA
- - - - - - 0x003053 00:F043: A5 FD     LDA ram_00FD
- - - - - - 0x003055 00:F045: 18        CLC
- - - - - - 0x003056 00:F046: 69 01     ADC #$01
- - - - - - 0x003058 00:F048: A8        TAY
- - - - - - 0x003059 00:F049: 68        PLA
- - - - - - 0x00305A 00:F04A: 91 F2     STA (ram_00F2),Y
- - - - - - 0x00305C 00:F04C: 4C 2E EF  JMP loc_EF2E



sub_F04F_get_sound_data_and_increase_pointer:
C - - - - - 0x00305F 00:F04F: A5 FD     LDA ram_00FD
C - - - - - 0x003061 00:F051: 18        CLC
C - - - - - 0x003062 00:F052: 69 05     ADC #$05
C - - - - - 0x003064 00:F054: A8        TAY
C - - - - - 0x003065 00:F055: B1 F2     LDA (ram_00F2),Y    ; 0625 062D 0635 063D 0645 064D 0655 065D 0665 066D 0675 067D 0685 068D 0695 069D
C - - - - - 0x003067 00:F057: 85 FE     STA ram_00FE
C - - - - - 0x003069 00:F059: C8        INY
C - - - - - 0x00306A 00:F05A: B1 F2     LDA (ram_00F2),Y    ; 0626 062E 0636 063E 0646 064E 0656 065E 0666 066E 0676 067E 0686 068E 0696 069E
C - - - - - 0x00306C 00:F05C: 85 FF     STA ram_00FF
; bzk optimize, read (ram_00FE,X) at the end instead of PHA + PLA
C - - - - - 0x00306E 00:F05E: A2 00     LDX #$00
C - - - - - 0x003070 00:F060: A1 FE     LDA (ram_00FE,X)    ; data from 0x00309E
C - - - - - 0x003072 00:F062: 48        PHA
C - - - - - 0x003073 00:F063: A5 FE     LDA ram_00FE
C - - - - - 0x003075 00:F065: 88        DEY
C - - - - - 0x003076 00:F066: 18        CLC
C - - - - - 0x003077 00:F067: 69 01     ADC #< $0001
C - - - - - 0x003079 00:F069: 91 F2     STA (ram_00F2),Y    ; 0625 062D 0635 063D 0645 064D 0655 065D 0665 066D 0675 067D 0685 068D 0695 069D
C - - - - - 0x00307B 00:F06B: A5 FF     LDA ram_00FF
C - - - - - 0x00307D 00:F06D: 69 00     ADC #> $0001
C - - - - - 0x00307F 00:F06F: C8        INY
C - - - - - 0x003080 00:F070: 91 F2     STA (ram_00F2),Y    ; 0626 062E 0636 063E 0646 064E 0656 065E 0666 066E 0676 067E 0686 068E 0696 069E
C - - - - - 0x003082 00:F072: 68        PLA
C - - - - - 0x003083 00:F073: 60        RTS



tbl_F074:
- D 3 - - - 0x003084 00:F074: 03        .byte $03, $F9   ; 00 
- D 3 - - - 0x003086 00:F076: 03        .byte $03, $C0   ; 10 
- D 3 - - - 0x003088 00:F078: 03        .byte $03, $8A   ; 20 
- D 3 - - - 0x00308A 00:F07A: 03        .byte $03, $57   ; 30 
- D 3 - - - 0x00308C 00:F07C: 03        .byte $03, $27   ; 40 
- D 3 - - - 0x00308E 00:F07E: 02        .byte $02, $FA   ; 50 
- D 3 - - - 0x003090 00:F080: 02        .byte $02, $CF   ; 60 
- D 3 - - - 0x003092 00:F082: 02        .byte $02, $A7   ; 70 
- D 3 - - - 0x003094 00:F084: 02        .byte $02, $81   ; 80 
- D 3 - - - 0x003096 00:F086: 02        .byte $02, $5D   ; 90 
- D 3 - - - 0x003098 00:F088: 02        .byte $02, $3B   ; A0 
- D 3 - - - 0x00309A 00:F08A: 02        .byte $02, $1B   ; B0 



tbl_F08C:
- D 3 - - - 0x00309C 00:F08C: 8E F0     .word tbl_F08E



tbl_F08E:
; bytes from data chunks are read via 0x003070
- D 3 - I - 0x00309E 00:F08E: 57 F3     .word _off001_F357_00
- D 3 - I - 0x0030A0 00:F090: A0 F3     .word _off001_F3A0_01
- D 3 - I - 0x0030A2 00:F092: AE F0     .word _off001_F0AE_02
- D 3 - I - 0x0030A4 00:F094: C8 F2     .word _off001_F2C8_03
- D 3 - I - 0x0030A6 00:F096: CB F3     .word _off001_F3CB_04
- D 3 - I - 0x0030A8 00:F098: DC F3     .word _off001_F3DC_05
- D 3 - I - 0x0030AA 00:F09A: C3 F0     .word _off001_F0C3_06
- D 3 - I - 0x0030AC 00:F09C: 70 F1     .word _off001_F170_07
- D 3 - I - 0x0030AE 00:F09E: A9 F2     .word _off001_F2A9_08
- D 3 - I - 0x0030B0 00:F0A0: 5B F1     .word _off001_F15B_09
- D 3 - I - 0x0030B2 00:F0A2: EE F0     .word _off001_F0EE_0A
- D 3 - I - 0x0030B4 00:F0A4: 19 F1     .word _off001_F119_0B
- D 3 - I - 0x0030B6 00:F0A6: 3C F1     .word _off001_F13C_0C
- D 3 - I - 0x0030B8 00:F0A8: 93 F1     .word _off001_F193_0D
- D 3 - I - 0x0030BA 00:F0AA: 06 F2     .word _off001_F206_0E
- D 3 - I - 0x0030BC 00:F0AC: ED F3     .word _off001_F3ED_0F



; code 0x002FA9
con_sfx_off                             = $F0 ; turn sound off
con_sfx_F2                              = $F2 ; 
con_sfx_F3                              = $F3 ; 
con_sfx_F5                              = $F5 ; 


; todo
_off001_F0AE_02:
- D 3 - I - 0x0030BE 00:F0AE: 01        .byte $01   ; 
- D 3 - I - 0x0030BF 00:F0AF: 03        .byte $03   ; 
- D 3 - I - 0x0030C0 00:F0B0: 7F        .byte $7F   ; 
- D 3 - I - 0x0030C1 00:F0B1: 08        .byte $08   ; 
- D 3 - I - 0x0030C2 00:F0B2: A2        .byte $A2   ; 
- D 3 - I - 0x0030C3 00:F0B3: 0C        .byte $0C   ; 
- D 3 - I - 0x0030C4 00:F0B4: A2        .byte $A2   ; 
- D 3 - I - 0x0030C5 00:F0B5: 0C        .byte $0C   ; 
- D 3 - I - 0x0030C6 00:F0B6: A2        .byte $A2   ; 
- D 3 - I - 0x0030C7 00:F0B7: 0C        .byte $0C   ; 
- D 3 - I - 0x0030C8 00:F0B8: A2        .byte $A2   ; 
- D 3 - I - 0x0030C9 00:F0B9: 0C        .byte $0C   ; 
- D 3 - I - 0x0030CA 00:F0BA: A2        .byte $A2   ; 
- D 3 - I - 0x0030CB 00:F0BB: 0C        .byte $0C   ; 
- D 3 - I - 0x0030CC 00:F0BC: A2        .byte $A2   ; 
- D 3 - I - 0x0030CD 00:F0BD: 0C        .byte $0C   ; 
- D 3 - I - 0x0030CE 00:F0BE: A2        .byte $A2   ; 
- D 3 - I - 0x0030CF 00:F0BF: 0C        .byte $0C   ; 
- D 3 - I - 0x0030D0 00:F0C0: A2        .byte $A2   ; 
- D 3 - I - 0x0030D1 00:F0C1: 0C        .byte $0C   ; 
- D 3 - I - 0x0030D2 00:F0C2: F0        .byte con_sfx_off   ; 



_off001_F0C3_06:
- D 3 - I - 0x0030D3 00:F0C3: 03        .byte $03   ; 
- D 3 - I - 0x0030D4 00:F0C4: 04        .byte $04   ; 
- D 3 - I - 0x0030D5 00:F0C5: 7F        .byte $7F   ; 
- D 3 - I - 0x0030D6 00:F0C6: 08        .byte $08   ; 
- D 3 - I - 0x0030D7 00:F0C7: 33        .byte $33   ; 
- D 3 - I - 0x0030D8 00:F0C8: 01        .byte $01   ; 
- D 3 - I - 0x0030D9 00:F0C9: 23        .byte $23   ; 
- D 3 - I - 0x0030DA 00:F0CA: 01        .byte $01   ; 
- D 3 - I - 0x0030DB 00:F0CB: 03        .byte $03   ; 
- D 3 - I - 0x0030DC 00:F0CC: 01        .byte $01   ; 
- D 3 - I - 0x0030DD 00:F0CD: A2        .byte $A2   ; 
- D 3 - I - 0x0030DE 00:F0CE: 01        .byte $01   ; 
- D 3 - I - 0x0030DF 00:F0CF: 92        .byte $92   ; 
- D 3 - I - 0x0030E0 00:F0D0: 01        .byte $01   ; 
- D 3 - I - 0x0030E1 00:F0D1: 72        .byte $72   ; 
- D 3 - I - 0x0030E2 00:F0D2: 01        .byte $01   ; 
- D 3 - I - 0x0030E3 00:F0D3: 52        .byte $52   ; 
- D 3 - I - 0x0030E4 00:F0D4: 01        .byte $01   ; 
- D 3 - I - 0x0030E5 00:F0D5: 32        .byte $32   ; 
- D 3 - I - 0x0030E6 00:F0D6: 01        .byte $01   ; 
- D 3 - I - 0x0030E7 00:F0D7: 22        .byte $22   ; 
- D 3 - I - 0x0030E8 00:F0D8: 01        .byte $01   ; 
- D 3 - I - 0x0030E9 00:F0D9: 02        .byte $02   ; 
- D 3 - I - 0x0030EA 00:F0DA: 01        .byte $01   ; 
- D 3 - I - 0x0030EB 00:F0DB: A1        .byte $A1   ; 
- D 3 - I - 0x0030EC 00:F0DC: 01        .byte $01   ; 
- D 3 - I - 0x0030ED 00:F0DD: 91        .byte $91   ; 
- D 3 - I - 0x0030EE 00:F0DE: 01        .byte $01   ; 
- D 3 - I - 0x0030EF 00:F0DF: C0        .byte $C0   ; 
- D 3 - I - 0x0030F0 00:F0E0: 08        .byte $08   ; 
- D 3 - I - 0x0030F1 00:F0E1: 91        .byte $91   ; 
- D 3 - I - 0x0030F2 00:F0E2: 01        .byte $01   ; 
- D 3 - I - 0x0030F3 00:F0E3: A1        .byte $A1   ; 
- D 3 - I - 0x0030F4 00:F0E4: 01        .byte $01   ; 
- D 3 - I - 0x0030F5 00:F0E5: 02        .byte $02   ; 
- D 3 - I - 0x0030F6 00:F0E6: 01        .byte $01   ; 
- D 3 - I - 0x0030F7 00:F0E7: 22        .byte $22   ; 
- D 3 - I - 0x0030F8 00:F0E8: 01        .byte $01   ; 
- D 3 - I - 0x0030F9 00:F0E9: 32        .byte $32   ; 
- D 3 - I - 0x0030FA 00:F0EA: 01        .byte $01   ; 
- D 3 - I - 0x0030FB 00:F0EB: 52        .byte $52   ; 
- D 3 - I - 0x0030FC 00:F0EC: 01        .byte $01   ; 
- D 3 - I - 0x0030FD 00:F0ED: F0        .byte con_sfx_off   ; 



_off001_F0EE_0A:
- D 3 - I - 0x0030FE 00:F0EE: 01        .byte $01   ; 
- D 3 - I - 0x0030FF 00:F0EF: 96        .byte $96   ; 
- D 3 - I - 0x003100 00:F0F0: 7F        .byte $7F   ; 
- D 3 - I - 0x003101 00:F0F1: 28        .byte $28   ; 
- D 3 - I - 0x003102 00:F0F2: 82        .byte $82   ; 
- D 3 - I - 0x003103 00:F0F3: 01        .byte $01   ; 
- D 3 - I - 0x003104 00:F0F4: 92        .byte $92   ; 
- D 3 - I - 0x003105 00:F0F5: 01        .byte $01   ; 
- D 3 - I - 0x003106 00:F0F6: A2        .byte $A2   ; 
- D 3 - I - 0x003107 00:F0F7: 01        .byte $01   ; 
- D 3 - I - 0x003108 00:F0F8: B2        .byte $B2   ; 
- D 3 - I - 0x003109 00:F0F9: 01        .byte $01   ; 
- D 3 - I - 0x00310A 00:F0FA: 03        .byte $03   ; 
- D 3 - I - 0x00310B 00:F0FB: 01        .byte $01   ; 
- D 3 - I - 0x00310C 00:F0FC: 13        .byte $13   ; 
- D 3 - I - 0x00310D 00:F0FD: 01        .byte $01   ; 
- D 3 - I - 0x00310E 00:F0FE: 23        .byte $23   ; 
- D 3 - I - 0x00310F 00:F0FF: 01        .byte $01   ; 
- D 3 - I - 0x003110 00:F100: 33        .byte $33   ; 
- D 3 - I - 0x003111 00:F101: 01        .byte $01   ; 
- D 3 - I - 0x003112 00:F102: 43        .byte $43   ; 
- D 3 - I - 0x003113 00:F103: 01        .byte $01   ; 
- D 3 - I - 0x003114 00:F104: 53        .byte $53   ; 
- D 3 - I - 0x003115 00:F105: 01        .byte $01   ; 
- D 3 - I - 0x003116 00:F106: 33        .byte $33   ; 
- D 3 - I - 0x003117 00:F107: 01        .byte $01   ; 
- D 3 - I - 0x003118 00:F108: 23        .byte $23   ; 
- D 3 - I - 0x003119 00:F109: 01        .byte $01   ; 
- D 3 - I - 0x00311A 00:F10A: 13        .byte $13   ; 
- D 3 - I - 0x00311B 00:F10B: 01        .byte $01   ; 
- D 3 - I - 0x00311C 00:F10C: 03        .byte $03   ; 
- D 3 - I - 0x00311D 00:F10D: 01        .byte $01   ; 
- D 3 - I - 0x00311E 00:F10E: B2        .byte $B2   ; 
- D 3 - I - 0x00311F 00:F10F: 01        .byte $01   ; 
- D 3 - I - 0x003120 00:F110: A2        .byte $A2   ; 
- D 3 - I - 0x003121 00:F111: 01        .byte $01   ; 
- D 3 - I - 0x003122 00:F112: 92        .byte $92   ; 
- D 3 - I - 0x003123 00:F113: 01        .byte $01   ; 
- D 3 - I - 0x003124 00:F114: 82        .byte $82   ; 
- D 3 - I - 0x003125 00:F115: 01        .byte $01   ; 
- D 3 - I - 0x003126 00:F116: 72        .byte $72   ; 
- D 3 - I - 0x003127 00:F117: 01        .byte $01   ; 
- D 3 - I - 0x003128 00:F118: F0        .byte con_sfx_off   ; 



_off001_F119_0B:
- D 3 - I - 0x003129 00:F119: 01        .byte $01   ; 
- D 3 - I - 0x00312A 00:F11A: 96        .byte $96   ; 
- D 3 - I - 0x00312B 00:F11B: 7F        .byte $7F   ; 
- D 3 - I - 0x00312C 00:F11C: 28        .byte $28   ; 
- D 3 - I - 0x00312D 00:F11D: A2        .byte $A2   ; 
- D 3 - I - 0x00312E 00:F11E: 01        .byte $01   ; 
- D 3 - I - 0x00312F 00:F11F: B2        .byte $B2   ; 
- D 3 - I - 0x003130 00:F120: 01        .byte $01   ; 
- D 3 - I - 0x003131 00:F121: 03        .byte $03   ; 
- D 3 - I - 0x003132 00:F122: 01        .byte $01   ; 
- D 3 - I - 0x003133 00:F123: 13        .byte $13   ; 
- D 3 - I - 0x003134 00:F124: 01        .byte $01   ; 
- D 3 - I - 0x003135 00:F125: 23        .byte $23   ; 
- D 3 - I - 0x003136 00:F126: 01        .byte $01   ; 
- D 3 - I - 0x003137 00:F127: 33        .byte $33   ; 
- D 3 - I - 0x003138 00:F128: 01        .byte $01   ; 
- D 3 - I - 0x003139 00:F129: 43        .byte $43   ; 
- D 3 - I - 0x00313A 00:F12A: 01        .byte $01   ; 
- D 3 - I - 0x00313B 00:F12B: 53        .byte $53   ; 
- D 3 - I - 0x00313C 00:F12C: 01        .byte $01   ; 
- D 3 - I - 0x00313D 00:F12D: 33        .byte $33   ; 
- D 3 - I - 0x00313E 00:F12E: 01        .byte $01   ; 
- D 3 - I - 0x00313F 00:F12F: 23        .byte $23   ; 
- D 3 - I - 0x003140 00:F130: 01        .byte $01   ; 
- D 3 - I - 0x003141 00:F131: 13        .byte $13   ; 
- D 3 - I - 0x003142 00:F132: 01        .byte $01   ; 
- D 3 - I - 0x003143 00:F133: 03        .byte $03   ; 
- D 3 - I - 0x003144 00:F134: 01        .byte $01   ; 
- D 3 - I - 0x003145 00:F135: B2        .byte $B2   ; 
- D 3 - I - 0x003146 00:F136: 01        .byte $01   ; 
- D 3 - I - 0x003147 00:F137: A2        .byte $A2   ; 
- D 3 - I - 0x003148 00:F138: 01        .byte $01   ; 
- D 3 - I - 0x003149 00:F139: 92        .byte $92   ; 
- D 3 - I - 0x00314A 00:F13A: 01        .byte $01   ; 
- D 3 - I - 0x00314B 00:F13B: F0        .byte con_sfx_off   ; 



_off001_F13C_0C:
- D 3 - I - 0x00314C 00:F13C: 01        .byte $01   ; 
- D 3 - I - 0x00314D 00:F13D: 96        .byte $96   ; 
- D 3 - I - 0x00314E 00:F13E: 7F        .byte $7F   ; 
- D 3 - I - 0x00314F 00:F13F: 28        .byte $28   ; 
- D 3 - I - 0x003150 00:F140: B2        .byte $B2   ; 
- D 3 - I - 0x003151 00:F141: 01        .byte $01   ; 
- D 3 - I - 0x003152 00:F142: 03        .byte $03   ; 
- D 3 - I - 0x003153 00:F143: 01        .byte $01   ; 
- D 3 - I - 0x003154 00:F144: 13        .byte $13   ; 
- D 3 - I - 0x003155 00:F145: 01        .byte $01   ; 
- D 3 - I - 0x003156 00:F146: 23        .byte $23   ; 
- D 3 - I - 0x003157 00:F147: 01        .byte $01   ; 
- D 3 - I - 0x003158 00:F148: 33        .byte $33   ; 
- D 3 - I - 0x003159 00:F149: 01        .byte $01   ; 
- D 3 - I - 0x00315A 00:F14A: 43        .byte $43   ; 
- D 3 - I - 0x00315B 00:F14B: 01        .byte $01   ; 
- D 3 - I - 0x00315C 00:F14C: 53        .byte $53   ; 
- D 3 - I - 0x00315D 00:F14D: 01        .byte $01   ; 
- D 3 - I - 0x00315E 00:F14E: 33        .byte $33   ; 
- D 3 - I - 0x00315F 00:F14F: 01        .byte $01   ; 
- D 3 - I - 0x003160 00:F150: 23        .byte $23   ; 
- D 3 - I - 0x003161 00:F151: 01        .byte $01   ; 
- D 3 - I - 0x003162 00:F152: 13        .byte $13   ; 
- D 3 - I - 0x003163 00:F153: 01        .byte $01   ; 
- D 3 - I - 0x003164 00:F154: 03        .byte $03   ; 
- D 3 - I - 0x003165 00:F155: 01        .byte $01   ; 
- D 3 - I - 0x003166 00:F156: B2        .byte $B2   ; 
- D 3 - I - 0x003167 00:F157: 01        .byte $01   ; 
- D 3 - I - 0x003168 00:F158: A2        .byte $A2   ; 
- D 3 - I - 0x003169 00:F159: 01        .byte $01   ; 
- D 3 - I - 0x00316A 00:F15A: F0        .byte con_sfx_off   ; 



_off001_F15B_09:
- D 3 - I - 0x00316B 00:F15B: 02        .byte $02   ; 
- D 3 - I - 0x00316C 00:F15C: 9C        .byte $9C   ; 
- D 3 - I - 0x00316D 00:F15D: 7F        .byte $7F   ; 
- D 3 - I - 0x00316E 00:F15E: 28        .byte $28   ; 
- D 3 - I - 0x00316F 00:F15F: 31        .byte $31   ; 
- D 3 - I - 0x003170 00:F160: 01        .byte $01   ; 
- D 3 - I - 0x003171 00:F161: 71        .byte $71   ; 
- D 3 - I - 0x003172 00:F162: 01        .byte $01   ; 
- D 3 - I - 0x003173 00:F163: A1        .byte $A1   ; 
- D 3 - I - 0x003174 00:F164: 01        .byte $01   ; 
- D 3 - I - 0x003175 00:F165: 12        .byte $12   ; 
- D 3 - I - 0x003176 00:F166: 01        .byte $01   ; 
- D 3 - I - 0x003177 00:F167: 32        .byte $32   ; 
- D 3 - I - 0x003178 00:F168: 01        .byte $01   ; 
- D 3 - I - 0x003179 00:F169: 72        .byte $72   ; 
- D 3 - I - 0x00317A 00:F16A: 01        .byte $01   ; 
- D 3 - I - 0x00317B 00:F16B: A2        .byte $A2   ; 
- D 3 - I - 0x00317C 00:F16C: 01        .byte $01   ; 
- D 3 - I - 0x00317D 00:F16D: 13        .byte $13   ; 
- D 3 - I - 0x00317E 00:F16E: 01        .byte $01   ; 
- D 3 - I - 0x00317F 00:F16F: F0        .byte con_sfx_off   ; 



_off001_F170_07:
- D 3 - I - 0x003180 00:F170: 02        .byte $02   ; 
- D 3 - I - 0x003181 00:F171: 00        .byte $00   ; 
- D 3 - I - 0x003182 00:F172: 7F        .byte $7F   ; 
- D 3 - I - 0x003183 00:F173: 10        .byte $10   ; 
- D 3 - I - 0x003184 00:F174: 20        .byte $20   ; 
- D 3 - I - 0x003185 00:F175: 03        .byte $03   ; 
- D 3 - I - 0x003186 00:F176: 50        .byte $50   ; 
- D 3 - I - 0x003187 00:F177: 03        .byte $03   ; 
- D 3 - I - 0x003188 00:F178: 80        .byte $80   ; 
- D 3 - I - 0x003189 00:F179: 02        .byte $02   ; 
- D 3 - I - 0x00318A 00:F17A: A0        .byte $A0   ; 
- D 3 - I - 0x00318B 00:F17B: 02        .byte $02   ; 
- D 3 - I - 0x00318C 00:F17C: 21        .byte $21   ; 
- D 3 - I - 0x00318D 00:F17D: 02        .byte $02   ; 
- D 3 - I - 0x00318E 00:F17E: 51        .byte $51   ; 
- D 3 - I - 0x00318F 00:F17F: 02        .byte $02   ; 
- D 3 - I - 0x003190 00:F180: 81        .byte $81   ; 
- D 3 - I - 0x003191 00:F181: 01        .byte $01   ; 
- D 3 - I - 0x003192 00:F182: A1        .byte $A1   ; 
- D 3 - I - 0x003193 00:F183: 01        .byte $01   ; 
- D 3 - I - 0x003194 00:F184: 02        .byte $02   ; 
- D 3 - I - 0x003195 00:F185: 01        .byte $01   ; 
- D 3 - I - 0x003196 00:F186: 22        .byte $22   ; 
- D 3 - I - 0x003197 00:F187: 01        .byte $01   ; 
- D 3 - I - 0x003198 00:F188: 32        .byte $32   ; 
- D 3 - I - 0x003199 00:F189: 01        .byte $01   ; 
- D 3 - I - 0x00319A 00:F18A: 52        .byte $52   ; 
- D 3 - I - 0x00319B 00:F18B: 01        .byte $01   ; 
- D 3 - I - 0x00319C 00:F18C: F5        .byte con_sfx_F5
- D 3 - I - 0x00319D 00:F18D: 18        .byte $18   ; 
- D 3 - I - 0x00319E 00:F18E: 73        .byte $73   ; 
- D 3 - I - 0x00319F 00:F18F: 01        .byte $01   ; 
- D 3 - I - 0x0031A0 00:F190: C0        .byte $C0   ; 
- D 3 - I - 0x0031A1 00:F191: 08        .byte $08   ; 
- D 3 - I - 0x0031A2 00:F192: F0        .byte con_sfx_off   ; 



_off001_F193_0D:
- D 3 - I - 0x0031A3 00:F193: 01        .byte $01   ; 
- D 3 - I - 0x0031A4 00:F194: 03        .byte $03   ; 
- D 3 - I - 0x0031A5 00:F195: 7F        .byte $7F   ; 
- D 3 - I - 0x0031A6 00:F196: 08        .byte $08   ; 
- D 3 - I - 0x0031A7 00:F197: 72        .byte $72   ; 
- D 3 - I - 0x0031A8 00:F198: 02        .byte $02   ; 
- D 3 - I - 0x0031A9 00:F199: 82        .byte $82   ; 
- D 3 - I - 0x0031AA 00:F19A: 08        .byte $08   ; 
- D 3 - I - 0x0031AB 00:F19B: 72        .byte $72   ; 
- D 3 - I - 0x0031AC 00:F19C: 02        .byte $02   ; 
- D 3 - I - 0x0031AD 00:F19D: 82        .byte $82   ; 
- D 3 - I - 0x0031AE 00:F19E: 08        .byte $08   ; 
- D 3 - I - 0x0031AF 00:F19F: 72        .byte $72   ; 
- D 3 - I - 0x0031B0 00:F1A0: 02        .byte $02   ; 
- D 3 - I - 0x0031B1 00:F1A1: 82        .byte $82   ; 
- D 3 - I - 0x0031B2 00:F1A2: 08        .byte $08   ; 
- D 3 - I - 0x0031B3 00:F1A3: 42        .byte $42   ; 
- D 3 - I - 0x0031B4 00:F1A4: 02        .byte $02   ; 
- D 3 - I - 0x0031B5 00:F1A5: 52        .byte $52   ; 
- D 3 - I - 0x0031B6 00:F1A6: 04        .byte $04   ; 
- D 3 - I - 0x0031B7 00:F1A7: 32        .byte $32   ; 
- D 3 - I - 0x0031B8 00:F1A8: 04        .byte $04   ; 
- D 3 - I - 0x0031B9 00:F1A9: 82        .byte $82   ; 
- D 3 - I - 0x0031BA 00:F1AA: 06        .byte $06   ; 
- D 3 - I - 0x0031BB 00:F1AB: 82        .byte $82   ; 
- D 3 - I - 0x0031BC 00:F1AC: 08        .byte $08   ; 
- D 3 - I - 0x0031BD 00:F1AD: B2        .byte $B2   ; 
- D 3 - I - 0x0031BE 00:F1AE: 02        .byte $02   ; 
- D 3 - I - 0x0031BF 00:F1AF: 03        .byte $03   ; 
- D 3 - I - 0x0031C0 00:F1B0: 10        .byte $10   ; 
- D 3 - I - 0x0031C1 00:F1B1: C0        .byte $C0   ; 
- D 3 - I - 0x0031C2 00:F1B2: 08        .byte $08   ; 
- D 3 - I - 0x0031C3 00:F1B3: 72        .byte $72   ; 
- D 3 - I - 0x0031C4 00:F1B4: 02        .byte $02   ; 
- D 3 - I - 0x0031C5 00:F1B5: 82        .byte $82   ; 
- D 3 - I - 0x0031C6 00:F1B6: 08        .byte $08   ; 
- D 3 - I - 0x0031C7 00:F1B7: 72        .byte $72   ; 
- D 3 - I - 0x0031C8 00:F1B8: 02        .byte $02   ; 
- D 3 - I - 0x0031C9 00:F1B9: 82        .byte $82   ; 
- D 3 - I - 0x0031CA 00:F1BA: 08        .byte $08   ; 
- D 3 - I - 0x0031CB 00:F1BB: 72        .byte $72   ; 
- D 3 - I - 0x0031CC 00:F1BC: 02        .byte $02   ; 
- D 3 - I - 0x0031CD 00:F1BD: 82        .byte $82   ; 
- D 3 - I - 0x0031CE 00:F1BE: 08        .byte $08   ; 
- D 3 - I - 0x0031CF 00:F1BF: 42        .byte $42   ; 
- D 3 - I - 0x0031D0 00:F1C0: 02        .byte $02   ; 
- D 3 - I - 0x0031D1 00:F1C1: 52        .byte $52   ; 
- D 3 - I - 0x0031D2 00:F1C2: 04        .byte $04   ; 
- D 3 - I - 0x0031D3 00:F1C3: 32        .byte $32   ; 
- D 3 - I - 0x0031D4 00:F1C4: 04        .byte $04   ; 
- D 3 - I - 0x0031D5 00:F1C5: 82        .byte $82   ; 
- D 3 - I - 0x0031D6 00:F1C6: 06        .byte $06   ; 
- D 3 - I - 0x0031D7 00:F1C7: 82        .byte $82   ; 
- D 3 - I - 0x0031D8 00:F1C8: 08        .byte $08   ; 
- D 3 - I - 0x0031D9 00:F1C9: 42        .byte $42   ; 
- D 3 - I - 0x0031DA 00:F1CA: 02        .byte $02   ; 
- D 3 - I - 0x0031DB 00:F1CB: 52        .byte $52   ; 
- D 3 - I - 0x0031DC 00:F1CC: 10        .byte $10   ; 
- D 3 - I - 0x0031DD 00:F1CD: C0        .byte $C0   ; 
- D 3 - I - 0x0031DE 00:F1CE: 08        .byte $08   ; 
- D 3 - I - 0x0031DF 00:F1CF: 72        .byte $72   ; 
- D 3 - I - 0x0031E0 00:F1D0: 02        .byte $02   ; 
- D 3 - I - 0x0031E1 00:F1D1: 82        .byte $82   ; 
- D 3 - I - 0x0031E2 00:F1D2: 08        .byte $08   ; 
- D 3 - I - 0x0031E3 00:F1D3: 72        .byte $72   ; 
- D 3 - I - 0x0031E4 00:F1D4: 02        .byte $02   ; 
- D 3 - I - 0x0031E5 00:F1D5: 82        .byte $82   ; 
- D 3 - I - 0x0031E6 00:F1D6: 08        .byte $08   ; 
- D 3 - I - 0x0031E7 00:F1D7: 72        .byte $72   ; 
- D 3 - I - 0x0031E8 00:F1D8: 02        .byte $02   ; 
- D 3 - I - 0x0031E9 00:F1D9: 82        .byte $82   ; 
- D 3 - I - 0x0031EA 00:F1DA: 08        .byte $08   ; 
- D 3 - I - 0x0031EB 00:F1DB: 42        .byte $42   ; 
- D 3 - I - 0x0031EC 00:F1DC: 02        .byte $02   ; 
- D 3 - I - 0x0031ED 00:F1DD: 52        .byte $52   ; 
- D 3 - I - 0x0031EE 00:F1DE: 04        .byte $04   ; 
- D 3 - I - 0x0031EF 00:F1DF: 32        .byte $32   ; 
- D 3 - I - 0x0031F0 00:F1E0: 04        .byte $04   ; 
- D 3 - I - 0x0031F1 00:F1E1: 82        .byte $82   ; 
- D 3 - I - 0x0031F2 00:F1E2: 06        .byte $06   ; 
- D 3 - I - 0x0031F3 00:F1E3: 82        .byte $82   ; 
- D 3 - I - 0x0031F4 00:F1E4: 08        .byte $08   ; 
- D 3 - I - 0x0031F5 00:F1E5: A2        .byte $A2   ; 
- D 3 - I - 0x0031F6 00:F1E6: 02        .byte $02   ; 
- D 3 - I - 0x0031F7 00:F1E7: B2        .byte $B2   ; 
- D 3 - I - 0x0031F8 00:F1E8: 08        .byte $08   ; 
- D 3 - I - 0x0031F9 00:F1E9: 03        .byte $03   ; 
- D 3 - I - 0x0031FA 00:F1EA: 02        .byte $02   ; 
- D 3 - I - 0x0031FB 00:F1EB: 13        .byte $13   ; 
- D 3 - I - 0x0031FC 00:F1EC: 0A        .byte $0A   ; 
- D 3 - I - 0x0031FD 00:F1ED: 13        .byte $13   ; 
- D 3 - I - 0x0031FE 00:F1EE: 02        .byte $02   ; 
- D 3 - I - 0x0031FF 00:F1EF: 23        .byte $23   ; 
- D 3 - I - 0x003200 00:F1F0: 0C        .byte $0C   ; 
- D 3 - I - 0x003201 00:F1F1: 03        .byte $03   ; 
- D 3 - I - 0x003202 00:F1F2: 02        .byte $02   ; 
- D 3 - I - 0x003203 00:F1F3: 13        .byte $13   ; 
- D 3 - I - 0x003204 00:F1F4: 08        .byte $08   ; 
- D 3 - I - 0x003205 00:F1F5: A2        .byte $A2   ; 
- D 3 - I - 0x003206 00:F1F6: 02        .byte $02   ; 
- D 3 - I - 0x003207 00:F1F7: B2        .byte $B2   ; 
- D 3 - I - 0x003208 00:F1F8: 08        .byte $08   ; 
- D 3 - I - 0x003209 00:F1F9: 82        .byte $82   ; 
- D 3 - I - 0x00320A 00:F1FA: 0A        .byte $0A   ; 
- D 3 - I - 0x00320B 00:F1FB: A2        .byte $A2   ; 
- D 3 - I - 0x00320C 00:F1FC: 02        .byte $02   ; 
- D 3 - I - 0x00320D 00:F1FD: B2        .byte $B2   ; 
- D 3 - I - 0x00320E 00:F1FE: 0A        .byte $0A   ; 
- D 3 - I - 0x00320F 00:F1FF: 72        .byte $72   ; 
- D 3 - I - 0x003210 00:F200: 02        .byte $02   ; 
- D 3 - I - 0x003211 00:F201: 82        .byte $82   ; 
- D 3 - I - 0x003212 00:F202: 10        .byte $10   ; 
- D 3 - I - 0x003213 00:F203: C0        .byte $C0   ; 
- D 3 - I - 0x003214 00:F204: 08        .byte $08   ; 
- D 3 - I - 0x003215 00:F205: F0        .byte con_sfx_off   ; 



_off001_F206_0E:
- D 3 - I - 0x003216 00:F206: 02        .byte $02   ; 
- D 3 - I - 0x003217 00:F207: 81        .byte $81   ; 
- D 3 - I - 0x003218 00:F208: 7F        .byte $7F   ; 
- D 3 - I - 0x003219 00:F209: 40        .byte $40   ; 
- D 3 - I - 0x00321A 00:F20A: 80        .byte $80   ; 
- D 3 - I - 0x00321B 00:F20B: 08        .byte $08   ; 
- D 3 - I - 0x00321C 00:F20C: C0        .byte $C0   ; 
- D 3 - I - 0x00321D 00:F20D: 06        .byte $06   ; 
- D 3 - I - 0x00321E 00:F20E: 80        .byte $80   ; 
- D 3 - I - 0x00321F 00:F20F: 04        .byte $04   ; 
- D 3 - I - 0x003220 00:F210: C0        .byte $C0   ; 
- D 3 - I - 0x003221 00:F211: 02        .byte $02   ; 
- D 3 - I - 0x003222 00:F212: 80        .byte $80   ; 
- D 3 - I - 0x003223 00:F213: 08        .byte $08   ; 
- D 3 - I - 0x003224 00:F214: C0        .byte $C0   ; 
- D 3 - I - 0x003225 00:F215: 06        .byte $06   ; 
- D 3 - I - 0x003226 00:F216: 80        .byte $80   ; 
- D 3 - I - 0x003227 00:F217: 04        .byte $04   ; 
- D 3 - I - 0x003228 00:F218: C0        .byte $C0   ; 
- D 3 - I - 0x003229 00:F219: 02        .byte $02   ; 
- D 3 - I - 0x00322A 00:F21A: 80        .byte $80   ; 
- D 3 - I - 0x00322B 00:F21B: 08        .byte $08   ; 
- D 3 - I - 0x00322C 00:F21C: C0        .byte $C0   ; 
- D 3 - I - 0x00322D 00:F21D: 06        .byte $06   ; 
- D 3 - I - 0x00322E 00:F21E: 80        .byte $80   ; 
- D 3 - I - 0x00322F 00:F21F: 04        .byte $04   ; 
- D 3 - I - 0x003230 00:F220: C0        .byte $C0   ; 
- D 3 - I - 0x003231 00:F221: 02        .byte $02   ; 
- D 3 - I - 0x003232 00:F222: 01        .byte $01   ; 
- D 3 - I - 0x003233 00:F223: 04        .byte $04   ; 
- D 3 - I - 0x003234 00:F224: C0        .byte $C0   ; 
- D 3 - I - 0x003235 00:F225: 01        .byte $01   ; 
- D 3 - I - 0x003236 00:F226: 11        .byte $11   ; 
- D 3 - I - 0x003237 00:F227: 04        .byte $04   ; 
- D 3 - I - 0x003238 00:F228: C0        .byte $C0   ; 
- D 3 - I - 0x003239 00:F229: 01        .byte $01   ; 
- D 3 - I - 0x00323A 00:F22A: 21        .byte $21   ; 
- D 3 - I - 0x00323B 00:F22B: 04        .byte $04   ; 
- D 3 - I - 0x00323C 00:F22C: C0        .byte $C0   ; 
- D 3 - I - 0x00323D 00:F22D: 01        .byte $01   ; 
- D 3 - I - 0x00323E 00:F22E: 31        .byte $31   ; 
- D 3 - I - 0x00323F 00:F22F: 04        .byte $04   ; 
- D 3 - I - 0x003240 00:F230: C0        .byte $C0   ; 
- D 3 - I - 0x003241 00:F231: 01        .byte $01   ; 
- D 3 - I - 0x003242 00:F232: 80        .byte $80   ; 
- D 3 - I - 0x003243 00:F233: 08        .byte $08   ; 
- D 3 - I - 0x003244 00:F234: C0        .byte $C0   ; 
- D 3 - I - 0x003245 00:F235: 06        .byte $06   ; 
- D 3 - I - 0x003246 00:F236: 80        .byte $80   ; 
- D 3 - I - 0x003247 00:F237: 04        .byte $04   ; 
- D 3 - I - 0x003248 00:F238: C0        .byte $C0   ; 
- D 3 - I - 0x003249 00:F239: 02        .byte $02   ; 
- D 3 - I - 0x00324A 00:F23A: 80        .byte $80   ; 
- D 3 - I - 0x00324B 00:F23B: 08        .byte $08   ; 
- D 3 - I - 0x00324C 00:F23C: C0        .byte $C0   ; 
- D 3 - I - 0x00324D 00:F23D: 06        .byte $06   ; 
- D 3 - I - 0x00324E 00:F23E: 80        .byte $80   ; 
- D 3 - I - 0x00324F 00:F23F: 04        .byte $04   ; 
- D 3 - I - 0x003250 00:F240: C0        .byte $C0   ; 
- D 3 - I - 0x003251 00:F241: 02        .byte $02   ; 
- D 3 - I - 0x003252 00:F242: 80        .byte $80   ; 
- D 3 - I - 0x003253 00:F243: 08        .byte $08   ; 
- D 3 - I - 0x003254 00:F244: C0        .byte $C0   ; 
- D 3 - I - 0x003255 00:F245: 06        .byte $06   ; 
- D 3 - I - 0x003256 00:F246: 80        .byte $80   ; 
- D 3 - I - 0x003257 00:F247: 04        .byte $04   ; 
- D 3 - I - 0x003258 00:F248: C0        .byte $C0   ; 
- D 3 - I - 0x003259 00:F249: 02        .byte $02   ; 
- D 3 - I - 0x00325A 00:F24A: 01        .byte $01   ; 
- D 3 - I - 0x00325B 00:F24B: 04        .byte $04   ; 
- D 3 - I - 0x00325C 00:F24C: C0        .byte $C0   ; 
- D 3 - I - 0x00325D 00:F24D: 01        .byte $01   ; 
- D 3 - I - 0x00325E 00:F24E: 11        .byte $11   ; 
- D 3 - I - 0x00325F 00:F24F: 04        .byte $04   ; 
- D 3 - I - 0x003260 00:F250: C0        .byte $C0   ; 
- D 3 - I - 0x003261 00:F251: 01        .byte $01   ; 
- D 3 - I - 0x003262 00:F252: 21        .byte $21   ; 
- D 3 - I - 0x003263 00:F253: 04        .byte $04   ; 
- D 3 - I - 0x003264 00:F254: C0        .byte $C0   ; 
- D 3 - I - 0x003265 00:F255: 01        .byte $01   ; 
- D 3 - I - 0x003266 00:F256: 31        .byte $31   ; 
- D 3 - I - 0x003267 00:F257: 04        .byte $04   ; 
- D 3 - I - 0x003268 00:F258: C0        .byte $C0   ; 
- D 3 - I - 0x003269 00:F259: 01        .byte $01   ; 
- D 3 - I - 0x00326A 00:F25A: 80        .byte $80   ; 
- D 3 - I - 0x00326B 00:F25B: 08        .byte $08   ; 
- D 3 - I - 0x00326C 00:F25C: C0        .byte $C0   ; 
- D 3 - I - 0x00326D 00:F25D: 06        .byte $06   ; 
- D 3 - I - 0x00326E 00:F25E: 80        .byte $80   ; 
- D 3 - I - 0x00326F 00:F25F: 04        .byte $04   ; 
- D 3 - I - 0x003270 00:F260: C0        .byte $C0   ; 
- D 3 - I - 0x003271 00:F261: 02        .byte $02   ; 
- D 3 - I - 0x003272 00:F262: 80        .byte $80   ; 
- D 3 - I - 0x003273 00:F263: 08        .byte $08   ; 
- D 3 - I - 0x003274 00:F264: C0        .byte $C0   ; 
- D 3 - I - 0x003275 00:F265: 06        .byte $06   ; 
- D 3 - I - 0x003276 00:F266: 80        .byte $80   ; 
- D 3 - I - 0x003277 00:F267: 04        .byte $04   ; 
- D 3 - I - 0x003278 00:F268: C0        .byte $C0   ; 
- D 3 - I - 0x003279 00:F269: 02        .byte $02   ; 
- D 3 - I - 0x00327A 00:F26A: 80        .byte $80   ; 
- D 3 - I - 0x00327B 00:F26B: 08        .byte $08   ; 
- D 3 - I - 0x00327C 00:F26C: C0        .byte $C0   ; 
- D 3 - I - 0x00327D 00:F26D: 06        .byte $06   ; 
- D 3 - I - 0x00327E 00:F26E: 80        .byte $80   ; 
- D 3 - I - 0x00327F 00:F26F: 04        .byte $04   ; 
- D 3 - I - 0x003280 00:F270: C0        .byte $C0   ; 
- D 3 - I - 0x003281 00:F271: 02        .byte $02   ; 
- D 3 - I - 0x003282 00:F272: 01        .byte $01   ; 
- D 3 - I - 0x003283 00:F273: 04        .byte $04   ; 
- D 3 - I - 0x003284 00:F274: C0        .byte $C0   ; 
- D 3 - I - 0x003285 00:F275: 01        .byte $01   ; 
- D 3 - I - 0x003286 00:F276: 11        .byte $11   ; 
- D 3 - I - 0x003287 00:F277: 04        .byte $04   ; 
- D 3 - I - 0x003288 00:F278: C0        .byte $C0   ; 
- D 3 - I - 0x003289 00:F279: 01        .byte $01   ; 
- D 3 - I - 0x00328A 00:F27A: 21        .byte $21   ; 
- D 3 - I - 0x00328B 00:F27B: 04        .byte $04   ; 
- D 3 - I - 0x00328C 00:F27C: C0        .byte $C0   ; 
- D 3 - I - 0x00328D 00:F27D: 01        .byte $01   ; 
- D 3 - I - 0x00328E 00:F27E: 31        .byte $31   ; 
- D 3 - I - 0x00328F 00:F27F: 04        .byte $04   ; 
- D 3 - I - 0x003290 00:F280: C0        .byte $C0   ; 
- D 3 - I - 0x003291 00:F281: 01        .byte $01   ; 
- D 3 - I - 0x003292 00:F282: 81        .byte $81   ; 
- D 3 - I - 0x003293 00:F283: 0A        .byte $0A   ; 
- D 3 - I - 0x003294 00:F284: 31        .byte $31   ; 
- D 3 - I - 0x003295 00:F285: 04        .byte $04   ; 
- D 3 - I - 0x003296 00:F286: C0        .byte $C0   ; 
- D 3 - I - 0x003297 00:F287: 01        .byte $01   ; 
- D 3 - I - 0x003298 00:F288: 21        .byte $21   ; 
- D 3 - I - 0x003299 00:F289: 04        .byte $04   ; 
- D 3 - I - 0x00329A 00:F28A: C0        .byte $C0   ; 
- D 3 - I - 0x00329B 00:F28B: 01        .byte $01   ; 
- D 3 - I - 0x00329C 00:F28C: 11        .byte $11   ; 
- D 3 - I - 0x00329D 00:F28D: 04        .byte $04   ; 
- D 3 - I - 0x00329E 00:F28E: C0        .byte $C0   ; 
- D 3 - I - 0x00329F 00:F28F: 01        .byte $01   ; 
- D 3 - I - 0x0032A0 00:F290: B0        .byte $B0   ; 
- D 3 - I - 0x0032A1 00:F291: 04        .byte $04   ; 
- D 3 - I - 0x0032A2 00:F292: C0        .byte $C0   ; 
- D 3 - I - 0x0032A3 00:F293: 01        .byte $01   ; 
- D 3 - I - 0x0032A4 00:F294: 80        .byte $80   ; 
- D 3 - I - 0x0032A5 00:F295: 04        .byte $04   ; 
- D 3 - I - 0x0032A6 00:F296: C0        .byte $C0   ; 
- D 3 - I - 0x0032A7 00:F297: 01        .byte $01   ; 
- D 3 - I - 0x0032A8 00:F298: 70        .byte $70   ; 
- D 3 - I - 0x0032A9 00:F299: 04        .byte $04   ; 
- D 3 - I - 0x0032AA 00:F29A: C0        .byte $C0   ; 
- D 3 - I - 0x0032AB 00:F29B: 01        .byte $01   ; 
- D 3 - I - 0x0032AC 00:F29C: 60        .byte $60   ; 
- D 3 - I - 0x0032AD 00:F29D: 08        .byte $08   ; 
- D 3 - I - 0x0032AE 00:F29E: C0        .byte $C0   ; 
- D 3 - I - 0x0032AF 00:F29F: 02        .byte $02   ; 
- D 3 - I - 0x0032B0 00:F2A0: 70        .byte $70   ; 
- D 3 - I - 0x0032B1 00:F2A1: 08        .byte $08   ; 
- D 3 - I - 0x0032B2 00:F2A2: C0        .byte $C0   ; 
- D 3 - I - 0x0032B3 00:F2A3: 02        .byte $02   ; 
- D 3 - I - 0x0032B4 00:F2A4: 80        .byte $80   ; 
- D 3 - I - 0x0032B5 00:F2A5: 0C        .byte $0C   ; 
- D 3 - I - 0x0032B6 00:F2A6: C0        .byte $C0   ; 
- D 3 - I - 0x0032B7 00:F2A7: 06        .byte $06   ; 
- D 3 - I - 0x0032B8 00:F2A8: F0        .byte con_sfx_off   ; 



_off001_F2A9_08:
- D 3 - I - 0x0032B9 00:F2A9: 02        .byte $02   ; 
- D 3 - I - 0x0032BA 00:F2AA: 98        .byte $98   ; 
- D 3 - I - 0x0032BB 00:F2AB: 7F        .byte $7F   ; 
- D 3 - I - 0x0032BC 00:F2AC: 28        .byte $28   ; 
- D 3 - I - 0x0032BD 00:F2AD: 33        .byte $33   ; 
- D 3 - I - 0x0032BE 00:F2AE: 01        .byte $01   ; 
- D 3 - I - 0x0032BF 00:F2AF: 23        .byte $23   ; 
- D 3 - I - 0x0032C0 00:F2B0: 01        .byte $01   ; 
- D 3 - I - 0x0032C1 00:F2B1: 13        .byte $13   ; 
- D 3 - I - 0x0032C2 00:F2B2: 01        .byte $01   ; 
- D 3 - I - 0x0032C3 00:F2B3: 03        .byte $03   ; 
- D 3 - I - 0x0032C4 00:F2B4: 01        .byte $01   ; 
- D 3 - I - 0x0032C5 00:F2B5: A2        .byte $A2   ; 
- D 3 - I - 0x0032C6 00:F2B6: 01        .byte $01   ; 
- D 3 - I - 0x0032C7 00:F2B7: 82        .byte $82   ; 
- D 3 - I - 0x0032C8 00:F2B8: 01        .byte $01   ; 
- D 3 - I - 0x0032C9 00:F2B9: 72        .byte $72   ; 
- D 3 - I - 0x0032CA 00:F2BA: 01        .byte $01   ; 
- D 3 - I - 0x0032CB 00:F2BB: 52        .byte $52   ; 
- D 3 - I - 0x0032CC 00:F2BC: 01        .byte $01   ; 
- D 3 - I - 0x0032CD 00:F2BD: 32        .byte $32   ; 
- D 3 - I - 0x0032CE 00:F2BE: 01        .byte $01   ; 
- D 3 - I - 0x0032CF 00:F2BF: 12        .byte $12   ; 
- D 3 - I - 0x0032D0 00:F2C0: 01        .byte $01   ; 
- D 3 - I - 0x0032D1 00:F2C1: A1        .byte $A1   ; 
- D 3 - I - 0x0032D2 00:F2C2: 01        .byte $01   ; 
- D 3 - I - 0x0032D3 00:F2C3: 71        .byte $71   ; 
- D 3 - I - 0x0032D4 00:F2C4: 01        .byte $01   ; 
- D 3 - I - 0x0032D5 00:F2C5: 31        .byte $31   ; 
- D 3 - I - 0x0032D6 00:F2C6: 01        .byte $01   ; 
- D 3 - I - 0x0032D7 00:F2C7: F0        .byte con_sfx_off   ; 



_off001_F2C8_03:
- D 3 - I - 0x0032D8 00:F2C8: 01        .byte $01   ; 
- D 3 - I - 0x0032D9 00:F2C9: 42        .byte $42   ; 
- D 3 - I - 0x0032DA 00:F2CA: 7F        .byte $7F   ; 
- D 3 - I - 0x0032DB 00:F2CB: 38        .byte $38   ; 
- D 3 - I - 0x0032DC 00:F2CC: 23        .byte $23   ; 
- D 3 - I - 0x0032DD 00:F2CD: 02        .byte $02   ; 
- D 3 - I - 0x0032DE 00:F2CE: 33        .byte $33   ; 
- D 3 - I - 0x0032DF 00:F2CF: 02        .byte $02   ; 
- D 3 - I - 0x0032E0 00:F2D0: 43        .byte $43   ; 
- D 3 - I - 0x0032E1 00:F2D1: 02        .byte $02   ; 
- D 3 - I - 0x0032E2 00:F2D2: 53        .byte $53   ; 
- D 3 - I - 0x0032E3 00:F2D3: 02        .byte $02   ; 
- D 3 - I - 0x0032E4 00:F2D4: 43        .byte $43   ; 
- D 3 - I - 0x0032E5 00:F2D5: 02        .byte $02   ; 
- D 3 - I - 0x0032E6 00:F2D6: 33        .byte $33   ; 
- D 3 - I - 0x0032E7 00:F2D7: 02        .byte $02   ; 
- D 3 - I - 0x0032E8 00:F2D8: 23        .byte $23   ; 
- D 3 - I - 0x0032E9 00:F2D9: 02        .byte $02   ; 
- D 3 - I - 0x0032EA 00:F2DA: 13        .byte $13   ; 
- D 3 - I - 0x0032EB 00:F2DB: 02        .byte $02   ; 
- D 3 - I - 0x0032EC 00:F2DC: 23        .byte $23   ; 
- D 3 - I - 0x0032ED 00:F2DD: 02        .byte $02   ; 
- D 3 - I - 0x0032EE 00:F2DE: 33        .byte $33   ; 
- D 3 - I - 0x0032EF 00:F2DF: 02        .byte $02   ; 
- D 3 - I - 0x0032F0 00:F2E0: 43        .byte $43   ; 
- D 3 - I - 0x0032F1 00:F2E1: 02        .byte $02   ; 
- D 3 - I - 0x0032F2 00:F2E2: 33        .byte $33   ; 
- D 3 - I - 0x0032F3 00:F2E3: 02        .byte $02   ; 
- D 3 - I - 0x0032F4 00:F2E4: 23        .byte $23   ; 
- D 3 - I - 0x0032F5 00:F2E5: 02        .byte $02   ; 
- D 3 - I - 0x0032F6 00:F2E6: 13        .byte $13   ; 
- D 3 - I - 0x0032F7 00:F2E7: 02        .byte $02   ; 
- D 3 - I - 0x0032F8 00:F2E8: 03        .byte $03   ; 
- D 3 - I - 0x0032F9 00:F2E9: 02        .byte $02   ; 
- D 3 - I - 0x0032FA 00:F2EA: 13        .byte $13   ; 
- D 3 - I - 0x0032FB 00:F2EB: 02        .byte $02   ; 
- D 3 - I - 0x0032FC 00:F2EC: 23        .byte $23   ; 
- D 3 - I - 0x0032FD 00:F2ED: 02        .byte $02   ; 
- D 3 - I - 0x0032FE 00:F2EE: 33        .byte $33   ; 
- D 3 - I - 0x0032FF 00:F2EF: 02        .byte $02   ; 
- D 3 - I - 0x003300 00:F2F0: 23        .byte $23   ; 
- D 3 - I - 0x003301 00:F2F1: 02        .byte $02   ; 
- D 3 - I - 0x003302 00:F2F2: 13        .byte $13   ; 
- D 3 - I - 0x003303 00:F2F3: 02        .byte $02   ; 
- D 3 - I - 0x003304 00:F2F4: 03        .byte $03   ; 
- D 3 - I - 0x003305 00:F2F5: 02        .byte $02   ; 
- D 3 - I - 0x003306 00:F2F6: B2        .byte $B2   ; 
- D 3 - I - 0x003307 00:F2F7: 02        .byte $02   ; 
- D 3 - I - 0x003308 00:F2F8: 03        .byte $03   ; 
- D 3 - I - 0x003309 00:F2F9: 02        .byte $02   ; 
- D 3 - I - 0x00330A 00:F2FA: 13        .byte $13   ; 
- D 3 - I - 0x00330B 00:F2FB: 02        .byte $02   ; 
- D 3 - I - 0x00330C 00:F2FC: 23        .byte $23   ; 
- D 3 - I - 0x00330D 00:F2FD: 02        .byte $02   ; 
- D 3 - I - 0x00330E 00:F2FE: 13        .byte $13   ; 
- D 3 - I - 0x00330F 00:F2FF: 02        .byte $02   ; 
- D 3 - I - 0x003310 00:F300: 03        .byte $03   ; 
- D 3 - I - 0x003311 00:F301: 02        .byte $02   ; 
- D 3 - I - 0x003312 00:F302: B2        .byte $B2   ; 
- D 3 - I - 0x003313 00:F303: 02        .byte $02   ; 
- D 3 - I - 0x003314 00:F304: A2        .byte $A2   ; 
- D 3 - I - 0x003315 00:F305: 02        .byte $02   ; 
- D 3 - I - 0x003316 00:F306: B2        .byte $B2   ; 
- D 3 - I - 0x003317 00:F307: 02        .byte $02   ; 
- D 3 - I - 0x003318 00:F308: 03        .byte $03   ; 
- D 3 - I - 0x003319 00:F309: 02        .byte $02   ; 
- D 3 - I - 0x00331A 00:F30A: 23        .byte $23   ; 
- D 3 - I - 0x00331B 00:F30B: 02        .byte $02   ; 
- D 3 - I - 0x00331C 00:F30C: 03        .byte $03   ; 
- D 3 - I - 0x00331D 00:F30D: 02        .byte $02   ; 
- D 3 - I - 0x00331E 00:F30E: B2        .byte $B2   ; 
- D 3 - I - 0x00331F 00:F30F: 02        .byte $02   ; 
- D 3 - I - 0x003320 00:F310: A2        .byte $A2   ; 
- D 3 - I - 0x003321 00:F311: 02        .byte $02   ; 
- D 3 - I - 0x003322 00:F312: 92        .byte $92   ; 
- D 3 - I - 0x003323 00:F313: 02        .byte $02   ; 
- D 3 - I - 0x003324 00:F314: A2        .byte $A2   ; 
- D 3 - I - 0x003325 00:F315: 02        .byte $02   ; 
- D 3 - I - 0x003326 00:F316: B2        .byte $B2   ; 
- D 3 - I - 0x003327 00:F317: 02        .byte $02   ; 
- D 3 - I - 0x003328 00:F318: 03        .byte $03   ; 
- D 3 - I - 0x003329 00:F319: 02        .byte $02   ; 
- D 3 - I - 0x00332A 00:F31A: B2        .byte $B2   ; 
- D 3 - I - 0x00332B 00:F31B: 02        .byte $02   ; 
- D 3 - I - 0x00332C 00:F31C: A2        .byte $A2   ; 
- D 3 - I - 0x00332D 00:F31D: 02        .byte $02   ; 
- D 3 - I - 0x00332E 00:F31E: 92        .byte $92   ; 
- D 3 - I - 0x00332F 00:F31F: 02        .byte $02   ; 
- D 3 - I - 0x003330 00:F320: 82        .byte $82   ; 
- D 3 - I - 0x003331 00:F321: 02        .byte $02   ; 
- D 3 - I - 0x003332 00:F322: 92        .byte $92   ; 
- D 3 - I - 0x003333 00:F323: 02        .byte $02   ; 
- D 3 - I - 0x003334 00:F324: A2        .byte $A2   ; 
- D 3 - I - 0x003335 00:F325: 02        .byte $02   ; 
- D 3 - I - 0x003336 00:F326: 03        .byte $03   ; 
- D 3 - I - 0x003337 00:F327: 02        .byte $02   ; 
- D 3 - I - 0x003338 00:F328: A2        .byte $A2   ; 
- D 3 - I - 0x003339 00:F329: 02        .byte $02   ; 
- D 3 - I - 0x00333A 00:F32A: 92        .byte $92   ; 
- D 3 - I - 0x00333B 00:F32B: 02        .byte $02   ; 
- D 3 - I - 0x00333C 00:F32C: 82        .byte $82   ; 
- D 3 - I - 0x00333D 00:F32D: 02        .byte $02   ; 
- D 3 - I - 0x00333E 00:F32E: F2        .byte con_sfx_F2   ; 
- D 3 - I - 0x00333F 00:F32F: 00        .byte $00   ; 
- D 3 - I - 0x003340 00:F330: F3        .byte con_sfx_F3   ; 
- D 3 - I - 0x003341 00:F331: 00        .byte $00   ; 
- D 3 - I - 0x003342 00:F332: F5        .byte con_sfx_F5   ; 
- D 3 - I - 0x003343 00:F333: 18        .byte $18   ; 
- D 3 - I - 0x003344 00:F334: 31        .byte $31   ; 
- D 3 - I - 0x003345 00:F335: 01        .byte $01   ; 
- D 3 - I - 0x003346 00:F336: 71        .byte $71   ; 
- D 3 - I - 0x003347 00:F337: 01        .byte $01   ; 
- D 3 - I - 0x003348 00:F338: B1        .byte $B1   ; 
- D 3 - I - 0x003349 00:F339: 01        .byte $01   ; 
- D 3 - I - 0x00334A 00:F33A: 32        .byte $32   ; 
- D 3 - I - 0x00334B 00:F33B: 01        .byte $01   ; 
- D 3 - I - 0x00334C 00:F33C: 72        .byte $72   ; 
- D 3 - I - 0x00334D 00:F33D: 01        .byte $01   ; 
- D 3 - I - 0x00334E 00:F33E: B2        .byte $B2   ; 
- D 3 - I - 0x00334F 00:F33F: 01        .byte $01   ; 
- D 3 - I - 0x003350 00:F340: 33        .byte $33   ; 
- D 3 - I - 0x003351 00:F341: 01        .byte $01   ; 
- D 3 - I - 0x003352 00:F342: 73        .byte $73   ; 
- D 3 - I - 0x003353 00:F343: 01        .byte $01   ; 
- D 3 - I - 0x003354 00:F344: C0        .byte $C0   ; 
- D 3 - I - 0x003355 00:F345: 02        .byte $02   ; 
- D 3 - I - 0x003356 00:F346: 31        .byte $31   ; 
- D 3 - I - 0x003357 00:F347: 01        .byte $01   ; 
- D 3 - I - 0x003358 00:F348: 71        .byte $71   ; 
- D 3 - I - 0x003359 00:F349: 01        .byte $01   ; 
- D 3 - I - 0x00335A 00:F34A: B1        .byte $B1   ; 
- D 3 - I - 0x00335B 00:F34B: 01        .byte $01   ; 
- D 3 - I - 0x00335C 00:F34C: 32        .byte $32   ; 
- D 3 - I - 0x00335D 00:F34D: 01        .byte $01   ; 
- D 3 - I - 0x00335E 00:F34E: 72        .byte $72   ; 
- D 3 - I - 0x00335F 00:F34F: 01        .byte $01   ; 
- D 3 - I - 0x003360 00:F350: B2        .byte $B2   ; 
- D 3 - I - 0x003361 00:F351: 01        .byte $01   ; 
- D 3 - I - 0x003362 00:F352: 33        .byte $33   ; 
- D 3 - I - 0x003363 00:F353: 01        .byte $01   ; 
- D 3 - I - 0x003364 00:F354: 73        .byte $73   ; 
- D 3 - I - 0x003365 00:F355: 01        .byte $01   ; 
- D 3 - I - 0x003366 00:F356: F0        .byte con_sfx_off   ; 



_off001_F357_00:
- D 3 - I - 0x003367 00:F357: 01        .byte $01   ; 
- D 3 - I - 0x003368 00:F358: 81        .byte $81   ; 
- D 3 - I - 0x003369 00:F359: 7F        .byte $7F   ; 
- D 3 - I - 0x00336A 00:F35A: 40        .byte $40   ; 
- D 3 - I - 0x00336B 00:F35B: 31        .byte $31   ; 
- D 3 - I - 0x00336C 00:F35C: 08        .byte $08   ; 
- D 3 - I - 0x00336D 00:F35D: 32        .byte $32   ; 
- D 3 - I - 0x00336E 00:F35E: 08        .byte $08   ; 
- D 3 - I - 0x00336F 00:F35F: A1        .byte $A1   ; 
- D 3 - I - 0x003370 00:F360: 08        .byte $08   ; 
- D 3 - I - 0x003371 00:F361: 71        .byte $71   ; 
- D 3 - I - 0x003372 00:F362: 08        .byte $08   ; 
- D 3 - I - 0x003373 00:F363: 32        .byte $32   ; 
- D 3 - I - 0x003374 00:F364: 07        .byte $07   ; 
- D 3 - I - 0x003375 00:F365: A1        .byte $A1   ; 
- D 3 - I - 0x003376 00:F366: 07        .byte $07   ; 
- D 3 - I - 0x003377 00:F367: 71        .byte $71   ; 
- D 3 - I - 0x003378 00:F368: 0C        .byte $0C   ; 
- D 3 - I - 0x003379 00:F369: C0        .byte $C0   ; 
- D 3 - I - 0x00337A 00:F36A: 06        .byte $06   ; 
- D 3 - I - 0x00337B 00:F36B: 41        .byte $41   ; 
- D 3 - I - 0x00337C 00:F36C: 08        .byte $08   ; 
- D 3 - I - 0x00337D 00:F36D: 42        .byte $42   ; 
- D 3 - I - 0x00337E 00:F36E: 08        .byte $08   ; 
- D 3 - I - 0x00337F 00:F36F: B1        .byte $B1   ; 
- D 3 - I - 0x003380 00:F370: 08        .byte $08   ; 
- D 3 - I - 0x003381 00:F371: 81        .byte $81   ; 
- D 3 - I - 0x003382 00:F372: 08        .byte $08   ; 
- D 3 - I - 0x003383 00:F373: 42        .byte $42   ; 
- D 3 - I - 0x003384 00:F374: 07        .byte $07   ; 
- D 3 - I - 0x003385 00:F375: B1        .byte $B1   ; 
- D 3 - I - 0x003386 00:F376: 07        .byte $07   ; 
- D 3 - I - 0x003387 00:F377: 81        .byte $81   ; 
- D 3 - I - 0x003388 00:F378: 0C        .byte $0C   ; 
- D 3 - I - 0x003389 00:F379: C0        .byte $C0   ; 
- D 3 - I - 0x00338A 00:F37A: 06        .byte $06   ; 
- D 3 - I - 0x00338B 00:F37B: 31        .byte $31   ; 
- D 3 - I - 0x00338C 00:F37C: 08        .byte $08   ; 
- D 3 - I - 0x00338D 00:F37D: 32        .byte $32   ; 
- D 3 - I - 0x00338E 00:F37E: 08        .byte $08   ; 
- D 3 - I - 0x00338F 00:F37F: A1        .byte $A1   ; 
- D 3 - I - 0x003390 00:F380: 08        .byte $08   ; 
- D 3 - I - 0x003391 00:F381: 71        .byte $71   ; 
- D 3 - I - 0x003392 00:F382: 08        .byte $08   ; 
- D 3 - I - 0x003393 00:F383: 32        .byte $32   ; 
- D 3 - I - 0x003394 00:F384: 07        .byte $07   ; 
- D 3 - I - 0x003395 00:F385: A1        .byte $A1   ; 
- D 3 - I - 0x003396 00:F386: 07        .byte $07   ; 
- D 3 - I - 0x003397 00:F387: 71        .byte $71   ; 
- D 3 - I - 0x003398 00:F388: 0C        .byte $0C   ; 
- D 3 - I - 0x003399 00:F389: C0        .byte $C0   ; 
- D 3 - I - 0x00339A 00:F38A: 06        .byte $06   ; 
- D 3 - I - 0x00339B 00:F38B: 61        .byte $61   ; 
- D 3 - I - 0x00339C 00:F38C: 05        .byte $05   ; 
- D 3 - I - 0x00339D 00:F38D: 71        .byte $71   ; 
- D 3 - I - 0x00339E 00:F38E: 05        .byte $05   ; 
- D 3 - I - 0x00339F 00:F38F: 81        .byte $81   ; 
- D 3 - I - 0x0033A0 00:F390: 05        .byte $05   ; 
- D 3 - I - 0x0033A1 00:F391: 81        .byte $81   ; 
- D 3 - I - 0x0033A2 00:F392: 05        .byte $05   ; 
- D 3 - I - 0x0033A3 00:F393: 91        .byte $91   ; 
- D 3 - I - 0x0033A4 00:F394: 05        .byte $05   ; 
- D 3 - I - 0x0033A5 00:F395: A1        .byte $A1   ; 
- D 3 - I - 0x0033A6 00:F396: 05        .byte $05   ; 
- D 3 - I - 0x0033A7 00:F397: A1        .byte $A1   ; 
- D 3 - I - 0x0033A8 00:F398: 05        .byte $05   ; 
- D 3 - I - 0x0033A9 00:F399: B1        .byte $B1   ; 
- D 3 - I - 0x0033AA 00:F39A: 05        .byte $05   ; 
- D 3 - I - 0x0033AB 00:F39B: 02        .byte $02   ; 
- D 3 - I - 0x0033AC 00:F39C: 05        .byte $05   ; 
- D 3 - I - 0x0033AD 00:F39D: 32        .byte $32   ; 
- D 3 - I - 0x0033AE 00:F39E: 0C        .byte $0C   ; 
- D 3 - I - 0x0033AF 00:F39F: F0        .byte con_sfx_off   ; 



_off001_F3A0_01:
- D 3 - I - 0x0033B0 00:F3A0: 02        .byte $02   ; 
- D 3 - I - 0x0033B1 00:F3A1: 82        .byte $82   ; 
- D 3 - I - 0x0033B2 00:F3A2: 7F        .byte $7F   ; 
- D 3 - I - 0x0033B3 00:F3A3: 40        .byte $40   ; 
- D 3 - I - 0x0033B4 00:F3A4: 30        .byte $30   ; 
- D 3 - I - 0x0033B5 00:F3A5: 18        .byte $18   ; 
- D 3 - I - 0x0033B6 00:F3A6: A0        .byte $A0   ; 
- D 3 - I - 0x0033B7 00:F3A7: 08        .byte $08   ; 
- D 3 - I - 0x0033B8 00:F3A8: 30        .byte $30   ; 
- D 3 - I - 0x0033B9 00:F3A9: 0E        .byte $0E   ; 
- D 3 - I - 0x0033BA 00:F3AA: A0        .byte $A0   ; 
- D 3 - I - 0x0033BB 00:F3AB: 0C        .byte $0C   ; 
- D 3 - I - 0x0033BC 00:F3AC: C0        .byte $C0   ; 
- D 3 - I - 0x0033BD 00:F3AD: 06        .byte $06   ; 
- D 3 - I - 0x0033BE 00:F3AE: 40        .byte $40   ; 
- D 3 - I - 0x0033BF 00:F3AF: 18        .byte $18   ; 
- D 3 - I - 0x0033C0 00:F3B0: B0        .byte $B0   ; 
- D 3 - I - 0x0033C1 00:F3B1: 08        .byte $08   ; 
- D 3 - I - 0x0033C2 00:F3B2: 40        .byte $40   ; 
- D 3 - I - 0x0033C3 00:F3B3: 0E        .byte $0E   ; 
- D 3 - I - 0x0033C4 00:F3B4: B0        .byte $B0   ; 
- D 3 - I - 0x0033C5 00:F3B5: 0C        .byte $0C   ; 
- D 3 - I - 0x0033C6 00:F3B6: C0        .byte $C0   ; 
- D 3 - I - 0x0033C7 00:F3B7: 06        .byte $06   ; 
- D 3 - I - 0x0033C8 00:F3B8: 30        .byte $30   ; 
- D 3 - I - 0x0033C9 00:F3B9: 18        .byte $18   ; 
- D 3 - I - 0x0033CA 00:F3BA: A0        .byte $A0   ; 
- D 3 - I - 0x0033CB 00:F3BB: 08        .byte $08   ; 
- D 3 - I - 0x0033CC 00:F3BC: 30        .byte $30   ; 
- D 3 - I - 0x0033CD 00:F3BD: 0E        .byte $0E   ; 
- D 3 - I - 0x0033CE 00:F3BE: A0        .byte $A0   ; 
- D 3 - I - 0x0033CF 00:F3BF: 0C        .byte $0C   ; 
- D 3 - I - 0x0033D0 00:F3C0: C0        .byte $C0   ; 
- D 3 - I - 0x0033D1 00:F3C1: 06        .byte $06   ; 
- D 3 - I - 0x0033D2 00:F3C2: A0        .byte $A0   ; 
- D 3 - I - 0x0033D3 00:F3C3: 0F        .byte $0F   ; 
- D 3 - I - 0x0033D4 00:F3C4: 01        .byte $01   ; 
- D 3 - I - 0x0033D5 00:F3C5: 0F        .byte $0F   ; 
- D 3 - I - 0x0033D6 00:F3C6: 21        .byte $21   ; 
- D 3 - I - 0x0033D7 00:F3C7: 0F        .byte $0F   ; 
- D 3 - I - 0x0033D8 00:F3C8: 31        .byte $31   ; 
- D 3 - I - 0x0033D9 00:F3C9: 0C        .byte $0C   ; 
- D 3 - I - 0x0033DA 00:F3CA: F0        .byte con_sfx_off   ; 



_off001_F3CB_04:
- D 3 - I - 0x0033DB 00:F3CB: 01        .byte $01   ; 
- D 3 - I - 0x0033DC 00:F3CC: 9F        .byte $9F   ; 
- D 3 - I - 0x0033DD 00:F3CD: 7F        .byte $7F   ; 
- D 3 - I - 0x0033DE 00:F3CE: 28        .byte $28   ; 
- D 3 - I - 0x0033DF 00:F3CF: 01        .byte $01   ; 
- D 3 - I - 0x0033E0 00:F3D0: 01        .byte $01   ; 
- D 3 - I - 0x0033E1 00:F3D1: 41        .byte $41   ; 
- D 3 - I - 0x0033E2 00:F3D2: 01        .byte $01   ; 
- D 3 - I - 0x0033E3 00:F3D3: 71        .byte $71   ; 
- D 3 - I - 0x0033E4 00:F3D4: 01        .byte $01   ; 
- D 3 - I - 0x0033E5 00:F3D5: A1        .byte $A1   ; 
- D 3 - I - 0x0033E6 00:F3D6: 01        .byte $01   ; 
- D 3 - I - 0x0033E7 00:F3D7: 02        .byte $02   ; 
- D 3 - I - 0x0033E8 00:F3D8: 01        .byte $01   ; 
- D 3 - I - 0x0033E9 00:F3D9: F5        .byte con_sfx_F5   ; 
- D 3 - I - 0x0033EA 00:F3DA: 18        .byte $18   ; 
- D 3 - I - 0x0033EB 00:F3DB: F0        .byte con_sfx_off   ; 



_off001_F3DC_05:
- D 3 - I - 0x0033EC 00:F3DC: 01        .byte $01   ; 
- D 3 - I - 0x0033ED 00:F3DD: 9F        .byte $9F   ; 
- D 3 - I - 0x0033EE 00:F3DE: 7F        .byte $7F   ; 
- D 3 - I - 0x0033EF 00:F3DF: 28        .byte $28   ; 
- D 3 - I - 0x0033F0 00:F3E0: 02        .byte $02   ; 
- D 3 - I - 0x0033F1 00:F3E1: 01        .byte $01   ; 
- D 3 - I - 0x0033F2 00:F3E2: A1        .byte $A1   ; 
- D 3 - I - 0x0033F3 00:F3E3: 01        .byte $01   ; 
- D 3 - I - 0x0033F4 00:F3E4: 71        .byte $71   ; 
- D 3 - I - 0x0033F5 00:F3E5: 01        .byte $01   ; 
- D 3 - I - 0x0033F6 00:F3E6: 41        .byte $41   ; 
- D 3 - I - 0x0033F7 00:F3E7: 01        .byte $01   ; 
- D 3 - I - 0x0033F8 00:F3E8: F5        .byte con_sfx_F5   ; 
- D 3 - I - 0x0033F9 00:F3E9: 18        .byte $18   ; 
- D 3 - I - 0x0033FA 00:F3EA: 01        .byte $01   ; 
- D 3 - I - 0x0033FB 00:F3EB: 01        .byte $01   ; 
- D 3 - I - 0x0033FC 00:F3EC: F0        .byte con_sfx_off   ; 



_off001_F3ED_0F:
- D 3 - I - 0x0033FD 00:F3ED: 01        .byte $01   ; 
- D 3 - I - 0x0033FE 00:F3EE: 9F        .byte $9F   ; 
- D 3 - I - 0x0033FF 00:F3EF: 7F        .byte $7F   ; 
- D 3 - I - 0x003400 00:F3F0: 28        .byte $28   ; 
- D 3 - I - 0x003401 00:F3F1: 52        .byte $52   ; 
- D 3 - I - 0x003402 00:F3F2: 01        .byte $01   ; 
- D 3 - I - 0x003403 00:F3F3: 92        .byte $92   ; 
- D 3 - I - 0x003404 00:F3F4: 01        .byte $01   ; 
- D 3 - I - 0x003405 00:F3F5: 03        .byte $03   ; 
- D 3 - I - 0x003406 00:F3F6: 01        .byte $01   ; 
- D 3 - I - 0x003407 00:F3F7: 33        .byte $33   ; 
- D 3 - I - 0x003408 00:F3F8: 01        .byte $01   ; 
- D 3 - I - 0x003409 00:F3F9: F5        .byte con_sfx_F5   ; 
- D 3 - I - 0x00340A 00:F3FA: 18        .byte $18   ; 
- D 3 - I - 0x00340B 00:F3FB: 53        .byte $53   ; 
- D 3 - I - 0x00340C 00:F3FC: 03        .byte $03   ; 
- D 3 - I - 0x00340D 00:F3FD: F5        .byte con_sfx_F5   ; 
- D 3 - I - 0x00340E 00:F3FE: 28        .byte $28   ; 
- D 3 - I - 0x00340F 00:F3FF: 53        .byte $53   ; 
- D 3 - I - 0x003410 00:F400: 01        .byte $01   ; 
- D 3 - I - 0x003411 00:F401: 33        .byte $33   ; 
- D 3 - I - 0x003412 00:F402: 01        .byte $01   ; 
- D 3 - I - 0x003413 00:F403: 03        .byte $03   ; 
- D 3 - I - 0x003414 00:F404: 01        .byte $01   ; 
- D 3 - I - 0x003415 00:F405: 92        .byte $92   ; 
- D 3 - I - 0x003416 00:F406: 01        .byte $01   ; 
- D 3 - I - 0x003417 00:F407: F5        .byte con_sfx_F5   ; 
- D 3 - I - 0x003418 00:F408: 18        .byte $18   ; 
- D 3 - I - 0x003419 00:F409: 52        .byte $52   ; 
- D 3 - I - 0x00341A 00:F40A: 03        .byte $03   ; 
- D 3 - I - 0x00341B 00:F40B: 92        .byte $92   ; 
- D 3 - I - 0x00341C 00:F40C: 01        .byte $01   ; 
- D 3 - I - 0x00341D 00:F40D: 13        .byte $13   ; 
- D 3 - I - 0x00341E 00:F40E: 01        .byte $01   ; 
- D 3 - I - 0x00341F 00:F40F: 43        .byte $43   ; 
- D 3 - I - 0x003420 00:F410: 01        .byte $01   ; 
- D 3 - I - 0x003421 00:F411: 73        .byte $73   ; 
- D 3 - I - 0x003422 00:F412: 01        .byte $01   ; 
- D 3 - I - 0x003423 00:F413: F5        .byte con_sfx_F5   ; 
- D 3 - I - 0x003424 00:F414: 18        .byte $18   ; 
- D 3 - I - 0x003425 00:F415: 93        .byte $93   ; 
- D 3 - I - 0x003426 00:F416: 0A        .byte $0A   ; 
- D 3 - I - 0x003427 00:F417: F5        .byte con_sfx_F5   ; 
- D 3 - I - 0x003428 00:F418: 28        .byte $28   ; 
- D 3 - I - 0x003429 00:F419: 93        .byte $93   ; 
- D 3 - I - 0x00342A 00:F41A: 01        .byte $01   ; 
- D 3 - I - 0x00342B 00:F41B: 73        .byte $73   ; 
- D 3 - I - 0x00342C 00:F41C: 01        .byte $01   ; 
- D 3 - I - 0x00342D 00:F41D: 43        .byte $43   ; 
- D 3 - I - 0x00342E 00:F41E: 01        .byte $01   ; 
- D 3 - I - 0x00342F 00:F41F: 13        .byte $13   ; 
- D 3 - I - 0x003430 00:F420: 01        .byte $01   ; 
- D 3 - I - 0x003431 00:F421: F5        .byte con_sfx_F5   ; 
- D 3 - I - 0x003432 00:F422: 18        .byte $18   ; 
- D 3 - I - 0x003433 00:F423: 92        .byte $92   ; 
- D 3 - I - 0x003434 00:F424: 03        .byte $03   ; 
- D 3 - I - 0x003435 00:F425: F0        .byte con_sfx_off   ; 


; bzk garbage
- - - - - - 0x003436 00:F426: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003440 00:F430: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003450 00:F440: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003460 00:F450: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003470 00:F460: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003480 00:F470: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003490 00:F480: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0034A0 00:F490: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0034B0 00:F4A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0034C0 00:F4B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0034D0 00:F4C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0034E0 00:F4D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0034F0 00:F4E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003500 00:F4F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003510 00:F500: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003520 00:F510: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003530 00:F520: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003540 00:F530: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003550 00:F540: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003560 00:F550: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003570 00:F560: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003580 00:F570: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003590 00:F580: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0035A0 00:F590: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0035B0 00:F5A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0035C0 00:F5B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0035D0 00:F5C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0035E0 00:F5D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0035F0 00:F5E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003600 00:F5F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003610 00:F600: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003620 00:F610: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003630 00:F620: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003640 00:F630: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003650 00:F640: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003660 00:F650: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003670 00:F660: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003680 00:F670: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003690 00:F680: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0036A0 00:F690: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0036B0 00:F6A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0036C0 00:F6B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0036D0 00:F6C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0036E0 00:F6D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0036F0 00:F6E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003700 00:F6F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003710 00:F700: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003720 00:F710: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003730 00:F720: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003740 00:F730: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003750 00:F740: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003760 00:F750: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003770 00:F760: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003780 00:F770: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003790 00:F780: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0037A0 00:F790: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0037B0 00:F7A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0037C0 00:F7B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0037D0 00:F7C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0037E0 00:F7D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0037F0 00:F7E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003800 00:F7F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003810 00:F800: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003820 00:F810: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003830 00:F820: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003840 00:F830: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003850 00:F840: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003860 00:F850: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003870 00:F860: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003880 00:F870: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003890 00:F880: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0038A0 00:F890: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0038B0 00:F8A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0038C0 00:F8B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0038D0 00:F8C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0038E0 00:F8D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0038F0 00:F8E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003900 00:F8F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003910 00:F900: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003920 00:F910: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003930 00:F920: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003940 00:F930: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003950 00:F940: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003960 00:F950: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003970 00:F960: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003980 00:F970: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003990 00:F980: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0039A0 00:F990: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0039B0 00:F9A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0039C0 00:F9B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0039D0 00:F9C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0039E0 00:F9D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0039F0 00:F9E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003A00 00:F9F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003A10 00:FA00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003A20 00:FA10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003A30 00:FA20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003A40 00:FA30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003A50 00:FA40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003A60 00:FA50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003A70 00:FA60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003A80 00:FA70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003A90 00:FA80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003AA0 00:FA90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003AB0 00:FAA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003AC0 00:FAB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003AD0 00:FAC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003AE0 00:FAD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003AF0 00:FAE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003B00 00:FAF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003B10 00:FB00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003B20 00:FB10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003B30 00:FB20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003B40 00:FB30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003B50 00:FB40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003B60 00:FB50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003B70 00:FB60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003B80 00:FB70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003B90 00:FB80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003BA0 00:FB90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003BB0 00:FBA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003BC0 00:FBB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003BD0 00:FBC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003BE0 00:FBD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003BF0 00:FBE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003C00 00:FBF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003C10 00:FC00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003C20 00:FC10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003C30 00:FC20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003C40 00:FC30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003C50 00:FC40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003C60 00:FC50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003C70 00:FC60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003C80 00:FC70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003C90 00:FC80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003CA0 00:FC90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003CB0 00:FCA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003CC0 00:FCB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003CD0 00:FCC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003CE0 00:FCD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003CF0 00:FCE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003D00 00:FCF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003D10 00:FD00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003D20 00:FD10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003D30 00:FD20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003D40 00:FD30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003D50 00:FD40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003D60 00:FD50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003D70 00:FD60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003D80 00:FD70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003D90 00:FD80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003DA0 00:FD90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003DB0 00:FDA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003DC0 00:FDB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003DD0 00:FDC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003DE0 00:FDD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003DF0 00:FDE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E00 00:FDF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E10 00:FE00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E20 00:FE10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E30 00:FE20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E40 00:FE30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E50 00:FE40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E60 00:FE50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E70 00:FE60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
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
- - - - - - 0x003F90 00:FF80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003FA0 00:FF90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003FB0 00:FFA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003FC0 00:FFB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003FD0 00:FFC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003FE0 00:FFD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003FF0 00:FFE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x004000 00:FFF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



tbl_FFF8:
- D 3 - - - 0x004008 00:FFF8: 78 EC     .word tbl_EC78



.out .sprintf("Free bytes in bank FF: 0x%04X [%d]", ($FFFA - *), ($FFFA - *))



.segment "VECTORS"
- D 3 - - - 0x00400A 00:FFFA: FA C0     .word vec_C0FA_NMI
- D 3 - - - 0x00400C 00:FFFC: 33 C0     .word vec_C033_RESET
- - - - - - 0x00400E 00:FFFE: 67 C1     .word vec_C167_IRQ



