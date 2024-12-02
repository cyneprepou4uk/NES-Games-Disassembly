.segment "BANK_96"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x02C010-0x03000F



.export sub_0x02C011_move_object_XY_axis
.export sub_0x02DFD9
.export sub_0x02F20B
.export sub_0x02FD09



; bzk bank id, must be located at 8000 in each bank
- D 0 - - - 0x02C010 0B:8000: 96        .byte con_prg_bank + $96   ; 



sub_8001_move_object_XY_axis:
sub_0x02C011_move_object_XY_axis:
C - - - - - 0x02C011 0B:8001: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x02C014 0B:8004: 29 FE     AND #con_obj_flag_01 ^ $FF
C - - - - - 0x02C016 0B:8006: 85 00     STA ram_0000_t0CD_obj_flag
C - - - - - 0x02C018 0B:8008: A0 00     LDY #$00
C - - - - - 0x02C01A 0B:800A: BD F2 04  LDA ram_obj_spd_X_hi,X
C - - - - - 0x02C01D 0B:800D: 10 01     BPL bra_8010
C - - - - - 0x02C01F 0B:800F: 88        DEY ; FF
bra_8010:
C - - - - - 0x02C020 0B:8010: 84 01     STY ram_0001_t041
C - - - - - 0x02C022 0B:8012: 20 37 80  JSR sub_8037_move_object_X_axis
C - - - - - 0x02C025 0B:8015: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x02C028 0B:8018: 29 01     AND #con_obj_flag_01
C - - - - - 0x02C02A 0B:801A: 65 01     ADC ram_0001_t041
C - - - - - 0x02C02C 0B:801C: 29 01     AND #$01
C - - - - - 0x02C02E 0B:801E: 05 00     ORA ram_0000_t0CD_obj_flag
C - - - - - 0x02C030 0B:8020: 9D 70 04  STA ram_obj_flags,X
; move object Y axis
C - - - - - 0x02C033 0B:8023: 18        CLC
C - - - - - 0x02C034 0B:8024: BD DB 04  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x02C037 0B:8027: 7D 37 05  ADC ram_obj_spd_Y_lo,X
C - - - - - 0x02C03A 0B:802A: 9D DB 04  STA ram_obj_pos_Y_lo,X
C - - - - - 0x02C03D 0B:802D: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x02C040 0B:8030: 7D 20 05  ADC ram_obj_spd_Y_hi,X
C - - - - - 0x02C043 0B:8033: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x02C046 0B:8036: 60        RTS



sub_8037_move_object_X_axis:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x02C047 0B:8037: 18        CLC
C - - - - - 0x02C048 0B:8038: BD C4 04  LDA ram_obj_pos_X_lo,X
C - - - - - 0x02C04B 0B:803B: 7D 09 05  ADC ram_obj_spd_X_lo,X
C - - - - - 0x02C04E 0B:803E: 9D C4 04  STA ram_obj_pos_X_lo,X
C - - - - - 0x02C051 0B:8041: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x02C054 0B:8044: 7D F2 04  ADC ram_obj_spd_X_hi,X
C - - - - - 0x02C057 0B:8047: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x02C05A 0B:804A: 60        RTS



loc_804B_invert_spd_X:
sub_804B_invert_spd_X:
C D 0 - - - 0x02C05B 0B:804B: 38        SEC
C - - - - - 0x02C05C 0B:804C: A9 00     LDA #$00
C - - - - - 0x02C05E 0B:804E: FD 09 05  SBC ram_obj_spd_X_lo,X
C - - - - - 0x02C061 0B:8051: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x02C064 0B:8054: A9 00     LDA #$00
C - - - - - 0x02C066 0B:8056: FD F2 04  SBC ram_obj_spd_X_hi,X
C - - - - - 0x02C069 0B:8059: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x02C06C 0B:805C: 60        RTS



loc_805D_invert_spd_Y:
sub_805D_invert_spd_Y:
C D 0 - - - 0x02C06D 0B:805D: 38        SEC
C - - - - - 0x02C06E 0B:805E: A9 00     LDA #$00
C - - - - - 0x02C070 0B:8060: FD 37 05  SBC ram_obj_spd_Y_lo,X
C - - - - - 0x02C073 0B:8063: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x02C076 0B:8066: A9 00     LDA #$00
C - - - - - 0x02C078 0B:8068: FD 20 05  SBC ram_obj_spd_Y_hi,X
C - - - - - 0x02C07B 0B:806B: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x02C07E 0B:806E: 60        RTS



loc_806F_increase_spd_X:
sub_806F_increase_spd_X:
C D 0 - - - 0x02C07F 0B:806F: 18        CLC
C - - - - - 0x02C080 0B:8070: 7D 09 05  ADC ram_obj_spd_X_lo,X
C - - - - - 0x02C083 0B:8073: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x02C086 0B:8076: A9 00     LDA #$00
C - - - - - 0x02C088 0B:8078: 7D F2 04  ADC ram_obj_spd_X_hi,X
C - - - - - 0x02C08B 0B:807B: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x02C08E 0B:807E: 60        RTS



sub_807F_increase_spd_Y:
loc_807F_increase_spd_Y:
C D 0 - - - 0x02C08F 0B:807F: 18        CLC
C - - - - - 0x02C090 0B:8080: 7D 37 05  ADC ram_obj_spd_Y_lo,X
C - - - - - 0x02C093 0B:8083: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x02C096 0B:8086: A9 00     LDA #$00
C - - - - - 0x02C098 0B:8088: 7D 20 05  ADC ram_obj_spd_Y_hi,X
C - - - - - 0x02C09B 0B:808B: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x02C09E 0B:808E: 60        RTS



loc_808F_decrease_spd_X:
sub_808F_decrease_spd_X:
C D 0 - - - 0x02C09F 0B:808F: 49 FF     EOR #$FF
C - - - - - 0x02C0A1 0B:8091: 38        SEC
C - - - - - 0x02C0A2 0B:8092: 7D 09 05  ADC ram_obj_spd_X_lo,X
C - - - - - 0x02C0A5 0B:8095: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x02C0A8 0B:8098: A9 FF     LDA #$FF
C - - - - - 0x02C0AA 0B:809A: 7D F2 04  ADC ram_obj_spd_X_hi,X
C - - - - - 0x02C0AD 0B:809D: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x02C0B0 0B:80A0: 60        RTS



loc_80A1_decrease_spd_Y:
sub_80A1_decrease_spd_Y:
C D 0 - - - 0x02C0B1 0B:80A1: 49 FF     EOR #$FF
C - - - - - 0x02C0B3 0B:80A3: 38        SEC
C - - - - - 0x02C0B4 0B:80A4: 7D 37 05  ADC ram_obj_spd_Y_lo,X
C - - - - - 0x02C0B7 0B:80A7: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x02C0BA 0B:80AA: A9 FF     LDA #$FF
C - - - - - 0x02C0BC 0B:80AC: 7D 20 05  ADC ram_obj_spd_Y_hi,X
C - - - - - 0x02C0BF 0B:80AF: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x02C0C2 0B:80B2: 60        RTS



sub_80B3_get_object_distance_X_to_player:
C - - - - - 0x02C0C3 0B:80B3: BD 38 04  LDA ram_obj_pos_X_hi,X
sub_80B6_get_distance_X_to_player:
C - - - - - 0x02C0C6 0B:80B6: 38        SEC
C - - - - - 0x02C0C7 0B:80B7: ED 38 04  SBC ram_plr_pos_X_hi
C - - - - - 0x02C0CA 0B:80BA: B0 04     BCS bra_80C0_RTS
bra_80BC:
C - - - - - 0x02C0CC 0B:80BC: 49 FF     EOR #$FF
C - - - - - 0x02C0CE 0B:80BE: 69 01     ADC #$01
bra_80C0_RTS:
C - - - - - 0x02C0D0 0B:80C0: 60        RTS



sub_80C1_get_object_distance_Y_to_0011:
; out
    ; A = distance
C - - - - - 0x02C0D1 0B:80C1: BD 1C 04  LDA ram_obj_pos_Y_hi,X
sub_80C4_get_distance_to_0011:
; out
    ; A = distance
C - - - - - 0x02C0D4 0B:80C4: 38        SEC
C - - - - - 0x02C0D5 0B:80C5: E5 11     SBC ram_0011_t00B_distance_Y
C - - - - - 0x02C0D7 0B:80C7: B0 F7     BCS bra_80C0_RTS
C - - - - - 0x02C0D9 0B:80C9: 90 F1     BCC bra_80BC    ; jmp



sub_80CB_get_object_distance_X_to_0010:
; out
    ; A = distance
C - - - - - 0x02C0DB 0B:80CB: BD 38 04  LDA ram_obj_pos_X_hi,X
sub_80CE_get_distance_to_0011:
; out
    ; A = distance
C - - - - - 0x02C0DE 0B:80CE: 38        SEC
C - - - - - 0x02C0DF 0B:80CF: E5 10     SBC ram_0010_t013_distance_X
C - - - - - 0x02C0E1 0B:80D1: B0 ED     BCS bra_80C0_RTS
C - - - - - 0x02C0E3 0B:80D3: 90 E7     BCC bra_80BC    ; jmp



sub_80D5_get_object_distance_Y_to_player:
; out
    ; A = distance
C - - - - - 0x02C0E5 0B:80D5: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x02C0E8 0B:80D8: 38        SEC
C - - - - - 0x02C0E9 0B:80D9: ED 1C 04  SBC ram_plr_pos_Y_hi
C - - - - - 0x02C0EC 0B:80DC: B0 04     BCS bra_80E2_RTS
C - - - - - 0x02C0EE 0B:80DE: 49 FF     EOR #$FF
C - - - - - 0x02C0F0 0B:80E0: 69 01     ADC #$01
bra_80E2_RTS:
C - - - - - 0x02C0F2 0B:80E2: 60        RTS



sub_80E3_find_empty_object_slot_09_0C:
; out
    ; Z
        ; 0 = empty slot found
        ; 1 = empty slot not found
    ; X = slot index
C - - - - - 0x02C0F3 0B:80E3: A2 09     LDX #$09
bra_80E5_loop:
C - - - - - 0x02C0F5 0B:80E5: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x02C0F8 0B:80E8: F0 07     BEQ bra_80F1_RTS
C - - - - - 0x02C0FA 0B:80EA: E8        INX
C - - - - - 0x02C0FB 0B:80EB: E0 0D     CPX #$0D
C - - - - - 0x02C0FD 0B:80ED: 90 F6     BCC bra_80E5_loop
bra_80EF:
C - - - - - 0x02C0FF 0B:80EF: A9 01     LDA #$01
bra_80F1_RTS:   ; A = 00
C - - - - - 0x02C101 0B:80F1: 60        RTS


; bzk garbage
- - - - - - 0x02C102 0B:80F2: A2 07     LDX #$07
bra_80F4_loop:
- - - - - - 0x02C104 0B:80F4: BD 4E 05  LDA ram_obj_id,X
- - - - - - 0x02C107 0B:80F7: F0 F8     BEQ bra_80F1_RTS
- - - - - - 0x02C109 0B:80F9: E8        INX
- - - - - - 0x02C10A 0B:80FA: E0 13     CPX #$13
- - - - - - 0x02C10C 0B:80FC: 90 F6     BCC bra_80F4_loop
- - - - - - 0x02C10E 0B:80FE: B0 EF     BCS bra_80EF    ; jmp


; bzk garbage
- - - - - - 0x02C110 0B:8100: A2 01     LDX #$01
bra_8102_loop:
- - - - - - 0x02C112 0B:8102: BD 4E 05  LDA ram_obj_id,X
- - - - - - 0x02C115 0B:8105: F0 05     BEQ bra_810C_RTS
- - - - - - 0x02C117 0B:8107: E8        INX
- - - - - - 0x02C118 0B:8108: E0 13     CPX #$13
- - - - - - 0x02C11A 0B:810A: 90 F6     BCC bra_8102_loop
bra_810C_RTS:
- - - - - - 0x02C11C 0B:810C: 60        RTS



loc_810D:   ; bzk optimize, single JMP to here
ofs_039_810D_00:
C D 0 J - - 0x02C11D 0B:810D: A9 00     LDA #$00
C - - - - - 0x02C11F 0B:810F: 9D EF 05  STA ram_05EF_obj,X
bra_8112_RTS:
ofs_039_8112_75_RTS:
C - - - - - 0x02C122 0B:8112: 60        RTS



sub_8113:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x02C123 0B:8113: A5 32     LDA ram_blk_id_hi
C - - - - - 0x02C125 0B:8115: C9 08     CMP #$08
C - - - - - 0x02C127 0B:8117: D0 05     BNE bra_811E
C - - - - - 0x02C129 0B:8119: A5 33     LDA ram_blk_id_lo
C - - - - - 0x02C12B 0B:811B: C9 03     CMP #$03
C - - - - - 0x02C12D 0B:811D: 60        RTS
bra_811E:
C - - - - - 0x02C12E 0B:811E: 18        CLC
bra_811F_RTS:
C - - - - - 0x02C12F 0B:811F: 60        RTS



sub_8120:
loc_8120:
ofs_039_8120_A0:
; out
    ; C
        ; 0 = 
        ; 1 = 
C D 0 J - - 0x02C130 0B:8120: 20 13 81  JSR sub_8113
C - - - - - 0x02C133 0B:8123: 90 FA     BCC bra_811F_RTS
C - - - - - 0x02C135 0B:8125: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x02C138 0B:8128: C5 CA     CMP ram_00CA
C - - - - - 0x02C13A 0B:812A: 90 F3     BCC bra_811F_RTS
- - - - - - 0x02C13C 0B:812C: 20 B2 84  JSR sub_84B2
- - - - - - 0x02C13F 0B:812F: 38        SEC
- - - - - - 0x02C140 0B:8130: 60        RTS



sub_8131:
; out
    ; Z
        ; 0 = 
        ; 1 = 
    ; A = 
C - - - - - 0x02C141 0B:8131: A5 2A     LDA ram_002A_script
C - - - - - 0x02C143 0B:8133: C9 1B     CMP #con_002A_1B
C - - - - - 0x02C145 0B:8135: D0 18     BNE bra_814F
C - - - - - 0x02C147 0B:8137: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x02C14A 0B:813A: 29 02     AND #con_obj_flag_02
C - - - - - 0x02C14C 0B:813C: D0 11     BNE bra_814F
C - - - - - 0x02C14E 0B:813E: 20 E6 B6  JSR sub_B6E6
C - - - - - 0x02C151 0B:8141: 18        CLC
C - - - - - 0x02C152 0B:8142: A5 C7     LDA ram_00C7
C - - - - - 0x02C154 0B:8144: 69 04     ADC #$04
C - - - - - 0x02C156 0B:8146: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x02C159 0B:8149: 20 8A FF  JSR sub_0x03FF9A
C - - - - - 0x02C15C 0B:814C: A9 00     LDA #$00
C - - - - - 0x02C15E 0B:814E: 60        RTS
bra_814F:
C - - - - - 0x02C15F 0B:814F: BD EF 05  LDA ram_05EF_obj,X
C - - - - - 0x02C162 0B:8152: 60        RTS



ofs_039_8153_6D:
C - - J - - 0x02C163 0B:8153: A9 10     LDA #$10
C - - - - - 0x02C165 0B:8155: 20 7F 80  JSR sub_807F_increase_spd_Y
C - - - - - 0x02C168 0B:8158: A0 06     LDY #$06
C - - - - - 0x02C16A 0B:815A: 20 A6 B7  JSR sub_B7A6
C - - - - - 0x02C16D 0B:815D: F0 B3     BEQ bra_8112_RTS
C - - - - - 0x02C16F 0B:815F: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02C171 0B:8161: 20 91 8B  JSR sub_8B91
loc_8164:
C - - - - - 0x02C174 0B:8164: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02C177 0B:8167: 4C C8 FE  JMP loc_0x03FED8_clear_speed



ofs_039_816A_A1:
- - - - - - 0x02C17A 0B:816A: A9 10     LDA #$10
- - - - - - 0x02C17C 0B:816C: 20 7F 80  JSR sub_807F_increase_spd_Y
- - - - - - 0x02C17F 0B:816F: A0 0E     LDY #$0E
- - - - - - 0x02C181 0B:8171: 20 A6 B7  JSR sub_B7A6
- - - - - - 0x02C184 0B:8174: F0 24     BEQ bra_819A_RTS
- - - - - - 0x02C186 0B:8176: A6 6C     LDX ram_006C_object_index
- - - - - - 0x02C188 0B:8178: BD 1C 04  LDA ram_obj_pos_Y_hi,X
- - - - - - 0x02C18B 0B:817B: 29 F8     AND #$F8
- - - - - - 0x02C18D 0B:817D: 9D 1C 04  STA ram_obj_pos_Y_hi,X
- - - - - - 0x02C190 0B:8180: 4C 64 81  JMP loc_8164



ofs_039_8183_9E:
- - - - - - 0x02C193 0B:8183: 20 EF 81  JSR sub_81EF
- - - - - - 0x02C196 0B:8186: A9 10     LDA #$10
- - - - - - 0x02C198 0B:8188: 20 7F 80  JSR sub_807F_increase_spd_Y
- - - - - - 0x02C19B 0B:818B: BD 1C 04  LDA ram_obj_pos_Y_hi,X
- - - - - - 0x02C19E 0B:818E: C9 F8     CMP #$F8
- - - - - - 0x02C1A0 0B:8190: 90 08     BCC bra_819A_RTS
- - - - - - 0x02C1A2 0B:8192: A9 23     LDA #con_sound_water_splash
- - - - - - 0x02C1A4 0B:8194: 20 5F E2  JSR sub_0x03E26F_play_sound
- - - - - - 0x02C1A7 0B:8197: FE C1 05  INC ram_05C1_obj,X
bra_819A_RTS:
- - - - - - 0x02C1AA 0B:819A: 60        RTS



loc_819B:
ofs_039_819B_01:
C D 0 J - - 0x02C1AB 0B:819B: FE C1 05  INC ram_05C1_obj,X
sub_819E:
C - - - - - 0x02C1AE 0B:819E: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x02C1B1 0B:81A1: 29 BF     AND #con_obj_flag_40 ^ $FF
C - - - - - 0x02C1B3 0B:81A3: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x02C1B6 0B:81A6: 60        RTS



sub_81A7:
ofs_039_81A7_2A:
C - - J - - 0x02C1B7 0B:81A7: FE C1 05  INC ram_05C1_obj,X
sub_81AA:
C - - - - - 0x02C1BA 0B:81AA: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x02C1BD 0B:81AD: 09 40     ORA #con_obj_flag_40
C - - - - - 0x02C1BF 0B:81AF: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x02C1C2 0B:81B2: 60        RTS



ofs_039_81B3_2B:
C - - J - - 0x02C1C3 0B:81B3: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02C1C6 0B:81B6: 4C 4B 80  JMP loc_804B_invert_spd_X



loc_81B9:
ofs_039_81B9_03:
C D 0 - - - 0x02C1C9 0B:81B9: FE C1 05  INC ram_05C1_obj,X
sub_81BC:
C - - - - - 0x02C1CC 0B:81BC: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x02C1CF 0B:81BF: 29 F7     AND #con_obj_flag_08 ^ $FF
C - - - - - 0x02C1D1 0B:81C1: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x02C1D4 0B:81C4: 60        RTS



sub_81C5:
ofs_039_81C5_0A:
C - - - - - 0x02C1D5 0B:81C5: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02C1D8 0B:81C8: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x02C1DB 0B:81CB: 09 88     ORA #con_obj_flag_08 + con_obj_flag_not_visible
C - - - - - 0x02C1DD 0B:81CD: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x02C1E0 0B:81D0: 60        RTS



ofs_039_81D1_54:
C - - J - - 0x02C1E1 0B:81D1: FE C1 05  INC ram_05C1_obj,X
loc_81D4:
sub_81D4:
C D 0 - - - 0x02C1E4 0B:81D4: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x02C1E7 0B:81D7: 09 10     ORA #con_obj_flag_10
C - - - - - 0x02C1E9 0B:81D9: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x02C1EC 0B:81DC: 60        RTS



ofs_039_81DD_53:
C - - J - - 0x02C1ED 0B:81DD: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02C1F0 0B:81E0: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x02C1F3 0B:81E3: 29 EF     AND #con_obj_flag_10 ^ $FF
C - - - - - 0x02C1F5 0B:81E5: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x02C1F8 0B:81E8: 60        RTS



ofs_039_81E9_2D:
C - - J - - 0x02C1F9 0B:81E9: 20 9E 81  JSR sub_819E
sub_81EC:
loc_81EC:
C D 0 - - - 0x02C1FC 0B:81EC: FE C1 05  INC ram_05C1_obj,X
loc_81EF:
sub_81EF:
C D 0 - - - 0x02C1FF 0B:81EF: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x02C202 0B:81F2: 09 20     ORA #con_obj_flag_20
C - - - - - 0x02C204 0B:81F4: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x02C207 0B:81F7: 60        RTS



loc_81F8:
sub_81F8:
C D 0 - - - 0x02C208 0B:81F8: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x02C20B 0B:81FB: 29 DF     AND #con_obj_flag_20 ^ $FF
C - - - - - 0x02C20D 0B:81FD: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x02C210 0B:8200: 60        RTS



ofs_039_8201_55:
C - - J - - 0x02C211 0B:8201: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02C214 0B:8204: A0 01     LDY #$01
C - - - - - 0x02C216 0B:8206: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02C218 0B:8208: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x02C21B 0B:820B: 60        RTS



ofs_039_820C_04:
C - - J - - 0x02C21C 0B:820C: A0 01     LDY #$01
C - - - - - 0x02C21E 0B:820E: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02C220 0B:8210: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x02C223 0B:8213: 60        RTS



ofs_039_8214_62:
C - - J - - 0x02C224 0B:8214: A0 01     LDY #$01
C - - - - - 0x02C226 0B:8216: 18        CLC
C - - - - - 0x02C227 0B:8217: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02C229 0B:8219: 7D 38 04  ADC ram_obj_pos_X_hi,X
C - - - - - 0x02C22C 0B:821C: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x02C22F 0B:821F: C8        INY ; 02
C - - - - - 0x02C230 0B:8220: 18        CLC
C - - - - - 0x02C231 0B:8221: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02C233 0B:8223: 7D 1C 04  ADC ram_obj_pos_Y_hi,X
C - - - - - 0x02C236 0B:8226: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x02C239 0B:8229: FE C1 05  INC ram_05C1_obj,X
ofs_039_822C_72_RTS:
C - - - - - 0x02C23C 0B:822C: 60        RTS



ofs_039_822D_05:
C - - J - - 0x02C23D 0B:822D: FE C1 05  INC ram_05C1_obj,X
sub_8230:
C - - - - - 0x02C240 0B:8230: A9 00     LDA #$00    ; facing right
C - - - - - 0x02C242 0B:8232: BC 38 04  LDY ram_obj_pos_X_hi,X
C - - - - - 0x02C245 0B:8235: CC 38 04  CPY ram_plr_pos_X_hi
C - - - - - 0x02C248 0B:8238: 90 02     BCC bra_823C
C - - - - - 0x02C24A 0B:823A: A9 01     LDA #$01    ; facing left
bra_823C:
C - - - - - 0x02C24C 0B:823C: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x02C24F 0B:823F: 60        RTS



sub_8240:
ofs_039_8240_91:
C - - J - - 0x02C250 0B:8240: FE C1 05  INC ram_05C1_obj,X
sub_8243:
C - - - - - 0x02C253 0B:8243: 20 30 82  JSR sub_8230
C - - - - - 0x02C256 0B:8246: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x02C259 0B:8249: 29 01     AND #con_obj_flag_01
C - - - - - 0x02C25B 0B:824B: F0 08     BEQ bra_8255_RTS
C - - - - - 0x02C25D 0B:824D: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x02C260 0B:8250: 49 01     EOR #$01
C - - - - - 0x02C262 0B:8252: 9D A8 04  STA ram_obj_facing,X
bra_8255_RTS:
C - - - - - 0x02C265 0B:8255: 60        RTS



ofs_039_8256_06:
C - - J - - 0x02C266 0B:8256: FE C1 05  INC ram_05C1_obj,X
sub_8259:
C - - - - - 0x02C269 0B:8259: 38        SEC
C - - - - - 0x02C26A 0B:825A: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x02C26D 0B:825D: E9 48     SBC #$48
C - - - - - 0x02C26F 0B:825F: A8        TAY
C - - - - - 0x02C270 0B:8260: B9 6C 82  LDA tbl_826C,Y
C - - - - - 0x02C273 0B:8263: A8        TAY
C - - - - - 0x02C274 0B:8264: A9 08     LDA #con_obj_type_08
C - - - - - 0x02C276 0B:8266: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x02C279 0B:8269: 4C 75 EF  JMP loc_0x03EF85



tbl_826C:
- D 0 - - - 0x02C27C 0B:826C: 00        .byte $00   ; 48 
- - - - - - 0x02C27D 0B:826D: 01        .byte $01   ; 49 
- D 0 - - - 0x02C27E 0B:826E: 03        .byte $03   ; 4A 
- - - - - - 0x02C27F 0B:826F: 04        .byte $04   ; 4B 
- - - - - - 0x02C280 0B:8270: 02        .byte $02   ; 4C 
- D 0 - - - 0x02C281 0B:8271: 05        .byte $05   ; 4D 
- D 0 - - - 0x02C282 0B:8272: 06        .byte $06   ; 4E 
- D 0 - - - 0x02C283 0B:8273: 10        .byte $10   ; 4F 
- D 0 - - - 0x02C284 0B:8274: 07        .byte $07   ; 50 
- D 0 - - - 0x02C285 0B:8275: 08        .byte $08   ; 51 
- D 0 - - - 0x02C286 0B:8276: 09        .byte $09   ; 52 
- - - - - - 0x02C287 0B:8277: 11        .byte $11   ; 53 
- D 0 - - - 0x02C288 0B:8278: 0B        .byte $0B   ; 54 
- - - - - - 0x02C289 0B:8279: 0D        .byte $0D   ; 55 
- - - - - - 0x02C28A 0B:827A: 00        .byte $00   ; 56 
- D 0 - - - 0x02C28B 0B:827B: 06        .byte $06   ; 57 
- D 0 - - - 0x02C28C 0B:827C: 0F        .byte $0F   ; 58 
- - - - - - 0x02C28D 0B:827D: 00        .byte $00   ; 59 
- D 0 - - - 0x02C28E 0B:827E: 12        .byte $12   ; 5A 
- D 0 - - - 0x02C28F 0B:827F: 05        .byte $05   ; 5B 
- D 0 - - - 0x02C290 0B:8280: 1B        .byte $1B   ; 5C 
- - - - - - 0x02C291 0B:8281: 1C        .byte $1C   ; 5D 
- - - - - - 0x02C292 0B:8282: 00        .byte $00   ; 5E 
- - - - - - 0x02C293 0B:8283: 00        .byte $00   ; 5F 



ofs_039_8284_13:
C - - J - - 0x02C294 0B:8284: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02C297 0B:8287: A0 01     LDY #$01
C - - - - - 0x02C299 0B:8289: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02C29B 0B:828B: 85 00     STA ram_0000_t0CE
C - - - - - 0x02C29D 0B:828D: C8        INY ; 01
C - - - - - 0x02C29E 0B:828E: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02C2A0 0B:8290: A8        TAY
C - - - - - 0x02C2A1 0B:8291: A5 00     LDA ram_0000_t0CE
loc_8293:
sub_8293:
C D 0 - - - 0x02C2A3 0B:8293: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x02C2A6 0B:8296: 20 75 EF  JSR sub_0x03EF85
C - - - - - 0x02C2A9 0B:8299: 4C F8 81  JMP loc_81F8



ofs_039_829C_8B:
C - - J - - 0x02C2AC 0B:829C: A0 07     LDY #$07
C - - - - - 0x02C2AE 0B:829E: A5 48     LDA ram_chr_bank_5122
C - - - - - 0x02C2B0 0B:82A0: C9 08     CMP #con__chr_bank + $08
C - - - - - 0x02C2B2 0B:82A2: D0 02     BNE bra_82A6
C - - - - - 0x02C2B4 0B:82A4: A0 0A     LDY #$0A
bra_82A6:
C - - - - - 0x02C2B6 0B:82A6: A9 12     LDA #con_obj_type_12
sub_82A8:
bra_82A8:
C - - - - - 0x02C2B8 0B:82A8: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02C2BB 0B:82AB: 4C 93 82  JMP loc_8293



ofs_039_82AE_A5:
- - - - - - 0x02C2BE 0B:82AE: A0 07     LDY #$07
- - - - - - 0x02C2C0 0B:82B0: A9 14     LDA #con_obj_type_14
- - - - - - 0x02C2C2 0B:82B2: D0 F4     BNE bra_82A8    ; jmp



ofs_039_82B4_8C:
C - - J - - 0x02C2C4 0B:82B4: A0 00     LDY #$00
C - - - - - 0x02C2C6 0B:82B6: A5 48     LDA ram_chr_bank_5122
C - - - - - 0x02C2C8 0B:82B8: C9 08     CMP #con__chr_bank + $08
C - - - - - 0x02C2CA 0B:82BA: F0 01     BEQ bra_82BD
C - - - - - 0x02C2CC 0B:82BC: C8        INY ; 01
loc_82BD:
bra_82BD:
C D 0 - - - 0x02C2CD 0B:82BD: B9 D1 82  LDA tbl_82D1,Y
C - - - - - 0x02C2D0 0B:82C0: 85 00     STA ram_0000_t0CF
C - - - - - 0x02C2D2 0B:82C2: B9 CD 82  LDA tbl_82CD,Y
C - - - - - 0x02C2D5 0B:82C5: A4 00     LDY ram_0000_t0CF
C - - - - - 0x02C2D7 0B:82C7: 20 A8 82  JSR sub_82A8
C - - - - - 0x02C2DA 0B:82CA: 4C F0 82  JMP loc_82F0



tbl_82CD:
- D 0 - - - 0x02C2DD 0B:82CD: 08        .byte con_obj_type_08   ; 00 
- D 0 - - - 0x02C2DE 0B:82CE: 12        .byte con_obj_type_12   ; 01 
- D 0 - - - 0x02C2DF 0B:82CF: 08        .byte con_obj_type_08   ; 02 
- D 0 - - - 0x02C2E0 0B:82D0: 12        .byte con_obj_type_12   ; 03 



tbl_82D1:
- D 0 - - - 0x02C2E1 0B:82D1: 01        .byte $01   ; 00 
- D 0 - - - 0x02C2E2 0B:82D2: 0B        .byte $0B   ; 01 
- D 0 - - - 0x02C2E3 0B:82D3: 04        .byte $04   ; 02 
- D 0 - - - 0x02C2E4 0B:82D4: 0C        .byte $0C   ; 03 



ofs_039_82D5_8D:
C - - J - - 0x02C2E5 0B:82D5: 20 30 82  JSR sub_8230
C - - - - - 0x02C2E8 0B:82D8: 20 EC 81  JSR sub_81EC
C - - - - - 0x02C2EB 0B:82DB: A0 00     LDY #$00
C - - - - - 0x02C2ED 0B:82DD: A5 48     LDA ram_chr_bank_5122
C - - - - - 0x02C2EF 0B:82DF: C9 08     CMP #con__chr_bank + $08
C - - - - - 0x02C2F1 0B:82E1: F0 01     BEQ bra_82E4
C - - - - - 0x02C2F3 0B:82E3: C8        INY ; 01
bra_82E4:
C - - - - - 0x02C2F4 0B:82E4: B9 CD 82  LDA tbl_82CD,Y
C - - - - - 0x02C2F7 0B:82E7: 9D 8C 04  STA ram_obj_type,X
C - - - - - 0x02C2FA 0B:82EA: B9 05 83  LDA tbl_8305,Y
C - - - - - 0x02C2FD 0B:82ED: 9D 00 04  STA ram_obj_anim_id,X
loc_82F0:
C D 0 - - - 0x02C300 0B:82F0: A5 32     LDA ram_blk_id_hi
C - - - - - 0x02C302 0B:82F2: C9 05     CMP #$05
C - - - - - 0x02C304 0B:82F4: D0 0E     BNE bra_8304_RTS
C - - - - - 0x02C306 0B:82F6: A5 33     LDA ram_blk_id_lo
C - - - - - 0x02C308 0B:82F8: C9 03     CMP #$03
C - - - - - 0x02C30A 0B:82FA: D0 08     BNE bra_8304_RTS
C - - - - - 0x02C30C 0B:82FC: BD 54 04  LDA ram_0454_obj,X
C - - - - - 0x02C30F 0B:82FF: 09 03     ORA #$03
C - - - - - 0x02C311 0B:8301: 9D 54 04  STA ram_0454_obj,X
bra_8304_RTS:
C - - - - - 0x02C314 0B:8304: 60        RTS



tbl_8305:
- D 0 - - - 0x02C315 0B:8305: 12        .byte $12   ; 00 
- D 0 - - - 0x02C316 0B:8306: 70        .byte $70   ; 01 



ofs_039_8307_95:
C - - J - - 0x02C317 0B:8307: A0 02     LDY #$02
C - - - - - 0x02C319 0B:8309: A5 49     LDA ram_chr_bank_5123
C - - - - - 0x02C31B 0B:830B: C9 0F     CMP #con__chr_bank + $0F
C - - - - - 0x02C31D 0B:830D: F0 AE     BEQ bra_82BD
C - - - - - 0x02C31F 0B:830F: C8        INY ; 03
C - - - - - 0x02C320 0B:8310: 4C BD 82  JMP loc_82BD



ofs_039_8313_4F:
C - - J - - 0x02C323 0B:8313: A9 01     LDA #$01    ; facing left
C - - - - - 0x02C325 0B:8315: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x02C328 0B:8318: A9 00     LDA #$00
C - - - - - 0x02C32A 0B:831A: 9D 54 04  STA ram_0454_obj,X
C - - - - - 0x02C32D 0B:831D: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x02C330 0B:8320: 38        SEC
C - - - - - 0x02C331 0B:8321: E9 93     SBC #$93
C - - - - - 0x02C333 0B:8323: A8        TAY
C - - - - - 0x02C334 0B:8324: B9 33 83  LDA tbl_8333,Y
C - - - - - 0x02C337 0B:8327: 9D 8C 04  STA ram_obj_type,X
C - - - - - 0x02C33A 0B:832A: B9 53 83  LDA tbl_8353,Y
C - - - - - 0x02C33D 0B:832D: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x02C340 0B:8330: 4C EC 81  JMP loc_81EC



tbl_8333:
- D 0 - - - 0x02C343 0B:8333: 00        .byte con_obj_type_00   ; 93 
- D 0 - - - 0x02C344 0B:8334: 00        .byte con_obj_type_00   ; 94 
- D 0 - - - 0x02C345 0B:8335: 00        .byte con_obj_type_00   ; 95 
- D 0 - - - 0x02C346 0B:8336: 00        .byte con_obj_type_00   ; 96 
- D 0 - - - 0x02C347 0B:8337: 0E        .byte con_obj_type_0E   ; 97 
- D 0 - - - 0x02C348 0B:8338: 0E        .byte con_obj_type_0E   ; 98 
- D 0 - - - 0x02C349 0B:8339: 0E        .byte con_obj_type_0E   ; 99 
- D 0 - - - 0x02C34A 0B:833A: 0E        .byte con_obj_type_0E   ; 9A 
- - - - - - 0x02C34B 0B:833B: 00        .byte con_obj_type_00   ; 9B 
- - - - - - 0x02C34C 0B:833C: 00        .byte con_obj_type_00   ; 9C 
- D 0 - - - 0x02C34D 0B:833D: 00        .byte con_obj_type_00   ; 9D 
- D 0 - - - 0x02C34E 0B:833E: 00        .byte con_obj_type_00   ; 9E 
- - - - - - 0x02C34F 0B:833F: 0E        .byte con_obj_type_0E   ; 9F 
- - - - - - 0x02C350 0B:8340: 0E        .byte con_obj_type_0E   ; A0 
- D 0 - - - 0x02C351 0B:8341: 0E        .byte con_obj_type_0E   ; A1 
- D 0 - - - 0x02C352 0B:8342: 0E        .byte con_obj_type_0E   ; A2 
- D 0 - - - 0x02C353 0B:8343: 0E        .byte con_obj_type_0E   ; A3 
- D 0 - - - 0x02C354 0B:8344: 0E        .byte con_obj_type_0E   ; A4 
- D 0 - - - 0x02C355 0B:8345: 0E        .byte con_obj_type_0E   ; A5 
- D 0 - - - 0x02C356 0B:8346: 0E        .byte con_obj_type_0E   ; A6 
- D 0 - - - 0x02C357 0B:8347: 0E        .byte con_obj_type_0E   ; A7 
- - - - - - 0x02C358 0B:8348: 0E        .byte con_obj_type_0E   ; A8 
- - - - - - 0x02C359 0B:8349: 0E        .byte con_obj_type_0E   ; A9 
- D 0 - - - 0x02C35A 0B:834A: 0E        .byte con_obj_type_0E   ; AA 
- - - - - - 0x02C35B 0B:834B: 0E        .byte con_obj_type_0E   ; AB 
- D 0 - - - 0x02C35C 0B:834C: 0E        .byte con_obj_type_0E   ; AC 
- D 0 - - - 0x02C35D 0B:834D: 0E        .byte con_obj_type_0E   ; AD 
- D 0 - - - 0x02C35E 0B:834E: 0E        .byte con_obj_type_0E   ; AE 
- D 0 - - - 0x02C35F 0B:834F: 0E        .byte con_obj_type_0E   ; AF 
- D 0 - - - 0x02C360 0B:8350: 0E        .byte con_obj_type_0E   ; B0 
- - - - - - 0x02C361 0B:8351: 0E        .byte con_obj_type_0E   ; B1 
- - - - - - 0x02C362 0B:8352: 0E        .byte con_obj_type_0E   ; B2 



tbl_8353:
- D 0 - - - 0x02C363 0B:8353: 46        .byte $46   ; 93 
- D 0 - - - 0x02C364 0B:8354: 42        .byte $42   ; 94 
- D 0 - - - 0x02C365 0B:8355: 4E        .byte $4E   ; 95 
- D 0 - - - 0x02C366 0B:8356: 50        .byte $50   ; 96 
- D 0 - - - 0x02C367 0B:8357: 68        .byte $68   ; 97 
- D 0 - - - 0x02C368 0B:8358: 54        .byte $54   ; 98 
- D 0 - - - 0x02C369 0B:8359: 56        .byte $56   ; 99 
- D 0 - - - 0x02C36A 0B:835A: 52        .byte $52   ; 9A 
- - - - - - 0x02C36B 0B:835B: 4E        .byte $4E   ; 9B 
- - - - - - 0x02C36C 0B:835C: 46        .byte $46   ; 9C 
- D 0 - - - 0x02C36D 0B:835D: 54        .byte $54   ; 9D 
- D 0 - - - 0x02C36E 0B:835E: 54        .byte $54   ; 9E 
- - - - - - 0x02C36F 0B:835F: 6A        .byte $6A   ; 9F 
- - - - - - 0x02C370 0B:8360: 1C        .byte $1C   ; A0 
- D 0 - - - 0x02C371 0B:8361: 1E        .byte $1E   ; A1 
- D 0 - - - 0x02C372 0B:8362: 20        .byte $20   ; A2 
- D 0 - - - 0x02C373 0B:8363: 24        .byte $24   ; A3 
- D 0 - - - 0x02C374 0B:8364: 24        .byte $24   ; A4 
- D 0 - - - 0x02C375 0B:8365: 24        .byte $24   ; A5 
- D 0 - - - 0x02C376 0B:8366: 24        .byte $24   ; A6 
- D 0 - - - 0x02C377 0B:8367: 24        .byte $24   ; A7 
- - - - - - 0x02C378 0B:8368: 24        .byte $24   ; A8 
- - - - - - 0x02C379 0B:8369: 24        .byte $24   ; A9 
- D 0 - - - 0x02C37A 0B:836A: 24        .byte $24   ; AA 
- - - - - - 0x02C37B 0B:836B: 24        .byte $24   ; AB 
- D 0 - - - 0x02C37C 0B:836C: 22        .byte $22   ; AC 
- D 0 - - - 0x02C37D 0B:836D: 10        .byte $10   ; AD 
- D 0 - - - 0x02C37E 0B:836E: 0E        .byte $0E   ; AE 
- D 0 - - - 0x02C37F 0B:836F: 58        .byte $58   ; AF 
- D 0 - - - 0x02C380 0B:8370: 5A        .byte $5A   ; B0 
- - - - - - 0x02C381 0B:8371: 6A        .byte $6A   ; B1 
- - - - - - 0x02C382 0B:8372: 10        .byte $10   ; B2 



ofs_039_8373_87:
C - - J - - 0x02C383 0B:8373: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02C386 0B:8376: A9 0E     LDA #con_obj_type_0E
C - - - - - 0x02C388 0B:8378: 9D 8C 04  STA ram_obj_type,X
C - - - - - 0x02C38B 0B:837B: 38        SEC
C - - - - - 0x02C38C 0B:837C: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x02C38F 0B:837F: E9 A3     SBC #$A3
C - - - - - 0x02C391 0B:8381: A8        TAY
C - - - - - 0x02C392 0B:8382: B9 89 83  LDA tbl_8389,Y
C - - - - - 0x02C395 0B:8385: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x02C398 0B:8388: 60        RTS



tbl_8389:
- D 0 - - - 0x02C399 0B:8389: 26        .byte $26   ; A3 
- D 0 - - - 0x02C39A 0B:838A: 28        .byte $28   ; A4 
- D 0 - - - 0x02C39B 0B:838B: 2A        .byte $2A   ; A5 
- D 0 - - - 0x02C39C 0B:838C: 2C        .byte $2C   ; A6 
- D 0 - - - 0x02C39D 0B:838D: 2E        .byte $2E   ; A7 
- - - - - - 0x02C39E 0B:838E: 30        .byte $30   ; A8 
- - - - - - 0x02C39F 0B:838F: 32        .byte $32   ; A9 
- D 0 - - - 0x02C3A0 0B:8390: 34        .byte $34   ; AA 
- - - - - - 0x02C3A1 0B:8391: 70        .byte $70   ; AB 



ofs_039_8392_88:
C - - J - - 0x02C3A2 0B:8392: A0 00     LDY #$00
C - - - - - 0x02C3A4 0B:8394: A5 48     LDA ram_chr_bank_5122
C - - - - - 0x02C3A6 0B:8396: C9 14     CMP #con__chr_bank + $14
C - - - - - 0x02C3A8 0B:8398: D0 02     BNE bra_839C
C - - - - - 0x02C3AA 0B:839A: A0 0E     LDY #$0E
bra_839C:
C - - - - - 0x02C3AC 0B:839C: 84 00     STY ram_0000_t0D0
C - - - - - 0x02C3AE 0B:839E: A9 12     LDA #con_obj_type_12
C - - - - - 0x02C3B0 0B:83A0: 9D 8C 04  STA ram_obj_type,X
C - - - - - 0x02C3B3 0B:83A3: A0 01     LDY #$01
C - - - - - 0x02C3B5 0B:83A5: 18        CLC
C - - - - - 0x02C3B6 0B:83A6: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02C3B8 0B:83A8: 65 00     ADC ram_0000_t0D0
C - - - - - 0x02C3BA 0B:83AA: 4C B7 83  JMP loc_83B7



sub_83AD:
ofs_039_83AD_0B:
C - - J - - 0x02C3BD 0B:83AD: A0 01     LDY #$01
C - - - - - 0x02C3BF 0B:83AF: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02C3C1 0B:83B1: 9D 8C 04  STA ram_obj_type,X
C - - - - - 0x02C3C4 0B:83B4: C8        INY ; 02
C - - - - - 0x02C3C5 0B:83B5: B1 02     LDA (ram_0002_t007_data),Y
loc_83B7:
C D 0 - - - 0x02C3C7 0B:83B7: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x02C3CA 0B:83BA: 4C EC 81  JMP loc_81EC



ofs_039_83BD_07:
C - - J - - 0x02C3CD 0B:83BD: 20 F8 81  JSR sub_81F8
C - - - - - 0x02C3D0 0B:83C0: 20 59 82  JSR sub_8259
loc_83C3:
ofs_039_83C3_1E:
C D 0 J - - 0x02C3D3 0B:83C3: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02C3D6 0B:83C6: 20 AA 81  JSR sub_81AA
C - - - - - 0x02C3D9 0B:83C9: 20 30 82  JSR sub_8230
C - - - - - 0x02C3DC 0B:83CC: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x02C3DF 0B:83CF: A0 01     LDY #$01
C - - - - - 0x02C3E1 0B:83D1: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02C3E3 0B:83D3: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x02C3E6 0B:83D6: C8        INY ; 02
C - - - - - 0x02C3E7 0B:83D7: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02C3E9 0B:83D9: 9D 09 05  STA ram_obj_spd_X_lo,X
loc_83DC_invert_spd_X_if_needed:
C D 0 - - - 0x02C3EC 0B:83DC: BC A8 04  LDY ram_obj_facing,X
C - - - - - 0x02C3EF 0B:83DF: F0 03     BEQ bra_83E4_RTS    ; if facing right
; if facing left
C - - - - - 0x02C3F1 0B:83E1: 4C 4B 80  JMP loc_804B_invert_spd_X
bra_83E4_RTS:
C - - - - - 0x02C3F4 0B:83E4: 60        RTS



ofs_039_83E5_A6:
C - - J - - 0x02C3F5 0B:83E5: 20 F8 81  JSR sub_81F8
C - - - - - 0x02C3F8 0B:83E8: A0 08     LDY #$08
C - - - - - 0x02C3FA 0B:83EA: A9 14     LDA #con_obj_type_14
C - - - - - 0x02C3FC 0B:83EC: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x02C3FF 0B:83EF: 20 75 EF  JSR sub_0x03EF85
C - - - - - 0x02C402 0B:83F2: 4C C3 83  JMP loc_83C3



ofs_039_83F5_08:
C - - J - - 0x02C405 0B:83F5: A0 01     LDY #$01
C - - - - - 0x02C407 0B:83F7: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02C409 0B:83F9: 20 6D E8  JSR sub_0x03E87D_jump_to_pointers_after_JSR_A
- D 0 - I - 0x02C40C 0B:83FC: 04 84     .word ofs_012_8404_00
- D 0 - I - 0x02C40E 0B:83FE: 53 84     .word ofs_012_8453_01
- - - - - - 0x02C410 0B:8400: 10 84     .word ofs_012_8410_02
- D 0 - I - 0x02C412 0B:8402: 28 84     .word ofs_012_8428_03



ofs_012_8404_00:
C - - J - - 0x02C414 0B:8404: 20 1C 84  JSR sub_841C_get_random_value_00_03
C - - - - - 0x02C417 0B:8407: B9 0C 84  LDA tbl_840C,Y
C - - - - - 0x02C41A 0B:840A: D0 39     BNE bra_8445    ; jmp



tbl_840C:
- D 0 - - - 0x02C41C 0B:840C: F8        .byte $F8   ; 00 
- D 0 - - - 0x02C41D 0B:840D: B0        .byte $B0   ; 01 
- D 0 - - - 0x02C41E 0B:840E: A0        .byte $A0   ; 02 
- D 0 - - - 0x02C41F 0B:840F: C8        .byte $C8   ; 03 



ofs_012_8410_02:
- - - - - - 0x02C420 0B:8410: 20 1C 84  JSR sub_841C_get_random_value_00_03
- - - - - - 0x02C423 0B:8413: B9 18 84  LDA tbl_8418,Y
- - - - - - 0x02C426 0B:8416: D0 2D     BNE bra_8445    ; jmp



tbl_8418:
- - - - - - 0x02C428 0B:8418: 48        .byte $48   ; 00 
- - - - - - 0x02C429 0B:8419: 60        .byte $60   ; 01 
- - - - - - 0x02C42A 0B:841A: 50        .byte $50   ; 02 
- - - - - - 0x02C42B 0B:841B: 38        .byte $38   ; 03 



sub_841C_get_random_value_00_03:
C - - - - - 0x02C42C 0B:841C: 8A        TXA
C - - - - - 0x02C42D 0B:841D: 6D 38 04  ADC ram_plr_pos_X_hi
C - - - - - 0x02C430 0B:8420: 25 1F     AND ram_random
C - - - - - 0x02C432 0B:8422: 65 1A     ADC ram_frm_cnt
C - - - - - 0x02C434 0B:8424: 29 03     AND #$03
C - - - - - 0x02C436 0B:8426: A8        TAY
C - - - - - 0x02C437 0B:8427: 60        RTS



ofs_012_8428_03:
C - - J - - 0x02C438 0B:8428: 20 1C 84  JSR sub_841C_get_random_value_00_03
C - - - - - 0x02C43B 0B:842B: AC F6 07  LDY ram_quest
C - - - - - 0x02C43E 0B:842E: F0 03     BEQ bra_8433_1st_quest
C - - - - - 0x02C440 0B:8430: 18        CLC
C - - - - - 0x02C441 0B:8431: 69 04     ADC #$04
bra_8433_1st_quest:
C - - - - - 0x02C443 0B:8433: A8        TAY
C - - - - - 0x02C444 0B:8434: B9 39 84  LDA tbl_8439,Y
C - - - - - 0x02C447 0B:8437: D0 0C     BNE bra_8445



tbl_8439:
; 00 1st quest
- D 0 - - - 0x02C449 0B:8439: A0        .byte $A0   ; 00 
- D 0 - - - 0x02C44A 0B:843A: 60        .byte $60   ; 01 
- D 0 - - - 0x02C44B 0B:843B: 70        .byte $70   ; 02 
- D 0 - - - 0x02C44C 0B:843C: 80        .byte $80   ; 03 
; 01 2nd quest
- D 0 - - - 0x02C44D 0B:843D: 30        .byte $30   ; 00 
- D 0 - - - 0x02C44E 0B:843E: 48        .byte $48   ; 01 
- D 0 - - - 0x02C44F 0B:843F: 38        .byte $38   ; 02 
- D 0 - - - 0x02C450 0B:8440: 40        .byte $40   ; 03 



ofs_039_8441_1F:
C - - J - - 0x02C451 0B:8441: A0 01     LDY #$01
C - - - - - 0x02C453 0B:8443: B1 02     LDA (ram_0002_t007_data),Y
bra_8445:
C - - - - - 0x02C455 0B:8445: 9D 06 06  STA ram_obj_config,X
bra_8448:
C - - - - - 0x02C458 0B:8448: FE C1 05  INC ram_05C1_obj,X
bra_844B_RTS:
C - - - - - 0x02C45B 0B:844B: 60        RTS



loc_844C:
ofs_039_844C_20:
C - - J - - 0x02C45C 0B:844C: DE 06 06  DEC ram_obj_config,X
C - - - - - 0x02C45F 0B:844F: D0 FA     BNE bra_844B_RTS
C - - - - - 0x02C461 0B:8451: F0 F5     BEQ bra_8448    ; jmp



ofs_012_8453_01:
C - - J - - 0x02C463 0B:8453: AC F6 07  LDY ram_quest
C - - - - - 0x02C466 0B:8456: 8A        TXA
C - - - - - 0x02C467 0B:8457: 65 1F     ADC ram_random
C - - - - - 0x02C469 0B:8459: 29 07     AND #$07
C - - - - - 0x02C46B 0B:845B: 18        CLC
C - - - - - 0x02C46C 0B:845C: 79 75 84  ADC tbl_8475_offset,Y
C - - - - - 0x02C46F 0B:845F: A8        TAY
C - - - - - 0x02C470 0B:8460: B9 65 84  LDA tbl_8465,Y
C - - - - - 0x02C473 0B:8463: D0 E0     BNE bra_8445    ; jmp



tbl_8465:
; index at 0x02C485
; 00 1st quest
- D 0 - - - 0x02C475 0B:8465: 68        .byte $68   ; 00 
- D 0 - - - 0x02C476 0B:8466: 84        .byte $84   ; 01 
- D 0 - - - 0x02C477 0B:8467: 62        .byte $62   ; 02 
- D 0 - - - 0x02C478 0B:8468: 73        .byte $73   ; 03 
- D 0 - - - 0x02C479 0B:8469: 94        .byte $94   ; 04 
- D 0 - - - 0x02C47A 0B:846A: 79        .byte $79   ; 05 
- D 0 - - - 0x02C47B 0B:846B: 81        .byte $81   ; 06 
- D 0 - - - 0x02C47C 0B:846C: A7        .byte $A7   ; 07 
; 08 2nd quest
- D 0 - - - 0x02C47D 0B:846D: 58        .byte $58   ; 00 
- D 0 - - - 0x02C47E 0B:846E: 74        .byte $74   ; 01 
- D 0 - - - 0x02C47F 0B:846F: 42        .byte $42   ; 02 
- D 0 - - - 0x02C480 0B:8470: 63        .byte $63   ; 03 
- D 0 - - - 0x02C481 0B:8471: 24        .byte $24   ; 04 
- D 0 - - - 0x02C482 0B:8472: 49        .byte $49   ; 05 
- D 0 - - - 0x02C483 0B:8473: 31        .byte $31   ; 06 
- D 0 - - - 0x02C484 0B:8474: 47        .byte $47   ; 07 



tbl_8475_offset:
; index for 0x02C475
- D 0 - - - 0x02C485 0B:8475: 00        .byte $00   ; 00 1st quest
- D 0 - - - 0x02C486 0B:8476: 08        .byte $08   ; 01 2nd quest



ofs_039_8477_9F:
C - - J - - 0x02C487 0B:8477: 20 D5 80  JSR sub_80D5_get_object_distance_Y_to_player
C - - - - - 0x02C48A 0B:847A: C9 30     CMP #$30
C - - - - - 0x02C48C 0B:847C: B0 03     BCS bra_8481_RTS
; if close enough
C - - - - - 0x02C48E 0B:847E: FE C1 05  INC ram_05C1_obj,X
bra_8481_RTS:
C - - - - - 0x02C491 0B:8481: 60        RTS



ofs_039_8482_0C_compare_X_distance:
C - - J - - 0x02C492 0B:8482: A0 01     LDY #$01
C - - - - - 0x02C494 0B:8484: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02C496 0B:8486: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x02C499 0B:8489: 20 B3 80  JSR sub_80B3_get_object_distance_X_to_player
C - - - - - 0x02C49C 0B:848C: DD 06 06  CMP ram_obj_config,X
C - - - - - 0x02C49F 0B:848F: B0 03     BCS bra_8494_RTS
bra_8491:
C - - - - - 0x02C4A1 0B:8491: FE C1 05  INC ram_05C1_obj,X
bra_8494_RTS:
C - - - - - 0x02C4A4 0B:8494: 60        RTS



ofs_039_8495_4D_compare_XY_distance:
C - - J - - 0x02C4A5 0B:8495: A0 01     LDY #$01
C - - - - - 0x02C4A7 0B:8497: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02C4A9 0B:8499: 85 09     STA ram_0009_t007_compare_distance_X
C - - - - - 0x02C4AB 0B:849B: C8        INY ; 02
C - - - - - 0x02C4AC 0B:849C: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02C4AE 0B:849E: 85 08     STA ram_0008_t043_compare_distance_Y
C - - - - - 0x02C4B0 0B:84A0: 20 B3 80  JSR sub_80B3_get_object_distance_X_to_player
C - - - - - 0x02C4B3 0B:84A3: C5 09     CMP ram_0009_t007_compare_distance_X
C - - - - - 0x02C4B5 0B:84A5: B0 ED     BCS bra_8494_RTS
C - - - - - 0x02C4B7 0B:84A7: 20 D5 80  JSR sub_80D5_get_object_distance_Y_to_player
C - - - - - 0x02C4BA 0B:84AA: C5 08     CMP ram_0008_t043_compare_distance_Y
C - - - - - 0x02C4BC 0B:84AC: B0 E6     BCS bra_8494_RTS
C - - - - - 0x02C4BE 0B:84AE: 90 E1     BCC bra_8491    ; jmp



bra_84B0:
C - - - - - 0x02C4C0 0B:84B0: A6 6C     LDX ram_006C_object_index
loc_84B2:
sub_84B2:
ofs_039_84B2_27:
C D 0 J - - 0x02C4C2 0B:84B2: 20 36 8E  JSR sub_8E36
C - - - - - 0x02C4C5 0B:84B5: 4C 0D 81  JMP loc_810D



loc_84B8:
ofs_039_84B8_2E:
C D 0 - - - 0x02C4C8 0B:84B8: A0 04     LDY #$04    ; pos_Y_hi
C - - - - - 0x02C4CA 0B:84BA: A9 00     LDA #$00    ; pos_X_hi
C - - - - - 0x02C4CC 0B:84BC: 20 1E FC  JSR sub_0x03FC2E
; bzk optimize, BNE without BEQ
C - - - - - 0x02C4CF 0B:84BF: F0 02     BEQ bra_84C3
C - - - - - 0x02C4D1 0B:84C1: D0 ED     BNE bra_84B0    ; jmp
bra_84C3:
C - - - - - 0x02C4D3 0B:84C3: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02C4D5 0B:84C5: 4C 20 8E  JMP loc_8E20



ofs_039_84C8_21:
C - - J - - 0x02C4D8 0B:84C8: 20 40 82  JSR sub_8240
C - - - - - 0x02C4DB 0B:84CB: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x02C4DE 0B:84CE: C9 05     CMP #$05
C - - - - - 0x02C4E0 0B:84D0: 90 08     BCC bra_84DA
C - - - - - 0x02C4E2 0B:84D2: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x02C4E5 0B:84D5: 49 01     EOR #$01
C - - - - - 0x02C4E7 0B:84D7: 9D A8 04  STA ram_obj_facing,X
bra_84DA:
C - - - - - 0x02C4EA 0B:84DA: 20 AA 81  JSR sub_81AA
C - - - - - 0x02C4ED 0B:84DD: 20 B3 80  JSR sub_80B3_get_object_distance_X_to_player
C - - - - - 0x02C4F0 0B:84E0: C9 50     CMP #$50
C - - - - - 0x02C4F2 0B:84E2: B0 21     BCS bra_8505
C - - - - - 0x02C4F4 0B:84E4: AD A8 04  LDA ram_plr_facing
C - - - - - 0x02C4F7 0B:84E7: DD A8 04  CMP ram_obj_facing,X
C - - - - - 0x02C4FA 0B:84EA: F0 19     BEQ bra_8505
C - - - - - 0x02C4FC 0B:84EC: FE 1D 06  INC ram_061D_obj,X
C - - - - - 0x02C4FF 0B:84EF: A9 1C     LDA #$1C
C - - - - - 0x02C501 0B:84F1: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x02C504 0B:84F4: A9 FC     LDA #> $FCC0
C - - - - - 0x02C506 0B:84F6: A0 C0     LDY #< $FCC0
C - - - - - 0x02C508 0B:84F8: 20 18 85  JSR sub_8518_set_spd_Y
C - - - - - 0x02C50B 0B:84FB: A9 01     LDA #> $0100
C - - - - - 0x02C50D 0B:84FD: A0 00     LDY #< $0100
loc_84FF_set_spd_X:
sub_84FF_set_spd_X:
C D 0 - - - 0x02C50F 0B:84FF: 20 20 85  JSR sub_8520_set_spd_X
C - - - - - 0x02C512 0B:8502: 4C DC 83  JMP loc_83DC_invert_spd_X_if_needed
bra_8505:
C - - - - - 0x02C515 0B:8505: A9 24     LDA #$24
C - - - - - 0x02C517 0B:8507: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x02C51A 0B:850A: A9 FF     LDA #> $FF00
C - - - - - 0x02C51C 0B:850C: A0 00     LDY #< $FF00
C - - - - - 0x02C51E 0B:850E: 20 18 85  JSR sub_8518_set_spd_Y
C - - - - - 0x02C521 0B:8511: A9 02     LDA #> $0200
C - - - - - 0x02C523 0B:8513: A0 00     LDY #< $0200
C - - - - - 0x02C525 0B:8515: 4C FF 84  JMP loc_84FF_set_spd_X



sub_8518_set_spd_Y:
; in
    ; A = spd_Y_hi
    ; Y = spd_Y_lo
C - - - - - 0x02C528 0B:8518: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x02C52B 0B:851B: 98        TYA
C - - - - - 0x02C52C 0B:851C: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x02C52F 0B:851F: 60        RTS



sub_8520_set_spd_X:
; in
    ; A = spd_X_hi
    ; Y = spd_X_lo
; bzk optimize, single JSR to here
C - - - - - 0x02C530 0B:8520: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x02C533 0B:8523: 98        TYA
C - - - - - 0x02C534 0B:8524: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x02C537 0B:8527: 60        RTS



ofs_039_8528_0F:
C - - J - - 0x02C538 0B:8528: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02C53B 0B:852B: 20 30 82  JSR sub_8230
C - - - - - 0x02C53E 0B:852E: 20 AA 81  JSR sub_81AA
C - - - - - 0x02C541 0B:8531: 20 B3 80  JSR sub_80B3_get_object_distance_X_to_player
C - - - - - 0x02C544 0B:8534: C9 40     CMP #$40
C - - - - - 0x02C546 0B:8536: B0 CD     BCS bra_8505
C - - - - - 0x02C548 0B:8538: AD A8 04  LDA ram_plr_facing
C - - - - - 0x02C54B 0B:853B: DD A8 04  CMP ram_obj_facing,X
C - - - - - 0x02C54E 0B:853E: F0 C5     BEQ bra_8505
C - - - - - 0x02C550 0B:8540: FE 33 06  INC ram_obj_0634,X
C - - - - - 0x02C553 0B:8543: A9 12     LDA #$12
C - - - - - 0x02C555 0B:8545: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x02C558 0B:8548: A9 FE     LDA #> $FE00
C - - - - - 0x02C55A 0B:854A: A0 00     LDY #< $FE00
C - - - - - 0x02C55C 0B:854C: 20 18 85  JSR sub_8518_set_spd_Y
C - - - - - 0x02C55F 0B:854F: A9 01     LDA #> $0120
C - - - - - 0x02C561 0B:8551: A0 20     LDY #< $0120
C - - - - - 0x02C563 0B:8553: 4C FF 84  JMP loc_84FF_set_spd_X



ofs_039_8556_44:
C - - J - - 0x02C566 0B:8556: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x02C569 0B:8559: C9 F8     CMP #$F8
C - - - - - 0x02C56B 0B:855B: 90 0F     BCC bra_856C
- - - - - - 0x02C56D 0B:855D: A9 00     LDA #$00
- - - - - - 0x02C56F 0B:855F: 9D 00 04  STA ram_obj_anim_id,X
- - - - - - 0x02C572 0B:8562: A0 01     LDY #$01
- - - - - - 0x02C574 0B:8564: B1 02     LDA (ram_0002_t007_data),Y
- - - - - - 0x02C576 0B:8566: 9D C1 05  STA ram_05C1_obj,X
- - - - - - 0x02C579 0B:8569: 4C C8 FE  JMP loc_0x03FED8_clear_speed
bra_856C:
ofs_039_856C_10:
C - - J - - 0x02C57C 0B:856C: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x02C57F 0B:856F: 20 7F 80  JSR sub_807F_increase_spd_Y
C - - - - - 0x02C582 0B:8572: A0 04     LDY #$04
C - - - - - 0x02C584 0B:8574: 20 A6 B7  JSR sub_B7A6
C - - - - - 0x02C587 0B:8577: D0 39     BNE bra_85B2
C - - - - - 0x02C589 0B:8579: A0 02     LDY #$02
C - - - - - 0x02C58B 0B:857B: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02C58D 0B:857D: 20 A6 B7  JSR sub_B7A6
C - - - - - 0x02C590 0B:8580: D0 2B     BNE bra_85AD
C - - - - - 0x02C592 0B:8582: BD 20 05  LDA ram_obj_spd_Y_hi,X
C - - - - - 0x02C595 0B:8585: 30 25     BMI bra_85AC_RTS
C - - - - - 0x02C597 0B:8587: A0 03     LDY #$03
C - - - - - 0x02C599 0B:8589: 20 A6 B7  JSR sub_B7A6
C - - - - - 0x02C59C 0B:858C: F0 1E     BEQ bra_85AC_RTS
C - - - - - 0x02C59E 0B:858E: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x02C5A1 0B:8591: C9 53     CMP #$53
C - - - - - 0x02C5A3 0B:8593: D0 05     BNE bra_859A
C - - - - - 0x02C5A5 0B:8595: A9 0D     LDA #con_sound_0D
C - - - - - 0x02C5A7 0B:8597: 20 5F E2  JSR sub_0x03E26F_play_sound
bra_859A:
C - - - - - 0x02C5AA 0B:859A: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02C5AC 0B:859C: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x02C5AF 0B:859F: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02C5B2 0B:85A2: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x02C5B5 0B:85A5: 29 F0     AND #$F0
C - - - - - 0x02C5B7 0B:85A7: 09 08     ORA #$08
C - - - - - 0x02C5B9 0B:85A9: 9D 1C 04  STA ram_obj_pos_Y_hi,X
bra_85AC_RTS:
C - - - - - 0x02C5BC 0B:85AC: 60        RTS
bra_85AD:
C - - - - - 0x02C5BD 0B:85AD: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02C5BF 0B:85AF: 4C 5E 89  JMP loc_895E
bra_85B2:
C - - - - - 0x02C5C2 0B:85B2: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02C5C4 0B:85B4: BD 20 05  LDA ram_obj_spd_Y_hi,X
C - - - - - 0x02C5C7 0B:85B7: 10 F3     BPL bra_85AC_RTS
C - - - - - 0x02C5C9 0B:85B9: 4C 5D 80  JMP loc_805D_invert_spd_Y



ofs_039_85BC_8A:
C - - J - - 0x02C5CC 0B:85BC: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x02C5CF 0B:85BF: 20 7F 80  JSR sub_807F_increase_spd_Y
C - - - - - 0x02C5D2 0B:85C2: BD 20 05  LDA ram_obj_spd_Y_hi,X
C - - - - - 0x02C5D5 0B:85C5: 30 20     BMI bra_85E7_RTS
C - - - - - 0x02C5D7 0B:85C7: A9 16     LDA #$16
C - - - - - 0x02C5D9 0B:85C9: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x02C5DC 0B:85CC: A0 08     LDY #$08
C - - - - - 0x02C5DE 0B:85CE: 20 A6 B7  JSR sub_B7A6
C - - - - - 0x02C5E1 0B:85D1: F0 14     BEQ bra_85E7_RTS
C - - - - - 0x02C5E3 0B:85D3: C9 01     CMP #$01
C - - - - - 0x02C5E5 0B:85D5: F0 0D     BEQ bra_85E4
C - - - - - 0x02C5E7 0B:85D7: A9 02     LDA #$02
C - - - - - 0x02C5E9 0B:85D9: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x02C5EC 0B:85DC: A9 14     LDA #$14
C - - - - - 0x02C5EE 0B:85DE: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x02C5F1 0B:85E1: 4C FE 85  JMP loc_85FE
bra_85E4:
C - - - - - 0x02C5F4 0B:85E4: FE C1 05  INC ram_05C1_obj,X
bra_85E7_RTS:
C - - - - - 0x02C5F7 0B:85E7: 60        RTS



ofs_039_85E8_5C:
C - - J - - 0x02C5F8 0B:85E8: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x02C5FB 0B:85EB: 20 7F 80  JSR sub_807F_increase_spd_Y
C - - - - - 0x02C5FE 0B:85EE: BD 20 05  LDA ram_obj_spd_Y_hi,X
C - - - - - 0x02C601 0B:85F1: 30 B9     BMI bra_85AC_RTS
C - - - - - 0x02C603 0B:85F3: A0 08     LDY #$08
C - - - - - 0x02C605 0B:85F5: 20 A6 B7  JSR sub_B7A6
C - - - - - 0x02C608 0B:85F8: F0 B2     BEQ bra_85AC_RTS
C - - - - - 0x02C60A 0B:85FA: C9 01     CMP #$01
C - - - - - 0x02C60C 0B:85FC: F0 1C     BEQ bra_861A
loc_85FE:
C D 0 - - - 0x02C60E 0B:85FE: 18        CLC
C - - - - - 0x02C60F 0B:85FF: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x02C612 0B:8602: 29 F0     AND #$F0
C - - - - - 0x02C614 0B:8604: 69 08     ADC #$08
C - - - - - 0x02C616 0B:8606: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x02C619 0B:8609: FE C1 05  INC ram_05C1_obj,X
loc_860C:
C D 0 - - - 0x02C61C 0B:860C: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02C61F 0B:860F: A9 14     LDA #$14
C - - - - - 0x02C621 0B:8611: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x02C624 0B:8614: 20 9E 81  JSR sub_819E
C - - - - - 0x02C627 0B:8617: 4C C8 FE  JMP loc_0x03FED8_clear_speed
bra_861A:
C - - - - - 0x02C62A 0B:861A: 18        CLC
C - - - - - 0x02C62B 0B:861B: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x02C62E 0B:861E: 29 F0     AND #$F0
C - - - - - 0x02C630 0B:8620: 69 10     ADC #$10
C - - - - - 0x02C632 0B:8622: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x02C635 0B:8625: 4C 0C 86  JMP loc_860C
- - - - - - 0x02C638 0B:8628: A6 6C     LDX ram_006C_object_index
- - - - - - 0x02C63A 0B:862A: BD 20 05  LDA ram_obj_spd_Y_hi,X
- - - - - - 0x02C63D 0B:862D: 30 0E     BMI bra_863D_RTS
- - - - - - 0x02C63F 0B:862F: C9 02     CMP #$02
- - - - - - 0x02C641 0B:8631: 90 0A     BCC bra_863D_RTS
- - - - - - 0x02C643 0B:8633: A9 02     LDA #> $0200
- - - - - - 0x02C645 0B:8635: 9D 20 05  STA ram_obj_spd_Y_hi,X
- - - - - - 0x02C648 0B:8638: A9 00     LDA #< $0200
- - - - - - 0x02C64A 0B:863A: 9D 37 05  STA ram_obj_spd_Y_lo,X
bra_863D_RTS:
C - - - - - 0x02C64D 0B:863D: 60        RTS



ofs_039_863E_A8:
C - - J - - 0x02C64E 0B:863E: A0 01     LDY #$01
C - - - - - 0x02C650 0B:8640: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02C652 0B:8642: DD 1C 04  CMP ram_obj_pos_Y_hi,X
C - - - - - 0x02C655 0B:8645: B0 F6     BCS bra_863D_RTS
C - - - - - 0x02C657 0B:8647: 4C B2 84  JMP loc_84B2



ofs_039_864A_73:
C - - J - - 0x02C65A 0B:864A: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02C65D 0B:864D: A9 00     LDA #$00
C - - - - - 0x02C65F 0B:864F: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x02C662 0B:8652: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x02C665 0B:8655: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x02C668 0B:8658: 4C AC 86  JMP loc_86AC



ofs_039_865B_58:
C - - J - - 0x02C66B 0B:865B: A0 03     LDY #$03
C - - - - - 0x02C66D 0B:865D: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02C66F 0B:865F: 9D 1D 06  STA ram_061D_obj,X
sub_8662:
ofs_039_8662_11:
C - - J - - 0x02C672 0B:8662: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02C675 0B:8665: A0 01     LDY #$01
C - - - - - 0x02C677 0B:8667: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02C679 0B:8669: A8        TAY
C - - - - - 0x02C67A 0B:866A: B9 82 86  LDA tbl_8682_spd_Y_hi,Y
C - - - - - 0x02C67D 0B:866D: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x02C680 0B:8670: B9 8A 86  LDA tbl_868A_spd_Y_lo,Y
C - - - - - 0x02C683 0B:8673: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x02C686 0B:8676: A0 02     LDY #$02
C - - - - - 0x02C688 0B:8678: 18        CLC
C - - - - - 0x02C689 0B:8679: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x02C68C 0B:867C: 71 02     ADC (ram_0002_t007_data),Y
C - - - - - 0x02C68E 0B:867E: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x02C691 0B:8681: 60        RTS



tbl_8682_spd_Y_hi:
- - - - - - 0x02C692 0B:8682: FE        .byte > $FE00   ; 00 
- - - - - - 0x02C693 0B:8683: FE        .byte > $FE80   ; 01 
- - - - - - 0x02C694 0B:8684: FE        .byte > $FEC0   ; 02 
- D 0 - - - 0x02C695 0B:8685: FF        .byte > $FF00   ; 03 
- D 0 - - - 0x02C696 0B:8686: FF        .byte > $FF40   ; 04 
- D 0 - - - 0x02C697 0B:8687: FF        .byte > $FFF0   ; 05 
- - - - - - 0x02C698 0B:8688: FF        .byte > $FFA0   ; 06 
- D 0 - - - 0x02C699 0B:8689: 02        .byte > $0200   ; 07 



tbl_868A_spd_Y_lo:
- - - - - - 0x02C69A 0B:868A: 00        .byte < $FE00   ; 00 
- - - - - - 0x02C69B 0B:868B: 80        .byte < $FE80   ; 01 
- - - - - - 0x02C69C 0B:868C: C0        .byte < $FEC0   ; 02 
- D 0 - - - 0x02C69D 0B:868D: 00        .byte < $FF00   ; 03 
- D 0 - - - 0x02C69E 0B:868E: 40        .byte < $FF40   ; 04 
- D 0 - - - 0x02C69F 0B:868F: F0        .byte < $FFF0   ; 05 
- - - - - - 0x02C6A0 0B:8690: A0        .byte < $FFA0   ; 06 
- D 0 - - - 0x02C6A1 0B:8691: 00        .byte < $0200   ; 07 



tbl_8692_spd_Y_hi:
- D 0 - - - 0x02C6A2 0B:8692: FF        .byte > $FF00   ; 00 
- D 0 - - - 0x02C6A3 0B:8693: 01        .byte > $01C0   ; 01 
- D 0 - - - 0x02C6A4 0B:8694: FD        .byte > $FD00   ; 02 
- D 0 - - - 0x02C6A5 0B:8695: 04        .byte > $04C0   ; 03 
- D 0 - - - 0x02C6A6 0B:8696: FF        .byte > $FF00   ; 04 
- D 0 - - - 0x02C6A7 0B:8697: 01        .byte > $01C0   ; 05 



tbl_8698_spd_Y_lo:
- D 0 - - - 0x02C6A8 0B:8698: 00        .byte < $FF00   ; 00 
- D 0 - - - 0x02C6A9 0B:8699: C0        .byte < $01C0   ; 01 
- D 0 - - - 0x02C6AA 0B:869A: 00        .byte < $FD00   ; 02 
- D 0 - - - 0x02C6AB 0B:869B: C0        .byte < $04C0   ; 03 
- D 0 - - - 0x02C6AC 0B:869C: 00        .byte < $FF00   ; 04 
- D 0 - - - 0x02C6AD 0B:869D: C0        .byte < $01C0   ; 05 



tbl_869E:
- D 0 - - - 0x02C6AE 0B:869E: 3F        .byte $3F   ; 00 
- D 0 - - - 0x02C6AF 0B:869F: 27        .byte $27   ; 01 
- D 0 - - - 0x02C6B0 0B:86A0: 3C        .byte $3C   ; 02 
- D 0 - - - 0x02C6B1 0B:86A1: 1D        .byte $1D   ; 03 
- D 0 - - - 0x02C6B2 0B:86A2: 3F        .byte $3F   ; 04 
- D 0 - - - 0x02C6B3 0B:86A3: 27        .byte $27   ; 05 



ofs_039_86A4_74:
C D 0 J - - 0x02C6B4 0B:86A4: DE 1D 06  DEC ram_061D_obj,X
C - - - - - 0x02C6B7 0B:86A7: D0 22     BNE bra_86CB
C - - - - - 0x02C6B9 0B:86A9: FE 33 06  INC ram_obj_0634,X
loc_86AC:
C D 0 - - - 0x02C6BC 0B:86AC: BC 33 06  LDY ram_obj_0634,X
C - - - - - 0x02C6BF 0B:86AF: B9 92 86  LDA tbl_8692_spd_Y_hi,Y
C - - - - - 0x02C6C2 0B:86B2: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x02C6C5 0B:86B5: B9 98 86  LDA tbl_8698_spd_Y_lo,Y
C - - - - - 0x02C6C8 0B:86B8: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x02C6CB 0B:86BB: B9 9E 86  LDA tbl_869E,Y
C - - - - - 0x02C6CE 0B:86BE: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x02C6D1 0B:86C1: 60        RTS



sub_86C2:
loc_86C2:
ofs_039_86C2_59:
C - - J - - 0x02C6D2 0B:86C2: DE 1D 06  DEC ram_061D_obj,X
C - - - - - 0x02C6D5 0B:86C5: D0 04     BNE bra_86CB
C - - - - - 0x02C6D7 0B:86C7: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02C6DA 0B:86CA: 60        RTS
bra_86CB:
ofs_039_86CB_12:
C - - J - - 0x02C6DB 0B:86CB: A5 68     LDA ram_blk_scroll_type
C - - - - - 0x02C6DD 0B:86CD: 10 09     BPL bra_86D8_horisontal
; if vertical
C - - - - - 0x02C6DF 0B:86CF: 18        CLC
C - - - - - 0x02C6E0 0B:86D0: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x02C6E3 0B:86D3: 65 6E     ADC ram_006E_cam_speed
C - - - - - 0x02C6E5 0B:86D5: 9D 06 06  STA ram_obj_config,X
bra_86D8_horisontal:
C - - - - - 0x02C6E8 0B:86D8: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x02C6EB 0B:86DB: 38        SEC
C - - - - - 0x02C6EC 0B:86DC: FD 06 06  SBC ram_obj_config,X
C - - - - - 0x02C6EF 0B:86DF: A0 00     LDY #$00
C - - - - - 0x02C6F1 0B:86E1: B0 01     BCS bra_86E4
C - - - - - 0x02C6F3 0B:86E3: 88        DEY ; FF
bra_86E4:
C - - - - - 0x02C6F4 0B:86E4: 84 01     STY ram_0000_t032_spd_Y + $01
C - - - - - 0x02C6F6 0B:86E6: 85 00     STA ram_0000_t032_spd_Y
loc_86E8:
C D 0 - - - 0x02C6F8 0B:86E8: BD 37 05  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x02C6FB 0B:86EB: 38        SEC
C - - - - - 0x02C6FC 0B:86EC: E5 00     SBC ram_0000_t032_spd_Y
C - - - - - 0x02C6FE 0B:86EE: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x02C701 0B:86F1: BD 20 05  LDA ram_obj_spd_Y_hi,X
C - - - - - 0x02C704 0B:86F4: E5 01     SBC ram_0000_t032_spd_Y + $01
C - - - - - 0x02C706 0B:86F6: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x02C709 0B:86F9: 60        RTS



ofs_039_86FA_9C:
C - - J - - 0x02C70A 0B:86FA: A9 01     LDA #$01
C - - - - - 0x02C70C 0B:86FC: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x02C70F 0B:86FF: 20 62 86  JSR sub_8662
bra_8702:
ofs_039_8702_9D:
C - - - - - 0x02C712 0B:8702: A5 68     LDA ram_blk_scroll_type
C - - - - - 0x02C714 0B:8704: 10 D2     BPL bra_86D8_horisontal
; if vertical
C - - - - - 0x02C716 0B:8706: 38        SEC
C - - - - - 0x02C717 0B:8707: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x02C71A 0B:870A: FD 06 06  SBC ram_obj_config,X
C - - - - - 0x02C71D 0B:870D: 85 00     STA ram_0000_t032_spd_Y
C - - - - - 0x02C71F 0B:870F: A9 01     LDA #$01
C - - - - - 0x02C721 0B:8711: FD 1D 06  SBC ram_061D_obj,X
C - - - - - 0x02C724 0B:8714: 85 01     STA ram_0000_t032_spd_Y + $01
C - - - - - 0x02C726 0B:8716: 4C E8 86  JMP loc_86E8



ofs_039_8719_A3:
C - - J - - 0x02C729 0B:8719: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02C72C 0B:871C: A9 00     LDA #$00
C - - - - - 0x02C72E 0B:871E: BC 1C 04  LDY ram_obj_pos_Y_hi,X
C - - - - - 0x02C731 0B:8721: 30 02     BMI bra_8725
C - - - - - 0x02C733 0B:8723: A9 04     LDA #$04
bra_8725:
C - - - - - 0x02C735 0B:8725: 9D 45 06  STA ram_obj_0646,X
C - - - - - 0x02C738 0B:8728: 20 3F 87  JSR sub_873F
C - - - - - 0x02C73B 0B:872B: A9 01     LDA #$01
C - - - - - 0x02C73D 0B:872D: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x02C740 0B:8730: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x02C743 0B:8733: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x02C746 0B:8736: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x02C749 0B:8739: 60        RTS



ofs_039_873A_A4:
C - - J - - 0x02C74A 0B:873A: DE 33 06  DEC ram_obj_0634,X
C - - - - - 0x02C74D 0B:873D: D0 C3     BNE bra_8702
sub_873F:
C - - - - - 0x02C74F 0B:873F: A5 1F     LDA ram_random
C - - - - - 0x02C751 0B:8741: 29 03     AND #$03
C - - - - - 0x02C753 0B:8743: 18        CLC
C - - - - - 0x02C754 0B:8744: 7D 45 06  ADC ram_obj_0646,X
C - - - - - 0x02C757 0B:8747: A8        TAY
C - - - - - 0x02C758 0B:8748: B9 5B 87  LDA tbl_875B_spd_Y_hi,Y
C - - - - - 0x02C75B 0B:874B: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x02C75E 0B:874E: B9 63 87  LDA tbl_8763_spd_Y_lo,Y
C - - - - - 0x02C761 0B:8751: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x02C764 0B:8754: B9 6B 87  LDA tbl_876B,Y
C - - - - - 0x02C767 0B:8757: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x02C76A 0B:875A: 60        RTS



tbl_875B_spd_Y_hi:
; 00 
- D 0 - - - 0x02C76B 0B:875B: FE        .byte > $FE00   ; 00 
- D 0 - - - 0x02C76C 0B:875C: FC        .byte > $FC80   ; 01 
- D 0 - - - 0x02C76D 0B:875D: FF        .byte > $FF00   ; 02 
- D 0 - - - 0x02C76E 0B:875E: FD        .byte > $FD80   ; 03 
; 04 
- D 0 - - - 0x02C76F 0B:875F: 02        .byte > $0200   ; 00 
- D 0 - - - 0x02C770 0B:8760: 03        .byte > $0380   ; 01 
- D 0 - - - 0x02C771 0B:8761: 01        .byte > $0100   ; 02 
- D 0 - - - 0x02C772 0B:8762: 02        .byte > $0280   ; 03 



tbl_8763_spd_Y_lo:
; 00 
- D 0 - - - 0x02C773 0B:8763: 00        .byte < $FE00   ; 00 
- D 0 - - - 0x02C774 0B:8764: 80        .byte < $FC80   ; 01 
- D 0 - - - 0x02C775 0B:8765: 00        .byte < $FF00   ; 02 
- D 0 - - - 0x02C776 0B:8766: 80        .byte < $FD80   ; 03 
; 04 
- D 0 - - - 0x02C777 0B:8767: 00        .byte < $0200   ; 00 
- D 0 - - - 0x02C778 0B:8768: 80        .byte < $0380   ; 01 
- D 0 - - - 0x02C779 0B:8769: 00        .byte < $0100   ; 02 
- D 0 - - - 0x02C77A 0B:876A: 80        .byte < $0280   ; 03 



tbl_876B:
; 00 
- D 0 - - - 0x02C77B 0B:876B: 3F        .byte $3F   ; 00 
- D 0 - - - 0x02C77C 0B:876C: 4C        .byte $4C   ; 01 
- D 0 - - - 0x02C77D 0B:876D: 1B        .byte $1B   ; 02 
- D 0 - - - 0x02C77E 0B:876E: 28        .byte $28   ; 03 
; 04 
- D 0 - - - 0x02C77F 0B:876F: 3F        .byte $3F   ; 00 
- D 0 - - - 0x02C780 0B:8770: 4C        .byte $4C   ; 01 
- D 0 - - - 0x02C781 0B:8771: 1B        .byte $1B   ; 02 
- D 0 - - - 0x02C782 0B:8772: 28        .byte $28   ; 03 



ofs_039_8773_6F:
C - - J - - 0x02C783 0B:8773: A0 01     LDY #$01
C - - - - - 0x02C785 0B:8775: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02C787 0B:8777: A8        TAY
C - - - - - 0x02C788 0B:8778: B9 8F 87  LDA tbl_878F_spd_Y_hi,Y
C - - - - - 0x02C78B 0B:877B: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x02C78E 0B:877E: B9 91 87  LDA tbl_8791_spd_Y_lo,Y
C - - - - - 0x02C791 0B:8781: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x02C794 0B:8784: A0 02     LDY #$02
C - - - - - 0x02C796 0B:8786: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02C798 0B:8788: 9D 06 06  STA ram_obj_config,X
bra_878B:
C - - - - - 0x02C79B 0B:878B: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02C79E 0B:878E: 60        RTS



tbl_878F_spd_Y_hi:
- D 0 - - - 0x02C79F 0B:878F: 01        .byte > $0180   ; 00 
- - - - - - 0x02C7A0 0B:8790: 00        .byte > $0000   ; 01 


tbl_8791_spd_Y_lo:
- D 0 - - - 0x02C7A1 0B:8791: 80        .byte < $0180   ; 00 
- - - - - - 0x02C7A2 0B:8792: 00        .byte < $0000   ; 01 



ofs_039_8793_70:
C - - J - - 0x02C7A3 0B:8793: DE 06 06  DEC ram_obj_config,X
C - - - - - 0x02C7A6 0B:8796: F0 F3     BEQ bra_878B
C - - - - - 0x02C7A8 0B:8798: A0 01     LDY #$01
C - - - - - 0x02C7AA 0B:879A: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02C7AC 0B:879C: 4C A1 80  JMP loc_80A1_decrease_spd_Y



ofs_039_879F_67:
C - - J - - 0x02C7AF 0B:879F: A5 1A     LDA ram_frm_cnt
C - - - - - 0x02C7B1 0B:87A1: 29 01     AND #$01
C - - - - - 0x02C7B3 0B:87A3: D0 08     BNE bra_87AD
C - - - - - 0x02C7B5 0B:87A5: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x02C7B8 0B:87A8: 49 08     EOR #con_obj_flag_08
C - - - - - 0x02C7BA 0B:87AA: 9D 70 04  STA ram_obj_flags,X
bra_87AD:
C - - - - - 0x02C7BD 0B:87AD: 20 B3 80  JSR sub_80B3_get_object_distance_X_to_player
C - - - - - 0x02C7C0 0B:87B0: C9 40     CMP #$40
C - - - - - 0x02C7C2 0B:87B2: BC 06 06  LDY ram_obj_config,X
C - - - - - 0x02C7C5 0B:87B5: D0 03     BNE bra_87BA
C - - - - - 0x02C7C7 0B:87B7: 90 03     BCC bra_87BC
C - - - - - 0x02C7C9 0B:87B9: 60        RTS
bra_87BA:
C - - - - - 0x02C7CA 0B:87BA: 90 03     BCC bra_87BF_RTS
bra_87BC:
C - - - - - 0x02C7CC 0B:87BC: FE C1 05  INC ram_05C1_obj,X
bra_87BF_RTS:
C - - - - - 0x02C7CF 0B:87BF: 60        RTS


; bzk garbage
- - - - - - 0x02C7D0 0B:87C0: 4C C2 86  JMP loc_86C2



ofs_039_87C3_60:
C - - J - - 0x02C7D3 0B:87C3: 20 C2 86  JSR sub_86C2
C - - - - - 0x02C7D6 0B:87C6: A0 0A     LDY #$0A
C - - - - - 0x02C7D8 0B:87C8: 20 A6 B7  JSR sub_B7A6
C - - - - - 0x02C7DB 0B:87CB: D0 0F     BNE bra_87DC
C - - - - - 0x02C7DD 0B:87CD: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02C7DF 0B:87CF: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x02C7E2 0B:87D2: A9 01     LDA #$01
C - - - - - 0x02C7E4 0B:87D4: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x02C7E7 0B:87D7: A9 16     LDA #$16
C - - - - - 0x02C7E9 0B:87D9: 9D C1 05  STA ram_05C1_obj,X
bra_87DC:
C - - - - - 0x02C7EC 0B:87DC: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02C7EE 0B:87DE: 60        RTS



ofs_039_87DF_61:
C - - J - - 0x02C7EF 0B:87DF: A9 14     LDA #$14
C - - - - - 0x02C7F1 0B:87E1: 20 7F 80  JSR sub_807F_increase_spd_Y
C - - - - - 0x02C7F4 0B:87E4: A0 01     LDY #$01
C - - - - - 0x02C7F6 0B:87E6: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02C7F8 0B:87E8: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x02C7FB 0B:87EB: C8        INY ; 02
C - - - - - 0x02C7FC 0B:87EC: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02C7FE 0B:87EE: A8        TAY
C - - - - - 0x02C7FF 0B:87EF: 20 A6 B7  JSR sub_B7A6
C - - - - - 0x02C802 0B:87F2: F0 E8     BEQ bra_87DC
C - - - - - 0x02C804 0B:87F4: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02C806 0B:87F6: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x02C809 0B:87F9: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x02C80C 0B:87FC: 60        RTS



ofs_039_87FD_63:
C - - J - - 0x02C80D 0B:87FD: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02C810 0B:8800: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x02C813 0B:8803: A0 01     LDY #$01
C - - - - - 0x02C815 0B:8805: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02C817 0B:8807: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x02C81A 0B:880A: C8        INY ; 02
C - - - - - 0x02C81B 0B:880B: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02C81D 0B:880D: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x02C820 0B:8810: 60        RTS



ofs_039_8811_98:
C - - J - - 0x02C821 0B:8811: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02C824 0B:8814: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x02C827 0B:8817: A0 01     LDY #$01
C - - - - - 0x02C829 0B:8819: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02C82B 0B:881B: D0 53     BNE bra_8870
; bzk optimize, DEY
C - - - - - 0x02C82D 0B:881D: A0 00     LDY #$00
C - - - - - 0x02C82F 0B:881F: 38        SEC
C - - - - - 0x02C830 0B:8820: A5 CA     LDA ram_00CA
C - - - - - 0x02C832 0B:8822: ED 1C 04  SBC ram_plr_pos_Y_hi
C - - - - - 0x02C835 0B:8825: B0 04     BCS bra_882B
- - - - - - 0x02C837 0B:8827: 49 FF     EOR #$FF
- - - - - - 0x02C839 0B:8829: 69 01     ADC #$01
bra_882B:
C - - - - - 0x02C83B 0B:882B: C9 38     CMP #$38
C - - - - - 0x02C83D 0B:882D: 90 10     BCC bra_883F
C - - - - - 0x02C83F 0B:882F: C8        INY ; 01
C - - - - - 0x02C840 0B:8830: C9 48     CMP #$48
C - - - - - 0x02C842 0B:8832: 90 0B     BCC bra_883F
C - - - - - 0x02C844 0B:8834: C8        INY ; 02
C - - - - - 0x02C845 0B:8835: C9 58     CMP #$58
C - - - - - 0x02C847 0B:8837: 90 06     BCC bra_883F
C - - - - - 0x02C849 0B:8839: C8        INY ; 03
C - - - - - 0x02C84A 0B:883A: C9 68     CMP #$68
C - - - - - 0x02C84C 0B:883C: 90 01     BCC bra_883F
C - - - - - 0x02C84E 0B:883E: C8        INY ; 04
bra_883F:
C - - - - - 0x02C84F 0B:883F: B9 84 88  LDA tbl_8884_spd_Y_lo,Y
C - - - - - 0x02C852 0B:8842: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x02C855 0B:8845: B9 7F 88  LDA tbl_887F_spd_Y_hi,Y
C - - - - - 0x02C858 0B:8848: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x02C85B 0B:884B: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x02C85E 0B:884E: BC 1C 04  LDY ram_obj_pos_Y_hi,X
C - - - - - 0x02C861 0B:8851: 20 1E FC  JSR sub_0x03FC2E
C - - - - - 0x02C864 0B:8854: D0 20     BNE bra_8876
C - - - - - 0x02C866 0B:8856: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02C868 0B:8858: A9 22     LDA #con_sound_22
C - - - - - 0x02C86A 0B:885A: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x02C86D 0B:885D: 20 AA 81  JSR sub_81AA
C - - - - - 0x02C870 0B:8860: 20 30 82  JSR sub_8230
C - - - - - 0x02C873 0B:8863: A9 08     LDA #con_obj_type_08
C - - - - - 0x02C875 0B:8865: 9D 8C 04  STA ram_obj_type,X
C - - - - - 0x02C878 0B:8868: A9 46     LDA #$46
C - - - - - 0x02C87A 0B:886A: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x02C87D 0B:886D: 4C EF 81  JMP loc_81EF
bra_8870:
C - - - - - 0x02C880 0B:8870: A9 FF     LDA #$FF
C - - - - - 0x02C882 0B:8872: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x02C885 0B:8875: 60        RTS
bra_8876:
C - - - - - 0x02C886 0B:8876: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02C888 0B:8878: 20 84 B5  JSR sub_B584
C - - - - - 0x02C88B 0B:887B: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x02C88E 0B:887E: 60        RTS



tbl_887F_spd_Y_hi:
- D 0 - - - 0x02C88F 0B:887F: FC        .byte > $FC40   ; 00 
- D 0 - - - 0x02C890 0B:8880: FB        .byte > $FBC0   ; 01 
- D 0 - - - 0x02C891 0B:8881: FB        .byte > $FB80   ; 02 
- D 0 - - - 0x02C892 0B:8882: FB        .byte > $FB40   ; 03 
- D 0 - - - 0x02C893 0B:8883: FA        .byte > $FA80   ; 04 



tbl_8884_spd_Y_lo:
- D 0 - - - 0x02C894 0B:8884: 40        .byte < $FC40   ; 00 
- D 0 - - - 0x02C895 0B:8885: C0        .byte < $FBC0   ; 01 
- D 0 - - - 0x02C896 0B:8886: 80        .byte < $FB80   ; 02 
- D 0 - - - 0x02C897 0B:8887: 40        .byte < $FB40   ; 03 
- D 0 - - - 0x02C898 0B:8888: 80        .byte < $FA80   ; 04 



ofs_039_8889_99:
C - - J - - 0x02C899 0B:8889: A9 20     LDA #$20
C - - - - - 0x02C89B 0B:888B: 20 7F 80  JSR sub_807F_increase_spd_Y
C - - - - - 0x02C89E 0B:888E: A0 01     LDY #$01
C - - - - - 0x02C8A0 0B:8890: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02C8A2 0B:8892: F0 13     BEQ bra_88A7
C - - - - - 0x02C8A4 0B:8894: 38        SEC
C - - - - - 0x02C8A5 0B:8895: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x02C8A8 0B:8898: E9 10     SBC #$10
C - - - - - 0x02C8AA 0B:889A: C5 CA     CMP ram_00CA
C - - - - - 0x02C8AC 0B:889C: 90 08     BCC bra_88A6_RTS
C - - - - - 0x02C8AE 0B:889E: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02C8B1 0B:88A1: 20 2B 99  JSR sub_992B
C - - - - - 0x02C8B4 0B:88A4: A6 6C     LDX ram_006C_object_index
bra_88A6_RTS:
C - - - - - 0x02C8B6 0B:88A6: 60        RTS
bra_88A7:
C - - - - - 0x02C8B7 0B:88A7: BD 20 05  LDA ram_obj_spd_Y_hi,X
C - - - - - 0x02C8BA 0B:88AA: 30 FA     BMI bra_88A6_RTS
C - - - - - 0x02C8BC 0B:88AC: A0 06     LDY #$06
C - - - - - 0x02C8BE 0B:88AE: 20 A6 B7  JSR sub_B7A6
C - - - - - 0x02C8C1 0B:88B1: F0 09     BEQ bra_88BC
loc_88B3:
C D 0 - - - 0x02C8C3 0B:88B3: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02C8C6 0B:88B6: 20 95 8B  JSR sub_8B95
C - - - - - 0x02C8C9 0B:88B9: 4C C8 FE  JMP loc_0x03FED8_clear_speed
bra_88BC:
C - - - - - 0x02C8CC 0B:88BC: 38        SEC
C - - - - - 0x02C8CD 0B:88BD: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x02C8D0 0B:88C0: E9 10     SBC #$10
C - - - - - 0x02C8D2 0B:88C2: C5 CA     CMP ram_00CA
C - - - - - 0x02C8D4 0B:88C4: 90 E0     BCC bra_88A6_RTS
C - - - - - 0x02C8D6 0B:88C6: 20 2B 99  JSR sub_992B
C - - - - - 0x02C8D9 0B:88C9: 4C B2 84  JMP loc_84B2



ofs_039_88CC_64:
C - - J - - 0x02C8DC 0B:88CC: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x02C8DF 0B:88CF: 20 7F 80  JSR sub_807F_increase_spd_Y
C - - - - - 0x02C8E2 0B:88D2: A0 01     LDY #$01
C - - - - - 0x02C8E4 0B:88D4: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02C8E6 0B:88D6: C9 01     CMP #$01
C - - - - - 0x02C8E8 0B:88D8: F0 2F     BEQ bra_8909
C - - - - - 0x02C8EA 0B:88DA: C9 02     CMP #$02
C - - - - - 0x02C8EC 0B:88DC: F0 36     BEQ bra_8914
C - - - - - 0x02C8EE 0B:88DE: BC 20 05  LDY ram_obj_spd_Y_hi,X
C - - - - - 0x02C8F1 0B:88E1: 30 30     BMI bra_8913_RTS
C - - - - - 0x02C8F3 0B:88E3: C9 03     CMP #$03
C - - - - - 0x02C8F5 0B:88E5: D0 16     BNE bra_88FD
C - - - - - 0x02C8F7 0B:88E7: A0 00     LDY #$00
C - - - - - 0x02C8F9 0B:88E9: A5 32     LDA ram_blk_id_hi
C - - - - - 0x02C8FB 0B:88EB: C9 08     CMP #$08
C - - - - - 0x02C8FD 0B:88ED: D0 06     BNE bra_88F5
C - - - - - 0x02C8FF 0B:88EF: C8        INY ; 01
C - - - - - 0x02C900 0B:88F0: A5 33     LDA ram_blk_id_lo
C - - - - - 0x02C902 0B:88F2: D0 01     BNE bra_88F5
C - - - - - 0x02C904 0B:88F4: C8        INY ; 02
bra_88F5:
C - - - - - 0x02C905 0B:88F5: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x02C908 0B:88F8: D9 37 89  CMP tbl_8937_pos_Y_hi,Y
C - - - - - 0x02C90B 0B:88FB: B0 2E     BCS bra_892B
bra_88FD:
C - - - - - 0x02C90D 0B:88FD: A0 06     LDY #$06
C - - - - - 0x02C90F 0B:88FF: 20 A6 B7  JSR sub_B7A6
C - - - - - 0x02C912 0B:8902: F0 0F     BEQ bra_8913_RTS
C - - - - - 0x02C914 0B:8904: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02C916 0B:8906: 4C B3 88  JMP loc_88B3
bra_8909:
- - - - - - 0x02C919 0B:8909: BD 1C 04  LDA ram_obj_pos_Y_hi,X
- - - - - - 0x02C91C 0B:890C: C9 F8     CMP #$F8
- - - - - - 0x02C91E 0B:890E: 90 03     BCC bra_8913_RTS
- - - - - - 0x02C920 0B:8910: FE C1 05  INC ram_05C1_obj,X
bra_8913_RTS:
C - - - - - 0x02C923 0B:8913: 60        RTS
bra_8914:
- - - - - - 0x02C924 0B:8914: A0 00     LDY #$00
- - - - - - 0x02C926 0B:8916: A5 32     LDA ram_blk_id_hi
- - - - - - 0x02C928 0B:8918: C9 08     CMP #$08
- - - - - - 0x02C92A 0B:891A: F0 01     BEQ bra_891D
- - - - - - 0x02C92C 0B:891C: C8        INY ; 01
bra_891D:
- - - - - - 0x02C92D 0B:891D: BD 1C 04  LDA ram_obj_pos_Y_hi,X
- - - - - - 0x02C930 0B:8920: D9 35 89  CMP tbl_8935_pos_Y_hi,Y
- - - - - - 0x02C933 0B:8923: 90 EE     BCC bra_8913_RTS
- - - - - - 0x02C935 0B:8925: FE C1 05  INC ram_05C1_obj,X
- - - - - - 0x02C938 0B:8928: 4C 2B 99  JMP loc_992B
bra_892B:
C - - - - - 0x02C93B 0B:892B: A0 02     LDY #$02
C - - - - - 0x02C93D 0B:892D: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02C93F 0B:892F: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x02C942 0B:8932: 4C 2B 99  JMP loc_992B



tbl_8935_pos_Y_hi:
- - - - - - 0x02C945 0B:8935: B0        .byte $B0   ; 00 
- - - - - - 0x02C946 0B:8936: D0        .byte $D0   ; 01 



tbl_8937_pos_Y_hi:
- D 0 - - - 0x02C947 0B:8937: D0        .byte $D0   ; 00 
- D 0 - - - 0x02C948 0B:8938: C0        .byte $C0   ; 01 
- D 0 - - - 0x02C949 0B:8939: B0        .byte $B0   ; 02 



ofs_039_893A_1C:
C - - J - - 0x02C94A 0B:893A: A0 01     LDY #$01
C - - - - - 0x02C94C 0B:893C: 20 A6 B7  JSR sub_B7A6
C - - - - - 0x02C94F 0B:893F: D0 16     BNE bra_8957
C - - - - - 0x02C951 0B:8941: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02C953 0B:8943: A0 06     LDY #$06
C - - - - - 0x02C955 0B:8945: 20 A6 B7  JSR sub_B7A6
C - - - - - 0x02C958 0B:8948: D0 0D     BNE bra_8957
C - - - - - 0x02C95A 0B:894A: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02C95C 0B:894C: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02C95F 0B:894F: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x02C962 0B:8952: A9 01     LDA #$01
C - - - - - 0x02C964 0B:8954: 9D 20 05  STA ram_obj_spd_Y_hi,X
bra_8957:
C - - - - - 0x02C967 0B:8957: A0 00     LDY #$00
C - - - - - 0x02C969 0B:8959: 20 A6 B7  JSR sub_B7A6
C - - - - - 0x02C96C 0B:895C: F0 0B     BEQ bra_8969
loc_895E:
C D 0 - - - 0x02C96E 0B:895E: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x02C971 0B:8961: 49 01     EOR #$01
C - - - - - 0x02C973 0B:8963: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x02C976 0B:8966: 4C 4B 80  JMP loc_804B_invert_spd_X
bra_8969:
C - - - - - 0x02C979 0B:8969: BD EF 05  LDA ram_05EF_obj,X
C - - - - - 0x02C97C 0B:896C: C9 02     CMP #$02
C - - - - - 0x02C97E 0B:896E: D0 0D     BNE bra_897D_RTS
C - - - - - 0x02C980 0B:8970: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02C982 0B:8972: DE 06 06  DEC ram_obj_config,X
C - - - - - 0x02C985 0B:8975: D0 06     BNE bra_897D_RTS
C - - - - - 0x02C987 0B:8977: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02C98A 0B:897A: FE C1 05  INC ram_05C1_obj,X
bra_897D_RTS:
C - - - - - 0x02C98D 0B:897D: 60        RTS



ofs_039_897E_1D:
C - - J - - 0x02C98E 0B:897E: A0 01     LDY #$01
C - - - - - 0x02C990 0B:8980: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02C992 0B:8982: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x02C995 0B:8985: C8        INY ; 02
C - - - - - 0x02C996 0B:8986: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02C998 0B:8988: A8        TAY
C - - - - - 0x02C999 0B:8989: 20 A6 B7  JSR sub_B7A6
C - - - - - 0x02C99C 0B:898C: F0 17     BEQ bra_89A5
C - - - - - 0x02C99E 0B:898E: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02C9A0 0B:8990: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x02C9A3 0B:8993: 20 F8 81  JSR sub_81F8
C - - - - - 0x02C9A6 0B:8996: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x02C9A9 0B:8999: 29 F0     AND #$F0
C - - - - - 0x02C9AB 0B:899B: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x02C9AE 0B:899E: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x02C9B1 0B:89A1: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x02C9B4 0B:89A4: 60        RTS
bra_89A5:
C - - - - - 0x02C9B5 0B:89A5: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02C9B7 0B:89A7: A9 14     LDA #$14
C - - - - - 0x02C9B9 0B:89A9: 4C 7F 80  JMP loc_807F_increase_spd_Y



ofs_039_89AC_09:
; in
    ; C (used in 0x02C9C1)
        ; 0 = 
        ; 1 = 
C - - J - - 0x02C9BC 0B:89AC: 20 EC 81  JSR sub_81EC
C - - - - - 0x02C9BF 0B:89AF: A5 1A     LDA ram_frm_cnt
C - - - - - 0x02C9C1 0B:89B1: 7D 38 04  ADC ram_obj_pos_X_hi,X
C - - - - - 0x02C9C4 0B:89B4: 29 07     AND #$07
C - - - - - 0x02C9C6 0B:89B6: 85 00     STA ram_0000_t0D1
C - - - - - 0x02C9C8 0B:89B8: A5 33     LDA ram_blk_id_lo
C - - - - - 0x02C9CA 0B:89BA: F0 02     BEQ bra_89BE
C - - - - - 0x02C9CC 0B:89BC: A9 01     LDA #$01
bra_89BE:
C - - - - - 0x02C9CE 0B:89BE: 18        CLC
C - - - - - 0x02C9CF 0B:89BF: 6D F6 07  ADC ram_quest
C - - - - - 0x02C9D2 0B:89C2: A8        TAY
C - - - - - 0x02C9D3 0B:89C3: B9 F5 89  LDA tbl_89F5_offset,Y
C - - - - - 0x02C9D6 0B:89C6: 65 00     ADC ram_0000_t0D1
C - - - - - 0x02C9D8 0B:89C8: A8        TAY
C - - - - - 0x02C9D9 0B:89C9: B9 DD 89  LDA tbl_89DD_pos_X_hi,Y
C - - - - - 0x02C9DC 0B:89CC: 6D 38 04  ADC ram_plr_pos_X_hi
C - - - - - 0x02C9DF 0B:89CF: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x02C9E2 0B:89D2: BD EF 05  LDA ram_05EF_obj,X
C - - - - - 0x02C9E5 0B:89D5: C9 14     CMP #$14
C - - - - - 0x02C9E7 0B:89D7: F0 03     BEQ bra_89DC_RTS
C - - - - - 0x02C9E9 0B:89D9: 4C D4 81  JMP loc_81D4
bra_89DC_RTS:
C - - - - - 0x02C9EC 0B:89DC: 60        RTS



tbl_89DD_pos_X_hi:
; index at 0x02CA05
; 00 
- - - - - - 0x02C9ED 0B:89DD: 68        .byte $68   ; 00 
- - - - - - 0x02C9EE 0B:89DE: A0        .byte $A0   ; 01 
- - - - - - 0x02C9EF 0B:89DF: 68        .byte $68   ; 02 
- - - - - - 0x02C9F0 0B:89E0: 88        .byte $88   ; 03 
- - - - - - 0x02C9F1 0B:89E1: 98        .byte $98   ; 04 
- - - - - - 0x02C9F2 0B:89E2: 78        .byte $78   ; 05 
- - - - - - 0x02C9F3 0B:89E3: 90        .byte $90   ; 06 
- - - - - - 0x02C9F4 0B:89E4: 70        .byte $70   ; 07 
; 08 
- D 0 - - - 0x02C9F5 0B:89E5: 58        .byte $58   ; 00 
- D 0 - - - 0x02C9F6 0B:89E6: 4C        .byte $4C   ; 01 
- D 0 - - - 0x02C9F7 0B:89E7: 48        .byte $48   ; 02 
- D 0 - - - 0x02C9F8 0B:89E8: A0        .byte $A0   ; 03 
- D 0 - - - 0x02C9F9 0B:89E9: 5C        .byte $5C   ; 04 
- D 0 - - - 0x02C9FA 0B:89EA: 60        .byte $60   ; 05 
- D 0 - - - 0x02C9FB 0B:89EB: C0        .byte $C0   ; 06 
- D 0 - - - 0x02C9FC 0B:89EC: 50        .byte $50   ; 07 
; 10 
- D 0 - - - 0x02C9FD 0B:89ED: 30        .byte $30   ; 00 
- D 0 - - - 0x02C9FE 0B:89EE: D8        .byte $D8   ; 01 
- - - - - - 0x02C9FF 0B:89EF: 38        .byte $38   ; 02 
- - - - - - 0x02CA00 0B:89F0: 40        .byte $40   ; 03 
- D 0 - - - 0x02CA01 0B:89F1: 38        .byte $38   ; 04 
- - - - - - 0x02CA02 0B:89F2: 44        .byte $44   ; 05 
- - - - - - 0x02CA03 0B:89F3: C0        .byte $C0   ; 06 
- D 0 - - - 0x02CA04 0B:89F4: 2C        .byte $2C   ; 07 



tbl_89F5_offset:
; index for 0x02C9ED
- - - - - - 0x02CA05 0B:89F5: 00        .byte $00   ; 00 
- D 0 - - - 0x02CA06 0B:89F6: 08        .byte $08   ; 01 
- D 0 - - - 0x02CA07 0B:89F7: 10        .byte $10   ; 02 



ofs_039_89F8_22:
C - - J - - 0x02CA08 0B:89F8: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02CA0B 0B:89FB: A5 1A     LDA ram_frm_cnt
C - - - - - 0x02CA0D 0B:89FD: 6D 38 04  ADC ram_plr_pos_X_hi
C - - - - - 0x02CA10 0B:8A00: 29 07     AND #$07
C - - - - - 0x02CA12 0B:8A02: 85 10     STA ram_0010_temp
C - - - - - 0x02CA14 0B:8A04: A0 01     LDY #$01
C - - - - - 0x02CA16 0B:8A06: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02CA18 0B:8A08: 18        CLC
C - - - - - 0x02CA19 0B:8A09: 65 10     ADC ram_0010_temp
C - - - - - 0x02CA1B 0B:8A0B: A8        TAY
C - - - - - 0x02CA1C 0B:8A0C: B9 16 8A  LDA tbl_8A16_pos_X_hi,Y
C - - - - - 0x02CA1F 0B:8A0F: 6D 38 04  ADC ram_plr_pos_X_hi
C - - - - - 0x02CA22 0B:8A12: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x02CA25 0B:8A15: 60        RTS



tbl_8A16_pos_X_hi:
- - - - - - 0x02CA26 0B:8A16: 40        .byte $40   ; 00 
- - - - - - 0x02CA27 0B:8A17: D0        .byte $D0   ; 01 
- - - - - - 0x02CA28 0B:8A18: 70        .byte $70   ; 02 
- - - - - - 0x02CA29 0B:8A19: 90        .byte $90   ; 03 
- - - - - - 0x02CA2A 0B:8A1A: 60        .byte $60   ; 04 
- - - - - - 0x02CA2B 0B:8A1B: C0        .byte $C0   ; 05 
- - - - - - 0x02CA2C 0B:8A1C: 50        .byte $50   ; 06 
- - - - - - 0x02CA2D 0B:8A1D: A0        .byte $A0   ; 07 
- D 0 - - - 0x02CA2E 0B:8A1E: 40        .byte $40   ; 08 
- D 0 - - - 0x02CA2F 0B:8A1F: 20        .byte $20   ; 09 
- D 0 - - - 0x02CA30 0B:8A20: E0        .byte $E0   ; 0A 
- D 0 - - - 0x02CA31 0B:8A21: D0        .byte $D0   ; 0B 
- D 0 - - - 0x02CA32 0B:8A22: 10        .byte $10   ; 0C 
- D 0 - - - 0x02CA33 0B:8A23: F0        .byte $F0   ; 0D 
- D 0 - - - 0x02CA34 0B:8A24: 50        .byte $50   ; 0E 
- D 0 - - - 0x02CA35 0B:8A25: 70        .byte $70   ; 0F 



ofs_039_8A26_A7:
C - - J - - 0x02CA36 0B:8A26: 20 EF 81  JSR sub_81EF
ofs_039_8A29_26:
C - - J - - 0x02CA39 0B:8A29: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02CA3C 0B:8A2C: A0 01     LDY #$01
C - - - - - 0x02CA3E 0B:8A2E: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02CA40 0B:8A30: 9D 1D 06  STA ram_061D_obj,X
sub_8A33:
C - - - - - 0x02CA43 0B:8A33: C8        INY
C - - - - - 0x02CA44 0B:8A34: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02CA46 0B:8A36: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x02CA49 0B:8A39: 60        RTS



ofs_039_8A3A_30:
C - - J - - 0x02CA4A 0B:8A3A: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02CA4D 0B:8A3D: A0 01     LDY #$01
C - - - - - 0x02CA4F 0B:8A3F: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02CA51 0B:8A41: 9D 54 04  STA ram_0454_obj,X
C - - - - - 0x02CA54 0B:8A44: 60        RTS



ofs_039_8A45_23:
C - - J - - 0x02CA55 0B:8A45: DE 06 06  DEC ram_obj_config,X
C - - - - - 0x02CA58 0B:8A48: D0 1A     BNE bra_8A64_RTS
C - - - - - 0x02CA5A 0B:8A4A: A0 01     LDY #$01
C - - - - - 0x02CA5C 0B:8A4C: BD 54 04  LDA ram_0454_obj,X
C - - - - - 0x02CA5F 0B:8A4F: 51 02     EOR (ram_0002_t007_data),Y
C - - - - - 0x02CA61 0B:8A51: 9D 54 04  STA ram_0454_obj,X
C - - - - - 0x02CA64 0B:8A54: 20 33 8A  JSR sub_8A33
C - - - - - 0x02CA67 0B:8A57: DE 1D 06  DEC ram_061D_obj,X
C - - - - - 0x02CA6A 0B:8A5A: D0 08     BNE bra_8A64_RTS
C - - - - - 0x02CA6C 0B:8A5C: A9 00     LDA #$00
C - - - - - 0x02CA6E 0B:8A5E: 9D 54 04  STA ram_0454_obj,X
bra_8A61:
C - - - - - 0x02CA71 0B:8A61: FE C1 05  INC ram_05C1_obj,X
bra_8A64_RTS:
C - - - - - 0x02CA74 0B:8A64: 60        RTS



ofs_039_8A65_25:
C - - J - - 0x02CA75 0B:8A65: DE 06 06  DEC ram_obj_config,X
C - - - - - 0x02CA78 0B:8A68: D0 FA     BNE bra_8A64_RTS
C - - - - - 0x02CA7A 0B:8A6A: DE 1D 06  DEC ram_061D_obj,X
C - - - - - 0x02CA7D 0B:8A6D: F0 F2     BEQ bra_8A61
C - - - - - 0x02CA7F 0B:8A6F: A0 01     LDY #$01
C - - - - - 0x02CA81 0B:8A71: A5 32     LDA ram_blk_id_hi
C - - - - - 0x02CA83 0B:8A73: C9 09     CMP #$09
C - - - - - 0x02CA85 0B:8A75: 90 02     BCC bra_8A79
C - - - - - 0x02CA87 0B:8A77: A0 02     LDY #$02
bra_8A79:
C - - - - - 0x02CA89 0B:8A79: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02CA8B 0B:8A7B: 9D 06 06  STA ram_obj_config,X
loc_8A7E:
C D 0 - - - 0x02CA8E 0B:8A7E: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x02CA91 0B:8A81: 29 81     AND #con_obj_flag_01 + con_obj_flag_not_visible
C - - - - - 0x02CA93 0B:8A83: D0 DF     BNE bra_8A64_RTS
C - - - - - 0x02CA95 0B:8A85: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x02CA98 0B:8A88: 0A        ASL
C - - - - - 0x02CA99 0B:8A89: A8        TAY
C - - - - - 0x02CA9A 0B:8A8A: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x02CA9D 0B:8A8D: DD 38 04  CMP ram_obj_pos_X_hi,X
C - - - - - 0x02CAA0 0B:8A90: 90 01     BCC bra_8A93
C - - - - - 0x02CAA2 0B:8A92: C8        INY
bra_8A93:
C - - - - - 0x02CAA3 0B:8A93: 18        CLC
C - - - - - 0x02CAA4 0B:8A94: B9 C7 8A  LDA tbl_8AC7_pos_X_hi,Y
C - - - - - 0x02CAA7 0B:8A97: 7D 38 04  ADC ram_obj_pos_X_hi,X
C - - - - - 0x02CAAA 0B:8A9A: 85 01     STA ram_0001_t016_pos_X_hi
C - - - - - 0x02CAAC 0B:8A9C: 18        CLC
C - - - - - 0x02CAAD 0B:8A9D: B9 CB 8A  LDA tbl_8ACB_pos_Y_hi,Y
C - - - - - 0x02CAB0 0B:8AA0: 7D 1C 04  ADC ram_obj_pos_Y_hi,X
C - - - - - 0x02CAB3 0B:8AA3: 85 02     STA ram_0002_t025_pos_Y_hi
C - - - - - 0x02CAB5 0B:8AA5: B9 CF 8A  LDA tbl_8ACF_facing,Y
C - - - - - 0x02CAB8 0B:8AA8: 85 0A     STA ram_000A_t01D_obj_facing
C - - - - - 0x02CABA 0B:8AAA: A9 58     LDA #$58
C - - - - - 0x02CABC 0B:8AAC: 85 07     STA ram_0007_t00B
C - - - - - 0x02CABE 0B:8AAE: A9 40     LDA #$40
C - - - - - 0x02CAC0 0B:8AB0: 85 00     STA ram_0000_t05C_obj_id
C - - - - - 0x02CAC2 0B:8AB2: 98        TYA
C - - - - - 0x02CAC3 0B:8AB3: 29 01     AND #$01
C - - - - - 0x02CAC5 0B:8AB5: 49 01     EOR #$01
C - - - - - 0x02CAC7 0B:8AB7: A4 32     LDY ram_blk_id_hi
C - - - - - 0x02CAC9 0B:8AB9: C0 09     CPY #$09
C - - - - - 0x02CACB 0B:8ABB: 90 03     BCC bra_8AC0
C - - - - - 0x02CACD 0B:8ABD: 18        CLC
C - - - - - 0x02CACE 0B:8ABE: 69 10     ADC #$10
bra_8AC0:
C - - - - - 0x02CAD0 0B:8AC0: A8        TAY
C - - - - - 0x02CAD1 0B:8AC1: 20 9F 8E  JSR sub_8E9F
C - - - - - 0x02CAD4 0B:8AC4: 4C CA 8D  JMP loc_8DCA



tbl_8AC7_pos_X_hi:
- D 0 - - - 0x02CAD7 0B:8AC7: F8        .byte $F8   ; 00 
- D 0 - - - 0x02CAD8 0B:8AC8: 08        .byte $08   ; 01 
- D 0 - - - 0x02CAD9 0B:8AC9: F8        .byte $F8   ; 02 
- D 0 - - - 0x02CADA 0B:8ACA: 08        .byte $08   ; 03 



tbl_8ACB_pos_Y_hi:
- D 0 - - - 0x02CADB 0B:8ACB: 09        .byte $09   ; 00 
- D 0 - - - 0x02CADC 0B:8ACC: FA        .byte $FA   ; 01 
- D 0 - - - 0x02CADD 0B:8ACD: FA        .byte $FA   ; 02 
- D 0 - - - 0x02CADE 0B:8ACE: 09        .byte $09   ; 03 



tbl_8ACF_facing:
- D 0 - - - 0x02CADF 0B:8ACF: 00        .byte $00   ; 00 
- D 0 - - - 0x02CAE0 0B:8AD0: 01        .byte $01   ; 01 
- D 0 - - - 0x02CAE1 0B:8AD1: 00        .byte $00   ; 02 
- D 0 - - - 0x02CAE2 0B:8AD2: 01        .byte $01   ; 03 



ofs_039_8AD3_24:
; bzk garbage
- - - - - - 0x02CAE3 0B:8AD3: 20 30 82  JSR sub_8230
- - - - - - 0x02CAE6 0B:8AD6: 4C 4C 84  JMP loc_844C



ofs_039_8AD9_6E:
C - - J - - 0x02CAE9 0B:8AD9: 20 EC 81  JSR sub_81EC
C - - - - - 0x02CAEC 0B:8ADC: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x02CAEF 0B:8ADF: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x02CAF2 0B:8AE2: 60        RTS



ofs_039_8AE3_52:
C - - J - - 0x02CAF3 0B:8AE3: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02CAF6 0B:8AE6: 4C 7E 8A  JMP loc_8A7E



ofs_039_8AE9_31:
ofs_039_8AE9_32:
C - - J - - 0x02CAF9 0B:8AE9: A0 01     LDY #$01
C - - - - - 0x02CAFB 0B:8AEB: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02CAFD 0B:8AED: 20 7F 80  JSR sub_807F_increase_spd_Y
C - - - - - 0x02CB00 0B:8AF0: 4C 20 8E  JMP loc_8E20



ofs_039_8AF3_92_Harpy_carry_enemy:
C - - J - - 0x02CB03 0B:8AF3: 18        CLC
C - - - - - 0x02CB04 0B:8AF4: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x02CB07 0B:8AF7: 69 10     ADC #$10
C - - - - - 0x02CB09 0B:8AF9: 85 00     STA ram_0000_t059_pos_Y_hi
C - - - - - 0x02CB0B 0B:8AFB: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x02CB0E 0B:8AFE: 85 01     STA ram_0001_t014_copy_obj_pos_X_hi
C - - - - - 0x02CB10 0B:8B00: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x02CB13 0B:8B03: 85 02     STA ram_0002_t034_obj_facing
C - - - - - 0x02CB15 0B:8B05: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x02CB18 0B:8B08: 09 60     ORA #con_obj_flag_20 + con_obj_flag_40
C - - - - - 0x02CB1A 0B:8B0A: 85 03     STA ram_0003_t013_some_obj_flags
C - - - - - 0x02CB1C 0B:8B0C: 86 08     STX ram_0008_t04A_object_index
C - - - - - 0x02CB1E 0B:8B0E: 20 5A 8B  JSR sub_8B5A_search_for_empty_object_slot
C - - - - - 0x02CB21 0B:8B11: D0 39     BNE bra_8B4C
C - - - - - 0x02CB23 0B:8B13: 86 09     STX ram_0009_t00B_object_index
C - - - - - 0x02CB25 0B:8B15: A6 08     LDX ram_0008_t04A_object_index
C - - - - - 0x02CB27 0B:8B17: 20 9E 81  JSR sub_819E
C - - - - - 0x02CB2A 0B:8B1A: 20 EF 81  JSR sub_81EF
C - - - - - 0x02CB2D 0B:8B1D: A6 09     LDX ram_0009_t00B_object_index
C - - - - - 0x02CB2F 0B:8B1F: 20 D7 FE  JSR sub_0x03FEE7_clear_object_speed_and_data
C - - - - - 0x02CB32 0B:8B22: 20 4F 8B  JSR sub_8B4F_write_positions
C - - - - - 0x02CB35 0B:8B25: A5 02     LDA ram_0002_t034_obj_facing
C - - - - - 0x02CB37 0B:8B27: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x02CB3A 0B:8B2A: A5 03     LDA ram_0003_t013_some_obj_flags
C - - - - - 0x02CB3C 0B:8B2C: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x02CB3F 0B:8B2F: 20 C9 9F  JSR sub_9FC9
C - - - - - 0x02CB42 0B:8B32: A9 52     LDA #$52
C - - - - - 0x02CB44 0B:8B34: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x02CB47 0B:8B37: A9 69     LDA #$69    ; dropped enemy for Harpy
C - - - - - 0x02CB49 0B:8B39: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x02CB4C 0B:8B3C: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02CB4E 0B:8B3E: A9 72     LDA #$72
C - - - - - 0x02CB50 0B:8B40: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x02CB53 0B:8B43: A9 10     LDA #$10
C - - - - - 0x02CB55 0B:8B45: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x02CB58 0B:8B48: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02CB5B 0B:8B4B: 60        RTS
bra_8B4C:
C - - - - - 0x02CB5C 0B:8B4C: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02CB5E 0B:8B4E: 60        RTS



sub_8B4F_write_positions:
C - - - - - 0x02CB5F 0B:8B4F: A5 00     LDA ram_0000_t059_pos_Y_hi
C - - - - - 0x02CB61 0B:8B51: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x02CB64 0B:8B54: A5 01     LDA ram_0001_t014_copy_obj_pos_X_hi
C - - - - - 0x02CB66 0B:8B56: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x02CB69 0B:8B59: 60        RTS



sub_8B5A_search_for_empty_object_slot:
; out
    ; Z
        ; 0 = found
        ; 1 = not found
C - - - - - 0x02CB6A 0B:8B5A: A2 01     LDX #$01
bra_8B5C_loop:
C - - - - - 0x02CB6C 0B:8B5C: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x02CB6F 0B:8B5F: F0 07     BEQ bra_8B68_RTS
C - - - - - 0x02CB71 0B:8B61: E8        INX
C - - - - - 0x02CB72 0B:8B62: E0 04     CPX #$04
C - - - - - 0x02CB74 0B:8B64: 90 F6     BCC bra_8B5C_loop
C - - - - - 0x02CB76 0B:8B66: A9 01     LDA #$01
bra_8B68_RTS:   ; A = 00
C - - - - - 0x02CB78 0B:8B68: 60        RTS



ofs_039_8B69_93:
C - - J - - 0x02CB79 0B:8B69: 20 A7 81  JSR sub_81A7
C - - - - - 0x02CB7C 0B:8B6C: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x02CB7F 0B:8B6F: A9 14     LDA #$14
C - - - - - 0x02CB81 0B:8B71: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x02CB84 0B:8B74: 60        RTS



ofs_039_8B75_94:
C - - J - - 0x02CB85 0B:8B75: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x02CB88 0B:8B78: 20 7F 80  JSR sub_807F_increase_spd_Y
C - - - - - 0x02CB8B 0B:8B7B: A0 0E     LDY #$0E
C - - - - - 0x02CB8D 0B:8B7D: 20 A6 B7  JSR sub_B7A6
C - - - - - 0x02CB90 0B:8B80: F0 0C     BEQ bra_8B8E
C - - - - - 0x02CB92 0B:8B82: 20 91 8B  JSR sub_8B91
C - - - - - 0x02CB95 0B:8B85: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x02CB98 0B:8B88: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x02CB9B 0B:8B8B: FE C1 05  INC ram_05C1_obj,X
bra_8B8E:
C - - - - - 0x02CB9E 0B:8B8E: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02CBA0 0B:8B90: 60        RTS



sub_8B91:
C - - - - - 0x02CBA1 0B:8B91: A5 68     LDA ram_blk_scroll_type
C - - - - - 0x02CBA3 0B:8B93: 30 09     BMI bra_8B9E_vertical
; if horisontal
sub_8B95:
C - - - - - 0x02CBA5 0B:8B95: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x02CBA8 0B:8B98: 29 F0     AND #$F0
C - - - - - 0x02CBAA 0B:8B9A: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x02CBAD 0B:8B9D: 60        RTS
bra_8B9E_vertical:
C - - - - - 0x02CBAE 0B:8B9E: 18        CLC
C - - - - - 0x02CBAF 0B:8B9F: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x02CBB2 0B:8BA2: 65 56     ADC ram_cam_pos_lo
C - - - - - 0x02CBB4 0B:8BA4: 29 F0     AND #$F0
C - - - - - 0x02CBB6 0B:8BA6: 38        SEC
C - - - - - 0x02CBB7 0B:8BA7: E5 56     SBC ram_cam_pos_lo
C - - - - - 0x02CBB9 0B:8BA9: 18        CLC
C - - - - - 0x02CBBA 0B:8BAA: 69 03     ADC #$03
C - - - - - 0x02CBBC 0B:8BAC: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x02CBBF 0B:8BAF: 60        RTS



ofs_039_8BB0_90:
C - - J - - 0x02CBC0 0B:8BB0: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02CBC3 0B:8BB3: A0 00     LDY #$00
C - - - - - 0x02CBC5 0B:8BB5: 20 B3 80  JSR sub_80B3_get_object_distance_X_to_player
C - - - - - 0x02CBC8 0B:8BB8: C9 40     CMP #$40
C - - - - - 0x02CBCA 0B:8BBA: B0 01     BCS bra_8BBD
C - - - - - 0x02CBCC 0B:8BBC: C8        INY ; 01
bra_8BBD:
C - - - - - 0x02CBCD 0B:8BBD: 98        TYA
C - - - - - 0x02CBCE 0B:8BBE: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x02CBD1 0B:8BC1: 60        RTS



ofs_039_8BC2_8F:
C - - J - - 0x02CBD2 0B:8BC2: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02CBD5 0B:8BC5: A9 32     LDA #$32
C - - - - - 0x02CBD7 0B:8BC7: BC 00 04  LDY ram_obj_anim_id,X
C - - - - - 0x02CBDA 0B:8BCA: C0 30     CPY #$30
C - - - - - 0x02CBDC 0B:8BCC: F0 02     BEQ bra_8BD0
C - - - - - 0x02CBDE 0B:8BCE: A9 54     LDA #$54
bra_8BD0:
C - - - - - 0x02CBE0 0B:8BD0: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x02CBE3 0B:8BD3: 60        RTS



ofs_039_8BD4_3A:
C - - J - - 0x02CBE4 0B:8BD4: 20 AD 83  JSR sub_83AD
C - - - - - 0x02CBE7 0B:8BD7: 18        CLC
C - - - - - 0x02CBE8 0B:8BD8: A0 03     LDY #$03
C - - - - - 0x02CBEA 0B:8BDA: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02CBEC 0B:8BDC: 7D A8 04  ADC ram_obj_facing,X
C - - - - - 0x02CBEF 0B:8BDF: A8        TAY
C - - - - - 0x02CBF0 0B:8BE0: B9 EF 8B  LDA tbl_8BEF_spd_X,Y
C - - - - - 0x02CBF3 0B:8BE3: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x02CBF6 0B:8BE6: 20 9E 81  JSR sub_819E
C - - - - - 0x02CBF9 0B:8BE9: 20 01 80  JSR sub_8001_move_object_XY_axis
C - - - - - 0x02CBFC 0B:8BEC: 4C C8 FE  JMP loc_0x03FED8_clear_speed



tbl_8BEF_spd_X:
;                                              +---------- facing right
;                                              |    +----- facing left
;                                              |    |
- D 0 - - - 0x02CBFF 0B:8BEF: 08        .byte $08, $F8   ; 00 
- D 0 - - - 0x02CC01 0B:8BF1: F8        .byte $F8, $08   ; 01 
- - - - - - 0x02CC03 0B:8BF3: 10        .byte $10, $F0   ; 02 
- - - - - - 0x02CC05 0B:8BF5: F0        .byte $F0, $10   ; 03 



ofs_039_8BF7_96:
C - - J - - 0x02CC07 0B:8BF7: 20 D4 81  JSR sub_81D4
C - - - - - 0x02CC0A 0B:8BFA: 20 E3 80  JSR sub_80E3_find_empty_object_slot_09_0C
C - - - - - 0x02CC0D 0B:8BFD: D0 20     BNE bra_8C1F_no_empty_slots
C - - - - - 0x02CC0F 0B:8BFF: 20 D4 81  JSR sub_81D4
C - - - - - 0x02CC12 0B:8C02: A9 68     LDA #$68
C - - - - - 0x02CC14 0B:8C04: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x02CC17 0B:8C07: A9 00     LDA #$00
C - - - - - 0x02CC19 0B:8C09: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x02CC1C 0B:8C0C: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x02CC1F 0B:8C0F: 8A        TXA
C - - - - - 0x02CC20 0B:8C10: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02CC22 0B:8C12: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x02CC25 0B:8C15: A9 08     LDA #con_obj_type_08
C - - - - - 0x02CC27 0B:8C17: A0 0C     LDY #$0C
C - - - - - 0x02CC29 0B:8C19: 20 93 82  JSR sub_8293
C - - - - - 0x02CC2C 0B:8C1C: 4C B9 81  JMP loc_81B9
bra_8C1F_no_empty_slots:
- - - - - - 0x02CC2F 0B:8C1F: A6 6C     LDX ram_006C_object_index
- - - - - - 0x02CC31 0B:8C21: 60        RTS



ofs_039_8C22_50:
C - - J - - 0x02CC32 0B:8C22: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x02CC35 0B:8C25: 20 A7 81  JSR sub_81A7
C - - - - - 0x02CC38 0B:8C28: A9 01     LDA #$01    ; facing left
C - - - - - 0x02CC3A 0B:8C2A: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x02CC3D 0B:8C2D: A0 01     LDY #$01
C - - - - - 0x02CC3F 0B:8C2F: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02CC41 0B:8C31: A8        TAY
C - - - - - 0x02CC42 0B:8C32: B9 60 8C  LDA tbl_8C60_spd_Y_hi,Y
C - - - - - 0x02CC45 0B:8C35: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x02CC48 0B:8C38: B9 62 8C  LDA tbl_8C62_spd_Y_lo,Y
C - - - - - 0x02CC4B 0B:8C3B: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x02CC4E 0B:8C3E: A9 50     LDA #$50
C - - - - - 0x02CC50 0B:8C40: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x02CC53 0B:8C43: 86 08     STX ram_0008_temp
C - - - - - 0x02CC55 0B:8C45: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x02CC58 0B:8C48: AA        TAX
C - - - - - 0x02CC59 0B:8C49: A9 57     LDA #$57
C - - - - - 0x02CC5B 0B:8C4B: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x02CC5E 0B:8C4E: A9 00     LDA #$00
C - - - - - 0x02CC60 0B:8C50: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x02CC63 0B:8C53: A9 68     LDA #$68
C - - - - - 0x02CC65 0B:8C55: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x02CC68 0B:8C58: A5 08     LDA ram_0008_temp
C - - - - - 0x02CC6A 0B:8C5A: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x02CC6D 0B:8C5D: A6 6C     LDX ram_006C_object_index
bra_8C5F_RTS:
C - - - - - 0x02CC6F 0B:8C5F: 60        RTS



tbl_8C60_spd_Y_hi:
- D 0 - - - 0x02CC70 0B:8C60: 01        .byte > $0120   ; 00 
- D 0 - - - 0x02CC71 0B:8C61: FE        .byte > $FED0   ; 01 



tbl_8C62_spd_Y_lo:
- D 0 - - - 0x02CC72 0B:8C62: 20        .byte < $0120   ; 00 
- D 0 - - - 0x02CC73 0B:8C63: D0        .byte < $FED0   ; 01 



ofs_039_8C64_51:
C - - J - - 0x02CC74 0B:8C64: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x02CC77 0B:8C67: C9 30     CMP #$30
C - - - - - 0x02CC79 0B:8C69: 90 0C     BCC bra_8C77
C - - - - - 0x02CC7B 0B:8C6B: DE 06 06  DEC ram_obj_config,X
C - - - - - 0x02CC7E 0B:8C6E: D0 EF     BNE bra_8C5F_RTS
C - - - - - 0x02CC80 0B:8C70: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x02CC83 0B:8C73: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02CC86 0B:8C76: 60        RTS
bra_8C77:
C - - - - - 0x02CC87 0B:8C77: 20 D4 81  JSR sub_81D4
C - - - - - 0x02CC8A 0B:8C7A: 20 C5 81  JSR sub_81C5
C - - - - - 0x02CC8D 0B:8C7D: A9 30     LDA #$30
C - - - - - 0x02CC8F 0B:8C7F: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x02CC92 0B:8C82: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x02CC95 0B:8C85: 9D DB 04  STA ram_obj_pos_Y_lo,X
C - - - - - 0x02CC98 0B:8C88: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x02CC9B 0B:8C8B: AA        TAX
C - - - - - 0x02CC9C 0B:8C8C: A9 00     LDA #$00
C - - - - - 0x02CC9E 0B:8C8E: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x02CCA1 0B:8C91: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x02CCA4 0B:8C94: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x02CCA7 0B:8C97: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02CCA9 0B:8C99: 60        RTS



ofs_039_8C9A_9B:
C - - J - - 0x02CCAA 0B:8C9A: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x02CCAD 0B:8C9D: AA        TAX
C - - - - - 0x02CCAE 0B:8C9E: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x02CCB1 0B:8CA1: 85 08     STA ram_0008_temp
C - - - - - 0x02CCB3 0B:8CA3: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x02CCB6 0B:8CA6: 09 30     ORA #con_obj_flag_10 + con_obj_flag_20
C - - - - - 0x02CCB8 0B:8CA8: 29 BB     AND #(con_obj_flag_04 + con_obj_flag_40) ^ $FF
C - - - - - 0x02CCBA 0B:8CAA: 85 09     STA ram_0009_t01E_some_obj_flags
C - - - - - 0x02CCBC 0B:8CAC: A9 30     LDA #$30
C - - - - - 0x02CCBE 0B:8CAE: 85 11     STA ram_0011_t00B_distance_Y
C - - - - - 0x02CCC0 0B:8CB0: 20 C1 80  JSR sub_80C1_get_object_distance_Y_to_0011
; / 10
C - - - - - 0x02CCC3 0B:8CB3: 4A        LSR
C - - - - - 0x02CCC4 0B:8CB4: 4A        LSR
C - - - - - 0x02CCC5 0B:8CB5: 4A        LSR
C - - - - - 0x02CCC6 0B:8CB6: 4A        LSR
C - - - - - 0x02CCC7 0B:8CB7: A8        TAY
C - - - - - 0x02CCC8 0B:8CB8: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02CCCA 0B:8CBA: B9 DB 8C  LDA tbl_8CDB,Y
C - - - - - 0x02CCCD 0B:8CBD: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x02CCD0 0B:8CC0: A9 08     LDA #con_obj_type_08
C - - - - - 0x02CCD2 0B:8CC2: 9D 8C 04  STA ram_obj_type,X
C - - - - - 0x02CCD5 0B:8CC5: A9 01     LDA #$01    ; facing left
C - - - - - 0x02CCD7 0B:8CC7: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x02CCDA 0B:8CCA: B9 E5 8C  LDA tbl_8CE5_pos_Y_hi,Y
C - - - - - 0x02CCDD 0B:8CCD: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x02CCE0 0B:8CD0: A5 08     LDA ram_0008_temp
C - - - - - 0x02CCE2 0B:8CD2: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x02CCE5 0B:8CD5: A5 09     LDA ram_0009_t01E_some_obj_flags
C - - - - - 0x02CCE7 0B:8CD7: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x02CCEA 0B:8CDA: 60        RTS



tbl_8CDB:
- D 0 - - - 0x02CCEB 0B:8CDB: C0        .byte $C0   ; 00 
- D 0 - - - 0x02CCEC 0B:8CDC: C2        .byte $C2   ; 10 
- D 0 - - - 0x02CCED 0B:8CDD: C4        .byte $C4   ; 20 
- D 0 - - - 0x02CCEE 0B:8CDE: C6        .byte $C6   ; 30 
- D 0 - - - 0x02CCEF 0B:8CDF: C8        .byte $C8   ; 40 
- D 0 - - - 0x02CCF0 0B:8CE0: D8        .byte $D8   ; 50 
- - - - - - 0x02CCF1 0B:8CE1: D8        .byte $D8   ; 60 
- - - - - - 0x02CCF2 0B:8CE2: D8        .byte $D8   ; 70 
- - - - - - 0x02CCF3 0B:8CE3: D8        .byte $D8   ; 80 
- - - - - - 0x02CCF4 0B:8CE4: D8        .byte $D8   ; 90 



tbl_8CE5_pos_Y_hi:
- D 0 - - - 0x02CCF5 0B:8CE5: 30        .byte $30   ; 00 
- D 0 - - - 0x02CCF6 0B:8CE6: 38        .byte $38   ; 10 
- D 0 - - - 0x02CCF7 0B:8CE7: 40        .byte $40   ; 20 
- D 0 - - - 0x02CCF8 0B:8CE8: 48        .byte $48   ; 30 
- D 0 - - - 0x02CCF9 0B:8CE9: 50        .byte $50   ; 40 
- D 0 - - - 0x02CCFA 0B:8CEA: 58        .byte $58   ; 50 
- - - - - - 0x02CCFB 0B:8CEB: 60        .byte $60   ; 60 
- - - - - - 0x02CCFC 0B:8CEC: 68        .byte $68   ; 70 
- - - - - - 0x02CCFD 0B:8CED: 70        .byte $70   ; 80 
- - - - - - 0x02CCFE 0B:8CEE: 78        .byte $78   ; 90 



ofs_039_8CEF_5D:
C - - J - - 0x02CCFF 0B:8CEF: A9 02     LDA #$02
C - - - - - 0x02CD01 0B:8CF1: 9D 06 06  STA ram_obj_config,X
bra_8CF4:
C - - - - - 0x02CD04 0B:8CF4: BC 06 06  LDY ram_obj_config,X
C - - - - - 0x02CD07 0B:8CF7: B9 1C 8D  LDA tbl_8D1C,Y
C - - - - - 0x02CD0A 0B:8CFA: A8        TAY
C - - - - - 0x02CD0B 0B:8CFB: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x02CD0E 0B:8CFE: 20 16 FC  JSR sub_0x03FC26
C - - - - - 0x02CD11 0B:8D01: D0 0A     BNE bra_8D0D
C - - - - - 0x02CD13 0B:8D03: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02CD15 0B:8D05: DE 06 06  DEC ram_obj_config,X
C - - - - - 0x02CD18 0B:8D08: D0 EA     BNE bra_8CF4
C - - - - - 0x02CD1A 0B:8D0A: 4C B2 84  JMP loc_84B2
bra_8D0D:
C - - - - - 0x02CD1D 0B:8D0D: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02CD1F 0B:8D0F: BC 06 06  LDY ram_obj_config,X
C - - - - - 0x02CD22 0B:8D12: B9 1F 8D  LDA tbl_8D1F_pos_Y_hi,Y
C - - - - - 0x02CD25 0B:8D15: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x02CD28 0B:8D18: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02CD2B 0B:8D1B: 60        RTS



tbl_8D1C:
- - - - - - 0x02CD2C 0B:8D1C: 00        .byte $00   ; 00 
- D 0 - - - 0x02CD2D 0B:8D1D: B4        .byte $B4   ; 01 
- D 0 - - - 0x02CD2E 0B:8D1E: A4        .byte $A4   ; 02 



tbl_8D1F_pos_Y_hi:
- - - - - - 0x02CD2F 0B:8D1F: 00        .byte $00   ; 00 
- D 0 - - - 0x02CD30 0B:8D20: A0        .byte $A0   ; 01 
- D 0 - - - 0x02CD31 0B:8D21: 90        .byte $90   ; 02 



ofs_039_8D22_89:
C - - J - - 0x02CD32 0B:8D22: A0 01     LDY #$01
C - - - - - 0x02CD34 0B:8D24: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02CD36 0B:8D26: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x02CD39 0B:8D29: 18        CLC
C - - - - - 0x02CD3A 0B:8D2A: 69 10     ADC #$10
C - - - - - 0x02CD3C 0B:8D2C: A8        TAY
C - - - - - 0x02CD3D 0B:8D2D: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x02CD40 0B:8D30: 20 16 FC  JSR sub_0x03FC26
C - - - - - 0x02CD43 0B:8D33: C9 01     CMP #$01
C - - - - - 0x02CD45 0B:8D35: D0 20     BNE bra_8D57
C - - - - - 0x02CD47 0B:8D37: F0 39     BEQ bra_8D72    ; jmp



ofs_039_8D39_5F:
C - - J - - 0x02CD49 0B:8D39: A9 A8     LDA #$A8
C - - - - - 0x02CD4B 0B:8D3B: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x02CD4E 0B:8D3E: 18        CLC
C - - - - - 0x02CD4F 0B:8D3F: 69 10     ADC #$10
C - - - - - 0x02CD51 0B:8D41: A8        TAY
C - - - - - 0x02CD52 0B:8D42: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x02CD55 0B:8D45: 20 16 FC  JSR sub_0x03FC26
C - - - - - 0x02CD58 0B:8D48: C9 01     CMP #$01
C - - - - - 0x02CD5A 0B:8D4A: D0 0B     BNE bra_8D57
C - - - - - 0x02CD5C 0B:8D4C: BC 1C 04  LDY ram_obj_pos_Y_hi,X
C - - - - - 0x02CD5F 0B:8D4F: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x02CD62 0B:8D52: 20 16 FC  JSR sub_0x03FC26
C - - - - - 0x02CD65 0B:8D55: F0 05     BEQ bra_8D5C
bra_8D57:
C - - - - - 0x02CD67 0B:8D57: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02CD69 0B:8D59: 4C B2 84  JMP loc_84B2
bra_8D5C:
C - - - - - 0x02CD6C 0B:8D5C: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02CD6E 0B:8D5E: 38        SEC
C - - - - - 0x02CD6F 0B:8D5F: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x02CD72 0B:8D62: E9 08     SBC #$08
C - - - - - 0x02CD74 0B:8D64: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x02CD77 0B:8D67: A9 00     LDA #$00
C - - - - - 0x02CD79 0B:8D69: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x02CD7C 0B:8D6C: 20 EF 81  JSR sub_81EF
C - - - - - 0x02CD7F 0B:8D6F: 20 D4 81  JSR sub_81D4
bra_8D72:
C - - - - - 0x02CD82 0B:8D72: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02CD85 0B:8D75: 60        RTS



ofs_039_8D76_8E:
C - - J - - 0x02CD86 0B:8D76: 8A        TXA
C - - - - - 0x02CD87 0B:8D77: 29 01     AND #$01
C - - - - - 0x02CD89 0B:8D79: A8        TAY
C - - - - - 0x02CD8A 0B:8D7A: B9 84 8D  LDA tbl_8D84,Y
C - - - - - 0x02CD8D 0B:8D7D: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x02CD90 0B:8D80: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02CD93 0B:8D83: 60        RTS



tbl_8D84:
- D 0 - - - 0x02CD94 0B:8D84: 40        .byte $40   ; 00 
- D 0 - - - 0x02CD95 0B:8D85: D0        .byte $D0   ; 01 



ofs_039_8D86_65:
C - - J - - 0x02CD96 0B:8D86: A0 01     LDY #$01
C - - - - - 0x02CD98 0B:8D88: B1 02     LDA (ram_0002_t007_data),Y  ; pos_Y_hi
C - - - - - 0x02CD9A 0B:8D8A: 85 00     STA ram_0000_t0D2_pos_Y_hi
C - - - - - 0x02CD9C 0B:8D8C: C8        INY ; 01
C - - - - - 0x02CD9D 0B:8D8D: B1 02     LDA (ram_0002_t007_data),Y  ; pos_X_hi
C - - - - - 0x02CD9F 0B:8D8F: A4 00     LDY ram_0000_t0D2_pos_Y_hi
C - - - - - 0x02CDA1 0B:8D91: 20 1E FC  JSR sub_0x03FC2E
C - - - - - 0x02CDA4 0B:8D94: D0 C1     BNE bra_8D57
C - - - - - 0x02CDA6 0B:8D96: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02CDA8 0B:8D98: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02CDAB 0B:8D9B: 60        RTS



ofs_039_8D9C_4E:
C - - J - - 0x02CDAC 0B:8D9C: A9 0E     LDA #con_obj_type_0E
C - - - - - 0x02CDAE 0B:8D9E: A0 01     LDY #$01
C - - - - - 0x02CDB0 0B:8DA0: 20 93 82  JSR sub_8293
C - - - - - 0x02CDB3 0B:8DA3: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02CDB6 0B:8DA6: A5 33     LDA ram_blk_id_lo
C - - - - - 0x02CDB8 0B:8DA8: F0 14     BEQ bra_8DBE
C - - - - - 0x02CDBA 0B:8DAA: C9 01     CMP #$01
C - - - - - 0x02CDBC 0B:8DAC: F0 0C     BEQ bra_8DBA
C - - - - - 0x02CDBE 0B:8DAE: C9 02     CMP #$02
C - - - - - 0x02CDC0 0B:8DB0: F0 08     BEQ bra_8DBA
C - - - - - 0x02CDC2 0B:8DB2: C9 03     CMP #$03
C - - - - - 0x02CDC4 0B:8DB4: F0 0E     BEQ bra_8DC4
C - - - - - 0x02CDC6 0B:8DB6: A5 34     LDA ram_blk_id_fr
C - - - - - 0x02CDC8 0B:8DB8: D0 0A     BNE bra_8DC4
bra_8DBA:
C - - - - - 0x02CDCA 0B:8DBA: A9 00     LDA #$00
C - - - - - 0x02CDCC 0B:8DBC: F0 08     BEQ bra_8DC6    ; jmp
bra_8DBE:
C - - - - - 0x02CDCE 0B:8DBE: A5 34     LDA ram_blk_id_fr
C - - - - - 0x02CDD0 0B:8DC0: C9 02     CMP #$02
C - - - - - 0x02CDD2 0B:8DC2: D0 F6     BNE bra_8DBA
bra_8DC4:
C - - - - - 0x02CDD4 0B:8DC4: A9 03     LDA #$03
bra_8DC6:
C - - - - - 0x02CDD6 0B:8DC6: 9D 54 04  STA ram_0454_obj,X
C - - - - - 0x02CDD9 0B:8DC9: 60        RTS



loc_8DCA:
C D 0 - - - 0x02CDDA 0B:8DCA: 20 E3 80  JSR sub_80E3_find_empty_object_slot_09_0C
C - - - - - 0x02CDDD 0B:8DCD: D0 3D     BNE bra_8E0C_no_empty_slots
loc_8DCF:
C D 0 - - - 0x02CDDF 0B:8DCF: 20 D7 FE  JSR sub_0x03FEE7_clear_object_speed_and_data
C - - - - - 0x02CDE2 0B:8DD2: A5 01     LDA ram_0001_t016_pos_X_hi
C - - - - - 0x02CDE4 0B:8DD4: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x02CDE7 0B:8DD7: A5 02     LDA ram_0002_t025_pos_Y_hi
C - - - - - 0x02CDE9 0B:8DD9: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x02CDEC 0B:8DDC: A5 03     LDA ram_0003_t009_spd_X_hi
C - - - - - 0x02CDEE 0B:8DDE: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x02CDF1 0B:8DE1: A5 04     LDA ram_0004_t00A_spd_X_lo
C - - - - - 0x02CDF3 0B:8DE3: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x02CDF6 0B:8DE6: A5 05     LDA ram_0005_t007_spd_Y_hi
C - - - - - 0x02CDF8 0B:8DE8: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x02CDFB 0B:8DEB: A5 06     LDA ram_0006_t00C_spd_Y_lo
C - - - - - 0x02CDFD 0B:8DED: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x02CE00 0B:8DF0: A9 60     LDA #con_obj_flag_20 + con_obj_flag_40
C - - - - - 0x02CE02 0B:8DF2: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x02CE05 0B:8DF5: A5 00     LDA ram_0000_t05C_obj_id
C - - - - - 0x02CE07 0B:8DF7: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x02CE0A 0B:8DFA: A5 0A     LDA ram_000A_t01D_obj_facing
C - - - - - 0x02CE0C 0B:8DFC: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x02CE0F 0B:8DFF: 20 C9 9F  JSR sub_9FC9
C - - - - - 0x02CE12 0B:8E02: A5 07     LDA ram_0007_t00B
C - - - - - 0x02CE14 0B:8E04: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x02CE17 0B:8E07: 86 08     STX ram_0008_temp
C - - - - - 0x02CE19 0B:8E09: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02CE1B 0B:8E0B: 60        RTS
bra_8E0C_no_empty_slots:
bra_8E0C:
C - - - - - 0x02CE1C 0B:8E0C: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02CE1E 0B:8E0E: A9 00     LDA #$00
C - - - - - 0x02CE20 0B:8E10: 60        RTS



sub_8E11:
C - - - - - 0x02CE21 0B:8E11: 20 6F 8E  JSR sub_8E6F
C - - - - - 0x02CE24 0B:8E14: 20 B9 FE  JSR sub_0x03FEC9_find_empty_object_slot_01_0C
C - - - - - 0x02CE27 0B:8E17: D0 F3     BNE bra_8E0C    ; if not found
; if found
C - - - - - 0x02CE29 0B:8E19: A9 00     LDA #$00    ; facing right
C - - - - - 0x02CE2B 0B:8E1B: 85 0A     STA ram_000A_t01D_obj_facing
C - - - - - 0x02CE2D 0B:8E1D: 4C CF 8D  JMP loc_8DCF



loc_8E20:
sub_8E20:
ofs_039_8E20_0E:
C D 0 - - - 0x02CE30 0B:8E20: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x02CE33 0B:8E23: C9 04     CMP #$04
C - - - - - 0x02CE35 0B:8E25: 90 0F     BCC bra_8E36
C - - - - - 0x02CE37 0B:8E27: C9 FC     CMP #$FC
C - - - - - 0x02CE39 0B:8E29: B0 0B     BCS bra_8E36
C - - - - - 0x02CE3B 0B:8E2B: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x02CE3E 0B:8E2E: C9 18     CMP #$18
C - - - - - 0x02CE40 0B:8E30: 90 04     BCC bra_8E36
C - - - - - 0x02CE42 0B:8E32: C9 E8     CMP #$E8
C - - - - - 0x02CE44 0B:8E34: 90 08     BCC bra_8E3E_RTS
sub_8E36:
bra_8E36:
C - - - - - 0x02CE46 0B:8E36: A9 00     LDA #$00
C - - - - - 0x02CE48 0B:8E38: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x02CE4B 0B:8E3B: 9D 00 04  STA ram_obj_anim_id,X
bra_8E3E_RTS:
C - - - - - 0x02CE4E 0B:8E3E: 60        RTS



ofs_039_8E3F_9A:
C - - J - - 0x02CE4F 0B:8E3F: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x02CE52 0B:8E42: 29 81     AND #con_obj_flag_01 + con_obj_flag_not_visible
C - - - - - 0x02CE54 0B:8E44: D0 0B     BNE bra_8E51
C - - - - - 0x02CE56 0B:8E46: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x02CE59 0B:8E49: C9 F8     CMP #$F8
C - - - - - 0x02CE5B 0B:8E4B: B0 04     BCS bra_8E51
C - - - - - 0x02CE5D 0B:8E4D: C9 08     CMP #$08
C - - - - - 0x02CE5F 0B:8E4F: B0 04     BCS bra_8E55
bra_8E51:
C - - - - - 0x02CE61 0B:8E51: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02CE64 0B:8E54: 60        RTS
bra_8E55:
C - - - - - 0x02CE65 0B:8E55: A9 32     LDA #con_sound_32
C - - - - - 0x02CE67 0B:8E57: 20 5F E2  JSR sub_0x03E26F_play_sound
ofs_039_8E5A_0D:
C - - J - - 0x02CE6A 0B:8E5A: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02CE6D 0B:8E5D: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x02CE70 0B:8E60: 29 81     AND #con_obj_flag_01 + con_obj_flag_not_visible
C - - - - - 0x02CE72 0B:8E62: D0 DA     BNE bra_8E3E_RTS
C - - - - - 0x02CE74 0B:8E64: A0 01     LDY #$01
C - - - - - 0x02CE76 0B:8E66: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02CE78 0B:8E68: A8        TAY
C - - - - - 0x02CE79 0B:8E69: 20 6F 8E  JSR sub_8E6F
C - - - - - 0x02CE7C 0B:8E6C: 4C CA 8D  JMP loc_8DCA



sub_8E6F:
C - - - - - 0x02CE7F 0B:8E6F: 18        CLC
C - - - - - 0x02CE80 0B:8E70: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x02CE83 0B:8E73: 79 CC 8E  ADC tbl_8ECC,Y
C - - - - - 0x02CE86 0B:8E76: 85 02     STA ram_0002_t025_pos_Y_hi
C - - - - - 0x02CE88 0B:8E78: B9 D4 8E  LDA tbl_8ED4,Y
C - - - - - 0x02CE8B 0B:8E7B: 85 07     STA ram_0007_t00B
C - - - - - 0x02CE8D 0B:8E7D: B9 C4 8E  LDA tbl_8EC4_obj_id,Y
C - - - - - 0x02CE90 0B:8E80: 85 00     STA ram_0000_t05C_obj_id
C - - - - - 0x02CE92 0B:8E82: B9 BC 8E  LDA tbl_8EBC,Y
C - - - - - 0x02CE95 0B:8E85: F0 06     BEQ bra_8E8D
C - - - - - 0x02CE97 0B:8E87: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x02CE9A 0B:8E8A: 59 B4 8E  EOR tbl_8EB4_facing,Y
bra_8E8D:   ; A = 00
C - - - - - 0x02CE9D 0B:8E8D: 85 0A     STA ram_000A_t01D_obj_facing
; bzk optimize, useless CLC because of ASL at 0x02CEA1
C - - - - - 0x02CE9F 0B:8E8F: 18        CLC
C - - - - - 0x02CEA0 0B:8E90: 98        TYA
C - - - - - 0x02CEA1 0B:8E91: 0A        ASL
C - - - - - 0x02CEA2 0B:8E92: 7D A8 04  ADC ram_obj_facing,X
C - - - - - 0x02CEA5 0B:8E95: A8        TAY
C - - - - - 0x02CEA6 0B:8E96: 18        CLC
C - - - - - 0x02CEA7 0B:8E97: B9 DC 8E  LDA tbl_8EDC_pos_X_hi,Y
C - - - - - 0x02CEAA 0B:8E9A: 7D 38 04  ADC ram_obj_pos_X_hi,X
C - - - - - 0x02CEAD 0B:8E9D: 85 01     STA ram_0001_t016_pos_X_hi
sub_8E9F:
C - - - - - 0x02CEAF 0B:8E9F: B9 EC 8E  LDA tbl_8EEC_spd_X_hi,Y
C - - - - - 0x02CEB2 0B:8EA2: 85 03     STA ram_0003_t009_spd_X_hi
C - - - - - 0x02CEB4 0B:8EA4: B9 FE 8E  LDA tbl_8EFE_spd_X_lo,Y
C - - - - - 0x02CEB7 0B:8EA7: 85 04     STA ram_0004_t00A_spd_X_lo
C - - - - - 0x02CEB9 0B:8EA9: B9 10 8F  LDA tbl_8F10_spd_Y_hi,Y
C - - - - - 0x02CEBC 0B:8EAC: 85 05     STA ram_0005_t007_spd_Y_hi
C - - - - - 0x02CEBE 0B:8EAE: B9 22 8F  LDA tbl_8F22_spd_Y_lo,Y
C - - - - - 0x02CEC1 0B:8EB1: 85 06     STA ram_0006_t00C_spd_Y_lo
C - - - - - 0x02CEC3 0B:8EB3: 60        RTS



tbl_8EB4_facing:
- - - - - - 0x02CEC4 0B:8EB4: 00        .byte $00   ; 00 
- - - - - - 0x02CEC5 0B:8EB5: 00        .byte $00   ; 01 
- - - - - - 0x02CEC6 0B:8EB6: 00        .byte $00   ; 02 
- D 0 - - - 0x02CEC7 0B:8EB7: 01        .byte $01   ; 03 
- - - - - - 0x02CEC8 0B:8EB8: 00        .byte $00   ; 04 
- D 0 - - - 0x02CEC9 0B:8EB9: 00        .byte $00   ; 05 
- - - - - - 0x02CECA 0B:8EBA: 00        .byte $00   ; 06 
- - - - - - 0x02CECB 0B:8EBB: 00        .byte $00   ; 07 



tbl_8EBC:
- - - - - - 0x02CECC 0B:8EBC: 01        .byte $01   ; 00 
- D 0 - - - 0x02CECD 0B:8EBD: 00        .byte $00   ; 01 
- D 0 - - - 0x02CECE 0B:8EBE: 00        .byte $00   ; 02 
- D 0 - - - 0x02CECF 0B:8EBF: 01        .byte $01   ; 03 
- D 0 - - - 0x02CED0 0B:8EC0: 00        .byte $00   ; 04 
- D 0 - - - 0x02CED1 0B:8EC1: 01        .byte $01   ; 05 
- D 0 - - - 0x02CED2 0B:8EC2: 00        .byte $00   ; 06 
- D 0 - - - 0x02CED3 0B:8EC3: 00        .byte $00   ; 07 



tbl_8EC4_obj_id:
- - - - - - 0x02CED4 0B:8EC4: 40        .byte $40   ; 00 
- D 0 - - - 0x02CED5 0B:8EC5: 41        .byte $41   ; 01 throwing axe by knight
- D 0 - - - 0x02CED6 0B:8EC6: 42        .byte $42   ; 02 
- D 0 - - - 0x02CED7 0B:8EC7: 40        .byte $40   ; 03 
- D 0 - - - 0x02CED8 0B:8EC8: 43        .byte $43   ; 04 
- D 0 - - - 0x02CED9 0B:8EC9: 44        .byte $44   ; 05 
- D 0 - - - 0x02CEDA 0B:8ECA: 45        .byte $45   ; 06 
- D 0 - - - 0x02CEDB 0B:8ECB: 41        .byte $41   ; 07 



tbl_8ECC:
- - - - - - 0x02CEDC 0B:8ECC: FE        .byte $FE   ; 00 
- D 0 - - - 0x02CEDD 0B:8ECD: F6        .byte $F6   ; 01 
- D 0 - - - 0x02CEDE 0B:8ECE: 04        .byte $04   ; 02 
- D 0 - - - 0x02CEDF 0B:8ECF: F7        .byte $F7   ; 03 
- D 0 - - - 0x02CEE0 0B:8ED0: F4        .byte $F4   ; 04 
- D 0 - - - 0x02CEE1 0B:8ED1: FB        .byte $FB   ; 05 
- D 0 - - - 0x02CEE2 0B:8ED2: 00        .byte $00   ; 06 
- D 0 - - - 0x02CEE3 0B:8ED3: 09        .byte $09   ; 07 



tbl_8ED4:
- - - - - - 0x02CEE4 0B:8ED4: 58        .byte $58   ; 00 
- D 0 - - - 0x02CEE5 0B:8ED5: 59        .byte $59   ; 01 
- D 0 - - - 0x02CEE6 0B:8ED6: 5A        .byte $5A   ; 02 
- D 0 - - - 0x02CEE7 0B:8ED7: 58        .byte $58   ; 03 
- D 0 - - - 0x02CEE8 0B:8ED8: 5B        .byte $5B   ; 04 
- D 0 - - - 0x02CEE9 0B:8ED9: 5C        .byte $5C   ; 05 
- D 0 - - - 0x02CEEA 0B:8EDA: 5D        .byte $5D   ; 06 
- D 0 - - - 0x02CEEB 0B:8EDB: 59        .byte $59   ; 07 



tbl_8EDC_pos_X_hi:
;                                              +---------- facing right
;                                              |    +----- facing left
;                                              |    |
- - - - - - 0x02CEEC 0B:8EDC: 08        .byte $08, $F8   ; 00 
- D 0 - - - 0x02CEEE 0B:8EDE: 14        .byte $14, $EC   ; 01 
- D 0 - - - 0x02CEF0 0B:8EE0: 04        .byte $04, $FC   ; 02 
- D 0 - - - 0x02CEF2 0B:8EE2: 08        .byte $08, $F8   ; 03 
- D 0 - - - 0x02CEF4 0B:8EE4: 00        .byte $00, $00   ; 04 
- D 0 - - - 0x02CEF6 0B:8EE6: 08        .byte $08, $F8   ; 05 
- - - - - - 0x02CEF8 0B:8EE8: 00        .byte $00, $00   ; 06 
- D 0 - - - 0x02CEFA 0B:8EEA: 08        .byte $08, $F8   ; 07 



tbl_8EEC_spd_X_hi:
- D 0 - - - 0x02CEFC 0B:8EEC: 02        .byte > $0200   ; 00 
- D 0 - - - 0x02CEFD 0B:8EED: FE        .byte > $FE00   ; 01 
- D 0 - - - 0x02CEFE 0B:8EEE: 01        .byte > $0180   ; 02 
- D 0 - - - 0x02CEFF 0B:8EEF: FE        .byte > $FE80   ; 03 
- D 0 - - - 0x02CF00 0B:8EF0: 00        .byte > $0000   ; 04 
- D 0 - - - 0x02CF01 0B:8EF1: 00        .byte > $0000   ; 05 
- D 0 - - - 0x02CF02 0B:8EF2: 01        .byte > $0180   ; 06 
- D 0 - - - 0x02CF03 0B:8EF3: FE        .byte > $FE80   ; 07 
- D 0 - - - 0x02CF04 0B:8EF4: 00        .byte > $00C0   ; 08 
- D 0 - - - 0x02CF05 0B:8EF5: FF        .byte > $FF40   ; 09 
- D 0 - - - 0x02CF06 0B:8EF6: 01        .byte > $0180   ; 0A 
- D 0 - - - 0x02CF07 0B:8EF7: FE        .byte > $FE80   ; 0B 
- - - - - - 0x02CF08 0B:8EF8: 01        .byte > $0180   ; 0C 
- D 0 - - - 0x02CF09 0B:8EF9: FE        .byte > $FE80   ; 0D 
- D 0 - - - 0x02CF0A 0B:8EFA: 01        .byte > $0180   ; 0E 
- D 0 - - - 0x02CF0B 0B:8EFB: FE        .byte > $FE80   ; 0F 
- D 0 - - - 0x02CF0C 0B:8EFC: 02        .byte > $0240   ; 10 
- D 0 - - - 0x02CF0D 0B:8EFD: FD        .byte > $FDC0   ; 11 



tbl_8EFE_spd_X_lo:
- D 0 - - - 0x02CF0E 0B:8EFE: 00        .byte < $0200   ; 00 
- D 0 - - - 0x02CF0F 0B:8EFF: 00        .byte < $FE00   ; 01 
- D 0 - - - 0x02CF10 0B:8F00: 80        .byte < $0180   ; 02 
- D 0 - - - 0x02CF11 0B:8F01: 80        .byte < $FE80   ; 03 
- D 0 - - - 0x02CF12 0B:8F02: 00        .byte < $0000   ; 04 
- D 0 - - - 0x02CF13 0B:8F03: 00        .byte < $0000   ; 05 
- D 0 - - - 0x02CF14 0B:8F04: 80        .byte < $0180   ; 06 
- D 0 - - - 0x02CF15 0B:8F05: 80        .byte < $FE80   ; 07 
- D 0 - - - 0x02CF16 0B:8F06: C0        .byte < $00C0   ; 08 
- D 0 - - - 0x02CF17 0B:8F07: 40        .byte < $FF40   ; 09 
- D 0 - - - 0x02CF18 0B:8F08: 80        .byte < $0180   ; 0A 
- D 0 - - - 0x02CF19 0B:8F09: 80        .byte < $FE80   ; 0B 
- - - - - - 0x02CF1A 0B:8F0A: 80        .byte < $0180   ; 0C 
- D 0 - - - 0x02CF1B 0B:8F0B: 80        .byte < $FE80   ; 0D 
- D 0 - - - 0x02CF1C 0B:8F0C: 80        .byte < $0180   ; 0E 
- D 0 - - - 0x02CF1D 0B:8F0D: 80        .byte < $FE80   ; 0F 
- D 0 - - - 0x02CF1E 0B:8F0E: 40        .byte < $0240   ; 10 
- D 0 - - - 0x02CF1F 0B:8F0F: C0        .byte < $FDC0   ; 11 



tbl_8F10_spd_Y_hi:
- D 0 - - - 0x02CF20 0B:8F10: 00        .byte > $0000   ; 00 
- D 0 - - - 0x02CF21 0B:8F11: 00        .byte > $0000   ; 01 
- D 0 - - - 0x02CF22 0B:8F12: 00        .byte > $0000   ; 02 
- D 0 - - - 0x02CF23 0B:8F13: 00        .byte > $0000   ; 03 
- D 0 - - - 0x02CF24 0B:8F14: 01        .byte > $0180   ; 04 
- D 0 - - - 0x02CF25 0B:8F15: 01        .byte > $0180   ; 05 
- D 0 - - - 0x02CF26 0B:8F16: 00        .byte > $0000   ; 06 
- D 0 - - - 0x02CF27 0B:8F17: 00        .byte > $0000   ; 07 
- D 0 - - - 0x02CF28 0B:8F18: FD        .byte > $FD40   ; 08 
- D 0 - - - 0x02CF29 0B:8F19: FD        .byte > $FD40   ; 09 
- D 0 - - - 0x02CF2A 0B:8F1A: 00        .byte > $0000   ; 0A 
- D 0 - - - 0x02CF2B 0B:8F1B: 00        .byte > $0000   ; 0B 
- - - - - - 0x02CF2C 0B:8F1C: 00        .byte > $0000   ; 0C 
- D 0 - - - 0x02CF2D 0B:8F1D: 00        .byte > $0000   ; 0D 
- D 0 - - - 0x02CF2E 0B:8F1E: 00        .byte > $0000   ; 0E 
- D 0 - - - 0x02CF2F 0B:8F1F: 00        .byte > $0000   ; 0F 
- D 0 - - - 0x02CF30 0B:8F20: 00        .byte > $0000   ; 10 
- D 0 - - - 0x02CF31 0B:8F21: 00        .byte > $0000   ; 11 



tbl_8F22_spd_Y_lo:
- D 0 - - - 0x02CF32 0B:8F22: 00        .byte < $0000   ; 00 
- D 0 - - - 0x02CF33 0B:8F23: 00        .byte < $0000   ; 01 
- D 0 - - - 0x02CF34 0B:8F24: 00        .byte < $0000   ; 02 
- D 0 - - - 0x02CF35 0B:8F25: 00        .byte < $0000   ; 03 
- D 0 - - - 0x02CF36 0B:8F26: 80        .byte < $0180   ; 04 
- D 0 - - - 0x02CF37 0B:8F27: 80        .byte < $0180   ; 05 
- D 0 - - - 0x02CF38 0B:8F28: 00        .byte < $0000   ; 06 
- D 0 - - - 0x02CF39 0B:8F29: 00        .byte < $0000   ; 07 
- D 0 - - - 0x02CF3A 0B:8F2A: 40        .byte < $FD40   ; 08 
- D 0 - - - 0x02CF3B 0B:8F2B: 40        .byte < $FD40   ; 09 
- D 0 - - - 0x02CF3C 0B:8F2C: 00        .byte < $0000   ; 0A 
- D 0 - - - 0x02CF3D 0B:8F2D: 00        .byte < $0000   ; 0B 
- - - - - - 0x02CF3E 0B:8F2E: 00        .byte < $0000   ; 0C 
- D 0 - - - 0x02CF3F 0B:8F2F: 00        .byte < $0000   ; 0D 
- D 0 - - - 0x02CF40 0B:8F30: 00        .byte < $0000   ; 0E 
- D 0 - - - 0x02CF41 0B:8F31: 00        .byte < $0000   ; 0F 
- D 0 - - - 0x02CF42 0B:8F32: 00        .byte < $0000   ; 10 
- D 0 - - - 0x02CF43 0B:8F33: 00        .byte < $0000   ; 11 



ofs_039_8F34_02:
C - - J - - 0x02CF44 0B:8F34: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02CF47 0B:8F37: A9 04     LDA #$04
C - - - - - 0x02CF49 0B:8F39: 85 08     STA ram_0008_t041
C - - - - - 0x02CF4B 0B:8F3B: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x02CF4E 0B:8F3E: 85 00     STA ram_0000_t05A_copy_obj_pos_X_hi
C - - - - - 0x02CF50 0B:8F40: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x02CF53 0B:8F43: 85 01     STA ram_0001_t015_copy_obj_pos_Y_hi
C - - - - - 0x02CF55 0B:8F45: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x02CF58 0B:8F48: 09 40     ORA #con_obj_flag_40
C - - - - - 0x02CF5A 0B:8F4A: 29 FB     AND #con_obj_flag_04 ^ $FF
C - - - - - 0x02CF5C 0B:8F4C: 85 09     STA ram_0009_t005_some_obj_flags
bra_8F4E_loop:
C - - - - - 0x02CF5E 0B:8F4E: 20 E3 80  JSR sub_80E3_find_empty_object_slot_09_0C
C - - - - - 0x02CF61 0B:8F51: D0 3C     BNE bra_8F8F_no_empty_slots
C - - - - - 0x02CF63 0B:8F53: 20 D7 FE  JSR sub_0x03FEE7_clear_object_speed_and_data
C - - - - - 0x02CF66 0B:8F56: A9 46     LDA #$46
C - - - - - 0x02CF68 0B:8F58: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x02CF6B 0B:8F5B: A9 5E     LDA #$5E
C - - - - - 0x02CF6D 0B:8F5D: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x02CF70 0B:8F60: A5 09     LDA ram_0009_t005_some_obj_flags
C - - - - - 0x02CF72 0B:8F62: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x02CF75 0B:8F65: A5 00     LDA ram_0000_t05A_copy_obj_pos_X_hi
C - - - - - 0x02CF77 0B:8F67: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x02CF7A 0B:8F6A: A5 01     LDA ram_0001_t015_copy_obj_pos_Y_hi
C - - - - - 0x02CF7C 0B:8F6C: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x02CF7F 0B:8F6F: A4 08     LDY ram_0008_t041
C - - - - - 0x02CF81 0B:8F71: B9 92 8F  LDA tbl_8F92_spd_X_hi,Y
C - - - - - 0x02CF84 0B:8F74: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x02CF87 0B:8F77: B9 97 8F  LDA tbl_8F97_spd_X_lo,Y
C - - - - - 0x02CF8A 0B:8F7A: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x02CF8D 0B:8F7D: A9 FF     LDA #$FF
C - - - - - 0x02CF8F 0B:8F7F: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x02CF92 0B:8F82: B9 9C 8F  LDA tbl_8F9C_spd_Y_lo,Y
C - - - - - 0x02CF95 0B:8F85: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x02CF98 0B:8F88: 20 C9 9F  JSR sub_9FC9
C - - - - - 0x02CF9B 0B:8F8B: C6 08     DEC ram_0008_t041
C - - - - - 0x02CF9D 0B:8F8D: D0 BF     BNE bra_8F4E_loop
bra_8F8F_no_empty_slots:
C - - - - - 0x02CF9F 0B:8F8F: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02CFA1 0B:8F91: 60        RTS



tbl_8F92_spd_X_hi:
- - - - - - 0x02CFA2 0B:8F92: 00        .byte > $0000   ; 00 placeholder 0x02CF9D
- D 0 - - - 0x02CFA3 0B:8F93: FF        .byte > $FFA0   ; 01 
- D 0 - - - 0x02CFA4 0B:8F94: FF        .byte > $FFD8   ; 02 
- D 0 - - - 0x02CFA5 0B:8F95: 00        .byte > $0028   ; 03 
- D 0 - - - 0x02CFA6 0B:8F96: 00        .byte > $0050   ; 04 



tbl_8F97_spd_X_lo:
- - - - - - 0x02CFA7 0B:8F97: 00        .byte < $0000   ; 00 placeholder 0x02CF9D
- D 0 - - - 0x02CFA8 0B:8F98: A0        .byte < $FFA0   ; 01 
- D 0 - - - 0x02CFA9 0B:8F99: D8        .byte < $FFD8   ; 02 
- D 0 - - - 0x02CFAA 0B:8F9A: 28        .byte < $0028   ; 03 
- D 0 - - - 0x02CFAB 0B:8F9B: 50        .byte < $0050   ; 04 



tbl_8F9C_spd_Y_lo:
; high byte FF is at 0x02CF8D
- - - - - - 0x02CFAC 0B:8F9C: 00        .byte < $FF00   ; 00 placeholder 0x02CF9D
- D 0 - - - 0x02CFAD 0B:8F9D: C0        .byte < $FFC0   ; 01 
- D 0 - - - 0x02CFAE 0B:8F9E: 80        .byte < $FF80   ; 02 
- D 0 - - - 0x02CFAF 0B:8F9F: 80        .byte < $FF80   ; 03 
- D 0 - - - 0x02CFB0 0B:8FA0: C0        .byte < $FFC0   ; 04 



ofs_039_8FA1_A2:
- - - - - - 0x02CFB1 0B:8FA1: A9 38     LDA #con_sound_38
- - - - - - 0x02CFB3 0B:8FA3: 20 5F E2  JSR sub_0x03E26F_play_sound
- - - - - - 0x02CFB6 0B:8FA6: BD 70 04  LDA ram_obj_flags,X
- - - - - - 0x02CFB9 0B:8FA9: 29 F1     AND #(con_obj_flag_02 + con_obj_flag_04 + con_obj_flag_08) ^ $FF
- - - - - - 0x02CFBB 0B:8FAB: 09 60     ORA #con_obj_flag_20 + con_obj_flag_40
- - - - - - 0x02CFBD 0B:8FAD: 85 04     STA ram_0004_t009_some_obj_flags
- - - - - - 0x02CFBF 0B:8FAF: 20 2F B5  JSR sub_B52F
- - - - - - 0x02CFC2 0B:8FB2: 9D 4E 05  STA ram_obj_id,X
- - - - - - 0x02CFC5 0B:8FB5: BD 1C 04  LDA ram_obj_pos_Y_hi,X
- - - - - - 0x02CFC8 0B:8FB8: 85 00     STA ram_0000_t059_pos_Y_hi
- - - - - - 0x02CFCA 0B:8FBA: BD 38 04  LDA ram_obj_pos_X_hi,X
- - - - - - 0x02CFCD 0B:8FBD: 85 01     STA ram_0001_t014_copy_obj_pos_X_hi
- - - - - - 0x02CFCF 0B:8FBF: A9 03     LDA #$03
- - - - - - 0x02CFD1 0B:8FC1: 85 03     STA ram_0003_t008_objects_counter
loc_8FC3_loop:
- - - - - - 0x02CFD3 0B:8FC3: 20 E3 80  JSR sub_80E3_find_empty_object_slot_09_0C
- - - - - - 0x02CFD6 0B:8FC6: D0 1C     BNE bra_8FE4_no_empty_slots
- - - - - - 0x02CFD8 0B:8FC8: C6 03     DEC ram_0003_t008_objects_counter
- - - - - - 0x02CFDA 0B:8FCA: F0 18     BEQ bra_8FE4
- - - - - - 0x02CFDC 0B:8FCC: 20 4F 8B  JSR sub_8B4F_write_positions
- - - - - - 0x02CFDF 0B:8FCF: A9 6C     LDA #$6C
- - - - - - 0x02CFE1 0B:8FD1: 9D 4E 05  STA ram_obj_id,X
- - - - - - 0x02CFE4 0B:8FD4: A9 6C     LDA #$6C
- - - - - - 0x02CFE6 0B:8FD6: 9D EF 05  STA ram_05EF_obj,X
- - - - - - 0x02CFE9 0B:8FD9: A5 04     LDA ram_0004_t009_some_obj_flags
- - - - - - 0x02CFEB 0B:8FDB: 9D 70 04  STA ram_obj_flags,X
- - - - - - 0x02CFEE 0B:8FDE: 20 2F B5  JSR sub_B52F
- - - - - - 0x02CFF1 0B:8FE1: 4C C3 8F  JMP loc_8FC3_loop
bra_8FE4_no_empty_slots:
bra_8FE4:
- - - - - - 0x02CFF4 0B:8FE4: A6 6C     LDX ram_006C_object_index
- - - - - - 0x02CFF6 0B:8FE6: 60        RTS



ofs_039_8FE7_6C_play_sound:
C - - J - - 0x02CFF7 0B:8FE7: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02CFFA 0B:8FEA: A0 01     LDY #$01
C - - - - - 0x02CFFC 0B:8FEC: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02CFFE 0B:8FEE: 4C 5F E2  JMP loc_0x03E26F_play_sound



ofs_039_8FF1_29:
C - - J - - 0x02D001 0B:8FF1: 20 C2 90  JSR sub_90C2
C - - - - - 0x02D004 0B:8FF4: 20 B0 93  JSR sub_93B0
C - - - - - 0x02D007 0B:8FF7: A0 10     LDY #$10    ; pos_Y_hi
C - - - - - 0x02D009 0B:8FF9: 20 1E FC  JSR sub_0x03FC2E
C - - - - - 0x02D00C 0B:8FFC: F0 24     BEQ bra_9022
C - - - - - 0x02D00E 0B:8FFE: C9 04     CMP #$04
C - - - - - 0x02D010 0B:9000: F0 20     BEQ bra_9022
C - - - - - 0x02D012 0B:9002: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02D014 0B:9004: 20 B0 93  JSR sub_93B0
C - - - - - 0x02D017 0B:9007: A0 08     LDY #$08    ; pos_Y_hi
C - - - - - 0x02D019 0B:9009: 20 1E FC  JSR sub_0x03FC2E
C - - - - - 0x02D01C 0B:900C: D0 14     BNE bra_9022
C - - - - - 0x02D01E 0B:900E: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02D020 0B:9010: 20 B0 93  JSR sub_93B0
C - - - - - 0x02D023 0B:9013: A0 F8     LDY #$F8    ; pos_Y_hi
C - - - - - 0x02D025 0B:9015: 20 1E FC  JSR sub_0x03FC2E
C - - - - - 0x02D028 0B:9018: D0 08     BNE bra_9022
C - - - - - 0x02D02A 0B:901A: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02D02C 0B:901C: DE 1D 06  DEC ram_061D_obj,X
C - - - - - 0x02D02F 0B:901F: F0 1B     BEQ bra_903C
C - - - - - 0x02D031 0B:9021: 60        RTS
bra_9022:
C - - - - - 0x02D032 0B:9022: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02D034 0B:9024: 4C 4B 80  JMP loc_804B_invert_spd_X



ofs_039_9027_28:
C - - J - - 0x02D037 0B:9027: 20 40 82  JSR sub_8240
C - - - - - 0x02D03A 0B:902A: 20 AA 81  JSR sub_81AA
C - - - - - 0x02D03D 0B:902D: BD 57 06  LDA ram_obj_0658,X
C - - - - - 0x02D040 0B:9030: 09 03     ORA #$03
C - - - - - 0x02D042 0B:9032: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x02D045 0B:9035: A9 08     LDA #con_obj_type_08
C - - - - - 0x02D047 0B:9037: A0 0D     LDY #$0D
C - - - - - 0x02D049 0B:9039: 20 93 82  JSR sub_8293
bra_903C:
C - - - - - 0x02D04C 0B:903C: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x02D04F 0B:903F: 29 80     AND #$80
C - - - - - 0x02D051 0B:9041: D0 1E     BNE bra_9061
C - - - - - 0x02D053 0B:9043: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x02D056 0B:9046: 29 30     AND #$30
C - - - - - 0x02D058 0B:9048: F0 2C     BEQ bra_9076
; / 10
C - - - - - 0x02D05A 0B:904A: 4A        LSR
C - - - - - 0x02D05B 0B:904B: 4A        LSR
C - - - - - 0x02D05C 0B:904C: 4A        LSR
C - - - - - 0x02D05D 0B:904D: 4A        LSR
C - - - - - 0x02D05E 0B:904E: A8        TAY
C - - - - - 0x02D05F 0B:904F: 88        DEY
C - - - - - 0x02D060 0B:9050: 98        TYA
; * 10
C - - - - - 0x02D061 0B:9051: 0A        ASL
C - - - - - 0x02D062 0B:9052: 0A        ASL
C - - - - - 0x02D063 0B:9053: 0A        ASL
C - - - - - 0x02D064 0B:9054: 0A        ASL
C - - - - - 0x02D065 0B:9055: 85 00     STA ram_0000_t05D
C - - - - - 0x02D067 0B:9057: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x02D06A 0B:905A: 29 CF     AND #$CF
C - - - - - 0x02D06C 0B:905C: 05 00     ORA ram_0000_t05D
C - - - - - 0x02D06E 0B:905E: 9D 33 06  STA ram_obj_0634,X
loc_9061:
bra_9061:
C D 0 - - - 0x02D071 0B:9061: A9 21     LDA #$21
C - - - - - 0x02D073 0B:9063: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x02D076 0B:9066: 20 43 82  JSR sub_8243
C - - - - - 0x02D079 0B:9069: 20 B3 80  JSR sub_80B3_get_object_distance_X_to_player
C - - - - - 0x02D07C 0B:906C: C9 60     CMP #$60
C - - - - - 0x02D07E 0B:906E: 90 3C     BCC bra_90AC
C - - - - - 0x02D080 0B:9070: 20 34 91  JSR sub_9134_check_player_side_related_to_object_2
C - - - - - 0x02D083 0B:9073: 4C AF 90  JMP loc_90AF
bra_9076:
C - - - - - 0x02D086 0B:9076: 20 7C 90  JSR sub_907C
C - - - - - 0x02D089 0B:9079: 4C 61 90  JMP loc_9061
sub_907C:
C - - - - - 0x02D08C 0B:907C: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x02D08F 0B:907F: 29 81     AND #con_obj_flag_01 + con_obj_flag_not_visible
C - - - - - 0x02D091 0B:9081: D0 26     BNE bra_90A9_RTS
C - - - - - 0x02D093 0B:9083: 20 B9 FE  JSR sub_0x03FEC9_find_empty_object_slot_01_0C
C - - - - - 0x02D096 0B:9086: D0 21     BNE bra_90A9_RTS    ; if not found
; if found
C - - - - - 0x02D098 0B:9088: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02D09A 0B:908A: 20 EF 81  JSR sub_81EF
C - - - - - 0x02D09D 0B:908D: 20 9E 81  JSR sub_819E
C - - - - - 0x02D0A0 0B:9090: A5 1A     LDA ram_frm_cnt
C - - - - - 0x02D0A2 0B:9092: 7D 38 04  ADC ram_obj_pos_X_hi,X
C - - - - - 0x02D0A5 0B:9095: 29 01     AND #$01
C - - - - - 0x02D0A7 0B:9097: A8        TAY
C - - - - - 0x02D0A8 0B:9098: B9 AA 90  LDA tbl_90AA,Y
C - - - - - 0x02D0AB 0B:909B: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x02D0AE 0B:909E: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02D0B1 0B:90A1: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x02D0B4 0B:90A4: 09 10     ORA #$10
C - - - - - 0x02D0B6 0B:90A6: 9D 33 06  STA ram_obj_0634,X
bra_90A9_RTS:
C - - - - - 0x02D0B9 0B:90A9: 60        RTS



tbl_90AA:
- D 0 - - - 0x02D0BA 0B:90AA: 30        .byte $30   ; 00 
- D 0 - - - 0x02D0BB 0B:90AB: 52        .byte $52   ; 01 



bra_90AC:
C - - - - - 0x02D0BC 0B:90AC: 20 27 91  JSR sub_9127_check_player_side_related_to_object_1



loc_90AF:
C D 0 - - - 0x02D0BF 0B:90AF: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x02D0C2 0B:90B2: 29 01     AND #con_obj_flag_01
C - - - - - 0x02D0C4 0B:90B4: F0 04     BEQ bra_90BA
C - - - - - 0x02D0C6 0B:90B6: 98        TYA
C - - - - - 0x02D0C7 0B:90B7: 49 01     EOR #$01
C - - - - - 0x02D0C9 0B:90B9: A8        TAY
bra_90BA:
C - - - - - 0x02D0CA 0B:90BA: 98        TYA
C - - - - - 0x02D0CB 0B:90BB: 18        CLC
C - - - - - 0x02D0CC 0B:90BC: 69 02     ADC #$02
C - - - - - 0x02D0CE 0B:90BE: A8        TAY
C - - - - - 0x02D0CF 0B:90BF: 4C 8B 93  JMP loc_938B



sub_90C2:
C - - - - - 0x02D0D2 0B:90C2: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x02D0D5 0B:90C5: 29 80     AND #$80
C - - - - - 0x02D0D7 0B:90C7: F0 2C     BEQ bra_90F5_RTS
C - - - - - 0x02D0D9 0B:90C9: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x02D0DC 0B:90CC: 29 0F     AND #$0F
C - - - - - 0x02D0DE 0B:90CE: A8        TAY
C - - - - - 0x02D0DF 0B:90CF: 84 00     STY ram_0000_t05E
C - - - - - 0x02D0E1 0B:90D1: B9 4E 05  LDA ram_obj_id,Y
C - - - - - 0x02D0E4 0B:90D4: F0 20     BEQ bra_90F6
C - - - - - 0x02D0E6 0B:90D6: A4 00     LDY ram_0000_t05E
C - - - - - 0x02D0E8 0B:90D8: B9 38 04  LDA ram_obj_pos_X_hi,Y
C - - - - - 0x02D0EB 0B:90DB: 85 10     STA ram_0010_t013_distance_X
C - - - - - 0x02D0ED 0B:90DD: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02D0EF 0B:90DF: 20 CB 80  JSR sub_80CB_get_object_distance_X_to_0010
C - - - - - 0x02D0F2 0B:90E2: C9 04     CMP #$04
C - - - - - 0x02D0F4 0B:90E4: B0 0F     BCS bra_90F5_RTS
; if close enough
C - - - - - 0x02D0F6 0B:90E6: 20 F6 90  JSR sub_90F6
C - - - - - 0x02D0F9 0B:90E9: A9 00     LDA #$00
C - - - - - 0x02D0FB 0B:90EB: A4 00     LDY ram_0000_t05E
C - - - - - 0x02D0FD 0B:90ED: 99 00 04  STA ram_obj_anim_id,Y
C - - - - - 0x02D100 0B:90F0: 99 4E 05  STA ram_obj_id,Y
C - - - - - 0x02D103 0B:90F3: A6 6C     LDX ram_006C_object_index
bra_90F5_RTS:
C - - - - - 0x02D105 0B:90F5: 60        RTS
bra_90F6:
sub_90F6:
C - - - - - 0x02D106 0B:90F6: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x02D109 0B:90F9: 29 7F     AND #$7F
C - - - - - 0x02D10B 0B:90FB: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x02D10E 0B:90FE: 60        RTS



ofs_039_90FF_2C:
C - - J - - 0x02D10F 0B:90FF: A0 01     LDY #$01
C - - - - - 0x02D111 0B:9101: BD 00 04  LDA ram_obj_anim_id,X
C - - - - - 0x02D114 0B:9104: C9 32     CMP #$32
C - - - - - 0x02D116 0B:9106: F0 02     BEQ bra_910A
C - - - - - 0x02D118 0B:9108: A0 07     LDY #$07
bra_910A:
C - - - - - 0x02D11A 0B:910A: 20 11 8E  JSR sub_8E11
C - - - - - 0x02D11D 0B:910D: A5 08     LDA ram_0008_temp
C - - - - - 0x02D11F 0B:910F: 29 0F     AND #$0F
C - - - - - 0x02D121 0B:9111: 09 80     ORA #$80
C - - - - - 0x02D123 0B:9113: 85 09     STA ram_0009_t01F
C - - - - - 0x02D125 0B:9115: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x02D128 0B:9118: 29 70     AND #$70
C - - - - - 0x02D12A 0B:911A: 05 09     ORA ram_0009_t01F
C - - - - - 0x02D12C 0B:911C: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x02D12F 0B:911F: A9 00     LDA #$00
C - - - - - 0x02D131 0B:9121: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x02D134 0B:9124: 4C F8 81  JMP loc_81F8



sub_9127_check_player_side_related_to_object_1:
; out
    ; Y
        ; 00 = player is to the right of the object
        ; 01 = player is to the left of the object
C - - - - - 0x02D137 0B:9127: A0 01     LDY #$01
C - - - - - 0x02D139 0B:9129: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x02D13C 0B:912C: DD 38 04  CMP ram_obj_pos_X_hi,X
C - - - - - 0x02D13F 0B:912F: 90 02     BCC bra_9133_RTS
C - - - - - 0x02D141 0B:9131: A0 00     LDY #$00
bra_9133_RTS:
C - - - - - 0x02D143 0B:9133: 60        RTS



sub_9134_check_player_side_related_to_object_2:
; out
    ; Y
        ; 00 = player is to the left of the object
        ; 01 = player is to the right of the object
C - - - - - 0x02D144 0B:9134: A0 00     LDY #$00
C - - - - - 0x02D146 0B:9136: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x02D149 0B:9139: DD 38 04  CMP ram_obj_pos_X_hi,X
; bzk optimize, branch to RTS at 0x02D14E for readability
C - - - - - 0x02D14C 0B:913C: 90 F5     BCC bra_9133_RTS
C - - - - - 0x02D14E 0B:913E: A0 01     LDY #$01
C - - - - - 0x02D150 0B:9140: 60        RTS



ofs_039_9141_2F:
C - - J - - 0x02D151 0B:9141: BD EF 05  LDA ram_05EF_obj,X
C - - - - - 0x02D154 0B:9144: C9 14     CMP #$14
C - - - - - 0x02D156 0B:9146: F0 04     BEQ bra_914C
C - - - - - 0x02D158 0B:9148: C9 13     CMP #$13
C - - - - - 0x02D15A 0B:914A: D0 07     BNE bra_9153
bra_914C:
C - - - - - 0x02D15C 0B:914C: A0 0D     LDY #$0D
C - - - - - 0x02D15E 0B:914E: 20 A6 B7  JSR sub_B7A6
C - - - - - 0x02D161 0B:9151: F0 3F     BEQ bra_9192
bra_9153:
C - - - - - 0x02D163 0B:9153: A0 05     LDY #$05
C - - - - - 0x02D165 0B:9155: 20 A6 B7  JSR sub_B7A6
C - - - - - 0x02D168 0B:9158: F0 25     BEQ bra_917F
C - - - - - 0x02D16A 0B:915A: 20 91 8B  JSR sub_8B91
C - - - - - 0x02D16D 0B:915D: BD EF 05  LDA ram_05EF_obj,X
C - - - - - 0x02D170 0B:9160: C9 29     CMP #$29
C - - - - - 0x02D172 0B:9162: D0 14     BNE bra_9178
C - - - - - 0x02D174 0B:9164: A5 32     LDA ram_blk_id_hi
C - - - - - 0x02D176 0B:9166: C9 09     CMP #$09
C - - - - - 0x02D178 0B:9168: D0 0E     BNE bra_9178
- - - - - - 0x02D17A 0B:916A: A5 57     LDA ram_cam_pos_hi
- - - - - - 0x02D17C 0B:916C: D0 0A     BNE bra_9178
- - - - - - 0x02D17E 0B:916E: 18        CLC
- - - - - - 0x02D17F 0B:916F: A5 56     LDA ram_cam_pos_lo
- - - - - - 0x02D181 0B:9171: 7D 38 04  ADC ram_obj_pos_X_hi,X
- - - - - - 0x02D184 0B:9174: C9 70     CMP #$70
- - - - - - 0x02D186 0B:9176: 90 07     BCC bra_917F
bra_9178:
C - - - - - 0x02D188 0B:9178: A0 00     LDY #$00
C - - - - - 0x02D18A 0B:917A: 20 A6 B7  JSR sub_B7A6
C - - - - - 0x02D18D 0B:917D: F0 05     BEQ bra_9184
bra_917F:
C - - - - - 0x02D18F 0B:917F: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02D191 0B:9181: 4C 5E 89  JMP loc_895E
bra_9184:
C - - - - - 0x02D194 0B:9184: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02D196 0B:9186: DE 06 06  DEC ram_obj_config,X
C - - - - - 0x02D199 0B:9189: D0 06     BNE bra_9191_RTS
C - - - - - 0x02D19B 0B:918B: 20 9E 81  JSR sub_819E
C - - - - - 0x02D19E 0B:918E: FE C1 05  INC ram_05C1_obj,X
bra_9191_RTS:
C - - - - - 0x02D1A1 0B:9191: 60        RTS
bra_9192:
C - - - - - 0x02D1A2 0B:9192: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x02D1A5 0B:9195: A9 01     LDA #$01
C - - - - - 0x02D1A7 0B:9197: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x02D1AA 0B:919A: BD EF 05  LDA ram_05EF_obj,X
C - - - - - 0x02D1AD 0B:919D: C9 14     CMP #$14
C - - - - - 0x02D1AF 0B:919F: F0 04     BEQ bra_91A5
C - - - - - 0x02D1B1 0B:91A1: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02D1B4 0B:91A4: 60        RTS
bra_91A5:
- - - - - - 0x02D1B5 0B:91A5: A9 25     LDA #$25
- - - - - - 0x02D1B7 0B:91A7: 9D C1 05  STA ram_05C1_obj,X
- - - - - - 0x02D1BA 0B:91AA: 60        RTS



ofs_039_91AB_66:
C - - J - - 0x02D1BB 0B:91AB: A0 05     LDY #$05
C - - - - - 0x02D1BD 0B:91AD: 20 A6 B7  JSR sub_B7A6
C - - - - - 0x02D1C0 0B:91B0: F0 CD     BEQ bra_917F
C - - - - - 0x02D1C2 0B:91B2: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02D1C4 0B:91B4: A0 00     LDY #$00
C - - - - - 0x02D1C6 0B:91B6: 20 A6 B7  JSR sub_B7A6
C - - - - - 0x02D1C9 0B:91B9: D0 C4     BNE bra_917F
C - - - - - 0x02D1CB 0B:91BB: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02D1CD 0B:91BD: DE 06 06  DEC ram_obj_config,X
C - - - - - 0x02D1D0 0B:91C0: D0 20     BNE bra_91E2
C - - - - - 0x02D1D2 0B:91C2: A9 40     LDA #$40
C - - - - - 0x02D1D4 0B:91C4: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x02D1D7 0B:91C7: 20 30 82  JSR sub_8230
C - - - - - 0x02D1DA 0B:91CA: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x02D1DD 0B:91CD: D0 0B     BNE bra_91DA_facing_left
C - - - - - 0x02D1DF 0B:91CF: BD F2 04  LDA ram_obj_spd_X_hi,X
C - - - - - 0x02D1E2 0B:91D2: 10 0E     BPL bra_91E2
C - - - - - 0x02D1E4 0B:91D4: 20 4B 80  JSR sub_804B_invert_spd_X
C - - - - - 0x02D1E7 0B:91D7: 4C E2 91  JMP loc_91E2
bra_91DA_facing_left:
C - - - - - 0x02D1EA 0B:91DA: BD F2 04  LDA ram_obj_spd_X_hi,X
C - - - - - 0x02D1ED 0B:91DD: 30 03     BMI bra_91E2
C - - - - - 0x02D1EF 0B:91DF: 20 4B 80  JSR sub_804B_invert_spd_X
bra_91E2:
loc_91E2:
C D 0 - - - 0x02D1F2 0B:91E2: BD 00 04  LDA ram_obj_anim_id,X
C - - - - - 0x02D1F5 0B:91E5: C9 2C     CMP #$2C
C - - - - - 0x02D1F7 0B:91E7: D0 64     BNE bra_924D
C - - - - - 0x02D1F9 0B:91E9: BD 7C 05  LDA ram_obj_anim_timer,X
C - - - - - 0x02D1FC 0B:91EC: C9 10     CMP #$10
C - - - - - 0x02D1FE 0B:91EE: D0 5D     BNE bra_924D
C - - - - - 0x02D200 0B:91F0: A0 0B     LDY #$0B
C - - - - - 0x02D202 0B:91F2: 20 A6 B7  JSR sub_B7A6
C - - - - - 0x02D205 0B:91F5: F0 56     BEQ bra_924D
C - - - - - 0x02D207 0B:91F7: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02D209 0B:91F9: BC A8 04  LDY ram_obj_facing,X
C - - - - - 0x02D20C 0B:91FC: 18        CLC
C - - - - - 0x02D20D 0B:91FD: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x02D210 0B:9200: 69 07     ADC #$07
C - - - - - 0x02D212 0B:9202: 85 01     STA ram_0001_t013_pos_Y_hi
C - - - - - 0x02D214 0B:9204: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x02D217 0B:9207: 29 BA     AND #(con_obj_flag_01 + con_obj_flag_04 + con_obj_flag_40) ^ $FF
C - - - - - 0x02D219 0B:9209: 09 20     ORA #con_obj_flag_20
C - - - - - 0x02D21B 0B:920B: 85 09     STA ram_0009_t004_some_obj_flags
C - - - - - 0x02D21D 0B:920D: 18        CLC
C - - - - - 0x02D21E 0B:920E: B9 50 92  LDA tbl_9250_pos_X_hi,Y
C - - - - - 0x02D221 0B:9211: 7D 38 04  ADC ram_obj_pos_X_hi,X
C - - - - - 0x02D224 0B:9214: 85 00     STA ram_0000_t058_pos_X_hi
C - - - - - 0x02D226 0B:9216: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x02D229 0B:9219: 29 01     AND #con_obj_flag_01
C - - - - - 0x02D22B 0B:921B: 79 52 92  ADC tbl_9252,Y
C - - - - - 0x02D22E 0B:921E: 29 01     AND #$01
C - - - - - 0x02D230 0B:9220: 05 09     ORA ram_0009_t004_some_obj_flags
C - - - - - 0x02D232 0B:9222: 85 0A     STA ram_000A_t01C_total_obj_flags
C - - - - - 0x02D234 0B:9224: 20 E3 80  JSR sub_80E3_find_empty_object_slot_09_0C
C - - - - - 0x02D237 0B:9227: D0 24     BNE bra_924D_no_empty_slots
C - - - - - 0x02D239 0B:9229: A5 00     LDA ram_0000_t058_pos_X_hi
C - - - - - 0x02D23B 0B:922B: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x02D23E 0B:922E: A5 01     LDA ram_0001_t013_pos_Y_hi
C - - - - - 0x02D240 0B:9230: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x02D243 0B:9233: A5 0A     LDA ram_000A_t01C_total_obj_flags
C - - - - - 0x02D245 0B:9235: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x02D248 0B:9238: A9 00     LDA #$00
C - - - - - 0x02D24A 0B:923A: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x02D24D 0B:923D: A9 47     LDA #$47
C - - - - - 0x02D24F 0B:923F: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x02D252 0B:9242: A9 5F     LDA #$5F
C - - - - - 0x02D254 0B:9244: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x02D257 0B:9247: 20 C9 9F  JSR sub_9FC9
C - - - - - 0x02D25A 0B:924A: 20 C8 FE  JSR sub_0x03FED8_clear_speed
bra_924D:
bra_924D_no_empty_slots:
C - - - - - 0x02D25D 0B:924D: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02D25F 0B:924F: 60        RTS



tbl_9250_pos_X_hi:
- D 0 - - - 0x02D260 0B:9250: FA        .byte $FA   ; 00 
- D 0 - - - 0x02D261 0B:9251: 06        .byte $06   ; 01 



tbl_9252:
- D 0 - - - 0x02D262 0B:9252: FF        .byte $FF   ; 00 
- D 0 - - - 0x02D263 0B:9253: 00        .byte $00   ; 01 



bra_9254:
C - - - - - 0x02D264 0B:9254: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x02D267 0B:9257: A9 01     LDA #$01
C - - - - - 0x02D269 0B:9259: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x02D26C 0B:925C: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02D26F 0B:925F: 60        RTS



ofs_039_9260_3B:
C - - J - - 0x02D270 0B:9260: 20 A6 93  JSR sub_93A6
C - - - - - 0x02D273 0B:9263: A0 10     LDY #$10    ; pos_Y_hi
C - - - - - 0x02D275 0B:9265: 20 1E FC  JSR sub_0x03FC2E
C - - - - - 0x02D278 0B:9268: F0 EA     BEQ bra_9254
C - - - - - 0x02D27A 0B:926A: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02D27C 0B:926C: 20 B0 93  JSR sub_93B0
C - - - - - 0x02D27F 0B:926F: A0 10     LDY #$10    ; pos_Y_hi
C - - - - - 0x02D281 0B:9271: 20 1E FC  JSR sub_0x03FC2E
C - - - - - 0x02D284 0B:9274: F0 60     BEQ bra_92D6
C - - - - - 0x02D286 0B:9276: C9 04     CMP #$04
C - - - - - 0x02D288 0B:9278: F0 5C     BEQ bra_92D6
C - - - - - 0x02D28A 0B:927A: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02D28C 0B:927C: 20 B0 93  JSR sub_93B0
C - - - - - 0x02D28F 0B:927F: A0 08     LDY #$08    ; pos_Y_hi
C - - - - - 0x02D291 0B:9281: 20 1E FC  JSR sub_0x03FC2E
C - - - - - 0x02D294 0B:9284: D0 50     BNE bra_92D6
C - - - - - 0x02D296 0B:9286: DE 1D 06  DEC ram_061D_obj,X
C - - - - - 0x02D299 0B:9289: D0 38     BNE bra_92C3
C - - - - - 0x02D29B 0B:928B: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x02D29E 0B:928E: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02D2A1 0B:9291: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02D2A4 0B:9294: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02D2A7 0B:9297: 60        RTS



ofs_039_9298_34:
C - - J - - 0x02D2A8 0B:9298: 20 B0 93  JSR sub_93B0
C - - - - - 0x02D2AB 0B:929B: A0 10     LDY #$10    ; pos_Y_hi
C - - - - - 0x02D2AD 0B:929D: 20 1E FC  JSR sub_0x03FC2E
C - - - - - 0x02D2B0 0B:92A0: F0 39     BEQ bra_92DB
C - - - - - 0x02D2B2 0B:92A2: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02D2B4 0B:92A4: 20 BA 93  JSR sub_93BA
C - - - - - 0x02D2B7 0B:92A7: A0 08     LDY #$08    ; pos_Y_hi
C - - - - - 0x02D2B9 0B:92A9: 20 1E FC  JSR sub_0x03FC2E
C - - - - - 0x02D2BC 0B:92AC: F0 0E     BEQ bra_92BC
C - - - - - 0x02D2BE 0B:92AE: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02D2C0 0B:92B0: 20 BA 93  JSR sub_93BA
C - - - - - 0x02D2C3 0B:92B3: A0 F8     LDY #$F8    ; pos_Y_hi
C - - - - - 0x02D2C5 0B:92B5: 20 1E FC  JSR sub_0x03FC2E
C - - - - - 0x02D2C8 0B:92B8: D0 1C     BNE bra_92D6
C - - - - - 0x02D2CA 0B:92BA: F0 1F     BEQ bra_92DB    ; jmp
bra_92BC:
C - - - - - 0x02D2CC 0B:92BC: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02D2CE 0B:92BE: DE 1D 06  DEC ram_061D_obj,X
C - - - - - 0x02D2D1 0B:92C1: F0 0D     BEQ bra_92D0
bra_92C3:
C - - - - - 0x02D2D3 0B:92C3: A9 04     LDA #$04
C - - - - - 0x02D2D5 0B:92C5: BC F2 04  LDY ram_obj_spd_X_hi,X
C - - - - - 0x02D2D8 0B:92C8: 10 03     BPL bra_92CD
C - - - - - 0x02D2DA 0B:92CA: 4C 6F 80  JMP loc_806F_increase_spd_X
bra_92CD:
C - - - - - 0x02D2DD 0B:92CD: 4C 8F 80  JMP loc_808F_decrease_spd_X
bra_92D0:
C - - - - - 0x02D2E0 0B:92D0: A9 04     LDA #$04
C - - - - - 0x02D2E2 0B:92D2: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x02D2E5 0B:92D5: 60        RTS
bra_92D6:
C - - - - - 0x02D2E6 0B:92D6: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02D2E8 0B:92D8: 4C 4B 80  JMP loc_804B_invert_spd_X
bra_92DB:
C - - - - - 0x02D2EB 0B:92DB: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02D2ED 0B:92DD: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02D2F0 0B:92E0: A9 01     LDA #$01    ; > 0100
C - - - - - 0x02D2F2 0B:92E2: BC F2 04  LDY ram_obj_spd_X_hi,X
C - - - - - 0x02D2F5 0B:92E5: 10 02     BPL bra_92E9
C - - - - - 0x02D2F7 0B:92E7: A9 FF     LDA #$FF    ; > FF00
bra_92E9:
C - - - - - 0x02D2F9 0B:92E9: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x02D2FC 0B:92EC: A9 FE     LDA #$FE
C - - - - - 0x02D2FE 0B:92EE: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x02D301 0B:92F1: A9 00     LDA #$00
C - - - - - 0x02D303 0B:92F3: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x02D306 0B:92F6: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x02D309 0B:92F9: 4C EF 81  JMP loc_81EF



ofs_039_92FC_33:
C - - J - - 0x02D30C 0B:92FC: A0 01     LDY #$01
C - - - - - 0x02D30E 0B:92FE: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02D310 0B:9300: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x02D313 0B:9303: A9 14     LDA #$14
C - - - - - 0x02D315 0B:9305: 20 7F 80  JSR sub_807F_increase_spd_Y
C - - - - - 0x02D318 0B:9308: BD 20 05  LDA ram_obj_spd_Y_hi,X
C - - - - - 0x02D31B 0B:930B: 30 0E     BMI bra_931B
C - - - - - 0x02D31D 0B:930D: C9 02     CMP #$02
C - - - - - 0x02D31F 0B:930F: 90 0A     BCC bra_931B
C - - - - - 0x02D321 0B:9311: A9 02     LDA #> $0200
C - - - - - 0x02D323 0B:9313: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x02D326 0B:9316: A9 00     LDA #< $0200
C - - - - - 0x02D328 0B:9318: 9D 37 05  STA ram_obj_spd_Y_lo,X
bra_931B:
C - - - - - 0x02D32B 0B:931B: 20 B0 93  JSR sub_93B0
C - - - - - 0x02D32E 0B:931E: A0 10     LDY #$10    ; pos_Y_hi
C - - - - - 0x02D330 0B:9320: 20 1E FC  JSR sub_0x03FC2E
C - - - - - 0x02D333 0B:9323: F0 1C     BEQ bra_9341_RTS
C - - - - - 0x02D335 0B:9325: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02D337 0B:9327: A0 06     LDY #$06
C - - - - - 0x02D339 0B:9329: 20 A6 B7  JSR sub_B7A6
C - - - - - 0x02D33C 0B:932C: F0 14     BEQ bra_9342
C - - - - - 0x02D33E 0B:932E: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02D340 0B:9330: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x02D343 0B:9333: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02D346 0B:9336: 20 F8 81  JSR sub_81F8
C - - - - - 0x02D349 0B:9339: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x02D34C 0B:933C: 29 F0     AND #$F0
C - - - - - 0x02D34E 0B:933E: 9D 1C 04  STA ram_obj_pos_Y_hi,X
bra_9341_RTS:
C - - - - - 0x02D351 0B:9341: 60        RTS
bra_9342:
- - - - - - 0x02D352 0B:9342: A6 6C     LDX ram_006C_object_index
- - - - - - 0x02D354 0B:9344: 20 C8 FE  JSR sub_0x03FED8_clear_speed
- - - - - - 0x02D357 0B:9347: A9 01     LDA #> $0180
- - - - - - 0x02D359 0B:9349: 9D 20 05  STA ram_obj_spd_Y_hi,X
- - - - - - 0x02D35C 0B:934C: A9 80     LDA #< $0180
- - - - - - 0x02D35E 0B:934E: 9D 37 05  STA ram_obj_spd_Y_lo,X
- - - - - - 0x02D361 0B:9351: BD 06 06  LDA ram_obj_config,X
- - - - - - 0x02D364 0B:9354: 9D C1 05  STA ram_05C1_obj,X
- - - - - - 0x02D367 0B:9357: 60        RTS



ofs_039_9358_35:
C - - J - - 0x02D368 0B:9358: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02D36B 0B:935B: 20 AA 81  JSR sub_81AA
C - - - - - 0x02D36E 0B:935E: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x02D371 0B:9361: A9 28     LDA #$28
C - - - - - 0x02D373 0B:9363: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x02D376 0B:9366: 20 30 82  JSR sub_8230
C - - - - - 0x02D379 0B:9369: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x02D37C 0B:936C: 29 01     AND #con_obj_flag_01
C - - - - - 0x02D37E 0B:936E: D0 09     BNE bra_9379
C - - - - - 0x02D380 0B:9370: 20 B3 80  JSR sub_80B3_get_object_distance_X_to_player
C - - - - - 0x02D383 0B:9373: C9 40     CMP #$40
C - - - - - 0x02D385 0B:9375: 90 29     BCC bra_93A0
C - - - - - 0x02D387 0B:9377: B0 0F     BCS bra_9388    ; jmp
bra_9379:
C - - - - - 0x02D389 0B:9379: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x02D38C 0B:937C: 49 01     EOR #$01
C - - - - - 0x02D38E 0B:937E: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x02D391 0B:9381: 20 B3 80  JSR sub_80B3_get_object_distance_X_to_player
C - - - - - 0x02D394 0B:9384: C9 40     CMP #$40
C - - - - - 0x02D396 0B:9386: B0 18     BCS bra_93A0
bra_9388:
C - - - - - 0x02D398 0B:9388: 20 34 91  JSR sub_9134_check_player_side_related_to_object_2
loc_938B:
C D 0 - - - 0x02D39B 0B:938B: B9 98 93  LDA tbl_9398_spd_X_hi,Y
C - - - - - 0x02D39E 0B:938E: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x02D3A1 0B:9391: B9 9C 93  LDA tbl_939C_spd_X_lo,Y
C - - - - - 0x02D3A4 0B:9394: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x02D3A7 0B:9397: 60        RTS



tbl_9398_spd_X_hi:
- D 0 - - - 0x02D3A8 0B:9398: FE        .byte > $FED0   ; 00 
- D 0 - - - 0x02D3A9 0B:9399: 01        .byte > $0130   ; 01 
- D 0 - - - 0x02D3AA 0B:939A: FF        .byte > $FFA0   ; 02 
- D 0 - - - 0x02D3AB 0B:939B: 00        .byte > $0060   ; 03 



tbl_939C_spd_X_lo:
- D 0 - - - 0x02D3AC 0B:939C: D0        .byte < $FED0   ; 00 
- D 0 - - - 0x02D3AD 0B:939D: 30        .byte < $0130   ; 01 
- D 0 - - - 0x02D3AE 0B:939E: A0        .byte < $FFA0   ; 02 
- D 0 - - - 0x02D3AF 0B:939F: 60        .byte < $0060   ; 03 



bra_93A0:
C - - - - - 0x02D3B0 0B:93A0: 20 27 91  JSR sub_9127_check_player_side_related_to_object_1
C - - - - - 0x02D3B3 0B:93A3: 4C 8B 93  JMP loc_938B



sub_93A6:
; out
    ; A = pos_X_hi
C - - - - - 0x02D3B6 0B:93A6: A9 FB     LDA #$FB
C - - - - - 0x02D3B8 0B:93A8: BC A8 04  LDY ram_obj_facing,X
C - - - - - 0x02D3BB 0B:93AB: F0 0C     BEQ bra_93B9_RTS    ; if facing right
C - - - - - 0x02D3BD 0B:93AD: A9 05     LDA #$05
C - - - - - 0x02D3BF 0B:93AF: 60        RTS



sub_93B0:
; out
    ; A = pos_X_hi
C - - - - - 0x02D3C0 0B:93B0: A9 F8     LDA #$F8
C - - - - - 0x02D3C2 0B:93B2: BC F2 04  LDY ram_obj_spd_X_hi,X
C - - - - - 0x02D3C5 0B:93B5: 30 02     BMI bra_93B9_RTS
C - - - - - 0x02D3C7 0B:93B7: A9 08     LDA #$08
bra_93B9_RTS:
C - - - - - 0x02D3C9 0B:93B9: 60        RTS



sub_93BA:
; out
    ; A = 
C - - - - - 0x02D3CA 0B:93BA: A9 E8     LDA #$E8
C - - - - - 0x02D3CC 0B:93BC: BC F2 04  LDY ram_obj_spd_X_hi,X
C - - - - - 0x02D3CF 0B:93BF: 30 F8     BMI bra_93B9_RTS
C - - - - - 0x02D3D1 0B:93C1: A9 18     LDA #$18
C - - - - - 0x02D3D3 0B:93C3: 60        RTS



ofs_039_93C4_36:
C - - J - - 0x02D3D4 0B:93C4: 20 B3 80  JSR sub_80B3_get_object_distance_X_to_player
C - - - - - 0x02D3D7 0B:93C7: A0 01     LDY #$01
C - - - - - 0x02D3D9 0B:93C9: D1 02     CMP (ram_0002_t007_data),Y
C - - - - - 0x02D3DB 0B:93CB: B0 04     BCS bra_93D1
C - - - - - 0x02D3DD 0B:93CD: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02D3E0 0B:93D0: 60        RTS
bra_93D1:
C - - - - - 0x02D3E1 0B:93D1: A0 02     LDY #$02
C - - - - - 0x02D3E3 0B:93D3: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02D3E5 0B:93D5: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x02D3E8 0B:93D8: 60        RTS



ofs_039_93D9_7E:
C - - J - - 0x02D3E9 0B:93D9: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02D3EC 0B:93DC: A9 0F     LDA #$0F
C - - - - - 0x02D3EE 0B:93DE: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x02D3F1 0B:93E1: A9 00     LDA #$00
C - - - - - 0x02D3F3 0B:93E3: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x02D3F6 0B:93E6: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x02D3F9 0B:93E9: 7D 1C 04  ADC ram_obj_pos_Y_hi,X
; / 08
C - - - - - 0x02D3FC 0B:93EC: 4A        LSR
C - - - - - 0x02D3FD 0B:93ED: 4A        LSR
C - - - - - 0x02D3FE 0B:93EE: 4A        LSR
C - - - - - 0x02D3FF 0B:93EF: 65 1F     ADC ram_random
C - - - - - 0x02D401 0B:93F1: 29 07     AND #$07
C - - - - - 0x02D403 0B:93F3: A8        TAY
C - - - - - 0x02D404 0B:93F4: B9 FB 93  LDA tbl_93FB,Y
C - - - - - 0x02D407 0B:93F7: 9D 33 06  STA ram_obj_0634,X
bra_93FA_RTS:
C - - - - - 0x02D40A 0B:93FA: 60        RTS



tbl_93FB:
- D 0 - - - 0x02D40B 0B:93FB: 73        .byte $73   ; 00 
- D 0 - - - 0x02D40C 0B:93FC: 48        .byte $48   ; 01 
- D 0 - - - 0x02D40D 0B:93FD: 48        .byte $48   ; 02 
- D 0 - - - 0x02D40E 0B:93FE: 65        .byte $65   ; 03 
- D 0 - - - 0x02D40F 0B:93FF: 63        .byte $63   ; 04 
- D 0 - - - 0x02D410 0B:9400: 5C        .byte $5C   ; 05 
- D 0 - - - 0x02D411 0B:9401: 8F        .byte $8F   ; 06 
- D 0 - - - 0x02D412 0B:9402: 54        .byte $54   ; 07 



ofs_039_9403_7D:
C - - J - - 0x02D413 0B:9403: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x02D416 0B:9406: 29 01     AND #con_obj_flag_01
C - - - - - 0x02D418 0B:9408: D0 F0     BNE bra_93FA_RTS
C - - - - - 0x02D41A 0B:940A: DE 06 06  DEC ram_obj_config,X
C - - - - - 0x02D41D 0B:940D: D0 17     BNE bra_9426
C - - - - - 0x02D41F 0B:940F: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x02D422 0B:9412: 49 01     EOR #$01
C - - - - - 0x02D424 0B:9414: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x02D427 0B:9417: A8        TAY
C - - - - - 0x02D428 0B:9418: B9 39 94  LDA tbl_9439,Y
C - - - - - 0x02D42B 0B:941B: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x02D42E 0B:941E: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x02D431 0B:9421: 49 08     EOR #con_obj_flag_08
C - - - - - 0x02D433 0B:9423: 9D 70 04  STA ram_obj_flags,X
bra_9426:
C - - - - - 0x02D436 0B:9426: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x02D439 0B:9429: F0 05     BEQ bra_9430
C - - - - - 0x02D43B 0B:942B: DE 33 06  DEC ram_obj_0634,X
C - - - - - 0x02D43E 0B:942E: D0 08     BNE bra_9438_RTS
bra_9430:
C - - - - - 0x02D440 0B:9430: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02D442 0B:9432: 20 BC 81  JSR sub_81BC
C - - - - - 0x02D445 0B:9435: FE C1 05  INC ram_05C1_obj,X
bra_9438_RTS:
C - - - - - 0x02D448 0B:9438: 60        RTS



tbl_9439:
- D 0 - - - 0x02D449 0B:9439: 28        .byte $28   ; 00 
- D 0 - - - 0x02D44A 0B:943A: 07        .byte $07   ; 01 



ofs_039_943B_7F:
C - - J - - 0x02D44B 0B:943B: 20 40 82  JSR sub_8240
C - - - - - 0x02D44E 0B:943E: 20 B3 80  JSR sub_80B3_get_object_distance_X_to_player
C - - - - - 0x02D451 0B:9441: 29 F0     AND #$F0
; / 10
C - - - - - 0x02D453 0B:9443: 4A        LSR
C - - - - - 0x02D454 0B:9444: 4A        LSR
C - - - - - 0x02D455 0B:9445: 4A        LSR
C - - - - - 0x02D456 0B:9446: 4A        LSR
C - - - - - 0x02D457 0B:9447: A8        TAY
C - - - - - 0x02D458 0B:9448: B9 73 94  LDA tbl_9473_spd_X_hi,Y
C - - - - - 0x02D45B 0B:944B: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x02D45E 0B:944E: B9 7D 94  LDA tbl_947D_spd_X_lo,Y
C - - - - - 0x02D461 0B:9451: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x02D464 0B:9454: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x02D467 0B:9457: F0 03     BEQ bra_945C_facing_right
C - - - - - 0x02D469 0B:9459: 20 4B 80  JSR sub_804B_invert_spd_X
bra_945C_facing_right:
C - - - - - 0x02D46C 0B:945C: 20 D5 80  JSR sub_80D5_get_object_distance_Y_to_player
C - - - - - 0x02D46F 0B:945F: 29 F0     AND #$F0
; / 10
C - - - - - 0x02D471 0B:9461: 4A        LSR
C - - - - - 0x02D472 0B:9462: 4A        LSR
C - - - - - 0x02D473 0B:9463: 4A        LSR
C - - - - - 0x02D474 0B:9464: 4A        LSR
C - - - - - 0x02D475 0B:9465: A8        TAY
C - - - - - 0x02D476 0B:9466: B9 87 94  LDA tbl_9487_spd_Y_hi,Y
C - - - - - 0x02D479 0B:9469: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x02D47C 0B:946C: B9 91 94  LDA tbl_9491_spd_Y_lo,Y
C - - - - - 0x02D47F 0B:946F: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x02D482 0B:9472: 60        RTS



tbl_9473_spd_X_hi:
- D 0 - - - 0x02D483 0B:9473: 00        .byte > $00C0   ; 00 
- D 0 - - - 0x02D484 0B:9474: 01        .byte > $0180   ; 01 
- D 0 - - - 0x02D485 0B:9475: 01        .byte > $01C0   ; 02 
- D 0 - - - 0x02D486 0B:9476: 02        .byte > $0200   ; 03 
- D 0 - - - 0x02D487 0B:9477: 02        .byte > $0280   ; 04 
- D 0 - - - 0x02D488 0B:9478: 02        .byte > $02C0   ; 05 
- D 0 - - - 0x02D489 0B:9479: 03        .byte > $0300   ; 06 
- D 0 - - - 0x02D48A 0B:947A: 03        .byte > $0380   ; 07 
- - - - - - 0x02D48B 0B:947B: 03        .byte > $03C0   ; 08 
- - - - - - 0x02D48C 0B:947C: 04        .byte > $0480   ; 09 



tbl_947D_spd_X_lo:
- D 0 - - - 0x02D48D 0B:947D: C0        .byte < $00C0   ; 00 
- D 0 - - - 0x02D48E 0B:947E: 80        .byte < $0180   ; 01 
- D 0 - - - 0x02D48F 0B:947F: C0        .byte < $01C0   ; 02 
- D 0 - - - 0x02D490 0B:9480: 00        .byte < $0200   ; 03 
- D 0 - - - 0x02D491 0B:9481: 80        .byte < $0280   ; 04 
- D 0 - - - 0x02D492 0B:9482: C0        .byte < $02C0   ; 05 
- D 0 - - - 0x02D493 0B:9483: 00        .byte < $0300   ; 06 
- D 0 - - - 0x02D494 0B:9484: 80        .byte < $0380   ; 07 
- - - - - - 0x02D495 0B:9485: C0        .byte < $03C0   ; 08 
- - - - - - 0x02D496 0B:9486: 80        .byte < $0480   ; 09 



tbl_9487_spd_Y_hi:
- D 0 - - - 0x02D497 0B:9487: 01        .byte > $0180   ; 00 
- D 0 - - - 0x02D498 0B:9488: 01        .byte > $01C0   ; 10 
- D 0 - - - 0x02D499 0B:9489: 02        .byte > $0200   ; 20 
- D 0 - - - 0x02D49A 0B:948A: 02        .byte > $0280   ; 30 
- D 0 - - - 0x02D49B 0B:948B: 02        .byte > $02C0   ; 40 
- D 0 - - - 0x02D49C 0B:948C: 03        .byte > $0300   ; 50 
- D 0 - - - 0x02D49D 0B:948D: 03        .byte > $0380   ; 60 
- D 0 - - - 0x02D49E 0B:948E: 03        .byte > $03C0   ; 70 
- - - - - - 0x02D49F 0B:948F: 04        .byte > $0400   ; 80 
- - - - - - 0x02D4A0 0B:9490: 04        .byte > $0480   ; 90 



tbl_9491_spd_Y_lo:
- D 0 - - - 0x02D4A1 0B:9491: 80        .byte < $0180   ; 00 
- D 0 - - - 0x02D4A2 0B:9492: C0        .byte < $01C0   ; 10 
- D 0 - - - 0x02D4A3 0B:9493: 00        .byte < $0200   ; 20 
- D 0 - - - 0x02D4A4 0B:9494: 80        .byte < $0280   ; 30 
- D 0 - - - 0x02D4A5 0B:9495: C0        .byte < $02C0   ; 40 
- D 0 - - - 0x02D4A6 0B:9496: 00        .byte < $0300   ; 50 
- D 0 - - - 0x02D4A7 0B:9497: 80        .byte < $0380   ; 60 
- D 0 - - - 0x02D4A8 0B:9498: C0        .byte < $03C0   ; 70 
- - - - - - 0x02D4A9 0B:9499: 00        .byte < $0400   ; 80 
- - - - - - 0x02D4AA 0B:949A: 80        .byte < $0480   ; 90 



ofs_039_949B_80:
C - - J - - 0x02D4AB 0B:949B: BD 20 05  LDA ram_obj_spd_Y_hi,X
C - - - - - 0x02D4AE 0B:949E: 10 18     BPL bra_94B8
C - - - - - 0x02D4B0 0B:94A0: A9 26     LDA #con_sound_26
C - - - - - 0x02D4B2 0B:94A2: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x02D4B5 0B:94A5: 20 F8 81  JSR sub_81F8
C - - - - - 0x02D4B8 0B:94A8: A0 06     LDY #$06
C - - - - - 0x02D4BA 0B:94AA: A9 12     LDA #con_obj_type_12
C - - - - - 0x02D4BC 0B:94AC: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x02D4BF 0B:94AF: A9 30     LDA #$30
C - - - - - 0x02D4C1 0B:94B1: 9D 06 06  STA ram_obj_config,X
bra_94B4:
C - - - - - 0x02D4C4 0B:94B4: FE C1 05  INC ram_05C1_obj,X
bra_94B7_RTS:
C - - - - - 0x02D4C7 0B:94B7: 60        RTS
bra_94B8:
C - - - - - 0x02D4C8 0B:94B8: A9 10     LDA #$10
C - - - - - 0x02D4CA 0B:94BA: 4C A1 80  JMP loc_80A1_decrease_spd_Y



ofs_039_94BD_81:
C - - J - - 0x02D4CD 0B:94BD: DE 06 06  DEC ram_obj_config,X
C - - - - - 0x02D4D0 0B:94C0: F0 F2     BEQ bra_94B4
C - - - - - 0x02D4D2 0B:94C2: D0 F4     BNE bra_94B8    ; jmp



ofs_039_94C4_82:
C - - J - - 0x02D4D4 0B:94C4: A9 10     LDA #$10
C - - - - - 0x02D4D6 0B:94C6: 20 A1 80  JSR sub_80A1_decrease_spd_Y
C - - - - - 0x02D4D9 0B:94C9: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x02D4DC 0B:94CC: C9 28     CMP #$28
C - - - - - 0x02D4DE 0B:94CE: 90 04     BCC bra_94D4
C - - - - - 0x02D4E0 0B:94D0: C9 E8     CMP #$E8
C - - - - - 0x02D4E2 0B:94D2: 90 E3     BCC bra_94B7_RTS
bra_94D4:
C - - - - - 0x02D4E4 0B:94D4: BD 45 06  LDA ram_obj_0646,X
C - - - - - 0x02D4E7 0B:94D7: AA        TAX
C - - - - - 0x02D4E8 0B:94D8: A9 00     LDA #$00
C - - - - - 0x02D4EA 0B:94DA: 9D C8 07  STA ram_07C8,X
C - - - - - 0x02D4ED 0B:94DD: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02D4EF 0B:94DF: 4C B2 84  JMP loc_84B2



ofs_039_94E2_83:
C - - J - - 0x02D4F2 0B:94E2: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02D4F5 0B:94E5: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x02D4F8 0B:94E8: A9 FF     LDA #$FF
C - - - - - 0x02D4FA 0B:94EA: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x02D4FD 0B:94ED: 60        RTS



ofs_039_94EE_3C:
C - - J - - 0x02D4FE 0B:94EE: A0 01     LDY #$01
C - - - - - 0x02D500 0B:94F0: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x02D503 0B:94F3: C9 01     CMP #$01
C - - - - - 0x02D505 0B:94F5: 90 06     BCC bra_94FD
C - - - - - 0x02D507 0B:94F7: A9 00     LDA #$00
C - - - - - 0x02D509 0B:94F9: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x02D50C 0B:94FC: C8        INY ; 02
bra_94FD:
C - - - - - 0x02D50D 0B:94FD: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02D50F 0B:94FF: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x02D512 0B:9502: 60        RTS



ofs_039_9503_3E:
C - - J - - 0x02D513 0B:9503: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x02D516 0B:9506: A9 FF     LDA #$FF
C - - - - - 0x02D518 0B:9508: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x02D51B 0B:950B: FE C1 05  INC ram_05C1_obj,X
bra_950E_RTS:
C - - - - - 0x02D51E 0B:950E: 60        RTS



ofs_039_950F_3D:
C - - J - - 0x02D51F 0B:950F: A9 10     LDA #$10
C - - - - - 0x02D521 0B:9511: 20 A1 80  JSR sub_80A1_decrease_spd_Y
C - - - - - 0x02D524 0B:9514: A0 04     LDY #$04
C - - - - - 0x02D526 0B:9516: 20 A6 B7  JSR sub_B7A6
C - - - - - 0x02D529 0B:9519: F0 07     BEQ bra_9522
C - - - - - 0x02D52B 0B:951B: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x02D52E 0B:951E: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02D531 0B:9521: 60        RTS
bra_9522:
C - - - - - 0x02D532 0B:9522: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x02D535 0B:9525: C9 30     CMP #$30
; bzk optimize, branch to RTS at 0x02D545 for readability
C - - - - - 0x02D537 0B:9527: B0 E5     BCS bra_950E_RTS
C - - - - - 0x02D539 0B:9529: A9 00     LDA #$00
C - - - - - 0x02D53B 0B:952B: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x02D53E 0B:952E: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x02D541 0B:9531: A0 01     LDY #$01
C - - - - - 0x02D543 0B:9533: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02D545 0B:9535: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x02D548 0B:9538: 60        RTS



ofs_039_9539_40:
C - - J - - 0x02D549 0B:9539: 20 30 82  JSR sub_8230
C - - - - - 0x02D54C 0B:953C: A9 00     LDA #> $00C0
C - - - - - 0x02D54E 0B:953E: A0 C0     LDY #< $00C0
C - - - - - 0x02D550 0B:9540: 20 FF 84  JSR sub_84FF_set_spd_X
C - - - - - 0x02D553 0B:9543: A9 01     LDA #> $0180
C - - - - - 0x02D555 0B:9545: A0 80     LDY #< $0180
C - - - - - 0x02D557 0B:9547: 20 18 85  JSR sub_8518_set_spd_Y
C - - - - - 0x02D55A 0B:954A: FE C1 05  INC ram_05C1_obj,X
bra_954D_RTS:
C - - - - - 0x02D55D 0B:954D: 60        RTS



ofs_039_954E_41:
C - - J - - 0x02D55E 0B:954E: A0 04     LDY #$04
C - - - - - 0x02D560 0B:9550: 20 A6 B7  JSR sub_B7A6
C - - - - - 0x02D563 0B:9553: F0 08     BEQ bra_955D
C - - - - - 0x02D565 0B:9555: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02D567 0B:9557: FE 33 06  INC ram_obj_0634,X
C - - - - - 0x02D56A 0B:955A: 4C AE 95  JMP loc_95AE
bra_955D:
C - - - - - 0x02D56D 0B:955D: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02D56F 0B:955F: A9 14     LDA #$14
C - - - - - 0x02D571 0B:9561: 20 A1 80  JSR sub_80A1_decrease_spd_Y
C - - - - - 0x02D574 0B:9564: BD 20 05  LDA ram_obj_spd_Y_hi,X
; bzk optimize, branch to RTS at 0x02D59A for readability
C - - - - - 0x02D577 0B:9567: 10 E4     BPL bra_954D_RTS
C - - - - - 0x02D579 0B:9569: C9 FD     CMP #$FD
C - - - - - 0x02D57B 0B:956B: B0 E0     BCS bra_954D_RTS
- - - - - - 0x02D57D 0B:956D: BD 1C 04  LDA ram_obj_pos_Y_hi,X
- - - - - - 0x02D580 0B:9570: C9 30     CMP #$30
- - - - - - 0x02D582 0B:9572: 90 0B     BCC bra_957F
- - - - - - 0x02D584 0B:9574: A9 FD     LDA #> $FD00
- - - - - - 0x02D586 0B:9576: 9D 20 05  STA ram_obj_spd_Y_hi,X
- - - - - - 0x02D589 0B:9579: A9 00     LDA #< $FD00
- - - - - - 0x02D58B 0B:957B: 9D 37 05  STA ram_obj_spd_Y_lo,X
- - - - - - 0x02D58E 0B:957E: 60        RTS
bra_957F:
- - - - - - 0x02D58F 0B:957F: 20 C8 FE  JSR sub_0x03FED8_clear_speed
- - - - - - 0x02D592 0B:9582: 9D 00 04  STA ram_obj_anim_id,X
- - - - - - 0x02D595 0B:9585: A9 17     LDA #$17
- - - - - - 0x02D597 0B:9587: 9D C1 05  STA ram_05C1_obj,X
- - - - - - 0x02D59A 0B:958A: 60        RTS



ofs_039_958B_42:
C - - J - - 0x02D59B 0B:958B: A9 30     LDA #$30
C - - - - - 0x02D59D 0B:958D: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x02D5A0 0B:9590: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x02D5A3 0B:9593: 9D 38 04  STA ram_obj_pos_X_hi,X
ofs_039_9596_43:
C - - J - - 0x02D5A6 0B:9596: A0 01     LDY #$01
C - - - - - 0x02D5A8 0B:9598: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02D5AA 0B:959A: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x02D5AD 0B:959D: C8        INY ; 02
C - - - - - 0x02D5AE 0B:959E: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02D5B0 0B:95A0: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x02D5B3 0B:95A3: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02D5B6 0B:95A6: 60        RTS



ofs_039_95A7_3F:
C - - J - - 0x02D5B7 0B:95A7: A0 03     LDY #$03
C - - - - - 0x02D5B9 0B:95A9: 20 A6 B7  JSR sub_B7A6
C - - - - - 0x02D5BC 0B:95AC: F0 07     BEQ bra_95B5
loc_95AE:
C D 0 - - - 0x02D5BE 0B:95AE: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x02D5C1 0B:95B1: FE C1 05  INC ram_05C1_obj,X
bra_95B4_RTS:
C - - - - - 0x02D5C4 0B:95B4: 60        RTS
bra_95B5:
C - - - - - 0x02D5C5 0B:95B5: A9 10     LDA #$10
C - - - - - 0x02D5C7 0B:95B7: 20 7F 80  JSR sub_807F_increase_spd_Y
C - - - - - 0x02D5CA 0B:95BA: BD 20 05  LDA ram_obj_spd_Y_hi,X
C - - - - - 0x02D5CD 0B:95BD: C9 02     CMP #$02
C - - - - - 0x02D5CF 0B:95BF: 90 F3     BCC bra_95B4_RTS
C - - - - - 0x02D5D1 0B:95C1: A9 02     LDA #> $0200
C - - - - - 0x02D5D3 0B:95C3: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x02D5D6 0B:95C6: A9 00     LDA #< $0200
C - - - - - 0x02D5D8 0B:95C8: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x02D5DB 0B:95CB: 60        RTS



ofs_039_95CC_45_water_splash:
; water splash of the fish-like enemy when it
; swims under the water and you can see its shadow
; and then it stands up and shoots straight foward
; then continues swimming
C - - J - - 0x02D5DC 0B:95CC: A0 01     LDY #$01
C - - - - - 0x02D5DE 0B:95CE: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02D5E0 0B:95D0: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x02D5E3 0B:95D3: 8A        TXA
C - - - - - 0x02D5E4 0B:95D4: 65 1A     ADC ram_frm_cnt
C - - - - - 0x02D5E6 0B:95D6: 29 07     AND #$07
C - - - - - 0x02D5E8 0B:95D8: A8        TAY
C - - - - - 0x02D5E9 0B:95D9: B9 FB 95  LDA tbl_95FB_spd_X_hi,Y
C - - - - - 0x02D5EC 0B:95DC: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x02D5EF 0B:95DF: B9 03 96  LDA tbl_9603,Y
; bzk bug, it should probably be X speed, not Y
; movie walkthrough 1, frame around 243292, affects splashes position
C - - - - - 0x02D5F2 0B:95E2: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x02D5F5 0B:95E5: B9 0B 96  LDA tbl_960B_spd_Y_hi,Y
C - - - - - 0x02D5F8 0B:95E8: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x02D5FB 0B:95EB: B9 13 96  LDA tbl_9613_spd_Y_lo,Y
C - - - - - 0x02D5FE 0B:95EE: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x02D601 0B:95F1: B9 1B 96  LDA tbl_961B,Y
C - - - - - 0x02D604 0B:95F4: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x02D607 0B:95F7: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02D60A 0B:95FA: 60        RTS



tbl_95FB_spd_X_hi:
- D 0 - - - 0x02D60B 0B:95FB: 01        .byte $01   ; 00 
- D 0 - - - 0x02D60C 0B:95FC: FF        .byte $FF   ; 01 
- D 0 - - - 0x02D60D 0B:95FD: FF        .byte $FF   ; 02 
- D 0 - - - 0x02D60E 0B:95FE: 00        .byte $00   ; 03 
- D 0 - - - 0x02D60F 0B:95FF: FF        .byte $FF   ; 04 
- D 0 - - - 0x02D610 0B:9600: 00        .byte $00   ; 05 
- D 0 - - - 0x02D611 0B:9601: FE        .byte $FE   ; 06 
- D 0 - - - 0x02D612 0B:9602: 00        .byte $00   ; 07 



tbl_9603:
- D 0 - - - 0x02D613 0B:9603: 20        .byte $20   ; 00 
- D 0 - - - 0x02D614 0B:9604: 10        .byte $10   ; 01 
- D 0 - - - 0x02D615 0B:9605: 20        .byte $20   ; 02 
- D 0 - - - 0x02D616 0B:9606: F8        .byte $F8   ; 03 
- D 0 - - - 0x02D617 0B:9607: 10        .byte $10   ; 04 
- D 0 - - - 0x02D618 0B:9608: D0        .byte $D0   ; 05 
- D 0 - - - 0x02D619 0B:9609: D0        .byte $D0   ; 06 
- D 0 - - - 0x02D61A 0B:960A: C0        .byte $C0   ; 07 



tbl_960B_spd_Y_hi:
- D 0 - - - 0x02D61B 0B:960B: FF        .byte > $FF00   ; 00 
- D 0 - - - 0x02D61C 0B:960C: FE        .byte > $FE40   ; 01 
- D 0 - - - 0x02D61D 0B:960D: FE        .byte > $FEC0   ; 02 
- D 0 - - - 0x02D61E 0B:960E: FE        .byte > $FE20   ; 03 
- D 0 - - - 0x02D61F 0B:960F: FF        .byte > $FF20   ; 04 
- D 0 - - - 0x02D620 0B:9610: FE        .byte > $FEC0   ; 05 
- D 0 - - - 0x02D621 0B:9611: FE        .byte > $FE40   ; 06 
- D 0 - - - 0x02D622 0B:9612: FE        .byte > $FE81   ; 07 



tbl_9613_spd_Y_lo:
- D 0 - - - 0x02D623 0B:9613: 00        .byte < $FF00   ; 00 
- D 0 - - - 0x02D624 0B:9614: 40        .byte < $FE40   ; 01 
- D 0 - - - 0x02D625 0B:9615: C0        .byte < $FEC0   ; 02 
- D 0 - - - 0x02D626 0B:9616: 20        .byte < $FE20   ; 03 
- D 0 - - - 0x02D627 0B:9617: 20        .byte < $FF20   ; 04 
- D 0 - - - 0x02D628 0B:9618: C0        .byte < $FEC0   ; 05 
- D 0 - - - 0x02D629 0B:9619: 40        .byte < $FE40   ; 06 
- D 0 - - - 0x02D62A 0B:961A: 81        .byte < $FE81   ; 07 



tbl_961B:
- D 0 - - - 0x02D62B 0B:961B: 20        .byte $20   ; 00 
- D 0 - - - 0x02D62C 0B:961C: 24        .byte $24   ; 01 
- D 0 - - - 0x02D62D 0B:961D: 3C        .byte $3C   ; 02 
- D 0 - - - 0x02D62E 0B:961E: 48        .byte $48   ; 03 
- D 0 - - - 0x02D62F 0B:961F: 30        .byte $30   ; 04 
- D 0 - - - 0x02D630 0B:9620: 28        .byte $28   ; 05 
- D 0 - - - 0x02D631 0B:9621: 1C        .byte $1C   ; 06 
- D 0 - - - 0x02D632 0B:9622: 38        .byte $38   ; 07 



ofs_039_9623_46:
C - - J - - 0x02D633 0B:9623: DE 1D 06  DEC ram_061D_obj,X
C - - - - - 0x02D636 0B:9626: F0 09     BEQ bra_9631
C - - - - - 0x02D638 0B:9628: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x02D63B 0B:962B: 20 7F 80  JSR sub_807F_increase_spd_Y
C - - - - - 0x02D63E 0B:962E: 4C B8 84  JMP loc_84B8
bra_9631:
C - - - - - 0x02D641 0B:9631: 4C B2 84  JMP loc_84B2



ofs_039_9634_5A:
C - - J - - 0x02D644 0B:9634: A5 1A     LDA ram_frm_cnt
C - - - - - 0x02D646 0B:9636: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x02D649 0B:9639: 8A        TXA
C - - - - - 0x02D64A 0B:963A: 65 1A     ADC ram_frm_cnt
C - - - - - 0x02D64C 0B:963C: 29 07     AND #$07
C - - - - - 0x02D64E 0B:963E: 20 7F 80  JSR sub_807F_increase_spd_Y
C - - - - - 0x02D651 0B:9641: 4C B8 84  JMP loc_84B8



ofs_039_9644_47:
ofs_039_9644_4A:
ofs_039_9644_4B:
ofs_039_9644_4C:
C - - J - - 0x02D654 0B:9644: A9 00     LDA #$00
C - - - - - 0x02D656 0B:9646: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x02D659 0B:9649: 20 A7 81  JSR sub_81A7
C - - - - - 0x02D65C 0B:964C: A9 00     LDA #$00
C - - - - - 0x02D65E 0B:964E: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x02D661 0B:9651: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x02D664 0B:9654: 20 D5 80  JSR sub_80D5_get_object_distance_Y_to_player
C - - - - - 0x02D667 0B:9657: C9 40     CMP #$40
C - - - - - 0x02D669 0B:9659: B0 0C     BCS bra_9667
C - - - - - 0x02D66B 0B:965B: A5 1F     LDA ram_random
C - - - - - 0x02D66D 0B:965D: 29 03     AND #$03
C - - - - - 0x02D66F 0B:965F: A8        TAY
C - - - - - 0x02D670 0B:9660: B9 73 96  LDA tbl_9673,Y
C - - - - - 0x02D673 0B:9663: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x02D676 0B:9666: 60        RTS
bra_9667:
C - - - - - 0x02D677 0B:9667: A5 1F     LDA ram_random
C - - - - - 0x02D679 0B:9669: 29 03     AND #$03
C - - - - - 0x02D67B 0B:966B: A8        TAY
C - - - - - 0x02D67C 0B:966C: B9 77 96  LDA tbl_9677,Y
C - - - - - 0x02D67F 0B:966F: 9D 06 06  STA ram_obj_config,X
bra_9672_RTS:
C - - - - - 0x02D682 0B:9672: 60        RTS



tbl_9673:
- D 0 - - - 0x02D683 0B:9673: 20        .byte $20   ; 00 
- D 0 - - - 0x02D684 0B:9674: 2C        .byte $2C   ; 01 
- D 0 - - - 0x02D685 0B:9675: 30        .byte $30   ; 02 
- D 0 - - - 0x02D686 0B:9676: 38        .byte $38   ; 03 



tbl_9677:
- D 0 - - - 0x02D687 0B:9677: 10        .byte $10   ; 00 
- D 0 - - - 0x02D688 0B:9678: 18        .byte $18   ; 01 
- D 0 - - - 0x02D689 0B:9679: 1C        .byte $1C   ; 02 
- D 0 - - - 0x02D68A 0B:967A: 14        .byte $14   ; 03 



ofs_039_967B_48:
C - - J - - 0x02D68B 0B:967B: DE 06 06  DEC ram_obj_config,X
C - - - - - 0x02D68E 0B:967E: F0 06     BEQ bra_9686
C - - - - - 0x02D690 0B:9680: 20 43 82  JSR sub_8243
C - - - - - 0x02D693 0B:9683: 4C 5C 97  JMP loc_975C
bra_9686:
C - - - - - 0x02D696 0B:9686: A5 1A     LDA ram_frm_cnt
C - - - - - 0x02D698 0B:9688: 29 03     AND #$03
C - - - - - 0x02D69A 0B:968A: A8        TAY
C - - - - - 0x02D69B 0B:968B: B9 94 96  LDA tbl_9694,Y
C - - - - - 0x02D69E 0B:968E: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x02D6A1 0B:9691: 4C 9B 81  JMP loc_819B



tbl_9694:
- D 0 - - - 0x02D6A4 0B:9694: 20        .byte $20   ; 00 
- D 0 - - - 0x02D6A5 0B:9695: 18        .byte $18   ; 01 
- D 0 - - - 0x02D6A6 0B:9696: 1C        .byte $1C   ; 02 
- D 0 - - - 0x02D6A7 0B:9697: 28        .byte $28   ; 03 



ofs_039_9698_49:
C - - J - - 0x02D6A8 0B:9698: DE 06 06  DEC ram_obj_config,X
; bzk optimize, branch to RTS at 0x02D6D6 for readability
C - - - - - 0x02D6AB 0B:969B: D0 D5     BNE bra_9672_RTS
C - - - - - 0x02D6AD 0B:969D: 20 AA 81  JSR sub_81AA
C - - - - - 0x02D6B0 0B:96A0: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x02D6B3 0B:96A3: FE 33 06  INC ram_obj_0634,X
C - - - - - 0x02D6B6 0B:96A6: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x02D6B9 0B:96A9: C9 08     CMP #$08
C - - - - - 0x02D6BB 0B:96AB: 90 1A     BCC bra_96C7
C - - - - - 0x02D6BD 0B:96AD: 20 30 82  JSR sub_8230
C - - - - - 0x02D6C0 0B:96B0: A9 00     LDA #$00
C - - - - - 0x02D6C2 0B:96B2: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x02D6C5 0B:96B5: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x02D6C8 0B:96B8: 0A        ASL
C - - - - - 0x02D6C9 0B:96B9: A8        TAY
C - - - - - 0x02D6CA 0B:96BA: B9 50 97  LDA tbl_9750_spd_X,Y
C - - - - - 0x02D6CD 0B:96BD: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x02D6D0 0B:96C0: B9 51 97  LDA tbl_9750_spd_X + $01,Y
C - - - - - 0x02D6D3 0B:96C3: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x02D6D6 0B:96C6: 60        RTS
bra_96C7:
C - - - - - 0x02D6D7 0B:96C7: DE C1 05  DEC ram_05C1_obj,X
C - - - - - 0x02D6DA 0B:96CA: 20 79 97  JSR sub_9779
C - - - - - 0x02D6DD 0B:96CD: 20 D5 80  JSR sub_80D5_get_object_distance_Y_to_player
C - - - - - 0x02D6E0 0B:96D0: C9 20     CMP #$20
C - - - - - 0x02D6E2 0B:96D2: 90 35     BCC bra_9709
C - - - - - 0x02D6E4 0B:96D4: A5 1F     LDA ram_random
C - - - - - 0x02D6E6 0B:96D6: 29 03     AND #$03
C - - - - - 0x02D6E8 0B:96D8: 0A        ASL
C - - - - - 0x02D6E9 0B:96D9: A8        TAY
C - - - - - 0x02D6EA 0B:96DA: B9 38 97  LDA tbl_9738_spd_Y,Y
C - - - - - 0x02D6ED 0B:96DD: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x02D6F0 0B:96E0: B9 39 97  LDA tbl_9738_spd_Y + $01,Y
C - - - - - 0x02D6F3 0B:96E3: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x02D6F6 0B:96E6: 98        TYA
C - - - - - 0x02D6F7 0B:96E7: 4A        LSR
C - - - - - 0x02D6F8 0B:96E8: A8        TAY
C - - - - - 0x02D6F9 0B:96E9: B9 48 97  LDA tbl_9748,Y
C - - - - - 0x02D6FC 0B:96EC: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x02D6FF 0B:96EF: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x02D702 0B:96F2: 0A        ASL
C - - - - - 0x02D703 0B:96F3: A8        TAY
C - - - - - 0x02D704 0B:96F4: B9 54 97  LDA tbl_9754_spd_X,Y
C - - - - - 0x02D707 0B:96F7: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x02D70A 0B:96FA: B9 55 97  LDA tbl_9754_spd_X + $01,Y
C - - - - - 0x02D70D 0B:96FD: 9D 09 05  STA ram_obj_spd_X_lo,X
loc_9700:
C D 0 - - - 0x02D710 0B:9700: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x02D713 0B:9703: F0 03     BEQ bra_9708_RTS
C - - - - - 0x02D715 0B:9705: 4C 5D 80  JMP loc_805D_invert_spd_Y
bra_9708_RTS:
C - - - - - 0x02D718 0B:9708: 60        RTS
bra_9709:
C - - - - - 0x02D719 0B:9709: A5 1F     LDA ram_random
C - - - - - 0x02D71B 0B:970B: 29 03     AND #$03
C - - - - - 0x02D71D 0B:970D: 0A        ASL
C - - - - - 0x02D71E 0B:970E: A8        TAY
C - - - - - 0x02D71F 0B:970F: B9 40 97  LDA tbl_9740_spd_Y,Y
C - - - - - 0x02D722 0B:9712: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x02D725 0B:9715: B9 41 97  LDA tbl_9740_spd_Y + $01,Y
C - - - - - 0x02D728 0B:9718: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x02D72B 0B:971B: 98        TYA
C - - - - - 0x02D72C 0B:971C: 4A        LSR
C - - - - - 0x02D72D 0B:971D: A8        TAY
C - - - - - 0x02D72E 0B:971E: B9 4C 97  LDA tbl_974C,Y
C - - - - - 0x02D731 0B:9721: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x02D734 0B:9724: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x02D737 0B:9727: 0A        ASL
C - - - - - 0x02D738 0B:9728: A8        TAY
C - - - - - 0x02D739 0B:9729: B9 58 97  LDA tbl_9758_spd_X,Y
C - - - - - 0x02D73C 0B:972C: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x02D73F 0B:972F: B9 59 97  LDA tbl_9758_spd_X + $01,Y
C - - - - - 0x02D742 0B:9732: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x02D745 0B:9735: 4C 00 97  JMP loc_9700



tbl_9738_spd_Y:
- D 0 - - - 0x02D748 0B:9738: 01 80     .dbyt $0180 ; 00 
- D 0 - - - 0x02D74A 0B:973A: 01 C0     .dbyt $01C0 ; 01 
- D 0 - - - 0x02D74C 0B:973C: 02 00     .dbyt $0200 ; 02 
- D 0 - - - 0x02D74E 0B:973E: 02 40     .dbyt $0240 ; 03 



tbl_9740_spd_Y:
- D 0 - - - 0x02D750 0B:9740: 01 00     .dbyt $0100 ; 00 
- D 0 - - - 0x02D752 0B:9742: 00 A0     .dbyt $00A0 ; 01 
- D 0 - - - 0x02D754 0B:9744: 00 C0     .dbyt $00C0 ; 02 
- D 0 - - - 0x02D756 0B:9746: 01 20     .dbyt $0120 ; 03 



tbl_9748:
- D 0 - - - 0x02D758 0B:9748: 60        .byte $60   ; 00 
- D 0 - - - 0x02D759 0B:9749: 70        .byte $70   ; 01 
- D 0 - - - 0x02D75A 0B:974A: 58        .byte $58   ; 02 
- D 0 - - - 0x02D75B 0B:974B: 50        .byte $50   ; 03 



tbl_974C:
- D 0 - - - 0x02D75C 0B:974C: 30        .byte $30   ; 00 
- D 0 - - - 0x02D75D 0B:974D: 48        .byte $48   ; 01 
- D 0 - - - 0x02D75E 0B:974E: 38        .byte $38   ; 02 
- D 0 - - - 0x02D75F 0B:974F: 2C        .byte $2C   ; 03 



tbl_9750_spd_X:
- - - - - - 0x02D760 0B:9750: 02 00     .dbyt $0200 ; 00 facing right
- D 0 - - - 0x02D762 0B:9752: FE 00     .dbyt $FE00 ; 01 facing left



tbl_9754_spd_X:
- D 0 - - - 0x02D764 0B:9754: 00 C0     .dbyt $00C0 ; 00 facing right
- D 0 - - - 0x02D766 0B:9756: FF 40     .dbyt $FF40 ; 01 facing left



tbl_9758_spd_X:
- D 0 - - - 0x02D768 0B:9758: 00 40     .dbyt $0040 ; 00 facing right
- D 0 - - - 0x02D76A 0B:975A: FF C0     .dbyt $FFC0 ; 01 facing left



loc_975C:
C D 0 - - - 0x02D76C 0B:975C: 20 6C 97  JSR sub_976C
C - - - - - 0x02D76F 0B:975F: A9 08     LDA #$08
C - - - - - 0x02D771 0B:9761: BC A8 04  LDY ram_obj_facing,X
C - - - - - 0x02D774 0B:9764: D0 03     BNE bra_9769_facing_left
C - - - - - 0x02D776 0B:9766: 4C 6F 80  JMP loc_806F_increase_spd_X
bra_9769_facing_left:
C - - - - - 0x02D779 0B:9769: 4C 8F 80  JMP loc_808F_decrease_spd_X



sub_976C:
C - - - - - 0x02D77C 0B:976C: A9 08     LDA #$08
C - - - - - 0x02D77E 0B:976E: BC 1D 06  LDY ram_061D_obj,X
C - - - - - 0x02D781 0B:9771: F0 03     BEQ bra_9776
C - - - - - 0x02D783 0B:9773: 4C 7F 80  JMP loc_807F_increase_spd_Y
bra_9776:
C - - - - - 0x02D786 0B:9776: 4C A1 80  JMP loc_80A1_decrease_spd_Y



sub_9779:
C - - - - - 0x02D789 0B:9779: A9 00     LDA #$00
C - - - - - 0x02D78B 0B:977B: BC 1C 04  LDY ram_obj_pos_Y_hi,X
C - - - - - 0x02D78E 0B:977E: CC 1C 04  CPY ram_plr_pos_Y_hi
C - - - - - 0x02D791 0B:9781: 90 02     BCC bra_9785
C - - - - - 0x02D793 0B:9783: A9 01     LDA #$01
bra_9785:
C - - - - - 0x02D795 0B:9785: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x02D798 0B:9788: 60        RTS



ofs_039_9789_56:
C - - J - - 0x02D799 0B:9789: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02D79C 0B:978C: A0 01     LDY #$01
C - - - - - 0x02D79E 0B:978E: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02D7A0 0B:9790: 85 10     STA ram_0010_temp
C - - - - - 0x02D7A2 0B:9792: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x02D7A5 0B:9795: 85 04     STA ram_0004_t013_pos_X_hi
C - - - - - 0x02D7A7 0B:9797: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x02D7AA 0B:979A: 85 05     STA ram_0005_t009_pos_Y_hi
C - - - - - 0x02D7AC 0B:979C: 20 30 FF  JSR sub_0x03FF40
C - - - - - 0x02D7AF 0B:979F: A5 00     LDA ram_0000_t07B
sub_97A1:
C - - - - - 0x02D7B1 0B:97A1: 85 00     STA ram_0000_t07B
C - - - - - 0x02D7B3 0B:97A3: A8        TAY
C - - - - - 0x02D7B4 0B:97A4: B9 E0 97  LDA tbl_97E0_index,Y
C - - - - - 0x02D7B7 0B:97A7: A4 10     LDY ram_0010_temp
C - - - - - 0x02D7B9 0B:97A9: 18        CLC
C - - - - - 0x02D7BA 0B:97AA: 79 00 98  ADC tbl_9800_offset,Y
C - - - - - 0x02D7BD 0B:97AD: 0A        ASL
C - - - - - 0x02D7BE 0B:97AE: A8        TAY
C - - - - - 0x02D7BF 0B:97AF: B9 03 98  LDA tbl_9803_spd_Y,Y
C - - - - - 0x02D7C2 0B:97B2: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x02D7C5 0B:97B5: B9 39 98  LDA tbl_9839_spd_X,Y
C - - - - - 0x02D7C8 0B:97B8: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x02D7CB 0B:97BB: C8        INY
C - - - - - 0x02D7CC 0B:97BC: B9 03 98  LDA tbl_9803_spd_Y,Y
C - - - - - 0x02D7CF 0B:97BF: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x02D7D2 0B:97C2: B9 39 98  LDA tbl_9839_spd_X,Y
C - - - - - 0x02D7D5 0B:97C5: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x02D7D8 0B:97C8: A5 00     LDA ram_0000_t07B
C - - - - - 0x02D7DA 0B:97CA: 29 10     AND #$10
C - - - - - 0x02D7DC 0B:97CC: F0 03     BEQ bra_97D1
C - - - - - 0x02D7DE 0B:97CE: 20 4B 80  JSR sub_804B_invert_spd_X
bra_97D1:
C - - - - - 0x02D7E1 0B:97D1: 18        CLC
C - - - - - 0x02D7E2 0B:97D2: A5 00     LDA ram_0000_t07B
C - - - - - 0x02D7E4 0B:97D4: 69 08     ADC #$08
C - - - - - 0x02D7E6 0B:97D6: 29 10     AND #$10
C - - - - - 0x02D7E8 0B:97D8: F0 03     BEQ bra_97DD
C - - - - - 0x02D7EA 0B:97DA: 20 5D 80  JSR sub_805D_invert_spd_Y
bra_97DD:
C - - - - - 0x02D7ED 0B:97DD: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02D7EF 0B:97DF: 60        RTS



tbl_97E0_index:
; index for 0x02D813 and 0x02D849
- - - - - - 0x02D7F0 0B:97E0: 00        .byte $00   ; 00 
- - - - - - 0x02D7F1 0B:97E1: 01        .byte $01   ; 01 
- - - - - - 0x02D7F2 0B:97E2: 02        .byte $02   ; 02 
- - - - - - 0x02D7F3 0B:97E3: 03        .byte $03   ; 03 
- - - - - - 0x02D7F4 0B:97E4: 04        .byte $04   ; 04 
- D 0 - - - 0x02D7F5 0B:97E5: 05        .byte $05   ; 05 
- D 0 - - - 0x02D7F6 0B:97E6: 06        .byte $06   ; 06 
- D 0 - - - 0x02D7F7 0B:97E7: 07        .byte $07   ; 07 
- D 0 - - - 0x02D7F8 0B:97E8: 08        .byte $08   ; 08 
- D 0 - - - 0x02D7F9 0B:97E9: 07        .byte $07   ; 09 
- D 0 - - - 0x02D7FA 0B:97EA: 06        .byte $06   ; 0A 
- D 0 - - - 0x02D7FB 0B:97EB: 05        .byte $05   ; 0B 
- D 0 - - - 0x02D7FC 0B:97EC: 04        .byte $04   ; 0C 
- D 0 - - - 0x02D7FD 0B:97ED: 03        .byte $03   ; 0D 
- - - - - - 0x02D7FE 0B:97EE: 02        .byte $02   ; 0E 
- - - - - - 0x02D7FF 0B:97EF: 01        .byte $01   ; 0F 
- D 0 - - - 0x02D800 0B:97F0: 00        .byte $00   ; 10 
- - - - - - 0x02D801 0B:97F1: 01        .byte $01   ; 11 
- - - - - - 0x02D802 0B:97F2: 02        .byte $02   ; 12 
- D 0 - - - 0x02D803 0B:97F3: 03        .byte $03   ; 13 
- D 0 - - - 0x02D804 0B:97F4: 04        .byte $04   ; 14 
- D 0 - - - 0x02D805 0B:97F5: 05        .byte $05   ; 15 
- D 0 - - - 0x02D806 0B:97F6: 06        .byte $06   ; 16 
- D 0 - - - 0x02D807 0B:97F7: 07        .byte $07   ; 17 
- D 0 - - - 0x02D808 0B:97F8: 08        .byte $08   ; 18 
- D 0 - - - 0x02D809 0B:97F9: 07        .byte $07   ; 19 
- D 0 - - - 0x02D80A 0B:97FA: 06        .byte $06   ; 1A 
- - - - - - 0x02D80B 0B:97FB: 05        .byte $05   ; 1B 
- D 0 - - - 0x02D80C 0B:97FC: 04        .byte $04   ; 1C 
- D 0 - - - 0x02D80D 0B:97FD: 03        .byte $03   ; 1D 
- - - - - - 0x02D80E 0B:97FE: 02        .byte $02   ; 1E 
- - - - - - 0x02D80F 0B:97FF: 01        .byte $01   ; 1F 



tbl_9800_offset:
; index for 0x02D813 and 0x02D849
- - - - - - 0x02D810 0B:9800: 00        .byte $00   ; 00 
- D 0 - - - 0x02D811 0B:9801: 12        .byte $12   ; 01 
- - - - - - 0x02D812 0B:9802: 24        .byte $24   ; 02 



tbl_9803_spd_Y:
; external index at 0x02D810, indernal index at 0x02D7F0
; 00 
- - - - - - 0x02D813 0B:9803: FF 00     .dbyt $FF00 ; 00 
- - - - - - 0x02D815 0B:9805: FF 06     .dbyt $FF06 ; 01 
- - - - - - 0x02D817 0B:9807: FF 14     .dbyt $FF14 ; 02 
- - - - - - 0x02D819 0B:9809: FF 2C     .dbyt $FF2C ; 03 
- - - - - - 0x02D81B 0B:980B: FF 4C     .dbyt $FF4C ; 04 
- - - - - - 0x02D81D 0B:980D: FF 72     .dbyt $FF72 ; 05 
- - - - - - 0x02D81F 0B:980F: FF 9E     .dbyt $FF9E ; 06 
- - - - - - 0x02D821 0B:9811: FF CF     .dbyt $FFCF ; 07 
- - - - - - 0x02D823 0B:9813: 00 00     .dbyt $0000 ; 08 
; 12 
- - - - - - 0x02D825 0B:9815: FE 80     .dbyt $FE80 ; 00 
- - - - - - 0x02D827 0B:9817: FE 88     .dbyt $FE88 ; 01 
- - - - - - 0x02D829 0B:9819: FE 9E     .dbyt $FE9E ; 02 
- - - - - - 0x02D82B 0B:981B: FE C1     .dbyt $FEC1 ; 03 
- - - - - - 0x02D82D 0B:981D: FE F1     .dbyt $FEF1 ; 04 
- - - - - - 0x02D82F 0B:981F: FF 2B     .dbyt $FF2B ; 05 
- - - - - - 0x02D831 0B:9821: FF 6B     .dbyt $FF6B ; 06 
- - - - - - 0x02D833 0B:9823: FF B6     .dbyt $FFB6 ; 07 
- - - - - - 0x02D835 0B:9825: 00 00     .dbyt $0000 ; 08 
; 24 
- D 0 - - - 0x02D837 0B:9827: FE 00     .dbyt $FE00 ; 00 
- - - - - - 0x02D839 0B:9829: FE 0B     .dbyt $FE0B ; 01 
- - - - - - 0x02D83B 0B:982B: FE 27     .dbyt $FE27 ; 02 
- D 0 - - - 0x02D83D 0B:982D: FE 57     .dbyt $FE57 ; 03 
- D 0 - - - 0x02D83F 0B:982F: FE 97     .dbyt $FE97 ; 04 
- D 0 - - - 0x02D841 0B:9831: FE E4     .dbyt $FEE4 ; 05 
- D 0 - - - 0x02D843 0B:9833: FE 3C     .dbyt $FE3C ; 06 
- D 0 - - - 0x02D845 0B:9835: FE 9D     .dbyt $FE9D ; 07 
- D 0 - - - 0x02D847 0B:9837: 00 00     .dbyt $0000 ; 08 



tbl_9839_spd_X:
; external index at 0x02D810, indernal index at 0x02D7F0
; 00 
- - - - - - 0x02D849 0B:9839: 00 00     .dbyt $0000 ; 00 
- - - - - - 0x02D84B 0B:983B: 00 31     .dbyt $0031 ; 01 
- - - - - - 0x02D84D 0B:983D: 00 62     .dbyt $0062 ; 02 
- - - - - - 0x02D84F 0B:983F: 00 8E     .dbyt $008E ; 03 
- - - - - - 0x02D851 0B:9841: 00 B4     .dbyt $00B4 ; 04 
- - - - - - 0x02D853 0B:9843: 00 D4     .dbyt $00D4 ; 05 
- - - - - - 0x02D855 0B:9845: 00 EC     .dbyt $00EC ; 06 
- - - - - - 0x02D857 0B:9847: 00 FA     .dbyt $00FA ; 07 
- - - - - - 0x02D859 0B:9849: 01 00     .dbyt $0100 ; 08 
; 12 
- - - - - - 0x02D85B 0B:984B: 00 00     .dbyt $0000 ; 00 
- - - - - - 0x02D85D 0B:984D: 00 4A     .dbyt $004A ; 01 
- - - - - - 0x02D85F 0B:984F: 00 93     .dbyt $0093 ; 02 
- - - - - - 0x02D861 0B:9851: 00 D5     .dbyt $00D5 ; 03 
- - - - - - 0x02D863 0B:9853: 01 0F     .dbyt $010F ; 04 
- - - - - - 0x02D865 0B:9855: 01 3F     .dbyt $013F ; 05 
- - - - - - 0x02D867 0B:9857: 01 62     .dbyt $0162 ; 06 
- - - - - - 0x02D869 0B:9859: 01 78     .dbyt $0178 ; 07 
- - - - - - 0x02D86B 0B:985B: 01 80     .dbyt $0180 ; 08 
; 24 
- D 0 - - - 0x02D86D 0B:985D: 00 00     .dbyt $0000 ; 00 
- - - - - - 0x02D86F 0B:985F: 00 63     .dbyt $0063 ; 01 
- - - - - - 0x02D871 0B:9861: 00 C4     .dbyt $00C4 ; 02 
- D 0 - - - 0x02D873 0B:9863: 01 1C     .dbyt $011C ; 03 
- D 0 - - - 0x02D875 0B:9865: 01 69     .dbyt $0169 ; 04 
- D 0 - - - 0x02D877 0B:9867: 01 A9     .dbyt $01A9 ; 05 
- D 0 - - - 0x02D879 0B:9869: 01 D9     .dbyt $01D9 ; 06 
- D 0 - - - 0x02D87B 0B:986B: 01 F5     .dbyt $01F5 ; 07 
- D 0 - - - 0x02D87D 0B:986D: 02 00     .dbyt $0200 ; 08 



ofs_039_986F_57:
C - - J - - 0x02D87F 0B:986F: 20 40 82  JSR sub_8240
C - - - - - 0x02D882 0B:9872: 18        CLC
C - - - - - 0x02D883 0B:9873: AD F6 07  LDA ram_quest
C - - - - - 0x02D886 0B:9876: 0A        ASL
C - - - - - 0x02D887 0B:9877: 7D A8 04  ADC ram_obj_facing,X
C - - - - - 0x02D88A 0B:987A: A8        TAY
C - - - - - 0x02D88B 0B:987B: B9 9F 98  LDA tbl_989F_spd_X_hi,Y
C - - - - - 0x02D88E 0B:987E: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x02D891 0B:9881: B9 A3 98  LDA tbl_98A3_spd_X_lo,Y
C - - - - - 0x02D894 0B:9884: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x02D897 0B:9887: A0 00     LDY #$00
C - - - - - 0x02D899 0B:9889: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x02D89C 0B:988C: CD 1C 04  CMP ram_plr_pos_Y_hi
C - - - - - 0x02D89F 0B:988F: 90 01     BCC bra_9892
C - - - - - 0x02D8A1 0B:9891: C8        INY ; 01
bra_9892:
C - - - - - 0x02D8A2 0B:9892: B9 A7 98  LDA tbl_98A7_spd_Y_hi,Y
C - - - - - 0x02D8A5 0B:9895: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x02D8A8 0B:9898: B9 A9 98  LDA tbl_98A9_spd_Y_lo,Y
C - - - - - 0x02D8AB 0B:989B: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x02D8AE 0B:989E: 60        RTS



tbl_989F_spd_X_hi:
- D 0 - - - 0x02D8AF 0B:989F: 00        .byte > $0080   ; 00 1st quest, facing right
- D 0 - - - 0x02D8B0 0B:98A0: FF        .byte > $FF80   ; 01 1st quest, facing left
- D 0 - - - 0x02D8B1 0B:98A1: 00        .byte > $00C0   ; 02 2nd quest, facing right
- D 0 - - - 0x02D8B2 0B:98A2: FF        .byte > $FF40   ; 03 2nd quest, facing left



tbl_98A3_spd_X_lo:
- D 0 - - - 0x02D8B3 0B:98A3: 80        .byte < $0080   ; 00 
- D 0 - - - 0x02D8B4 0B:98A4: 80        .byte < $FF80   ; 01 
- D 0 - - - 0x02D8B5 0B:98A5: C0        .byte < $00C0   ; 02 
- D 0 - - - 0x02D8B6 0B:98A6: 40        .byte < $FF40   ; 03 



tbl_98A7_spd_Y_hi:
- D 0 - - - 0x02D8B7 0B:98A7: 00        .byte > $0040   ; 00 
- D 0 - - - 0x02D8B8 0B:98A8: FF        .byte > $FFC0   ; 01 



tbl_98A9_spd_Y_lo:
- D 0 - - - 0x02D8B9 0B:98A9: 40        .byte < $0040   ; 00 
- D 0 - - - 0x02D8BA 0B:98AA: C0        .byte < $FFC0   ; 01 



ofs_039_98AB_5E:
C - - J - - 0x02D8BB 0B:98AB: DE 06 06  DEC ram_obj_config,X
C - - - - - 0x02D8BE 0B:98AE: F0 07     BEQ bra_98B7
C - - - - - 0x02D8C0 0B:98B0: A0 03     LDY #$03
C - - - - - 0x02D8C2 0B:98B2: 20 A6 B7  JSR sub_B7A6
C - - - - - 0x02D8C5 0B:98B5: F0 06     BEQ bra_98BD_RTS
bra_98B7:
C - - - - - 0x02D8C7 0B:98B7: 20 9E 81  JSR sub_819E
C - - - - - 0x02D8CA 0B:98BA: FE C1 05  INC ram_05C1_obj,X
bra_98BD_RTS:
C - - - - - 0x02D8CD 0B:98BD: 60        RTS
bra_98BE:
C - - - - - 0x02D8CE 0B:98BE: A9 17     LDA #$17
C - - - - - 0x02D8D0 0B:98C0: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x02D8D3 0B:98C3: 60        RTS



ofs_039_98C4_5B:
C - - J - - 0x02D8D4 0B:98C4: 20 D5 80  JSR sub_80D5_get_object_distance_Y_to_player
C - - - - - 0x02D8D7 0B:98C7: C9 18     CMP #$18
C - - - - - 0x02D8D9 0B:98C9: B0 07     BCS bra_98D2
C - - - - - 0x02D8DB 0B:98CB: 20 B3 80  JSR sub_80B3_get_object_distance_X_to_player
C - - - - - 0x02D8DE 0B:98CE: C9 30     CMP #$30
C - - - - - 0x02D8E0 0B:98D0: 90 EC     BCC bra_98BE
bra_98D2:
C - - - - - 0x02D8E2 0B:98D2: A5 34     LDA ram_blk_id_fr
C - - - - - 0x02D8E4 0B:98D4: D0 04     BNE bra_98DA
C - - - - - 0x02D8E6 0B:98D6: A0 00     LDY #$00
C - - - - - 0x02D8E8 0B:98D8: F0 05     BEQ bra_98DF    ; jmp
bra_98DA:
C - - - - - 0x02D8EA 0B:98DA: A0 01     LDY #$01
C - - - - - 0x02D8EC 0B:98DC: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02D8EE 0B:98DE: A8        TAY
bra_98DF:
C - - - - - 0x02D8EF 0B:98DF: B9 21 99  LDA tbl_9921_spd_Y_hi,Y
C - - - - - 0x02D8F2 0B:98E2: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x02D8F5 0B:98E5: B9 23 99  LDA tbl_9923_spd_Y_lo,Y
C - - - - - 0x02D8F8 0B:98E8: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x02D8FB 0B:98EB: B9 25 99  LDA tbl_9925,Y
C - - - - - 0x02D8FE 0B:98EE: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x02D901 0B:98F1: B9 27 99  LDA tbl_9927_spd_X_hi,Y
C - - - - - 0x02D904 0B:98F4: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x02D907 0B:98F7: B9 29 99  LDA tbl_9929_spd_X_lo,Y
C - - - - - 0x02D90A 0B:98FA: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x02D90D 0B:98FD: DE 1D 06  DEC ram_061D_obj,X
C - - - - - 0x02D910 0B:9900: D0 05     BNE bra_9907
C - - - - - 0x02D912 0B:9902: A9 29     LDA #$29
C - - - - - 0x02D914 0B:9904: 9D C1 05  STA ram_05C1_obj,X
bra_9907:
C - - - - - 0x02D917 0B:9907: A0 08     LDY #$08
C - - - - - 0x02D919 0B:9909: 20 A6 B7  JSR sub_B7A6
C - - - - - 0x02D91C 0B:990C: C9 01     CMP #$01
C - - - - - 0x02D91E 0B:990E: F0 03     BEQ bra_9913
C - - - - - 0x02D920 0B:9910: FE C1 05  INC ram_05C1_obj,X
bra_9913:
C - - - - - 0x02D923 0B:9913: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02D926 0B:9916: 20 AA 81  JSR sub_81AA
C - - - - - 0x02D929 0B:9919: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x02D92C 0B:991C: F0 9F     BEQ bra_98BD_RTS    ; if facing right
C - - - - - 0x02D92E 0B:991E: 4C 4B 80  JMP loc_804B_invert_spd_X



tbl_9921_spd_Y_hi:
- D 0 - - - 0x02D931 0B:9921: FD        .byte > $FD00   ; 00 
- D 0 - - - 0x02D932 0B:9922: FC        .byte > $FC00   ; 01 



tbl_9923_spd_Y_lo:
- D 0 - - - 0x02D933 0B:9923: 00        .byte < $FD00   ; 00 
- D 0 - - - 0x02D934 0B:9924: 00        .byte < $FC00   ; 01 



tbl_9925:
- D 0 - - - 0x02D935 0B:9925: 28        .byte $28   ; 00 
- D 0 - - - 0x02D936 0B:9926: 20        .byte $20   ; 01 



tbl_9927_spd_X_hi:
- D 0 - - - 0x02D937 0B:9927: 01        .byte > $0120   ; 00 
- D 0 - - - 0x02D938 0B:9928: 00        .byte > $00C0   ; 01 



tbl_9929_spd_X_lo:
- D 0 - - - 0x02D939 0B:9929: 20        .byte < $0120   ; 00 
- D 0 - - - 0x02D93A 0B:992A: C0        .byte < $00C0   ; 01 



sub_992B:
loc_992B:
C D 0 - - - 0x02D93B 0B:992B: 20 8E 99  JSR sub_998E
C - - - - - 0x02D93E 0B:992E: 38        SEC
C - - - - - 0x02D93F 0B:992F: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x02D942 0B:9932: E9 18     SBC #$18
C - - - - - 0x02D944 0B:9934: 85 01     STA ram_0001_t017_pos_Y_hi
loc_9936_loop:
C D 0 - - - 0x02D946 0B:9936: 20 E3 80  JSR sub_80E3_find_empty_object_slot_09_0C
C - - - - - 0x02D949 0B:9939: D0 2D     BNE bra_9968_no_empty_slots
C - - - - - 0x02D94B 0B:993B: 20 6B 99  JSR sub_996B
C - - - - - 0x02D94E 0B:993E: A9 2A     LDA #$2A
C - - - - - 0x02D950 0B:9940: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x02D953 0B:9943: 4C 36 99  JMP loc_9936_loop



ofs_039_9946_68:
C - - J - - 0x02D956 0B:9946: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02D959 0B:9949: 20 8E 99  JSR sub_998E
C - - - - - 0x02D95C 0B:994C: A0 01     LDY #$01
C - - - - - 0x02D95E 0B:994E: 38        SEC
C - - - - - 0x02D95F 0B:994F: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x02D962 0B:9952: F1 02     SBC (ram_0002_t007_data),Y
C - - - - - 0x02D964 0B:9954: 85 01     STA ram_0001_t017_pos_Y_hi
loc_9956_loop:
C D 0 - - - 0x02D966 0B:9956: 20 E3 80  JSR sub_80E3_find_empty_object_slot_09_0C
C - - - - - 0x02D969 0B:9959: D0 0D     BNE bra_9968_no_empty_slots
C - - - - - 0x02D96B 0B:995B: 20 6B 99  JSR sub_996B
C - - - - - 0x02D96E 0B:995E: A0 02     LDY #$02
C - - - - - 0x02D970 0B:9960: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02D972 0B:9962: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x02D975 0B:9965: 4C 56 99  JMP loc_9956_loop
bra_9968_no_empty_slots:
C - - - - - 0x02D978 0B:9968: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02D97A 0B:996A: 60        RTS



sub_996B:
C - - - - - 0x02D97B 0B:996B: A5 00     LDA ram_0000_t057_copy_obj_pos_X_hi
C - - - - - 0x02D97D 0B:996D: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x02D980 0B:9970: A5 01     LDA ram_0001_t017_pos_Y_hi
C - - - - - 0x02D982 0B:9972: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x02D985 0B:9975: A9 68     LDA #$68
C - - - - - 0x02D987 0B:9977: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x02D98A 0B:997A: A5 0E     LDA ram_000E_t00D_some_obj_flags
C - - - - - 0x02D98C 0B:997C: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x02D98F 0B:997F: A9 00     LDA #$00
C - - - - - 0x02D991 0B:9981: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x02D994 0B:9984: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x02D997 0B:9987: 9D 8C 04  STA ram_obj_type,X  ; con_obj_type_00
C - - - - - 0x02D99A 0B:998A: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x02D99D 0B:998D: 60        RTS



sub_998E:
C - - - - - 0x02D99E 0B:998E: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x02D9A1 0B:9991: 85 00     STA ram_0000_t057_copy_obj_pos_X_hi
C - - - - - 0x02D9A3 0B:9993: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x02D9A6 0B:9996: 29 FB     AND #con_obj_flag_04 ^ $FF
C - - - - - 0x02D9A8 0B:9998: 09 60     ORA #con_obj_flag_20 + con_obj_flag_40
C - - - - - 0x02D9AA 0B:999A: 85 0E     STA ram_000E_t00D_some_obj_flags
C - - - - - 0x02D9AC 0B:999C: 60        RTS



ofs_039_999D_6B:
C - - J - - 0x02D9AD 0B:999D: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02D9AF 0B:999F: A0 06     LDY #$06
C - - - - - 0x02D9B1 0B:99A1: 20 A6 B7  JSR sub_B7A6
C - - - - - 0x02D9B4 0B:99A4: D0 0E     BNE bra_99B4
C - - - - - 0x02D9B6 0B:99A6: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02D9B8 0B:99A8: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x02D9BB 0B:99AB: A9 01     LDA #$01
C - - - - - 0x02D9BD 0B:99AD: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x02D9C0 0B:99B0: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02D9C3 0B:99B3: 60        RTS
bra_99B4:
C - - - - - 0x02D9C4 0B:99B4: 20 91 8B  JSR sub_8B91
C - - - - - 0x02D9C7 0B:99B7: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02D9C9 0B:99B9: A0 08     LDY #$08
C - - - - - 0x02D9CB 0B:99BB: 20 A6 B7  JSR sub_B7A6
C - - - - - 0x02D9CE 0B:99BE: F0 2E     BEQ bra_99EE
C - - - - - 0x02D9D0 0B:99C0: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02D9D2 0B:99C2: A0 0C     LDY #$0C
C - - - - - 0x02D9D4 0B:99C4: 20 A6 B7  JSR sub_B7A6
C - - - - - 0x02D9D7 0B:99C7: D0 25     BNE bra_99EE
C - - - - - 0x02D9D9 0B:99C9: BD EF 05  LDA ram_05EF_obj,X
C - - - - - 0x02D9DC 0B:99CC: C9 71     CMP #$71
C - - - - - 0x02D9DE 0B:99CE: D0 05     BNE bra_99D5
C - - - - - 0x02D9E0 0B:99D0: 20 0E 9A  JSR sub_9A0E
C - - - - - 0x02D9E3 0B:99D3: D0 34     BNE bra_9A09_RTS
bra_99D5:
C - - - - - 0x02D9E5 0B:99D5: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02D9E7 0B:99D7: DE 06 06  DEC ram_obj_config,X
C - - - - - 0x02D9EA 0B:99DA: F0 12     BEQ bra_99EE
C - - - - - 0x02D9EC 0B:99DC: BC 38 04  LDY ram_obj_pos_X_hi,X
C - - - - - 0x02D9EF 0B:99DF: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x02D9F2 0B:99E2: D0 05     BNE bra_99E9_facing_left
C - - - - - 0x02D9F4 0B:99E4: C0 F4     CPY #$F4
C - - - - - 0x02D9F6 0B:99E6: B0 06     BCS bra_99EE
C - - - - - 0x02D9F8 0B:99E8: 60        RTS
bra_99E9_facing_left:
C - - - - - 0x02D9F9 0B:99E9: C0 0C     CPY #$0C
C - - - - - 0x02D9FB 0B:99EB: 90 01     BCC bra_99EE
C - - - - - 0x02D9FD 0B:99ED: 60        RTS
bra_99EE:
C - - - - - 0x02D9FE 0B:99EE: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02DA00 0B:99F0: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x02DA03 0B:99F3: 49 01     EOR #$01
C - - - - - 0x02DA05 0B:99F5: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x02DA08 0B:99F8: 20 4B 80  JSR sub_804B_invert_spd_X
C - - - - - 0x02DA0B 0B:99FB: A5 1A     LDA ram_frm_cnt
C - - - - - 0x02DA0D 0B:99FD: 6D 38 04  ADC ram_plr_pos_X_hi
C - - - - - 0x02DA10 0B:9A00: 29 03     AND #$03
C - - - - - 0x02DA12 0B:9A02: A8        TAY
C - - - - - 0x02DA13 0B:9A03: B9 0A 9A  LDA tbl_9A0A,Y
C - - - - - 0x02DA16 0B:9A06: 9D 06 06  STA ram_obj_config,X
bra_9A09_RTS:
C - - - - - 0x02DA19 0B:9A09: 60        RTS



tbl_9A0A:
- D 0 - - - 0x02DA1A 0B:9A0A: A9        .byte $A9   ; 00 
- D 0 - - - 0x02DA1B 0B:9A0B: D1        .byte $D1   ; 01 
- D 0 - - - 0x02DA1C 0B:9A0C: 97        .byte $97   ; 02 
- D 0 - - - 0x02DA1D 0B:9A0D: C3        .byte $C3   ; 03 



sub_9A0E:
C - - - - - 0x02DA1E 0B:9A0E: 20 D5 80  JSR sub_80D5_get_object_distance_Y_to_player
C - - - - - 0x02DA21 0B:9A11: C9 08     CMP #$08
C - - - - - 0x02DA23 0B:9A13: B0 21     BCS bra_9A36
C - - - - - 0x02DA25 0B:9A15: 20 B3 80  JSR sub_80B3_get_object_distance_X_to_player
C - - - - - 0x02DA28 0B:9A18: C9 20     CMP #$20
C - - - - - 0x02DA2A 0B:9A1A: B0 1A     BCS bra_9A36
C - - - - - 0x02DA2C 0B:9A1C: A9 00     LDA #$00    ; facing right
C - - - - - 0x02DA2E 0B:9A1E: BC 38 04  LDY ram_obj_pos_X_hi,X
C - - - - - 0x02DA31 0B:9A21: CC 38 04  CPY ram_plr_pos_X_hi
C - - - - - 0x02DA34 0B:9A24: 90 02     BCC bra_9A28
C - - - - - 0x02DA36 0B:9A26: A9 01     LDA #$01    ; facing left
bra_9A28:
C - - - - - 0x02DA38 0B:9A28: DD A8 04  CMP ram_obj_facing,X
C - - - - - 0x02DA3B 0B:9A2B: D0 09     BNE bra_9A36
C - - - - - 0x02DA3D 0B:9A2D: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x02DA40 0B:9A30: A9 05     LDA #$05
C - - - - - 0x02DA42 0B:9A32: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x02DA45 0B:9A35: 60        RTS
bra_9A36:
C - - - - - 0x02DA46 0B:9A36: A9 00     LDA #$00
C - - - - - 0x02DA48 0B:9A38: 60        RTS



ofs_039_9A39_79:
C - - J - - 0x02DA49 0B:9A39: 20 C5 9D  JSR sub_9DC5
C - - - - - 0x02DA4C 0B:9A3C: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02DA4E 0B:9A3E: 60        RTS



ofs_039_9A3F_77:
C - - J - - 0x02DA4F 0B:9A3F: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x02DA52 0B:9A42: 29 01     AND #con_obj_flag_01
C - - - - - 0x02DA54 0B:9A44: D0 29     BNE bra_9A6F_RTS
C - - - - - 0x02DA56 0B:9A46: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x02DA59 0B:9A49: 8D ED 07  STA ram_07ED
C - - - - - 0x02DA5C 0B:9A4C: A9 02     LDA #$02
C - - - - - 0x02DA5E 0B:9A4E: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x02DA61 0B:9A51: 20 A7 81  JSR sub_81A7
C - - - - - 0x02DA64 0B:9A54: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x02DA67 0B:9A57: A9 30     LDA #$30
C - - - - - 0x02DA69 0B:9A59: 8D EE 07  STA ram_07EE
C - - - - - 0x02DA6C 0B:9A5C: A9 00     LDA #$00
C - - - - - 0x02DA6E 0B:9A5E: 8D EF 07  STA ram_07EF
C - - - - - 0x02DA71 0B:9A61: AC ED 07  LDY ram_07ED
C - - - - - 0x02DA74 0B:9A64: B9 70 9A  LDA tbl_9A70_spd_X_hi,Y
C - - - - - 0x02DA77 0B:9A67: 9D F2 04  STA ram_obj_spd_X_hi,X
loc_9A6A:
C D 0 - - - 0x02DA7A 0B:9A6A: A9 09     LDA #$09
C - - - - - 0x02DA7C 0B:9A6C: 9D 06 06  STA ram_obj_config,X
bra_9A6F_RTS:
C - - - - - 0x02DA7F 0B:9A6F: 60        RTS



tbl_9A70_spd_X_hi:
- D 0 - - - 0x02DA80 0B:9A70: 01        .byte $01   ; 00 
- D 0 - - - 0x02DA81 0B:9A71: FF        .byte $FF   ; 01 



tbl_9A72:
- D 0 - - - 0x02DA82 0B:9A72: F8        .byte $F8   ; 00 
- D 0 - - - 0x02DA83 0B:9A73: 08        .byte $08   ; 01 



tbl_9A74_facing:
- D 0 - - - 0x02DA84 0B:9A74: 00        .byte $00   ; 00 
- D 0 - - - 0x02DA85 0B:9A75: 01        .byte $01   ; 01 



tbl_9A76_obj_config:
- D 0 - - - 0x02DA86 0B:9A76: 08        .byte $08   ; 00 
- D 0 - - - 0x02DA87 0B:9A77: 18        .byte $18   ; 01 



ofs_039_9A78_76:
C - - J - - 0x02DA88 0B:9A78: DE 06 06  DEC ram_obj_config,X
C - - - - - 0x02DA8B 0B:9A7B: D0 F2     BNE bra_9A6F_RTS
C - - - - - 0x02DA8D 0B:9A7D: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x02DA90 0B:9A80: C9 08     CMP #$08
C - - - - - 0x02DA92 0B:9A82: F0 7E     BEQ bra_9B02
C - - - - - 0x02DA94 0B:9A84: AC ED 07  LDY ram_07ED
C - - - - - 0x02DA97 0B:9A87: B9 74 9A  LDA tbl_9A74_facing,Y
C - - - - - 0x02DA9A 0B:9A8A: 85 00     STA ram_0000_t0D9_obj_facing
C - - - - - 0x02DA9C 0B:9A8C: B9 72 9B  LDA tbl_9B72,Y
C - - - - - 0x02DA9F 0B:9A8F: 85 09     STA ram_0009_t020
C - - - - - 0x02DAA1 0B:9A91: 18        CLC
C - - - - - 0x02DAA2 0B:9A92: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x02DAA5 0B:9A95: 79 72 9A  ADC tbl_9A72,Y
C - - - - - 0x02DAA8 0B:9A98: BC 1D 06  LDY ram_061D_obj,X
C - - - - - 0x02DAAB 0B:9A9B: 99 38 04  STA ram_obj_pos_X_hi,Y
C - - - - - 0x02DAAE 0B:9A9E: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x02DAB1 0B:9AA1: 29 BE     AND #(con_obj_flag_01 + con_obj_flag_40) ^ $FF
C - - - - - 0x02DAB3 0B:9AA3: 85 08     STA ram_0008_temp
C - - - - - 0x02DAB5 0B:9AA5: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x02DAB8 0B:9AA8: 29 01     AND #con_obj_flag_01
C - - - - - 0x02DABA 0B:9AAA: 65 09     ADC ram_0009_t020
C - - - - - 0x02DABC 0B:9AAC: 29 01     AND #$01
C - - - - - 0x02DABE 0B:9AAE: 05 08     ORA ram_0008_temp
C - - - - - 0x02DAC0 0B:9AB0: 99 70 04  STA ram_obj_flags,Y
C - - - - - 0x02DAC3 0B:9AB3: A5 00     LDA ram_0000_t0D9_obj_facing
C - - - - - 0x02DAC5 0B:9AB5: 99 A8 04  STA ram_obj_facing,Y
C - - - - - 0x02DAC8 0B:9AB8: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x02DACB 0B:9ABB: 99 1C 04  STA ram_obj_pos_Y_hi,Y
C - - - - - 0x02DACE 0B:9ABE: A9 12     LDA #con_obj_type_12
C - - - - - 0x02DAD0 0B:9AC0: 99 8C 04  STA ram_obj_type,Y
C - - - - - 0x02DAD3 0B:9AC3: A9 2D     LDA #$2D
C - - - - - 0x02DAD5 0B:9AC5: 99 EF 05  STA ram_05EF_obj,Y
C - - - - - 0x02DAD8 0B:9AC8: A9 59     LDA #$59
C - - - - - 0x02DADA 0B:9ACA: 99 4E 05  STA ram_obj_id,Y
C - - - - - 0x02DADD 0B:9ACD: A9 00     LDA #$00
C - - - - - 0x02DADF 0B:9ACF: 99 54 04  STA ram_0454_obj,Y
C - - - - - 0x02DAE2 0B:9AD2: 99 F2 04  STA ram_obj_spd_X_hi,Y
C - - - - - 0x02DAE5 0B:9AD5: 99 09 05  STA ram_obj_spd_X_lo,Y
C - - - - - 0x02DAE8 0B:9AD8: 99 20 05  STA ram_obj_spd_Y_hi,Y
C - - - - - 0x02DAEB 0B:9ADB: 99 37 05  STA ram_obj_spd_Y_lo,Y
C - - - - - 0x02DAEE 0B:9ADE: 99 C1 05  STA ram_05C1_obj,Y
C - - - - - 0x02DAF1 0B:9AE1: A9 20     LDA #$20
C - - - - - 0x02DAF3 0B:9AE3: 99 7B 06  STA ram_obj_hp,Y
C - - - - - 0x02DAF6 0B:9AE6: A9 20     LDA #$20
C - - - - - 0x02DAF8 0B:9AE8: 99 57 06  STA ram_obj_0658,Y
C - - - - - 0x02DAFB 0B:9AEB: 84 11     STY ram_0011_t01A
C - - - - - 0x02DAFD 0B:9AED: A9 42     LDA #$42
C - - - - - 0x02DAFF 0B:9AEF: A4 48     LDY ram_chr_bank_5122
C - - - - - 0x02DB01 0B:9AF1: C0 14     CPY #con__chr_bank + $14
C - - - - - 0x02DB03 0B:9AF3: D0 02     BNE bra_9AF7
C - - - - - 0x02DB05 0B:9AF5: A9 50     LDA #$50
bra_9AF7:
C - - - - - 0x02DB07 0B:9AF7: A4 11     LDY ram_0011_t01A
C - - - - - 0x02DB09 0B:9AF9: 99 00 04  STA ram_obj_anim_id,Y
C - - - - - 0x02DB0C 0B:9AFC: FE 1D 06  INC ram_061D_obj,X
C - - - - - 0x02DB0F 0B:9AFF: 4C 6A 9A  JMP loc_9A6A
bra_9B02:
C - - - - - 0x02DB12 0B:9B02: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02DB15 0B:9B05: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x02DB18 0B:9B08: A9 00     LDA #$00
C - - - - - 0x02DB1A 0B:9B0A: 8D EC 07  STA ram_07EC
C - - - - - 0x02DB1D 0B:9B0D: 20 9E 81  JSR sub_819E
C - - - - - 0x02DB20 0B:9B10: AC ED 07  LDY ram_07ED
C - - - - - 0x02DB23 0B:9B13: B9 76 9A  LDA tbl_9A76_obj_config,Y
C - - - - - 0x02DB26 0B:9B16: 85 07     STA ram_0007_t00A
C - - - - - 0x02DB28 0B:9B18: A2 01     LDX #$01
bra_9B1A_loop:
C - - - - - 0x02DB2A 0B:9B1A: A5 07     LDA ram_0007_t00A
C - - - - - 0x02DB2C 0B:9B1C: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x02DB2F 0B:9B1F: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x02DB32 0B:9B22: 20 3C 9B  JSR sub_9B3C
C - - - - - 0x02DB35 0B:9B25: 20 4E 9B  JSR sub_9B4E
C - - - - - 0x02DB38 0B:9B28: E8        INX
C - - - - - 0x02DB39 0B:9B29: E0 09     CPX #$09
C - - - - - 0x02DB3B 0B:9B2B: 90 ED     BCC bra_9B1A_loop
C - - - - - 0x02DB3D 0B:9B2D: A2 01     LDX #$01
bra_9B2F_loop:
C - - - - - 0x02DB3F 0B:9B2F: A9 02     LDA #$02
C - - - - - 0x02DB41 0B:9B31: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x02DB44 0B:9B34: E8        INX
C - - - - - 0x02DB45 0B:9B35: E0 08     CPX #$08
C - - - - - 0x02DB47 0B:9B37: 90 F6     BCC bra_9B2F_loop
C - - - - - 0x02DB49 0B:9B39: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02DB4B 0B:9B3B: 60        RTS



sub_9B3C:
C - - - - - 0x02DB4C 0B:9B3C: 8A        TXA
C - - - - - 0x02DB4D 0B:9B3D: A8        TAY
C - - - - - 0x02DB4E 0B:9B3E: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x02DB51 0B:9B41: 29 F0     AND #$F0
C - - - - - 0x02DB53 0B:9B43: 85 01     STA ram_0001_t011
C - - - - - 0x02DB55 0B:9B45: B9 60 9B  LDA tbl_9B60,Y
C - - - - - 0x02DB58 0B:9B48: 05 01     ORA ram_0001_t011
C - - - - - 0x02DB5A 0B:9B4A: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x02DB5D 0B:9B4D: 60        RTS



sub_9B4E:
C - - - - - 0x02DB5E 0B:9B4E: 8A        TXA
C - - - - - 0x02DB5F 0B:9B4F: A8        TAY
C - - - - - 0x02DB60 0B:9B50: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x02DB63 0B:9B53: 29 0F     AND #$0F
C - - - - - 0x02DB65 0B:9B55: 85 01     STA ram_0001_t010
C - - - - - 0x02DB67 0B:9B57: B9 69 9B  LDA tbl_9B69,Y
C - - - - - 0x02DB6A 0B:9B5A: 05 01     ORA ram_0001_t010
C - - - - - 0x02DB6C 0B:9B5C: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x02DB6F 0B:9B5F: 60        RTS



tbl_9B60:
- - - - - - 0x02DB70 0B:9B60: 02        .byte $02   ; 00 
- D 0 - - - 0x02DB71 0B:9B61: 02        .byte $02   ; 01 
- D 0 - - - 0x02DB72 0B:9B62: 02        .byte $02   ; 02 
- D 0 - - - 0x02DB73 0B:9B63: 02        .byte $02   ; 03 
- D 0 - - - 0x02DB74 0B:9B64: 02        .byte $02   ; 04 
- D 0 - - - 0x02DB75 0B:9B65: 02        .byte $02   ; 05 
- D 0 - - - 0x02DB76 0B:9B66: 02        .byte $02   ; 06 
- D 0 - - - 0x02DB77 0B:9B67: 02        .byte $02   ; 07 
- D 0 - - - 0x02DB78 0B:9B68: 02        .byte $02   ; 08 



tbl_9B69:
- - - - - - 0x02DB79 0B:9B69: 80        .byte $80   ; 00 
- D 0 - - - 0x02DB7A 0B:9B6A: 80        .byte $80   ; 01 
- D 0 - - - 0x02DB7B 0B:9B6B: 80        .byte $80   ; 02 
- D 0 - - - 0x02DB7C 0B:9B6C: 80        .byte $80   ; 03 
- D 0 - - - 0x02DB7D 0B:9B6D: 80        .byte $80   ; 04 
- D 0 - - - 0x02DB7E 0B:9B6E: 80        .byte $80   ; 05 
- D 0 - - - 0x02DB7F 0B:9B6F: 80        .byte $80   ; 06 
- D 0 - - - 0x02DB80 0B:9B70: 80        .byte $80   ; 07 
- D 0 - - - 0x02DB81 0B:9B71: 80        .byte $80   ; 08 



tbl_9B72:
- D 0 - - - 0x02DB82 0B:9B72: FF        .byte $FF   ; 00 
- D 0 - - - 0x02DB83 0B:9B73: 00        .byte $00   ; 01 



ofs_039_9B74_78:
C - - J - - 0x02DB84 0B:9B74: 20 83 9B  JSR sub_9B83
C - - - - - 0x02DB87 0B:9B77: 20 F8 9B  JSR sub_9BF8
C - - - - - 0x02DB8A 0B:9B7A: 20 E9 9D  JSR sub_9DE9
C - - - - - 0x02DB8D 0B:9B7D: 20 C5 9D  JSR sub_9DC5
C - - - - - 0x02DB90 0B:9B80: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02DB92 0B:9B82: 60        RTS



sub_9B83:
C - - - - - 0x02DB93 0B:9B83: A2 01     LDX #$01
bra_9B85_loop:
C - - - - - 0x02DB95 0B:9B85: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x02DB98 0B:9B88: 29 0F     AND #$0F
C - - - - - 0x02DB9A 0B:9B8A: A8        TAY
C - - - - - 0x02DB9B 0B:9B8B: 88        DEY
C - - - - - 0x02DB9C 0B:9B8C: D0 09     BNE bra_9B97
C - - - - - 0x02DB9E 0B:9B8E: 20 3C 9B  JSR sub_9B3C
C - - - - - 0x02DBA1 0B:9B91: 20 D3 9B  JSR sub_9BD3
C - - - - - 0x02DBA4 0B:9B94: 4C A3 9B  JMP loc_9BA3
bra_9B97:
C - - - - - 0x02DBA7 0B:9B97: 84 01     STY ram_0001_t00F
C - - - - - 0x02DBA9 0B:9B99: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x02DBAC 0B:9B9C: 29 F0     AND #$F0
C - - - - - 0x02DBAE 0B:9B9E: 05 01     ORA ram_0001_t00F
C - - - - - 0x02DBB0 0B:9BA0: 9D 33 06  STA ram_obj_0634,X
loc_9BA3:
C D 0 - - - 0x02DBB3 0B:9BA3: BD 33 06  LDA ram_obj_0634,X
; / 10
C - - - - - 0x02DBB6 0B:9BA6: 4A        LSR
C - - - - - 0x02DBB7 0B:9BA7: 4A        LSR
C - - - - - 0x02DBB8 0B:9BA8: 4A        LSR
C - - - - - 0x02DBB9 0B:9BA9: 4A        LSR
C - - - - - 0x02DBBA 0B:9BAA: A8        TAY
C - - - - - 0x02DBBB 0B:9BAB: 88        DEY
C - - - - - 0x02DBBC 0B:9BAC: D0 09     BNE bra_9BB7
C - - - - - 0x02DBBE 0B:9BAE: 20 4E 9B  JSR sub_9B4E
C - - - - - 0x02DBC1 0B:9BB1: 20 10 9D  JSR sub_9D10
C - - - - - 0x02DBC4 0B:9BB4: 4C CB 9B  JMP loc_9BCB
bra_9BB7:
C - - - - - 0x02DBC7 0B:9BB7: 84 01     STY ram_0001_t00E
; * 10
C - - - - - 0x02DBC9 0B:9BB9: 06 01     ASL ram_0001_t00E
C - - - - - 0x02DBCB 0B:9BBB: 06 01     ASL ram_0001_t00E
C - - - - - 0x02DBCD 0B:9BBD: 06 01     ASL ram_0001_t00E
C - - - - - 0x02DBCF 0B:9BBF: 06 01     ASL ram_0001_t00E
C - - - - - 0x02DBD1 0B:9BC1: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x02DBD4 0B:9BC4: 29 0F     AND #$0F
C - - - - - 0x02DBD6 0B:9BC6: 05 01     ORA ram_0001_t00E
C - - - - - 0x02DBD8 0B:9BC8: 9D 33 06  STA ram_obj_0634,X
loc_9BCB:
C D 0 - - - 0x02DBDB 0B:9BCB: E8        INX
C - - - - - 0x02DBDC 0B:9BCC: E0 09     CPX #$09
C - - - - - 0x02DBDE 0B:9BCE: 90 B5     BCC bra_9B85_loop
C - - - - - 0x02DBE0 0B:9BD0: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02DBE2 0B:9BD2: 60        RTS



sub_9BD3:
C - - - - - 0x02DBE3 0B:9BD3: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x02DBE6 0B:9BD6: 38        SEC
C - - - - - 0x02DBE7 0B:9BD7: FD 06 06  SBC ram_obj_config,X
C - - - - - 0x02DBEA 0B:9BDA: F0 1B     BEQ bra_9BF7_RTS
C - - - - - 0x02DBEC 0B:9BDC: 29 10     AND #$10
C - - - - - 0x02DBEE 0B:9BDE: D0 0C     BNE bra_9BEC
C - - - - - 0x02DBF0 0B:9BE0: 18        CLC
C - - - - - 0x02DBF1 0B:9BE1: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x02DBF4 0B:9BE4: 69 01     ADC #$01
C - - - - - 0x02DBF6 0B:9BE6: 29 1F     AND #$1F
C - - - - - 0x02DBF8 0B:9BE8: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x02DBFB 0B:9BEB: 60        RTS
bra_9BEC:
C - - - - - 0x02DBFC 0B:9BEC: 38        SEC
C - - - - - 0x02DBFD 0B:9BED: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x02DC00 0B:9BF0: E9 01     SBC #$01
C - - - - - 0x02DC02 0B:9BF2: 29 1F     AND #$1F
C - - - - - 0x02DC04 0B:9BF4: 9D 06 06  STA ram_obj_config,X
bra_9BF7_RTS:
C - - - - - 0x02DC07 0B:9BF7: 60        RTS



sub_9BF8:
C - - - - - 0x02DC08 0B:9BF8: A9 01     LDA #$01
C - - - - - 0x02DC0A 0B:9BFA: 85 10     STA ram_0010_t00F_object_index
loc_9BFC_loop:
C D 0 - - - 0x02DC0C 0B:9BFC: A6 10     LDX ram_0010_t00F_object_index
C - - - - - 0x02DC0E 0B:9BFE: E0 07     CPX #$07
C - - - - - 0x02DC10 0B:9C00: F0 21     BEQ bra_9C23
C - - - - - 0x02DC12 0B:9C02: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x02DC15 0B:9C05: 85 04     STA ram_0004_t008_copy_obj_pos_X_hi
C - - - - - 0x02DC17 0B:9C07: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x02DC1A 0B:9C0A: 85 05     STA ram_0005_t005_copy_obj_pos_Y_hi
C - - - - - 0x02DC1C 0B:9C0C: BC 06 06  LDY ram_obj_config,X
C - - - - - 0x02DC1F 0B:9C0F: 20 7F 9D  JSR sub_9D7F
C - - - - - 0x02DC22 0B:9C12: 18        CLC
C - - - - - 0x02DC23 0B:9C13: B9 67 9C  LDA tbl_9C67,Y
C - - - - - 0x02DC26 0B:9C16: 65 05     ADC ram_0005_t005_copy_obj_pos_Y_hi
C - - - - - 0x02DC28 0B:9C18: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x02DC2B 0B:9C1B: 20 89 9C  JSR sub_9C89_set_facing_and_animation
C - - - - - 0x02DC2E 0B:9C1E: E6 10     INC ram_0010_t00F_object_index
; bzk optimize, BNE
C - - - - - 0x02DC30 0B:9C20: 4C FC 9B  JMP loc_9BFC_loop
bra_9C23:
C - - - - - 0x02DC33 0B:9C23: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x02DC36 0B:9C26: 85 04     STA ram_0004_t008_copy_obj_pos_X_hi
C - - - - - 0x02DC38 0B:9C28: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x02DC3B 0B:9C2B: 85 05     STA ram_0005_t006_copy_obj_pos_Y_hi
C - - - - - 0x02DC3D 0B:9C2D: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x02DC40 0B:9C30: 29 FE     AND #con_obj_flag_01 ^ $FF
C - - - - - 0x02DC42 0B:9C32: 85 00     STA ram_0000_t030_some_obj_flags
C - - - - - 0x02DC44 0B:9C34: E8        INX
C - - - - - 0x02DC45 0B:9C35: 18        CLC
C - - - - - 0x02DC46 0B:9C36: AC ED 07  LDY ram_07ED
C - - - - - 0x02DC49 0B:9C39: B9 87 9C  LDA tbl_9C87,Y
C - - - - - 0x02DC4C 0B:9C3C: 20 8B 9D  JSR sub_9D8B
C - - - - - 0x02DC4F 0B:9C3F: A5 05     LDA ram_0005_t006_copy_obj_pos_Y_hi
C - - - - - 0x02DC51 0B:9C41: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x02DC54 0B:9C44: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02DC56 0B:9C46: 60        RTS



tbl_9C47:
- - - - - - 0x02DC57 0B:9C47: 00        .byte $00   ; 00 
- - - - - - 0x02DC58 0B:9C48: 02        .byte $02   ; 01 
- - - - - - 0x02DC59 0B:9C49: 03        .byte $03   ; 02 
- - - - - - 0x02DC5A 0B:9C4A: 05        .byte $05   ; 03 
- D 0 - - - 0x02DC5B 0B:9C4B: 06        .byte $06   ; 04 
- D 0 - - - 0x02DC5C 0B:9C4C: 07        .byte $07   ; 05 
- D 0 - - - 0x02DC5D 0B:9C4D: 08        .byte $08   ; 06 
- D 0 - - - 0x02DC5E 0B:9C4E: 09        .byte $09   ; 07 
- D 0 - - - 0x02DC5F 0B:9C4F: 09        .byte $09   ; 08 
- D 0 - - - 0x02DC60 0B:9C50: 09        .byte $09   ; 09 
- D 0 - - - 0x02DC61 0B:9C51: 08        .byte $08   ; 0A 
- D 0 - - - 0x02DC62 0B:9C52: 07        .byte $07   ; 0B 
- D 0 - - - 0x02DC63 0B:9C53: 06        .byte $06   ; 0C 
- D 0 - - - 0x02DC64 0B:9C54: 05        .byte $05   ; 0D 
- D 0 - - - 0x02DC65 0B:9C55: 03        .byte $03   ; 0E 
- - - - - - 0x02DC66 0B:9C56: 02        .byte $02   ; 0F 
- - - - - - 0x02DC67 0B:9C57: 00        .byte $00   ; 10 
- - - - - - 0x02DC68 0B:9C58: FE        .byte $FE   ; 11 
- D 0 - - - 0x02DC69 0B:9C59: FD        .byte $FD   ; 12 
- D 0 - - - 0x02DC6A 0B:9C5A: FB        .byte $FB   ; 13 
- D 0 - - - 0x02DC6B 0B:9C5B: FA        .byte $FA   ; 14 
- D 0 - - - 0x02DC6C 0B:9C5C: F9        .byte $F9   ; 15 
- D 0 - - - 0x02DC6D 0B:9C5D: F8        .byte $F8   ; 16 
- D 0 - - - 0x02DC6E 0B:9C5E: F7        .byte $F7   ; 17 
- D 0 - - - 0x02DC6F 0B:9C5F: F7        .byte $F7   ; 18 
- D 0 - - - 0x02DC70 0B:9C60: F7        .byte $F7   ; 19 
- D 0 - - - 0x02DC71 0B:9C61: F8        .byte $F8   ; 1A 
- - - - - - 0x02DC72 0B:9C62: F9        .byte $F9   ; 1B 
- - - - - - 0x02DC73 0B:9C63: FA        .byte $FA   ; 1C 
- - - - - - 0x02DC74 0B:9C64: FB        .byte $FB   ; 1D 
- - - - - - 0x02DC75 0B:9C65: FD        .byte $FD   ; 1E 
- - - - - - 0x02DC76 0B:9C66: FE        .byte $FE   ; 1F 



tbl_9C67:
- - - - - - 0x02DC77 0B:9C67: F7        .byte $F7   ; 00 
- - - - - - 0x02DC78 0B:9C68: F7        .byte $F7   ; 01 
- - - - - - 0x02DC79 0B:9C69: F8        .byte $F8   ; 02 
- - - - - - 0x02DC7A 0B:9C6A: F9        .byte $F9   ; 03 
- D 0 - - - 0x02DC7B 0B:9C6B: FA        .byte $FA   ; 04 
- D 0 - - - 0x02DC7C 0B:9C6C: FB        .byte $FB   ; 05 
- D 0 - - - 0x02DC7D 0B:9C6D: FD        .byte $FD   ; 06 
- D 0 - - - 0x02DC7E 0B:9C6E: FE        .byte $FE   ; 07 
- D 0 - - - 0x02DC7F 0B:9C6F: 00        .byte $00   ; 08 
- D 0 - - - 0x02DC80 0B:9C70: 02        .byte $02   ; 09 
- D 0 - - - 0x02DC81 0B:9C71: 03        .byte $03   ; 0A 
- D 0 - - - 0x02DC82 0B:9C72: 05        .byte $05   ; 0B 
- D 0 - - - 0x02DC83 0B:9C73: 06        .byte $06   ; 0C 
- D 0 - - - 0x02DC84 0B:9C74: 07        .byte $07   ; 0D 
- D 0 - - - 0x02DC85 0B:9C75: 08        .byte $08   ; 0E 
- - - - - - 0x02DC86 0B:9C76: 09        .byte $09   ; 0F 
- - - - - - 0x02DC87 0B:9C77: 09        .byte $09   ; 10 
- - - - - - 0x02DC88 0B:9C78: 09        .byte $09   ; 11 
- D 0 - - - 0x02DC89 0B:9C79: 08        .byte $08   ; 12 
- D 0 - - - 0x02DC8A 0B:9C7A: 07        .byte $07   ; 13 
- D 0 - - - 0x02DC8B 0B:9C7B: 06        .byte $06   ; 14 
- D 0 - - - 0x02DC8C 0B:9C7C: 05        .byte $05   ; 15 
- D 0 - - - 0x02DC8D 0B:9C7D: 03        .byte $03   ; 16 
- D 0 - - - 0x02DC8E 0B:9C7E: 02        .byte $02   ; 17 
- D 0 - - - 0x02DC8F 0B:9C7F: 00        .byte $00   ; 18 
- D 0 - - - 0x02DC90 0B:9C80: FE        .byte $FE   ; 19 
- D 0 - - - 0x02DC91 0B:9C81: FD        .byte $FD   ; 1A 
- - - - - - 0x02DC92 0B:9C82: FB        .byte $FB   ; 1B 
- - - - - - 0x02DC93 0B:9C83: FA        .byte $FA   ; 1C 
- - - - - - 0x02DC94 0B:9C84: F9        .byte $F9   ; 1D 
- - - - - - 0x02DC95 0B:9C85: F7        .byte $F7   ; 1E 
- - - - - - 0x02DC96 0B:9C86: F7        .byte $F7   ; 1F 



tbl_9C87:
- D 0 - - - 0x02DC97 0B:9C87: 0F        .byte $0F   ; 00 
- D 0 - - - 0x02DC98 0B:9C88: F1        .byte $F1   ; 01 



sub_9C89_set_facing_and_animation:
C - - - - - 0x02DC99 0B:9C89: BC 06 06  LDY ram_obj_config,X
C - - - - - 0x02DC9C 0B:9C8C: B9 C8 9C  LDA tbl_9CC8_facing,Y
C - - - - - 0x02DC9F 0B:9C8F: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x02DCA2 0B:9C92: B9 A8 9C  LDA tbl_9CA8_animation,Y
C - - - - - 0x02DCA5 0B:9C95: 85 0B     STA ram_000B_t008_animation
C - - - - - 0x02DCA7 0B:9C97: A9 00     LDA #$00
C - - - - - 0x02DCA9 0B:9C99: A4 48     LDY ram_chr_bank_5122
C - - - - - 0x02DCAB 0B:9C9B: C0 14     CPY #con__chr_bank + $14
C - - - - - 0x02DCAD 0B:9C9D: D0 02     BNE bra_9CA1
C - - - - - 0x02DCAF 0B:9C9F: A9 0E     LDA #$0E
bra_9CA1:
C - - - - - 0x02DCB1 0B:9CA1: 18        CLC
C - - - - - 0x02DCB2 0B:9CA2: 65 0B     ADC ram_000B_t008_animation
C - - - - - 0x02DCB4 0B:9CA4: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x02DCB7 0B:9CA7: 60        RTS



tbl_9CA8_animation:
- - - - - - 0x02DCB8 0B:9CA8: 3E        .byte $3E   ; 00 
- - - - - - 0x02DCB9 0B:9CA9: 3E        .byte $3E   ; 01 
- - - - - - 0x02DCBA 0B:9CAA: 40        .byte $40   ; 02 
- - - - - - 0x02DCBB 0B:9CAB: 40        .byte $40   ; 03 
- D 0 - - - 0x02DCBC 0B:9CAC: 40        .byte $40   ; 04 
- D 0 - - - 0x02DCBD 0B:9CAD: 40        .byte $40   ; 05 
- D 0 - - - 0x02DCBE 0B:9CAE: 40        .byte $40   ; 06 
- D 0 - - - 0x02DCBF 0B:9CAF: 42        .byte $42   ; 07 
- D 0 - - - 0x02DCC0 0B:9CB0: 42        .byte $42   ; 08 
- D 0 - - - 0x02DCC1 0B:9CB1: 42        .byte $42   ; 09 
- D 0 - - - 0x02DCC2 0B:9CB2: 42        .byte $42   ; 0A 
- D 0 - - - 0x02DCC3 0B:9CB3: 44        .byte $44   ; 0B 
- D 0 - - - 0x02DCC4 0B:9CB4: 44        .byte $44   ; 0C 
- D 0 - - - 0x02DCC5 0B:9CB5: 44        .byte $44   ; 0D 
- D 0 - - - 0x02DCC6 0B:9CB6: 44        .byte $44   ; 0E 
- - - - - - 0x02DCC7 0B:9CB7: 46        .byte $46   ; 0F 
- - - - - - 0x02DCC8 0B:9CB8: 46        .byte $46   ; 10 
- - - - - - 0x02DCC9 0B:9CB9: 46        .byte $46   ; 11 
- D 0 - - - 0x02DCCA 0B:9CBA: 44        .byte $44   ; 12 
- D 0 - - - 0x02DCCB 0B:9CBB: 44        .byte $44   ; 13 
- D 0 - - - 0x02DCCC 0B:9CBC: 44        .byte $44   ; 14 
- D 0 - - - 0x02DCCD 0B:9CBD: 44        .byte $44   ; 15 
- D 0 - - - 0x02DCCE 0B:9CBE: 44        .byte $44   ; 16 
- D 0 - - - 0x02DCCF 0B:9CBF: 42        .byte $42   ; 17 
- D 0 - - - 0x02DCD0 0B:9CC0: 42        .byte $42   ; 18 
- D 0 - - - 0x02DCD1 0B:9CC1: 42        .byte $42   ; 19 
- D 0 - - - 0x02DCD2 0B:9CC2: 42        .byte $42   ; 1A 
- - - - - - 0x02DCD3 0B:9CC3: 46        .byte $46   ; 1B 
- - - - - - 0x02DCD4 0B:9CC4: 46        .byte $46   ; 1C 
- - - - - - 0x02DCD5 0B:9CC5: 46        .byte $46   ; 1D 
- - - - - - 0x02DCD6 0B:9CC6: 46        .byte $46   ; 1E 
- - - - - - 0x02DCD7 0B:9CC7: 44        .byte $44   ; 1F 



tbl_9CC8_facing:
; 00 = facing right
; 01 = facing left
- - - - - - 0x02DCD8 0B:9CC8: 01        .byte $01   ; 00 
- - - - - - 0x02DCD9 0B:9CC9: 00        .byte $00   ; 01 
- - - - - - 0x02DCDA 0B:9CCA: 00        .byte $00   ; 02 
- - - - - - 0x02DCDB 0B:9CCB: 00        .byte $00   ; 03 
- D 0 - - - 0x02DCDC 0B:9CCC: 00        .byte $00   ; 04 
- D 0 - - - 0x02DCDD 0B:9CCD: 00        .byte $00   ; 05 
- D 0 - - - 0x02DCDE 0B:9CCE: 00        .byte $00   ; 06 
- D 0 - - - 0x02DCDF 0B:9CCF: 00        .byte $00   ; 07 
- D 0 - - - 0x02DCE0 0B:9CD0: 00        .byte $00   ; 08 
- D 0 - - - 0x02DCE1 0B:9CD1: 00        .byte $00   ; 09 
- D 0 - - - 0x02DCE2 0B:9CD2: 00        .byte $00   ; 0A 
- D 0 - - - 0x02DCE3 0B:9CD3: 00        .byte $00   ; 0B 
- D 0 - - - 0x02DCE4 0B:9CD4: 00        .byte $00   ; 0C 
- D 0 - - - 0x02DCE5 0B:9CD5: 00        .byte $00   ; 0D 
- D 0 - - - 0x02DCE6 0B:9CD6: 00        .byte $00   ; 0E 
- - - - - - 0x02DCE7 0B:9CD7: 00        .byte $00   ; 0F 
- - - - - - 0x02DCE8 0B:9CD8: 00        .byte $00   ; 10 
- - - - - - 0x02DCE9 0B:9CD9: 01        .byte $01   ; 11 
- D 0 - - - 0x02DCEA 0B:9CDA: 01        .byte $01   ; 12 
- D 0 - - - 0x02DCEB 0B:9CDB: 01        .byte $01   ; 13 
- D 0 - - - 0x02DCEC 0B:9CDC: 01        .byte $01   ; 14 
- D 0 - - - 0x02DCED 0B:9CDD: 01        .byte $01   ; 15 
- D 0 - - - 0x02DCEE 0B:9CDE: 01        .byte $01   ; 16 
- D 0 - - - 0x02DCEF 0B:9CDF: 01        .byte $01   ; 17 
- D 0 - - - 0x02DCF0 0B:9CE0: 01        .byte $01   ; 18 
- D 0 - - - 0x02DCF1 0B:9CE1: 01        .byte $01   ; 19 
- D 0 - - - 0x02DCF2 0B:9CE2: 01        .byte $01   ; 1A 
- - - - - - 0x02DCF3 0B:9CE3: 01        .byte $01   ; 1B 
- - - - - - 0x02DCF4 0B:9CE4: 01        .byte $01   ; 1C 
- - - - - - 0x02DCF5 0B:9CE5: 01        .byte $01   ; 1D 
- - - - - - 0x02DCF6 0B:9CE6: 01        .byte $01   ; 1E 
- - - - - - 0x02DCF7 0B:9CE7: 01        .byte $01   ; 1F 



ofs_039_9CE8_7A:
C - - J - - 0x02DCF8 0B:9CE8: A2 01     LDX #$01
C - - - - - 0x02DCFA 0B:9CEA: A5 1A     LDA ram_frm_cnt
C - - - - - 0x02DCFC 0B:9CEC: 29 01     AND #$01
C - - - - - 0x02DCFE 0B:9CEE: A8        TAY
bra_9CEF_loop:
C - - - - - 0x02DCFF 0B:9CEF: B9 0C 9D  LDA tbl_9D0C,Y
C - - - - - 0x02DD02 0B:9CF2: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x02DD05 0B:9CF5: B9 0E 9D  LDA tbl_9D0E,Y
C - - - - - 0x02DD08 0B:9CF8: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x02DD0B 0B:9CFB: A9 00     LDA #$00
C - - - - - 0x02DD0D 0B:9CFD: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x02DD10 0B:9D00: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x02DD13 0B:9D03: 9D 8C 04  STA ram_obj_type,X  ; con_obj_type_00
C - - - - - 0x02DD16 0B:9D06: E8        INX
C - - - - - 0x02DD17 0B:9D07: E0 09     CPX #$09
C - - - - - 0x02DD19 0B:9D09: 90 E4     BCC bra_9CEF_loop
C - - - - - 0x02DD1B 0B:9D0B: 60        RTS



tbl_9D0C:
- D 0 - - - 0x02DD1C 0B:9D0C: AE        .byte $AE   ; 00 
- D 0 - - - 0x02DD1D 0B:9D0D: A3        .byte $A3   ; 01 



tbl_9D0E:
- D 0 - - - 0x02DD1E 0B:9D0E: 4E        .byte $4E   ; 00 
- D 0 - - - 0x02DD1F 0B:9D0F: 43        .byte $43   ; 01 



sub_9D10:
C - - - - - 0x02DD20 0B:9D10: E0 08     CPX #$08
C - - - - - 0x02DD22 0B:9D12: F0 0A     BEQ bra_9D1E
C - - - - - 0x02DD24 0B:9D14: 8A        TXA
C - - - - - 0x02DD25 0B:9D15: A8        TAY
C - - - - - 0x02DD26 0B:9D16: C8        INY
C - - - - - 0x02DD27 0B:9D17: B9 06 06  LDA ram_obj_config,Y
C - - - - - 0x02DD2A 0B:9D1A: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x02DD2D 0B:9D1D: 60        RTS
bra_9D1E:
loc_9D1E_loop:
C D 0 - - - 0x02DD2E 0B:9D1E: 18        CLC
C - - - - - 0x02DD2F 0B:9D1F: AC ED 07  LDY ram_07ED
C - - - - - 0x02DD32 0B:9D22: B9 7D 9D  LDA tbl_9D7D_offset,Y
C - - - - - 0x02DD35 0B:9D25: 6D EC 07  ADC ram_07EC
C - - - - - 0x02DD38 0B:9D28: A8        TAY
C - - - - - 0x02DD39 0B:9D29: B9 3F 9D  LDA tbl_9D3F,Y
C - - - - - 0x02DD3C 0B:9D2C: C9 FF     CMP #$FF
C - - - - - 0x02DD3E 0B:9D2E: F0 07     BEQ bra_9D37_FF
C - - - - - 0x02DD40 0B:9D30: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x02DD43 0B:9D33: EE EC 07  INC ram_07EC
C - - - - - 0x02DD46 0B:9D36: 60        RTS
bra_9D37_FF:
C - - - - - 0x02DD47 0B:9D37: A9 00     LDA #$00
C - - - - - 0x02DD49 0B:9D39: 8D EC 07  STA ram_07EC
C - - - - - 0x02DD4C 0B:9D3C: 4C 1E 9D  JMP loc_9D1E_loop



tbl_9D3F:
; index at 0x02DD8D
; 00 
- D 0 - - - 0x02DD4F 0B:9D3F: 08        .byte $08   ; 00 
- D 0 - - - 0x02DD50 0B:9D40: 0E        .byte $0E   ; 01 
- D 0 - - - 0x02DD51 0B:9D41: 0E        .byte $0E   ; 02 
- D 0 - - - 0x02DD52 0B:9D42: 0A        .byte $0A   ; 03 
- D 0 - - - 0x02DD53 0B:9D43: 0A        .byte $0A   ; 04 
- D 0 - - - 0x02DD54 0B:9D44: 08        .byte $08   ; 05 
- D 0 - - - 0x02DD55 0B:9D45: 08        .byte $08   ; 06 
- D 0 - - - 0x02DD56 0B:9D46: 08        .byte $08   ; 07 
- D 0 - - - 0x02DD57 0B:9D47: 08        .byte $08   ; 08 
- D 0 - - - 0x02DD58 0B:9D48: 06        .byte $06   ; 09 
- D 0 - - - 0x02DD59 0B:9D49: 04        .byte $04   ; 0A 
- D 0 - - - 0x02DD5A 0B:9D4A: 04        .byte $04   ; 0B 
- D 0 - - - 0x02DD5B 0B:9D4B: 08        .byte $08   ; 0C 
- D 0 - - - 0x02DD5C 0B:9D4C: 0C        .byte $0C   ; 0D 
- D 0 - - - 0x02DD5D 0B:9D4D: 0C        .byte $0C   ; 0E 
- D 0 - - - 0x02DD5E 0B:9D4E: 0E        .byte $0E   ; 0F 
- D 0 - - - 0x02DD5F 0B:9D4F: 0A        .byte $0A   ; 10 
- D 0 - - - 0x02DD60 0B:9D50: 0A        .byte $0A   ; 11 
- D 0 - - - 0x02DD61 0B:9D51: 08        .byte $08   ; 12 
- D 0 - - - 0x02DD62 0B:9D52: 08        .byte $08   ; 13 
- D 0 - - - 0x02DD63 0B:9D53: 0E        .byte $0E   ; 14 
- D 0 - - - 0x02DD64 0B:9D54: 0E        .byte $0E   ; 15 
- D 0 - - - 0x02DD65 0B:9D55: 0E        .byte $0E   ; 16 
- D 0 - - - 0x02DD66 0B:9D56: 0E        .byte $0E   ; 17 
- D 0 - - - 0x02DD67 0B:9D57: 0C        .byte $0C   ; 18 
- D 0 - - - 0x02DD68 0B:9D58: 0A        .byte $0A   ; 19 
- D 0 - - - 0x02DD69 0B:9D59: 08        .byte $08   ; 1A 
- D 0 - - - 0x02DD6A 0B:9D5A: 08        .byte $08   ; 1B 
- D 0 - - - 0x02DD6B 0B:9D5B: 08        .byte $08   ; 1C 
- D 0 - - - 0x02DD6C 0B:9D5C: 04        .byte $04   ; 1D 
- D 0 - - - 0x02DD6D 0B:9D5D: FF        .byte $FF   ; 1E 
; 1F 
- D 0 - - - 0x02DD6E 0B:9D5E: 18        .byte $18   ; 00 
- D 0 - - - 0x02DD6F 0B:9D5F: 12        .byte $12   ; 01 
- D 0 - - - 0x02DD70 0B:9D60: 12        .byte $12   ; 02 
- D 0 - - - 0x02DD71 0B:9D61: 16        .byte $16   ; 03 
- D 0 - - - 0x02DD72 0B:9D62: 16        .byte $16   ; 04 
- D 0 - - - 0x02DD73 0B:9D63: 18        .byte $18   ; 05 
- D 0 - - - 0x02DD74 0B:9D64: 18        .byte $18   ; 06 
- D 0 - - - 0x02DD75 0B:9D65: 18        .byte $18   ; 07 
- D 0 - - - 0x02DD76 0B:9D66: 18        .byte $18   ; 08 
- D 0 - - - 0x02DD77 0B:9D67: 1A        .byte $1A   ; 09 
- D 0 - - - 0x02DD78 0B:9D68: 14        .byte $14   ; 0A 
- D 0 - - - 0x02DD79 0B:9D69: 14        .byte $14   ; 0B 
- D 0 - - - 0x02DD7A 0B:9D6A: 18        .byte $18   ; 0C 
- D 0 - - - 0x02DD7B 0B:9D6B: 14        .byte $14   ; 0D 
- D 0 - - - 0x02DD7C 0B:9D6C: 14        .byte $14   ; 0E 
- D 0 - - - 0x02DD7D 0B:9D6D: 12        .byte $12   ; 0F 
- D 0 - - - 0x02DD7E 0B:9D6E: 16        .byte $16   ; 10 
- D 0 - - - 0x02DD7F 0B:9D6F: 16        .byte $16   ; 11 
- D 0 - - - 0x02DD80 0B:9D70: 18        .byte $18   ; 12 
- D 0 - - - 0x02DD81 0B:9D71: 18        .byte $18   ; 13 
- D 0 - - - 0x02DD82 0B:9D72: 12        .byte $12   ; 14 
- D 0 - - - 0x02DD83 0B:9D73: 12        .byte $12   ; 15 
- D 0 - - - 0x02DD84 0B:9D74: 12        .byte $12   ; 16 
- - - - - - 0x02DD85 0B:9D75: 12        .byte $12   ; 17 
- - - - - - 0x02DD86 0B:9D76: 14        .byte $14   ; 18 
- - - - - - 0x02DD87 0B:9D77: 16        .byte $16   ; 19 
- - - - - - 0x02DD88 0B:9D78: 18        .byte $18   ; 1A 
- - - - - - 0x02DD89 0B:9D79: 18        .byte $18   ; 1B 
- - - - - - 0x02DD8A 0B:9D7A: 18        .byte $18   ; 1C 
- - - - - - 0x02DD8B 0B:9D7B: 14        .byte $14   ; 1D 
- - - - - - 0x02DD8C 0B:9D7C: FF        .byte $FF   ; 1E 



tbl_9D7D_offset:
; index for 0x02DD4F
- D 0 - - - 0x02DD8D 0B:9D7D: 00        .byte $00   ; 00 
- D 0 - - - 0x02DD8E 0B:9D7E: 1F        .byte $1F   ; 01 



sub_9D7F:
C - - - - - 0x02DD8F 0B:9D7F: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x02DD92 0B:9D82: 29 3E     AND #(con_obj_flag_01 + con_obj_flag_40 + con_obj_flag_not_visible) ^ $FF
C - - - - - 0x02DD94 0B:9D84: 85 00     STA ram_0000_t030_some_obj_flags
C - - - - - 0x02DD96 0B:9D86: E8        INX
C - - - - - 0x02DD97 0B:9D87: 18        CLC
C - - - - - 0x02DD98 0B:9D88: B9 47 9C  LDA tbl_9C47,Y
sub_9D8B:
C - - - - - 0x02DD9B 0B:9D8B: 10 09     BPL bra_9D96
C - - - - - 0x02DD9D 0B:9D8D: 65 04     ADC ram_0004_t008_copy_obj_pos_X_hi
C - - - - - 0x02DD9F 0B:9D8F: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x02DDA2 0B:9D92: A9 FF     LDA #$FF
C - - - - - 0x02DDA4 0B:9D94: D0 07     BNE bra_9D9D    ; jmp
bra_9D96:
C - - - - - 0x02DDA6 0B:9D96: 65 04     ADC ram_0004_t008_copy_obj_pos_X_hi
C - - - - - 0x02DDA8 0B:9D98: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x02DDAB 0B:9D9B: A9 00     LDA #$00
bra_9D9D:
C - - - - - 0x02DDAD 0B:9D9D: 85 01     STA ram_0001_t00D_add_obj_flag
C - - - - - 0x02DDAF 0B:9D9F: CA        DEX
C - - - - - 0x02DDB0 0B:9DA0: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x02DDB3 0B:9DA3: 29 01     AND #con_obj_flag_01
C - - - - - 0x02DDB5 0B:9DA5: 65 01     ADC ram_0001_t00D_add_obj_flag
C - - - - - 0x02DDB7 0B:9DA7: 29 01     AND #$01
C - - - - - 0x02DDB9 0B:9DA9: 05 00     ORA ram_0000_t030_some_obj_flags
C - - - - - 0x02DDBB 0B:9DAB: E8        INX
C - - - - - 0x02DDBC 0B:9DAC: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x02DDBF 0B:9DAF: 29 01     AND #con_obj_flag_01
C - - - - - 0x02DDC1 0B:9DB1: D0 09     BNE bra_9DBC
C - - - - - 0x02DDC3 0B:9DB3: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x02DDC6 0B:9DB6: 29 7F     AND #con_obj_flag_not_visible ^ $FF
C - - - - - 0x02DDC8 0B:9DB8: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x02DDCB 0B:9DBB: 60        RTS
bra_9DBC:
C - - - - - 0x02DDCC 0B:9DBC: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x02DDCF 0B:9DBF: 09 80     ORA #con_obj_flag_not_visible
C - - - - - 0x02DDD1 0B:9DC1: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x02DDD4 0B:9DC4: 60        RTS



sub_9DC5:
; out
    ; X = object index
C - - - - - 0x02DDD5 0B:9DC5: A2 01     LDX #$01
bra_9DC7_loop:
C - - - - - 0x02DDD7 0B:9DC7: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x02DDDA 0B:9DCA: F0 06     BEQ bra_9DD2
C - - - - - 0x02DDDC 0B:9DCC: E8        INX
C - - - - - 0x02DDDD 0B:9DCD: E0 09     CPX #$09
C - - - - - 0x02DDDF 0B:9DCF: 90 F6     BCC bra_9DC7_loop
C - - - - - 0x02DDE1 0B:9DD1: 60        RTS
bra_9DD2:
- - - - - - 0x02DDE2 0B:9DD2: A2 01     LDX #$01
bra_9DD4_loop:
- - - - - - 0x02DDE4 0B:9DD4: 20 B2 84  JSR sub_84B2
; A = 00 (from 0x02C11D)
; bzk warning, this is dangerous to expect 00 after JSR
- - - - - - 0x02DDE7 0B:9DD7: 9D 70 04  STA ram_obj_flags,X ; con_obj_flag_00
- - - - - - 0x02DDEA 0B:9DDA: E8        INX
- - - - - - 0x02DDEB 0B:9DDB: E0 09     CPX #$09
- - - - - - 0x02DDED 0B:9DDD: 90 F5     BCC bra_9DD4_loop
- - - - - - 0x02DDEF 0B:9DDF: AD 4D 06  LDA ram_obj_0646 + $08
- - - - - - 0x02DDF2 0B:9DE2: AA        TAX
- - - - - - 0x02DDF3 0B:9DE3: A9 02     LDA #$02
- - - - - - 0x02DDF5 0B:9DE5: 9D C8 07  STA ram_07C8,X
- - - - - - 0x02DDF8 0B:9DE8: 60        RTS



sub_9DE9:
C - - - - - 0x02DDF9 0B:9DE9: AD EE 07  LDA ram_07EE
C - - - - - 0x02DDFC 0B:9DEC: F0 04     BEQ bra_9DF2
C - - - - - 0x02DDFE 0B:9DEE: CE EE 07  DEC ram_07EE
C - - - - - 0x02DE01 0B:9DF1: 60        RTS
bra_9DF2:
C - - - - - 0x02DE02 0B:9DF2: AD 78 04  LDA ram_obj_flags + $08
C - - - - - 0x02DE05 0B:9DF5: 29 81     AND #con_obj_flag_01 + con_obj_flag_not_visible
C - - - - - 0x02DE07 0B:9DF7: D0 68     BNE bra_9E61
C - - - - - 0x02DE09 0B:9DF9: AD EF 07  LDA ram_07EF
C - - - - - 0x02DE0C 0B:9DFC: D0 0E     BNE bra_9E0C
C - - - - - 0x02DE0E 0B:9DFE: A0 02     LDY #$02
C - - - - - 0x02DE10 0B:9E00: 20 7B 9E  JSR sub_9E7B
C - - - - - 0x02DE13 0B:9E03: A9 10     LDA #$10
C - - - - - 0x02DE15 0B:9E05: 8D EE 07  STA ram_07EE
C - - - - - 0x02DE18 0B:9E08: EE EF 07  INC ram_07EF
C - - - - - 0x02DE1B 0B:9E0B: 60        RTS
bra_9E0C:
C - - - - - 0x02DE1C 0B:9E0C: 20 E3 80  JSR sub_80E3_find_empty_object_slot_09_0C
C - - - - - 0x02DE1F 0B:9E0F: D0 50     BNE bra_9E61_no_empty_slots
C - - - - - 0x02DE21 0B:9E11: 20 D7 FE  JSR sub_0x03FEE7_clear_object_speed_and_data
C - - - - - 0x02DE24 0B:9E14: A9 58     LDA #$58
C - - - - - 0x02DE26 0B:9E16: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x02DE29 0B:9E19: A9 40     LDA #$40
C - - - - - 0x02DE2B 0B:9E1B: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x02DE2E 0B:9E1E: AD B0 04  LDA ram_obj_facing + $08
C - - - - - 0x02DE31 0B:9E21: 49 01     EOR #$01
C - - - - - 0x02DE33 0B:9E23: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x02DE36 0B:9E26: 20 C9 9F  JSR sub_9FC9
C - - - - - 0x02DE39 0B:9E29: 18        CLC
C - - - - - 0x02DE3A 0B:9E2A: AD 24 04  LDA ram_obj_pos_Y_hi + $08
C - - - - - 0x02DE3D 0B:9E2D: 69 04     ADC #$04
C - - - - - 0x02DE3F 0B:9E2F: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x02DE42 0B:9E32: AD 78 04  LDA ram_obj_flags + $08
; bzk optimize, AND FA + ORA 20
C - - - - - 0x02DE45 0B:9E35: 29 BA     AND #(con_obj_flag_01 + con_obj_flag_04 + con_obj_flag_40) ^ $FF
C - - - - - 0x02DE47 0B:9E37: 09 60     ORA #con_obj_flag_20 + con_obj_flag_40
C - - - - - 0x02DE49 0B:9E39: 85 09     STA ram_0009_t021_some_obj_flags
C - - - - - 0x02DE4B 0B:9E3B: 18        CLC
C - - - - - 0x02DE4C 0B:9E3C: AC ED 07  LDY ram_07ED
C - - - - - 0x02DE4F 0B:9E3F: B9 73 9E  LDA tbl_9E73_pos_X_hi,Y
C - - - - - 0x02DE52 0B:9E42: 6D 40 04  ADC ram_obj_pos_X_hi + $08
C - - - - - 0x02DE55 0B:9E45: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x02DE58 0B:9E48: AD 78 04  LDA ram_obj_flags + $08
C - - - - - 0x02DE5B 0B:9E4B: 29 01     AND #$01
C - - - - - 0x02DE5D 0B:9E4D: 79 79 9E  ADC tbl_9E79,Y
C - - - - - 0x02DE60 0B:9E50: 29 01     AND #$01    ; con_obj_flag_01
C - - - - - 0x02DE62 0B:9E52: 05 09     ORA ram_0009_t021_some_obj_flags
C - - - - - 0x02DE64 0B:9E54: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x02DE67 0B:9E57: A9 01     LDA #$01
C - - - - - 0x02DE69 0B:9E59: 85 10     STA ram_0010_temp
C - - - - - 0x02DE6B 0B:9E5B: B9 75 9E  LDA tbl_9E75,Y
C - - - - - 0x02DE6E 0B:9E5E: 20 A1 97  JSR sub_97A1
bra_9E61:
bra_9E61_no_empty_slots:
C - - - - - 0x02DE71 0B:9E61: A0 00     LDY #$00
C - - - - - 0x02DE73 0B:9E63: 20 7B 9E  JSR sub_9E7B
C - - - - - 0x02DE76 0B:9E66: A9 00     LDA #$00
C - - - - - 0x02DE78 0B:9E68: 8D EF 07  STA ram_07EF
C - - - - - 0x02DE7B 0B:9E6B: A9 80     LDA #$80
C - - - - - 0x02DE7D 0B:9E6D: 8D EE 07  STA ram_07EE
C - - - - - 0x02DE80 0B:9E70: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02DE82 0B:9E72: 60        RTS



tbl_9E73_pos_X_hi:
- D 0 - - - 0x02DE83 0B:9E73: 08        .byte $08   ; 00 
- D 0 - - - 0x02DE84 0B:9E74: F8        .byte $F8   ; 01 



tbl_9E75:
- D 0 - - - 0x02DE85 0B:9E75: 08        .byte $08   ; 00 
- D 0 - - - 0x02DE86 0B:9E76: 18        .byte $18   ; 01 
; bzk garbage?
- - - - - - 0x02DE87 0B:9E77: 3C        .byte $3C   ; 02 
- - - - - - 0x02DE88 0B:9E78: 4A        .byte $4A   ; 03 



tbl_9E79:
- D 0 - - - 0x02DE89 0B:9E79: 00        .byte $00   ; 00 
- D 0 - - - 0x02DE8A 0B:9E7A: FF        .byte $FF   ; 01 



sub_9E7B:
C - - - - - 0x02DE8B 0B:9E7B: A5 49     LDA ram_chr_bank_5123
C - - - - - 0x02DE8D 0B:9E7D: C9 11     CMP #con__chr_bank + $11
C - - - - - 0x02DE8F 0B:9E7F: F0 01     BEQ bra_9E82_11
C - - - - - 0x02DE91 0B:9E81: C8        INY
bra_9E82_11:
C - - - - - 0x02DE92 0B:9E82: B9 89 9E  LDA tbl_9E89_animation,Y
C - - - - - 0x02DE95 0B:9E85: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x02DE98 0B:9E88: 60        RTS



tbl_9E89_animation:
; 00 
- D 0 - - - 0x02DE99 0B:9E89: 3A        .byte $3A   ; 00 
- D 0 - - - 0x02DE9A 0B:9E8A: 48        .byte $48   ; 01 
; 01 
- D 0 - - - 0x02DE9B 0B:9E8B: 3C        .byte $3C   ; 00 
- D 0 - - - 0x02DE9C 0B:9E8C: 4A        .byte $4A   ; 01 



ofs_039_9E8D_84:
C - - J - - 0x02DE9D 0B:9E8D: BC 33 06  LDY ram_obj_0634,X
C - - - - - 0x02DEA0 0B:9E90: B9 0D 9F  LDA tbl_9F0D,Y
C - - - - - 0x02DEA3 0B:9E93: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x02DEA6 0B:9E96: B9 15 9F  LDA tbl_9F15,Y
C - - - - - 0x02DEA9 0B:9E99: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x02DEAC 0B:9E9C: B9 1D 9F  LDA tbl_9F1D,Y
C - - - - - 0x02DEAF 0B:9E9F: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x02DEB2 0B:9EA2: 20 A7 81  JSR sub_81A7
loc_9EA5:
C D 0 - - - 0x02DEB5 0B:9EA5: 18        CLC
C - - - - - 0x02DEB6 0B:9EA6: BC 33 06  LDY ram_obj_0634,X
C - - - - - 0x02DEB9 0B:9EA9: B9 09 9F  LDA tbl_9F09,Y
C - - - - - 0x02DEBC 0B:9EAC: 7D 1D 06  ADC ram_061D_obj,X
C - - - - - 0x02DEBF 0B:9EAF: A8        TAY
C - - - - - 0x02DEC0 0B:9EB0: B9 C9 9E  LDA tbl_9EC9_spd_X_hi,Y
C - - - - - 0x02DEC3 0B:9EB3: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x02DEC6 0B:9EB6: B9 D9 9E  LDA tbl_9ED9_spd_X_lo,Y
C - - - - - 0x02DEC9 0B:9EB9: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x02DECC 0B:9EBC: B9 E9 9E  LDA tbl_9EE9_spd_Y_hi,Y
C - - - - - 0x02DECF 0B:9EBF: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x02DED2 0B:9EC2: B9 F9 9E  LDA tbl_9EF9_spd_Y_lo,Y
C - - - - - 0x02DED5 0B:9EC5: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x02DED8 0B:9EC8: 60        RTS



tbl_9EC9_spd_X_hi:
; 00 
- - - - - - 0x02DED9 0B:9EC9: FF        .byte > $FF80   ; 00 
- - - - - - 0x02DEDA 0B:9ECA: 00        .byte > $0000   ; 01 
- - - - - - 0x02DEDB 0B:9ECB: 00        .byte > $0080   ; 02 
- - - - - - 0x02DEDC 0B:9ECC: 00        .byte > $0000   ; 03 
; 04 
- - - - - - 0x02DEDD 0B:9ECD: FF        .byte > $FF40   ; 00 
- - - - - - 0x02DEDE 0B:9ECE: 00        .byte > $0000   ; 01 
- - - - - - 0x02DEDF 0B:9ECF: 00        .byte > $00C0   ; 02 
- - - - - - 0x02DEE0 0B:9ED0: 00        .byte > $0000   ; 03 
; 08 
- D 0 - - - 0x02DEE1 0B:9ED1: FF        .byte > $FF00   ; 00 
- D 0 - - - 0x02DEE2 0B:9ED2: 00        .byte > $0000   ; 01 
- D 0 - - - 0x02DEE3 0B:9ED3: 01        .byte > $0100   ; 02 
- D 0 - - - 0x02DEE4 0B:9ED4: 00        .byte > $0000   ; 03 
; 0C 
- D 0 - - - 0x02DEE5 0B:9ED5: FE        .byte > $FEC0   ; 00 
- D 0 - - - 0x02DEE6 0B:9ED6: 00        .byte > $0000   ; 01 
- D 0 - - - 0x02DEE7 0B:9ED7: 01        .byte > $0140   ; 02 
- D 0 - - - 0x02DEE8 0B:9ED8: 00        .byte > $0000   ; 03 



tbl_9ED9_spd_X_lo:
; 00 
- - - - - - 0x02DEE9 0B:9ED9: 80        .byte < $FF80   ; 00 
- - - - - - 0x02DEEA 0B:9EDA: 00        .byte < $0000   ; 01 
- - - - - - 0x02DEEB 0B:9EDB: 80        .byte < $0080   ; 02 
- - - - - - 0x02DEEC 0B:9EDC: 00        .byte < $0000   ; 03 
; 04 
- - - - - - 0x02DEED 0B:9EDD: 40        .byte < $FF40   ; 00 
- - - - - - 0x02DEEE 0B:9EDE: 00        .byte < $0000   ; 01 
- - - - - - 0x02DEEF 0B:9EDF: C0        .byte < $00C0   ; 02 
- - - - - - 0x02DEF0 0B:9EE0: 00        .byte < $0000   ; 03 
; 08 
- D 0 - - - 0x02DEF1 0B:9EE1: 00        .byte < $FF00   ; 00 
- D 0 - - - 0x02DEF2 0B:9EE2: 00        .byte < $0000   ; 01 
- D 0 - - - 0x02DEF3 0B:9EE3: 00        .byte < $0100   ; 02 
- D 0 - - - 0x02DEF4 0B:9EE4: 00        .byte < $0000   ; 03 
; 0C 
- D 0 - - - 0x02DEF5 0B:9EE5: C0        .byte < $FEC0   ; 00 
- D 0 - - - 0x02DEF6 0B:9EE6: 00        .byte < $0000   ; 01 
- D 0 - - - 0x02DEF7 0B:9EE7: 40        .byte < $0140   ; 02 
- D 0 - - - 0x02DEF8 0B:9EE8: 00        .byte < $0000   ; 03 



tbl_9EE9_spd_Y_hi:
; 00 
- - - - - - 0x02DEF9 0B:9EE9: 00        .byte > $0000   ; 00 
- - - - - - 0x02DEFA 0B:9EEA: 00        .byte > $0080   ; 01 
- - - - - - 0x02DEFB 0B:9EEB: 00        .byte > $0000   ; 02 
- - - - - - 0x02DEFC 0B:9EEC: FF        .byte > $FF80   ; 03 
; 04 
- - - - - - 0x02DEFD 0B:9EED: 00        .byte > $0000   ; 00 
- - - - - - 0x02DEFE 0B:9EEE: 00        .byte > $00C0   ; 01 
- - - - - - 0x02DEFF 0B:9EEF: 00        .byte > $0000   ; 02 
- - - - - - 0x02DF00 0B:9EF0: FF        .byte > $FF40   ; 03 
; 08 
- D 0 - - - 0x02DF01 0B:9EF1: 00        .byte > $0000   ; 00 
- D 0 - - - 0x02DF02 0B:9EF2: 01        .byte > $0100   ; 01 
- D 0 - - - 0x02DF03 0B:9EF3: 00        .byte > $0000   ; 02 
- D 0 - - - 0x02DF04 0B:9EF4: FF        .byte > $FF00   ; 03 
; 0C 
- D 0 - - - 0x02DF05 0B:9EF5: 00        .byte > $0000   ; 00 
- D 0 - - - 0x02DF06 0B:9EF6: 01        .byte > $0140   ; 01 
- D 0 - - - 0x02DF07 0B:9EF7: 00        .byte > $0000   ; 02 
- D 0 - - - 0x02DF08 0B:9EF8: FE        .byte > $FEC0   ; 03 



tbl_9EF9_spd_Y_lo:
; 00 
- - - - - - 0x02DF09 0B:9EF9: 00        .byte < $0000   ; 00 
- - - - - - 0x02DF0A 0B:9EFA: 80        .byte < $0080   ; 01 
- - - - - - 0x02DF0B 0B:9EFB: 00        .byte < $0000   ; 02 
- - - - - - 0x02DF0C 0B:9EFC: 80        .byte < $FF80   ; 03 
; 04 
- - - - - - 0x02DF0D 0B:9EFD: 00        .byte < $0000   ; 00 
- - - - - - 0x02DF0E 0B:9EFE: C0        .byte < $00C0   ; 01 
- - - - - - 0x02DF0F 0B:9EFF: 00        .byte < $0000   ; 02 
- - - - - - 0x02DF10 0B:9F00: 40        .byte < $FF40   ; 03 
; 08 
- D 0 - - - 0x02DF11 0B:9F01: 00        .byte < $0000   ; 00 
- D 0 - - - 0x02DF12 0B:9F02: 00        .byte < $0100   ; 01 
- D 0 - - - 0x02DF13 0B:9F03: 00        .byte < $0000   ; 02 
- D 0 - - - 0x02DF14 0B:9F04: 00        .byte < $FF00   ; 03 
; 0C 
- D 0 - - - 0x02DF15 0B:9F05: 00        .byte < $0000   ; 00 
- D 0 - - - 0x02DF16 0B:9F06: 40        .byte < $0140   ; 01 
- D 0 - - - 0x02DF17 0B:9F07: 00        .byte < $0000   ; 02 
- D 0 - - - 0x02DF18 0B:9F08: C0        .byte < $FEC0   ; 03 



tbl_9F09:
- - - - - - 0x02DF19 0B:9F09: 00        .byte $00   ; 00 
- - - - - - 0x02DF1A 0B:9F0A: 04        .byte $04   ; 01 
- D 0 - - - 0x02DF1B 0B:9F0B: 08        .byte $08   ; 02 
- D 0 - - - 0x02DF1C 0B:9F0C: 0C        .byte $0C   ; 03 



tbl_9F0D:
- D 0 - - - 0x02DF1D 0B:9F0D: 00        .byte $00   ; 00 
- - - - - - 0x02DF1E 0B:9F0E: 01        .byte $01   ; 01 
- D 0 - - - 0x02DF1F 0B:9F0F: 01        .byte $01   ; 02 
- D 0 - - - 0x02DF20 0B:9F10: 00        .byte $00   ; 03 
- D 0 - - - 0x02DF21 0B:9F11: 00        .byte $00   ; 04 
- - - - - - 0x02DF22 0B:9F12: 00        .byte $00   ; 05 
- - - - - - 0x02DF23 0B:9F13: 00        .byte $00   ; 06 
- - - - - - 0x02DF24 0B:9F14: 00        .byte $00   ; 07 



tbl_9F15:
- D 0 - - - 0x02DF25 0B:9F15: 00        .byte $00   ; 00 
- - - - - - 0x02DF26 0B:9F16: 02        .byte $02   ; 01 
- D 0 - - - 0x02DF27 0B:9F17: 02        .byte $02   ; 02 
- D 0 - - - 0x02DF28 0B:9F18: 00        .byte $00   ; 03 
- D 0 - - - 0x02DF29 0B:9F19: 02        .byte $02   ; 04 
- - - - - - 0x02DF2A 0B:9F1A: 00        .byte $00   ; 05 
- - - - - - 0x02DF2B 0B:9F1B: 00        .byte $00   ; 06 
- - - - - - 0x02DF2C 0B:9F1C: 00        .byte $00   ; 07 



tbl_9F1D:
- D 0 - - - 0x02DF2D 0B:9F1D: 02        .byte $02   ; 00 
- - - - - - 0x02DF2E 0B:9F1E: 01        .byte $01   ; 01 
- D 0 - - - 0x02DF2F 0B:9F1F: 02        .byte $02   ; 02 
- D 0 - - - 0x02DF30 0B:9F20: 03        .byte $03   ; 03 
- D 0 - - - 0x02DF31 0B:9F21: 03        .byte $03   ; 04 
- - - - - - 0x02DF32 0B:9F22: 00        .byte $00   ; 05 
- - - - - - 0x02DF33 0B:9F23: 00        .byte $00   ; 06 
- - - - - - 0x02DF34 0B:9F24: 00        .byte $00   ; 07 



ofs_039_9F25_85:
C - - J - - 0x02DF35 0B:9F25: 20 8E 9F  JSR sub_9F8E
C - - - - - 0x02DF38 0B:9F28: 20 9B 9F  JSR sub_9F9B
C - - - - - 0x02DF3B 0B:9F2B: F0 14     BEQ bra_9F41
C - - - - - 0x02DF3D 0B:9F2D: 20 8E 9F  JSR sub_9F8E
C - - - - - 0x02DF40 0B:9F30: 69 04     ADC #$04
C - - - - - 0x02DF42 0B:9F32: 20 9B 9F  JSR sub_9F9B
C - - - - - 0x02DF45 0B:9F35: F0 44     BEQ bra_9F7B
C - - - - - 0x02DF47 0B:9F37: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02DF49 0B:9F39: 20 8E 9F  JSR sub_9F8E
C - - - - - 0x02DF4C 0B:9F3C: 69 04     ADC #$04
C - - - - - 0x02DF4E 0B:9F3E: 4C 84 9F  JMP loc_9F84
bra_9F41:
C - - - - - 0x02DF51 0B:9F41: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02DF53 0B:9F43: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02DF56 0B:9F46: 4C 81 9F  JMP loc_9F81



tbl_9F49:
- D 0 - - - 0x02DF59 0B:9F49: 01        .byte $01   ; 00 
- D 0 - - - 0x02DF5A 0B:9F4A: 02        .byte $02   ; 01 
- D 0 - - - 0x02DF5B 0B:9F4B: 03        .byte $03   ; 02 
- D 0 - - - 0x02DF5C 0B:9F4C: 00        .byte $00   ; 03 
- D 0 - - - 0x02DF5D 0B:9F4D: 03        .byte $03   ; 04 
- D 0 - - - 0x02DF5E 0B:9F4E: 00        .byte $00   ; 05 
- - - - - - 0x02DF5F 0B:9F4F: 01        .byte $01   ; 06 
- D 0 - - - 0x02DF60 0B:9F50: 02        .byte $02   ; 07 
- D 0 - - - 0x02DF61 0B:9F51: 03        .byte $03   ; 08 
- D 0 - - - 0x02DF62 0B:9F52: 00        .byte $00   ; 09 
- D 0 - - - 0x02DF63 0B:9F53: 01        .byte $01   ; 0A 
- D 0 - - - 0x02DF64 0B:9F54: 02        .byte $02   ; 0B 
- - - - - - 0x02DF65 0B:9F55: 01        .byte $01   ; 0C 
- D 0 - - - 0x02DF66 0B:9F56: 02        .byte $02   ; 0D 
- - - - - - 0x02DF67 0B:9F57: 03        .byte $03   ; 0E 
- - - - - - 0x02DF68 0B:9F58: 00        .byte $00   ; 0F 



ofs_039_9F59_86:
C - - J - - 0x02DF69 0B:9F59: 20 8E 9F  JSR sub_9F8E
C - - - - - 0x02DF6C 0B:9F5C: 20 9B 9F  JSR sub_9F9B
C - - - - - 0x02DF6F 0B:9F5F: D0 14     BNE bra_9F75
C - - - - - 0x02DF71 0B:9F61: 20 8E 9F  JSR sub_9F8E
C - - - - - 0x02DF74 0B:9F64: 69 04     ADC #$04
C - - - - - 0x02DF76 0B:9F66: 20 9B 9F  JSR sub_9F9B
C - - - - - 0x02DF79 0B:9F69: F0 10     BEQ bra_9F7B
C - - - - - 0x02DF7B 0B:9F6B: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02DF7D 0B:9F6D: 20 8E 9F  JSR sub_9F8E
C - - - - - 0x02DF80 0B:9F70: 69 04     ADC #$04
C - - - - - 0x02DF82 0B:9F72: 20 84 9F  JSR sub_9F84
bra_9F75:
C - - - - - 0x02DF85 0B:9F75: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02DF87 0B:9F77: DE C1 05  DEC ram_05C1_obj,X
C - - - - - 0x02DF8A 0B:9F7A: 60        RTS
bra_9F7B:
C - - - - - 0x02DF8B 0B:9F7B: A9 7F     LDA #$7F
C - - - - - 0x02DF8D 0B:9F7D: 9D 7B 06  STA ram_obj_hp,X
C - - - - - 0x02DF90 0B:9F80: 60        RTS



loc_9F81:
C D 0 - - - 0x02DF91 0B:9F81: 20 8E 9F  JSR sub_9F8E
sub_9F84:
loc_9F84:
C D 0 - - - 0x02DF94 0B:9F84: A8        TAY
C - - - - - 0x02DF95 0B:9F85: B9 49 9F  LDA tbl_9F49,Y
C - - - - - 0x02DF98 0B:9F88: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x02DF9B 0B:9F8B: 4C A5 9E  JMP loc_9EA5



sub_9F8E:
C - - - - - 0x02DF9E 0B:9F8E: 18        CLC
C - - - - - 0x02DF9F 0B:9F8F: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x02DFA2 0B:9F92: BC 06 06  LDY ram_obj_config,X
C - - - - - 0x02DFA5 0B:9F95: 79 99 9F  ADC tbl_9F99,Y
C - - - - - 0x02DFA8 0B:9F98: 60        RTS



tbl_9F99:
- D 0 - - - 0x02DFA9 0B:9F99: 00        .byte $00   ; 00 
- D 0 - - - 0x02DFAA 0B:9F9A: 08        .byte $08   ; 01 



sub_9F9B:
C - - - - - 0x02DFAB 0B:9F9B: A8        TAY
C - - - - - 0x02DFAC 0B:9F9C: B9 B9 9F  LDA tbl_9FB9_pos_Y_hi,Y
C - - - - - 0x02DFAF 0B:9F9F: 85 00     STA ram_0000_t0D3_pos_Y_hi
C - - - - - 0x02DFB1 0B:9FA1: B9 A9 9F  LDA tbl_9FA9_pos_X_hi,Y
C - - - - - 0x02DFB4 0B:9FA4: A4 00     LDY ram_0000_t0D3_pos_Y_hi
C - - - - - 0x02DFB6 0B:9FA6: 4C 1E FC  JMP loc_0x03FC2E



tbl_9FA9_pos_X_hi:
- D 0 - - - 0x02DFB9 0B:9FA9: 07        .byte $07   ; 00 
- D 0 - - - 0x02DFBA 0B:9FAA: 0C        .byte $0C   ; 01 
- D 0 - - - 0x02DFBB 0B:9FAB: F8        .byte $F8   ; 02 
- D 0 - - - 0x02DFBC 0B:9FAC: F4        .byte $F4   ; 03 
- D 0 - - - 0x02DFBD 0B:9FAD: F8        .byte $F8   ; 04 
- D 0 - - - 0x02DFBE 0B:9FAE: 00        .byte $00   ; 05 
- D 0 - - - 0x02DFBF 0B:9FAF: 07        .byte $07   ; 06 
- D 0 - - - 0x02DFC0 0B:9FB0: 00        .byte $00   ; 07 
- D 0 - - - 0x02DFC1 0B:9FB1: 07        .byte $07   ; 08 
- D 0 - - - 0x02DFC2 0B:9FB2: F4        .byte $F4   ; 09 
- D 0 - - - 0x02DFC3 0B:9FB3: F8        .byte $F8   ; 0A 
- D 0 - - - 0x02DFC4 0B:9FB4: 0C        .byte $0C   ; 0B 
- D 0 - - - 0x02DFC5 0B:9FB5: F8        .byte $F8   ; 0C 
- D 0 - - - 0x02DFC6 0B:9FB6: 00        .byte $00   ; 0D 
- D 0 - - - 0x02DFC7 0B:9FB7: 07        .byte $07   ; 0E 
- D 0 - - - 0x02DFC8 0B:9FB8: 00        .byte $00   ; 0F 



tbl_9FB9_pos_Y_hi:
- D 0 - - - 0x02DFC9 0B:9FB9: 0C        .byte $0C   ; 00 
- D 0 - - - 0x02DFCA 0B:9FBA: F8        .byte $F8   ; 01 
- D 0 - - - 0x02DFCB 0B:9FBB: F4        .byte $F4   ; 02 
- D 0 - - - 0x02DFCC 0B:9FBC: 07        .byte $07   ; 03 
- D 0 - - - 0x02DFCD 0B:9FBD: 00        .byte $00   ; 04 
- D 0 - - - 0x02DFCE 0B:9FBE: 07        .byte $07   ; 05 
- D 0 - - - 0x02DFCF 0B:9FBF: 00        .byte $00   ; 06 
- D 0 - - - 0x02DFD0 0B:9FC0: F8        .byte $F8   ; 07 
- D 0 - - - 0x02DFD1 0B:9FC1: F4        .byte $F4   ; 08 
- D 0 - - - 0x02DFD2 0B:9FC2: F8        .byte $F8   ; 09 
- D 0 - - - 0x02DFD3 0B:9FC3: 0C        .byte $0C   ; 0A 
- D 0 - - - 0x02DFD4 0B:9FC4: 07        .byte $07   ; 0B 
- D 0 - - - 0x02DFD5 0B:9FC5: 00        .byte $00   ; 0C 
- D 0 - - - 0x02DFD6 0B:9FC6: 07        .byte $07   ; 0D 
- D 0 - - - 0x02DFD7 0B:9FC7: 00        .byte $00   ; 0E 
- D 0 - - - 0x02DFD8 0B:9FC8: F8        .byte $F8   ; 0F 



sub_9FC9:
sub_0x02DFD9:
C - - - - - 0x02DFD9 0B:9FC9: AD F6 07  LDA ram_quest
C - - - - - 0x02DFDC 0B:9FCC: D0 15     BNE bra_9FE3_2nd_quest
C - - - - - 0x02DFDE 0B:9FCE: A5 32     LDA ram_blk_id_hi
C - - - - - 0x02DFE0 0B:9FD0: A0 00     LDY #$00
C - - - - - 0x02DFE2 0B:9FD2: C9 03     CMP #$03
C - - - - - 0x02DFE4 0B:9FD4: 90 06     BCC bra_9FDC
C - - - - - 0x02DFE6 0B:9FD6: C8        INY ; 01
C - - - - - 0x02DFE7 0B:9FD7: C9 0C     CMP #$0C
C - - - - - 0x02DFE9 0B:9FD9: 90 01     BCC bra_9FDC
C - - - - - 0x02DFEB 0B:9FDB: C8        INY ; 02
bra_9FDC:
C - - - - - 0x02DFEC 0B:9FDC: B9 E7 9F  LDA tbl_9FE7,Y
bra_9FDF:
C - - - - - 0x02DFEF 0B:9FDF: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x02DFF2 0B:9FE2: 60        RTS
bra_9FE3_2nd_quest:
C - - - - - 0x02DFF3 0B:9FE3: A9 30     LDA #$30
C - - - - - 0x02DFF5 0B:9FE5: D0 F8     BNE bra_9FDF    ; jmp



tbl_9FE7:
- D 0 - - - 0x02DFF7 0B:9FE7: 10        .byte $10   ; 00 
- D 0 - - - 0x02DFF8 0B:9FE8: 20        .byte $20   ; 01 
- D 0 - - - 0x02DFF9 0B:9FE9: 30        .byte $30   ; 02 



ofs_039_9FEA_69:
C - - J - - 0x02DFFA 0B:9FEA: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02DFFD 0B:9FED: A0 01     LDY #$01
C - - - - - 0x02DFFF 0B:9FEF: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02E001 0B:9FF1: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x02E004 0B:9FF4: C8        INY ; 02
C - - - - - 0x02E005 0B:9FF5: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02E007 0B:9FF7: 9D 06 06  STA ram_obj_config,X
bra_9FFA_RTS:
C - - - - - 0x02E00A 0B:9FFA: 60        RTS



ofs_039_9FFB_6A:
C - - J - - 0x02E00B 0B:9FFB: 20 20 81  JSR sub_8120
C - - - - - 0x02E00E 0B:9FFE: B0 FA     BCS bra_9FFA_RTS
C - - - - - 0x02E010 0B:A000: DE 06 06  DEC ram_obj_config,X
C - - - - - 0x02E013 0B:A003: D0 19     BNE bra_A01E
C - - - - - 0x02E015 0B:A005: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x02E018 0B:A008: 49 01     EOR #$01
C - - - - - 0x02E01A 0B:A00A: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x02E01D 0B:A00D: A8        TAY
C - - - - - 0x02E01E 0B:A00E: B9 39 A0  LDA tbl_A039_spd_X_hi,Y
C - - - - - 0x02E021 0B:A011: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x02E024 0B:A014: A9 00     LDA #$00
C - - - - - 0x02E026 0B:A016: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x02E029 0B:A019: A9 38     LDA #$38
C - - - - - 0x02E02B 0B:A01B: 9D 06 06  STA ram_obj_config,X
bra_A01E:
C - - - - - 0x02E02E 0B:A01E: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x02E031 0B:A021: F0 0B     BEQ bra_A02E
C - - - - - 0x02E033 0B:A023: A9 08     LDA #$08
C - - - - - 0x02E035 0B:A025: 20 6F 80  JSR sub_806F_increase_spd_X
C - - - - - 0x02E038 0B:A028: 20 20 8E  JSR sub_8E20
C - - - - - 0x02E03B 0B:A02B: 4C 54 A0  JMP loc_A054
bra_A02E:
C - - - - - 0x02E03E 0B:A02E: A9 08     LDA #$08
C - - - - - 0x02E040 0B:A030: 20 8F 80  JSR sub_808F_decrease_spd_X
C - - - - - 0x02E043 0B:A033: 20 20 8E  JSR sub_8E20
C - - - - - 0x02E046 0B:A036: 4C 54 A0  JMP loc_A054



tbl_A039_spd_X_hi:
- D 1 - - - 0x02E049 0B:A039: 01        .byte > $0100   ; 00 
- D 1 - - - 0x02E04A 0B:A03A: FF        .byte > $FF00   ; 01 



ofs_039_A03B_37:
C - - J - - 0x02E04B 0B:A03B: A9 18     LDA #$18
C - - - - - 0x02E04D 0B:A03D: 20 7F 80  JSR sub_807F_increase_spd_Y
C - - - - - 0x02E050 0B:A040: 20 20 8E  JSR sub_8E20
C - - - - - 0x02E053 0B:A043: BD 20 05  LDA ram_obj_spd_Y_hi,X
C - - - - - 0x02E056 0B:A046: C9 02     CMP #$02
C - - - - - 0x02E058 0B:A048: 90 0A     BCC bra_A054
C - - - - - 0x02E05A 0B:A04A: A9 03     LDA #> $0300
C - - - - - 0x02E05C 0B:A04C: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x02E05F 0B:A04F: A9 00     LDA #< $0300
C - - - - - 0x02E061 0B:A051: 9D 37 05  STA ram_obj_spd_Y_lo,X
bra_A054:
loc_A054:
C D 1 - - - 0x02E064 0B:A054: 20 EF A0  JSR sub_A0EF_check_object_distance_to_player
C - - - - - 0x02E067 0B:A057: B0 0F     BCS bra_A068_too_far
; if close enough
C - - - - - 0x02E069 0B:A059: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02E06C 0B:A05C: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02E06F 0B:A05F: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x02E072 0B:A062: 20 FC A0  JSR sub_A0FC
C - - - - - 0x02E075 0B:A065: 4C 6C E7  JMP loc_0x03E77C
bra_A068_too_far:
C - - - - - 0x02E078 0B:A068: A9 00     LDA #$00    ; pos_X_hi
C - - - - - 0x02E07A 0B:A06A: BC 4E 05  LDY ram_obj_id,X
C - - - - - 0x02E07D 0B:A06D: C0 AE     CPY #$AE
C - - - - - 0x02E07F 0B:A06F: D0 04     BNE bra_A075
C - - - - - 0x02E081 0B:A071: A0 02     LDY #$02    ; pos_Y_hi
C - - - - - 0x02E083 0B:A073: D0 02     BNE bra_A077    ; jmp
bra_A075:
C - - - - - 0x02E085 0B:A075: A0 08     LDY #$08    ; pos_Y_hi
bra_A077:
C - - - - - 0x02E087 0B:A077: 20 1E FC  JSR sub_0x03FC2E
C - - - - - 0x02E08A 0B:A07A: F0 0E     BEQ bra_A08A
C - - - - - 0x02E08C 0B:A07C: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02E08E 0B:A07E: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x02E091 0B:A081: A9 A0     LDA #$A0
C - - - - - 0x02E093 0B:A083: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x02E096 0B:A086: FE C1 05  INC ram_05C1_obj,X
bra_A089_RTS:
C - - - - - 0x02E099 0B:A089: 60        RTS
bra_A08A:
C - - - - - 0x02E09A 0B:A08A: 20 13 81  JSR sub_8113
C - - - - - 0x02E09D 0B:A08D: 90 FA     BCC bra_A089_RTS
C - - - - - 0x02E09F 0B:A08F: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x02E0A2 0B:A092: C5 CA     CMP ram_00CA
C - - - - - 0x02E0A4 0B:A094: 90 F3     BCC bra_A089_RTS
- - - - - - 0x02E0A6 0B:A096: BD 4E 05  LDA ram_obj_id,X
- - - - - - 0x02E0A9 0B:A099: C9 AE     CMP #$AE
- - - - - - 0x02E0AB 0B:A09B: F0 03     BEQ bra_A0A0
- - - - - - 0x02E0AD 0B:A09D: 20 2B 99  JSR sub_992B
bra_A0A0:
- - - - - - 0x02E0B0 0B:A0A0: 4C B2 84  JMP loc_84B2



ofs_039_A0A3_38:
C - - J - - 0x02E0B3 0B:A0A3: DE 06 06  DEC ram_obj_config,X
C - - - - - 0x02E0B6 0B:A0A6: F0 0E     BEQ bra_A0B6
ofs_039_A0A8_71:
C - - - - - 0x02E0B8 0B:A0A8: 20 EF A0  JSR sub_A0EF_check_object_distance_to_player
C - - - - - 0x02E0BB 0B:A0AB: B0 15     BCS bra_A0C2_too_far
; if close enough
C - - - - - 0x02E0BD 0B:A0AD: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02E0C0 0B:A0B0: 20 FC A0  JSR sub_A0FC
C - - - - - 0x02E0C3 0B:A0B3: 4C 6C E7  JMP loc_0x03E77C
bra_A0B6:
C - - - - - 0x02E0C6 0B:A0B6: A9 00     LDA #$00
C - - - - - 0x02E0C8 0B:A0B8: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x02E0CB 0B:A0BB: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x02E0CE 0B:A0BE: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x02E0D1 0B:A0C1: 60        RTS
bra_A0C2_too_far:
C - - - - - 0x02E0D2 0B:A0C2: A9 00     LDA #$00    ; pos_X_hi
C - - - - - 0x02E0D4 0B:A0C4: A0 08     LDY #$08    ; pos_Y_hi
C - - - - - 0x02E0D6 0B:A0C6: 20 1E FC  JSR sub_0x03FC2E
C - - - - - 0x02E0D9 0B:A0C9: D0 08     BNE bra_A0D3
C - - - - - 0x02E0DB 0B:A0CB: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02E0DD 0B:A0CD: A9 01     LDA #$01
C - - - - - 0x02E0DF 0B:A0CF: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x02E0E2 0B:A0D2: 60        RTS
bra_A0D3:
C - - - - - 0x02E0E3 0B:A0D3: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02E0E5 0B:A0D5: 4C 20 81  JMP loc_8120



ofs_039_A0D8_39:
C - - J - - 0x02E0E8 0B:A0D8: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x02E0EB 0B:A0DB: 20 AA 81  JSR sub_81AA
C - - - - - 0x02E0EE 0B:A0DE: A0 01     LDY #$01
C - - - - - 0x02E0F0 0B:A0E0: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02E0F2 0B:A0E2: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x02E0F5 0B:A0E5: C8        INY ; 02
C - - - - - 0x02E0F6 0B:A0E6: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02E0F8 0B:A0E8: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x02E0FB 0B:A0EB: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02E0FE 0B:A0EE: 60        RTS



sub_A0EF_check_object_distance_to_player:
; out
    ; C
        ; 0 = close enough
        ; 1 = too far
C - - - - - 0x02E0FF 0B:A0EF: 20 B3 80  JSR sub_80B3_get_object_distance_X_to_player
C - - - - - 0x02E102 0B:A0F2: C9 0C     CMP #$0C
C - - - - - 0x02E104 0B:A0F4: B0 05     BCS bra_A0FB_RTS
C - - - - - 0x02E106 0B:A0F6: 20 D5 80  JSR sub_80D5_get_object_distance_Y_to_player
C - - - - - 0x02E109 0B:A0F9: C9 14     CMP #$14
bra_A0FB_RTS:
C - - - - - 0x02E10B 0B:A0FB: 60        RTS



sub_A0FC:
loc_A0FC:
C D 1 - - - 0x02E10C 0B:A0FC: 38        SEC
C - - - - - 0x02E10D 0B:A0FD: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x02E110 0B:A100: E9 93     SBC #$93
C - - - - - 0x02E112 0B:A102: 20 6D E8  JSR sub_0x03E87D_jump_to_pointers_after_JSR_A
- D 1 - I - 0x02E115 0B:A105: 50 A1     .word ofs_011_A150_93
- D 1 - I - 0x02E117 0B:A107: 5E A1     .word ofs_011_A15E_94
- D 1 - I - 0x02E119 0B:A109: 42 A1     .word ofs_011_A142_95
- D 1 - I - 0x02E11B 0B:A10B: 5E A1     .word ofs_011_A15E_96
- D 1 - I - 0x02E11D 0B:A10D: 5E A1     .word ofs_011_A15E_97
- D 1 - I - 0x02E11F 0B:A10F: 5E A1     .word ofs_011_A15E_98
- D 1 - I - 0x02E121 0B:A111: 5E A1     .word ofs_011_A15E_99
- D 1 - I - 0x02E123 0B:A113: 5E A1     .word ofs_011_A15E_9A
- - - - - - 0x02E125 0B:A115: 42 A1     .word ofs_011_A142_9B
- - - - - - 0x02E127 0B:A117: 50 A1     .word ofs_011_A150_9C
- D 1 - I - 0x02E129 0B:A119: 89 A1     .word ofs_011_A189_9D
- D 1 - I - 0x02E12B 0B:A11B: 89 A1     .word ofs_011_A189_9E
- - - - - - 0x02E12D 0B:A11D: 41 A1     .word ofs_011_A141_9F_RTS
- - - - - - 0x02E12F 0B:A11F: 41 A1     .word ofs_011_A141_A0_RTS
- D 1 - I - 0x02E131 0B:A121: A9 A1     .word ofs_011_A1A9_A1
- D 1 - I - 0x02E133 0B:A123: B5 A1     .word ofs_011_A1B5_A2
- D 1 - I - 0x02E135 0B:A125: EF A1     .word ofs_011_A1EF_A3
- D 1 - I - 0x02E137 0B:A127: EF A1     .word ofs_011_A1EF_A4
- D 1 - I - 0x02E139 0B:A129: EF A1     .word ofs_011_A1EF_A5
- D 1 - I - 0x02E13B 0B:A12B: EF A1     .word ofs_011_A1EF_A6
- D 1 - I - 0x02E13D 0B:A12D: EF A1     .word ofs_011_A1EF_A7
- - - - - - 0x02E13F 0B:A12F: EF A1     .word ofs_011_A1EF_A8
- - - - - - 0x02E141 0B:A131: EF A1     .word ofs_011_A1EF_A9
- D 1 - I - 0x02E143 0B:A133: EF A1     .word ofs_011_A1EF_AA
- - - - - - 0x02E145 0B:A135: EF A1     .word ofs_011_A1EF_AB
- D 1 - I - 0x02E147 0B:A137: 21 A2     .word ofs_011_A221_AC
- D 1 - I - 0x02E149 0B:A139: 2B A2     .word ofs_011_A22B_AD
- D 1 - I - 0x02E14B 0B:A13B: 2B A2     .word ofs_011_A22B_AE
- D 1 - I - 0x02E14D 0B:A13D: 42 A2     .word ofs_011_A242_AF
- D 1 - I - 0x02E14F 0B:A13F: 42 A2     .word ofs_011_A242_B0



ofs_011_A141_9F_RTS:
ofs_011_A141_A0_RTS:
- - - - - - 0x02E151 0B:A141: 60        RTS



ofs_011_A142_95:
ofs_011_A142_9B:
C - - J - - 0x02E152 0B:A142: 20 7B A1  JSR sub_A17B_pick_up_weapon_sound
C - - - - - 0x02E155 0B:A145: AC 4E 05  LDY ram_plr_id
C - - - - - 0x02E158 0B:A148: B9 4D A1  LDA tbl_A14D,Y
C - - - - - 0x02E15B 0B:A14B: D0 1E     BNE bra_A16B    ; jmp


tbl_A14D:
- D 1 - - - 0x02E15D 0B:A14D: 03        .byte con_subweapon_knife   ; 00 Trevor
- - - - - - 0x02E15E 0B:A14E: 00        .byte $00   ; 01 placeholder
- D 1 - - - 0x02E15F 0B:A14F: 08        .byte con_subweapon_g_knife   ; 02 Grant



ofs_011_A150_93:
ofs_011_A150_9C:
C - - J - - 0x02E160 0B:A150: 20 7B A1  JSR sub_A17B_pick_up_weapon_sound
C - - - - - 0x02E163 0B:A153: AC 4E 05  LDY ram_plr_id
C - - - - - 0x02E166 0B:A156: B9 5B A1  LDA tbl_A15B_axe,Y
C - - - - - 0x02E169 0B:A159: D0 10     BNE bra_A16B    ; jmp



tbl_A15B_axe:
- D 1 - - - 0x02E16B 0B:A15B: 01        .byte con_subweapon_axe   ; 00 Trevor
- - - - - - 0x02E16C 0B:A15C: 00        .byte $00   ; 01 placeholder
- D 1 - - - 0x02E16D 0B:A15D: 09        .byte con_subweapon_g_axe   ; 02 Grant



ofs_011_A15E_94:
ofs_011_A15E_96:
ofs_011_A15E_97:
ofs_011_A15E_98:
ofs_011_A15E_99:
ofs_011_A15E_9A:
C - - J - - 0x02E16E 0B:A15E: 20 7B A1  JSR sub_A17B_pick_up_weapon_sound
C - - - - - 0x02E171 0B:A161: 38        SEC
C - - - - - 0x02E172 0B:A162: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x02E175 0B:A165: E9 93     SBC #$93
C - - - - - 0x02E177 0B:A167: A8        TAY
C - - - - - 0x02E178 0B:A168: B9 71 A1  LDA tbl_A171_subweapon,Y
bra_A16B:
C - - - - - 0x02E17B 0B:A16B: A4 3B     LDY ram_player
C - - - - - 0x02E17D 0B:A16D: 99 85 00  STA ram_subweapon_id,Y
C - - - - - 0x02E180 0B:A170: 60        RTS



tbl_A171_subweapon:
- D 1 - - - 0x02E181 0B:A171: 01        .byte con_subweapon_axe   ; 93 
- D 1 - - - 0x02E182 0B:A172: 02        .byte con_subweapon_cross   ; 94 
- D 1 - - - 0x02E183 0B:A173: 03        .byte con_subweapon_knife   ; 95 
- D 1 - - - 0x02E184 0B:A174: 04        .byte con_subweapon_holy_water   ; 96 
- D 1 - - - 0x02E185 0B:A175: 0B        .byte con_subweapon_stopwatch   ; 97 
- D 1 - - - 0x02E186 0B:A176: 05        .byte con_subweapon_fireball   ; 98 
- D 1 - - - 0x02E187 0B:A177: 06        .byte con_subweapon_freeze   ; 99 
- D 1 - - - 0x02E188 0B:A178: 07        .byte con_subweapon_blue_balls   ; 9A 
- - - - - - 0x02E189 0B:A179: 08        .byte con_subweapon_g_knife   ; 9B 
- - - - - - 0x02E18A 0B:A17A: 09        .byte con_subweapon_g_axe   ; 9C 



sub_A17B_pick_up_weapon_sound:
C - - - - - 0x02E18B 0B:A17B: A9 00     LDA #$00
C - - - - - 0x02E18D 0B:A17D: 85 9C     STA ram_009C
C - - - - - 0x02E18F 0B:A17F: A4 3B     LDY ram_player
C - - - - - 0x02E191 0B:A181: 99 87 00  STA ram_subweapon_multiplier,Y
C - - - - - 0x02E194 0B:A184: A9 1C     LDA #con_sound_pick_up_weapon
C - - - - - 0x02E196 0B:A186: 4C 5F E2  JMP loc_0x03E26F_play_sound



ofs_011_A189_9D:
ofs_011_A189_9E:
C - - J - - 0x02E199 0B:A189: A9 1C     LDA #con_sound_pick_up_weapon
C - - - - - 0x02E19B 0B:A18B: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x02E19E 0B:A18E: A9 01     LDA #$01
C - - - - - 0x02E1A0 0B:A190: 85 B7     STA ram_00B7
C - - - - - 0x02E1A2 0B:A192: A4 3B     LDY ram_player
C - - - - - 0x02E1A4 0B:A194: 38        SEC
C - - - - - 0x02E1A5 0B:A195: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x02E1A8 0B:A198: E9 9C     SBC #$9C
C - - - - - 0x02E1AA 0B:A19A: 99 8E 00  STA ram_subweapon_power,Y
C - - - - - 0x02E1AD 0B:A19D: A9 00     LDA #$00
C - - - - - 0x02E1AF 0B:A19F: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x02E1B2 0B:A1A2: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x02E1B5 0B:A1A5: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x02E1B8 0B:A1A8: 60        RTS



ofs_011_A1A9_A1:
C - - J - - 0x02E1B9 0B:A1A9: A9 17     LDA #con_sound_17
C - - - - - 0x02E1BB 0B:A1AB: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x02E1BE 0B:A1AE: A9 B4     LDA #$B4
C - - - - - 0x02E1C0 0B:A1B0: 85 AD     STA ram_00AD_timer
C - - - - - 0x02E1C2 0B:A1B2: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02E1C4 0B:A1B4: 60        RTS



ofs_011_A1B5_A2:
C - - J - - 0x02E1C5 0B:A1B5: A9 4A     LDA #con_sound_pick_up_cross
C - - - - - 0x02E1C7 0B:A1B7: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x02E1CA 0B:A1BA: A2 01     LDX #$01
bra_A1BC_loop:
C - - - - - 0x02E1CC 0B:A1BC: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x02E1CF 0B:A1BF: C9 48     CMP #$48
C - - - - - 0x02E1D1 0B:A1C1: 90 20     BCC bra_A1E3
C - - - - - 0x02E1D3 0B:A1C3: C9 68     CMP #$68
C - - - - - 0x02E1D5 0B:A1C5: B0 1C     BCS bra_A1E3
C - - - - - 0x02E1D7 0B:A1C7: 8A        TXA
C - - - - - 0x02E1D8 0B:A1C8: 48        PHA
C - - - - - 0x02E1D9 0B:A1C9: 20 CC E7  JSR sub_0x03E7DC
C - - - - - 0x02E1DC 0B:A1CC: 68        PLA
C - - - - - 0x02E1DD 0B:A1CD: AA        TAX
C - - - - - 0x02E1DE 0B:A1CE: A9 6F     LDA #$6F
C - - - - - 0x02E1E0 0B:A1D0: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x02E1E3 0B:A1D3: A9 18     LDA #$18
C - - - - - 0x02E1E5 0B:A1D5: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x02E1E8 0B:A1D8: A9 00     LDA #$00
C - - - - - 0x02E1EA 0B:A1DA: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x02E1ED 0B:A1DD: 9D 70 04  STA ram_obj_flags,X ; con_obj_flag_00
C - - - - - 0x02E1F0 0B:A1E0: 20 2F B5  JSR sub_B52F
bra_A1E3:
C - - - - - 0x02E1F3 0B:A1E3: E8        INX
C - - - - - 0x02E1F4 0B:A1E4: E0 0D     CPX #$0D
C - - - - - 0x02E1F6 0B:A1E6: 90 D4     BCC bra_A1BC_loop
C - - - - - 0x02E1F8 0B:A1E8: A9 20     LDA #$20
C - - - - - 0x02E1FA 0B:A1EA: 85 B2     STA ram_00B2
C - - - - - 0x02E1FC 0B:A1EC: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02E1FE 0B:A1EE: 60        RTS



ofs_011_A1EF_A3:
ofs_011_A1EF_A4:
ofs_011_A1EF_A5:
ofs_011_A1EF_A6:
ofs_011_A1EF_A7:
ofs_011_A1EF_A8:
ofs_011_A1EF_A9:
ofs_011_A1EF_AA:
ofs_011_A1EF_AB:
C - - J - - 0x02E1FF 0B:A1EF: A9 18     LDA #con_sound_pick_up_money
C - - - - - 0x02E201 0B:A1F1: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x02E204 0B:A1F4: 38        SEC
C - - - - - 0x02E205 0B:A1F5: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x02E208 0B:A1F8: E9 A3     SBC #$A3
C - - - - - 0x02E20A 0B:A1FA: A8        TAY
loc_A1FB:   ; Y = 04
C D 1 - - - 0x02E20B 0B:A1FB: B9 0F A2  LDA tbl_A20F,Y
C - - - - - 0x02E20E 0B:A1FE: 85 02     STA ram_0000_t046_add + $02
C - - - - - 0x02E210 0B:A200: B9 18 A2  LDA tbl_A218,Y
C - - - - - 0x02E213 0B:A203: 85 03     STA ram_0000_t046_add + $03
C - - - - - 0x02E215 0B:A205: A9 00     LDA #$00
C - - - - - 0x02E217 0B:A207: 85 01     STA ram_0000_t046_add + $01
C - - - - - 0x02E219 0B:A209: 20 77 E7  JSR sub_0x03E787_add_points
C - - - - - 0x02E21C 0B:A20C: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02E21E 0B:A20E: 60        RTS



tbl_A20F:
- D 1 - - - 0x02E21F 0B:A20F: 01        .byte $01   ; A3 
- D 1 - - - 0x02E220 0B:A210: 02        .byte $02   ; A4 
- D 1 - - - 0x02E221 0B:A211: 04        .byte $04   ; A5 
- D 1 - - - 0x02E222 0B:A212: 07        .byte $07   ; A6 
- D 1 - - - 0x02E223 0B:A213: 10        .byte $10   ; A7 (04) 
- - - - - - 0x02E224 0B:A214: 20        .byte $20   ; A8 
- - - - - - 0x02E225 0B:A215: 40        .byte $40   ; A9 
- D 1 - - - 0x02E226 0B:A216: 70        .byte $70   ; AA 
- - - - - - 0x02E227 0B:A217: 00        .byte $00   ; AB 



tbl_A218:
- D 1 - - - 0x02E228 0B:A218: 00        .byte $00   ; A3 
- D 1 - - - 0x02E229 0B:A219: 00        .byte $00   ; A4 
- D 1 - - - 0x02E22A 0B:A21A: 00        .byte $00   ; A5 
- D 1 - - - 0x02E22B 0B:A21B: 00        .byte $00   ; A6 
- D 1 - - - 0x02E22C 0B:A21C: 00        .byte $00   ; A7 (04) 
- - - - - - 0x02E22D 0B:A21D: 00        .byte $00   ; A8 
- - - - - - 0x02E22E 0B:A21E: 00        .byte $00   ; A9 
- D 1 - - - 0x02E22F 0B:A21F: 00        .byte $00   ; AA 
- - - - - - 0x02E230 0B:A220: 01        .byte $01   ; AB 



ofs_011_A221_AC:
C - - J - - 0x02E231 0B:A221: A9 01     LDA #$01
C - - - - - 0x02E233 0B:A223: 85 D7     STA ram_00D7
C - - - - - 0x02E235 0B:A225: 20 48 E7  JSR sub_0x03E758_add_1_life
C - - - - - 0x02E238 0B:A228: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02E23A 0B:A22A: 60        RTS



ofs_011_A22B_AD:
ofs_011_A22B_AE:
C - - J - - 0x02E23B 0B:A22B: A9 1B     LDA #con_sound_pick_up_heart
C - - - - - 0x02E23D 0B:A22D: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x02E240 0B:A230: 38        SEC
C - - - - - 0x02E241 0B:A231: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x02E244 0B:A234: E9 AD     SBC #$AD
C - - - - - 0x02E246 0B:A236: A8        TAY
C - - - - - 0x02E247 0B:A237: B9 40 A2  LDA tbl_A240_hearts,Y
C - - - - - 0x02E24A 0B:A23A: 20 60 E7  JSR sub_0x03E770_add_hearts
C - - - - - 0x02E24D 0B:A23D: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02E24F 0B:A23F: 60        RTS



tbl_A240_hearts:
- D 1 - - - 0x02E250 0B:A240: 05        .byte $05   ; AD 
- D 1 - - - 0x02E251 0B:A241: 01        .byte $01   ; AE 



ofs_011_A242_AF:
ofs_011_A242_B0:
C - - J - - 0x02E252 0B:A242: A9 1C     LDA #con_sound_pick_up_weapon
C - - - - - 0x02E254 0B:A244: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x02E257 0B:A247: A4 3B     LDY ram_player
C - - - - - 0x02E259 0B:A249: B9 85 00  LDA ram_subweapon_id,Y
C - - - - - 0x02E25C 0B:A24C: C9 0B     CMP #con_subweapon_stopwatch
C - - - - - 0x02E25E 0B:A24E: F0 14     BEQ bra_A264
C - - - - - 0x02E260 0B:A250: C9 05     CMP #$05
C - - - - - 0x02E262 0B:A252: 90 04     BCC bra_A258
- - - - - - 0x02E264 0B:A254: C9 08     CMP #$08
- - - - - - 0x02E266 0B:A256: 90 0C     BCC bra_A264
; if
; con_subweapon_axe
; con_subweapon_cross
; con_subweapon_knife
; con_subweapon_holy_water
bra_A258:
C - - - - - 0x02E268 0B:A258: 38        SEC
C - - - - - 0x02E269 0B:A259: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x02E26C 0B:A25C: E9 AE     SBC #$AE
C - - - - - 0x02E26E 0B:A25E: A4 3B     LDY ram_player
C - - - - - 0x02E270 0B:A260: 99 87 00  STA ram_subweapon_multiplier,Y
C - - - - - 0x02E273 0B:A263: 60        RTS
bra_A264:
C - - - - - 0x02E274 0B:A264: A9 A7     LDA #$A7
C - - - - - 0x02E276 0B:A266: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x02E279 0B:A269: A9 47     LDA #$47
C - - - - - 0x02E27B 0B:A26B: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x02E27E 0B:A26E: A9 04     LDA #$04
C - - - - - 0x02E280 0B:A270: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x02E283 0B:A273: A0 04     LDY #$04
C - - - - - 0x02E285 0B:A275: 4C FB A1  JMP loc_A1FB



sub_A278:
C - - - - - 0x02E288 0B:A278: AD 4E 05  LDA ram_plr_id
C - - - - - 0x02E28B 0B:A27B: 20 6D E8  JSR sub_0x03E87D_jump_to_pointers_after_JSR_A
- D 1 - I - 0x02E28E 0B:A27E: 86 A2     .word ofs_010_A286_00
- D 1 - I - 0x02E290 0B:A280: B4 A3     .word ofs_010_A3B4_01
- D 1 - I - 0x02E292 0B:A282: B4 A3     .word ofs_010_A3B4_02
- D 1 - I - 0x02E294 0B:A284: B0 A2     .word ofs_010_A2B0_03



ofs_010_A286_00:
C - - J - - 0x02E296 0B:A286: A0 00     LDY #$00
C - - - - - 0x02E298 0B:A288: A5 8E     LDA ram_subweapon_power
C - - - - - 0x02E29A 0B:A28A: F0 19     BEQ bra_A2A5
C - - - - - 0x02E29C 0B:A28C: C9 02     CMP #$02
C - - - - - 0x02E29E 0B:A28E: F0 1B     BEQ bra_A2AB
C - - - - - 0x02E2A0 0B:A290: A5 84     LDA ram_hearts
C - - - - - 0x02E2A2 0B:A292: C9 08     CMP #$08
C - - - - - 0x02E2A4 0B:A294: 90 15     BCC bra_A2AB
C - - - - - 0x02E2A6 0B:A296: C8        INY ; 01
bra_A297:
C - - - - - 0x02E2A7 0B:A297: B9 AE A2  LDA tbl_A2AE_object_id,Y
C - - - - - 0x02E2AA 0B:A29A: 20 F8 A3  JSR sub_A3F8
C - - - - - 0x02E2AD 0B:A29D: F0 0C     BEQ bra_A2AB
C - - - - - 0x02E2AF 0B:A29F: A5 00     LDA ram_0000_t0D4_obj_id
C - - - - - 0x02E2B1 0B:A2A1: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x02E2B4 0B:A2A4: 60        RTS
bra_A2A5:
C - - - - - 0x02E2B5 0B:A2A5: A5 84     LDA ram_hearts
C - - - - - 0x02E2B7 0B:A2A7: C9 04     CMP #$04
C - - - - - 0x02E2B9 0B:A2A9: B0 EC     BCS bra_A297
bra_A2AB:
C - - - - - 0x02E2BB 0B:A2AB: 4C B4 A3  JMP loc_A3B4



tbl_A2AE_object_id:
- D 1 - - - 0x02E2BE 0B:A2AE: 9D        .byte $9D   ; 00 
- D 1 - - - 0x02E2BF 0B:A2AF: 9E        .byte $9E   ; 01 



ofs_010_A2B0_03:
C - - J - - 0x02E2C0 0B:A2B0: A0 00     LDY #$00
C - - - - - 0x02E2C2 0B:A2B2: A5 8F     LDA ram_subweapon_power + $01
C - - - - - 0x02E2C4 0B:A2B4: F0 19     BEQ bra_A2CF
C - - - - - 0x02E2C6 0B:A2B6: C9 02     CMP #$02
C - - - - - 0x02E2C8 0B:A2B8: F0 F1     BEQ bra_A2AB
C - - - - - 0x02E2CA 0B:A2BA: A5 84     LDA ram_hearts
C - - - - - 0x02E2CC 0B:A2BC: C9 08     CMP #$08
C - - - - - 0x02E2CE 0B:A2BE: 90 EB     BCC bra_A2AB
C - - - - - 0x02E2D0 0B:A2C0: C8        INY ; 01
bra_A2C1:
C - - - - - 0x02E2D1 0B:A2C1: B9 AE A2  LDA tbl_A2AE_object_id,Y
C - - - - - 0x02E2D4 0B:A2C4: 20 F8 A3  JSR sub_A3F8
C - - - - - 0x02E2D7 0B:A2C7: F0 E2     BEQ bra_A2AB
C - - - - - 0x02E2D9 0B:A2C9: A5 00     LDA ram_0000_t0D4_obj_id
C - - - - - 0x02E2DB 0B:A2CB: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x02E2DE 0B:A2CE: 60        RTS
bra_A2CF:
C - - - - - 0x02E2DF 0B:A2CF: A5 84     LDA ram_hearts
C - - - - - 0x02E2E1 0B:A2D1: C9 04     CMP #$04
C - - - - - 0x02E2E3 0B:A2D3: B0 EC     BCS bra_A2C1
- - - - - - 0x02E2E5 0B:A2D5: 4C B4 A3  JMP loc_A3B4
bra_A2D8:
C - - - - - 0x02E2E8 0B:A2D8: A4 D7     LDY ram_00D7
C - - - - - 0x02E2EA 0B:A2DA: F0 20     BEQ bra_A2FC
bra_A2DC:
C - - - - - 0x02E2EC 0B:A2DC: 20 78 A2  JSR sub_A278
C - - - - - 0x02E2EF 0B:A2DF: 4C F9 A2  JMP loc_A2F9



loc_A2E2_90_92:
C D 1 - - - 0x02E2F2 0B:A2E2: A9 33     LDA #con_sound_destroy_candle
C - - - - - 0x02E2F4 0B:A2E4: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x02E2F7 0B:A2E7: BD D8 05  LDA ram_05D8_obj,X
C - - - - - 0x02E2FA 0B:A2EA: C9 AC     CMP #$AC
C - - - - - 0x02E2FC 0B:A2EC: F0 EA     BEQ bra_A2D8
C - - - - - 0x02E2FE 0B:A2EE: C9 AE     CMP #$AE
C - - - - - 0x02E300 0B:A2F0: F0 EA     BEQ bra_A2DC
C - - - - - 0x02E302 0B:A2F2: C9 98     CMP #$98
C - - - - - 0x02E304 0B:A2F4: B0 06     BCS bra_A2FC
C - - - - - 0x02E306 0B:A2F6: 20 0B A3  JSR sub_A30B
loc_A2F9:
C D 1 - - - 0x02E309 0B:A2F9: BD 4E 05  LDA ram_obj_id,X
bra_A2FC:
C - - - - - 0x02E30C 0B:A2FC: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x02E30F 0B:A2FF: 38        SEC
C - - - - - 0x02E310 0B:A300: E9 60     SBC #$60
C - - - - - 0x02E312 0B:A302: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x02E315 0B:A305: 20 84 B5  JSR sub_B584
C - - - - - 0x02E318 0B:A308: 4C AA FF  JMP loc_0x03FFBA



sub_A30B:
C - - - - - 0x02E31B 0B:A30B: 38        SEC
C - - - - - 0x02E31C 0B:A30C: E9 93     SBC #$93
C - - - - - 0x02E31E 0B:A30E: 20 6D E8  JSR sub_0x03E87D_jump_to_pointers_after_JSR_A
- D 1 - I - 0x02E321 0B:A311: 1B A3     .word ofs_009_A31B_93
- D 1 - I - 0x02E323 0B:A313: 29 A3     .word ofs_009_A329_94
- D 1 - I - 0x02E325 0B:A315: 37 A3     .word ofs_009_A337_95
- D 1 - I - 0x02E327 0B:A317: 45 A3     .word ofs_009_A345_96
- D 1 - I - 0x02E329 0B:A319: 53 A3     .word ofs_009_A353_97



ofs_009_A31B_93:
C - - J - - 0x02E32B 0B:A31B: AD 4E 05  LDA ram_plr_id
C - - - - - 0x02E32E 0B:A31E: 20 6D E8  JSR sub_0x03E87D_jump_to_pointers_after_JSR_A
- D 1 - I - 0x02E331 0B:A321: 58 A3     .word ofs_008_93_A358_00_Trevor
- D 1 - I - 0x02E333 0B:A323: 94 A3     .word ofs_008_93_A394_01_Sypha
- D 1 - I - 0x02E335 0B:A325: 58 A3     .word ofs_008_93_A358_02_Grant
- D 1 - I - 0x02E337 0B:A327: B4 A3     .word ofs_008_93_A3B4_03_Alucard



ofs_009_A329_94:
C - - J - - 0x02E339 0B:A329: AD 4E 05  LDA ram_plr_id
C - - - - - 0x02E33C 0B:A32C: 20 6D E8  JSR sub_0x03E87D_jump_to_pointers_after_JSR_A
- D 1 - I - 0x02E33F 0B:A32F: 80 A3     .word ofs_008_94_A380_00_Trevor
- D 1 - I - 0x02E341 0B:A331: 90 A3     .word ofs_008_94_A390_01_Sypha
- D 1 - I - 0x02E343 0B:A333: 58 A3     .word ofs_008_94_A358_02_Grant
- D 1 - I - 0x02E345 0B:A335: B4 A3     .word ofs_008_94_A3B4_03_Alucard



ofs_009_A337_95:
C - - J - - 0x02E347 0B:A337: AD 4E 05  LDA ram_plr_id
C - - - - - 0x02E34A 0B:A33A: 20 6D E8  JSR sub_0x03E87D_jump_to_pointers_after_JSR_A
- D 1 - I - 0x02E34D 0B:A33D: 71 A3     .word ofs_008_95_A371_00_Trevor
- D 1 - I - 0x02E34F 0B:A33F: 94 A3     .word ofs_008_95_A394_01_Sypha
- D 1 - I - 0x02E351 0B:A341: 71 A3     .word ofs_008_95_A371_02_Grant
- D 1 - I - 0x02E353 0B:A343: B4 A3     .word ofs_008_95_A3B4_03_Alucard



ofs_009_A345_96:
C - - J - - 0x02E355 0B:A345: AD 4E 05  LDA ram_plr_id
C - - - - - 0x02E358 0B:A348: 20 6D E8  JSR sub_0x03E87D_jump_to_pointers_after_JSR_A
- D 1 - I - 0x02E35B 0B:A34B: 88 A3     .word ofs_008_96_A388_00_Trevor
- D 1 - I - 0x02E35D 0B:A34D: 8C A3     .word ofs_008_96_A38C_01_Sypha
- D 1 - I - 0x02E35F 0B:A34F: 71 A3     .word ofs_008_96_A371_02_Grant
- D 1 - I - 0x02E361 0B:A351: B4 A3     .word ofs_008_96_A3B4_03_Alucard



ofs_009_A353_97:
C - - J - - 0x02E363 0B:A353: A9 97     LDA #$97
C - - - - - 0x02E365 0B:A355: 4C 98 A3  JMP loc_A398



ofs_008_93_A358_00_Trevor:
ofs_008_93_A358_02_Grant:
ofs_008_94_A358_02_Grant:
C - - J - - 0x02E368 0B:A358: AD 4E 05  LDA ram_plr_id
C - - - - - 0x02E36B 0B:A35B: F0 0F     BEQ bra_A36C
C - - - - - 0x02E36D 0B:A35D: A5 86     LDA ram_subweapon_id + $01
C - - - - - 0x02E36F 0B:A35F: C9 09     CMP #con_subweapon_g_axe
C - - - - - 0x02E371 0B:A361: D0 03     BNE bra_A366
bra_A363:
C - - - - - 0x02E373 0B:A363: 4C CE B5  JMP loc_B5CE
bra_A366:
C - - - - - 0x02E376 0B:A366: A9 93     LDA #$93
bra_A368:
C - - - - - 0x02E378 0B:A368: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x02E37B 0B:A36B: 60        RTS
bra_A36C:
C - - - - - 0x02E37C 0B:A36C: A9 93     LDA #$93
C - - - - - 0x02E37E 0B:A36E: 4C 98 A3  JMP loc_A398



ofs_008_95_A371_00_Trevor:
ofs_008_95_A371_02_Grant:
ofs_008_96_A371_02_Grant:
C - - J - - 0x02E381 0B:A371: AD 4E 05  LDA ram_plr_id
C - - - - - 0x02E384 0B:A374: F0 0E     BEQ bra_A384
C - - - - - 0x02E386 0B:A376: A5 86     LDA ram_subweapon_id + $01
C - - - - - 0x02E388 0B:A378: C9 08     CMP #con_subweapon_g_knife
C - - - - - 0x02E38A 0B:A37A: F0 E7     BEQ bra_A363
C - - - - - 0x02E38C 0B:A37C: A9 95     LDA #$95
C - - - - - 0x02E38E 0B:A37E: D0 E8     BNE bra_A368    ; jmp



ofs_008_94_A380_00_Trevor:
C - - J - - 0x02E390 0B:A380: A9 94     LDA #$94
C - - - - - 0x02E392 0B:A382: D0 14     BNE bra_A398    ; jmp



bra_A384:
C - - - - - 0x02E394 0B:A384: A9 95     LDA #$95
C - - - - - 0x02E396 0B:A386: D0 10     BNE bra_A398    ; jmp



ofs_008_96_A388_00_Trevor:
C - - J - - 0x02E398 0B:A388: A9 96     LDA #$96
C - - - - - 0x02E39A 0B:A38A: D0 0C     BNE bra_A398    ; jmp



ofs_008_96_A38C_01_Sypha:
C - - J - - 0x02E39C 0B:A38C: A9 99     LDA #$99
C - - - - - 0x02E39E 0B:A38E: D0 08     BNE bra_A398    ; jmp



ofs_008_94_A390_01_Sypha:
C - - J - - 0x02E3A0 0B:A390: A9 9A     LDA #$9A
C - - - - - 0x02E3A2 0B:A392: D0 04     BNE bra_A398    ; jmp



ofs_008_93_A394_01_Sypha:
ofs_008_95_A394_01_Sypha:
C - - J - - 0x02E3A4 0B:A394: A9 98     LDA #$98
; bzk optimize, useless branch
C - - - - - 0x02E3A6 0B:A396: D0 00     BNE bra_A398    ; jmp



bra_A398:
loc_A398:   ; A = 93 98
C D 1 - - - 0x02E3A8 0B:A398: 85 10     STA ram_0010_temp
C - - - - - 0x02E3AA 0B:A39A: A4 3B     LDY ram_player
C - - - - - 0x02E3AC 0B:A39C: 38        SEC
C - - - - - 0x02E3AD 0B:A39D: E9 93     SBC #$93
C - - - - - 0x02E3AF 0B:A39F: A8        TAY
C - - - - - 0x02E3B0 0B:A3A0: B9 71 A1  LDA tbl_A171_subweapon,Y
C - - - - - 0x02E3B3 0B:A3A3: A4 3B     LDY ram_player
C - - - - - 0x02E3B5 0B:A3A5: D9 85 00  CMP ram_subweapon_id,Y
C - - - - - 0x02E3B8 0B:A3A8: F0 B9     BEQ bra_A363
; if not con_subweapon_none
C - - - - - 0x02E3BA 0B:A3AA: A5 10     LDA ram_0010_temp
bra_A3AC:
C - - - - - 0x02E3BC 0B:A3AC: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x02E3BF 0B:A3AF: 60        RTS


; bzk garbage
- - - - - - 0x02E3C0 0B:A3B0: A9 AD     LDA #$AD
- - - - - - 0x02E3C2 0B:A3B2: D0 F8     BNE bra_A3AC    ; jmp



loc_A3B4:
ofs_008_93_A3B4_03_Alucard:
ofs_008_94_A3B4_03_Alucard:
ofs_008_95_A3B4_03_Alucard:
ofs_008_96_A3B4_03_Alucard:
ofs_010_A3B4_01:
ofs_010_A3B4_02:
C D 1 - - - 0x02E3C4 0B:A3B4: 20 E8 A3  JSR sub_A3E8
C - - - - - 0x02E3C7 0B:A3B7: D0 0A     BNE bra_A3C3
C - - - - - 0x02E3C9 0B:A3B9: A5 9E     LDA ram_009E_object_index
C - - - - - 0x02E3CB 0B:A3BB: F0 06     BEQ bra_A3C3
C - - - - - 0x02E3CD 0B:A3BD: A5 9C     LDA ram_009C
C - - - - - 0x02E3CF 0B:A3BF: C9 0A     CMP #$0A
C - - - - - 0x02E3D1 0B:A3C1: B0 04     BCS bra_A3C7
bra_A3C3:
C - - - - - 0x02E3D3 0B:A3C3: A9 AE     LDA #$AE
C - - - - - 0x02E3D5 0B:A3C5: D0 E5     BNE bra_A3AC    ; jmp
bra_A3C7:
C - - - - - 0x02E3D7 0B:A3C7: A9 00     LDA #$00
C - - - - - 0x02E3D9 0B:A3C9: 85 9C     STA ram_009C
C - - - - - 0x02E3DB 0B:A3CB: AD 4E 05  LDA ram_plr_id
C - - - - - 0x02E3DE 0B:A3CE: 29 01     AND #$01
C - - - - - 0x02E3E0 0B:A3D0: D0 F1     BNE bra_A3C3
C - - - - - 0x02E3E2 0B:A3D2: A4 3B     LDY ram_player
C - - - - - 0x02E3E4 0B:A3D4: B9 87 00  LDA ram_subweapon_multiplier,Y
C - - - - - 0x02E3E7 0B:A3D7: D9 E6 A3  CMP tbl_A3E6,Y
C - - - - - 0x02E3EA 0B:A3DA: B0 E7     BCS bra_A3C3
C - - - - - 0x02E3EC 0B:A3DC: A8        TAY
C - - - - - 0x02E3ED 0B:A3DD: B9 E4 A3  LDA tbl_A3E4,Y
C - - - - - 0x02E3F0 0B:A3E0: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x02E3F3 0B:A3E3: 60        RTS



tbl_A3E4:
- D 1 - - - 0x02E3F4 0B:A3E4: AF        .byte $AF   ; 00 
- D 1 - - - 0x02E3F5 0B:A3E5: B0        .byte $B0   ; 01 



tbl_A3E6:
- D 1 - - - 0x02E3F6 0B:A3E6: 02        .byte $02   ; 00 
- - - - - - 0x02E3F7 0B:A3E7: 02        .byte $02   ; 01 



sub_A3E8:
C - - - - - 0x02E3F8 0B:A3E8: A4 3B     LDY ram_player
C - - - - - 0x02E3FA 0B:A3EA: B9 85 00  LDA ram_subweapon_id,Y
C - - - - - 0x02E3FD 0B:A3ED: F0 06     BEQ bra_A3F5_no_subweapon
; if not con_subweapon_none
C - - - - - 0x02E3FF 0B:A3EF: B9 4E 05  LDA ram_obj_id,Y
C - - - - - 0x02E402 0B:A3F2: 29 01     AND #$01
C - - - - - 0x02E404 0B:A3F4: 60        RTS
bra_A3F5_no_subweapon:
C - - - - - 0x02E405 0B:A3F5: A9 01     LDA #$01
C - - - - - 0x02E407 0B:A3F7: 60        RTS



sub_A3F8:
; bzk optimize, write LDA tbl,Y here
; in
    ; A = object id
C - - - - - 0x02E408 0B:A3F8: 85 00     STA ram_0000_t0D4_obj_id
C - - - - - 0x02E40A 0B:A3FA: A0 01     LDY #$01
bra_A3FC_loop:
C - - - - - 0x02E40C 0B:A3FC: B9 4E 05  LDA ram_obj_id,Y
C - - - - - 0x02E40F 0B:A3FF: C5 00     CMP ram_0000_t0D4_obj_id
C - - - - - 0x02E411 0B:A401: F0 07     BEQ bra_A40A_RTS
C - - - - - 0x02E413 0B:A403: C8        INY
C - - - - - 0x02E414 0B:A404: C0 13     CPY #$13
C - - - - - 0x02E416 0B:A406: 90 F4     BCC bra_A3FC_loop
C - - - - - 0x02E418 0B:A408: A9 01     LDA #$01
bra_A40A_RTS:
C - - - - - 0x02E41A 0B:A40A: 60        RTS



_off034_A40B_60:
; 00 
- D 1 - I - 0x02E41B 0B:A40B: 97        .byte con_BD4F_97   ; 
- - - - - - 0x02E41C 0B:A40C: 00        .byte $00   ; 
- - - - - - 0x02E41D 0B:A40D: 00        .byte $00   ; 
- - - - - - 0x02E41E 0B:A40E: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02E41F 0B:A40F: 17        .byte con_BD4F_17   ; 
- - - - - - 0x02E420 0B:A410: 00        .byte $00   ; 
- - - - - - 0x02E421 0B:A411: 00        .byte $00   ; 
- - - - - - 0x02E422 0B:A412: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02E423 0B:A413: 14        .byte con_BD4F_14   ; 
- - - - - - 0x02E424 0B:A414: 00        .byte $00   ; 
- - - - - - 0x02E425 0B:A415: 00        .byte $00   ; 
- - - - - - 0x02E426 0B:A416: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02E427 0B:A417: 15        .byte con_BD4F_15   ; 
- - - - - - 0x02E428 0B:A418: 00        .byte $00   ; 
- - - - - - 0x02E429 0B:A419: 00        .byte $00   ; 
- - - - - - 0x02E42A 0B:A41A: 00        .byte $00   ; 
; 04 
- D 1 - I - 0x02E42B 0B:A41B: 13        .byte con_BD4F_13   ; 
- D 1 - I - 0x02E42C 0B:A41C: 0A        .byte con_obj_type_0A   ; 
- D 1 - I - 0x02E42D 0B:A41D: 0B        .byte $0B   ; 
- - - - - - 0x02E42E 0B:A41E: 00        .byte $00   ; 
; 05 
- D 1 - I - 0x02E42F 0B:A41F: 16        .byte con_BD4F_16   ; 
- - - - - - 0x02E430 0B:A420: 00        .byte $00   ; 
- - - - - - 0x02E431 0B:A421: 00        .byte $00   ; 
- - - - - - 0x02E432 0B:A422: 00        .byte $00   ; 
; 06 
- D 1 - I - 0x02E433 0B:A423: 6C        .byte con_BD4F_play_sound   ; 
- D 1 - I - 0x02E434 0B:A424: 2D        .byte con_sound_2D   ; 
- - - - - - 0x02E435 0B:A425: 00        .byte $00   ; 
- - - - - - 0x02E436 0B:A426: 00        .byte $00   ; 
; 07 
- D 1 - I - 0x02E437 0B:A427: 30        .byte con_BD4F_30   ; 
- D 1 - I - 0x02E438 0B:A428: 02        .byte $02   ; 
- - - - - - 0x02E439 0B:A429: 00        .byte $00   ; 
- - - - - - 0x02E43A 0B:A42A: 00        .byte $00   ; 
; 08 
- D 1 - I - 0x02E43B 0B:A42B: 1A        .byte con_BD4F_1A   ; 
- D 1 - I - 0x02E43C 0B:A42C: 04        .byte $04   ; 
- - - - - - 0x02E43D 0B:A42D: 00        .byte $00   ; 
- - - - - - 0x02E43E 0B:A42E: 00        .byte $00   ; 
; 09 
- D 1 - I - 0x02E43F 0B:A42F: 1B        .byte con_BD4F_1B   ; 
- - - - - - 0x02E440 0B:A430: 00        .byte $00   ; 
- - - - - - 0x02E441 0B:A431: 00        .byte $00   ; 
- - - - - - 0x02E442 0B:A432: 00        .byte $00   ; 
; 0A 
- D 1 - I - 0x02E443 0B:A433: 17        .byte con_BD4F_17   ; 
- - - - - - 0x02E444 0B:A434: 00        .byte $00   ; 
- - - - - - 0x02E445 0B:A435: 00        .byte $00   ; 
- - - - - - 0x02E446 0B:A436: 00        .byte $00   ; 
; 0B 
- D 1 - I - 0x02E447 0B:A437: 1A        .byte con_BD4F_1A   ; 
- D 1 - I - 0x02E448 0B:A438: 10        .byte $10   ; 
- - - - - - 0x02E449 0B:A439: 00        .byte $00   ; 
- - - - - - 0x02E44A 0B:A43A: 00        .byte $00   ; 
; 0C 
- D 1 - I - 0x02E44B 0B:A43B: 1B        .byte con_BD4F_1B   ; 
- - - - - - 0x02E44C 0B:A43C: 00        .byte $00   ; 
- - - - - - 0x02E44D 0B:A43D: 00        .byte $00   ; 
- - - - - - 0x02E44E 0B:A43E: 00        .byte $00   ; 
; 0D 
- D 1 - I - 0x02E44F 0B:A43F: 7B        .byte con_BD4F_7B   ; 
- D 1 - I - 0x02E450 0B:A440: 03        .byte $03   ; 
- - - - - - 0x02E451 0B:A441: 00        .byte $00   ; 
- - - - - - 0x02E452 0B:A442: 00        .byte $00   ; 
; 0E 
- D 1 - I - 0x02E453 0B:A443: 30        .byte con_BD4F_30   ; 
- D 1 - I - 0x02E454 0B:A444: 03        .byte $03   ; 
- - - - - - 0x02E455 0B:A445: 00        .byte $00   ; 
- - - - - - 0x02E456 0B:A446: 00        .byte $00   ; 
; 0F 
- D 1 - I - 0x02E457 0B:A447: 16        .byte con_BD4F_16   ; 
- - - - - - 0x02E458 0B:A448: 00        .byte $00   ; 
- - - - - - 0x02E459 0B:A449: 00        .byte $00   ; 
- - - - - - 0x02E45A 0B:A44A: 00        .byte $00   ; 
; 10 
- D 1 - I - 0x02E45B 0B:A44B: 1A        .byte con_BD4F_1A   ; 
- D 1 - I - 0x02E45C 0B:A44C: 01        .byte $01   ; 
- - - - - - 0x02E45D 0B:A44D: 00        .byte $00   ; 
- - - - - - 0x02E45E 0B:A44E: 00        .byte $00   ; 
; 11 
- D 1 - I - 0x02E45F 0B:A44F: 1B        .byte con_BD4F_1B   ; 
- - - - - - 0x02E460 0B:A450: 00        .byte $00   ; 
- - - - - - 0x02E461 0B:A451: 00        .byte $00   ; 
- - - - - - 0x02E462 0B:A452: 00        .byte $00   ; 
; 12 
- D 1 - I - 0x02E463 0B:A453: 17        .byte con_BD4F_17   ; 
- - - - - - 0x02E464 0B:A454: 00        .byte $00   ; 
- - - - - - 0x02E465 0B:A455: 00        .byte $00   ; 
- - - - - - 0x02E466 0B:A456: 00        .byte $00   ; 
; 13 
- D 1 - I - 0x02E467 0B:A457: 1A        .byte con_BD4F_1A   ; 
- D 1 - I - 0x02E468 0B:A458: 02        .byte $02   ; 
- - - - - - 0x02E469 0B:A459: 00        .byte $00   ; 
- - - - - - 0x02E46A 0B:A45A: 00        .byte $00   ; 
; 14 
- D 1 - I - 0x02E46B 0B:A45B: 1B        .byte con_BD4F_1B   ; 
- - - - - - 0x02E46C 0B:A45C: 00        .byte $00   ; 
- - - - - - 0x02E46D 0B:A45D: 00        .byte $00   ; 
- - - - - - 0x02E46E 0B:A45E: 00        .byte $00   ; 
; 15 
- D 1 - I - 0x02E46F 0B:A45F: 7C        .byte con_BD4F_7C   ; 
- D 1 - I - 0x02E470 0B:A460: F9        .byte $F9   ; 
- - - - - - 0x02E471 0B:A461: 00        .byte $00   ; 
- - - - - - 0x02E472 0B:A462: 00        .byte $00   ; 
; 16 
- D 1 - I - 0x02E473 0B:A463: 18        .byte con_BD4F_18   ; 
- - - - - - 0x02E474 0B:A464: 00        .byte $00   ; 
- - - - - - 0x02E475 0B:A465: 00        .byte $00   ; 
- - - - - - 0x02E476 0B:A466: 00        .byte $00   ; 



ofs_039_A467_97:
C - - J - - 0x02E477 0B:A467: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02E47A 0B:A46A: 4C C8 FE  JMP loc_0x03FED8_clear_speed



ofs_039_A46D_14:
C - - J - - 0x02E47D 0B:A46D: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02E480 0B:A470: 20 24 A5  JSR sub_A524_generate_random_number
C - - - - - 0x02E483 0B:A473: 29 07     AND #$07
C - - - - - 0x02E485 0B:A475: 0A        ASL
C - - - - - 0x02E486 0B:A476: A8        TAY
C - - - - - 0x02E487 0B:A477: B9 BF A4  LDA tbl_A4BF,Y
C - - - - - 0x02E48A 0B:A47A: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x02E48D 0B:A47D: B9 C0 A4  LDA tbl_A4BF + $01,Y
C - - - - - 0x02E490 0B:A480: 9D 45 06  STA ram_obj_0646,X
C - - - - - 0x02E493 0B:A483: A5 32     LDA ram_blk_id_hi
C - - - - - 0x02E495 0B:A485: C9 02     CMP #$02
C - - - - - 0x02E497 0B:A487: D0 1F     BNE bra_A4A8
C - - - - - 0x02E499 0B:A489: A5 33     LDA ram_blk_id_lo
C - - - - - 0x02E49B 0B:A48B: C9 04     CMP #$04
C - - - - - 0x02E49D 0B:A48D: D0 19     BNE bra_A4A8
C - - - - - 0x02E49F 0B:A48F: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x02E4A2 0B:A492: 10 0B     BPL bra_A49F
C - - - - - 0x02E4A4 0B:A494: 20 24 A5  JSR sub_A524_generate_random_number
; * 08
C - - - - - 0x02E4A7 0B:A497: 0A        ASL
C - - - - - 0x02E4A8 0B:A498: 0A        ASL
C - - - - - 0x02E4A9 0B:A499: 0A        ASL
C - - - - - 0x02E4AA 0B:A49A: 09 80     ORA #$80
; bzk optimize, BNE
C - - - - - 0x02E4AC 0B:A49C: 4C A5 A4  JMP loc_A4A5
bra_A49F:
C - - - - - 0x02E4AF 0B:A49F: 20 24 A5  JSR sub_A524_generate_random_number
; * 08
C - - - - - 0x02E4B2 0B:A4A2: 0A        ASL
C - - - - - 0x02E4B3 0B:A4A3: 0A        ASL
C - - - - - 0x02E4B4 0B:A4A4: 0A        ASL
loc_A4A5:
C D 1 - - - 0x02E4B5 0B:A4A5: 9D 38 04  STA ram_obj_pos_X_hi,X
bra_A4A8:
C - - - - - 0x02E4B8 0B:A4A8: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x02E4BB 0B:A4AB: 29 7F     AND #$7F
C - - - - - 0x02E4BD 0B:A4AD: C9 20     CMP #$20
C - - - - - 0x02E4BF 0B:A4AF: 90 08     BCC bra_A4B9
C - - - - - 0x02E4C1 0B:A4B1: C9 50     CMP #$50
C - - - - - 0x02E4C3 0B:A4B3: B0 04     BCS bra_A4B9
C - - - - - 0x02E4C5 0B:A4B5: A9 58     LDA #$58
C - - - - - 0x02E4C7 0B:A4B7: D0 02     BNE bra_A4BB    ; jmp
bra_A4B9:
C - - - - - 0x02E4C9 0B:A4B9: A9 40     LDA #$40
bra_A4BB:
C - - - - - 0x02E4CB 0B:A4BB: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x02E4CE 0B:A4BE: 60        RTS



tbl_A4BF:
;                                              +---------- 
;                                              |    +----- 
;                                              |    |
- D 1 - - - 0x02E4CF 0B:A4BF: 80        .byte $80, $01   ; 00 
- D 1 - - - 0x02E4D1 0B:A4C1: 00        .byte $00, $02   ; 01 
- D 1 - - - 0x02E4D3 0B:A4C3: 58        .byte $58, $00   ; 02 
- D 1 - - - 0x02E4D5 0B:A4C5: 60        .byte $60, $00   ; 03 
- D 1 - - - 0x02E4D7 0B:A4C7: 00        .byte $00, $01   ; 04 
- D 1 - - - 0x02E4D9 0B:A4C9: 00        .byte $00, $04   ; 05 
- D 1 - - - 0x02E4DB 0B:A4CB: 80        .byte $80, $01   ; 06 
- D 1 - - - 0x02E4DD 0B:A4CD: 20        .byte $20, $01   ; 07 



ofs_039_A4CF_15:
C - - J - - 0x02E4DF 0B:A4CF: DE D8 05  DEC ram_05D8_obj,X
C - - - - - 0x02E4E2 0B:A4D2: 10 0E     BPL bra_A4E2_RTS
C - - - - - 0x02E4E4 0B:A4D4: BC D8 05  LDY ram_05D8_obj,X
C - - - - - 0x02E4E7 0B:A4D7: C8        INY
C - - - - - 0x02E4E8 0B:A4D8: D0 08     BNE bra_A4E2_RTS
C - - - - - 0x02E4EA 0B:A4DA: DE 45 06  DEC ram_obj_0646,X
C - - - - - 0x02E4ED 0B:A4DD: 10 03     BPL bra_A4E2_RTS
C - - - - - 0x02E4EF 0B:A4DF: FE C1 05  INC ram_05C1_obj,X
bra_A4E2_RTS:
C - - - - - 0x02E4F2 0B:A4E2: 60        RTS



ofs_039_A4E3_16:
C - - J - - 0x02E4F3 0B:A4E3: A9 50     LDA #con_obj_flag_10 + con_obj_flag_40
C - - - - - 0x02E4F5 0B:A4E5: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x02E4F8 0B:A4E8: D0 25     BNE bra_A50F    ; jmp



ofs_039_A4EA_17:
C - - J - - 0x02E4FA 0B:A4EA: A9 58     LDA #con_obj_flag_08 + con_obj_flag_10 + con_obj_flag_40
C - - - - - 0x02E4FC 0B:A4EC: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x02E4FF 0B:A4EF: D0 1E     BNE bra_A50F    ; jmp



ofs_039_A4F1_18:
C - - J - - 0x02E501 0B:A4F1: A9 00     LDA #$00
C - - - - - 0x02E503 0B:A4F3: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x02E506 0B:A4F6: 60        RTS



ofs_039_A4F7_1A:
C - - J - - 0x02E507 0B:A4F7: A0 01     LDY #$01
C - - - - - 0x02E509 0B:A4F9: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02E50B 0B:A4FB: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x02E50E 0B:A4FE: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02E511 0B:A501: 60        RTS



ofs_039_A502_1B:
C - - J - - 0x02E512 0B:A502: DE D8 05  DEC ram_05D8_obj,X
C - - - - - 0x02E515 0B:A505: F0 08     BEQ bra_A50F
C - - - - - 0x02E517 0B:A507: 60        RTS



ofs_039_A508_7B:
C - - J - - 0x02E518 0B:A508: A0 01     LDY #$01
C - - - - - 0x02E51A 0B:A50A: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02E51C 0B:A50C: 9D 33 06  STA ram_obj_0634,X
bra_A50F:
C - - - - - 0x02E51F 0B:A50F: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02E522 0B:A512: 60        RTS



ofs_039_A513_7C:
C - - J - - 0x02E523 0B:A513: DE 33 06  DEC ram_obj_0634,X
C - - - - - 0x02E526 0B:A516: F0 F7     BEQ bra_A50F
C - - - - - 0x02E528 0B:A518: A0 01     LDY #$01
C - - - - - 0x02E52A 0B:A51A: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02E52C 0B:A51C: 18        CLC
C - - - - - 0x02E52D 0B:A51D: 7D C1 05  ADC ram_05C1_obj,X
C - - - - - 0x02E530 0B:A520: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x02E533 0B:A523: 60        RTS



sub_A524_generate_random_number:
; bzk optimize, same code as 0x02614B, move to bank FF
C - - - - - 0x02E534 0B:A524: A5 1F     LDA ram_random
C - - - - - 0x02E536 0B:A526: D0 02     BNE bra_A52A
C - - - - - 0x02E538 0B:A528: A9 65     LDA #$65
bra_A52A:
C - - - - - 0x02E53A 0B:A52A: 0A        ASL
C - - - - - 0x02E53B 0B:A52B: 85 00     STA ram_0000_t0D5
C - - - - - 0x02E53D 0B:A52D: A5 1F     LDA ram_random
C - - - - - 0x02E53F 0B:A52F: 4A        LSR
C - - - - - 0x02E540 0B:A530: 18        CLC
C - - - - - 0x02E541 0B:A531: 65 00     ADC ram_0000_t0D5
C - - - - - 0x02E543 0B:A533: 85 1F     STA ram_random
C - - - - - 0x02E545 0B:A535: 29 0F     AND #$0F
C - - - - - 0x02E547 0B:A537: 60        RTS



_off034_A538_6B:
; 00 
- - - - - - 0x02E548 0B:A538: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02E549 0B:A539: 00        .byte $00   ; 
- - - - - - 0x02E54A 0B:A53A: 00        .byte $00   ; 
- - - - - - 0x02E54B 0B:A53B: 00        .byte $00   ; 
; 01 
- - - - - - 0x02E54C 0B:A53C: A1        .byte con_BD4F_A1   ; 
- - - - - - 0x02E54D 0B:A53D: 00        .byte $00   ; 
- - - - - - 0x02E54E 0B:A53E: 00        .byte $00   ; 
- - - - - - 0x02E54F 0B:A53F: 00        .byte $00   ; 
; 02 
- - - - - - 0x02E550 0B:A540: A2        .byte con_BD4F_A2   ; 
- - - - - - 0x02E551 0B:A541: 00        .byte $00   ; 
- - - - - - 0x02E552 0B:A542: 00        .byte $00   ; 
- - - - - - 0x02E553 0B:A543: 00        .byte $00   ; 



_off034_A544_6C:
; 00 
- - - - - - 0x02E554 0B:A544: 0B        .byte con_BD4F_0B   ; 
- - - - - - 0x02E555 0B:A545: 0E        .byte con_obj_type_0E   ; 
- - - - - - 0x02E556 0B:A546: 46        .byte $46   ; 
- - - - - - 0x02E557 0B:A547: 00        .byte $00   ; 
; 01 
- - - - - - 0x02E558 0B:A548: 45        .byte con_BD4F_45   ; 
- - - - - - 0x02E559 0B:A549: 0F        .byte $0F   ; 
- - - - - - 0x02E55A 0B:A54A: 00        .byte $00   ; 
- - - - - - 0x02E55B 0B:A54B: 00        .byte $00   ; 
; 02 
- - - - - - 0x02E55C 0B:A54C: 46        .byte con_BD4F_46   ; 
- - - - - - 0x02E55D 0B:A54D: 00        .byte $00   ; 
- - - - - - 0x02E55E 0B:A54E: 00        .byte $00   ; 
- - - - - - 0x02E55F 0B:A54F: 00        .byte $00   ; 



_off034_A550_2C:
; 00 
- D 1 - I - 0x02E560 0B:A550: 88        .byte con_BD4F_88   ; 
- D 1 - I - 0x02E561 0B:A551: 3A        .byte $3A   ; 
- - - - - - 0x02E562 0B:A552: 00        .byte $00   ; 
- - - - - - 0x02E563 0B:A553: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02E564 0B:A554: 77        .byte con_BD4F_77   ; 
- - - - - - 0x02E565 0B:A555: 00        .byte $00   ; 
- - - - - - 0x02E566 0B:A556: 00        .byte $00   ; 
- - - - - - 0x02E567 0B:A557: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02E568 0B:A558: 76        .byte con_BD4F_76   ; 
- - - - - - 0x02E569 0B:A559: 00        .byte $00   ; 
- - - - - - 0x02E56A 0B:A55A: 00        .byte $00   ; 
- - - - - - 0x02E56B 0B:A55B: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02E56C 0B:A55C: 78        .byte con_BD4F_78   ; 
- - - - - - 0x02E56D 0B:A55D: 00        .byte $00   ; 
- - - - - - 0x02E56E 0B:A55E: 00        .byte $00   ; 
- - - - - - 0x02E56F 0B:A55F: 00        .byte $00   ; 



_off034_A560_2D:
; 00 
- D 1 - I - 0x02E570 0B:A560: 88        .byte con_BD4F_88   ; 
- D 1 - I - 0x02E571 0B:A561: 42        .byte $42   ; 
- - - - - - 0x02E572 0B:A562: 00        .byte $00   ; 
- - - - - - 0x02E573 0B:A563: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02E574 0B:A564: 75        .byte con_BD4F_75   ; 
- - - - - - 0x02E575 0B:A565: 00        .byte $00   ; 
- - - - - - 0x02E576 0B:A566: 00        .byte $00   ; 
- - - - - - 0x02E577 0B:A567: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02E578 0B:A568: 79        .byte con_BD4F_79   ; 
- - - - - - 0x02E579 0B:A569: 00        .byte $00   ; 
- - - - - - 0x02E57A 0B:A56A: 00        .byte $00   ; 
- - - - - - 0x02E57B 0B:A56B: 00        .byte $00   ; 



_off034_A56C_2E:
; 00 
- D 1 - I - 0x02E57C 0B:A56C: 88        .byte con_BD4F_88   ; 
- D 1 - I - 0x02E57D 0B:A56D: 42        .byte $42   ; 
- - - - - - 0x02E57E 0B:A56E: 00        .byte $00   ; 
- - - - - - 0x02E57F 0B:A56F: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02E580 0B:A570: 75        .byte con_BD4F_75   ; 
- - - - - - 0x02E581 0B:A571: 00        .byte $00   ; 
- - - - - - 0x02E582 0B:A572: 00        .byte $00   ; 
- - - - - - 0x02E583 0B:A573: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02E584 0B:A574: 79        .byte con_BD4F_79   ; 
- - - - - - 0x02E585 0B:A575: 00        .byte $00   ; 
- - - - - - 0x02E586 0B:A576: 00        .byte $00   ; 
- - - - - - 0x02E587 0B:A577: 00        .byte $00   ; 



_off034_A578_61:
; 00 
- D 1 - I - 0x02E588 0B:A578: 7A        .byte con_BD4F_7A   ; 
- - - - - - 0x02E589 0B:A579: 00        .byte $00   ; 
- - - - - - 0x02E58A 0B:A57A: 00        .byte $00   ; 
- - - - - - 0x02E58B 0B:A57B: 00        .byte $00   ; 



_off034_A57C_64:
; 00 
- D 1 - I - 0x02E58C 0B:A57C: 8B        .byte con_BD4F_8B   ; 
- - - - - - 0x02E58D 0B:A57D: 00        .byte $00   ; 
- - - - - - 0x02E58E 0B:A57E: 00        .byte $00   ; 
- - - - - - 0x02E58F 0B:A57F: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02E590 0B:A580: 84        .byte con_BD4F_84   ; 
- - - - - - 0x02E591 0B:A581: 00        .byte $00   ; 
- - - - - - 0x02E592 0B:A582: 00        .byte $00   ; 
- - - - - - 0x02E593 0B:A583: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02E594 0B:A584: 85        .byte con_BD4F_85   ; 
- - - - - - 0x02E595 0B:A585: 00        .byte $00   ; 
- - - - - - 0x02E596 0B:A586: 00        .byte $00   ; 
- - - - - - 0x02E597 0B:A587: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02E598 0B:A588: 86        .byte con_BD4F_86   ; 
- - - - - - 0x02E599 0B:A589: 00        .byte $00   ; 
- - - - - - 0x02E59A 0B:A58A: 00        .byte $00   ; 
- - - - - - 0x02E59B 0B:A58B: 00        .byte $00   ; 



_off034_A58C_6F:
; 00 
- - - - - - 0x02E59C 0B:A58C: A5        .byte con_BD4F_A5   ; 
- - - - - - 0x02E59D 0B:A58D: 00        .byte $00   ; 
- - - - - - 0x02E59E 0B:A58E: 00        .byte $00   ; 
- - - - - - 0x02E59F 0B:A58F: 00        .byte $00   ; 
; 01 
- - - - - - 0x02E5A0 0B:A590: 84        .byte con_BD4F_84   ; 
- - - - - - 0x02E5A1 0B:A591: 00        .byte $00   ; 
- - - - - - 0x02E5A2 0B:A592: 00        .byte $00   ; 
- - - - - - 0x02E5A3 0B:A593: 00        .byte $00   ; 
; 02 
- - - - - - 0x02E5A4 0B:A594: 85        .byte con_BD4F_85   ; 
- - - - - - 0x02E5A5 0B:A595: 00        .byte $00   ; 
- - - - - - 0x02E5A6 0B:A596: 00        .byte $00   ; 
- - - - - - 0x02E5A7 0B:A597: 00        .byte $00   ; 
; 03 
- - - - - - 0x02E5A8 0B:A598: 86        .byte con_BD4F_86   ; 
- - - - - - 0x02E5A9 0B:A599: 00        .byte $00   ; 
- - - - - - 0x02E5AA 0B:A59A: 00        .byte $00   ; 
- - - - - - 0x02E5AB 0B:A59B: 00        .byte $00   ; 



_off034_A59C_01:
; 00 
- D 1 - I - 0x02E5AC 0B:A59C: 07        .byte con_BD4F_07   ; 
- D 1 - I - 0x02E5AD 0B:A59D: 00 80     .dbyt $0080 ; spd_X
- - - - - - 0x02E5AF 0B:A59F: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02E5B0 0B:A5A0: 1C        .byte con_BD4F_1C   ; 
- - - - - - 0x02E5B1 0B:A5A1: 00        .byte $00   ; 
- - - - - - 0x02E5B2 0B:A5A2: 00        .byte $00   ; 
- - - - - - 0x02E5B3 0B:A5A3: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02E5B4 0B:A5A4: 1D        .byte con_BD4F_1D   ; 
- D 1 - I - 0x02E5B5 0B:A5A5: 00        .byte $00   ; 
- D 1 - I - 0x02E5B6 0B:A5A6: 01        .byte $01   ; 
- - - - - - 0x02E5B7 0B:A5A7: 00        .byte $00   ; 



_off034_A5A8_24:
; 00 
- D 1 - I - 0x02E5B8 0B:A5A8: 5D        .byte con_BD4F_5D   ; 
- - - - - - 0x02E5B9 0B:A5A9: 00        .byte $00   ; 
- - - - - - 0x02E5BA 0B:A5AA: 00        .byte $00   ; 
- - - - - - 0x02E5BB 0B:A5AB: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02E5BC 0B:A5AC: 07        .byte con_BD4F_07   ; 
- D 1 - I - 0x02E5BD 0B:A5AD: 00 80     .dbyt $0080 ; spd_X
- - - - - - 0x02E5BF 0B:A5AF: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02E5C0 0B:A5B0: 1C        .byte con_BD4F_1C   ; 
- - - - - - 0x02E5C1 0B:A5B1: 00        .byte $00   ; 
- - - - - - 0x02E5C2 0B:A5B2: 00        .byte $00   ; 
- - - - - - 0x02E5C3 0B:A5B3: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02E5C4 0B:A5B4: 1D        .byte con_BD4F_1D   ; 
- D 1 - I - 0x02E5C5 0B:A5B5: 01        .byte $01   ; 
- D 1 - I - 0x02E5C6 0B:A5B6: 01        .byte $01   ; 
- - - - - - 0x02E5C7 0B:A5B7: 00        .byte $00   ; 



_off034_A5B8_70:
; 00 
- D 1 - I - 0x02E5C8 0B:A5B8: A6        .byte con_BD4F_A6   ; 
- D 1 - I - 0x02E5C9 0B:A5B9: 00 A0     .dbyt $00A0 ; spd_X
- - - - - - 0x02E5CB 0B:A5BB: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02E5CC 0B:A5BC: 1C        .byte con_BD4F_1C   ; 
- - - - - - 0x02E5CD 0B:A5BD: 00        .byte $00   ; 
- - - - - - 0x02E5CE 0B:A5BE: 00        .byte $00   ; 
- - - - - - 0x02E5CF 0B:A5BF: 00        .byte $00   ; 
; 02 
- - - - - - 0x02E5D0 0B:A5C0: 1D        .byte con_BD4F_1D   ; 
- - - - - - 0x02E5D1 0B:A5C1: 00        .byte $00   ; 
- - - - - - 0x02E5D2 0B:A5C2: 01        .byte $01   ; 
- - - - - - 0x02E5D3 0B:A5C3: 00        .byte $00   ; 



_off034_A5C4_02:
; 00 
- D 1 - I - 0x02E5D4 0B:A5C4: 09        .byte con_BD4F_09   ; 
- - - - - - 0x02E5D5 0B:A5C5: 00        .byte $00   ; 
- - - - - - 0x02E5D6 0B:A5C6: 00        .byte $00   ; 
- - - - - - 0x02E5D7 0B:A5C7: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02E5D8 0B:A5C8: 05        .byte con_BD4F_05   ; 
- - - - - - 0x02E5D9 0B:A5C9: 00        .byte $00   ; 
- - - - - - 0x02E5DA 0B:A5CA: 00        .byte $00   ; 
- - - - - - 0x02E5DB 0B:A5CB: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02E5DC 0B:A5CC: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02E5DD 0B:A5CD: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02E5DE 0B:A5CE: 06        .byte $06   ; 
- - - - - - 0x02E5DF 0B:A5CF: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02E5E0 0B:A5D0: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02E5E1 0B:A5D1: 08        .byte $08   ; 
- - - - - - 0x02E5E2 0B:A5D2: 00        .byte $00   ; 
- - - - - - 0x02E5E3 0B:A5D3: 00        .byte $00   ; 
; 04 
- D 1 - I - 0x02E5E4 0B:A5D4: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02E5E5 0B:A5D5: 00        .byte $00   ; 
- - - - - - 0x02E5E6 0B:A5D6: 00        .byte $00   ; 
- - - - - - 0x02E5E7 0B:A5D7: 00        .byte $00   ; 
; 05 
- D 1 - I - 0x02E5E8 0B:A5D8: 53        .byte con_BD4F_53   ; 
- - - - - - 0x02E5E9 0B:A5D9: 00        .byte $00   ; 
- - - - - - 0x02E5EA 0B:A5DA: 00        .byte $00   ; 
- - - - - - 0x02E5EB 0B:A5DB: 00        .byte $00   ; 
; 06 
- D 1 - I - 0x02E5EC 0B:A5DC: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02E5ED 0B:A5DD: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02E5EE 0B:A5DE: 08        .byte $08   ; 
- - - - - - 0x02E5EF 0B:A5DF: 00        .byte $00   ; 
; 07 
- D 1 - I - 0x02E5F0 0B:A5E0: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02E5F1 0B:A5E1: 08        .byte $08   ; 
- - - - - - 0x02E5F2 0B:A5E2: 00        .byte $00   ; 
- - - - - - 0x02E5F3 0B:A5E3: 00        .byte $00   ; 
; 08 
- D 1 - I - 0x02E5F4 0B:A5E4: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02E5F5 0B:A5E5: 00        .byte $00   ; 
- - - - - - 0x02E5F6 0B:A5E6: 00        .byte $00   ; 
- - - - - - 0x02E5F7 0B:A5E7: 00        .byte $00   ; 
; 09 
- D 1 - I - 0x02E5F8 0B:A5E8: 08        .byte con_BD4F_08   ; 
- D 1 - I - 0x02E5F9 0B:A5E9: 00        .byte $00   ; 
- - - - - - 0x02E5FA 0B:A5EA: 00        .byte $00   ; 
- - - - - - 0x02E5FB 0B:A5EB: 00        .byte $00   ; 
; 0A 
- D 1 - I - 0x02E5FC 0B:A5EC: 07        .byte con_BD4F_07   ; 
- D 1 - I - 0x02E5FD 0B:A5ED: 00 80     .dbyt $0080 ; spd_X
- - - - - - 0x02E5FF 0B:A5EF: 00        .byte $00   ; 
; 0B 
- D 1 - I - 0x02E600 0B:A5F0: 1C        .byte con_BD4F_1C   ; 
- - - - - - 0x02E601 0B:A5F1: 00        .byte $00   ; 
- - - - - - 0x02E602 0B:A5F2: 00        .byte $00   ; 
- - - - - - 0x02E603 0B:A5F3: 00        .byte $00   ; 
; 0C 
- - - - - - 0x02E604 0B:A5F4: 1D        .byte con_BD4F_1D   ; 
- - - - - - 0x02E605 0B:A5F5: 09        .byte $09   ; 
- - - - - - 0x02E606 0B:A5F6: 01        .byte $01   ; 
- - - - - - 0x02E607 0B:A5F7: 00        .byte $00   ; 
; 0D 
- D 1 - I - 0x02E608 0B:A5F8: 01        .byte con_BD4F_01   ; 
- - - - - - 0x02E609 0B:A5F9: 00        .byte $00   ; 
- - - - - - 0x02E60A 0B:A5FA: 00        .byte $00   ; 
- - - - - - 0x02E60B 0B:A5FB: 00        .byte $00   ; 
; 0E 
- D 1 - I - 0x02E60C 0B:A5FC: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02E60D 0B:A5FD: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02E60E 0B:A5FE: 08        .byte $08   ; 
- - - - - - 0x02E60F 0B:A5FF: 00        .byte $00   ; 
; 0F 
- D 1 - I - 0x02E610 0B:A600: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02E611 0B:A601: 08        .byte $08   ; 
- - - - - - 0x02E612 0B:A602: 00        .byte $00   ; 
- - - - - - 0x02E613 0B:A603: 00        .byte $00   ; 
; 10 
- D 1 - I - 0x02E614 0B:A604: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02E615 0B:A605: 00        .byte $00   ; 
- - - - - - 0x02E616 0B:A606: 00        .byte $00   ; 
- - - - - - 0x02E617 0B:A607: 00        .byte $00   ; 
; 11 
- D 1 - I - 0x02E618 0B:A608: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02E619 0B:A609: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02E61A 0B:A60A: 06        .byte $06   ; 
- - - - - - 0x02E61B 0B:A60B: 00        .byte $00   ; 
; 12 
- D 1 - I - 0x02E61C 0B:A60C: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02E61D 0B:A60D: 08        .byte $08   ; 
- - - - - - 0x02E61E 0B:A60E: 00        .byte $00   ; 
- - - - - - 0x02E61F 0B:A60F: 00        .byte $00   ; 
; 13 
- D 1 - I - 0x02E620 0B:A610: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02E621 0B:A611: 00        .byte $00   ; 
- - - - - - 0x02E622 0B:A612: 00        .byte $00   ; 
- - - - - - 0x02E623 0B:A613: 00        .byte $00   ; 
; 14 
- D 1 - I - 0x02E624 0B:A614: 27        .byte con_BD4F_27   ; 
- - - - - - 0x02E625 0B:A615: 00        .byte $00   ; 
- - - - - - 0x02E626 0B:A616: 00        .byte $00   ; 
- - - - - - 0x02E627 0B:A617: 00        .byte $00   ; 



_off034_A618_07:
; 00 
- D 1 - I - 0x02E628 0B:A618: 2D        .byte con_BD4F_2D   ; 
- - - - - - 0x02E629 0B:A619: 00        .byte $00   ; 
- - - - - - 0x02E62A 0B:A61A: 00        .byte $00   ; 
- - - - - - 0x02E62B 0B:A61B: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02E62C 0B:A61C: 1E        .byte con_BD4F_1E   ; 
- D 1 - I - 0x02E62D 0B:A61D: 01 10     .dbyt $0110 ; spd_X
- - - - - - 0x02E62F 0B:A61F: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02E630 0B:A620: 95        .byte con_BD4F_95   ; 
- - - - - - 0x02E631 0B:A621: 00        .byte $00   ; 
- - - - - - 0x02E632 0B:A622: 00        .byte $00   ; 
- - - - - - 0x02E633 0B:A623: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02E634 0B:A624: 9C        .byte con_BD4F_9C   ; 
- D 1 - I - 0x02E635 0B:A625: 07        .byte $07   ; 
- D 1 - I - 0x02E636 0B:A626: 00        .byte $00   ; 
- - - - - - 0x02E637 0B:A627: 08        .byte $08   ; 
; 04 
- D 1 - I - 0x02E638 0B:A628: 9D        .byte con_BD4F_9D   ; 
- - - - - - 0x02E639 0B:A629: 00        .byte $00   ; 
- - - - - - 0x02E63A 0B:A62A: 00        .byte $00   ; 
- - - - - - 0x02E63B 0B:A62B: 00        .byte $00   ; 



_off034_A62C_6D:
; 00 
- D 1 - I - 0x02E63C 0B:A62C: 2D        .byte con_BD4F_2D   ; 
- - - - - - 0x02E63D 0B:A62D: 00        .byte $00   ; 
- - - - - - 0x02E63E 0B:A62E: 00        .byte $00   ; 
- - - - - - 0x02E63F 0B:A62F: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02E640 0B:A630: 1E        .byte con_BD4F_1E   ; 
- D 1 - I - 0x02E641 0B:A631: 01 10     .dbyt $0110 ; spd_X
- - - - - - 0x02E643 0B:A633: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02E644 0B:A634: 13        .byte con_BD4F_13   ; 
- D 1 - I - 0x02E645 0B:A635: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02E646 0B:A636: 27        .byte $27   ; 
- - - - - - 0x02E647 0B:A637: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02E648 0B:A638: A3        .byte con_BD4F_A3   ; 
- - - - - - 0x02E649 0B:A639: 00        .byte $00   ; 
- - - - - - 0x02E64A 0B:A63A: 00        .byte $00   ; 
- - - - - - 0x02E64B 0B:A63B: 00        .byte $00   ; 
; 04 
- D 1 - I - 0x02E64C 0B:A63C: A4        .byte con_BD4F_A4   ; 
- - - - - - 0x02E64D 0B:A63D: 00        .byte $00   ; 
- - - - - - 0x02E64E 0B:A63E: 00        .byte $00   ; 
- - - - - - 0x02E64F 0B:A63F: 00        .byte $00   ; 



_off034_A640_1E:
; 00 
- D 1 - I - 0x02E650 0B:A640: 6E        .byte con_BD4F_6E   ; 
- - - - - - 0x02E651 0B:A641: 00        .byte $00   ; 
- - - - - - 0x02E652 0B:A642: 00        .byte $00   ; 
- - - - - - 0x02E653 0B:A643: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02E654 0B:A644: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02E655 0B:A645: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02E656 0B:A646: 3E        .byte $3E   ; 
- - - - - - 0x02E657 0B:A647: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02E658 0B:A648: 9F        .byte con_BD4F_9F   ; 
- - - - - - 0x02E659 0B:A649: 00        .byte $00   ; 
- - - - - - 0x02E65A 0B:A64A: 00        .byte $00   ; 
- - - - - - 0x02E65B 0B:A64B: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02E65C 0B:A64C: 26        .byte con_BD4F_26   ; 
- D 1 - I - 0x02E65D 0B:A64D: 08        .byte $08   ; 
- D 1 - I - 0x02E65E 0B:A64E: 04        .byte $04   ; 
- - - - - - 0x02E65F 0B:A64F: 00        .byte $00   ; 
; 04 
- D 1 - I - 0x02E660 0B:A650: 23        .byte con_BD4F_23   ; 
- D 1 - I - 0x02E661 0B:A651: 03        .byte $03   ; 
- D 1 - I - 0x02E662 0B:A652: 04        .byte $04   ; 
- - - - - - 0x02E663 0B:A653: 00        .byte $00   ; 
; 05 
- D 1 - I - 0x02E664 0B:A654: 52        .byte con_BD4F_52   ; 
- - - - - - 0x02E665 0B:A655: 00        .byte $00   ; 
- - - - - - 0x02E666 0B:A656: 00        .byte $00   ; 
- - - - - - 0x02E667 0B:A657: 00        .byte $00   ; 
; 06 
- D 1 - I - 0x02E668 0B:A658: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02E669 0B:A659: 24        .byte $24   ; 
- - - - - - 0x02E66A 0B:A65A: 00        .byte $00   ; 
- - - - - - 0x02E66B 0B:A65B: 00        .byte $00   ; 
; 07 
- D 1 - I - 0x02E66C 0B:A65C: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02E66D 0B:A65D: 00        .byte $00   ; 
- - - - - - 0x02E66E 0B:A65E: 00        .byte $00   ; 
- - - - - - 0x02E66F 0B:A65F: 00        .byte $00   ; 
; 08 
- D 1 - I - 0x02E670 0B:A660: 52        .byte con_BD4F_52   ; 
- - - - - - 0x02E671 0B:A661: 00        .byte $00   ; 
- - - - - - 0x02E672 0B:A662: 00        .byte $00   ; 
- - - - - - 0x02E673 0B:A663: 00        .byte $00   ; 
; 09 
- D 1 - I - 0x02E674 0B:A664: 08        .byte con_BD4F_08   ; 
- D 1 - I - 0x02E675 0B:A665: 01        .byte $01   ; 
- - - - - - 0x02E676 0B:A666: 00        .byte $00   ; 
- - - - - - 0x02E677 0B:A667: 00        .byte $00   ; 
; 0A 
- D 1 - I - 0x02E678 0B:A668: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02E679 0B:A669: 00        .byte $00   ; 
- - - - - - 0x02E67A 0B:A66A: 00        .byte $00   ; 
- - - - - - 0x02E67B 0B:A66B: 00        .byte $00   ; 
; 0B 
- D 1 - I - 0x02E67C 0B:A66C: 04        .byte con_BD4F_04   ; 
- D 1 - I - 0x02E67D 0B:A66D: 01        .byte $01   ; 
- - - - - - 0x02E67E 0B:A66E: 00        .byte $00   ; 
- - - - - - 0x02E67F 0B:A66F: 00        .byte $00   ; 



_off034_A670_12:
; 00 
- D 1 - I - 0x02E680 0B:A670: 6E        .byte con_BD4F_6E   ; 
- - - - - - 0x02E681 0B:A671: 00        .byte $00   ; 
- - - - - - 0x02E682 0B:A672: 00        .byte $00   ; 
- - - - - - 0x02E683 0B:A673: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02E684 0B:A674: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02E685 0B:A675: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02E686 0B:A676: 3E        .byte $3E   ; 
- - - - - - 0x02E687 0B:A677: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02E688 0B:A678: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02E689 0B:A679: 20        .byte $20   ; 
- - - - - - 0x02E68A 0B:A67A: 00        .byte $00   ; 
- - - - - - 0x02E68B 0B:A67B: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02E68C 0B:A67C: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02E68D 0B:A67D: 00        .byte $00   ; 
- - - - - - 0x02E68E 0B:A67E: 00        .byte $00   ; 
- - - - - - 0x02E68F 0B:A67F: 00        .byte $00   ; 
; 04 
- D 1 - I - 0x02E690 0B:A680: 26        .byte con_BD4F_26   ; 
- D 1 - I - 0x02E691 0B:A681: 08        .byte $08   ; 
- D 1 - I - 0x02E692 0B:A682: 04        .byte $04   ; 
- - - - - - 0x02E693 0B:A683: 00        .byte $00   ; 
; 05 
- D 1 - I - 0x02E694 0B:A684: 23        .byte con_BD4F_23   ; 
- D 1 - I - 0x02E695 0B:A685: 03        .byte $03   ; 
- D 1 - I - 0x02E696 0B:A686: 04        .byte $04   ; 
- - - - - - 0x02E697 0B:A687: 00        .byte $00   ; 
; 06 
- D 1 - I - 0x02E698 0B:A688: 26        .byte con_BD4F_26   ; 
- D 1 - I - 0x02E699 0B:A689: 04        .byte $04   ; 
- D 1 - I - 0x02E69A 0B:A68A: 08        .byte $08   ; 
- - - - - - 0x02E69B 0B:A68B: 00        .byte $00   ; 
; 07 
- D 1 - I - 0x02E69C 0B:A68C: 25        .byte con_BD4F_25   ; 
- D 1 - I - 0x02E69D 0B:A68D: 28        .byte $28   ; 
- D 1 - I - 0x02E69E 0B:A68E: 24        .byte $24   ; 
- - - - - - 0x02E69F 0B:A68F: 00        .byte $00   ; 
; 08 
- D 1 - I - 0x02E6A0 0B:A690: 04        .byte con_BD4F_04   ; 
- D 1 - I - 0x02E6A1 0B:A691: 02        .byte $02   ; 
- - - - - - 0x02E6A2 0B:A692: 00        .byte $00   ; 
- - - - - - 0x02E6A3 0B:A693: 00        .byte $00   ; 



_off034_A694_2F:
; 00 
- D 1 - I - 0x02E6A4 0B:A694: 6E        .byte con_BD4F_6E   ; 
- - - - - - 0x02E6A5 0B:A695: 00        .byte $00   ; 
- - - - - - 0x02E6A6 0B:A696: 00        .byte $00   ; 
- - - - - - 0x02E6A7 0B:A697: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02E6A8 0B:A698: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02E6A9 0B:A699: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02E6AA 0B:A69A: 40        .byte $40   ; 
- - - - - - 0x02E6AB 0B:A69B: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02E6AC 0B:A69C: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02E6AD 0B:A69D: 20        .byte $20   ; 
- - - - - - 0x02E6AE 0B:A69E: 00        .byte $00   ; 
- - - - - - 0x02E6AF 0B:A69F: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02E6B0 0B:A6A0: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02E6B1 0B:A6A1: 00        .byte $00   ; 
- - - - - - 0x02E6B2 0B:A6A2: 00        .byte $00   ; 
- - - - - - 0x02E6B3 0B:A6A3: 00        .byte $00   ; 
; 04 
- D 1 - I - 0x02E6B4 0B:A6A4: 26        .byte con_BD4F_26   ; 
- D 1 - I - 0x02E6B5 0B:A6A5: 08        .byte $08   ; 
- D 1 - I - 0x02E6B6 0B:A6A6: 04        .byte $04   ; 
- - - - - - 0x02E6B7 0B:A6A7: 00        .byte $00   ; 
; 05 
- D 1 - I - 0x02E6B8 0B:A6A8: 23        .byte con_BD4F_23   ; 
- D 1 - I - 0x02E6B9 0B:A6A9: 03        .byte $03   ; 
- D 1 - I - 0x02E6BA 0B:A6AA: 04        .byte $04   ; 
- - - - - - 0x02E6BB 0B:A6AB: 00        .byte $00   ; 
; 06 
- D 1 - I - 0x02E6BC 0B:A6AC: 26        .byte con_BD4F_26   ; 
- D 1 - I - 0x02E6BD 0B:A6AD: 04        .byte $04   ; 
- D 1 - I - 0x02E6BE 0B:A6AE: 08        .byte $08   ; 
- - - - - - 0x02E6BF 0B:A6AF: 00        .byte $00   ; 
; 07 
- D 1 - I - 0x02E6C0 0B:A6B0: 25        .byte con_BD4F_25   ; 
- D 1 - I - 0x02E6C1 0B:A6B1: 28        .byte $28   ; 
- - - - - - 0x02E6C2 0B:A6B2: 24        .byte $24   ; 
- - - - - - 0x02E6C3 0B:A6B3: 00        .byte $00   ; 
; 08 
- D 1 - I - 0x02E6C4 0B:A6B4: 04        .byte con_BD4F_04   ; 
- D 1 - I - 0x02E6C5 0B:A6B5: 02        .byte $02   ; 
- - - - - - 0x02E6C6 0B:A6B6: 00        .byte $00   ; 
- - - - - - 0x02E6C7 0B:A6B7: 00        .byte $00   ; 



_off034_A6B8_69:
; 00 
- D 1 - I - 0x02E6C8 0B:A6B8: 2D        .byte con_BD4F_2D   ; 
- - - - - - 0x02E6C9 0B:A6B9: 00        .byte $00   ; 
- - - - - - 0x02E6CA 0B:A6BA: 00        .byte $00   ; 
- - - - - - 0x02E6CB 0B:A6BB: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02E6CC 0B:A6BC: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02E6CD 0B:A6BD: 10        .byte $10   ; 
- - - - - - 0x02E6CE 0B:A6BE: 00        .byte $00   ; 
- - - - - - 0x02E6CF 0B:A6BF: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02E6D0 0B:A6C0: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02E6D1 0B:A6C1: 00        .byte $00   ; 
- - - - - - 0x02E6D2 0B:A6C2: 00        .byte $00   ; 
- - - - - - 0x02E6D3 0B:A6C3: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02E6D4 0B:A6C4: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02E6D5 0B:A6C5: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02E6D6 0B:A6C6: 4C        .byte $4C   ; 
- - - - - - 0x02E6D7 0B:A6C7: 00        .byte $00   ; 
; 04 
- D 1 - I - 0x02E6D8 0B:A6C8: 93        .byte con_BD4F_93   ; 
- - - - - - 0x02E6D9 0B:A6C9: 00        .byte $00   ; 
- - - - - - 0x02E6DA 0B:A6CA: 00        .byte $00   ; 
- - - - - - 0x02E6DB 0B:A6CB: 00        .byte $00   ; 
; 05 
- D 1 - I - 0x02E6DC 0B:A6CC: 94        .byte con_BD4F_94   ; 
- - - - - - 0x02E6DD 0B:A6CD: 00        .byte $00   ; 
- - - - - - 0x02E6DE 0B:A6CE: 00        .byte $00   ; 
- - - - - - 0x02E6DF 0B:A6CF: 00        .byte $00   ; 
; 06 
- D 1 - I - 0x02E6E0 0B:A6D0: 21        .byte con_BD4F_21   ; 
- - - - - - 0x02E6E1 0B:A6D1: 00        .byte $00   ; 
- - - - - - 0x02E6E2 0B:A6D2: 00        .byte $00   ; 
- - - - - - 0x02E6E3 0B:A6D3: 00        .byte $00   ; 
; 07 
- D 1 - I - 0x02E6E4 0B:A6D4: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02E6E5 0B:A6D5: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02E6E6 0B:A6D6: 4E        .byte $4E   ; 
- - - - - - 0x02E6E7 0B:A6D7: 00        .byte $00   ; 
; 08 
- D 1 - I - 0x02E6E8 0B:A6D8: 10        .byte con_BD4F_10   ; 
- - - - - - 0x02E6E9 0B:A6D9: 00        .byte $00   ; 
- - - - - - 0x02E6EA 0B:A6DA: 00        .byte $00   ; 
- - - - - - 0x02E6EB 0B:A6DB: 00        .byte $00   ; 
; 09 
- D 1 - I - 0x02E6EC 0B:A6DC: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02E6ED 0B:A6DD: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02E6EE 0B:A6DE: 4C        .byte $4C   ; 
- - - - - - 0x02E6EF 0B:A6DF: 00        .byte $00   ; 
; 0A 
- D 1 - I - 0x02E6F0 0B:A6E0: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02E6F1 0B:A6E1: 08        .byte $08   ; 
- - - - - - 0x02E6F2 0B:A6E2: 00        .byte $00   ; 
- - - - - - 0x02E6F3 0B:A6E3: 00        .byte $00   ; 
; 0B 
- D 1 - I - 0x02E6F4 0B:A6E4: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02E6F5 0B:A6E5: 00        .byte $00   ; 
- - - - - - 0x02E6F6 0B:A6E6: 00        .byte $00   ; 
- - - - - - 0x02E6F7 0B:A6E7: 00        .byte $00   ; 
; 0C 
- D 1 - I - 0x02E6F8 0B:A6E8: 04        .byte con_BD4F_04   ; 
- D 1 - I - 0x02E6F9 0B:A6E9: 06        .byte $06   ; 
- - - - - - 0x02E6FA 0B:A6EA: 00        .byte $00   ; 
- - - - - - 0x02E6FB 0B:A6EB: 00        .byte $00   ; 



_off034_A6EC_0E:
; 00 
- D 1 - I - 0x02E6FC 0B:A6EC: 01        .byte con_BD4F_01   ; 
- - - - - - 0x02E6FD 0B:A6ED: 00        .byte $00   ; 
- - - - - - 0x02E6FE 0B:A6EE: 00        .byte $00   ; 
- - - - - - 0x02E6FF 0B:A6EF: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02E700 0B:A6F0: 91        .byte con_BD4F_91   ; 
- - - - - - 0x02E701 0B:A6F1: 00        .byte $00   ; 
- - - - - - 0x02E702 0B:A6F2: 00        .byte $00   ; 
- - - - - - 0x02E703 0B:A6F3: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02E704 0B:A6F4: 06        .byte con_BD4F_06   ; 
- - - - - - 0x02E705 0B:A6F5: 00        .byte $00   ; 
- - - - - - 0x02E706 0B:A6F6: 00        .byte $00   ; 
- - - - - - 0x02E707 0B:A6F7: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02E708 0B:A6F8: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02E709 0B:A6F9: 28        .byte $28   ; 
- - - - - - 0x02E70A 0B:A6FA: 00        .byte $00   ; 
- - - - - - 0x02E70B 0B:A6FB: 00        .byte $00   ; 
; 04 
- D 1 - I - 0x02E70C 0B:A6FC: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02E70D 0B:A6FD: 00        .byte $00   ; 
- - - - - - 0x02E70E 0B:A6FE: 00        .byte $00   ; 
- - - - - - 0x02E70F 0B:A6FF: 00        .byte $00   ; 
; 05 
- D 1 - I - 0x02E710 0B:A700: 21        .byte con_BD4F_21   ; 
- - - - - - 0x02E711 0B:A701: 00        .byte $00   ; 
- - - - - - 0x02E712 0B:A702: 00        .byte $00   ; 
- - - - - - 0x02E713 0B:A703: 00        .byte $00   ; 
; 06 
- D 1 - I - 0x02E714 0B:A704: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02E715 0B:A705: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02E716 0B:A706: 4E        .byte $4E   ; 
- - - - - - 0x02E717 0B:A707: 00        .byte $00   ; 
; 07 
- D 1 - I - 0x02E718 0B:A708: 10        .byte con_BD4F_10   ; 
- - - - - - 0x02E719 0B:A709: 00        .byte $00   ; 
- - - - - - 0x02E71A 0B:A70A: 00        .byte $00   ; 
- - - - - - 0x02E71B 0B:A70B: 00        .byte $00   ; 
; 08 
- D 1 - I - 0x02E71C 0B:A70C: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02E71D 0B:A70D: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02E71E 0B:A70E: 4C        .byte $4C   ; 
- - - - - - 0x02E71F 0B:A70F: 00        .byte $00   ; 
; 09 
- D 1 - I - 0x02E720 0B:A710: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02E721 0B:A711: 08        .byte $08   ; 
- - - - - - 0x02E722 0B:A712: 00        .byte $00   ; 
- - - - - - 0x02E723 0B:A713: 00        .byte $00   ; 
; 0A 
- D 1 - I - 0x02E724 0B:A714: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02E725 0B:A715: 00        .byte $00   ; 
- - - - - - 0x02E726 0B:A716: 00        .byte $00   ; 
- - - - - - 0x02E727 0B:A717: 00        .byte $00   ; 
; 0B 
- D 1 - I - 0x02E728 0B:A718: 04        .byte con_BD4F_04   ; 
- D 1 - I - 0x02E729 0B:A719: 05        .byte $05   ; 
- - - - - - 0x02E72A 0B:A71A: 00        .byte $00   ; 
- - - - - - 0x02E72B 0B:A71B: 00        .byte $00   ; 



_off034_A71C_05:
; 00 
- D 1 - I - 0x02E72C 0B:A71C: 07        .byte con_BD4F_07   ; 
- D 1 - I - 0x02E72D 0B:A71D: 01 40     .dbyt $0140 ; spd_X
- - - - - - 0x02E72F 0B:A71F: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02E730 0B:A720: 11        .byte con_BD4F_11   ; 
- D 1 - I - 0x02E731 0B:A721: 04        .byte $04   ; 
- D 1 - I - 0x02E732 0B:A722: 00        .byte $00   ; 
- - - - - - 0x02E733 0B:A723: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02E734 0B:A724: 12        .byte con_BD4F_12   ; 
- - - - - - 0x02E735 0B:A725: 00        .byte $00   ; 
- - - - - - 0x02E736 0B:A726: 00        .byte $00   ; 
- - - - - - 0x02E737 0B:A727: 00        .byte $00   ; 



_off034_A728_66:
; 00 
- D 1 - I - 0x02E738 0B:A728: 2D        .byte con_BD4F_2D   ; 
- - - - - - 0x02E739 0B:A729: 00        .byte $00   ; 
- - - - - - 0x02E73A 0B:A72A: 00        .byte $00   ; 
- - - - - - 0x02E73B 0B:A72B: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02E73C 0B:A72C: 1E        .byte con_BD4F_1E   ; 
- D 1 - I - 0x02E73D 0B:A72D: 01 40     .dbyt $0140 ; spd_X
- - - - - - 0x02E73F 0B:A72F: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02E740 0B:A730: 13        .byte con_BD4F_13   ; 
- D 1 - I - 0x02E741 0B:A731: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02E742 0B:A732: 24        .byte $24   ; 
- - - - - - 0x02E743 0B:A733: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02E744 0B:A734: 11        .byte con_BD4F_11   ; 
- D 1 - I - 0x02E745 0B:A735: 04        .byte $04   ; 
- D 1 - I - 0x02E746 0B:A736: 00        .byte $00   ; 
- - - - - - 0x02E747 0B:A737: 00        .byte $00   ; 
; 04 
- D 1 - I - 0x02E748 0B:A738: 12        .byte con_BD4F_12   ; 
- - - - - - 0x02E749 0B:A739: 00        .byte $00   ; 
- - - - - - 0x02E74A 0B:A73A: 00        .byte $00   ; 
- - - - - - 0x02E74B 0B:A73B: 00        .byte $00   ; 



_off034_A73C_06:
; 00 
- D 1 - I - 0x02E74C 0B:A73C: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02E74D 0B:A73D: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02E74E 0B:A73E: 1E        .byte $1E   ; 
- - - - - - 0x02E74F 0B:A73F: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02E750 0B:A740: 4D        .byte con_BD4F_compare_XY_distance   ; 
- D 1 - I - 0x02E751 0B:A741: 60        .byte $60   ; X
- D 1 - I - 0x02E752 0B:A742: 20        .byte $20   ; Y
- - - - - - 0x02E753 0B:A743: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02E754 0B:A744: 07        .byte con_BD4F_07   ; 
- D 1 - I - 0x02E755 0B:A745: 01 40     .dbyt $0140 ; spd_X
- - - - - - 0x02E757 0B:A747: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02E758 0B:A748: 6F        .byte con_BD4F_6F   ; 
- D 1 - I - 0x02E759 0B:A749: 00        .byte $00   ; 
- D 1 - I - 0x02E75A 0B:A74A: 20        .byte $20   ; 
- - - - - - 0x02E75B 0B:A74B: 00        .byte $00   ; 
; 04 
- D 1 - I - 0x02E75C 0B:A74C: 70        .byte con_BD4F_70   ; 
- D 1 - I - 0x02E75D 0B:A74D: 0A        .byte $0A   ; 
- - - - - - 0x02E75E 0B:A74E: 00        .byte $00   ; 
- - - - - - 0x02E75F 0B:A74F: 00        .byte $00   ; 
; 05 
- D 1 - I - 0x02E760 0B:A750: 11        .byte con_BD4F_11   ; 
- D 1 - I - 0x02E761 0B:A751: 04        .byte $04   ; 
- D 1 - I - 0x02E762 0B:A752: 00        .byte $00   ; 
- - - - - - 0x02E763 0B:A753: 00        .byte $00   ; 
; 06 
- D 1 - I - 0x02E764 0B:A754: 12        .byte con_BD4F_12   ; 
- - - - - - 0x02E765 0B:A755: 00        .byte $00   ; 
- - - - - - 0x02E766 0B:A756: 00        .byte $00   ; 
- - - - - - 0x02E767 0B:A757: 00        .byte $00   ; 



_off034_A758_6E:
; 00 
- - - - - - 0x02E768 0B:A758: 2D        .byte con_BD4F_2D   ; 
- - - - - - 0x02E769 0B:A759: 00        .byte $00   ; 
- - - - - - 0x02E76A 0B:A75A: 00        .byte $00   ; 
- - - - - - 0x02E76B 0B:A75B: 00        .byte $00   ; 
; 01 
- - - - - - 0x02E76C 0B:A75C: 1E        .byte con_BD4F_1E   ; 
- - - - - - 0x02E76D 0B:A75D: 01 40     .dbyt $0140 ; spd_X
- - - - - - 0x02E76F 0B:A75F: 00        .byte $00   ; 
; 02 
- - - - - - 0x02E770 0B:A760: 13        .byte con_BD4F_13   ; 
- - - - - - 0x02E771 0B:A761: 14        .byte con_obj_type_14   ; 
- - - - - - 0x02E772 0B:A762: 06        .byte $06   ; 
- - - - - - 0x02E773 0B:A763: 00        .byte $00   ; 
; 03 
- - - - - - 0x02E774 0B:A764: 11        .byte con_BD4F_11   ; 
- - - - - - 0x02E775 0B:A765: 04        .byte $04   ; 
- - - - - - 0x02E776 0B:A766: 00        .byte $00   ; 
- - - - - - 0x02E777 0B:A767: 00        .byte $00   ; 
; 04 
- - - - - - 0x02E778 0B:A768: 12        .byte con_BD4F_12   ; 
- - - - - - 0x02E779 0B:A769: 00        .byte $00   ; 
- - - - - - 0x02E77A 0B:A76A: 00        .byte $00   ; 
- - - - - - 0x02E77B 0B:A76B: 00        .byte $00   ; 



_off034_A76C_63:
; 00 
- D 1 - I - 0x02E77C 0B:A76C: 2D        .byte con_BD4F_2D   ; 
- - - - - - 0x02E77D 0B:A76D: 00        .byte $00   ; 
- - - - - - 0x02E77E 0B:A76E: 00        .byte $00   ; 
- - - - - - 0x02E77F 0B:A76F: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02E780 0B:A770: 54        .byte con_BD4F_54   ; 
- - - - - - 0x02E781 0B:A771: 00        .byte $00   ; 
- - - - - - 0x02E782 0B:A772: 00        .byte $00   ; 
- - - - - - 0x02E783 0B:A773: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02E784 0B:A774: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02E785 0B:A775: 12        .byte con_obj_type_12   ; 
- D 1 - I - 0x02E786 0B:A776: 02        .byte $02   ; 
- - - - - - 0x02E787 0B:A777: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02E788 0B:A778: 7E        .byte con_BD4F_7E   ; 
- - - - - - 0x02E789 0B:A779: 00        .byte $00   ; 
- - - - - - 0x02E78A 0B:A77A: 00        .byte $00   ; 
- - - - - - 0x02E78B 0B:A77B: 00        .byte $00   ; 
; 04 
- D 1 - I - 0x02E78C 0B:A77C: 7D        .byte con_BD4F_7D   ; 
- - - - - - 0x02E78D 0B:A77D: 40        .byte $40   ; 
- - - - - - 0x02E78E 0B:A77E: 00        .byte $00   ; 
- - - - - - 0x02E78F 0B:A77F: 00        .byte $00   ; 
; 05 
- D 1 - I - 0x02E790 0B:A780: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02E791 0B:A781: 12        .byte con_obj_type_12   ; 
- D 1 - I - 0x02E792 0B:A782: 04        .byte $04   ; 
- - - - - - 0x02E793 0B:A783: 00        .byte $00   ; 
; 06 
- D 1 - I - 0x02E794 0B:A784: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02E795 0B:A785: 03        .byte $03   ; 
- - - - - - 0x02E796 0B:A786: 00        .byte $00   ; 
- - - - - - 0x02E797 0B:A787: 00        .byte $00   ; 
; 07 
- D 1 - I - 0x02E798 0B:A788: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02E799 0B:A789: 00        .byte $00   ; 
- - - - - - 0x02E79A 0B:A78A: 00        .byte $00   ; 
- - - - - - 0x02E79B 0B:A78B: 00        .byte $00   ; 
; 08 
- D 1 - I - 0x02E79C 0B:A78C: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02E79D 0B:A78D: 12        .byte con_obj_type_12   ; 
- D 1 - I - 0x02E79E 0B:A78E: 06        .byte $06   ; 
- - - - - - 0x02E79F 0B:A78F: 00        .byte $00   ; 
; 09 
- D 1 - I - 0x02E7A0 0B:A790: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02E7A1 0B:A791: 10        .byte $10   ; 
- - - - - - 0x02E7A2 0B:A792: 00        .byte $00   ; 
- - - - - - 0x02E7A3 0B:A793: 00        .byte $00   ; 
; 0A 
- D 1 - I - 0x02E7A4 0B:A794: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02E7A5 0B:A795: 00        .byte $00   ; 
- - - - - - 0x02E7A6 0B:A796: 00        .byte $00   ; 
- - - - - - 0x02E7A7 0B:A797: 00        .byte $00   ; 
; 0B 
- D 1 - I - 0x02E7A8 0B:A798: 53        .byte con_BD4F_53   ; 
- - - - - - 0x02E7A9 0B:A799: 00        .byte $00   ; 
- - - - - - 0x02E7AA 0B:A79A: 00        .byte $00   ; 
- - - - - - 0x02E7AB 0B:A79B: 00        .byte $00   ; 
; 0C 
- D 1 - I - 0x02E7AC 0B:A79C: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02E7AD 0B:A79D: 12        .byte con_obj_type_12   ; 
- D 1 - I - 0x02E7AE 0B:A79E: 08        .byte $08   ; 
- - - - - - 0x02E7AF 0B:A79F: 00        .byte $00   ; 
; 0D 
- D 1 - I - 0x02E7B0 0B:A7A0: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02E7B1 0B:A7A1: 10        .byte $10   ; 
- - - - - - 0x02E7B2 0B:A7A2: 00        .byte $00   ; 
- - - - - - 0x02E7B3 0B:A7A3: 00        .byte $00   ; 
; 0E 
- D 1 - I - 0x02E7B4 0B:A7A4: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02E7B5 0B:A7A5: 00        .byte $00   ; 
- - - - - - 0x02E7B6 0B:A7A6: 00        .byte $00   ; 
- - - - - - 0x02E7B7 0B:A7A7: 00        .byte $00   ; 
; 0F 
- D 1 - I - 0x02E7B8 0B:A7A8: 83        .byte con_BD4F_83   ; 
- - - - - - 0x02E7B9 0B:A7A9: 00        .byte $00   ; 
- - - - - - 0x02E7BA 0B:A7AA: 00        .byte $00   ; 
- - - - - - 0x02E7BB 0B:A7AB: 00        .byte $00   ; 
; 10 
- D 1 - I - 0x02E7BC 0B:A7AC: 2A        .byte con_BD4F_2A   ; 
- - - - - - 0x02E7BD 0B:A7AD: 00        .byte $00   ; 
- - - - - - 0x02E7BE 0B:A7AE: 00        .byte $00   ; 
- - - - - - 0x02E7BF 0B:A7AF: 00        .byte $00   ; 
; 11 
- D 1 - I - 0x02E7C0 0B:A7B0: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02E7C1 0B:A7B1: 06        .byte $06   ; 
- - - - - - 0x02E7C2 0B:A7B2: 00        .byte $00   ; 
- - - - - - 0x02E7C3 0B:A7B3: 00        .byte $00   ; 
; 12 
- D 1 - I - 0x02E7C4 0B:A7B4: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02E7C5 0B:A7B5: 00        .byte $00   ; 
- - - - - - 0x02E7C6 0B:A7B6: 00        .byte $00   ; 
- - - - - - 0x02E7C7 0B:A7B7: 00        .byte $00   ; 
; 13 
- D 1 - I - 0x02E7C8 0B:A7B8: 01        .byte con_BD4F_01   ; 
- - - - - - 0x02E7C9 0B:A7B9: 00        .byte $00   ; 
- - - - - - 0x02E7CA 0B:A7BA: 00        .byte $00   ; 
- - - - - - 0x02E7CB 0B:A7BB: 00        .byte $00   ; 
; 14 
- D 1 - I - 0x02E7CC 0B:A7BC: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02E7CD 0B:A7BD: 04        .byte $04   ; 
- - - - - - 0x02E7CE 0B:A7BE: 00        .byte $00   ; 
- - - - - - 0x02E7CF 0B:A7BF: 00        .byte $00   ; 
; 15 
- D 1 - I - 0x02E7D0 0B:A7C0: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02E7D1 0B:A7C1: 00        .byte $00   ; 
- - - - - - 0x02E7D2 0B:A7C2: 00        .byte $00   ; 
- - - - - - 0x02E7D3 0B:A7C3: 00        .byte $00   ; 
; 16 
- D 1 - I - 0x02E7D4 0B:A7C4: 2A        .byte con_BD4F_2A   ; 
- - - - - - 0x02E7D5 0B:A7C5: 00        .byte $00   ; 
- - - - - - 0x02E7D6 0B:A7C6: 00        .byte $00   ; 
- - - - - - 0x02E7D7 0B:A7C7: 00        .byte $00   ; 
; 17 
- D 1 - I - 0x02E7D8 0B:A7C8: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02E7D9 0B:A7C9: 12        .byte con_obj_type_12   ; 
- D 1 - I - 0x02E7DA 0B:A7CA: 0A        .byte $0A   ; 
- - - - - - 0x02E7DB 0B:A7CB: 00        .byte $00   ; 
; 18 
- D 1 - I - 0x02E7DC 0B:A7CC: 7F        .byte con_BD4F_7F   ; 
- - - - - - 0x02E7DD 0B:A7CD: 00        .byte $00   ; 
- - - - - - 0x02E7DE 0B:A7CE: 00        .byte $00   ; 
- - - - - - 0x02E7DF 0B:A7CF: 00        .byte $00   ; 
; 19 
- D 1 - I - 0x02E7E0 0B:A7D0: 80        .byte con_BD4F_80   ; 
- - - - - - 0x02E7E1 0B:A7D1: 00        .byte $00   ; 
- - - - - - 0x02E7E2 0B:A7D2: 00        .byte $00   ; 
- - - - - - 0x02E7E3 0B:A7D3: 00        .byte $00   ; 
; 1A 
- D 1 - I - 0x02E7E4 0B:A7D4: 81        .byte con_BD4F_81   ; 
- - - - - - 0x02E7E5 0B:A7D5: 00        .byte $00   ; 
- - - - - - 0x02E7E6 0B:A7D6: 00        .byte $00   ; 
- - - - - - 0x02E7E7 0B:A7D7: 00        .byte $00   ; 
; 1B 
- D 1 - I - 0x02E7E8 0B:A7D8: 01        .byte con_BD4F_01   ; 
- - - - - - 0x02E7E9 0B:A7D9: 00        .byte $00   ; 
- - - - - - 0x02E7EA 0B:A7DA: 00        .byte $00   ; 
- - - - - - 0x02E7EB 0B:A7DB: 00        .byte $00   ; 
; 1C 
- D 1 - I - 0x02E7EC 0B:A7DC: 05        .byte con_BD4F_05   ; 
- - - - - - 0x02E7ED 0B:A7DD: 00        .byte $00   ; 
- - - - - - 0x02E7EE 0B:A7DE: 00        .byte $00   ; 
- - - - - - 0x02E7EF 0B:A7DF: 00        .byte $00   ; 
; 1D 
- D 1 - I - 0x02E7F0 0B:A7E0: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02E7F1 0B:A7E1: 20        .byte $20   ; 
- - - - - - 0x02E7F2 0B:A7E2: 00        .byte $00   ; 
- - - - - - 0x02E7F3 0B:A7E3: 00        .byte $00   ; 
; 1E 
- D 1 - I - 0x02E7F4 0B:A7E4: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02E7F5 0B:A7E5: 00        .byte $00   ; 
- - - - - - 0x02E7F6 0B:A7E6: 00        .byte $00   ; 
- - - - - - 0x02E7F7 0B:A7E7: 00        .byte $00   ; 
; 1F 
- D 1 - I - 0x02E7F8 0B:A7E8: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02E7F9 0B:A7E9: 12        .byte con_obj_type_12   ; 
- D 1 - I - 0x02E7FA 0B:A7EA: 0A        .byte $0A   ; 
- - - - - - 0x02E7FB 0B:A7EB: 00        .byte $00   ; 
; 20 
- D 1 - I - 0x02E7FC 0B:A7EC: 2A        .byte con_BD4F_2A   ; 
- - - - - - 0x02E7FD 0B:A7ED: 00        .byte $00   ; 
- - - - - - 0x02E7FE 0B:A7EE: 00        .byte $00   ; 
- - - - - - 0x02E7FF 0B:A7EF: 00        .byte $00   ; 
; 21 
- D 1 - I - 0x02E800 0B:A7F0: 7F        .byte con_BD4F_7F   ; 
- - - - - - 0x02E801 0B:A7F1: 00        .byte $00   ; 
- - - - - - 0x02E802 0B:A7F2: 00        .byte $00   ; 
- - - - - - 0x02E803 0B:A7F3: 00        .byte $00   ; 
; 22 
- D 1 - I - 0x02E804 0B:A7F4: 80        .byte con_BD4F_80   ; 
- - - - - - 0x02E805 0B:A7F5: 00        .byte $00   ; 
- - - - - - 0x02E806 0B:A7F6: 00        .byte $00   ; 
- - - - - - 0x02E807 0B:A7F7: 00        .byte $00   ; 
; 23 
- D 1 - I - 0x02E808 0B:A7F8: 82        .byte con_BD4F_82   ; 
- - - - - - 0x02E809 0B:A7F9: 00        .byte $00   ; 
- - - - - - 0x02E80A 0B:A7FA: 00        .byte $00   ; 
- - - - - - 0x02E80B 0B:A7FB: 00        .byte $00   ; 



_off034_A7FC_65:
; 00 
- D 1 - I - 0x02E80C 0B:A7FC: 2D        .byte con_BD4F_2D   ; 
- - - - - - 0x02E80D 0B:A7FD: 00        .byte $00   ; 
- - - - - - 0x02E80E 0B:A7FE: 00        .byte $00   ; 
- - - - - - 0x02E80F 0B:A7FF: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02E810 0B:A800: 1E        .byte con_BD4F_1E   ; 
- D 1 - I - 0x02E811 0B:A801: 02 10     .dbyt $0210 ; spd_X
- - - - - - 0x02E813 0B:A803: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02E814 0B:A804: 13        .byte con_BD4F_13   ; 
- D 1 - I - 0x02E815 0B:A805: 12        .byte con_obj_type_12   ; 
- D 1 - I - 0x02E816 0B:A806: 08        .byte $08   ; 
- - - - - - 0x02E817 0B:A807: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02E818 0B:A808: 0C        .byte con_BD4F_compare_X_distance   ; 
- D 1 - I - 0x02E819 0B:A809: 40        .byte $40   ; X
- - - - - - 0x02E81A 0B:A80A: 00        .byte $00   ; placeholder
- - - - - - 0x02E81B 0B:A80B: 00        .byte $00   ; placeholder
; 04 
- D 1 - I - 0x02E81C 0B:A80C: 92        .byte con_BD4F_92_Harpy_drops_enemy   ; 
- - - - - - 0x02E81D 0B:A80D: 00        .byte $00   ; placeholder
- - - - - - 0x02E81E 0B:A80E: 00        .byte $00   ; placeholder
- - - - - - 0x02E81F 0B:A80F: 00        .byte $00   ; placeholder
; 05 
- D 1 - I - 0x02E820 0B:A810: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02E821 0B:A811: 00        .byte $00   ; 
- - - - - - 0x02E822 0B:A812: 00        .byte $00   ; 
- - - - - - 0x02E823 0B:A813: 00        .byte $00   ; 
; 06 
- D 1 - I - 0x02E824 0B:A814: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02E825 0B:A815: 12        .byte con_obj_type_12   ; 
- D 1 - I - 0x02E826 0B:A816: 76        .byte $76   ; 
- - - - - - 0x02E827 0B:A817: 00        .byte $00   ; 
; 07 
- D 1 - I - 0x02E828 0B:A818: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02E829 0B:A819: 10        .byte $10   ; 
- - - - - - 0x02E82A 0B:A81A: 00        .byte $00   ; 
- - - - - - 0x02E82B 0B:A81B: 00        .byte $00   ; 
; 08 
- D 1 - I - 0x02E82C 0B:A81C: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02E82D 0B:A81D: 00        .byte $00   ; 
- - - - - - 0x02E82E 0B:A81E: 00        .byte $00   ; 
- - - - - - 0x02E82F 0B:A81F: 00        .byte $00   ; 
; 09 
- D 1 - I - 0x02E830 0B:A820: 2A        .byte con_BD4F_2A   ; 
- - - - - - 0x02E831 0B:A821: 00        .byte $00   ; 
- - - - - - 0x02E832 0B:A822: 00        .byte $00   ; 
- - - - - - 0x02E833 0B:A823: 00        .byte $00   ; 
; 0A 
- D 1 - I - 0x02E834 0B:A824: 13        .byte con_BD4F_13   ; 
- D 1 - I - 0x02E835 0B:A825: 12        .byte con_obj_type_12   ; 
- D 1 - I - 0x02E836 0B:A826: 09        .byte $09   ; 
- - - - - - 0x02E837 0B:A827: 00        .byte $00   ; 
; 0B 
- D 1 - I - 0x02E838 0B:A828: 00        .byte con_BD4F_00   ; 
- - - - - - 0x02E839 0B:A829: 00        .byte $00   ; 
- - - - - - 0x02E83A 0B:A82A: 00        .byte $00   ; 
- - - - - - 0x02E83B 0B:A82B: 00        .byte $00   ; 



_off034_A82C_11:
; 00 
- D 1 - I - 0x02E83C 0B:A82C: 28        .byte con_BD4F_28   ; 
- - - - - - 0x02E83D 0B:A82D: 00        .byte $00   ; 
- - - - - - 0x02E83E 0B:A82E: 00        .byte $00   ; 
- - - - - - 0x02E83F 0B:A82F: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02E840 0B:A830: 29        .byte con_BD4F_29   ; 
- - - - - - 0x02E841 0B:A831: 00        .byte $00   ; 
- - - - - - 0x02E842 0B:A832: 00        .byte $00   ; 
- - - - - - 0x02E843 0B:A833: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02E844 0B:A834: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02E845 0B:A835: 0A        .byte $0A   ; 
- - - - - - 0x02E846 0B:A836: 00        .byte $00   ; 
- - - - - - 0x02E847 0B:A837: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02E848 0B:A838: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02E849 0B:A839: 00        .byte $00   ; 
- - - - - - 0x02E84A 0B:A83A: 00        .byte $00   ; 
- - - - - - 0x02E84B 0B:A83B: 00        .byte $00   ; 
; 04 
- D 1 - I - 0x02E84C 0B:A83C: 8F        .byte con_BD4F_8F   ; 
- - - - - - 0x02E84D 0B:A83D: 00        .byte $00   ; 
- - - - - - 0x02E84E 0B:A83E: 00        .byte $00   ; 
- - - - - - 0x02E84F 0B:A83F: 00        .byte $00   ; 
; 05 
- D 1 - I - 0x02E850 0B:A840: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02E851 0B:A841: 08        .byte $08   ; 
- - - - - - 0x02E852 0B:A842: 00        .byte $00   ; 
- - - - - - 0x02E853 0B:A843: 00        .byte $00   ; 
; 06 
- D 1 - I - 0x02E854 0B:A844: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02E855 0B:A845: 00        .byte $00   ; 
- - - - - - 0x02E856 0B:A846: 00        .byte $00   ; 
- - - - - - 0x02E857 0B:A847: 00        .byte $00   ; 
; 07 
- D 1 - I - 0x02E858 0B:A848: 2C        .byte con_BD4F_2C   ; 
- - - - - - 0x02E859 0B:A849: 00        .byte $00   ; 
- - - - - - 0x02E85A 0B:A84A: 00        .byte $00   ; 
- - - - - - 0x02E85B 0B:A84B: 00        .byte $00   ; 



_off034_A84C_2B:
; 00 
- D 1 - I - 0x02E85C 0B:A84C: 13        .byte con_BD4F_13   ; 
- D 1 - I - 0x02E85D 0B:A84D: 12        .byte con_obj_type_12   ; 
- D 1 - I - 0x02E85E 0B:A84E: 05        .byte $05   ; 
- - - - - - 0x02E85F 0B:A84F: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02E860 0B:A850: 1E        .byte con_BD4F_1E   ; 
- D 1 - I - 0x02E861 0B:A851: 00 60     .dbyt $0060 ; spd_X
- - - - - - 0x02E863 0B:A853: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02E864 0B:A854: 6B        .byte con_BD4F_6B   ; 
- - - - - - 0x02E865 0B:A855: 00        .byte $00   ; 
- - - - - - 0x02E866 0B:A856: 00        .byte $00   ; 
- - - - - - 0x02E867 0B:A857: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02E868 0B:A858: 6D        .byte con_BD4F_6D   ; 
- - - - - - 0x02E869 0B:A859: 00        .byte $00   ; 
- - - - - - 0x02E86A 0B:A85A: 00        .byte $00   ; 
- - - - - - 0x02E86B 0B:A85B: 00        .byte $00   ; 
; 04 
- D 1 - I - 0x02E86C 0B:A85C: 04        .byte con_BD4F_04   ; 
- D 1 - I - 0x02E86D 0B:A85D: 01        .byte $01   ; 
- - - - - - 0x02E86E 0B:A85E: 00        .byte $00   ; 
- - - - - - 0x02E86F 0B:A85F: 00        .byte $00   ; 



_off034_A860_71:
; 00 
- D 1 - I - 0x02E870 0B:A860: 13        .byte con_BD4F_13   ; 
- D 1 - I - 0x02E871 0B:A861: 14        .byte con_obj_type_14   ; 
- D 1 - I - 0x02E872 0B:A862: 09        .byte $09   ; 
- - - - - - 0x02E873 0B:A863: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02E874 0B:A864: 1E        .byte con_BD4F_1E   ; 
- D 1 - I - 0x02E875 0B:A865: 00 90     .dbyt $0090 ; spd_X
- - - - - - 0x02E877 0B:A867: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02E878 0B:A868: 6B        .byte con_BD4F_6B   ; 
- - - - - - 0x02E879 0B:A869: 00        .byte $00   ; 
- - - - - - 0x02E87A 0B:A86A: 00        .byte $00   ; 
- - - - - - 0x02E87B 0B:A86B: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02E87C 0B:A86C: 6D        .byte con_BD4F_6D   ; 
- - - - - - 0x02E87D 0B:A86D: 00        .byte $00   ; 
- - - - - - 0x02E87E 0B:A86E: 00        .byte $00   ; 
- - - - - - 0x02E87F 0B:A86F: 00        .byte $00   ; 
; 04 
- D 1 - I - 0x02E880 0B:A870: 04        .byte con_BD4F_04   ; 
- D 1 - I - 0x02E881 0B:A871: 00        .byte $00   ; 
- - - - - - 0x02E882 0B:A872: 00        .byte $00   ; 
- - - - - - 0x02E883 0B:A873: 00        .byte $00   ; 
; 05 
- D 1 - I - 0x02E884 0B:A874: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02E885 0B:A875: 14        .byte con_obj_type_14   ; 
- D 1 - I - 0x02E886 0B:A876: 64        .byte $64   ; 
- - - - - - 0x02E887 0B:A877: 00        .byte $00   ; 
; 06 
- D 1 - I - 0x02E888 0B:A878: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02E889 0B:A879: 08        .byte $08   ; 
- - - - - - 0x02E88A 0B:A87A: 00        .byte $00   ; 
- - - - - - 0x02E88B 0B:A87B: 00        .byte $00   ; 
; 07 
- D 1 - I - 0x02E88C 0B:A87C: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02E88D 0B:A87D: 00        .byte $00   ; 
- - - - - - 0x02E88E 0B:A87E: 00        .byte $00   ; 
- - - - - - 0x02E88F 0B:A87F: 00        .byte $00   ; 
; 08 
- - - - - - 0x02E890 0B:A880: 0B        .byte con_BD4F_0B   ; 
- - - - - - 0x02E891 0B:A881: 08        .byte con_obj_type_08   ; 
- - - - - - 0x02E892 0B:A882: FE        .byte $FE   ; 
- - - - - - 0x02E893 0B:A883: 00        .byte $00   ; 
; 09 
- - - - - - 0x02E894 0B:A884: 1F        .byte con_BD4F_1F   ; 
- - - - - - 0x02E895 0B:A885: 16        .byte $16   ; 
- - - - - - 0x02E896 0B:A886: 00        .byte $00   ; 
- - - - - - 0x02E897 0B:A887: 00        .byte $00   ; 
; 0A 
- - - - - - 0x02E898 0B:A888: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02E899 0B:A889: 00        .byte $00   ; 
- - - - - - 0x02E89A 0B:A88A: 00        .byte $00   ; 
- - - - - - 0x02E89B 0B:A88B: 00        .byte $00   ; 
; 0B 
- - - - - - 0x02E89C 0B:A88C: 0B        .byte con_BD4F_0B   ; 
- - - - - - 0x02E89D 0B:A88D: 14        .byte con_obj_type_14   ; 
- - - - - - 0x02E89E 0B:A88E: 64        .byte $64   ; 
- - - - - - 0x02E89F 0B:A88F: 00        .byte $00   ; 
; 0C 
- - - - - - 0x02E8A0 0B:A890: 1F        .byte con_BD4F_1F   ; 
- - - - - - 0x02E8A1 0B:A891: 08        .byte $08   ; 
- - - - - - 0x02E8A2 0B:A892: 00        .byte $00   ; 
- - - - - - 0x02E8A3 0B:A893: 00        .byte $00   ; 
; 0D 
- - - - - - 0x02E8A4 0B:A894: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02E8A5 0B:A895: 00        .byte $00   ; 
- - - - - - 0x02E8A6 0B:A896: 00        .byte $00   ; 
- - - - - - 0x02E8A7 0B:A897: 00        .byte $00   ; 
; 0E 
- - - - - - 0x02E8A8 0B:A898: 04        .byte con_BD4F_04   ; 
- - - - - - 0x02E8A9 0B:A899: 00        .byte $00   ; 
- - - - - - 0x02E8AA 0B:A89A: 00        .byte $00   ; 
- - - - - - 0x02E8AB 0B:A89B: 00        .byte $00   ; 



_off034_A89C_68:
; 00 
- D 1 - I - 0x02E8AC 0B:A89C: 13        .byte con_BD4F_13   ; 
- D 1 - I - 0x02E8AD 0B:A89D: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02E8AE 0B:A89E: 25        .byte $25   ; 
- - - - - - 0x02E8AF 0B:A89F: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02E8B0 0B:A8A0: 54        .byte con_BD4F_54   ; 
- - - - - - 0x02E8B1 0B:A8A1: 00        .byte $00   ; 
- - - - - - 0x02E8B2 0B:A8A2: 00        .byte $00   ; 
- - - - - - 0x02E8B3 0B:A8A3: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02E8B4 0B:A8A4: 8E        .byte con_BD4F_8E   ; 
- - - - - - 0x02E8B5 0B:A8A5: 00        .byte $00   ; 
- - - - - - 0x02E8B6 0B:A8A6: 00        .byte $00   ; 
- - - - - - 0x02E8B7 0B:A8A7: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02E8B8 0B:A8A8: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02E8B9 0B:A8A9: 00        .byte $00   ; 
- - - - - - 0x02E8BA 0B:A8AA: 00        .byte $00   ; 
- - - - - - 0x02E8BB 0B:A8AB: 00        .byte $00   ; 
; 04 
- D 1 - I - 0x02E8BC 0B:A8AC: 53        .byte con_BD4F_53   ; 
- - - - - - 0x02E8BD 0B:A8AD: 00        .byte $00   ; 
- - - - - - 0x02E8BE 0B:A8AE: 00        .byte $00   ; 
- - - - - - 0x02E8BF 0B:A8AF: 00        .byte $00   ; 
; 05 
- D 1 - I - 0x02E8C0 0B:A8B0: 2A        .byte con_BD4F_2A   ; 
- - - - - - 0x02E8C1 0B:A8B1: 00        .byte $00   ; 
- - - - - - 0x02E8C2 0B:A8B2: 00        .byte $00   ; 
- - - - - - 0x02E8C3 0B:A8B3: 00        .byte $00   ; 
; 06 
- D 1 - I - 0x02E8C4 0B:A8B4: 13        .byte con_BD4F_13   ; 
- D 1 - I - 0x02E8C5 0B:A8B5: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02E8C6 0B:A8B6: 23        .byte $23   ; 
- - - - - - 0x02E8C7 0B:A8B7: 00        .byte $00   ; 
; 07 
- D 1 - I - 0x02E8C8 0B:A8B8: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02E8C9 0B:A8B9: 16        .byte $16   ; 
- - - - - - 0x02E8CA 0B:A8BA: 00        .byte $00   ; 
- - - - - - 0x02E8CB 0B:A8BB: 00        .byte $00   ; 
; 08 
- D 1 - I - 0x02E8CC 0B:A8BC: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02E8CD 0B:A8BD: 00        .byte $00   ; 
- - - - - - 0x02E8CE 0B:A8BE: 00        .byte $00   ; 
- - - - - - 0x02E8CF 0B:A8BF: 00        .byte $00   ; 
; 09 
- D 1 - I - 0x02E8D0 0B:A8C0: 13        .byte con_BD4F_13   ; 
- D 1 - I - 0x02E8D1 0B:A8C1: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02E8D2 0B:A8C2: 02        .byte $02   ; 
- - - - - - 0x02E8D3 0B:A8C3: 00        .byte $00   ; 
; 0A 
- D 1 - I - 0x02E8D4 0B:A8C4: 57        .byte con_BD4F_57   ; 
- - - - - - 0x02E8D5 0B:A8C5: 00        .byte $00   ; 
- - - - - - 0x02E8D6 0B:A8C6: 00        .byte $00   ; 
- - - - - - 0x02E8D7 0B:A8C7: 00        .byte $00   ; 
; 0B 
- D 1 - I - 0x02E8D8 0B:A8C8: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02E8D9 0B:A8C9: 20        .byte $20   ; 
- - - - - - 0x02E8DA 0B:A8CA: 00        .byte $00   ; 
- - - - - - 0x02E8DB 0B:A8CB: 00        .byte $00   ; 
; 0C 
- D 1 - I - 0x02E8DC 0B:A8CC: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02E8DD 0B:A8CD: 00        .byte $00   ; 
- - - - - - 0x02E8DE 0B:A8CE: 00        .byte $00   ; 
- - - - - - 0x02E8DF 0B:A8CF: 00        .byte $00   ; 
; 0D 
- D 1 - I - 0x02E8E0 0B:A8D0: 04        .byte con_BD4F_04   ; 
- D 1 - I - 0x02E8E1 0B:A8D1: 0A        .byte $0A   ; 
- - - - - - 0x02E8E2 0B:A8D2: 00        .byte $00   ; 
- - - - - - 0x02E8E3 0B:A8D3: 00        .byte $00   ; 



_off034_A8D4_08:
; 00 
- D 1 - I - 0x02E8E4 0B:A8D4: 13        .byte con_BD4F_13   ; 
- D 1 - I - 0x02E8E5 0B:A8D5: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02E8E6 0B:A8D6: 23        .byte $23   ; 
- - - - - - 0x02E8E7 0B:A8D7: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02E8E8 0B:A8D8: 2A        .byte con_BD4F_2A   ; 
- - - - - - 0x02E8E9 0B:A8D9: 00        .byte $00   ; 
- - - - - - 0x02E8EA 0B:A8DA: 00        .byte $00   ; 
- - - - - - 0x02E8EB 0B:A8DB: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02E8EC 0B:A8DC: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02E8ED 0B:A8DD: 16        .byte $16   ; 
- - - - - - 0x02E8EE 0B:A8DE: 00        .byte $00   ; 
- - - - - - 0x02E8EF 0B:A8DF: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02E8F0 0B:A8E0: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02E8F1 0B:A8E1: 00        .byte $00   ; 
- - - - - - 0x02E8F2 0B:A8E2: 00        .byte $00   ; 
- - - - - - 0x02E8F3 0B:A8E3: 00        .byte $00   ; 
; 04 
- D 1 - I - 0x02E8F4 0B:A8E4: 13        .byte con_BD4F_13   ; 
- D 1 - I - 0x02E8F5 0B:A8E5: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02E8F6 0B:A8E6: 02        .byte $02   ; 
- - - - - - 0x02E8F7 0B:A8E7: 00        .byte $00   ; 
; 05 
- D 1 - I - 0x02E8F8 0B:A8E8: 57        .byte con_BD4F_57   ; 
- - - - - - 0x02E8F9 0B:A8E9: 00        .byte $00   ; 
- - - - - - 0x02E8FA 0B:A8EA: 00        .byte $00   ; 
- - - - - - 0x02E8FB 0B:A8EB: 00        .byte $00   ; 
; 06 
- D 1 - I - 0x02E8FC 0B:A8EC: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02E8FD 0B:A8ED: 20        .byte $20   ; 
- - - - - - 0x02E8FE 0B:A8EE: 00        .byte $00   ; 
- - - - - - 0x02E8FF 0B:A8EF: 00        .byte $00   ; 
; 07 
- D 1 - I - 0x02E900 0B:A8F0: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02E901 0B:A8F1: 00        .byte $00   ; 
- - - - - - 0x02E902 0B:A8F2: 00        .byte $00   ; 
- - - - - - 0x02E903 0B:A8F3: 00        .byte $00   ; 
; 08 
- D 1 - I - 0x02E904 0B:A8F4: 04        .byte con_BD4F_04   ; 
- D 1 - I - 0x02E905 0B:A8F5: 05        .byte $05   ; 
- - - - - - 0x02E906 0B:A8F6: 00        .byte $00   ; 
- - - - - - 0x02E907 0B:A8F7: 00        .byte $00   ; 



_off034_A8F8_13:
; 00 
- D 1 - I - 0x02E908 0B:A8F8: 13        .byte con_BD4F_13   ; 
- D 1 - I - 0x02E909 0B:A8F9: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02E90A 0B:A8FA: 26        .byte $26   ; 
- - - - - - 0x02E90B 0B:A8FB: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02E90C 0B:A8FC: 1E        .byte con_BD4F_1E   ; 
- D 1 - I - 0x02E90D 0B:A8FD: 00 60     .dbyt $0060 ; spd_X
- - - - - - 0x02E90F 0B:A8FF: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02E910 0B:A900: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02E911 0B:A901: C0        .byte $C0   ; 
- - - - - - 0x02E912 0B:A902: 00        .byte $00   ; 
- - - - - - 0x02E913 0B:A903: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02E914 0B:A904: 2F        .byte con_BD4F_2F   ; 
- - - - - - 0x02E915 0B:A905: 00        .byte $00   ; 
- - - - - - 0x02E916 0B:A906: 00        .byte $00   ; 
- - - - - - 0x02E917 0B:A907: 00        .byte $00   ; 
; 04 
- D 1 - I - 0x02E918 0B:A908: 6D        .byte con_BD4F_6D   ; 
- - - - - - 0x02E919 0B:A909: 00        .byte $00   ; 
- - - - - - 0x02E91A 0B:A90A: 00        .byte $00   ; 
- - - - - - 0x02E91B 0B:A90B: 00        .byte $00   ; 
; 05 
- D 1 - I - 0x02E91C 0B:A90C: 04        .byte con_BD4F_04   ; 
- D 1 - I - 0x02E91D 0B:A90D: 01        .byte $01   ; 
- - - - - - 0x02E91E 0B:A90E: 00        .byte $00   ; 
- - - - - - 0x02E91F 0B:A90F: 00        .byte $00   ; 



_off034_A910_09:
; 00 
- D 1 - I - 0x02E920 0B:A910: 07        .byte con_BD4F_07   ; 
- D 1 - I - 0x02E921 0B:A911: 00 90     .dbyt $0090 ; spd_X
- - - - - - 0x02E923 0B:A913: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02E924 0B:A914: 35        .byte con_BD4F_35   ; 
- - - - - - 0x02E925 0B:A915: 00        .byte $00   ; 
- - - - - - 0x02E926 0B:A916: 00        .byte $00   ; 
- - - - - - 0x02E927 0B:A917: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02E928 0B:A918: 34        .byte con_BD4F_34   ; 
- - - - - - 0x02E929 0B:A919: 00        .byte $00   ; 
- - - - - - 0x02E92A 0B:A91A: 00        .byte $00   ; 
- - - - - - 0x02E92B 0B:A91B: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02E92C 0B:A91C: 33        .byte con_BD4F_33   ; 
- D 1 - I - 0x02E92D 0B:A91D: 0B        .byte $0B   ; 
- - - - - - 0x02E92E 0B:A91E: 00        .byte $00   ; 
- - - - - - 0x02E92F 0B:A91F: 00        .byte $00   ; 
; 04 
- D 1 - I - 0x02E930 0B:A920: 97        .byte con_BD4F_97   ; 
- - - - - - 0x02E931 0B:A921: 00        .byte $00   ; 
- - - - - - 0x02E932 0B:A922: 00        .byte $00   ; 
- - - - - - 0x02E933 0B:A923: 00        .byte $00   ; 
; 05 
- D 1 - I - 0x02E934 0B:A924: 13        .byte con_BD4F_13   ; 
- D 1 - I - 0x02E935 0B:A925: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02E936 0B:A926: 17        .byte $17   ; 
- - - - - - 0x02E937 0B:A927: 00        .byte $00   ; 
; 06 
- D 1 - I - 0x02E938 0B:A928: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02E939 0B:A929: 0F        .byte $0F   ; 
- - - - - - 0x02E93A 0B:A92A: 00        .byte $00   ; 
- - - - - - 0x02E93B 0B:A92B: 00        .byte $00   ; 
; 07 
- D 1 - I - 0x02E93C 0B:A92C: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02E93D 0B:A92D: 00        .byte $00   ; 
- - - - - - 0x02E93E 0B:A92E: 00        .byte $00   ; 
- - - - - - 0x02E93F 0B:A92F: 00        .byte $00   ; 
; 08 
- D 1 - I - 0x02E940 0B:A930: 0D        .byte con_BD4F_0D   ; 
- D 1 - I - 0x02E941 0B:A931: 04        .byte $04   ; 
- - - - - - 0x02E942 0B:A932: 00        .byte $00   ; 
- - - - - - 0x02E943 0B:A933: 00        .byte $00   ; 
; 09 
- D 1 - I - 0x02E944 0B:A934: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02E945 0B:A935: 30        .byte $30   ; 
- - - - - - 0x02E946 0B:A936: 00        .byte $00   ; 
- - - - - - 0x02E947 0B:A937: 00        .byte $00   ; 
; 0A 
- D 1 - I - 0x02E948 0B:A938: 04        .byte con_BD4F_04   ; 
- D 1 - I - 0x02E949 0B:A939: 00        .byte $00   ; 
- - - - - - 0x02E94A 0B:A93A: 00        .byte $00   ; 
- - - - - - 0x02E94B 0B:A93B: 00        .byte $00   ; 
; 0B 
- - - - - - 0x02E94C 0B:A93C: 1D        .byte con_BD4F_1D   ; 
- - - - - - 0x02E94D 0B:A93D: 04        .byte $04   ; 
- - - - - - 0x02E94E 0B:A93E: 06        .byte $06   ; 
- - - - - - 0x02E94F 0B:A93F: 00        .byte $00   ; 



_off034_A940_17:
; 00 
- D 1 - I - 0x02E950 0B:A940: 30        .byte con_BD4F_30   ; 
- D 1 - I - 0x02E951 0B:A941: 03        .byte $03   ; 
- - - - - - 0x02E952 0B:A942: 00        .byte $00   ; 
- - - - - - 0x02E953 0B:A943: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02E954 0B:A944: 07        .byte con_BD4F_07   ; 
- D 1 - I - 0x02E955 0B:A945: 00 80     .dbyt $0080 ; spd_X
- - - - - - 0x02E957 0B:A947: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02E958 0B:A948: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02E959 0B:A949: 60        .byte $60   ; 
- - - - - - 0x02E95A 0B:A94A: 00        .byte $00   ; 
- - - - - - 0x02E95B 0B:A94B: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02E95C 0B:A94C: 2F        .byte con_BD4F_2F   ; 
- - - - - - 0x02E95D 0B:A94D: 00        .byte $00   ; 
- - - - - - 0x02E95E 0B:A94E: 00        .byte $00   ; 
- - - - - - 0x02E95F 0B:A94F: 00        .byte $00   ; 
; 04 
- D 1 - I - 0x02E960 0B:A950: 04        .byte con_BD4F_04   ; 
- D 1 - I - 0x02E961 0B:A951: 01        .byte $01   ; 
- - - - - - 0x02E962 0B:A952: 00        .byte $00   ; 
- - - - - - 0x02E963 0B:A953: 00        .byte $00   ; 
; 05 
- D 1 - I - 0x02E964 0B:A954: 54        .byte con_BD4F_54   ; 
- - - - - - 0x02E965 0B:A955: 00        .byte $00   ; 
- - - - - - 0x02E966 0B:A956: 00        .byte $00   ; 
- - - - - - 0x02E967 0B:A957: 00        .byte $00   ; 
; 06 
- D 1 - I - 0x02E968 0B:A958: 01        .byte con_BD4F_01   ; 
- - - - - - 0x02E969 0B:A959: 00        .byte $00   ; 
- - - - - - 0x02E96A 0B:A95A: 00        .byte $00   ; 
- - - - - - 0x02E96B 0B:A95B: 00        .byte $00   ; 
; 07 
- D 1 - I - 0x02E96C 0B:A95C: 13        .byte con_BD4F_13   ; 
- D 1 - I - 0x02E96D 0B:A95D: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02E96E 0B:A95E: 22        .byte $22   ; 
- - - - - - 0x02E96F 0B:A95F: 00        .byte $00   ; 
; 08 
- D 1 - I - 0x02E970 0B:A960: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02E971 0B:A961: 38        .byte $38   ; 
- - - - - - 0x02E972 0B:A962: 00        .byte $00   ; 
- - - - - - 0x02E973 0B:A963: 00        .byte $00   ; 
; 09 
- D 1 - I - 0x02E974 0B:A964: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02E975 0B:A965: 00        .byte $00   ; 
- - - - - - 0x02E976 0B:A966: 00        .byte $00   ; 
- - - - - - 0x02E977 0B:A967: 00        .byte $00   ; 
; 0A 
- D 1 - I - 0x02E978 0B:A968: 2D        .byte con_BD4F_2D   ; 
- - - - - - 0x02E979 0B:A969: 00        .byte $00   ; 
- - - - - - 0x02E97A 0B:A96A: 00        .byte $00   ; 
- - - - - - 0x02E97B 0B:A96B: 00        .byte $00   ; 
; 0B 
- D 1 - I - 0x02E97C 0B:A96C: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02E97D 0B:A96D: 50        .byte $50   ; 
- - - - - - 0x02E97E 0B:A96E: 00        .byte $00   ; 
- - - - - - 0x02E97F 0B:A96F: 00        .byte $00   ; 
; 0C 
- D 1 - I - 0x02E980 0B:A970: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02E981 0B:A971: 00        .byte $00   ; 
- - - - - - 0x02E982 0B:A972: 00        .byte $00   ; 
- - - - - - 0x02E983 0B:A973: 00        .byte $00   ; 
; 0D 
- D 1 - I - 0x02E984 0B:A974: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02E985 0B:A975: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02E986 0B:A976: 9E        .byte $9E   ; 
- - - - - - 0x02E987 0B:A977: 00        .byte $00   ; 
; 0E 
- D 1 - I - 0x02E988 0B:A978: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02E989 0B:A979: 18        .byte $18   ; 
- - - - - - 0x02E98A 0B:A97A: 00        .byte $00   ; 
- - - - - - 0x02E98B 0B:A97B: 00        .byte $00   ; 
; 0F 
- D 1 - I - 0x02E98C 0B:A97C: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02E98D 0B:A97D: 00        .byte $00   ; 
- - - - - - 0x02E98E 0B:A97E: 00        .byte $00   ; 
- - - - - - 0x02E98F 0B:A97F: 00        .byte $00   ; 
; 10 
- D 1 - I - 0x02E990 0B:A980: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02E991 0B:A981: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02E992 0B:A982: 9C        .byte $9C   ; 
- - - - - - 0x02E993 0B:A983: 00        .byte $00   ; 
; 11 
- D 1 - I - 0x02E994 0B:A984: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02E995 0B:A985: 18        .byte $18   ; 
- - - - - - 0x02E996 0B:A986: 00        .byte $00   ; 
- - - - - - 0x02E997 0B:A987: 00        .byte $00   ; 
; 12 
- D 1 - I - 0x02E998 0B:A988: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02E999 0B:A989: 00        .byte $00   ; 
- - - - - - 0x02E99A 0B:A98A: 00        .byte $00   ; 
- - - - - - 0x02E99B 0B:A98B: 00        .byte $00   ; 
; 13 
- D 1 - I - 0x02E99C 0B:A98C: 53        .byte con_BD4F_53   ; 
- - - - - - 0x02E99D 0B:A98D: 00        .byte $00   ; 
- - - - - - 0x02E99E 0B:A98E: 00        .byte $00   ; 
- - - - - - 0x02E99F 0B:A98F: 00        .byte $00   ; 
; 14 
- D 1 - I - 0x02E9A0 0B:A990: 04        .byte con_BD4F_04   ; 
- D 1 - I - 0x02E9A1 0B:A991: 01        .byte $01   ; 
- - - - - - 0x02E9A2 0B:A992: 00        .byte $00   ; 
- - - - - - 0x02E9A3 0B:A993: 00        .byte $00   ; 



_off034_A994_21:
; 00 
- D 1 - I - 0x02E9A4 0B:A994: 30        .byte con_BD4F_30   ; 
- D 1 - I - 0x02E9A5 0B:A995: 03        .byte $03   ; 
- - - - - - 0x02E9A6 0B:A996: 00        .byte $00   ; 
- - - - - - 0x02E9A7 0B:A997: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02E9A8 0B:A998: 07        .byte con_BD4F_07   ; 
- D 1 - I - 0x02E9A9 0B:A999: 00 80     .dbyt $0080 ; spd_X
- - - - - - 0x02E9AB 0B:A99B: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02E9AC 0B:A99C: 35        .byte con_BD4F_35   ; 
- - - - - - 0x02E9AD 0B:A99D: 00        .byte $00   ; 
- - - - - - 0x02E9AE 0B:A99E: 00        .byte $00   ; 
- - - - - - 0x02E9AF 0B:A99F: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02E9B0 0B:A9A0: 3B        .byte con_BD4F_3B   ; 
- - - - - - 0x02E9B1 0B:A9A1: 00        .byte $00   ; 
- - - - - - 0x02E9B2 0B:A9A2: 00        .byte $00   ; 
- - - - - - 0x02E9B3 0B:A9A3: 00        .byte $00   ; 
; 04 
- D 1 - I - 0x02E9B4 0B:A9A4: 6D        .byte con_BD4F_6D   ; 
- - - - - - 0x02E9B5 0B:A9A5: 00        .byte $00   ; 
- - - - - - 0x02E9B6 0B:A9A6: 00        .byte $00   ; 
- - - - - - 0x02E9B7 0B:A9A7: 00        .byte $00   ; 
; 05 
- - - - - - 0x02E9B8 0B:A9A8: 04        .byte con_BD4F_04   ; 
- - - - - - 0x02E9B9 0B:A9A9: 00        .byte $00   ; 
- - - - - - 0x02E9BA 0B:A9AA: 00        .byte $00   ; 
- - - - - - 0x02E9BB 0B:A9AB: 00        .byte $00   ; 
; 06 
- D 1 - I - 0x02E9BC 0B:A9AC: 36        .byte con_BD4F_36   ; 
- D 1 - I - 0x02E9BD 0B:A9AD: 48        .byte $48   ; 
- D 1 - I - 0x02E9BE 0B:A9AE: 00        .byte $00   ; 
- - - - - - 0x02E9BF 0B:A9AF: 00        .byte $00   ; 
; 07 
- D 1 - I - 0x02E9C0 0B:A9B0: 97        .byte con_BD4F_97   ; 
- - - - - - 0x02E9C1 0B:A9B1: 00        .byte $00   ; 
- - - - - - 0x02E9C2 0B:A9B2: 00        .byte $00   ; 
- - - - - - 0x02E9C3 0B:A9B3: 00        .byte $00   ; 
; 08 
- D 1 - I - 0x02E9C4 0B:A9B4: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02E9C5 0B:A9B5: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02E9C6 0B:A9B6: AC        .byte $AC   ; 
- - - - - - 0x02E9C7 0B:A9B7: 00        .byte $00   ; 
; 09 
- D 1 - I - 0x02E9C8 0B:A9B8: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02E9C9 0B:A9B9: 08        .byte $08   ; 
- - - - - - 0x02E9CA 0B:A9BA: 00        .byte $00   ; 
- - - - - - 0x02E9CB 0B:A9BB: 00        .byte $00   ; 
; 0A 
- D 1 - I - 0x02E9CC 0B:A9BC: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02E9CD 0B:A9BD: 00        .byte $00   ; 
- - - - - - 0x02E9CE 0B:A9BE: 00        .byte $00   ; 
- - - - - - 0x02E9CF 0B:A9BF: 00        .byte $00   ; 
; 0B 
- D 1 - I - 0x02E9D0 0B:A9C0: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02E9D1 0B:A9C1: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02E9D2 0B:A9C2: EE        .byte $EE   ; 
- - - - - - 0x02E9D3 0B:A9C3: 00        .byte $00   ; 
; 0C 
- D 1 - I - 0x02E9D4 0B:A9C4: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02E9D5 0B:A9C5: 08        .byte $08   ; 
- - - - - - 0x02E9D6 0B:A9C6: 00        .byte $00   ; 
- - - - - - 0x02E9D7 0B:A9C7: 00        .byte $00   ; 
; 0D 
- D 1 - I - 0x02E9D8 0B:A9C8: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02E9D9 0B:A9C9: 00        .byte $00   ; 
- - - - - - 0x02E9DA 0B:A9CA: 00        .byte $00   ; 
- - - - - - 0x02E9DB 0B:A9CB: 00        .byte $00   ; 
; 0E 
- D 1 - I - 0x02E9DC 0B:A9CC: 04        .byte con_BD4F_04   ; 
- D 1 - I - 0x02E9DD 0B:A9CD: 00        .byte $00   ; 
- - - - - - 0x02E9DE 0B:A9CE: 00        .byte $00   ; 
- - - - - - 0x02E9DF 0B:A9CF: 00        .byte $00   ; 
; 0F 
- D 1 - I - 0x02E9E0 0B:A9D0: 54        .byte con_BD4F_54   ; 
- - - - - - 0x02E9E1 0B:A9D1: 00        .byte $00   ; 
- - - - - - 0x02E9E2 0B:A9D2: 00        .byte $00   ; 
- - - - - - 0x02E9E3 0B:A9D3: 00        .byte $00   ; 
; 10 
- D 1 - I - 0x02E9E4 0B:A9D4: 97        .byte con_BD4F_97   ; 
- - - - - - 0x02E9E5 0B:A9D5: 00        .byte $00   ; 
- - - - - - 0x02E9E6 0B:A9D6: 00        .byte $00   ; 
- - - - - - 0x02E9E7 0B:A9D7: 00        .byte $00   ; 
; 11 
- D 1 - I - 0x02E9E8 0B:A9D8: 13        .byte con_BD4F_13   ; 
- D 1 - I - 0x02E9E9 0B:A9D9: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02E9EA 0B:A9DA: 22        .byte $22   ; 
- - - - - - 0x02E9EB 0B:A9DB: 00        .byte $00   ; 
; 12 
- D 1 - I - 0x02E9EC 0B:A9DC: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02E9ED 0B:A9DD: 38        .byte $38   ; 
- - - - - - 0x02E9EE 0B:A9DE: 00        .byte $00   ; 
- - - - - - 0x02E9EF 0B:A9DF: 00        .byte $00   ; 
; 13 
- D 1 - I - 0x02E9F0 0B:A9E0: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02E9F1 0B:A9E1: 00        .byte $00   ; 
- - - - - - 0x02E9F2 0B:A9E2: 00        .byte $00   ; 
- - - - - - 0x02E9F3 0B:A9E3: 00        .byte $00   ; 
; 14 
- D 1 - I - 0x02E9F4 0B:A9E4: 2D        .byte con_BD4F_2D   ; 
- - - - - - 0x02E9F5 0B:A9E5: 00        .byte $00   ; 
- - - - - - 0x02E9F6 0B:A9E6: 00        .byte $00   ; 
- - - - - - 0x02E9F7 0B:A9E7: 00        .byte $00   ; 
; 15 
- D 1 - I - 0x02E9F8 0B:A9E8: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02E9F9 0B:A9E9: 50        .byte $50   ; 
- - - - - - 0x02E9FA 0B:A9EA: 00        .byte $00   ; 
- - - - - - 0x02E9FB 0B:A9EB: 00        .byte $00   ; 
; 16 
- D 1 - I - 0x02E9FC 0B:A9EC: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02E9FD 0B:A9ED: 00        .byte $00   ; 
- - - - - - 0x02E9FE 0B:A9EE: 00        .byte $00   ; 
- - - - - - 0x02E9FF 0B:A9EF: 00        .byte $00   ; 
; 17 
- D 1 - I - 0x02EA00 0B:A9F0: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02EA01 0B:A9F1: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02EA02 0B:A9F2: 9E        .byte $9E   ; 
- - - - - - 0x02EA03 0B:A9F3: 00        .byte $00   ; 
; 18 
- D 1 - I - 0x02EA04 0B:A9F4: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EA05 0B:A9F5: 18        .byte $18   ; 
- - - - - - 0x02EA06 0B:A9F6: 00        .byte $00   ; 
- - - - - - 0x02EA07 0B:A9F7: 00        .byte $00   ; 
; 19 
- D 1 - I - 0x02EA08 0B:A9F8: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02EA09 0B:A9F9: 00        .byte $00   ; 
- - - - - - 0x02EA0A 0B:A9FA: 00        .byte $00   ; 
- - - - - - 0x02EA0B 0B:A9FB: 00        .byte $00   ; 
; 1A 
- D 1 - I - 0x02EA0C 0B:A9FC: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02EA0D 0B:A9FD: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02EA0E 0B:A9FE: 9C        .byte $9C   ; 
- - - - - - 0x02EA0F 0B:A9FF: 00        .byte $00   ; 
; 1B 
- D 1 - I - 0x02EA10 0B:AA00: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EA11 0B:AA01: 18        .byte $18   ; 
- - - - - - 0x02EA12 0B:AA02: 00        .byte $00   ; 
- - - - - - 0x02EA13 0B:AA03: 00        .byte $00   ; 
; 1C 
- D 1 - I - 0x02EA14 0B:AA04: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02EA15 0B:AA05: 00        .byte $00   ; 
- - - - - - 0x02EA16 0B:AA06: 00        .byte $00   ; 
- - - - - - 0x02EA17 0B:AA07: 00        .byte $00   ; 
; 1D 
- D 1 - I - 0x02EA18 0B:AA08: 53        .byte con_BD4F_53   ; 
- - - - - - 0x02EA19 0B:AA09: 00        .byte $00   ; 
- - - - - - 0x02EA1A 0B:AA0A: 00        .byte $00   ; 
- - - - - - 0x02EA1B 0B:AA0B: 00        .byte $00   ; 
; 1E 
- D 1 - I - 0x02EA1C 0B:AA0C: 04        .byte con_BD4F_04   ; 
- D 1 - I - 0x02EA1D 0B:AA0D: 01        .byte $01   ; 
- - - - - - 0x02EA1E 0B:AA0E: 00        .byte $00   ; 
- - - - - - 0x02EA1F 0B:AA0F: 00        .byte $00   ; 



_off034_AA10_0A:
; 00 
- D 1 - I - 0x02EA20 0B:AA10: 07        .byte con_BD4F_07   ; 
- D 1 - I - 0x02EA21 0B:AA11: 00 90     .dbyt $0090 ; spd_X
- - - - - - 0x02EA23 0B:AA13: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02EA24 0B:AA14: 35        .byte con_BD4F_35   ; 
- - - - - - 0x02EA25 0B:AA15: 00        .byte $00   ; 
- - - - - - 0x02EA26 0B:AA16: 00        .byte $00   ; 
- - - - - - 0x02EA27 0B:AA17: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02EA28 0B:AA18: 34        .byte con_BD4F_34   ; 
- - - - - - 0x02EA29 0B:AA19: 00        .byte $00   ; 
- - - - - - 0x02EA2A 0B:AA1A: 00        .byte $00   ; 
- - - - - - 0x02EA2B 0B:AA1B: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02EA2C 0B:AA1C: 33        .byte con_BD4F_33   ; 
- D 1 - I - 0x02EA2D 0B:AA1D: 12        .byte $12   ; 
- - - - - - 0x02EA2E 0B:AA1E: 00        .byte $00   ; 
- - - - - - 0x02EA2F 0B:AA1F: 00        .byte $00   ; 
; 04 
- D 1 - I - 0x02EA30 0B:AA20: 36        .byte con_BD4F_36   ; 
- D 1 - I - 0x02EA31 0B:AA21: 40        .byte $40   ; 
- D 1 - I - 0x02EA32 0B:AA22: 00        .byte $00   ; 
- - - - - - 0x02EA33 0B:AA23: 00        .byte $00   ; 
; 05 
- D 1 - I - 0x02EA34 0B:AA24: 97        .byte con_BD4F_97   ; 
- - - - - - 0x02EA35 0B:AA25: 00        .byte $00   ; 
- - - - - - 0x02EA36 0B:AA26: 00        .byte $00   ; 
- - - - - - 0x02EA37 0B:AA27: 00        .byte $00   ; 
; 06 
- D 1 - I - 0x02EA38 0B:AA28: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02EA39 0B:AA29: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02EA3A 0B:AA2A: AC        .byte $AC   ; 
- - - - - - 0x02EA3B 0B:AA2B: 00        .byte $00   ; 
; 07 
- D 1 - I - 0x02EA3C 0B:AA2C: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EA3D 0B:AA2D: 08        .byte $08   ; 
- - - - - - 0x02EA3E 0B:AA2E: 00        .byte $00   ; 
- - - - - - 0x02EA3F 0B:AA2F: 00        .byte $00   ; 
; 08 
- D 1 - I - 0x02EA40 0B:AA30: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02EA41 0B:AA31: 00        .byte $00   ; 
- - - - - - 0x02EA42 0B:AA32: 00        .byte $00   ; 
- - - - - - 0x02EA43 0B:AA33: 00        .byte $00   ; 
; 09 
- D 1 - I - 0x02EA44 0B:AA34: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02EA45 0B:AA35: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02EA46 0B:AA36: EE        .byte $EE   ; 
- - - - - - 0x02EA47 0B:AA37: 00        .byte $00   ; 
; 0A 
- D 1 - I - 0x02EA48 0B:AA38: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EA49 0B:AA39: 08        .byte $08   ; 
- - - - - - 0x02EA4A 0B:AA3A: 00        .byte $00   ; 
- - - - - - 0x02EA4B 0B:AA3B: 00        .byte $00   ; 
; 0B 
- D 1 - I - 0x02EA4C 0B:AA3C: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02EA4D 0B:AA3D: 00        .byte $00   ; 
- - - - - - 0x02EA4E 0B:AA3E: 00        .byte $00   ; 
- - - - - - 0x02EA4F 0B:AA3F: 00        .byte $00   ; 
; 0C 
- D 1 - I - 0x02EA50 0B:AA40: 04        .byte con_BD4F_04   ; 
- D 1 - I - 0x02EA51 0B:AA41: 00        .byte $00   ; 
- - - - - - 0x02EA52 0B:AA42: 00        .byte $00   ; 
- - - - - - 0x02EA53 0B:AA43: 00        .byte $00   ; 
; 0D 
- - - - - - 0x02EA54 0B:AA44: 1D        .byte con_BD4F_1D   ; 
- - - - - - 0x02EA55 0B:AA45: 04        .byte $04   ; 
- - - - - - 0x02EA56 0B:AA46: 06        .byte $06   ; 
- - - - - - 0x02EA57 0B:AA47: 00        .byte $00   ; 



_off034_AA48_0B:
; 00 
- D 1 - I - 0x02EA58 0B:AA48: 07        .byte con_BD4F_07   ; 
- D 1 - I - 0x02EA59 0B:AA49: 01 14     .dbyt $0114 ; spd_X
- - - - - - 0x02EA5B 0B:AA4B: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02EA5C 0B:AA4C: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EA5D 0B:AA4D: 20        .byte $20   ; 
- - - - - - 0x02EA5E 0B:AA4E: 00        .byte $00   ; 
- - - - - - 0x02EA5F 0B:AA4F: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02EA60 0B:AA50: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02EA61 0B:AA51: 00        .byte $00   ; 
- - - - - - 0x02EA62 0B:AA52: 00        .byte $00   ; 
- - - - - - 0x02EA63 0B:AA53: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02EA64 0B:AA54: 2D        .byte con_BD4F_2D   ; 
- - - - - - 0x02EA65 0B:AA55: 00        .byte $00   ; 
- - - - - - 0x02EA66 0B:AA56: 00        .byte $00   ; 
- - - - - - 0x02EA67 0B:AA57: 00        .byte $00   ; 
; 04 
- D 1 - I - 0x02EA68 0B:AA58: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02EA69 0B:AA59: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02EA6A 0B:AA5A: 5C        .byte $5C   ; 
- - - - - - 0x02EA6B 0B:AA5B: 00        .byte $00   ; 
; 05 
- D 1 - I - 0x02EA6C 0B:AA5C: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EA6D 0B:AA5D: 10        .byte $10   ; 
- - - - - - 0x02EA6E 0B:AA5E: 00        .byte $00   ; 
- - - - - - 0x02EA6F 0B:AA5F: 00        .byte $00   ; 
; 06 
- D 1 - I - 0x02EA70 0B:AA60: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02EA71 0B:AA61: 00        .byte $00   ; 
- - - - - - 0x02EA72 0B:AA62: 00        .byte $00   ; 
- - - - - - 0x02EA73 0B:AA63: 00        .byte $00   ; 
; 07 
- D 1 - I - 0x02EA74 0B:AA64: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02EA75 0B:AA65: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02EA76 0B:AA66: 5E        .byte $5E   ; 
- - - - - - 0x02EA77 0B:AA67: 00        .byte $00   ; 
; 08 
- D 1 - I - 0x02EA78 0B:AA68: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EA79 0B:AA69: 10        .byte $10   ; 
- - - - - - 0x02EA7A 0B:AA6A: 00        .byte $00   ; 
- - - - - - 0x02EA7B 0B:AA6B: 00        .byte $00   ; 
; 09 
- D 1 - I - 0x02EA7C 0B:AA6C: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02EA7D 0B:AA6D: 00        .byte $00   ; 
- - - - - - 0x02EA7E 0B:AA6E: 00        .byte $00   ; 
- - - - - - 0x02EA7F 0B:AA6F: 00        .byte $00   ; 
; 0A 
- D 1 - I - 0x02EA80 0B:AA70: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02EA81 0B:AA71: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02EA82 0B:AA72: 5C        .byte $5C   ; 
- - - - - - 0x02EA83 0B:AA73: 00        .byte $00   ; 
; 0B 
- D 1 - I - 0x02EA84 0B:AA74: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EA85 0B:AA75: 04        .byte $04   ; 
- - - - - - 0x02EA86 0B:AA76: 00        .byte $00   ; 
- - - - - - 0x02EA87 0B:AA77: 00        .byte $00   ; 
; 0C 
- D 1 - I - 0x02EA88 0B:AA78: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02EA89 0B:AA79: 00        .byte $00   ; 
- - - - - - 0x02EA8A 0B:AA7A: 00        .byte $00   ; 
- - - - - - 0x02EA8B 0B:AA7B: 00        .byte $00   ; 
; 0D 
- D 1 - I - 0x02EA8C 0B:AA7C: 0D        .byte con_BD4F_0D   ; 
- D 1 - I - 0x02EA8D 0B:AA7D: 02        .byte $02   ; 
- - - - - - 0x02EA8E 0B:AA7E: 00        .byte $00   ; 
- - - - - - 0x02EA8F 0B:AA7F: 00        .byte $00   ; 
; 0E 
- D 1 - I - 0x02EA90 0B:AA80: 04        .byte con_BD4F_04   ; 
- D 1 - I - 0x02EA91 0B:AA81: 00        .byte $00   ; 
- - - - - - 0x02EA92 0B:AA82: 00        .byte $00   ; 
- - - - - - 0x02EA93 0B:AA83: 00        .byte $00   ; 



_off034_AA84_0C:
; 00 
- D 1 - I - 0x02EA94 0B:AA84: 07        .byte con_BD4F_07   ; 
- D 1 - I - 0x02EA95 0B:AA85: 00 60     .dbyt $0060 ; spd_X
- - - - - - 0x02EA97 0B:AA87: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02EA98 0B:AA88: 58        .byte con_BD4F_58   ; 
- D 1 - I - 0x02EA99 0B:AA89: 04        .byte $04   ; 
- D 1 - I - 0x02EA9A 0B:AA8A: FF        .byte $FF   ; 
- D 1 - I - 0x02EA9B 0B:AA8B: FF        .byte $FF   ; 
; 02 
- D 1 - I - 0x02EA9C 0B:AA8C: 59        .byte con_BD4F_59   ; 
- - - - - - 0x02EA9D 0B:AA8D: 00        .byte $00   ; 
- - - - - - 0x02EA9E 0B:AA8E: 00        .byte $00   ; 
- - - - - - 0x02EA9F 0B:AA8F: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02EAA0 0B:AA90: 57        .byte con_BD4F_57   ; 
- - - - - - 0x02EAA1 0B:AA91: 00        .byte $00   ; 
- - - - - - 0x02EAA2 0B:AA92: 00        .byte $00   ; 
- - - - - - 0x02EAA3 0B:AA93: 00        .byte $00   ; 
; 04 
- D 1 - I - 0x02EAA4 0B:AA94: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EAA5 0B:AA95: 20        .byte $20   ; 
- - - - - - 0x02EAA6 0B:AA96: 00        .byte $00   ; 
- - - - - - 0x02EAA7 0B:AA97: 00        .byte $00   ; 
; 05 
- D 1 - I - 0x02EAA8 0B:AA98: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02EAA9 0B:AA99: 00        .byte $00   ; 
- - - - - - 0x02EAAA 0B:AA9A: 00        .byte $00   ; 
- - - - - - 0x02EAAB 0B:AA9B: 00        .byte $00   ; 
; 06 
- D 1 - I - 0x02EAAC 0B:AA9C: 04        .byte con_BD4F_04   ; 
- D 1 - I - 0x02EAAD 0B:AA9D: 00        .byte $00   ; 
- - - - - - 0x02EAAE 0B:AA9E: 00        .byte $00   ; 
- - - - - - 0x02EAAF 0B:AA9F: 00        .byte $00   ; 



_off034_AAA0_22:
; 00 
- D 1 - I - 0x02EAB0 0B:AAA0: 13        .byte con_BD4F_13   ; 
- D 1 - I - 0x02EAB1 0B:AAA1: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02EAB2 0B:AAA2: 20        .byte $20   ; 
- - - - - - 0x02EAB3 0B:AAA3: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02EAB4 0B:AAA4: 4D        .byte con_BD4F_compare_XY_distance   ; 
- D 1 - I - 0x02EAB5 0B:AAA5: 20        .byte $20   ; X
- D 1 - I - 0x02EAB6 0B:AAA6: 20        .byte $20   ; Y
- - - - - - 0x02EAB7 0B:AAA7: 00        .byte $00   ; 



_off034_AAA8_23:
; 00 
- D 1 - I - 0x02EAB8 0B:AAA8: 13        .byte con_BD4F_13   ; 
- D 1 - I - 0x02EAB9 0B:AAA9: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02EABA 0B:AAAA: 21        .byte $21   ; 
- - - - - - 0x02EABB 0B:AAAB: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02EABC 0B:AAAC: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EABD 0B:AAAD: 2E        .byte $2E   ; 
- - - - - - 0x02EABE 0B:AAAE: 00        .byte $00   ; 
- - - - - - 0x02EABF 0B:AAAF: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02EAC0 0B:AAB0: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02EAC1 0B:AAB1: 00        .byte $00   ; 
- - - - - - 0x02EAC2 0B:AAB2: 00        .byte $00   ; 
- - - - - - 0x02EAC3 0B:AAB3: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02EAC4 0B:AAB4: 02        .byte con_BD4F_02   ; 
- - - - - - 0x02EAC5 0B:AAB5: 00        .byte $00   ; 
- - - - - - 0x02EAC6 0B:AAB6: 00        .byte $00   ; 
- - - - - - 0x02EAC7 0B:AAB7: 00        .byte $00   ; 
; 04 
- D 1 - I - 0x02EAC8 0B:AAB8: 27        .byte con_BD4F_27   ; 
- - - - - - 0x02EAC9 0B:AAB9: 00        .byte $00   ; 
- - - - - - 0x02EACA 0B:AABA: 00        .byte $00   ; 
- - - - - - 0x02EACB 0B:AABB: 00        .byte $00   ; 



_off034_AABC_20:
; 00 
- D 1 - I - 0x02EACC 0B:AABC: 13        .byte con_BD4F_13   ; 
- D 1 - I - 0x02EACD 0B:AABD: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02EACE 0B:AABE: 1E        .byte $1E   ; 
- - - - - - 0x02EACF 0B:AABF: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02EAD0 0B:AAC0: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EAD1 0B:AAC1: 2E        .byte $2E   ; 
- - - - - - 0x02EAD2 0B:AAC2: 00        .byte $00   ; 
- - - - - - 0x02EAD3 0B:AAC3: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02EAD4 0B:AAC4: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02EAD5 0B:AAC5: 00        .byte $00   ; 
- - - - - - 0x02EAD6 0B:AAC6: 00        .byte $00   ; 
- - - - - - 0x02EAD7 0B:AAC7: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02EAD8 0B:AAC8: 02        .byte con_BD4F_02   ; 
- - - - - - 0x02EAD9 0B:AAC9: 00        .byte $00   ; 
- - - - - - 0x02EADA 0B:AACA: 00        .byte $00   ; 
- - - - - - 0x02EADB 0B:AACB: 00        .byte $00   ; 
; 04 
- D 1 - I - 0x02EADC 0B:AACC: 27        .byte con_BD4F_27   ; 
- - - - - - 0x02EADD 0B:AACD: 00        .byte $00   ; 
- - - - - - 0x02EADE 0B:AACE: 00        .byte $00   ; 
- - - - - - 0x02EADF 0B:AACF: 00        .byte $00   ; 



_off034_AAD0_0D:
; 00 
- D 1 - I - 0x02EAE0 0B:AAD0: 07        .byte con_BD4F_07   ; 
- D 1 - I - 0x02EAE1 0B:AAD1: 01 10     .dbyt $0110 ; spd_X
- - - - - - 0x02EAE3 0B:AAD3: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02EAE4 0B:AAD4: 73        .byte con_BD4F_73   ; 
- - - - - - 0x02EAE5 0B:AAD5: 00        .byte $00   ; 
- - - - - - 0x02EAE6 0B:AAD6: 00        .byte $00   ; 
- - - - - - 0x02EAE7 0B:AAD7: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02EAE8 0B:AAD8: 74        .byte con_BD4F_74   ; 
- - - - - - 0x02EAE9 0B:AAD9: 00        .byte $00   ; 
- - - - - - 0x02EAEA 0B:AADA: 00        .byte $00   ; 
- - - - - - 0x02EAEB 0B:AADB: 00        .byte $00   ; 



_off034_AADC_03:
_off034_AADC_04:
; 00 
- D 1 - I - 0x02EAEC 0B:AADC: 8D        .byte con_BD4F_8D   ; 
- - - - - - 0x02EAED 0B:AADD: 00        .byte $00   ; 
- - - - - - 0x02EAEE 0B:AADE: 00        .byte $00   ; 
- - - - - - 0x02EAEF 0B:AADF: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02EAF0 0B:AAE0: 4D        .byte con_BD4F_compare_XY_distance   ; 
- D 1 - I - 0x02EAF1 0B:AAE1: 78        .byte $78   ; X
- D 1 - I - 0x02EAF2 0B:AAE2: 80        .byte $80   ; Y
- - - - - - 0x02EAF3 0B:AAE3: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02EAF4 0B:AAE4: 8C        .byte con_BD4F_8C   ; 
- - - - - - 0x02EAF5 0B:AAE5: 00        .byte $00   ; 
- - - - - - 0x02EAF6 0B:AAE6: 00        .byte $00   ; 
- - - - - - 0x02EAF7 0B:AAE7: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02EAF8 0B:AAE8: 47        .byte con_BD4F_47   ; 
- - - - - - 0x02EAF9 0B:AAE9: 00        .byte $00   ; 
- - - - - - 0x02EAFA 0B:AAEA: 00        .byte $00   ; 
- - - - - - 0x02EAFB 0B:AAEB: 00        .byte $00   ; 
; 04 
- D 1 - I - 0x02EAFC 0B:AAEC: 48        .byte con_BD4F_48   ; 
- - - - - - 0x02EAFD 0B:AAED: 00        .byte $00   ; 
- - - - - - 0x02EAFE 0B:AAEE: 00        .byte $00   ; 
- - - - - - 0x02EAFF 0B:AAEF: 00        .byte $00   ; 
; 05 
- D 1 - I - 0x02EB00 0B:AAF0: 49        .byte con_BD4F_49   ; 
- - - - - - 0x02EB01 0B:AAF1: 00        .byte $00   ; 
- - - - - - 0x02EB02 0B:AAF2: 00        .byte $00   ; 
- - - - - - 0x02EB03 0B:AAF3: 00        .byte $00   ; 



_off034_AAF4_0F:
; 00 
- D 1 - I - 0x02EB04 0B:AAF4: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02EB05 0B:AAF5: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02EB06 0B:AAF6: 62        .byte $62   ; 
- - - - - - 0x02EB07 0B:AAF7: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02EB08 0B:AAF8: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EB09 0B:AAF9: 20        .byte $20   ; 
- - - - - - 0x02EB0A 0B:AAFA: 00        .byte $00   ; 
- - - - - - 0x02EB0B 0B:AAFB: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02EB0C 0B:AAFC: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02EB0D 0B:AAFD: 00        .byte $00   ; 
- - - - - - 0x02EB0E 0B:AAFE: 00        .byte $00   ; 
- - - - - - 0x02EB0F 0B:AAFF: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02EB10 0B:AB00: 0F        .byte con_BD4F_0F   ; 
- - - - - - 0x02EB11 0B:AB01: 00        .byte $00   ; 
- - - - - - 0x02EB12 0B:AB02: 00        .byte $00   ; 
- - - - - - 0x02EB13 0B:AB03: 00        .byte $00   ; 
; 04 
- D 1 - I - 0x02EB14 0B:AB04: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02EB15 0B:AB05: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02EB16 0B:AB06: 64        .byte $64   ; 
- - - - - - 0x02EB17 0B:AB07: 00        .byte $00   ; 
; 05 
- D 1 - I - 0x02EB18 0B:AB08: 44        .byte con_BD4F_44   ; 
- - - - - - 0x02EB19 0B:AB09: 17        .byte $17   ; 
- - - - - - 0x02EB1A 0B:AB0A: 00        .byte $00   ; 
- - - - - - 0x02EB1B 0B:AB0B: 00        .byte $00   ; 
; 06 
- D 1 - I - 0x02EB1C 0B:AB0C: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02EB1D 0B:AB0D: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02EB1E 0B:AB0E: 62        .byte $62   ; 
- - - - - - 0x02EB1F 0B:AB0F: 00        .byte $00   ; 
; 07 
- D 1 - I - 0x02EB20 0B:AB10: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EB21 0B:AB11: 10        .byte $10   ; 
- - - - - - 0x02EB22 0B:AB12: 00        .byte $00   ; 
- - - - - - 0x02EB23 0B:AB13: 00        .byte $00   ; 
; 08 
- D 1 - I - 0x02EB24 0B:AB14: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02EB25 0B:AB15: 00        .byte $00   ; 
- - - - - - 0x02EB26 0B:AB16: 00        .byte $00   ; 
- - - - - - 0x02EB27 0B:AB17: 00        .byte $00   ; 
; 09 
- D 1 - I - 0x02EB28 0B:AB18: 3C        .byte con_BD4F_3C   ; 
- D 1 - I - 0x02EB29 0B:AB19: 01        .byte $01   ; 
- D 1 - I - 0x02EB2A 0B:AB1A: 0A        .byte $0A   ; 
- - - - - - 0x02EB2B 0B:AB1B: 00        .byte $00   ; 
; 0A 
- D 1 - I - 0x02EB2C 0B:AB1C: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02EB2D 0B:AB1D: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02EB2E 0B:AB1E: 66        .byte $66   ; 
- - - - - - 0x02EB2F 0B:AB1F: 00        .byte $00   ; 
; 0B 
- D 1 - I - 0x02EB30 0B:AB20: 3E        .byte con_BD4F_3E   ; 
- - - - - - 0x02EB31 0B:AB21: 00        .byte $00   ; 
- - - - - - 0x02EB32 0B:AB22: 00        .byte $00   ; 
- - - - - - 0x02EB33 0B:AB23: 00        .byte $00   ; 
; 0C 
- D 1 - I - 0x02EB34 0B:AB24: 3D        .byte con_BD4F_3D   ; 
- D 1 - I - 0x02EB35 0B:AB25: 17        .byte $17   ; 
- - - - - - 0x02EB36 0B:AB26: 00        .byte $00   ; 
- - - - - - 0x02EB37 0B:AB27: 00        .byte $00   ; 
; 0D 
- D 1 - I - 0x02EB38 0B:AB28: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02EB39 0B:AB29: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02EB3A 0B:AB2A: 38        .byte $38   ; 
- - - - - - 0x02EB3B 0B:AB2B: 00        .byte $00   ; 
; 0E 
- D 1 - I - 0x02EB3C 0B:AB2C: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EB3D 0B:AB2D: 10        .byte $10   ; 
- - - - - - 0x02EB3E 0B:AB2E: 00        .byte $00   ; 
- - - - - - 0x02EB3F 0B:AB2F: 00        .byte $00   ; 
; 0F 
- D 1 - I - 0x02EB40 0B:AB30: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02EB41 0B:AB31: 00        .byte $00   ; 
- - - - - - 0x02EB42 0B:AB32: 00        .byte $00   ; 
- - - - - - 0x02EB43 0B:AB33: 00        .byte $00   ; 
; 10 
- D 1 - I - 0x02EB44 0B:AB34: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02EB45 0B:AB35: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02EB46 0B:AB36: 3A        .byte $3A   ; 
- - - - - - 0x02EB47 0B:AB37: 00        .byte $00   ; 
; 11 
- D 1 - I - 0x02EB48 0B:AB38: 40        .byte con_BD4F_40   ; 
- - - - - - 0x02EB49 0B:AB39: 00        .byte $00   ; 
- - - - - - 0x02EB4A 0B:AB3A: 00        .byte $00   ; 
- - - - - - 0x02EB4B 0B:AB3B: 00        .byte $00   ; 
; 12 
- D 1 - I - 0x02EB4C 0B:AB3C: 41        .byte con_BD4F_41   ; 
- - - - - - 0x02EB4D 0B:AB3D: 00        .byte $00   ; 
- - - - - - 0x02EB4E 0B:AB3E: 00        .byte $00   ; 
- - - - - - 0x02EB4F 0B:AB3F: 00        .byte $00   ; 
; 13 
- D 1 - I - 0x02EB50 0B:AB40: 3C        .byte con_BD4F_3C   ; 
- - - - - - 0x02EB51 0B:AB41: 0D        .byte $0D   ; 
- D 1 - I - 0x02EB52 0B:AB42: 14        .byte $14   ; 
- - - - - - 0x02EB53 0B:AB43: 00        .byte $00   ; 
; 14 
- D 1 - I - 0x02EB54 0B:AB44: 43        .byte con_BD4F_43   ; 
- D 1 - I - 0x02EB55 0B:AB45: 01 80     .dbyt $0180 ; spd_Y
- - - - - - 0x02EB57 0B:AB47: 00        .byte $00   ; 
; 15 
- D 1 - I - 0x02EB58 0B:AB48: 3F        .byte con_BD4F_3F   ; 
- - - - - - 0x02EB59 0B:AB49: 00        .byte $00   ; 
- - - - - - 0x02EB5A 0B:AB4A: 00        .byte $00   ; 
- - - - - - 0x02EB5B 0B:AB4B: 00        .byte $00   ; 
; 16 
- D 1 - I - 0x02EB5C 0B:AB4C: 04        .byte con_BD4F_04   ; 
- D 1 - I - 0x02EB5D 0B:AB4D: 00        .byte $00   ; 
- - - - - - 0x02EB5E 0B:AB4E: 00        .byte $00   ; 
- - - - - - 0x02EB5F 0B:AB4F: 00        .byte $00   ; 
; 17 
- D 1 - I - 0x02EB60 0B:AB50: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EB61 0B:AB51: 40        .byte $40   ; 
- - - - - - 0x02EB62 0B:AB52: 00        .byte $00   ; 
- - - - - - 0x02EB63 0B:AB53: 00        .byte $00   ; 
; 18 
- D 1 - I - 0x02EB64 0B:AB54: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02EB65 0B:AB55: 00        .byte $00   ; 
- - - - - - 0x02EB66 0B:AB56: 00        .byte $00   ; 
- - - - - - 0x02EB67 0B:AB57: 00        .byte $00   ; 
; 19 
- D 1 - I - 0x02EB68 0B:AB58: 42        .byte con_BD4F_42   ; 
- D 1 - I - 0x02EB69 0B:AB59: 01 80     .dbyt $0180 ; spd_Y
- - - - - - 0x02EB6B 0B:AB5B: 00        .byte $00   ; 
; 1A 
- D 1 - I - 0x02EB6C 0B:AB5C: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02EB6D 0B:AB5D: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02EB6E 0B:AB5E: 3C        .byte $3C   ; 
- - - - - - 0x02EB6F 0B:AB5F: 00        .byte $00   ; 
; 1B 
- D 1 - I - 0x02EB70 0B:AB60: 3F        .byte con_BD4F_3F   ; 
- - - - - - 0x02EB71 0B:AB61: 00        .byte $00   ; 
- - - - - - 0x02EB72 0B:AB62: 00        .byte $00   ; 
- - - - - - 0x02EB73 0B:AB63: 00        .byte $00   ; 
; 1C 
- D 1 - I - 0x02EB74 0B:AB64: 04        .byte con_BD4F_04   ; 
- D 1 - I - 0x02EB75 0B:AB65: 00        .byte $00   ; 
- - - - - - 0x02EB76 0B:AB66: 00        .byte $00   ; 
- - - - - - 0x02EB77 0B:AB67: 00        .byte $00   ; 



_off034_AB68_10:
; 00 
- D 1 - I - 0x02EB78 0B:AB68: 07        .byte con_BD4F_07   ; 
- D 1 - I - 0x02EB79 0B:AB69: 00 80     .dbyt $0080 ; spd_X
- - - - - - 0x02EB7B 0B:AB6B: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02EB7C 0B:AB6C: 35        .byte con_BD4F_35   ; 
- - - - - - 0x02EB7D 0B:AB6D: 00        .byte $00   ; 
- - - - - - 0x02EB7E 0B:AB6E: 00        .byte $00   ; 
- - - - - - 0x02EB7F 0B:AB6F: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02EB80 0B:AB70: 3B        .byte con_BD4F_3B   ; 
- - - - - - 0x02EB81 0B:AB71: 00        .byte $00   ; 
- - - - - - 0x02EB82 0B:AB72: 00        .byte $00   ; 
- - - - - - 0x02EB83 0B:AB73: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02EB84 0B:AB74: 6D        .byte con_BD4F_6D   ; 
- - - - - - 0x02EB85 0B:AB75: 00        .byte $00   ; 
- - - - - - 0x02EB86 0B:AB76: 00        .byte $00   ; 
- - - - - - 0x02EB87 0B:AB77: 00        .byte $00   ; 
; 04 
- D 1 - I - 0x02EB88 0B:AB78: 04        .byte con_BD4F_04   ; 
- D 1 - I - 0x02EB89 0B:AB79: 00        .byte $00   ; 
- - - - - - 0x02EB8A 0B:AB7A: 00        .byte $00   ; 
- - - - - - 0x02EB8B 0B:AB7B: 00        .byte $00   ; 
; 05 
- D 1 - I - 0x02EB8C 0B:AB7C: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02EB8D 0B:AB7D: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02EB8E 0B:AB7E: B4        .byte $B4   ; 
- - - - - - 0x02EB8F 0B:AB7F: 00        .byte $00   ; 
; 06 
- D 1 - I - 0x02EB90 0B:AB80: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EB91 0B:AB81: 08        .byte $08   ; 
- - - - - - 0x02EB92 0B:AB82: 00        .byte $00   ; 
- - - - - - 0x02EB93 0B:AB83: 00        .byte $00   ; 
; 07 
- D 1 - I - 0x02EB94 0B:AB84: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02EB95 0B:AB85: 00        .byte $00   ; 
- - - - - - 0x02EB96 0B:AB86: 00        .byte $00   ; 
- - - - - - 0x02EB97 0B:AB87: 00        .byte $00   ; 
; 08 
- D 1 - I - 0x02EB98 0B:AB88: 3A        .byte con_BD4F_3A   ; 
- D 1 - I - 0x02EB99 0B:AB89: 08        .byte $08   ; 
- D 1 - I - 0x02EB9A 0B:AB8A: B6        .byte $B6   ; 
- D 1 - I - 0x02EB9B 0B:AB8B: 00        .byte $00   ; 
; 09 
- D 1 - I - 0x02EB9C 0B:AB8C: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EB9D 0B:AB8D: 08        .byte $08   ; 
- - - - - - 0x02EB9E 0B:AB8E: 00        .byte $00   ; 
- - - - - - 0x02EB9F 0B:AB8F: 00        .byte $00   ; 
; 0A 
- D 1 - I - 0x02EBA0 0B:AB90: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02EBA1 0B:AB91: 00        .byte $00   ; 
- - - - - - 0x02EBA2 0B:AB92: 00        .byte $00   ; 
- - - - - - 0x02EBA3 0B:AB93: 00        .byte $00   ; 
; 0B 
- D 1 - I - 0x02EBA4 0B:AB94: 3A        .byte con_BD4F_3A   ; 
- D 1 - I - 0x02EBA5 0B:AB95: 08        .byte $08   ; 
- D 1 - I - 0x02EBA6 0B:AB96: F0        .byte $F0   ; 
- D 1 - I - 0x02EBA7 0B:AB97: 00        .byte $00   ; 
; 0C 
- D 1 - I - 0x02EBA8 0B:AB98: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EBA9 0B:AB99: 10        .byte $10   ; 
- - - - - - 0x02EBAA 0B:AB9A: 00        .byte $00   ; 
- - - - - - 0x02EBAB 0B:AB9B: 00        .byte $00   ; 
; 0D 
- D 1 - I - 0x02EBAC 0B:AB9C: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02EBAD 0B:AB9D: 00        .byte $00   ; 
- - - - - - 0x02EBAE 0B:AB9E: 00        .byte $00   ; 
- - - - - - 0x02EBAF 0B:AB9F: 00        .byte $00   ; 
; 0E 
- D 1 - I - 0x02EBB0 0B:ABA0: 3A        .byte con_BD4F_3A   ; 
- D 1 - I - 0x02EBB1 0B:ABA1: 08        .byte $08   ; 
- D 1 - I - 0x02EBB2 0B:ABA2: B4        .byte $B4   ; 
- D 1 - I - 0x02EBB3 0B:ABA3: 02        .byte $02   ; 
; 0F 
- D 1 - I - 0x02EBB4 0B:ABA4: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EBB5 0B:ABA5: 08        .byte $08   ; 
- - - - - - 0x02EBB6 0B:ABA6: 00        .byte $00   ; 
- - - - - - 0x02EBB7 0B:ABA7: 00        .byte $00   ; 
; 10 
- D 1 - I - 0x02EBB8 0B:ABA8: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02EBB9 0B:ABA9: 00        .byte $00   ; 
- - - - - - 0x02EBBA 0B:ABAA: 00        .byte $00   ; 
- - - - - - 0x02EBBB 0B:ABAB: 00        .byte $00   ; 
; 11 
- D 1 - I - 0x02EBBC 0B:ABAC: 04        .byte con_BD4F_04   ; 
- D 1 - I - 0x02EBBD 0B:ABAD: 00        .byte $00   ; 
- - - - - - 0x02EBBE 0B:ABAE: 00        .byte $00   ; 
- - - - - - 0x02EBBF 0B:ABAF: 00        .byte $00   ; 



_off034_ABB0_1C:
; 00 
- D 1 - I - 0x02EBC0 0B:ABB0: 07        .byte con_BD4F_07   ; 
- D 1 - I - 0x02EBC1 0B:ABB1: 00 60     .dbyt $0060 ; spd_X
- - - - - - 0x02EBC3 0B:ABB3: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02EBC4 0B:ABB4: 35        .byte con_BD4F_35   ; 
- - - - - - 0x02EBC5 0B:ABB5: 00        .byte $00   ; 
- - - - - - 0x02EBC6 0B:ABB6: 00        .byte $00   ; 
- - - - - - 0x02EBC7 0B:ABB7: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02EBC8 0B:ABB8: 3B        .byte con_BD4F_3B   ; 
- - - - - - 0x02EBC9 0B:ABB9: 00        .byte $00   ; 
- - - - - - 0x02EBCA 0B:ABBA: 00        .byte $00   ; 
- - - - - - 0x02EBCB 0B:ABBB: 00        .byte $00   ; 
; 03 
- - - - - - 0x02EBCC 0B:ABBC: 6D        .byte con_BD4F_6D   ; 
- - - - - - 0x02EBCD 0B:ABBD: 00        .byte $00   ; 
- - - - - - 0x02EBCE 0B:ABBE: 00        .byte $00   ; 
- - - - - - 0x02EBCF 0B:ABBF: 00        .byte $00   ; 
; 04 
- - - - - - 0x02EBD0 0B:ABC0: 04        .byte con_BD4F_04   ; 
- - - - - - 0x02EBD1 0B:ABC1: 00        .byte $00   ; 
- - - - - - 0x02EBD2 0B:ABC2: 00        .byte $00   ; 
- - - - - - 0x02EBD3 0B:ABC3: 00        .byte $00   ; 
; 05 
- D 1 - I - 0x02EBD4 0B:ABC4: 3A        .byte con_BD4F_3A   ; 
- D 1 - I - 0x02EBD5 0B:ABC5: 08        .byte $08   ; 
- D 1 - I - 0x02EBD6 0B:ABC6: F2        .byte $F2   ; 
- D 1 - I - 0x02EBD7 0B:ABC7: 00        .byte $00   ; 
; 06 
- D 1 - I - 0x02EBD8 0B:ABC8: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EBD9 0B:ABC9: 04        .byte $04   ; 
- - - - - - 0x02EBDA 0B:ABCA: 00        .byte $00   ; 
- - - - - - 0x02EBDB 0B:ABCB: 00        .byte $00   ; 
; 07 
- D 1 - I - 0x02EBDC 0B:ABCC: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02EBDD 0B:ABCD: 00        .byte $00   ; 
- - - - - - 0x02EBDE 0B:ABCE: 00        .byte $00   ; 
- - - - - - 0x02EBDF 0B:ABCF: 00        .byte $00   ; 
; 08 
- D 1 - I - 0x02EBE0 0B:ABD0: 3A        .byte con_BD4F_3A   ; 
- D 1 - I - 0x02EBE1 0B:ABD1: 08        .byte $08   ; 
- D 1 - I - 0x02EBE2 0B:ABD2: F8        .byte $F8   ; 
- D 1 - I - 0x02EBE3 0B:ABD3: 00        .byte $00   ; 
; 09 
- D 1 - I - 0x02EBE4 0B:ABD4: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EBE5 0B:ABD5: 04        .byte $04   ; 
- - - - - - 0x02EBE6 0B:ABD6: 00        .byte $00   ; 
- - - - - - 0x02EBE7 0B:ABD7: 00        .byte $00   ; 
; 0A 
- D 1 - I - 0x02EBE8 0B:ABD8: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02EBE9 0B:ABD9: 00        .byte $00   ; 
- - - - - - 0x02EBEA 0B:ABDA: 00        .byte $00   ; 
- - - - - - 0x02EBEB 0B:ABDB: 00        .byte $00   ; 
; 0B 
- D 1 - I - 0x02EBEC 0B:ABDC: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02EBED 0B:ABDD: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02EBEE 0B:ABDE: F4        .byte $F4   ; 
- - - - - - 0x02EBEF 0B:ABDF: 00        .byte $00   ; 
; 0C 
- D 1 - I - 0x02EBF0 0B:ABE0: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EBF1 0B:ABE1: 08        .byte $08   ; 
- - - - - - 0x02EBF2 0B:ABE2: 00        .byte $00   ; 
- - - - - - 0x02EBF3 0B:ABE3: 00        .byte $00   ; 
; 0D 
- D 1 - I - 0x02EBF4 0B:ABE4: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02EBF5 0B:ABE5: 00        .byte $00   ; 
- - - - - - 0x02EBF6 0B:ABE6: 00        .byte $00   ; 
- - - - - - 0x02EBF7 0B:ABE7: 00        .byte $00   ; 
; 0E 
- D 1 - I - 0x02EBF8 0B:ABE8: 3A        .byte con_BD4F_3A   ; 
- D 1 - I - 0x02EBF9 0B:ABE9: 08        .byte $08   ; 
- D 1 - I - 0x02EBFA 0B:ABEA: F2        .byte $F2   ; 
- D 1 - I - 0x02EBFB 0B:ABEB: 02        .byte $02   ; 
; 0F 
- D 1 - I - 0x02EBFC 0B:ABEC: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EBFD 0B:ABED: 04        .byte $04   ; 
- - - - - - 0x02EBFE 0B:ABEE: 00        .byte $00   ; 
- - - - - - 0x02EBFF 0B:ABEF: 00        .byte $00   ; 
; 10 
- D 1 - I - 0x02EC00 0B:ABF0: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02EC01 0B:ABF1: 00        .byte $00   ; 
- - - - - - 0x02EC02 0B:ABF2: 00        .byte $00   ; 
- - - - - - 0x02EC03 0B:ABF3: 00        .byte $00   ; 
; 11 
- D 1 - I - 0x02EC04 0B:ABF4: 04        .byte con_BD4F_04   ; 
- D 1 - I - 0x02EC05 0B:ABF5: 00        .byte $00   ; 
- - - - - - 0x02EC06 0B:ABF6: 00        .byte $00   ; 
- - - - - - 0x02EC07 0B:ABF7: 00        .byte $00   ; 



_off034_ABF8_6A:
; 00 
- D 1 - I - 0x02EC08 0B:ABF8: 98        .byte con_BD4F_98   ; 
- D 1 - I - 0x02EC09 0B:ABF9: 00        .byte $00   ; 
- - - - - - 0x02EC0A 0B:ABFA: 00        .byte $00   ; 
- - - - - - 0x02EC0B 0B:ABFB: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02EC0C 0B:ABFC: 68        .byte con_BD4F_68   ; 
- D 1 - I - 0x02EC0D 0B:ABFD: 18        .byte $18   ; 
- D 1 - I - 0x02EC0E 0B:ABFE: 2A        .byte $2A   ; 
- - - - - - 0x02EC0F 0B:ABFF: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02EC10 0B:AC00: 99        .byte con_BD4F_99   ; 
- D 1 - I - 0x02EC11 0B:AC01: 00        .byte $00   ; 
- - - - - - 0x02EC12 0B:AC02: 00        .byte $00   ; 
- - - - - - 0x02EC13 0B:AC03: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02EC14 0B:AC04: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02EC15 0B:AC05: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02EC16 0B:AC06: 48        .byte $48   ; 
- - - - - - 0x02EC17 0B:AC07: 00        .byte $00   ; 
; 04 
- D 1 - I - 0x02EC18 0B:AC08: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EC19 0B:AC09: 06        .byte $06   ; 
- - - - - - 0x02EC1A 0B:AC0A: 00        .byte $00   ; 
- - - - - - 0x02EC1B 0B:AC0B: 00        .byte $00   ; 
; 05 
- D 1 - I - 0x02EC1C 0B:AC0C: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02EC1D 0B:AC0D: 00        .byte $00   ; 
- - - - - - 0x02EC1E 0B:AC0E: 00        .byte $00   ; 
- - - - - - 0x02EC1F 0B:AC0F: 00        .byte $00   ; 
; 06 
- D 1 - I - 0x02EC20 0B:AC10: 07        .byte con_BD4F_07   ; 
- D 1 - I - 0x02EC21 0B:AC11: 00 70     .dbyt $0070 ; spd_X
- - - - - - 0x02EC23 0B:AC13: 00        .byte $00   ; 
; 07 
- D 1 - I - 0x02EC24 0B:AC14: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EC25 0B:AC15: 90        .byte $90   ; 
- - - - - - 0x02EC26 0B:AC16: 00        .byte $00   ; 
- - - - - - 0x02EC27 0B:AC17: 00        .byte $00   ; 
; 08 
- D 1 - I - 0x02EC28 0B:AC18: 2F        .byte con_BD4F_2F   ; 
- - - - - - 0x02EC29 0B:AC19: 00        .byte $00   ; 
- - - - - - 0x02EC2A 0B:AC1A: 00        .byte $00   ; 
- - - - - - 0x02EC2B 0B:AC1B: 00        .byte $00   ; 
; 09 
- D 1 - I - 0x02EC2C 0B:AC1C: 05        .byte con_BD4F_05   ; 
- - - - - - 0x02EC2D 0B:AC1D: 00        .byte $00   ; 
- - - - - - 0x02EC2E 0B:AC1E: 00        .byte $00   ; 
- - - - - - 0x02EC2F 0B:AC1F: 00        .byte $00   ; 
; 0A 
- D 1 - I - 0x02EC30 0B:AC20: 2D        .byte con_BD4F_2D   ; 
- - - - - - 0x02EC31 0B:AC21: 00        .byte $00   ; 
- - - - - - 0x02EC32 0B:AC22: 00        .byte $00   ; 
- - - - - - 0x02EC33 0B:AC23: 00        .byte $00   ; 
; 0B 
- D 1 - I - 0x02EC34 0B:AC24: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02EC35 0B:AC25: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02EC36 0B:AC26: 4A        .byte $4A   ; 
- - - - - - 0x02EC37 0B:AC27: 00        .byte $00   ; 
; 0C 
- D 1 - I - 0x02EC38 0B:AC28: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EC39 0B:AC29: 18        .byte $18   ; 
- - - - - - 0x02EC3A 0B:AC2A: 00        .byte $00   ; 
- - - - - - 0x02EC3B 0B:AC2B: 00        .byte $00   ; 
; 0D 
- D 1 - I - 0x02EC3C 0B:AC2C: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02EC3D 0B:AC2D: 00        .byte $00   ; 
- - - - - - 0x02EC3E 0B:AC2E: 00        .byte $00   ; 
- - - - - - 0x02EC3F 0B:AC2F: 00        .byte $00   ; 
; 0E 
- D 1 - I - 0x02EC40 0B:AC30: 0D        .byte con_BD4F_0D   ; 
- D 1 - I - 0x02EC41 0B:AC31: 03        .byte $03   ; 
- - - - - - 0x02EC42 0B:AC32: 00        .byte $00   ; 
- - - - - - 0x02EC43 0B:AC33: 00        .byte $00   ; 
; 0F 
- D 1 - I - 0x02EC44 0B:AC34: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EC45 0B:AC35: 18        .byte $18   ; 
- - - - - - 0x02EC46 0B:AC36: 00        .byte $00   ; 
- - - - - - 0x02EC47 0B:AC37: 00        .byte $00   ; 
; 10 
- D 1 - I - 0x02EC48 0B:AC38: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02EC49 0B:AC39: 00        .byte $00   ; 
- - - - - - 0x02EC4A 0B:AC3A: 00        .byte $00   ; 
- - - - - - 0x02EC4B 0B:AC3B: 00        .byte $00   ; 
; 11 
- D 1 - I - 0x02EC4C 0B:AC3C: 98        .byte con_BD4F_98   ; 
- D 1 - I - 0x02EC4D 0B:AC3D: 01        .byte $01   ; 
- - - - - - 0x02EC4E 0B:AC3E: 00        .byte $00   ; 
- - - - - - 0x02EC4F 0B:AC3F: 00        .byte $00   ; 
; 12 
- D 1 - I - 0x02EC50 0B:AC40: 2A        .byte con_BD4F_2A   ; 
- - - - - - 0x02EC51 0B:AC41: 00        .byte $00   ; 
- - - - - - 0x02EC52 0B:AC42: 00        .byte $00   ; 
- - - - - - 0x02EC53 0B:AC43: 00        .byte $00   ; 
; 13 
- D 1 - I - 0x02EC54 0B:AC44: 99        .byte con_BD4F_99   ; 
- D 1 - I - 0x02EC55 0B:AC45: 01        .byte $01   ; 
- - - - - - 0x02EC56 0B:AC46: 00        .byte $00   ; 
- - - - - - 0x02EC57 0B:AC47: 00        .byte $00   ; 
; 14 
- D 1 - I - 0x02EC58 0B:AC48: 6C        .byte con_BD4F_play_sound   ; 
- D 1 - I - 0x02EC59 0B:AC49: 23        .byte con_sound_water_splash   ; 
- - - - - - 0x02EC5A 0B:AC4A: 00        .byte $00   ; 
- - - - - - 0x02EC5B 0B:AC4B: 00        .byte $00   ; 
; 15 
- D 1 - I - 0x02EC5C 0B:AC4C: 27        .byte con_BD4F_27   ; 
- - - - - - 0x02EC5D 0B:AC4D: 00        .byte $00   ; 
- - - - - - 0x02EC5E 0B:AC4E: 00        .byte $00   ; 
- - - - - - 0x02EC5F 0B:AC4F: 00        .byte $00   ; 



_off034_AC50_14:
; 00 
- D 1 - I - 0x02EC60 0B:AC50: 09        .byte con_BD4F_09   ; 
- - - - - - 0x02EC61 0B:AC51: 00        .byte $00   ; 
- - - - - - 0x02EC62 0B:AC52: 00        .byte $00   ; 
- - - - - - 0x02EC63 0B:AC53: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02EC64 0B:AC54: 05        .byte con_BD4F_05   ; 
- - - - - - 0x02EC65 0B:AC55: 00        .byte $00   ; 
- - - - - - 0x02EC66 0B:AC56: 00        .byte $00   ; 
- - - - - - 0x02EC67 0B:AC57: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02EC68 0B:AC58: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02EC69 0B:AC59: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02EC6A 0B:AC5A: 46        .byte $46   ; 
- - - - - - 0x02EC6B 0B:AC5B: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02EC6C 0B:AC5C: 2A        .byte con_BD4F_2A   ; 
- - - - - - 0x02EC6D 0B:AC5D: 00        .byte $00   ; 
- - - - - - 0x02EC6E 0B:AC5E: 00        .byte $00   ; 
- - - - - - 0x02EC6F 0B:AC5F: 00        .byte $00   ; 
; 04 
- D 1 - I - 0x02EC70 0B:AC60: 6C        .byte con_BD4F_play_sound   ; 
- D 1 - I - 0x02EC71 0B:AC61: 22        .byte con_sound_22   ; 
- - - - - - 0x02EC72 0B:AC62: 00        .byte $00   ; 
- - - - - - 0x02EC73 0B:AC63: 00        .byte $00   ; 
; 05 
- D 1 - I - 0x02EC74 0B:AC64: 63        .byte con_BD4F_63   ; 
- D 1 - I - 0x02EC75 0B:AC65: F9        .byte $F9   ; spd_Y_hi
- D 1 - I - 0x02EC76 0B:AC66: 2C        .byte $2C   ; 
- - - - - - 0x02EC77 0B:AC67: 00        .byte $00   ; 
; 06 
- D 1 - I - 0x02EC78 0B:AC68: 64        .byte con_BD4F_64   ; 
- D 1 - I - 0x02EC79 0B:AC69: 00        .byte $00   ; 
- - - - - - 0x02EC7A 0B:AC6A: 00        .byte $00   ; 
- - - - - - 0x02EC7B 0B:AC6B: 00        .byte $00   ; 
; 07 
- D 1 - I - 0x02EC7C 0B:AC6C: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02EC7D 0B:AC6D: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02EC7E 0B:AC6E: 48        .byte $48   ; 
- - - - - - 0x02EC7F 0B:AC6F: 00        .byte $00   ; 
; 08 
- D 1 - I - 0x02EC80 0B:AC70: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EC81 0B:AC71: 06        .byte $06   ; 
- - - - - - 0x02EC82 0B:AC72: 00        .byte $00   ; 
- - - - - - 0x02EC83 0B:AC73: 00        .byte $00   ; 
; 09 
- D 1 - I - 0x02EC84 0B:AC74: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02EC85 0B:AC75: 00        .byte $00   ; 
- - - - - - 0x02EC86 0B:AC76: 00        .byte $00   ; 
- - - - - - 0x02EC87 0B:AC77: 00        .byte $00   ; 
; 0A 
- D 1 - I - 0x02EC88 0B:AC78: 07        .byte con_BD4F_07   ; 
- D 1 - I - 0x02EC89 0B:AC79: 00 70     .dbyt $0070 ; spd_X
- - - - - - 0x02EC8B 0B:AC7B: 00        .byte $00   ; 
; 0B 
- D 1 - I - 0x02EC8C 0B:AC7C: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EC8D 0B:AC7D: 90        .byte $90   ; 
- - - - - - 0x02EC8E 0B:AC7E: 00        .byte $00   ; 
- - - - - - 0x02EC8F 0B:AC7F: 00        .byte $00   ; 
; 0C 
- D 1 - I - 0x02EC90 0B:AC80: 2F        .byte con_BD4F_2F   ; 
- - - - - - 0x02EC91 0B:AC81: 00        .byte $00   ; 
- - - - - - 0x02EC92 0B:AC82: 00        .byte $00   ; 
- - - - - - 0x02EC93 0B:AC83: 00        .byte $00   ; 
; 0D 
- D 1 - I - 0x02EC94 0B:AC84: 05        .byte con_BD4F_05   ; 
- - - - - - 0x02EC95 0B:AC85: 00        .byte $00   ; 
- - - - - - 0x02EC96 0B:AC86: 00        .byte $00   ; 
- - - - - - 0x02EC97 0B:AC87: 00        .byte $00   ; 
; 0E 
- D 1 - I - 0x02EC98 0B:AC88: 2D        .byte con_BD4F_2D   ; 
- - - - - - 0x02EC99 0B:AC89: 00        .byte $00   ; 
- - - - - - 0x02EC9A 0B:AC8A: 00        .byte $00   ; 
- - - - - - 0x02EC9B 0B:AC8B: 00        .byte $00   ; 
; 0F 
- D 1 - I - 0x02EC9C 0B:AC8C: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02EC9D 0B:AC8D: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02EC9E 0B:AC8E: 4A        .byte $4A   ; 
- - - - - - 0x02EC9F 0B:AC8F: 00        .byte $00   ; 
; 10 
- D 1 - I - 0x02ECA0 0B:AC90: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02ECA1 0B:AC91: 18        .byte $18   ; 
- - - - - - 0x02ECA2 0B:AC92: 00        .byte $00   ; 
- - - - - - 0x02ECA3 0B:AC93: 00        .byte $00   ; 
; 11 
- D 1 - I - 0x02ECA4 0B:AC94: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02ECA5 0B:AC95: 00        .byte $00   ; 
- - - - - - 0x02ECA6 0B:AC96: 00        .byte $00   ; 
- - - - - - 0x02ECA7 0B:AC97: 00        .byte $00   ; 
; 12 
- D 1 - I - 0x02ECA8 0B:AC98: 0D        .byte con_BD4F_0D   ; 
- D 1 - I - 0x02ECA9 0B:AC99: 03        .byte $03   ; 
- - - - - - 0x02ECAA 0B:AC9A: 00        .byte $00   ; 
- - - - - - 0x02ECAB 0B:AC9B: 00        .byte $00   ; 
; 13 
- D 1 - I - 0x02ECAC 0B:AC9C: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02ECAD 0B:AC9D: 18        .byte $18   ; 
- - - - - - 0x02ECAE 0B:AC9E: 00        .byte $00   ; 
- - - - - - 0x02ECAF 0B:AC9F: 00        .byte $00   ; 
; 14 
- D 1 - I - 0x02ECB0 0B:ACA0: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02ECB1 0B:ACA1: 00        .byte $00   ; 
- - - - - - 0x02ECB2 0B:ACA2: 00        .byte $00   ; 
- - - - - - 0x02ECB3 0B:ACA3: 00        .byte $00   ; 
; 15 
- D 1 - I - 0x02ECB4 0B:ACA4: 07        .byte con_BD4F_07   ; 
- D 1 - I - 0x02ECB5 0B:ACA5: 00 70     .dbyt $0070 ; spd_X
- - - - - - 0x02ECB7 0B:ACA7: 00        .byte $00   ; 
; 16 
- D 1 - I - 0x02ECB8 0B:ACA8: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02ECB9 0B:ACA9: 90        .byte $90   ; 
- - - - - - 0x02ECBA 0B:ACAA: 00        .byte $00   ; 
- - - - - - 0x02ECBB 0B:ACAB: 00        .byte $00   ; 
; 17 
- D 1 - I - 0x02ECBC 0B:ACAC: 2F        .byte con_BD4F_2F   ; 
- - - - - - 0x02ECBD 0B:ACAD: 00        .byte $00   ; 
- - - - - - 0x02ECBE 0B:ACAE: 00        .byte $00   ; 
- - - - - - 0x02ECBF 0B:ACAF: 00        .byte $00   ; 
; 18 
- - - - - - 0x02ECC0 0B:ACB0: 05        .byte con_BD4F_05   ; 
- - - - - - 0x02ECC1 0B:ACB1: 00        .byte $00   ; 
- - - - - - 0x02ECC2 0B:ACB2: 00        .byte $00   ; 
- - - - - - 0x02ECC3 0B:ACB3: 00        .byte $00   ; 
; 19 
- - - - - - 0x02ECC4 0B:ACB4: 2D        .byte con_BD4F_2D   ; 
- - - - - - 0x02ECC5 0B:ACB5: 00        .byte $00   ; 
- - - - - - 0x02ECC6 0B:ACB6: 00        .byte $00   ; 
- - - - - - 0x02ECC7 0B:ACB7: 00        .byte $00   ; 
; 1A 
- - - - - - 0x02ECC8 0B:ACB8: 0B        .byte con_BD4F_0B   ; 
- - - - - - 0x02ECC9 0B:ACB9: 08        .byte con_obj_type_08   ; 
- - - - - - 0x02ECCA 0B:ACBA: 4A        .byte $4A   ; 
- - - - - - 0x02ECCB 0B:ACBB: 00        .byte $00   ; 
; 1B 
- - - - - - 0x02ECCC 0B:ACBC: 1F        .byte con_BD4F_1F   ; 
- - - - - - 0x02ECCD 0B:ACBD: 18        .byte $18   ; 
- - - - - - 0x02ECCE 0B:ACBE: 00        .byte $00   ; 
- - - - - - 0x02ECCF 0B:ACBF: 00        .byte $00   ; 
; 1C 
- - - - - - 0x02ECD0 0B:ACC0: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02ECD1 0B:ACC1: 00        .byte $00   ; 
- - - - - - 0x02ECD2 0B:ACC2: 00        .byte $00   ; 
- - - - - - 0x02ECD3 0B:ACC3: 00        .byte $00   ; 
; 1D 
- - - - - - 0x02ECD4 0B:ACC4: 0D        .byte con_BD4F_0D   ; 
- - - - - - 0x02ECD5 0B:ACC5: 03        .byte $03   ; 
- - - - - - 0x02ECD6 0B:ACC6: 00        .byte $00   ; 
- - - - - - 0x02ECD7 0B:ACC7: 00        .byte $00   ; 
; 1E 
- - - - - - 0x02ECD8 0B:ACC8: 1F        .byte con_BD4F_1F   ; 
- - - - - - 0x02ECD9 0B:ACC9: 18        .byte $18   ; 
- - - - - - 0x02ECDA 0B:ACCA: 00        .byte $00   ; 
- - - - - - 0x02ECDB 0B:ACCB: 00        .byte $00   ; 
; 1F 
- - - - - - 0x02ECDC 0B:ACCC: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02ECDD 0B:ACCD: 00        .byte $00   ; 
- - - - - - 0x02ECDE 0B:ACCE: 00        .byte $00   ; 
- - - - - - 0x02ECDF 0B:ACCF: 00        .byte $00   ; 
; 20 
- - - - - - 0x02ECE0 0B:ACD0: 63        .byte con_BD4F_63   ; 
- - - - - - 0x02ECE1 0B:ACD1: FF        .byte $FF   ; spd_Y_hi
- - - - - - 0x02ECE2 0B:ACD2: 20        .byte $20   ; 
- - - - - - 0x02ECE3 0B:ACD3: 00        .byte $00   ; 
; 21 
- - - - - - 0x02ECE4 0B:ACD4: 2A        .byte con_BD4F_2A   ; 
- - - - - - 0x02ECE5 0B:ACD5: 00        .byte $00   ; 
- - - - - - 0x02ECE6 0B:ACD6: 00        .byte $00   ; 
- - - - - - 0x02ECE7 0B:ACD7: 00        .byte $00   ; 
; 22 
- - - - - - 0x02ECE8 0B:ACD8: 64        .byte con_BD4F_64   ; 
- - - - - - 0x02ECE9 0B:ACD9: 01        .byte $01   ; 
- - - - - - 0x02ECEA 0B:ACDA: 00        .byte $00   ; 
- - - - - - 0x02ECEB 0B:ACDB: 00        .byte $00   ; 
; 23 
- - - - - - 0x02ECEC 0B:ACDC: 6C        .byte con_BD4F_play_sound   ; 
- - - - - - 0x02ECED 0B:ACDD: 23        .byte con_sound_water_splash   ; 
- - - - - - 0x02ECEE 0B:ACDE: 00        .byte $00   ; 
- - - - - - 0x02ECEF 0B:ACDF: 00        .byte $00   ; 
; 24 
- - - - - - 0x02ECF0 0B:ACE0: 27        .byte con_BD4F_27   ; 
- - - - - - 0x02ECF1 0B:ACE1: 00        .byte $00   ; 
- - - - - - 0x02ECF2 0B:ACE2: 00        .byte $00   ; 
- - - - - - 0x02ECF3 0B:ACE3: 00        .byte $00   ; 
; 25 
- - - - - - 0x02ECF4 0B:ACE4: 9E        .byte con_BD4F_9E   ; 
- - - - - - 0x02ECF5 0B:ACE5: 00        .byte $00   ; 
- - - - - - 0x02ECF6 0B:ACE6: 00        .byte $00   ; 
- - - - - - 0x02ECF7 0B:ACE7: 00        .byte $00   ; 
; 26 
- - - - - - 0x02ECF8 0B:ACE8: 27        .byte con_BD4F_27   ; 
- - - - - - 0x02ECF9 0B:ACE9: 00        .byte $00   ; 
- - - - - - 0x02ECFA 0B:ACEA: 00        .byte $00   ; 
- - - - - - 0x02ECFB 0B:ACEB: 00        .byte $00   ; 



_off034_ACEC_27:
; 00 
- D 1 - I - 0x02ECFC 0B:ACEC: 65        .byte con_BD4F_65   ; 
- D 1 - I - 0x02ECFD 0B:ACED: 00        .byte $00   ; 
- D 1 - I - 0x02ECFE 0B:ACEE: 00        .byte $00   ; 
- - - - - - 0x02ECFF 0B:ACEF: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02ED00 0B:ACF0: 13        .byte con_BD4F_13   ; 
- D 1 - I - 0x02ED01 0B:ACF1: 12        .byte con_obj_type_12   ; 
- D 1 - I - 0x02ED02 0B:ACF2: 02        .byte $02   ; 
- - - - - - 0x02ED03 0B:ACF3: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02ED04 0B:ACF4: 1E        .byte con_BD4F_1E   ; 
- D 1 - I - 0x02ED05 0B:ACF5: 01 20     .dbyt $0120 ; spd_X
- - - - - - 0x02ED07 0B:ACF7: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02ED08 0B:ACF8: 58        .byte con_BD4F_58   ; 
- D 1 - I - 0x02ED09 0B:ACF9: 05        .byte $05   ; 
- D 1 - I - 0x02ED0A 0B:ACFA: 00        .byte $00   ; 
- D 1 - I - 0x02ED0B 0B:ACFB: 60        .byte $60   ; 
; 04 
- D 1 - I - 0x02ED0C 0B:ACFC: 60        .byte con_BD4F_60   ; 
- - - - - - 0x02ED0D 0B:ACFD: 00        .byte $00   ; 
- - - - - - 0x02ED0E 0B:ACFE: 00        .byte $00   ; 
- - - - - - 0x02ED0F 0B:ACFF: 00        .byte $00   ; 
; 05 
- D 1 - I - 0x02ED10 0B:AD00: 01        .byte con_BD4F_01   ; 
- - - - - - 0x02ED11 0B:AD01: 00        .byte $00   ; 
- - - - - - 0x02ED12 0B:AD02: 00        .byte $00   ; 
- - - - - - 0x02ED13 0B:AD03: 00        .byte $00   ; 
; 06 
- D 1 - I - 0x02ED14 0B:AD04: 05        .byte con_BD4F_05   ; 
- - - - - - 0x02ED15 0B:AD05: 00        .byte $00   ; 
- - - - - - 0x02ED16 0B:AD06: 00        .byte $00   ; 
- - - - - - 0x02ED17 0B:AD07: 00        .byte $00   ; 
; 07 
- D 1 - I - 0x02ED18 0B:AD08: 62        .byte con_BD4F_62   ; 
- D 1 - I - 0x02ED19 0B:AD09: 00        .byte $00   ; 
- D 1 - I - 0x02ED1A 0B:AD0A: F8        .byte $F8   ; 
- - - - - - 0x02ED1B 0B:AD0B: 00        .byte $00   ; 
; 08 
- D 1 - I - 0x02ED1C 0B:AD0C: 2D        .byte con_BD4F_2D   ; 
- - - - - - 0x02ED1D 0B:AD0D: 00        .byte $00   ; 
- - - - - - 0x02ED1E 0B:AD0E: 00        .byte $00   ; 
- - - - - - 0x02ED1F 0B:AD0F: 00        .byte $00   ; 
; 09 
- D 1 - I - 0x02ED20 0B:AD10: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02ED21 0B:AD11: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02ED22 0B:AD12: 42        .byte $42   ; 
- - - - - - 0x02ED23 0B:AD13: 00        .byte $00   ; 
; 0A 
- D 1 - I - 0x02ED24 0B:AD14: 6C        .byte con_BD4F_play_sound   ; 
- D 1 - I - 0x02ED25 0B:AD15: 22        .byte con_sound_22   ; 
- - - - - - 0x02ED26 0B:AD16: 00        .byte $00   ; 
- - - - - - 0x02ED27 0B:AD17: 00        .byte $00   ; 
; 0B 
- D 1 - I - 0x02ED28 0B:AD18: 68        .byte con_BD4F_68   ; 
- D 1 - I - 0x02ED29 0B:AD19: 18        .byte $18   ; 
- D 1 - I - 0x02ED2A 0B:AD1A: 62        .byte $62   ; 
- - - - - - 0x02ED2B 0B:AD1B: 00        .byte $00   ; 
; 0C 
- D 1 - I - 0x02ED2C 0B:AD1C: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02ED2D 0B:AD1D: 18        .byte $18   ; 
- - - - - - 0x02ED2E 0B:AD1E: 00        .byte $00   ; 
- - - - - - 0x02ED2F 0B:AD1F: 00        .byte $00   ; 
; 0D 
- D 1 - I - 0x02ED30 0B:AD20: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02ED31 0B:AD21: 00        .byte $00   ; 
- - - - - - 0x02ED32 0B:AD22: 00        .byte $00   ; 
- - - - - - 0x02ED33 0B:AD23: 00        .byte $00   ; 
; 0E 
- D 1 - I - 0x02ED34 0B:AD24: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02ED35 0B:AD25: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02ED36 0B:AD26: 4A        .byte $4A   ; 
- - - - - - 0x02ED37 0B:AD27: 00        .byte $00   ; 
; 0F 
- D 1 - I - 0x02ED38 0B:AD28: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02ED39 0B:AD29: 10        .byte $10   ; 
- - - - - - 0x02ED3A 0B:AD2A: 00        .byte $00   ; 
- - - - - - 0x02ED3B 0B:AD2B: 00        .byte $00   ; 
; 10 
- D 1 - I - 0x02ED3C 0B:AD2C: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02ED3D 0B:AD2D: 00        .byte $00   ; 
- - - - - - 0x02ED3E 0B:AD2E: 00        .byte $00   ; 
- - - - - - 0x02ED3F 0B:AD2F: 00        .byte $00   ; 
; 11 
- D 1 - I - 0x02ED40 0B:AD30: 0D        .byte con_BD4F_0D   ; 
- D 1 - I - 0x02ED41 0B:AD31: 03        .byte $03   ; 
- - - - - - 0x02ED42 0B:AD32: 00        .byte $00   ; 
- - - - - - 0x02ED43 0B:AD33: 00        .byte $00   ; 
; 12 
- D 1 - I - 0x02ED44 0B:AD34: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02ED45 0B:AD35: 18        .byte $18   ; 
- - - - - - 0x02ED46 0B:AD36: 00        .byte $00   ; 
- - - - - - 0x02ED47 0B:AD37: 00        .byte $00   ; 
; 13 
- D 1 - I - 0x02ED48 0B:AD38: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02ED49 0B:AD39: 00        .byte $00   ; 
- - - - - - 0x02ED4A 0B:AD3A: 00        .byte $00   ; 
- - - - - - 0x02ED4B 0B:AD3B: 00        .byte $00   ; 
; 14 
- D 1 - I - 0x02ED4C 0B:AD3C: 62        .byte con_BD4F_62   ; 
- D 1 - I - 0x02ED4D 0B:AD3D: 00        .byte $00   ; 
- D 1 - I - 0x02ED4E 0B:AD3E: 08        .byte $08   ; 
- - - - - - 0x02ED4F 0B:AD3F: 00        .byte $00   ; 
; 15 
- D 1 - I - 0x02ED50 0B:AD40: 04        .byte con_BD4F_04   ; 
- D 1 - I - 0x02ED51 0B:AD41: 01        .byte $01   ; 
- - - - - - 0x02ED52 0B:AD42: 00        .byte $00   ; 
- - - - - - 0x02ED53 0B:AD43: 00        .byte $00   ; 
; 16 
- D 1 - I - 0x02ED54 0B:AD44: 61        .byte con_BD4F_61   ; 
- D 1 - I - 0x02ED55 0B:AD45: 01        .byte $01   ; 
- D 1 - I - 0x02ED56 0B:AD46: 0A        .byte $0A   ; 
- - - - - - 0x02ED57 0B:AD47: 00        .byte $00   ; 



_off034_AD48_29:
; 00 
- D 1 - I - 0x02ED58 0B:AD48: 65        .byte con_BD4F_65   ; 
- D 1 - I - 0x02ED59 0B:AD49: 00        .byte $00   ; 
- D 1 - I - 0x02ED5A 0B:AD4A: 00        .byte $00   ; 
- - - - - - 0x02ED5B 0B:AD4B: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02ED5C 0B:AD4C: 13        .byte con_BD4F_13   ; 
- D 1 - I - 0x02ED5D 0B:AD4D: 12        .byte con_obj_type_12   ; 
- D 1 - I - 0x02ED5E 0B:AD4E: 02        .byte $02   ; 
- - - - - - 0x02ED5F 0B:AD4F: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02ED60 0B:AD50: 1E        .byte con_BD4F_1E   ; 
- D 1 - I - 0x02ED61 0B:AD51: 01 80     .dbyt $0180 ; spd_X
- - - - - - 0x02ED63 0B:AD53: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02ED64 0B:AD54: 90        .byte con_BD4F_90   ; 
- - - - - - 0x02ED65 0B:AD55: 06        .byte $06   ; 
- - - - - - 0x02ED66 0B:AD56: 00        .byte $00   ; 
- - - - - - 0x02ED67 0B:AD57: 60        .byte $60   ; 
; 04 
- D 1 - I - 0x02ED68 0B:AD58: 67        .byte con_BD4F_67   ; 
- - - - - - 0x02ED69 0B:AD59: 00        .byte $00   ; 
- - - - - - 0x02ED6A 0B:AD5A: 00        .byte $00   ; 
- - - - - - 0x02ED6B 0B:AD5B: 00        .byte $00   ; 
; 05 
- D 1 - I - 0x02ED6C 0B:AD5C: 03        .byte con_BD4F_03   ; 
- - - - - - 0x02ED6D 0B:AD5D: 00        .byte $00   ; 
- - - - - - 0x02ED6E 0B:AD5E: 00        .byte $00   ; 
- - - - - - 0x02ED6F 0B:AD5F: 00        .byte $00   ; 
; 06 
- D 1 - I - 0x02ED70 0B:AD60: 01        .byte con_BD4F_01   ; 
- - - - - - 0x02ED71 0B:AD61: 00        .byte $00   ; 
- - - - - - 0x02ED72 0B:AD62: 00        .byte $00   ; 
- - - - - - 0x02ED73 0B:AD63: 00        .byte $00   ; 
; 07 
- D 1 - I - 0x02ED74 0B:AD64: 05        .byte con_BD4F_05   ; 
- - - - - - 0x02ED75 0B:AD65: 00        .byte $00   ; 
- - - - - - 0x02ED76 0B:AD66: 00        .byte $00   ; 
- - - - - - 0x02ED77 0B:AD67: 00        .byte $00   ; 
; 08 
- D 1 - I - 0x02ED78 0B:AD68: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02ED79 0B:AD69: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02ED7A 0B:AD6A: 46        .byte $46   ; 
- - - - - - 0x02ED7B 0B:AD6B: 00        .byte $00   ; 
; 09 
- D 1 - I - 0x02ED7C 0B:AD6C: 2A        .byte con_BD4F_2A   ; 
- - - - - - 0x02ED7D 0B:AD6D: 00        .byte $00   ; 
- - - - - - 0x02ED7E 0B:AD6E: 00        .byte $00   ; 
- - - - - - 0x02ED7F 0B:AD6F: 00        .byte $00   ; 
; 0A 
- D 1 - I - 0x02ED80 0B:AD70: 6C        .byte con_BD4F_play_sound   ; 
- D 1 - I - 0x02ED81 0B:AD71: 22        .byte con_sound_22   ; 
- - - - - - 0x02ED82 0B:AD72: 00        .byte $00   ; 
- - - - - - 0x02ED83 0B:AD73: 00        .byte $00   ; 
; 0B 
- D 1 - I - 0x02ED84 0B:AD74: 63        .byte con_BD4F_63   ; 
- D 1 - I - 0x02ED85 0B:AD75: FA        .byte $FA   ; spd_Y_hi
- D 1 - I - 0x02ED86 0B:AD76: 24        .byte $24   ; 
- - - - - - 0x02ED87 0B:AD77: 00        .byte $00   ; 
; 0C 
- D 1 - I - 0x02ED88 0B:AD78: 68        .byte con_BD4F_68   ; 
- D 1 - I - 0x02ED89 0B:AD79: 18        .byte $18   ; 
- D 1 - I - 0x02ED8A 0B:AD7A: 2A        .byte $2A   ; 
- - - - - - 0x02ED8B 0B:AD7B: 00        .byte $00   ; 
; 0D 
- D 1 - I - 0x02ED8C 0B:AD7C: 64        .byte con_BD4F_64   ; 
- D 1 - I - 0x02ED8D 0B:AD7D: 03        .byte $03   ; 
- D 1 - I - 0x02ED8E 0B:AD7E: 2A        .byte $2A   ; 
- - - - - - 0x02ED8F 0B:AD7F: 00        .byte $00   ; 
; 0E 
- D 1 - I - 0x02ED90 0B:AD80: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02ED91 0B:AD81: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02ED92 0B:AD82: 48        .byte $48   ; 
- - - - - - 0x02ED93 0B:AD83: 00        .byte $00   ; 
; 0F 
- D 1 - I - 0x02ED94 0B:AD84: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02ED95 0B:AD85: 06        .byte $06   ; 
- - - - - - 0x02ED96 0B:AD86: 00        .byte $00   ; 
- - - - - - 0x02ED97 0B:AD87: 00        .byte $00   ; 
; 10 
- D 1 - I - 0x02ED98 0B:AD88: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02ED99 0B:AD89: 00        .byte $00   ; 
- - - - - - 0x02ED9A 0B:AD8A: 00        .byte $00   ; 
- - - - - - 0x02ED9B 0B:AD8B: 00        .byte $00   ; 
; 11 
- D 1 - I - 0x02ED9C 0B:AD8C: 07        .byte con_BD4F_07   ; 
- D 1 - I - 0x02ED9D 0B:AD8D: 00 70     .dbyt $0070 ; spd_X
- - - - - - 0x02ED9F 0B:AD8F: 00        .byte $00   ; 
; 12 
- D 1 - I - 0x02EDA0 0B:AD90: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EDA1 0B:AD91: 90        .byte $90   ; 
- - - - - - 0x02EDA2 0B:AD92: 00        .byte $00   ; 
- - - - - - 0x02EDA3 0B:AD93: 00        .byte $00   ; 
; 13 
- D 1 - I - 0x02EDA4 0B:AD94: 2F        .byte con_BD4F_2F   ; 
- - - - - - 0x02EDA5 0B:AD95: 00        .byte $00   ; 
- - - - - - 0x02EDA6 0B:AD96: 00        .byte $00   ; 
- - - - - - 0x02EDA7 0B:AD97: 00        .byte $00   ; 
; 14 
- D 1 - I - 0x02EDA8 0B:AD98: 05        .byte con_BD4F_05   ; 
- - - - - - 0x02EDA9 0B:AD99: 00        .byte $00   ; 
- - - - - - 0x02EDAA 0B:AD9A: 00        .byte $00   ; 
- - - - - - 0x02EDAB 0B:AD9B: 00        .byte $00   ; 
; 15 
- D 1 - I - 0x02EDAC 0B:AD9C: 2D        .byte con_BD4F_2D   ; 
- - - - - - 0x02EDAD 0B:AD9D: 00        .byte $00   ; 
- - - - - - 0x02EDAE 0B:AD9E: 00        .byte $00   ; 
- - - - - - 0x02EDAF 0B:AD9F: 00        .byte $00   ; 
; 16 
- D 1 - I - 0x02EDB0 0B:ADA0: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02EDB1 0B:ADA1: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02EDB2 0B:ADA2: 4A        .byte $4A   ; 
- - - - - - 0x02EDB3 0B:ADA3: 00        .byte $00   ; 
; 17 
- D 1 - I - 0x02EDB4 0B:ADA4: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EDB5 0B:ADA5: 18        .byte $18   ; 
- - - - - - 0x02EDB6 0B:ADA6: 00        .byte $00   ; 
- - - - - - 0x02EDB7 0B:ADA7: 00        .byte $00   ; 
; 18 
- D 1 - I - 0x02EDB8 0B:ADA8: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02EDB9 0B:ADA9: 00        .byte $00   ; 
- - - - - - 0x02EDBA 0B:ADAA: 00        .byte $00   ; 
- - - - - - 0x02EDBB 0B:ADAB: 00        .byte $00   ; 
; 19 
- D 1 - I - 0x02EDBC 0B:ADAC: 0D        .byte con_BD4F_0D   ; 
- D 1 - I - 0x02EDBD 0B:ADAD: 03        .byte $03   ; 
- - - - - - 0x02EDBE 0B:ADAE: 00        .byte $00   ; 
- - - - - - 0x02EDBF 0B:ADAF: 00        .byte $00   ; 
; 1A 
- D 1 - I - 0x02EDC0 0B:ADB0: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EDC1 0B:ADB1: 18        .byte $18   ; 
- - - - - - 0x02EDC2 0B:ADB2: 00        .byte $00   ; 
- - - - - - 0x02EDC3 0B:ADB3: 00        .byte $00   ; 
; 1B 
- D 1 - I - 0x02EDC4 0B:ADB4: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02EDC5 0B:ADB5: 00        .byte $00   ; 
- - - - - - 0x02EDC6 0B:ADB6: 00        .byte $00   ; 
- - - - - - 0x02EDC7 0B:ADB7: 00        .byte $00   ; 
; 1C 
- D 1 - I - 0x02EDC8 0B:ADB8: 07        .byte con_BD4F_07   ; 
- D 1 - I - 0x02EDC9 0B:ADB9: 00 70     .dbyt $0070 ; spd_X
- - - - - - 0x02EDCB 0B:ADBB: 00        .byte $00   ; 
; 1D 
- D 1 - I - 0x02EDCC 0B:ADBC: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EDCD 0B:ADBD: 90        .byte $90   ; 
- - - - - - 0x02EDCE 0B:ADBE: 00        .byte $00   ; 
- - - - - - 0x02EDCF 0B:ADBF: 00        .byte $00   ; 
; 1E 
- D 1 - I - 0x02EDD0 0B:ADC0: 2F        .byte con_BD4F_2F   ; 
- - - - - - 0x02EDD1 0B:ADC1: 00        .byte $00   ; 
- - - - - - 0x02EDD2 0B:ADC2: 00        .byte $00   ; 
- - - - - - 0x02EDD3 0B:ADC3: 00        .byte $00   ; 
; 1F 
- - - - - - 0x02EDD4 0B:ADC4: 05        .byte con_BD4F_05   ; 
- - - - - - 0x02EDD5 0B:ADC5: 00        .byte $00   ; 
- - - - - - 0x02EDD6 0B:ADC6: 00        .byte $00   ; 
- - - - - - 0x02EDD7 0B:ADC7: 00        .byte $00   ; 
; 20 
- - - - - - 0x02EDD8 0B:ADC8: 2D        .byte con_BD4F_2D   ; 
- - - - - - 0x02EDD9 0B:ADC9: 00        .byte $00   ; 
- - - - - - 0x02EDDA 0B:ADCA: 00        .byte $00   ; 
- - - - - - 0x02EDDB 0B:ADCB: 00        .byte $00   ; 
; 21 
- - - - - - 0x02EDDC 0B:ADCC: 0B        .byte con_BD4F_0B   ; 
- - - - - - 0x02EDDD 0B:ADCD: 08        .byte con_obj_type_08   ; 
- - - - - - 0x02EDDE 0B:ADCE: 4A        .byte $4A   ; 
- - - - - - 0x02EDDF 0B:ADCF: 00        .byte $00   ; 
; 22 
- - - - - - 0x02EDE0 0B:ADD0: 1F        .byte con_BD4F_1F   ; 
- - - - - - 0x02EDE1 0B:ADD1: 18        .byte $18   ; 
- - - - - - 0x02EDE2 0B:ADD2: 00        .byte $00   ; 
- - - - - - 0x02EDE3 0B:ADD3: 00        .byte $00   ; 
; 23 
- - - - - - 0x02EDE4 0B:ADD4: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02EDE5 0B:ADD5: 00        .byte $00   ; 
- - - - - - 0x02EDE6 0B:ADD6: 00        .byte $00   ; 
- - - - - - 0x02EDE7 0B:ADD7: 00        .byte $00   ; 
; 24 
- - - - - - 0x02EDE8 0B:ADD8: 0D        .byte con_BD4F_0D   ; 
- - - - - - 0x02EDE9 0B:ADD9: 03        .byte $03   ; 
- - - - - - 0x02EDEA 0B:ADDA: 00        .byte $00   ; 
- - - - - - 0x02EDEB 0B:ADDB: 00        .byte $00   ; 
; 25 
- - - - - - 0x02EDEC 0B:ADDC: 1F        .byte con_BD4F_1F   ; 
- - - - - - 0x02EDED 0B:ADDD: 18        .byte $18   ; 
- - - - - - 0x02EDEE 0B:ADDE: 00        .byte $00   ; 
- - - - - - 0x02EDEF 0B:ADDF: 00        .byte $00   ; 
; 26 
- - - - - - 0x02EDF0 0B:ADE0: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02EDF1 0B:ADE1: 00        .byte $00   ; 
- - - - - - 0x02EDF2 0B:ADE2: 00        .byte $00   ; 
- - - - - - 0x02EDF3 0B:ADE3: 00        .byte $00   ; 
; 27 
- - - - - - 0x02EDF4 0B:ADE4: 63        .byte con_BD4F_63   ; 
- - - - - - 0x02EDF5 0B:ADE5: FF        .byte $FF   ; spd_Y_hi
- - - - - - 0x02EDF6 0B:ADE6: 20        .byte $20   ; 
- - - - - - 0x02EDF7 0B:ADE7: 00        .byte $00   ; 
; 28 
- - - - - - 0x02EDF8 0B:ADE8: 2A        .byte con_BD4F_2A   ; 
- - - - - - 0x02EDF9 0B:ADE9: 00        .byte $00   ; 
- - - - - - 0x02EDFA 0B:ADEA: 00        .byte $00   ; 
- - - - - - 0x02EDFB 0B:ADEB: 00        .byte $00   ; 
; 29 
- - - - - - 0x02EDFC 0B:ADEC: 64        .byte con_BD4F_64   ; 
- - - - - - 0x02EDFD 0B:ADED: 02        .byte $02   ; 
- - - - - - 0x02EDFE 0B:ADEE: B0        .byte $B0   ; 
- - - - - - 0x02EDFF 0B:ADEF: 00        .byte $00   ; 
; 2A 
- D 1 - I - 0x02EE00 0B:ADF0: 6C        .byte con_BD4F_play_sound   ; 
- D 1 - I - 0x02EE01 0B:ADF1: 23        .byte con_sound_water_splash   ; 
- - - - - - 0x02EE02 0B:ADF2: 00        .byte $00   ; 
- - - - - - 0x02EE03 0B:ADF3: 00        .byte $00   ; 
; 2B 
- D 1 - I - 0x02EE04 0B:ADF4: 27        .byte con_BD4F_27   ; 
- - - - - - 0x02EE05 0B:ADF5: 00        .byte $00   ; 
- - - - - - 0x02EE06 0B:ADF6: 00        .byte $00   ; 
- - - - - - 0x02EE07 0B:ADF7: 00        .byte $00   ; 



_off034_ADF8_28:
; 00 
- D 1 - I - 0x02EE08 0B:ADF8: 13        .byte con_BD4F_13   ; 
- D 1 - I - 0x02EE09 0B:ADF9: 12        .byte con_obj_type_12   ; 
- D 1 - I - 0x02EE0A 0B:ADFA: 03        .byte $03   ; 
- - - - - - 0x02EE0B 0B:ADFB: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02EE0C 0B:ADFC: 1E        .byte con_BD4F_1E   ; 
- D 1 - I - 0x02EE0D 0B:ADFD: 00 80     .dbyt $0080 ; spd_X
- - - - - - 0x02EE0F 0B:ADFF: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02EE10 0B:AE00: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EE11 0B:AE01: 40        .byte $40   ; 
- - - - - - 0x02EE12 0B:AE02: 00        .byte $00   ; 
- - - - - - 0x02EE13 0B:AE03: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02EE14 0B:AE04: 66        .byte con_BD4F_66   ; 
- - - - - - 0x02EE15 0B:AE05: 00        .byte $00   ; 
- - - - - - 0x02EE16 0B:AE06: 00        .byte $00   ; 
- - - - - - 0x02EE17 0B:AE07: 00        .byte $00   ; 



_off034_AE08_25:
; 00 
- D 1 - I - 0x02EE18 0B:AE08: 5F        .byte con_BD4F_5F   ; 
- - - - - - 0x02EE19 0B:AE09: 00        .byte $00   ; 
- - - - - - 0x02EE1A 0B:AE0A: 00        .byte $00   ; 
- - - - - - 0x02EE1B 0B:AE0B: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02EE1C 0B:AE0C: 6C        .byte con_BD4F_play_sound   ; 
- D 1 - I - 0x02EE1D 0B:AE0D: 0F        .byte con_sound_0F   ; 
- - - - - - 0x02EE1E 0B:AE0E: 00        .byte $00   ; 
- - - - - - 0x02EE1F 0B:AE0F: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02EE20 0B:AE10: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02EE21 0B:AE11: 12        .byte con_obj_type_12   ; 
- D 1 - I - 0x02EE22 0B:AE12: 20        .byte $20   ; 
- - - - - - 0x02EE23 0B:AE13: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02EE24 0B:AE14: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EE25 0B:AE15: 12        .byte $12   ; 
- - - - - - 0x02EE26 0B:AE16: 00        .byte $00   ; 
- - - - - - 0x02EE27 0B:AE17: 00        .byte $00   ; 
; 04 
- D 1 - I - 0x02EE28 0B:AE18: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02EE29 0B:AE19: 00        .byte $00   ; 
- - - - - - 0x02EE2A 0B:AE1A: 00        .byte $00   ; 
- - - - - - 0x02EE2B 0B:AE1B: 00        .byte $00   ; 
; 05 
- D 1 - I - 0x02EE2C 0B:AE1C: 53        .byte con_BD4F_53   ; 
- - - - - - 0x02EE2D 0B:AE1D: 00        .byte $00   ; 
- - - - - - 0x02EE2E 0B:AE1E: 00        .byte $00   ; 
- - - - - - 0x02EE2F 0B:AE1F: 00        .byte $00   ; 
; 06 
- D 1 - I - 0x02EE30 0B:AE20: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02EE31 0B:AE21: 12        .byte con_obj_type_12   ; 
- D 1 - I - 0x02EE32 0B:AE22: 22        .byte $22   ; 
- - - - - - 0x02EE33 0B:AE23: 00        .byte $00   ; 
; 07 
- D 1 - I - 0x02EE34 0B:AE24: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EE35 0B:AE25: 08        .byte $08   ; 
- - - - - - 0x02EE36 0B:AE26: 00        .byte $00   ; 
- - - - - - 0x02EE37 0B:AE27: 00        .byte $00   ; 
; 08 
- D 1 - I - 0x02EE38 0B:AE28: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02EE39 0B:AE29: 00        .byte $00   ; 
- - - - - - 0x02EE3A 0B:AE2A: 00        .byte $00   ; 
- - - - - - 0x02EE3B 0B:AE2B: 00        .byte $00   ; 
; 09 
- D 1 - I - 0x02EE3C 0B:AE2C: 08        .byte con_BD4F_08   ; 
- D 1 - I - 0x02EE3D 0B:AE2D: 01        .byte $01   ; 
- - - - - - 0x02EE3E 0B:AE2E: 00        .byte $00   ; 
- - - - - - 0x02EE3F 0B:AE2F: 00        .byte $00   ; 
; 0A 
- D 1 - I - 0x02EE40 0B:AE30: 13        .byte con_BD4F_13   ; 
- D 1 - I - 0x02EE41 0B:AE31: 12        .byte con_obj_type_12   ; 
- D 1 - I - 0x02EE42 0B:AE32: 00        .byte $00   ; 
- - - - - - 0x02EE43 0B:AE33: 00        .byte $00   ; 
; 0B 
- D 1 - I - 0x02EE44 0B:AE34: 1E        .byte con_BD4F_1E   ; 
- D 1 - I - 0x02EE45 0B:AE35: 00 60     .dbyt $0060 ; spd_X
- - - - - - 0x02EE47 0B:AE37: 00        .byte $00   ; 
; 0C 
- D 1 - I - 0x02EE48 0B:AE38: 5E        .byte con_BD4F_5E   ; 
- - - - - - 0x02EE49 0B:AE39: 00        .byte $00   ; 
- - - - - - 0x02EE4A 0B:AE3A: 00        .byte $00   ; 
- - - - - - 0x02EE4B 0B:AE3B: 00        .byte $00   ; 
; 0D 
- D 1 - I - 0x02EE4C 0B:AE3C: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02EE4D 0B:AE3D: 12        .byte con_obj_type_12   ; 
- D 1 - I - 0x02EE4E 0B:AE3E: 22        .byte $22   ; 
- - - - - - 0x02EE4F 0B:AE3F: 00        .byte $00   ; 
; 0E 
- D 1 - I - 0x02EE50 0B:AE40: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EE51 0B:AE41: 08        .byte $08   ; 
- - - - - - 0x02EE52 0B:AE42: 00        .byte $00   ; 
- - - - - - 0x02EE53 0B:AE43: 00        .byte $00   ; 
; 0F 
- D 1 - I - 0x02EE54 0B:AE44: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02EE55 0B:AE45: 00        .byte $00   ; 
- - - - - - 0x02EE56 0B:AE46: 00        .byte $00   ; 
- - - - - - 0x02EE57 0B:AE47: 00        .byte $00   ; 
; 10 
- D 1 - I - 0x02EE58 0B:AE48: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02EE59 0B:AE49: 12        .byte con_obj_type_12   ; 
- D 1 - I - 0x02EE5A 0B:AE4A: 20        .byte $20   ; 
- - - - - - 0x02EE5B 0B:AE4B: 00        .byte $00   ; 
; 11 
- D 1 - I - 0x02EE5C 0B:AE4C: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EE5D 0B:AE4D: 08        .byte $08   ; 
- - - - - - 0x02EE5E 0B:AE4E: 00        .byte $00   ; 
- - - - - - 0x02EE5F 0B:AE4F: 00        .byte $00   ; 
; 12 
- D 1 - I - 0x02EE60 0B:AE50: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02EE61 0B:AE51: 00        .byte $00   ; 
- - - - - - 0x02EE62 0B:AE52: 00        .byte $00   ; 
- - - - - - 0x02EE63 0B:AE53: 00        .byte $00   ; 
; 13 
- D 1 - I - 0x02EE64 0B:AE54: 27        .byte con_BD4F_27   ; 
- - - - - - 0x02EE65 0B:AE55: 00        .byte $00   ; 
- - - - - - 0x02EE66 0B:AE56: 00        .byte $00   ; 
- - - - - - 0x02EE67 0B:AE57: 00        .byte $00   ; 



_off034_AE58_26:
; 00 
- D 1 - I - 0x02EE68 0B:AE58: A7        .byte con_BD4F_A7   ; 
- D 1 - I - 0x02EE69 0B:AE59: 05        .byte $05   ; 
- D 1 - I - 0x02EE6A 0B:AE5A: 00        .byte $00   ; 
- - - - - - 0x02EE6B 0B:AE5B: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02EE6C 0B:AE5C: 89        .byte con_BD4F_89   ; 
- D 1 - I - 0x02EE6D 0B:AE5D: A8        .byte $A8   ; 
- - - - - - 0x02EE6E 0B:AE5E: 00        .byte $00   ; 
- - - - - - 0x02EE6F 0B:AE5F: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02EE70 0B:AE60: 05        .byte con_BD4F_05   ; 
- - - - - - 0x02EE71 0B:AE61: 00        .byte $00   ; 
- - - - - - 0x02EE72 0B:AE62: 00        .byte $00   ; 
- - - - - - 0x02EE73 0B:AE63: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02EE74 0B:AE64: 6C        .byte con_BD4F_play_sound   ; 
- D 1 - I - 0x02EE75 0B:AE65: 22        .byte con_sound_22   ; 
- - - - - - 0x02EE76 0B:AE66: 00        .byte $00   ; 
- - - - - - 0x02EE77 0B:AE67: 00        .byte $00   ; 
; 04 
- D 1 - I - 0x02EE78 0B:AE68: 5B        .byte con_BD4F_5B   ; 
- D 1 - I - 0x02EE79 0B:AE69: 01        .byte $01   ; 
- - - - - - 0x02EE7A 0B:AE6A: 00        .byte $00   ; 
- - - - - - 0x02EE7B 0B:AE6B: 00        .byte $00   ; 
; 05 
- D 1 - I - 0x02EE7C 0B:AE6C: 68        .byte con_BD4F_68   ; 
- D 1 - I - 0x02EE7D 0B:AE6D: 00        .byte $00   ; 
- D 1 - I - 0x02EE7E 0B:AE6E: 67        .byte $67   ; 
- - - - - - 0x02EE7F 0B:AE6F: 00        .byte $00   ; 
; 06 
- D 1 - I - 0x02EE80 0B:AE70: 2A        .byte con_BD4F_2A   ; 
- - - - - - 0x02EE81 0B:AE71: 00        .byte $00   ; 
- - - - - - 0x02EE82 0B:AE72: 00        .byte $00   ; 
- - - - - - 0x02EE83 0B:AE73: 00        .byte $00   ; 
; 07 
- D 1 - I - 0x02EE84 0B:AE74: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02EE85 0B:AE75: 12        .byte con_obj_type_12   ; 
- D 1 - I - 0x02EE86 0B:AE76: 12        .byte $12   ; 
- - - - - - 0x02EE87 0B:AE77: 00        .byte $00   ; 
; 08 
- D 1 - I - 0x02EE88 0B:AE78: 5C        .byte con_BD4F_5C   ; 
- - - - - - 0x02EE89 0B:AE79: 00        .byte $00   ; 
- - - - - - 0x02EE8A 0B:AE7A: 00        .byte $00   ; 
- - - - - - 0x02EE8B 0B:AE7B: 00        .byte $00   ; 
; 09 
- D 1 - I - 0x02EE8C 0B:AE7C: 68        .byte con_BD4F_68   ; 
- D 1 - I - 0x02EE8D 0B:AE7D: 00        .byte $00   ; 
- D 1 - I - 0x02EE8E 0B:AE7E: 67        .byte $67   ; 
- - - - - - 0x02EE8F 0B:AE7F: 00        .byte $00   ; 
; 0A 
- D 1 - I - 0x02EE90 0B:AE80: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EE91 0B:AE81: 06        .byte $06   ; 
- - - - - - 0x02EE92 0B:AE82: 00        .byte $00   ; 
- - - - - - 0x02EE93 0B:AE83: 00        .byte $00   ; 
; 0B 
- D 1 - I - 0x02EE94 0B:AE84: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02EE95 0B:AE85: 00        .byte $00   ; 
- - - - - - 0x02EE96 0B:AE86: 00        .byte $00   ; 
- - - - - - 0x02EE97 0B:AE87: 00        .byte $00   ; 
; 0C 
- D 1 - I - 0x02EE98 0B:AE88: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02EE99 0B:AE89: 12        .byte con_obj_type_12   ; 
- D 1 - I - 0x02EE9A 0B:AE8A: 10        .byte $10   ; 
- - - - - - 0x02EE9B 0B:AE8B: 00        .byte $00   ; 
; 0D 
- D 1 - I - 0x02EE9C 0B:AE8C: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EE9D 0B:AE8D: 20        .byte $20   ; 
- - - - - - 0x02EE9E 0B:AE8E: 00        .byte $00   ; 
- - - - - - 0x02EE9F 0B:AE8F: 00        .byte $00   ; 
; 0E 
- D 1 - I - 0x02EEA0 0B:AE90: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02EEA1 0B:AE91: 00        .byte $00   ; 
- - - - - - 0x02EEA2 0B:AE92: 00        .byte $00   ; 
- - - - - - 0x02EEA3 0B:AE93: 00        .byte $00   ; 
; 0F 
- D 1 - I - 0x02EEA4 0B:AE94: 05        .byte con_BD4F_05   ; 
- - - - - - 0x02EEA5 0B:AE95: 00        .byte $00   ; 
- - - - - - 0x02EEA6 0B:AE96: 00        .byte $00   ; 
- - - - - - 0x02EEA7 0B:AE97: 00        .byte $00   ; 
; 10 
- D 1 - I - 0x02EEA8 0B:AE98: 5B        .byte con_BD4F_5B   ; 
- D 1 - I - 0x02EEA9 0B:AE99: 00        .byte $00   ; 
- - - - - - 0x02EEAA 0B:AE9A: 00        .byte $00   ; 
- - - - - - 0x02EEAB 0B:AE9B: 00        .byte $00   ; 
; 11 
- D 1 - I - 0x02EEAC 0B:AE9C: 68        .byte con_BD4F_68   ; 
- D 1 - I - 0x02EEAD 0B:AE9D: 00        .byte $00   ; 
- D 1 - I - 0x02EEAE 0B:AE9E: 67        .byte $67   ; 
- - - - - - 0x02EEAF 0B:AE9F: 00        .byte $00   ; 
; 12 
- D 1 - I - 0x02EEB0 0B:AEA0: 2A        .byte con_BD4F_2A   ; 
- - - - - - 0x02EEB1 0B:AEA1: 00        .byte $00   ; 
- - - - - - 0x02EEB2 0B:AEA2: 00        .byte $00   ; 
- - - - - - 0x02EEB3 0B:AEA3: 00        .byte $00   ; 
; 13 
- D 1 - I - 0x02EEB4 0B:AEA4: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02EEB5 0B:AEA5: 12        .byte con_obj_type_12   ; 
- D 1 - I - 0x02EEB6 0B:AEA6: 12        .byte $12   ; 
- - - - - - 0x02EEB7 0B:AEA7: 00        .byte $00   ; 
; 14 
- D 1 - I - 0x02EEB8 0B:AEA8: 5C        .byte con_BD4F_5C   ; 
- - - - - - 0x02EEB9 0B:AEA9: 00        .byte $00   ; 
- - - - - - 0x02EEBA 0B:AEAA: 00        .byte $00   ; 
- - - - - - 0x02EEBB 0B:AEAB: 00        .byte $00   ; 
; 15 
- D 1 - I - 0x02EEBC 0B:AEAC: 68        .byte con_BD4F_68   ; 
- D 1 - I - 0x02EEBD 0B:AEAD: 00        .byte $00   ; 
- D 1 - I - 0x02EEBE 0B:AEAE: 67        .byte $67   ; 
- - - - - - 0x02EEBF 0B:AEAF: 00        .byte $00   ; 
; 16 
- D 1 - I - 0x02EEC0 0B:AEB0: 04        .byte con_BD4F_04   ; 
- D 1 - I - 0x02EEC1 0B:AEB1: 0A        .byte $0A   ; 
- - - - - - 0x02EEC2 0B:AEB2: 00        .byte $00   ; 
- - - - - - 0x02EEC3 0B:AEB3: 00        .byte $00   ; 
; 17 
- D 1 - I - 0x02EEC4 0B:AEB4: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02EEC5 0B:AEB5: 12        .byte con_obj_type_12   ; 
- D 1 - I - 0x02EEC6 0B:AEB6: 60        .byte $60   ; 
- - - - - - 0x02EEC7 0B:AEB7: 00        .byte $00   ; 
; 18 
- D 1 - I - 0x02EEC8 0B:AEB8: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EEC9 0B:AEB9: 02        .byte $02   ; 
- - - - - - 0x02EECA 0B:AEBA: 00        .byte $00   ; 
- - - - - - 0x02EECB 0B:AEBB: 00        .byte $00   ; 
; 19 
- D 1 - I - 0x02EECC 0B:AEBC: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02EECD 0B:AEBD: 00        .byte $00   ; 
- - - - - - 0x02EECE 0B:AEBE: 00        .byte $00   ; 
- - - - - - 0x02EECF 0B:AEBF: 00        .byte $00   ; 
; 1A 
- D 1 - I - 0x02EED0 0B:AEC0: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02EED1 0B:AEC1: 12        .byte con_obj_type_12   ; 
- D 1 - I - 0x02EED2 0B:AEC2: 62        .byte $62   ; 
- - - - - - 0x02EED3 0B:AEC3: 00        .byte $00   ; 
; 1B 
- D 1 - I - 0x02EED4 0B:AEC4: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EED5 0B:AEC5: 02        .byte $02   ; 
- - - - - - 0x02EED6 0B:AEC6: 00        .byte $00   ; 
- - - - - - 0x02EED7 0B:AEC7: 00        .byte $00   ; 
; 1C 
- D 1 - I - 0x02EED8 0B:AEC8: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02EED9 0B:AEC9: 00        .byte $00   ; 
- - - - - - 0x02EEDA 0B:AECA: 00        .byte $00   ; 
- - - - - - 0x02EEDB 0B:AECB: 00        .byte $00   ; 
; 1D 
- D 1 - I - 0x02EEDC 0B:AECC: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02EEDD 0B:AECD: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02EEDE 0B:AECE: FA        .byte $FA   ; 
- - - - - - 0x02EEDF 0B:AECF: 00        .byte $00   ; 
; 1E 
- D 1 - I - 0x02EEE0 0B:AED0: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EEE1 0B:AED1: 02        .byte $02   ; 
- - - - - - 0x02EEE2 0B:AED2: 00        .byte $00   ; 
- - - - - - 0x02EEE3 0B:AED3: 00        .byte $00   ; 
; 1F 
- D 1 - I - 0x02EEE4 0B:AED4: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02EEE5 0B:AED5: 00        .byte $00   ; 
- - - - - - 0x02EEE6 0B:AED6: 00        .byte $00   ; 
- - - - - - 0x02EEE7 0B:AED7: 00        .byte $00   ; 
; 20 
- D 1 - I - 0x02EEE8 0B:AED8: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02EEE9 0B:AED9: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02EEEA 0B:AEDA: FC        .byte $FC   ; 
- - - - - - 0x02EEEB 0B:AEDB: 00        .byte $00   ; 
; 21 
- D 1 - I - 0x02EEEC 0B:AEDC: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EEED 0B:AEDD: 02        .byte $02   ; 
- - - - - - 0x02EEEE 0B:AEDE: 00        .byte $00   ; 
- - - - - - 0x02EEEF 0B:AEDF: 00        .byte $00   ; 
; 22 
- D 1 - I - 0x02EEF0 0B:AEE0: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02EEF1 0B:AEE1: 00        .byte $00   ; 
- - - - - - 0x02EEF2 0B:AEE2: 00        .byte $00   ; 
- - - - - - 0x02EEF3 0B:AEE3: 00        .byte $00   ; 
; 23 
- D 1 - I - 0x02EEF4 0B:AEE4: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02EEF5 0B:AEE5: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02EEF6 0B:AEE6: FA        .byte $FA   ; 
- - - - - - 0x02EEF7 0B:AEE7: 00        .byte $00   ; 
; 24 
- D 1 - I - 0x02EEF8 0B:AEE8: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EEF9 0B:AEE9: 02        .byte $02   ; 
- - - - - - 0x02EEFA 0B:AEEA: 00        .byte $00   ; 
- - - - - - 0x02EEFB 0B:AEEB: 00        .byte $00   ; 
; 25 
- D 1 - I - 0x02EEFC 0B:AEEC: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02EEFD 0B:AEED: 00        .byte $00   ; 
- - - - - - 0x02EEFE 0B:AEEE: 00        .byte $00   ; 
- - - - - - 0x02EEFF 0B:AEEF: 00        .byte $00   ; 
; 26 
- D 1 - I - 0x02EF00 0B:AEF0: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02EF01 0B:AEF1: 12        .byte con_obj_type_12   ; 
- D 1 - I - 0x02EF02 0B:AEF2: 62        .byte $62   ; 
- - - - - - 0x02EF03 0B:AEF3: 00        .byte $00   ; 
; 27 
- D 1 - I - 0x02EF04 0B:AEF4: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EF05 0B:AEF5: 02        .byte $02   ; 
- - - - - - 0x02EF06 0B:AEF6: 00        .byte $00   ; 
- - - - - - 0x02EF07 0B:AEF7: 00        .byte $00   ; 
; 28 
- D 1 - I - 0x02EF08 0B:AEF8: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02EF09 0B:AEF9: 00        .byte $00   ; 
- - - - - - 0x02EF0A 0B:AEFA: 00        .byte $00   ; 
- - - - - - 0x02EF0B 0B:AEFB: 00        .byte $00   ; 
; 29 
- D 1 - I - 0x02EF0C 0B:AEFC: 04        .byte con_BD4F_04   ; 
- D 1 - I - 0x02EF0D 0B:AEFD: 0A        .byte $0A   ; 
- - - - - - 0x02EF0E 0B:AEFE: 00        .byte $00   ; 
- - - - - - 0x02EF0F 0B:AEFF: 00        .byte $00   ; 
; 2A 
- D 1 - I - 0x02EF10 0B:AF00: 68        .byte con_BD4F_68   ; 
- D 1 - I - 0x02EF11 0B:AF01: 00        .byte $00   ; 
- D 1 - I - 0x02EF12 0B:AF02: 67        .byte $67   ; 
- - - - - - 0x02EF13 0B:AF03: 00        .byte $00   ; 
; 2B 
- D 1 - I - 0x02EF14 0B:AF04: 8A        .byte con_BD4F_8A   ; 
- - - - - - 0x02EF15 0B:AF05: 00        .byte $00   ; 
- - - - - - 0x02EF16 0B:AF06: 00        .byte $00   ; 
- - - - - - 0x02EF17 0B:AF07: 00        .byte $00   ; 
; 2C 
- D 1 - I - 0x02EF18 0B:AF08: A8        .byte con_BD4F_A8   ; 
- D 1 - I - 0x02EF19 0B:AF09: C0        .byte $C0   ; 
- - - - - - 0x02EF1A 0B:AF0A: 00        .byte $00   ; 
- - - - - - 0x02EF1B 0B:AF0B: 00        .byte $00   ; 



_off034_AF0C_1D:
; 00 
- D 1 - I - 0x02EF1C 0B:AF0C: 96        .byte con_BD4F_96   ; 
- - - - - - 0x02EF1D 0B:AF0D: 00        .byte $00   ; 
- - - - - - 0x02EF1E 0B:AF0E: 00        .byte $00   ; 
- - - - - - 0x02EF1F 0B:AF0F: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02EF20 0B:AF10: 50        .byte con_BD4F_50   ; 
- D 1 - I - 0x02EF21 0B:AF11: 00        .byte $00   ; 
- - - - - - 0x02EF22 0B:AF12: 00        .byte $00   ; 
- - - - - - 0x02EF23 0B:AF13: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02EF24 0B:AF14: 53        .byte con_BD4F_53   ; 
- - - - - - 0x02EF25 0B:AF15: 00        .byte $00   ; 
- - - - - - 0x02EF26 0B:AF16: 00        .byte $00   ; 
- - - - - - 0x02EF27 0B:AF17: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02EF28 0B:AF18: 51        .byte con_BD4F_51   ; 
- - - - - - 0x02EF29 0B:AF19: 00        .byte $00   ; 
- - - - - - 0x02EF2A 0B:AF1A: 00        .byte $00   ; 
- - - - - - 0x02EF2B 0B:AF1B: 00        .byte $00   ; 
; 04 
- D 1 - I - 0x02EF2C 0B:AF1C: 01        .byte con_BD4F_01   ; 
- - - - - - 0x02EF2D 0B:AF1D: 00        .byte $00   ; 
- - - - - - 0x02EF2E 0B:AF1E: 00        .byte $00   ; 
- - - - - - 0x02EF2F 0B:AF1F: 00        .byte $00   ; 
; 05 
- D 1 - I - 0x02EF30 0B:AF20: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EF31 0B:AF21: 10        .byte $10   ; 
- - - - - - 0x02EF32 0B:AF22: 00        .byte $00   ; 
- - - - - - 0x02EF33 0B:AF23: 00        .byte $00   ; 
; 06 
- D 1 - I - 0x02EF34 0B:AF24: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02EF35 0B:AF25: 00        .byte $00   ; 
- - - - - - 0x02EF36 0B:AF26: 00        .byte $00   ; 
- - - - - - 0x02EF37 0B:AF27: 00        .byte $00   ; 
; 07 
- D 1 - I - 0x02EF38 0B:AF28: 9A        .byte con_BD4F_9A   ; 
- D 1 - I - 0x02EF39 0B:AF29: 06        .byte $06   ; 
- - - - - - 0x02EF3A 0B:AF2A: 00        .byte $00   ; 
- - - - - - 0x02EF3B 0B:AF2B: 00        .byte $00   ; 
; 08 
- D 1 - I - 0x02EF3C 0B:AF2C: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EF3D 0B:AF2D: 10        .byte $10   ; 
- - - - - - 0x02EF3E 0B:AF2E: 00        .byte $00   ; 
- - - - - - 0x02EF3F 0B:AF2F: 00        .byte $00   ; 
; 09 
- D 1 - I - 0x02EF40 0B:AF30: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02EF41 0B:AF31: 00        .byte $00   ; 
- - - - - - 0x02EF42 0B:AF32: 00        .byte $00   ; 
- - - - - - 0x02EF43 0B:AF33: 00        .byte $00   ; 
; 0A 
- D 1 - I - 0x02EF44 0B:AF34: 50        .byte con_BD4F_50   ; 
- D 1 - I - 0x02EF45 0B:AF35: 01        .byte $01   ; 
- - - - - - 0x02EF46 0B:AF36: 00        .byte $00   ; 
- - - - - - 0x02EF47 0B:AF37: 00        .byte $00   ; 
; 0B 
- D 1 - I - 0x02EF48 0B:AF38: 51        .byte con_BD4F_51   ; 
- - - - - - 0x02EF49 0B:AF39: 00        .byte $00   ; 
- - - - - - 0x02EF4A 0B:AF3A: 00        .byte $00   ; 
- - - - - - 0x02EF4B 0B:AF3B: 00        .byte $00   ; 
; 0C 
- D 1 - I - 0x02EF4C 0B:AF3C: 22        .byte con_BD4F_22   ; 
- D 1 - I - 0x02EF4D 0B:AF3D: 08        .byte $08   ; 
- - - - - - 0x02EF4E 0B:AF3E: 00        .byte $00   ; 
- - - - - - 0x02EF4F 0B:AF3F: 00        .byte $00   ; 
; 0D 
- D 1 - I - 0x02EF50 0B:AF40: 05        .byte con_BD4F_05   ; 
- - - - - - 0x02EF51 0B:AF41: 00        .byte $00   ; 
- - - - - - 0x02EF52 0B:AF42: 00        .byte $00   ; 
- - - - - - 0x02EF53 0B:AF43: 00        .byte $00   ; 
; 0E 
- D 1 - I - 0x02EF54 0B:AF44: 08        .byte con_BD4F_08   ; 
- D 1 - I - 0x02EF55 0B:AF45: 00        .byte $00   ; 
- - - - - - 0x02EF56 0B:AF46: 00        .byte $00   ; 
- - - - - - 0x02EF57 0B:AF47: 00        .byte $00   ; 
; 0F 
- D 1 - I - 0x02EF58 0B:AF48: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02EF59 0B:AF49: 00        .byte $00   ; 
- - - - - - 0x02EF5A 0B:AF4A: 00        .byte $00   ; 
- - - - - - 0x02EF5B 0B:AF4B: 00        .byte $00   ; 
; 10 
- D 1 - I - 0x02EF5C 0B:AF4C: 04        .byte con_BD4F_04   ; 
- D 1 - I - 0x02EF5D 0B:AF4D: 00        .byte $00   ; 
- - - - - - 0x02EF5E 0B:AF4E: 00        .byte $00   ; 
- - - - - - 0x02EF5F 0B:AF4F: 00        .byte $00   ; 



_off034_AF50_16:
; 00 
- D 1 - I - 0x02EF60 0B:AF50: 13        .byte con_BD4F_13   ; 
- D 1 - I - 0x02EF61 0B:AF51: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02EF62 0B:AF52: 14        .byte $14   ; 
- - - - - - 0x02EF63 0B:AF53: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02EF64 0B:AF54: 54        .byte con_BD4F_54   ; 
- - - - - - 0x02EF65 0B:AF55: 00        .byte $00   ; 
- - - - - - 0x02EF66 0B:AF56: 00        .byte $00   ; 
- - - - - - 0x02EF67 0B:AF57: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02EF68 0B:AF58: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EF69 0B:AF59: 3A        .byte $3A   ; 
- - - - - - 0x02EF6A 0B:AF5A: 00        .byte $00   ; 
- - - - - - 0x02EF6B 0B:AF5B: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02EF6C 0B:AF5C: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02EF6D 0B:AF5D: 00        .byte $00   ; 
- - - - - - 0x02EF6E 0B:AF5E: 00        .byte $00   ; 
- - - - - - 0x02EF6F 0B:AF5F: 00        .byte $00   ; 
; 04 
- D 1 - I - 0x02EF70 0B:AF60: 53        .byte con_BD4F_53   ; 
- - - - - - 0x02EF71 0B:AF61: 00        .byte $00   ; 
- - - - - - 0x02EF72 0B:AF62: 00        .byte $00   ; 
- - - - - - 0x02EF73 0B:AF63: 00        .byte $00   ; 
; 05 
- D 1 - I - 0x02EF74 0B:AF64: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EF75 0B:AF65: 20        .byte $20   ; 
- - - - - - 0x02EF76 0B:AF66: 00        .byte $00   ; 
- - - - - - 0x02EF77 0B:AF67: 00        .byte $00   ; 
; 06 
- D 1 - I - 0x02EF78 0B:AF68: 07        .byte con_BD4F_07   ; 
- D 1 - I - 0x02EF79 0B:AF69: 00 70     .dbyt $0070 ; spd_X
- - - - - - 0x02EF7B 0B:AF6B: 00        .byte $00   ; 
; 07 
- D 1 - I - 0x02EF7C 0B:AF6C: 2F        .byte con_BD4F_2F   ; 
- - - - - - 0x02EF7D 0B:AF6D: 00        .byte $00   ; 
- - - - - - 0x02EF7E 0B:AF6E: 00        .byte $00   ; 
- - - - - - 0x02EF7F 0B:AF6F: 00        .byte $00   ; 
; 08 
- D 1 - I - 0x02EF80 0B:AF70: 05        .byte con_BD4F_05   ; 
- - - - - - 0x02EF81 0B:AF71: 00        .byte $00   ; 
- - - - - - 0x02EF82 0B:AF72: 00        .byte $00   ; 
- - - - - - 0x02EF83 0B:AF73: 00        .byte $00   ; 
; 09 
- D 1 - I - 0x02EF84 0B:AF74: 2D        .byte con_BD4F_2D   ; 
- - - - - - 0x02EF85 0B:AF75: 00        .byte $00   ; 
- - - - - - 0x02EF86 0B:AF76: 00        .byte $00   ; 
- - - - - - 0x02EF87 0B:AF77: 00        .byte $00   ; 
; 0A 
- D 1 - I - 0x02EF88 0B:AF78: 97        .byte con_BD4F_97   ; 
- - - - - - 0x02EF89 0B:AF79: 00        .byte $00   ; 
- - - - - - 0x02EF8A 0B:AF7A: 00        .byte $00   ; 
- - - - - - 0x02EF8B 0B:AF7B: 00        .byte $00   ; 
; 0B 
- D 1 - I - 0x02EF8C 0B:AF7C: 0D        .byte con_BD4F_0D   ; 
- D 1 - I - 0x02EF8D 0B:AF7D: 05        .byte $05   ; 
- - - - - - 0x02EF8E 0B:AF7E: 00        .byte $00   ; 
- - - - - - 0x02EF8F 0B:AF7F: 00        .byte $00   ; 
; 0C 
- D 1 - I - 0x02EF90 0B:AF80: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EF91 0B:AF81: 18        .byte $18   ; 
- - - - - - 0x02EF92 0B:AF82: 00        .byte $00   ; 
- - - - - - 0x02EF93 0B:AF83: 00        .byte $00   ; 
; 0D 
- D 1 - I - 0x02EF94 0B:AF84: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02EF95 0B:AF85: 00        .byte $00   ; 
- - - - - - 0x02EF96 0B:AF86: 00        .byte $00   ; 
- - - - - - 0x02EF97 0B:AF87: 00        .byte $00   ; 
; 0E 
- D 1 - I - 0x02EF98 0B:AF88: 08        .byte con_BD4F_08   ; 
- D 1 - I - 0x02EF99 0B:AF89: 03        .byte $03   ; 
- - - - - - 0x02EF9A 0B:AF8A: 00        .byte $00   ; 
- - - - - - 0x02EF9B 0B:AF8B: 00        .byte $00   ; 
; 0F 
- D 1 - I - 0x02EF9C 0B:AF8C: 04        .byte con_BD4F_04   ; 
- D 1 - I - 0x02EF9D 0B:AF8D: 06        .byte $06   ; 
- - - - - - 0x02EF9E 0B:AF8E: 00        .byte $00   ; 
- - - - - - 0x02EF9F 0B:AF8F: 00        .byte $00   ; 



_off034_AF90_30:
; 00 
- D 1 - I - 0x02EFA0 0B:AF90: 13        .byte con_BD4F_13   ; 
- D 1 - I - 0x02EFA1 0B:AF91: 0E        .byte con_obj_type_0E   ; 
- D 1 - I - 0x02EFA2 0B:AF92: 00        .byte $00   ; 
- - - - - - 0x02EFA3 0B:AF93: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02EFA4 0B:AF94: 55        .byte con_BD4F_55   ; 
- D 1 - I - 0x02EFA5 0B:AF95: 01        .byte $01   ; 
- - - - - - 0x02EFA6 0B:AF96: 00        .byte $00   ; 
- - - - - - 0x02EFA7 0B:AF97: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02EFA8 0B:AF98: A0        .byte con_BD4F_A0   ; 
- - - - - - 0x02EFA9 0B:AF99: 00        .byte $00   ; 
- - - - - - 0x02EFAA 0B:AF9A: 00        .byte $00   ; 
- - - - - - 0x02EFAB 0B:AF9B: 00        .byte $00   ; 



_off034_AF9C_31:
; 00 
- D 1 - I - 0x02EFAC 0B:AF9C: 13        .byte con_BD4F_13   ; 
- D 1 - I - 0x02EFAD 0B:AF9D: 0E        .byte con_obj_type_0E   ; 
- D 1 - I - 0x02EFAE 0B:AF9E: 02        .byte $02   ; 
- - - - - - 0x02EFAF 0B:AF9F: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02EFB0 0B:AFA0: 55        .byte con_BD4F_55   ; 
- D 1 - I - 0x02EFB1 0B:AFA1: 01        .byte $01   ; 
- - - - - - 0x02EFB2 0B:AFA2: 00        .byte $00   ; 
- - - - - - 0x02EFB3 0B:AFA3: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02EFB4 0B:AFA4: 00        .byte con_BD4F_00   ; 
- - - - - - 0x02EFB5 0B:AFA5: 80        .byte $80   ; 
- - - - - - 0x02EFB6 0B:AFA6: 00        .byte $00   ; 
- - - - - - 0x02EFB7 0B:AFA7: 00        .byte $00   ; 



_off034_AFA8_32:
; 00 
- D 1 - I - 0x02EFB8 0B:AFA8: 4E        .byte con_BD4F_4E   ; 
- - - - - - 0x02EFB9 0B:AFA9: 00        .byte $00   ; 
- - - - - - 0x02EFBA 0B:AFAA: 00        .byte $00   ; 
- - - - - - 0x02EFBB 0B:AFAB: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02EFBC 0B:AFAC: 55        .byte con_BD4F_55   ; 
- D 1 - I - 0x02EFBD 0B:AFAD: 01        .byte $01   ; 
- - - - - - 0x02EFBE 0B:AFAE: 00        .byte $00   ; 
- - - - - - 0x02EFBF 0B:AFAF: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02EFC0 0B:AFB0: 00        .byte con_BD4F_00   ; 
- - - - - - 0x02EFC1 0B:AFB1: 80        .byte $80   ; 
- - - - - - 0x02EFC2 0B:AFB2: 00        .byte $00   ; 
- - - - - - 0x02EFC3 0B:AFB3: 00        .byte $00   ; 



_off034_AFB4_58:
; 00 
- D 1 - I - 0x02EFC4 0B:AFB4: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02EFC5 0B:AFB5: 0E        .byte con_obj_type_0E   ; 
- D 1 - I - 0x02EFC6 0B:AFB6: 14        .byte $14   ; 
- - - - - - 0x02EFC7 0B:AFB7: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02EFC8 0B:AFB8: 0E        .byte con_BD4F_0E   ; 
- - - - - - 0x02EFC9 0B:AFB9: 00        .byte $00   ; 
- - - - - - 0x02EFCA 0B:AFBA: 00        .byte $00   ; 
- - - - - - 0x02EFCB 0B:AFBB: 00        .byte $00   ; 



_off034_AFBC_59:
; 00 
- D 1 - I - 0x02EFCC 0B:AFBC: 13        .byte con_BD4F_13   ; 
- D 1 - I - 0x02EFCD 0B:AFBD: 0E        .byte con_obj_type_0E   ; 
- D 1 - I - 0x02EFCE 0B:AFBE: 03        .byte $03   ; 
- - - - - - 0x02EFCF 0B:AFBF: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02EFD0 0B:AFC0: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02EFD1 0B:AFC1: 38        .byte $38   ; 
- - - - - - 0x02EFD2 0B:AFC2: 00        .byte $00   ; 
- - - - - - 0x02EFD3 0B:AFC3: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02EFD4 0B:AFC4: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02EFD5 0B:AFC5: 00        .byte $00   ; 
- - - - - - 0x02EFD6 0B:AFC6: 00        .byte $00   ; 
- - - - - - 0x02EFD7 0B:AFC7: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02EFD8 0B:AFC8: 2B        .byte con_BD4F_2B   ; 
- - - - - - 0x02EFD9 0B:AFC9: 00        .byte $00   ; 
- - - - - - 0x02EFDA 0B:AFCA: 00        .byte $00   ; 
- - - - - - 0x02EFDB 0B:AFCB: 00        .byte $00   ; 
; 04 
- D 1 - I - 0x02EFDC 0B:AFCC: 00        .byte con_BD4F_00   ; 
- - - - - - 0x02EFDD 0B:AFCD: 80        .byte $80   ; 
- - - - - - 0x02EFDE 0B:AFCE: 00        .byte $00   ; 
- - - - - - 0x02EFDF 0B:AFCF: 00        .byte $00   ; 



_off034_AFD0_5A:
; 00 
- D 1 - I - 0x02EFE0 0B:AFD0: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02EFE1 0B:AFD1: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02EFE2 0B:AFD2: 60        .byte $60   ; 
- - - - - - 0x02EFE3 0B:AFD3: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02EFE4 0B:AFD4: 2E        .byte con_BD4F_2E   ; 
- - - - - - 0x02EFE5 0B:AFD5: 00        .byte $00   ; 
- - - - - - 0x02EFE6 0B:AFD6: 00        .byte $00   ; 
- - - - - - 0x02EFE7 0B:AFD7: 00        .byte $00   ; 



_off034_AFD8_5B:
; 00 
- D 1 - I - 0x02EFE8 0B:AFD8: 13        .byte con_BD4F_13   ; 
- D 1 - I - 0x02EFE9 0B:AFD9: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02EFEA 0B:AFDA: 16        .byte $16   ; 
- - - - - - 0x02EFEB 0B:AFDB: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02EFEC 0B:AFDC: 32        .byte con_BD4F_32   ; 
- D 1 - I - 0x02EFED 0B:AFDD: 1A        .byte $1A   ; 
- - - - - - 0x02EFEE 0B:AFDE: 00        .byte $00   ; 
- - - - - - 0x02EFEF 0B:AFDF: 00        .byte $00   ; 



_off034_AFE0_5C:
; 00 
- D 1 - I - 0x02EFF0 0B:AFE0: 13        .byte con_BD4F_13   ; 
- D 1 - I - 0x02EFF1 0B:AFE1: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02EFF2 0B:AFE2: 18        .byte $18   ; 
- - - - - - 0x02EFF3 0B:AFE3: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02EFF4 0B:AFE4: 11        .byte con_BD4F_11   ; 
- D 1 - I - 0x02EFF5 0B:AFE5: 03        .byte $03   ; 
- D 1 - I - 0x02EFF6 0B:AFE6: 00        .byte $00   ; 
- - - - - - 0x02EFF7 0B:AFE7: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02EFF8 0B:AFE8: 12        .byte con_BD4F_12   ; 
- - - - - - 0x02EFF9 0B:AFE9: 00        .byte $00   ; 
- - - - - - 0x02EFFA 0B:AFEA: 00        .byte $00   ; 
- - - - - - 0x02EFFB 0B:AFEB: 00        .byte $00   ; 



_off034_AFEC_5D:
; 00 
- D 1 - I - 0x02EFFC 0B:AFEC: 13        .byte con_BD4F_13   ; 
- D 1 - I - 0x02EFFD 0B:AFED: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02EFFE 0B:AFEE: 1D        .byte $1D   ; 
- - - - - - 0x02EFFF 0B:AFEF: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02F000 0B:AFF0: 56        .byte con_BD4F_56   ; 
- D 1 - I - 0x02F001 0B:AFF1: 01        .byte $01   ; 
- - - - - - 0x02F002 0B:AFF2: 00        .byte $00   ; 
- - - - - - 0x02F003 0B:AFF3: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02F004 0B:AFF4: 0E        .byte con_BD4F_0E   ; 
- - - - - - 0x02F005 0B:AFF5: 00        .byte $00   ; 
- - - - - - 0x02F006 0B:AFF6: 00        .byte $00   ; 
- - - - - - 0x02F007 0B:AFF7: 00        .byte $00   ; 



_off034_AFF8_18:
_off034_AFF8_72:
; 00 
- D 1 - I - 0x02F008 0B:AFF8: 13        .byte con_BD4F_13   ; 
- D 1 - I - 0x02F009 0B:AFF9: 0E        .byte con_obj_type_0E   ; 
- D 1 - I - 0x02F00A 0B:AFFA: 04        .byte $04   ; 
- - - - - - 0x02F00B 0B:AFFB: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02F00C 0B:AFFC: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02F00D 0B:AFFD: 10        .byte $10   ; 
- - - - - - 0x02F00E 0B:AFFE: 00        .byte $00   ; 
- - - - - - 0x02F00F 0B:AFFF: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02F010 0B:B000: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02F011 0B:B001: 00        .byte $00   ; 
- - - - - - 0x02F012 0B:B002: 00        .byte $00   ; 
- - - - - - 0x02F013 0B:B003: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02F014 0B:B004: 27        .byte con_BD4F_27   ; 
- - - - - - 0x02F015 0B:B005: 00        .byte $00   ; 
- - - - - - 0x02F016 0B:B006: 00        .byte $00   ; 
- - - - - - 0x02F017 0B:B007: 00        .byte $00   ; 
; 04 
- D 1 - I - 0x02F018 0B:B008: 04        .byte con_BD4F_04   ; 
- D 1 - I - 0x02F019 0B:B009: 00        .byte $00   ; 
- - - - - - 0x02F01A 0B:B00A: 00        .byte $00   ; 
- - - - - - 0x02F01B 0B:B00B: 00        .byte $00   ; 



_off034_B00C_19:
; 00 
- D 1 - I - 0x02F01C 0B:B00C: 13        .byte con_BD4F_13   ; 
- D 1 - I - 0x02F01D 0B:B00D: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02F01E 0B:B00E: 19        .byte $19   ; 
- - - - - - 0x02F01F 0B:B00F: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02F020 0B:B010: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02F021 0B:B011: 10        .byte $10   ; 
- - - - - - 0x02F022 0B:B012: 00        .byte $00   ; 
- - - - - - 0x02F023 0B:B013: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02F024 0B:B014: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02F025 0B:B015: 00        .byte $00   ; 
- - - - - - 0x02F026 0B:B016: 00        .byte $00   ; 
- - - - - - 0x02F027 0B:B017: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02F028 0B:B018: 27        .byte con_BD4F_27   ; 
- - - - - - 0x02F029 0B:B019: 00        .byte $00   ; 
- - - - - - 0x02F02A 0B:B01A: 00        .byte $00   ; 
- - - - - - 0x02F02B 0B:B01B: 00        .byte $00   ; 



_off034_B01C_1A:
; 00 
- D 1 - I - 0x02F02C 0B:B01C: 13        .byte con_BD4F_13   ; 
- D 1 - I - 0x02F02D 0B:B01D: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02F02E 0B:B01E: 1A        .byte $1A   ; 
- - - - - - 0x02F02F 0B:B01F: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02F030 0B:B020: 6C        .byte con_BD4F_play_sound   ; 
- D 1 - I - 0x02F031 0B:B021: 27        .byte con_sound_kill_enemy   ; 
- - - - - - 0x02F032 0B:B022: 00        .byte $00   ; 
- - - - - - 0x02F033 0B:B023: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02F034 0B:B024: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02F035 0B:B025: 20        .byte $20   ; 
- - - - - - 0x02F036 0B:B026: 00        .byte $00   ; 
- - - - - - 0x02F037 0B:B027: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02F038 0B:B028: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02F039 0B:B029: 00        .byte $00   ; 
- - - - - - 0x02F03A 0B:B02A: 00        .byte $00   ; 
- - - - - - 0x02F03B 0B:B02B: 00        .byte $00   ; 
; 04 
- D 1 - I - 0x02F03C 0B:B02C: 27        .byte con_BD4F_27   ; 
- - - - - - 0x02F03D 0B:B02D: 00        .byte $00   ; 
- - - - - - 0x02F03E 0B:B02E: 00        .byte $00   ; 
- - - - - - 0x02F03F 0B:B02F: 00        .byte $00   ; 



_off034_B030_1B:
; 00 
- D 1 - I - 0x02F040 0B:B030: 30        .byte con_BD4F_30   ; 
- D 1 - I - 0x02F041 0B:B031: 00        .byte $00   ; 
- - - - - - 0x02F042 0B:B032: 00        .byte $00   ; 
- - - - - - 0x02F043 0B:B033: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02F044 0B:B034: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02F045 0B:B035: 0E        .byte con_obj_type_0E   ; 
- D 1 - I - 0x02F046 0B:B036: 46        .byte $46   ; 
- - - - - - 0x02F047 0B:B037: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02F048 0B:B038: 45        .byte con_BD4F_45   ; 
- D 1 - I - 0x02F049 0B:B039: 30        .byte $30   ; 
- - - - - - 0x02F04A 0B:B03A: 00        .byte $00   ; 
- - - - - - 0x02F04B 0B:B03B: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02F04C 0B:B03C: 46        .byte con_BD4F_46   ; 
- - - - - - 0x02F04D 0B:B03D: 00        .byte $00   ; 
- - - - - - 0x02F04E 0B:B03E: 00        .byte $00   ; 
- - - - - - 0x02F04F 0B:B03F: 00        .byte $00   ; 



_off034_B040_2A:
; 00 
- D 1 - I - 0x02F050 0B:B040: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02F051 0B:B041: 0E        .byte con_obj_type_0E   ; 
- D 1 - I - 0x02F052 0B:B042: 1A        .byte $1A   ; 
- - - - - - 0x02F053 0B:B043: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02F054 0B:B044: 45        .byte con_BD4F_45   ; 
- D 1 - I - 0x02F055 0B:B045: 20        .byte $20   ; 
- - - - - - 0x02F056 0B:B046: 00        .byte $00   ; 
- - - - - - 0x02F057 0B:B047: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02F058 0B:B048: 46        .byte con_BD4F_46   ; 
- - - - - - 0x02F059 0B:B049: 00        .byte $00   ; 
- - - - - - 0x02F05A 0B:B04A: 00        .byte $00   ; 
- - - - - - 0x02F05B 0B:B04B: 00        .byte $00   ; 



_off034_B04C_67:
; 00 
- D 1 - I - 0x02F05C 0B:B04C: 30        .byte con_BD4F_30   ; 
- D 1 - I - 0x02F05D 0B:B04D: 02        .byte $02   ; 
- - - - - - 0x02F05E 0B:B04E: 00        .byte $00   ; 
- - - - - - 0x02F05F 0B:B04F: 00        .byte $00   ; 



_off034_B050_62:
; 00 
- D 1 - I - 0x02F060 0B:B050: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02F061 0B:B051: 0E        .byte con_obj_type_0E   ; 
- D 1 - I - 0x02F062 0B:B052: 1A        .byte $1A   ; 
- - - - - - 0x02F063 0B:B053: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02F064 0B:B054: 45        .byte con_BD4F_45   ; 
- D 1 - I - 0x02F065 0B:B055: 10        .byte $10   ; 
- - - - - - 0x02F066 0B:B056: 00        .byte $00   ; 
- - - - - - 0x02F067 0B:B057: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02F068 0B:B058: 46        .byte con_BD4F_46   ; 
- - - - - - 0x02F069 0B:B059: 00        .byte $00   ; 
- - - - - - 0x02F06A 0B:B05A: 00        .byte $00   ; 
- - - - - - 0x02F06B 0B:B05B: 00        .byte $00   ; 



_off034_B05C_5E:
; 00 
- D 1 - I - 0x02F06C 0B:B05C: 13        .byte con_BD4F_13   ; 
- D 1 - I - 0x02F06D 0B:B05D: 08        .byte con_obj_type_08   ; 
- D 1 - I - 0x02F06E 0B:B05E: 1F        .byte $1F   ; 
- - - - - - 0x02F06F 0B:B05F: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02F070 0B:B060: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02F071 0B:B061: 28        .byte $28   ; 
- - - - - - 0x02F072 0B:B062: 00        .byte $00   ; 
- - - - - - 0x02F073 0B:B063: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02F074 0B:B064: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02F075 0B:B065: 00        .byte $00   ; 
- - - - - - 0x02F076 0B:B066: 00        .byte $00   ; 
- - - - - - 0x02F077 0B:B067: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02F078 0B:B068: 5A        .byte con_BD4F_5A   ; 
- - - - - - 0x02F079 0B:B069: 08        .byte $08   ; 
- - - - - - 0x02F07A 0B:B06A: 00        .byte $00   ; 
- - - - - - 0x02F07B 0B:B06B: 00        .byte $00   ; 



_off034_B06C_5F:
; 00 
- D 1 - I - 0x02F07C 0B:B06C: 13        .byte con_BD4F_13   ; 
- D 1 - I - 0x02F07D 0B:B06D: 12        .byte con_obj_type_12   ; 
- D 1 - I - 0x02F07E 0B:B06E: 04        .byte $04   ; 
- - - - - - 0x02F07F 0B:B06F: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02F080 0B:B070: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02F081 0B:B071: FF        .byte $FF   ; 
- - - - - - 0x02F082 0B:B072: 00        .byte $00   ; 
- - - - - - 0x02F083 0B:B073: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02F084 0B:B074: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02F085 0B:B075: 00        .byte $00   ; 
- - - - - - 0x02F086 0B:B076: 00        .byte $00   ; 
- - - - - - 0x02F087 0B:B077: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02F088 0B:B078: 0B        .byte con_BD4F_0B   ; 
- D 1 - I - 0x02F089 0B:B079: 12        .byte con_obj_type_12   ; 
- D 1 - I - 0x02F08A 0B:B07A: 32        .byte $32   ; 
- - - - - - 0x02F08B 0B:B07B: 00        .byte $00   ; 
; 04 
- D 1 - I - 0x02F08C 0B:B07C: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02F08D 0B:B07D: 0A        .byte $0A   ; 
- - - - - - 0x02F08E 0B:B07E: 00        .byte $00   ; 
- - - - - - 0x02F08F 0B:B07F: 00        .byte $00   ; 
; 05 
- D 1 - I - 0x02F090 0B:B080: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02F091 0B:B081: 00        .byte $00   ; 
- - - - - - 0x02F092 0B:B082: 00        .byte $00   ; 
- - - - - - 0x02F093 0B:B083: 00        .byte $00   ; 
; 06 
- D 1 - I - 0x02F094 0B:B084: 27        .byte con_BD4F_27   ; 
- - - - - - 0x02F095 0B:B085: 00        .byte $00   ; 
- - - - - - 0x02F096 0B:B086: 00        .byte $00   ; 
- - - - - - 0x02F097 0B:B087: 00        .byte $00   ; 



_off034_B088_4E:
; 00 
- D 1 - I - 0x02F098 0B:B088: 4F        .byte con_BD4F_4F   ; 
- - - - - - 0x02F099 0B:B089: 00        .byte $00   ; 
- - - - - - 0x02F09A 0B:B08A: 00        .byte $00   ; 
- - - - - - 0x02F09B 0B:B08B: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02F09C 0B:B08C: 39        .byte con_BD4F_39   ; 
- D 1 - I - 0x02F09D 0B:B08D: 00 40     .dbyt $0040 ; spd_Y
- - - - - - 0x02F09F 0B:B08F: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02F0A0 0B:B090: 69        .byte con_BD4F_69   ; 
- D 1 - I - 0x02F0A1 0B:B091: 00        .byte $00   ; 
- D 1 - I - 0x02F0A2 0B:B092: 01        .byte $01   ; 
- - - - - - 0x02F0A3 0B:B093: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02F0A4 0B:B094: 6A        .byte con_BD4F_6A   ; 
- - - - - - 0x02F0A5 0B:B095: 00        .byte $00   ; 
- - - - - - 0x02F0A6 0B:B096: 00        .byte $00   ; 
- - - - - - 0x02F0A7 0B:B097: 00        .byte $00   ; 
; 04 
- D 1 - I - 0x02F0A8 0B:B098: 38        .byte con_BD4F_38   ; 
- - - - - - 0x02F0A9 0B:B099: 00        .byte $00   ; 
- - - - - - 0x02F0AA 0B:B09A: 00        .byte $00   ; 
- - - - - - 0x02F0AB 0B:B09B: 00        .byte $00   ; 
; 05 
- D 1 - I - 0x02F0AC 0B:B09C: 27        .byte con_BD4F_27   ; 
- - - - - - 0x02F0AD 0B:B09D: 00        .byte $00   ; 
- - - - - - 0x02F0AE 0B:B09E: 00        .byte $00   ; 
- - - - - - 0x02F0AF 0B:B09F: 00        .byte $00   ; 



_off034_B0A0_33:
_off034_B0A0_34:
_off034_B0A0_35:
_off034_B0A0_36:
_off034_B0A0_37:
_off034_B0A0_38:
_off034_B0A0_39:
_off034_B0A0_3A:
_off034_B0A0_3B:
_off034_B0A0_3C:
_off034_B0A0_3D:
_off034_B0A0_3E:
_off034_B0A0_3F:
_off034_B0A0_40:
_off034_B0A0_41:
_off034_B0A0_42:
_off034_B0A0_4C:
_off034_B0A0_4D:
_off034_B0A0_4F:
_off034_B0A0_50:
; 00 
- D 1 - I - 0x02F0B0 0B:B0A0: 4F        .byte con_BD4F_4F   ; 
- - - - - - 0x02F0B1 0B:B0A1: 00        .byte $00   ; 
- - - - - - 0x02F0B2 0B:B0A2: 00        .byte $00   ; 
- - - - - - 0x02F0B3 0B:B0A3: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02F0B4 0B:B0A4: 39        .byte con_BD4F_39   ; 
- D 1 - I - 0x02F0B5 0B:B0A5: 01 00     .dbyt $0100 ; spd_Y
- - - - - - 0x02F0B7 0B:B0A7: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02F0B8 0B:B0A8: 37        .byte con_BD4F_37   ; 
- - - - - - 0x02F0B9 0B:B0A9: 00        .byte $00   ; 
- - - - - - 0x02F0BA 0B:B0AA: 00        .byte $00   ; 
- - - - - - 0x02F0BB 0B:B0AB: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02F0BC 0B:B0AC: 38        .byte con_BD4F_38   ; 
- - - - - - 0x02F0BD 0B:B0AD: 00        .byte $00   ; 
- - - - - - 0x02F0BE 0B:B0AE: 00        .byte $00   ; 
- - - - - - 0x02F0BF 0B:B0AF: 00        .byte $00   ; 
; 04 
- D 1 - I - 0x02F0C0 0B:B0B0: 27        .byte con_BD4F_27   ; 
- - - - - - 0x02F0C1 0B:B0B1: 00        .byte $00   ; 
- - - - - - 0x02F0C2 0B:B0B2: 00        .byte $00   ; 
- - - - - - 0x02F0C3 0B:B0B3: 00        .byte $00   ; 



_off034_B0B4_43:
_off034_B0B4_44:
_off034_B0B4_45:
_off034_B0B4_46:
_off034_B0B4_47:
_off034_B0B4_48:
_off034_B0B4_49:
_off034_B0B4_4A:
_off034_B0B4_4B:
; 00 
- D 1 - I - 0x02F0C4 0B:B0B4: 4F        .byte con_BD4F_4F   ; 
- - - - - - 0x02F0C5 0B:B0B5: 00        .byte $00   ; 
- - - - - - 0x02F0C6 0B:B0B6: 00        .byte $00   ; 
- - - - - - 0x02F0C7 0B:B0B7: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x02F0C8 0B:B0B8: 39        .byte con_BD4F_39   ; 
- D 1 - I - 0x02F0C9 0B:B0B9: 01 00     .dbyt $0100 ; spd_Y
- - - - - - 0x02F0CB 0B:B0BB: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x02F0CC 0B:B0BC: 37        .byte con_BD4F_37   ; 
- - - - - - 0x02F0CD 0B:B0BD: 00        .byte $00   ; 
- - - - - - 0x02F0CE 0B:B0BE: 00        .byte $00   ; 
- - - - - - 0x02F0CF 0B:B0BF: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x02F0D0 0B:B0C0: 38        .byte con_BD4F_38   ; 
- - - - - - 0x02F0D1 0B:B0C1: 00        .byte $00   ; 
- - - - - - 0x02F0D2 0B:B0C2: 00        .byte $00   ; 
- - - - - - 0x02F0D3 0B:B0C3: 00        .byte $00   ; 
; 04 
- D 1 - I - 0x02F0D4 0B:B0C4: 87        .byte con_BD4F_87   ; 
- - - - - - 0x02F0D5 0B:B0C5: 00        .byte $00   ; 
- - - - - - 0x02F0D6 0B:B0C6: 00        .byte $00   ; 
- - - - - - 0x02F0D7 0B:B0C7: 00        .byte $00   ; 
; 05 
- D 1 - I - 0x02F0D8 0B:B0C8: 1F        .byte con_BD4F_1F   ; 
- D 1 - I - 0x02F0D9 0B:B0C9: 38        .byte $38   ; 
- - - - - - 0x02F0DA 0B:B0CA: 00        .byte $00   ; 
- - - - - - 0x02F0DB 0B:B0CB: 00        .byte $00   ; 
; 06 
- D 1 - I - 0x02F0DC 0B:B0CC: 20        .byte con_BD4F_20   ; 
- - - - - - 0x02F0DD 0B:B0CD: 00        .byte $00   ; 
- - - - - - 0x02F0DE 0B:B0CE: 00        .byte $00   ; 
- - - - - - 0x02F0DF 0B:B0CF: 00        .byte $00   ; 
; 07 
- D 1 - I - 0x02F0E0 0B:B0D0: 27        .byte con_BD4F_27   ; 
- - - - - - 0x02F0E1 0B:B0D1: 00        .byte $00   ; 
- - - - - - 0x02F0E2 0B:B0D2: 00        .byte $00   ; 
- - - - - - 0x02F0E3 0B:B0D3: 00        .byte $00   ; 



_off034_B0D4_51:
_off034_B0D4_52:
_off034_B0D4_53:
; 00 
- - - - - - 0x02F0E4 0B:B0D4: 00        .byte con_BD4F_00   ; 
- - - - - - 0x02F0E5 0B:B0D5: 00        .byte $00   ; 
- - - - - - 0x02F0E6 0B:B0D6: 00        .byte $00   ; 
- - - - - - 0x02F0E7 0B:B0D7: 00        .byte $00   ; 



_off034_B0D8_57:
; 00 
- D 1 - I - 0x02F0E8 0B:B0D8: 9B        .byte con_BD4F_9B   ; 
- - - - - - 0x02F0E9 0B:B0D9: 00        .byte $00   ; 
- - - - - - 0x02F0EA 0B:B0DA: 00        .byte $00   ; 
- - - - - - 0x02F0EB 0B:B0DB: 00        .byte $00   ; 


; ???
tbl_B0DC:
- D 1 - - - 0x02F0EC 0B:B0DC: 01        .byte $01   ; 
tbl_B0DD:
- D 1 - - - 0x02F0ED 0B:B0DD: 00        .byte $00   ; 
- - - - - - 0x02F0EE 0B:B0DE: 01        .byte $01   ; 
- - - - - - 0x02F0EF 0B:B0DF: 00        .byte $00   ; 
- - - - - - 0x02F0F0 0B:B0E0: 00        .byte $00   ; 
- - - - - - 0x02F0F1 0B:B0E1: 00        .byte $00   ; 
- - - - - - 0x02F0F2 0B:B0E2: 00        .byte $00   ; 
- - - - - - 0x02F0F3 0B:B0E3: 00        .byte $00   ; 
- - - - - - 0x02F0F4 0B:B0E4: 01        .byte $01   ; 
- - - - - - 0x02F0F5 0B:B0E5: 0C        .byte $0C   ; 
- - - - - - 0x02F0F6 0B:B0E6: 71        .byte $71   ; 
- - - - - - 0x02F0F7 0B:B0E7: 7C        .byte $7C   ; 
- D 1 - - - 0x02F0F8 0B:B0E8: 01        .byte $01   ; 
- D 1 - - - 0x02F0F9 0B:B0E9: 00        .byte $00   ; 
- - - - - - 0x02F0FA 0B:B0EA: 01        .byte $01   ; 
- - - - - - 0x02F0FB 0B:B0EB: 00        .byte $00   ; 
- D 1 - - - 0x02F0FC 0B:B0EC: 01        .byte $01   ; 
- D 1 - - - 0x02F0FD 0B:B0ED: 00        .byte $00   ; 
- - - - - - 0x02F0FE 0B:B0EE: 01        .byte $01   ; 
- - - - - - 0x02F0FF 0B:B0EF: 0C        .byte $0C   ; 
- - - - - - 0x02F100 0B:B0F0: 10        .byte $10   ; 
- - - - - - 0x02F101 0B:B0F1: 10        .byte $10   ; 
- D 1 - - - 0x02F102 0B:B0F2: 01        .byte $01   ; 
- D 1 - - - 0x02F103 0B:B0F3: FC        .byte $FC   ; 
- - - - - - 0x02F104 0B:B0F4: 01        .byte $01   ; 
- - - - - - 0x02F105 0B:B0F5: 1C        .byte $1C   ; 
- D 1 - - - 0x02F106 0B:B0F6: 01        .byte $01   ; 
- - - - - - 0x02F107 0B:B0F7: 0C        .byte $0C   ; 
- D 1 - - - 0x02F108 0B:B0F8: 01        .byte $01   ; 
- D 1 - - - 0x02F109 0B:B0F9: 0C        .byte $0C   ; 
- D 1 - - - 0x02F10A 0B:B0FA: 01        .byte $01   ; 
- D 1 - - - 0x02F10B 0B:B0FB: 0C        .byte $0C   ; 
- D 1 - - - 0x02F10C 0B:B0FC: 01        .byte $01   ; 
- - - - - - 0x02F10D 0B:B0FD: 0C        .byte $0C   ; 
- D 1 - - - 0x02F10E 0B:B0FE: 01        .byte $01   ; 
- D 1 - - - 0x02F10F 0B:B0FF: 00        .byte $00   ; 



loc_B100:
; bzk optimize
C D 1 - - - 0x02F110 0B:B100: 4C D0 B9  JMP loc_B9D0



loc_B103:
; bzk optimize
C D 1 - - - 0x02F113 0B:B103: 4C 88 B8  JMP loc_B888



loc_B106:
C D 1 - - - 0x02F116 0B:B106: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x02F119 0B:B109: D0 03     BNE bra_B10E_RTS
C - - - - - 0x02F11B 0B:B10B: 4C 7C B1  JMP loc_B17C
bra_B10E_RTS:
C - - - - - 0x02F11E 0B:B10E: 60        RTS



loc_B10F:
C D 1 - - - 0x02F11F 0B:B10F: A5 81     LDA ram_0081
C - - - - - 0x02F121 0B:B111: C9 01     CMP #$01
C - - - - - 0x02F123 0B:B113: F0 1D     BEQ bra_B132
C - - - - - 0x02F125 0B:B115: 20 4C B8  JSR sub_B84C
C - - - - - 0x02F128 0B:B118: B0 18     BCS bra_B132
C - - - - - 0x02F12A 0B:B11A: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x02F12D 0B:B11D: C9 7D     CMP #$7D
C - - - - - 0x02F12F 0B:B11F: F0 2E     BEQ bra_B14F
C - - - - - 0x02F131 0B:B121: C9 82     CMP #$82
C - - - - - 0x02F133 0B:B123: F0 10     BEQ bra_B135
C - - - - - 0x02F135 0B:B125: 38        SEC
C - - - - - 0x02F136 0B:B126: E9 79     SBC #$79
C - - - - - 0x02F138 0B:B128: 0A        ASL
C - - - - - 0x02F139 0B:B129: A8        TAY
C - - - - - 0x02F13A 0B:B12A: B9 DD B0  LDA tbl_B0DD,Y
C - - - - - 0x02F13D 0B:B12D: 85 81     STA ram_0081
C - - - - - 0x02F13F 0B:B12F: 4C 50 B2  JMP loc_B250
bra_B132:
C - - - - - 0x02F142 0B:B132: 4C 5F B2  JMP loc_B25F
bra_B135:
C - - - - - 0x02F145 0B:B135: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x02F148 0B:B138: D0 09     BNE bra_B143
C - - - - - 0x02F14A 0B:B13A: BD 57 06  LDA ram_obj_0658,X
C - - - - - 0x02F14D 0B:B13D: F0 0D     BEQ bra_B14C
C - - - - - 0x02F14F 0B:B13F: A9 1C     LDA #$1C
C - - - - - 0x02F151 0B:B141: D0 07     BNE bra_B14A
bra_B143:
- - - - - - 0x02F153 0B:B143: BD 57 06  LDA ram_obj_0658,X
- - - - - - 0x02F156 0B:B146: F0 04     BEQ bra_B14C
bra_B148:
C - - - - - 0x02F158 0B:B148: A9 0C     LDA #$0C
bra_B14A:
C - - - - - 0x02F15A 0B:B14A: 85 81     STA ram_0081
bra_B14C:
C - - - - - 0x02F15C 0B:B14C: 4C 50 B2  JMP loc_B250
bra_B14F:
C - - - - - 0x02F15F 0B:B14F: BD 57 06  LDA ram_obj_0658,X
C - - - - - 0x02F162 0B:B152: F0 F8     BEQ bra_B14C
C - - - - - 0x02F164 0B:B154: D0 F2     BNE bra_B148    ; jmp
bra_B156:
C - - - - - 0x02F166 0B:B156: BD 57 06  LDA ram_obj_0658,X
C - - - - - 0x02F169 0B:B159: 4C BF B1  JMP loc_B1BF



loc_B15C:
; in
    ; A = object id
C D 1 - - - 0x02F16C 0B:B15C: C9 83     CMP #$83
C - - - - - 0x02F16E 0B:B15E: D0 03     BNE bra_B163
C - - - - - 0x02F170 0B:B160: 4C 2E B2  JMP loc_B22E
bra_B163:
C - - - - - 0x02F173 0B:B163: C9 85     CMP #$85
C - - - - - 0x02F175 0B:B165: F0 68     BEQ bra_B1CF
C - - - - - 0x02F177 0B:B167: C9 7A     CMP #$7A
C - - - - - 0x02F179 0B:B169: D0 03     BNE bra_B16E
C - - - - - 0x02F17B 0B:B16B: 4C 00 B1  JMP loc_B100
bra_B16E:
C - - - - - 0x02F17E 0B:B16E: C9 7F     CMP #$7F
C - - - - - 0x02F180 0B:B170: D0 03     BNE bra_B175
C - - - - - 0x02F182 0B:B172: 4C 06 B1  JMP loc_B106
bra_B175:
C - - - - - 0x02F185 0B:B175: C9 80     CMP #$80
C - - - - - 0x02F187 0B:B177: D0 03     BNE bra_B17C
C - - - - - 0x02F189 0B:B179: 4C 03 B1  JMP loc_B103
bra_B17C:
loc_B17C:
C D 1 - - - 0x02F18C 0B:B17C: 20 4C B6  JSR sub_B64C
C - - - - - 0x02F18F 0B:B17F: 90 03     BCC bra_B184
C - - - - - 0x02F191 0B:B181: 4C 0F B1  JMP loc_B10F
bra_B184:
C - - - - - 0x02F194 0B:B184: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x02F197 0B:B187: C9 7E     CMP #$7E
C - - - - - 0x02F199 0B:B189: F0 14     BEQ bra_B19F
C - - - - - 0x02F19B 0B:B18B: C9 84     CMP #$84
C - - - - - 0x02F19D 0B:B18D: F0 10     BEQ bra_B19F
C - - - - - 0x02F19F 0B:B18F: C9 86     CMP #$86
C - - - - - 0x02F1A1 0B:B191: F0 0C     BEQ bra_B19F
C - - - - - 0x02F1A3 0B:B193: C9 87     CMP #$87
C - - - - - 0x02F1A5 0B:B195: F0 08     BEQ bra_B19F
C - - - - - 0x02F1A7 0B:B197: C9 8A     CMP #$8A
C - - - - - 0x02F1A9 0B:B199: F0 04     BEQ bra_B19F
C - - - - - 0x02F1AB 0B:B19B: C9 88     CMP #$88
C - - - - - 0x02F1AD 0B:B19D: D0 0C     BNE bra_B1AB
bra_B19F:
C - - - - - 0x02F1AF 0B:B19F: A4 AF     LDY ram_00AF
C - - - - - 0x02F1B1 0B:B1A1: F0 08     BEQ bra_B1AB
C - - - - - 0x02F1B3 0B:B1A3: E4 B8     CPX ram_00B8
C - - - - - 0x02F1B5 0B:B1A5: F0 8B     BEQ bra_B132
- - - - - - 0x02F1B7 0B:B1A7: A9 00     LDA #$00
- - - - - - 0x02F1B9 0B:B1A9: 85 AF     STA ram_00AF
bra_B1AB:
C - - - - - 0x02F1BB 0B:B1AB: C9 7D     CMP #$7D
C - - - - - 0x02F1BD 0B:B1AD: F0 A7     BEQ bra_B156
C - - - - - 0x02F1BF 0B:B1AF: C9 82     CMP #$82
C - - - - - 0x02F1C1 0B:B1B1: F0 A3     BEQ bra_B156
C - - - - - 0x02F1C3 0B:B1B3: C9 83     CMP #$83
C - - - - - 0x02F1C5 0B:B1B5: F0 12     BEQ bra_B1C9
C - - - - - 0x02F1C7 0B:B1B7: 38        SEC
C - - - - - 0x02F1C8 0B:B1B8: E9 79     SBC #$79
C - - - - - 0x02F1CA 0B:B1BA: 0A        ASL
C - - - - - 0x02F1CB 0B:B1BB: A8        TAY
C - - - - - 0x02F1CC 0B:B1BC: B9 DC B0  LDA tbl_B0DC,Y
loc_B1BF:
C D 1 - - - 0x02F1CF 0B:B1BF: 85 81     STA ram_0081
C - - - - - 0x02F1D1 0B:B1C1: A9 10     LDA #$10
C - - - - - 0x02F1D3 0B:B1C3: 9D 69 06  STA ram_obj_066A,X
C - - - - - 0x02F1D6 0B:B1C6: 4C 50 B2  JMP loc_B250
bra_B1C9:
- - - - - - 0x02F1D9 0B:B1C9: BD 57 06  LDA ram_obj_0658,X
- - - - - - 0x02F1DC 0B:B1CC: 4C BF B1  JMP loc_B1BF
bra_B1CF:
C - - - - - 0x02F1DF 0B:B1CF: A9 00     LDA #$00
C - - - - - 0x02F1E1 0B:B1D1: 85 93     STA ram_0093_speed_config
C - - - - - 0x02F1E3 0B:B1D3: 4C EE B8  JMP loc_B8EE
bra_B1D6:
C - - - - - 0x02F1E6 0B:B1D6: 20 63 B6  JSR sub_B663
C - - - - - 0x02F1E9 0B:B1D9: B0 0E     BCS bra_B1E9
C - - - - - 0x02F1EB 0B:B1DB: 20 09 B8  JSR sub_B809
C - - - - - 0x02F1EE 0B:B1DE: 90 03     BCC bra_B1E3
C - - - - - 0x02F1F0 0B:B1E0: 4C 5F B2  JMP loc_B25F
bra_B1E3:
C - - - - - 0x02F1F3 0B:B1E3: A9 01     LDA #$01
C - - - - - 0x02F1F5 0B:B1E5: 85 81     STA ram_0081
C - - - - - 0x02F1F7 0B:B1E7: D0 67     BNE bra_B250    ; jmp
bra_B1E9:
C - - - - - 0x02F1F9 0B:B1E9: A5 81     LDA ram_0081
C - - - - - 0x02F1FB 0B:B1EB: C9 01     CMP #$01
C - - - - - 0x02F1FD 0B:B1ED: F0 70     BEQ bra_B25F
C - - - - - 0x02F1FF 0B:B1EF: 20 77 B3  JSR sub_B377
C - - - - - 0x02F202 0B:B1F2: B0 6B     BCS bra_B25F    ; if too far
; if close enough
C - - - - - 0x02F204 0B:B1F4: A9 02     LDA #$02
C - - - - - 0x02F206 0B:B1F6: 85 81     STA ram_0081
C - - - - - 0x02F208 0B:B1F8: D0 56     BNE bra_B250    ; jmp
bra_B1FA_RTS:
C - - - - - 0x02F20A 0B:B1FA: 60        RTS



sub_0x02F20B:
C - - - - - 0x02F20B 0B:B1FB: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x02F20E 0B:B1FE: 29 11     AND #con_obj_flag_01 + con_obj_flag_10
C - - - - - 0x02F210 0B:B200: D0 F8     BNE bra_B1FA_RTS
C - - - - - 0x02F212 0B:B202: BD 00 04  LDA ram_obj_anim_id,X
C - - - - - 0x02F215 0B:B205: F0 F3     BEQ bra_B1FA_RTS
C - - - - - 0x02F217 0B:B207: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x02F21A 0B:B20A: C9 1C     CMP #$1C
C - - - - - 0x02F21C 0B:B20C: F0 EC     BEQ bra_B1FA_RTS
C - - - - - 0x02F21E 0B:B20E: C9 93     CMP #$93
C - - - - - 0x02F220 0B:B210: B0 E8     BCS bra_B1FA_RTS
C - - - - - 0x02F222 0B:B212: C9 90     CMP #$90
C - - - - - 0x02F224 0B:B214: B0 49     BCS bra_B25F
C - - - - - 0x02F226 0B:B216: C9 68     CMP #$68
C - - - - - 0x02F228 0B:B218: 90 04     BCC bra_B21E
C - - - - - 0x02F22A 0B:B21A: C9 71     CMP #$71
C - - - - - 0x02F22C 0B:B21C: 90 DC     BCC bra_B1FA_RTS
bra_B21E:
C - - - - - 0x02F22E 0B:B21E: A5 81     LDA ram_0081
C - - - - - 0x02F230 0B:B220: 29 F0     AND #$F0
C - - - - - 0x02F232 0B:B222: D0 3B     BNE bra_B25F
C - - - - - 0x02F234 0B:B224: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x02F237 0B:B227: C9 79     CMP #$79
C - - - - - 0x02F239 0B:B229: 90 03     BCC bra_B22E    ; < 79
; 79+
C - - - - - 0x02F23B 0B:B22B: 4C 5C B1  JMP loc_B15C
bra_B22E:
loc_B22E:
C D 1 - - - 0x02F23E 0B:B22E: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x02F241 0B:B231: 29 02     AND #con_obj_flag_02
C - - - - - 0x02F243 0B:B233: D0 A1     BNE bra_B1D6
C - - - - - 0x02F245 0B:B235: A5 80     LDA ram_invinc_timer
C - - - - - 0x02F247 0B:B237: D0 26     BNE bra_B25F
C - - - - - 0x02F249 0B:B239: 20 77 B3  JSR sub_B377
C - - - - - 0x02F24C 0B:B23C: B0 21     BCS bra_B25F    ; if too far
; if close enough
C - - - - - 0x02F24E 0B:B23E: BD 57 06  LDA ram_obj_0658,X
C - - - - - 0x02F251 0B:B241: 85 81     STA ram_0081
C - - - - - 0x02F253 0B:B243: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x02F256 0B:B246: C9 49     CMP #$49
C - - - - - 0x02F258 0B:B248: D0 06     BNE bra_B250
C - - - - - 0x02F25A 0B:B24A: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x02F25D 0B:B24D: 20 81 B5  JSR sub_B581
bra_B250:
loc_B250:
C D 1 - - - 0x02F260 0B:B250: 86 91     STX ram_0091
C - - - - - 0x02F262 0B:B252: A0 00     LDY #$00
C - - - - - 0x02F264 0B:B254: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x02F267 0B:B257: CD 38 04  CMP ram_plr_pos_X_hi
C - - - - - 0x02F26A 0B:B25A: B0 01     BCS bra_B25D
C - - - - - 0x02F26C 0B:B25C: C8        INY ; 01
bra_B25D:
C - - - - - 0x02F26D 0B:B25D: 84 90     STY ram_0090
bra_B25F:
loc_B25F:
C D 1 - - - 0x02F26F 0B:B25F: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x02F272 0B:B262: C9 16     CMP #$16
C - - - - - 0x02F274 0B:B264: F0 94     BEQ bra_B1FA_RTS
C - - - - - 0x02F276 0B:B266: C9 47     CMP #$47
C - - - - - 0x02F278 0B:B268: F0 90     BEQ bra_B1FA_RTS
C - - - - - 0x02F27A 0B:B26A: C9 71     CMP #$71
C - - - - - 0x02F27C 0B:B26C: 90 04     BCC bra_B272
C - - - - - 0x02F27E 0B:B26E: C9 90     CMP #$90
C - - - - - 0x02F280 0B:B270: 90 88     BCC bra_B1FA_RTS
bra_B272:
C - - - - - 0x02F282 0B:B272: BD 8D 06  LDA ram_obj_068E,X
C - - - - - 0x02F285 0B:B275: 29 01     AND #$01
C - - - - - 0x02F287 0B:B277: D0 27     BNE bra_B2A0
C - - - - - 0x02F289 0B:B279: AD 30 06  LDA ram_061D_obj + $13
C - - - - - 0x02F28C 0B:B27C: F0 22     BEQ bra_B2A0
C - - - - - 0x02F28E 0B:B27E: AD 13 04  LDA ram_obj_anim_id + $13
C - - - - - 0x02F291 0B:B281: F0 1D     BEQ bra_B2A0
C - - - - - 0x02F293 0B:B283: 20 2A B4  JSR sub_B42A
C - - - - - 0x02F296 0B:B286: B0 18     BCS bra_B2A0    ; if too far
; if close enough
C - - - - - 0x02F298 0B:B288: BD 8D 06  LDA ram_obj_068E,X
C - - - - - 0x02F29B 0B:B28B: 09 01     ORA #$01
C - - - - - 0x02F29D 0B:B28D: 9D 8D 06  STA ram_obj_068E,X
C - - - - - 0x02F2A0 0B:B290: AD 30 06  LDA ram_061D_obj + $13
C - - - - - 0x02F2A3 0B:B293: 20 0B B3  JSR sub_B30B
C - - - - - 0x02F2A6 0B:B296: A9 00     LDA #$00
C - - - - - 0x02F2A8 0B:B298: 85 9E     STA ram_009E_object_index
C - - - - - 0x02F2AA 0B:B29A: 20 01 B6  JSR sub_B601
C - - - - - 0x02F2AD 0B:B29D: 20 C4 B4  JSR sub_B4C4
bra_B2A0:
C - - - - - 0x02F2B0 0B:B2A0: A9 14     LDA #$14
C - - - - - 0x02F2B2 0B:B2A2: 85 9E     STA ram_009E_object_index
bra_B2A4_loop:
C - - - - - 0x02F2B4 0B:B2A4: A4 9E     LDY ram_009E_object_index
C - - - - - 0x02F2B6 0B:B2A6: B9 4E 05  LDA ram_obj_id,Y
C - - - - - 0x02F2B9 0B:B2A9: F0 4A     BEQ bra_B2F5
C - - - - - 0x02F2BB 0B:B2AB: 20 01 B3  JSR sub_B301
C - - - - - 0x02F2BE 0B:B2AE: 39 FE B2  AND tbl_B2FE,Y
C - - - - - 0x02F2C1 0B:B2B1: D0 42     BNE bra_B2F5
C - - - - - 0x02F2C3 0B:B2B3: 20 85 B4  JSR sub_B485
C - - - - - 0x02F2C6 0B:B2B6: B0 3D     BCS bra_B2F5
C - - - - - 0x02F2C8 0B:B2B8: 20 59 B7  JSR sub_B759
C - - - - - 0x02F2CB 0B:B2BB: 20 01 B3  JSR sub_B301
C - - - - - 0x02F2CE 0B:B2BE: 19 FE B2  ORA tbl_B2FE,Y
C - - - - - 0x02F2D1 0B:B2C1: 9D 8D 06  STA ram_obj_068E,X
C - - - - - 0x02F2D4 0B:B2C4: A4 9E     LDY ram_009E_object_index
C - - - - - 0x02F2D6 0B:B2C6: B9 06 06  LDA ram_obj_config,Y
C - - - - - 0x02F2D9 0B:B2C9: 29 F0     AND #$F0
C - - - - - 0x02F2DB 0B:B2CB: 20 0B B3  JSR sub_B30B
C - - - - - 0x02F2DE 0B:B2CE: 29 F0     AND #$F0
C - - - - - 0x02F2E0 0B:B2D0: 85 13     STA ram_0013_t004
C - - - - - 0x02F2E2 0B:B2D2: B9 06 06  LDA ram_obj_config,Y
C - - - - - 0x02F2E5 0B:B2D5: 29 0F     AND #$0F
C - - - - - 0x02F2E7 0B:B2D7: 05 13     ORA ram_0013_t004
C - - - - - 0x02F2E9 0B:B2D9: 9D 69 06  STA ram_obj_066A,X
C - - - - - 0x02F2EC 0B:B2DC: 20 3A B3  JSR sub_B33A
C - - - - - 0x02F2EF 0B:B2DF: 20 1A B3  JSR sub_B31A
C - - - - - 0x02F2F2 0B:B2E2: B9 4E 05  LDA ram_obj_id,Y
C - - - - - 0x02F2F5 0B:B2E5: C9 06     CMP #$06
C - - - - - 0x02F2F7 0B:B2E7: D0 06     BNE bra_B2EF
C - - - - - 0x02F2F9 0B:B2E9: 20 E6 B6  JSR sub_B6E6
C - - - - - 0x02F2FC 0B:B2EC: 4C F5 B2  JMP loc_B2F5
bra_B2EF:
C - - - - - 0x02F2FF 0B:B2EF: 20 DD B5  JSR sub_B5DD
C - - - - - 0x02F302 0B:B2F2: 20 C4 B4  JSR sub_B4C4
bra_B2F5:
loc_B2F5:
C D 1 - - - 0x02F305 0B:B2F5: E6 9E     INC ram_009E_object_index
C - - - - - 0x02F307 0B:B2F7: A5 9E     LDA ram_009E_object_index
C - - - - - 0x02F309 0B:B2F9: C9 17     CMP #$17
C - - - - - 0x02F30B 0B:B2FB: 90 A7     BCC bra_B2A4_loop
C - - - - - 0x02F30D 0B:B2FD: 60        RTS



tbl_B2FE:
- D 1 - - - 0x02F30E 0B:B2FE: 02        .byte $02   ; 00 
- D 1 - - - 0x02F30F 0B:B2FF: 04        .byte $04   ; 01 
- D 1 - - - 0x02F310 0B:B300: 08        .byte $08   ; 02 



sub_B301:
; out
    ; A = 
C - - - - - 0x02F311 0B:B301: 38        SEC
C - - - - - 0x02F312 0B:B302: A5 9E     LDA ram_009E_object_index
C - - - - - 0x02F314 0B:B304: E9 14     SBC #$14
C - - - - - 0x02F316 0B:B306: A8        TAY
C - - - - - 0x02F317 0B:B307: BD 8D 06  LDA ram_obj_068E,X
C - - - - - 0x02F31A 0B:B30A: 60        RTS



sub_B30B:
; in
    ; A = 
C - - - - - 0x02F31B 0B:B30B: 18        CLC
C - - - - - 0x02F31C 0B:B30C: 7D 69 06  ADC ram_obj_066A,X
C - - - - - 0x02F31F 0B:B30F: 90 05     BCC bra_B316
C - - - - - 0x02F321 0B:B311: BD 69 06  LDA ram_obj_066A,X
C - - - - - 0x02F324 0B:B314: 09 F0     ORA #$F0
bra_B316:
C - - - - - 0x02F326 0B:B316: 9D 69 06  STA ram_obj_066A,X
C - - - - - 0x02F329 0B:B319: 60        RTS



sub_B31A:
C - - - - - 0x02F32A 0B:B31A: 29 0F     AND #$0F
C - - - - - 0x02F32C 0B:B31C: C9 03     CMP #$03
C - - - - - 0x02F32E 0B:B31E: D0 19     BNE bra_B339_RTS
C - - - - - 0x02F330 0B:B320: B9 4E 05  LDA ram_obj_id,Y
C - - - - - 0x02F333 0B:B323: C9 02     CMP #$02
C - - - - - 0x02F335 0B:B325: D0 12     BNE bra_B339_RTS
C - - - - - 0x02F337 0B:B327: B9 69 06  LDA ram_obj_hp - $12,Y
C - - - - - 0x02F33A 0B:B32A: 09 03     ORA #$03
C - - - - - 0x02F33C 0B:B32C: 99 69 06  STA ram_obj_hp - $12,Y
C - - - - - 0x02F33F 0B:B32F: BD 69 06  LDA ram_obj_066A,X
C - - - - - 0x02F342 0B:B332: 29 F0     AND #$F0
C - - - - - 0x02F344 0B:B334: 09 03     ORA #$03
C - - - - - 0x02F346 0B:B336: 9D 69 06  STA ram_obj_066A,X
bra_B339_RTS:
C - - - - - 0x02F349 0B:B339: 60        RTS



sub_B33A:
C - - - - - 0x02F34A 0B:B33A: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x02F34D 0B:B33D: C9 67     CMP #$67
C - - - - - 0x02F34F 0B:B33F: F0 17     BEQ bra_B358
C - - - - - 0x02F351 0B:B341: C9 1B     CMP #$1B
C - - - - - 0x02F353 0B:B343: 90 0C     BCC bra_B351
C - - - - - 0x02F355 0B:B345: C9 1F     CMP #$1F
C - - - - - 0x02F357 0B:B347: B0 08     BCS bra_B351
C - - - - - 0x02F359 0B:B349: C9 1C     CMP #$1C
C - - - - - 0x02F35B 0B:B34B: F0 04     BEQ bra_B351
C - - - - - 0x02F35D 0B:B34D: A9 00     LDA #$00
C - - - - - 0x02F35F 0B:B34F: F0 03     BEQ bra_B354    ; jmp
bra_B351:
C - - - - - 0x02F361 0B:B351: BD 57 06  LDA ram_obj_0658,X
bra_B354:
loc_B354:
C D 1 - - - 0x02F364 0B:B354: 99 1D 06  STA ram_061D_obj,Y
C - - - - - 0x02F367 0B:B357: 60        RTS
bra_B358:
C - - - - - 0x02F368 0B:B358: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x02F36B 0B:B35B: D0 0A     BNE bra_B367_facing_left
C - - - - - 0x02F36D 0B:B35D: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x02F370 0B:B360: D9 38 04  CMP ram_obj_pos_X_hi,Y
C - - - - - 0x02F373 0B:B363: 90 EC     BCC bra_B351
C - - - - - 0x02F375 0B:B365: B0 08     BCS bra_B36F    ; jmp
bra_B367_facing_left:
C - - - - - 0x02F377 0B:B367: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x02F37A 0B:B36A: D9 38 04  CMP ram_obj_pos_X_hi,Y
C - - - - - 0x02F37D 0B:B36D: B0 E2     BCS bra_B351
bra_B36F:
C - - - - - 0x02F37F 0B:B36F: BD 57 06  LDA ram_obj_0658,X
C - - - - - 0x02F382 0B:B372: 29 F0     AND #$F0
C - - - - - 0x02F384 0B:B374: 4C 54 B3  JMP loc_B354



sub_B377:
; out
    ; C
        ; 0 = close enough
        ; 1 = too far
C - - - - - 0x02F387 0B:B377: A4 82     LDY ram_copy_plr_id
C - - - - - 0x02F389 0B:B379: B9 43 BB  LDA tbl_BB43,Y
C - - - - - 0x02F38C 0B:B37C: 85 00     STA ram_0000_t06C
C - - - - - 0x02F38E 0B:B37E: B9 4C BB  LDA tbl_BB4C,Y
C - - - - - 0x02F391 0B:B381: 85 01     STA ram_0001_t019
C - - - - - 0x02F393 0B:B383: BC 4E 05  LDY ram_obj_id,X
C - - - - - 0x02F396 0B:B386: BD 8C 04  LDA ram_obj_type,X
C - - - - - 0x02F399 0B:B389: C9 08     CMP #con_obj_type_08
C - - - - - 0x02F39B 0B:B38B: D0 07     BNE bra_B394
C - - - - - 0x02F39D 0B:B38D: BD 00 04  LDA ram_obj_anim_id,X
C - - - - - 0x02F3A0 0B:B390: C9 EE     CMP #$EE
C - - - - - 0x02F3A2 0B:B392: B0 40     BCS bra_B3D4_EE_FE
bra_B394:
C - - - - - 0x02F3A4 0B:B394: A5 BA     LDA ram_00BA
C - - - - - 0x02F3A6 0B:B396: F0 08     BEQ bra_B3A0
C - - - - - 0x02F3A8 0B:B398: 20 11 E6  JSR sub_0x03E621
C - - - - - 0x02F3AB 0B:B39B: 90 03     BCC bra_B3A0
C - - - - - 0x02F3AD 0B:B39D: 4C 63 B7  JMP loc_B763
bra_B3A0:
C - - - - - 0x02F3B0 0B:B3A0: 18        CLC
C - - - - - 0x02F3B1 0B:B3A1: BC 4E 05  LDY ram_obj_id,X
C - - - - - 0x02F3B4 0B:B3A4: B9 C8 BB  LDA tbl_BBC8_distance_X,Y
C - - - - - 0x02F3B7 0B:B3A7: 65 00     ADC ram_0000_t06C
C - - - - - 0x02F3B9 0B:B3A9: 85 02     STA ram_0002_t02B_compare_distance_X
C - - - - - 0x02F3BB 0B:B3AB: 20 B3 80  JSR sub_80B3_get_object_distance_X_to_player
C - - - - - 0x02F3BE 0B:B3AE: C5 02     CMP ram_0002_t02B_compare_distance_X
C - - - - - 0x02F3C0 0B:B3B0: B0 1F     BCS bra_B3D1_RTS
; if close enough by X axis
C - - - - - 0x02F3C2 0B:B3B2: 18        CLC
C - - - - - 0x02F3C3 0B:B3B3: B9 60 BC  LDA tbl_BC60_pos_Y_hi,Y
C - - - - - 0x02F3C6 0B:B3B6: 65 01     ADC ram_0001_t019
C - - - - - 0x02F3C8 0B:B3B8: 85 03     STA ram_0003_t00C_compare_distance_Y
C - - - - - 0x02F3CA 0B:B3BA: A0 00     LDY #$00
C - - - - - 0x02F3CC 0B:B3BC: A5 82     LDA ram_copy_plr_id
C - - - - - 0x02F3CE 0B:B3BE: C9 04     CMP #$04
C - - - - - 0x02F3D0 0B:B3C0: 90 01     BCC bra_B3C3
C - - - - - 0x02F3D2 0B:B3C2: C8        INY ; 01
bra_B3C3:
C - - - - - 0x02F3D3 0B:B3C3: 18        CLC
C - - - - - 0x02F3D4 0B:B3C4: B9 D2 B3  LDA tbl_B3D2,Y
C - - - - - 0x02F3D7 0B:B3C7: 6D 1C 04  ADC ram_plr_pos_Y_hi
C - - - - - 0x02F3DA 0B:B3CA: 85 11     STA ram_0011_t00B_distance_Y
C - - - - - 0x02F3DC 0B:B3CC: 20 C1 80  JSR sub_80C1_get_object_distance_Y_to_0011
C - - - - - 0x02F3DF 0B:B3CF: C5 03     CMP ram_0003_t00C_compare_distance_Y
bra_B3D1_RTS:
C - - - - - 0x02F3E1 0B:B3D1: 60        RTS



tbl_B3D2:
- D 1 - - - 0x02F3E2 0B:B3D2: 00        .byte $00   ; 00 
- D 1 - - - 0x02F3E3 0B:B3D3: 05        .byte $05   ; 01 



bra_B3D4_EE_FE:
; EE = skeleton swings with his whip
; F0 = skeleton swings with his sword
; F2 = headless skeleton in rags swings with his sword (1)
; F4 = headless skeleton in rags swings with his sword (3)
; F6 = 
; F8 = headless skeleton in rags swings with his sword (2)
; FA = 
; FC = 
; FE = 
C - - - - - 0x02F3E4 0B:B3D4: 38        SEC
C - - - - - 0x02F3E5 0B:B3D5: E9 EE     SBC #$EE
C - - - - - 0x02F3E7 0B:B3D7: 48        PHA
C - - - - - 0x02F3E8 0B:B3D8: 18        CLC
C - - - - - 0x02F3E9 0B:B3D9: 7D A8 04  ADC ram_obj_facing,X
C - - - - - 0x02F3EC 0B:B3DC: 85 07     STA ram_0007_t009
C - - - - - 0x02F3EE 0B:B3DE: 68        PLA
C - - - - - 0x02F3EF 0B:B3DF: 4A        LSR
C - - - - - 0x02F3F0 0B:B3E0: 85 06     STA ram_0006_t00B
C - - - - - 0x02F3F2 0B:B3E2: A8        TAY
C - - - - - 0x02F3F3 0B:B3E3: 18        CLC
C - - - - - 0x02F3F4 0B:B3E4: B9 72 BB  LDA tbl_BB72,Y
C - - - - - 0x02F3F7 0B:B3E7: 65 00     ADC ram_0000_t06C
C - - - - - 0x02F3F9 0B:B3E9: 85 02     STA ram_0002_t049
C - - - - - 0x02F3FB 0B:B3EB: A4 07     LDY ram_0007_t009
C - - - - - 0x02F3FD 0B:B3ED: B9 84 BB  LDA tbl_BB84,Y
C - - - - - 0x02F400 0B:B3F0: 18        CLC
C - - - - - 0x02F401 0B:B3F1: 7D 38 04  ADC ram_obj_pos_X_hi,X
C - - - - - 0x02F404 0B:B3F4: 85 10     STA ram_0010_temp
C - - - - - 0x02F406 0B:B3F6: 20 45 B7  JSR sub_B745
C - - - - - 0x02F409 0B:B3F9: C5 02     CMP ram_0002_t049
C - - - - - 0x02F40B 0B:B3FB: B0 D4     BCS bra_B3D1_RTS
C - - - - - 0x02F40D 0B:B3FD: A4 06     LDY ram_0006_t00B
C - - - - - 0x02F40F 0B:B3FF: 18        CLC
C - - - - - 0x02F410 0B:B400: B9 7B BB  LDA tbl_BB7B,Y
C - - - - - 0x02F413 0B:B403: 65 01     ADC ram_0001_t019
C - - - - - 0x02F415 0B:B405: 85 03     STA ram_0003_t022
C - - - - - 0x02F417 0B:B407: A4 07     LDY ram_0007_t009
C - - - - - 0x02F419 0B:B409: B9 96 BB  LDA tbl_BB96_pos_Y_hi,Y
C - - - - - 0x02F41C 0B:B40C: 18        CLC
C - - - - - 0x02F41D 0B:B40D: 7D 1C 04  ADC ram_obj_pos_Y_hi,X
C - - - - - 0x02F420 0B:B410: 85 10     STA ram_0010_t01E_pos_Y_hi_1
C - - - - - 0x02F422 0B:B412: A0 00     LDY #$00
C - - - - - 0x02F424 0B:B414: A5 82     LDA ram_copy_plr_id
C - - - - - 0x02F426 0B:B416: C9 04     CMP #$04
C - - - - - 0x02F428 0B:B418: 90 01     BCC bra_B41B
C - - - - - 0x02F42A 0B:B41A: C8        INY ; 01
bra_B41B:
C - - - - - 0x02F42B 0B:B41B: 18        CLC
C - - - - - 0x02F42C 0B:B41C: B9 D2 B3  LDA tbl_B3D2,Y
C - - - - - 0x02F42F 0B:B41F: 6D 1C 04  ADC ram_plr_pos_Y_hi
C - - - - - 0x02F432 0B:B422: 85 11     STA ram_0011_t015_pos_Y_hi_2
C - - - - - 0x02F434 0B:B424: 20 39 B7  JSR sub_B739
C - - - - - 0x02F437 0B:B427: C5 03     CMP ram_0003_t022
C - - - - - 0x02F439 0B:B429: 60        RTS



sub_B42A:
; out
    ; C
        ; 0 = close enough
        ; 1 = too far
C - - - - - 0x02F43A 0B:B42A: 20 B3 80  JSR sub_80B3_get_object_distance_X_to_player
C - - - - - 0x02F43D 0B:B42D: C9 80     CMP #$80
C - - - - - 0x02F43F 0B:B42F: B0 53     BCS bra_B484_RTS
; if close enough
C - - - - - 0x02F441 0B:B431: AC 61 05  LDY ram_obj_id + $13
C - - - - - 0x02F444 0B:B434: B9 55 BB  LDA tbl_BB55,Y
C - - - - - 0x02F447 0B:B437: 85 00     STA ram_0000_t06D
C - - - - - 0x02F449 0B:B439: B9 5A BB  LDA tbl_BB5A,Y
C - - - - - 0x02F44C 0B:B43C: 85 01     STA ram_0001_t01A
C - - - - - 0x02F44E 0B:B43E: 18        CLC
C - - - - - 0x02F44F 0B:B43F: 98        TYA
C - - - - - 0x02F450 0B:B440: 0A        ASL
C - - - - - 0x02F451 0B:B441: 6D A8 04  ADC ram_plr_facing
C - - - - - 0x02F454 0B:B444: A8        TAY
C - - - - - 0x02F455 0B:B445: 18        CLC
C - - - - - 0x02F456 0B:B446: B9 5F BB  LDA tbl_BB5F,Y
C - - - - - 0x02F459 0B:B449: 6D 38 04  ADC ram_plr_pos_X_hi
C - - - - - 0x02F45C 0B:B44C: 85 10     STA ram_0010_t013_distance_X
C - - - - - 0x02F45E 0B:B44E: 18        CLC
C - - - - - 0x02F45F 0B:B44F: A4 82     LDY ram_copy_plr_id
C - - - - - 0x02F461 0B:B451: AD 2F 04  LDA ram_obj_pos_Y_hi + $13
C - - - - - 0x02F464 0B:B454: 79 69 BB  ADC tbl_BB69,Y
C - - - - - 0x02F467 0B:B457: 85 11     STA ram_0011_t00B_distance_Y
loc_B459:
C D 1 - - - 0x02F469 0B:B459: A5 BA     LDA ram_00BA
C - - - - - 0x02F46B 0B:B45B: F0 08     BEQ bra_B465
C - - - - - 0x02F46D 0B:B45D: 20 11 E6  JSR sub_0x03E621
C - - - - - 0x02F470 0B:B460: 90 03     BCC bra_B465
C - - - - - 0x02F472 0B:B462: 4C 8D B7  JMP loc_B78D
bra_B465:
C - - - - - 0x02F475 0B:B465: BC 4E 05  LDY ram_obj_id,X
C - - - - - 0x02F478 0B:B468: 18        CLC
C - - - - - 0x02F479 0B:B469: B9 C8 BB  LDA tbl_BBC8_distance_X,Y
C - - - - - 0x02F47C 0B:B46C: 65 00     ADC ram_0000_t06D
C - - - - - 0x02F47E 0B:B46E: 85 02     STA ram_0002_t02E_compare_distance_X
C - - - - - 0x02F480 0B:B470: 20 CB 80  JSR sub_80CB_get_object_distance_X_to_0010
C - - - - - 0x02F483 0B:B473: C5 02     CMP ram_0002_t02E_compare_distance_X
C - - - - - 0x02F485 0B:B475: B0 0D     BCS bra_B484_RTS
; if close enough
; bzk optimize, C is already 0 here, no need for CLC
C - - - - - 0x02F487 0B:B477: 18        CLC
C - - - - - 0x02F488 0B:B478: B9 60 BC  LDA tbl_BC60_pos_Y_hi,Y
C - - - - - 0x02F48B 0B:B47B: 65 01     ADC ram_0001_t01A
C - - - - - 0x02F48D 0B:B47D: 85 03     STA ram_0003_t00E_compare_distance_Y
C - - - - - 0x02F48F 0B:B47F: 20 C1 80  JSR sub_80C1_get_object_distance_Y_to_0011
C - - - - - 0x02F492 0B:B482: C5 03     CMP ram_0003_t00E_compare_distance_Y
bra_B484_RTS:
C - - - - - 0x02F494 0B:B484: 60        RTS



sub_B485:
C - - - - - 0x02F495 0B:B485: A4 9E     LDY ram_009E_object_index
C - - - - - 0x02F497 0B:B487: B9 4E 05  LDA ram_obj_id,Y
C - - - - - 0x02F49A 0B:B48A: C9 05     CMP #$05
C - - - - - 0x02F49C 0B:B48C: F0 1C     BEQ bra_B4AA_05
C - - - - - 0x02F49E 0B:B48E: A8        TAY
C - - - - - 0x02F49F 0B:B48F: B9 A8 BB  LDA tbl_BBA8,Y
C - - - - - 0x02F4A2 0B:B492: 85 00     STA ram_0000_t111
C - - - - - 0x02F4A4 0B:B494: B9 B3 BB  LDA tbl_BBB3,Y
loc_B497:
C D 1 - - - 0x02F4A7 0B:B497: 85 01     STA ram_0001_t04E
C - - - - - 0x02F4A9 0B:B499: A6 9E     LDX ram_009E_object_index
C - - - - - 0x02F4AB 0B:B49B: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x02F4AE 0B:B49E: 85 10     STA ram_0010_t013_distance_X
C - - - - - 0x02F4B0 0B:B4A0: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x02F4B3 0B:B4A3: 85 11     STA ram_0011_t00B_distance_Y
C - - - - - 0x02F4B5 0B:B4A5: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02F4B7 0B:B4A7: 4C 59 B4  JMP loc_B459
bra_B4AA_05:
C - - - - - 0x02F4BA 0B:B4AA: BC 93 05  LDY ram_obj_anim_cnt,X
C - - - - - 0x02F4BD 0B:B4AD: B9 BE BB  LDA tbl_BBBE,Y
C - - - - - 0x02F4C0 0B:B4B0: 85 00     STA ram_0000_t111
C - - - - - 0x02F4C2 0B:B4B2: A9 08     LDA #$08
C - - - - - 0x02F4C4 0B:B4B4: 85 01     STA ram_0001_t04E
; bzk optimize, JMP to 0x02F4A9
C - - - - - 0x02F4C6 0B:B4B6: 4C 97 B4  JMP loc_B497
bra_B4B9:
C - - - - - 0x02F4C9 0B:B4B9: C9 90     CMP #$90
C - - - - - 0x02F4CB 0B:B4BB: 90 60     BCC bra_B51D_RTS    ; < 90
C - - - - - 0x02F4CD 0B:B4BD: C9 93     CMP #$93
C - - - - - 0x02F4CF 0B:B4BF: B0 5C     BCS bra_B51D_RTS    ; 93+
C - - - - - 0x02F4D1 0B:B4C1: 4C E2 A2  JMP loc_A2E2_90_92  ; 90-92



sub_B4C4:
C - - - - - 0x02F4D4 0B:B4C4: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x02F4D7 0B:B4C7: C9 40     CMP #$40
C - - - - - 0x02F4D9 0B:B4C9: 90 52     BCC bra_B51D_RTS
C - - - - - 0x02F4DB 0B:B4CB: C9 68     CMP #$68
C - - - - - 0x02F4DD 0B:B4CD: B0 EA     BCS bra_B4B9    ; 68+
; 40-67
C - - - - - 0x02F4DF 0B:B4CF: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x02F4E2 0B:B4D2: 29 02     AND #con_obj_flag_02
C - - - - - 0x02F4E4 0B:B4D4: D0 53     BNE bra_B529
C - - - - - 0x02F4E6 0B:B4D6: BD EF 05  LDA ram_05EF_obj,X
C - - - - - 0x02F4E9 0B:B4D9: C9 2D     CMP #$2D
C - - - - - 0x02F4EB 0B:B4DB: F0 41     BEQ bra_B51E
C - - - - - 0x02F4ED 0B:B4DD: C9 2E     CMP #$2E
C - - - - - 0x02F4EF 0B:B4DF: F0 3D     BEQ bra_B51E
C - - - - - 0x02F4F1 0B:B4E1: BD 69 06  LDA ram_obj_066A,X
C - - - - - 0x02F4F4 0B:B4E4: 85 00     STA ram_0000_temp
C - - - - - 0x02F4F6 0B:B4E6: 29 F0     AND #$F0
C - - - - - 0x02F4F8 0B:B4E8: F0 33     BEQ bra_B51D_RTS
; / 10
C - - - - - 0x02F4FA 0B:B4EA: 4A        LSR
C - - - - - 0x02F4FB 0B:B4EB: 4A        LSR
C - - - - - 0x02F4FC 0B:B4EC: 4A        LSR
C - - - - - 0x02F4FD 0B:B4ED: 4A        LSR
C - - - - - 0x02F4FE 0B:B4EE: 85 01     STA ram_0001_t00C
C - - - - - 0x02F500 0B:B4F0: BD 69 06  LDA ram_obj_066A,X
C - - - - - 0x02F503 0B:B4F3: 29 0F     AND #$0F
C - - - - - 0x02F505 0B:B4F5: 9D 69 06  STA ram_obj_066A,X
C - - - - - 0x02F508 0B:B4F8: 38        SEC
C - - - - - 0x02F509 0B:B4F9: BD 7B 06  LDA ram_obj_hp,X
C - - - - - 0x02F50C 0B:B4FC: E5 01     SBC ram_0001_t00C
C - - - - - 0x02F50E 0B:B4FE: 9D 7B 06  STA ram_obj_hp,X
C - - - - - 0x02F511 0B:B501: F0 3B     BEQ bra_B53E_enemy_is_killed
C - - - - - 0x02F513 0B:B503: 30 39     BMI bra_B53E_enemy_is_killed
C - - - - - 0x02F515 0B:B505: A9 29     LDA #con_sound_hit_enemy
C - - - - - 0x02F517 0B:B507: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x02F51A 0B:B50A: A0 00     LDY #$00
C - - - - - 0x02F51C 0B:B50C: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x02F51F 0B:B50F: C9 64     CMP #$64
C - - - - - 0x02F521 0B:B511: D0 01     BNE bra_B514
C - - - - - 0x02F523 0B:B513: C8        INY ; 01
bra_B514:
C - - - - - 0x02F524 0B:B514: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x02F527 0B:B517: 19 27 B5  ORA tbl_B527,Y
C - - - - - 0x02F52A 0B:B51A: 9D 65 05  STA ram_obj_state,X
bra_B51D_RTS:
C - - - - - 0x02F52D 0B:B51D: 60        RTS
bra_B51E:   ; 2D 2E
C - - - - - 0x02F52E 0B:B51E: A9 28     LDA #con_sound_28
C - - - - - 0x02F530 0B:B520: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x02F533 0B:B523: A0 00     LDY #$00
C - - - - - 0x02F535 0B:B525: F0 ED     BEQ bra_B514    ; jmp



tbl_B527:
- D 1 - - - 0x02F537 0B:B527: 10        .byte $10   ; 00 
- D 1 - - - 0x02F538 0B:B528: 14        .byte $14   ; 01 



bra_B529:
C - - - - - 0x02F539 0B:B529: 20 CC E7  JSR sub_0x03E7DC
C - - - - - 0x02F53C 0B:B52C: 4C 7A FF  JMP loc_0x03FF8A



sub_B52F:
C - - - - - 0x02F53F 0B:B52F: A9 00     LDA #$00
C - - - - - 0x02F541 0B:B531: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x02F544 0B:B534: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x02F547 0B:B537: 9D 8C 04  STA ram_obj_type,X  ; con_obj_type_00
C - - - - - 0x02F54A 0B:B53A: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x02F54D 0B:B53D: 60        RTS



bra_B53E_enemy_is_killed:
C - - - - - 0x02F54E 0B:B53E: A9 27     LDA #con_sound_kill_enemy
C - - - - - 0x02F550 0B:B540: BC 4E 05  LDY ram_obj_id,X
C - - - - - 0x02F553 0B:B543: C0 4D     CPY #$4D
C - - - - - 0x02F555 0B:B545: F0 0E     BEQ bra_B555
C - - - - - 0x02F557 0B:B547: C0 4E     CPY #$4E
C - - - - - 0x02F559 0B:B549: F0 0A     BEQ bra_B555
C - - - - - 0x02F55B 0B:B54B: C0 5B     CPY #$5B
C - - - - - 0x02F55D 0B:B54D: F0 06     BEQ bra_B555
C - - - - - 0x02F55F 0B:B54F: C0 57     CPY #$57
C - - - - - 0x02F561 0B:B551: F0 02     BEQ bra_B555
C - - - - - 0x02F563 0B:B553: A9 33     LDA #con_sound_destroy_candle
bra_B555:
C - - - - - 0x02F565 0B:B555: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x02F568 0B:B558: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x02F56B 0B:B55B: C9 5B     CMP #$5B
C - - - - - 0x02F56D 0B:B55D: F0 37     BEQ bra_B596
C - - - - - 0x02F56F 0B:B55F: C9 57     CMP #$57
C - - - - - 0x02F571 0B:B561: F0 54     BEQ bra_B5B7
C - - - - - 0x02F573 0B:B563: C9 59     CMP #$59
C - - - - - 0x02F575 0B:B565: F0 1A     BEQ bra_B581
C - - - - - 0x02F577 0B:B567: C9 5D     CMP #$5D
C - - - - - 0x02F579 0B:B569: F0 51     BEQ bra_B5BC
C - - - - - 0x02F57B 0B:B56B: C9 48     CMP #$48
C - - - - - 0x02F57D 0B:B56D: 90 12     BCC bra_B581    ; < 48
loc_B56F:
C D 1 - - - 0x02F57F 0B:B56F: 20 CC E7  JSR sub_0x03E7DC
C - - - - - 0x02F582 0B:B572: A5 9E     LDA ram_009E_object_index
C - - - - - 0x02F584 0B:B574: F0 05     BEQ bra_B57B
C - - - - - 0x02F586 0B:B576: 20 DC E7  JSR sub_0x03E7EC
C - - - - - 0x02F589 0B:B579: B0 18     BCS bra_B593
bra_B57B:
C - - - - - 0x02F58B 0B:B57B: A5 1A     LDA ram_frm_cnt
C - - - - - 0x02F58D 0B:B57D: 29 07     AND #$07
C - - - - - 0x02F58F 0B:B57F: F0 1B     BEQ bra_B59C
bra_B581:
sub_B581:
C - - - - - 0x02F591 0B:B581: 20 C1 E7  JSR sub_0x03E7D1
sub_B584:
loc_B584:
C D 1 - - - 0x02F594 0B:B584: A9 00     LDA #$00
C - - - - - 0x02F596 0B:B586: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x02F599 0B:B589: 9D 70 04  STA ram_obj_flags,X ; con_obj_flag_00
C - - - - - 0x02F59C 0B:B58C: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x02F59F 0B:B58F: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x02F5A2 0B:B592: 60        RTS
bra_B593:
C - - - - - 0x02F5A3 0B:B593: 4C FC A0  JMP loc_A0FC
bra_B596:
C - - - - - 0x02F5A6 0B:B596: A9 05     LDA #$05
loc_B598:
C D 1 - - - 0x02F5A8 0B:B598: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x02F5AB 0B:B59B: 60        RTS
bra_B59C:
C - - - - - 0x02F5AC 0B:B59C: E6 CE     INC ram_drop_counter
C - - - - - 0x02F5AE 0B:B59E: A5 CE     LDA ram_drop_counter
C - - - - - 0x02F5B0 0B:B5A0: C9 05     CMP #$05
C - - - - - 0x02F5B2 0B:B5A2: B0 03     BCS bra_B5A7
C - - - - - 0x02F5B4 0B:B5A4: 4C CE B5  JMP loc_B5CE
bra_B5A7:
C - - - - - 0x02F5B7 0B:B5A7: A9 00     LDA #$00
C - - - - - 0x02F5B9 0B:B5A9: 85 CE     STA ram_drop_counter
C - - - - - 0x02F5BB 0B:B5AB: 20 AB E7  JSR sub_0x03E7BB
C - - - - - 0x02F5BE 0B:B5AE: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x02F5C1 0B:B5B1: 20 0B A3  JSR sub_A30B
C - - - - - 0x02F5C4 0B:B5B4: 4C D1 B5  JMP loc_B5D1
bra_B5B7:
C - - - - - 0x02F5C7 0B:B5B7: A9 0F     LDA #$0F
C - - - - - 0x02F5C9 0B:B5B9: 4C 98 B5  JMP loc_B598
bra_B5BC:
C - - - - - 0x02F5CC 0B:B5BC: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x02F5CF 0B:B5BF: AA        TAX
C - - - - - 0x02F5D0 0B:B5C0: 20 84 B5  JSR sub_B584
C - - - - - 0x02F5D3 0B:B5C3: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x02F5D6 0B:B5C6: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x02F5D9 0B:B5C9: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02F5DB 0B:B5CB: 4C 6F B5  JMP loc_B56F



loc_B5CE:
C D 1 - - - 0x02F5DE 0B:B5CE: 20 78 A2  JSR sub_A278
loc_B5D1:
C D 1 - - - 0x02F5E1 0B:B5D1: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x02F5E4 0B:B5D4: 38        SEC
C - - - - - 0x02F5E5 0B:B5D5: E9 60     SBC #$60
C - - - - - 0x02F5E7 0B:B5D7: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x02F5EA 0B:B5DA: 4C 84 B5  JMP loc_B584



sub_B5DD:
C - - - - - 0x02F5ED 0B:B5DD: 20 37 B6  JSR sub_B637
C - - - - - 0x02F5F0 0B:B5E0: D0 52     BNE bra_B634_RTS
C - - - - - 0x02F5F2 0B:B5E2: A9 04     LDA #$04
C - - - - - 0x02F5F4 0B:B5E4: 85 00     STA ram_0000_t056_pos_X_hi
C - - - - - 0x02F5F6 0B:B5E6: A4 9E     LDY ram_009E_object_index
C - - - - - 0x02F5F8 0B:B5E8: B9 F2 04  LDA ram_obj_spd_X_hi,Y
C - - - - - 0x02F5FB 0B:B5EB: 10 04     BPL bra_B5F1_moving_right
; if moving left
C - - - - - 0x02F5FD 0B:B5ED: A9 FC     LDA #$FC
C - - - - - 0x02F5FF 0B:B5EF: 85 00     STA ram_0000_t056_pos_X_hi
bra_B5F1_moving_right:
C - - - - - 0x02F601 0B:B5F1: 18        CLC
C - - - - - 0x02F602 0B:B5F2: A5 00     LDA ram_0000_t056_pos_X_hi
C - - - - - 0x02F604 0B:B5F4: 79 38 04  ADC ram_obj_pos_X_hi,Y
C - - - - - 0x02F607 0B:B5F7: 85 00     STA ram_0000_t056_pos_X_hi
C - - - - - 0x02F609 0B:B5F9: B9 1C 04  LDA ram_obj_pos_Y_hi,Y
C - - - - - 0x02F60C 0B:B5FC: 85 01     STA ram_0001_t00B_pos_Y_hi
C - - - - - 0x02F60E 0B:B5FE: 4C 13 B6  JMP loc_B613



sub_B601:
C - - - - - 0x02F611 0B:B601: 20 37 B6  JSR sub_B637
C - - - - - 0x02F614 0B:B604: D0 2E     BNE bra_B634_RTS
C - - - - - 0x02F616 0B:B606: 18        CLC
C - - - - - 0x02F617 0B:B607: AD 2F 04  LDA ram_obj_pos_Y_hi + $13
C - - - - - 0x02F61A 0B:B60A: 69 01     ADC #$01
C - - - - - 0x02F61C 0B:B60C: 85 01     STA ram_0001_t00B_pos_Y_hi
C - - - - - 0x02F61E 0B:B60E: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x02F621 0B:B611: 85 00     STA ram_0000_t056_pos_X_hi
loc_B613:
C D 1 - - - 0x02F623 0B:B613: A2 17     LDX #$17
C - - - - - 0x02F625 0B:B615: A9 20     LDA #con_obj_flag_20
C - - - - - 0x02F627 0B:B617: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x02F62A 0B:B61A: A9 12     LDA #$12
C - - - - - 0x02F62C 0B:B61C: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x02F62F 0B:B61F: A9 0E     LDA #con_obj_type_0E
C - - - - - 0x02F631 0B:B621: 9D 8C 04  STA ram_obj_type,X
C - - - - - 0x02F634 0B:B624: A5 00     LDA ram_0000_t056_pos_X_hi
C - - - - - 0x02F636 0B:B626: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x02F639 0B:B629: A5 01     LDA ram_0001_t00B_pos_Y_hi
C - - - - - 0x02F63B 0B:B62B: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x02F63E 0B:B62E: A9 08     LDA #$08
C - - - - - 0x02F640 0B:B630: 85 8C     STA ram_008C_timer
C - - - - - 0x02F642 0B:B632: A6 6C     LDX ram_006C_object_index
bra_B634_RTS:
C - - - - - 0x02F644 0B:B634: 60        RTS



bra_B635:
C - - - - - 0x02F645 0B:B635: 38        SEC
C - - - - - 0x02F646 0B:B636: 60        RTS



sub_B637:
; out
    ; Z
        ; 0 = 
        ; 1 = 
C - - - - - 0x02F647 0B:B637: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x02F64A 0B:B63A: C9 1B     CMP #$1B
C - - - - - 0x02F64C 0B:B63C: F0 0B     BEQ bra_B649
C - - - - - 0x02F64E 0B:B63E: C9 1C     CMP #$1C
C - - - - - 0x02F650 0B:B640: F0 07     BEQ bra_B649
C - - - - - 0x02F652 0B:B642: A0 17     LDY #$17
C - - - - - 0x02F654 0B:B644: B9 00 04  LDA ram_obj_anim_id,Y
C - - - - - 0x02F657 0B:B647: F0 02     BEQ bra_B64B_RTS
bra_B649:   ; 1B 1C
C - - - - - 0x02F659 0B:B649: A9 01     LDA #$01
bra_B64B_RTS:
C - - - - - 0x02F65B 0B:B64B: 60        RTS



sub_B64C:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x02F65C 0B:B64C: BC 4E 05  LDY ram_obj_id,X
C - - - - - 0x02F65F 0B:B64F: 20 B3 80  JSR sub_80B3_get_object_distance_X_to_player
C - - - - - 0x02F662 0B:B652: 85 0E     STA ram_000E_t00A_distance_X
C - - - - - 0x02F664 0B:B654: B9 C8 BB  LDA tbl_BBC8_distance_X,Y
C - - - - - 0x02F667 0B:B657: A4 82     LDY ram_copy_plr_id
C - - - - - 0x02F669 0B:B659: 18        CLC
C - - - - - 0x02F66A 0B:B65A: 79 43 BB  ADC tbl_BB43,Y
C - - - - - 0x02F66D 0B:B65D: C5 0E     CMP ram_000E_t00A_distance_X
C - - - - - 0x02F66F 0B:B65F: 90 D4     BCC bra_B635
C - - - - - 0x02F671 0B:B661: B0 0B     BCS bra_B66E    ; jmp



sub_B663:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x02F673 0B:B663: BC 4E 05  LDY ram_obj_id,X
C - - - - - 0x02F676 0B:B666: 20 B3 80  JSR sub_80B3_get_object_distance_X_to_player
C - - - - - 0x02F679 0B:B669: D9 C8 BB  CMP tbl_BBC8_distance_X,Y
C - - - - - 0x02F67C 0B:B66C: B0 1C     BCS bra_B68A_RTS
; if close enough
bra_B66E:
C - - - - - 0x02F67E 0B:B66E: A4 82     LDY ram_copy_plr_id
C - - - - - 0x02F680 0B:B670: B9 8B B6  LDA tbl_B68B_pos_Y_hi,Y
C - - - - - 0x02F683 0B:B673: 18        CLC
C - - - - - 0x02F684 0B:B674: 6D 1C 04  ADC ram_plr_pos_Y_hi
C - - - - - 0x02F687 0B:B677: 85 10     STA ram_0010_t01E_pos_Y_hi_1
C - - - - - 0x02F689 0B:B679: BC 4E 05  LDY ram_obj_id,X
C - - - - - 0x02F68C 0B:B67C: 38        SEC
C - - - - - 0x02F68D 0B:B67D: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x02F690 0B:B680: F9 60 BC  SBC tbl_BC60_pos_Y_hi,Y
C - - - - - 0x02F693 0B:B683: 85 11     STA ram_0011_t015_pos_Y_hi_2
C - - - - - 0x02F695 0B:B685: 20 39 B7  JSR sub_B739
C - - - - - 0x02F698 0B:B688: C9 0C     CMP #$0C
bra_B68A_RTS:
C - - - - - 0x02F69A 0B:B68A: 60        RTS



tbl_B68B_pos_Y_hi:
- D 1 - - - 0x02F69B 0B:B68B: 10        .byte $10   ; 00 
- D 1 - - - 0x02F69C 0B:B68C: 10        .byte $10   ; 01 
- D 1 - - - 0x02F69D 0B:B68D: 0C        .byte $0C   ; 02 
- D 1 - - - 0x02F69E 0B:B68E: 10        .byte $10   ; 03 
- D 1 - - - 0x02F69F 0B:B68F: 10        .byte $10   ; 04 
- D 1 - - - 0x02F6A0 0B:B690: 10        .byte $10   ; 05 
- - - - - - 0x02F6A1 0B:B691: 0C        .byte $0C   ; 06 
- D 1 - - - 0x02F6A2 0B:B692: 10        .byte $10   ; 07 
- D 1 - - - 0x02F6A3 0B:B693: 04        .byte $04   ; 08 


; bzk garbage
- - - - - - 0x02F6A4 0B:B694: 38        SEC
- - - - - - 0x02F6A5 0B:B695: BD 00 04  LDA ram_obj_anim_id,X
- - - - - - 0x02F6A8 0B:B698: E9 08     SBC #$08
- - - - - - 0x02F6AA 0B:B69A: 4A        LSR
- - - - - - 0x02F6AB 0B:B69B: A8        TAY
- - - - - - 0x02F6AC 0B:B69C: 85 16     STA ram_0016_temp
- - - - - - 0x02F6AE 0B:B69E: 20 B3 80  JSR sub_80B3_get_object_distance_X_to_player
- - - - - - 0x02F6B1 0B:B6A1: D9 C8 B6  CMP tbl_B6C8_distance_X,Y
- - - - - - 0x02F6B4 0B:B6A4: B0 21     BCS bra_B6C7_RTS
; if close enough
- - - - - - 0x02F6B6 0B:B6A6: 85 17     STA ram_0017_temp
- - - - - - 0x02F6B8 0B:B6A8: 18        CLC
- - - - - - 0x02F6B9 0B:B6A9: A4 82     LDY ram_copy_plr_id
- - - - - - 0x02F6BB 0B:B6AB: B9 DA B6  LDA tbl_B6DA_pos_Y_hi,Y
- - - - - - 0x02F6BE 0B:B6AE: 6D 1C 04  ADC ram_plr_pos_Y_hi
- - - - - - 0x02F6C1 0B:B6B1: 85 10     STA ram_0010_t01E_pos_Y_hi_1
- - - - - - 0x02F6C3 0B:B6B3: 38        SEC
- - - - - - 0x02F6C4 0B:B6B4: BC 4E 05  LDY ram_obj_id,X
- - - - - - 0x02F6C7 0B:B6B7: BD 1C 04  LDA ram_obj_pos_Y_hi,X
- - - - - - 0x02F6CA 0B:B6BA: F9 60 BC  SBC tbl_BC60_pos_Y_hi,Y
- - - - - - 0x02F6CD 0B:B6BD: 85 11     STA ram_0011_t015_pos_Y_hi_2
- - - - - - 0x02F6CF 0B:B6BF: 20 39 B7  JSR sub_B739
- - - - - - 0x02F6D2 0B:B6C2: A4 16     LDY ram_0016_temp
- - - - - - 0x02F6D4 0B:B6C4: D9 D1 B6  CMP tbl_B6D1,Y
bra_B6C7_RTS:
- - - - - - 0x02F6D7 0B:B6C7: 60        RTS



tbl_B6C8_distance_X:
; bzk garbage
- - - - - - 0x02F6D8 0B:B6C8: 0A        .byte $0A   ; 08 
- - - - - - 0x02F6D9 0B:B6C9: 0A        .byte $0A   ; 0A 
- - - - - - 0x02F6DA 0B:B6CA: 0A        .byte $0A   ; 0C 
- - - - - - 0x02F6DB 0B:B6CB: 0A        .byte $0A   ; 0E 
- - - - - - 0x02F6DC 0B:B6CC: 0A        .byte $0A   ; 10 
- - - - - - 0x02F6DD 0B:B6CD: 0A        .byte $0A   ; 12 
- - - - - - 0x02F6DE 0B:B6CE: 0A        .byte $0A   ; 14 
- - - - - - 0x02F6DF 0B:B6CF: 0A        .byte $0A   ; 16 
- - - - - - 0x02F6E0 0B:B6D0: 0A        .byte $0A   ; 18 



tbl_B6D1:
; bzk garbage
- - - - - - 0x02F6E1 0B:B6D1: 04        .byte $04   ; 00 
- - - - - - 0x02F6E2 0B:B6D2: 04        .byte $04   ; 01 
- - - - - - 0x02F6E3 0B:B6D3: 04        .byte $04   ; 02 
- - - - - - 0x02F6E4 0B:B6D4: 04        .byte $04   ; 03 
- - - - - - 0x02F6E5 0B:B6D5: 04        .byte $04   ; 04 
- - - - - - 0x02F6E6 0B:B6D6: 04        .byte $04   ; 05 
- - - - - - 0x02F6E7 0B:B6D7: 04        .byte $04   ; 06 
- - - - - - 0x02F6E8 0B:B6D8: 04        .byte $04   ; 07 
- - - - - - 0x02F6E9 0B:B6D9: 04        .byte $04   ; 08 



tbl_B6DA_pos_Y_hi:
; bzk garbage
- - - - - - 0x02F6EA 0B:B6DA: 10        .byte $10   ; 00 
- - - - - - 0x02F6EB 0B:B6DB: 10        .byte $10   ; 01 
- - - - - - 0x02F6EC 0B:B6DC: 08        .byte $08   ; 02 
- - - - - - 0x02F6ED 0B:B6DD: 10        .byte $10   ; 03 
- - - - - - 0x02F6EE 0B:B6DE: 08        .byte $08   ; 04 
- - - - - - 0x02F6EF 0B:B6DF: 08        .byte $08   ; 05 
- - - - - - 0x02F6F0 0B:B6E0: 08        .byte $08   ; 06 
- - - - - - 0x02F6F1 0B:B6E1: 08        .byte $08   ; 07 
- - - - - - 0x02F6F2 0B:B6E2: 08        .byte $08   ; 08 


; bzk garbage
- - - - - - 0x02F6F3 0B:B6E3: 08        .byte $08   ; 
- - - - - - 0x02F6F4 0B:B6E4: 08        .byte $08   ; 
- - - - - - 0x02F6F5 0B:B6E5: 08        .byte $08   ; 



sub_B6E6:
C - - - - - 0x02F6F6 0B:B6E6: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x02F6F9 0B:B6E9: C9 40     CMP #$40
C - - - - - 0x02F6FB 0B:B6EB: 90 23     BCC bra_B710_RTS
C - - - - - 0x02F6FD 0B:B6ED: C9 68     CMP #$68
C - - - - - 0x02F6FF 0B:B6EF: B0 1F     BCS bra_B710_RTS
C - - - - - 0x02F701 0B:B6F1: C9 59     CMP #$59
C - - - - - 0x02F703 0B:B6F3: F0 1C     BEQ bra_B711
C - - - - - 0x02F705 0B:B6F5: C9 5D     CMP #$5D
C - - - - - 0x02F707 0B:B6F7: F0 2C     BEQ bra_B725
C - - - - - 0x02F709 0B:B6F9: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x02F70C 0B:B6FC: 29 02     AND #con_obj_flag_02
C - - - - - 0x02F70E 0B:B6FE: D0 10     BNE bra_B710_RTS
sub_B700:
C - - - - - 0x02F710 0B:B700: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x02F713 0B:B703: 09 02     ORA #con_obj_flag_02
C - - - - - 0x02F715 0B:B705: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x02F718 0B:B708: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x02F71B 0B:B70B: 29 3F     AND #$3F
C - - - - - 0x02F71D 0B:B70D: 9D 65 05  STA ram_obj_state,X
bra_B710_RTS:
C - - - - - 0x02F720 0B:B710: 60        RTS
bra_B711:
- - - - - - 0x02F721 0B:B711: A2 01     LDX #$01
bra_B713_loop:
- - - - - - 0x02F723 0B:B713: BD 70 04  LDA ram_obj_flags,X
- - - - - - 0x02F726 0B:B716: 29 02     AND #con_obj_flag_02
- - - - - - 0x02F728 0B:B718: D0 03     BNE bra_B71D
- - - - - - 0x02F72A 0B:B71A: 20 00 B7  JSR sub_B700
bra_B71D:
- - - - - - 0x02F72D 0B:B71D: E8        INX
- - - - - - 0x02F72E 0B:B71E: E0 09     CPX #$09
- - - - - - 0x02F730 0B:B720: 90 F1     BCC bra_B713_loop
- - - - - - 0x02F732 0B:B722: A6 6C     LDX ram_006C_object_index
- - - - - - 0x02F734 0B:B724: 60        RTS
bra_B725:
C - - - - - 0x02F735 0B:B725: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x02F738 0B:B728: 29 02     AND #con_obj_flag_02
C - - - - - 0x02F73A 0B:B72A: D0 E4     BNE bra_B710_RTS
C - - - - - 0x02F73C 0B:B72C: 20 00 B7  JSR sub_B700
C - - - - - 0x02F73F 0B:B72F: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x02F742 0B:B732: AA        TAX
C - - - - - 0x02F743 0B:B733: 20 00 B7  JSR sub_B700
C - - - - - 0x02F746 0B:B736: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02F748 0B:B738: 60        RTS



sub_B739:
; in
    ; ram_0010_t01E_pos_Y_hi_1
    ; ram_0011_t015_pos_Y_hi_2
; out
    ; A = 
C - - - - - 0x02F749 0B:B739: 38        SEC
C - - - - - 0x02F74A 0B:B73A: A5 11     LDA ram_0011_t015_pos_Y_hi_2
C - - - - - 0x02F74C 0B:B73C: E5 10     SBC ram_0010_t01E_pos_Y_hi_1
C - - - - - 0x02F74E 0B:B73E: B0 04     BCS bra_B744_RTS
bra_B740:
C - - - - - 0x02F750 0B:B740: 49 FF     EOR #$FF
C - - - - - 0x02F752 0B:B742: 69 01     ADC #$01
bra_B744_RTS:
C - - - - - 0x02F754 0B:B744: 60        RTS



sub_B745:
; out
    ; A = 
C - - - - - 0x02F755 0B:B745: 38        SEC
C - - - - - 0x02F756 0B:B746: A5 10     LDA ram_0010_temp
C - - - - - 0x02F758 0B:B748: ED 38 04  SBC ram_plr_pos_X_hi
C - - - - - 0x02F75B 0B:B74B: B0 F7     BCS bra_B744_RTS
C - - - - - 0x02F75D 0B:B74D: 90 F1     BCC bra_B740    ; jmp


; bzk garbage
- - - - - - 0x02F75F 0B:B74F: 38        SEC
- - - - - - 0x02F760 0B:B750: A5 10     LDA ram_0010_temp
- - - - - - 0x02F762 0B:B752: ED 1C 04  SBC ram_plr_pos_Y_hi
- - - - - - 0x02F765 0B:B755: B0 ED     BCS bra_B744_RTS
- - - - - - 0x02F767 0B:B757: 90 E7     BCC bra_B740    ; jmp



sub_B759:
C - - - - - 0x02F769 0B:B759: AD 4E 05  LDA ram_plr_id
C - - - - - 0x02F76C 0B:B75C: 29 01     AND #$01
C - - - - - 0x02F76E 0B:B75E: D0 02     BNE bra_B762_RTS
C - - - - - 0x02F770 0B:B760: E6 9C     INC ram_009C
bra_B762_RTS:
C - - - - - 0x02F772 0B:B762: 60        RTS



loc_B763:
; out
    ; C
        ; 0 = close enough
        ; 1 = too far
C D 1 - - - 0x02F773 0B:B763: 38        SEC
C - - - - - 0x02F774 0B:B764: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x02F777 0B:B767: E5 0C     SBC ram_000C_t009_pos_X_hi
C - - - - - 0x02F779 0B:B769: 20 B6 80  JSR sub_80B6_get_distance_X_to_player
C - - - - - 0x02F77C 0B:B76C: C5 02     CMP ram_0002_t041_compare_distance_X
C - - - - - 0x02F77E 0B:B76E: B0 35     BCS bra_B7A5_RTS
; if close enough
C - - - - - 0x02F780 0B:B770: A0 00     LDY #$00
C - - - - - 0x02F782 0B:B772: A5 82     LDA ram_copy_plr_id
C - - - - - 0x02F784 0B:B774: C9 04     CMP #$04
C - - - - - 0x02F786 0B:B776: 90 01     BCC bra_B779
C - - - - - 0x02F788 0B:B778: C8        INY ; 01
bra_B779:
C - - - - - 0x02F789 0B:B779: B9 D2 B3  LDA tbl_B3D2,Y
C - - - - - 0x02F78C 0B:B77C: 6D 1C 04  ADC ram_plr_pos_Y_hi
C - - - - - 0x02F78F 0B:B77F: 85 11     STA ram_0011_t00B_distance_Y
C - - - - - 0x02F791 0B:B781: 38        SEC
C - - - - - 0x02F792 0B:B782: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x02F795 0B:B785: E5 0D     SBC ram_000D_t005_pos_Y_hi
C - - - - - 0x02F797 0B:B787: 20 C4 80  JSR sub_80C4_get_distance_to_0011
C - - - - - 0x02F79A 0B:B78A: C5 03     CMP ram_0003_t01A_compare_distance_Y
C - - - - - 0x02F79C 0B:B78C: 60        RTS



loc_B78D:
; out
    ; C
        ; 0 = close enough
        ; 1 = too far
C D 1 - - - 0x02F79D 0B:B78D: 38        SEC
C - - - - - 0x02F79E 0B:B78E: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x02F7A1 0B:B791: E5 0C     SBC ram_000C_t009_pos_X_hi
C - - - - - 0x02F7A3 0B:B793: 20 CE 80  JSR sub_80CE_get_distance_to_0011
C - - - - - 0x02F7A6 0B:B796: C5 02     CMP ram_0002_t041_compare_distance_X
C - - - - - 0x02F7A8 0B:B798: B0 0B     BCS bra_B7A5_RTS
; if close enough
C - - - - - 0x02F7AA 0B:B79A: 38        SEC
C - - - - - 0x02F7AB 0B:B79B: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x02F7AE 0B:B79E: E5 0D     SBC ram_000D_t005_pos_Y_hi
C - - - - - 0x02F7B0 0B:B7A0: 20 C4 80  JSR sub_80C4_get_distance_to_0011
C - - - - - 0x02F7B3 0B:B7A3: C5 03     CMP ram_0003_t01A_compare_distance_Y
bra_B7A5_RTS:
C - - - - - 0x02F7B5 0B:B7A5: 60        RTS



sub_B7A6:
C - - - - - 0x02F7B6 0B:B7A6: 98        TYA
C - - - - - 0x02F7B7 0B:B7A7: 0A        ASL
C - - - - - 0x02F7B8 0B:B7A8: BC A8 04  LDY ram_obj_facing,X
C - - - - - 0x02F7BB 0B:B7AB: F0 03     BEQ bra_B7B0_facing_right
C - - - - - 0x02F7BD 0B:B7AD: 18        CLC
C - - - - - 0x02F7BE 0B:B7AE: 69 01     ADC #$01
bra_B7B0_facing_right:
C - - - - - 0x02F7C0 0B:B7B0: A8        TAY
C - - - - - 0x02F7C1 0B:B7B1: B9 BD B7  LDA tbl_B7BD_pos_X_hi,Y
C - - - - - 0x02F7C4 0B:B7B4: 48        PHA
C - - - - - 0x02F7C5 0B:B7B5: B9 E3 B7  LDA tbl_B7E3_pos_Y_hi,Y
C - - - - - 0x02F7C8 0B:B7B8: A8        TAY
C - - - - - 0x02F7C9 0B:B7B9: 68        PLA
C - - - - - 0x02F7CA 0B:B7BA: 4C 1E FC  JMP loc_0x03FC2E



tbl_B7BD_pos_X_hi:
;                                              +---------- facing right
;                                              |    +----- facing left
;                                              |    |
- D 1 - - - 0x02F7CD 0B:B7BD: 08        .byte $08, $F8   ; 00 
- D 1 - - - 0x02F7CF 0B:B7BF: F8        .byte $F8, $08   ; 01 
- D 1 - - - 0x02F7D1 0B:B7C1: 08        .byte $08, $F8   ; 02 
- D 1 - - - 0x02F7D3 0B:B7C3: 08        .byte $08, $F8   ; 03 
- D 1 - - - 0x02F7D5 0B:B7C5: 04        .byte $04, $FC   ; 04 
- D 1 - - - 0x02F7D7 0B:B7C7: 08        .byte $08, $F8   ; 05 
- D 1 - - - 0x02F7D9 0B:B7C9: 04        .byte $04, $FC   ; 06 
- - - - - - 0x02F7DB 0B:B7CB: 10        .byte $10, $F0   ; 07 
- D 1 - - - 0x02F7DD 0B:B7CD: 08        .byte $08, $F8   ; 08 
- - - - - - 0x02F7DF 0B:B7CF: 0C        .byte $0C, $F4   ; 09 
- D 1 - - - 0x02F7E1 0B:B7D1: FC        .byte $FC, $04   ; 0A 
- D 1 - - - 0x02F7E3 0B:B7D3: EC        .byte $EC, $14   ; 0B 
- D 1 - - - 0x02F7E5 0B:B7D5: 08        .byte $08, $F7   ; 0C 
- D 1 - - - 0x02F7E7 0B:B7D7: 00        .byte $00, $00   ; 0D 
- D 1 - - - 0x02F7E9 0B:B7D9: 00        .byte $00, $00   ; 0E 
- - - - - - 0x02F7EB 0B:B7DB: 10        .byte $10, $F0   ; 0F 
- - - - - - 0x02F7ED 0B:B7DD: 18        .byte $18, $E8   ; 10 
- - - - - - 0x02F7EF 0B:B7DF: 04        .byte $04, $FC   ; 11 
- - - - - - 0x02F7F1 0B:B7E1: 08        .byte $08, $F8   ; 12 



tbl_B7E3_pos_Y_hi:
;                                              +---------- if facing right
;                                              |    +----- if facing left
;                                              |    |
- D 1 - - - 0x02F7F3 0B:B7E3: 08        .byte $08, $08   ; 00 
- D 1 - - - 0x02F7F5 0B:B7E5: 10        .byte $10, $10   ; 01 
- D 1 - - - 0x02F7F7 0B:B7E7: FC        .byte $FC, $FC   ; 02 
- D 1 - - - 0x02F7F9 0B:B7E9: 08        .byte $08, $08   ; 03 
- D 1 - - - 0x02F7FB 0B:B7EB: F8        .byte $F8, $F8   ; 04 
- D 1 - - - 0x02F7FD 0B:B7ED: 10        .byte $10, $10   ; 05 
- D 1 - - - 0x02F7FF 0B:B7EF: 10        .byte $10, $10   ; 06 
- - - - - - 0x02F801 0B:B7F1: 00        .byte $00, $00   ; 07 
- D 1 - - - 0x02F803 0B:B7F3: 10        .byte $10, $10   ; 08 
- - - - - - 0x02F805 0B:B7F5: F8        .byte $F8, $F8   ; 09 
- D 1 - - - 0x02F807 0B:B7F7: 10        .byte $10, $10   ; 0A 
- D 1 - - - 0x02F809 0B:B7F9: 10        .byte $10, $10   ; 0B 
- D 1 - - - 0x02F80B 0B:B7FB: F4        .byte $F4, $F4   ; 0C 
- D 1 - - - 0x02F80D 0B:B7FD: 10        .byte $10, $10   ; 0D 
- D 1 - - - 0x02F80F 0B:B7FF: 08        .byte $08, $08   ; 0E 
- - - - - - 0x02F811 0B:B801: FC        .byte $FC, $FC   ; 0F 
- - - - - - 0x02F813 0B:B803: 00        .byte $00, $00   ; 10 
- - - - - - 0x02F815 0B:B805: 08        .byte $08, $08   ; 11 
- - - - - - 0x02F817 0B:B807: 00        .byte $00, $00   ; 12 



sub_B809:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x02F819 0B:B809: A0 00     LDY #$00
bra_B80B_loop:
C - - - - - 0x02F81B 0B:B80B: B9 1C B8  LDA tbl_B81C_plr_state,Y
C - - - - - 0x02F81E 0B:B80E: 30 08     BMI bra_B818
C - - - - - 0x02F820 0B:B810: CD 65 05  CMP ram_plr_state
C - - - - - 0x02F823 0B:B813: F0 05     BEQ bra_B81A
C - - - - - 0x02F825 0B:B815: C8        INY
C - - - - - 0x02F826 0B:B816: D0 F3     BNE bra_B80B_loop
bra_B818:
C - - - - - 0x02F828 0B:B818: 18        CLC
C - - - - - 0x02F829 0B:B819: 60        RTS
bra_B81A:
C - - - - - 0x02F82A 0B:B81A: 38        SEC
C - - - - - 0x02F82B 0B:B81B: 60        RTS



tbl_B81C_plr_state:
- D 1 - - - 0x02F82C 0B:B81C: 0E        .byte con_plr_state_move_towards_stairs   ; 00 
- D 1 - - - 0x02F82D 0B:B81D: 10        .byte con_plr_state_attach_to_stairs   ; 01 
- D 1 - - - 0x02F82E 0B:B81E: 12        .byte con_plr_state_idle_on_stairs   ; 02 
- D 1 - - - 0x02F82F 0B:B81F: 14        .byte con_plr_state_move_on_stairs   ; 03 
- D 1 - - - 0x02F830 0B:B820: 1E        .byte con_plr_state_normal_atk_on_stairs   ; 04 
- D 1 - - - 0x02F831 0B:B821: 24        .byte con_plr_state_subw_atk_on_stairs   ; 05 
- D 1 - - - 0x02F832 0B:B822: FF        .byte $FF   ; 06 end token



sub_B823_multiply_8bit_by_16bit:
; bzk optimize, use 8 * 8 bit multiplication routine
; in
    ; A = multiplicand (pos_X_hi distance)
    ; X = multiplier lo
    ; Y = multiplier hi (always 00)
; out
    ; 0000-0002 = 24-bit result
        ; ram_0001_t04F_result_lo
        ; ram_0002_t042_result_hi (not used)
C - - - - - 0x02F833 0B:B823: 85 00     STA ram_0000_t112_multiplicand
C - - - - - 0x02F835 0B:B825: 86 04     STX ram_0004_t01C_multiplier_lo
C - - - - - 0x02F837 0B:B827: 84 05     STY ram_0005_t011_multiplier_hi
C - - - - - 0x02F839 0B:B829: A9 00     LDA #$00
C - - - - - 0x02F83B 0B:B82B: 85 01     STA ram_0001_t04F_result_lo
C - - - - - 0x02F83D 0B:B82D: 85 02     STA ram_0002_t042_result_hi
C - - - - - 0x02F83F 0B:B82F: A0 08     LDY #$08
C - - - - - 0x02F841 0B:B831: 46 00     LSR ram_0000_t112_multiplicand
bra_B833_loop:
C - - - - - 0x02F843 0B:B833: 90 0D     BCC bra_B842
C - - - - - 0x02F845 0B:B835: 18        CLC
C - - - - - 0x02F846 0B:B836: A5 04     LDA ram_0004_t01C_multiplier_lo
C - - - - - 0x02F848 0B:B838: 65 01     ADC ram_0001_t04F_result_lo
C - - - - - 0x02F84A 0B:B83A: 85 01     STA ram_0001_t04F_result_lo
C - - - - - 0x02F84C 0B:B83C: A5 05     LDA ram_0005_t011_multiplier_hi
C - - - - - 0x02F84E 0B:B83E: 65 02     ADC ram_0002_t042_result_hi
C - - - - - 0x02F850 0B:B840: 85 02     STA ram_0002_t042_result_hi
bra_B842:
C - - - - - 0x02F852 0B:B842: 66 02     ROR ram_0002_t042_result_hi
C - - - - - 0x02F854 0B:B844: 66 01     ROR ram_0001_t04F_result_lo
C - - - - - 0x02F856 0B:B846: 66 00     ROR ram_0000_t112_multiplicand
C - - - - - 0x02F858 0B:B848: 88        DEY
C - - - - - 0x02F859 0B:B849: D0 E8     BNE bra_B833_loop
C - - - - - 0x02F85B 0B:B84B: 60        RTS



sub_B84C:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x02F85C 0B:B84C: A4 82     LDY ram_copy_plr_id
C - - - - - 0x02F85E 0B:B84E: B9 43 BB  LDA tbl_BB43,Y
C - - - - - 0x02F861 0B:B851: 85 00     STA ram_0000_t0D6
C - - - - - 0x02F863 0B:B853: BC 4E 05  LDY ram_obj_id,X
C - - - - - 0x02F866 0B:B856: 18        CLC
C - - - - - 0x02F867 0B:B857: B9 C8 BB  LDA tbl_BBC8_distance_X,Y
C - - - - - 0x02F86A 0B:B85A: 65 00     ADC ram_0000_t0D6
C - - - - - 0x02F86C 0B:B85C: 85 02     STA ram_0002_t02C_compare_distance_X
C - - - - - 0x02F86E 0B:B85E: 20 B3 80  JSR sub_80B3_get_object_distance_X_to_player
C - - - - - 0x02F871 0B:B861: C5 02     CMP ram_0002_t02C_compare_distance_X
C - - - - - 0x02F873 0B:B863: B0 22     BCS bra_B887_RTS
; if close enough
C - - - - - 0x02F875 0B:B865: A4 82     LDY ram_copy_plr_id
C - - - - - 0x02F877 0B:B867: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x02F87A 0B:B86A: 38        SEC
C - - - - - 0x02F87B 0B:B86B: F9 BB B9  SBC tbl_B9BB,Y
C - - - - - 0x02F87E 0B:B86E: 85 03     STA ram_0003_t00D
C - - - - - 0x02F880 0B:B870: BC 4E 05  LDY ram_obj_id,X
C - - - - - 0x02F883 0B:B873: 18        CLC
C - - - - - 0x02F884 0B:B874: B9 60 BC  LDA tbl_BC60_pos_Y_hi,Y
C - - - - - 0x02F887 0B:B877: 69 03     ADC #$03
C - - - - - 0x02F889 0B:B879: 85 02     STA ram_0002_t02D
C - - - - - 0x02F88B 0B:B87B: 38        SEC
C - - - - - 0x02F88C 0B:B87C: A5 03     LDA ram_0003_t00D
C - - - - - 0x02F88E 0B:B87E: FD 1C 04  SBC ram_obj_pos_Y_hi,X
C - - - - - 0x02F891 0B:B881: B0 02     BCS bra_B885
C - - - - - 0x02F893 0B:B883: 49 FF     EOR #$FF
bra_B885:
C - - - - - 0x02F895 0B:B885: C5 02     CMP ram_0002_t02D
bra_B887_RTS:
C - - - - - 0x02F897 0B:B887: 60        RTS



loc_B888:
C D 1 - - - 0x02F898 0B:B888: A4 82     LDY ram_copy_plr_id
C - - - - - 0x02F89A 0B:B88A: B9 B2 B9  LDA tbl_B9B2_pos_Y_hi,Y
C - - - - - 0x02F89D 0B:B88D: 18        CLC
C - - - - - 0x02F89E 0B:B88E: 6D 1C 04  ADC ram_plr_pos_Y_hi
C - - - - - 0x02F8A1 0B:B891: 85 00     STA ram_0000_t0D7_pos_Y_hi
C - - - - - 0x02F8A3 0B:B893: A0 00     LDY #$00
C - - - - - 0x02F8A5 0B:B895: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x02F8A8 0B:B898: 38        SEC
C - - - - - 0x02F8A9 0B:B899: FD 38 04  SBC ram_obj_pos_X_hi,X
C - - - - - 0x02F8AC 0B:B89C: B0 06     BCS bra_B8A4
C - - - - - 0x02F8AE 0B:B89E: C8        INY ; 01
C - - - - - 0x02F8AF 0B:B89F: 49 FF     EOR #$FF
C - - - - - 0x02F8B1 0B:B8A1: 18        CLC
C - - - - - 0x02F8B2 0B:B8A2: 69 01     ADC #$01
bra_B8A4:
C - - - - - 0x02F8B4 0B:B8A4: C9 08     CMP #$08
C - - - - - 0x02F8B6 0B:B8A6: B0 35     BCS bra_B8DD_RTS
C - - - - - 0x02F8B8 0B:B8A8: 84 01     STY ram_0001_t056_flag
C - - - - - 0x02F8BA 0B:B8AA: A0 00     LDY #$00
C - - - - - 0x02F8BC 0B:B8AC: A5 00     LDA ram_0000_t0D7_pos_Y_hi
C - - - - - 0x02F8BE 0B:B8AE: 38        SEC
C - - - - - 0x02F8BF 0B:B8AF: FD 1C 04  SBC ram_obj_pos_Y_hi,X
C - - - - - 0x02F8C2 0B:B8B2: B0 06     BCS bra_B8BA
C - - - - - 0x02F8C4 0B:B8B4: C8        INY ; 01
C - - - - - 0x02F8C5 0B:B8B5: 49 FF     EOR #$FF
C - - - - - 0x02F8C7 0B:B8B7: 18        CLC
C - - - - - 0x02F8C8 0B:B8B8: 69 01     ADC #$01
bra_B8BA:
C - - - - - 0x02F8CA 0B:B8BA: C9 08     CMP #$08
C - - - - - 0x02F8CC 0B:B8BC: B0 1F     BCS bra_B8DD_RTS
C - - - - - 0x02F8CE 0B:B8BE: 84 02     STY ram_0002_t048_flag
C - - - - - 0x02F8D0 0B:B8C0: 86 94     STX ram_0094_object_index
C - - - - - 0x02F8D2 0B:B8C2: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x02F8D5 0B:B8C5: 30 17     BMI bra_B8DE
C - - - - - 0x02F8D7 0B:B8C7: C9 20     CMP #$20
C - - - - - 0x02F8D9 0B:B8C9: B0 06     BCS bra_B8D1
C - - - - - 0x02F8DB 0B:B8CB: A5 01     LDA ram_0001_t056_flag
C - - - - - 0x02F8DD 0B:B8CD: F0 0A     BEQ bra_B8D9
C - - - - - 0x02F8DF 0B:B8CF: D0 04     BNE bra_B8D5    ; jmp
bra_B8D1:
C - - - - - 0x02F8E1 0B:B8D1: A5 02     LDA ram_0002_t048_flag
C - - - - - 0x02F8E3 0B:B8D3: F0 04     BEQ bra_B8D9
bra_B8D5:
C - - - - - 0x02F8E5 0B:B8D5: A9 01     LDA #$01
C - - - - - 0x02F8E7 0B:B8D7: D0 02     BNE bra_B8DB    ; jmp
bra_B8D9:
C - - - - - 0x02F8E9 0B:B8D9: A9 02     LDA #$02
bra_B8DB:
C - - - - - 0x02F8EB 0B:B8DB: 85 93     STA ram_0093_speed_config
bra_B8DD_RTS:
C - - - - - 0x02F8ED 0B:B8DD: 60        RTS
bra_B8DE:
C - - - - - 0x02F8EE 0B:B8DE: C9 E0     CMP #$E0
C - - - - - 0x02F8F0 0B:B8E0: 90 06     BCC bra_B8E8
C - - - - - 0x02F8F2 0B:B8E2: A5 01     LDA ram_0001_t056_flag
C - - - - - 0x02F8F4 0B:B8E4: D0 F3     BNE bra_B8D9
C - - - - - 0x02F8F6 0B:B8E6: F0 ED     BEQ bra_B8D5    ; jmp
bra_B8E8:
C - - - - - 0x02F8F8 0B:B8E8: A5 02     LDA ram_0002_t048_flag
C - - - - - 0x02F8FA 0B:B8EA: F0 ED     BEQ bra_B8D9
C - - - - - 0x02F8FC 0B:B8EC: D0 E7     BNE bra_B8D5    ; jmp



loc_B8EE:
C D 1 - - - 0x02F8FE 0B:B8EE: A5 AF     LDA ram_00AF
C - - - - - 0x02F900 0B:B8F0: F0 04     BEQ bra_B8F6
C - - - - - 0x02F902 0B:B8F2: E4 D2     CPX ram_00D2
C - - - - - 0x02F904 0B:B8F4: F0 E7     BEQ bra_B8DD_RTS
bra_B8F6:
C - - - - - 0x02F906 0B:B8F6: A5 81     LDA ram_0081
C - - - - - 0x02F908 0B:B8F8: C9 06     CMP #$06
C - - - - - 0x02F90A 0B:B8FA: F0 E1     BEQ bra_B8DD_RTS
C - - - - - 0x02F90C 0B:B8FC: A4 82     LDY ram_copy_plr_id
C - - - - - 0x02F90E 0B:B8FE: B9 B2 B9  LDA tbl_B9B2_pos_Y_hi,Y
C - - - - - 0x02F911 0B:B901: 18        CLC
C - - - - - 0x02F912 0B:B902: 6D 1C 04  ADC ram_plr_pos_Y_hi
C - - - - - 0x02F915 0B:B905: 85 00     STA ram_0000_t0D8_pos_Y_hi
C - - - - - 0x02F917 0B:B907: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x02F91A 0B:B90A: F0 4E     BEQ bra_B95A
C - - - - - 0x02F91C 0B:B90C: A0 00     LDY #$00
C - - - - - 0x02F91E 0B:B90E: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x02F921 0B:B911: 38        SEC
C - - - - - 0x02F922 0B:B912: FD 38 04  SBC ram_obj_pos_X_hi,X
C - - - - - 0x02F925 0B:B915: B0 07     BCS bra_B91E
C - - - - - 0x02F927 0B:B917: A0 80     LDY #$80
C - - - - - 0x02F929 0B:B919: 49 FF     EOR #$FF
C - - - - - 0x02F92B 0B:B91B: 18        CLC
C - - - - - 0x02F92C 0B:B91C: 69 01     ADC #$01
bra_B91E:
C - - - - - 0x02F92E 0B:B91E: 38        SEC
C - - - - - 0x02F92F 0B:B91F: E9 05     SBC #$05
C - - - - - 0x02F931 0B:B921: B0 02     BCS bra_B925_not_underflow
C - - - - - 0x02F933 0B:B923: A9 00     LDA #$00
bra_B925_not_underflow:
C - - - - - 0x02F935 0B:B925: C9 40     CMP #$40
C - - - - - 0x02F937 0B:B927: B0 B4     BCS bra_B8DD_RTS
C - - - - - 0x02F939 0B:B929: 85 90     STA ram_0090
C - - - - - 0x02F93B 0B:B92B: 98        TYA
C - - - - - 0x02F93C 0B:B92C: 05 90     ORA ram_0090
C - - - - - 0x02F93E 0B:B92E: 85 90     STA ram_0090
C - - - - - 0x02F940 0B:B930: 29 7F     AND #$7F
C - - - - - 0x02F942 0B:B932: A8        TAY
C - - - - - 0x02F943 0B:B933: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x02F946 0B:B936: 38        SEC
C - - - - - 0x02F947 0B:B937: F9 7E BA  SBC tbl_BA7E_pos_Y_hi,Y
C - - - - - 0x02F94A 0B:B93A: 38        SEC
C - - - - - 0x02F94B 0B:B93B: E5 00     SBC ram_0000_t0D8_pos_Y_hi
C - - - - - 0x02F94D 0B:B93D: B0 06     BCS bra_B945
C - - - - - 0x02F94F 0B:B93F: C9 FB     CMP #$FB
C - - - - - 0x02F951 0B:B941: 90 68     BCC bra_B9AB_RTS
C - - - - - 0x02F953 0B:B943: B0 08     BCS bra_B94D    ; jmp
bra_B945:
C - - - - - 0x02F955 0B:B945: C0 3A     CPY #$3A
C - - - - - 0x02F957 0B:B947: B0 0B     BCS bra_B954
C - - - - - 0x02F959 0B:B949: C9 04     CMP #$04
C - - - - - 0x02F95B 0B:B94B: B0 5E     BCS bra_B9AB_RTS
bra_B94D:
C - - - - - 0x02F95D 0B:B94D: 85 91     STA ram_0091
C - - - - - 0x02F95F 0B:B94F: A9 01     LDA #$01
; bzk optimize, BNE
C - - - - - 0x02F961 0B:B951: 4C 9F B9  JMP loc_B99F
bra_B954:
C - - - - - 0x02F964 0B:B954: C9 10     CMP #$10
C - - - - - 0x02F966 0B:B956: B0 53     BCS bra_B9AB_RTS
C - - - - - 0x02F968 0B:B958: 90 F3     BCC bra_B94D    ; jmp
bra_B95A:
C - - - - - 0x02F96A 0B:B95A: A0 00     LDY #$00
C - - - - - 0x02F96C 0B:B95C: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x02F96F 0B:B95F: 38        SEC
C - - - - - 0x02F970 0B:B960: FD 38 04  SBC ram_obj_pos_X_hi,X
C - - - - - 0x02F973 0B:B963: B0 07     BCS bra_B96C
C - - - - - 0x02F975 0B:B965: A0 80     LDY #$80
C - - - - - 0x02F977 0B:B967: 49 FF     EOR #$FF
C - - - - - 0x02F979 0B:B969: 18        CLC
C - - - - - 0x02F97A 0B:B96A: 69 01     ADC #$01
bra_B96C:
C - - - - - 0x02F97C 0B:B96C: 38        SEC
C - - - - - 0x02F97D 0B:B96D: E9 05     SBC #$05
C - - - - - 0x02F97F 0B:B96F: B0 02     BCS bra_B973_not_underflow
C - - - - - 0x02F981 0B:B971: A9 00     LDA #$00
bra_B973_not_underflow:
C - - - - - 0x02F983 0B:B973: C9 20     CMP #$20
C - - - - - 0x02F985 0B:B975: B0 34     BCS bra_B9AB_RTS
C - - - - - 0x02F987 0B:B977: 85 90     STA ram_0090
C - - - - - 0x02F989 0B:B979: 98        TYA
C - - - - - 0x02F98A 0B:B97A: 05 90     ORA ram_0090
C - - - - - 0x02F98C 0B:B97C: 85 90     STA ram_0090
C - - - - - 0x02F98E 0B:B97E: 29 7F     AND #$7F
C - - - - - 0x02F990 0B:B980: A8        TAY
C - - - - - 0x02F991 0B:B981: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x02F994 0B:B984: 38        SEC
C - - - - - 0x02F995 0B:B985: F9 BF BA  SBC tbl_BABF_pos_Y_hi,Y
C - - - - - 0x02F998 0B:B988: 38        SEC
C - - - - - 0x02F999 0B:B989: E5 00     SBC ram_0000_t0D8_pos_Y_hi
C - - - - - 0x02F99B 0B:B98B: B0 06     BCS bra_B993
C - - - - - 0x02F99D 0B:B98D: C9 FB     CMP #$FB
C - - - - - 0x02F99F 0B:B98F: 90 1A     BCC bra_B9AB_RTS
C - - - - - 0x02F9A1 0B:B991: B0 08     BCS bra_B99B    ; jmp
bra_B993:
C - - - - - 0x02F9A3 0B:B993: C0 1F     CPY #$1F
C - - - - - 0x02F9A5 0B:B995: B0 15     BCS bra_B9AC
C - - - - - 0x02F9A7 0B:B997: C9 04     CMP #$04
C - - - - - 0x02F9A9 0B:B999: B0 10     BCS bra_B9AB_RTS
bra_B99B:
C - - - - - 0x02F9AB 0B:B99B: 85 91     STA ram_0091
C - - - - - 0x02F9AD 0B:B99D: A9 00     LDA #$00
loc_B99F:
C D 1 - - - 0x02F9AF 0B:B99F: 85 95     STA ram_0095_speed_config
C - - - - - 0x02F9B1 0B:B9A1: 86 D4     STX ram_00D4
C - - - - - 0x02F9B3 0B:B9A3: A9 06     LDA #$06
C - - - - - 0x02F9B5 0B:B9A5: 85 81     STA ram_0081
C - - - - - 0x02F9B7 0B:B9A7: A9 00     LDA #$00
C - - - - - 0x02F9B9 0B:B9A9: 85 AF     STA ram_00AF
bra_B9AB_RTS:
C - - - - - 0x02F9BB 0B:B9AB: 60        RTS
bra_B9AC:
C - - - - - 0x02F9BC 0B:B9AC: C9 10     CMP #$10
C - - - - - 0x02F9BE 0B:B9AE: B0 FB     BCS bra_B9AB_RTS
C - - - - - 0x02F9C0 0B:B9B0: 90 E9     BCC bra_B99B    ; jmp



tbl_B9B2_pos_Y_hi:
- D 1 - - - 0x02F9C2 0B:B9B2: 10        .byte $10   ; 00 
- - - - - - 0x02F9C3 0B:B9B3: 10        .byte $10   ; 01 
- D 1 - - - 0x02F9C4 0B:B9B4: 0C        .byte $0C   ; 02 
- - - - - - 0x02F9C5 0B:B9B5: 10        .byte $10   ; 03 
- D 1 - - - 0x02F9C6 0B:B9B6: 10        .byte $10   ; 04 
- - - - - - 0x02F9C7 0B:B9B7: 10        .byte $10   ; 05 
- D 1 - - - 0x02F9C8 0B:B9B8: 0C        .byte $0C   ; 06 
- - - - - - 0x02F9C9 0B:B9B9: 10        .byte $10   ; 07 
- - - - - - 0x02F9CA 0B:B9BA: 08        .byte $08   ; 08 



tbl_B9BB:
- D 1 - - - 0x02F9CB 0B:B9BB: 08        .byte $08   ; 00 
- D 1 - - - 0x02F9CC 0B:B9BC: 08        .byte $08   ; 01 
- D 1 - - - 0x02F9CD 0B:B9BD: 04        .byte $04   ; 02 
- D 1 - - - 0x02F9CE 0B:B9BE: 08        .byte $08   ; 03 
- D 1 - - - 0x02F9CF 0B:B9BF: 02        .byte $02   ; 04 
- D 1 - - - 0x02F9D0 0B:B9C0: 02        .byte $02   ; 05 
- - - - - - 0x02F9D1 0B:B9C1: 00        .byte $00   ; 06 
- D 1 - - - 0x02F9D2 0B:B9C2: 02        .byte $02   ; 07 
- D 1 - - - 0x02F9D3 0B:B9C3: 04        .byte $04   ; 08 



bra_B9C4:
C - - - - - 0x02F9D4 0B:B9C4: C8        INY ; 01
C - - - - - 0x02F9D5 0B:B9C5: 84 0F     STY ram_000F_t007_flag
C - - - - - 0x02F9D7 0B:B9C7: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x02F9DA 0B:B9CA: 38        SEC
C - - - - - 0x02F9DB 0B:B9CB: E9 40     SBC #$40
C - - - - - 0x02F9DD 0B:B9CD: 4C E7 B9  JMP loc_B9E7



loc_B9D0:
C D 1 - - - 0x02F9E0 0B:B9D0: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x02F9E3 0B:B9D3: F0 01     BEQ bra_B9D6_00
bra_B9D5_RTS:
C - - - - - 0x02F9E5 0B:B9D5: 60        RTS
bra_B9D6_00:
C - - - - - 0x02F9E6 0B:B9D6: A0 00     LDY #$00
C - - - - - 0x02F9E8 0B:B9D8: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x02F9EB 0B:B9DB: C9 40     CMP #$40
C - - - - - 0x02F9ED 0B:B9DD: B0 E5     BCS bra_B9C4
C - - - - - 0x02F9EF 0B:B9DF: 84 0F     STY ram_000F_t007_flag
C - - - - - 0x02F9F1 0B:B9E1: A9 40     LDA #$40
C - - - - - 0x02F9F3 0B:B9E3: 38        SEC
C - - - - - 0x02F9F4 0B:B9E4: FD 65 05  SBC ram_obj_state,X
loc_B9E7:
C D 1 - - - 0x02F9F7 0B:B9E7: 85 07     STA ram_0007_t008
C - - - - - 0x02F9F9 0B:B9E9: A8        TAY
C - - - - - 0x02F9FA 0B:B9EA: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x02F9FD 0B:B9ED: 38        SEC
C - - - - - 0x02F9FE 0B:B9EE: F9 E0 BA  SBC tbl_BAE0_pos_X_hi,Y
C - - - - - 0x02FA01 0B:B9F1: 85 09     STA ram_0009_t00D_pos_X_hi
C - - - - - 0x02FA03 0B:B9F3: A2 00     LDX #$00
C - - - - - 0x02FA05 0B:B9F5: A5 09     LDA ram_0009_t00D_pos_X_hi
C - - - - - 0x02FA07 0B:B9F7: 38        SEC
C - - - - - 0x02FA08 0B:B9F8: ED 38 04  SBC ram_plr_pos_X_hi
C - - - - - 0x02FA0B 0B:B9FB: B0 06     BCS bra_BA03
C - - - - - 0x02FA0D 0B:B9FD: E8        INX ; 01
C - - - - - 0x02FA0E 0B:B9FE: 49 FF     EOR #$FF
C - - - - - 0x02FA10 0B:BA00: 18        CLC
C - - - - - 0x02FA11 0B:BA01: 69 01     ADC #$01
bra_BA03:
C - - - - - 0x02FA13 0B:BA03: D9 22 BB  CMP tbl_BB22_pos_X_hi,Y
C - - - - - 0x02FA16 0B:BA06: B0 CD     BCS bra_B9D5_RTS
C - - - - - 0x02FA18 0B:BA08: 85 0A     STA ram_000A_t01B_pos_X_hi_distance
C - - - - - 0x02FA1A 0B:BA0A: 86 0B     STX ram_000B_t002_flag
C - - - - - 0x02FA1C 0B:BA0C: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02FA1E 0B:BA0E: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x02FA21 0B:BA11: A6 0F     LDX ram_000F_t007_flag
C - - - - - 0x02FA23 0B:BA13: F0 06     BEQ bra_BA1B
C - - - - - 0x02FA25 0B:BA15: 38        SEC
C - - - - - 0x02FA26 0B:BA16: F9 01 BB  SBC tbl_BB01_pos_Y_hi,Y
C - - - - - 0x02FA29 0B:BA19: D0 04     BNE bra_BA1F
bra_BA1B:
C - - - - - 0x02FA2B 0B:BA1B: 18        CLC
C - - - - - 0x02FA2C 0B:BA1C: 79 01 BB  ADC tbl_BB01_pos_Y_hi,Y
bra_BA1F:
C - - - - - 0x02FA2F 0B:BA1F: 38        SEC
C - - - - - 0x02FA30 0B:BA20: E9 10     SBC #$10
C - - - - - 0x02FA32 0B:BA22: 85 0C     STA ram_000C_t00A
C - - - - - 0x02FA34 0B:BA24: A4 07     LDY ram_0007_t008
C - - - - - 0x02FA36 0B:BA26: B9 C2 FD  LDA tbl_0x03FDD2,Y
C - - - - - 0x02FA39 0B:BA29: AA        TAX
C - - - - - 0x02FA3A 0B:BA2A: A0 00     LDY #$00
C - - - - - 0x02FA3C 0B:BA2C: A5 0A     LDA ram_000A_t01B_pos_X_hi_distance
C - - - - - 0x02FA3E 0B:BA2E: 20 23 B8  JSR sub_B823_multiply_8bit_by_16bit
C - - - - - 0x02FA41 0B:BA31: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02FA43 0B:BA33: A5 0F     LDA ram_000F_t007_flag
C - - - - - 0x02FA45 0B:BA35: F0 06     BEQ bra_BA3D
C - - - - - 0x02FA47 0B:BA37: A5 0B     LDA ram_000B_t002_flag
C - - - - - 0x02FA49 0B:BA39: F0 06     BEQ bra_BA41
C - - - - - 0x02FA4B 0B:BA3B: D0 0B     BNE bra_BA48    ; jmp
bra_BA3D:
C - - - - - 0x02FA4D 0B:BA3D: A5 0B     LDA ram_000B_t002_flag
C - - - - - 0x02FA4F 0B:BA3F: F0 07     BEQ bra_BA48
bra_BA41:
C - - - - - 0x02FA51 0B:BA41: A5 0C     LDA ram_000C_t00A
C - - - - - 0x02FA53 0B:BA43: 38        SEC
C - - - - - 0x02FA54 0B:BA44: E5 01     SBC ram_0001_t04F_result_lo
C - - - - - 0x02FA56 0B:BA46: D0 05     BNE bra_BA4D
bra_BA48:
C - - - - - 0x02FA58 0B:BA48: A5 0C     LDA ram_000C_t00A
C - - - - - 0x02FA5A 0B:BA4A: 18        CLC
C - - - - - 0x02FA5B 0B:BA4B: 65 01     ADC ram_0001_t04F_result_lo
bra_BA4D:
; bzk optimize, useless STA?
C - - - - - 0x02FA5D 0B:BA4D: 85 0C     STA ram_000C_t00A
C - - - - - 0x02FA5F 0B:BA4F: 38        SEC
C - - - - - 0x02FA60 0B:BA50: ED 1C 04  SBC ram_plr_pos_Y_hi
C - - - - - 0x02FA63 0B:BA53: B0 06     BCS bra_BA5B
C - - - - - 0x02FA65 0B:BA55: C9 F8     CMP #$F8
C - - - - - 0x02FA67 0B:BA57: 90 24     BCC bra_BA7D_RTS
C - - - - - 0x02FA69 0B:BA59: B0 04     BCS bra_BA5F    ; jmp
bra_BA5B:
C - - - - - 0x02FA6B 0B:BA5B: C9 08     CMP #$08
C - - - - - 0x02FA6D 0B:BA5D: B0 1E     BCS bra_BA7D_RTS
bra_BA5F:
C - - - - - 0x02FA6F 0B:BA5F: 85 91     STA ram_0091
C - - - - - 0x02FA71 0B:BA61: A5 07     LDA ram_0007_t008
C - - - - - 0x02FA73 0B:BA63: BC 65 05  LDY ram_obj_state,X
C - - - - - 0x02FA76 0B:BA66: C0 40     CPY #$40
C - - - - - 0x02FA78 0B:BA68: 90 02     BCC bra_BA6C
C - - - - - 0x02FA7A 0B:BA6A: 09 80     ORA #$80
bra_BA6C:
C - - - - - 0x02FA7C 0B:BA6C: 85 90     STA ram_0090
C - - - - - 0x02FA7E 0B:BA6E: A9 01     LDA #$01
C - - - - - 0x02FA80 0B:BA70: A4 0B     LDY ram_000B_t002_flag
C - - - - - 0x02FA82 0B:BA72: D0 02     BNE bra_BA76
C - - - - - 0x02FA84 0B:BA74: A9 08     LDA #$08
bra_BA76:
C - - - - - 0x02FA86 0B:BA76: 9D 45 06  STA ram_obj_0646,X
C - - - - - 0x02FA89 0B:BA79: A9 05     LDA #$05
C - - - - - 0x02FA8B 0B:BA7B: 85 81     STA ram_0081
bra_BA7D_RTS:
C - - - - - 0x02FA8D 0B:BA7D: 60        RTS



tbl_BA7E_pos_Y_hi:
- D 1 - - - 0x02FA8E 0B:BA7E: 40        .byte $40   ; 00 
- D 1 - - - 0x02FA8F 0B:BA7F: 40        .byte $40   ; 01 
- D 1 - - - 0x02FA90 0B:BA80: 40        .byte $40   ; 02 
- D 1 - - - 0x02FA91 0B:BA81: 40        .byte $40   ; 03 
- D 1 - - - 0x02FA92 0B:BA82: 40        .byte $40   ; 04 
- D 1 - - - 0x02FA93 0B:BA83: 40        .byte $40   ; 05 
- D 1 - - - 0x02FA94 0B:BA84: 40        .byte $40   ; 06 
- D 1 - - - 0x02FA95 0B:BA85: 40        .byte $40   ; 07 
- D 1 - - - 0x02FA96 0B:BA86: 3F        .byte $3F   ; 08 
- D 1 - - - 0x02FA97 0B:BA87: 3F        .byte $3F   ; 09 
- D 1 - - - 0x02FA98 0B:BA88: 3F        .byte $3F   ; 0A 
- D 1 - - - 0x02FA99 0B:BA89: 3F        .byte $3F   ; 0B 
- D 1 - - - 0x02FA9A 0B:BA8A: 3F        .byte $3F   ; 0C 
- D 1 - - - 0x02FA9B 0B:BA8B: 3F        .byte $3F   ; 0D 
- D 1 - - - 0x02FA9C 0B:BA8C: 3E        .byte $3E   ; 0E 
- D 1 - - - 0x02FA9D 0B:BA8D: 3E        .byte $3E   ; 0F 
- D 1 - - - 0x02FA9E 0B:BA8E: 3E        .byte $3E   ; 10 
- D 1 - - - 0x02FA9F 0B:BA8F: 3E        .byte $3E   ; 11 
- D 1 - - - 0x02FAA0 0B:BA90: 3D        .byte $3D   ; 12 
- D 1 - - - 0x02FAA1 0B:BA91: 3D        .byte $3D   ; 13 
- D 1 - - - 0x02FAA2 0B:BA92: 3D        .byte $3D   ; 14 
- D 1 - - - 0x02FAA3 0B:BA93: 3C        .byte $3C   ; 15 
- D 1 - - - 0x02FAA4 0B:BA94: 3C        .byte $3C   ; 16 
- D 1 - - - 0x02FAA5 0B:BA95: 3C        .byte $3C   ; 17 
- D 1 - - - 0x02FAA6 0B:BA96: 3B        .byte $3B   ; 18 
- D 1 - - - 0x02FAA7 0B:BA97: 3B        .byte $3B   ; 19 
- D 1 - - - 0x02FAA8 0B:BA98: 3A        .byte $3A   ; 1A 
- D 1 - - - 0x02FAA9 0B:BA99: 3A        .byte $3A   ; 1B 
- D 1 - - - 0x02FAAA 0B:BA9A: 3A        .byte $3A   ; 1C 
- D 1 - - - 0x02FAAB 0B:BA9B: 39        .byte $39   ; 1D 
- D 1 - - - 0x02FAAC 0B:BA9C: 39        .byte $39   ; 1E 
- D 1 - - - 0x02FAAD 0B:BA9D: 38        .byte $38   ; 1F 
- D 1 - - - 0x02FAAE 0B:BA9E: 37        .byte $37   ; 20 
- D 1 - - - 0x02FAAF 0B:BA9F: 37        .byte $37   ; 21 
- D 1 - - - 0x02FAB0 0B:BAA0: 36        .byte $36   ; 22 
- D 1 - - - 0x02FAB1 0B:BAA1: 36        .byte $36   ; 23 
- D 1 - - - 0x02FAB2 0B:BAA2: 35        .byte $35   ; 24 
- D 1 - - - 0x02FAB3 0B:BAA3: 34        .byte $34   ; 25 
- D 1 - - - 0x02FAB4 0B:BAA4: 33        .byte $33   ; 26 
- D 1 - - - 0x02FAB5 0B:BAA5: 33        .byte $33   ; 27 
- D 1 - - - 0x02FAB6 0B:BAA6: 32        .byte $32   ; 28 
- D 1 - - - 0x02FAB7 0B:BAA7: 31        .byte $31   ; 29 
- D 1 - - - 0x02FAB8 0B:BAA8: 30        .byte $30   ; 2A 
- D 1 - - - 0x02FAB9 0B:BAA9: 2F        .byte $2F   ; 2B 
- D 1 - - - 0x02FABA 0B:BAAA: 2E        .byte $2E   ; 2C 
- D 1 - - - 0x02FABB 0B:BAAB: 2E        .byte $2E   ; 2D 
- D 1 - - - 0x02FABC 0B:BAAC: 2C        .byte $2C   ; 2E 
- D 1 - - - 0x02FABD 0B:BAAD: 2B        .byte $2B   ; 2F 
- D 1 - - - 0x02FABE 0B:BAAE: 2A        .byte $2A   ; 30 
- D 1 - - - 0x02FABF 0B:BAAF: 29        .byte $29   ; 31 
- D 1 - - - 0x02FAC0 0B:BAB0: 28        .byte $28   ; 32 
- D 1 - - - 0x02FAC1 0B:BAB1: 27        .byte $27   ; 33 
- D 1 - - - 0x02FAC2 0B:BAB2: 25        .byte $25   ; 34 
- D 1 - - - 0x02FAC3 0B:BAB3: 24        .byte $24   ; 35 
- D 1 - - - 0x02FAC4 0B:BAB4: 22        .byte $22   ; 36 
- D 1 - - - 0x02FAC5 0B:BAB5: 21        .byte $21   ; 37 
- D 1 - - - 0x02FAC6 0B:BAB6: 1F        .byte $1F   ; 38 
- D 1 - - - 0x02FAC7 0B:BAB7: 1D        .byte $1D   ; 39 
- D 1 - - - 0x02FAC8 0B:BAB8: 1B        .byte $1B   ; 3A 
- D 1 - - - 0x02FAC9 0B:BAB9: 19        .byte $19   ; 3B 
- D 1 - - - 0x02FACA 0B:BABA: 16        .byte $16   ; 3C 
- D 1 - - - 0x02FACB 0B:BABB: 13        .byte $13   ; 3D 
- D 1 - - - 0x02FACC 0B:BABC: 10        .byte $10   ; 3E 
- D 1 - - - 0x02FACD 0B:BABD: 0B        .byte $0B   ; 3F 
- - - - - - 0x02FACE 0B:BABE: 00        .byte $00   ; 40 



tbl_BABF_pos_Y_hi:
- D 1 - - - 0x02FACF 0B:BABF: 20        .byte $20   ; 00 
- D 1 - - - 0x02FAD0 0B:BAC0: 20        .byte $20   ; 01 
- D 1 - - - 0x02FAD1 0B:BAC1: 20        .byte $20   ; 02 
- D 1 - - - 0x02FAD2 0B:BAC2: 20        .byte $20   ; 03 
- D 1 - - - 0x02FAD3 0B:BAC3: 20        .byte $20   ; 04 
- D 1 - - - 0x02FAD4 0B:BAC4: 20        .byte $20   ; 05 
- D 1 - - - 0x02FAD5 0B:BAC5: 1F        .byte $1F   ; 06 
- D 1 - - - 0x02FAD6 0B:BAC6: 1F        .byte $1F   ; 07 
- D 1 - - - 0x02FAD7 0B:BAC7: 1F        .byte $1F   ; 08 
- D 1 - - - 0x02FAD8 0B:BAC8: 1F        .byte $1F   ; 09 
- D 1 - - - 0x02FAD9 0B:BAC9: 1E        .byte $1E   ; 0A 
- D 1 - - - 0x02FADA 0B:BACA: 1E        .byte $1E   ; 0B 
- D 1 - - - 0x02FADB 0B:BACB: 1E        .byte $1E   ; 0C 
- D 1 - - - 0x02FADC 0B:BACC: 1D        .byte $1D   ; 0D 
- D 1 - - - 0x02FADD 0B:BACD: 1D        .byte $1D   ; 0E 
- D 1 - - - 0x02FADE 0B:BACE: 1C        .byte $1C   ; 0F 
- D 1 - - - 0x02FADF 0B:BACF: 1C        .byte $1C   ; 10 
- D 1 - - - 0x02FAE0 0B:BAD0: 1B        .byte $1B   ; 11 
- D 1 - - - 0x02FAE1 0B:BAD1: 1A        .byte $1A   ; 12 
- D 1 - - - 0x02FAE2 0B:BAD2: 1A        .byte $1A   ; 13 
- D 1 - - - 0x02FAE3 0B:BAD3: 19        .byte $19   ; 14 
- D 1 - - - 0x02FAE4 0B:BAD4: 18        .byte $18   ; 15 
- D 1 - - - 0x02FAE5 0B:BAD5: 17        .byte $17   ; 16 
- D 1 - - - 0x02FAE6 0B:BAD6: 16        .byte $16   ; 17 
- D 1 - - - 0x02FAE7 0B:BAD7: 15        .byte $15   ; 18 
- D 1 - - - 0x02FAE8 0B:BAD8: 14        .byte $14   ; 19 
- D 1 - - - 0x02FAE9 0B:BAD9: 13        .byte $13   ; 1A 
- D 1 - - - 0x02FAEA 0B:BADA: 11        .byte $11   ; 1B 
- D 1 - - - 0x02FAEB 0B:BADB: 0F        .byte $0F   ; 1C 
- D 1 - - - 0x02FAEC 0B:BADC: 0E        .byte $0E   ; 1D 
- D 1 - - - 0x02FAED 0B:BADD: 0B        .byte $0B   ; 1E 
- D 1 - - - 0x02FAEE 0B:BADE: 08        .byte $08   ; 1F 
- - - - - - 0x02FAEF 0B:BADF: 00        .byte $00   ; 20 



tbl_BAE0_pos_X_hi:
- D 1 - - - 0x02FAF0 0B:BAE0: 08        .byte $08   ; 00 
- D 1 - - - 0x02FAF1 0B:BAE1: 08        .byte $08   ; 01 
- D 1 - - - 0x02FAF2 0B:BAE2: 08        .byte $08   ; 02 
- D 1 - - - 0x02FAF3 0B:BAE3: 08        .byte $08   ; 03 
- D 1 - - - 0x02FAF4 0B:BAE4: 08        .byte $08   ; 04 
- D 1 - - - 0x02FAF5 0B:BAE5: 08        .byte $08   ; 05 
- D 1 - - - 0x02FAF6 0B:BAE6: 08        .byte $08   ; 06 
- D 1 - - - 0x02FAF7 0B:BAE7: 08        .byte $08   ; 07 
- D 1 - - - 0x02FAF8 0B:BAE8: 08        .byte $08   ; 08 
- D 1 - - - 0x02FAF9 0B:BAE9: 08        .byte $08   ; 09 
- D 1 - - - 0x02FAFA 0B:BAEA: 08        .byte $08   ; 0A 
- D 1 - - - 0x02FAFB 0B:BAEB: 08        .byte $08   ; 0B 
- D 1 - - - 0x02FAFC 0B:BAEC: 08        .byte $08   ; 0C 
- D 1 - - - 0x02FAFD 0B:BAED: 08        .byte $08   ; 0D 
- D 1 - - - 0x02FAFE 0B:BAEE: 08        .byte $08   ; 0E 
- D 1 - - - 0x02FAFF 0B:BAEF: 07        .byte $07   ; 0F 
- D 1 - - - 0x02FB00 0B:BAF0: 07        .byte $07   ; 10 
- D 1 - - - 0x02FB01 0B:BAF1: 07        .byte $07   ; 11 
- D 1 - - - 0x02FB02 0B:BAF2: 07        .byte $07   ; 12 
- D 1 - - - 0x02FB03 0B:BAF3: 07        .byte $07   ; 13 
- D 1 - - - 0x02FB04 0B:BAF4: 07        .byte $07   ; 14 
- D 1 - - - 0x02FB05 0B:BAF5: 07        .byte $07   ; 15 
- D 1 - - - 0x02FB06 0B:BAF6: 07        .byte $07   ; 16 
- D 1 - - - 0x02FB07 0B:BAF7: 07        .byte $07   ; 17 
- D 1 - - - 0x02FB08 0B:BAF8: 07        .byte $07   ; 18 
- D 1 - - - 0x02FB09 0B:BAF9: 07        .byte $07   ; 19 
- D 1 - - - 0x02FB0A 0B:BAFA: 06        .byte $06   ; 1A 
- D 1 - - - 0x02FB0B 0B:BAFB: 06        .byte $06   ; 1B 
- D 1 - - - 0x02FB0C 0B:BAFC: 06        .byte $06   ; 1C 
- D 1 - - - 0x02FB0D 0B:BAFD: 06        .byte $06   ; 1D 
- D 1 - - - 0x02FB0E 0B:BAFE: 06        .byte $06   ; 1E 
- D 1 - - - 0x02FB0F 0B:BAFF: 06        .byte $06   ; 1F 
- D 1 - - - 0x02FB10 0B:BB00: 06        .byte $06   ; 20 



tbl_BB01_pos_Y_hi:
- D 1 - - - 0x02FB11 0B:BB01: 00        .byte $00   ; 00 
- D 1 - - - 0x02FB12 0B:BB02: 00        .byte $00   ; 01 
- D 1 - - - 0x02FB13 0B:BB03: 00        .byte $00   ; 02 
- D 1 - - - 0x02FB14 0B:BB04: 01        .byte $01   ; 03 
- D 1 - - - 0x02FB15 0B:BB05: 01        .byte $01   ; 04 
- D 1 - - - 0x02FB16 0B:BB06: 01        .byte $01   ; 05 
- D 1 - - - 0x02FB17 0B:BB07: 01        .byte $01   ; 06 
- D 1 - - - 0x02FB18 0B:BB08: 01        .byte $01   ; 07 
- D 1 - - - 0x02FB19 0B:BB09: 02        .byte $02   ; 08 
- D 1 - - - 0x02FB1A 0B:BB0A: 02        .byte $02   ; 09 
- D 1 - - - 0x02FB1B 0B:BB0B: 02        .byte $02   ; 0A 
- D 1 - - - 0x02FB1C 0B:BB0C: 02        .byte $02   ; 0B 
- D 1 - - - 0x02FB1D 0B:BB0D: 02        .byte $02   ; 0C 
- D 1 - - - 0x02FB1E 0B:BB0E: 03        .byte $03   ; 0D 
- D 1 - - - 0x02FB1F 0B:BB0F: 03        .byte $03   ; 0E 
- D 1 - - - 0x02FB20 0B:BB10: 03        .byte $03   ; 0F 
- D 1 - - - 0x02FB21 0B:BB11: 03        .byte $03   ; 10 
- D 1 - - - 0x02FB22 0B:BB12: 03        .byte $03   ; 11 
- D 1 - - - 0x02FB23 0B:BB13: 03        .byte $03   ; 12 
- D 1 - - - 0x02FB24 0B:BB14: 04        .byte $04   ; 13 
- D 1 - - - 0x02FB25 0B:BB15: 04        .byte $04   ; 14 
- D 1 - - - 0x02FB26 0B:BB16: 04        .byte $04   ; 15 
- D 1 - - - 0x02FB27 0B:BB17: 04        .byte $04   ; 16 
- D 1 - - - 0x02FB28 0B:BB18: 04        .byte $04   ; 17 
- D 1 - - - 0x02FB29 0B:BB19: 04        .byte $04   ; 18 
- D 1 - - - 0x02FB2A 0B:BB1A: 05        .byte $05   ; 19 
- D 1 - - - 0x02FB2B 0B:BB1B: 05        .byte $05   ; 1A 
- D 1 - - - 0x02FB2C 0B:BB1C: 05        .byte $05   ; 1B 
- D 1 - - - 0x02FB2D 0B:BB1D: 05        .byte $05   ; 1C 
- D 1 - - - 0x02FB2E 0B:BB1E: 05        .byte $05   ; 1D 
- D 1 - - - 0x02FB2F 0B:BB1F: 05        .byte $05   ; 1E 
- D 1 - - - 0x02FB30 0B:BB20: 06        .byte $06   ; 1F 
- D 1 - - - 0x02FB31 0B:BB21: 06        .byte $06   ; 20 



tbl_BB22_pos_X_hi:
- D 1 - - - 0x02FB32 0B:BB22: 3C        .byte $3C   ; 00 
- D 1 - - - 0x02FB33 0B:BB23: 3C        .byte $3C   ; 01 
- D 1 - - - 0x02FB34 0B:BB24: 3C        .byte $3C   ; 02 
- D 1 - - - 0x02FB35 0B:BB25: 3C        .byte $3C   ; 03 
- D 1 - - - 0x02FB36 0B:BB26: 3C        .byte $3C   ; 04 
- D 1 - - - 0x02FB37 0B:BB27: 3C        .byte $3C   ; 05 
- D 1 - - - 0x02FB38 0B:BB28: 3B        .byte $3B   ; 06 
- D 1 - - - 0x02FB39 0B:BB29: 3B        .byte $3B   ; 07 
- D 1 - - - 0x02FB3A 0B:BB2A: 3B        .byte $3B   ; 08 
- D 1 - - - 0x02FB3B 0B:BB2B: 3B        .byte $3B   ; 09 
- D 1 - - - 0x02FB3C 0B:BB2C: 3A        .byte $3A   ; 0A 
- D 1 - - - 0x02FB3D 0B:BB2D: 3A        .byte $3A   ; 0B 
- D 1 - - - 0x02FB3E 0B:BB2E: 39        .byte $39   ; 0C 
- D 1 - - - 0x02FB3F 0B:BB2F: 39        .byte $39   ; 0D 
- D 1 - - - 0x02FB40 0B:BB30: 38        .byte $38   ; 0E 
- D 1 - - - 0x02FB41 0B:BB31: 38        .byte $38   ; 0F 
- D 1 - - - 0x02FB42 0B:BB32: 37        .byte $37   ; 10 
- D 1 - - - 0x02FB43 0B:BB33: 37        .byte $37   ; 11 
- D 1 - - - 0x02FB44 0B:BB34: 36        .byte $36   ; 12 
- D 1 - - - 0x02FB45 0B:BB35: 36        .byte $36   ; 13 
- D 1 - - - 0x02FB46 0B:BB36: 35        .byte $35   ; 14 
- D 1 - - - 0x02FB47 0B:BB37: 34        .byte $34   ; 15 
- D 1 - - - 0x02FB48 0B:BB38: 33        .byte $33   ; 16 
- D 1 - - - 0x02FB49 0B:BB39: 33        .byte $33   ; 17 
- D 1 - - - 0x02FB4A 0B:BB3A: 32        .byte $32   ; 18 
- D 1 - - - 0x02FB4B 0B:BB3B: 31        .byte $31   ; 19 
- D 1 - - - 0x02FB4C 0B:BB3C: 30        .byte $30   ; 1A 
- D 1 - - - 0x02FB4D 0B:BB3D: 2F        .byte $2F   ; 1B 
- D 1 - - - 0x02FB4E 0B:BB3E: 2E        .byte $2E   ; 1C 
- D 1 - - - 0x02FB4F 0B:BB3F: 2D        .byte $2D   ; 1D 
- D 1 - - - 0x02FB50 0B:BB40: 2C        .byte $2C   ; 1E 
- D 1 - - - 0x02FB51 0B:BB41: 2B        .byte $2B   ; 1F 
- D 1 - - - 0x02FB52 0B:BB42: 2A        .byte $2A   ; 20 



tbl_BB43:
; bzk optimize, same bytes
- D 1 - - - 0x02FB53 0B:BB43: 06        .byte $06   ; 00 
- D 1 - - - 0x02FB54 0B:BB44: 06        .byte $06   ; 01 
- D 1 - - - 0x02FB55 0B:BB45: 06        .byte $06   ; 02 
- D 1 - - - 0x02FB56 0B:BB46: 06        .byte $06   ; 03 
- D 1 - - - 0x02FB57 0B:BB47: 06        .byte $06   ; 04 
- D 1 - - - 0x02FB58 0B:BB48: 06        .byte $06   ; 05 
- D 1 - - - 0x02FB59 0B:BB49: 06        .byte $06   ; 06 
- D 1 - - - 0x02FB5A 0B:BB4A: 06        .byte $06   ; 07 
- D 1 - - - 0x02FB5B 0B:BB4B: 06        .byte $06   ; 08 



tbl_BB4C:
- D 1 - - - 0x02FB5C 0B:BB4C: 0C        .byte $0C   ; 00 
- D 1 - - - 0x02FB5D 0B:BB4D: 0C        .byte $0C   ; 01 
- D 1 - - - 0x02FB5E 0B:BB4E: 0A        .byte $0A   ; 02 
- D 1 - - - 0x02FB5F 0B:BB4F: 0C        .byte $0C   ; 03 
- D 1 - - - 0x02FB60 0B:BB50: 08        .byte $08   ; 04 
- D 1 - - - 0x02FB61 0B:BB51: 08        .byte $08   ; 05 
- D 1 - - - 0x02FB62 0B:BB52: 06        .byte $06   ; 06 
- D 1 - - - 0x02FB63 0B:BB53: 08        .byte $08   ; 07 
- D 1 - - - 0x02FB64 0B:BB54: 05        .byte $05   ; 08 



tbl_BB55:
- D 1 - - - 0x02FB65 0B:BB55: 14        .byte $14   ; 00 
- D 1 - - - 0x02FB66 0B:BB56: 14        .byte $14   ; 01 
- D 1 - - - 0x02FB67 0B:BB57: 1E        .byte $1E   ; 02 
- D 1 - - - 0x02FB68 0B:BB58: 0E        .byte $0E   ; 03 
- D 1 - - - 0x02FB69 0B:BB59: 0E        .byte $0E   ; 04 



tbl_BB5A:
- D 1 - - - 0x02FB6A 0B:BB5A: 03        .byte $03   ; 00 
- D 1 - - - 0x02FB6B 0B:BB5B: 03        .byte $03   ; 01 
- D 1 - - - 0x02FB6C 0B:BB5C: 03        .byte $03   ; 02 
- D 1 - - - 0x02FB6D 0B:BB5D: 08        .byte $08   ; 03 
- D 1 - - - 0x02FB6E 0B:BB5E: 03        .byte $03   ; 04 



tbl_BB5F:
;                                              +---------- facing right
;                                              |    +----- facing left
;                                              |    |
- D 1 - - - 0x02FB6F 0B:BB5F: 14        .byte $14, $EC   ; 00 
- D 1 - - - 0x02FB71 0B:BB61: 14        .byte $14, $EC   ; 01 
- D 1 - - - 0x02FB73 0B:BB63: 1C        .byte $1C, $E4   ; 02 
- D 1 - - - 0x02FB75 0B:BB65: 10        .byte $10, $F0   ; 03 
- D 1 - - - 0x02FB77 0B:BB67: 0C        .byte $0C, $F4   ; 04 



tbl_BB69:
- D 1 - - - 0x02FB79 0B:BB69: FE        .byte $FE   ; 00 
- D 1 - - - 0x02FB7A 0B:BB6A: FC        .byte $FC   ; 01 
- D 1 - - - 0x02FB7B 0B:BB6B: FC        .byte $FC   ; 02 
- - - - - - 0x02FB7C 0B:BB6C: 00        .byte $00   ; 03 
- D 1 - - - 0x02FB7D 0B:BB6D: FE        .byte $FE   ; 04 
- D 1 - - - 0x02FB7E 0B:BB6E: FC        .byte $FC   ; 05 
- D 1 - - - 0x02FB7F 0B:BB6F: FC        .byte $FC   ; 06 
- - - - - - 0x02FB80 0B:BB70: 00        .byte $00   ; 07 
- - - - - - 0x02FB81 0B:BB71: 00        .byte $00   ; 08 



tbl_BB72:
- D 1 - - - 0x02FB82 0B:BB72: 1A        .byte $1A   ; EE
- D 1 - - - 0x02FB83 0B:BB73: 0C        .byte $0C   ; F0
- D 1 - - - 0x02FB84 0B:BB74: 0C        .byte $0C   ; F2
- D 1 - - - 0x02FB85 0B:BB75: 10        .byte $10   ; F4
- - - - - - 0x02FB86 0B:BB76: 10        .byte $10   ; F6
- D 1 - - - 0x02FB87 0B:BB77: 12        .byte $12   ; F8
- D 1 - - - 0x02FB88 0B:BB78: 12        .byte $12   ; FA
- D 1 - - - 0x02FB89 0B:BB79: 16        .byte $16   ; FC
- - - - - - 0x02FB8A 0B:BB7A: 12        .byte $12   ; FE



tbl_BB7B:
- D 1 - - - 0x02FB8B 0B:BB7B: 03        .byte $03   ; EE
- D 1 - - - 0x02FB8C 0B:BB7C: 05        .byte $05   ; F0
- D 1 - - - 0x02FB8D 0B:BB7D: 03        .byte $03   ; F2
- D 1 - - - 0x02FB8E 0B:BB7E: 03        .byte $03   ; F4
- - - - - - 0x02FB8F 0B:BB7F: 03        .byte $03   ; F6
- D 1 - - - 0x02FB90 0B:BB80: 03        .byte $03   ; F8
- - - - - - 0x02FB91 0B:BB81: 03        .byte $03   ; FA
- D 1 - - - 0x02FB92 0B:BB82: 03        .byte $03   ; FC
- - - - - - 0x02FB93 0B:BB83: 03        .byte $03   ; FE


; ???
tbl_BB84:
- D 1 - - - 0x02FB94 0B:BB84: 18        .byte $18   ; EE facing right
- D 1 - - - 0x02FB95 0B:BB85: E8        .byte $E8   ; EE facing left
- D 1 - - - 0x02FB96 0B:BB86: 10        .byte $10   ; F0
- D 1 - - - 0x02FB97 0B:BB87: F0        .byte $F0   ; 
- D 1 - - - 0x02FB98 0B:BB88: 0C        .byte $0C   ; F2
- D 1 - - - 0x02FB99 0B:BB89: F4        .byte $F4   ; 
- D 1 - - - 0x02FB9A 0B:BB8A: 10        .byte $10   ; F4
- D 1 - - - 0x02FB9B 0B:BB8B: F0        .byte $F0   ; 
- - - - - - 0x02FB9C 0B:BB8C: 14        .byte $14   ; F6
- - - - - - 0x02FB9D 0B:BB8D: EC        .byte $EC   ; 
- D 1 - - - 0x02FB9E 0B:BB8E: 14        .byte $14   ; F8
- D 1 - - - 0x02FB9F 0B:BB8F: EC        .byte $EC   ; 
- D 1 - - - 0x02FBA0 0B:BB90: 08        .byte $08   ; FA
- D 1 - - - 0x02FBA1 0B:BB91: F8        .byte $F8   ; 
- D 1 - - - 0x02FBA2 0B:BB92: 0C        .byte $0C   ; FC
- D 1 - - - 0x02FBA3 0B:BB93: F4        .byte $F4   ; 
- - - - - - 0x02FBA4 0B:BB94: 0C        .byte $0C   ; FE
- - - - - - 0x02FBA5 0B:BB95: F4        .byte $F4   ; 



tbl_BB96_pos_Y_hi:
- D 1 - - - 0x02FBA6 0B:BB96: 00        .byte $00   ; EE facing right
- D 1 - - - 0x02FBA7 0B:BB97: 00        .byte $00   ; EE facing left
- D 1 - - - 0x02FBA8 0B:BB98: 00        .byte $00   ; F0
- D 1 - - - 0x02FBA9 0B:BB99: 00        .byte $00   ; 
- D 1 - - - 0x02FBAA 0B:BB9A: FC        .byte $FC   ; F2
- D 1 - - - 0x02FBAB 0B:BB9B: FC        .byte $FC   ; 
- D 1 - - - 0x02FBAC 0B:BB9C: FC        .byte $FC   ; F4
- D 1 - - - 0x02FBAD 0B:BB9D: FC        .byte $FC   ; 
- - - - - - 0x02FBAE 0B:BB9E: FC        .byte $FC   ; F6
- - - - - - 0x02FBAF 0B:BB9F: FC        .byte $FC   ; 
- D 1 - - - 0x02FBB0 0B:BBA0: FC        .byte $FC   ; F8
- D 1 - - - 0x02FBB1 0B:BBA1: FC        .byte $FC   ; 
- - - - - - 0x02FBB2 0B:BBA2: 00        .byte $00   ; FA
- - - - - - 0x02FBB3 0B:BBA3: 00        .byte $00   ; 
- D 1 - - - 0x02FBB4 0B:BBA4: 00        .byte $00   ; FC
- D 1 - - - 0x02FBB5 0B:BBA5: 00        .byte $00   ; 
- - - - - - 0x02FBB6 0B:BBA6: FC        .byte $FC   ; FE
- - - - - - 0x02FBB7 0B:BBA7: FC        .byte $FC   ; 



tbl_BBA8:
- - - - - - 0x02FBB8 0B:BBA8: 00        .byte $00   ; 00 
- D 1 - - - 0x02FBB9 0B:BBA9: 06        .byte $06   ; 01 
- D 1 - - - 0x02FBBA 0B:BBAA: 07        .byte $07   ; 02 
- D 1 - - - 0x02FBBB 0B:BBAB: 06        .byte $06   ; 03 
- D 1 - - - 0x02FBBC 0B:BBAC: 0C        .byte $0C   ; 04 
- - - - - - 0x02FBBD 0B:BBAD: 1C        .byte $1C   ; 05 unused 0x02F49C
- D 1 - - - 0x02FBBE 0B:BBAE: 06        .byte $06   ; 06 
- D 1 - - - 0x02FBBF 0B:BBAF: 06        .byte $06   ; 07 
- D 1 - - - 0x02FBC0 0B:BBB0: 06        .byte $06   ; 08 
- D 1 - - - 0x02FBC1 0B:BBB1: 06        .byte $06   ; 09 
- D 1 - - - 0x02FBC2 0B:BBB2: 03        .byte $03   ; 0A 



tbl_BBB3:
- - - - - - 0x02FBC3 0B:BBB3: 00        .byte $00   ; 00 
- D 1 - - - 0x02FBC4 0B:BBB4: 06        .byte $06   ; 01 
- D 1 - - - 0x02FBC5 0B:BBB5: 07        .byte $07   ; 02 
- D 1 - - - 0x02FBC6 0B:BBB6: 03        .byte $03   ; 03 
- D 1 - - - 0x02FBC7 0B:BBB7: 0C        .byte $0C   ; 04 
- - - - - - 0x02FBC8 0B:BBB8: 04        .byte $04   ; 05 unused 0x02F49C
- D 1 - - - 0x02FBC9 0B:BBB9: 06        .byte $06   ; 06 
- D 1 - - - 0x02FBCA 0B:BBBA: 06        .byte $06   ; 07 
- D 1 - - - 0x02FBCB 0B:BBBB: 03        .byte $03   ; 08 
- D 1 - - - 0x02FBCC 0B:BBBC: 06        .byte $06   ; 09 
- D 1 - - - 0x02FBCD 0B:BBBD: 04        .byte $04   ; 0A 



tbl_BBBE:
- D 1 - - - 0x02FBCE 0B:BBBE: 00        .byte $00   ; 00 
- D 1 - - - 0x02FBCF 0B:BBBF: 04        .byte $04   ; 01 
- D 1 - - - 0x02FBD0 0B:BBC0: 0F        .byte $0F   ; 02 
- - - - - - 0x02FBD1 0B:BBC1: 0F        .byte $0F   ; 03 
- D 1 - - - 0x02FBD2 0B:BBC2: 16        .byte $16   ; 04 
- - - - - - 0x02FBD3 0B:BBC3: 16        .byte $16   ; 05 
- D 1 - - - 0x02FBD4 0B:BBC4: 12        .byte $12   ; 06 
- - - - - - 0x02FBD5 0B:BBC5: 12        .byte $12   ; 07 
- - - - - - 0x02FBD6 0B:BBC6: 0A        .byte $0A   ; 08 
- - - - - - 0x02FBD7 0B:BBC7: 0A        .byte $0A   ; 09 



tbl_BBC8_distance_X:
- D 1 - - - 0x02FBD8 0B:BBC8: 08        .byte $08   ; 00 
- D 1 - - - 0x02FBD9 0B:BBC9: 08        .byte $08   ; 01 
- D 1 - - - 0x02FBDA 0B:BBCA: 0A        .byte $0A   ; 02 
- D 1 - - - 0x02FBDB 0B:BBCB: 08        .byte $08   ; 03 
- D 1 - - - 0x02FBDC 0B:BBCC: 08        .byte $08   ; 04 
- D 1 - - - 0x02FBDD 0B:BBCD: 10        .byte $10   ; 05 
- D 1 - - - 0x02FBDE 0B:BBCE: 08        .byte $08   ; 06 
- D 1 - - - 0x02FBDF 0B:BBCF: 0D        .byte $0D   ; 07 
- - - - - - 0x02FBE0 0B:BBD0: 0C        .byte $0C   ; 08 
- D 1 - - - 0x02FBE1 0B:BBD1: 18        .byte $18   ; 09 
- D 1 - - - 0x02FBE2 0B:BBD2: 10        .byte $10   ; 0A 
- D 1 - - - 0x02FBE3 0B:BBD3: 06        .byte $06   ; 0B 
- D 1 - - - 0x02FBE4 0B:BBD4: 0C        .byte $0C   ; 0C 
- D 1 - - - 0x02FBE5 0B:BBD5: 08        .byte $08   ; 0D 
- D 1 - - - 0x02FBE6 0B:BBD6: 08        .byte $08   ; 0E 
- D 1 - - - 0x02FBE7 0B:BBD7: 08        .byte $08   ; 0F 
- - - - - - 0x02FBE8 0B:BBD8: 08        .byte $08   ; 10 
- D 1 - - - 0x02FBE9 0B:BBD9: 08        .byte $08   ; 11 
- - - - - - 0x02FBEA 0B:BBDA: 08        .byte $08   ; 12 
- - - - - - 0x02FBEB 0B:BBDB: 08        .byte $08   ; 13 
- D 1 - - - 0x02FBEC 0B:BBDC: 08        .byte $08   ; 14 
- D 1 - - - 0x02FBED 0B:BBDD: 08        .byte $08   ; 15 
- - - - - - 0x02FBEE 0B:BBDE: 08        .byte $08   ; 16 
- D 1 - - - 0x02FBEF 0B:BBDF: 08        .byte $08   ; 17 
- D 1 - - - 0x02FBF0 0B:BBE0: 08        .byte $08   ; 18 
- D 1 - - - 0x02FBF1 0B:BBE1: 08        .byte $08   ; 19 
- D 1 - - - 0x02FBF2 0B:BBE2: 08        .byte $08   ; 1A 
- D 1 - - - 0x02FBF3 0B:BBE3: 10        .byte $10   ; 1B 
- - - - - - 0x02FBF4 0B:BBE4: 08        .byte $08   ; 1C 
- D 1 - - - 0x02FBF5 0B:BBE5: 08        .byte $08   ; 1D 
- D 1 - - - 0x02FBF6 0B:BBE6: 08        .byte $08   ; 1E 
- D 1 - - - 0x02FBF7 0B:BBE7: 0C        .byte $0C   ; 1F 
- D 1 - - - 0x02FBF8 0B:BBE8: 08        .byte $08   ; 20 
- D 1 - - - 0x02FBF9 0B:BBE9: 08        .byte $08   ; 21 
- D 1 - - - 0x02FBFA 0B:BBEA: 10        .byte $10   ; 22 
- D 1 - - - 0x02FBFB 0B:BBEB: 06        .byte $06   ; 23 
- D 1 - - - 0x02FBFC 0B:BBEC: 08        .byte $08   ; 24 
- D 1 - - - 0x02FBFD 0B:BBED: 08        .byte $08   ; 25 
- - - - - - 0x02FBFE 0B:BBEE: 08        .byte $08   ; 26 
- D 1 - - - 0x02FBFF 0B:BBEF: 08        .byte $08   ; 27 
- - - - - - 0x02FC00 0B:BBF0: 08        .byte $08   ; 28 
- - - - - - 0x02FC01 0B:BBF1: 08        .byte $08   ; 29 
- - - - - - 0x02FC02 0B:BBF2: 10        .byte $10   ; 2A 
- D 1 - - - 0x02FC03 0B:BBF3: 08        .byte $08   ; 2B 
- D 1 - - - 0x02FC04 0B:BBF4: 03        .byte $03   ; 2C 
- D 1 - - - 0x02FC05 0B:BBF5: 05        .byte $05   ; 2D 
- - - - - - 0x02FC06 0B:BBF6: 08        .byte $08   ; 2E 
- - - - - - 0x02FC07 0B:BBF7: 08        .byte $08   ; 2F 
- - - - - - 0x02FC08 0B:BBF8: 08        .byte $08   ; 30 
- - - - - - 0x02FC09 0B:BBF9: 08        .byte $08   ; 31 
- - - - - - 0x02FC0A 0B:BBFA: 08        .byte $08   ; 32 
- - - - - - 0x02FC0B 0B:BBFB: 08        .byte $08   ; 33 
- - - - - - 0x02FC0C 0B:BBFC: 08        .byte $08   ; 34 
- - - - - - 0x02FC0D 0B:BBFD: 08        .byte $08   ; 35 
- - - - - - 0x02FC0E 0B:BBFE: 08        .byte $08   ; 36 
- - - - - - 0x02FC0F 0B:BBFF: 08        .byte $08   ; 37 
- - - - - - 0x02FC10 0B:BC00: 08        .byte $08   ; 38 
- - - - - - 0x02FC11 0B:BC01: 08        .byte $08   ; 39 
- - - - - - 0x02FC12 0B:BC02: 08        .byte $08   ; 3A 
- - - - - - 0x02FC13 0B:BC03: 08        .byte $08   ; 3B 
- - - - - - 0x02FC14 0B:BC04: 08        .byte $08   ; 3C 
- - - - - - 0x02FC15 0B:BC05: 08        .byte $08   ; 3D 
- - - - - - 0x02FC16 0B:BC06: 08        .byte $08   ; 3E 
- - - - - - 0x02FC17 0B:BC07: 08        .byte $08   ; 3F 
- D 1 - - - 0x02FC18 0B:BC08: 03        .byte $03   ; 40 
- D 1 - - - 0x02FC19 0B:BC09: 04        .byte $04   ; 41 
- D 1 - - - 0x02FC1A 0B:BC0A: 02        .byte $02   ; 42 
- D 1 - - - 0x02FC1B 0B:BC0B: 06        .byte $06   ; 43 
- D 1 - - - 0x02FC1C 0B:BC0C: 04        .byte $04   ; 44 
- D 1 - - - 0x02FC1D 0B:BC0D: 04        .byte $04   ; 45 
- D 1 - - - 0x02FC1E 0B:BC0E: 03        .byte $03   ; 46 
- D 1 - - - 0x02FC1F 0B:BC0F: 08        .byte $08   ; 47 
- D 1 - - - 0x02FC20 0B:BC10: 08        .byte $08   ; 48 
- D 1 - - - 0x02FC21 0B:BC11: 08        .byte $08   ; 49 
- D 1 - - - 0x02FC22 0B:BC12: 08        .byte $08   ; 4A 
- D 1 - - - 0x02FC23 0B:BC13: 05        .byte $05   ; 4B 
- D 1 - - - 0x02FC24 0B:BC14: 08        .byte $08   ; 4C 
- D 1 - - - 0x02FC25 0B:BC15: 08        .byte $08   ; 4D 
- D 1 - - - 0x02FC26 0B:BC16: 08        .byte $08   ; 4E 
- D 1 - - - 0x02FC27 0B:BC17: 08        .byte $08   ; 4F 
- D 1 - - - 0x02FC28 0B:BC18: 06        .byte $06   ; 50 
- D 1 - - - 0x02FC29 0B:BC19: 08        .byte $08   ; 51 
- D 1 - - - 0x02FC2A 0B:BC1A: 0C        .byte $0C   ; 52 
- D 1 - - - 0x02FC2B 0B:BC1B: 06        .byte $06   ; 53 
- D 1 - - - 0x02FC2C 0B:BC1C: 08        .byte $08   ; 54 
- D 1 - - - 0x02FC2D 0B:BC1D: 08        .byte $08   ; 55 
- D 1 - - - 0x02FC2E 0B:BC1E: 08        .byte $08   ; 56 
- D 1 - - - 0x02FC2F 0B:BC1F: 08        .byte $08   ; 57 
- D 1 - - - 0x02FC30 0B:BC20: 08        .byte $08   ; 58 
- D 1 - - - 0x02FC31 0B:BC21: 08        .byte $08   ; 59 
- D 1 - - - 0x02FC32 0B:BC22: 08        .byte $08   ; 5A 
- D 1 - - - 0x02FC33 0B:BC23: 08        .byte $08   ; 5B 
- D 1 - - - 0x02FC34 0B:BC24: 08        .byte $08   ; 5C 
- D 1 - - - 0x02FC35 0B:BC25: 08        .byte $08   ; 5D 
- D 1 - - - 0x02FC36 0B:BC26: 06        .byte $06   ; 5E 
- D 1 - - - 0x02FC37 0B:BC27: 08        .byte $08   ; 5F 
- D 1 - - - 0x02FC38 0B:BC28: 08        .byte $08   ; 60 
- D 1 - - - 0x02FC39 0B:BC29: 08        .byte $08   ; 61 
- D 1 - - - 0x02FC3A 0B:BC2A: 08        .byte $08   ; 62 
- D 1 - - - 0x02FC3B 0B:BC2B: 08        .byte $08   ; 63 
- D 1 - - - 0x02FC3C 0B:BC2C: 06        .byte $06   ; 64 
- D 1 - - - 0x02FC3D 0B:BC2D: 08        .byte $08   ; 65 
- D 1 - - - 0x02FC3E 0B:BC2E: 08        .byte $08   ; 66 
- D 1 - - - 0x02FC3F 0B:BC2F: 0C        .byte $0C   ; 67 
- D 1 - - - 0x02FC40 0B:BC30: 08        .byte $08   ; 68 
- - - - - - 0x02FC41 0B:BC31: 08        .byte $08   ; 69 
- - - - - - 0x02FC42 0B:BC32: 08        .byte $08   ; 6A 
- - - - - - 0x02FC43 0B:BC33: 08        .byte $08   ; 6B 
- - - - - - 0x02FC44 0B:BC34: 08        .byte $08   ; 6C 
- - - - - - 0x02FC45 0B:BC35: 08        .byte $08   ; 6D 
- - - - - - 0x02FC46 0B:BC36: 08        .byte $08   ; 6E 
- - - - - - 0x02FC47 0B:BC37: 08        .byte $08   ; 6F 
- - - - - - 0x02FC48 0B:BC38: 08        .byte $08   ; 70 
- D 1 - - - 0x02FC49 0B:BC39: 30        .byte $30   ; 71 
- D 1 - - - 0x02FC4A 0B:BC3A: 10        .byte $10   ; 72 
- D 1 - - - 0x02FC4B 0B:BC3B: 20        .byte $20   ; 73 
- D 1 - - - 0x02FC4C 0B:BC3C: 80        .byte $80   ; 74 
- D 1 - - - 0x02FC4D 0B:BC3D: 10        .byte $10   ; 75 
- D 1 - - - 0x02FC4E 0B:BC3E: 20        .byte $20   ; 76 
- - - - - - 0x02FC4F 0B:BC3F: 08        .byte $08   ; 77 
- D 1 - - - 0x02FC50 0B:BC40: 08        .byte $08   ; 78 
- D 1 - - - 0x02FC51 0B:BC41: 08        .byte $08   ; 79 
- - - - - - 0x02FC52 0B:BC42: 08        .byte $08   ; 7A 
- D 1 - - - 0x02FC53 0B:BC43: 08        .byte $08   ; 7B 
- D 1 - - - 0x02FC54 0B:BC44: 08        .byte $08   ; 7C 
- D 1 - - - 0x02FC55 0B:BC45: 11        .byte $11   ; 7D 
- D 1 - - - 0x02FC56 0B:BC46: 0C        .byte $0C   ; 7E 
- D 1 - - - 0x02FC57 0B:BC47: 10        .byte $10   ; 7F 
- - - - - - 0x02FC58 0B:BC48: 08        .byte $08   ; 80 
- D 1 - - - 0x02FC59 0B:BC49: 08        .byte $08   ; 81 
- D 1 - - - 0x02FC5A 0B:BC4A: 0C        .byte $0C   ; 82 
- D 1 - - - 0x02FC5B 0B:BC4B: 08        .byte $08   ; 83 
- D 1 - - - 0x02FC5C 0B:BC4C: 0E        .byte $0E   ; 84 
- - - - - - 0x02FC5D 0B:BC4D: 08        .byte $08   ; 85 
- D 1 - - - 0x02FC5E 0B:BC4E: 10        .byte $10   ; 86 
- D 1 - - - 0x02FC5F 0B:BC4F: 10        .byte $10   ; 87 
- D 1 - - - 0x02FC60 0B:BC50: 10        .byte $10   ; 88 
- D 1 - - - 0x02FC61 0B:BC51: 08        .byte $08   ; 89 
- D 1 - - - 0x02FC62 0B:BC52: 10        .byte $10   ; 8A 
- - - - - - 0x02FC63 0B:BC53: 08        .byte $08   ; 8B 
- - - - - - 0x02FC64 0B:BC54: 08        .byte $08   ; 8C 
- - - - - - 0x02FC65 0B:BC55: 08        .byte $08   ; 8D 
- - - - - - 0x02FC66 0B:BC56: 08        .byte $08   ; 8E 
- - - - - - 0x02FC67 0B:BC57: 08        .byte $08   ; 8F 
- D 1 - - - 0x02FC68 0B:BC58: 04        .byte $04   ; 90 
- D 1 - - - 0x02FC69 0B:BC59: 06        .byte $06   ; 91 
- D 1 - - - 0x02FC6A 0B:BC5A: 04        .byte $04   ; 92 
- D 1 - - - 0x02FC6B 0B:BC5B: 02        .byte $02   ; 93 
- D 1 - - - 0x02FC6C 0B:BC5C: 02        .byte $02   ; 94 
- D 1 - - - 0x02FC6D 0B:BC5D: 02        .byte $02   ; 95 
- - - - - - 0x02FC6E 0B:BC5E: 02        .byte $02   ; 96 
- D 1 - - - 0x02FC6F 0B:BC5F: 02        .byte $02   ; 97 



tbl_BC60_pos_Y_hi:
- D 1 - - - 0x02FC70 0B:BC60: 0E        .byte $0E   ; 00 
- D 1 - - - 0x02FC71 0B:BC61: 10        .byte $10   ; 01 
- D 1 - - - 0x02FC72 0B:BC62: 10        .byte $10   ; 02 
- D 1 - - - 0x02FC73 0B:BC63: 10        .byte $10   ; 03 
- D 1 - - - 0x02FC74 0B:BC64: 10        .byte $10   ; 04 
- D 1 - - - 0x02FC75 0B:BC65: 10        .byte $10   ; 05 
- D 1 - - - 0x02FC76 0B:BC66: 08        .byte $08   ; 06 
- D 1 - - - 0x02FC77 0B:BC67: 20        .byte $20   ; 07 
- - - - - - 0x02FC78 0B:BC68: 0C        .byte $0C   ; 08 
- D 1 - - - 0x02FC79 0B:BC69: 18        .byte $18   ; 09 
- D 1 - - - 0x02FC7A 0B:BC6A: 10        .byte $10   ; 0A 
- D 1 - - - 0x02FC7B 0B:BC6B: 0C        .byte $0C   ; 0B 
- D 1 - - - 0x02FC7C 0B:BC6C: 14        .byte $14   ; 0C 
- D 1 - - - 0x02FC7D 0B:BC6D: 08        .byte $08   ; 0D 
- D 1 - - - 0x02FC7E 0B:BC6E: 14        .byte $14   ; 0E 
- D 1 - - - 0x02FC7F 0B:BC6F: 0E        .byte $0E   ; 0F 
- - - - - - 0x02FC80 0B:BC70: 0E        .byte $0E   ; 10 
- D 1 - - - 0x02FC81 0B:BC71: 08        .byte $08   ; 11 
- D 1 - - - 0x02FC82 0B:BC72: 0E        .byte $0E   ; 12 
- - - - - - 0x02FC83 0B:BC73: 0E        .byte $0E   ; 13 
- D 1 - - - 0x02FC84 0B:BC74: 04        .byte $04   ; 14 
- D 1 - - - 0x02FC85 0B:BC75: 0E        .byte $0E   ; 15 
- D 1 - - - 0x02FC86 0B:BC76: 0E        .byte $0E   ; 16 
- D 1 - - - 0x02FC87 0B:BC77: 0E        .byte $0E   ; 17 
- D 1 - - - 0x02FC88 0B:BC78: 0E        .byte $0E   ; 18 
- D 1 - - - 0x02FC89 0B:BC79: 0E        .byte $0E   ; 19 
- D 1 - - - 0x02FC8A 0B:BC7A: 0E        .byte $0E   ; 1A 
- D 1 - - - 0x02FC8B 0B:BC7B: 09        .byte $09   ; 1B 
- - - - - - 0x02FC8C 0B:BC7C: 0E        .byte $0E   ; 1C 
- D 1 - - - 0x02FC8D 0B:BC7D: 0A        .byte $0A   ; 1D 
- D 1 - - - 0x02FC8E 0B:BC7E: 14        .byte $14   ; 1E 
- D 1 - - - 0x02FC8F 0B:BC7F: 0E        .byte $0E   ; 1F 
- D 1 - - - 0x02FC90 0B:BC80: 06        .byte $06   ; 20 
- D 1 - - - 0x02FC91 0B:BC81: 04        .byte $04   ; 21 
- D 1 - - - 0x02FC92 0B:BC82: 02        .byte $02   ; 22 
- D 1 - - - 0x02FC93 0B:BC83: 06        .byte $06   ; 23 
- D 1 - - - 0x02FC94 0B:BC84: 08        .byte $08   ; 24 
- D 1 - - - 0x02FC95 0B:BC85: 0E        .byte $0E   ; 25 
- - - - - - 0x02FC96 0B:BC86: 02        .byte $02   ; 26 
- D 1 - - - 0x02FC97 0B:BC87: 04        .byte $04   ; 27 
- - - - - - 0x02FC98 0B:BC88: 0E        .byte $0E   ; 28 
- - - - - - 0x02FC99 0B:BC89: 0E        .byte $0E   ; 29 
- - - - - - 0x02FC9A 0B:BC8A: 08        .byte $08   ; 2A 
- D 1 - - - 0x02FC9B 0B:BC8B: 08        .byte $08   ; 2B 
- D 1 - - - 0x02FC9C 0B:BC8C: 03        .byte $03   ; 2C 
- D 1 - - - 0x02FC9D 0B:BC8D: 05        .byte $05   ; 2D 
- - - - - - 0x02FC9E 0B:BC8E: 0E        .byte $0E   ; 2E 
- - - - - - 0x02FC9F 0B:BC8F: 0E        .byte $0E   ; 2F 
- - - - - - 0x02FCA0 0B:BC90: 08        .byte $08   ; 30 
- - - - - - 0x02FCA1 0B:BC91: 08        .byte $08   ; 31 
- - - - - - 0x02FCA2 0B:BC92: 08        .byte $08   ; 32 
- - - - - - 0x02FCA3 0B:BC93: 08        .byte $08   ; 33 
- - - - - - 0x02FCA4 0B:BC94: 08        .byte $08   ; 34 
- - - - - - 0x02FCA5 0B:BC95: 08        .byte $08   ; 35 
- - - - - - 0x02FCA6 0B:BC96: 08        .byte $08   ; 36 
- - - - - - 0x02FCA7 0B:BC97: 08        .byte $08   ; 37 
- - - - - - 0x02FCA8 0B:BC98: 08        .byte $08   ; 38 
- - - - - - 0x02FCA9 0B:BC99: 08        .byte $08   ; 39 
- - - - - - 0x02FCAA 0B:BC9A: 08        .byte $08   ; 3A 
- - - - - - 0x02FCAB 0B:BC9B: 08        .byte $08   ; 3B 
- - - - - - 0x02FCAC 0B:BC9C: 08        .byte $08   ; 3C 
- - - - - - 0x02FCAD 0B:BC9D: 08        .byte $08   ; 3D 
- - - - - - 0x02FCAE 0B:BC9E: 08        .byte $08   ; 3E 
- - - - - - 0x02FCAF 0B:BC9F: 08        .byte $08   ; 3F 
- D 1 - - - 0x02FCB0 0B:BCA0: 04        .byte $04   ; 40 
- D 1 - - - 0x02FCB1 0B:BCA1: 08        .byte $08   ; 41 
- D 1 - - - 0x02FCB2 0B:BCA2: 04        .byte $04   ; 42 
- D 1 - - - 0x02FCB3 0B:BCA3: 06        .byte $06   ; 43 
- D 1 - - - 0x02FCB4 0B:BCA4: 02        .byte $02   ; 44 
- D 1 - - - 0x02FCB5 0B:BCA5: 06        .byte $06   ; 45 
- D 1 - - - 0x02FCB6 0B:BCA6: 06        .byte $06   ; 46 
- D 1 - - - 0x02FCB7 0B:BCA7: 0E        .byte $0E   ; 47 
- D 1 - - - 0x02FCB8 0B:BCA8: 0E        .byte $0E   ; 48 
- D 1 - - - 0x02FCB9 0B:BCA9: 0E        .byte $0E   ; 49 
- D 1 - - - 0x02FCBA 0B:BCAA: 06        .byte $06   ; 4A 
- D 1 - - - 0x02FCBB 0B:BCAB: 05        .byte $05   ; 4B 
- D 1 - - - 0x02FCBC 0B:BCAC: 08        .byte $08   ; 4C 
- D 1 - - - 0x02FCBD 0B:BCAD: 0E        .byte $0E   ; 4D 
- D 1 - - - 0x02FCBE 0B:BCAE: 0E        .byte $0E   ; 4E 
- D 1 - - - 0x02FCBF 0B:BCAF: 0E        .byte $0E   ; 4F 
- D 1 - - - 0x02FCC0 0B:BCB0: 0E        .byte $0E   ; 50 
- D 1 - - - 0x02FCC1 0B:BCB1: 0E        .byte $0E   ; 51 
- D 1 - - - 0x02FCC2 0B:BCB2: 08        .byte $08   ; 52 
- D 1 - - - 0x02FCC3 0B:BCB3: 04        .byte $04   ; 53 
- D 1 - - - 0x02FCC4 0B:BCB4: 0E        .byte $0E   ; 54 
- D 1 - - - 0x02FCC5 0B:BCB5: 0E        .byte $0E   ; 55 
- D 1 - - - 0x02FCC6 0B:BCB6: 0E        .byte $0E   ; 56 
- D 1 - - - 0x02FCC7 0B:BCB7: 0E        .byte $0E   ; 57 
- D 1 - - - 0x02FCC8 0B:BCB8: 0E        .byte $0E   ; 58 
- D 1 - - - 0x02FCC9 0B:BCB9: 06        .byte $06   ; 59 
- D 1 - - - 0x02FCCA 0B:BCBA: 0E        .byte $0E   ; 5A 
- D 1 - - - 0x02FCCB 0B:BCBB: 0E        .byte $0E   ; 5B 
- D 1 - - - 0x02FCCC 0B:BCBC: 0E        .byte $0E   ; 5C 
- D 1 - - - 0x02FCCD 0B:BCBD: 0E        .byte $0E   ; 5D 
- D 1 - - - 0x02FCCE 0B:BCBE: 06        .byte $06   ; 5E 
- D 1 - - - 0x02FCCF 0B:BCBF: 0E        .byte $0E   ; 5F 
- D 1 - - - 0x02FCD0 0B:BCC0: 0E        .byte $0E   ; 60 
- D 1 - - - 0x02FCD1 0B:BCC1: 0E        .byte $0E   ; 61 
- D 1 - - - 0x02FCD2 0B:BCC2: 0E        .byte $0E   ; 62 
- D 1 - - - 0x02FCD3 0B:BCC3: 0E        .byte $0E   ; 63 
- D 1 - - - 0x02FCD4 0B:BCC4: 06        .byte $06   ; 64 
- D 1 - - - 0x02FCD5 0B:BCC5: 0E        .byte $0E   ; 65 
- D 1 - - - 0x02FCD6 0B:BCC6: 0E        .byte $0E   ; 66 
- D 1 - - - 0x02FCD7 0B:BCC7: 0E        .byte $0E   ; 67 
- D 1 - - - 0x02FCD8 0B:BCC8: 0E        .byte $0E   ; 68 
- - - - - - 0x02FCD9 0B:BCC9: 0E        .byte $0E   ; 69 
- - - - - - 0x02FCDA 0B:BCCA: 0E        .byte $0E   ; 6A 
- - - - - - 0x02FCDB 0B:BCCB: 0E        .byte $0E   ; 6B 
- - - - - - 0x02FCDC 0B:BCCC: 0E        .byte $0E   ; 6C 
- - - - - - 0x02FCDD 0B:BCCD: 0E        .byte $0E   ; 6D 
- - - - - - 0x02FCDE 0B:BCCE: 0E        .byte $0E   ; 6E 
- - - - - - 0x02FCDF 0B:BCCF: 0E        .byte $0E   ; 6F 
- - - - - - 0x02FCE0 0B:BCD0: 0E        .byte $0E   ; 70 
- D 1 - - - 0x02FCE1 0B:BCD1: 20        .byte $20   ; 71 
- D 1 - - - 0x02FCE2 0B:BCD2: 28        .byte $28   ; 72 
- D 1 - - - 0x02FCE3 0B:BCD3: 10        .byte $10   ; 73 
- D 1 - - - 0x02FCE4 0B:BCD4: 10        .byte $10   ; 74 
- D 1 - - - 0x02FCE5 0B:BCD5: 10        .byte $10   ; 75 
- D 1 - - - 0x02FCE6 0B:BCD6: 28        .byte $28   ; 76 
- - - - - - 0x02FCE7 0B:BCD7: 0E        .byte $0E   ; 77 
- - - - - - 0x02FCE8 0B:BCD8: 0E        .byte $0E   ; 78 
- D 1 - - - 0x02FCE9 0B:BCD9: 05        .byte $05   ; 79 
- - - - - - 0x02FCEA 0B:BCDA: 05        .byte $05   ; 7A 
- D 1 - - - 0x02FCEB 0B:BCDB: 0E        .byte $0E   ; 7B 
- D 1 - - - 0x02FCEC 0B:BCDC: 0E        .byte $0E   ; 7C 
- D 1 - - - 0x02FCED 0B:BCDD: 04        .byte $04   ; 7D 
- D 1 - - - 0x02FCEE 0B:BCDE: 08        .byte $08   ; 7E 
- D 1 - - - 0x02FCEF 0B:BCDF: 08        .byte $08   ; 7F 
- - - - - - 0x02FCF0 0B:BCE0: 0E        .byte $0E   ; 80 
- D 1 - - - 0x02FCF1 0B:BCE1: 0E        .byte $0E   ; 81 
- D 1 - - - 0x02FCF2 0B:BCE2: 04        .byte $04   ; 82 
- D 1 - - - 0x02FCF3 0B:BCE3: 04        .byte $04   ; 83 
- D 1 - - - 0x02FCF4 0B:BCE4: 08        .byte $08   ; 84 
- - - - - - 0x02FCF5 0B:BCE5: 0E        .byte $0E   ; 85 
- D 1 - - - 0x02FCF6 0B:BCE6: 08        .byte $08   ; 86 
- D 1 - - - 0x02FCF7 0B:BCE7: 08        .byte $08   ; 87 
- D 1 - - - 0x02FCF8 0B:BCE8: 08        .byte $08   ; 88 
- D 1 - - - 0x02FCF9 0B:BCE9: 0E        .byte $0E   ; 89 
- D 1 - - - 0x02FCFA 0B:BCEA: 08        .byte $08   ; 8A 
- - - - - - 0x02FCFB 0B:BCEB: 0E        .byte $0E   ; 8B 
- - - - - - 0x02FCFC 0B:BCEC: 0E        .byte $0E   ; 8C 
- - - - - - 0x02FCFD 0B:BCED: 0E        .byte $0E   ; 8D 
- - - - - - 0x02FCFE 0B:BCEE: 0E        .byte $0E   ; 8E 
- - - - - - 0x02FCFF 0B:BCEF: 0E        .byte $0E   ; 8F 
- D 1 - - - 0x02FD00 0B:BCF0: 07        .byte $07   ; 90 
- D 1 - - - 0x02FD01 0B:BCF1: 0C        .byte $0C   ; 91 
- D 1 - - - 0x02FD02 0B:BCF2: 07        .byte $07   ; 92 
- - - - - - 0x02FD03 0B:BCF3: 04        .byte $04   ; 93 
- - - - - - 0x02FD04 0B:BCF4: 04        .byte $04   ; 94 
- D 1 - - - 0x02FD05 0B:BCF5: 04        .byte $04   ; 95 
- - - - - - 0x02FD06 0B:BCF6: 04        .byte $04   ; 96 
- - - - - - 0x02FD07 0B:BCF7: 04        .byte $04   ; 97 



bra_BCF8_RTS:
C D 1 - - - 0x02FD08 0B:BCF8: 60        RTS



sub_0x02FD09:
C - - - - - 0x02FD09 0B:BCF9: A5 AB     LDA ram_stopwatch_flag
C - - - - - 0x02FD0B 0B:BCFB: F0 05     BEQ bra_BD02
C - - - - - 0x02FD0D 0B:BCFD: 20 B6 E7  JSR sub_0x03E7C6
C - - - - - 0x02FD10 0B:BD00: B0 F6     BCS bra_BCF8_RTS
; bzk bug? something is reading this code.
; could be accidentally caused by me.
; don't know when this code was read, it's not in the movies
bra_BD02:
C D 1 - - - 0x02FD12 0B:BD02: BD EF 05  LDA ram_05EF_obj,X
C D 1 - - - 0x02FD15 0B:BD05: F0 F1     BEQ bra_BCF8_RTS    ; if con_BEA1_00
C - - - - - 0x02FD17 0B:BD07: C9 27     CMP #con_BEA1_27
C - - - - - 0x02FD19 0B:BD09: D0 05     BNE bra_BD10
C - - - - - 0x02FD1B 0B:BD0B: 20 31 81  JSR sub_8131
C D 1 - - - 0x02FD1E 0B:BD0E: F0 E8     BEQ bra_BCF8_RTS
bra_BD10:
C - - - - - 0x02FD20 0B:BD10: 0A        ASL
C - - - - - 0x02FD21 0B:BD11: A8        TAY
C - - - - - 0x02FD22 0B:BD12: B9 A1 BE  LDA tbl_BEA1,Y
C - - - - - 0x02FD25 0B:BD15: 85 02     STA ram_0002_t007_data
C - - - - - 0x02FD27 0B:BD17: B9 A2 BE  LDA tbl_BEA1 + $01,Y
C - - - - - 0x02FD2A 0B:BD1A: 85 03     STA ram_0002_t007_data + $01
C - - - - - 0x02FD2C 0B:BD1C: BD C1 05  LDA ram_05C1_obj,X
; * 04
C - - - - - 0x02FD2F 0B:BD1F: 0A        ASL
C - - - - - 0x02FD30 0B:BD20: 0A        ASL
C - - - - - 0x02FD31 0B:BD21: 18        CLC
C - - - - - 0x02FD32 0B:BD22: 65 02     ADC ram_0002_t007_data
C - - - - - 0x02FD34 0B:BD24: 85 02     STA ram_0002_t007_data
C - - - - - 0x02FD36 0B:BD26: A5 03     LDA ram_0002_t007_data + $01
C - - - - - 0x02FD38 0B:BD28: 69 00     ADC #$00
C - - - - - 0x02FD3A 0B:BD2A: 85 03     STA ram_0002_t007_data + $01
C - - - - - 0x02FD3C 0B:BD2C: A0 00     LDY #$00
C - - - - - 0x02FD3E 0B:BD2E: B1 02     LDA (ram_0002_t007_data),Y
C - - - - - 0x02FD40 0B:BD30: 0A        ASL
C - - - - - 0x02FD41 0B:BD31: B0 0E     BCS bra_BD41_80_FF
; 00-7F
C - - - - - 0x02FD43 0B:BD33: A8        TAY
C - - - - - 0x02FD44 0B:BD34: B9 4F BD  LDA tbl_BD4F,Y
C - - - - - 0x02FD47 0B:BD37: 85 00     STA ram_0000_t004_data
C - - - - - 0x02FD49 0B:BD39: B9 50 BD  LDA tbl_BD4F + $01,Y
C - - - - - 0x02FD4C 0B:BD3C: 85 01     STA ram_0000_t004_data + $01
C - - - - - 0x02FD4E 0B:BD3E: 6C 00 00  JMP (ram_0000_t004_data)
bra_BD41_80_FF:
C - - - - - 0x02FD51 0B:BD41: A8        TAY
C - - - - - 0x02FD52 0B:BD42: B9 4F BE  LDA tbl_BD4F + $100,Y
C - - - - - 0x02FD55 0B:BD45: 85 00     STA ram_0000_t004_data
C - - - - - 0x02FD57 0B:BD47: B9 50 BE  LDA tbl_BD4F + $100 + $01,Y
C - - - - - 0x02FD5A 0B:BD4A: 85 01     STA ram_0000_t004_data + $01
C - - - - - 0x02FD5C 0B:BD4C: 6C 00 00  JMP (ram_0000_t004_data)



tbl_BD4F:
; see con_BD4F
- D 1 - - - 0x02FD5F 0B:BD4F: 0D 81     .word ofs_039_810D_00
- D 1 - - - 0x02FD61 0B:BD51: 9B 81     .word ofs_039_819B_01
- D 1 - - - 0x02FD63 0B:BD53: 34 8F     .word ofs_039_8F34_02
- D 1 - - - 0x02FD65 0B:BD55: B9 81     .word ofs_039_81B9_03
- D 1 - - - 0x02FD67 0B:BD57: 0C 82     .word ofs_039_820C_04
- D 1 - - - 0x02FD69 0B:BD59: 2D 82     .word ofs_039_822D_05
- D 1 - - - 0x02FD6B 0B:BD5B: 56 82     .word ofs_039_8256_06
- D 1 - - - 0x02FD6D 0B:BD5D: BD 83     .word ofs_039_83BD_07
- D 1 - - - 0x02FD6F 0B:BD5F: F5 83     .word ofs_039_83F5_08
- D 1 - - - 0x02FD71 0B:BD61: AC 89     .word ofs_039_89AC_09
- - - - - - 0x02FD73 0B:BD63: C5 81     .word ofs_039_81C5_0A   ; unused, index doesn't exist
- D 1 - - - 0x02FD75 0B:BD65: AD 83     .word ofs_039_83AD_0B
- D 1 - - - 0x02FD77 0B:BD67: 82 84     .word ofs_039_8482_0C_compare_X_distance
- D 1 - - - 0x02FD79 0B:BD69: 5A 8E     .word ofs_039_8E5A_0D
- D 1 - - - 0x02FD7B 0B:BD6B: 20 8E     .word ofs_039_8E20_0E
- D 1 - - - 0x02FD7D 0B:BD6D: 28 85     .word ofs_039_8528_0F
- D 1 - - - 0x02FD7F 0B:BD6F: 6C 85     .word ofs_039_856C_10
- D 1 - - - 0x02FD81 0B:BD71: 62 86     .word ofs_039_8662_11
- D 1 - - - 0x02FD83 0B:BD73: CB 86     .word ofs_039_86CB_12
- D 1 - - - 0x02FD85 0B:BD75: 84 82     .word ofs_039_8284_13
- D 1 - - - 0x02FD87 0B:BD77: 6D A4     .word ofs_039_A46D_14
- D 1 - - - 0x02FD89 0B:BD79: CF A4     .word ofs_039_A4CF_15
- D 1 - - - 0x02FD8B 0B:BD7B: E3 A4     .word ofs_039_A4E3_16
- D 1 - - - 0x02FD8D 0B:BD7D: EA A4     .word ofs_039_A4EA_17
- D 1 - - - 0x02FD8F 0B:BD7F: F1 A4     .word ofs_039_A4F1_18
- - - - - - 0x02FD91 0B:BD81: 8B BF     .word ofs_039_BF8B_19_RTS
- D 1 - - - 0x02FD93 0B:BD83: F7 A4     .word ofs_039_A4F7_1A
- D 1 - - - 0x02FD95 0B:BD85: 02 A5     .word ofs_039_A502_1B
- D 1 - - - 0x02FD97 0B:BD87: 3A 89     .word ofs_039_893A_1C
- D 1 - - - 0x02FD99 0B:BD89: 7E 89     .word ofs_039_897E_1D
- D 1 - - - 0x02FD9B 0B:BD8B: C3 83     .word ofs_039_83C3_1E
- D 1 - - - 0x02FD9D 0B:BD8D: 41 84     .word ofs_039_8441_1F
- D 1 - - - 0x02FD9F 0B:BD8F: 4C 84     .word ofs_039_844C_20
- D 1 - - - 0x02FDA1 0B:BD91: C8 84     .word ofs_039_84C8_21
- D 1 - - - 0x02FDA3 0B:BD93: F8 89     .word ofs_039_89F8_22
- D 1 - - - 0x02FDA5 0B:BD95: 45 8A     .word ofs_039_8A45_23
- - - - - - 0x02FDA7 0B:BD97: D3 8A     .word ofs_039_8AD3_24   ; unused, index doesn't exist
- D 1 - - - 0x02FDA9 0B:BD99: 65 8A     .word ofs_039_8A65_25
- D 1 - - - 0x02FDAB 0B:BD9B: 29 8A     .word ofs_039_8A29_26
- D 1 - - - 0x02FDAD 0B:BD9D: B2 84     .word ofs_039_84B2_27
- D 1 - - - 0x02FDAF 0B:BD9F: 27 90     .word ofs_039_9027_28
- D 1 - - - 0x02FDB1 0B:BDA1: F1 8F     .word ofs_039_8FF1_29
- D 1 - - - 0x02FDB3 0B:BDA3: A7 81     .word ofs_039_81A7_2A
- D 1 - - - 0x02FDB5 0B:BDA5: B3 81     .word ofs_039_81B3_2B
- D 1 - - - 0x02FDB7 0B:BDA7: FF 90     .word ofs_039_90FF_2C
- D 1 - - - 0x02FDB9 0B:BDA9: E9 81     .word ofs_039_81E9_2D
- D 1 - - - 0x02FDBB 0B:BDAB: B8 84     .word ofs_039_84B8_2E
- D 1 - - - 0x02FDBD 0B:BDAD: 41 91     .word ofs_039_9141_2F
- D 1 - - - 0x02FDBF 0B:BDAF: 3A 8A     .word ofs_039_8A3A_30
- - - - - - 0x02FDC1 0B:BDB1: E9 8A     .word ofs_039_8AE9_31   ; unused, index doesn't exist
- D 1 - - - 0x02FDC3 0B:BDB3: E9 8A     .word ofs_039_8AE9_32
- D 1 - - - 0x02FDC5 0B:BDB5: FC 92     .word ofs_039_92FC_33
- D 1 - - - 0x02FDC7 0B:BDB7: 98 92     .word ofs_039_9298_34
- D 1 - - - 0x02FDC9 0B:BDB9: 58 93     .word ofs_039_9358_35
- D 1 - - - 0x02FDCB 0B:BDBB: C4 93     .word ofs_039_93C4_36
- D 1 - - - 0x02FDCD 0B:BDBD: 3B A0     .word ofs_039_A03B_37
- D 1 - - - 0x02FDCF 0B:BDBF: A3 A0     .word ofs_039_A0A3_38
- D 1 - - - 0x02FDD1 0B:BDC1: D8 A0     .word ofs_039_A0D8_39
- D 1 - - - 0x02FDD3 0B:BDC3: D4 8B     .word ofs_039_8BD4_3A
- D 1 - - - 0x02FDD5 0B:BDC5: 60 92     .word ofs_039_9260_3B
- D 1 - - - 0x02FDD7 0B:BDC7: EE 94     .word ofs_039_94EE_3C
- D 1 - - - 0x02FDD9 0B:BDC9: 0F 95     .word ofs_039_950F_3D
- D 1 - - - 0x02FDDB 0B:BDCB: 03 95     .word ofs_039_9503_3E
- D 1 - - - 0x02FDDD 0B:BDCD: A7 95     .word ofs_039_95A7_3F
- D 1 - - - 0x02FDDF 0B:BDCF: 39 95     .word ofs_039_9539_40
- D 1 - - - 0x02FDE1 0B:BDD1: 4E 95     .word ofs_039_954E_41
- D 1 - - - 0x02FDE3 0B:BDD3: 8B 95     .word ofs_039_958B_42
- D 1 - - - 0x02FDE5 0B:BDD5: 96 95     .word ofs_039_9596_43
- D 1 - - - 0x02FDE7 0B:BDD7: 56 85     .word ofs_039_8556_44
- D 1 - - - 0x02FDE9 0B:BDD9: CC 95     .word ofs_039_95CC_45_water_splash
- D 1 - - - 0x02FDEB 0B:BDDB: 23 96     .word ofs_039_9623_46
- D 1 - - - 0x02FDED 0B:BDDD: 44 96     .word ofs_039_9644_47
- D 1 - - - 0x02FDEF 0B:BDDF: 7B 96     .word ofs_039_967B_48
- D 1 - - - 0x02FDF1 0B:BDE1: 98 96     .word ofs_039_9698_49
- - - - - - 0x02FDF3 0B:BDE3: 44 96     .word ofs_039_9644_4A   ; unused, index doesn't exist
- - - - - - 0x02FDF5 0B:BDE5: 44 96     .word ofs_039_9644_4B   ; unused, index doesn't exist
- - - - - - 0x02FDF7 0B:BDE7: 44 96     .word ofs_039_9644_4C   ; unused, index doesn't exist
- D 1 - - - 0x02FDF9 0B:BDE9: 95 84     .word ofs_039_8495_4D_compare_XY_distance
- D 1 - - - 0x02FDFB 0B:BDEB: 9C 8D     .word ofs_039_8D9C_4E
- D 1 - - - 0x02FDFD 0B:BDED: 13 83     .word ofs_039_8313_4F
- D 1 - - - 0x02FDFF 0B:BDEF: 22 8C     .word ofs_039_8C22_50
- D 1 - - - 0x02FE01 0B:BDF1: 64 8C     .word ofs_039_8C64_51
- D 1 - - - 0x02FE03 0B:BDF3: E3 8A     .word ofs_039_8AE3_52
- D 1 - - - 0x02FE05 0B:BDF5: DD 81     .word ofs_039_81DD_53
- D 1 - - - 0x02FE07 0B:BDF7: D1 81     .word ofs_039_81D1_54
- D 1 - - - 0x02FE09 0B:BDF9: 01 82     .word ofs_039_8201_55
- D 1 - - - 0x02FE0B 0B:BDFB: 89 97     .word ofs_039_9789_56
- D 1 - - - 0x02FE0D 0B:BDFD: 6F 98     .word ofs_039_986F_57
- D 1 - - - 0x02FE0F 0B:BDFF: 5B 86     .word ofs_039_865B_58
- D 1 - - - 0x02FE11 0B:BE01: C2 86     .word ofs_039_86C2_59
- D 1 - - - 0x02FE13 0B:BE03: 34 96     .word ofs_039_9634_5A
- D 1 - - - 0x02FE15 0B:BE05: C4 98     .word ofs_039_98C4_5B
- D 1 - - - 0x02FE17 0B:BE07: E8 85     .word ofs_039_85E8_5C
- D 1 - - - 0x02FE19 0B:BE09: EF 8C     .word ofs_039_8CEF_5D
- D 1 - - - 0x02FE1B 0B:BE0B: AB 98     .word ofs_039_98AB_5E
- D 1 - - - 0x02FE1D 0B:BE0D: 39 8D     .word ofs_039_8D39_5F
- D 1 - - - 0x02FE1F 0B:BE0F: C3 87     .word ofs_039_87C3_60
- D 1 - - - 0x02FE21 0B:BE11: DF 87     .word ofs_039_87DF_61
- D 1 - - - 0x02FE23 0B:BE13: 14 82     .word ofs_039_8214_62
- D 1 - - - 0x02FE25 0B:BE15: FD 87     .word ofs_039_87FD_63
- D 1 - - - 0x02FE27 0B:BE17: CC 88     .word ofs_039_88CC_64
- D 1 - - - 0x02FE29 0B:BE19: 86 8D     .word ofs_039_8D86_65
- D 1 - - - 0x02FE2B 0B:BE1B: AB 91     .word ofs_039_91AB_66
- D 1 - - - 0x02FE2D 0B:BE1D: 9F 87     .word ofs_039_879F_67
- D 1 - - - 0x02FE2F 0B:BE1F: 46 99     .word ofs_039_9946_68
- D 1 - - - 0x02FE31 0B:BE21: EA 9F     .word ofs_039_9FEA_69
- D 1 - - - 0x02FE33 0B:BE23: FB 9F     .word ofs_039_9FFB_6A
- D 1 - - - 0x02FE35 0B:BE25: 9D 99     .word ofs_039_999D_6B
- D 1 - - - 0x02FE37 0B:BE27: E7 8F     .word ofs_039_8FE7_6C_play_sound
- D 1 - - - 0x02FE39 0B:BE29: 53 81     .word ofs_039_8153_6D
- D 1 - - - 0x02FE3B 0B:BE2B: D9 8A     .word ofs_039_8AD9_6E
- D 1 - - - 0x02FE3D 0B:BE2D: 73 87     .word ofs_039_8773_6F
- D 1 - - - 0x02FE3F 0B:BE2F: 93 87     .word ofs_039_8793_70
- - - - - - 0x02FE41 0B:BE31: A8 A0     .word ofs_039_A0A8_71   ; unused, index doesn't exist
- - - - - - 0x02FE43 0B:BE33: 2C 82     .word ofs_039_822C_72_RTS   ; unused, index doesn't exist
- D 1 - - - 0x02FE45 0B:BE35: 4A 86     .word ofs_039_864A_73
- D 1 - - - 0x02FE47 0B:BE37: A4 86     .word ofs_039_86A4_74
- D 1 - - - 0x02FE49 0B:BE39: 12 81     .word ofs_039_8112_75_RTS
- D 1 - - - 0x02FE4B 0B:BE3B: 78 9A     .word ofs_039_9A78_76
- D 1 - - - 0x02FE4D 0B:BE3D: 3F 9A     .word ofs_039_9A3F_77
- D 1 - - - 0x02FE4F 0B:BE3F: 74 9B     .word ofs_039_9B74_78
- D 1 - - - 0x02FE51 0B:BE41: 39 9A     .word ofs_039_9A39_79
- D 1 - - - 0x02FE53 0B:BE43: E8 9C     .word ofs_039_9CE8_7A
- D 1 - - - 0x02FE55 0B:BE45: 08 A5     .word ofs_039_A508_7B
- D 1 - - - 0x02FE57 0B:BE47: 13 A5     .word ofs_039_A513_7C
- D 1 - - - 0x02FE59 0B:BE49: 03 94     .word ofs_039_9403_7D
- D 1 - - - 0x02FE5B 0B:BE4B: D9 93     .word ofs_039_93D9_7E
- D 1 - - - 0x02FE5D 0B:BE4D: 3B 94     .word ofs_039_943B_7F
- D 1 - - - 0x02FE5F 0B:BE4F: 9B 94     .word ofs_039_949B_80
- D 1 - - - 0x02FE61 0B:BE51: BD 94     .word ofs_039_94BD_81
- D 1 - - - 0x02FE63 0B:BE53: C4 94     .word ofs_039_94C4_82
- D 1 - - - 0x02FE65 0B:BE55: E2 94     .word ofs_039_94E2_83
- D 1 - - - 0x02FE67 0B:BE57: 8D 9E     .word ofs_039_9E8D_84
- D 1 - - - 0x02FE69 0B:BE59: 25 9F     .word ofs_039_9F25_85
- D 1 - - - 0x02FE6B 0B:BE5B: 59 9F     .word ofs_039_9F59_86
- D 1 - - - 0x02FE6D 0B:BE5D: 73 83     .word ofs_039_8373_87
- D 1 - - - 0x02FE6F 0B:BE5F: 92 83     .word ofs_039_8392_88
- D 1 - - - 0x02FE71 0B:BE61: 22 8D     .word ofs_039_8D22_89
- D 1 - - - 0x02FE73 0B:BE63: BC 85     .word ofs_039_85BC_8A
- D 1 - - - 0x02FE75 0B:BE65: 9C 82     .word ofs_039_829C_8B
- D 1 - - - 0x02FE77 0B:BE67: B4 82     .word ofs_039_82B4_8C
- D 1 - - - 0x02FE79 0B:BE69: D5 82     .word ofs_039_82D5_8D
- D 1 - - - 0x02FE7B 0B:BE6B: 76 8D     .word ofs_039_8D76_8E
- D 1 - - - 0x02FE7D 0B:BE6D: C2 8B     .word ofs_039_8BC2_8F
- D 1 - - - 0x02FE7F 0B:BE6F: B0 8B     .word ofs_039_8BB0_90
- D 1 - - - 0x02FE81 0B:BE71: 40 82     .word ofs_039_8240_91
- D 1 - - - 0x02FE83 0B:BE73: F3 8A     .word ofs_039_8AF3_92_Harpy_carry_enemy
- D 1 - - - 0x02FE85 0B:BE75: 69 8B     .word ofs_039_8B69_93
- D 1 - - - 0x02FE87 0B:BE77: 75 8B     .word ofs_039_8B75_94
- D 1 - - - 0x02FE89 0B:BE79: 07 83     .word ofs_039_8307_95
- D 1 - - - 0x02FE8B 0B:BE7B: F7 8B     .word ofs_039_8BF7_96
- D 1 - - - 0x02FE8D 0B:BE7D: 67 A4     .word ofs_039_A467_97
- D 1 - - - 0x02FE8F 0B:BE7F: 11 88     .word ofs_039_8811_98
- D 1 - - - 0x02FE91 0B:BE81: 89 88     .word ofs_039_8889_99
- D 1 - - - 0x02FE93 0B:BE83: 3F 8E     .word ofs_039_8E3F_9A
- D 1 - - - 0x02FE95 0B:BE85: 9A 8C     .word ofs_039_8C9A_9B
- D 1 - - - 0x02FE97 0B:BE87: FA 86     .word ofs_039_86FA_9C
- D 1 - - - 0x02FE99 0B:BE89: 02 87     .word ofs_039_8702_9D
- - - - - - 0x02FE9B 0B:BE8B: 83 81     .word ofs_039_8183_9E
- D 1 - - - 0x02FE9D 0B:BE8D: 77 84     .word ofs_039_8477_9F
- D 1 - - - 0x02FE9F 0B:BE8F: 20 81     .word ofs_039_8120_A0
- - - - - - 0x02FEA1 0B:BE91: 6A 81     .word ofs_039_816A_A1
- - - - - - 0x02FEA3 0B:BE93: A1 8F     .word ofs_039_8FA1_A2
- D 1 - - - 0x02FEA5 0B:BE95: 19 87     .word ofs_039_8719_A3
- D 1 - - - 0x02FEA7 0B:BE97: 3A 87     .word ofs_039_873A_A4
- - - - - - 0x02FEA9 0B:BE99: AE 82     .word ofs_039_82AE_A5
- D 1 - - - 0x02FEAB 0B:BE9B: E5 83     .word ofs_039_83E5_A6
- D 1 - - - 0x02FEAD 0B:BE9D: 26 8A     .word ofs_039_8A26_A7
- D 1 - - - 0x02FEAF 0B:BE9F: 3E 86     .word ofs_039_863E_A8



tbl_BEA1:
; see con_BEA1
- - - - - - 0x02FEB1 0B:BEA1: 87 BF     .word _off034_BF87_00   ; unused 0x02FD1E
- D 1 - - - 0x02FEB3 0B:BEA3: 9C A5     .word _off034_A59C_01
- D 1 - - - 0x02FEB5 0B:BEA5: C4 A5     .word _off034_A5C4_02
- D 1 - - - 0x02FEB7 0B:BEA7: DC AA     .word _off034_AADC_03
- D 1 - - - 0x02FEB9 0B:BEA9: DC AA     .word _off034_AADC_04
- D 1 - - - 0x02FEBB 0B:BEAB: 1C A7     .word _off034_A71C_05
- D 1 - - - 0x02FEBD 0B:BEAD: 3C A7     .word _off034_A73C_06
- D 1 - - - 0x02FEBF 0B:BEAF: 18 A6     .word _off034_A618_07
- D 1 - - - 0x02FEC1 0B:BEB1: D4 A8     .word _off034_A8D4_08
- D 1 - - - 0x02FEC3 0B:BEB3: 10 A9     .word _off034_A910_09
- D 1 - - - 0x02FEC5 0B:BEB5: 10 AA     .word _off034_AA10_0A
- D 1 - - - 0x02FEC7 0B:BEB7: 48 AA     .word _off034_AA48_0B
- D 1 - - - 0x02FEC9 0B:BEB9: 84 AA     .word _off034_AA84_0C
- D 1 - - - 0x02FECB 0B:BEBB: D0 AA     .word _off034_AAD0_0D
- D 1 - - - 0x02FECD 0B:BEBD: EC A6     .word _off034_A6EC_0E
- D 1 - - - 0x02FECF 0B:BEBF: F4 AA     .word _off034_AAF4_0F
- D 1 - - - 0x02FED1 0B:BEC1: 68 AB     .word _off034_AB68_10
- D 1 - - - 0x02FED3 0B:BEC3: 2C A8     .word _off034_A82C_11
- D 1 - - - 0x02FED5 0B:BEC5: 70 A6     .word _off034_A670_12
- D 1 - - - 0x02FED7 0B:BEC7: F8 A8     .word _off034_A8F8_13
- D 1 - - - 0x02FED9 0B:BEC9: 50 AC     .word _off034_AC50_14
- - - - - - 0x02FEDB 0B:BECB: 87 BF     .word _off034_BF87_15
- D 1 - - - 0x02FEDD 0B:BECD: 50 AF     .word _off034_AF50_16
- D 1 - - - 0x02FEDF 0B:BECF: 40 A9     .word _off034_A940_17
- D 1 - - - 0x02FEE1 0B:BED1: F8 AF     .word _off034_AFF8_18
- D 1 - - - 0x02FEE3 0B:BED3: 0C B0     .word _off034_B00C_19
- D 1 - - - 0x02FEE5 0B:BED5: 1C B0     .word _off034_B01C_1A
- D 1 - - - 0x02FEE7 0B:BED7: 30 B0     .word _off034_B030_1B
- D 1 - - - 0x02FEE9 0B:BED9: B0 AB     .word _off034_ABB0_1C
- D 1 - - - 0x02FEEB 0B:BEDB: 0C AF     .word _off034_AF0C_1D
- D 1 - - - 0x02FEED 0B:BEDD: 40 A6     .word _off034_A640_1E
- - - - - - 0x02FEEF 0B:BEDF: 87 BF     .word _off034_BF87_1F
- D 1 - - - 0x02FEF1 0B:BEE1: BC AA     .word _off034_AABC_20
- D 1 - - - 0x02FEF3 0B:BEE3: 94 A9     .word _off034_A994_21
- D 1 - - - 0x02FEF5 0B:BEE5: A0 AA     .word _off034_AAA0_22
- D 1 - - - 0x02FEF7 0B:BEE7: A8 AA     .word _off034_AAA8_23
- D 1 - - - 0x02FEF9 0B:BEE9: A8 A5     .word _off034_A5A8_24
- D 1 - - - 0x02FEFB 0B:BEEB: 08 AE     .word _off034_AE08_25
- D 1 - - - 0x02FEFD 0B:BEED: 58 AE     .word _off034_AE58_26
- D 1 - - - 0x02FEFF 0B:BEEF: EC AC     .word _off034_ACEC_27
- D 1 - - - 0x02FF01 0B:BEF1: F8 AD     .word _off034_ADF8_28
- D 1 - - - 0x02FF03 0B:BEF3: 48 AD     .word _off034_AD48_29
- D 1 - - - 0x02FF05 0B:BEF5: 40 B0     .word _off034_B040_2A
- D 1 - - - 0x02FF07 0B:BEF7: 4C A8     .word _off034_A84C_2B
- D 1 - - - 0x02FF09 0B:BEF9: 50 A5     .word _off034_A550_2C
- D 1 - - - 0x02FF0B 0B:BEFB: 60 A5     .word _off034_A560_2D
- D 1 - - - 0x02FF0D 0B:BEFD: 6C A5     .word _off034_A56C_2E
- D 1 - - - 0x02FF0F 0B:BEFF: 94 A6     .word _off034_A694_2F
- D 1 - - - 0x02FF11 0B:BF01: 90 AF     .word _off034_AF90_30
- D 1 - - - 0x02FF13 0B:BF03: 9C AF     .word _off034_AF9C_31
- D 1 - - - 0x02FF15 0B:BF05: A8 AF     .word _off034_AFA8_32
- D 1 - - - 0x02FF17 0B:BF07: A0 B0     .word _off034_B0A0_33
- D 1 - - - 0x02FF19 0B:BF09: A0 B0     .word _off034_B0A0_34
- D 1 - - - 0x02FF1B 0B:BF0B: A0 B0     .word _off034_B0A0_35
- D 1 - - - 0x02FF1D 0B:BF0D: A0 B0     .word _off034_B0A0_36
- D 1 - - - 0x02FF1F 0B:BF0F: A0 B0     .word _off034_B0A0_37
- D 1 - - - 0x02FF21 0B:BF11: A0 B0     .word _off034_B0A0_38
- D 1 - - - 0x02FF23 0B:BF13: A0 B0     .word _off034_B0A0_39
- D 1 - - - 0x02FF25 0B:BF15: A0 B0     .word _off034_B0A0_3A
- - - - - - 0x02FF27 0B:BF17: A0 B0     .word _off034_B0A0_3B
- - - - - - 0x02FF29 0B:BF19: A0 B0     .word _off034_B0A0_3C
- D 1 - - - 0x02FF2B 0B:BF1B: A0 B0     .word _off034_B0A0_3D
- D 1 - - - 0x02FF2D 0B:BF1D: A0 B0     .word _off034_B0A0_3E
- - - - - - 0x02FF2F 0B:BF1F: A0 B0     .word _off034_B0A0_3F
- - - - - - 0x02FF31 0B:BF21: A0 B0     .word _off034_B0A0_40
- D 1 - - - 0x02FF33 0B:BF23: A0 B0     .word _off034_B0A0_41
- D 1 - - - 0x02FF35 0B:BF25: A0 B0     .word _off034_B0A0_42
- D 1 - - - 0x02FF37 0B:BF27: B4 B0     .word _off034_B0B4_43
- D 1 - - - 0x02FF39 0B:BF29: B4 B0     .word _off034_B0B4_44
- D 1 - - - 0x02FF3B 0B:BF2B: B4 B0     .word _off034_B0B4_45
- D 1 - - - 0x02FF3D 0B:BF2D: B4 B0     .word _off034_B0B4_46
- D 1 - - - 0x02FF3F 0B:BF2F: B4 B0     .word _off034_B0B4_47
- - - - - - 0x02FF41 0B:BF31: B4 B0     .word _off034_B0B4_48
- - - - - - 0x02FF43 0B:BF33: B4 B0     .word _off034_B0B4_49
- D 1 - - - 0x02FF45 0B:BF35: B4 B0     .word _off034_B0B4_4A
- - - - - - 0x02FF47 0B:BF37: B4 B0     .word _off034_B0B4_4B
- D 1 - - - 0x02FF49 0B:BF39: A0 B0     .word _off034_B0A0_4C
- D 1 - - - 0x02FF4B 0B:BF3B: A0 B0     .word _off034_B0A0_4D
- D 1 - - - 0x02FF4D 0B:BF3D: 88 B0     .word _off034_B088_4E
- D 1 - - - 0x02FF4F 0B:BF3F: A0 B0     .word _off034_B0A0_4F
- D 1 - - - 0x02FF51 0B:BF41: A0 B0     .word _off034_B0A0_50
- - - - - - 0x02FF53 0B:BF43: D4 B0     .word _off034_B0D4_51
- - - - - - 0x02FF55 0B:BF45: D4 B0     .word _off034_B0D4_52
- - - - - - 0x02FF57 0B:BF47: D4 B0     .word _off034_B0D4_53
- - - - - - 0x02FF59 0B:BF49: 87 BF     .word _off034_BF87_54
- - - - - - 0x02FF5B 0B:BF4B: 87 BF     .word _off034_BF87_55
- - - - - - 0x02FF5D 0B:BF4D: 87 BF     .word _off034_BF87_56
- D 1 - - - 0x02FF5F 0B:BF4F: D8 B0     .word _off034_B0D8_57
- D 1 - - - 0x02FF61 0B:BF51: B4 AF     .word _off034_AFB4_58
- D 1 - - - 0x02FF63 0B:BF53: BC AF     .word _off034_AFBC_59
- D 1 - - - 0x02FF65 0B:BF55: D0 AF     .word _off034_AFD0_5A
- D 1 - - - 0x02FF67 0B:BF57: D8 AF     .word _off034_AFD8_5B
- D 1 - - - 0x02FF69 0B:BF59: E0 AF     .word _off034_AFE0_5C
- D 1 - - - 0x02FF6B 0B:BF5B: EC AF     .word _off034_AFEC_5D
- D 1 - - - 0x02FF6D 0B:BF5D: 5C B0     .word _off034_B05C_5E
- D 1 - - - 0x02FF6F 0B:BF5F: 6C B0     .word _off034_B06C_5F
- D 1 - - - 0x02FF71 0B:BF61: 0B A4     .word _off034_A40B_60
- D 1 - - - 0x02FF73 0B:BF63: 78 A5     .word _off034_A578_61
- D 1 - - - 0x02FF75 0B:BF65: 50 B0     .word _off034_B050_62
- D 1 - - - 0x02FF77 0B:BF67: 6C A7     .word _off034_A76C_63
- D 1 - - - 0x02FF79 0B:BF69: 7C A5     .word _off034_A57C_64
- D 1 - - - 0x02FF7B 0B:BF6B: FC A7     .word _off034_A7FC_65
- D 1 - - - 0x02FF7D 0B:BF6D: 28 A7     .word _off034_A728_66
- D 1 - - - 0x02FF7F 0B:BF6F: 4C B0     .word _off034_B04C_67
- D 1 - - - 0x02FF81 0B:BF71: 9C A8     .word _off034_A89C_68
- D 1 - - - 0x02FF83 0B:BF73: B8 A6     .word _off034_A6B8_69
- D 1 - - - 0x02FF85 0B:BF75: F8 AB     .word _off034_ABF8_6A
- - - - - - 0x02FF87 0B:BF77: 38 A5     .word _off034_A538_6B
- - - - - - 0x02FF89 0B:BF79: 44 A5     .word _off034_A544_6C
- D 1 - - - 0x02FF8B 0B:BF7B: 2C A6     .word _off034_A62C_6D
- - - - - - 0x02FF8D 0B:BF7D: 58 A7     .word _off034_A758_6E
- - - - - - 0x02FF8F 0B:BF7F: 8C A5     .word _off034_A58C_6F
- D 1 - - - 0x02FF91 0B:BF81: B8 A5     .word _off034_A5B8_70
- D 1 - - - 0x02FF93 0B:BF83: 60 A8     .word _off034_A860_71
- - - - - - 0x02FF95 0B:BF85: F8 AF     .word _off034_AFF8_72



_off034_BF87_00:
_off034_BF87_15:
_off034_BF87_1F:
_off034_BF87_54:
_off034_BF87_55:
_off034_BF87_56:
; 
- - - - - - 0x02FF97 0B:BF87: 19        .byte con_BD4F_19   ; 
- - - - - - 0x02FF98 0B:BF88: 00        .byte $00   ; 
- - - - - - 0x02FF99 0B:BF89: 00        .byte $00   ; 
- - - - - - 0x02FF9A 0B:BF8A: 00        .byte $00   ; 



ofs_039_BF8B_19_RTS:
- - - - - - 0x02FF9B 0B:BF8B: 60        RTS


; bzk garbage, pointers to RTS at BF8B
- - - - - - 0x02FF9C 0B:BF8C: 8B BF     .word $BF8B ; 
- - - - - - 0x02FF9E 0B:BF8E: 8B BF     .word $BF8B ; 


; bzk garbage
- - - - - - 0x02FFA0 0B:BF90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x02FFB0 0B:BFA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x02FFC0 0B:BFB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x02FFD0 0B:BFC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x02FFE0 0B:BFD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x02FFF0 0B:BFE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x030000 0B:BFF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



.out .sprintf("Free bytes in bank 96: 0x%04X [%d]", ($C000 - *), ($C000 - *))



