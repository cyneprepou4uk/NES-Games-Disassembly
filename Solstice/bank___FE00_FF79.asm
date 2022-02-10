; bzk code must be placed at the same address in all banks
; after dealing with FF7A and FFF9 in all banks, 2 includes can be merged
; currently they are separated in order to assemble into identical original ROM



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
C - - - - - 0x007E33 01:FE23: 4C 00 80  JMP loc_inc_0x000010



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
C - - - - - 0x007E56 01:FE46: 19 7B FF  ORA tbl_inc_FF7B_prg_bank,Y
C - - - - - 0x007E59 01:FE49: 85 FF     STA ram_prg_bank
C - - - - - 0x007E5B 01:FE4B: 8D F8 FF  STA $FFF8
- - - - - - 0x007E5E 01:FE4E: 20 5C FE  JSR sub_FE5C
- - - - - - 0x007E61 01:FE51: 85 4A     STA ram_004A
- - - - - - 0x007E63 01:FE53: 68        PLA
- - - - - - 0x007E64 01:FE54: 85 FF     STA ram_prg_bank
C - - - - - 0x007E66 01:FE56: 8D F8 FF  STA $FFF8
C - - - - - 0x007E69 01:FE59: A5 4A     LDA ram_004A
C - - - - - 0x007E6B 01:FE5B: 60        RTS



sub_FE5C:
- - - - - - 0x007E6C 01:FE5C: B9 7D FF  LDA tbl_inc_FF7B_hi + 2,Y
- - - - - - 0x007E6F 01:FE5F: 48        PHA
- - - - - - 0x007E70 01:FE60: B9 7C FF  LDA tbl_inc_FF7B_lo + 1,Y
- - - - - - 0x007E73 01:FE63: 48        PHA
- - - - - - 0x007E74 01:FE64: A5 4A     LDA ram_004A
- - - - - - 0x007E76 01:FE66: A4 4B     LDY ram_004B
- - - - - - 0x007E78 01:FE68: 60        RTS



vec_FE69_NMI:
C D 3 - - - 0x007E79 01:FE69: 48        PHA
C - - - - - 0x007E7A 01:FE6A: 8E B0 07  STX ram_07B0
C - - - - - 0x007E7D 01:FE6D: 8C B1 07  STY ram_07B1
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
C - - - - - 0x007EC7 01:FEB7: AE B0 07  LDX ram_07B0
C - - - - - 0x007ECA 01:FEBA: AC B1 07  LDY ram_07B1
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
- - - - - - 0x007EE6 01:FED6: 4C 5C FF  JMP loc_FF5C



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
loc_FF5C:
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
- - - - - - 0x007F87 01:FF77: 4C 5C FF  JMP loc_FF5C



