; bzk code must be placed at the same address in all banks



vec_inc_FE00_RESET:
C - - - - - 0x007E10 01:FE00: 78        SEI
C - - - - - 0x007E11 01:FE01: A9 00     LDA #$00
C - - - - - 0x007E13 01:FE03: A2 05     LDX #$05
C - - - - - 0x007E15 01:FE05: 8D 00 20  STA $2000
C - - - - - 0x007E18 01:FE08: 8D 01 20  STA $2001
bra_FE0B_loop:
C - - - - - 0x007E1B 01:FE0B: 8D 00 20  STA $2000
C - - - - - 0x007E1E 01:FE0E: EA        NOP
bra_FE0F_loop:
C - - - - - 0x007E1F 01:FE0F: 2C 02 20  BIT $2002
C - - - - - 0x007E22 01:FE12: 10 FB     BPL bra_FE0F_loop
C - - - - - 0x007E24 01:FE14: EA        NOP
C - - - - - 0x007E25 01:FE15: CA        DEX
C - - - - - 0x007E26 01:FE16: 10 F3     BPL bra_FE0B_loop
C - - - - - 0x007E28 01:FE18: 9A        TXS
C - - - - - 0x007E29 01:FE19: E8        INX ; X = 00    con_prg_bank + $00
C - - - - - 0x007E2A 01:FE1A: 8E 10 40  STX $4010
C - - - - - 0x007E2D 01:FE1D: 8E 03 20  STX $2003
C - - - - - 0x007E30 01:FE20: 8E F8 FF  STX $FFF8
C - - - - - 0x007E33 01:FE23: 4C 00 80  JMP loc_inc_0x000010_RESET



vec_inc_FE26_IRQ:
sub_inc_FE26_prg_bankswitch:
C - - - - - 0x007E36 01:FE26: 85 4A     STA ram_004A
C - - - - - 0x007E38 01:FE28: 84 4B     STY ram_004B
; calculate bankswitch index by reading a byte after JSR
C - - - - - 0x007E3A 01:FE2A: 68        PLA
C - - - - - 0x007E3B 01:FE2B: 85 48     STA ram_0048
C - - - - - 0x007E3D 01:FE2D: 68        PLA
C - - - - - 0x007E3E 01:FE2E: 85 49     STA ram_0049
C - - - - - 0x007E40 01:FE30: A0 01     LDY #$01
C - - - - - 0x007E42 01:FE32: B1 48     LDA (ram_0048),Y
C - - - - - 0x007E44 01:FE34: A8        TAY
; prepare new return address, which is located after index byte
C - - - - - 0x007E45 01:FE35: E6 48     INC ram_0048
C - - - - - 0x007E47 01:FE37: D0 02     BNE bra_FE3B_not_overflow
C - - - - - 0x007E49 01:FE39: E6 49     INC ram_0049
bra_FE3B_not_overflow:
; push new return address to stack
C - - - - - 0x007E4B 01:FE3B: A5 49     LDA ram_0049
C - - - - - 0x007E4D 01:FE3D: 48        PHA
C - - - - - 0x007E4E 01:FE3E: A5 48     LDA ram_0048
C - - - - - 0x007E50 01:FE40: 48        PHA
C - - - - - 0x007E51 01:FE41: A5 FF     LDA ram_prg_bank
C - - - - - 0x007E53 01:FE43: 48        PHA
C - - - - - 0x007E54 01:FE44: 29 10     AND #$10
C - - - - - 0x007E56 01:FE46: 19 7B FF  ORA tbl_FF7B_prg_bank,Y
C - - - - - 0x007E59 01:FE49: 85 FF     STA ram_prg_bank
C - - - - - 0x007E5B 01:FE4B: 8D F8 FF  STA $FFF8
- - - - - - 0x007E5E 01:FE4E: 20 5C FE  JSR sub_FE5C
; bzk optimize, loading same A from 004A
- - - - - - 0x007E61 01:FE51: 85 4A     STA ram_004A
- - - - - - 0x007E63 01:FE53: 68        PLA
- - - - - - 0x007E64 01:FE54: 85 FF     STA ram_prg_bank
C - - - - - 0x007E66 01:FE56: 8D F8 FF  STA $FFF8
C - - - - - 0x007E69 01:FE59: A5 4A     LDA ram_004A
C - - - - - 0x007E6B 01:FE5B: 60        RTS



sub_FE5C:
- - - - - - 0x007E6C 01:FE5C: B9 7D FF  LDA tbl_FF7B_hi + 2,Y
- - - - - - 0x007E6F 01:FE5F: 48        PHA
- - - - - - 0x007E70 01:FE60: B9 7C FF  LDA tbl_FF7B_lo + 1,Y
- - - - - - 0x007E73 01:FE63: 48        PHA
- - - - - - 0x007E74 01:FE64: A5 4A     LDA ram_004A
- - - - - - 0x007E76 01:FE66: A4 4B     LDY ram_004B
- - - - - - 0x007E78 01:FE68: 60        RTS



vec_FE69_NMI:
C D 3 - - - 0x007E79 01:FE69: 48        PHA
C - - - - - 0x007E7A 01:FE6A: 8E B0 07  STX ram_save_X
C - - - - - 0x007E7D 01:FE6D: 8C B1 07  STY ram_save_Y
C - - - - - 0x007E80 01:FE70: A5 FF     LDA ram_prg_bank
C - - - - - 0x007E82 01:FE72: 48        PHA
C - - - - - 0x007E83 01:FE73: 29 10     AND #$10
C - - - - - 0x007E85 01:FE75: 85 FF     STA ram_prg_bank
C - - - - - 0x007E87 01:FE77: 8D F8 FF  STA $FFF8
C - - - - - 0x007E8A 01:FE7A: AE B2 07  LDX ram_nmi_handler
C - - - - - 0x007E8D 01:FE7D: BD 88 BA  LDA tbl_inc_0x003A98_nmi_handler_hi,X
C - - - - - 0x007E90 01:FE80: 48        PHA
C - - - - - 0x007E91 01:FE81: BD 81 BA  LDA tbl_inc_0x003A91_nmi_handler_lo,X
C - - - - - 0x007E94 01:FE84: 48        PHA
C - - - - - 0x007E95 01:FE85: 60        RTS



loc_inc_FE86_play_sfx:
C D 3 - - - 0x007E96 01:FE86: A5 FF     LDA ram_prg_bank
C - - - - - 0x007E98 01:FE88: 29 10     AND #$10
C - - - - - 0x007E9A 01:FE8A: 09 02     ORA #con_prg_bank + $02
C - - - - - 0x007E9C 01:FE8C: 85 FF     STA ram_prg_bank
C - - - - - 0x007E9E 01:FE8E: 8D F8 FF  STA $FFF8
- - - - - - 0x007EA1 01:FE91: AD A2 07  LDA ram_07A2
- - - - - - 0x007EA4 01:FE94: D0 0D     BNE bra_FEA3
- - - - - - 0x007EA6 01:FE96: AE 8F 07  LDX ram_sfx_2
- - - - - - 0x007EA9 01:FE99: 10 05     BPL bra_FEA0
- - - - - - 0x007EAB 01:FE9B: AE 8E 07  LDX ram_sfx_1
- - - - - - 0x007EAE 01:FE9E: 30 0B     BMI bra_FEAB
bra_FEA0:
- - - - - - 0x007EB0 01:FEA0: 20 89 C2  JSR sub_0x014299_play_sfx
bra_FEA3:
- - - - - - 0x007EB3 01:FEA3: A2 FF     LDX #$FF
- - - - - - 0x007EB5 01:FEA5: 8E 8E 07  STX ram_sfx_1
- - - - - - 0x007EB8 01:FEA8: 8E 8F 07  STX ram_sfx_2
bra_FEAB:
- - - - - - 0x007EBB 01:FEAB: 20 F4 C2  JSR sub_0x014304_update_music_driver
- - - - - - 0x007EBE 01:FEAE: 8D 90 07  STA ram_0790
- - - - - - 0x007EC1 01:FEB1: 68        PLA
- - - - - - 0x007EC2 01:FEB2: 85 FF     STA ram_prg_bank
- - - - - - 0x007EC4 01:FEB4: 8D F8 FF  STA $FFF8
C - - - - - 0x007EC7 01:FEB7: AE B0 07  LDX ram_save_X
C - - - - - 0x007ECA 01:FEBA: AC B1 07  LDY ram_save_Y
C - - - - - 0x007ECD 01:FEBD: 68        PLA
C - - - - - 0x007ECE 01:FEBE: 40        RTI



sub_inc_FEBF_prepare_room_data_pointers:
; A = room index
C - - - - - 0x007ECF 01:FEBF: AA        TAX
C - - - - - 0x007ED0 01:FEC0: A5 FF     LDA ram_prg_bank
C - - - - - 0x007ED2 01:FEC2: 48        PHA
C - - - - - 0x007ED3 01:FEC3: 29 10     AND #$10
C - - - - - 0x007ED5 01:FEC5: 09 03     ORA #con_prg_bank + $03
C - - - - - 0x007ED7 01:FEC7: 85 FF     STA ram_prg_bank
C - - - - - 0x007ED9 01:FEC9: 8D F8 FF  STA $FFF8
- - - - - - 0x007EDC 01:FECC: BD 00 80  LDA tbl_0x018010_room_data_lo,X
- - - - - - 0x007EDF 01:FECF: 85 16     STA ram_0016
- - - - - - 0x007EE1 01:FED1: BD FD 80  LDA tbl_0x01810D_room_data_hi,X
- - - - - - 0x007EE4 01:FED4: 85 17     STA ram_0017
- - - - - - 0x007EE6 01:FED6: 4C 5C FF  JMP loc_FF5C_restore_prg_bank



sub_inc_FED9_read_byte_from_room_data_1:
; bzk optimize, same code as 0x007EE9
C - - - - - 0x007EE9 01:FED9: A5 FF     LDA ram_prg_bank
C - - - - - 0x007EEB 01:FEDB: 48        PHA
C - - - - - 0x007EEC 01:FEDC: 29 10     AND #$10
C - - - - - 0x007EEE 01:FEDE: 09 03     ORA #con_prg_bank + $03
C - - - - - 0x007EF0 01:FEE0: 85 FF     STA ram_prg_bank
C - - - - - 0x007EF2 01:FEE2: 8D F8 FF  STA $FFF8
- - - - - - 0x007EF5 01:FEE5: B1 16     LDA (ram_0016),Y
- - - - - - 0x007EF7 01:FEE7: 4C 42 FF  JMP loc_FF42_restore_prg_bank



sub_inc_FEEA:
C - - - - - 0x007EFA 01:FEEA: A5 FF     LDA ram_prg_bank
C - - - - - 0x007EFC 01:FEEC: 48        PHA
C - - - - - 0x007EFD 01:FEED: 29 10     AND #$10
C - - - - - 0x007EFF 01:FEEF: 09 03     ORA #con_prg_bank + $03
C - - - - - 0x007F01 01:FEF1: 85 FF     STA ram_prg_bank
C - - - - - 0x007F03 01:FEF3: 8D F8 FF  STA $FFF8
- - - - - - 0x007F06 01:FEF6: B1 1A     LDA (ram_001A),Y
- - - - - - 0x007F08 01:FEF8: 4C 42 FF  JMP loc_FF42_restore_prg_bank



sub_inc_FEFB:
C - - - - - 0x007F0B 01:FEFB: 85 4C     STA ram_save_A
C - - - - - 0x007F0D 01:FEFD: A5 FF     LDA ram_prg_bank
C - - - - - 0x007F0F 01:FEFF: 48        PHA
C - - - - - 0x007F10 01:FF00: 29 10     AND #$10
C - - - - - 0x007F12 01:FF02: 09 03     ORA #con_prg_bank + $03
C - - - - - 0x007F14 01:FF04: 85 FF     STA ram_prg_bank
C - - - - - 0x007F16 01:FF06: 8D F8 FF  STA $FFF8
; bzk optimize, useless load and nops
- - - - - - 0x007F19 01:FF09: A5 4C     LDA ram_save_A
- - - - - - 0x007F1B 01:FF0B: EA        NOP
- - - - - - 0x007F1C 01:FF0C: EA        NOP
- - - - - - 0x007F1D 01:FF0D: 4C 44 FF  JMP loc_FF44_restore_prg_bank



sub_inc_FF10:
C - - - - - 0x007F20 01:FF10: A5 FF     LDA ram_prg_bank
C - - - - - 0x007F22 01:FF12: 48        PHA
C - - - - - 0x007F23 01:FF13: 29 10     AND #$10
C - - - - - 0x007F25 01:FF15: 09 03     ORA #con_prg_bank + $03
C - - - - - 0x007F27 01:FF17: 85 FF     STA ram_prg_bank
C - - - - - 0x007F29 01:FF19: 8D F8 FF  STA $FFF8
- - - - - - 0x007F2C 01:FF1C: B1 1A     LDA (ram_001A),Y
- - - - - - 0x007F2E 01:FF1E: 4C 42 FF  JMP loc_FF42_restore_prg_bank


sub_inc_FF21:
; only used in bank 02
- - - - - - 0x007F31 01:FF21: 85 4C     STA ram_save_A
- - - - - - 0x007F33 01:FF23: A5 FF     LDA ram_prg_bank
- - - - - - 0x007F35 01:FF25: 48        PHA
- - - - - - 0x007F36 01:FF26: 29 10     AND #$10
- - - - - - 0x007F38 01:FF28: 05 4C     ORA ram_save_A
- - - - - - 0x007F3A 01:FF2A: 85 FF     STA ram_prg_bank
- - - - - - 0x007F3C 01:FF2C: 8D F8 FF  STA $FFF8
- - - - - - 0x007F3F 01:FF2F: B1 22     LDA (ram_0022),Y
- - - - - - 0x007F41 01:FF31: 4C 42 FF  JMP loc_FF42_restore_prg_bank



sub_inc_FF34_read_byte_from_room_data_2:
C - - - - - 0x007F44 01:FF34: A5 FF     LDA ram_prg_bank
C - - - - - 0x007F46 01:FF36: 48        PHA
C - - - - - 0x007F47 01:FF37: 29 10     AND #$10
C - - - - - 0x007F49 01:FF39: 09 03     ORA #con_prg_bank + $03
C - - - - - 0x007F4B 01:FF3B: 85 FF     STA ram_prg_bank
C - - - - - 0x007F4D 01:FF3D: 8D F8 FF  STA $FFF8
- - - - - - 0x007F50 01:FF40: B1 18     LDA (ram_0018),Y
loc_FF42_restore_prg_bank:
- - - - - - 0x007F52 01:FF42: 85 4C     STA ram_save_A
loc_FF44_restore_prg_bank:
- - - - - - 0x007F54 01:FF44: 68        PLA
- - - - - - 0x007F55 01:FF45: 85 FF     STA ram_prg_bank
C - - - - - 0x007F57 01:FF47: 8D F8 FF  STA $FFF8
C - - - - - 0x007F5A 01:FF4A: A5 4C     LDA ram_save_A
C - - - - - 0x007F5C 01:FF4C: 60        RTS



sub_inc_FF4D_play_music:
C - - - - - 0x007F5D 01:FF4D: A5 FF     LDA ram_prg_bank
C - - - - - 0x007F5F 01:FF4F: 48        PHA
C - - - - - 0x007F60 01:FF50: 29 10     AND #$10
C - - - - - 0x007F62 01:FF52: 09 02     ORA #con_prg_bank + $02
C - - - - - 0x007F64 01:FF54: 85 FF     STA ram_prg_bank
C - - - - - 0x007F66 01:FF56: 8D F8 FF  STA $FFF8
- - - - - - 0x007F69 01:FF59: 20 E6 C1  JSR sub_0x0141F6_play_music
loc_FF5C_restore_prg_bank:
- - - - - - 0x007F6C 01:FF5C: 68        PLA
- - - - - - 0x007F6D 01:FF5D: 85 FF     STA ram_prg_bank
C - - - - - 0x007F6F 01:FF5F: 8D F8 FF  STA $FFF8
bra_FF62_RTS:
C - - - - - 0x007F72 01:FF62: 60        RTS



sub_inc_FF63:
C - - - - - 0x007F73 01:FF63: AD 90 07  LDA ram_0790
C - - - - - 0x007F76 01:FF66: F0 FA     BEQ bra_FF62_RTS
C - - - - - 0x007F78 01:FF68: A5 FF     LDA ram_prg_bank
C - - - - - 0x007F7A 01:FF6A: 48        PHA
C - - - - - 0x007F7B 01:FF6B: 29 10     AND #$10
C - - - - - 0x007F7D 01:FF6D: 09 02     ORA #con_prg_bank + $02
C - - - - - 0x007F7F 01:FF6F: 85 FF     STA ram_prg_bank
C - - - - - 0x007F81 01:FF71: 8D F8 FF  STA $FFF8
- - - - - - 0x007F84 01:FF74: 20 46 C2  JSR sub_0x014256_disable_music_driver
- - - - - - 0x007F87 01:FF77: 4C 5C FF  JMP loc_FF5C_restore_prg_bank



tbl_inc_FF7A:   ; link from bank 00 only
; FF7A (each bank originally has a different byte here)
; bzk garbage, basically useless stuff
; it's here in order to assemble into original ROM
; con_include_bank variable is locaded at the beginning of each bank
; you can delete this shit (only after you deal with 0x00005F !)
.if     con_include_bank = $00
    .byte $01
.elseif con_include_bank = $01
    .byte $00
.elseif con_include_bank = $02
    .byte $00
.elseif con_include_bank = $03
    .byte $00
.endif



tbl_FF7B_prg_bank:
tbl_FF7B_lo:
tbl_FF7B_hi:
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



; FFF9 (each bank originally has a different byte here)
; bzk garbage, basically useless stuff
; it's here in order to assemble into original ROM
; con_include_bank variable is locaded at the beginning of each bank
; you can delete this shit
.if     con_include_bank = $00
    .byte $00
.elseif con_include_bank = $01
    .byte $01
.elseif con_include_bank = $02
    .byte $02
.elseif con_include_bank = $03
    .byte $03
.endif


