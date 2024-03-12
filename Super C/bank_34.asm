.segment "BANK_34"
.include "bank_ram.inc"
.include "bank_val.inc"
.org $8000 ; for listing file
; 0x008010-0x00C00F



.export _off001_0x008011_45_spawner_red_spiked_balls
.export _off001_0x008138_46_red_spiked_ball
.export _off001_0x0081B1_2A_embryo
.export _off001_0x008216_47_cannon_skul
.export _off001_0x008299_48_bullet_cannon_skul
.export _off001_0x0082C5_49_ceiling
.export _off001_0x00847F_2B_boss_8_red_spiked_ball
.export _off001_0x0084B9_37_boss_8_blue_spiked_ball
.export _off001_0x008543_38
.export _off001_0x0085A4_6D_boss_8_eye
.export _off001_0x0088CD_6E_boss_8_small_rock
.export _off001_0x008959_3B_purple_mutant
.export _off001_0x008A4C_3C_bullet_purple_mutant
.export _off001_0x008AD4_3D_spawner_facehuggers
.export _off001_0x008BB0_3E_facehugger
.export _off001_0x008C9D_52_boss_7_chest
.export _off001_0x008DD4_53_boss_7_ear
.export _off001_0x008E18_54_boss_7_fireball
.export _off001_0x008E51_55_boss_7_red_spikeball
.export _off001_0x008EB4_56_boss_7_slime
.export _off001_0x009002_51_boss_7_mouth
.export loc_0x009158_spawn_object_from_area_data
.export loc_0x0092C0_prepare_heli_rotor_blade
.export _off013_0x0092D9_00_area_1
.export _off013_0x0093ED_01_area_2
.export _off013_0x009493_02_area_3
.export _off013_0x00956B_03_area_4
.export _off013_0x00977E_04_area_5
.export _off013_0x009892_05_area_6
.export _off013_0x009935_06_area_7
.export _off013_0x0099C9_07_area_8
.export loc_0x009AE9_sound_mode_handler
.export _off004_0x009FC8_00_area_1
.export _off005_0x00A002_00_area_1
.export _off006_0x00A4E8_00_area_1
.export _off007_0x00B428_00_area_1



; bzk this byte must be placed at 8000
- D 0 - - - 0x008010 02:8000: 34        .byte con_prg_bank + $34   ; 



_off001_0x008011_45_spawner_red_spiked_balls:
- D 0 - I - 0x008011 02:8001: 0D 80     .word ofs_038_45_800D_01_initialize_object ; 
- D 0 - I - 0x008013 02:8003: 35 80     .word ofs_038_45_8035_02 ; 
- D 0 - I - 0x008015 02:8005: 53 80     .word ofs_038_45_8053_03 ; 
- D 0 - I - 0x008017 02:8007: BD 80     .word ofs_038_45_80BD_04 ; 
- D 0 - I - 0x008019 02:8009: FD A2     .word ofs_038_45_0x00630D_05 ; 
- D 0 - I - 0x00801B 02:800B: 3D A3     .word ofs_038_45_0x00634D_06_delete_object_04 ; 



ofs_038_45_800D_01_initialize_object:
C - - J - - 0x00801D 02:800D: A9 0C     LDA #$0C
C - - - - - 0x00801F 02:800F: 20 95 AB  JSR sub_0x006BA5_set_dynamic_hp_to_enemy
C - - - - - 0x008022 02:8012: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x008025 02:8015: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x008028 02:8018: 29 03     AND #$03
C - - - - - 0x00802A 02:801A: A8        TAY
C - - - - - 0x00802B 02:801B: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x00802E 02:801E: 18        CLC
C - - - - - 0x00802F 02:801F: 79 31 80  ADC tbl_8031,Y
C - - - - - 0x008032 02:8022: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x008035 02:8025: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x008038 02:8028: 38        SEC
C - - - - - 0x008039 02:8029: E9 08     SBC #$08
C - - - - - 0x00803B 02:802B: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x00803E 02:802E: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



tbl_8031:
- D 0 - - - 0x008041 02:8031: 04        .byte $04   ; 00 
- D 0 - - - 0x008042 02:8032: F8        .byte $F8   ; 01 
- D 0 - - - 0x008043 02:8033: FF        .byte $FF   ; 02 
- D 0 - - - 0x008044 02:8034: FC        .byte $FC   ; 03 



ofs_038_45_8035_02:
C - - J - - 0x008045 02:8035: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x008048 02:8038: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x00804B 02:803B: C9 F0     CMP #$F0
C - - - - - 0x00804D 02:803D: B0 13     BCS bra_8052_RTS
C - - - - - 0x00804F 02:803F: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x008052 02:8042: C9 20     CMP #$20
C - - - - - 0x008054 02:8044: 90 0C     BCC bra_8052_RTS
C - - - - - 0x008056 02:8046: C9 D0     CMP #$D0
C - - - - - 0x008058 02:8048: B0 08     BCS bra_8052_RTS
C - - - - - 0x00805A 02:804A: A9 01     LDA #$01
C - - - - - 0x00805C 02:804C: 9D 02 07  STA ram_0702_obj,X
C - - - - - 0x00805F 02:804F: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state
bra_8052_RTS:
C - - - - - 0x008062 02:8052: 60        RTS



ofs_038_45_8053_03:
C - - J - - 0x008063 02:8053: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x008066 02:8056: C9 D0     CMP #$D0
C - - - - - 0x008068 02:8058: 90 03     BCC bra_805D
C - - - - - 0x00806A 02:805A: 4C 75 A2  JMP loc_0x006285_delete_object_02
bra_805D:
C - - - - - 0x00806D 02:805D: A9 01     LDA #$01
C - - - - - 0x00806F 02:805F: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x008072 02:8062: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x008075 02:8065: DE 02 07  DEC ram_0702_obj,X
C - - - - - 0x008078 02:8068: D0 E8     BNE bra_8052_RTS
C - - - - - 0x00807A 02:806A: 20 C7 80  JSR sub_80C7
C - - - - - 0x00807D 02:806D: B0 4A     BCS bra_80B9
C - - - - - 0x00807F 02:806F: BD 56 07  LDA ram_0756_obj,X
C - - - - - 0x008082 02:8072: F0 0E     BEQ bra_8082
C - - - - - 0x008084 02:8074: DE 10 07  DEC ram_0710_obj,X
C - - - - - 0x008087 02:8077: 10 3E     BPL bra_80B7
C - - - - - 0x008089 02:8079: FE 10 07  INC ram_0710_obj,X
C - - - - - 0x00808C 02:807C: FE 10 07  INC ram_0710_obj,X
C - - - - - 0x00808F 02:807F: 4C AF 80  JMP loc_80AF
bra_8082:
C - - - - - 0x008092 02:8082: FE 10 07  INC ram_0710_obj,X
C - - - - - 0x008095 02:8085: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x008098 02:8088: C9 05     CMP #$05
C - - - - - 0x00809A 02:808A: A9 02     LDA #$02
C - - - - - 0x00809C 02:808C: 90 02     BCC bra_8090
C - - - - - 0x00809E 02:808E: A9 04     LDA #$04
bra_8090:
C - - - - - 0x0080A0 02:8090: DD 10 07  CMP ram_0710_obj,X
C - - - - - 0x0080A3 02:8093: D0 22     BNE bra_80B7
C - - - - - 0x0080A5 02:8095: DE 10 07  DEC ram_0710_obj,X
C - - - - - 0x0080A8 02:8098: DE 10 07  DEC ram_0710_obj,X
C - - - - - 0x0080AB 02:809B: FE 48 07  INC ram_0748_obj,X
C - - - - - 0x0080AE 02:809E: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x0080B1 02:80A1: C9 06     CMP #$06
C - - - - - 0x0080B3 02:80A3: 90 0A     BCC bra_80AF
C - - - - - 0x0080B5 02:80A5: A9 00     LDA #$00
C - - - - - 0x0080B7 02:80A7: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x0080BA 02:80AA: A0 46     LDY #con_obj_id_46
C - - - - - 0x0080BC 02:80AC: 20 C8 AB  JSR sub_0x006BD8
bra_80AF:
loc_80AF:
C D 0 - - - 0x0080BF 02:80AF: BD 56 07  LDA ram_0756_obj,X
C - - - - - 0x0080C2 02:80B2: 49 01     EOR #$01
C - - - - - 0x0080C4 02:80B4: 9D 56 07  STA ram_0756_obj,X
bra_80B7:
C - - - - - 0x0080C7 02:80B7: A9 0A     LDA #$0A
bra_80B9:
C - - - - - 0x0080C9 02:80B9: 9D 02 07  STA ram_0702_obj,X
C - - - - - 0x0080CC 02:80BC: 60        RTS



ofs_038_45_80BD_04:
C - - J - - 0x0080CD 02:80BD: A9 04     LDA #$04
C - - - - - 0x0080CF 02:80BF: 20 CA 80  JSR sub_80CA
C - - - - - 0x0080D2 02:80C2: B0 8E     BCS bra_8052_RTS
C - - - - - 0x0080D4 02:80C4: 4C 9A A2  JMP loc_0x0062AA



sub_80C7:
C - - - - - 0x0080D7 02:80C7: BD 10 07  LDA ram_0710_obj,X
sub_80CA:
C - - - - - 0x0080DA 02:80CA: 85 0A     STA ram_000A
C - - - - - 0x0080DC 02:80CC: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x0080DF 02:80CF: 29 03     AND #$03
C - - - - - 0x0080E1 02:80D1: 0A        ASL
C - - - - - 0x0080E2 02:80D2: A8        TAY
C - - - - - 0x0080E3 02:80D3: B9 FD 80  LDA tbl_80FD,Y
C - - - - - 0x0080E6 02:80D6: 85 08     STA ram_0008
C - - - - - 0x0080E8 02:80D8: B9 FE 80  LDA tbl_80FD + $01,Y
C - - - - - 0x0080EB 02:80DB: 85 09     STA ram_0009
C - - - - - 0x0080ED 02:80DD: 98        TYA
C - - - - - 0x0080EE 02:80DE: F0 13     BEQ bra_80F3
C - - - - - 0x0080F0 02:80E0: A5 0A     LDA ram_000A
C - - - - - 0x0080F2 02:80E2: 0A        ASL
C - - - - - 0x0080F3 02:80E3: A8        TAY
C - - - - - 0x0080F4 02:80E4: B1 08     LDA (ram_0008),Y
C - - - - - 0x0080F6 02:80E6: 85 0C     STA ram_000C
C - - - - - 0x0080F8 02:80E8: C8        INY
C - - - - - 0x0080F9 02:80E9: B1 08     LDA (ram_0008),Y
C - - - - - 0x0080FB 02:80EB: A0 E0     LDY #$E0
C - - - - - 0x0080FD 02:80ED: 20 A8 A8  JSR sub_0x0068B8
C - - - - - 0x008100 02:80F0: A9 01     LDA #$01
C - - - - - 0x008102 02:80F2: 60        RTS
bra_80F3:
C - - - - - 0x008103 02:80F3: A4 0A     LDY ram_000A
C - - - - - 0x008105 02:80F5: B1 08     LDA (ram_0008),Y
C - - - - - 0x008107 02:80F7: 20 9A A8  JSR sub_0x0068AA
C - - - - - 0x00810A 02:80FA: A9 01     LDA #$01
C - - - - - 0x00810C 02:80FC: 60        RTS



tbl_80FD:
- D 0 - - - 0x00810D 02:80FD: 05 81     .word off_8105_00
- D 0 - - - 0x00810F 02:80FF: 0A 81     .word off_810A_01
- D 0 - - - 0x008111 02:8101: 14 81     .word off_8114_02
- D 0 - - - 0x008113 02:8103: 1E 81     .word off_811E_03



off_8105_00:
- D 0 - I - 0x008115 02:8105: 4F        .byte $4F   ; 
- D 0 - I - 0x008116 02:8106: 60        .byte $60   ; 
- D 0 - I - 0x008117 02:8107: 61        .byte $61   ; 
- D 0 - I - 0x008118 02:8108: 62        .byte $62   ; 
- D 0 - I - 0x008119 02:8109: 0B        .byte $0B   ; 



off_810A_01:
- D 0 - I - 0x00811A 02:810A: 47        .byte $47   ; 
- D 0 - I - 0x00811B 02:810B: 4B        .byte $4B   ; 
- D 0 - I - 0x00811C 02:810C: 48        .byte $48   ; 
- D 0 - I - 0x00811D 02:810D: 4C        .byte $4C   ; 
- D 0 - I - 0x00811E 02:810E: 49        .byte $49   ; 
- D 0 - I - 0x00811F 02:810F: 4D        .byte $4D   ; 
- D 0 - I - 0x008120 02:8110: 4A        .byte $4A   ; 
- D 0 - I - 0x008121 02:8111: 4E        .byte $4E   ; 
- D 0 - I - 0x008122 02:8112: 04        .byte $04   ; 
- D 0 - I - 0x008123 02:8113: 08        .byte $08   ; 



off_8114_02:
- D 0 - I - 0x008124 02:8114: 50        .byte $50   ; 
- D 0 - I - 0x008125 02:8115: 54        .byte $54   ; 
- D 0 - I - 0x008126 02:8116: 51        .byte $51   ; 
- D 0 - I - 0x008127 02:8117: 55        .byte $55   ; 
- D 0 - I - 0x008128 02:8118: 52        .byte $52   ; 
- D 0 - I - 0x008129 02:8119: 56        .byte $56   ; 
- D 0 - I - 0x00812A 02:811A: 53        .byte $53   ; 
- D 0 - I - 0x00812B 02:811B: 57        .byte $57   ; 
- D 0 - I - 0x00812C 02:811C: 19        .byte $19   ; 
- D 0 - I - 0x00812D 02:811D: 1D        .byte $1D   ; 



off_811E_03:
- D 0 - I - 0x00812E 02:811E: 58        .byte $58   ; 
- D 0 - I - 0x00812F 02:811F: 5C        .byte $5C   ; 
- D 0 - I - 0x008130 02:8120: 59        .byte $59   ; 
- D 0 - I - 0x008131 02:8121: 5D        .byte $5D   ; 
- D 0 - I - 0x008132 02:8122: 5A        .byte $5A   ; 
- D 0 - I - 0x008133 02:8123: 5E        .byte $5E   ; 
- D 0 - I - 0x008134 02:8124: 5B        .byte $5B   ; 
- D 0 - I - 0x008135 02:8125: 5F        .byte $5F   ; 
- D 0 - I - 0x008136 02:8126: 23        .byte $23   ; 
- D 0 - I - 0x008137 02:8127: 27        .byte $27   ; 



_off001_0x008138_46_red_spiked_ball:
- D 0 - I - 0x008138 02:8128: 36 81     .word ofs_038_46_8136_01_initialize_object ; 
- D 0 - I - 0x00813A 02:812A: 4D 81     .word ofs_038_46_814D_02 ; 
- D 0 - I - 0x00813C 02:812C: 64 81     .word ofs_038_46_8164_03 ; 
- D 0 - I - 0x00813E 02:812E: 7E 81     .word ofs_038_46_817E_04 ; 
- D 0 - I - 0x008140 02:8130: 9A A2     .word ofs_038_46_0x0062AA_05 ; 
- D 0 - I - 0x008142 02:8132: FD A2     .word ofs_038_46_0x00630D_06 ; 
- D 0 - I - 0x008144 02:8134: 3D A3     .word ofs_038_46_0x00634D_07_delete_object_04 ; 



ofs_038_46_8136_01_initialize_object:
C - - J - - 0x008146 02:8136: A9 16     LDA #$16
C - - - - - 0x008148 02:8138: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x00814B 02:813B: 20 0B AB  JSR sub_0x006B1B_set_target_on_closest_player_X_pos
C - - - - - 0x00814E 02:813E: A0 00     LDY #$00
C - - - - - 0x008150 02:8140: 20 57 A9  JSR sub_0x006967
C - - - - - 0x008153 02:8143: A9 02     LDA #$02
C - - - - - 0x008155 02:8145: 9D 56 05  STA ram_attr_spr_enemy,X
C - - - - - 0x008158 02:8148: A9 40     LDA #$40
C - - - - - 0x00815A 02:814A: 4C E0 A2  JMP loc_0x0062F0



ofs_038_46_814D_02:
C - - J - - 0x00815D 02:814D: A0 16     LDY #con_0x006C32_16
C - - - - - 0x00815F 02:814F: 20 FD AB  JSR sub_0x006C0D
C - - - - - 0x008162 02:8152: 20 D3 A6  JSR sub_0x0066E3
C - - - - - 0x008165 02:8155: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x008168 02:8158: D0 46     BNE bra_81A0_RTS
C - - - - - 0x00816A 02:815A: A9 20     LDA #$20
C - - - - - 0x00816C 02:815C: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x00816F 02:815F: A9 20     LDA #$20
C - - - - - 0x008171 02:8161: 4C E0 A2  JMP loc_0x0062F0



ofs_038_46_8164_03:
C - - J - - 0x008174 02:8164: A0 16     LDY #con_0x006C32_16
C - - - - - 0x008176 02:8166: 20 FD AB  JSR sub_0x006C0D
C - - - - - 0x008179 02:8169: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x00817C 02:816C: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x00817F 02:816F: D0 2F     BNE bra_81A0_RTS
C - - - - - 0x008181 02:8171: 20 0B AB  JSR sub_0x006B1B_set_target_on_closest_player_X_pos
C - - - - - 0x008184 02:8174: A0 05     LDY #$05
C - - - - - 0x008186 02:8176: 20 57 A9  JSR sub_0x006967
C - - - - - 0x008189 02:8179: A9 10     LDA #$10
C - - - - - 0x00818B 02:817B: 4C E0 A2  JMP loc_0x0062F0



ofs_038_46_817E_04:
C - - J - - 0x00818E 02:817E: A0 16     LDY #con_0x006C32_16
C - - - - - 0x008190 02:8180: 20 FD AB  JSR sub_0x006C0D
C - - - - - 0x008193 02:8183: BD 56 07  LDA ram_0756_obj,X
C - - - - - 0x008196 02:8186: F0 15     BEQ bra_819D
C - - - - - 0x008198 02:8188: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x00819B 02:818B: D0 10     BNE bra_819D
C - - - - - 0x00819D 02:818D: A9 07     LDA #$07
C - - - - - 0x00819F 02:818F: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x0081A2 02:8192: 20 0B AB  JSR sub_0x006B1B_set_target_on_closest_player_X_pos
C - - - - - 0x0081A5 02:8195: A0 05     LDY #$05
C - - - - - 0x0081A7 02:8197: 20 23 A9  JSR sub_0x006933
C - - - - - 0x0081AA 02:819A: DE 56 07  DEC ram_0756_obj,X
bra_819D:
C - - - - - 0x0081AD 02:819D: 4C D3 A6  JMP loc_0x0066E3
bra_81A0_RTS:
C - - - - - 0x0081B0 02:81A0: 60        RTS



_off001_0x0081B1_2A_embryo:
- D 0 - I - 0x0081B1 02:81A1: AD 81     .word ofs_038_2A_81AD_01_initialize_object ; 
- D 0 - I - 0x0081B3 02:81A3: CC 81     .word ofs_038_2A_81CC_02 ; 
- D 0 - I - 0x0081B5 02:81A5: E7 81     .word ofs_038_2A_81E7_03 ; 
- D 0 - I - 0x0081B7 02:81A7: 9A A2     .word ofs_038_2A_0x0062AA_04 ; 
- D 0 - I - 0x0081B9 02:81A9: FD A2     .word ofs_038_2A_0x00630D_05 ; 
- D 0 - I - 0x0081BB 02:81AB: 3D A3     .word ofs_038_2A_0x00634D_06_delete_object_04 ; 



ofs_038_2A_81AD_01_initialize_object:
C - - J - - 0x0081BD 02:81AD: A9 06     LDA #$06
C - - - - - 0x0081BF 02:81AF: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x0081C2 02:81B2: A9 02     LDA #$02
C - - - - - 0x0081C4 02:81B4: 9D 56 05  STA ram_attr_spr_enemy,X
C - - - - - 0x0081C7 02:81B7: A9 81     LDA #$81
C - - - - - 0x0081C9 02:81B9: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x0081CC 02:81BC: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x0081CF 02:81BF: 4A        LSR
C - - - - - 0x0081D0 02:81C0: A9 20     LDA #$20
C - - - - - 0x0081D2 02:81C2: B0 05     BCS bra_81C9
C - - - - - 0x0081D4 02:81C4: 20 D7 A2  JSR sub_0x0062E7_increase_obj_state
C - - - - - 0x0081D7 02:81C7: A9 01     LDA #$01
bra_81C9:
C - - - - - 0x0081D9 02:81C9: 4C E0 A2  JMP loc_0x0062F0



ofs_038_2A_81CC_02:
C - - J - - 0x0081DC 02:81CC: BD E6 06  LDA ram_06E6_obj,X
C - - - - - 0x0081DF 02:81CF: 4A        LSR
C - - - - - 0x0081E0 02:81D0: 4A        LSR
C - - - - - 0x0081E1 02:81D1: A9 A8     LDA #$A8
C - - - - - 0x0081E3 02:81D3: 90 02     BCC bra_81D7
C - - - - - 0x0081E5 02:81D5: A9 00     LDA #$00
bra_81D7:
C - - - - - 0x0081E7 02:81D7: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x0081EA 02:81DA: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x0081ED 02:81DD: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x0081F0 02:81E0: D0 BE     BNE bra_81A0_RTS
C - - - - - 0x0081F2 02:81E2: A9 01     LDA #$01
C - - - - - 0x0081F4 02:81E4: 4C E0 A2  JMP loc_0x0062F0



ofs_038_2A_81E7_03:
C - - J - - 0x0081F7 02:81E7: A9 00     LDA #$00
C - - - - - 0x0081F9 02:81E9: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x0081FC 02:81EC: A0 15     LDY #con_0x006C32_15
C - - - - - 0x0081FE 02:81EE: 20 FD AB  JSR sub_0x006C0D
C - - - - - 0x008201 02:81F1: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x008204 02:81F4: D0 0D     BNE bra_8203
C - - - - - 0x008206 02:81F6: A9 07     LDA #$07
C - - - - - 0x008208 02:81F8: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x00820B 02:81FB: 20 0B AB  JSR sub_0x006B1B_set_target_on_closest_player_X_pos
C - - - - - 0x00820E 02:81FE: A0 01     LDY #$01
C - - - - - 0x008210 02:8200: 20 23 A9  JSR sub_0x006933
bra_8203:
C - - - - - 0x008213 02:8203: 4C D3 A6  JMP loc_0x0066E3



_off001_0x008216_47_cannon_skul:
- D 0 - I - 0x008216 02:8206: 10 82     .word ofs_038_47_8210_01_initialize_object ; 
- D 0 - I - 0x008218 02:8208: 34 82     .word ofs_038_47_8234_02 ; 
- D 0 - I - 0x00821A 02:820A: 7F 82     .word ofs_038_47_827F_03 ; 
- D 0 - I - 0x00821C 02:820C: FD A2     .word ofs_038_47_0x00630D_04 ; 
- D 0 - I - 0x00821E 02:820E: 3D A3     .word ofs_038_47_0x00634D_05_delete_object_04 ; 



ofs_038_47_8210_01_initialize_object:
C - - J - - 0x008220 02:8210: A9 10     LDA #$10
C - - - - - 0x008222 02:8212: 20 95 AB  JSR sub_0x006BA5_set_dynamic_hp_to_enemy
C - - - - - 0x008225 02:8215: A9 01     LDA #$01
C - - - - - 0x008227 02:8217: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x00822A 02:821A: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x00822D 02:821D: 38        SEC
C - - - - - 0x00822E 02:821E: E9 08     SBC #$08
C - - - - - 0x008230 02:8220: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x008233 02:8223: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x008236 02:8226: 18        CLC
C - - - - - 0x008237 02:8227: 69 08     ADC #$08
C - - - - - 0x008239 02:8229: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x00823C 02:822C: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x00823F 02:822F: A9 10     LDA #$10
C - - - - - 0x008241 02:8231: 4C E0 A2  JMP loc_0x0062F0



ofs_038_47_8234_02:
C - - J - - 0x008244 02:8234: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x008247 02:8237: C9 D0     CMP #$D0
C - - - - - 0x008249 02:8239: 90 03     BCC bra_823E
C - - - - - 0x00824B 02:823B: 4C 75 A2  JMP loc_0x006285_delete_object_02
bra_823E:
C - - - - - 0x00824E 02:823E: A9 01     LDA #$01
C - - - - - 0x008250 02:8240: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x008253 02:8243: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x008256 02:8246: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x008259 02:8249: D0 31     BNE bra_827C_RTS
C - - - - - 0x00825B 02:824B: BC 10 07  LDY ram_0710_obj,X
C - - - - - 0x00825E 02:824E: B9 7D 82  LDA tbl_827D,Y
C - - - - - 0x008261 02:8251: 20 9A A8  JSR sub_0x0068AA
C - - - - - 0x008264 02:8254: A9 01     LDA #$01
C - - - - - 0x008266 02:8256: B0 21     BCS bra_8279
C - - - - - 0x008268 02:8258: BD 10 07  LDA ram_0710_obj,X
C - - - - - 0x00826B 02:825B: 49 01     EOR #$01
C - - - - - 0x00826D 02:825D: 9D 10 07  STA ram_0710_obj,X
C - - - - - 0x008270 02:8260: F0 09     BEQ bra_826B
C - - - - - 0x008272 02:8262: A0 48     LDY #con_obj_id_48
C - - - - - 0x008274 02:8264: 20 C8 AB  JSR sub_0x006BD8
C - - - - - 0x008277 02:8267: A9 08     LDA #$08
C - - - - - 0x008279 02:8269: D0 0E     BNE bra_8279    ; jmp
bra_826B:
C - - - - - 0x00827B 02:826B: A9 10     LDA #$10
C - - - - - 0x00827D 02:826D: DE 56 07  DEC ram_0756_obj,X
C - - - - - 0x008280 02:8270: 10 07     BPL bra_8279
C - - - - - 0x008282 02:8272: A9 01     LDA #$01
C - - - - - 0x008284 02:8274: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x008287 02:8277: A9 50     LDA #$50
bra_8279:
C - - - - - 0x008289 02:8279: 9D E6 06  STA ram_06E6_obj,X
bra_827C_RTS:
C - - - - - 0x00828C 02:827C: 60        RTS



tbl_827D:
- D 0 - - - 0x00828D 02:827D: 6E        .byte $6E   ; 00 
- D 0 - - - 0x00828E 02:827E: 6D        .byte $6D   ; 01 



ofs_038_47_827F_03:
C - - J - - 0x00828F 02:827F: A9 6C     LDA #$6C
C - - - - - 0x008291 02:8281: 20 9A A8  JSR sub_0x0068AA
C - - - - - 0x008294 02:8284: B0 F6     BCS bra_827C_RTS
C - - - - - 0x008296 02:8286: 4C 9A A2  JMP loc_0x0062AA



_off001_0x008299_48_bullet_cannon_skul:
- D 0 - I - 0x008299 02:8289: 8D 82     .word ofs_038_48_828D_01_initialize_object ; 
- D 0 - I - 0x00829B 02:828B: A8 82     .word ofs_038_48_82A8_02 ; 



ofs_038_48_828D_01_initialize_object:
C - - J - - 0x00829D 02:828D: A9 80     LDA #$80
C - - - - - 0x00829F 02:828F: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x0082A2 02:8292: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x0082A5 02:8295: 18        CLC
C - - - - - 0x0082A6 02:8296: 69 04     ADC #$04
C - - - - - 0x0082A8 02:8298: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x0082AB 02:829B: A9 00     LDA #< $FC00
C - - - - - 0x0082AD 02:829D: 9D BC 06  STA ram_spd_X_lo_obj,X
C - - - - - 0x0082B0 02:82A0: A9 FC     LDA #> $FC00
C - - - - - 0x0082B2 02:82A2: 9D CA 06  STA ram_spd_X_hi_obj,X
C - - - - - 0x0082B5 02:82A5: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_48_82A8_02:
C - - J - - 0x0082B8 02:82A8: A9 06     LDA #$06
C - - - - - 0x0082BA 02:82AA: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x0082BD 02:82AD: A9 02     LDA #$02
C - - - - - 0x0082BF 02:82AF: 9D 56 05  STA ram_attr_spr_enemy,X
C - - - - - 0x0082C2 02:82B2: 4C D3 A6  JMP loc_0x0066E3



_off001_0x0082C5_49_ceiling:
- D 0 - I - 0x0082C5 02:82B5: BF 82     .word ofs_038_49_82BF_01_initialize_object ; 
- D 0 - I - 0x0082C7 02:82B7: CC 82     .word ofs_038_49_82CC_02 ; 
- D 0 - I - 0x0082C9 02:82B9: 1A 83     .word ofs_038_49_831A_03 ; 
- D 0 - I - 0x0082CB 02:82BB: 3A 83     .word ofs_038_49_833A_04 ; 
- D 0 - I - 0x0082CD 02:82BD: 57 83     .word ofs_038_49_8357_05 ; 



ofs_038_49_82BF_01_initialize_object:
C - - J - - 0x0082CF 02:82BF: A9 81     LDA #$81
C - - - - - 0x0082D1 02:82C1: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x0082D4 02:82C4: A9 20     LDA #$20
C - - - - - 0x0082D6 02:82C6: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x0082D9 02:82C9: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_49_82CC_02:
C - - J - - 0x0082DC 02:82CC: A5 FD     LDA ram_scroll_X
C - - - - - 0x0082DE 02:82CE: D0 49     BNE bra_8319_RTS
C - - - - - 0x0082E0 02:82D0: A9 00     LDA #$00
C - - - - - 0x0082E2 02:82D2: 85 60     STA ram_0060_game_handler
C - - - - - 0x0082E4 02:82D4: 85 70     STA ram_0070_game_handler
C - - - - - 0x0082E6 02:82D6: 20 7F FC  JSR sub_0x01FC8F_copy_reg_values
C - - - - - 0x0082E9 02:82D9: 20 94 AA  JSR sub_0x006AA4_save_reg_values
C - - - - - 0x0082EC 02:82DC: A9 80     LDA #$80
C - - - - - 0x0082EE 02:82DE: 85 85     STA ram_0085_for_2000
C - - - - - 0x0082F0 02:82E0: A9 01     LDA #con_mirroring_H
C - - - - - 0x0082F2 02:82E2: 85 26     STA ram_for_A000
C - - - - - 0x0082F4 02:82E4: A9 06     LDA #con_irq_area_8_ceiling
C - - - - - 0x0082F6 02:82E6: 85 27     STA ram_irq_handler_hi
C - - - - - 0x0082F8 02:82E8: A9 B9     LDA #$B9
C - - - - - 0x0082FA 02:82EA: 85 45     STA ram_scanline
C - - - - - 0x0082FC 02:82EC: A9 E0     LDA #$E0
C - - - - - 0x0082FE 02:82EE: 85 4A     STA ram_004A
C - - - - - 0x008300 02:82F0: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x008303 02:82F3: 4A        LSR
C - - - - - 0x008304 02:82F4: A9 2E     LDA #$2E
C - - - - - 0x008306 02:82F6: A0 AA     LDY #$AA
C - - - - - 0x008308 02:82F8: 90 04     BCC bra_82FE
C - - - - - 0x00830A 02:82FA: A9 22     LDA #$22
C - - - - - 0x00830C 02:82FC: A0 A8     LDY #$A8
bra_82FE:
C - - - - - 0x00830E 02:82FE: 85 4B     STA ram_004B
C - - - - - 0x008310 02:8300: 84 FF     STY ram_for_2000
C - - - - - 0x008312 02:8302: 84 FB     STY ram_00FB_for_2000
C - - - - - 0x008314 02:8304: 20 CE A9  JSR sub_0x0069DE
C - - - - - 0x008317 02:8307: A9 08     LDA #$08
C - - - - - 0x008319 02:8309: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x00831C 02:830C: A9 00     LDA #$00
C - - - - - 0x00831E 02:830E: 85 73     STA ram_0073
C - - - - - 0x008320 02:8310: 85 74     STA ram_0074_area_config
C - - - - - 0x008322 02:8312: 85 77     STA ram_0077
C - - - - - 0x008324 02:8314: 85 64     STA ram_0064
C - - - - - 0x008326 02:8316: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state
bra_8319_RTS:
C - - - - - 0x008329 02:8319: 60        RTS



ofs_038_49_831A_03:
C - - J - - 0x00832A 02:831A: 20 76 83  JSR sub_8376
C - - - - - 0x00832D 02:831D: A5 60     LDA ram_0060_game_handler
C - - - - - 0x00832F 02:831F: 05 70     ORA ram_0070_game_handler
C - - - - - 0x008331 02:8321: D0 16     BNE bra_8339_RTS
C - - - - - 0x008333 02:8323: DE 48 07  DEC ram_0748_obj,X
C - - - - - 0x008336 02:8326: F0 05     BEQ bra_832D
C - - - - - 0x008338 02:8328: A9 00     LDA #$00
C - - - - - 0x00833A 02:832A: 85 6B     STA ram_006B
C - - - - - 0x00833C 02:832C: 60        RTS
bra_832D:
C - - - - - 0x00833D 02:832D: A9 01     LDA #$01
C - - - - - 0x00833F 02:832F: 85 85     STA ram_0085_for_2000
C - - - - - 0x008341 02:8331: A9 00     LDA #$00
C - - - - - 0x008343 02:8333: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x008346 02:8336: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state
bra_8339_RTS:
C - - - - - 0x008349 02:8339: 60        RTS



ofs_038_49_833A_04:
C - - J - - 0x00834A 02:833A: A9 00     LDA #$00
C - - - - - 0x00834C 02:833C: 85 9A     STA ram_009A
C - - - - - 0x00834E 02:833E: 20 8F 83  JSR sub_838F
C - - - - - 0x008351 02:8341: 20 76 83  JSR sub_8376
C - - - - - 0x008354 02:8344: BD 9C 07  LDA ram_079C_obj,X
C - - - - - 0x008357 02:8347: F0 F0     BEQ bra_8339_RTS
C - - - - - 0x008359 02:8349: C9 FE     CMP #$FE
C - - - - - 0x00835B 02:834B: B0 EC     BCS bra_8339_RTS
C - - - - - 0x00835D 02:834D: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x008360 02:8350: C9 20     CMP #$20
C - - - - - 0x008362 02:8352: D0 E5     BNE bra_8339_RTS
C - - - - - 0x008364 02:8354: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_49_8357_05:
C - - J - - 0x008367 02:8357: 20 76 83  JSR sub_8376
C - - - - - 0x00836A 02:835A: A5 FD     LDA ram_scroll_X
C - - - - - 0x00836C 02:835C: D0 DB     BNE bra_8339_RTS
C - - - - - 0x00836E 02:835E: 20 A1 AA  JSR sub_0x006AB1_restore_reg_values
C - - - - - 0x008371 02:8361: A5 FD     LDA ram_scroll_X
C - - - - - 0x008373 02:8363: 85 FA     STA ram_00FA_scroll_X
C - - - - - 0x008375 02:8365: A9 00     LDA #$00
C - - - - - 0x008377 02:8367: 85 85     STA ram_0085_for_2000
C - - - - - 0x008379 02:8369: 20 82 F1  JSR sub_0x01F192
C - - - - - 0x00837C 02:836C: E6 74     INC ram_0074_area_config
C - - - - - 0x00837E 02:836E: C6 65     DEC ram_0065
C - - - - - 0x008380 02:8370: 20 8C FC  JSR sub_0x01FC9C_increase_002B
C - - - - - 0x008383 02:8373: 4C 75 A2  JMP loc_0x006285_delete_object_02



sub_8376:
C - - - - - 0x008386 02:8376: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x008389 02:8379: 38        SEC
C - - - - - 0x00838A 02:837A: E5 62     SBC ram_cam_spd_X
C - - - - - 0x00838C 02:837C: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x00838F 02:837F: BD 9C 07  LDA ram_079C_obj,X
C - - - - - 0x008392 02:8382: E9 00     SBC #$00
C - - - - - 0x008394 02:8384: 9D 9C 07  STA ram_079C_obj,X
C - - - - - 0x008397 02:8387: 20 0A AA  JSR sub_0x006A1A
C - - - - - 0x00839A 02:838A: A5 FD     LDA ram_scroll_X
C - - - - - 0x00839C 02:838C: 85 FA     STA ram_00FA_scroll_X
C - - - - - 0x00839E 02:838E: 60        RTS



sub_838F:
C - - - - - 0x00839F 02:838F: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x0083A2 02:8392: 20 09 E6  JSR sub_0x01E619_jump_to_pointers_after_jsr
- D 0 - I - 0x0083A5 02:8395: 9F 83     .word ofs_017_839F_00
- D 0 - I - 0x0083A7 02:8397: C9 83     .word ofs_017_83C9_01
- D 0 - I - 0x0083A9 02:8399: E6 83     .word ofs_017_83E6_02
- D 0 - I - 0x0083AB 02:839B: F4 83     .word ofs_017_83F4_03
- D 0 - I - 0x0083AD 02:839D: 3A 84     .word ofs_017_843A_04



ofs_017_839F_00:
C - - J - - 0x0083AF 02:839F: A9 10     LDA #$10
C - - - - - 0x0083B1 02:83A1: 20 CB AA  JSR sub_0x006ADB_add_to_spd_Y
C - - - - - 0x0083B4 02:83A4: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x0083B7 02:83A7: 85 08     STA ram_0008
C - - - - - 0x0083B9 02:83A9: 20 48 84  JSR sub_8448
C - - - - - 0x0083BC 02:83AC: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x0083BF 02:83AF: 38        SEC
C - - - - - 0x0083C0 02:83B0: E5 08     SBC ram_0008
C - - - - - 0x0083C2 02:83B2: 85 9A     STA ram_009A
C - - - - - 0x0083C4 02:83B4: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x0083C7 02:83B7: C9 A0     CMP #$A0
C - - - - - 0x0083C9 02:83B9: 90 0D     BCC bra_83C8_RTS
C - - - - - 0x0083CB 02:83BB: A9 22     LDA #con_sound_22
C - - - - - 0x0083CD 02:83BD: 20 DE FD  JSR sub_0x01FDEE_play_sound
C - - - - - 0x0083D0 02:83C0: A9 20     LDA #$20
bra_83C2:
loc_83C2:
C D 0 - - - 0x0083D2 02:83C2: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x0083D5 02:83C5: FE 48 07  INC ram_0748_obj,X
bra_83C8_RTS:
C - - - - - 0x0083D8 02:83C8: 60        RTS



ofs_017_83C9_01:
C - - J - - 0x0083D9 02:83C9: BD E6 06  LDA ram_06E6_obj,X
C - - - - - 0x0083DC 02:83CC: 29 03     AND #$03
C - - - - - 0x0083DE 02:83CE: D0 0D     BNE bra_83DD
C - - - - - 0x0083E0 02:83D0: BD E6 06  LDA ram_06E6_obj,X
C - - - - - 0x0083E3 02:83D3: 4A        LSR
C - - - - - 0x0083E4 02:83D4: 29 02     AND #$02
C - - - - - 0x0083E6 02:83D6: A8        TAY
C - - - - - 0x0083E7 02:83D7: 20 5C 84  JSR sub_845C
C - - - - - 0x0083EA 02:83DA: 20 48 84  JSR sub_8448
bra_83DD:
C - - - - - 0x0083ED 02:83DD: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x0083F0 02:83E0: D0 E6     BNE bra_83C8_RTS
C - - - - - 0x0083F2 02:83E2: A9 40     LDA #$40
C - - - - - 0x0083F4 02:83E4: D0 DC     BNE bra_83C2    ; jmp



ofs_017_83E6_02:
C - - J - - 0x0083F6 02:83E6: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x0083F9 02:83E9: D0 DD     BNE bra_83C8_RTS
C - - - - - 0x0083FB 02:83EB: A0 04     LDY #$04
C - - - - - 0x0083FD 02:83ED: 20 5C 84  JSR sub_845C
C - - - - - 0x008400 02:83F0: FE 48 07  INC ram_0748_obj,X
C - - - - - 0x008403 02:83F3: 60        RTS



ofs_017_83F4_03:
C - - J - - 0x008404 02:83F4: 20 48 84  JSR sub_8448
C - - - - - 0x008407 02:83F7: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x00840A 02:83FA: C9 21     CMP #$21
C - - - - - 0x00840C 02:83FC: B0 CA     BCS bra_83C8_RTS
C - - - - - 0x00840E 02:83FE: A9 20     LDA #$20
C - - - - - 0x008410 02:8400: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x008413 02:8403: A9 05     LDA #$05
C - - - - - 0x008415 02:8405: 85 08     STA ram_0008
bra_8407_loop:
C - - - - - 0x008417 02:8407: A0 2A     LDY #con_obj_id_2A
C - - - - - 0x008419 02:8409: 20 C8 AB  JSR sub_0x006BD8
C - - - - - 0x00841C 02:840C: 90 1B     BCC bra_8429
C - - - - - 0x00841E 02:840E: A6 11     LDX ram_0011
C - - - - - 0x008420 02:8410: A4 08     LDY ram_0008
C - - - - - 0x008422 02:8412: B9 2E 84  LDA tbl_842E_pos_Y,Y
C - - - - - 0x008425 02:8415: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x008428 02:8418: B9 34 84  LDA tbl_8434_pos_X,Y
C - - - - - 0x00842B 02:841B: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x00842E 02:841E: A9 01     LDA #$01
C - - - - - 0x008430 02:8420: 9D 1E 07  STA ram_obj_flags,X
C - - - - - 0x008433 02:8423: A6 10     LDX ram_0010
C - - - - - 0x008435 02:8425: C6 08     DEC ram_0008
C - - - - - 0x008437 02:8427: 10 DE     BPL bra_8407_loop
bra_8429:
C - - - - - 0x008439 02:8429: A9 40     LDA #$40
C - - - - - 0x00843B 02:842B: 4C C2 83  JMP loc_83C2



tbl_842E_pos_Y:
- D 0 - - - 0x00843E 02:842E: 38        .byte $38   ; 00 
- D 0 - - - 0x00843F 02:842F: 38        .byte $38   ; 01 
- D 0 - - - 0x008440 02:8430: 30        .byte $30   ; 02 
- D 0 - - - 0x008441 02:8431: 30        .byte $30   ; 03 
- D 0 - - - 0x008442 02:8432: 28        .byte $28   ; 04 
- D 0 - - - 0x008443 02:8433: 28        .byte $28   ; 05 



tbl_8434_pos_X:
- D 0 - - - 0x008444 02:8434: 30        .byte $30   ; 00 
- D 0 - - - 0x008445 02:8435: D0        .byte $D0   ; 01 
- D 0 - - - 0x008446 02:8436: 50        .byte $50   ; 02 
- D 0 - - - 0x008447 02:8437: B0        .byte $B0   ; 03 
- D 0 - - - 0x008448 02:8438: 70        .byte $70   ; 04 
- D 0 - - - 0x008449 02:8439: 90        .byte $90   ; 05 



ofs_017_843A_04:
C - - J - - 0x00844A 02:843A: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x00844D 02:843D: D0 89     BNE bra_83C8_RTS
C - - - - - 0x00844F 02:843F: 20 CA A7  JSR sub_0x0067DA_clear_spd_Y
C - - - - - 0x008452 02:8442: A9 00     LDA #$00
C - - - - - 0x008454 02:8444: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x008457 02:8447: 60        RTS



sub_8448:
C - - - - - 0x008458 02:8448: BD 84 06  LDA ram_pos_Y_lo_enemy,X
C - - - - - 0x00845B 02:844B: 18        CLC
C - - - - - 0x00845C 02:844C: 7D A0 06  ADC ram_spd_Y_lo_obj,X
C - - - - - 0x00845F 02:844F: 9D 84 06  STA ram_pos_Y_lo_enemy,X
C - - - - - 0x008462 02:8452: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x008465 02:8455: 7D AE 06  ADC ram_spd_Y_hi_obj,X
C - - - - - 0x008468 02:8458: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x00846B 02:845B: 60        RTS



sub_845C:
C - - - - - 0x00846C 02:845C: B9 69 84  LDA tbl_8469_spd_Y,Y
C - - - - - 0x00846F 02:845F: 9D A0 06  STA ram_spd_Y_lo_obj,X
C - - - - - 0x008472 02:8462: B9 6A 84  LDA tbl_8469_spd_Y + $01,Y
C - - - - - 0x008475 02:8465: 9D AE 06  STA ram_spd_Y_hi_obj,X
C - - - - - 0x008478 02:8468: 60        RTS



tbl_8469_spd_Y:
- D 0 - - - 0x008479 02:8469: 00 02     .word $0200 ; 00 
- D 0 - - - 0x00847B 02:846B: 00 FE     .word $FE00 ; 02 
- D 0 - - - 0x00847D 02:846D: 00 FF     .word $FF00 ; 04 



_off001_0x00847F_2B_boss_8_red_spiked_ball:
- D 0 - I - 0x00847F 02:846F: 77 84     .word ofs_038_2B_8477_01_initialize_object ; 
- D 0 - I - 0x008481 02:8471: 92 84     .word ofs_038_2B_8492_02 ; 
- D 0 - I - 0x008483 02:8473: A0 84     .word ofs_038_2B_84A0_03 ; 
- D 0 - I - 0x008485 02:8475: 75 A2     .word ofs_038_2B_0x006285_04_delete_object_02 ; 


ofs_038_2B_8477_01_initialize_object:
C - - J - - 0x008487 02:8477: A9 80     LDA #$80
C - - - - - 0x008489 02:8479: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x00848C 02:847C: A9 F1     LDA #con__hp_F1
C - - - - - 0x00848E 02:847E: 9D 76 06  STA ram_obj_hp,X
C - - - - - 0x008491 02:8481: BC 48 07  LDY ram_0748_obj,X
C - - - - - 0x008494 02:8484: B9 8A 84  LDA tbl_848A,Y
C - - - - - 0x008497 02:8487: 4C E0 A2  JMP loc_0x0062F0



tbl_848A:
- D 0 - - - 0x00849A 02:848A: 1C        .byte $1C   ; 00 
- D 0 - - - 0x00849B 02:848B: 18        .byte $18   ; 01 
- D 0 - - - 0x00849C 02:848C: 14        .byte $14   ; 02 
- D 0 - - - 0x00849D 02:848D: 10        .byte $10   ; 03 
- D 0 - - - 0x00849E 02:848E: 0C        .byte $0C   ; 04 
- D 0 - - - 0x00849F 02:848F: 08        .byte $08   ; 05 
- D 0 - - - 0x0084A0 02:8490: 04        .byte $04   ; 06 
- D 0 - - - 0x0084A1 02:8491: 01        .byte $01   ; 07 



ofs_038_2B_8492_02:
C - - J - - 0x0084A2 02:8492: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x0084A5 02:8495: D0 08     BNE bra_849F_RTS
C - - - - - 0x0084A7 02:8497: A9 02     LDA #$02
C - - - - - 0x0084A9 02:8499: 9D 56 05  STA ram_attr_spr_enemy,X
C - - - - - 0x0084AC 02:849C: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state
bra_849F_RTS:
C - - - - - 0x0084AF 02:849F: 60        RTS



ofs_038_2B_84A0_03:
C - - J - - 0x0084B0 02:84A0: A0 16     LDY #con_0x006C32_16
C - - - - - 0x0084B2 02:84A2: 20 FD AB  JSR sub_0x006C0D
C - - - - - 0x0084B5 02:84A5: 20 D3 A6  JSR sub_0x0066E3
C - - - - - 0x0084B8 02:84A8: 60        RTS



_off001_0x0084B9_37_boss_8_blue_spiked_ball:
- D 0 - I - 0x0084B9 02:84A9: B5 84     .word ofs_038_37_84B5_01_initialize_object ; 
- D 0 - I - 0x0084BB 02:84AB: EE 84     .word ofs_038_37_84EE_02 ; 
- D 0 - I - 0x0084BD 02:84AD: 0B 85     .word ofs_038_37_850B_03 ; 
- D 0 - I - 0x0084BF 02:84AF: 9A A2     .word ofs_038_37_0x0062AA_04 ; 
- D 0 - I - 0x0084C1 02:84B1: FD A2     .word ofs_038_37_0x00630D_05 ; 
- D 0 - I - 0x0084C3 02:84B3: 3D A3     .word ofs_038_37_0x00634D_06_delete_object_04 ; 



ofs_038_37_84B5_01_initialize_object:
C - - J - - 0x0084C5 02:84B5: A9 03     LDA #$03
C - - - - - 0x0084C7 02:84B7: 9D 56 05  STA ram_attr_spr_enemy,X
C - - - - - 0x0084CA 02:84BA: A9 B8     LDA #$B8
C - - - - - 0x0084CC 02:84BC: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x0084CF 02:84BF: A9 D0     LDA #$D0
C - - - - - 0x0084D1 02:84C1: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x0084D4 02:84C4: A5 23     LDA ram_random
C - - - - - 0x0084D6 02:84C6: 29 07     AND #$07
C - - - - - 0x0084D8 02:84C8: 0A        ASL
C - - - - - 0x0084D9 02:84C9: A8        TAY
C - - - - - 0x0084DA 02:84CA: B9 13 85  LDA tbl_8513_spd_Y,Y
C - - - - - 0x0084DD 02:84CD: 9D A0 06  STA ram_spd_Y_lo_obj,X
C - - - - - 0x0084E0 02:84D0: B9 14 85  LDA tbl_8513_spd_Y + $01,Y
C - - - - - 0x0084E3 02:84D3: 9D AE 06  STA ram_spd_Y_hi_obj,X
C - - - - - 0x0084E6 02:84D6: A5 23     LDA ram_random
C - - - - - 0x0084E8 02:84D8: 18        CLC
C - - - - - 0x0084E9 02:84D9: 65 1B     ADC ram_frm_cnt_1
C - - - - - 0x0084EB 02:84DB: 29 07     AND #$07
C - - - - - 0x0084ED 02:84DD: 0A        ASL
C - - - - - 0x0084EE 02:84DE: A8        TAY
C - - - - - 0x0084EF 02:84DF: B9 23 85  LDA tbl_8523_spd_X,Y
C - - - - - 0x0084F2 02:84E2: 9D BC 06  STA ram_spd_X_lo_obj,X
C - - - - - 0x0084F5 02:84E5: B9 24 85  LDA tbl_8523_spd_X + $01,Y
C - - - - - 0x0084F8 02:84E8: 9D CA 06  STA ram_spd_X_hi_obj,X
C - - - - - 0x0084FB 02:84EB: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_37_84EE_02:
C - - J - - 0x0084FE 02:84EE: A0 16     LDY #con_0x006C32_16
C - - - - - 0x008500 02:84F0: 20 FD AB  JSR sub_0x006C0D
C - - - - - 0x008503 02:84F3: A9 20     LDA #$20
C - - - - - 0x008505 02:84F5: 20 CB AA  JSR sub_0x006ADB_add_to_spd_Y
C - - - - - 0x008508 02:84F8: 20 D3 A6  JSR sub_0x0066E3
C - - - - - 0x00850B 02:84FB: BD AE 06  LDA ram_spd_Y_hi_obj,X
C - - - - - 0x00850E 02:84FE: 30 0A     BMI bra_850A_RTS    ; if moving up
; if moving down
C - - - - - 0x008510 02:8500: C9 01     CMP #$01
C - - - - - 0x008512 02:8502: 90 06     BCC bra_850A_RTS
C - - - - - 0x008514 02:8504: 20 D3 A7  JSR sub_0x0067E3_clear_spd_X
C - - - - - 0x008517 02:8507: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state
bra_850A_RTS:
C - - - - - 0x00851A 02:850A: 60        RTS



ofs_038_37_850B_03:
C - - J - - 0x00851B 02:850B: A0 16     LDY #con_0x006C32_16
C - - - - - 0x00851D 02:850D: 20 FD AB  JSR sub_0x006C0D
C - - - - - 0x008520 02:8510: 4C D3 A6  JMP loc_0x0066E3



tbl_8513_spd_Y:
- D 0 - - - 0x008523 02:8513: C0 F9     .word $F9C0 ; 00 
- D 0 - - - 0x008525 02:8515: 00 FA     .word $FA00 ; 01 
- D 0 - - - 0x008527 02:8517: C0 F9     .word $F9C0 ; 02 
- D 0 - - - 0x008529 02:8519: 00 FA     .word $FA00 ; 03 
- D 0 - - - 0x00852B 02:851B: C0 F9     .word $F9C0 ; 04 
- D 0 - - - 0x00852D 02:851D: 00 FA     .word $FA00 ; 05 
- D 0 - - - 0x00852F 02:851F: C0 F9     .word $F9C0 ; 06 
- D 0 - - - 0x008531 02:8521: 00 FA     .word $FA00 ; 07 



tbl_8523_spd_X:
- D 0 - - - 0x008533 02:8523: 00 FD     .word $FD00 ; 00 
- D 0 - - - 0x008535 02:8525: 30 FD     .word $FD30 ; 01 
- D 0 - - - 0x008537 02:8527: 60 FD     .word $FD60 ; 02 
- D 0 - - - 0x008539 02:8529: 90 FD     .word $FD90 ; 03 
- D 0 - - - 0x00853B 02:852B: C0 FD     .word $FDC0 ; 04 
- D 0 - - - 0x00853D 02:852D: F0 FD     .word $FDF0 ; 05 
- D 0 - - - 0x00853F 02:852F: 20 FE     .word $FE20 ; 06 
- D 0 - - - 0x008541 02:8531: 50 FE     .word $FE50 ; 07 



_off001_0x008543_38:
; bzk garbage, unused object
- - - - - - 0x008543 02:8533: 39 85     .word ofs_038_38_8539_01_initialize_object ; 
- - - - - - 0x008545 02:8535: 72 85     .word ofs_038_38_8572_02 ; 
- - - - - - 0x008547 02:8537: 75 A2     .word ofs_038_38_0x006285_03_delete_object_02 ; 



ofs_038_38_8539_01_initialize_object:
- - - - - - 0x008549 02:8539: A9 06     LDA #$06
- - - - - - 0x00854B 02:853B: 9D 08 05  STA ram_anim_id_enemy,X
- - - - - - 0x00854E 02:853E: A9 81     LDA #$81
- - - - - - 0x008550 02:8540: 9D 2C 07  STA ram_072C_obj,X
- - - - - - 0x008553 02:8543: A9 02     LDA #$02
- - - - - - 0x008555 02:8545: 9D 56 07  STA ram_0756_obj,X
- - - - - - 0x008558 02:8548: BD 48 07  LDA ram_0748_obj,X
- - - - - - 0x00855B 02:854B: 29 01     AND #$01
- - - - - - 0x00855D 02:854D: A8        TAY
- - - - - - 0x00855E 02:854E: B9 8E 85  LDA tbl_858E,Y
- - - - - - 0x008561 02:8551: 9D E6 06  STA ram_06E6_obj,X
- - - - - - 0x008564 02:8554: B9 90 85  LDA tbl_8590,Y
- - - - - - 0x008567 02:8557: 85 00     STA ram_0000
- - - - - - 0x008569 02:8559: B9 92 85  LDA tbl_8592,Y
- - - - - - 0x00856C 02:855C: BC 80 07  LDY ram_0780_obj,X
- - - - - - 0x00856F 02:855F: 18        CLC
- - - - - - 0x008570 02:8560: 79 3C 05  ADC ram_pos_X_hi_enemy,Y
- - - - - - 0x008573 02:8563: 9D 3C 05  STA ram_pos_X_hi_enemy,X
- - - - - - 0x008576 02:8566: A5 00     LDA ram_0000
- - - - - - 0x008578 02:8568: 18        CLC
- - - - - - 0x008579 02:8569: 79 22 05  ADC ram_pos_Y_hi_enemy,Y
- - - - - - 0x00857C 02:856C: 9D 22 05  STA ram_pos_Y_hi_enemy,X
- - - - - - 0x00857F 02:856F: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_38_8572_02:
- - - - - - 0x008582 02:8572: DE E6 06  DEC ram_06E6_obj,X
- - - - - - 0x008585 02:8575: D0 16     BNE bra_858D_RTS
- - - - - - 0x008587 02:8577: A0 37     LDY #con_obj_id_37
- - - - - - 0x008589 02:8579: 20 C8 AB  JSR sub_0x006BD8
- - - - - - 0x00858C 02:857C: A9 20     LDA #$20
- - - - - - 0x00858E 02:857E: DE 56 07  DEC ram_0756_obj,X
- - - - - - 0x008591 02:8581: D0 07     BNE bra_858A
- - - - - - 0x008593 02:8583: A9 02     LDA #$02
- - - - - - 0x008595 02:8585: 9D 56 07  STA ram_0756_obj,X
- - - - - - 0x008598 02:8588: A9 F0     LDA #$F0
bra_858A:
- - - - - - 0x00859A 02:858A: 9D E6 06  STA ram_06E6_obj,X
bra_858D_RTS:
- - - - - - 0x00859D 02:858D: 60        RTS



tbl_858E:
- - - - - - 0x00859E 02:858E: 80        .byte $80   ; 00 
- - - - - - 0x00859F 02:858F: C0        .byte $C0   ; 01 



tbl_8590:
- - - - - - 0x0085A0 02:8590: F0        .byte $F0   ; 00 
- - - - - - 0x0085A1 02:8591: 40        .byte $40   ; 01 



tbl_8592:
- - - - - - 0x0085A2 02:8592: 00        .byte $00   ; 00 
- - - - - - 0x0085A3 02:8593: 00        .byte $00   ; 01 



_off001_0x0085A4_6D_boss_8_eye:
- D 0 - I - 0x0085A4 02:8594: AC 85     .word ofs_038_6D_85AC_01_initialize_object ; 
- D 0 - I - 0x0085A6 02:8596: B9 85     .word ofs_038_6D_85B9_02 ; 
- D 0 - I - 0x0085A8 02:8598: D4 85     .word ofs_038_6D_85D4_03 ; 
- D 0 - I - 0x0085AA 02:859A: 02 86     .word ofs_038_6D_8602_04 ; 
- D 0 - I - 0x0085AC 02:859C: 76 86     .word ofs_038_6D_8676_05 ; 
- D 0 - I - 0x0085AE 02:859E: B3 86     .word ofs_038_6D_86B3_06 ; 
- D 0 - I - 0x0085B0 02:85A0: 07 87     .word ofs_038_6D_8707_07 ; 
- D 0 - I - 0x0085B2 02:85A2: 0D 87     .word ofs_038_6D_870D_08 ; 
- D 0 - I - 0x0085B4 02:85A4: 18 87     .word ofs_038_6D_8718_09 ; 
- D 0 - I - 0x0085B6 02:85A6: 1E 87     .word ofs_038_6D_871E_0A ; 
- D 0 - I - 0x0085B8 02:85A8: F6 A2     .word ofs_038_6D_0x006306_0B ; 
- D 0 - I - 0x0085BA 02:85AA: 37 A3     .word ofs_038_6D_0x006347_0C_delete_object_boss ; 



ofs_038_6D_85AC_01_initialize_object:
C - - J - - 0x0085BC 02:85AC: A9 91     LDA #$91
C - - - - - 0x0085BE 02:85AE: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x0085C1 02:85B1: A9 F0     LDA #con__hp_F0
C - - - - - 0x0085C3 02:85B3: 9D 76 06  STA ram_obj_hp,X
C - - - - - 0x0085C6 02:85B6: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_6D_85B9_02:
C - - J - - 0x0085C9 02:85B9: A5 61     LDA ram_0061_area_config
C - - - - - 0x0085CB 02:85BB: F0 26     BEQ bra_85E3_RTS
C - - - - - 0x0085CD 02:85BD: A9 00     LDA #$00
C - - - - - 0x0085CF 02:85BF: 85 64     STA ram_0064
C - - - - - 0x0085D1 02:85C1: A9 02     LDA #$02
C - - - - - 0x0085D3 02:85C3: 85 61     STA ram_0061_area_config
C - - - - - 0x0085D5 02:85C5: A0 50     LDY #$50
C - - - - - 0x0085D7 02:85C7: 20 30 FA  JSR sub_0x01FA40
C - - - - - 0x0085DA 02:85CA: A6 10     LDX ram_0010
C - - - - - 0x0085DC 02:85CC: A9 08     LDA #$08
C - - - - - 0x0085DE 02:85CE: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x0085E1 02:85D1: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_6D_85D4_03:
C - - J - - 0x0085E4 02:85D4: A5 60     LDA ram_0060_game_handler
C - - - - - 0x0085E6 02:85D6: 05 70     ORA ram_0070_game_handler
C - - - - - 0x0085E8 02:85D8: D0 09     BNE bra_85E3_RTS
C - - - - - 0x0085EA 02:85DA: DE 48 07  DEC ram_0748_obj,X
C - - - - - 0x0085ED 02:85DD: F0 05     BEQ bra_85E4
C - - - - - 0x0085EF 02:85DF: A9 00     LDA #$00
C - - - - - 0x0085F1 02:85E1: 85 6B     STA ram_006B
bra_85E3_RTS:
C - - - - - 0x0085F3 02:85E3: 60        RTS
bra_85E4:
C - - - - - 0x0085F4 02:85E4: A0 AC     LDY #con_F97C_colors + $AC
C - - - - - 0x0085F6 02:85E6: 20 64 F9  JSR sub_0x01F974_write_3_colors_with_condition
C - - - - - 0x0085F9 02:85E9: A6 10     LDX ram_0010
C - - - - - 0x0085FB 02:85EB: A9 30     LDA #con_sound_30
C - - - - - 0x0085FD 02:85ED: 20 DE FD  JSR sub_0x01FDEE_play_sound
C - - - - - 0x008600 02:85F0: A9 01     LDA #$01
C - - - - - 0x008602 02:85F2: 9D 72 07  STA ram_0772_obj,X
C - - - - - 0x008605 02:85F5: 9D 02 07  STA ram_0702_obj,X
C - - - - - 0x008608 02:85F8: A9 00     LDA #$00
C - - - - - 0x00860A 02:85FA: 9D 1E 07  STA ram_obj_flags,X
C - - - - - 0x00860D 02:85FD: A9 40     LDA #$40
C - - - - - 0x00860F 02:85FF: 4C E0 A2  JMP loc_0x0062F0



ofs_038_6D_8602_04:
C - - J - - 0x008612 02:8602: 20 87 88  JSR sub_8887
C - - - - - 0x008615 02:8605: 20 99 88  JSR sub_8899
C - - - - - 0x008618 02:8608: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x00861B 02:860B: D0 D6     BNE bra_85E3_RTS
C - - - - - 0x00861D 02:860D: A9 02     LDA #$02
C - - - - - 0x00861F 02:860F: 85 08     STA ram_0008
bra_8611_loop:
C - - - - - 0x008621 02:8611: A0 6E     LDY #con_obj_id_6E
C - - - - - 0x008623 02:8613: 20 C8 AB  JSR sub_0x006BD8
C - - - - - 0x008626 02:8616: 90 0B     BCC bra_8623
C - - - - - 0x008628 02:8618: A4 11     LDY ram_0011
C - - - - - 0x00862A 02:861A: A5 08     LDA ram_0008
C - - - - - 0x00862C 02:861C: 99 48 07  STA ram_0748_obj,Y
C - - - - - 0x00862F 02:861F: C6 08     DEC ram_0008
C - - - - - 0x008631 02:8621: 10 EE     BPL bra_8611_loop
bra_8623:
C - - - - - 0x008633 02:8623: 20 4C 88  JSR sub_884C
C - - - - - 0x008636 02:8626: A9 10     LDA #$10
C - - - - - 0x008638 02:8628: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x00863B 02:862B: FE 1E 07  INC ram_obj_flags,X
C - - - - - 0x00863E 02:862E: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x008641 02:8631: C9 14     CMP #$14
C - - - - - 0x008643 02:8633: 90 AE     BCC bra_85E3_RTS
C - - - - - 0x008645 02:8635: A9 01     LDA #con_mirroring_H
C - - - - - 0x008647 02:8637: 85 26     STA ram_for_A000
C - - - - - 0x008649 02:8639: A9 C8     LDA #$C8
C - - - - - 0x00864B 02:863B: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x00864E 02:863E: A9 58     LDA #$58
C - - - - - 0x008650 02:8640: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x008653 02:8643: A9 01     LDA #$01
C - - - - - 0x008655 02:8645: 9D 8E 07  STA ram_078E_obj,X
C - - - - - 0x008658 02:8648: A9 00     LDA #$00
C - - - - - 0x00865A 02:864A: 85 FD     STA ram_scroll_X
C - - - - - 0x00865C 02:864C: 85 FC     STA ram_scroll_Y
C - - - - - 0x00865E 02:864E: A9 A8     LDA #$A8
C - - - - - 0x008660 02:8650: 85 FF     STA ram_for_2000
C - - - - - 0x008662 02:8652: 20 7F FC  JSR sub_0x01FC8F_copy_reg_values
C - - - - - 0x008665 02:8655: A9 0D     LDA #con_irq_area_8_boss
C - - - - - 0x008667 02:8657: 85 27     STA ram_irq_handler_hi
C - - - - - 0x008669 02:8659: 20 9F 88  JSR sub_889F
C - - - - - 0x00866C 02:865C: 20 CE A9  JSR sub_0x0069DE
C - - - - - 0x00866F 02:865F: A9 00     LDA #$00
C - - - - - 0x008671 02:8661: 9D 8E 07  STA ram_078E_obj,X
C - - - - - 0x008674 02:8664: A9 E0     LDA #$E0
C - - - - - 0x008676 02:8666: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x008679 02:8669: 20 9C 88  JSR sub_889C
C - - - - - 0x00867C 02:866C: A0 00     LDY #$00
C - - - - - 0x00867E 02:866E: 20 3B 88  JSR sub_883B
C - - - - - 0x008681 02:8671: A9 40     LDA #$40
C - - - - - 0x008683 02:8673: 4C E0 A2  JMP loc_0x0062F0



ofs_038_6D_8676_05:
C - - J - - 0x008686 02:8676: A9 01     LDA #$01
C - - - - - 0x008688 02:8678: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x00868B 02:867B: 20 90 88  JSR sub_8890
C - - - - - 0x00868E 02:867E: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x008691 02:8681: C9 5A     CMP #$5A
C - - - - - 0x008693 02:8683: 90 19     BCC bra_869E
C - - - - - 0x008695 02:8685: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x008698 02:8688: D0 13     BNE bra_869D_RTS
C - - - - - 0x00869A 02:868A: A9 01     LDA #$01
C - - - - - 0x00869C 02:868C: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x00869F 02:868F: A0 6E     LDY #con_obj_id_6E
C - - - - - 0x0086A1 02:8691: 20 C8 AB  JSR sub_0x006BD8
C - - - - - 0x0086A4 02:8694: 90 07     BCC bra_869D_RTS
C - - - - - 0x0086A6 02:8696: A4 11     LDY ram_0011
C - - - - - 0x0086A8 02:8698: A9 01     LDA #$01
C - - - - - 0x0086AA 02:869A: 99 56 07  STA ram_0756_obj,Y
bra_869D_RTS:
C - - - - - 0x0086AD 02:869D: 60        RTS
bra_869E:
C - - - - - 0x0086AE 02:869E: A9 30     LDA #$30
C - - - - - 0x0086B0 02:86A0: 20 99 AB  JSR sub_0x006BA9_set_dynamic_hp_to_boss
C - - - - - 0x0086B3 02:86A3: A9 10     LDA #$10
C - - - - - 0x0086B5 02:86A5: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x0086B8 02:86A8: 20 32 88  JSR sub_8832
C - - - - - 0x0086BB 02:86AB: 20 CA A7  JSR sub_0x0067DA_clear_spd_Y
C - - - - - 0x0086BE 02:86AE: A9 20     LDA #$20
C - - - - - 0x0086C0 02:86B0: 4C E0 A2  JMP loc_0x0062F0



ofs_038_6D_86B3_06:
; something during final boss spawn
C - - J - - 0x0086C3 02:86B3: 20 99 88  JSR sub_8899
C - - - - - 0x0086C6 02:86B6: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x0086C9 02:86B9: D0 E2     BNE bra_869D_RTS
C - - - - - 0x0086CB 02:86BB: A4 1E     LDY ram_index_ppu_buffer
C - - - - - 0x0086CD 02:86BD: A9 06     LDA #con_buf_mode_06
C - - - - - 0x0086CF 02:86BF: 99 00 03  STA ram_nmt_buffer,Y
C - - - - - 0x0086D2 02:86C2: A9 2D     LDA #> $2DD6
C - - - - - 0x0086D4 02:86C4: 99 01 03  STA ram_nmt_buffer + $01,Y  ; ppu hi
C - - - - - 0x0086D7 02:86C7: A9 D6     LDA #< $2DD6
C - - - - - 0x0086D9 02:86C9: 99 02 03  STA ram_nmt_buffer + $02,Y  ; ppu lo
C - - - - - 0x0086DC 02:86CC: A9 02     LDA #$02    ; tiles counter
C - - - - - 0x0086DE 02:86CE: 99 03 03  STA ram_nmt_buffer + $03,Y
C - - - - - 0x0086E1 02:86D1: A9 B9     LDA #$B9    ; tile
C - - - - - 0x0086E3 02:86D3: 99 04 03  STA ram_nmt_buffer + $04,Y
C - - - - - 0x0086E6 02:86D6: A9 BA     LDA #$BA    ; tile
C - - - - - 0x0086E8 02:86D8: 99 05 03  STA ram_nmt_buffer + $05,Y
C - - - - - 0x0086EB 02:86DB: A9 FF     LDA #$FF    ; close buffer
C - - - - - 0x0086ED 02:86DD: 99 06 03  STA ram_nmt_buffer + $06,Y
C - - - - - 0x0086F0 02:86E0: 98        TYA
C - - - - - 0x0086F1 02:86E1: 18        CLC
C - - - - - 0x0086F2 02:86E2: 69 07     ADC #$07
C - - - - - 0x0086F4 02:86E4: 85 1E     STA ram_index_ppu_buffer
C - - - - - 0x0086F6 02:86E6: A0 B0     LDY #con_F97C_colors + $B0
C - - - - - 0x0086F8 02:86E8: 20 64 F9  JSR sub_0x01F974_write_3_colors_with_condition
C - - - - - 0x0086FB 02:86EB: A6 10     LDX ram_0010
C - - - - - 0x0086FD 02:86ED: A9 20     LDA #$20
C - - - - - 0x0086FF 02:86EF: 9D 02 07  STA ram_0702_obj,X
C - - - - - 0x008702 02:86F2: A9 00     LDA #$00
C - - - - - 0x008704 02:86F4: 9D 10 07  STA ram_0710_obj,X
C - - - - - 0x008707 02:86F7: 9D 64 07  STA ram_0764_obj,X
C - - - - - 0x00870A 02:86FA: A9 06     LDA #$06
C - - - - - 0x00870C 02:86FC: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x00870F 02:86FF: A9 30     LDA #$30
C - - - - - 0x008711 02:8701: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x008714 02:8704: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_6D_8707_07:
C - - J - - 0x008717 02:8707: 20 27 87  JSR sub_8727
C - - - - - 0x00871A 02:870A: 4C 99 88  JMP loc_8899



ofs_038_6D_870D_08:
C - - J - - 0x00871D 02:870D: A0 02     LDY #$02
C - - - - - 0x00871F 02:870F: 20 3B 88  JSR sub_883B
C - - - - - 0x008722 02:8712: 20 90 88  JSR sub_8890
C - - - - - 0x008725 02:8715: 4C B8 A3  JMP loc_0x0063C8_boss_starts_exploding



ofs_038_6D_8718_09:
C - - J - - 0x008728 02:8718: 20 90 88  JSR sub_8890
C - - - - - 0x00872B 02:871B: 4C D8 A3  JMP loc_0x0063E8



ofs_038_6D_871E_0A:
C - - J - - 0x00872E 02:871E: 20 8C FC  JSR sub_0x01FC9C_increase_002B
C - - - - - 0x008731 02:8721: 20 32 88  JSR sub_8832
C - - - - - 0x008734 02:8724: 4C A2 A2  JMP loc_0x0062B2



sub_8727:
C - - - - - 0x008737 02:8727: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x00873A 02:872A: D0 20     BNE bra_874C
C - - - - - 0x00873C 02:872C: FE 72 07  INC ram_0772_obj,X
C - - - - - 0x00873F 02:872F: BD 72 07  LDA ram_0772_obj,X
C - - - - - 0x008742 02:8732: C9 0A     CMP #$0A
C - - - - - 0x008744 02:8734: A9 14     LDA #$14
C - - - - - 0x008746 02:8736: 90 07     BCC bra_873F
C - - - - - 0x008748 02:8738: A9 00     LDA #$00
C - - - - - 0x00874A 02:873A: 9D 72 07  STA ram_0772_obj,X
C - - - - - 0x00874D 02:873D: A9 80     LDA #$80
bra_873F:
C - - - - - 0x00874F 02:873F: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x008752 02:8742: A0 37     LDY #$37
C - - - - - 0x008754 02:8744: 84 17     STY ram_0017
C - - - - - 0x008756 02:8746: 20 08 F7  JSR sub_0x01F718_try_to_find_free_object_slot___X_slots
C - - - - - 0x008759 02:8749: 20 CD AB  JSR sub_0x006BDD
bra_874C:
C - - - - - 0x00875C 02:874C: BD F4 06  LDA ram_06F4_obj,X
C - - - - - 0x00875F 02:874F: F0 08     BEQ bra_8759
C - - - - - 0x008761 02:8751: DE F4 06  DEC ram_06F4_obj,X
C - - - - - 0x008764 02:8754: D0 03     BNE bra_8759
C - - - - - 0x008766 02:8756: 20 F7 87  JSR sub_87F7
bra_8759:
C - - - - - 0x008769 02:8759: DE 02 07  DEC ram_0702_obj,X
C - - - - - 0x00876C 02:875C: D0 45     BNE bra_87A3_RTS
C - - - - - 0x00876E 02:875E: BD 64 07  LDA ram_0764_obj,X
C - - - - - 0x008771 02:8761: D0 24     BNE bra_8787
C - - - - - 0x008773 02:8763: FE 10 07  INC ram_0710_obj,X
C - - - - - 0x008776 02:8766: 20 A4 87  JSR sub_87A4
C - - - - - 0x008779 02:8769: BD 10 07  LDA ram_0710_obj,X
C - - - - - 0x00877C 02:876C: C9 02     CMP #$02
C - - - - - 0x00877E 02:876E: A9 08     LDA #$08
C - - - - - 0x008780 02:8770: 90 2E     BCC bra_87A0
C - - - - - 0x008782 02:8772: A9 10     LDA #$10
C - - - - - 0x008784 02:8774: DE 56 07  DEC ram_0756_obj,X
C - - - - - 0x008787 02:8777: D0 1D     BNE bra_8796
C - - - - - 0x008789 02:8779: A9 04     LDA #$04
C - - - - - 0x00878B 02:877B: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x00878E 02:877E: A9 06     LDA #$06
C - - - - - 0x008790 02:8780: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x008793 02:8783: A9 40     LDA #$40
C - - - - - 0x008795 02:8785: D0 0F     BNE bra_8796    ; jmp
bra_8787:
C - - - - - 0x008797 02:8787: DE 10 07  DEC ram_0710_obj,X
C - - - - - 0x00879A 02:878A: 20 A4 87  JSR sub_87A4
C - - - - - 0x00879D 02:878D: A9 08     LDA #$08
C - - - - - 0x00879F 02:878F: BC 10 07  LDY ram_0710_obj,X
C - - - - - 0x0087A2 02:8792: D0 0C     BNE bra_87A0
C - - - - - 0x0087A4 02:8794: A9 10     LDA #$10
bra_8796:
C - - - - - 0x0087A6 02:8796: A8        TAY
C - - - - - 0x0087A7 02:8797: BD 64 07  LDA ram_0764_obj,X
C - - - - - 0x0087AA 02:879A: 49 01     EOR #$01
C - - - - - 0x0087AC 02:879C: 9D 64 07  STA ram_0764_obj,X
C - - - - - 0x0087AF 02:879F: 98        TYA
bra_87A0:
C - - - - - 0x0087B0 02:87A0: 9D 02 07  STA ram_0702_obj,X
bra_87A3_RTS:
C - - - - - 0x0087B3 02:87A3: 60        RTS



sub_87A4:
C - - - - - 0x0087B4 02:87A4: BD 10 07  LDA ram_0710_obj,X
C - - - - - 0x0087B7 02:87A7: C9 03     CMP #$03
C - - - - - 0x0087B9 02:87A9: 90 02     BCC bra_87AD
- - - - - - 0x0087BB 02:87AB: A9 02     LDA #$01 * $02
bra_87AD:
C - - - - - 0x0087BD 02:87AD: 0A        ASL
C - - - - - 0x0087BE 02:87AE: A8        TAY
C - - - - - 0x0087BF 02:87AF: B9 CD 87  LDA tbl_87CD,Y
C - - - - - 0x0087C2 02:87B2: 85 08     STA ram_0008
C - - - - - 0x0087C4 02:87B4: B9 CE 87  LDA tbl_87CD + $01,Y
C - - - - - 0x0087C7 02:87B7: 85 09     STA ram_0009
C - - - - - 0x0087C9 02:87B9: A0 00     LDY #$00
C - - - - - 0x0087CB 02:87BB: A6 1E     LDX ram_index_ppu_buffer
bra_87BD_loop:
C - - - - - 0x0087CD 02:87BD: B1 08     LDA (ram_0008),Y
C - - - - - 0x0087CF 02:87BF: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x0087D2 02:87C2: C8        INY
C - - - - - 0x0087D3 02:87C3: E8        INX
C - - - - - 0x0087D4 02:87C4: C9 FF     CMP #$FF
C - - - - - 0x0087D6 02:87C6: D0 F5     BNE bra_87BD_loop
C - - - - - 0x0087D8 02:87C8: 86 1E     STX ram_index_ppu_buffer
C - - - - - 0x0087DA 02:87CA: A6 10     LDX ram_0010
C - - - - - 0x0087DC 02:87CC: 60        RTS



tbl_87CD:
- D 0 - - - 0x0087DD 02:87CD: D3 87     .word off_87D3_00
- D 0 - - - 0x0087DF 02:87CF: DF 87     .word off_87DF_01
- D 0 - - - 0x0087E1 02:87D1: EB 87     .word off_87EB_02



off_87D3_00:
- D 0 - I - 0x0087E3 02:87D3: 06        .byte con_buf_mode_06   ; 

- D 0 - I - 0x0087E4 02:87D4: 2D 58     .dbyt $2D58 ; ppu address
- D 0 - I - 0x0087E6 02:87D6: 02        .byte $02   ; counter
- D 0 - I - 0x0087E7 02:87D7: 0D        .byte $0D, $0E   ; tiles

- D 0 - I - 0x0087E9 02:87D9: 2D 78     .dbyt $2D78 ; ppu address
- D 0 - I - 0x0087EB 02:87DB: 02        .byte $02   ; counter
- D 0 - I - 0x0087EC 02:87DC: 16        .byte $16, $17   ; tiles

- D 0 - I - 0x0087EE 02:87DE: FF        .byte $FF   ; end token



off_87DF_01:
- D 0 - I - 0x0087EF 02:87DF: 06        .byte con_buf_mode_06   ; 

- D 0 - I - 0x0087F0 02:87E0: 2D 58     .dbyt $2D58 ; ppu address
- D 0 - I - 0x0087F2 02:87E2: 02        .byte $02   ; counter
- D 0 - I - 0x0087F3 02:87E3: C6        .byte $C6, $C7   ; tiles

- D 0 - I - 0x0087F5 02:87E5: 2D 78     .dbyt $2D78 ; ppu address
- D 0 - I - 0x0087F7 02:87E7: 02        .byte $02   ; counter
- D 0 - I - 0x0087F8 02:87E8: C8        .byte $C8, $C9   ; tiles

- D 0 - I - 0x0087FA 02:87EA: FF        .byte $FF   ; end token



off_87EB_02:
- D 0 - I - 0x0087FB 02:87EB: 06        .byte con_buf_mode_06   ; 

- D 0 - I - 0x0087FC 02:87EC: 2D 58     .dbyt $2D58 ; ppu address
- D 0 - I - 0x0087FE 02:87EE: 02        .byte $02   ; counter
- D 0 - I - 0x0087FF 02:87EF: CA        .byte $CA, $CB   ; tiles

- D 0 - I - 0x008801 02:87F1: 2D 78     .dbyt $2D78 ; ppu address
- D 0 - I - 0x008803 02:87F3: 02        .byte $02   ; counter
- D 0 - I - 0x008804 02:87F4: CC        .byte $CC, $CD   ; tiles

- D 0 - I - 0x008806 02:87F6: FF        .byte $FF   ; end token



sub_87F7:
C - - - - - 0x008807 02:87F7: 20 0B AB  JSR sub_0x006B1B_set_target_on_closest_player_X_pos
C - - - - - 0x00880A 02:87FA: A0 05     LDY #$05
C - - - - - 0x00880C 02:87FC: 20 57 A9  JSR sub_0x006967
C - - - - - 0x00880F 02:87FF: A0 07     LDY #$07
bra_8801_loop:
C - - - - - 0x008811 02:8801: 84 08     STY ram_0008
C - - - - - 0x008813 02:8803: A9 2B     LDA #con_obj_id_2B
; bzk optimize, load into Y directly
C - - - - - 0x008815 02:8805: A8        TAY
C - - - - - 0x008816 02:8806: 20 C8 AB  JSR sub_0x006BD8
C - - - - - 0x008819 02:8809: 90 24     BCC bra_882F
C - - - - - 0x00881B 02:880B: A4 11     LDY ram_0011
C - - - - - 0x00881D 02:880D: A5 08     LDA ram_0008
C - - - - - 0x00881F 02:880F: 99 48 07  STA ram_0748_obj,Y
C - - - - - 0x008822 02:8812: BD A0 06  LDA ram_spd_Y_lo_obj,X
C - - - - - 0x008825 02:8815: 99 A0 06  STA ram_spd_Y_lo_obj,Y
C - - - - - 0x008828 02:8818: BD AE 06  LDA ram_spd_Y_hi_obj,X
C - - - - - 0x00882B 02:881B: 99 AE 06  STA ram_spd_Y_hi_obj,Y
C - - - - - 0x00882E 02:881E: BD BC 06  LDA ram_spd_X_lo_obj,X
C - - - - - 0x008831 02:8821: 99 BC 06  STA ram_spd_X_lo_obj,Y
C - - - - - 0x008834 02:8824: BD CA 06  LDA ram_spd_X_hi_obj,X
C - - - - - 0x008837 02:8827: 99 CA 06  STA ram_spd_X_hi_obj,Y
C - - - - - 0x00883A 02:882A: A4 08     LDY ram_0008
C - - - - - 0x00883C 02:882C: 88        DEY
C - - - - - 0x00883D 02:882D: 10 D2     BPL bra_8801_loop
bra_882F:
C - - - - - 0x00883F 02:882F: 4C C7 A7  JMP loc_0x0067D7_clear_spd_XY



sub_8832:
C - - - - - 0x008842 02:8832: A9 00     LDA #$00
C - - - - - 0x008844 02:8834: 85 FD     STA ram_scroll_X
C - - - - - 0x008846 02:8836: 85 FA     STA ram_00FA_scroll_X
C - - - - - 0x008848 02:8838: 85 FC     STA ram_scroll_Y
C - - - - - 0x00884A 02:883A: 60        RTS



sub_883B:
C - - - - - 0x00884B 02:883B: B9 48 88  LDA tbl_8848_spd_Y,Y
C - - - - - 0x00884E 02:883E: 9D A0 06  STA ram_spd_Y_lo_obj,X
C - - - - - 0x008851 02:8841: B9 49 88  LDA tbl_8848_spd_Y + $01,Y
C - - - - - 0x008854 02:8844: 9D AE 06  STA ram_spd_Y_hi_obj,X
C - - - - - 0x008857 02:8847: 60        RTS



tbl_8848_spd_Y:
- D 0 - - - 0x008858 02:8848: C0 FF     .word $FFC0 ; 00 
- D 0 - - - 0x00885A 02:884A: 40 00     .word $0040 ; 01 



sub_884C:
C - - - - - 0x00885C 02:884C: A9 00     LDA #$00
C - - - - - 0x00885E 02:884E: 85 00     STA ram_0000
C - - - - - 0x008860 02:8850: A4 1E     LDY ram_index_ppu_buffer
C - - - - - 0x008862 02:8852: A9 03     LDA #con_buf_mode_03
C - - - - - 0x008864 02:8854: 99 00 03  STA ram_nmt_buffer,Y
C - - - - - 0x008867 02:8857: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x00886A 02:885A: 0A        ASL
C - - - - - 0x00886B 02:885B: 26 00     ROL ram_0000
C - - - - - 0x00886D 02:885D: 0A        ASL
C - - - - - 0x00886E 02:885E: 26 00     ROL ram_0000
C - - - - - 0x008870 02:8860: 0A        ASL
C - - - - - 0x008871 02:8861: 26 00     ROL ram_0000
C - - - - - 0x008873 02:8863: 0A        ASL
C - - - - - 0x008874 02:8864: 26 00     ROL ram_0000
C - - - - - 0x008876 02:8866: 0A        ASL
C - - - - - 0x008877 02:8867: 26 00     ROL ram_0000
C - - - - - 0x008879 02:8869: 18        CLC
C - - - - - 0x00887A 02:886A: 69 9C     ADC #< $209C
C - - - - - 0x00887C 02:886C: 99 02 03  STA ram_nmt_buffer + $02,Y  ; ppu hi
C - - - - - 0x00887F 02:886F: A5 00     LDA ram_0000
C - - - - - 0x008881 02:8871: 69 20     ADC #> $209C
C - - - - - 0x008883 02:8873: 99 01 03  STA ram_nmt_buffer + $01,Y  ; ppu lo
C - - - - - 0x008886 02:8876: A9 04     LDA #$04    ; counter
C - - - - - 0x008888 02:8878: 99 03 03  STA ram_nmt_buffer + $03,Y
C - - - - - 0x00888B 02:887B: A9 00     LDA #$00    ; fill tile
C - - - - - 0x00888D 02:887D: 99 04 03  STA ram_nmt_buffer + $04,Y
C - - - - - 0x008890 02:8880: 98        TYA
C - - - - - 0x008891 02:8881: 18        CLC
C - - - - - 0x008892 02:8882: 69 05     ADC #$05
C - - - - - 0x008894 02:8884: 85 1E     STA ram_index_ppu_buffer
C - - - - - 0x008896 02:8886: 60        RTS



sub_8887:
C - - - - - 0x008897 02:8887: BD 72 07  LDA ram_0772_obj,X
C - - - - - 0x00889A 02:888A: F0 03     BEQ bra_888F_RTS
C - - - - - 0x00889C 02:888C: 4C 6B AB  JMP loc_0x006B7B
bra_888F_RTS:
C - - - - - 0x00889F 02:888F: 60        RTS



sub_8890:
C - - - - - 0x0088A0 02:8890: 20 87 88  JSR sub_8887
C - - - - - 0x0088A3 02:8893: 20 4F A7  JSR sub_0x00675F
C - - - - - 0x0088A6 02:8896: 4C 9C 88  JMP loc_889C



sub_8899:
loc_8899:
C D 0 - - - 0x0088A9 02:8899: 20 5D A7  JSR sub_0x00676D
sub_889C:
loc_889C:
C D 0 - - - 0x0088AC 02:889C: 20 4F AA  JSR sub_0x006A5F
sub_889F:
C - - - - - 0x0088AF 02:889F: A9 F0     LDA #$F0
C - - - - - 0x0088B1 02:88A1: 38        SEC
C - - - - - 0x0088B2 02:88A2: E5 F9     SBC ram_00F9_scroll_Y
C - - - - - 0x0088B4 02:88A4: 18        CLC
C - - - - - 0x0088B5 02:88A5: 69 31     ADC #$31
C - - - - - 0x0088B7 02:88A7: 85 45     STA ram_scanline
C - - - - - 0x0088B9 02:88A9: A9 05     LDA #$05
C - - - - - 0x0088BB 02:88AB: 85 46     STA ram_0046
C - - - - - 0x0088BD 02:88AD: A9 BA     LDA #$BA
C - - - - - 0x0088BF 02:88AF: 38        SEC
C - - - - - 0x0088C0 02:88B0: E5 45     SBC ram_scanline
C - - - - - 0x0088C2 02:88B2: 85 47     STA ram_0047
C - - - - - 0x0088C4 02:88B4: A9 C0     LDA #$C0
C - - - - - 0x0088C6 02:88B6: 85 4A     STA ram_004A
C - - - - - 0x0088C8 02:88B8: A9 2C     LDA #$2C
C - - - - - 0x0088CA 02:88BA: 85 4B     STA ram_004B
C - - - - - 0x0088CC 02:88BC: 60        RTS



_off001_0x0088CD_6E_boss_8_small_rock:
- D 0 - I - 0x0088CD 02:88BD: C1 88     .word ofs_038_6E_88C1_01_initialize_object ; 
- D 0 - I - 0x0088CF 02:88BF: 33 89     .word ofs_038_6E_8933_02 ; 



ofs_038_6E_88C1_01_initialize_object:
C - - J - - 0x0088D1 02:88C1: A9 80     LDA #$80
C - - - - - 0x0088D3 02:88C3: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x0088D6 02:88C6: A9 03     LDA #$03
C - - - - - 0x0088D8 02:88C8: 9D 56 05  STA ram_attr_spr_enemy,X
C - - - - - 0x0088DB 02:88CB: BD 56 07  LDA ram_0756_obj,X
C - - - - - 0x0088DE 02:88CE: D0 1A     BNE bra_88EA
C - - - - - 0x0088E0 02:88D0: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x0088E3 02:88D3: 0A        ASL
C - - - - - 0x0088E4 02:88D4: 0A        ASL
C - - - - - 0x0088E5 02:88D5: 0A        ASL
C - - - - - 0x0088E6 02:88D6: 69 24     ADC #$24
C - - - - - 0x0088E8 02:88D8: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x0088EB 02:88DB: BC 48 07  LDY ram_0748_obj,X
C - - - - - 0x0088EE 02:88DE: B9 21 89  LDA tbl_8921_pos_X,Y
C - - - - - 0x0088F1 02:88E1: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x0088F4 02:88E4: B9 24 89  LDA tbl_8924,Y
C - - - - - 0x0088F7 02:88E7: 4C E0 A2  JMP loc_0x0062F0
bra_88EA:
C - - - - - 0x0088FA 02:88EA: A9 C0     LDA #$C0
C - - - - - 0x0088FC 02:88EC: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x0088FF 02:88EF: A5 23     LDA ram_random
C - - - - - 0x008901 02:88F1: 29 78     AND #$78
C - - - - - 0x008903 02:88F3: 09 80     ORA #$80
C - - - - - 0x008905 02:88F5: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x008908 02:88F8: A5 23     LDA ram_random
C - - - - - 0x00890A 02:88FA: 29 03     AND #$03
C - - - - - 0x00890C 02:88FC: 0A        ASL
C - - - - - 0x00890D 02:88FD: A8        TAY
C - - - - - 0x00890E 02:88FE: B9 27 89  LDA tbl_8927_spd_Y,Y
C - - - - - 0x008911 02:8901: 9D A0 06  STA ram_spd_Y_lo_obj,X
C - - - - - 0x008914 02:8904: B9 28 89  LDA tbl_8927_spd_Y + $01,Y
C - - - - - 0x008917 02:8907: 9D AE 06  STA ram_spd_Y_hi_obj,X
C - - - - - 0x00891A 02:890A: A5 23     LDA ram_random
C - - - - - 0x00891C 02:890C: 30 10     BMI bra_891E
C - - - - - 0x00891E 02:890E: 29 04     AND #$04
C - - - - - 0x008920 02:8910: 4A        LSR
C - - - - - 0x008921 02:8911: A8        TAY
C - - - - - 0x008922 02:8912: B9 2F 89  LDA tbl_892F_spd_X,Y
C - - - - - 0x008925 02:8915: 9D BC 06  STA ram_spd_X_lo_obj,X
C - - - - - 0x008928 02:8918: B9 30 89  LDA tbl_892F_spd_X + $01,Y
C - - - - - 0x00892B 02:891B: 9D CA 06  STA ram_spd_X_hi_obj,X
bra_891E:
C - - - - - 0x00892E 02:891E: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



tbl_8921_pos_X:
- D 0 - - - 0x008931 02:8921: E8        .byte $E8   ; 00 
- D 0 - - - 0x008932 02:8922: F0        .byte $F0   ; 01 
- D 0 - - - 0x008933 02:8923: F8        .byte $F8   ; 02 



tbl_8924:
- D 0 - - - 0x008934 02:8924: 00        .byte $00   ; 00 
- D 0 - - - 0x008935 02:8925: 06        .byte $06   ; 01 
- D 0 - - - 0x008936 02:8926: 03        .byte $03   ; 02 



tbl_8927_spd_Y:
- D 0 - - - 0x008937 02:8927: 00 FF     .word $FF00 ; 00 
- D 0 - - - 0x008939 02:8929: C0 FE     .word $FEC0 ; 01 
- D 0 - - - 0x00893B 02:892B: 40 FF     .word $FF40 ; 02 
- D 0 - - - 0x00893D 02:892D: 80 FF     .word $FF80 ; 03 



tbl_892F_spd_X:
; bzk it may look like there should be 4 more bytes,
; but no reads were logged below it.
; it just works
- D 0 - - - 0x00893F 02:892F: 40 00     .word $0040 ; 00 
- D 0 - - - 0x008941 02:8931: C0 FF     .word $FFC0 ; 04 



ofs_038_6E_8933_02:
C - - J - - 0x008943 02:8933: BD E6 06  LDA ram_06E6_obj,X
C - - - - - 0x008946 02:8936: F0 04     BEQ bra_893C
C - - - - - 0x008948 02:8938: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x00894B 02:893B: 60        RTS
bra_893C:
C - - - - - 0x00894C 02:893C: A0 17     LDY #con_0x006C32_17
C - - - - - 0x00894E 02:893E: 20 FD AB  JSR sub_0x006C0D
C - - - - - 0x008951 02:8941: A9 20     LDA #$20
C - - - - - 0x008953 02:8943: 20 CB AA  JSR sub_0x006ADB_add_to_spd_Y
C - - - - - 0x008956 02:8946: 4C D3 A6  JMP loc_0x0066E3



_off001_0x008959_3B_purple_mutant:
- D 0 - I - 0x008959 02:8949: 55 89     .word ofs_038_3B_8955_01_initialize_object ; 
- D 0 - I - 0x00895B 02:894B: 6A 89     .word ofs_038_3B_896A_02 ; 
- D 0 - I - 0x00895D 02:894D: 83 89     .word ofs_038_3B_8983_03 ; 
- D 0 - I - 0x00895F 02:894F: 9A A2     .word ofs_038_3B_0x0062AA_04 ; 
- D 0 - I - 0x008961 02:8951: FD A2     .word ofs_038_3B_0x00630D_05 ; 
- D 0 - I - 0x008963 02:8953: 3D A3     .word ofs_038_3B_0x00634D_06_delete_object_04 ; 



ofs_038_3B_8955_01_initialize_object:
C - - J - - 0x008965 02:8955: A9 F1     LDA #con__hp_F1
C - - - - - 0x008967 02:8957: 9D 76 06  STA ram_obj_hp,X
C - - - - - 0x00896A 02:895A: A9 00     LDA #$00
C - - - - - 0x00896C 02:895C: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x00896F 02:895F: A9 10     LDA #$10
C - - - - - 0x008971 02:8961: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x008974 02:8964: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x008977 02:8967: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_3B_896A_02:
C - - J - - 0x00897A 02:896A: 20 2A 8A  JSR sub_8A2A
C - - - - - 0x00897D 02:896D: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x008980 02:8970: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x008983 02:8973: C9 B8     CMP #$B8
C - - - - - 0x008985 02:8975: B0 0B     BCS bra_8982_RTS
C - - - - - 0x008987 02:8977: A9 18     LDA #$18
C - - - - - 0x008989 02:8979: 20 95 AB  JSR sub_0x006BA5_set_dynamic_hp_to_enemy
C - - - - - 0x00898C 02:897C: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x00898F 02:897F: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state
bra_8982_RTS:
C - - - - - 0x008992 02:8982: 60        RTS



ofs_038_3B_8983_03:
C - - J - - 0x008993 02:8983: 20 0B AB  JSR sub_0x006B1B_set_target_on_closest_player_X_pos
C - - - - - 0x008996 02:8986: 84 12     STY ram_0012
C - - - - - 0x008998 02:8988: A9 28     LDA #$28
C - - - - - 0x00899A 02:898A: 20 0A A8  JSR sub_0x00681A
C - - - - - 0x00899D 02:898D: D0 0B     BNE bra_899A
C - - - - - 0x00899F 02:898F: A9 14     LDA #$14
C - - - - - 0x0089A1 02:8991: 20 CB AA  JSR sub_0x006ADB_add_to_spd_Y
C - - - - - 0x0089A4 02:8994: 20 D3 A7  JSR sub_0x0067E3_clear_spd_X
C - - - - - 0x0089A7 02:8997: 4C EF 89  JMP loc_89EF
bra_899A:
C - - - - - 0x0089AA 02:899A: 20 3D A8  JSR sub_0x00684D
C - - - - - 0x0089AD 02:899D: A0 00     LDY #$00
C - - - - - 0x0089AF 02:899F: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x0089B2 02:89A2: 38        SEC
C - - - - - 0x0089B3 02:89A3: FD 76 06  SBC ram_obj_hp,X
C - - - - - 0x0089B6 02:89A6: 0A        ASL
C - - - - - 0x0089B7 02:89A7: 0A        ASL
C - - - - - 0x0089B8 02:89A8: 0A        ASL
C - - - - - 0x0089B9 02:89A9: 0A        ASL
C - - - - - 0x0089BA 02:89AA: 0A        ASL
C - - - - - 0x0089BB 02:89AB: 18        CLC
C - - - - - 0x0089BC 02:89AC: 7D 56 07  ADC ram_0756_obj,X
C - - - - - 0x0089BF 02:89AF: 90 02     BCC bra_89B3_not_overflow
C - - - - - 0x0089C1 02:89B1: A9 FF     LDA #$FF
bra_89B3_not_overflow:
C - - - - - 0x0089C3 02:89B3: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x0089C6 02:89B6: BD 76 06  LDA ram_obj_hp,X
C - - - - - 0x0089C9 02:89B9: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x0089CC 02:89BC: BD 56 07  LDA ram_0756_obj,X
C - - - - - 0x0089CF 02:89BF: F0 18     BEQ bra_89D9
C - - - - - 0x0089D1 02:89C1: DE 56 07  DEC ram_0756_obj,X
C - - - - - 0x0089D4 02:89C4: A4 12     LDY ram_0012
C - - - - - 0x0089D6 02:89C6: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x0089D9 02:89C9: D9 4C 05  CMP ram_pos_X_hi_plr,Y
C - - - - - 0x0089DC 02:89CC: A0 02     LDY #$02
C - - - - - 0x0089DE 02:89CE: A9 00     LDA #$00
C - - - - - 0x0089E0 02:89D0: B0 04     BCS bra_89D6
C - - - - - 0x0089E2 02:89D2: A0 04     LDY #$04
C - - - - - 0x0089E4 02:89D4: A9 01     LDA #$01
bra_89D6:
C - - - - - 0x0089E6 02:89D6: 9D 1E 07  STA ram_obj_flags,X
bra_89D9:
C - - - - - 0x0089E9 02:89D9: A9 00     LDA #< $0100
C - - - - - 0x0089EB 02:89DB: 9D A0 06  STA ram_spd_Y_lo_obj,X
C - - - - - 0x0089EE 02:89DE: A9 01     LDA #> $0100
C - - - - - 0x0089F0 02:89E0: 9D AE 06  STA ram_spd_Y_hi_obj,X
C - - - - - 0x0089F3 02:89E3: B9 22 8A  LDA tbl_8A22_spd_X,Y
C - - - - - 0x0089F6 02:89E6: 9D BC 06  STA ram_spd_X_lo_obj,X
C - - - - - 0x0089F9 02:89E9: B9 23 8A  LDA tbl_8A22_spd_X + $01,Y
C - - - - - 0x0089FC 02:89EC: 9D CA 06  STA ram_spd_X_hi_obj,X
loc_89EF:
C D 0 - - - 0x0089FF 02:89EF: 20 2A 8A  JSR sub_8A2A
C - - - - - 0x008A02 02:89F2: 20 D3 A6  JSR sub_0x0066E3
C - - - - - 0x008A05 02:89F5: DE F4 06  DEC ram_06F4_obj,X
C - - - - - 0x008A08 02:89F8: D0 27     BNE bra_8A21_RTS
C - - - - - 0x008A0A 02:89FA: A0 3C     LDY #con_obj_id_3C
C - - - - - 0x008A0C 02:89FC: 20 C8 AB  JSR sub_0x006BD8
C - - - - - 0x008A0F 02:89FF: 90 1B     BCC bra_8A1C
C - - - - - 0x008A11 02:8A01: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x008A14 02:8A04: 29 01     AND #$01
C - - - - - 0x008A16 02:8A06: A8        TAY
C - - - - - 0x008A17 02:8A07: B9 28 8A  LDA tbl_8A28,Y
C - - - - - 0x008A1A 02:8A0A: A4 11     LDY ram_0011
C - - - - - 0x008A1C 02:8A0C: 18        CLC
C - - - - - 0x008A1D 02:8A0D: 7D 3C 05  ADC ram_pos_X_hi_enemy,X
C - - - - - 0x008A20 02:8A10: 99 3C 05  STA ram_pos_X_hi_enemy,Y
C - - - - - 0x008A23 02:8A13: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x008A26 02:8A16: 38        SEC
C - - - - - 0x008A27 02:8A17: E9 10     SBC #$10
C - - - - - 0x008A29 02:8A19: 99 22 05  STA ram_pos_Y_hi_enemy,Y
bra_8A1C:
C - - - - - 0x008A2C 02:8A1C: A9 17     LDA #$17
C - - - - - 0x008A2E 02:8A1E: 9D F4 06  STA ram_06F4_obj,X
bra_8A21_RTS:
C - - - - - 0x008A31 02:8A21: 60        RTS



tbl_8A22_spd_X:
- D 0 - - - 0x008A32 02:8A22: 00 00     .word $0000 ; 00 
- D 0 - - - 0x008A34 02:8A24: E0 FF     .word $FFE0 ; 02 
- D 0 - - - 0x008A36 02:8A26: 20 00     .word $0020 ; 04 



tbl_8A28:
- D 0 - - - 0x008A38 02:8A28: F9        .byte $F9   ; 00 
- D 0 - - - 0x008A39 02:8A29: 07        .byte $07   ; 01 



sub_8A2A:
C - - - - - 0x008A3A 02:8A2A: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x008A3D 02:8A2D: 4A        LSR
C - - - - - 0x008A3E 02:8A2E: A9 03     LDA #$03
C - - - - - 0x008A40 02:8A30: 90 02     BCC bra_8A34
C - - - - - 0x008A42 02:8A32: A9 43     LDA #$43
bra_8A34:
C - - - - - 0x008A44 02:8A34: 9D 56 05  STA ram_attr_spr_enemy,X
C - - - - - 0x008A47 02:8A37: A0 0E     LDY #con_0x006C32_0E
C - - - - - 0x008A49 02:8A39: 4C FD AB  JMP loc_0x006C0D



_off001_0x008A4C_3C_bullet_purple_mutant:
- D 0 - I - 0x008A4C 02:8A3C: 42 8A     .word ofs_038_3C_8A42_01_initialize_object ; 
- D 0 - I - 0x008A4E 02:8A3E: A0 8A     .word ofs_038_3C_8AA0_02 ; 
- - - - - - 0x008A50 02:8A40: 75 A2     .word ofs_038_3C_0x006285_03_delete_object_02 ; 



ofs_038_3C_8A42_01_initialize_object:
C - - J - - 0x008A52 02:8A42: A9 80     LDA #$80
C - - - - - 0x008A54 02:8A44: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x008A57 02:8A47: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x008A5A 02:8A4A: 18        CLC
C - - - - - 0x008A5B 02:8A4B: 65 23     ADC ram_random
C - - - - - 0x008A5D 02:8A4D: 29 07     AND #$07
C - - - - - 0x008A5F 02:8A4F: 0A        ASL
C - - - - - 0x008A60 02:8A50: A8        TAY
C - - - - - 0x008A61 02:8A51: B9 90 8A  LDA tbl_8A90_spd_X,Y
C - - - - - 0x008A64 02:8A54: 9D BC 06  STA ram_spd_X_lo_obj,X
C - - - - - 0x008A67 02:8A57: B9 91 8A  LDA tbl_8A90_spd_X + $01,Y
C - - - - - 0x008A6A 02:8A5A: 9D CA 06  STA ram_spd_X_hi_obj,X
C - - - - - 0x008A6D 02:8A5D: A5 23     LDA ram_random
C - - - - - 0x008A6F 02:8A5F: 29 07     AND #$07
C - - - - - 0x008A71 02:8A61: 0A        ASL
C - - - - - 0x008A72 02:8A62: A8        TAY
C - - - - - 0x008A73 02:8A63: B9 80 8A  LDA tbl_8A80_spd_Y,Y
C - - - - - 0x008A76 02:8A66: 9D A0 06  STA ram_spd_Y_lo_obj,X
C - - - - - 0x008A79 02:8A69: B9 81 8A  LDA tbl_8A80_spd_Y + $01,Y
C - - - - - 0x008A7C 02:8A6C: 9D AE 06  STA ram_spd_Y_hi_obj,X
C - - - - - 0x008A7F 02:8A6F: A9 02     LDA #$02
C - - - - - 0x008A81 02:8A71: 9D 56 05  STA ram_attr_spr_enemy,X
C - - - - - 0x008A84 02:8A74: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x008A87 02:8A77: 4A        LSR
C - - - - - 0x008A88 02:8A78: B0 03     BCS bra_8A7D
C - - - - - 0x008A8A 02:8A7A: 20 DC A7  JSR sub_0x0067EC_inverse_spd_X
bra_8A7D:
C - - - - - 0x008A8D 02:8A7D: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



tbl_8A80_spd_Y:
- D 0 - - - 0x008A90 02:8A80: 00 FF     .word $FF00 ; 00 
- D 0 - - - 0x008A92 02:8A82: 10 FF     .word $FF10 ; 01 
- D 0 - - - 0x008A94 02:8A84: 20 FF     .word $FF20 ; 02 
- D 0 - - - 0x008A96 02:8A86: 30 FF     .word $FF30 ; 03 
- D 0 - - - 0x008A98 02:8A88: 40 FF     .word $FF40 ; 04 
- D 0 - - - 0x008A9A 02:8A8A: 50 FF     .word $FF50 ; 05 
- D 0 - - - 0x008A9C 02:8A8C: 60 FF     .word $FF60 ; 06 
- D 0 - - - 0x008A9E 02:8A8E: 70 FF     .word $FF70 ; 07 



tbl_8A90_spd_X:
- D 0 - - - 0x008AA0 02:8A90: A0 00     .word $00A0 ; 00 
- D 0 - - - 0x008AA2 02:8A92: C0 00     .word $00C0 ; 01 
- D 0 - - - 0x008AA4 02:8A94: E0 00     .word $00E0 ; 02 
- D 0 - - - 0x008AA6 02:8A96: 00 01     .word $0100 ; 03 
- D 0 - - - 0x008AA8 02:8A98: 20 01     .word $0120 ; 04 
- D 0 - - - 0x008AAA 02:8A9A: 40 01     .word $0140 ; 05 
- D 0 - - - 0x008AAC 02:8A9C: 60 01     .word $0160 ; 06 
- D 0 - - - 0x008AAE 02:8A9E: 80 01     .word $0180 ; 07 



ofs_038_3C_8AA0_02:
C - - J - - 0x008AB0 02:8AA0: A0 0F     LDY #con_0x006C32_0F
C - - - - - 0x008AB2 02:8AA2: 20 FD AB  JSR sub_0x006C0D
C - - - - - 0x008AB5 02:8AA5: 20 D3 A6  JSR sub_0x0066E3
C - - - - - 0x008AB8 02:8AA8: BD A0 06  LDA ram_spd_Y_lo_obj,X
C - - - - - 0x008ABB 02:8AAB: 18        CLC
C - - - - - 0x008ABC 02:8AAC: 69 0C     ADC #< $000C
C - - - - - 0x008ABE 02:8AAE: 9D A0 06  STA ram_spd_Y_lo_obj,X
C - - - - - 0x008AC1 02:8AB1: BD AE 06  LDA ram_spd_Y_hi_obj,X
C - - - - - 0x008AC4 02:8AB4: 69 00     ADC #> $000C
C - - - - - 0x008AC6 02:8AB6: 9D AE 06  STA ram_spd_Y_hi_obj,X
C - - - - - 0x008AC9 02:8AB9: A9 00     LDA #$00
C - - - - - 0x008ACB 02:8ABB: 20 0A A8  JSR sub_0x00681A
C - - - - - 0x008ACE 02:8ABE: F0 03     BEQ bra_8AC3_RTS
C - - - - - 0x008AD0 02:8AC0: 4C 75 A2  JMP loc_0x006285_delete_object_02
bra_8AC3_RTS:
C - - - - - 0x008AD3 02:8AC3: 60        RTS



_off001_0x008AD4_3D_spawner_facehuggers:
- D 0 - I - 0x008AD4 02:8AC4: D0 8A     .word ofs_038_3D_8AD0_01_initialize_object ; 
- D 0 - I - 0x008AD6 02:8AC6: F0 8A     .word ofs_038_3D_8AF0_02 ; 
- D 0 - I - 0x008AD8 02:8AC8: 45 8B     .word ofs_038_3D_8B45_03 ; 
- D 0 - I - 0x008ADA 02:8ACA: 78 8B     .word ofs_038_3D_8B78_04 ; 
- D 0 - I - 0x008ADC 02:8ACC: FD A2     .word ofs_038_3D_0x00630D_05 ; 
- D 0 - I - 0x008ADE 02:8ACE: 3D A3     .word ofs_038_3D_0x00634D_06_delete_object_04 ; 



ofs_038_3D_8AD0_01_initialize_object:
C - - J - - 0x008AE0 02:8AD0: A9 10     LDA #$10
C - - - - - 0x008AE2 02:8AD2: 20 95 AB  JSR sub_0x006BA5_set_dynamic_hp_to_enemy
C - - - - - 0x008AE5 02:8AD5: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x008AE8 02:8AD8: 38        SEC
C - - - - - 0x008AE9 02:8AD9: E9 08     SBC #$08
C - - - - - 0x008AEB 02:8ADB: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x008AEE 02:8ADE: A9 01     LDA #$01
C - - - - - 0x008AF0 02:8AE0: 9D 10 07  STA ram_0710_obj,X
C - - - - - 0x008AF3 02:8AE3: A9 03     LDA #$03
C - - - - - 0x008AF5 02:8AE5: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x008AF8 02:8AE8: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x008AFB 02:8AEB: A9 01     LDA #$01
C - - - - - 0x008AFD 02:8AED: 4C E0 A2  JMP loc_0x0062F0



ofs_038_3D_8AF0_02:
C - - J - - 0x008B00 02:8AF0: A9 01     LDA #$01
C - - - - - 0x008B02 02:8AF2: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x008B05 02:8AF5: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x008B08 02:8AF8: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x008B0B 02:8AFB: D0 2E     BNE bra_8B2B_RTS
C - - - - - 0x008B0D 02:8AFD: 20 82 8B  JSR sub_8B82
C - - - - - 0x008B10 02:8B00: B0 26     BCS bra_8B28
C - - - - - 0x008B12 02:8B02: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x008B15 02:8B05: D0 16     BNE bra_8B1D
C - - - - - 0x008B17 02:8B07: BD 10 07  LDA ram_0710_obj,X
C - - - - - 0x008B1A 02:8B0A: C9 01     CMP #$01
C - - - - - 0x008B1C 02:8B0C: 90 0A     BCC bra_8B18
bra_8B0E:
C - - - - - 0x008B1E 02:8B0E: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x008B21 02:8B11: 49 01     EOR #$01
C - - - - - 0x008B23 02:8B13: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x008B26 02:8B16: B0 14     BCS bra_8B2C
bra_8B18:
C - - - - - 0x008B28 02:8B18: FE 10 07  INC ram_0710_obj,X
C - - - - - 0x008B2B 02:8B1B: D0 09     BNE bra_8B26    ; jmp?
bra_8B1D:
C - - - - - 0x008B2D 02:8B1D: BD 10 07  LDA ram_0710_obj,X
C - - - - - 0x008B30 02:8B20: 18        CLC
C - - - - - 0x008B31 02:8B21: F0 EB     BEQ bra_8B0E
bra_8B23:
C - - - - - 0x008B33 02:8B23: DE 10 07  DEC ram_0710_obj,X
bra_8B26:
C - - - - - 0x008B36 02:8B26: A9 08     LDA #$08
bra_8B28:
C - - - - - 0x008B38 02:8B28: 9D E6 06  STA ram_06E6_obj,X
bra_8B2B_RTS:
C - - - - - 0x008B3B 02:8B2B: 60        RTS
bra_8B2C:
C - - - - - 0x008B3C 02:8B2C: DE 56 07  DEC ram_0756_obj,X
C - - - - - 0x008B3F 02:8B2F: D0 F2     BNE bra_8B23
C - - - - - 0x008B41 02:8B31: A9 06     LDA #$06
C - - - - - 0x008B43 02:8B33: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x008B46 02:8B36: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x008B49 02:8B39: C9 C0     CMP #$C0
C - - - - - 0x008B4B 02:8B3B: B0 E6     BCS bra_8B23
C - - - - - 0x008B4D 02:8B3D: FE 10 07  INC ram_0710_obj,X
C - - - - - 0x008B50 02:8B40: A9 10     LDA #$10
C - - - - - 0x008B52 02:8B42: 4C E0 A2  JMP loc_0x0062F0



ofs_038_3D_8B45_03:
C - - J - - 0x008B55 02:8B45: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x008B58 02:8B48: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x008B5B 02:8B4B: D0 DE     BNE bra_8B2B_RTS
C - - - - - 0x008B5D 02:8B4D: 20 82 8B  JSR sub_8B82
C - - - - - 0x008B60 02:8B50: B0 D6     BCS bra_8B28
C - - - - - 0x008B62 02:8B52: BD 10 07  LDA ram_0710_obj,X
C - - - - - 0x008B65 02:8B55: C9 02     CMP #$02
C - - - - - 0x008B67 02:8B57: 90 BF     BCC bra_8B18
C - - - - - 0x008B69 02:8B59: A0 3E     LDY #con_obj_id_3E
C - - - - - 0x008B6B 02:8B5B: 20 C8 AB  JSR sub_0x006BD8
C - - - - - 0x008B6E 02:8B5E: 90 0B     BCC bra_8B6B
C - - - - - 0x008B70 02:8B60: A4 11     LDY ram_0011
C - - - - - 0x008B72 02:8B62: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x008B75 02:8B65: 38        SEC
C - - - - - 0x008B76 02:8B66: E9 08     SBC #$08
C - - - - - 0x008B78 02:8B68: 99 22 05  STA ram_pos_Y_hi_enemy,Y
bra_8B6B:
C - - - - - 0x008B7B 02:8B6B: DE 10 07  DEC ram_0710_obj,X
C - - - - - 0x008B7E 02:8B6E: A9 20     LDA #$20
C - - - - - 0x008B80 02:8B70: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x008B83 02:8B73: A9 02     LDA #$02
C - - - - - 0x008B85 02:8B75: 4C 83 A2  JMP loc_0x006293_set_obj_state



ofs_038_3D_8B78_04:
C - - J - - 0x008B88 02:8B78: A0 03     LDY #$03
C - - - - - 0x008B8A 02:8B7A: 20 85 8B  JSR sub_8B85
C - - - - - 0x008B8D 02:8B7D: B0 AC     BCS bra_8B2B_RTS
C - - - - - 0x008B8F 02:8B7F: 4C 9A A2  JMP loc_0x0062AA



sub_8B82:
C - - - - - 0x008B92 02:8B82: BC 10 07  LDY ram_0710_obj,X
sub_8B85:
C - - - - - 0x008B95 02:8B85: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x008B98 02:8B88: C9 20     CMP #$20
C - - - - - 0x008B9A 02:8B8A: 90 0D     BCC bra_8B99
C - - - - - 0x008B9C 02:8B8C: C9 D0     CMP #$D0
C - - - - - 0x008B9E 02:8B8E: B0 09     BCS bra_8B99
C - - - - - 0x008BA0 02:8B90: B9 9C 8B  LDA tbl_8B9C,Y
C - - - - - 0x008BA3 02:8B93: 20 9A A8  JSR sub_0x0068AA
bra_8B96:
C - - - - - 0x008BA6 02:8B96: A9 01     LDA #$01
C - - - - - 0x008BA8 02:8B98: 60        RTS
bra_8B99:
C - - - - - 0x008BA9 02:8B99: 38        SEC
C - - - - - 0x008BAA 02:8B9A: B0 FA     BCS bra_8B96    ; jmp



tbl_8B9C:
- D 0 - - - 0x008BAC 02:8B9C: 6E        .byte $6E   ; 00 
- D 0 - - - 0x008BAD 02:8B9D: 6F        .byte $6F   ; 01 
- D 0 - - - 0x008BAE 02:8B9E: 70        .byte $70   ; 02 
- D 0 - - - 0x008BAF 02:8B9F: 37        .byte $37   ; 03 



_off001_0x008BB0_3E_facehugger:
- D 0 - I - 0x008BB0 02:8BA0: AA 8B     .word ofs_038_3E_8BAA_01_initialize_object ; 
- D 0 - I - 0x008BB2 02:8BA2: EA 8B     .word ofs_038_3E_8BEA_02 ; 
- D 0 - I - 0x008BB4 02:8BA4: 9A A2     .word ofs_038_3E_0x0062AA_03 ; 
- D 0 - I - 0x008BB6 02:8BA6: FD A2     .word ofs_038_3E_0x00630D_04 ; 
- D 0 - I - 0x008BB8 02:8BA8: 3D A3     .word ofs_038_3E_0x00634D_05_delete_object_04 ; 



ofs_038_3E_8BAA_01_initialize_object:
C - - J - - 0x008BBA 02:8BAA: A9 01     LDA #$01
C - - - - - 0x008BBC 02:8BAC: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x008BBF 02:8BAF: A5 23     LDA ram_random
C - - - - - 0x008BC1 02:8BB1: 29 03     AND #$03
C - - - - - 0x008BC3 02:8BB3: 0A        ASL
C - - - - - 0x008BC4 02:8BB4: 0A        ASL
C - - - - - 0x008BC5 02:8BB5: A8        TAY
C - - - - - 0x008BC6 02:8BB6: 20 BC 8B  JSR sub_8BBC
C - - - - - 0x008BC9 02:8BB9: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



sub_8BBC:
C - - - - - 0x008BCC 02:8BBC: B9 75 8C  LDA tbl_8C75_speed,Y
C - - - - - 0x008BCF 02:8BBF: 9D A0 06  STA ram_spd_Y_lo_obj,X
C - - - - - 0x008BD2 02:8BC2: B9 76 8C  LDA tbl_8C75_speed + $01,Y
C - - - - - 0x008BD5 02:8BC5: 9D AE 06  STA ram_spd_Y_hi_obj,X
C - - - - - 0x008BD8 02:8BC8: B9 77 8C  LDA tbl_8C75_speed + $02,Y
C - - - - - 0x008BDB 02:8BCB: 9D BC 06  STA ram_spd_X_lo_obj,X
C - - - - - 0x008BDE 02:8BCE: B9 78 8C  LDA tbl_8C75_speed + $03,Y
C - - - - - 0x008BE1 02:8BD1: 9D CA 06  STA ram_spd_X_hi_obj,X
C - - - - - 0x008BE4 02:8BD4: 20 0B AB  JSR sub_0x006B1B_set_target_on_closest_player_X_pos
C - - - - - 0x008BE7 02:8BD7: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x008BEA 02:8BDA: D9 4C 05  CMP ram_pos_X_hi_plr,Y
C - - - - - 0x008BED 02:8BDD: A9 43     LDA #$43
C - - - - - 0x008BEF 02:8BDF: 90 05     BCC bra_8BE6
C - - - - - 0x008BF1 02:8BE1: 20 DC A7  JSR sub_0x0067EC_inverse_spd_X
C - - - - - 0x008BF4 02:8BE4: A9 03     LDA #$03
bra_8BE6:
C - - - - - 0x008BF6 02:8BE6: 9D 56 05  STA ram_attr_spr_enemy,X
C - - - - - 0x008BF9 02:8BE9: 60        RTS



ofs_038_3E_8BEA_02:
C - - J - - 0x008BFA 02:8BEA: 20 F0 8B  JSR sub_8BF0
C - - - - - 0x008BFD 02:8BED: 4C 07 A7  JMP loc_0x006717



sub_8BF0:
C - - - - - 0x008C00 02:8BF0: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x008C03 02:8BF3: F0 41     BEQ bra_8C36
C - - - - - 0x008C05 02:8BF5: A9 9E     LDA #$9E
C - - - - - 0x008C07 02:8BF7: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x008C0A 02:8BFA: A9 18     LDA #$18
C - - - - - 0x008C0C 02:8BFC: 20 CB AA  JSR sub_0x006ADB_add_to_spd_Y
C - - - - - 0x008C0F 02:8BFF: A9 10     LDA #$10
C - - - - - 0x008C11 02:8C01: BC CA 06  LDY ram_spd_X_hi_obj,X
C - - - - - 0x008C14 02:8C04: 10 02     BPL bra_8C08_moving_right
; if moving left
C - - - - - 0x008C16 02:8C06: A9 F0     LDA #$F0
bra_8C08_moving_right:
C - - - - - 0x008C18 02:8C08: 20 22 A8  JSR sub_0x006832
C - - - - - 0x008C1B 02:8C0B: F0 03     BEQ bra_8C10
C - - - - - 0x008C1D 02:8C0D: 20 D3 A7  JSR sub_0x0067E3_clear_spd_X
bra_8C10:
C - - - - - 0x008C20 02:8C10: BD 8E 07  LDA ram_078E_obj,X
C - - - - - 0x008C23 02:8C13: D0 20     BNE bra_8C35_RTS
C - - - - - 0x008C25 02:8C15: A9 0E     LDA #$0E
C - - - - - 0x008C27 02:8C17: BC AE 06  LDY ram_spd_Y_hi_obj,X
C - - - - - 0x008C2A 02:8C1A: 10 02     BPL bra_8C1E_moving_right
; if moving left
C - - - - - 0x008C2C 02:8C1C: A9 F2     LDA #$F2
bra_8C1E_moving_right:
C - - - - - 0x008C2E 02:8C1E: 20 0A A8  JSR sub_0x00681A
C - - - - - 0x008C31 02:8C21: F0 12     BEQ bra_8C35_RTS
C - - - - - 0x008C33 02:8C23: BC AE 06  LDY ram_spd_Y_hi_obj,X
C - - - - - 0x008C36 02:8C26: 10 03     BPL bra_8C2B_moving_down
; if moving up
C - - - - - 0x008C38 02:8C28: 4C CA A7  JMP loc_0x0067DA_clear_spd_Y
bra_8C2B_moving_down:
C - - - - - 0x008C3B 02:8C2B: A0 10     LDY #$04 * $04
C - - - - - 0x008C3D 02:8C2D: 20 BC 8B  JSR sub_8BBC
C - - - - - 0x008C40 02:8C30: A9 00     LDA #$00
C - - - - - 0x008C42 02:8C32: 9D 48 07  STA ram_0748_obj,X
bra_8C35_RTS:
C - - - - - 0x008C45 02:8C35: 60        RTS
bra_8C36:
C - - - - - 0x008C46 02:8C36: A0 10     LDY #con_0x006C32_10
C - - - - - 0x008C48 02:8C38: 20 FD AB  JSR sub_0x006C0D
C - - - - - 0x008C4B 02:8C3B: A9 10     LDA #$10
C - - - - - 0x008C4D 02:8C3D: BC CA 06  LDY ram_spd_X_hi_obj,X
C - - - - - 0x008C50 02:8C40: 10 02     BPL bra_8C44_moving_right
; if moving left
C - - - - - 0x008C52 02:8C42: A9 F0     LDA #$F0
bra_8C44_moving_right:
C - - - - - 0x008C54 02:8C44: 20 22 A8  JSR sub_0x006832
C - - - - - 0x008C57 02:8C47: F0 03     BEQ bra_8C4C
- - - - - - 0x008C59 02:8C49: 20 DC A7  JSR sub_0x0067EC_inverse_spd_X
bra_8C4C:
C - - - - - 0x008C5C 02:8C4C: A9 0E     LDA #$0E
C - - - - - 0x008C5E 02:8C4E: 20 00 A8  JSR sub_0x006810
C - - - - - 0x008C61 02:8C51: F0 03     BEQ bra_8C56
C - - - - - 0x008C63 02:8C53: 4C 3D A8  JMP loc_0x00684D
bra_8C56:
C - - - - - 0x008C66 02:8C56: A9 01     LDA #$01
C - - - - - 0x008C68 02:8C58: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x008C6B 02:8C5B: 20 CA A7  JSR sub_0x0067DA_clear_spd_Y
C - - - - - 0x008C6E 02:8C5E: A0 00     LDY #$00
C - - - - - 0x008C70 02:8C60: BD 56 05  LDA ram_attr_spr_enemy,X
C - - - - - 0x008C73 02:8C63: 0A        ASL
C - - - - - 0x008C74 02:8C64: 10 02     BPL bra_8C68
C - - - - - 0x008C76 02:8C66: A0 02     LDY #$02
bra_8C68:
C - - - - - 0x008C78 02:8C68: B9 89 8C  LDA tbl_8C89_spd_X,Y
C - - - - - 0x008C7B 02:8C6B: 9D BC 06  STA ram_spd_X_lo_obj,X
C - - - - - 0x008C7E 02:8C6E: B9 8A 8C  LDA tbl_8C89_spd_X + $01,Y
C - - - - - 0x008C81 02:8C71: 9D CA 06  STA ram_spd_X_hi_obj,X
C - - - - - 0x008C84 02:8C74: 60        RTS



tbl_8C75_speed:
; 00 
- D 0 - - - 0x008C85 02:8C75: 00 FE     .word $FE00 ; Y
- D 0 - - - 0x008C87 02:8C77: 80 00     .word $0080 ; X
; 01 
- D 0 - - - 0x008C89 02:8C79: 00 FE     .word $FE00 ; Y
- D 0 - - - 0x008C8B 02:8C7B: 00 01     .word $0100 ; X
; 02 
- D 0 - - - 0x008C8D 02:8C7D: 00 FE     .word $FE00 ; Y
- D 0 - - - 0x008C8F 02:8C7F: 80 01     .word $0180 ; X
; 03 
- D 0 - - - 0x008C91 02:8C81: 00 FE     .word $FE00 ; Y
- D 0 - - - 0x008C93 02:8C83: 00 02     .word $0200 ; X
; 04 
- D 0 - - - 0x008C95 02:8C85: 00 00     .word $0000 ; Y
- D 0 - - - 0x008C97 02:8C87: 00 02     .word $0200 ; X



tbl_8C89_spd_X:
- D 0 - - - 0x008C99 02:8C89: 80 FF     .word $FF80 ; 00 
- D 0 - - - 0x008C9B 02:8C8B: 80 00     .word $0080 ; 02 



_off001_0x008C9D_52_boss_7_chest:
- D 0 - I - 0x008C9D 02:8C8D: 9B 8C     .word ofs_038_52_8C9B_01_initialize_object ; 
- D 0 - I - 0x008C9F 02:8C8F: C6 8C     .word ofs_038_52_8CC6_02 ; 
- D 0 - I - 0x008CA1 02:8C91: FB 8C     .word ofs_038_52_8CFB_03 ; 
- D 0 - I - 0x008CA3 02:8C93: 1A 8D     .word ofs_038_52_8D1A_04 ; 
- D 0 - I - 0x008CA5 02:8C95: 3A 8D     .word ofs_038_52_8D3A_05 ; 
- D 0 - I - 0x008CA7 02:8C97: FD A2     .word ofs_038_52_0x00630D_06 ; 
- D 0 - I - 0x008CA9 02:8C99: 44 8D     .word ofs_038_52_8D44_07 ; 



ofs_038_52_8C9B_01_initialize_object:
C - - J - - 0x008CAB 02:8C9B: A9 01     LDA #$01
C - - - - - 0x008CAD 02:8C9D: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x008CB0 02:8CA0: A9 01     LDA #$01
C - - - - - 0x008CB2 02:8CA2: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x008CB5 02:8CA5: A9 18     LDA #$18
C - - - - - 0x008CB7 02:8CA7: 20 95 AB  JSR sub_0x006BA5_set_dynamic_hp_to_enemy
C - - - - - 0x008CBA 02:8CAA: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x008CBD 02:8CAD: A9 F0     LDA #con__hp_F0
C - - - - - 0x008CBF 02:8CAF: 9D 76 06  STA ram_obj_hp,X
C - - - - - 0x008CC2 02:8CB2: A9 70     LDA #$70
C - - - - - 0x008CC4 02:8CB4: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x008CC7 02:8CB7: A9 80     LDA #$80
C - - - - - 0x008CC9 02:8CB9: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x008CCC 02:8CBC: A9 01     LDA #$01
C - - - - - 0x008CCE 02:8CBE: 9D 10 07  STA ram_0710_obj,X
C - - - - - 0x008CD1 02:8CC1: A9 40     LDA #$40
C - - - - - 0x008CD3 02:8CC3: 4C E0 A2  JMP loc_0x0062F0



ofs_038_52_8CC6_02:
C - - J - - 0x008CD6 02:8CC6: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x008CD9 02:8CC9: D0 29     BNE bra_8CF4_RTS
C - - - - - 0x008CDB 02:8CCB: 20 4F 8D  JSR sub_8D4F
C - - - - - 0x008CDE 02:8CCE: A9 01     LDA #$01
C - - - - - 0x008CE0 02:8CD0: B0 1F     BCS bra_8CF1
C - - - - - 0x008CE2 02:8CD2: BD 10 07  LDA ram_0710_obj,X
C - - - - - 0x008CE5 02:8CD5: C9 02     CMP #$02
C - - - - - 0x008CE7 02:8CD7: A9 08     LDA #$08
C - - - - - 0x008CE9 02:8CD9: 90 13     BCC bra_8CEE
C - - - - - 0x008CEB 02:8CDB: DE 10 07  DEC ram_0710_obj,X
C - - - - - 0x008CEE 02:8CDE: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x008CF1 02:8CE1: 9D 76 06  STA ram_obj_hp,X
C - - - - - 0x008CF4 02:8CE4: A9 10     LDA #$10
C - - - - - 0x008CF6 02:8CE6: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x008CF9 02:8CE9: A9 70     LDA #$70
C - - - - - 0x008CFB 02:8CEB: 4C E0 A2  JMP loc_0x0062F0
bra_8CEE:
C - - - - - 0x008CFE 02:8CEE: FE 10 07  INC ram_0710_obj,X
bra_8CF1:
loc_8CF1:
C D 0 - - - 0x008D01 02:8CF1: 9D E6 06  STA ram_06E6_obj,X
bra_8CF4_RTS:
C - - - - - 0x008D04 02:8CF4: 60        RTS



bra_8CF5:
C - - - - - 0x008D05 02:8CF5: DE 10 07  DEC ram_0710_obj,X
C - - - - - 0x008D08 02:8CF8: 4C F1 8C  JMP loc_8CF1



ofs_038_52_8CFB_03:
C - - J - - 0x008D0B 02:8CFB: DE F4 06  DEC ram_06F4_obj,X
C - - - - - 0x008D0E 02:8CFE: D0 05     BNE bra_8D05
C - - - - - 0x008D10 02:8D00: A0 54     LDY #con_obj_id_54
C - - - - - 0x008D12 02:8D02: 20 C8 AB  JSR sub_0x006BD8
bra_8D05:
C - - - - - 0x008D15 02:8D05: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x008D18 02:8D08: D0 EA     BNE bra_8CF4_RTS
C - - - - - 0x008D1A 02:8D0A: BD 76 06  LDA ram_obj_hp,X
C - - - - - 0x008D1D 02:8D0D: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x008D20 02:8D10: A9 F0     LDA #con__hp_F0
C - - - - - 0x008D22 02:8D12: 9D 76 06  STA ram_obj_hp,X
C - - - - - 0x008D25 02:8D15: A9 01     LDA #$01
C - - - - - 0x008D27 02:8D17: 4C E0 A2  JMP loc_0x0062F0



ofs_038_52_8D1A_04:
C - - J - - 0x008D2A 02:8D1A: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x008D2D 02:8D1D: D0 D5     BNE bra_8CF4_RTS
C - - - - - 0x008D2F 02:8D1F: 20 4F 8D  JSR sub_8D4F
C - - - - - 0x008D32 02:8D22: A9 01     LDA #$01
C - - - - - 0x008D34 02:8D24: B0 CB     BCS bra_8CF1
C - - - - - 0x008D36 02:8D26: A9 08     LDA #$08
C - - - - - 0x008D38 02:8D28: BC 10 07  LDY ram_0710_obj,X
C - - - - - 0x008D3B 02:8D2B: D0 C8     BNE bra_8CF5
C - - - - - 0x008D3D 02:8D2D: FE 10 07  INC ram_0710_obj,X
C - - - - - 0x008D40 02:8D30: A9 50     LDA #$50
C - - - - - 0x008D42 02:8D32: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x008D45 02:8D35: A9 02     LDA #$02
C - - - - - 0x008D47 02:8D37: 4C 83 A2  JMP loc_0x006293_set_obj_state



ofs_038_52_8D3A_05:
C - - J - - 0x008D4A 02:8D3A: A9 03     LDA #$03
C - - - - - 0x008D4C 02:8D3C: 20 52 8D  JSR sub_8D52
C - - - - - 0x008D4F 02:8D3F: B0 B3     BCS bra_8CF4_RTS
C - - - - - 0x008D51 02:8D41: 4C 9A A2  JMP loc_0x0062AA



ofs_038_52_8D44_07:
C - - J - - 0x008D54 02:8D44: BC 80 07  LDY ram_0780_obj,X
C - - - - - 0x008D57 02:8D47: A9 01     LDA #$01
C - - - - - 0x008D59 02:8D49: 99 48 07  STA ram_0748_obj,Y
C - - - - - 0x008D5C 02:8D4C: 4C 3D A3  JMP loc_0x00634D_delete_object_04



sub_8D4F:
C - - - - - 0x008D5F 02:8D4F: BD 10 07  LDA ram_0710_obj,X
sub_8D52:
C - - - - - 0x008D62 02:8D52: A0 00     LDY #$00
loc_8D54:
C D 0 - - - 0x008D64 02:8D54: 84 0E     STY ram_000E
; A = 00-07
C - - - - - 0x008D66 02:8D56: 0A        ASL
C - - - - - 0x008D67 02:8D57: 0A        ASL
C - - - - - 0x008D68 02:8D58: 85 0D     STA ram_000D
; bzk optimize, check ram_index_ppu_buffer first
C - - - - - 0x008D6A 02:8D5A: A5 1E     LDA ram_index_ppu_buffer
C - - - - - 0x008D6C 02:8D5C: D0 33     BNE bra_8D91
C - - - - - 0x008D6E 02:8D5E: A0 03     LDY #$03
bra_8D60_loop:
C - - - - - 0x008D70 02:8D60: 84 0F     STY ram_000F
C - - - - - 0x008D72 02:8D62: 98        TYA
C - - - - - 0x008D73 02:8D63: 18        CLC
C - - - - - 0x008D74 02:8D64: 65 0D     ADC ram_000D
C - - - - - 0x008D76 02:8D66: A8        TAY
C - - - - - 0x008D77 02:8D67: B9 94 8D  LDA tbl_8D94,Y
C - - - - - 0x008D7A 02:8D6A: 85 08     STA ram_0008
C - - - - - 0x008D7C 02:8D6C: A5 0F     LDA ram_000F
C - - - - - 0x008D7E 02:8D6E: 18        CLC
C - - - - - 0x008D7F 02:8D6F: 65 0E     ADC ram_000E    ; 00/04
C - - - - - 0x008D81 02:8D71: A8        TAY
C - - - - - 0x008D82 02:8D72: B9 B4 8D  LDA tbl_8DB4,Y
C - - - - - 0x008D85 02:8D75: 85 0C     STA ram_000C
C - - - - - 0x008D87 02:8D77: B9 BC 8D  LDA tbl_8DBC,Y
C - - - - - 0x008D8A 02:8D7A: A4 0C     LDY ram_000C
C - - - - - 0x008D8C 02:8D7C: 20 A4 FE  JSR sub_0x01FEB4
C - - - - - 0x008D8F 02:8D7F: 8A        TXA
C - - - - - 0x008D90 02:8D80: 38        SEC
C - - - - - 0x008D91 02:8D81: E9 04     SBC #$04
C - - - - - 0x008D93 02:8D83: 85 1E     STA ram_index_ppu_buffer
C - - - - - 0x008D95 02:8D85: AA        TAX
C - - - - - 0x008D96 02:8D86: A9 FF     LDA #$FF
C - - - - - 0x008D98 02:8D88: 9D FF 02  STA ram_nmt_buffer - $01,X
C - - - - - 0x008D9B 02:8D8B: A4 0F     LDY ram_000F
C - - - - - 0x008D9D 02:8D8D: 88        DEY
C - - - - - 0x008D9E 02:8D8E: 10 D0     BPL bra_8D60_loop
C - - - - - 0x008DA0 02:8D90: 18        CLC
bra_8D91:
C - - - - - 0x008DA1 02:8D91: A6 10     LDX ram_0010
C - - - - - 0x008DA3 02:8D93: 60        RTS



tbl_8D94:
- D 0 - - - 0x008DA4 02:8D94: 7F        .byte $7F, $80, $86, $87   ; 00 
- D 0 - - - 0x008DA8 02:8D98: A1        .byte $A1, $A2, $A3, $A4   ; 01 
- D 0 - - - 0x008DAC 02:8D9C: A5        .byte $A5, $A6, $A7, $A8   ; 02 
- D 0 - - - 0x008DB0 02:8DA0: A5        .byte $A5, $A6, $A7, $A8   ; 03 
- D 0 - - - 0x008DB4 02:8DA4: 73        .byte $73, $74, $79, $7A   ; 04 
- D 0 - - - 0x008DB8 02:8DA8: A9        .byte $A9, $AA, $AB, $AC   ; 05 
- D 0 - - - 0x008DBC 02:8DAC: AD        .byte $AD, $AE, $AF, $B0   ; 06 
- D 0 - - - 0x008DC0 02:8DB0: AD        .byte $AD, $AE, $AF, $B0   ; 07 



tbl_8DB4:
- D 0 - - - 0x008DC4 02:8DB4: 60        .byte $60   ; 00 
- D 0 - - - 0x008DC5 02:8DB5: 60        .byte $60   ; 01 
- D 0 - - - 0x008DC6 02:8DB6: 80        .byte $80   ; 02 
- D 0 - - - 0x008DC7 02:8DB7: 80        .byte $80   ; 03 
- D 0 - - - 0x008DC8 02:8DB8: 20        .byte $20   ; 04 
- D 0 - - - 0x008DC9 02:8DB9: 20        .byte $20   ; 05 
- D 0 - - - 0x008DCA 02:8DBA: 40        .byte $40   ; 06 
- D 0 - - - 0x008DCB 02:8DBB: 40        .byte $40   ; 07 



tbl_8DBC:
- D 0 - - - 0x008DCC 02:8DBC: 70        .byte $70   ; 00 
- D 0 - - - 0x008DCD 02:8DBD: 90        .byte $90   ; 01 
- D 0 - - - 0x008DCE 02:8DBE: 70        .byte $70   ; 02 
- D 0 - - - 0x008DCF 02:8DBF: 90        .byte $90   ; 03 
- D 0 - - - 0x008DD0 02:8DC0: 70        .byte $70   ; 04 
- D 0 - - - 0x008DD1 02:8DC1: 90        .byte $90   ; 05 
- D 0 - - - 0x008DD2 02:8DC2: 70        .byte $70   ; 06 
- D 0 - - - 0x008DD3 02:8DC3: 90        .byte $90   ; 07 



_off001_0x008DD4_53_boss_7_ear:
- D 0 - I - 0x008DD4 02:8DC4: CE 8D     .word ofs_038_53_8DCE_01_initialize_object ; 
- D 0 - I - 0x008DD6 02:8DC6: ED 8D     .word ofs_038_53_8DED_02 ; 
- D 0 - I - 0x008DD8 02:8DC8: 02 8E     .word ofs_038_53_8E02_03 ; 
- D 0 - I - 0x008DDA 02:8DCA: FD A2     .word ofs_038_53_0x00630D_04 ; 
- D 0 - I - 0x008DDC 02:8DCC: 05 8E     .word ofs_038_53_8E05_05 ; 



ofs_038_53_8DCE_01_initialize_object:
C - - J - - 0x008DDE 02:8DCE: A9 01     LDA #$01
C - - - - - 0x008DE0 02:8DD0: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x008DE3 02:8DD3: A9 10     LDA #$10
C - - - - - 0x008DE5 02:8DD5: 20 95 AB  JSR sub_0x006BA5_set_dynamic_hp_to_enemy
C - - - - - 0x008DE8 02:8DD8: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x008DEB 02:8DDB: 4A        LSR
C - - - - - 0x008DEC 02:8DDC: A9 C4     LDA #$C4
C - - - - - 0x008DEE 02:8DDE: B0 02     BCS bra_8DE2
C - - - - - 0x008DF0 02:8DE0: A9 3C     LDA #$3C
bra_8DE2:
C - - - - - 0x008DF2 02:8DE2: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x008DF5 02:8DE5: A9 27     LDA #$27
C - - - - - 0x008DF7 02:8DE7: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x008DFA 02:8DEA: 4C E0 A2  JMP loc_0x0062F0



ofs_038_53_8DED_02:
C - - J - - 0x008DFD 02:8DED: A9 01     LDA #$01
C - - - - - 0x008DFF 02:8DEF: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x008E02 02:8DF2: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x008E05 02:8DF5: D0 0A     BNE bra_8E01_RTS
C - - - - - 0x008E07 02:8DF7: A0 56     LDY #con_obj_id_56
C - - - - - 0x008E09 02:8DF9: 20 C8 AB  JSR sub_0x006BD8
C - - - - - 0x008E0C 02:8DFC: A9 A0     LDA #$A0
C - - - - - 0x008E0E 02:8DFE: 9D E6 06  STA ram_06E6_obj,X
bra_8E01_RTS:
C - - - - - 0x008E11 02:8E01: 60        RTS



ofs_038_53_8E02_03: ; bzk optimize
C - - J - - 0x008E12 02:8E02: 4C 9A A2  JMP loc_0x0062AA



ofs_038_53_8E05_05: ; bzk optimize
C - - J - - 0x008E15 02:8E05: 4C 3D A3  JMP loc_0x00634D_delete_object_04



_off001_0x008E18_54_boss_7_fireball:
- D 0 - I - 0x008E18 02:8E08: 14 8E     .word ofs_038_54_8E14_01_initialize_object ; 
- D 0 - I - 0x008E1A 02:8E0A: 23 8E     .word ofs_038_54_8E23_02 ; 
- D 0 - I - 0x008E1C 02:8E0C: 39 8E     .word ofs_038_54_8E39_03 ; 
- D 0 - I - 0x008E1E 02:8E0E: 9A A2     .word ofs_038_54_0x0062AA_04 ; 
- D 0 - I - 0x008E20 02:8E10: FD A2     .word ofs_038_54_0x00630D_05 ; 
- D 0 - I - 0x008E22 02:8E12: 3D A3     .word ofs_038_54_0x00634D_06_delete_object_04 ; 



ofs_038_54_8E14_01_initialize_object:
C - - J - - 0x008E24 02:8E14: A9 03     LDA #$03
C - - - - - 0x008E26 02:8E16: 9D 76 06  STA ram_obj_hp,X
C - - - - - 0x008E29 02:8E19: A9 02     LDA #$02
C - - - - - 0x008E2B 02:8E1B: 9D 56 05  STA ram_attr_spr_enemy,X
C - - - - - 0x008E2E 02:8E1E: A9 28     LDA #$28
C - - - - - 0x008E30 02:8E20: 4C E0 A2  JMP loc_0x0062F0



ofs_038_54_8E23_02:
C - - J - - 0x008E33 02:8E23: A0 11     LDY #con_0x006C32_11
C - - - - - 0x008E35 02:8E25: 20 FD AB  JSR sub_0x006C0D
C - - - - - 0x008E38 02:8E28: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x008E3B 02:8E2B: D0 0B     BNE bra_8E38_RTS
C - - - - - 0x008E3D 02:8E2D: 20 0B AB  JSR sub_0x006B1B_set_target_on_closest_player_X_pos
C - - - - - 0x008E40 02:8E30: A0 07     LDY #$07
C - - - - - 0x008E42 02:8E32: 20 57 A9  JSR sub_0x006967
C - - - - - 0x008E45 02:8E35: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state
bra_8E38_RTS:
C - - - - - 0x008E48 02:8E38: 60        RTS



ofs_038_54_8E39_03:
C - - J - - 0x008E49 02:8E39: A0 11     LDY #con_0x006C32_11
C - - - - - 0x008E4B 02:8E3B: 20 FD AB  JSR sub_0x006C0D
C - - - - - 0x008E4E 02:8E3E: 4C D3 A6  JMP loc_0x0066E3



_off001_0x008E51_55_boss_7_red_spikeball:
- D 0 - I - 0x008E51 02:8E41: 4B 8E     .word ofs_038_55_8E4B_01_initialize_object ; 
- D 0 - I - 0x008E53 02:8E43: 82 8E     .word ofs_038_55_8E82_02 ; 
- D 0 - I - 0x008E55 02:8E45: 9A A2     .word ofs_038_55_0x0062AA_03 ; 
- D 0 - I - 0x008E57 02:8E47: FD A2     .word ofs_038_55_0x00630D_04 ; 
- D 0 - I - 0x008E59 02:8E49: 3D A3     .word ofs_038_55_0x00634D_05_delete_object_04 ; 



ofs_038_55_8E4B_01_initialize_object:
C - - J - - 0x008E5B 02:8E4B: 20 0B AB  JSR sub_0x006B1B_set_target_on_closest_player_X_pos
C - - - - - 0x008E5E 02:8E4E: A0 06     LDY #$06
C - - - - - 0x008E60 02:8E50: 84 06     STY ram_0006
C - - - - - 0x008E62 02:8E52: 20 AE AA  JSR sub_0x006ABE
C - - - - - 0x008E65 02:8E55: 20 F0 F4  JSR sub_0x01F500
C - - - - - 0x008E68 02:8E58: BC 1E 07  LDY ram_obj_flags,X
C - - - - - 0x008E6B 02:8E5B: B9 7F 8E  LDA tbl_8E7F,Y
C - - - - - 0x008E6E 02:8E5E: 18        CLC
C - - - - - 0x008E6F 02:8E5F: 65 0C     ADC ram_000C
C - - - - - 0x008E71 02:8E61: C9 18     CMP #$18
C - - - - - 0x008E73 02:8E63: 90 02     BCC bra_8E67
- - - - - - 0x008E75 02:8E65: A9 00     LDA #$00
bra_8E67:
C - - - - - 0x008E77 02:8E67: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x008E7A 02:8E6A: A0 06     LDY #$06
C - - - - - 0x008E7C 02:8E6C: 20 23 A9  JSR sub_0x006933
C - - - - - 0x008E7F 02:8E6F: A9 02     LDA #$02
C - - - - - 0x008E81 02:8E71: 9D 56 05  STA ram_attr_spr_enemy,X
C - - - - - 0x008E84 02:8E74: A9 20     LDA #$20
C - - - - - 0x008E86 02:8E76: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x008E89 02:8E79: A9 2C     LDA #$2C
C - - - - - 0x008E8B 02:8E7B: 4C E0 A2  JMP loc_0x0062F0


; bzk garbage
- - - - - - 0x008E8E 02:8E7E: 60        RTS



tbl_8E7F:
- D 0 - - - 0x008E8F 02:8E7F: 00        .byte $00   ; 00 
- D 0 - - - 0x008E90 02:8E80: 04        .byte $04   ; 01 
- D 0 - - - 0x008E91 02:8E81: FC        .byte $FC   ; 02 



ofs_038_55_8E82_02:
C - - J - - 0x008E92 02:8E82: A0 12     LDY #con_0x006C32_12
C - - - - - 0x008E94 02:8E84: 20 FD AB  JSR sub_0x006C0D
C - - - - - 0x008E97 02:8E87: BD 56 07  LDA ram_0756_obj,X
C - - - - - 0x008E9A 02:8E8A: F0 15     BEQ bra_8EA1
C - - - - - 0x008E9C 02:8E8C: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x008E9F 02:8E8F: D0 10     BNE bra_8EA1
C - - - - - 0x008EA1 02:8E91: A9 06     LDA #$06
C - - - - - 0x008EA3 02:8E93: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x008EA6 02:8E96: 20 0B AB  JSR sub_0x006B1B_set_target_on_closest_player_X_pos
C - - - - - 0x008EA9 02:8E99: A0 06     LDY #$06
C - - - - - 0x008EAB 02:8E9B: 20 23 A9  JSR sub_0x006933
C - - - - - 0x008EAE 02:8E9E: DE 56 07  DEC ram_0756_obj,X
bra_8EA1:
C - - - - - 0x008EB1 02:8EA1: 4C D3 A6  JMP loc_0x0066E3



_off001_0x008EB4_56_boss_7_slime:
- D 0 - I - 0x008EB4 02:8EA4: B8 8E     .word ofs_038_56_8EB8_01_initialize_object ; 
- D 0 - I - 0x008EB6 02:8EA6: C0 8E     .word ofs_038_56_8EC0_02 ; 
- D 0 - I - 0x008EB8 02:8EA8: DA 8E     .word ofs_038_56_8EDA_03 ; 
- D 0 - I - 0x008EBA 02:8EAA: 01 8F     .word ofs_038_56_8F01_04 ; 
- D 0 - I - 0x008EBC 02:8EAC: 51 8F     .word ofs_038_56_8F51_05 ; 
- D 0 - I - 0x008EBE 02:8EAE: 70 8F     .word ofs_038_56_8F70_06 ; 
- D 0 - I - 0x008EC0 02:8EB0: 92 8F     .word ofs_038_56_8F92_07 ; 
- D 0 - I - 0x008EC2 02:8EB2: 9A A2     .word ofs_038_56_0x0062AA_08 ; 
- D 0 - I - 0x008EC4 02:8EB4: FD A2     .word ofs_038_56_0x00630D_09 ; 
- D 0 - I - 0x008EC6 02:8EB6: 3D A3     .word ofs_038_56_0x00634D_0A_delete_object_04 ; 



ofs_038_56_8EB8_01_initialize_object:
C - - J - - 0x008EC8 02:8EB8: 20 9E 8F  JSR sub_8F9E
C - - - - - 0x008ECB 02:8EBB: A9 0C     LDA #$0C
C - - - - - 0x008ECD 02:8EBD: 4C E0 A2  JMP loc_0x0062F0



ofs_038_56_8EC0_02:
C - - J - - 0x008ED0 02:8EC0: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x008ED3 02:8EC3: D0 3B     BNE bra_8F00_RTS
C - - - - - 0x008ED5 02:8EC5: A9 0C     LDA #$0C
C - - - - - 0x008ED7 02:8EC7: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x008EDA 02:8ECA: FE 10 07  INC ram_0710_obj,X
C - - - - - 0x008EDD 02:8ECD: 20 9E 8F  JSR sub_8F9E
C - - - - - 0x008EE0 02:8ED0: BD 10 07  LDA ram_0710_obj,X
C - - - - - 0x008EE3 02:8ED3: C9 03     CMP #$03
C - - - - - 0x008EE5 02:8ED5: 90 29     BCC bra_8F00_RTS
C - - - - - 0x008EE7 02:8ED7: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_56_8EDA_03:
C - - J - - 0x008EEA 02:8EDA: A9 10     LDA #$10
C - - - - - 0x008EEC 02:8EDC: 20 CB AA  JSR sub_0x006ADB_add_to_spd_Y
C - - - - - 0x008EEF 02:8EDF: 20 D3 A6  JSR sub_0x0066E3
C - - - - - 0x008EF2 02:8EE2: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x008EF5 02:8EE5: C9 4C     CMP #$4C
C - - - - - 0x008EF7 02:8EE7: 90 17     BCC bra_8F00_RTS
C - - - - - 0x008EF9 02:8EE9: A9 4C     LDA #$4C
C - - - - - 0x008EFB 02:8EEB: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x008EFE 02:8EEE: A9 05     LDA #$05
C - - - - - 0x008F00 02:8EF0: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x008F03 02:8EF3: 20 CA A7  JSR sub_0x0067DA_clear_spd_Y
C - - - - - 0x008F06 02:8EF6: A9 00     LDA #$00
C - - - - - 0x008F08 02:8EF8: 9D 10 07  STA ram_0710_obj,X
C - - - - - 0x008F0B 02:8EFB: A9 10     LDA #$10
C - - - - - 0x008F0D 02:8EFD: 4C E0 A2  JMP loc_0x0062F0
bra_8F00_RTS:
C - - - - - 0x008F10 02:8F00: 60        RTS



ofs_038_56_8F01_04:
C - - J - - 0x008F11 02:8F01: A0 13     LDY #con_0x006C32_13
C - - - - - 0x008F13 02:8F03: 20 FD AB  JSR sub_0x006C0D
C - - - - - 0x008F16 02:8F06: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x008F19 02:8F09: 29 01     AND #$01
C - - - - - 0x008F1B 02:8F0B: 0A        ASL
C - - - - - 0x008F1C 02:8F0C: 85 00     STA ram_0000
C - - - - - 0x008F1E 02:8F0E: BD CA 06  LDA ram_spd_X_hi_obj,X
C - - - - - 0x008F21 02:8F11: 2A        ROL
C - - - - - 0x008F22 02:8F12: 2A        ROL
C - - - - - 0x008F23 02:8F13: 29 01     AND #$01
C - - - - - 0x008F25 02:8F15: 18        CLC
C - - - - - 0x008F26 02:8F16: 65 00     ADC ram_0000    ; 00/02
C - - - - - 0x008F28 02:8F18: A8        TAY
C - - - - - 0x008F29 02:8F19: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x008F2C 02:8F1C: D9 4D 8F  CMP tbl_8F4D,Y
C - - - - - 0x008F2F 02:8F1F: 6A        ROR
C - - - - - 0x008F30 02:8F20: 5D CA 06  EOR ram_spd_X_hi_obj,X
C - - - - - 0x008F33 02:8F23: 10 03     BPL bra_8F28
C - - - - - 0x008F35 02:8F25: 20 DC A7  JSR sub_0x0067EC_inverse_spd_X
bra_8F28:
C - - - - - 0x008F38 02:8F28: 20 D3 A6  JSR sub_0x0066E3
C - - - - - 0x008F3B 02:8F2B: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x008F3E 02:8F2E: D0 D0     BNE bra_8F00_RTS
C - - - - - 0x008F40 02:8F30: A9 30     LDA #$30
C - - - - - 0x008F42 02:8F32: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x008F45 02:8F35: 20 C9 8F  JSR sub_8FC9
C - - - - - 0x008F48 02:8F38: DE 56 07  DEC ram_0756_obj,X
C - - - - - 0x008F4B 02:8F3B: D0 C3     BNE bra_8F00_RTS
C - - - - - 0x008F4D 02:8F3D: 20 D3 A7  JSR sub_0x0067E3_clear_spd_X
C - - - - - 0x008F50 02:8F40: A9 04     LDA #$04
C - - - - - 0x008F52 02:8F42: 9D 10 07  STA ram_0710_obj,X
C - - - - - 0x008F55 02:8F45: 20 9A 8F  JSR sub_8F9A
C - - - - - 0x008F58 02:8F48: A9 0C     LDA #$0C
C - - - - - 0x008F5A 02:8F4A: 4C E0 A2  JMP loc_0x0062F0



tbl_8F4D:
; 00 
- D 0 - - - 0x008F5D 02:8F4D: 60        .byte $60   ; 00 
- D 0 - - - 0x008F5E 02:8F4E: 20        .byte $20   ; 01 
; 01 
- D 0 - - - 0x008F5F 02:8F4F: E0        .byte $E0   ; 00 
- D 0 - - - 0x008F60 02:8F50: A0        .byte $A0   ; 01 



ofs_038_56_8F51_05:
C - - J - - 0x008F61 02:8F51: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x008F64 02:8F54: D0 AA     BNE bra_8F00_RTS
C - - - - - 0x008F66 02:8F56: A9 0C     LDA #$0C
C - - - - - 0x008F68 02:8F58: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x008F6B 02:8F5B: FE 10 07  INC ram_0710_obj,X
C - - - - - 0x008F6E 02:8F5E: BD 10 07  LDA ram_0710_obj,X
C - - - - - 0x008F71 02:8F61: C9 07     CMP #$07
C - - - - - 0x008F73 02:8F63: B0 03     BCS bra_8F68
C - - - - - 0x008F75 02:8F65: 4C 9A 8F  JMP loc_8F9A
bra_8F68:
C - - - - - 0x008F78 02:8F68: A9 97     LDA #$97
C - - - - - 0x008F7A 02:8F6A: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x008F7D 02:8F6D: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_56_8F70_06:
C - - J - - 0x008F80 02:8F70: A9 10     LDA #$10
C - - - - - 0x008F82 02:8F72: 20 CB AA  JSR sub_0x006ADB_add_to_spd_Y
C - - - - - 0x008F85 02:8F75: 20 D3 A6  JSR sub_0x0066E3
C - - - - - 0x008F88 02:8F78: A9 0C     LDA #$0C
C - - - - - 0x008F8A 02:8F7A: 20 0A A8  JSR sub_0x00681A
C - - - - - 0x008F8D 02:8F7D: F0 81     BEQ bra_8F00_RTS
C - - - - - 0x008F8F 02:8F7F: 20 3D A8  JSR sub_0x00684D
C - - - - - 0x008F92 02:8F82: 20 CA A7  JSR sub_0x0067DA_clear_spd_Y
C - - - - - 0x008F95 02:8F85: A0 02     LDY #$02
C - - - - - 0x008F97 02:8F87: 20 CB 8F  JSR sub_8FCB
C - - - - - 0x008F9A 02:8F8A: A9 00     LDA #$00
C - - - - - 0x008F9C 02:8F8C: 9D 10 07  STA ram_0710_obj,X
C - - - - - 0x008F9F 02:8F8F: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_56_8F92_07:
C - - J - - 0x008FA2 02:8F92: A0 14     LDY #con_0x006C32_14
C - - - - - 0x008FA4 02:8F94: 20 FD AB  JSR sub_0x006C0D
C - - - - - 0x008FA7 02:8F97: 4C D3 A6  JMP loc_0x0066E3



sub_8F9A:
loc_8F9A:
C D 0 - - - 0x008FAA 02:8F9A: A9 96     LDA #$96
C - - - - - 0x008FAC 02:8F9C: D0 02     BNE bra_8FA0    ; jmp



sub_8F9E:
C - - - - - 0x008FAE 02:8F9E: A9 94     LDA #$94
bra_8FA0:
C - - - - - 0x008FB0 02:8FA0: 18        CLC
C - - - - - 0x008FB1 02:8FA1: 7D 10 07  ADC ram_0710_obj,X
C - - - - - 0x008FB4 02:8FA4: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x008FB7 02:8FA7: BC 10 07  LDY ram_0710_obj,X
C - - - - - 0x008FBA 02:8FAA: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x008FBD 02:8FAD: 18        CLC
C - - - - - 0x008FBE 02:8FAE: 79 C2 8F  ADC tbl_8FC2,Y
C - - - - - 0x008FC1 02:8FB1: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x008FC4 02:8FB4: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x008FC7 02:8FB7: 4A        LSR
loc_8FB8:
C D 0 - - - 0x008FC8 02:8FB8: A9 03     LDA #$03
C - - - - - 0x008FCA 02:8FBA: 90 02     BCC bra_8FBE
C - - - - - 0x008FCC 02:8FBC: A9 43     LDA #$43
bra_8FBE:
C - - - - - 0x008FCE 02:8FBE: 9D 56 05  STA ram_attr_spr_enemy,X
C - - - - - 0x008FD1 02:8FC1: 60        RTS



tbl_8FC2:
- D 0 - - - 0x008FD2 02:8FC2: 00        .byte $00   ; 00 
- D 0 - - - 0x008FD3 02:8FC3: 04        .byte $04   ; 01 
- D 0 - - - 0x008FD4 02:8FC4: 08        .byte $08   ; 02 
- D 0 - - - 0x008FD5 02:8FC5: 04        .byte $04   ; 03 
- D 0 - - - 0x008FD6 02:8FC6: 04        .byte $04   ; 04 
- D 0 - - - 0x008FD7 02:8FC7: 08        .byte $08   ; 05 
- D 0 - - - 0x008FD8 02:8FC8: 02        .byte $02   ; 06 



sub_8FC9:
C - - - - - 0x008FD9 02:8FC9: A0 00     LDY #$00
sub_8FCB:   ; Y = 02
C - - - - - 0x008FDB 02:8FCB: B9 EE 8F  LDA tbl_8FEE_spd_X,Y
C - - - - - 0x008FDE 02:8FCE: 9D BC 06  STA ram_spd_X_lo_obj,X
C - - - - - 0x008FE1 02:8FD1: B9 EF 8F  LDA tbl_8FEE_spd_X + $01,Y
C - - - - - 0x008FE4 02:8FD4: 9D CA 06  STA ram_spd_X_hi_obj,X
C - - - - - 0x008FE7 02:8FD7: 20 0B AB  JSR sub_0x006B1B_set_target_on_closest_player_X_pos
C - - - - - 0x008FEA 02:8FDA: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x008FED 02:8FDD: D9 4C 05  CMP ram_pos_X_hi_plr,Y
C - - - - - 0x008FF0 02:8FE0: 90 03     BCC bra_8FE5
C - - - - - 0x008FF2 02:8FE2: 20 DC A7  JSR sub_0x0067EC_inverse_spd_X
bra_8FE5:
C - - - - - 0x008FF5 02:8FE5: BD CA 06  LDA ram_spd_X_hi_obj,X
C - - - - - 0x008FF8 02:8FE8: 49 80     EOR #$80
C - - - - - 0x008FFA 02:8FEA: 0A        ASL
C - - - - - 0x008FFB 02:8FEB: 4C B8 8F  JMP loc_8FB8



tbl_8FEE_spd_X:
- D 0 - - - 0x008FFE 02:8FEE: 80 00     .word $0080 ; 00 
- D 0 - - - 0x009000 02:8FF0: 80 01     .word $0180 ; 02 



_off001_0x009002_51_boss_7_mouth:
- D 0 - I - 0x009002 02:8FF2: 08 90     .word ofs_038_51_9008_01_initialize_object ; 
- D 0 - I - 0x009004 02:8FF4: 1D 90     .word ofs_038_51_901D_02 ; 
- D 0 - I - 0x009006 02:8FF6: 71 90     .word ofs_038_51_9071_03 ; 
- D 0 - I - 0x009008 02:8FF8: 80 90     .word ofs_038_51_9080_04 ; 
- D 0 - I - 0x00900A 02:8FFA: B5 90     .word ofs_038_51_90B5_05 ; 
- D 0 - I - 0x00900C 02:8FFC: E6 90     .word ofs_038_51_90E6_06 ; 
- D 0 - I - 0x00900E 02:8FFE: B8 A3     .word ofs_038_51_0x0063C8_07_boss_starts_exploding ; 
- D 0 - I - 0x009010 02:9000: D8 A3     .word ofs_038_51_0x0063E8_08 ; 
- D 0 - I - 0x009012 02:9002: 06 91     .word ofs_038_51_9106_09 ; 
- D 0 - I - 0x009014 02:9004: F6 A2     .word ofs_038_51_0x006306_0A ; 
- D 0 - I - 0x009016 02:9006: 10 91     .word ofs_038_51_9110_0B ; 



ofs_038_51_9008_01_initialize_object:
C - - J - - 0x009018 02:9008: A9 11     LDA #$11
C - - - - - 0x00901A 02:900A: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x00901D 02:900D: A9 20     LDA #$20
C - - - - - 0x00901F 02:900F: 20 99 AB  JSR sub_0x006BA9_set_dynamic_hp_to_boss
C - - - - - 0x009022 02:9012: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x009025 02:9015: A9 F0     LDA #con__hp_F0
C - - - - - 0x009027 02:9017: 9D 76 06  STA ram_obj_hp,X
C - - - - - 0x00902A 02:901A: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_51_901D_02:
C - - J - - 0x00902D 02:901D: A9 01     LDA #$01
C - - - - - 0x00902F 02:901F: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x009032 02:9022: A5 7D     LDA ram_007D_scroll_type
C - - - - - 0x009034 02:9024: C9 C0     CMP #$C0
C - - - - - 0x009036 02:9026: D0 45     BNE bra_906D_RTS
C - - - - - 0x009038 02:9028: A9 31     LDA #con_sound_31
C - - - - - 0x00903A 02:902A: 20 DE FD  JSR sub_0x01FDEE_play_sound
C - - - - - 0x00903D 02:902D: A9 48     LDA #$48
C - - - - - 0x00903F 02:902F: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x009042 02:9032: A9 80     LDA #$80
C - - - - - 0x009044 02:9034: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x009047 02:9037: A9 0A     LDA #con_irq_area_7_boss
C - - - - - 0x009049 02:9039: 85 27     STA ram_irq_handler_hi
C - - - - - 0x00904B 02:903B: A9 52     LDA #$52
C - - - - - 0x00904D 02:903D: 85 45     STA ram_scanline
C - - - - - 0x00904F 02:903F: A9 E0     LDA #$E0
C - - - - - 0x009051 02:9041: 85 FC     STA ram_scroll_Y
C - - - - - 0x009053 02:9043: 85 F9     STA ram_00F9_scroll_Y
C - - - - - 0x009055 02:9045: A5 FD     LDA ram_scroll_X
C - - - - - 0x009057 02:9047: 85 FA     STA ram_00FA_scroll_X
C - - - - - 0x009059 02:9049: A5 FF     LDA ram_for_2000
C - - - - - 0x00905B 02:904B: 85 FB     STA ram_00FB_for_2000
C - - - - - 0x00905D 02:904D: A0 02     LDY #$02
bra_904F_loop:
C - - - - - 0x00905F 02:904F: 84 08     STY ram_0008
C - - - - - 0x009061 02:9051: B9 6E 90  LDA tbl_906E,Y
C - - - - - 0x009064 02:9054: A8        TAY
C - - - - - 0x009065 02:9055: 20 C8 AB  JSR sub_0x006BD8
C - - - - - 0x009068 02:9058: 90 10     BCC bra_906A
C - - - - - 0x00906A 02:905A: A4 11     LDY ram_0011
C - - - - - 0x00906C 02:905C: A5 08     LDA ram_0008
C - - - - - 0x00906E 02:905E: 99 1E 07  STA ram_obj_flags,Y
C - - - - - 0x009071 02:9061: 8A        TXA
C - - - - - 0x009072 02:9062: 99 80 07  STA ram_0780_obj,Y
C - - - - - 0x009075 02:9065: A4 08     LDY ram_0008
C - - - - - 0x009077 02:9067: 88        DEY
C - - - - - 0x009078 02:9068: 10 E5     BPL bra_904F_loop
bra_906A:
C - - - - - 0x00907A 02:906A: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state
bra_906D_RTS:
C - - - - - 0x00907D 02:906D: 60        RTS



tbl_906E:
- D 0 - - - 0x00907E 02:906E: 52        .byte con_obj_id_52   ; 00 
- D 0 - - - 0x00907F 02:906F: 53        .byte con_obj_id_53   ; 01 
- D 0 - - - 0x009080 02:9070: 53        .byte con_obj_id_53   ; 02 



ofs_038_51_9071_03:
C - - J - - 0x009081 02:9071: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x009084 02:9074: F0 F7     BEQ bra_906D_RTS
C - - - - - 0x009086 02:9076: A9 01     LDA #$01
C - - - - - 0x009088 02:9078: 9D 10 07  STA ram_0710_obj,X
C - - - - - 0x00908B 02:907B: A9 40     LDA #$40
C - - - - - 0x00908D 02:907D: 4C E0 A2  JMP loc_0x0062F0



ofs_038_51_9080_04:
C - - J - - 0x009090 02:9080: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x009093 02:9083: D0 29     BNE bra_90AE_RTS
C - - - - - 0x009095 02:9085: 20 13 91  JSR sub_9113
C - - - - - 0x009098 02:9088: A9 01     LDA #$01
C - - - - - 0x00909A 02:908A: B0 1F     BCS bra_90AB
C - - - - - 0x00909C 02:908C: BD 10 07  LDA ram_0710_obj,X
C - - - - - 0x00909F 02:908F: C9 02     CMP #$02
C - - - - - 0x0090A1 02:9091: A9 08     LDA #$08
C - - - - - 0x0090A3 02:9093: 90 13     BCC bra_90A8
C - - - - - 0x0090A5 02:9095: DE 10 07  DEC ram_0710_obj,X
C - - - - - 0x0090A8 02:9098: BD 56 07  LDA ram_0756_obj,X
C - - - - - 0x0090AB 02:909B: 9D 76 06  STA ram_obj_hp,X
C - - - - - 0x0090AE 02:909E: A9 08     LDA #$08
C - - - - - 0x0090B0 02:90A0: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x0090B3 02:90A3: A9 50     LDA #$50
C - - - - - 0x0090B5 02:90A5: 4C E0 A2  JMP loc_0x0062F0
bra_90A8:
C - - - - - 0x0090B8 02:90A8: FE 10 07  INC ram_0710_obj,X
bra_90AB:
loc_90AB:
C D 0 - - - 0x0090BB 02:90AB: 9D E6 06  STA ram_06E6_obj,X
bra_90AE_RTS:
C - - - - - 0x0090BE 02:90AE: 60        RTS



bra_90AF:
C - - - - - 0x0090BF 02:90AF: DE 10 07  DEC ram_0710_obj,X
C - - - - - 0x0090C2 02:90B2: 4C AB 90  JMP loc_90AB



ofs_038_51_90B5_05:
C - - J - - 0x0090C5 02:90B5: DE F4 06  DEC ram_06F4_obj,X
C - - - - - 0x0090C8 02:90B8: D0 17     BNE bra_90D1
C - - - - - 0x0090CA 02:90BA: A0 02     LDY #$02
bra_90BC_loop:
C - - - - - 0x0090CC 02:90BC: 84 08     STY ram_0008
C - - - - - 0x0090CE 02:90BE: A0 55     LDY #con_obj_id_55
C - - - - - 0x0090D0 02:90C0: 20 C8 AB  JSR sub_0x006BD8
C - - - - - 0x0090D3 02:90C3: 90 0C     BCC bra_90D1
C - - - - - 0x0090D5 02:90C5: A4 11     LDY ram_0011
C - - - - - 0x0090D7 02:90C7: A5 08     LDA ram_0008
C - - - - - 0x0090D9 02:90C9: 99 1E 07  STA ram_obj_flags,Y
C - - - - - 0x0090DC 02:90CC: A4 08     LDY ram_0008
C - - - - - 0x0090DE 02:90CE: 88        DEY
C - - - - - 0x0090DF 02:90CF: 10 EB     BPL bra_90BC_loop
bra_90D1:
C - - - - - 0x0090E1 02:90D1: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x0090E4 02:90D4: D0 D8     BNE bra_90AE_RTS
C - - - - - 0x0090E6 02:90D6: BD 76 06  LDA ram_obj_hp,X
C - - - - - 0x0090E9 02:90D9: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x0090EC 02:90DC: A9 F0     LDA #con__hp_F0
C - - - - - 0x0090EE 02:90DE: 9D 76 06  STA ram_obj_hp,X
C - - - - - 0x0090F1 02:90E1: A9 01     LDA #$01
C - - - - - 0x0090F3 02:90E3: 4C E0 A2  JMP loc_0x0062F0



ofs_038_51_90E6_06:
C - - J - - 0x0090F6 02:90E6: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x0090F9 02:90E9: D0 C3     BNE bra_90AE_RTS
C - - - - - 0x0090FB 02:90EB: 20 13 91  JSR sub_9113
C - - - - - 0x0090FE 02:90EE: A9 01     LDA #$01
C - - - - - 0x009100 02:90F0: B0 B9     BCS bra_90AB
C - - - - - 0x009102 02:90F2: A9 08     LDA #$08
C - - - - - 0x009104 02:90F4: BC 10 07  LDY ram_0710_obj,X
C - - - - - 0x009107 02:90F7: D0 B6     BNE bra_90AF
C - - - - - 0x009109 02:90F9: FE 10 07  INC ram_0710_obj,X
C - - - - - 0x00910C 02:90FC: A9 80     LDA #$80
C - - - - - 0x00910E 02:90FE: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x009111 02:9101: A9 04     LDA #$04
C - - - - - 0x009113 02:9103: 4C 83 A2  JMP loc_0x006293_set_obj_state



ofs_038_51_9106_09:
C - - J - - 0x009116 02:9106: A9 03     LDA #$03
C - - - - - 0x009118 02:9108: 20 16 91  JSR sub_9116
C - - - - - 0x00911B 02:910B: B0 A1     BCS bra_90AE_RTS
C - - - - - 0x00911D 02:910D: 4C A2 A2  JMP loc_0x0062B2



ofs_038_51_9110_0B: ; bzk optimize
C - - J - - 0x009120 02:9110: 4C 37 A3  JMP loc_0x006347_delete_object_boss



sub_9113:
C - - - - - 0x009123 02:9113: BD 10 07  LDA ram_0710_obj,X
sub_9116:
C - - - - - 0x009126 02:9116: 18        CLC
C - - - - - 0x009127 02:9117: 69 04     ADC #$04
C - - - - - 0x009129 02:9119: A0 04     LDY #$04
C - - - - - 0x00912B 02:911B: 4C 54 8D  JMP loc_8D54



sub_911E:
C - - - - - 0x00912E 02:911E: 84 02     STY ram_0002
C - - - - - 0x009130 02:9120: A5 FD     LDA ram_scroll_X
C - - - - - 0x009132 02:9122: 4A        LSR
C - - - - - 0x009133 02:9123: 4A        LSR
C - - - - - 0x009134 02:9124: 4A        LSR
C - - - - - 0x009135 02:9125: 4A        LSR
C - - - - - 0x009136 02:9126: 85 00     STA ram_0000
C - - - - - 0x009138 02:9128: A0 00     LDY #$00
C - - - - - 0x00913A 02:912A: A5 FC     LDA ram_scroll_Y
C - - - - - 0x00913C 02:912C: 29 F0     AND #$F0
C - - - - - 0x00913E 02:912E: 85 01     STA ram_0001
C - - - - - 0x009140 02:9130: D0 02     BNE bra_9134
C - - - - - 0x009142 02:9132: A4 02     LDY ram_0002
bra_9134:
C - - - - - 0x009144 02:9134: 84 02     STY ram_0002
C - - - - - 0x009146 02:9136: A9 00     LDA #$00
C - - - - - 0x009148 02:9138: A4 82     LDY ram_0082_area_config
C - - - - - 0x00914A 02:913A: F0 06     BEQ bra_9142
bra_913C_loop:
C - - - - - 0x00914C 02:913C: 18        CLC
C - - - - - 0x00914D 02:913D: 65 89     ADC ram_data_area_columns
C - - - - - 0x00914F 02:913F: 88        DEY
C - - - - - 0x009150 02:9140: D0 FA     BNE bra_913C_loop
bra_9142:
C - - - - - 0x009152 02:9142: 18        CLC
C - - - - - 0x009153 02:9143: 65 63     ADC ram_0063
C - - - - - 0x009155 02:9145: 85 03     STA ram_0003
bra_9147_RTS:
C - - - - - 0x009157 02:9147: 60        RTS



loc_0x009158_spawn_object_from_area_data:
C D 0 - - - 0x009158 02:9148: A5 5C     LDA ram_area_end_flags
C - - - - - 0x00915A 02:914A: D0 FB     BNE bra_9147_RTS
C - - - - - 0x00915C 02:914C: A5 61     LDA ram_0061_area_config
C - - - - - 0x00915E 02:914E: D0 03     BNE bra_9153
C - - - - - 0x009160 02:9150: 20 D5 91  JSR sub_91D5
bra_9153:
C - - - - - 0x009163 02:9153: A5 71     LDA ram_0071_scroll_type
C - - - - - 0x009165 02:9155: C9 C0     CMP #$C0
C - - - - - 0x009167 02:9157: F0 EE     BEQ bra_9147_RTS
C - - - - - 0x009169 02:9159: A0 00     LDY #$00
C - - - - - 0x00916B 02:915B: 20 1E 91  JSR sub_911E
C - - - - - 0x00916E 02:915E: A5 72     LDA ram_cam_spd_Y
C - - - - - 0x009170 02:9160: F0 E5     BEQ bra_9147_RTS
C - - - - - 0x009172 02:9162: 0A        ASL
C - - - - - 0x009173 02:9163: A9 07     LDA #$07
C - - - - - 0x009175 02:9165: B0 02     BCS bra_9169
C - - - - - 0x009177 02:9167: A9 0A     LDA #$0A
bra_9169:
C - - - - - 0x009179 02:9169: 85 04     STA ram_0004
C - - - - - 0x00917B 02:916B: A5 FC     LDA ram_scroll_Y
C - - - - - 0x00917D 02:916D: 29 0F     AND #$0F
C - - - - - 0x00917F 02:916F: C5 04     CMP ram_0004
C - - - - - 0x009181 02:9171: 6A        ROR
C - - - - - 0x009182 02:9172: 45 72     EOR ram_cam_spd_Y
C - - - - - 0x009184 02:9174: 10 D1     BPL bra_9147_RTS
C - - - - - 0x009186 02:9176: A5 01     LDA ram_0001
C - - - - - 0x009188 02:9178: C5 8B     CMP ram_008B
C - - - - - 0x00918A 02:917A: F0 CB     BEQ bra_9147_RTS
C - - - - - 0x00918C 02:917C: 85 8B     STA ram_008B
C - - - - - 0x00918E 02:917E: A5 72     LDA ram_cam_spd_Y
C - - - - - 0x009190 02:9180: 30 18     BMI bra_919A
C - - - - - 0x009192 02:9182: A9 E0     LDA #$E0
C - - - - - 0x009194 02:9184: 18        CLC
C - - - - - 0x009195 02:9185: 65 01     ADC ram_0001
C - - - - - 0x009197 02:9187: B0 04     BCS bra_918D
C - - - - - 0x009199 02:9189: C9 F0     CMP #$F0
C - - - - - 0x00919B 02:918B: 90 0B     BCC bra_9198
bra_918D:
C - - - - - 0x00919D 02:918D: 69 0F     ADC #$0F
C - - - - - 0x00919F 02:918F: A8        TAY
C - - - - - 0x0091A0 02:9190: A5 03     LDA ram_0003
C - - - - - 0x0091A2 02:9192: 18        CLC
C - - - - - 0x0091A3 02:9193: 65 89     ADC ram_data_area_columns
C - - - - - 0x0091A5 02:9195: 85 03     STA ram_0003
C - - - - - 0x0091A7 02:9197: 98        TYA
bra_9198:
C - - - - - 0x0091A8 02:9198: 85 01     STA ram_0001
bra_919A:
loc_919A_loop:
C D 0 - - - 0x0091AA 02:919A: 20 29 92  JSR sub_9229_spawn_object_from_area_data
C - - - - - 0x0091AD 02:919D: A0 00     LDY #$00
bra_919F_loop:
C - - - - - 0x0091AF 02:919F: B1 0A     LDA (ram_000A),Y
C - - - - - 0x0091B1 02:91A1: C9 FF     CMP #$FF
C - - - - - 0x0091B3 02:91A3: F0 25     BEQ bra_91CA_FF
C - - - - - 0x0091B5 02:91A5: 29 F0     AND #$F0
C - - - - - 0x0091B7 02:91A7: C5 01     CMP ram_0001
C - - - - - 0x0091B9 02:91A9: F0 04     BEQ bra_91AF
C - - - - - 0x0091BB 02:91AB: B0 18     BCS bra_91C5
C - - - - - 0x0091BD 02:91AD: D0 11     BNE bra_91C0    ; jmp
bra_91AF:
C - - - - - 0x0091BF 02:91AF: B1 0A     LDA (ram_000A),Y
C - - - - - 0x0091C1 02:91B1: 29 0F     AND #$0F
C - - - - - 0x0091C3 02:91B3: C5 00     CMP ram_0000
C - - - - - 0x0091C5 02:91B5: 2A        ROL
C - - - - - 0x0091C6 02:91B6: 45 02     EOR ram_0002
C - - - - - 0x0091C8 02:91B8: 4A        LSR
C - - - - - 0x0091C9 02:91B9: 90 05     BCC bra_91C0
C - - - - - 0x0091CB 02:91BB: 20 57 92  JSR sub_9257
C - - - - - 0x0091CE 02:91BE: B0 DF     BCS bra_919F_loop
bra_91C0:
C - - - - - 0x0091D0 02:91C0: C8        INY
C - - - - - 0x0091D1 02:91C1: C8        INY
C - - - - - 0x0091D2 02:91C2: C8        INY
C - - - - - 0x0091D3 02:91C3: D0 DA     BNE bra_919F_loop    ; jmp?
bra_91C5:
C - - - - - 0x0091D5 02:91C5: A5 02     LDA ram_0002
C - - - - - 0x0091D7 02:91C7: F0 01     BEQ bra_91CA
bra_91C9_RTS:
C - - - - - 0x0091D9 02:91C9: 60        RTS
bra_91CA:
bra_91CA_FF:
C - - - - - 0x0091DA 02:91CA: A5 02     LDA ram_0002
C - - - - - 0x0091DC 02:91CC: D0 FB     BNE bra_91C9_RTS
C - - - - - 0x0091DE 02:91CE: E6 02     INC ram_0002
C - - - - - 0x0091E0 02:91D0: E6 03     INC ram_0003
C - - - - - 0x0091E2 02:91D2: 4C 9A 91  JMP loc_919A_loop



sub_91D5:
C - - - - - 0x0091E5 02:91D5: A5 85     LDA ram_0085_for_2000
C - - - - - 0x0091E7 02:91D7: D0 F0     BNE bra_91C9_RTS
C - - - - - 0x0091E9 02:91D9: A0 02     LDY #$02
C - - - - - 0x0091EB 02:91DB: 20 1E 91  JSR sub_911E
C - - - - - 0x0091EE 02:91DE: A5 FD     LDA ram_scroll_X
C - - - - - 0x0091F0 02:91E0: 29 08     AND #$08
C - - - - - 0x0091F2 02:91E2: C5 8A     CMP ram_008A
C - - - - - 0x0091F4 02:91E4: F0 E3     BEQ bra_91C9_RTS
C - - - - - 0x0091F6 02:91E6: 85 8A     STA ram_008A
C - - - - - 0x0091F8 02:91E8: 29 08     AND #$08
C - - - - - 0x0091FA 02:91EA: F0 DD     BEQ bra_91C9_RTS
C - - - - - 0x0091FC 02:91EC: E6 03     INC ram_0003
loc_91EE_loop:
C D 0 - - - 0x0091FE 02:91EE: 20 29 92  JSR sub_9229_spawn_object_from_area_data
C - - - - - 0x009201 02:91F1: A0 00     LDY #$00
loc_91F3_loop:
bra_91F3_loop:
C D 0 - - - 0x009203 02:91F3: B1 0A     LDA (ram_000A),Y
C - - - - - 0x009205 02:91F5: C9 FF     CMP #$FF
C - - - - - 0x009207 02:91F7: F0 20     BEQ bra_9219
C - - - - - 0x009209 02:91F9: C5 01     CMP ram_0001
C - - - - - 0x00920B 02:91FB: 2A        ROL
C - - - - - 0x00920C 02:91FC: 45 02     EOR ram_0002
C - - - - - 0x00920E 02:91FE: 4A        LSR
C - - - - - 0x00920F 02:91FF: 90 13     BCC bra_9214
C - - - - - 0x009211 02:9201: B1 0A     LDA (ram_000A),Y
C - - - - - 0x009213 02:9203: 29 0F     AND #$0F
C - - - - - 0x009215 02:9205: C5 00     CMP ram_0000
C - - - - - 0x009217 02:9207: D0 06     BNE bra_920F
C - - - - - 0x009219 02:9209: 20 57 92  JSR sub_9257
C - - - - - 0x00921C 02:920C: 4C F3 91  JMP loc_91F3_loop
bra_920F:
C - - - - - 0x00921F 02:920F: C8        INY
C - - - - - 0x009220 02:9210: C8        INY
C - - - - - 0x009221 02:9211: C8        INY
C - - - - - 0x009222 02:9212: D0 DF     BNE bra_91F3_loop    ; jmp?
bra_9214:
C - - - - - 0x009224 02:9214: A5 02     LDA ram_0002
C - - - - - 0x009226 02:9216: F0 F7     BEQ bra_920F
bra_9218_RTS:
C - - - - - 0x009228 02:9218: 60        RTS
bra_9219:
C - - - - - 0x009229 02:9219: A5 02     LDA ram_0002
C - - - - - 0x00922B 02:921B: D0 FB     BNE bra_9218_RTS
C - - - - - 0x00922D 02:921D: E6 02     INC ram_0002
C - - - - - 0x00922F 02:921F: A5 03     LDA ram_0003
C - - - - - 0x009231 02:9221: 18        CLC
C - - - - - 0x009232 02:9222: 65 89     ADC ram_data_area_columns
C - - - - - 0x009234 02:9224: 85 03     STA ram_0003
C - - - - - 0x009236 02:9226: 4C EE 91  JMP loc_91EE_loop



sub_9229_spawn_object_from_area_data:
C - - - - - 0x009239 02:9229: A5 50     LDA ram_area_index
C - - - - - 0x00923B 02:922B: 0A        ASL
C - - - - - 0x00923C 02:922C: A8        TAY
C - - - - - 0x00923D 02:922D: B9 D4 F2  LDA tbl_0x01F2E4_area_objects_spawner,Y
C - - - - - 0x009240 02:9230: 85 08     STA ram_0008
C - - - - - 0x009242 02:9232: B9 D5 F2  LDA tbl_0x01F2E4_area_objects_spawner + $01,Y
C - - - - - 0x009245 02:9235: 85 09     STA ram_0009
C - - - - - 0x009247 02:9237: A9 00     LDA #$00
C - - - - - 0x009249 02:9239: 85 0A     STA ram_000A
; bzk optimize, max possible index in 0003 is 5A, no need for 16-bit multiplication
C - - - - - 0x00924B 02:923B: A5 03     LDA ram_0003
C - - - - - 0x00924D 02:923D: 0A        ASL
C - - - - - 0x00924E 02:923E: 26 0A     ROL ram_000A
C - - - - - 0x009250 02:9240: 18        CLC
C - - - - - 0x009251 02:9241: 65 08     ADC ram_0008
C - - - - - 0x009253 02:9243: 85 08     STA ram_0008
C - - - - - 0x009255 02:9245: A5 0A     LDA ram_000A
C - - - - - 0x009257 02:9247: 65 09     ADC ram_0009
C - - - - - 0x009259 02:9249: 85 09     STA ram_0009
C - - - - - 0x00925B 02:924B: A0 00     LDY #$00
C - - - - - 0x00925D 02:924D: B1 08     LDA (ram_0008),Y
C - - - - - 0x00925F 02:924F: 85 0A     STA ram_000A
C - - - - - 0x009261 02:9251: C8        INY
C - - - - - 0x009262 02:9252: B1 08     LDA (ram_0008),Y
C - - - - - 0x009264 02:9254: 85 0B     STA ram_000B
C - - - - - 0x009266 02:9256: 60        RTS



sub_9257:
C - - - - - 0x009267 02:9257: B1 0A     LDA (ram_000A),Y
C - - - - - 0x009269 02:9259: 85 0C     STA ram_000C    ; object position
C - - - - - 0x00926B 02:925B: C8        INY
C - - - - - 0x00926C 02:925C: B1 0A     LDA (ram_000A),Y
C - - - - - 0x00926E 02:925E: 85 0D     STA ram_000D    ; object flags
C - - - - - 0x009270 02:9260: C8        INY
C - - - - - 0x009271 02:9261: B1 0A     LDA (ram_000A),Y
C - - - - - 0x009273 02:9263: 85 08     STA ram_0008    ; object id
C - - - - - 0x009275 02:9265: C8        INY
C - - - - - 0x009276 02:9266: 84 07     STY ram_0007
C - - - - - 0x009278 02:9268: 20 FD F6  JSR sub_0x01F70D_try_to_find_free_object_slot
C - - - - - 0x00927B 02:926B: F0 12     BEQ bra_927F_place_object
; if no free objects found
C - - - - - 0x00927D 02:926D: A5 0D     LDA ram_000D    ; object flags
C - - - - - 0x00927F 02:926F: 10 3D     BPL bra_92AE_failed_to_place_object
; if allowed to replace an enemy bullet with this object
C - - - - - 0x009281 02:9271: 20 1C F7  JSR sub_0x01F72C_try_to_find_enemy_bullet
C - - - - - 0x009284 02:9274: F0 09     BEQ bra_927F_place_object
; if no enemy bullets found
C - - - - - 0x009286 02:9276: 24 0D     BIT ram_000D    ; object flags
C - - - - - 0x009288 02:9278: 50 34     BVC bra_92AE_failed_to_place_object
; if allowed to forcibly create this object as a last resort
- - - - - - 0x00928A 02:927A: A2 00     LDX #$00
- - - - - - 0x00928C 02:927C: 20 3F F7  JSR sub_0x01F74F_start_preparing_new_object
bra_927F_place_object:
C - - - - - 0x00928F 02:927F: A5 0D     LDA ram_000D    ; object flags
C - - - - - 0x009291 02:9281: 29 7F     AND #$7F
C - - - - - 0x009293 02:9283: 9D 1E 07  STA ram_obj_flags,X
C - - - - - 0x009296 02:9286: A4 08     LDY ram_0008    ; object id
C - - - - - 0x009298 02:9288: 20 9E F7  JSR sub_0x01F7AE_prepare_object
C - - - - - 0x00929B 02:928B: A4 07     LDY ram_0007
C - - - - - 0x00929D 02:928D: A5 0C     LDA ram_000C    ; object position
C - - - - - 0x00929F 02:928F: 0A        ASL
C - - - - - 0x0092A0 02:9290: 0A        ASL
C - - - - - 0x0092A1 02:9291: 0A        ASL
C - - - - - 0x0092A2 02:9292: 0A        ASL
C - - - - - 0x0092A3 02:9293: 38        SEC
C - - - - - 0x0092A4 02:9294: E5 FD     SBC ram_scroll_X
C - - - - - 0x0092A6 02:9296: 18        CLC
C - - - - - 0x0092A7 02:9297: 69 08     ADC #$08
C - - - - - 0x0092A9 02:9299: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x0092AC 02:929C: A5 0C     LDA ram_000C    ; object position
C - - - - - 0x0092AE 02:929E: 29 F0     AND #$F0
C - - - - - 0x0092B0 02:92A0: 09 08     ORA #$08
C - - - - - 0x0092B2 02:92A2: 38        SEC
C - - - - - 0x0092B3 02:92A3: E5 FC     SBC ram_scroll_Y
C - - - - - 0x0092B5 02:92A5: B0 02     BCS bra_92A9
C - - - - - 0x0092B7 02:92A7: E9 0F     SBC #$0F
bra_92A9:
C - - - - - 0x0092B9 02:92A9: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x0092BC 02:92AC: 38        SEC
C - - - - - 0x0092BD 02:92AD: 60        RTS
bra_92AE_failed_to_place_object:
C - - - - - 0x0092BE 02:92AE: 18        CLC
C - - - - - 0x0092BF 02:92AF: 60        RTS



loc_0x0092C0_prepare_heli_rotor_blade:
; bzk optimize, check area before going here
C D 0 - - - 0x0092C0 02:92B0: A5 50     LDA ram_area_index
C - - - - - 0x0092C2 02:92B2: D0 14     BNE bra_92C8_RTS
; bzk optimize, is it necessary to search for a free object slot?
C - - - - - 0x0092C4 02:92B4: 20 FD F6  JSR sub_0x01F70D_try_to_find_free_object_slot
C - - - - - 0x0092C7 02:92B7: D0 0F     BNE bra_92C8_RTS
C - - - - - 0x0092C9 02:92B9: A0 62     LDY #con_obj_id_62
C - - - - - 0x0092CB 02:92BB: 20 9E F7  JSR sub_0x01F7AE_prepare_object
C - - - - - 0x0092CE 02:92BE: A9 60     LDA #$60
C - - - - - 0x0092D0 02:92C0: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x0092D3 02:92C3: A9 1C     LDA #$1C
C - - - - - 0x0092D5 02:92C5: 9D 22 05  STA ram_pos_Y_hi_enemy,X
bra_92C8_RTS:
C - - - - - 0x0092D8 02:92C8: 60        RTS



_off013_0x0092D9_00_area_1:
- - - - - - 0x0092D9 02:92C9: 39 93     .word _off019_00_9339_00
- - - - - - 0x0092DB 02:92CB: 3A 93     .word _off019_00_933A_01
- - - - - - 0x0092DD 02:92CD: 3B 93     .word _off019_00_933B_02
- - - - - - 0x0092DF 02:92CF: 3C 93     .word _off019_00_933C_03
- - - - - - 0x0092E1 02:92D1: 3D 93     .word _off019_00_933D_04
- - - - - - 0x0092E3 02:92D3: 3E 93     .word _off019_00_933E_05
- - - - - - 0x0092E5 02:92D5: 3F 93     .word _off019_00_933F_06
- - - - - - 0x0092E7 02:92D7: 40 93     .word _off019_00_9340_07
- - - - - - 0x0092E9 02:92D9: 41 93     .word _off019_00_9341_08
- - - - - - 0x0092EB 02:92DB: 42 93     .word _off019_00_9342_09
- D 0 - I - 0x0092ED 02:92DD: 43 93     .word _off019_00_9343_0A
- D 0 - I - 0x0092EF 02:92DF: 44 93     .word _off019_00_9344_0B
- D 0 - I - 0x0092F1 02:92E1: 45 93     .word _off019_00_9345_0C
- - - - - - 0x0092F3 02:92E3: 46 93     .word _off019_00_9346_0D
- - - - - - 0x0092F5 02:92E5: 47 93     .word _off019_00_9347_0E
- - - - - - 0x0092F7 02:92E7: 48 93     .word _off019_00_9348_0F
- - - - - - 0x0092F9 02:92E9: 49 93     .word _off019_00_9349_10
- - - - - - 0x0092FB 02:92EB: 4A 93     .word _off019_00_934A_11
- - - - - - 0x0092FD 02:92ED: 4B 93     .word _off019_00_934B_12
- D 0 - I - 0x0092FF 02:92EF: 4C 93     .word _off019_00_934C_13
- D 0 - I - 0x009301 02:92F1: 4D 93     .word _off019_00_934D_14
- D 0 - I - 0x009303 02:92F3: 4E 93     .word _off019_00_934E_15
- D 0 - I - 0x009305 02:92F5: 4F 93     .word _off019_00_934F_16
- D 0 - I - 0x009307 02:92F7: 53 93     .word _off019_00_9353_17
- D 0 - I - 0x009309 02:92F9: 60 93     .word _off019_00_9360_18
- D 0 - I - 0x00930B 02:92FB: 64 93     .word _off019_00_9364_19
- D 0 - I - 0x00930D 02:92FD: 6B 93     .word _off019_00_936B_1A
- - - - - - 0x00930F 02:92FF: 72 93     .word _off019_00_9372_1B
- D 0 - I - 0x009311 02:9301: 73 93     .word _off019_00_9373_1C
- D 0 - I - 0x009313 02:9303: 74 93     .word _off019_00_9374_1D
- D 0 - I - 0x009315 02:9305: 75 93     .word _off019_00_9375_1E
- D 0 - I - 0x009317 02:9307: 76 93     .word _off019_00_9376_1F
- D 0 - I - 0x009319 02:9309: 77 93     .word _off019_00_9377_20
- D 0 - I - 0x00931B 02:930B: 7E 93     .word _off019_00_937E_21
- D 0 - I - 0x00931D 02:930D: 82 93     .word _off019_00_9382_22
- D 0 - I - 0x00931F 02:930F: 89 93     .word _off019_00_9389_23
- D 0 - I - 0x009321 02:9311: 93 93     .word _off019_00_9393_24
- D 0 - I - 0x009323 02:9313: 97 93     .word _off019_00_9397_25
- D 0 - I - 0x009325 02:9315: 9B 93     .word _off019_00_939B_26
- D 0 - I - 0x009327 02:9317: 9F 93     .word _off019_00_939F_27
- - - - - - 0x009329 02:9319: A0 93     .word _off019_00_93A0_28
- - - - - - 0x00932B 02:931B: A1 93     .word _off019_00_93A1_29
- D 0 - I - 0x00932D 02:931D: A2 93     .word _off019_00_93A2_2A
- D 0 - I - 0x00932F 02:931F: A3 93     .word _off019_00_93A3_2B
- D 0 - I - 0x009331 02:9321: BF 93     .word _off019_00_93BF_2C
- D 0 - I - 0x009333 02:9323: C9 93     .word _off019_00_93C9_2D
- D 0 - I - 0x009335 02:9325: D0 93     .word _off019_00_93D0_2E
- D 0 - I - 0x009337 02:9327: D1 93     .word _off019_00_93D1_2F
- D 0 - I - 0x009339 02:9329: D5 93     .word _off019_00_93D5_30
- - - - - - 0x00933B 02:932B: D6 93     .word _off019_00_93D6_31
- - - - - - 0x00933D 02:932D: D7 93     .word _off019_00_93D7_32
- - - - - - 0x00933F 02:932F: D8 93     .word _off019_00_93D8_33
- - - - - - 0x009341 02:9331: D9 93     .word _off019_00_93D9_34
- - - - - - 0x009343 02:9333: DA 93     .word _off019_00_93DA_35
- - - - - - 0x009345 02:9335: DB 93     .word _off019_00_93DB_36
- - - - - - 0x009347 02:9337: DC 93     .word _off019_00_93DC_37



_off019_00_9339_00:
- - - - - - 0x009349 02:9339: FF        .byte $FF   ; end token



_off019_00_933A_01:
- - - - - - 0x00934A 02:933A: FF        .byte $FF   ; end token



_off019_00_933B_02:
- - - - - - 0x00934B 02:933B: FF        .byte $FF   ; end token



_off019_00_933C_03:
- - - - - - 0x00934C 02:933C: FF        .byte $FF   ; end token



_off019_00_933D_04:
- - - - - - 0x00934D 02:933D: FF        .byte $FF   ; end token



_off019_00_933E_05:
- - - - - - 0x00934E 02:933E: FF        .byte $FF   ; end token



_off019_00_933F_06:
- - - - - - 0x00934F 02:933F: FF        .byte $FF   ; end token



_off019_00_9340_07:
- - - - - - 0x009350 02:9340: FF        .byte $FF   ; end token



_off019_00_9341_08:
- - - - - - 0x009351 02:9341: FF        .byte $FF   ; end token



_off019_00_9342_09:
- - - - - - 0x009352 02:9342: FF        .byte $FF   ; end token



_off019_00_9343_0A:
- D 0 - I - 0x009353 02:9343: FF        .byte $FF   ; end token



_off019_00_9344_0B:
- D 0 - I - 0x009354 02:9344: FF        .byte $FF   ; end token



_off019_00_9345_0C:
- D 0 - I - 0x009355 02:9345: FF        .byte $FF   ; end token



_off019_00_9346_0D:
- - - - - - 0x009356 02:9346: FF        .byte $FF   ; end token



_off019_00_9347_0E:
- - - - - - 0x009357 02:9347: FF        .byte $FF   ; end token



_off019_00_9348_0F:
- - - - - - 0x009358 02:9348: FF        .byte $FF   ; end token



_off019_00_9349_10:
- - - - - - 0x009359 02:9349: FF        .byte $FF   ; end token



_off019_00_934A_11:
- - - - - - 0x00935A 02:934A: FF        .byte $FF   ; end token



_off019_00_934B_12:
- - - - - - 0x00935B 02:934B: FF        .byte $FF   ; end token



_off019_00_934C_13:
- D 0 - I - 0x00935C 02:934C: FF        .byte $FF   ; end token



_off019_00_934D_14:
- D 0 - I - 0x00935D 02:934D: FF        .byte $FF   ; end token



_off019_00_934E_15:
- D 0 - I - 0x00935E 02:934E: FF        .byte $FF   ; end token



_off019_00_934F_16:
- D 0 - I - 0x00935F 02:934F: 8B        .byte $10 * $08 + $0B   ; pos YX
- D 0 - I - 0x009360 02:9350: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009361 02:9351: 6F        .byte con_obj_id_6F   ; 

- D 0 - I - 0x009362 02:9352: FF        .byte $FF   ; end token



_off019_00_9353_17:
- D 0 - I - 0x009363 02:9353: 97        .byte $10 * $09 + $07   ; pos YX
- D 0 - I - 0x009364 02:9354: 91        .byte $80 + $00 + $11   ; flags
- D 0 - I - 0x009365 02:9355: 01        .byte con_obj_id_01   ; 

- D 0 - I - 0x009366 02:9356: A8        .byte $10 * $0A + $08   ; pos YX
- D 0 - I - 0x009367 02:9357: 83        .byte $80 + $00 + $03   ; flags
- D 0 - I - 0x009368 02:9358: 09        .byte con_obj_id_09   ; 

- D 0 - I - 0x009369 02:9359: AD        .byte $10 * $0A + $0D   ; pos YX
- D 0 - I - 0x00936A 02:935A: 82        .byte $80 + $00 + $02   ; flags
- D 0 - I - 0x00936B 02:935B: 09        .byte con_obj_id_09   ; 

- D 0 - I - 0x00936C 02:935C: E6        .byte $10 * $0E + $06   ; pos YX
- D 0 - I - 0x00936D 02:935D: 90        .byte $80 + $00 + $10   ; flags
- D 0 - I - 0x00936E 02:935E: 01        .byte con_obj_id_01   ; 

- D 0 - I - 0x00936F 02:935F: FF        .byte $FF   ; end token



_off019_00_9360_18:
- D 0 - I - 0x009370 02:9360: AC        .byte $10 * $0A + $0C   ; pos YX
- D 0 - I - 0x009371 02:9361: A1        .byte $80 + $00 + $21   ; flags
- D 0 - I - 0x009372 02:9362: 0F        .byte con_obj_id_0F   ; 

- D 0 - I - 0x009373 02:9363: FF        .byte $FF   ; end token



_off019_00_9364_19:
- D 0 - I - 0x009374 02:9364: 39        .byte $10 * $03 + $09   ; pos YX
- D 0 - I - 0x009375 02:9365: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009376 02:9366: 10        .byte con_obj_id_10   ; 

- D 0 - I - 0x009377 02:9367: 8F        .byte $10 * $08 + $0F   ; pos YX
- D 0 - I - 0x009378 02:9368: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009379 02:9369: 20        .byte con_obj_id_20   ; 

- D 0 - I - 0x00937A 02:936A: FF        .byte $FF   ; end token



_off019_00_936B_1A:
- D 0 - I - 0x00937B 02:936B: B5        .byte $10 * $0B + $05   ; pos YX
- D 0 - I - 0x00937C 02:936C: 82        .byte $80 + $00 + $02   ; flags
- D 0 - I - 0x00937D 02:936D: 09        .byte con_obj_id_09   ; 

- D 0 - I - 0x00937E 02:936E: 81        .byte $10 * $08 + $01   ; pos YX
- D 0 - I - 0x00937F 02:936F: C0        .byte $80 + $40 + $00   ; flags
- D 0 - I - 0x009380 02:9370: 21        .byte con_obj_id_21   ; 

- D 0 - I - 0x009381 02:9371: FF        .byte $FF   ; end token



_off019_00_9372_1B:
- - - - - - 0x009382 02:9372: FF        .byte $FF   ; end token



_off019_00_9373_1C:
- D 0 - I - 0x009383 02:9373: FF        .byte $FF   ; end token



_off019_00_9374_1D:
- D 0 - I - 0x009384 02:9374: FF        .byte $FF   ; end token



_off019_00_9375_1E:
- D 0 - I - 0x009385 02:9375: FF        .byte $FF   ; end token



_off019_00_9376_1F:
- D 0 - I - 0x009386 02:9376: FF        .byte $FF   ; end token



_off019_00_9377_20:
- D 0 - I - 0x009387 02:9377: AB        .byte $10 * $0A + $0B   ; pos YX
- D 0 - I - 0x009388 02:9378: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009389 02:9379: 10        .byte con_obj_id_10   ; 

- D 0 - I - 0x00938A 02:937A: 9E        .byte $10 * $09 + $0E   ; pos YX
- D 0 - I - 0x00938B 02:937B: 96        .byte $80 + $00 + $16   ; flags
- D 0 - I - 0x00938C 02:937C: 01        .byte con_obj_id_01   ; 

- D 0 - I - 0x00938D 02:937D: FF        .byte $FF   ; end token



_off019_00_937E_21:
- D 0 - I - 0x00938E 02:937E: 98        .byte $10 * $09 + $08   ; pos YX
- D 0 - I - 0x00938F 02:937F: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009390 02:9380: 6F        .byte con_obj_id_6F   ; 

- D 0 - I - 0x009391 02:9381: FF        .byte $FF   ; end token



_off019_00_9382_22:
- D 0 - I - 0x009392 02:9382: 36        .byte $10 * $03 + $06   ; pos YX
- D 0 - I - 0x009393 02:9383: 82        .byte $80 + $00 + $02   ; flags
- D 0 - I - 0x009394 02:9384: 09        .byte con_obj_id_09   ; 

- D 0 - I - 0x009395 02:9385: 3B        .byte $10 * $03 + $0B   ; pos YX
- D 0 - I - 0x009396 02:9386: 85        .byte $80 + $00 + $05   ; flags
- D 0 - I - 0x009397 02:9387: 05        .byte con_obj_id_05   ; 

- D 0 - I - 0x009398 02:9388: FF        .byte $FF   ; end token



_off019_00_9389_23:
- D 0 - I - 0x009399 02:9389: 05        .byte $10 * $00 + $05   ; pos YX
- D 0 - I - 0x00939A 02:938A: 96        .byte $80 + $00 + $16   ; flags
- D 0 - I - 0x00939B 02:938B: 01        .byte con_obj_id_01   ; 

- D 0 - I - 0x00939C 02:938C: 24        .byte $10 * $02 + $04   ; pos YX
- D 0 - I - 0x00939D 02:938D: 93        .byte $80 + $00 + $13   ; flags
- D 0 - I - 0x00939E 02:938E: 01        .byte con_obj_id_01   ; 

- D 0 - I - 0x00939F 02:938F: 62        .byte $10 * $06 + $02   ; pos YX
- D 0 - I - 0x0093A0 02:9390: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x0093A1 02:9391: 0F        .byte con_obj_id_0F   ; 

- D 0 - I - 0x0093A2 02:9392: FF        .byte $FF   ; end token



_off019_00_9393_24:
- D 0 - I - 0x0093A3 02:9393: 11        .byte $10 * $01 + $01   ; pos YX
- D 0 - I - 0x0093A4 02:9394: A2        .byte $80 + $00 + $22   ; flags
- D 0 - I - 0x0093A5 02:9395: 0F        .byte con_obj_id_0F   ; 

- D 0 - I - 0x0093A6 02:9396: FF        .byte $FF   ; end token



_off019_00_9397_25:
- D 0 - I - 0x0093A7 02:9397: 09        .byte $10 * $00 + $09   ; pos YX
- D 0 - I - 0x0093A8 02:9398: 81        .byte $80 + $00 + $01   ; flags
- D 0 - I - 0x0093A9 02:9399: 20        .byte con_obj_id_20   ; 

- D 0 - I - 0x0093AA 02:939A: FF        .byte $FF   ; end token



_off019_00_939B_26:
- D 0 - I - 0x0093AB 02:939B: 01        .byte $10 * $00 + $01   ; pos YX
- D 0 - I - 0x0093AC 02:939C: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x0093AD 02:939D: 20        .byte con_obj_id_20   ; 

- D 0 - I - 0x0093AE 02:939E: FF        .byte $FF   ; end token



_off019_00_939F_27:
- D 0 - I - 0x0093AF 02:939F: FF        .byte $FF   ; end token



_off019_00_93A0_28:
- - - - - - 0x0093B0 02:93A0: FF        .byte $FF   ; end token



_off019_00_93A1_29:
- - - - - - 0x0093B1 02:93A1: FF        .byte $FF   ; end token



_off019_00_93A2_2A:
- D 0 - I - 0x0093B2 02:93A2: FF        .byte $FF   ; end token



_off019_00_93A3_2B:
- D 0 - I - 0x0093B3 02:93A3: 35        .byte $10 * $03 + $05   ; pos YX
- D 0 - I - 0x0093B4 02:93A4: 90        .byte $80 + $00 + $10   ; flags
- D 0 - I - 0x0093B5 02:93A5: 01        .byte con_obj_id_01   ; 

- D 0 - I - 0x0093B6 02:93A6: 4B        .byte $10 * $04 + $0B   ; pos YX
- D 0 - I - 0x0093B7 02:93A7: 82        .byte $80 + $00 + $02   ; flags
- D 0 - I - 0x0093B8 02:93A8: 09        .byte con_obj_id_09   ; 

- D 0 - I - 0x0093B9 02:93A9: 93        .byte $10 * $09 + $03   ; pos YX
- D 0 - I - 0x0093BA 02:93AA: 00        .byte $00 + $00 + $00   ; flags
- D 0 - I - 0x0093BB 02:93AB: 03        .byte con_obj_id_03   ; 

- D 0 - I - 0x0093BC 02:93AC: 95        .byte $10 * $09 + $05   ; pos YX
- D 0 - I - 0x0093BD 02:93AD: 00        .byte $00 + $00 + $00   ; flags
- D 0 - I - 0x0093BE 02:93AE: 03        .byte con_obj_id_03   ; 

- D 0 - I - 0x0093BF 02:93AF: 95        .byte $10 * $09 + $05   ; pos YX
- D 0 - I - 0x0093C0 02:93B0: 01        .byte $00 + $00 + $01   ; flags
- D 0 - I - 0x0093C1 02:93B1: 03        .byte con_obj_id_03   ; 

- D 0 - I - 0x0093C2 02:93B2: 97        .byte $10 * $09 + $07   ; pos YX
- D 0 - I - 0x0093C3 02:93B3: 00        .byte $00 + $00 + $00   ; flags
- D 0 - I - 0x0093C4 02:93B4: 03        .byte con_obj_id_03   ; 

- D 0 - I - 0x0093C5 02:93B5: 99        .byte $10 * $09 + $09   ; pos YX
- D 0 - I - 0x0093C6 02:93B6: 00        .byte $00 + $00 + $00   ; flags
- D 0 - I - 0x0093C7 02:93B7: 03        .byte con_obj_id_03   ; 

- D 0 - I - 0x0093C8 02:93B8: 9A        .byte $10 * $09 + $0A   ; pos YX
- D 0 - I - 0x0093C9 02:93B9: 01        .byte $00 + $00 + $01   ; flags
- D 0 - I - 0x0093CA 02:93BA: 03        .byte con_obj_id_03   ; 

- D 0 - I - 0x0093CB 02:93BB: 9C        .byte $10 * $09 + $0C   ; pos YX
- D 0 - I - 0x0093CC 02:93BC: 00        .byte $00 + $00 + $00   ; flags
- D 0 - I - 0x0093CD 02:93BD: 03        .byte con_obj_id_03   ; 

- D 0 - I - 0x0093CE 02:93BE: FF        .byte $FF   ; end token



_off019_00_93BF_2C:
- D 0 - I - 0x0093CF 02:93BF: 56        .byte $10 * $05 + $06   ; pos YX
- D 0 - I - 0x0093D0 02:93C0: 94        .byte $80 + $00 + $14   ; flags
- D 0 - I - 0x0093D1 02:93C1: 01        .byte con_obj_id_01   ; 

- D 0 - I - 0x0093D2 02:93C2: 4B        .byte $10 * $04 + $0B   ; pos YX
- D 0 - I - 0x0093D3 02:93C3: 82        .byte $80 + $00 + $02   ; flags
- D 0 - I - 0x0093D4 02:93C4: 09        .byte con_obj_id_09   ; 

- D 0 - I - 0x0093D5 02:93C5: 56        .byte $10 * $05 + $06   ; pos YX
- D 0 - I - 0x0093D6 02:93C6: 82        .byte $80 + $00 + $02   ; flags
- D 0 - I - 0x0093D7 02:93C7: 09        .byte con_obj_id_09   ; 

- D 0 - I - 0x0093D8 02:93C8: FF        .byte $FF   ; end token



_off019_00_93C9_2D:
- D 0 - I - 0x0093D9 02:93C9: 1B        .byte $10 * $01 + $0B   ; pos YX
- D 0 - I - 0x0093DA 02:93CA: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x0093DB 02:93CB: 6F        .byte con_obj_id_6F   ; 

- D 0 - I - 0x0093DC 02:93CC: 26        .byte $10 * $02 + $06   ; pos YX
- D 0 - I - 0x0093DD 02:93CD: 82        .byte $80 + $00 + $02   ; flags
- D 0 - I - 0x0093DE 02:93CE: 09        .byte con_obj_id_09   ; 

- D 0 - I - 0x0093DF 02:93CF: FF        .byte $FF   ; end token



_off019_00_93D0_2E:
- D 0 - I - 0x0093E0 02:93D0: FF        .byte $FF   ; end token



_off019_00_93D1_2F:
- D 0 - I - 0x0093E1 02:93D1: 11        .byte $10 * $01 + $01   ; pos YX
- D 0 - I - 0x0093E2 02:93D2: 85        .byte $80 + $00 + $05   ; flags
- D 0 - I - 0x0093E3 02:93D3: 07        .byte con_obj_id_07   ; 

- D 0 - I - 0x0093E4 02:93D4: FF        .byte $FF   ; end token



_off019_00_93D5_30:
- D 0 - I - 0x0093E5 02:93D5: FF        .byte $FF   ; end token



_off019_00_93D6_31:
- - - - - - 0x0093E6 02:93D6: FF        .byte $FF   ; end token



_off019_00_93D7_32:
- - - - - - 0x0093E7 02:93D7: FF        .byte $FF   ; end token



_off019_00_93D8_33:
- - - - - - 0x0093E8 02:93D8: FF        .byte $FF   ; end token



_off019_00_93D9_34:
- - - - - - 0x0093E9 02:93D9: FF        .byte $FF   ; end token



_off019_00_93DA_35:
- - - - - - 0x0093EA 02:93DA: FF        .byte $FF   ; end token



_off019_00_93DB_36:
- - - - - - 0x0093EB 02:93DB: FF        .byte $FF   ; end token



_off019_00_93DC_37:
- - - - - - 0x0093EC 02:93DC: FF        .byte $FF   ; end token



_off013_0x0093ED_01_area_2:
- - - - - - 0x0093ED 02:93DD: 15 94     .word _off019_01_9415_00
- - - - - - 0x0093EF 02:93DF: 15 94     .word _off019_01_9415_01
- D 0 - I - 0x0093F1 02:93E1: 16 94     .word _off019_01_9416_02
- D 0 - I - 0x0093F3 02:93E3: 15 94     .word _off019_01_9415_03
- D 0 - I - 0x0093F5 02:93E5: 1A 94     .word _off019_01_941A_04
- D 0 - I - 0x0093F7 02:93E7: 15 94     .word _off019_01_9415_05
- D 0 - I - 0x0093F9 02:93E9: 27 94     .word _off019_01_9427_06
- D 0 - I - 0x0093FB 02:93EB: 15 94     .word _off019_01_9415_07
- D 0 - I - 0x0093FD 02:93ED: 34 94     .word _off019_01_9434_08
- D 0 - I - 0x0093FF 02:93EF: 15 94     .word _off019_01_9415_09
- D 0 - I - 0x009401 02:93F1: 3E 94     .word _off019_01_943E_0A
- D 0 - I - 0x009403 02:93F3: 15 94     .word _off019_01_9415_0B
- D 0 - I - 0x009405 02:93F5: 4B 94     .word _off019_01_944B_0C
- D 0 - I - 0x009407 02:93F7: 15 94     .word _off019_01_9415_0D
- D 0 - I - 0x009409 02:93F9: 52 94     .word _off019_01_9452_0E
- D 0 - I - 0x00940B 02:93FB: 15 94     .word _off019_01_9415_0F
- D 0 - I - 0x00940D 02:93FD: 62 94     .word _off019_01_9462_10
- D 0 - I - 0x00940F 02:93FF: 15 94     .word _off019_01_9415_11
- D 0 - I - 0x009411 02:9401: 6F 94     .word _off019_01_946F_12
- D 0 - I - 0x009413 02:9403: 15 94     .word _off019_01_9415_13
- D 0 - I - 0x009415 02:9405: 73 94     .word _off019_01_9473_14
- D 0 - I - 0x009417 02:9407: 15 94     .word _off019_01_9415_15
- D 0 - I - 0x009419 02:9409: 7A 94     .word _off019_01_947A_16
- D 0 - I - 0x00941B 02:940B: 15 94     .word _off019_01_9415_17
- - - - - - 0x00941D 02:940D: 81 94     .word _off019_01_9481_18
- - - - - - 0x00941F 02:940F: 15 94     .word _off019_01_9415_19
- - - - - - 0x009421 02:9411: 82 94     .word _off019_01_9482_1A
- - - - - - 0x009423 02:9413: 15 94     .word _off019_01_9415_1B



_off019_01_9415_00:
_off019_01_9415_01:
_off019_01_9415_03:
_off019_01_9415_05:
_off019_01_9415_07:
_off019_01_9415_09:
_off019_01_9415_0B:
_off019_01_9415_0D:
_off019_01_9415_0F:
_off019_01_9415_11:
_off019_01_9415_13:
_off019_01_9415_15:
_off019_01_9415_17:
_off019_01_9415_19:
_off019_01_9415_1B:
- D 0 - I - 0x009425 02:9415: FF        .byte $FF   ; end token



_off019_01_9416_02:
- D 0 - I - 0x009426 02:9416: 40        .byte $10 * $04 + $00   ; pos YX
- D 0 - I - 0x009427 02:9417: C0        .byte $80 + $40 + $00   ; flags
- D 0 - I - 0x009428 02:9418: 69        .byte con_obj_id_69   ; 

- D 0 - I - 0x009429 02:9419: FF        .byte $FF   ; end token



_off019_01_941A_04:
- D 0 - I - 0x00942A 02:941A: 37        .byte $10 * $03 + $07   ; pos YX
- D 0 - I - 0x00942B 02:941B: C0        .byte $80 + $40 + $00   ; flags
- D 0 - I - 0x00942C 02:941C: 0D        .byte con_obj_id_0D   ; 

- D 0 - I - 0x00942D 02:941D: 58        .byte $10 * $05 + $08   ; pos YX
- D 0 - I - 0x00942E 02:941E: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x00942F 02:941F: 5C        .byte con_obj_id_5C   ; 

- D 0 - I - 0x009430 02:9420: 83        .byte $10 * $08 + $03   ; pos YX
- D 0 - I - 0x009431 02:9421: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009432 02:9422: 5C        .byte con_obj_id_5C   ; 

- D 0 - I - 0x009433 02:9423: 8C        .byte $10 * $08 + $0C   ; pos YX
- D 0 - I - 0x009434 02:9424: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009435 02:9425: 5C        .byte con_obj_id_5C   ; 

- D 0 - I - 0x009436 02:9426: FF        .byte $FF   ; end token



_off019_01_9427_06:
- D 0 - I - 0x009437 02:9427: 1D        .byte $10 * $01 + $0D   ; pos YX
- D 0 - I - 0x009438 02:9428: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009439 02:9429: 5B        .byte con_obj_id_5B   ; 

- D 0 - I - 0x00943A 02:942A: 11        .byte $10 * $01 + $01   ; pos YX
- D 0 - I - 0x00943B 02:942B: 81        .byte $80 + $00 + $01   ; flags
- D 0 - I - 0x00943C 02:942C: 5B        .byte con_obj_id_5B   ; 

- D 0 - I - 0x00943D 02:942D: D5        .byte $10 * $0D + $05   ; pos YX
- D 0 - I - 0x00943E 02:942E: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x00943F 02:942F: 5C        .byte con_obj_id_5C   ; 

- D 0 - I - 0x009440 02:9430: DA        .byte $10 * $0D + $0A   ; pos YX
- D 0 - I - 0x009441 02:9431: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009442 02:9432: 5C        .byte con_obj_id_5C   ; 

- D 0 - I - 0x009443 02:9433: FF        .byte $FF   ; end token



_off019_01_9434_08:
- D 0 - I - 0x009444 02:9434: 47        .byte $10 * $04 + $07   ; pos YX
- D 0 - I - 0x009445 02:9435: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009446 02:9436: 5C        .byte con_obj_id_5C   ; 

- D 0 - I - 0x009447 02:9437: B5        .byte $10 * $0B + $05   ; pos YX
- D 0 - I - 0x009448 02:9438: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009449 02:9439: 5C        .byte con_obj_id_5C   ; 

- D 0 - I - 0x00944A 02:943A: BA        .byte $10 * $0B + $0A   ; pos YX
- D 0 - I - 0x00944B 02:943B: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x00944C 02:943C: 5C        .byte con_obj_id_5C   ; 

- D 0 - I - 0x00944D 02:943D: FF        .byte $FF   ; end token



_off019_01_943E_0A:
- D 0 - I - 0x00944E 02:943E: 65        .byte $10 * $06 + $05   ; pos YX
- D 0 - I - 0x00944F 02:943F: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009450 02:9440: 5C        .byte con_obj_id_5C   ; 

- D 0 - I - 0x009451 02:9441: 6A        .byte $10 * $06 + $0A   ; pos YX
- D 0 - I - 0x009452 02:9442: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009453 02:9443: 5C        .byte con_obj_id_5C   ; 

- D 0 - I - 0x009454 02:9444: 78        .byte $10 * $07 + $08   ; pos YX
- D 0 - I - 0x009455 02:9445: B6        .byte $80 + $00 + $36   ; flags
- D 0 - I - 0x009456 02:9446: 01        .byte con_obj_id_01   ; 

- D 0 - I - 0x009457 02:9447: C1        .byte $10 * $0C + $01   ; pos YX
- D 0 - I - 0x009458 02:9448: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009459 02:9449: 5C        .byte con_obj_id_5C   ; 

- D 0 - I - 0x00945A 02:944A: FF        .byte $FF   ; end token



_off019_01_944B_0C:
- D 0 - I - 0x00945B 02:944B: 15        .byte $10 * $01 + $05   ; pos YX
- D 0 - I - 0x00945C 02:944C: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x00945D 02:944D: 5B        .byte con_obj_id_5B   ; 

- D 0 - I - 0x00945E 02:944E: 91        .byte $10 * $09 + $01   ; pos YX
- D 0 - I - 0x00945F 02:944F: 81        .byte $80 + $00 + $01   ; flags
- D 0 - I - 0x009460 02:9450: 5B        .byte con_obj_id_5B   ; 

- D 0 - I - 0x009461 02:9451: FF        .byte $FF   ; end token



_off019_01_9452_0E:
- D 0 - I - 0x009462 02:9452: 17        .byte $10 * $01 + $07   ; pos YX
- D 0 - I - 0x009463 02:9453: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009464 02:9454: 5C        .byte con_obj_id_5C   ; 

- D 0 - I - 0x009465 02:9455: 18        .byte $10 * $01 + $08   ; pos YX
- D 0 - I - 0x009466 02:9456: B2        .byte $80 + $00 + $32   ; flags
- D 0 - I - 0x009467 02:9457: 01        .byte con_obj_id_01   ; 

- D 0 - I - 0x009468 02:9458: 38        .byte $10 * $03 + $08   ; pos YX
- D 0 - I - 0x009469 02:9459: 81        .byte $80 + $00 + $01   ; flags
- D 0 - I - 0x00946A 02:945A: 01        .byte con_obj_id_01   ; 

- D 0 - I - 0x00946B 02:945B: A5        .byte $10 * $0A + $05   ; pos YX
- D 0 - I - 0x00946C 02:945C: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x00946D 02:945D: 5C        .byte con_obj_id_5C   ; 

- D 0 - I - 0x00946E 02:945E: AA        .byte $10 * $0A + $0A   ; pos YX
- D 0 - I - 0x00946F 02:945F: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009470 02:9460: 5C        .byte con_obj_id_5C   ; 

- D 0 - I - 0x009471 02:9461: FF        .byte $FF   ; end token



_off019_01_9462_10:
- D 0 - I - 0x009472 02:9462: 65        .byte $10 * $06 + $05   ; pos YX
- D 0 - I - 0x009473 02:9463: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009474 02:9464: 5C        .byte con_obj_id_5C   ; 

- D 0 - I - 0x009475 02:9465: 6A        .byte $10 * $06 + $0A   ; pos YX
- D 0 - I - 0x009476 02:9466: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009477 02:9467: 5C        .byte con_obj_id_5C   ; 

- D 0 - I - 0x009478 02:9468: B3        .byte $10 * $0B + $03   ; pos YX
- D 0 - I - 0x009479 02:9469: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x00947A 02:946A: 2E        .byte con_obj_id_2E   ; 

- D 0 - I - 0x00947B 02:946B: BB        .byte $10 * $0B + $0B   ; pos YX
- D 0 - I - 0x00947C 02:946C: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x00947D 02:946D: 2E        .byte con_obj_id_2E   ; 

- D 0 - I - 0x00947E 02:946E: FF        .byte $FF   ; end token



_off019_01_946F_12:
- D 0 - I - 0x00947F 02:946F: B7        .byte $10 * $0B + $07   ; pos YX
- D 0 - I - 0x009480 02:9470: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009481 02:9471: 2E        .byte con_obj_id_2E   ; 

- D 0 - I - 0x009482 02:9472: FF        .byte $FF   ; end token



_off019_01_9473_14:
- D 0 - I - 0x009483 02:9473: 18        .byte $10 * $01 + $08   ; pos YX
- D 0 - I - 0x009484 02:9474: B1        .byte $80 + $00 + $31   ; flags
- D 0 - I - 0x009485 02:9475: 01        .byte con_obj_id_01   ; 

- D 0 - I - 0x009486 02:9476: 38        .byte $10 * $03 + $08   ; pos YX
- D 0 - I - 0x009487 02:9477: 83        .byte $80 + $00 + $03   ; flags
- D 0 - I - 0x009488 02:9478: 01        .byte con_obj_id_01   ; 

- D 0 - I - 0x009489 02:9479: FF        .byte $FF   ; end token



_off019_01_947A_16:
- D 0 - I - 0x00948A 02:947A: 8D        .byte $10 * $08 + $0D   ; pos YX
- D 0 - I - 0x00948B 02:947B: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x00948C 02:947C: 5C        .byte con_obj_id_5C   ; 

- D 0 - I - 0x00948D 02:947D: B8        .byte $10 * $0B + $08   ; pos YX
- D 0 - I - 0x00948E 02:947E: B0        .byte $80 + $00 + $30   ; flags
- D 0 - I - 0x00948F 02:947F: 01        .byte con_obj_id_01   ; 

- D 0 - I - 0x009490 02:9480: FF        .byte $FF   ; end token



_off019_01_9481_18:
- - - - - - 0x009491 02:9481: FF        .byte $FF   ; end token



_off019_01_9482_1A:
- - - - - - 0x009492 02:9482: FF        .byte $FF   ; end token



_off013_0x009493_02_area_3:
- - - - - - 0x009493 02:9483: AF 94     .word _off019_02_94AF_00
- D 0 - I - 0x009495 02:9485: B0 94     .word _off019_02_94B0_01
- D 0 - I - 0x009497 02:9487: B7 94     .word _off019_02_94B7_02
- D 0 - I - 0x009499 02:9489: C4 94     .word _off019_02_94C4_03
- D 0 - I - 0x00949B 02:948B: D4 94     .word _off019_02_94D4_04
- D 0 - I - 0x00949D 02:948D: D8 94     .word _off019_02_94D8_05
- D 0 - I - 0x00949F 02:948F: DF 94     .word _off019_02_94DF_06
- D 0 - I - 0x0094A1 02:9491: F5 94     .word _off019_02_94F5_07
- D 0 - I - 0x0094A3 02:9493: F9 94     .word _off019_02_94F9_08
- D 0 - I - 0x0094A5 02:9495: 06 95     .word _off019_02_9506_09
- D 0 - I - 0x0094A7 02:9497: 0A 95     .word _off019_02_950A_0A
- D 0 - I - 0x0094A9 02:9499: 1D 95     .word _off019_02_951D_0B
- D 0 - I - 0x0094AB 02:949B: 27 95     .word _off019_02_9527_0C
- D 0 - I - 0x0094AD 02:949D: 3D 95     .word _off019_02_953D_0D
- D 0 - I - 0x0094AF 02:949F: 41 95     .word _off019_02_9541_0E
- D 0 - I - 0x0094B1 02:94A1: 45 95     .word _off019_02_9545_0F
- D 0 - I - 0x0094B3 02:94A3: 4C 95     .word _off019_02_954C_10
- D 0 - I - 0x0094B5 02:94A5: 4D 95     .word _off019_02_954D_11
- D 0 - I - 0x0094B7 02:94A7: 54 95     .word _off019_02_9554_12
- D 0 - I - 0x0094B9 02:94A9: 55 95     .word _off019_02_9555_13
- - - - - - 0x0094BB 02:94AB: 59 95     .word _off019_02_9559_14
- - - - - - 0x0094BD 02:94AD: 5A 95     .word _off019_02_955A_15



_off019_02_94AF_00:
- - - - - - 0x0094BF 02:94AF: FF        .byte $FF   ; end token



_off019_02_94B0_01:
- D 0 - I - 0x0094C0 02:94B0: 9E        .byte $10 * $09 + $0E   ; pos YX
- D 0 - I - 0x0094C1 02:94B1: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x0094C2 02:94B2: 26        .byte con_obj_id_26   ; 

- D 0 - I - 0x0094C3 02:94B3: B7        .byte $10 * $0B + $07   ; pos YX
- D 0 - I - 0x0094C4 02:94B4: 83        .byte $80 + $00 + $03   ; flags
- D 0 - I - 0x0094C5 02:94B5: 27        .byte con_obj_id_27   ; 

- D 0 - I - 0x0094C6 02:94B6: FF        .byte $FF   ; end token



_off019_02_94B7_02:
- D 0 - I - 0x0094C7 02:94B7: 97        .byte $10 * $09 + $07   ; pos YX
- D 0 - I - 0x0094C8 02:94B8: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x0094C9 02:94B9: 26        .byte con_obj_id_26   ; 

- D 0 - I - 0x0094CA 02:94BA: 3B        .byte $10 * $03 + $0B   ; pos YX
- D 0 - I - 0x0094CB 02:94BB: A2        .byte $80 + $00 + $22   ; flags
- D 0 - I - 0x0094CC 02:94BC: 09        .byte con_obj_id_09   ; 

- D 0 - I - 0x0094CD 02:94BD: 3B        .byte $10 * $03 + $0B   ; pos YX
- D 0 - I - 0x0094CE 02:94BE: 96        .byte $80 + $00 + $16   ; flags
- D 0 - I - 0x0094CF 02:94BF: 01        .byte con_obj_id_01   ; 

- D 0 - I - 0x0094D0 02:94C0: 8B        .byte $10 * $08 + $0B   ; pos YX
- D 0 - I - 0x0094D1 02:94C1: 94        .byte $80 + $00 + $14   ; flags
- D 0 - I - 0x0094D2 02:94C2: 01        .byte con_obj_id_01   ; 

- D 0 - I - 0x0094D3 02:94C3: FF        .byte $FF   ; end token



_off019_02_94C4_03:
- D 0 - I - 0x0094D4 02:94C4: 1B        .byte $10 * $01 + $0B   ; pos YX
- D 0 - I - 0x0094D5 02:94C5: 00        .byte $00 + $00 + $00   ; flags
- D 0 - I - 0x0094D6 02:94C6: 03        .byte con_obj_id_03   ; 

- D 0 - I - 0x0094D7 02:94C7: 1B        .byte $10 * $01 + $0B   ; pos YX
- D 0 - I - 0x0094D8 02:94C8: 01        .byte $00 + $00 + $01   ; flags
- D 0 - I - 0x0094D9 02:94C9: 03        .byte con_obj_id_03   ; 

- D 0 - I - 0x0094DA 02:94CA: 37        .byte $10 * $03 + $07   ; pos YX
- D 0 - I - 0x0094DB 02:94CB: A2        .byte $80 + $00 + $22   ; flags
- D 0 - I - 0x0094DC 02:94CC: 09        .byte con_obj_id_09   ; 

- D 0 - I - 0x0094DD 02:94CD: B3        .byte $10 * $0B + $03   ; pos YX
- D 0 - I - 0x0094DE 02:94CE: 83        .byte $80 + $00 + $03   ; flags
- D 0 - I - 0x0094DF 02:94CF: 27        .byte con_obj_id_27   ; 

- D 0 - I - 0x0094E0 02:94D0: BB        .byte $10 * $0B + $0B   ; pos YX
- D 0 - I - 0x0094E1 02:94D1: 83        .byte $80 + $00 + $03   ; flags
- D 0 - I - 0x0094E2 02:94D2: 27        .byte con_obj_id_27   ; 

- D 0 - I - 0x0094E3 02:94D3: FF        .byte $FF   ; end token



_off019_02_94D4_04:
- D 0 - I - 0x0094E4 02:94D4: 17        .byte $10 * $01 + $07   ; pos YX
- D 0 - I - 0x0094E5 02:94D5: 01        .byte $00 + $00 + $01   ; flags
- D 0 - I - 0x0094E6 02:94D6: 03        .byte con_obj_id_03   ; 

- D 0 - I - 0x0094E7 02:94D7: FF        .byte $FF   ; end token



_off019_02_94D8_05:
- D 0 - I - 0x0094E8 02:94D8: 42        .byte $10 * $04 + $02   ; pos YX
- D 0 - I - 0x0094E9 02:94D9: 10        .byte $10 + $00 + $00   ; flags
- D 0 - I - 0x0094EA 02:94DA: 01        .byte con_obj_id_01   ; 

- D 0 - I - 0x0094EB 02:94DB: 8A        .byte $10 * $08 + $0A   ; pos YX
- D 0 - I - 0x0094EC 02:94DC: 00        .byte $00 + $00 + $00   ; flags
- D 0 - I - 0x0094ED 02:94DD: 28        .byte con_obj_id_28   ; 
- D 0 - I - 0x0094EE 02:94DE: FF        .byte $FF   ; end token



_off019_02_94DF_06:
- D 0 - I - 0x0094EF 02:94DF: 14        .byte $10 * $01 + $04   ; pos YX
- D 0 - I - 0x0094F0 02:94E0: 01        .byte $00 + $00 + $01   ; flags
- D 0 - I - 0x0094F1 02:94E1: 03        .byte con_obj_id_03   ; 

- D 0 - I - 0x0094F2 02:94E2: 16        .byte $10 * $01 + $06   ; pos YX
- D 0 - I - 0x0094F3 02:94E3: 01        .byte $00 + $00 + $01   ; flags
- D 0 - I - 0x0094F4 02:94E4: 03        .byte con_obj_id_03   ; 

- D 0 - I - 0x0094F5 02:94E5: 39        .byte $10 * $03 + $09   ; pos YX
- D 0 - I - 0x0094F6 02:94E6: A1        .byte $80 + $00 + $21   ; flags
- D 0 - I - 0x0094F7 02:94E7: 09        .byte con_obj_id_09   ; 

- D 0 - I - 0x0094F8 02:94E8: 3C        .byte $10 * $03 + $0C   ; pos YX
- D 0 - I - 0x0094F9 02:94E9: A1        .byte $80 + $00 + $21   ; flags
- D 0 - I - 0x0094FA 02:94EA: 09        .byte con_obj_id_09   ; 

- D 0 - I - 0x0094FB 02:94EB: 3E        .byte $10 * $03 + $0E   ; pos YX
- D 0 - I - 0x0094FC 02:94EC: A1        .byte $80 + $00 + $21   ; flags
- D 0 - I - 0x0094FD 02:94ED: 09        .byte con_obj_id_09   ; 

- D 0 - I - 0x0094FE 02:94EE: 40        .byte $10 * $04 + $00   ; pos YX
- D 0 - I - 0x0094FF 02:94EF: 92        .byte $80 + $00 + $12   ; flags
- D 0 - I - 0x009500 02:94F0: 01        .byte con_obj_id_01   ; 

- D 0 - I - 0x009501 02:94F1: A6        .byte $10 * $0A + $06   ; pos YX
- D 0 - I - 0x009502 02:94F2: 85        .byte $80 + $00 + $05   ; flags
- D 0 - I - 0x009503 02:94F3: 07        .byte con_obj_id_07   ; 

- D 0 - I - 0x009504 02:94F4: FF        .byte $FF   ; end token



_off019_02_94F5_07:
- D 0 - I - 0x009505 02:94F5: 34        .byte $10 * $03 + $04   ; pos YX
- D 0 - I - 0x009506 02:94F6: A0        .byte $80 + $00 + $20   ; flags
- D 0 - I - 0x009507 02:94F7: 10        .byte con_obj_id_10   ; 

- D 0 - I - 0x009508 02:94F8: FF        .byte $FF   ; end token



_off019_02_94F9_08:
- D 0 - I - 0x009509 02:94F9: 37        .byte $10 * $03 + $07   ; pos YX
- D 0 - I - 0x00950A 02:94FA: A2        .byte $80 + $00 + $22   ; flags
- D 0 - I - 0x00950B 02:94FB: 09        .byte con_obj_id_09   ; 

- D 0 - I - 0x00950C 02:94FC: 3B        .byte $10 * $03 + $0B   ; pos YX
- D 0 - I - 0x00950D 02:94FD: A2        .byte $80 + $00 + $22   ; flags
- D 0 - I - 0x00950E 02:94FE: 09        .byte con_obj_id_09   ; 

- D 0 - I - 0x00950F 02:94FF: 84        .byte $10 * $08 + $04   ; pos YX
- D 0 - I - 0x009510 02:9500: 00        .byte $00 + $00 + $00   ; flags
- D 0 - I - 0x009511 02:9501: 26        .byte con_obj_id_26   ; 

- D 0 - I - 0x009512 02:9502: 8A        .byte $10 * $08 + $0A   ; pos YX
- D 0 - I - 0x009513 02:9503: 01        .byte $00 + $00 + $01   ; flags
- D 0 - I - 0x009514 02:9504: 26        .byte con_obj_id_26   ; 

- D 0 - I - 0x009515 02:9505: FF        .byte $FF   ; end token



_off019_02_9506_09:
- D 0 - I - 0x009516 02:9506: 33        .byte $10 * $03 + $03   ; pos YX
- D 0 - I - 0x009517 02:9507: A2        .byte $80 + $00 + $22   ; flags
- D 0 - I - 0x009518 02:9508: 09        .byte con_obj_id_09   ; 

- D 0 - I - 0x009519 02:9509: FF        .byte $FF   ; end token



_off019_02_950A_0A:
- D 0 - I - 0x00951A 02:950A: 17        .byte $10 * $01 + $07   ; pos YX
- D 0 - I - 0x00951B 02:950B: 00        .byte $00 + $00 + $00   ; flags
- D 0 - I - 0x00951C 02:950C: 03        .byte con_obj_id_03   ; 

- D 0 - I - 0x00951D 02:950D: 17        .byte $10 * $01 + $07   ; pos YX
- D 0 - I - 0x00951E 02:950E: 01        .byte $00 + $00 + $01   ; flags
- D 0 - I - 0x00951F 02:950F: 03        .byte con_obj_id_03   ; 

- D 0 - I - 0x009520 02:9510: 19        .byte $10 * $01 + $09   ; pos YX
- D 0 - I - 0x009521 02:9511: 00        .byte $00 + $00 + $00   ; flags
- D 0 - I - 0x009522 02:9512: 03        .byte con_obj_id_03   ; 

- D 0 - I - 0x009523 02:9513: 19        .byte $10 * $01 + $09   ; pos YX
- D 0 - I - 0x009524 02:9514: 01        .byte $00 + $00 + $01   ; flags
- D 0 - I - 0x009525 02:9515: 03        .byte con_obj_id_03   ; 

- D 0 - I - 0x009526 02:9516: 1B        .byte $10 * $01 + $0B   ; pos YX
- D 0 - I - 0x009527 02:9517: 00        .byte $00 + $00 + $00   ; flags
- D 0 - I - 0x009528 02:9518: 03        .byte con_obj_id_03   ; 

- D 0 - I - 0x009529 02:9519: 1B        .byte $10 * $01 + $0B   ; pos YX
- D 0 - I - 0x00952A 02:951A: 01        .byte $00 + $00 + $01   ; flags
- D 0 - I - 0x00952B 02:951B: 03        .byte con_obj_id_03   ; 

- D 0 - I - 0x00952C 02:951C: FF        .byte $FF   ; end token



_off019_02_951D_0B:
- D 0 - I - 0x00952D 02:951D: 33        .byte $10 * $03 + $03   ; pos YX
- D 0 - I - 0x00952E 02:951E: A2        .byte $80 + $00 + $22   ; flags
- D 0 - I - 0x00952F 02:951F: 09        .byte con_obj_id_09   ; 

- D 0 - I - 0x009530 02:9520: 3B        .byte $10 * $03 + $0B   ; pos YX
- D 0 - I - 0x009531 02:9521: A1        .byte $80 + $00 + $21   ; flags
- D 0 - I - 0x009532 02:9522: 09        .byte con_obj_id_09   ; 

- D 0 - I - 0x009533 02:9523: A8        .byte $10 * $0A + $08   ; pos YX
- D 0 - I - 0x009534 02:9524: 85        .byte $80 + $00 + $05   ; flags
- D 0 - I - 0x009535 02:9525: 07        .byte con_obj_id_07   ; 

- D 0 - I - 0x009536 02:9526: FF        .byte $FF   ; end token



_off019_02_9527_0C:
- D 0 - I - 0x009537 02:9527: 12        .byte $10 * $01 + $02   ; pos YX
- D 0 - I - 0x009538 02:9528: 00        .byte $00 + $00 + $00   ; flags
- D 0 - I - 0x009539 02:9529: 03        .byte con_obj_id_03   ; 

- D 0 - I - 0x00953A 02:952A: 12        .byte $10 * $01 + $02   ; pos YX
- D 0 - I - 0x00953B 02:952B: 01        .byte $00 + $00 + $01   ; flags
- D 0 - I - 0x00953C 02:952C: 03        .byte con_obj_id_03   ; 

- D 0 - I - 0x00953D 02:952D: 14        .byte $10 * $01 + $04   ; pos YX
- D 0 - I - 0x00953E 02:952E: 00        .byte $00 + $00 + $00   ; flags
- D 0 - I - 0x00953F 02:952F: 03        .byte con_obj_id_03   ; 

- D 0 - I - 0x009540 02:9530: 14        .byte $10 * $01 + $04   ; pos YX
- D 0 - I - 0x009541 02:9531: 01        .byte $00 + $00 + $01   ; flags
- D 0 - I - 0x009542 02:9532: 03        .byte con_obj_id_03   ; 

- D 0 - I - 0x009543 02:9533: 16        .byte $10 * $01 + $06   ; pos YX
- D 0 - I - 0x009544 02:9534: 00        .byte $00 + $00 + $00   ; flags
- D 0 - I - 0x009545 02:9535: 03        .byte con_obj_id_03   ; 

- D 0 - I - 0x009546 02:9536: 16        .byte $10 * $01 + $06   ; pos YX
- D 0 - I - 0x009547 02:9537: 01        .byte $00 + $00 + $01   ; flags
- D 0 - I - 0x009548 02:9538: 03        .byte con_obj_id_03   ; 

- D 0 - I - 0x009549 02:9539: 33        .byte $10 * $03 + $03   ; pos YX
- D 0 - I - 0x00954A 02:953A: A3        .byte $80 + $00 + $23   ; flags
- D 0 - I - 0x00954B 02:953B: 09        .byte con_obj_id_09   ; 

- D 0 - I - 0x00954C 02:953C: FF        .byte $FF   ; end token



_off019_02_953D_0D:
- D 0 - I - 0x00954D 02:953D: 34        .byte $10 * $03 + $04   ; pos YX
- D 0 - I - 0x00954E 02:953E: A0        .byte $80 + $00 + $20   ; flags
- D 0 - I - 0x00954F 02:953F: 10        .byte con_obj_id_10   ; 

- D 0 - I - 0x009550 02:9540: FF        .byte $FF   ; end token



_off019_02_9541_0E:
- D 0 - I - 0x009551 02:9541: 98        .byte $10 * $09 + $08   ; pos YX
- D 0 - I - 0x009552 02:9542: C0        .byte $80 + $40 + $00   ; flags
- D 0 - I - 0x009553 02:9543: 4E        .byte con_obj_id_4E   ; 

- D 0 - I - 0x009554 02:9544: FF        .byte $FF   ; end token



_off019_02_9545_0F:
- D 0 - I - 0x009555 02:9545: 48        .byte $10 * $04 + $08   ; pos YX
- D 0 - I - 0x009556 02:9546: C0        .byte $80 + $40 + $00   ; flags
- D 0 - I - 0x009557 02:9547: 3F        .byte con_obj_id_3F   ; 

- D 0 - I - 0x009558 02:9548: 5E        .byte $10 * $05 + $0E   ; pos YX
- D 0 - I - 0x009559 02:9549: 15        .byte $10 + $00 + $05   ; flags
- D 0 - I - 0x00955A 02:954A: 01        .byte con_obj_id_01   ; 

- D 0 - I - 0x00955B 02:954B: FF        .byte $FF   ; end token



_off019_02_954C_10:
- D 0 - I - 0x00955C 02:954C: FF        .byte $FF   ; end token



_off019_02_954D_11:
- D 0 - I - 0x00955D 02:954D: 45        .byte $10 * $04 + $05   ; pos YX
- D 0 - I - 0x00955E 02:954E: 11        .byte $10 + $00 + $01   ; flags
- D 0 - I - 0x00955F 02:954F: 01        .byte con_obj_id_01   ; 

- D 0 - I - 0x009560 02:9550: 75        .byte $10 * $07 + $05   ; pos YX
- D 0 - I - 0x009561 02:9551: 13        .byte $10 + $00 + $03   ; flags
- D 0 - I - 0x009562 02:9552: 01        .byte con_obj_id_01   ; 

- D 0 - I - 0x009563 02:9553: FF        .byte $FF   ; end token



_off019_02_9554_12:
- D 0 - I - 0x009564 02:9554: FF        .byte $FF   ; end token



_off019_02_9555_13:
- D 0 - I - 0x009565 02:9555: 8E        .byte $10 * $08 + $0E   ; pos YX
- D 0 - I - 0x009566 02:9556: C0        .byte $80 + $40 + $00   ; flags
- D 0 - I - 0x009567 02:9557: 4B        .byte con_obj_id_4B   ; 

- D 0 - I - 0x009568 02:9558: FF        .byte $FF   ; end token



_off019_02_9559_14:
- - - - - - 0x009569 02:9559: FF        .byte $FF   ; end token



_off019_02_955A_15:
- - - - - - 0x00956A 02:955A: FF        .byte $FF   ; end token



_off013_0x00956B_03_area_4:
- - - - - - 0x00956B 02:955B: 11 96     .word _off019_03_9611_00
- - - - - - 0x00956D 02:955D: 12 96     .word _off019_03_9612_01
- - - - - - 0x00956F 02:955F: 13 96     .word _off019_03_9613_02
- D 0 - I - 0x009571 02:9561: 14 96     .word _off019_03_9614_03
- D 0 - I - 0x009573 02:9563: 15 96     .word _off019_03_9615_04
- - - - - - 0x009575 02:9565: 16 96     .word _off019_03_9616_05
- - - - - - 0x009577 02:9567: 17 96     .word _off019_03_9617_06
- - - - - - 0x009579 02:9569: 18 96     .word _off019_03_9618_07
- - - - - - 0x00957B 02:956B: 19 96     .word _off019_03_9619_08
- - - - - - 0x00957D 02:956D: 1A 96     .word _off019_03_961A_09
- D 0 - I - 0x00957F 02:956F: 1B 96     .word _off019_03_961B_0A
- D 0 - I - 0x009581 02:9571: 43 96     .word _off019_03_9643_0B
- - - - - - 0x009583 02:9573: 44 96     .word _off019_03_9644_0C
- - - - - - 0x009585 02:9575: 45 96     .word _off019_03_9645_0D
- - - - - - 0x009587 02:9577: 46 96     .word _off019_03_9646_0E
- - - - - - 0x009589 02:9579: 47 96     .word _off019_03_9647_0F
- - - - - - 0x00958B 02:957B: 48 96     .word _off019_03_9648_10
- D 0 - I - 0x00958D 02:957D: 49 96     .word _off019_03_9649_11
- D 0 - I - 0x00958F 02:957F: 71 96     .word _off019_03_9671_12
- - - - - - 0x009591 02:9581: 72 96     .word _off019_03_9672_13
- - - - - - 0x009593 02:9583: 73 96     .word _off019_03_9673_14
- - - - - - 0x009595 02:9585: 74 96     .word _off019_03_9674_15
- - - - - - 0x009597 02:9587: 75 96     .word _off019_03_9675_16
- - - - - - 0x009599 02:9589: 76 96     .word _off019_03_9676_17
- D 0 - I - 0x00959B 02:958B: 77 96     .word _off019_03_9677_18
- D 0 - I - 0x00959D 02:958D: 96 96     .word _off019_03_9696_19
- - - - - - 0x00959F 02:958F: 97 96     .word _off019_03_9697_1A
- - - - - - 0x0095A1 02:9591: 98 96     .word _off019_03_9698_1B
- - - - - - 0x0095A3 02:9593: 99 96     .word _off019_03_9699_1C
- - - - - - 0x0095A5 02:9595: 9A 96     .word _off019_03_969A_1D
- - - - - - 0x0095A7 02:9597: 9B 96     .word _off019_03_969B_1E
- D 0 - I - 0x0095A9 02:9599: 9C 96     .word _off019_03_969C_1F
- D 0 - I - 0x0095AB 02:959B: A6 96     .word _off019_03_96A6_20
- - - - - - 0x0095AD 02:959D: A7 96     .word _off019_03_96A7_21
- - - - - - 0x0095AF 02:959F: A8 96     .word _off019_03_96A8_22
- - - - - - 0x0095B1 02:95A1: A9 96     .word _off019_03_96A9_23
- - - - - - 0x0095B3 02:95A3: AA 96     .word _off019_03_96AA_24
- - - - - - 0x0095B5 02:95A5: AB 96     .word _off019_03_96AB_25
- D 0 - I - 0x0095B7 02:95A7: AC 96     .word _off019_03_96AC_26
- D 0 - I - 0x0095B9 02:95A9: B9 96     .word _off019_03_96B9_27
- - - - - - 0x0095BB 02:95AB: BA 96     .word _off019_03_96BA_28
- - - - - - 0x0095BD 02:95AD: BB 96     .word _off019_03_96BB_29
- - - - - - 0x0095BF 02:95AF: BC 96     .word _off019_03_96BC_2A
- - - - - - 0x0095C1 02:95B1: BD 96     .word _off019_03_96BD_2B
- - - - - - 0x0095C3 02:95B3: BE 96     .word _off019_03_96BE_2C
- D 0 - I - 0x0095C5 02:95B5: BF 96     .word _off019_03_96BF_2D
- D 0 - I - 0x0095C7 02:95B7: CC 96     .word _off019_03_96CC_2E
- - - - - - 0x0095C9 02:95B9: CD 96     .word _off019_03_96CD_2F
- - - - - - 0x0095CB 02:95BB: CE 96     .word _off019_03_96CE_30
- - - - - - 0x0095CD 02:95BD: CF 96     .word _off019_03_96CF_31
- - - - - - 0x0095CF 02:95BF: D0 96     .word _off019_03_96D0_32
- - - - - - 0x0095D1 02:95C1: D1 96     .word _off019_03_96D1_33
- D 0 - I - 0x0095D3 02:95C3: D2 96     .word _off019_03_96D2_34
- D 0 - I - 0x0095D5 02:95C5: D9 96     .word _off019_03_96D9_35
- - - - - - 0x0095D7 02:95C7: DA 96     .word _off019_03_96DA_36
- - - - - - 0x0095D9 02:95C9: DB 96     .word _off019_03_96DB_37
- - - - - - 0x0095DB 02:95CB: DC 96     .word _off019_03_96DC_38
- - - - - - 0x0095DD 02:95CD: DD 96     .word _off019_03_96DD_39
- - - - - - 0x0095DF 02:95CF: DE 96     .word _off019_03_96DE_3A
- D 0 - I - 0x0095E1 02:95D1: DF 96     .word _off019_03_96DF_3B
- D 0 - I - 0x0095E3 02:95D3: EF 96     .word _off019_03_96EF_3C
- - - - - - 0x0095E5 02:95D5: F0 96     .word _off019_03_96F0_3D
- - - - - - 0x0095E7 02:95D7: F1 96     .word _off019_03_96F1_3E
- - - - - - 0x0095E9 02:95D9: F2 96     .word _off019_03_96F2_3F
- - - - - - 0x0095EB 02:95DB: F3 96     .word _off019_03_96F3_40
- - - - - - 0x0095ED 02:95DD: F4 96     .word _off019_03_96F4_41
- D 0 - I - 0x0095EF 02:95DF: F5 96     .word _off019_03_96F5_42
- D 0 - I - 0x0095F1 02:95E1: FF 96     .word _off019_03_96FF_43
- - - - - - 0x0095F3 02:95E3: 00 97     .word _off019_03_9700_44
- - - - - - 0x0095F5 02:95E5: 01 97     .word _off019_03_9701_45
- - - - - - 0x0095F7 02:95E7: 02 97     .word _off019_03_9702_46
- - - - - - 0x0095F9 02:95E9: 03 97     .word _off019_03_9703_47
- - - - - - 0x0095FB 02:95EB: 04 97     .word _off019_03_9704_48
- D 0 - I - 0x0095FD 02:95ED: 05 97     .word _off019_03_9705_49
- D 0 - I - 0x0095FF 02:95EF: 0F 97     .word _off019_03_970F_4A
- - - - - - 0x009601 02:95F1: 10 97     .word _off019_03_9710_4B
- - - - - - 0x009603 02:95F3: 11 97     .word _off019_03_9711_4C
- - - - - - 0x009605 02:95F5: 12 97     .word _off019_03_9712_4D
- - - - - - 0x009607 02:95F7: 13 97     .word _off019_03_9713_4E
- - - - - - 0x009609 02:95F9: 14 97     .word _off019_03_9714_4F
- D 0 - I - 0x00960B 02:95FB: 15 97     .word _off019_03_9715_50
- D 0 - I - 0x00960D 02:95FD: 22 97     .word _off019_03_9722_51
- - - - - - 0x00960F 02:95FF: 23 97     .word _off019_03_9723_52
- - - - - - 0x009611 02:9601: 24 97     .word _off019_03_9724_53
- - - - - - 0x009613 02:9603: 25 97     .word _off019_03_9725_54
- D 0 - I - 0x009615 02:9605: 26 97     .word _off019_03_9726_55
- D 0 - I - 0x009617 02:9607: 3C 97     .word _off019_03_973C_56
- D 0 - I - 0x009619 02:9609: 55 97     .word _off019_03_9755_57
- - - - - - 0x00961B 02:960B: 6B 97     .word _off019_03_976B_58
- - - - - - 0x00961D 02:960D: 6C 97     .word _off019_03_976C_59
- - - - - - 0x00961F 02:960F: 6D 97     .word _off019_03_976D_5A



_off019_03_9611_00:
- - - - - - 0x009621 02:9611: FF        .byte $FF   ; end token



_off019_03_9612_01:
- - - - - - 0x009622 02:9612: FF        .byte $FF   ; end token



_off019_03_9613_02:
- - - - - - 0x009623 02:9613: FF        .byte $FF   ; end token



_off019_03_9614_03:
- D 0 - I - 0x009624 02:9614: FF        .byte $FF   ; end token



_off019_03_9615_04:
- D 0 - I - 0x009625 02:9615: FF        .byte $FF   ; end token



_off019_03_9616_05:
- - - - - - 0x009626 02:9616: FF        .byte $FF   ; end token



_off019_03_9617_06:
- - - - - - 0x009627 02:9617: FF        .byte $FF   ; end token



_off019_03_9618_07:
- - - - - - 0x009628 02:9618: FF        .byte $FF   ; end token



_off019_03_9619_08:
- - - - - - 0x009629 02:9619: FF        .byte $FF   ; end token



_off019_03_961A_09:
- - - - - - 0x00962A 02:961A: FF        .byte $FF   ; end token



_off019_03_961B_0A:
- D 0 - I - 0x00962B 02:961B: 48        .byte $10 * $04 + $08   ; pos YX
- D 0 - I - 0x00962C 02:961C: C0        .byte $80 + $40 + $00   ; flags
- D 0 - I - 0x00962D 02:961D: 42        .byte con_obj_id_42   ; 

- D 0 - I - 0x00962E 02:961E: 71        .byte $10 * $07 + $01   ; pos YX
- D 0 - I - 0x00962F 02:961F: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009630 02:9620: 31        .byte con_obj_id_31   ; 

- D 0 - I - 0x009631 02:9621: 77        .byte $10 * $07 + $07   ; pos YX
- D 0 - I - 0x009632 02:9622: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009633 02:9623: 31        .byte con_obj_id_31   ; 

- D 0 - I - 0x009634 02:9624: 79        .byte $10 * $07 + $09   ; pos YX
- D 0 - I - 0x009635 02:9625: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009636 02:9626: 31        .byte con_obj_id_31   ; 

- D 0 - I - 0x009637 02:9627: 7E        .byte $10 * $07 + $0E   ; pos YX
- D 0 - I - 0x009638 02:9628: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009639 02:9629: 31        .byte con_obj_id_31   ; 

- D 0 - I - 0x00963A 02:962A: A4        .byte $10 * $0A + $04   ; pos YX
- D 0 - I - 0x00963B 02:962B: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x00963C 02:962C: 31        .byte con_obj_id_31   ; 

- D 0 - I - 0x00963D 02:962D: A6        .byte $10 * $0A + $06   ; pos YX
- D 0 - I - 0x00963E 02:962E: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x00963F 02:962F: 31        .byte con_obj_id_31   ; 

- D 0 - I - 0x009640 02:9630: A8        .byte $10 * $0A + $08   ; pos YX
- D 0 - I - 0x009641 02:9631: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009642 02:9632: 31        .byte con_obj_id_31   ; 

- D 0 - I - 0x009643 02:9633: AC        .byte $10 * $0A + $0C   ; pos YX
- D 0 - I - 0x009644 02:9634: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009645 02:9635: 31        .byte con_obj_id_31   ; 

- D 0 - I - 0x009646 02:9636: D5        .byte $10 * $0D + $05   ; pos YX
- D 0 - I - 0x009647 02:9637: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009648 02:9638: 31        .byte con_obj_id_31   ; 

- D 0 - I - 0x009649 02:9639: D8        .byte $10 * $0D + $08   ; pos YX
- D 0 - I - 0x00964A 02:963A: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x00964B 02:963B: 31        .byte con_obj_id_31   ; 

- D 0 - I - 0x00964C 02:963C: DB        .byte $10 * $0D + $0B   ; pos YX
- D 0 - I - 0x00964D 02:963D: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x00964E 02:963E: 31        .byte con_obj_id_31   ; 

- D 0 - I - 0x00964F 02:963F: DE        .byte $10 * $0D + $0E   ; pos YX
- D 0 - I - 0x009650 02:9640: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009651 02:9641: 31        .byte con_obj_id_31   ; 

- D 0 - I - 0x009652 02:9642: FF        .byte $FF   ; end token



_off019_03_9643_0B:
- D 0 - I - 0x009653 02:9643: FF        .byte $FF   ; end token



_off019_03_9644_0C:
- - - - - - 0x009654 02:9644: FF        .byte $FF   ; end token



_off019_03_9645_0D:
- - - - - - 0x009655 02:9645: FF        .byte $FF   ; end token



_off019_03_9646_0E:
- - - - - - 0x009656 02:9646: FF        .byte $FF   ; end token



_off019_03_9647_0F:
- - - - - - 0x009657 02:9647: FF        .byte $FF   ; end token



_off019_03_9648_10:
- - - - - - 0x009658 02:9648: FF        .byte $FF   ; end token



_off019_03_9649_11:
- D 0 - I - 0x009659 02:9649: 15        .byte $10 * $01 + $05   ; pos YX
- D 0 - I - 0x00965A 02:964A: 81        .byte $80 + $00 + $01   ; flags
- D 0 - I - 0x00965B 02:964B: 40        .byte con_obj_id_40   ; 

- D 0 - I - 0x00965C 02:964C: 1A        .byte $10 * $01 + $0A   ; pos YX
- D 0 - I - 0x00965D 02:964D: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x00965E 02:964E: 40        .byte con_obj_id_40   ; 

- D 0 - I - 0x00965F 02:964F: 3E        .byte $10 * $03 + $0E   ; pos YX
- D 0 - I - 0x009660 02:9650: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009661 02:9651: 40        .byte con_obj_id_40   ; 

- D 0 - I - 0x009662 02:9652: 41        .byte $10 * $04 + $01   ; pos YX
- D 0 - I - 0x009663 02:9653: 81        .byte $80 + $00 + $01   ; flags
- D 0 - I - 0x009664 02:9654: 41        .byte con_obj_id_41   ; 

- D 0 - I - 0x009665 02:9655: 65        .byte $10 * $06 + $05   ; pos YX
- D 0 - I - 0x009666 02:9656: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009667 02:9657: 31        .byte con_obj_id_31   ; 

- D 0 - I - 0x009668 02:9658: 68        .byte $10 * $06 + $08   ; pos YX
- D 0 - I - 0x009669 02:9659: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x00966A 02:965A: 31        .byte con_obj_id_31   ; 

- D 0 - I - 0x00966B 02:965B: 7B        .byte $10 * $07 + $0B   ; pos YX
- D 0 - I - 0x00966C 02:965C: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x00966D 02:965D: 31        .byte con_obj_id_31   ; 

- D 0 - I - 0x00966E 02:965E: 7E        .byte $10 * $07 + $0E   ; pos YX
- D 0 - I - 0x00966F 02:965F: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009670 02:9660: 31        .byte con_obj_id_31   ; 

- D 0 - I - 0x009671 02:9661: AE        .byte $10 * $0A + $0E   ; pos YX
- D 0 - I - 0x009672 02:9662: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009673 02:9663: 41        .byte con_obj_id_41   ; 

- D 0 - I - 0x009674 02:9664: A2        .byte $10 * $0A + $02   ; pos YX
- D 0 - I - 0x009675 02:9665: 81        .byte $80 + $00 + $01   ; flags
- D 0 - I - 0x009676 02:9666: 40        .byte con_obj_id_40   ; 

- D 0 - I - 0x009677 02:9667: A8        .byte $10 * $0A + $08   ; pos YX
- D 0 - I - 0x009678 02:9668: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009679 02:9669: 40        .byte con_obj_id_40   ; 

- D 0 - I - 0x00967A 02:966A: D4        .byte $10 * $0D + $04   ; pos YX
- D 0 - I - 0x00967B 02:966B: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x00967C 02:966C: 31        .byte con_obj_id_31   ; 

- D 0 - I - 0x00967D 02:966D: DA        .byte $10 * $0D + $0A   ; pos YX
- D 0 - I - 0x00967E 02:966E: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x00967F 02:966F: 31        .byte con_obj_id_31   ; 

- D 0 - I - 0x009680 02:9670: FF        .byte $FF   ; end token



_off019_03_9671_12:
- D 0 - I - 0x009681 02:9671: FF        .byte $FF   ; end token



_off019_03_9672_13:
- - - - - - 0x009682 02:9672: FF        .byte $FF   ; end token



_off019_03_9673_14:
- - - - - - 0x009683 02:9673: FF        .byte $FF   ; end token



_off019_03_9674_15:
- - - - - - 0x009684 02:9674: FF        .byte $FF   ; end token



_off019_03_9675_16:
- - - - - - 0x009685 02:9675: FF        .byte $FF   ; end token



_off019_03_9676_17:
- - - - - - 0x009686 02:9676: FF        .byte $FF   ; end token



_off019_03_9677_18:
- D 0 - I - 0x009687 02:9677: 22        .byte $10 * $02 + $02   ; pos YX
- D 0 - I - 0x009688 02:9678: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009689 02:9679: 31        .byte con_obj_id_31   ; 

- D 0 - I - 0x00968A 02:967A: 2D        .byte $10 * $02 + $0D   ; pos YX
- D 0 - I - 0x00968B 02:967B: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x00968C 02:967C: 31        .byte con_obj_id_31   ; 

- D 0 - I - 0x00968D 02:967D: 56        .byte $10 * $05 + $06   ; pos YX
- D 0 - I - 0x00968E 02:967E: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x00968F 02:967F: 31        .byte con_obj_id_31   ; 

- D 0 - I - 0x009690 02:9680: 5A        .byte $10 * $05 + $0A   ; pos YX
- D 0 - I - 0x009691 02:9681: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009692 02:9682: 31        .byte con_obj_id_31   ; 

- D 0 - I - 0x009693 02:9683: 73        .byte $10 * $07 + $03   ; pos YX
- D 0 - I - 0x009694 02:9684: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009695 02:9685: 31        .byte con_obj_id_31   ; 

- D 0 - I - 0x009696 02:9686: 8A        .byte $10 * $08 + $0A   ; pos YX
- D 0 - I - 0x009697 02:9687: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009698 02:9688: 31        .byte con_obj_id_31   ; 

- D 0 - I - 0x009699 02:9689: AC        .byte $10 * $0A + $0C   ; pos YX
- D 0 - I - 0x00969A 02:968A: A1        .byte $80 + $00 + $21   ; flags
- D 0 - I - 0x00969B 02:968B: 01        .byte con_obj_id_01   ; 

- D 0 - I - 0x00969C 02:968C: A4        .byte $10 * $0A + $04   ; pos YX
- D 0 - I - 0x00969D 02:968D: A2        .byte $80 + $00 + $22   ; flags
- D 0 - I - 0x00969E 02:968E: 01        .byte con_obj_id_01   ; 

- D 0 - I - 0x00969F 02:968F: B8        .byte $10 * $0B + $08   ; pos YX
- D 0 - I - 0x0096A0 02:9690: 81        .byte $80 + $00 + $01   ; flags
- D 0 - I - 0x0096A1 02:9691: 25        .byte con_obj_id_25   ; 

- D 0 - I - 0x0096A2 02:9692: D8        .byte $10 * $0D + $08   ; pos YX
- D 0 - I - 0x0096A3 02:9693: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x0096A4 02:9694: 25        .byte con_obj_id_25   ; 

- D 0 - I - 0x0096A5 02:9695: FF        .byte $FF   ; end token



_off019_03_9696_19:
- D 0 - I - 0x0096A6 02:9696: FF        .byte $FF   ; end token



_off019_03_9697_1A:
- - - - - - 0x0096A7 02:9697: FF        .byte $FF   ; end token



_off019_03_9698_1B:
- - - - - - 0x0096A8 02:9698: FF        .byte $FF   ; end token



_off019_03_9699_1C:
- - - - - - 0x0096A9 02:9699: FF        .byte $FF   ; end token



_off019_03_969A_1D:
- - - - - - 0x0096AA 02:969A: FF        .byte $FF   ; end token



_off019_03_969B_1E:
- - - - - - 0x0096AB 02:969B: FF        .byte $FF   ; end token



_off019_03_969C_1F:
- D 0 - I - 0x0096AC 02:969C: 62        .byte $10 * $06 + $02   ; pos YX
- D 0 - I - 0x0096AD 02:969D: 92        .byte $80 + $00 + $12   ; flags
- D 0 - I - 0x0096AE 02:969E: 0A        .byte con_obj_id_0A   ; 

- D 0 - I - 0x0096AF 02:969F: 6C        .byte $10 * $06 + $0C   ; pos YX
- D 0 - I - 0x0096B0 02:96A0: 92        .byte $80 + $00 + $12   ; flags
- D 0 - I - 0x0096B1 02:96A1: 0A        .byte con_obj_id_0A   ; 

- D 0 - I - 0x0096B2 02:96A2: D8        .byte $10 * $0D + $08   ; pos YX
- D 0 - I - 0x0096B3 02:96A3: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x0096B4 02:96A4: 25        .byte con_obj_id_25   ; 

- D 0 - I - 0x0096B5 02:96A5: FF        .byte $FF   ; end token



_off019_03_96A6_20:
- D 0 - I - 0x0096B6 02:96A6: FF        .byte $FF   ; end token



_off019_03_96A7_21:
- - - - - - 0x0096B7 02:96A7: FF        .byte $FF   ; end token



_off019_03_96A8_22:
- - - - - - 0x0096B8 02:96A8: FF        .byte $FF   ; end token



_off019_03_96A9_23:
- - - - - - 0x0096B9 02:96A9: FF        .byte $FF   ; end token



_off019_03_96AA_24:
- - - - - - 0x0096BA 02:96AA: FF        .byte $FF   ; end token



_off019_03_96AB_25:
- - - - - - 0x0096BB 02:96AB: FF        .byte $FF   ; end token



_off019_03_96AC_26:
- D 0 - I - 0x0096BC 02:96AC: 28        .byte $10 * $02 + $08   ; pos YX
- D 0 - I - 0x0096BD 02:96AD: 81        .byte $80 + $00 + $01   ; flags
- D 0 - I - 0x0096BE 02:96AE: 25        .byte con_obj_id_25   ; 

- D 0 - I - 0x0096BF 02:96AF: 94        .byte $10 * $09 + $04   ; pos YX
- D 0 - I - 0x0096C0 02:96B0: C0        .byte $80 + $40 + $00   ; flags
- D 0 - I - 0x0096C1 02:96B1: 39        .byte con_obj_id_39   ; 

- D 0 - I - 0x0096C2 02:96B2: 92        .byte $10 * $09 + $02   ; pos YX
- D 0 - I - 0x0096C3 02:96B3: 81        .byte $80 + $00 + $01   ; flags
- D 0 - I - 0x0096C4 02:96B4: 40        .byte con_obj_id_40   ; 

- D 0 - I - 0x0096C5 02:96B5: 9C        .byte $10 * $09 + $0C   ; pos YX
- D 0 - I - 0x0096C6 02:96B6: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x0096C7 02:96B7: 40        .byte con_obj_id_40   ; 

- D 0 - I - 0x0096C8 02:96B8: FF        .byte $FF   ; end token



_off019_03_96B9_27:
- D 0 - I - 0x0096C9 02:96B9: FF        .byte $FF   ; end token



_off019_03_96BA_28:
- - - - - - 0x0096CA 02:96BA: FF        .byte $FF   ; end token



_off019_03_96BB_29:
- - - - - - 0x0096CB 02:96BB: FF        .byte $FF   ; end token



_off019_03_96BC_2A:
- - - - - - 0x0096CC 02:96BC: FF        .byte $FF   ; end token



_off019_03_96BD_2B:
- - - - - - 0x0096CD 02:96BD: FF        .byte $FF   ; end token



_off019_03_96BE_2C:
- - - - - - 0x0096CE 02:96BE: FF        .byte $FF   ; end token



_off019_03_96BF_2D:
- D 0 - I - 0x0096CF 02:96BF: 11        .byte $10 * $01 + $01   ; pos YX
- D 0 - I - 0x0096D0 02:96C0: 81        .byte $80 + $00 + $01   ; flags
- D 0 - I - 0x0096D1 02:96C1: 41        .byte con_obj_id_41   ; 

- D 0 - I - 0x0096D2 02:96C2: 15        .byte $10 * $01 + $05   ; pos YX
- D 0 - I - 0x0096D3 02:96C3: 82        .byte $80 + $00 + $02   ; flags
- D 0 - I - 0x0096D4 02:96C4: 09        .byte con_obj_id_09   ; 

- D 0 - I - 0x0096D5 02:96C5: 2E        .byte $10 * $02 + $0E   ; pos YX
- D 0 - I - 0x0096D6 02:96C6: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x0096D7 02:96C7: 41        .byte con_obj_id_41   ; 

- D 0 - I - 0x0096D8 02:96C8: 66        .byte $10 * $06 + $06   ; pos YX
- D 0 - I - 0x0096D9 02:96C9: 82        .byte $80 + $00 + $02   ; flags
- D 0 - I - 0x0096DA 02:96CA: 09        .byte con_obj_id_09   ; 

- D 0 - I - 0x0096DB 02:96CB: FF        .byte $FF   ; end token



_off019_03_96CC_2E:
- D 0 - I - 0x0096DC 02:96CC: FF        .byte $FF   ; end token



_off019_03_96CD_2F:
- - - - - - 0x0096DD 02:96CD: FF        .byte $FF   ; end token



_off019_03_96CE_30:
- - - - - - 0x0096DE 02:96CE: FF        .byte $FF   ; end token



_off019_03_96CF_31:
- - - - - - 0x0096DF 02:96CF: FF        .byte $FF   ; end token



_off019_03_96D0_32:
- - - - - - 0x0096E0 02:96D0: FF        .byte $FF   ; end token



_off019_03_96D1_33:
- - - - - - 0x0096E1 02:96D1: FF        .byte $FF   ; end token



_off019_03_96D2_34:
- D 0 - I - 0x0096E2 02:96D2: 44        .byte $10 * $04 + $04   ; pos YX
- D 0 - I - 0x0096E3 02:96D3: 92        .byte $80 + $00 + $12   ; flags
- D 0 - I - 0x0096E4 02:96D4: 0A        .byte con_obj_id_0A   ; 

- D 0 - I - 0x0096E5 02:96D5: 4A        .byte $10 * $04 + $0A   ; pos YX
- D 0 - I - 0x0096E6 02:96D6: 92        .byte $80 + $00 + $12   ; flags
- D 0 - I - 0x0096E7 02:96D7: 0A        .byte con_obj_id_0A   ; 

- D 0 - I - 0x0096E8 02:96D8: FF        .byte $FF   ; end token



_off019_03_96D9_35:
- D 0 - I - 0x0096E9 02:96D9: FF        .byte $FF   ; end token



_off019_03_96DA_36:
- - - - - - 0x0096EA 02:96DA: FF        .byte $FF   ; end token



_off019_03_96DB_37:
- - - - - - 0x0096EB 02:96DB: FF        .byte $FF   ; end token



_off019_03_96DC_38:
- - - - - - 0x0096EC 02:96DC: FF        .byte $FF   ; end token



_off019_03_96DD_39:
- - - - - - 0x0096ED 02:96DD: FF        .byte $FF   ; end token



_off019_03_96DE_3A:
- - - - - - 0x0096EE 02:96DE: FF        .byte $FF   ; end token



_off019_03_96DF_3B:
- D 0 - I - 0x0096EF 02:96DF: 05        .byte $10 * $00 + $05   ; pos YX
- D 0 - I - 0x0096F0 02:96E0: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x0096F1 02:96E1: 31        .byte con_obj_id_31   ; 

- D 0 - I - 0x0096F2 02:96E2: 09        .byte $10 * $00 + $09   ; pos YX
- D 0 - I - 0x0096F3 02:96E3: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x0096F4 02:96E4: 31        .byte con_obj_id_31   ; 

- D 0 - I - 0x0096F5 02:96E5: 14        .byte $10 * $01 + $04   ; pos YX
- D 0 - I - 0x0096F6 02:96E6: A0        .byte $80 + $00 + $20   ; flags
- D 0 - I - 0x0096F7 02:96E7: 01        .byte con_obj_id_01   ; 

- D 0 - I - 0x0096F8 02:96E8: 2B        .byte $10 * $02 + $0B   ; pos YX
- D 0 - I - 0x0096F9 02:96E9: A4        .byte $80 + $00 + $24   ; flags
- D 0 - I - 0x0096FA 02:96EA: 01        .byte con_obj_id_01   ; 

- D 0 - I - 0x0096FB 02:96EB: 94        .byte $10 * $09 + $04   ; pos YX
- D 0 - I - 0x0096FC 02:96EC: C0        .byte $80 + $40 + $00   ; flags
- D 0 - I - 0x0096FD 02:96ED: 39        .byte con_obj_id_39   ; 

- D 0 - I - 0x0096FE 02:96EE: FF        .byte $FF   ; end token



_off019_03_96EF_3C:
- D 0 - I - 0x0096FF 02:96EF: FF        .byte $FF   ; end token



_off019_03_96F0_3D:
- - - - - - 0x009700 02:96F0: FF        .byte $FF   ; end token



_off019_03_96F1_3E:
- - - - - - 0x009701 02:96F1: FF        .byte $FF   ; end token



_off019_03_96F2_3F:
- - - - - - 0x009702 02:96F2: FF        .byte $FF   ; end token



_off019_03_96F3_40:
- - - - - - 0x009703 02:96F3: FF        .byte $FF   ; end token



_off019_03_96F4_41:
- - - - - - 0x009704 02:96F4: FF        .byte $FF   ; end token



_off019_03_96F5_42:
- D 0 - I - 0x009705 02:96F5: 18        .byte $10 * $01 + $08   ; pos YX
- D 0 - I - 0x009706 02:96F6: C0        .byte $80 + $40 + $00   ; flags
- D 0 - I - 0x009707 02:96F7: 2C        .byte con_obj_id_2C   ; 

- D 0 - I - 0x009708 02:96F8: 41        .byte $10 * $04 + $01   ; pos YX
- D 0 - I - 0x009709 02:96F9: 01        .byte $00 + $00 + $01   ; flags
- D 0 - I - 0x00970A 02:96FA: 41        .byte con_obj_id_41   ; 

- D 0 - I - 0x00970B 02:96FB: 48        .byte $10 * $04 + $08   ; pos YX
- D 0 - I - 0x00970C 02:96FC: 82        .byte $80 + $00 + $02   ; flags
- D 0 - I - 0x00970D 02:96FD: 0A        .byte con_obj_id_0A   ; 

- D 0 - I - 0x00970E 02:96FE: FF        .byte $FF   ; end token



_off019_03_96FF_43:
- D 0 - I - 0x00970F 02:96FF: FF        .byte $FF   ; end token



_off019_03_9700_44:
- - - - - - 0x009710 02:9700: FF        .byte $FF   ; end token



_off019_03_9701_45:
- - - - - - 0x009711 02:9701: FF        .byte $FF   ; end token



_off019_03_9702_46:
- - - - - - 0x009712 02:9702: FF        .byte $FF   ; end token



_off019_03_9703_47:
- - - - - - 0x009713 02:9703: FF        .byte $FF   ; end token



_off019_03_9704_48:
- - - - - - 0x009714 02:9704: FF        .byte $FF   ; end token



_off019_03_9705_49:
- D 0 - I - 0x009715 02:9705: 08        .byte $10 * $00 + $08   ; pos YX
- D 0 - I - 0x009716 02:9706: 82        .byte $80 + $00 + $02   ; flags
- D 0 - I - 0x009717 02:9707: 0A        .byte con_obj_id_0A   ; 

- D 0 - I - 0x009718 02:9708: 24        .byte $10 * $02 + $04   ; pos YX
- D 0 - I - 0x009719 02:9709: 82        .byte $80 + $00 + $02   ; flags
- D 0 - I - 0x00971A 02:970A: 0A        .byte con_obj_id_0A   ; 

- D 0 - I - 0x00971B 02:970B: 6E        .byte $10 * $06 + $0E   ; pos YX
- D 0 - I - 0x00971C 02:970C: 00        .byte $00 + $00 + $00   ; flags
- D 0 - I - 0x00971D 02:970D: 41        .byte con_obj_id_41   ; 

- D 0 - I - 0x00971E 02:970E: FF        .byte $FF   ; end token



_off019_03_970F_4A:
- D 0 - I - 0x00971F 02:970F: FF        .byte $FF   ; end token



_off019_03_9710_4B:
- - - - - - 0x009720 02:9710: FF        .byte $FF   ; end token



_off019_03_9711_4C:
- - - - - - 0x009721 02:9711: FF        .byte $FF   ; end token



_off019_03_9712_4D:
- - - - - - 0x009722 02:9712: FF        .byte $FF   ; end token



_off019_03_9713_4E:
- - - - - - 0x009723 02:9713: FF        .byte $FF   ; end token



_off019_03_9714_4F:
- - - - - - 0x009724 02:9714: FF        .byte $FF   ; end token



_off019_03_9715_50:
- D 0 - I - 0x009725 02:9715: 11        .byte $10 * $01 + $01   ; pos YX
- D 0 - I - 0x009726 02:9716: 01        .byte $00 + $00 + $01   ; flags
- D 0 - I - 0x009727 02:9717: 41        .byte con_obj_id_41   ; 

- D 0 - I - 0x009728 02:9718: 42        .byte $10 * $04 + $02   ; pos YX
- D 0 - I - 0x009729 02:9719: 82        .byte $80 + $00 + $02   ; flags
- D 0 - I - 0x00972A 02:971A: 0A        .byte con_obj_id_0A   ; 

- D 0 - I - 0x00972B 02:971B: 4A        .byte $10 * $04 + $0A   ; pos YX
- D 0 - I - 0x00972C 02:971C: 81        .byte $80 + $00 + $01   ; flags
- D 0 - I - 0x00972D 02:971D: 0A        .byte con_obj_id_0A   ; 

- D 0 - I - 0x00972E 02:971E: 9E        .byte $10 * $09 + $0E   ; pos YX
- D 0 - I - 0x00972F 02:971F: 00        .byte $00 + $00 + $00   ; flags
- D 0 - I - 0x009730 02:9720: 41        .byte con_obj_id_41   ; 

- D 0 - I - 0x009731 02:9721: FF        .byte $FF   ; end token



_off019_03_9722_51:
- D 0 - I - 0x009732 02:9722: FF        .byte $FF   ; end token



_off019_03_9723_52:
- - - - - - 0x009733 02:9723: FF        .byte $FF   ; end token



_off019_03_9724_53:
- - - - - - 0x009734 02:9724: FF        .byte $FF   ; end token



_off019_03_9725_54:
- - - - - - 0x009735 02:9725: FF        .byte $FF   ; end token



_off019_03_9726_55:
- D 0 - I - 0x009736 02:9726: 52        .byte $10 * $05 + $02   ; pos YX
- D 0 - I - 0x009737 02:9727: 00        .byte $00 + $00 + $00   ; flags
- D 0 - I - 0x009738 02:9728: 6C        .byte con_obj_id_6C   ; 

- D 0 - I - 0x009739 02:9729: 91        .byte $10 * $09 + $01   ; pos YX
- D 0 - I - 0x00973A 02:972A: 00        .byte $00 + $00 + $00   ; flags
- D 0 - I - 0x00973B 02:972B: 03        .byte con_obj_id_03   ; 

- D 0 - I - 0x00973C 02:972C: 91        .byte $10 * $09 + $01   ; pos YX
- D 0 - I - 0x00973D 02:972D: 01        .byte $00 + $00 + $01   ; flags
- D 0 - I - 0x00973E 02:972E: 03        .byte con_obj_id_03   ; 

- D 0 - I - 0x00973F 02:972F: 9A        .byte $10 * $09 + $0A   ; pos YX
- D 0 - I - 0x009740 02:9730: 00        .byte $00 + $00 + $00   ; flags
- D 0 - I - 0x009741 02:9731: 03        .byte con_obj_id_03   ; 

- D 0 - I - 0x009742 02:9732: 9C        .byte $10 * $09 + $0C   ; pos YX
- D 0 - I - 0x009743 02:9733: 01        .byte $00 + $00 + $01   ; flags
- D 0 - I - 0x009744 02:9734: 03        .byte con_obj_id_03   ; 

- D 0 - I - 0x009745 02:9735: 9F        .byte $10 * $09 + $0F   ; pos YX
- D 0 - I - 0x009746 02:9736: 01        .byte $00 + $00 + $01   ; flags
- D 0 - I - 0x009747 02:9737: 03        .byte con_obj_id_03   ; 

- D 0 - I - 0x009748 02:9738: 67        .byte $10 * $06 + $07   ; pos YX
- D 0 - I - 0x009749 02:9739: 90        .byte $80 + $00 + $10   ; flags
- D 0 - I - 0x00974A 02:973A: 01        .byte con_obj_id_01   ; 

- D 0 - I - 0x00974B 02:973B: FF        .byte $FF   ; end token



_off019_03_973C_56:
- D 0 - I - 0x00974C 02:973C: 52        .byte $10 * $05 + $02   ; pos YX
- D 0 - I - 0x00974D 02:973D: 00        .byte $00 + $00 + $00   ; flags
- D 0 - I - 0x00974E 02:973E: 6C        .byte con_obj_id_6C   ; 

- D 0 - I - 0x00974F 02:973F: 92        .byte $10 * $09 + $02   ; pos YX
- D 0 - I - 0x009750 02:9740: 09        .byte $00 + $00 + $09   ; flags
- D 0 - I - 0x009751 02:9741: 03        .byte con_obj_id_03   ; 

- D 0 - I - 0x009752 02:9742: 95        .byte $10 * $09 + $05   ; pos YX
- D 0 - I - 0x009753 02:9743: 01        .byte $00 + $00 + $01   ; flags
- D 0 - I - 0x009754 02:9744: 03        .byte con_obj_id_03   ; 

- D 0 - I - 0x009755 02:9745: 95        .byte $10 * $09 + $05   ; pos YX
- D 0 - I - 0x009756 02:9746: 00        .byte $00 + $00 + $00   ; flags
- D 0 - I - 0x009757 02:9747: 03        .byte con_obj_id_03   ; 

- D 0 - I - 0x009758 02:9748: 9B        .byte $10 * $09 + $0B   ; pos YX
- D 0 - I - 0x009759 02:9749: 00        .byte $00 + $00 + $00   ; flags
- D 0 - I - 0x00975A 02:974A: 03        .byte con_obj_id_03   ; 

- D 0 - I - 0x00975B 02:974B: 9C        .byte $10 * $09 + $0C   ; pos YX
- D 0 - I - 0x00975C 02:974C: 09        .byte $00 + $00 + $09   ; flags
- D 0 - I - 0x00975D 02:974D: 03        .byte con_obj_id_03   ; 

- D 0 - I - 0x00975E 02:974E: 9E        .byte $10 * $09 + $0E   ; pos YX
- D 0 - I - 0x00975F 02:974F: 08        .byte $00 + $00 + $08   ; flags
- D 0 - I - 0x009760 02:9750: 03        .byte con_obj_id_03   ; 

- D 0 - I - 0x009761 02:9751: 9E        .byte $10 * $09 + $0E   ; pos YX
- D 0 - I - 0x009762 02:9752: 01        .byte $00 + $00 + $01   ; flags
- D 0 - I - 0x009763 02:9753: 03        .byte con_obj_id_03   ; 

- D 0 - I - 0x009764 02:9754: FF        .byte $FF   ; end token



_off019_03_9755_57:
- D 0 - I - 0x009765 02:9755: 18        .byte $10 * $01 + $08   ; pos YX
- D 0 - I - 0x009766 02:9756: C0        .byte $80 + $40 + $00   ; flags
- D 0 - I - 0x009767 02:9757: 2C        .byte con_obj_id_2C   ; 

- D 0 - I - 0x009768 02:9758: 45        .byte $10 * $04 + $05   ; pos YX
- D 0 - I - 0x009769 02:9759: 82        .byte $80 + $00 + $02   ; flags
- D 0 - I - 0x00976A 02:975A: 09        .byte con_obj_id_09   ; 

- D 0 - I - 0x00976B 02:975B: 4A        .byte $10 * $04 + $0A   ; pos YX
- D 0 - I - 0x00976C 02:975C: 82        .byte $80 + $00 + $02   ; flags
- D 0 - I - 0x00976D 02:975D: 09        .byte con_obj_id_09   ; 

- D 0 - I - 0x00976E 02:975E: 91        .byte $10 * $09 + $01   ; pos YX
- D 0 - I - 0x00976F 02:975F: 00        .byte $00 + $00 + $00   ; flags
- D 0 - I - 0x009770 02:9760: 03        .byte con_obj_id_03   ; 

- D 0 - I - 0x009771 02:9761: 91        .byte $10 * $09 + $01   ; pos YX
- D 0 - I - 0x009772 02:9762: 01        .byte $00 + $00 + $01   ; flags
- D 0 - I - 0x009773 02:9763: 03        .byte con_obj_id_03   ; 

- D 0 - I - 0x009774 02:9764: 96        .byte $10 * $09 + $06   ; pos YX
- D 0 - I - 0x009775 02:9765: 09        .byte $00 + $00 + $09   ; flags
- D 0 - I - 0x009776 02:9766: 03        .byte con_obj_id_03   ; 

- D 0 - I - 0x009777 02:9767: 98        .byte $10 * $09 + $08   ; pos YX
- D 0 - I - 0x009778 02:9768: 01        .byte $00 + $00 + $01   ; flags
- D 0 - I - 0x009779 02:9769: 03        .byte con_obj_id_03   ; 

- D 0 - I - 0x00977A 02:976A: FF        .byte $FF   ; end token



_off019_03_976B_58:
- - - - - - 0x00977B 02:976B: FF        .byte $FF   ; end token



_off019_03_976C_59:
- - - - - - 0x00977C 02:976C: FF        .byte $FF   ; end token



_off019_03_976D_5A:
- - - - - - 0x00977D 02:976D: FF        .byte $FF   ; end token



_off013_0x00977E_04_area_5:
- D 0 - I - 0x00977E 02:976E: EC 97     .word _off019_04_97EC_00
- D 0 - I - 0x009780 02:9770: F6 97     .word _off019_04_97F6_01
- D 0 - I - 0x009782 02:9772: F7 97     .word _off019_04_97F7_02
- D 0 - I - 0x009784 02:9774: F8 97     .word _off019_04_97F8_03
- - - - - - 0x009786 02:9776: F9 97     .word _off019_04_97F9_04
- - - - - - 0x009788 02:9778: FA 97     .word _off019_04_97FA_05
- - - - - - 0x00978A 02:977A: FB 97     .word _off019_04_97FB_06
- - - - - - 0x00978C 02:977C: FC 97     .word _off019_04_97FC_07
- - - - - - 0x00978E 02:977E: FD 97     .word _off019_04_97FD_08
- D 0 - I - 0x009790 02:9780: FE 97     .word _off019_04_97FE_09
- D 0 - I - 0x009792 02:9782: 0B 98     .word _off019_04_980B_0A
- D 0 - I - 0x009794 02:9784: 0C 98     .word _off019_04_980C_0B
- D 0 - I - 0x009796 02:9786: 10 98     .word _off019_04_9810_0C
- D 0 - I - 0x009798 02:9788: 14 98     .word _off019_04_9814_0D
- D 0 - I - 0x00979A 02:978A: 15 98     .word _off019_04_9815_0E
- - - - - - 0x00979C 02:978C: 16 98     .word _off019_04_9816_0F
- - - - - - 0x00979E 02:978E: 17 98     .word _off019_04_9817_10
- - - - - - 0x0097A0 02:9790: 18 98     .word _off019_04_9818_11
- D 0 - I - 0x0097A2 02:9792: 19 98     .word _off019_04_9819_12
- D 0 - I - 0x0097A4 02:9794: 26 98     .word _off019_04_9826_13
- D 0 - I - 0x0097A6 02:9796: 27 98     .word _off019_04_9827_14
- D 0 - I - 0x0097A8 02:9798: 28 98     .word _off019_04_9828_15
- D 0 - I - 0x0097AA 02:979A: 2C 98     .word _off019_04_982C_16
- D 0 - I - 0x0097AC 02:979C: 30 98     .word _off019_04_9830_17
- - - - - - 0x0097AE 02:979E: 34 98     .word _off019_04_9834_18
- - - - - - 0x0097B0 02:97A0: 35 98     .word _off019_04_9835_19
- - - - - - 0x0097B2 02:97A2: 36 98     .word _off019_04_9836_1A
- D 0 - I - 0x0097B4 02:97A4: 37 98     .word _off019_04_9837_1B
- D 0 - I - 0x0097B6 02:97A6: 47 98     .word _off019_04_9847_1C
- - - - - - 0x0097B8 02:97A8: 48 98     .word _off019_04_9848_1D
- - - - - - 0x0097BA 02:97AA: 49 98     .word _off019_04_9849_1E
- - - - - - 0x0097BC 02:97AC: 4A 98     .word _off019_04_984A_1F
- - - - - - 0x0097BE 02:97AE: 4B 98     .word _off019_04_984B_20
- - - - - - 0x0097C0 02:97B0: 4C 98     .word _off019_04_984C_21
- - - - - - 0x0097C2 02:97B2: 4D 98     .word _off019_04_984D_22
- - - - - - 0x0097C4 02:97B4: 4E 98     .word _off019_04_984E_23
- D 0 - I - 0x0097C6 02:97B6: 4F 98     .word _off019_04_984F_24
- D 0 - I - 0x0097C8 02:97B8: 59 98     .word _off019_04_9859_25
- - - - - - 0x0097CA 02:97BA: 5A 98     .word _off019_04_985A_26
- - - - - - 0x0097CC 02:97BC: 5B 98     .word _off019_04_985B_27
- - - - - - 0x0097CE 02:97BE: 5C 98     .word _off019_04_985C_28
- - - - - - 0x0097D0 02:97C0: 5D 98     .word _off019_04_985D_29
- - - - - - 0x0097D2 02:97C2: 5E 98     .word _off019_04_985E_2A
- - - - - - 0x0097D4 02:97C4: 5F 98     .word _off019_04_985F_2B
- - - - - - 0x0097D6 02:97C6: 60 98     .word _off019_04_9860_2C
- D 0 - I - 0x0097D8 02:97C8: 61 98     .word _off019_04_9861_2D
- D 0 - I - 0x0097DA 02:97CA: 71 98     .word _off019_04_9871_2E
- - - - - - 0x0097DC 02:97CC: 72 98     .word _off019_04_9872_2F
- - - - - - 0x0097DE 02:97CE: 73 98     .word _off019_04_9873_30
- - - - - - 0x0097E0 02:97D0: 74 98     .word _off019_04_9874_31
- - - - - - 0x0097E2 02:97D2: 75 98     .word _off019_04_9875_32
- - - - - - 0x0097E4 02:97D4: 76 98     .word _off019_04_9876_33
- - - - - - 0x0097E6 02:97D6: 77 98     .word _off019_04_9877_34
- - - - - - 0x0097E8 02:97D8: 78 98     .word _off019_04_9878_35
- - - - - - 0x0097EA 02:97DA: 79 98     .word _off019_04_9879_36
- - - - - - 0x0097EC 02:97DC: 7A 98     .word _off019_04_987A_37
- - - - - - 0x0097EE 02:97DE: 7B 98     .word _off019_04_987B_38
- - - - - - 0x0097F0 02:97E0: 7C 98     .word _off019_04_987C_39
- - - - - - 0x0097F2 02:97E2: 7D 98     .word _off019_04_987D_3A
- - - - - - 0x0097F4 02:97E4: 7E 98     .word _off019_04_987E_3B
- - - - - - 0x0097F6 02:97E6: 7F 98     .word _off019_04_987F_3C
- - - - - - 0x0097F8 02:97E8: 80 98     .word _off019_04_9880_3D
- - - - - - 0x0097FA 02:97EA: 81 98     .word _off019_04_9881_3E



_off019_04_97EC_00:
- D 0 - I - 0x0097FC 02:97EC: AA        .byte $10 * $0A + $0A   ; pos YX
- D 0 - I - 0x0097FD 02:97ED: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x0097FE 02:97EE: 2F        .byte con_obj_id_2F   ; 

- D 0 - I - 0x0097FF 02:97EF: C1        .byte $10 * $0C + $01   ; pos YX
- D 0 - I - 0x009800 02:97F0: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009801 02:97F1: 2F        .byte con_obj_id_2F   ; 

- D 0 - I - 0x009802 02:97F2: D6        .byte $10 * $0D + $06   ; pos YX
- D 0 - I - 0x009803 02:97F3: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009804 02:97F4: 2F        .byte con_obj_id_2F   ; 

- D 0 - I - 0x009805 02:97F5: FF        .byte $FF   ; end token



_off019_04_97F6_01:
- D 0 - I - 0x009806 02:97F6: FF        .byte $FF   ; end token



_off019_04_97F7_02:
- D 0 - I - 0x009807 02:97F7: FF        .byte $FF   ; end token



_off019_04_97F8_03:
- D 0 - I - 0x009808 02:97F8: FF        .byte $FF   ; end token



_off019_04_97F9_04:
- - - - - - 0x009809 02:97F9: FF        .byte $FF   ; end token



_off019_04_97FA_05:
- - - - - - 0x00980A 02:97FA: FF        .byte $FF   ; end token



_off019_04_97FB_06:
- - - - - - 0x00980B 02:97FB: FF        .byte $FF   ; end token



_off019_04_97FC_07:
- - - - - - 0x00980C 02:97FC: FF        .byte $FF   ; end token



_off019_04_97FD_08:
- - - - - - 0x00980D 02:97FD: FF        .byte $FF   ; end token



_off019_04_97FE_09:
- D 0 - I - 0x00980E 02:97FE: 03        .byte $10 * $00 + $03   ; pos YX
- D 0 - I - 0x00980F 02:97FF: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009810 02:9800: 2F        .byte con_obj_id_2F   ; 

- D 0 - I - 0x009811 02:9801: 28        .byte $10 * $02 + $08   ; pos YX
- D 0 - I - 0x009812 02:9802: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009813 02:9803: 2F        .byte con_obj_id_2F   ; 

- D 0 - I - 0x009814 02:9804: 43        .byte $10 * $04 + $03   ; pos YX
- D 0 - I - 0x009815 02:9805: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009816 02:9806: 2F        .byte con_obj_id_2F   ; 

- D 0 - I - 0x009817 02:9807: 7B        .byte $10 * $07 + $0B   ; pos YX
- D 0 - I - 0x009818 02:9808: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009819 02:9809: 2F        .byte con_obj_id_2F   ; 

- D 0 - I - 0x00981A 02:980A: FF        .byte $FF   ; end token



_off019_04_980B_0A:
- D 0 - I - 0x00981B 02:980B: FF        .byte $FF   ; end token



_off019_04_980C_0B:
- D 0 - I - 0x00981C 02:980C: 59        .byte $10 * $05 + $09   ; pos YX
- D 0 - I - 0x00981D 02:980D: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x00981E 02:980E: 58        .byte con_obj_id_58   ; 

- D 0 - I - 0x00981F 02:980F: FF        .byte $FF   ; end token



_off019_04_9810_0C:
- D 0 - I - 0x009820 02:9810: E9        .byte $10 * $0E + $09   ; pos YX
- D 0 - I - 0x009821 02:9811: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009822 02:9812: 32        .byte con_obj_id_32   ; 

- D 0 - I - 0x009823 02:9813: FF        .byte $FF   ; end token



_off019_04_9814_0D:
- D 0 - I - 0x009824 02:9814: FF        .byte $FF   ; end token



_off019_04_9815_0E:
- D 0 - I - 0x009825 02:9815: FF        .byte $FF   ; end token



_off019_04_9816_0F:
- - - - - - 0x009826 02:9816: FF        .byte $FF   ; end token



_off019_04_9817_10:
- - - - - - 0x009827 02:9817: FF        .byte $FF   ; end token



_off019_04_9818_11:
- - - - - - 0x009828 02:9818: FF        .byte $FF   ; end token



_off019_04_9819_12:
- D 0 - I - 0x009829 02:9819: 13        .byte $10 * $01 + $03   ; pos YX
- D 0 - I - 0x00982A 02:981A: 82        .byte $80 + $00 + $02   ; flags
- D 0 - I - 0x00982B 02:981B: 09        .byte con_obj_id_09   ; 

- D 0 - I - 0x00982C 02:981C: 4A        .byte $10 * $04 + $0A   ; pos YX
- D 0 - I - 0x00982D 02:981D: 81        .byte $80 + $00 + $01   ; flags
- D 0 - I - 0x00982E 02:981E: 09        .byte con_obj_id_09   ; 

- D 0 - I - 0x00982F 02:981F: 81        .byte $10 * $08 + $01   ; pos YX
- D 0 - I - 0x009830 02:9820: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009831 02:9821: 34        .byte con_obj_id_34   ; 

- D 0 - I - 0x009832 02:9822: 8E        .byte $10 * $08 + $0E   ; pos YX
- D 0 - I - 0x009833 02:9823: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009834 02:9824: 34        .byte con_obj_id_34   ; 

- D 0 - I - 0x009835 02:9825: FF        .byte $FF   ; end token



_off019_04_9826_13:
- D 0 - I - 0x009836 02:9826: FF        .byte $FF   ; end token



_off019_04_9827_14:
- D 0 - I - 0x009837 02:9827: FF        .byte $FF   ; end token



_off019_04_9828_15:
- D 0 - I - 0x009838 02:9828: 1B        .byte $10 * $01 + $0B   ; pos YX
- D 0 - I - 0x009839 02:9829: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x00983A 02:982A: 58        .byte con_obj_id_58   ; 

- D 0 - I - 0x00983B 02:982B: FF        .byte $FF   ; end token



_off019_04_982C_16:
- D 0 - I - 0x00983C 02:982C: AD        .byte $10 * $0A + $0D   ; pos YX
- D 0 - I - 0x00983D 02:982D: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x00983E 02:982E: 32        .byte con_obj_id_32   ; 

- D 0 - I - 0x00983F 02:982F: FF        .byte $FF   ; end token



_off019_04_9830_17:
- D 0 - I - 0x009840 02:9830: 88        .byte $10 * $08 + $08   ; pos YX
- D 0 - I - 0x009841 02:9831: C0        .byte $80 + $40 + $00   ; flags
- D 0 - I - 0x009842 02:9832: 59        .byte con_obj_id_59   ; 

- D 0 - I - 0x009843 02:9833: FF        .byte $FF   ; end token



_off019_04_9834_18:
- - - - - - 0x009844 02:9834: FF        .byte $FF   ; end token



_off019_04_9835_19:
- - - - - - 0x009845 02:9835: FF        .byte $FF   ; end token



_off019_04_9836_1A:
- - - - - - 0x009846 02:9836: FF        .byte $FF   ; end token



_off019_04_9837_1B:
- D 0 - I - 0x009847 02:9837: 0E        .byte $10 * $00 + $0E   ; pos YX
- D 0 - I - 0x009848 02:9838: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009849 02:9839: 34        .byte con_obj_id_34   ; 

- D 0 - I - 0x00984A 02:983A: 21        .byte $10 * $02 + $01   ; pos YX
- D 0 - I - 0x00984B 02:983B: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x00984C 02:983C: 34        .byte con_obj_id_34   ; 

- D 0 - I - 0x00984D 02:983D: 56        .byte $10 * $05 + $06   ; pos YX
- D 0 - I - 0x00984E 02:983E: A6        .byte $80 + $00 + $26   ; flags
- D 0 - I - 0x00984F 02:983F: 01        .byte con_obj_id_01   ; 

- D 0 - I - 0x009850 02:9840: 6B        .byte $10 * $06 + $0B   ; pos YX
- D 0 - I - 0x009851 02:9841: A1        .byte $80 + $00 + $21   ; flags
- D 0 - I - 0x009852 02:9842: 01        .byte con_obj_id_01   ; 

- D 0 - I - 0x009853 02:9843: A6        .byte $10 * $0A + $06   ; pos YX
- D 0 - I - 0x009854 02:9844: 84        .byte $80 + $00 + $04   ; flags
- D 0 - I - 0x009855 02:9845: 04        .byte con_obj_id_04   ; 

- D 0 - I - 0x009856 02:9846: FF        .byte $FF   ; end token



_off019_04_9847_1C:
- D 0 - I - 0x009857 02:9847: FF        .byte $FF   ; end token



_off019_04_9848_1D:
- - - - - - 0x009858 02:9848: FF        .byte $FF   ; end token



_off019_04_9849_1E:
- - - - - - 0x009859 02:9849: FF        .byte $FF   ; end token



_off019_04_984A_1F:
- - - - - - 0x00985A 02:984A: FF        .byte $FF   ; end token



_off019_04_984B_20:
- - - - - - 0x00985B 02:984B: FF        .byte $FF   ; end token



_off019_04_984C_21:
- - - - - - 0x00985C 02:984C: FF        .byte $FF   ; end token



_off019_04_984D_22:
- - - - - - 0x00985D 02:984D: FF        .byte $FF   ; end token



_off019_04_984E_23:
- - - - - - 0x00985E 02:984E: FF        .byte $FF   ; end token



_off019_04_984F_24:
- D 0 - I - 0x00985F 02:984F: 0A        .byte $10 * $00 + $0A   ; pos YX
- D 0 - I - 0x009860 02:9850: 8B        .byte $80 + $00 + $0B   ; flags
- D 0 - I - 0x009861 02:9851: 0A        .byte con_obj_id_0A   ; 

- D 0 - I - 0x009862 02:9852: 42        .byte $10 * $04 + $02   ; pos YX
- D 0 - I - 0x009863 02:9853: 83        .byte $80 + $00 + $03   ; flags
- D 0 - I - 0x009864 02:9854: 09        .byte con_obj_id_09   ; 

- D 0 - I - 0x009865 02:9855: C0        .byte $10 * $0C + $00   ; pos YX
- D 0 - I - 0x009866 02:9856: 8A        .byte $80 + $00 + $0A   ; flags
- D 0 - I - 0x009867 02:9857: 0A        .byte con_obj_id_0A   ; 

- D 0 - I - 0x009868 02:9858: FF        .byte $FF   ; end token



_off019_04_9859_25:
- D 0 - I - 0x009869 02:9859: FF        .byte $FF   ; end token



_off019_04_985A_26:
- - - - - - 0x00986A 02:985A: FF        .byte $FF   ; end token



_off019_04_985B_27:
- - - - - - 0x00986B 02:985B: FF        .byte $FF   ; end token



_off019_04_985C_28:
- - - - - - 0x00986C 02:985C: FF        .byte $FF   ; end token



_off019_04_985D_29:
- - - - - - 0x00986D 02:985D: FF        .byte $FF   ; end token



_off019_04_985E_2A:
- - - - - - 0x00986E 02:985E: FF        .byte $FF   ; end token



_off019_04_985F_2B:
- - - - - - 0x00986F 02:985F: FF        .byte $FF   ; end token



_off019_04_9860_2C:
- - - - - - 0x009870 02:9860: FF        .byte $FF   ; end token



_off019_04_9861_2D:
- D 0 - I - 0x009871 02:9861: 0E        .byte $10 * $00 + $0E   ; pos YX
- D 0 - I - 0x009872 02:9862: 8A        .byte $80 + $00 + $0A   ; flags
- D 0 - I - 0x009873 02:9863: 0A        .byte con_obj_id_0A   ; 

- D 0 - I - 0x009874 02:9864: 60        .byte $10 * $06 + $00   ; pos YX
- D 0 - I - 0x009875 02:9865: 84        .byte $80 + $00 + $04   ; flags
- D 0 - I - 0x009876 02:9866: 0B        .byte con_obj_id_0B   ; 

- D 0 - I - 0x009877 02:9867: 8C        .byte $10 * $08 + $0C   ; pos YX
- D 0 - I - 0x009878 02:9868: 83        .byte $80 + $00 + $03   ; flags
- D 0 - I - 0x009879 02:9869: 04        .byte con_obj_id_04   ; 

- D 0 - I - 0x00987A 02:986A: CA        .byte $10 * $0C + $0A   ; pos YX
- D 0 - I - 0x00987B 02:986B: 85        .byte $80 + $00 + $05   ; flags
- D 0 - I - 0x00987C 02:986C: 0B        .byte con_obj_id_0B   ; 

- D 0 - I - 0x00987D 02:986D: EE        .byte $10 * $0E + $0E   ; pos YX
- D 0 - I - 0x00987E 02:986E: 90        .byte $80 + $00 + $10   ; flags
- D 0 - I - 0x00987F 02:986F: 04        .byte con_obj_id_04   ; 

- D 0 - I - 0x009880 02:9870: FF        .byte $FF   ; end token



_off019_04_9871_2E:
- D 0 - I - 0x009881 02:9871: FF        .byte $FF   ; end token



_off019_04_9872_2F:
- - - - - - 0x009882 02:9872: FF        .byte $FF   ; end token



_off019_04_9873_30:
- - - - - - 0x009883 02:9873: FF        .byte $FF   ; end token



_off019_04_9874_31:
- - - - - - 0x009884 02:9874: FF        .byte $FF   ; end token



_off019_04_9875_32:
- - - - - - 0x009885 02:9875: FF        .byte $FF   ; end token



_off019_04_9876_33:
- - - - - - 0x009886 02:9876: FF        .byte $FF   ; end token



_off019_04_9877_34:
- - - - - - 0x009887 02:9877: FF        .byte $FF   ; end token



_off019_04_9878_35:
- - - - - - 0x009888 02:9878: FF        .byte $FF   ; end token



_off019_04_9879_36:
- - - - - - 0x009889 02:9879: FF        .byte $FF   ; end token



_off019_04_987A_37:
- - - - - - 0x00988A 02:987A: FF        .byte $FF   ; end token



_off019_04_987B_38:
- - - - - - 0x00988B 02:987B: FF        .byte $FF   ; end token



_off019_04_987C_39:
- - - - - - 0x00988C 02:987C: FF        .byte $FF   ; end token



_off019_04_987D_3A:
- - - - - - 0x00988D 02:987D: FF        .byte $FF   ; end token



_off019_04_987E_3B:
- - - - - - 0x00988E 02:987E: FF        .byte $FF   ; end token



_off019_04_987F_3C:
- - - - - - 0x00988F 02:987F: FF        .byte $FF   ; end token



_off019_04_9880_3D:
- - - - - - 0x009890 02:9880: FF        .byte $FF   ; end token



_off019_04_9881_3E:
- - - - - - 0x009891 02:9881: FF        .byte $FF   ; end token



_off013_0x009892_05_area_6:
- - - - - - 0x009892 02:9882: BA 98     .word _off019_05_98BA_00
- - - - - - 0x009894 02:9884: BA 98     .word _off019_05_98BA_01
- D 0 - I - 0x009896 02:9886: BB 98     .word _off019_05_98BB_02
- D 0 - I - 0x009898 02:9888: BA 98     .word _off019_05_98BA_03
- D 0 - I - 0x00989A 02:988A: C8 98     .word _off019_05_98C8_04
- D 0 - I - 0x00989C 02:988C: BA 98     .word _off019_05_98BA_05
- D 0 - I - 0x00989E 02:988E: CC 98     .word _off019_05_98CC_06
- D 0 - I - 0x0098A0 02:9890: BA 98     .word _off019_05_98BA_07
- D 0 - I - 0x0098A2 02:9892: D0 98     .word _off019_05_98D0_08
- D 0 - I - 0x0098A4 02:9894: BA 98     .word _off019_05_98BA_09
- D 0 - I - 0x0098A6 02:9896: EC 98     .word _off019_05_98EC_0A
- D 0 - I - 0x0098A8 02:9898: BA 98     .word _off019_05_98BA_0B
- D 0 - I - 0x0098AA 02:989A: 05 99     .word _off019_05_9905_0C
- D 0 - I - 0x0098AC 02:989C: BA 98     .word _off019_05_98BA_0D
- D 0 - I - 0x0098AE 02:989E: 06 99     .word _off019_05_9906_0E
- D 0 - I - 0x0098B0 02:98A0: BA 98     .word _off019_05_98BA_0F
- D 0 - I - 0x0098B2 02:98A2: 13 99     .word _off019_05_9913_10
- D 0 - I - 0x0098B4 02:98A4: BA 98     .word _off019_05_98BA_11
- D 0 - I - 0x0098B6 02:98A6: 14 99     .word _off019_05_9914_12
- D 0 - I - 0x0098B8 02:98A8: BA 98     .word _off019_05_98BA_13
- D 0 - I - 0x0098BA 02:98AA: 21 99     .word _off019_05_9921_14
- D 0 - I - 0x0098BC 02:98AC: BA 98     .word _off019_05_98BA_15
- D 0 - I - 0x0098BE 02:98AE: 22 99     .word _off019_05_9922_16
- D 0 - I - 0x0098C0 02:98B0: BA 98     .word _off019_05_98BA_17
- - - - - - 0x0098C2 02:98B2: 23 99     .word _off019_05_9923_18
- - - - - - 0x0098C4 02:98B4: BA 98     .word _off019_05_98BA_19
- - - - - - 0x0098C6 02:98B6: 24 99     .word _off019_05_9924_1A
- - - - - - 0x0098C8 02:98B8: BA 98     .word _off019_05_98BA_1B



_off019_05_98BA_00:
_off019_05_98BA_01:
_off019_05_98BA_03:
_off019_05_98BA_05:
_off019_05_98BA_07:
_off019_05_98BA_09:
_off019_05_98BA_0B:
_off019_05_98BA_0D:
_off019_05_98BA_0F:
_off019_05_98BA_11:
_off019_05_98BA_13:
_off019_05_98BA_15:
_off019_05_98BA_17:
_off019_05_98BA_19:
_off019_05_98BA_1B:
- D 0 - I - 0x0098CA 02:98BA: FF        .byte $FF   ; end token



_off019_05_98BB_02:
- D 0 - I - 0x0098CB 02:98BB: 10        .byte $10 * $01 + $00   ; pos YX
- D 0 - I - 0x0098CC 02:98BC: C0        .byte $80 + $40 + $00   ; flags
- D 0 - I - 0x0098CD 02:98BD: 64        .byte con_obj_id_64   ; 

- D 0 - I - 0x0098CE 02:98BE: 5D        .byte $10 * $05 + $0D   ; pos YX
- D 0 - I - 0x0098CF 02:98BF: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x0098D0 02:98C0: 70        .byte con_obj_id_70   ; 

- D 0 - I - 0x0098D1 02:98C1: 52        .byte $10 * $05 + $02   ; pos YX
- D 0 - I - 0x0098D2 02:98C2: 81        .byte $80 + $00 + $01   ; flags
- D 0 - I - 0x0098D3 02:98C3: 70        .byte con_obj_id_70   ; 

- D 0 - I - 0x0098D4 02:98C4: 71        .byte $10 * $07 + $01   ; pos YX
- D 0 - I - 0x0098D5 02:98C5: 81        .byte $80 + $00 + $01   ; flags
- D 0 - I - 0x0098D6 02:98C6: 71        .byte con_obj_id_71   ; 

- D 0 - I - 0x0098D7 02:98C7: FF        .byte $FF   ; end token



_off019_05_98C8_04:
- D 0 - I - 0x0098D8 02:98C8: A7        .byte $10 * $0A + $07   ; pos YX
- D 0 - I - 0x0098D9 02:98C9: C1        .byte $80 + $40 + $01   ; flags
- D 0 - I - 0x0098DA 02:98CA: 0D        .byte con_obj_id_0D   ; 

- D 0 - I - 0x0098DB 02:98CB: FF        .byte $FF   ; end token



_off019_05_98CC_06:
- D 0 - I - 0x0098DC 02:98CC: E1        .byte $10 * $0E + $01   ; pos YX
- D 0 - I - 0x0098DD 02:98CD: C0        .byte $80 + $40 + $00   ; flags
- D 0 - I - 0x0098DE 02:98CE: 71        .byte con_obj_id_71   ; 

- D 0 - I - 0x0098DF 02:98CF: FF        .byte $FF   ; end token



_off019_05_98D0_08:
- D 0 - I - 0x0098E0 02:98D0: 02        .byte $10 * $00 + $02   ; pos YX
- D 0 - I - 0x0098E1 02:98D1: 81        .byte $80 + $00 + $01   ; flags
- D 0 - I - 0x0098E2 02:98D2: 60        .byte con_obj_id_60   ; 

- D 0 - I - 0x0098E3 02:98D3: 0D        .byte $10 * $00 + $0D   ; pos YX
- D 0 - I - 0x0098E4 02:98D4: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x0098E5 02:98D5: 60        .byte con_obj_id_60   ; 

- D 0 - I - 0x0098E6 02:98D6: 42        .byte $10 * $04 + $02   ; pos YX
- D 0 - I - 0x0098E7 02:98D7: 81        .byte $80 + $00 + $01   ; flags
- D 0 - I - 0x0098E8 02:98D8: 60        .byte con_obj_id_60   ; 

- D 0 - I - 0x0098E9 02:98D9: 4D        .byte $10 * $04 + $0D   ; pos YX
- D 0 - I - 0x0098EA 02:98DA: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x0098EB 02:98DB: 60        .byte con_obj_id_60   ; 

- D 0 - I - 0x0098EC 02:98DC: 82        .byte $10 * $08 + $02   ; pos YX
- D 0 - I - 0x0098ED 02:98DD: 81        .byte $80 + $00 + $01   ; flags
- D 0 - I - 0x0098EE 02:98DE: 60        .byte con_obj_id_60   ; 

- D 0 - I - 0x0098EF 02:98DF: 8D        .byte $10 * $08 + $0D   ; pos YX
- D 0 - I - 0x0098F0 02:98E0: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x0098F1 02:98E1: 60        .byte con_obj_id_60   ; 

- D 0 - I - 0x0098F2 02:98E2: 98        .byte $10 * $09 + $08   ; pos YX
- D 0 - I - 0x0098F3 02:98E3: B6        .byte $80 + $00 + $36   ; flags
- D 0 - I - 0x0098F4 02:98E4: 01        .byte con_obj_id_01   ; 

- D 0 - I - 0x0098F5 02:98E5: C2        .byte $10 * $0C + $02   ; pos YX
- D 0 - I - 0x0098F6 02:98E6: 81        .byte $80 + $00 + $01   ; flags
- D 0 - I - 0x0098F7 02:98E7: 60        .byte con_obj_id_60   ; 

- D 0 - I - 0x0098F8 02:98E8: CD        .byte $10 * $0C + $0D   ; pos YX
- D 0 - I - 0x0098F9 02:98E9: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x0098FA 02:98EA: 60        .byte con_obj_id_60   ; 

- D 0 - I - 0x0098FB 02:98EB: FF        .byte $FF   ; end token



_off019_05_98EC_0A:
- D 0 - I - 0x0098FC 02:98EC: 12        .byte $10 * $01 + $02   ; pos YX
- D 0 - I - 0x0098FD 02:98ED: 81        .byte $80 + $00 + $01   ; flags
- D 0 - I - 0x0098FE 02:98EE: 60        .byte con_obj_id_60   ; 

- D 0 - I - 0x0098FF 02:98EF: 1D        .byte $10 * $01 + $0D   ; pos YX
- D 0 - I - 0x009900 02:98F0: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009901 02:98F1: 60        .byte con_obj_id_60   ; 

- D 0 - I - 0x009902 02:98F2: 52        .byte $10 * $05 + $02   ; pos YX
- D 0 - I - 0x009903 02:98F3: 81        .byte $80 + $00 + $01   ; flags
- D 0 - I - 0x009904 02:98F4: 60        .byte con_obj_id_60   ; 

- D 0 - I - 0x009905 02:98F5: 5D        .byte $10 * $05 + $0D   ; pos YX
- D 0 - I - 0x009906 02:98F6: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009907 02:98F7: 60        .byte con_obj_id_60   ; 

- D 0 - I - 0x009908 02:98F8: 58        .byte $10 * $05 + $08   ; pos YX
- D 0 - I - 0x009909 02:98F9: B1        .byte $80 + $00 + $31   ; flags
- D 0 - I - 0x00990A 02:98FA: 01        .byte con_obj_id_01   ; 

- D 0 - I - 0x00990B 02:98FB: 58        .byte $10 * $05 + $08   ; pos YX
- D 0 - I - 0x00990C 02:98FC: 82        .byte $80 + $00 + $02   ; flags
- D 0 - I - 0x00990D 02:98FD: 01        .byte con_obj_id_01   ; 

- D 0 - I - 0x00990E 02:98FE: 92        .byte $10 * $09 + $02   ; pos YX
- D 0 - I - 0x00990F 02:98FF: 81        .byte $80 + $00 + $01   ; flags
- D 0 - I - 0x009910 02:9900: 60        .byte con_obj_id_60   ; 

- D 0 - I - 0x009911 02:9901: 9D        .byte $10 * $09 + $0D   ; pos YX
- D 0 - I - 0x009912 02:9902: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009913 02:9903: 60        .byte con_obj_id_60   ; 

- D 0 - I - 0x009914 02:9904: FF        .byte $FF   ; end token



_off019_05_9905_0C:
- D 0 - I - 0x009915 02:9905: FF        .byte $FF   ; end token



_off019_05_9906_0E:
- D 0 - I - 0x009916 02:9906: 14        .byte $10 * $01 + $04   ; pos YX
- D 0 - I - 0x009917 02:9907: 81        .byte $80 + $00 + $01   ; flags
- D 0 - I - 0x009918 02:9908: 5F        .byte con_obj_id_5F   ; 

- D 0 - I - 0x009919 02:9909: 4C        .byte $10 * $04 + $0C   ; pos YX
- D 0 - I - 0x00991A 02:990A: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x00991B 02:990B: 5F        .byte con_obj_id_5F   ; 

- D 0 - I - 0x00991C 02:990C: 44        .byte $10 * $04 + $04   ; pos YX
- D 0 - I - 0x00991D 02:990D: 81        .byte $80 + $00 + $01   ; flags
- D 0 - I - 0x00991E 02:990E: 5F        .byte con_obj_id_5F   ; 

- D 0 - I - 0x00991F 02:990F: A8        .byte $10 * $0A + $08   ; pos YX
- D 0 - I - 0x009920 02:9910: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009921 02:9911: 5F        .byte con_obj_id_5F   ; 

- D 0 - I - 0x009922 02:9912: FF        .byte $FF   ; end token



_off019_05_9913_10:
- D 0 - I - 0x009923 02:9913: FF        .byte $FF   ; end token



_off019_05_9914_12:
- D 0 - I - 0x009924 02:9914: 1A        .byte $10 * $01 + $0A   ; pos YX
- D 0 - I - 0x009925 02:9915: 81        .byte $80 + $00 + $01   ; flags
- D 0 - I - 0x009926 02:9916: 5D        .byte con_obj_id_5D   ; 

- D 0 - I - 0x009927 02:9917: 88        .byte $10 * $08 + $08   ; pos YX
- D 0 - I - 0x009928 02:9918: B3        .byte $80 + $00 + $33   ; flags
- D 0 - I - 0x009929 02:9919: 01        .byte con_obj_id_01   ; 

- D 0 - I - 0x00992A 02:991A: A8        .byte $10 * $0A + $08   ; pos YX
- D 0 - I - 0x00992B 02:991B: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x00992C 02:991C: 01        .byte con_obj_id_01   ; 

- D 0 - I - 0x00992D 02:991D: E0        .byte $10 * $0E + $00   ; pos YX
- D 0 - I - 0x00992E 02:991E: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x00992F 02:991F: 5E        .byte con_obj_id_5E   ; 

- D 0 - I - 0x009930 02:9920: FF        .byte $FF   ; end token



_off019_05_9921_14:
- D 0 - I - 0x009931 02:9921: FF        .byte $FF   ; end token



_off019_05_9922_16:
- D 0 - I - 0x009932 02:9922: FF        .byte $FF   ; end token



_off019_05_9923_18:
- - - - - - 0x009933 02:9923: FF        .byte $FF   ; end token



_off019_05_9924_1A:
- - - - - - 0x009934 02:9924: FF        .byte $FF   ; end token



_off013_0x009935_06_area_7:
- - - - - - 0x009935 02:9925: 5D 99     .word _off019_06_995D_00
- - - - - - 0x009937 02:9927: 5D 99     .word _off019_06_995D_01
- D 0 - I - 0x009939 02:9929: 5E 99     .word _off019_06_995E_02
- D 0 - I - 0x00993B 02:992B: 5D 99     .word _off019_06_995D_03
- D 0 - I - 0x00993D 02:992D: 5F 99     .word _off019_06_995F_04
- D 0 - I - 0x00993F 02:992F: 5D 99     .word _off019_06_995D_05
- D 0 - I - 0x009941 02:9931: 69 99     .word _off019_06_9969_06
- D 0 - I - 0x009943 02:9933: 5D 99     .word _off019_06_995D_07
- D 0 - I - 0x009945 02:9935: 70 99     .word _off019_06_9970_08
- D 0 - I - 0x009947 02:9937: 5D 99     .word _off019_06_995D_09
- D 0 - I - 0x009949 02:9939: 74 99     .word _off019_06_9974_0A
- D 0 - I - 0x00994B 02:993B: 5D 99     .word _off019_06_995D_0B
- D 0 - I - 0x00994D 02:993D: 7B 99     .word _off019_06_997B_0C
- D 0 - I - 0x00994F 02:993F: 5D 99     .word _off019_06_995D_0D
- D 0 - I - 0x009951 02:9941: 7F 99     .word _off019_06_997F_0E
- D 0 - I - 0x009953 02:9943: 5D 99     .word _off019_06_995D_0F
- D 0 - I - 0x009955 02:9945: 86 99     .word _off019_06_9986_10
- D 0 - I - 0x009957 02:9947: 5D 99     .word _off019_06_995D_11
- D 0 - I - 0x009959 02:9949: 87 99     .word _off019_06_9987_12
- D 0 - I - 0x00995B 02:994B: 5D 99     .word _off019_06_995D_13
- D 0 - I - 0x00995D 02:994D: 97 99     .word _off019_06_9997_14
- D 0 - I - 0x00995F 02:994F: 5D 99     .word _off019_06_995D_15
- D 0 - I - 0x009961 02:9951: A7 99     .word _off019_06_99A7_16
- D 0 - I - 0x009963 02:9953: 5D 99     .word _off019_06_995D_17
- D 0 - I - 0x009965 02:9955: B4 99     .word _off019_06_99B4_18
- D 0 - I - 0x009967 02:9957: 5D 99     .word _off019_06_995D_19
- D 0 - I - 0x009969 02:9959: B8 99     .word _off019_06_99B8_1A
- D 0 - I - 0x00996B 02:995B: 5D 99     .word _off019_06_995D_1B



_off019_06_995D_00:
_off019_06_995D_01:
_off019_06_995D_03:
_off019_06_995D_05:
_off019_06_995D_07:
_off019_06_995D_09:
_off019_06_995D_0B:
_off019_06_995D_0D:
_off019_06_995D_0F:
_off019_06_995D_11:
_off019_06_995D_13:
_off019_06_995D_15:
_off019_06_995D_17:
_off019_06_995D_19:
_off019_06_995D_1B:
- D 0 - I - 0x00996D 02:995D: FF        .byte $FF   ; end token



_off019_06_995E_02:
- D 0 - I - 0x00996E 02:995E: FF        .byte $FF   ; end token



_off019_06_995F_04:
- D 0 - I - 0x00996F 02:995F: 8A        .byte $10 * $08 + $0A   ; pos YX
- D 0 - I - 0x009970 02:9960: A0        .byte $80 + $00 + $20   ; flags
- D 0 - I - 0x009971 02:9961: 01        .byte con_obj_id_01   ; 

- D 0 - I - 0x009972 02:9962: 86        .byte $10 * $08 + $06   ; pos YX
- D 0 - I - 0x009973 02:9963: A4        .byte $80 + $00 + $24   ; flags
- D 0 - I - 0x009974 02:9964: 01        .byte con_obj_id_01   ; 

- D 0 - I - 0x009975 02:9965: E4        .byte $10 * $0E + $04   ; pos YX
- D 0 - I - 0x009976 02:9966: 01        .byte $00 + $00 + $01   ; flags
- D 0 - I - 0x009977 02:9967: 3B        .byte con_obj_id_3B   ; 

- D 0 - I - 0x009978 02:9968: FF        .byte $FF   ; end token



_off019_06_9969_06:
- D 0 - I - 0x009979 02:9969: 8B        .byte $10 * $08 + $0B   ; pos YX
- D 0 - I - 0x00997A 02:996A: 00        .byte $00 + $00 + $00   ; flags
- D 0 - I - 0x00997B 02:996B: 3B        .byte con_obj_id_3B   ; 

- D 0 - I - 0x00997C 02:996C: D6        .byte $10 * $0D + $06   ; pos YX
- D 0 - I - 0x00997D 02:996D: 01        .byte $00 + $00 + $01   ; flags
- D 0 - I - 0x00997E 02:996E: 3B        .byte con_obj_id_3B   ; 

- D 0 - I - 0x00997F 02:996F: FF        .byte $FF   ; end token



_off019_06_9970_08:
- D 0 - I - 0x009980 02:9970: 7B        .byte $10 * $07 + $0B   ; pos YX
- D 0 - I - 0x009981 02:9971: 00        .byte $00 + $00 + $00   ; flags
- D 0 - I - 0x009982 02:9972: 3B        .byte con_obj_id_3B   ; 

- D 0 - I - 0x009983 02:9973: FF        .byte $FF   ; end token



_off019_06_9974_0A:
- D 0 - I - 0x009984 02:9974: 14        .byte $10 * $01 + $04   ; pos YX
- D 0 - I - 0x009985 02:9975: 01        .byte $00 + $00 + $01   ; flags
- D 0 - I - 0x009986 02:9976: 3B        .byte con_obj_id_3B   ; 

- D 0 - I - 0x009987 02:9977: BB        .byte $10 * $0B + $0B   ; pos YX
- D 0 - I - 0x009988 02:9978: 00        .byte $00 + $00 + $00   ; flags
- D 0 - I - 0x009989 02:9979: 3B        .byte con_obj_id_3B   ; 

- D 0 - I - 0x00998A 02:997A: FF        .byte $FF   ; end token



_off019_06_997B_0C:
- D 0 - I - 0x00998B 02:997B: B8        .byte $10 * $0B + $08   ; pos YX
- D 0 - I - 0x00998C 02:997C: A2        .byte $80 + $00 + $22   ; flags
- D 0 - I - 0x00998D 02:997D: 01        .byte con_obj_id_01   ; 

- D 0 - I - 0x00998E 02:997E: FF        .byte $FF   ; end token



_off019_06_997F_0E:
- D 0 - I - 0x00998F 02:997F: 8C        .byte $10 * $08 + $0C   ; pos YX
- D 0 - I - 0x009990 02:9980: A3        .byte $80 + $00 + $23   ; flags
- D 0 - I - 0x009991 02:9981: 01        .byte con_obj_id_01   ; 

- D 0 - I - 0x009992 02:9982: 84        .byte $10 * $08 + $04   ; pos YX
- D 0 - I - 0x009993 02:9983: A0        .byte $80 + $00 + $20   ; flags
- D 0 - I - 0x009994 02:9984: 01        .byte con_obj_id_01   ; 

- D 0 - I - 0x009995 02:9985: FF        .byte $FF   ; end token



_off019_06_9986_10:
- D 0 - I - 0x009996 02:9986: FF        .byte $FF   ; end token



_off019_06_9987_12:
- D 0 - I - 0x009997 02:9987: 7F        .byte $10 * $07 + $0F   ; pos YX
- D 0 - I - 0x009998 02:9988: 00        .byte $00 + $00 + $00   ; flags
- D 0 - I - 0x009999 02:9989: 3D        .byte con_obj_id_3D   ; 

- D 0 - I - 0x00999A 02:998A: 7B        .byte $10 * $07 + $0B   ; pos YX
- D 0 - I - 0x00999B 02:998B: A1        .byte $80 + $00 + $21   ; flags
- D 0 - I - 0x00999C 02:998C: 01        .byte con_obj_id_01   ; 

- D 0 - I - 0x00999D 02:998D: 77        .byte $10 * $07 + $07   ; pos YX
- D 0 - I - 0x00999E 02:998E: A4        .byte $80 + $00 + $24   ; flags
- D 0 - I - 0x00999F 02:998F: 01        .byte con_obj_id_01   ; 

- D 0 - I - 0x0099A0 02:9990: B1        .byte $10 * $0B + $01   ; pos YX
- D 0 - I - 0x0099A1 02:9991: 00        .byte $00 + $00 + $00   ; flags
- D 0 - I - 0x0099A2 02:9992: 3D        .byte con_obj_id_3D   ; 

- D 0 - I - 0x0099A3 02:9993: B3        .byte $10 * $0B + $03   ; pos YX
- D 0 - I - 0x0099A4 02:9994: 00        .byte $00 + $00 + $00   ; flags
- D 0 - I - 0x0099A5 02:9995: 3D        .byte con_obj_id_3D   ; 

- D 0 - I - 0x0099A6 02:9996: FF        .byte $FF   ; end token



_off019_06_9997_14:
- D 0 - I - 0x0099A7 02:9997: 09        .byte $10 * $00 + $09   ; pos YX
- D 0 - I - 0x0099A8 02:9998: 00        .byte $00 + $00 + $00   ; flags
- D 0 - I - 0x0099A9 02:9999: 3D        .byte con_obj_id_3D   ; 

- D 0 - I - 0x0099AA 02:999A: 43        .byte $10 * $04 + $03   ; pos YX
- D 0 - I - 0x0099AB 02:999B: 00        .byte $00 + $00 + $00   ; flags
- D 0 - I - 0x0099AC 02:999C: 3D        .byte con_obj_id_3D   ; 

- D 0 - I - 0x0099AD 02:999D: 49        .byte $10 * $04 + $09   ; pos YX
- D 0 - I - 0x0099AE 02:999E: 00        .byte $00 + $00 + $00   ; flags
- D 0 - I - 0x0099AF 02:999F: 3D        .byte con_obj_id_3D   ; 

- D 0 - I - 0x0099B0 02:99A0: A5        .byte $10 * $0A + $05   ; pos YX
- D 0 - I - 0x0099B1 02:99A1: 00        .byte $00 + $00 + $00   ; flags
- D 0 - I - 0x0099B2 02:99A2: 3D        .byte con_obj_id_3D   ; 

- D 0 - I - 0x0099B3 02:99A3: AF        .byte $10 * $0A + $0F   ; pos YX
- D 0 - I - 0x0099B4 02:99A4: 00        .byte $00 + $00 + $00   ; flags
- D 0 - I - 0x0099B5 02:99A5: 3D        .byte con_obj_id_3D   ; 

- D 0 - I - 0x0099B6 02:99A6: FF        .byte $FF   ; end token



_off019_06_99A7_16:
- D 0 - I - 0x0099B7 02:99A7: 35        .byte $10 * $03 + $05   ; pos YX
- D 0 - I - 0x0099B8 02:99A8: 00        .byte $00 + $00 + $00   ; flags
- D 0 - I - 0x0099B9 02:99A9: 3D        .byte con_obj_id_3D   ; 

- D 0 - I - 0x0099BA 02:99AA: 39        .byte $10 * $03 + $09   ; pos YX
- D 0 - I - 0x0099BB 02:99AB: 00        .byte $00 + $00 + $00   ; flags
- D 0 - I - 0x0099BC 02:99AC: 3D        .byte con_obj_id_3D   ; 

- D 0 - I - 0x0099BD 02:99AD: 97        .byte $10 * $09 + $07   ; pos YX
- D 0 - I - 0x0099BE 02:99AE: 00        .byte $00 + $00 + $00   ; flags
- D 0 - I - 0x0099BF 02:99AF: 3D        .byte con_obj_id_3D   ; 

- D 0 - I - 0x0099C0 02:99B0: 9F        .byte $10 * $09 + $0F   ; pos YX
- D 0 - I - 0x0099C1 02:99B1: 00        .byte $00 + $00 + $00   ; flags
- D 0 - I - 0x0099C2 02:99B2: 3D        .byte con_obj_id_3D   ; 

- D 0 - I - 0x0099C3 02:99B3: FF        .byte $FF   ; end token



_off019_06_99B4_18:
- D 0 - I - 0x0099C4 02:99B4: 47        .byte $10 * $04 + $07   ; pos YX
- D 0 - I - 0x0099C5 02:99B5: 00        .byte $00 + $00 + $00   ; flags
- D 0 - I - 0x0099C6 02:99B6: 51        .byte con_obj_id_51   ; 

- D 0 - I - 0x0099C7 02:99B7: FF        .byte $FF   ; end token



_off019_06_99B8_1A:
- D 0 - I - 0x0099C8 02:99B8: FF        .byte $FF   ; end token



_off013_0x0099C9_07_area_8:
- - - - - - 0x0099C9 02:99B9: 39 9A     .word _off019_07_9A39_00
- - - - - - 0x0099CB 02:99BB: 3A 9A     .word _off019_07_9A3A_01
- - - - - - 0x0099CD 02:99BD: 3B 9A     .word _off019_07_9A3B_02
- - - - - - 0x0099CF 02:99BF: 3C 9A     .word _off019_07_9A3C_03
- - - - - - 0x0099D1 02:99C1: 3D 9A     .word _off019_07_9A3D_04
- D 0 - I - 0x0099D3 02:99C3: 3E 9A     .word _off019_07_9A3E_05
- D 0 - I - 0x0099D5 02:99C5: 3F 9A     .word _off019_07_9A3F_06
- D 0 - I - 0x0099D7 02:99C7: 40 9A     .word _off019_07_9A40_07
- - - - - - 0x0099D9 02:99C9: 41 9A     .word _off019_07_9A41_08
- - - - - - 0x0099DB 02:99CB: 42 9A     .word _off019_07_9A42_09
- - - - - - 0x0099DD 02:99CD: 43 9A     .word _off019_07_9A43_0A
- - - - - - 0x0099DF 02:99CF: 44 9A     .word _off019_07_9A44_0B
- - - - - - 0x0099E1 02:99D1: 45 9A     .word _off019_07_9A45_0C
- - - - - - 0x0099E3 02:99D3: 46 9A     .word _off019_07_9A46_0D
- - - - - - 0x0099E5 02:99D5: 47 9A     .word _off019_07_9A47_0E
- - - - - - 0x0099E7 02:99D7: 48 9A     .word _off019_07_9A48_0F
- - - - - - 0x0099E9 02:99D9: 49 9A     .word _off019_07_9A49_10
- - - - - - 0x0099EB 02:99DB: 4A 9A     .word _off019_07_9A4A_11
- - - - - - 0x0099ED 02:99DD: 4B 9A     .word _off019_07_9A4B_12
- - - - - - 0x0099EF 02:99DF: 4C 9A     .word _off019_07_9A4C_13
- - - - - - 0x0099F1 02:99E1: 4D 9A     .word _off019_07_9A4D_14
- D 0 - I - 0x0099F3 02:99E3: 4E 9A     .word _off019_07_9A4E_15
- D 0 - I - 0x0099F5 02:99E5: 4F 9A     .word _off019_07_9A4F_16
- D 0 - I - 0x0099F7 02:99E7: 53 9A     .word _off019_07_9A53_17
- D 0 - I - 0x0099F9 02:99E9: 57 9A     .word _off019_07_9A57_18
- D 0 - I - 0x0099FB 02:99EB: 5E 9A     .word _off019_07_9A5E_19
- D 0 - I - 0x0099FD 02:99ED: 62 9A     .word _off019_07_9A62_1A
- D 0 - I - 0x0099FF 02:99EF: 66 9A     .word _off019_07_9A66_1B
- D 0 - I - 0x009A01 02:99F1: 67 9A     .word _off019_07_9A67_1C
- D 0 - I - 0x009A03 02:99F3: 6B 9A     .word _off019_07_9A6B_1D
- - - - - - 0x009A05 02:99F5: 6C 9A     .word _off019_07_9A6C_1E
- - - - - - 0x009A07 02:99F7: 6D 9A     .word _off019_07_9A6D_1F
- - - - - - 0x009A09 02:99F9: 6E 9A     .word _off019_07_9A6E_20
- - - - - - 0x009A0B 02:99FB: 6F 9A     .word _off019_07_9A6F_21
- - - - - - 0x009A0D 02:99FD: 70 9A     .word _off019_07_9A70_22
- D 0 - I - 0x009A0F 02:99FF: 71 9A     .word _off019_07_9A71_23
- D 0 - I - 0x009A11 02:9A01: 72 9A     .word _off019_07_9A72_24
- D 0 - I - 0x009A13 02:9A03: 73 9A     .word _off019_07_9A73_25
- D 0 - I - 0x009A15 02:9A05: 7D 9A     .word _off019_07_9A7D_26
- - - - - - 0x009A17 02:9A07: 81 9A     .word _off019_07_9A81_27
- - - - - - 0x009A19 02:9A09: 82 9A     .word _off019_07_9A82_28
- - - - - - 0x009A1B 02:9A0B: 83 9A     .word _off019_07_9A83_29
- - - - - - 0x009A1D 02:9A0D: 84 9A     .word _off019_07_9A84_2A
- D 0 - I - 0x009A1F 02:9A0F: 85 9A     .word _off019_07_9A85_2B
- D 0 - I - 0x009A21 02:9A11: 86 9A     .word _off019_07_9A86_2C
- D 0 - I - 0x009A23 02:9A13: 87 9A     .word _off019_07_9A87_2D
- D 0 - I - 0x009A25 02:9A15: 88 9A     .word _off019_07_9A88_2E
- - - - - - 0x009A27 02:9A17: 89 9A     .word _off019_07_9A89_2F
- - - - - - 0x009A29 02:9A19: 8A 9A     .word _off019_07_9A8A_30
- D 0 - I - 0x009A2B 02:9A1B: 8B 9A     .word _off019_07_9A8B_31
- D 0 - I - 0x009A2D 02:9A1D: A4 9A     .word _off019_07_9AA4_32
- D 0 - I - 0x009A2F 02:9A1F: B7 9A     .word _off019_07_9AB7_33
- D 0 - I - 0x009A31 02:9A21: C4 9A     .word _off019_07_9AC4_34
- D 0 - I - 0x009A33 02:9A23: CE 9A     .word _off019_07_9ACE_35
- D 0 - I - 0x009A35 02:9A25: CF 9A     .word _off019_07_9ACF_36
- - - - - - 0x009A37 02:9A27: D0 9A     .word _off019_07_9AD0_37
- - - - - - 0x009A39 02:9A29: D1 9A     .word _off019_07_9AD1_38
- - - - - - 0x009A3B 02:9A2B: D2 9A     .word _off019_07_9AD2_39
- - - - - - 0x009A3D 02:9A2D: D3 9A     .word _off019_07_9AD3_3A
- - - - - - 0x009A3F 02:9A2F: D4 9A     .word _off019_07_9AD4_3B
- - - - - - 0x009A41 02:9A31: D5 9A     .word _off019_07_9AD5_3C
- - - - - - 0x009A43 02:9A33: D6 9A     .word _off019_07_9AD6_3D
- - - - - - 0x009A45 02:9A35: D7 9A     .word _off019_07_9AD7_3E
- - - - - - 0x009A47 02:9A37: D8 9A     .word _off019_07_9AD8_3F



_off019_07_9A39_00:
- - - - - - 0x009A49 02:9A39: FF        .byte $FF   ; end token



_off019_07_9A3A_01:
- - - - - - 0x009A4A 02:9A3A: FF        .byte $FF   ; end token



_off019_07_9A3B_02:
- - - - - - 0x009A4B 02:9A3B: FF        .byte $FF   ; end token



_off019_07_9A3C_03:
- - - - - - 0x009A4C 02:9A3C: FF        .byte $FF   ; end token



_off019_07_9A3D_04:
- - - - - - 0x009A4D 02:9A3D: FF        .byte $FF   ; end token



_off019_07_9A3E_05:
- D 0 - I - 0x009A4E 02:9A3E: FF        .byte $FF   ; end token



_off019_07_9A3F_06:
- D 0 - I - 0x009A4F 02:9A3F: FF        .byte $FF   ; end token



_off019_07_9A40_07:
- D 0 - I - 0x009A50 02:9A40: FF        .byte $FF   ; end token



_off019_07_9A41_08:
- - - - - - 0x009A51 02:9A41: FF        .byte $FF   ; end token



_off019_07_9A42_09:
- - - - - - 0x009A52 02:9A42: FF        .byte $FF   ; end token



_off019_07_9A43_0A:
- - - - - - 0x009A53 02:9A43: FF        .byte $FF   ; end token



_off019_07_9A44_0B:
- - - - - - 0x009A54 02:9A44: FF        .byte $FF   ; end token



_off019_07_9A45_0C:
- - - - - - 0x009A55 02:9A45: FF        .byte $FF   ; end token



_off019_07_9A46_0D:
- - - - - - 0x009A56 02:9A46: FF        .byte $FF   ; end token



_off019_07_9A47_0E:
- - - - - - 0x009A57 02:9A47: FF        .byte $FF   ; end token



_off019_07_9A48_0F:
- - - - - - 0x009A58 02:9A48: FF        .byte $FF   ; end token



_off019_07_9A49_10:
- - - - - - 0x009A59 02:9A49: FF        .byte $FF   ; end token



_off019_07_9A4A_11:
- - - - - - 0x009A5A 02:9A4A: FF        .byte $FF   ; end token



_off019_07_9A4B_12:
- - - - - - 0x009A5B 02:9A4B: FF        .byte $FF   ; end token



_off019_07_9A4C_13:
- - - - - - 0x009A5C 02:9A4C: FF        .byte $FF   ; end token



_off019_07_9A4D_14:
- - - - - - 0x009A5D 02:9A4D: FF        .byte $FF   ; end token



_off019_07_9A4E_15:
- D 0 - I - 0x009A5E 02:9A4E: FF        .byte $FF   ; end token



_off019_07_9A4F_16:
- D 0 - I - 0x009A5F 02:9A4F: 89        .byte $10 * $08 + $09   ; pos YX
- D 0 - I - 0x009A60 02:9A50: 82        .byte $80 + $00 + $02   ; flags
- D 0 - I - 0x009A61 02:9A51: 45        .byte con_obj_id_45   ; 

- D 0 - I - 0x009A62 02:9A52: FF        .byte $FF   ; end token



_off019_07_9A53_17:
- D 0 - I - 0x009A63 02:9A53: A5        .byte $10 * $0A + $05   ; pos YX
- D 0 - I - 0x009A64 02:9A54: 83        .byte $80 + $00 + $03   ; flags
- D 0 - I - 0x009A65 02:9A55: 45        .byte con_obj_id_45   ; 

- D 0 - I - 0x009A66 02:9A56: FF        .byte $FF   ; end token



_off019_07_9A57_18:
- D 0 - I - 0x009A67 02:9A57: 31        .byte $10 * $03 + $01   ; pos YX
- D 0 - I - 0x009A68 02:9A58: 93        .byte $80 + $00 + $13   ; flags
- D 0 - I - 0x009A69 02:9A59: 01        .byte con_obj_id_01   ; 

- D 0 - I - 0x009A6A 02:9A5A: 71        .byte $10 * $07 + $01   ; pos YX
- D 0 - I - 0x009A6B 02:9A5B: 96        .byte $80 + $00 + $16   ; flags
- D 0 - I - 0x009A6C 02:9A5C: 01        .byte con_obj_id_01   ; 

- D 0 - I - 0x009A6D 02:9A5D: FF        .byte $FF   ; end token



_off019_07_9A5E_19:
- D 0 - I - 0x009A6E 02:9A5E: 48        .byte $10 * $04 + $08   ; pos YX
- D 0 - I - 0x009A6F 02:9A5F: C0        .byte $80 + $40 + $00   ; flags
- D 0 - I - 0x009A70 02:9A60: 49        .byte con_obj_id_49   ; 

- D 0 - I - 0x009A71 02:9A61: FF        .byte $FF   ; end token



_off019_07_9A62_1A:
- D 0 - I - 0x009A72 02:9A62: 48        .byte $10 * $04 + $08   ; pos YX
- D 0 - I - 0x009A73 02:9A63: C1        .byte $80 + $40 + $01   ; flags
- D 0 - I - 0x009A74 02:9A64: 49        .byte con_obj_id_49   ; 

- D 0 - I - 0x009A75 02:9A65: FF        .byte $FF   ; end token



_off019_07_9A66_1B:
- D 0 - I - 0x009A76 02:9A66: FF        .byte $FF   ; end token



_off019_07_9A67_1C:
- D 0 - I - 0x009A77 02:9A67: 88        .byte $10 * $08 + $08   ; pos YX
- D 0 - I - 0x009A78 02:9A68: C0        .byte $80 + $40 + $00   ; flags
- D 0 - I - 0x009A79 02:9A69: 6D        .byte con_obj_id_6D   ; 

- D 0 - I - 0x009A7A 02:9A6A: FF        .byte $FF   ; end token



_off019_07_9A6B_1D:
- D 0 - I - 0x009A7B 02:9A6B: FF        .byte $FF   ; end token



_off019_07_9A6C_1E:
- - - - - - 0x009A7C 02:9A6C: FF        .byte $FF   ; end token



_off019_07_9A6D_1F:
- - - - - - 0x009A7D 02:9A6D: FF        .byte $FF   ; end token



_off019_07_9A6E_20:
- - - - - - 0x009A7E 02:9A6E: FF        .byte $FF   ; end token



_off019_07_9A6F_21:
- - - - - - 0x009A7F 02:9A6F: FF        .byte $FF   ; end token



_off019_07_9A70_22:
- - - - - - 0x009A80 02:9A70: FF        .byte $FF   ; end token



_off019_07_9A71_23:
- D 0 - I - 0x009A81 02:9A71: FF        .byte $FF   ; end token



_off019_07_9A72_24:
- D 0 - I - 0x009A82 02:9A72: FF        .byte $FF   ; end token



_off019_07_9A73_25:
- D 0 - I - 0x009A83 02:9A73: 87        .byte $10 * $08 + $07   ; pos YX
- D 0 - I - 0x009A84 02:9A74: 83        .byte $80 + $00 + $03   ; flags
- D 0 - I - 0x009A85 02:9A75: 45        .byte con_obj_id_45   ; 

- D 0 - I - 0x009A86 02:9A76: A3        .byte $10 * $0A + $03   ; pos YX
- D 0 - I - 0x009A87 02:9A77: 92        .byte $80 + $00 + $12   ; flags
- D 0 - I - 0x009A88 02:9A78: 01        .byte con_obj_id_01   ; 

- D 0 - I - 0x009A89 02:9A79: AF        .byte $10 * $0A + $0F   ; pos YX
- D 0 - I - 0x009A8A 02:9A7A: 82        .byte $80 + $00 + $02   ; flags
- D 0 - I - 0x009A8B 02:9A7B: 47        .byte con_obj_id_47   ; 

- D 0 - I - 0x009A8C 02:9A7C: FF        .byte $FF   ; end token



_off019_07_9A7D_26:
- D 0 - I - 0x009A8D 02:9A7D: 2B        .byte $10 * $02 + $0B   ; pos YX
- D 0 - I - 0x009A8E 02:9A7E: 86        .byte $80 + $00 + $06   ; flags
- D 0 - I - 0x009A8F 02:9A7F: 47        .byte con_obj_id_47   ; 

- D 0 - I - 0x009A90 02:9A80: FF        .byte $FF   ; end token



_off019_07_9A81_27:
- - - - - - 0x009A91 02:9A81: FF        .byte $FF   ; end token



_off019_07_9A82_28:
- - - - - - 0x009A92 02:9A82: FF        .byte $FF   ; end token



_off019_07_9A83_29:
- - - - - - 0x009A93 02:9A83: FF        .byte $FF   ; end token



_off019_07_9A84_2A:
- - - - - - 0x009A94 02:9A84: FF        .byte $FF   ; end token



_off019_07_9A85_2B:
- D 0 - I - 0x009A95 02:9A85: FF        .byte $FF   ; end token



_off019_07_9A86_2C:
- D 0 - I - 0x009A96 02:9A86: FF        .byte $FF   ; end token



_off019_07_9A87_2D:
- D 0 - I - 0x009A97 02:9A87: FF        .byte $FF   ; end token



_off019_07_9A88_2E:
- D 0 - I - 0x009A98 02:9A88: FF        .byte $FF   ; end token



_off019_07_9A89_2F:
- - - - - - 0x009A99 02:9A89: FF        .byte $FF   ; end token



_off019_07_9A8A_30:
- - - - - - 0x009A9A 02:9A8A: FF        .byte $FF   ; end token



_off019_07_9A8B_31:
- D 0 - I - 0x009A9B 02:9A8B: 12        .byte $10 * $01 + $02   ; pos YX
- D 0 - I - 0x009A9C 02:9A8C: 00        .byte $00 + $00 + $00   ; flags
- D 0 - I - 0x009A9D 02:9A8D: 2A        .byte con_obj_id_2A   ; 

- D 0 - I - 0x009A9E 02:9A8E: 44        .byte $10 * $04 + $04   ; pos YX
- D 0 - I - 0x009A9F 02:9A8F: 00        .byte $00 + $00 + $00   ; flags
- D 0 - I - 0x009AA0 02:9A90: 2A        .byte con_obj_id_2A   ; 

- D 0 - I - 0x009AA1 02:9A91: 46        .byte $10 * $04 + $06   ; pos YX
- D 0 - I - 0x009AA2 02:9A92: 90        .byte $80 + $00 + $10   ; flags
- D 0 - I - 0x009AA3 02:9A93: 01        .byte con_obj_id_01   ; 

- D 0 - I - 0x009AA4 02:9A94: 82        .byte $10 * $08 + $02   ; pos YX
- D 0 - I - 0x009AA5 02:9A95: 00        .byte $00 + $00 + $00   ; flags
- D 0 - I - 0x009AA6 02:9A96: 2A        .byte con_obj_id_2A   ; 

- D 0 - I - 0x009AA7 02:9A97: A6        .byte $10 * $0A + $06   ; pos YX
- D 0 - I - 0x009AA8 02:9A98: 93        .byte $80 + $00 + $13   ; flags
- D 0 - I - 0x009AA9 02:9A99: 01        .byte con_obj_id_01   ; 

- D 0 - I - 0x009AAA 02:9A9A: C4        .byte $10 * $0C + $04   ; pos YX
- D 0 - I - 0x009AAB 02:9A9B: 00        .byte $00 + $00 + $00   ; flags
- D 0 - I - 0x009AAC 02:9A9C: 2A        .byte con_obj_id_2A   ; 

- D 0 - I - 0x009AAD 02:9A9D: C9        .byte $10 * $0C + $09   ; pos YX
- D 0 - I - 0x009AAE 02:9A9E: 82        .byte $80 + $00 + $02   ; flags
- D 0 - I - 0x009AAF 02:9A9F: 45        .byte con_obj_id_45   ; 

- D 0 - I - 0x009AB0 02:9AA0: C3        .byte $10 * $0C + $03   ; pos YX
- D 0 - I - 0x009AB1 02:9AA1: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009AB2 02:9AA2: 45        .byte con_obj_id_45   ; 

- D 0 - I - 0x009AB3 02:9AA3: FF        .byte $FF   ; end token



_off019_07_9AA4_32:
- D 0 - I - 0x009AB4 02:9AA4: 2D        .byte $10 * $02 + $0D   ; pos YX
- D 0 - I - 0x009AB5 02:9AA5: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009AB6 02:9AA6: 45        .byte con_obj_id_45   ; 

- D 0 - I - 0x009AB7 02:9AA7: 22        .byte $10 * $02 + $02   ; pos YX
- D 0 - I - 0x009AB8 02:9AA8: 00        .byte $00 + $00 + $00   ; flags
- D 0 - I - 0x009AB9 02:9AA9: 2A        .byte con_obj_id_2A   ; 

- D 0 - I - 0x009ABA 02:9AAA: 54        .byte $10 * $05 + $04   ; pos YX
- D 0 - I - 0x009ABB 02:9AAB: 00        .byte $00 + $00 + $00   ; flags
- D 0 - I - 0x009ABC 02:9AAC: 2A        .byte con_obj_id_2A   ; 

- D 0 - I - 0x009ABD 02:9AAD: 82        .byte $10 * $08 + $02   ; pos YX
- D 0 - I - 0x009ABE 02:9AAE: 00        .byte $00 + $00 + $00   ; flags
- D 0 - I - 0x009ABF 02:9AAF: 2A        .byte con_obj_id_2A   ; 

- D 0 - I - 0x009AC0 02:9AB0: B4        .byte $10 * $0B + $04   ; pos YX
- D 0 - I - 0x009AC1 02:9AB1: 00        .byte $00 + $00 + $00   ; flags
- D 0 - I - 0x009AC2 02:9AB2: 2A        .byte con_obj_id_2A   ; 

- D 0 - I - 0x009AC3 02:9AB3: A5        .byte $10 * $0A + $05   ; pos YX
- D 0 - I - 0x009AC4 02:9AB4: 81        .byte $80 + $00 + $01   ; flags
- D 0 - I - 0x009AC5 02:9AB5: 45        .byte con_obj_id_45   ; 

- D 0 - I - 0x009AC6 02:9AB6: FF        .byte $FF   ; end token



_off019_07_9AB7_33:
- D 0 - I - 0x009AC7 02:9AB7: 23        .byte $10 * $02 + $03   ; pos YX
- D 0 - I - 0x009AC8 02:9AB8: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009AC9 02:9AB9: 45        .byte con_obj_id_45   ; 

- D 0 - I - 0x009ACA 02:9ABA: 29        .byte $10 * $02 + $09   ; pos YX
- D 0 - I - 0x009ACB 02:9ABB: 80        .byte $80 + $00 + $00   ; flags
- D 0 - I - 0x009ACC 02:9ABC: 45        .byte con_obj_id_45   ; 

- D 0 - I - 0x009ACD 02:9ABD: 5B        .byte $10 * $05 + $0B   ; pos YX
- D 0 - I - 0x009ACE 02:9ABE: 90        .byte $80 + $00 + $10   ; flags
- D 0 - I - 0x009ACF 02:9ABF: 01        .byte con_obj_id_01   ; 

- D 0 - I - 0x009AD0 02:9AC0: 8B        .byte $10 * $08 + $0B   ; pos YX
- D 0 - I - 0x009AD1 02:9AC1: 94        .byte $80 + $00 + $14   ; flags
- D 0 - I - 0x009AD2 02:9AC2: 01        .byte con_obj_id_01   ; 

- D 0 - I - 0x009AD3 02:9AC3: FF        .byte $FF   ; end token



_off019_07_9AC4_34:
- D 0 - I - 0x009AD4 02:9AC4: 2F        .byte $10 * $02 + $0F   ; pos YX
- D 0 - I - 0x009AD5 02:9AC5: 82        .byte $80 + $00 + $02   ; flags
- D 0 - I - 0x009AD6 02:9AC6: 45        .byte con_obj_id_45   ; 

- D 0 - I - 0x009AD7 02:9AC7: 46        .byte $10 * $04 + $06   ; pos YX
- D 0 - I - 0x009AD8 02:9AC8: 91        .byte $80 + $00 + $11   ; flags
- D 0 - I - 0x009AD9 02:9AC9: 01        .byte con_obj_id_01   ; 

- D 0 - I - 0x009ADA 02:9ACA: 83        .byte $10 * $08 + $03   ; pos YX
- D 0 - I - 0x009ADB 02:9ACB: 82        .byte $80 + $00 + $02   ; flags
- D 0 - I - 0x009ADC 02:9ACC: 45        .byte con_obj_id_45   ; 

- D 0 - I - 0x009ADD 02:9ACD: FF        .byte $FF   ; end token



_off019_07_9ACE_35:
- D 0 - I - 0x009ADE 02:9ACE: FF        .byte $FF   ; end token



_off019_07_9ACF_36:
- D 0 - I - 0x009ADF 02:9ACF: FF        .byte $FF   ; end token



_off019_07_9AD0_37:
- - - - - - 0x009AE0 02:9AD0: FF        .byte $FF   ; end token



_off019_07_9AD1_38:
- - - - - - 0x009AE1 02:9AD1: FF        .byte $FF   ; end token



_off019_07_9AD2_39:
- - - - - - 0x009AE2 02:9AD2: FF        .byte $FF   ; end token



_off019_07_9AD3_3A:
- - - - - - 0x009AE3 02:9AD3: FF        .byte $FF   ; end token



_off019_07_9AD4_3B:
- - - - - - 0x009AE4 02:9AD4: FF        .byte $FF   ; end token



_off019_07_9AD5_3C:
- - - - - - 0x009AE5 02:9AD5: FF        .byte $FF   ; end token



_off019_07_9AD6_3D:
- - - - - - 0x009AE6 02:9AD6: FF        .byte $FF   ; end token



_off019_07_9AD7_3E:
- - - - - - 0x009AE7 02:9AD7: FF        .byte $FF   ; end token



_off019_07_9AD8_3F:
- - - - - - 0x009AE8 02:9AD8: FF        .byte $FF   ; end token



loc_0x009AE9_sound_mode_handler:
C D 0 - - - 0x009AE9 02:9AD9: A5 50     LDA ram_sound_mode_handler
C - - - - - 0x009AEB 02:9ADB: 20 09 E6  JSR sub_0x01E619_jump_to_pointers_after_jsr
- D 0 - I - 0x009AEE 02:9ADE: E6 9A     .word ofs_sound_mode_9AE6_00_init
- D 0 - I - 0x009AF0 02:9AE0: FF 9A     .word ofs_sound_mode_9AFF_01_clear_title_screen
- D 0 - I - 0x009AF2 02:9AE2: 11 9B     .word ofs_sound_mode_9B11_02_draw_window
- D 0 - I - 0x009AF4 02:9AE4: 2A 9B     .word ofs_sound_mode_9B2A_03_menu_handler



ofs_sound_mode_9AE6_00_init:
C - - J - - 0x009AF6 02:9AE6: A0 18     LDY #$18
; clear 0050-0068
C - - - - - 0x009AF8 02:9AE8: A9 00     LDA #$00
bra_9AEA_loop:
C - - - - - 0x009AFA 02:9AEA: 99 50 00  STA $00 + $50,Y
C - - - - - 0x009AFD 02:9AED: 88        DEY
C - - - - - 0x009AFE 02:9AEE: 10 FA     BPL bra_9AEA_loop
C - - - - - 0x009B00 02:9AF0: A9 23     LDA #> $23A0
C - - - - - 0x009B02 02:9AF2: 85 57     STA ram_0056_sound_mode_ppu + $01
C - - - - - 0x009B04 02:9AF4: A9 A0     LDA #< $23A0
C - - - - - 0x009B06 02:9AF6: 85 56     STA ram_0056_sound_mode_ppu
C - - - - - 0x009B08 02:9AF8: A9 0D     LDA #$0D    ; clear lines counter
C - - - - - 0x009B0A 02:9AFA: 85 55     STA ram_0055_sound_mode
C - - - - - 0x009B0C 02:9AFC: 4C 0E 9B  JMP loc_9B0E_sound_mode



ofs_sound_mode_9AFF_01_clear_title_screen:
C - - J - - 0x009B0F 02:9AFF: 20 48 9C  JSR sub_9C48_sound_mode_clear_line
C - - - - - 0x009B12 02:9B02: C6 55     DEC ram_0055_sound_mode
C - - - - - 0x009B14 02:9B04: 10 0A     BPL bra_9B10_RTS
; if all lines are cleared
C - - - - - 0x009B16 02:9B06: A9 00     LDA #$00
C - - - - - 0x009B18 02:9B08: 85 55     STA ram_0055_sound_mode
C - - - - - 0x009B1A 02:9B0A: A9 04     LDA #$04    ; wait 4 frames before drawing window
C - - - - - 0x009B1C 02:9B0C: 85 52     STA ram_sound_mode_draw_cooldown
loc_9B0E_sound_mode:
C D 0 - - - 0x009B1E 02:9B0E: E6 50     INC ram_sound_mode_handler    ; 00 -> 01, 01 -> 02, 02 -> 03
bra_9B10_RTS:
C - - - - - 0x009B20 02:9B10: 60        RTS



ofs_sound_mode_9B11_02_draw_window:
C - - J - - 0x009B21 02:9B11: C6 52     DEC ram_sound_mode_draw_cooldown
C - - - - - 0x009B23 02:9B13: D0 FB     BNE bra_9B10_RTS
; if it's time to draw a window
C - - - - - 0x009B25 02:9B15: A9 01     LDA #$01
C - - - - - 0x009B27 02:9B17: 85 52     STA ram_sound_mode_draw_cooldown
C - - - - - 0x009B29 02:9B19: 20 78 9C  JSR sub_9C78_draw_sound_mode_window
C - - - - - 0x009B2C 02:9B1C: E6 55     INC ram_0055_sound_mode
C - - - - - 0x009B2E 02:9B1E: A5 55     LDA ram_0055_sound_mode
C - - - - - 0x009B30 02:9B20: C9 0E     CMP #$0E    ; window lines counter
C - - - - - 0x009B32 02:9B22: 90 EC     BCC bra_9B10_RTS
C - - - - - 0x009B34 02:9B24: 20 D9 9B  JSR sub_9BD9_sound_mode
C - - - - - 0x009B37 02:9B27: 4C 0E 9B  JMP loc_9B0E_sound_mode



ofs_sound_mode_9B2A_03_menu_handler:
C - - J - - 0x009B3A 02:9B2A: 20 08 9F  JSR sub_9F08_sound_mode
C - - - - - 0x009B3D 02:9B2D: 20 92 9B  JSR sub_9B92_sound_mode
C - - - - - 0x009B40 02:9B30: 20 50 9B  JSR sub_9B50_sound_mode
C - - - - - 0x009B43 02:9B33: A9 21     LDA #$21
C - - - - - 0x009B45 02:9B35: 8D 4E 05  STA ram_attr_spr_obj
C - - - - - 0x009B48 02:9B38: A9 B9     LDA #$B9
C - - - - - 0x009B4A 02:9B3A: 8D 00 05  STA ram_anim_id_obj
C - - - - - 0x009B4D 02:9B3D: A9 34     LDA #$34
C - - - - - 0x009B4F 02:9B3F: 8D 34 05  STA ram_pos_X_hi_obj
C - - - - - 0x009B52 02:9B42: A5 53     LDA ram_sound_mode_track_cur
C - - - - - 0x009B54 02:9B44: 38        SEC
C - - - - - 0x009B55 02:9B45: E5 54     SBC ram_sound_mode_track_min
C - - - - - 0x009B57 02:9B47: 0A        ASL
C - - - - - 0x009B58 02:9B48: 0A        ASL
C - - - - - 0x009B59 02:9B49: 0A        ASL
C - - - - - 0x009B5A 02:9B4A: 69 A7     ADC #$A7
C - - - - - 0x009B5C 02:9B4C: 8D 1A 05  STA ram_pos_Y_hi_obj
C - - - - - 0x009B5F 02:9B4F: 60        RTS



sub_9B50_sound_mode:
C - - - - - 0x009B60 02:9B50: A5 F5     LDA ram_copy_btn_press
C - - - - - 0x009B62 02:9B52: 10 06     BPL bra_9B5A    ; if not con_btn_A
C - - - - - 0x009B64 02:9B54: 20 51 9F  JSR sub_9F51
C - - - - - 0x009B67 02:9B57: 4C 0E FE  JMP loc_0x01FE1E_stop_sound_engine
bra_9B5A:
C - - - - - 0x009B6A 02:9B5A: 0A        ASL
C - - - - - 0x009B6B 02:9B5B: 30 01     BMI bra_9B5E
C - - - - - 0x009B6D 02:9B5D: 60        RTS
bra_9B5E:
C - - - - - 0x009B6E 02:9B5E: 20 51 9F  JSR sub_9F51
C - - - - - 0x009B71 02:9B61: A5 53     LDA ram_sound_mode_track_cur
C - - - - - 0x009B73 02:9B63: C9 26     CMP #$26
C - - - - - 0x009B75 02:9B65: F0 0F     BEQ bra_9B76_26
C - - - - - 0x009B77 02:9B67: C9 0E     CMP #$0E
C - - - - - 0x009B79 02:9B69: B0 03     BCS bra_9B6E
C - - - - - 0x009B7B 02:9B6B: 20 0E FE  JSR sub_0x01FE1E_stop_sound_engine
bra_9B6E:
C - - - - - 0x009B7E 02:9B6E: A4 53     LDY ram_sound_mode_track_cur
C - - - - - 0x009B80 02:9B70: B9 A4 9C  LDA tbl_9CA4_track_list,Y
C - - - - - 0x009B83 02:9B73: 4C DE FD  JMP loc_0x01FDEE_play_sound
bra_9B76_26:
; play all one by one
C - - - - - 0x009B86 02:9B76: 20 0E FE  JSR sub_0x01FE1E_stop_sound_engine
C - - - - - 0x009B89 02:9B79: AD 5E 9F  LDA tbl_9F5E_auto_playlist
C - - - - - 0x009B8C 02:9B7C: 85 5C     STA ram_005C_sound_mode_data
C - - - - - 0x009B8E 02:9B7E: AD 5F 9F  LDA tbl_9F5E_auto_playlist + $01
C - - - - - 0x009B91 02:9B81: 85 5D     STA ram_005C_sound_mode_data + $01
; bzk optimize, doesn't look like data from tbl_9FB7 will be read
C - - - - - 0x009B93 02:9B83: AD 60 9F  LDA tbl_9F60
C - - - - - 0x009B96 02:9B86: 85 60     STA ram_0060_sound_mode_data
C - - - - - 0x009B98 02:9B88: AD 61 9F  LDA tbl_9F60 + $01
C - - - - - 0x009B9B 02:9B8B: 85 61     STA ram_0060_sound_mode_data + $01
C - - - - - 0x009B9D 02:9B8D: A9 01     LDA #$01
C - - - - - 0x009B9F 02:9B8F: 85 59     STA ram_play_all
C - - - - - 0x009BA1 02:9B91: 60        RTS



sub_9B92_sound_mode:
C - - - - - 0x009BA2 02:9B92: A5 59     LDA ram_play_all
C - - - - - 0x009BA4 02:9B94: D0 31     BNE bra_9BC7_RTS
C - - - - - 0x009BA6 02:9B96: A5 F7     LDA ram_copy_btn_hold
C - - - - - 0x009BA8 02:9B98: 29 0C     AND #con_btns_UD
C - - - - - 0x009BAA 02:9B9A: F0 2B     BEQ bra_9BC7_RTS
C - - - - - 0x009BAC 02:9B9C: A0 04     LDY #$04
C - - - - - 0x009BAE 02:9B9E: C6 58     DEC ram_0058_sound_mode
C - - - - - 0x009BB0 02:9BA0: F0 08     BEQ bra_9BAA
C - - - - - 0x009BB2 02:9BA2: A5 F5     LDA ram_copy_btn_press
C - - - - - 0x009BB4 02:9BA4: 29 0C     AND #con_btns_UD
C - - - - - 0x009BB6 02:9BA6: F0 1F     BEQ bra_9BC7_RTS
C - - - - - 0x009BB8 02:9BA8: A0 20     LDY #$20
bra_9BAA:
C - - - - - 0x009BBA 02:9BAA: 84 58     STY ram_0058_sound_mode
C - - - - - 0x009BBC 02:9BAC: 4A        LSR
C - - - - - 0x009BBD 02:9BAD: 4A        LSR
C - - - - - 0x009BBE 02:9BAE: 4A        LSR
C - - - - - 0x009BBF 02:9BAF: 90 17     BCC bra_9BC8
C - - - - - 0x009BC1 02:9BB1: A5 53     LDA ram_sound_mode_track_cur
C - - - - - 0x009BC3 02:9BB3: C9 26     CMP #$26
C - - - - - 0x009BC5 02:9BB5: B0 10     BCS bra_9BC7_RTS
C - - - - - 0x009BC7 02:9BB7: E6 53     INC ram_sound_mode_track_cur
C - - - - - 0x009BC9 02:9BB9: A5 53     LDA ram_sound_mode_track_cur
C - - - - - 0x009BCB 02:9BBB: 38        SEC
C - - - - - 0x009BCC 02:9BBC: E5 54     SBC ram_sound_mode_track_min
C - - - - - 0x009BCE 02:9BBE: C9 07     CMP #$07
C - - - - - 0x009BD0 02:9BC0: 90 05     BCC bra_9BC7_RTS
C - - - - - 0x009BD2 02:9BC2: E6 54     INC ram_sound_mode_track_min
C - - - - - 0x009BD4 02:9BC4: 4C D9 9B  JMP loc_9BD9
bra_9BC7_RTS:
C - - - - - 0x009BD7 02:9BC7: 60        RTS
bra_9BC8:
C - - - - - 0x009BD8 02:9BC8: 4A        LSR
C - - - - - 0x009BD9 02:9BC9: 90 FC     BCC bra_9BC7_RTS
C - - - - - 0x009BDB 02:9BCB: A5 53     LDA ram_sound_mode_track_cur
C - - - - - 0x009BDD 02:9BCD: F0 F8     BEQ bra_9BC7_RTS
C - - - - - 0x009BDF 02:9BCF: C6 53     DEC ram_sound_mode_track_cur
C - - - - - 0x009BE1 02:9BD1: A5 53     LDA ram_sound_mode_track_cur
C - - - - - 0x009BE3 02:9BD3: C5 54     CMP ram_sound_mode_track_min
C - - - - - 0x009BE5 02:9BD5: B0 F0     BCS bra_9BC7_RTS
C - - - - - 0x009BE7 02:9BD7: C6 54     DEC ram_sound_mode_track_min
sub_9BD9_sound_mode:
loc_9BD9:
C D 0 - - - 0x009BE9 02:9BD9: A9 22     LDA #> $22A8
C - - - - - 0x009BEB 02:9BDB: 85 01     STA ram_0001
C - - - - - 0x009BED 02:9BDD: A9 A8     LDA #< $22A8
C - - - - - 0x009BEF 02:9BDF: 85 00     STA ram_0000
C - - - - - 0x009BF1 02:9BE1: A9 00     LDA #$00
C - - - - - 0x009BF3 02:9BE3: 85 09     STA ram_0009
C - - - - - 0x009BF5 02:9BE5: A5 54     LDA ram_sound_mode_track_min
C - - - - - 0x009BF7 02:9BE7: 0A        ASL
C - - - - - 0x009BF8 02:9BE8: 26 09     ROL ram_0009
C - - - - - 0x009BFA 02:9BEA: 0A        ASL
C - - - - - 0x009BFB 02:9BEB: 26 09     ROL ram_0009
C - - - - - 0x009BFD 02:9BED: 0A        ASL
C - - - - - 0x009BFE 02:9BEE: 26 09     ROL ram_0009
C - - - - - 0x009C00 02:9BF0: 6D CB 9C  ADC tbl_9CCB_track_names
C - - - - - 0x009C03 02:9BF3: 85 08     STA ram_0008
C - - - - - 0x009C05 02:9BF5: AD CC 9C  LDA tbl_9CCB_track_names + $01
C - - - - - 0x009C08 02:9BF8: 65 09     ADC ram_0009
C - - - - - 0x009C0A 02:9BFA: 85 09     STA ram_0009
C - - - - - 0x009C0C 02:9BFC: A6 1E     LDX ram_index_ppu_buffer
C - - - - - 0x009C0E 02:9BFE: A9 06     LDA #con_buf_mode_06
C - - - - - 0x009C10 02:9C00: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x009C13 02:9C03: E8        INX
C - - - - - 0x009C14 02:9C04: A9 06     LDA #$06
C - - - - - 0x009C16 02:9C06: 85 0A     STA ram_000A
bra_9C08_loop:
C - - - - - 0x009C18 02:9C08: A0 00     LDY #$00
C - - - - - 0x009C1A 02:9C0A: A5 01     LDA ram_0001    ; ppu hi
C - - - - - 0x009C1C 02:9C0C: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x009C1F 02:9C0F: E8        INX
C - - - - - 0x009C20 02:9C10: A5 00     LDA ram_0000    ; ppu lo
C - - - - - 0x009C22 02:9C12: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x009C25 02:9C15: E8        INX
C - - - - - 0x009C26 02:9C16: A9 08     LDA #$08    ; counter
C - - - - - 0x009C28 02:9C18: 85 0B     STA ram_000B
C - - - - - 0x009C2A 02:9C1A: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x009C2D 02:9C1D: E8        INX
bra_9C1E_loop:
C - - - - - 0x009C2E 02:9C1E: B1 08     LDA (ram_0008),Y
C - - - - - 0x009C30 02:9C20: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x009C33 02:9C23: E8        INX
C - - - - - 0x009C34 02:9C24: C8        INY
C - - - - - 0x009C35 02:9C25: C6 0B     DEC ram_000B
C - - - - - 0x009C37 02:9C27: D0 F5     BNE bra_9C1E_loop
C - - - - - 0x009C39 02:9C29: A5 08     LDA ram_0008
C - - - - - 0x009C3B 02:9C2B: 18        CLC
C - - - - - 0x009C3C 02:9C2C: 69 08     ADC #$08
C - - - - - 0x009C3E 02:9C2E: 85 08     STA ram_0008
C - - - - - 0x009C40 02:9C30: 90 02     BCC bra_9C34
C - - - - - 0x009C42 02:9C32: E6 09     INC ram_0009
bra_9C34:
C - - - - - 0x009C44 02:9C34: A5 00     LDA ram_0000
C - - - - - 0x009C46 02:9C36: 18        CLC
C - - - - - 0x009C47 02:9C37: 69 20     ADC #$20
C - - - - - 0x009C49 02:9C39: 85 00     STA ram_0000
C - - - - - 0x009C4B 02:9C3B: 90 02     BCC bra_9C3F
C - - - - - 0x009C4D 02:9C3D: E6 01     INC ram_0001
bra_9C3F:
C - - - - - 0x009C4F 02:9C3F: C6 0A     DEC ram_000A
C - - - - - 0x009C51 02:9C41: 10 C5     BPL bra_9C08_loop
C - - - - - 0x009C53 02:9C43: A9 FF     LDA #$FF
C - - - - - 0x009C55 02:9C45: 4C 9D 9C  JMP loc_9C9D_close_buffer



sub_9C48_sound_mode_clear_line:
C - - - - - 0x009C58 02:9C48: A6 1E     LDX ram_index_ppu_buffer
C - - - - - 0x009C5A 02:9C4A: A9 03     LDA #con_buf_mode_03
C - - - - - 0x009C5C 02:9C4C: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x009C5F 02:9C4F: E8        INX
C - - - - - 0x009C60 02:9C50: A5 57     LDA ram_0056_sound_mode_ppu + $01    ; ppu hi
C - - - - - 0x009C62 02:9C52: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x009C65 02:9C55: E8        INX
C - - - - - 0x009C66 02:9C56: A5 56     LDA ram_0056_sound_mode_ppu    ; ppu lo
C - - - - - 0x009C68 02:9C58: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x009C6B 02:9C5B: E8        INX
C - - - - - 0x009C6C 02:9C5C: A9 20     LDA #$20    ; counter
C - - - - - 0x009C6E 02:9C5E: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x009C71 02:9C61: E8        INX
C - - - - - 0x009C72 02:9C62: A9 00     LDA #$00    ; tile
C - - - - - 0x009C74 02:9C64: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x009C77 02:9C67: E8        INX
C - - - - - 0x009C78 02:9C68: 86 1E     STX ram_index_ppu_buffer
C - - - - - 0x009C7A 02:9C6A: A5 56     LDA ram_0056_sound_mode_ppu
C - - - - - 0x009C7C 02:9C6C: 38        SEC
C - - - - - 0x009C7D 02:9C6D: E9 20     SBC #< $0020
C - - - - - 0x009C7F 02:9C6F: 85 56     STA ram_0056_sound_mode_ppu
C - - - - - 0x009C81 02:9C71: A5 57     LDA ram_0056_sound_mode_ppu + $01
C - - - - - 0x009C83 02:9C73: E9 00     SBC #> $0020
C - - - - - 0x009C85 02:9C75: 85 57     STA ram_0056_sound_mode_ppu + $01
C - - - - - 0x009C87 02:9C77: 60        RTS



sub_9C78_draw_sound_mode_window:
C - - - - - 0x009C88 02:9C78: A5 55     LDA ram_0055_sound_mode    ; window line counter
C - - - - - 0x009C8A 02:9C7A: 0A        ASL
C - - - - - 0x009C8B 02:9C7B: A8        TAY
C - - - - - 0x009C8C 02:9C7C: B9 05 9E  LDA tbl_9E05_sound_mode_window,Y
C - - - - - 0x009C8F 02:9C7F: 85 08     STA ram_0008
C - - - - - 0x009C91 02:9C81: B9 06 9E  LDA tbl_9E05_sound_mode_window + $01,Y
C - - - - - 0x009C94 02:9C84: 85 09     STA ram_0009
C - - - - - 0x009C96 02:9C86: A6 1E     LDX ram_index_ppu_buffer
C - - - - - 0x009C98 02:9C88: A9 06     LDA #con_buf_mode_06
C - - - - - 0x009C9A 02:9C8A: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x009C9D 02:9C8D: E8        INX
C - - - - - 0x009C9E 02:9C8E: A0 00     LDY #$00
bra_9C90_loop:
C - - - - - 0x009CA0 02:9C90: B1 08     LDA (ram_0008),Y
C - - - - - 0x009CA2 02:9C92: C9 FF     CMP #$FF
C - - - - - 0x009CA4 02:9C94: F0 07     BEQ bra_9C9D_FF
C - - - - - 0x009CA6 02:9C96: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x009CA9 02:9C99: E8        INX
C - - - - - 0x009CAA 02:9C9A: C8        INY
C - - - - - 0x009CAB 02:9C9B: D0 F3     BNE bra_9C90_loop    ; jmp
bra_9C9D_FF:
loc_9C9D_close_buffer:
; A = FF
C D 0 - - - 0x009CAD 02:9C9D: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x009CB0 02:9CA0: E8        INX
C - - - - - 0x009CB1 02:9CA1: 86 1E     STX ram_index_ppu_buffer
C - - - - - 0x009CB3 02:9CA3: 60        RTS



tbl_9CA4_track_list:
- D 0 - - - 0x009CB4 02:9CA4: 28        .byte con_sound_28   ; 00 BGM1
- D 0 - - - 0x009CB5 02:9CA5: 2B        .byte con_sound_2B   ; 01 BGM2
- D 0 - - - 0x009CB6 02:9CA6: 2A        .byte con_sound_2A   ; 02 BGM3
- D 0 - - - 0x009CB7 02:9CA7: 29        .byte con_sound_29   ; 03 BGM4
- D 0 - - - 0x009CB8 02:9CA8: 2C        .byte con_sound_2C   ; 04 BGM5
- D 0 - - - 0x009CB9 02:9CA9: 2D        .byte con_sound_2D   ; 05 BGM6
- D 0 - - - 0x009CBA 02:9CAA: 2F        .byte con_sound_2F   ; 06 BGM7
- D 0 - - - 0x009CBB 02:9CAB: 30        .byte con_sound_30   ; 07 GREAT
- D 0 - - - 0x009CBC 02:9CAC: 31        .byte con_sound_31   ; 08 BOSS BGM
- D 0 - - - 0x009CBD 02:9CAD: 32        .byte con_sound_32   ; 09 BOSS2BGM
- D 0 - - - 0x009CBE 02:9CAE: 33        .byte con_sound_33   ; 0A P CLEAR
- D 0 - - - 0x009CBF 02:9CAF: 34        .byte con_sound_34   ; 0B A CLEAR
- D 0 - - - 0x009CC0 02:9CB0: 35        .byte con_sound_35   ; 0C OVER
- D 0 - - - 0x009CC1 02:9CB1: 36        .byte con_sound_36   ; 0D ENDING
- D 0 - - - 0x009CC2 02:9CB2: 06        .byte con_sound_06   ; 0E SUTA
- D 0 - - - 0x009CC3 02:9CB3: 0A        .byte con_sound_0A   ; 0F THUNDER
- D 0 - - - 0x009CC4 02:9CB4: 0B        .byte con_sound_0B   ; 10 SHOT
- D 0 - - - 0x009CC5 02:9CB5: 0D        .byte con_sound_0D   ; 11 LASER
- D 0 - - - 0x009CC6 02:9CB6: 0E        .byte con_sound_0E   ; 12 SPREAD
- D 0 - - - 0x009CC7 02:9CB7: 0F        .byte con_sound_0F   ; 13 FIRE
- D 0 - - - 0x009CC8 02:9CB8: 10        .byte con_sound_10   ; 14 B SHOT
- D 0 - - - 0x009CC9 02:9CB9: 11        .byte con_sound_11   ; 15 T DAMEGE
- D 0 - - - 0x009CCA 02:9CBA: 12        .byte con_sound_12   ; 16 HARETSU
- D 0 - - - 0x009CCB 02:9CBB: 13        .byte con_sound_13   ; 17 T OUT
- D 0 - - - 0x009CCC 02:9CBC: 14        .byte con_sound_14   ; 18 Z OUT
- D 0 - - - 0x009CCD 02:9CBD: 15        .byte con_sound_15   ; 19 A OUT
- D 0 - - - 0x009CCE 02:9CBE: 16        .byte con_sound_16   ; 1A ROLL
- D 0 - - - 0x009CCF 02:9CBF: 18        .byte con_sound_18   ; 1B APPEAR
- D 0 - - - 0x009CD0 02:9CC0: 19        .byte con_sound_19   ; 1C POWER
- D 0 - - - 0x009CD1 02:9CC1: 1A        .byte con_sound_1A   ; 1D BOSS BK
- D 0 - - - 0x009CD2 02:9CC2: 1B        .byte con_sound_1B   ; 1E BAKUHA1
- D 0 - - - 0x009CD3 02:9CC3: 1C        .byte con_sound_1C   ; 1F BAKUHA2
- D 0 - - - 0x009CD4 02:9CC4: 1F        .byte con_sound_1F   ; 20 ARUKU
- D 0 - - - 0x009CD5 02:9CC5: 20        .byte con_sound_20   ; 21 JIWARE
- D 0 - - - 0x009CD6 02:9CC6: 21        .byte con_sound_21   ; 22 SILEN
- D 0 - - - 0x009CD7 02:9CC7: 23        .byte con_sound_23   ; 23 P 1UP
- D 0 - - - 0x009CD8 02:9CC8: 25        .byte con_sound_25   ; 24 P OUT
- D 0 - - - 0x009CD9 02:9CC9: 26        .byte con_sound_26   ; 25 B OUT
; bzk garbage
- - - - - - 0x009CDA 02:9CCA: FF        .byte $FF            ; 26 MELODEY



tbl_9CCB_track_names:
; bzk optimize
- D 0 - - - 0x009CDB 02:9CCB: CD 9C     .word tbl_9CCD_track_names



tbl_9CCD_track_names:
- D 0 - I - 0x009CDD 02:9CCD: 0C        .byte $0C, $11, $17, $02, $00, $00, $00, $00   ; 00 "BGM1    "
- D 0 - I - 0x009CE5 02:9CD5: 0C        .byte $0C, $11, $17, $03, $00, $00, $00, $00   ; 01 "BGM2    "
- D 0 - I - 0x009CED 02:9CDD: 0C        .byte $0C, $11, $17, $04, $00, $00, $00, $00   ; 02 "BGM3    "
- D 0 - I - 0x009CF5 02:9CE5: 0C        .byte $0C, $11, $17, $05, $00, $00, $00, $00   ; 03 "BGM4    "
- D 0 - I - 0x009CFD 02:9CED: 0C        .byte $0C, $11, $17, $06, $00, $00, $00, $00   ; 04 "BGM5    "
- D 0 - I - 0x009D05 02:9CF5: 0C        .byte $0C, $11, $17, $07, $00, $00, $00, $00   ; 05 "BGM6    "
- D 0 - I - 0x009D0D 02:9CFD: 0C        .byte $0C, $11, $17, $08, $00, $00, $00, $00   ; 06 "BGM7    "
- D 0 - I - 0x009D15 02:9D05: 11        .byte $11, $1C, $0F, $0B, $1E, $00, $00, $00   ; 07 "GREAT   "
- D 0 - I - 0x009D1D 02:9D0D: 0C        .byte $0C, $19, $1D, $1D, $00, $0C, $11, $17   ; 08 "BOSS BGM"
- D 0 - I - 0x009D25 02:9D15: 0C        .byte $0C, $19, $1D, $1D, $03, $0C, $11, $17   ; 09 "BOSS2BGM"
- D 0 - I - 0x009D2D 02:9D1D: 1A        .byte $1A, $00, $0D, $16, $0F, $0B, $1C, $00   ; 0A "P CLEAR "
- D 0 - I - 0x009D35 02:9D25: 0B        .byte $0B, $00, $0D, $16, $0F, $0B, $1C, $00   ; 0B "A CLEAR "
- D 0 - I - 0x009D3D 02:9D2D: 19        .byte $19, $20, $0F, $1C, $00, $00, $00, $00   ; 0C "OVER    "
- D 0 - I - 0x009D45 02:9D35: 0F        .byte $0F, $18, $0E, $13, $18, $11, $00, $00   ; 0D "ENDING  "
- D 0 - I - 0x009D4D 02:9D3D: 1D        .byte $1D, $1F, $1E, $0B, $00, $00, $00, $00   ; 0E "SUTA    "
- D 0 - I - 0x009D55 02:9D45: 1E        .byte $1E, $12, $1F, $18, $0E, $0F, $1C, $00   ; 0F "THUNDER "
- D 0 - I - 0x009D5D 02:9D4D: 1D        .byte $1D, $12, $19, $1E, $00, $00, $00, $00   ; 10 "SHOT    "
- D 0 - I - 0x009D65 02:9D55: 16        .byte $16, $0B, $1D, $0F, $1C, $00, $00, $00   ; 11 "LASER   "
- D 0 - I - 0x009D6D 02:9D5D: 1D        .byte $1D, $1A, $1C, $0F, $0B, $0E, $00, $00   ; 12 "SPREAD  "
- D 0 - I - 0x009D75 02:9D65: 10        .byte $10, $13, $1C, $0F, $00, $00, $00, $00   ; 13 "FIRE    "
- D 0 - I - 0x009D7D 02:9D6D: 0C        .byte $0C, $00, $1D, $12, $19, $1E, $00, $00   ; 14 "B SHOT  "
- D 0 - I - 0x009D85 02:9D75: 1E        .byte $1E, $00, $0E, $0B, $17, $0F, $11, $0F   ; 15 "T DAMEGE"
- D 0 - I - 0x009D8D 02:9D7D: 12        .byte $12, $0B, $1C, $0F, $1E, $1D, $1F, $00   ; 16 "HARETSU "
- D 0 - I - 0x009D95 02:9D85: 1E        .byte $1E, $00, $19, $1F, $1E, $00, $00, $00   ; 17 "T OUT   "
- D 0 - I - 0x009D9D 02:9D8D: 24        .byte $24, $00, $19, $1F, $1E, $00, $00, $00   ; 18 "Z OUT   "
- D 0 - I - 0x009DA5 02:9D95: 0B        .byte $0B, $00, $19, $1F, $1E, $00, $00, $00   ; 19 "A OUT   "
- D 0 - I - 0x009DAD 02:9D9D: 1C        .byte $1C, $19, $16, $16, $00, $00, $00, $00   ; 1A "ROLL    "
- D 0 - I - 0x009DB5 02:9DA5: 0B        .byte $0B, $1A, $1A, $0F, $0B, $1C, $00, $00   ; 1B "APPEAR  "
- D 0 - I - 0x009DBD 02:9DAD: 1A        .byte $1A, $19, $21, $0F, $1C, $00, $00, $00   ; 1C "POWER   "
- D 0 - I - 0x009DC5 02:9DB5: 0C        .byte $0C, $19, $1D, $1D, $00, $0C, $15, $00   ; 1D "BOSS BK "
- D 0 - I - 0x009DCD 02:9DBD: 0C        .byte $0C, $0B, $15, $1F, $12, $0B, $02, $00   ; 1E "BAKUHA1 "
- D 0 - I - 0x009DD5 02:9DC5: 0C        .byte $0C, $0B, $15, $1F, $12, $0B, $03, $00   ; 1F "BAKUHA2 "
- D 0 - I - 0x009DDD 02:9DCD: 0B        .byte $0B, $1C, $1F, $15, $1F, $00, $00, $00   ; 20 "ARUKU   "
- D 0 - I - 0x009DE5 02:9DD5: 14        .byte $14, $13, $21, $0B, $1C, $0F, $00, $00   ; 21 "JIWARE  "
- D 0 - I - 0x009DED 02:9DDD: 1D        .byte $1D, $13, $16, $0F, $18, $00, $00, $00   ; 22 "SILEN   "
- D 0 - I - 0x009DF5 02:9DE5: 1A        .byte $1A, $00, $02, $1F, $1A, $00, $00, $00   ; 23 "P 1UP   "
- D 0 - I - 0x009DFD 02:9DED: 1A        .byte $1A, $00, $19, $1F, $1E, $00, $00, $00   ; 24 "P OUT   "
- D 0 - I - 0x009E05 02:9DF5: 0C        .byte $0C, $00, $19, $1F, $1E, $00, $00, $00   ; 25 "B OUT   "
- D 0 - I - 0x009E0D 02:9DFD: 17        .byte $17, $0F, $0E, $19, $16, $0F, $23, $00   ; 26 "MEDOLEY "



tbl_9E05_sound_mode_window:
- D 0 - - - 0x009E15 02:9E05: 21 9E     .word _off011_9E21_00
- D 0 - - - 0x009E17 02:9E07: 45 9E     .word _off011_9E45_01
- D 0 - - - 0x009E19 02:9E09: 55 9E     .word _off011_9E55_02
- D 0 - - - 0x009E1B 02:9E0B: 65 9E     .word _off011_9E65_03
- D 0 - - - 0x009E1D 02:9E0D: 75 9E     .word _off011_9E75_04
- D 0 - - - 0x009E1F 02:9E0F: 7A 9E     .word _off011_9E7A_05
- D 0 - - - 0x009E21 02:9E11: 94 9E     .word _off011_9E94_06
- D 0 - - - 0x009E23 02:9E13: 9D 9E     .word _off011_9E9D_07
- D 0 - - - 0x009E25 02:9E15: AF 9E     .word _off011_9EAF_08
- D 0 - - - 0x009E27 02:9E17: BD 9E     .word _off011_9EBD_09
- D 0 - - - 0x009E29 02:9E19: C6 9E     .word _off011_9EC6_0A
- D 0 - - - 0x009E2B 02:9E1B: D8 9E     .word _off011_9ED8_0B
- D 0 - - - 0x009E2D 02:9E1D: E5 9E     .word _off011_9EE5_0C
- D 0 - - - 0x009E2F 02:9E1F: EE 9E     .word _off011_9EEE_0D



_off011_9E21_00:
- D 0 - I - 0x009E31 02:9E21: 23 E0     .dbyt $23E0 ; ppu address
- D 0 - I - 0x009E33 02:9E23: 20        .byte $20   ; counter
- D 0 - I - 0x009E34 02:9E24: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55   ; 
- D 0 - I - 0x009E44 02:9E34: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55   ; 

- D 0 - I - 0x009E54 02:9E44: FF        .byte $FF   ; end token



_off011_9E45_01:
- D 0 - I - 0x009E55 02:9E45: 22 0A     .dbyt $220A ; ppu address
- D 0 - I - 0x009E57 02:9E47: 0C        .byte $0C   ; counter
- D 0 - I - 0x009E58 02:9E48: 28        .byte $28, $2C, $2C, $2C, $2C, $2C, $2C, $2C, $2C, $2C, $2C, $29   ; 

- D 0 - I - 0x009E64 02:9E54: FF        .byte $FF   ; end token



_off011_9E55_02:
- D 0 - I - 0x009E65 02:9E55: 22 2A     .dbyt $222A ; ppu address
- D 0 - I - 0x009E67 02:9E57: 0C        .byte $0C   ; counter
- D 0 - I - 0x009E68 02:9E58: 2D        .byte $2D, $1D, $19, $1F, $18, $0E, $00, $17, $19, $0E, $0F, $2D   ; 

- D 0 - I - 0x009E74 02:9E64: FF        .byte $FF   ; end token



_off011_9E65_03:
- D 0 - I - 0x009E75 02:9E65: 22 4A     .dbyt $224A ; ppu address
- D 0 - I - 0x009E77 02:9E67: 0C        .byte $0C   ; counter
- D 0 - I - 0x009E78 02:9E68: 2A        .byte $2A, $2C, $2C, $2C, $2C, $2C, $2C, $2C, $2C, $2C, $2C, $2B   ; 

- D 0 - I - 0x009E84 02:9E74: FF        .byte $FF   ; end token



_off011_9E75_04:
- D 0 - I - 0x009E85 02:9E75: 22 6A     .dbyt $226A ; ppu address
- D 0 - I - 0x009E87 02:9E77: 01        .byte $01   ; counter
- D 0 - I - 0x009E88 02:9E78: 00        .byte $00   ; 

- D 0 - I - 0x009E89 02:9E79: FF        .byte $FF   ; end token



_off011_9E7A_05:
- D 0 - I - 0x009E8A 02:9E7A: 22 85     .dbyt $2285 ; ppu address
- D 0 - I - 0x009E8C 02:9E7C: 16        .byte $16   ; counter
- D 0 - I - 0x009E8D 02:9E7D: 28        .byte $28, $2C, $2C, $2C, $2C, $2C, $2C, $2C, $2C, $2C, $2C, $2C, $2C, $2C, $2C, $2C   ; 
- D 0 - I - 0x009E9D 02:9E8D: 2C        .byte $2C, $2C, $2C, $2C, $2C, $29   ; 

- D 0 - I - 0x009EA3 02:9E93: FF        .byte $FF   ; end token



_off011_9E94_06:
- D 0 - I - 0x009EA4 02:9E94: 22 A5     .dbyt $22A5 ; ppu address
- D 0 - I - 0x009EA6 02:9E96: 01        .byte $01   ; counter
- D 0 - I - 0x009EA7 02:9E97: 2D        .byte $2D   ; 

- D 0 - I - 0x009EA8 02:9E98: 22 BA     .dbyt $22BA ; ppu address
- D 0 - I - 0x009EAA 02:9E9A: 01        .byte $01   ; counter
- D 0 - I - 0x009EAB 02:9E9B: 2D        .byte $2D   ; 

- D 0 - I - 0x009EAC 02:9E9C: FF        .byte $FF   ; end token



_off011_9E9D_07:
- D 0 - I - 0x009EAD 02:9E9D: 22 C5     .dbyt $22C5 ; ppu address
- D 0 - I - 0x009EAF 02:9E9F: 01        .byte $01   ; counter
- D 0 - I - 0x009EB0 02:9EA0: 2D        .byte $2D   ; 

- D 0 - I - 0x009EB1 02:9EA1: 22 D1     .dbyt $22D1 ; ppu address
- D 0 - I - 0x009EB3 02:9EA3: 0A        .byte $0A   ; counter
- D 0 - I - 0x009EB4 02:9EA4: 0C        .byte $0C, $25, $25, $25, $1D, $19, $1F, $18, $0E, $2D   ; "B***SOUND"

- D 0 - I - 0x009EBE 02:9EAE: FF        .byte $FF   ; end token



_off011_9EAF_08:
- D 0 - I - 0x009EBF 02:9EAF: 22 E5     .dbyt $22E5 ; ppu address
- D 0 - I - 0x009EC1 02:9EB1: 01        .byte $01   ; counter
- D 0 - I - 0x009EC2 02:9EB2: 2D        .byte $2D   ; 

- D 0 - I - 0x009EC3 02:9EB3: 22 F5     .dbyt $22F5 ; ppu address
- D 0 - I - 0x009EC5 02:9EB5: 06        .byte $06   ; counter
- D 0 - I - 0x009EC6 02:9EB6: 1D        .byte $1D, $1E, $0B, $1C, $1E, $2D   ; "START"

- D 0 - I - 0x009ECC 02:9EBC: FF        .byte $FF   ; end token



_off011_9EBD_09:
- D 0 - I - 0x009ECD 02:9EBD: 23 05     .dbyt $2305 ; ppu address
- D 0 - I - 0x009ECF 02:9EBF: 01        .byte $01   ; counter
- D 0 - I - 0x009ED0 02:9EC0: 2D        .byte $2D   ; 

- D 0 - I - 0x009ED1 02:9EC1: 23 1A     .dbyt $231A ; ppu address
- D 0 - I - 0x009ED3 02:9EC3: 01        .byte $01   ; counter
- D 0 - I - 0x009ED4 02:9EC4: 2D        .byte $2D   ; 

- D 0 - I - 0x009ED5 02:9EC5: FF        .byte $FF   ; end token



_off011_9EC6_0A:
- D 0 - I - 0x009ED6 02:9EC6: 23 25     .dbyt $2325 ; ppu address
- D 0 - I - 0x009ED8 02:9EC8: 01        .byte $01   ; counter
- D 0 - I - 0x009ED9 02:9EC9: 2D        .byte $2D   ; 

- D 0 - I - 0x009EDA 02:9ECA: 23 31     .dbyt $2331 ; ppu address
- D 0 - I - 0x009EDC 02:9ECC: 0A        .byte $0A   ; counter
- D 0 - I - 0x009EDD 02:9ECD: 0B        .byte $0B, $25, $25, $25, $1D, $19, $1F, $18, $0E, $2D   ; "A***SOUND"

- D 0 - I - 0x009EE7 02:9ED7: FF        .byte $FF   ; end token



_off011_9ED8_0B:
- D 0 - I - 0x009EE8 02:9ED8: 23 45     .dbyt $2345 ; ppu address
- D 0 - I - 0x009EEA 02:9EDA: 01        .byte $01   ; counter
- D 0 - I - 0x009EEB 02:9EDB: 2D        .byte $2D   ; 

- D 0 - I - 0x009EEC 02:9EDC: 23 56     .dbyt $2356 ; ppu address
- D 0 - I - 0x009EEE 02:9EDE: 05        .byte $05   ; counter
- D 0 - I - 0x009EEF 02:9EDF: 19        .byte $19, $10, $10, $00, $2D   ; "OFF"

- D 0 - I - 0x009EF4 02:9EE4: FF        .byte $FF   ; end token



_off011_9EE5_0C:
- D 0 - I - 0x009EF5 02:9EE5: 23 65     .dbyt $2365 ; ppu address
- D 0 - I - 0x009EF7 02:9EE7: 01        .byte $01   ; counter
- D 0 - I - 0x009EF8 02:9EE8: 2D        .byte $2D   ; 

- D 0 - I - 0x009EF9 02:9EE9: 23 7A     .dbyt $237A ; ppu address
- D 0 - I - 0x009EFB 02:9EEB: 01        .byte $01   ; counter
- D 0 - I - 0x009EFC 02:9EEC: 2D        .byte $2D   ; 

- D 0 - I - 0x009EFD 02:9EED: FF        .byte $FF   ; end token



_off011_9EEE_0D:
- D 0 - I - 0x009EFE 02:9EEE: 23 85     .dbyt $2385 ; ppu address
- D 0 - I - 0x009F00 02:9EF0: 16        .byte $16   ; counter
- D 0 - I - 0x009F01 02:9EF1: 2A        .byte $2A, $2C, $2C, $2C, $2C, $2C, $2C, $2C, $2C, $2C, $2C, $2C, $2C, $2C, $2C, $2C   ; 
- D 0 - I - 0x009F11 02:9F01: 2C        .byte $2C, $2C, $2C, $2C, $2C, $2B   ; 

- D 0 - I - 0x009F17 02:9F07: FF        .byte $FF   ; end token



sub_9F08_sound_mode:
C - - - - - 0x009F18 02:9F08: A5 59     LDA ram_play_all
C - - - - - 0x009F1A 02:9F0A: F0 03     BEQ bra_9F0F_RTS
C - - - - - 0x009F1C 02:9F0C: 20 10 9F  JSR sub_9F10
bra_9F0F_RTS:
C - - - - - 0x009F1F 02:9F0F: 60        RTS



sub_9F10:
C - - - - - 0x009F20 02:9F10: A5 5A     LDA ram_005A_sound_mode
C - - - - - 0x009F22 02:9F12: 05 5B     ORA ram_005B_sound_mode
C - - - - - 0x009F24 02:9F14: F0 07     BEQ bra_9F1D
C - - - - - 0x009F26 02:9F16: C6 5A     DEC ram_005A_sound_mode
C - - - - - 0x009F28 02:9F18: D0 02     BNE bra_9F1C_RTS
C - - - - - 0x009F2A 02:9F1A: C6 5B     DEC ram_005B_sound_mode
bra_9F1C_RTS:
C - - - - - 0x009F2C 02:9F1C: 60        RTS
bra_9F1D:
C - - - - - 0x009F2D 02:9F1D: A0 00     LDY #$00
C - - - - - 0x009F2F 02:9F1F: B1 5C     LDA (ram_005C_sound_mode_data),Y
C - - - - - 0x009F31 02:9F21: C9 FF     CMP #$FF
C - - - - - 0x009F33 02:9F23: F0 2C     BEQ bra_9F51_FF
C - - - - - 0x009F35 02:9F25: 85 09     STA ram_0009
; bzk optimize, no bytes >= 40 in there (except FF)
C - - - - - 0x009F37 02:9F27: 29 3F     AND #$3F
C - - - - - 0x009F39 02:9F29: 85 5B     STA ram_005B_sound_mode
C - - - - - 0x009F3B 02:9F2B: C8        INY
C - - - - - 0x009F3C 02:9F2C: B1 5C     LDA (ram_005C_sound_mode_data),Y
C - - - - - 0x009F3E 02:9F2E: 85 5A     STA ram_005A_sound_mode
C - - - - - 0x009F40 02:9F30: C8        INY
C - - - - - 0x009F41 02:9F31: B1 5C     LDA (ram_005C_sound_mode_data),Y
C - - - - - 0x009F43 02:9F33: 85 08     STA ram_0008
C - - - - - 0x009F45 02:9F35: A5 09     LDA ram_0009
C - - - - - 0x009F47 02:9F37: 0A        ASL
; bzk optimize, no bytes >= 80 in there
C - - - - - 0x009F48 02:9F38: 30 03     BMI bra_9F3D
C - - - - - 0x009F4A 02:9F3A: 20 0E FE  JSR sub_0x01FE1E_stop_sound_engine
bra_9F3D:
C - - - - - 0x009F4D 02:9F3D: A5 08     LDA ram_0008
C - - - - - 0x009F4F 02:9F3F: 20 DE FD  JSR sub_0x01FDEE_play_sound
C - - - - - 0x009F52 02:9F42: 4C 45 9F  JMP loc_9F45    ; bzk optimize, useless JMP
loc_9F45:
C D 0 - - - 0x009F55 02:9F45: A5 5C     LDA ram_005C_sound_mode_data
C - - - - - 0x009F57 02:9F47: 18        CLC
C - - - - - 0x009F58 02:9F48: 69 03     ADC #$03
C - - - - - 0x009F5A 02:9F4A: 85 5C     STA ram_005C_sound_mode_data
C - - - - - 0x009F5C 02:9F4C: 90 02     BCC bra_9F50_RTS
- - - - - - 0x009F5E 02:9F4E: E6 5D     INC ram_005D_sound_mode
bra_9F50_RTS:
C - - - - - 0x009F60 02:9F50: 60        RTS
bra_9F51_FF:
sub_9F51:
C - - - - - 0x009F61 02:9F51: A9 00     LDA #$00
C - - - - - 0x009F63 02:9F53: 85 59     STA ram_play_all
C - - - - - 0x009F65 02:9F55: 85 5A     STA ram_005A_sound_mode
C - - - - - 0x009F67 02:9F57: 85 5B     STA ram_005B_sound_mode
C - - - - - 0x009F69 02:9F59: 85 5E     STA ram_005E
C - - - - - 0x009F6B 02:9F5B: 85 5F     STA ram_005F
C - - - - - 0x009F6D 02:9F5D: 60        RTS



tbl_9F5E_auto_playlist:
; bzk optimize
- D 0 - - - 0x009F6E 02:9F5E: 62 9F     .word tbl_9F62_auto_playlist



tbl_9F60:
; bzk optimize
- D 0 - - - 0x009F70 02:9F60: B7 9F     .word tbl_9FB7



tbl_9F62_auto_playlist:
; ???
- D 0 - I - 0x009F72 02:9F62: 0E        .byte $0E   ; 
- D 0 - I - 0x009F73 02:9F63: 5C        .byte $5C   ; 
- D 0 - I - 0x009F74 02:9F64: 28        .byte con_sound_28   ; 

- D 0 - I - 0x009F75 02:9F65: 0D        .byte $0D   ; 
- D 0 - I - 0x009F76 02:9F66: E4        .byte $E4   ; 
- D 0 - I - 0x009F77 02:9F67: 30        .byte con_sound_30   ; 

- D 0 - I - 0x009F78 02:9F68: 02        .byte $02   ; 
- D 0 - I - 0x009F79 02:9F69: 01        .byte $01   ; 
- D 0 - I - 0x009F7A 02:9F6A: 33        .byte con_sound_33   ; 

- D 0 - I - 0x009F7B 02:9F6B: 09        .byte $09   ; 
- D 0 - I - 0x009F7C 02:9F6C: 34        .byte $34   ; 
- D 0 - I - 0x009F7D 02:9F6D: 2B        .byte con_sound_2B   ; 

- D 0 - I - 0x009F7E 02:9F6E: 06        .byte $06   ; 
- D 0 - I - 0x009F7F 02:9F6F: DC        .byte $DC   ; 
- D 0 - I - 0x009F80 02:9F70: 31        .byte con_sound_31   ; 

- D 0 - I - 0x009F81 02:9F71: 02        .byte $02   ; 
- D 0 - I - 0x009F82 02:9F72: 01        .byte $01   ; 
- D 0 - I - 0x009F83 02:9F73: 33        .byte con_sound_33   ; 

- D 0 - I - 0x009F84 02:9F74: 0C        .byte $0C   ; 
- D 0 - I - 0x009F85 02:9F75: 40        .byte $40   ; 
- D 0 - I - 0x009F86 02:9F76: 2A        .byte con_sound_2A   ; 

- D 0 - I - 0x009F87 02:9F77: 08        .byte $08   ; 
- D 0 - I - 0x009F88 02:9F78: 08        .byte $08   ; 
- D 0 - I - 0x009F89 02:9F79: 32        .byte con_sound_32   ; 

- D 0 - I - 0x009F8A 02:9F7A: 06        .byte $06   ; 
- D 0 - I - 0x009F8B 02:9F7B: DC        .byte $DC   ; 
- D 0 - I - 0x009F8C 02:9F7C: 31        .byte con_sound_31   ; 

- D 0 - I - 0x009F8D 02:9F7D: 02        .byte $02   ; 
- D 0 - I - 0x009F8E 02:9F7E: 01        .byte $01   ; 
- D 0 - I - 0x009F8F 02:9F7F: 33        .byte con_sound_33   ; 

- D 0 - I - 0x009F90 02:9F80: 0C        .byte $0C   ; 
- D 0 - I - 0x009F91 02:9F81: B8        .byte $B8   ; 
- D 0 - I - 0x009F92 02:9F82: 29        .byte con_sound_29   ; 

- D 0 - I - 0x009F93 02:9F83: 06        .byte $06   ; 
- D 0 - I - 0x009F94 02:9F84: DC        .byte $DC   ; 
- D 0 - I - 0x009F95 02:9F85: 31        .byte con_sound_31   ; 

- D 0 - I - 0x009F96 02:9F86: 02        .byte $02   ; 
- D 0 - I - 0x009F97 02:9F87: 01        .byte $01   ; 
- D 0 - I - 0x009F98 02:9F88: 33        .byte con_sound_33   ; 

- D 0 - I - 0x009F99 02:9F89: 09        .byte $09   ; 
- D 0 - I - 0x009F9A 02:9F8A: 34        .byte $34   ; 
- D 0 - I - 0x009F9B 02:9F8B: 2C        .byte con_sound_2C   ; 

- D 0 - I - 0x009F9C 02:9F8C: 06        .byte $06   ; 
- D 0 - I - 0x009F9D 02:9F8D: DC        .byte $DC   ; 
- D 0 - I - 0x009F9E 02:9F8E: 31        .byte con_sound_31   ; 

- D 0 - I - 0x009F9F 02:9F8F: 02        .byte $02   ; 
- D 0 - I - 0x009FA0 02:9F90: 01        .byte $01   ; 
- D 0 - I - 0x009FA1 02:9F91: 33        .byte con_sound_33   ; 

- D 0 - I - 0x009FA2 02:9F92: 09        .byte $09   ; 
- D 0 - I - 0x009FA3 02:9F93: AC        .byte $AC   ; 
- D 0 - I - 0x009FA4 02:9F94: 2D        .byte con_sound_2D   ; 

- D 0 - I - 0x009FA5 02:9F95: 08        .byte $08   ; 
- D 0 - I - 0x009FA6 02:9F96: 08        .byte $08   ; 
- D 0 - I - 0x009FA7 02:9F97: 32        .byte con_sound_32   ; 

- D 0 - I - 0x009FA8 02:9F98: 0D        .byte $0D   ; 
- D 0 - I - 0x009FA9 02:9F99: E4        .byte $E4   ; 
- D 0 - I - 0x009FAA 02:9F9A: 30        .byte con_sound_30   ; 

- D 0 - I - 0x009FAB 02:9F9B: 02        .byte $02   ; 
- D 0 - I - 0x009FAC 02:9F9C: 01        .byte $01   ; 
- D 0 - I - 0x009FAD 02:9F9D: 33        .byte con_sound_33   ; 

- D 0 - I - 0x009FAE 02:9F9E: 0C        .byte $0C   ; 
- D 0 - I - 0x009FAF 02:9F9F: B8        .byte $B8   ; 
- D 0 - I - 0x009FB0 02:9FA0: 2E        .byte con_sound_2E   ; 

- D 0 - I - 0x009FB1 02:9FA1: 06        .byte $06   ; 
- D 0 - I - 0x009FB2 02:9FA2: DC        .byte $DC   ; 
- D 0 - I - 0x009FB3 02:9FA3: 31        .byte con_sound_31   ; 

- D 0 - I - 0x009FB4 02:9FA4: 02        .byte $02   ; 
- D 0 - I - 0x009FB5 02:9FA5: 01        .byte $01   ; 
- D 0 - I - 0x009FB6 02:9FA6: 33        .byte con_sound_33   ; 

- D 0 - I - 0x009FB7 02:9FA7: 0F        .byte $0F   ; 
- D 0 - I - 0x009FB8 02:9FA8: 10        .byte $10   ; 
- D 0 - I - 0x009FB9 02:9FA9: 2F        .byte con_sound_2F   ; 

- D 0 - I - 0x009FBA 02:9FAA: 0D        .byte $0D   ; 
- D 0 - I - 0x009FBB 02:9FAB: E4        .byte $E4   ; 
- D 0 - I - 0x009FBC 02:9FAC: 30        .byte con_sound_30   ; 

- D 0 - I - 0x009FBD 02:9FAD: 02        .byte $02   ; 
- D 0 - I - 0x009FBE 02:9FAE: 68        .byte $68   ; 
- D 0 - I - 0x009FBF 02:9FAF: 34        .byte con_sound_34   ; 

- D 0 - I - 0x009FC0 02:9FB0: 0C        .byte $0C   ; 
- D 0 - I - 0x009FC1 02:9FB1: 62        .byte $62   ; 
- D 0 - I - 0x009FC2 02:9FB2: 36        .byte con_sound_36   ; 

- D 0 - I - 0x009FC3 02:9FB3: 01        .byte $01   ; 
- D 0 - I - 0x009FC4 02:9FB4: F0        .byte $F0   ; 
- D 0 - I - 0x009FC5 02:9FB5: 35        .byte con_sound_35   ; 

- D 0 - I - 0x009FC6 02:9FB6: FF        .byte $FF   ; end token



tbl_9FB7:
- - - - - - 0x009FC7 02:9FB7: FF        .byte $FF   ; 



_off004_0x009FC8_00_area_1:
- D 0 - I - 0x009FC8 02:9FB8: 0E        .byte $0E   ; columns
- D 0 - I - 0x009FC9 02:9FB9: 04        .byte $04   ; rows

;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D
- - - - - - 0x009FCA 02:9FBA: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 00 
- D 0 - I - 0x009FD8 02:9FC8: 00        .byte $00, $00, $00, $00, $00, $00, $00, $09, $0A, $0E, $0B, $0F, $10, $11   ; 01 
- D 0 - I - 0x009FE6 02:9FD6: 01        .byte $01, $12, $00, $09, $0A, $0B, $0C, $05, $06, $0D, $07, $08, $00, $00   ; 02 
- D 0 - I - 0x009FF4 02:9FE4: 02        .byte $02, $03, $04, $05, $06, $07, $08, $00, $00, $00, $00, $00, $00, $00   ; 03 



_off005_0x00A002_00_area_1:
- D 0 - I - 0x00A002 02:9FF2: 18 A0     .word _off018_00_A018_00
- D 0 - I - 0x00A004 02:9FF4: 58 A0     .word _off018_00_A058_01
- D 0 - I - 0x00A006 02:9FF6: 98 A0     .word _off018_00_A098_02
- D 0 - I - 0x00A008 02:9FF8: D8 A0     .word _off018_00_A0D8_03
- D 0 - I - 0x00A00A 02:9FFA: 18 A1     .word _off018_00_A118_04
- D 0 - I - 0x00A00C 02:9FFC: 58 A1     .word _off018_00_A158_05
- D 0 - I - 0x00A00E 02:9FFE: 98 A1     .word _off018_00_A198_06
- D 1 - I - 0x00A010 02:A000: D8 A1     .word _off018_00_A1D8_07
- D 1 - I - 0x00A012 02:A002: 18 A2     .word _off018_00_A218_08
- D 1 - I - 0x00A014 02:A004: 58 A2     .word _off018_00_A258_09
- D 1 - I - 0x00A016 02:A006: 98 A2     .word _off018_00_A298_0A
- D 1 - I - 0x00A018 02:A008: D8 A2     .word _off018_00_A2D8_0B
- D 1 - I - 0x00A01A 02:A00A: 18 A3     .word _off018_00_A318_0C
- D 1 - I - 0x00A01C 02:A00C: 58 A3     .word _off018_00_A358_0D
- D 1 - I - 0x00A01E 02:A00E: 98 A3     .word _off018_00_A398_0E
- D 1 - I - 0x00A020 02:A010: D8 A3     .word _off018_00_A3D8_0F
- D 1 - I - 0x00A022 02:A012: 18 A4     .word _off018_00_A418_10
- D 1 - I - 0x00A024 02:A014: 58 A4     .word _off018_00_A458_11
- D 1 - I - 0x00A026 02:A016: 98 A4     .word _off018_00_A498_12



_off018_00_A018_00:
;                                              00   01   02   03   04   05   06   07
- - - - - - 0x00A028 02:A018: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 00 
- - - - - - 0x00A030 02:A020: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 01 
- - - - - - 0x00A038 02:A028: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 02 
- - - - - - 0x00A040 02:A030: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 03 
- - - - - - 0x00A048 02:A038: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 04 
- - - - - - 0x00A050 02:A040: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 05 
- - - - - - 0x00A058 02:A048: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 06 
- D 1 - I - 0x00A060 02:A050: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 07 



_off018_00_A058_01:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x00A068 02:A058: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 00 
- D 1 - I - 0x00A070 02:A060: 40        .byte $40, $41, $42, $43, $50, $51, $52, $53   ; 01 
- D 1 - I - 0x00A078 02:A068: 44        .byte $44, $45, $46, $47, $54, $55, $44, $00   ; 02 
- D 1 - I - 0x00A080 02:A070: 48        .byte $48, $49, $4A, $4B, $58, $40, $48, $5B   ; 03 
- D 1 - I - 0x00A088 02:A078: 00        .byte $00, $00, $4E, $4F, $5C, $5D, $5E, $5F   ; 04 
- D 1 - I - 0x00A090 02:A080: 60        .byte $60, $61, $62, $63, $64, $65, $66, $67   ; 05 
- D 1 - I - 0x00A098 02:A088: 56        .byte $56, $59, $5A, $3F, $4C, $4D, $4C, $4D   ; 06 
- D 1 - I - 0x00A0A0 02:A090: 70        .byte $70, $00, $68, $69, $00, $00, $00, $00   ; 07 



_off018_00_A098_02:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x00A0A8 02:A098: 6D        .byte $6D, $00, $76, $6D, $00, $00, $00, $00   ; 00 
- D 1 - I - 0x00A0B0 02:A0A0: 74        .byte $74, $75, $76, $6D, $74, $75, $72, $73   ; 01 
- D 1 - I - 0x00A0B8 02:A0A8: 78        .byte $78, $79, $7A, $6F, $78, $79, $76, $77   ; 02 
- D 1 - I - 0x00A0C0 02:A0B0: 6E        .byte $6E, $79, $7A, $7B, $6E, $79, $7A, $7B   ; 03 
- D 1 - I - 0x00A0C8 02:A0B8: 7C        .byte $7C, $7D, $7E, $7F, $7C, $7D, $7E, $7F   ; 04 
- D 1 - I - 0x00A0D0 02:A0C0: 03        .byte $03, $05, $04, $05, $03, $05, $04, $05   ; 05 
- D 1 - I - 0x00A0D8 02:A0C8: 06        .byte $06, $07, $08, $09, $06, $07, $08, $09   ; 06 
- - - - - - 0x00A0E0 02:A0D0: 0A        .byte $0A, $0B, $0C, $0D, $0A, $0B, $0C, $0D   ; 07 



_off018_00_A0D8_03:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x00A0E8 02:A0D8: 00        .byte $00, $00, $00, $00, $00, $84, $85, $86   ; 00 
- D 1 - I - 0x00A0F0 02:A0E0: 70        .byte $70, $71, $72, $73, $00, $00, $00, $73   ; 01 
- D 1 - I - 0x00A0F8 02:A0E8: 74        .byte $74, $75, $76, $77, $74, $75, $72, $77   ; 02 
- D 1 - I - 0x00A100 02:A0F0: 78        .byte $78, $79, $7A, $7B, $78, $79, $7A, $7B   ; 03 
- D 1 - I - 0x00A108 02:A0F8: 7C        .byte $7C, $7D, $7E, $7F, $7C, $7D, $7E, $7F   ; 04 
- D 1 - I - 0x00A110 02:A100: 03        .byte $03, $05, $04, $05, $03, $05, $04, $05   ; 05 
- D 1 - I - 0x00A118 02:A108: 06        .byte $06, $07, $08, $09, $06, $07, $08, $09   ; 06 
- - - - - - 0x00A120 02:A110: 0A        .byte $0A, $0B, $0C, $0D, $0A, $0B, $0C, $0D   ; 07 



_off018_00_A118_04:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x00A128 02:A118: 87        .byte $87, $88, $89, $8A, $88, $89, $8A, $88   ; 00 
- D 1 - I - 0x00A130 02:A120: 70        .byte $70, $71, $72, $73, $00, $00, $00, $00   ; 01 
- D 1 - I - 0x00A138 02:A128: 74        .byte $74, $75, $76, $6D, $74, $6C, $00, $00   ; 02 
- D 1 - I - 0x00A140 02:A130: 78        .byte $78, $79, $7A, $7B, $78, $79, $80, $6A   ; 03 
- D 1 - I - 0x00A148 02:A138: 8E        .byte $8E, $8F, $90, $91, $7C, $7D, $7E, $7F   ; 04 
- D 1 - I - 0x00A150 02:A140: 24        .byte $24, $25, $26, $27, $03, $05, $04, $05   ; 05 
- D 1 - I - 0x00A158 02:A148: 28        .byte $28, $29, $2A, $2B, $06, $07, $08, $09   ; 06 
- - - - - - 0x00A160 02:A150: 2C        .byte $2C, $2D, $2E, $22, $0A, $0B, $0C, $0D   ; 07 



_off018_00_A158_05:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x00A168 02:A158: 89        .byte $89, $8A, $E8, $E9, $EA, $D2, $D3, $98   ; 00 
- D 1 - I - 0x00A170 02:A160: 00        .byte $00, $00, $99, $8C, $EE, $EF, $ED, $9C   ; 01 
- D 1 - I - 0x00A178 02:A168: 00        .byte $00, $94, $95, $96, $97, $15, $16, $14   ; 02 
- D 1 - I - 0x00A180 02:A170: 00        .byte $00, $98, $97, $9A, $9B, $14, $18, $19   ; 03 
- D 1 - I - 0x00A188 02:A178: 01        .byte $01, $0E, $9B, $14, $18, $19, $1A, $1B   ; 04 
- D 1 - I - 0x00A190 02:A180: 03        .byte $03, $0F, $10, $11, $1A, $1B, $1C, $1D   ; 05 
- D 1 - I - 0x00A198 02:A188: 06        .byte $06, $07, $3D, $3D, $1C, $1D, $36, $33   ; 06 
- - - - - - 0x00A1A0 02:A190: 0A        .byte $0A, $0B, $0C, $0D, $36, $33, $37, $30   ; 07 



_off018_00_A198_06:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x00A1A8 02:A198: 97        .byte $97, $13, $01, $9F, $A0, $9F, $A0, $02   ; 00 
- D 1 - I - 0x00A1B0 02:A1A0: 9B        .byte $9B, $17, $03, $05, $04, $05, $03, $05   ; 01 
- D 1 - I - 0x00A1B8 02:A1A8: 18        .byte $18, $19, $06, $07, $08, $09, $06, $07   ; 02 
- D 1 - I - 0x00A1C0 02:A1B0: 1A        .byte $1A, $1B, $37, $30, $1C, $1D, $37, $30   ; 03 
- D 1 - I - 0x00A1C8 02:A1B8: 1C        .byte $1C, $1D, $36, $33, $36, $33, $36, $33   ; 04 
- D 1 - I - 0x00A1D0 02:A1C0: 36        .byte $36, $33, $37, $30, $37, $30, $37, $30   ; 05 
- D 1 - I - 0x00A1D8 02:A1C8: 37        .byte $37, $30, $36, $33, $36, $33, $36, $33   ; 06 
- - - - - - 0x00A1E0 02:A1D0: 1E        .byte $1E, $1F, $37, $30, $37, $30, $37, $30   ; 07 



_off018_00_A1D8_07:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x00A1E8 02:A1D8: 01        .byte $01, $6B, $16, $14, $18, $19, $3D, $3D   ; 00 
- D 1 - I - 0x00A1F0 02:A1E0: 03        .byte $03, $0F, $10, $11, $1C, $1D, $3D, $3D   ; 01 
- D 1 - I - 0x00A1F8 02:A1E8: 06        .byte $06, $07, $3D, $3D, $0A, $0B, $0C, $0D   ; 02 
- D 1 - I - 0x00A200 02:A1F0: 0A        .byte $0A, $0B, $0C, $0D, $0A, $3A, $3B, $3C   ; 03 
- - - - - - 0x00A208 02:A1F8: 0A        .byte $0A, $3A, $3B, $3C, $0A, $3A, $3B, $3C   ; 04 
- - - - - - 0x00A210 02:A200: 0A        .byte $0A, $3A, $3B, $3C, $0A, $3A, $3B, $3C   ; 05 
- - - - - - 0x00A218 02:A208: 0A        .byte $0A, $3A, $3B, $3C, $0A, $3A, $3B, $3C   ; 06 
- - - - - - 0x00A220 02:A210: 0A        .byte $0A, $3A, $3B, $3C, $0A, $3A, $3B, $3C   ; 07 



_off018_00_A218_08:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x00A228 02:A218: 36        .byte $36, $33, $3D, $3D, $1E, $1F, $1C, $1D   ; 00 
- D 1 - I - 0x00A230 02:A220: 36        .byte $36, $33, $1C, $1D, $1E, $1F, $1E, $1F   ; 01 
- D 1 - I - 0x00A238 02:A228: 36        .byte $36, $33, $1E, $1F, $1E, $1F, $1E, $1F   ; 02 
- - - - - - 0x00A240 02:A230: 36        .byte $36, $33, $1E, $1F, $1E, $1F, $1E, $1F   ; 03 
- - - - - - 0x00A248 02:A238: 36        .byte $36, $33, $1E, $1F, $1E, $1F, $1E, $1F   ; 04 
- - - - - - 0x00A250 02:A240: 36        .byte $36, $33, $1E, $1F, $1E, $1F, $1E, $1F   ; 05 
- - - - - - 0x00A258 02:A248: 36        .byte $36, $33, $1E, $1F, $1E, $1F, $1E, $1F   ; 06 
- - - - - - 0x00A260 02:A250: 36        .byte $36, $33, $1E, $1F, $1E, $1F, $1E, $1F   ; 07 



_off018_00_A258_09:
;                                              00   01   02   03   04   05   06   07
- - - - - - 0x00A268 02:A258: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 00 
- - - - - - 0x00A270 02:A260: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 01 
- - - - - - 0x00A278 02:A268: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 02 
- - - - - - 0x00A280 02:A270: 00        .byte $00, $00, $00, $00, $00, $51, $52, $53   ; 03 
- - - - - - 0x00A288 02:A278: 51        .byte $51, $52, $53, $00, $CB, $00, $51, $53   ; 04 
- D 1 - I - 0x00A290 02:A280: 00        .byte $00, $00, $51, $52, $53, $CE, $CF, $00   ; 05 
- D 1 - I - 0x00A298 02:A288: D0        .byte $D0, $D1, $CB, $00, $D0, $D1, $00, $CB   ; 06 
- D 1 - I - 0x00A2A0 02:A290: 00        .byte $00, $D5, $00, $D2, $00, $D5, $00, $9D   ; 07 



_off018_00_A298_0A:
;                                              00   01   02   03   04   05   06   07
- - - - - - 0x00A2A8 02:A298: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 00 
- - - - - - 0x00A2B0 02:A2A0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 01 
- - - - - - 0x00A2B8 02:A2A8: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 02 
- D 1 - I - 0x00A2C0 02:A2B0: CE        .byte $CE, $CF, $B3, $B4, $B5, $B5, $B5, $B6   ; 03 
- D 1 - I - 0x00A2C8 02:A2B8: 00        .byte $00, $00, $00, $AF, $B0, $B1, $B2, $D6   ; 04 
- D 1 - I - 0x00A2D0 02:A2C0: CC        .byte $CC, $CD, $A9, $AA, $AB, $AC, $AD, $AE   ; 05 
- D 1 - I - 0x00A2D8 02:A2C8: 00        .byte $00, $00, $00, $A7, $A8, $A7, $A8, $00   ; 06 
- D 1 - I - 0x00A2E0 02:A2D0: 9E        .byte $9E, $00, $00, $A5, $A6, $A5, $A6, $00   ; 07 



_off018_00_A2D8_0B:
;                                              00   01   02   03   04   05   06   07
- - - - - - 0x00A2E8 02:A2D8: 00        .byte $00, $00, $00, $00, $51, $52, $53, $00   ; 00 
- - - - - - 0x00A2F0 02:A2E0: 00        .byte $00, $51, $52, $53, $D0, $00, $D0, $D1   ; 01 
- D 1 - I - 0x00A2F8 02:A2E8: CB        .byte $CB, $00, $CB, $CB, $00, $CE, $CF, $D5   ; 02 
- D 1 - I - 0x00A300 02:A2F0: CE        .byte $CE, $CF, $00, $D2, $D3, $00, $94, $93   ; 03 
- D 1 - I - 0x00A308 02:A2F8: 81        .byte $81, $D2, $D3, $00, $D2, $D3, $98, $97   ; 04 
- D 1 - I - 0x00A310 02:A300: 85        .byte $85, $86, $87, $88, $EC, $ED, $9C, $9B   ; 05 
- D 1 - I - 0x00A318 02:A308: 00        .byte $00, $00, $00, $12, $2F, $38, $14, $10   ; 06 
- D 1 - I - 0x00A320 02:A310: 00        .byte $00, $12, $2F, $38, $34, $39, $31, $32   ; 07 



_off018_00_A318_0C:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x00A328 02:A318: C5        .byte $C5, $C6, $C7, $C7, $C8, $C7, $C9, $82   ; 00 
- D 1 - I - 0x00A330 02:A320: 00        .byte $00, $C0, $C1, $C1, $C3, $C4, $8D, $00   ; 01 
- D 1 - I - 0x00A338 02:A328: B9        .byte $B9, $BA, $BB, $BC, $BD, $BE, $BF, $00   ; 02 
- D 1 - I - 0x00A340 02:A330: 00        .byte $00, $B7, $B8, $00, $B7, $B8, $00, $00   ; 03 
- D 1 - I - 0x00A348 02:A338: 13        .byte $13, $A1, $A2, $01, $9F, $A0, $02, $01   ; 04 
- D 1 - I - 0x00A350 02:A340: 17        .byte $17, $04, $05, $04, $05, $04, $05, $3E   ; 05 
- D 1 - I - 0x00A358 02:A348: 11        .byte $11, $08, $09, $08, $09, $08, $09, $3D   ; 06 
- D 1 - I - 0x00A360 02:A350: 1C        .byte $1C, $1D, $3D, $3D, $1C, $1D, $3D, $3D   ; 07 



_off018_00_A358_0D:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x00A368 02:A358: 20        .byte $20, $21, $A3, $A4, $01, $9F, $A0, $02   ; 00 
- D 1 - I - 0x00A370 02:A360: 24        .byte $24, $25, $26, $27, $03, $05, $04, $05   ; 01 
- D 1 - I - 0x00A378 02:A368: 28        .byte $28, $29, $2A, $2B, $06, $07, $08, $09   ; 02 
- D 1 - I - 0x00A380 02:A370: 2C        .byte $2C, $2D, $2E, $22, $0A, $0B, $0C, $0D   ; 03 
- - - - - - 0x00A388 02:A378: 3D        .byte $3D, $3D, $35, $32, $1E, $3A, $3B, $3C   ; 04 
- - - - - - 0x00A390 02:A380: 1C        .byte $1C, $1D, $36, $33, $1E, $3A, $3B, $3C   ; 05 
- - - - - - 0x00A398 02:A388: 1E        .byte $1E, $1F, $36, $33, $1E, $3A, $3B, $3C   ; 06 
- - - - - - 0x00A3A0 02:A390: 1E        .byte $1E, $1F, $36, $33, $1E, $3A, $3B, $3C   ; 07 



_off018_00_A398_0E:
;                                              00   01   02   03   04   05   06   07
- - - - - - 0x00A3A8 02:A398: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 00 
- - - - - - 0x00A3B0 02:A3A0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 01 
- - - - - - 0x00A3B8 02:A3A8: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 02 
- D 1 - I - 0x00A3C0 02:A3B0: 00        .byte $00, $B3, $B4, $B5, $B5, $B5, $B5, $B6   ; 03 
- D 1 - I - 0x00A3C8 02:A3B8: 81        .byte $81, $8B, $AF, $B0, $B0, $B1, $B2, $D6   ; 04 
- D 1 - I - 0x00A3D0 02:A3C0: 85        .byte $85, $83, $AA, $AB, $AB, $AC, $AD, $AE   ; 05 
- D 1 - I - 0x00A3D8 02:A3C8: 00        .byte $00, $00, $A7, $A8, $00, $A7, $A8, $00   ; 06 
- D 1 - I - 0x00A3E0 02:A3D0: 00        .byte $00, $00, $A5, $A6, $00, $A5, $A6, $00   ; 07 



_off018_00_A3D8_0F:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x00A3E8 02:A3D8: C5        .byte $C5, $C6, $C7, $C7, $C8, $C7, $CA, $00   ; 00 
- D 1 - I - 0x00A3F0 02:A3E0: 00        .byte $00, $C0, $C1, $C1, $C3, $C4, $00, $00   ; 01 
- D 1 - I - 0x00A3F8 02:A3E8: B9        .byte $B9, $BA, $BB, $BC, $BD, $BE, $BF, $00   ; 02 
- D 1 - I - 0x00A400 02:A3F0: 00        .byte $00, $B7, $B8, $00, $B7, $B8, $00, $00   ; 03 
- D 1 - I - 0x00A408 02:A3F8: 13        .byte $13, $A1, $A2, $01, $9F, $A0, $02, $01   ; 04 
- D 1 - I - 0x00A410 02:A400: 17        .byte $17, $04, $05, $04, $05, $04, $05, $03   ; 05 
- D 1 - I - 0x00A418 02:A408: 11        .byte $11, $08, $09, $08, $09, $08, $09, $06   ; 06 
- D 1 - I - 0x00A420 02:A410: 1C        .byte $1C, $1D, $3D, $3D, $1C, $1D, $3D, $0A   ; 07 



_off018_00_A418_10:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x00A428 02:A418: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 00 
- D 1 - I - 0x00A430 02:A420: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 01 
- D 1 - I - 0x00A438 02:A428: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 02 
- D 1 - I - 0x00A440 02:A430: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 03 
- D 1 - I - 0x00A448 02:A438: 02        .byte $02, $20, $21, $21, $23, $01, $01, $02   ; 04 
- D 1 - I - 0x00A450 02:A440: 05        .byte $05, $24, $25, $26, $27, $3E, $04, $05   ; 05 
- D 1 - I - 0x00A458 02:A448: 07        .byte $07, $28, $29, $2A, $2B, $3D, $08, $09   ; 06 
- - - - - - 0x00A460 02:A450: 0B        .byte $0B, $0C, $2D, $2E, $22, $1C, $1D, $0D   ; 07 



_off018_00_A458_11:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x00A468 02:A458: CE        .byte $CE, $CF, $D2, $D3, $DC, $D9, $DA, $DB   ; 00 
- D 1 - I - 0x00A470 02:A460: D6        .byte $D6, $81, $CB, $CD, $DC, $DD, $DD, $DE   ; 01 
- D 1 - I - 0x00A478 02:A468: 84        .byte $84, $85, $86, $87, $D8, $E0, $DD, $DE   ; 02 
- D 1 - I - 0x00A480 02:A470: D4        .byte $D4, $92, $92, $93, $D7, $E1, $EB, $DB   ; 03 
- D 1 - I - 0x00A488 02:A478: A1        .byte $A1, $A2, $A1, $A2, $E7, $E2, $EB, $DE   ; 04 
- D 1 - I - 0x00A490 02:A480: 03        .byte $03, $05, $04, $05, $03, $E3, $E4, $DF   ; 05 
- D 1 - I - 0x00A498 02:A488: 06        .byte $06, $07, $08, $09, $06, $07, $E5, $DB   ; 06 
- - - - - - 0x00A4A0 02:A490: 0A        .byte $0A, $0B, $0C, $0D, $0A, $0B, $E6, $DE   ; 07 



_off018_00_A498_12:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x00A4A8 02:A498: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 00 
- D 1 - I - 0x00A4B0 02:A4A0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 01 
- D 1 - I - 0x00A4B8 02:A4A8: D2        .byte $D2, $D3, $00, $00, $00, $00, $00, $00   ; 02 
- D 1 - I - 0x00A4C0 02:A4B0: CD        .byte $CD, $00, $CE, $CF, $00, $00, $00, $00   ; 03 
- D 1 - I - 0x00A4C8 02:A4B8: 5F        .byte $5F, $5F, $5F, $5F, $00, $00, $00, $00   ; 04 
- D 1 - I - 0x00A4D0 02:A4C0: 66        .byte $66, $66, $66, $66, $00, $00, $00, $00   ; 05 
- D 1 - I - 0x00A4D8 02:A4C8: 4C        .byte $4C, $4D, $4C, $4D, $00, $00, $00, $00   ; 06 
- D 1 - I - 0x00A4E0 02:A4D0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 07 



_off006_0x00A4E8_00_area_1:
; 00
- D 1 - I - 0x00A4E8 02:A4D8: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00A4EC 02:A4DC: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00A4F0 02:A4E0: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00A4F4 02:A4E4: 00        .byte $00, $00, $00, $00   ; 
; 01 
- D 1 - I - 0x00A4F8 02:A4E8: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00A4FC 02:A4EC: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00A500 02:A4F0: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00A504 02:A4F4: F7        .byte $F7, $F7, $F7, $F7   ; 
; 02 
- D 1 - I - 0x00A508 02:A4F8: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00A50C 02:A4FC: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00A510 02:A500: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00A514 02:A504: DF        .byte $DF, $F7, $F7, $F7   ; 
; 03 
- D 1 - I - 0x00A518 02:A508: BD        .byte $BD, $BD, $BD, $BD   ; 
- D 1 - I - 0x00A51C 02:A50C: BD        .byte $BD, $BD, $BD, $BD   ; 
- D 1 - I - 0x00A520 02:A510: C0        .byte $C0, $C0, $C0, $C0   ; 
- D 1 - I - 0x00A524 02:A514: 9D        .byte $9D, $9E, $9E, $E6   ; 
; 04 
- D 1 - I - 0x00A528 02:A518: BD        .byte $BD, $BD, $BD, $BD   ; 
- D 1 - I - 0x00A52C 02:A51C: BD        .byte $BD, $BD, $BD, $BD   ; 
- D 1 - I - 0x00A530 02:A520: C0        .byte $C0, $C0, $C0, $C0   ; 
- D 1 - I - 0x00A534 02:A524: 9D        .byte $9D, $9E, $9E, $E5   ; 
; 05 
- D 1 - I - 0x00A538 02:A528: BE        .byte $BE, $E0, $BD, $BD   ; 
- D 1 - I - 0x00A53C 02:A52C: BD        .byte $BD, $BE, $E0, $BD   ; 
- D 1 - I - 0x00A540 02:A530: C0        .byte $C0, $C0, $A7, $E1   ; 
- D 1 - I - 0x00A544 02:A534: B9        .byte $B9, $E7, $9E, $E9   ; 
; 06 
- D 1 - I - 0x00A548 02:A538: A8        .byte $A8, $A1, $A1, $EA   ; 
- D 1 - I - 0x00A54C 02:A53C: A9        .byte $A9, $E2, $AA, $EA   ; 
- D 1 - I - 0x00A550 02:A540: A9        .byte $A9, $AA, $AA, $EA   ; 
- D 1 - I - 0x00A554 02:A544: F1        .byte $F1, $F2, $F2, $EA   ; 
; 07 
- D 1 - I - 0x00A558 02:A548: AB        .byte $AB, $EB, $A1, $F6   ; 
- D 1 - I - 0x00A55C 02:A54C: AA        .byte $AA, $EB, $AA, $9C   ; 
- D 1 - I - 0x00A560 02:A550: AB        .byte $AB, $EB, $AA, $F5   ; 
- D 1 - I - 0x00A564 02:A554: AA        .byte $AA, $EB, $F3, $F4   ; 
; 08 
- D 1 - I - 0x00A568 02:A558: A8        .byte $A8, $A1, $A1, $BA   ; 
- D 1 - I - 0x00A56C 02:A55C: A9        .byte $A9, $E2, $AA, $E2   ; 
- D 1 - I - 0x00A570 02:A560: A9        .byte $A9, $AA, $AA, $AA   ; 
- D 1 - I - 0x00A574 02:A564: F1        .byte $F1, $F2, $F2, $F3   ; 
; 09 
- D 1 - I - 0x00A578 02:A568: AC        .byte $AC, $AC, $A1, $F6   ; 
- D 1 - I - 0x00A57C 02:A56C: AA        .byte $AA, $E2, $AA, $9C   ; 
- D 1 - I - 0x00A580 02:A570: AA        .byte $AA, $AA, $B0, $F5   ; 
- D 1 - I - 0x00A584 02:A574: F3        .byte $F3, $F3, $F3, $F4   ; 
; 0A 
- D 1 - I - 0x00A588 02:A578: B1        .byte $B1, $B2, $B2, $EC   ; 
- D 1 - I - 0x00A58C 02:A57C: B3        .byte $B3, $E2, $AA, $EA   ; 
- D 1 - I - 0x00A590 02:A580: B3        .byte $B3, $AA, $AA, $EA   ; 
- D 1 - I - 0x00A594 02:A584: B3        .byte $B3, $AA, $AA, $EA   ; 
; 0B 
- D 1 - I - 0x00A598 02:A588: AE        .byte $AE, $ED, $BD, $BD   ; 
- D 1 - I - 0x00A59C 02:A58C: AB        .byte $AB, $EE, $A8, $A1   ; 
- D 1 - I - 0x00A5A0 02:A590: AA        .byte $AA, $EE, $A9, $E2   ; 
- D 1 - I - 0x00A5A4 02:A594: AB        .byte $AB, $EE, $A9, $AA   ; 
; 0C 
- D 1 - I - 0x00A5A8 02:A598: BD        .byte $BD, $EF, $AF, $F6   ; 
- D 1 - I - 0x00A5AC 02:A59C: A1        .byte $A1, $F6, $F0, $9C   ; 
- D 1 - I - 0x00A5B0 02:A5A0: AA        .byte $AA, $F5, $AD, $AD   ; 
- D 1 - I - 0x00A5B4 02:A5A4: B0        .byte $B0, $F5, $00, $9C   ; 
; 0D 
- D 1 - I - 0x00A5B8 02:A5A8: B1        .byte $B1, $B2, $B2, $F6   ; 
- D 1 - I - 0x00A5BC 02:A5AC: B3        .byte $B3, $E6, $B9, $E8   ; 
- D 1 - I - 0x00A5C0 02:A5B0: AD        .byte $AD, $DE, $AA, $EB   ; 
- D 1 - I - 0x00A5C4 02:A5B4: B3        .byte $B3, $EA, $AA, $EB   ; 
; 0E 
- D 1 - I - 0x00A5C8 02:A5B8: 15        .byte $15, $A8, $74, $A1   ; 
- D 1 - I - 0x00A5CC 02:A5BC: 15        .byte $15, $A9, $40, $41   ; 
- D 1 - I - 0x00A5D0 02:A5C0: 21        .byte $21, $46, $02, $5F   ; 
- D 1 - I - 0x00A5D4 02:A5C4: E4        .byte $E4, $5F, $BD, $BD   ; 
; 0F 
- D 1 - I - 0x00A5D8 02:A5C8: BE        .byte $BE, $E0, $F8, $BD   ; 
- D 1 - I - 0x00A5DC 02:A5CC: BD        .byte $BD, $BE, $E0, $BD   ; 
- D 1 - I - 0x00A5E0 02:A5D0: C0        .byte $C0, $C0, $A7, $5A   ; 
- D 1 - I - 0x00A5E4 02:A5D4: B9        .byte $B9, $E7, $9E, $E9   ; 
; 10 
- D 1 - I - 0x00A5E8 02:A5D8: FA        .byte $FA, $BD, $B5, $62   ; 
- D 1 - I - 0x00A5EC 02:A5DC: B5        .byte $B5, $62, $B6, $63   ; 
- D 1 - I - 0x00A5F0 02:A5E0: B6        .byte $B6, $63, $B7, $64   ; 
- D 1 - I - 0x00A5F4 02:A5E4: DC        .byte $DC, $DD, $5B, $F2   ; 
; 11 
- D 1 - I - 0x00A5F8 02:A5E8: B6        .byte $B6, $63, $B7, $5D   ; 
- D 1 - I - 0x00A5FC 02:A5EC: B7        .byte $B7, $64, $B8, $9C   ; 
- D 1 - I - 0x00A600 02:A5F0: B8        .byte $B8, $AA, $B0, $F5   ; 
- D 1 - I - 0x00A604 02:A5F4: F2        .byte $F2, $F2, $F3, $F4   ; 
; 12 
- D 1 - I - 0x00A608 02:A5F8: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00A60C 02:A5FC: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00A610 02:A600: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00A614 02:A604: 00        .byte $00, $00, $01, $5E   ; 
; 13 
- D 1 - I - 0x00A618 02:A608: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00A61C 02:A60C: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00A620 02:A610: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00A624 02:A614: DA        .byte $DA, $F7, $F7, $F7   ; 
; 14 
- D 1 - I - 0x00A628 02:A618: FD        .byte $FD, $E0, $F8, $BD   ; 
- D 1 - I - 0x00A62C 02:A61C: BD        .byte $BD, $BE, $E0, $BD   ; 
- D 1 - I - 0x00A630 02:A620: FA        .byte $FA, $BD, $B4, $61   ; 
- D 1 - I - 0x00A634 02:A624: B5        .byte $B5, $62, $B6, $5C   ; 
; 15 
- D 1 - I - 0x00A638 02:A628: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00A63C 02:A62C: 00        .byte $00, $00, $01, $5E   ; 
- D 1 - I - 0x00A640 02:A630: 01        .byte $01, $5E, $02, $5F   ; 
- D 1 - I - 0x00A644 02:A634: 60        .byte $60, $5F, $BD, $BD   ; 
; 16 
- D 1 - I - 0x00A648 02:A638: 01        .byte $01, $5E, $02, $5F   ; 
- D 1 - I - 0x00A64C 02:A63C: 02        .byte $02, $5F, $BD, $BD   ; 
- D 1 - I - 0x00A650 02:A640: FC        .byte $FC, $BD, $F8, $BD   ; 
- D 1 - I - 0x00A654 02:A644: BD        .byte $BD, $BD, $BD, $BD   ; 
; 17 
- D 1 - I - 0x00A658 02:A648: FD        .byte $FD, $E0, $BD, $BD   ; 
- D 1 - I - 0x00A65C 02:A64C: BD        .byte $BD, $BE, $E0, $BD   ; 
- D 1 - I - 0x00A660 02:A650: FA        .byte $FA, $BD, $B4, $DB   ; 
- D 1 - I - 0x00A664 02:A654: B5        .byte $B5, $62, $B6, $5C   ; 
; 18 
- D 1 - I - 0x00A668 02:A658: FA        .byte $FA, $BD, $B5, $62   ; 
- D 1 - I - 0x00A66C 02:A65C: B5        .byte $B5, $62, $B6, $63   ; 
- D 1 - I - 0x00A670 02:A660: B6        .byte $B6, $63, $B7, $64   ; 
- D 1 - I - 0x00A674 02:A664: B7        .byte $B7, $64, $B8, $AA   ; 
; 19 
- D 1 - I - 0x00A678 02:A668: B6        .byte $B6, $63, $B7, $5D   ; 
- D 1 - I - 0x00A67C 02:A66C: B7        .byte $B7, $64, $B8, $9C   ; 
- D 1 - I - 0x00A680 02:A670: B8        .byte $B8, $AA, $AA, $9C   ; 
- D 1 - I - 0x00A684 02:A674: AA        .byte $AA, $E2, $AA, $9C   ; 
; 1A 
- D 1 - I - 0x00A688 02:A678: B1        .byte $B1, $AA, $AA, $E2   ; 
- D 1 - I - 0x00A68C 02:A67C: A9        .byte $A9, $E2, $AA, $AA   ; 
- D 1 - I - 0x00A690 02:A680: A9        .byte $A9, $AA, $AA, $AA   ; 
- D 1 - I - 0x00A694 02:A684: F1        .byte $F1, $F2, $F2, $F2   ; 
; 1B 
- D 1 - I - 0x00A698 02:A688: AA        .byte $AA, $AA, $AA, $9C   ; 
- D 1 - I - 0x00A69C 02:A68C: AA        .byte $AA, $AA, $AA, $F5   ; 
- D 1 - I - 0x00A6A0 02:A690: AA        .byte $AA, $AA, $B0, $F5   ; 
- D 1 - I - 0x00A6A4 02:A694: F3        .byte $F3, $F3, $F3, $F4   ; 
; 1C 
- D 1 - I - 0x00A6A8 02:A698: A8        .byte $A8, $A1, $A1, $E6   ; 
- D 1 - I - 0x00A6AC 02:A69C: A9        .byte $A9, $E2, $AA, $EA   ; 
- D 1 - I - 0x00A6B0 02:A6A0: A9        .byte $A9, $AA, $AA, $EA   ; 
- D 1 - I - 0x00A6B4 02:A6A4: B3        .byte $B3, $AA, $AA, $EA   ; 
; 1D 
- D 1 - I - 0x00A6B8 02:A6A8: B9        .byte $B9, $E7, $A1, $F6   ; 
- D 1 - I - 0x00A6BC 02:A6AC: AB        .byte $AB, $EB, $AA, $9C   ; 
- D 1 - I - 0x00A6C0 02:A6B0: AA        .byte $AA, $EB, $AA, $9C   ; 
- D 1 - I - 0x00A6C4 02:A6B4: AB        .byte $AB, $EB, $AA, $9C   ; 
; 1E 
- D 1 - I - 0x00A6C8 02:A6B8: B1        .byte $B1, $B2, $B2, $EC   ; 
- D 1 - I - 0x00A6CC 02:A6BC: B3        .byte $B3, $E2, $AA, $EA   ; 
- D 1 - I - 0x00A6D0 02:A6C0: B3        .byte $B3, $AA, $AA, $EA   ; 
- D 1 - I - 0x00A6D4 02:A6C4: B3        .byte $B3, $AA, $AA, $EA   ; 
; 1F 
- D 1 - I - 0x00A6D8 02:A6C8: AE        .byte $AE, $E3, $B2, $F6   ; 
- D 1 - I - 0x00A6DC 02:A6CC: AB        .byte $AB, $EB, $AA, $9C   ; 
- D 1 - I - 0x00A6E0 02:A6D0: AA        .byte $AA, $EB, $AA, $9C   ; 
- D 1 - I - 0x00A6E4 02:A6D4: AB        .byte $AB, $EB, $AA, $9C   ; 
; 20 
- D 1 - I - 0x00A6E8 02:A6D8: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00A6EC 02:A6DC: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00A6F0 02:A6E0: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00A6F4 02:A6E4: F7        .byte $F7, $DF, $65, $65   ; 
; 21 
- D 1 - I - 0x00A6F8 02:A6E8: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00A6FC 02:A6EC: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00A700 02:A6F0: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00A704 02:A6F4: 65        .byte $65, $65, $65, $65   ; 
; 22 
- - - - - - 0x00A708 02:A6F8: BA        .byte $BA, $AC, $AC, $9C   ; 
- - - - - - 0x00A70C 02:A6FC: AA        .byte $AA, $E2, $AA, $9C   ; 
- - - - - - 0x00A710 02:A700: AA        .byte $AA, $AA, $AA, $9C   ; 
- - - - - - 0x00A714 02:A704: AA        .byte $AA, $AA, $AA, $F5   ; 
; 23 
- D 1 - I - 0x00A718 02:A708: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00A71C 02:A70C: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00A720 02:A710: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00A724 02:A714: 66        .byte $66, $F7, $F7, $F7   ; 
; 24 
- D 1 - I - 0x00A728 02:A718: BD        .byte $BD, $BE, $BF, $03   ; 
- D 1 - I - 0x00A72C 02:A71C: BD        .byte $BD, $BD, $BE, $67   ; 
- D 1 - I - 0x00A730 02:A720: C0        .byte $C0, $C0, $C0, $A7   ; 
- D 1 - I - 0x00A734 02:A724: 9D        .byte $9D, $9E, $9E, $9E   ; 
; 25 
- D 1 - I - 0x00A738 02:A728: 03        .byte $03, $03, $03, $03   ; 
- D 1 - I - 0x00A73C 02:A72C: 68        .byte $68, $AA, $AA, $AA   ; 
- D 1 - I - 0x00A740 02:A730: 04        .byte $04, $69, $05, $AA   ; 
- D 1 - I - 0x00A744 02:A734: A3        .byte $A3, $00, $6A, $06   ; 
; 26 
- D 1 - I - 0x00A748 02:A738: 03        .byte $03, $03, $03, $03   ; 
- D 1 - I - 0x00A74C 02:A73C: AA        .byte $AA, $AA, $AA, $06   ; 
- D 1 - I - 0x00A750 02:A740: 05        .byte $05, $06, $06, $6B   ; 
- D 1 - I - 0x00A754 02:A744: 06        .byte $06, $6B, $6B, $6B   ; 
; 27 
- D 1 - I - 0x00A758 02:A748: 08        .byte $08, $72, $BD, $BD   ; 
- D 1 - I - 0x00A75C 02:A74C: 07        .byte $07, $A0, $73, $BD   ; 
- D 1 - I - 0x00A760 02:A750: 07        .byte $07, $A6, $A0, $F9   ; 
- D 1 - I - 0x00A764 02:A754: 07        .byte $07, $6B, $AA, $A0   ; 
; 28 
- D 1 - I - 0x00A768 02:A758: A8        .byte $A8, $A1, $A1, $A1   ; 
- D 1 - I - 0x00A76C 02:A75C: A9        .byte $A9, $E2, $AA, $FB   ; 
- D 1 - I - 0x00A770 02:A760: B3        .byte $B3, $AA, $AA, $FE   ; 
- D 1 - I - 0x00A774 02:A764: F1        .byte $F1, $F2, $F2, $F3   ; 
; 29 
- D 1 - I - 0x00A778 02:A768: A3        .byte $A3, $00, $A2, $6C   ; 
- D 1 - I - 0x00A77C 02:A76C: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00A780 02:A770: BC        .byte $BC, $FF, $BB, $BB   ; 
- D 1 - I - 0x00A784 02:A774: F3        .byte $F3, $F4, $9D, $E5   ; 
; 2A 
- D 1 - I - 0x00A788 02:A778: A4        .byte $A4, $A4, $A4, $A5   ; 
- D 1 - I - 0x00A78C 02:A77C: 6E        .byte $6E, $BD, $BD, $BD   ; 
- D 1 - I - 0x00A790 02:A780: BB        .byte $BB, $71, $C0, $C0   ; 
- D 1 - I - 0x00A794 02:A784: B9        .byte $B9, $E7, $9E, $9E   ; 
; 2B 
- D 1 - I - 0x00A798 02:A788: A5        .byte $A5, $6D, $A6, $AA   ; 
- D 1 - I - 0x00A79C 02:A78C: BD        .byte $BD, $6F, $6D, $AA   ; 
- D 1 - I - 0x00A7A0 02:A790: C0        .byte $C0, $C0, $A7, $70   ; 
- D 1 - I - 0x00A7A4 02:A794: E5        .byte $E5, $B9, $E7, $E9   ; 
; 2C 
- D 1 - I - 0x00A7A8 02:A798: B1        .byte $B1, $B2, $B2, $B2   ; 
- D 1 - I - 0x00A7AC 02:A79C: B3        .byte $B3, $AA, $AA, $AB   ; 
- - - - - - 0x00A7B0 02:A7A0: B3        .byte $B3, $AA, $AA, $AB   ; 
- - - - - - 0x00A7B4 02:A7A4: B3        .byte $B3, $AA, $AA, $AB   ; 
; 2D 
- - - - - - 0x00A7B8 02:A7A8: B2        .byte $B2, $F6, $A8, $BA   ; 
- - - - - - 0x00A7BC 02:A7AC: AA        .byte $AA, $9C, $B3, $AA   ; 
- - - - - - 0x00A7C0 02:A7B0: AA        .byte $AA, $9C, $B3, $AA   ; 
- - - - - - 0x00A7C4 02:A7B4: AA        .byte $AA, $9C, $B3, $AA   ; 
; 2E 
- - - - - - 0x00A7C8 02:A7B8: AC        .byte $AC, $AC, $B2, $B2   ; 
- - - - - - 0x00A7CC 02:A7BC: E2        .byte $E2, $AA, $AA, $AA   ; 
- - - - - - 0x00A7D0 02:A7C0: AA        .byte $AA, $AA, $AA, $AA   ; 
- - - - - - 0x00A7D4 02:A7C4: AA        .byte $AA, $AA, $AA, $AA   ; 
; 2F 
- D 1 - I - 0x00A7D8 02:A7C8: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00A7DC 02:A7CC: 00        .byte $00, $00, $01, $5E   ; 
- D 1 - I - 0x00A7E0 02:A7D0: 01        .byte $01, $5E, $02, $5F   ; 
- D 1 - I - 0x00A7E4 02:A7D4: 02        .byte $02, $5F, $BD, $BD   ; 
; 30 
- D 1 - I - 0x00A7E8 02:A7D8: AA        .byte $AA, $EB, $AA, $9C   ; 
- D 1 - I - 0x00A7EC 02:A7DC: AB        .byte $AB, $EB, $AA, $9C   ; 
- D 1 - I - 0x00A7F0 02:A7E0: AA        .byte $AA, $EB, $AA, $9C   ; 
- D 1 - I - 0x00A7F4 02:A7E4: AB        .byte $AB, $EB, $AA, $F5   ; 
; 31 
- D 1 - I - 0x00A7F8 02:A7E8: B6        .byte $B6, $63, $B7, $64   ; 
- D 1 - I - 0x00A7FC 02:A7EC: DC        .byte $DC, $DD, $5B, $F2   ; 
- - - - - - 0x00A800 02:A7F0: A8        .byte $A8, $A1, $A1, $E6   ; 
- - - - - - 0x00A804 02:A7F4: F1        .byte $F1, $E2, $AA, $EA   ; 
; 32 
- D 1 - I - 0x00A808 02:A7F8: B8        .byte $B8, $AA, $B0, $F5   ; 
- D 1 - I - 0x00A80C 02:A7FC: F2        .byte $F2, $F2, $F3, $F4   ; 
- - - - - - 0x00A810 02:A800: B9        .byte $B9, $E7, $A1, $F6   ; 
- - - - - - 0x00A814 02:A804: AB        .byte $AB, $EB, $AA, $9C   ; 
; 33 
- D 1 - I - 0x00A818 02:A808: AA        .byte $AA, $EB, $AA, $F5   ; 
- D 1 - I - 0x00A81C 02:A80C: AB        .byte $AB, $EB, $F3, $F4   ; 
- D 1 - I - 0x00A820 02:A810: AE        .byte $AE, $E3, $A1, $F6   ; 
- D 1 - I - 0x00A824 02:A814: AB        .byte $AB, $EB, $AA, $9C   ; 
; 34 
- D 1 - I - 0x00A828 02:A818: FC        .byte $FC, $BD, $F8, $BD   ; 
- D 1 - I - 0x00A82C 02:A81C: BD        .byte $BD, $BD, $BD, $BD   ; 
- - - - - - 0x00A830 02:A820: FA        .byte $FA, $BD, $B5, $62   ; 
- - - - - - 0x00A834 02:A824: B5        .byte $B5, $62, $B6, $63   ; 
; 35 
- - - - - - 0x00A838 02:A828: B3        .byte $B3, $AA, $AA, $AA   ; 
- - - - - - 0x00A83C 02:A82C: F1        .byte $F1, $F2, $F2, $F2   ; 
- - - - - - 0x00A840 02:A830: A8        .byte $A8, $A1, $A1, $E6   ; 
- - - - - - 0x00A844 02:A834: A9        .byte $A9, $E2, $AA, $EA   ; 
; 36 
- D 1 - I - 0x00A848 02:A838: B3        .byte $B3, $AA, $AA, $EA   ; 
- D 1 - I - 0x00A84C 02:A83C: F1        .byte $F1, $F2, $F2, $EA   ; 
- D 1 - I - 0x00A850 02:A840: A8        .byte $A8, $A1, $A1, $EC   ; 
- D 1 - I - 0x00A854 02:A844: A9        .byte $A9, $E2, $AA, $EA   ; 
; 37 
- D 1 - I - 0x00A858 02:A848: B3        .byte $B3, $AA, $AA, $EA   ; 
- D 1 - I - 0x00A85C 02:A84C: B3        .byte $B3, $AA, $AA, $EA   ; 
- D 1 - I - 0x00A860 02:A850: B3        .byte $B3, $AA, $AA, $EA   ; 
- D 1 - I - 0x00A864 02:A854: B3        .byte $B3, $AA, $AA, $EA   ; 
; 38 
- D 1 - I - 0x00A868 02:A858: 01        .byte $01, $5E, $02, $5F   ; 
- D 1 - I - 0x00A86C 02:A85C: 60        .byte $60, $5F, $BD, $BD   ; 
- D 1 - I - 0x00A870 02:A860: FD        .byte $FD, $E0, $F8, $BD   ; 
- D 1 - I - 0x00A874 02:A864: BD        .byte $BD, $BE, $E0, $BD   ; 
; 39 
- D 1 - I - 0x00A878 02:A868: FA        .byte $FA, $BD, $B4, $61   ; 
- D 1 - I - 0x00A87C 02:A86C: B5        .byte $B5, $62, $B6, $5C   ; 
- - - - - - 0x00A880 02:A870: B6        .byte $B6, $63, $B7, $5D   ; 
- - - - - - 0x00A884 02:A874: B7        .byte $B7, $64, $B8, $9C   ; 
; 3A 
- - - - - - 0x00A888 02:A878: AE        .byte $AE, $ED, $A9, $E2   ; 
- - - - - - 0x00A88C 02:A87C: AB        .byte $AB, $EE, $B3, $AA   ; 
- - - - - - 0x00A890 02:A880: AA        .byte $AA, $EE, $B3, $AA   ; 
- - - - - - 0x00A894 02:A884: AB        .byte $AB, $EE, $B3, $AA   ; 
; 3B 
- - - - - - 0x00A898 02:A888: AA        .byte $AA, $9C, $AD, $AD   ; 
- - - - - - 0x00A89C 02:A88C: AA        .byte $AA, $F5, $00, $9C   ; 
- - - - - - 0x00A8A0 02:A890: AA        .byte $AA, $F5, $A2, $9C   ; 
- - - - - - 0x00A8A4 02:A894: AA        .byte $AA, $F5, $00, $9C   ; 
; 3C 
- - - - - - 0x00A8A8 02:A898: AD        .byte $AD, $DE, $AB, $EB   ; 
- - - - - - 0x00A8AC 02:A89C: B3        .byte $B3, $EA, $AA, $EB   ; 
- - - - - - 0x00A8B0 02:A8A0: B3        .byte $B3, $EA, $AB, $EB   ; 
- - - - - - 0x00A8B4 02:A8A4: B3        .byte $B3, $EA, $AA, $EB   ; 
; 3D 
- D 1 - I - 0x00A8B8 02:A8A8: A8        .byte $A8, $A1, $A1, $F6   ; 
- D 1 - I - 0x00A8BC 02:A8AC: A9        .byte $A9, $AB, $AA, $9C   ; 
- D 1 - I - 0x00A8C0 02:A8B0: B3        .byte $B3, $AB, $AA, $F5   ; 
- D 1 - I - 0x00A8C4 02:A8B4: F1        .byte $F1, $F2, $F3, $F4   ; 
; 3E 
- D 1 - I - 0x00A8C8 02:A8B8: BD        .byte $BD, $BD, $BD, $BD   ; 
- D 1 - I - 0x00A8CC 02:A8BC: BD        .byte $BD, $BD, $BD, $BD   ; 
- D 1 - I - 0x00A8D0 02:A8C0: C0        .byte $C0, $C0, $C0, $C0   ; 
- D 1 - I - 0x00A8D4 02:A8C4: 9D        .byte $9D, $9E, $9E, $E9   ; 
; 3F 
- D 1 - I - 0x00A8D8 02:A8C8: 81        .byte $81, $83, $18, $84   ; 
- D 1 - I - 0x00A8DC 02:A8CC: 00        .byte $00, $00, $15, $00   ; 
- D 1 - I - 0x00A8E0 02:A8D0: 00        .byte $00, $00, $15, $00   ; 
- D 1 - I - 0x00A8E4 02:A8D4: 00        .byte $00, $00, $15, $00   ; 
; 40 
- D 1 - I - 0x00A8E8 02:A8D8: 00        .byte $00, $1A, $1A, $1B   ; 
- D 1 - I - 0x00A8EC 02:A8DC: 1D        .byte $1D, $7C, $1E, $7D   ; 
- D 1 - I - 0x00A8F0 02:A8E0: 1B        .byte $1B, $00, $00, $00   ; 
- D 1 - I - 0x00A8F4 02:A8E4: 7D        .byte $7D, $00, $1F, $1C   ; 
; 41 
- D 1 - I - 0x00A8F8 02:A8E8: 11        .byte $11, $12, $11, $12   ; 
- D 1 - I - 0x00A8FC 02:A8EC: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00A900 02:A8F0: 19        .byte $19, $00, $00, $1B   ; 
- D 1 - I - 0x00A904 02:A8F4: 1C        .byte $1C, $1D, $1E, $7D   ; 
; 42 
- D 1 - I - 0x00A908 02:A8F8: 12        .byte $12, $12, $13, $75   ; 
- D 1 - I - 0x00A90C 02:A8FC: 00        .byte $00, $00, $00, $38   ; 
- D 1 - I - 0x00A910 02:A900: 00        .byte $00, $00, $01, $3A   ; 
- D 1 - I - 0x00A914 02:A904: 3D        .byte $3D, $3E, $3F, $40   ; 
; 43 
- D 1 - I - 0x00A918 02:A908: 14        .byte $14, $76, $12, $12   ; 
- D 1 - I - 0x00A91C 02:A90C: 39        .byte $39, $00, $00, $00   ; 
- D 1 - I - 0x00A920 02:A910: 02        .byte $02, $3B, $00, $3C   ; 
- D 1 - I - 0x00A924 02:A914: 41        .byte $41, $42, $43, $44   ; 
; 44 
- D 1 - I - 0x00A928 02:A918: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00A92C 02:A91C: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00A930 02:A920: 1A        .byte $1A, $19, $00, $1A   ; 
- D 1 - I - 0x00A934 02:A924: 1E        .byte $1E, $1C, $1D, $7C   ; 
; 45 
- D 1 - I - 0x00A938 02:A928: 00        .byte $00, $00, $00, $45   ; 
- D 1 - I - 0x00A93C 02:A92C: 00        .byte $00, $00, $4A, $4B   ; 
- D 1 - I - 0x00A940 02:A930: 19        .byte $19, $1A, $06, $54   ; 
- D 1 - I - 0x00A944 02:A934: 1E        .byte $1E, $7D, $59, $00   ; 
; 46 
- D 1 - I - 0x00A948 02:A938: 03        .byte $03, $46, $00, $47   ; 
- D 1 - I - 0x00A94C 02:A93C: 4C        .byte $4C, $4D, $4E, $4F   ; 
- D 1 - I - 0x00A950 02:A940: 07        .byte $07, $55, $08, $56   ; 
- D 1 - I - 0x00A954 02:A944: 00        .byte $00, $00, $5A, $5B   ; 
; 47 
- D 1 - I - 0x00A958 02:A948: 04        .byte $04, $48, $05, $49   ; 
- D 1 - I - 0x00A95C 02:A94C: 50        .byte $50, $51, $52, $53   ; 
- D 1 - I - 0x00A960 02:A950: 09        .byte $09, $57, $0A, $58   ; 
- D 1 - I - 0x00A964 02:A954: 5C        .byte $5C, $5D, $5E, $5F   ; 
; 48 
- D 1 - I - 0x00A968 02:A958: 00        .byte $00, $00, $00, $19   ; 
- D 1 - I - 0x00A96C 02:A95C: 00        .byte $00, $00, $1F, $1C   ; 
- D 1 - I - 0x00A970 02:A960: 19        .byte $19, $00, $00, $1B   ; 
- D 1 - I - 0x00A974 02:A964: 1C        .byte $1C, $1D, $1E, $7D   ; 
; 49 
- D 1 - I - 0x00A978 02:A968: 00        .byte $00, $00, $0C, $61   ; 
- D 1 - I - 0x00A97C 02:A96C: 00        .byte $00, $64, $65, $66   ; 
- D 1 - I - 0x00A980 02:A970: 00        .byte $00, $70, $0F, $71   ; 
- D 1 - I - 0x00A984 02:A974: 00        .byte $00, $00, $00, $00   ; 
; 4A 
- D 1 - I - 0x00A988 02:A978: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00A98C 02:A97C: 67        .byte $67, $68, $69, $6A   ; 
- D 1 - I - 0x00A990 02:A980: 00        .byte $00, $00, $00, $1A   ; 
- D 1 - I - 0x00A994 02:A984: 1F        .byte $1F, $1C, $1D, $7C   ; 
; 4B 
- D 1 - I - 0x00A998 02:A988: 00        .byte $00, $00, $0D, $62   ; 
- D 1 - I - 0x00A99C 02:A98C: 6A        .byte $6A, $6B, $6C, $6D   ; 
- D 1 - I - 0x00A9A0 02:A990: 1B        .byte $1B, $00, $10, $72   ; 
- D 1 - I - 0x00A9A4 02:A994: 7D        .byte $7D, $00, $73, $74   ; 
; 4C 
- D 1 - I - 0x00A9A8 02:A998: 34        .byte $34, $32, $32, $32   ; 
- D 1 - I - 0x00A9AC 02:A99C: 81        .byte $81, $83, $80, $34   ; 
- D 1 - I - 0x00A9B0 02:A9A0: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00A9B4 02:A9A4: 00        .byte $00, $00, $00, $00   ; 
; 4D 
- D 1 - I - 0x00A9B8 02:A9A8: 32        .byte $32, $32, $32, $80   ; 
- D 1 - I - 0x00A9BC 02:A9AC: 80        .byte $80, $84, $82, $00   ; 
- D 1 - I - 0x00A9C0 02:A9B0: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00A9C4 02:A9B4: 00        .byte $00, $00, $00, $00   ; 
; 4E 
- D 1 - I - 0x00A9C8 02:A9B8: 00        .byte $00, $00, $00, $1F   ; 
- D 1 - I - 0x00A9CC 02:A9BC: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00A9D0 02:A9C0: 00        .byte $00, $00, $00, $22   ; 
- D 1 - I - 0x00A9D4 02:A9C4: 22        .byte $22, $23, $25, $25   ; 
; 4F 
- D 1 - I - 0x00A9D8 02:A9C8: 1C        .byte $1C, $7E, $15, $00   ; 
- D 1 - I - 0x00A9DC 02:A9CC: 00        .byte $00, $00, $15, $00   ; 
- D 1 - I - 0x00A9E0 02:A9D0: 23        .byte $23, $23, $15, $23   ; 
- D 1 - I - 0x00A9E4 02:A9D4: 35        .byte $35, $35, $79, $35   ; 
; 50 
- D 1 - I - 0x00A9E8 02:A9D8: 12        .byte $12, $11, $12, $11   ; 
- D 1 - I - 0x00A9EC 02:A9DC: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00A9F0 02:A9E0: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00A9F4 02:A9E4: 00        .byte $00, $00, $00, $00   ; 
; 51 
- D 1 - I - 0x00A9F8 02:A9E8: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00A9FC 02:A9EC: 9F        .byte $9F, $00, $1A, $19   ; 
- D 1 - I - 0x00AA00 02:A9F0: 1F        .byte $1F, $7E, $1E, $1C   ; 
- D 1 - I - 0x00AA04 02:A9F4: 00        .byte $00, $00, $00, $00   ; 
; 52 
- D 1 - I - 0x00AA08 02:A9F8: 00        .byte $00, $9F, $00, $00   ; 
- D 1 - I - 0x00AA0C 02:A9FC: 00        .byte $00, $1A, $1A, $1B   ; 
- D 1 - I - 0x00AA10 02:AA00: 1D        .byte $1D, $7C, $1E, $7D   ; 
- D 1 - I - 0x00AA14 02:AA04: 00        .byte $00, $00, $00, $00   ; 
; 53 
- D 1 - I - 0x00AA18 02:AA08: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00AA1C 02:AA0C: 00        .byte $00, $7F, $00, $00   ; 
- D 1 - I - 0x00AA20 02:AA10: 1F        .byte $1F, $1E, $00, $00   ; 
- D 1 - I - 0x00AA24 02:AA14: 00        .byte $00, $00, $00, $00   ; 
; 54 
- D 1 - I - 0x00AA28 02:AA18: 00        .byte $00, $19, $00, $1A   ; 
- D 1 - I - 0x00AA2C 02:AA1C: 1E        .byte $1E, $1C, $1D, $7C   ; 
- D 1 - I - 0x00AA30 02:AA20: 0B        .byte $0B, $00, $00, $00   ; 
- D 1 - I - 0x00AA34 02:AA24: 60        .byte $60, $00, $00, $00   ; 
; 55 
- D 1 - I - 0x00AA38 02:AA28: 1A        .byte $1A, $1B, $19, $00   ; 
- D 1 - I - 0x00AA3C 02:AA2C: 1E        .byte $1E, $7D, $00, $00   ; 
- D 1 - I - 0x00AA40 02:AA30: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00AA44 02:AA34: 00        .byte $00, $00, $1F, $7E   ; 
; 56 
- D 1 - I - 0x00AA48 02:AA38: 30        .byte $30, $37, $33, $37   ; 
- D 1 - I - 0x00AA4C 02:AA3C: 82        .byte $82, $00, $81, $00   ; 
- D 1 - I - 0x00AA50 02:AA40: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00AA54 02:AA44: 00        .byte $00, $00, $00, $00   ; 
; 57 
- - - - - - 0x00AA58 02:AA48: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x00AA5C 02:AA4C: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x00AA60 02:AA50: 1A        .byte $1A, $1B, $1A, $7F   ; 
- - - - - - 0x00AA64 02:AA54: 1E        .byte $1E, $7D, $1F, $1E   ; 
; 58 
- D 1 - I - 0x00AA68 02:AA58: 0E        .byte $0E, $63, $1A, $19   ; 
- D 1 - I - 0x00AA6C 02:AA5C: 6E        .byte $6E, $6F, $1E, $1C   ; 
- D 1 - I - 0x00AA70 02:AA60: 00        .byte $00, $00, $00, $1A   ; 
- D 1 - I - 0x00AA74 02:AA64: 1F        .byte $1F, $1C, $7E, $1E   ; 
; 59 
- D 1 - I - 0x00AA78 02:AA68: 82        .byte $82, $00, $81, $83   ; 
- D 1 - I - 0x00AA7C 02:AA6C: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00AA80 02:AA70: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00AA84 02:AA74: 00        .byte $00, $00, $00, $00   ; 
; 5A 
- D 1 - I - 0x00AA88 02:AA78: 80        .byte $80, $84, $82, $00   ; 
- D 1 - I - 0x00AA8C 02:AA7C: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00AA90 02:AA80: 00        .byte $00, $00, $85, $00   ; 
- D 1 - I - 0x00AA94 02:AA84: 00        .byte $00, $00, $D6, $00   ; 
; 5B 
- D 1 - I - 0x00AA98 02:AA88: 00        .byte $00, $1A, $1A, $1B   ; 
- D 1 - I - 0x00AA9C 02:AA8C: 1D        .byte $1D, $7C, $1E, $7D   ; 
- D 1 - I - 0x00AAA0 02:AA90: 1B        .byte $1B, $00, $00, $00   ; 
- D 1 - I - 0x00AAA4 02:AA94: 7D        .byte $7D, $00, $1F, $1C   ; 
; 5C 
- D 1 - I - 0x00AAA8 02:AA98: 00        .byte $00, $00, $00, $1F   ; 
- D 1 - I - 0x00AAAC 02:AA9C: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00AAB0 02:AAA0: 23        .byte $23, $23, $23, $23   ; 
- D 1 - I - 0x00AAB4 02:AAA4: 26        .byte $26, $26, $26, $26   ; 
; 5D 
- D 1 - I - 0x00AAB8 02:AAA8: 1C        .byte $1C, $1D, $1E, $00   ; 
- D 1 - I - 0x00AABC 02:AAAC: 00        .byte $00, $00, $00, $22   ; 
- D 1 - I - 0x00AAC0 02:AAB0: 24        .byte $24, $24, $25, $26   ; 
- D 1 - I - 0x00AAC4 02:AAB4: 27        .byte $27, $27, $28, $28   ; 
; 5E 
- D 1 - I - 0x00AAC8 02:AAB8: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00AACC 02:AABC: 23        .byte $23, $23, $24, $25   ; 
- D 1 - I - 0x00AAD0 02:AAC0: 26        .byte $26, $26, $26, $27   ; 
- D 1 - I - 0x00AAD4 02:AAC4: 28        .byte $28, $28, $28, $29   ; 
; 5F 
- D 1 - I - 0x00AAD8 02:AAC8: 22        .byte $22, $22, $23, $23   ; 
- D 1 - I - 0x00AADC 02:AACC: 35        .byte $35, $35, $26, $26   ; 
- D 1 - I - 0x00AAE0 02:AAD0: 28        .byte $28, $28, $28, $28   ; 
- D 1 - I - 0x00AAE4 02:AAD4: 29        .byte $29, $29, $29, $29   ; 
; 60 
- D 1 - I - 0x00AAE8 02:AAD8: 00        .byte $00, $22, $22, $23   ; 
- D 1 - I - 0x00AAEC 02:AADC: 35        .byte $35, $26, $26, $26   ; 
- D 1 - I - 0x00AAF0 02:AAE0: 27        .byte $27, $28, $29, $2A   ; 
- D 1 - I - 0x00AAF4 02:AAE4: 2A        .byte $2A, $2C, $2D, $2D   ; 
; 61 
- D 1 - I - 0x00AAF8 02:AAE8: 24        .byte $24, $24, $25, $26   ; 
- D 1 - I - 0x00AAFC 02:AAEC: 27        .byte $27, $27, $28, $28   ; 
- D 1 - I - 0x00AB00 02:AAF0: 2A        .byte $2A, $2C, $2C, $2C   ; 
- D 1 - I - 0x00AB04 02:AAF4: 2F        .byte $2F, $37, $33, $30   ; 
; 62 
- D 1 - I - 0x00AB08 02:AAF8: 26        .byte $26, $27, $27, $27   ; 
- D 1 - I - 0x00AB0C 02:AAFC: 29        .byte $29, $29, $29, $29   ; 
- D 1 - I - 0x00AB10 02:AB00: 2D        .byte $2D, $2B, $2B, $2D   ; 
- D 1 - I - 0x00AB14 02:AB04: 31        .byte $31, $31, $31, $37   ; 
; 63 
- D 1 - I - 0x00AB18 02:AB08: 28        .byte $28, $28, $16, $28   ; 
- D 1 - I - 0x00AB1C 02:AB0C: 29        .byte $29, $2A, $7A, $2A   ; 
- D 1 - I - 0x00AB20 02:AB10: 2D        .byte $2D, $2D, $17, $2E   ; 
- D 1 - I - 0x00AB24 02:AB14: 33        .byte $33, $2F, $7B, $30   ; 
; 64 
- D 1 - I - 0x00AB28 02:AB18: 28        .byte $28, $28, $29, $29   ; 
- D 1 - I - 0x00AB2C 02:AB1C: 2A        .byte $2A, $2C, $2B, $2D   ; 
- D 1 - I - 0x00AB30 02:AB20: 2E        .byte $2E, $2E, $2E, $2E   ; 
- D 1 - I - 0x00AB34 02:AB24: 30        .byte $30, $30, $31, $31   ; 
; 65 
- D 1 - I - 0x00AB38 02:AB28: 29        .byte $29, $29, $2A, $2A   ; 
- D 1 - I - 0x00AB3C 02:AB2C: 2B        .byte $2B, $2D, $2D, $2E   ; 
- D 1 - I - 0x00AB40 02:AB30: 2E        .byte $2E, $2F, $2F, $2F   ; 
- D 1 - I - 0x00AB44 02:AB34: 31        .byte $31, $31, $31, $36   ; 
; 66 
- D 1 - I - 0x00AB48 02:AB38: 2A        .byte $2A, $2A, $2C, $2D   ; 
- D 1 - I - 0x00AB4C 02:AB3C: 2E        .byte $2E, $2E, $2E, $2E   ; 
- D 1 - I - 0x00AB50 02:AB40: 30        .byte $30, $30, $30, $30   ; 
- D 1 - I - 0x00AB54 02:AB44: 36        .byte $36, $31, $36, $36   ; 
; 67 
- D 1 - I - 0x00AB58 02:AB48: 2B        .byte $2B, $2D, $2B, $2D   ; 
- D 1 - I - 0x00AB5C 02:AB4C: 2E        .byte $2E, $2E, $2E, $2E   ; 
- D 1 - I - 0x00AB60 02:AB50: 31        .byte $31, $31, $31, $31   ; 
- D 1 - I - 0x00AB64 02:AB54: 32        .byte $32, $32, $32, $32   ; 
; 68 
- D 1 - I - 0x00AB68 02:AB58: 8A        .byte $8A, $00, $86, $D7   ; 
- D 1 - I - 0x00AB6C 02:AB5C: 8B        .byte $8B, $C8, $87, $C1   ; 
- - - - - - 0x00AB70 02:AB60: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x00AB74 02:AB64: 00        .byte $00, $00, $00, $00   ; 
; 69 
- D 1 - I - 0x00AB78 02:AB68: 00        .byte $00, $00, $8A, $00   ; 
- D 1 - I - 0x00AB7C 02:AB6C: 00        .byte $00, $00, $8B, $00   ; 
- - - - - - 0x00AB80 02:AB70: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x00AB84 02:AB74: 00        .byte $00, $00, $00, $00   ; 
; 6A 
- D 1 - I - 0x00AB88 02:AB78: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00AB8C 02:AB7C: CD        .byte $CD, $95, $D1, $00   ; 
- D 1 - I - 0x00AB90 02:AB80: 97        .byte $97, $99, $9A, $00   ; 
- D 1 - I - 0x00AB94 02:AB84: 98        .byte $98, $99, $9A, $00   ; 
; 6B 
- D 1 - I - 0x00AB98 02:AB88: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00AB9C 02:AB8C: 00        .byte $00, $00, $01, $5E   ; 
- D 1 - I - 0x00ABA0 02:AB90: 01        .byte $01, $5E, $02, $5F   ; 
- D 1 - I - 0x00ABA4 02:AB94: E4        .byte $E4, $5F, $BD, $BD   ; 
; 6C 
- D 1 - I - 0x00ABA8 02:AB98: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00ABAC 02:AB9C: CD        .byte $CD, $95, $D0, $00   ; 
- D 1 - I - 0x00ABB0 02:ABA0: 98        .byte $98, $D2, $95, $D1   ; 
- D 1 - I - 0x00ABB4 02:ABA4: 00        .byte $00, $97, $99, $D4   ; 
; 6D 
- D 1 - I - 0x00ABB8 02:ABA8: 00        .byte $00, $00, $8B, $00   ; 
- D 1 - I - 0x00ABBC 02:ABAC: 8D        .byte $8D, $8E, $C5, $8E   ; 
- D 1 - I - 0x00ABC0 02:ABB0: 00        .byte $00, $00, $8C, $00   ; 
- D 1 - I - 0x00ABC4 02:ABB4: C7        .byte $C7, $C8, $8B, $C8   ; 
; 6E 
- D 1 - I - 0x00ABC8 02:ABB8: 92        .byte $92, $92, $94, $92   ; 
- D 1 - I - 0x00ABCC 02:ABBC: CA        .byte $CA, $CA, $CB, $CA   ; 
- D 1 - I - 0x00ABD0 02:ABC0: 00        .byte $00, $00, $94, $00   ; 
- D 1 - I - 0x00ABD4 02:ABC4: 00        .byte $00, $00, $94, $00   ; 
; 6F 
- D 1 - I - 0x00ABD8 02:ABC8: 92        .byte $92, $90, $90, $92   ; 
- D 1 - I - 0x00ABDC 02:ABCC: CA        .byte $CA, $CA, $CA, $CA   ; 
- D 1 - I - 0x00ABE0 02:ABD0: 93        .byte $93, $00, $8B, $00   ; 
- D 1 - I - 0x00ABE4 02:ABD4: 93        .byte $93, $00, $8C, $00   ; 
; 70 
- D 1 - I - 0x00ABE8 02:ABD8: 8D        .byte $8D, $8E, $8E, $8E   ; 
- D 1 - I - 0x00ABEC 02:ABDC: 00        .byte $00, $98, $C4, $00   ; 
- D 1 - I - 0x00ABF0 02:ABE0: 00        .byte $00, $00, $89, $00   ; 
- D 1 - I - 0x00ABF4 02:ABE4: C8        .byte $C8, $00, $8B, $C8   ; 
; 71 
- D 1 - I - 0x00ABF8 02:ABE8: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00ABFC 02:ABEC: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00AC00 02:ABF0: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00AC04 02:ABF4: C7        .byte $C7, $C8, $C7, $C8   ; 
; 72 
- D 1 - I - 0x00AC08 02:ABF8: 8A        .byte $8A, $00, $85, $00   ; 
- D 1 - I - 0x00AC0C 02:ABFC: 8B        .byte $8B, $00, $D6, $00   ; 
- D 1 - I - 0x00AC10 02:AC00: 8B        .byte $8B, $00, $86, $D7   ; 
- D 1 - I - 0x00AC14 02:AC04: 8B        .byte $8B, $C8, $87, $C1   ; 
; 73 
- D 1 - I - 0x00AC18 02:AC08: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00AC1C 02:AC0C: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00AC20 02:AC10: 00        .byte $00, $00, $8A, $00   ; 
- D 1 - I - 0x00AC24 02:AC14: 00        .byte $00, $00, $8B, $00   ; 
; 74 
- D 1 - I - 0x00AC28 02:AC18: 00        .byte $00, $00, $8C, $00   ; 
- D 1 - I - 0x00AC2C 02:AC1C: 8E        .byte $8E, $8E, $C5, $8E   ; 
- D 1 - I - 0x00AC30 02:AC20: 8F        .byte $8F, $00, $8C, $00   ; 
- D 1 - I - 0x00AC34 02:AC24: 00        .byte $00, $8F, $00, $00   ; 
; 75 
- D 1 - I - 0x00AC38 02:AC28: 00        .byte $00, $00, $93, $00   ; 
- D 1 - I - 0x00AC3C 02:AC2C: CD        .byte $CD, $95, $D0, $8D   ; 
- D 1 - I - 0x00AC40 02:AC30: 98        .byte $98, $D2, $95, $D1   ; 
- D 1 - I - 0x00AC44 02:AC34: 00        .byte $00, $97, $99, $D4   ; 
; 76 
- D 1 - I - 0x00AC48 02:AC38: 8B        .byte $8B, $00, $87, $C1   ; 
- D 1 - I - 0x00AC4C 02:AC3C: C5        .byte $C5, $8D, $87, $C1   ; 
- D 1 - I - 0x00AC50 02:AC40: 8B        .byte $8B, $00, $88, $C1   ; 
- D 1 - I - 0x00AC54 02:AC44: 8C        .byte $8C, $00, $86, $C1   ; 
; 77 
- D 1 - I - 0x00AC58 02:AC48: 93        .byte $93, $00, $8C, $00   ; 
- D 1 - I - 0x00AC5C 02:AC4C: 8D        .byte $8D, $8D, $C5, $C6   ; 
- D 1 - I - 0x00AC60 02:AC50: 93        .byte $93, $00, $8B, $00   ; 
- D 1 - I - 0x00AC64 02:AC54: 93        .byte $93, $00, $8C, $00   ; 
; 78 
- D 1 - I - 0x00AC68 02:AC58: 92        .byte $92, $90, $91, $92   ; 
- D 1 - I - 0x00AC6C 02:AC5C: CA        .byte $CA, $CA, $CB, $CA   ; 
- D 1 - I - 0x00AC70 02:AC60: 00        .byte $00, $00, $94, $00   ; 
- D 1 - I - 0x00AC74 02:AC64: 00        .byte $00, $00, $94, $00   ; 
; 79 
- D 1 - I - 0x00AC78 02:AC68: 92        .byte $92, $98, $99, $9A   ; 
- D 1 - I - 0x00AC7C 02:AC6C: CA        .byte $CA, $CC, $9B, $D3   ; 
- D 1 - I - 0x00AC80 02:AC70: 00        .byte $00, $97, $99, $D4   ; 
- D 1 - I - 0x00AC84 02:AC74: 00        .byte $00, $97, $99, $D4   ; 
; 7A 
- D 1 - I - 0x00AC88 02:AC78: 00        .byte $00, $00, $87, $C1   ; 
- D 1 - I - 0x00AC8C 02:AC7C: 00        .byte $00, $00, $D8, $D9   ; 
- D 1 - I - 0x00AC90 02:AC80: 00        .byte $00, $00, $87, $C1   ; 
- D 1 - I - 0x00AC94 02:AC84: 00        .byte $00, $00, $87, $C1   ; 
; 7B 
- D 1 - I - 0x00AC98 02:AC88: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00AC9C 02:AC8C: CD        .byte $CD, $95, $D0, $C9   ; 
- D 1 - I - 0x00ACA0 02:AC90: 97        .byte $97, $99, $9A, $00   ; 
- D 1 - I - 0x00ACA4 02:AC94: 98        .byte $98, $99, $9A, $00   ; 
; 7C 
- D 1 - I - 0x00ACA8 02:AC98: 00        .byte $00, $92, $94, $91   ; 
- D 1 - I - 0x00ACAC 02:AC9C: D0        .byte $D0, $CA, $CA, $CA   ; 
- D 1 - I - 0x00ACB0 02:ACA0: 9A        .byte $9A, $97, $99, $9A   ; 
- D 1 - I - 0x00ACB4 02:ACA4: F7        .byte $F7, $F7, $F7, $F7   ; 
; 7D 
- D 1 - I - 0x00ACB8 02:ACA8: 92        .byte $92, $98, $9B, $D3   ; 
- D 1 - I - 0x00ACBC 02:ACAC: CA        .byte $CA, $CC, $99, $D4   ; 
- D 1 - I - 0x00ACC0 02:ACB0: 99        .byte $99, $D4, $99, $9A   ; 
- D 1 - I - 0x00ACC4 02:ACB4: DF        .byte $DF, $F7, $F7, $F7   ; 
; 7E 
- D 1 - I - 0x00ACC8 02:ACB8: 00        .byte $00, $00, $87, $C1   ; 
- D 1 - I - 0x00ACCC 02:ACBC: 00        .byte $00, $CE, $C2, $C3   ; 
- D 1 - I - 0x00ACD0 02:ACC0: 97        .byte $97, $99, $9A, $99   ; 
- D 1 - I - 0x00ACD4 02:ACC4: F7        .byte $F7, $F7, $F7, $F7   ; 
; 7F 
- D 1 - I - 0x00ACD8 02:ACC8: 00        .byte $00, $CD, $96, $D1   ; 
- D 1 - I - 0x00ACDC 02:ACCC: CE        .byte $CE, $D5, $CF, $96   ; 
- D 1 - I - 0x00ACE0 02:ACD0: 99        .byte $99, $9A, $99, $9A   ; 
- D 1 - I - 0x00ACE4 02:ACD4: DF        .byte $DF, $F7, $F7, $F7   ; 
; 80 
- D 1 - I - 0x00ACE8 02:ACD8: 00        .byte $00, $00, $85, $00   ; 
- D 1 - I - 0x00ACEC 02:ACDC: 00        .byte $00, $00, $D6, $00   ; 
- D 1 - I - 0x00ACF0 02:ACE0: 00        .byte $00, $00, $86, $D7   ; 
- D 1 - I - 0x00ACF4 02:ACE4: 00        .byte $00, $00, $87, $C1   ; 
; 81 
- D 1 - I - 0x00ACF8 02:ACE8: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00ACFC 02:ACEC: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00AD00 02:ACF0: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00AD04 02:ACF4: 0A        .byte $0A, $09, $32, $00   ; 
; 82 
- D 1 - I - 0x00AD08 02:ACF8: 00        .byte $00, $00, $00, $0B   ; 
- D 1 - I - 0x00AD0C 02:ACFC: 00        .byte $00, $0B, $0C, $35   ; 
- D 1 - I - 0x00AD10 02:AD00: 0C        .byte $0C, $35, $10, $11   ; 
- D 1 - I - 0x00AD14 02:AD04: 12        .byte $12, $14, $3C, $83   ; 
; 83 
- D 1 - I - 0x00AD18 02:AD08: 35        .byte $35, $3B, $12, $0E   ; 
- D 1 - I - 0x00AD1C 02:AD0C: 82        .byte $82, $00, $38, $83   ; 
- D 1 - I - 0x00AD20 02:AD10: 00        .byte $00, $00, $00, $58   ; 
- D 1 - I - 0x00AD24 02:AD14: 00        .byte $00, $00, $00, $59   ; 
; 84 
- D 1 - I - 0x00AD28 02:AD18: 00        .byte $00, $81, $12, $3B   ; 
- D 1 - I - 0x00AD2C 02:AD1C: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00AD30 02:AD20: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00AD34 02:AD24: 00        .byte $00, $00, $00, $00   ; 
; 85 
- D 1 - I - 0x00AD38 02:AD28: 12        .byte $12, $36, $0E, $0F   ; 
- D 1 - I - 0x00AD3C 02:AD2C: 81        .byte $81, $83, $3A, $14   ; 
- D 1 - I - 0x00AD40 02:AD30: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00AD44 02:AD34: 00        .byte $00, $00, $00, $00   ; 
; 86 
- D 1 - I - 0x00AD48 02:AD38: 0D        .byte $0D, $0A, $09, $0A   ; 
- D 1 - I - 0x00AD4C 02:AD3C: 12        .byte $12, $36, $36, $36   ; 
- D 1 - I - 0x00AD50 02:AD40: 81        .byte $81, $83, $13, $80   ; 
- D 1 - I - 0x00AD54 02:AD44: 00        .byte $00, $00, $00, $00   ; 
; 87 
- D 1 - I - 0x00AD58 02:AD48: 0A        .byte $0A, $09, $0A, $09   ; 
- D 1 - I - 0x00AD5C 02:AD4C: 36        .byte $36, $33, $33, $34   ; 
- D 1 - I - 0x00AD60 02:AD50: 84        .byte $84, $82, $83, $3A   ; 
- D 1 - I - 0x00AD64 02:AD54: 00        .byte $00, $00, $00, $00   ; 
; 88 
- D 1 - I - 0x00AD68 02:AD58: 0A        .byte $0A, $09, $09, $09   ; 
- D 1 - I - 0x00AD6C 02:AD5C: 33        .byte $33, $34, $33, $34   ; 
- D 1 - I - 0x00AD70 02:AD60: 14        .byte $14, $39, $11, $37   ; 
- D 1 - I - 0x00AD74 02:AD64: 00        .byte $00, $81, $83, $13   ; 
; 89 
- D 1 - I - 0x00AD78 02:AD68: 09        .byte $09, $09, $0A, $09   ; 
- D 1 - I - 0x00AD7C 02:AD6C: 33        .byte $33, $34, $33, $34   ; 
- D 1 - I - 0x00AD80 02:AD70: 11        .byte $11, $37, $11, $37   ; 
- D 1 - I - 0x00AD84 02:AD74: 80        .byte $80, $83, $13, $80   ; 
; 8A 
- D 1 - I - 0x00AD88 02:AD78: 09        .byte $09, $0A, $09, $0A   ; 
- D 1 - I - 0x00AD8C 02:AD7C: 33        .byte $33, $34, $33, $33   ; 
- D 1 - I - 0x00AD90 02:AD80: 11        .byte $11, $37, $14, $39   ; 
- D 1 - I - 0x00AD94 02:AD84: 84        .byte $84, $82, $00, $38   ; 
; 8B 
- D 1 - I - 0x00AD98 02:AD88: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00AD9C 02:AD8C: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00ADA0 02:AD90: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00ADA4 02:AD94: 0B        .byte $0B, $09, $09, $32   ; 
; 8C 
- D 1 - I - 0x00ADA8 02:AD98: 00        .byte $00, $00, $81, $83   ; 
- D 1 - I - 0x00ADAC 02:AD9C: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00ADB0 02:ADA0: 17        .byte $17, $17, $17, $17   ; 
- D 1 - I - 0x00ADB4 02:ADA4: 3F        .byte $3F, $3F, $3F, $3F   ; 
; 8D 
- D 1 - I - 0x00ADB8 02:ADA8: 12        .byte $12, $14, $82, $00   ; 
- D 1 - I - 0x00ADBC 02:ADAC: 38        .byte $38, $00, $00, $00   ; 
- D 1 - I - 0x00ADC0 02:ADB0: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00ADC4 02:ADB4: 00        .byte $00, $00, $00, $00   ; 
; 8E 
- D 1 - I - 0x00ADC8 02:ADB8: 00        .byte $00, $92, $94, $91   ; 
- D 1 - I - 0x00ADCC 02:ADBC: D0        .byte $D0, $CA, $CA, $CA   ; 
- D 1 - I - 0x00ADD0 02:ADC0: 9A        .byte $9A, $97, $99, $9A   ; 
- D 1 - I - 0x00ADD4 02:ADC4: F7        .byte $F7, $DF, $65, $65   ; 
; 8F 
- D 1 - I - 0x00ADD8 02:ADC8: 92        .byte $92, $98, $9B, $D3   ; 
- D 1 - I - 0x00ADDC 02:ADCC: CA        .byte $CA, $CC, $99, $D4   ; 
- D 1 - I - 0x00ADE0 02:ADD0: 99        .byte $99, $D4, $99, $9A   ; 
- D 1 - I - 0x00ADE4 02:ADD4: 65        .byte $65, $65, $65, $65   ; 
; 90 
- D 1 - I - 0x00ADE8 02:ADD8: 00        .byte $00, $00, $87, $C1   ; 
- D 1 - I - 0x00ADEC 02:ADDC: 00        .byte $00, $CE, $C2, $C3   ; 
- D 1 - I - 0x00ADF0 02:ADE0: 97        .byte $97, $99, $9A, $99   ; 
- D 1 - I - 0x00ADF4 02:ADE4: 65        .byte $65, $65, $65, $65   ; 
; 91 
- D 1 - I - 0x00ADF8 02:ADE8: 00        .byte $00, $CD, $96, $D1   ; 
- D 1 - I - 0x00ADFC 02:ADEC: CE        .byte $CE, $D5, $CF, $96   ; 
- D 1 - I - 0x00AE00 02:ADF0: 99        .byte $99, $9A, $99, $9A   ; 
- D 1 - I - 0x00AE04 02:ADF4: 66        .byte $66, $F7, $F7, $F7   ; 
; 92 
- D 1 - I - 0x00AE08 02:ADF8: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00AE0C 02:ADFC: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00AE10 02:AE00: 17        .byte $17, $17, $17, $17   ; 
- D 1 - I - 0x00AE14 02:AE04: 3F        .byte $3F, $3F, $3F, $3F   ; 
; 93 
- D 1 - I - 0x00AE18 02:AE08: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00AE1C 02:AE0C: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00AE20 02:AE10: 17        .byte $17, $17, $17, $3E   ; 
- D 1 - I - 0x00AE24 02:AE14: 3F        .byte $3F, $3F, $3F, $3F   ; 
; 94 
- D 1 - I - 0x00AE28 02:AE18: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00AE2C 02:AE1C: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00AE30 02:AE20: 16        .byte $16, $17, $17, $17   ; 
- D 1 - I - 0x00AE34 02:AE24: 3D        .byte $3D, $3F, $3F, $3F   ; 
; 95 
- D 1 - I - 0x00AE38 02:AE28: 00        .byte $00, $00, $00, $15   ; 
- D 1 - I - 0x00AE3C 02:AE2C: 00        .byte $00, $00, $00, $15   ; 
- D 1 - I - 0x00AE40 02:AE30: 17        .byte $17, $17, $17, $15   ; 
- D 1 - I - 0x00AE44 02:AE34: 3F        .byte $3F, $3F, $3F, $3F   ; 
; 96 
- D 1 - I - 0x00AE48 02:AE38: 75        .byte $75, $A1, $74, $A1   ; 
- D 1 - I - 0x00AE4C 02:AE3C: 76        .byte $76, $AA, $E2, $AA   ; 
- D 1 - I - 0x00AE50 02:AE40: 76        .byte $76, $AA, $05, $AA   ; 
- D 1 - I - 0x00AE54 02:AE44: F1        .byte $F1, $F2, $F2, $F2   ; 
; 97 
- D 1 - I - 0x00AE58 02:AE48: 74        .byte $74, $A1, $74, $F6   ; 
- D 1 - I - 0x00AE5C 02:AE4C: E2        .byte $E2, $AA, $AA, $9C   ; 
- D 1 - I - 0x00AE60 02:AE50: 05        .byte $05, $AA, $05, $F5   ; 
- D 1 - I - 0x00AE64 02:AE54: F2        .byte $F2, $F2, $42, $43   ; 
; 98 
- D 1 - I - 0x00AE68 02:AE58: 15        .byte $15, $A8, $74, $A1   ; 
- D 1 - I - 0x00AE6C 02:AE5C: 15        .byte $15, $A9, $E2, $AA   ; 
- D 1 - I - 0x00AE70 02:AE60: 15        .byte $15, $A9, $05, $AA   ; 
- D 1 - I - 0x00AE74 02:AE64: 15        .byte $15, $F1, $F2, $F2   ; 
; 99 
- D 1 - I - 0x00AE78 02:AE68: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00AE7C 02:AE6C: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00AE80 02:AE70: 00        .byte $00, $00, $00, $16   ; 
- D 1 - I - 0x00AE84 02:AE74: 00        .byte $00, $00, $00, $3D   ; 
; 9A 
- D 1 - I - 0x00AE88 02:AE78: 75        .byte $75, $A1, $74, $A1   ; 
- D 1 - I - 0x00AE8C 02:AE7C: A9        .byte $A9, $AA, $40, $41   ; 
- D 1 - I - 0x00AE90 02:AE80: 20        .byte $20, $41, $02, $5F   ; 
- D 1 - I - 0x00AE94 02:AE84: 60        .byte $60, $5F, $BD, $BD   ; 
; 9B 
- D 1 - I - 0x00AE98 02:AE88: 18        .byte $18, $44, $02, $5F   ; 
- D 1 - I - 0x00AE9C 02:AE8C: 02        .byte $02, $5F, $BD, $BD   ; 
- D 1 - I - 0x00AEA0 02:AE90: FC        .byte $FC, $BD, $F8, $BD   ; 
- D 1 - I - 0x00AEA4 02:AE94: BD        .byte $BD, $BD, $BD, $BD   ; 
; 9C 
- D 1 - I - 0x00AEA8 02:AE98: 15        .byte $15, $A8, $74, $A1   ; 
- D 1 - I - 0x00AEAC 02:AE9C: 15        .byte $15, $A9, $40, $41   ; 
- D 1 - I - 0x00AEB0 02:AEA0: 21        .byte $21, $46, $02, $5F   ; 
- D 1 - I - 0x00AEB4 02:AEA4: 60        .byte $60, $5F, $BD, $BD   ; 
; 9D 
- D 1 - I - 0x00AEB8 02:AEA8: 16        .byte $16, $17, $17, $17   ; 
- D 1 - I - 0x00AEBC 02:AEAC: 3D        .byte $3D, $3F, $3F, $3F   ; 
- - - - - - 0x00AEC0 02:AEB0: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x00AEC4 02:AEB4: 00        .byte $00, $00, $00, $00   ; 
; 9E 
- D 1 - I - 0x00AEC8 02:AEB8: 17        .byte $17, $17, $17, $3E   ; 
- D 1 - I - 0x00AECC 02:AEBC: 3F        .byte $3F, $3F, $3F, $3F   ; 
- - - - - - 0x00AED0 02:AEC0: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x00AED4 02:AEC4: 00        .byte $00, $00, $00, $00   ; 
; 9F 
- D 1 - I - 0x00AED8 02:AEC8: 22        .byte $22, $53, $00, $00   ; 
- D 1 - I - 0x00AEDC 02:AECC: 22        .byte $22, $47, $00, $00   ; 
- D 1 - I - 0x00AEE0 02:AED0: 24        .byte $24, $48, $00, $00   ; 
- D 1 - I - 0x00AEE4 02:AED4: DF        .byte $DF, $F7, $F7, $F7   ; 
; A0 
- D 1 - I - 0x00AEE8 02:AED8: 00        .byte $00, $00, $23, $54   ; 
- D 1 - I - 0x00AEEC 02:AEDC: 00        .byte $00, $00, $22, $47   ; 
- D 1 - I - 0x00AEF0 02:AEE0: 00        .byte $00, $00, $24, $48   ; 
- D 1 - I - 0x00AEF4 02:AEE4: F7        .byte $F7, $F7, $F7, $F7   ; 
; A1 
- D 1 - I - 0x00AEF8 02:AEE8: 22        .byte $22, $53, $28, $00   ; 
- D 1 - I - 0x00AEFC 02:AEEC: 22        .byte $22, $47, $00, $00   ; 
- D 1 - I - 0x00AF00 02:AEF0: 24        .byte $24, $48, $00, $00   ; 
- D 1 - I - 0x00AF04 02:AEF4: F7        .byte $F7, $F7, $F7, $F7   ; 
; A2 
- D 1 - I - 0x00AF08 02:AEF8: 00        .byte $00, $00, $23, $54   ; 
- D 1 - I - 0x00AF0C 02:AEFC: 00        .byte $00, $00, $22, $47   ; 
- D 1 - I - 0x00AF10 02:AF00: 00        .byte $00, $00, $24, $48   ; 
- D 1 - I - 0x00AF14 02:AF04: DF        .byte $DF, $F7, $F7, $F7   ; 
; A3 
- D 1 - I - 0x00AF18 02:AF08: 22        .byte $22, $53, $28, $00   ; 
- D 1 - I - 0x00AF1C 02:AF0C: 22        .byte $22, $47, $00, $00   ; 
- D 1 - I - 0x00AF20 02:AF10: 24        .byte $24, $48, $00, $00   ; 
- D 1 - I - 0x00AF24 02:AF14: 65        .byte $65, $65, $65, $65   ; 
; A4 
- D 1 - I - 0x00AF28 02:AF18: 00        .byte $00, $00, $23, $54   ; 
- D 1 - I - 0x00AF2C 02:AF1C: 00        .byte $00, $00, $22, $47   ; 
- D 1 - I - 0x00AF30 02:AF20: 00        .byte $00, $00, $24, $48   ; 
- D 1 - I - 0x00AF34 02:AF24: 66        .byte $66, $F7, $F7, $F7   ; 
; A5 
- D 1 - I - 0x00AF38 02:AF28: 22        .byte $22, $47, $27, $4D   ; 
- D 1 - I - 0x00AF3C 02:AF2C: 22        .byte $22, $4C, $4D, $28   ; 
- - - - - - 0x00AF40 02:AF30: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x00AF44 02:AF34: 00        .byte $00, $00, $00, $00   ; 
; A6 
- D 1 - I - 0x00AF48 02:AF38: 2B        .byte $2B, $4A, $26, $47   ; 
- D 1 - I - 0x00AF4C 02:AF3C: 00        .byte $00, $25, $4A, $4B   ; 
- - - - - - 0x00AF50 02:AF40: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x00AF54 02:AF44: 00        .byte $00, $00, $00, $00   ; 
; A7 
- D 1 - I - 0x00AF58 02:AF48: 23        .byte $23, $51, $2C, $00   ; 
- D 1 - I - 0x00AF5C 02:AF4C: 22        .byte $22, $49, $4A, $2C   ; 
- D 1 - I - 0x00AF60 02:AF50: 22        .byte $22, $47, $25, $4A   ; 
- D 1 - I - 0x00AF64 02:AF54: 22        .byte $22, $47, $00, $4F   ; 
; A8 
- D 1 - I - 0x00AF68 02:AF58: 00        .byte $00, $00, $2D, $52   ; 
- D 1 - I - 0x00AF6C 02:AF5C: 00        .byte $00, $27, $4D, $4E   ; 
- D 1 - I - 0x00AF70 02:AF60: 2A        .byte $2A, $4D, $29, $47   ; 
- D 1 - I - 0x00AF74 02:AF64: 00        .byte $00, $50, $22, $47   ; 
; A9 
- D 1 - I - 0x00AF78 02:AF68: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00AF7C 02:AF6C: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00AF80 02:AF70: 00        .byte $00, $00, $00, $58   ; 
- D 1 - I - 0x00AF84 02:AF74: 00        .byte $00, $00, $00, $59   ; 
; AA 
- D 1 - I - 0x00AF88 02:AF78: 15        .byte $15, $A9, $05, $AA   ; 
- D 1 - I - 0x00AF8C 02:AF7C: 15        .byte $15, $A9, $AA, $AA   ; 
- D 1 - I - 0x00AF90 02:AF80: 2E        .byte $2E, $2F, $30, $30   ; 
- D 1 - I - 0x00AF94 02:AF84: 9D        .byte $9D, $9E, $9E, $9E   ; 
; AB 
- D 1 - I - 0x00AF98 02:AF88: 05        .byte $05, $AA, $05, $9C   ; 
- D 1 - I - 0x00AF9C 02:AF8C: AA        .byte $AA, $AA, $AA, $9C   ; 
- D 1 - I - 0x00AFA0 02:AF90: 30        .byte $30, $30, $30, $31   ; 
- D 1 - I - 0x00AFA4 02:AF94: 9E        .byte $9E, $9E, $9E, $9E   ; 
; AC 
- D 1 - I - 0x00AFA8 02:AF98: 9C        .byte $9C, $00, $00, $00   ; 
- D 1 - I - 0x00AFAC 02:AF9C: 9C        .byte $9C, $00, $00, $00   ; 
- D 1 - I - 0x00AFB0 02:AFA0: 31        .byte $31, $00, $00, $00   ; 
- D 1 - I - 0x00AFB4 02:AFA4: 9E        .byte $9E, $9E, $9E, $9E   ; 
; AD 
- D 1 - I - 0x00AFB8 02:AFA8: 76        .byte $76, $AB, $05, $9C   ; 
- D 1 - I - 0x00AFBC 02:AFAC: A9        .byte $A9, $AB, $AA, $9C   ; 
- D 1 - I - 0x00AFC0 02:AFB0: 2F        .byte $2F, $30, $30, $31   ; 
- D 1 - I - 0x00AFC4 02:AFB4: 9E        .byte $9E, $9E, $9E, $9E   ; 
; AE 
- D 1 - I - 0x00AFC8 02:AFB8: 0F        .byte $0F, $35, $10, $3B   ; 
- D 1 - I - 0x00AFCC 02:AFBC: 14        .byte $14, $84, $82, $00   ; 
- D 1 - I - 0x00AFD0 02:AFC0: 00        .byte $00, $D8, $00, $00   ; 
- D 1 - I - 0x00AFD4 02:AFC4: 9E        .byte $9E, $E9, $00, $00   ; 
; AF 
- D 1 - I - 0x00AFD8 02:AFC8: 00        .byte $00, $55, $00, $00   ; 
- D 1 - I - 0x00AFDC 02:AFCC: 15        .byte $15, $A9, $AA, $AA   ; 
- D 1 - I - 0x00AFE0 02:AFD0: 15        .byte $15, $A9, $05, $E2   ; 
- D 1 - I - 0x00AFE4 02:AFD4: 15        .byte $15, $A9, $AA, $AA   ; 
; B0 
- D 1 - I - 0x00AFE8 02:AFD8: 00        .byte $00, $55, $00, $00   ; 
- D 1 - I - 0x00AFEC 02:AFDC: AA        .byte $AA, $56, $AA, $9C   ; 
- D 1 - I - 0x00AFF0 02:AFE0: 05        .byte $05, $E2, $05, $9C   ; 
- D 1 - I - 0x00AFF4 02:AFE4: AA        .byte $AA, $AA, $AA, $9C   ; 
; B1 
- D 1 - I - 0x00AFF8 02:AFE8: 00        .byte $00, $55, $00, $00   ; 
- D 1 - I - 0x00AFFC 02:AFEC: AA        .byte $AA, $56, $AA, $AA   ; 
- D 1 - I - 0x00B000 02:AFF0: 9C        .byte $9C, $00, $00, $00   ; 
- D 1 - I - 0x00B004 02:AFF4: 9C        .byte $9C, $00, $00, $00   ; 
; B2 
- D 1 - I - 0x00B008 02:AFF8: 00        .byte $00, $55, $00, $00   ; 
- D 1 - I - 0x00B00C 02:AFFC: AA        .byte $AA, $56, $AA, $9C   ; 
- D 1 - I - 0x00B010 02:B000: 76        .byte $76, $AB, $05, $9C   ; 
- D 1 - I - 0x00B014 02:B004: A9        .byte $A9, $AB, $AA, $9C   ; 
; B3 
- D 1 - I - 0x00B018 02:B008: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B01C 02:B00C: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B020 02:B010: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B024 02:B014: 00        .byte $00, $00, $00, $57   ; 
; B4 
- D 1 - I - 0x00B028 02:B018: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B02C 02:B01C: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B030 02:B020: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B034 02:B024: 9D        .byte $9D, $9E, $9E, $9E   ; 
; B5 
- D 1 - I - 0x00B038 02:B028: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B03C 02:B02C: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B040 02:B030: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B044 02:B034: 9E        .byte $9E, $9E, $9E, $9E   ; 
; B6 
- D 1 - I - 0x00B048 02:B038: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B04C 02:B03C: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B050 02:B040: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B054 02:B044: 9E        .byte $9E, $E9, $00, $00   ; 
; B7 
- D 1 - I - 0x00B058 02:B048: 22        .byte $22, $47, $25, $4A   ; 
- D 1 - I - 0x00B05C 02:B04C: 22        .byte $22, $47, $00, $4F   ; 
- D 1 - I - 0x00B060 02:B050: 22        .byte $22, $47, $27, $4D   ; 
- D 1 - I - 0x00B064 02:B054: 22        .byte $22, $4C, $4D, $28   ; 
; B8 
- D 1 - I - 0x00B068 02:B058: 2A        .byte $2A, $4D, $29, $47   ; 
- D 1 - I - 0x00B06C 02:B05C: 00        .byte $00, $50, $22, $47   ; 
- D 1 - I - 0x00B070 02:B060: 2B        .byte $2B, $4A, $26, $47   ; 
- D 1 - I - 0x00B074 02:B064: 00        .byte $00, $25, $4A, $4B   ; 
; B9 
- D 1 - I - 0x00B078 02:B068: 00        .byte $00, $00, $00, $58   ; 
- D 1 - I - 0x00B07C 02:B06C: 00        .byte $00, $00, $00, $59   ; 
- D 1 - I - 0x00B080 02:B070: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B084 02:B074: 00        .byte $00, $00, $00, $00   ; 
; BA 
- D 1 - I - 0x00B088 02:B078: 2E        .byte $2E, $2F, $30, $30   ; 
- D 1 - I - 0x00B08C 02:B07C: 9D        .byte $9D, $9E, $9E, $9E   ; 
- D 1 - I - 0x00B090 02:B080: 23        .byte $23, $51, $2C, $00   ; 
- D 1 - I - 0x00B094 02:B084: 22        .byte $22, $49, $4A, $2C   ; 
; BB 
- D 1 - I - 0x00B098 02:B088: 30        .byte $30, $30, $30, $31   ; 
- D 1 - I - 0x00B09C 02:B08C: 9E        .byte $9E, $9E, $9E, $9E   ; 
- D 1 - I - 0x00B0A0 02:B090: 00        .byte $00, $00, $2D, $52   ; 
- D 1 - I - 0x00B0A4 02:B094: 00        .byte $00, $27, $4D, $4E   ; 
; BC 
- D 1 - I - 0x00B0A8 02:B098: 30        .byte $30, $30, $30, $31   ; 
- D 1 - I - 0x00B0AC 02:B09C: 9E        .byte $9E, $9E, $9E, $9E   ; 
- D 1 - I - 0x00B0B0 02:B0A0: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B0B4 02:B0A4: 00        .byte $00, $00, $00, $00   ; 
; BD 
- D 1 - I - 0x00B0B8 02:B0A8: 31        .byte $31, $00, $00, $00   ; 
- D 1 - I - 0x00B0BC 02:B0AC: 9E        .byte $9E, $9E, $9E, $9E   ; 
- D 1 - I - 0x00B0C0 02:B0B0: 23        .byte $23, $51, $2C, $00   ; 
- D 1 - I - 0x00B0C4 02:B0B4: 22        .byte $22, $49, $4A, $2C   ; 
; BE 
- D 1 - I - 0x00B0C8 02:B0B8: 2F        .byte $2F, $30, $30, $31   ; 
- D 1 - I - 0x00B0CC 02:B0BC: 9E        .byte $9E, $9E, $9E, $9E   ; 
- D 1 - I - 0x00B0D0 02:B0C0: 00        .byte $00, $00, $2D, $52   ; 
- D 1 - I - 0x00B0D4 02:B0C4: 00        .byte $00, $27, $4D, $4E   ; 
; BF 
- D 1 - I - 0x00B0D8 02:B0C8: 00        .byte $00, $D8, $00, $00   ; 
- D 1 - I - 0x00B0DC 02:B0CC: 9E        .byte $9E, $E9, $00, $00   ; 
- D 1 - I - 0x00B0E0 02:B0D0: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B0E4 02:B0D4: 00        .byte $00, $00, $00, $00   ; 
; C0 
- D 1 - I - 0x00B0E8 02:B0D8: 15        .byte $15, $A9, $05, $E2   ; 
- D 1 - I - 0x00B0EC 02:B0DC: 15        .byte $15, $A9, $AA, $AA   ; 
- D 1 - I - 0x00B0F0 02:B0E0: 15        .byte $15, $C3, $05, $AA   ; 
- D 1 - I - 0x00B0F4 02:B0E4: 15        .byte $15, $A9, $AA, $AA   ; 
; C1 
- D 1 - I - 0x00B0F8 02:B0E8: 05        .byte $05, $E2, $05, $9C   ; 
- D 1 - I - 0x00B0FC 02:B0EC: AA        .byte $AA, $AA, $AA, $9C   ; 
- D 1 - I - 0x00B100 02:B0F0: 05        .byte $05, $AA, $05, $9C   ; 
- D 1 - I - 0x00B104 02:B0F4: AA        .byte $AA, $AA, $AA, $9C   ; 
; C2 
- - - - - - 0x00B108 02:B0F8: 05        .byte $05, $E2, $05, $9C   ; 
- - - - - - 0x00B10C 02:B0FC: AA        .byte $AA, $AA, $AA, $9C   ; 
- - - - - - 0x00B110 02:B100: 05        .byte $05, $AA, $05, $9C   ; 
- - - - - - 0x00B114 02:B104: AA        .byte $AA, $AA, $AA, $9C   ; 
; C3 
- D 1 - I - 0x00B118 02:B108: 9C        .byte $9C, $00, $00, $00   ; 
- D 1 - I - 0x00B11C 02:B10C: 9C        .byte $9C, $00, $00, $00   ; 
- D 1 - I - 0x00B120 02:B110: 9C        .byte $9C, $00, $00, $00   ; 
- D 1 - I - 0x00B124 02:B114: 9C        .byte $9C, $00, $00, $00   ; 
; C4 
- D 1 - I - 0x00B128 02:B118: 76        .byte $76, $AB, $05, $9C   ; 
- D 1 - I - 0x00B12C 02:B11C: A9        .byte $A9, $AB, $AA, $9C   ; 
- D 1 - I - 0x00B130 02:B120: 76        .byte $76, $AB, $05, $9C   ; 
- D 1 - I - 0x00B134 02:B124: A9        .byte $A9, $AB, $AA, $9C   ; 
; C5 
- D 1 - I - 0x00B138 02:B128: 00        .byte $00, $00, $00, $57   ; 
- D 1 - I - 0x00B13C 02:B12C: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B140 02:B130: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B144 02:B134: 00        .byte $00, $00, $00, $00   ; 
; C6 
- D 1 - I - 0x00B148 02:B138: 9D        .byte $9D, $9E, $9E, $9E   ; 
- D 1 - I - 0x00B14C 02:B13C: 00        .byte $00, $55, $00, $00   ; 
- D 1 - I - 0x00B150 02:B140: 15        .byte $15, $A9, $05, $AA   ; 
- D 1 - I - 0x00B154 02:B144: 15        .byte $15, $A9, $AA, $AA   ; 
; C7 
- D 1 - I - 0x00B158 02:B148: 9E        .byte $9E, $9E, $9E, $9E   ; 
- D 1 - I - 0x00B15C 02:B14C: 00        .byte $00, $55, $00, $00   ; 
- D 1 - I - 0x00B160 02:B150: 05        .byte $05, $56, $05, $9C   ; 
- D 1 - I - 0x00B164 02:B154: AA        .byte $AA, $AA, $AA, $9C   ; 
; C8 
- D 1 - I - 0x00B168 02:B158: 9E        .byte $9E, $9E, $9E, $9E   ; 
- D 1 - I - 0x00B16C 02:B15C: 00        .byte $00, $55, $00, $00   ; 
- D 1 - I - 0x00B170 02:B160: 05        .byte $05, $56, $05, $AA   ; 
- D 1 - I - 0x00B174 02:B164: AA        .byte $AA, $AA, $AA, $AA   ; 
; C9 
- D 1 - I - 0x00B178 02:B168: 9E        .byte $9E, $E9, $00, $00   ; 
- D 1 - I - 0x00B17C 02:B16C: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B180 02:B170: 00        .byte $00, $00, $0B, $0C   ; 
- D 1 - I - 0x00B184 02:B174: 0F        .byte $0F, $0F, $35, $3B   ; 
; CA 
- D 1 - I - 0x00B188 02:B178: 9E        .byte $9E, $E9, $00, $00   ; 
- D 1 - I - 0x00B18C 02:B17C: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B190 02:B180: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B194 02:B184: 00        .byte $00, $00, $00, $00   ; 
; CB 
- D 1 - I - 0x00B198 02:B188: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B19C 02:B18C: 9F        .byte $9F, $00, $00, $00   ; 
- D 1 - I - 0x00B1A0 02:B190: 1F        .byte $1F, $1C, $1D, $1E   ; 
- D 1 - I - 0x00B1A4 02:B194: 00        .byte $00, $00, $00, $00   ; 
; CC 
- D 1 - I - 0x00B1A8 02:B198: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B1AC 02:B19C: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B1B0 02:B1A0: 00        .byte $00, $00, $9F, $00   ; 
- D 1 - I - 0x00B1B4 02:B1A4: 00        .byte $00, $00, $1F, $1C   ; 
; CD 
- D 1 - I - 0x00B1B8 02:B1A8: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B1BC 02:B1AC: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B1C0 02:B1B0: 19        .byte $19, $00, $00, $1B   ; 
- D 1 - I - 0x00B1C4 02:B1B4: 1C        .byte $1C, $1D, $1E, $7D   ; 
; CE 
- D 1 - I - 0x00B1C8 02:B1B8: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B1CC 02:B1BC: 00        .byte $00, $00, $00, $19   ; 
- D 1 - I - 0x00B1D0 02:B1C0: 9F        .byte $9F, $00, $1A, $00   ; 
- D 1 - I - 0x00B1D4 02:B1C4: 1F        .byte $1F, $7E, $1E, $1C   ; 
; CF 
- D 1 - I - 0x00B1D8 02:B1C8: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B1DC 02:B1CC: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B1E0 02:B1D0: 00        .byte $00, $1A, $00, $7F   ; 
- D 1 - I - 0x00B1E4 02:B1D4: 1D        .byte $1D, $7C, $1F, $1E   ; 
; D0 
- D 1 - I - 0x00B1E8 02:B1D8: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B1EC 02:B1DC: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B1F0 02:B1E0: 9F        .byte $9F, $00, $00, $1A   ; 
- D 1 - I - 0x00B1F4 02:B1E4: 1F        .byte $1F, $1C, $7E, $1E   ; 
; D1 
- D 1 - I - 0x00B1F8 02:B1E8: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B1FC 02:B1EC: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B200 02:B1F0: 1B        .byte $1B, $00, $00, $00   ; 
- D 1 - I - 0x00B204 02:B1F4: 7D        .byte $7D, $00, $00, $1B   ; 
; D2 
- D 1 - I - 0x00B208 02:B1F8: 00        .byte $00, $00, $00, $1A   ; 
- D 1 - I - 0x00B20C 02:B1FC: 1F        .byte $1F, $1C, $7E, $1E   ; 
- D 1 - I - 0x00B210 02:B200: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B214 02:B204: 00        .byte $00, $00, $00, $00   ; 
; D3 
- D 1 - I - 0x00B218 02:B208: 1B        .byte $1B, $00, $00, $00   ; 
- D 1 - I - 0x00B21C 02:B20C: 7D        .byte $7D, $00, $00, $1B   ; 
- D 1 - I - 0x00B220 02:B210: 1F        .byte $1F, $1C, $1D, $1E   ; 
- D 1 - I - 0x00B224 02:B214: 00        .byte $00, $00, $00, $00   ; 
; D4 
- D 1 - I - 0x00B228 02:B218: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B22C 02:B21C: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B230 02:B220: 16        .byte $16, $17, $17, $17   ; 
- D 1 - I - 0x00B234 02:B224: 99        .byte $99, $3F, $3F, $3F   ; 
; D5 
- D 1 - I - 0x00B238 02:B228: 1F        .byte $1F, $1C, $1D, $1E   ; 
- D 1 - I - 0x00B23C 02:B22C: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B240 02:B230: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B244 02:B234: 00        .byte $00, $00, $00, $00   ; 
; D6 
- D 1 - I - 0x00B248 02:B238: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B24C 02:B23C: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B250 02:B240: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B254 02:B244: 00        .byte $00, $0B, $09, $0A   ; 
; D7 
- D 1 - I - 0x00B258 02:B248: 00        .byte $00, $00, $91, $92   ; 
- D 1 - I - 0x00B25C 02:B24C: 00        .byte $00, $00, $91, $92   ; 
- D 1 - I - 0x00B260 02:B250: 00        .byte $00, $00, $91, $92   ; 
- D 1 - I - 0x00B264 02:B254: 00        .byte $00, $00, $91, $92   ; 
; D8 
- D 1 - I - 0x00B268 02:B258: 0A        .byte $0A, $09, $91, $92   ; 
- D 1 - I - 0x00B26C 02:B25C: 33        .byte $33, $34, $91, $92   ; 
- D 1 - I - 0x00B270 02:B260: 14        .byte $14, $39, $91, $92   ; 
- D 1 - I - 0x00B274 02:B264: 00        .byte $00, $81, $91, $92   ; 
; D9 
- D 1 - I - 0x00B278 02:B268: BD        .byte $BD, $D1, $D5, $D6   ; 
- D 1 - I - 0x00B27C 02:B26C: D1        .byte $D1, $D4, $BD, $BD   ; 
- D 1 - I - 0x00B280 02:B270: D4        .byte $D4, $BD, $BD, $BD   ; 
- D 1 - I - 0x00B284 02:B274: BD        .byte $BD, $BD, $BD, $BD   ; 
; DA 
- D 1 - I - 0x00B288 02:B278: D7        .byte $D7, $BD, $BD, $BD   ; 
- D 1 - I - 0x00B28C 02:B27C: D5        .byte $D5, $D6, $D7, $BD   ; 
- D 1 - I - 0x00B290 02:B280: BD        .byte $BD, $BD, $D5, $D6   ; 
- D 1 - I - 0x00B294 02:B284: BD        .byte $BD, $BD, $BD, $BD   ; 
; DB 
- D 1 - I - 0x00B298 02:B288: A9        .byte $A9, $AA, $AA, $AA   ; 
- D 1 - I - 0x00B29C 02:B28C: A9        .byte $A9, $AA, $AA, $AA   ; 
- D 1 - I - 0x00B2A0 02:B290: F1        .byte $F1, $AA, $AA, $AA   ; 
- D 1 - I - 0x00B2A4 02:B294: A8        .byte $A8, $A1, $A1, $A1   ; 
; DC 
- D 1 - I - 0x00B2A8 02:B298: 00        .byte $00, $00, $91, $BD   ; 
- D 1 - I - 0x00B2AC 02:B29C: 00        .byte $00, $00, $91, $BD   ; 
- D 1 - I - 0x00B2B0 02:B2A0: 00        .byte $00, $00, $91, $BD   ; 
- D 1 - I - 0x00B2B4 02:B2A4: 00        .byte $00, $00, $91, $BD   ; 
; DD 
- D 1 - I - 0x00B2B8 02:B2A8: BD        .byte $BD, $BD, $BD, $BD   ; 
- D 1 - I - 0x00B2BC 02:B2AC: BD        .byte $BD, $BD, $BD, $BD   ; 
- D 1 - I - 0x00B2C0 02:B2B0: BD        .byte $BD, $BD, $BD, $BD   ; 
- D 1 - I - 0x00B2C4 02:B2B4: BD        .byte $BD, $BD, $BD, $BD   ; 
; DE 
- D 1 - I - 0x00B2C8 02:B2B8: A9        .byte $A9, $AA, $AA, $AA   ; 
- D 1 - I - 0x00B2CC 02:B2BC: A9        .byte $A9, $AA, $AB, $AA   ; 
- D 1 - I - 0x00B2D0 02:B2C0: A9        .byte $A9, $AA, $AA, $AA   ; 
- D 1 - I - 0x00B2D4 02:B2C4: A9        .byte $A9, $AA, $AB, $AA   ; 
; DF 
- D 1 - I - 0x00B2D8 02:B2C8: C3        .byte $C3, $AA, $AA, $AA   ; 
- D 1 - I - 0x00B2DC 02:B2CC: A9        .byte $A9, $AA, $AB, $AA   ; 
- D 1 - I - 0x00B2E0 02:B2D0: A9        .byte $A9, $AA, $AA, $AA   ; 
- D 1 - I - 0x00B2E4 02:B2D4: A9        .byte $A9, $AA, $AB, $AA   ; 
; E0 
- D 1 - I - 0x00B2E8 02:B2D8: 95        .byte $95, $BD, $D2, $D1   ; 
- D 1 - I - 0x00B2EC 02:B2DC: 96        .byte $96, $97, $D1, $BD   ; 
- D 1 - I - 0x00B2F0 02:B2E0: 96        .byte $96, $98, $97, $BD   ; 
- D 1 - I - 0x00B2F4 02:B2E4: 96        .byte $96, $C4, $98, $97   ; 
; E1 
- D 1 - I - 0x00B2F8 02:B2E8: 9A        .byte $9A, $00, $C4, $98   ; 
- D 1 - I - 0x00B2FC 02:B2EC: C9        .byte $C9, $00, $00, $98   ; 
- D 1 - I - 0x00B300 02:B2F0: C9        .byte $C9, $00, $00, $C4   ; 
- D 1 - I - 0x00B304 02:B2F4: C9        .byte $C9, $00, $00, $00   ; 
; E2 
- D 1 - I - 0x00B308 02:B2F8: C9        .byte $C9, $00, $00, $00   ; 
- D 1 - I - 0x00B30C 02:B2FC: C9        .byte $C9, $00, $00, $00   ; 
- D 1 - I - 0x00B310 02:B300: C9        .byte $C9, $00, $00, $00   ; 
- D 1 - I - 0x00B314 02:B304: C7        .byte $C7, $C8, $00, $00   ; 
; E3 
- D 1 - I - 0x00B318 02:B308: BD        .byte $BD, $CA, $C1, $C5   ; 
- D 1 - I - 0x00B31C 02:B30C: BD        .byte $BD, $BD, $CA, $96   ; 
- D 1 - I - 0x00B320 02:B310: C0        .byte $C0, $C0, $A7, $C6   ; 
- D 1 - I - 0x00B324 02:B314: B9        .byte $B9, $E7, $9E, $E9   ; 
; E4 
- D 1 - I - 0x00B328 02:B318: C2        .byte $C2, $D2, $BD, $D1   ; 
- D 1 - I - 0x00B32C 02:B31C: C2        .byte $C2, $D1, $D3, $BD   ; 
- D 1 - I - 0x00B330 02:B320: C2        .byte $C2, $D4, $BD, $BD   ; 
- D 1 - I - 0x00B334 02:B324: CE        .byte $CE, $D0, $BD, $BD   ; 
; E5 
- D 1 - I - 0x00B338 02:B328: 94        .byte $94, $CF, $D0, $BD   ; 
- D 1 - I - 0x00B33C 02:B32C: 00        .byte $00, $93, $CF, $D0   ; 
- D 1 - I - 0x00B340 02:B330: 00        .byte $00, $94, $BD, $CF   ; 
- D 1 - I - 0x00B344 02:B334: 00        .byte $00, $00, $93, $BD   ; 
; E6 
- - - - - - 0x00B348 02:B338: 00        .byte $00, $00, $94, $BD   ; 
- - - - - - 0x00B34C 02:B33C: 00        .byte $00, $00, $00, $93   ; 
- - - - - - 0x00B350 02:B340: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x00B354 02:B344: 00        .byte $00, $00, $00, $00   ; 
; E7 
- D 1 - I - 0x00B358 02:B348: 00        .byte $00, $00, $91, $92   ; 
- D 1 - I - 0x00B35C 02:B34C: 00        .byte $00, $00, $CB, $CC   ; 
- D 1 - I - 0x00B360 02:B350: 00        .byte $00, $00, $91, $CD   ; 
- D 1 - I - 0x00B364 02:B354: F7        .byte $F7, $F7, $F7, $F7   ; 
; E8 
- D 1 - I - 0x00B368 02:B358: 09        .byte $09, $32, $32, $00   ; 
- D 1 - I - 0x00B36C 02:B35C: 33        .byte $33, $34, $34, $0F   ; 
- D 1 - I - 0x00B370 02:B360: 14        .byte $14, $83, $3A, $14   ; 
- D 1 - I - 0x00B374 02:B364: 00        .byte $00, $00, $00, $00   ; 
; E9 
- D 1 - I - 0x00B378 02:B368: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B37C 02:B36C: 0D        .byte $0D, $09, $32, $00   ; 
- D 1 - I - 0x00B380 02:B370: 12        .byte $12, $36, $0E, $0D   ; 
- D 1 - I - 0x00B384 02:B374: 81        .byte $81, $83, $3A, $36   ; 
; EA 
- D 1 - I - 0x00B388 02:B378: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B38C 02:B37C: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B390 02:B380: 32        .byte $32, $00, $00, $00   ; 
- D 1 - I - 0x00B394 02:B384: 0E        .byte $0E, $0D, $09, $32   ; 
; EB 
- D 1 - I - 0x00B398 02:B388: C2        .byte $C2, $BD, $BD, $BD   ; 
- D 1 - I - 0x00B39C 02:B38C: C2        .byte $C2, $BD, $BD, $BD   ; 
- D 1 - I - 0x00B3A0 02:B390: C2        .byte $C2, $BD, $BD, $BD   ; 
- D 1 - I - 0x00B3A4 02:B394: C2        .byte $C2, $BD, $BD, $BD   ; 
; EC 
- D 1 - I - 0x00B3A8 02:B398: 09        .byte $09, $09, $0A, $09   ; 
- D 1 - I - 0x00B3AC 02:B39C: 33        .byte $33, $34, $33, $34   ; 
- D 1 - I - 0x00B3B0 02:B3A0: 11        .byte $11, $37, $11, $37   ; 
- D 1 - I - 0x00B3B4 02:B3A4: 80        .byte $80, $83, $80, $82   ; 
; ED 
- D 1 - I - 0x00B3B8 02:B3A8: 0A        .byte $0A, $09, $0A, $09   ; 
- D 1 - I - 0x00B3BC 02:B3AC: 34        .byte $34, $33, $3B, $12   ; 
- D 1 - I - 0x00B3C0 02:B3B0: 14        .byte $14, $82, $00, $00   ; 
- D 1 - I - 0x00B3C4 02:B3B4: 00        .byte $00, $00, $01, $5E   ; 
; EE 
- D 1 - I - 0x00B3C8 02:B3B8: 3A        .byte $3A, $14, $12, $0E   ; 
- D 1 - I - 0x00B3CC 02:B3BC: 00        .byte $00, $00, $81, $83   ; 
- D 1 - I - 0x00B3D0 02:B3C0: 17        .byte $17, $17, $17, $3E   ; 
- D 1 - I - 0x00B3D4 02:B3C4: 3F        .byte $3F, $3F, $3F, $3F   ; 
; EF 
- D 1 - I - 0x00B3D8 02:B3C8: 0F        .byte $0F, $0D, $0A, $09   ; 
- D 1 - I - 0x00B3DC 02:B3CC: 14        .byte $14, $12, $36, $36   ; 
- D 1 - I - 0x00B3E0 02:B3D0: 00        .byte $00, $81, $83, $13   ; 
- D 1 - I - 0x00B3E4 02:B3D4: 00        .byte $00, $00, $00, $00   ; 
; F0 
- D 1 - I - 0x00B3E8 02:B3D8: E0        .byte $E0, $88, $86, $87   ; 
- D 1 - I - 0x00B3EC 02:B3DC: BE        .byte $BE, $E0, $86, $87   ; 
- D 1 - I - 0x00B3F0 02:B3E0: C0        .byte $C0, $C0, $C0, $C0   ; 
- D 1 - I - 0x00B3F4 02:B3E4: 9D        .byte $9D, $9E, $9E, $E6   ; 
; F1 
- D 1 - I - 0x00B3F8 02:B3E8: E0        .byte $E0, $88, $79, $7A   ; 
- D 1 - I - 0x00B3FC 02:B3EC: BE        .byte $BE, $E0, $86, $87   ; 
- D 1 - I - 0x00B400 02:B3F0: C0        .byte $C0, $C0, $C0, $C0   ; 
- D 1 - I - 0x00B404 02:B3F4: 9D        .byte $9D, $9E, $9E, $E6   ; 
; F2 
- D 1 - I - 0x00B408 02:B3F8: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B40C 02:B3FC: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00B410 02:B400: 89        .byte $89, $8A, $8B, $8C   ; 
- D 1 - I - 0x00B414 02:B404: 8D        .byte $8D, $8E, $8F, $90   ; 
; F3 
- D 1 - I - 0x00B418 02:B408: 89        .byte $89, $8A, $8B, $8C   ; 
- D 1 - I - 0x00B41C 02:B40C: 8D        .byte $8D, $8E, $8F, $90   ; 
- D 1 - I - 0x00B420 02:B410: 77        .byte $77, $78, $79, $7A   ; 
- D 1 - I - 0x00B424 02:B414: 7B        .byte $7B, $85, $86, $87   ; 



_off007_0x00B428_00_area_1:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 1 - I - 0x00B428 02:B418: 00        .byte $00, $00, $00, $00, $00, $00, $00, $40, $40, $50, $00, $00, $10, $00, $00, $00   ; 00 
- D 1 - I - 0x00B438 02:B428: 00        .byte $00, $40, $00, $00, $00, $00, $00, $00, $00, $00, $00, $54, $00, $00, $00, $00   ; 10 
- D 1 - I - 0x00B448 02:B438: 00        .byte $00, $00, $40, $00, $04, $55, $55, $11, $40, $11, $00, $05, $00, $00, $00, $00   ; 20 
- D 1 - I - 0x00B458 02:B448: 40        .byte $40, $00, $04, $04, $00, $00, $00, $00, $00, $00, $00, $11, $00, $40, $00, $AA   ; 30 
- D 1 - I - 0x00B468 02:B458: AA        .byte $AA, $A5, $55, $55, $AA, $66, $55, $55, $AA, $55, $A5, $65, $AA, $AA, $AA, $AA   ; 40 
- D 1 - I - 0x00B478 02:B468: 55        .byte $55, $AA, $AA, $AA, $9A, $AA, $AA, $A8, $A9, $AA, $EA, $AA, $AA, $AA, $AA, $AA   ; 50 
- D 1 - I - 0x00B488 02:B478: AA        .byte $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $03, $0C, $00, $00, $0C, $FF, $FF, $FF   ; 60 
- D 1 - I - 0x00B498 02:B488: FF        .byte $FF, $F0, $3F, $CF, $FF, $0C, $33, $FF, $FF, $03, $00, $0C, $0F, $03, $00, $00   ; 70 
- D 1 - I - 0x00B4A8 02:B498: 0C        .byte $0C, $AA, $AA, $0A, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $F8, $AA, $0F, $03   ; 80 
- D 1 - I - 0x00B4B8 02:B4A8: 00        .byte $00, $00, $F0, $F0, $F0, $F0, $00, $40, $00, $C0, $00, $00, $00, $0F, $0F, $03   ; 90 
- D 1 - I - 0x00B4C8 02:B4B8: 0C        .byte $0C, $0F, $0C, $0F, $0C, $FF, $FF, $FF, $FF, $00, $00, $00, $00, $00, $0A, $00   ; A0 
- D 1 - I - 0x00B4D8 02:B4C8: 00        .byte $00, $00, $00, $00, $00, $00, $00, $FF, $FF, $00, $F0, $F0, $00, $F0, $F0, $00   ; B0 
- D 1 - I - 0x00B4E8 02:B4D8: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $A8, $00, $AA, $80, $A0, $A8, $AA   ; C0 
- D 1 - I - 0x00B4F8 02:B4E8: A0        .byte $A0, $A0, $0A, $AA, $F0, $0A, $A0, $00, $22, $00, $00, $00, $00, $00, $00, $00   ; D0 
- D 1 - I - 0x00B508 02:B4F8: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $AA, $AA, $A0, $00, $AA, $2A, $FA, $AA   ; E0 
- D 1 - I - 0x00B518 02:B508: 00        .byte $00, $00, $00, $00                                                               ; F0 


; bzk garbage
- - - - - - 0x00B51C 02:B50C: 00        .byte $00   ; 
- - - - - - 0x00B51D 02:B50D: 00        .byte $00   ; 
- - - - - - 0x00B51E 02:B50E: 00        .byte $00   ; 
- - - - - - 0x00B51F 02:B50F: 00        .byte $00   ; 
- - - - - - 0x00B520 02:B510: 00        .byte $00   ; 
- - - - - - 0x00B521 02:B511: 00        .byte $00   ; 
- - - - - - 0x00B522 02:B512: 00        .byte $00   ; 
- - - - - - 0x00B523 02:B513: 00        .byte $00   ; 


; bzk garbage
- - - - - - 0x00B524 02:B514: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B530 02:B520: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B540 02:B530: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B550 02:B540: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B560 02:B550: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B570 02:B560: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B580 02:B570: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B590 02:B580: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B5A0 02:B590: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B5B0 02:B5A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B5C0 02:B5B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B5D0 02:B5C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B5E0 02:B5D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B5F0 02:B5E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B600 02:B5F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B610 02:B600: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B620 02:B610: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B630 02:B620: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B640 02:B630: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B650 02:B640: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B660 02:B650: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B670 02:B660: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B680 02:B670: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B690 02:B680: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B6A0 02:B690: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B6B0 02:B6A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B6C0 02:B6B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B6D0 02:B6C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B6E0 02:B6D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B6F0 02:B6E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B700 02:B6F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B710 02:B700: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B720 02:B710: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B730 02:B720: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B740 02:B730: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B750 02:B740: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B760 02:B750: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B770 02:B760: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B780 02:B770: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B790 02:B780: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B7A0 02:B790: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B7B0 02:B7A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B7C0 02:B7B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B7D0 02:B7C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B7E0 02:B7D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B7F0 02:B7E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B800 02:B7F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B810 02:B800: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B820 02:B810: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B830 02:B820: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B840 02:B830: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B850 02:B840: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B860 02:B850: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B870 02:B860: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B880 02:B870: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B890 02:B880: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B8A0 02:B890: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B8B0 02:B8A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B8C0 02:B8B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B8D0 02:B8C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B8E0 02:B8D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B8F0 02:B8E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B900 02:B8F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B910 02:B900: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B920 02:B910: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B930 02:B920: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B940 02:B930: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B950 02:B940: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B960 02:B950: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B970 02:B960: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B980 02:B970: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B990 02:B980: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B9A0 02:B990: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B9B0 02:B9A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B9C0 02:B9B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B9D0 02:B9C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B9E0 02:B9D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00B9F0 02:B9E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BA00 02:B9F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BA10 02:BA00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BA20 02:BA10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BA30 02:BA20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BA40 02:BA30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BA50 02:BA40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BA60 02:BA50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BA70 02:BA60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BA80 02:BA70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BA90 02:BA80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BAA0 02:BA90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BAB0 02:BAA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BAC0 02:BAB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BAD0 02:BAC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BAE0 02:BAD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BAF0 02:BAE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BB00 02:BAF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BB10 02:BB00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BB20 02:BB10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BB30 02:BB20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BB40 02:BB30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BB50 02:BB40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BB60 02:BB50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BB70 02:BB60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BB80 02:BB70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BB90 02:BB80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BBA0 02:BB90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BBB0 02:BBA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BBC0 02:BBB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BBD0 02:BBC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BBE0 02:BBD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BBF0 02:BBE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BC00 02:BBF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BC10 02:BC00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BC20 02:BC10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BC30 02:BC20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BC40 02:BC30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BC50 02:BC40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BC60 02:BC50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BC70 02:BC60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BC80 02:BC70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BC90 02:BC80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BCA0 02:BC90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BCB0 02:BCA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BCC0 02:BCB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BCD0 02:BCC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BCE0 02:BCD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BCF0 02:BCE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BD00 02:BCF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BD10 02:BD00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BD20 02:BD10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BD30 02:BD20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BD40 02:BD30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BD50 02:BD40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BD60 02:BD50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BD70 02:BD60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BD80 02:BD70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BD90 02:BD80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BDA0 02:BD90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BDB0 02:BDA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BDC0 02:BDB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BDD0 02:BDC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BDE0 02:BDD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BDF0 02:BDE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BE00 02:BDF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BE10 02:BE00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BE20 02:BE10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BE30 02:BE20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BE40 02:BE30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BE50 02:BE40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BE60 02:BE50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BE70 02:BE60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BE80 02:BE70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BE90 02:BE80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BEA0 02:BE90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BEB0 02:BEA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BEC0 02:BEB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BED0 02:BEC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BEE0 02:BED0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BEF0 02:BEE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BF00 02:BEF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BF10 02:BF00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BF20 02:BF10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BF30 02:BF20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BF40 02:BF30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BF50 02:BF40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BF60 02:BF50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BF70 02:BF60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BF80 02:BF70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BF90 02:BF80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BFA0 02:BF90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BFB0 02:BFA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BFC0 02:BFB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BFD0 02:BFC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BFE0 02:BFD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BFF0 02:BFE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00C000 02:BFF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



.out .sprintf("Free bytes in bank 34: 0x%X [%d]", ($BFFF - *), ($BFFF - *))



.segment "BANK_34b"
- D 1 - - - 0x00C00F 02:BFFF: 35        .byte con_prg_bank + $35   ; 



