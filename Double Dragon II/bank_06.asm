.segment "BANK_06"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x018010-0x01C00F



.export sub_0x018030
.export sub_0x018810_prepare_mission_data
.export sub_0x018835_mission_script_handler_update
.export tbl_0x0194F4
.export tbl_0x01955B_mission_music
.export tbl_0x0195AE_checkpoint_mission
.export sub_0x01A540_draw_on_screen_during_mission
.export sub_0x01ABC0_jumping_spikes
.export sub_0x01ADD0
.export sub_0x01B137
.export sub_0x01B1C0
.export sub_0x01BA80
.export sub_0x01BC24
.export sub_0x01BD51


; bzk garbage
- D 0 - - - 0x018010 06:8000: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x018020 06:8010: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 



sub_0x018030:
C - - - - - 0x018030 06:8020: A2 00     LDX #$00
C - - - - - 0x018032 06:8022: 86 3B     STX ram_obj_index
bra_8024_loop:
C - - - - - 0x018034 06:8024: A6 3B     LDX ram_obj_index
C - - - - - 0x018036 06:8026: B5 3C     LDA ram_003C_obj_flags,X ; 003C 003D
C - - - - - 0x018038 06:8028: 10 16     BPL bra_8040    ; if not con_003C_flag_exist
C - - - - - 0x01803A 06:802A: 20 73 FC  JSR sub_0x01FC83_collision_with_background
C - - - - - 0x01803D 06:802D: B5 36     LDA ram_0036_enemy,X
C - - - - - 0x01803F 06:802F: 10 06     BPL bra_8037    ; if not con_0036_80
C - - - - - 0x018041 06:8031: 20 61 80  JSR sub_8061
C - - - - - 0x018044 06:8034: 4C 3A 80  JMP loc_803A
bra_8037:
C - - - - - 0x018047 06:8037: 20 81 80  JSR sub_8081
loc_803A:
C D 0 - - - 0x01804A 06:803A: 20 39 87  JSR sub_8739
C - - - - - 0x01804D 06:803D: 20 F5 82  JSR sub_82F5
bra_8040:
C - - - - - 0x018050 06:8040: E6 3B     INC ram_obj_index
C - - - - - 0x018052 06:8042: A5 3B     LDA ram_obj_index
C - - - - - 0x018054 06:8044: C9 02     CMP #$02
C - - - - - 0x018056 06:8046: 90 DC     BCC bra_8024_loop
C - - - - - 0x018058 06:8048: 20 42 FC  JSR sub_0x01FC52
C - - - - - 0x01805B 06:804B: A2 04     LDX #$04
C - - - - - 0x01805D 06:804D: 86 3B     STX ram_obj_index
bra_804F_loop:
C - - - - - 0x01805F 06:804F: A6 3B     LDX ram_obj_index
C - - - - - 0x018061 06:8051: B5 3C     LDA ram_003C_obj_flags,X ; 0040 0041 0042
C - - - - - 0x018063 06:8053: 10 03     BPL bra_8058    ; if not con_003C_flag_exist
C - - - - - 0x018065 06:8055: 20 73 FC  JSR sub_0x01FC83_collision_with_background
bra_8058:
C - - - - - 0x018068 06:8058: E6 3B     INC ram_obj_index
C - - - - - 0x01806A 06:805A: A5 3B     LDA ram_obj_index
C - - - - - 0x01806C 06:805C: C9 07     CMP #$07
C - - - - - 0x01806E 06:805E: 90 EF     BCC bra_804F_loop
C - - - - - 0x018070 06:8060: 60        RTS



sub_8061:
C - - - - - 0x018071 06:8061: B5 43     LDA ram_state,X
C - - - - - 0x018073 06:8063: 29 7F     AND #$7F
C - - - - - 0x018075 06:8065: F0 19     BEQ bra_8080_RTS
C - - - - - 0x018077 06:8067: C9 04     CMP #con_state_ladder_climb_idle
C - - - - - 0x018079 06:8069: F0 15     BEQ bra_8080_RTS
C - - - - - 0x01807B 06:806B: C9 7F     CMP #con_state_hair_grabbed
C - - - - - 0x01807D 06:806D: F0 11     BEQ bra_8080_RTS
C - - - - - 0x01807F 06:806F: BD 4A 00  LDA a: ram_004A_obj_flags,X
C - - - - - 0x018082 06:8072: 30 0C     BMI bra_8080_RTS    ; if con_004A_flag_knocked_down
C - - - - - 0x018084 06:8074: A0 00     LDY #con_state_idle
C - - - - - 0x018086 06:8076: BD 69 03  LDA ram_0369_obj,X
C - - - - - 0x018089 06:8079: 10 02     BPL bra_807D
- - - - - - 0x01808B 06:807B: A0 04     LDY #con_state_ladder_climb_idle
bra_807D:
C - - - - - 0x01808D 06:807D: 98        TYA
C - - - - - 0x01808E 06:807E: 95 43     STA ram_state,X
bra_8080_RTS:
C - - - - - 0x018090 06:8080: 60        RTS



sub_8081:
C - - - - - 0x018091 06:8081: 20 DF 86  JSR sub_86DF_buttons
C - - - - - 0x018094 06:8084: B5 43     LDA ram_state,X
C - - - - - 0x018096 06:8086: 10 1B     BPL bra_80A3_RTS
C - - - - - 0x018098 06:8088: 29 7F     AND #$7F
C - - - - - 0x01809A 06:808A: C9 7F     CMP #con_state_hair_grabbed
C - - - - - 0x01809C 06:808C: F0 15     BEQ bra_80A3_RTS
C - - - - - 0x01809E 06:808E: 0A        ASL
C - - - - - 0x01809F 06:808F: A8        TAY
C - - - - - 0x0180A0 06:8090: B9 A4 80  LDA tbl_80A4_state_handler,Y
C - - - - - 0x0180A3 06:8093: 85 29     STA ram_0029
C - - - - - 0x0180A5 06:8095: B9 A5 80  LDA tbl_80A4_state_handler + $01,Y
C - - - - - 0x0180A8 06:8098: 85 2A     STA ram_002A
; bzk optimize, just delete these 4 lines of code
C - - - - - 0x0180AA 06:809A: A9 80     LDA #> ( ofs_80A3_RTS - $01 )
C - - - - - 0x0180AC 06:809C: 48        PHA
C - - - - - 0x0180AD 06:809D: A9 A2     LDA #< ( ofs_80A3_RTS - $01 )
C - - - - - 0x0180AF 06:809F: 48        PHA
C - - - - - 0x0180B0 06:80A0: 6C 29 00  JMP (ram_0029)
bra_80A3_RTS:
ofs_80A3_RTS:
C - - - - - 0x0180B3 06:80A3: 60        RTS



tbl_80A4_state_handler:
- D 0 - - - 0x0180B4 06:80A4: 64 81     .word ofs_009_8164_00_idle
- D 0 - - - 0x0180B6 06:80A6: 76 81     .word ofs_009_8176_01
- - - - - - 0x0180B8 06:80A8: 75 81     .word ofs_009_8175_02_RTS
- D 0 - - - 0x0180BA 06:80AA: 87 81     .word ofs_009_8187_03
- D 0 - - - 0x0180BC 06:80AC: 99 81     .word ofs_009_8199_04_on_ladder_idle
- D 0 - - - 0x0180BE 06:80AE: 92 81     .word ofs_009_8192_05
- D 0 - - - 0x0180C0 06:80B0: 53 82     .word ofs_009_8253_06_jump
- D 0 - - - 0x0180C2 06:80B2: F4 82     .word ofs_009_82F4_07_RTS
- D 0 - - - 0x0180C4 06:80B4: 53 82     .word ofs_009_8253_08
- - - - - - 0x0180C6 06:80B6: 75 81     .word ofs_009_8175_09_RTS
- - - - - - 0x0180C8 06:80B8: 75 81     .word ofs_009_8175_0A_RTS
- - - - - - 0x0180CA 06:80BA: 75 81     .word ofs_009_8175_0B_RTS
- - - - - - 0x0180CC 06:80BC: 75 81     .word ofs_009_8175_0C_RTS
- - - - - - 0x0180CE 06:80BE: 75 81     .word ofs_009_8175_0D_RTS
- - - - - - 0x0180D0 06:80C0: 75 81     .word ofs_009_8175_0E_RTS
- - - - - - 0x0180D2 06:80C2: 75 81     .word ofs_009_8175_0F_RTS
- - - - - - 0x0180D4 06:80C4: 75 81     .word ofs_009_8175_10_RTS
- D 0 - - - 0x0180D6 06:80C6: F4 82     .word ofs_009_82F4_11_RTS
- D 0 - - - 0x0180D8 06:80C8: 83 82     .word ofs_009_8283_12_land
- D 0 - - - 0x0180DA 06:80CA: F4 82     .word ofs_009_82F4_13_RTS
- D 0 - - - 0x0180DC 06:80CC: F4 82     .word ofs_009_82F4_14_RTS
- D 0 - - - 0x0180DE 06:80CE: F4 82     .word ofs_009_82F4_15_RTS
- D 0 - - - 0x0180E0 06:80D0: F4 82     .word ofs_009_82F4_16_RTS
- D 0 - - - 0x0180E2 06:80D2: F4 82     .word ofs_009_82F4_17_RTS
- D 0 - - - 0x0180E4 06:80D4: F4 82     .word ofs_009_82F4_18_RTS
- D 0 - - - 0x0180E6 06:80D6: F4 82     .word ofs_009_82F4_19_RTS
- D 0 - - - 0x0180E8 06:80D8: F4 82     .word ofs_009_82F4_1A_RTS
- D 0 - - - 0x0180EA 06:80DA: F4 82     .word ofs_009_82F4_1B_RTS
- D 0 - - - 0x0180EC 06:80DC: F4 82     .word ofs_009_82F4_1C_RTS
- D 0 - - - 0x0180EE 06:80DE: F4 82     .word ofs_009_82F4_1D_RTS
- D 0 - - - 0x0180F0 06:80E0: F4 82     .word ofs_009_82F4_1E_RTS
- D 0 - - - 0x0180F2 06:80E2: F4 82     .word ofs_009_82F4_1F_RTS
- D 0 - - - 0x0180F4 06:80E4: F4 82     .word ofs_009_82F4_20_RTS
- D 0 - - - 0x0180F6 06:80E6: F4 82     .word ofs_009_82F4_21_RTS
- D 0 - - - 0x0180F8 06:80E8: F4 82     .word ofs_009_82F4_22_RTS
- D 0 - - - 0x0180FA 06:80EA: F4 82     .word ofs_009_82F4_23_RTS
- D 0 - - - 0x0180FC 06:80EC: 75 81     .word ofs_009_8175_24_RTS
- - - - - - 0x0180FE 06:80EE: 75 81     .word ofs_009_8175_25_RTS
- D 0 - - - 0x018100 06:80F0: 75 81     .word ofs_009_8175_26_RTS
- D 0 - - - 0x018102 06:80F2: 75 81     .word ofs_009_8175_27_RTS
- - - - - - 0x018104 06:80F4: 75 81     .word ofs_009_8175_28_RTS
- - - - - - 0x018106 06:80F6: 75 81     .word ofs_009_8175_29_RTS
- - - - - - 0x018108 06:80F8: 75 81     .word ofs_009_8175_2A_RTS
- D 0 - - - 0x01810A 06:80FA: 75 81     .word ofs_009_8175_2B_RTS
- - - - - - 0x01810C 06:80FC: 75 81     .word ofs_009_8175_2C_RTS
- D 0 - - - 0x01810E 06:80FE: 07 82     .word ofs_009_8207_2D
- - - - - - 0x018110 06:8100: 75 81     .word ofs_009_8175_2E_RTS
- D 0 - - - 0x018112 06:8102: 75 81     .word ofs_009_8175_2F_RTS
- D 0 - - - 0x018114 06:8104: 75 81     .word ofs_009_8175_30_RTS
- D 0 - - - 0x018116 06:8106: 2D 82     .word ofs_009_822D_31
- - - - - - 0x018118 06:8108: 75 81     .word ofs_009_8175_32_RTS
- D 0 - - - 0x01811A 06:810A: 2D 82     .word ofs_009_822D_33
- - - - - - 0x01811C 06:810C: 75 81     .word ofs_009_8175_34_RTS
- D 0 - - - 0x01811E 06:810E: 75 81     .word ofs_009_8175_35_RTS
- - - - - - 0x018120 06:8110: 75 81     .word ofs_009_8175_36_RTS
- - - - - - 0x018122 06:8112: 75 81     .word ofs_009_8175_37_RTS
- - - - - - 0x018124 06:8114: 75 81     .word ofs_009_8175_38_RTS
- D 0 - - - 0x018126 06:8116: 75 81     .word ofs_009_8175_39_RTS
- D 0 - - - 0x018128 06:8118: 75 81     .word ofs_009_8175_3A_RTS
- D 0 - - - 0x01812A 06:811A: 75 81     .word ofs_009_8175_3B_RTS
- - - - - - 0x01812C 06:811C: 75 81     .word ofs_009_8175_3C_RTS
- - - - - - 0x01812E 06:811E: 75 81     .word ofs_009_8175_3D_RTS
- - - - - - 0x018130 06:8120: 75 81     .word ofs_009_8175_3E_RTS
- - - - - - 0x018132 06:8122: 75 81     .word ofs_009_8175_3F_RTS
- - - - - - 0x018134 06:8124: 75 81     .word ofs_009_8175_40_RTS
- - - - - - 0x018136 06:8126: 75 81     .word ofs_009_8175_41_RTS
- D 0 - - - 0x018138 06:8128: 75 81     .word ofs_009_8175_42_RTS
- D 0 - - - 0x01813A 06:812A: 75 81     .word ofs_009_8175_43_RTS
- - - - - - 0x01813C 06:812C: 75 81     .word ofs_009_8175_44_RTS
- D 0 - - - 0x01813E 06:812E: 75 81     .word ofs_009_8175_45_RTS
- - - - - - 0x018140 06:8130: 75 81     .word ofs_009_8175_46_RTS
- - - - - - 0x018142 06:8132: 75 81     .word ofs_009_8175_47_RTS
- - - - - - 0x018144 06:8134: 75 81     .word ofs_009_8175_48_RTS
- - - - - - 0x018146 06:8136: 75 81     .word ofs_009_8175_49_RTS
- - - - - - 0x018148 06:8138: 75 81     .word ofs_009_8175_4A_RTS
- - - - - - 0x01814A 06:813A: 75 81     .word ofs_009_8175_4B_RTS
- - - - - - 0x01814C 06:813C: 75 81     .word ofs_009_8175_4C_RTS
- - - - - - 0x01814E 06:813E: 75 81     .word ofs_009_8175_4D_RTS
- D 0 - - - 0x018150 06:8140: 75 81     .word ofs_009_8175_4E_RTS
- D 0 - - - 0x018152 06:8142: 75 81     .word ofs_009_8175_4F_RTS
- D 0 - - - 0x018154 06:8144: 75 81     .word ofs_009_8175_50_RTS
- D 0 - - - 0x018156 06:8146: 75 81     .word ofs_009_8175_51_RTS
- D 0 - - - 0x018158 06:8148: 75 81     .word ofs_009_8175_52_RTS
- - - - - - 0x01815A 06:814A: 75 81     .word ofs_009_8175_53_RTS
- - - - - - 0x01815C 06:814C: 75 81     .word ofs_009_8175_54_RTS
- - - - - - 0x01815E 06:814E: 75 81     .word ofs_009_8175_55_RTS
- D 0 - - - 0x018160 06:8150: 75 81     .word ofs_009_8175_56_RTS
- D 0 - - - 0x018162 06:8152: CB 82     .word ofs_009_82CB_57
- D 0 - - - 0x018164 06:8154: 75 81     .word ofs_009_8175_58_RTS
- - - - - - 0x018166 06:8156: 75 81     .word ofs_009_8175_59_RTS
- - - - - - 0x018168 06:8158: 75 81     .word ofs_009_8175_5A_RTS
- - - - - - 0x01816A 06:815A: 75 81     .word ofs_009_8175_5B_RTS
- D 0 - - - 0x01816C 06:815C: 75 81     .word ofs_009_8175_5C_RTS
- - - - - - 0x01816E 06:815E: 75 81     .word ofs_009_8175_5D_RTS
- - - - - - 0x018170 06:8160: 75 81     .word ofs_009_8175_5E_RTS
- D 0 - - - 0x018172 06:8162: 75 81     .word ofs_009_8175_5F_RTS



ofs_009_8164_00_idle:
C - - J - - 0x018174 06:8164: A6 3B     LDX ram_obj_index
C - - - - - 0x018176 06:8166: BC 2C 04  LDY ram_042C_plr_direction,X
C - - - - - 0x018179 06:8169: F0 07     BEQ bra_8172
C - - - - - 0x01817B 06:816B: A9 01     LDA #con_state_walk
C - - - - - 0x01817D 06:816D: 95 43     STA ram_state,X
C - - - - - 0x01817F 06:816F: 20 B7 81  JSR sub_81B7_set_direction___facing
bra_8172:
C - - - - - 0x018182 06:8172: 20 2B 84  JSR sub_842B
ofs_009_8175_02_RTS:
ofs_009_8175_09_RTS:
ofs_009_8175_0A_RTS:
ofs_009_8175_0B_RTS:
ofs_009_8175_0C_RTS:
ofs_009_8175_0D_RTS:
ofs_009_8175_0E_RTS:
ofs_009_8175_0F_RTS:
ofs_009_8175_10_RTS:
ofs_009_8175_24_RTS:
ofs_009_8175_25_RTS:
ofs_009_8175_26_RTS:
ofs_009_8175_27_RTS:
ofs_009_8175_28_RTS:
ofs_009_8175_29_RTS:
ofs_009_8175_2A_RTS:
ofs_009_8175_2B_RTS:
ofs_009_8175_2C_RTS:
ofs_009_8175_2E_RTS:
ofs_009_8175_2F_RTS:
ofs_009_8175_30_RTS:
ofs_009_8175_32_RTS:
ofs_009_8175_34_RTS:
ofs_009_8175_35_RTS:
ofs_009_8175_36_RTS:
ofs_009_8175_37_RTS:
ofs_009_8175_38_RTS:
ofs_009_8175_39_RTS:
ofs_009_8175_3A_RTS:
ofs_009_8175_3B_RTS:
ofs_009_8175_3C_RTS:
ofs_009_8175_3D_RTS:
ofs_009_8175_3E_RTS:
ofs_009_8175_3F_RTS:
ofs_009_8175_40_RTS:
ofs_009_8175_41_RTS:
ofs_009_8175_42_RTS:
ofs_009_8175_43_RTS:
ofs_009_8175_44_RTS:
ofs_009_8175_45_RTS:
ofs_009_8175_46_RTS:
ofs_009_8175_47_RTS:
ofs_009_8175_48_RTS:
ofs_009_8175_49_RTS:
ofs_009_8175_4A_RTS:
ofs_009_8175_4B_RTS:
ofs_009_8175_4C_RTS:
ofs_009_8175_4D_RTS:
ofs_009_8175_4E_RTS:
ofs_009_8175_4F_RTS:
ofs_009_8175_50_RTS:
ofs_009_8175_51_RTS:
ofs_009_8175_52_RTS:
ofs_009_8175_53_RTS:
ofs_009_8175_54_RTS:
ofs_009_8175_55_RTS:
ofs_009_8175_56_RTS:
ofs_009_8175_58_RTS:
ofs_009_8175_59_RTS:
ofs_009_8175_5A_RTS:
ofs_009_8175_5B_RTS:
ofs_009_8175_5C_RTS:
ofs_009_8175_5D_RTS:
ofs_009_8175_5E_RTS:
ofs_009_8175_5F_RTS:
C - - - - - 0x018185 06:8175: 60        RTS



ofs_009_8176_01:
C - - J - - 0x018186 06:8176: BC 2C 04  LDY ram_042C_plr_direction,X
C - - - - - 0x018189 06:8179: D0 05     BNE bra_8180
C - - - - - 0x01818B 06:817B: A9 00     LDA #con_state_idle
C - - - - - 0x01818D 06:817D: 95 43     STA ram_state,X
C - - - - - 0x01818F 06:817F: 60        RTS
bra_8180:
C - - - - - 0x018190 06:8180: 20 B7 81  JSR sub_81B7_set_direction___facing
C - - - - - 0x018193 06:8183: 20 2B 84  JSR sub_842B
C - - - - - 0x018196 06:8186: 60        RTS



ofs_009_8187_03:
C - - J - - 0x018197 06:8187: B5 E2     LDA ram_btn_hold,X
C - - - - - 0x018199 06:8189: 29 08     AND #con_btn_Up
C - - - - - 0x01819B 06:818B: D0 04     BNE bra_8191_RTS
bra_818D:
C - - - - - 0x01819D 06:818D: A9 04     LDA #con_state_ladder_climb_idle
C - - - - - 0x01819F 06:818F: 95 43     STA ram_state,X
bra_8191_RTS:
C - - - - - 0x0181A1 06:8191: 60        RTS



ofs_009_8192_05:
C - - J - - 0x0181A2 06:8192: B5 E2     LDA ram_btn_hold,X
C - - - - - 0x0181A4 06:8194: 29 04     AND #con_btn_Down
C - - - - - 0x0181A6 06:8196: F0 F5     BEQ bra_818D
C - - - - - 0x0181A8 06:8198: 60        RTS



ofs_009_8199_04_on_ladder_idle:
C - - J - - 0x0181A9 06:8199: B5 E2     LDA ram_btn_hold,X
C - - - - - 0x0181AB 06:819B: 29 0C     AND #con_btn_Down + con_btn_Up
C - - - - - 0x0181AD 06:819D: F0 17     BEQ bra_81B6_RTS
C - - - - - 0x0181AF 06:819F: 29 08     AND #con_btn_Up
C - - - - - 0x0181B1 06:81A1: F0 0A     BEQ bra_81AD_down
; up
C - - - - - 0x0181B3 06:81A3: A9 00     LDA #$00
C - - - - - 0x0181B5 06:81A5: 9D 0F 03  STA ram_obj_direction,X
C - - - - - 0x0181B8 06:81A8: A9 03     LDA #con_state_ladder_climb_up
C - - - - - 0x0181BA 06:81AA: 95 43     STA ram_state,X
C - - - - - 0x0181BC 06:81AC: 60        RTS
bra_81AD_down:
C - - - - - 0x0181BD 06:81AD: A9 80     LDA #$80
C - - - - - 0x0181BF 06:81AF: 9D 0F 03  STA ram_obj_direction,X
C - - - - - 0x0181C2 06:81B2: A9 05     LDA #con_state_ladder_climb_down
C - - - - - 0x0181C4 06:81B4: 95 43     STA ram_state,X
bra_81B6_RTS:
C - - - - - 0x0181C6 06:81B6: 60        RTS



sub_81B7_set_direction___facing:
; bzk optimize, 0x0181DA and 0x0181EF have common code
C - - - - - 0x0181C7 06:81B7: BC 2C 04  LDY ram_042C_plr_direction,X
C - - - - - 0x0181CA 06:81BA: B9 EC 81  LDA tbl_81EC_direction,Y
C - - - - - 0x0181CD 06:81BD: 9D 0F 03  STA ram_obj_direction,X
C - - - - - 0x0181D0 06:81C0: B9 FE 81  LDA tbl_81FE_facing,Y
C - - - - - 0x0181D3 06:81C3: C9 FF     CMP #$FF
C - - - - - 0x0181D5 06:81C5: F0 02     BEQ bra_81C9_RTS
C - - - - - 0x0181D7 06:81C7: 95 63     STA ram_0063_obj_facing,X
bra_81C9_RTS:
C - - - - - 0x0181D9 06:81C9: 60        RTS



sub_81CA_set_state___direction___facing:
C - - - - - 0x0181DA 06:81CA: 95 43     STA ram_state,X
C - - - - - 0x0181DC 06:81CC: BC 2C 04  LDY ram_042C_plr_direction,X
C - - - - - 0x0181DF 06:81CF: B9 F5 81  LDA tbl_81F5_direction,Y
C - - - - - 0x0181E2 06:81D2: 9D 0F 03  STA ram_obj_direction,X
C - - - - - 0x0181E5 06:81D5: B9 FE 81  LDA tbl_81FE_facing,Y
C - - - - - 0x0181E8 06:81D8: C9 FF     CMP #$FF
C - - - - - 0x0181EA 06:81DA: F0 02     BEQ bra_81DE_RTS
C - - - - - 0x0181EC 06:81DC: 95 63     STA ram_0063_obj_facing,X
bra_81DE_RTS:
C - - - - - 0x0181EE 06:81DE: 60        RTS



sub_81DF_set_facing_based_on_direction:
C - - - - - 0x0181EF 06:81DF: BC 2C 04  LDY ram_042C_plr_direction,X
C - - - - - 0x0181F2 06:81E2: B9 FE 81  LDA tbl_81FE_facing,Y
C - - - - - 0x0181F5 06:81E5: C9 FF     CMP #$FF
C - - - - - 0x0181F7 06:81E7: F0 02     BEQ bra_81EB_RTS
C - - - - - 0x0181F9 06:81E9: 95 63     STA ram_0063_obj_facing,X
bra_81EB_RTS:
C - - - - - 0x0181FB 06:81EB: 60        RTS



tbl_81EC_direction:
;     01
;   08  02
; 07  00  03
;   06  04
;     05
- D 0 - - - 0x0181FC 06:81EC: 00        .byte $00   ; 00 
- D 0 - - - 0x0181FD 06:81ED: 00        .byte $00   ; 01 
- D 0 - - - 0x0181FE 06:81EE: 20        .byte $20   ; 02 
- D 0 - - - 0x0181FF 06:81EF: 40        .byte $40   ; 03 
- D 0 - - - 0x018200 06:81F0: 60        .byte $60   ; 04 
- D 0 - - - 0x018201 06:81F1: 80        .byte $80   ; 05 
- D 0 - - - 0x018202 06:81F2: A0        .byte $A0   ; 06 
- D 0 - - - 0x018203 06:81F3: C0        .byte $C0   ; 07 
- D 0 - - - 0x018204 06:81F4: E0        .byte $E0   ; 08 



tbl_81F5_direction:
;     01
;   08  02
; 07  00  03
;   06  04
;     05
- D 0 - - - 0x018205 06:81F5: 00        .byte $00   ; 00 
- - - - - - 0x018206 06:81F6: 00        .byte $00   ; 01 
- D 0 - - - 0x018207 06:81F7: 40        .byte $40   ; 02 
- D 0 - - - 0x018208 06:81F8: 40        .byte $40   ; 03 
- D 0 - - - 0x018209 06:81F9: 40        .byte $40   ; 04 
- - - - - - 0x01820A 06:81FA: 00        .byte $00   ; 05 
- D 0 - - - 0x01820B 06:81FB: C0        .byte $C0   ; 06 
- D 0 - - - 0x01820C 06:81FC: C0        .byte $C0   ; 07 
- D 0 - - - 0x01820D 06:81FD: C0        .byte $C0   ; 08 



tbl_81FE_facing:
; 00 = facing right
; 80 = facing left
; FF = skip write
;     01
;   08  02
; 07  00  03
;   06  04
;     05
- D 0 - - - 0x01820E 06:81FE: FF        .byte $FF   ; 00 
- D 0 - - - 0x01820F 06:81FF: FF        .byte $FF   ; 01 
- D 0 - - - 0x018210 06:8200: 00        .byte $00   ; 02 
- D 0 - - - 0x018211 06:8201: 00        .byte $00   ; 03 
- D 0 - - - 0x018212 06:8202: 00        .byte $00   ; 04 
- D 0 - - - 0x018213 06:8203: FF        .byte $FF   ; 05 
- D 0 - - - 0x018214 06:8204: 80        .byte $80   ; 06 
- D 0 - - - 0x018215 06:8205: 80        .byte $80   ; 07 
- D 0 - - - 0x018216 06:8206: 80        .byte $80   ; 08 



ofs_009_8207_2D:
C - - J - - 0x018217 06:8207: BD 30 04  LDA ram_0430_plr,X
C - - - - - 0x01821A 06:820A: F0 20     BEQ bra_822C_RTS
C - - - - - 0x01821C 06:820C: DE 30 04  DEC ram_0430_plr,X
C - - - - - 0x01821F 06:820F: BD 2E 04  LDA ram_042E_plr_ab_buttons_copy,X
C - - - - - 0x018222 06:8212: 29 80     AND #con_btn_A
C - - - - - 0x018224 06:8214: F0 16     BEQ bra_822C_RTS
C - - - - - 0x018226 06:8216: B5 E2     LDA ram_btn_hold,X
C - - - - - 0x018228 06:8218: 29 C0     AND #con_btns_AB
C - - - - - 0x01822A 06:821A: C9 C0     CMP #con_btns_AB
C - - - - - 0x01822C 06:821C: D0 0E     BNE bra_822C_RTS
C - - - - - 0x01822E 06:821E: A0 06     LDY #con_state_jump_up
C - - - - - 0x018230 06:8220: B5 E2     LDA ram_btn_hold,X
C - - - - - 0x018232 06:8222: 29 03     AND #con_btn_Right + con_btn_Left
C - - - - - 0x018234 06:8224: F0 02     BEQ bra_8228
C - - - - - 0x018236 06:8226: A0 08     LDY #con_state_jump_foward_player
bra_8228:
C - - - - - 0x018238 06:8228: 98        TYA
C - - - - - 0x018239 06:8229: 20 CA 81  JSR sub_81CA_set_state___direction___facing
bra_822C_RTS:
C - - - - - 0x01823C 06:822C: 60        RTS



ofs_009_822D_31:
ofs_009_822D_33:
C - - J - - 0x01823D 06:822D: BD 30 04  LDA ram_0430_plr,X
C - - - - - 0x018240 06:8230: F0 20     BEQ bra_8252_RTS
C - - - - - 0x018242 06:8232: DE 30 04  DEC ram_0430_plr,X
C - - - - - 0x018245 06:8235: BD 2E 04  LDA ram_042E_plr_ab_buttons_copy,X
C - - - - - 0x018248 06:8238: 29 40     AND #con_btn_B
C - - - - - 0x01824A 06:823A: F0 16     BEQ bra_8252_RTS
C - - - - - 0x01824C 06:823C: B5 E2     LDA ram_btn_hold,X
C - - - - - 0x01824E 06:823E: 29 C0     AND #con_btns_AB
C - - - - - 0x018250 06:8240: C9 C0     CMP #con_btns_AB
C - - - - - 0x018252 06:8242: D0 0E     BNE bra_8252_RTS
C - - - - - 0x018254 06:8244: A0 06     LDY #con_state_jump_up
C - - - - - 0x018256 06:8246: B5 E2     LDA ram_btn_hold,X
C - - - - - 0x018258 06:8248: 29 03     AND #con_btn_Right + con_btn_Left
C - - - - - 0x01825A 06:824A: F0 02     BEQ bra_824E
C - - - - - 0x01825C 06:824C: A0 08     LDY #con_state_jump_foward_player
bra_824E:
C - - - - - 0x01825E 06:824E: 98        TYA
C - - - - - 0x01825F 06:824F: 20 CA 81  JSR sub_81CA_set_state___direction___facing
bra_8252_RTS:
C - - - - - 0x018262 06:8252: 60        RTS



ofs_009_8253_06_jump:
ofs_009_8253_08:
C - - J - - 0x018263 06:8253: 20 DF 81  JSR sub_81DF_set_facing_based_on_direction
C - - - - - 0x018266 06:8256: BD 2E 04  LDA ram_042E_plr_ab_buttons_copy,X
C - - - - - 0x018269 06:8259: 29 C0     AND #con_btns_AB
C - - - - - 0x01826B 06:825B: F0 1F     BEQ bra_827C_RTS
C - - - - - 0x01826D 06:825D: A0 35     LDY #con_state_35
C - - - - - 0x01826F 06:825F: BD 46 04  LDA ram_0446_obj,X
C - - - - - 0x018272 06:8262: 30 14     BMI bra_8278
; check height range for performing air spin
C - - - - - 0x018274 06:8264: BD 25 03  LDA ram_obj_gravity_hi,X
C - - - - - 0x018277 06:8267: AE 35 04  LDX ram_difficulty
C - - - - - 0x01827A 06:826A: DD 7D 82  CMP tbl_827D,X
C - - - - - 0x01827D 06:826D: F0 07     BEQ bra_8276
C - - - - - 0x01827F 06:826F: B0 07     BCS bra_8278
C - - - - - 0x018281 06:8271: DD 80 82  CMP tbl_8280,X
C - - - - - 0x018284 06:8274: 90 02     BCC bra_8278
bra_8276:
C - - - - - 0x018286 06:8276: A0 39     LDY #con_state_cyclone_kick
bra_8278:
C - - - - - 0x018288 06:8278: A6 3B     LDX ram_obj_index
C - - - - - 0x01828A 06:827A: 94 43     STY ram_state,X
bra_827C_RTS:
C - - - - - 0x01828C 06:827C: 60        RTS



tbl_827D:
; bzk optimize, same bytes
- D 0 - - - 0x01828D 06:827D: 02        .byte $02   ; 00 easy
- D 0 - - - 0x01828E 06:827E: 02        .byte $02   ; 01 normal
- D 0 - - - 0x01828F 06:827F: 02        .byte $02   ; 02 difficult



tbl_8280:
; bzk optimize, same bytes
- D 0 - - - 0x018290 06:8280: 01        .byte $01   ; 00 easy
- D 0 - - - 0x018291 06:8281: 01        .byte $01   ; 01 normal
- D 0 - - - 0x018292 06:8282: 01        .byte $01   ; 02 difficult



ofs_009_8283_12_land:
C - - J - - 0x018293 06:8283: 20 B7 81  JSR sub_81B7_set_direction___facing
C - - - - - 0x018296 06:8286: BD 46 04  LDA ram_0446_obj,X
C - - - - - 0x018299 06:8289: 30 39     BMI bra_82C4_RTS
C - - - - - 0x01829B 06:828B: BD 2E 04  LDA ram_042E_plr_ab_buttons_copy,X
C - - - - - 0x01829E 06:828E: 29 C0     AND #con_btns_AB
C - - - - - 0x0182A0 06:8290: F0 32     BEQ bra_82C4_RTS
C - - - - - 0x0182A2 06:8292: C9 C0     CMP #con_btns_AB
C - - - - - 0x0182A4 06:8294: F0 17     BEQ bra_82AD
C - - - - - 0x0182A6 06:8296: A0 3B     LDY #con_state_uppercut_sudden
C - - - - - 0x0182A8 06:8298: 0A        ASL
C - - - - - 0x0182A9 06:8299: 0A        ASL
C - - - - - 0x0182AA 06:829A: 90 10     BCC bra_82AC_RTS
C - - - - - 0x0182AC 06:829C: B5 55     LDA ram_obj_amim_dur,X
C - - - - - 0x0182AE 06:829E: AE 35 04  LDX ram_difficulty
C - - - - - 0x0182B1 06:82A1: DD C5 82  CMP tbl_82C5,X
C - - - - - 0x0182B4 06:82A4: F0 02     BEQ bra_82A8
C - - - - - 0x0182B6 06:82A6: B0 04     BCS bra_82AC_RTS
bra_82A8:
C - - - - - 0x0182B8 06:82A8: A6 3B     LDX ram_obj_index
C - - - - - 0x0182BA 06:82AA: 94 43     STY ram_state,X
bra_82AC_RTS:
C - - - - - 0x0182BC 06:82AC: 60        RTS
bra_82AD:
C - - - - - 0x0182BD 06:82AD: B5 E2     LDA ram_btn_hold,X
C - - - - - 0x0182BF 06:82AF: 29 03     AND #con_btn_Right + con_btn_Left
C - - - - - 0x0182C1 06:82B1: F0 11     BEQ bra_82C4_RTS
C - - - - - 0x0182C3 06:82B3: B5 55     LDA ram_obj_amim_dur,X
C - - - - - 0x0182C5 06:82B5: AE 35 04  LDX ram_difficulty
C - - - - - 0x0182C8 06:82B8: DD C8 82  CMP tbl_82C8,X
C - - - - - 0x0182CB 06:82BB: 90 07     BCC bra_82C4_RTS
C - - - - - 0x0182CD 06:82BD: A6 3B     LDX ram_obj_index
C - - - - - 0x0182CF 06:82BF: A9 3A     LDA #con_state_high_jump_kick
C - - - - - 0x0182D1 06:82C1: 20 CA 81  JSR sub_81CA_set_state___direction___facing
bra_82C4_RTS:
C - - - - - 0x0182D4 06:82C4: 60        RTS



tbl_82C5:
; bzk optimize, same bytes
- D 0 - - - 0x0182D5 06:82C5: 03        .byte $03   ; 00 easy
- D 0 - - - 0x0182D6 06:82C6: 03        .byte $03   ; 01 normal
- D 0 - - - 0x0182D7 06:82C7: 03        .byte $03   ; 02 difficult



tbl_82C8:
; bzk optimize, same bytes
- D 0 - - - 0x0182D8 06:82C8: 06        .byte $06   ; 00 easy
- D 0 - - - 0x0182D9 06:82C9: 06        .byte $06   ; 01 normal
- D 0 - - - 0x0182DA 06:82CA: 06        .byte $06   ; 02 difficult



ofs_009_82CB_57:
C - - J - - 0x0182DB 06:82CB: B5 E2     LDA ram_btn_hold,X
C - - - - - 0x0182DD 06:82CD: 29 0C     AND #con_btn_Down + con_btn_Up
C - - - - - 0x0182DF 06:82CF: D0 0F     BNE bra_82E0
C - - - - - 0x0182E1 06:82D1: A0 50     LDY #con_state_50
C - - - - - 0x0182E3 06:82D3: BD 2E 04  LDA ram_042E_plr_ab_buttons_copy,X
C - - - - - 0x0182E6 06:82D6: 29 C0     AND #con_btns_AB
C - - - - - 0x0182E8 06:82D8: F0 19     BEQ bra_82F3_RTS
C - - - - - 0x0182EA 06:82DA: 30 15     BMI bra_82F1_write_state
C - - - - - 0x0182EC 06:82DC: A0 4F     LDY #con_state_4F
C - - - - - 0x0182EE 06:82DE: D0 11     BNE bra_82F1_write_state    ; jmp
bra_82E0:
C - - - - - 0x0182F0 06:82E0: BD 2E 04  LDA ram_042E_plr_ab_buttons_copy,X
C - - - - - 0x0182F3 06:82E3: 29 C0     AND #con_btns_AB
C - - - - - 0x0182F5 06:82E5: F0 0C     BEQ bra_82F3_RTS
C - - - - - 0x0182F7 06:82E7: A0 51     LDY #con_state_51
C - - - - - 0x0182F9 06:82E9: B5 E2     LDA ram_btn_hold,X
C - - - - - 0x0182FB 06:82EB: 29 08     AND #con_btn_Up
C - - - - - 0x0182FD 06:82ED: D0 02     BNE bra_82F1_write_state
C - - - - - 0x0182FF 06:82EF: A0 52     LDY #con_state_52
bra_82F1_write_state:
C - - - - - 0x018301 06:82F1: 94 43     STY ram_state,X
bra_82F3_RTS:
C - - - - - 0x018303 06:82F3: 60        RTS



ofs_009_82F4_07_RTS:
ofs_009_82F4_11_RTS:
ofs_009_82F4_13_RTS:
ofs_009_82F4_14_RTS:
ofs_009_82F4_15_RTS:
ofs_009_82F4_16_RTS:
ofs_009_82F4_17_RTS:
ofs_009_82F4_18_RTS:
ofs_009_82F4_19_RTS:
ofs_009_82F4_1A_RTS:
ofs_009_82F4_1B_RTS:
ofs_009_82F4_1C_RTS:
ofs_009_82F4_1D_RTS:
ofs_009_82F4_1E_RTS:
ofs_009_82F4_1F_RTS:
ofs_009_82F4_20_RTS:
ofs_009_82F4_21_RTS:
ofs_009_82F4_22_RTS:
ofs_009_82F4_23_RTS:
C - - J - - 0x018304 06:82F4: 60        RTS



sub_82F5:
C - - - - - 0x018305 06:82F5: A6 3B     LDX ram_obj_index
C - - - - - 0x018307 06:82F7: A5 D0     LDA ram_obj_pos_X_lo_cam
C - - - - - 0x018309 06:82F9: 18        CLC
C - - - - - 0x01830A 06:82FA: 69 10     ADC #< $0010
C - - - - - 0x01830C 06:82FC: 85 29     STA ram_0029
C - - - - - 0x01830E 06:82FE: A5 D1     LDA ram_obj_pos_X_hi_cam
C - - - - - 0x018310 06:8300: 69 00     ADC #> $0010
C - - - - - 0x018312 06:8302: 85 2A     STA ram_002A
C - - - - - 0x018314 06:8304: A5 2A     LDA ram_002A
C - - - - - 0x018316 06:8306: D5 80     CMP ram_obj_pos_X_hi,X
C - - - - - 0x018318 06:8308: 90 10     BCC bra_831A
C - - - - - 0x01831A 06:830A: F0 06     BEQ bra_8312
bra_830C:
C - - - - - 0x01831C 06:830C: 20 A5 83  JSR sub_83A5
C - - - - - 0x01831F 06:830F: 4C 3D 83  JMP loc_833D
bra_8312:
C - - - - - 0x018322 06:8312: A5 29     LDA ram_0029
C - - - - - 0x018324 06:8314: D5 77     CMP ram_obj_pos_X_lo,X
C - - - - - 0x018326 06:8316: 90 02     BCC bra_831A
C - - - - - 0x018328 06:8318: D0 F2     BNE bra_830C
bra_831A:
C - - - - - 0x01832A 06:831A: A9 EF     LDA #< $00EF
C - - - - - 0x01832C 06:831C: 18        CLC
C - - - - - 0x01832D 06:831D: 65 D0     ADC ram_obj_pos_X_lo_cam
C - - - - - 0x01832F 06:831F: 85 29     STA ram_0029
C - - - - - 0x018331 06:8321: A5 D1     LDA ram_obj_pos_X_hi_cam
C - - - - - 0x018333 06:8323: 69 00     ADC #> $00EF
C - - - - - 0x018335 06:8325: 85 2A     STA ram_002A
C - - - - - 0x018337 06:8327: B5 80     LDA ram_obj_pos_X_hi,X
C - - - - - 0x018339 06:8329: C5 2A     CMP ram_002A
C - - - - - 0x01833B 06:832B: 90 10     BCC bra_833D
C - - - - - 0x01833D 06:832D: F0 06     BEQ bra_8335
bra_832F:
C - - - - - 0x01833F 06:832F: 20 B3 83  JSR sub_83B3
C - - - - - 0x018342 06:8332: 4C 3D 83  JMP loc_833D
bra_8335:
C - - - - - 0x018345 06:8335: B5 77     LDA ram_obj_pos_X_lo,X
C - - - - - 0x018347 06:8337: C5 29     CMP ram_0029
C - - - - - 0x018349 06:8339: 90 02     BCC bra_833D
C - - - - - 0x01834B 06:833B: D0 F2     BNE bra_832F
bra_833D:
loc_833D:
C D 0 - - - 0x01834D 06:833D: B5 92     LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01834F 06:833F: 18        CLC
C - - - - - 0x018350 06:8340: 75 AD     ADC ram_obj_pos_Z_lo,X
C - - - - - 0x018352 06:8342: 85 29     STA ram_0029
C - - - - - 0x018354 06:8344: B5 9B     LDA ram_obj_pos_Y_hi,X
C - - - - - 0x018356 06:8346: 75 B6     ADC ram_obj_pos_Z_hi,X
C - - - - - 0x018358 06:8348: 85 2A     STA ram_002A
C - - - - - 0x01835A 06:834A: B5 4A     LDA ram_004A_obj_flags,X
C - - - - - 0x01835C 06:834C: 29 C0     AND #con_004A_flag_stunned + con_004A_flag_knocked_down
C - - - - - 0x01835E 06:834E: F0 02     BEQ bra_8352
C - - - - - 0x018360 06:8350: D0 2D     BNE bra_837F    ; jmp
bra_8352:
C - - - - - 0x018362 06:8352: A5 D2     LDA ram_obj_pos_Y_lo_cam
C - - - - - 0x018364 06:8354: 18        CLC
C - - - - - 0x018365 06:8355: 69 BF     ADC #< $00BF
C - - - - - 0x018367 06:8357: 85 2B     STA ram_002B
C - - - - - 0x018369 06:8359: A5 D3     LDA ram_obj_pos_Y_hi_cam
C - - - - - 0x01836B 06:835B: 69 00     ADC #> $00BF
C - - - - - 0x01836D 06:835D: 85 2C     STA ram_002C
C - - - - - 0x01836F 06:835F: A5 2B     LDA ram_002B
C - - - - - 0x018371 06:8361: 38        SEC
C - - - - - 0x018372 06:8362: E5 29     SBC ram_0029
C - - - - - 0x018374 06:8364: 85 2D     STA ram_002D
C - - - - - 0x018376 06:8366: A5 2C     LDA ram_002C
C - - - - - 0x018378 06:8368: E5 2A     SBC ram_002A
C - - - - - 0x01837A 06:836A: 85 2E     STA ram_002E
C - - - - - 0x01837C 06:836C: B0 06     BCS bra_8374
C - - - - - 0x01837E 06:836E: 20 27 87  JSR sub_8727_eor_16_bit_2
C - - - - - 0x018381 06:8371: 20 C1 83  JSR sub_83C1
bra_8374:
C - - - - - 0x018384 06:8374: A0 34     LDY #$34
C - - - - - 0x018386 06:8376: BD 61 03  LDA ram_0361_obj,X
C - - - - - 0x018389 06:8379: 29 07     AND #$07
C - - - - - 0x01838B 06:837B: C9 07     CMP #con_0361_07
C - - - - - 0x01838D 06:837D: D0 02     BNE bra_8381
bra_837F:
C - - - - - 0x01838F 06:837F: A0 1F     LDY #$1F
bra_8381:
C - - - - - 0x018391 06:8381: 84 FC     STY ram_00FC
C - - - - - 0x018393 06:8383: 98        TYA
C - - - - - 0x018394 06:8384: 18        CLC
C - - - - - 0x018395 06:8385: 65 D2     ADC ram_obj_pos_Y_lo_cam
C - - - - - 0x018397 06:8387: 85 2B     STA ram_002B
C - - - - - 0x018399 06:8389: A5 D3     LDA ram_obj_pos_Y_hi_cam
C - - - - - 0x01839B 06:838B: 69 00     ADC #$00
C - - - - - 0x01839D 06:838D: 85 2C     STA ram_002C
C - - - - - 0x01839F 06:838F: A5 29     LDA ram_0029
C - - - - - 0x0183A1 06:8391: 38        SEC
C - - - - - 0x0183A2 06:8392: E5 2B     SBC ram_002B
C - - - - - 0x0183A4 06:8394: 85 2D     STA ram_002D
C - - - - - 0x0183A6 06:8396: A5 2A     LDA ram_002A
C - - - - - 0x0183A8 06:8398: E5 2C     SBC ram_002C
C - - - - - 0x0183AA 06:839A: 85 2E     STA ram_002E
C - - - - - 0x0183AC 06:839C: B0 06     BCS bra_83A4_RTS
C - - - - - 0x0183AE 06:839E: 20 27 87  JSR sub_8727_eor_16_bit_2
C - - - - - 0x0183B1 06:83A1: 20 E2 83  JSR sub_83E2
bra_83A4_RTS:
C - - - - - 0x0183B4 06:83A4: 60        RTS



sub_83A5:
C - - - - - 0x0183B5 06:83A5: A5 D0     LDA ram_obj_pos_X_lo_cam
C - - - - - 0x0183B7 06:83A7: 18        CLC
C - - - - - 0x0183B8 06:83A8: 69 10     ADC #< $0010
C - - - - - 0x0183BA 06:83AA: 95 77     STA ram_obj_pos_X_lo,X
C - - - - - 0x0183BC 06:83AC: A5 D1     LDA ram_obj_pos_X_hi_cam
C - - - - - 0x0183BE 06:83AE: 69 00     ADC #> $0010
C - - - - - 0x0183C0 06:83B0: 95 80     STA ram_obj_pos_X_hi,X
C - - - - - 0x0183C2 06:83B2: 60        RTS



sub_83B3:
C - - - - - 0x0183C3 06:83B3: A9 EF     LDA #< $00EF
C - - - - - 0x0183C5 06:83B5: 18        CLC
C - - - - - 0x0183C6 06:83B6: 65 D0     ADC ram_obj_pos_X_lo_cam
C - - - - - 0x0183C8 06:83B8: 95 77     STA ram_obj_pos_X_lo,X
C - - - - - 0x0183CA 06:83BA: A5 D1     LDA ram_obj_pos_X_hi_cam
C - - - - - 0x0183CC 06:83BC: 69 00     ADC #> $00EF
C - - - - - 0x0183CE 06:83BE: 95 80     STA ram_obj_pos_X_hi,X
C - - - - - 0x0183D0 06:83C0: 60        RTS



sub_83C1:
C - - - - - 0x0183D1 06:83C1: BD 69 03  LDA ram_0369_obj,X
C - - - - - 0x0183D4 06:83C4: 10 0E     BPL bra_83D4
C - - - - - 0x0183D6 06:83C6: B5 AD     LDA ram_obj_pos_Z_lo,X
C - - - - - 0x0183D8 06:83C8: 38        SEC
C - - - - - 0x0183D9 06:83C9: E5 2D     SBC ram_002D
C - - - - - 0x0183DB 06:83CB: 95 AD     STA ram_obj_pos_Z_lo,X
C - - - - - 0x0183DD 06:83CD: B5 B6     LDA ram_obj_pos_Z_hi,X
C - - - - - 0x0183DF 06:83CF: E5 2E     SBC ram_002E
C - - - - - 0x0183E1 06:83D1: 95 B6     STA ram_obj_pos_Z_hi,X
C - - - - - 0x0183E3 06:83D3: 60        RTS
bra_83D4:
C - - - - - 0x0183E4 06:83D4: B5 92     LDA ram_obj_pos_Y_lo,X
C - - - - - 0x0183E6 06:83D6: 38        SEC
C - - - - - 0x0183E7 06:83D7: E5 2D     SBC ram_002D
C - - - - - 0x0183E9 06:83D9: 95 92     STA ram_obj_pos_Y_lo,X
C - - - - - 0x0183EB 06:83DB: B5 9B     LDA ram_obj_pos_Y_hi,X
C - - - - - 0x0183ED 06:83DD: E5 2E     SBC ram_002E
C - - - - - 0x0183EF 06:83DF: 95 9B     STA ram_obj_pos_Y_hi,X
C - - - - - 0x0183F1 06:83E1: 60        RTS



sub_83E2:
C - - - - - 0x0183F2 06:83E2: A5 FC     LDA ram_00FC
C - - - - - 0x0183F4 06:83E4: C9 1F     CMP #$1F
C - - - - - 0x0183F6 06:83E6: F0 2F     BEQ bra_8417
C - - - - - 0x0183F8 06:83E8: BD 61 03  LDA ram_0361_obj,X
C - - - - - 0x0183FB 06:83EB: 29 07     AND #$07
C - - - - - 0x0183FD 06:83ED: C9 07     CMP #con_0361_07
C - - - - - 0x0183FF 06:83EF: F0 26     BEQ bra_8417
C - - - - - 0x018401 06:83F1: BD 69 03  LDA ram_0369_obj,X
C - - - - - 0x018404 06:83F4: 10 0E     BPL bra_8404
C - - - - - 0x018406 06:83F6: B5 AD     LDA ram_obj_pos_Z_lo,X
C - - - - - 0x018408 06:83F8: 18        CLC
C - - - - - 0x018409 06:83F9: 65 2D     ADC ram_002D
C - - - - - 0x01840B 06:83FB: 95 AD     STA ram_obj_pos_Z_lo,X
C - - - - - 0x01840D 06:83FD: B5 B6     LDA ram_obj_pos_Z_hi,X
C - - - - - 0x01840F 06:83FF: 65 2E     ADC ram_002E
C - - - - - 0x018411 06:8401: 95 B6     STA ram_obj_pos_Z_hi,X
C - - - - - 0x018413 06:8403: 60        RTS
bra_8404:
C - - - - - 0x018414 06:8404: B5 92     LDA ram_obj_pos_Y_lo,X
C - - - - - 0x018416 06:8406: 18        CLC
C - - - - - 0x018417 06:8407: 65 2D     ADC ram_002D
C - - - - - 0x018419 06:8409: 95 92     STA ram_obj_pos_Y_lo,X
C - - - - - 0x01841B 06:840B: B5 9B     LDA ram_obj_pos_Y_hi,X
C - - - - - 0x01841D 06:840D: 65 2E     ADC ram_002E
C - - - - - 0x01841F 06:840F: 95 9B     STA ram_obj_pos_Y_hi,X
C - - - - - 0x018421 06:8411: A9 00     LDA #$00
C - - - - - 0x018423 06:8413: 9D 0F 03  STA ram_obj_direction,X
C - - - - - 0x018426 06:8416: 60        RTS
bra_8417:
C - - - - - 0x018427 06:8417: A9 00     LDA #$00    ; con_003C_flag_00
C - - - - - 0x018429 06:8419: 95 3C     STA ram_003C_obj_flags,X ; 003C
C - - - - - 0x01842B 06:841B: 9D 1E 04  STA ram_hp,X
C - - - - - 0x01842E 06:841E: 20 22 84  JSR sub_8422
C - - - - - 0x018431 06:8421: 60        RTS



sub_8422:
C - - - - - 0x018432 06:8422: BD 32 04  LDA ram_lives,X
C - - - - - 0x018435 06:8425: F0 03     BEQ bra_842A_RTS
C - - - - - 0x018437 06:8427: DE 32 04  DEC ram_lives,X
bra_842A_RTS:
C - - - - - 0x01843A 06:842A: 60        RTS



sub_842B:
C - - - - - 0x01843B 06:842B: BD 2E 04  LDA ram_042E_plr_ab_buttons_copy,X
C - - - - - 0x01843E 06:842E: 29 C0     AND #con_btns_AB
C - - - - - 0x018440 06:8430: D0 03     BNE bra_8435
; if neither A nor B were pressed
C - - - - - 0x018442 06:8432: 4C B7 84  JMP loc_84B7
bra_8435:
; if A or B was pressed
C - - - - - 0x018445 06:8435: C9 C0     CMP #con_btns_AB
C - - - - - 0x018447 06:8437: D0 23     BNE bra_845C
; if both A and B were pressed
C - - - - - 0x018449 06:8439: BD 2C 04  LDA ram_042C_plr_direction,X
C - - - - - 0x01844C 06:843C: C9 05     CMP #$05    ; down
C - - - - - 0x01844E 06:843E: F0 0C     BEQ bra_844C
C - - - - - 0x018450 06:8440: C9 01     CMP #$01    ; up
C - - - - - 0x018452 06:8442: F0 08     BEQ bra_844C
C - - - - - 0x018454 06:8444: B5 43     LDA ram_state,X
C - - - - - 0x018456 06:8446: 29 7F     AND #$7F
C - - - - - 0x018458 06:8448: C9 00     CMP #con_state_idle
C - - - - - 0x01845A 06:844A: D0 0A     BNE bra_8456
bra_844C:
C - - - - - 0x01845C 06:844C: A9 06     LDA #con_state_jump_up
C - - - - - 0x01845E 06:844E: 95 43     STA ram_state,X
C - - - - - 0x018460 06:8450: A9 00     LDA #$00
C - - - - - 0x018462 06:8452: 9D 0F 03  STA ram_obj_direction,X
C - - - - - 0x018465 06:8455: 60        RTS
bra_8456:
C - - - - - 0x018466 06:8456: A9 08     LDA #con_state_jump_foward_player
C - - - - - 0x018468 06:8458: 20 CA 81  JSR sub_81CA_set_state___direction___facing
C - - - - - 0x01846B 06:845B: 60        RTS
bra_845C:
; if A or B was pressed, but not both of them
C - - - - - 0x01846C 06:845C: 0A        ASL
C - - - - - 0x01846D 06:845D: 90 20     BCC bra_847F
; if A was pressed
C - - - - - 0x01846F 06:845F: 20 C6 84  JSR sub_84C6_check_for_weapon_to_pick_up
C - - - - - 0x018472 06:8462: A0 11     LDY #con_state_pick_up_weapon
C - - - - - 0x018474 06:8464: B0 49     BCS bra_84AF_write_state
C - - - - - 0x018476 06:8466: 20 87 85  JSR sub_8587_check_for_final_kick
C - - - - - 0x018479 06:8469: A0 31     LDY #con_state_31
C - - - - - 0x01847B 06:846B: B0 42     BCS bra_84AF_write_state
C - - - - - 0x01847D 06:846D: A0 33     LDY #con_state_33
C - - - - - 0x01847F 06:846F: BD 46 04  LDA ram_0446_obj,X
C - - - - - 0x018482 06:8472: 10 3B     BPL bra_84AF_write_state
C - - - - - 0x018484 06:8474: 29 0F     AND #$0F
C - - - - - 0x018486 06:8476: C9 04     CMP #$04
C - - - - - 0x018488 06:8478: D0 35     BNE bra_84AF_write_state
C - - - - - 0x01848A 06:847A: A0 42     LDY #con_state_42
C - - - - - 0x01848C 06:847C: 4C AF 84  JMP loc_84AF_write_state
bra_847F:
; if B was pressed
C - - - - - 0x01848F 06:847F: 20 C6 84  JSR sub_84C6_check_for_weapon_to_pick_up
C - - - - - 0x018492 06:8482: A0 11     LDY #con_state_pick_up_weapon
C - - - - - 0x018494 06:8484: B0 29     BCS bra_84AF_write_state
C - - - - - 0x018496 06:8486: 20 3C 85  JSR sub_853C_check_for_uppercut
C - - - - - 0x018499 06:8489: A0 2F     LDY #con_state_uppercut_normal
C - - - - - 0x01849B 06:848B: B0 22     BCS bra_84AF_write_state
C - - - - - 0x01849D 06:848D: 20 64 85  JSR sub_8564_check_for_knee_kick
C - - - - - 0x0184A0 06:8490: A0 30     LDY #con_state_30
C - - - - - 0x0184A2 06:8492: B0 1B     BCS bra_84AF_write_state
C - - - - - 0x0184A4 06:8494: A0 2D     LDY #con_state_punch_normal
C - - - - - 0x0184A6 06:8496: BD 46 04  LDA ram_0446_obj,X
C - - - - - 0x0184A9 06:8499: 10 14     BPL bra_84AF_write_state
C - - - - - 0x0184AB 06:849B: A0 42     LDY #con_state_42
C - - - - - 0x0184AD 06:849D: 29 7F     AND #$7F
C - - - - - 0x0184AF 06:849F: AA        TAX
C - - - - - 0x0184B0 06:84A0: BD C0 84  LDA tbl_84C0_throwable_weapons,X
C - - - - - 0x0184B3 06:84A3: 10 08     BPL bra_84AD
C - - - - - 0x0184B5 06:84A5: A0 43     LDY #con_state_43
C - - - - - 0x0184B7 06:84A7: E0 02     CPX #$02
C - - - - - 0x0184B9 06:84A9: D0 02     BNE bra_84AD
C - - - - - 0x0184BB 06:84AB: A0 45     LDY #con_state_45
bra_84AD:
C - - - - - 0x0184BD 06:84AD: A6 3B     LDX ram_obj_index
bra_84AF_write_state:
loc_84AF_write_state:
C D 0 - - - 0x0184BF 06:84AF: 94 43     STY ram_state,X
C - - - - - 0x0184C1 06:84B1: A9 05     LDA #$05
C - - - - - 0x0184C3 06:84B3: 9D 30 04  STA ram_0430_plr,X
C - - - - - 0x0184C6 06:84B6: 60        RTS
loc_84B7:
; if neither A nor B were pressed
C D 0 - - - 0x0184C7 06:84B7: BD 2C 04  LDA ram_042C_plr_direction,X
C - - - - - 0x0184CA 06:84BA: F0 03     BEQ bra_84BF_RTS
C - - - - - 0x0184CC 06:84BC: 20 AA 85  JSR sub_85AA
bra_84BF_RTS:
C - - - - - 0x0184CF 06:84BF: 60        RTS



tbl_84C0_throwable_weapons:
- D 0 - - - 0x0184D0 06:84C0: 00        .byte $00   ; 00 
- D 0 - - - 0x0184D1 06:84C1: 00        .byte $00   ; 01 
- D 0 - - - 0x0184D2 06:84C2: 80        .byte $80   ; 02 
- D 0 - - - 0x0184D3 06:84C3: 00        .byte $00   ; 03 
- D 0 - - - 0x0184D4 06:84C4: 80        .byte $80   ; 04 
- - - - - - 0x0184D5 06:84C5: 00        .byte $00   ; 05 



sub_84C6_check_for_weapon_to_pick_up:
C - - - - - 0x0184D6 06:84C6: BD 46 04  LDA ram_0446_obj,X
C - - - - - 0x0184D9 06:84C9: 30 4F     BMI bra_851A
C - - - - - 0x0184DB 06:84CB: A9 04     LDA #$04
C - - - - - 0x0184DD 06:84CD: 85 19     STA ram_0019
bra_84CF_loop:
C - - - - - 0x0184DF 06:84CF: A4 19     LDY ram_0019
C - - - - - 0x0184E1 06:84D1: 20 F9 85  JSR sub_85F9
C - - - - - 0x0184E4 06:84D4: 90 3C     BCC bra_8512
C - - - - - 0x0184E6 06:84D6: A4 19     LDY ram_0019
C - - - - - 0x0184E8 06:84D8: B9 43 00  LDA a: ram_state,Y
C - - - - - 0x0184EB 06:84DB: 29 7F     AND #$7F
C - - - - - 0x0184ED 06:84DD: C9 65     CMP #con_state_weapon_on_the_ground
C - - - - - 0x0184EF 06:84DF: D0 31     BNE bra_8512
C - - - - - 0x0184F1 06:84E1: B9 BF 00  LDA a: ram_obj_id,Y
C - - - - - 0x0184F4 06:84E4: C9 18     CMP #con_obj_18
C - - - - - 0x0184F6 06:84E6: F0 2A     BEQ bra_8512
C - - - - - 0x0184F8 06:84E8: B9 4A 00  LDA a: ram_004A_obj_flags,Y
C - - - - - 0x0184FB 06:84EB: 29 20     AND #con_004A_flag_20
C - - - - - 0x0184FD 06:84ED: D0 23     BNE bra_8512
C - - - - - 0x0184FF 06:84EF: A9 04     LDA #con_8648 + $04
C - - - - - 0x018501 06:84F1: 20 48 86  JSR sub_8648_check_hitbox
C - - - - - 0x018504 06:84F4: B0 07     BCS bra_84FD
C - - - - - 0x018506 06:84F6: A9 05     LDA #con_8648 + $05
C - - - - - 0x018508 06:84F8: 20 48 86  JSR sub_8648_check_hitbox
C - - - - - 0x01850B 06:84FB: 90 15     BCC bra_8512
bra_84FD:
C - - - - - 0x01850D 06:84FD: A4 19     LDY ram_0019
C - - - - - 0x01850F 06:84FF: 98        TYA
C - - - - - 0x018510 06:8500: 9D 4A 04  STA ram_044A_obj,X
C - - - - - 0x018513 06:8503: B9 BF 00  LDA a: ram_obj_id,Y
C - - - - - 0x018516 06:8506: 9D 46 04  STA ram_0446_obj,X
C - - - - - 0x018519 06:8509: A8        TAY
C - - - - - 0x01851A 06:850A: B9 1C 85  LDA tbl_851C_weapons,Y
C - - - - - 0x01851D 06:850D: 9D 46 04  STA ram_0446_obj,X
C - - - - - 0x018520 06:8510: 38        SEC
C - - - - - 0x018521 06:8511: 60        RTS
bra_8512:
C - - - - - 0x018522 06:8512: E6 19     INC ram_0019
C - - - - - 0x018524 06:8514: A5 19     LDA ram_0019
C - - - - - 0x018526 06:8516: C9 07     CMP #$07
C - - - - - 0x018528 06:8518: 90 B5     BCC bra_84CF_loop
bra_851A:
C - - - - - 0x01852A 06:851A: 18        CLC
C - - - - - 0x01852B 06:851B: 60        RTS



tbl_851C_weapons:
- - - - - - 0x01852C 06:851C: 00        .byte $00   ; 00 con_obj_billy
- - - - - - 0x01852D 06:851D: 00        .byte $00   ; 01 con_obj_jimmy
- - - - - - 0x01852E 06:851E: 00        .byte $00   ; 02 con_obj_williams
- - - - - - 0x01852F 06:851F: 00        .byte $00   ; 03 con_obj_roper
- - - - - - 0x018530 06:8520: 00        .byte $00   ; 04 con_obj_linda
- - - - - - 0x018531 06:8521: 00        .byte $00   ; 05 con_obj_05
- - - - - - 0x018532 06:8522: 00        .byte $00   ; 06 con_obj_bolo
- - - - - - 0x018533 06:8523: 00        .byte $00   ; 07 con_obj_burnov
- - - - - - 0x018534 06:8524: 00        .byte $00   ; 08 con_obj_abore
- - - - - - 0x018535 06:8525: 00        .byte $00   ; 09 con_obj_chin_taimei
- - - - - - 0x018536 06:8526: 00        .byte $00   ; 0A con_obj_right_arm
- - - - - - 0x018537 06:8527: 00        .byte $00   ; 0B con_obj_0B
- - - - - - 0x018538 06:8528: 00        .byte $00   ; 0C con_obj_doppelganger
- - - - - - 0x018539 06:8529: 00        .byte $00   ; 0D con_obj_0D
- - - - - - 0x01853A 06:852A: 00        .byte $00   ; 0E con_obj_0E
- - - - - - 0x01853B 06:852B: 00        .byte $00   ; 0F con_obj_ninja
- - - - - - 0x01853C 06:852C: 00        .byte $00   ; 10 con_obj_10
- - - - - - 0x01853D 06:852D: 00        .byte $00   ; 11 con_obj_shadow_warrior
- D 0 - - - 0x01853E 06:852E: 00        .byte $00   ; 12 con_obj_knife
- - - - - - 0x01853F 06:852F: 00        .byte $00   ; 13 con_obj_13
- D 0 - - - 0x018540 06:8530: 01        .byte $01   ; 14 con_obj_grenade
- D 0 - - - 0x018541 06:8531: 02        .byte $02   ; 15 con_obj_chain_whip
- D 0 - - - 0x018542 06:8532: 03        .byte $03   ; 16 con_obj_flame_grenades
- D 0 - - - 0x018543 06:8533: 04        .byte $04   ; 17 con_obj_baton
- - - - - - 0x018544 06:8534: 00        .byte $00   ; 18 con_obj_18
- - - - - - 0x018545 06:8535: 00        .byte $00   ; 19 con_obj_19
- D 0 - - - 0x018546 06:8536: 05        .byte $05   ; 1A con_obj_boomerang
- - - - - - 0x018547 06:8537: 00        .byte $00   ; 1B con_obj_jumping_spike
- - - - - - 0x018548 06:8538: 00        .byte $00   ; 1C con_obj_fireball
- - - - - - 0x018549 06:8539: 00        .byte $00   ; 1D con_obj_1D
- - - - - - 0x01854A 06:853A: 00        .byte $00   ; 1E con_obj_symbol_II


; bzk garbage
- - - - - - 0x01854B 06:853B: 00        .byte $00   ; 1F



sub_853C_check_for_uppercut:
C - - - - - 0x01854C 06:853C: BD 46 04  LDA ram_0446_obj,X
C - - - - - 0x01854F 06:853F: 30 21     BMI bra_8562
C - - - - - 0x018551 06:8541: A9 00     LDA #$00
C - - - - - 0x018553 06:8543: 85 19     STA ram_0019
bra_8545_loop:
C - - - - - 0x018555 06:8545: A4 19     LDY ram_0019
C - - - - - 0x018557 06:8547: 20 F9 85  JSR sub_85F9
C - - - - - 0x01855A 06:854A: 90 0E     BCC bra_855A
C - - - - - 0x01855C 06:854C: 20 2A 86  JSR sub_862A_check_for_collapse_state
C - - - - - 0x01855F 06:854F: 90 09     BCC bra_855A
C - - - - - 0x018561 06:8551: A9 01     LDA #con_8648 + $01
C - - - - - 0x018563 06:8553: 20 48 86  JSR sub_8648_check_hitbox
C - - - - - 0x018566 06:8556: 90 02     BCC bra_855A
C - - - - - 0x018568 06:8558: 38        SEC
C - - - - - 0x018569 06:8559: 60        RTS
bra_855A:
C - - - - - 0x01856A 06:855A: E6 19     INC ram_0019
C - - - - - 0x01856C 06:855C: A5 19     LDA ram_0019
C - - - - - 0x01856E 06:855E: C9 04     CMP #$04
C - - - - - 0x018570 06:8560: 90 E3     BCC bra_8545_loop
bra_8562:
C - - - - - 0x018572 06:8562: 18        CLC
C - - - - - 0x018573 06:8563: 60        RTS



sub_8564_check_for_knee_kick:
; enemy should be getting up and player must be close to him
C - - - - - 0x018574 06:8564: A9 00     LDA #$00
C - - - - - 0x018576 06:8566: 85 19     STA ram_0019
bra_8568_loop:
C - - - - - 0x018578 06:8568: A4 19     LDY ram_0019
C - - - - - 0x01857A 06:856A: 20 F9 85  JSR sub_85F9
C - - - - - 0x01857D 06:856D: 90 0E     BCC bra_857D
C - - - - - 0x01857F 06:856F: 20 3B 86  JSR sub_863B
C - - - - - 0x018582 06:8572: 90 09     BCC bra_857D
C - - - - - 0x018584 06:8574: A9 00     LDA #con_8648 + $00
C - - - - - 0x018586 06:8576: 20 48 86  JSR sub_8648_check_hitbox
C - - - - - 0x018589 06:8579: 90 02     BCC bra_857D
C - - - - - 0x01858B 06:857B: 38        SEC
C - - - - - 0x01858C 06:857C: 60        RTS
bra_857D:
C - - - - - 0x01858D 06:857D: E6 19     INC ram_0019
C - - - - - 0x01858F 06:857F: A5 19     LDA ram_0019
C - - - - - 0x018591 06:8581: C9 04     CMP #$04
C - - - - - 0x018593 06:8583: 90 E3     BCC bra_8568_loop
C - - - - - 0x018595 06:8585: 18        CLC
C - - - - - 0x018596 06:8586: 60        RTS



sub_8587_check_for_final_kick:
C - - - - - 0x018597 06:8587: A9 00     LDA #$00
C - - - - - 0x018599 06:8589: 85 19     STA ram_0019
bra_858B_loop:
C - - - - - 0x01859B 06:858B: A4 19     LDY ram_0019
C - - - - - 0x01859D 06:858D: 20 F9 85  JSR sub_85F9
C - - - - - 0x0185A0 06:8590: 90 0E     BCC bra_85A0
C - - - - - 0x0185A2 06:8592: 20 2A 86  JSR sub_862A_check_for_collapse_state
C - - - - - 0x0185A5 06:8595: 90 09     BCC bra_85A0
C - - - - - 0x0185A7 06:8597: A9 02     LDA #con_8648 + $02
C - - - - - 0x0185A9 06:8599: 20 48 86  JSR sub_8648_check_hitbox
C - - - - - 0x0185AC 06:859C: 90 02     BCC bra_85A0
C - - - - - 0x0185AE 06:859E: 38        SEC
C - - - - - 0x0185AF 06:859F: 60        RTS
bra_85A0:
C - - - - - 0x0185B0 06:85A0: E6 19     INC ram_0019
C - - - - - 0x0185B2 06:85A2: A5 19     LDA ram_0019
C - - - - - 0x0185B4 06:85A4: C9 04     CMP #$04
C - - - - - 0x0185B6 06:85A6: 90 E3     BCC bra_858B_loop
C - - - - - 0x0185B8 06:85A8: 18        CLC
C - - - - - 0x0185B9 06:85A9: 60        RTS



sub_85AA:
C - - - - - 0x0185BA 06:85AA: BD 2C 04  LDA ram_042C_plr_direction,X
C - - - - - 0x0185BD 06:85AD: C9 01     CMP #$01    ; up
C - - - - - 0x0185BF 06:85AF: F0 46     BEQ bra_85F7
C - - - - - 0x0185C1 06:85B1: C9 05     CMP #$05    ; down
C - - - - - 0x0185C3 06:85B3: F0 42     BEQ bra_85F7
C - - - - - 0x0185C5 06:85B5: BD 46 04  LDA ram_0446_obj,X
C - - - - - 0x0185C8 06:85B8: 30 3D     BMI bra_85F7
C - - - - - 0x0185CA 06:85BA: A9 02     LDA #$02
C - - - - - 0x0185CC 06:85BC: 85 19     STA ram_0019
bra_85BE_loop:
C - - - - - 0x0185CE 06:85BE: A4 19     LDY ram_0019
C - - - - - 0x0185D0 06:85C0: 20 F9 85  JSR sub_85F9
C - - - - - 0x0185D3 06:85C3: 90 2A     BCC bra_85EF
C - - - - - 0x0185D5 06:85C5: B9 4A 00  LDA a: ram_004A_obj_flags,Y
C - - - - - 0x0185D8 06:85C8: 30 25     BMI bra_85EF    ; if con_004A_flag_knocked_down
C - - - - - 0x0185DA 06:85CA: B9 43 00  LDA a: ram_state,Y
C - - - - - 0x0185DD 06:85CD: 29 7F     AND #$7F
C - - - - - 0x0185DF 06:85CF: C9 19     CMP #con_state_lie_on_the_ground
C - - - - - 0x0185E1 06:85D1: F0 1C     BEQ bra_85EF
C - - - - - 0x0185E3 06:85D3: 20 0A 86  JSR sub_860A
C - - - - - 0x0185E6 06:85D6: F0 17     BEQ bra_85EF
C - - - - - 0x0185E8 06:85D8: 20 2A 86  JSR sub_862A_check_for_collapse_state
C - - - - - 0x0185EB 06:85DB: 90 12     BCC bra_85EF
C - - - - - 0x0185ED 06:85DD: A9 03     LDA #con_8648 + $03
C - - - - - 0x0185EF 06:85DF: 20 48 86  JSR sub_8648_check_hitbox
C - - - - - 0x0185F2 06:85E2: 90 0B     BCC bra_85EF
C - - - - - 0x0185F4 06:85E4: A9 4E     LDA #con_state_4E
C - - - - - 0x0185F6 06:85E6: 95 43     STA ram_state,X
C - - - - - 0x0185F8 06:85E8: A5 19     LDA ram_0019
C - - - - - 0x0185FA 06:85EA: 9D 4A 04  STA ram_044A_obj,X
C - - - - - 0x0185FD 06:85ED: 38        SEC
C - - - - - 0x0185FE 06:85EE: 60        RTS
bra_85EF:
C - - - - - 0x0185FF 06:85EF: E6 19     INC ram_0019
C - - - - - 0x018601 06:85F1: A5 19     LDA ram_0019
C - - - - - 0x018603 06:85F3: C9 04     CMP #$04
C - - - - - 0x018605 06:85F5: 90 C7     BCC bra_85BE_loop
bra_85F7:
C - - - - - 0x018607 06:85F7: 18        CLC
C - - - - - 0x018608 06:85F8: 60        RTS



sub_85F9:
C - - - - - 0x018609 06:85F9: C4 3B     CPY ram_obj_index
C - - - - - 0x01860B 06:85FB: F0 0B     BEQ bra_8608
C - - - - - 0x01860D 06:85FD: B9 3C 00  LDA a: ram_003C_obj_flags,Y ; 003C 003D 003E 003F 0040 0041 0042
C - - - - - 0x018610 06:8600: 29 C0     AND #con_003C_flag_exist + con_003C_flag_40
C - - - - - 0x018612 06:8602: C9 80     CMP #con_003C_flag_exist
C - - - - - 0x018614 06:8604: D0 02     BNE bra_8608
C - - - - - 0x018616 06:8606: 38        SEC
C - - - - - 0x018617 06:8607: 60        RTS
bra_8608:
C - - - - - 0x018618 06:8608: 18        CLC
C - - - - - 0x018619 06:8609: 60        RTS



sub_860A:
C - - - - - 0x01861A 06:860A: B9 BF 00  LDA a: ram_obj_id,Y
C - - - - - 0x01861D 06:860D: 29 1F     AND #$1F
C - - - - - 0x01861F 06:860F: AA        TAX
C - - - - - 0x018620 06:8610: BD 18 86  LDA tbl_8618,X
C - - - - - 0x018623 06:8613: A6 3B     LDX ram_obj_index
C - - - - - 0x018625 06:8615: 29 FF     AND #$FF
C - - - - - 0x018627 06:8617: 60        RTS



tbl_8618:
- D 0 - - - 0x018628 06:8618: 00        .byte $00   ; 00 con_obj_billy
- - - - - - 0x018629 06:8619: 00        .byte $00   ; 01 con_obj_jimmy
- D 0 - - - 0x01862A 06:861A: 01        .byte $01   ; 02 con_obj_williams
- D 0 - - - 0x01862B 06:861B: 01        .byte $01   ; 03 con_obj_roper
- D 0 - - - 0x01862C 06:861C: 01        .byte $01   ; 04 con_obj_linda
- - - - - - 0x01862D 06:861D: 00        .byte $00   ; 05 con_obj_05
- D 0 - - - 0x01862E 06:861E: 00        .byte $00   ; 06 con_obj_bolo
- D 0 - - - 0x01862F 06:861F: 00        .byte $00   ; 07 con_obj_burnov
- D 0 - - - 0x018630 06:8620: 00        .byte $00   ; 08 con_obj_abore
- D 0 - - - 0x018631 06:8621: 00        .byte $00   ; 09 con_obj_chin_taimei
- D 0 - - - 0x018632 06:8622: 01        .byte $01   ; 0A con_obj_right_arm
- - - - - - 0x018633 06:8623: 01        .byte $01   ; 0B con_obj_0B
- D 0 - - - 0x018634 06:8624: 01        .byte $01   ; 0C con_obj_doppelganger
- - - - - - 0x018635 06:8625: 01        .byte $01   ; 0D con_obj_0D
- - - - - - 0x018636 06:8626: 01        .byte $01   ; 0E con_obj_0E
- D 0 - - - 0x018637 06:8627: 00        .byte $00   ; 0F con_obj_ninja
- - - - - - 0x018638 06:8628: 00        .byte $00   ; 10 con_obj_10
- D 0 - - - 0x018639 06:8629: 00        .byte $00   ; 11 con_obj_shadow_warrior



sub_862A_check_for_collapse_state:
C - - - - - 0x01863A 06:862A: B9 43 00  LDA a: ram_state,Y
C - - - - - 0x01863D 06:862D: 29 7F     AND #$7F
C - - - - - 0x01863F 06:862F: C9 16     CMP #$16
C - - - - - 0x018641 06:8631: 90 06     BCC bra_8639
C - - - - - 0x018643 06:8633: C9 19     CMP #$19
C - - - - - 0x018645 06:8635: B0 02     BCS bra_8639
; con_state_16
; con_state_17
; con_state_18
C - - - - - 0x018647 06:8637: 38        SEC
C - - - - - 0x018648 06:8638: 60        RTS
bra_8639:
C - - - - - 0x018649 06:8639: 18        CLC
C - - - - - 0x01864A 06:863A: 60        RTS



sub_863B:
C - - - - - 0x01864B 06:863B: B9 43 00  LDA a: ram_state,Y
C - - - - - 0x01864E 06:863E: 29 7F     AND #$7F
C - - - - - 0x018650 06:8640: C9 12     CMP #con_state_land_after_jump
C - - - - - 0x018652 06:8642: D0 02     BNE bra_8646
C - - - - - 0x018654 06:8644: 38        SEC
C - - - - - 0x018655 06:8645: 60        RTS
bra_8646:
C - - - - - 0x018656 06:8646: 18        CLC
C - - - - - 0x018657 06:8647: 60        RTS



sub_8648_check_hitbox:
; see con_8648
; bzk optimize, prepare proper bytes for Y instead of ASL ASL TAY
C - - - - - 0x018658 06:8648: 0A        ASL
C - - - - - 0x018659 06:8649: 0A        ASL
C - - - - - 0x01865A 06:864A: A8        TAY
C - - - - - 0x01865B 06:864B: B9 63 86  LDA tbl_8663,Y
C - - - - - 0x01865E 06:864E: 85 1A     STA ram_001A
C - - - - - 0x018660 06:8650: B9 64 86  LDA tbl_8663 + $01,Y
C - - - - - 0x018663 06:8653: 85 1B     STA ram_001B
C - - - - - 0x018665 06:8655: B9 65 86  LDA tbl_8663 + $02,Y
C - - - - - 0x018668 06:8658: 85 1C     STA ram_001C
C - - - - - 0x01866A 06:865A: B9 66 86  LDA tbl_8663 + $03,Y
C - - - - - 0x01866D 06:865D: 85 1D     STA ram_001D
C - - - - - 0x01866F 06:865F: 20 7B 86  JSR sub_867B
C - - - - - 0x018672 06:8662: 60        RTS



tbl_8663:
; see con_8648
; 00 
- D 0 - - - 0x018673 06:8663: 10        .byte $10   ; 
- D 0 - - - 0x018674 06:8664: 04        .byte $04   ; 
- D 0 - - - 0x018675 06:8665: 00        .byte $00   ; 
- D 0 - - - 0x018676 06:8666: 00        .byte $00   ; 
; 01 
- D 0 - - - 0x018677 06:8667: 20        .byte $20   ; 
- D 0 - - - 0x018678 06:8668: 04        .byte $04   ; 
- D 0 - - - 0x018679 06:8669: 00        .byte $00   ; 
- D 0 - - - 0x01867A 06:866A: 00        .byte $00   ; 
; 02 
- D 0 - - - 0x01867B 06:866B: 20        .byte $20   ; 
- D 0 - - - 0x01867C 06:866C: 04        .byte $04   ; 
- D 0 - - - 0x01867D 06:866D: 80        .byte $80   ; 
- D 0 - - - 0x01867E 06:866E: 00        .byte $00   ; 
; 03 
- D 0 - - - 0x01867F 06:866F: 15        .byte $15   ; 
- D 0 - - - 0x018680 06:8670: 04        .byte $04   ; 
- D 0 - - - 0x018681 06:8671: 00        .byte $00   ; 
- D 0 - - - 0x018682 06:8672: 00        .byte $00   ; 
; 04 
- D 0 - - - 0x018683 06:8673: 15        .byte $15   ; 
- D 0 - - - 0x018684 06:8674: 05        .byte $05   ; 
- D 0 - - - 0x018685 06:8675: 00        .byte $00   ; 
- D 0 - - - 0x018686 06:8676: 00        .byte $00   ; 
; 05 
- D 0 - - - 0x018687 06:8677: 10        .byte $10   ; 
- D 0 - - - 0x018688 06:8678: 05        .byte $05   ; 
- D 0 - - - 0x018689 06:8679: 80        .byte $80   ; 
- D 0 - - - 0x01868A 06:867A: 00        .byte $00   ; 



sub_867B:
C - - - - - 0x01868B 06:867B: A4 19     LDY ram_0019
C - - - - - 0x01868D 06:867D: B5 B6     LDA ram_obj_pos_Z_hi,X
C - - - - - 0x01868F 06:867F: 59 B6 00  EOR a: ram_obj_pos_Z_hi,Y
C - - - - - 0x018692 06:8682: D0 59     BNE bra_86DD
C - - - - - 0x018694 06:8684: B5 AD     LDA ram_obj_pos_Z_lo,X
C - - - - - 0x018696 06:8686: 59 AD 00  EOR a: ram_obj_pos_Z_lo,Y
C - - - - - 0x018699 06:8689: D0 52     BNE bra_86DD
C - - - - - 0x01869B 06:868B: B5 92     LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01869D 06:868D: 38        SEC
C - - - - - 0x01869E 06:868E: F9 92 00  SBC a: ram_obj_pos_Y_lo,Y
C - - - - - 0x0186A1 06:8691: 85 29     STA ram_0029
C - - - - - 0x0186A3 06:8693: B5 9B     LDA ram_obj_pos_Y_hi,X
C - - - - - 0x0186A5 06:8695: F9 9B 00  SBC a: ram_obj_pos_Y_hi,Y
C - - - - - 0x0186A8 06:8698: 85 2A     STA ram_002A
C - - - - - 0x0186AA 06:869A: B0 03     BCS bra_869F
C - - - - - 0x0186AC 06:869C: 20 15 87  JSR sub_8715_eor_16_bit_1
bra_869F:
C - - - - - 0x0186AF 06:869F: D0 3C     BNE bra_86DD
C - - - - - 0x0186B1 06:86A1: A5 29     LDA ram_0029
C - - - - - 0x0186B3 06:86A3: C5 1B     CMP ram_001B
C - - - - - 0x0186B5 06:86A5: B0 36     BCS bra_86DD
C - - - - - 0x0186B7 06:86A7: B5 63     LDA ram_0063_obj_facing,X
C - - - - - 0x0186B9 06:86A9: 45 1C     EOR ram_001C
C - - - - - 0x0186BB 06:86AB: 30 1B     BMI bra_86C8
C - - - - - 0x0186BD 06:86AD: B9 77 00  LDA a: ram_obj_pos_X_lo,Y
C - - - - - 0x0186C0 06:86B0: 38        SEC
C - - - - - 0x0186C1 06:86B1: F5 77     SBC ram_obj_pos_X_lo,X
C - - - - - 0x0186C3 06:86B3: 85 29     STA ram_0029
C - - - - - 0x0186C5 06:86B5: B9 80 00  LDA a: ram_obj_pos_X_hi,Y
C - - - - - 0x0186C8 06:86B8: F5 80     SBC ram_obj_pos_X_hi,X
C - - - - - 0x0186CA 06:86BA: 85 2A     STA ram_002A
C - - - - - 0x0186CC 06:86BC: 90 1F     BCC bra_86DD
C - - - - - 0x0186CE 06:86BE: D0 1D     BNE bra_86DD
bra_86C0:
C - - - - - 0x0186D0 06:86C0: A5 29     LDA ram_0029
C - - - - - 0x0186D2 06:86C2: C5 1A     CMP ram_001A
C - - - - - 0x0186D4 06:86C4: B0 17     BCS bra_86DD
C - - - - - 0x0186D6 06:86C6: 38        SEC
C - - - - - 0x0186D7 06:86C7: 60        RTS
bra_86C8:
C - - - - - 0x0186D8 06:86C8: B5 77     LDA ram_obj_pos_X_lo,X
C - - - - - 0x0186DA 06:86CA: 38        SEC
C - - - - - 0x0186DB 06:86CB: F9 77 00  SBC a: ram_obj_pos_X_lo,Y
C - - - - - 0x0186DE 06:86CE: 85 29     STA ram_0029
C - - - - - 0x0186E0 06:86D0: B5 80     LDA ram_obj_pos_X_hi,X
C - - - - - 0x0186E2 06:86D2: F9 80 00  SBC a: ram_obj_pos_X_hi,Y
C - - - - - 0x0186E5 06:86D5: 85 2A     STA ram_002A
C - - - - - 0x0186E7 06:86D7: 90 04     BCC bra_86DD
C - - - - - 0x0186E9 06:86D9: D0 02     BNE bra_86DD
C - - - - - 0x0186EB 06:86DB: F0 E3     BEQ bra_86C0    ; jmp
bra_86DD:
C - - - - - 0x0186ED 06:86DD: 18        CLC
C - - - - - 0x0186EE 06:86DE: 60        RTS



sub_86DF_buttons:
C - - - - - 0x0186EF 06:86DF: A6 3B     LDX ram_obj_index
C - - - - - 0x0186F1 06:86E1: B5 E2     LDA ram_btn_hold,X
C - - - - - 0x0186F3 06:86E3: 29 0F     AND #con_btns_Dpad
C - - - - - 0x0186F5 06:86E5: A8        TAY
C - - - - - 0x0186F6 06:86E6: B9 05 87  LDA tbl_8705_direction,Y
C - - - - - 0x0186F9 06:86E9: 9D 2C 04  STA ram_042C_plr_direction,X
C - - - - - 0x0186FC 06:86EC: B5 63     LDA ram_0063_obj_facing,X
C - - - - - 0x0186FE 06:86EE: 30 0D     BMI bra_86FD_facing_left
C - - - - - 0x018700 06:86F0: B5 E0     LDA ram_btn_press,X
C - - - - - 0x018702 06:86F2: 29 C0     AND #con_btns_AB
C - - - - - 0x018704 06:86F4: 0A        ASL
C - - - - - 0x018705 06:86F5: 90 02     BCC bra_86F9    ; if A was not pressed
C - - - - - 0x018707 06:86F7: 09 40     ORA #con_btn_B
bra_86F9:
C - - - - - 0x018709 06:86F9: 9D 2E 04  STA ram_042E_plr_ab_buttons_copy,X
C - - - - - 0x01870C 06:86FC: 60        RTS
bra_86FD_facing_left:
C - - - - - 0x01870D 06:86FD: B5 E0     LDA ram_btn_press,X
C - - - - - 0x01870F 06:86FF: 29 C0     AND #con_btns_AB
C - - - - - 0x018711 06:8701: 9D 2E 04  STA ram_042E_plr_ab_buttons_copy,X
C - - - - - 0x018714 06:8704: 60        RTS



tbl_8705_direction:
- D 0 - - - 0x018715 06:8705: 00        .byte $00   ; 00 
- D 0 - - - 0x018716 06:8706: 03        .byte $03   ; 01 
- D 0 - - - 0x018717 06:8707: 07        .byte $07   ; 02 
- - - - - - 0x018718 06:8708: 00        .byte $00   ; 03 
- D 0 - - - 0x018719 06:8709: 05        .byte $05   ; 04 
- D 0 - - - 0x01871A 06:870A: 04        .byte $04   ; 05 
- D 0 - - - 0x01871B 06:870B: 06        .byte $06   ; 06 
- - - - - - 0x01871C 06:870C: 00        .byte $00   ; 07 
- D 0 - - - 0x01871D 06:870D: 01        .byte $01   ; 08 
- D 0 - - - 0x01871E 06:870E: 02        .byte $02   ; 09 
- D 0 - - - 0x01871F 06:870F: 08        .byte $08   ; 0A 
- - - - - - 0x018720 06:8710: 00        .byte $00   ; 0B 
- - - - - - 0x018721 06:8711: 00        .byte $00   ; 0C 
- - - - - - 0x018722 06:8712: 00        .byte $00   ; 0D 
- - - - - - 0x018723 06:8713: 00        .byte $00   ; 0E 
- - - - - - 0x018724 06:8714: 00        .byte $00   ; 0F 



sub_8715_eor_16_bit_1:
C - - - - - 0x018725 06:8715: A5 29     LDA ram_0029
C - - - - - 0x018727 06:8717: 49 FF     EOR #$FF
C - - - - - 0x018729 06:8719: 18        CLC
C - - - - - 0x01872A 06:871A: 69 01     ADC #< $0001
C - - - - - 0x01872C 06:871C: 85 29     STA ram_0029
C - - - - - 0x01872E 06:871E: A5 2A     LDA ram_002A
C - - - - - 0x018730 06:8720: 49 FF     EOR #$FF
C - - - - - 0x018732 06:8722: 69 00     ADC #> $0001
C - - - - - 0x018734 06:8724: 85 2A     STA ram_002A
C - - - - - 0x018736 06:8726: 60        RTS



sub_8727_eor_16_bit_2:
C - - - - - 0x018737 06:8727: A5 2D     LDA ram_002D
C - - - - - 0x018739 06:8729: 49 FF     EOR #$FF
C - - - - - 0x01873B 06:872B: 18        CLC
C - - - - - 0x01873C 06:872C: 69 01     ADC #< $0001
C - - - - - 0x01873E 06:872E: 85 2D     STA ram_002D
C - - - - - 0x018740 06:8730: A5 2E     LDA ram_002E
C - - - - - 0x018742 06:8732: 49 FF     EOR #$FF
C - - - - - 0x018744 06:8734: 69 00     ADC #> $0001
C - - - - - 0x018746 06:8736: 85 2E     STA ram_002E
C - - - - - 0x018748 06:8738: 60        RTS



sub_8739:
C - - - - - 0x018749 06:8739: A5 F4     LDA ram_irq_handler
C - - - - - 0x01874B 06:873B: C9 03     CMP #con_irq_tractor
C - - - - - 0x01874D 06:873D: D0 42     BNE bra_8781_RTS
C - - - - - 0x01874F 06:873F: AD 5F 06  LDA ram_065F
C - - - - - 0x018752 06:8742: F0 3D     BEQ bra_8781_RTS
C - - - - - 0x018754 06:8744: A6 3B     LDX ram_obj_index
C - - - - - 0x018756 06:8746: BD 4A 00  LDA a: ram_004A_obj_flags,X
C - - - - - 0x018759 06:8749: 30 36     BMI bra_8781_RTS    ; if con_004A_flag_knocked_down
C - - - - - 0x01875B 06:874B: BD 59 03  LDA ram_0359_obj,X
C - - - - - 0x01875E 06:874E: C9 0A     CMP #con_0359_0A
C - - - - - 0x018760 06:8750: F0 2F     BEQ bra_8781_RTS
C - - - - - 0x018762 06:8752: 38        SEC
C - - - - - 0x018763 06:8753: E9 18     SBC #$18
C - - - - - 0x018765 06:8755: A8        TAY
C - - - - - 0x018766 06:8756: A9 01     LDA #$01
C - - - - - 0x018768 06:8758: 85 19     STA ram_0019
C - - - - - 0x01876A 06:875A: B9 82 87  LDA tbl_8782,Y
C - - - - - 0x01876D 06:875D: F0 02     BEQ bra_8761
C - - - - - 0x01876F 06:875F: E6 19     INC ram_0019
bra_8761:
C - - - - - 0x018771 06:8761: AD 5F 06  LDA ram_065F
C - - - - - 0x018774 06:8764: 30 0E     BMI bra_8774
C - - - - - 0x018776 06:8766: B5 77     LDA ram_obj_pos_X_lo,X
C - - - - - 0x018778 06:8768: 18        CLC
C - - - - - 0x018779 06:8769: 65 19     ADC ram_0019
C - - - - - 0x01877B 06:876B: 95 77     STA ram_obj_pos_X_lo,X
C - - - - - 0x01877D 06:876D: B5 80     LDA ram_obj_pos_X_hi,X
C - - - - - 0x01877F 06:876F: 69 00     ADC #$00
C - - - - - 0x018781 06:8771: 95 80     STA ram_obj_pos_X_hi,X
C - - - - - 0x018783 06:8773: 60        RTS
bra_8774:
C - - - - - 0x018784 06:8774: B5 77     LDA ram_obj_pos_X_lo,X
C - - - - - 0x018786 06:8776: 38        SEC
C - - - - - 0x018787 06:8777: E5 19     SBC ram_0019
C - - - - - 0x018789 06:8779: 95 77     STA ram_obj_pos_X_lo,X
C - - - - - 0x01878B 06:877B: B5 80     LDA ram_obj_pos_X_hi,X
C - - - - - 0x01878D 06:877D: E9 00     SBC #$00
C - - - - - 0x01878F 06:877F: 95 80     STA ram_obj_pos_X_hi,X
bra_8781_RTS:
C - - - - - 0x018791 06:8781: 60        RTS



tbl_8782:
- D 0 - - - 0x018792 06:8782: 00        .byte $00   ; 18
- D 0 - - - 0x018793 06:8783: 01        .byte $01   ; 19
- D 0 - - - 0x018794 06:8784: 01        .byte $01   ; 1A
- D 0 - - - 0x018795 06:8785: 00        .byte $00   ; 1B
- D 0 - - - 0x018796 06:8786: 00        .byte $00   ; 1C
- D 0 - - - 0x018797 06:8787: 00        .byte $00   ; 1D
- - - - - - 0x018798 06:8788: 00        .byte $00   ; 1E
- D 0 - - - 0x018799 06:8789: 00        .byte $00   ; 1F


; bzk garbage starts somewhere here
- - - - - - 0x01879A 06:878A: 00        .byte $00   ; 
- - - - - - 0x01879B 06:878B: 00        .byte $00   ; 
- - - - - - 0x01879C 06:878C: 00        .byte $00   ; 
- - - - - - 0x01879D 06:878D: 00        .byte $00   ; 
- - - - - - 0x01879E 06:878E: 00        .byte $00   ; 
- - - - - - 0x01879F 06:878F: 00        .byte $00   ; 
- - - - - - 0x0187A0 06:8790: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x0187B0 06:87A0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x0187C0 06:87B0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x0187D0 06:87C0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x0187E0 06:87D0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x0187F0 06:87E0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x018800 06:87F0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 



sub_8800_prepare_mission_data:
sub_0x018810_prepare_mission_data:
C - - - - - 0x018810 06:8800: 20 1B 88  JSR sub_881B_clear_animations
C - - - - - 0x018813 06:8803: 20 5A 95  JSR sub_955A_prepare_mission_pointer
C - - - - - 0x018816 06:8806: 20 6F 95  JSR sub_956F_set_default_cam_pos
C - - - - - 0x018819 06:8809: 20 AD 95  JSR sub_95AD_set_default_plr_data
C - - - - - 0x01881C 06:880C: A9 00     LDA #$00    ; con_0361_00
C - - - - - 0x01881E 06:880E: 8D 23 04  STA ram_mission_lo
C - - - - - 0x018821 06:8811: 8D 61 03  STA ram_0361_obj
C - - - - - 0x018824 06:8814: 8D 62 03  STA ram_0361_obj + $01
C - - - - - 0x018827 06:8817: 20 18 8F  JSR sub_8F18_prepare_next_script
C - - - - - 0x01882A 06:881A: 60        RTS



sub_881B_clear_animations:
C - - - - - 0x01882B 06:881B: A2 06     LDX #$06
C - - - - - 0x01882D 06:881D: A9 00     LDA #con_anim_id + $00
bra_881F_loop:
C - - - - - 0x01882F 06:881F: 95 C7     STA ram_animation_id,X
C - - - - - 0x018831 06:8821: CA        DEX
C - - - - - 0x018832 06:8822: 10 FB     BPL bra_881F_loop
C - - - - - 0x018834 06:8824: 60        RTS



sub_0x018835_mission_script_handler_update:
C - - - - - 0x018835 06:8825: 20 E4 98  JSR sub_98E4
C - - - - - 0x018838 06:8828: 20 D3 8E  JSR sub_8ED3
C - - - - - 0x01883B 06:882B: A5 34     LDA ram_game_mode
C - - - - - 0x01883D 06:882D: 29 07     AND #con_gm_01 + con_gm_02 + con_gm_04
C - - - - - 0x01883F 06:882F: D0 18     BNE bra_8849
C - - - - - 0x018841 06:8831: AD 24 04  LDA ram_mission_script
C - - - - - 0x018844 06:8834: 0A        ASL
C - - - - - 0x018845 06:8835: AA        TAX
C - - - - - 0x018846 06:8836: BD 4D 88  LDA tbl_884D_mission_script_handler_in_process,X
C - - - - - 0x018849 06:8839: 85 29     STA ram_0029
C - - - - - 0x01884B 06:883B: BD 4E 88  LDA tbl_884D_mission_script_handler_in_process + $01,X
C - - - - - 0x01884E 06:883E: 85 2A     STA ram_002A
C - - - - - 0x018850 06:8840: A9 88     LDA #> ( ofs_8849 - $01 )
C - - - - - 0x018852 06:8842: 48        PHA
C - - - - - 0x018853 06:8843: A9 48     LDA #< ( ofs_8849 - $01 )
C - - - - - 0x018855 06:8845: 48        PHA
C - - - - - 0x018856 06:8846: 6C 29 00  JMP (ram_0029)
bra_8849:
ofs_8849:
C - - - - - 0x018859 06:8849: 20 8F 94  JSR sub_948F
C - - - - - 0x01885C 06:884C: 60        RTS



tbl_884D_mission_script_handler_in_process:
; these handlers are constantly executed, waiting to be finished
; see con_884D_script
- D 0 - - - 0x01885D 06:884D: 85 88     .word ofs_010_8885_00
- D 0 - - - 0x01885F 06:884F: 97 88     .word ofs_010_8897_01_hand_cursor
- D 0 - - - 0x018861 06:8851: C9 88     .word ofs_010_88C9_02
- D 0 - - - 0x018863 06:8853: C2 88     .word ofs_010_88C2_03
- D 0 - - - 0x018865 06:8855: 83 96     .word ofs_010_9683_04_enter_door
- D 0 - - - 0x018867 06:8857: 56 8B     .word ofs_010_8B56_05_elevator_going_down
- D 0 - - - 0x018869 06:8859: BC 8B     .word ofs_010_8BBC_06
- D 0 - - - 0x01886B 06:885B: F0 88     .word ofs_010_88F0_07
- D 0 - - - 0x01886D 06:885D: E9 89     .word ofs_010_89E9_08
- D 0 - - - 0x01886F 06:885F: F7 89     .word ofs_010_89F7_09_emeny_spawn_at_door
- D 0 - - - 0x018871 06:8861: BC 8B     .word ofs_010_8BBC_0A
- D 0 - - - 0x018873 06:8863: 96 88     .word ofs_010_8896_0B_RTS
- D 0 - - - 0x018875 06:8865: C8 8B     .word ofs_010_8BC8_0C
- D 0 - - - 0x018877 06:8867: E6 8B     .word ofs_010_8BE6_0D
- D 0 - - - 0x018879 06:8869: 0A 8C     .word ofs_010_8C0A_0E
- D 0 - - - 0x01887B 06:886B: 40 8C     .word ofs_010_8C40_0F
- D 0 - - - 0x01887D 06:886D: C2 88     .word ofs_010_88C2_10
- D 0 - - - 0x01887F 06:886F: C2 88     .word ofs_010_88C2_11
- D 0 - - - 0x018881 06:8871: 50 8C     .word ofs_010_8C50_12
- D 0 - - - 0x018883 06:8873: C2 88     .word ofs_010_88C2_13
- D 0 - - - 0x018885 06:8875: 5B 8C     .word ofs_010_8C5B_14
- - - - - - 0x018887 06:8877: EA 8C     .word ofs_010_8CEA_15
- D 0 - - - 0x018889 06:8879: C2 88     .word ofs_010_88C2_16
- - - - - - 0x01888B 06:887B: 0F 8D     .word ofs_010_8D0F_17
- D 0 - - - 0x01888D 06:887D: 3D 8D     .word ofs_010_8D3D_18
- D 0 - - - 0x01888F 06:887F: FC 8D     .word ofs_010_8DFC_19_shadow_warrior
- D 0 - - - 0x018891 06:8881: 60 8E     .word ofs_010_8E60_1A
- D 0 - - - 0x018893 06:8883: C2 88     .word ofs_010_88C2_1B



ofs_010_8885_00:
C - - J - - 0x018895 06:8885: AD 25 04  LDA ram_enemy_spawn_counter
C - - - - - 0x018898 06:8888: F0 09     BEQ bra_8893
C - - - - - 0x01889A 06:888A: 20 47 8B  JSR sub_8B47_find_empty_enemy_slot
C - - - - - 0x01889D 06:888D: 90 03     BCC bra_8892_RTS
C - - - - - 0x01889F 06:888F: 20 12 8B  JSR sub_8B12_create_1_enemy
bra_8892_RTS:
C - - - - - 0x0188A2 06:8892: 60        RTS
bra_8893:
C - - - - - 0x0188A3 06:8893: 20 25 8B  JSR sub_8B25_wait_for_all_enemies_dead
ofs_010_8896_0B_RTS:
C - - - - - 0x0188A6 06:8896: 60        RTS



ofs_010_8897_01_hand_cursor:
C - - J - - 0x0188A7 06:8897: AD 29 04  LDA ram_0429
C - - - - - 0x0188AA 06:889A: C9 05     CMP #$05
C - - - - - 0x0188AC 06:889C: B0 24     BCS bra_88C2
C - - - - - 0x0188AE 06:889E: AD A5 04  LDA ram_04A5_counter
C - - - - - 0x0188B1 06:88A1: 29 0F     AND #$0F
C - - - - - 0x0188B3 06:88A3: D0 0D     BNE bra_88B2
C - - - - - 0x0188B5 06:88A5: 20 5F 94  JSR sub_945F_display_hand_cursor
C - - - - - 0x0188B8 06:88A8: A9 A0     LDA #con_003C_flag_exist + con_003C_flag_20
C - - - - - 0x0188BA 06:88AA: 85 42     STA ram_003C_obj_flags + $06
C - - - - - 0x0188BC 06:88AC: A9 47     LDA #con_sfx_hand_cursor
C - - - - - 0x0188BE 06:88AE: 20 10 FC  JSR sub_0x01FC20_play_sound
C - - - - - 0x0188C1 06:88B1: 60        RTS
bra_88B2:
C - - - - - 0x0188C2 06:88B2: C9 0F     CMP #$0F
C - - - - - 0x0188C4 06:88B4: D0 08     BNE bra_88BE
C - - - - - 0x0188C6 06:88B6: A9 00     LDA #con_003C_flag_00
C - - - - - 0x0188C8 06:88B8: 85 42     STA ram_003C_obj_flags + $06
C - - - - - 0x0188CA 06:88BA: EE 29 04  INC ram_0429
C - - - - - 0x0188CD 06:88BD: 60        RTS
bra_88BE:
C - - - - - 0x0188CE 06:88BE: 20 5F 94  JSR sub_945F_display_hand_cursor
C - - - - - 0x0188D1 06:88C1: 60        RTS
bra_88C2:
loc_88C2:
ofs_010_88C2_03:
ofs_010_88C2_10:
ofs_010_88C2_11:
ofs_010_88C2_13:
ofs_010_88C2_16:
ofs_010_88C2_1B:
C - - - - - 0x0188D2 06:88C2: EE 23 04  INC ram_mission_lo
C - - - - - 0x0188D5 06:88C5: 20 18 8F  JSR sub_8F18_prepare_next_script
C - - - - - 0x0188D8 06:88C8: 60        RTS



ofs_010_88C9_02:
C - - J - - 0x0188D9 06:88C9: 20 D5 92  JSR sub_92D5_calculate_submission_pointer
C - - - - - 0x0188DC 06:88CC: A0 01     LDY #$01
C - - - - - 0x0188DE 06:88CE: B1 2B     LDA (ram_002B),Y
C - - - - - 0x0188E0 06:88D0: C5 D0     CMP ram_obj_pos_X_lo_cam
C - - - - - 0x0188E2 06:88D2: D0 1B     BNE bra_88EF_RTS
C - - - - - 0x0188E4 06:88D4: C8        INY
C - - - - - 0x0188E5 06:88D5: B1 2B     LDA (ram_002B),Y
C - - - - - 0x0188E7 06:88D7: C5 D1     CMP ram_obj_pos_X_hi_cam
C - - - - - 0x0188E9 06:88D9: D0 14     BNE bra_88EF_RTS
C - - - - - 0x0188EB 06:88DB: C8        INY
C - - - - - 0x0188EC 06:88DC: B1 2B     LDA (ram_002B),Y
C - - - - - 0x0188EE 06:88DE: C5 D2     CMP ram_obj_pos_Y_lo_cam
C - - - - - 0x0188F0 06:88E0: D0 0D     BNE bra_88EF_RTS
C - - - - - 0x0188F2 06:88E2: C8        INY
C - - - - - 0x0188F3 06:88E3: B1 2B     LDA (ram_002B),Y
C - - - - - 0x0188F5 06:88E5: C5 D3     CMP ram_obj_pos_Y_hi_cam
C - - - - - 0x0188F7 06:88E7: D0 06     BNE bra_88EF_RTS
C - - - - - 0x0188F9 06:88E9: EE 23 04  INC ram_mission_lo
C - - - - - 0x0188FC 06:88EC: 20 18 8F  JSR sub_8F18_prepare_next_script
bra_88EF_RTS:
C - - - - - 0x0188FF 06:88EF: 60        RTS



ofs_010_88F0_07:
C - - J - - 0x018900 06:88F0: 20 D5 92  JSR sub_92D5_calculate_submission_pointer
C - - - - - 0x018903 06:88F3: A0 01     LDY #$01
C - - - - - 0x018905 06:88F5: B1 2B     LDA (ram_002B),Y
C - - - - - 0x018907 06:88F7: 48        PHA
C - - - - - 0x018908 06:88F8: C8        INY
C - - - - - 0x018909 06:88F9: 29 C0     AND #$C0
C - - - - - 0x01890B 06:88FB: F0 1D     BEQ bra_891A
C - - - - - 0x01890D 06:88FD: A2 00     LDX #$00
C - - - - - 0x01890F 06:88FF: C9 C0     CMP #$C0
C - - - - - 0x018911 06:8901: D0 07     BNE bra_890A
- - - - - - 0x018913 06:8903: 20 45 89  JSR sub_8945
- - - - - - 0x018916 06:8906: 90 3B     BCC bra_8943
- - - - - - 0x018918 06:8908: B0 10     BCS bra_891A    ; jmp
bra_890A:
C - - - - - 0x01891A 06:890A: C9 80     CMP #$80
C - - - - - 0x01891C 06:890C: D0 07     BNE bra_8915
C - - - - - 0x01891E 06:890E: 20 58 89  JSR sub_8958
C - - - - - 0x018921 06:8911: 90 30     BCC bra_8943
C - - - - - 0x018923 06:8913: B0 05     BCS bra_891A    ; jmp
bra_8915:
- - - - - - 0x018925 06:8915: 20 74 89  JSR sub_8974
- - - - - - 0x018928 06:8918: 90 29     BCC bra_8943
bra_891A:
C - - - - - 0x01892A 06:891A: 68        PLA
C - - - - - 0x01892B 06:891B: 29 0C     AND #$0C
C - - - - - 0x01892D 06:891D: F0 1D     BEQ bra_893C
C - - - - - 0x01892F 06:891F: A2 02     LDX #$02
C - - - - - 0x018931 06:8921: C9 0C     CMP #$0C
C - - - - - 0x018933 06:8923: D0 07     BNE bra_892C
- - - - - - 0x018935 06:8925: 20 45 89  JSR sub_8945
- - - - - - 0x018938 06:8928: 90 18     BCC bra_8942_RTS
- - - - - - 0x01893A 06:892A: B0 10     BCS bra_893C    ; jmp
bra_892C:
C - - - - - 0x01893C 06:892C: C9 08     CMP #$08
C - - - - - 0x01893E 06:892E: D0 07     BNE bra_8937
C - - - - - 0x018940 06:8930: 20 58 89  JSR sub_8958
C - - - - - 0x018943 06:8933: 90 0D     BCC bra_8942_RTS
C - - - - - 0x018945 06:8935: B0 05     BCS bra_893C    ; jmp
bra_8937:
C - - - - - 0x018947 06:8937: 20 74 89  JSR sub_8974
C - - - - - 0x01894A 06:893A: 90 06     BCC bra_8942_RTS
bra_893C:
C - - - - - 0x01894C 06:893C: EE 23 04  INC ram_mission_lo
C - - - - - 0x01894F 06:893F: 20 18 8F  JSR sub_8F18_prepare_next_script
bra_8942_RTS:
C - - - - - 0x018952 06:8942: 60        RTS
bra_8943:
C - - - - - 0x018953 06:8943: 68        PLA
C - - - - - 0x018954 06:8944: 60        RTS



sub_8945:
- - - - - - 0x018955 06:8945: B1 2B     LDA (ram_002B),Y
- - - - - - 0x018957 06:8947: D5 D0     CMP ram_obj_pos_X_lo_cam,X
- - - - - - 0x018959 06:8949: D0 0B     BNE bra_8956
- - - - - - 0x01895B 06:894B: E8        INX
- - - - - - 0x01895C 06:894C: C8        INY
- - - - - - 0x01895D 06:894D: B1 2B     LDA (ram_002B),Y
- - - - - - 0x01895F 06:894F: D5 D1     CMP ram_obj_pos_X_hi_cam,X
- - - - - - 0x018961 06:8951: D0 03     BNE bra_8956
- - - - - - 0x018963 06:8953: C8        INY
- - - - - - 0x018964 06:8954: 38        SEC
- - - - - - 0x018965 06:8955: 60        RTS
bra_8956:
- - - - - - 0x018966 06:8956: 18        CLC
- - - - - - 0x018967 06:8957: 60        RTS



sub_8958:
C - - - - - 0x018968 06:8958: B5 D0     LDA ram_obj_pos_X_lo_cam,X
C - - - - - 0x01896A 06:895A: 38        SEC
C - - - - - 0x01896B 06:895B: F1 2B     SBC (ram_002B),Y
C - - - - - 0x01896D 06:895D: 08        PHP
C - - - - - 0x01896E 06:895E: E8        INX
C - - - - - 0x01896F 06:895F: C8        INY
C - - - - - 0x018970 06:8960: 28        PLP
C - - - - - 0x018971 06:8961: B5 D0     LDA ram_obj_pos_X_lo_cam,X
C - - - - - 0x018973 06:8963: F1 2B     SBC (ram_002B),Y
C - - - - - 0x018975 06:8965: 90 03     BCC bra_896A
C - - - - - 0x018977 06:8967: C8        INY
C - - - - - 0x018978 06:8968: 38        SEC
C - - - - - 0x018979 06:8969: 60        RTS
bra_896A:
C - - - - - 0x01897A 06:896A: 20 90 89  JSR sub_8990
C - - - - - 0x01897D 06:896D: B0 03     BCS bra_8972
C - - - - - 0x01897F 06:896F: 20 A1 89  JSR sub_89A1
bra_8972:
C - - - - - 0x018982 06:8972: 18        CLC
C - - - - - 0x018983 06:8973: 60        RTS



sub_8974:
C - - - - - 0x018984 06:8974: B1 2B     LDA (ram_002B),Y
C - - - - - 0x018986 06:8976: 38        SEC
C - - - - - 0x018987 06:8977: F5 D0     SBC ram_obj_pos_X_lo_cam,X
C - - - - - 0x018989 06:8979: 08        PHP
C - - - - - 0x01898A 06:897A: E8        INX
C - - - - - 0x01898B 06:897B: C8        INY
C - - - - - 0x01898C 06:897C: 28        PLP
C - - - - - 0x01898D 06:897D: B1 2B     LDA (ram_002B),Y
C - - - - - 0x01898F 06:897F: F5 D0     SBC ram_obj_pos_X_lo_cam,X
C - - - - - 0x018991 06:8981: 90 03     BCC bra_8986
C - - - - - 0x018993 06:8983: C8        INY
C - - - - - 0x018994 06:8984: 38        SEC
C - - - - - 0x018995 06:8985: 60        RTS
bra_8986:
C - - - - - 0x018996 06:8986: 20 90 89  JSR sub_8990
C - - - - - 0x018999 06:8989: B0 03     BCS bra_898E
C - - - - - 0x01899B 06:898B: 20 C5 89  JSR sub_89C5
bra_898E:
C - - - - - 0x01899E 06:898E: 18        CLC
C - - - - - 0x01899F 06:898F: 60        RTS



sub_8990:
C - - - - - 0x0189A0 06:8990: CA        DEX
C - - - - - 0x0189A1 06:8991: B5 D0     LDA ram_obj_pos_X_lo_cam,X
C - - - - - 0x0189A3 06:8993: D5 D4     CMP ram_copy_cam_pos,X
C - - - - - 0x0189A5 06:8995: D0 08     BNE bra_899F
C - - - - - 0x0189A7 06:8997: B5 D1     LDA ram_obj_pos_X_hi_cam,X
C - - - - - 0x0189A9 06:8999: D5 D5     CMP ram_copy_cam_pos + $01,X
C - - - - - 0x0189AB 06:899B: D0 02     BNE bra_899F
C - - - - - 0x0189AD 06:899D: 18        CLC
C - - - - - 0x0189AE 06:899E: 60        RTS
bra_899F:
C - - - - - 0x0189AF 06:899F: 38        SEC
C - - - - - 0x0189B0 06:89A0: 60        RTS



sub_89A1:
C - - - - - 0x0189B1 06:89A1: 84 33     STY ram_0033_save_Y
C - - - - - 0x0189B3 06:89A3: A0 01     LDY #$01
C - - - - - 0x0189B5 06:89A5: B1 2B     LDA (ram_002B),Y
C - - - - - 0x0189B7 06:89A7: E0 00     CPX #$00
C - - - - - 0x0189B9 06:89A9: D0 06     BNE bra_89B1
C - - - - - 0x0189BB 06:89AB: 29 20     AND #$20
C - - - - - 0x0189BD 06:89AD: F0 15     BEQ bra_89C4_RTS
C - - - - - 0x0189BF 06:89AF: D0 04     BNE bra_89B5    ; jmp
bra_89B1:
C - - - - - 0x0189C1 06:89B1: 29 02     AND #$02
C - - - - - 0x0189C3 06:89B3: F0 0F     BEQ bra_89C4_RTS
bra_89B5:
C - - - - - 0x0189C5 06:89B5: A4 33     LDY ram_0033_save_Y
C - - - - - 0x0189C7 06:89B7: B5 D0     LDA ram_obj_pos_X_lo_cam,X
C - - - - - 0x0189C9 06:89B9: 18        CLC
C - - - - - 0x0189CA 06:89BA: 69 01     ADC #< $0001
C - - - - - 0x0189CC 06:89BC: 95 D0     STA ram_obj_pos_X_lo_cam,X
C - - - - - 0x0189CE 06:89BE: B5 D1     LDA ram_obj_pos_X_hi_cam,X
C - - - - - 0x0189D0 06:89C0: 69 00     ADC #> $0001
C - - - - - 0x0189D2 06:89C2: 95 D1     STA ram_obj_pos_X_hi_cam,X
bra_89C4_RTS:
C - - - - - 0x0189D4 06:89C4: 60        RTS



sub_89C5:
C - - - - - 0x0189D5 06:89C5: 84 33     STY ram_0033_save_Y
C - - - - - 0x0189D7 06:89C7: A0 01     LDY #$01
C - - - - - 0x0189D9 06:89C9: B1 2B     LDA (ram_002B),Y
C - - - - - 0x0189DB 06:89CB: E0 00     CPX #$00
C - - - - - 0x0189DD 06:89CD: D0 06     BNE bra_89D5
- - - - - - 0x0189DF 06:89CF: 29 20     AND #$20
- - - - - - 0x0189E1 06:89D1: F0 15     BEQ bra_89E8_RTS
- - - - - - 0x0189E3 06:89D3: D0 04     BNE bra_89D9
bra_89D5:
C - - - - - 0x0189E5 06:89D5: 29 02     AND #$02
C - - - - - 0x0189E7 06:89D7: F0 0F     BEQ bra_89E8_RTS
bra_89D9:
C - - - - - 0x0189E9 06:89D9: A4 33     LDY ram_0033_save_Y
C - - - - - 0x0189EB 06:89DB: B5 D0     LDA ram_obj_pos_X_lo_cam,X
C - - - - - 0x0189ED 06:89DD: 38        SEC
C - - - - - 0x0189EE 06:89DE: E9 01     SBC #< $0001
C - - - - - 0x0189F0 06:89E0: 95 D0     STA ram_obj_pos_X_lo_cam,X
C - - - - - 0x0189F2 06:89E2: B5 D1     LDA ram_obj_pos_X_hi_cam,X
C - - - - - 0x0189F4 06:89E4: E9 00     SBC #> $0001
C - - - - - 0x0189F6 06:89E6: 95 D1     STA ram_obj_pos_X_hi_cam,X
bra_89E8_RTS:
C - - - - - 0x0189F8 06:89E8: 60        RTS



ofs_010_89E9_08:
C - - J - - 0x0189F9 06:89E9: AD FE 07  LDA ram_game_flags_2
C - - - - - 0x0189FC 06:89EC: 29 02     AND #con_gf2_02
C - - - - - 0x0189FE 06:89EE: D0 06     BNE bra_89F6_RTS
C - - - - - 0x018A00 06:89F0: EE 23 04  INC ram_mission_lo
C - - - - - 0x018A03 06:89F3: 20 18 8F  JSR sub_8F18_prepare_next_script
bra_89F6_RTS:
C - - - - - 0x018A06 06:89F6: 60        RTS



ofs_010_89F7_09_emeny_spawn_at_door:
C - - J - - 0x018A07 06:89F7: A5 34     LDA ram_game_mode
C - - - - - 0x018A09 06:89F9: 29 20     AND #con_gm_20
C - - - - - 0x018A0B 06:89FB: D0 30     BNE bra_8A2D
C - - - - - 0x018A0D 06:89FD: AD 25 04  LDA ram_enemy_spawn_counter
C - - - - - 0x018A10 06:8A00: F0 27     BEQ bra_8A29
C - - - - - 0x018A12 06:8A02: 20 47 8B  JSR sub_8B47_find_empty_enemy_slot
C - - - - - 0x018A15 06:8A05: 90 25     BCC bra_8A2C_RTS
C - - - - - 0x018A17 06:8A07: 20 D5 92  JSR sub_92D5_calculate_submission_pointer
C - - - - - 0x018A1A 06:8A0A: 20 6E 8A  JSR sub_8A6E
C - - - - - 0x018A1D 06:8A0D: 90 1D     BCC bra_8A2C_RTS
C - - - - - 0x018A1F 06:8A0F: A9 3E     LDA #con_sfx_door
C - - - - - 0x018A21 06:8A11: 20 10 FC  JSR sub_0x01FC20_play_sound
C - - - - - 0x018A24 06:8A14: A0 0D     LDY #$0D
C - - - - - 0x018A26 06:8A16: B1 2B     LDA (ram_002B),Y
C - - - - - 0x018A28 06:8A18: 09 80     ORA #$80
C - - - - - 0x018A2A 06:8A1A: 8D 80 04  STA ram_0480
C - - - - - 0x018A2D 06:8A1D: A9 80     LDA #$80
C - - - - - 0x018A2F 06:8A1F: 8D 81 04  STA ram_0481
C - - - - - 0x018A32 06:8A22: A5 34     LDA ram_game_mode
C - - - - - 0x018A34 06:8A24: 09 20     ORA #con_gm_20
C - - - - - 0x018A36 06:8A26: 85 34     STA ram_game_mode
C - - - - - 0x018A38 06:8A28: 60        RTS
bra_8A29:
C - - - - - 0x018A39 06:8A29: 20 25 8B  JSR sub_8B25_wait_for_all_enemies_dead
bra_8A2C_RTS:
C - - - - - 0x018A3C 06:8A2C: 60        RTS
bra_8A2D:
C - - - - - 0x018A3D 06:8A2D: AD 80 04  LDA ram_0480
C - - - - - 0x018A40 06:8A30: 30 3B     BMI bra_8A6D_RTS
C - - - - - 0x018A42 06:8A32: AD 81 04  LDA ram_0481
C - - - - - 0x018A45 06:8A35: 10 30     BPL bra_8A67
C - - - - - 0x018A47 06:8A37: 20 D5 92  JSR sub_92D5_calculate_submission_pointer
C - - - - - 0x018A4A 06:8A3A: 20 47 8B  JSR sub_8B47_find_empty_enemy_slot
bra_8A3D_loop:
C - - - - - 0x018A4D 06:8A3D: A0 0B     LDY #$0B
C - - - - - 0x018A4F 06:8A3F: B1 2B     LDA (ram_002B),Y
C - - - - - 0x018A51 06:8A41: 95 C1     STA ram_obj_id + $02,X
C - - - - - 0x018A53 06:8A43: AC 26 04  LDY ram_0426
C - - - - - 0x018A56 06:8A46: 20 F7 92  JSR sub_92F7_spawn_enemies_from_mission_data
C - - - - - 0x018A59 06:8A49: CE 25 04  DEC ram_enemy_spawn_counter
C - - - - - 0x018A5C 06:8A4C: F0 05     BEQ bra_8A53
C - - - - - 0x018A5E 06:8A4E: 20 47 8B  JSR sub_8B47_find_empty_enemy_slot
C - - - - - 0x018A61 06:8A51: B0 EA     BCS bra_8A3D_loop
bra_8A53:
C - - - - - 0x018A63 06:8A53: A9 3E     LDA #con_sfx_door
C - - - - - 0x018A65 06:8A55: 20 10 FC  JSR sub_0x01FC20_play_sound
C - - - - - 0x018A68 06:8A58: A0 0D     LDY #$0D
C - - - - - 0x018A6A 06:8A5A: B1 2B     LDA (ram_002B),Y
C - - - - - 0x018A6C 06:8A5C: 09 80     ORA #$80
C - - - - - 0x018A6E 06:8A5E: 8D 80 04  STA ram_0480
C - - - - - 0x018A71 06:8A61: A9 03     LDA #$03
C - - - - - 0x018A73 06:8A63: 8D 81 04  STA ram_0481
C - - - - - 0x018A76 06:8A66: 60        RTS
bra_8A67:
C - - - - - 0x018A77 06:8A67: A5 34     LDA ram_game_mode
C - - - - - 0x018A79 06:8A69: 29 DF     AND #con_gm_20 ^ $FF
C - - - - - 0x018A7B 06:8A6B: 85 34     STA ram_game_mode
bra_8A6D_RTS:
C - - - - - 0x018A7D 06:8A6D: 60        RTS



sub_8A6E:
C - - - - - 0x018A7E 06:8A6E: AD 80 04  LDA ram_0480
C - - - - - 0x018A81 06:8A71: 10 03     BPL bra_8A76
C - - - - - 0x018A83 06:8A73: 4C 10 8B  JMP loc_8B10
bra_8A76:
C - - - - - 0x018A86 06:8A76: 8A        TXA
C - - - - - 0x018A87 06:8A77: 48        PHA
C - - - - - 0x018A88 06:8A78: A2 00     LDX #$00
C - - - - - 0x018A8A 06:8A7A: AC 26 04  LDY ram_0426
C - - - - - 0x018A8D 06:8A7D: B1 2B     LDA (ram_002B),Y
C - - - - - 0x018A8F 06:8A7F: 0A        ASL
C - - - - - 0x018A90 06:8A80: 90 01     BCC bra_8A83
C - - - - - 0x018A92 06:8A82: E8        INX
bra_8A83:
C - - - - - 0x018A93 06:8A83: E8        INX
C - - - - - 0x018A94 06:8A84: 0A        ASL
C - - - - - 0x018A95 06:8A85: 10 01     BPL bra_8A88
C - - - - - 0x018A97 06:8A87: E8        INX
bra_8A88:
C - - - - - 0x018A98 06:8A88: 8A        TXA
C - - - - - 0x018A99 06:8A89: 18        CLC
C - - - - - 0x018A9A 06:8A8A: 6D 26 04  ADC ram_0426
C - - - - - 0x018A9D 06:8A8D: A8        TAY
C - - - - - 0x018A9E 06:8A8E: 68        PLA
C - - - - - 0x018A9F 06:8A8F: AA        TAX
C - - - - - 0x018AA0 06:8A90: B1 2B     LDA (ram_002B),Y
C - - - - - 0x018AA2 06:8A92: 38        SEC
C - - - - - 0x018AA3 06:8A93: E9 20     SBC #< $0020
C - - - - - 0x018AA5 06:8A95: 85 FC     STA ram_00FC
C - - - - - 0x018AA7 06:8A97: C8        INY
C - - - - - 0x018AA8 06:8A98: B1 2B     LDA (ram_002B),Y
C - - - - - 0x018AAA 06:8A9A: E9 00     SBC #> $0020
C - - - - - 0x018AAC 06:8A9C: 85 FD     STA ram_00FD
C - - - - - 0x018AAE 06:8A9E: A5 D0     LDA ram_obj_pos_X_lo_cam
C - - - - - 0x018AB0 06:8AA0: 38        SEC
C - - - - - 0x018AB1 06:8AA1: E5 FC     SBC ram_00FC
C - - - - - 0x018AB3 06:8AA3: A5 D1     LDA ram_obj_pos_X_hi_cam
C - - - - - 0x018AB5 06:8AA5: E5 FD     SBC ram_00FD
C - - - - - 0x018AB7 06:8AA7: B0 67     BCS bra_8B10
C - - - - - 0x018AB9 06:8AA9: 88        DEY
C - - - - - 0x018ABA 06:8AAA: B1 2B     LDA (ram_002B),Y
C - - - - - 0x018ABC 06:8AAC: 18        CLC
C - - - - - 0x018ABD 06:8AAD: 69 20     ADC #< $0020
C - - - - - 0x018ABF 06:8AAF: 85 FC     STA ram_00FC
C - - - - - 0x018AC1 06:8AB1: C8        INY
C - - - - - 0x018AC2 06:8AB2: B1 2B     LDA (ram_002B),Y
C - - - - - 0x018AC4 06:8AB4: 69 00     ADC #> $0020
C - - - - - 0x018AC6 06:8AB6: 85 FD     STA ram_00FD
C - - - - - 0x018AC8 06:8AB8: A5 D0     LDA ram_obj_pos_X_lo_cam
C - - - - - 0x018ACA 06:8ABA: 18        CLC
C - - - - - 0x018ACB 06:8ABB: 69 FF     ADC #< $00FF
C - - - - - 0x018ACD 06:8ABD: 85 FE     STA ram_00FE
C - - - - - 0x018ACF 06:8ABF: A5 D1     LDA ram_obj_pos_X_hi_cam
C - - - - - 0x018AD1 06:8AC1: 69 00     ADC #> $00FF
C - - - - - 0x018AD3 06:8AC3: 85 FF     STA ram_00FF
C - - - - - 0x018AD5 06:8AC5: A5 FE     LDA ram_00FE
C - - - - - 0x018AD7 06:8AC7: 38        SEC
C - - - - - 0x018AD8 06:8AC8: E5 FC     SBC ram_00FC
C - - - - - 0x018ADA 06:8ACA: A5 FF     LDA ram_00FF
C - - - - - 0x018ADC 06:8ACC: E5 FD     SBC ram_00FD
C - - - - - 0x018ADE 06:8ACE: 90 40     BCC bra_8B10
C - - - - - 0x018AE0 06:8AD0: C8        INY
C - - - - - 0x018AE1 06:8AD1: B1 2B     LDA (ram_002B),Y
C - - - - - 0x018AE3 06:8AD3: 85 FC     STA ram_00FC
C - - - - - 0x018AE5 06:8AD5: C8        INY
C - - - - - 0x018AE6 06:8AD6: B1 2B     LDA (ram_002B),Y
C - - - - - 0x018AE8 06:8AD8: 85 FD     STA ram_00FD
C - - - - - 0x018AEA 06:8ADA: C8        INY
C - - - - - 0x018AEB 06:8ADB: B1 2B     LDA (ram_002B),Y
C - - - - - 0x018AED 06:8ADD: 18        CLC
C - - - - - 0x018AEE 06:8ADE: 65 FC     ADC ram_00FC
C - - - - - 0x018AF0 06:8AE0: 85 FC     STA ram_00FC
C - - - - - 0x018AF2 06:8AE2: C8        INY
C - - - - - 0x018AF3 06:8AE3: B1 2B     LDA (ram_002B),Y
C - - - - - 0x018AF5 06:8AE5: 65 FD     ADC ram_00FD
C - - - - - 0x018AF7 06:8AE7: 85 FD     STA ram_00FD
C - - - - - 0x018AF9 06:8AE9: A9 50     LDA #$50
C - - - - - 0x018AFB 06:8AEB: 18        CLC
C - - - - - 0x018AFC 06:8AEC: 65 FC     ADC ram_00FC
C - - - - - 0x018AFE 06:8AEE: 85 FC     STA ram_00FC
C - - - - - 0x018B00 06:8AF0: A9 00     LDA #$00
C - - - - - 0x018B02 06:8AF2: 65 FD     ADC ram_00FD
C - - - - - 0x018B04 06:8AF4: 85 FD     STA ram_00FD
C - - - - - 0x018B06 06:8AF6: A5 D2     LDA ram_obj_pos_Y_lo_cam
C - - - - - 0x018B08 06:8AF8: 18        CLC
C - - - - - 0x018B09 06:8AF9: 69 FF     ADC #< $00FF
C - - - - - 0x018B0B 06:8AFB: 85 FE     STA ram_00FE
C - - - - - 0x018B0D 06:8AFD: A5 D3     LDA ram_obj_pos_Y_hi_cam
C - - - - - 0x018B0F 06:8AFF: 69 00     ADC #> $00FF
C - - - - - 0x018B11 06:8B01: 85 FF     STA ram_00FF
C - - - - - 0x018B13 06:8B03: A5 FE     LDA ram_00FE
C - - - - - 0x018B15 06:8B05: 38        SEC
C - - - - - 0x018B16 06:8B06: E5 FC     SBC ram_00FC
C - - - - - 0x018B18 06:8B08: A5 FF     LDA ram_00FF
C - - - - - 0x018B1A 06:8B0A: E5 FD     SBC ram_00FD
C - - - - - 0x018B1C 06:8B0C: 90 02     BCC bra_8B10
C - - - - - 0x018B1E 06:8B0E: 38        SEC
C - - - - - 0x018B1F 06:8B0F: 60        RTS
bra_8B10:
loc_8B10:
C D 0 - - - 0x018B20 06:8B10: 18        CLC
C - - - - - 0x018B21 06:8B11: 60        RTS



sub_8B12_create_1_enemy:
C - - - - - 0x018B22 06:8B12: 20 D5 92  JSR sub_92D5_calculate_submission_pointer
C - - - - - 0x018B25 06:8B15: A0 0B     LDY #$0B
C - - - - - 0x018B27 06:8B17: B1 2B     LDA (ram_002B),Y
C - - - - - 0x018B29 06:8B19: 95 C1     STA ram_obj_id + $02,X
C - - - - - 0x018B2B 06:8B1B: AC 26 04  LDY ram_0426
C - - - - - 0x018B2E 06:8B1E: 20 F7 92  JSR sub_92F7_spawn_enemies_from_mission_data
C - - - - - 0x018B31 06:8B21: CE 25 04  DEC ram_enemy_spawn_counter
C - - - - - 0x018B34 06:8B24: 60        RTS



sub_8B25_wait_for_all_enemies_dead:
C - - - - - 0x018B35 06:8B25: A5 3E     LDA ram_003C_obj_flags + $02
C - - - - - 0x018B37 06:8B27: 30 1D     BMI bra_8B46_RTS    ; if con_003C_flag_exist
C - - - - - 0x018B39 06:8B29: A5 3F     LDA ram_003C_obj_flags + $03
C - - - - - 0x018B3B 06:8B2B: 30 19     BMI bra_8B46_RTS    ; if con_003C_flag_exist
C - - - - - 0x018B3D 06:8B2D: A5 CF     LDA ram_00CF
C - - - - - 0x018B3F 06:8B2F: D0 0F     BNE bra_8B40
C - - - - - 0x018B41 06:8B31: E6 CF     INC ram_00CF
C - - - - - 0x018B43 06:8B33: A9 00     LDA #con_003C_flag_00
C - - - - - 0x018B45 06:8B35: 85 3E     STA ram_003C_obj_flags + $02
C - - - - - 0x018B47 06:8B37: 85 3F     STA ram_003C_obj_flags + $03
C - - - - - 0x018B49 06:8B39: 85 40     STA ram_003C_obj_flags + $04
C - - - - - 0x018B4B 06:8B3B: 85 41     STA ram_003C_obj_flags + $05
C - - - - - 0x018B4D 06:8B3D: 85 42     STA ram_003C_obj_flags + $06
C - - - - - 0x018B4F 06:8B3F: 60        RTS
bra_8B40:
C - - - - - 0x018B50 06:8B40: EE 23 04  INC ram_mission_lo
C - - - - - 0x018B53 06:8B43: 20 18 8F  JSR sub_8F18_prepare_next_script
bra_8B46_RTS:
C - - - - - 0x018B56 06:8B46: 60        RTS



sub_8B47_find_empty_enemy_slot:
C - - - - - 0x018B57 06:8B47: A2 00     LDX #$00
bra_8B49_loop:
C - - - - - 0x018B59 06:8B49: B5 3E     LDA ram_003C_obj_flags + $02,X
C - - - - - 0x018B5B 06:8B4B: 10 07     BPL bra_8B54    ; if not con_003C_flag_exist
C - - - - - 0x018B5D 06:8B4D: E8        INX
C - - - - - 0x018B5E 06:8B4E: E0 02     CPX #$02
C - - - - - 0x018B60 06:8B50: 90 F7     BCC bra_8B49_loop
C - - - - - 0x018B62 06:8B52: 18        CLC
C - - - - - 0x018B63 06:8B53: 60        RTS
bra_8B54:
C - - - - - 0x018B64 06:8B54: 38        SEC
C - - - - - 0x018B65 06:8B55: 60        RTS



ofs_010_8B56_05_elevator_going_down:
C - - J - - 0x018B66 06:8B56: A2 00     LDX #$00
; bzk optimize, LDA instead of LDA,X
; bzk bug?
C - - - - - 0x018B68 06:8B58: B5 3C     LDA ram_003C_obj_flags,X
C - - - - - 0x018B6A 06:8B5A: 30 02     BMI bra_8B5E    ; if con_003C_flag_exist
- - - - - - 0x018B6C 06:8B5C: A2 01     LDX #$01
bra_8B5E:
C - - - - - 0x018B6E 06:8B5E: A5 D3     LDA ram_obj_pos_Y_hi_cam
C - - - - - 0x018B70 06:8B60: D0 59     BNE bra_8BBB_RTS
C - - - - - 0x018B72 06:8B62: A5 D2     LDA ram_obj_pos_Y_lo_cam
C - - - - - 0x018B74 06:8B64: D0 55     BNE bra_8BBB_RTS
C - - - - - 0x018B76 06:8B66: AD 80 04  LDA ram_0480
C - - - - - 0x018B79 06:8B69: 30 50     BMI bra_8BBB_RTS
C - - - - - 0x018B7B 06:8B6B: B5 4A     LDA ram_004A_obj_flags,X
C - - - - - 0x018B7D 06:8B6D: 29 04     AND #con_004A_flag_04
C - - - - - 0x018B7F 06:8B6F: D0 1B     BNE bra_8B8C
C - - - - - 0x018B81 06:8B71: AD 81 04  LDA ram_0481
C - - - - - 0x018B84 06:8B74: 10 3A     BPL bra_8BB0
C - - - - - 0x018B86 06:8B76: A9 00     LDA #con_state_idle
C - - - - - 0x018B88 06:8B78: 85 43     STA ram_state
C - - - - - 0x018B8A 06:8B7A: 85 44     STA ram_state + $01
C - - - - - 0x018B8C 06:8B7C: A9 3E     LDA #con_sfx_door
C - - - - - 0x018B8E 06:8B7E: 20 10 FC  JSR sub_0x01FC20_play_sound
C - - - - - 0x018B91 06:8B81: A9 85     LDA #con_A6C3_draw_leave_elevator_door + $80
C - - - - - 0x018B93 06:8B83: 8D 80 04  STA ram_0480
C - - - - - 0x018B96 06:8B86: A9 03     LDA #$03
C - - - - - 0x018B98 06:8B88: 8D 81 04  STA ram_0481
C - - - - - 0x018B9B 06:8B8B: 60        RTS
bra_8B8C:
C - - - - - 0x018B9C 06:8B8C: A5 4A     LDA ram_004A_obj_flags
C - - - - - 0x018B9E 06:8B8E: 29 FB     AND #con_004A_flag_04 ^ $FF
C - - - - - 0x018BA0 06:8B90: 85 4A     STA ram_004A_obj_flags
C - - - - - 0x018BA2 06:8B92: A5 4B     LDA ram_004A_obj_flags + $01
C - - - - - 0x018BA4 06:8B94: 29 FB     AND #con_004A_flag_04 ^ $FF
C - - - - - 0x018BA6 06:8B96: 85 4B     STA ram_004A_obj_flags + $01
C - - - - - 0x018BA8 06:8B98: A9 02     LDA #con_0359_02
C - - - - - 0x018BAA 06:8B9A: 8D 59 03  STA ram_0359_obj
C - - - - - 0x018BAD 06:8B9D: 8D 5A 03  STA ram_0359_obj + $01
C - - - - - 0x018BB0 06:8BA0: A9 3E     LDA #con_sfx_door
C - - - - - 0x018BB2 06:8BA2: 20 10 FC  JSR sub_0x01FC20_play_sound
C - - - - - 0x018BB5 06:8BA5: A9 85     LDA #con_A6C3_draw_leave_elevator_door + $80
C - - - - - 0x018BB7 06:8BA7: 8D 80 04  STA ram_0480
C - - - - - 0x018BBA 06:8BAA: A9 80     LDA #$80
C - - - - - 0x018BBC 06:8BAC: 8D 81 04  STA ram_0481
C - - - - - 0x018BBF 06:8BAF: 60        RTS
bra_8BB0:
C - - - - - 0x018BC0 06:8BB0: A9 FB     LDA #con_music_ctrl_FB
C - - - - - 0x018BC2 06:8BB2: 20 10 FC  JSR sub_0x01FC20_play_sound
C - - - - - 0x018BC5 06:8BB5: EE 23 04  INC ram_mission_lo
C - - - - - 0x018BC8 06:8BB8: 20 18 8F  JSR sub_8F18_prepare_next_script
bra_8BBB_RTS:
C - - - - - 0x018BCB 06:8BBB: 60        RTS



ofs_010_8BBC_06:
ofs_010_8BBC_0A:
C - - J - - 0x018BCC 06:8BBC: AD 80 04  LDA ram_0480
C - - - - - 0x018BCF 06:8BBF: 30 06     BMI bra_8BC7_RTS
C - - - - - 0x018BD1 06:8BC1: EE 23 04  INC ram_mission_lo
C - - - - - 0x018BD4 06:8BC4: 20 18 8F  JSR sub_8F18_prepare_next_script
bra_8BC7_RTS:
C - - - - - 0x018BD7 06:8BC7: 60        RTS



ofs_010_8BC8_0C:
C - - J - - 0x018BD8 06:8BC8: A5 F5     LDA ram_00F5
C - - - - - 0x018BDA 06:8BCA: 18        CLC
C - - - - - 0x018BDB 06:8BCB: 69 01     ADC #$01
C - - - - - 0x018BDD 06:8BCD: 90 02     BCC bra_8BD1
- - - - - - 0x018BDF 06:8BCF: A9 FF     LDA #$FF
bra_8BD1:
C - - - - - 0x018BE1 06:8BD1: 85 F5     STA ram_00F5
C - - - - - 0x018BE3 06:8BD3: 20 4F BB  JSR sub_BB4F
C - - - - - 0x018BE6 06:8BD6: 20 3C CF  JSR sub_0x01CF4C
C - - - - - 0x018BE9 06:8BD9: A5 F5     LDA ram_00F5
C - - - - - 0x018BEB 06:8BDB: C9 FF     CMP #$FF
C - - - - - 0x018BED 06:8BDD: D0 06     BNE bra_8BE5_RTS
C - - - - - 0x018BEF 06:8BDF: EE 23 04  INC ram_mission_lo
C - - - - - 0x018BF2 06:8BE2: 20 18 8F  JSR sub_8F18_prepare_next_script
bra_8BE5_RTS:
C - - - - - 0x018BF5 06:8BE5: 60        RTS



ofs_010_8BE6_0D:
C - - J - - 0x018BF6 06:8BE6: A5 F5     LDA ram_00F5
C - - - - - 0x018BF8 06:8BE8: 18        CLC
C - - - - - 0x018BF9 06:8BE9: 69 04     ADC #$04
C - - - - - 0x018BFB 06:8BEB: 90 02     BCC bra_8BEF
C - - - - - 0x018BFD 06:8BED: A9 FF     LDA #$FF
bra_8BEF:
C - - - - - 0x018BFF 06:8BEF: 85 F5     STA ram_00F5
C - - - - - 0x018C01 06:8BF1: 20 8C CF  JSR sub_0x01CF9C
C - - - - - 0x018C04 06:8BF4: A5 F5     LDA ram_00F5
C - - - - - 0x018C06 06:8BF6: C9 FF     CMP #$FF
C - - - - - 0x018C08 06:8BF8: D0 0F     BNE bra_8C09_RTS
C - - - - - 0x018C0A 06:8BFA: A9 FB     LDA #con_music_ctrl_FB
C - - - - - 0x018C0C 06:8BFC: 20 10 FC  JSR sub_0x01FC20_play_sound
C - - - - - 0x018C0F 06:8BFF: A9 80     LDA #$80
C - - - - - 0x018C11 06:8C01: 85 F3     STA ram_00F3
C - - - - - 0x018C13 06:8C03: EE 23 04  INC ram_mission_lo
C - - - - - 0x018C16 06:8C06: 20 18 8F  JSR sub_8F18_prepare_next_script
bra_8C09_RTS:
C - - - - - 0x018C19 06:8C09: 60        RTS



ofs_010_8C0A_0E:
C - - J - - 0x018C1A 06:8C0A: AD A5 04  LDA ram_04A5_counter
C - - - - - 0x018C1D 06:8C0D: 29 01     AND #$01
C - - - - - 0x018C1F 06:8C0F: D0 05     BNE bra_8C16
C - - - - - 0x018C21 06:8C11: E6 F5     INC ram_00F5
C - - - - - 0x018C23 06:8C13: 4C 18 8C  JMP loc_8C18
bra_8C16:
C - - - - - 0x018C26 06:8C16: C6 F5     DEC ram_00F5
loc_8C18:
C D 0 - - - 0x018C28 06:8C18: A5 F6     LDA ram_00F6
C - - - - - 0x018C2A 06:8C1A: D0 07     BNE bra_8C23
C - - - - - 0x018C2C 06:8C1C: AD A5 04  LDA ram_04A5_counter
C - - - - - 0x018C2F 06:8C1F: C9 20     CMP #$20
C - - - - - 0x018C31 06:8C21: 90 02     BCC bra_8C25
bra_8C23:
C - - - - - 0x018C33 06:8C23: E6 F6     INC ram_00F6
bra_8C25:
C - - - - - 0x018C35 06:8C25: A5 F6     LDA ram_00F6
C - - - - - 0x018C37 06:8C27: C9 10     CMP #$10
C - - - - - 0x018C39 06:8C29: B0 03     BCS bra_8C2E
C - - - - - 0x018C3B 06:8C2B: 20 1F B5  JSR sub_B51F
bra_8C2E:
C - - - - - 0x018C3E 06:8C2E: A5 F6     LDA ram_00F6
C - - - - - 0x018C40 06:8C30: C9 68     CMP #$68
C - - - - - 0x018C42 06:8C32: 90 0B     BCC bra_8C3F_RTS
bra_8C34:
C - - - - - 0x018C44 06:8C34: A9 FB     LDA #con_music_ctrl_FB
C - - - - - 0x018C46 06:8C36: 20 10 FC  JSR sub_0x01FC20_play_sound
C - - - - - 0x018C49 06:8C39: EE 23 04  INC ram_mission_lo
C - - - - - 0x018C4C 06:8C3C: 20 18 8F  JSR sub_8F18_prepare_next_script
bra_8C3F_RTS:
C - - - - - 0x018C4F 06:8C3F: 60        RTS



ofs_010_8C40_0F:
C - - J - - 0x018C50 06:8C40: 20 C4 CF  JSR sub_0x01CFD4
C - - - - - 0x018C53 06:8C43: E6 F5     INC ram_00F5
C - - - - - 0x018C55 06:8C45: E6 F5     INC ram_00F5
C - - - - - 0x018C57 06:8C47: E6 F5     INC ram_00F5
C - - - - - 0x018C59 06:8C49: E6 F5     INC ram_00F5
C - - - - - 0x018C5B 06:8C4B: A5 F5     LDA ram_00F5
C - - - - - 0x018C5D 06:8C4D: F0 E5     BEQ bra_8C34
C - - - - - 0x018C5F 06:8C4F: 60        RTS



ofs_010_8C50_12:
C - - J - - 0x018C60 06:8C50: 20 91 FC  JSR sub_0x01FCA1
C - - - - - 0x018C63 06:8C53: AD 43 06  LDA ram_0643
C - - - - - 0x018C66 06:8C56: C9 13     CMP #$13
C - - - - - 0x018C68 06:8C58: F0 DA     BEQ bra_8C34
C - - - - - 0x018C6A 06:8C5A: 60        RTS



ofs_010_8C5B_14:
C - - J - - 0x018C6B 06:8C5B: 20 3C CF  JSR sub_0x01CF4C
C - - - - - 0x018C6E 06:8C5E: A2 00     LDX #$00
bra_8C60_loop:
C - - - - - 0x018C70 06:8C60: B5 3C     LDA ram_003C_obj_flags,X ; 003C 003D
C - - - - - 0x018C72 06:8C62: 10 07     BPL bra_8C6B    ; if not con_003C_flag_exist
C - - - - - 0x018C74 06:8C64: BD 59 03  LDA ram_0359_obj,X
C - - - - - 0x018C77 06:8C67: C9 1D     CMP #con_0359_1D
C - - - - - 0x018C79 06:8C69: F0 52     BEQ bra_8CBD
bra_8C6B:
C - - - - - 0x018C7B 06:8C6B: E8        INX
C - - - - - 0x018C7C 06:8C6C: E0 02     CPX #$02
C - - - - - 0x018C7E 06:8C6E: 90 F0     BCC bra_8C60_loop
C - - - - - 0x018C80 06:8C70: AD 5F 06  LDA ram_065F
C - - - - - 0x018C83 06:8C73: D0 1A     BNE bra_8C8F
C - - - - - 0x018C85 06:8C75: AD A5 04  LDA ram_04A5_counter
C - - - - - 0x018C88 06:8C78: C9 09     CMP #$09
C - - - - - 0x018C8A 06:8C7A: 90 3D     BCC bra_8CB9
C - - - - - 0x018C8C 06:8C7C: A0 82     LDY #$82
C - - - - - 0x018C8E 06:8C7E: A5 F5     LDA ram_00F5
C - - - - - 0x018C90 06:8C80: C9 E0     CMP #$E0
C - - - - - 0x018C92 06:8C82: 90 02     BCC bra_8C86
C - - - - - 0x018C94 06:8C84: A0 02     LDY #$02
bra_8C86:
C - - - - - 0x018C96 06:8C86: 8C 5F 06  STY ram_065F
C - - - - - 0x018C99 06:8C89: A9 40     LDA #con_sfx_40
C - - - - - 0x018C9B 06:8C8B: 20 10 FC  JSR sub_0x01FC20_play_sound
C - - - - - 0x018C9E 06:8C8E: 60        RTS
bra_8C8F:
C - - - - - 0x018C9F 06:8C8F: 10 1B     BPL bra_8CAC
C - - - - - 0x018CA1 06:8C91: A9 82     LDA #$82
C - - - - - 0x018CA3 06:8C93: 8D 5F 06  STA ram_065F
C - - - - - 0x018CA6 06:8C96: E6 F5     INC ram_00F5
C - - - - - 0x018CA8 06:8C98: A5 F5     LDA ram_00F5
C - - - - - 0x018CAA 06:8C9A: C9 E0     CMP #$E0
C - - - - - 0x018CAC 06:8C9C: 90 1B     BCC bra_8CB9
bra_8C9E:
C - - - - - 0x018CAE 06:8C9E: A9 00     LDA #$00
C - - - - - 0x018CB0 06:8CA0: 8D 5F 06  STA ram_065F
C - - - - - 0x018CB3 06:8CA3: 8D A5 04  STA ram_04A5_counter
C - - - - - 0x018CB6 06:8CA6: A9 FB     LDA #con_music_ctrl_FB
C - - - - - 0x018CB8 06:8CA8: 20 10 FC  JSR sub_0x01FC20_play_sound
C - - - - - 0x018CBB 06:8CAB: 60        RTS
bra_8CAC:
C - - - - - 0x018CBC 06:8CAC: A9 02     LDA #$02
C - - - - - 0x018CBE 06:8CAE: 8D 5F 06  STA ram_065F
C - - - - - 0x018CC1 06:8CB1: C6 F5     DEC ram_00F5
C - - - - - 0x018CC3 06:8CB3: A5 F5     LDA ram_00F5
C - - - - - 0x018CC5 06:8CB5: C9 61     CMP #$61
C - - - - - 0x018CC7 06:8CB7: 90 E5     BCC bra_8C9E
bra_8CB9:
C - - - - - 0x018CC9 06:8CB9: 20 AC BB  JSR sub_BBAC_tractor_steam
C - - - - - 0x018CCC 06:8CBC: 60        RTS
bra_8CBD:
C - - - - - 0x018CCD 06:8CBD: E6 F5     INC ram_00F5
C - - - - - 0x018CCF 06:8CBF: A5 F5     LDA ram_00F5
C - - - - - 0x018CD1 06:8CC1: C9 F0     CMP #$F0
C - - - - - 0x018CD3 06:8CC3: F0 06     BEQ bra_8CCB
C - - - - - 0x018CD5 06:8CC5: A9 82     LDA #$82
C - - - - - 0x018CD7 06:8CC7: 8D 5F 06  STA ram_065F
C - - - - - 0x018CDA 06:8CCA: 60        RTS
bra_8CCB:
C - - - - - 0x018CDB 06:8CCB: A9 FB     LDA #con_music_ctrl_FB
C - - - - - 0x018CDD 06:8CCD: 20 10 FC  JSR sub_0x01FC20_play_sound
C - - - - - 0x018CE0 06:8CD0: A9 00     LDA #$00
C - - - - - 0x018CE2 06:8CD2: 8D 5F 06  STA ram_065F
C - - - - - 0x018CE5 06:8CD5: A9 00     LDA #con_003C_flag_00
C - - - - - 0x018CE7 06:8CD7: 85 40     STA ram_003C_obj_flags + $04
C - - - - - 0x018CE9 06:8CD9: 85 41     STA ram_003C_obj_flags + $05
C - - - - - 0x018CEB 06:8CDB: 85 42     STA ram_003C_obj_flags + $06
C - - - - - 0x018CED 06:8CDD: EE 23 04  INC ram_mission_lo
C - - - - - 0x018CF0 06:8CE0: 20 18 8F  JSR sub_8F18_prepare_next_script
C - - - - - 0x018CF3 06:8CE3: 60        RTS


; bzk garbage
- - - - - - 0x018CF4 06:8CE4: 20 41 F0  JSR sub_0x01F051
- - - - - - 0x018CF7 06:8CE7: 20 48 F0  JSR sub_0x01F058



ofs_010_8CEA_15:
- - - - - - 0x018CFA 06:8CEA: CE 2A 04  DEC ram_042A
- - - - - - 0x018CFD 06:8CED: D0 1F     BNE bra_8D0E_RTS
- - - - - - 0x018CFF 06:8CEF: A5 E8     LDA ram_for_2001
- - - - - - 0x018D01 06:8CF1: 29 08     AND #$08
- - - - - - 0x018D03 06:8CF3: D0 0D     BNE bra_8D02
- - - - - - 0x018D05 06:8CF5: CE 2B 04  DEC ram_042B
- - - - - - 0x018D08 06:8CF8: AD 2B 04  LDA ram_042B
- - - - - - 0x018D0B 06:8CFB: C9 05     CMP #$05
- - - - - - 0x018D0D 06:8CFD: B0 03     BCS bra_8D02
- - - - - - 0x018D0F 06:8CFF: 4C C2 88  JMP loc_88C2
bra_8D02:
- - - - - - 0x018D12 06:8D02: A5 E8     LDA ram_for_2001
- - - - - - 0x018D14 06:8D04: 49 08     EOR #$08
- - - - - - 0x018D16 06:8D06: 85 E8     STA ram_for_2001
- - - - - - 0x018D18 06:8D08: AD 2B 04  LDA ram_042B
- - - - - - 0x018D1B 06:8D0B: 8D 2A 04  STA ram_042A
bra_8D0E_RTS:
- - - - - - 0x018D1E 06:8D0E: 60        RTS



ofs_010_8D0F_17:
- - - - - - 0x018D1F 06:8D0F: A5 D0     LDA ram_obj_pos_X_lo_cam
- - - - - - 0x018D21 06:8D11: 18        CLC
- - - - - - 0x018D22 06:8D12: 69 06     ADC #< $0006
- - - - - - 0x018D24 06:8D14: 85 D0     STA ram_obj_pos_X_lo_cam
- - - - - - 0x018D26 06:8D16: A5 D1     LDA ram_obj_pos_X_hi_cam
- - - - - - 0x018D28 06:8D18: 69 00     ADC #> $0006
- - - - - - 0x018D2A 06:8D1A: 85 D1     STA ram_obj_pos_X_hi_cam
- - - - - - 0x018D2C 06:8D1C: C9 01     CMP #$01
- - - - - - 0x018D2E 06:8D1E: D0 0A     BNE bra_8D2A
- - - - - - 0x018D30 06:8D20: A9 00     LDA #$00
- - - - - - 0x018D32 06:8D22: 85 D0     STA ram_obj_pos_X_lo_cam
- - - - - - 0x018D34 06:8D24: 20 48 F0  JSR sub_0x01F058
- - - - - - 0x018D37 06:8D27: 4C C2 88  JMP loc_88C2
bra_8D2A:
- - - - - - 0x018D3A 06:8D2A: A2 01     LDX #$01
bra_8D2C_loop:
- - - - - - 0x018D3C 06:8D2C: B5 77     LDA ram_obj_pos_X_lo,X
- - - - - - 0x018D3E 06:8D2E: 18        CLC
- - - - - - 0x018D3F 06:8D2F: 69 06     ADC #< $0006
- - - - - - 0x018D41 06:8D31: 95 77     STA ram_obj_pos_X_lo,X
- - - - - - 0x018D43 06:8D33: B5 80     LDA ram_obj_pos_X_hi,X
- - - - - - 0x018D45 06:8D35: 69 00     ADC #> $0006
- - - - - - 0x018D47 06:8D37: 95 80     STA ram_obj_pos_X_hi,X
- - - - - - 0x018D49 06:8D39: CA        DEX
- - - - - - 0x018D4A 06:8D3A: 10 F0     BPL bra_8D2C_loop
- - - - - - 0x018D4C 06:8D3C: 60        RTS



ofs_010_8D3D_18:
; mission 0D only
C - - J - - 0x018D4D 06:8D3D: A5 F9     LDA ram_00F9
C - - - - - 0x018D4F 06:8D3F: D0 21     BNE bra_8D62
C - - - - - 0x018D51 06:8D41: A2 01     LDX #$01
bra_8D43_loop:
C - - - - - 0x018D53 06:8D43: A9 08     LDA #con_9859_08
C - - - - - 0x018D55 06:8D45: 20 59 97  JSR sub_9759
C - - - - - 0x018D58 06:8D48: B0 04     BCS bra_8D4E
C - - - - - 0x018D5A 06:8D4A: CA        DEX
C - - - - - 0x018D5B 06:8D4B: 10 F6     BPL bra_8D43_loop
C - - - - - 0x018D5D 06:8D4D: 60        RTS
bra_8D4E:
C - - - - - 0x018D5E 06:8D4E: E6 F9     INC ram_00F9
C - - - - - 0x018D60 06:8D50: 20 D3 8D  JSR sub_8DD3_add_2_lives
C - - - - - 0x018D63 06:8D53: A9 38     LDA #con_sfx_illusion
C - - - - - 0x018D65 06:8D55: 20 10 FC  JSR sub_0x01FC20_play_sound
C - - - - - 0x018D68 06:8D58: A9 03     LDA #con_063F_01 + con_063F_02
C - - - - - 0x018D6A 06:8D5A: 8D 3F 06  STA ram_063F_flags
C - - - - - 0x018D6D 06:8D5D: A9 00     LDA #con_003C_flag_00
C - - - - - 0x018D6F 06:8D5F: 85 3E     STA ram_003C_obj_flags + $02
C - - - - - 0x018D71 06:8D61: 60        RTS
bra_8D62:
C - - - - - 0x018D72 06:8D62: C9 01     CMP #$01
C - - - - - 0x018D74 06:8D64: D0 0D     BNE bra_8D73
C - - - - - 0x018D76 06:8D66: AD 3F 06  LDA ram_063F_flags
C - - - - - 0x018D79 06:8D69: 10 07     BPL bra_8D72_RTS    ; if not con_063F_80
C - - - - - 0x018D7B 06:8D6B: E6 F9     INC ram_00F9
C - - - - - 0x018D7D 06:8D6D: A9 20     LDA #$20
C - - - - - 0x018D7F 06:8D6F: 8D 2A 04  STA ram_042A
bra_8D72_RTS:
C - - - - - 0x018D82 06:8D72: 60        RTS
bra_8D73:
C - - - - - 0x018D83 06:8D73: C9 02     CMP #$02
C - - - - - 0x018D85 06:8D75: D0 39     BNE bra_8DB0
C - - - - - 0x018D87 06:8D77: CE 2A 04  DEC ram_042A
C - - - - - 0x018D8A 06:8D7A: D0 33     BNE bra_8DAF_RTS
C - - - - - 0x018D8C 06:8D7C: E6 F9     INC ram_00F9
C - - - - - 0x018D8E 06:8D7E: A2 02     LDX #$02
C - - - - - 0x018D90 06:8D80: A9 11     LDA #con_obj_shadow_warrior
C - - - - - 0x018D92 06:8D82: 95 BF     STA ram_obj_id,X
C - - - - - 0x018D94 06:8D84: A9 2C     LDA #con_state_shadow_warrior_appears
C - - - - - 0x018D96 06:8D86: 95 43     STA ram_state,X
C - - - - - 0x018D98 06:8D88: A9 00     LDA #$00    ; con_004A_flag_00
C - - - - - 0x018D9A 06:8D8A: 95 4A     STA ram_004A_obj_flags,X
C - - - - - 0x018D9C 06:8D8C: 95 B6     STA ram_obj_pos_Z_hi,X
C - - - - - 0x018D9E 06:8D8E: 95 9B     STA ram_obj_pos_Y_hi,X
C - - - - - 0x018DA0 06:8D90: 95 80     STA ram_obj_pos_X_hi,X
C - - - - - 0x018DA2 06:8D92: A9 0F     LDA #$0F
C - - - - - 0x018DA4 06:8D94: 8D 90 04  STA ram_pal_spr_new
C - - - - - 0x018DA7 06:8D97: A9 80     LDA #$80
C - - - - - 0x018DA9 06:8D99: 95 77     STA ram_obj_pos_X_lo,X
C - - - - - 0x018DAB 06:8D9B: A9 70     LDA #$70
C - - - - - 0x018DAD 06:8D9D: 95 92     STA ram_obj_pos_Y_lo,X
C - - - - - 0x018DAF 06:8D9F: A9 20     LDA #$20
C - - - - - 0x018DB1 06:8DA1: 95 AD     STA ram_obj_pos_Z_lo,X
C - - - - - 0x018DB3 06:8DA3: A9 81     LDA #con_003C_flag_exist + con_003C_flag_01
C - - - - - 0x018DB5 06:8DA5: 95 3C     STA ram_003C_obj_flags,X ; 003E
C - - - - - 0x018DB7 06:8DA7: A9 60     LDA #con_chr_bank + $60
C - - - - - 0x018DB9 06:8DA9: 8D 99 04  STA ram_chr_spr_2
C - - - - - 0x018DBC 06:8DAC: 20 DD FE  JSR sub_0x01FEED_write_spr_chr_banks
bra_8DAF_RTS:
C - - - - - 0x018DBF 06:8DAF: 60        RTS
bra_8DB0:
C - - - - - 0x018DC0 06:8DB0: C9 03     CMP #$03
C - - - - - 0x018DC2 06:8DB2: D0 10     BNE bra_8DC4
C - - - - - 0x018DC4 06:8DB4: A2 02     LDX #$02
C - - - - - 0x018DC6 06:8DB6: B5 43     LDA ram_state,X
C - - - - - 0x018DC8 06:8DB8: C9 7F     CMP #con_state_hair_grabbed
C - - - - - 0x018DCA 06:8DBA: D0 07     BNE bra_8DC3_RTS
C - - - - - 0x018DCC 06:8DBC: E6 F9     INC ram_00F9
C - - - - - 0x018DCE 06:8DBE: A9 20     LDA #$20
C - - - - - 0x018DD0 06:8DC0: 8D 2A 04  STA ram_042A
bra_8DC3_RTS:
C - - - - - 0x018DD3 06:8DC3: 60        RTS
bra_8DC4:
C - - - - - 0x018DD4 06:8DC4: CE 2A 04  DEC ram_042A
C - - - - - 0x018DD7 06:8DC7: D0 09     BNE bra_8DD2_RTS
C - - - - - 0x018DD9 06:8DC9: A5 34     LDA ram_game_mode
C - - - - - 0x018DDB 06:8DCB: 09 01     ORA #con_gm_01
C - - - - - 0x018DDD 06:8DCD: 85 34     STA ram_game_mode
C - - - - - 0x018DDF 06:8DCF: 20 41 F0  JSR sub_0x01F051
bra_8DD2_RTS:
C - - - - - 0x018DE2 06:8DD2: 60        RTS



sub_8DD3_add_2_lives:
C - - - - - 0x018DE3 06:8DD3: A5 34     LDA ram_game_mode
C - - - - - 0x018DE5 06:8DD5: 10 13     BPL bra_8DEA_RTS
; if con_gm_2_players
- - - - - - 0x018DE7 06:8DD7: 29 40     AND #con_gm_friendly_fire
- - - - - - 0x018DE9 06:8DD9: F0 0F     BEQ bra_8DEA_RTS    ; if no friendly fire
- - - - - - 0x018DEB 06:8DDB: BD 32 04  LDA ram_lives,X
- - - - - - 0x018DEE 06:8DDE: 18        CLC
- - - - - - 0x018DEF 06:8DDF: 69 02     ADC #$02
- - - - - - 0x018DF1 06:8DE1: C9 0B     CMP #$0B
- - - - - - 0x018DF3 06:8DE3: 90 02     BCC bra_8DE7_not_overflow
- - - - - - 0x018DF5 06:8DE5: A9 0A     LDA #$0A
bra_8DE7_not_overflow:
- - - - - - 0x018DF7 06:8DE7: 9D 32 04  STA ram_lives,X
bra_8DEA_RTS:
C - - - - - 0x018DFA 06:8DEA: 60        RTS



sub_8DEB:
bra_8DEB_loop:
C - - - - - 0x018DFB 06:8DEB: B5 77     LDA ram_obj_pos_X_lo,X
C - - - - - 0x018DFD 06:8DED: 18        CLC
C - - - - - 0x018DFE 06:8DEE: 69 06     ADC #< $0006
C - - - - - 0x018E00 06:8DF0: 95 77     STA ram_obj_pos_X_lo,X
C - - - - - 0x018E02 06:8DF2: B5 80     LDA ram_obj_pos_X_hi,X
C - - - - - 0x018E04 06:8DF4: 69 00     ADC #> $0006
C - - - - - 0x018E06 06:8DF6: 95 80     STA ram_obj_pos_X_hi,X
C - - - - - 0x018E08 06:8DF8: CA        DEX
C - - - - - 0x018E09 06:8DF9: 10 F0     BPL bra_8DEB_loop
C - - - - - 0x018E0B 06:8DFB: 60        RTS



ofs_010_8DFC_19_shadow_warrior:
C - - J - - 0x018E0C 06:8DFC: AD 25 04  LDA ram_enemy_spawn_counter
C - - - - - 0x018E0F 06:8DFF: F0 09     BEQ bra_8E0A
- - - - - - 0x018E11 06:8E01: 20 47 8B  JSR sub_8B47_find_empty_enemy_slot
- - - - - - 0x018E14 06:8E04: 90 03     BCC bra_8E09_RTS
- - - - - - 0x018E16 06:8E06: 20 12 8B  JSR sub_8B12_create_1_enemy
bra_8E09_RTS:
- - - - - - 0x018E19 06:8E09: 60        RTS
bra_8E0A:
C - - - - - 0x018E1A 06:8E0A: 20 25 8B  JSR sub_8B25_wait_for_all_enemies_dead
C - - - - - 0x018E1D 06:8E0D: 20 11 8E  JSR sub_8E11_change_room_when_shadow_warrior_is_half_dead
C - - - - - 0x018E20 06:8E10: 60        RTS



sub_8E11_change_room_when_shadow_warrior_is_half_dead:
C - - - - - 0x018E21 06:8E11: A5 F9     LDA ram_00F9
C - - - - - 0x018E23 06:8E13: D0 0F     BNE bra_8E24
C - - - - - 0x018E25 06:8E15: AD 20 04  LDA ram_hp + $02
C - - - - - 0x018E28 06:8E18: C9 7F     CMP #$7F
C - - - - - 0x018E2A 06:8E1A: B0 07     BCS bra_8E23_RTS
C - - - - - 0x018E2C 06:8E1C: A9 03     LDA #con_063F_01 + con_063F_02
C - - - - - 0x018E2E 06:8E1E: 8D 3F 06  STA ram_063F_flags
C - - - - - 0x018E31 06:8E21: E6 F9     INC ram_00F9    ; 01
bra_8E23_RTS:
C - - - - - 0x018E33 06:8E23: 60        RTS
bra_8E24:
C - - - - - 0x018E34 06:8E24: C9 01     CMP #$01
C - - - - - 0x018E36 06:8E26: D0 08     BNE bra_8E30
; 01
C - - - - - 0x018E38 06:8E28: AD 3F 06  LDA ram_063F_flags
C - - - - - 0x018E3B 06:8E2B: 10 02     BPL bra_8E2F_RTS    ; if not con_063F_80
C - - - - - 0x018E3D 06:8E2D: E6 F9     INC ram_00F9    ; 02
bra_8E2F_RTS:
C - - - - - 0x018E3F 06:8E2F: 60        RTS
bra_8E30:
C - - - - - 0x018E40 06:8E30: C9 02     CMP #$02
C - - - - - 0x018E42 06:8E32: D0 2B     BNE bra_8E5F_RTS
; 02
C - - - - - 0x018E44 06:8E34: A2 02     LDX #$02
C - - - - - 0x018E46 06:8E36: 20 EB 8D  JSR sub_8DEB
C - - - - - 0x018E49 06:8E39: A5 D0     LDA ram_obj_pos_X_lo_cam
C - - - - - 0x018E4B 06:8E3B: 18        CLC
C - - - - - 0x018E4C 06:8E3C: 69 06     ADC #< $0006
C - - - - - 0x018E4E 06:8E3E: 85 D0     STA ram_obj_pos_X_lo_cam
C - - - - - 0x018E50 06:8E40: A5 D1     LDA ram_obj_pos_X_hi_cam
C - - - - - 0x018E52 06:8E42: 69 00     ADC #> $0006
C - - - - - 0x018E54 06:8E44: 85 D1     STA ram_obj_pos_X_hi_cam
C - - - - - 0x018E56 06:8E46: C9 02     CMP #$02
C - - - - - 0x018E58 06:8E48: D0 15     BNE bra_8E5F_RTS
C - - - - - 0x018E5A 06:8E4A: A9 00     LDA #$00
C - - - - - 0x018E5C 06:8E4C: 85 D0     STA ram_obj_pos_X_lo_cam
C - - - - - 0x018E5E 06:8E4E: A9 0C     LDA #con_music_mission_9
C - - - - - 0x018E60 06:8E50: 20 10 FC  JSR sub_0x01FC20_play_sound
C - - - - - 0x018E63 06:8E53: A9 02     LDA #con_063F_02
C - - - - - 0x018E65 06:8E55: 8D 3F 06  STA ram_063F_flags
C - - - - - 0x018E68 06:8E58: A9 11     LDA #con_music_boss_final
C - - - - - 0x018E6A 06:8E5A: 20 10 FC  JSR sub_0x01FC20_play_sound
C - - - - - 0x018E6D 06:8E5D: E6 F9     INC ram_00F9    ; 03
bra_8E5F_RTS:
C - - - - - 0x018E6F 06:8E5F: 60        RTS



ofs_010_8E60_1A:
C - - J - - 0x018E70 06:8E60: AD 3F 06  LDA ram_063F_flags
C - - - - - 0x018E73 06:8E63: 10 20     BPL bra_8E85_RTS    ; if not con_063F_80
C - - - - - 0x018E75 06:8E65: AD 8F 04  LDA ram_pal_bg_new
C - - - - - 0x018E78 06:8E68: C9 32     CMP #$32
C - - - - - 0x018E7A 06:8E6A: F0 13     BEQ bra_8E7F
C - - - - - 0x018E7C 06:8E6C: CE 2A 04  DEC ram_042A
C - - - - - 0x018E7F 06:8E6F: D0 14     BNE bra_8E85_RTS
C - - - - - 0x018E81 06:8E71: A9 02     LDA #con_063F_02
C - - - - - 0x018E83 06:8E73: 8D 3F 06  STA ram_063F_flags
C - - - - - 0x018E86 06:8E76: A9 32     LDA #$32
C - - - - - 0x018E88 06:8E78: 8D 8F 04  STA ram_pal_bg_new
C - - - - - 0x018E8B 06:8E7B: 8D 91 04  STA ram_pal_bg_current
C - - - - - 0x018E8E 06:8E7E: 60        RTS
bra_8E7F:
C - - - - - 0x018E8F 06:8E7F: EE 23 04  INC ram_mission_lo
C - - - - - 0x018E92 06:8E82: 20 18 8F  JSR sub_8F18_prepare_next_script
bra_8E85_RTS:
C - - - - - 0x018E95 06:8E85: 60        RTS


; bzk garbage
- - - - - - 0x018E96 06:8E86: A5 34     LDA ram_game_mode
- - - - - - 0x018E98 06:8E88: 10 14     BPL bra_8E9E_single_player
; if con_gm_2_players
- - - - - - 0x018E9A 06:8E8A: A5 3C     LDA ram_003C_obj_flags
- - - - - - 0x018E9C 06:8E8C: 05 3D     ORA ram_003C_obj_flags + $01
- - - - - - 0x018E9E 06:8E8E: 10 04     BPL bra_8E94    ; if not con_003C_flag_exist
- - - - - - 0x018EA0 06:8E90: 20 40 D1  JSR sub_0x01D150_respawn_player
- - - - - - 0x018EA3 06:8E93: 60        RTS
bra_8E94:
- - - - - - 0x018EA4 06:8E94: AD 32 04  LDA ram_lives
- - - - - - 0x018EA7 06:8E97: 0D 33 04  ORA ram_lives + $01
- - - - - - 0x018EAA 06:8E9A: F0 17     BEQ bra_8EB3
- - - - - - 0x018EAC 06:8E9C: D0 09     BNE bra_8EA7    ; jmp
bra_8E9E_single_player:
- - - - - - 0x018EAE 06:8E9E: A5 3C     LDA ram_003C_obj_flags
- - - - - - 0x018EB0 06:8EA0: 30 30     BMI bra_8ED2_RTS    ; if con_003C_flag_exist
- - - - - - 0x018EB2 06:8EA2: AD 32 04  LDA ram_lives
- - - - - - 0x018EB5 06:8EA5: F0 0C     BEQ bra_8EB3
bra_8EA7:
- - - - - - 0x018EB7 06:8EA7: A9 00     LDA #$00
- - - - - - 0x018EB9 06:8EA9: 8D 23 04  STA ram_mission_lo
- - - - - - 0x018EBC 06:8EAC: A5 34     LDA ram_game_mode
- - - - - - 0x018EBE 06:8EAE: 09 04     ORA #con_gm_04
- - - - - - 0x018EC0 06:8EB0: 85 34     STA ram_game_mode
- - - - - - 0x018EC2 06:8EB2: 60        RTS
bra_8EB3:
- - - - - - 0x018EC3 06:8EB3: A5 34     LDA ram_game_mode
- - - - - - 0x018EC5 06:8EB5: 09 02     ORA #con_gm_02
- - - - - - 0x018EC7 06:8EB7: 85 34     STA ram_game_mode
- - - - - - 0x018EC9 06:8EB9: A5 35     LDA ram_game_flags_1
- - - - - - 0x018ECB 06:8EBB: 29 BF     AND #con_gf1_40 ^ $FF
- - - - - - 0x018ECD 06:8EBD: 85 35     STA ram_game_flags_1
- - - - - - 0x018ECF 06:8EBF: AE 22 04  LDX ram_mission_hi
- - - - - - 0x018ED2 06:8EC2: BD 9E 95  LDA tbl_959E_checkpoint_mission,X
- - - - - - 0x018ED5 06:8EC5: F0 06     BEQ bra_8ECD
- - - - - - 0x018ED7 06:8EC7: A5 35     LDA ram_game_flags_1
- - - - - - 0x018ED9 06:8EC9: 09 40     ORA #con_gf1_40
- - - - - - 0x018EDB 06:8ECB: 85 35     STA ram_game_flags_1
bra_8ECD:
- - - - - - 0x018EDD 06:8ECD: A9 12     LDA #con_music_game_over
- - - - - - 0x018EDF 06:8ECF: 20 10 FC  JSR sub_0x01FC20_play_sound
bra_8ED2_RTS:
- - - - - - 0x018EE2 06:8ED2: 60        RTS



sub_8ED3:
C - - - - - 0x018EE3 06:8ED3: A5 34     LDA ram_game_mode
C - - - - - 0x018EE5 06:8ED5: 10 18     BPL bra_8EEF_single_player
; if con_gm_2_players
C - - - - - 0x018EE7 06:8ED7: A5 3C     LDA ram_003C_obj_flags
C - - - - - 0x018EE9 06:8ED9: 25 3D     AND ram_003C_obj_flags + $01
C - - - - - 0x018EEB 06:8EDB: 30 3A     BMI bra_8F17_RTS    ; if con_003C_flag_exist
C - - - - - 0x018EED 06:8EDD: A5 3C     LDA ram_003C_obj_flags
C - - - - - 0x018EEF 06:8EDF: 05 3D     ORA ram_003C_obj_flags + $01
C - - - - - 0x018EF1 06:8EE1: 30 08     BMI bra_8EEB    ; if con_003C_flag_exist
C - - - - - 0x018EF3 06:8EE3: AD 32 04  LDA ram_lives
C - - - - - 0x018EF6 06:8EE6: 0D 33 04  ORA ram_lives + $01
C - - - - - 0x018EF9 06:8EE9: F0 0D     BEQ bra_8EF8
bra_8EEB:
C - - - - - 0x018EFB 06:8EEB: 20 40 D1  JSR sub_0x01D150_respawn_player
C - - - - - 0x018EFE 06:8EEE: 60        RTS
bra_8EEF_single_player:
C - - - - - 0x018EFF 06:8EEF: A5 3C     LDA ram_003C_obj_flags
C - - - - - 0x018F01 06:8EF1: 30 24     BMI bra_8F17_RTS    ; if con_003C_flag_exist
C - - - - - 0x018F03 06:8EF3: AD 32 04  LDA ram_lives
C - - - - - 0x018F06 06:8EF6: D0 F3     BNE bra_8EEB
bra_8EF8:
C - - - - - 0x018F08 06:8EF8: A5 34     LDA ram_game_mode
C - - - - - 0x018F0A 06:8EFA: 09 02     ORA #con_gm_02
C - - - - - 0x018F0C 06:8EFC: 85 34     STA ram_game_mode
C - - - - - 0x018F0E 06:8EFE: A5 35     LDA ram_game_flags_1
C - - - - - 0x018F10 06:8F00: 29 BF     AND #con_gf1_40 ^ $FF
C - - - - - 0x018F12 06:8F02: 85 35     STA ram_game_flags_1
C - - - - - 0x018F14 06:8F04: AE 22 04  LDX ram_mission_hi
C - - - - - 0x018F17 06:8F07: BD 9E 95  LDA tbl_959E_checkpoint_mission,X
C - - - - - 0x018F1A 06:8F0A: F0 06     BEQ bra_8F12
C - - - - - 0x018F1C 06:8F0C: A5 35     LDA ram_game_flags_1
C - - - - - 0x018F1E 06:8F0E: 09 40     ORA #con_gf1_40
C - - - - - 0x018F20 06:8F10: 85 35     STA ram_game_flags_1
bra_8F12:
C - - - - - 0x018F22 06:8F12: A9 12     LDA #con_music_game_over
C - - - - - 0x018F24 06:8F14: 20 10 FC  JSR sub_0x01FC20_play_sound
bra_8F17_RTS:
C - - - - - 0x018F27 06:8F17: 60        RTS



sub_8F18_prepare_next_script:
loc_8F18_prepare_next_script:
C D 0 - - - 0x018F28 06:8F18: 20 D5 92  JSR sub_92D5_calculate_submission_pointer
C - - - - - 0x018F2B 06:8F1B: A9 00     LDA #$00    ; con_003C_flag_00
C - - - - - 0x018F2D 06:8F1D: 85 3E     STA ram_003C_obj_flags + $02
C - - - - - 0x018F2F 06:8F1F: 85 3F     STA ram_003C_obj_flags + $03
C - - - - - 0x018F31 06:8F21: 85 40     STA ram_003C_obj_flags + $04
C - - - - - 0x018F33 06:8F23: 85 41     STA ram_003C_obj_flags + $05
C - - - - - 0x018F35 06:8F25: 85 42     STA ram_003C_obj_flags + $06
C - - - - - 0x018F37 06:8F27: 85 CF     STA ram_00CF
C - - - - - 0x018F39 06:8F29: 8D 46 04  STA ram_0446_obj
C - - - - - 0x018F3C 06:8F2C: 8D 47 04  STA ram_0446_obj + $01
C - - - - - 0x018F3F 06:8F2F: 8D 4A 04  STA ram_044A_obj
C - - - - - 0x018F42 06:8F32: 8D 4B 04  STA ram_044A_obj + $01
C - - - - - 0x018F45 06:8F35: A5 36     LDA ram_0036_enemy
C - - - - - 0x018F47 06:8F37: 29 F7     AND #con_0036_08 ^ $FF
C - - - - - 0x018F49 06:8F39: 85 36     STA ram_0036_enemy
C - - - - - 0x018F4B 06:8F3B: A5 37     LDA ram_0036_enemy + $01
C - - - - - 0x018F4D 06:8F3D: 29 F7     AND #con_0036_08 ^ $FF
C - - - - - 0x018F4F 06:8F3F: 85 37     STA ram_0036_enemy + $01
C - - - - - 0x018F51 06:8F41: A0 00     LDY #$00
C - - - - - 0x018F53 06:8F43: B1 2B     LDA (ram_002B),Y
C - - - - - 0x018F55 06:8F45: 8D 24 04  STA ram_mission_script
C - - - - - 0x018F58 06:8F48: 0A        ASL
C - - - - - 0x018F59 06:8F49: AA        TAX
C - - - - - 0x018F5A 06:8F4A: 90 0D     BCC bra_8F59_00_7F
; 80-81
C - - - - - 0x018F5C 06:8F4C: BD A5 8F  LDA tbl_8FA5,X
C - - - - - 0x018F5F 06:8F4F: 85 29     STA ram_0029
C - - - - - 0x018F61 06:8F51: BD A6 8F  LDA tbl_8FA5 + $01,X
C - - - - - 0x018F64 06:8F54: 85 2A     STA ram_002A
C - - - - - 0x018F66 06:8F56: 4C 63 8F  JMP loc_8F63
bra_8F59_00_7F:
C - - - - - 0x018F69 06:8F59: BD 6D 8F  LDA tbl_8F6D_mission_script_handler_preparations,X
C - - - - - 0x018F6C 06:8F5C: 85 29     STA ram_0029
C - - - - - 0x018F6E 06:8F5E: BD 6E 8F  LDA tbl_8F6D_mission_script_handler_preparations + $01,X
C - - - - - 0x018F71 06:8F61: 85 2A     STA ram_002A
loc_8F63:
C D 0 - - - 0x018F73 06:8F63: A9 8F     LDA #> ( ofs_8F6C_RTS - $01 )
C - - - - - 0x018F75 06:8F65: 48        PHA
C - - - - - 0x018F76 06:8F66: A9 6B     LDA #< ( ofs_8F6C_RTS - $01 )
C - - - - - 0x018F78 06:8F68: 48        PHA
C - - - - - 0x018F79 06:8F69: 6C 29 00  JMP (ram_0029)



ofs_8F6C_RTS:
C - - - - - 0x018F7C 06:8F6C: 60        RTS



tbl_8F6D_mission_script_handler_preparations:
; these handlers are executed only once
; see con_884D_script
- D 0 - - - 0x018F7D 06:8F6D: A9 8F     .word ofs_011_8FA9_00
- D 0 - - - 0x018F7F 06:8F6F: 86 90     .word ofs_011_9086_01_hand_cursor
- D 0 - - - 0x018F81 06:8F71: BC 90     .word ofs_011_90BC_02_RTS
- D 0 - - - 0x018F83 06:8F73: BD 90     .word ofs_011_90BD_03
- D 0 - - - 0x018F85 06:8F75: C9 90     .word ofs_011_90C9_04_enter_door
- D 0 - - - 0x018F87 06:8F77: D1 90     .word ofs_011_90D1_05_elevator_going_down
- D 0 - - - 0x018F89 06:8F79: 0A 91     .word ofs_011_910A_06
- D 0 - - - 0x018F8B 06:8F7B: BC 90     .word ofs_011_90BC_07_RTS
- D 0 - - - 0x018F8D 06:8F7D: 2D 91     .word ofs_011_912D_08
- D 0 - - - 0x018F8F 06:8F7F: 4B 91     .word ofs_011_914B_09_emeny_spawn_at_door
- D 0 - - - 0x018F91 06:8F81: 1E 91     .word ofs_011_911E_0A
- D 0 - - - 0x018F93 06:8F83: 68 91     .word ofs_011_9168_0B_final_boss_defeated
- D 0 - - - 0x018F95 06:8F85: 6F 91     .word ofs_011_916F_0C
- D 0 - - - 0x018F97 06:8F87: 91 91     .word ofs_011_9191_0D
- D 0 - - - 0x018F99 06:8F89: D0 91     .word ofs_011_91D0_0E
- D 0 - - - 0x018F9B 06:8F8B: 99 91     .word ofs_011_9199_0F
- D 0 - - - 0x018F9D 06:8F8D: E6 91     .word ofs_011_91E6_10
- D 0 - - - 0x018F9F 06:8F8F: EC 91     .word ofs_011_91EC_11
- D 0 - - - 0x018FA1 06:8F91: A7 91     .word ofs_011_91A7_12
- D 0 - - - 0x018FA3 06:8F93: E0 91     .word ofs_011_91E0_13
- D 0 - - - 0x018FA5 06:8F95: F2 91     .word ofs_011_91F2_14
- - - - - - 0x018FA7 06:8F97: 41 92     .word ofs_011_9241_15
- D 0 - - - 0x018FA9 06:8F99: 4C 92     .word ofs_011_924C_16
- - - - - - 0x018FAB 06:8F9B: BC 90     .word ofs_011_90BC_17_RTS
- D 0 - - - 0x018FAD 06:8F9D: 54 92     .word ofs_011_9254_18
- D 0 - - - 0x018FAF 06:8F9F: AE 92     .word ofs_011_92AE_19_shadow_warrior
- D 0 - - - 0x018FB1 06:8FA1: B5 92     .word ofs_011_92B5_1A
- D 0 - - - 0x018FB3 06:8FA3: C0 92     .word ofs_011_92C0_1B



tbl_8FA5:
; see con_884D_script
- D 0 - - - 0x018FB5 06:8FA5: C6 92     .word ofs_012_92C6_80
- D 0 - - - 0x018FB7 06:8FA7: CE 92     .word ofs_012_92CE_81



loc_8FA9:
ofs_011_8FA9_00:
C D 0 J - - 0x018FB9 06:8FA9: A2 00     LDX #$00
C - - - - - 0x018FBB 06:8FAB: 20 39 90  JSR sub_9039_prepare_enemy_chr_bank_and_id
C - - - - - 0x018FBE 06:8FAE: 20 4E 90  JSR sub_904E_prepare_camera_limit
C - - - - - 0x018FC1 06:8FB1: 20 DF 8F  JSR sub_8FDF_spawn_more_enemies
C - - - - - 0x018FC4 06:8FB4: F0 0F     BEQ bra_8FC5
C - - - - - 0x018FC6 06:8FB6: A0 0D     LDY #$0D
bra_8FB8_loop:
C - - - - - 0x018FC8 06:8FB8: 20 F7 92  JSR sub_92F7_spawn_enemies_from_mission_data
C - - - - - 0x018FCB 06:8FBB: CE 25 04  DEC ram_enemy_spawn_counter
C - - - - - 0x018FCE 06:8FBE: F0 05     BEQ bra_8FC5
C - - - - - 0x018FD0 06:8FC0: E8        INX
C - - - - - 0x018FD1 06:8FC1: E0 02     CPX #$02
C - - - - - 0x018FD3 06:8FC3: 90 F3     BCC bra_8FB8_loop
bra_8FC5:
C - - - - - 0x018FD5 06:8FC5: 20 CC 8F  JSR sub_8FCC
C - - - - - 0x018FD8 06:8FC8: 20 DD FE  JSR sub_0x01FEED_write_spr_chr_banks
C - - - - - 0x018FDB 06:8FCB: 60        RTS



sub_8FCC:
C - - - - - 0x018FDC 06:8FCC: A5 C1     LDA ram_obj_id + $02
C - - - - - 0x018FDE 06:8FCE: C9 0C     CMP #con_obj_doppelganger
C - - - - - 0x018FE0 06:8FD0: D0 0C     BNE bra_8FDE_RTS
C - - - - - 0x018FE2 06:8FD2: A9 02     LDA #con_004A_flag_hair_grabbed
C - - - - - 0x018FE4 06:8FD4: 85 4C     STA ram_004A_obj_flags + $02
C - - - - - 0x018FE6 06:8FD6: 85 4D     STA ram_004A_obj_flags + $03
C - - - - - 0x018FE8 06:8FD8: A9 7F     LDA #con_anim_id + $7F
C - - - - - 0x018FEA 06:8FDA: 85 C9     STA ram_animation_id + $02
C - - - - - 0x018FEC 06:8FDC: 85 CA     STA ram_animation_id + $03
bra_8FDE_RTS:
C - - - - - 0x018FEE 06:8FDE: 60        RTS



sub_8FDF_spawn_more_enemies:
C - - - - - 0x018FEF 06:8FDF: A5 C1     LDA ram_obj_id + $02
C - - - - - 0x018FF1 06:8FE1: C9 0C     CMP #con_obj_doppelganger
C - - - - - 0x018FF3 06:8FE3: D0 1D     BNE bra_9002
C - - - - - 0x018FF5 06:8FE5: A5 3C     LDA ram_003C_obj_flags
C - - - - - 0x018FF7 06:8FE7: 25 3D     AND ram_003C_obj_flags + $01
C - - - - - 0x018FF9 06:8FE9: 30 17     BMI bra_9002    ; if con_003C_flag_exist
C - - - - - 0x018FFB 06:8FEB: A5 3C     LDA ram_003C_obj_flags
C - - - - - 0x018FFD 06:8FED: 30 05     BMI bra_8FF4    ; if con_003C_flag_exist
- - - - - - 0x018FFF 06:8FEF: AD 32 04  LDA ram_lives
- - - - - - 0x019002 06:8FF2: F0 09     BEQ bra_8FFD
bra_8FF4:
C - - - - - 0x019004 06:8FF4: A5 3D     LDA ram_003C_obj_flags + $01
C - - - - - 0x019006 06:8FF6: 30 0A     BMI bra_9002    ; if con_003C_flag_exist
C - - - - - 0x019008 06:8FF8: AD 33 04  LDA ram_lives + $01
C - - - - - 0x01900B 06:8FFB: D0 05     BNE bra_9002
bra_8FFD:
C - - - - - 0x01900D 06:8FFD: A9 01     LDA #$01
C - - - - - 0x01900F 06:8FFF: 4C 06 90  JMP loc_9006    ; bzk optimize, BNE
bra_9002:
C - - - - - 0x019012 06:9002: A0 0C     LDY #$0C
C - - - - - 0x019014 06:9004: B1 2B     LDA (ram_002B),Y
loc_9006:
C D 0 - - - 0x019016 06:9006: 8D 25 04  STA ram_enemy_spawn_counter
C - - - - - 0x019019 06:9009: F0 23     BEQ bra_902E_RTS
C - - - - - 0x01901B 06:900B: 8A        TXA
C - - - - - 0x01901C 06:900C: 48        PHA
C - - - - - 0x01901D 06:900D: A2 00     LDX #$00    ; 1p
C - - - - - 0x01901F 06:900F: A5 3C     LDA ram_003C_obj_flags
C - - - - - 0x019021 06:9011: 25 3D     AND ram_003C_obj_flags + $01
C - - - - - 0x019023 06:9013: 30 14     BMI bra_9029    ; if con_003C_flag_exist
C - - - - - 0x019025 06:9015: A5 3C     LDA ram_003C_obj_flags
C - - - - - 0x019027 06:9017: 10 02     BPL bra_901B    ; if not con_003C_flag_exist
C - - - - - 0x019029 06:9019: A2 01     LDX #$01    ; 2p
bra_901B:
C - - - - - 0x01902B 06:901B: BD 32 04  LDA ram_lives,X
C - - - - - 0x01902E 06:901E: D0 09     BNE bra_9029    ; if player is alive
; if one of players is dead, decrease spawn counter
C - - - - - 0x019030 06:9020: AE 25 04  LDX ram_enemy_spawn_counter
C - - - - - 0x019033 06:9023: BD 2F 90  LDA tbl_902F_spawn_limit,X
C - - - - - 0x019036 06:9026: 8D 25 04  STA ram_enemy_spawn_counter
bra_9029:
C - - - - - 0x019039 06:9029: 68        PLA
C - - - - - 0x01903A 06:902A: AA        TAX
C - - - - - 0x01903B 06:902B: AD 25 04  LDA ram_enemy_spawn_counter
bra_902E_RTS:
C - - - - - 0x01903E 06:902E: 60        RTS



tbl_902F_spawn_limit:
- - - - - - 0x01903F 06:902F: 00        .byte $00   ; 00 
- D 0 - - - 0x019040 06:9030: 01        .byte $01   ; 01 
- D 0 - - - 0x019041 06:9031: 02        .byte $02   ; 02 
- D 0 - - - 0x019042 06:9032: 03        .byte $03   ; 03 
- D 0 - - - 0x019043 06:9033: 03        .byte $03   ; 04 
- D 0 - - - 0x019044 06:9034: 03        .byte $03   ; 05 
- D 0 - - - 0x019045 06:9035: 04        .byte $04   ; 06 
- - - - - - 0x019046 06:9036: 04        .byte $04   ; 07 
- - - - - - 0x019047 06:9037: 04        .byte $04   ; 08 
- - - - - - 0x019048 06:9038: 04        .byte $04   ; 09 



sub_9039_prepare_enemy_chr_bank_and_id:
; bzk optimize, LDX 00 before JSR, write here instead
C - - - - - 0x019049 06:9039: A0 0A     LDY #$0A
C - - - - - 0x01904B 06:903B: A9 40     LDA #con_chr_bank + $40
C - - - - - 0x01904D 06:903D: 8D 98 04  STA ram_chr_spr_1
C - - - - - 0x019050 06:9040: B1 2B     LDA (ram_002B),Y
C - - - - - 0x019052 06:9042: 8D 99 04  STA ram_chr_spr_2
C - - - - - 0x019055 06:9045: A0 0B     LDY #$0B
C - - - - - 0x019057 06:9047: B1 2B     LDA (ram_002B),Y
C - - - - - 0x019059 06:9049: 95 C1     STA ram_obj_id + $02,X
C - - - - - 0x01905B 06:904B: 95 C2     STA ram_obj_id + $03,X
C - - - - - 0x01905D 06:904D: 60        RTS



sub_904E_prepare_camera_limit:
C - - - - - 0x01905E 06:904E: A0 01     LDY #$01
C - - - - - 0x019060 06:9050: B1 2B     LDA (ram_002B),Y
C - - - - - 0x019062 06:9052: 8D A8 04  STA ram_min_cam_limit_X_lo
C - - - - - 0x019065 06:9055: C8        INY ; 02
C - - - - - 0x019066 06:9056: B1 2B     LDA (ram_002B),Y
C - - - - - 0x019068 06:9058: 8D A9 04  STA ram_min_cam_limit_X_hi
C - - - - - 0x01906B 06:905B: C8        INY ; 03
C - - - - - 0x01906C 06:905C: B1 2B     LDA (ram_002B),Y
C - - - - - 0x01906E 06:905E: 8D AA 04  STA ram_max_cam_limit_X_lo
C - - - - - 0x019071 06:9061: C8        INY ; 04
C - - - - - 0x019072 06:9062: B1 2B     LDA (ram_002B),Y
C - - - - - 0x019074 06:9064: 8D AB 04  STA ram_max_cam_limit_X_hi
C - - - - - 0x019077 06:9067: C8        INY ; 05
C - - - - - 0x019078 06:9068: B1 2B     LDA (ram_002B),Y
C - - - - - 0x01907A 06:906A: 8D AC 04  STA ram_min_cam_limit_Y_lo
C - - - - - 0x01907D 06:906D: C8        INY ; 06
C - - - - - 0x01907E 06:906E: B1 2B     LDA (ram_002B),Y
C - - - - - 0x019080 06:9070: 8D AD 04  STA ram_min_cam_limit_Y_hi
C - - - - - 0x019083 06:9073: C8        INY ; 07
C - - - - - 0x019084 06:9074: B1 2B     LDA (ram_002B),Y
C - - - - - 0x019086 06:9076: 8D AE 04  STA ram_max_cam_limit_Y_lo
C - - - - - 0x019089 06:9079: C8        INY ; 08
C - - - - - 0x01908A 06:907A: B1 2B     LDA (ram_002B),Y
C - - - - - 0x01908C 06:907C: 8D AF 04  STA ram_max_cam_limit_Y_hi
C - - - - - 0x01908F 06:907F: C8        INY ; 09
C - - - - - 0x019090 06:9080: B1 2B     LDA (ram_002B),Y
C - - - - - 0x019092 06:9082: 8D B0 04  STA ram_04B0
C - - - - - 0x019095 06:9085: 60        RTS



ofs_011_9086_01_hand_cursor:
C - - J - - 0x019096 06:9086: 20 50 94  JSR sub_9450_delete_all_objects_except_players
C - - - - - 0x019099 06:9089: A9 40     LDA #con_chr_bank + $40
C - - - - - 0x01909B 06:908B: 8D 98 04  STA ram_chr_spr_1
C - - - - - 0x01909E 06:908E: A9 5A     LDA #con_chr_bank + $5A
C - - - - - 0x0190A0 06:9090: 8D 99 04  STA ram_chr_spr_2
C - - - - - 0x0190A3 06:9093: A9 10     LDA #$10
C - - - - - 0x0190A5 06:9095: 8D 90 04  STA ram_pal_spr_new
C - - - - - 0x0190A8 06:9098: A9 1E     LDA #con_obj_symbol_II
C - - - - - 0x0190AA 06:909A: 85 C5     STA ram_obj_id + $06
C - - - - - 0x0190AC 06:909C: A0 0A     LDY #$0A
C - - - - - 0x0190AE 06:909E: B1 2B     LDA (ram_002B),Y
C - - - - - 0x0190B0 06:90A0: 8D 27 04  STA ram_cursor_direction
C - - - - - 0x0190B3 06:90A3: 20 4E 90  JSR sub_904E_prepare_camera_limit
C - - - - - 0x0190B6 06:90A6: 20 DD FE  JSR sub_0x01FEED_write_spr_chr_banks
C - - - - - 0x0190B9 06:90A9: A9 00     LDA #$00
C - - - - - 0x0190BB 06:90AB: 8D 29 04  STA ram_0429
C - - - - - 0x0190BE 06:90AE: AD 27 04  LDA ram_cursor_direction
C - - - - - 0x0190C1 06:90B1: 29 03     AND #$03
C - - - - - 0x0190C3 06:90B3: C9 02     CMP #con_anim_id + $02
C - - - - - 0x0190C5 06:90B5: D0 02     BNE bra_90B9
C - - - - - 0x0190C7 06:90B7: A9 83     LDA #con_anim_id + $03 + $80
bra_90B9:
C - - - - - 0x0190C9 06:90B9: 85 CD     STA ram_animation_id + $06
C - - - - - 0x0190CB 06:90BB: 60        RTS



ofs_011_90BC_02_RTS:
ofs_011_90BC_07_RTS:
ofs_011_90BC_17_RTS:
C - - J - - 0x0190CC 06:90BC: 60        RTS



ofs_011_90BD_03:
C - - J - - 0x0190CD 06:90BD: A2 00     LDX #$00
C - - - - - 0x0190CF 06:90BF: 20 39 90  JSR sub_9039_prepare_enemy_chr_bank_and_id
C - - - - - 0x0190D2 06:90C2: 20 4E 90  JSR sub_904E_prepare_camera_limit
C - - - - - 0x0190D5 06:90C5: 20 DD FE  JSR sub_0x01FEED_write_spr_chr_banks
C - - - - - 0x0190D8 06:90C8: 60        RTS



ofs_011_90C9_04_enter_door:
C - - J - - 0x0190D9 06:90C9: A0 01     LDY #$01
C - - - - - 0x0190DB 06:90CB: B1 2B     LDA (ram_002B),Y
C - - - - - 0x0190DD 06:90CD: 8D 28 04  STA ram_0428
C - - - - - 0x0190E0 06:90D0: 60        RTS



ofs_011_90D1_05_elevator_going_down:
C - - J - - 0x0190E1 06:90D1: A9 12     LDA #$12
C - - - - - 0x0190E3 06:90D3: 8D 90 04  STA ram_pal_spr_new
C - - - - - 0x0190E6 06:90D6: A9 5A     LDA #con_chr_bank + $5A
C - - - - - 0x0190E8 06:90D8: 8D 99 04  STA ram_chr_spr_2
C - - - - - 0x0190EB 06:90DB: 20 DD FE  JSR sub_0x01FEED_write_spr_chr_banks
C - - - - - 0x0190EE 06:90DE: A5 4A     LDA ram_004A_obj_flags
C - - - - - 0x0190F0 06:90E0: 09 04     ORA #con_004A_flag_04
C - - - - - 0x0190F2 06:90E2: 85 4A     STA ram_004A_obj_flags
C - - - - - 0x0190F4 06:90E4: A5 4B     LDA ram_004A_obj_flags + $01
C - - - - - 0x0190F6 06:90E6: 09 04     ORA #con_004A_flag_04
C - - - - - 0x0190F8 06:90E8: 85 4B     STA ram_004A_obj_flags + $01
C - - - - - 0x0190FA 06:90EA: A9 01     LDA #$01
C - - - - - 0x0190FC 06:90EC: 85 80     STA ram_obj_pos_X_hi
C - - - - - 0x0190FE 06:90EE: 85 81     STA ram_obj_pos_X_hi + $01
C - - - - - 0x019100 06:90F0: A9 D5     LDA #$D5
C - - - - - 0x019102 06:90F2: 85 77     STA ram_obj_pos_X_lo
C - - - - - 0x019104 06:90F4: A9 C9     LDA #$C9
C - - - - - 0x019106 06:90F6: 85 78     STA ram_obj_pos_X_lo + $01
C - - - - - 0x019108 06:90F8: A9 00     LDA #$00
C - - - - - 0x01910A 06:90FA: 85 63     STA ram_0063_obj_facing
C - - - - - 0x01910C 06:90FC: 85 64     STA ram_0063_obj_facing + $01
C - - - - - 0x01910E 06:90FE: A9 56     LDA #con_state_using_elevator
C - - - - - 0x019110 06:9100: 85 43     STA ram_state
C - - - - - 0x019112 06:9102: 85 44     STA ram_state + $01
C - - - - - 0x019114 06:9104: A9 07     LDA #$07
C - - - - - 0x019116 06:9106: 8D B0 04  STA ram_04B0
C - - - - - 0x019119 06:9109: 60        RTS



ofs_011_910A_06:
C - - J - - 0x01911A 06:910A: A9 3E     LDA #con_sfx_door
C - - - - - 0x01911C 06:910C: 20 10 FC  JSR sub_0x01FC20_play_sound
C - - - - - 0x01911F 06:910F: A0 01     LDY #$01
C - - - - - 0x019121 06:9111: B1 2B     LDA (ram_002B),Y
C - - - - - 0x019123 06:9113: 09 80     ORA #$80
C - - - - - 0x019125 06:9115: 8D 80 04  STA ram_0480
C - - - - - 0x019128 06:9118: A9 80     LDA #$80
C - - - - - 0x01912A 06:911A: 8D 81 04  STA ram_0481
C - - - - - 0x01912D 06:911D: 60        RTS



ofs_011_911E_0A:
C - - J - - 0x01912E 06:911E: A0 01     LDY #$01
C - - - - - 0x019130 06:9120: B1 2B     LDA (ram_002B),Y
C - - - - - 0x019132 06:9122: 09 80     ORA #$80
C - - - - - 0x019134 06:9124: 8D 80 04  STA ram_0480
C - - - - - 0x019137 06:9127: A9 03     LDA #$03
C - - - - - 0x019139 06:9129: 8D 81 04  STA ram_0481
C - - - - - 0x01913C 06:912C: 60        RTS



ofs_011_912D_08:
C - - J - - 0x01913D 06:912D: A5 36     LDA ram_0036_enemy
C - - - - - 0x01913F 06:912F: 09 80     ORA #con_0036_80
C - - - - - 0x019141 06:9131: 85 36     STA ram_0036_enemy
C - - - - - 0x019143 06:9133: A5 37     LDA ram_0036_enemy + $01
C - - - - - 0x019145 06:9135: 09 80     ORA #con_0036_80
C - - - - - 0x019147 06:9137: 85 37     STA ram_0036_enemy + $01
C - - - - - 0x019149 06:9139: AD 22 04  LDA ram_mission_hi
C - - - - - 0x01914C 06:913C: C9 02     CMP #con_mission_id_02
C - - - - - 0x01914E 06:913E: D0 05     BNE bra_9145
C - - - - - 0x019150 06:9140: A9 FB     LDA #con_music_ctrl_FB
C - - - - - 0x019152 06:9142: 20 10 FC  JSR sub_0x01FC20_play_sound
bra_9145:
C - - - - - 0x019155 06:9145: A9 0A     LDA #con_music_mission_complete
C - - - - - 0x019157 06:9147: 20 10 FC  JSR sub_0x01FC20_play_sound
C - - - - - 0x01915A 06:914A: 60        RTS



ofs_011_914B_09_emeny_spawn_at_door:
C - - J - - 0x01915B 06:914B: A2 00     LDX #$00
C - - - - - 0x01915D 06:914D: 20 39 90  JSR sub_9039_prepare_enemy_chr_bank_and_id
C - - - - - 0x019160 06:9150: 20 4E 90  JSR sub_904E_prepare_camera_limit
C - - - - - 0x019163 06:9153: 20 DF 8F  JSR sub_8FDF_spawn_more_enemies
C - - - - - 0x019166 06:9156: A9 0E     LDA #$0E
C - - - - - 0x019168 06:9158: 8D 26 04  STA ram_0426
C - - - - - 0x01916B 06:915B: A5 34     LDA ram_game_mode
C - - - - - 0x01916D 06:915D: 29 DF     AND #con_gm_20 ^ $FF
C - - - - - 0x01916F 06:915F: 85 34     STA ram_game_mode
C - - - - - 0x019171 06:9161: 20 50 94  JSR sub_9450_delete_all_objects_except_players
C - - - - - 0x019174 06:9164: 20 DD FE  JSR sub_0x01FEED_write_spr_chr_banks
C - - - - - 0x019177 06:9167: 60        RTS



ofs_011_9168_0B_final_boss_defeated:
C - - J - - 0x019178 06:9168: A5 35     LDA ram_game_flags_1
C - - - - - 0x01917A 06:916A: 09 01     ORA #con_gf1_final_boss_defeated
C - - - - - 0x01917C 06:916C: 85 35     STA ram_game_flags_1
C - - - - - 0x01917E 06:916E: 60        RTS



ofs_011_916F_0C:
C - - J - - 0x01917F 06:916F: A9 00     LDA #$00
C - - - - - 0x019181 06:9171: 85 F2     STA ram_00F2
C - - - - - 0x019183 06:9173: 85 F5     STA ram_00F5
C - - - - - 0x019185 06:9175: 85 F6     STA ram_00F6
C - - - - - 0x019187 06:9177: 20 31 CF  JSR sub_0x01CF41
C - - - - - 0x01918A 06:917A: A9 3D     LDA #con_sfx_helicopter_1
C - - - - - 0x01918C 06:917C: 20 10 FC  JSR sub_0x01FC20_play_sound
C - - - - - 0x01918F 06:917F: A9 09     LDA #$09
C - - - - - 0x019191 06:9181: 8D 90 04  STA ram_pal_spr_new
C - - - - - 0x019194 06:9184: A9 5A     LDA #con_chr_bank + $5A
C - - - - - 0x019196 06:9186: 8D 99 04  STA ram_chr_spr_2
C - - - - - 0x019199 06:9189: 20 DD FE  JSR sub_0x01FEED_write_spr_chr_banks
C - - - - - 0x01919C 06:918C: A9 81     LDA #$81
C - - - - - 0x01919E 06:918E: 85 F3     STA ram_00F3
C - - - - - 0x0191A0 06:9190: 60        RTS



ofs_011_9191_0D:
C - - J - - 0x0191A1 06:9191: A9 00     LDA #$00
C - - - - - 0x0191A3 06:9193: 85 F5     STA ram_00F5
C - - - - - 0x0191A5 06:9195: 20 83 CF  JSR sub_0x01CF93
C - - - - - 0x0191A8 06:9198: 60        RTS



ofs_011_9199_0F:
C - - J - - 0x0191A9 06:9199: A9 00     LDA #$00
C - - - - - 0x0191AB 06:919B: 85 F5     STA ram_00F5
C - - - - - 0x0191AD 06:919D: A5 34     LDA ram_game_mode
C - - - - - 0x0191AF 06:919F: 09 08     ORA #con_gm_08
C - - - - - 0x0191B1 06:91A1: 85 34     STA ram_game_mode
C - - - - - 0x0191B3 06:91A3: 20 BB CF  JSR sub_0x01CFCB
C - - - - - 0x0191B6 06:91A6: 60        RTS



ofs_011_91A7_12:
C - - J - - 0x0191B7 06:91A7: A9 1D     LDA #$1D
C - - - - - 0x0191B9 06:91A9: 8D 43 06  STA ram_0643
C - - - - - 0x0191BC 06:91AC: A9 00     LDA #$00
C - - - - - 0x0191BE 06:91AE: 8D 65 06  STA ram_0665
C - - - - - 0x0191C1 06:91B1: 8D 66 06  STA ram_0666
C - - - - - 0x0191C4 06:91B4: 8D 68 06  STA ram_scroll_Y_2
C - - - - - 0x0191C7 06:91B7: 8D 69 06  STA ram_0669
C - - - - - 0x0191CA 06:91BA: 85 F5     STA ram_00F5
C - - - - - 0x0191CC 06:91BC: 85 F6     STA ram_00F6
C - - - - - 0x0191CE 06:91BE: 8D A5 04  STA ram_04A5_counter
C - - - - - 0x0191D1 06:91C1: 85 F2     STA ram_00F2
C - - - - - 0x0191D3 06:91C3: A9 80     LDA #$80
C - - - - - 0x0191D5 06:91C5: 8D 64 06  STA ram_0664
C - - - - - 0x0191D8 06:91C8: 8D 67 06  STA ram_scroll_X_2
C - - - - - 0x0191DB 06:91CB: A9 82     LDA #$82
C - - - - - 0x0191DD 06:91CD: 85 F3     STA ram_00F3
C - - - - - 0x0191DF 06:91CF: 60        RTS



ofs_011_91D0_0E:
C - - J - - 0x0191E0 06:91D0: A9 00     LDA #$00
C - - - - - 0x0191E2 06:91D2: 8D A5 04  STA ram_04A5_counter
C - - - - - 0x0191E5 06:91D5: A9 17     LDA #$17
C - - - - - 0x0191E7 06:91D7: 8D 43 06  STA ram_0643
C - - - - - 0x0191EA 06:91DA: A9 3D     LDA #con_sfx_helicopter_1
C - - - - - 0x0191EC 06:91DC: 20 10 FC  JSR sub_0x01FC20_play_sound
C - - - - - 0x0191EF 06:91DF: 60        RTS



ofs_011_91E0_13:
C - - J - - 0x0191F0 06:91E0: A9 08     LDA #con_music_boss_normal
C - - - - - 0x0191F2 06:91E2: 20 10 FC  JSR sub_0x01FC20_play_sound
C - - - - - 0x0191F5 06:91E5: 60        RTS



ofs_011_91E6_10:
C - - J - - 0x0191F6 06:91E6: A9 03     LDA #$03
C - - - - - 0x0191F8 06:91E8: 8D 5F 06  STA ram_065F
C - - - - - 0x0191FB 06:91EB: 60        RTS



ofs_011_91EC_11:
C - - J - - 0x0191FC 06:91EC: A9 01     LDA #$01
C - - - - - 0x0191FE 06:91EE: 8D 5F 06  STA ram_065F
C - - - - - 0x019201 06:91F1: 60        RTS



ofs_011_91F2_14:
C - - J - - 0x019202 06:91F2: A9 40     LDA #con_sfx_40
C - - - - - 0x019204 06:91F4: 20 10 FC  JSR sub_0x01FC20_play_sound
C - - - - - 0x019207 06:91F7: A9 00     LDA #$00
C - - - - - 0x019209 06:91F9: 85 F5     STA ram_00F5
C - - - - - 0x01920B 06:91FB: 85 F6     STA ram_00F6
C - - - - - 0x01920D 06:91FD: 20 31 CF  JSR sub_0x01CF41
C - - - - - 0x019210 06:9200: A9 82     LDA #$82
C - - - - - 0x019212 06:9202: 8D 5F 06  STA ram_065F
C - - - - - 0x019215 06:9205: A9 13     LDA #con_obj_13
C - - - - - 0x019217 06:9207: 85 C3     STA ram_obj_id + $04
C - - - - - 0x019219 06:9209: 85 C4     STA ram_obj_id + $05
C - - - - - 0x01921B 06:920B: 85 C5     STA ram_obj_id + $06
C - - - - - 0x01921D 06:920D: A9 7F     LDA #con_state_hair_grabbed
C - - - - - 0x01921F 06:920F: 85 47     STA ram_state + $04
C - - - - - 0x019221 06:9211: 85 48     STA ram_state + $05
C - - - - - 0x019223 06:9213: 85 49     STA ram_state + $06
C - - - - - 0x019225 06:9215: A9 82     LDA #con_003C_flag_exist + con_003C_flag_02
C - - - - - 0x019227 06:9217: 85 40     STA ram_003C_obj_flags + $04
C - - - - - 0x019229 06:9219: 85 41     STA ram_003C_obj_flags + $05
C - - - - - 0x01922B 06:921B: 85 42     STA ram_003C_obj_flags + $06
C - - - - - 0x01922D 06:921D: A9 00     LDA #$00    ; con_004A_flag_00    con_anim_id + $00
C - - - - - 0x01922F 06:921F: 85 4E     STA ram_004A_obj_flags + $04
C - - - - - 0x019231 06:9221: 85 4F     STA ram_004A_obj_flags + $05
C - - - - - 0x019233 06:9223: 85 50     STA ram_004A_obj_flags + $06
C - - - - - 0x019235 06:9225: 85 CB     STA ram_animation_id + $04
C - - - - - 0x019237 06:9227: 85 CC     STA ram_animation_id + $05
C - - - - - 0x019239 06:9229: 85 CD     STA ram_animation_id + $06
C - - - - - 0x01923B 06:922B: A9 09     LDA #$09
C - - - - - 0x01923D 06:922D: 8D 90 04  STA ram_pal_spr_new
C - - - - - 0x019240 06:9230: A9 5A     LDA #con_chr_bank + $5A
C - - - - - 0x019242 06:9232: 8D 99 04  STA ram_chr_spr_2
C - - - - - 0x019245 06:9235: 20 DD FE  JSR sub_0x01FEED_write_spr_chr_banks
C - - - - - 0x019248 06:9238: A9 00     LDA #$00
C - - - - - 0x01924A 06:923A: 85 F2     STA ram_00F2
C - - - - - 0x01924C 06:923C: A9 83     LDA #$83
C - - - - - 0x01924E 06:923E: 85 F3     STA ram_00F3
C - - - - - 0x019250 06:9240: 60        RTS



ofs_011_9241_15:
- - - - - - 0x019251 06:9241: A9 20     LDA #$20
- - - - - - 0x019253 06:9243: 8D 2A 04  STA ram_042A
- - - - - - 0x019256 06:9246: A9 0B     LDA #$0B
- - - - - - 0x019258 06:9248: 8D 2B 04  STA ram_042B
- - - - - - 0x01925B 06:924B: 60        RTS



ofs_011_924C_16:
C - - J - - 0x01925C 06:924C: A0 01     LDY #$01
C - - - - - 0x01925E 06:924E: B1 2B     LDA (ram_002B),Y
C - - - - - 0x019260 06:9250: 20 10 FC  JSR sub_0x01FC20_play_sound
C - - - - - 0x019263 06:9253: 60        RTS



ofs_011_9254_18:
C - - J - - 0x019264 06:9254: 20 7A 92  JSR sub_927A
C - - - - - 0x019267 06:9257: A9 00     LDA #$00
C - - - - - 0x019269 06:9259: 85 F9     STA ram_00F9
C - - - - - 0x01926B 06:925B: 8D 27 04  STA ram_cursor_direction
C - - - - - 0x01926E 06:925E: 8D B0 04  STA ram_04B0
C - - - - - 0x019271 06:9261: 8D A8 04  STA ram_min_cam_limit_X_lo
C - - - - - 0x019274 06:9264: 8D A9 04  STA ram_min_cam_limit_X_hi
C - - - - - 0x019277 06:9267: 8D AA 04  STA ram_max_cam_limit_X_lo
C - - - - - 0x01927A 06:926A: 8D AB 04  STA ram_max_cam_limit_X_hi
C - - - - - 0x01927D 06:926D: 8D AC 04  STA ram_min_cam_limit_Y_lo
C - - - - - 0x019280 06:9270: 8D AD 04  STA ram_min_cam_limit_Y_hi
C - - - - - 0x019283 06:9273: 8D AE 04  STA ram_max_cam_limit_Y_lo
C - - - - - 0x019286 06:9276: 8D AF 04  STA ram_max_cam_limit_Y_hi
C - - - - - 0x019289 06:9279: 60        RTS



sub_927A:
C - - - - - 0x01928A 06:927A: A2 02     LDX #$02
C - - - - - 0x01928C 06:927C: A9 B0     LDA #$B0
C - - - - - 0x01928E 06:927E: 95 77     STA ram_obj_pos_X_lo,X
C - - - - - 0x019290 06:9280: A9 00     LDA #$00    ; con_state_idle
C - - - - - 0x019292 06:9282: 95 80     STA ram_obj_pos_X_hi,X
C - - - - - 0x019294 06:9284: 95 AD     STA ram_obj_pos_Z_lo,X
C - - - - - 0x019296 06:9286: 95 B6     STA ram_obj_pos_Z_hi,X
C - - - - - 0x019298 06:9288: 95 9B     STA ram_obj_pos_Y_hi,X
C - - - - - 0x01929A 06:928A: 95 43     STA ram_state,X
C - - - - - 0x01929C 06:928C: A9 50     LDA #$50
C - - - - - 0x01929E 06:928E: 95 92     STA ram_obj_pos_Y_lo,X
C - - - - - 0x0192A0 06:9290: A9 02     LDA #con_004A_flag_hair_grabbed
C - - - - - 0x0192A2 06:9292: 95 4A     STA ram_004A_obj_flags,X
C - - - - - 0x0192A4 06:9294: A9 1E     LDA #con_obj_symbol_II
C - - - - - 0x0192A6 06:9296: 95 BF     STA ram_obj_id,X
C - - - - - 0x0192A8 06:9298: A9 09     LDA #con_anim_id + $09
C - - - - - 0x0192AA 06:929A: 95 C7     STA ram_animation_id,X
C - - - - - 0x0192AC 06:929C: A9 A0     LDA #con_003C_flag_exist + con_003C_flag_20
C - - - - - 0x0192AE 06:929E: 95 3C     STA ram_003C_obj_flags,X ; 003E
C - - - - - 0x0192B0 06:92A0: A9 13     LDA #$13
C - - - - - 0x0192B2 06:92A2: 8D 90 04  STA ram_pal_spr_new
C - - - - - 0x0192B5 06:92A5: A9 5A     LDA #con_chr_bank + $5A
C - - - - - 0x0192B7 06:92A7: 8D 99 04  STA ram_chr_spr_2
C - - - - - 0x0192BA 06:92AA: 20 DD FE  JSR sub_0x01FEED_write_spr_chr_banks
C - - - - - 0x0192BD 06:92AD: 60        RTS



ofs_011_92AE_19_shadow_warrior:
C - - J - - 0x0192BE 06:92AE: A9 00     LDA #$00
C - - - - - 0x0192C0 06:92B0: 85 F9     STA ram_00F9
C - - - - - 0x0192C2 06:92B2: 4C A9 8F  JMP loc_8FA9



ofs_011_92B5_1A:
C - - J - - 0x0192C5 06:92B5: A9 03     LDA #con_063F_01 + con_063F_02
C - - - - - 0x0192C7 06:92B7: 8D 3F 06  STA ram_063F_flags
C - - - - - 0x0192CA 06:92BA: A9 10     LDA #$10
C - - - - - 0x0192CC 06:92BC: 8D 2A 04  STA ram_042A
C - - - - - 0x0192CF 06:92BF: 60        RTS



ofs_011_92C0_1B:
C - - J - - 0x0192D0 06:92C0: A9 40     LDA #$40
C - - - - - 0x0192D2 06:92C2: 8D A5 04  STA ram_04A5_counter
C - - - - - 0x0192D5 06:92C5: 60        RTS



ofs_012_92C6_80:
C - - J - - 0x0192D6 06:92C6: 68        PLA
C - - - - - 0x0192D7 06:92C7: 68        PLA
C - - - - - 0x0192D8 06:92C8: EE 23 04  INC ram_mission_lo
C - - - - - 0x0192DB 06:92CB: 4C 18 8F  JMP loc_8F18_prepare_next_script



ofs_012_92CE_81:
C - - J - - 0x0192DE 06:92CE: A5 34     LDA ram_game_mode
C - - - - - 0x0192E0 06:92D0: 09 01     ORA #con_gm_01
C - - - - - 0x0192E2 06:92D2: 85 34     STA ram_game_mode
C - - - - - 0x0192E4 06:92D4: 60        RTS



sub_92D5_calculate_submission_pointer:
C - - - - - 0x0192E5 06:92D5: 8A        TXA
C - - - - - 0x0192E6 06:92D6: 48        PHA
C - - - - - 0x0192E7 06:92D7: AD 22 04  LDA ram_mission_hi
C - - - - - 0x0192EA 06:92DA: 0A        ASL
C - - - - - 0x0192EB 06:92DB: AA        TAX
C - - - - - 0x0192EC 06:92DC: BD 2D 99  LDA tbl_992D_mission_data,X
C - - - - - 0x0192EF 06:92DF: 85 29     STA ram_0029
C - - - - - 0x0192F1 06:92E1: BD 2E 99  LDA tbl_992D_mission_data + $01,X
C - - - - - 0x0192F4 06:92E4: 85 2A     STA ram_002A
C - - - - - 0x0192F6 06:92E6: AD 23 04  LDA ram_mission_lo
C - - - - - 0x0192F9 06:92E9: 0A        ASL
C - - - - - 0x0192FA 06:92EA: A8        TAY
C - - - - - 0x0192FB 06:92EB: B1 29     LDA (ram_0029),Y
C - - - - - 0x0192FD 06:92ED: 85 2B     STA ram_002B
C - - - - - 0x0192FF 06:92EF: C8        INY
C - - - - - 0x019300 06:92F0: B1 29     LDA (ram_0029),Y
C - - - - - 0x019302 06:92F2: 85 2C     STA ram_002C
C - - - - - 0x019304 06:92F4: 68        PLA
C - - - - - 0x019305 06:92F5: AA        TAX
C - - - - - 0x019306 06:92F6: 60        RTS



sub_92F7_spawn_enemies_from_mission_data:
C - - - - - 0x019307 06:92F7: A9 81     LDA #con_003C_flag_exist + con_003C_flag_01
C - - - - - 0x019309 06:92F9: 95 3E     STA ram_003C_obj_flags + $02,X
C - - - - - 0x01930B 06:92FB: A9 00     LDA #con_state_idle
C - - - - - 0x01930D 06:92FD: 95 45     STA ram_state + $02,X
C - - - - - 0x01930F 06:92FF: A9 00     LDA #$00    ; con_004A_flag_00
C - - - - - 0x019311 06:9301: 9D 6B 03  STA ram_0369_obj + $02,X
C - - - - - 0x019314 06:9304: 9D 66 04  STA ram_0464_obj + $02,X
C - - - - - 0x019317 06:9307: 9D 4C 04  STA ram_044A_obj + $02,X
C - - - - - 0x01931A 06:930A: 9D 48 04  STA ram_0446_obj + $02,X
C - - - - - 0x01931D 06:930D: 95 4C     STA ram_004A_obj_flags + $02,X
C - - - - - 0x01931F 06:930F: 98        TYA
C - - - - - 0x019320 06:9310: 48        PHA
C - - - - - 0x019321 06:9311: B5 C1     LDA ram_obj_id + $02,X
C - - - - - 0x019323 06:9313: A8        TAY
C - - - - - 0x019324 06:9314: B9 30 94  LDA tbl_9430,Y
C - - - - - 0x019327 06:9317: 8D 90 04  STA ram_pal_spr_new
C - - - - - 0x01932A 06:931A: 68        PLA
C - - - - - 0x01932B 06:931B: A8        TAY
C - - - - - 0x01932C 06:931C: A9 00     LDA #con_006C_00
C - - - - - 0x01932E 06:931E: 9D 6C 00  STA a: ram_enemy_ai_template,X
; enemy settings
C - - - - - 0x019331 06:9321: B1 2B     LDA (ram_002B),Y
C - - - - - 0x019333 06:9323: 85 1A     STA ram_001A
C - - - - - 0x019335 06:9325: C8        INY
C - - - - - 0x019336 06:9326: 06 1A     ASL ram_001A
C - - - - - 0x019338 06:9328: 90 41     BCC bra_936B
; 80 enemy weapon
C - - - - - 0x01933A 06:932A: B1 2B     LDA (ram_002B),Y
C - - - - - 0x01933C 06:932C: F0 3C     BEQ bra_936A
C - - - - - 0x01933E 06:932E: 9D 48 04  STA ram_0446_obj + $02,X
C - - - - - 0x019341 06:9331: 98        TYA
C - - - - - 0x019342 06:9332: 48        PHA
C - - - - - 0x019343 06:9333: 20 00 94  JSR sub_9400_find_empty_weapon_slot
C - - - - - 0x019346 06:9336: B0 08     BCS bra_9340
; if not found
- - - - - - 0x019348 06:9338: A9 00     LDA #$00
- - - - - - 0x01934A 06:933A: 9D 48 04  STA ram_0446_obj + $02,X
- - - - - - 0x01934D 06:933D: 4C 68 93  JMP loc_9368
bra_9340:
C - - - - - 0x019350 06:9340: 98        TYA
C - - - - - 0x019351 06:9341: 48        PHA
C - - - - - 0x019352 06:9342: BD 48 04  LDA ram_0446_obj + $02,X
C - - - - - 0x019355 06:9345: 99 BF 00  STA a: ram_obj_id,Y
C - - - - - 0x019358 06:9348: A8        TAY
C - - - - - 0x019359 06:9349: B9 1C 85  LDA tbl_851C_weapons,Y
C - - - - - 0x01935C 06:934C: 09 80     ORA #$80
C - - - - - 0x01935E 06:934E: 9D 48 04  STA ram_0446_obj + $02,X
C - - - - - 0x019361 06:9351: 68        PLA
C - - - - - 0x019362 06:9352: A8        TAY
C - - - - - 0x019363 06:9353: A9 82     LDA #con_003C_flag_exist + con_003C_flag_02
C - - - - - 0x019365 06:9355: 99 3C 00  STA a: ram_003C_obj_flags,Y ; 0040 0041 0042
C - - - - - 0x019368 06:9358: A9 20     LDA #con_004A_flag_20
C - - - - - 0x01936A 06:935A: 99 4A 00  STA a: ram_004A_obj_flags,Y
C - - - - - 0x01936D 06:935D: A9 7F     LDA #con_state_hair_grabbed
C - - - - - 0x01936F 06:935F: 99 43 00  STA a: ram_state,Y
C - - - - - 0x019372 06:9362: 98        TYA
C - - - - - 0x019373 06:9363: 09 80     ORA #$80
C - - - - - 0x019375 06:9365: 9D 4C 04  STA ram_044A_obj + $02,X
loc_9368:
C - - - - - 0x019378 06:9368: 68        PLA
C - - - - - 0x019379 06:9369: A8        TAY
bra_936A:
C - - - - - 0x01937A 06:936A: C8        INY
bra_936B:
C - - - - - 0x01937B 06:936B: 06 1A     ASL ram_001A
C - - - - - 0x01937D 06:936D: 90 0E     BCC bra_937D
; 40 enemy state
C - - - - - 0x01937F 06:936F: B1 2B     LDA (ram_002B),Y
C - - - - - 0x019381 06:9371: 95 45     STA ram_state + $02,X
C - - - - - 0x019383 06:9373: C9 07     CMP #con_state_fall_from_platform
C - - - - - 0x019385 06:9375: D0 05     BNE bra_937C
C - - - - - 0x019387 06:9377: A9 80     LDA #$80
C - - - - - 0x019389 06:9379: 9D 11 03  STA ram_obj_direction + $02,X
bra_937C:
C - - - - - 0x01938C 06:937C: C8        INY
bra_937D:
C - - - - - 0x01938D 06:937D: 06 1A     ASL ram_001A
C - - - - - 0x01938F 06:937F: B0 09     BCS bra_938A
; 00 hp only
C - - - - - 0x019391 06:9381: 8C 26 04  STY ram_0426
C - - - - - 0x019394 06:9384: 20 51 FC  JSR sub_0x01FC61
C - - - - - 0x019397 06:9387: 4C B4 93  JMP loc_93B4_set_hp_enemy
bra_938A:
; 20 position and stuff
C - - - - - 0x01939A 06:938A: B1 2B     LDA (ram_002B),Y
C - - - - - 0x01939C 06:938C: 9D 5B 03  STA ram_0359_obj + $02,X
C - - - - - 0x01939F 06:938F: C8        INY
C - - - - - 0x0193A0 06:9390: B1 2B     LDA (ram_002B),Y
C - - - - - 0x0193A2 06:9392: 95 79     STA ram_obj_pos_X_lo + $02,X
C - - - - - 0x0193A4 06:9394: C8        INY
C - - - - - 0x0193A5 06:9395: B1 2B     LDA (ram_002B),Y
C - - - - - 0x0193A7 06:9397: 95 82     STA ram_obj_pos_X_hi + $02,X
C - - - - - 0x0193A9 06:9399: C8        INY
C - - - - - 0x0193AA 06:939A: B1 2B     LDA (ram_002B),Y
C - - - - - 0x0193AC 06:939C: 95 94     STA ram_obj_pos_Y_lo + $02,X
C - - - - - 0x0193AE 06:939E: C8        INY
C - - - - - 0x0193AF 06:939F: B1 2B     LDA (ram_002B),Y
C - - - - - 0x0193B1 06:93A1: 95 9D     STA ram_obj_pos_Y_hi + $02,X
C - - - - - 0x0193B3 06:93A3: C8        INY
C - - - - - 0x0193B4 06:93A4: B1 2B     LDA (ram_002B),Y
C - - - - - 0x0193B6 06:93A6: 95 AF     STA ram_obj_pos_Z_lo + $02,X
C - - - - - 0x0193B8 06:93A8: C8        INY
C - - - - - 0x0193B9 06:93A9: B1 2B     LDA (ram_002B),Y
C - - - - - 0x0193BB 06:93AB: 95 B8     STA ram_obj_pos_Z_hi + $02,X
C - - - - - 0x0193BD 06:93AD: C8        INY
C - - - - - 0x0193BE 06:93AE: B1 2B     LDA (ram_002B),Y
C - - - - - 0x0193C0 06:93B0: 9D 6A 00  STA a: ram_006A_enemy,X
C - - - - - 0x0193C3 06:93B3: C8        INY
loc_93B4_set_hp_enemy:
C D 0 - - - 0x0193C4 06:93B4: B1 2B     LDA (ram_002B),Y
C - - - - - 0x0193C6 06:93B6: 9D 20 04  STA ram_hp + $02,X
C - - - - - 0x0193C9 06:93B9: AD 35 04  LDA ram_difficulty
C - - - - - 0x0193CC 06:93BC: D0 1D     BNE bra_93DB    ; if not easy
; if easy
C - - - - - 0x0193CE 06:93BE: 5E 20 04  LSR ram_hp + $02,X
C - - - - - 0x0193D1 06:93C1: F0 12     BEQ bra_93D5
C - - - - - 0x0193D3 06:93C3: BD 20 04  LDA ram_hp + $02,X
C - - - - - 0x0193D6 06:93C6: 48        PHA
C - - - - - 0x0193D7 06:93C7: 5E 20 04  LSR ram_hp + $02,X
C - - - - - 0x0193DA 06:93CA: 68        PLA
C - - - - - 0x0193DB 06:93CB: 18        CLC
C - - - - - 0x0193DC 06:93CC: 7D 20 04  ADC ram_hp + $02,X
C - - - - - 0x0193DF 06:93CF: 9D 20 04  STA ram_hp + $02,X
C - - - - - 0x0193E2 06:93D2: 4C FB 93  JMP loc_93FB
bra_93D5:
C - - - - - 0x0193E5 06:93D5: 1E 20 04  ASL ram_hp + $02,X
C - - - - - 0x0193E8 06:93D8: 4C FB 93  JMP loc_93FB
bra_93DB:
C - - - - - 0x0193EB 06:93DB: C9 02     CMP #$02
C - - - - - 0x0193ED 06:93DD: D0 1C     BNE bra_93FB    ; if normal
; if difficult
C - - - - - 0x0193EF 06:93DF: BD 20 04  LDA ram_hp + $02,X
C - - - - - 0x0193F2 06:93E2: C9 01     CMP #$01
C - - - - - 0x0193F4 06:93E4: F0 15     BEQ bra_93FB
C - - - - - 0x0193F6 06:93E6: A9 00     LDA #$00
C - - - - - 0x0193F8 06:93E8: D0 04     BNE bra_93EE    ; bzk optimize, useless branch
C - - - - - 0x0193FA 06:93EA: A9 1E     LDA #$1E
C - - - - - 0x0193FC 06:93EC: D0 02     BNE bra_93F0    ; jmp
bra_93EE:
- - - - - - 0x0193FE 06:93EE: A9 06     LDA #$06
bra_93F0:
C - - - - - 0x019400 06:93F0: 18        CLC
C - - - - - 0x019401 06:93F1: 7D 20 04  ADC ram_hp + $02,X
C - - - - - 0x019404 06:93F4: 90 02     BCC bra_93F8_not_overflow
C - - - - - 0x019406 06:93F6: A9 FF     LDA #$FF
bra_93F8_not_overflow:
C - - - - - 0x019408 06:93F8: 9D 20 04  STA ram_hp + $02,X
bra_93FB:
loc_93FB:
C D 0 - - - 0x01940B 06:93FB: C8        INY
C - - - - - 0x01940C 06:93FC: 8C 26 04  STY ram_0426
C - - - - - 0x01940F 06:93FF: 60        RTS



sub_9400_find_empty_weapon_slot:
C - - - - - 0x019410 06:9400: A0 04     LDY #$04
bra_9402_loop:
C - - - - - 0x019412 06:9402: B9 3C 00  LDA a: ram_003C_obj_flags,Y ; 0040 0041 0042
C - - - - - 0x019415 06:9405: 10 07     BPL bra_940E    ; if not con_003C_flag_exist
C - - - - - 0x019417 06:9407: C8        INY
C - - - - - 0x019418 06:9408: C0 07     CPY #$07
C - - - - - 0x01941A 06:940A: 90 F6     BCC bra_9402_loop
; if not found
- - - - - - 0x01941C 06:940C: 18        CLC
- - - - - - 0x01941D 06:940D: 60        RTS
bra_940E:
C - - - - - 0x01941E 06:940E: 38        SEC
C - - - - - 0x01941F 06:940F: 60        RTS


; bzk garbage
- - - - - - 0x019420 06:9410: 64        .byte $64, $64, $64, $64, $64, $64, $64, $64, $64, $64, $64, $64, $64, $64, $64, $64   ; 
- - - - - - 0x019430 06:9420: 64        .byte $64, $64, $64, $64, $64, $64, $64, $64, $64, $64, $64, $64, $64, $64, $64, $64   ; 



tbl_9430:
- - - - - - 0x019440 06:9430: 00        .byte $00   ; 00 con_obj_billy
- - - - - - 0x019441 06:9431: 00        .byte $00   ; 01 con_obj_jimmy
- D 0 - - - 0x019442 06:9432: 00        .byte $00   ; 02 con_obj_williams
- D 0 - - - 0x019443 06:9433: 01        .byte $01   ; 03 con_obj_roper
- D 0 - - - 0x019444 06:9434: 02        .byte $02   ; 04 con_obj_linda
- - - - - - 0x019445 06:9435: 03        .byte $03   ; 05 con_obj_05
- D 0 - - - 0x019446 06:9436: 04        .byte $04   ; 06 con_obj_bolo
- D 0 - - - 0x019447 06:9437: 05        .byte $05   ; 07 con_obj_burnov
- D 0 - - - 0x019448 06:9438: 06        .byte $06   ; 08 con_obj_abore
- D 0 - - - 0x019449 06:9439: 07        .byte $07   ; 09 con_obj_chin_taimei
- D 0 - - - 0x01944A 06:943A: 08        .byte $08   ; 0A con_obj_right_arm
- - - - - - 0x01944B 06:943B: 09        .byte $09   ; 0B con_obj_0B
- D 0 - - - 0x01944C 06:943C: 0A        .byte $0A   ; 0C con_obj_doppelganger
- - - - - - 0x01944D 06:943D: 0B        .byte $0B   ; 0D con_obj_0D
- - - - - - 0x01944E 06:943E: 0C        .byte $0C   ; 0E con_obj_0E
- D 0 - - - 0x01944F 06:943F: 0D        .byte $0D   ; 0F con_obj_ninja
- - - - - - 0x019450 06:9440: 00        .byte $00   ; 10 con_obj_10
- D 0 - - - 0x019451 06:9441: 0F        .byte $0F   ; 11 con_obj_shadow_warrior
- - - - - - 0x019452 06:9442: 00        .byte $00   ; 12 con_obj_knife
- - - - - - 0x019453 06:9443: 00        .byte $00   ; 13 con_obj_13
- - - - - - 0x019454 06:9444: 00        .byte $00   ; 14 con_obj_grenade
- - - - - - 0x019455 06:9445: 00        .byte $00   ; 15 con_obj_chain_whip
- - - - - - 0x019456 06:9446: 00        .byte $00   ; 16 con_obj_flame_grenades
- - - - - - 0x019457 06:9447: 00        .byte $00   ; 17 con_obj_baton
- - - - - - 0x019458 06:9448: 00        .byte $00   ; 18 con_obj_18
- - - - - - 0x019459 06:9449: 00        .byte $00   ; 19 con_obj_19
- - - - - - 0x01945A 06:944A: 00        .byte $00   ; 1A con_obj_boomerang
- - - - - - 0x01945B 06:944B: 00        .byte $00   ; 1B con_obj_jumping_spike
- - - - - - 0x01945C 06:944C: 00        .byte $00   ; 1C con_obj_fireball
- - - - - - 0x01945D 06:944D: 00        .byte $00   ; 1D con_obj_1D
- - - - - - 0x01945E 06:944E: 00        .byte $00   ; 1E con_obj_symbol_II


; bzk garbage
- - - - - - 0x01945F 06:944F: 00        .byte $00   ; 1F



sub_9450_delete_all_objects_except_players:
; bzk optimize, no need for 2nd LDA 00
C - - - - - 0x019460 06:9450: A9 00     LDA #con_003C_flag_00
C - - - - - 0x019462 06:9452: 85 3E     STA ram_003C_obj_flags + $02
C - - - - - 0x019464 06:9454: 85 3F     STA ram_003C_obj_flags + $03
C - - - - - 0x019466 06:9456: A9 00     LDA #con_003C_flag_00
C - - - - - 0x019468 06:9458: 85 40     STA ram_003C_obj_flags + $04
C - - - - - 0x01946A 06:945A: 85 41     STA ram_003C_obj_flags + $05
C - - - - - 0x01946C 06:945C: 85 42     STA ram_003C_obj_flags + $06
C - - - - - 0x01946E 06:945E: 60        RTS



sub_945F_display_hand_cursor:
C - - - - - 0x01946F 06:945F: AD 27 04  LDA ram_cursor_direction
C - - - - - 0x019472 06:9462: 0A        ASL
C - - - - - 0x019473 06:9463: A8        TAY
C - - - - - 0x019474 06:9464: A5 D0     LDA ram_obj_pos_X_lo_cam
C - - - - - 0x019476 06:9466: 18        CLC
C - - - - - 0x019477 06:9467: 79 87 94  ADC tbl_9487_cursor_pos,Y
C - - - - - 0x01947A 06:946A: 85 7D     STA ram_obj_pos_X_lo + $06
C - - - - - 0x01947C 06:946C: A5 D1     LDA ram_obj_pos_X_hi_cam
C - - - - - 0x01947E 06:946E: 69 00     ADC #$00
C - - - - - 0x019480 06:9470: 85 86     STA ram_obj_pos_X_hi + $06
C - - - - - 0x019482 06:9472: A5 D2     LDA ram_obj_pos_Y_lo_cam
C - - - - - 0x019484 06:9474: 18        CLC
C - - - - - 0x019485 06:9475: 79 88 94  ADC tbl_9487_cursor_pos + $01,Y
C - - - - - 0x019488 06:9478: 85 B3     STA ram_obj_pos_Z_lo + $06
C - - - - - 0x01948A 06:947A: A5 D3     LDA ram_obj_pos_Y_hi_cam
C - - - - - 0x01948C 06:947C: 69 00     ADC #$00
C - - - - - 0x01948E 06:947E: 85 BC     STA ram_obj_pos_Z_hi + $06
C - - - - - 0x019490 06:9480: A9 00     LDA #$00
C - - - - - 0x019492 06:9482: 85 98     STA ram_obj_pos_Y_lo + $06
C - - - - - 0x019494 06:9484: 85 A1     STA ram_obj_pos_Y_hi + $06
C - - - - - 0x019496 06:9486: 60        RTS



tbl_9487_cursor_pos:
; 00 up
- D 0 - - - 0x019497 06:9487: 80        .byte $80   ; pos_X_lo
- D 0 - - - 0x019498 06:9488: C0        .byte $C0   ; pos_Z_lo
; 01 down
- D 0 - - - 0x019499 06:9489: 80        .byte $80   ; pos_X_lo
- D 0 - - - 0x01949A 06:948A: 40        .byte $40   ; pos_Z_lo
; 02 left
- D 0 - - - 0x01949B 06:948B: 20        .byte $20   ; pos_X_lo
- D 0 - - - 0x01949C 06:948C: 77        .byte $77   ; pos_Z_lo
; 03 right
- D 0 - - - 0x01949D 06:948D: E0        .byte $E0   ; pos_X_lo
- D 0 - - - 0x01949E 06:948E: 77        .byte $77   ; pos_Z_lo



sub_948F:
C - - - - - 0x01949F 06:948F: A5 34     LDA ram_game_mode
C - - - - - 0x0194A1 06:9491: 29 10     AND #con_gm_10
C - - - - - 0x0194A3 06:9493: D0 12     BNE bra_94A7
C - - - - - 0x0194A5 06:9495: A5 34     LDA ram_game_mode
C - - - - - 0x0194A7 06:9497: 29 05     AND #con_gm_04 + con_gm_01
C - - - - - 0x0194A9 06:9499: F0 62     BEQ bra_94FD_RTS
C - - - - - 0x0194AB 06:949B: A5 34     LDA ram_game_mode
C - - - - - 0x0194AD 06:949D: 09 10     ORA #con_gm_10
C - - - - - 0x0194AF 06:949F: 85 34     STA ram_game_mode
C - - - - - 0x0194B1 06:94A1: A9 01     LDA #con_063F_01
C - - - - - 0x0194B3 06:94A3: 8D 3F 06  STA ram_063F_flags
C - - - - - 0x0194B6 06:94A6: 60        RTS
bra_94A7:
C - - - - - 0x0194B7 06:94A7: AD 3F 06  LDA ram_063F_flags
C - - - - - 0x0194BA 06:94AA: 10 51     BPL bra_94FD_RTS    ; if not con_063F_80
C - - - - - 0x0194BC 06:94AC: A9 00     LDA #$00
C - - - - - 0x0194BE 06:94AE: 85 F1     STA ram_nmi_counter
bra_94B0_infinite_loop:
C - - - - - 0x0194C0 06:94B0: A5 F1     LDA ram_nmi_counter
C - - - - - 0x0194C2 06:94B2: C9 03     CMP #$03
C - - - - - 0x0194C4 06:94B4: 90 FA     BCC bra_94B0_infinite_loop
C - - - - - 0x0194C6 06:94B6: A5 34     LDA ram_game_mode
C - - - - - 0x0194C8 06:94B8: 29 01     AND #con_gm_01
C - - - - - 0x0194CA 06:94BA: D0 12     BNE bra_94CE
- - - - - - 0x0194CC 06:94BC: A5 34     LDA ram_game_mode
- - - - - - 0x0194CE 06:94BE: 29 04     AND #con_gm_04
- - - - - - 0x0194D0 06:94C0: F0 3B     BEQ bra_94FD_RTS
- - - - - - 0x0194D2 06:94C2: AE 22 04  LDX ram_mission_hi
- - - - - - 0x0194D5 06:94C5: BD 9E 95  LDA tbl_959E_checkpoint_mission,X
- - - - - - 0x0194D8 06:94C8: 8D 22 04  STA ram_mission_hi
- - - - - - 0x0194DB 06:94CB: 4C EA 94  JMP loc_94EA
bra_94CE:
C - - - - - 0x0194DE 06:94CE: A9 00     LDA #$00
C - - - - - 0x0194E0 06:94D0: F0 15     BEQ bra_94E7    ; jmp


; bzk garbage
- - - - - - 0x0194E2 06:94D2: AD 22 04  LDA ram_mission_hi
- - - - - - 0x0194E5 06:94D5: AC 35 04  LDY ram_difficulty
- - - - - - 0x0194E8 06:94D8: D9 E4 94  CMP tbl_94E4,Y
- - - - - - 0x0194EB 06:94DB: D0 0A     BNE bra_94E7
- - - - - - 0x0194ED 06:94DD: A5 35     LDA ram_game_flags_1
- - - - - - 0x0194EF 06:94DF: 09 04     ORA #con_gf1_04
- - - - - - 0x0194F1 06:94E1: 85 35     STA ram_game_flags_1
- - - - - - 0x0194F3 06:94E3: 60        RTS



tbl_94E4:
tbl_0x0194F4:
- - - - - - 0x0194F4 06:94E4: 02        .byte $02   ; 00 easy
- - - - - - 0x0194F5 06:94E5: 0C        .byte $0C   ; 01 normal
- - - - - - 0x0194F6 06:94E6: 0F        .byte $0F   ; 02 difficult



bra_94E7:
C - - - - - 0x0194F7 06:94E7: EE 22 04  INC ram_mission_hi
loc_94EA:
C - - - - - 0x0194FA 06:94EA: A5 34     LDA ram_game_mode
C - - - - - 0x0194FC 06:94EC: 29 EE     AND #(con_gm_10 + con_gm_01) ^ $FF
C - - - - - 0x0194FE 06:94EE: 85 34     STA ram_game_mode
C - - - - - 0x019500 06:94F0: AD 22 04  LDA ram_mission_hi
C - - - - - 0x019503 06:94F3: C9 0F     CMP #$0F
C - - - - - 0x019505 06:94F5: 90 07     BCC bra_94FE
- - - - - - 0x019507 06:94F7: A5 35     LDA ram_game_flags_1
- - - - - - 0x019509 06:94F9: 09 01     ORA #con_gf1_final_boss_defeated
- - - - - - 0x01950B 06:94FB: 85 35     STA ram_game_flags_1
bra_94FD_RTS:
C - - - - - 0x01950D 06:94FD: 60        RTS
bra_94FE:
C - - - - - 0x01950E 06:94FE: A9 00     LDA #con_music_off
C - - - - - 0x019510 06:9500: 20 10 FC  JSR sub_0x01FC20_play_sound
C - - - - - 0x019513 06:9503: 20 98 FE  JSR sub_0x01FEA8_nmi_off
C - - - - - 0x019516 06:9506: 78        SEI
C - - - - - 0x019517 06:9507: 20 C3 FC  JSR sub_0x01FCD3_clear_bg_and_spr_pattern
C - - - - - 0x01951A 06:950A: 20 75 D8  JSR sub_0x01D885_clear_graphics
C - - - - - 0x01951D 06:950D: 20 28 D8  JSR sub_0x01D838_hide_unused_sprites
C - - - - - 0x019520 06:9510: 20 97 FA  JSR sub_0x01FAA7
C - - - - - 0x019523 06:9513: 20 00 88  JSR sub_8800_prepare_mission_data
C - - - - - 0x019526 06:9516: 20 F3 D9  JSR sub_0x01DA03
C - - - - - 0x019529 06:9519: 20 6D D9  JSR sub_0x01D97D
C - - - - - 0x01952C 06:951C: 20 20 C0  JSR sub_0x01C030
C - - - - - 0x01952F 06:951F: AD 8F 04  LDA ram_pal_bg_new
C - - - - - 0x019532 06:9522: 8D 91 04  STA ram_pal_bg_current
C - - - - - 0x019535 06:9525: AD 90 04  LDA ram_pal_spr_new
C - - - - - 0x019538 06:9528: 8D 92 04  STA ram_pal_spr_current
C - - - - - 0x01953B 06:952B: 20 14 E2  JSR sub_0x01E224_create_black_screen
C - - - - - 0x01953E 06:952E: A9 00     LDA #$00
C - - - - - 0x019540 06:9530: 8D F0 00  STA a: ram_irq_flag
C - - - - - 0x019543 06:9533: 8D EA 00  STA a: ram_for_E00x     ; disable irq
C - - - - - 0x019546 06:9536: 8D F1 00  STA a: ram_nmi_counter
C - - - - - 0x019549 06:9539: 20 CA EE  JSR sub_0x01EEDA
C - - - - - 0x01954C 06:953C: AE 22 04  LDX ram_mission_hi
C - - - - - 0x01954F 06:953F: BD 4B 95  LDA tbl_954B_mission_music,X
C - - - - - 0x019552 06:9542: 20 10 FC  JSR sub_0x01FC20_play_sound
C - - - - - 0x019555 06:9545: A9 00     LDA #con_063F_00
C - - - - - 0x019557 06:9547: 8D 3F 06  STA ram_063F_flags
C - - - - - 0x01955A 06:954A: 60        RTS



tbl_954B_mission_music:
tbl_0x01955B_mission_music:
- D 0 - - - 0x01955B 06:954B: 03        .byte con_music_mission_1   ; 00 
- D 0 - - - 0x01955C 06:954C: 02        .byte con_music_mission_2   ; 01 
- D 0 - - - 0x01955D 06:954D: 0F        .byte con_music_mission_3   ; 02 
- D 0 - - - 0x01955E 06:954E: 10        .byte con_music_mission_4   ; 03 
- D 0 - - - 0x01955F 06:954F: 10        .byte con_music_mission_4   ; 04 
- D 0 - - - 0x019560 06:9550: 04        .byte con_music_mission_5   ; 05 
- D 0 - - - 0x019561 06:9551: 07        .byte con_music_mission_6   ; 06 
- D 0 - - - 0x019562 06:9552: 06        .byte con_music_mission_7   ; 07 
- D 0 - - - 0x019563 06:9553: 06        .byte con_music_mission_7   ; 08 
- D 0 - - - 0x019564 06:9554: 06        .byte con_music_mission_7   ; 09 
- D 0 - - - 0x019565 06:9555: 06        .byte con_music_mission_7   ; 0A 
- D 0 - - - 0x019566 06:9556: 06        .byte con_music_mission_7   ; 0B 
- D 0 - - - 0x019567 06:9557: 05        .byte con_music_mission_8   ; 0C 
- D 0 - - - 0x019568 06:9558: 00        .byte con_music_off         ; 0D 
- D 0 - - - 0x019569 06:9559: 0C        .byte con_music_mission_9   ; 0E 



sub_955A_prepare_mission_pointer:
C - - - - - 0x01956A 06:955A: AD 22 04  LDA ram_mission_hi
C - - - - - 0x01956D 06:955D: 0A        ASL
C - - - - - 0x01956E 06:955E: 0A        ASL
C - - - - - 0x01956F 06:955F: 85 29     STA ram_0029
C - - - - - 0x019571 06:9561: A9 53     LDA #< tbl_A453_positions
C - - - - - 0x019573 06:9563: 18        CLC
C - - - - - 0x019574 06:9564: 65 29     ADC ram_0029
C - - - - - 0x019576 06:9566: 85 29     STA ram_0029
C - - - - - 0x019578 06:9568: A9 A4     LDA #> tbl_A453_positions
C - - - - - 0x01957A 06:956A: 69 00     ADC #$00
C - - - - - 0x01957C 06:956C: 85 2A     STA ram_002A
C - - - - - 0x01957E 06:956E: 60        RTS



sub_956F_set_default_cam_pos:
C - - - - - 0x01957F 06:956F: A0 00     LDY #$00
C - - - - - 0x019581 06:9571: B1 29     LDA (ram_0029),Y
C - - - - - 0x019583 06:9573: 85 2B     STA ram_002B
C - - - - - 0x019585 06:9575: C8        INY ; 01
C - - - - - 0x019586 06:9576: B1 29     LDA (ram_0029),Y
C - - - - - 0x019588 06:9578: 85 2C     STA ram_002C
C - - - - - 0x01958A 06:957A: A0 03     LDY #$03
bra_957C_loop:
C - - - - - 0x01958C 06:957C: B1 2B     LDA (ram_002B),Y
C - - - - - 0x01958E 06:957E: 99 D0 00  STA a: ram_obj_pos_X_lo_cam,Y
C - - - - - 0x019591 06:9581: 99 D4 00  STA a: ram_copy_cam_pos,Y
C - - - - - 0x019594 06:9584: 88        DEY
C - - - - - 0x019595 06:9585: 10 F5     BPL bra_957C_loop
C - - - - - 0x019597 06:9587: 60        RTS



sub_9588_set_base_plr_hp:
C - - - - - 0x019598 06:9588: A2 01     LDX #$01
C - - - - - 0x01959A 06:958A: AC 35 04  LDY ram_difficulty
bra_958D_loop:
C - - - - - 0x01959D 06:958D: B5 3C     LDA ram_003C_obj_flags,X ; 003C 003D
C - - - - - 0x01959F 06:958F: 10 06     BPL bra_9597    ; if not con_003C_flag_exist
C - - - - - 0x0195A1 06:9591: B9 9B 95  LDA tbl_959B_hp,Y
C - - - - - 0x0195A4 06:9594: 9D 1E 04  STA ram_hp,X
bra_9597:
C - - - - - 0x0195A7 06:9597: CA        DEX
C - - - - - 0x0195A8 06:9598: 10 F3     BPL bra_958D_loop
C - - - - - 0x0195AA 06:959A: 60        RTS



tbl_959B_hp:
; bzk optimize, same bytes
- D 0 - - - 0x0195AB 06:959B: 7F        .byte $7F   ; easy
- D 0 - - - 0x0195AC 06:959C: 7F        .byte $7F   ; norm
- D 0 - - - 0x0195AD 06:959D: 7F        .byte $7F   ; diff



tbl_959E_checkpoint_mission:
tbl_0x0195AE_checkpoint_mission:
; when you die and use a continue
- D 0 - - - 0x0195AE 06:959E: 00        .byte con_mission_id_00   ; 00 
- - - - - - 0x0195AF 06:959F: 01        .byte con_mission_id_01   ; 01 
- - - - - - 0x0195B0 06:95A0: 02        .byte con_mission_id_02   ; 02 
- D 0 - - - 0x0195B1 06:95A1: 03        .byte con_mission_id_03   ; 03 
- D 0 - - - 0x0195B2 06:95A2: 03        .byte con_mission_id_03   ; 04 
- D 0 - - - 0x0195B3 06:95A3: 05        .byte con_mission_id_05   ; 05 
- D 0 - - - 0x0195B4 06:95A4: 06        .byte con_mission_id_06   ; 06 
- D 0 - - - 0x0195B5 06:95A5: 07        .byte con_mission_id_07   ; 07 
- D 0 - - - 0x0195B6 06:95A6: 07        .byte con_mission_id_07   ; 08 
- D 0 - - - 0x0195B7 06:95A7: 07        .byte con_mission_id_07   ; 09 
- D 0 - - - 0x0195B8 06:95A8: 07        .byte con_mission_id_07   ; 0A 
- D 0 - - - 0x0195B9 06:95A9: 07        .byte con_mission_id_07   ; 0B 
- D 0 - - - 0x0195BA 06:95AA: 0C        .byte con_mission_id_0C   ; 0C 
- - - - - - 0x0195BB 06:95AB: 0D        .byte con_mission_id_0D   ; 0D 
- D 0 - - - 0x0195BC 06:95AC: 0E        .byte con_mission_id_0E   ; 0E 



sub_95AD_set_default_plr_data:
C - - - - - 0x0195BD 06:95AD: A0 02     LDY #$02
C - - - - - 0x0195BF 06:95AF: B1 29     LDA (ram_0029),Y
C - - - - - 0x0195C1 06:95B1: 85 2B     STA ram_002B
C - - - - - 0x0195C3 06:95B3: C8        INY
C - - - - - 0x0195C4 06:95B4: B1 29     LDA (ram_0029),Y
C - - - - - 0x0195C6 06:95B6: 85 2C     STA ram_002C
C - - - - - 0x0195C8 06:95B8: A5 34     LDA ram_game_mode
C - - - - - 0x0195CA 06:95BA: 29 F7     AND #con_gm_08 ^ $FF
C - - - - - 0x0195CC 06:95BC: 85 34     STA ram_game_mode
C - - - - - 0x0195CE 06:95BE: A9 00     LDA #$00
; con_obj_billy
; con_state_idle
; con_003C_flag_exist
; con_0036_00
; con_0359_00
C - - - - - 0x0195D0 06:95C0: 85 BF     STA ram_obj_id
C - - - - - 0x0195D2 06:95C2: 85 43     STA ram_state
C - - - - - 0x0195D4 06:95C4: 85 44     STA ram_state + $01
C - - - - - 0x0195D6 06:95C6: 85 36     STA ram_0036_enemy
C - - - - - 0x0195D8 06:95C8: 85 37     STA ram_0036_enemy + $01
C - - - - - 0x0195DA 06:95CA: 8D 4A 04  STA ram_044A_obj
C - - - - - 0x0195DD 06:95CD: 8D 4B 04  STA ram_044A_obj + $01
C - - - - - 0x0195E0 06:95D0: 8D 46 04  STA ram_0446_obj
C - - - - - 0x0195E3 06:95D3: 8D 47 04  STA ram_0446_obj + $01
C - - - - - 0x0195E6 06:95D6: 85 3C     STA ram_003C_obj_flags
C - - - - - 0x0195E8 06:95D8: 85 3D     STA ram_003C_obj_flags + $01
C - - - - - 0x0195EA 06:95DA: 85 F3     STA ram_00F3
C - - - - - 0x0195EC 06:95DC: 85 F4     STA ram_irq_handler
C - - - - - 0x0195EE 06:95DE: 8D 69 03  STA ram_0369_obj
C - - - - - 0x0195F1 06:95E1: 8D 6A 03  STA ram_0369_obj + $01
C - - - - - 0x0195F4 06:95E4: 8D 59 03  STA ram_0359_obj
C - - - - - 0x0195F7 06:95E7: 8D 5A 03  STA ram_0359_obj + $01
C - - - - - 0x0195FA 06:95EA: 8D 90 03  STA ram_0390
C - - - - - 0x0195FD 06:95ED: 8D 5F 06  STA ram_065F
C - - - - - 0x019600 06:95F0: A9 01     LDA #con_obj_jimmy
C - - - - - 0x019602 06:95F2: 85 C0     STA ram_obj_id + $01
C - - - - - 0x019604 06:95F4: A9 FF     LDA #$FF
C - - - - - 0x019606 06:95F6: 8D CC 03  STA ram_plr_invincibility_timer
C - - - - - 0x019609 06:95F9: 8D CD 03  STA ram_plr_invincibility_timer + $01
C - - - - - 0x01960C 06:95FC: A9 08     LDA #con_004A_flag_not_alive
C - - - - - 0x01960E 06:95FE: 85 4A     STA ram_004A_obj_flags
C - - - - - 0x019610 06:9600: 85 4B     STA ram_004A_obj_flags + $01
C - - - - - 0x019612 06:9602: AD 32 04  LDA ram_lives
C - - - - - 0x019615 06:9605: F0 04     BEQ bra_960B_skip_1p
C - - - - - 0x019617 06:9607: A9 80     LDA #con_003C_flag_exist
C - - - - - 0x019619 06:9609: 85 3C     STA ram_003C_obj_flags
bra_960B_skip_1p:
C - - - - - 0x01961B 06:960B: AD 33 04  LDA ram_lives + $01
C - - - - - 0x01961E 06:960E: F0 04     BEQ bra_9614_skip_2p
; bzk optimize, use A instead of Y
C - - - - - 0x019620 06:9610: A0 80     LDY #con_003C_flag_exist
C - - - - - 0x019622 06:9612: 84 3D     STY ram_003C_obj_flags + $01
bra_9614_skip_2p:
C - - - - - 0x019624 06:9614: 20 88 95  JSR sub_9588_set_base_plr_hp
C - - - - - 0x019627 06:9617: A0 00     LDY #$00
C - - - - - 0x019629 06:9619: B1 2B     LDA (ram_002B),Y
C - - - - - 0x01962B 06:961B: 85 77     STA ram_obj_pos_X_lo
C - - - - - 0x01962D 06:961D: C8        INY ; 01
C - - - - - 0x01962E 06:961E: B1 2B     LDA (ram_002B),Y
C - - - - - 0x019630 06:9620: 85 80     STA ram_obj_pos_X_hi
C - - - - - 0x019632 06:9622: 85 81     STA ram_obj_pos_X_hi + $01
C - - - - - 0x019634 06:9624: C8        INY ; 02
C - - - - - 0x019635 06:9625: B1 2B     LDA (ram_002B),Y
C - - - - - 0x019637 06:9627: 85 92     STA ram_obj_pos_Y_lo
C - - - - - 0x019639 06:9629: C8        INY ; 03
C - - - - - 0x01963A 06:962A: B1 2B     LDA (ram_002B),Y
C - - - - - 0x01963C 06:962C: 85 AD     STA ram_obj_pos_Z_lo
C - - - - - 0x01963E 06:962E: 85 AE     STA ram_obj_pos_Z_lo + $01
C - - - - - 0x019640 06:9630: C8        INY ; 04
C - - - - - 0x019641 06:9631: B1 2B     LDA (ram_002B),Y
C - - - - - 0x019643 06:9633: 85 B6     STA ram_obj_pos_Z_hi
C - - - - - 0x019645 06:9635: 85 B7     STA ram_obj_pos_Z_hi + $01
C - - - - - 0x019647 06:9637: C8        INY ; 05
C - - - - - 0x019648 06:9638: B1 2B     LDA (ram_002B),Y
C - - - - - 0x01964A 06:963A: 85 78     STA ram_obj_pos_X_lo + $01
C - - - - - 0x01964C 06:963C: C8        INY ; 06
C - - - - - 0x01964D 06:963D: B1 2B     LDA (ram_002B),Y
C - - - - - 0x01964F 06:963F: 85 93     STA ram_obj_pos_Y_lo + $01
C - - - - - 0x019651 06:9641: C8        INY ; 07
C - - - - - 0x019652 06:9642: B1 2B     LDA (ram_002B),Y
C - - - - - 0x019654 06:9644: 85 63     STA ram_0063_obj_facing
C - - - - - 0x019656 06:9646: 85 64     STA ram_0063_obj_facing + $01
C - - - - - 0x019658 06:9648: A9 00     LDA #$00
C - - - - - 0x01965A 06:964A: 85 9B     STA ram_obj_pos_Y_hi
C - - - - - 0x01965C 06:964C: 85 9C     STA ram_obj_pos_Y_hi + $01
C - - - - - 0x01965E 06:964E: A5 3C     LDA ram_003C_obj_flags
C - - - - - 0x019660 06:9650: 25 3D     AND ram_003C_obj_flags + $01
C - - - - - 0x019662 06:9652: 30 03     BMI bra_9657_RTS    ; if con_003C_flag_exist
C - - - - - 0x019664 06:9654: 20 58 96  JSR sub_9658
bra_9657_RTS:
C - - - - - 0x019667 06:9657: 60        RTS



sub_9658:
C - - - - - 0x019668 06:9658: A2 00     LDX #$00
; bzk optimize, LDA instead of LDA,X
; bzk bug?
C - - - - - 0x01966A 06:965A: B5 3C     LDA ram_003C_obj_flags,X
C - - - - - 0x01966C 06:965C: 30 02     BMI bra_9660    ; if con_003C_flag_exist
- - - - - - 0x01966E 06:965E: A2 01     LDX #$01
bra_9660:
C - - - - - 0x019670 06:9660: A5 77     LDA ram_obj_pos_X_lo
C - - - - - 0x019672 06:9662: 18        CLC
C - - - - - 0x019673 06:9663: 65 78     ADC ram_obj_pos_X_lo + $01
C - - - - - 0x019675 06:9665: 95 77     STA ram_obj_pos_X_lo,X
C - - - - - 0x019677 06:9667: A5 80     LDA ram_obj_pos_X_hi
C - - - - - 0x019679 06:9669: 65 81     ADC ram_obj_pos_X_hi + $01
C - - - - - 0x01967B 06:966B: 95 80     STA ram_obj_pos_X_hi,X
C - - - - - 0x01967D 06:966D: 56 80     LSR ram_obj_pos_X_hi,X
C - - - - - 0x01967F 06:966F: 76 77     ROR ram_obj_pos_X_lo,X
C - - - - - 0x019681 06:9671: A5 92     LDA ram_obj_pos_Y_lo
C - - - - - 0x019683 06:9673: 18        CLC
C - - - - - 0x019684 06:9674: 65 93     ADC ram_obj_pos_Y_lo + $01
C - - - - - 0x019686 06:9676: 95 92     STA ram_obj_pos_Y_lo,X
C - - - - - 0x019688 06:9678: A5 9B     LDA ram_obj_pos_Y_hi
C - - - - - 0x01968A 06:967A: 65 9C     ADC ram_obj_pos_Y_hi + $01
C - - - - - 0x01968C 06:967C: 95 9B     STA ram_obj_pos_Y_hi,X
C - - - - - 0x01968E 06:967E: 56 9B     LSR ram_obj_pos_Y_hi,X
C - - - - - 0x019690 06:9680: 76 92     ROR ram_obj_pos_Y_lo,X
C - - - - - 0x019692 06:9682: 60        RTS



ofs_010_9683_04_enter_door:
C - - J - - 0x019693 06:9683: AD 28 04  LDA ram_0428
C - - - - - 0x019696 06:9686: 0A        ASL
C - - - - - 0x019697 06:9687: AA        TAX
C - - - - - 0x019698 06:9688: BD 59 98  LDA tbl_9859_door_coordinates,X
C - - - - - 0x01969B 06:968B: 85 2B     STA ram_002B
C - - - - - 0x01969D 06:968D: BD 5A 98  LDA tbl_9859_door_coordinates + $01,X
C - - - - - 0x0196A0 06:9690: 85 2C     STA ram_002C
C - - - - - 0x0196A2 06:9692: 20 B6 98  JSR sub_98B6_check_who_is_alive
C - - - - - 0x0196A5 06:9695: C9 02     CMP #$02
C - - - - - 0x0196A7 06:9697: F0 2A     BEQ bra_96C3
C - - - - - 0x0196A9 06:9699: C9 01     CMP #$01
C - - - - - 0x0196AB 06:969B: F0 01     BEQ bra_969E
- - - - - - 0x0196AD 06:969D: 60        RTS
bra_969E:
C - - - - - 0x0196AE 06:969E: A2 00     LDX #$00
C - - - - - 0x0196B0 06:96A0: A5 3C     LDA ram_003C_obj_flags
C - - - - - 0x0196B2 06:96A2: 30 02     BMI bra_96A6    ; if con_003C_flag_exist
- - - - - - 0x0196B4 06:96A4: A2 01     LDX #$01
bra_96A6:
C - - - - - 0x0196B6 06:96A6: B5 36     LDA ram_0036_enemy,X
C - - - - - 0x0196B8 06:96A8: 29 08     AND #con_0036_08
C - - - - - 0x0196BA 06:96AA: D0 0B     BNE bra_96B7
C - - - - - 0x0196BC 06:96AC: 20 EB 97  JSR sub_97EB
C - - - - - 0x0196BF 06:96AF: 90 11     BCC bra_96C2_RTS
C - - - - - 0x0196C1 06:96B1: B5 36     LDA ram_0036_enemy,X
C - - - - - 0x0196C3 06:96B3: 29 FC     AND #(con_0036_01 + con_0036_02) ^ $FF
C - - - - - 0x0196C5 06:96B5: 95 36     STA ram_0036_enemy,X
bra_96B7:
C - - - - - 0x0196C7 06:96B7: 20 70 97  JSR sub_9770_open_door
C - - - - - 0x0196CA 06:96BA: 90 06     BCC bra_96C2_RTS
C - - - - - 0x0196CC 06:96BC: EE 23 04  INC ram_mission_lo
C - - - - - 0x0196CF 06:96BF: 20 18 8F  JSR sub_8F18_prepare_next_script
bra_96C2_RTS:
C - - - - - 0x0196D2 06:96C2: 60        RTS
bra_96C3:
C - - - - - 0x0196D3 06:96C3: A5 36     LDA ram_0036_enemy
C - - - - - 0x0196D5 06:96C5: 09 10     ORA #con_0036_10
C - - - - - 0x0196D7 06:96C7: 85 36     STA ram_0036_enemy
C - - - - - 0x0196D9 06:96C9: A5 37     LDA ram_0036_enemy + $01
C - - - - - 0x0196DB 06:96CB: 09 10     ORA #con_0036_10
C - - - - - 0x0196DD 06:96CD: 85 37     STA ram_0036_enemy + $01
C - - - - - 0x0196DF 06:96CF: A5 36     LDA ram_0036_enemy
C - - - - - 0x0196E1 06:96D1: 25 37     AND ram_0036_enemy + $01
C - - - - - 0x0196E3 06:96D3: 29 08     AND #con_0036_08
C - - - - - 0x0196E5 06:96D5: D0 6D     BNE bra_9744
C - - - - - 0x0196E7 06:96D7: A5 36     LDA ram_0036_enemy
C - - - - - 0x0196E9 06:96D9: 05 37     ORA ram_0036_enemy + $01
C - - - - - 0x0196EB 06:96DB: 29 08     AND #con_0036_08
C - - - - - 0x0196ED 06:96DD: D0 15     BNE bra_96F4
C - - - - - 0x0196EF 06:96DF: A2 00     LDX #$00
; bzk optimize, LDA instead of LDA,X
; bzk bug?
C - - - - - 0x0196F1 06:96E1: B5 3C     LDA ram_003C_obj_flags,X
C - - - - - 0x0196F3 06:96E3: 10 05     BPL bra_96EA    ; if not con_003C_flag_exist
bra_96E5_loop:
C - - - - - 0x0196F5 06:96E5: 20 EB 97  JSR sub_97EB
C - - - - - 0x0196F8 06:96E8: B0 06     BCS bra_96F0
bra_96EA:
C - - - - - 0x0196FA 06:96EA: E8        INX
C - - - - - 0x0196FB 06:96EB: E0 02     CPX #$02
C - - - - - 0x0196FD 06:96ED: 90 F6     BCC bra_96E5_loop
C - - - - - 0x0196FF 06:96EF: 60        RTS
bra_96F0:
- - - - - - 0x019700 06:96F0: 20 70 97  JSR sub_9770_open_door
- - - - - - 0x019703 06:96F3: 60        RTS
bra_96F4:
- - - - - - 0x019704 06:96F4: A2 00     LDX #$00
- - - - - - 0x019706 06:96F6: A5 36     LDA ram_0036_enemy
- - - - - - 0x019708 06:96F8: 29 08     AND #con_0036_08
- - - - - - 0x01970A 06:96FA: D0 02     BNE bra_96FE
- - - - - - 0x01970C 06:96FC: A2 01     LDX #$01
bra_96FE:
- - - - - - 0x01970E 06:96FE: B5 36     LDA ram_0036_enemy,X
- - - - - - 0x019710 06:9700: 29 03     AND #con_0036_01 + con_0036_02
- - - - - - 0x019712 06:9702: C9 01     CMP #con_0036_01
- - - - - - 0x019714 06:9704: D0 12     BNE bra_9718
- - - - - - 0x019716 06:9706: AD 80 04  LDA ram_0480
- - - - - - 0x019719 06:9709: 30 0C     BMI bra_9717_RTS
- - - - - - 0x01971B 06:970B: B5 36     LDA ram_0036_enemy,X
; bzk optimize, what's the point of AND 02 + ORA 02?
- - - - - - 0x01971D 06:970D: 29 FC     AND #(con_0036_01 + con_0036_02) ^ $FF
- - - - - - 0x01971F 06:970F: 09 02     ORA #con_0036_02
- - - - - - 0x019721 06:9711: 95 36     STA ram_0036_enemy,X
- - - - - - 0x019723 06:9713: A9 7F     LDA #con_state_hair_grabbed
- - - - - - 0x019725 06:9715: 95 43     STA ram_state,X
bra_9717_RTS:
- - - - - - 0x019727 06:9717: 60        RTS
bra_9718:
- - - - - - 0x019728 06:9718: C9 02     CMP #$02
- - - - - - 0x01972A 06:971A: 90 27     BCC bra_9743_RTS
- - - - - - 0x01972C 06:971C: 8A        TXA
- - - - - - 0x01972D 06:971D: 49 01     EOR #$01
- - - - - - 0x01972F 06:971F: AA        TAX
- - - - - - 0x019730 06:9720: 20 EB 97  JSR sub_97EB
- - - - - - 0x019733 06:9723: 90 1E     BCC bra_9743_RTS
- - - - - - 0x019735 06:9725: A9 7F     LDA #con_state_hair_grabbed
- - - - - - 0x019737 06:9727: 95 43     STA ram_state,X
- - - - - - 0x019739 06:9729: A5 36     LDA ram_0036_enemy
- - - - - - 0x01973B 06:972B: 09 03     ORA #con_0036_01 + con_0036_02
- - - - - - 0x01973D 06:972D: 85 36     STA ram_0036_enemy
; bzk bug? why enemy 1 affects enemy 2?
- - - - - - 0x01973F 06:972F: 85 37     STA ram_0036_enemy + $01
- - - - - - 0x019741 06:9731: A0 00     LDY #$00
- - - - - - 0x019743 06:9733: B1 2B     LDA (ram_002B),Y
- - - - - - 0x019745 06:9735: 29 80     AND #$80
- - - - - - 0x019747 06:9737: 10 04     BPL bra_973D
- - - - - - 0x019749 06:9739: 20 4A 97  JSR sub_974A
- - - - - - 0x01974C 06:973C: 60        RTS
bra_973D:
- - - - - - 0x01974D 06:973D: EE 23 04  INC ram_mission_lo
- - - - - - 0x019750 06:9740: 20 18 8F  JSR sub_8F18_prepare_next_script
bra_9743_RTS:
- - - - - - 0x019753 06:9743: 60        RTS
bra_9744:
- - - - - - 0x019754 06:9744: AD 80 04  LDA ram_0480
- - - - - - 0x019757 06:9747: 10 F4     BPL bra_973D
- - - - - - 0x019759 06:9749: 60        RTS



sub_974A:
- - - - - - 0x01975A 06:974A: A0 09     LDY #$09
- - - - - - 0x01975C 06:974C: B1 2B     LDA (ram_002B),Y
- - - - - - 0x01975E 06:974E: 09 80     ORA #$80
- - - - - - 0x019760 06:9750: 8D 80 04  STA ram_0480
- - - - - - 0x019763 06:9753: A9 03     LDA #$03
- - - - - - 0x019765 06:9755: 8D 81 04  STA ram_0481
- - - - - - 0x019768 06:9758: 60        RTS



sub_9759:
C - - - - - 0x019769 06:9759: 0A        ASL
C - - - - - 0x01976A 06:975A: A8        TAY
C - - - - - 0x01976B 06:975B: B9 59 98  LDA tbl_9859_door_coordinates,Y
C - - - - - 0x01976E 06:975E: 85 2B     STA ram_002B
C - - - - - 0x019770 06:9760: B9 5A 98  LDA tbl_9859_door_coordinates + $01,Y
C - - - - - 0x019773 06:9763: 85 2C     STA ram_002C
C - - - - - 0x019775 06:9765: B5 3C     LDA ram_003C_obj_flags,X ; 003C 003D
C - - - - - 0x019777 06:9767: 10 05     BPL bra_976E    ; if not con_003C_flag_exist
C - - - - - 0x019779 06:9769: 20 EB 97  JSR sub_97EB
C - - - - - 0x01977C 06:976C: B0 01     BCS bra_976F_RTS
bra_976E:
C - - - - - 0x01977E 06:976E: 18        CLC
bra_976F_RTS:
C - - - - - 0x01977F 06:976F: 60        RTS



sub_9770_open_door:
C - - - - - 0x019780 06:9770: A0 00     LDY #$00
C - - - - - 0x019782 06:9772: B1 2B     LDA (ram_002B),Y
C - - - - - 0x019784 06:9774: 10 69     BPL bra_97DF
; if 80+
C - - - - - 0x019786 06:9776: B5 36     LDA ram_0036_enemy,X
C - - - - - 0x019788 06:9778: 29 03     AND #con_0036_01 + con_0036_02
C - - - - - 0x01978A 06:977A: D0 1B     BNE bra_9797
C - - - - - 0x01978C 06:977C: A9 3E     LDA #con_sfx_door
C - - - - - 0x01978E 06:977E: 20 10 FC  JSR sub_0x01FC20_play_sound
C - - - - - 0x019791 06:9781: A0 09     LDY #$09
C - - - - - 0x019793 06:9783: B1 2B     LDA (ram_002B),Y
C - - - - - 0x019795 06:9785: 09 80     ORA #$80
C - - - - - 0x019797 06:9787: 8D 80 04  STA ram_0480
C - - - - - 0x01979A 06:978A: A9 80     LDA #$80
C - - - - - 0x01979C 06:978C: 8D 81 04  STA ram_0481
C - - - - - 0x01979F 06:978F: B5 36     LDA ram_0036_enemy,X
C - - - - - 0x0197A1 06:9791: 09 01     ORA #con_0036_01
C - - - - - 0x0197A3 06:9793: 95 36     STA ram_0036_enemy,X
C - - - - - 0x0197A5 06:9795: 18        CLC
C - - - - - 0x0197A6 06:9796: 60        RTS
bra_9797:
C - - - - - 0x0197A7 06:9797: C9 01     CMP #$01
C - - - - - 0x0197A9 06:9799: D0 26     BNE bra_97C1
C - - - - - 0x0197AB 06:979B: AD 80 04  LDA ram_0480
C - - - - - 0x0197AE 06:979E: 30 1F     BMI bra_97BF
C - - - - - 0x0197B0 06:97A0: A9 3E     LDA #con_sfx_door
C - - - - - 0x0197B2 06:97A2: 20 10 FC  JSR sub_0x01FC20_play_sound
C - - - - - 0x0197B5 06:97A5: A0 09     LDY #$09
C - - - - - 0x0197B7 06:97A7: B1 2B     LDA (ram_002B),Y
C - - - - - 0x0197B9 06:97A9: 09 80     ORA #$80
C - - - - - 0x0197BB 06:97AB: 8D 80 04  STA ram_0480
C - - - - - 0x0197BE 06:97AE: A9 03     LDA #$03
C - - - - - 0x0197C0 06:97B0: 8D 81 04  STA ram_0481
C - - - - - 0x0197C3 06:97B3: B5 36     LDA ram_0036_enemy,X
; bzk optimize, what's the point of AND 02 + ORA 02?
C - - - - - 0x0197C5 06:97B5: 29 FC     AND #(con_0036_01 + con_0036_02) ^ $FF
C - - - - - 0x0197C7 06:97B7: 09 02     ORA #con_0036_02
C - - - - - 0x0197C9 06:97B9: 95 36     STA ram_0036_enemy,X
C - - - - - 0x0197CB 06:97BB: A9 7F     LDA #con_state_hair_grabbed
C - - - - - 0x0197CD 06:97BD: 95 43     STA ram_state,X
bra_97BF:
C - - - - - 0x0197CF 06:97BF: 18        CLC
C - - - - - 0x0197D0 06:97C0: 60        RTS
bra_97C1:
C - - - - - 0x0197D1 06:97C1: C9 02     CMP #$02
C - - - - - 0x0197D3 06:97C3: D0 1A     BNE bra_97DF
C - - - - - 0x0197D5 06:97C5: B5 36     LDA ram_0036_enemy,X
C - - - - - 0x0197D7 06:97C7: 29 10     AND #con_0036_10
C - - - - - 0x0197D9 06:97C9: F0 0F     BEQ bra_97DA
- - - - - - 0x0197DB 06:97CB: 20 4A 97  JSR sub_974A
- - - - - - 0x0197DE 06:97CE: A5 36     LDA ram_0036_enemy
- - - - - - 0x0197E0 06:97D0: 29 EF     AND #con_0036_10 ^ $FF
- - - - - - 0x0197E2 06:97D2: 85 36     STA ram_0036_enemy
- - - - - - 0x0197E4 06:97D4: A5 37     LDA ram_0036_enemy + $01
- - - - - - 0x0197E6 06:97D6: 29 EF     AND #con_0036_10 ^ $FF
- - - - - - 0x0197E8 06:97D8: 85 37     STA ram_0036_enemy + $01
bra_97DA:
C - - - - - 0x0197EA 06:97DA: AD 80 04  LDA ram_0480
C - - - - - 0x0197ED 06:97DD: 30 E0     BMI bra_97BF
bra_97DF:
C - - - - - 0x0197EF 06:97DF: B5 36     LDA ram_0036_enemy,X
C - - - - - 0x0197F1 06:97E1: 09 03     ORA #con_0036_01 + con_0036_02
C - - - - - 0x0197F3 06:97E3: 95 36     STA ram_0036_enemy,X
C - - - - - 0x0197F5 06:97E5: A9 7F     LDA #con_state_hair_grabbed
C - - - - - 0x0197F7 06:97E7: 95 43     STA ram_state,X
C - - - - - 0x0197F9 06:97E9: 38        SEC
C - - - - - 0x0197FA 06:97EA: 60        RTS



sub_97EB:
C - - - - - 0x0197FB 06:97EB: A0 07     LDY #$07
C - - - - - 0x0197FD 06:97ED: B1 2B     LDA (ram_002B),Y
C - - - - - 0x0197FF 06:97EF: D5 AD     CMP ram_obj_pos_Z_lo,X
C - - - - - 0x019801 06:97F1: D0 32     BNE bra_9825
C - - - - - 0x019803 06:97F3: C8        INY ; 08
C - - - - - 0x019804 06:97F4: B1 2B     LDA (ram_002B),Y
C - - - - - 0x019806 06:97F6: D5 B6     CMP ram_obj_pos_Z_hi,X
C - - - - - 0x019808 06:97F8: D0 2B     BNE bra_9825
C - - - - - 0x01980A 06:97FA: A0 01     LDY #$01
C - - - - - 0x01980C 06:97FC: B5 77     LDA ram_obj_pos_X_lo,X
C - - - - - 0x01980E 06:97FE: 38        SEC
C - - - - - 0x01980F 06:97FF: F1 2B     SBC (ram_002B),Y
C - - - - - 0x019811 06:9801: C8        INY ; 02
C - - - - - 0x019812 06:9802: B5 80     LDA ram_obj_pos_X_hi,X
C - - - - - 0x019814 06:9804: F1 2B     SBC (ram_002B),Y
C - - - - - 0x019816 06:9806: 90 1D     BCC bra_9825
C - - - - - 0x019818 06:9808: C8        INY ; 03
C - - - - - 0x019819 06:9809: B1 2B     LDA (ram_002B),Y
C - - - - - 0x01981B 06:980B: 38        SEC
C - - - - - 0x01981C 06:980C: F5 77     SBC ram_obj_pos_X_lo,X
C - - - - - 0x01981E 06:980E: C8        INY ; 04
C - - - - - 0x01981F 06:980F: B1 2B     LDA (ram_002B),Y
C - - - - - 0x019821 06:9811: F5 80     SBC ram_obj_pos_X_hi,X
C - - - - - 0x019823 06:9813: 90 10     BCC bra_9825
C - - - - - 0x019825 06:9815: C8        INY ; 05
C - - - - - 0x019826 06:9816: B5 92     LDA ram_obj_pos_Y_lo,X
C - - - - - 0x019828 06:9818: 38        SEC
C - - - - - 0x019829 06:9819: F1 2B     SBC (ram_002B),Y
C - - - - - 0x01982B 06:981B: 90 08     BCC bra_9825
C - - - - - 0x01982D 06:981D: C8        INY ; 06
C - - - - - 0x01982E 06:981E: B1 2B     LDA (ram_002B),Y
C - - - - - 0x019830 06:9820: 38        SEC
C - - - - - 0x019831 06:9821: F5 92     SBC ram_obj_pos_Y_lo,X
C - - - - - 0x019833 06:9823: B0 04     BCS bra_9829
bra_9825:
C - - - - - 0x019835 06:9825: 20 49 98  JSR sub_9849
C - - - - - 0x019838 06:9828: 60        RTS
bra_9829:
C - - - - - 0x019839 06:9829: B5 36     LDA ram_0036_enemy,X
C - - - - - 0x01983B 06:982B: 29 08     AND #con_0036_08
C - - - - - 0x01983D 06:982D: D0 12     BNE bra_9841
C - - - - - 0x01983F 06:982F: A0 00     LDY #$00
C - - - - - 0x019841 06:9831: B1 2B     LDA (ram_002B),Y
C - - - - - 0x019843 06:9833: 29 03     AND #$03
C - - - - - 0x019845 06:9835: C9 03     CMP #$03
C - - - - - 0x019847 06:9837: F0 08     BEQ bra_9841
C - - - - - 0x019849 06:9839: A8        TAY
C - - - - - 0x01984A 06:983A: B5 E2     LDA ram_btn_hold,X
C - - - - - 0x01984C 06:983C: 39 45 98  AND tbl_9845,Y
C - - - - - 0x01984F 06:983F: F0 E4     BEQ bra_9825
bra_9841:
C - - - - - 0x019851 06:9841: 20 51 98  JSR sub_9851
C - - - - - 0x019854 06:9844: 60        RTS



tbl_9845:
- D 0 - - - 0x019855 06:9845: 08        .byte con_btn_Up   ; 00 
- - - - - - 0x019856 06:9846: 02        .byte con_btn_Left   ; 01 
- - - - - - 0x019857 06:9847: 01        .byte con_btn_Right   ; 02 


; bzk garbage
- - - - - - 0x019858 06:9848: 00        .byte $00   ; 03 



sub_9849:
C - - - - - 0x019859 06:9849: B5 36     LDA ram_0036_enemy,X
C - - - - - 0x01985B 06:984B: 29 F7     AND #con_0036_08 ^ $FF
C - - - - - 0x01985D 06:984D: 95 36     STA ram_0036_enemy,X
C - - - - - 0x01985F 06:984F: 18        CLC
C - - - - - 0x019860 06:9850: 60        RTS



sub_9851:
C - - - - - 0x019861 06:9851: B5 36     LDA ram_0036_enemy,X
C - - - - - 0x019863 06:9853: 09 08     ORA #con_0036_08
C - - - - - 0x019865 06:9855: 95 36     STA ram_0036_enemy,X
C - - - - - 0x019867 06:9857: 38        SEC
C - - - - - 0x019868 06:9858: 60        RTS



tbl_9859_door_coordinates:
; see con_9859
- D 0 - - - 0x019869 06:9859: 6B 98     .word _off022_986B_00
- D 0 - - - 0x01986B 06:985B: 75 98     .word _off022_9875_01
- D 0 - - - 0x01986D 06:985D: 7F 98     .word _off022_987F_02
- D 0 - - - 0x01986F 06:985F: 89 98     .word _off022_9889_03
- D 0 - - - 0x019871 06:9861: 92 98     .word _off022_9892_04
- D 0 - - - 0x019873 06:9863: 9B 98     .word _off022_989B_05
- D 0 - - - 0x019875 06:9865: A4 98     .word _off022_98A4_06
- D 0 - - - 0x019877 06:9867: 9B 98     .word _off022_989B_07
- D 0 - - - 0x019879 06:9869: AD 98     .word _off022_98AD_08



_off022_986B_00:
- D 0 - I - 0x01987B 06:986B: 00        .byte $00   ; check for button (up)
- D 0 - I - 0x01987C 06:986C: C8 01     .word $01C8 ; pos_X (min)
- D 0 - I - 0x01987E 06:986E: E8 01     .word $01E8 ; pos_X (max)
- D 0 - I - 0x019880 06:9870: 50        .byte $50   ; pos_Y_lo (min)
- D 0 - I - 0x019881 06:9871: 70        .byte $70   ; pos_Y_lo (max)
- D 0 - I - 0x019882 06:9872: F0 01     .word $01F0 ; pos_Z
; bzk garbage? con_A6C3_draw_enter_elevator_door ???
- - - - - - 0x019884 06:9874: 04        .byte $04   ; 

_off022_9875_01:
- D 0 - I - 0x019885 06:9875: 00        .byte $00   ; check for button (up)
- D 0 - I - 0x019886 06:9876: D0 03     .word $03D0 ; pos_X (min)
- D 0 - I - 0x019888 06:9878: E8 03     .word $03E8 ; pos_X (max)
- D 0 - I - 0x01988A 06:987A: 50        .byte $50   ; pos_Y_lo (min)
- D 0 - I - 0x01988B 06:987B: 60        .byte $60   ; pos_Y_lo (max)
- D 0 - I - 0x01988C 06:987C: 10 00     .word $0010 ; pos_Z
; bzk garbage? con_A6C3_draw_final_door_03 ???
- - - - - - 0x01988E 06:987E: 06        .byte $06   ; 

_off022_987F_02:
- D 0 - I - 0x01988F 06:987F: C0        .byte $C0   ; check for button (up) + ??? (see 0x019782)
- D 0 - I - 0x019890 06:9880: 30 00     .word $0030 ; pos_X (min)
- D 0 - I - 0x019892 06:9882: 3F 00     .word $003F ; pos_X (max)
- D 0 - I - 0x019894 06:9884: 50        .byte $50   ; pos_Y_lo (min)
- D 0 - I - 0x019895 06:9885: 80        .byte $80   ; pos_Y_lo (max)
- D 0 - I - 0x019896 06:9886: 50 00     .word $0050 ; pos_Z
- D 0 - I - 0x019898 06:9888: 07        .byte con_A6C3_draw_final_door_04   ; 

_off022_9889_03:
- D 0 - I - 0x019899 06:9889: 00        .byte $00   ; check for button (up)
- D 0 - I - 0x01989A 06:988A: 86 00     .word $0086 ; pos_X (min)
- D 0 - I - 0x01989C 06:988C: 96 00     .word $0096 ; pos_X (max)
- D 0 - I - 0x01989E 06:988E: 00        .byte $00   ; pos_Y_lo (min)
- D 0 - I - 0x01989F 06:988F: 10        .byte $10   ; pos_Y_lo (max)
- D 0 - I - 0x0198A0 06:9890: B8 00     .word $00B8 ; pos_Z

_off022_9892_04:
- D 0 - I - 0x0198A2 06:9892: 00        .byte $00   ; check for button (up)
- D 0 - I - 0x0198A3 06:9893: EA 00     .word $00EA ; pos_X (min)
- D 0 - I - 0x0198A5 06:9895: FF 00     .word $00FF ; pos_X (max)
- D 0 - I - 0x0198A7 06:9897: 00        .byte $00   ; pos_Y_lo (min)
- D 0 - I - 0x0198A8 06:9898: 10        .byte $10   ; pos_Y_lo (max)
- D 0 - I - 0x0198A9 06:9899: 58 00     .word $0058 ; pos_Z

_off022_989B_05:
_off022_989B_07:
- D 0 - I - 0x0198AB 06:989B: 00        .byte $00   ; check for button (up)
- D 0 - I - 0x0198AC 06:989C: C8 00     .word $00C8 ; pos_X (min)
- D 0 - I - 0x0198AE 06:989E: D8 00     .word $00D8 ; pos_X (max)
- D 0 - I - 0x0198B0 06:98A0: 00        .byte $00   ; pos_Y_lo (min)
- D 0 - I - 0x0198B1 06:98A1: 00        .byte $00   ; pos_Y_lo (max)
- D 0 - I - 0x0198B2 06:98A2: 70 00     .word $0070 ; pos_Z

_off022_98A4_06:
- D 0 - I - 0x0198B4 06:98A4: 00        .byte $00   ; check for button (up)
- D 0 - I - 0x0198B5 06:98A5: 18 00     .word $0018 ; pos_X (min)
- D 0 - I - 0x0198B7 06:98A7: 2A 00     .word $002A ; pos_X (max)
- D 0 - I - 0x0198B9 06:98A9: 00        .byte $00   ; pos_Y_lo (min)
- D 0 - I - 0x0198BA 06:98AA: 10        .byte $10   ; pos_Y_lo (max)
- D 0 - I - 0x0198BB 06:98AB: B0 00     .word $00B0 ; pos_Z

_off022_98AD_08:
- D 0 - I - 0x0198BD 06:98AD: 03        .byte $03   ; check for button (skip check)
- D 0 - I - 0x0198BE 06:98AE: AC 00     .word $00AC ; pos_X (min)
- D 0 - I - 0x0198C0 06:98B0: B4 00     .word $00B4 ; pos_X (max)
- D 0 - I - 0x0198C2 06:98B2: 4D        .byte $4D   ; pos_Y_lo (min)
- D 0 - I - 0x0198C3 06:98B3: 53        .byte $53   ; pos_Y_lo (max)
- D 0 - I - 0x0198C4 06:98B4: 00 00     .word $0000 ; pos_Z



sub_98B6_check_who_is_alive:
C - - - - - 0x0198C6 06:98B6: A2 00     LDX #$00
C - - - - - 0x0198C8 06:98B8: A5 3C     LDA ram_003C_obj_flags
C - - - - - 0x0198CA 06:98BA: 25 3D     AND ram_003C_obj_flags + $01
C - - - - - 0x0198CC 06:98BC: 30 23     BMI bra_98E1    ; if con_003C_flag_exist
C - - - - - 0x0198CE 06:98BE: A5 3C     LDA ram_003C_obj_flags
C - - - - - 0x0198D0 06:98C0: 05 3D     ORA ram_003C_obj_flags + $01
C - - - - - 0x0198D2 06:98C2: 30 0B     BMI bra_98CF    ; if con_003C_flag_exist
C - - - - - 0x0198D4 06:98C4: AD 32 04  LDA ram_lives
C - - - - - 0x0198D7 06:98C7: 0D 33 04  ORA ram_lives + $01
C - - - - - 0x0198DA 06:98CA: D0 03     BNE bra_98CF
- - - - - - 0x0198DC 06:98CC: A9 00     LDA #$00
- - - - - - 0x0198DE 06:98CE: 60        RTS
bra_98CF:
C - - - - - 0x0198DF 06:98CF: A5 3C     LDA ram_003C_obj_flags
C - - - - - 0x0198E1 06:98D1: 10 02     BPL bra_98D5    ; if not con_003C_flag_exist
C - - - - - 0x0198E3 06:98D3: A2 01     LDX #$01
bra_98D5:
C - - - - - 0x0198E5 06:98D5: BD 32 04  LDA ram_lives,X
C - - - - - 0x0198E8 06:98D8: D0 07     BNE bra_98E1
C - - - - - 0x0198EA 06:98DA: 8A        TXA
C - - - - - 0x0198EB 06:98DB: 49 01     EOR #$01
C - - - - - 0x0198ED 06:98DD: AA        TAX
C - - - - - 0x0198EE 06:98DE: A9 01     LDA #$01
C - - - - - 0x0198F0 06:98E0: 60        RTS
bra_98E1:
C - - - - - 0x0198F1 06:98E1: A9 02     LDA #$02
C - - - - - 0x0198F3 06:98E3: 60        RTS



sub_98E4:
C - - - - - 0x0198F4 06:98E4: A5 E2     LDA ram_btn_hold
C - - - - - 0x0198F6 06:98E6: 29 20     AND #con_btn_Select
C - - - - - 0x0198F8 06:98E8: F0 42     BEQ bra_992C_RTS
C - - - - - 0x0198FA 06:98EA: AD F6 FF  LDA tbl_0x020006_debug_byte
C - - - - - 0x0198FD 06:98ED: 10 3D     BPL bra_992C_RTS
C - - - - - 0x0198FF 06:98EF: A5 E0     LDA ram_btn_press
C - - - - - 0x019901 06:98F1: 29 CF     AND #con_btns_AB + con_btns_Dpad
C - - - - - 0x019903 06:98F3: F0 31     BEQ bra_9926
C - - - - - 0x019905 06:98F5: 0A        ASL
C - - - - - 0x019906 06:98F6: 90 0E     BCC bra_9906
C - - - - - 0x019908 06:98F8: AD 22 04  LDA ram_mission_hi
C - - - - - 0x01990B 06:98FB: C9 0E     CMP #$0E
C - - - - - 0x01990D 06:98FD: B0 2D     BCS bra_992C_RTS
C - - - - - 0x01990F 06:98FF: A5 34     LDA ram_game_mode
C - - - - - 0x019911 06:9901: 09 01     ORA #con_gm_01
C - - - - - 0x019913 06:9903: 85 34     STA ram_game_mode
C - - - - - 0x019915 06:9905: 60        RTS
bra_9906:
C - - - - - 0x019916 06:9906: 0A        ASL
C - - - - - 0x019917 06:9907: 90 07     BCC bra_9910
C - - - - - 0x019919 06:9909: EE 23 04  INC ram_mission_lo
C - - - - - 0x01991C 06:990C: 20 18 8F  JSR sub_8F18_prepare_next_script
C - - - - - 0x01991F 06:990F: 60        RTS
bra_9910:
C - - - - - 0x019920 06:9910: 0A        ASL
C - - - - - 0x019921 06:9911: 0A        ASL
C - - - - - 0x019922 06:9912: 0A        ASL
C - - - - - 0x019923 06:9913: 90 05     BCC bra_991A
C - - - - - 0x019925 06:9915: A9 00     LDA #con_003C_flag_00
C - - - - - 0x019927 06:9917: 85 3E     STA ram_003C_obj_flags + $02
C - - - - - 0x019929 06:9919: 60        RTS
bra_991A:
C - - - - - 0x01992A 06:991A: 0A        ASL
C - - - - - 0x01992B 06:991B: 90 05     BCC bra_9922
C - - - - - 0x01992D 06:991D: A9 00     LDA #con_003C_flag_00
C - - - - - 0x01992F 06:991F: 85 3F     STA ram_003C_obj_flags + $03
C - - - - - 0x019931 06:9921: 60        RTS
bra_9922:
C - - - - - 0x019932 06:9922: 0A        ASL
C - - - - - 0x019933 06:9923: 90 01     BCC bra_9926
C - - - - - 0x019935 06:9925: 60        RTS
bra_9926:
C - - - - - 0x019936 06:9926: A5 E1     LDA ram_btn_press + $01
C - - - - - 0x019938 06:9928: 29 40     AND #con_btn_B
C - - - - - 0x01993A 06:992A: F0 00     BEQ bra_992C_RTS    ; bzk optimize, useless check
bra_992C_RTS:
C - - - - - 0x01993C 06:992C: 60        RTS



tbl_992D_mission_data:
- D 0 - - - 0x01993D 06:992D: 4B 99     .word _off023_994B_00
- D 0 - - - 0x01993F 06:992F: 7B 99     .word _off023_997B_01
- D 0 - - - 0x019941 06:9931: AD 99     .word _off023_99AD_02
- D 0 - - - 0x019943 06:9933: BF 99     .word _off023_99BF_03
- D 0 - - - 0x019945 06:9935: E9 99     .word _off023_99E9_04
- D 0 - - - 0x019947 06:9937: F3 99     .word _off023_99F3_05
- D 0 - - - 0x019949 06:9939: 25 9A     .word _off023_9A25_06
- D 0 - - - 0x01994B 06:993B: 37 9A     .word _off023_9A37_07
- D 0 - - - 0x01994D 06:993D: 3D 9A     .word _off023_9A3D_08
- D 0 - - - 0x01994F 06:993F: 49 9A     .word _off023_9A49_09
- D 0 - - - 0x019951 06:9941: 4F 9A     .word _off023_9A4F_0A
- D 0 - - - 0x019953 06:9943: 57 9A     .word _off023_9A57_0B
- D 0 - - - 0x019955 06:9945: 67 9A     .word _off023_9A67_0C
- D 0 - - - 0x019957 06:9947: 93 9A     .word _off023_9A93_0D
- D 0 - - - 0x019959 06:9949: 97 9A     .word _off023_9A97_0E



_off023_994B_00:
- D 0 - I - 0x01995B 06:994B: 9F 9A     .word off_00_9A9F_00_spawn_williams
- D 0 - I - 0x01995D 06:994D: CC 9A     .word off_00_9ACC_01_cursor
- D 0 - I - 0x01995F 06:994F: D7 9A     .word off_00_9AD7_02
- D 0 - I - 0x019961 06:9951: DB 9A     .word off_00_9ADB_03_spawn_roper
- D 0 - I - 0x019963 06:9953: EE 9A     .word off_00_9AEE_04_cursor
- D 0 - I - 0x019965 06:9955: F9 9A     .word off_00_9AF9_05
- D 0 - I - 0x019967 06:9957: FD 9A     .word off_00_9AFD_06_spawn_linda
- D 0 - I - 0x019969 06:9959: 2B 9B     .word off_00_9B2B_07_spawn_williams
- D 0 - I - 0x01996B 06:995B: 3E 9B     .word off_00_9B3E_08_cursor
- D 0 - I - 0x01996D 06:995D: 49 9B     .word off_00_9B49_09
- D 0 - I - 0x01996F 06:995F: 4D 9B     .word off_00_9B4D_0A
- D 0 - I - 0x019971 06:9961: 51 9B     .word off_00_9B51_0B_spawn_linda
- D 0 - I - 0x019973 06:9963: 88 9B     .word off_00_9B88_0C_spawn_williams
- D 0 - I - 0x019975 06:9965: C0 9B     .word off_00_9BC0_0D_cursor
- D 0 - I - 0x019977 06:9967: CB 9B     .word off_00_9BCB_0E
- D 0 - I - 0x019979 06:9969: CF 9B     .word off_00_9BCF_0F_spawn_roper
- D 0 - I - 0x01997B 06:996B: F0 9B     .word off_00_9BF0_10_spawn_williams
- D 0 - I - 0x01997D 06:996D: FD 9B     .word off_00_9BFD_11
- D 0 - I - 0x01997F 06:996F: 01 9C     .word off_00_9C01_12_spawn_williams
- D 0 - I - 0x019981 06:9971: 2F 9C     .word off_00_9C2F_13
- D 0 - I - 0x019983 06:9973: 33 9C     .word off_00_9C33_14
- D 0 - I - 0x019985 06:9975: 34 9C     .word off_00_9C34_15_spawn_burnov
- D 0 - I - 0x019987 06:9977: 4B 9C     .word off_00_9C4B_16
- D 0 - I - 0x019989 06:9979: 4C 9C     .word off_00_9C4C_17



_off023_997B_01:
- D 0 - I - 0x01998B 06:997B: 4D 9C     .word off_01_9C4D_00_spawn_roper
- D 0 - I - 0x01998D 06:997D: 6F 9C     .word off_01_9C6F_01_cursor
- D 0 - I - 0x01998F 06:997F: 7A 9C     .word off_01_9C7A_02
- D 0 - I - 0x019991 06:9981: 7F 9C     .word off_01_9C7F_03_spawn_roper
- D 0 - I - 0x019993 06:9983: A0 9C     .word off_01_9CA0_04_cursor
- D 0 - I - 0x019995 06:9985: AB 9C     .word off_01_9CAB_05
- D 0 - I - 0x019997 06:9987: AF 9C     .word off_01_9CAF_06
- D 0 - I - 0x019999 06:9989: BC 9C     .word off_01_9CBC_07
- D 0 - I - 0x01999B 06:998B: C0 9C     .word off_01_9CC0_08
- D 0 - I - 0x01999D 06:998D: C1 9C     .word off_01_9CC1_09_spawn_linda
- D 0 - I - 0x01999F 06:998F: E5 9C     .word off_01_9CE5_0A_spawn_williams
- D 0 - I - 0x0199A1 06:9991: 0A 9D     .word off_01_9D0A_0B_spawn_right_arm
- D 0 - I - 0x0199A3 06:9993: 2D 9D     .word off_01_9D2D_0C
- D 0 - I - 0x0199A5 06:9995: 2E 9D     .word off_01_9D2E_0D_cursor
- D 0 - I - 0x0199A7 06:9997: 39 9D     .word off_01_9D39_0E
- D 0 - I - 0x0199A9 06:9999: 3D 9D     .word off_01_9D3D_0F_spawn_roper
- D 0 - I - 0x0199AB 06:999B: 52 9D     .word off_01_9D52_10
- D 0 - I - 0x0199AD 06:999D: 56 9D     .word off_01_9D56_11_spawn_roper
- D 0 - I - 0x0199AF 06:999F: 6D 9D     .word off_01_9D6D_12
- D 0 - I - 0x0199B1 06:99A1: 6E 9D     .word off_01_9D6E_13_spawn_ninja
- D 0 - I - 0x0199B3 06:99A3: 8F 9D     .word off_01_9D8F_14
- D 0 - I - 0x0199B5 06:99A5: 90 9D     .word off_01_9D90_15
- D 0 - I - 0x0199B7 06:99A7: 91 9D     .word off_01_9D91_16
- D 0 - I - 0x0199B9 06:99A9: 92 9D     .word off_01_9D92_17
- D 0 - I - 0x0199BB 06:99AB: 93 9D     .word off_01_9D93_18



_off023_99AD_02:
- D 0 - I - 0x0199BD 06:99AD: 94 9D     .word off_02_9D94_00
- D 0 - I - 0x0199BF 06:99AF: 95 9D     .word off_02_9D95_01
- D 0 - I - 0x0199C1 06:99B1: 97 9D     .word off_02_9D97_02_spawn_right_arm
- D 0 - I - 0x0199C3 06:99B3: B9 9D     .word off_02_9DB9_03_spawn_williams
- D 0 - I - 0x0199C5 06:99B5: F3 9D     .word off_02_9DF3_04
- D 0 - I - 0x0199C7 06:99B7: F4 9D     .word off_02_9DF4_05_spawn_bolo_1
- D 0 - I - 0x0199C9 06:99B9: 0C 9E     .word off_02_9E0C_06_spawn_bolo_2
- D 0 - I - 0x0199CB 06:99BB: 24 9E     .word off_02_9E24_07
- D 0 - I - 0x0199CD 06:99BD: 25 9E     .word off_02_9E25_08



_off023_99BF_03:
- D 0 - I - 0x0199CF 06:99BF: 26 9E     .word off_03_9E26_00_spawn_roper
- D 0 - I - 0x0199D1 06:99C1: 3F 9E     .word off_03_9E3F_01_spawn_linda
- D 0 - I - 0x0199D3 06:99C3: 54 9E     .word off_03_9E54_02
- D 0 - I - 0x0199D5 06:99C5: 58 9E     .word off_03_9E58_03_open_elevator_door
- D 0 - I - 0x0199D7 06:99C7: 5A 9E     .word off_03_9E5A_04_enter_door
- D 0 - I - 0x0199D9 06:99C9: 5C 9E     .word off_03_9E5C_05_close_elevator_door
- D 0 - I - 0x0199DB 06:99CB: 5E 9E     .word off_03_9E5E_06_elevator_going_down
- D 0 - I - 0x0199DD 06:99CD: 5F 9E     .word off_03_9E5F_07_spawn_right_arm
- D 0 - I - 0x0199DF 06:99CF: 74 9E     .word off_03_9E74_08_spawn_abore
- D 0 - I - 0x0199E1 06:99D1: 83 9E     .word off_03_9E83_09
- D 0 - I - 0x0199E3 06:99D3: 84 9E     .word off_03_9E84_0A_cursor
- D 0 - I - 0x0199E5 06:99D5: 8F 9E     .word off_03_9E8F_0B
- D 0 - I - 0x0199E7 06:99D7: 94 9E     .word off_03_9E94_0C
- D 0 - I - 0x0199E9 06:99D9: CF 9E     .word off_03_9ECF_0D_spawn_williams
- D 0 - I - 0x0199EB 06:99DB: 0B 9F     .word off_03_9F0B_0E
- D 0 - I - 0x0199ED 06:99DD: 0B 9F     .word off_03_9F0B_0F
- D 0 - I - 0x0199EF 06:99DF: 0C 9F     .word off_03_9F0C_10_spawn_bolo
- D 0 - I - 0x0199F1 06:99E1: 1B 9F     .word off_03_9F1B_11
- D 0 - I - 0x0199F3 06:99E3: 1D 9F     .word off_03_9F1D_12_enter_door
- D 0 - I - 0x0199F5 06:99E5: 1F 9F     .word off_03_9F1F_13
- D 0 - I - 0x0199F7 06:99E7: 21 9F     .word off_03_9F21_14



_off023_99E9_04:
- D 0 - I - 0x0199F9 06:99E9: 22 9F     .word off_04_9F22_00
- D 0 - I - 0x0199FB 06:99EB: 2F 9F     .word off_04_9F2F_01
- D 0 - I - 0x0199FD 06:99ED: 30 9F     .word off_04_9F30_02_enter_door
- D 0 - I - 0x0199FF 06:99EF: 32 9F     .word off_04_9F32_03
- D 0 - I - 0x019A01 06:99F1: 33 9F     .word off_04_9F33_04



_off023_99F3_05:
- D 0 - I - 0x019A03 06:99F3: 34 9F     .word off_05_9F34_00
- D 0 - I - 0x019A05 06:99F5: 4B 9F     .word off_05_9F4B_01
- D 0 - I - 0x019A07 06:99F7: 4C 9F     .word off_05_9F4C_02_cursor
- D 0 - I - 0x019A09 06:99F9: 57 9F     .word off_05_9F57_03_spawn_roper
- D 0 - I - 0x019A0B 06:99FB: 6E 9F     .word off_05_9F6E_04_cursor
- D 0 - I - 0x019A0D 06:99FD: 79 9F     .word off_05_9F79_05
- D 0 - I - 0x019A0F 06:99FF: 7D 9F     .word off_05_9F7D_06
- D 0 - I - 0x019A11 06:9A01: B4 9F     .word off_05_9FB4_07_cursor
- D 0 - I - 0x019A13 06:9A03: BF 9F     .word off_05_9FBF_08
- D 0 - I - 0x019A15 06:9A05: C3 9F     .word off_05_9FC3_09_spawn_roper
- D 0 - I - 0x019A17 06:9A07: 00 A0     .word off_05_A000_0A_cursor
- D 0 - I - 0x019A19 06:9A09: 0B A0     .word off_05_A00B_0B
- D 0 - I - 0x019A1B 06:9A0B: 0F A0     .word off_05_A00F_0C_spawn_roper
- D 0 - I - 0x019A1D 06:9A0D: 47 A0     .word off_05_A047_0D_spawn_bolo_1
- D 0 - I - 0x019A1F 06:9A0F: 5F A0     .word off_05_A05F_0E_spawn_bolo_2
- D 0 - I - 0x019A21 06:9A11: 77 A0     .word off_05_A077_0F_cursor
- D 0 - I - 0x019A23 06:9A13: 82 A0     .word off_05_A082_10_spawn_chin_taimei
- D 0 - I - 0x019A25 06:9A15: A3 A0     .word off_05_A0A3_11
- D 0 - I - 0x019A27 06:9A17: A7 A0     .word off_05_A0A7_12
- D 0 - I - 0x019A29 06:9A19: A9 A0     .word off_05_A0A9_13
- D 0 - I - 0x019A2B 06:9A1B: AA A0     .word off_05_A0AA_14_spawn_roper
- D 0 - I - 0x019A2D 06:9A1D: E3 A0     .word off_05_A0E3_15_spawn_right_arm
- D 0 - I - 0x019A2F 06:9A1F: 04 A1     .word off_05_A104_16_spawn_abore
- D 0 - I - 0x019A31 06:9A21: 1B A1     .word off_05_A11B_17
- D 0 - I - 0x019A33 06:9A23: 1C A1     .word off_05_A11C_18



_off023_9A25_06:
- D 0 - I - 0x019A35 06:9A25: 1D A1     .word off_06_A11D_00
- D 0 - I - 0x019A37 06:9A27: 2A A1     .word off_06_A12A_01
- D 0 - I - 0x019A39 06:9A29: 2F A1     .word off_06_A12F_02_spawn_right_arm
- D 0 - I - 0x019A3B 06:9A2B: 64 A1     .word off_06_A164_03_spawn_chin_taimei
- D 0 - I - 0x019A3D 06:9A2D: 99 A1     .word off_06_A199_04_cursor
- D 0 - I - 0x019A3F 06:9A2F: A4 A1     .word off_06_A1A4_05
- D 0 - I - 0x019A41 06:9A31: B1 A1     .word off_06_A1B1_06_enter_door
- D 0 - I - 0x019A43 06:9A33: B3 A1     .word off_06_A1B3_07
- D 0 - I - 0x019A45 06:9A35: B4 A1     .word off_06_A1B4_08



_off023_9A37_07:
- D 0 - I - 0x019A47 06:9A37: B5 A1     .word off_07_A1B5_00
- D 0 - I - 0x019A49 06:9A39: C2 A1     .word off_07_A1C2_01_enter_door
- D 0 - I - 0x019A4B 06:9A3B: C4 A1     .word off_07_A1C4_02



_off023_9A3D_08:
- D 0 - I - 0x019A4D 06:9A3D: C5 A1     .word off_08_A1C5_00_spawn_right_arm
- D 0 - I - 0x019A4F 06:9A3F: DC A1     .word off_08_A1DC_01_spawn_burnov
- D 0 - I - 0x019A51 06:9A41: F3 A1     .word off_08_A1F3_02
- D 0 - I - 0x019A53 06:9A43: F5 A1     .word off_08_A1F5_03_enter_door
- D 0 - I - 0x019A55 06:9A45: F7 A1     .word off_08_A1F7_04
- D 0 - I - 0x019A57 06:9A47: F9 A1     .word off_08_A1F9_05



_off023_9A49_09:
- D 0 - I - 0x019A59 06:9A49: FA A1     .word off_09_A1FA_00
- D 0 - I - 0x019A5B 06:9A4B: 07 A2     .word off_09_A207_01_enter_door
- D 0 - I - 0x019A5D 06:9A4D: 09 A2     .word off_09_A209_02



_off023_9A4F_0A:
- D 0 - I - 0x019A5F 06:9A4F: 0A A2     .word off_0A_A20A_00_spawn_roper
- D 0 - I - 0x019A61 06:9A51: 4E A2     .word off_0A_A24E_01
- D 0 - I - 0x019A63 06:9A53: 50 A2     .word off_0A_A250_02_enter_door
- D 0 - I - 0x019A65 06:9A55: 52 A2     .word off_0A_A252_03



_off023_9A57_0B:
- D 0 - I - 0x019A67 06:9A57: 53 A2     .word off_0B_A253_00_spawn_williams
- D 0 - I - 0x019A69 06:9A59: 8C A2     .word off_0B_A28C_01_spawn_roper
- D 0 - I - 0x019A6B 06:9A5B: C4 A2     .word off_0B_A2C4_02_spawn_chin_taimei
- D 0 - I - 0x019A6D 06:9A5D: E5 A2     .word off_0B_A2E5_03_spawn_right_arm
- D 0 - I - 0x019A6F 06:9A5F: 06 A3     .word off_0B_A306_04
- D 0 - I - 0x019A71 06:9A61: 07 A3     .word off_0B_A307_05_spawn_abore
- D 0 - I - 0x019A73 06:9A63: 1E A3     .word off_0B_A31E_06
- D 0 - I - 0x019A75 06:9A65: 1F A3     .word off_0B_A31F_07



_off023_9A67_0C:
- D 0 - I - 0x019A77 06:9A67: 20 A3     .word off_0C_A320_00_spawn_chin_taimei
- D 0 - I - 0x019A79 06:9A69: 37 A3     .word off_0C_A337_01
- D 0 - I - 0x019A7B 06:9A6B: 38 A3     .word off_0C_A338_02_cursor
- D 0 - I - 0x019A7D 06:9A6D: 43 A3     .word off_0C_A343_03
- D 0 - I - 0x019A7F 06:9A6F: 48 A3     .word off_0C_A348_04_spawn_right_arm
- D 0 - I - 0x019A81 06:9A71: 8C A3     .word off_0C_A38C_05_cursor
- D 0 - I - 0x019A83 06:9A73: 97 A3     .word off_0C_A397_06
- D 0 - I - 0x019A85 06:9A75: 98 A3     .word off_0C_A398_07
- D 0 - I - 0x019A87 06:9A77: 9C A3     .word off_0C_A39C_08
- D 0 - I - 0x019A89 06:9A79: 9D A3     .word off_0C_A39D_09_spawn_abore
- D 0 - I - 0x019A8B 06:9A7B: AC A3     .word off_0C_A3AC_0A_spawn_bolo_1
- D 0 - I - 0x019A8D 06:9A7D: BB A3     .word off_0C_A3BB_0B_spawn_bolo_2
- D 0 - I - 0x019A8F 06:9A7F: CA A3     .word off_0C_A3CA_0C
- D 0 - I - 0x019A91 06:9A81: CE A3     .word off_0C_A3CE_0D_cursor
- D 0 - I - 0x019A93 06:9A83: D9 A3     .word off_0C_A3D9_0E
- D 0 - I - 0x019A95 06:9A85: E6 A3     .word off_0C_A3E6_0F
- D 0 - I - 0x019A97 06:9A87: EB A3     .word off_0C_A3EB_10_spawn_ninja
- D 0 - I - 0x019A99 06:9A89: 04 A4     .word off_0C_A404_11
- D 0 - I - 0x019A9B 06:9A8B: 06 A4     .word off_0C_A406_12
- D 0 - I - 0x019A9D 06:9A8D: 07 A4     .word off_0C_A407_13_spawn_doppelganger
- D 0 - I - 0x019A9F 06:9A8F: 2A A4     .word off_0C_A42A_14
- D 0 - I - 0x019AA1 06:9A91: 2B A4     .word off_0C_A42B_15



_off023_9A93_0D:
- D 0 - I - 0x019AA3 06:9A93: 2C A4     .word off_0D_A42C_00
- D 0 - I - 0x019AA5 06:9A95: 2D A4     .word off_0D_A42D_01



_off023_9A97_0E:
- D 0 - I - 0x019AA7 06:9A97: 2E A4     .word off_0E_A42E_00
- D 0 - I - 0x019AA9 06:9A99: 3B A4     .word off_0E_A43B_01_spawn_shadow_warrior
- D 0 - I - 0x019AAB 06:9A9B: 52 A4     .word off_0E_A452_02
- - - - - - 0x019AAD 06:9A9D: 52 A4     .word off_0E_A452_03



off_00_9A9F_00_spawn_williams:
- D 0 - I - 0x019AAF 06:9A9F: 00        .byte con_884D_script_00   ; 
- D 0 - I - 0x019AB0 06:9AA0: 00 00     .word $0000 ; X camera limit (min)
- D 0 - I - 0x019AB2 06:9AA2: 00 00     .word $0000 ; X camera limit (max)
- D 0 - I - 0x019AB4 06:9AA4: 00 00     .word $0000 ; Y camera limit (min)
- D 0 - I - 0x019AB6 06:9AA6: 00 00     .word $0000 ; Y camera limit (max)
- D 0 - I - 0x019AB8 06:9AA8: 01        .byte $01   ; 04B0 ???

- D 0 - I - 0x019AB9 06:9AA9: 4E        .byte con_chr_bank + $4E   ; 
- D 0 - I - 0x019ABA 06:9AAA: 02        .byte con_obj_williams   ; 
- D 0 - I - 0x019ABB 06:9AAB: 04        .byte $04   ; enemy counter
; 01
- D 0 - I - 0x019ABC 06:9AAC: E0        .byte $E0   ; enemy settings
- D 0 - I - 0x019ABD 06:9AAD: 00        .byte $00   ; enemy weapon
- D 0 - I - 0x019ABE 06:9AAE: 00        .byte con_state_idle   ; enemy state
- D 0 - I - 0x019ABF 06:9AAF: 00        .byte con_0359_00   ; enemy 0359 ???
- D 0 - I - 0x019AC0 06:9AB0: F0 00     .word $00F0 ; enemy pos_X
- D 0 - I - 0x019AC2 06:9AB2: 70 00     .word $0070 ; enemy pos_Y
- D 0 - I - 0x019AC4 06:9AB4: 00 00     .word $0000 ; enemy pos_Z
- D 0 - I - 0x019AC6 06:9AB6: 00        .byte $00   ; enemy 006A ???
- D 0 - I - 0x019AC7 06:9AB7: 0B        .byte $0B   ; enemy hp
; 02
- D 0 - I - 0x019AC8 06:9AB8: E0        .byte $E0   ; enemy settings
- D 0 - I - 0x019AC9 06:9AB9: 00        .byte $00   ; enemy weapon
- D 0 - I - 0x019ACA 06:9ABA: 00        .byte con_state_idle   ; enemy state
- D 0 - I - 0x019ACB 06:9ABB: 00        .byte con_0359_00   ; enemy 0359 ???
- D 0 - I - 0x019ACC 06:9ABC: 10 01     .word $0110 ; enemy pos_X
- D 0 - I - 0x019ACE 06:9ABE: 33 00     .word $0033 ; enemy pos_Y
- D 0 - I - 0x019AD0 06:9AC0: 00 00     .word $0000 ; enemy pos_Z
- D 0 - I - 0x019AD2 06:9AC2: 00        .byte $00   ; enemy 006A ???
- D 0 - I - 0x019AD3 06:9AC3: 0B        .byte $0B   ; enemy hp
; 03
- D 0 - I - 0x019AD4 06:9AC4: C0        .byte $C0   ; enemy settings
- D 0 - I - 0x019AD5 06:9AC5: 00        .byte $00   ; enemy weapon
- D 0 - I - 0x019AD6 06:9AC6: 00        .byte con_state_idle   ; enemy state
- D 0 - I - 0x019AD7 06:9AC7: 0B        .byte $0B   ; enemy hp
; 04
- D 0 - I - 0x019AD8 06:9AC8: C0        .byte $C0   ; enemy settings
- D 0 - I - 0x019AD9 06:9AC9: 00        .byte $00   ; enemy weapon
- D 0 - I - 0x019ADA 06:9ACA: 00        .byte con_state_idle   ; enemy state
- D 0 - I - 0x019ADB 06:9ACB: 0B        .byte $0B   ; enemy hp



off_00_9ACC_01_cursor:
- D 0 - I - 0x019ADC 06:9ACC: 01        .byte con_884D_script_hand_cursor   ; 
- D 0 - I - 0x019ADD 06:9ACD: 00 00     .word $0000 ; X camera limit (min)
- D 0 - I - 0x019ADF 06:9ACF: FF 00     .word $00FF ; X camera limit (max)
- D 0 - I - 0x019AE1 06:9AD1: 00 00     .word $0000 ; Y camera limit (min)
- D 0 - I - 0x019AE3 06:9AD3: 00 00     .word $0000 ; Y camera limit (max)
- D 0 - I - 0x019AE5 06:9AD5: 01        .byte $01   ; 04B0 ???

- D 0 - I - 0x019AE6 06:9AD6: 03        .byte $03   ; cursor direction (right)



off_00_9AD7_02:
- D 0 - I - 0x019AE7 06:9AD7: 07        .byte con_884D_script_07   ; 
- D 0 - I - 0x019AE8 06:9AD8: 80        .byte $80   ; 
- D 0 - I - 0x019AE9 06:9AD9: B0        .byte $B0   ; 
- D 0 - I - 0x019AEA 06:9ADA: 00        .byte $00   ; 



off_00_9ADB_03_spawn_roper:
- D 0 - I - 0x019AEB 06:9ADB: 00        .byte con_884D_script_00   ; 
- D 0 - I - 0x019AEC 06:9ADC: 00 00     .word $0000 ; X camera limit (min)
- D 0 - I - 0x019AEE 06:9ADE: FF 00     .word $00FF ; X camera limit (max)
- D 0 - I - 0x019AF0 06:9AE0: 00 00     .word $0000 ; Y camera limit (min)
- D 0 - I - 0x019AF2 06:9AE2: 00 00     .word $0000 ; Y camera limit (max)
- D 0 - I - 0x019AF4 06:9AE4: 01        .byte $01   ; 04B0 ???

- D 0 - I - 0x019AF5 06:9AE5: 42        .byte con_chr_bank + $42   ; 
- D 0 - I - 0x019AF6 06:9AE6: 03        .byte con_obj_roper   ; 
- D 0 - I - 0x019AF7 06:9AE7: 03        .byte $03   ; enemy counter
; 01
- D 0 - I - 0x019AF8 06:9AE8: 00        .byte $00   ; enemy settings
- D 0 - I - 0x019AF9 06:9AE9: 0F        .byte $0F   ; enemy hp
; 02
- D 0 - I - 0x019AFA 06:9AEA: 00        .byte $00   ; enemy settings
- D 0 - I - 0x019AFB 06:9AEB: 0F        .byte $0F   ; enemy hp
; 03
- D 0 - I - 0x019AFC 06:9AEC: 00        .byte $00   ; enemy settings
- D 0 - I - 0x019AFD 06:9AED: 0F        .byte $0F   ; enemy hp



off_00_9AEE_04_cursor:
- D 0 - I - 0x019AFE 06:9AEE: 01        .byte con_884D_script_hand_cursor   ; 
- D 0 - I - 0x019AFF 06:9AEF: 00 00     .word $0000 ; X camera limit (min)
- D 0 - I - 0x019B01 06:9AF1: 00 02     .word $0200 ; X camera limit (max)
- D 0 - I - 0x019B03 06:9AF3: 00 00     .word $0000 ; Y camera limit (min)
- D 0 - I - 0x019B05 06:9AF5: 00 00     .word $0000 ; Y camera limit (max)
- D 0 - I - 0x019B07 06:9AF7: 01        .byte $01   ; 04B0 ???

- D 0 - I - 0x019B08 06:9AF8: 03        .byte $03   ; cursor direction (right)



off_00_9AF9_05:
- D 0 - I - 0x019B09 06:9AF9: 07        .byte con_884D_script_07   ; 
- D 0 - I - 0x019B0A 06:9AFA: 80        .byte $80   ; 
- D 0 - I - 0x019B0B 06:9AFB: 00        .byte $00   ; 
- D 0 - I - 0x019B0C 06:9AFC: 02        .byte $02   ; 



off_00_9AFD_06_spawn_linda:
- D 0 - I - 0x019B0D 06:9AFD: 00        .byte con_884D_script_00   ; 
- D 0 - I - 0x019B0E 06:9AFE: 00 02     .word $0200 ; X camera limit (min)
- D 0 - I - 0x019B10 06:9B00: FF 02     .word $02FF ; X camera limit (max)
- D 0 - I - 0x019B12 06:9B02: 00 00     .word $0000 ; Y camera limit (min)
- D 0 - I - 0x019B14 06:9B04: F0 00     .word $00F0 ; Y camera limit (max)
- D 0 - I - 0x019B16 06:9B06: 03        .byte $03   ; 04B0 ???

- D 0 - I - 0x019B17 06:9B07: 44        .byte con_chr_bank + $44   ; 
- D 0 - I - 0x019B18 06:9B08: 04        .byte con_obj_linda   ; 
- D 0 - I - 0x019B19 06:9B09: 03        .byte $03   ; enemy counter
; 01
- D 0 - I - 0x019B1A 06:9B0A: 60        .byte $60   ; enemy settings
- D 0 - I - 0x019B1B 06:9B0B: 04        .byte con_state_ladder_climb_idle   ; enemy state
- D 0 - I - 0x019B1C 06:9B0C: 00        .byte con_0359_00   ; enemy 0359 ???
- D 0 - I - 0x019B1D 06:9B0D: C8 02     .word $02C8 ; enemy pos_X
- D 0 - I - 0x019B1F 06:9B0F: 80 00     .word $0080 ; enemy pos_Y
- D 0 - I - 0x019B21 06:9B11: 40 00     .word $0040 ; enemy pos_Z
- D 0 - I - 0x019B23 06:9B13: 00        .byte $00   ; enemy 006A ???
- D 0 - I - 0x019B24 06:9B14: 07        .byte $07   ; enemy hp
; 02
- D 0 - I - 0x019B25 06:9B15: 60        .byte $60   ; enemy settings
- D 0 - I - 0x019B26 06:9B16: 04        .byte con_state_ladder_climb_idle   ; enemy state
- D 0 - I - 0x019B27 06:9B17: 00        .byte con_0359_00   ; enemy 0359 ???
- D 0 - I - 0x019B28 06:9B18: C8 02     .word $02C8 ; enemy pos_X
- D 0 - I - 0x019B2A 06:9B1A: 80 00     .word $0080 ; enemy pos_Y
- D 0 - I - 0x019B2C 06:9B1C: 70 00     .word $0070 ; enemy pos_Z
- D 0 - I - 0x019B2E 06:9B1E: 00        .byte $00   ; enemy 006A ???
- D 0 - I - 0x019B2F 06:9B1F: 07        .byte $07   ; enemy hp
; 03
- D 0 - I - 0x019B30 06:9B20: 60        .byte $60   ; enemy settings
- D 0 - I - 0x019B31 06:9B21: 04        .byte con_state_ladder_climb_idle   ; enemy state
- D 0 - I - 0x019B32 06:9B22: 00        .byte con_0359_00   ; enemy 0359 ???
- D 0 - I - 0x019B33 06:9B23: C8 02     .word $02C8 ; enemy pos_X
- D 0 - I - 0x019B35 06:9B25: 80 00     .word $0080 ; enemy pos_Y
- D 0 - I - 0x019B37 06:9B27: 40 00     .word $0040 ; enemy pos_Z
- D 0 - I - 0x019B39 06:9B29: 00        .byte $00   ; enemy 006A ???
- D 0 - I - 0x019B3A 06:9B2A: 07        .byte $07   ; enemy hp



off_00_9B2B_07_spawn_williams:
- D 0 - I - 0x019B3B 06:9B2B: 00        .byte con_884D_script_00   ; 
- D 0 - I - 0x019B3C 06:9B2C: 00 02     .word $0200 ; X camera limit (min)
- D 0 - I - 0x019B3E 06:9B2E: FF 02     .word $02FF ; X camera limit (max)
- D 0 - I - 0x019B40 06:9B30: 00 00     .word $0000 ; Y camera limit (min)
- D 0 - I - 0x019B42 06:9B32: F0 00     .word $00F0 ; Y camera limit (max)
- D 0 - I - 0x019B44 06:9B34: 03        .byte $03   ; 04B0 ???

- D 0 - I - 0x019B45 06:9B35: 4E        .byte con_chr_bank + $4E   ; 
- D 0 - I - 0x019B46 06:9B36: 02        .byte con_obj_williams   ; 
- D 0 - I - 0x019B47 06:9B37: 03        .byte $03   ; enemy counter
; 01
- D 0 - I - 0x019B48 06:9B38: 00        .byte $00   ; enemy settings
- D 0 - I - 0x019B49 06:9B39: 0B        .byte $0B   ; enemy hp
; 02
- D 0 - I - 0x019B4A 06:9B3A: 00        .byte $00   ; enemy settings
- D 0 - I - 0x019B4B 06:9B3B: 0B        .byte $0B   ; enemy hp
; 03
- D 0 - I - 0x019B4C 06:9B3C: 00        .byte $00   ; enemy settings
- D 0 - I - 0x019B4D 06:9B3D: 0B        .byte $0B   ; enemy hp



off_00_9B3E_08_cursor:
- D 0 - I - 0x019B4E 06:9B3E: 01        .byte con_884D_script_hand_cursor   ; 
- D 0 - I - 0x019B4F 06:9B3F: 00 02     .word $0200 ; X camera limit (min)
- D 0 - I - 0x019B51 06:9B41: FF 02     .word $02FF ; X camera limit (max)
- D 0 - I - 0x019B53 06:9B43: 00 00     .word $0000 ; Y camera limit (min)
- D 0 - I - 0x019B55 06:9B45: E0 00     .word $00E0 ; Y camera limit (max)
- D 0 - I - 0x019B57 06:9B47: 0F        .byte $0F   ; 04B0 ???

- D 0 - I - 0x019B58 06:9B48: 00        .byte $00   ; cursor direction (up)



off_00_9B49_09:
- D 0 - I - 0x019B59 06:9B49: 07        .byte con_884D_script_07   ; 
- D 0 - I - 0x019B5A 06:9B4A: 08        .byte $08   ; 
- D 0 - I - 0x019B5B 06:9B4B: 75        .byte $75   ; 
- D 0 - I - 0x019B5C 06:9B4C: 00        .byte $00   ; 



off_00_9B4D_0A:
- D 0 - I - 0x019B5D 06:9B4D: 07        .byte con_884D_script_07   ; 
- D 0 - I - 0x019B5E 06:9B4E: 08        .byte $08   ; 
- D 0 - I - 0x019B5F 06:9B4F: 94        .byte $94   ; 
- D 0 - I - 0x019B60 06:9B50: 00        .byte $00   ; 



off_00_9B51_0B_spawn_linda:
- D 0 - I - 0x019B61 06:9B51: 09        .byte con_884D_script_emeny_spawn_at_door   ; 
- D 0 - I - 0x019B62 06:9B52: 00 02     .word $0200 ; X camera limit (min)
- D 0 - I - 0x019B64 06:9B54: FF 02     .word $02FF ; X camera limit (max)
- D 0 - I - 0x019B66 06:9B56: 94 00     .word $0094 ; Y camera limit (min)
- D 0 - I - 0x019B68 06:9B58: E0 00     .word $00E0 ; Y camera limit (max)
- D 0 - I - 0x019B6A 06:9B5A: 0B        .byte $0B   ; 04B0 ???

- D 0 - I - 0x019B6B 06:9B5B: 44        .byte con_chr_bank + $44   ; 
- D 0 - I - 0x019B6C 06:9B5C: 04        .byte con_obj_linda   ; 
- D 0 - I - 0x019B6D 06:9B5D: 04        .byte $04   ; enemy counter

- D 0 - I - 0x019B6E 06:9B5E: 00        .byte con_A6C3_draw_door_linda   ; spawner

; 01
- D 0 - I - 0x019B6F 06:9B5F: A0        .byte $A0   ; enemy settings
- D 0 - I - 0x019B70 06:9B60: 15        .byte con_obj_chain_whip   ; enemy weapon
- D 0 - I - 0x019B71 06:9B61: 01        .byte con_0359_01   ; enemy 0359 ???
- D 0 - I - 0x019B72 06:9B62: 88 02     .word $0288 ; enemy pos_X
- D 0 - I - 0x019B74 06:9B64: A0 00     .word $00A0 ; enemy pos_Y
- D 0 - I - 0x019B76 06:9B66: A0 00     .word $00A0 ; enemy pos_Z
- D 0 - I - 0x019B78 06:9B68: 02        .byte $02   ; enemy 006A ???
- D 0 - I - 0x019B79 06:9B69: 07        .byte $07   ; enemy hp
; 02
- D 0 - I - 0x019B7A 06:9B6A: 20        .byte $20   ; enemy settings
- D 0 - I - 0x019B7B 06:9B6B: 01        .byte con_0359_01   ; enemy 0359 ???
- D 0 - I - 0x019B7C 06:9B6C: 98 02     .word $0298 ; enemy pos_X
- D 0 - I - 0x019B7E 06:9B6E: A0 00     .word $00A0 ; enemy pos_Y
- D 0 - I - 0x019B80 06:9B70: A0 00     .word $00A0 ; enemy pos_Z
- D 0 - I - 0x019B82 06:9B72: 02        .byte $02   ; enemy 006A ???
- D 0 - I - 0x019B83 06:9B73: 07        .byte $07   ; enemy hp
; 03
- D 0 - I - 0x019B84 06:9B74: 20        .byte $20   ; enemy settings
- D 0 - I - 0x019B85 06:9B75: 01        .byte con_0359_01   ; enemy 0359 ???
- D 0 - I - 0x019B86 06:9B76: 98 02     .word $0298 ; enemy pos_X
- D 0 - I - 0x019B88 06:9B78: A0 00     .word $00A0 ; enemy pos_Y
- D 0 - I - 0x019B8A 06:9B7A: A0 00     .word $00A0 ; enemy pos_Z
- D 0 - I - 0x019B8C 06:9B7C: 02        .byte $02   ; enemy 006A ???
- D 0 - I - 0x019B8D 06:9B7D: 07        .byte $07   ; enemy hp
; 04
- - - - - - 0x019B8E 06:9B7E: 20        .byte $20   ; enemy settings
- - - - - - 0x019B8F 06:9B7F: 01        .byte con_0359_01   ; enemy 0359 ???
- - - - - - 0x019B90 06:9B80: 98 02     .word $0298 ; enemy pos_X
- - - - - - 0x019B92 06:9B82: A0 00     .word $00A0 ; enemy pos_Y
- - - - - - 0x019B94 06:9B84: A0 00     .word $00A0 ; enemy pos_Z
- - - - - - 0x019B96 06:9B86: 02        .byte $02   ; enemy 006A ???
- - - - - - 0x019B97 06:9B87: 07        .byte $07   ; enemy hp



off_00_9B88_0C_spawn_williams:
- D 0 - I - 0x019B98 06:9B88: 09        .byte con_884D_script_emeny_spawn_at_door   ; 
- D 0 - I - 0x019B99 06:9B89: 00 02     .word $0200 ; X camera limit (min)
- D 0 - I - 0x019B9B 06:9B8B: FF 02     .word $02FF ; X camera limit (max)
- D 0 - I - 0x019B9D 06:9B8D: 94 00     .word $0094 ; Y camera limit (min)
- D 0 - I - 0x019B9F 06:9B8F: E0 00     .word $00E0 ; Y camera limit (max)
- D 0 - I - 0x019BA1 06:9B91: 0B        .byte $0B   ; 04B0 ???

- D 0 - I - 0x019BA2 06:9B92: 4E        .byte con_chr_bank + $4E   ; 
- D 0 - I - 0x019BA3 06:9B93: 02        .byte con_obj_williams   ; 
- D 0 - I - 0x019BA4 06:9B94: 04        .byte $04   ; enemy counter

- D 0 - I - 0x019BA5 06:9B95: 01        .byte con_A6C3_draw_door_williams   ; spawner

; 01
- D 0 - I - 0x019BA6 06:9B96: A0        .byte $A0   ; enemy settings
- D 0 - I - 0x019BA7 06:9B97: 12        .byte con_obj_knife   ; enemy weapon
- D 0 - I - 0x019BA8 06:9B98: 02        .byte con_0359_02   ; enemy 0359 ???
- D 0 - I - 0x019BA9 06:9B99: 4A 03     .word $034A ; enemy pos_X
- D 0 - I - 0x019BAB 06:9B9B: A0 00     .word $00A0 ; enemy pos_Y
- D 0 - I - 0x019BAD 06:9B9D: B0 00     .word $00B0 ; enemy pos_Z
- D 0 - I - 0x019BAF 06:9B9F: 02        .byte $02   ; enemy 006A ???
- D 0 - I - 0x019BB0 06:9BA0: 0B        .byte $0B   ; enemy hp
; 02
- D 0 - I - 0x019BB1 06:9BA1: 20        .byte $20   ; enemy settings
- D 0 - I - 0x019BB2 06:9BA2: 02        .byte con_0359_02   ; enemy 0359 ???
- D 0 - I - 0x019BB3 06:9BA3: 57 03     .word $0357 ; enemy pos_X
- D 0 - I - 0x019BB5 06:9BA5: A0 00     .word $00A0 ; enemy pos_Y
- D 0 - I - 0x019BB7 06:9BA7: B0 00     .word $00B0 ; enemy pos_Z
- D 0 - I - 0x019BB9 06:9BA9: 02        .byte $02   ; enemy 006A ???
- D 0 - I - 0x019BBA 06:9BAA: 0B        .byte $0B   ; enemy hp
; 03
- D 0 - I - 0x019BBB 06:9BAB: A0        .byte $A0   ; enemy settings
- D 0 - I - 0x019BBC 06:9BAC: 12        .byte con_obj_knife   ; enemy weapon
- D 0 - I - 0x019BBD 06:9BAD: 02        .byte con_0359_02   ; enemy 0359 ???
- D 0 - I - 0x019BBE 06:9BAE: 50 03     .word $0350 ; enemy pos_X
- D 0 - I - 0x019BC0 06:9BB0: A0 00     .word $00A0 ; enemy pos_Y
- D 0 - I - 0x019BC2 06:9BB2: B0 00     .word $00B0 ; enemy pos_Z
- D 0 - I - 0x019BC4 06:9BB4: 02        .byte $02   ; enemy 006A ???
- D 0 - I - 0x019BC5 06:9BB5: 0B        .byte $0B   ; enemy hp
; 04
- - - - - - 0x019BC6 06:9BB6: 20        .byte $20   ; enemy settings
- - - - - - 0x019BC7 06:9BB7: 02        .byte con_0359_02   ; enemy 0359 ???
- - - - - - 0x019BC8 06:9BB8: 57 03     .word $0357 ; enemy pos_X
- - - - - - 0x019BCA 06:9BBA: A0 00     .word $00A0 ; enemy pos_Y
- - - - - - 0x019BCC 06:9BBC: B0 00     .word $00B0 ; enemy pos_Z
- - - - - - 0x019BCE 06:9BBE: 02        .byte $02   ; enemy 006A ???
- - - - - - 0x019BCF 06:9BBF: 0B        .byte $0B   ; enemy hp



off_00_9BC0_0D_cursor:
- D 0 - I - 0x019BD0 06:9BC0: 01        .byte con_884D_script_hand_cursor   ; 
- D 0 - I - 0x019BD1 06:9BC1: 00 02     .word $0200 ; X camera limit (min)
- D 0 - I - 0x019BD3 06:9BC3: FF 02     .word $02FF ; X camera limit (max)
- D 0 - I - 0x019BD5 06:9BC5: 94 00     .word $0094 ; Y camera limit (min)
- D 0 - I - 0x019BD7 06:9BC7: DF 01     .word $01DF ; Y camera limit (max)
- D 0 - I - 0x019BD9 06:9BC9: 0D        .byte $0D   ; 04B0 ???

- D 0 - I - 0x019BDA 06:9BCA: 00        .byte $00   ; cursor direction (up)



off_00_9BCB_0E:
- D 0 - I - 0x019BDB 06:9BCB: 07        .byte con_884D_script_07   ; 
- D 0 - I - 0x019BDC 06:9BCC: 08        .byte $08   ; 
- D 0 - I - 0x019BDD 06:9BCD: 2D        .byte $2D   ; 
- D 0 - I - 0x019BDE 06:9BCE: 01        .byte $01   ; 



off_00_9BCF_0F_spawn_roper:
- D 0 - I - 0x019BDF 06:9BCF: 00        .byte con_884D_script_00   ; 
- D 0 - I - 0x019BE0 06:9BD0: 00 02     .word $0200 ; X camera limit (min)
- D 0 - I - 0x019BE2 06:9BD2: FF 02     .word $02FF ; X camera limit (max)
- D 0 - I - 0x019BE4 06:9BD4: 2D 01     .word $012D ; Y camera limit (min)
- D 0 - I - 0x019BE6 06:9BD6: 68 01     .word $0168 ; Y camera limit (max)
- D 0 - I - 0x019BE8 06:9BD8: 0B        .byte $0B   ; 04B0 ???

- D 0 - I - 0x019BE9 06:9BD9: 42        .byte con_chr_bank + $42   ; 
- D 0 - I - 0x019BEA 06:9BDA: 03        .byte con_obj_roper   ; 
- D 0 - I - 0x019BEB 06:9BDB: 02        .byte $02   ; enemy counter
; 01
- D 0 - I - 0x019BEC 06:9BDC: 20        .byte $20   ; enemy settings
- D 0 - I - 0x019BED 06:9BDD: 04        .byte con_0359_04   ; enemy 0359 ???
- D 0 - I - 0x019BEE 06:9BDE: 90 02     .word $0290 ; enemy pos_X
- D 0 - I - 0x019BF0 06:9BE0: A0 00     .word $00A0 ; enemy pos_Y
- D 0 - I - 0x019BF2 06:9BE2: 60 01     .word $0160 ; enemy pos_Z
- D 0 - I - 0x019BF4 06:9BE4: 00        .byte $00   ; enemy 006A ???
- D 0 - I - 0x019BF5 06:9BE5: 0F        .byte $0F   ; enemy hp
; 02
- D 0 - I - 0x019BF6 06:9BE6: 20        .byte $20   ; enemy settings
- D 0 - I - 0x019BF7 06:9BE7: 04        .byte con_0359_04   ; enemy 0359 ???
- D 0 - I - 0x019BF8 06:9BE8: C0 02     .word $02C0 ; enemy pos_X
- D 0 - I - 0x019BFA 06:9BEA: A0 00     .word $00A0 ; enemy pos_Y
- D 0 - I - 0x019BFC 06:9BEC: 60 01     .word $0160 ; enemy pos_Z
- D 0 - I - 0x019BFE 06:9BEE: 00        .byte $00   ; enemy 006A ???
- D 0 - I - 0x019BFF 06:9BEF: 0F        .byte $0F   ; enemy hp



off_00_9BF0_10_spawn_williams:
- D 0 - I - 0x019C00 06:9BF0: 03        .byte con_884D_script_03   ; 
- D 0 - I - 0x019C01 06:9BF1: 00 02     .word $0200 ; X camera limit (min)
- D 0 - I - 0x019C03 06:9BF3: FF 02     .word $02FF ; X camera limit (max)
- D 0 - I - 0x019C05 06:9BF5: 2D 01     .word $012D ; Y camera limit (min)
- D 0 - I - 0x019C07 06:9BF7: 90 01     .word $0190 ; Y camera limit (max)
- D 0 - I - 0x019C09 06:9BF9: 0B        .byte $0B   ; 04B0 ???

- D 0 - I - 0x019C0A 06:9BFA: 4E        .byte con_chr_bank + $4E   ; 
- D 0 - I - 0x019C0B 06:9BFB: 02        .byte con_obj_williams   ; 
- - - - - - 0x019C0C 06:9BFC: 00        .byte $00   ; 



off_00_9BFD_11:
- D 0 - I - 0x019C0D 06:9BFD: 07        .byte con_884D_script_07   ; 
- D 0 - I - 0x019C0E 06:9BFE: 08        .byte $08   ; 
- D 0 - I - 0x019C0F 06:9BFF: 90        .byte $90   ; 
- D 0 - I - 0x019C10 06:9C00: 01        .byte $01   ; 



off_00_9C01_12_spawn_williams:
- D 0 - I - 0x019C11 06:9C01: 00        .byte con_884D_script_00   ; 
- D 0 - I - 0x019C12 06:9C02: 00 02     .word $0200 ; X camera limit (min)
- D 0 - I - 0x019C14 06:9C04: FF 02     .word $02FF ; X camera limit (max)
- D 0 - I - 0x019C16 06:9C06: 90 01     .word $0190 ; Y camera limit (min)
- D 0 - I - 0x019C18 06:9C08: D0 02     .word $02D0 ; Y camera limit (max)
- D 0 - I - 0x019C1A 06:9C0A: 0F        .byte $0F   ; 04B0 ???

- D 0 - I - 0x019C1B 06:9C0B: 4E        .byte con_chr_bank + $4E   ; 
- D 0 - I - 0x019C1C 06:9C0C: 02        .byte con_obj_williams   ; 
- D 0 - I - 0x019C1D 06:9C0D: 06        .byte $06   ; enemy counter
; 01
- D 0 - I - 0x019C1E 06:9C0E: A0        .byte $A0   ; enemy settings
- D 0 - I - 0x019C1F 06:9C0F: 17        .byte con_obj_baton   ; enemy weapon
- D 0 - I - 0x019C20 06:9C10: 05        .byte con_0359_05   ; enemy 0359 ???
- D 0 - I - 0x019C21 06:9C11: 10 03     .word $0310 ; enemy pos_X
- D 0 - I - 0x019C23 06:9C13: C0 00     .word $00C0 ; enemy pos_Y
- D 0 - I - 0x019C25 06:9C15: B0 01     .word $01B0 ; enemy pos_Z
- D 0 - I - 0x019C27 06:9C17: 03        .byte $03   ; enemy 006A ???
- D 0 - I - 0x019C28 06:9C18: 0B        .byte $0B   ; enemy hp
; 02
- D 0 - I - 0x019C29 06:9C19: 20        .byte $20   ; enemy settings
- D 0 - I - 0x019C2A 06:9C1A: 05        .byte con_0359_05   ; enemy 0359 ???
- D 0 - I - 0x019C2B 06:9C1B: 00 03     .word $0300 ; enemy pos_X
- D 0 - I - 0x019C2D 06:9C1D: C0 00     .word $00C0 ; enemy pos_Y
- D 0 - I - 0x019C2F 06:9C1F: B0 01     .word $01B0 ; enemy pos_Z
- D 0 - I - 0x019C31 06:9C21: 03        .byte $03   ; enemy 006A ???
- D 0 - I - 0x019C32 06:9C22: 0B        .byte $0B   ; enemy hp
; 03
- D 0 - I - 0x019C33 06:9C23: 80        .byte $80   ; enemy settings
- D 0 - I - 0x019C34 06:9C24: 17        .byte con_obj_baton   ; enemy weapon
- D 0 - I - 0x019C35 06:9C25: 0B        .byte $0B   ; enemy hp
; 04
- D 0 - I - 0x019C36 06:9C26: 80        .byte $80   ; enemy settings
- D 0 - I - 0x019C37 06:9C27: 17        .byte con_obj_baton   ; enemy weapon
- D 0 - I - 0x019C38 06:9C28: 0B        .byte $0B   ; enemy hp
; 05
- - - - - - 0x019C39 06:9C29: 80        .byte $80   ; enemy settings
- - - - - - 0x019C3A 06:9C2A: 17        .byte con_obj_baton   ; enemy weapon
- - - - - - 0x019C3B 06:9C2B: 0B        .byte $0B   ; enemy hp
; 06
- - - - - - 0x019C3C 06:9C2C: 80        .byte $80   ; enemy settings
- - - - - - 0x019C3D 06:9C2D: 17        .byte con_obj_baton   ; enemy weapon
- - - - - - 0x019C3E 06:9C2E: 0B        .byte $0B   ; enemy hp



off_00_9C2F_13:
- D 0 - I - 0x019C3F 06:9C2F: 07        .byte con_884D_script_07   ; 
- D 0 - I - 0x019C40 06:9C30: 08        .byte $08   ; 
- D 0 - I - 0x019C41 06:9C31: B0        .byte $B0   ; 
- D 0 - I - 0x019C42 06:9C32: 01        .byte $01   ; 



off_00_9C33_14:
- D 0 - I - 0x019C43 06:9C33: 13        .byte con_884D_script_13   ; 



off_00_9C34_15_spawn_burnov:
- D 0 - I - 0x019C44 06:9C34: 00        .byte con_884D_script_00   ; 
- D 0 - I - 0x019C45 06:9C35: 00 02     .word $0200 ; X camera limit (min)
- D 0 - I - 0x019C47 06:9C37: FF 02     .word $02FF ; X camera limit (max)
- D 0 - I - 0x019C49 06:9C39: B0 01     .word $01B0 ; Y camera limit (min)
- D 0 - I - 0x019C4B 06:9C3B: D0 02     .word $02D0 ; Y camera limit (max)
- D 0 - I - 0x019C4D 06:9C3D: 0F        .byte $0F   ; 04B0 ???

- D 0 - I - 0x019C4E 06:9C3E: 50        .byte con_chr_bank + $50   ; 
- D 0 - I - 0x019C4F 06:9C3F: 07        .byte con_obj_burnov   ; 
- D 0 - I - 0x019C50 06:9C40: 01        .byte $01   ; enemy counter
; 01
- D 0 - I - 0x019C51 06:9C41: 20        .byte $20   ; enemy settings
- D 0 - I - 0x019C52 06:9C42: 05        .byte con_0359_05   ; enemy 0359 ???
- D 0 - I - 0x019C53 06:9C43: FE 03     .word $03FE ; enemy pos_X
- D 0 - I - 0x019C55 06:9C45: D0 00     .word $00D0 ; enemy pos_Y
- D 0 - I - 0x019C57 06:9C47: B0 01     .word $01B0 ; enemy pos_Z
- D 0 - I - 0x019C59 06:9C49: 03        .byte $03   ; enemy 006A ???
- D 0 - I - 0x019C5A 06:9C4A: 32        .byte $32   ; enemy hp



off_00_9C4B_16:
- D 0 - I - 0x019C5B 06:9C4B: 08        .byte con_884D_script_08   ; 



off_00_9C4C_17:
- D 0 - I - 0x019C5C 06:9C4C: 81        .byte con_884D_script_81   ; 



off_01_9C4D_00_spawn_roper:
- D 0 - I - 0x019C5D 06:9C4D: 00        .byte con_884D_script_00   ; 
- D 0 - I - 0x019C5E 06:9C4E: 00 00     .word $0000 ; X camera limit (min)
- D 0 - I - 0x019C60 06:9C50: 3F 00     .word $003F ; X camera limit (max)
- D 0 - I - 0x019C62 06:9C52: E0 00     .word $00E0 ; Y camera limit (min)
- D 0 - I - 0x019C64 06:9C54: E0 00     .word $00E0 ; Y camera limit (max)
- D 0 - I - 0x019C66 06:9C56: 01        .byte $01   ; 04B0 ???

- D 0 - I - 0x019C67 06:9C57: 42        .byte con_chr_bank + $42   ; 
- D 0 - I - 0x019C68 06:9C58: 03        .byte con_obj_roper   ; 
- D 0 - I - 0x019C69 06:9C59: 02        .byte $02   ; enemy counter
; 01
- D 0 - I - 0x019C6A 06:9C5A: A0        .byte $A0   ; enemy settings
- D 0 - I - 0x019C6B 06:9C5B: 1A        .byte con_obj_boomerang   ; enemy weapon
- D 0 - I - 0x019C6C 06:9C5C: 01        .byte con_0359_01   ; enemy 0359 ???
- D 0 - I - 0x019C6D 06:9C5D: E0 00     .word $00E0 ; enemy pos_X
- D 0 - I - 0x019C6F 06:9C5F: 00 00     .word $0000 ; enemy pos_Y
- D 0 - I - 0x019C71 06:9C61: 30 01     .word $0130 ; enemy pos_Z
- D 0 - I - 0x019C73 06:9C63: 00        .byte $00   ; enemy 006A ???
- D 0 - I - 0x019C74 06:9C64: 0F        .byte $0F   ; enemy hp
; 02
- D 0 - I - 0x019C75 06:9C65: 20        .byte $20   ; enemy settings
- D 0 - I - 0x019C76 06:9C66: 01        .byte con_0359_01   ; enemy 0359 ???
- D 0 - I - 0x019C77 06:9C67: F0 00     .word $00F0 ; enemy pos_X
- D 0 - I - 0x019C79 06:9C69: 00 00     .word $0000 ; enemy pos_Y
- D 0 - I - 0x019C7B 06:9C6B: 30 01     .word $0130 ; enemy pos_Z
- D 0 - I - 0x019C7D 06:9C6D: 00        .byte $00   ; enemy 006A ???
- D 0 - I - 0x019C7E 06:9C6E: 0F        .byte $0F   ; enemy hp



off_01_9C6F_01_cursor:
- D 0 - I - 0x019C7F 06:9C6F: 01        .byte con_884D_script_hand_cursor   ; 
- D 0 - I - 0x019C80 06:9C70: 00 00     .word $0000 ; X camera limit (min)
- D 0 - I - 0x019C82 06:9C72: 3F 00     .word $003F ; X camera limit (max)
- D 0 - I - 0x019C84 06:9C74: 00 00     .word $0000 ; Y camera limit (min)
- D 0 - I - 0x019C86 06:9C76: E0 00     .word $00E0 ; Y camera limit (max)
- D 0 - I - 0x019C88 06:9C78: 05        .byte $05   ; 04B0 ???

- D 0 - I - 0x019C89 06:9C79: 01        .byte $01   ; cursor direction (down)



off_01_9C7A_02:
- D 0 - I - 0x019C8A 06:9C7A: 02        .byte con_884D_script_02   ; 
- D 0 - I - 0x019C8B 06:9C7B: 3F        .byte $3F   ; 
- D 0 - I - 0x019C8C 06:9C7C: 00        .byte $00   ; 
- D 0 - I - 0x019C8D 06:9C7D: 00        .byte $00   ; 
- D 0 - I - 0x019C8E 06:9C7E: 00        .byte $00   ; 



off_01_9C7F_03_spawn_roper:
- D 0 - I - 0x019C8F 06:9C7F: 00        .byte con_884D_script_00   ; 
- D 0 - I - 0x019C90 06:9C80: 00 00     .word $0000 ; X camera limit (min)
- D 0 - I - 0x019C92 06:9C82: FF 00     .word $00FF ; X camera limit (max)
- D 0 - I - 0x019C94 06:9C84: 00 00     .word $0000 ; Y camera limit (min)
- D 0 - I - 0x019C96 06:9C86: 00 00     .word $0000 ; Y camera limit (max)
- D 0 - I - 0x019C98 06:9C88: 05        .byte $05   ; 04B0 ???

- D 0 - I - 0x019C99 06:9C89: 42        .byte con_chr_bank + $42   ; 
- D 0 - I - 0x019C9A 06:9C8A: 03        .byte con_obj_roper   ; 
- D 0 - I - 0x019C9B 06:9C8B: 02        .byte $02   ; enemy counter
; 01
- D 0 - I - 0x019C9C 06:9C8C: 20        .byte $20   ; enemy settings
- D 0 - I - 0x019C9D 06:9C8D: 04        .byte con_0359_04   ; enemy 0359 ???
- D 0 - I - 0x019C9E 06:9C8E: A0 01     .word $01A0 ; enemy pos_X
- D 0 - I - 0x019CA0 06:9C90: 00 00     .word $0000 ; enemy pos_Y
- D 0 - I - 0x019CA2 06:9C92: 50 00     .word $0050 ; enemy pos_Z
- D 0 - I - 0x019CA4 06:9C94: 03        .byte $03   ; enemy 006A ???
- D 0 - I - 0x019CA5 06:9C95: 13        .byte $13   ; enemy hp
; 02
- D 0 - I - 0x019CA6 06:9C96: 20        .byte $20   ; enemy settings
- D 0 - I - 0x019CA7 06:9C97: 05        .byte con_0359_05   ; enemy 0359 ???
- D 0 - I - 0x019CA8 06:9C98: C0 01     .word $01C0 ; enemy pos_X
- D 0 - I - 0x019CAA 06:9C9A: 00 00     .word $0000 ; enemy pos_Y
- D 0 - I - 0x019CAC 06:9C9C: A0 00     .word $00A0 ; enemy pos_Z
- D 0 - I - 0x019CAE 06:9C9E: 03        .byte $03   ; enemy 006A ???
- D 0 - I - 0x019CAF 06:9C9F: 13        .byte $13   ; enemy hp



off_01_9CA0_04_cursor:
- D 0 - I - 0x019CB0 06:9CA0: 01        .byte con_884D_script_hand_cursor   ; 
- D 0 - I - 0x019CB1 06:9CA1: 00 00     .word $0000 ; X camera limit (min)
- D 0 - I - 0x019CB3 06:9CA3: FF 00     .word $00FF ; X camera limit (max)
- D 0 - I - 0x019CB5 06:9CA5: 00 00     .word $0000 ; Y camera limit (min)
- D 0 - I - 0x019CB7 06:9CA7: F0 00     .word $00F0 ; Y camera limit (max)
- D 0 - I - 0x019CB9 06:9CA9: 0D        .byte $0D   ; 04B0 ???

- D 0 - I - 0x019CBA 06:9CAA: 00        .byte $00   ; cursor direction (up)



off_01_9CAB_05:
- D 0 - I - 0x019CBB 06:9CAB: 07        .byte con_884D_script_07   ; 
- D 0 - I - 0x019CBC 06:9CAC: 08        .byte $08   ; 
- D 0 - I - 0x019CBD 06:9CAD: F0        .byte $F0   ; 
- D 0 - I - 0x019CBE 06:9CAE: 00        .byte $00   ; 



off_01_9CAF_06:
- D 0 - I - 0x019CBF 06:9CAF: 03        .byte con_884D_script_03   ; 
- D 0 - I - 0x019CC0 06:9CB0: 00 00     .word $0000 ; X camera limit (min)
- D 0 - I - 0x019CC2 06:9CB2: FF 00     .word $00FF ; X camera limit (max)
- D 0 - I - 0x019CC4 06:9CB4: F0 00     .word $00F0 ; Y camera limit (min)
- D 0 - I - 0x019CC6 06:9CB6: F0 00     .word $00F0 ; Y camera limit (max)
- D 0 - I - 0x019CC8 06:9CB8: 08        .byte $08   ; 04B0 ???

- D 0 - I - 0x019CC9 06:9CB9: 46        .byte con_chr_bank + $46   ; 
- D 0 - I - 0x019CCA 06:9CBA: 06        .byte con_obj_bolo   ; 
- - - - - - 0x019CCB 06:9CBB: 00        .byte $00   ; 



off_01_9CBC_07:
- D 0 - I - 0x019CCC 06:9CBC: 07        .byte con_884D_script_07   ; 
- D 0 - I - 0x019CCD 06:9CBD: A0        .byte $A0   ; 
- D 0 - I - 0x019CCE 06:9CBE: FF        .byte $FF   ; 
- D 0 - I - 0x019CCF 06:9CBF: 00        .byte $00   ; 



off_01_9CC0_08:
- D 0 - I - 0x019CD0 06:9CC0: 0C        .byte con_884D_script_0C   ; 



off_01_9CC1_09_spawn_linda:
- D 0 - I - 0x019CD1 06:9CC1: 00        .byte con_884D_script_00   ; 
- D 0 - I - 0x019CD2 06:9CC2: 00 00     .word $0000 ; X camera limit (min)
- D 0 - I - 0x019CD4 06:9CC4: FF 00     .word $00FF ; X camera limit (max)
- D 0 - I - 0x019CD6 06:9CC6: F0 00     .word $00F0 ; Y camera limit (min)
- D 0 - I - 0x019CD8 06:9CC8: F0 00     .word $00F0 ; Y camera limit (max)
- D 0 - I - 0x019CDA 06:9CCA: 08        .byte $08   ; 04B0 ???

- D 0 - I - 0x019CDB 06:9CCB: 44        .byte con_chr_bank + $44   ; 
- D 0 - I - 0x019CDC 06:9CCC: 04        .byte con_obj_linda   ; 
- D 0 - I - 0x019CDD 06:9CCD: 02        .byte $02   ; enemy counter
; 01
- D 0 - I - 0x019CDE 06:9CCE: E0        .byte $E0   ; enemy settings
- D 0 - I - 0x019CDF 06:9CCF: 14        .byte con_obj_grenade   ; enemy weapon
- D 0 - I - 0x019CE0 06:9CD0: 07        .byte con_state_fall_from_platform   ; enemy state
- D 0 - I - 0x019CE1 06:9CD1: 07        .byte con_0359_07   ; enemy 0359 ???
- D 0 - I - 0x019CE2 06:9CD2: 78 01     .word $0178 ; enemy pos_X
- D 0 - I - 0x019CE4 06:9CD4: 00 00     .word $0000 ; enemy pos_Y
- D 0 - I - 0x019CE6 06:9CD6: B8 01     .word $01B8 ; enemy pos_Z
- D 0 - I - 0x019CE8 06:9CD8: 03        .byte $03   ; enemy 006A ???
- D 0 - I - 0x019CE9 06:9CD9: 0F        .byte $0F   ; enemy hp
; 02
- D 0 - I - 0x019CEA 06:9CDA: 60        .byte $60   ; enemy settings
- D 0 - I - 0x019CEB 06:9CDB: 07        .byte con_state_fall_from_platform   ; enemy state
- D 0 - I - 0x019CEC 06:9CDC: 07        .byte con_0359_07   ; enemy 0359 ???
- D 0 - I - 0x019CED 06:9CDD: 78 01     .word $0178 ; enemy pos_X
- D 0 - I - 0x019CEF 06:9CDF: 00 00     .word $0000 ; enemy pos_Y
- D 0 - I - 0x019CF1 06:9CE1: B8 01     .word $01B8 ; enemy pos_Z
- D 0 - I - 0x019CF3 06:9CE3: 03        .byte $03   ; enemy 006A ???
- D 0 - I - 0x019CF4 06:9CE4: 0F        .byte $0F   ; enemy hp



off_01_9CE5_0A_spawn_williams:
- D 0 - I - 0x019CF5 06:9CE5: 00        .byte con_884D_script_00   ; 
- D 0 - I - 0x019CF6 06:9CE6: 00 00     .word $0000 ; X camera limit (min)
- D 0 - I - 0x019CF8 06:9CE8: FF 00     .word $00FF ; X camera limit (max)
- D 0 - I - 0x019CFA 06:9CEA: F0 00     .word $00F0 ; Y camera limit (min)
- D 0 - I - 0x019CFC 06:9CEC: F0 00     .word $00F0 ; Y camera limit (max)
- D 0 - I - 0x019CFE 06:9CEE: 08        .byte $08   ; 04B0 ???

- D 0 - I - 0x019CFF 06:9CEF: 4E        .byte con_chr_bank + $4E   ; 
- D 0 - I - 0x019D00 06:9CF0: 02        .byte con_obj_williams   ; 
- D 0 - I - 0x019D01 06:9CF1: 02        .byte $02   ; enemy counter
; 01
- D 0 - I - 0x019D02 06:9CF2: E0        .byte $E0   ; enemy settings
- D 0 - I - 0x019D03 06:9CF3: 17        .byte con_obj_baton   ; enemy weapon
- D 0 - I - 0x019D04 06:9CF4: 07        .byte con_state_fall_from_platform   ; enemy state
- D 0 - I - 0x019D05 06:9CF5: 07        .byte con_0359_07   ; enemy 0359 ???
- D 0 - I - 0x019D06 06:9CF6: 78 01     .word $0178 ; enemy pos_X
- D 0 - I - 0x019D08 06:9CF8: 00 00     .word $0000 ; enemy pos_Y
- D 0 - I - 0x019D0A 06:9CFA: B8 01     .word $01B8 ; enemy pos_Z
- D 0 - I - 0x019D0C 06:9CFC: 03        .byte $03   ; enemy 006A ???
- D 0 - I - 0x019D0D 06:9CFD: 0B        .byte $0B   ; enemy hp
; 02
- D 0 - I - 0x019D0E 06:9CFE: E0        .byte $E0   ; enemy settings
- D 0 - I - 0x019D0F 06:9CFF: 17        .byte con_obj_baton   ; enemy weapon
- D 0 - I - 0x019D10 06:9D00: 07        .byte con_state_fall_from_platform   ; enemy state
- D 0 - I - 0x019D11 06:9D01: 07        .byte con_0359_07   ; enemy 0359 ???
- D 0 - I - 0x019D12 06:9D02: 78 01     .word $0178 ; enemy pos_X
- D 0 - I - 0x019D14 06:9D04: 00 00     .word $0000 ; enemy pos_Y
- D 0 - I - 0x019D16 06:9D06: B8 01     .word $01B8 ; enemy pos_Z
- D 0 - I - 0x019D18 06:9D08: 03        .byte $03   ; enemy 006A ???
- D 0 - I - 0x019D19 06:9D09: 0B        .byte $0B   ; enemy hp



off_01_9D0A_0B_spawn_right_arm:
- D 0 - I - 0x019D1A 06:9D0A: 00        .byte con_884D_script_00   ; 
- D 0 - I - 0x019D1B 06:9D0B: 00 00     .word $0000 ; X camera limit (min)
- D 0 - I - 0x019D1D 06:9D0D: FF 00     .word $00FF ; X camera limit (max)
- D 0 - I - 0x019D1F 06:9D0F: F0 00     .word $00F0 ; Y camera limit (min)
- D 0 - I - 0x019D21 06:9D11: F0 00     .word $00F0 ; Y camera limit (max)
- D 0 - I - 0x019D23 06:9D13: 08        .byte $08   ; 04B0 ???

- D 0 - I - 0x019D24 06:9D14: 54        .byte con_chr_bank + $54   ; 
- D 0 - I - 0x019D25 06:9D15: 0A        .byte con_obj_right_arm   ; 
- D 0 - I - 0x019D26 06:9D16: 02        .byte $02   ; enemy counter
; 01
- D 0 - I - 0x019D27 06:9D17: 60        .byte $60   ; enemy settings
- D 0 - I - 0x019D28 06:9D18: 07        .byte con_state_fall_from_platform   ; enemy state
- D 0 - I - 0x019D29 06:9D19: 07        .byte con_0359_07   ; enemy 0359 ???
- D 0 - I - 0x019D2A 06:9D1A: 78 01     .word $0178 ; enemy pos_X
- D 0 - I - 0x019D2C 06:9D1C: 00 00     .word $0000 ; enemy pos_Y
- D 0 - I - 0x019D2E 06:9D1E: B8 01     .word $01B8 ; enemy pos_Z
- D 0 - I - 0x019D30 06:9D20: 03        .byte $03   ; enemy 006A ???
- D 0 - I - 0x019D31 06:9D21: 17        .byte $17   ; enemy hp
; 02
- D 0 - I - 0x019D32 06:9D22: 60        .byte $60   ; enemy settings
- D 0 - I - 0x019D33 06:9D23: 07        .byte con_state_fall_from_platform   ; enemy state
- D 0 - I - 0x019D34 06:9D24: 07        .byte con_0359_07   ; enemy 0359 ???
- D 0 - I - 0x019D35 06:9D25: 78 01     .word $0178 ; enemy pos_X
- D 0 - I - 0x019D37 06:9D27: 00 00     .word $0000 ; enemy pos_Y
- D 0 - I - 0x019D39 06:9D29: B8 01     .word $01B8 ; enemy pos_Z
- D 0 - I - 0x019D3B 06:9D2B: 03        .byte $03   ; enemy 006A ???
- D 0 - I - 0x019D3C 06:9D2C: 17        .byte $17   ; enemy hp



off_01_9D2D_0C:
- D 0 - I - 0x019D3D 06:9D2D: 0D        .byte con_884D_script_0D   ; 



off_01_9D2E_0D_cursor:
- D 0 - I - 0x019D3E 06:9D2E: 01        .byte con_884D_script_hand_cursor   ; 
- D 0 - I - 0x019D3F 06:9D2F: 00 00     .word $0000 ; X camera limit (min)
- D 0 - I - 0x019D41 06:9D31: 00 02     .word $0200 ; X camera limit (max)
- D 0 - I - 0x019D43 06:9D33: 00 00     .word $0000 ; Y camera limit (min)
- D 0 - I - 0x019D45 06:9D35: F0 00     .word $00F0 ; Y camera limit (max)
- D 0 - I - 0x019D47 06:9D37: 09        .byte $09   ; 04B0 ???

- D 0 - I - 0x019D48 06:9D38: 03        .byte $03   ; cursor direction (right)



off_01_9D39_0E:
- D 0 - I - 0x019D49 06:9D39: 07        .byte con_884D_script_07   ; 
- D 0 - I - 0x019D4A 06:9D3A: 80        .byte $80   ; 
- D 0 - I - 0x019D4B 06:9D3B: 00        .byte $00   ; 
- D 0 - I - 0x019D4C 06:9D3C: 02        .byte $02   ; 



off_01_9D3D_0F_spawn_roper:
- D 0 - I - 0x019D4D 06:9D3D: 00        .byte con_884D_script_00   ; 
- D 0 - I - 0x019D4E 06:9D3E: 00 00     .word $0000 ; X camera limit (min)
- D 0 - I - 0x019D50 06:9D40: FF 02     .word $02FF ; X camera limit (max)
- D 0 - I - 0x019D52 06:9D42: 00 00     .word $0000 ; Y camera limit (min)
- D 0 - I - 0x019D54 06:9D44: F0 00     .word $00F0 ; Y camera limit (max)
- D 0 - I - 0x019D56 06:9D46: 09        .byte $09   ; 04B0 ???

- D 0 - I - 0x019D57 06:9D47: 42        .byte con_chr_bank + $42   ; 
- D 0 - I - 0x019D58 06:9D48: 03        .byte con_obj_roper   ; 
- D 0 - I - 0x019D59 06:9D49: 04        .byte $04   ; enemy counter
; 01
- D 0 - I - 0x019D5A 06:9D4A: 00        .byte $00   ; enemy settings
- D 0 - I - 0x019D5B 06:9D4B: 13        .byte $13   ; enemy hp
; 02
- D 0 - I - 0x019D5C 06:9D4C: 00        .byte $00   ; enemy settings
- D 0 - I - 0x019D5D 06:9D4D: 13        .byte $13   ; enemy hp
; 03
- D 0 - I - 0x019D5E 06:9D4E: 00        .byte $00   ; enemy settings
- D 0 - I - 0x019D5F 06:9D4F: 13        .byte $13   ; enemy hp
; 04
- - - - - - 0x019D60 06:9D50: 00        .byte $00   ; enemy settings
- - - - - - 0x019D61 06:9D51: 13        .byte $13   ; enemy hp



off_01_9D52_10:
- D 0 - I - 0x019D62 06:9D52: 07        .byte con_884D_script_07   ; 
- D 0 - I - 0x019D63 06:9D53: 80        .byte $80   ; 
- D 0 - I - 0x019D64 06:9D54: 80        .byte $80   ; 
- D 0 - I - 0x019D65 06:9D55: 02        .byte $02   ; 



off_01_9D56_11_spawn_roper:
- D 0 - I - 0x019D66 06:9D56: 00        .byte con_884D_script_00   ; 
- D 0 - I - 0x019D67 06:9D57: 00 00     .word $0000 ; X camera limit (min)
- D 0 - I - 0x019D69 06:9D59: FF 02     .word $02FF ; X camera limit (max)
- D 0 - I - 0x019D6B 06:9D5B: 00 00     .word $0000 ; Y camera limit (min)
- D 0 - I - 0x019D6D 06:9D5D: F0 00     .word $00F0 ; Y camera limit (max)
- D 0 - I - 0x019D6F 06:9D5F: 09        .byte $09   ; 04B0 ???

- D 0 - I - 0x019D70 06:9D60: 42        .byte con_chr_bank + $42   ; 
- D 0 - I - 0x019D71 06:9D61: 03        .byte con_obj_roper   ; 
- D 0 - I - 0x019D72 06:9D62: 01        .byte $01   ; enemy counter
; 01
- D 0 - I - 0x019D73 06:9D63: 20        .byte $20   ; enemy settings
- D 0 - I - 0x019D74 06:9D64: 08        .byte con_0359_08   ; enemy 0359 ???
- D 0 - I - 0x019D75 06:9D65: 7F 03     .word $037F ; enemy pos_X
- D 0 - I - 0x019D77 06:9D67: 00 00     .word $0000 ; enemy pos_Y
- D 0 - I - 0x019D79 06:9D69: 40 01     .word $0140 ; enemy pos_Z
- D 0 - I - 0x019D7B 06:9D6B: 00        .byte $00   ; enemy 006A ???
- D 0 - I - 0x019D7C 06:9D6C: 13        .byte $13   ; enemy hp



off_01_9D6D_12:
- D 0 - I - 0x019D7D 06:9D6D: 13        .byte con_884D_script_13   ; 



off_01_9D6E_13_spawn_ninja:
- D 0 - I - 0x019D7E 06:9D6E: 00        .byte con_884D_script_00   ; 
- D 0 - I - 0x019D7F 06:9D6F: 00 00     .word $0000 ; X camera limit (min)
- D 0 - I - 0x019D81 06:9D71: FF 02     .word $02FF ; X camera limit (max)
- D 0 - I - 0x019D83 06:9D73: 00 00     .word $0000 ; Y camera limit (min)
- D 0 - I - 0x019D85 06:9D75: F0 00     .word $00F0 ; Y camera limit (max)
- D 0 - I - 0x019D87 06:9D77: 09        .byte $09   ; 04B0 ???

- D 0 - I - 0x019D88 06:9D78: 56        .byte con_chr_bank + $56   ; 
- D 0 - I - 0x019D89 06:9D79: 0F        .byte con_obj_ninja   ; 
- D 0 - I - 0x019D8A 06:9D7A: 02        .byte $02   ; enemy counter
; 01
- D 0 - I - 0x019D8B 06:9D7B: 20        .byte $20   ; enemy settings
- D 0 - I - 0x019D8C 06:9D7C: 08        .byte con_0359_08   ; enemy 0359 ???
- D 0 - I - 0x019D8D 06:9D7D: 80 02     .word $0280 ; enemy pos_X
- D 0 - I - 0x019D8F 06:9D7F: 00 00     .word $0000 ; enemy pos_Y
- D 0 - I - 0x019D91 06:9D81: 40 01     .word $0140 ; enemy pos_Z
- D 0 - I - 0x019D93 06:9D83: 00        .byte $00   ; enemy 006A ???
- D 0 - I - 0x019D94 06:9D84: 1F        .byte $1F   ; enemy hp
; 02
- D 0 - I - 0x019D95 06:9D85: 20        .byte $20   ; enemy settings
- D 0 - I - 0x019D96 06:9D86: 08        .byte con_0359_08   ; enemy 0359 ???
- D 0 - I - 0x019D97 06:9D87: 7F 03     .word $037F ; enemy pos_X
- D 0 - I - 0x019D99 06:9D89: 00 00     .word $0000 ; enemy pos_Y
- D 0 - I - 0x019D9B 06:9D8B: 40 01     .word $0140 ; enemy pos_Z
- D 0 - I - 0x019D9D 06:9D8D: 00        .byte $00   ; enemy 006A ???
- D 0 - I - 0x019D9E 06:9D8E: 1F        .byte $1F   ; enemy hp



off_01_9D8F_14:
- D 0 - I - 0x019D9F 06:9D8F: 0F        .byte con_884D_script_0F   ; 



off_01_9D90_15:
- D 0 - I - 0x019DA0 06:9D90: 12        .byte con_884D_script_12   ; 



off_01_9D91_16:
- D 0 - I - 0x019DA1 06:9D91: 0E        .byte con_884D_script_0E   ; 



off_01_9D92_17:
- D 0 - I - 0x019DA2 06:9D92: 08        .byte con_884D_script_08   ; 



off_01_9D93_18:
- D 0 - I - 0x019DA3 06:9D93: 81        .byte con_884D_script_81   ; 



off_02_9D94_00:
- D 0 - I - 0x019DA4 06:9D94: 1B        .byte con_884D_script_1B   ; 



off_02_9D95_01:
- D 0 - I - 0x019DA5 06:9D95: 16        .byte con_884D_script_16   ; 
- D 0 - I - 0x019DA6 06:9D96: 50        .byte con_sfx_helicopter_2   ; 



off_02_9D97_02_spawn_right_arm:
- D 0 - I - 0x019DA7 06:9D97: 09        .byte con_884D_script_emeny_spawn_at_door   ; 
- D 0 - I - 0x019DA8 06:9D98: 00 00     .word $0000 ; X camera limit (min)
- D 0 - I - 0x019DAA 06:9D9A: 00 00     .word $0000 ; X camera limit (max)
- D 0 - I - 0x019DAC 06:9D9C: 00 00     .word $0000 ; Y camera limit (min)
- D 0 - I - 0x019DAE 06:9D9E: 00 00     .word $0000 ; Y camera limit (max)
- D 0 - I - 0x019DB0 06:9DA0: 00        .byte $00   ; 04B0 ???

- D 0 - I - 0x019DB1 06:9DA1: 54        .byte con_chr_bank + $54   ; 
- D 0 - I - 0x019DB2 06:9DA2: 0A        .byte con_obj_right_arm   ; 
- D 0 - I - 0x019DB3 06:9DA3: 02        .byte $02   ; enemy counter

- D 0 - I - 0x019DB4 06:9DA4: 02        .byte con_A6C3_draw_heli_blue_door   ; spawner

; 01
- D 0 - I - 0x019DB5 06:9DA5: 20        .byte $20   ; enemy settings
- D 0 - I - 0x019DB6 06:9DA6: 00        .byte con_0359_00   ; enemy 0359 ???
- D 0 - I - 0x019DB7 06:9DA7: 33 00     .word $0033 ; enemy pos_X
- D 0 - I - 0x019DB9 06:9DA9: 5D 00     .word $005D ; enemy pos_Y
- D 0 - I - 0x019DBB 06:9DAB: 00 00     .word $0000 ; enemy pos_Z
- D 0 - I - 0x019DBD 06:9DAD: 02        .byte $02   ; enemy 006A ???
- D 0 - I - 0x019DBE 06:9DAE: 17        .byte $17   ; enemy hp
; 02
- D 0 - I - 0x019DBF 06:9DAF: 20        .byte $20   ; enemy settings
- D 0 - I - 0x019DC0 06:9DB0: 00        .byte con_0359_00   ; enemy 0359 ???
- D 0 - I - 0x019DC1 06:9DB1: 33 00     .word $0033 ; enemy pos_X
- D 0 - I - 0x019DC3 06:9DB3: 5D 00     .word $005D ; enemy pos_Y
- D 0 - I - 0x019DC5 06:9DB5: 00 00     .word $0000 ; enemy pos_Z
- D 0 - I - 0x019DC7 06:9DB7: 02        .byte $02   ; enemy 006A ???
- D 0 - I - 0x019DC8 06:9DB8: 17        .byte $17   ; enemy hp



off_02_9DB9_03_spawn_williams:
- D 0 - I - 0x019DC9 06:9DB9: 09        .byte con_884D_script_emeny_spawn_at_door   ; 
- D 0 - I - 0x019DCA 06:9DBA: 00 00     .word $0000 ; X camera limit (min)
- D 0 - I - 0x019DCC 06:9DBC: 00 00     .word $0000 ; X camera limit (max)
- D 0 - I - 0x019DCE 06:9DBE: 00 00     .word $0000 ; Y camera limit (min)
- D 0 - I - 0x019DD0 06:9DC0: 00 00     .word $0000 ; Y camera limit (max)
- D 0 - I - 0x019DD2 06:9DC2: 00        .byte $00   ; 04B0 ???

- D 0 - I - 0x019DD3 06:9DC3: 4E        .byte con_chr_bank + $4E   ; 
- D 0 - I - 0x019DD4 06:9DC4: 02        .byte con_obj_williams   ; 
- D 0 - I - 0x019DD5 06:9DC5: 04        .byte $04   ; enemy counter

- D 0 - I - 0x019DD6 06:9DC6: 02        .byte con_A6C3_draw_heli_blue_door   ; spawner

; 01
- D 0 - I - 0x019DD7 06:9DC7: A0        .byte $A0   ; enemy settings
- D 0 - I - 0x019DD8 06:9DC8: 17        .byte con_obj_baton   ; enemy weapon
- D 0 - I - 0x019DD9 06:9DC9: 00        .byte con_0359_00   ; enemy 0359 ???
- D 0 - I - 0x019DDA 06:9DCA: 33 00     .word $0033 ; enemy pos_X
- D 0 - I - 0x019DDC 06:9DCC: 5D 00     .word $005D ; enemy pos_Y
- D 0 - I - 0x019DDE 06:9DCE: 00 00     .word $0000 ; enemy pos_Z
- D 0 - I - 0x019DE0 06:9DD0: 02        .byte $02   ; enemy 006A ???
- D 0 - I - 0x019DE1 06:9DD1: 15        .byte $15   ; enemy hp
; 02
- D 0 - I - 0x019DE2 06:9DD2: A0        .byte $A0   ; enemy settings
- D 0 - I - 0x019DE3 06:9DD3: 17        .byte con_obj_baton   ; enemy weapon
- D 0 - I - 0x019DE4 06:9DD4: 00        .byte con_0359_00   ; enemy 0359 ???
- D 0 - I - 0x019DE5 06:9DD5: 33 00     .word $0033 ; enemy pos_X
- D 0 - I - 0x019DE7 06:9DD7: 5D 00     .word $005D ; enemy pos_Y
- D 0 - I - 0x019DE9 06:9DD9: 00 00     .word $0000 ; enemy pos_Z
- D 0 - I - 0x019DEB 06:9DDB: 02        .byte $02   ; enemy 006A ???
- D 0 - I - 0x019DEC 06:9DDC: 15        .byte $15   ; enemy hp
; 03
- D 0 - I - 0x019DED 06:9DDD: A0        .byte $A0   ; enemy settings
- D 0 - I - 0x019DEE 06:9DDE: 17        .byte con_obj_baton   ; enemy weapon
- D 0 - I - 0x019DEF 06:9DDF: 00        .byte con_0359_00   ; enemy 0359 ???
- D 0 - I - 0x019DF0 06:9DE0: 33 00     .word $0033 ; enemy pos_X
- D 0 - I - 0x019DF2 06:9DE2: 5D 00     .word $005D ; enemy pos_Y
- D 0 - I - 0x019DF4 06:9DE4: 00 00     .word $0000 ; enemy pos_Z
- D 0 - I - 0x019DF6 06:9DE6: 02        .byte $02   ; enemy 006A ???
- D 0 - I - 0x019DF7 06:9DE7: 15        .byte $15   ; enemy hp
; 04
- - - - - - 0x019DF8 06:9DE8: A0        .byte $A0   ; enemy settings
- - - - - - 0x019DF9 06:9DE9: 17        .byte con_obj_baton   ; enemy weapon
- - - - - - 0x019DFA 06:9DEA: 00        .byte con_0359_00   ; enemy 0359 ???
- - - - - - 0x019DFB 06:9DEB: 33 00     .word $0033 ; enemy pos_X
- - - - - - 0x019DFD 06:9DED: 5D 00     .word $005D ; enemy pos_Y
- - - - - - 0x019DFF 06:9DEF: 00 00     .word $0000 ; enemy pos_Z
- - - - - - 0x019E01 06:9DF1: 02        .byte $02   ; enemy 006A ???
- - - - - - 0x019E02 06:9DF2: 15        .byte $15   ; enemy hp



off_02_9DF3_04:
- D 0 - I - 0x019E03 06:9DF3: 13        .byte con_884D_script_13   ; 



off_02_9DF4_05_spawn_bolo_1:
- D 0 - I - 0x019E04 06:9DF4: 09        .byte con_884D_script_emeny_spawn_at_door   ; 
- D 0 - I - 0x019E05 06:9DF5: 00 00     .word $0000 ; X camera limit (min)
- D 0 - I - 0x019E07 06:9DF7: 00 00     .word $0000 ; X camera limit (max)
- D 0 - I - 0x019E09 06:9DF9: 00 00     .word $0000 ; Y camera limit (min)
- D 0 - I - 0x019E0B 06:9DFB: 00 00     .word $0000 ; Y camera limit (max)
- D 0 - I - 0x019E0D 06:9DFD: 00        .byte $00   ; 04B0 ???

- D 0 - I - 0x019E0E 06:9DFE: 46        .byte con_chr_bank + $46   ; 
- D 0 - I - 0x019E0F 06:9DFF: 06        .byte con_obj_bolo   ; 
- D 0 - I - 0x019E10 06:9E00: 01        .byte $01   ; enemy counter

- D 0 - I - 0x019E11 06:9E01: 02        .byte con_A6C3_draw_heli_blue_door   ; spawner

; 01
- D 0 - I - 0x019E12 06:9E02: 20        .byte $20   ; enemy settings
- D 0 - I - 0x019E13 06:9E03: 00        .byte con_0359_00   ; enemy 0359 ???
- D 0 - I - 0x019E14 06:9E04: 33 00     .word $0033 ; enemy pos_X
- D 0 - I - 0x019E16 06:9E06: 5D 00     .word $005D ; enemy pos_Y
- D 0 - I - 0x019E18 06:9E08: 00 00     .word $0000 ; enemy pos_Z
- D 0 - I - 0x019E1A 06:9E0A: 00        .byte $00   ; enemy 006A ???
- D 0 - I - 0x019E1B 06:9E0B: 27        .byte $27   ; enemy hp



off_02_9E0C_06_spawn_bolo_2:
- D 0 - I - 0x019E1C 06:9E0C: 09        .byte con_884D_script_emeny_spawn_at_door   ; 
- D 0 - I - 0x019E1D 06:9E0D: 00 00     .word $0000 ; X camera limit (min)
- D 0 - I - 0x019E1F 06:9E0F: 00 00     .word $0000 ; X camera limit (max)
- D 0 - I - 0x019E21 06:9E11: 00 00     .word $0000 ; Y camera limit (min)
- D 0 - I - 0x019E23 06:9E13: 00 00     .word $0000 ; Y camera limit (max)
- D 0 - I - 0x019E25 06:9E15: 00        .byte $00   ; 04B0 ???

- D 0 - I - 0x019E26 06:9E16: 46        .byte con_chr_bank + $46   ; 
- D 0 - I - 0x019E27 06:9E17: 06        .byte con_obj_bolo   ; 
- D 0 - I - 0x019E28 06:9E18: 01        .byte $01   ; enemy counter

- D 0 - I - 0x019E29 06:9E19: 02        .byte con_A6C3_draw_heli_blue_door   ; spawner

; 01
- D 0 - I - 0x019E2A 06:9E1A: 20        .byte $20   ; enemy settings
- D 0 - I - 0x019E2B 06:9E1B: 00        .byte con_0359_00   ; enemy 0359 ???
- D 0 - I - 0x019E2C 06:9E1C: 33 00     .word $0033 ; enemy pos_X
- D 0 - I - 0x019E2E 06:9E1E: 5D 00     .word $005D ; enemy pos_Y
- D 0 - I - 0x019E30 06:9E20: 00 00     .word $0000 ; enemy pos_Z
- D 0 - I - 0x019E32 06:9E22: 00        .byte $00   ; enemy 006A ???
- D 0 - I - 0x019E33 06:9E23: 27        .byte $27   ; enemy hp



off_02_9E24_07:
- D 0 - I - 0x019E34 06:9E24: 08        .byte con_884D_script_08   ; 



off_02_9E25_08:
- D 0 - I - 0x019E35 06:9E25: 81        .byte con_884D_script_81   ; 



off_03_9E26_00_spawn_roper:
- D 0 - I - 0x019E36 06:9E26: 00        .byte con_884D_script_00   ; 
- D 0 - I - 0x019E37 06:9E27: 00 00     .word $0000 ; X camera limit (min)
- D 0 - I - 0x019E39 06:9E29: 00 01     .word $0100 ; X camera limit (max)
- D 0 - I - 0x019E3B 06:9E2B: 00 00     .word $0000 ; Y camera limit (min)
- D 0 - I - 0x019E3D 06:9E2D: E0 01     .word $01E0 ; Y camera limit (max)
- D 0 - I - 0x019E3F 06:9E2F: 01        .byte $01   ; 04B0 ???

- D 0 - I - 0x019E40 06:9E30: 42        .byte con_chr_bank + $42   ; 
- D 0 - I - 0x019E41 06:9E31: 03        .byte con_obj_roper   ; 
- D 0 - I - 0x019E42 06:9E32: 04        .byte $04   ; enemy counter
; 01
- D 0 - I - 0x019E43 06:9E33: 80        .byte $80   ; enemy settings
- D 0 - I - 0x019E44 06:9E34: 1A        .byte con_obj_boomerang   ; enemy weapon
- D 0 - I - 0x019E45 06:9E35: 13        .byte $13   ; enemy hp
; 02
- D 0 - I - 0x019E46 06:9E36: 80        .byte $80   ; enemy settings
- D 0 - I - 0x019E47 06:9E37: 1A        .byte con_obj_boomerang   ; enemy weapon
- D 0 - I - 0x019E48 06:9E38: 13        .byte $13   ; enemy hp
; 03
- D 0 - I - 0x019E49 06:9E39: 80        .byte $80   ; enemy settings
- D 0 - I - 0x019E4A 06:9E3A: 1A        .byte con_obj_boomerang   ; enemy weapon
- D 0 - I - 0x019E4B 06:9E3B: 13        .byte $13   ; enemy hp
; 04
- - - - - - 0x019E4C 06:9E3C: 80        .byte $80   ; enemy settings
- - - - - - 0x019E4D 06:9E3D: 1A        .byte con_obj_boomerang   ; enemy weapon
- - - - - - 0x019E4E 06:9E3E: 13        .byte $13   ; enemy hp



off_03_9E3F_01_spawn_linda:
- D 0 - I - 0x019E4F 06:9E3F: 00        .byte con_884D_script_00   ; 
- D 0 - I - 0x019E50 06:9E40: 00 00     .word $0000 ; X camera limit (min)
- D 0 - I - 0x019E52 06:9E42: 00 01     .word $0100 ; X camera limit (max)
- D 0 - I - 0x019E54 06:9E44: 00 00     .word $0000 ; Y camera limit (min)
- D 0 - I - 0x019E56 06:9E46: E0 01     .word $01E0 ; Y camera limit (max)
- D 0 - I - 0x019E58 06:9E48: 01        .byte $01   ; 04B0 ???

- D 0 - I - 0x019E59 06:9E49: 44        .byte con_chr_bank + $44   ; 
- D 0 - I - 0x019E5A 06:9E4A: 04        .byte con_obj_linda   ; 
- D 0 - I - 0x019E5B 06:9E4B: 04        .byte $04   ; enemy counter
; 01
- D 0 - I - 0x019E5C 06:9E4C: 00        .byte $00   ; enemy settings
- D 0 - I - 0x019E5D 06:9E4D: 0F        .byte $0F   ; enemy hp
; 02
- D 0 - I - 0x019E5E 06:9E4E: 00        .byte $00   ; enemy settings
- D 0 - I - 0x019E5F 06:9E4F: 0F        .byte $0F   ; enemy hp
; 03
- D 0 - I - 0x019E60 06:9E50: 00        .byte $00   ; enemy settings
- D 0 - I - 0x019E61 06:9E51: 0F        .byte $0F   ; enemy hp
; 04
- - - - - - 0x019E62 06:9E52: 00        .byte $00   ; enemy settings
- - - - - - 0x019E63 06:9E53: 0F        .byte $0F   ; enemy hp



off_03_9E54_02:
- D 0 - I - 0x019E64 06:9E54: 07        .byte con_884D_script_07   ; 
- D 0 - I - 0x019E65 06:9E55: 80        .byte $80   ; 
- D 0 - I - 0x019E66 06:9E56: 00        .byte $00   ; 
- D 0 - I - 0x019E67 06:9E57: 01        .byte $01   ; 



off_03_9E58_03_open_elevator_door:
- D 0 - I - 0x019E68 06:9E58: 06        .byte con_884D_script_06   ; 
- D 0 - I - 0x019E69 06:9E59: 04        .byte con_A6C3_draw_enter_elevator_door   ; 



off_03_9E5A_04_enter_door:
- D 0 - I - 0x019E6A 06:9E5A: 04        .byte con_884D_script_enter_door   ; 
- D 0 - I - 0x019E6B 06:9E5B: 00        .byte con_9859_00   ; 



off_03_9E5C_05_close_elevator_door:
- D 0 - I - 0x019E6C 06:9E5C: 0A        .byte con_884D_script_0A   ; 
- D 0 - I - 0x019E6D 06:9E5D: 04        .byte con_A6C3_draw_enter_elevator_door   ; 



off_03_9E5E_06_elevator_going_down:
- D 0 - I - 0x019E6E 06:9E5E: 05        .byte con_884D_script_elevator_going_down   ; 



off_03_9E5F_07_spawn_right_arm:
- D 0 - I - 0x019E6F 06:9E5F: 00        .byte con_884D_script_00   ; 
- D 0 - I - 0x019E70 06:9E60: FF 00     .word $00FF ; X camera limit (min)
- D 0 - I - 0x019E72 06:9E62: FF 00     .word $00FF ; X camera limit (max)
- D 0 - I - 0x019E74 06:9E64: 00 00     .word $0000 ; Y camera limit (min)
- D 0 - I - 0x019E76 06:9E66: 10 00     .word $0010 ; Y camera limit (max)
- D 0 - I - 0x019E78 06:9E68: 04        .byte $04   ; 04B0 ???

- D 0 - I - 0x019E79 06:9E69: 54        .byte con_chr_bank + $54   ; 
- D 0 - I - 0x019E7A 06:9E6A: 0A        .byte con_obj_right_arm   ; 
- D 0 - I - 0x019E7B 06:9E6B: 04        .byte $04   ; enemy counter
; 01
- D 0 - I - 0x019E7C 06:9E6C: 00        .byte $00   ; enemy settings
- D 0 - I - 0x019E7D 06:9E6D: 17        .byte $17   ; enemy hp
; 02
- D 0 - I - 0x019E7E 06:9E6E: 00        .byte $00   ; enemy settings
- D 0 - I - 0x019E7F 06:9E6F: 17        .byte $17   ; enemy hp
; 03
- D 0 - I - 0x019E80 06:9E70: 00        .byte $00   ; enemy settings
- D 0 - I - 0x019E81 06:9E71: 17        .byte $17   ; enemy hp
; 04
- - - - - - 0x019E82 06:9E72: 00        .byte $00   ; enemy settings
- - - - - - 0x019E83 06:9E73: 17        .byte $17   ; enemy hp



off_03_9E74_08_spawn_abore:
- D 0 - I - 0x019E84 06:9E74: 00        .byte con_884D_script_00   ; 
- D 0 - I - 0x019E85 06:9E75: FF 00     .word $00FF ; X camera limit (min)
- D 0 - I - 0x019E87 06:9E77: FF 00     .word $00FF ; X camera limit (max)
- D 0 - I - 0x019E89 06:9E79: 00 00     .word $0000 ; Y camera limit (min)
- D 0 - I - 0x019E8B 06:9E7B: 10 00     .word $0010 ; Y camera limit (max)
- D 0 - I - 0x019E8D 06:9E7D: 04        .byte $04   ; 04B0 ???

- D 0 - I - 0x019E8E 06:9E7E: 52        .byte con_chr_bank + $52   ; 
- D 0 - I - 0x019E8F 06:9E7F: 08        .byte con_obj_abore   ; 
- D 0 - I - 0x019E90 06:9E80: 01        .byte $01   ; enemy counter
; 01
- D 0 - I - 0x019E91 06:9E81: 00        .byte $00   ; enemy settings
- D 0 - I - 0x019E92 06:9E82: 37        .byte $37   ; enemy hp



off_03_9E83_09:
- D 0 - I - 0x019E93 06:9E83: 80        .byte con_884D_script_80   ; 



off_03_9E84_0A_cursor:
- D 0 - I - 0x019E94 06:9E84: 01        .byte con_884D_script_hand_cursor   ; 
- D 0 - I - 0x019E95 06:9E85: 00 01     .word $0100 ; X camera limit (min)
- D 0 - I - 0x019E97 06:9E87: 00 03     .word $0300 ; X camera limit (max)
- D 0 - I - 0x019E99 06:9E89: 00 00     .word $0000 ; Y camera limit (min)
- D 0 - I - 0x019E9B 06:9E8B: 10 00     .word $0010 ; Y camera limit (max)
- D 0 - I - 0x019E9D 06:9E8D: 05        .byte $05   ; 04B0 ???

- D 0 - I - 0x019E9E 06:9E8E: 03        .byte $03   ; cursor direction (right)



off_03_9E8F_0B:
- D 0 - I - 0x019E9F 06:9E8F: 02        .byte con_884D_script_02   ; 
- D 0 - I - 0x019EA0 06:9E90: 00        .byte $00   ; 
- D 0 - I - 0x019EA1 06:9E91: 03        .byte $03   ; 
- D 0 - I - 0x019EA2 06:9E92: 00        .byte $00   ; 
- D 0 - I - 0x019EA3 06:9E93: 00        .byte $00   ; 



off_03_9E94_0C:
- D 0 - I - 0x019EA4 06:9E94: 00        .byte con_884D_script_00   ; 
- D 0 - I - 0x019EA5 06:9E95: 00 03     .word $0300 ; X camera limit (min)
- D 0 - I - 0x019EA7 06:9E97: 00 03     .word $0300 ; X camera limit (max)
- D 0 - I - 0x019EA9 06:9E99: 00 00     .word $0000 ; Y camera limit (min)
- D 0 - I - 0x019EAB 06:9E9B: 00 00     .word $0000 ; Y camera limit (max)
- D 0 - I - 0x019EAD 06:9E9D: 00        .byte $00   ; 04B0 ???

- D 0 - I - 0x019EAE 06:9E9E: 44        .byte con_chr_bank + $44   ; 
- D 0 - I - 0x019EAF 06:9E9F: 04        .byte con_obj_linda   ; 
- D 0 - I - 0x019EB0 06:9EA0: 04        .byte $04   ; enemy counter
; 01
- D 0 - I - 0x019EB1 06:9EA1: E0        .byte $E0   ; enemy settings
- D 0 - I - 0x019EB2 06:9EA2: 14        .byte con_obj_grenade   ; enemy weapon
- D 0 - I - 0x019EB3 06:9EA3: 07        .byte con_state_fall_from_platform   ; enemy state
- D 0 - I - 0x019EB4 06:9EA4: 02        .byte con_0359_02   ; enemy 0359 ???
- D 0 - I - 0x019EB5 06:9EA5: 96 03     .word $0396 ; enemy pos_X
- D 0 - I - 0x019EB7 06:9EA7: 50 00     .word $0050 ; enemy pos_Y
- D 0 - I - 0x019EB9 06:9EA9: 80 00     .word $0080 ; enemy pos_Z
- D 0 - I - 0x019EBB 06:9EAB: 00        .byte $00   ; enemy 006A ???
- D 0 - I - 0x019EBC 06:9EAC: 0F        .byte $0F   ; enemy hp
; 02
- D 0 - I - 0x019EBD 06:9EAD: 60        .byte $60   ; enemy settings
- D 0 - I - 0x019EBE 06:9EAE: 07        .byte con_state_fall_from_platform   ; enemy state
- D 0 - I - 0x019EBF 06:9EAF: 02        .byte con_0359_02   ; enemy 0359 ???
- D 0 - I - 0x019EC0 06:9EB0: 80 03     .word $0380 ; enemy pos_X
- D 0 - I - 0x019EC2 06:9EB2: 50 00     .word $0050 ; enemy pos_Y
- D 0 - I - 0x019EC4 06:9EB4: B0 00     .word $00B0 ; enemy pos_Z
- D 0 - I - 0x019EC6 06:9EB6: 00        .byte $00   ; enemy 006A ???
- D 0 - I - 0x019EC7 06:9EB7: 0F        .byte $0F   ; enemy hp
; 03
- D 0 - I - 0x019EC8 06:9EB8: E0        .byte $E0   ; enemy settings
- D 0 - I - 0x019EC9 06:9EB9: 14        .byte con_obj_grenade   ; enemy weapon
- D 0 - I - 0x019ECA 06:9EBA: 07        .byte con_state_fall_from_platform   ; enemy state
- D 0 - I - 0x019ECB 06:9EBB: 02        .byte con_0359_02   ; enemy 0359 ???
- D 0 - I - 0x019ECC 06:9EBC: 96 03     .word $0396 ; enemy pos_X
- D 0 - I - 0x019ECE 06:9EBE: 50 00     .word $0050 ; enemy pos_Y
- D 0 - I - 0x019ED0 06:9EC0: 80 00     .word $0080 ; enemy pos_Z
- D 0 - I - 0x019ED2 06:9EC2: 00        .byte $00   ; enemy 006A ???
- D 0 - I - 0x019ED3 06:9EC3: 0F        .byte $0F   ; enemy hp
; 04
- - - - - - 0x019ED4 06:9EC4: 60        .byte $60   ; enemy settings
- - - - - - 0x019ED5 06:9EC5: 07        .byte con_state_fall_from_platform   ; enemy state
- - - - - - 0x019ED6 06:9EC6: 02        .byte con_0359_02   ; enemy 0359 ???
- - - - - - 0x019ED7 06:9EC7: 90 03     .word $0390 ; enemy pos_X
- - - - - - 0x019ED9 06:9EC9: 50 00     .word $0050 ; enemy pos_Y
- - - - - - 0x019EDB 06:9ECB: B0 00     .word $00B0 ; enemy pos_Z
- - - - - - 0x019EDD 06:9ECD: 00        .byte $00   ; enemy 006A ???
- - - - - - 0x019EDE 06:9ECE: 0F        .byte $0F   ; enemy hp



off_03_9ECF_0D_spawn_williams:
- D 0 - I - 0x019EDF 06:9ECF: 00        .byte con_884D_script_00   ; 
- D 0 - I - 0x019EE0 06:9ED0: 00 03     .word $0300 ; X camera limit (min)
- D 0 - I - 0x019EE2 06:9ED2: 00 03     .word $0300 ; X camera limit (max)
- D 0 - I - 0x019EE4 06:9ED4: 00 00     .word $0000 ; Y camera limit (min)
- D 0 - I - 0x019EE6 06:9ED6: 00 00     .word $0000 ; Y camera limit (max)
- D 0 - I - 0x019EE8 06:9ED8: 00        .byte $00   ; 04B0 ???

- D 0 - I - 0x019EE9 06:9ED9: 4E        .byte con_chr_bank + $4E   ; 
- D 0 - I - 0x019EEA 06:9EDA: 02        .byte con_obj_williams   ; 
- D 0 - I - 0x019EEB 06:9EDB: 04        .byte $04   ; enemy counter
; 01
- D 0 - I - 0x019EEC 06:9EDC: E0        .byte $E0   ; enemy settings
- D 0 - I - 0x019EED 06:9EDD: 12        .byte con_obj_knife   ; enemy weapon
- D 0 - I - 0x019EEE 06:9EDE: 07        .byte con_state_fall_from_platform   ; enemy state
- D 0 - I - 0x019EEF 06:9EDF: 02        .byte con_0359_02   ; enemy 0359 ???
- D 0 - I - 0x019EF0 06:9EE0: 96 03     .word $0396 ; enemy pos_X
- D 0 - I - 0x019EF2 06:9EE2: 50 00     .word $0050 ; enemy pos_Y
- D 0 - I - 0x019EF4 06:9EE4: 80 00     .word $0080 ; enemy pos_Z
- D 0 - I - 0x019EF6 06:9EE6: 00        .byte $00   ; enemy 006A ???
- D 0 - I - 0x019EF7 06:9EE7: 1B        .byte $1B   ; enemy hp
; 02
- D 0 - I - 0x019EF8 06:9EE8: 60        .byte $60   ; enemy settings
- D 0 - I - 0x019EF9 06:9EE9: 07        .byte con_state_fall_from_platform   ; enemy state
- D 0 - I - 0x019EFA 06:9EEA: 02        .byte con_0359_02   ; enemy 0359 ???
- D 0 - I - 0x019EFB 06:9EEB: 80 03     .word $0380 ; enemy pos_X
- D 0 - I - 0x019EFD 06:9EED: 50 00     .word $0050 ; enemy pos_Y
- D 0 - I - 0x019EFF 06:9EEF: B0 00     .word $00B0 ; enemy pos_Z
- D 0 - I - 0x019F01 06:9EF1: 00        .byte $00   ; enemy 006A ???
- D 0 - I - 0x019F02 06:9EF2: 1B        .byte $1B   ; enemy hp
; 03
- D 0 - I - 0x019F03 06:9EF3: E0        .byte $E0   ; enemy settings
- D 0 - I - 0x019F04 06:9EF4: 12        .byte con_obj_knife   ; enemy weapon
- D 0 - I - 0x019F05 06:9EF5: 07        .byte con_state_fall_from_platform   ; enemy state
- D 0 - I - 0x019F06 06:9EF6: 02        .byte con_0359_02   ; enemy 0359 ???
- D 0 - I - 0x019F07 06:9EF7: 90 03     .word $0390 ; enemy pos_X
- D 0 - I - 0x019F09 06:9EF9: 50 00     .word $0050 ; enemy pos_Y
- D 0 - I - 0x019F0B 06:9EFB: 80 00     .word $0080 ; enemy pos_Z
- D 0 - I - 0x019F0D 06:9EFD: 00        .byte $00   ; enemy 006A ???
- D 0 - I - 0x019F0E 06:9EFE: 1B        .byte $1B   ; enemy hp
; 04
- - - - - - 0x019F0F 06:9EFF: E0        .byte $E0   ; enemy settings
- - - - - - 0x019F10 06:9F00: 12        .byte con_obj_knife   ; enemy weapon
- - - - - - 0x019F11 06:9F01: 07        .byte con_state_fall_from_platform   ; enemy state
- - - - - - 0x019F12 06:9F02: 02        .byte con_0359_02   ; enemy 0359 ???
- - - - - - 0x019F13 06:9F03: 80 03     .word $0380 ; enemy pos_X
- - - - - - 0x019F15 06:9F05: 50 00     .word $0050 ; enemy pos_Y
- - - - - - 0x019F17 06:9F07: B0 00     .word $00B0 ; enemy pos_Z
- - - - - - 0x019F19 06:9F09: 00        .byte $00   ; enemy 006A ???
- - - - - - 0x019F1A 06:9F0A: 1B        .byte $1B   ; enemy hp



off_03_9F0B_0E:
off_03_9F0B_0F:
- D 0 - I - 0x019F1B 06:9F0B: 80        .byte con_884D_script_80   ; 



off_03_9F0C_10_spawn_bolo:
- D 0 - I - 0x019F1C 06:9F0C: 00        .byte con_884D_script_00   ; 
- D 0 - I - 0x019F1D 06:9F0D: 00 03     .word $0300 ; X camera limit (min)
- D 0 - I - 0x019F1F 06:9F0F: 00 03     .word $0300 ; X camera limit (max)
- D 0 - I - 0x019F21 06:9F11: 00 00     .word $0000 ; Y camera limit (min)
- D 0 - I - 0x019F23 06:9F13: 00 00     .word $0000 ; Y camera limit (max)
- D 0 - I - 0x019F25 06:9F15: 00        .byte $00   ; 04B0 ???

- D 0 - I - 0x019F26 06:9F16: 46        .byte con_chr_bank + $46   ; 
- D 0 - I - 0x019F27 06:9F17: 06        .byte con_obj_bolo   ; 
- D 0 - I - 0x019F28 06:9F18: 01        .byte $01   ; enemy counter
; 01
- D 0 - I - 0x019F29 06:9F19: 00        .byte $00   ; enemy settings
- D 0 - I - 0x019F2A 06:9F1A: 37        .byte $37   ; enemy hp



off_03_9F1B_11:
- D 0 - I - 0x019F2B 06:9F1B: 06        .byte con_884D_script_06   ; 
- D 0 - I - 0x019F2C 06:9F1C: 06        .byte con_A6C3_draw_final_door_03   ; 



off_03_9F1D_12_enter_door:
- D 0 - I - 0x019F2D 06:9F1D: 04        .byte con_884D_script_enter_door   ; 
- D 0 - I - 0x019F2E 06:9F1E: 01        .byte con_9859_01   ; 



off_03_9F1F_13:
- D 0 - I - 0x019F2F 06:9F1F: 0A        .byte con_884D_script_0A   ; 
- D 0 - I - 0x019F30 06:9F20: 06        .byte con_A6C3_draw_final_door_03   ; 



off_03_9F21_14:
- D 0 - I - 0x019F31 06:9F21: 81        .byte con_884D_script_81   ; 



off_04_9F22_00:
- D 0 - I - 0x019F32 06:9F22: 03        .byte con_884D_script_03   ; 
- D 0 - I - 0x019F33 06:9F23: 00 00     .word $0000 ; X camera limit (min)
- D 0 - I - 0x019F35 06:9F25: 00 00     .word $0000 ; X camera limit (max)
- D 0 - I - 0x019F37 06:9F27: 00 00     .word $0000 ; Y camera limit (min)
- D 0 - I - 0x019F39 06:9F29: 00 00     .word $0000 ; Y camera limit (max)
- D 0 - I - 0x019F3B 06:9F2B: 00        .byte $00   ; 04B0 ???

- D 0 - I - 0x019F3C 06:9F2C: 46        .byte con_chr_bank + $46   ; 
- D 0 - I - 0x019F3D 06:9F2D: 06        .byte con_obj_bolo   ; 
- - - - - - 0x019F3E 06:9F2E: 00        .byte $00   ; 



off_04_9F2F_01:
- D 0 - I - 0x019F3F 06:9F2F: 10        .byte con_884D_script_10   ; 



off_04_9F30_02_enter_door:
- D 0 - I - 0x019F40 06:9F30: 04        .byte con_884D_script_enter_door   ; 
- D 0 - I - 0x019F41 06:9F31: 02        .byte con_9859_02   ; 



off_04_9F32_03:
- D 0 - I - 0x019F42 06:9F32: 08        .byte con_884D_script_08   ; 



off_04_9F33_04:
- D 0 - I - 0x019F43 06:9F33: 81        .byte con_884D_script_81   ; 



off_05_9F34_00:
- D 0 - I - 0x019F44 06:9F34: 00        .byte con_884D_script_00   ; 
- D 0 - I - 0x019F45 06:9F35: 00 00     .word $0000 ; X camera limit (min)
- D 0 - I - 0x019F47 06:9F37: 00 00     .word $0000 ; X camera limit (max)
- D 0 - I - 0x019F49 06:9F39: F0 00     .word $00F0 ; Y camera limit (min)
- D 0 - I - 0x019F4B 06:9F3B: F0 00     .word $00F0 ; Y camera limit (max)
- D 0 - I - 0x019F4D 06:9F3D: 00        .byte $00   ; 04B0 ???

- D 0 - I - 0x019F4E 06:9F3E: 44        .byte con_chr_bank + $44   ; 
- D 0 - I - 0x019F4F 06:9F3F: 04        .byte con_obj_linda   ; 
- D 0 - I - 0x019F50 06:9F40: 04        .byte $04   ; enemy counter
; 01
- D 0 - I - 0x019F51 06:9F41: 80        .byte $80   ; enemy settings
- D 0 - I - 0x019F52 06:9F42: 15        .byte con_obj_chain_whip   ; enemy weapon
- D 0 - I - 0x019F53 06:9F43: 0B        .byte $0B   ; enemy hp
; 02
- D 0 - I - 0x019F54 06:9F44: 00        .byte $00   ; enemy settings
- D 0 - I - 0x019F55 06:9F45: 0B        .byte $0B   ; enemy hp
; 03
- D 0 - I - 0x019F56 06:9F46: 80        .byte $80   ; enemy settings
- D 0 - I - 0x019F57 06:9F47: 15        .byte con_obj_chain_whip   ; enemy weapon
- D 0 - I - 0x019F58 06:9F48: 0B        .byte $0B   ; enemy hp
; 04
- - - - - - 0x019F59 06:9F49: 00        .byte $00   ; enemy settings
- - - - - - 0x019F5A 06:9F4A: 0B        .byte $0B   ; enemy hp



off_05_9F4B_01:
- D 0 - I - 0x019F5B 06:9F4B: 11        .byte con_884D_script_11   ; 



off_05_9F4C_02_cursor:
- D 0 - I - 0x019F5C 06:9F4C: 01        .byte con_884D_script_hand_cursor   ; 
- D 0 - I - 0x019F5D 06:9F4D: 00 00     .word $0000 ; X camera limit (min)
- D 0 - I - 0x019F5F 06:9F4F: BF 00     .word $00BF ; X camera limit (max)
- D 0 - I - 0x019F61 06:9F51: 90 00     .word $0090 ; Y camera limit (min)
- D 0 - I - 0x019F63 06:9F53: F0 00     .word $00F0 ; Y camera limit (max)
- D 0 - I - 0x019F65 06:9F55: 05        .byte $05   ; 04B0 ???

- D 0 - I - 0x019F66 06:9F56: 03        .byte $03   ; cursor direction (right)



off_05_9F57_03_spawn_roper:
- D 0 - I - 0x019F67 06:9F57: 00        .byte con_884D_script_00   ; 
- D 0 - I - 0x019F68 06:9F58: 00 00     .word $0000 ; 
- D 0 - I - 0x019F6A 06:9F5A: BF 00     .word $00BF ; 
- D 0 - I - 0x019F6C 06:9F5C: 90 00     .word $0090 ; 
- D 0 - I - 0x019F6E 06:9F5E: F0 00     .word $00F0 ; 
- D 0 - I - 0x019F70 06:9F60: 05        .byte $05   ; 
- D 0 - I - 0x019F71 06:9F61: 42        .byte con_chr_bank + $42   ; 
- D 0 - I - 0x019F72 06:9F62: 03        .byte con_obj_roper   ; 
- D 0 - I - 0x019F73 06:9F63: 01        .byte $01   ; enemy counter
; 01
- D 0 - I - 0x019F74 06:9F64: 20        .byte $20   ; enemy settings
- D 0 - I - 0x019F75 06:9F65: 01        .byte con_0359_01   ; enemy 0359 ???
- D 0 - I - 0x019F76 06:9F66: 70 01     .word $0170 ; enemy pos_X
- D 0 - I - 0x019F78 06:9F68: 64 00     .word $0064 ; enemy pos_Y
- D 0 - I - 0x019F7A 06:9F6A: A0 00     .word $00A0 ; enemy pos_Z
- D 0 - I - 0x019F7C 06:9F6C: 00        .byte $00   ; enemy 006A ???
- D 0 - I - 0x019F7D 06:9F6D: 01        .byte $01   ; enemy hp



off_05_9F6E_04_cursor:
- D 0 - I - 0x019F7E 06:9F6E: 01        .byte con_884D_script_hand_cursor   ; 
- D 0 - I - 0x019F7F 06:9F6F: 00 00     .word $0000 ; X camera limit (min)
- D 0 - I - 0x019F81 06:9F71: BF 00     .word $00BF ; X camera limit (max)
- D 0 - I - 0x019F83 06:9F73: 00 00     .word $0000 ; Y camera limit (min)
- D 0 - I - 0x019F85 06:9F75: F0 00     .word $00F0 ; Y camera limit (max)
- D 0 - I - 0x019F87 06:9F77: 05        .byte $05   ; 04B0 ???

- D 0 - I - 0x019F88 06:9F78: 01        .byte $01   ; cursor direction (down)



off_05_9F79_05:
- D 0 - I - 0x019F89 06:9F79: 07        .byte con_884D_script_07   ; 
- D 0 - I - 0x019F8A 06:9F7A: 04        .byte $04   ; 
- D 0 - I - 0x019F8B 06:9F7B: 14        .byte $14   ; 
- D 0 - I - 0x019F8C 06:9F7C: 00        .byte $00   ; 



off_05_9F7D_06:
- D 0 - I - 0x019F8D 06:9F7D: 00        .byte con_884D_script_00   ; 
- D 0 - I - 0x019F8E 06:9F7E: 75 00     .word $0075 ; X camera limit (min)
- D 0 - I - 0x019F90 06:9F80: BF 00     .word $00BF ; X camera limit (max)
- D 0 - I - 0x019F92 06:9F82: 00 00     .word $0000 ; Y camera limit (min)
- D 0 - I - 0x019F94 06:9F84: 16 00     .word $0016 ; Y camera limit (max)
- D 0 - I - 0x019F96 06:9F86: 07        .byte $07   ; 04B0 ???

- D 0 - I - 0x019F97 06:9F87: 44        .byte con_chr_bank + $44   ; 
- D 0 - I - 0x019F98 06:9F88: 04        .byte con_obj_linda   ; 
- D 0 - I - 0x019F99 06:9F89: 04        .byte $04   ; enemy counter
; 01
- D 0 - I - 0x019F9A 06:9F8A: 20        .byte $20   ; enemy settings
- D 0 - I - 0x019F9B 06:9F8B: 02        .byte con_0359_02   ; enemy 0359 ???
- D 0 - I - 0x019F9C 06:9F8C: 7A 00     .word $007A ; enemy pos_X
- D 0 - I - 0x019F9E 06:9F8E: 20 00     .word $0020 ; enemy pos_Y
- D 0 - I - 0x019FA0 06:9F90: 30 00     .word $0030 ; enemy pos_Z
- D 0 - I - 0x019FA2 06:9F92: 00        .byte $00   ; enemy 006A ???
- D 0 - I - 0x019FA3 06:9F93: 0B        .byte $0B   ; enemy hp
; 02
- D 0 - I - 0x019FA4 06:9F94: A0        .byte $A0   ; enemy settings
- D 0 - I - 0x019FA5 06:9F95: 15        .byte con_obj_chain_whip   ; enemy weapon
- D 0 - I - 0x019FA6 06:9F96: 02        .byte con_0359_02   ; enemy 0359 ???
- D 0 - I - 0x019FA7 06:9F97: 70 00     .word $0070 ; enemy pos_X
- D 0 - I - 0x019FA9 06:9F99: 20 00     .word $0020 ; enemy pos_Y
- D 0 - I - 0x019FAB 06:9F9B: 30 00     .word $0030 ; enemy pos_Z
- D 0 - I - 0x019FAD 06:9F9D: 00        .byte $00   ; enemy 006A ???
- D 0 - I - 0x019FAE 06:9F9E: 0B        .byte $0B   ; enemy hp
; 03
- D 0 - I - 0x019FAF 06:9F9F: 20        .byte $20   ; enemy settings
- D 0 - I - 0x019FB0 06:9FA0: 02        .byte con_0359_02   ; enemy 0359 ???
- D 0 - I - 0x019FB1 06:9FA1: 75 00     .word $0075 ; enemy pos_X
- D 0 - I - 0x019FB3 06:9FA3: 20 00     .word $0020 ; enemy pos_Y
- D 0 - I - 0x019FB5 06:9FA5: 30 00     .word $0030 ; enemy pos_Z
- D 0 - I - 0x019FB7 06:9FA7: 00        .byte $00   ; enemy 006A ???
- D 0 - I - 0x019FB8 06:9FA8: 0B        .byte $0B   ; enemy hp
; 04
- - - - - - 0x019FB9 06:9FA9: A0        .byte $A0   ; enemy settings
- - - - - - 0x019FBA 06:9FAA: 15        .byte con_obj_chain_whip   ; enemy weapon
- - - - - - 0x019FBB 06:9FAB: 02        .byte con_0359_02   ; enemy 0359 ???
- - - - - - 0x019FBC 06:9FAC: 7A 00     .word $007A ; enemy pos_X
- - - - - - 0x019FBE 06:9FAE: 20 00     .word $0020 ; enemy pos_Y
- - - - - - 0x019FC0 06:9FB0: 30 00     .word $0030 ; enemy pos_Z
- - - - - - 0x019FC2 06:9FB2: 00        .byte $00   ; enemy 006A ???
- - - - - - 0x019FC3 06:9FB3: 0B        .byte $0B   ; enemy hp



off_05_9FB4_07_cursor:
- D 0 - I - 0x019FC4 06:9FB4: 01        .byte con_884D_script_hand_cursor   ; 
- D 0 - I - 0x019FC5 06:9FB5: 00 00     .word $0000 ; X camera limit (min)
- D 0 - I - 0x019FC7 06:9FB7: FF 01     .word $01FF ; X camera limit (max)
- D 0 - I - 0x019FC9 06:9FB9: 00 00     .word $0000 ; Y camera limit (min)
- D 0 - I - 0x019FCB 06:9FBB: 16 00     .word $0016 ; Y camera limit (max)
- D 0 - I - 0x019FCD 06:9FBD: 0D        .byte $0D   ; 04B0 ???

- D 0 - I - 0x019FCE 06:9FBE: 03        .byte $03   ; cursor direction (right)



off_05_9FBF_08:
- D 0 - I - 0x019FCF 06:9FBF: 07        .byte con_884D_script_07   ; 
- D 0 - I - 0x019FD0 06:9FC0: 80        .byte $80   ; 
- D 0 - I - 0x019FD1 06:9FC1: C0        .byte $C0   ; 
- D 0 - I - 0x019FD2 06:9FC2: 01        .byte $01   ; 



off_05_9FC3_09_spawn_roper:
- D 0 - I - 0x019FD3 06:9FC3: 00        .byte con_884D_script_00   ; 
- D 0 - I - 0x019FD4 06:9FC4: 00 00     .word $0000 ; X camera limit (min)
- D 0 - I - 0x019FD6 06:9FC6: FF 01     .word $01FF ; X camera limit (max)
- D 0 - I - 0x019FD8 06:9FC8: 00 00     .word $0000 ; Y camera limit (min)
- D 0 - I - 0x019FDA 06:9FCA: 30 00     .word $0030 ; Y camera limit (max)
- D 0 - I - 0x019FDC 06:9FCC: 0D        .byte $0D   ; 04B0 ???

- D 0 - I - 0x019FDD 06:9FCD: 42        .byte con_chr_bank + $42   ; 
- D 0 - I - 0x019FDE 06:9FCE: 03        .byte con_obj_roper   ; 
- D 0 - I - 0x019FDF 06:9FCF: 04        .byte $04   ; enemy counter
; 01
- D 0 - I - 0x019FE0 06:9FD0: E0        .byte $E0   ; enemy settings
- D 0 - I - 0x019FE1 06:9FD1: 1A        .byte con_obj_boomerang   ; enemy weapon
- D 0 - I - 0x019FE2 06:9FD2: 04        .byte con_state_ladder_climb_idle   ; enemy state
- D 0 - I - 0x019FE3 06:9FD3: 08        .byte con_0359_08   ; enemy 0359 ???
- D 0 - I - 0x019FE4 06:9FD4: AA 02     .word $02AA ; enemy pos_X
- D 0 - I - 0x019FE6 06:9FD6: 70 00     .word $0070 ; enemy pos_Y
- D 0 - I - 0x019FE8 06:9FD8: 90 00     .word $0090 ; enemy pos_Z
- D 0 - I - 0x019FEA 06:9FDA: 03        .byte $03   ; enemy 006A ???
- D 0 - I - 0x019FEB 06:9FDB: 17        .byte $17   ; enemy hp
; 02
- D 0 - I - 0x019FEC 06:9FDC: E0        .byte $E0   ; enemy settings
- D 0 - I - 0x019FED 06:9FDD: 1A        .byte con_obj_boomerang   ; enemy weapon
- D 0 - I - 0x019FEE 06:9FDE: 04        .byte con_state_ladder_climb_idle   ; enemy state
- D 0 - I - 0x019FEF 06:9FDF: 08        .byte con_0359_08   ; enemy 0359 ???
- D 0 - I - 0x019FF0 06:9FE0: D9 02     .word $02D9 ; enemy pos_X
- D 0 - I - 0x019FF2 06:9FE2: 70 00     .word $0070 ; enemy pos_Y
- D 0 - I - 0x019FF4 06:9FE4: 90 00     .word $0090 ; enemy pos_Z
- D 0 - I - 0x019FF6 06:9FE6: 03        .byte $03   ; enemy 006A ???
- D 0 - I - 0x019FF7 06:9FE7: 17        .byte $17   ; enemy hp
; 03
- D 0 - I - 0x019FF8 06:9FE8: E0        .byte $E0   ; enemy settings
- D 0 - I - 0x019FF9 06:9FE9: 1A        .byte con_obj_boomerang   ; enemy weapon
- D 0 - I - 0x019FFA 06:9FEA: 04        .byte con_state_ladder_climb_idle   ; enemy state
- D 0 - I - 0x019FFB 06:9FEB: 08        .byte con_0359_08   ; enemy 0359 ???
- D 0 - I - 0x019FFC 06:9FEC: AA 02     .word $02AA ; enemy pos_X
- D 0 - I - 0x019FFE 06:9FEE: 70 00     .word $0070 ; enemy pos_Y
- D 0 - I - 0x01A000 06:9FF0: 90 00     .word $0090 ; enemy pos_Z
- D 0 - I - 0x01A002 06:9FF2: 00        .byte $00   ; enemy 006A ???
- D 0 - I - 0x01A003 06:9FF3: 17        .byte $17   ; enemy hp
; 04
- - - - - - 0x01A004 06:9FF4: E0        .byte $E0   ; enemy settings
- - - - - - 0x01A005 06:9FF5: 1A        .byte con_obj_boomerang   ; enemy weapon
- - - - - - 0x01A006 06:9FF6: 04        .byte con_state_ladder_climb_idle   ; enemy state
- - - - - - 0x01A007 06:9FF7: 08        .byte con_0359_08   ; enemy 0359 ???
- - - - - - 0x01A008 06:9FF8: D9 02     .word $02D9 ; enemy pos_X
- - - - - - 0x01A00A 06:9FFA: 70 00     .word $0070 ; enemy pos_Y
- - - - - - 0x01A00C 06:9FFC: 90 00     .word $0090 ; enemy pos_Z
- - - - - - 0x01A00E 06:9FFE: 00        .byte $00   ; enemy 006A ???
- - - - - - 0x01A00F 06:9FFF: 17        .byte $17   ; enemy hp



off_05_A000_0A_cursor:
- D 1 - - - 0x01A010 06:A000: 01        .byte con_884D_script_hand_cursor   ; 
- D 1 - I - 0x01A011 06:A001: 00 00     .word $0000 ; X camera limit (min)
- D 1 - I - 0x01A013 06:A003: FF 01     .word $01FF ; X camera limit (max)
- D 1 - I - 0x01A015 06:A005: 00 00     .word $0000 ; Y camera limit (min)
- D 1 - I - 0x01A017 06:A007: F0 00     .word $00F0 ; Y camera limit (max)
- D 1 - I - 0x01A019 06:A009: 0D        .byte $0D   ; 04B0 ???

- D 1 - I - 0x01A01A 06:A00A: 00        .byte $00   ; cursor direction (up)



off_05_A00B_0B:
- D 1 - I - 0x01A01B 06:A00B: 07        .byte con_884D_script_07   ; 
- D 1 - I - 0x01A01C 06:A00C: 08        .byte $08   ; 
- D 1 - I - 0x01A01D 06:A00D: A4        .byte $A4   ; 
- D 1 - I - 0x01A01E 06:A00E: 00        .byte $00   ; 



off_05_A00F_0C_spawn_roper:
- D 1 - I - 0x01A01F 06:A00F: 09        .byte con_884D_script_emeny_spawn_at_door   ; 
- D 1 - I - 0x01A020 06:A010: 00 00     .word $0000 ; X camera limit (min)
- D 1 - I - 0x01A022 06:A012: FF 01     .word $01FF ; X camera limit (max)
- D 1 - I - 0x01A024 06:A014: 00 00     .word $0000 ; Y camera limit (min)
- D 1 - I - 0x01A026 06:A016: F0 00     .word $00F0 ; Y camera limit (max)
- D 1 - I - 0x01A028 06:A018: 09        .byte $09   ; 04B0 ???

- D 1 - I - 0x01A029 06:A019: 64        .byte con_chr_bank + $64   ; 
- D 1 - I - 0x01A02A 06:A01A: 03        .byte con_obj_roper   ; 
- D 1 - I - 0x01A02B 06:A01B: 04        .byte $04   ; enemy counter

- D 1 - I - 0x01A02C 06:A01C: 08        .byte con_A6C3_draw_wooden_house_door   ; spawner

; 01
- D 1 - I - 0x01A02D 06:A01D: A0        .byte $A0   ; enemy settings
- D 1 - I - 0x01A02E 06:A01E: 16        .byte con_obj_flame_grenades   ; enemy weapon
- D 1 - I - 0x01A02F 06:A01F: 09        .byte con_0359_09   ; enemy 0359 ???
- D 1 - I - 0x01A030 06:A020: 49 02     .word $0249 ; enemy pos_X
- D 1 - I - 0x01A032 06:A022: 70 00     .word $0070 ; enemy pos_Y
- D 1 - I - 0x01A034 06:A024: 10 01     .word $0110 ; enemy pos_Z
- D 1 - I - 0x01A036 06:A026: 00        .byte $00   ; enemy 006A ???
- D 1 - I - 0x01A037 06:A027: 0F        .byte $0F   ; enemy hp
; 02
- D 1 - I - 0x01A038 06:A028: 20        .byte $20   ; enemy settings
- D 1 - I - 0x01A039 06:A029: 09        .byte con_0359_09   ; enemy 0359 ???
- D 1 - I - 0x01A03A 06:A02A: 3C 02     .word $023C ; enemy pos_X
- D 1 - I - 0x01A03C 06:A02C: 70 00     .word $0070 ; enemy pos_Y
- D 1 - I - 0x01A03E 06:A02E: 10 01     .word $0110 ; enemy pos_Z
- D 1 - I - 0x01A040 06:A030: 00        .byte $00   ; enemy 006A ???
- D 1 - I - 0x01A041 06:A031: 0F        .byte $0F   ; enemy hp
; 03
- D 1 - I - 0x01A042 06:A032: A0        .byte $A0   ; enemy settings
- D 1 - I - 0x01A043 06:A033: 16        .byte con_obj_flame_grenades   ; enemy weapon
- D 1 - I - 0x01A044 06:A034: 09        .byte con_0359_09   ; enemy 0359 ???
- D 1 - I - 0x01A045 06:A035: 49 02     .word $0249 ; enemy pos_X
- D 1 - I - 0x01A047 06:A037: 70 00     .word $0070 ; enemy pos_Y
- D 1 - I - 0x01A049 06:A039: 10 01     .word $0110 ; enemy pos_Z
- D 1 - I - 0x01A04B 06:A03B: 00        .byte $00   ; enemy 006A ???
- D 1 - I - 0x01A04C 06:A03C: 0F        .byte $0F   ; enemy hp
; 04
- - - - - - 0x01A04D 06:A03D: 20        .byte $20   ; enemy settings
- - - - - - 0x01A04E 06:A03E: 09        .byte con_0359_09   ; enemy 0359 ???
- - - - - - 0x01A04F 06:A03F: 3C 02     .word $023C ; enemy pos_X
- - - - - - 0x01A051 06:A041: 70 00     .word $0070 ; enemy pos_Y
- - - - - - 0x01A053 06:A043: 10 01     .word $0110 ; enemy pos_Z
- - - - - - 0x01A055 06:A045: 00        .byte $00   ; enemy 006A ???
- - - - - - 0x01A056 06:A046: 0F        .byte $0F   ; enemy hp



off_05_A047_0D_spawn_bolo_1:
- D 1 - I - 0x01A057 06:A047: 09        .byte con_884D_script_emeny_spawn_at_door   ; 
- D 1 - I - 0x01A058 06:A048: 00 00     .word $0000 ; X camera limit (min)
- D 1 - I - 0x01A05A 06:A04A: FF 01     .word $01FF ; X camera limit (max)
- D 1 - I - 0x01A05C 06:A04C: 00 00     .word $0000 ; Y camera limit (min)
- D 1 - I - 0x01A05E 06:A04E: F0 00     .word $00F0 ; Y camera limit (max)
- D 1 - I - 0x01A060 06:A050: 09        .byte $09   ; 04B0 ???

- D 1 - I - 0x01A061 06:A051: 46        .byte con_chr_bank + $46   ; 
- D 1 - I - 0x01A062 06:A052: 06        .byte con_obj_bolo   ; 
- D 1 - I - 0x01A063 06:A053: 01        .byte $01   ; enemy counter

- D 1 - I - 0x01A064 06:A054: 08        .byte con_A6C3_draw_wooden_house_door   ; spawner

; 01
- D 1 - I - 0x01A065 06:A055: 20        .byte $20   ; enemy settings
- D 1 - I - 0x01A066 06:A056: 09        .byte con_0359_09   ; enemy 0359 ???
- D 1 - I - 0x01A067 06:A057: 3C 02     .word $023C ; enemy pos_X
- D 1 - I - 0x01A069 06:A059: 70 00     .word $0070 ; enemy pos_Y
- D 1 - I - 0x01A06B 06:A05B: 10 01     .word $0110 ; enemy pos_Z
- D 1 - I - 0x01A06D 06:A05D: 00        .byte $00   ; enemy 006A ???
- D 1 - I - 0x01A06E 06:A05E: 27        .byte $27   ; enemy hp



off_05_A05F_0E_spawn_bolo_2:
- D 1 - I - 0x01A06F 06:A05F: 09        .byte con_884D_script_emeny_spawn_at_door   ; 
- D 1 - I - 0x01A070 06:A060: 00 00     .word $0000 ; X camera limit (min)
- D 1 - I - 0x01A072 06:A062: FF 01     .word $01FF ; X camera limit (max)
- D 1 - I - 0x01A074 06:A064: 00 00     .word $0000 ; Y camera limit (min)
- D 1 - I - 0x01A076 06:A066: F0 00     .word $00F0 ; Y camera limit (max)
- D 1 - I - 0x01A078 06:A068: 09        .byte $09   ; 04B0 ???

- D 1 - I - 0x01A079 06:A069: 46        .byte con_chr_bank + $46   ; 
- D 1 - I - 0x01A07A 06:A06A: 06        .byte con_obj_bolo   ; 
- D 1 - I - 0x01A07B 06:A06B: 01        .byte $01   ; enemy counter

- D 1 - I - 0x01A07C 06:A06C: 08        .byte con_A6C3_draw_wooden_house_door   ; spawner

; 01
- D 1 - I - 0x01A07D 06:A06D: 20        .byte $20   ; enemy settings
- D 1 - I - 0x01A07E 06:A06E: 09        .byte con_0359_09   ; enemy 0359 ???
- D 1 - I - 0x01A07F 06:A06F: 3C 02     .word $023C ; enemy pos_X
- D 1 - I - 0x01A081 06:A071: 70 00     .word $0070 ; enemy pos_Y
- D 1 - I - 0x01A083 06:A073: 10 01     .word $0110 ; enemy pos_Z
- D 1 - I - 0x01A085 06:A075: 00        .byte $00   ; enemy 006A ???
- D 1 - I - 0x01A086 06:A076: 27        .byte $27   ; enemy hp



off_05_A077_0F_cursor:
- D 1 - I - 0x01A087 06:A077: 01        .byte con_884D_script_hand_cursor   ; 
- D 1 - I - 0x01A088 06:A078: 00 01     .word $0100 ; X camera limit (min)
- D 1 - I - 0x01A08A 06:A07A: 00 03     .word $0300 ; X camera limit (max)
- D 1 - I - 0x01A08C 06:A07C: 00 00     .word $0000 ; Y camera limit (min)
- D 1 - I - 0x01A08E 06:A07E: F0 00     .word $00F0 ; Y camera limit (max)
- D 1 - I - 0x01A090 06:A080: 09        .byte $09   ; 04B0 ???

- D 1 - I - 0x01A091 06:A081: 03        .byte $03   ; cursor direction (right)



off_05_A082_10_spawn_chin_taimei:
- D 1 - I - 0x01A092 06:A082: 00        .byte con_884D_script_00   ; 
- D 1 - I - 0x01A093 06:A083: 00 01     .word $0100 ; X camera limit (min)
- D 1 - I - 0x01A095 06:A085: 00 03     .word $0300 ; X camera limit (max)
- D 1 - I - 0x01A097 06:A087: 00 00     .word $0000 ; Y camera limit (min)
- D 1 - I - 0x01A099 06:A089: F0 00     .word $00F0 ; Y camera limit (max)
- D 1 - I - 0x01A09B 06:A08B: 01        .byte $01   ; 04B0 ???

- D 1 - I - 0x01A09C 06:A08C: 4C        .byte con_chr_bank + $4C   ; 
- D 1 - I - 0x01A09D 06:A08D: 09        .byte con_obj_chin_taimei   ; 
- D 1 - I - 0x01A09E 06:A08E: 02        .byte $02   ; enemy counter
; 01
- D 1 - I - 0x01A09F 06:A08F: 20        .byte $20   ; enemy settings
- D 1 - I - 0x01A0A0 06:A090: 0A        .byte con_0359_0A   ; enemy 0359 ???
- D 1 - I - 0x01A0A1 06:A091: E0 03     .word $03E0 ; enemy pos_X
- D 1 - I - 0x01A0A3 06:A093: 70 00     .word $0070 ; enemy pos_Y
- D 1 - I - 0x01A0A5 06:A095: C0 00     .word $00C0 ; enemy pos_Z
- D 1 - I - 0x01A0A7 06:A097: 03        .byte $03   ; enemy 006A ???
- D 1 - I - 0x01A0A8 06:A098: 37        .byte $37   ; enemy hp
; 02
- D 1 - I - 0x01A0A9 06:A099: 20        .byte $20   ; enemy settings
- D 1 - I - 0x01A0AA 06:A09A: 0A        .byte con_0359_0A   ; enemy 0359 ???
- D 1 - I - 0x01A0AB 06:A09B: F0 03     .word $03F0 ; enemy pos_X
- D 1 - I - 0x01A0AD 06:A09D: 70 00     .word $0070 ; enemy pos_Y
- D 1 - I - 0x01A0AF 06:A09F: C0 00     .word $00C0 ; enemy pos_Z
- D 1 - I - 0x01A0B1 06:A0A1: 03        .byte $03   ; enemy 006A ???
- D 1 - I - 0x01A0B2 06:A0A2: 37        .byte $37   ; enemy hp



off_05_A0A3_11:
- D 1 - I - 0x01A0B3 06:A0A3: 07        .byte con_884D_script_07   ; 
- D 1 - I - 0x01A0B4 06:A0A4: 80        .byte $80   ; 
- D 1 - I - 0x01A0B5 06:A0A5: 00        .byte $00   ; 
- D 1 - I - 0x01A0B6 06:A0A6: 03        .byte $03   ; 



off_05_A0A7_12:
- D 1 - I - 0x01A0B7 06:A0A7: 16        .byte con_884D_script_16   ; 
- D 1 - I - 0x01A0B8 06:A0A8: 09        .byte con_music_boss_tractor



off_05_A0A9_13:
- D 1 - I - 0x01A0B9 06:A0A9: 14        .byte con_884D_script_14   ; 



off_05_A0AA_14_spawn_roper:
- D 1 - I - 0x01A0BA 06:A0AA: 00        .byte con_884D_script_00   ; 
- D 1 - I - 0x01A0BB 06:A0AB: 00 01     .word $0100 ; X camera limit (min)
- D 1 - I - 0x01A0BD 06:A0AD: 00 03     .word $0300 ; X camera limit (max)
- D 1 - I - 0x01A0BF 06:A0AF: 00 00     .word $0000 ; Y camera limit (min)
- D 1 - I - 0x01A0C1 06:A0B1: F0 00     .word $00F0 ; Y camera limit (max)
- D 1 - I - 0x01A0C3 06:A0B3: 01        .byte $01   ; 04B0 ???

- D 1 - I - 0x01A0C4 06:A0B4: 64        .byte con_chr_bank + $64   ; 
- D 1 - I - 0x01A0C5 06:A0B5: 03        .byte con_obj_roper   ; 
- D 1 - I - 0x01A0C6 06:A0B6: 04        .byte $04   ; enemy counter
; 01
- D 1 - I - 0x01A0C7 06:A0B7: A0        .byte $A0   ; enemy settings
- D 1 - I - 0x01A0C8 06:A0B8: 16        .byte con_obj_flame_grenades   ; enemy weapon
- D 1 - I - 0x01A0C9 06:A0B9: 1D        .byte con_0359_1D   ; enemy 0359 ???
- D 1 - I - 0x01A0CA 06:A0BA: C4 03     .word $03C4 ; enemy pos_X
- D 1 - I - 0x01A0CC 06:A0BC: 70 00     .word $0070 ; enemy pos_Y
- D 1 - I - 0x01A0CE 06:A0BE: 30 01     .word $0130 ; enemy pos_Z
- D 1 - I - 0x01A0D0 06:A0C0: 03        .byte $03   ; enemy 006A ???
- D 1 - I - 0x01A0D1 06:A0C1: 13        .byte $13   ; enemy hp
; 02
- D 1 - I - 0x01A0D2 06:A0C2: A0        .byte $A0   ; enemy settings
- D 1 - I - 0x01A0D3 06:A0C3: 16        .byte con_obj_flame_grenades   ; enemy weapon
- D 1 - I - 0x01A0D4 06:A0C4: 1D        .byte con_0359_1D   ; enemy 0359 ???
- D 1 - I - 0x01A0D5 06:A0C5: C0 03     .word $03C0 ; enemy pos_X
- D 1 - I - 0x01A0D7 06:A0C7: 70 00     .word $0070 ; enemy pos_Y
- D 1 - I - 0x01A0D9 06:A0C9: 30 01     .word $0130 ; enemy pos_Z
- D 1 - I - 0x01A0DB 06:A0CB: 03        .byte $03   ; enemy 006A ???
- D 1 - I - 0x01A0DC 06:A0CC: 13        .byte $13   ; enemy hp
; 03
- D 1 - I - 0x01A0DD 06:A0CD: A0        .byte $A0   ; enemy settings
- D 1 - I - 0x01A0DE 06:A0CE: 16        .byte con_obj_flame_grenades   ; enemy weapon
- D 1 - I - 0x01A0DF 06:A0CF: 1D        .byte con_0359_1D   ; enemy 0359 ???
- D 1 - I - 0x01A0E0 06:A0D0: C4 03     .word $03C4 ; enemy pos_X
- D 1 - I - 0x01A0E2 06:A0D2: 70 00     .word $0070 ; enemy pos_Y
- D 1 - I - 0x01A0E4 06:A0D4: 30 01     .word $0130 ; enemy pos_Z
- D 1 - I - 0x01A0E6 06:A0D6: 03        .byte $03   ; enemy 006A ???
- D 1 - I - 0x01A0E7 06:A0D7: 13        .byte $13   ; enemy hp
; 04
- - - - - - 0x01A0E8 06:A0D8: A0        .byte $A0   ; enemy settings
- - - - - - 0x01A0E9 06:A0D9: 16        .byte con_obj_flame_grenades   ; enemy weapon
- - - - - - 0x01A0EA 06:A0DA: 1D        .byte con_0359_1D   ; enemy 0359 ???
- - - - - - 0x01A0EB 06:A0DB: C4 03     .word $03C4 ; enemy pos_X
- - - - - - 0x01A0ED 06:A0DD: 70 00     .word $0070 ; enemy pos_Y
- - - - - - 0x01A0EF 06:A0DF: 30 01     .word $0130 ; enemy pos_Z
- - - - - - 0x01A0F1 06:A0E1: 03        .byte $03   ; enemy 006A ???
- - - - - - 0x01A0F2 06:A0E2: 13        .byte $13   ; enemy hp



off_05_A0E3_15_spawn_right_arm:
- D 1 - I - 0x01A0F3 06:A0E3: 00        .byte con_884D_script_00   ; 
- D 1 - I - 0x01A0F4 06:A0E4: 00 01     .word $0100 ; X camera limit (min)
- D 1 - I - 0x01A0F6 06:A0E6: 00 03     .word $0300 ; X camera limit (max)
- D 1 - I - 0x01A0F8 06:A0E8: 00 00     .word $0000 ; Y camera limit (min)
- D 1 - I - 0x01A0FA 06:A0EA: F0 00     .word $00F0 ; Y camera limit (max)
- D 1 - I - 0x01A0FC 06:A0EC: 01        .byte $01   ; 04B0 ???

- D 1 - I - 0x01A0FD 06:A0ED: 54        .byte con_chr_bank + $54   ; 
- D 1 - I - 0x01A0FE 06:A0EE: 0A        .byte con_obj_right_arm   ; 
- D 1 - I - 0x01A0FF 06:A0EF: 02        .byte $02   ; enemy counter
; 01
- D 1 - I - 0x01A100 06:A0F0: 20        .byte $20   ; enemy settings
- D 1 - I - 0x01A101 06:A0F1: 1D        .byte con_0359_1D   ; enemy 0359 ???
- D 1 - I - 0x01A102 06:A0F2: C4 03     .word $03C4 ; enemy pos_X
- D 1 - I - 0x01A104 06:A0F4: 70 00     .word $0070 ; enemy pos_Y
- D 1 - I - 0x01A106 06:A0F6: 30 01     .word $0130 ; enemy pos_Z
- D 1 - I - 0x01A108 06:A0F8: 03        .byte $03   ; enemy 006A ???
- D 1 - I - 0x01A109 06:A0F9: 17        .byte $17   ; enemy hp
; 02
- D 1 - I - 0x01A10A 06:A0FA: 20        .byte $20   ; enemy settings
- D 1 - I - 0x01A10B 06:A0FB: 1D        .byte con_0359_1D   ; enemy 0359 ???
- D 1 - I - 0x01A10C 06:A0FC: C0 03     .word $03C0 ; enemy pos_X
- D 1 - I - 0x01A10E 06:A0FE: 70 00     .word $0070 ; enemy pos_Y
- D 1 - I - 0x01A110 06:A100: 30 01     .word $0130 ; enemy pos_Z
- D 1 - I - 0x01A112 06:A102: 03        .byte $03   ; enemy 006A ???
- D 1 - I - 0x01A113 06:A103: 17        .byte $17   ; enemy hp



off_05_A104_16_spawn_abore:
- D 1 - I - 0x01A114 06:A104: 00        .byte con_884D_script_00   ; 
- D 1 - I - 0x01A115 06:A105: 00 01     .word $0100 ; X camera limit (min)
- D 1 - I - 0x01A117 06:A107: 00 03     .word $0300 ; X camera limit (max)
- D 1 - I - 0x01A119 06:A109: 00 00     .word $0000 ; Y camera limit (min)
- D 1 - I - 0x01A11B 06:A10B: F0 00     .word $00F0 ; Y camera limit (max)
- D 1 - I - 0x01A11D 06:A10D: 01        .byte $01   ; 04B0 ???

- D 1 - I - 0x01A11E 06:A10E: 52        .byte con_chr_bank + $52   ; 
- D 1 - I - 0x01A11F 06:A10F: 08        .byte con_obj_abore   ; 
- D 1 - I - 0x01A120 06:A110: 01        .byte $01   ; enemy counter
; 01
- D 1 - I - 0x01A121 06:A111: 20        .byte $20   ; enemy settings
- D 1 - I - 0x01A122 06:A112: 1D        .byte con_0359_1D   ; enemy 0359 ???
- D 1 - I - 0x01A123 06:A113: C4 03     .word $03C4 ; enemy pos_X
- D 1 - I - 0x01A125 06:A115: 70 00     .word $0070 ; enemy pos_Y
- D 1 - I - 0x01A127 06:A117: 30 01     .word $0130 ; enemy pos_Z
- D 1 - I - 0x01A129 06:A119: 03        .byte $03   ; enemy 006A ???
- D 1 - I - 0x01A12A 06:A11A: 47        .byte $47   ; enemy hp



off_05_A11B_17:
- D 1 - I - 0x01A12B 06:A11B: 08        .byte con_884D_script_08   ; 



off_05_A11C_18:
- D 1 - I - 0x01A12C 06:A11C: 81        .byte con_884D_script_81   ; 



off_06_A11D_00:
- D 1 - I - 0x01A12D 06:A11D: 03        .byte con_884D_script_03   ; 
- D 1 - I - 0x01A12E 06:A11E: FF 00     .word $00FF ; X camera limit (min)
- D 1 - I - 0x01A130 06:A120: 00 02     .word $0200 ; X camera limit (max)
- D 1 - I - 0x01A132 06:A122: 00 00     .word $0000 ; Y camera limit (min)
- D 1 - I - 0x01A134 06:A124: 00 00     .word $0000 ; Y camera limit (max)
- D 1 - I - 0x01A136 06:A126: 02        .byte $02   ; 04B0 ???

- D 1 - I - 0x01A137 06:A127: 5A        .byte con_chr_bank + $5A   ; 
- D 1 - I - 0x01A138 06:A128: 11        .byte con_obj_shadow_warrior   ; 
- - - - - - 0x01A139 06:A129: 00        .byte $00   ; 



off_06_A12A_01:
- D 1 - I - 0x01A13A 06:A12A: 02        .byte con_884D_script_02   ; 
- D 1 - I - 0x01A13B 06:A12B: FF        .byte $FF   ; 
- D 1 - I - 0x01A13C 06:A12C: 00        .byte $00   ; 
- D 1 - I - 0x01A13D 06:A12D: 00        .byte $00   ; 
- D 1 - I - 0x01A13E 06:A12E: 00        .byte $00   ; 



off_06_A12F_02_spawn_right_arm:
- D 1 - I - 0x01A13F 06:A12F: 00        .byte con_884D_script_00   ; 
- D 1 - I - 0x01A140 06:A130: FF 00     .word $00FF ; X camera limit (min)
- D 1 - I - 0x01A142 06:A132: FF 00     .word $00FF ; X camera limit (max)
- D 1 - I - 0x01A144 06:A134: 00 00     .word $0000 ; Y camera limit (min)
- D 1 - I - 0x01A146 06:A136: 00 00     .word $0000 ; Y camera limit (max)
- D 1 - I - 0x01A148 06:A138: 00        .byte $00   ; 04B0 ???

- D 1 - I - 0x01A149 06:A139: 54        .byte con_chr_bank + $54   ; 
- D 1 - I - 0x01A14A 06:A13A: 0A        .byte con_obj_right_arm   ; 
- D 1 - I - 0x01A14B 06:A13B: 04        .byte $04   ; enemy counter
; 01
- D 1 - I - 0x01A14C 06:A13C: 20        .byte $20   ; enemy settings
- D 1 - I - 0x01A14D 06:A13D: 0A        .byte con_0359_0A   ; enemy 0359 ???
- D 1 - I - 0x01A14E 06:A13E: 30 01     .word $0130 ; enemy pos_X
- D 1 - I - 0x01A150 06:A140: 00 00     .word $0000 ; enemy pos_Y
- D 1 - I - 0x01A152 06:A142: 50 00     .word $0050 ; enemy pos_Z
- D 1 - I - 0x01A154 06:A144: 00        .byte $00   ; enemy 006A ???
- D 1 - I - 0x01A155 06:A145: 1F        .byte $1F   ; enemy hp
; 02
- D 1 - I - 0x01A156 06:A146: 20        .byte $20   ; enemy settings
- D 1 - I - 0x01A157 06:A147: 08        .byte con_0359_08   ; enemy 0359 ???
- D 1 - I - 0x01A158 06:A148: D0 01     .word $01D0 ; enemy pos_X
- D 1 - I - 0x01A15A 06:A14A: 00 00     .word $0000 ; enemy pos_Y
- D 1 - I - 0x01A15C 06:A14C: 50 00     .word $0050 ; enemy pos_Z
- D 1 - I - 0x01A15E 06:A14E: 00        .byte $00   ; enemy 006A ???
- D 1 - I - 0x01A15F 06:A14F: 1F        .byte $1F   ; enemy hp
; 03
- D 1 - I - 0x01A160 06:A150: 20        .byte $20   ; enemy settings
- D 1 - I - 0x01A161 06:A151: 0A        .byte con_0359_0A   ; enemy 0359 ???
- D 1 - I - 0x01A162 06:A152: 30 01     .word $0130 ; enemy pos_X
- D 1 - I - 0x01A164 06:A154: 00 00     .word $0000 ; enemy pos_Y
- D 1 - I - 0x01A166 06:A156: 50 00     .word $0050 ; enemy pos_Z
- D 1 - I - 0x01A168 06:A158: 00        .byte $00   ; enemy 006A ???
- D 1 - I - 0x01A169 06:A159: 1F        .byte $1F   ; enemy hp
; 04
- - - - - - 0x01A16A 06:A15A: 20        .byte $20   ; enemy settings
- - - - - - 0x01A16B 06:A15B: 08        .byte con_0359_08   ; enemy 0359 ???
- - - - - - 0x01A16C 06:A15C: D0 01     .word $01D0 ; enemy pos_X
- - - - - - 0x01A16E 06:A15E: 00 00     .word $0000 ; enemy pos_Y
- - - - - - 0x01A170 06:A160: 50 00     .word $0050 ; enemy pos_Z
- - - - - - 0x01A172 06:A162: 00        .byte $00   ; enemy 006A ???
- - - - - - 0x01A173 06:A163: 1F        .byte $1F   ; enemy hp



off_06_A164_03_spawn_chin_taimei:
- D 1 - I - 0x01A174 06:A164: 00        .byte con_884D_script_00   ; 
- D 1 - I - 0x01A175 06:A165: FF 00     .word $00FF ; X camera limit (min)
- D 1 - I - 0x01A177 06:A167: FF 00     .word $00FF ; X camera limit (max)
- D 1 - I - 0x01A179 06:A169: 00 00     .word $0000 ; Y camera limit (min)
- D 1 - I - 0x01A17B 06:A16B: 00 00     .word $0000 ; Y camera limit (max)
- D 1 - I - 0x01A17D 06:A16D: 00        .byte $00   ; 04B0 ???

- D 1 - I - 0x01A17E 06:A16E: 4C        .byte con_chr_bank + $4C   ; 
- D 1 - I - 0x01A17F 06:A16F: 09        .byte con_obj_chin_taimei   ; 
- D 1 - I - 0x01A180 06:A170: 04        .byte $04   ; enemy counter
; 01
- D 1 - I - 0x01A181 06:A171: 20        .byte $20   ; enemy settings
- D 1 - I - 0x01A182 06:A172: 0A        .byte con_0359_0A   ; enemy 0359 ???
- D 1 - I - 0x01A183 06:A173: 30 01     .word $0130 ; enemy pos_X
- D 1 - I - 0x01A185 06:A175: 00 00     .word $0000 ; enemy pos_Y
- D 1 - I - 0x01A187 06:A177: 50 00     .word $0050 ; enemy pos_Z
- D 1 - I - 0x01A189 06:A179: 00        .byte $00   ; enemy 006A ???
- D 1 - I - 0x01A18A 06:A17A: 17        .byte $17   ; enemy hp
; 02
- D 1 - I - 0x01A18B 06:A17B: 20        .byte $20   ; enemy settings
- D 1 - I - 0x01A18C 06:A17C: 08        .byte con_0359_08   ; enemy 0359 ???
- D 1 - I - 0x01A18D 06:A17D: D0 01     .word $01D0 ; enemy pos_X
- D 1 - I - 0x01A18F 06:A17F: 00 00     .word $0000 ; enemy pos_Y
- D 1 - I - 0x01A191 06:A181: 50 00     .word $0050 ; enemy pos_Z
- D 1 - I - 0x01A193 06:A183: 00        .byte $00   ; enemy 006A ???
- D 1 - I - 0x01A194 06:A184: 17        .byte $17   ; enemy hp
; 03
- D 1 - I - 0x01A195 06:A185: 20        .byte $20   ; enemy settings
- D 1 - I - 0x01A196 06:A186: 0A        .byte con_0359_0A   ; enemy 0359 ???
- D 1 - I - 0x01A197 06:A187: 30 01     .word $0130 ; enemy pos_X
- D 1 - I - 0x01A199 06:A189: 00 00     .word $0000 ; enemy pos_Y
- D 1 - I - 0x01A19B 06:A18B: 50 00     .word $0050 ; enemy pos_Z
- D 1 - I - 0x01A19D 06:A18D: 00        .byte $00   ; enemy 006A ???
- D 1 - I - 0x01A19E 06:A18E: 17        .byte $17   ; enemy hp
; 04
- - - - - - 0x01A19F 06:A18F: 20        .byte $20   ; enemy settings
- - - - - - 0x01A1A0 06:A190: 08        .byte con_0359_08   ; enemy 0359 ???
- - - - - - 0x01A1A1 06:A191: D0 01     .word $01D0 ; enemy pos_X
- - - - - - 0x01A1A3 06:A193: 00 00     .word $0000 ; enemy pos_Y
- - - - - - 0x01A1A5 06:A195: 50 00     .word $0050 ; enemy pos_Z
- - - - - - 0x01A1A7 06:A197: 00        .byte $00   ; enemy 006A ???
- - - - - - 0x01A1A8 06:A198: 17        .byte $17   ; enemy hp



off_06_A199_04_cursor:
- D 1 - I - 0x01A1A9 06:A199: 01        .byte con_884D_script_hand_cursor   ; 
- D 1 - I - 0x01A1AA 06:A19A: 00 00     .word $0000 ; X camera limit (min)
- D 1 - I - 0x01A1AC 06:A19C: FF 00     .word $00FF ; X camera limit (max)
- D 1 - I - 0x01A1AE 06:A19E: 00 00     .word $0000 ; Y camera limit (min)
- D 1 - I - 0x01A1B0 06:A1A0: 00 00     .word $0000 ; Y camera limit (max)
- D 1 - I - 0x01A1B2 06:A1A2: 02        .byte $02   ; 04B0 ???

- D 1 - I - 0x01A1B3 06:A1A3: 02        .byte $02   ; cursor direction (left)



off_06_A1A4_05:
- D 1 - I - 0x01A1B4 06:A1A4: 03        .byte con_884D_script_03   ; 
- D 1 - I - 0x01A1B5 06:A1A5: 00 00     .word $0000 ; X camera limit (min)
- D 1 - I - 0x01A1B7 06:A1A7: FF 00     .word $00FF ; X camera limit (max)
- D 1 - I - 0x01A1B9 06:A1A9: 00 00     .word $0000 ; Y camera limit (min)
- D 1 - I - 0x01A1BB 06:A1AB: 00 00     .word $0000 ; Y camera limit (max)
- D 1 - I - 0x01A1BD 06:A1AD: 02        .byte $02   ; 04B0 ???

- D 1 - I - 0x01A1BE 06:A1AE: 44        .byte con_chr_bank + $44   ; 
- D 1 - I - 0x01A1BF 06:A1AF: 04        .byte con_obj_linda   ; 
- - - - - - 0x01A1C0 06:A1B0: 00        .byte $00   ; 



off_06_A1B1_06_enter_door:
- D 1 - I - 0x01A1C1 06:A1B1: 04        .byte con_884D_script_enter_door   ; 
- D 1 - I - 0x01A1C2 06:A1B2: 03        .byte con_9859_03   ; 



off_06_A1B3_07:
- D 1 - I - 0x01A1C3 06:A1B3: 08        .byte con_884D_script_08   ; 



off_06_A1B4_08:
- D 1 - I - 0x01A1C4 06:A1B4: 81        .byte con_884D_script_81   ; 



off_07_A1B5_00:
- D 1 - I - 0x01A1C5 06:A1B5: 03        .byte con_884D_script_03   ; 
- D 1 - I - 0x01A1C6 06:A1B6: 00 00     .word $0000 ; X camera limit (min)
- D 1 - I - 0x01A1C8 06:A1B8: 00 00     .word $0000 ; X camera limit (max)
- D 1 - I - 0x01A1CA 06:A1BA: 00 00     .word $0000 ; Y camera limit (min)
- D 1 - I - 0x01A1CC 06:A1BC: 00 00     .word $0000 ; Y camera limit (max)
- D 1 - I - 0x01A1CE 06:A1BE: 00        .byte $00   ; 04B0 ???

- D 1 - I - 0x01A1CF 06:A1BF: 44        .byte con_chr_bank + $44   ; 
- D 1 - I - 0x01A1D0 06:A1C0: 04        .byte con_obj_linda   ; 
- - - - - - 0x01A1D1 06:A1C1: 00        .byte $00   ; 



off_07_A1C2_01_enter_door:
- D 1 - I - 0x01A1D2 06:A1C2: 04        .byte con_884D_script_enter_door   ; 
- D 1 - I - 0x01A1D3 06:A1C3: 04        .byte con_9859_04   ; 



off_07_A1C4_02:
- D 1 - I - 0x01A1D4 06:A1C4: 81        .byte con_884D_script_81   ; 



off_08_A1C5_00_spawn_right_arm:
- D 1 - I - 0x01A1D5 06:A1C5: 00        .byte con_884D_script_00   ; 
- D 1 - I - 0x01A1D6 06:A1C6: 00 00     .word $0000 ; X camera limit (min)
- D 1 - I - 0x01A1D8 06:A1C8: 00 00     .word $0000 ; X camera limit (max)
- D 1 - I - 0x01A1DA 06:A1CA: 00 00     .word $0000 ; Y camera limit (min)
- D 1 - I - 0x01A1DC 06:A1CC: 00 00     .word $0000 ; Y camera limit (max)
- D 1 - I - 0x01A1DE 06:A1CE: 00        .byte $00   ; 04B0 ???

- D 1 - I - 0x01A1DF 06:A1CF: 54        .byte con_chr_bank + $54   ; 
- D 1 - I - 0x01A1E0 06:A1D0: 0A        .byte con_obj_right_arm   ; 
- D 1 - I - 0x01A1E1 06:A1D1: 01        .byte $01   ; enemy counter
; 01
- D 1 - I - 0x01A1E2 06:A1D2: 20        .byte $20   ; enemy settings
- D 1 - I - 0x01A1E3 06:A1D3: 00        .byte con_0359_00   ; enemy 0359 ???
- D 1 - I - 0x01A1E4 06:A1D4: FF 00     .word $00FF ; enemy pos_X
- D 1 - I - 0x01A1E6 06:A1D6: 00 00     .word $0000 ; enemy pos_Y
- D 1 - I - 0x01A1E8 06:A1D8: 70 00     .word $0070 ; enemy pos_Z
- D 1 - I - 0x01A1EA 06:A1DA: 00        .byte $00   ; enemy 006A ???
- D 1 - I - 0x01A1EB 06:A1DB: 17        .byte $17   ; enemy hp



off_08_A1DC_01_spawn_burnov:
- D 1 - I - 0x01A1EC 06:A1DC: 00        .byte con_884D_script_00   ; 
- D 1 - I - 0x01A1ED 06:A1DD: 00 00     .word $0000 ; X camera limit (min)
- D 1 - I - 0x01A1EF 06:A1DF: 00 00     .word $0000 ; X camera limit (max)
- D 1 - I - 0x01A1F1 06:A1E1: 00 00     .word $0000 ; Y camera limit (min)
- D 1 - I - 0x01A1F3 06:A1E3: 00 00     .word $0000 ; Y camera limit (max)
- D 1 - I - 0x01A1F5 06:A1E5: 00        .byte $00   ; 04B0 ???

- D 1 - I - 0x01A1F6 06:A1E6: 50        .byte con_chr_bank + $50   ; 
- D 1 - I - 0x01A1F7 06:A1E7: 07        .byte con_obj_burnov   ; 
- D 1 - I - 0x01A1F8 06:A1E8: 01        .byte $01   ; enemy counter
; 01
- D 1 - I - 0x01A1F9 06:A1E9: 20        .byte $20   ; enemy settings
- D 1 - I - 0x01A1FA 06:A1EA: 00        .byte con_0359_00   ; enemy 0359 ???
- D 1 - I - 0x01A1FB 06:A1EB: FF 00     .word $00FF ; enemy pos_X
- D 1 - I - 0x01A1FD 06:A1ED: 00 00     .word $0000 ; enemy pos_Y
- D 1 - I - 0x01A1FF 06:A1EF: 70 00     .word $0070 ; enemy pos_Z
- D 1 - I - 0x01A201 06:A1F1: 00        .byte $00   ; enemy 006A ???
- D 1 - I - 0x01A202 06:A1F2: 32        .byte $32   ; enemy hp



off_08_A1F3_02:
- D 1 - I - 0x01A203 06:A1F3: 06        .byte con_884D_script_06   ; 
- D 1 - I - 0x01A204 06:A1F4: 09        .byte con_A6C3_draw_final_door_08   ; 



off_08_A1F5_03_enter_door:
- D 1 - I - 0x01A205 06:A1F5: 04        .byte con_884D_script_enter_door   ; 
- D 1 - I - 0x01A206 06:A1F6: 05        .byte con_9859_05   ; 



off_08_A1F7_04:
- D 1 - I - 0x01A207 06:A1F7: 0A        .byte con_884D_script_0A   ; 
- D 1 - I - 0x01A208 06:A1F8: 09        .byte con_A6C3_draw_final_door_08   ; 



off_08_A1F9_05:
- D 1 - I - 0x01A209 06:A1F9: 81        .byte con_884D_script_81   ; 



off_09_A1FA_00:
- D 1 - I - 0x01A20A 06:A1FA: 03        .byte con_884D_script_03   ; 
- D 1 - I - 0x01A20B 06:A1FB: 00 00     .word $0000 ; X camera limit (min)
- D 1 - I - 0x01A20D 06:A1FD: 00 00     .word $0000 ; X camera limit (max)
- D 1 - I - 0x01A20F 06:A1FF: 00 00     .word $0000 ; Y camera limit (min)
- D 1 - I - 0x01A211 06:A201: 00 00     .word $0000 ; Y camera limit (max)
- D 1 - I - 0x01A213 06:A203: 00        .byte $00   ; 04B0 ???

- D 1 - I - 0x01A214 06:A204: 5A        .byte con_chr_bank + $5A   ; 
- D 1 - I - 0x01A215 06:A205: 1E        .byte con_obj_symbol_II   ; 
- - - - - - 0x01A216 06:A206: 00        .byte $00   ; 



off_09_A207_01_enter_door:
- D 1 - I - 0x01A217 06:A207: 04        .byte con_884D_script_enter_door   ; 
- D 1 - I - 0x01A218 06:A208: 06        .byte con_9859_06   ; 



off_09_A209_02:
- D 1 - I - 0x01A219 06:A209: 81        .byte con_884D_script_81   ; 



off_0A_A20A_00_spawn_roper:
- D 1 - I - 0x01A21A 06:A20A: 00        .byte con_884D_script_00   ; 
- D 1 - I - 0x01A21B 06:A20B: 00 00     .word $0000 ; X camera limit (min)
- D 1 - I - 0x01A21D 06:A20D: 00 00     .word $0000 ; X camera limit (max)
- D 1 - I - 0x01A21F 06:A20F: 00 00     .word $0000 ; Y camera limit (min)
- D 1 - I - 0x01A221 06:A211: 00 00     .word $0000 ; Y camera limit (max)
- D 1 - I - 0x01A223 06:A213: 00        .byte $00   ; 04B0 ???

- D 1 - I - 0x01A224 06:A214: 64        .byte con_chr_bank + $64   ; 
- D 1 - I - 0x01A225 06:A215: 03        .byte con_obj_roper   ; 
- D 1 - I - 0x01A226 06:A216: 05        .byte $05   ; enemy counter
; 01
- D 1 - I - 0x01A227 06:A217: A0        .byte $A0   ; enemy settings
- D 1 - I - 0x01A228 06:A218: 16        .byte con_obj_flame_grenades   ; enemy weapon
- D 1 - I - 0x01A229 06:A219: 00        .byte con_0359_00   ; enemy 0359 ???
- D 1 - I - 0x01A22A 06:A21A: FF 00     .word $00FF ; enemy pos_X
- D 1 - I - 0x01A22C 06:A21C: 00 00     .word $0000 ; enemy pos_Y
- D 1 - I - 0x01A22E 06:A21E: 70 00     .word $0070 ; enemy pos_Z
- D 1 - I - 0x01A230 06:A220: 00        .byte $00   ; enemy 006A ???
- D 1 - I - 0x01A231 06:A221: 38        .byte $38   ; enemy hp
; 02
- D 1 - I - 0x01A232 06:A222: A0        .byte $A0   ; enemy settings
- D 1 - I - 0x01A233 06:A223: 16        .byte con_obj_flame_grenades   ; enemy weapon
- D 1 - I - 0x01A234 06:A224: 00        .byte con_0359_00   ; enemy 0359 ???
- D 1 - I - 0x01A235 06:A225: 10 01     .word $0110 ; enemy pos_X
- D 1 - I - 0x01A237 06:A227: 00 00     .word $0000 ; enemy pos_Y
- D 1 - I - 0x01A239 06:A229: 70 00     .word $0070 ; enemy pos_Z
- D 1 - I - 0x01A23B 06:A22B: 00        .byte $00   ; enemy 006A ???
- D 1 - I - 0x01A23C 06:A22C: 38        .byte $38   ; enemy hp
; 03
- D 1 - I - 0x01A23D 06:A22D: A0        .byte $A0   ; enemy settings
- D 1 - I - 0x01A23E 06:A22E: 16        .byte con_obj_flame_grenades   ; enemy weapon
- D 1 - I - 0x01A23F 06:A22F: 00        .byte con_0359_00   ; enemy 0359 ???
- D 1 - I - 0x01A240 06:A230: FF 00     .word $00FF ; enemy pos_X
- D 1 - I - 0x01A242 06:A232: 00 00     .word $0000 ; enemy pos_Y
- D 1 - I - 0x01A244 06:A234: 70 00     .word $0070 ; enemy pos_Z
- D 1 - I - 0x01A246 06:A236: 00        .byte $00   ; enemy 006A ???
- D 1 - I - 0x01A247 06:A237: 38        .byte $38   ; enemy hp
; 04
- - - - - - 0x01A248 06:A238: A0        .byte $A0   ; enemy settings
- - - - - - 0x01A249 06:A239: 16        .byte con_obj_flame_grenades   ; enemy weapon
- - - - - - 0x01A24A 06:A23A: 00        .byte con_0359_00   ; enemy 0359 ???
- - - - - - 0x01A24B 06:A23B: 10 01     .word $0110 ; enemy pos_X
- - - - - - 0x01A24D 06:A23D: 00 00     .word $0000 ; enemy pos_Y
- - - - - - 0x01A24F 06:A23F: 70 00     .word $0070 ; enemy pos_Z
- - - - - - 0x01A251 06:A241: 00        .byte $00   ; enemy 006A ???
- - - - - - 0x01A252 06:A242: 38        .byte $38   ; enemy hp
; 05
- - - - - - 0x01A253 06:A243: A0        .byte $A0   ; enemy settings
- - - - - - 0x01A254 06:A244: 16        .byte con_obj_flame_grenades   ; enemy weapon
- - - - - - 0x01A255 06:A245: 00        .byte con_0359_00   ; enemy 0359 ???
- - - - - - 0x01A256 06:A246: FF 00     .word $00FF ; enemy pos_X
- - - - - - 0x01A258 06:A248: 00 00     .word $0000 ; enemy pos_Y
- - - - - - 0x01A25A 06:A24A: 70 00     .word $0070 ; enemy pos_Z
- - - - - - 0x01A25C 06:A24C: 00        .byte $00   ; enemy 006A ???
- - - - - - 0x01A25D 06:A24D: 38        .byte $38   ; enemy hp



off_0A_A24E_01:
- D 1 - I - 0x01A25E 06:A24E: 06        .byte con_884D_script_06   ; 
- D 1 - I - 0x01A25F 06:A24F: 0A        .byte con_A6C3_draw_final_door_0A   ; 



off_0A_A250_02_enter_door:
- D 1 - I - 0x01A260 06:A250: 04        .byte con_884D_script_enter_door   ; 
- D 1 - I - 0x01A261 06:A251: 07        .byte con_9859_07   ; 



off_0A_A252_03:
- D 1 - I - 0x01A262 06:A252: 81        .byte con_884D_script_81   ; 



off_0B_A253_00_spawn_williams:
- D 1 - I - 0x01A263 06:A253: 00        .byte con_884D_script_00   ; 
- D 1 - I - 0x01A264 06:A254: 00 00     .word $0000 ; X camera limit (min)
- D 1 - I - 0x01A266 06:A256: 00 00     .word $0000 ; X camera limit (max)
- D 1 - I - 0x01A268 06:A258: 00 00     .word $0000 ; Y camera limit (min)
- D 1 - I - 0x01A26A 06:A25A: 00 00     .word $0000 ; Y camera limit (max)
- D 1 - I - 0x01A26C 06:A25C: 00        .byte $00   ; 04B0 ???

- D 1 - I - 0x01A26D 06:A25D: 4E        .byte con_chr_bank + $4E   ; 
- D 1 - I - 0x01A26E 06:A25E: 02        .byte con_obj_williams   ; 
- D 1 - I - 0x01A26F 06:A25F: 04        .byte $04   ; enemy counter
; 01
- D 1 - I - 0x01A270 06:A260: A0        .byte $A0   ; enemy settings
- D 1 - I - 0x01A271 06:A261: 12        .byte con_obj_knife   ; enemy weapon
- D 1 - I - 0x01A272 06:A262: 02        .byte con_0359_02   ; enemy 0359 ???
- D 1 - I - 0x01A273 06:A263: 60 00     .word $0060 ; enemy pos_X
- D 1 - I - 0x01A275 06:A265: 38 00     .word $0038 ; enemy pos_Y
- D 1 - I - 0x01A277 06:A267: 80 00     .word $0080 ; enemy pos_Z
- D 1 - I - 0x01A279 06:A269: 00        .byte $00   ; enemy 006A ???
- D 1 - I - 0x01A27A 06:A26A: 1B        .byte $1B   ; enemy hp
; 02
- D 1 - I - 0x01A27B 06:A26B: A0        .byte $A0   ; enemy settings
- D 1 - I - 0x01A27C 06:A26C: 12        .byte con_obj_knife   ; enemy weapon
- D 1 - I - 0x01A27D 06:A26D: 00        .byte con_0359_00   ; enemy 0359 ???
- D 1 - I - 0x01A27E 06:A26E: 77 00     .word $0077 ; enemy pos_X
- D 1 - I - 0x01A280 06:A270: 30 00     .word $0030 ; enemy pos_Y
- D 1 - I - 0x01A282 06:A272: 40 00     .word $0040 ; enemy pos_Z
- D 1 - I - 0x01A284 06:A274: 00        .byte $00   ; enemy 006A ???
- D 1 - I - 0x01A285 06:A275: 1B        .byte $1B   ; enemy hp
; 0
- D 1 - I - 0x01A286 06:A276: A0        .byte $A0   ; enemy settings
- D 1 - I - 0x01A287 06:A277: 12        .byte con_obj_knife   ; enemy weapon
- D 1 - I - 0x01A288 06:A278: 02        .byte con_0359_02   ; enemy 0359 ???
- D 1 - I - 0x01A289 06:A279: 60 00     .word $0060 ; enemy pos_X
- D 1 - I - 0x01A28B 06:A27B: 38 00     .word $0038 ; enemy pos_Y
- D 1 - I - 0x01A28D 06:A27D: 80 00     .word $0080 ; enemy pos_Z
- D 1 - I - 0x01A28F 06:A27F: 00        .byte $00   ; enemy 006A ???
- D 1 - I - 0x01A290 06:A280: 1B        .byte $1B   ; enemy hp
; 04
- - - - - - 0x01A291 06:A281: A0        .byte $A0   ; enemy settings
- - - - - - 0x01A292 06:A282: 12        .byte con_obj_knife   ; enemy weapon
- - - - - - 0x01A293 06:A283: 00        .byte con_0359_00   ; enemy 0359 ???
- - - - - - 0x01A294 06:A284: 77 00     .word $0077 ; enemy pos_X
- - - - - - 0x01A296 06:A286: 30 00     .word $0030 ; enemy pos_Y
- - - - - - 0x01A298 06:A288: 40 00     .word $0040 ; enemy pos_Z
- - - - - - 0x01A29A 06:A28A: 00        .byte $00   ; enemy 006A ???
- - - - - - 0x01A29B 06:A28B: 1B        .byte $1B   ; enemy hp



off_0B_A28C_01_spawn_roper:
- D 1 - I - 0x01A29C 06:A28C: 00        .byte con_884D_script_00   ; 
- D 1 - I - 0x01A29D 06:A28D: 00 00     .word $0000 ; X camera limit (min)
- D 1 - I - 0x01A29F 06:A28F: 00 00     .word $0000 ; X camera limit (max)
- D 1 - I - 0x01A2A1 06:A291: 00 00     .word $0000 ; Y camera limit (min)
- D 1 - I - 0x01A2A3 06:A293: 00 00     .word $0000 ; Y camera limit (max)
- D 1 - I - 0x01A2A5 06:A295: 00        .byte $00   ; 04B0 ???

- D 1 - I - 0x01A2A6 06:A296: 64        .byte con_chr_bank + $64   ; 
- D 1 - I - 0x01A2A7 06:A297: 03        .byte con_obj_roper   ; 
- D 1 - I - 0x01A2A8 06:A298: 04        .byte $04   ; enemy counter
; 01
- D 1 - I - 0x01A2A9 06:A299: 20        .byte $20   ; enemy settings
- D 1 - I - 0x01A2AA 06:A29A: 02        .byte con_0359_02   ; enemy 0359 ???
- D 1 - I - 0x01A2AB 06:A29B: 60 00     .word $0060 ; enemy pos_X
- D 1 - I - 0x01A2AD 06:A29D: 38 00     .word $0038 ; enemy pos_Y
- D 1 - I - 0x01A2AF 06:A29F: 80 00     .word $0080 ; enemy pos_Z
- D 1 - I - 0x01A2B1 06:A2A1: 00        .byte $00   ; enemy 006A ???
- D 1 - I - 0x01A2B2 06:A2A2: 1F        .byte $1F   ; enemy hp
; 02
- D 1 - I - 0x01A2B3 06:A2A3: A0        .byte $A0   ; enemy settings
- D 1 - I - 0x01A2B4 06:A2A4: 16        .byte con_obj_flame_grenades   ; enemy weapon
- D 1 - I - 0x01A2B5 06:A2A5: 00        .byte con_0359_00   ; enemy 0359 ???
- D 1 - I - 0x01A2B6 06:A2A6: 77 00     .word $0077 ; enemy pos_X
- D 1 - I - 0x01A2B8 06:A2A8: 30 00     .word $0030 ; enemy pos_Y
- D 1 - I - 0x01A2BA 06:A2AA: 40 00     .word $0040 ; enemy pos_Z
- D 1 - I - 0x01A2BC 06:A2AC: 00        .byte $00   ; enemy 006A ???
- D 1 - I - 0x01A2BD 06:A2AD: 1F        .byte $1F   ; enemy hp
; 03
- D 1 - I - 0x01A2BE 06:A2AE: A0        .byte $A0   ; enemy settings
- D 1 - I - 0x01A2BF 06:A2AF: 16        .byte con_obj_flame_grenades   ; enemy weapon
- D 1 - I - 0x01A2C0 06:A2B0: 02        .byte con_0359_02   ; enemy 0359 ???
- D 1 - I - 0x01A2C1 06:A2B1: 60 00     .word $0060 ; enemy pos_X
- D 1 - I - 0x01A2C3 06:A2B3: 38 00     .word $0038 ; enemy pos_Y
- D 1 - I - 0x01A2C5 06:A2B5: 80 00     .word $0080 ; enemy pos_Z
- D 1 - I - 0x01A2C7 06:A2B7: 00        .byte $00   ; enemy 006A ???
- D 1 - I - 0x01A2C8 06:A2B8: 1F        .byte $1F   ; enemy hp
; 04
- - - - - - 0x01A2C9 06:A2B9: A0        .byte $A0   ; enemy settings
- - - - - - 0x01A2CA 06:A2BA: 16        .byte con_obj_flame_grenades   ; enemy weapon
- - - - - - 0x01A2CB 06:A2BB: 00        .byte con_0359_00   ; enemy 0359 ???
- - - - - - 0x01A2CC 06:A2BC: 77 00     .word $0077 ; enemy pos_X
- - - - - - 0x01A2CE 06:A2BE: 30 00     .word $0030 ; enemy pos_Y
- - - - - - 0x01A2D0 06:A2C0: 40 00     .word $0040 ; enemy pos_Z
- - - - - - 0x01A2D2 06:A2C2: 00        .byte $00   ; enemy 006A ???
- - - - - - 0x01A2D3 06:A2C3: 1F        .byte $1F   ; enemy hp



off_0B_A2C4_02_spawn_chin_taimei:
- D 1 - I - 0x01A2D4 06:A2C4: 00        .byte con_884D_script_00   ; 
- D 1 - I - 0x01A2D5 06:A2C5: 00 00     .word $0000 ; X camera limit (min)
- D 1 - I - 0x01A2D7 06:A2C7: 00 00     .word $0000 ; X camera limit (max)
- D 1 - I - 0x01A2D9 06:A2C9: 00 00     .word $0000 ; Y camera limit (min)
- D 1 - I - 0x01A2DB 06:A2CB: 00 00     .word $0000 ; Y camera limit (max)
- D 1 - I - 0x01A2DD 06:A2CD: 00        .byte $00   ; 04B0 ???

- D 1 - I - 0x01A2DE 06:A2CE: 4C        .byte con_chr_bank + $4C   ; 
- D 1 - I - 0x01A2DF 06:A2CF: 09        .byte con_obj_chin_taimei   ; 
- D 1 - I - 0x01A2E0 06:A2D0: 02        .byte $02   ; enemy counter
; 01
- D 1 - I - 0x01A2E1 06:A2D1: 20        .byte $20   ; enemy settings
- D 1 - I - 0x01A2E2 06:A2D2: 00        .byte con_0359_00   ; enemy 0359 ???
- D 1 - I - 0x01A2E3 06:A2D3: 77 00     .word $0077 ; enemy pos_X
- D 1 - I - 0x01A2E5 06:A2D5: 30 00     .word $0030 ; enemy pos_Y
- D 1 - I - 0x01A2E7 06:A2D7: 40 00     .word $0040 ; enemy pos_Z
- D 1 - I - 0x01A2E9 06:A2D9: 00        .byte $00   ; enemy 006A ???
- D 1 - I - 0x01A2EA 06:A2DA: 17        .byte $17   ; enemy hp
; 02
- D 1 - I - 0x01A2EB 06:A2DB: 20        .byte $20   ; enemy settings
- D 1 - I - 0x01A2EC 06:A2DC: 00        .byte con_0359_00   ; enemy 0359 ???
- D 1 - I - 0x01A2ED 06:A2DD: 1B 00     .word $001B ; enemy pos_X
- D 1 - I - 0x01A2EF 06:A2DF: 17 00     .word $0017 ; enemy pos_Y
- D 1 - I - 0x01A2F1 06:A2E1: 40 00     .word $0040 ; enemy pos_Z
- D 1 - I - 0x01A2F3 06:A2E3: 00        .byte $00   ; enemy 006A ???
- D 1 - I - 0x01A2F4 06:A2E4: 17        .byte $17   ; enemy hp



off_0B_A2E5_03_spawn_right_arm:
- D 1 - I - 0x01A2F5 06:A2E5: 00        .byte con_884D_script_00   ; 
- D 1 - I - 0x01A2F6 06:A2E6: 00 00     .word $0000 ; X camera limit (min)
- D 1 - I - 0x01A2F8 06:A2E8: 00 00     .word $0000 ; X camera limit (max)
- D 1 - I - 0x01A2FA 06:A2EA: 00 00     .word $0000 ; Y camera limit (min)
- D 1 - I - 0x01A2FC 06:A2EC: 00 00     .word $0000 ; Y camera limit (max)
- D 1 - I - 0x01A2FE 06:A2EE: 00        .byte $00   ; 04B0 ???

- D 1 - I - 0x01A2FF 06:A2EF: 54        .byte con_chr_bank + $54   ; 
- D 1 - I - 0x01A300 06:A2F0: 0A        .byte con_obj_right_arm   ; 
- D 1 - I - 0x01A301 06:A2F1: 02        .byte $02   ; enemy counter
; 01
- D 1 - I - 0x01A302 06:A2F2: 20        .byte $20   ; enemy settings
- D 1 - I - 0x01A303 06:A2F3: 01        .byte con_0359_01   ; enemy 0359 ???
- D 1 - I - 0x01A304 06:A2F4: F0 00     .word $00F0 ; enemy pos_X
- D 1 - I - 0x01A306 06:A2F6: 0F 00     .word $000F ; enemy pos_Y
- D 1 - I - 0x01A308 06:A2F8: 80 00     .word $0080 ; enemy pos_Z
- D 1 - I - 0x01A30A 06:A2FA: 00        .byte $00   ; enemy 006A ???
- D 1 - I - 0x01A30B 06:A2FB: 47        .byte $47   ; enemy hp
; 02
- D 1 - I - 0x01A30C 06:A2FC: 20        .byte $20   ; enemy settings
- D 1 - I - 0x01A30D 06:A2FD: 01        .byte con_0359_01   ; enemy 0359 ???
- D 1 - I - 0x01A30E 06:A2FE: F0 00     .word $00F0 ; enemy pos_X
- D 1 - I - 0x01A310 06:A300: 12 00     .word $0012 ; enemy pos_Y
- D 1 - I - 0x01A312 06:A302: 80 00     .word $0080 ; enemy pos_Z
- D 1 - I - 0x01A314 06:A304: 00        .byte $00   ; enemy 006A ???
- D 1 - I - 0x01A315 06:A305: 47        .byte $47   ; enemy hp



off_0B_A306_04:
- D 1 - I - 0x01A316 06:A306: 13        .byte con_884D_script_13   ; 



off_0B_A307_05_spawn_abore:
- D 1 - I - 0x01A317 06:A307: 00        .byte con_884D_script_00   ; 
- D 1 - I - 0x01A318 06:A308: 00 00     .word $0000 ; X camera limit (min)
- D 1 - I - 0x01A31A 06:A30A: 00 00     .word $0000 ; X camera limit (max)
- D 1 - I - 0x01A31C 06:A30C: 00 00     .word $0000 ; Y camera limit (min)
- D 1 - I - 0x01A31E 06:A30E: 00 00     .word $0000 ; Y camera limit (max)
- D 1 - I - 0x01A320 06:A310: 00        .byte $00   ; 04B0 ???

- D 1 - I - 0x01A321 06:A311: 52        .byte con_chr_bank + $52   ; 
- D 1 - I - 0x01A322 06:A312: 08        .byte con_obj_abore   ; 
- D 1 - I - 0x01A323 06:A313: 01        .byte $01   ; enemy counter
; 01
- D 1 - I - 0x01A324 06:A314: 20        .byte $20   ; enemy settings
- D 1 - I - 0x01A325 06:A315: 00        .byte con_0359_00   ; enemy 0359 ???
- D 1 - I - 0x01A326 06:A316: 77 00     .word $0077 ; enemy pos_X
- D 1 - I - 0x01A328 06:A318: 30 00     .word $0030 ; enemy pos_Y
- D 1 - I - 0x01A32A 06:A31A: 40 00     .word $0040 ; enemy pos_Z
- D 1 - I - 0x01A32C 06:A31C: 00        .byte $00   ; enemy 006A ???
- D 1 - I - 0x01A32D 06:A31D: 5F        .byte $5F   ; enemy hp



off_0B_A31E_06:
- D 1 - I - 0x01A32E 06:A31E: 08        .byte con_884D_script_08   ; 



off_0B_A31F_07:
- D 1 - I - 0x01A32F 06:A31F: 81        .byte con_884D_script_81   ; 



off_0C_A320_00_spawn_chin_taimei:
- D 1 - I - 0x01A330 06:A320: 00        .byte con_884D_script_00   ; 
- D 1 - I - 0x01A331 06:A321: 00 00     .word $0000 ; X camera limit (min)
- D 1 - I - 0x01A333 06:A323: FF 00     .word $00FF ; X camera limit (max)
- D 1 - I - 0x01A335 06:A325: F0 00     .word $00F0 ; Y camera limit (min)
- D 1 - I - 0x01A337 06:A327: F0 00     .word $00F0 ; Y camera limit (max)
- D 1 - I - 0x01A339 06:A329: 01        .byte $01   ; 04B0 ???

- D 1 - I - 0x01A33A 06:A32A: 4C        .byte con_chr_bank + $4C   ; 
- D 1 - I - 0x01A33B 06:A32B: 09        .byte con_obj_chin_taimei   ; 
- D 1 - I - 0x01A33C 06:A32C: 05        .byte $05   ; enemy counter
; 01
- D 1 - I - 0x01A33D 06:A32D: 00        .byte $00   ; enemy settings
- D 1 - I - 0x01A33E 06:A32E: 17        .byte $17   ; enemy hp
; 02
- D 1 - I - 0x01A33F 06:A32F: 00        .byte $00   ; enemy settings
- D 1 - I - 0x01A340 06:A330: 17        .byte $17   ; enemy hp
; 03
- D 1 - I - 0x01A341 06:A331: 00        .byte $00   ; enemy settings
- D 1 - I - 0x01A342 06:A332: 17        .byte $17   ; enemy hp
; 04
- - - - - - 0x01A343 06:A333: 00        .byte $00   ; enemy settings
- - - - - - 0x01A344 06:A334: 17        .byte $17   ; enemy hp
; 05
- - - - - - 0x01A345 06:A335: 00        .byte $00   ; enemy settings
- - - - - - 0x01A346 06:A336: 17        .byte $17   ; enemy hp



off_0C_A337_01:
- D 1 - I - 0x01A347 06:A337: 80        .byte con_884D_script_80   ; 



off_0C_A338_02_cursor:
- D 1 - I - 0x01A348 06:A338: 01        .byte con_884D_script_hand_cursor   ; 
- D 1 - I - 0x01A349 06:A339: 00 00     .word $0000 ; X camera limit (min)
- D 1 - I - 0x01A34B 06:A33B: FF 01     .word $01FF ; X camera limit (max)
- D 1 - I - 0x01A34D 06:A33D: 00 00     .word $0000 ; Y camera limit (min)
- D 1 - I - 0x01A34F 06:A33F: F0 00     .word $00F0 ; Y camera limit (max)
- D 1 - I - 0x01A351 06:A341: 01        .byte $01   ; 04B0 ???

- D 1 - I - 0x01A352 06:A342: 03        .byte $03   ; cursor direction (right)



off_0C_A343_03:
- D 1 - I - 0x01A353 06:A343: 02        .byte con_884D_script_02   ; 
- D 1 - I - 0x01A354 06:A344: FF        .byte $FF   ; 
- D 1 - I - 0x01A355 06:A345: 01        .byte $01   ; 
- D 1 - I - 0x01A356 06:A346: F0        .byte $F0   ; 
- D 1 - I - 0x01A357 06:A347: 00        .byte $00   ; 



off_0C_A348_04_spawn_right_arm:
- D 1 - I - 0x01A358 06:A348: 00        .byte con_884D_script_00   ; 
- D 1 - I - 0x01A359 06:A349: FF 01     .word $01FF ; X camera limit (min)
- D 1 - I - 0x01A35B 06:A34B: FF 01     .word $01FF ; X camera limit (max)
- D 1 - I - 0x01A35D 06:A34D: 00 00     .word $0000 ; Y camera limit (min)
- D 1 - I - 0x01A35F 06:A34F: F0 00     .word $00F0 ; Y camera limit (max)
- D 1 - I - 0x01A361 06:A351: 00        .byte $00   ; 04B0 ???

- D 1 - I - 0x01A362 06:A352: 54        .byte con_chr_bank + $54   ; 
- D 1 - I - 0x01A363 06:A353: 0A        .byte con_obj_right_arm   ; 
- D 1 - I - 0x01A364 06:A354: 05        .byte $05   ; enemy counter
; 01
- D 1 - I - 0x01A365 06:A355: 60        .byte $60   ; enemy settings
- D 1 - I - 0x01A366 06:A356: 07        .byte con_state_fall_from_platform   ; enemy state
- D 1 - I - 0x01A367 06:A357: 00        .byte con_0359_00   ; enemy 0359 ???
- D 1 - I - 0x01A368 06:A358: 27 02     .word $0227 ; enemy pos_X
- D 1 - I - 0x01A36A 06:A35A: 50 00     .word $0050 ; enemy pos_Y
- D 1 - I - 0x01A36C 06:A35C: 20 01     .word $0120 ; enemy pos_Z
- D 1 - I - 0x01A36E 06:A35E: 00        .byte $00   ; enemy 006A ???
- D 1 - I - 0x01A36F 06:A35F: 1F        .byte $1F   ; enemy hp
; 02
- D 1 - I - 0x01A370 06:A360: 60        .byte $60   ; enemy settings
- D 1 - I - 0x01A371 06:A361: 07        .byte con_state_fall_from_platform   ; enemy state
- D 1 - I - 0x01A372 06:A362: 00        .byte con_0359_00   ; enemy 0359 ???
- D 1 - I - 0x01A373 06:A363: E5 02     .word $02E5 ; enemy pos_X
- D 1 - I - 0x01A375 06:A365: 50 00     .word $0050 ; enemy pos_Y
- D 1 - I - 0x01A377 06:A367: 20 01     .word $0120 ; enemy pos_Z
- D 1 - I - 0x01A379 06:A369: 00        .byte $00   ; enemy 006A ???
- D 1 - I - 0x01A37A 06:A36A: 1F        .byte $1F   ; enemy hp
; 03
- D 1 - I - 0x01A37B 06:A36B: 60        .byte $60   ; enemy settings
- D 1 - I - 0x01A37C 06:A36C: 07        .byte con_state_fall_from_platform   ; enemy state
- D 1 - I - 0x01A37D 06:A36D: 00        .byte con_0359_00   ; enemy 0359 ???
- D 1 - I - 0x01A37E 06:A36E: 27 02     .word $0227 ; enemy pos_X
- D 1 - I - 0x01A380 06:A370: 50 00     .word $0050 ; enemy pos_Y
- D 1 - I - 0x01A382 06:A372: 20 01     .word $0120 ; enemy pos_Z
- D 1 - I - 0x01A384 06:A374: 00        .byte $00   ; enemy 006A ???
- D 1 - I - 0x01A385 06:A375: 1F        .byte $1F   ; enemy hp
; 04
- - - - - - 0x01A386 06:A376: 60        .byte $60   ; enemy settings
- - - - - - 0x01A387 06:A377: 07        .byte con_state_fall_from_platform   ; enemy state
- - - - - - 0x01A388 06:A378: 00        .byte con_0359_00   ; enemy 0359 ???
- - - - - - 0x01A389 06:A379: E5 02     .word $02E5 ; enemy pos_X
- - - - - - 0x01A38B 06:A37B: 50 00     .word $0050 ; enemy pos_Y
- - - - - - 0x01A38D 06:A37D: 20 01     .word $0120 ; enemy pos_Z
- - - - - - 0x01A38F 06:A37F: 00        .byte $00   ; enemy 006A ???
- - - - - - 0x01A390 06:A380: 1F        .byte $1F   ; enemy hp
; 05
- - - - - - 0x01A391 06:A381: 60        .byte $60   ; enemy settings
- - - - - - 0x01A392 06:A382: 07        .byte con_state_fall_from_platform   ; enemy state
- - - - - - 0x01A393 06:A383: 00        .byte con_0359_00   ; enemy 0359 ???
- - - - - - 0x01A394 06:A384: 27 02     .word $0227 ; enemy pos_X
- - - - - - 0x01A396 06:A386: 50 00     .word $0050 ; enemy pos_Y
- - - - - - 0x01A398 06:A388: 20 01     .word $0120 ; enemy pos_Z
- - - - - - 0x01A39A 06:A38A: 00        .byte $00   ; enemy 006A ???
- - - - - - 0x01A39B 06:A38B: 1F        .byte $1F   ; enemy hp



off_0C_A38C_05_cursor:
- D 1 - I - 0x01A39C 06:A38C: 01        .byte con_884D_script_hand_cursor   ; 
- D 1 - I - 0x01A39D 06:A38D: 00 00     .word $0000 ; X camera limit (min)
- D 1 - I - 0x01A39F 06:A38F: FF 01     .word $01FF ; X camera limit (max)
- D 1 - I - 0x01A3A1 06:A391: 00 00     .word $0000 ; Y camera limit (min)
- D 1 - I - 0x01A3A3 06:A393: F0 00     .word $00F0 ; Y camera limit (max)
- D 1 - I - 0x01A3A5 06:A395: 05        .byte $05   ; 04B0 ???

- D 1 - I - 0x01A3A6 06:A396: 01        .byte $01   ; cursor direction (down)



off_0C_A397_06:
- D 1 - I - 0x01A3A7 06:A397: 80        .byte con_884D_script_80   ; 



off_0C_A398_07:
- D 1 - I - 0x01A3A8 06:A398: 07        .byte con_884D_script_07   ; 
- D 1 - I - 0x01A3A9 06:A399: 04        .byte $04   ; 
- D 1 - I - 0x01A3AA 06:A39A: 20        .byte $20   ; 
- D 1 - I - 0x01A3AB 06:A39B: 00        .byte $00   ; 



off_0C_A39C_08:
- D 1 - I - 0x01A3AC 06:A39C: 80        .byte con_884D_script_80   ; 



off_0C_A39D_09_spawn_abore:
- D 1 - I - 0x01A3AD 06:A39D: 00        .byte con_884D_script_00   ; 
- D 1 - I - 0x01A3AE 06:A39E: FF 01     .word $01FF ; X camera limit (min)
- D 1 - I - 0x01A3B0 06:A3A0: FF 01     .word $01FF ; X camera limit (max)
- D 1 - I - 0x01A3B2 06:A3A2: 00 00     .word $0000 ; Y camera limit (min)
- D 1 - I - 0x01A3B4 06:A3A4: F0 00     .word $00F0 ; Y camera limit (max)
- D 1 - I - 0x01A3B6 06:A3A6: 04        .byte $04   ; 04B0 ???

- D 1 - I - 0x01A3B7 06:A3A7: 52        .byte con_chr_bank + $52   ; 
- D 1 - I - 0x01A3B8 06:A3A8: 08        .byte con_obj_abore   ; 
- D 1 - I - 0x01A3B9 06:A3A9: 01        .byte $01   ; enemy counter
; 01
- D 1 - I - 0x01A3BA 06:A3AA: 00        .byte $00   ; enemy settings
- D 1 - I - 0x01A3BB 06:A3AB: 37        .byte $37   ; enemy hp



off_0C_A3AC_0A_spawn_bolo_1:
- D 1 - I - 0x01A3BC 06:A3AC: 00        .byte con_884D_script_00   ; 
- D 1 - I - 0x01A3BD 06:A3AD: FF 01     .word $01FF ; X camera limit (min)
- D 1 - I - 0x01A3BF 06:A3AF: FF 01     .word $01FF ; X camera limit (max)
- D 1 - I - 0x01A3C1 06:A3B1: 00 00     .word $0000 ; Y camera limit (min)
- D 1 - I - 0x01A3C3 06:A3B3: F0 00     .word $00F0 ; Y camera limit (max)
- D 1 - I - 0x01A3C5 06:A3B5: 04        .byte $04   ; 04B0 ???

- D 1 - I - 0x01A3C6 06:A3B6: 46        .byte con_chr_bank + $46   ; 
- D 1 - I - 0x01A3C7 06:A3B7: 06        .byte con_obj_bolo   ; 
- D 1 - I - 0x01A3C8 06:A3B8: 01        .byte $01   ; enemy counter
; 01
- D 1 - I - 0x01A3C9 06:A3B9: 00        .byte $00   ; enemy settings
- D 1 - I - 0x01A3CA 06:A3BA: 27        .byte $27   ; enemy hp



off_0C_A3BB_0B_spawn_bolo_2:
- D 1 - I - 0x01A3CB 06:A3BB: 00        .byte con_884D_script_00   ; 
- D 1 - I - 0x01A3CC 06:A3BC: FF 01     .word $01FF ; X camera limit (min)
- D 1 - I - 0x01A3CE 06:A3BE: FF 01     .word $01FF ; X camera limit (max)
- D 1 - I - 0x01A3D0 06:A3C0: 00 00     .word $0000 ; Y camera limit (min)
- D 1 - I - 0x01A3D2 06:A3C2: F0 00     .word $00F0 ; Y camera limit (max)
- D 1 - I - 0x01A3D4 06:A3C4: 04        .byte $04   ; 04B0 ???

- D 1 - I - 0x01A3D5 06:A3C5: 46        .byte con_chr_bank + $46   ; 
- D 1 - I - 0x01A3D6 06:A3C6: 06        .byte con_obj_bolo   ; 
- D 1 - I - 0x01A3D7 06:A3C7: 01        .byte $01   ; enemy counter
; 01
- D 1 - I - 0x01A3D8 06:A3C8: 00        .byte $00   ; enemy settings
- D 1 - I - 0x01A3D9 06:A3C9: 27        .byte $27   ; enemy hp



off_0C_A3CA_0C:
- D 1 - I - 0x01A3DA 06:A3CA: 07        .byte con_884D_script_07   ; 
- D 1 - I - 0x01A3DB 06:A3CB: 06        .byte $06   ; 
- D 1 - I - 0x01A3DC 06:A3CC: 00        .byte $00   ; 
- D 1 - I - 0x01A3DD 06:A3CD: 00        .byte $00   ; 



off_0C_A3CE_0D_cursor:
- D 1 - I - 0x01A3DE 06:A3CE: 01        .byte con_884D_script_hand_cursor   ; 
- D 1 - I - 0x01A3DF 06:A3CF: 00 00     .word $0000 ; X camera limit (min)
- D 1 - I - 0x01A3E1 06:A3D1: FF 02     .word $02FF ; X camera limit (max)
- D 1 - I - 0x01A3E3 06:A3D3: 00 00     .word $0000 ; Y camera limit (min)
- D 1 - I - 0x01A3E5 06:A3D5: F0 00     .word $00F0 ; Y camera limit (max)
- D 1 - I - 0x01A3E7 06:A3D7: 05        .byte $05   ; 04B0 ???

- D 1 - I - 0x01A3E8 06:A3D8: 03        .byte $03   ; cursor direction (right)



off_0C_A3D9_0E:
- D 1 - I - 0x01A3E9 06:A3D9: 03        .byte con_884D_script_03   ; 
- D 1 - I - 0x01A3EA 06:A3DA: 00 00     .word $0000 ; X camera limit (min)
- D 1 - I - 0x01A3EC 06:A3DC: FF 03     .word $03FF ; X camera limit (max)
- D 1 - I - 0x01A3EE 06:A3DE: 00 00     .word $0000 ; Y camera limit (min)
- D 1 - I - 0x01A3F0 06:A3E0: F0 00     .word $00F0 ; Y camera limit (max)
- D 1 - I - 0x01A3F2 06:A3E2: 01        .byte $01   ; 04B0 ???

- D 1 - I - 0x01A3F3 06:A3E3: 44        .byte con_chr_bank + $44   ; 
- D 1 - I - 0x01A3F4 06:A3E4: 04        .byte con_obj_linda   ; 
- - - - - - 0x01A3F5 06:A3E5: 00        .byte $00   ; 



off_0C_A3E6_0F:
- D 1 - I - 0x01A3F6 06:A3E6: 02        .byte con_884D_script_02   ; 
- D 1 - I - 0x01A3F7 06:A3E7: FF        .byte $FF   ; 
- D 1 - I - 0x01A3F8 06:A3E8: 02        .byte $02   ; 
- D 1 - I - 0x01A3F9 06:A3E9: 00        .byte $00   ; 
- D 1 - I - 0x01A3FA 06:A3EA: 00        .byte $00   ; 



off_0C_A3EB_10_spawn_ninja:
- D 1 - I - 0x01A3FB 06:A3EB: 00        .byte con_884D_script_00   ; 
- D 1 - I - 0x01A3FC 06:A3EC: 00 00     .word $0000 ; X camera limit (min)
- D 1 - I - 0x01A3FE 06:A3EE: FF 02     .word $02FF ; X camera limit (max)
- D 1 - I - 0x01A400 06:A3F0: 00 00     .word $0000 ; Y camera limit (min)
- D 1 - I - 0x01A402 06:A3F2: 00 00     .word $0000 ; Y camera limit (max)
- D 1 - I - 0x01A404 06:A3F4: 00        .byte $00   ; 04B0 ???

- D 1 - I - 0x01A405 06:A3F5: 56        .byte con_chr_bank + $56   ; 
- D 1 - I - 0x01A406 06:A3F6: 0F        .byte con_obj_ninja   ; 
- D 1 - I - 0x01A407 06:A3F7: 06        .byte $06   ; enemy counter
; 01
- D 1 - I - 0x01A408 06:A3F8: 00        .byte $00   ; enemy settings
- D 1 - I - 0x01A409 06:A3F9: 1F        .byte $1F   ; enemy hp
; 02
- D 1 - I - 0x01A40A 06:A3FA: 00        .byte $00   ; enemy settings
- D 1 - I - 0x01A40B 06:A3FB: 1F        .byte $1F   ; enemy hp
; 03
- D 1 - I - 0x01A40C 06:A3FC: 00        .byte $00   ; enemy settings
- D 1 - I - 0x01A40D 06:A3FD: 1F        .byte $1F   ; enemy hp
; 04
- D 1 - I - 0x01A40E 06:A3FE: 00        .byte $00   ; enemy settings
- D 1 - I - 0x01A40F 06:A3FF: 1F        .byte $1F   ; enemy hp
; 05
- - - - - - 0x01A410 06:A400: 00        .byte $00   ; enemy settings
- - - - - - 0x01A411 06:A401: 1F        .byte $1F   ; enemy hp
; 06
- - - - - - 0x01A412 06:A402: 00        .byte $00   ; enemy settings
- - - - - - 0x01A413 06:A403: 1F        .byte $1F   ; enemy hp



off_0C_A404_11:
- D 1 - I - 0x01A414 06:A404: 16        .byte con_884D_script_16   ; 
- D 1 - I - 0x01A415 06:A405: 0D        .byte con_music_boss_clone   ; 



off_0C_A406_12:
- D 1 - I - 0x01A416 06:A406: 1A        .byte con_884D_script_1A   ; 



off_0C_A407_13_spawn_doppelganger:
- D 1 - I - 0x01A417 06:A407: 00        .byte con_884D_script_00   ; 
- D 1 - I - 0x01A418 06:A408: 00 00     .word $0000 ; X camera limit (min)
- D 1 - I - 0x01A41A 06:A40A: FF 02     .word $02FF ; X camera limit (max)
- D 1 - I - 0x01A41C 06:A40C: 00 00     .word $0000 ; Y camera limit (min)
- D 1 - I - 0x01A41E 06:A40E: 00 00     .word $0000 ; Y camera limit (max)
- D 1 - I - 0x01A420 06:A410: 00        .byte $00   ; 04B0 ???

- D 1 - I - 0x01A421 06:A411: 4A        .byte con_chr_bank + $4A   ; 
- D 1 - I - 0x01A422 06:A412: 0C        .byte con_obj_doppelganger   ; 
- - - - - - 0x01A423 06:A413: 02        .byte $02   ; enemy counter
; 01
- D 1 - I - 0x01A424 06:A414: 60        .byte $60   ; enemy settings
- D 1 - I - 0x01A425 06:A415: 10        .byte con_state_doppelganger_spawn   ; enemy state
- D 1 - I - 0x01A426 06:A416: 01        .byte con_0359_01   ; enemy 0359 ???
- D 1 - I - 0x01A427 06:A417: 70 03     .word $0370 ; enemy pos_X
- D 1 - I - 0x01A429 06:A419: 32 00     .word $0032 ; enemy pos_Y
- D 1 - I - 0x01A42B 06:A41B: 40 00     .word $0040 ; enemy pos_Z
- D 1 - I - 0x01A42D 06:A41D: 00        .byte $00   ; enemy 006A ???
- D 1 - I - 0x01A42E 06:A41E: 80        .byte $80   ; enemy hp
; 02
- - - - - - 0x01A42F 06:A41F: 60        .byte $60   ; enemy settings
- - - - - - 0x01A430 06:A420: 10        .byte con_state_doppelganger_spawn   ; enemy state
- - - - - - 0x01A431 06:A421: 01        .byte con_0359_01   ; enemy 0359 ???
- - - - - - 0x01A432 06:A422: 89 03     .word $0389 ; enemy pos_X
- - - - - - 0x01A434 06:A424: 32 00     .word $0032 ; enemy pos_Y
- - - - - - 0x01A436 06:A426: 40 00     .word $0040 ; enemy pos_Z
- - - - - - 0x01A438 06:A428: 00        .byte $00   ; enemy 006A ???
- - - - - - 0x01A439 06:A429: 80        .byte $80   ; enemy hp



off_0C_A42A_14:
- D 1 - I - 0x01A43A 06:A42A: 08        .byte con_884D_script_08   ; 



off_0C_A42B_15:
- D 1 - I - 0x01A43B 06:A42B: 81        .byte con_884D_script_81   ; 



off_0D_A42C_00:
- D 1 - I - 0x01A43C 06:A42C: 18        .byte con_884D_script_18   ; 



off_0D_A42D_01:
- D 1 - I - 0x01A43D 06:A42D: 81        .byte con_884D_script_81   ; 



off_0E_A42E_00:
- D 1 - I - 0x01A43E 06:A42E: 03        .byte con_884D_script_03   ; 
- D 1 - I - 0x01A43F 06:A42F: 00 00     .word $0000 ; X camera limit (min)
- D 1 - I - 0x01A441 06:A431: FF 01     .word $01FF ; X camera limit (max)
- D 1 - I - 0x01A443 06:A433: 00 00     .word $0000 ; Y camera limit (min)
- D 1 - I - 0x01A445 06:A435: 00 00     .word $0000 ; Y camera limit (max)
- D 1 - I - 0x01A447 06:A437: 00        .byte $00   ; 04B0 ???

- D 1 - I - 0x01A448 06:A438: 58        .byte con_chr_bank + $58   ; 
- D 1 - I - 0x01A449 06:A439: 11        .byte con_obj_shadow_warrior   ; 
- - - - - - 0x01A44A 06:A43A: 00        .byte $00   ; 



off_0E_A43B_01_spawn_shadow_warrior:
- D 1 - I - 0x01A44B 06:A43B: 19        .byte con_884D_script_shadow_warrior   ; 
- D 1 - I - 0x01A44C 06:A43C: 00 00     .word $0000 ; X camera limit (min)
- D 1 - I - 0x01A44E 06:A43E: FF 01     .word $01FF ; X camera limit (max)
- D 1 - I - 0x01A450 06:A440: 00 00     .word $0000 ; Y camera limit (min)
- D 1 - I - 0x01A452 06:A442: 00 00     .word $0000 ; Y camera limit (max)
- D 1 - I - 0x01A454 06:A444: 00        .byte $00   ; 04B0 ???

- D 1 - I - 0x01A455 06:A445: 58        .byte con_chr_bank + $58   ; 
- D 1 - I - 0x01A456 06:A446: 11        .byte con_obj_shadow_warrior   ; 
- D 1 - I - 0x01A457 06:A447: 01        .byte $01   ; enemy counter
; 01
- D 1 - I - 0x01A458 06:A448: 20        .byte $20   ; enemy settings
- D 1 - I - 0x01A459 06:A449: 00        .byte con_0359_00   ; enemy 0359 ???
- D 1 - I - 0x01A45A 06:A44A: 80 01     .word $0180 ; enemy pos_X
- D 1 - I - 0x01A45C 06:A44C: 50 00     .word $0050 ; enemy pos_Y
- D 1 - I - 0x01A45E 06:A44E: 00 00     .word $0000 ; enemy pos_Z
- D 1 - I - 0x01A460 06:A450: 00        .byte $00   ; enemy 006A ???
- D 1 - I - 0x01A461 06:A451: FF        .byte $FF   ; enemy hp



off_0E_A452_02:
off_0E_A452_03:
- D 1 - I - 0x01A462 06:A452: 0B        .byte con_884D_script_final_boss_defeated   ; 



tbl_A453_positions:
- D 1 - I - 0x01A463 06:A453: 8F A4     .word _cam_pos_A48F_00
- D 1 - I - 0x01A465 06:A455: AD A4     .word _plr_pos_A4AD_00
- D 1 - I - 0x01A467 06:A457: 93 A4     .word _cam_pos_A493_01
- D 1 - I - 0x01A469 06:A459: B5 A4     .word _plr_pos_A4B5_01
- D 1 - I - 0x01A46B 06:A45B: 8F A4     .word _cam_pos_A48F_02
- D 1 - I - 0x01A46D 06:A45D: BD A4     .word _plr_pos_A4BD_02
- D 1 - I - 0x01A46F 06:A45F: 97 A4     .word _cam_pos_A497_03
- D 1 - I - 0x01A471 06:A461: C5 A4     .word _plr_pos_A4C5_03
- D 1 - I - 0x01A473 06:A463: 8F A4     .word _cam_pos_A48F_04
- D 1 - I - 0x01A475 06:A465: CD A4     .word _plr_pos_A4CD_04
- D 1 - I - 0x01A477 06:A467: 9B A4     .word _cam_pos_A49B_05
- D 1 - I - 0x01A479 06:A469: D5 A4     .word _plr_pos_A4D5_05
- D 1 - I - 0x01A47B 06:A46B: A1 A4     .word _cam_pos_A4A1_06
- D 1 - I - 0x01A47D 06:A46D: DD A4     .word _plr_pos_A4DD_06
- D 1 - I - 0x01A47F 06:A46F: 8F A4     .word _cam_pos_A48F_07
- D 1 - I - 0x01A481 06:A471: E5 A4     .word _plr_pos_A4E5_07
- D 1 - I - 0x01A483 06:A473: 8F A4     .word _cam_pos_A48F_08
- D 1 - I - 0x01A485 06:A475: ED A4     .word _plr_pos_A4ED_08
- D 1 - I - 0x01A487 06:A477: 8F A4     .word _cam_pos_A48F_09
- D 1 - I - 0x01A489 06:A479: F5 A4     .word _plr_pos_A4F5_09
- D 1 - I - 0x01A48B 06:A47B: 8F A4     .word _cam_pos_A48F_0A
- D 1 - I - 0x01A48D 06:A47D: FD A4     .word _plr_pos_A4FD_0A
- D 1 - I - 0x01A48F 06:A47F: 8F A4     .word _cam_pos_A48F_0B
- D 1 - I - 0x01A491 06:A481: 05 A5     .word _plr_pos_A505_0B
- D 1 - I - 0x01A493 06:A483: A5 A4     .word _cam_pos_A4A5_0C
- D 1 - I - 0x01A495 06:A485: 0D A5     .word _plr_pos_A50D_0C
- D 1 - I - 0x01A497 06:A487: 8F A4     .word _cam_pos_A48F_0D
- D 1 - I - 0x01A499 06:A489: 15 A5     .word _plr_pos_A515_0D
- D 1 - I - 0x01A49B 06:A48B: A9 A4     .word _cam_pos_A4A9_0E
- D 1 - I - 0x01A49D 06:A48D: 1D A5     .word _plr_pos_A51D_0E



_cam_pos_A48F_00:
_cam_pos_A48F_02:
_cam_pos_A48F_04:
_cam_pos_A48F_07:
_cam_pos_A48F_08:
_cam_pos_A48F_09:
_cam_pos_A48F_0A:
_cam_pos_A48F_0B:
_cam_pos_A48F_0D:
- D 1 - I - 0x01A49F 06:A48F: 00 00     .word $0000 ; X
- D 1 - I - 0x01A4A1 06:A491: 00 00     .word $0000 ; Y

_cam_pos_A493_01:
- D 1 - I - 0x01A4A3 06:A493: 00 00     .word $0000 ; X
- D 1 - I - 0x01A4A5 06:A495: E0 00     .word $00E0 ; Y

_cam_pos_A497_03:
- D 1 - I - 0x01A4A7 06:A497: 00 00     .word $0000 ; X
- D 1 - I - 0x01A4A9 06:A499: E0 01     .word $01E0 ; Y

_cam_pos_A49B_05:
- D 1 - I - 0x01A4AB 06:A49B: 00 00     .word $0000 ; X
- D 1 - I - 0x01A4AD 06:A49D: F0 00     .word $00F0 ; Y


; bzk garbage
- - - - - - 0x01A4AF 06:A49F: F8        .byte $F8   ; 
- - - - - - 0x01A4B0 06:A4A0: 00        .byte $00   ; 

_cam_pos_A4A1_06:
- D 1 - I - 0x01A4B1 06:A4A1: FF 01     .word $01FF ; X
- D 1 - I - 0x01A4B3 06:A4A3: 00 00     .word $0000 ; Y

_cam_pos_A4A5_0C:
- D 1 - I - 0x01A4B5 06:A4A5: 00 00     .word $0000 ; X
- D 1 - I - 0x01A4B7 06:A4A7: F0 00     .word $00F0 ; Y

_cam_pos_A4A9_0E:
- D 1 - I - 0x01A4B9 06:A4A9: 00 01     .word $0100 ; X
- D 1 - I - 0x01A4BB 06:A4AB: 00 00     .word $0000 ; Y



_plr_pos_A4AD_00:
- D 1 - I - 0x01A4BD 06:A4AD: 28        .byte $28   ; pos_X_lo 1p
- D 1 - I - 0x01A4BE 06:A4AE: 00        .byte $00   ; pos_X_hi 1p 2p
- D 1 - I - 0x01A4BF 06:A4AF: 40        .byte $40   ; pos_Y_lo 1p
- D 1 - I - 0x01A4C0 06:A4B0: 00 00     .word $0000 ; pos_Z_lo 1p 2p
- D 1 - I - 0x01A4C2 06:A4B2: 38        .byte $38   ; pos_X_lo 2p
- D 1 - I - 0x01A4C3 06:A4B3: 58        .byte $58   ; pos_Y_lo 2p
- D 1 - I - 0x01A4C4 06:A4B4: 00        .byte $00   ; facing direction 1p 2p

_plr_pos_A4B5_01:
- D 1 - I - 0x01A4C5 06:A4B5: 40        .byte $40   ; pos_X_lo 1p
- D 1 - I - 0x01A4C6 06:A4B6: 00        .byte $00   ; pos_X_hi 1p 2p
- D 1 - I - 0x01A4C7 06:A4B7: 00        .byte $00   ; pos_Y_lo 1p
- D 1 - I - 0x01A4C8 06:A4B8: 60 01     .word $0160 ; pos_Z_lo 1p 2p
- D 1 - I - 0x01A4CA 06:A4BA: 28        .byte $28   ; pos_X_lo 2p
- D 1 - I - 0x01A4CB 06:A4BB: 00        .byte $00   ; pos_Y_lo 2p
- D 1 - I - 0x01A4CC 06:A4BC: 00        .byte $00   ; facing direction 1p 2p

_plr_pos_A4BD_02:
- D 1 - I - 0x01A4CD 06:A4BD: C8        .byte $C8   ; pos_X_lo 1p
- D 1 - I - 0x01A4CE 06:A4BE: 00        .byte $00   ; pos_X_hi 1p 2p
- D 1 - I - 0x01A4CF 06:A4BF: 58        .byte $58   ; pos_Y_lo 1p
- D 1 - I - 0x01A4D0 06:A4C0: 00 00     .word $0000 ; pos_Z_lo 1p 2p
- D 1 - I - 0x01A4D2 06:A4C2: B0        .byte $B0   ; pos_X_lo 2p
- D 1 - I - 0x01A4D3 06:A4C3: 60        .byte $60   ; pos_Y_lo 2p
- D 1 - I - 0x01A4D4 06:A4C4: 80        .byte $80   ; facing direction 1p 2p

_plr_pos_A4C5_03:
- D 1 - I - 0x01A4D5 06:A4C5: 28        .byte $28   ; pos_X_lo 1p
- D 1 - I - 0x01A4D6 06:A4C6: 00        .byte $00   ; pos_X_hi 1p 2p
- D 1 - I - 0x01A4D7 06:A4C7: 50        .byte $50   ; pos_Y_lo 1p
- D 1 - I - 0x01A4D8 06:A4C8: F0 01     .word $01F0 ; pos_Z_lo 1p 2p
- D 1 - I - 0x01A4DA 06:A4CA: 38        .byte $38   ; pos_X_lo 2p
- D 1 - I - 0x01A4DB 06:A4CB: 68        .byte $68   ; pos_Y_lo 2p
- D 1 - I - 0x01A4DC 06:A4CC: 00        .byte $00   ; facing direction 1p 2p

_plr_pos_A4CD_04:
- D 1 - I - 0x01A4DD 06:A4CD: C8        .byte $C8   ; pos_X_lo 1p
- D 1 - I - 0x01A4DE 06:A4CE: 00        .byte $00   ; pos_X_hi 1p 2p
- D 1 - I - 0x01A4DF 06:A4CF: 48        .byte $48   ; pos_Y_lo 1p
- D 1 - I - 0x01A4E0 06:A4D0: 50 00     .word $0050 ; pos_Z_lo 1p 2p
- D 1 - I - 0x01A4E2 06:A4D2: D8        .byte $D8   ; pos_X_lo 2p
- D 1 - I - 0x01A4E3 06:A4D3: 48        .byte $48   ; pos_Y_lo 2p
- D 1 - I - 0x01A4E4 06:A4D4: 80        .byte $80   ; facing direction 1p 2p

_plr_pos_A4D5_05:
- D 1 - I - 0x01A4E5 06:A4D5: 28        .byte $28   ; pos_X_lo 1p
- D 1 - I - 0x01A4E6 06:A4D6: 00        .byte $00   ; pos_X_hi 1p 2p
- D 1 - I - 0x01A4E7 06:A4D7: 48        .byte $48   ; pos_Y_lo 1p
- D 1 - I - 0x01A4E8 06:A4D8: E0 00     .word $00E0 ; pos_Z_lo 1p 2p
- D 1 - I - 0x01A4EA 06:A4DA: 38        .byte $38   ; pos_X_lo 2p
- D 1 - I - 0x01A4EB 06:A4DB: 60        .byte $60   ; pos_Y_lo 2p
- D 1 - I - 0x01A4EC 06:A4DC: 00        .byte $00   ; facing direction 1p 2p

_plr_pos_A4DD_06:
- D 1 - I - 0x01A4ED 06:A4DD: D8        .byte $D8   ; pos_X_lo 1p
- D 1 - I - 0x01A4EE 06:A4DE: 02        .byte $02   ; pos_X_hi 1p 2p
- D 1 - I - 0x01A4EF 06:A4DF: 00        .byte $00   ; pos_Y_lo 1p
- D 1 - I - 0x01A4F0 06:A4E0: 50 00     .word $0050 ; pos_Z_lo 1p 2p
- D 1 - I - 0x01A4F2 06:A4E2: F0        .byte $F0   ; pos_X_lo 2p
- D 1 - I - 0x01A4F3 06:A4E3: 00        .byte $00   ; pos_Y_lo 2p
- D 1 - I - 0x01A4F4 06:A4E4: 80        .byte $80   ; facing direction 1p 2p

_plr_pos_A4E5_07:
- D 1 - I - 0x01A4F5 06:A4E5: 30        .byte $30   ; pos_X_lo 1p
- D 1 - I - 0x01A4F6 06:A4E6: 00        .byte $00   ; pos_X_hi 1p 2p
- D 1 - I - 0x01A4F7 06:A4E7: 00        .byte $00   ; pos_Y_lo 1p
- D 1 - I - 0x01A4F8 06:A4E8: B0 00     .word $00B0 ; pos_Z_lo 1p 2p
- D 1 - I - 0x01A4FA 06:A4EA: 18        .byte $18   ; pos_X_lo 2p
- D 1 - I - 0x01A4FB 06:A4EB: 00        .byte $00   ; pos_Y_lo 2p
- D 1 - I - 0x01A4FC 06:A4EC: 00        .byte $00   ; facing direction 1p 2p

_plr_pos_A4ED_08:
- D 1 - I - 0x01A4FD 06:A4ED: 28        .byte $28   ; pos_X_lo 1p
- D 1 - I - 0x01A4FE 06:A4EE: 00        .byte $00   ; pos_X_hi 1p 2p
- D 1 - I - 0x01A4FF 06:A4EF: 00        .byte $00   ; pos_Y_lo 1p
- D 1 - I - 0x01A500 06:A4F0: 70 00     .word $0070 ; pos_Z_lo 1p 2p
- D 1 - I - 0x01A502 06:A4F2: 38        .byte $38   ; pos_X_lo 2p
- D 1 - I - 0x01A503 06:A4F3: 00        .byte $00   ; pos_Y_lo 2p
- D 1 - I - 0x01A504 06:A4F4: 00        .byte $00   ; facing direction 1p 2p

_plr_pos_A4F5_09:
- D 1 - I - 0x01A505 06:A4F5: 2B        .byte $2B   ; pos_X_lo 1p
- D 1 - I - 0x01A506 06:A4F6: 00        .byte $00   ; pos_X_hi 1p 2p
- D 1 - I - 0x01A507 06:A4F7: 00        .byte $00   ; pos_Y_lo 1p
- D 1 - I - 0x01A508 06:A4F8: 50 00     .word $0050 ; pos_Z_lo 1p 2p
- D 1 - I - 0x01A50A 06:A4FA: 18        .byte $18   ; pos_X_lo 2p
- D 1 - I - 0x01A50B 06:A4FB: 00        .byte $00   ; pos_Y_lo 2p
- D 1 - I - 0x01A50C 06:A4FC: 00        .byte $00   ; facing direction 1p 2p

_plr_pos_A4FD_0A:
- D 1 - I - 0x01A50D 06:A4FD: 28        .byte $28   ; pos_X_lo 1p
- D 1 - I - 0x01A50E 06:A4FE: 00        .byte $00   ; pos_X_hi 1p 2p
- D 1 - I - 0x01A50F 06:A4FF: 00        .byte $00   ; pos_Y_lo 1p
- D 1 - I - 0x01A510 06:A500: 70 00     .word $0070 ; pos_Z_lo 1p 2p
- D 1 - I - 0x01A512 06:A502: 38        .byte $38   ; pos_X_lo 2p
- D 1 - I - 0x01A513 06:A503: 00        .byte $00   ; pos_Y_lo 2p
- D 1 - I - 0x01A514 06:A504: 00        .byte $00   ; facing direction 1p 2p

_plr_pos_A505_0B:
- D 1 - I - 0x01A515 06:A505: 1A        .byte $1A   ; pos_X_lo 1p
- D 1 - I - 0x01A516 06:A506: 00        .byte $00   ; pos_X_hi 1p 2p
- D 1 - I - 0x01A517 06:A507: 0E        .byte $0E   ; pos_Y_lo 1p
- D 1 - I - 0x01A518 06:A508: 40 00     .word $0040 ; pos_Z_lo 1p 2p
- D 1 - I - 0x01A51A 06:A50A: 28        .byte $28   ; pos_X_lo 2p
- D 1 - I - 0x01A51B 06:A50B: 1B        .byte $1B   ; pos_Y_lo 2p
- D 1 - I - 0x01A51C 06:A50C: 00        .byte $00   ; facing direction 1p 2p

_plr_pos_A50D_0C:
- D 1 - I - 0x01A51D 06:A50D: 5A        .byte $5A   ; pos_X_lo 1p
- D 1 - I - 0x01A51E 06:A50E: 00        .byte $00   ; pos_X_hi 1p 2p
- D 1 - I - 0x01A51F 06:A50F: 7E        .byte $7E   ; pos_Y_lo 1p
- D 1 - I - 0x01A520 06:A510: 00 01     .word $0100 ; pos_Z_lo 1p 2p
- D 1 - I - 0x01A522 06:A512: 46        .byte $46   ; pos_X_lo 2p
- D 1 - I - 0x01A523 06:A513: 7E        .byte $7E   ; pos_Y_lo 2p
- D 1 - I - 0x01A524 06:A514: 00        .byte $00   ; facing direction 1p 2p

_plr_pos_A515_0D:
- D 1 - I - 0x01A525 06:A515: 58        .byte $58   ; pos_X_lo 1p
- D 1 - I - 0x01A526 06:A516: 00        .byte $00   ; pos_X_hi 1p 2p
- D 1 - I - 0x01A527 06:A517: 50        .byte $50   ; pos_Y_lo 1p
- D 1 - I - 0x01A528 06:A518: 00 00     .word $0000 ; pos_Z_lo 1p 2p
- D 1 - I - 0x01A52A 06:A51A: 50        .byte $50   ; pos_X_lo 2p
- D 1 - I - 0x01A52B 06:A51B: 68        .byte $68   ; pos_Y_lo 2p
- D 1 - I - 0x01A52C 06:A51C: 00        .byte $00   ; facing direction 1p 2p

_plr_pos_A51D_0E:
- D 1 - I - 0x01A52D 06:A51D: 58        .byte $58   ; pos_X_lo 1p
- D 1 - I - 0x01A52E 06:A51E: 01        .byte $01   ; pos_X_hi 1p 2p
- D 1 - I - 0x01A52F 06:A51F: 50        .byte $50   ; pos_Y_lo 1p
- D 1 - I - 0x01A530 06:A520: 00 00     .word $0000 ; pos_Z_lo 1p 2p
- D 1 - I - 0x01A532 06:A522: 50        .byte $50   ; pos_X_lo 2p
- D 1 - I - 0x01A533 06:A523: 68        .byte $68   ; pos_Y_lo 2p
- D 1 - I - 0x01A534 06:A524: 00        .byte $00   ; facing direction 1p 2p


; bzk garbage
- - - - - - 0x01A535 06:A525: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 



sub_0x01A540_draw_on_screen_during_mission:
; see con_A6C3_draw
C - - - - - 0x01A540 06:A530: A9 02     LDA #$02    ; loop counter
loc_A532_loop:
C D 1 - - - 0x01A542 06:A532: 48        PHA
C - - - - - 0x01A543 06:A533: AD 80 04  LDA ram_0480
C - - - - - 0x01A546 06:A536: 30 24     BMI bra_A55C
C - - - - - 0x01A548 06:A538: AD 82 04  LDA ram_0482
C - - - - - 0x01A54B 06:A53B: 10 1D     BPL bra_A55A
- - - - - - 0x01A54D 06:A53D: CE 83 04  DEC ram_0483
- - - - - - 0x01A550 06:A540: D0 18     BNE bra_A55A
- - - - - - 0x01A552 06:A542: AD 82 04  LDA ram_0482
- - - - - - 0x01A555 06:A545: 29 7F     AND #$7F
- - - - - - 0x01A557 06:A547: 8D 82 04  STA ram_0482
- - - - - - 0x01A55A 06:A54A: AD 81 04  LDA ram_0481
- - - - - - 0x01A55D 06:A54D: 29 7F     AND #$7F
- - - - - - 0x01A55F 06:A54F: 8D 81 04  STA ram_0481
- - - - - - 0x01A562 06:A552: A9 80     LDA #$80
- - - - - - 0x01A564 06:A554: 0D 80 04  ORA ram_0480
- - - - - - 0x01A567 06:A557: 8D 80 04  STA ram_0480
bra_A55A:
C - - - - - 0x01A56A 06:A55A: 68        PLA
C - - - - - 0x01A56B 06:A55B: 60        RTS
bra_A55C:
C - - - - - 0x01A56C 06:A55C: A9 60     LDA #con_E2E6 + $60
C - - - - - 0x01A56E 06:A55E: 20 00 C0  JSR sub_0x01C010
C - - - - - 0x01A571 06:A561: B0 F7     BCS bra_A55A
C - - - - - 0x01A573 06:A563: AD 83 04  LDA ram_0483
C - - - - - 0x01A576 06:A566: C9 00     CMP #$00
C - - - - - 0x01A578 06:A568: F0 05     BEQ bra_A56F    ; bzk optimize, BEQ
- - - - - - 0x01A57A 06:A56A: CE 83 04  DEC ram_0483
- - - - - - 0x01A57D 06:A56D: 68        PLA
- - - - - - 0x01A57E 06:A56E: 60        RTS
bra_A56F:
C - - - - - 0x01A57F 06:A56F: A9 00     LDA #$00
C - - - - - 0x01A581 06:A571: 85 1A     STA ram_001A
C - - - - - 0x01A583 06:A573: 85 1B     STA ram_001B
C - - - - - 0x01A585 06:A575: 85 1C     STA ram_001C
C - - - - - 0x01A587 06:A577: AD 80 04  LDA ram_0480
C - - - - - 0x01A58A 06:A57A: 29 7F     AND #$7F
C - - - - - 0x01A58C 06:A57C: 85 19     STA ram_0019
C - - - - - 0x01A58E 06:A57E: 85 1B     STA ram_001B
C - - - - - 0x01A590 06:A580: 06 1B     ASL ram_001B
C - - - - - 0x01A592 06:A582: 26 1C     ROL ram_001C
C - - - - - 0x01A594 06:A584: 18        CLC
C - - - - - 0x01A595 06:A585: A5 1B     LDA ram_001B
C - - - - - 0x01A597 06:A587: 65 19     ADC ram_0019
C - - - - - 0x01A599 06:A589: 85 19     STA ram_0019
C - - - - - 0x01A59B 06:A58B: A5 1C     LDA ram_001C
C - - - - - 0x01A59D 06:A58D: 65 1A     ADC ram_001A
C - - - - - 0x01A59F 06:A58F: 85 1A     STA ram_001A
C - - - - - 0x01A5A1 06:A591: 06 1B     ASL ram_001B
C - - - - - 0x01A5A3 06:A593: 26 1C     ROL ram_001C
C - - - - - 0x01A5A5 06:A595: 18        CLC
C - - - - - 0x01A5A6 06:A596: A5 1B     LDA ram_001B
C - - - - - 0x01A5A8 06:A598: 65 19     ADC ram_0019
C - - - - - 0x01A5AA 06:A59A: 85 19     STA ram_0019
C - - - - - 0x01A5AC 06:A59C: A5 1C     LDA ram_001C
C - - - - - 0x01A5AE 06:A59E: 65 1A     ADC ram_001A
C - - - - - 0x01A5B0 06:A5A0: 85 1A     STA ram_001A
C - - - - - 0x01A5B2 06:A5A2: AD C1 A6  LDA tbl_A6C1
C - - - - - 0x01A5B5 06:A5A5: 18        CLC
C - - - - - 0x01A5B6 06:A5A6: 65 19     ADC ram_0019
C - - - - - 0x01A5B8 06:A5A8: 85 1D     STA ram_001D
C - - - - - 0x01A5BA 06:A5AA: AD C2 A6  LDA tbl_A6C1 + $01
C - - - - - 0x01A5BD 06:A5AD: 65 1A     ADC ram_001A
C - - - - - 0x01A5BF 06:A5AF: 85 1E     STA ram_001E
C - - - - - 0x01A5C1 06:A5B1: A0 00     LDY #$00
C - - - - - 0x01A5C3 06:A5B3: B1 1D     LDA (ram_001D),Y
C - - - - - 0x01A5C5 06:A5B5: 85 29     STA ram_0029
C - - - - - 0x01A5C7 06:A5B7: C8        INY ; 01
C - - - - - 0x01A5C8 06:A5B8: B1 1D     LDA (ram_001D),Y
C - - - - - 0x01A5CA 06:A5BA: 85 2A     STA ram_002A
C - - - - - 0x01A5CC 06:A5BC: C8        INY ; 02
C - - - - - 0x01A5CD 06:A5BD: B1 1D     LDA (ram_001D),Y
C - - - - - 0x01A5CF 06:A5BF: 85 2B     STA ram_002B
C - - - - - 0x01A5D1 06:A5C1: C8        INY ; 03
C - - - - - 0x01A5D2 06:A5C2: B1 1D     LDA (ram_001D),Y
C - - - - - 0x01A5D4 06:A5C4: 85 2C     STA ram_002C
C - - - - - 0x01A5D6 06:A5C6: C8        INY ; 04
C - - - - - 0x01A5D7 06:A5C7: B1 1D     LDA (ram_001D),Y
C - - - - - 0x01A5D9 06:A5C9: 85 1A     STA ram_001A
C - - - - - 0x01A5DB 06:A5CB: C8        INY ; 05
C - - - - - 0x01A5DC 06:A5CC: B1 1D     LDA (ram_001D),Y
C - - - - - 0x01A5DE 06:A5CE: 85 1B     STA ram_001B
C - - - - - 0x01A5E0 06:A5D0: C8        INY ; 06
C - - - - - 0x01A5E1 06:A5D1: B1 1D     LDA (ram_001D),Y
C - - - - - 0x01A5E3 06:A5D3: 85 1C     STA ram_001C
C - - - - - 0x01A5E5 06:A5D5: AD 81 04  LDA ram_0481
C - - - - - 0x01A5E8 06:A5D8: 29 7F     AND #$7F
C - - - - - 0x01A5EA 06:A5DA: 0A        ASL
C - - - - - 0x01A5EB 06:A5DB: A8        TAY
C - - - - - 0x01A5EC 06:A5DC: B1 29     LDA (ram_0029),Y
C - - - - - 0x01A5EE 06:A5DE: 85 2D     STA ram_002D
C - - - - - 0x01A5F0 06:A5E0: C8        INY
C - - - - - 0x01A5F1 06:A5E1: B1 29     LDA (ram_0029),Y
C - - - - - 0x01A5F3 06:A5E3: 85 2E     STA ram_002E
C - - - - - 0x01A5F5 06:A5E5: AD 82 04  LDA ram_0482
C - - - - - 0x01A5F8 06:A5E8: 29 7F     AND #$7F
C - - - - - 0x01A5FA 06:A5EA: 0A        ASL
C - - - - - 0x01A5FB 06:A5EB: A8        TAY
C - - - - - 0x01A5FC 06:A5EC: B1 2D     LDA (ram_002D),Y
C - - - - - 0x01A5FE 06:A5EE: 85 2F     STA ram_002F
C - - - - - 0x01A600 06:A5F0: C8        INY
C - - - - - 0x01A601 06:A5F1: B1 2D     LDA (ram_002D),Y
C - - - - - 0x01A603 06:A5F3: 85 30     STA ram_0030
C - - - - - 0x01A605 06:A5F5: AE BC 05  LDX ram_buffer_index_2
C - - - - - 0x01A608 06:A5F8: AD 82 04  LDA ram_0482
C - - - - - 0x01A60B 06:A5FB: 29 7F     AND #$7F
C - - - - - 0x01A60D 06:A5FD: 0A        ASL
C - - - - - 0x01A60E 06:A5FE: A8        TAY
C - - - - - 0x01A60F 06:A5FF: B1 2B     LDA (ram_002B),Y
C - - - - - 0x01A611 06:A601: 08        PHP
C - - - - - 0x01A612 06:A602: 29 7F     AND #$7F
C - - - - - 0x01A614 06:A604: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01A617 06:A607: E8        INX
C - - - - - 0x01A618 06:A608: C8        INY
C - - - - - 0x01A619 06:A609: B1 2B     LDA (ram_002B),Y
C - - - - - 0x01A61B 06:A60B: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01A61E 06:A60E: E8        INX
C - - - - - 0x01A61F 06:A60F: A9 04     LDA #$04
C - - - - - 0x01A621 06:A611: 28        PLP
C - - - - - 0x01A622 06:A612: 10 02     BPL bra_A616
- - - - - - 0x01A624 06:A614: A9 00     LDA #$00
bra_A616:
C - - - - - 0x01A626 06:A616: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01A629 06:A619: E8        INX
C - - - - - 0x01A62A 06:A61A: A5 1A     LDA ram_001A
C - - - - - 0x01A62C 06:A61C: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01A62F 06:A61F: E8        INX
C - - - - - 0x01A630 06:A620: A0 00     LDY #$00
bra_A622_loop:
C - - - - - 0x01A632 06:A622: B1 2F     LDA (ram_002F),Y
C - - - - - 0x01A634 06:A624: C8        INY
C - - - - - 0x01A635 06:A625: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01A638 06:A628: E8        INX
C - - - - - 0x01A639 06:A629: C6 1A     DEC ram_001A
C - - - - - 0x01A63B 06:A62B: D0 F5     BNE bra_A622_loop
C - - - - - 0x01A63D 06:A62D: 8E BC 05  STX ram_buffer_index_2
C - - - - - 0x01A640 06:A630: AD 82 04  LDA ram_0482
C - - - - - 0x01A643 06:A633: 29 7F     AND #$7F
C - - - - - 0x01A645 06:A635: C5 1B     CMP ram_001B
C - - - - - 0x01A647 06:A637: F0 17     BEQ bra_A650
C - - - - - 0x01A649 06:A639: AD 82 04  LDA ram_0482
C - - - - - 0x01A64C 06:A63C: 29 80     AND #$80
C - - - - - 0x01A64E 06:A63E: 85 1F     STA ram_001F
C - - - - - 0x01A650 06:A640: AD 82 04  LDA ram_0482
C - - - - - 0x01A653 06:A643: 29 7F     AND #$7F
C - - - - - 0x01A655 06:A645: 18        CLC
C - - - - - 0x01A656 06:A646: 69 01     ADC #$01
C - - - - - 0x01A658 06:A648: 05 1F     ORA ram_001F
C - - - - - 0x01A65A 06:A64A: 8D 82 04  STA ram_0482
C - - - - - 0x01A65D 06:A64D: 4C B7 A6  JMP loc_A6B7
bra_A650:
C - - - - - 0x01A660 06:A650: AD 82 04  LDA ram_0482
C - - - - - 0x01A663 06:A653: 29 80     AND #$80
C - - - - - 0x01A665 06:A655: 8D 82 04  STA ram_0482
C - - - - - 0x01A668 06:A658: AD 81 04  LDA ram_0481
C - - - - - 0x01A66B 06:A65B: 10 34     BPL bra_A691
C - - - - - 0x01A66D 06:A65D: AD 81 04  LDA ram_0481
C - - - - - 0x01A670 06:A660: 29 7F     AND #$7F
C - - - - - 0x01A672 06:A662: C5 1C     CMP ram_001C
C - - - - - 0x01A674 06:A664: D0 14     BNE bra_A67A
C - - - - - 0x01A676 06:A666: AD 80 04  LDA ram_0480
C - - - - - 0x01A679 06:A669: 29 7F     AND #$7F
C - - - - - 0x01A67B 06:A66B: 8D 80 04  STA ram_0480
C - - - - - 0x01A67E 06:A66E: AD 82 04  LDA ram_0482
C - - - - - 0x01A681 06:A671: 10 05     BPL bra_A678
- - - - - - 0x01A683 06:A673: A9 18     LDA #$18
- - - - - - 0x01A685 06:A675: 8D 83 04  STA ram_0483
bra_A678:
C - - - - - 0x01A688 06:A678: 68        PLA
C - - - - - 0x01A689 06:A679: 60        RTS
bra_A67A:
C - - - - - 0x01A68A 06:A67A: AD 81 04  LDA ram_0481
C - - - - - 0x01A68D 06:A67D: 29 80     AND #$80
C - - - - - 0x01A68F 06:A67F: 85 1F     STA ram_001F
C - - - - - 0x01A691 06:A681: AD 81 04  LDA ram_0481
C - - - - - 0x01A694 06:A684: 29 7F     AND #$7F
C - - - - - 0x01A696 06:A686: 18        CLC
C - - - - - 0x01A697 06:A687: 69 01     ADC #$01
C - - - - - 0x01A699 06:A689: 05 1F     ORA ram_001F
C - - - - - 0x01A69B 06:A68B: 8D 81 04  STA ram_0481
C - - - - - 0x01A69E 06:A68E: 4C B2 A6  JMP loc_A6B2
bra_A691:
C - - - - - 0x01A6A1 06:A691: AD 81 04  LDA ram_0481
C - - - - - 0x01A6A4 06:A694: 29 7F     AND #$7F
C - - - - - 0x01A6A6 06:A696: D0 0A     BNE bra_A6A2
C - - - - - 0x01A6A8 06:A698: AD 80 04  LDA ram_0480
C - - - - - 0x01A6AB 06:A69B: 29 7F     AND #$7F
C - - - - - 0x01A6AD 06:A69D: 8D 80 04  STA ram_0480
C - - - - - 0x01A6B0 06:A6A0: 68        PLA
C - - - - - 0x01A6B1 06:A6A1: 60        RTS
bra_A6A2:
C - - - - - 0x01A6B2 06:A6A2: AD 81 04  LDA ram_0481
C - - - - - 0x01A6B5 06:A6A5: 29 80     AND #$80
C - - - - - 0x01A6B7 06:A6A7: 85 1F     STA ram_001F
C - - - - - 0x01A6B9 06:A6A9: AD 81 04  LDA ram_0481
C - - - - - 0x01A6BC 06:A6AC: 38        SEC
C - - - - - 0x01A6BD 06:A6AD: E9 01     SBC #$01
C - - - - - 0x01A6BF 06:A6AF: 8D 81 04  STA ram_0481
loc_A6B2:
C D 1 - - - 0x01A6C2 06:A6B2: A9 00     LDA #$00
C - - - - - 0x01A6C4 06:A6B4: 8D 83 04  STA ram_0483
loc_A6B7:
C D 1 - - - 0x01A6C7 06:A6B7: 68        PLA
C - - - - - 0x01A6C8 06:A6B8: 38        SEC
C - - - - - 0x01A6C9 06:A6B9: E9 01     SBC #$01
C - - - - - 0x01A6CB 06:A6BB: F0 03     BEQ bra_A6C0_RTS
C - - - - - 0x01A6CD 06:A6BD: 4C 32 A5  JMP loc_A532_loop
bra_A6C0_RTS:
C - - - - - 0x01A6D0 06:A6C0: 60        RTS



tbl_A6C1:   ; bzk optimize
- D 1 - - - 0x01A6D1 06:A6C1: C3 A6     .word tbl_A6C3



tbl_A6C3:
; see con_A6C3_draw
; 00 door with linda (mission 00)
- D 1 - I - 0x01A6D3 06:A6C3: 17 A7     .word _off025_A717_00
- D 1 - I - 0x01A6D5 06:A6C5: 4F A7     .word off_ppu_A74F_00
- D 1 - I - 0x01A6D7 06:A6C7: 06        .byte $06   ; tiles counter
- D 1 - I - 0x01A6D8 06:A6C8: 03        .byte $03   ; ppu addr counter
- D 1 - I - 0x01A6D9 06:A6C9: 03        .byte $03   ; 
; 01 door with williams (mission 00)
- D 1 - I - 0x01A6DA 06:A6CA: 17 A7     .word _off025_A717_01
- D 1 - I - 0x01A6DC 06:A6CC: 57 A7     .word off_ppu_A757_01
- D 1 - I - 0x01A6DE 06:A6CE: 06        .byte $06   ; tiles counter
- D 1 - I - 0x01A6DF 06:A6CF: 03        .byte $03   ; ppu addr counter
- D 1 - I - 0x01A6E0 06:A6D0: 03        .byte $03   ; 
; 02 helicopter blue door (mission 02)
- D 1 - I - 0x01A6E1 06:A6D1: 1F A7     .word _off025_A71F_02
- D 1 - I - 0x01A6E3 06:A6D3: 5F A7     .word off_ppu_A75F_02
- D 1 - I - 0x01A6E5 06:A6D5: 07        .byte $07   ; tiles counter
- D 1 - I - 0x01A6E6 06:A6D6: 01        .byte $01   ; ppu addr counter
- D 1 - I - 0x01A6E7 06:A6D7: 03        .byte $03   ; 
; 03 helicopter green door (mission 02)
- D 1 - I - 0x01A6E8 06:A6D8: 27 A7     .word _off025_A727_03
- D 1 - I - 0x01A6EA 06:A6DA: 63 A7     .word off_ppu_A763_03
- D 1 - I - 0x01A6EC 06:A6DC: 07        .byte $07   ; tiles counter
- D 1 - I - 0x01A6ED 06:A6DD: 03        .byte $03   ; ppu addr counter
- D 1 - I - 0x01A6EE 06:A6DE: 03        .byte $03   ; 
; 04 entering elevator door (mission 03)
- D 1 - I - 0x01A6EF 06:A6DF: 2F A7     .word _off025_A72F_04
- D 1 - I - 0x01A6F1 06:A6E1: 6B A7     .word off_ppu_A76B_04
- D 1 - I - 0x01A6F3 06:A6E3: 07        .byte $07   ; tiles counter
- D 1 - I - 0x01A6F4 06:A6E4: 03        .byte $03   ; ppu addr counter
- D 1 - I - 0x01A6F5 06:A6E5: 03        .byte $03   ; 
; 05 leaving elevator door (mission 03)
- D 1 - I - 0x01A6F6 06:A6E6: 2F A7     .word _off025_A72F_05
- D 1 - I - 0x01A6F8 06:A6E8: 73 A7     .word off_ppu_A773_05
- D 1 - I - 0x01A6FA 06:A6EA: 07        .byte $07   ; tiles counter
- D 1 - I - 0x01A6FB 06:A6EB: 03        .byte $03   ; ppu addr counter
- D 1 - I - 0x01A6FC 06:A6EC: 03        .byte $03   ; 
; 06 final door (mission 03)
- D 1 - I - 0x01A6FD 06:A6ED: 2F A7     .word _off025_A72F_06
- D 1 - I - 0x01A6FF 06:A6EF: 7B A7     .word off_ppu_A77B_06
- D 1 - I - 0x01A701 06:A6F1: 07        .byte $07   ; tiles counter
- D 1 - I - 0x01A702 06:A6F2: 03        .byte $03   ; ppu addr counter
- D 1 - I - 0x01A703 06:A6F3: 03        .byte $03   ; 
; 07 final door (mission 04)
- D 1 - I - 0x01A704 06:A6F4: 2F A7     .word _off025_A72F_07
- D 1 - I - 0x01A706 06:A6F6: 83 A7     .word off_ppu_A783_07
- D 1 - I - 0x01A708 06:A6F8: 07        .byte $07   ; tiles counter
- D 1 - I - 0x01A709 06:A6F9: 03        .byte $03   ; ppu addr counter
- D 1 - I - 0x01A70A 06:A6FA: 03        .byte $03   ; 
; 08 wooden house door (mission 05)
- D 1 - I - 0x01A70B 06:A6FB: 37 A7     .word _off025_A737_08
- D 1 - I - 0x01A70D 06:A6FD: 8B A7     .word off_ppu_A78B_08
- D 1 - I - 0x01A70F 06:A6FF: 06        .byte $06   ; tiles counter
- D 1 - I - 0x01A710 06:A700: 03        .byte $03   ; ppu addr counter
- D 1 - I - 0x01A711 06:A701: 03        .byte $03   ; 
; 09 final door (mission 08)
- D 1 - I - 0x01A712 06:A702: 3F A7     .word _off025_A73F_09
- D 1 - I - 0x01A714 06:A704: 93 A7     .word off_ppu_A793_09
- D 1 - I - 0x01A716 06:A706: 07        .byte $07   ; tiles counter
- D 1 - I - 0x01A717 06:A707: 03        .byte $03   ; ppu addr counter
- D 1 - I - 0x01A718 06:A708: 03        .byte $03   ; 
; 0A final door (mission 0A)
- D 1 - I - 0x01A719 06:A709: 3F A7     .word _off025_A73F_0A
- D 1 - I - 0x01A71B 06:A70B: 93 A7     .word off_ppu_A793_0A
- D 1 - I - 0x01A71D 06:A70D: 07        .byte $07   ; tiles counter
- D 1 - I - 0x01A71E 06:A70E: 03        .byte $03   ; ppu addr counter
- D 1 - I - 0x01A71F 06:A70F: 03        .byte $03   ; 
; 0B big eyes (mission 06)
- D 1 - I - 0x01A720 06:A710: 47 A7     .word _off025_A747_0B
- D 1 - I - 0x01A722 06:A712: 9B A7     .word off_ppu_A79B_0B
- D 1 - I - 0x01A724 06:A714: 02        .byte $02   ; tiles counter
- D 1 - I - 0x01A725 06:A715: 07        .byte $07   ; ppu addr counter
- D 1 - I - 0x01A726 06:A716: 03        .byte $03   ; 



_off025_A717_00:
_off025_A717_01:
- D 1 - I - 0x01A727 06:A717: AB A7     .word off_A7AB_00
- D 1 - I - 0x01A729 06:A719: B3 A7     .word off_A7B3_01
- D 1 - I - 0x01A72B 06:A71B: BB A7     .word off_A7BB_02
- D 1 - I - 0x01A72D 06:A71D: C3 A7     .word off_A7C3_03

_off025_A71F_02:
- D 1 - I - 0x01A72F 06:A71F: CB A7     .word off_A7CB_00
- D 1 - I - 0x01A731 06:A721: CF A7     .word off_A7CF_01
- D 1 - I - 0x01A733 06:A723: F3 A7     .word off_A7F3_02
- D 1 - I - 0x01A735 06:A725: F3 A7     .word off_A7F3_03

_off025_A727_03:
- D 1 - I - 0x01A737 06:A727: D3 A7     .word off_A7D3_00
- D 1 - I - 0x01A739 06:A729: DB A7     .word off_A7DB_01
- D 1 - I - 0x01A73B 06:A72B: E3 A7     .word off_A7E3_02
- D 1 - I - 0x01A73D 06:A72D: EB A7     .word off_A7EB_03

_off025_A72F_04:
_off025_A72F_05:
_off025_A72F_06:
_off025_A72F_07:
- D 1 - I - 0x01A73F 06:A72F: F7 A7     .word off_A7F7_00
- D 1 - I - 0x01A741 06:A731: FF A7     .word off_A7FF_01
- D 1 - I - 0x01A743 06:A733: 07 A8     .word off_A807_02
- D 1 - I - 0x01A745 06:A735: 0F A8     .word off_A80F_03

_off025_A737_08:
- D 1 - I - 0x01A747 06:A737: 17 A8     .word off_A817_00
- D 1 - I - 0x01A749 06:A739: 1F A8     .word off_A81F_01
- D 1 - I - 0x01A74B 06:A73B: 27 A8     .word off_A827_02
- D 1 - I - 0x01A74D 06:A73D: 2F A8     .word off_A82F_03

_off025_A73F_09:
_off025_A73F_0A:
- D 1 - I - 0x01A74F 06:A73F: 37 A8     .word off_A837_00
- D 1 - I - 0x01A751 06:A741: 3F A8     .word off_A83F_01
- D 1 - I - 0x01A753 06:A743: 47 A8     .word off_A847_02
- D 1 - I - 0x01A755 06:A745: 4F A8     .word off_A84F_03

_off025_A747_0B:
- D 1 - I - 0x01A757 06:A747: 57 A8     .word off_A857_00
- D 1 - I - 0x01A759 06:A749: 67 A8     .word off_A867_01
- D 1 - I - 0x01A75B 06:A74B: 77 A8     .word off_A877_02
- D 1 - I - 0x01A75D 06:A74D: 77 A8     .word off_A877_03



off_ppu_A74F_00:
- D 1 - I - 0x01A75F 06:A74F: 21 D0     .dbyt $21D0 ; 00 
- D 1 - I - 0x01A761 06:A751: 21 D1     .dbyt $21D1 ; 01 
- D 1 - I - 0x01A763 06:A753: 21 D2     .dbyt $21D2 ; 02 
- D 1 - I - 0x01A765 06:A755: 21 D3     .dbyt $21D3 ; 03 

off_ppu_A757_01:
- D 1 - I - 0x01A767 06:A757: 21 88     .dbyt $2188 ; 00 
- D 1 - I - 0x01A769 06:A759: 21 89     .dbyt $2189 ; 01 
- D 1 - I - 0x01A76B 06:A75B: 21 8A     .dbyt $218A ; 02 
- D 1 - I - 0x01A76D 06:A75D: 21 8B     .dbyt $218B ; 03 

off_ppu_A75F_02:
- D 1 - I - 0x01A76F 06:A75F: 29 46     .dbyt $2946 ; 00 
- D 1 - I - 0x01A771 06:A761: 29 65     .dbyt $2965 ; 01 

off_ppu_A763_03:
- D 1 - I - 0x01A773 06:A763: 29 36     .dbyt $2936 ; 00 
- D 1 - I - 0x01A775 06:A765: 29 37     .dbyt $2937 ; 01 
- D 1 - I - 0x01A777 06:A767: 29 38     .dbyt $2938 ; 02 
- D 1 - I - 0x01A779 06:A769: 29 39     .dbyt $2939 ; 03 

off_ppu_A76B_04:
- D 1 - I - 0x01A77B 06:A76B: 29 78     .dbyt $2978 ; 00 
- D 1 - I - 0x01A77D 06:A76D: 29 79     .dbyt $2979 ; 01 
- D 1 - I - 0x01A77F 06:A76F: 29 7A     .dbyt $297A ; 02 
- D 1 - I - 0x01A781 06:A771: 29 7B     .dbyt $297B ; 03 

off_ppu_A773_05:
- D 1 - I - 0x01A783 06:A773: 29 78     .dbyt $2978 ; 00 
- D 1 - I - 0x01A785 06:A775: 29 79     .dbyt $2979 ; 01 
- D 1 - I - 0x01A787 06:A777: 29 7A     .dbyt $297A ; 02 
- D 1 - I - 0x01A789 06:A779: 29 7B     .dbyt $297B ; 03 

off_ppu_A77B_06:
- D 1 - I - 0x01A78B 06:A77B: 29 7A     .dbyt $297A ; 00 
- D 1 - I - 0x01A78D 06:A77D: 29 7B     .dbyt $297B ; 01 
- D 1 - I - 0x01A78F 06:A77F: 29 7C     .dbyt $297C ; 02 
- D 1 - I - 0x01A791 06:A781: 29 7D     .dbyt $297D ; 03 

off_ppu_A783_07:
- D 1 - I - 0x01A793 06:A783: 28 64     .dbyt $2864 ; 00 
- D 1 - I - 0x01A795 06:A785: 28 65     .dbyt $2865 ; 01 
- D 1 - I - 0x01A797 06:A787: 28 66     .dbyt $2866 ; 02 
- D 1 - I - 0x01A799 06:A789: 28 67     .dbyt $2867 ; 03 

off_ppu_A78B_08:
- D 1 - I - 0x01A79B 06:A78B: 20 C6     .dbyt $20C6 ; 00 
- D 1 - I - 0x01A79D 06:A78D: 20 C7     .dbyt $20C7 ; 01 
- D 1 - I - 0x01A79F 06:A78F: 20 C8     .dbyt $20C8 ; 02 
- D 1 - I - 0x01A7A1 06:A791: 20 C9     .dbyt $20C9 ; 03 

off_ppu_A793_09:
off_ppu_A793_0A:
- D 1 - I - 0x01A7A3 06:A793: 29 38     .dbyt $2938 ; 00 
- D 1 - I - 0x01A7A5 06:A795: 29 39     .dbyt $2939 ; 01 
- D 1 - I - 0x01A7A7 06:A797: 29 3A     .dbyt $293A ; 02 
- D 1 - I - 0x01A7A9 06:A799: 29 3B     .dbyt $293B ; 03 

off_ppu_A79B_0B:
- D 1 - I - 0x01A7AB 06:A79B: 28 8A     .dbyt $288A ; 00 
- D 1 - I - 0x01A7AD 06:A79D: 28 8B     .dbyt $288B ; 01 
- D 1 - I - 0x01A7AF 06:A79F: 28 8C     .dbyt $288C ; 02 
- D 1 - I - 0x01A7B1 06:A7A1: 28 8D     .dbyt $288D ; 03 
- D 1 - I - 0x01A7B3 06:A7A3: 28 92     .dbyt $2892 ; 04 
- D 1 - I - 0x01A7B5 06:A7A5: 28 93     .dbyt $2893 ; 05 
- D 1 - I - 0x01A7B7 06:A7A7: 28 94     .dbyt $2894 ; 06 
- D 1 - I - 0x01A7B9 06:A7A9: 28 95     .dbyt $2895 ; 07 



off_A7AB_00:
- D 1 - I - 0x01A7BB 06:A7AB: 8F A8     .word ofs_A88F_00
- D 1 - I - 0x01A7BD 06:A7AD: 95 A8     .word ofs_A895_01
- D 1 - I - 0x01A7BF 06:A7AF: 95 A8     .word ofs_A895_02
- D 1 - I - 0x01A7C1 06:A7B1: 9B A8     .word ofs_A89B_03

off_A7B3_01:
- D 1 - I - 0x01A7C3 06:A7B3: 87 A8     .word ofs_A887_00
- D 1 - I - 0x01A7C5 06:A7B5: 8F A8     .word ofs_A88F_01
- D 1 - I - 0x01A7C7 06:A7B7: 95 A8     .word ofs_A895_02
- D 1 - I - 0x01A7C9 06:A7B9: 95 A8     .word ofs_A895_03

off_A7BB_02:
- D 1 - I - 0x01A7CB 06:A7BB: 87 A8     .word ofs_A887_00
- D 1 - I - 0x01A7CD 06:A7BD: 87 A8     .word ofs_A887_01
- D 1 - I - 0x01A7CF 06:A7BF: 8F A8     .word ofs_A88F_02
- D 1 - I - 0x01A7D1 06:A7C1: 95 A8     .word ofs_A895_03

off_A7C3_03:
- D 1 - I - 0x01A7D3 06:A7C3: 87 A8     .word ofs_A887_00
- D 1 - I - 0x01A7D5 06:A7C5: 87 A8     .word ofs_A887_01
- D 1 - I - 0x01A7D7 06:A7C7: 87 A8     .word ofs_A887_02
- D 1 - I - 0x01A7D9 06:A7C9: 8F A8     .word ofs_A88F_03

off_A7CB_00:
- D 1 - I - 0x01A7DB 06:A7CB: 48 A9     .word ofs_A948_00
- D 1 - I - 0x01A7DD 06:A7CD: 41 A9     .word ofs_A941_01

off_A7CF_01:
- D 1 - I - 0x01A7DF 06:A7CF: 87 A8     .word ofs_A887_00
- D 1 - I - 0x01A7E1 06:A7D1: 48 A9     .word ofs_A948_01

off_A7D3_00:
- D 1 - I - 0x01A7E3 06:A7D3: A1 A8     .word ofs_A8A1_00
- D 1 - I - 0x01A7E5 06:A7D5: A8 A8     .word ofs_A8A8_01
- D 1 - I - 0x01A7E7 06:A7D7: AF A8     .word ofs_A8AF_02
- D 1 - I - 0x01A7E9 06:A7D9: B6 A8     .word ofs_A8B6_03

off_A7DB_01:
- D 1 - I - 0x01A7EB 06:A7DB: A8 A8     .word ofs_A8A8_00
- D 1 - I - 0x01A7ED 06:A7DD: AF A8     .word ofs_A8AF_01
- D 1 - I - 0x01A7EF 06:A7DF: B6 A8     .word ofs_A8B6_02
- D 1 - I - 0x01A7F1 06:A7E1: 87 A8     .word ofs_A887_03

off_A7E3_02:
- D 1 - I - 0x01A7F3 06:A7E3: AF A8     .word ofs_A8AF_00
- D 1 - I - 0x01A7F5 06:A7E5: B6 A8     .word ofs_A8B6_01
- D 1 - I - 0x01A7F7 06:A7E7: 87 A8     .word ofs_A887_02
- D 1 - I - 0x01A7F9 06:A7E9: 87 A8     .word ofs_A887_03

off_A7EB_03:
- D 1 - I - 0x01A7FB 06:A7EB: B6 A8     .word ofs_A8B6_00
- D 1 - I - 0x01A7FD 06:A7ED: 87 A8     .word ofs_A887_01
- D 1 - I - 0x01A7FF 06:A7EF: 87 A8     .word ofs_A887_02
- D 1 - I - 0x01A801 06:A7F1: 87 A8     .word ofs_A887_03

off_A7F3_02:
off_A7F3_03:
- D 1 - I - 0x01A803 06:A7F3: 87 A8     .word ofs_A887_00
- D 1 - I - 0x01A805 06:A7F5: 87 A8     .word ofs_A887_01

off_A7F7_00:
- D 1 - I - 0x01A807 06:A7F7: BD A8     .word ofs_A8BD_00
- D 1 - I - 0x01A809 06:A7F9: 20 A9     .word ofs_A920_01
- D 1 - I - 0x01A80B 06:A7FB: 27 A9     .word ofs_A927_02
- D 1 - I - 0x01A80D 06:A7FD: 2E A9     .word ofs_A92E_03

off_A7FF_01:
- D 1 - I - 0x01A80F 06:A7FF: 20 A9     .word ofs_A920_00
- D 1 - I - 0x01A811 06:A801: 27 A9     .word ofs_A927_01
- D 1 - I - 0x01A813 06:A803: 2E A9     .word ofs_A92E_02
- D 1 - I - 0x01A815 06:A805: 87 A8     .word ofs_A887_03

off_A807_02:
- D 1 - I - 0x01A817 06:A807: 27 A9     .word ofs_A927_00
- D 1 - I - 0x01A819 06:A809: 2E A9     .word ofs_A92E_01
- D 1 - I - 0x01A81B 06:A80B: 87 A8     .word ofs_A887_02
- D 1 - I - 0x01A81D 06:A80D: 87 A8     .word ofs_A887_03

off_A80F_03:
- D 1 - I - 0x01A81F 06:A80F: 2E A9     .word ofs_A92E_00
- D 1 - I - 0x01A821 06:A811: 87 A8     .word ofs_A887_01
- D 1 - I - 0x01A823 06:A813: 87 A8     .word ofs_A887_02
- D 1 - I - 0x01A825 06:A815: 87 A8     .word ofs_A887_03

off_A817_00:
- D 1 - I - 0x01A827 06:A817: C4 A8     .word ofs_A8C4_00
- D 1 - I - 0x01A829 06:A819: 14 A9     .word ofs_A914_01
- D 1 - I - 0x01A82B 06:A81B: 14 A9     .word ofs_A914_02
- D 1 - I - 0x01A82D 06:A81D: 1A A9     .word ofs_A91A_03

off_A81F_01:
- D 1 - I - 0x01A82F 06:A81F: 14 A9     .word ofs_A914_00
- D 1 - I - 0x01A831 06:A821: 14 A9     .word ofs_A914_01
- D 1 - I - 0x01A833 06:A823: 1A A9     .word ofs_A91A_02
- D 1 - I - 0x01A835 06:A825: 87 A8     .word ofs_A887_03

off_A827_02:
- D 1 - I - 0x01A837 06:A827: 14 A9     .word ofs_A914_00
- D 1 - I - 0x01A839 06:A829: 1A A9     .word ofs_A91A_01
- D 1 - I - 0x01A83B 06:A82B: 87 A8     .word ofs_A887_02
- D 1 - I - 0x01A83D 06:A82D: 87 A8     .word ofs_A887_03

off_A82F_03:
- D 1 - I - 0x01A83F 06:A82F: 1A A9     .word ofs_A91A_00
- D 1 - I - 0x01A841 06:A831: 87 A8     .word ofs_A887_01
- D 1 - I - 0x01A843 06:A833: 87 A8     .word ofs_A887_02
- D 1 - I - 0x01A845 06:A835: 87 A8     .word ofs_A887_03

off_A837_00:
- D 1 - I - 0x01A847 06:A837: 57 A9     .word ofs_A957_00
- D 1 - I - 0x01A849 06:A839: 06 A9     .word ofs_A906_01
- D 1 - I - 0x01A84B 06:A83B: 06 A9     .word ofs_A906_02
- D 1 - I - 0x01A84D 06:A83D: 0D A9     .word ofs_A90D_03

off_A83F_01:
- D 1 - I - 0x01A84F 06:A83F: 06 A9     .word ofs_A906_00
- D 1 - I - 0x01A851 06:A841: 06 A9     .word ofs_A906_01
- D 1 - I - 0x01A853 06:A843: 0D A9     .word ofs_A90D_02
- D 1 - I - 0x01A855 06:A845: 87 A8     .word ofs_A887_03

off_A847_02:
- D 1 - I - 0x01A857 06:A847: 06 A9     .word ofs_A906_00
- D 1 - I - 0x01A859 06:A849: 0D A9     .word ofs_A90D_01
- D 1 - I - 0x01A85B 06:A84B: 87 A8     .word ofs_A887_02
- D 1 - I - 0x01A85D 06:A84D: 87 A8     .word ofs_A887_03

off_A84F_03:
- D 1 - I - 0x01A85F 06:A84F: 0D A9     .word ofs_A90D_00
- D 1 - I - 0x01A861 06:A851: 87 A8     .word ofs_A887_01
- D 1 - I - 0x01A863 06:A853: 87 A8     .word ofs_A887_02
- D 1 - I - 0x01A865 06:A855: 87 A8     .word ofs_A887_03

off_A857_00:
- D 1 - I - 0x01A867 06:A857: 4F A9     .word ofs_A94F_00
- D 1 - I - 0x01A869 06:A859: 51 A9     .word ofs_A951_01
- D 1 - I - 0x01A86B 06:A85B: 53 A9     .word ofs_A953_02
- D 1 - I - 0x01A86D 06:A85D: 55 A9     .word ofs_A955_03
- D 1 - I - 0x01A86F 06:A85F: 4F A9     .word ofs_A94F_04
- D 1 - I - 0x01A871 06:A861: 51 A9     .word ofs_A951_05
- D 1 - I - 0x01A873 06:A863: 53 A9     .word ofs_A953_06
- D 1 - I - 0x01A875 06:A865: 55 A9     .word ofs_A955_07

off_A867_01:
- D 1 - I - 0x01A877 06:A867: 5E A9     .word ofs_A95E_00
- D 1 - I - 0x01A879 06:A869: 60 A9     .word ofs_A960_01
- D 1 - I - 0x01A87B 06:A86B: 62 A9     .word ofs_A962_02
- D 1 - I - 0x01A87D 06:A86D: 64 A9     .word ofs_A964_03
- D 1 - I - 0x01A87F 06:A86F: 66 A9     .word ofs_A966_04
- D 1 - I - 0x01A881 06:A871: 68 A9     .word ofs_A968_05
- D 1 - I - 0x01A883 06:A873: 6A A9     .word ofs_A96A_06
- D 1 - I - 0x01A885 06:A875: 6C A9     .word ofs_A96C_07

off_A877_02:
off_A877_03:
- D 1 - I - 0x01A887 06:A877: 6E A9     .word ofs_A96E_00
- D 1 - I - 0x01A889 06:A879: 70 A9     .word ofs_A970_01
- D 1 - I - 0x01A88B 06:A87B: 72 A9     .word ofs_A972_02
- D 1 - I - 0x01A88D 06:A87D: 74 A9     .word ofs_A974_03
- D 1 - I - 0x01A88F 06:A87F: 76 A9     .word ofs_A976_04
- D 1 - I - 0x01A891 06:A881: 78 A9     .word ofs_A978_05
- D 1 - I - 0x01A893 06:A883: 7A A9     .word ofs_A97A_06
- D 1 - I - 0x01A895 06:A885: 7C A9     .word ofs_A97C_07



ofs_A887_00:
ofs_A887_01:
ofs_A887_02:
ofs_A887_03:
- D 1 - I - 0x01A897 06:A887: 00        .byte $00, $00, $00, $00, $00, $00, $00   ; 


; bzk garbage
- - - - - - 0x01A89E 06:A88E: 00        .byte $00   ; 



ofs_A88F_00:
ofs_A88F_01:
ofs_A88F_02:
ofs_A88F_03:
- D 1 - I - 0x01A89F 06:A88F: 94        .byte $94, $A4, $A4, $A4, $A4, $B4   ; 

ofs_A895_01:
ofs_A895_02:
ofs_A895_03:
- D 1 - I - 0x01A8A5 06:A895: 95        .byte $95, $CF, $CF, $CF, $CF, $B5   ; 

ofs_A89B_03:
- D 1 - I - 0x01A8AB 06:A89B: 96        .byte $96, $A6, $A6, $A6, $A6, $B6   ; 

ofs_A8A1_00:
- D 1 - I - 0x01A8B1 06:A8A1: 0E        .byte $0E, $1E, $1E, $1E, $1E, $1E, $2E   ; 

ofs_A8A8_01:
ofs_A8A8_00:
- D 1 - I - 0x01A8B8 06:A8A8: 3E        .byte $3E, $08, $18, $38, $CE, $CE, $3F   ; 

ofs_A8AF_02:
ofs_A8AF_01:
ofs_A8AF_00:
- D 1 - I - 0x01A8BF 06:A8AF: 3E        .byte $3E, $09, $19, $CE, $CE, $CE, $3F   ; 

ofs_A8B6_03:
ofs_A8B6_02:
ofs_A8B6_01:
ofs_A8B6_00:
- D 1 - I - 0x01A8C6 06:A8B6: 0F        .byte $0F, $1F, $1F, $9F, $1F, $1F, $2F   ; 

ofs_A8BD_00:
- D 1 - I - 0x01A8CD 06:A8BD: 76        .byte $76, $86, $86, $86, $86, $86, $96   ; 

ofs_A8C4_00:
- D 1 - I - 0x01A8D4 06:A8C4: 14        .byte $14, $24, $24, $24, $24, $34   ; 



; bzk garbage
- - - - - - 0x01A8DA 06:A8CA: 46        .byte $46   ; 
- - - - - - 0x01A8DB 06:A8CB: 46        .byte $46   ; 
- - - - - - 0x01A8DC 06:A8CC: 46        .byte $46   ; 
- - - - - - 0x01A8DD 06:A8CD: 46        .byte $46   ; 
- - - - - - 0x01A8DE 06:A8CE: 46        .byte $46   ; 
- - - - - - 0x01A8DF 06:A8CF: 46        .byte $46   ; 
- - - - - - 0x01A8E0 06:A8D0: 46        .byte $46   ; 
- - - - - - 0x01A8E1 06:A8D1: 46        .byte $46   ; 
- - - - - - 0x01A8E2 06:A8D2: 46        .byte $46   ; 
- - - - - - 0x01A8E3 06:A8D3: 56        .byte $56   ; 
- - - - - - 0x01A8E4 06:A8D4: 66        .byte $66   ; 
- - - - - - 0x01A8E5 06:A8D5: 00        .byte $00   ; 
- - - - - - 0x01A8E6 06:A8D6: 47        .byte $47   ; 
- - - - - - 0x01A8E7 06:A8D7: 47        .byte $47   ; 
- - - - - - 0x01A8E8 06:A8D8: 47        .byte $47   ; 
- - - - - - 0x01A8E9 06:A8D9: 47        .byte $47   ; 
- - - - - - 0x01A8EA 06:A8DA: 47        .byte $47   ; 
- - - - - - 0x01A8EB 06:A8DB: 47        .byte $47   ; 
- - - - - - 0x01A8EC 06:A8DC: 47        .byte $47   ; 
- - - - - - 0x01A8ED 06:A8DD: 47        .byte $47   ; 
- - - - - - 0x01A8EE 06:A8DE: 47        .byte $47   ; 
- - - - - - 0x01A8EF 06:A8DF: 57        .byte $57   ; 
- - - - - - 0x01A8F0 06:A8E0: 67        .byte $67   ; 
- - - - - - 0x01A8F1 06:A8E1: 00        .byte $00   ; 
- - - - - - 0x01A8F2 06:A8E2: 0F        .byte $0F   ; 
- - - - - - 0x01A8F3 06:A8E3: 0F        .byte $0F   ; 
- - - - - - 0x01A8F4 06:A8E4: 0F        .byte $0F   ; 
- - - - - - 0x01A8F5 06:A8E5: 0F        .byte $0F   ; 
- - - - - - 0x01A8F6 06:A8E6: 0F        .byte $0F   ; 
- - - - - - 0x01A8F7 06:A8E7: 0F        .byte $0F   ; 
- - - - - - 0x01A8F8 06:A8E8: 0F        .byte $0F   ; 
- - - - - - 0x01A8F9 06:A8E9: 0F        .byte $0F   ; 
- - - - - - 0x01A8FA 06:A8EA: 0F        .byte $0F   ; 
- - - - - - 0x01A8FB 06:A8EB: 0F        .byte $0F   ; 
- - - - - - 0x01A8FC 06:A8EC: 0F        .byte $0F   ; 
- - - - - - 0x01A8FD 06:A8ED: 0F        .byte $0F   ; 
- - - - - - 0x01A8FE 06:A8EE: 0F        .byte $0F   ; 
- - - - - - 0x01A8FF 06:A8EF: 0F        .byte $0F   ; 
- - - - - - 0x01A900 06:A8F0: 0F        .byte $0F   ; 
- - - - - - 0x01A901 06:A8F1: 0F        .byte $0F   ; 
- - - - - - 0x01A902 06:A8F2: 0F        .byte $0F   ; 
- - - - - - 0x01A903 06:A8F3: 0F        .byte $0F   ; 
- - - - - - 0x01A904 06:A8F4: CB        .byte $CB   ; 
- - - - - - 0x01A905 06:A8F5: CB        .byte $CB   ; 
- - - - - - 0x01A906 06:A8F6: CB        .byte $CB   ; 
- - - - - - 0x01A907 06:A8F7: CB        .byte $CB   ; 
- - - - - - 0x01A908 06:A8F8: CB        .byte $CB   ; 
- - - - - - 0x01A909 06:A8F9: CB        .byte $CB   ; 
- - - - - - 0x01A90A 06:A8FA: CB        .byte $CB   ; 
- - - - - - 0x01A90B 06:A8FB: CB        .byte $CB   ; 
- - - - - - 0x01A90C 06:A8FC: CB        .byte $CB   ; 
- - - - - - 0x01A90D 06:A8FD: CB        .byte $CB   ; 
- - - - - - 0x01A90E 06:A8FE: CB        .byte $CB   ; 
- - - - - - 0x01A90F 06:A8FF: CB        .byte $CB   ; 
- - - - - - 0x01A910 06:A900: CB        .byte $CB   ; 
- - - - - - 0x01A911 06:A901: CB        .byte $CB   ; 
- - - - - - 0x01A912 06:A902: CB        .byte $CB   ; 
- - - - - - 0x01A913 06:A903: CB        .byte $CB   ; 
- - - - - - 0x01A914 06:A904: CB        .byte $CB   ; 
- - - - - - 0x01A915 06:A905: CB        .byte $CB   ; 



ofs_A906_01:
ofs_A906_02:
ofs_A906_00:
- D 1 - I - 0x01A916 06:A906: 9A        .byte $9A, $AA, $AA, $AA, $AA, $AA, $BA   ; 

ofs_A90D_03:
ofs_A90D_02:
ofs_A90D_01:
ofs_A90D_00:
- D 1 - I - 0x01A91D 06:A90D: 9B        .byte $9B, $AB, $AB, $AB, $AB, $AB, $BB   ; 

ofs_A914_01:
ofs_A914_02:
ofs_A914_00:
- D 1 - I - 0x01A924 06:A914: 15        .byte $15, $25, $25, $25, $25, $35   ; 

ofs_A91A_03:
ofs_A91A_02:
ofs_A91A_01:
ofs_A91A_00:
- D 1 - I - 0x01A92A 06:A91A: 16        .byte $16, $26, $26, $26, $26, $36   ; 

ofs_A920_01:
ofs_A920_00:
- D 1 - I - 0x01A930 06:A920: 88        .byte $88, $CE, $CE, $CE, $CE, $CE, $98   ; 

ofs_A927_02:
ofs_A927_01:
ofs_A927_00:
- D 1 - I - 0x01A937 06:A927: 88        .byte $88, $CE, $85, $CE, $CE, $CE, $98   ; 

ofs_A92E_03:
ofs_A92E_02:
ofs_A92E_01:
ofs_A92E_00:
- D 1 - I - 0x01A93E 06:A92E: 77        .byte $77, $87, $87, $87, $87, $87, $97   ; 


; bzk garbage
- - - - - - 0x01A945 06:A935: 95        .byte $95   ; 
- - - - - - 0x01A946 06:A936: A5        .byte $A5   ; 
- - - - - - 0x01A947 06:A937: A5        .byte $A5   ; 
- - - - - - 0x01A948 06:A938: A5        .byte $A5   ; 
- - - - - - 0x01A949 06:A939: A5        .byte $A5   ; 
- - - - - - 0x01A94A 06:A93A: B5        .byte $B5   ; 
- - - - - - 0x01A94B 06:A93B: 96        .byte $96   ; 
- - - - - - 0x01A94C 06:A93C: A6        .byte $A6   ; 
- - - - - - 0x01A94D 06:A93D: A6        .byte $A6   ; 
- - - - - - 0x01A94E 06:A93E: A6        .byte $A6   ; 
- - - - - - 0x01A94F 06:A93F: A6        .byte $A6   ; 
- - - - - - 0x01A950 06:A940: B6        .byte $B6   ; 



ofs_A941_01:
- D 1 - I - 0x01A951 06:A941: 1A        .byte $1A, $FF, $FF, $FF, $FF, $5A, $6A   ; 

ofs_A948_00:
ofs_A948_01:
- D 1 - I - 0x01A958 06:A948: 0B        .byte $0B, $1B, $1B, $1B, $1B, $1B, $5B   ; 

ofs_A94F_00:
ofs_A94F_04:
- D 1 - I - 0x01A95F 06:A94F: 0E        .byte $0E, $1E   ; 

ofs_A951_01:
ofs_A951_05:
- D 1 - I - 0x01A961 06:A951: 0F        .byte $0F, $1F   ; 

ofs_A953_02:
ofs_A953_06:
- D 1 - I - 0x01A963 06:A953: 0C        .byte $0C, $1C   ; 

ofs_A955_03:
ofs_A955_07:
- D 1 - I - 0x01A965 06:A955: 0D        .byte $0D, $1D   ; 

ofs_A957_00:
- D 1 - I - 0x01A967 06:A957: 99        .byte $99, $A9, $A9, $A9, $A9, $A9, $B9   ; 

ofs_A95E_00:
- D 1 - I - 0x01A96E 06:A95E: A8        .byte $A8, $B8   ; 

ofs_A960_01:
- D 1 - I - 0x01A970 06:A960: A9        .byte $A9, $B9   ; 

ofs_A962_02:
- D 1 - I - 0x01A972 06:A962: AA        .byte $AA, $BA   ; 

ofs_A964_03:
- D 1 - I - 0x01A974 06:A964: AB        .byte $AB, $BB   ; 

ofs_A966_04:
- D 1 - I - 0x01A976 06:A966: 64        .byte $64, $74   ; 

ofs_A968_05:
- D 1 - I - 0x01A978 06:A968: 65        .byte $65, $75   ; 

ofs_A96A_06:
- D 1 - I - 0x01A97A 06:A96A: 66        .byte $66, $76   ; 

ofs_A96C_07:
- D 1 - I - 0x01A97C 06:A96C: 67        .byte $67, $77   ; 

ofs_A96E_00:
- D 1 - I - 0x01A97E 06:A96E: 88        .byte $88, $98   ; 

ofs_A970_01:
- D 1 - I - 0x01A980 06:A970: 89        .byte $89, $99   ; 

ofs_A972_02:
- D 1 - I - 0x01A982 06:A972: 8A        .byte $8A, $9A   ; 

ofs_A974_03:
- D 1 - I - 0x01A984 06:A974: 8B        .byte $8B, $9B   ; 

ofs_A976_04:
- D 1 - I - 0x01A986 06:A976: 44        .byte $44, $54   ; 

ofs_A978_05:
- D 1 - I - 0x01A988 06:A978: 45        .byte $45, $55   ; 

ofs_A97A_06:
- D 1 - I - 0x01A98A 06:A97A: 46        .byte $46, $56   ; 

ofs_A97C_07:
- D 1 - I - 0x01A98C 06:A97C: 47        .byte $47, $57   ; 


; bzk garbage
- - - - - - 0x01A98E 06:A97E: 00        .byte $00, $00   ; 
- - - - - - 0x01A990 06:A980: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01A9A0 06:A990: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01A9B0 06:A9A0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01A9C0 06:A9B0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01A9D0 06:A9C0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01A9E0 06:A9D0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01A9F0 06:A9E0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AA00 06:A9F0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AA10 06:AA00: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AA20 06:AA10: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AA30 06:AA20: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AA40 06:AA30: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AA50 06:AA40: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AA60 06:AA50: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AA70 06:AA60: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AA80 06:AA70: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AA90 06:AA80: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AAA0 06:AA90: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AAB0 06:AAA0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AAC0 06:AAB0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AAD0 06:AAC0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AAE0 06:AAD0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AAF0 06:AAE0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AB00 06:AAF0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AB10 06:AB00: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AB20 06:AB10: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AB30 06:AB20: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AB40 06:AB30: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AB50 06:AB40: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AB60 06:AB50: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AB70 06:AB60: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AB80 06:AB70: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AB90 06:AB80: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01ABA0 06:AB90: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01ABB0 06:ABA0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 



sub_0x01ABC0_jumping_spikes:
C - - - - - 0x01ABC0 06:ABB0: B5 BF     LDA ram_obj_id,X
C - - - - - 0x01ABC2 06:ABB2: C9 1B     CMP #con_obj_jumping_spike
C - - - - - 0x01ABC4 06:ABB4: F0 6B     BEQ bra_AC21_RTS
C - - - - - 0x01ABC6 06:ABB6: BD 61 03  LDA ram_0361_obj,X
C - - - - - 0x01ABC9 06:ABB9: C9 04     CMP #con_0361_04
C - - - - - 0x01ABCB 06:ABBB: F0 65     BEQ bra_AC22
C - - - - - 0x01ABCD 06:ABBD: AD 22 04  LDA ram_mission_hi
C - - - - - 0x01ABD0 06:ABC0: C9 04     CMP #con_mission_id_04
C - - - - - 0x01ABD2 06:ABC2: F0 20     BEQ bra_ABE4
C - - - - - 0x01ABD4 06:ABC4: C9 07     CMP #con_mission_id_07
C - - - - - 0x01ABD6 06:ABC6: F0 08     BEQ bra_ABD0
C - - - - - 0x01ABD8 06:ABC8: AD 9C 03  LDA ram_039C
C - - - - - 0x01ABDB 06:ABCB: F0 54     BEQ bra_AC21_RTS
C - - - - - 0x01ABDD 06:ABCD: 4C 4E AC  JMP loc_AC4E
bra_ABD0:
C - - - - - 0x01ABE0 06:ABD0: A9 01     LDA #$01
C - - - - - 0x01ABE2 06:ABD2: 85 19     STA ram_0019
C - - - - - 0x01ABE4 06:ABD4: BD 59 03  LDA ram_0359_obj,X
C - - - - - 0x01ABE7 06:ABD7: C9 01     CMP #con_0359_01
C - - - - - 0x01ABE9 06:ABD9: F0 36     BEQ bra_AC11
C - - - - - 0x01ABEB 06:ABDB: C9 02     CMP #con_0359_02
C - - - - - 0x01ABED 06:ABDD: F0 2A     BEQ bra_AC09
C - - - - - 0x01ABEF 06:ABDF: C9 03     CMP #con_0359_03
C - - - - - 0x01ABF1 06:ABE1: F0 2E     BEQ bra_AC11
C - - - - - 0x01ABF3 06:ABE3: 60        RTS
bra_ABE4:
C - - - - - 0x01ABF4 06:ABE4: A9 01     LDA #$01
C - - - - - 0x01ABF6 06:ABE6: 85 19     STA ram_0019
C - - - - - 0x01ABF8 06:ABE8: AD 35 04  LDA ram_difficulty
C - - - - - 0x01ABFB 06:ABEB: F0 0D     BEQ bra_ABFA    ; if easy
; if not easy
C - - - - - 0x01ABFD 06:ABED: C9 02     CMP #$02
C - - - - - 0x01ABFF 06:ABEF: F0 07     BEQ bra_ABF8
C - - - - - 0x01AC01 06:ABF1: AD A5 04  LDA ram_04A5_counter
C - - - - - 0x01AC04 06:ABF4: 29 01     AND #$01
C - - - - - 0x01AC06 06:ABF6: F0 02     BEQ bra_ABFA
bra_ABF8:
C - - - - - 0x01AC08 06:ABF8: E6 19     INC ram_0019
bra_ABFA:
C - - - - - 0x01AC0A 06:ABFA: BD 59 03  LDA ram_0359_obj,X
C - - - - - 0x01AC0D 06:ABFD: F0 1A     BEQ bra_AC19
C - - - - - 0x01AC0F 06:ABFF: C9 03     CMP #con_0359_03
C - - - - - 0x01AC11 06:AC01: D0 1E     BNE bra_AC21_RTS
C - - - - - 0x01AC13 06:AC03: B5 92     LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01AC15 06:AC05: C9 40     CMP #$40
C - - - - - 0x01AC17 06:AC07: 90 08     BCC bra_AC11
bra_AC09:
C - - - - - 0x01AC19 06:AC09: B5 77     LDA ram_obj_pos_X_lo,X
C - - - - - 0x01AC1B 06:AC0B: 18        CLC
C - - - - - 0x01AC1C 06:AC0C: 65 19     ADC ram_0019
C - - - - - 0x01AC1E 06:AC0E: 95 77     STA ram_obj_pos_X_lo,X
C - - - - - 0x01AC20 06:AC10: 60        RTS
bra_AC11:
C - - - - - 0x01AC21 06:AC11: B5 77     LDA ram_obj_pos_X_lo,X
C - - - - - 0x01AC23 06:AC13: 38        SEC
C - - - - - 0x01AC24 06:AC14: E5 19     SBC ram_0019
C - - - - - 0x01AC26 06:AC16: 95 77     STA ram_obj_pos_X_lo,X
C - - - - - 0x01AC28 06:AC18: 60        RTS
bra_AC19:
C - - - - - 0x01AC29 06:AC19: B5 92     LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01AC2B 06:AC1B: C9 40     CMP #$40
C - - - - - 0x01AC2D 06:AC1D: B0 F2     BCS bra_AC11
C - - - - - 0x01AC2F 06:AC1F: 90 E8     BCC bra_AC09    ; jmp
bra_AC21_RTS:
C - - - - - 0x01AC31 06:AC21: 60        RTS
bra_AC22:
C - - - - - 0x01AC32 06:AC22: AC 35 04  LDY ram_difficulty
C - - - - - 0x01AC35 06:AC25: C8        INY
C - - - - - 0x01AC36 06:AC26: 84 19     STY ram_0019
C - - - - - 0x01AC38 06:AC28: A0 00     LDY #$00
C - - - - - 0x01AC3A 06:AC2A: BD 59 03  LDA ram_0359_obj,X
C - - - - - 0x01AC3D 06:AC2D: C9 0A     CMP #con_0359_0A
C - - - - - 0x01AC3F 06:AC2F: F0 10     BEQ bra_AC41
C - - - - - 0x01AC41 06:AC31: C8        INY ; 01
C - - - - - 0x01AC42 06:AC32: C9 07     CMP #con_0359_07
C - - - - - 0x01AC44 06:AC34: F0 0B     BEQ bra_AC41
C - - - - - 0x01AC46 06:AC36: C8        INY ; 02
C - - - - - 0x01AC47 06:AC37: C9 03     CMP #con_0359_03
C - - - - - 0x01AC49 06:AC39: F0 06     BEQ bra_AC41
C - - - - - 0x01AC4B 06:AC3B: C8        INY ; 03
C - - - - - 0x01AC4C 06:AC3C: C9 01     CMP #con_0359_01
C - - - - - 0x01AC4E 06:AC3E: F0 01     BEQ bra_AC41
C - - - - - 0x01AC50 06:AC40: C8        INY ; 04
bra_AC41:
C - - - - - 0x01AC51 06:AC41: B9 53 06  LDA ram_0653,Y
C - - - - - 0x01AC54 06:AC44: 29 7F     AND #$7F
C - - - - - 0x01AC56 06:AC46: F0 D9     BEQ bra_AC21_RTS
C - - - - - 0x01AC58 06:AC48: C9 02     CMP #$02
C - - - - - 0x01AC5A 06:AC4A: F0 BD     BEQ bra_AC09
C - - - - - 0x01AC5C 06:AC4C: D0 C3     BNE bra_AC11    ; jmp
loc_AC4E:
C D 1 - - - 0x01AC5E 06:AC4E: A0 00     LDY #$00
bra_AC50_loop:
C - - - - - 0x01AC60 06:AC50: B9 95 AC  LDA tbl_AC95,Y
C - - - - - 0x01AC63 06:AC53: C9 FF     CMP #$FF
C - - - - - 0x01AC65 06:AC55: F0 0B     BEQ bra_AC62
C - - - - - 0x01AC67 06:AC57: D5 77     CMP ram_obj_pos_X_lo,X
C - - - - - 0x01AC69 06:AC59: B0 07     BCS bra_AC62
C - - - - - 0x01AC6B 06:AC5B: 98        TYA
C - - - - - 0x01AC6C 06:AC5C: 18        CLC
C - - - - - 0x01AC6D 06:AC5D: 69 05     ADC #$05
C - - - - - 0x01AC6F 06:AC5F: A8        TAY
C - - - - - 0x01AC70 06:AC60: D0 EE     BNE bra_AC50_loop
bra_AC62:
C - - - - - 0x01AC72 06:AC62: C8        INY
C - - - - - 0x01AC73 06:AC63: B9 95 AC  LDA tbl_AC95,Y
C - - - - - 0x01AC76 06:AC66: 85 29     STA ram_0029
C - - - - - 0x01AC78 06:AC68: C8        INY
C - - - - - 0x01AC79 06:AC69: B9 95 AC  LDA tbl_AC95,Y
C - - - - - 0x01AC7C 06:AC6C: 85 2A     STA ram_002A
C - - - - - 0x01AC7E 06:AC6E: C8        INY
C - - - - - 0x01AC7F 06:AC6F: B9 95 AC  LDA tbl_AC95,Y
C - - - - - 0x01AC82 06:AC72: 85 2B     STA ram_002B
C - - - - - 0x01AC84 06:AC74: C8        INY
C - - - - - 0x01AC85 06:AC75: B9 95 AC  LDA tbl_AC95,Y
C - - - - - 0x01AC88 06:AC78: 85 2C     STA ram_002C
C - - - - - 0x01AC8A 06:AC7A: B5 6E     LDA ram_006E_obj,X
C - - - - - 0x01AC8C 06:AC7C: 18        CLC
C - - - - - 0x01AC8D 06:AC7D: 65 29     ADC ram_0029
C - - - - - 0x01AC8F 06:AC7F: 95 6E     STA ram_006E_obj,X
C - - - - - 0x01AC91 06:AC81: B5 77     LDA ram_obj_pos_X_lo,X
C - - - - - 0x01AC93 06:AC83: 65 2A     ADC ram_002A
C - - - - - 0x01AC95 06:AC85: 95 77     STA ram_obj_pos_X_lo,X
C - - - - - 0x01AC97 06:AC87: B5 89     LDA ram_0089_obj,X
C - - - - - 0x01AC99 06:AC89: 18        CLC
C - - - - - 0x01AC9A 06:AC8A: 65 2B     ADC ram_002B
C - - - - - 0x01AC9C 06:AC8C: 95 89     STA ram_0089_obj,X
C - - - - - 0x01AC9E 06:AC8E: B5 92     LDA ram_obj_pos_Y_lo,X
C - - - - - 0x01ACA0 06:AC90: 65 2C     ADC ram_002C
C - - - - - 0x01ACA2 06:AC92: 95 92     STA ram_obj_pos_Y_lo,X
C - - - - - 0x01ACA4 06:AC94: 60        RTS



tbl_AC95:
;                                              +------------------------- pos_X_lo comparsion
;                                              |    +-------------------- 
;                                              |    |    +--------------- pos_X_lo add
;                                              |    |    |    +---------- 
;                                              |    |    |    |    +----- pos_Y_lo add
;                                              |    |    |    |    |
- D 1 - - - 0x01ACA5 06:AC95: 9F        .byte $9F, $00, $01, $80, $00   ; 
- D 1 - - - 0x01ACAA 06:AC9A: AF        .byte $AF, $00, $01, $00, $01   ; 
- D 1 - - - 0x01ACAF 06:AC9F: BC        .byte $BC, $00, $01, $80, $01   ; 
- D 1 - - - 0x01ACB4 06:ACA4: C4        .byte $C4, $00, $00, $80, $01   ; 
- D 1 - - - 0x01ACB9 06:ACA9: D0        .byte $D0, $00, $FF, $80, $01   ; 
- D 1 - - - 0x01ACBE 06:ACAE: FF        .byte $FF, $00, $FF, $00, $01   ; 


; bzk garbage
- - - - - - 0x01ACC3 06:ACB3: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01ACD0 06:ACC0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01ACE0 06:ACD0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01ACF0 06:ACE0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AD00 06:ACF0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AD10 06:AD00: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AD20 06:AD10: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AD30 06:AD20: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AD40 06:AD30: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AD50 06:AD40: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AD60 06:AD50: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AD70 06:AD60: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AD80 06:AD70: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01AD90 06:AD80: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01ADA0 06:AD90: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01ADB0 06:ADA0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01ADC0 06:ADB0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 



sub_0x01ADD0:
C - - - - - 0x01ADD0 06:ADC0: A9 40     LDA #$40
C - - - - - 0x01ADD2 06:ADC2: 20 8C FE  JSR sub_0x01FE9C_nmi_on
C - - - - - 0x01ADD5 06:ADC5: A9 00     LDA #$00
C - - - - - 0x01ADD7 06:ADC7: 8D BC 05  STA ram_buffer_index_2
C - - - - - 0x01ADDA 06:ADCA: 8D BB 05  STA ram_buffer_index_1
C - - - - - 0x01ADDD 06:ADCD: A9 00     LDA #$00
C - - - - - 0x01ADDF 06:ADCF: 85 1A     STA ram_001A
loc_ADD1:
C D 1 - - - 0x01ADE1 06:ADD1: A6 1A     LDX ram_001A
C - - - - - 0x01ADE3 06:ADD3: BD 1F B1  LDA tbl_B11F_credits,X
C - - - - - 0x01ADE6 06:ADD6: 8D 49 06  STA ram_0649
C - - - - - 0x01ADE9 06:ADD9: BD 20 B1  LDA tbl_B11F_credits + $01,X
C - - - - - 0x01ADEC 06:ADDC: 8D 4A 06  STA ram_0649 + $01
C - - - - - 0x01ADEF 06:ADDF: AD 49 06  LDA ram_0649
C - - - - - 0x01ADF2 06:ADE2: 85 29     STA ram_0029
C - - - - - 0x01ADF4 06:ADE4: AD 4A 06  LDA ram_0649 + $01
C - - - - - 0x01ADF7 06:ADE7: 85 2A     STA ram_002A
C - - - - - 0x01ADF9 06:ADE9: 20 5D AE  JSR sub_AE5D
C - - - - - 0x01ADFC 06:ADEC: A2 02     LDX #$02
loc_ADEE_loop:
C D 1 - - - 0x01ADFE 06:ADEE: BD C4 AE  LDA tbl_AEC4,X
C - - - - - 0x01AE01 06:ADF1: 8D 8F 04  STA ram_pal_bg_new
C - - - - - 0x01AE04 06:ADF4: A5 1A     LDA ram_001A
C - - - - - 0x01AE06 06:ADF6: 48        PHA
C - - - - - 0x01AE07 06:ADF7: 8A        TXA
C - - - - - 0x01AE08 06:ADF8: 48        PHA
C - - - - - 0x01AE09 06:ADF9: 20 47 E2  JSR sub_0x01E257
C - - - - - 0x01AE0C 06:ADFC: 68        PLA
C - - - - - 0x01AE0D 06:ADFD: AA        TAX
C - - - - - 0x01AE0E 06:ADFE: 68        PLA
C - - - - - 0x01AE0F 06:ADFF: 85 1A     STA ram_001A
C - - - - - 0x01AE11 06:AE01: CA        DEX
C - - - - - 0x01AE12 06:AE02: 30 0A     BMI bra_AE0E
C - - - - - 0x01AE14 06:AE04: A9 01     LDA #$01
C - - - - - 0x01AE16 06:AE06: 85 19     STA ram_0019
C - - - - - 0x01AE18 06:AE08: 20 4C AE  JSR sub_AE4C
C - - - - - 0x01AE1B 06:AE0B: 4C EE AD  JMP loc_ADEE_loop
bra_AE0E:
C - - - - - 0x01AE1E 06:AE0E: A9 96     LDA #$96
C - - - - - 0x01AE20 06:AE10: 85 19     STA ram_0019
C - - - - - 0x01AE22 06:AE12: 20 4C AE  JSR sub_AE4C
C - - - - - 0x01AE25 06:AE15: A2 02     LDX #$02
loc_AE17_loop:
C D 1 - - - 0x01AE27 06:AE17: BD C7 AE  LDA tbl_AEC7,X
C - - - - - 0x01AE2A 06:AE1A: 8D 8F 04  STA ram_pal_bg_new
C - - - - - 0x01AE2D 06:AE1D: A5 1A     LDA ram_001A
C - - - - - 0x01AE2F 06:AE1F: 48        PHA
C - - - - - 0x01AE30 06:AE20: 8A        TXA
C - - - - - 0x01AE31 06:AE21: 48        PHA
C - - - - - 0x01AE32 06:AE22: 20 47 E2  JSR sub_0x01E257
C - - - - - 0x01AE35 06:AE25: 68        PLA
C - - - - - 0x01AE36 06:AE26: AA        TAX
C - - - - - 0x01AE37 06:AE27: 68        PLA
C - - - - - 0x01AE38 06:AE28: 85 1A     STA ram_001A
C - - - - - 0x01AE3A 06:AE2A: CA        DEX
C - - - - - 0x01AE3B 06:AE2B: 30 0A     BMI bra_AE37
C - - - - - 0x01AE3D 06:AE2D: A9 01     LDA #$01
C - - - - - 0x01AE3F 06:AE2F: 85 19     STA ram_0019
C - - - - - 0x01AE41 06:AE31: 20 4C AE  JSR sub_AE4C
C - - - - - 0x01AE44 06:AE34: 4C 17 AE  JMP loc_AE17_loop
bra_AE37:
C - - - - - 0x01AE47 06:AE37: E6 1A     INC ram_001A
C - - - - - 0x01AE49 06:AE39: E6 1A     INC ram_001A
C - - - - - 0x01AE4B 06:AE3B: A5 1A     LDA ram_001A
C - - - - - 0x01AE4D 06:AE3D: C9 08     CMP #$08
C - - - - - 0x01AE4F 06:AE3F: B0 0A     BCS bra_AE4B_RTS
C - - - - - 0x01AE51 06:AE41: A9 0A     LDA #$0A
C - - - - - 0x01AE53 06:AE43: 85 19     STA ram_0019
C - - - - - 0x01AE55 06:AE45: 20 4C AE  JSR sub_AE4C
C - - - - - 0x01AE58 06:AE48: 4C D1 AD  JMP loc_ADD1
bra_AE4B_RTS:
C - - - - - 0x01AE5B 06:AE4B: 60        RTS



sub_AE4C:
bra_AE4C_loop:
C - - - - - 0x01AE5C 06:AE4C: A9 00     LDA #$00
C - - - - - 0x01AE5E 06:AE4E: 8D F1 00  STA a: ram_nmi_counter
bra_AE51_loop:
C - - - - - 0x01AE61 06:AE51: AD F1 00  LDA a: ram_nmi_counter
C - - - - - 0x01AE64 06:AE54: C9 04     CMP #$04
C - - - - - 0x01AE66 06:AE56: 90 F9     BCC bra_AE51_loop
C - - - - - 0x01AE68 06:AE58: C6 19     DEC ram_0019
C - - - - - 0x01AE6A 06:AE5A: D0 F0     BNE bra_AE4C_loop
C - - - - - 0x01AE6C 06:AE5C: 60        RTS



sub_AE5D:
C - - - - - 0x01AE6D 06:AE5D: A0 00     LDY #$00
loc_AE5F_loop:
C D 1 - - - 0x01AE6F 06:AE5F: B1 29     LDA (ram_0029),Y
C - - - - - 0x01AE71 06:AE61: 85 2B     STA ram_002B
C - - - - - 0x01AE73 06:AE63: C8        INY
C - - - - - 0x01AE74 06:AE64: B1 29     LDA (ram_0029),Y
C - - - - - 0x01AE76 06:AE66: F0 1E     BEQ bra_AE86_RTS
C - - - - - 0x01AE78 06:AE68: 85 2C     STA ram_002C
C - - - - - 0x01AE7A 06:AE6A: C8        INY
C - - - - - 0x01AE7B 06:AE6B: B1 29     LDA (ram_0029),Y
C - - - - - 0x01AE7D 06:AE6D: 85 2D     STA ram_002D
C - - - - - 0x01AE7F 06:AE6F: C8        INY
C - - - - - 0x01AE80 06:AE70: B1 29     LDA (ram_0029),Y
C - - - - - 0x01AE82 06:AE72: 85 2E     STA ram_002E
C - - - - - 0x01AE84 06:AE74: C8        INY
C - - - - - 0x01AE85 06:AE75: 84 1C     STY ram_001C
bra_AE77_loop:
C - - - - - 0x01AE87 06:AE77: A9 30     LDA #con_E2E6 + $30
C - - - - - 0x01AE89 06:AE79: 20 E6 E2  JSR sub_0x01E2F6
C - - - - - 0x01AE8C 06:AE7C: B0 F9     BCS bra_AE77_loop
C - - - - - 0x01AE8E 06:AE7E: 20 87 AE  JSR sub_AE87
C - - - - - 0x01AE91 06:AE81: A4 1C     LDY ram_001C
C - - - - - 0x01AE93 06:AE83: 4C 5F AE  JMP loc_AE5F_loop
bra_AE86_RTS:
C - - - - - 0x01AE96 06:AE86: 60        RTS



sub_AE87:
C - - - - - 0x01AE97 06:AE87: AE BC 05  LDX ram_buffer_index_2
C - - - - - 0x01AE9A 06:AE8A: A5 2C     LDA ram_002C
C - - - - - 0x01AE9C 06:AE8C: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01AE9F 06:AE8F: E8        INX
C - - - - - 0x01AEA0 06:AE90: A5 2B     LDA ram_002B
C - - - - - 0x01AEA2 06:AE92: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01AEA5 06:AE95: E8        INX
C - - - - - 0x01AEA6 06:AE96: A9 00     LDA #$00
C - - - - - 0x01AEA8 06:AE98: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01AEAB 06:AE9B: E8        INX
C - - - - - 0x01AEAC 06:AE9C: A9 10     LDA #$10
C - - - - - 0x01AEAE 06:AE9E: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01AEB1 06:AEA1: E8        INX
C - - - - - 0x01AEB2 06:AEA2: A0 00     LDY #$00
loc_AEA4_loop:
C D 1 - - - 0x01AEB4 06:AEA4: B1 2D     LDA (ram_002D),Y
C - - - - - 0x01AEB6 06:AEA6: C9 FF     CMP #$FF
C - - - - - 0x01AEB8 06:AEA8: F0 08     BEQ bra_AEB2
C - - - - - 0x01AEBA 06:AEAA: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01AEBD 06:AEAD: E8        INX
C - - - - - 0x01AEBE 06:AEAE: C8        INY
C - - - - - 0x01AEBF 06:AEAF: 4C A4 AE  JMP loc_AEA4_loop
bra_AEB2:
loc_AEB2_loop:
C D 1 - - - 0x01AEC2 06:AEB2: C0 10     CPY #$10
C - - - - - 0x01AEC4 06:AEB4: B0 0A     BCS bra_AEC0
C - - - - - 0x01AEC6 06:AEB6: A9 00     LDA #$00
C - - - - - 0x01AEC8 06:AEB8: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01AECB 06:AEBB: E8        INX
C - - - - - 0x01AECC 06:AEBC: C8        INY
C - - - - - 0x01AECD 06:AEBD: 4C B2 AE  JMP loc_AEB2_loop
bra_AEC0:
C - - - - - 0x01AED0 06:AEC0: 8E BC 05  STX ram_buffer_index_2
C - - - - - 0x01AED3 06:AEC3: 60        RTS



tbl_AEC4:
- D 1 - - - 0x01AED4 06:AEC4: 19        .byte $19   ; 00 
- D 1 - - - 0x01AED5 06:AEC5: 2D        .byte $2D   ; 01 
- D 1 - - - 0x01AED6 06:AEC6: 2E        .byte $2E   ; 02 



tbl_AEC7:
- D 1 - - - 0x01AED7 06:AEC7: 2F        .byte $2F   ; 00 
- D 1 - - - 0x01AED8 06:AEC8: 2E        .byte $2E   ; 01 
- D 1 - - - 0x01AED9 06:AEC9: 2D        .byte $2D   ; 02 



_off025_AECA_00:
- D 1 - I - 0x01AEDA 06:AECA: 2D 21     .word $212D ; 
- D 1 - I - 0x01AEDC 06:AECC: 8E AF     .word off_00_AF8E_00

- D 1 - I - 0x01AEDE 06:AECE: 22 22     .word $2222 ; 
- D 1 - I - 0x01AEE0 06:AED0: 9B AF     .word off_00_AF9B_01

- D 1 - I - 0x01AEE2 06:AED2: 62 22     .word $2262 ; 
- D 1 - I - 0x01AEE4 06:AED4: AB AF     .word off_00_AFAB_02

- D 1 - I - 0x01AEE6 06:AED6: A2 22     .word $22A2 ; 
- D 1 - I - 0x01AEE8 06:AED8: B9 AF     .word off_00_AFB9_03

- D 1 - I - 0x01AEEA 06:AEDA: E2 22     .word $22E2 ; 
- D 1 - I - 0x01AEEC 06:AEDC: C6 AF     .word off_00_AFC6_04

- D 1 - I - 0x01AEEE 06:AEDE: 22 23     .word $2322 ; 
- D 1 - I - 0x01AEF0 06:AEE0: D5 AF     .word off_00_AFD5_05

- D 1 - I - 0x01AEF2 06:AEE2: 00 00     .word $0000     ; end token



_off025_AEE4_01:
- D 1 - I - 0x01AEF4 06:AEE4: AD 20     .word $20AD ; 
- D 1 - I - 0x01AEF6 06:AEE6: E3 AF     .word off_01_AFE3_00

- D 1 - I - 0x01AEF8 06:AEE8: CD 20     .word $20CD ; 
- D 1 - I - 0x01AEFA 06:AEEA: EE AF     .word off_01_AFEE_01

- D 1 - I - 0x01AEFC 06:AEEC: 0D 21     .word $210D ; 
- D 1 - I - 0x01AEFE 06:AEEE: FF AF     .word off_01_AFFF_02

- D 1 - I - 0x01AF00 06:AEF0: 4D 21     .word $214D ; 
- D 1 - I - 0x01AF02 06:AEF2: 0B B0     .word off_01_B00B_03

- D 1 - I - 0x01AF04 06:AEF4: 2D 21     .word $212D ; 
- D 1 - I - 0x01AF06 06:AEF6: 1E B1     .word off_01_B11E_04

- D 1 - I - 0x01AF08 06:AEF8: 22 22     .word $2222 ; 
- D 1 - I - 0x01AF0A 06:AEFA: 18 B0     .word off_01_B018_05

- D 1 - I - 0x01AF0C 06:AEFC: 42 22     .word $2242 ; 
- D 1 - I - 0x01AF0E 06:AEFE: EE AF     .word off_01_AFEE_06

- D 1 - I - 0x01AF10 06:AF00: 82 22     .word $2282 ; 
- D 1 - I - 0x01AF12 06:AF02: 1E B0     .word off_01_B01E_07

- D 1 - I - 0x01AF14 06:AF04: C2 22     .word $22C2 ; 
- D 1 - I - 0x01AF16 06:AF06: 28 B0     .word off_01_B028_08

- D 1 - I - 0x01AF18 06:AF08: 62 22     .word $2262 ; 
- D 1 - I - 0x01AF1A 06:AF0A: 1E B1     .word off_01_B11E_09

- D 1 - I - 0x01AF1C 06:AF0C: A2 22     .word $22A2 ; 
- D 1 - I - 0x01AF1E 06:AF0E: 1E B1     .word off_01_B11E_0A

- D 1 - I - 0x01AF20 06:AF10: E2 22     .word $22E2 ; 
- D 1 - I - 0x01AF22 06:AF12: 1E B1     .word off_01_B11E_0B

- D 1 - I - 0x01AF24 06:AF14: 22 23     .word $2322 ; 
- D 1 - I - 0x01AF26 06:AF16: 1E B1     .word off_01_B11E_0C

- D 1 - I - 0x01AF28 06:AF18: 00 00     .word $0000     ; end token



_off025_AF1A_02:
- D 1 - I - 0x01AF2A 06:AF1A: AD 20     .word $20AD ; 
- D 1 - I - 0x01AF2C 06:AF1C: 37 B0     .word off_02_B037_00

- D 1 - I - 0x01AF2E 06:AF1E: CD 20     .word $20CD ; 
- D 1 - I - 0x01AF30 06:AF20: EE AF     .word off_02_AFEE_01

- D 1 - I - 0x01AF32 06:AF22: 0D 21     .word $210D ; 
- D 1 - I - 0x01AF34 06:AF24: 40 B0     .word off_02_B040_02

- D 1 - I - 0x01AF36 06:AF26: 4D 21     .word $214D ; 
- D 1 - I - 0x01AF38 06:AF28: 4D B0     .word off_02_B04D_03

- D 1 - I - 0x01AF3A 06:AF2A: 6D 21     .word $216D ; 
- D 1 - I - 0x01AF3C 06:AF2C: 54 B0     .word off_02_B054_04

- D 1 - I - 0x01AF3E 06:AF2E: AD 21     .word $21AD ; 
- D 1 - I - 0x01AF40 06:AF30: 64 B0     .word off_02_B064_05

- D 1 - I - 0x01AF42 06:AF32: 22 22     .word $2222 ; 
- D 1 - I - 0x01AF44 06:AF34: 4D B0     .word off_02_B04D_06

- D 1 - I - 0x01AF46 06:AF36: 42 22     .word $2242 ; 
- D 1 - I - 0x01AF48 06:AF38: 71 B0     .word off_02_B071_07

- D 1 - I - 0x01AF4A 06:AF3A: 82 22     .word $2282 ; 
- D 1 - I - 0x01AF4C 06:AF3C: 81 B0     .word off_02_B081_08

- D 1 - I - 0x01AF4E 06:AF3E: C2 22     .word $22C2 ; 
- D 1 - I - 0x01AF50 06:AF40: 90 B0     .word off_02_B090_09

- D 1 - I - 0x01AF52 06:AF42: 02 23     .word $2302 ; 
- D 1 - I - 0x01AF54 06:AF44: 9E B0     .word off_02_B09E_0A

- D 1 - I - 0x01AF56 06:AF46: 00 00     .word $0000     ; end token



_off025_AF48_03:
- D 1 - I - 0x01AF58 06:AF48: AD 20     .word $20AD ; 
- D 1 - I - 0x01AF5A 06:AF4A: AD B0     .word off_03_B0AD_00

- D 1 - I - 0x01AF5C 06:AF4C: ED 20     .word $20ED ; 
- D 1 - I - 0x01AF5E 06:AF4E: BE B0     .word off_03_B0BE_01

- D 1 - I - 0x01AF60 06:AF50: 2D 21     .word $212D ; 
- D 1 - I - 0x01AF62 06:AF52: C8 B0     .word off_03_B0C8_02

- D 1 - I - 0x01AF64 06:AF54: 6D 21     .word $216D ; 
- D 1 - I - 0x01AF66 06:AF56: D4 B0     .word off_03_B0D4_03

- D 1 - I - 0x01AF68 06:AF58: AD 21     .word $21AD ; 
- D 1 - I - 0x01AF6A 06:AF5A: DE B0     .word off_03_B0DE_04

- D 1 - I - 0x01AF6C 06:AF5C: CD 20     .word $20CD ; 
- D 1 - I - 0x01AF6E 06:AF5E: 1E B1     .word off_03_B11E_05

- D 1 - I - 0x01AF70 06:AF60: 0D 21     .word $210D ; 
- D 1 - I - 0x01AF72 06:AF62: 1E B1     .word off_03_B11E_06

- D 1 - I - 0x01AF74 06:AF64: 4D 21     .word $214D ; 
- D 1 - I - 0x01AF76 06:AF66: 1E B1     .word off_03_B11E_07

- D 1 - I - 0x01AF78 06:AF68: 22 22     .word $2222 ; 
- D 1 - I - 0x01AF7A 06:AF6A: AD B0     .word off_03_B0AD_08

- D 1 - I - 0x01AF7C 06:AF6C: 62 22     .word $2262 ; 
- D 1 - I - 0x01AF7E 06:AF6E: ED B0     .word off_03_B0ED_09

- D 1 - I - 0x01AF80 06:AF70: A2 22     .word $22A2 ; 
- D 1 - I - 0x01AF82 06:AF72: FA B0     .word off_03_B0FA_0A

- D 1 - I - 0x01AF84 06:AF74: E2 22     .word $22E2 ; 
- D 1 - I - 0x01AF86 06:AF76: 06 B1     .word off_03_B106_0B

- D 1 - I - 0x01AF88 06:AF78: 22 23     .word $2322 ; 
- D 1 - I - 0x01AF8A 06:AF7A: 13 B1     .word off_03_B113_0C

- D 1 - I - 0x01AF8C 06:AF7C: 42 22     .word $2242 ; 
- D 1 - I - 0x01AF8E 06:AF7E: 1E B1     .word off_03_B11E_0D

- D 1 - I - 0x01AF90 06:AF80: 82 22     .word $2282 ; 
- D 1 - I - 0x01AF92 06:AF82: 1E B1     .word off_03_B11E_0E

- D 1 - I - 0x01AF94 06:AF84: C2 22     .word $22C2 ; 
- D 1 - I - 0x01AF96 06:AF86: 1E B1     .word off_03_B11E_0F

- D 1 - I - 0x01AF98 06:AF88: 02 23     .word $2302 ; 
- D 1 - I - 0x01AF9A 06:AF8A: 1E B1     .word off_03_B11E_10

- D 1 - I - 0x01AF9C 06:AF8C: 00 00     .word $0000     ; end token



off_00_AF8E_00:
- D 1 - I - 0x01AF9E 06:AF8E: 00        .byte $00   ; 
- D 1 - I - 0x01AF9F 06:AF8F: 00        .byte $00   ; 
- D 1 - I - 0x01AFA0 06:AF90: 00        .byte $00   ; 
- D 1 - I - 0x01AFA1 06:AF91: E2        .byte $E2   ; 
- D 1 - I - 0x01AFA2 06:AF92: 00        .byte $00   ; 
- D 1 - I - 0x01AFA3 06:AF93: E3        .byte $E3   ; 
- D 1 - I - 0x01AFA4 06:AF94: 00        .byte $00   ; 
- D 1 - I - 0x01AFA5 06:AF95: D0        .byte $D0   ; 
- D 1 - I - 0x01AFA6 06:AF96: 00        .byte $00   ; 
- D 1 - I - 0x01AFA7 06:AF97: D5        .byte $D5   ; 
- D 1 - I - 0x01AFA8 06:AF98: 00        .byte $00   ; 
- D 1 - I - 0x01AFA9 06:AF99: D5        .byte $D5   ; 
- D 1 - I - 0x01AFAA 06:AF9A: FF        .byte $FF   ; end token

off_00_AF9B_01:
- D 1 - I - 0x01AFAB 06:AF9B: FD        .byte $FD   ; 
- D 1 - I - 0x01AFAC 06:AF9C: DF        .byte $DF   ; 
- D 1 - I - 0x01AFAD 06:AF9D: E1        .byte $E1   ; 
- D 1 - I - 0x01AFAE 06:AF9E: DE        .byte $DE   ; 
- D 1 - I - 0x01AFAF 06:AF9F: D6        .byte $D6   ; 
- D 1 - I - 0x01AFB0 06:AFA0: E1        .byte $E1   ; 
- D 1 - I - 0x01AFB1 06:AFA1: D0        .byte $D0   ; 
- D 1 - I - 0x01AFB2 06:AFA2: DC        .byte $DC   ; 
- D 1 - I - 0x01AFB3 06:AFA3: DC        .byte $DC   ; 
- D 1 - I - 0x01AFB4 06:AFA4: D4        .byte $D4   ; 
- D 1 - I - 0x01AFB5 06:AFA5: D3        .byte $D3   ; 
- D 1 - I - 0x01AFB6 06:AFA6: 00        .byte $00   ; 
- D 1 - I - 0x01AFB7 06:AFA7: D1        .byte $D1   ; 
- D 1 - I - 0x01AFB8 06:AFA8: E8        .byte $E8   ; 
- D 1 - I - 0x01AFB9 06:AFA9: FE        .byte $FE   ; 
- D 1 - I - 0x01AFBA 06:AFAA: FF        .byte $FF   ; end token

off_00_AFAB_02:
- D 1 - I - 0x01AFBB 06:AFAB: 00        .byte $00   ; 
- D 1 - I - 0x01AFBC 06:AFAC: 00        .byte $00   ; 
- D 1 - I - 0x01AFBD 06:AFAD: 00        .byte $00   ; 
- D 1 - I - 0x01AFBE 06:AFAE: 00        .byte $00   ; 
- D 1 - I - 0x01AFBF 06:AFAF: E2        .byte $E2   ; 
- D 1 - I - 0x01AFC0 06:AFB0: F6        .byte $F6   ; 
- D 1 - I - 0x01AFC1 06:AFB1: DA        .byte $DA   ; 
- D 1 - I - 0x01AFC2 06:AFB2: E4        .byte $E4   ; 
- D 1 - I - 0x01AFC3 06:AFB3: DC        .byte $DC   ; 
- D 1 - I - 0x01AFC4 06:AFB4: D0        .byte $D0   ; 
- D 1 - I - 0x01AFC5 06:AFB5: D6        .byte $D6   ; 
- D 1 - I - 0x01AFC6 06:AFB6: D0        .byte $D0   ; 
- D 1 - I - 0x01AFC7 06:AFB7: D8        .byte $D8   ; 
- D 1 - I - 0x01AFC8 06:AFB8: FF        .byte $FF   ; end token

off_00_AFB9_03:
- D 1 - I - 0x01AFC9 06:AFB9: 00        .byte $00   ; 
- D 1 - I - 0x01AFCA 06:AFBA: 00        .byte $00   ; 
- D 1 - I - 0x01AFCB 06:AFBB: 00        .byte $00   ; 
- D 1 - I - 0x01AFCC 06:AFBC: 00        .byte $00   ; 
- D 1 - I - 0x01AFCD 06:AFBD: DA        .byte $DA   ; 
- D 1 - I - 0x01AFCE 06:AFBE: F6        .byte $F6   ; 
- D 1 - I - 0x01AFCF 06:AFBF: E2        .byte $E2   ; 
- D 1 - I - 0x01AFD0 06:AFC0: DE        .byte $DE   ; 
- D 1 - I - 0x01AFD1 06:AFC1: DD        .byte $DD   ; 
- D 1 - I - 0x01AFD2 06:AFC2: DE        .byte $DE   ; 
- D 1 - I - 0x01AFD3 06:AFC3: D3        .byte $D3   ; 
- D 1 - I - 0x01AFD4 06:AFC4: D0        .byte $D0   ; 
- D 1 - I - 0x01AFD5 06:AFC5: FF        .byte $FF   ; end token

off_00_AFC6_04:
- D 1 - I - 0x01AFD6 06:AFC6: 00        .byte $00   ; 
- D 1 - I - 0x01AFD7 06:AFC7: 00        .byte $00   ; 
- D 1 - I - 0x01AFD8 06:AFC8: 00        .byte $00   ; 
- D 1 - I - 0x01AFD9 06:AFC9: 00        .byte $00   ; 
- D 1 - I - 0x01AFDA 06:AFCA: D6        .byte $D6   ; 
- D 1 - I - 0x01AFDB 06:AFCB: F6        .byte $F6   ; 
- D 1 - I - 0x01AFDC 06:AFCC: D5        .byte $D5   ; 
- D 1 - I - 0x01AFDD 06:AFCD: E4        .byte $E4   ; 
- D 1 - I - 0x01AFDE 06:AFCE: DA        .byte $DA   ; 
- D 1 - I - 0x01AFDF 06:AFCF: E4        .byte $E4   ; 
- D 1 - I - 0x01AFE0 06:AFD0: D7        .byte $D7   ; 
- D 1 - I - 0x01AFE1 06:AFD1: D0        .byte $D0   ; 
- D 1 - I - 0x01AFE2 06:AFD2: E1        .byte $E1   ; 
- D 1 - I - 0x01AFE3 06:AFD3: D0        .byte $D0   ; 
- D 1 - I - 0x01AFE4 06:AFD4: FF        .byte $FF   ; end token

off_00_AFD5_05:
- D 1 - I - 0x01AFE5 06:AFD5: 00        .byte $00   ; 
- D 1 - I - 0x01AFE6 06:AFD6: 00        .byte $00   ; 
- D 1 - I - 0x01AFE7 06:AFD7: 00        .byte $00   ; 
- D 1 - I - 0x01AFE8 06:AFD8: 00        .byte $00   ; 
- D 1 - I - 0x01AFE9 06:AFD9: E3        .byte $E3   ; 
- D 1 - I - 0x01AFEA 06:AFDA: F6        .byte $F6   ; 
- D 1 - I - 0x01AFEB 06:AFDB: DE        .byte $DE   ; 
- D 1 - I - 0x01AFEC 06:AFDC: D1        .byte $D1   ; 
- D 1 - I - 0x01AFED 06:AFDD: D8        .byte $D8   ; 
- D 1 - I - 0x01AFEE 06:AFDE: DD        .byte $DD   ; 
- D 1 - I - 0x01AFEF 06:AFDF: D0        .byte $D0   ; 
- D 1 - I - 0x01AFF0 06:AFE0: E3        .byte $E3   ; 
- D 1 - I - 0x01AFF1 06:AFE1: D0        .byte $D0   ; 
- D 1 - I - 0x01AFF2 06:AFE2: FF        .byte $FF   ; end token

off_01_AFE3_00:
- D 1 - I - 0x01AFF3 06:AFE3: FD        .byte $FD   ; 
- D 1 - I - 0x01AFF4 06:AFE4: D2        .byte $D2   ; 
- D 1 - I - 0x01AFF5 06:AFE5: D7        .byte $D7   ; 
- D 1 - I - 0x01AFF6 06:AFE6: D0        .byte $D0   ; 
- D 1 - I - 0x01AFF7 06:AFE7: E1        .byte $E1   ; 
- D 1 - I - 0x01AFF8 06:AFE8: D0        .byte $D0   ; 
- D 1 - I - 0x01AFF9 06:AFE9: D2        .byte $D2   ; 
- D 1 - I - 0x01AFFA 06:AFEA: E3        .byte $E3   ; 
- D 1 - I - 0x01AFFB 06:AFEB: D4        .byte $D4   ; 
- D 1 - I - 0x01AFFC 06:AFEC: E1        .byte $E1   ; 
- D 1 - I - 0x01AFFD 06:AFED: FF        .byte $FF   ; end token

off_01_AFEE_01:
off_01_AFEE_06:
off_02_AFEE_01:
- D 1 - I - 0x01AFFE 06:AFEE: 00        .byte $00   ; 
- D 1 - I - 0x01AFFF 06:AFEF: 00        .byte $00   ; 
- D 1 - I - 0x01B000 06:AFF0: 00        .byte $00   ; 
- D 1 - I - 0x01B001 06:AFF1: 00        .byte $00   ; 
- D 1 - I - 0x01B002 06:AFF2: D3        .byte $D3   ; 
- D 1 - I - 0x01B003 06:AFF3: D4        .byte $D4   ; 
- D 1 - I - 0x01B004 06:AFF4: E2        .byte $E2   ; 
- D 1 - I - 0x01B005 06:AFF5: D8        .byte $D8   ; 
- D 1 - I - 0x01B006 06:AFF6: D6        .byte $D6   ; 
- D 1 - I - 0x01B007 06:AFF7: DD        .byte $DD   ; 
- D 1 - I - 0x01B008 06:AFF8: D4        .byte $D4   ; 
- D 1 - I - 0x01B009 06:AFF9: D3        .byte $D3   ; 
- D 1 - I - 0x01B00A 06:AFFA: 00        .byte $00   ; 
- D 1 - I - 0x01B00B 06:AFFB: D1        .byte $D1   ; 
- D 1 - I - 0x01B00C 06:AFFC: E8        .byte $E8   ; 
- D 1 - I - 0x01B00D 06:AFFD: FE        .byte $FE   ; 
- D 1 - I - 0x01B00E 06:AFFE: FF        .byte $FF   ; end token

off_01_AFFF_02:
- D 1 - I - 0x01B00F 06:AFFF: 00        .byte $00   ; 
- D 1 - I - 0x01B010 06:B000: 00        .byte $00   ; 
- D 1 - I - 0x01B011 06:B001: 00        .byte $00   ; 
- D 1 - I - 0x01B012 06:B002: 00        .byte $00   ; 
- D 1 - I - 0x01B013 06:B003: DA        .byte $DA   ; 
- D 1 - I - 0x01B014 06:B004: F6        .byte $F6   ; 
- D 1 - I - 0x01B015 06:B005: DE        .byte $DE   ; 
- D 1 - I - 0x01B016 06:B006: D6        .byte $D6   ; 
- D 1 - I - 0x01B017 06:B007: D0        .byte $D0   ; 
- D 1 - I - 0x01B018 06:B008: E3        .byte $E3   ; 
- D 1 - I - 0x01B019 06:B009: D0        .byte $D0   ; 
- D 1 - I - 0x01B01A 06:B00A: FF        .byte $FF   ; end token

off_01_B00B_03:
- D 1 - I - 0x01B01B 06:B00B: 00        .byte $00   ; 
- D 1 - I - 0x01B01C 06:B00C: 00        .byte $00   ; 
- D 1 - I - 0x01B01D 06:B00D: 00        .byte $00   ; 
- D 1 - I - 0x01B01E 06:B00E: 00        .byte $00   ; 
- D 1 - I - 0x01B01F 06:B00F: DD        .byte $DD   ; 
- D 1 - I - 0x01B020 06:B010: F6        .byte $F6   ; 
- D 1 - I - 0x01B021 06:B011: E2        .byte $E2   ; 
- D 1 - I - 0x01B022 06:B012: D0        .byte $D0   ; 
- D 1 - I - 0x01B023 06:B013: E6        .byte $E6   ; 
- D 1 - I - 0x01B024 06:B014: D0        .byte $D0   ; 
- D 1 - I - 0x01B025 06:B015: D3        .byte $D3   ; 
- D 1 - I - 0x01B026 06:B016: D0        .byte $D0   ; 
- D 1 - I - 0x01B027 06:B017: FF        .byte $FF   ; end token

off_01_B018_05:
- D 1 - I - 0x01B028 06:B018: FD        .byte $FD   ; 
- D 1 - I - 0x01B029 06:B019: D1        .byte $D1   ; 
- D 1 - I - 0x01B02A 06:B01A: F6        .byte $F6   ; 
- D 1 - I - 0x01B02B 06:B01B: D6        .byte $D6   ; 
- D 1 - I - 0x01B02C 06:B01C: F6        .byte $F6   ; 
- D 1 - I - 0x01B02D 06:B01D: FF        .byte $FF   ; end token

off_01_B01E_07:
- D 1 - I - 0x01B02E 06:B01E: 00        .byte $00   ; 
- D 1 - I - 0x01B02F 06:B01F: 00        .byte $00   ; 
- D 1 - I - 0x01B030 06:B020: 00        .byte $00   ; 
- D 1 - I - 0x01B031 06:B021: 00        .byte $00   ; 
- D 1 - I - 0x01B032 06:B022: DA        .byte $DA   ; 
- D 1 - I - 0x01B033 06:B023: F6        .byte $F6   ; 
- D 1 - I - 0x01B034 06:B024: DA        .byte $DA   ; 
- D 1 - I - 0x01B035 06:B025: D0        .byte $D0   ; 
- D 1 - I - 0x01B036 06:B026: D8        .byte $D8   ; 
- D 1 - I - 0x01B037 06:B027: FF        .byte $FF   ; end token

off_01_B028_08:
- D 1 - I - 0x01B038 06:B028: 00        .byte $00   ; 
- D 1 - I - 0x01B039 06:B029: 00        .byte $00   ; 
- D 1 - I - 0x01B03A 06:B02A: 00        .byte $00   ; 
- D 1 - I - 0x01B03B 06:B02B: 00        .byte $00   ; 
- D 1 - I - 0x01B03C 06:B02C: DC        .byte $DC   ; 
- D 1 - I - 0x01B03D 06:B02D: F6        .byte $F6   ; 
- D 1 - I - 0x01B03E 06:B02E: E6        .byte $E6   ; 
- D 1 - I - 0x01B03F 06:B02F: D0        .byte $D0   ; 
- D 1 - I - 0x01B040 06:B030: E3        .byte $E3   ; 
- D 1 - I - 0x01B041 06:B031: D0        .byte $D0   ; 
- D 1 - I - 0x01B042 06:B032: DD        .byte $DD   ; 
- D 1 - I - 0x01B043 06:B033: D0        .byte $D0   ; 
- D 1 - I - 0x01B044 06:B034: D1        .byte $D1   ; 
- D 1 - I - 0x01B045 06:B035: D4        .byte $D4   ; 
- D 1 - I - 0x01B046 06:B036: FF        .byte $FF   ; end token

off_02_B037_00:
- D 1 - I - 0x01B047 06:B037: FD        .byte $FD   ; 
- D 1 - I - 0x01B048 06:B038: D6        .byte $D6   ; 
- D 1 - I - 0x01B049 06:B039: E1        .byte $E1   ; 
- D 1 - I - 0x01B04A 06:B03A: D0        .byte $D0   ; 
- D 1 - I - 0x01B04B 06:B03B: DF        .byte $DF   ; 
- D 1 - I - 0x01B04C 06:B03C: D7        .byte $D7   ; 
- D 1 - I - 0x01B04D 06:B03D: D8        .byte $D8   ; 
- D 1 - I - 0x01B04E 06:B03E: D2        .byte $D2   ; 
- D 1 - I - 0x01B04F 06:B03F: FF        .byte $FF   ; end token

off_02_B040_02:
- D 1 - I - 0x01B050 06:B040: 00        .byte $00   ; 
- D 1 - I - 0x01B051 06:B041: 00        .byte $00   ; 
- D 1 - I - 0x01B052 06:B042: 00        .byte $00   ; 
- D 1 - I - 0x01B053 06:B043: 00        .byte $00   ; 
- D 1 - I - 0x01B054 06:B044: DA        .byte $DA   ; 
- D 1 - I - 0x01B055 06:B045: F6        .byte $F6   ; 
- D 1 - I - 0x01B056 06:B046: DC        .byte $DC   ; 
- D 1 - I - 0x01B057 06:B047: E4        .byte $E4   ; 
- D 1 - I - 0x01B058 06:B048: DA        .byte $DA   ; 
- D 1 - I - 0x01B059 06:B049: D0        .byte $D0   ; 
- D 1 - I - 0x01B05A 06:B04A: D8        .byte $D8   ; 
- D 1 - I - 0x01B05B 06:B04B: FF        .byte $FF   ; end token


; bzk garbage
- - - - - - 0x01B05C 06:B04C: 00        .byte $00   ; 



off_02_B04D_03:
off_02_B04D_06:
- D 1 - I - 0x01B05D 06:B04D: FD        .byte $FD   ; 
- D 1 - I - 0x01B05E 06:B04E: E2        .byte $E2   ; 
- D 1 - I - 0x01B05F 06:B04F: DE        .byte $DE   ; 
- D 1 - I - 0x01B060 06:B050: E4        .byte $E4   ; 
- D 1 - I - 0x01B061 06:B051: DD        .byte $DD   ; 
- D 1 - I - 0x01B062 06:B052: D3        .byte $D3   ; 
- D 1 - I - 0x01B063 06:B053: FF        .byte $FF   ; end token

off_02_B054_04:
- D 1 - I - 0x01B064 06:B054: 00        .byte $00   ; 
- D 1 - I - 0x01B065 06:B055: 00        .byte $00   ; 
- D 1 - I - 0x01B066 06:B056: 00        .byte $00   ; 
- D 1 - I - 0x01B067 06:B057: D2        .byte $D2   ; 
- D 1 - I - 0x01B068 06:B058: DE        .byte $DE   ; 
- D 1 - I - 0x01B069 06:B059: DC        .byte $DC   ; 
- D 1 - I - 0x01B06A 06:B05A: DF        .byte $DF   ; 
- D 1 - I - 0x01B06B 06:B05B: DE        .byte $DE   ; 
- D 1 - I - 0x01B06C 06:B05C: E2        .byte $E2   ; 
- D 1 - I - 0x01B06D 06:B05D: D4        .byte $D4   ; 
- D 1 - I - 0x01B06E 06:B05E: D3        .byte $D3   ; 
- D 1 - I - 0x01B06F 06:B05F: 00        .byte $00   ; 
- D 1 - I - 0x01B070 06:B060: D1        .byte $D1   ; 
- D 1 - I - 0x01B071 06:B061: E8        .byte $E8   ; 
- D 1 - I - 0x01B072 06:B062: FE        .byte $FE   ; 
- D 1 - I - 0x01B073 06:B063: FF        .byte $FF   ; end token

off_02_B064_05:
- D 1 - I - 0x01B074 06:B064: 00        .byte $00   ; 
- D 1 - I - 0x01B075 06:B065: 00        .byte $00   ; 
- D 1 - I - 0x01B076 06:B066: 00        .byte $00   ; 
- D 1 - I - 0x01B077 06:B067: 00        .byte $00   ; 
- D 1 - I - 0x01B078 06:B068: DA        .byte $DA   ; 
- D 1 - I - 0x01B079 06:B069: F6        .byte $F6   ; 
- D 1 - I - 0x01B07A 06:B06A: E8        .byte $E8   ; 
- D 1 - I - 0x01B07B 06:B06B: D0        .byte $D0   ; 
- D 1 - I - 0x01B07C 06:B06C: DC        .byte $DC   ; 
- D 1 - I - 0x01B07D 06:B06D: D0        .byte $D0   ; 
- D 1 - I - 0x01B07E 06:B06E: DD        .byte $DD   ; 
- D 1 - I - 0x01B07F 06:B06F: D4        .byte $D4   ; 
- D 1 - I - 0x01B080 06:B070: FF        .byte $FF   ; end token

off_02_B071_07:
- D 1 - I - 0x01B081 06:B071: 00        .byte $00   ; 
- D 1 - I - 0x01B082 06:B072: DF        .byte $DF   ; 
- D 1 - I - 0x01B083 06:B073: E1        .byte $E1   ; 
- D 1 - I - 0x01B084 06:B074: DE        .byte $DE   ; 
- D 1 - I - 0x01B085 06:B075: D6        .byte $D6   ; 
- D 1 - I - 0x01B086 06:B076: E1        .byte $E1   ; 
- D 1 - I - 0x01B087 06:B077: D0        .byte $D0   ; 
- D 1 - I - 0x01B088 06:B078: DC        .byte $DC   ; 
- D 1 - I - 0x01B089 06:B079: DC        .byte $DC   ; 
- D 1 - I - 0x01B08A 06:B07A: D4        .byte $D4   ; 
- D 1 - I - 0x01B08B 06:B07B: D3        .byte $D3   ; 
- D 1 - I - 0x01B08C 06:B07C: 00        .byte $00   ; 
- D 1 - I - 0x01B08D 06:B07D: D1        .byte $D1   ; 
- D 1 - I - 0x01B08E 06:B07E: E8        .byte $E8   ; 
- D 1 - I - 0x01B08F 06:B07F: FE        .byte $FE   ; 
- D 1 - I - 0x01B090 06:B080: FF        .byte $FF   ; end token

off_02_B081_08:
- D 1 - I - 0x01B091 06:B081: 00        .byte $00   ; 
- D 1 - I - 0x01B092 06:B082: 00        .byte $00   ; 
- D 1 - I - 0x01B093 06:B083: 00        .byte $00   ; 
- D 1 - I - 0x01B094 06:B084: 00        .byte $00   ; 
- D 1 - I - 0x01B095 06:B085: DC        .byte $DC   ; 
- D 1 - I - 0x01B096 06:B086: F6        .byte $F6   ; 
- D 1 - I - 0x01B097 06:B087: D7        .byte $D7   ; 
- D 1 - I - 0x01B098 06:B088: D8        .byte $D8   ; 
- D 1 - I - 0x01B099 06:B089: E1        .byte $E1   ; 
- D 1 - I - 0x01B09A 06:B08A: D0        .byte $D0   ; 
- D 1 - I - 0x01B09B 06:B08B: E2        .byte $E2   ; 
- D 1 - I - 0x01B09C 06:B08C: D0        .byte $D0   ; 
- D 1 - I - 0x01B09D 06:B08D: E6        .byte $E6   ; 
- D 1 - I - 0x01B09E 06:B08E: D0        .byte $D0   ; 
- D 1 - I - 0x01B09F 06:B08F: FF        .byte $FF   ; end token

off_02_B090_09:
- D 1 - I - 0x01B0A0 06:B090: FD        .byte $FD   ; 
- D 1 - I - 0x01B0A1 06:B091: D3        .byte $D3   ; 
- D 1 - I - 0x01B0A2 06:B092: D8        .byte $D8   ; 
- D 1 - I - 0x01B0A3 06:B093: E1        .byte $E1   ; 
- D 1 - I - 0x01B0A4 06:B094: D4        .byte $D4   ; 
- D 1 - I - 0x01B0A5 06:B095: D2        .byte $D2   ; 
- D 1 - I - 0x01B0A6 06:B096: E3        .byte $E3   ; 
- D 1 - I - 0x01B0A7 06:B097: D4        .byte $D4   ; 
- D 1 - I - 0x01B0A8 06:B098: D3        .byte $D3   ; 
- D 1 - I - 0x01B0A9 06:B099: 00        .byte $00   ; 
- D 1 - I - 0x01B0AA 06:B09A: D1        .byte $D1   ; 
- D 1 - I - 0x01B0AB 06:B09B: E8        .byte $E8   ; 
- D 1 - I - 0x01B0AC 06:B09C: FE        .byte $FE   ; 
- D 1 - I - 0x01B0AD 06:B09D: FF        .byte $FF   ; end token

off_02_B09E_0A:
- D 1 - I - 0x01B0AE 06:B09E: 00        .byte $00   ; 
- D 1 - I - 0x01B0AF 06:B09F: 00        .byte $00   ; 
- D 1 - I - 0x01B0B0 06:B0A0: 00        .byte $00   ; 
- D 1 - I - 0x01B0B1 06:B0A1: 00        .byte $00   ; 
- D 1 - I - 0x01B0B2 06:B0A2: D7        .byte $D7   ; 
- D 1 - I - 0x01B0B3 06:B0A3: F6        .byte $F6   ; 
- D 1 - I - 0x01B0B4 06:B0A4: E2        .byte $E2   ; 
- D 1 - I - 0x01B0B5 06:B0A5: D4        .byte $D4   ; 
- D 1 - I - 0x01B0B6 06:B0A6: DA        .byte $DA   ; 
- D 1 - I - 0x01B0B7 06:B0A7: D8        .byte $D8   ; 
- D 1 - I - 0x01B0B8 06:B0A8: DC        .byte $DC   ; 
- D 1 - I - 0x01B0B9 06:B0A9: DE        .byte $DE   ; 
- D 1 - I - 0x01B0BA 06:B0AA: E3        .byte $E3   ; 
- D 1 - I - 0x01B0BB 06:B0AB: DE        .byte $DE   ; 
- D 1 - I - 0x01B0BC 06:B0AC: FF        .byte $FF   ; end token

off_03_B0AD_00:
off_03_B0AD_08:
- D 1 - I - 0x01B0BD 06:B0AD: FD        .byte $FD   ; 
- D 1 - I - 0x01B0BE 06:B0AE: E2        .byte $E2   ; 
- D 1 - I - 0x01B0BF 06:B0AF: DF        .byte $DF   ; 
- D 1 - I - 0x01B0C0 06:B0B0: D4        .byte $D4   ; 
- D 1 - I - 0x01B0C1 06:B0B1: D2        .byte $D2   ; 
- D 1 - I - 0x01B0C2 06:B0B2: D8        .byte $D8   ; 
- D 1 - I - 0x01B0C3 06:B0B3: D0        .byte $D0   ; 
- D 1 - I - 0x01B0C4 06:B0B4: DB        .byte $DB   ; 
- D 1 - I - 0x01B0C5 06:B0B5: 00        .byte $00   ; 
- D 1 - I - 0x01B0C6 06:B0B6: E3        .byte $E3   ; 
- D 1 - I - 0x01B0C7 06:B0B7: D7        .byte $D7   ; 
- D 1 - I - 0x01B0C8 06:B0B8: D0        .byte $D0   ; 
- D 1 - I - 0x01B0C9 06:B0B9: DD        .byte $DD   ; 
- D 1 - I - 0x01B0CA 06:B0BA: DA        .byte $DA   ; 
- D 1 - I - 0x01B0CB 06:B0BB: E2        .byte $E2   ; 
- D 1 - I - 0x01B0CC 06:B0BC: FE        .byte $FE   ; 
- D 1 - I - 0x01B0CD 06:B0BD: FF        .byte $FF   ; end token

off_03_B0BE_01:
- D 1 - I - 0x01B0CE 06:B0BE: 00        .byte $00   ; 
- D 1 - I - 0x01B0CF 06:B0BF: 00        .byte $00   ; 
- D 1 - I - 0x01B0D0 06:B0C0: 00        .byte $00   ; 
- D 1 - I - 0x01B0D1 06:B0C1: E3        .byte $E3   ; 
- D 1 - I - 0x01B0D2 06:B0C2: F6        .byte $F6   ; 
- D 1 - I - 0x01B0D3 06:B0C3: D0        .byte $D0   ; 
- D 1 - I - 0x01B0D4 06:B0C4: DD        .byte $DD   ; 
- D 1 - I - 0x01B0D5 06:B0C5: D3        .byte $D3   ; 
- D 1 - I - 0x01B0D6 06:B0C6: DE        .byte $DE   ; 
- D 1 - I - 0x01B0D7 06:B0C7: FF        .byte $FF   ; end token

off_03_B0C8_02:
- D 1 - I - 0x01B0D8 06:B0C8: 00        .byte $00   ; 
- D 1 - I - 0x01B0D9 06:B0C9: 00        .byte $00   ; 
- D 1 - I - 0x01B0DA 06:B0CA: 00        .byte $00   ; 
- D 1 - I - 0x01B0DB 06:B0CB: DD        .byte $DD   ; 
- D 1 - I - 0x01B0DC 06:B0CC: F6        .byte $F6   ; 
- D 1 - I - 0x01B0DD 06:B0CD: D5        .byte $D5   ; 
- D 1 - I - 0x01B0DE 06:B0CE: E4        .byte $E4   ; 
- D 1 - I - 0x01B0DF 06:B0CF: D9        .byte $D9   ; 
- D 1 - I - 0x01B0E0 06:B0D0: D8        .byte $D8   ; 
- D 1 - I - 0x01B0E1 06:B0D1: E3        .byte $E3   ; 
- D 1 - I - 0x01B0E2 06:B0D2: D0        .byte $D0   ; 
- D 1 - I - 0x01B0E3 06:B0D3: FF        .byte $FF   ; end token

off_03_B0D4_03:
- D 1 - I - 0x01B0E4 06:B0D4: 00        .byte $00   ; 
- D 1 - I - 0x01B0E5 06:B0D5: 00        .byte $00   ; 
- D 1 - I - 0x01B0E6 06:B0D6: 00        .byte $00   ; 
- D 1 - I - 0x01B0E7 06:B0D7: DC        .byte $DC   ; 
- D 1 - I - 0x01B0E8 06:B0D8: F6        .byte $F6   ; 
- D 1 - I - 0x01B0E9 06:B0D9: DA        .byte $DA   ; 
- D 1 - I - 0x01B0EA 06:B0DA: D8        .byte $D8   ; 
- D 1 - I - 0x01B0EB 06:B0DB: D3        .byte $D3   ; 
- D 1 - I - 0x01B0EC 06:B0DC: DE        .byte $DE   ; 
- D 1 - I - 0x01B0ED 06:B0DD: FF        .byte $FF   ; end token

off_03_B0DE_04:
- D 1 - I - 0x01B0EE 06:B0DE: 00        .byte $00   ; 
- D 1 - I - 0x01B0EF 06:B0DF: 00        .byte $00   ; 
- D 1 - I - 0x01B0F0 06:B0E0: 00        .byte $00   ; 
- D 1 - I - 0x01B0F1 06:B0E1: DA        .byte $DA   ; 
- D 1 - I - 0x01B0F2 06:B0E2: F6        .byte $F6   ; 
- D 1 - I - 0x01B0F3 06:B0E3: DA        .byte $DA   ; 
- D 1 - I - 0x01B0F4 06:B0E4: D8        .byte $D8   ; 
- D 1 - I - 0x01B0F5 06:B0E5: E2        .byte $E2   ; 
- D 1 - I - 0x01B0F6 06:B0E6: D7        .byte $D7   ; 
- D 1 - I - 0x01B0F7 06:B0E7: D8        .byte $D8   ; 
- D 1 - I - 0x01B0F8 06:B0E8: DC        .byte $DC   ; 
- D 1 - I - 0x01B0F9 06:B0E9: DE        .byte $DE   ; 
- D 1 - I - 0x01B0FA 06:B0EA: E3        .byte $E3   ; 
- D 1 - I - 0x01B0FB 06:B0EB: DE        .byte $DE   ; 
- D 1 - I - 0x01B0FC 06:B0EC: FF        .byte $FF   ; end token

off_03_B0ED_09:
- D 1 - I - 0x01B0FD 06:B0ED: 00        .byte $00   ; 
- D 1 - I - 0x01B0FE 06:B0EE: 00        .byte $00   ; 
- D 1 - I - 0x01B0FF 06:B0EF: 00        .byte $00   ; 
- D 1 - I - 0x01B100 06:B0F0: DC        .byte $DC   ; 
- D 1 - I - 0x01B101 06:B0F1: F6        .byte $F6   ; 
- D 1 - I - 0x01B102 06:B0F2: E2        .byte $E2   ; 
- D 1 - I - 0x01B103 06:B0F3: D7        .byte $D7   ; 
- D 1 - I - 0x01B104 06:B0F4: D8        .byte $D8   ; 
- D 1 - I - 0x01B105 06:B0F5: E1        .byte $E1   ; 
- D 1 - I - 0x01B106 06:B0F6: DE        .byte $DE   ; 
- D 1 - I - 0x01B107 06:B0F7: E3        .byte $E3   ; 
- D 1 - I - 0x01B108 06:B0F8: DE        .byte $DE   ; 
- D 1 - I - 0x01B109 06:B0F9: FF        .byte $FF   ; end token

off_03_B0FA_0A:
- D 1 - I - 0x01B10A 06:B0FA: 00        .byte $00   ; 
- D 1 - I - 0x01B10B 06:B0FB: 00        .byte $00   ; 
- D 1 - I - 0x01B10C 06:B0FC: 00        .byte $00   ; 
- D 1 - I - 0x01B10D 06:B0FD: E6        .byte $E6   ; 
- D 1 - I - 0x01B10E 06:B0FE: F6        .byte $F6   ; 
- D 1 - I - 0x01B10F 06:B0FF: DB        .byte $DB   ; 
- D 1 - I - 0x01B110 06:B100: D8        .byte $D8   ; 
- D 1 - I - 0x01B111 06:B101: E3        .byte $E3   ; 
- D 1 - I - 0x01B112 06:B102: E3        .byte $E3   ; 
- D 1 - I - 0x01B113 06:B103: DB        .byte $DB   ; 
- D 1 - I - 0x01B114 06:B104: D4        .byte $D4   ; 
- D 1 - I - 0x01B115 06:B105: FF        .byte $FF   ; end token

off_03_B106_0B:
- D 1 - I - 0x01B116 06:B106: 00        .byte $00   ; 
- D 1 - I - 0x01B117 06:B107: 00        .byte $00   ; 
- D 1 - I - 0x01B118 06:B108: 00        .byte $00   ; 
- D 1 - I - 0x01B119 06:B109: DC        .byte $DC   ; 
- D 1 - I - 0x01B11A 06:B10A: F6        .byte $F6   ; 
- D 1 - I - 0x01B11B 06:B10B: E8        .byte $E8   ; 
- D 1 - I - 0x01B11C 06:B10C: DE        .byte $DE   ; 
- D 1 - I - 0x01B11D 06:B10D: E2        .byte $E2   ; 
- D 1 - I - 0x01B11E 06:B10E: D7        .byte $D7   ; 
- D 1 - I - 0x01B11F 06:B10F: D8        .byte $D8   ; 
- D 1 - I - 0x01B120 06:B110: D3        .byte $D3   ; 
- D 1 - I - 0x01B121 06:B111: D0        .byte $D0   ; 
- D 1 - I - 0x01B122 06:B112: FF        .byte $FF   ; end token

off_03_B113_0C:
- D 1 - I - 0x01B123 06:B113: 00        .byte $00   ; 
- D 1 - I - 0x01B124 06:B114: 00        .byte $00   ; 
- D 1 - I - 0x01B125 06:B115: 00        .byte $00   ; 
- D 1 - I - 0x01B126 06:B116: E2        .byte $E2   ; 
- D 1 - I - 0x01B127 06:B117: F6        .byte $F6   ; 
- D 1 - I - 0x01B128 06:B118: E3        .byte $E3   ; 
- D 1 - I - 0x01B129 06:B119: D0        .byte $D0   ; 
- D 1 - I - 0x01B12A 06:B11A: DC        .byte $DC   ; 
- D 1 - I - 0x01B12B 06:B11B: D0        .byte $D0   ; 
- D 1 - I - 0x01B12C 06:B11C: D8        .byte $D8   ; 
- D 1 - I - 0x01B12D 06:B11D: FF        .byte $FF   ; end token

off_01_B11E_04:
off_01_B11E_09:
off_01_B11E_0A:
off_01_B11E_0B:
off_01_B11E_0C:
off_03_B11E_05:
off_03_B11E_06:
off_03_B11E_07:
off_03_B11E_0D:
off_03_B11E_0E:
off_03_B11E_0F:
off_03_B11E_10:
- D 1 - I - 0x01B12E 06:B11E: FF        .byte $FF   ; end token



tbl_B11F_credits:
- D 1 - - - 0x01B12F 06:B11F: CA AE     .word _off025_AECA_00
- D 1 - - - 0x01B131 06:B121: E4 AE     .word _off025_AEE4_01
- D 1 - - - 0x01B133 06:B123: 1A AF     .word _off025_AF1A_02
- D 1 - - - 0x01B135 06:B125: 48 AF     .word _off025_AF48_03



sub_0x01B137:
C - - - - - 0x01B137 06:B127: AD 53 06  LDA ram_0653
C - - - - - 0x01B13A 06:B12A: C9 FF     CMP #$FF
C - - - - - 0x01B13C 06:B12C: F0 2C     BEQ bra_B15A
C - - - - - 0x01B13E 06:B12E: AD 53 06  LDA ram_0653
C - - - - - 0x01B141 06:B131: 30 0F     BMI bra_B142
C - - - - - 0x01B143 06:B133: A9 00     LDA #$00
C - - - - - 0x01B145 06:B135: 8D 49 06  STA ram_0649
C - - - - - 0x01B148 06:B138: A9 30     LDA #$30
C - - - - - 0x01B14A 06:B13A: 8D 4E 06  STA ram_064E
C - - - - - 0x01B14D 06:B13D: A9 80     LDA #$80
C - - - - - 0x01B14F 06:B13F: 8D 53 06  STA ram_0653
bra_B142:
C - - - - - 0x01B152 06:B142: CE 4E 06  DEC ram_064E
C - - - - - 0x01B155 06:B145: 10 12     BPL bra_B159_RTS
C - - - - - 0x01B157 06:B147: 20 65 B1  JSR sub_B165
C - - - - - 0x01B15A 06:B14A: EE 49 06  INC ram_0649
C - - - - - 0x01B15D 06:B14D: AC 49 06  LDY ram_0649
C - - - - - 0x01B160 06:B150: C0 05     CPY #$05
C - - - - - 0x01B162 06:B152: B0 06     BCS bra_B15A
C - - - - - 0x01B164 06:B154: A9 02     LDA #$02
C - - - - - 0x01B166 06:B156: 8D 4E 06  STA ram_064E
bra_B159_RTS:
C - - - - - 0x01B169 06:B159: 60        RTS
bra_B15A:
C - - - - - 0x01B16A 06:B15A: A9 14     LDA #con_music_credits
C - - - - - 0x01B16C 06:B15C: 20 10 FC  JSR sub_0x01FC20_play_sound
C - - - - - 0x01B16F 06:B15F: A9 FF     LDA #$FF
C - - - - - 0x01B171 06:B161: 8D 53 06  STA ram_0653
C - - - - - 0x01B174 06:B164: 60        RTS



sub_B165:
C - - - - - 0x01B175 06:B165: AD 49 06  LDA ram_0649
C - - - - - 0x01B178 06:B168: 6A        ROR
C - - - - - 0x01B179 06:B169: B0 04     BCS bra_B16F
C - - - - - 0x01B17B 06:B16B: A0 00     LDY #$00
C - - - - - 0x01B17D 06:B16D: 10 02     BPL bra_B171    ; jmp
bra_B16F:
C - - - - - 0x01B17F 06:B16F: A0 02     LDY #$02
bra_B171:
bra_B171_loop:
C - - - - - 0x01B181 06:B171: A9 20     LDA #con_E2E6 + $20
C - - - - - 0x01B183 06:B173: 20 E6 E2  JSR sub_0x01E2F6
C - - - - - 0x01B186 06:B176: B0 F9     BCS bra_B171_loop
C - - - - - 0x01B188 06:B178: AE BC 05  LDX ram_buffer_index_2
C - - - - - 0x01B18B 06:B17B: A9 21     LDA #> $2171
C - - - - - 0x01B18D 06:B17D: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01B190 06:B180: E8        INX
C - - - - - 0x01B191 06:B181: A9 71     LDA #< $2171
C - - - - - 0x01B193 06:B183: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01B196 06:B186: E8        INX
C - - - - - 0x01B197 06:B187: A9 04     LDA #$04
C - - - - - 0x01B199 06:B189: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01B19C 06:B18C: E8        INX
C - - - - - 0x01B19D 06:B18D: A9 02     LDA #$02
C - - - - - 0x01B19F 06:B18F: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01B1A2 06:B192: E8        INX
C - - - - - 0x01B1A3 06:B193: B9 A5 B1  LDA tbl_B1A5,Y
C - - - - - 0x01B1A6 06:B196: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01B1A9 06:B199: E8        INX
C - - - - - 0x01B1AA 06:B19A: B9 A6 B1  LDA tbl_B1A5 + $01,Y
C - - - - - 0x01B1AD 06:B19D: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01B1B0 06:B1A0: E8        INX
C - - - - - 0x01B1B1 06:B1A1: 8E BC 05  STX ram_buffer_index_2
C - - - - - 0x01B1B4 06:B1A4: 60        RTS



tbl_B1A5:
; Y = 00
- D 1 - - - 0x01B1B5 06:B1A5: 6E        .byte $6E   ; 
- D 1 - - - 0x01B1B6 06:B1A6: 7E        .byte $7E   ; 
; Y = 02
- D 1 - - - 0x01B1B7 06:B1A7: 6B        .byte $6B   ; 
- D 1 - - - 0x01B1B8 06:B1A8: 7B        .byte $7B   ; 


; bzk garbage
- - - - - - 0x01B1B9 06:B1A9: 00        .byte $00, $00, $00, $00, $00, $00, $00   ; 



sub_0x01B1C0:
C - - - - - 0x01B1C0 06:B1B0: AD 22 04  LDA ram_mission_hi
C - - - - - 0x01B1C3 06:B1B3: C9 08     CMP #con_mission_id_08
C - - - - - 0x01B1C5 06:B1B5: F0 07     BEQ bra_B1BE
C - - - - - 0x01B1C7 06:B1B7: C9 0A     CMP #con_mission_id_0A
C - - - - - 0x01B1C9 06:B1B9: F0 03     BEQ bra_B1BE
C - - - - - 0x01B1CB 06:B1BB: 4C 5C B2  JMP loc_B25C
bra_B1BE:
C - - - - - 0x01B1CE 06:B1BE: AD 4A 06  LDA ram_0649 + $01
C - - - - - 0x01B1D1 06:B1C1: C9 1A     CMP #$1A
C - - - - - 0x01B1D3 06:B1C3: B0 10     BCS bra_B1D5
C - - - - - 0x01B1D5 06:B1C5: AD 4B 06  LDA ram_0649 + $02
C - - - - - 0x01B1D8 06:B1C8: D0 03     BNE bra_B1CD
C - - - - - 0x01B1DA 06:B1CA: 20 DF B1  JSR sub_B1DF
bra_B1CD:
C - - - - - 0x01B1DD 06:B1CD: CE 4E 06  DEC ram_064E
C - - - - - 0x01B1E0 06:B1D0: 10 03     BPL bra_B1D5
C - - - - - 0x01B1E2 06:B1D2: 20 03 B2  JSR sub_B203
bra_B1D5:
C - - - - - 0x01B1E5 06:B1D5: AD 4A 06  LDA ram_0649 + $01
C - - - - - 0x01B1E8 06:B1D8: 0A        ASL
C - - - - - 0x01B1E9 06:B1D9: 0A        ASL
C - - - - - 0x01B1EA 06:B1DA: 0A        ASL
C - - - - - 0x01B1EB 06:B1DB: 8D 7A 03  STA ram_037A
C - - - - - 0x01B1EE 06:B1DE: 60        RTS



sub_B1DF:
C - - - - - 0x01B1EF 06:B1DF: A9 02     LDA #$02
C - - - - - 0x01B1F1 06:B1E1: 8D 49 06  STA ram_0649
C - - - - - 0x01B1F4 06:B1E4: A9 00     LDA #$00
C - - - - - 0x01B1F6 06:B1E6: 8D 4A 06  STA ram_0649 + $01
C - - - - - 0x01B1F9 06:B1E9: A9 FF     LDA #$FF
C - - - - - 0x01B1FB 06:B1EB: 8D 4B 06  STA ram_0649 + $02
C - - - - - 0x01B1FE 06:B1EE: A9 80     LDA #$80
C - - - - - 0x01B200 06:B1F0: F0 05     BEQ bra_B1F7    ; bzk optimize, useless branch
C - - - - - 0x01B202 06:B1F2: AC 35 04  LDY ram_difficulty
C - - - - - 0x01B205 06:B1F5: 10 02     BPL bra_B1F9    ; bzk can difficulty be 80+?
bra_B1F7:
- - - - - - 0x01B207 06:B1F7: A0 01     LDY #$01
bra_B1F9:
C - - - - - 0x01B209 06:B1F9: B9 59 B2  LDA tbl_B259,Y
C - - - - - 0x01B20C 06:B1FC: 8D 4E 06  STA ram_064E
C - - - - - 0x01B20F 06:B1FF: 8D 4F 06  STA ram_064E + $01
C - - - - - 0x01B212 06:B202: 60        RTS



sub_B203:
C - - - - - 0x01B213 06:B203: AD 4A 06  LDA ram_0649 + $01
C - - - - - 0x01B216 06:B206: C9 20     CMP #$20
C - - - - - 0x01B218 06:B208: 90 01     BCC bra_B20B
- - - - - - 0x01B21A 06:B20A: 60        RTS
bra_B20B:
C - - - - - 0x01B21B 06:B20B: AE BC 05  LDX ram_buffer_index_2
C - - - - - 0x01B21E 06:B20E: A9 2A     LDA #$2A
C - - - - - 0x01B220 06:B210: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01B223 06:B213: E8        INX
C - - - - - 0x01B224 06:B214: AD 4A 06  LDA ram_0649 + $01
C - - - - - 0x01B227 06:B217: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01B22A 06:B21A: E8        INX
C - - - - - 0x01B22B 06:B21B: A9 04     LDA #$04
C - - - - - 0x01B22D 06:B21D: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01B230 06:B220: E8        INX
C - - - - - 0x01B231 06:B221: A9 02     LDA #$02
C - - - - - 0x01B233 06:B223: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01B236 06:B226: E8        INX
C - - - - - 0x01B237 06:B227: AC 49 06  LDY ram_0649
C - - - - - 0x01B23A 06:B22A: B9 53 B2  LDA tbl_B253,Y
C - - - - - 0x01B23D 06:B22D: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01B240 06:B230: E8        INX
C - - - - - 0x01B241 06:B231: B9 56 B2  LDA tbl_B256,Y
C - - - - - 0x01B244 06:B234: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01B247 06:B237: E8        INX
C - - - - - 0x01B248 06:B238: 8E BC 05  STX ram_buffer_index_2
C - - - - - 0x01B24B 06:B23B: CE 49 06  DEC ram_0649
C - - - - - 0x01B24E 06:B23E: 10 0D     BPL bra_B24D
C - - - - - 0x01B250 06:B240: EE 4A 06  INC ram_0649 + $01
C - - - - - 0x01B253 06:B243: A9 02     LDA #$02
C - - - - - 0x01B255 06:B245: 8D 49 06  STA ram_0649
C - - - - - 0x01B258 06:B248: AD 4F 06  LDA ram_064E + $01
C - - - - - 0x01B25B 06:B24B: 10 02     BPL bra_B24F
bra_B24D:
C - - - - - 0x01B25D 06:B24D: A9 01     LDA #$01
bra_B24F:
C - - - - - 0x01B25F 06:B24F: 8D 4E 06  STA ram_064E
C - - - - - 0x01B262 06:B252: 60        RTS



tbl_B253:
- D 1 - - - 0x01B263 06:B253: 00        .byte $00   ; 00 
- D 1 - - - 0x01B264 06:B254: 1E        .byte $1E   ; 01 
- D 1 - - - 0x01B265 06:B255: 0B        .byte $0B   ; 02 



tbl_B256:
- D 1 - - - 0x01B266 06:B256: 00        .byte $00   ; 00 
- D 1 - - - 0x01B267 06:B257: 00        .byte $00   ; 01 
- D 1 - - - 0x01B268 06:B258: 1B        .byte $1B   ; 02 



tbl_B259:
- D 1 - - - 0x01B269 06:B259: 60        .byte $60   ; 00 easy
- D 1 - - - 0x01B26A 06:B25A: 40        .byte $40   ; 01 norm
- D 1 - - - 0x01B26B 06:B25B: 34        .byte $34   ; 02 diff



loc_B25C:
C D 1 - - - 0x01B26C 06:B25C: AD 22 04  LDA ram_mission_hi
C - - - - - 0x01B26F 06:B25F: C9 09     CMP #con_mission_id_09    ; mission with spinning gears
C - - - - - 0x01B271 06:B261: F0 03     BEQ bra_B266
C - - - - - 0x01B273 06:B263: 4C 75 B3  JMP loc_B375
bra_B266:
C - - - - - 0x01B276 06:B266: A2 04     LDX #$04
bra_B268_loop:
C - - - - - 0x01B278 06:B268: BD 53 06  LDA ram_0653,X
C - - - - - 0x01B27B 06:B26B: 30 03     BMI bra_B270
C - - - - - 0x01B27D 06:B26D: 20 7C B2  JSR sub_B27C
bra_B270:
C - - - - - 0x01B280 06:B270: DE 4E 06  DEC ram_064E,X
C - - - - - 0x01B283 06:B273: 10 03     BPL bra_B278
C - - - - - 0x01B285 06:B275: 20 8A B2  JSR sub_B28A
bra_B278:
C - - - - - 0x01B288 06:B278: CA        DEX
C - - - - - 0x01B289 06:B279: 10 ED     BPL bra_B268_loop
C - - - - - 0x01B28B 06:B27B: 60        RTS



sub_B27C:
C - - - - - 0x01B28C 06:B27C: A9 00     LDA #$00
C - - - - - 0x01B28E 06:B27E: 9D 4E 06  STA ram_064E,X
C - - - - - 0x01B291 06:B281: BD 53 06  LDA ram_0653,X
C - - - - - 0x01B294 06:B284: 09 80     ORA #$80
C - - - - - 0x01B296 06:B286: 9D 53 06  STA ram_0653,X
C - - - - - 0x01B299 06:B289: 60        RTS



sub_B28A:
C - - - - - 0x01B29A 06:B28A: A9 23     LDA #con_E2E6 + $23
C - - - - - 0x01B29C 06:B28C: 20 00 C0  JSR sub_0x01C010
C - - - - - 0x01B29F 06:B28F: B0 29     BCS bra_B2BA
C - - - - - 0x01B2A1 06:B291: BC 49 06  LDY ram_0649,X
C - - - - - 0x01B2A4 06:B294: BD 53 06  LDA ram_0653,X
C - - - - - 0x01B2A7 06:B297: 29 7F     AND #$7F
C - - - - - 0x01B2A9 06:B299: F0 19     BEQ bra_B2B4
C - - - - - 0x01B2AB 06:B29B: 6A        ROR
C - - - - - 0x01B2AC 06:B29C: 90 0A     BCC bra_B2A8
C - - - - - 0x01B2AE 06:B29E: C8        INY
C - - - - - 0x01B2AF 06:B29F: 98        TYA
C - - - - - 0x01B2B0 06:B2A0: C9 04     CMP #$04
C - - - - - 0x01B2B2 06:B2A2: 90 09     BCC bra_B2AD
C - - - - - 0x01B2B4 06:B2A4: A0 00     LDY #$00
C - - - - - 0x01B2B6 06:B2A6: F0 05     BEQ bra_B2AD    ; jmp
bra_B2A8:
C - - - - - 0x01B2B8 06:B2A8: 88        DEY
C - - - - - 0x01B2B9 06:B2A9: 10 02     BPL bra_B2AD
C - - - - - 0x01B2BB 06:B2AB: A0 03     LDY #$03
bra_B2AD:
C - - - - - 0x01B2BD 06:B2AD: 98        TYA
C - - - - - 0x01B2BE 06:B2AE: 9D 49 06  STA ram_0649,X
C - - - - - 0x01B2C1 06:B2B1: 20 C0 B2  JSR sub_B2C0
bra_B2B4:
C - - - - - 0x01B2C4 06:B2B4: A9 02     LDA #$02
C - - - - - 0x01B2C6 06:B2B6: 9D 4E 06  STA ram_064E,X
C - - - - - 0x01B2C9 06:B2B9: 60        RTS
bra_B2BA:
C - - - - - 0x01B2CA 06:B2BA: A9 00     LDA #$00
C - - - - - 0x01B2CC 06:B2BC: 9D 4E 06  STA ram_064E,X
C - - - - - 0x01B2CF 06:B2BF: 60        RTS



sub_B2C0:
; triggers in room with gears and jumping spikes
C - - - - - 0x01B2D0 06:B2C0: 8A        TXA
C - - - - - 0x01B2D1 06:B2C1: 48        PHA
C - - - - - 0x01B2D2 06:B2C2: 0A        ASL
C - - - - - 0x01B2D3 06:B2C3: A8        TAY
C - - - - - 0x01B2D4 06:B2C4: B9 23 B3  LDA tbl_B323,Y
C - - - - - 0x01B2D7 06:B2C7: 85 19     STA ram_0019
C - - - - - 0x01B2D9 06:B2C9: B9 24 B3  LDA tbl_B323 + $01,Y
C - - - - - 0x01B2DC 06:B2CC: 85 1A     STA ram_001A
C - - - - - 0x01B2DE 06:B2CE: BD 49 06  LDA ram_0649,X
C - - - - - 0x01B2E1 06:B2D1: 0A        ASL
C - - - - - 0x01B2E2 06:B2D2: A8        TAY
C - - - - - 0x01B2E3 06:B2D3: B9 2D B3  LDA tbl_B32D,Y
C - - - - - 0x01B2E6 06:B2D6: 85 1B     STA ram_001B
C - - - - - 0x01B2E8 06:B2D8: B9 2E B3  LDA tbl_B32D + $01,Y
C - - - - - 0x01B2EB 06:B2DB: 85 1C     STA ram_001C
C - - - - - 0x01B2ED 06:B2DD: A2 03     LDX #$03
bra_B2DF_loop:
C - - - - - 0x01B2EF 06:B2DF: 20 F7 B2  JSR sub_B2F7
C - - - - - 0x01B2F2 06:B2E2: A5 1B     LDA ram_001B
C - - - - - 0x01B2F4 06:B2E4: 38        SEC
C - - - - - 0x01B2F5 06:B2E5: E9 04     SBC #< $0004
C - - - - - 0x01B2F7 06:B2E7: 85 1B     STA ram_001B
C - - - - - 0x01B2F9 06:B2E9: A5 1C     LDA ram_001C
C - - - - - 0x01B2FB 06:B2EB: E9 00     SBC #> $0004
C - - - - - 0x01B2FD 06:B2ED: 85 1C     STA ram_001C
C - - - - - 0x01B2FF 06:B2EF: C6 19     DEC ram_0019
C - - - - - 0x01B301 06:B2F1: CA        DEX
C - - - - - 0x01B302 06:B2F2: 10 EB     BPL bra_B2DF_loop
C - - - - - 0x01B304 06:B2F4: 68        PLA
C - - - - - 0x01B305 06:B2F5: AA        TAX
C - - - - - 0x01B306 06:B2F6: 60        RTS



sub_B2F7:
C - - - - - 0x01B307 06:B2F7: 8A        TXA
C - - - - - 0x01B308 06:B2F8: 48        PHA
C - - - - - 0x01B309 06:B2F9: AE BC 05  LDX ram_buffer_index_2
C - - - - - 0x01B30C 06:B2FC: A5 1A     LDA ram_001A
C - - - - - 0x01B30E 06:B2FE: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01B311 06:B301: E8        INX
C - - - - - 0x01B312 06:B302: A5 19     LDA ram_0019
C - - - - - 0x01B314 06:B304: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01B317 06:B307: E8        INX
C - - - - - 0x01B318 06:B308: A9 04     LDA #$04
C - - - - - 0x01B31A 06:B30A: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01B31D 06:B30D: E8        INX
C - - - - - 0x01B31E 06:B30E: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01B321 06:B311: E8        INX
C - - - - - 0x01B322 06:B312: A0 03     LDY #$03
bra_B314_loop:
C - - - - - 0x01B324 06:B314: B1 1B     LDA (ram_001B),Y
C - - - - - 0x01B326 06:B316: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01B329 06:B319: E8        INX
C - - - - - 0x01B32A 06:B31A: 88        DEY
C - - - - - 0x01B32B 06:B31B: 10 F7     BPL bra_B314_loop
C - - - - - 0x01B32D 06:B31D: 8E BC 05  STX ram_buffer_index_2
C - - - - - 0x01B330 06:B320: 68        PLA
C - - - - - 0x01B331 06:B321: AA        TAX
C - - - - - 0x01B332 06:B322: 60        RTS



tbl_B323:
- D 1 - - - 0x01B333 06:B323: CB        .byte $CB   ; 
- D 1 - - - 0x01B334 06:B324: 28        .byte $28   ; 

- D 1 - - - 0x01B335 06:B325: 19        .byte $19   ; 
- D 1 - - - 0x01B336 06:B326: 29        .byte $29   ; 

- D 1 - - - 0x01B337 06:B327: D5        .byte $D5   ; 
- D 1 - - - 0x01B338 06:B328: 29        .byte $29   ; 

- D 1 - - - 0x01B339 06:B329: 4B        .byte $4B   ; 
- D 1 - - - 0x01B33A 06:B32A: 2A        .byte $2A   ; 

- D 1 - - - 0x01B33B 06:B32B: 59        .byte $59   ; 
- D 1 - - - 0x01B33C 06:B32C: 2A        .byte $2A   ; 



tbl_B32D:
- D 1 - - - 0x01B33D 06:B32D: 41 B3     .word off_B335_00 + $0C
- D 1 - - - 0x01B33F 06:B32F: 51 B3     .word off_B345_01 + $0C
- D 1 - - - 0x01B341 06:B331: 61 B3     .word off_B355_02 + $0C
- D 1 - - - 0x01B343 06:B333: 71 B3     .word off_B365_03 + $0C



off_B335_00:
- D 1 - I - 0x01B345 06:B335: 40        .byte $40   ; 
- D 1 - I - 0x01B346 06:B336: 30        .byte $30   ; 
- D 1 - I - 0x01B347 06:B337: 20        .byte $20   ; 
- D 1 - I - 0x01B348 06:B338: 10        .byte $10   ; 
- D 1 - I - 0x01B349 06:B339: 41        .byte $41   ; 
- D 1 - I - 0x01B34A 06:B33A: 65        .byte $65   ; 
- D 1 - I - 0x01B34B 06:B33B: 55        .byte $55   ; 
- D 1 - I - 0x01B34C 06:B33C: 11        .byte $11   ; 
- D 1 - I - 0x01B34D 06:B33D: 42        .byte $42   ; 
- D 1 - I - 0x01B34E 06:B33E: 66        .byte $66   ; 
- D 1 - I - 0x01B34F 06:B33F: 56        .byte $56   ; 
- D 1 - I - 0x01B350 06:B340: 12        .byte $12   ; 
- D 1 - I - 0x01B351 06:B341: 43        .byte $43   ; 
- D 1 - I - 0x01B352 06:B342: 33        .byte $33   ; 
- D 1 - I - 0x01B353 06:B343: 23        .byte $23   ; 
- D 1 - I - 0x01B354 06:B344: 13        .byte $13   ; 



off_B345_01:
- D 1 - I - 0x01B355 06:B345: 44        .byte $44   ; 
- D 1 - I - 0x01B356 06:B346: 34        .byte $34   ; 
- D 1 - I - 0x01B357 06:B347: 24        .byte $24   ; 
- D 1 - I - 0x01B358 06:B348: 14        .byte $14   ; 
- D 1 - I - 0x01B359 06:B349: 45        .byte $45   ; 
- D 1 - I - 0x01B35A 06:B34A: 67        .byte $67   ; 
- D 1 - I - 0x01B35B 06:B34B: 57        .byte $57   ; 
- D 1 - I - 0x01B35C 06:B34C: 15        .byte $15   ; 
- D 1 - I - 0x01B35D 06:B34D: 46        .byte $46   ; 
- D 1 - I - 0x01B35E 06:B34E: 68        .byte $68   ; 
- D 1 - I - 0x01B35F 06:B34F: 58        .byte $58   ; 
- D 1 - I - 0x01B360 06:B350: 16        .byte $16   ; 
- D 1 - I - 0x01B361 06:B351: 47        .byte $47   ; 
- D 1 - I - 0x01B362 06:B352: 37        .byte $37   ; 
- D 1 - I - 0x01B363 06:B353: 27        .byte $27   ; 
- D 1 - I - 0x01B364 06:B354: 17        .byte $17   ; 



off_B355_02:
- D 1 - I - 0x01B365 06:B355: 40        .byte $40   ; 
- D 1 - I - 0x01B366 06:B356: 30        .byte $30   ; 
- D 1 - I - 0x01B367 06:B357: 20        .byte $20   ; 
- D 1 - I - 0x01B368 06:B358: 10        .byte $10   ; 
- D 1 - I - 0x01B369 06:B359: 41        .byte $41   ; 
- D 1 - I - 0x01B36A 06:B35A: 85        .byte $85   ; 
- D 1 - I - 0x01B36B 06:B35B: 75        .byte $75   ; 
- D 1 - I - 0x01B36C 06:B35C: 11        .byte $11   ; 
- D 1 - I - 0x01B36D 06:B35D: 42        .byte $42   ; 
- D 1 - I - 0x01B36E 06:B35E: 86        .byte $86   ; 
- D 1 - I - 0x01B36F 06:B35F: 76        .byte $76   ; 
- D 1 - I - 0x01B370 06:B360: 12        .byte $12   ; 
- D 1 - I - 0x01B371 06:B361: 43        .byte $43   ; 
- D 1 - I - 0x01B372 06:B362: 33        .byte $33   ; 
- D 1 - I - 0x01B373 06:B363: 23        .byte $23   ; 
- D 1 - I - 0x01B374 06:B364: 13        .byte $13   ; 



off_B365_03:
- D 1 - I - 0x01B375 06:B365: 44        .byte $44   ; 
- D 1 - I - 0x01B376 06:B366: 34        .byte $34   ; 
- D 1 - I - 0x01B377 06:B367: 24        .byte $24   ; 
- D 1 - I - 0x01B378 06:B368: 14        .byte $14   ; 
- D 1 - I - 0x01B379 06:B369: 45        .byte $45   ; 
- D 1 - I - 0x01B37A 06:B36A: 87        .byte $87   ; 
- D 1 - I - 0x01B37B 06:B36B: 77        .byte $77   ; 
- D 1 - I - 0x01B37C 06:B36C: 15        .byte $15   ; 
- D 1 - I - 0x01B37D 06:B36D: 46        .byte $46   ; 
- D 1 - I - 0x01B37E 06:B36E: 88        .byte $88   ; 
- D 1 - I - 0x01B37F 06:B36F: 78        .byte $78   ; 
- D 1 - I - 0x01B380 06:B370: 16        .byte $16   ; 
- D 1 - I - 0x01B381 06:B371: 47        .byte $47   ; 
- D 1 - I - 0x01B382 06:B372: 37        .byte $37   ; 
- D 1 - I - 0x01B383 06:B373: 27        .byte $27   ; 
- D 1 - I - 0x01B384 06:B374: 17        .byte $17   ; 



loc_B375:
C D 1 - - - 0x01B385 06:B375: AD 22 04  LDA ram_mission_hi
C - - - - - 0x01B388 06:B378: C9 03     CMP #con_mission_id_03
C - - - - - 0x01B38A 06:B37A: F0 03     BEQ bra_B37F
C - - - - - 0x01B38C 06:B37C: 4C AF B5  JMP loc_B5AF
bra_B37F:
C - - - - - 0x01B38F 06:B37F: A2 03     LDX #$03
bra_B381_loop:
C - - - - - 0x01B391 06:B381: BD 53 06  LDA ram_0653,X
C - - - - - 0x01B394 06:B384: 30 03     BMI bra_B389
C - - - - - 0x01B396 06:B386: 20 A1 B3  JSR sub_B3A1
bra_B389:
C - - - - - 0x01B399 06:B389: DE 4E 06  DEC ram_064E,X
C - - - - - 0x01B39C 06:B38C: 10 0F     BPL bra_B39D
C - - - - - 0x01B39E 06:B38E: A9 1A     LDA #con_E2E6 + $1A
C - - - - - 0x01B3A0 06:B390: 20 00 C0  JSR sub_0x01C010
C - - - - - 0x01B3A3 06:B393: 90 05     BCC bra_B39A
- - - - - - 0x01B3A5 06:B395: FE 4E 06  INC ram_064E,X
- - - - - - 0x01B3A8 06:B398: F0 03     BEQ bra_B39D
bra_B39A:
C - - - - - 0x01B3AA 06:B39A: 20 E7 B3  JSR sub_B3E7
bra_B39D:
C - - - - - 0x01B3AD 06:B39D: CA        DEX
C - - - - - 0x01B3AE 06:B39E: 10 E1     BPL bra_B381_loop
C - - - - - 0x01B3B0 06:B3A0: 60        RTS



sub_B3A1:
C - - - - - 0x01B3B1 06:B3A1: F0 0F     BEQ bra_B3B2
C - - - - - 0x01B3B3 06:B3A3: 6A        ROR
C - - - - - 0x01B3B4 06:B3A4: 90 06     BCC bra_B3AC
C - - - - - 0x01B3B6 06:B3A6: 20 BE B3  JSR sub_B3BE
C - - - - - 0x01B3B9 06:B3A9: 4C B5 B3  JMP loc_B3B5
bra_B3AC:
C - - - - - 0x01B3BC 06:B3AC: 20 D6 B3  JSR sub_B3D6
C - - - - - 0x01B3BF 06:B3AF: 4C B5 B3  JMP loc_B3B5
bra_B3B2:
C - - - - - 0x01B3C2 06:B3B2: 20 E1 B3  JSR sub_B3E1
loc_B3B5:
C D 1 - - - 0x01B3C5 06:B3B5: BD 53 06  LDA ram_0653,X
C - - - - - 0x01B3C8 06:B3B8: 09 80     ORA #$80
C - - - - - 0x01B3CA 06:B3BA: 9D 53 06  STA ram_0653,X
C - - - - - 0x01B3CD 06:B3BD: 60        RTS



sub_B3BE:
C - - - - - 0x01B3CE 06:B3BE: BD 49 06  LDA ram_0649,X
C - - - - - 0x01B3D1 06:B3C1: C9 06     CMP #$06
C - - - - - 0x01B3D3 06:B3C3: B0 06     BCS bra_B3CB
C - - - - - 0x01B3D5 06:B3C5: A9 00     LDA #$00
C - - - - - 0x01B3D7 06:B3C7: 9D 4E 06  STA ram_064E,X
C - - - - - 0x01B3DA 06:B3CA: 60        RTS
bra_B3CB:
C - - - - - 0x01B3DB 06:B3CB: A9 80     LDA #$80
C - - - - - 0x01B3DD 06:B3CD: 9D 53 06  STA ram_0653,X
C - - - - - 0x01B3E0 06:B3D0: A9 7F     LDA #$7F
C - - - - - 0x01B3E2 06:B3D2: 9D 4E 06  STA ram_064E,X
C - - - - - 0x01B3E5 06:B3D5: 60        RTS



sub_B3D6:
C - - - - - 0x01B3E6 06:B3D6: BD 49 06  LDA ram_0649,X
C - - - - - 0x01B3E9 06:B3D9: F0 F0     BEQ bra_B3CB
C - - - - - 0x01B3EB 06:B3DB: A9 00     LDA #$00
C - - - - - 0x01B3ED 06:B3DD: 9D 4E 06  STA ram_064E,X
C - - - - - 0x01B3F0 06:B3E0: 60        RTS



sub_B3E1:
C - - - - - 0x01B3F1 06:B3E1: A9 7F     LDA #$7F
C - - - - - 0x01B3F3 06:B3E3: 9D 4E 06  STA ram_064E,X
C - - - - - 0x01B3F6 06:B3E6: 60        RTS



sub_B3E7:
C - - - - - 0x01B3F7 06:B3E7: BD 53 06  LDA ram_0653,X
C - - - - - 0x01B3FA 06:B3EA: 29 7F     AND #$7F
C - - - - - 0x01B3FC 06:B3EC: F0 11     BEQ bra_B3FF
C - - - - - 0x01B3FE 06:B3EE: 6A        ROR
C - - - - - 0x01B3FF 06:B3EF: 90 07     BCC bra_B3F8
C - - - - - 0x01B401 06:B3F1: 20 03 B4  JSR sub_B403
C - - - - - 0x01B404 06:B3F4: 20 4D B4  JSR sub_B44D
C - - - - - 0x01B407 06:B3F7: 60        RTS
bra_B3F8:
C - - - - - 0x01B408 06:B3F8: 20 21 B4  JSR sub_B421
C - - - - - 0x01B40B 06:B3FB: 20 4D B4  JSR sub_B44D
C - - - - - 0x01B40E 06:B3FE: 60        RTS
bra_B3FF:
C - - - - - 0x01B40F 06:B3FF: 20 47 B4  JSR sub_B447
C - - - - - 0x01B412 06:B402: 60        RTS



sub_B403:
C - - - - - 0x01B413 06:B403: BD 49 06  LDA ram_0649,X
C - - - - - 0x01B416 06:B406: C9 06     CMP #$06
C - - - - - 0x01B418 06:B408: D0 09     BNE bra_B413
C - - - - - 0x01B41A 06:B40A: A9 80     LDA #$80
C - - - - - 0x01B41C 06:B40C: 9D 53 06  STA ram_0653,X
C - - - - - 0x01B41F 06:B40F: A9 7F     LDA #$7F
C - - - - - 0x01B421 06:B411: 10 0A     BPL bra_B41D    ; jmp
bra_B413:
C - - - - - 0x01B423 06:B413: FE 49 06  INC ram_0649,X
C - - - - - 0x01B426 06:B416: BD 49 06  LDA ram_0649,X
C - - - - - 0x01B429 06:B419: A8        TAY
C - - - - - 0x01B42A 06:B41A: B9 12 B5  LDA tbl_B513 - $01,Y
bra_B41D:
C - - - - - 0x01B42D 06:B41D: 9D 4E 06  STA ram_064E,X
C - - - - - 0x01B430 06:B420: 60        RTS



sub_B421:
C - - - - - 0x01B431 06:B421: BD 49 06  LDA ram_0649,X
C - - - - - 0x01B434 06:B424: 10 0E     BPL bra_B434
- - - - - - 0x01B436 06:B426: A9 80     LDA #$80
- - - - - - 0x01B438 06:B428: 9D 53 06  STA ram_0653,X
- - - - - - 0x01B43B 06:B42B: A9 00     LDA #$00
- - - - - - 0x01B43D 06:B42D: 9D 49 06  STA ram_0649,X
- - - - - - 0x01B440 06:B430: A9 7F     LDA #$7F
- - - - - - 0x01B442 06:B432: 10 0F     BPL bra_B443
bra_B434:
C - - - - - 0x01B444 06:B434: BD 49 06  LDA ram_0649,X
C - - - - - 0x01B447 06:B437: A8        TAY
C - - - - - 0x01B448 06:B438: B9 18 B5  LDA tbl_B519 - $01,Y
C - - - - - 0x01B44B 06:B43B: DE 49 06  DEC ram_0649,X
C - - - - - 0x01B44E 06:B43E: 10 03     BPL bra_B443
C - - - - - 0x01B450 06:B440: FE 49 06  INC ram_0649,X
bra_B443:
C - - - - - 0x01B453 06:B443: 9D 4E 06  STA ram_064E,X
C - - - - - 0x01B456 06:B446: 60        RTS



sub_B447:
C - - - - - 0x01B457 06:B447: A9 7F     LDA #$7F
C - - - - - 0x01B459 06:B449: 9D 4E 06  STA ram_064E,X
C - - - - - 0x01B45C 06:B44C: 60        RTS



sub_B44D:
C - - - - - 0x01B45D 06:B44D: 86 29     STX ram_0029
C - - - - - 0x01B45F 06:B44F: 8A        TXA
C - - - - - 0x01B460 06:B450: 0A        ASL
C - - - - - 0x01B461 06:B451: A8        TAY
C - - - - - 0x01B462 06:B452: B9 0B B5  LDA tbl_B50B,Y
C - - - - - 0x01B465 06:B455: 85 19     STA ram_0019
C - - - - - 0x01B467 06:B457: B9 0C B5  LDA tbl_B50B + $01,Y
C - - - - - 0x01B46A 06:B45A: 85 1A     STA ram_001A
C - - - - - 0x01B46C 06:B45C: BD 49 06  LDA ram_0649,X
C - - - - - 0x01B46F 06:B45F: 29 01     AND #$01
C - - - - - 0x01B471 06:B461: 0A        ASL
C - - - - - 0x01B472 06:B462: AA        TAX
C - - - - - 0x01B473 06:B463: 86 2A     STX ram_002A
C - - - - - 0x01B475 06:B465: BD CB B4  LDA tbl_B4CB,X
C - - - - - 0x01B478 06:B468: 85 1B     STA ram_001B
C - - - - - 0x01B47A 06:B46A: BD CC B4  LDA tbl_B4CB + $01,X
C - - - - - 0x01B47D 06:B46D: 85 1C     STA ram_001C
C - - - - - 0x01B47F 06:B46F: 20 91 B4  JSR sub_B491
C - - - - - 0x01B482 06:B472: A6 2A     LDX ram_002A
C - - - - - 0x01B484 06:B474: 18        CLC
C - - - - - 0x01B485 06:B475: A5 19     LDA ram_0019
C - - - - - 0x01B487 06:B477: 69 01     ADC #< $0001
C - - - - - 0x01B489 06:B479: 85 19     STA ram_0019
C - - - - - 0x01B48B 06:B47B: A5 1A     LDA ram_001A
C - - - - - 0x01B48D 06:B47D: 69 00     ADC #> $0001
C - - - - - 0x01B48F 06:B47F: 85 1A     STA ram_001A
C - - - - - 0x01B491 06:B481: BD CF B4  LDA tbl_B4CF,X
C - - - - - 0x01B494 06:B484: 85 1B     STA ram_001B
C - - - - - 0x01B496 06:B486: BD D0 B4  LDA tbl_B4CF + $01,X
C - - - - - 0x01B499 06:B489: 85 1C     STA ram_001C
C - - - - - 0x01B49B 06:B48B: 20 91 B4  JSR sub_B491
C - - - - - 0x01B49E 06:B48E: A6 29     LDX ram_0029
C - - - - - 0x01B4A0 06:B490: 60        RTS



sub_B491:
C - - - - - 0x01B4A1 06:B491: A6 29     LDX ram_0029
C - - - - - 0x01B4A3 06:B493: BD 49 06  LDA ram_0649,X
C - - - - - 0x01B4A6 06:B496: 18        CLC
C - - - - - 0x01B4A7 06:B497: 65 1B     ADC ram_001B
C - - - - - 0x01B4A9 06:B499: 85 1B     STA ram_001B
C - - - - - 0x01B4AB 06:B49B: A5 1C     LDA ram_001C
C - - - - - 0x01B4AD 06:B49D: 69 00     ADC #$00
C - - - - - 0x01B4AF 06:B49F: 85 1C     STA ram_001C
C - - - - - 0x01B4B1 06:B4A1: AE BC 05  LDX ram_buffer_index_2
C - - - - - 0x01B4B4 06:B4A4: A5 1A     LDA ram_001A
C - - - - - 0x01B4B6 06:B4A6: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01B4B9 06:B4A9: E8        INX
C - - - - - 0x01B4BA 06:B4AA: A5 19     LDA ram_0019
C - - - - - 0x01B4BC 06:B4AC: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01B4BF 06:B4AF: E8        INX
C - - - - - 0x01B4C0 06:B4B0: A9 04     LDA #$04
C - - - - - 0x01B4C2 06:B4B2: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01B4C5 06:B4B5: E8        INX
C - - - - - 0x01B4C6 06:B4B6: A9 08     LDA #$08
C - - - - - 0x01B4C8 06:B4B8: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01B4CB 06:B4BB: E8        INX
C - - - - - 0x01B4CC 06:B4BC: A0 07     LDY #$07
bra_B4BE_loop:
C - - - - - 0x01B4CE 06:B4BE: B1 1B     LDA (ram_001B),Y
C - - - - - 0x01B4D0 06:B4C0: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01B4D3 06:B4C3: E8        INX
C - - - - - 0x01B4D4 06:B4C4: 88        DEY
C - - - - - 0x01B4D5 06:B4C5: 10 F7     BPL bra_B4BE_loop
C - - - - - 0x01B4D7 06:B4C7: 8E BC 05  STX ram_buffer_index_2
C - - - - - 0x01B4DA 06:B4CA: 60        RTS



tbl_B4CB:
- D 1 - - - 0x01B4DB 06:B4CB: D3 B4     .word off_B4D3_00
- D 1 - - - 0x01B4DD 06:B4CD: E1 B4     .word off_B4E1_01



tbl_B4CF:
- D 1 - - - 0x01B4DF 06:B4CF: EF B4     .word off_B4EF_00
- D 1 - - - 0x01B4E1 06:B4D1: FD B4     .word off_B4FD_01



off_B4D3_00:
- D 1 - I - 0x01B4E3 06:B4D3: 1E        .byte $1E   ; 
- D 1 - I - 0x01B4E4 06:B4D4: 0D        .byte $0D   ; 
- D 1 - I - 0x01B4E5 06:B4D5: 1E        .byte $1E   ; 
- D 1 - I - 0x01B4E6 06:B4D6: 0D        .byte $0D   ; 
- D 1 - I - 0x01B4E7 06:B4D7: 1E        .byte $1E   ; 
- D 1 - I - 0x01B4E8 06:B4D8: 0D        .byte $0D   ; 
- D 1 - I - 0x01B4E9 06:B4D9: 66        .byte $66   ; 
- D 1 - I - 0x01B4EA 06:B4DA: 56        .byte $56   ; 
- D 1 - I - 0x01B4EB 06:B4DB: 46        .byte $46   ; 
- D 1 - I - 0x01B4EC 06:B4DC: 46        .byte $46   ; 
- D 1 - I - 0x01B4ED 06:B4DD: 46        .byte $46   ; 
- D 1 - I - 0x01B4EE 06:B4DE: 46        .byte $46   ; 
- D 1 - I - 0x01B4EF 06:B4DF: 46        .byte $46   ; 
- D 1 - I - 0x01B4F0 06:B4E0: 46        .byte $46   ; 

off_B4E1_01:
- - - - - - 0x01B4F1 06:B4E1: 0D        .byte $0D   ; 
- D 1 - I - 0x01B4F2 06:B4E2: 1E        .byte $1E   ; 
- D 1 - I - 0x01B4F3 06:B4E3: 0D        .byte $0D   ; 
- D 1 - I - 0x01B4F4 06:B4E4: 1E        .byte $1E   ; 
- D 1 - I - 0x01B4F5 06:B4E5: 0D        .byte $0D   ; 
- D 1 - I - 0x01B4F6 06:B4E6: 1E        .byte $1E   ; 
- D 1 - I - 0x01B4F7 06:B4E7: 66        .byte $66   ; 
- D 1 - I - 0x01B4F8 06:B4E8: 56        .byte $56   ; 
- D 1 - I - 0x01B4F9 06:B4E9: 46        .byte $46   ; 
- D 1 - I - 0x01B4FA 06:B4EA: 46        .byte $46   ; 
- D 1 - I - 0x01B4FB 06:B4EB: 46        .byte $46   ; 
- D 1 - I - 0x01B4FC 06:B4EC: 46        .byte $46   ; 
- D 1 - I - 0x01B4FD 06:B4ED: 46        .byte $46   ; 
- - - - - - 0x01B4FE 06:B4EE: 46        .byte $46   ; 



off_B4EF_00:
- D 1 - I - 0x01B4FF 06:B4EF: 1F        .byte $1F   ; 
- D 1 - I - 0x01B500 06:B4F0: 0E        .byte $0E   ; 
- D 1 - I - 0x01B501 06:B4F1: 1F        .byte $1F   ; 
- D 1 - I - 0x01B502 06:B4F2: 0E        .byte $0E   ; 
- D 1 - I - 0x01B503 06:B4F3: 1F        .byte $1F   ; 
- D 1 - I - 0x01B504 06:B4F4: 0E        .byte $0E   ; 
- D 1 - I - 0x01B505 06:B4F5: 67        .byte $67   ; 
- D 1 - I - 0x01B506 06:B4F6: 57        .byte $57   ; 
- D 1 - I - 0x01B507 06:B4F7: 47        .byte $47   ; 
- D 1 - I - 0x01B508 06:B4F8: 47        .byte $47   ; 
- D 1 - I - 0x01B509 06:B4F9: 47        .byte $47   ; 
- D 1 - I - 0x01B50A 06:B4FA: 47        .byte $47   ; 
- D 1 - I - 0x01B50B 06:B4FB: 47        .byte $47   ; 
- D 1 - I - 0x01B50C 06:B4FC: 47        .byte $47   ; 

off_B4FD_01:
- - - - - - 0x01B50D 06:B4FD: 0E        .byte $0E   ; 
- D 1 - I - 0x01B50E 06:B4FE: 1F        .byte $1F   ; 
- D 1 - I - 0x01B50F 06:B4FF: 0E        .byte $0E   ; 
- D 1 - I - 0x01B510 06:B500: 1F        .byte $1F   ; 
- D 1 - I - 0x01B511 06:B501: 0E        .byte $0E   ; 
- D 1 - I - 0x01B512 06:B502: 1F        .byte $1F   ; 
- D 1 - I - 0x01B513 06:B503: 67        .byte $67   ; 
- D 1 - I - 0x01B514 06:B504: 57        .byte $57   ; 
- D 1 - I - 0x01B515 06:B505: 47        .byte $47   ; 
- D 1 - I - 0x01B516 06:B506: 47        .byte $47   ; 
- D 1 - I - 0x01B517 06:B507: 47        .byte $47   ; 
- D 1 - I - 0x01B518 06:B508: 47        .byte $47   ; 
- D 1 - I - 0x01B519 06:B509: 47        .byte $47   ; 
- - - - - - 0x01B51A 06:B50A: 47        .byte $47   ; 



tbl_B50B:
- D 1 - - - 0x01B51B 06:B50B: 44        .byte $44   ; 
- D 1 - - - 0x01B51C 06:B50C: 29        .byte $29   ; 

- D 1 - - - 0x01B51D 06:B50D: 48        .byte $48   ; 
- D 1 - - - 0x01B51E 06:B50E: 29        .byte $29   ; 

- D 1 - - - 0x01B51F 06:B50F: 52        .byte $52   ; 
- D 1 - - - 0x01B520 06:B510: 29        .byte $29   ; 

- D 1 - - - 0x01B521 06:B511: 5E        .byte $5E   ; 
- D 1 - - - 0x01B522 06:B512: 29        .byte $29   ; 



tbl_B513:
- D 1 - - - 0x01B523 06:B513: 02        .byte $02   ; 01 
- D 1 - - - 0x01B524 06:B514: 02        .byte $02   ; 02 
- D 1 - - - 0x01B525 06:B515: 02        .byte $02   ; 03 
- D 1 - - - 0x01B526 06:B516: 02        .byte $02   ; 04 
- D 1 - - - 0x01B527 06:B517: 02        .byte $02   ; 05 
- D 1 - - - 0x01B528 06:B518: 02        .byte $02   ; 06 


tbl_B519:
- D 1 - - - 0x01B529 06:B519: 02        .byte $02   ; 01 
- D 1 - - - 0x01B52A 06:B51A: 02        .byte $02   ; 02 
- D 1 - - - 0x01B52B 06:B51B: 02        .byte $02   ; 03 
- D 1 - - - 0x01B52C 06:B51C: 02        .byte $02   ; 04 
- D 1 - - - 0x01B52D 06:B51D: 02        .byte $02   ; 05 
- D 1 - - - 0x01B52E 06:B51E: 02        .byte $02   ; 06 



sub_B51F:
C - - - - - 0x01B52F 06:B51F: A9 14     LDA #con_E2E6 + $14
C - - - - - 0x01B531 06:B521: 20 00 C0  JSR sub_0x01C010
C - - - - - 0x01B534 06:B524: B0 27     BCS bra_B54D_RTS
C - - - - - 0x01B536 06:B526: AC 44 06  LDY ram_0644
C - - - - - 0x01B539 06:B529: 88        DEY
C - - - - - 0x01B53A 06:B52A: 10 02     BPL bra_B52E
C - - - - - 0x01B53C 06:B52C: A0 03     LDY #$03
bra_B52E:
C - - - - - 0x01B53E 06:B52E: 8C 44 06  STY ram_0644
C - - - - - 0x01B541 06:B531: 98        TYA
C - - - - - 0x01B542 06:B532: 0A        ASL
C - - - - - 0x01B543 06:B533: AA        TAX
C - - - - - 0x01B544 06:B534: BD 4E B5  LDA tbl_B54E,X
C - - - - - 0x01B547 06:B537: 85 1B     STA ram_001B
C - - - - - 0x01B549 06:B539: BD 4F B5  LDA tbl_B54E + $01,X
C - - - - - 0x01B54C 06:B53C: 85 1C     STA ram_001C
C - - - - - 0x01B54E 06:B53E: A9 40     LDA #$40
C - - - - - 0x01B550 06:B540: 85 19     STA ram_0019
C - - - - - 0x01B552 06:B542: A9 20     LDA #$20
C - - - - - 0x01B554 06:B544: 85 1A     STA ram_001A
C - - - - - 0x01B556 06:B546: A2 00     LDX #$00
C - - - - - 0x01B558 06:B548: A0 10     LDY #$10
C - - - - - 0x01B55A 06:B54A: 20 86 B5  JSR sub_B586
bra_B54D_RTS:
C - - - - - 0x01B55D 06:B54D: 60        RTS



tbl_B54E:
- D 1 - - - 0x01B55E 06:B54E: 56 B5     .word off_B556_00
- D 1 - - - 0x01B560 06:B550: 66 B5     .word off_B566_01
- D 1 - - - 0x01B562 06:B552: 76 B5     .word off_B576_02
- D 1 - - - 0x01B564 06:B554: 66 B5     .word off_B566_03



off_B556_00:
- D 1 - I - 0x01B566 06:B556: 86        .byte $86   ; 
- D 1 - I - 0x01B567 06:B557: 86        .byte $86   ; 
- D 1 - I - 0x01B568 06:B558: 86        .byte $86   ; 
- D 1 - I - 0x01B569 06:B559: 86        .byte $86   ; 
- D 1 - I - 0x01B56A 06:B55A: 86        .byte $86   ; 
- D 1 - I - 0x01B56B 06:B55B: 73        .byte $73   ; 
- D 1 - I - 0x01B56C 06:B55C: 72        .byte $72   ; 
- D 1 - I - 0x01B56D 06:B55D: 86        .byte $86   ; 
- D 1 - I - 0x01B56E 06:B55E: 86        .byte $86   ; 
- D 1 - I - 0x01B56F 06:B55F: 86        .byte $86   ; 
- D 1 - I - 0x01B570 06:B560: 86        .byte $86   ; 
- D 1 - I - 0x01B571 06:B561: 86        .byte $86   ; 
- D 1 - I - 0x01B572 06:B562: 86        .byte $86   ; 
- D 1 - I - 0x01B573 06:B563: 86        .byte $86   ; 
- D 1 - I - 0x01B574 06:B564: 86        .byte $86   ; 
- D 1 - I - 0x01B575 06:B565: 86        .byte $86   ; 

off_B566_01:
off_B566_03:
- D 1 - I - 0x01B576 06:B566: C2        .byte $C2   ; 
- D 1 - I - 0x01B577 06:B567: C2        .byte $C2   ; 
- D 1 - I - 0x01B578 06:B568: C2        .byte $C2   ; 
- D 1 - I - 0x01B579 06:B569: C2        .byte $C2   ; 
- D 1 - I - 0x01B57A 06:B56A: 86        .byte $86   ; 
- D 1 - I - 0x01B57B 06:B56B: C1        .byte $C1   ; 
- D 1 - I - 0x01B57C 06:B56C: C0        .byte $C0   ; 
- D 1 - I - 0x01B57D 06:B56D: 86        .byte $86   ; 
- D 1 - I - 0x01B57E 06:B56E: C2        .byte $C2   ; 
- D 1 - I - 0x01B57F 06:B56F: C2        .byte $C2   ; 
- D 1 - I - 0x01B580 06:B570: C2        .byte $C2   ; 
- D 1 - I - 0x01B581 06:B571: C2        .byte $C2   ; 
- D 1 - I - 0x01B582 06:B572: C2        .byte $C2   ; 
- D 1 - I - 0x01B583 06:B573: C2        .byte $C2   ; 
- D 1 - I - 0x01B584 06:B574: C2        .byte $C2   ; 
- D 1 - I - 0x01B585 06:B575: C2        .byte $C2   ; 

off_B576_02:
- D 1 - I - 0x01B586 06:B576: 00        .byte $00   ; 
- D 1 - I - 0x01B587 06:B577: 00        .byte $00   ; 
- D 1 - I - 0x01B588 06:B578: 00        .byte $00   ; 
- D 1 - I - 0x01B589 06:B579: 00        .byte $00   ; 
- D 1 - I - 0x01B58A 06:B57A: C2        .byte $C2   ; 
- D 1 - I - 0x01B58B 06:B57B: B2        .byte $B2   ; 
- D 1 - I - 0x01B58C 06:B57C: B1        .byte $B1   ; 
- D 1 - I - 0x01B58D 06:B57D: C2        .byte $C2   ; 
- D 1 - I - 0x01B58E 06:B57E: 00        .byte $00   ; 
- D 1 - I - 0x01B58F 06:B57F: 00        .byte $00   ; 
- D 1 - I - 0x01B590 06:B580: 00        .byte $00   ; 
- D 1 - I - 0x01B591 06:B581: 00        .byte $00   ; 
- D 1 - I - 0x01B592 06:B582: 00        .byte $00   ; 
- D 1 - I - 0x01B593 06:B583: 00        .byte $00   ; 
- D 1 - I - 0x01B594 06:B584: 00        .byte $00   ; 
- D 1 - I - 0x01B595 06:B585: 00        .byte $00   ; 



sub_B586:
C - - - - - 0x01B596 06:B586: 8A        TXA
C - - - - - 0x01B597 06:B587: 48        PHA
C - - - - - 0x01B598 06:B588: AE BC 05  LDX ram_buffer_index_2
C - - - - - 0x01B59B 06:B58B: A5 1A     LDA ram_001A
C - - - - - 0x01B59D 06:B58D: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01B5A0 06:B590: E8        INX
C - - - - - 0x01B5A1 06:B591: A5 19     LDA ram_0019
C - - - - - 0x01B5A3 06:B593: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01B5A6 06:B596: E8        INX
C - - - - - 0x01B5A7 06:B597: 68        PLA
C - - - - - 0x01B5A8 06:B598: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01B5AB 06:B59B: E8        INX
C - - - - - 0x01B5AC 06:B59C: 98        TYA
C - - - - - 0x01B5AD 06:B59D: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01B5B0 06:B5A0: E8        INX
C - - - - - 0x01B5B1 06:B5A1: 88        DEY
bra_B5A2_loop:
C - - - - - 0x01B5B2 06:B5A2: B1 1B     LDA (ram_001B),Y
C - - - - - 0x01B5B4 06:B5A4: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01B5B7 06:B5A7: E8        INX
C - - - - - 0x01B5B8 06:B5A8: 88        DEY
C - - - - - 0x01B5B9 06:B5A9: 10 F7     BPL bra_B5A2_loop
C - - - - - 0x01B5BB 06:B5AB: 8E BC 05  STX ram_buffer_index_2
C - - - - - 0x01B5BE 06:B5AE: 60        RTS



loc_B5AF:
C D 1 - - - 0x01B5BF 06:B5AF: AD 22 04  LDA ram_mission_hi
C - - - - - 0x01B5C2 06:B5B2: C9 06     CMP #con_mission_id_06
C - - - - - 0x01B5C4 06:B5B4: F0 03     BEQ bra_B5B9
C - - - - - 0x01B5C6 06:B5B6: 4C F5 B7  JMP loc_B7F5
bra_B5B9:
C - - - - - 0x01B5C9 06:B5B9: A2 01     LDX #$01
bra_B5BB_loop:
C - - - - - 0x01B5CB 06:B5BB: BD 53 06  LDA ram_0653,X
C - - - - - 0x01B5CE 06:B5BE: F0 0D     BEQ bra_B5CD
C - - - - - 0x01B5D0 06:B5C0: 30 03     BMI bra_B5C5
C - - - - - 0x01B5D2 06:B5C2: 20 D3 B5  JSR sub_B5D3
bra_B5C5:
C - - - - - 0x01B5D5 06:B5C5: DE 4E 06  DEC ram_064E,X
C - - - - - 0x01B5D8 06:B5C8: 10 03     BPL bra_B5CD
C - - - - - 0x01B5DA 06:B5CA: 20 EC B5  JSR sub_B5EC
bra_B5CD:
C - - - - - 0x01B5DD 06:B5CD: CA        DEX
C - - - - - 0x01B5DE 06:B5CE: 10 EB     BPL bra_B5BB_loop
C - - - - - 0x01B5E0 06:B5D0: 4C 9D B9  JMP loc_B99D



sub_B5D3:
C - - - - - 0x01B5E3 06:B5D3: A9 04     LDA #$04
C - - - - - 0x01B5E5 06:B5D5: 9D 49 06  STA ram_0649,X
C - - - - - 0x01B5E8 06:B5D8: A9 00     LDA #$00
C - - - - - 0x01B5EA 06:B5DA: 9D 4E 06  STA ram_064E,X
C - - - - - 0x01B5ED 06:B5DD: BD 53 06  LDA ram_0653,X
C - - - - - 0x01B5F0 06:B5E0: 9D 44 06  STA ram_0644,X
C - - - - - 0x01B5F3 06:B5E3: DE 44 06  DEC ram_0644,X
C - - - - - 0x01B5F6 06:B5E6: 09 80     ORA #$80
C - - - - - 0x01B5F8 06:B5E8: 9D 53 06  STA ram_0653,X
C - - - - - 0x01B5FB 06:B5EB: 60        RTS



sub_B5EC:
C - - - - - 0x01B5FC 06:B5EC: BC 49 06  LDY ram_0649,X
C - - - - - 0x01B5FF 06:B5EF: 8A        TXA
C - - - - - 0x01B600 06:B5F0: D0 05     BNE bra_B5F7
C - - - - - 0x01B602 06:B5F2: B9 D9 B7  LDA tbl_B7D9,Y
C - - - - - 0x01B605 06:B5F5: D0 03     BNE bra_B5FA
bra_B5F7:
C - - - - - 0x01B607 06:B5F7: B9 DE B7  LDA tbl_B7DE,Y
bra_B5FA:
C - - - - - 0x01B60A 06:B5FA: 30 0E     BMI bra_B60A
C - - - - - 0x01B60C 06:B5FC: A8        TAY
C - - - - - 0x01B60D 06:B5FD: A9 80     LDA #con_E2E6 + $80
C - - - - - 0x01B60F 06:B5FF: 20 00 C0  JSR sub_0x01C010
C - - - - - 0x01B612 06:B602: B0 1E     BCS bra_B622
C - - - - - 0x01B614 06:B604: 20 69 B6  JSR sub_B669_disappearing_platforms
C - - - - - 0x01B617 06:B607: 4C 0D B6  JMP loc_B60D
bra_B60A:
C - - - - - 0x01B61A 06:B60A: 20 2F B6  JSR sub_B62F_disappearing_platforms
loc_B60D:
C D 1 - - - 0x01B61D 06:B60D: DE 49 06  DEC ram_0649,X
C - - - - - 0x01B620 06:B610: BC 49 06  LDY ram_0649,X
C - - - - - 0x01B623 06:B613: 30 14     BMI bra_B629
C - - - - - 0x01B625 06:B615: 8A        TXA
C - - - - - 0x01B626 06:B616: D0 05     BNE bra_B61D
C - - - - - 0x01B628 06:B618: B9 E3 B7  LDA tbl_B7E3,Y
C - - - - - 0x01B62B 06:B61B: 10 07     BPL bra_B624
bra_B61D:
C - - - - - 0x01B62D 06:B61D: B9 E7 B7  LDA tbl_B7E7,Y
C - - - - - 0x01B630 06:B620: 10 02     BPL bra_B624
bra_B622:
C - - - - - 0x01B632 06:B622: A9 00     LDA #$00
bra_B624:
C - - - - - 0x01B634 06:B624: 9D 4E 06  STA ram_064E,X
C - - - - - 0x01B637 06:B627: 10 05     BPL bra_B62E_RTS    ; jmp
bra_B629:
C - - - - - 0x01B639 06:B629: A9 00     LDA #$00
C - - - - - 0x01B63B 06:B62B: 9D 53 06  STA ram_0653,X
bra_B62E_RTS:
C - - - - - 0x01B63E 06:B62E: 60        RTS



sub_B62F_disappearing_platforms:
C - - - - - 0x01B63F 06:B62F: 86 19     STX ram_0019
C - - - - - 0x01B641 06:B631: BC 44 06  LDY ram_0644,X
C - - - - - 0x01B644 06:B634: BE EB B7  LDX tbl_B7EB,Y
C - - - - - 0x01B647 06:B637: BC ED B6  LDY tbl_B6ED,X
loc_B63A_loop:
C D 1 - - - 0x01B64A 06:B63A: B9 BF B6  LDA tbl_B6BF,Y
C - - - - - 0x01B64D 06:B63D: F0 22     BEQ bra_B661
C - - - - - 0x01B64F 06:B63F: 85 29     STA ram_0029
C - - - - - 0x01B651 06:B641: B9 C0 B6  LDA tbl_B6BF + $01,Y
C - - - - - 0x01B654 06:B644: 85 2A     STA ram_002A
C - - - - - 0x01B656 06:B646: A5 19     LDA ram_0019
C - - - - - 0x01B658 06:B648: D0 05     BNE bra_B64F
C - - - - - 0x01B65A 06:B64A: B9 C1 B6  LDA tbl_B6BF + $02,Y
C - - - - - 0x01B65D 06:B64D: D0 03     BNE bra_B652
bra_B64F:
C - - - - - 0x01B65F 06:B64F: B9 C2 B6  LDA tbl_B6BF + $03,Y
bra_B652:
C - - - - - 0x01B662 06:B652: 84 1A     STY ram_001A
C - - - - - 0x01B664 06:B654: A0 00     LDY #$00
C - - - - - 0x01B666 06:B656: 91 29     STA (ram_0029),Y
C - - - - - 0x01B668 06:B658: A9 04     LDA #$04
C - - - - - 0x01B66A 06:B65A: 18        CLC
C - - - - - 0x01B66B 06:B65B: 65 1A     ADC ram_001A
C - - - - - 0x01B66D 06:B65D: A8        TAY
C - - - - - 0x01B66E 06:B65E: 4C 3A B6  JMP loc_B63A_loop
bra_B661:
C - - - - - 0x01B671 06:B661: A9 40     LDA #$40
C - - - - - 0x01B673 06:B663: 8D B1 05  STA ram_05B1
C - - - - - 0x01B676 06:B666: A6 19     LDX ram_0019
C - - - - - 0x01B678 06:B668: 60        RTS



sub_B669_disappearing_platforms:
C - - - - - 0x01B679 06:B669: 86 29     STX ram_0029
C - - - - - 0x01B67B 06:B66B: 84 2A     STY ram_002A
C - - - - - 0x01B67D 06:B66D: BC 44 06  LDY ram_0644,X
C - - - - - 0x01B680 06:B670: BE EB B7  LDX tbl_B7EB,Y
C - - - - - 0x01B683 06:B673: BD EE B6  LDA tbl_B6ED + $01,X
C - - - - - 0x01B686 06:B676: 85 19     STA ram_0019
C - - - - - 0x01B688 06:B678: BD EF B6  LDA tbl_B6ED + $02,X
C - - - - - 0x01B68B 06:B67B: 85 1A     STA ram_001A
C - - - - - 0x01B68D 06:B67D: BD F0 B6  LDA tbl_B6ED + $03,X
C - - - - - 0x01B690 06:B680: 85 2C     STA ram_002C
C - - - - - 0x01B692 06:B682: 86 2B     STX ram_002B
C - - - - - 0x01B694 06:B684: A5 2A     LDA ram_002A
C - - - - - 0x01B696 06:B686: 18        CLC
C - - - - - 0x01B697 06:B687: 65 2B     ADC ram_002B
C - - - - - 0x01B699 06:B689: AA        TAX
C - - - - - 0x01B69A 06:B68A: BD ED B6  LDA tbl_B6ED,X
C - - - - - 0x01B69D 06:B68D: 85 1B     STA ram_001B
C - - - - - 0x01B69F 06:B68F: BD EE B6  LDA tbl_B6ED + $01,X
C - - - - - 0x01B6A2 06:B692: 85 1C     STA ram_001C
C - - - - - 0x01B6A4 06:B694: A4 2C     LDY ram_002C
C - - - - - 0x01B6A6 06:B696: A2 00     LDX #$00
C - - - - - 0x01B6A8 06:B698: 20 86 B5  JSR sub_B586
C - - - - - 0x01B6AB 06:B69B: A5 19     LDA ram_0019
C - - - - - 0x01B6AD 06:B69D: 18        CLC
C - - - - - 0x01B6AE 06:B69E: 69 20     ADC #< $0020
C - - - - - 0x01B6B0 06:B6A0: 85 19     STA ram_0019
C - - - - - 0x01B6B2 06:B6A2: A5 1A     LDA ram_001A
C - - - - - 0x01B6B4 06:B6A4: 69 00     ADC #> $0020
C - - - - - 0x01B6B6 06:B6A6: 85 1A     STA ram_001A
C - - - - - 0x01B6B8 06:B6A8: A5 1B     LDA ram_001B
C - - - - - 0x01B6BA 06:B6AA: 18        CLC
C - - - - - 0x01B6BB 06:B6AB: 69 04     ADC #< $0004
C - - - - - 0x01B6BD 06:B6AD: 85 1B     STA ram_001B
C - - - - - 0x01B6BF 06:B6AF: A5 1C     LDA ram_001C
C - - - - - 0x01B6C1 06:B6B1: 69 00     ADC #> $0004
C - - - - - 0x01B6C3 06:B6B3: 85 1C     STA ram_001C
C - - - - - 0x01B6C5 06:B6B5: A4 2C     LDY ram_002C
C - - - - - 0x01B6C7 06:B6B7: A2 00     LDX #$00
C - - - - - 0x01B6C9 06:B6B9: 20 86 B5  JSR sub_B586
C - - - - - 0x01B6CC 06:B6BC: A6 29     LDX ram_0029
C - - - - - 0x01B6CE 06:B6BE: 60        RTS



tbl_B6BF:
; offset at 0x01B6FD (each 1st byte)
; 00 (00)
- D 1 - - - 0x01B6CF 06:B6BF: 17 06     .word ram_bg_attr_buffer + $5A
- D 1 - - - 0x01B6D1 06:B6C1: FF        .byte $FF   ; 
- D 1 - - - 0x01B6D2 06:B6C2: F0        .byte $F0   ; 
- D 1 - - - 0x01B6D3 06:B6C3: 00        .byte $00   ; end token

; 05 (01)
- D 1 - - - 0x01B6D4 06:B6C4: 00        .byte $00   ; end token

; 06 (02)
- D 1 - - - 0x01B6D5 06:B6C5: 00        .byte $00   ; end token

; 07 (03)
- - - - - - 0x01B6D6 06:B6C6: 24 06     .word ram_bg_attr_buffer + $67
- - - - - - 0x01B6D8 06:B6C8: FF        .byte $FF   ; 
- - - - - - 0x01B6D9 06:B6C9: CF        .byte $CF   ; 
- - - - - - 0x01B6DA 06:B6CA: 00        .byte $00   ; end token

; 0C (04)
- - - - - - 0x01B6DB 06:B6CB: 22 06     .word ram_bg_attr_buffer + $65
- - - - - - 0x01B6DD 06:B6CD: FF        .byte $FF   ; 
- - - - - - 0x01B6DE 06:B6CE: F3        .byte $F3   ; 
- - - - - - 0x01B6DF 06:B6CF: 23 06     .word ram_bg_attr_buffer + $66
- - - - - - 0x01B6E1 06:B6D1: FF        .byte $FF   ; 
- - - - - - 0x01B6E2 06:B6D2: FC        .byte $FC   ; 
- - - - - - 0x01B6E3 06:B6D3: 00        .byte $00   ; end token

; 15 (05)
- D 1 - - - 0x01B6E4 06:B6D4: 19 06     .word ram_bg_attr_buffer + $5C
- D 1 - - - 0x01B6E6 06:B6D6: FF        .byte $FF   ; 
- D 1 - - - 0x01B6E7 06:B6D7: 0F        .byte $0F   ; 
- D 1 - - - 0x01B6E8 06:B6D8: 00        .byte $00   ; end token

; 1A (06)
- D 1 - - - 0x01B6E9 06:B6D9: 18 06     .word ram_bg_attr_buffer + $5B
- D 1 - - - 0x01B6EB 06:B6DB: FF        .byte $FF   ; 
- D 1 - - - 0x01B6EC 06:B6DC: FC        .byte $FC   ; 
- D 1 - - - 0x01B6ED 06:B6DD: 00        .byte $00   ; end token

; 1F (07)
- D 1 - - - 0x01B6EE 06:B6DE: 17 06     .word ram_bg_attr_buffer + $5A
- D 1 - - - 0x01B6F0 06:B6E0: FF        .byte $FF   ; 
- D 1 - - - 0x01B6F1 06:B6E1: FC        .byte $FC   ; 
- D 1 - - - 0x01B6F2 06:B6E2: 00        .byte $00   ; end token

; 24 (08)
- D 1 - - - 0x01B6F3 06:B6E3: 0E 06     .word ram_bg_attr_buffer + $51
- D 1 - - - 0x01B6F5 06:B6E5: FF        .byte $FF   ; 
- D 1 - - - 0x01B6F6 06:B6E6: CF        .byte $CF   ; 
- D 1 - - - 0x01B6F7 06:B6E7: 00        .byte $00   ; end token

; 29 (09)
- D 1 - - - 0x01B6F8 06:B6E8: 0F 06     .word ram_bg_attr_buffer + $52
- D 1 - - - 0x01B6FA 06:B6EA: FF        .byte $FF   ; 
- D 1 - - - 0x01B6FB 06:B6EB: F0        .byte $F0   ; 
- D 1 - - - 0x01B6FC 06:B6EC: 00        .byte $00   ; end token



tbl_B6ED:
; offset at 0x01B7FB
; 00 (00)
- D 1 - - - 0x01B6FD 06:B6ED: 00        .byte $00   ; 
- D 1 - - - 0x01B6FE 06:B6EE: 88 29     .word $2988 ; 
- D 1 - - - 0x01B700 06:B6F0: 04        .byte $04   ; 
- D 1 - - - 0x01B701 06:B6F1: 81 B7     .word off_00_B781_00
- D 1 - - - 0x01B703 06:B6F3: 79 B7     .word off_00_B779_01
- D 1 - - - 0x01B705 06:B6F5: B1 B7     .word off_00_B7B1_02
- D 1 - - - 0x01B707 06:B6F7: C1 B7     .word off_00_B7C1_03
- D 1 - - - 0x01B709 06:B6F9: D1 B7     .word off_00_B7D1_04
; 0E (01)
- D 1 - - - 0x01B70B 06:B6FB: 05        .byte $05   ; 
- D 1 - - - 0x01B70C 06:B6FC: 24 29     .word $2924 ; 
- D 1 - - - 0x01B70E 06:B6FE: 04        .byte $04   ; 
- D 1 - - - 0x01B70F 06:B6FF: 99 B7     .word off_01_B799_00
- D 1 - - - 0x01B711 06:B701: 79 B7     .word off_01_B779_01
- D 1 - - - 0x01B713 06:B703: B1 B7     .word off_01_B7B1_02
- D 1 - - - 0x01B715 06:B705: C1 B7     .word off_01_B7C1_03
- D 1 - - - 0x01B717 06:B707: D1 B7     .word off_01_B7D1_04
; 1C (02)
- D 1 - - - 0x01B719 06:B709: 06        .byte $06   ; 
- D 1 - - - 0x01B71A 06:B70A: E4 29     .word $29E4 ; 
- D 1 - - - 0x01B71C 06:B70C: 04        .byte $04   ; 
- D 1 - - - 0x01B71D 06:B70D: 99 B7     .word off_02_B799_00
- D 1 - - - 0x01B71F 06:B70F: 79 B7     .word off_02_B779_01
- D 1 - - - 0x01B721 06:B711: B1 B7     .word off_02_B7B1_02
- D 1 - - - 0x01B723 06:B713: C1 B7     .word off_02_B7C1_03
- D 1 - - - 0x01B725 06:B715: D1 B7     .word off_02_B7D1_04
; 2A (03)
- - - - - - 0x01B727 06:B717: 07        .byte $07   ; 
- - - - - - 0x01B728 06:B718: 5C 2A     .word $2A5C ; 
- - - - - - 0x01B72A 06:B71A: 02        .byte $02   ; 
- - - - - - 0x01B72B 06:B71B: A1 B7     .word off_03_B7A1_00
- - - - - - 0x01B72D 06:B71D: 79 B7     .word off_03_B779_01
- - - - - - 0x01B72F 06:B71F: A9 B7     .word off_03_B7A9_02
- - - - - - 0x01B731 06:B721: B9 B7     .word off_03_B7B9_03
- - - - - - 0x01B733 06:B723: C9 B7     .word off_03_B7C9_04
; 38 (04)
- - - - - - 0x01B735 06:B725: 0C        .byte $0C   ; 
- - - - - - 0x01B736 06:B726: 16 2A     .word $2A16 ; 
- - - - - - 0x01B738 06:B728: 04        .byte $04   ; 
- - - - - - 0x01B739 06:B729: 91 B7     .word off_04_B791_00
- - - - - - 0x01B73B 06:B72B: 79 B7     .word off_04_B779_01
- - - - - - 0x01B73D 06:B72D: B1 B7     .word off_04_B7B1_02
- - - - - - 0x01B73F 06:B72F: C1 B7     .word off_04_B7C1_03
- - - - - - 0x01B741 06:B731: D1 B7     .word off_04_B7D1_04
; 46 (05)
- D 1 - - - 0x01B743 06:B733: 15        .byte $15   ; 
- D 1 - - - 0x01B744 06:B734: D0 29     .word $29D0 ; 
- D 1 - - - 0x01B746 06:B736: 04        .byte $04   ; 
- D 1 - - - 0x01B747 06:B737: 89 B7     .word off_05_B789_00
- D 1 - - - 0x01B749 06:B739: 79 B7     .word off_05_B779_01
- D 1 - - - 0x01B74B 06:B73B: B1 B7     .word off_05_B7B1_02
- D 1 - - - 0x01B74D 06:B73D: C1 B7     .word off_05_B7C1_03
- D 1 - - - 0x01B74F 06:B73F: D1 B7     .word off_05_B7D1_04
; 54 (06)
- D 1 - - - 0x01B751 06:B741: 1A        .byte $1A   ; 
- D 1 - - - 0x01B752 06:B742: 8C 29     .word $298C ; 
- D 1 - - - 0x01B754 06:B744: 02        .byte $02   ; 
- D 1 - - - 0x01B755 06:B745: 91 B7     .word off_06_B791_00
- D 1 - - - 0x01B757 06:B747: 79 B7     .word off_06_B779_01
- D 1 - - - 0x01B759 06:B749: A9 B7     .word off_06_B7A9_02
- D 1 - - - 0x01B75B 06:B74B: B9 B7     .word off_06_B7B9_03
- D 1 - - - 0x01B75D 06:B74D: C9 B7     .word off_06_B7C9_04
; 62 (07)
- D 1 - - - 0x01B75F 06:B74F: 1F        .byte $1F   ; 
- D 1 - - - 0x01B760 06:B750: 88 29     .word $2988 ; 
- D 1 - - - 0x01B762 06:B752: 02        .byte $02   ; 
- D 1 - - - 0x01B763 06:B753: 91 B7     .word off_07_B791_00
- D 1 - - - 0x01B765 06:B755: 79 B7     .word off_07_B779_01
- D 1 - - - 0x01B767 06:B757: A9 B7     .word off_07_B7A9_02
- D 1 - - - 0x01B769 06:B759: B9 B7     .word off_07_B7B9_03
- D 1 - - - 0x01B76B 06:B75B: C9 B7     .word off_07_B7C9_04
; 70 (08)
- D 1 - - - 0x01B76D 06:B75D: 24        .byte $24   ; 
- D 1 - - - 0x01B76E 06:B75E: 42 29     .word $2942 ; 
- D 1 - - - 0x01B770 06:B760: 04        .byte $04   ; 
- D 1 - - - 0x01B771 06:B761: A1 B7     .word off_08_B7A1_00
- D 1 - - - 0x01B773 06:B763: 79 B7     .word off_08_B779_01
- D 1 - - - 0x01B775 06:B765: B1 B7     .word off_08_B7B1_02
- D 1 - - - 0x01B777 06:B767: C1 B7     .word off_08_B7C1_03
- D 1 - - - 0x01B779 06:B769: D1 B7     .word off_08_B7D1_04
; 7E (09)
- D 1 - - - 0x01B77B 06:B76B: 29        .byte $29   ; 
- D 1 - - - 0x01B77C 06:B76C: 08 29     .word $2908 ; 
- D 1 - - - 0x01B77E 06:B76E: 04        .byte $04   ; 
- D 1 - - - 0x01B77F 06:B76F: 81 B7     .word off_09_B781_00
- D 1 - - - 0x01B781 06:B771: 79 B7     .word off_09_B779_01
- D 1 - - - 0x01B783 06:B773: B1 B7     .word off_09_B7B1_02
- D 1 - - - 0x01B785 06:B775: C1 B7     .word off_09_B7C1_03
- D 1 - - - 0x01B787 06:B777: D1 B7     .word off_09_B7D1_04



off_00_B779_01:
off_01_B779_01:
off_02_B779_01:
off_03_B779_01:
off_04_B779_01:
off_05_B779_01:
off_06_B779_01:
off_07_B779_01:
off_08_B779_01:
off_09_B779_01:
- D 1 - I - 0x01B789 06:B779: 00        .byte $00   ; 
- D 1 - I - 0x01B78A 06:B77A: 00        .byte $00   ; 
- D 1 - I - 0x01B78B 06:B77B: 00        .byte $00   ; 
- D 1 - I - 0x01B78C 06:B77C: 00        .byte $00   ; 
- D 1 - I - 0x01B78D 06:B77D: 00        .byte $00   ; 
- D 1 - I - 0x01B78E 06:B77E: 00        .byte $00   ; 
- D 1 - I - 0x01B78F 06:B77F: 00        .byte $00   ; 
- D 1 - I - 0x01B790 06:B780: 00        .byte $00   ; 

off_00_B781_00:
off_09_B781_00:
- D 1 - I - 0x01B791 06:B781: 0F        .byte $0F   ; 
- D 1 - I - 0x01B792 06:B782: 0E        .byte $0E   ; 
- D 1 - I - 0x01B793 06:B783: 0D        .byte $0D   ; 
- D 1 - I - 0x01B794 06:B784: 0C        .byte $0C   ; 
- D 1 - I - 0x01B795 06:B785: 1F        .byte $1F   ; 
- D 1 - I - 0x01B796 06:B786: 1E        .byte $1E   ; 
- D 1 - I - 0x01B797 06:B787: 1D        .byte $1D   ; 
- D 1 - I - 0x01B798 06:B788: 1C        .byte $1C   ; 

off_05_B789_00:
- D 1 - I - 0x01B799 06:B789: 2F        .byte $2F   ; 
- D 1 - I - 0x01B79A 06:B78A: 2E        .byte $2E   ; 
- D 1 - I - 0x01B79B 06:B78B: 2D        .byte $2D   ; 
- D 1 - I - 0x01B79C 06:B78C: 2C        .byte $2C   ; 
- D 1 - I - 0x01B79D 06:B78D: 3F        .byte $3F   ; 
- D 1 - I - 0x01B79E 06:B78E: 3E        .byte $3E   ; 
- D 1 - I - 0x01B79F 06:B78F: 3D        .byte $3D   ; 
- D 1 - I - 0x01B7A0 06:B790: 3C        .byte $3C   ; 

off_04_B791_00:
off_06_B791_00:
off_07_B791_00:
- D 1 - I - 0x01B7A1 06:B791: 0D        .byte $0D   ; 
- D 1 - I - 0x01B7A2 06:B792: 0C        .byte $0C   ; 
- - - - - - 0x01B7A3 06:B793: 0F        .byte $0F   ; 
- - - - - - 0x01B7A4 06:B794: 0E        .byte $0E   ; 
- D 1 - I - 0x01B7A5 06:B795: 1D        .byte $1D   ; 
- D 1 - I - 0x01B7A6 06:B796: 1C        .byte $1C   ; 
- - - - - - 0x01B7A7 06:B797: 1F        .byte $1F   ; 
- - - - - - 0x01B7A8 06:B798: 1E        .byte $1E   ; 

off_01_B799_00:
off_02_B799_00:
- D 1 - I - 0x01B7A9 06:B799: AF        .byte $AF   ; 
- D 1 - I - 0x01B7AA 06:B79A: AF        .byte $AF   ; 
- D 1 - I - 0x01B7AB 06:B79B: AF        .byte $AF   ; 
- D 1 - I - 0x01B7AC 06:B79C: AF        .byte $AF   ; 
- D 1 - I - 0x01B7AD 06:B79D: AF        .byte $AF   ; 
- D 1 - I - 0x01B7AE 06:B79E: AF        .byte $AF   ; 
- D 1 - I - 0x01B7AF 06:B79F: AF        .byte $AF   ; 
- D 1 - I - 0x01B7B0 06:B7A0: AF        .byte $AF   ; 

off_03_B7A1_00:
off_08_B7A1_00:
- D 1 - I - 0x01B7B1 06:B7A1: 2D        .byte $2D   ; 
- D 1 - I - 0x01B7B2 06:B7A2: 2C        .byte $2C   ; 
- D 1 - I - 0x01B7B3 06:B7A3: AF        .byte $AF   ; 
- D 1 - I - 0x01B7B4 06:B7A4: AF        .byte $AF   ; 
- D 1 - I - 0x01B7B5 06:B7A5: 3D        .byte $3D   ; 
- D 1 - I - 0x01B7B6 06:B7A6: 3C        .byte $3C   ; 
- D 1 - I - 0x01B7B7 06:B7A7: AF        .byte $AF   ; 
- D 1 - I - 0x01B7B8 06:B7A8: AF        .byte $AF   ; 

off_03_B7A9_02:
off_06_B7A9_02:
off_07_B7A9_02:
- D 1 - I - 0x01B7B9 06:B7A9: 86        .byte $86   ; 
- D 1 - I - 0x01B7BA 06:B7AA: 84        .byte $84   ; 
- - - - - - 0x01B7BB 06:B7AB: 00        .byte $00   ; 
- - - - - - 0x01B7BC 06:B7AC: 00        .byte $00   ; 
- D 1 - I - 0x01B7BD 06:B7AD: 96        .byte $96   ; 
- D 1 - I - 0x01B7BE 06:B7AE: 94        .byte $94   ; 
- - - - - - 0x01B7BF 06:B7AF: 00        .byte $00   ; 
- - - - - - 0x01B7C0 06:B7B0: 00        .byte $00   ; 

off_00_B7B1_02:
off_01_B7B1_02:
off_02_B7B1_02:
off_04_B7B1_02:
off_05_B7B1_02:
off_08_B7B1_02:
off_09_B7B1_02:
- D 1 - I - 0x01B7C1 06:B7B1: 86        .byte $86   ; 
- D 1 - I - 0x01B7C2 06:B7B2: 85        .byte $85   ; 
- D 1 - I - 0x01B7C3 06:B7B3: 85        .byte $85   ; 
- D 1 - I - 0x01B7C4 06:B7B4: 84        .byte $84   ; 
- D 1 - I - 0x01B7C5 06:B7B5: 96        .byte $96   ; 
- D 1 - I - 0x01B7C6 06:B7B6: 95        .byte $95   ; 
- D 1 - I - 0x01B7C7 06:B7B7: 95        .byte $95   ; 
- D 1 - I - 0x01B7C8 06:B7B8: 94        .byte $94   ; 

off_03_B7B9_03:
off_06_B7B9_03:
off_07_B7B9_03:
- D 1 - I - 0x01B7C9 06:B7B9: B3        .byte $B3   ; 
- D 1 - I - 0x01B7CA 06:B7BA: A4        .byte $A4   ; 
- - - - - - 0x01B7CB 06:B7BB: 00        .byte $00   ; 
- - - - - - 0x01B7CC 06:B7BC: 00        .byte $00   ; 
- D 1 - I - 0x01B7CD 06:B7BD: C3        .byte $C3   ; 
- D 1 - I - 0x01B7CE 06:B7BE: B4        .byte $B4   ; 
- - - - - - 0x01B7CF 06:B7BF: 00        .byte $00   ; 
- - - - - - 0x01B7D0 06:B7C0: 00        .byte $00   ; 

off_00_B7C1_03:
off_01_B7C1_03:
off_02_B7C1_03:
off_04_B7C1_03:
off_05_B7C1_03:
off_08_B7C1_03:
off_09_B7C1_03:
- D 1 - I - 0x01B7D1 06:B7C1: B3        .byte $B3   ; 
- D 1 - I - 0x01B7D2 06:B7C2: A5        .byte $A5   ; 
- D 1 - I - 0x01B7D3 06:B7C3: A5        .byte $A5   ; 
- D 1 - I - 0x01B7D4 06:B7C4: A4        .byte $A4   ; 
- D 1 - I - 0x01B7D5 06:B7C5: C3        .byte $C3   ; 
- D 1 - I - 0x01B7D6 06:B7C6: B5        .byte $B5   ; 
- D 1 - I - 0x01B7D7 06:B7C7: B5        .byte $B5   ; 
- D 1 - I - 0x01B7D8 06:B7C8: B4        .byte $B4   ; 

off_03_B7C9_04:
off_06_B7C9_04:
off_07_B7C9_04:
- D 1 - I - 0x01B7D9 06:B7C9: CB        .byte $CB   ; 
- D 1 - I - 0x01B7DA 06:B7CA: C9        .byte $C9   ; 
- - - - - - 0x01B7DB 06:B7CB: 00        .byte $00   ; 
- - - - - - 0x01B7DC 06:B7CC: 00        .byte $00   ; 
- D 1 - I - 0x01B7DD 06:B7CD: CC        .byte $CC   ; 
- D 1 - I - 0x01B7DE 06:B7CE: CA        .byte $CA   ; 
- - - - - - 0x01B7DF 06:B7CF: 00        .byte $00   ; 
- - - - - - 0x01B7E0 06:B7D0: 00        .byte $00   ; 

off_00_B7D1_04:
off_01_B7D1_04:
off_02_B7D1_04:
off_04_B7D1_04:
off_05_B7D1_04:
off_08_B7D1_04:
off_09_B7D1_04:
- D 1 - I - 0x01B7E1 06:B7D1: CB        .byte $CB   ; 
- D 1 - I - 0x01B7E2 06:B7D2: 8F        .byte $8F   ; 
- D 1 - I - 0x01B7E3 06:B7D3: 8F        .byte $8F   ; 
- D 1 - I - 0x01B7E4 06:B7D4: C9        .byte $C9   ; 
- D 1 - I - 0x01B7E5 06:B7D5: CC        .byte $CC   ; 
- D 1 - I - 0x01B7E6 06:B7D6: 9F        .byte $9F   ; 
- D 1 - I - 0x01B7E7 06:B7D7: 9F        .byte $9F   ; 
- D 1 - I - 0x01B7E8 06:B7D8: CA        .byte $CA   ; 



tbl_B7D9:
- D 1 - - - 0x01B7E9 06:B7D9: 04        .byte $04   ; 00 
- D 1 - - - 0x01B7EA 06:B7DA: FF        .byte $FF   ; 01 
- D 1 - - - 0x01B7EB 06:B7DB: 06        .byte $06   ; 02 
- D 1 - - - 0x01B7EC 06:B7DC: 08        .byte $08   ; 03 
- D 1 - - - 0x01B7ED 06:B7DD: 0A        .byte $0A   ; 04 



tbl_B7DE:
- D 1 - - - 0x01B7EE 06:B7DE: 0C        .byte $0C   ; 00 
- D 1 - - - 0x01B7EF 06:B7DF: 0A        .byte $0A   ; 01 
- D 1 - - - 0x01B7F0 06:B7E0: 08        .byte $08   ; 02 
- D 1 - - - 0x01B7F1 06:B7E1: FF        .byte $FF   ; 03 
- D 1 - - - 0x01B7F2 06:B7E2: 06        .byte $06   ; 04 



tbl_B7E3:
- D 1 - - - 0x01B7F3 06:B7E3: 00        .byte $00   ; 00 
- D 1 - - - 0x01B7F4 06:B7E4: 00        .byte $00   ; 01 
- D 1 - - - 0x01B7F5 06:B7E5: 02        .byte $02   ; 02 
- D 1 - - - 0x01B7F6 06:B7E6: 02        .byte $02   ; 03 



tbl_B7E7:
- D 1 - - - 0x01B7F7 06:B7E7: 02        .byte $02   ; 00 
- D 1 - - - 0x01B7F8 06:B7E8: 02        .byte $02   ; 01 
- D 1 - - - 0x01B7F9 06:B7E9: 00        .byte $00   ; 02 
- D 1 - - - 0x01B7FA 06:B7EA: 00        .byte $00   ; 03 



tbl_B7EB:
- D 1 - - - 0x01B7FB 06:B7EB: 00        .byte $00   ; 00 
- D 1 - - - 0x01B7FC 06:B7EC: 0E        .byte $0E   ; 01 
- D 1 - - - 0x01B7FD 06:B7ED: 1C        .byte $1C   ; 02 
- - - - - - 0x01B7FE 06:B7EE: 2A        .byte $2A   ; 03 
- - - - - - 0x01B7FF 06:B7EF: 38        .byte $38   ; 04 
- D 1 - - - 0x01B800 06:B7F0: 46        .byte $46   ; 05 
- D 1 - - - 0x01B801 06:B7F1: 54        .byte $54   ; 06 
- D 1 - - - 0x01B802 06:B7F2: 62        .byte $62   ; 07 
- D 1 - - - 0x01B803 06:B7F3: 70        .byte $70   ; 08 
- D 1 - - - 0x01B804 06:B7F4: 7E        .byte $7E   ; 09 



loc_B7F5:
C D 1 - - - 0x01B805 06:B7F5: AD 22 04  LDA ram_mission_hi
C - - - - - 0x01B808 06:B7F8: C9 07     CMP #con_mission_id_07
C - - - - - 0x01B80A 06:B7FA: F0 03     BEQ bra_B7FF
C - - - - - 0x01B80C 06:B7FC: 4C F3 B8  JMP loc_B8F3
bra_B7FF:
C - - - - - 0x01B80F 06:B7FF: A2 02     LDX #$02
bra_B801_loop:
C - - - - - 0x01B811 06:B801: BD 53 06  LDA ram_0653,X
C - - - - - 0x01B814 06:B804: 30 03     BMI bra_B809
C - - - - - 0x01B816 06:B806: 20 15 B8  JSR sub_B815
bra_B809:
C - - - - - 0x01B819 06:B809: DE 4E 06  DEC ram_064E,X
C - - - - - 0x01B81C 06:B80C: 10 03     BPL bra_B811
C - - - - - 0x01B81E 06:B80E: 20 2C B8  JSR sub_B82C
bra_B811:
C - - - - - 0x01B821 06:B811: CA        DEX
C - - - - - 0x01B822 06:B812: 10 ED     BPL bra_B801_loop
C - - - - - 0x01B824 06:B814: 60        RTS



sub_B815:
C - - - - - 0x01B825 06:B815: 09 80     ORA #$80
C - - - - - 0x01B827 06:B817: 9D 53 06  STA ram_0653,X
C - - - - - 0x01B82A 06:B81A: BC F0 B8  LDY tbl_B8F0,X
C - - - - - 0x01B82D 06:B81D: B9 99 B8  LDA tbl_B899,Y
C - - - - - 0x01B830 06:B820: 9D 44 06  STA ram_0644,X
C - - - - - 0x01B833 06:B823: A9 00     LDA #$00
C - - - - - 0x01B835 06:B825: 9D 4E 06  STA ram_064E,X
C - - - - - 0x01B838 06:B828: 9D 49 06  STA ram_0649,X
C - - - - - 0x01B83B 06:B82B: 60        RTS



sub_B82C:
C - - - - - 0x01B83C 06:B82C: A9 0B     LDA #con_E2E6 + $0B
C - - - - - 0x01B83E 06:B82E: 20 00 C0  JSR sub_0x01C010
C - - - - - 0x01B841 06:B831: B0 32     BCS bra_B865
C - - - - - 0x01B843 06:B833: BC F0 B8  LDY tbl_B8F0,X
C - - - - - 0x01B846 06:B836: BD 49 06  LDA ram_0649,X
C - - - - - 0x01B849 06:B839: 85 29     STA ram_0029
C - - - - - 0x01B84B 06:B83B: 20 6B B8  JSR sub_B86B
C - - - - - 0x01B84E 06:B83E: BD 44 06  LDA ram_0644,X
C - - - - - 0x01B851 06:B841: C9 01     CMP #$01
C - - - - - 0x01B853 06:B843: D0 0E     BNE bra_B853
C - - - - - 0x01B855 06:B845: E6 29     INC ram_0029
C - - - - - 0x01B857 06:B847: E6 29     INC ram_0029
C - - - - - 0x01B859 06:B849: A5 29     LDA ram_0029
C - - - - - 0x01B85B 06:B84B: C9 08     CMP #$08
C - - - - - 0x01B85D 06:B84D: 90 0E     BCC bra_B85D
C - - - - - 0x01B85F 06:B84F: A9 00     LDA #$00
C - - - - - 0x01B861 06:B851: F0 0A     BEQ bra_B85D    ; jmp
bra_B853:
C - - - - - 0x01B863 06:B853: C6 29     DEC ram_0029
C - - - - - 0x01B865 06:B855: C6 29     DEC ram_0029
C - - - - - 0x01B867 06:B857: A5 29     LDA ram_0029
C - - - - - 0x01B869 06:B859: 10 02     BPL bra_B85D
C - - - - - 0x01B86B 06:B85B: A9 06     LDA #$06
bra_B85D:
C - - - - - 0x01B86D 06:B85D: 9D 49 06  STA ram_0649,X
C - - - - - 0x01B870 06:B860: B9 9A B8  LDA tbl_B899 + $01,Y
C - - - - - 0x01B873 06:B863: 10 02     BPL bra_B867
bra_B865:
- - - - - - 0x01B875 06:B865: A9 00     LDA #$00
bra_B867:
C - - - - - 0x01B877 06:B867: 9D 4E 06  STA ram_064E,X
C - - - - - 0x01B87A 06:B86A: 60        RTS



sub_B86B:
C - - - - - 0x01B87B 06:B86B: 86 2A     STX ram_002A
C - - - - - 0x01B87D 06:B86D: 84 2C     STY ram_002C
C - - - - - 0x01B87F 06:B86F: B9 9D B8  LDA tbl_B899 + $04,Y
C - - - - - 0x01B882 06:B872: 85 2B     STA ram_002B
C - - - - - 0x01B884 06:B874: B9 9B B8  LDA tbl_B899 + $02,Y
C - - - - - 0x01B887 06:B877: 85 19     STA ram_0019
C - - - - - 0x01B889 06:B879: B9 9C B8  LDA tbl_B899 + $03,Y
C - - - - - 0x01B88C 06:B87C: 85 1A     STA ram_001A
C - - - - - 0x01B88E 06:B87E: 98        TYA
C - - - - - 0x01B88F 06:B87F: 18        CLC
C - - - - - 0x01B890 06:B880: 65 29     ADC ram_0029
C - - - - - 0x01B892 06:B882: A8        TAY
C - - - - - 0x01B893 06:B883: B9 9E B8  LDA tbl_B899 + $05,Y
C - - - - - 0x01B896 06:B886: 85 1B     STA ram_001B
C - - - - - 0x01B898 06:B888: B9 9F B8  LDA tbl_B899 + $06,Y
C - - - - - 0x01B89B 06:B88B: 85 1C     STA ram_001C
C - - - - - 0x01B89D 06:B88D: A2 00     LDX #$00
C - - - - - 0x01B89F 06:B88F: A4 2B     LDY ram_002B
C - - - - - 0x01B8A1 06:B891: 20 86 B5  JSR sub_B586
C - - - - - 0x01B8A4 06:B894: A6 2A     LDX ram_002A
C - - - - - 0x01B8A6 06:B896: A4 2C     LDY ram_002C
C - - - - - 0x01B8A8 06:B898: 60        RTS



tbl_B899:
; 00 
- D 1 - - - 0x01B8A9 06:B899: 01        .byte $01   ; 
- D 1 - - - 0x01B8AA 06:B89A: 00        .byte $00   ; 
- D 1 - - - 0x01B8AB 06:B89B: 4A        .byte $4A   ; 
- D 1 - - - 0x01B8AC 06:B89C: 29        .byte $29   ; 
- D 1 - - - 0x01B8AD 06:B89D: 06        .byte $06   ; 
- D 1 - - - 0x01B8AE 06:B89E: C0 B8     .word _off026_B8C0_00
- D 1 - - - 0x01B8B0 06:B8A0: C6 B8     .word _off026_B8C6_01
- D 1 - - - 0x01B8B2 06:B8A2: CC B8     .word _off026_B8CC_02
- D 1 - - - 0x01B8B4 06:B8A4: D2 B8     .word _off026_B8D2_03
; 01 
- D 1 - - - 0x01B8B6 06:B8A6: 02        .byte $02   ; 
- D 1 - - - 0x01B8B7 06:B8A7: 00        .byte $00   ; 
- D 1 - - - 0x01B8B8 06:B8A8: 10        .byte $10   ; 
- D 1 - - - 0x01B8B9 06:B8A9: 2A        .byte $2A   ; 
- D 1 - - - 0x01B8BA 06:B8AA: 04        .byte $04   ; 
- D 1 - - - 0x01B8BB 06:B8AB: D8 B8     .word _off026_B8D8_04
- D 1 - - - 0x01B8BD 06:B8AD: DC B8     .word _off026_B8DC_05
- D 1 - - - 0x01B8BF 06:B8AF: E0 B8     .word _off026_B8E0_06
- D 1 - - - 0x01B8C1 06:B8B1: E4 B8     .word _off026_B8E4_07
; 02 
- D 1 - - - 0x01B8C3 06:B8B3: 01        .byte $01   ; 
- D 1 - - - 0x01B8C4 06:B8B4: 00        .byte $00   ; 
- D 1 - - - 0x01B8C5 06:B8B5: 16        .byte $16   ; 
- D 1 - - - 0x01B8C6 06:B8B6: 2A        .byte $2A   ; 
- D 1 - - - 0x01B8C7 06:B8B7: 02        .byte $02   ; 
- D 1 - - - 0x01B8C8 06:B8B8: E8 B8     .word _off026_B8E8_08
- D 1 - - - 0x01B8CA 06:B8BA: EA B8     .word _off026_B8EA_09
- D 1 - - - 0x01B8CC 06:B8BC: EC B8     .word _off026_B8EC_0A
- D 1 - - - 0x01B8CE 06:B8BE: EE B8     .word _off026_B8EE_0B



_off026_B8C0_00:
- D 1 - I - 0x01B8D0 06:B8C0: 5D        .byte $5D   ; 
- D 1 - I - 0x01B8D1 06:B8C1: 5C        .byte $5C   ; 
- D 1 - I - 0x01B8D2 06:B8C2: 5C        .byte $5C   ; 
- D 1 - I - 0x01B8D3 06:B8C3: 5C        .byte $5C   ; 
- D 1 - I - 0x01B8D4 06:B8C4: 5C        .byte $5C   ; 
- D 1 - I - 0x01B8D5 06:B8C5: 5B        .byte $5B   ; 

_off026_B8C6_01:
- D 1 - I - 0x01B8D6 06:B8C6: 6B        .byte $6B   ; 
- D 1 - I - 0x01B8D7 06:B8C7: 6A        .byte $6A   ; 
- D 1 - I - 0x01B8D8 06:B8C8: 6A        .byte $6A   ; 
- D 1 - I - 0x01B8D9 06:B8C9: 6A        .byte $6A   ; 
- D 1 - I - 0x01B8DA 06:B8CA: 6A        .byte $6A   ; 
- D 1 - I - 0x01B8DB 06:B8CB: 69        .byte $69   ; 

_off026_B8CC_02:
- D 1 - I - 0x01B8DC 06:B8CC: 7B        .byte $7B   ; 
- D 1 - I - 0x01B8DD 06:B8CD: 7A        .byte $7A   ; 
- D 1 - I - 0x01B8DE 06:B8CE: 7A        .byte $7A   ; 
- D 1 - I - 0x01B8DF 06:B8CF: 7A        .byte $7A   ; 
- D 1 - I - 0x01B8E0 06:B8D0: 7A        .byte $7A   ; 
- D 1 - I - 0x01B8E1 06:B8D1: 79        .byte $79   ; 

_off026_B8D2_03:
- D 1 - I - 0x01B8E2 06:B8D2: 8B        .byte $8B   ; 
- D 1 - I - 0x01B8E3 06:B8D3: 8A        .byte $8A   ; 
- D 1 - I - 0x01B8E4 06:B8D4: 8A        .byte $8A   ; 
- D 1 - I - 0x01B8E5 06:B8D5: 8A        .byte $8A   ; 
- D 1 - I - 0x01B8E6 06:B8D6: 8A        .byte $8A   ; 
- D 1 - I - 0x01B8E7 06:B8D7: 89        .byte $89   ; 

_off026_B8D8_04:
- D 1 - I - 0x01B8E8 06:B8D8: 5D        .byte $5D   ; 
- D 1 - I - 0x01B8E9 06:B8D9: 5C        .byte $5C   ; 
- D 1 - I - 0x01B8EA 06:B8DA: 5C        .byte $5C   ; 
- D 1 - I - 0x01B8EB 06:B8DB: 5B        .byte $5B   ; 

_off026_B8DC_05:
- D 1 - I - 0x01B8EC 06:B8DC: 6B        .byte $6B   ; 
- D 1 - I - 0x01B8ED 06:B8DD: 6A        .byte $6A   ; 
- D 1 - I - 0x01B8EE 06:B8DE: 6A        .byte $6A   ; 
- D 1 - I - 0x01B8EF 06:B8DF: 69        .byte $69   ; 

_off026_B8E0_06:
- D 1 - I - 0x01B8F0 06:B8E0: 7B        .byte $7B   ; 
- D 1 - I - 0x01B8F1 06:B8E1: 7A        .byte $7A   ; 
- D 1 - I - 0x01B8F2 06:B8E2: 7A        .byte $7A   ; 
- D 1 - I - 0x01B8F3 06:B8E3: 79        .byte $79   ; 

_off026_B8E4_07:
- D 1 - I - 0x01B8F4 06:B8E4: 8B        .byte $8B   ; 
- D 1 - I - 0x01B8F5 06:B8E5: 8A        .byte $8A   ; 
- D 1 - I - 0x01B8F6 06:B8E6: 8A        .byte $8A   ; 
- D 1 - I - 0x01B8F7 06:B8E7: 89        .byte $89   ; 

_off026_B8E8_08:
- D 1 - I - 0x01B8F8 06:B8E8: 5D        .byte $5D   ; 
- D 1 - I - 0x01B8F9 06:B8E9: 5B        .byte $5B   ; 

_off026_B8EA_09:
- D 1 - I - 0x01B8FA 06:B8EA: 6B        .byte $6B   ; 
- D 1 - I - 0x01B8FB 06:B8EB: 69        .byte $69   ; 

_off026_B8EC_0A:
- D 1 - I - 0x01B8FC 06:B8EC: 7B        .byte $7B   ; 
- D 1 - I - 0x01B8FD 06:B8ED: 79        .byte $79   ; 

_off026_B8EE_0B:
- D 1 - I - 0x01B8FE 06:B8EE: 8B        .byte $8B   ; 
- D 1 - I - 0x01B8FF 06:B8EF: 89        .byte $89   ; 



tbl_B8F0:
- D 1 - - - 0x01B900 06:B8F0: 00        .byte $00   ; 00 
- D 1 - - - 0x01B901 06:B8F1: 0D        .byte $0D   ; 01 
- D 1 - - - 0x01B902 06:B8F2: 1A        .byte $1A   ; 02 



loc_B8F3:
C D 1 - - - 0x01B903 06:B8F3: AD 22 04  LDA ram_mission_hi
C - - - - - 0x01B906 06:B8F6: C9 0E     CMP #con_mission_id_0E
C - - - - - 0x01B908 06:B8F8: F0 03     BEQ bra_B8FD
C - - - - - 0x01B90A 06:B8FA: 4C 14 B9  JMP loc_B914_RTS
bra_B8FD:
C - - - - - 0x01B90D 06:B8FD: A2 04     LDX #$04
bra_B8FF_loop:
C - - - - - 0x01B90F 06:B8FF: BD 53 06  LDA ram_0653,X
C - - - - - 0x01B912 06:B902: F0 0D     BEQ bra_B911
C - - - - - 0x01B914 06:B904: 30 03     BMI bra_B909
C - - - - - 0x01B916 06:B906: 20 15 B9  JSR sub_B915
bra_B909:
C - - - - - 0x01B919 06:B909: DE 4E 06  DEC ram_064E,X
C - - - - - 0x01B91C 06:B90C: 10 03     BPL bra_B911
C - - - - - 0x01B91E 06:B90E: 20 2B B9  JSR sub_B92B
bra_B911:
C - - - - - 0x01B921 06:B911: CA        DEX
C - - - - - 0x01B922 06:B912: 10 EB     BPL bra_B8FF_loop
loc_B914_RTS:   ; bzk optimize
C D 1 - - - 0x01B924 06:B914: 60        RTS



sub_B915:
C - - - - - 0x01B925 06:B915: 9D 44 06  STA ram_0644,X
C - - - - - 0x01B928 06:B918: DE 44 06  DEC ram_0644,X
C - - - - - 0x01B92B 06:B91B: 09 80     ORA #$80
C - - - - - 0x01B92D 06:B91D: 9D 53 06  STA ram_0653,X
C - - - - - 0x01B930 06:B920: A9 05     LDA #$05
C - - - - - 0x01B932 06:B922: 9D 49 06  STA ram_0649,X
C - - - - - 0x01B935 06:B925: A9 00     LDA #$00
C - - - - - 0x01B937 06:B927: 9D 4E 06  STA ram_064E,X
C - - - - - 0x01B93A 06:B92A: 60        RTS



sub_B92B:
; triggers during final boss fight while being outdors
C - - - - - 0x01B93B 06:B92B: A5 06     LDA ram_0006    ; con_E2E6 + $10
C - - - - - 0x01B93D 06:B92D: 20 00 C0  JSR sub_0x01C010
C - - - - - 0x01B940 06:B930: B0 4A     BCS bra_B97C
C - - - - - 0x01B942 06:B932: 86 19     STX ram_0019
C - - - - - 0x01B944 06:B934: BD 44 06  LDA ram_0644,X
C - - - - - 0x01B947 06:B937: 0A        ASL
C - - - - - 0x01B948 06:B938: A8        TAY
C - - - - - 0x01B949 06:B939: B9 83 B9  LDA tbl_B982_ppu + $01,Y
C - - - - - 0x01B94C 06:B93C: AE BC 05  LDX ram_buffer_index_2
C - - - - - 0x01B94F 06:B93F: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01B952 06:B942: E8        INX
C - - - - - 0x01B953 06:B943: B9 82 B9  LDA tbl_B982_ppu,Y
C - - - - - 0x01B956 06:B946: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01B959 06:B949: E8        INX
C - - - - - 0x01B95A 06:B94A: A9 00     LDA #$00
C - - - - - 0x01B95C 06:B94C: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01B95F 06:B94F: E8        INX
C - - - - - 0x01B960 06:B950: A9 01     LDA #$01
C - - - - - 0x01B962 06:B952: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01B965 06:B955: E8        INX
C - - - - - 0x01B966 06:B956: A4 19     LDY ram_0019
C - - - - - 0x01B968 06:B958: B9 49 06  LDA ram_0649,Y
C - - - - - 0x01B96B 06:B95B: A8        TAY
C - - - - - 0x01B96C 06:B95C: B9 92 B9  LDA tbl_B992,Y
C - - - - - 0x01B96F 06:B95F: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x01B972 06:B962: E8        INX
C - - - - - 0x01B973 06:B963: 8E BC 05  STX ram_buffer_index_2
C - - - - - 0x01B976 06:B966: A6 19     LDX ram_0019
C - - - - - 0x01B978 06:B968: 88        DEY
C - - - - - 0x01B979 06:B969: 10 07     BPL bra_B972
C - - - - - 0x01B97B 06:B96B: A9 00     LDA #$00
C - - - - - 0x01B97D 06:B96D: 9D 53 06  STA ram_0653,X
C - - - - - 0x01B980 06:B970: F0 0F     BEQ bra_B981_RTS    ; jmp
bra_B972:
C - - - - - 0x01B982 06:B972: 98        TYA
C - - - - - 0x01B983 06:B973: 9D 49 06  STA ram_0649,X
C - - - - - 0x01B986 06:B976: B9 98 B9  LDA tbl_B998,Y
C - - - - - 0x01B989 06:B979: 4C 7E B9  JMP loc_B97E
bra_B97C:
- - - - - - 0x01B98C 06:B97C: A9 00     LDA #$00
loc_B97E:
C D 1 - - - 0x01B98E 06:B97E: 9D 4E 06  STA ram_064E,X
bra_B981_RTS:
C - - - - - 0x01B991 06:B981: 60        RTS



tbl_B982_ppu:
- D 1 - - - 0x01B992 06:B982: E2 28     .word $28E2 ; 00 
- D 1 - - - 0x01B994 06:B984: 44 28     .word $2844 ; 01 
- D 1 - - - 0x01B996 06:B986: 46 29     .word $2946 ; 02 
- D 1 - - - 0x01B998 06:B988: A9 28     .word $28A9 ; 03 
- D 1 - - - 0x01B99A 06:B98A: 58 28     .word $2858 ; 04 
- D 1 - - - 0x01B99C 06:B98C: 1A 29     .word $291A ; 05 
- D 1 - - - 0x01B99E 06:B98E: 9E 28     .word $289E ; 06 
- D 1 - - - 0x01B9A0 06:B990: 7E 29     .word $297E ; 07 



tbl_B992:
- D 1 - - - 0x01B9A2 06:B992: 00        .byte $00   ; 00 
- D 1 - - - 0x01B9A3 06:B993: 4F        .byte $4F   ; 01 
- D 1 - - - 0x01B9A4 06:B994: 4E        .byte $4E   ; 02 
- D 1 - - - 0x01B9A5 06:B995: 3C        .byte $3C   ; 03 
- D 1 - - - 0x01B9A6 06:B996: 4E        .byte $4E   ; 04 
- D 1 - - - 0x01B9A7 06:B997: 4F        .byte $4F   ; 05 



tbl_B998:
- D 1 - - - 0x01B9A8 06:B998: 03        .byte $03   ; 00 
- D 1 - - - 0x01B9A9 06:B999: 03        .byte $03   ; 01 
- D 1 - - - 0x01B9AA 06:B99A: 05        .byte $05   ; 02 
- D 1 - - - 0x01B9AB 06:B99B: 03        .byte $03   ; 03 
- D 1 - - - 0x01B9AC 06:B99C: 03        .byte $03   ; 04 



loc_B99D:
C D 1 - - - 0x01B9AD 06:B99D: A2 04     LDX #$04
bra_B99F_loop:
C - - - - - 0x01B9AF 06:B99F: BD 58 06  LDA ram_0658,X
C - - - - - 0x01B9B2 06:B9A2: D0 06     BNE bra_B9AA
C - - - - - 0x01B9B4 06:B9A4: BD 3E BA  LDA tbl_BA3E,X
C - - - - - 0x01B9B7 06:B9A7: 9D 58 06  STA ram_0658,X
bra_B9AA:
C - - - - - 0x01B9BA 06:B9AA: 20 C7 B9  JSR sub_B9C7_torches
C - - - - - 0x01B9BD 06:B9AD: 90 14     BCC bra_B9C3
C - - - - - 0x01B9BF 06:B9AF: A9 80     LDA #con_E2E6 + $80
C - - - - - 0x01B9C1 06:B9B1: 20 00 C0  JSR sub_0x01C010
C - - - - - 0x01B9C4 06:B9B4: B0 0D     BCS bra_B9C3
C - - - - - 0x01B9C6 06:B9B6: 20 EB B9  JSR sub_B9EB
C - - - - - 0x01B9C9 06:B9B9: DE 58 06  DEC ram_0658,X
C - - - - - 0x01B9CC 06:B9BC: D0 05     BNE bra_B9C3
C - - - - - 0x01B9CE 06:B9BE: A9 03     LDA #$03
C - - - - - 0x01B9D0 06:B9C0: 9D 58 06  STA ram_0658,X
bra_B9C3:
C - - - - - 0x01B9D3 06:B9C3: CA        DEX
C - - - - - 0x01B9D4 06:B9C4: 10 D9     BPL bra_B99F_loop
C - - - - - 0x01B9D6 06:B9C6: 60        RTS



sub_B9C7_torches:
; stage 06 with disappearing platforms
C - - - - - 0x01B9D7 06:B9C7: 8A        TXA
C - - - - - 0x01B9D8 06:B9C8: 0A        ASL
C - - - - - 0x01B9D9 06:B9C9: A8        TAY
C - - - - - 0x01B9DA 06:B9CA: 38        SEC
C - - - - - 0x01B9DB 06:B9CB: B9 43 BA  LDA tbl_BA43_pos_X,Y
C - - - - - 0x01B9DE 06:B9CE: ED D0 00  SBC a: ram_obj_pos_X_lo_cam
C - - - - - 0x01B9E1 06:B9D1: B9 44 BA  LDA tbl_BA43_pos_X + $01,Y
C - - - - - 0x01B9E4 06:B9D4: ED D1 00  SBC a: ram_obj_pos_X_hi_cam
C - - - - - 0x01B9E7 06:B9D7: B0 10     BCS bra_B9E9
C - - - - - 0x01B9E9 06:B9D9: 38        SEC
C - - - - - 0x01B9EA 06:B9DA: B9 4D BA  LDA tbl_BA4D_pos_X,Y
C - - - - - 0x01B9ED 06:B9DD: ED D0 00  SBC a: ram_obj_pos_X_lo_cam
C - - - - - 0x01B9F0 06:B9E0: B9 4E BA  LDA tbl_BA4D_pos_X + $01,Y
C - - - - - 0x01B9F3 06:B9E3: ED D1 00  SBC a: ram_obj_pos_X_hi_cam
C - - - - - 0x01B9F6 06:B9E6: 90 01     BCC bra_B9E9
C - - - - - 0x01B9F8 06:B9E8: 60        RTS
bra_B9E9:
C - - - - - 0x01B9F9 06:B9E9: 18        CLC
C - - - - - 0x01B9FA 06:B9EA: 60        RTS



sub_B9EB:
C - - - - - 0x01B9FB 06:B9EB: 86 29     STX ram_0029
C - - - - - 0x01B9FD 06:B9ED: 8A        TXA
C - - - - - 0x01B9FE 06:B9EE: 0A        ASL
C - - - - - 0x01B9FF 06:B9EF: A8        TAY
C - - - - - 0x01BA00 06:B9F0: B9 34 BA  LDA tbl_BA34,Y
C - - - - - 0x01BA03 06:B9F3: 85 19     STA ram_0019
C - - - - - 0x01BA05 06:B9F5: B9 35 BA  LDA tbl_BA34 + $01,Y
C - - - - - 0x01BA08 06:B9F8: 85 1A     STA ram_001A
C - - - - - 0x01BA0A 06:B9FA: BD 58 06  LDA ram_0658,X
C - - - - - 0x01BA0D 06:B9FD: 0A        ASL
C - - - - - 0x01BA0E 06:B9FE: A8        TAY
C - - - - - 0x01BA0F 06:B9FF: B9 55 BA  LDA tbl_BA57 - $02,Y
C - - - - - 0x01BA12 06:BA02: 85 1B     STA ram_001B
C - - - - - 0x01BA14 06:BA04: B9 56 BA  LDA tbl_BA57 - $01,Y
C - - - - - 0x01BA17 06:BA07: 85 1C     STA ram_001C
C - - - - - 0x01BA19 06:BA09: A2 00     LDX #$00
C - - - - - 0x01BA1B 06:BA0B: A0 02     LDY #$02
C - - - - - 0x01BA1D 06:BA0D: 20 86 B5  JSR sub_B586
C - - - - - 0x01BA20 06:BA10: 18        CLC
C - - - - - 0x01BA21 06:BA11: A5 19     LDA ram_0019
C - - - - - 0x01BA23 06:BA13: 69 20     ADC #< $0020
C - - - - - 0x01BA25 06:BA15: 85 19     STA ram_0019
C - - - - - 0x01BA27 06:BA17: A5 1A     LDA ram_001A
C - - - - - 0x01BA29 06:BA19: 69 00     ADC #> $0020
C - - - - - 0x01BA2B 06:BA1B: 85 1A     STA ram_001A
C - - - - - 0x01BA2D 06:BA1D: 18        CLC
C - - - - - 0x01BA2E 06:BA1E: A5 1B     LDA ram_001B
C - - - - - 0x01BA30 06:BA20: 69 02     ADC #< $0002
C - - - - - 0x01BA32 06:BA22: 85 1B     STA ram_001B
C - - - - - 0x01BA34 06:BA24: A5 1C     LDA ram_001C
C - - - - - 0x01BA36 06:BA26: 69 00     ADC #> $0002
C - - - - - 0x01BA38 06:BA28: 85 1C     STA ram_001C
C - - - - - 0x01BA3A 06:BA2A: A2 00     LDX #$00
C - - - - - 0x01BA3C 06:BA2C: A0 02     LDY #$02
C - - - - - 0x01BA3E 06:BA2E: 20 86 B5  JSR sub_B586
C - - - - - 0x01BA41 06:BA31: A6 29     LDX ram_0029
C - - - - - 0x01BA43 06:BA33: 60        RTS



tbl_BA34:
; 00 
- D 1 - - - 0x01BA44 06:BA34: 48        .byte $48   ; 
- D 1 - - - 0x01BA45 06:BA35: 28        .byte $28   ; 
; 01 
- D 1 - - - 0x01BA46 06:BA36: 0C        .byte $0C   ; 
- D 1 - - - 0x01BA47 06:BA37: 28        .byte $28   ; 
; 02 
- D 1 - - - 0x01BA48 06:BA38: 10        .byte $10   ; 
- D 1 - - - 0x01BA49 06:BA39: 28        .byte $28   ; 
; 03 
- D 1 - - - 0x01BA4A 06:BA3A: 92        .byte $92   ; 
- D 1 - - - 0x01BA4B 06:BA3B: 28        .byte $28   ; 
; 04 
- D 1 - - - 0x01BA4C 06:BA3C: 98        .byte $98   ; 
- D 1 - - - 0x01BA4D 06:BA3D: 28        .byte $28   ; 



tbl_BA3E:
- D 1 - - - 0x01BA4E 06:BA3E: 02        .byte $02   ; 00 
- D 1 - - - 0x01BA4F 06:BA3F: 03        .byte $03   ; 01 
- D 1 - - - 0x01BA50 06:BA40: 01        .byte $01   ; 02 
- D 1 - - - 0x01BA51 06:BA41: 02        .byte $02   ; 03 
- D 1 - - - 0x01BA52 06:BA42: 02        .byte $02   ; 04 



tbl_BA43_pos_X:
; 00 
- D 1 - - - 0x01BA53 06:BA43: 50        .byte $50   ; 
- D 1 - - - 0x01BA54 06:BA44: 01        .byte $01   ; 
; 01 
- D 1 - - - 0x01BA55 06:BA45: 70        .byte $70   ; 
- D 1 - - - 0x01BA56 06:BA46: 01        .byte $01   ; 
; 02 
- D 1 - - - 0x01BA57 06:BA47: 90        .byte $90   ; 
- D 1 - - - 0x01BA58 06:BA48: 01        .byte $01   ; 
; 03 
- D 1 - - - 0x01BA59 06:BA49: A0        .byte $A0   ; 
- D 1 - - - 0x01BA5A 06:BA4A: 01        .byte $01   ; 
; 04 
- D 1 - - - 0x01BA5B 06:BA4B: D0        .byte $D0   ; 
- D 1 - - - 0x01BA5C 06:BA4C: 01        .byte $01   ; 



tbl_BA4D_pos_X:
; 00 
- D 1 - - - 0x01BA5D 06:BA4D: 40        .byte $40   ; 
- D 1 - - - 0x01BA5E 06:BA4E: 02        .byte $02   ; 
; 01 
- D 1 - - - 0x01BA5F 06:BA4F: 60        .byte $60   ; 
- D 1 - - - 0x01BA60 06:BA50: 02        .byte $02   ; 
; 02 
- D 1 - - - 0x01BA61 06:BA51: 80        .byte $80   ; 
- D 1 - - - 0x01BA62 06:BA52: 02        .byte $02   ; 
; 03 
- D 1 - - - 0x01BA63 06:BA53: 90        .byte $90   ; 
- D 1 - - - 0x01BA64 06:BA54: 02        .byte $02   ; 
; 04 
- D 1 - - - 0x01BA65 06:BA55: C0        .byte $C0   ; 
- D 1 - - - 0x01BA66 06:BA56: 02        .byte $02   ; 



tbl_BA57:
- D 1 - - - 0x01BA67 06:BA57: 5D BA     .word off_BA5D_01
- D 1 - - - 0x01BA69 06:BA59: 61 BA     .word off_BA61_02
- D 1 - - - 0x01BA6B 06:BA5B: 65 BA     .word off_BA65_03

off_BA5D_01:
- D 1 - I - 0x01BA6D 06:BA5D: 6F        .byte $6F   ; 
- D 1 - I - 0x01BA6E 06:BA5E: 6E        .byte $6E   ; 
- D 1 - I - 0x01BA6F 06:BA5F: 7F        .byte $7F   ; 
- D 1 - I - 0x01BA70 06:BA60: 7E        .byte $7E   ; 

off_BA61_02:
- D 1 - I - 0x01BA71 06:BA61: 6D        .byte $6D   ; 
- D 1 - I - 0x01BA72 06:BA62: 6C        .byte $6C   ; 
- D 1 - I - 0x01BA73 06:BA63: 7D        .byte $7D   ; 
- D 1 - I - 0x01BA74 06:BA64: 7C        .byte $7C   ; 

off_BA65_03:
- D 1 - I - 0x01BA75 06:BA65: 4D        .byte $4D   ; 
- D 1 - I - 0x01BA76 06:BA66: 4C        .byte $4C   ; 
- D 1 - I - 0x01BA77 06:BA67: 5D        .byte $5D   ; 
- D 1 - I - 0x01BA78 06:BA68: 5C        .byte $5C   ; 


; bzk garbage
- - - - - - 0x01BA79 06:BA69: 00        .byte $00, $00, $00, $00, $00, $00, $00   ; 



sub_0x01BA80:
C - - - - - 0x01BA80 06:BA70: 98        TYA
C - - - - - 0x01BA81 06:BA71: 48        PHA
C - - - - - 0x01BA82 06:BA72: 8A        TXA
C - - - - - 0x01BA83 06:BA73: 48        PHA
C - - - - - 0x01BA84 06:BA74: AD 22 04  LDA ram_mission_hi
C - - - - - 0x01BA87 06:BA77: C9 03     CMP #con_mission_id_03
C - - - - - 0x01BA89 06:BA79: D0 0E     BNE bra_BA89
C - - - - - 0x01BA8B 06:BA7B: A5 D3     LDA ram_obj_pos_Y_hi_cam
C - - - - - 0x01BA8D 06:BA7D: D0 0A     BNE bra_BA89
C - - - - - 0x01BA8F 06:BA7F: A5 D2     LDA ram_obj_pos_Y_lo_cam
C - - - - - 0x01BA91 06:BA81: D0 06     BNE bra_BA89
C - - - - - 0x01BA93 06:BA83: A5 D1     LDA ram_obj_pos_X_hi_cam
C - - - - - 0x01BA95 06:BA85: C9 03     CMP #$03
C - - - - - 0x01BA97 06:BA87: 90 03     BCC bra_BA8C
bra_BA89:
C - - - - - 0x01BA99 06:BA89: 4C 41 BB  JMP loc_BB41
bra_BA8C:
C - - - - - 0x01BA9C 06:BA8C: AD 99 03  LDA ram_0399
C - - - - - 0x01BA9F 06:BA8F: 30 19     BMI bra_BAAA
C - - - - - 0x01BAA1 06:BA91: 09 80     ORA #$80
C - - - - - 0x01BAA3 06:BA93: 8D 99 03  STA ram_0399
C - - - - - 0x01BAA6 06:BA96: A9 01     LDA #$01
C - - - - - 0x01BAA8 06:BA98: 8D A1 03  STA ram_03A1_obj
C - - - - - 0x01BAAB 06:BA9B: A9 01     LDA #$01
C - - - - - 0x01BAAD 06:BA9D: 8D A2 03  STA ram_03A1_obj + $01
C - - - - - 0x01BAB0 06:BAA0: A9 01     LDA #$01
C - - - - - 0x01BAB2 06:BAA2: 8D A3 03  STA ram_03A1_obj + $02
C - - - - - 0x01BAB5 06:BAA5: A9 01     LDA #$01
C - - - - - 0x01BAB7 06:BAA7: 8D A4 03  STA ram_03A1_obj + $03
bra_BAAA:
C - - - - - 0x01BABA 06:BAAA: A0 1F     LDY #$1F
C - - - - - 0x01BABC 06:BAAC: AD 35 04  LDA ram_difficulty
C - - - - - 0x01BABF 06:BAAF: F0 08     BEQ bra_BAB9    ; if easy
; if not easy
C - - - - - 0x01BAC1 06:BAB1: A0 1E     LDY #$1E
C - - - - - 0x01BAC3 06:BAB3: C9 01     CMP #$01
C - - - - - 0x01BAC5 06:BAB5: F0 02     BEQ bra_BAB9
C - - - - - 0x01BAC7 06:BAB7: A0 1A     LDY #$1A
bra_BAB9:
C - - - - - 0x01BAC9 06:BAB9: 84 19     STY ram_0019
C - - - - - 0x01BACB 06:BABB: A9 80     LDA #$80
C - - - - - 0x01BACD 06:BABD: D0 06     BNE bra_BAC5    ; jmp


; bzk garbage
- - - - - - 0x01BACF 06:BABF: E6 19     INC ram_0019
- - - - - - 0x01BAD1 06:BAC1: E6 19     INC ram_0019
- - - - - - 0x01BAD3 06:BAC3: E6 19     INC ram_0019



bra_BAC5:
C - - - - - 0x01BAD5 06:BAC5: EE 99 03  INC ram_0399
C - - - - - 0x01BAD8 06:BAC8: AD 99 03  LDA ram_0399
C - - - - - 0x01BADB 06:BACB: 29 7F     AND #$7F
C - - - - - 0x01BADD 06:BACD: C5 19     CMP ram_0019
C - - - - - 0x01BADF 06:BACF: 90 1F     BCC bra_BAF0
C - - - - - 0x01BAE1 06:BAD1: A9 80     LDA #$80
C - - - - - 0x01BAE3 06:BAD3: 8D 99 03  STA ram_0399
C - - - - - 0x01BAE6 06:BAD6: A2 00     LDX #$00
bra_BAD8_loop:
C - - - - - 0x01BAE8 06:BAD8: FE A1 03  INC ram_03A1_obj,X
C - - - - - 0x01BAEB 06:BADB: BD A1 03  LDA ram_03A1_obj,X
C - - - - - 0x01BAEE 06:BADE: C9 03     CMP #$03
C - - - - - 0x01BAF0 06:BAE0: 90 02     BCC bra_BAE4
C - - - - - 0x01BAF2 06:BAE2: A9 01     LDA #$01
bra_BAE4:
C - - - - - 0x01BAF4 06:BAE4: 9D 53 06  STA ram_0653,X
C - - - - - 0x01BAF7 06:BAE7: 9D A1 03  STA ram_03A1_obj,X
C - - - - - 0x01BAFA 06:BAEA: E8        INX
C - - - - - 0x01BAFB 06:BAEB: 8A        TXA
C - - - - - 0x01BAFC 06:BAEC: C9 04     CMP #$04
C - - - - - 0x01BAFE 06:BAEE: 90 E8     BCC bra_BAD8_loop
bra_BAF0:
C - - - - - 0x01BB00 06:BAF0: A2 00     LDX #$00
bra_BAF2_loop:
C - - - - - 0x01BB02 06:BAF2: BD 4B BB  LDA tbl_BB4B,X
C - - - - - 0x01BB05 06:BAF5: 85 29     STA ram_0029
C - - - - - 0x01BB07 06:BAF7: A9 02     LDA #$02
C - - - - - 0x01BB09 06:BAF9: 85 2A     STA ram_002A
C - - - - - 0x01BB0B 06:BAFB: A5 D0     LDA ram_obj_pos_X_lo_cam
C - - - - - 0x01BB0D 06:BAFD: 18        CLC
C - - - - - 0x01BB0E 06:BAFE: 69 80     ADC #< $0080
C - - - - - 0x01BB10 06:BB00: 85 2B     STA ram_002B
C - - - - - 0x01BB12 06:BB02: A5 D1     LDA ram_obj_pos_X_hi_cam
C - - - - - 0x01BB14 06:BB04: 69 00     ADC #> $0080
C - - - - - 0x01BB16 06:BB06: 85 2C     STA ram_002C
C - - - - - 0x01BB18 06:BB08: A5 2B     LDA ram_002B
C - - - - - 0x01BB1A 06:BB0A: 38        SEC
C - - - - - 0x01BB1B 06:BB0B: E5 29     SBC ram_0029
C - - - - - 0x01BB1D 06:BB0D: 85 2D     STA ram_002D
C - - - - - 0x01BB1F 06:BB0F: A5 2C     LDA ram_002C
C - - - - - 0x01BB21 06:BB11: E5 2A     SBC ram_002A
C - - - - - 0x01BB23 06:BB13: 85 2E     STA ram_002E
C - - - - - 0x01BB25 06:BB15: B0 11     BCS bra_BB28
C - - - - - 0x01BB27 06:BB17: A5 2D     LDA ram_002D
C - - - - - 0x01BB29 06:BB19: 49 FF     EOR #$FF
C - - - - - 0x01BB2B 06:BB1B: 18        CLC
C - - - - - 0x01BB2C 06:BB1C: 69 01     ADC #< $0001
C - - - - - 0x01BB2E 06:BB1E: 85 2D     STA ram_002D
C - - - - - 0x01BB30 06:BB20: A5 2E     LDA ram_002E
C - - - - - 0x01BB32 06:BB22: 49 FF     EOR #$FF
C - - - - - 0x01BB34 06:BB24: 69 00     ADC #> $0001
C - - - - - 0x01BB36 06:BB26: 85 2E     STA ram_002E
bra_BB28:
C - - - - - 0x01BB38 06:BB28: A5 2E     LDA ram_002E
C - - - - - 0x01BB3A 06:BB2A: D0 08     BNE bra_BB34
C - - - - - 0x01BB3C 06:BB2C: A5 2D     LDA ram_002D
C - - - - - 0x01BB3E 06:BB2E: C9 70     CMP #$70
C - - - - - 0x01BB40 06:BB30: B0 02     BCS bra_BB34
C - - - - - 0x01BB42 06:BB32: 90 05     BCC bra_BB39    ; jmp
bra_BB34:
C - - - - - 0x01BB44 06:BB34: A9 00     LDA #$00
C - - - - - 0x01BB46 06:BB36: 9D 53 06  STA ram_0653,X
bra_BB39:
C - - - - - 0x01BB49 06:BB39: E8        INX
C - - - - - 0x01BB4A 06:BB3A: 8A        TXA
C - - - - - 0x01BB4B 06:BB3B: C9 04     CMP #$04
C - - - - - 0x01BB4D 06:BB3D: 90 B3     BCC bra_BAF2_loop
C - - - - - 0x01BB4F 06:BB3F: B0 05     BCS bra_BB46    ; jmp
loc_BB41:
C D 1 - - - 0x01BB51 06:BB41: A9 00     LDA #$00
C - - - - - 0x01BB53 06:BB43: 8D 99 03  STA ram_0399
bra_BB46:
loc_BB46:
C D 1 - - - 0x01BB56 06:BB46: 68        PLA
C - - - - - 0x01BB57 06:BB47: AA        TAX
C - - - - - 0x01BB58 06:BB48: 68        PLA
C - - - - - 0x01BB59 06:BB49: A8        TAY
C - - - - - 0x01BB5A 06:BB4A: 60        RTS



tbl_BB4B:
- D 1 - - - 0x01BB5B 06:BB4B: 28        .byte $28   ; 00 
- D 1 - - - 0x01BB5C 06:BB4C: 48        .byte $48   ; 01 
- D 1 - - - 0x01BB5D 06:BB4D: 98        .byte $98   ; 02 
- D 1 - - - 0x01BB5E 06:BB4E: F8        .byte $F8   ; 03 



sub_BB4F:
C - - - - - 0x01BB5F 06:BB4F: 98        TYA
C - - - - - 0x01BB60 06:BB50: 48        PHA
C - - - - - 0x01BB61 06:BB51: 8A        TXA
C - - - - - 0x01BB62 06:BB52: 48        PHA
C - - - - - 0x01BB63 06:BB53: A9 00     LDA #$00
C - - - - - 0x01BB65 06:BB55: 85 19     STA ram_0019
C - - - - - 0x01BB67 06:BB57: A9 80     LDA #$80
C - - - - - 0x01BB69 06:BB59: D0 07     BNE bra_BB62    ; jmp


; bzk garbage
- - - - - - 0x01BB6B 06:BB5B: AD 35 04  LDA ram_difficulty
- - - - - - 0x01BB6E 06:BB5E: F0 E6     BEQ bra_BB46    ; if easy
; if not easy
- - - - - - 0x01BB70 06:BB60: 85 19     STA ram_0019



bra_BB62:
C - - - - - 0x01BB72 06:BB62: EE 9A 03  INC ram_039A
C - - - - - 0x01BB75 06:BB65: AD 9A 03  LDA ram_039A
C - - - - - 0x01BB78 06:BB68: C9 08     CMP #$08
C - - - - - 0x01BB7A 06:BB6A: 90 35     BCC bra_BBA1
C - - - - - 0x01BB7C 06:BB6C: A2 04     LDX #$04
bra_BB6E_loop:
C - - - - - 0x01BB7E 06:BB6E: B5 3C     LDA ram_003C_obj_flags,X ; 0040 0041 0042
C - - - - - 0x01BB80 06:BB70: 30 29     BMI bra_BB9B    ; if con_003C_flag_exist
C - - - - - 0x01BB82 06:BB72: 09 82     ORA #con_003C_flag_exist + con_003C_flag_02
C - - - - - 0x01BB84 06:BB74: 95 3C     STA ram_003C_obj_flags,X ; 0040 0041 0042
C - - - - - 0x01BB86 06:BB76: AD A5 04  LDA ram_04A5_counter
C - - - - - 0x01BB89 06:BB79: 29 03     AND #$03
C - - - - - 0x01BB8B 06:BB7B: A8        TAY
C - - - - - 0x01BB8C 06:BB7C: A5 19     LDA ram_0019
C - - - - - 0x01BB8E 06:BB7E: C9 02     CMP #$02
C - - - - - 0x01BB90 06:BB80: D0 04     BNE bra_BB86
- - - - - - 0x01BB92 06:BB82: C8        INY
- - - - - - 0x01BB93 06:BB83: C8        INY
- - - - - - 0x01BB94 06:BB84: C8        INY
- - - - - - 0x01BB95 06:BB85: C8        INY
bra_BB86:
C - - - - - 0x01BB96 06:BB86: B9 A4 BB  LDA tbl_BBA4,Y
C - - - - - 0x01BB99 06:BB89: 9D 25 03  STA ram_obj_gravity_hi,X
C - - - - - 0x01BB9C 06:BB8C: A9 1D     LDA #con_obj_1D
C - - - - - 0x01BB9E 06:BB8E: 95 BF     STA ram_obj_id,X
C - - - - - 0x01BBA0 06:BB90: A9 71     LDA #con_state_71
C - - - - - 0x01BBA2 06:BB92: 95 43     STA ram_state,X
C - - - - - 0x01BBA4 06:BB94: A9 00     LDA #$00
C - - - - - 0x01BBA6 06:BB96: 8D 9A 03  STA ram_039A
C - - - - - 0x01BBA9 06:BB99: F0 06     BEQ bra_BBA1    ; jmp
bra_BB9B:
C - - - - - 0x01BBAB 06:BB9B: E8        INX
C - - - - - 0x01BBAC 06:BB9C: 8A        TXA
C - - - - - 0x01BBAD 06:BB9D: C9 07     CMP #$07
C - - - - - 0x01BBAF 06:BB9F: 90 CD     BCC bra_BB6E_loop
bra_BBA1:
C - - - - - 0x01BBB1 06:BBA1: 4C 46 BB  JMP loc_BB46



tbl_BBA4:
- D 1 - - - 0x01BBB4 06:BBA4: FF        .byte $FF   ; 00 
- D 1 - - - 0x01BBB5 06:BBA5: FD        .byte $FD   ; 01 
- D 1 - - - 0x01BBB6 06:BBA6: FB        .byte $FB   ; 02 
- D 1 - - - 0x01BBB7 06:BBA7: FF        .byte $FF   ; 03 
- - - - - - 0x01BBB8 06:BBA8: FF        .byte $FF   ; 04 
- - - - - - 0x01BBB9 06:BBA9: FC        .byte $FC   ; 05 
- - - - - - 0x01BBBA 06:BBAA: F9        .byte $F9   ; 06 
- - - - - - 0x01BBBB 06:BBAB: FB        .byte $FB   ; 07 



sub_BBAC_tractor_steam:
C - - - - - 0x01BBBC 06:BBAC: 98        TYA
C - - - - - 0x01BBBD 06:BBAD: 48        PHA
C - - - - - 0x01BBBE 06:BBAE: 8A        TXA
C - - - - - 0x01BBBF 06:BBAF: 48        PHA
C - - - - - 0x01BBC0 06:BBB0: AD 22 04  LDA ram_mission_hi
C - - - - - 0x01BBC3 06:BBB3: C9 05     CMP #con_mission_id_05
C - - - - - 0x01BBC5 06:BBB5: D0 51     BNE bra_BC08
C - - - - - 0x01BBC7 06:BBB7: A5 D1     LDA ram_obj_pos_X_hi_cam
C - - - - - 0x01BBC9 06:BBB9: C9 03     CMP #$03
C - - - - - 0x01BBCB 06:BBBB: 90 4B     BCC bra_BC08
C - - - - - 0x01BBCD 06:BBBD: A0 21     LDY #$21
C - - - - - 0x01BBCF 06:BBBF: AD 35 04  LDA ram_difficulty
C - - - - - 0x01BBD2 06:BBC2: D0 06     BNE bra_BBCA
; if easy
C - - - - - 0x01BBD4 06:BBC4: A9 80     LDA #$80
C - - - - - 0x01BBD6 06:BBC6: F0 40     BEQ bra_BC08    ; bzk optimize, useless branch
C - - - - - 0x01BBD8 06:BBC8: D0 08     BNE bra_BBD2    ; jmp
bra_BBCA:
C - - - - - 0x01BBDA 06:BBCA: A0 2F     LDY #$2F
C - - - - - 0x01BBDC 06:BBCC: C9 01     CMP #$01
C - - - - - 0x01BBDE 06:BBCE: F0 02     BEQ bra_BBD2
C - - - - - 0x01BBE0 06:BBD0: A0 29     LDY #$29
bra_BBD2:
C - - - - - 0x01BBE2 06:BBD2: 84 19     STY ram_0019
C - - - - - 0x01BBE4 06:BBD4: EE 9B 03  INC ram_039B
C - - - - - 0x01BBE7 06:BBD7: AD 9B 03  LDA ram_039B
C - - - - - 0x01BBEA 06:BBDA: C5 19     CMP ram_0019
C - - - - - 0x01BBEC 06:BBDC: 90 2F     BCC bra_BC0D
C - - - - - 0x01BBEE 06:BBDE: AD A5 04  LDA ram_04A5_counter
C - - - - - 0x01BBF1 06:BBE1: 29 03     AND #$03
C - - - - - 0x01BBF3 06:BBE3: A8        TAY
C - - - - - 0x01BBF4 06:BBE4: B9 10 BC  LDA tbl_BC10,Y
C - - - - - 0x01BBF7 06:BBE7: AA        TAX
bra_BBE8_loop:
C - - - - - 0x01BBF8 06:BBE8: B5 3C     LDA ram_003C_obj_flags,X ; 0040 0041 0042
C - - - - - 0x01BBFA 06:BBEA: 10 06     BPL bra_BBF2    ; if not con_003C_flag_exist
C - - - - - 0x01BBFC 06:BBEC: B5 43     LDA ram_state,X
C - - - - - 0x01BBFE 06:BBEE: C9 7F     CMP #con_state_hair_grabbed
C - - - - - 0x01BC00 06:BBF0: D0 10     BNE bra_BC02
bra_BBF2:
C - - - - - 0x01BC02 06:BBF2: B5 3C     LDA ram_003C_obj_flags,X ; 0040 0041 0042
C - - - - - 0x01BC04 06:BBF4: 09 82     ORA #con_003C_flag_exist + con_003C_flag_02
C - - - - - 0x01BC06 06:BBF6: 95 3C     STA ram_003C_obj_flags,X ; 0040 0041 0042
C - - - - - 0x01BC08 06:BBF8: A9 13     LDA #con_obj_13
C - - - - - 0x01BC0A 06:BBFA: 95 BF     STA ram_obj_id,X
C - - - - - 0x01BC0C 06:BBFC: A9 73     LDA #con_state_73
C - - - - - 0x01BC0E 06:BBFE: 95 43     STA ram_state,X
C - - - - - 0x01BC10 06:BC00: D0 06     BNE bra_BC08    ; jmp
bra_BC02:
C - - - - - 0x01BC12 06:BC02: E8        INX
C - - - - - 0x01BC13 06:BC03: 8A        TXA
C - - - - - 0x01BC14 06:BC04: C9 07     CMP #$07
C - - - - - 0x01BC16 06:BC06: 90 E0     BCC bra_BBE8_loop
bra_BC08:
C - - - - - 0x01BC18 06:BC08: A9 00     LDA #$00
C - - - - - 0x01BC1A 06:BC0A: 8D 9B 03  STA ram_039B
bra_BC0D:
C - - - - - 0x01BC1D 06:BC0D: 4C C9 BC  JMP loc_BCC9



tbl_BC10:
- D 1 - - - 0x01BC20 06:BC10: 04        .byte $04   ; 00 
- D 1 - - - 0x01BC21 06:BC11: 05        .byte $05   ; 01 
- D 1 - - - 0x01BC22 06:BC12: 06        .byte $06   ; 02 
- D 1 - - - 0x01BC23 06:BC13: 04        .byte $04   ; 03 



sub_0x01BC24:
C - - - - - 0x01BC24 06:BC14: 98        TYA
C - - - - - 0x01BC25 06:BC15: 48        PHA
C - - - - - 0x01BC26 06:BC16: 8A        TXA
C - - - - - 0x01BC27 06:BC17: 48        PHA
C - - - - - 0x01BC28 06:BC18: AD 22 04  LDA ram_mission_hi
C - - - - - 0x01BC2B 06:BC1B: C9 06     CMP #con_mission_id_06
C - - - - - 0x01BC2D 06:BC1D: F0 12     BEQ bra_BC31
C - - - - - 0x01BC2F 06:BC1F: C9 02     CMP #con_mission_id_02
C - - - - - 0x01BC31 06:BC21: D0 03     BNE bra_BC26
; mission 02
C - - - - - 0x01BC33 06:BC23: 4C DA BC  JMP loc_BCDA_helicopter_green_door
bra_BC26:
C - - - - - 0x01BC36 06:BC26: A9 00     LDA #$00
C - - - - - 0x01BC38 06:BC28: 8D 9C 03  STA ram_039C
C - - - - - 0x01BC3B 06:BC2B: 8D 9D 03  STA ram_039D
C - - - - - 0x01BC3E 06:BC2E: 4C C9 BC  JMP loc_BCC9
bra_BC31:
C - - - - - 0x01BC41 06:BC31: A5 D1     LDA ram_obj_pos_X_hi_cam
C - - - - - 0x01BC43 06:BC33: C9 01     CMP #$01
C - - - - - 0x01BC45 06:BC35: 90 D6     BCC bra_BC0D
C - - - - - 0x01BC47 06:BC37: A5 D0     LDA ram_obj_pos_X_lo_cam
C - - - - - 0x01BC49 06:BC39: C9 F8     CMP #$F8
C - - - - - 0x01BC4B 06:BC3B: 90 D0     BCC bra_BC0D
C - - - - - 0x01BC4D 06:BC3D: A0 4F     LDY #$4F
C - - - - - 0x01BC4F 06:BC3F: AD 35 04  LDA ram_difficulty
C - - - - - 0x01BC52 06:BC42: D0 04     BNE bra_BC48
; if easy
C - - - - - 0x01BC54 06:BC44: A9 80     LDA #$80
C - - - - - 0x01BC56 06:BC46: F0 C5     BEQ bra_BC0D    ; bzk optimize, useless branch
bra_BC48:
C - - - - - 0x01BC58 06:BC48: A0 4F     LDY #$4F
C - - - - - 0x01BC5A 06:BC4A: C9 01     CMP #$01
C - - - - - 0x01BC5C 06:BC4C: F0 02     BEQ bra_BC50
C - - - - - 0x01BC5E 06:BC4E: A0 31     LDY #$31
bra_BC50:
C - - - - - 0x01BC60 06:BC50: 84 19     STY ram_0019
C - - - - - 0x01BC62 06:BC52: EE 9B 03  INC ram_039B
C - - - - - 0x01BC65 06:BC55: AD 9B 03  LDA ram_039B
C - - - - - 0x01BC68 06:BC58: C5 19     CMP ram_0019
C - - - - - 0x01BC6A 06:BC5A: B0 15     BCS bra_BC71
C - - - - - 0x01BC6C 06:BC5C: A2 04     LDX #$04
bra_BC5E_loop:
C - - - - - 0x01BC6E 06:BC5E: B5 3C     LDA ram_003C_obj_flags,X ; 0040 0041 0042
C - - - - - 0x01BC70 06:BC60: 10 07     BPL bra_BC69    ; if not con_003C_flag_exist
C - - - - - 0x01BC72 06:BC62: A9 0C     LDA #$0C
C - - - - - 0x01BC74 06:BC64: 8D 90 04  STA ram_pal_spr_new
C - - - - - 0x01BC77 06:BC67: D0 60     BNE bra_BCC9    ; jmp
bra_BC69:
C - - - - - 0x01BC79 06:BC69: E8        INX
C - - - - - 0x01BC7A 06:BC6A: 8A        TXA
C - - - - - 0x01BC7B 06:BC6B: C9 07     CMP #$07
C - - - - - 0x01BC7D 06:BC6D: 90 EF     BCC bra_BC5E_loop
C - - - - - 0x01BC7F 06:BC6F: B0 58     BCS bra_BCC9    ; jmp
bra_BC71:
C - - - - - 0x01BC81 06:BC71: AD A5 04  LDA ram_04A5_counter
C - - - - - 0x01BC84 06:BC74: 29 03     AND #$03
C - - - - - 0x01BC86 06:BC76: A8        TAY
C - - - - - 0x01BC87 06:BC77: B9 10 BC  LDA tbl_BC10,Y
C - - - - - 0x01BC8A 06:BC7A: AA        TAX
bra_BC7B_loop:
C - - - - - 0x01BC8B 06:BC7B: B5 3C     LDA ram_003C_obj_flags,X ; 0040 0041 0042
C - - - - - 0x01BC8D 06:BC7D: 30 3F     BMI bra_BCBE    ; if con_003C_flag_exist
C - - - - - 0x01BC8F 06:BC7F: 09 82     ORA #con_003C_flag_exist + con_003C_flag_02
C - - - - - 0x01BC91 06:BC81: 95 3C     STA ram_003C_obj_flags,X ; 0040 0041 0042
C - - - - - 0x01BC93 06:BC83: A9 18     LDA #con_obj_18
C - - - - - 0x01BC95 06:BC85: 95 BF     STA ram_obj_id,X
C - - - - - 0x01BC97 06:BC87: A9 72     LDA #con_state_72
C - - - - - 0x01BC99 06:BC89: 95 43     STA ram_state,X
C - - - - - 0x01BC9B 06:BC8B: 8A        TXA
C - - - - - 0x01BC9C 06:BC8C: 38        SEC
C - - - - - 0x01BC9D 06:BC8D: E9 04     SBC #$04
C - - - - - 0x01BC9F 06:BC8F: 0A        ASL
C - - - - - 0x01BCA0 06:BC90: 0A        ASL
C - - - - - 0x01BCA1 06:BC91: A8        TAY
C - - - - - 0x01BCA2 06:BC92: B9 CE BC  LDA tbl_BCCE_tractor_steam_config,Y
C - - - - - 0x01BCA5 06:BC95: 95 77     STA ram_obj_pos_X_lo,X
C - - - - - 0x01BCA7 06:BC97: A9 02     LDA #$02
C - - - - - 0x01BCA9 06:BC99: 95 80     STA ram_obj_pos_X_hi,X
C - - - - - 0x01BCAB 06:BC9B: C8        INY
C - - - - - 0x01BCAC 06:BC9C: B9 CE BC  LDA tbl_BCCE_tractor_steam_config,Y
C - - - - - 0x01BCAF 06:BC9F: 95 AD     STA ram_obj_pos_Z_lo,X
C - - - - - 0x01BCB1 06:BCA1: A9 00     LDA #$00
C - - - - - 0x01BCB3 06:BCA3: 95 B6     STA ram_obj_pos_Z_hi,X
C - - - - - 0x01BCB5 06:BCA5: 95 92     STA ram_obj_pos_Y_lo,X
C - - - - - 0x01BCB7 06:BCA7: 95 9B     STA ram_obj_pos_Y_hi,X
C - - - - - 0x01BCB9 06:BCA9: C8        INY
C - - - - - 0x01BCBA 06:BCAA: B9 CE BC  LDA tbl_BCCE_tractor_steam_config,Y
C - - - - - 0x01BCBD 06:BCAD: 9D 59 03  STA ram_0359_obj,X
C - - - - - 0x01BCC0 06:BCB0: C8        INY
C - - - - - 0x01BCC1 06:BCB1: B9 CE BC  LDA tbl_BCCE_tractor_steam_config,Y
C - - - - - 0x01BCC4 06:BCB4: 9D 61 03  STA ram_0361_obj,X
C - - - - - 0x01BCC7 06:BCB7: A9 0C     LDA #$0C
C - - - - - 0x01BCC9 06:BCB9: 8D 90 04  STA ram_pal_spr_new
C - - - - - 0x01BCCC 06:BCBC: D0 06     BNE bra_BCC4    ; jmp
bra_BCBE:
- - - - - - 0x01BCCE 06:BCBE: E8        INX
- - - - - - 0x01BCCF 06:BCBF: 8A        TXA
- - - - - - 0x01BCD0 06:BCC0: C9 07     CMP #$07
- - - - - - 0x01BCD2 06:BCC2: 90 B7     BCC bra_BC7B_loop
bra_BCC4:
C - - - - - 0x01BCD4 06:BCC4: A9 00     LDA #$00
C - - - - - 0x01BCD6 06:BCC6: 8D 9B 03  STA ram_039B
bra_BCC9:
loc_BCC9:
C D 1 - - - 0x01BCD9 06:BCC9: 68        PLA
C - - - - - 0x01BCDA 06:BCCA: AA        TAX
C - - - - - 0x01BCDB 06:BCCB: 68        PLA
C - - - - - 0x01BCDC 06:BCCC: A8        TAY
C - - - - - 0x01BCDD 06:BCCD: 60        RTS



tbl_BCCE_tractor_steam_config:
; 01 
- D 1 - - - 0x01BCDE 06:BCCE: 48        .byte $48   ; X_lo
- D 1 - - - 0x01BCDF 06:BCCF: D0        .byte $D0   ; Z_lo
- D 1 - - - 0x01BCE0 06:BCD0: 04        .byte con_0359_04   ; 
- D 1 - - - 0x01BCE1 06:BCD1: 00        .byte con_0361_00   ; 
; 02 
- D 1 - - - 0x01BCE2 06:BCD2: 68        .byte $68   ; X_lo
- D 1 - - - 0x01BCE3 06:BCD3: E0        .byte $E0   ; Z_lo
- D 1 - - - 0x01BCE4 06:BCD4: 03        .byte con_0359_03   ; 
- D 1 - - - 0x01BCE5 06:BCD5: 00        .byte con_0361_00   ; 
; 03 
- D 1 - - - 0x01BCE6 06:BCD6: 88        .byte $88   ; X_lo
- D 1 - - - 0x01BCE7 06:BCD7: E0        .byte $E0   ; Z_lo
- D 1 - - - 0x01BCE8 06:BCD8: 02        .byte con_0359_02   ; 
- D 1 - - - 0x01BCE9 06:BCD9: 00        .byte con_0361_00   ; 



loc_BCDA_helicopter_green_door:
C D 1 - - - 0x01BCEA 06:BCDA: AD 34 00  LDA a: ram_game_mode
C - - - - - 0x01BCED 06:BCDD: 29 20     AND #con_gm_20
C - - - - - 0x01BCEF 06:BCDF: D0 E8     BNE bra_BCC9
C - - - - - 0x01BCF1 06:BCE1: AD 24 04  LDA ram_mission_script
C - - - - - 0x01BCF4 06:BCE4: C9 08     CMP #con_884D_script_08
C - - - - - 0x01BCF6 06:BCE6: F0 33     BEQ bra_BD1B
C - - - - - 0x01BCF8 06:BCE8: C9 81     CMP #con_884D_script_81
C - - - - - 0x01BCFA 06:BCEA: F0 2F     BEQ bra_BD1B
C - - - - - 0x01BCFC 06:BCEC: AD A5 04  LDA ram_04A5_counter
C - - - - - 0x01BCFF 06:BCEF: C9 40     CMP #$40
C - - - - - 0x01BD01 06:BCF1: B0 28     BCS bra_BD1B
C - - - - - 0x01BD03 06:BCF3: AD 9D 03  LDA ram_039D
C - - - - - 0x01BD06 06:BCF6: F0 23     BEQ bra_BD1B
C - - - - - 0x01BD08 06:BCF8: C9 81     CMP #$81
C - - - - - 0x01BD0A 06:BCFA: F0 CD     BEQ bra_BCC9
C - - - - - 0x01BD0C 06:BCFC: A9 81     LDA #$81
C - - - - - 0x01BD0E 06:BCFE: 8D 9D 03  STA ram_039D
C - - - - - 0x01BD11 06:BD01: A9 83     LDA #con_A6C3_draw_heli_green_door + $80
C - - - - - 0x01BD13 06:BD03: 8D 80 04  STA ram_0480
C - - - - - 0x01BD16 06:BD06: AD 81 04  LDA ram_0481
C - - - - - 0x01BD19 06:BD09: 09 80     ORA #$80
C - - - - - 0x01BD1B 06:BD0B: 8D 81 04  STA ram_0481
C - - - - - 0x01BD1E 06:BD0E: A9 FF     LDA #$FF
C - - - - - 0x01BD20 06:BD10: 8D 9C 03  STA ram_039C
C - - - - - 0x01BD23 06:BD13: A9 51     LDA #con_sfx_helicopter_3
C - - - - - 0x01BD25 06:BD15: 20 10 FC  JSR sub_0x01FC20_play_sound
C - - - - - 0x01BD28 06:BD18: 4C C9 BC  JMP loc_BCC9
bra_BD1B:
C - - - - - 0x01BD2B 06:BD1B: AD 9D 03  LDA ram_039D
C - - - - - 0x01BD2E 06:BD1E: C9 82     CMP #$82
C - - - - - 0x01BD30 06:BD20: F0 A7     BEQ bra_BCC9
C - - - - - 0x01BD32 06:BD22: A9 82     LDA #$82
C - - - - - 0x01BD34 06:BD24: 8D 9D 03  STA ram_039D
C - - - - - 0x01BD37 06:BD27: A9 83     LDA #con_A6C3_draw_heli_green_door + $80
C - - - - - 0x01BD39 06:BD29: 8D 80 04  STA ram_0480
C - - - - - 0x01BD3C 06:BD2C: AD 81 04  LDA ram_0481
C - - - - - 0x01BD3F 06:BD2F: 29 7F     AND #$7F
C - - - - - 0x01BD41 06:BD31: 8D 81 04  STA ram_0481
C - - - - - 0x01BD44 06:BD34: A9 50     LDA #con_sfx_helicopter_2
C - - - - - 0x01BD46 06:BD36: 20 10 FC  JSR sub_0x01FC20_play_sound
C - - - - - 0x01BD49 06:BD39: A9 00     LDA #$00
C - - - - - 0x01BD4B 06:BD3B: 8D 9C 03  STA ram_039C
C - - - - - 0x01BD4E 06:BD3E: 4C C9 BC  JMP loc_BCC9



sub_0x01BD51:
C - - - - - 0x01BD51 06:BD41: 98        TYA
C - - - - - 0x01BD52 06:BD42: 48        PHA
C - - - - - 0x01BD53 06:BD43: 8A        TXA
C - - - - - 0x01BD54 06:BD44: 48        PHA
C - - - - - 0x01BD55 06:BD45: AD 22 04  LDA ram_mission_hi
C - - - - - 0x01BD58 06:BD48: C9 09     CMP #con_mission_id_09
C - - - - - 0x01BD5A 06:BD4A: F0 4E     BEQ bra_BD9A
C - - - - - 0x01BD5C 06:BD4C: C9 06     CMP #con_mission_id_06
C - - - - - 0x01BD5E 06:BD4E: D0 03     BNE bra_BD53
C - - - - - 0x01BD60 06:BD50: 4C 12 BE  JMP loc_BE12_big_eyes_on_bg
bra_BD53:
C - - - - - 0x01BD63 06:BD53: C9 0E     CMP #$0E
C - - - - - 0x01BD65 06:BD55: D0 36     BNE bra_BD8D
C - - - - - 0x01BD67 06:BD57: AD F9 00  LDA a: ram_00F9
C - - - - - 0x01BD6A 06:BD5A: D0 24     BNE bra_BD80
C - - - - - 0x01BD6C 06:BD5C: AD A5 04  LDA ram_04A5_counter
C - - - - - 0x01BD6F 06:BD5F: 29 07     AND #$07
C - - - - - 0x01BD71 06:BD61: 18        CLC
C - - - - - 0x01BD72 06:BD62: 69 01     ADC #$01
C - - - - - 0x01BD74 06:BD64: A8        TAY
C - - - - - 0x01BD75 06:BD65: A2 00     LDX #$00
bra_BD67_loop:
C - - - - - 0x01BD77 06:BD67: BD 53 06  LDA ram_0653,X
C - - - - - 0x01BD7A 06:BD6A: D0 0C     BNE bra_BD78
C - - - - - 0x01BD7C 06:BD6C: 98        TYA
C - - - - - 0x01BD7D 06:BD6D: 9D 53 06  STA ram_0653,X
C - - - - - 0x01BD80 06:BD70: C8        INY
C - - - - - 0x01BD81 06:BD71: 98        TYA
C - - - - - 0x01BD82 06:BD72: C9 09     CMP #$09
C - - - - - 0x01BD84 06:BD74: 90 02     BCC bra_BD78
C - - - - - 0x01BD86 06:BD76: A0 00     LDY #$00
bra_BD78:
C - - - - - 0x01BD88 06:BD78: E8        INX
C - - - - - 0x01BD89 06:BD79: 8A        TXA
C - - - - - 0x01BD8A 06:BD7A: C9 05     CMP #$05
C - - - - - 0x01BD8C 06:BD7C: 90 E9     BCC bra_BD67_loop
C - - - - - 0x01BD8E 06:BD7E: B0 0D     BCS bra_BD8D    ; jmp
bra_BD80:
C - - - - - 0x01BD90 06:BD80: A2 00     LDX #$00
bra_BD82_loop:
C - - - - - 0x01BD92 06:BD82: A9 00     LDA #$00
C - - - - - 0x01BD94 06:BD84: 9D 53 06  STA ram_0653,X
C - - - - - 0x01BD97 06:BD87: E8        INX
C - - - - - 0x01BD98 06:BD88: 8A        TXA
C - - - - - 0x01BD99 06:BD89: C9 05     CMP #$05
C - - - - - 0x01BD9B 06:BD8B: 90 F5     BCC bra_BD82_loop
bra_BD8D:
loc_BD8D:
C D 1 - - - 0x01BD9D 06:BD8D: 68        PLA
C - - - - - 0x01BD9E 06:BD8E: AA        TAX
C - - - - - 0x01BD9F 06:BD8F: 68        PLA
C - - - - - 0x01BDA0 06:BD90: A8        TAY
C - - - - - 0x01BDA1 06:BD91: 60        RTS
bra_BD92:
loc_BD92:
C D 1 - - - 0x01BDA2 06:BD92: A9 12     LDA #$12
C - - - - - 0x01BDA4 06:BD94: 8D 90 04  STA ram_pal_spr_new
C - - - - - 0x01BDA7 06:BD97: 4C 8D BD  JMP loc_BD8D
bra_BD9A:
C - - - - - 0x01BDAA 06:BD9A: A2 04     LDX #$04
bra_BD9C_loop:
C - - - - - 0x01BDAC 06:BD9C: B5 3C     LDA ram_003C_obj_flags,X ; 0040 0041 0042
C - - - - - 0x01BDAE 06:BD9E: 30 F2     BMI bra_BD92    ; if con_003C_flag_exist
C - - - - - 0x01BDB0 06:BDA0: E8        INX
C - - - - - 0x01BDB1 06:BDA1: 8A        TXA
C - - - - - 0x01BDB2 06:BDA2: C9 07     CMP #$07
C - - - - - 0x01BDB4 06:BDA4: 90 F6     BCC bra_BD9C_loop
C - - - - - 0x01BDB6 06:BDA6: A0 29     LDY #$29
C - - - - - 0x01BDB8 06:BDA8: AD 35 04  LDA ram_difficulty
C - - - - - 0x01BDBB 06:BDAB: D0 06     BNE bra_BDB3
; if easy
C - - - - - 0x01BDBD 06:BDAD: A9 80     LDA #$80
C - - - - - 0x01BDBF 06:BDAF: F0 DC     BEQ bra_BD8D    ; bzk optimize, useless branch
C - - - - - 0x01BDC1 06:BDB1: D0 08     BNE bra_BDBB    ; jmp
bra_BDB3:
C - - - - - 0x01BDC3 06:BDB3: A0 29     LDY #$29
C - - - - - 0x01BDC5 06:BDB5: C9 01     CMP #$01
C - - - - - 0x01BDC7 06:BDB7: F0 02     BEQ bra_BDBB
C - - - - - 0x01BDC9 06:BDB9: A0 0B     LDY #$0B
bra_BDBB:
C - - - - - 0x01BDCB 06:BDBB: 84 19     STY ram_0019
C - - - - - 0x01BDCD 06:BDBD: EE 9E 03  INC ram_039E
C - - - - - 0x01BDD0 06:BDC0: AD 9E 03  LDA ram_039E
C - - - - - 0x01BDD3 06:BDC3: C5 19     CMP ram_0019
C - - - - - 0x01BDD5 06:BDC5: 90 C6     BCC bra_BD8D
C - - - - - 0x01BDD7 06:BDC7: A9 00     LDA #$00
C - - - - - 0x01BDD9 06:BDC9: 8D 9E 03  STA ram_039E
C - - - - - 0x01BDDC 06:BDCC: A2 04     LDX #$04
bra_BDCE_loop:
C - - - - - 0x01BDDE 06:BDCE: B5 3C     LDA ram_003C_obj_flags,X ; 0040
C - - - - - 0x01BDE0 06:BDD0: 30 32     BMI bra_BE04    ; if con_003C_flag_exist
C - - - - - 0x01BDE2 06:BDD2: 09 82     ORA #con_003C_flag_exist + con_003C_flag_02
C - - - - - 0x01BDE4 06:BDD4: 95 3C     STA ram_003C_obj_flags,X ; 0040
C - - - - - 0x01BDE6 06:BDD6: A9 1B     LDA #con_obj_jumping_spike
C - - - - - 0x01BDE8 06:BDD8: 95 BF     STA ram_obj_id,X
C - - - - - 0x01BDEA 06:BDDA: A9 69     LDA #con_state_69
C - - - - - 0x01BDEC 06:BDDC: 95 43     STA ram_state,X
C - - - - - 0x01BDEE 06:BDDE: A9 00     LDA #$00
C - - - - - 0x01BDF0 06:BDE0: 95 92     STA ram_obj_pos_Y_lo,X
C - - - - - 0x01BDF2 06:BDE2: 95 9B     STA ram_obj_pos_Y_hi,X
C - - - - - 0x01BDF4 06:BDE4: 95 B6     STA ram_obj_pos_Z_hi,X
C - - - - - 0x01BDF6 06:BDE6: 95 80     STA ram_obj_pos_X_hi,X
C - - - - - 0x01BDF8 06:BDE8: A9 30     LDA #$30
C - - - - - 0x01BDFA 06:BDEA: 95 AD     STA ram_obj_pos_Z_lo,X
C - - - - - 0x01BDFC 06:BDEC: EE 9F 03  INC ram_039F
C - - - - - 0x01BDFF 06:BDEF: AD 9F 03  LDA ram_039F
C - - - - - 0x01BE02 06:BDF2: C9 05     CMP #$05
C - - - - - 0x01BE04 06:BDF4: 90 05     BCC bra_BDFB
C - - - - - 0x01BE06 06:BDF6: A9 00     LDA #$00
C - - - - - 0x01BE08 06:BDF8: 8D 9F 03  STA ram_039F
bra_BDFB:
C - - - - - 0x01BE0B 06:BDFB: A8        TAY
C - - - - - 0x01BE0C 06:BDFC: B9 0D BE  LDA tbl_BE0D_pos_X_lo,Y
C - - - - - 0x01BE0F 06:BDFF: 95 77     STA ram_obj_pos_X_lo,X
C - - - - - 0x01BE11 06:BE01: 4C 92 BD  JMP loc_BD92
bra_BE04:
- - - - - - 0x01BE14 06:BE04: E8        INX
- - - - - - 0x01BE15 06:BE05: 8A        TXA
- - - - - - 0x01BE16 06:BE06: C9 07     CMP #$07
- - - - - - 0x01BE18 06:BE08: 90 C4     BCC bra_BDCE_loop
- - - - - - 0x01BE1A 06:BE0A: 4C 8D BD  JMP loc_BD8D



tbl_BE0D_pos_X_lo:
- D 1 - - - 0x01BE1D 06:BE0D: 68        .byte $68   ; 00 
- D 1 - - - 0x01BE1E 06:BE0E: 48        .byte $48   ; 01 
- D 1 - - - 0x01BE1F 06:BE0F: 88        .byte $88   ; 02 
- D 1 - - - 0x01BE20 06:BE10: C8        .byte $C8   ; 03 
- D 1 - - - 0x01BE21 06:BE11: A8        .byte $A8   ; 04 



loc_BE12_big_eyes_on_bg:
C D 1 - - - 0x01BE22 06:BE12: A5 D1     LDA ram_obj_pos_X_hi_cam
C - - - - - 0x01BE24 06:BE14: D0 2C     BNE bra_BE42
C - - - - - 0x01BE26 06:BE16: A5 D0     LDA ram_obj_pos_X_lo_cam
C - - - - - 0x01BE28 06:BE18: C9 FF     CMP #$FF
C - - - - - 0x01BE2A 06:BE1A: D0 26     BNE bra_BE42
C - - - - - 0x01BE2C 06:BE1C: AD A5 04  LDA ram_04A5_counter
C - - - - - 0x01BE2F 06:BE1F: F0 14     BEQ bra_BE35
C - - - - - 0x01BE31 06:BE21: C9 80     CMP #$80
C - - - - - 0x01BE33 06:BE23: D0 1D     BNE bra_BE42
C - - - - - 0x01BE35 06:BE25: A9 8B     LDA #con_A6C3_draw_big_eyes + $80
C - - - - - 0x01BE37 06:BE27: 8D 80 04  STA ram_0480
C - - - - - 0x01BE3A 06:BE2A: AD 81 04  LDA ram_0481
C - - - - - 0x01BE3D 06:BE2D: 29 7F     AND #$7F
C - - - - - 0x01BE3F 06:BE2F: 8D 81 04  STA ram_0481
C - - - - - 0x01BE42 06:BE32: 4C 42 BE  JMP loc_BE42
bra_BE35:
C - - - - - 0x01BE45 06:BE35: A9 8B     LDA #con_A6C3_draw_big_eyes + $80
C - - - - - 0x01BE47 06:BE37: 8D 80 04  STA ram_0480
C - - - - - 0x01BE4A 06:BE3A: AD 81 04  LDA ram_0481
C - - - - - 0x01BE4D 06:BE3D: 09 80     ORA #$80
C - - - - - 0x01BE4F 06:BE3F: 8D 81 04  STA ram_0481
bra_BE42:
loc_BE42:
C D 1 - - - 0x01BE52 06:BE42: 4C 8D BD  JMP loc_BD8D


; bzk garbage
- - - - - - 0x01BE55 06:BE45: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01BE60 06:BE50: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01BE70 06:BE60: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01BE80 06:BE70: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01BE90 06:BE80: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01BEA0 06:BE90: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01BEB0 06:BEA0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01BEC0 06:BEB0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01BED0 06:BEC0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01BEE0 06:BED0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01BEF0 06:BEE0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01BF00 06:BEF0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01BF10 06:BF00: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01BF20 06:BF10: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01BF30 06:BF20: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01BF40 06:BF30: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01BF50 06:BF40: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01BF60 06:BF50: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01BF70 06:BF60: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01BF80 06:BF70: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01BF90 06:BF80: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01BFA0 06:BF90: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01BFB0 06:BFA0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01BFC0 06:BFB0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01BFD0 06:BFC0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01BFE0 06:BFD0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01BFF0 06:BFE0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01C000 06:BFF0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 



.out .sprintf("Free bytes in bank 06: 0x%04X [%d]", ($BFFF - *), ($BFFF - *))



.segment "BANK_06_ID"
- D 1 - - - 0x01C00F 06:BFFF: 06        .byte con_prg_bank + $06   ; 



