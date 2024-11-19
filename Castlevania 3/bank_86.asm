.segment "BANK_86"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x00C010-0x00E00F



.export ofs_042_0x00C014_08
.export ofs_042_0x00C030_0E_RTS     ; bzk most likely unused export
.export ofs_042_0x00C030_14_RTS     ; bzk most likely unused export
.export ofs_042_0x00C030_15_RTS     ; bzk most likely unused export
.export ofs_042_0x00C030_1D_RTS     ; bzk most likely unused export
.export ofs_042_0x00C030_1E_RTS     ; bzk most likely unused export
.export ofs_042_0x00C030_23_RTS     ; bzk most likely unused export
.export ofs_042_0x00C030_27_RTS     ; bzk most likely unused export
.export ofs_042_0x00C030_2A_RTS     ; bzk most likely unused export
.export ofs_042_0x00C031_08
.export ofs_042_0x00C240_18     ; bzk most likely unused export
.export ofs_042_0x00C240_19     ; bzk most likely unused export
.export ofs_042_0x00C240_1B     ; bzk most likely unused export
.export ofs_042_0x00C240_1C     ; bzk most likely unused export
.export ofs_042_0x00C426_1B_dragon_breathes_fire
.export ofs_042_0x00C4DA_1C
.export ofs_042_0x00C52A_09
.export ofs_042_0x00CA44_09
.export ofs_042_0x00CA4F_0E
.export ofs_042_0x00CC12_27
.export ofs_042_0x00CDB2_23
.export ofs_042_0x00CDE7_03
.export ofs_042_0x00CE22_03
.export ofs_042_0x00D285_14
.export ofs_042_0x00D2C9_15
.export ofs_042_0x00D32B_07
.export ofs_042_0x00D38C_07
.export ofs_042_0x00D4CB_18
.export ofs_042_0x00D4E4_19
.export ofs_042_0x00D51F_0A
.export ofs_042_0x00D69F_0A
.export ofs_042_0x00D87A_1D
.export ofs_042_0x00D8FA_1E
.export ofs_042_0x00D9CE_0C
.export ofs_042_0x00DA24_0C
.export ofs_042_0x00DD06_2B



; bzk bank id, must be located at 8000 in each bank
- D 0 - - - 0x00C010 03:8000: 86        .byte con_prg_bank + $86   ; 



bra_8001:
C - - - - - 0x00C011 03:8001: 4C 4A 83  JMP loc_834A



ofs_042_0x00C014_08:
C - - J - - 0x00C014 03:8004: A5 78     LDA ram_0078_flag
C - - - - - 0x00C016 03:8006: D0 06     BNE bra_800E
C - - - - - 0x00C018 03:8008: A9 98     LDA #con_obj_flag_08 + con_obj_flag_10 + con_obj_flag_not_visible
C - - - - - 0x00C01A 03:800A: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x00C01D 03:800D: 60        RTS
bra_800E:
C - - - - - 0x00C01E 03:800E: A9 00     LDA #$00
C - - - - - 0x00C020 03:8010: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x00C023 03:8013: AD F3 07  LDA ram_07F3
C - - - - - 0x00C026 03:8016: 29 7F     AND #$7F
C - - - - - 0x00C028 03:8018: 8D F3 07  STA ram_07F3
C - - - - - 0x00C02B 03:801B: A9 40     LDA #con_obj_flag_40
C - - - - - 0x00C02D 03:801D: 9D 70 04  STA ram_obj_flags,X
; bzk most likely unused exports
ofs_042_0x00C030_0E_RTS:
ofs_042_0x00C030_14_RTS:
ofs_042_0x00C030_15_RTS:
ofs_042_0x00C030_1D_RTS:
ofs_042_0x00C030_1E_RTS:
ofs_042_0x00C030_23_RTS:
ofs_042_0x00C030_27_RTS:
ofs_042_0x00C030_2A_RTS:
C - - - - - 0x00C030 03:8020: 60        RTS



ofs_042_0x00C031_08:
C - - J - - 0x00C031 03:8021: A9 08     LDA #$08
C - - - - - 0x00C033 03:8023: 85 BA     STA ram_00BA
C - - - - - 0x00C035 03:8025: A9 06     LDA #$06
C - - - - - 0x00C037 03:8027: 85 BB     STA ram_00BB
C - - - - - 0x00C039 03:8029: 20 3B 99  JSR sub_993B
C - - - - - 0x00C03C 03:802C: BC 06 06  LDY ram_obj_config,X
C - - - - - 0x00C03F 03:802F: 30 D0     BMI bra_8001
C - - - - - 0x00C041 03:8031: AD F1 07  LDA ram_07F1
C - - - - - 0x00C044 03:8034: 29 0C     AND #$0C
C - - - - - 0x00C046 03:8036: C9 0C     CMP #$0C
C - - - - - 0x00C048 03:8038: D0 12     BNE bra_804C
C - - - - - 0x00C04A 03:803A: A9 50     LDA #$50    ; 5000
C - - - - - 0x00C04C 03:803C: 20 78 99  JSR sub_9978_add_points_to_score
C - - - - - 0x00C04F 03:803F: A9 02     LDA #$02
C - - - - - 0x00C051 03:8041: 8D F3 07  STA ram_07F3
C - - - - - 0x00C054 03:8044: A9 00     LDA #$00
C - - - - - 0x00C056 03:8046: 20 56 99  JSR sub_9956
C - - - - - 0x00C059 03:8049: 4C 52 99  JMP loc_9952
bra_804C:
C - - - - - 0x00C05C 03:804C: BC 45 06  LDY ram_obj_0646,X
C - - - - - 0x00C05F 03:804F: B9 38 81  LDA tbl_8138,Y
C - - - - - 0x00C062 03:8052: 85 00     STA ram_0000_temp
; bzk optimize, useless LDA
C - - - - - 0x00C064 03:8054: A5 00     LDA ram_0000_temp
C - - - - - 0x00C066 03:8056: 2D F1 07  AND ram_07F1
C - - - - - 0x00C069 03:8059: F0 03     BEQ bra_805E
C - - - - - 0x00C06B 03:805B: 4C 52 99  JMP loc_9952
bra_805E:
C - - - - - 0x00C06E 03:805E: BD 45 06  LDA ram_obj_0646,X
C - - - - - 0x00C071 03:8061: 18        CLC
C - - - - - 0x00C072 03:8062: 69 01     ADC #$01
C - - - - - 0x00C074 03:8064: 2D F1 07  AND ram_07F1
C - - - - - 0x00C077 03:8067: F0 6E     BEQ bra_80D7
C - - - - - 0x00C079 03:8069: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x00C07C 03:806C: F0 23     BEQ bra_8091
C - - - - - 0x00C07E 03:806E: BD D8 05  LDA ram_05D8_obj,X
C - - - - - 0x00C081 03:8071: C9 20     CMP #$20
C - - - - - 0x00C083 03:8073: 90 18     BCC bra_808D
C - - - - - 0x00C085 03:8075: BD 45 06  LDA ram_obj_0646,X
C - - - - - 0x00C088 03:8078: 0A        ASL
C - - - - - 0x00C089 03:8079: A8        TAY
C - - - - - 0x00C08A 03:807A: A9 FE     LDA #$FE
C - - - - - 0x00C08C 03:807C: 99 ED 07  STA ram_07ED,Y
C - - - - - 0x00C08F 03:807F: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x00C092 03:8082: 99 EE 07  STA ram_07EE,Y
C - - - - - 0x00C095 03:8085: DE 1D 06  DEC ram_061D_obj,X
C - - - - - 0x00C098 03:8088: A9 00     LDA #$00
C - - - - - 0x00C09A 03:808A: 9D D8 05  STA ram_05D8_obj,X
bra_808D:
C - - - - - 0x00C09D 03:808D: FE D8 05  INC ram_05D8_obj,X
C - - - - - 0x00C0A0 03:8090: 60        RTS
bra_8091:
C - - - - - 0x00C0A1 03:8091: BD EF 05  LDA ram_05EF_obj,X
C - - - - - 0x00C0A4 03:8094: 29 7F     AND #$7F
C - - - - - 0x00C0A6 03:8096: C9 35     CMP #$35
C - - - - - 0x00C0A8 03:8098: B0 09     BCS bra_80A3
C - - - - - 0x00C0AA 03:809A: A9 35     LDA #$35
C - - - - - 0x00C0AC 03:809C: 18        CLC
C - - - - - 0x00C0AD 03:809D: 7D 45 06  ADC ram_obj_0646,X
C - - - - - 0x00C0B0 03:80A0: 4C 4C 99  JMP loc_994C
bra_80A3:
C - - - - - 0x00C0B3 03:80A3: 85 00     STA ram_0000_t0BF
C - - - - - 0x00C0B5 03:80A5: A9 35     LDA #$35
C - - - - - 0x00C0B7 03:80A7: 18        CLC
C - - - - - 0x00C0B8 03:80A8: 7D 45 06  ADC ram_obj_0646,X
C - - - - - 0x00C0BB 03:80AB: C5 00     CMP ram_0000_t0BF
C - - - - - 0x00C0BD 03:80AD: D0 14     BNE bra_80C3
C - - - - - 0x00C0BF 03:80AF: BD C1 05  LDA ram_05C1_obj,X
C - - - - - 0x00C0C2 03:80B2: C9 01     CMP #$01
C - - - - - 0x00C0C4 03:80B4: D0 0D     BNE bra_80C3
C - - - - - 0x00C0C6 03:80B6: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x00C0C9 03:80B9: C9 C0     CMP #$C0
C - - - - - 0x00C0CB 03:80BB: 90 06     BCC bra_80C3
C - - - - - 0x00C0CD 03:80BD: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x00C0D0 03:80C0: 4C C8 FE  JMP loc_0x03FED8_clear_speed
bra_80C3:
C - - - - - 0x00C0D3 03:80C3: BD C1 05  LDA ram_05C1_obj,X
C - - - - - 0x00C0D6 03:80C6: C9 11     CMP #$11
C - - - - - 0x00C0D8 03:80C8: D0 0C     BNE bra_80D6_RTS
C - - - - - 0x00C0DA 03:80CA: BC 45 06  LDY ram_obj_0646,X
C - - - - - 0x00C0DD 03:80CD: B9 38 81  LDA tbl_8138,Y
C - - - - - 0x00C0E0 03:80D0: 0D F1 07  ORA ram_07F1
C - - - - - 0x00C0E3 03:80D3: 8D F1 07  STA ram_07F1
bra_80D6_RTS:
C - - - - - 0x00C0E6 03:80D6: 60        RTS
bra_80D7:
C - - - - - 0x00C0E7 03:80D7: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x00C0EA 03:80DA: C9 02     CMP #$02
C - - - - - 0x00C0EC 03:80DC: 90 05     BCC bra_80E3
C - - - - - 0x00C0EE 03:80DE: A9 01     LDA #$01
C - - - - - 0x00C0F0 03:80E0: 20 62 99  JSR sub_9962
bra_80E3:
C - - - - - 0x00C0F3 03:80E3: A9 00     LDA #$00
C - - - - - 0x00C0F5 03:80E5: 9D 69 06  STA ram_obj_066A,X
C - - - - - 0x00C0F8 03:80E8: BD 7B 06  LDA ram_obj_hp,X
C - - - - - 0x00C0FB 03:80EB: D0 43     BNE bra_8130
C - - - - - 0x00C0FD 03:80ED: A9 7B     LDA #con_dmc_boss_death
C - - - - - 0x00C0FF 03:80EF: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x00C102 03:80F2: BD 45 06  LDA ram_obj_0646,X
C - - - - - 0x00C105 03:80F5: 18        CLC
C - - - - - 0x00C106 03:80F6: 69 01     ADC #$01
C - - - - - 0x00C108 03:80F8: 0D F1 07  ORA ram_07F1
C - - - - - 0x00C10B 03:80FB: 8D F1 07  STA ram_07F1
C - - - - - 0x00C10E 03:80FE: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x00C111 03:8101: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x00C114 03:8104: 85 09     STA ram_0009_temp
bra_8106_loop:
C - - - - - 0x00C116 03:8106: 20 CD 83  JSR sub_83CD
C - - - - - 0x00C119 03:8109: A9 10     LDA #con_obj_flag_10
C - - - - - 0x00C11B 03:810B: 99 70 04  STA ram_obj_flags,Y
C - - - - - 0x00C11E 03:810E: A5 09     LDA ram_0009_temp
C - - - - - 0x00C120 03:8110: 99 1D 06  STA ram_061D_obj,Y
C - - - - - 0x00C123 03:8113: 8A        TXA
C - - - - - 0x00C124 03:8114: 99 33 06  STA ram_obj_0634,Y
C - - - - - 0x00C127 03:8117: 84 08     STY ram_0008_temp
C - - - - - 0x00C129 03:8119: A4 09     LDY ram_0009_temp
C - - - - - 0x00C12B 03:811B: B9 C0 83  LDA tbl_83C0,Y
C - - - - - 0x00C12E 03:811E: A4 08     LDY ram_0008_temp
C - - - - - 0x00C130 03:8120: 18        CLC
C - - - - - 0x00C131 03:8121: 7D 1C 04  ADC ram_obj_pos_Y_hi,X
C - - - - - 0x00C134 03:8124: 99 1C 04  STA ram_obj_pos_Y_hi,Y
C - - - - - 0x00C137 03:8127: C6 09     DEC ram_0009_temp
C - - - - - 0x00C139 03:8129: A5 09     LDA ram_0009_temp
C - - - - - 0x00C13B 03:812B: C9 01     CMP #$01
C - - - - - 0x00C13D 03:812D: D0 D7     BNE bra_8106_loop
C - - - - - 0x00C13F 03:812F: 60        RTS
bra_8130:
C - - - - - 0x00C140 03:8130: BC 06 06  LDY ram_obj_config,X
C - - - - - 0x00C143 03:8133: F0 05     BEQ bra_813A_00
C - - - - - 0x00C145 03:8135: 4C E6 81  JMP loc_81E6



tbl_8138:
- D 0 - - - 0x00C148 03:8138: 04        .byte $04   ; 00 
- D 0 - - - 0x00C149 03:8139: 08        .byte $08   ; 01 



bra_813A_00:
C - - - - - 0x00C14A 03:813A: A9 98     LDA #con_obj_flag_08 + con_obj_flag_10 + con_obj_flag_not_visible
C - - - - - 0x00C14C 03:813C: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x00C14F 03:813F: BD D8 05  LDA ram_05D8_obj,X
C - - - - - 0x00C152 03:8142: F0 03     BEQ bra_8147
C - - - - - 0x00C154 03:8144: 4C C2 81  JMP loc_81C2
bra_8147:
C - - - - - 0x00C157 03:8147: AD F6 07  LDA ram_quest
C - - - - - 0x00C15A 03:814A: D0 10     BNE bra_815C_2nd_quest
; if 1st quest
C - - - - - 0x00C15C 03:814C: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x00C15F 03:814F: 18        CLC
C - - - - - 0x00C160 03:8150: 7D 45 06  ADC ram_obj_0646,X
C - - - - - 0x00C163 03:8153: 29 0F     AND #$0F
C - - - - - 0x00C165 03:8155: A8        TAY
C - - - - - 0x00C166 03:8156: B9 D6 81  LDA tbl_81D6_1st_quest,Y
C - - - - - 0x00C169 03:8159: 4C 6A 81  JMP loc_816A
bra_815C_2nd_quest:
- - - - - - 0x00C16C 03:815C: A5 1F     LDA ram_random
- - - - - - 0x00C16E 03:815E: 7D 33 06  ADC ram_obj_0634,X
- - - - - - 0x00C171 03:8161: 7D 45 06  ADC ram_obj_0646,X
- - - - - - 0x00C174 03:8164: 29 0F     AND #$0F
- - - - - - 0x00C176 03:8166: A8        TAY
- - - - - - 0x00C177 03:8167: B9 C6 81  LDA tbl_81C6_2nd_quest,Y
loc_816A:
C D 0 - - - 0x00C17A 03:816A: A8        TAY
C - - - - - 0x00C17B 03:816B: 85 03     STA ram_0003_temp
C - - - - - 0x00C17D 03:816D: B9 F9 83  LDA tbl_83F9_pos_X_hi,Y
C - - - - - 0x00C180 03:8170: 20 E7 84  JSR sub_84E7
C - - - - - 0x00C183 03:8173: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x00C186 03:8176: A9 C0     LDA #$C0
C - - - - - 0x00C188 03:8178: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x00C18B 03:817B: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x00C18E 03:817E: A9 FE     LDA #$FE
C - - - - - 0x00C190 03:8180: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x00C193 03:8183: A9 30     LDA #con_sound_30
C - - - - - 0x00C195 03:8185: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x00C198 03:8188: FE 06 06  INC ram_obj_config,X
C - - - - - 0x00C19B 03:818B: A9 00     LDA #$00
C - - - - - 0x00C19D 03:818D: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x00C1A0 03:8190: FE 33 06  INC ram_obj_0634,X
C - - - - - 0x00C1A3 03:8193: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x00C1A6 03:8196: 29 07     AND #$07
C - - - - - 0x00C1A8 03:8198: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x00C1AB 03:819B: BD 45 06  LDA ram_obj_0646,X
C - - - - - 0x00C1AE 03:819E: 0A        ASL
C - - - - - 0x00C1AF 03:819F: A8        TAY
C - - - - - 0x00C1B0 03:81A0: A9 00     LDA #$00    ; facing right
C - - - - - 0x00C1B2 03:81A2: 99 EE 07  STA ram_07EE,Y
C - - - - - 0x00C1B5 03:81A5: 99 ED 07  STA ram_07ED,Y
C - - - - - 0x00C1B8 03:81A8: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x00C1BB 03:81AB: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x00C1BE 03:81AE: DD 38 04  CMP ram_obj_pos_X_hi,X
C - - - - - 0x00C1C1 03:81B1: B0 05     BCS bra_81B8
C - - - - - 0x00C1C3 03:81B3: A9 01     LDA #$01    ; facing left
C - - - - - 0x00C1C5 03:81B5: 9D A8 04  STA ram_obj_facing,X
bra_81B8:
C - - - - - 0x00C1C8 03:81B8: 20 19 83  JSR sub_8319
C - - - - - 0x00C1CB 03:81BB: A9 10     LDA #con_obj_type_10
C - - - - - 0x00C1CD 03:81BD: A0 08     LDY #$08
C - - - - - 0x00C1CF 03:81BF: 4C 5C EF  JMP loc_0x03EF6C_prepare_animation



loc_81C2:
; bzk optimize, single JMP to here
C D 0 - - - 0x00C1D2 03:81C2: DE D8 05  DEC ram_05D8_obj,X
C - - - - - 0x00C1D5 03:81C5: 60        RTS



tbl_81C6_2nd_quest:
- - - - - - 0x00C1D6 03:81C6: 01        .byte $01   ; 00 
- - - - - - 0x00C1D7 03:81C7: 00        .byte $00   ; 01 
- - - - - - 0x00C1D8 03:81C8: 03        .byte $03   ; 02 
- - - - - - 0x00C1D9 03:81C9: 02        .byte $02   ; 03 
- - - - - - 0x00C1DA 03:81CA: 01        .byte $01   ; 04 
- - - - - - 0x00C1DB 03:81CB: 00        .byte $00   ; 05 
- - - - - - 0x00C1DC 03:81CC: 02        .byte $02   ; 06 
- - - - - - 0x00C1DD 03:81CD: 01        .byte $01   ; 07 
- - - - - - 0x00C1DE 03:81CE: 03        .byte $03   ; 08 
- - - - - - 0x00C1DF 03:81CF: 02        .byte $02   ; 09 
- - - - - - 0x00C1E0 03:81D0: 01        .byte $01   ; 0A 
- - - - - - 0x00C1E1 03:81D1: 00        .byte $00   ; 0B 
- - - - - - 0x00C1E2 03:81D2: 01        .byte $01   ; 0C 
- - - - - - 0x00C1E3 03:81D3: 00        .byte $00   ; 0D 
- - - - - - 0x00C1E4 03:81D4: 01        .byte $01   ; 0E 
- - - - - - 0x00C1E5 03:81D5: 02        .byte $02   ; 0F 



tbl_81D6_1st_quest:
- D 0 - - - 0x00C1E6 03:81D6: 01        .byte $01   ; 00 
- D 0 - - - 0x00C1E7 03:81D7: 00        .byte $00   ; 01 
- D 0 - - - 0x00C1E8 03:81D8: 03        .byte $03   ; 02 
- D 0 - - - 0x00C1E9 03:81D9: 02        .byte $02   ; 03 
- D 0 - - - 0x00C1EA 03:81DA: 01        .byte $01   ; 04 
- D 0 - - - 0x00C1EB 03:81DB: 00        .byte $00   ; 05 
- D 0 - - - 0x00C1EC 03:81DC: 03        .byte $03   ; 06 
- D 0 - - - 0x00C1ED 03:81DD: 02        .byte $02   ; 07 
- D 0 - - - 0x00C1EE 03:81DE: 01        .byte $01   ; 08 
- - - - - - 0x00C1EF 03:81DF: 00        .byte $00   ; 09 
- - - - - - 0x00C1F0 03:81E0: 01        .byte $01   ; 0A 
- - - - - - 0x00C1F1 03:81E1: 00        .byte $00   ; 0B 
- - - - - - 0x00C1F2 03:81E2: 01        .byte $01   ; 0C 
- - - - - - 0x00C1F3 03:81E3: 02        .byte $02   ; 0D 
- - - - - - 0x00C1F4 03:81E4: 01        .byte $01   ; 0E 
- - - - - - 0x00C1F5 03:81E5: 00        .byte $00   ; 0F 



loc_81E6:
C D 0 - - - 0x00C1F6 03:81E6: 88        DEY
C - - - - - 0x00C1F7 03:81E7: D0 63     BNE bra_824C
; 01
C - - - - - 0x00C1F9 03:81E9: A9 40     LDA #con_obj_flag_40
C - - - - - 0x00C1FB 03:81EB: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x00C1FE 03:81EE: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x00C201 03:81F1: 18        CLC
C - - - - - 0x00C202 03:81F2: 7D 45 06  ADC ram_obj_0646,X
C - - - - - 0x00C205 03:81F5: A8        TAY
C - - - - - 0x00C206 03:81F6: B9 FD 83  LDA tbl_83FD,Y
C - - - - - 0x00C209 03:81F9: DD 1C 04  CMP ram_obj_pos_Y_hi,X
C - - - - - 0x00C20C 03:81FC: 90 0C     BCC bra_820A
C - - - - - 0x00C20E 03:81FE: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x00C211 03:8201: FE 06 06  INC ram_obj_config,X
C - - - - - 0x00C214 03:8204: A9 20     LDA #$20
C - - - - - 0x00C216 03:8206: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x00C219 03:8209: 60        RTS
bra_820A:
C - - - - - 0x00C21A 03:820A: 20 E7 83  JSR sub_83E7
C - - - - - 0x00C21D 03:820D: C9 0E     CMP #$0E
C - - - - - 0x00C21F 03:820F: 90 25     BCC bra_8236
C - - - - - 0x00C221 03:8211: FE 1D 06  INC ram_061D_obj,X
C - - - - - 0x00C224 03:8214: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x00C227 03:8217: C9 02     CMP #$02
C - - - - - 0x00C229 03:8219: B0 1B     BCS bra_8236
C - - - - - 0x00C22B 03:821B: 20 CD 83  JSR sub_83CD
C - - - - - 0x00C22E 03:821E: A9 00     LDA #con_obj_flag_00
C - - - - - 0x00C230 03:8220: 99 70 04  STA ram_obj_flags,Y
C - - - - - 0x00C233 03:8223: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x00C236 03:8226: 99 1D 06  STA ram_061D_obj,Y
C - - - - - 0x00C239 03:8229: 8A        TXA
C - - - - - 0x00C23A 03:822A: 99 33 06  STA ram_obj_0634,Y
C - - - - - 0x00C23D 03:822D: B9 1C 04  LDA ram_obj_pos_Y_hi,Y
; bzk most likely 4 unused expors
ofs_042_0x00C240_18:
ofs_042_0x00C240_19:
ofs_042_0x00C240_1B:
ofs_042_0x00C240_1C:
C - - - - - 0x00C240 03:8230: 18        CLC
C - - - - - 0x00C241 03:8231: 69 10     ADC #$10
C - - - - - 0x00C243 03:8233: 99 1C 04  STA ram_obj_pos_Y_hi,Y
bra_8236:
C - - - - - 0x00C246 03:8236: A0 08     LDY #$08
C - - - - - 0x00C248 03:8238: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x00C24B 03:823B: C9 A8     CMP #$A8
C - - - - - 0x00C24D 03:823D: B0 08     BCS bra_8247
; bzk optimize, INY
C - - - - - 0x00C24F 03:823F: A0 09     LDY #$09
C - - - - - 0x00C251 03:8241: C9 A0     CMP #$A0
C - - - - - 0x00C253 03:8243: B0 02     BCS bra_8247
; bzk optimize, INY
C - - - - - 0x00C255 03:8245: A0 0A     LDY #$0A
bra_8247:
C - - - - - 0x00C257 03:8247: A9 10     LDA #con_obj_type_10
C - - - - - 0x00C259 03:8249: 4C 5C EF  JMP loc_0x03EF6C_prepare_animation
bra_824C:
C - - - - - 0x00C25C 03:824C: 88        DEY
C - - - - - 0x00C25D 03:824D: F0 03     BEQ bra_8252
C - - - - - 0x00C25F 03:824F: 4C DE 82  JMP loc_82DE_03_04
bra_8252:
; 02
C - - - - - 0x00C262 03:8252: BD D8 05  LDA ram_05D8_obj,X
C - - - - - 0x00C265 03:8255: F0 09     BEQ bra_8260
C - - - - - 0x00C267 03:8257: DE D8 05  DEC ram_05D8_obj,X
; triggers during 2 dragons boss fight
C - - - - - 0x00C26A 03:825A: 20 C8 FE  JSR sub_0x03FED8_clear_speed
; A = 00
C - - - - - 0x00C26D 03:825D: 85 12     STA ram_0012_temp   ; ???
C - - - - - 0x00C26F 03:825F: 60        RTS
bra_8260:
C - - - - - 0x00C270 03:8260: A9 00     LDA #$00
C - - - - - 0x00C272 03:8262: 85 12     STA ram_0012_t007_loop_counter
bra_8264_loop:
C - - - - - 0x00C274 03:8264: A9 1B     LDA #$1B
C - - - - - 0x00C276 03:8266: 20 6E 99  JSR sub_996E
C - - - - - 0x00C279 03:8269: 90 5F     BCC bra_82CA
C - - - - - 0x00C27B 03:826B: A9 28     LDA #con_obj_flag_08 + con_obj_flag_20
C - - - - - 0x00C27D 03:826D: 99 70 04  STA ram_obj_flags,Y
C - - - - - 0x00C280 03:8270: A9 52     LDA #$52
C - - - - - 0x00C282 03:8272: 99 00 04  STA ram_obj_anim_id,Y
C - - - - - 0x00C285 03:8275: A9 A2     LDA #$A2
C - - - - - 0x00C287 03:8277: 99 EF 05  STA ram_05EF_obj,Y
C - - - - - 0x00C28A 03:827A: A9 01     LDA #$01
C - - - - - 0x00C28C 03:827C: 99 D8 05  STA ram_05D8_obj,Y
C - - - - - 0x00C28F 03:827F: A9 14     LDA #con_obj_type_14
C - - - - - 0x00C291 03:8281: 99 8C 04  STA ram_obj_type,Y
C - - - - - 0x00C294 03:8284: A9 00     LDA #$00
C - - - - - 0x00C296 03:8286: 99 C1 05  STA ram_05C1_obj,Y
C - - - - - 0x00C299 03:8289: B9 1C 04  LDA ram_obj_pos_Y_hi,Y
C - - - - - 0x00C29C 03:828C: 38        SEC
C - - - - - 0x00C29D 03:828D: E9 0C     SBC #$0C
C - - - - - 0x00C29F 03:828F: 99 1C 04  STA ram_obj_pos_Y_hi,Y
C - - - - - 0x00C2A2 03:8292: A9 10     LDA #$10
C - - - - - 0x00C2A4 03:8294: 85 11     STA ram_0011_t011_pos_X_hi
C - - - - - 0x00C2A6 03:8296: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x00C2A9 03:8299: 99 A8 04  STA ram_obj_facing,Y
C - - - - - 0x00C2AC 03:829C: F0 04     BEQ bra_82A2_facing_right
C - - - - - 0x00C2AE 03:829E: A9 F0     LDA #$F0
C - - - - - 0x00C2B0 03:82A0: 85 11     STA ram_0011_t011_pos_X_hi
bra_82A2_facing_right:
C - - - - - 0x00C2B2 03:82A2: B9 38 04  LDA ram_obj_pos_X_hi,Y
C - - - - - 0x00C2B5 03:82A5: 18        CLC
C - - - - - 0x00C2B6 03:82A6: 65 11     ADC ram_0011_t011_pos_X_hi
C - - - - - 0x00C2B8 03:82A8: 99 38 04  STA ram_obj_pos_X_hi,Y
C - - - - - 0x00C2BB 03:82AB: 99 33 06  STA ram_obj_0634,Y
C - - - - - 0x00C2BE 03:82AE: 20 BB 84  JSR sub_84BB_clear_speed
C - - - - - 0x00C2C1 03:82B1: A9 00     LDA #$00
C - - - - - 0x00C2C3 03:82B3: 85 17     STA ram_0017_t005
C - - - - - 0x00C2C5 03:82B5: A5 12     LDA ram_0012_t007_loop_counter
C - - - - - 0x00C2C7 03:82B7: F0 04     BEQ bra_82BD
C - - - - - 0x00C2C9 03:82B9: A9 08     LDA #$08
C - - - - - 0x00C2CB 03:82BB: 85 17     STA ram_0017_t005
bra_82BD:
C - - - - - 0x00C2CD 03:82BD: A5 17     LDA ram_0017_t005
C - - - - - 0x00C2CF 03:82BF: 99 06 06  STA ram_obj_config,Y
C - - - - - 0x00C2D2 03:82C2: E6 12     INC ram_0012_t007_loop_counter
C - - - - - 0x00C2D4 03:82C4: A5 12     LDA ram_0012_t007_loop_counter
C - - - - - 0x00C2D6 03:82C6: C9 02     CMP #$02
C - - - - - 0x00C2D8 03:82C8: 90 9A     BCC bra_8264_loop
bra_82CA:
C - - - - - 0x00C2DA 03:82CA: FE 06 06  INC ram_obj_config,X
C - - - - - 0x00C2DD 03:82CD: A9 58     LDA #$58
C - - - - - 0x00C2DF 03:82CF: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x00C2E2 03:82D2: A9 24     LDA #con_sound_24
C - - - - - 0x00C2E4 03:82D4: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x00C2E7 03:82D7: A0 0B     LDY #$0B
bra_82D9:
C - - - - - 0x00C2E9 03:82D9: A9 10     LDA #con_obj_type_10
C - - - - - 0x00C2EB 03:82DB: 4C 5C EF  JMP loc_0x03EF6C_prepare_animation



loc_82DE_03_04:
C D 0 - - - 0x00C2EE 03:82DE: 88        DEY
C - - - - - 0x00C2EF 03:82DF: D0 18     BNE bra_82F9
; 03
C - - - - - 0x00C2F1 03:82E1: BD D8 05  LDA ram_05D8_obj,X
C - - - - - 0x00C2F4 03:82E4: D0 0F     BNE bra_82F5
C - - - - - 0x00C2F6 03:82E6: FE 06 06  INC ram_obj_config,X
C - - - - - 0x00C2F9 03:82E9: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x00C2FC 03:82EC: A9 02     LDA #$02
C - - - - - 0x00C2FE 03:82EE: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x00C301 03:82F1: A0 0A     LDY #$0A
C - - - - - 0x00C303 03:82F3: D0 E4     BNE bra_82D9    ; jmp
bra_82F5:
C - - - - - 0x00C305 03:82F5: DE D8 05  DEC ram_05D8_obj,X
C - - - - - 0x00C308 03:82F8: 60        RTS
bra_82F9:
; 04
C - - - - - 0x00C309 03:82F9: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x00C30C 03:82FC: C9 C0     CMP #$C0
C - - - - - 0x00C30E 03:82FE: 90 2F     BCC bra_832F
C - - - - - 0x00C310 03:8300: A9 31     LDA #con_sound_31
C - - - - - 0x00C312 03:8302: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x00C315 03:8305: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x00C318 03:8308: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x00C31B 03:830B: A5 1F     LDA ram_random
C - - - - - 0x00C31D 03:830D: 7D 45 06  ADC ram_obj_0646,X
C - - - - - 0x00C320 03:8310: 29 0F     AND #$0F
C - - - - - 0x00C322 03:8312: A8        TAY
C - - - - - 0x00C323 03:8313: B9 06 84  LDA tbl_8406,Y
C - - - - - 0x00C326 03:8316: 9D D8 05  STA ram_05D8_obj,X
sub_8319:
C - - - - - 0x00C329 03:8319: A9 1C     LDA #$1C
C - - - - - 0x00C32B 03:831B: 20 6E 99  JSR sub_996E
C - - - - - 0x00C32E 03:831E: 90 0E     BCC bra_832E_RTS
C - - - - - 0x00C330 03:8320: A9 10     LDA #con_obj_flag_10
C - - - - - 0x00C332 03:8322: 99 70 04  STA ram_obj_flags,Y
C - - - - - 0x00C335 03:8325: B9 1C 04  LDA ram_obj_pos_Y_hi,Y
C - - - - - 0x00C338 03:8328: 38        SEC
C - - - - - 0x00C339 03:8329: E9 10     SBC #$10
C - - - - - 0x00C33B 03:832B: 99 1C 04  STA ram_obj_pos_Y_hi,Y
bra_832E_RTS:
C - - - - - 0x00C33E 03:832E: 60        RTS
bra_832F:
C - - - - - 0x00C33F 03:832F: 20 E7 83  JSR sub_83E7
C - - - - - 0x00C342 03:8332: C9 02     CMP #$02
C - - - - - 0x00C344 03:8334: B0 13     BCS bra_8349_RTS
C - - - - - 0x00C346 03:8336: BD 45 06  LDA ram_obj_0646,X
C - - - - - 0x00C349 03:8339: 0A        ASL
C - - - - - 0x00C34A 03:833A: A8        TAY
C - - - - - 0x00C34B 03:833B: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x00C34E 03:833E: 99 EE 07  STA ram_07EE,Y
C - - - - - 0x00C351 03:8341: DE 1D 06  DEC ram_061D_obj,X
C - - - - - 0x00C354 03:8344: A9 FF     LDA #$FF
C - - - - - 0x00C356 03:8346: 99 ED 07  STA ram_07ED,Y
bra_8349_RTS:
C - - - - - 0x00C359 03:8349: 60        RTS



loc_834A:
C D 0 - - - 0x00C35A 03:834A: 20 7E 99  JSR sub_997E
C - - - - - 0x00C35D 03:834D: BD 45 06  LDA ram_obj_0646,X
C - - - - - 0x00C360 03:8350: 0A        ASL
C - - - - - 0x00C361 03:8351: A8        TAY
C - - - - - 0x00C362 03:8352: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x00C365 03:8355: D9 EE 07  CMP ram_07EE,Y
C - - - - - 0x00C368 03:8358: D0 0C     BNE bra_8366
C - - - - - 0x00C36A 03:835A: B9 ED 07  LDA ram_07ED,Y
C - - - - - 0x00C36D 03:835D: F0 07     BEQ bra_8366
C - - - - - 0x00C36F 03:835F: C9 FE     CMP #$FE
C - - - - - 0x00C371 03:8361: F0 2F     BEQ bra_8392_FE
C - - - - - 0x00C373 03:8363: 4C 52 99  JMP loc_9952
bra_8366:
C - - - - - 0x00C376 03:8366: BC 1D 06  LDY ram_061D_obj,X
C - - - - - 0x00C379 03:8369: B9 C0 83  LDA tbl_83C0,Y
C - - - - - 0x00C37C 03:836C: BC 33 06  LDY ram_obj_0634,X
C - - - - - 0x00C37F 03:836F: 18        CLC
C - - - - - 0x00C380 03:8370: 79 1C 04  ADC ram_obj_pos_Y_hi,Y
C - - - - - 0x00C383 03:8373: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x00C386 03:8376: BD 45 06  LDA ram_obj_0646,X
C - - - - - 0x00C389 03:8379: 18        CLC
C - - - - - 0x00C38A 03:837A: 69 01     ADC #$01
C - - - - - 0x00C38C 03:837C: 2D F1 07  AND ram_07F1
C - - - - - 0x00C38F 03:837F: D0 0D     BNE bra_838E
C - - - - - 0x00C391 03:8381: B9 1D 06  LDA ram_061D_obj,Y
C - - - - - 0x00C394 03:8384: A8        TAY
C - - - - - 0x00C395 03:8385: B9 C7 83  LDA tbl_83C7,Y
C - - - - - 0x00C398 03:8388: A8        TAY
bra_8389:
C - - - - - 0x00C399 03:8389: A9 10     LDA #con_obj_type_10
C - - - - - 0x00C39B 03:838B: 4C 5C EF  JMP loc_0x03EF6C_prepare_animation
bra_838E:
C - - - - - 0x00C39E 03:838E: A0 0C     LDY #$0C
C - - - - - 0x00C3A0 03:8390: D0 F7     BNE bra_8389    ; jmp
bra_8392_FE:
C - - - - - 0x00C3A2 03:8392: BD EF 05  LDA ram_05EF_obj,X
C - - - - - 0x00C3A5 03:8395: 29 7F     AND #$7F
C - - - - - 0x00C3A7 03:8397: C9 34     CMP #$34
C - - - - - 0x00C3A9 03:8399: F0 11     BEQ bra_83AC
C - - - - - 0x00C3AB 03:839B: A9 40     LDA #con_obj_flag_40
C - - - - - 0x00C3AD 03:839D: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x00C3B0 03:83A0: A9 10     LDA #con_obj_type_10
C - - - - - 0x00C3B2 03:83A2: A0 0D     LDY #$0D
C - - - - - 0x00C3B4 03:83A4: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x00C3B7 03:83A7: A9 34     LDA #$34
C - - - - - 0x00C3B9 03:83A9: 4C 4C 99  JMP loc_994C
bra_83AC:
C - - - - - 0x00C3BC 03:83AC: BD C1 05  LDA ram_05C1_obj,X
C - - - - - 0x00C3BF 03:83AF: C9 01     CMP #$01
C - - - - - 0x00C3C1 03:83B1: D0 45     BNE bra_83F8_RTS
C - - - - - 0x00C3C3 03:83B3: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x00C3C6 03:83B6: C9 C0     CMP #$C0
C - - - - - 0x00C3C8 03:83B8: 90 3E     BCC bra_83F8_RTS
C - - - - - 0x00C3CA 03:83BA: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x00C3CD 03:83BD: 4C C8 FE  JMP loc_0x03FED8_clear_speed



tbl_83C0:
- D 0 - - - 0x00C3D0 03:83C0: 00        .byte $00   ; 00 
- D 0 - - - 0x00C3D1 03:83C1: 08        .byte $08   ; 01 
- D 0 - - - 0x00C3D2 03:83C2: 18        .byte $18   ; 02 
- D 0 - - - 0x00C3D3 03:83C3: 28        .byte $28   ; 03 
- D 0 - - - 0x00C3D4 03:83C4: 38        .byte $38   ; 04 
- D 0 - - - 0x00C3D5 03:83C5: 48        .byte $48   ; 05 
- - - - - - 0x00C3D6 03:83C6: 58        .byte $58   ; 06 



tbl_83C7:
- - - - - - 0x00C3D7 03:83C7: 0C        .byte $0C   ; 00 
- D 0 - - - 0x00C3D8 03:83C8: 0C        .byte $0C   ; 01 
- D 0 - - - 0x00C3D9 03:83C9: 0F        .byte $0F   ; 02 
- D 0 - - - 0x00C3DA 03:83CA: 10        .byte $10   ; 03 
- D 0 - - - 0x00C3DB 03:83CB: 11        .byte $11   ; 04 
- D 0 - - - 0x00C3DC 03:83CC: 12        .byte $12   ; 05 



sub_83CD:
C - - - - - 0x00C3DD 03:83CD: A9 08     LDA #$08
C - - - - - 0x00C3DF 03:83CF: 20 6E 99  JSR sub_996E
C - - - - - 0x00C3E2 03:83D2: BD 45 06  LDA ram_obj_0646,X
C - - - - - 0x00C3E5 03:83D5: 99 45 06  STA ram_obj_0646,Y
C - - - - - 0x00C3E8 03:83D8: A9 80     LDA #$80
C - - - - - 0x00C3EA 03:83DA: 99 06 06  STA ram_obj_config,Y
C - - - - - 0x00C3ED 03:83DD: 20 BB 84  JSR sub_84BB_clear_speed
C - - - - - 0x00C3F0 03:83E0: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x00C3F3 03:83E3: 99 A8 04  STA ram_obj_facing,Y
C - - - - - 0x00C3F6 03:83E6: 60        RTS



sub_83E7:
C - - - - - 0x00C3F7 03:83E7: BC 1D 06  LDY ram_061D_obj,X
C - - - - - 0x00C3FA 03:83EA: B9 C0 83  LDA tbl_83C0,Y
C - - - - - 0x00C3FD 03:83ED: 85 00     STA ram_0000_t0C0
C - - - - - 0x00C3FF 03:83EF: A9 C0     LDA #$C0
C - - - - - 0x00C401 03:83F1: 38        SEC
C - - - - - 0x00C402 03:83F2: E5 00     SBC ram_0000_t0C0
C - - - - - 0x00C404 03:83F4: 38        SEC
C - - - - - 0x00C405 03:83F5: FD 1C 04  SBC ram_obj_pos_Y_hi,X
bra_83F8_RTS:
C - - - - - 0x00C408 03:83F8: 60        RTS



tbl_83F9_pos_X_hi:
- D 0 - - - 0x00C409 03:83F9: 10        .byte $10   ; 00 
- D 0 - - - 0x00C40A 03:83FA: 50        .byte $50   ; 01 
- D 0 - - - 0x00C40B 03:83FB: B0        .byte $B0   ; 02 
- D 0 - - - 0x00C40C 03:83FC: F0        .byte $F0   ; 03 



tbl_83FD:
- D 0 - - - 0x00C40D 03:83FD: 70        .byte $70   ; 00 
- D 0 - - - 0x00C40E 03:83FE: 90        .byte $90   ; 01 
- D 0 - - - 0x00C40F 03:83FF: 70        .byte $70   ; 02 
- D 0 - - - 0x00C410 03:8400: 98        .byte $98   ; 03 
- D 0 - - - 0x00C411 03:8401: 78        .byte $78   ; 04 
- D 0 - - - 0x00C412 03:8402: 98        .byte $98   ; 05 
- D 0 - - - 0x00C413 03:8403: 70        .byte $70   ; 06 
- D 0 - - - 0x00C414 03:8404: 90        .byte $90   ; 07 
- D 0 - - - 0x00C415 03:8405: 70        .byte $70   ; 08 



tbl_8406:
- D 0 - - - 0x00C416 03:8406: 60        .byte $60   ; 00 
- D 0 - - - 0x00C417 03:8407: 28        .byte $28   ; 01 
- D 0 - - - 0x00C418 03:8408: 58        .byte $58   ; 02 
- D 0 - - - 0x00C419 03:8409: 50        .byte $50   ; 03 
- D 0 - - - 0x00C41A 03:840A: 48        .byte $48   ; 04 
- D 0 - - - 0x00C41B 03:840B: 4C        .byte $4C   ; 05 
- D 0 - - - 0x00C41C 03:840C: 78        .byte $78   ; 06 
- D 0 - - - 0x00C41D 03:840D: 30        .byte $30   ; 07 
- D 0 - - - 0x00C41E 03:840E: 4C        .byte $4C   ; 08 
- D 0 - - - 0x00C41F 03:840F: 20        .byte $20   ; 09 
- D 0 - - - 0x00C420 03:8410: 6C        .byte $6C   ; 0A 
- D 0 - - - 0x00C421 03:8411: 7C        .byte $7C   ; 0B 
- D 0 - - - 0x00C422 03:8412: 44        .byte $44   ; 0C 
- D 0 - - - 0x00C423 03:8413: 2C        .byte $2C   ; 0D 
- D 0 - - - 0x00C424 03:8414: 34        .byte $34   ; 0E 
- D 0 - - - 0x00C425 03:8415: 54        .byte $54   ; 0F 



ofs_042_0x00C426_1B_dragon_breathes_fire:
C - - J - - 0x00C426 03:8416: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x00C429 03:8419: C9 08     CMP #$08
C - - - - - 0x00C42B 03:841B: 90 03     BCC bra_8420
C - - - - - 0x00C42D 03:841D: 38        SEC
C - - - - - 0x00C42E 03:841E: E9 08     SBC #$08
bra_8420:
C - - - - - 0x00C430 03:8420: 20 6D E8  JSR sub_0x03E87D_jump_to_pointers_after_JSR_A
- D 0 - I - 0x00C433 03:8423: 33 84     .word ofs_021_8433_00
- D 0 - I - 0x00C435 03:8425: 36 84     .word ofs_021_8436_01
- D 0 - I - 0x00C437 03:8427: 36 84     .word ofs_021_8436_02
- D 0 - I - 0x00C439 03:8429: 47 84     .word ofs_021_8447_03
- D 0 - I - 0x00C43B 03:842B: 36 84     .word ofs_021_8436_04
- D 0 - I - 0x00C43D 03:842D: 53 84     .word ofs_021_8453_05
- D 0 - I - 0x00C43F 03:842F: 36 84     .word ofs_021_8436_06
- D 0 - I - 0x00C441 03:8431: 3F 84     .word ofs_021_843F_07



ofs_021_8433_00:
C - - J - - 0x00C443 03:8433: 20 3B 99  JSR sub_993B
ofs_021_8436_01:
ofs_021_8436_02:
ofs_021_8436_04:
ofs_021_8436_06:
C - - - - - 0x00C446 03:8436: 20 61 84  JSR sub_8461
C - - - - - 0x00C449 03:8439: 90 03     BCC bra_843E_RTS
bra_843B:
C - - - - - 0x00C44B 03:843B: FE 06 06  INC ram_obj_config,X
bra_843E_RTS:
C - - - - - 0x00C44E 03:843E: 60        RTS



ofs_021_843F_07:
C - - J - - 0x00C44F 03:843F: DE D8 05  DEC ram_05D8_obj,X
C - - - - - 0x00C452 03:8442: D0 45     BNE bra_8489_RTS
C - - - - - 0x00C454 03:8444: 4C 52 99  JMP loc_9952



ofs_021_8447_03:
C - - J - - 0x00C457 03:8447: 20 61 84  JSR sub_8461
C - - - - - 0x00C45A 03:844A: 90 F2     BCC bra_843E_RTS
C - - - - - 0x00C45C 03:844C: A9 05     LDA #$05
C - - - - - 0x00C45E 03:844E: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x00C461 03:8451: D0 E8     BNE bra_843B    ; jmp



ofs_021_8453_05:
C - - J - - 0x00C463 03:8453: 20 61 84  JSR sub_8461
C - - - - - 0x00C466 03:8456: 90 E6     BCC bra_843E_RTS
C - - - - - 0x00C468 03:8458: DE 1D 06  DEC ram_061D_obj,X
C - - - - - 0x00C46B 03:845B: F0 DE     BEQ bra_843B
C - - - - - 0x00C46D 03:845D: DE 06 06  DEC ram_obj_config,X
C - - - - - 0x00C470 03:8460: 60        RTS



sub_8461:
; triggers when one of 2 dragons bosses breath fire
C - - - - - 0x00C471 03:8461: DE D8 05  DEC ram_05D8_obj,X
C - - - - - 0x00C474 03:8464: D0 22     BNE bra_8488
C - - - - - 0x00C476 03:8466: BC 06 06  LDY ram_obj_config,X
C - - - - - 0x00C479 03:8469: A9 04     LDA #$04
C - - - - - 0x00C47B 03:846B: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x00C47E 03:846E: 20 8A 84  JSR sub_848A
C - - - - - 0x00C481 03:8471: C0 08     CPY #$08
C - - - - - 0x00C483 03:8473: B0 06     BCS bra_847B
C - - - - - 0x00C485 03:8475: B9 A5 84  LDA tbl_84A5,Y
C - - - - - 0x00C488 03:8478: 9D 00 04  STA ram_obj_anim_id,X
bra_847B:
C - - - - - 0x00C48B 03:847B: A9 20     LDA #con_obj_flag_20
C - - - - - 0x00C48D 03:847D: C0 07     CPY #$07
C - - - - - 0x00C48F 03:847F: 90 02     BCC bra_8483
C - - - - - 0x00C491 03:8481: A9 28     LDA #con_obj_flag_08 + con_obj_flag_20
bra_8483:
C - - - - - 0x00C493 03:8483: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x00C496 03:8486: 38        SEC
C - - - - - 0x00C497 03:8487: 60        RTS
bra_8488:
C - - - - - 0x00C498 03:8488: 18        CLC
bra_8489_RTS:
C - - - - - 0x00C499 03:8489: 60        RTS



sub_848A:
C - - - - - 0x00C49A 03:848A: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x00C49D 03:848D: D0 0B     BNE bra_849A_facing_left
C - - - - - 0x00C49F 03:848F: 18        CLC
C - - - - - 0x00C4A0 03:8490: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x00C4A3 03:8493: 79 AC 84  ADC tbl_84AC_pos_X_hi,Y
C - - - - - 0x00C4A6 03:8496: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x00C4A9 03:8499: 60        RTS
bra_849A_facing_left:
C - - - - - 0x00C4AA 03:849A: 38        SEC
C - - - - - 0x00C4AB 03:849B: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x00C4AE 03:849E: F9 AC 84  SBC tbl_84AC_pos_X_hi,Y
C - - - - - 0x00C4B1 03:84A1: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x00C4B4 03:84A4: 60        RTS



tbl_84A5:
- D 0 - - - 0x00C4B5 03:84A5: 44        .byte $44   ; 00 
- D 0 - - - 0x00C4B6 03:84A6: 46        .byte $46   ; 01 
- D 0 - - - 0x00C4B7 03:84A7: 48        .byte $48   ; 02 
- D 0 - - - 0x00C4B8 03:84A8: 4A        .byte $4A   ; 03 
- D 0 - - - 0x00C4B9 03:84A9: 4C        .byte $4C   ; 04 
- D 0 - - - 0x00C4BA 03:84AA: 4E        .byte $4E   ; 05 
- D 0 - - - 0x00C4BB 03:84AB: 50        .byte $50   ; 06 



tbl_84AC_pos_X_hi:
- D 0 - - - 0x00C4BC 03:84AC: 00        .byte $00   ; 00 
- D 0 - - - 0x00C4BD 03:84AD: 00        .byte $00   ; 01 
- D 0 - - - 0x00C4BE 03:84AE: 00        .byte $00   ; 02 
- D 0 - - - 0x00C4BF 03:84AF: 00        .byte $00   ; 03 
- D 0 - - - 0x00C4C0 03:84B0: 00        .byte $00   ; 04 
- D 0 - - - 0x00C4C1 03:84B1: 00        .byte $00   ; 05 
- D 0 - - - 0x00C4C2 03:84B2: 20        .byte $20   ; 06 
- - - - - - 0x00C4C3 03:84B3: 00        .byte $00   ; 07 
- D 0 - - - 0x00C4C4 03:84B4: 00        .byte $00   ; 08 
- D 0 - - - 0x00C4C5 03:84B5: 08        .byte $08   ; 09 
- D 0 - - - 0x00C4C6 03:84B6: 10        .byte $10   ; 0A 
- D 0 - - - 0x00C4C7 03:84B7: 18        .byte $18   ; 0B 
- D 0 - - - 0x00C4C8 03:84B8: 20        .byte $20   ; 0C 
- D 0 - - - 0x00C4C9 03:84B9: 20        .byte $20   ; 0D 
- D 0 - - - 0x00C4CA 03:84BA: 20        .byte $20   ; 0E 



sub_84BB_clear_speed:
C - - - - - 0x00C4CB 03:84BB: A9 00     LDA #$00
C - - - - - 0x00C4CD 03:84BD: 99 F2 04  STA ram_obj_spd_X_hi,Y
C - - - - - 0x00C4D0 03:84C0: 99 09 05  STA ram_obj_spd_X_lo,Y
C - - - - - 0x00C4D3 03:84C3: 99 20 05  STA ram_obj_spd_Y_hi,Y
C - - - - - 0x00C4D6 03:84C6: 99 37 05  STA ram_obj_spd_Y_lo,Y
bra_84C9_RTS:
C - - - - - 0x00C4D9 03:84C9: 60        RTS



ofs_042_0x00C4DA_1C:
C - - J - - 0x00C4DA 03:84CA: BD EF 05  LDA ram_05EF_obj,X
C - - - - - 0x00C4DD 03:84CD: 29 7F     AND #$7F
C - - - - - 0x00C4DF 03:84CF: F0 0A     BEQ bra_84DB
C - - - - - 0x00C4E1 03:84D1: BD C1 05  LDA ram_05C1_obj,X
C - - - - - 0x00C4E4 03:84D4: C9 0F     CMP #$0F
C - - - - - 0x00C4E6 03:84D6: D0 F1     BNE bra_84C9_RTS
C - - - - - 0x00C4E8 03:84D8: 4C 52 99  JMP loc_9952
bra_84DB:
C - - - - - 0x00C4EB 03:84DB: A9 0A     LDA #con_obj_type_0A
C - - - - - 0x00C4ED 03:84DD: A0 43     LDY #$43
C - - - - - 0x00C4EF 03:84DF: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x00C4F2 03:84E2: A9 25     LDA #$25
C - - - - - 0x00C4F4 03:84E4: 4C 4C 99  JMP loc_994C



sub_84E7:
; in
    ; A = pos_X_hi
; out
    ; A = pos_X_hi
C - - - - - 0x00C4F7 03:84E7: 85 00     STA ram_0000_t0C1_pos_X_hi
C - - - - - 0x00C4F9 03:84E9: 86 01     STX ram_0001_t040_object_index
C - - - - - 0x00C4FB 03:84EB: A2 01     LDX #$01
bra_84ED_loop:
C - - - - - 0x00C4FD 03:84ED: E4 01     CPX ram_0001_t040_object_index
C - - - - - 0x00C4FF 03:84EF: F0 07     BEQ bra_84F8
C - - - - - 0x00C501 03:84F1: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x00C504 03:84F4: C9 08     CMP #$08
C - - - - - 0x00C506 03:84F6: F0 0A     BEQ bra_8502
bra_84F8:
C - - - - - 0x00C508 03:84F8: E8        INX
C - - - - - 0x00C509 03:84F9: E0 0D     CPX #$0D
C - - - - - 0x00C50B 03:84FB: 90 F0     BCC bra_84ED_loop
bra_84FD:
C - - - - - 0x00C50D 03:84FD: A5 00     LDA ram_0000_t0C1_pos_X_hi
bra_84FF:
C - - - - - 0x00C50F 03:84FF: A6 01     LDX ram_0001_t040_object_index
C - - - - - 0x00C511 03:8501: 60        RTS
bra_8502:
C - - - - - 0x00C512 03:8502: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x00C515 03:8505: 30 F1     BMI bra_84F8
C - - - - - 0x00C517 03:8507: A5 00     LDA ram_0000_t0C1_pos_X_hi
C - - - - - 0x00C519 03:8509: DD 38 04  CMP ram_obj_pos_X_hi,X
C - - - - - 0x00C51C 03:850C: D0 EF     BNE bra_84FD
C - - - - - 0x00C51E 03:850E: E6 03     INC ram_0003_temp
C - - - - - 0x00C520 03:8510: A5 03     LDA ram_0003_temp
C - - - - - 0x00C522 03:8512: 29 03     AND #$03
C - - - - - 0x00C524 03:8514: A8        TAY
C - - - - - 0x00C525 03:8515: B9 F9 83  LDA tbl_83F9_pos_X_hi,Y
C - - - - - 0x00C528 03:8518: D0 E5     BNE bra_84FF    ; jmp



ofs_042_0x00C52A_09:
C - - J - - 0x00C52A 03:851A: A5 78     LDA ram_0078_flag
C - - - - - 0x00C52C 03:851C: D0 21     BNE bra_853F
C - - - - - 0x00C52E 03:851E: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x00C531 03:8521: D0 1B     BNE bra_853E_RTS
C - - - - - 0x00C533 03:8523: A4 32     LDY ram_blk_hi
C - - - - - 0x00C535 03:8525: C0 03     CPY #$03
C - - - - - 0x00C537 03:8527: F0 0B     BEQ bra_8534
C - - - - - 0x00C539 03:8529: A9 30     LDA #$30
C - - - - - 0x00C53B 03:852B: C0 0A     CPY #$0A
C - - - - - 0x00C53D 03:852D: F0 02     BEQ bra_8531
C - - - - - 0x00C53F 03:852F: A9 50     LDA #$50
bra_8531:
C - - - - - 0x00C541 03:8531: 9D 1C 04  STA ram_obj_pos_Y_hi,X
bra_8534:
C - - - - - 0x00C544 03:8534: FE 1D 06  INC ram_061D_obj,X
C - - - - - 0x00C547 03:8537: A9 10     LDA #con_obj_type_10
C - - - - - 0x00C549 03:8539: A0 39     LDY #$39
C - - - - - 0x00C54B 03:853B: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
bra_853E_RTS:
C - - - - - 0x00C54E 03:853E: 60        RTS
bra_853F:
C - - - - - 0x00C54F 03:853F: AD EE 07  LDA ram_07EE
C - - - - - 0x00C552 03:8542: F0 14     BEQ bra_8558
C - - - - - 0x00C554 03:8544: C9 01     CMP #$01
C - - - - - 0x00C556 03:8546: F0 13     BEQ bra_855B
C - - - - - 0x00C558 03:8548: A5 32     LDA ram_blk_hi
C - - - - - 0x00C55A 03:854A: C9 03     CMP #$03
C - - - - - 0x00C55C 03:854C: F0 10     BEQ bra_855E
C - - - - - 0x00C55E 03:854E: AD EE 07  LDA ram_07EE
C - - - - - 0x00C561 03:8551: C9 03     CMP #$03
C - - - - - 0x00C563 03:8553: F0 09     BEQ bra_855E
C - - - - - 0x00C565 03:8555: 4C 27 86  JMP loc_8627
bra_8558:
C - - - - - 0x00C568 03:8558: 4C D0 86  JMP loc_86D0
bra_855B:
C - - - - - 0x00C56B 03:855B: 4C 7F 86  JMP loc_867F
bra_855E:
C - - - - - 0x00C56E 03:855E: A9 40     LDA #con_obj_flag_40
C - - - - - 0x00C570 03:8560: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x00C573 03:8563: BC 06 06  LDY ram_obj_config,X
C - - - - - 0x00C576 03:8566: D0 1D     BNE bra_8585
C - - - - - 0x00C578 03:8568: A9 10     LDA #con_obj_type_10
C - - - - - 0x00C57A 03:856A: A0 39     LDY #$39
C - - - - - 0x00C57C 03:856C: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x00C57F 03:856F: A9 26     LDA #con__chr_bank + $26
C - - - - - 0x00C581 03:8571: 85 48     STA ram_chr_bank_5122
C - - - - - 0x00C583 03:8573: A9 29     LDA #con__chr_bank + $29
C - - - - - 0x00C585 03:8575: 85 49     STA ram_chr_bank_5123
C - - - - - 0x00C587 03:8577: 20 3C E3  JSR sub_0x03E34C
C - - - - - 0x00C58A 03:857A: FE 06 06  INC ram_obj_config,X
C - - - - - 0x00C58D 03:857D: A9 40     LDA #$40
C - - - - - 0x00C58F 03:857F: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x00C592 03:8582: 4C C8 FE  JMP loc_0x03FED8_clear_speed
bra_8585:
C - - - - - 0x00C595 03:8585: 88        DEY
C - - - - - 0x00C596 03:8586: D0 55     BNE bra_85DD
C - - - - - 0x00C598 03:8588: BD D8 05  LDA ram_05D8_obj,X
C - - - - - 0x00C59B 03:858B: F0 04     BEQ bra_8591
C - - - - - 0x00C59D 03:858D: DE D8 05  DEC ram_05D8_obj,X
C - - - - - 0x00C5A0 03:8590: 60        RTS
bra_8591:
C - - - - - 0x00C5A1 03:8591: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x00C5A4 03:8594: C9 70     CMP #$70
C - - - - - 0x00C5A6 03:8596: B0 36     BCS bra_85CE
C - - - - - 0x00C5A8 03:8598: FE 06 06  INC ram_obj_config,X
C - - - - - 0x00C5AB 03:859B: A9 00     LDA #$00
C - - - - - 0x00C5AD 03:859D: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x00C5B0 03:85A0: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x00C5B3 03:85A3: A9 07     LDA #$07
C - - - - - 0x00C5B5 03:85A5: 85 17     STA ram_0017_temp
bra_85A7_loop:
C - - - - - 0x00C5B7 03:85A7: A9 09     LDA #$09
C - - - - - 0x00C5B9 03:85A9: 20 68 99  JSR sub_9968
C - - - - - 0x00C5BC 03:85AC: A5 17     LDA ram_0017_temp
C - - - - - 0x00C5BE 03:85AE: 99 1D 06  STA ram_061D_obj,Y
; * 04
C - - - - - 0x00C5C1 03:85B1: 0A        ASL
C - - - - - 0x00C5C2 03:85B2: 0A        ASL
C - - - - - 0x00C5C3 03:85B3: 99 65 05  STA ram_obj_state,Y
C - - - - - 0x00C5C6 03:85B6: A9 02     LDA #$02
C - - - - - 0x00C5C8 03:85B8: 99 06 06  STA ram_obj_config,Y
C - - - - - 0x00C5CB 03:85BB: C6 17     DEC ram_0017_temp
C - - - - - 0x00C5CD 03:85BD: D0 E8     BNE bra_85A7_loop
C - - - - - 0x00C5CF 03:85BF: A5 17     LDA ram_0017_temp
C - - - - - 0x00C5D1 03:85C1: 9D 1D 06  STA ram_061D_obj,X
; * 04
C - - - - - 0x00C5D4 03:85C4: 0A        ASL
C - - - - - 0x00C5D5 03:85C5: 0A        ASL
C - - - - - 0x00C5D6 03:85C6: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x00C5D9 03:85C9: A9 43     LDA #con_sound_43
C - - - - - 0x00C5DB 03:85CB: 4C 5F E2  JMP loc_0x03E26F_play_sound
bra_85CE:
C - - - - - 0x00C5DE 03:85CE: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x00C5E1 03:85D1: A9 FE     LDA #$FE
C - - - - - 0x00C5E3 03:85D3: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x00C5E6 03:85D6: A9 10     LDA #con_obj_type_10
C - - - - - 0x00C5E8 03:85D8: A0 47     LDY #$47
C - - - - - 0x00C5EA 03:85DA: 4C 5C EF  JMP loc_0x03EF6C_prepare_animation
bra_85DD:
C - - - - - 0x00C5ED 03:85DD: 20 09 95  JSR sub_9509
C - - - - - 0x00C5F0 03:85E0: C9 5A     CMP #$5A
C - - - - - 0x00C5F2 03:85E2: F0 0C     BEQ bra_85F0
C - - - - - 0x00C5F4 03:85E4: A9 10     LDA #con_obj_type_10
C - - - - - 0x00C5F6 03:85E6: A0 3A     LDY #$3A
C - - - - - 0x00C5F8 03:85E8: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x00C5FB 03:85EB: A9 DA     LDA #$DA
C - - - - - 0x00C5FD 03:85ED: 4C 4C 99  JMP loc_994C
bra_85F0:
C - - - - - 0x00C600 03:85F0: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x00C603 03:85F3: C9 08     CMP #$08
C - - - - - 0x00C605 03:85F5: 90 10     BCC bra_8607
C - - - - - 0x00C607 03:85F7: C9 F8     CMP #$F8
C - - - - - 0x00C609 03:85F9: B0 0C     BCS bra_8607
C - - - - - 0x00C60B 03:85FB: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x00C60E 03:85FE: C9 28     CMP #$28
C - - - - - 0x00C610 03:8600: 90 05     BCC bra_8607
C - - - - - 0x00C612 03:8602: C9 F8     CMP #$F8
C - - - - - 0x00C614 03:8604: B0 01     BCS bra_8607
C - - - - - 0x00C616 03:8606: 60        RTS
bra_8607:
C - - - - - 0x00C617 03:8607: 20 52 99  JSR sub_9952
C - - - - - 0x00C61A 03:860A: A0 0D     LDY #$0D
bra_860C_loop:
C - - - - - 0x00C61C 03:860C: B9 4E 05  LDA ram_obj_id,Y
C - - - - - 0x00C61F 03:860F: D0 15     BNE bra_8626_RTS
C - - - - - 0x00C621 03:8611: 88        DEY
C - - - - - 0x00C622 03:8612: D0 F8     BNE bra_860C_loop
C - - - - - 0x00C624 03:8614: A9 09     LDA #$09
C - - - - - 0x00C626 03:8616: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x00C629 03:8619: A9 02     LDA #$02
C - - - - - 0x00C62B 03:861B: 8D F3 07  STA ram_07F3
C - - - - - 0x00C62E 03:861E: 20 56 99  JSR sub_9956
C - - - - - 0x00C631 03:8621: A9 00     LDA #$00
C - - - - - 0x00C633 03:8623: 9D 4E 05  STA ram_obj_id,X
bra_8626_RTS:
C - - - - - 0x00C636 03:8626: 60        RTS



loc_8627:
C D 0 - - - 0x00C637 03:8627: AD EF 07  LDA ram_07EF
C - - - - - 0x00C63A 03:862A: F0 03     BEQ bra_862F
C - - - - - 0x00C63C 03:862C: 4C 5E 87  JMP loc_875E
bra_862F:
C - - - - - 0x00C63F 03:862F: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x00C642 03:8632: 29 80     AND #$80
C - - - - - 0x00C644 03:8634: D0 06     BNE bra_863C
C - - - - - 0x00C646 03:8636: 20 C9 87  JSR sub_87C9
C - - - - - 0x00C649 03:8639: B0 01     BCS bra_863C
C - - - - - 0x00C64B 03:863B: 60        RTS
bra_863C:
C - - - - - 0x00C64C 03:863C: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x00C64F 03:863F: D0 15     BNE bra_8656
C - - - - - 0x00C651 03:8641: A9 80     LDA #$80
C - - - - - 0x00C653 03:8643: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x00C656 03:8646: A9 10     LDA #con_obj_type_10
C - - - - - 0x00C658 03:8648: A0 2B     LDY #$2B
C - - - - - 0x00C65A 03:864A: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x00C65D 03:864D: A9 00     LDA #$00
C - - - - - 0x00C65F 03:864F: 20 BF 87  JSR sub_87BF
C - - - - - 0x00C662 03:8652: FE 1D 06  INC ram_061D_obj,X
C - - - - - 0x00C665 03:8655: 60        RTS
bra_8656:
C - - - - - 0x00C666 03:8656: 20 F0 88  JSR sub_88F0
C - - - - - 0x00C669 03:8659: 90 1A     BCC bra_8675_RTS
C - - - - - 0x00C66B 03:865B: 20 76 86  JSR sub_8676
C - - - - - 0x00C66E 03:865E: A9 40     LDA #$40
C - - - - - 0x00C670 03:8660: 85 3D     STA ram_hp_boss
C - - - - - 0x00C672 03:8662: 9D 7B 06  STA ram_obj_hp,X
C - - - - - 0x00C675 03:8665: A9 00     LDA #$00
C - - - - - 0x00C677 03:8667: 9D 54 04  STA ram_0454_obj,X
C - - - - - 0x00C67A 03:866A: EE EF 07  INC ram_07EF
C - - - - - 0x00C67D 03:866D: AD F3 07  LDA ram_07F3
C - - - - - 0x00C680 03:8670: 29 80     AND #$80
C - - - - - 0x00C682 03:8672: 8D F3 07  STA ram_07F3
bra_8675_RTS:
C - - - - - 0x00C685 03:8675: 60        RTS



sub_8676:
loc_8676:
C D 0 - - - 0x00C686 03:8676: A9 00     LDA #$00
C - - - - - 0x00C688 03:8678: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x00C68B 03:867B: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x00C68E 03:867E: 60        RTS



loc_867F:
C D 0 - - - 0x00C68F 03:867F: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x00C692 03:8682: 29 80     AND #$80
C - - - - - 0x00C694 03:8684: D0 06     BNE bra_868C
C - - - - - 0x00C696 03:8686: 20 C9 87  JSR sub_87C9
C - - - - - 0x00C699 03:8689: B0 01     BCS bra_868C
C - - - - - 0x00C69B 03:868B: 60        RTS
bra_868C:
C - - - - - 0x00C69C 03:868C: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x00C69F 03:868F: D0 1B     BNE bra_86AC
C - - - - - 0x00C6A1 03:8691: A9 80     LDA #$80
C - - - - - 0x00C6A3 03:8693: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x00C6A6 03:8696: A9 0A     LDA #con_obj_type_0A
C - - - - - 0x00C6A8 03:8698: A0 06     LDY #$06
C - - - - - 0x00C6AA 03:869A: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x00C6AD 03:869D: A5 32     LDA ram_blk_hi
C - - - - - 0x00C6AF 03:869F: C9 03     CMP #$03
C - - - - - 0x00C6B1 03:86A1: D0 05     BNE bra_86A8
C - - - - - 0x00C6B3 03:86A3: A9 0C     LDA #con_sound_door
C - - - - - 0x00C6B5 03:86A5: 20 5F E2  JSR sub_0x03E26F_play_sound
bra_86A8:
C - - - - - 0x00C6B8 03:86A8: FE 1D 06  INC ram_061D_obj,X
bra_86AB_RTS:
C - - - - - 0x00C6BB 03:86AB: 60        RTS
bra_86AC:
C - - - - - 0x00C6BC 03:86AC: 20 F0 88  JSR sub_88F0
C - - - - - 0x00C6BF 03:86AF: 90 FA     BCC bra_86AB_RTS
C - - - - - 0x00C6C1 03:86B1: AD F3 07  LDA ram_07F3
C - - - - - 0x00C6C4 03:86B4: 29 7F     AND #$7F
C - - - - - 0x00C6C6 03:86B6: 8D F3 07  STA ram_07F3
C - - - - - 0x00C6C9 03:86B9: 20 76 86  JSR sub_8676
C - - - - - 0x00C6CC 03:86BC: A9 02     LDA #$02
C - - - - - 0x00C6CE 03:86BE: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x00C6D1 03:86C1: A9 40     LDA #$40
C - - - - - 0x00C6D3 03:86C3: 85 3D     STA ram_hp_boss
C - - - - - 0x00C6D5 03:86C5: 9D 7B 06  STA ram_obj_hp,X
C - - - - - 0x00C6D8 03:86C8: A9 00     LDA #$00
C - - - - - 0x00C6DA 03:86CA: 9D 54 04  STA ram_0454_obj,X
C - - - - - 0x00C6DD 03:86CD: 4C 74 99  JMP loc_9974



loc_86D0:
C D 0 - - - 0x00C6E0 03:86D0: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x00C6E3 03:86D3: 29 80     AND #$80
C - - - - - 0x00C6E5 03:86D5: D0 06     BNE bra_86DD
C - - - - - 0x00C6E7 03:86D7: 20 C9 87  JSR sub_87C9
C - - - - - 0x00C6EA 03:86DA: B0 01     BCS bra_86DD
C - - - - - 0x00C6EC 03:86DC: 60        RTS
bra_86DD:
C - - - - - 0x00C6ED 03:86DD: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x00C6F0 03:86E0: D0 10     BNE bra_86F2
C - - - - - 0x00C6F2 03:86E2: A9 80     LDA #$80
C - - - - - 0x00C6F4 03:86E4: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x00C6F7 03:86E7: A9 10     LDA #con_obj_type_10
C - - - - - 0x00C6F9 03:86E9: A0 3B     LDY #$3B
C - - - - - 0x00C6FB 03:86EB: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x00C6FE 03:86EE: FE 1D 06  INC ram_061D_obj,X
C - - - - - 0x00C701 03:86F1: 60        RTS
bra_86F2:
C - - - - - 0x00C702 03:86F2: 20 F0 88  JSR sub_88F0
C - - - - - 0x00C705 03:86F5: 90 3E     BCC bra_8735_RTS
C - - - - - 0x00C707 03:86F7: AD F3 07  LDA ram_07F3
C - - - - - 0x00C70A 03:86FA: 29 7F     AND #$7F
C - - - - - 0x00C70C 03:86FC: 8D F3 07  STA ram_07F3
C - - - - - 0x00C70F 03:86FF: 20 76 86  JSR sub_8676
C - - - - - 0x00C712 03:8702: A9 0E     LDA #$0E
C - - - - - 0x00C714 03:8704: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x00C717 03:8707: 20 68 99  JSR sub_9968
C - - - - - 0x00C71A 03:870A: A9 40     LDA #$40
C - - - - - 0x00C71C 03:870C: 85 3D     STA ram_hp_boss
C - - - - - 0x00C71E 03:870E: 99 70 04  STA ram_obj_flags,Y ; con_obj_flag_40
C - - - - - 0x00C721 03:8711: 4A        LSR
C - - - - - 0x00C722 03:8712: 99 7B 06  STA ram_obj_hp,Y
C - - - - - 0x00C725 03:8715: 9D 7B 06  STA ram_obj_hp,X
C - - - - - 0x00C728 03:8718: A9 01     LDA #$01
C - - - - - 0x00C72A 03:871A: 99 06 06  STA ram_obj_config,Y
C - - - - - 0x00C72D 03:871D: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x00C730 03:8720: 86 17     STX ram_0017_temp
C - - - - - 0x00C732 03:8722: 98        TYA
C - - - - - 0x00C733 03:8723: AA        TAX
C - - - - - 0x00C734 03:8724: A9 10     LDA #con_obj_type_10
C - - - - - 0x00C736 03:8726: A0 3B     LDY #$3B
C - - - - - 0x00C738 03:8728: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x00C73B 03:872B: A6 17     LDX ram_0017_temp
C - - - - - 0x00C73D 03:872D: A9 00     LDA #$00
C - - - - - 0x00C73F 03:872F: 9D 54 04  STA ram_0454_obj,X
C - - - - - 0x00C742 03:8732: 8D F1 07  STA ram_07F1
bra_8735_RTS:
C - - - - - 0x00C745 03:8735: 60        RTS


; bzk garbage
- - - - - - 0x00C746 03:8736: A9 C8     LDA #con_obj_flag_08 + con_obj_flag_40 + con_obj_flag_not_visible
- - - - - - 0x00C748 03:8738: 9D 70 04  STA ram_obj_flags,X
- - - - - - 0x00C74B 03:873B: A9 02     LDA #$02
- - - - - - 0x00C74D 03:873D: 8D EE 07  STA ram_07EE
- - - - - - 0x00C750 03:8740: A9 00     LDA #$00
- - - - - - 0x00C752 03:8742: 9D 06 06  STA ram_obj_config,X
- - - - - - 0x00C755 03:8745: A9 40     LDA #$40
- - - - - - 0x00C757 03:8747: 9D 7B 06  STA ram_obj_hp,X
- - - - - - 0x00C75A 03:874A: 95 3D     STA ram_hp_boss,X
- - - - - - 0x00C75C 03:874C: A9 A0     LDA #$A0
- - - - - - 0x00C75E 03:874E: 9D 1C 04  STA ram_obj_pos_Y_hi,X
- - - - - - 0x00C761 03:8751: 9D 38 04  STA ram_obj_pos_X_hi,X
- - - - - - 0x00C764 03:8754: A0 26     LDY #con__chr_bank + $26
- - - - - - 0x00C766 03:8756: 84 48     STY ram_chr_bank_5122
- - - - - - 0x00C768 03:8758: C8        INY ; con__chr_bank + $27
- - - - - - 0x00C769 03:8759: 84 49     STY ram_chr_bank_5123
- - - - - - 0x00C76B 03:875B: 4C 3C E3  JMP loc_0x03E34C



loc_875E:
C D 0 - - - 0x00C76E 03:875E: BC 06 06  LDY ram_obj_config,X
C - - - - - 0x00C771 03:8761: D0 12     BNE bra_8775
; 00
C - - - - - 0x00C773 03:8763: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x00C776 03:8766: 20 BF 87  JSR sub_87BF
C - - - - - 0x00C779 03:8769: A9 00     LDA #$00
C - - - - - 0x00C77B 03:876B: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x00C77E 03:876E: A9 04     LDA #$04
C - - - - - 0x00C780 03:8770: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x00C783 03:8773: D0 23     BNE bra_8798    ; jmp
bra_8775:
C - - - - - 0x00C785 03:8775: 88        DEY
C - - - - - 0x00C786 03:8776: D0 24     BNE bra_879C
; 01
C - - - - - 0x00C788 03:8778: A9 40     LDA #con_obj_flag_40
C - - - - - 0x00C78A 03:877A: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x00C78D 03:877D: DE D8 05  DEC ram_05D8_obj,X
C - - - - - 0x00C790 03:8780: D0 15     BNE bra_8797_RTS
C - - - - - 0x00C792 03:8782: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x00C795 03:8785: 20 BF 87  JSR sub_87BF
C - - - - - 0x00C798 03:8788: FE 1D 06  INC ram_061D_obj,X
C - - - - - 0x00C79B 03:878B: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x00C79E 03:878E: C9 03     CMP #$03
C - - - - - 0x00C7A0 03:8790: F0 06     BEQ bra_8798
C - - - - - 0x00C7A2 03:8792: A9 04     LDA #$04
C - - - - - 0x00C7A4 03:8794: 9D D8 05  STA ram_05D8_obj,X
bra_8797_RTS:
C - - - - - 0x00C7A7 03:8797: 60        RTS
loc_8798:
bra_8798:
C D 0 - - - 0x00C7A8 03:8798: FE 06 06  INC ram_obj_config,X
C - - - - - 0x00C7AB 03:879B: 60        RTS
bra_879C:
C - - - - - 0x00C7AC 03:879C: 88        DEY
C - - - - - 0x00C7AD 03:879D: D0 0F     BNE bra_87AE_03
; 02
C - - - - - 0x00C7AF 03:879F: A9 10     LDA #con_obj_type_10
C - - - - - 0x00C7B1 03:87A1: A0 2B     LDY #$2B
C - - - - - 0x00C7B3 03:87A3: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x00C7B6 03:87A6: A9 4A     LDA #$4A
C - - - - - 0x00C7B8 03:87A8: 20 4C 99  JSR sub_994C
C - - - - - 0x00C7BB 03:87AB: 4C 98 87  JMP loc_8798
bra_87AE_03:
C - - - - - 0x00C7BE 03:87AE: 20 09 95  JSR sub_9509
C - - - - - 0x00C7C1 03:87B1: F0 01     BEQ bra_87B4
C - - - - - 0x00C7C3 03:87B3: 60        RTS
bra_87B4:
C - - - - - 0x00C7C4 03:87B4: AD F3 07  LDA ram_07F3
C - - - - - 0x00C7C7 03:87B7: 29 7F     AND #$7F
C - - - - - 0x00C7C9 03:87B9: 8D F3 07  STA ram_07F3
C - - - - - 0x00C7CC 03:87BC: 4C 76 86  JMP loc_8676



sub_87BF:
C - - - - - 0x00C7CF 03:87BF: 86 02     STX ram_0002_temp
C - - - - - 0x00C7D1 03:87C1: 18        CLC
C - - - - - 0x00C7D2 03:87C2: 69 11     ADC #$11
C - - - - - 0x00C7D4 03:87C4: 85 C1     STA ram_00C1
C - - - - - 0x00C7D6 03:87C6: 4C 1E E6  JMP loc_0x03E62E



sub_87C9:
C - - - - - 0x00C7D9 03:87C9: BC 06 06  LDY ram_obj_config,X
C - - - - - 0x00C7DC 03:87CC: D0 22     BNE bra_87F0
; 00
C - - - - - 0x00C7DE 03:87CE: A9 26     LDA #con__chr_bank + $26
C - - - - - 0x00C7E0 03:87D0: 85 48     STA ram_chr_bank_5122
C - - - - - 0x00C7E2 03:87D2: A9 29     LDA #con__chr_bank + $29
C - - - - - 0x00C7E4 03:87D4: 85 49     STA ram_chr_bank_5123
C - - - - - 0x00C7E6 03:87D6: 20 3C E3  JSR sub_0x03E34C
C - - - - - 0x00C7E9 03:87D9: A9 00     LDA #$00
C - - - - - 0x00C7EB 03:87DB: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x00C7EE 03:87DE: A9 40     LDA #con_obj_flag_40
C - - - - - 0x00C7F0 03:87E0: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x00C7F3 03:87E3: A9 10     LDA #con_obj_type_10
C - - - - - 0x00C7F5 03:87E5: A0 39     LDY #$39
C - - - - - 0x00C7F7 03:87E7: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x00C7FA 03:87EA: FE 06 06  INC ram_obj_config,X
C - - - - - 0x00C7FD 03:87ED: 4C DA 88  JMP loc_88DA_CLC
bra_87F0:
C - - - - - 0x00C800 03:87F0: 88        DEY
C - - - - - 0x00C801 03:87F1: D0 22     BNE bra_8815
; 01
C - - - - - 0x00C803 03:87F3: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x00C806 03:87F6: C9 70     CMP #$70
C - - - - - 0x00C808 03:87F8: B0 0B     BCS bra_8805
C - - - - - 0x00C80A 03:87FA: A9 00     LDA #$00
C - - - - - 0x00C80C 03:87FC: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x00C80F 03:87FF: FE 06 06  INC ram_obj_config,X
C - - - - - 0x00C812 03:8802: 4C DA 88  JMP loc_88DA_CLC
bra_8805:
C - - - - - 0x00C815 03:8805: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x00C818 03:8808: A9 FF     LDA #> $FF80
C - - - - - 0x00C81A 03:880A: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x00C81D 03:880D: A9 80     LDA #< $FF80
C - - - - - 0x00C81F 03:880F: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x00C822 03:8812: 4C DA 88  JMP loc_88DA_CLC
bra_8815:
C - - - - - 0x00C825 03:8815: 88        DEY
C - - - - - 0x00C826 03:8816: D0 73     BNE bra_888B
; 02
C - - - - - 0x00C828 03:8818: A9 00     LDA #$00
C - - - - - 0x00C82A 03:881A: 85 00     STA ram_0000_t0C2_flag
C - - - - - 0x00C82C 03:881C: BC 1D 06  LDY ram_061D_obj,X
C - - - - - 0x00C82F 03:881F: C0 02     CPY #$02
C - - - - - 0x00C831 03:8821: D0 0B     BNE bra_882E
C - - - - - 0x00C833 03:8823: A9 80     LDA #$80
C - - - - - 0x00C835 03:8825: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x00C838 03:8828: FE 06 06  INC ram_obj_config,X
C - - - - - 0x00C83B 03:882B: 4C DA 88  JMP loc_88DA_CLC
bra_882E:
C - - - - - 0x00C83E 03:882E: 20 C7 88  JSR sub_88C7
C - - - - - 0x00C841 03:8831: 98        TYA
C - - - - - 0x00C842 03:8832: 0A        ASL
C - - - - - 0x00C843 03:8833: 18        CLC
C - - - - - 0x00C844 03:8834: 7D 1D 06  ADC ram_061D_obj,X
C - - - - - 0x00C847 03:8837: A8        TAY
C - - - - - 0x00C848 03:8838: B9 DC 88  LDA tbl_88DC,Y
C - - - - - 0x00C84B 03:883B: C9 FF     CMP #$FF
C - - - - - 0x00C84D 03:883D: D0 06     BNE bra_8845
C - - - - - 0x00C84F 03:883F: 20 C7 88  JSR sub_88C7
C - - - - - 0x00C852 03:8842: B9 E6 88  LDA tbl_88E6,Y
bra_8845:
C - - - - - 0x00C855 03:8845: 38        SEC
C - - - - - 0x00C856 03:8846: FD 38 04  SBC ram_obj_pos_X_hi,X
C - - - - - 0x00C859 03:8849: B0 07     BCS bra_8852
C - - - - - 0x00C85B 03:884B: 49 FF     EOR #$FF
C - - - - - 0x00C85D 03:884D: 18        CLC
C - - - - - 0x00C85E 03:884E: 69 01     ADC #$01
C - - - - - 0x00C860 03:8850: E6 00     INC ram_0000_t0C2_flag   ; -> 01
bra_8852:
C - - - - - 0x00C862 03:8852: C9 02     CMP #$02
C - - - - - 0x00C864 03:8854: B0 0B     BCS bra_8861
C - - - - - 0x00C866 03:8856: FE 1D 06  INC ram_061D_obj,X
C - - - - - 0x00C869 03:8859: A9 00     LDA #$00
C - - - - - 0x00C86B 03:885B: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x00C86E 03:885E: 4C DA 88  JMP loc_88DA_CLC
bra_8861:
C - - - - - 0x00C871 03:8861: A9 00     LDA #> $0080
C - - - - - 0x00C873 03:8863: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x00C876 03:8866: A9 80     LDA #< $0080
C - - - - - 0x00C878 03:8868: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x00C87B 03:886B: A5 00     LDA ram_0000_t0C2_flag
C - - - - - 0x00C87D 03:886D: F0 0A     BEQ bra_8879
C - - - - - 0x00C87F 03:886F: A9 FF     LDA #> $FF80
C - - - - - 0x00C881 03:8871: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x00C884 03:8874: A9 80     LDA #< $FF80
C - - - - - 0x00C886 03:8876: 9D 09 05  STA ram_obj_spd_X_lo,X
bra_8879:
C - - - - - 0x00C889 03:8879: A9 00     LDA #$00
C - - - - - 0x00C88B 03:887B: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x00C88E 03:887E: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x00C891 03:8881: A9 50     LDA #$50
C - - - - - 0x00C893 03:8883: 09 80     ORA #$80
C - - - - - 0x00C895 03:8885: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x00C898 03:8888: 4C DA 88  JMP loc_88DA_CLC
bra_888B:
; 03
C - - - - - 0x00C89B 03:888B: 20 C7 88  JSR sub_88C7
C - - - - - 0x00C89E 03:888E: B9 EB 88  LDA tbl_88EB,Y
C - - - - - 0x00C8A1 03:8891: DD 1C 04  CMP ram_obj_pos_Y_hi,X
C - - - - - 0x00C8A4 03:8894: B0 0E     BCS bra_88A4
C - - - - - 0x00C8A6 03:8896: 20 A0 99  JSR sub_99A0
C - - - - - 0x00C8A9 03:8899: A9 00     LDA #$00
C - - - - - 0x00C8AB 03:889B: 9D 45 06  STA ram_obj_0646,X
C - - - - - 0x00C8AE 03:889E: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x00C8B1 03:88A1: 4C D8 88  JMP loc_88D8_SEC
bra_88A4:
C - - - - - 0x00C8B4 03:88A4: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x00C8B7 03:88A7: C9 98     CMP #$98
C - - - - - 0x00C8B9 03:88A9: 90 05     BCC bra_88B0
C - - - - - 0x00C8BB 03:88AB: A9 C8     LDA #con_obj_flag_08 + con_obj_flag_40 + con_obj_flag_not_visible
C - - - - - 0x00C8BD 03:88AD: 9D 70 04  STA ram_obj_flags,X
bra_88B0:
C - - - - - 0x00C8C0 03:88B0: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x00C8C3 03:88B3: C9 80     CMP #$80
C - - - - - 0x00C8C5 03:88B5: 90 05     BCC bra_88BC
C - - - - - 0x00C8C7 03:88B7: A9 21     LDA #$21
C - - - - - 0x00C8C9 03:88B9: 9D 54 04  STA ram_0454_obj,X
bra_88BC:
C - - - - - 0x00C8CC 03:88BC: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x00C8CF 03:88BF: A9 01     LDA #$01
C - - - - - 0x00C8D1 03:88C1: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x00C8D4 03:88C4: 4C DA 88  JMP loc_88DA_CLC



sub_88C7:
C - - - - - 0x00C8D7 03:88C7: A0 00     LDY #$00
C - - - - - 0x00C8D9 03:88C9: A5 32     LDA ram_blk_hi
C - - - - - 0x00C8DB 03:88CB: C9 03     CMP #$03
C - - - - - 0x00C8DD 03:88CD: F0 02     BEQ bra_88D1
C - - - - - 0x00C8DF 03:88CF: A0 02     LDY #$02
bra_88D1:
C - - - - - 0x00C8E1 03:88D1: 98        TYA
C - - - - - 0x00C8E2 03:88D2: 18        CLC
C - - - - - 0x00C8E3 03:88D3: 6D EE 07  ADC ram_07EE
C - - - - - 0x00C8E6 03:88D6: A8        TAY
C - - - - - 0x00C8E7 03:88D7: 60        RTS



loc_88D8_SEC:
; bzk optimize, paste this code instead of JMPs to here
C D 0 - - - 0x00C8E8 03:88D8: 38        SEC
C - - - - - 0x00C8E9 03:88D9: 60        RTS



loc_88DA_CLC:
; bzk optimize, paste this code instead of JMPs to here
C D 0 - - - 0x00C8EA 03:88DA: 18        CLC
C - - - - - 0x00C8EB 03:88DB: 60        RTS



tbl_88DC:
- D 0 - - - 0x00C8EC 03:88DC: 10        .byte $10   ; 00 
- D 0 - - - 0x00C8ED 03:88DD: FF        .byte $FF   ; 01 
- D 0 - - - 0x00C8EE 03:88DE: D0        .byte $D0   ; 02 
- D 0 - - - 0x00C8EF 03:88DF: FF        .byte $FF   ; 03 
- D 0 - - - 0x00C8F0 03:88E0: 10        .byte $10   ; 04 
- D 0 - - - 0x00C8F1 03:88E1: FF        .byte $FF   ; 05 
- D 0 - - - 0x00C8F2 03:88E2: D0        .byte $D0   ; 06 
- D 0 - - - 0x00C8F3 03:88E3: FF        .byte $FF   ; 07 
- D 0 - - - 0x00C8F4 03:88E4: 60        .byte $60   ; 08 
- D 0 - - - 0x00C8F5 03:88E5: FF        .byte $FF   ; 09 



tbl_88E6:
- D 0 - - - 0x00C8F6 03:88E6: 50        .byte $50   ; 00 
- D 0 - - - 0x00C8F7 03:88E7: B0        .byte $B0   ; 01 
- D 0 - - - 0x00C8F8 03:88E8: 50        .byte $50   ; 02 
- D 0 - - - 0x00C8F9 03:88E9: B0        .byte $B0   ; 03 
- D 0 - - - 0x00C8FA 03:88EA: 80        .byte $80   ; 04 



tbl_88EB:
- D 0 - - - 0x00C8FB 03:88EB: A8        .byte $A8   ; 00 
- D 0 - - - 0x00C8FC 03:88EC: B0        .byte $B0   ; 01 
- D 0 - - - 0x00C8FD 03:88ED: A8        .byte $A8   ; 02 
- D 0 - - - 0x00C8FE 03:88EE: B0        .byte $B0   ; 03 
- D 0 - - - 0x00C8FF 03:88EF: A0        .byte $A0   ; 04 



sub_88F0:
C - - - - - 0x00C900 03:88F0: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x00C903 03:88F3: 29 7F     AND #$7F
C - - - - - 0x00C905 03:88F5: A8        TAY
C - - - - - 0x00C906 03:88F6: D0 21     BNE bra_8919
; 00
C - - - - - 0x00C908 03:88F8: A9 08     LDA #$08
C - - - - - 0x00C90A 03:88FA: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x00C90D 03:88FD: A9 51     LDA #con__chr_bank + $51
C - - - - - 0x00C90F 03:88FF: 85 4B     STA ram_chr_bank______5129
C - - - - - 0x00C911 03:8901: AD EE 07  LDA ram_07EE
C - - - - - 0x00C914 03:8904: 0A        ASL
C - - - - - 0x00C915 03:8905: A8        TAY
C - - - - - 0x00C916 03:8906: B9 C1 89  LDA tbl_89C1_chr_bank,Y
C - - - - - 0x00C919 03:8909: 85 48     STA ram_chr_bank_5122
C - - - - - 0x00C91B 03:890B: B9 C2 89  LDA tbl_89C1_chr_bank + $01,Y
C - - - - - 0x00C91E 03:890E: 85 49     STA ram_chr_bank_5123
C - - - - - 0x00C920 03:8910: 20 3C E3  JSR sub_0x03E34C
C - - - - - 0x00C923 03:8913: FE 06 06  INC ram_obj_config,X
C - - - - - 0x00C926 03:8916: 4C DA 88  JMP loc_88DA_CLC
bra_8919:
C - - - - - 0x00C929 03:8919: 88        DEY
C - - - - - 0x00C92A 03:891A: D0 14     BNE bra_8930
; 01
C - - - - - 0x00C92C 03:891C: DE D8 05  DEC ram_05D8_obj,X
C - - - - - 0x00C92F 03:891F: D0 0C     BNE bra_892D
C - - - - - 0x00C931 03:8921: A9 40     LDA #con_obj_flag_40
C - - - - - 0x00C933 03:8923: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x00C936 03:8926: A9 00     LDA #$00
C - - - - - 0x00C938 03:8928: 85 04     STA ram_0004_temp
C - - - - - 0x00C93A 03:892A: 20 56 89  JSR sub_8956
bra_892D:
C - - - - - 0x00C93D 03:892D: 4C DA 88  JMP loc_88DA_CLC
bra_8930:
C - - - - - 0x00C940 03:8930: 88        DEY
C - - - - - 0x00C941 03:8931: D0 0F     BNE bra_8942
; 02
C - - - - - 0x00C943 03:8933: DE D8 05  DEC ram_05D8_obj,X
C - - - - - 0x00C946 03:8936: D0 F5     BNE bra_892D
C - - - - - 0x00C948 03:8938: A9 01     LDA #$01
C - - - - - 0x00C94A 03:893A: 85 04     STA ram_0004_temp
C - - - - - 0x00C94C 03:893C: 20 56 89  JSR sub_8956
C - - - - - 0x00C94F 03:893F: 4C DA 88  JMP loc_88DA_CLC
bra_8942:
; 03
C - - - - - 0x00C952 03:8942: DE D8 05  DEC ram_05D8_obj,X
C - - - - - 0x00C955 03:8945: D0 E6     BNE bra_892D
C - - - - - 0x00C957 03:8947: A9 02     LDA #$02
C - - - - - 0x00C959 03:8949: 85 04     STA ram_0004_temp
C - - - - - 0x00C95B 03:894B: 20 56 89  JSR sub_8956
C - - - - - 0x00C95E 03:894E: A9 00     LDA #$00
C - - - - - 0x00C960 03:8950: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x00C963 03:8953: 4C D8 88  JMP loc_88D8_SEC



sub_8956:
C - - - - - 0x00C966 03:8956: A0 00     LDY #$00
C - - - - - 0x00C968 03:8958: A5 32     LDA ram_blk_hi
C - - - - - 0x00C96A 03:895A: C9 03     CMP #$03
C - - - - - 0x00C96C 03:895C: F0 02     BEQ bra_8960
C - - - - - 0x00C96E 03:895E: A0 02     LDY #$02
bra_8960:
C - - - - - 0x00C970 03:8960: 98        TYA
C - - - - - 0x00C971 03:8961: 18        CLC
C - - - - - 0x00C972 03:8962: 6D EE 07  ADC ram_07EE
C - - - - - 0x00C975 03:8965: 0A        ASL
C - - - - - 0x00C976 03:8966: A8        TAY
C - - - - - 0x00C977 03:8967: B9 2A 8A  LDA tbl_8A2A_ppu_address,Y
C - - - - - 0x00C97A 03:896A: 85 61     STA ram_ppu_address_lo
C - - - - - 0x00C97C 03:896C: A5 57     LDA ram_cam_pos_hi
C - - - - - 0x00C97E 03:896E: 29 01     AND #$01
C - - - - - 0x00C980 03:8970: 45 75     EOR ram_0075
C - - - - - 0x00C982 03:8972: F0 02     BEQ bra_8976
C - - - - - 0x00C984 03:8974: A9 04     LDA #$04
bra_8976:
C - - - - - 0x00C986 03:8976: 19 2B 8A  ORA tbl_8A2A_ppu_address + $01,Y
C - - - - - 0x00C989 03:8979: 85 62     STA ram_ppu_address_hi
C - - - - - 0x00C98B 03:897B: 20 87 89  JSR sub_8987
C - - - - - 0x00C98E 03:897E: A9 04     LDA #$04
C - - - - - 0x00C990 03:8980: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x00C993 03:8983: FE 06 06  INC ram_obj_config,X
C - - - - - 0x00C996 03:8986: 60        RTS



sub_8987:
C - - - - - 0x00C997 03:8987: A9 00     LDA #$00
C - - - - - 0x00C999 03:8989: 85 16     STA ram_0016_temp
bra_898B_loop:
C - - - - - 0x00C99B 03:898B: 20 AF E8  JSR sub_0x03E8BF_set_buffer_mode_02
C - - - - - 0x00C99E 03:898E: A5 16     LDA ram_0016_temp
; * 08
C - - - - - 0x00C9A0 03:8990: 0A        ASL
C - - - - - 0x00C9A1 03:8991: 0A        ASL
C - - - - - 0x00C9A2 03:8992: 0A        ASL
C - - - - - 0x00C9A3 03:8993: A4 04     LDY ram_0004_temp
C - - - - - 0x00C9A5 03:8995: 18        CLC
C - - - - - 0x00C9A6 03:8996: 79 C7 89  ADC tbl_89C7_offset,Y
C - - - - - 0x00C9A9 03:8999: A8        TAY
C - - - - - 0x00C9AA 03:899A: A9 08     LDA #$08
C - - - - - 0x00C9AC 03:899C: 85 15     STA ram_0015_temp
bra_899E_loop:
C - - - - - 0x00C9AE 03:899E: B9 CA 89  LDA tbl_89CA_tiles,Y
C - - - - - 0x00C9B1 03:89A1: 20 16 ED  JSR sub_0x03ED26_write_byte_to_buffer_X
C - - - - - 0x00C9B4 03:89A4: C8        INY
C - - - - - 0x00C9B5 03:89A5: C6 15     DEC ram_0015_temp
C - - - - - 0x00C9B7 03:89A7: D0 F5     BNE bra_899E_loop
C - - - - - 0x00C9B9 03:89A9: E6 61     INC ram_ppu_address_lo
; bzk optimize, no need for LDA to check overflow after INC
C - - - - - 0x00C9BB 03:89AB: A5 61     LDA ram_ppu_address_lo
C - - - - - 0x00C9BD 03:89AD: D0 02     BNE bra_89B1_not_overflow
- - - - - - 0x00C9BF 03:89AF: E6 62     INC ram_ppu_address_hi
bra_89B1_not_overflow:
C - - - - - 0x00C9C1 03:89B1: A9 FF     LDA #$FF
C - - - - - 0x00C9C3 03:89B3: 20 16 ED  JSR sub_0x03ED26_write_byte_to_buffer_X
C - - - - - 0x00C9C6 03:89B6: E6 16     INC ram_0016_temp
C - - - - - 0x00C9C8 03:89B8: A5 16     LDA ram_0016_temp
C - - - - - 0x00C9CA 03:89BA: C9 04     CMP #$04
C - - - - - 0x00C9CC 03:89BC: D0 CD     BNE bra_898B_loop
C - - - - - 0x00C9CE 03:89BE: A6 6C     LDX ram_006C_object_index
C - - - - - 0x00C9D0 03:89C0: 60        RTS



tbl_89C1_chr_bank:
; 00 
- D 0 - - - 0x00C9D1 03:89C1: 26        .byte con__chr_bank + $26   ; 
- D 0 - - - 0x00C9D2 03:89C2: 29        .byte con__chr_bank + $29   ; 
; 01 
- D 0 - - - 0x00C9D3 03:89C3: 1C        .byte con__chr_bank + $1C   ; 
- D 0 - - - 0x00C9D4 03:89C4: 7B        .byte con__chr_bank + $7B   ; 
; 02 
- D 0 - - - 0x00C9D5 03:89C5: 26        .byte con__chr_bank + $26   ; 
- D 0 - - - 0x00C9D6 03:89C6: 27        .byte con__chr_bank + $27   ; 



tbl_89C7_offset:
- D 0 - - - 0x00C9D7 03:89C7: 00        .byte $00   ; 00 
- D 0 - - - 0x00C9D8 03:89C8: 20        .byte $20   ; 01 
- D 0 - - - 0x00C9D9 03:89C9: 40        .byte $40   ; 02 



tbl_89CA_tiles:
; 00 
- D 0 - - - 0x00C9DA 03:89CA: 00        .byte $00, $4A, $4B, $79, $4C, $5C, $6C, $7C   ; 
- D 0 - - - 0x00C9E2 03:89D2: 00        .byte $00, $4B, $6A, $7A, $4D, $3F, $6D, $7D   ; 
- D 0 - - - 0x00C9EA 03:89DA: 00        .byte $00, $5A, $6B, $7B, $4E, $5E, $6E, $7E   ; 
- D 0 - - - 0x00C9F2 03:89E2: 00        .byte $00, $5B, $5A, $5D, $4F, $5F, $6F, $7F   ; 
; 20 
- D 0 - - - 0x00C9FA 03:89EA: 44        .byte $44, $54, $40, $50, $60, $4C, $5C, $6C   ; 
- D 0 - - - 0x00CA02 03:89F2: 00        .byte $00, $47, $41, $51, $61, $71, $64, $74   ; 
- D 0 - - - 0x00CA0A 03:89FA: 00        .byte $00, $70, $42, $52, $62, $72, $65, $75   ; 
- D 0 - - - 0x00CA12 03:8A02: 45        .byte $45, $55, $43, $53, $63, $4F, $5F, $6F   ; 
; 40 
- D 0 - - - 0x00CA1A 03:8A0A: 46        .byte $46, $56, $66, $66, $66, $66, $57, $67   ; 
- D 0 - - - 0x00CA22 03:8A12: 00        .byte $00, $47, $00, $00, $00, $00, $00, $77   ; 
- D 0 - - - 0x00CA2A 03:8A1A: 00        .byte $00, $48, $00, $00, $00, $00, $00, $77   ; 
- D 0 - - - 0x00CA32 03:8A22: 49        .byte $49, $59, $69, $69, $69, $68, $68, $78   ; 



tbl_8A2A_ppu_address:
- D 0 - - - 0x00CA3A 03:8A2A: 08 22     .word $2208 ; 00 
- D 0 - - - 0x00CA3C 03:8A2C: 14 22     .word $2214 ; 01 
- D 0 - - - 0x00CA3E 03:8A2E: 08 22     .word $2208 ; 02 
- D 0 - - - 0x00CA40 03:8A30: 14 22     .word $2214 ; 03 
- D 0 - - - 0x00CA42 03:8A32: 0E 22     .word $220E ; 04 



ofs_042_0x00CA44_09:
C - - J - - 0x00CA44 03:8A34: AD EE 07  LDA ram_07EE
C - - - - - 0x00CA47 03:8A37: C9 02     CMP #$02
C - - - - - 0x00CA49 03:8A39: D0 03     BNE bra_8A3E_RTS
C - - - - - 0x00CA4B 03:8A3B: 4C 40 8C  JMP loc_8C40
bra_8A3E_RTS:
- - - - - - 0x00CA4E 03:8A3E: 60        RTS



ofs_042_0x00CA4F_0E:
C - - J - - 0x00CA4F 03:8A3F: 20 3B 99  JSR sub_993B
C - - - - - 0x00CA52 03:8A42: A5 32     LDA ram_blk_hi
C - - - - - 0x00CA54 03:8A44: C9 03     CMP #$03
C - - - - - 0x00CA56 03:8A46: F0 04     BEQ bra_8A4C
C - - - - - 0x00CA58 03:8A48: A9 04     LDA #$04
C - - - - - 0x00CA5A 03:8A4A: D0 02     BNE bra_8A4E    ; jmp
bra_8A4C:
C - - - - - 0x00CA5C 03:8A4C: A9 03     LDA #$03
bra_8A4E:
C - - - - - 0x00CA5E 03:8A4E: 20 62 99  JSR sub_9962
C - - - - - 0x00CA61 03:8A51: BD 7B 06  LDA ram_obj_hp,X
C - - - - - 0x00CA64 03:8A54: D0 70     BNE bra_8AC6
C - - - - - 0x00CA66 03:8A56: A9 00     LDA #$00
C - - - - - 0x00CA68 03:8A58: 9D 69 06  STA ram_obj_066A,X
C - - - - - 0x00CA6B 03:8A5B: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x00CA6E 03:8A5E: 20 09 95  JSR sub_9509
C - - - - - 0x00CA71 03:8A61: C9 59     CMP #$59
C - - - - - 0x00CA73 03:8A63: F0 18     BEQ bra_8A7D
C - - - - - 0x00CA75 03:8A65: A9 33     LDA #con_sound_destroy_candle
C - - - - - 0x00CA77 03:8A67: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x00CA7A 03:8A6A: A9 40     LDA #con_obj_flag_40
C - - - - - 0x00CA7C 03:8A6C: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x00CA7F 03:8A6F: A9 10     LDA #con_obj_type_10
C - - - - - 0x00CA81 03:8A71: A0 3F     LDY #$3F
C - - - - - 0x00CA83 03:8A73: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x00CA86 03:8A76: A9 59     LDA #$59
C - - - - - 0x00CA88 03:8A78: 09 80     ORA #$80
C - - - - - 0x00CA8A 03:8A7A: 4C 4C 99  JMP loc_994C
bra_8A7D:
C - - - - - 0x00CA8D 03:8A7D: BD C1 05  LDA ram_05C1_obj,X
C - - - - - 0x00CA90 03:8A80: C9 0B     CMP #$0B
C - - - - - 0x00CA92 03:8A82: D0 41     BNE bra_8AC5_RTS
C - - - - - 0x00CA94 03:8A84: A5 3D     LDA ram_hp_boss
C - - - - - 0x00CA96 03:8A86: D0 35     BNE bra_8ABD
C - - - - - 0x00CA98 03:8A88: AD F1 07  LDA ram_07F1
C - - - - - 0x00CA9B 03:8A8B: F0 30     BEQ bra_8ABD
C - - - - - 0x00CA9D 03:8A8D: A9 30     LDA #$30    ; 3000
C - - - - - 0x00CA9F 03:8A8F: 20 78 99  JSR sub_9978_add_points_to_score
C - - - - - 0x00CAA2 03:8A92: A9 10     LDA #con_obj_type_10
C - - - - - 0x00CAA4 03:8A94: A0 39     LDY #$39
C - - - - - 0x00CAA6 03:8A96: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x00CAA9 03:8A99: EE EE 07  INC ram_07EE
C - - - - - 0x00CAAC 03:8A9C: A9 09     LDA #$09
C - - - - - 0x00CAAE 03:8A9E: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x00CAB1 03:8AA1: A9 00     LDA #$00
C - - - - - 0x00CAB3 03:8AA3: 8D F1 07  STA ram_07F1
C - - - - - 0x00CAB6 03:8AA6: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x00CAB9 03:8AA9: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x00CABC 03:8AAC: 20 A0 99  JSR sub_99A0
C - - - - - 0x00CABF 03:8AAF: A9 00     LDA #$00
C - - - - - 0x00CAC1 03:8AB1: 9D 45 06  STA ram_obj_0646,X
C - - - - - 0x00CAC4 03:8AB4: AD F3 07  LDA ram_07F3
C - - - - - 0x00CAC7 03:8AB7: 09 80     ORA #$80
C - - - - - 0x00CAC9 03:8AB9: 8D F3 07  STA ram_07F3
C - - - - - 0x00CACC 03:8ABC: 60        RTS
bra_8ABD:
C - - - - - 0x00CACD 03:8ABD: A9 01     LDA #$01
C - - - - - 0x00CACF 03:8ABF: 8D F1 07  STA ram_07F1
C - - - - - 0x00CAD2 03:8AC2: 4C 52 99  JMP loc_9952
bra_8AC5_RTS:
C - - - - - 0x00CAD5 03:8AC5: 60        RTS
bra_8AC6:
C - - - - - 0x00CAD6 03:8AC6: BD 45 06  LDA ram_obj_0646,X
C - - - - - 0x00CAD9 03:8AC9: D0 08     BNE bra_8AD3
C - - - - - 0x00CADB 03:8ACB: 20 95 8B  JSR sub_8B95
C - - - - - 0x00CADE 03:8ACE: A9 60     LDA #$60
C - - - - - 0x00CAE0 03:8AD0: 9D 45 06  STA ram_obj_0646,X
bra_8AD3:
C - - - - - 0x00CAE3 03:8AD3: DE 45 06  DEC ram_obj_0646,X
C - - - - - 0x00CAE6 03:8AD6: A9 40     LDA #con_obj_flag_40
C - - - - - 0x00CAE8 03:8AD8: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x00CAEB 03:8ADB: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x00CAEE 03:8ADE: 29 80     AND #$80
C - - - - - 0x00CAF0 03:8AE0: D0 60     BNE bra_8B42
C - - - - - 0x00CAF2 03:8AE2: A9 01     LDA #$01
C - - - - - 0x00CAF4 03:8AE4: 85 00     STA ram_0000_temp
C - - - - - 0x00CAF6 03:8AE6: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x00CAF9 03:8AE9: 29 7F     AND #$7F
C - - - - - 0x00CAFB 03:8AEB: F0 06     BEQ bra_8AF3
C - - - - - 0x00CAFD 03:8AED: A9 30     LDA #$30
C - - - - - 0x00CAFF 03:8AEF: 85 02     STA ram_0002_temp
C - - - - - 0x00CB01 03:8AF1: D0 04     BNE bra_8AF7    ; jmp
bra_8AF3:
C - - - - - 0x00CB03 03:8AF3: A9 C0     LDA #$C0
C - - - - - 0x00CB05 03:8AF5: 85 02     STA ram_0002_temp
loc_8AF7:
bra_8AF7:
C D 0 - - - 0x00CB07 03:8AF7: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x00CB0A 03:8AFA: 38        SEC
C - - - - - 0x00CB0B 03:8AFB: E5 02     SBC ram_0002_temp
C - - - - - 0x00CB0D 03:8AFD: B0 07     BCS bra_8B06
C - - - - - 0x00CB0F 03:8AFF: 49 FF     EOR #$FF
C - - - - - 0x00CB11 03:8B01: 18        CLC
C - - - - - 0x00CB12 03:8B02: 69 01     ADC #$01
C - - - - - 0x00CB14 03:8B04: C6 00     DEC ram_0000_temp
bra_8B06:
C - - - - - 0x00CB16 03:8B06: C9 04     CMP #$04
C - - - - - 0x00CB18 03:8B08: B0 15     BCS bra_8B1F
C - - - - - 0x00CB1A 03:8B0A: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x00CB1D 03:8B0D: 29 80     AND #$80
C - - - - - 0x00CB1F 03:8B0F: F0 03     BEQ bra_8B14
C - - - - - 0x00CB21 03:8B11: 20 D2 8B  JSR sub_8BD2
bra_8B14:
C - - - - - 0x00CB24 03:8B14: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x00CB27 03:8B17: 09 80     ORA #$80
C - - - - - 0x00CB29 03:8B19: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x00CB2C 03:8B1C: 4C 30 8B  JMP loc_8B30
bra_8B1F:
C - - - - - 0x00CB2F 03:8B1F: A9 04     LDA #$04
C - - - - - 0x00CB31 03:8B21: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x00CB34 03:8B24: A5 00     LDA ram_0000_temp
C - - - - - 0x00CB36 03:8B26: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x00CB39 03:8B29: F0 05     BEQ bra_8B30_facing_right
C - - - - - 0x00CB3B 03:8B2B: A9 0C     LDA #$0C
C - - - - - 0x00CB3D 03:8B2D: 9D 65 05  STA ram_obj_state,X
loc_8B30:
bra_8B30_facing_right:
C D 0 - - - 0x00CB40 03:8B30: 20 09 95  JSR sub_9509
C - - - - - 0x00CB43 03:8B33: D0 0C     BNE bra_8B41_RTS
C - - - - - 0x00CB45 03:8B35: A9 10     LDA #con_obj_type_10
C - - - - - 0x00CB47 03:8B37: A0 3B     LDY #$3B
C - - - - - 0x00CB49 03:8B39: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x00CB4C 03:8B3C: A9 57     LDA #$57
C - - - - - 0x00CB4E 03:8B3E: 4C 4C 99  JMP loc_994C
bra_8B41_RTS:
C - - - - - 0x00CB51 03:8B41: 60        RTS
bra_8B42:
C - - - - - 0x00CB52 03:8B42: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x00CB55 03:8B45: D0 2E     BNE bra_8B75
C - - - - - 0x00CB57 03:8B47: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x00CB5A 03:8B4A: 29 7F     AND #$7F
C - - - - - 0x00CB5C 03:8B4C: 0A        ASL
C - - - - - 0x00CB5D 03:8B4D: A8        TAY
C - - - - - 0x00CB5E 03:8B4E: B9 DE 8B  LDA tbl_8BDE_pos_X_hi,Y
C - - - - - 0x00CB61 03:8B51: 85 00     STA ram_0000_t013_data
C - - - - - 0x00CB63 03:8B53: B9 DF 8B  LDA tbl_8BDE_pos_X_hi + $01,Y
C - - - - - 0x00CB66 03:8B56: 85 01     STA ram_0000_t013_data + $01
C - - - - - 0x00CB68 03:8B58: BC 1D 06  LDY ram_061D_obj,X
C - - - - - 0x00CB6B 03:8B5B: B1 00     LDA (ram_0000_t013_data),Y
C - - - - - 0x00CB6D 03:8B5D: C9 FF     CMP #$FF
C - - - - - 0x00CB6F 03:8B5F: F0 09     BEQ bra_8B6A_FF
C - - - - - 0x00CB71 03:8B61: 85 02     STA ram_0002_temp
C - - - - - 0x00CB73 03:8B63: A9 01     LDA #$01
C - - - - - 0x00CB75 03:8B65: 85 00     STA ram_0000_temp
C - - - - - 0x00CB77 03:8B67: 4C F7 8A  JMP loc_8AF7
bra_8B6A_FF:
C - - - - - 0x00CB7A 03:8B6A: A9 40     LDA #$40
C - - - - - 0x00CB7C 03:8B6C: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x00CB7F 03:8B6F: A9 20     LDA #con_obj_flag_20
C - - - - - 0x00CB81 03:8B71: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x00CB84 03:8B74: 60        RTS
bra_8B75:
C - - - - - 0x00CB85 03:8B75: DE 33 06  DEC ram_obj_0634,X
C - - - - - 0x00CB88 03:8B78: D0 08     BNE bra_8B82
C - - - - - 0x00CB8A 03:8B7A: A9 40     LDA #con_obj_flag_40
C - - - - - 0x00CB8C 03:8B7C: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x00CB8F 03:8B7F: 20 D2 8B  JSR sub_8BD2
bra_8B82:
C - - - - - 0x00CB92 03:8B82: A9 00     LDA #$00
C - - - - - 0x00CB94 03:8B84: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x00CB97 03:8B87: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x00CB9A 03:8B8A: DD 38 04  CMP ram_obj_pos_X_hi,X
C - - - - - 0x00CB9D 03:8B8D: B0 05     BCS bra_8B94_RTS
C - - - - - 0x00CB9F 03:8B8F: A9 01     LDA #$01    ; facing left
C - - - - - 0x00CBA1 03:8B91: 9D A8 04  STA ram_obj_facing,X
bra_8B94_RTS:
C - - - - - 0x00CBA4 03:8B94: 60        RTS



sub_8B95:
C - - - - - 0x00CBA5 03:8B95: A9 27     LDA #$27
C - - - - - 0x00CBA7 03:8B97: 20 68 99  JSR sub_9968
C - - - - - 0x00CBAA 03:8B9A: A9 40     LDA #con_obj_flag_40
C - - - - - 0x00CBAC 03:8B9C: 99 70 04  STA ram_obj_flags,Y
C - - - - - 0x00CBAF 03:8B9F: A9 80     LDA #$80
C - - - - - 0x00CBB1 03:8BA1: 99 EF 05  STA ram_05EF_obj,Y
C - - - - - 0x00CBB4 03:8BA4: A9 04     LDA #$04
C - - - - - 0x00CBB6 03:8BA6: 99 65 05  STA ram_obj_state,Y
C - - - - - 0x00CBB9 03:8BA9: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x00CBBC 03:8BAC: F0 05     BEQ bra_8BB3_facing_right
C - - - - - 0x00CBBE 03:8BAE: A9 0C     LDA #$0C
C - - - - - 0x00CBC0 03:8BB0: 99 65 05  STA ram_obj_state,Y
bra_8BB3_facing_right:
C - - - - - 0x00CBC3 03:8BB3: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x00CBC6 03:8BB6: 99 A8 04  STA ram_obj_facing,Y
C - - - - - 0x00CBC9 03:8BB9: A9 F8     LDA #$F8
C - - - - - 0x00CBCB 03:8BBB: 85 00     STA ram_0000_temp
C - - - - - 0x00CBCD 03:8BBD: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x00CBD0 03:8BC0: 29 02     AND #$02
C - - - - - 0x00CBD2 03:8BC2: F0 04     BEQ bra_8BC8
C - - - - - 0x00CBD4 03:8BC4: A9 0C     LDA #$0C
C - - - - - 0x00CBD6 03:8BC6: 85 00     STA ram_0000_temp
bra_8BC8:
C - - - - - 0x00CBD8 03:8BC8: B9 1C 04  LDA ram_obj_pos_Y_hi,Y
C - - - - - 0x00CBDB 03:8BCB: 18        CLC
C - - - - - 0x00CBDC 03:8BCC: 65 00     ADC ram_0000_temp
C - - - - - 0x00CBDE 03:8BCE: 99 1C 04  STA ram_obj_pos_Y_hi,Y
C - - - - - 0x00CBE1 03:8BD1: 60        RTS



sub_8BD2:
C - - - - - 0x00CBE2 03:8BD2: FE 1D 06  INC ram_061D_obj,X
C - - - - - 0x00CBE5 03:8BD5: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x00CBE8 03:8BD8: 29 0F     AND #$0F
C - - - - - 0x00CBEA 03:8BDA: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x00CBED 03:8BDD: 60        RTS



tbl_8BDE_pos_X_hi:
- D 0 - - - 0x00CBEE 03:8BDE: E2 8B     .word off_8BE2_00
- D 0 - - - 0x00CBF0 03:8BE0: F2 8B     .word off_8BF2_01



off_8BE2_00:
- D 0 - I - 0x00CBF2 03:8BE2: A0        .byte $A0   ; 00 
- D 0 - I - 0x00CBF3 03:8BE3: FF        .byte $FF   ; 01 
- D 0 - I - 0x00CBF4 03:8BE4: D0        .byte $D0   ; 02 
- D 0 - I - 0x00CBF5 03:8BE5: FF        .byte $FF   ; 03 
- D 0 - I - 0x00CBF6 03:8BE6: 90        .byte $90   ; 04 
- D 0 - I - 0x00CBF7 03:8BE7: FF        .byte $FF   ; 05 
- D 0 - I - 0x00CBF8 03:8BE8: D0        .byte $D0   ; 06 
- D 0 - I - 0x00CBF9 03:8BE9: FF        .byte $FF   ; 07 
- D 0 - I - 0x00CBFA 03:8BEA: 80        .byte $80   ; 08 
- D 0 - I - 0x00CBFB 03:8BEB: FF        .byte $FF   ; 09 
- D 0 - I - 0x00CBFC 03:8BEC: D0        .byte $D0   ; 0A 
- D 0 - I - 0x00CBFD 03:8BED: FF        .byte $FF   ; 0B 
- D 0 - I - 0x00CBFE 03:8BEE: 70        .byte $70   ; 0C 
- - - - - - 0x00CBFF 03:8BEF: FF        .byte $FF   ; 0D 
- - - - - - 0x00CC00 03:8BF0: D0        .byte $D0   ; 0E 
- - - - - - 0x00CC01 03:8BF1: FF        .byte $FF   ; 0F 



off_8BF2_01:
- D 0 - I - 0x00CC02 03:8BF2: 60        .byte $60   ; 00 
- D 0 - I - 0x00CC03 03:8BF3: FF        .byte $FF   ; 01 
- D 0 - I - 0x00CC04 03:8BF4: 20        .byte $20   ; 02 
- D 0 - I - 0x00CC05 03:8BF5: FF        .byte $FF   ; 03 
- D 0 - I - 0x00CC06 03:8BF6: 70        .byte $70   ; 04 
- D 0 - I - 0x00CC07 03:8BF7: FF        .byte $FF   ; 05 
- D 0 - I - 0x00CC08 03:8BF8: 20        .byte $20   ; 06 
- D 0 - I - 0x00CC09 03:8BF9: FF        .byte $FF   ; 07 
- D 0 - I - 0x00CC0A 03:8BFA: 80        .byte $80   ; 08 
- D 0 - I - 0x00CC0B 03:8BFB: FF        .byte $FF   ; 09 
- D 0 - I - 0x00CC0C 03:8BFC: 20        .byte $20   ; 0A 
- D 0 - I - 0x00CC0D 03:8BFD: FF        .byte $FF   ; 0B 
- D 0 - I - 0x00CC0E 03:8BFE: 90        .byte $90   ; 0C 
- - - - - - 0x00CC0F 03:8BFF: FF        .byte $FF   ; 0D 
- - - - - - 0x00CC10 03:8C00: 20        .byte $20   ; 0E 
- - - - - - 0x00CC11 03:8C01: FF        .byte $FF   ; 0F 



ofs_042_0x00CC12_27:
C - - J - - 0x00CC12 03:8C02: A5 3D     LDA ram_hp_boss
C - - - - - 0x00CC14 03:8C04: F0 37     BEQ bra_8C3D
C - - - - - 0x00CC16 03:8C06: 20 3B 99  JSR sub_993B
C - - - - - 0x00CC19 03:8C09: BD 69 06  LDA ram_obj_066A,X
C - - - - - 0x00CC1C 03:8C0C: D0 2A     BNE bra_8C38
C - - - - - 0x00CC1E 03:8C0E: 20 09 95  JSR sub_9509
C - - - - - 0x00CC21 03:8C11: D0 0E     BNE bra_8C21
C - - - - - 0x00CC23 03:8C13: A9 10     LDA #con_obj_type_10
C - - - - - 0x00CC25 03:8C15: A0 43     LDY #$43
C - - - - - 0x00CC27 03:8C17: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x00CC2A 03:8C1A: A9 58     LDA #$58
C - - - - - 0x00CC2C 03:8C1C: 09 80     ORA #$80
C - - - - - 0x00CC2E 03:8C1E: 4C 4C 99  JMP loc_994C
bra_8C21:
C - - - - - 0x00CC31 03:8C21: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x00CC34 03:8C24: C9 08     CMP #$08
C - - - - - 0x00CC36 03:8C26: 90 15     BCC bra_8C3D
C - - - - - 0x00CC38 03:8C28: C9 F8     CMP #$F8
C - - - - - 0x00CC3A 03:8C2A: B0 11     BCS bra_8C3D
C - - - - - 0x00CC3C 03:8C2C: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x00CC3F 03:8C2F: C9 20     CMP #$20
C - - - - - 0x00CC41 03:8C31: 90 0A     BCC bra_8C3D
C - - - - - 0x00CC43 03:8C33: C9 F8     CMP #$F8
C - - - - - 0x00CC45 03:8C35: B0 06     BCS bra_8C3D
C - - - - - 0x00CC47 03:8C37: 60        RTS
bra_8C38:
C - - - - - 0x00CC48 03:8C38: A9 33     LDA #con_sound_destroy_candle
C - - - - - 0x00CC4A 03:8C3A: 20 5F E2  JSR sub_0x03E26F_play_sound
bra_8C3D:
C - - - - - 0x00CC4D 03:8C3D: 4C 52 99  JMP loc_9952



loc_8C40:
C D 0 - - - 0x00CC50 03:8C40: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x00CC53 03:8C43: 29 FC     AND #$FC
C - - - - - 0x00CC55 03:8C45: F0 06     BEQ bra_8C4D
C - - - - - 0x00CC57 03:8C47: C9 FC     CMP #$FC
C - - - - - 0x00CC59 03:8C49: D0 07     BNE bra_8C52
- - - - - - 0x00CC5B 03:8C4B: F0 02     BEQ bra_8C4F_FC    ; jmp
bra_8C4D:
- - - - - - 0x00CC5D 03:8C4D: A9 04     LDA #$04
bra_8C4F_FC:
- - - - - - 0x00CC5F 03:8C4F: 9D 38 04  STA ram_obj_pos_X_hi,X
bra_8C52:
C - - - - - 0x00CC62 03:8C52: AD F3 07  LDA ram_07F3
C - - - - - 0x00CC65 03:8C55: C9 01     CMP #$01
C - - - - - 0x00CC67 03:8C57: D0 42     BNE bra_8C9B
C - - - - - 0x00CC69 03:8C59: A9 01     LDA #con_irq_01
C - - - - - 0x00CC6B 03:8C5B: 85 3F     STA ram_003F_copy_irq_handler
C - - - - - 0x00CC6D 03:8C5D: 20 09 95  JSR sub_9509
C - - - - - 0x00CC70 03:8C60: C9 5B     CMP #$5B
C - - - - - 0x00CC72 03:8C62: F0 14     BEQ bra_8C78
C - - - - - 0x00CC74 03:8C64: A9 50     LDA #$50    ; 5000
C - - - - - 0x00CC76 03:8C66: 20 78 99  JSR sub_9978_add_points_to_score
C - - - - - 0x00CC79 03:8C69: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x00CC7C 03:8C6C: A9 10     LDA #con_obj_type_10
C - - - - - 0x00CC7E 03:8C6E: A0 45     LDY #$45
C - - - - - 0x00CC80 03:8C70: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x00CC83 03:8C73: A9 5B     LDA #$5B
C - - - - - 0x00CC85 03:8C75: 4C 4C 99  JMP loc_994C
bra_8C78:
C - - - - - 0x00CC88 03:8C78: BD C1 05  LDA ram_05C1_obj,X
C - - - - - 0x00CC8B 03:8C7B: C9 09     CMP #$09
C - - - - - 0x00CC8D 03:8C7D: D0 1B     BNE bra_8C9A_RTS
C - - - - - 0x00CC8F 03:8C7F: EE EE 07  INC ram_07EE
C - - - - - 0x00CC92 03:8C82: AD F3 07  LDA ram_07F3
C - - - - - 0x00CC95 03:8C85: 09 80     ORA #$80
C - - - - - 0x00CC97 03:8C87: 8D F3 07  STA ram_07F3
C - - - - - 0x00CC9A 03:8C8A: 20 A0 99  JSR sub_99A0
C - - - - - 0x00CC9D 03:8C8D: A9 00     LDA #$00
C - - - - - 0x00CC9F 03:8C8F: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x00CCA2 03:8C92: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x00CCA5 03:8C95: A9 09     LDA #$09
C - - - - - 0x00CCA7 03:8C97: 9D 4E 05  STA ram_obj_id,X
bra_8C9A_RTS:
C - - - - - 0x00CCAA 03:8C9A: 60        RTS
bra_8C9B:
C - - - - - 0x00CCAB 03:8C9B: 20 56 99  JSR sub_9956
C - - - - - 0x00CCAE 03:8C9E: AD F3 07  LDA ram_07F3
C - - - - - 0x00CCB1 03:8CA1: D0 F7     BNE bra_8C9A_RTS
C - - - - - 0x00CCB3 03:8CA3: A9 30     LDA #$30
C - - - - - 0x00CCB5 03:8CA5: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x00CCB8 03:8CA8: A9 05     LDA #$05    ; damage offset
C - - - - - 0x00CCBA 03:8CAA: 20 5C 99  JSR sub_995C_deal_damage_to_boss
C - - - - - 0x00CCBD 03:8CAD: 20 09 95  JSR sub_9509
C - - - - - 0x00CCC0 03:8CB0: F0 38     BEQ bra_8CEA
C - - - - - 0x00CCC2 03:8CB2: C9 4C     CMP #$4C
C - - - - - 0x00CCC4 03:8CB4: F0 0C     BEQ bra_8CC2
C - - - - - 0x00CCC6 03:8CB6: C9 4D     CMP #$4D
C - - - - - 0x00CCC8 03:8CB8: F0 0C     BEQ bra_8CC6
C - - - - - 0x00CCCA 03:8CBA: C9 4E     CMP #$4E
C - - - - - 0x00CCCC 03:8CBC: D0 03     BNE bra_8CC1_RTS
C - - - - - 0x00CCCE 03:8CBE: 4C 2C 8D  JMP loc_8D2C
bra_8CC1_RTS:
C - - - - - 0x00CCD1 03:8CC1: 60        RTS
bra_8CC2:
C - - - - - 0x00CCD2 03:8CC2: A9 10     LDA #$10
C - - - - - 0x00CCD4 03:8CC4: D0 02     BNE bra_8CC8    ; jmp
bra_8CC6:
C - - - - - 0x00CCD6 03:8CC6: A9 0E     LDA #$0E
bra_8CC8:
C - - - - - 0x00CCD8 03:8CC8: DD C1 05  CMP ram_05C1_obj,X
C - - - - - 0x00CCDB 03:8CCB: D0 1C     BNE bra_8CE9_RTS
C - - - - - 0x00CCDD 03:8CCD: A9 00     LDA #$00
C - - - - - 0x00CCDF 03:8CCF: A0 20     LDY #$20
C - - - - - 0x00CCE1 03:8CD1: 20 1E FC  JSR sub_0x03FC2E
C - - - - - 0x00CCE4 03:8CD4: F0 13     BEQ bra_8CE9_RTS
C - - - - - 0x00CCE6 03:8CD6: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x00CCE9 03:8CD9: A9 37     LDA #con_sound_37
C - - - - - 0x00CCEB 03:8CDB: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x00CCEE 03:8CDE: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x00CCF1 03:8CE1: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x00CCF4 03:8CE4: 29 F0     AND #$F0
C - - - - - 0x00CCF6 03:8CE6: 9D 1C 04  STA ram_obj_pos_Y_hi,X
bra_8CE9_RTS:
C - - - - - 0x00CCF9 03:8CE9: 60        RTS
bra_8CEA:
C - - - - - 0x00CCFA 03:8CEA: A9 00     LDA #$00
C - - - - - 0x00CCFC 03:8CEC: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x00CCFF 03:8CEF: A9 04     LDA #$04
C - - - - - 0x00CD01 03:8CF1: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x00CD04 03:8CF4: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x00CD07 03:8CF7: DD 38 04  CMP ram_obj_pos_X_hi,X
C - - - - - 0x00CD0A 03:8CFA: B0 0A     BCS bra_8D06
C - - - - - 0x00CD0C 03:8CFC: A9 01     LDA #$01    ; facing left
C - - - - - 0x00CD0E 03:8CFE: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x00CD11 03:8D01: A9 0C     LDA #$0C
C - - - - - 0x00CD13 03:8D03: 9D 65 05  STA ram_obj_state,X
bra_8D06:
C - - - - - 0x00CD16 03:8D06: BC 06 06  LDY ram_obj_config,X
C - - - - - 0x00CD19 03:8D09: B9 8E 8D  LDA tbl_8D8E_index,Y
C - - - - - 0x00CD1C 03:8D0C: 0A        ASL
C - - - - - 0x00CD1D 03:8D0D: A8        TAY
C - - - - - 0x00CD1E 03:8D0E: 84 06     STY ram_0006_t00D
C - - - - - 0x00CD20 03:8D10: B9 97 8D  LDA tbl_8D96 + $01,Y
C - - - - - 0x00CD23 03:8D13: A8        TAY
C - - - - - 0x00CD24 03:8D14: A9 10     LDA #con_obj_type_10
C - - - - - 0x00CD26 03:8D16: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x00CD29 03:8D19: FE 06 06  INC ram_obj_config,X
C - - - - - 0x00CD2C 03:8D1C: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x00CD2F 03:8D1F: 29 07     AND #$07
C - - - - - 0x00CD31 03:8D21: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x00CD34 03:8D24: A4 06     LDY ram_0006_t00D
C - - - - - 0x00CD36 03:8D26: B9 96 8D  LDA tbl_8D96,Y
C - - - - - 0x00CD39 03:8D29: 4C 4C 99  JMP loc_994C



loc_8D2C:
C D 0 - - - 0x00CD3C 03:8D2C: BD C1 05  LDA ram_05C1_obj,X
C - - - - - 0x00CD3F 03:8D2F: C9 02     CMP #$02
C - - - - - 0x00CD41 03:8D31: D0 5A     BNE bra_8D8D_RTS
C - - - - - 0x00CD43 03:8D33: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x00CD46 03:8D36: 0A        ASL
C - - - - - 0x00CD47 03:8D37: A8        TAY
C - - - - - 0x00CD48 03:8D38: B9 9E 8D  LDA tbl_8D9E,Y
C - - - - - 0x00CD4B 03:8D3B: 85 08     STA ram_0008_temp
C - - - - - 0x00CD4D 03:8D3D: B9 9F 8D  LDA tbl_8D9E + $01,Y
C - - - - - 0x00CD50 03:8D40: 85 09     STA ram_0009_temp
C - - - - - 0x00CD52 03:8D42: A9 01     LDA #$01
C - - - - - 0x00CD54 03:8D44: 85 17     STA ram_0017_temp
bra_8D46_loop:
C - - - - - 0x00CD56 03:8D46: A9 23     LDA #$23
C - - - - - 0x00CD58 03:8D48: 20 68 99  JSR sub_9968
C - - - - - 0x00CD5B 03:8D4B: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x00CD5E 03:8D4E: 99 38 04  STA ram_obj_pos_X_hi,Y
C - - - - - 0x00CD61 03:8D51: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x00CD64 03:8D54: 99 1C 04  STA ram_obj_pos_Y_hi,Y
C - - - - - 0x00CD67 03:8D57: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x00CD6A 03:8D5A: 99 A8 04  STA ram_obj_facing,Y
C - - - - - 0x00CD6D 03:8D5D: A9 CF     LDA #$CF
C - - - - - 0x00CD6F 03:8D5F: 99 EF 05  STA ram_05EF_obj,Y
C - - - - - 0x00CD72 03:8D62: A9 00     LDA #$00
C - - - - - 0x00CD74 03:8D64: 99 C1 05  STA ram_05C1_obj,Y
C - - - - - 0x00CD77 03:8D67: A9 40     LDA #con_obj_flag_40
C - - - - - 0x00CD79 03:8D69: 99 70 04  STA ram_obj_flags,Y
C - - - - - 0x00CD7C 03:8D6C: A5 17     LDA ram_0017_temp
C - - - - - 0x00CD7E 03:8D6E: 18        CLC
C - - - - - 0x00CD7F 03:8D6F: 7D 65 05  ADC ram_obj_state,X
C - - - - - 0x00CD82 03:8D72: 99 65 05  STA ram_obj_state,Y
C - - - - - 0x00CD85 03:8D75: 8A        TXA
C - - - - - 0x00CD86 03:8D76: 48        PHA
C - - - - - 0x00CD87 03:8D77: 98        TYA
C - - - - - 0x00CD88 03:8D78: AA        TAX
C - - - - - 0x00CD89 03:8D79: A0 0A     LDY #$0A
C - - - - - 0x00CD8B 03:8D7B: A9 14     LDA #con_obj_type_14
C - - - - - 0x00CD8D 03:8D7D: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x00CD90 03:8D80: 20 75 EF  JSR sub_0x03EF85
C - - - - - 0x00CD93 03:8D83: 68        PLA
C - - - - - 0x00CD94 03:8D84: AA        TAX
C - - - - - 0x00CD95 03:8D85: C6 17     DEC ram_0017_temp
C - - - - - 0x00CD97 03:8D87: A5 17     LDA ram_0017_temp
C - - - - - 0x00CD99 03:8D89: C9 FE     CMP #$FE
C - - - - - 0x00CD9B 03:8D8B: D0 B9     BNE bra_8D46_loop
bra_8D8D_RTS:
C - - - - - 0x00CD9D 03:8D8D: 60        RTS



tbl_8D8E_index:
; for 0x00CDA6
- D 0 - - - 0x00CD9E 03:8D8E: 00        .byte $00   ; 00 
- D 0 - - - 0x00CD9F 03:8D8F: 01        .byte $01   ; 01 
- D 0 - - - 0x00CDA0 03:8D90: 00        .byte $00   ; 02 
- D 0 - - - 0x00CDA1 03:8D91: 01        .byte $01   ; 03 
- D 0 - - - 0x00CDA2 03:8D92: 00        .byte $00   ; 04 
- D 0 - - - 0x00CDA3 03:8D93: 02        .byte $02   ; 05 
- D 0 - - - 0x00CDA4 03:8D94: 00        .byte $00   ; 06 
- D 0 - - - 0x00CDA5 03:8D95: 03        .byte $03   ; 07 



tbl_8D96:
;                                              +---------- 
;                                              |    +----- 
;                                              |    |
- D 0 - - - 0x00CDA6 03:8D96: 4B        .byte $4B, $30   ; 00 
- D 0 - - - 0x00CDA8 03:8D98: 4C        .byte $4C, $31   ; 01 
- D 0 - - - 0x00CDAA 03:8D9A: 4D        .byte $4D, $31   ; 02 
- D 0 - - - 0x00CDAC 03:8D9C: 4E        .byte $4E, $30   ; 03 



tbl_8D9E:
; bzk optimize, same bytes
;                                              +---------- 
;                                              |    +----- 
;                                              |    |
- D 0 - - - 0x00CDAE 03:8D9E: 00        .byte $00, $00   ; 00 facing right
- D 0 - - - 0x00CDB0 03:8DA0: 00        .byte $00, $00   ; 01 facilg left



ofs_042_0x00CDB2_23:
C - - J - - 0x00CDB2 03:8DA2: A9 40     LDA #con_obj_flag_40
C - - - - - 0x00CDB4 03:8DA4: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x00CDB7 03:8DA7: AD F3 07  LDA ram_07F3
C - - - - - 0x00CDBA 03:8DAA: C9 01     CMP #$01
C - - - - - 0x00CDBC 03:8DAC: F0 0C     BEQ bra_8DBA
C - - - - - 0x00CDBE 03:8DAE: A9 30     LDA #$30
C - - - - - 0x00CDC0 03:8DB0: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x00CDC3 03:8DB3: BD 69 06  LDA ram_obj_066A,X
C - - - - - 0x00CDC6 03:8DB6: 29 F0     AND #$F0
C - - - - - 0x00CDC8 03:8DB8: F0 08     BEQ bra_8DC2
bra_8DBA:
C - - - - - 0x00CDCA 03:8DBA: A9 00     LDA #$00
C - - - - - 0x00CDCC 03:8DBC: 9D 69 06  STA ram_obj_066A,X
C - - - - - 0x00CDCF 03:8DBF: 4C 52 99  JMP loc_9952
bra_8DC2:
C - - - - - 0x00CDD2 03:8DC2: A9 00     LDA #$00
C - - - - - 0x00CDD4 03:8DC4: 38        SEC
C - - - - - 0x00CDD5 03:8DC5: FD 38 04  SBC ram_obj_pos_X_hi,X
C - - - - - 0x00CDD8 03:8DC8: B0 05     BCS bra_8DCF
C - - - - - 0x00CDDA 03:8DCA: 49 FF     EOR #$FF
C - - - - - 0x00CDDC 03:8DCC: 18        CLC
C - - - - - 0x00CDDD 03:8DCD: 69 01     ADC #$01
bra_8DCF:
C - - - - - 0x00CDDF 03:8DCF: C9 04     CMP #$04
C - - - - - 0x00CDE1 03:8DD1: B0 03     BCS bra_8DD6_RTS
C - - - - - 0x00CDE3 03:8DD3: 4C 52 99  JMP loc_9952
bra_8DD6_RTS:
C - - - - - 0x00CDE6 03:8DD6: 60        RTS



ofs_042_0x00CDE7_03:
C - - J - - 0x00CDE7 03:8DD7: A5 78     LDA ram_0078_flag
C - - - - - 0x00CDE9 03:8DD9: F0 0B     BEQ bra_8DE6
C - - - - - 0x00CDEB 03:8DDB: BD D8 05  LDA ram_05D8_obj,X
C - - - - - 0x00CDEE 03:8DDE: C9 40     CMP #$40
C - - - - - 0x00CDF0 03:8DE0: B0 1A     BCS bra_8DFC
C - - - - - 0x00CDF2 03:8DE2: FE D8 05  INC ram_05D8_obj,X
C - - - - - 0x00CDF5 03:8DE5: 60        RTS
bra_8DE6:
C - - - - - 0x00CDF6 03:8DE6: A9 40     LDA #con_obj_flag_40
C - - - - - 0x00CDF8 03:8DE8: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x00CDFB 03:8DEB: A9 00     LDA #$00
C - - - - - 0x00CDFD 03:8DED: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x00CE00 03:8DF0: A9 04     LDA #$04
C - - - - - 0x00CE02 03:8DF2: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x00CE05 03:8DF5: A9 0A     LDA #con_obj_type_0A
C - - - - - 0x00CE07 03:8DF7: A0 19     LDY #$19
C - - - - - 0x00CE09 03:8DF9: 4C 6E EF  JMP loc_0x03EF7E
bra_8DFC:
C - - - - - 0x00CE0C 03:8DFC: A9 00     LDA #$00
C - - - - - 0x00CE0E 03:8DFE: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x00CE11 03:8E01: 8D ED 07  STA ram_07ED
C - - - - - 0x00CE14 03:8E04: AD F3 07  LDA ram_07F3
C - - - - - 0x00CE17 03:8E07: 29 7F     AND #$7F
C - - - - - 0x00CE19 03:8E09: 8D F3 07  STA ram_07F3
C - - - - - 0x00CE1C 03:8E0C: A9 1A     LDA #$1A
C - - - - - 0x00CE1E 03:8E0E: 9D 45 06  STA ram_obj_0646,X
bra_8E11_RTS:
C - - - - - 0x00CE21 03:8E11: 60        RTS



ofs_042_0x00CE22_03:
C - - J - - 0x00CE22 03:8E12: AD F3 07  LDA ram_07F3
C - - - - - 0x00CE25 03:8E15: C9 01     CMP #$01
C - - - - - 0x00CE27 03:8E17: D0 0B     BNE bra_8E24
C - - - - - 0x00CE29 03:8E19: A9 00     LDA #$00
C - - - - - 0x00CE2B 03:8E1B: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x00CE2E 03:8E1E: 9D 69 06  STA ram_obj_066A,X
C - - - - - 0x00CE31 03:8E21: 4C 40 92  JMP loc_9240
bra_8E24:
C - - - - - 0x00CE34 03:8E24: A9 01     LDA #$01
C - - - - - 0x00CE36 03:8E26: 20 56 99  JSR sub_9956
C - - - - - 0x00CE39 03:8E29: B0 E6     BCS bra_8E11_RTS
C - - - - - 0x00CE3B 03:8E2B: 20 3B 99  JSR sub_993B
C - - - - - 0x00CE3E 03:8E2E: A9 01     LDA #$01    ; damage offset
C - - - - - 0x00CE40 03:8E30: 20 5C 99  JSR sub_995C_deal_damage_to_boss
C - - - - - 0x00CE43 03:8E33: BD 69 06  LDA ram_obj_066A,X
C - - - - - 0x00CE46 03:8E36: 85 16     STA ram_0016_t003
C - - - - - 0x00CE48 03:8E38: 29 0F     AND #$0F
C - - - - - 0x00CE4A 03:8E3A: C9 02     CMP #$02
C - - - - - 0x00CE4C 03:8E3C: F0 10     BEQ bra_8E4E
C - - - - - 0x00CE4E 03:8E3E: 20 09 93  JSR sub_9309
C - - - - - 0x00CE51 03:8E41: C9 41     CMP #$41
C - - - - - 0x00CE53 03:8E43: F0 04     BEQ bra_8E49
C - - - - - 0x00CE55 03:8E45: C9 42     CMP #$42
C - - - - - 0x00CE57 03:8E47: D0 05     BNE bra_8E4E
bra_8E49:
C - - - - - 0x00CE59 03:8E49: A9 00     LDA #$00
C - - - - - 0x00CE5B 03:8E4B: 9D 69 06  STA ram_obj_066A,X
bra_8E4E:
C - - - - - 0x00CE5E 03:8E4E: 20 09 93  JSR sub_9309
C - - - - - 0x00CE61 03:8E51: C9 41     CMP #$41
C - - - - - 0x00CE63 03:8E53: 90 01     BCC bra_8E56
C - - - - - 0x00CE65 03:8E55: 60        RTS
bra_8E56:
C - - - - - 0x00CE66 03:8E56: 20 9C 99  JSR sub_999C
C - - - - - 0x00CE69 03:8E59: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x00CE6C 03:8E5C: C9 60     CMP #$60
C - - - - - 0x00CE6E 03:8E5E: B0 2A     BCS bra_8E8A
C - - - - - 0x00CE70 03:8E60: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x00CE73 03:8E63: C9 70     CMP #$70
C - - - - - 0x00CE75 03:8E65: 90 04     BCC bra_8E6B
C - - - - - 0x00CE77 03:8E67: A5 16     LDA ram_0016_t003
C - - - - - 0x00CE79 03:8E69: D0 14     BNE bra_8E7F
bra_8E6B:
C - - - - - 0x00CE7B 03:8E6B: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x00CE7E 03:8E6E: C9 50     CMP #$50
C - - - - - 0x00CE80 03:8E70: 90 18     BCC bra_8E8A
C - - - - - 0x00CE82 03:8E72: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x00CE85 03:8E75: 29 01     AND #$01
C - - - - - 0x00CE87 03:8E77: F0 11     BEQ bra_8E8A
C - - - - - 0x00CE89 03:8E79: A5 00     LDA ram_0000_temp
C - - - - - 0x00CE8B 03:8E7B: C9 20     CMP #$20
C - - - - - 0x00CE8D 03:8E7D: B0 0B     BCS bra_8E8A
bra_8E7F:
C - - - - - 0x00CE8F 03:8E7F: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x00CE92 03:8E82: 29 FE     AND #$FE
C - - - - - 0x00CE94 03:8E84: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x00CE97 03:8E87: 4C 59 91  JMP loc_9159
bra_8E8A:
C - - - - - 0x00CE9A 03:8E8A: 20 09 93  JSR sub_9309
C - - - - - 0x00CE9D 03:8E8D: C9 14     CMP #$14
C - - - - - 0x00CE9F 03:8E8F: D0 13     BNE bra_8EA4
C - - - - - 0x00CEA1 03:8E91: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x00CEA4 03:8E94: C9 40     CMP #$40
C - - - - - 0x00CEA6 03:8E96: B0 0C     BCS bra_8EA4
C - - - - - 0x00CEA8 03:8E98: A9 00     LDA #$00
C - - - - - 0x00CEAA 03:8E9A: A0 F0     LDY #$F0
C - - - - - 0x00CEAC 03:8E9C: 20 1E FC  JSR sub_0x03FC2E
C - - - - - 0x00CEAF 03:8E9F: F0 03     BEQ bra_8EA4
C - - - - - 0x00CEB1 03:8EA1: 4C 59 91  JMP loc_9159
bra_8EA4:
C - - - - - 0x00CEB4 03:8EA4: 20 09 93  JSR sub_9309
C - - - - - 0x00CEB7 03:8EA7: C9 40     CMP #$40
C - - - - - 0x00CEB9 03:8EA9: F0 07     BEQ bra_8EB2
C - - - - - 0x00CEBB 03:8EAB: C9 12     CMP #$12
C - - - - - 0x00CEBD 03:8EAD: F0 03     BEQ bra_8EB2
C - - - - - 0x00CEBF 03:8EAF: 4C 35 8F  JMP loc_8F35
bra_8EB2:
C - - - - - 0x00CEC2 03:8EB2: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x00CEC5 03:8EB5: C9 50     CMP #$50
C - - - - - 0x00CEC7 03:8EB7: B0 38     BCS bra_8EF1
C - - - - - 0x00CEC9 03:8EB9: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x00CECC 03:8EBC: 29 04     AND #$04
C - - - - - 0x00CECE 03:8EBE: F0 75     BEQ bra_8F35
C - - - - - 0x00CED0 03:8EC0: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x00CED3 03:8EC3: 29 FD     AND #$FD
C - - - - - 0x00CED5 03:8EC5: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x00CED8 03:8EC8: 29 01     AND #$01
C - - - - - 0x00CEDA 03:8ECA: D0 69     BNE bra_8F35
C - - - - - 0x00CEDC 03:8ECC: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x00CEDF 03:8ECF: 29 01     AND #$01
C - - - - - 0x00CEE1 03:8ED1: D0 62     BNE bra_8F35
C - - - - - 0x00CEE3 03:8ED3: A5 00     LDA ram_0000_temp
C - - - - - 0x00CEE5 03:8ED5: C9 20     CMP #$20
C - - - - - 0x00CEE7 03:8ED7: B0 5C     BCS bra_8F35
C - - - - - 0x00CEE9 03:8ED9: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x00CEEC 03:8EDC: C9 30     CMP #$30
C - - - - - 0x00CEEE 03:8EDE: 90 55     BCC bra_8F35
C - - - - - 0x00CEF0 03:8EE0: C9 D0     CMP #$D0
C - - - - - 0x00CEF2 03:8EE2: B0 51     BCS bra_8F35
C - - - - - 0x00CEF4 03:8EE4: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x00CEF7 03:8EE7: 09 01     ORA #$01
C - - - - - 0x00CEF9 03:8EE9: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x00CEFC 03:8EEC: A9 42     LDA #$42
C - - - - - 0x00CEFE 03:8EEE: 4C 15 92  JMP loc_9215
bra_8EF1:
C - - - - - 0x00CF01 03:8EF1: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x00CF04 03:8EF4: 29 FE     AND #$FE
C - - - - - 0x00CF06 03:8EF6: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x00CF09 03:8EF9: 29 02     AND #$02
C - - - - - 0x00CF0B 03:8EFB: D0 38     BNE bra_8F35
C - - - - - 0x00CF0D 03:8EFD: A5 17     LDA ram_0017_temp
C - - - - - 0x00CF0F 03:8EFF: DD A8 04  CMP ram_obj_facing,X
C - - - - - 0x00CF12 03:8F02: D0 31     BNE bra_8F35
C - - - - - 0x00CF14 03:8F04: A5 00     LDA ram_0000_temp
C - - - - - 0x00CF16 03:8F06: C9 10     CMP #$10
C - - - - - 0x00CF18 03:8F08: 90 2B     BCC bra_8F35
C - - - - - 0x00CF1A 03:8F0A: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x00CF1D 03:8F0D: 38        SEC
C - - - - - 0x00CF1E 03:8F0E: FD 1C 04  SBC ram_obj_pos_Y_hi,X
C - - - - - 0x00CF21 03:8F11: B0 05     BCS bra_8F18
C - - - - - 0x00CF23 03:8F13: 49 FF     EOR #$FF
C - - - - - 0x00CF25 03:8F15: 18        CLC
C - - - - - 0x00CF26 03:8F16: 69 01     ADC #$01
bra_8F18:
C - - - - - 0x00CF28 03:8F18: C9 0C     CMP #$0C
C - - - - - 0x00CF2A 03:8F1A: B0 19     BCS bra_8F35
C - - - - - 0x00CF2C 03:8F1C: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x00CF2F 03:8F1F: 09 02     ORA #$02
C - - - - - 0x00CF31 03:8F21: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x00CF34 03:8F24: A9 10     LDA #con_obj_type_10
C - - - - - 0x00CF36 03:8F26: A0 29     LDY #$29
C - - - - - 0x00CF38 03:8F28: 20 6E EF  JSR sub_0x03EF7E
C - - - - - 0x00CF3B 03:8F2B: A9 00     LDA #con_obj_flag_00
C - - - - - 0x00CF3D 03:8F2D: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x00CF40 03:8F30: A9 41     LDA #$41
C - - - - - 0x00CF42 03:8F32: 4C 15 92  JMP loc_9215
loc_8F35:
bra_8F35:
C D 0 - - - 0x00CF45 03:8F35: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x00CF48 03:8F38: C9 F0     CMP #$F0
C - - - - - 0x00CF4A 03:8F3A: 90 2D     BCC bra_8F69
- - - - - - 0x00CF4C 03:8F3C: A9 EF     LDA #$EF
- - - - - - 0x00CF4E 03:8F3E: 9D 38 04  STA ram_obj_pos_X_hi,X
- - - - - - 0x00CF51 03:8F41: BD A8 04  LDA ram_obj_facing,X
- - - - - - 0x00CF54 03:8F44: 49 01     EOR #$01
- - - - - - 0x00CF56 03:8F46: 9D A8 04  STA ram_obj_facing,X
- - - - - - 0x00CF59 03:8F49: BD 65 05  LDA ram_obj_state,X
- - - - - - 0x00CF5C 03:8F4C: 18        CLC
- - - - - - 0x00CF5D 03:8F4D: 69 08     ADC #$08
- - - - - - 0x00CF5F 03:8F4F: 29 0F     AND #$0F
- - - - - - 0x00CF61 03:8F51: 9D 65 05  STA ram_obj_state,X
- - - - - - 0x00CF64 03:8F54: BD 09 05  LDA ram_obj_spd_X_lo,X
- - - - - - 0x00CF67 03:8F57: 49 FF     EOR #$FF
- - - - - - 0x00CF69 03:8F59: 18        CLC
- - - - - - 0x00CF6A 03:8F5A: 69 01     ADC #< $0001
- - - - - - 0x00CF6C 03:8F5C: 9D 09 05  STA ram_obj_spd_X_lo,X
- - - - - - 0x00CF6F 03:8F5F: BD F2 04  LDA ram_obj_spd_X_hi,X
- - - - - - 0x00CF72 03:8F62: 49 FF     EOR #$FF
- - - - - - 0x00CF74 03:8F64: 69 00     ADC #> $0001
- - - - - - 0x00CF76 03:8F66: 9D F2 04  STA ram_obj_spd_X_hi,X
bra_8F69:
C - - - - - 0x00CF79 03:8F69: A9 00     LDA #$00
C - - - - - 0x00CF7B 03:8F6B: 85 07     STA ram_0007_temp
C - - - - - 0x00CF7D 03:8F6D: 20 09 93  JSR sub_9309
C - - - - - 0x00CF80 03:8F70: C9 14     CMP #$14
C - - - - - 0x00CF82 03:8F72: B0 29     BCS bra_8F9D
C - - - - - 0x00CF84 03:8F74: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x00CF87 03:8F77: 29 04     AND #$04
C - - - - - 0x00CF89 03:8F79: F0 0F     BEQ bra_8F8A
C - - - - - 0x00CF8B 03:8F7B: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x00CF8E 03:8F7E: C9 60     CMP #$60
C - - - - - 0x00CF90 03:8F80: 90 1B     BCC bra_8F9D
C - - - - - 0x00CF92 03:8F82: A0 00     LDY #$00
C - - - - - 0x00CF94 03:8F84: A9 10     LDA #$10
C - - - - - 0x00CF96 03:8F86: 85 01     STA ram_0001_temp
C - - - - - 0x00CF98 03:8F88: D0 19     BNE bra_8FA3    ; jmp
bra_8F8A:
C - - - - - 0x00CF9A 03:8F8A: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x00CF9D 03:8F8D: 29 08     AND #$08
C - - - - - 0x00CF9F 03:8F8F: D0 04     BNE bra_8F95
C - - - - - 0x00CFA1 03:8F91: A0 F0     LDY #$F0
C - - - - - 0x00CFA3 03:8F93: D0 02     BNE bra_8F97    ; jmp
bra_8F95:
- - - - - - 0x00CFA5 03:8F95: A0 10     LDY #$10
bra_8F97:
C - - - - - 0x00CFA7 03:8F97: A9 00     LDA #$00
C - - - - - 0x00CFA9 03:8F99: 85 01     STA ram_0001_temp
C - - - - - 0x00CFAB 03:8F9B: F0 14     BEQ bra_8FB1    ; jmp
bra_8F9D:
C - - - - - 0x00CFAD 03:8F9D: A0 00     LDY #$00
C - - - - - 0x00CFAF 03:8F9F: A9 08     LDA #$08
C - - - - - 0x00CFB1 03:8FA1: 85 01     STA ram_0001_temp
bra_8FA3:
C - - - - - 0x00CFB3 03:8FA3: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x00CFB6 03:8FA6: F0 09     BEQ bra_8FB1    ; if facing right
C - - - - - 0x00CFB8 03:8FA8: A5 01     LDA ram_0001_temp
C - - - - - 0x00CFBA 03:8FAA: 49 FF     EOR #$FF
C - - - - - 0x00CFBC 03:8FAC: 18        CLC
C - - - - - 0x00CFBD 03:8FAD: 69 01     ADC #$01
C - - - - - 0x00CFBF 03:8FAF: 85 01     STA ram_0001_temp
bra_8FB1:
C - - - - - 0x00CFC1 03:8FB1: A5 01     LDA ram_0001_temp
C - - - - - 0x00CFC3 03:8FB3: 20 1E FC  JSR sub_0x03FC2E
C - - - - - 0x00CFC6 03:8FB6: F0 04     BEQ bra_8FBC
C - - - - - 0x00CFC8 03:8FB8: A9 01     LDA #$01
C - - - - - 0x00CFCA 03:8FBA: 85 07     STA ram_0007_temp
bra_8FBC:
C - - - - - 0x00CFCC 03:8FBC: 20 09 93  JSR sub_9309
C - - - - - 0x00CFCF 03:8FBF: C9 14     CMP #$14
C - - - - - 0x00CFD1 03:8FC1: B0 14     BCS bra_8FD7
C - - - - - 0x00CFD3 03:8FC3: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x00CFD6 03:8FC6: 29 04     AND #$04
C - - - - - 0x00CFD8 03:8FC8: F0 13     BEQ bra_8FDD
C - - - - - 0x00CFDA 03:8FCA: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x00CFDD 03:8FCD: C9 60     CMP #$60
C - - - - - 0x00CFDF 03:8FCF: B0 06     BCS bra_8FD7
C - - - - - 0x00CFE1 03:8FD1: A9 00     LDA #$00
C - - - - - 0x00CFE3 03:8FD3: A0 F0     LDY #$F0
C - - - - - 0x00CFE5 03:8FD5: D0 13     BNE bra_8FEA    ; jmp
bra_8FD7:
C - - - - - 0x00CFE7 03:8FD7: A9 00     LDA #$00
C - - - - - 0x00CFE9 03:8FD9: A0 10     LDY #$10
C - - - - - 0x00CFEB 03:8FDB: D0 0D     BNE bra_8FEA    ; jmp
bra_8FDD:
C - - - - - 0x00CFED 03:8FDD: A0 00     LDY #$00
C - - - - - 0x00CFEF 03:8FDF: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x00CFF2 03:8FE2: D0 04     BNE bra_8FE8_facing_left
C - - - - - 0x00CFF4 03:8FE4: A9 11     LDA #$11
C - - - - - 0x00CFF6 03:8FE6: D0 02     BNE bra_8FEA    ; jmp
bra_8FE8_facing_left:
C - - - - - 0x00CFF8 03:8FE8: A9 EF     LDA #$EF
bra_8FEA:
C - - - - - 0x00CFFA 03:8FEA: 20 1E FC  JSR sub_0x03FC2E
C - - - - - 0x00CFFD 03:8FED: F0 06     BEQ bra_8FF5
C - - - - - 0x00CFFF 03:8FEF: A5 07     LDA ram_0007_temp
C - - - - - 0x00D001 03:8FF1: 09 02     ORA #$02
C - - - - - 0x00D003 03:8FF3: 85 07     STA ram_0007_temp
bra_8FF5:
C - - - - - 0x00D005 03:8FF5: 20 09 93  JSR sub_9309
C - - - - - 0x00D008 03:8FF8: F0 0B     BEQ bra_9005
C - - - - - 0x00D00A 03:8FFA: C9 40     CMP #$40
C - - - - - 0x00D00C 03:8FFC: F0 07     BEQ bra_9005
C - - - - - 0x00D00E 03:8FFE: C9 14     CMP #$14
C - - - - - 0x00D010 03:9000: B0 06     BCS bra_9008
C - - - - - 0x00D012 03:9002: 4C 48 91  JMP loc_9148
bra_9005:
C - - - - - 0x00D015 03:9005: 4C 04 91  JMP loc_9104
bra_9008:
C - - - - - 0x00D018 03:9008: A5 07     LDA ram_0007_temp
C - - - - - 0x00D01A 03:900A: 29 01     AND #$01
C - - - - - 0x00D01C 03:900C: F0 4C     BEQ bra_905A
C - - - - - 0x00D01E 03:900E: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x00D021 03:9011: 29 0F     AND #$0F
C - - - - - 0x00D023 03:9013: F0 1D     BEQ bra_9032
C - - - - - 0x00D025 03:9015: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x00D028 03:9018: F0 0D     BEQ bra_9027_facing_right
C - - - - - 0x00D02A 03:901A: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x00D02D 03:901D: 18        CLC
C - - - - - 0x00D02E 03:901E: 69 10     ADC #$10
C - - - - - 0x00D030 03:9020: 29 F0     AND #$F0
C - - - - - 0x00D032 03:9022: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x00D035 03:9025: D0 0B     BNE bra_9032
bra_9027_facing_right:
C - - - - - 0x00D037 03:9027: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x00D03A 03:902A: 38        SEC
C - - - - - 0x00D03B 03:902B: E9 10     SBC #$10
C - - - - - 0x00D03D 03:902D: 29 F0     AND #$F0
C - - - - - 0x00D03F 03:902F: 9D 38 04  STA ram_obj_pos_X_hi,X
bra_9032:
C - - - - - 0x00D042 03:9032: 20 09 93  JSR sub_9309
C - - - - - 0x00D045 03:9035: C9 15     CMP #$15
C - - - - - 0x00D047 03:9037: D0 0A     BNE bra_9043
C - - - - - 0x00D049 03:9039: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x00D04C 03:903C: C9 38     CMP #$38
C - - - - - 0x00D04E 03:903E: 90 03     BCC bra_9043
- - - - - - 0x00D050 03:9040: 4C 55 91  JMP loc_9155
bra_9043:
C - - - - - 0x00D053 03:9043: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x00D056 03:9046: 29 0F     AND #$0F
C - - - - - 0x00D058 03:9048: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x00D05B 03:904B: A9 00     LDA #$00
C - - - - - 0x00D05D 03:904D: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x00D060 03:9050: A9 13     LDA #$13
C - - - - - 0x00D062 03:9052: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x00D065 03:9055: A9 12     LDA #$12
C - - - - - 0x00D067 03:9057: 4C 15 92  JMP loc_9215
bra_905A:
C - - - - - 0x00D06A 03:905A: A5 07     LDA ram_0007_temp
C - - - - - 0x00D06C 03:905C: 29 02     AND #$02
C - - - - - 0x00D06E 03:905E: D0 03     BNE bra_9063
C - - - - - 0x00D070 03:9060: 4C 03 91  JMP loc_9103_RTS
bra_9063:
C - - - - - 0x00D073 03:9063: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x00D076 03:9066: 29 04     AND #$04
C - - - - - 0x00D078 03:9068: D0 0B     BNE bra_9075
C - - - - - 0x00D07A 03:906A: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x00D07D 03:906D: 18        CLC
C - - - - - 0x00D07E 03:906E: 69 10     ADC #$10
C - - - - - 0x00D080 03:9070: 09 04     ORA #$04
C - - - - - 0x00D082 03:9072: 9D 06 06  STA ram_obj_config,X
bra_9075:
C - - - - - 0x00D085 03:9075: AD ED 07  LDA ram_07ED
C - - - - - 0x00D088 03:9078: C9 03     CMP #$03
C - - - - - 0x00D08A 03:907A: 90 1A     BCC bra_9096
C - - - - - 0x00D08C 03:907C: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x00D08F 03:907F: C9 A0     CMP #$A0
C - - - - - 0x00D091 03:9081: 90 07     BCC bra_908A
C - - - - - 0x00D093 03:9083: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x00D096 03:9086: C9 60     CMP #$60
C - - - - - 0x00D098 03:9088: 90 0C     BCC bra_9096
bra_908A:
C - - - - - 0x00D09A 03:908A: A9 0C     LDA #$0C
C - - - - - 0x00D09C 03:908C: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x00D09F 03:908F: A9 01     LDA #$01    ; facing left
C - - - - - 0x00D0A1 03:9091: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x00D0A4 03:9094: D0 1E     BNE bra_90B4    ; jmp
bra_9096:
C - - - - - 0x00D0A6 03:9096: A5 17     LDA ram_0017_temp
C - - - - - 0x00D0A8 03:9098: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x00D0AB 03:909B: A9 04     LDA #$04
C - - - - - 0x00D0AD 03:909D: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x00D0B0 03:90A0: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x00D0B3 03:90A3: F0 0F     BEQ bra_90B4    ; if facing right
C - - - - - 0x00D0B5 03:90A5: A9 0C     LDA #$0C
C - - - - - 0x00D0B7 03:90A7: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x00D0BA 03:90AA: D0 08     BNE bra_90B4    ; jmp


; bzk garbage
- - - - - - 0x00D0BC 03:90AC: BD 06 06  LDA ram_obj_config,X
- - - - - - 0x00D0BF 03:90AF: 29 FB     AND #$FB
- - - - - - 0x00D0C1 03:90B1: 9D 06 06  STA ram_obj_config,X



bra_90B4:
C - - - - - 0x00D0C4 03:90B4: 20 09 93  JSR sub_9309
C - - - - - 0x00D0C7 03:90B7: C9 14     CMP #$14
C - - - - - 0x00D0C9 03:90B9: D0 07     BNE bra_90C2
C - - - - - 0x00D0CB 03:90BB: BD C1 05  LDA ram_05C1_obj,X
C - - - - - 0x00D0CE 03:90BE: C9 04     CMP #$04
C - - - - - 0x00D0D0 03:90C0: 90 41     BCC bra_9103_RTS
bra_90C2:
C - - - - - 0x00D0D2 03:90C2: A9 0A     LDA #con_obj_type_0A
C - - - - - 0x00D0D4 03:90C4: A0 19     LDY #$19
C - - - - - 0x00D0D6 03:90C6: 20 6E EF  JSR sub_0x03EF7E
C - - - - - 0x00D0D9 03:90C9: A9 1A     LDA #$1A
C - - - - - 0x00D0DB 03:90CB: 9D 45 06  STA ram_obj_0646,X
C - - - - - 0x00D0DE 03:90CE: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x00D0E1 03:90D1: 29 DF     AND #con_obj_flag_20 ^ $FF
C - - - - - 0x00D0E3 03:90D3: 9D 70 04  STA ram_obj_flags,X
loc_90D6:
C D 0 - - - 0x00D0E6 03:90D6: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x00D0E9 03:90D9: D0 08     BNE bra_90E3
- - - - - - 0x00D0EB 03:90DB: A5 17     LDA ram_0017_temp
- - - - - - 0x00D0ED 03:90DD: 9D A8 04  STA ram_obj_facing,X
- - - - - - 0x00D0F0 03:90E0: 20 0F 93  JSR sub_930F
bra_90E3:
C - - - - - 0x00D0F3 03:90E3: A9 00     LDA #$00
C - - - - - 0x00D0F5 03:90E5: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x00D0F8 03:90E8: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x00D0FB 03:90EB: 20 09 93  JSR sub_9309
C - - - - - 0x00D0FE 03:90EE: C9 40     CMP #$40
C - - - - - 0x00D100 03:90F0: F0 0C     BEQ bra_90FE
C - - - - - 0x00D102 03:90F2: A9 0A     LDA #con_obj_type_0A
C - - - - - 0x00D104 03:90F4: A0 12     LDY #$12
C - - - - - 0x00D106 03:90F6: 20 6E EF  JSR sub_0x03EF7E
C - - - - - 0x00D109 03:90F9: A9 1A     LDA #$1A
C - - - - - 0x00D10B 03:90FB: 9D 45 06  STA ram_obj_0646,X
bra_90FE:
C - - - - - 0x00D10E 03:90FE: A9 C0     LDA #$C0
C - - - - - 0x00D110 03:9100: 4C 15 92  JMP loc_9215
loc_9103_RTS:   ; bzk optimize
bra_9103_RTS:
C D 0 - - - 0x00D113 03:9103: 60        RTS



loc_9104:
C D 0 - - - 0x00D114 03:9104: A5 07     LDA ram_0007_temp
C - - - - - 0x00D116 03:9106: 29 02     AND #$02
C - - - - - 0x00D118 03:9108: D0 03     BNE bra_910D
C - - - - - 0x00D11A 03:910A: 4C 59 91  JMP loc_9159
bra_910D:
C - - - - - 0x00D11D 03:910D: BD 38 04  LDA ram_obj_pos_X_hi,X
; / 110
C - - - - - 0x00D120 03:9110: 4A        LSR
C - - - - - 0x00D121 03:9111: 4A        LSR
C - - - - - 0x00D122 03:9112: 4A        LSR
C - - - - - 0x00D123 03:9113: 4A        LSR
C - - - - - 0x00D124 03:9114: A8        TAY
C - - - - - 0x00D125 03:9115: B9 38 91  LDA tbl_9138,Y
C - - - - - 0x00D128 03:9118: D0 11     BNE bra_912B
C - - - - - 0x00D12A 03:911A: A5 00     LDA ram_0000_temp
C - - - - - 0x00D12C 03:911C: C9 18     CMP #$18
C - - - - - 0x00D12E 03:911E: 90 0B     BCC bra_912B
C - - - - - 0x00D130 03:9120: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x00D133 03:9123: 29 FD     AND #$FD
C - - - - - 0x00D135 03:9125: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x00D138 03:9128: 4C D6 90  JMP loc_90D6
bra_912B:
C - - - - - 0x00D13B 03:912B: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x00D13E 03:912E: 29 FD     AND #$FD
C - - - - - 0x00D140 03:9130: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x00D143 03:9133: A9 94     LDA #$94
C - - - - - 0x00D145 03:9135: 4C 15 92  JMP loc_9215



tbl_9138:
; 00 = 
; 01 = 
- - - - - - 0x00D148 03:9138: 00        .byte $00   ; 00 
- - - - - - 0x00D149 03:9139: 00        .byte $00   ; 10 
- D 0 - - - 0x00D14A 03:913A: 01        .byte $01   ; 20 
- D 0 - - - 0x00D14B 03:913B: 00        .byte $00   ; 30 
- D 0 - - - 0x00D14C 03:913C: 01        .byte $01   ; 40 
- D 0 - - - 0x00D14D 03:913D: 02        .byte $02   ; 50 
- D 0 - - - 0x00D14E 03:913E: 00        .byte $00   ; 60 
- D 0 - - - 0x00D14F 03:913F: 00        .byte $00   ; 70 
- D 0 - - - 0x00D150 03:9140: 01        .byte $01   ; 80 
- D 0 - - - 0x00D151 03:9141: 00        .byte $00   ; 90 
- D 0 - - - 0x00D152 03:9142: 00        .byte $00   ; A0 
- D 0 - - - 0x00D153 03:9143: 00        .byte $00   ; B0 
- D 0 - - - 0x00D154 03:9144: 00        .byte $00   ; C0 
- D 0 - - - 0x00D155 03:9145: 01        .byte $01   ; D0 
- D 0 - - - 0x00D156 03:9146: 00        .byte $00   ; E0 
- - - - - - 0x00D157 03:9147: 00        .byte $00   ; F0 



loc_9148:
C D 0 - - - 0x00D158 03:9148: A5 07     LDA ram_0007_temp
C - - - - - 0x00D15A 03:914A: 29 01     AND #$01
C - - - - - 0x00D15C 03:914C: D0 26     BNE bra_9174
C - - - - - 0x00D15E 03:914E: A5 07     LDA ram_0007_temp
C - - - - - 0x00D160 03:9150: 29 02     AND #$02
C - - - - - 0x00D162 03:9152: F0 05     BEQ bra_9159
C - - - - - 0x00D164 03:9154: 60        RTS



loc_9155:
- - - - - - 0x00D165 03:9155: A9 43     LDA #$43
- - - - - - 0x00D167 03:9157: D0 02     BNE bra_915B    ; jmp



loc_9159:
bra_9159:
C D 0 - - - 0x00D169 03:9159: A9 15     LDA #$15
bra_915B:
C - - - - - 0x00D16B 03:915B: 85 16     STA ram_0016_t004
C - - - - - 0x00D16D 03:915D: 20 0F 93  JSR sub_930F
C - - - - - 0x00D170 03:9160: A9 0A     LDA #con_obj_type_0A
C - - - - - 0x00D172 03:9162: A0 19     LDY #$19
C - - - - - 0x00D174 03:9164: 20 6E EF  JSR sub_0x03EF7E
C - - - - - 0x00D177 03:9167: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x00D17A 03:916A: 29 DF     AND #con_obj_flag_20 ^ $FF
C - - - - - 0x00D17C 03:916C: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x00D17F 03:916F: A5 16     LDA ram_0016_t004
C - - - - - 0x00D181 03:9171: 4C 15 92  JMP loc_9215
bra_9174:
C - - - - - 0x00D184 03:9174: A5 07     LDA ram_0007_temp
C - - - - - 0x00D186 03:9176: 29 02     AND #$02
C - - - - - 0x00D188 03:9178: F0 DF     BEQ bra_9159
C - - - - - 0x00D18A 03:917A: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x00D18D 03:917D: 29 04     AND #$04
C - - - - - 0x00D18F 03:917F: F0 44     BEQ bra_91C5
- - - - - - 0x00D191 03:9181: BD 06 06  LDA ram_obj_config,X
- - - - - - 0x00D194 03:9184: 29 0F     AND #$0F
- - - - - - 0x00D196 03:9186: 9D 06 06  STA ram_obj_config,X
- - - - - - 0x00D199 03:9189: A9 00     LDA #$00
- - - - - - 0x00D19B 03:918B: 9D 65 05  STA ram_obj_state,X
- - - - - - 0x00D19E 03:918E: BD 1C 04  LDA ram_obj_pos_Y_hi,X
- - - - - - 0x00D1A1 03:9191: C9 60     CMP #$60
- - - - - - 0x00D1A3 03:9193: B0 2C     BCS bra_91C1
- - - - - - 0x00D1A5 03:9195: A9 08     LDA #$08
- - - - - - 0x00D1A7 03:9197: 85 01     STA ram_0001_temp
- - - - - - 0x00D1A9 03:9199: BD A8 04  LDA ram_obj_facing,X
- - - - - - 0x00D1AC 03:919C: D0 09     BNE bra_91A7_facing_left
- - - - - - 0x00D1AE 03:919E: A5 01     LDA ram_0001_temp
- - - - - - 0x00D1B0 03:91A0: 49 FF     EOR #$FF
- - - - - - 0x00D1B2 03:91A2: 18        CLC
- - - - - - 0x00D1B3 03:91A3: 69 01     ADC #$01
- - - - - - 0x00D1B5 03:91A5: 85 01     STA ram_0001_temp
bra_91A7_facing_left:
- - - - - - 0x00D1B7 03:91A7: BD 38 04  LDA ram_obj_pos_X_hi,X
- - - - - - 0x00D1BA 03:91AA: 29 F8     AND #$F8
- - - - - - 0x00D1BC 03:91AC: 18        CLC
- - - - - - 0x00D1BD 03:91AD: 65 01     ADC ram_0001_temp
- - - - - - 0x00D1BF 03:91AF: C9 28     CMP #$28
- - - - - - 0x00D1C1 03:91B1: B0 02     BCS bra_91B5_not_underflow
- - - - - - 0x00D1C3 03:91B3: A9 28     LDA #$28
bra_91B5_not_underflow:
- - - - - - 0x00D1C5 03:91B5: 9D 38 04  STA ram_obj_pos_X_hi,X
- - - - - - 0x00D1C8 03:91B8: A9 08     LDA #$08
- - - - - - 0x00D1CA 03:91BA: 9D 65 05  STA ram_obj_state,X
- - - - - - 0x00D1CD 03:91BD: A0 15     LDY #$15
- - - - - - 0x00D1CF 03:91BF: D0 46     BNE bra_9207    ; jmp
bra_91C1:
- - - - - - 0x00D1D1 03:91C1: A0 13     LDY #$13
- - - - - - 0x00D1D3 03:91C3: D0 42     BNE bra_9207    ; jmp
bra_91C5:
C - - - - - 0x00D1D5 03:91C5: A5 1F     LDA ram_random
C - - - - - 0x00D1D7 03:91C7: 29 01     AND #$01
C - - - - - 0x00D1D9 03:91C9: 1D 06 06  ORA ram_obj_config,X
C - - - - - 0x00D1DC 03:91CC: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x00D1DF 03:91CF: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x00D1E2 03:91D2: 29 F0     AND #$F0
C - - - - - 0x00D1E4 03:91D4: 85 01     STA ram_0001_temp
C - - - - - 0x00D1E6 03:91D6: C9 60     CMP #$60
C - - - - - 0x00D1E8 03:91D8: 90 04     BCC bra_91DE
- - - - - - 0x00D1EA 03:91DA: A5 01     LDA ram_0001_temp
- - - - - - 0x00D1EC 03:91DC: D0 05     BNE bra_91E3
bra_91DE:
C - - - - - 0x00D1EE 03:91DE: A5 01     LDA ram_0001_temp
C - - - - - 0x00D1F0 03:91E0: 18        CLC
C - - - - - 0x00D1F1 03:91E1: 69 0F     ADC #$0F
bra_91E3:
C - - - - - 0x00D1F3 03:91E3: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x00D1F6 03:91E6: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x00D1F9 03:91E9: 49 01     EOR #$01
C - - - - - 0x00D1FB 03:91EB: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x00D1FE 03:91EE: A0 14     LDY #$14
C - - - - - 0x00D200 03:91F0: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x00D203 03:91F3: 29 08     AND #$08
C - - - - - 0x00D205 03:91F5: F0 02     BEQ bra_91F9
- - - - - - 0x00D207 03:91F7: A0 12     LDY #$12
bra_91F9:
C - - - - - 0x00D209 03:91F9: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x00D20C 03:91FC: D0 04     BNE bra_9202_facing_left
C - - - - - 0x00D20E 03:91FE: A9 04     LDA #$04
C - - - - - 0x00D210 03:9200: D0 02     BNE bra_9204    ; jmp
bra_9202_facing_left:
- - - - - - 0x00D212 03:9202: A9 0C     LDA #$0C
bra_9204:
C - - - - - 0x00D214 03:9204: 9D 65 05  STA ram_obj_state,X
bra_9207:
C - - - - - 0x00D217 03:9207: 98        TYA
C - - - - - 0x00D218 03:9208: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x00D21B 03:920B: A9 0A     LDA #con_obj_type_0A
C - - - - - 0x00D21D 03:920D: 20 6E EF  JSR sub_0x03EF7E
C - - - - - 0x00D220 03:9210: 20 75 EF  JSR sub_0x03EF85
C - - - - - 0x00D223 03:9213: A9 13     LDA #$13
loc_9215:
C D 0 - - - 0x00D225 03:9215: 85 07     STA ram_0007_temp
C - - - - - 0x00D227 03:9217: 20 09 93  JSR sub_9309
C - - - - - 0x00D22A 03:921A: C5 07     CMP ram_0007_temp
C - - - - - 0x00D22C 03:921C: F0 15     BEQ bra_9233_RTS
C - - - - - 0x00D22E 03:921E: C9 14     CMP #$14
C - - - - - 0x00D230 03:9220: D0 03     BNE bra_9225
C - - - - - 0x00D232 03:9222: EE ED 07  INC ram_07ED
bra_9225:
C - - - - - 0x00D235 03:9225: C9 12     CMP #$12
C - - - - - 0x00D237 03:9227: D0 05     BNE bra_922E
C - - - - - 0x00D239 03:9229: A9 00     LDA #$00
C - - - - - 0x00D23B 03:922B: 8D ED 07  STA ram_07ED
bra_922E:
C - - - - - 0x00D23E 03:922E: A5 07     LDA ram_0007_temp
C - - - - - 0x00D240 03:9230: 4C 4C 99  JMP loc_994C
bra_9233_RTS:
- - - - - - 0x00D243 03:9233: 60        RTS


; bzk garbage
- - - - - - 0x00D244 03:9234: 00        .byte $00   ; 
- - - - - - 0x00D245 03:9235: 02        .byte $02   ; 
- - - - - - 0x00D246 03:9236: 01        .byte $01   ; 
- - - - - - 0x00D247 03:9237: 03        .byte $03   ; 
- - - - - - 0x00D248 03:9238: 14        .byte $14   ; 
- - - - - - 0x00D249 03:9239: 13        .byte $13   ; 
- - - - - - 0x00D24A 03:923A: 12        .byte $12   ; 
- - - - - - 0x00D24B 03:923B: 13        .byte $13   ; 
- - - - - - 0x00D24C 03:923C: 12        .byte $12   ; 
- - - - - - 0x00D24D 03:923D: 13        .byte $13   ; 
- - - - - - 0x00D24E 03:923E: 14        .byte $14   ; 
- - - - - - 0x00D24F 03:923F: 13        .byte $13   ; 



loc_9240:
C D 0 - - - 0x00D250 03:9240: 20 09 93  JSR sub_9309
C - - - - - 0x00D253 03:9243: C9 22     CMP #$22
C - - - - - 0x00D255 03:9245: F0 15     BEQ bra_925C
C - - - - - 0x00D257 03:9247: C9 21     CMP #$21
C - - - - - 0x00D259 03:9249: F0 18     BEQ bra_9263
C - - - - - 0x00D25B 03:924B: A9 20     LDA #$20    ; 2000
C - - - - - 0x00D25D 03:924D: 20 78 99  JSR sub_9978_add_points_to_score
C - - - - - 0x00D260 03:9250: A9 0A     LDA #con_obj_type_0A
C - - - - - 0x00D262 03:9252: A0 18     LDY #$18
C - - - - - 0x00D264 03:9254: 20 6E EF  JSR sub_0x03EF7E
C - - - - - 0x00D267 03:9257: A9 21     LDA #$21
C - - - - - 0x00D269 03:9259: 4C 4C 99  JMP loc_994C
bra_925C:
C - - - - - 0x00D26C 03:925C: EE F3 07  INC ram_07F3
C - - - - - 0x00D26F 03:925F: 20 56 99  JSR sub_9956
C - - - - - 0x00D272 03:9262: 60        RTS
bra_9263:
C - - - - - 0x00D273 03:9263: A9 40     LDA #con_obj_flag_40
C - - - - - 0x00D275 03:9265: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x00D278 03:9268: A9 04     LDA #$04
C - - - - - 0x00D27A 03:926A: A0 0C     LDY #$0C
C - - - - - 0x00D27C 03:926C: 20 1E FC  JSR sub_0x03FC2E
C - - - - - 0x00D27F 03:926F: F0 03     BEQ bra_9274_RTS
C - - - - - 0x00D281 03:9271: FE C1 05  INC ram_05C1_obj,X
bra_9274_RTS:
C - - - - - 0x00D284 03:9274: 60        RTS



ofs_042_0x00D285_14:
C - - J - - 0x00D285 03:9275: 20 3B 99  JSR sub_993B
C - - - - - 0x00D288 03:9278: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x00D28B 03:927B: D0 1F     BNE bra_929C
C - - - - - 0x00D28D 03:927D: A9 00     LDA #$00
C - - - - - 0x00D28F 03:927F: 85 00     STA ram_0000_temp
C - - - - - 0x00D291 03:9281: A9 FA     LDA #$FA
C - - - - - 0x00D293 03:9283: 85 01     STA ram_0001_temp
C - - - - - 0x00D295 03:9285: A9 04     LDA #$04
C - - - - - 0x00D297 03:9287: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x00D29A 03:928A: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x00D29D 03:928D: F0 05     BEQ bra_9294_facing_right
C - - - - - 0x00D29F 03:928F: A9 0C     LDA #$0C
C - - - - - 0x00D2A1 03:9291: 9D 65 05  STA ram_obj_state,X
bra_9294_facing_right:
C - - - - - 0x00D2A4 03:9294: 20 F3 92  JSR sub_92F3
C - - - - - 0x00D2A7 03:9297: A9 96     LDA #$96
C - - - - - 0x00D2A9 03:9299: 20 4C 99  JSR sub_994C
bra_929C:
loc_929C:
C D 0 - - - 0x00D2AC 03:929C: AD F3 07  LDA ram_07F3
C - - - - - 0x00D2AF 03:929F: 29 3F     AND #$3F
C - - - - - 0x00D2B1 03:92A1: D0 13     BNE bra_92B6
C - - - - - 0x00D2B3 03:92A3: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x00D2B6 03:92A6: C9 F8     CMP #$F8
C - - - - - 0x00D2B8 03:92A8: B0 0C     BCS bra_92B6
C - - - - - 0x00D2BA 03:92AA: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x00D2BD 03:92AD: C9 08     CMP #$08
C - - - - - 0x00D2BF 03:92AF: 90 05     BCC bra_92B6
C - - - - - 0x00D2C1 03:92B1: C9 F8     CMP #$F8
C - - - - - 0x00D2C3 03:92B3: B0 01     BCS bra_92B6
C - - - - - 0x00D2C5 03:92B5: 60        RTS
bra_92B6:
C - - - - - 0x00D2C6 03:92B6: 4C 52 99  JMP loc_9952



ofs_042_0x00D2C9_15:
C - - J - - 0x00D2C9 03:92B9: 20 3B 99  JSR sub_993B
C - - - - - 0x00D2CC 03:92BC: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x00D2CF 03:92BF: D0 2F     BNE bra_92F0
C - - - - - 0x00D2D1 03:92C1: A9 10     LDA #$10
C - - - - - 0x00D2D3 03:92C3: 85 00     STA ram_0000_temp
C - - - - - 0x00D2D5 03:92C5: A9 F8     LDA #$F8
C - - - - - 0x00D2D7 03:92C7: 85 01     STA ram_0001_temp
C - - - - - 0x00D2D9 03:92C9: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x00D2DC 03:92CC: F0 08     BEQ bra_92D6_facing_right
- - - - - - 0x00D2DE 03:92CE: A9 F0     LDA #$F0
- - - - - - 0x00D2E0 03:92D0: 85 00     STA ram_0000_temp
- - - - - - 0x00D2E2 03:92D2: A9 F8     LDA #$F8
- - - - - - 0x00D2E4 03:92D4: 85 01     STA ram_0001_temp
bra_92D6_facing_right:
C - - - - - 0x00D2E6 03:92D6: 20 F3 92  JSR sub_92F3
C - - - - - 0x00D2E9 03:92D9: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x00D2EC 03:92DC: 85 04     STA ram_0004_t013_pos_X_hi
C - - - - - 0x00D2EE 03:92DE: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x00D2F1 03:92E1: 85 05     STA ram_0005_t009_pos_Y_hi
C - - - - - 0x00D2F3 03:92E3: 20 30 FF  JSR sub_0x03FF40
C - - - - - 0x00D2F6 03:92E6: A5 00     LDA ram_0000_t07B
C - - - - - 0x00D2F8 03:92E8: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x00D2FB 03:92EB: A9 E4     LDA #$E4
C - - - - - 0x00D2FD 03:92ED: 20 4C 99  JSR sub_994C
bra_92F0:
C - - - - - 0x00D300 03:92F0: 4C 9C 92  JMP loc_929C



sub_92F3:
C - - - - - 0x00D303 03:92F3: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x00D306 03:92F6: 18        CLC
C - - - - - 0x00D307 03:92F7: 65 00     ADC ram_0000_temp
C - - - - - 0x00D309 03:92F9: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x00D30C 03:92FC: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x00D30F 03:92FF: 18        CLC
C - - - - - 0x00D310 03:9300: 65 01     ADC ram_0001_temp
C - - - - - 0x00D312 03:9302: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x00D315 03:9305: FE 06 06  INC ram_obj_config,X
C - - - - - 0x00D318 03:9308: 60        RTS



sub_9309:
C - - - - - 0x00D319 03:9309: BD EF 05  LDA ram_05EF_obj,X
C - - - - - 0x00D31C 03:930C: 29 7F     AND #$7F
C - - - - - 0x00D31E 03:930E: 60        RTS



sub_930F:
C - - - - - 0x00D31F 03:930F: BC A8 04  LDY ram_obj_facing,X
C - - - - - 0x00D322 03:9312: B9 19 93  LDA tbl_9319,Y
C - - - - - 0x00D325 03:9315: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x00D328 03:9318: 60        RTS



tbl_9319:
- D 0 - - - 0x00D329 03:9319: 04        .byte $04   ; 00 facing right
- D 0 - - - 0x00D32A 03:931A: 0C        .byte $0C   ; 01 facing left



ofs_042_0x00D32B_07:
C - - J - - 0x00D32B 03:931B: A5 78     LDA ram_0078_flag
C - - - - - 0x00D32D 03:931D: F0 26     BEQ bra_9345
C - - - - - 0x00D32F 03:931F: 20 09 95  JSR sub_9509
C - - - - - 0x00D332 03:9322: D0 0C     BNE bra_9330
C - - - - - 0x00D334 03:9324: A9 0A     LDA #con_obj_type_0A
C - - - - - 0x00D336 03:9326: A0 49     LDY #$49
C - - - - - 0x00D338 03:9328: 20 6E EF  JSR sub_0x03EF7E
C - - - - - 0x00D33B 03:932B: A9 2A     LDA #$2A
C - - - - - 0x00D33D 03:932D: 4C 4C 99  JMP loc_994C
bra_9330:
C - - - - - 0x00D340 03:9330: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x00D343 03:9333: 29 F0     AND #$F0
C - - - - - 0x00D345 03:9335: D0 09     BNE bra_9340
C - - - - - 0x00D347 03:9337: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x00D34A 03:933A: 29 76     AND #(con_obj_flag_01 + con_obj_flag_08 + con_obj_flag_not_visible) ^ $FF
C - - - - - 0x00D34C 03:933C: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x00D34F 03:933F: 60        RTS
bra_9340:
C - - - - - 0x00D350 03:9340: C9 40     CMP #$40
C - - - - - 0x00D352 03:9342: F0 1C     BEQ bra_9360
C - - - - - 0x00D354 03:9344: 60        RTS
bra_9345:
C - - - - - 0x00D355 03:9345: A9 C9     LDA #con_obj_flag_01 + con_obj_flag_08 + con_obj_flag_40 + con_obj_flag_not_visible
C - - - - - 0x00D357 03:9347: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x00D35A 03:934A: A9 00     LDA #$00
C - - - - - 0x00D35C 03:934C: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x00D35F 03:934F: A9 04     LDA #$04
C - - - - - 0x00D361 03:9351: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x00D364 03:9354: A9 F0     LDA #$F0
C - - - - - 0x00D366 03:9356: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x00D369 03:9359: A9 0A     LDA #con_obj_type_0A
C - - - - - 0x00D36B 03:935B: A0 49     LDY #$49
C - - - - - 0x00D36D 03:935D: 4C 6E EF  JMP loc_0x03EF7E
bra_9360:
C - - - - - 0x00D370 03:9360: A9 00     LDA #$00
C - - - - - 0x00D372 03:9362: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x00D375 03:9365: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x00D378 03:9368: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x00D37B 03:936B: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x00D37E 03:936E: A9 40     LDA #con_obj_flag_40
C - - - - - 0x00D380 03:9370: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x00D383 03:9373: AD F3 07  LDA ram_07F3
C - - - - - 0x00D386 03:9376: 29 7F     AND #$7F
C - - - - - 0x00D388 03:9378: 8D F3 07  STA ram_07F3
C - - - - - 0x00D38B 03:937B: 60        RTS



ofs_042_0x00D38C_07:
C - - J - - 0x00D38C 03:937C: AD F3 07  LDA ram_07F3
C - - - - - 0x00D38F 03:937F: C9 01     CMP #$01
C - - - - - 0x00D391 03:9381: D0 2F     BNE bra_93B2
; A = 01
; con_irq_01
C - - - - - 0x00D393 03:9383: 85 3F     STA ram_003F_copy_irq_handler
C - - - - - 0x00D395 03:9385: A9 00     LDA #$00
C - - - - - 0x00D397 03:9387: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x00D39A 03:938A: 9D 69 06  STA ram_obj_066A,X
C - - - - - 0x00D39D 03:938D: 20 09 95  JSR sub_9509
C - - - - - 0x00D3A0 03:9390: C9 2F     CMP #$2F
C - - - - - 0x00D3A2 03:9392: F0 1D     BEQ bra_93B1_RTS
C - - - - - 0x00D3A4 03:9394: A9 30     LDA #$30    ; 3000
C - - - - - 0x00D3A6 03:9396: 20 78 99  JSR sub_9978_add_points_to_score
C - - - - - 0x00D3A9 03:9399: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x00D3AC 03:939C: A9 0A     LDA #con_obj_type_0A
C - - - - - 0x00D3AE 03:939E: A0 52     LDY #$52
C - - - - - 0x00D3B0 03:93A0: 20 6E EF  JSR sub_0x03EF7E
C - - - - - 0x00D3B3 03:93A3: 18        CLC
C - - - - - 0x00D3B4 03:93A4: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x00D3B7 03:93A7: 69 10     ADC #$10
C - - - - - 0x00D3B9 03:93A9: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x00D3BC 03:93AC: A9 2F     LDA #$2F
C - - - - - 0x00D3BE 03:93AE: 4C 4C 99  JMP loc_994C
bra_93B1_RTS:
C - - - - - 0x00D3C1 03:93B1: 60        RTS
bra_93B2:
C - - - - - 0x00D3C2 03:93B2: 20 3B 99  JSR sub_993B
C - - - - - 0x00D3C5 03:93B5: A9 00     LDA #$00
C - - - - - 0x00D3C7 03:93B7: 20 56 99  JSR sub_9956
C - - - - - 0x00D3CA 03:93BA: BD 69 06  LDA ram_obj_066A,X
C - - - - - 0x00D3CD 03:93BD: 29 F0     AND #$F0
C - - - - - 0x00D3CF 03:93BF: F0 26     BEQ bra_93E7
C - - - - - 0x00D3D1 03:93C1: A9 03     LDA #$03    ; damage offset
C - - - - - 0x00D3D3 03:93C3: 20 5C 99  JSR sub_995C_deal_damage_to_boss
C - - - - - 0x00D3D6 03:93C6: 20 09 95  JSR sub_9509
C - - - - - 0x00D3D9 03:93C9: C9 2A     CMP #$2A
C - - - - - 0x00D3DB 03:93CB: F0 04     BEQ bra_93D1
C - - - - - 0x00D3DD 03:93CD: C9 2E     CMP #$2E
C - - - - - 0x00D3DF 03:93CF: D0 16     BNE bra_93E7
bra_93D1:
C - - - - - 0x00D3E1 03:93D1: A9 0F     LDA #$0F
C - - - - - 0x00D3E3 03:93D3: 9D 8D 06  STA ram_obj_068E,X
C - - - - - 0x00D3E6 03:93D6: A9 01     LDA #$01
C - - - - - 0x00D3E8 03:93D8: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x00D3EB 03:93DB: A9 0A     LDA #con_obj_type_0A
C - - - - - 0x00D3ED 03:93DD: A0 54     LDY #$54
C - - - - - 0x00D3EF 03:93DF: 20 6E EF  JSR sub_0x03EF7E
C - - - - - 0x00D3F2 03:93E2: A9 2B     LDA #$2B
C - - - - - 0x00D3F4 03:93E4: 4C 4C 99  JMP loc_994C
bra_93E7:
C - - - - - 0x00D3F7 03:93E7: 20 09 95  JSR sub_9509
C - - - - - 0x00D3FA 03:93EA: C9 29     CMP #$29
C - - - - - 0x00D3FC 03:93EC: F0 04     BEQ bra_93F2
C - - - - - 0x00D3FE 03:93EE: C9 28     CMP #$28
C - - - - - 0x00D400 03:93F0: D0 05     BNE bra_93F7
bra_93F2:
C - - - - - 0x00D402 03:93F2: A9 00     LDA #$00
C - - - - - 0x00D404 03:93F4: 9D 69 06  STA ram_obj_066A,X
bra_93F7:
C - - - - - 0x00D407 03:93F7: 20 09 95  JSR sub_9509
C - - - - - 0x00D40A 03:93FA: F0 03     BEQ bra_93FF
C - - - - - 0x00D40C 03:93FC: 4C 9C 94  JMP loc_949C
bra_93FF:
C - - - - - 0x00D40F 03:93FF: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x00D412 03:9402: D0 23     BNE bra_9427
C - - - - - 0x00D414 03:9404: A9 04     LDA #$04
C - - - - - 0x00D416 03:9406: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x00D419 03:9409: A5 1F     LDA ram_random
C - - - - - 0x00D41B 03:940B: 29 03     AND #$03
C - - - - - 0x00D41D 03:940D: D0 0C     BNE bra_941B
C - - - - - 0x00D41F 03:940F: A9 10     LDA #con_obj_type_10
C - - - - - 0x00D421 03:9411: A0 00     LDY #$00
C - - - - - 0x00D423 03:9413: 20 6E EF  JSR sub_0x03EF7E
C - - - - - 0x00D426 03:9416: A9 29     LDA #$29
C - - - - - 0x00D428 03:9418: 4C 4C 99  JMP loc_994C
bra_941B:
C - - - - - 0x00D42B 03:941B: A9 0A     LDA #con_obj_type_0A
C - - - - - 0x00D42D 03:941D: A0 4D     LDY #$4D
C - - - - - 0x00D42F 03:941F: 20 6E EF  JSR sub_0x03EF7E
C - - - - - 0x00D432 03:9422: A9 28     LDA #$28
C - - - - - 0x00D434 03:9424: 4C 4C 99  JMP loc_994C
bra_9427:
C - - - - - 0x00D437 03:9427: DE 06 06  DEC ram_obj_config,X
C - - - - - 0x00D43A 03:942A: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x00D43D 03:942D: D0 1B     BNE bra_944A
C - - - - - 0x00D43F 03:942F: A9 18     LDA #$18
C - - - - - 0x00D441 03:9431: BC A8 04  LDY ram_obj_facing,X
C - - - - - 0x00D444 03:9434: F0 02     BEQ bra_9438_facing_right
C - - - - - 0x00D446 03:9436: A9 E8     LDA #$E8
bra_9438_facing_right:
C - - - - - 0x00D448 03:9438: A0 0C     LDY #$0C
C - - - - - 0x00D44A 03:943A: 20 1E FC  JSR sub_0x03FC2E
C - - - - - 0x00D44D 03:943D: F0 03     BEQ bra_9442
C - - - - - 0x00D44F 03:943F: 20 8A 94  JSR sub_948A
bra_9442:
C - - - - - 0x00D452 03:9442: 20 9C 94  JSR sub_949C
C - - - - - 0x00D455 03:9445: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x00D458 03:9448: D0 26     BNE bra_9470
bra_944A:
C - - - - - 0x00D45A 03:944A: A0 04     LDY #$04
C - - - - - 0x00D45C 03:944C: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x00D45F 03:944F: DD 38 04  CMP ram_obj_pos_X_hi,X
C - - - - - 0x00D462 03:9452: B0 02     BCS bra_9456
- - - - - - 0x00D464 03:9454: A0 0C     LDY #$0C
bra_9456:
C - - - - - 0x00D466 03:9456: 98        TYA
C - - - - - 0x00D467 03:9457: 20 8F 94  JSR sub_948F
C - - - - - 0x00D46A 03:945A: A9 0A     LDA #$0A
C - - - - - 0x00D46C 03:945C: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x00D46F 03:945F: A9 00     LDA #$00
C - - - - - 0x00D471 03:9461: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x00D474 03:9464: A9 0A     LDA #con_obj_type_0A
C - - - - - 0x00D476 03:9466: A0 50     LDY #$50
C - - - - - 0x00D478 03:9468: 20 6E EF  JSR sub_0x03EF7E
C - - - - - 0x00D47B 03:946B: A9 27     LDA #$27
C - - - - - 0x00D47D 03:946D: 4C 4C 99  JMP loc_994C
bra_9470:
C - - - - - 0x00D480 03:9470: DE 1D 06  DEC ram_061D_obj,X
C - - - - - 0x00D483 03:9473: 20 48 99  JSR sub_9948_generate_random_number
C - - - - - 0x00D486 03:9476: A5 1F     LDA ram_random
C - - - - - 0x00D488 03:9478: 29 03     AND #$03
C - - - - - 0x00D48A 03:947A: C9 01     CMP #$01
C - - - - - 0x00D48C 03:947C: F0 0C     BEQ bra_948A
C - - - - - 0x00D48E 03:947E: A9 0A     LDA #con_obj_type_0A
C - - - - - 0x00D490 03:9480: A0 49     LDY #$49
C - - - - - 0x00D492 03:9482: 20 6E EF  JSR sub_0x03EF7E
C - - - - - 0x00D495 03:9485: A9 2A     LDA #$2A
C - - - - - 0x00D497 03:9487: 4C 4C 99  JMP loc_994C
sub_948A:
bra_948A:
C - - - - - 0x00D49A 03:948A: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x00D49D 03:948D: 49 08     EOR #$08
sub_948F:
C - - - - - 0x00D49F 03:948F: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x00D4A2 03:9492: 29 08     AND #$08
C - - - - - 0x00D4A4 03:9494: F0 02     BEQ bra_9498
C - - - - - 0x00D4A6 03:9496: A9 01     LDA #$01    ; facing left
bra_9498:   ; A = 00 (facing right)
C - - - - - 0x00D4A8 03:9498: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x00D4AB 03:949B: 60        RTS



loc_949C:
sub_949C:
C D 0 - - - 0x00D4AC 03:949C: A0 00     LDY #$00
C - - - - - 0x00D4AE 03:949E: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x00D4B1 03:94A1: C9 18     CMP #$18
C - - - - - 0x00D4B3 03:94A3: 90 05     BCC bra_94AA
C - - - - - 0x00D4B5 03:94A5: C9 D8     CMP #$D8
C - - - - - 0x00D4B7 03:94A7: 90 0D     BCC bra_94B6_RTS
- - - - - - 0x00D4B9 03:94A9: C8        INY ; 01
bra_94AA:
- - - - - - 0x00D4BA 03:94AA: B9 B7 94  LDA tbl_94B7_facing,Y
- - - - - - 0x00D4BD 03:94AD: 9D A8 04  STA ram_obj_facing,X
- - - - - - 0x00D4C0 03:94B0: B9 B9 94  LDA tbl_94B9,Y
- - - - - - 0x00D4C3 03:94B3: 9D 65 05  STA ram_obj_state,X
bra_94B6_RTS:
C - - - - - 0x00D4C6 03:94B6: 60        RTS



tbl_94B7_facing:
- - - - - - 0x00D4C7 03:94B7: 00        .byte $00   ; 00 
- - - - - - 0x00D4C8 03:94B8: 01        .byte $01   ; 01 



tbl_94B9:
- - - - - - 0x00D4C9 03:94B9: 04        .byte $04   ; 00 
- - - - - - 0x00D4CA 03:94BA: 0C        .byte $0C   ; 01 



ofs_042_0x00D4CB_18:
C - - J - - 0x00D4CB 03:94BB: 20 3B 99  JSR sub_993B
C - - - - - 0x00D4CE 03:94BE: 20 09 95  JSR sub_9509
C - - - - - 0x00D4D1 03:94C1: F0 0C     BEQ bra_94CF
C - - - - - 0x00D4D3 03:94C3: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x00D4D6 03:94C6: C9 70     CMP #$70
C - - - - - 0x00D4D8 03:94C8: 90 12     BCC bra_94DC
C - - - - - 0x00D4DA 03:94CA: C9 90     CMP #$90
C - - - - - 0x00D4DC 03:94CC: B0 0E     BCS bra_94DC
C - - - - - 0x00D4DE 03:94CE: 60        RTS
bra_94CF:
C - - - - - 0x00D4DF 03:94CF: A9 2C     LDA #$2C
C - - - - - 0x00D4E1 03:94D1: 4C 4C 99  JMP loc_994C



ofs_042_0x00D4E4_19:
C - - J - - 0x00D4E4 03:94D4: 20 3B 99  JSR sub_993B
C - - - - - 0x00D4E7 03:94D7: 20 09 95  JSR sub_9509
C - - - - - 0x00D4EA 03:94DA: F0 28     BEQ bra_9504
bra_94DC:
C - - - - - 0x00D4EC 03:94DC: BD C1 05  LDA ram_05C1_obj,X
C - - - - - 0x00D4EF 03:94DF: C9 04     CMP #$04
C - - - - - 0x00D4F1 03:94E1: D0 20     BNE bra_9503_RTS
C - - - - - 0x00D4F3 03:94E3: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x00D4F6 03:94E6: C9 60     CMP #$60
C - - - - - 0x00D4F8 03:94E8: 90 19     BCC bra_9503_RTS
C - - - - - 0x00D4FA 03:94EA: A9 00     LDA #$00
C - - - - - 0x00D4FC 03:94EC: A0 08     LDY #$08
C - - - - - 0x00D4FE 03:94EE: 20 1E FC  JSR sub_0x03FC2E
C - - - - - 0x00D501 03:94F1: F0 09     BEQ bra_94FC
C - - - - - 0x00D503 03:94F3: A9 11     LDA #con_sound_11
C - - - - - 0x00D505 03:94F5: 20 5F E2  JSR sub_0x03E26F_play_sound
bra_94F8:
C - - - - - 0x00D508 03:94F8: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x00D50B 03:94FB: 60        RTS
bra_94FC:
C - - - - - 0x00D50C 03:94FC: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x00D50F 03:94FF: C9 B8     CMP #$B8
C - - - - - 0x00D511 03:9501: B0 F5     BCS bra_94F8
bra_9503_RTS:
C - - - - - 0x00D513 03:9503: 60        RTS
bra_9504:
C - - - - - 0x00D514 03:9504: A9 2D     LDA #$2D
C - - - - - 0x00D516 03:9506: 4C 4C 99  JMP loc_994C



sub_9509:
C - - - - - 0x00D519 03:9509: BD EF 05  LDA ram_05EF_obj,X
C - - - - - 0x00D51C 03:950C: 29 7F     AND #$7F
C - - - - - 0x00D51E 03:950E: 60        RTS



ofs_042_0x00D51F_0A:
C - - J - - 0x00D51F 03:950F: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x00D522 03:9512: 29 01     AND #con_obj_flag_01
C - - - - - 0x00D524 03:9514: F0 04     BEQ bra_951A
C - - - - - 0x00D526 03:9516: 09 88     ORA #con_obj_flag_08 + con_obj_flag_not_visible
C - - - - - 0x00D528 03:9518: D0 02     BNE bra_951C    ; jmp
bra_951A:
C - - - - - 0x00D52A 03:951A: A9 40     LDA #con_obj_flag_40
bra_951C:
C - - - - - 0x00D52C 03:951C: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x00D52F 03:951F: A5 78     LDA ram_0078_flag
C - - - - - 0x00D531 03:9521: D0 07     BNE bra_952A
C - - - - - 0x00D533 03:9523: A9 10     LDA #con_obj_type_10
C - - - - - 0x00D535 03:9525: A0 1B     LDY #$1B
C - - - - - 0x00D537 03:9527: 4C 5C EF  JMP loc_0x03EF6C_prepare_animation
bra_952A:
C - - - - - 0x00D53A 03:952A: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x00D53D 03:952D: C9 03     CMP #$03
C - - - - - 0x00D53F 03:952F: F0 03     BEQ bra_9534
C - - - - - 0x00D541 03:9531: 4C D3 95  JMP loc_95D3
bra_9534:
C - - - - - 0x00D544 03:9534: 8E EC 07  STX ram_07EC
C - - - - - 0x00D547 03:9537: AD ED 07  LDA ram_07ED
C - - - - - 0x00D54A 03:953A: C9 07     CMP #$07
C - - - - - 0x00D54C 03:953C: D0 7A     BNE bra_95B8
C - - - - - 0x00D54E 03:953E: BD C1 05  LDA ram_05C1_obj,X
C - - - - - 0x00D551 03:9541: C9 0E     CMP #$0E
C - - - - - 0x00D553 03:9543: D0 73     BNE bra_95B8
C - - - - - 0x00D555 03:9545: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x00D558 03:9548: C9 04     CMP #$04
C - - - - - 0x00D55A 03:954A: B0 04     BCS bra_9550
C - - - - - 0x00D55C 03:954C: FE 33 06  INC ram_obj_0634,X
C - - - - - 0x00D55F 03:954F: 60        RTS
bra_9550:
C - - - - - 0x00D560 03:9550: A9 00     LDA #$00
C - - - - - 0x00D562 03:9552: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x00D565 03:9555: A9 08     LDA #$08
C - - - - - 0x00D567 03:9557: 85 00     STA ram_0000_temp
C - - - - - 0x00D569 03:9559: A9 10     LDA #$10
C - - - - - 0x00D56B 03:955B: 85 01     STA ram_0001_temp
C - - - - - 0x00D56D 03:955D: A0 1F     LDY #$1F
C - - - - - 0x00D56F 03:955F: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x00D572 03:9562: 29 01     AND #$01
C - - - - - 0x00D574 03:9564: F0 0A     BEQ bra_9570
C - - - - - 0x00D576 03:9566: A9 F8     LDA #$F8
C - - - - - 0x00D578 03:9568: 85 00     STA ram_0000_temp
C - - - - - 0x00D57A 03:956A: A9 F0     LDA #$F0
C - - - - - 0x00D57C 03:956C: 85 01     STA ram_0001_temp
C - - - - - 0x00D57E 03:956E: A0 20     LDY #$20
bra_9570:
C - - - - - 0x00D580 03:9570: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x00D583 03:9573: 38        SEC
C - - - - - 0x00D584 03:9574: E5 00     SBC ram_0000_temp
C - - - - - 0x00D586 03:9576: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x00D589 03:9579: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x00D58C 03:957C: 18        CLC
C - - - - - 0x00D58D 03:957D: 65 01     ADC ram_0001_temp
C - - - - - 0x00D58F 03:957F: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x00D592 03:9582: A9 10     LDA #con_obj_type_10
C - - - - - 0x00D594 03:9584: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x00D597 03:9587: FE 1D 06  INC ram_061D_obj,X
C - - - - - 0x00D59A 03:958A: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x00D59D 03:958D: C9 12     CMP #$12
C - - - - - 0x00D59F 03:958F: F0 01     BEQ bra_9592
C - - - - - 0x00D5A1 03:9591: 60        RTS
bra_9592:
C - - - - - 0x00D5A2 03:9592: AD F3 07  LDA ram_07F3
C - - - - - 0x00D5A5 03:9595: 29 7F     AND #$7F
C - - - - - 0x00D5A7 03:9597: 8D F3 07  STA ram_07F3
C - - - - - 0x00D5AA 03:959A: A9 00     LDA #$00
C - - - - - 0x00D5AC 03:959C: 8D EC 07  STA ram_07EC
C - - - - - 0x00D5AF 03:959F: 8D ED 07  STA ram_07ED
C - - - - - 0x00D5B2 03:95A2: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x00D5B5 03:95A5: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x00D5B8 03:95A8: A9 60     LDA #$60
C - - - - - 0x00D5BA 03:95AA: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x00D5BD 03:95AD: A9 01     LDA #$01
C - - - - - 0x00D5BF 03:95AF: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x00D5C2 03:95B2: A9 0C     LDA #$0C
C - - - - - 0x00D5C4 03:95B4: 9D 65 05  STA ram_obj_state,X
bra_95B7_RTS:
C - - - - - 0x00D5C7 03:95B7: 60        RTS
bra_95B8:
C - - - - - 0x00D5C8 03:95B8: A9 00     LDA #$00
C - - - - - 0x00D5CA 03:95BA: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x00D5CD 03:95BD: 20 09 95  JSR sub_9509
C - - - - - 0x00D5D0 03:95C0: D0 F5     BNE bra_95B7_RTS
C - - - - - 0x00D5D2 03:95C2: A9 01     LDA #$01    ; facing left
C - - - - - 0x00D5D4 03:95C4: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x00D5D7 03:95C7: A9 10     LDA #con_obj_type_10
C - - - - - 0x00D5D9 03:95C9: A0 1C     LDY #$1C
C - - - - - 0x00D5DB 03:95CB: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x00D5DE 03:95CE: A9 38     LDA #$38
C - - - - - 0x00D5E0 03:95D0: 4C 4C 99  JMP loc_994C



loc_95D3:
C D 0 - - - 0x00D5E3 03:95D3: AC EC 07  LDY ram_07EC
C - - - - - 0x00D5E6 03:95D6: A9 00     LDA #$00
C - - - - - 0x00D5E8 03:95D8: 85 01     STA ram_0001_temp
C - - - - - 0x00D5EA 03:95DA: B9 38 04  LDA ram_obj_pos_X_hi,Y
C - - - - - 0x00D5ED 03:95DD: 38        SEC
C - - - - - 0x00D5EE 03:95DE: FD 38 04  SBC ram_obj_pos_X_hi,X
C - - - - - 0x00D5F1 03:95E1: 85 00     STA ram_0000_temp
C - - - - - 0x00D5F3 03:95E3: B0 09     BCS bra_95EE
C - - - - - 0x00D5F5 03:95E5: 49 FF     EOR #$FF
C - - - - - 0x00D5F7 03:95E7: 18        CLC
C - - - - - 0x00D5F8 03:95E8: 69 01     ADC #$01
C - - - - - 0x00D5FA 03:95EA: 85 00     STA ram_0000_temp
C - - - - - 0x00D5FC 03:95EC: E6 01     INC ram_0001_temp
bra_95EE:
C - - - - - 0x00D5FE 03:95EE: A5 00     LDA ram_0000_temp
C - - - - - 0x00D600 03:95F0: C9 04     CMP #$04
C - - - - - 0x00D602 03:95F2: B0 34     BCS bra_9628
C - - - - - 0x00D604 03:95F4: A9 00     LDA #$00
C - - - - - 0x00D606 03:95F6: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x00D609 03:95F9: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x00D60C 03:95FC: A9 00     LDA #$00
C - - - - - 0x00D60E 03:95FE: 85 03     STA ram_0003_temp
C - - - - - 0x00D610 03:9600: BC 06 06  LDY ram_obj_config,X
C - - - - - 0x00D613 03:9603: A9 B8     LDA #$B8
C - - - - - 0x00D615 03:9605: 38        SEC
C - - - - - 0x00D616 03:9606: F9 5C 96  SBC tbl_965C,Y
C - - - - - 0x00D619 03:9609: DD 1C 04  CMP ram_obj_pos_Y_hi,X
C - - - - - 0x00D61C 03:960C: 90 0F     BCC bra_961D
C - - - - - 0x00D61E 03:960E: BC 06 06  LDY ram_obj_config,X
C - - - - - 0x00D621 03:9611: B9 54 96  LDA tbl_9654,Y
C - - - - - 0x00D624 03:9614: 0D ED 07  ORA ram_07ED
C - - - - - 0x00D627 03:9617: 8D ED 07  STA ram_07ED
C - - - - - 0x00D62A 03:961A: 4C 52 99  JMP loc_9952
bra_961D:
C - - - - - 0x00D62D 03:961D: A9 FF     LDA #> $FF00
C - - - - - 0x00D62F 03:961F: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x00D632 03:9622: A9 00     LDA #< $FF00
C - - - - - 0x00D634 03:9624: 9D 37 05  STA ram_obj_spd_Y_lo,X
bra_9627_RTS:
C - - - - - 0x00D637 03:9627: 60        RTS
bra_9628:
C - - - - - 0x00D638 03:9628: A5 01     LDA ram_0001_temp
C - - - - - 0x00D63A 03:962A: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x00D63D 03:962D: A9 01     LDA #> $0100
C - - - - - 0x00D63F 03:962F: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x00D642 03:9632: A9 00     LDA #< $0100
C - - - - - 0x00D644 03:9634: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x00D647 03:9637: A5 01     LDA ram_0001_temp
C - - - - - 0x00D649 03:9639: F0 0A     BEQ bra_9645
C - - - - - 0x00D64B 03:963B: A9 FF     LDA #> $FF00
C - - - - - 0x00D64D 03:963D: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x00D650 03:9640: A9 00     LDA #< $FF00
C - - - - - 0x00D652 03:9642: 9D 09 05  STA ram_obj_spd_X_lo,X
bra_9645:
C - - - - - 0x00D655 03:9645: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x00D658 03:9648: D0 DD     BNE bra_9627_RTS
C - - - - - 0x00D65A 03:964A: FE 1D 06  INC ram_061D_obj,X
C - - - - - 0x00D65D 03:964D: A9 10     LDA #con_obj_type_10
C - - - - - 0x00D65F 03:964F: A0 1B     LDY #$1B
C - - - - - 0x00D661 03:9651: 4C 5C EF  JMP loc_0x03EF6C_prepare_animation



tbl_9654:
- D 0 - - - 0x00D664 03:9654: 01        .byte $01   ; 00 
- D 0 - - - 0x00D665 03:9655: 02        .byte $02   ; 01 
- D 0 - - - 0x00D666 03:9656: 04        .byte $04   ; 02 
- - - - - - 0x00D667 03:9657: 08        .byte $08   ; 03 
- - - - - - 0x00D668 03:9658: 10        .byte $10   ; 04 
- - - - - - 0x00D669 03:9659: 20        .byte $20   ; 05 
- - - - - - 0x00D66A 03:965A: 40        .byte $40   ; 06 
- - - - - - 0x00D66B 03:965B: 00        .byte $00   ; 07 



tbl_965C:
- D 0 - - - 0x00D66C 03:965C: 10        .byte $10   ; 00 
- D 0 - - - 0x00D66D 03:965D: 08        .byte $08   ; 01 
- D 0 - - - 0x00D66E 03:965E: 0C        .byte $0C   ; 02 
- - - - - - 0x00D66F 03:965F: 12        .byte $12   ; 03 
- - - - - - 0x00D670 03:9660: 13        .byte $13   ; 04 
- - - - - - 0x00D671 03:9661: 14        .byte $14   ; 05 
- - - - - - 0x00D672 03:9662: 12        .byte $12   ; 06 



bra_9663:
C - - - - - 0x00D673 03:9663: A9 00     LDA #$00
C - - - - - 0x00D675 03:9665: 9D 69 06  STA ram_obj_066A,X
C - - - - - 0x00D678 03:9668: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x00D67B 03:966B: 20 09 95  JSR sub_9509
C - - - - - 0x00D67E 03:966E: C9 2F     CMP #$2F
C - - - - - 0x00D680 03:9670: F0 43     BEQ bra_96B5_RTS
C - - - - - 0x00D682 03:9672: A9 50     LDA #$50    ; 5000
C - - - - - 0x00D684 03:9674: 20 78 99  JSR sub_9978_add_points_to_score
C - - - - - 0x00D687 03:9677: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x00D68A 03:967A: A9 10     LDA #con_obj_type_10
C - - - - - 0x00D68C 03:967C: A0 1B     LDY #$1B
C - - - - - 0x00D68E 03:967E: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x00D691 03:9681: 18        CLC
C - - - - - 0x00D692 03:9682: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x00D695 03:9685: 69 08     ADC #$08
C - - - - - 0x00D697 03:9687: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x00D69A 03:968A: A9 2F     LDA #$2F
C - - - - - 0x00D69C 03:968C: 4C 4C 99  JMP loc_994C



ofs_042_0x00D69F_0A:
C - - J - - 0x00D69F 03:968F: AD F3 07  LDA ram_07F3
C - - - - - 0x00D6A2 03:9692: C9 01     CMP #$01
C - - - - - 0x00D6A4 03:9694: F0 CD     BEQ bra_9663
C - - - - - 0x00D6A6 03:9696: A9 00     LDA #$00
C - - - - - 0x00D6A8 03:9698: 20 56 99  JSR sub_9956
C - - - - - 0x00D6AB 03:969B: AD F3 07  LDA ram_07F3
C - - - - - 0x00D6AE 03:969E: C9 03     CMP #$03
C - - - - - 0x00D6B0 03:96A0: F0 13     BEQ bra_96B5_RTS
C - - - - - 0x00D6B2 03:96A2: A9 01     LDA #$01    ; damage offset
C - - - - - 0x00D6B4 03:96A4: 20 5C 99  JSR sub_995C_deal_damage_to_boss
C - - - - - 0x00D6B7 03:96A7: 20 3B 99  JSR sub_993B
C - - - - - 0x00D6BA 03:96AA: 20 09 95  JSR sub_9509
C - - - - - 0x00D6BD 03:96AD: C9 39     CMP #$39
C - - - - - 0x00D6BF 03:96AF: F0 04     BEQ bra_96B5_RTS
C - - - - - 0x00D6C1 03:96B1: C9 3A     CMP #$3A
C - - - - - 0x00D6C3 03:96B3: D0 01     BNE bra_96B6
bra_96B5_RTS:
C - - - - - 0x00D6C5 03:96B5: 60        RTS
bra_96B6:
C - - - - - 0x00D6C6 03:96B6: A5 A3     LDA ram_00A3_frm_cnt
C - - - - - 0x00D6C8 03:96B8: 29 7F     AND #$7F
C - - - - - 0x00D6CA 03:96BA: D0 4C     BNE bra_9708
C - - - - - 0x00D6CC 03:96BC: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x00D6CF 03:96BF: D0 44     BNE bra_9705
C - - - - - 0x00D6D1 03:96C1: A9 04     LDA #$04
C - - - - - 0x00D6D3 03:96C3: 85 05     STA ram_0005_temp
C - - - - - 0x00D6D5 03:96C5: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x00D6D8 03:96C8: F0 04     BEQ bra_96CE_facing_right
C - - - - - 0x00D6DA 03:96CA: A9 0C     LDA #$0C
C - - - - - 0x00D6DC 03:96CC: 85 05     STA ram_0005_temp
bra_96CE_facing_right:
C - - - - - 0x00D6DE 03:96CE: A9 04     LDA #$04
C - - - - - 0x00D6E0 03:96D0: 85 04     STA ram_0004_temp
bra_96D2_loop:
C - - - - - 0x00D6E2 03:96D2: A9 1E     LDA #$1E
C - - - - - 0x00D6E4 03:96D4: 20 68 99  JSR sub_9968
C - - - - - 0x00D6E7 03:96D7: A5 05     LDA ram_0005_temp
C - - - - - 0x00D6E9 03:96D9: 0A        ASL
C - - - - - 0x00D6EA 03:96DA: 99 65 05  STA ram_obj_state,Y
C - - - - - 0x00D6ED 03:96DD: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x00D6F0 03:96E0: 99 A8 04  STA ram_obj_facing,Y
C - - - - - 0x00D6F3 03:96E3: A5 04     LDA ram_0004_temp
C - - - - - 0x00D6F5 03:96E5: 38        SEC
C - - - - - 0x00D6F6 03:96E6: E9 01     SBC #$01
C - - - - - 0x00D6F8 03:96E8: 99 06 06  STA ram_obj_config,Y
C - - - - - 0x00D6FB 03:96EB: C6 04     DEC ram_0004_temp
C - - - - - 0x00D6FD 03:96ED: D0 E3     BNE bra_96D2_loop
C - - - - - 0x00D6FF 03:96EF: A9 06     LDA #con_sound_06
C - - - - - 0x00D701 03:96F1: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x00D704 03:96F4: A9 01     LDA #$01
C - - - - - 0x00D706 03:96F6: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x00D709 03:96F9: A9 10     LDA #con_obj_type_10
C - - - - - 0x00D70B 03:96FB: A0 1A     LDY #$1A
C - - - - - 0x00D70D 03:96FD: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x00D710 03:9700: A9 39     LDA #$39
C - - - - - 0x00D712 03:9702: 4C 4C 99  JMP loc_994C
bra_9705:
C - - - - - 0x00D715 03:9705: DE 1D 06  DEC ram_061D_obj,X
bra_9708:
C - - - - - 0x00D718 03:9708: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x00D71B 03:970B: D0 2E     BNE bra_973B
C - - - - - 0x00D71D 03:970D: 20 AF 97  JSR sub_97AF
C - - - - - 0x00D720 03:9710: A9 1D     LDA #$1D
C - - - - - 0x00D722 03:9712: 20 68 99  JSR sub_9968
C - - - - - 0x00D725 03:9715: A5 05     LDA ram_0005_temp
C - - - - - 0x00D727 03:9717: 99 65 05  STA ram_obj_state,Y
C - - - - - 0x00D72A 03:971A: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x00D72D 03:971D: 99 A8 04  STA ram_obj_facing,Y
C - - - - - 0x00D730 03:9720: 20 9F 97  JSR sub_979F
C - - - - - 0x00D733 03:9723: A5 05     LDA ram_0005_temp
C - - - - - 0x00D735 03:9725: A0 14     LDY #$14
C - - - - - 0x00D737 03:9727: C9 1A     CMP #$1A
C - - - - - 0x00D739 03:9729: B0 04     BCS bra_972F
C - - - - - 0x00D73B 03:972B: C9 07     CMP #$07
C - - - - - 0x00D73D 03:972D: B0 02     BCS bra_9731
bra_972F:
C - - - - - 0x00D73F 03:972F: A0 17     LDY #$17
bra_9731:
C - - - - - 0x00D741 03:9731: A9 10     LDA #con_obj_type_10
C - - - - - 0x00D743 03:9733: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x00D746 03:9736: A9 3A     LDA #$3A
C - - - - - 0x00D748 03:9738: 4C 4C 99  JMP loc_994C
bra_973B:
C - - - - - 0x00D74B 03:973B: DE 06 06  DEC ram_obj_config,X
C - - - - - 0x00D74E 03:973E: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x00D751 03:9741: C9 38     CMP #$38
C - - - - - 0x00D753 03:9743: B0 02     BCS bra_9747_not_underflow
C - - - - - 0x00D755 03:9745: A9 38     LDA #$38
bra_9747_not_underflow:
C - - - - - 0x00D757 03:9747: C9 E0     CMP #$E0
C - - - - - 0x00D759 03:9749: 90 02     BCC bra_974D_not_overflow
C - - - - - 0x00D75B 03:974B: A9 DF     LDA #$DF
bra_974D_not_overflow:
C - - - - - 0x00D75D 03:974D: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x00D760 03:9750: 20 09 95  JSR sub_9509
C - - - - - 0x00D763 03:9753: C9 3B     CMP #$3B
C - - - - - 0x00D765 03:9755: F0 47     BEQ bra_979E_RTS
C - - - - - 0x00D767 03:9757: C9 3F     CMP #$3F
C - - - - - 0x00D769 03:9759: F0 43     BEQ bra_979E_RTS
C - - - - - 0x00D76B 03:975B: C9 00     CMP #$00
C - - - - - 0x00D76D 03:975D: D0 07     BNE bra_9766
C - - - - - 0x00D76F 03:975F: A9 10     LDA #con_obj_type_10
C - - - - - 0x00D771 03:9761: A0 13     LDY #$13
C - - - - - 0x00D773 03:9763: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
bra_9766:
C - - - - - 0x00D776 03:9766: 20 5B 98  JSR sub_985B
C - - - - - 0x00D779 03:9769: 20 9C 99  JSR sub_999C
C - - - - - 0x00D77C 03:976C: A5 00     LDA ram_0000_temp
C - - - - - 0x00D77E 03:976E: C9 58     CMP #$58
C - - - - - 0x00D780 03:9770: B0 1C     BCS bra_978E
C - - - - - 0x00D782 03:9772: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x00D785 03:9775: C9 D0     CMP #$D0
C - - - - - 0x00D787 03:9777: B0 08     BCS bra_9781
C - - - - - 0x00D789 03:9779: C9 40     CMP #$40
C - - - - - 0x00D78B 03:977B: 90 04     BCC bra_9781
bra_977D:
C - - - - - 0x00D78D 03:977D: A9 3F     LDA #$3F
C - - - - - 0x00D78F 03:977F: D0 0F     BNE bra_9790    ; jmp
bra_9781:
C - - - - - 0x00D791 03:9781: A5 1F     LDA ram_random
C - - - - - 0x00D793 03:9783: 29 01     AND #$01
C - - - - - 0x00D795 03:9785: F0 F6     BEQ bra_977D
C - - - - - 0x00D797 03:9787: 20 3A 98  JSR sub_983A
C - - - - - 0x00D79A 03:978A: A9 3B     LDA #$3B
C - - - - - 0x00D79C 03:978C: D0 02     BNE bra_9790    ; jmp
bra_978E:
C - - - - - 0x00D79E 03:978E: A9 3C     LDA #$3C
bra_9790:
C - - - - - 0x00D7A0 03:9790: 85 01     STA ram_0001_temp
C - - - - - 0x00D7A2 03:9792: 20 09 95  JSR sub_9509
C - - - - - 0x00D7A5 03:9795: C5 01     CMP ram_0001_temp
C - - - - - 0x00D7A7 03:9797: F0 05     BEQ bra_979E_RTS
C - - - - - 0x00D7A9 03:9799: A5 01     LDA ram_0001_temp
C - - - - - 0x00D7AB 03:979B: 4C 4C 99  JMP loc_994C
bra_979E_RTS:
C - - - - - 0x00D7AE 03:979E: 60        RTS



sub_979F:
C - - - - - 0x00D7AF 03:979F: A5 1A     LDA ram_frm_cnt
C - - - - - 0x00D7B1 03:97A1: 29 03     AND #$03
C - - - - - 0x00D7B3 03:97A3: A8        TAY
C - - - - - 0x00D7B4 03:97A4: B9 AB 97  LDA tbl_97AB,Y
C - - - - - 0x00D7B7 03:97A7: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x00D7BA 03:97AA: 60        RTS



tbl_97AB:
- D 0 - - - 0x00D7BB 03:97AB: 30        .byte $30   ; 00 
- D 0 - - - 0x00D7BC 03:97AC: 40        .byte $40   ; 01 
- D 0 - - - 0x00D7BD 03:97AD: 50        .byte $50   ; 02 
- D 0 - - - 0x00D7BE 03:97AE: 60        .byte $60   ; 03 



sub_97AF:
C - - - - - 0x00D7BF 03:97AF: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x00D7C2 03:97B2: 85 04     STA ram_0004_t013_pos_X_hi
C - - - - - 0x00D7C4 03:97B4: A0 00     LDY #$00
C - - - - - 0x00D7C6 03:97B6: A5 82     LDA ram_copy_plr_id
C - - - - - 0x00D7C8 03:97B8: 29 04     AND #$04
C - - - - - 0x00D7CA 03:97BA: F0 01     BEQ bra_97BD
- - - - - - 0x00D7CC 03:97BC: C8        INY ; 01
bra_97BD:
C - - - - - 0x00D7CD 03:97BD: B9 0D 98  LDA tbl_980D_pos_Y_hi,Y
C - - - - - 0x00D7D0 03:97C0: 18        CLC
C - - - - - 0x00D7D1 03:97C1: 6D 1C 04  ADC ram_plr_pos_Y_hi
C - - - - - 0x00D7D4 03:97C4: 85 05     STA ram_0005_t009_pos_Y_hi
C - - - - - 0x00D7D6 03:97C6: 20 30 FF  JSR sub_0x03FF40
C - - - - - 0x00D7D9 03:97C9: 20 13 98  JSR sub_9813
C - - - - - 0x00D7DC 03:97CC: A5 00     LDA ram_0000_t07B
C - - - - - 0x00D7DE 03:97CE: BC A8 04  LDY ram_obj_facing,X
C - - - - - 0x00D7E1 03:97D1: F0 29     BEQ bra_97FC_facing_right
C - - - - - 0x00D7E3 03:97D3: 29 10     AND #$10
C - - - - - 0x00D7E5 03:97D5: D0 20     BNE bra_97F7
- - - - - - 0x00D7E7 03:97D7: A0 00     LDY #$00
bra_97D9:
- - - - - - 0x00D7E9 03:97D9: B9 0F 98  LDA tbl_980F,Y
- - - - - - 0x00D7EC 03:97DC: 85 01     STA ram_0001_temp
- - - - - - 0x00D7EE 03:97DE: B9 11 98  LDA tbl_9811,Y
- - - - - - 0x00D7F1 03:97E1: 85 02     STA ram_0002_temp
- - - - - - 0x00D7F3 03:97E3: A5 00     LDA ram_0000_t07B
- - - - - - 0x00D7F5 03:97E5: 25 02     AND ram_0002_temp
- - - - - - 0x00D7F7 03:97E7: 48        PHA
- - - - - - 0x00D7F8 03:97E8: 38        SEC
- - - - - - 0x00D7F9 03:97E9: E9 04     SBC #$04
- - - - - - 0x00D7FB 03:97EB: A8        TAY
- - - - - - 0x00D7FC 03:97EC: 68        PLA
- - - - - - 0x00D7FD 03:97ED: 59 04 98  EOR tbl_9804,Y
- - - - - - 0x00D800 03:97F0: 85 00     STA ram_0000_temp
- - - - - - 0x00D802 03:97F2: 05 01     ORA ram_0001_temp
- - - - - - 0x00D804 03:97F4: 85 05     STA ram_0005_temp
- - - - - - 0x00D806 03:97F6: 60        RTS
bra_97F7:
C - - - - - 0x00D807 03:97F7: A5 00     LDA ram_0000_temp
C - - - - - 0x00D809 03:97F9: 85 05     STA ram_0005_temp
C - - - - - 0x00D80B 03:97FB: 60        RTS
bra_97FC_facing_right:
C - - - - - 0x00D80C 03:97FC: 29 10     AND #$10
C - - - - - 0x00D80E 03:97FE: F0 F7     BEQ bra_97F7
- - - - - - 0x00D810 03:9800: A0 01     LDY #$01
- - - - - - 0x00D812 03:9802: D0 D5     BNE bra_97D9    ; jmp



tbl_9804:
- - - - - - 0x00D814 03:9804: 08        .byte $08   ; 04
- - - - - - 0x00D815 03:9805: 0E        .byte $0E   ; 05
- - - - - - 0x00D816 03:9806: 0C        .byte $0C   ; 06
- - - - - - 0x00D817 03:9807: 0E        .byte $0E   ; 07
- - - - - - 0x00D818 03:9808: 00        .byte $00   ; 08
- - - - - - 0x00D819 03:9809: 0E        .byte $0E   ; 09
- - - - - - 0x00D81A 03:980A: 0C        .byte $0C   ; 0A
- - - - - - 0x00D81B 03:980B: 0E        .byte $0E   ; 0B
- - - - - - 0x00D81C 03:980C: 08        .byte $08   ; 0C



tbl_980D_pos_Y_hi:
- D 0 - - - 0x00D81D 03:980D: 00        .byte $00   ; 00 
- - - - - - 0x00D81E 03:980E: 10        .byte $10   ; 01 



tbl_980F:
- - - - - - 0x00D81F 03:980F: 10        .byte $10   ; 00 
- - - - - - 0x00D820 03:9810: 00        .byte $00   ; 01 



tbl_9811:
- - - - - - 0x00D821 03:9811: FF        .byte $FF   ; 00 
- - - - - - 0x00D822 03:9812: 0F        .byte $0F   ; 01 



sub_9813:
; in
    ; ram_0000_t07B
; out
    ; ram_0000_t07B
C - - - - - 0x00D823 03:9813: A5 00     LDA ram_0000_t07B
C - - - - - 0x00D825 03:9815: 29 1F     AND #$1F
C - - - - - 0x00D827 03:9817: 85 00     STA ram_0000_t07B
C - - - - - 0x00D829 03:9819: A0 00     LDY #$00
C - - - - - 0x00D82B 03:981B: 29 10     AND #$10
C - - - - - 0x00D82D 03:981D: D0 13     BNE bra_9832
bra_981F:
C - - - - - 0x00D82F 03:981F: A5 00     LDA ram_0000_t07B
C - - - - - 0x00D831 03:9821: 29 0F     AND #$0F
C - - - - - 0x00D833 03:9823: C9 04     CMP #$04
C - - - - - 0x00D835 03:9825: 90 05     BCC bra_982C
C - - - - - 0x00D837 03:9827: C9 0D     CMP #$0D
C - - - - - 0x00D839 03:9829: 90 06     BCC bra_9831_RTS
- - - - - - 0x00D83B 03:982B: C8        INY ; 01/03
bra_982C:
- - - - - - 0x00D83C 03:982C: B9 36 98  LDA tbl_9836,Y
- - - - - - 0x00D83F 03:982F: 85 00     STA ram_0000_t07B
bra_9831_RTS:
C - - - - - 0x00D841 03:9831: 60        RTS
bra_9832:
C - - - - - 0x00D842 03:9832: A0 02     LDY #$02
C - - - - - 0x00D844 03:9834: D0 E9     BNE bra_981F    ; jmp



tbl_9836:
- - - - - - 0x00D846 03:9836: 04        .byte $04   ; 00 
- - - - - - 0x00D847 03:9837: 0C        .byte $0C   ; 01 
- - - - - - 0x00D848 03:9838: 14        .byte $14   ; 02 
- - - - - - 0x00D849 03:9839: 1C        .byte $1C   ; 03 



sub_983A:
C - - - - - 0x00D84A 03:983A: A9 00     LDA #$00
C - - - - - 0x00D84C 03:983C: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x00D84F 03:983F: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x00D852 03:9842: DD 38 04  CMP ram_obj_pos_X_hi,X
C - - - - - 0x00D855 03:9845: B0 0E     BCS bra_9855
bra_9847:
C - - - - - 0x00D857 03:9847: A9 0C     LDA #$0C
C - - - - - 0x00D859 03:9849: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x00D85C 03:984C: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x00D85F 03:984F: 49 01     EOR #$01
C - - - - - 0x00D861 03:9851: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x00D864 03:9854: 60        RTS
bra_9855:
C - - - - - 0x00D865 03:9855: A9 04     LDA #$04
C - - - - - 0x00D867 03:9857: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x00D86A 03:985A: 60        RTS



sub_985B:
C - - - - - 0x00D86B 03:985B: A9 01     LDA #$01    ; facing left
C - - - - - 0x00D86D 03:985D: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x00D870 03:9860: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x00D873 03:9863: DD 38 04  CMP ram_obj_pos_X_hi,X
C - - - - - 0x00D876 03:9866: 90 ED     BCC bra_9855
C - - - - - 0x00D878 03:9868: B0 DD     BCS bra_9847    ; jmp



ofs_042_0x00D87A_1D:
C - - J - - 0x00D87A 03:986A: 20 3B 99  JSR sub_993B
C - - - - - 0x00D87D 03:986D: 20 09 95  JSR sub_9509
C - - - - - 0x00D880 03:9870: C9 3E     CMP #$3E
C - - - - - 0x00D882 03:9872: F0 56     BEQ bra_98CA
C - - - - - 0x00D884 03:9874: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x00D887 03:9877: A0 01     LDY #$01
C - - - - - 0x00D889 03:9879: C9 07     CMP #$07
C - - - - - 0x00D88B 03:987B: 90 05     BCC bra_9882
C - - - - - 0x00D88D 03:987D: C9 1A     CMP #$1A
C - - - - - 0x00D88F 03:987F: B0 01     BCS bra_9882
C - - - - - 0x00D891 03:9881: 88        DEY ; 00
bra_9882:
C - - - - - 0x00D892 03:9882: B9 E4 98  LDA tbl_98E4,Y
C - - - - - 0x00D895 03:9885: 85 00     STA ram_0000_temp
C - - - - - 0x00D897 03:9887: B9 E6 98  LDA tbl_98E6,Y
C - - - - - 0x00D89A 03:988A: 85 01     STA ram_0001_temp
C - - - - - 0x00D89C 03:988C: B9 E8 98  LDA tbl_98E8,Y
C - - - - - 0x00D89F 03:988F: 85 02     STA ram_0002_temp
C - - - - - 0x00D8A1 03:9891: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x00D8A4 03:9894: 38        SEC
C - - - - - 0x00D8A5 03:9895: E5 00     SBC ram_0000_temp
C - - - - - 0x00D8A7 03:9897: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x00D8AA 03:989A: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x00D8AD 03:989D: F0 04     BEQ bra_98A3_facing_right
C - - - - - 0x00D8AF 03:989F: A5 01     LDA ram_0001_temp
C - - - - - 0x00D8B1 03:98A1: D0 02     BNE bra_98A5
bra_98A3_facing_right:
C - - - - - 0x00D8B3 03:98A3: A5 02     LDA ram_0002_temp
bra_98A5:
C - - - - - 0x00D8B5 03:98A5: 18        CLC
C - - - - - 0x00D8B6 03:98A6: 7D 38 04  ADC ram_obj_pos_X_hi,X
C - - - - - 0x00D8B9 03:98A9: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x00D8BC 03:98AC: A9 40     LDA #con_obj_flag_40
C - - - - - 0x00D8BE 03:98AE: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x00D8C1 03:98B1: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x00D8C4 03:98B4: A0 22     LDY #$22
C - - - - - 0x00D8C6 03:98B6: C9 07     CMP #$07
C - - - - - 0x00D8C8 03:98B8: 90 06     BCC bra_98C0
C - - - - - 0x00D8CA 03:98BA: C9 1A     CMP #$1A
C - - - - - 0x00D8CC 03:98BC: B0 02     BCS bra_98C0
C - - - - - 0x00D8CE 03:98BE: A0 21     LDY #$21
bra_98C0:
C - - - - - 0x00D8D0 03:98C0: A9 10     LDA #con_obj_type_10
C - - - - - 0x00D8D2 03:98C2: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x00D8D5 03:98C5: A9 3E     LDA #$3E
C - - - - - 0x00D8D7 03:98C7: 4C 4C 99  JMP loc_994C
loc_98CA:
bra_98CA:
C D 0 - - - 0x00D8DA 03:98CA: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x00D8DD 03:98CD: C9 F8     CMP #$F8
C - - - - - 0x00D8DF 03:98CF: B0 0F     BCS bra_98E0
C - - - - - 0x00D8E1 03:98D1: C9 08     CMP #$08
C - - - - - 0x00D8E3 03:98D3: 90 0B     BCC bra_98E0
C - - - - - 0x00D8E5 03:98D5: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x00D8E8 03:98D8: C9 20     CMP #$20
C - - - - - 0x00D8EA 03:98DA: 90 04     BCC bra_98E0
C - - - - - 0x00D8EC 03:98DC: C9 F8     CMP #$F8
C - - - - - 0x00D8EE 03:98DE: 90 03     BCC bra_98E3_RTS
bra_98E0:
C - - - - - 0x00D8F0 03:98E0: 4C 52 99  JMP loc_9952
bra_98E3_RTS:
C - - - - - 0x00D8F3 03:98E3: 60        RTS



tbl_98E4:
- D 0 - - - 0x00D8F4 03:98E4: 06        .byte $06   ; 00 
- D 0 - - - 0x00D8F5 03:98E5: 0C        .byte $0C   ; 01 



tbl_98E6:
- D 0 - - - 0x00D8F6 03:98E6: E8        .byte $E8   ; 00 
- D 0 - - - 0x00D8F7 03:98E7: F0        .byte $F0   ; 01 



tbl_98E8:
- D 0 - - - 0x00D8F8 03:98E8: 18        .byte $18   ; 00 
- D 0 - - - 0x00D8F9 03:98E9: 10        .byte $10   ; 01 



ofs_042_0x00D8FA_1E:
C - - J - - 0x00D8FA 03:98EA: A9 0D     LDA #$0D
C - - - - - 0x00D8FC 03:98EC: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x00D8FF 03:98EF: 20 09 95  JSR sub_9509
C - - - - - 0x00D902 03:98F2: C9 3D     CMP #$3D
C - - - - - 0x00D904 03:98F4: F0 3E     BEQ bra_9934
C - - - - - 0x00D906 03:98F6: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x00D909 03:98F9: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x00D90C 03:98FC: 38        SEC
C - - - - - 0x00D90D 03:98FD: E9 0E     SBC #$0E
C - - - - - 0x00D90F 03:98FF: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x00D912 03:9902: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x00D915 03:9905: D0 04     BNE bra_990B_facing_left
C - - - - - 0x00D917 03:9907: A9 10     LDA #$10
C - - - - - 0x00D919 03:9909: D0 02     BNE bra_990D
bra_990B_facing_left:
C - - - - - 0x00D91B 03:990B: A9 F0     LDA #$F0
bra_990D:
C - - - - - 0x00D91D 03:990D: 18        CLC
C - - - - - 0x00D91E 03:990E: 7D 38 04  ADC ram_obj_pos_X_hi,X
C - - - - - 0x00D921 03:9911: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x00D924 03:9914: A9 40     LDA #con_obj_flag_40
C - - - - - 0x00D926 03:9916: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x00D929 03:9919: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x00D92C 03:991C: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x00D92F 03:991F: BC 06 06  LDY ram_obj_config,X
C - - - - - 0x00D932 03:9922: B9 37 99  LDA tbl_9937,Y
C - - - - - 0x00D935 03:9925: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x00D938 03:9928: A9 10     LDA #con_obj_type_10
C - - - - - 0x00D93A 03:992A: A0 23     LDY #$23
C - - - - - 0x00D93C 03:992C: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x00D93F 03:992F: A9 3D     LDA #$3D
C - - - - - 0x00D941 03:9931: 4C 4C 99  JMP loc_994C
bra_9934:
C - - - - - 0x00D944 03:9934: 4C CA 98  JMP loc_98CA



tbl_9937:
- D 0 - - - 0x00D947 03:9937: 21        .byte $21   ; 00 
- D 0 - - - 0x00D948 03:9938: 31        .byte $31   ; 01 
- D 0 - - - 0x00D949 03:9939: 41        .byte $41   ; 02 
- D 0 - - - 0x00D94A 03:993A: 51        .byte $51   ; 03 



sub_993B:
C - - - - - 0x00D94B 03:993B: A9 20     LDA #$20
C - - - - - 0x00D94D 03:993D: AC F6 07  LDY ram_quest
C - - - - - 0x00D950 03:9940: F0 02     BEQ bra_9944_1st_quest
C - - - - - 0x00D952 03:9942: A9 30     LDA #$30
bra_9944_1st_quest:
C - - - - - 0x00D954 03:9944: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x00D957 03:9947: 60        RTS



sub_9948_generate_random_number:
C - - - - - 0x00D958 03:9948: A0 00     LDY #$00
C - - - - - 0x00D95A 03:994A: F0 36     BEQ bra_9982_jump_1    ; jmp



loc_994C:
sub_994C:
C D 0 - - - 0x00D95C 03:994C: 85 0E     STA ram_000E_t005_subroutine_argument_A
C - - - - - 0x00D95E 03:994E: A0 02     LDY #$02
C - - - - - 0x00D960 03:9950: D0 3D     BNE bra_998F_jump_2    ; jmp



loc_9952:
sub_9952:
C D 0 - - - 0x00D962 03:9952: A0 04     LDY #$04
C - - - - - 0x00D964 03:9954: D0 2C     BNE bra_9982_jump_1    ; jmp



sub_9956:
loc_9956:
C D 0 - - - 0x00D966 03:9956: 85 0E     STA ram_000E_t005_subroutine_argument_A
C - - - - - 0x00D968 03:9958: A0 06     LDY #$06
C - - - - - 0x00D96A 03:995A: D0 33     BNE bra_998F_jump_2    ; jmp



sub_995C_deal_damage_to_boss:
loc_995C_deal_damage_to_boss:
; in
    ; A = damage offset
C D 0 - - - 0x00D96C 03:995C: 85 0E     STA ram_000E_t005_subroutine_argument_A
C - - - - - 0x00D96E 03:995E: A0 08     LDY #$08
C - - - - - 0x00D970 03:9960: D0 2D     BNE bra_998F_jump_2    ; jmp



sub_9962:
C - - - - - 0x00D972 03:9962: 85 0E     STA ram_000E_t005_subroutine_argument_A
C - - - - - 0x00D974 03:9964: A0 0A     LDY #$0A
C - - - - - 0x00D976 03:9966: D0 27     BNE bra_998F_jump_2    ; jmp



sub_9968:
C - - - - - 0x00D978 03:9968: 85 0E     STA ram_000E_t005_subroutine_argument_A
C - - - - - 0x00D97A 03:996A: A0 0C     LDY #$0C
C - - - - - 0x00D97C 03:996C: D0 21     BNE bra_998F_jump_2    ; jmp



sub_996E:
; in
    ; A = 
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x00D97E 03:996E: 85 0E     STA ram_000E_t005_subroutine_argument_A
C - - - - - 0x00D980 03:9970: A0 0E     LDY #$0E
C - - - - - 0x00D982 03:9972: D0 1B     BNE bra_998F_jump_2    ; jmp



loc_9974:
C D 0 - - - 0x00D984 03:9974: A0 10     LDY #$10
C - - - - - 0x00D986 03:9976: D0 0A     BNE bra_9982_jump_1    ; jmp



sub_9978_add_points_to_score:
; in
    ; A = 00xx00 points (hundreds and thousands)
C - - - - - 0x00D988 03:9978: 85 0E     STA ram_000E_t005_subroutine_argument_A
C - - - - - 0x00D98A 03:997A: A0 12     LDY #$12
C - - - - - 0x00D98C 03:997C: D0 11     BNE bra_998F_jump_2    ; jmp



sub_997E:
C - - - - - 0x00D98E 03:997E: A0 14     LDY #$14
C - - - - - 0x00D990 03:9980: D0 0D     BNE bra_998F_jump_2    ; jmp



bra_9982_jump_1:
C - - - - - 0x00D992 03:9982: B9 A4 99  LDA tbl_99A4,Y
C - - - - - 0x00D995 03:9985: 85 00     STA ram_0000_t025_jmp
C - - - - - 0x00D997 03:9987: B9 A5 99  LDA tbl_99A4 + $01,Y
C - - - - - 0x00D99A 03:998A: 85 01     STA ram_0000_t025_jmp + $01
C - - - - - 0x00D99C 03:998C: 4C 2D E6  JMP loc_0x03E63D_indirect_jump_bank_92



bra_998F_jump_2:
C - - - - - 0x00D99F 03:998F: B9 A4 99  LDA tbl_99A4,Y
C - - - - - 0x00D9A2 03:9992: 85 00     STA ram_0000_t025_jmp
C - - - - - 0x00D9A4 03:9994: B9 A5 99  LDA tbl_99A4 + $01,Y
C - - - - - 0x00D9A7 03:9997: 85 01     STA ram_0000_t025_jmp + $01
C - - - - - 0x00D9A9 03:9999: 4C 41 E6  JMP loc_0x03E651_indirect_jump_bank_92



sub_999C:
C - - - - - 0x00D9AC 03:999C: A0 16     LDY #$16
C - - - - - 0x00D9AE 03:999E: D0 EF     BNE bra_998F_jump_2    ; jmp



sub_99A0:
C - - - - - 0x00D9B0 03:99A0: A0 18     LDY #$18
C - - - - - 0x00D9B2 03:99A2: D0 EB     BNE bra_998F_jump_2    ; jmp



tbl_99A4:
- D 0 - - - 0x00D9B4 03:99A4: 3B A1     .word ofs_044_0x02614B_00_generate_random_number
- D 0 - - - 0x00D9B6 03:99A6: 4F 86     .word ofs_044_0x02465F_02
- D 0 - - - 0x00D9B8 03:99A8: 3A 87     .word ofs_044_0x02474A_04_clear_object_data
- D 0 - - - 0x00D9BA 03:99AA: F4 87     .word ofs_044_0x024804_06
- D 0 - - - 0x00D9BC 03:99AC: E0 88     .word ofs_044_0x0248F0_08_deal_damage_to_boss
- D 0 - - - 0x00D9BE 03:99AE: 05 89     .word ofs_044_0x024915_0A
- D 0 - - - 0x00D9C0 03:99B0: 66 87     .word ofs_044_0x024776_0C
- D 0 - - - 0x00D9C2 03:99B2: C5 87     .word ofs_044_0x0247D5_0E
- D 0 - - - 0x00D9C4 03:99B4: 00 A5     .word ofs_044_0x026510_10
- D 0 - - - 0x00D9C6 03:99B6: 61 86     .word ofs_044_0x024671_12_add_points_to_score
- D 0 - - - 0x00D9C8 03:99B8: 31 82     .word ofs_044_0x024241_14
- D 0 - - - 0x00D9CA 03:99BA: 08 86     .word ofs_044_0x024618_16
- D 0 - - - 0x00D9CC 03:99BC: 62 B5     .word ofs_044_0x027572_18



ofs_042_0x00D9CE_0C:
C - - J - - 0x00D9CE 03:99BE: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x00D9D1 03:99C1: 20 6D E8  JSR sub_0x03E87D_jump_to_pointers_after_JSR_A
- D 0 - I - 0x00D9D4 03:99C4: C8 99     .word ofs_020_99C8_00
- D 0 - I - 0x00D9D6 03:99C6: F1 99     .word ofs_020_99F1_01



ofs_020_99C8_00:
C - - J - - 0x00D9D8 03:99C8: A9 10     LDA #con_obj_type_10
C - - - - - 0x00D9DA 03:99CA: A0 48     LDY #$48
C - - - - - 0x00D9DC 03:99CC: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x00D9DF 03:99CF: A9 58     LDA #con_obj_flag_08 + con_obj_flag_10 + con_obj_flag_40
C - - - - - 0x00D9E1 03:99D1: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x00D9E4 03:99D4: A5 78     LDA ram_0078_flag
C - - - - - 0x00D9E6 03:99D6: F0 18     BEQ bra_99F0_RTS
C - - - - - 0x00D9E8 03:99D8: DE 45 06  DEC ram_obj_0646,X
C - - - - - 0x00D9EB 03:99DB: DE 45 06  DEC ram_obj_0646,X
C - - - - - 0x00D9EE 03:99DE: D0 10     BNE bra_99F0_RTS
C - - - - - 0x00D9F0 03:99E0: 20 01 9C  JSR sub_9C01_face_object_towards_player
C - - - - - 0x00D9F3 03:99E3: A9 A7     LDA #$A7
C - - - - - 0x00D9F5 03:99E5: 8D ED 07  STA ram_07ED
C - - - - - 0x00D9F8 03:99E8: A9 78     LDA #$78
C - - - - - 0x00D9FA 03:99EA: 9D 45 06  STA ram_obj_0646,X
C - - - - - 0x00D9FD 03:99ED: FE 65 05  INC ram_obj_state,X
bra_99F0_RTS:
C - - - - - 0x00DA00 03:99F0: 60        RTS



ofs_020_99F1_01:
C - - J - - 0x00DA01 03:99F1: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x00DA04 03:99F4: 49 08     EOR #con_obj_flag_08
C - - - - - 0x00DA06 03:99F6: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x00DA09 03:99F9: DE 45 06  DEC ram_obj_0646,X
C - - - - - 0x00DA0C 03:99FC: D0 15     BNE bra_9A13_RTS
C - - - - - 0x00DA0E 03:99FE: A9 40     LDA #con_obj_flag_40
C - - - - - 0x00DA10 03:9A00: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x00DA13 03:9A03: FE 45 06  INC ram_obj_0646,X
C - - - - - 0x00DA16 03:9A06: A9 00     LDA #$00
C - - - - - 0x00DA18 03:9A08: 8D F3 07  STA ram_07F3
C - - - - - 0x00DA1B 03:9A0B: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x00DA1E 03:9A0E: A9 04     LDA #$04
C - - - - - 0x00DA20 03:9A10: 8D EE 07  STA ram_07EE
bra_9A13_RTS:
C - - - - - 0x00DA23 03:9A13: 60        RTS



ofs_042_0x00DA24_0C:
C - - J - - 0x00DA24 03:9A14: 20 1A 9A  JSR sub_9A1A
C - - - - - 0x00DA27 03:9A17: A6 6C     LDX ram_006C_object_index
C - - - - - 0x00DA29 03:9A19: 60        RTS



sub_9A1A:
C - - - - - 0x00DA2A 03:9A1A: A9 00     LDA #$00
C - - - - - 0x00DA2C 03:9A1C: 20 56 99  JSR sub_9956
C - - - - - 0x00DA2F 03:9A1F: EE ED 07  INC ram_07ED
C - - - - - 0x00DA32 03:9A22: 20 0A 9B  JSR sub_9B0A    ; possible PLA PLA
C - - - - - 0x00DA35 03:9A25: 20 0E 9C  JSR sub_9C0E
C - - - - - 0x00DA38 03:9A28: A6 6C     LDX ram_006C_object_index
C - - - - - 0x00DA3A 03:9A2A: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x00DA3D 03:9A2D: 20 6D E8  JSR sub_0x03E87D_jump_to_pointers_after_JSR_A
- D 0 - I - 0x00DA40 03:9A30: 48 9A     .word ofs_019_9A48_00
- D 0 - I - 0x00DA42 03:9A32: 66 9A     .word ofs_019_9A66_01
- D 0 - I - 0x00DA44 03:9A34: 99 9A     .word ofs_019_9A99_02
- D 0 - I - 0x00DA46 03:9A36: B4 9A     .word ofs_019_9AB4_03
- D 0 - I - 0x00DA48 03:9A38: 8F 9D     .word ofs_019_9D8F_04
- D 0 - I - 0x00DA4A 03:9A3A: C4 9D     .word ofs_019_9DC4_05
- D 0 - I - 0x00DA4C 03:9A3C: 00 9E     .word ofs_019_9E00_06
- D 0 - I - 0x00DA4E 03:9A3E: 12 9E     .word ofs_019_9E12_07
- D 0 - I - 0x00DA50 03:9A40: 31 9E     .word ofs_019_9E31_08
- D 0 - I - 0x00DA52 03:9A42: 61 9E     .word ofs_019_9E61_09
- D 0 - I - 0x00DA54 03:9A44: F4 9E     .word ofs_019_9EF4_0A
- D 0 - I - 0x00DA56 03:9A46: 01 9F     .word ofs_019_9F01_0B



ofs_019_9A48_00:
C - - J - - 0x00DA58 03:9A48: A9 30     LDA #$30
C - - - - - 0x00DA5A 03:9A4A: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x00DA5D 03:9A4D: 20 47 9B  JSR sub_9B47
C - - - - - 0x00DA60 03:9A50: DE 45 06  DEC ram_obj_0646,X
C - - - - - 0x00DA63 03:9A53: D0 10     BNE bra_9A65_RTS
C - - - - - 0x00DA65 03:9A55: 20 6A 9B  JSR sub_9B6A
C - - - - - 0x00DA68 03:9A58: A9 BF     LDA #$BF
C - - - - - 0x00DA6A 03:9A5A: 9D 45 06  STA ram_obj_0646,X
C - - - - - 0x00DA6D 03:9A5D: FE 65 05  INC ram_obj_state,X
sub_9A60:
C - - - - - 0x00DA70 03:9A60: A9 40     LDA #con_obj_flag_40
C - - - - - 0x00DA72 03:9A62: 9D 70 04  STA ram_obj_flags,X
bra_9A65_RTS:
C - - - - - 0x00DA75 03:9A65: 60        RTS



ofs_019_9A66_01:
C - - J - - 0x00DA76 03:9A66: 20 60 9A  JSR sub_9A60
C - - - - - 0x00DA79 03:9A69: 20 47 9B  JSR sub_9B47
C - - - - - 0x00DA7C 03:9A6C: 20 EF 9B  JSR sub_9BEF
C - - - - - 0x00DA7F 03:9A6F: 20 A5 9B  JSR sub_9BA5
C - - - - - 0x00DA82 03:9A72: BD 37 05  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x00DA85 03:9A75: 69 04     ADC #< $0004
C - - - - - 0x00DA87 03:9A77: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x00DA8A 03:9A7A: BD 20 05  LDA ram_obj_spd_Y_hi,X
C - - - - - 0x00DA8D 03:9A7D: 69 00     ADC #> $0004
C - - - - - 0x00DA8F 03:9A7F: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x00DA92 03:9A82: A9 80     LDA #$80
C - - - - - 0x00DA94 03:9A84: 8D EC 07  STA ram_07EC
C - - - - - 0x00DA97 03:9A87: DE 45 06  DEC ram_obj_0646,X
C - - - - - 0x00DA9A 03:9A8A: D0 D9     BNE bra_9A65_RTS
C - - - - - 0x00DA9C 03:9A8C: A9 00     LDA #$00
C - - - - - 0x00DA9E 03:9A8E: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x00DAA1 03:9A91: A9 3F     LDA #$3F
C - - - - - 0x00DAA3 03:9A93: 9D 45 06  STA ram_obj_0646,X
sub_9A96_clear_speed:   ; bzk optimize
loc_9A96_clear_speed:   ; bzk optimize
C D 0 - - - 0x00DAA6 03:9A96: 4C C8 FE  JMP loc_0x03FED8_clear_speed



ofs_019_9A99_02:
C - - J - - 0x00DAA9 03:9A99: FE AA 05  INC ram_05AA_obj,X
C - - - - - 0x00DAAC 03:9A9C: FE 65 05  INC ram_obj_state,X
C - - - - - 0x00DAAF 03:9A9F: A9 80     LDA #$80
C - - - - - 0x00DAB1 03:9AA1: 9D 45 06  STA ram_obj_0646,X
C - - - - - 0x00DAB4 03:9AA4: A9 00     LDA #$00
C - - - - - 0x00DAB6 03:9AA6: 8D F0 07  STA ram_07F0
C - - - - - 0x00DAB9 03:9AA9: A9 40     LDA #$40
C - - - - - 0x00DABB 03:9AAB: 8D EC 07  STA ram_07EC
C - - - - - 0x00DABE 03:9AAE: 20 96 9A  JSR sub_9A96_clear_speed
C - - - - - 0x00DAC1 03:9AB1: 4C F2 9A  JMP loc_9AF2



ofs_019_9AB4_03:
C - - J - - 0x00DAC4 03:9AB4: AD F1 07  LDA ram_07F1
C - - - - - 0x00DAC7 03:9AB7: 30 03     BMI bra_9ABC
C - - - - - 0x00DAC9 03:9AB9: 20 60 FF  JSR sub_0x03FF70
bra_9ABC:
C - - - - - 0x00DACC 03:9ABC: A6 6C     LDX ram_006C_object_index
C - - - - - 0x00DACE 03:9ABE: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x00DAD1 03:9AC1: 49 28     EOR #con_obj_flag_08 + con_obj_flag_20
C - - - - - 0x00DAD3 03:9AC3: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x00DAD6 03:9AC6: DE 45 06  DEC ram_obj_0646,X
C - - - - - 0x00DAD9 03:9AC9: D0 3E     BNE bra_9B09_RTS
C - - - - - 0x00DADB 03:9ACB: 20 50 FF  JSR sub_0x03FF60
C - - - - - 0x00DADE 03:9ACE: A6 6C     LDX ram_006C_object_index
C - - - - - 0x00DAE0 03:9AD0: A9 78     LDA #con_obj_flag_08 + con_obj_flag_10 + con_obj_flag_20 + con_obj_flag_40
C - - - - - 0x00DAE2 03:9AD2: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x00DAE5 03:9AD5: A9 00     LDA #$00
C - - - - - 0x00DAE7 03:9AD7: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x00DAEA 03:9ADA: 8D F3 07  STA ram_07F3
C - - - - - 0x00DAED 03:9ADD: A9 40     LDA #$40
C - - - - - 0x00DAEF 03:9ADF: 9D 7B 06  STA ram_obj_hp,X
C - - - - - 0x00DAF2 03:9AE2: 85 3D     STA ram_hp_boss
C - - - - - 0x00DAF4 03:9AE4: A9 80     LDA #$80
C - - - - - 0x00DAF6 03:9AE6: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x00DAF9 03:9AE9: A9 84     LDA #$84
C - - - - - 0x00DAFB 03:9AEB: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x00DAFE 03:9AEE: FE 65 05  INC ram_obj_state,X
C - - - - - 0x00DB01 03:9AF1: 60        RTS



loc_9AF2:
C D 0 - - - 0x00DB02 03:9AF2: A2 01     LDX #$01
bra_9AF4_loop:
C - - - - - 0x00DB04 03:9AF4: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x00DB07 03:9AF7: C9 2B     CMP #$2B
C - - - - - 0x00DB09 03:9AF9: D0 09     BNE bra_9B04
C - - - - - 0x00DB0B 03:9AFB: 20 D7 FE  JSR sub_0x03FEE7_clear_object_speed_and_data
C - - - - - 0x00DB0E 03:9AFE: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x00DB11 03:9B01: 9D 00 04  STA ram_obj_anim_id,X
bra_9B04:
C - - - - - 0x00DB14 03:9B04: E8        INX
C - - - - - 0x00DB15 03:9B05: E0 17     CPX #$17
C - - - - - 0x00DB17 03:9B07: 90 EB     BCC bra_9AF4_loop
bra_9B09_RTS:
C - - - - - 0x00DB19 03:9B09: 60        RTS



sub_9B0A:
C - - - - - 0x00DB1A 03:9B0A: 2C EC 07  BIT ram_07EC
C - - - - - 0x00DB1D 03:9B0D: 50 2C     BVC bra_9B3B
C - - - - - 0x00DB1F 03:9B0F: BC 69 06  LDY ram_obj_066A,X
C - - - - - 0x00DB22 03:9B12: F0 0B     BEQ bra_9B1F
C - - - - - 0x00DB24 03:9B14: C0 02     CPY #$02
C - - - - - 0x00DB26 03:9B16: D0 07     BNE bra_9B1F
- - - - - - 0x00DB28 03:9B18: 68        PLA
- - - - - - 0x00DB29 03:9B19: 68        PLA
- - - - - - 0x00DB2A 03:9B1A: A9 20     LDA #con_98E4_20_bg_pal
- - - - - - 0x00DB2C 03:9B1C: 4C F0 9F  JMP loc_9FF0
bra_9B1F:
C - - - - - 0x00DB2F 03:9B1F: BD 69 06  LDA ram_obj_066A,X
C - - - - - 0x00DB32 03:9B22: 29 0F     AND #$0F
C - - - - - 0x00DB34 03:9B24: C9 03     CMP #$03
C - - - - - 0x00DB36 03:9B26: D0 13     BNE bra_9B3B
C - - - - - 0x00DB38 03:9B28: A9 28     LDA #con_sound_28
C - - - - - 0x00DB3A 03:9B2A: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x00DB3D 03:9B2D: A9 03     LDA #$03
C - - - - - 0x00DB3F 03:9B2F: BC 69 06  LDY ram_obj_066A,X
C - - - - - 0x00DB42 03:9B32: C0 70     CPY #$70
C - - - - - 0x00DB44 03:9B34: 90 02     BCC bra_9B38
- - - - - - 0x00DB46 03:9B36: A9 33     LDA #$33
bra_9B38:
C - - - - - 0x00DB48 03:9B38: 9D 69 06  STA ram_obj_066A,X
bra_9B3B:
C - - - - - 0x00DB4B 03:9B3B: A9 02     LDA #$02    ; damage offset
C - - - - - 0x00DB4D 03:9B3D: 2C EC 07  BIT ram_07EC
C - - - - - 0x00DB50 03:9B40: 50 02     BVC bra_9B44
C - - - - - 0x00DB52 03:9B42: A9 03     LDA #$03    ; damage offset
bra_9B44:
C - - - - - 0x00DB54 03:9B44: 4C 5C 99  JMP loc_995C_deal_damage_to_boss



sub_9B47:
C - - - - - 0x00DB57 03:9B47: AD F3 07  LDA ram_07F3
C - - - - - 0x00DB5A 03:9B4A: 29 3F     AND #$3F
C - - - - - 0x00DB5C 03:9B4C: C9 01     CMP #$01
C - - - - - 0x00DB5E 03:9B4E: D0 19     BNE bra_9B69_RTS
C - - - - - 0x00DB60 03:9B50: AD EC 07  LDA ram_07EC
C - - - - - 0x00DB63 03:9B53: 29 7F     AND #$7F
C - - - - - 0x00DB65 03:9B55: 8D EC 07  STA ram_07EC
C - - - - - 0x00DB68 03:9B58: A9 02     LDA #$02
C - - - - - 0x00DB6A 03:9B5A: 2C EC 07  BIT ram_07EC
C - - - - - 0x00DB6D 03:9B5D: 50 02     BVC bra_9B61
C - - - - - 0x00DB6F 03:9B5F: A9 0A     LDA #$0A
bra_9B61:
C - - - - - 0x00DB71 03:9B61: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x00DB74 03:9B64: A9 00     LDA #$00
C - - - - - 0x00DB76 03:9B66: 8D F3 07  STA ram_07F3
bra_9B69_RTS:
C - - - - - 0x00DB79 03:9B69: 60        RTS



sub_9B6A:
C - - - - - 0x00DB7A 03:9B6A: AD ED 07  LDA ram_07ED
C - - - - - 0x00DB7D 03:9B6D: 29 06     AND #$06
C - - - - - 0x00DB7F 03:9B6F: A8        TAY
C - - - - - 0x00DB80 03:9B70: B9 9D 9B  LDA tbl_9B9D_speed,Y
C - - - - - 0x00DB83 03:9B73: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x00DB86 03:9B76: B9 9E 9B  LDA tbl_9B9D_speed + $01,Y
C - - - - - 0x00DB89 03:9B79: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x00DB8C 03:9B7C: AD ED 07  LDA ram_07ED
C - - - - - 0x00DB8F 03:9B7F: 29 08     AND #$08
C - - - - - 0x00DB91 03:9B81: F0 03     BEQ bra_9B86
C - - - - - 0x00DB93 03:9B83: 20 DD 9B  JSR sub_9BDD_invert_speed_X
bra_9B86:
C - - - - - 0x00DB96 03:9B86: AD ED 07  LDA ram_07ED
C - - - - - 0x00DB99 03:9B89: 4A        LSR
C - - - - - 0x00DB9A 03:9B8A: 4A        LSR
C - - - - - 0x00DB9B 03:9B8B: 29 06     AND #$06
C - - - - - 0x00DB9D 03:9B8D: A8        TAY
C - - - - - 0x00DB9E 03:9B8E: B9 9D 9B  LDA tbl_9B9D_speed,Y
C - - - - - 0x00DBA1 03:9B91: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x00DBA4 03:9B94: B9 9E 9B  LDA tbl_9B9D_speed + $01,Y
C - - - - - 0x00DBA7 03:9B97: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x00DBAA 03:9B9A: 4C C3 9B  JMP loc_9BC3_invert_speed_Y



tbl_9B9D_speed:
- D 0 - - - 0x00DBAD 03:9B9D: 00 00     .word $0000 ; 00 
- D 0 - - - 0x00DBAF 03:9B9F: BA 00     .word $00BA ; 02 
- D 0 - - - 0x00DBB1 03:9BA1: 00 01     .word $0100 ; 04 
- D 0 - - - 0x00DBB3 03:9BA3: 40 01     .word $0140 ; 06 



sub_9BA5:
C - - - - - 0x00DBB5 03:9BA5: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x00DBB8 03:9BA8: C9 F0     CMP #$F0
C - - - - - 0x00DBBA 03:9BAA: B0 29     BCS bra_9BD5
C - - - - - 0x00DBBC 03:9BAC: C9 10     CMP #$10
C - - - - - 0x00DBBE 03:9BAE: 90 25     BCC bra_9BD5
C - - - - - 0x00DBC0 03:9BB0: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x00DBC3 03:9BB3: C9 40     CMP #$40
C - - - - - 0x00DBC5 03:9BB5: 90 04     BCC bra_9BBB
C - - - - - 0x00DBC7 03:9BB7: C9 B0     CMP #$B0
C - - - - - 0x00DBC9 03:9BB9: 90 19     BCC bra_9BD4_RTS
loc_9BBB:
bra_9BBB:
C D 0 - - - 0x00DBCB 03:9BBB: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x00DBCE 03:9BBE: 5D 20 05  EOR ram_obj_spd_Y_hi,X
C - - - - - 0x00DBD1 03:9BC1: 10 11     BPL bra_9BD4_RTS
loc_9BC3_invert_speed_Y:
C D 0 - - - 0x00DBD3 03:9BC3: 38        SEC
C - - - - - 0x00DBD4 03:9BC4: A9 00     LDA #$00
C - - - - - 0x00DBD6 03:9BC6: FD 37 05  SBC ram_obj_spd_Y_lo,X
C - - - - - 0x00DBD9 03:9BC9: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x00DBDC 03:9BCC: A9 00     LDA #$00
C - - - - - 0x00DBDE 03:9BCE: FD 20 05  SBC ram_obj_spd_Y_hi,X
C - - - - - 0x00DBE1 03:9BD1: 9D 20 05  STA ram_obj_spd_Y_hi,X
bra_9BD4_RTS:
C - - - - - 0x00DBE4 03:9BD4: 60        RTS
bra_9BD5:
C - - - - - 0x00DBE5 03:9BD5: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x00DBE8 03:9BD8: 5D F2 04  EOR ram_obj_spd_X_hi,X
C - - - - - 0x00DBEB 03:9BDB: 10 F7     BPL bra_9BD4_RTS
sub_9BDD_invert_speed_X:
C - - - - - 0x00DBED 03:9BDD: 38        SEC
C - - - - - 0x00DBEE 03:9BDE: A9 00     LDA #$00
C - - - - - 0x00DBF0 03:9BE0: FD 09 05  SBC ram_obj_spd_X_lo,X
C - - - - - 0x00DBF3 03:9BE3: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x00DBF6 03:9BE6: A9 00     LDA #$00
C - - - - - 0x00DBF8 03:9BE8: FD F2 04  SBC ram_obj_spd_X_hi,X
C - - - - - 0x00DBFB 03:9BEB: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x00DBFE 03:9BEE: 60        RTS



sub_9BEF:
C - - - - - 0x00DBFF 03:9BEF: A0 00     LDY #$00    ; facing right
C - - - - - 0x00DC01 03:9BF1: BD F2 04  LDA ram_obj_spd_X_hi,X
C - - - - - 0x00DC04 03:9BF4: 30 06     BMI bra_9BFC
C - - - - - 0x00DC06 03:9BF6: C8        INY ; 01 facing left
C - - - - - 0x00DC07 03:9BF7: 1D F2 04  ORA ram_obj_spd_X_hi,X
C - - - - - 0x00DC0A 03:9BFA: F0 11     BEQ bra_9C0D_RTS
bra_9BFC:
C - - - - - 0x00DC0C 03:9BFC: 98        TYA
C - - - - - 0x00DC0D 03:9BFD: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x00DC10 03:9C00: 60        RTS



sub_9C01_face_object_towards_player:
C - - - - - 0x00DC11 03:9C01: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x00DC14 03:9C04: CD 38 04  CMP ram_plr_pos_X_hi
; C = 1 if object is to the right of the player
C - - - - - 0x00DC17 03:9C07: A9 00     LDA #$00 ; facing right
C - - - - - 0x00DC19 03:9C09: 2A        ROL ; possible facing left
C - - - - - 0x00DC1A 03:9C0A: 9D A8 04  STA ram_obj_facing,X
bra_9C0D_RTS:
C - - - - - 0x00DC1D 03:9C0D: 60        RTS



sub_9C0E:
C - - - - - 0x00DC1E 03:9C0E: AD EC 07  LDA ram_07EC
C - - - - - 0x00DC21 03:9C11: 10 44     BPL bra_9C57_RTS
C - - - - - 0x00DC23 03:9C13: 20 58 9C  JSR sub_9C58_count_objects_27
C - - - - - 0x00DC26 03:9C16: A5 03     LDA ram_0003_temp
C - - - - - 0x00DC28 03:9C18: CD EE 07  CMP ram_07EE
C - - - - - 0x00DC2B 03:9C1B: B0 3A     BCS bra_9C57_RTS
C - - - - - 0x00DC2D 03:9C1D: AD EF 07  LDA ram_07EF
C - - - - - 0x00DC30 03:9C20: 85 01     STA ram_0001_temp
bra_9C22_loop:
C - - - - - 0x00DC32 03:9C22: 20 B9 FE  JSR sub_0x03FEC9_find_empty_object_slot_01_0C
C - - - - - 0x00DC35 03:9C25: AC EF 07  LDY ram_07EF
C - - - - - 0x00DC38 03:9C28: 20 94 9C  JSR sub_9C94
C - - - - - 0x00DC3B 03:9C2B: 90 14     BCC bra_9C41
C - - - - - 0x00DC3D 03:9C2D: 20 6D 9C  JSR sub_9C6D
C - - - - - 0x00DC40 03:9C30: A9 3D     LDA #$3D
C - - - - - 0x00DC42 03:9C32: 9D 45 06  STA ram_obj_0646,X
C - - - - - 0x00DC45 03:9C35: A9 70     LDA #con_obj_flag_10 + con_obj_flag_20 + con_obj_flag_40
C - - - - - 0x00DC47 03:9C37: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x00DC4A 03:9C3A: A9 00     LDA #$00
C - - - - - 0x00DC4C 03:9C3C: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x00DC4F 03:9C3F: E6 03     INC ram_0003_temp
bra_9C41:
C - - - - - 0x00DC51 03:9C41: EE EF 07  INC ram_07EF
C - - - - - 0x00DC54 03:9C44: AD EF 07  LDA ram_07EF
C - - - - - 0x00DC57 03:9C47: 29 07     AND #$07
C - - - - - 0x00DC59 03:9C49: 8D EF 07  STA ram_07EF
C - - - - - 0x00DC5C 03:9C4C: C5 01     CMP ram_0001_temp
C - - - - - 0x00DC5E 03:9C4E: F0 07     BEQ bra_9C57_RTS
C - - - - - 0x00DC60 03:9C50: A5 03     LDA ram_0003_temp
C - - - - - 0x00DC62 03:9C52: CD EE 07  CMP ram_07EE
C - - - - - 0x00DC65 03:9C55: 90 CB     BCC bra_9C22_loop
bra_9C57_RTS:
C - - - - - 0x00DC67 03:9C57: 60        RTS



sub_9C58_count_objects_27:
; count how many objects 27 are in memory
; out
    ; 0003 = counter
C - - - - - 0x00DC68 03:9C58: A9 00     LDA #$00
C - - - - - 0x00DC6A 03:9C5A: 85 03     STA ram_0003_temp
C - - - - - 0x00DC6C 03:9C5C: A0 02     LDY #$02
bra_9C5E_loop:
C - - - - - 0x00DC6E 03:9C5E: B9 4E 05  LDA ram_obj_id,Y
C - - - - - 0x00DC71 03:9C61: C9 2B     CMP #$2B
C - - - - - 0x00DC73 03:9C63: D0 02     BNE bra_9C67
C - - - - - 0x00DC75 03:9C65: E6 03     INC ram_0003_temp
bra_9C67:
C - - - - - 0x00DC77 03:9C67: C8        INY
C - - - - - 0x00DC78 03:9C68: C0 17     CPY #$17
C - - - - - 0x00DC7A 03:9C6A: 90 F2     BCC bra_9C5E_loop
C - - - - - 0x00DC7C 03:9C6C: 60        RTS



sub_9C6D:
C - - - - - 0x00DC7D 03:9C6D: 20 D7 FE  JSR sub_0x03FEE7_clear_object_speed_and_data
C - - - - - 0x00DC80 03:9C70: A9 10     LDA #con_obj_type_10
C - - - - - 0x00DC82 03:9C72: A0 4A     LDY #$4A
C - - - - - 0x00DC84 03:9C74: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x00DC87 03:9C77: A9 2B     LDA #$2B
C - - - - - 0x00DC89 03:9C79: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x00DC8C 03:9C7C: A9 B8     LDA #$B8
C - - - - - 0x00DC8E 03:9C7E: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x00DC91 03:9C81: A9 30     LDA #$30
C - - - - - 0x00DC93 03:9C83: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x00DC96 03:9C86: A9 80     LDA #$80
C - - - - - 0x00DC98 03:9C88: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x00DC9B 03:9C8B: A9 00     LDA #$00
C - - - - - 0x00DC9D 03:9C8D: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x00DCA0 03:9C90: 9D 54 04  STA ram_0454_obj,X
C - - - - - 0x00DCA3 03:9C93: 60        RTS



sub_9C94:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x00DCA4 03:9C94: B9 BA 9C  LDA tbl_9CBA_pos_X_hi,Y
C - - - - - 0x00DCA7 03:9C97: 6D 38 04  ADC ram_plr_pos_X_hi
C - - - - - 0x00DCAA 03:9C9A: C9 10     CMP #$10
C - - - - - 0x00DCAC 03:9C9C: 90 1A     BCC bra_9CB8
C - - - - - 0x00DCAE 03:9C9E: C9 F0     CMP #$F0
C - - - - - 0x00DCB0 03:9CA0: B0 16     BCS bra_9CB8
C - - - - - 0x00DCB2 03:9CA2: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x00DCB5 03:9CA5: B9 C2 9C  LDA tbl_9CC2_pos_Y_hi,Y
C - - - - - 0x00DCB8 03:9CA8: 6D 1C 04  ADC ram_plr_pos_Y_hi
C - - - - - 0x00DCBB 03:9CAB: C9 30     CMP #$30
C - - - - - 0x00DCBD 03:9CAD: 90 09     BCC bra_9CB8
C - - - - - 0x00DCBF 03:9CAF: C9 C8     CMP #$C8
C - - - - - 0x00DCC1 03:9CB1: B0 05     BCS bra_9CB8
C - - - - - 0x00DCC3 03:9CB3: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x00DCC6 03:9CB6: 38        SEC
C - - - - - 0x00DCC7 03:9CB7: 60        RTS
bra_9CB8:
C - - - - - 0x00DCC8 03:9CB8: 18        CLC
C - - - - - 0x00DCC9 03:9CB9: 60        RTS



tbl_9CBA_pos_X_hi:
- D 0 - - - 0x00DCCA 03:9CBA: F8        .byte $F8   ; 00 
- D 0 - - - 0x00DCCB 03:9CBB: E0        .byte $E0   ; 01 
- D 0 - - - 0x00DCCC 03:9CBC: 30        .byte $30   ; 02 
- D 0 - - - 0x00DCCD 03:9CBD: C0        .byte $C0   ; 03 
- D 0 - - - 0x00DCCE 03:9CBE: 08        .byte $08   ; 04 
- D 0 - - - 0x00DCCF 03:9CBF: A0        .byte $A0   ; 05 
- D 0 - - - 0x00DCD0 03:9CC0: 50        .byte $50   ; 06 
- D 0 - - - 0x00DCD1 03:9CC1: A0        .byte $A0   ; 07 



tbl_9CC2_pos_Y_hi:
- D 0 - - - 0x00DCD2 03:9CC2: 98        .byte $98   ; 00 
- D 0 - - - 0x00DCD3 03:9CC3: 20        .byte $20   ; 01 
- D 0 - - - 0x00DCD4 03:9CC4: 00        .byte $00   ; 02 
- D 0 - - - 0x00DCD5 03:9CC5: 10        .byte $10   ; 03 
- D 0 - - - 0x00DCD6 03:9CC6: A0        .byte $A0   ; 04 
- D 0 - - - 0x00DCD7 03:9CC7: 10        .byte $10   ; 05 
- D 0 - - - 0x00DCD8 03:9CC8: C0        .byte $C0   ; 06 
- D 0 - - - 0x00DCD9 03:9CC9: D0        .byte $D0   ; 07 



bra_9CCA:
C - - - - - 0x00DCDA 03:9CCA: 20 D7 FE  JSR sub_0x03FEE7_clear_object_speed_and_data
C - - - - - 0x00DCDD 03:9CCD: A9 0E     LDA #con_obj_type_0E
C - - - - - 0x00DCDF 03:9CCF: A0 04     LDY #$04
C - - - - - 0x00DCE1 03:9CD1: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x00DCE4 03:9CD4: A9 03     LDA #$03
C - - - - - 0x00DCE6 03:9CD6: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x00DCE9 03:9CD9: A9 80     LDA #$80
C - - - - - 0x00DCEB 03:9CDB: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x00DCEE 03:9CDE: 0A        ASL
C - - - - - 0x00DCEF 03:9CDF: 9D 69 06  STA ram_obj_066A,X
C - - - - - 0x00DCF2 03:9CE2: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x00DCF5 03:9CE5: A9 20     LDA #$20
C - - - - - 0x00DCF7 03:9CE7: 9D 45 06  STA ram_obj_0646,X
C - - - - - 0x00DCFA 03:9CEA: 4A        LSR ; 10
; con_obj_flag_10
C - - - - - 0x00DCFB 03:9CEB: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x00DCFE 03:9CEE: A9 33     LDA #con_sound_destroy_candle
C - - - - - 0x00DD00 03:9CF0: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x00DD03 03:9CF3: A6 6C     LDX ram_006C_object_index
C - - - - - 0x00DD05 03:9CF5: 60        RTS



ofs_042_0x00DD06_2B:
C - - J - - 0x00DD06 03:9CF6: BD 69 06  LDA ram_obj_066A,X
C - - - - - 0x00DD09 03:9CF9: 29 F0     AND #$F0
C - - - - - 0x00DD0B 03:9CFB: D0 CD     BNE bra_9CCA
C - - - - - 0x00DD0D 03:9CFD: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x00DD10 03:9D00: 20 6D E8  JSR sub_0x03E87D_jump_to_pointers_after_JSR_A
- D 0 - I - 0x00DD13 03:9D03: 0D 9D     .word ofs_018_9D0D_00
- D 0 - I - 0x00DD15 03:9D05: 25 9D     .word ofs_018_9D25_01
- - - - - - 0x00DD17 03:9D07: 15 9D     .word ofs_018_9D15_02
- D 0 - I - 0x00DD19 03:9D09: 38 9D     .word ofs_018_9D38_03
- D 0 - I - 0x00DD1B 03:9D0B: 4B 9D     .word ofs_018_9D4B_04



ofs_018_9D0D_00:
C - - J - - 0x00DD1D 03:9D0D: A9 01     LDA #con_obj_flag_01
C - - - - - 0x00DD1F 03:9D0F: 5D 70 04  EOR ram_obj_flags,X
C - - - - - 0x00DD22 03:9D12: 9D 70 04  STA ram_obj_flags,X
ofs_018_9D15_02:
C - - - - - 0x00DD25 03:9D15: DE 45 06  DEC ram_obj_0646,X
C - - - - - 0x00DD28 03:9D18: D0 3F     BNE bra_9D59_RTS
C - - - - - 0x00DD2A 03:9D1A: A9 40     LDA #con_obj_flag_40
C - - - - - 0x00DD2C 03:9D1C: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x00DD2F 03:9D1F: FE 65 05  INC ram_obj_state,X
C - - - - - 0x00DD32 03:9D22: 4C 5A 9D  JMP loc_9D5A



ofs_018_9D25_01:
C - - J - - 0x00DD35 03:9D25: 20 73 9D  JSR sub_9D73
C - - - - - 0x00DD38 03:9D28: DE 45 06  DEC ram_obj_0646,X
C - - - - - 0x00DD3B 03:9D2B: D0 2C     BNE bra_9D59_RTS
C - - - - - 0x00DD3D 03:9D2D: A9 40     LDA #$40
C - - - - - 0x00DD3F 03:9D2F: 9D 45 06  STA ram_obj_0646,X
C - - - - - 0x00DD42 03:9D32: DE 65 05  DEC ram_obj_state,X
C - - - - - 0x00DD45 03:9D35: 4C 96 9A  JMP loc_9A96_clear_speed



ofs_018_9D38_03:
C - - J - - 0x00DD48 03:9D38: DE 45 06  DEC ram_obj_0646,X
C - - - - - 0x00DD4B 03:9D3B: D0 1C     BNE bra_9D59_RTS
C - - - - - 0x00DD4D 03:9D3D: A9 00     LDA #$00
C - - - - - 0x00DD4F 03:9D3F: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x00DD52 03:9D42: A9 60     LDA #con_obj_flag_20 + con_obj_flag_40
C - - - - - 0x00DD54 03:9D44: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x00DD57 03:9D47: FE 65 05  INC ram_obj_state,X
C - - - - - 0x00DD5A 03:9D4A: 60        RTS



ofs_018_9D4B_04:
C - - J - - 0x00DD5B 03:9D4B: DE 45 06  DEC ram_obj_0646,X
C - - - - - 0x00DD5E 03:9D4E: DE 45 06  DEC ram_obj_0646,X
C - - - - - 0x00DD61 03:9D51: D0 06     BNE bra_9D59_RTS
C - - - - - 0x00DD63 03:9D53: 20 D7 FE  JSR sub_0x03FEE7_clear_object_speed_and_data
C - - - - - 0x00DD66 03:9D56: 9D 4E 05  STA ram_obj_id,X
bra_9D59_RTS:
C - - - - - 0x00DD69 03:9D59: 60        RTS



loc_9D5A:
C D 0 - - - 0x00DD6A 03:9D5A: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x00DD6D 03:9D5D: AC 1C 04  LDY ram_plr_pos_Y_hi
C - - - - - 0x00DD70 03:9D60: 85 04     STA ram_0004_t013_pos_X_hi
C - - - - - 0x00DD72 03:9D62: 84 05     STY ram_0005_t009_pos_Y_hi
C - - - - - 0x00DD74 03:9D64: 20 30 FF  JSR sub_0x03FF40
C - - - - - 0x00DD77 03:9D67: A4 00     LDY ram_0000_t07B
sub_9D69:
C - - - - - 0x00DD79 03:9D69: A9 04     LDA #$04
C - - - - - 0x00DD7B 03:9D6B: 85 05     STA ram_0005_temp
C - - - - - 0x00DD7D 03:9D6D: 4C 40 FF  JMP loc_0x03FF50



bra_9D70:
C - - - - - 0x00DD80 03:9D70: 4C BB 9B  JMP loc_9BBB



sub_9D73:
C - - - - - 0x00DD83 03:9D73: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x00DD86 03:9D76: C9 30     CMP #$30
C - - - - - 0x00DD88 03:9D78: 90 F6     BCC bra_9D70
C - - - - - 0x00DD8A 03:9D7A: C9 E8     CMP #$E8
C - - - - - 0x00DD8C 03:9D7C: B0 F2     BCS bra_9D70
C - - - - - 0x00DD8E 03:9D7E: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x00DD91 03:9D81: 4A        LSR
C - - - - - 0x00DD92 03:9D82: 90 D5     BCC bra_9D59_RTS
; if con_obj_flag_01
C - - - - - 0x00DD94 03:9D84: A9 00     LDA #$00
C - - - - - 0x00DD96 03:9D86: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x00DD99 03:9D89: A9 F8     LDA #(con_obj_flag_01 + con_obj_flag_02 + con_obj_flag_04) ^ $FF
C - - - - - 0x00DD9B 03:9D8B: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x00DD9E 03:9D8E: 60        RTS



ofs_019_9D8F_04:
C - - J - - 0x00DD9F 03:9D8F: AD EC 07  LDA ram_07EC
C - - - - - 0x00DDA2 03:9D92: 29 08     AND #$08
C - - - - - 0x00DDA4 03:9D94: D0 19     BNE bra_9DAF
C - - - - - 0x00DDA6 03:9D96: A9 08     LDA #$08
C - - - - - 0x00DDA8 03:9D98: 0D EC 07  ORA ram_07EC
C - - - - - 0x00DDAB 03:9D9B: 8D EC 07  STA ram_07EC
C - - - - - 0x00DDAE 03:9D9E: A9 00     LDA #$00
C - - - - - 0x00DDB0 03:9DA0: 85 C1     STA ram_00C1
C - - - - - 0x00DDB2 03:9DA2: A9 40     LDA #$40
C - - - - - 0x00DDB4 03:9DA4: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x00DDB7 03:9DA7: 20 D3 E5  JSR sub_0x03E5E3
C - - - - - 0x00DDBA 03:9DAA: A9 2D     LDA #con__chr_bank + $2D
C - - - - - 0x00DDBC 03:9DAC: 85 49     STA ram_chr_bank_5123
C - - - - - 0x00DDBE 03:9DAE: 60        RTS
bra_9DAF:
C - - - - - 0x00DDBF 03:9DAF: A9 00     LDA #$00
C - - - - - 0x00DDC1 03:9DB1: 8D F0 07  STA ram_07F0
C - - - - - 0x00DDC4 03:9DB4: 8D F1 07  STA ram_07F1
C - - - - - 0x00DDC7 03:9DB7: A9 06     LDA #$06
C - - - - - 0x00DDC9 03:9DB9: 85 B4     STA ram_00B4
C - - - - - 0x00DDCB 03:9DBB: FE 65 05  INC ram_obj_state,X
C - - - - - 0x00DDCE 03:9DBE: 20 6D FF  JSR sub_0x03FF7D
C - - - - - 0x00DDD1 03:9DC1: 4C 42 E3  JMP loc_0x03E352



ofs_019_9DC4_05:
C - - J - - 0x00DDD4 03:9DC4: A9 5F     LDA #con_98E4_5F_bg_pal
C - - - - - 0x00DDD6 03:9DC6: 20 A1 9F  JSR sub_9FA1
C - - - - - 0x00DDD9 03:9DC9: A5 B4     LDA ram_00B4
C - - - - - 0x00DDDB 03:9DCB: 10 32     BPL bra_9DFF_RTS
C - - - - - 0x00DDDD 03:9DCD: A9 01     LDA #$01
C - - - - - 0x00DDDF 03:9DCF: 85 C2     STA ram_00C2
C - - - - - 0x00DDE1 03:9DD1: A2 01     LDX #$01
C - - - - - 0x00DDE3 03:9DD3: A0 2F     LDY #$2F
C - - - - - 0x00DDE5 03:9DD5: A9 29     LDA #con_irq_29
C - - - - - 0x00DDE7 03:9DD7: 20 BF E5  JSR sub_0x03E5CF
C - - - - - 0x00DDEA 03:9DDA: A9 A0     LDA #$A0
C - - - - - 0x00DDEC 03:9DDC: 8D 85 07  STA ram_0785
C - - - - - 0x00DDEF 03:9DDF: A9 2C     LDA #$2C
C - - - - - 0x00DDF1 03:9DE1: 8D 86 07  STA ram_0786
C - - - - - 0x00DDF4 03:9DE4: A6 6C     LDX ram_006C_object_index
C - - - - - 0x00DDF6 03:9DE6: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x00DDF9 03:9DE9: 8D F0 07  STA ram_07F0
C - - - - - 0x00DDFC 03:9DEC: 20 22 9F  JSR sub_9F22
C - - - - - 0x00DDFF 03:9DEF: A9 00     LDA #$00
C - - - - - 0x00DE01 03:9DF1: 8D 87 07  STA ram_0787
C - - - - - 0x00DE04 03:9DF4: 9D 45 06  STA ram_obj_0646,X
C - - - - - 0x00DE07 03:9DF7: FE 65 05  INC ram_obj_state,X
C - - - - - 0x00DE0A 03:9DFA: A9 01     LDA #$01
C - - - - - 0x00DE0C 03:9DFC: 8D F0 07  STA ram_07F0
bra_9DFF_RTS:
C - - - - - 0x00DE0F 03:9DFF: 60        RTS



ofs_019_9E00_06:
C - - J - - 0x00DE10 03:9E00: 20 60 FF  JSR sub_0x03FF70
C - - - - - 0x00DE13 03:9E03: AD F1 07  LDA ram_07F1
C - - - - - 0x00DE16 03:9E06: 10 09     BPL bra_9E11_RTS
C - - - - - 0x00DE18 03:9E08: A6 6C     LDX ram_006C_object_index
C - - - - - 0x00DE1A 03:9E0A: FE 65 05  INC ram_obj_state,X
C - - - - - 0x00DE1D 03:9E0D: A9 00     LDA #$00
C - - - - - 0x00DE1F 03:9E0F: 85 B4     STA ram_00B4
bra_9E11_RTS:
C - - - - - 0x00DE21 03:9E11: 60        RTS



ofs_019_9E12_07:
C - - J - - 0x00DE22 03:9E12: BD 45 06  LDA ram_obj_0646,X
C - - - - - 0x00DE25 03:9E15: 18        CLC
C - - - - - 0x00DE26 03:9E16: 69 47     ADC #$47
; con_98E4_47
; con_98E4_48
; con_98E4_49
C - - - - - 0x00DE28 03:9E18: 20 E9 EC  JSR sub_0x03ECF9_write_data_to_ppu_buffer
C - - - - - 0x00DE2B 03:9E1B: A6 6C     LDX ram_006C_object_index
C - - - - - 0x00DE2D 03:9E1D: FE 45 06  INC ram_obj_0646,X
C - - - - - 0x00DE30 03:9E20: BD 45 06  LDA ram_obj_0646,X
C - - - - - 0x00DE33 03:9E23: C9 03     CMP #$03
C - - - - - 0x00DE35 03:9E25: 90 39     BCC bra_9E60_RTS
C - - - - - 0x00DE37 03:9E27: A9 2E     LDA #con__chr_bank + $2E
C - - - - - 0x00DE39 03:9E29: 85 4B     STA ram_chr_bank______5129
C - - - - - 0x00DE3B 03:9E2B: FE 65 05  INC ram_obj_state,X
C - - - - - 0x00DE3E 03:9E2E: 4C 22 9F  JMP loc_9F22



ofs_019_9E31_08:
C - - J - - 0x00DE41 03:9E31: A9 4A     LDA #con_98E4_4A_bg_pal
C - - - - - 0x00DE43 03:9E33: 20 A1 9F  JSR sub_9FA1
C - - - - - 0x00DE46 03:9E36: A6 6C     LDX ram_006C_object_index
C - - - - - 0x00DE48 03:9E38: A5 B4     LDA ram_00B4
C - - - - - 0x00DE4A 03:9E3A: 10 24     BPL bra_9E60_RTS
C - - - - - 0x00DE4C 03:9E3C: A9 04     LDA #$04
C - - - - - 0x00DE4E 03:9E3E: 85 BA     STA ram_00BA
C - - - - - 0x00DE50 03:9E40: A9 00     LDA #$00
C - - - - - 0x00DE52 03:9E42: 85 BC     STA ram_00BC
C - - - - - 0x00DE54 03:9E44: A9 05     LDA #$05
C - - - - - 0x00DE56 03:9E46: 85 BB     STA ram_00BB
C - - - - - 0x00DE58 03:9E48: A9 33     LDA #$33
C - - - - - 0x00DE5A 03:9E4A: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x00DE5D 03:9E4D: FE 65 05  INC ram_obj_state,X
C - - - - - 0x00DE60 03:9E50: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x00DE63 03:9E53: 8D F0 07  STA ram_07F0
C - - - - - 0x00DE66 03:9E56: A9 40     LDA #$40
C - - - - - 0x00DE68 03:9E58: 8D EC 07  STA ram_07EC
C - - - - - 0x00DE6B 03:9E5B: A9 01     LDA #$01
C - - - - - 0x00DE6D 03:9E5D: 8D EE 07  STA ram_07EE
bra_9E60_RTS:
C - - - - - 0x00DE70 03:9E60: 60        RTS



ofs_019_9E61_09:
C - - J - - 0x00DE71 03:9E61: 20 47 9B  JSR sub_9B47
C - - - - - 0x00DE74 03:9E64: 20 22 9F  JSR sub_9F22
C - - - - - 0x00DE77 03:9E67: A9 48     LDA #con_obj_flag_08 + con_obj_flag_40
C - - - - - 0x00DE79 03:9E69: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x00DE7C 03:9E6C: 38        SEC
C - - - - - 0x00DE7D 03:9E6D: BD C4 04  LDA ram_obj_pos_X_lo,X
C - - - - - 0x00DE80 03:9E70: E9 40     SBC #$40
C - - - - - 0x00DE82 03:9E72: 9D C4 04  STA ram_obj_pos_X_lo,X
C - - - - - 0x00DE85 03:9E75: B0 03     BCS bra_9E7A
C - - - - - 0x00DE87 03:9E77: DE 38 04  DEC ram_obj_pos_X_hi,X
bra_9E7A:
C - - - - - 0x00DE8A 03:9E7A: FE 1D 06  INC ram_061D_obj,X
C - - - - - 0x00DE8D 03:9E7D: BD 1D 06  LDA ram_061D_obj,X
; / 08
C - - - - - 0x00DE90 03:9E80: 4A        LSR
C - - - - - 0x00DE91 03:9E81: 4A        LSR
C - - - - - 0x00DE92 03:9E82: 4A        LSR
C - - - - - 0x00DE93 03:9E83: A8        TAY
C - - - - - 0x00DE94 03:9E84: 20 69 9D  JSR sub_9D69
C - - - - - 0x00DE97 03:9E87: FE 45 06  INC ram_obj_0646,X
C - - - - - 0x00DE9A 03:9E8A: BD 45 06  LDA ram_obj_0646,X
C - - - - - 0x00DE9D 03:9E8D: C9 0C     CMP #$0C
C - - - - - 0x00DE9F 03:9E8F: 90 02     BCC bra_9E93
C - - - - - 0x00DEA1 03:9E91: A9 00     LDA #$00
bra_9E93:
C - - - - - 0x00DEA3 03:9E93: 9D 45 06  STA ram_obj_0646,X
C - - - - - 0x00DEA6 03:9E96: D0 C8     BNE bra_9E60_RTS
C - - - - - 0x00DEA8 03:9E98: FE D8 05  INC ram_05D8_obj,X
C - - - - - 0x00DEAB 03:9E9B: BD D8 05  LDA ram_05D8_obj,X
C - - - - - 0x00DEAE 03:9E9E: 29 1F     AND #$1F
C - - - - - 0x00DEB0 03:9EA0: 48        PHA
C - - - - - 0x00DEB1 03:9EA1: 38        SEC
C - - - - - 0x00DEB2 03:9EA2: E9 1C     SBC #$1C
C - - - - - 0x00DEB4 03:9EA4: B0 02     BCS bra_9EA8
C - - - - - 0x00DEB6 03:9EA6: A9 00     LDA #$00
bra_9EA8:
C - - - - - 0x00DEB8 03:9EA8: A8        TAY
C - - - - - 0x00DEB9 03:9EA9: B9 F0 9E  LDA tbl_9EF0_background_palette,Y
C - - - - - 0x00DEBC 03:9EAC: 20 F0 9F  JSR sub_9FF0
C - - - - - 0x00DEBF 03:9EAF: 68        PLA
C - - - - - 0x00DEC0 03:9EB0: C9 1C     CMP #$1C
C - - - - - 0x00DEC2 03:9EB2: D0 05     BNE bra_9EB9
C - - - - - 0x00DEC4 03:9EB4: A9 77     LDA #con_dmc_77
C - - - - - 0x00DEC6 03:9EB6: 4C 5F E2  JMP loc_0x03E26F_play_sound
bra_9EB9:
C - - - - - 0x00DEC9 03:9EB9: C9 00     CMP #$00
C - - - - - 0x00DECB 03:9EBB: D0 A3     BNE bra_9E60_RTS
C - - - - - 0x00DECD 03:9EBD: 20 58 9C  JSR sub_9C58_count_objects_27
C - - - - - 0x00DED0 03:9EC0: A5 03     LDA ram_0003_temp
C - - - - - 0x00DED2 03:9EC2: D0 9C     BNE bra_9E60_RTS
C - - - - - 0x00DED4 03:9EC4: 20 B9 FE  JSR sub_0x03FEC9_find_empty_object_slot_01_0C
C - - - - - 0x00DED7 03:9EC7: 20 D7 FE  JSR sub_0x03FEE7_clear_object_speed_and_data
C - - - - - 0x00DEDA 03:9ECA: 20 6D 9C  JSR sub_9C6D
C - - - - - 0x00DEDD 03:9ECD: A4 6C     LDY ram_006C_object_index
C - - - - - 0x00DEDF 03:9ECF: B9 1C 04  LDA ram_obj_pos_Y_hi,Y
C - - - - - 0x00DEE2 03:9ED2: 18        CLC
C - - - - - 0x00DEE3 03:9ED3: 69 10     ADC #$10
C - - - - - 0x00DEE5 03:9ED5: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x00DEE8 03:9ED8: B9 38 04  LDA ram_obj_pos_X_hi,Y
C - - - - - 0x00DEEB 03:9EDB: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x00DEEE 03:9EDE: A9 40     LDA #con_obj_flag_40
C - - - - - 0x00DEF0 03:9EE0: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x00DEF3 03:9EE3: A9 B4     LDA #$B4
C - - - - - 0x00DEF5 03:9EE5: 9D 45 06  STA ram_obj_0646,X
C - - - - - 0x00DEF8 03:9EE8: A9 01     LDA #$01
C - - - - - 0x00DEFA 03:9EEA: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x00DEFD 03:9EED: 4C 5A 9D  JMP loc_9D5A



tbl_9EF0_background_palette:
- D 0 - - - 0x00DF00 03:9EF0: 4A        .byte con_98E4_4A_bg_pal   ; 00 
- D 0 - - - 0x00DF01 03:9EF1: 4B        .byte con_98E4_4B_bg_pal   ; 01 
- D 0 - - - 0x00DF02 03:9EF2: 4C        .byte con_98E4_4C_bg_pal   ; 02 
- D 0 - - - 0x00DF03 03:9EF3: 4B        .byte con_98E4_4B_bg_pal   ; 03 



ofs_019_9EF4_0A:
C - - J - - 0x00DF04 03:9EF4: FE 65 05  INC ram_obj_state,X
C - - - - - 0x00DF07 03:9EF7: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x00DF0A 03:9EFA: A9 06     LDA #$06
C - - - - - 0x00DF0C 03:9EFC: 85 B4     STA ram_00B4
C - - - - - 0x00DF0E 03:9EFE: 4C F2 9A  JMP loc_9AF2



ofs_019_9F01_0B:
C - - J - - 0x00DF11 03:9F01: A9 00     LDA #$00
C - - - - - 0x00DF13 03:9F03: 85 BA     STA ram_00BA
C - - - - - 0x00DF15 03:9F05: A9 40     LDA #$40
C - - - - - 0x00DF17 03:9F07: 8D EC 07  STA ram_07EC
C - - - - - 0x00DF1A 03:9F0A: A9 4A     LDA #con_98E4_4A_bg_pal
C - - - - - 0x00DF1C 03:9F0C: 20 A1 9F  JSR sub_9FA1
C - - - - - 0x00DF1F 03:9F0F: A5 B4     LDA ram_00B4
C - - - - - 0x00DF21 03:9F11: 10 44     BPL bra_9F57_RTS
C - - - - - 0x00DF23 03:9F13: A9 02     LDA #$02
C - - - - - 0x00DF25 03:9F15: 8D F3 07  STA ram_07F3
C - - - - - 0x00DF28 03:9F18: A9 80     LDA #$80    ; 8000
C - - - - - 0x00DF2A 03:9F1A: 20 78 99  JSR sub_9978_add_points_to_score
C - - - - - 0x00DF2D 03:9F1D: A6 6C     LDX ram_006C_object_index
C - - - - - 0x00DF2F 03:9F1F: 4C 56 99  JMP loc_9956



sub_9F22:
loc_9F22:
C D 0 - - - 0x00DF32 03:9F22: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x00DF35 03:9F25: 29 07     AND #$07
C - - - - - 0x00DF37 03:9F27: 85 00     STA ram_0000_temp
C - - - - - 0x00DF39 03:9F29: 18        CLC
C - - - - - 0x00DF3A 03:9F2A: 69 2F     ADC #$2F
C - - - - - 0x00DF3C 03:9F2C: 85 42     STA ram_0042
C - - - - - 0x00DF3E 03:9F2E: 38        SEC
C - - - - - 0x00DF3F 03:9F2F: A9 0A     LDA #$0A
C - - - - - 0x00DF41 03:9F31: E5 00     SBC ram_0000_temp
C - - - - - 0x00DF43 03:9F33: 8D 83 07  STA ram_0783
C - - - - - 0x00DF46 03:9F36: A9 86     LDA #$86
C - - - - - 0x00DF48 03:9F38: 8D 84 07  STA ram_0784
C - - - - - 0x00DF4B 03:9F3B: AD F0 07  LDA ram_07F0
C - - - - - 0x00DF4E 03:9F3E: 5D 1C 04  EOR ram_obj_pos_Y_hi,X
C - - - - - 0x00DF51 03:9F41: 29 08     AND #$08
C - - - - - 0x00DF53 03:9F43: F0 03     BEQ bra_9F48
C - - - - - 0x00DF55 03:9F45: 20 58 9F  JSR sub_9F58
bra_9F48:
C - - - - - 0x00DF58 03:9F48: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x00DF5B 03:9F4B: 8D F0 07  STA ram_07F0
C - - - - - 0x00DF5E 03:9F4E: 38        SEC
C - - - - - 0x00DF5F 03:9F4F: A9 88     LDA #$88
C - - - - - 0x00DF61 03:9F51: FD 38 04  SBC ram_obj_pos_X_hi,X
C - - - - - 0x00DF64 03:9F54: 8D 87 07  STA ram_0787
bra_9F57_RTS:
C - - - - - 0x00DF67 03:9F57: 60        RTS



sub_9F58:
C - - - - - 0x00DF68 03:9F58: BD 20 05  LDA ram_obj_spd_Y_hi,X
C - - - - - 0x00DF6B 03:9F5B: 10 24     BPL bra_9F81
C - - - - - 0x00DF6D 03:9F5D: 18        CLC
C - - - - - 0x00DF6E 03:9F5E: A9 20     LDA #$20
C - - - - - 0x00DF70 03:9F60: 6D 85 07  ADC ram_0785
C - - - - - 0x00DF73 03:9F63: 8D 85 07  STA ram_0785
C - - - - - 0x00DF76 03:9F66: 90 03     BCC bra_9F6B
C - - - - - 0x00DF78 03:9F68: EE 86 07  INC ram_0786
bra_9F6B:
C - - - - - 0x00DF7B 03:9F6B: AC 86 07  LDY ram_0786
C - - - - - 0x00DF7E 03:9F6E: C0 2F     CPY #$2F
C - - - - - 0x00DF80 03:9F70: 90 0E     BCC bra_9F80_RTS
- - - - - - 0x00DF82 03:9F72: C9 C0     CMP #$C0
- - - - - - 0x00DF84 03:9F74: 90 0A     BCC bra_9F80_RTS
- - - - - - 0x00DF86 03:9F76: A9 00     LDA #$00
- - - - - - 0x00DF88 03:9F78: 8D 85 07  STA ram_0785
- - - - - - 0x00DF8B 03:9F7B: A9 2C     LDA #$2C
- - - - - - 0x00DF8D 03:9F7D: 8D 86 07  STA ram_0786
bra_9F80_RTS:
C - - - - - 0x00DF90 03:9F80: 60        RTS
bra_9F81:
C - - - - - 0x00DF91 03:9F81: 38        SEC
C - - - - - 0x00DF92 03:9F82: AD 85 07  LDA ram_0785
C - - - - - 0x00DF95 03:9F85: E9 20     SBC #$20
C - - - - - 0x00DF97 03:9F87: 8D 85 07  STA ram_0785
C - - - - - 0x00DF9A 03:9F8A: B0 03     BCS bra_9F8F
C - - - - - 0x00DF9C 03:9F8C: CE 86 07  DEC ram_0786
bra_9F8F:
C - - - - - 0x00DF9F 03:9F8F: AC 86 07  LDY ram_0786
C - - - - - 0x00DFA2 03:9F92: C0 2C     CPY #$2C
C - - - - - 0x00DFA4 03:9F94: B0 0A     BCS bra_9FA0_RTS
- - - - - - 0x00DFA6 03:9F96: A9 A0     LDA #$A0
- - - - - - 0x00DFA8 03:9F98: 8D 85 07  STA ram_0785
- - - - - - 0x00DFAB 03:9F9B: A9 2F     LDA #$2F
- - - - - - 0x00DFAD 03:9F9D: 8D 86 07  STA ram_0786
bra_9FA0_RTS:
C - - - - - 0x00DFB0 03:9FA0: 60        RTS



sub_9FA1:
C - - - - - 0x00DFB1 03:9FA1: 85 01     STA ram_0001_temp
C - - - - - 0x00DFB3 03:9FA3: A5 1A     LDA ram_frm_cnt
C - - - - - 0x00DFB5 03:9FA5: 29 07     AND #$07
C - - - - - 0x00DFB7 03:9FA7: D0 0D     BNE bra_9FB6_RTS
C - - - - - 0x00DFB9 03:9FA9: A4 B4     LDY ram_00B4
C - - - - - 0x00DFBB 03:9FAB: B9 E4 9F  LDA tbl_9FE4,Y
C - - - - - 0x00DFBE 03:9FAE: 85 04     STA ram_0004_temp
C - - - - - 0x00DFC0 03:9FB0: C9 FF     CMP #$FF
C - - - - - 0x00DFC2 03:9FB2: D0 03     BNE bra_9FB7
; A = FF
C - - - - - 0x00DFC4 03:9FB4: 85 B4     STA ram_00B4
bra_9FB6_RTS:
C - - - - - 0x00DFC6 03:9FB6: 60        RTS
bra_9FB7:
C - - - - - 0x00DFC7 03:9FB7: A5 1D     LDA ram_index_ppu_buffer
C - - - - - 0x00DFC9 03:9FB9: 18        CLC
C - - - - - 0x00DFCA 03:9FBA: 69 07     ADC #$07
C - - - - - 0x00DFCC 03:9FBC: 48        PHA
C - - - - - 0x00DFCD 03:9FBD: A5 01     LDA ram_0001_temp
C - - - - - 0x00DFCF 03:9FBF: 20 F0 9F  JSR sub_9FF0
C - - - - - 0x00DFD2 03:9FC2: 68        PLA
C - - - - - 0x00DFD3 03:9FC3: AA        TAX
C - - - - - 0x00DFD4 03:9FC4: 20 D0 9F  JSR sub_9FD0
C - - - - - 0x00DFD7 03:9FC7: 20 D0 9F  JSR sub_9FD0
C - - - - - 0x00DFDA 03:9FCA: 20 D0 9F  JSR sub_9FD0
C - - - - - 0x00DFDD 03:9FCD: E6 B4     INC ram_00B4
C - - - - - 0x00DFDF 03:9FCF: 60        RTS



sub_9FD0:
C - - - - - 0x00DFE0 03:9FD0: A0 04     LDY #$04
bra_9FD2_loop:
C - - - - - 0x00DFE2 03:9FD2: A5 04     LDA ram_0004_temp
C - - - - - 0x00DFE4 03:9FD4: 18        CLC
C - - - - - 0x00DFE5 03:9FD5: 7D 00 03  ADC ram_ppu_buffer,X
C - - - - - 0x00DFE8 03:9FD8: 10 02     BPL bra_9FDC
C - - - - - 0x00DFEA 03:9FDA: A9 0F     LDA #$0F
bra_9FDC:
C - - - - - 0x00DFEC 03:9FDC: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x00DFEF 03:9FDF: E8        INX
C - - - - - 0x00DFF0 03:9FE0: 88        DEY
C - - - - - 0x00DFF1 03:9FE1: D0 EF     BNE bra_9FD2_loop
C - - - - - 0x00DFF3 03:9FE3: 60        RTS



tbl_9FE4:
; 00 index at 0x00DE1D
- D 0 - - - 0x00DFF4 03:9FE4: C0        .byte $C0   ; 00 
- D 0 - - - 0x00DFF5 03:9FE5: D0        .byte $D0   ; 01 
- D 0 - - - 0x00DFF6 03:9FE6: E0        .byte $E0   ; 02 
- D 0 - - - 0x00DFF7 03:9FE7: F0        .byte $F0   ; 03 
- D 0 - - - 0x00DFF8 03:9FE8: 00        .byte $00   ; 04 
- D 0 - - - 0x00DFF9 03:9FE9: FF        .byte $FF   ; 05 end token
; 06 index at 0x00DDC7
- D 0 - - - 0x00DFFA 03:9FEA: 00        .byte $00   ; 00 
- D 0 - - - 0x00DFFB 03:9FEB: F0        .byte $F0   ; 01 
- D 0 - - - 0x00DFFC 03:9FEC: E0        .byte $E0   ; 02 
- D 0 - - - 0x00DFFD 03:9FED: D0        .byte $D0   ; 03 
- D 0 - - - 0x00DFFE 03:9FEE: C0        .byte $C0   ; 04 
- D 0 - - - 0x00DFFF 03:9FEF: FF        .byte $FF   ; 05 end token



sub_9FF0:
loc_9FF0:
C - - - - - 0x00E000 03:9FF0: 20 E9 EC  JSR sub_0x03ECF9_write_data_to_ppu_buffer
C - - - - - 0x00E003 03:9FF3: A9 04     LDA #con_98E4_3F00_0000
C - - - - - 0x00E005 03:9FF5: 4C E9 EC  JMP loc_0x03ECF9_write_data_to_ppu_buffer


; bzk garbage
- - - - - - 0x00E008 03:9FF8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



.out .sprintf("Free bytes in bank 86: 0x%04X [%d]", ($A000 - *), ($A000 - *))



