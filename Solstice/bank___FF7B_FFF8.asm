; bzk code must be placed at the same address in all banks



tbl_inc_FF7B_prg_bank:
tbl_inc_FF7B_lo:
tbl_inc_FF7B_hi:
- D 3 - - - 0x007F8B 01:FF7B: 01        .byte con_prg_bank + $01   ; 00 (00)
- - - - - - 0x007F8C 01:FF7C: B3 82     .word ofs_0x0082C3_00 - 1

- D 3 - - - 0x007F8E 01:FF7E: 01        .byte con_prg_bank + $01   ; 01 (03)
- - - - - - 0x007F8F 01:FF7F: F3 81     .word ofs_0x008203_01 - 1

- - - - - - 0x007F91 01:FF81: 01        .byte con_prg_bank + $01   ; 02 (06)
- - - - - - 0x007F92 01:FF82: 1D 82     .word ofs_0x00822D_02 - 1

- D 3 - - - 0x007F94 01:FF84: 01        .byte con_prg_bank + $01   ; 03 (09)
- - - - - - 0x007F95 01:FF85: 4C 82     .word ofs_0x00825C_03 - 1

- - - - - - 0x007F97 01:FF87: 01        .byte con_prg_bank + $01   ; 04 (0C)
- - - - - - 0x007F98 01:FF88: 56 82     .word ofs_0x008266_04 - 1

- D 3 - - - 0x007F9A 01:FF8A: 01        .byte con_prg_bank + $01   ; 05 (0F)
- - - - - - 0x007F9B 01:FF8B: 7B 82     .word ofs_0x00828B_05 - 1

- D 3 - - - 0x007F9D 01:FF8D: 01        .byte con_prg_bank + $01   ; 06 (12)
- - - - - - 0x007F9E 01:FF8E: 89 82     .word ofs_0x008299_06 - 1

- D 3 - - - 0x007FA0 01:FF90: 01        .byte con_prg_bank + $01   ; 07 (15)
- - - - - - 0x007FA1 01:FF91: 6A 81     .word ofs_0x00817A_07 - 1

- D 3 - - - 0x007FA3 01:FF93: 01        .byte con_prg_bank + $01   ; 08 (18)
- - - - - - 0x007FA4 01:FF94: 30 81     .word ofs_0x008140_08 - 1

- D 3 - - - 0x007FA6 01:FF96: 01        .byte con_prg_bank + $01   ; 09 (1B)
- - - - - - 0x007FA7 01:FF97: 92 81     .word ofs_0x0081A2_09 - 1

- D 3 - - - 0x007FA9 01:FF99: 01        .byte con_prg_bank + $01   ; 0A (1E)
- - - - - - 0x007FAA 01:FF9A: D0 81     .word ofs_0x0081E0_0A - 1

- D 3 - - - 0x007FAC 01:FF9C: 02        .byte con_prg_bank + $02   ; 0B (21)
- - - - - - 0x007FAD 01:FF9D: 70 80     .word ofs_0x010080_0B_prepare_static_screen - 1

- D 3 - - - 0x007FAF 01:FF9F: 01        .byte con_prg_bank + $01   ; 0C (24)
- - - - - - 0x007FB0 01:FFA0: 0A 80     .word ofs_0x00801A_0C_set_room_visited_flag - 1

- D 3 - - - 0x007FB2 01:FFA2: 01        .byte con_prg_bank + $01   ; 0D (27)
- - - - - - 0x007FB3 01:FFA3: 1A 80     .word ofs_0x00802A_0D_clear_room_visited_flag - 1

- D 3 - - - 0x007FB5 01:FFA5: 01        .byte con_prg_bank + $01   ; 0E (2A)
- - - - - - 0x007FB6 01:FFA6: 00 80     .word ofs_0x008010_0E_check_if_room_was_visited - 1

- D 3 - - - 0x007FB8 01:FFA8: 02        .byte con_prg_bank + $02   ; 0F (2D)
- - - - - - 0x007FB9 01:FFA9: 4B 83     .word ofs_0x01035B_0F_draw_scroll_content_1 - 1

- D 3 - - - 0x007FBB 01:FFAB: 02        .byte con_prg_bank + $02   ; 10 (30)
- - - - - - 0x007FBC 01:FFAC: AF 83     .word ofs_0x0103BF_10_draw_scroll_content_2 - 1

- D 3 - - - 0x007FBE 01:FFAE: 02        .byte con_prg_bank + $02   ; 11 (33)
- - - - - - 0x007FBF 01:FFAF: 29 89     .word ofs_0x010939_11 - 1

- D 3 - - - 0x007FC1 01:FFB1: 01        .byte con_prg_bank + $01   ; 12 (36)
- - - - - - 0x007FC2 01:FFB2: 65 80     .word ofs_0x008075_12_set_bonus_picked_flag - 1

- D 3 - - - 0x007FC4 01:FFB4: 01        .byte con_prg_bank + $01   ; 13 (39)
- - - - - - 0x007FC5 01:FFB5: 75 80     .word ofs_0x008085_13_clear_bonus_picked_flag - 1

- D 3 - - - 0x007FC7 01:FFB7: 01        .byte con_prg_bank + $01   ; 14 (3C)
- - - - - - 0x007FC8 01:FFB8: 5B 80     .word ofs_0x00806B_14_check_if_bonus_was_picked - 1

- D 3 - - - 0x007FCA 01:FFBA: 03        .byte con_prg_bank + $03   ; 15 (3F)
- - - - - - 0x007FCB 01:FFBB: FA 81     .word ofs_0x01820A_15 - 1

- D 3 - - - 0x007FCD 01:FFBD: 02        .byte con_prg_bank + $02   ; 16 (42)
- - - - - - 0x007FCE 01:FFBE: D0 99     .word ofs_0x0119E0_16 - 1

- D 3 - - - 0x007FD0 01:FFC0: 02        .byte con_prg_bank + $02   ; 17 (45)
- - - - - - 0x007FD1 01:FFC1: DD 99     .word ofs_0x0119ED_17 - 1

- D 3 - - - 0x007FD3 01:FFC3: 02        .byte con_prg_bank + $02   ; 18 (48)
- - - - - - 0x007FD4 01:FFC4: C3 99     .word ofs_0x0119D3_18 - 1

- D 3 - - - 0x007FD6 01:FFC6: 02        .byte con_prg_bank + $02   ; 19 (4B)
- - - - - - 0x007FD7 01:FFC7: 7C A5     .word ofs_0x01258C_19 - 1

- D 3 - - - 0x007FD9 01:FFC9: 03        .byte con_prg_bank + $03   ; 1A (4E)
- - - - - - 0x007FDA 01:FFCA: F2 E5     .word ofs_0x01E602_1A - 1

- D 3 - - - 0x007FDC 01:FFCC: 02        .byte con_prg_bank + $02   ; 1B (51)
- - - - - - 0x007FDD 01:FFCD: 08 B0     .word ofs_0x013018_1B - 1

- D 3 - - - 0x007FDF 01:FFCF: 02        .byte con_prg_bank + $02   ; 1C (54)
- - - - - - 0x007FE0 01:FFD0: 86 A7     .word ofs_0x012796_1C - 1

- D 3 - - - 0x007FE2 01:FFD2: 03        .byte con_prg_bank + $03   ; 1D (57)
- - - - - - 0x007FE3 01:FFD3: 79 82     .word ofs_0x018289_1D - 1

- D 3 - - - 0x007FE5 01:FFD5: 02        .byte con_prg_bank + $02   ; 1E (5A)
- - - - - - 0x007FE6 01:FFD6: 1E A8     .word ofs_0x01282E_1E_display_value - 1

- D 3 - - - 0x007FE8 01:FFD8: 02        .byte con_prg_bank + $02   ; 1F (5D)
- - - - - - 0x007FE9 01:FFD9: 22 A6     .word ofs_0x012632_1F - 1

- D 3 - - - 0x007FEB 01:FFDB: 01        .byte con_prg_bank + $01   ; 20 (60)
- - - - - - 0x007FEC 01:FFDC: 21 85     .word ofs_0x008531_20_draw_static_screen - 1

- D 3 - - - 0x007FEE 01:FFDE: 02        .byte con_prg_bank + $02   ; 21 (63)
- - - - - - 0x007FEF 01:FFDF: 1F B3     .word ofs_0x01332F_21 - 1

- D 3 - - - 0x007FF1 01:FFE1: 02        .byte con_prg_bank + $02   ; 22 (66)
- - - - - - 0x007FF2 01:FFE2: 64 B3     .word ofs_0x013374_22 - 1

- D 3 - - - 0x007FF4 01:FFE4: 01        .byte con_prg_bank + $01   ; 23 (69)
- - - - - - 0x007FF5 01:FFE5: C4 BC     .word ofs_0x00BCD4_23 - 1

- D 3 - - - 0x007FF7 01:FFE7: 02        .byte con_prg_bank + $02   ; 24 (6C)
- - - - - - 0x007FF8 01:FFE8: E4 86     .word ofs_0x0106F4_24 - 1

- D 3 - - - 0x007FFA 01:FFEA: 02        .byte con_prg_bank + $02   ; 25 (6F)
- - - - - - 0x007FFB 01:FFEB: E7 BB     .word ofs_0x013BF7_25_enter_cheat - 1

- D 3 - - - 0x007FFD 01:FFED: 01        .byte con_prg_bank + $01   ; 26 (72)
- - - - - - 0x007FFE 01:FFEE: 16 BE     .word ofs_0x00BE26_26 - 1


; bzk garbage
- - - - - - 0x008000 01:FFF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x008008 01:FFF8: 00        .byte $00   ; 



