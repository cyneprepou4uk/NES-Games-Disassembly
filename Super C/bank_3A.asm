.segment "BANK_3A"
.include "bank_ram.inc"
.include "bank_val.inc"
.org $8000 ; for listing file
; 0x014010-0x01800F



.export _off001_0x014011_2E_tankman
.export _off001_0x0141A9_30_bullet_tank
.export _off001_0x0141FE_5B_cannon_tank
.export _off001_0x014332_5C_rifleman_standing_2
.export _off001_0x0143D2_63_mob_normal_2
.export _off001_0x014737_69_boss_2_green_tankman
.export _off001_0x014A09_6A_boss_2_red_tankman
.export _off001_0x014B4D_36_tank_electricity
.export _off001_0x014B91_25_moving_gun
.export _off001_0x014C67_2C_falling_platform
.export _off001_0x014DBA_2D_spawner_falling_platforms
.export _off001_0x014DF0_31_redblue_bubble
.export _off001_0x014E4B_39_elevator
.export _off001_0x01510E_40_mob_winged
.export _off001_0x01529D_41_spawner_winged_mobs
.export _off001_0x0152DB_43_boss_4_gun
.export _off001_0x01541F_44_boss_4_bullet
.export _off001_0x0154F3_6B_blue_bubble
.export _off001_0x0155C1_6C_spawner_blue_bubbles
.export _off001_0x015602_42_boss_4_hanger
.export _off004_0x01585B_06_area_7
.export _off005_0x015879_06_area_7
.export _off006_0x015C57_06_area_7
.export _off007_0x016767_06_area_7
.export _off004_0x016827_07_area_8
.export _off005_0x016869_07_area_8
.export _off006_0x016E57_07_area_8
.export _off007_0x017CB7_07_area_8



; bzk this byte must be placed at 8000
- D 0 - - - 0x014010 05:8000: 3A        .byte con_prg_bank + $3A   ; 



_off001_0x014011_2E_tankman:
- D 0 - I - 0x014011 05:8001: 13 80     .word ofs_038_2E_8013_01_initialize_object ; 
- D 0 - I - 0x014013 05:8003: 4B 80     .word ofs_038_2E_804B_02 ; 
- D 0 - I - 0x014015 05:8005: 60 80     .word ofs_038_2E_8060_03 ; 
- D 0 - I - 0x014017 05:8007: C7 80     .word ofs_038_2E_80C7_04 ; 
- D 0 - I - 0x014019 05:8009: 54 A3     .word ofs_038_2E_0x006364_05_delete_object_06 ; 
- D 0 - I - 0x01401B 05:800B: 6B A3     .word ofs_038_2E_0x00637B_06_delete_object_07 ; 
- D 0 - I - 0x01401D 05:800D: 4F 81     .word ofs_038_2E_814F_07 ; 
- D 0 - I - 0x01401F 05:800F: FD A2     .word ofs_038_2E_0x00630D_08 ; 
- D 0 - I - 0x014021 05:8011: 3D A3     .word ofs_038_2E_0x00634D_09_delete_object_04 ; 



ofs_038_2E_8013_01_initialize_object:
C - - J - - 0x014023 05:8013: A9 10     LDA #$10
C - - - - - 0x014025 05:8015: 20 95 AB  JSR sub_0x006BA5_set_dynamic_hp_to_enemy
C - - - - - 0x014028 05:8018: A9 85     LDA #$85
C - - - - - 0x01402A 05:801A: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x01402D 05:801D: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x014030 05:8020: 18        CLC
C - - - - - 0x014031 05:8021: 69 08     ADC #$08
C - - - - - 0x014033 05:8023: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x014036 05:8026: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x014039 05:8029: 18        CLC
C - - - - - 0x01403A 05:802A: 69 04     ADC #$04
C - - - - - 0x01403C 05:802C: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x01403F 05:802F: A9 04     LDA #$04
C - - - - - 0x014041 05:8031: 9D 02 07  STA ram_0702_obj,X
C - - - - - 0x014044 05:8034: A9 1B     LDA #$1B
C - - - - - 0x014046 05:8036: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x014049 05:8039: A9 06     LDA #$06
C - - - - - 0x01404B 05:803B: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x01404E 05:803E: A9 03     LDA #$03
C - - - - - 0x014050 05:8040: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x014053 05:8043: E6 9F     INC ram_009F
C - - - - - 0x014055 05:8045: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x014058 05:8048: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_2E_804B_02:
C - - J - - 0x01405B 05:804B: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x01405E 05:804E: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x014061 05:8051: C9 20     CMP #$20
C - - - - - 0x014063 05:8053: 90 0A     BCC bra_805F_RTS
C - - - - - 0x014065 05:8055: A9 05     LDA #$05
C - - - - - 0x014067 05:8057: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x01406A 05:805A: A9 10     LDA #$10
C - - - - - 0x01406C 05:805C: 4C E0 A2  JMP loc_0x0062F0
bra_805F_RTS:
C - - - - - 0x01406F 05:805F: 60        RTS



ofs_038_2E_8060_03:
C - - J - - 0x014070 05:8060: BC 56 07  LDY ram_0756_obj,X
C - - - - - 0x014073 05:8063: B9 B7 80  LDA tbl_80B7_animation,Y
C - - - - - 0x014076 05:8066: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x014079 05:8069: B9 BF 80  LDA tbl_80BF_spr_attr,Y
C - - - - - 0x01407C 05:806C: 20 19 87  JSR sub_8719
C - - - - - 0x01407F 05:806F: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x014082 05:8072: DE F4 06  DEC ram_06F4_obj,X
C - - - - - 0x014085 05:8075: D0 1C     BNE bra_8093
C - - - - - 0x014087 05:8077: BD 56 07  LDA ram_0756_obj,X
C - - - - - 0x01408A 05:807A: C9 06     CMP #$06
C - - - - - 0x01408C 05:807C: F0 15     BEQ bra_8093
C - - - - - 0x01408E 05:807E: BD 64 07  LDA ram_0764_obj,X
C - - - - - 0x014091 05:8081: 85 0A     STA ram_000A
C - - - - - 0x014093 05:8083: 20 AE AA  JSR sub_0x006ABE
C - - - - - 0x014096 05:8086: A0 04     LDY #$04
C - - - - - 0x014098 05:8088: 20 27 F3  JSR sub_0x01F337
C - - - - - 0x01409B 05:808B: 20 66 81  JSR sub_8166
C - - - - - 0x01409E 05:808E: A9 4D     LDA #$4D
C - - - - - 0x0140A0 05:8090: 9D F4 06  STA ram_06F4_obj,X
bra_8093:
C - - - - - 0x0140A3 05:8093: DE 02 07  DEC ram_0702_obj,X
C - - - - - 0x0140A6 05:8096: D0 0F     BNE bra_80A7
C - - - - - 0x0140A8 05:8098: A9 08     LDA #$08
C - - - - - 0x0140AA 05:809A: 9D 02 07  STA ram_0702_obj,X
C - - - - - 0x0140AD 05:809D: 20 0B AB  JSR sub_0x006B1B_set_target_on_closest_player_X_pos
C - - - - - 0x0140B0 05:80A0: 98        TYA
C - - - - - 0x0140B1 05:80A1: 9D 64 07  STA ram_0764_obj,X
C - - - - - 0x0140B4 05:80A4: 20 95 F4  JSR sub_0x01F4A5
bra_80A7:
C - - - - - 0x0140B7 05:80A7: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x0140BA 05:80AA: D0 0A     BNE bra_80B6_RTS
C - - - - - 0x0140BC 05:80AC: A9 00     LDA #$00
C - - - - - 0x0140BE 05:80AE: 9D 10 07  STA ram_0710_obj,X
C - - - - - 0x0140C1 05:80B1: A9 01     LDA #$01
C - - - - - 0x0140C3 05:80B3: 4C E0 A2  JMP loc_0x0062F0
bra_80B6_RTS:
C - - - - - 0x0140C6 05:80B6: 60        RTS



tbl_80B7_animation:
- D 0 - - - 0x0140C7 05:80B7: 53        .byte $53   ; 00 
- D 0 - - - 0x0140C8 05:80B8: 52        .byte $52   ; 01 
- D 0 - - - 0x0140C9 05:80B9: 51        .byte $51   ; 02 
- D 0 - - - 0x0140CA 05:80BA: 52        .byte $52   ; 03 
- D 0 - - - 0x0140CB 05:80BB: 53        .byte $53   ; 04 
- - - - - - 0x0140CC 05:80BC: 53        .byte $53   ; 05 
- - - - - - 0x0140CD 05:80BD: 53        .byte $53   ; 06 
- - - - - - 0x0140CE 05:80BE: 53        .byte $53   ; 07 



tbl_80BF_spr_attr:
- D 0 - - - 0x0140CF 05:80BF: 40        .byte $40   ; 00 
- D 0 - - - 0x0140D0 05:80C0: 40        .byte $40   ; 01 
- D 0 - - - 0x0140D1 05:80C1: 00        .byte $00   ; 02 
- D 0 - - - 0x0140D2 05:80C2: 00        .byte $00   ; 03 
- D 0 - - - 0x0140D3 05:80C3: 00        .byte $00   ; 04 
- - - - - - 0x0140D4 05:80C4: 00        .byte $00   ; 05 
- - - - - - 0x0140D5 05:80C5: 00        .byte $00   ; 06 
- - - - - - 0x0140D6 05:80C6: 40        .byte $40   ; 07 



ofs_038_2E_80C7_04:
C - - J - - 0x0140D7 05:80C7: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x0140DA 05:80CA: C9 C0     CMP #$C0
C - - - - - 0x0140DC 05:80CC: 90 03     BCC bra_80D1
- - - - - - 0x0140DE 05:80CE: 4C 75 A2  JMP loc_0x006285_delete_object_02
bra_80D1:
C - - - - - 0x0140E1 05:80D1: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x0140E4 05:80D4: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x0140E7 05:80D7: D0 64     BNE bra_813D_RTS
C - - - - - 0x0140E9 05:80D9: BD 10 07  LDA ram_0710_obj,X
C - - - - - 0x0140EC 05:80DC: 0A        ASL
C - - - - - 0x0140ED 05:80DD: A8        TAY
C - - - - - 0x0140EE 05:80DE: B9 4B 81  LDA tbl_814B,Y
C - - - - - 0x0140F1 05:80E1: 85 08     STA ram_0008
C - - - - - 0x0140F3 05:80E3: B9 4C 81  LDA tbl_814B + $01,Y
C - - - - - 0x0140F6 05:80E6: 85 0C     STA ram_000C
C - - - - - 0x0140F8 05:80E8: A9 11     LDA #$11
C - - - - - 0x0140FA 05:80EA: 85 0D     STA ram_000D
C - - - - - 0x0140FC 05:80EC: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x0140FF 05:80EF: 69 08     ADC #$08
C - - - - - 0x014101 05:80F1: A8        TAY
C - - - - - 0x014102 05:80F2: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x014105 05:80F5: E9 08     SBC #$08
C - - - - - 0x014107 05:80F7: 20 B2 A8  JSR sub_0x0068C2
C - - - - - 0x01410A 05:80FA: A9 01     LDA #$01
C - - - - - 0x01410C 05:80FC: B0 3C     BCS bra_813A
C - - - - - 0x01410E 05:80FE: FE 10 07  INC ram_0710_obj,X
C - - - - - 0x014111 05:8101: BD 10 07  LDA ram_0710_obj,X
C - - - - - 0x014114 05:8104: C9 02     CMP #$02
C - - - - - 0x014116 05:8106: B0 36     BCS bra_813E
C - - - - - 0x014118 05:8108: A9 02     LDA #$02
C - - - - - 0x01411A 05:810A: 85 08     STA ram_0008
bra_810C_loop:
C - - - - - 0x01411C 05:810C: A0 30     LDY #con_obj_id_30
C - - - - - 0x01411E 05:810E: 20 C8 AB  JSR sub_0x006BD8
C - - - - - 0x014121 05:8111: 90 2A     BCC bra_813D_RTS
C - - - - - 0x014123 05:8113: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x014126 05:8116: 18        CLC
C - - - - - 0x014127 05:8117: 69 1C     ADC #$1C
C - - - - - 0x014129 05:8119: 85 09     STA ram_0009
C - - - - - 0x01412B 05:811B: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x01412E 05:811E: A6 11     LDX ram_0011
C - - - - - 0x014130 05:8120: A4 08     LDY ram_0008
C - - - - - 0x014132 05:8122: 18        CLC
C - - - - - 0x014133 05:8123: 79 48 81  ADC tbl_8148,Y
C - - - - - 0x014136 05:8126: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x014139 05:8129: A5 09     LDA ram_0009
C - - - - - 0x01413B 05:812B: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x01413E 05:812E: 98        TYA
C - - - - - 0x01413F 05:812F: 9D 1E 07  STA ram_obj_flags,X
C - - - - - 0x014142 05:8132: C6 08     DEC ram_0008
C - - - - - 0x014144 05:8134: 10 D6     BPL bra_810C_loop
C - - - - - 0x014146 05:8136: A6 10     LDX ram_0010
C - - - - - 0x014148 05:8138: A9 08     LDA #$08
bra_813A:
C - - - - - 0x01414A 05:813A: 9D E6 06  STA ram_06E6_obj,X
bra_813D_RTS:
C - - - - - 0x01414D 05:813D: 60        RTS
bra_813E:
C - - - - - 0x01414E 05:813E: A9 60     LDA #$60
C - - - - - 0x014150 05:8140: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x014153 05:8143: A9 03     LDA #$03
C - - - - - 0x014155 05:8145: 4C 83 A2  JMP loc_0x006293_set_obj_state



tbl_8148:
- D 0 - - - 0x014158 05:8148: F4        .byte $F4   ; 00 
- D 0 - - - 0x014159 05:8149: 0C        .byte $0C   ; 01 
- D 0 - - - 0x01415A 05:814A: 00        .byte $00   ; 02 



tbl_814B:
;                                              ----------- 
;                                              |    ------ 
;                                              |    |
- D 0 - - - 0x01415B 05:814B: 69        .byte $69, $6A   ; 00 
- D 0 - - - 0x01415D 05:814D: 46        .byte $46, $47   ; 01 



ofs_038_2E_814F_07:
C - - J - - 0x01415F 05:814F: C6 9F     DEC ram_009F
C - - - - - 0x014161 05:8151: D0 06     BNE bra_8159
C - - - - - 0x014163 05:8153: A9 40     LDA #$40
C - - - - - 0x014165 05:8155: 85 7D     STA ram_007D_scroll_type
C - - - - - 0x014167 05:8157: 85 71     STA ram_0071_scroll_type
bra_8159:
C - - - - - 0x014169 05:8159: A9 00     LDA #$00
C - - - - - 0x01416B 05:815B: 20 46 A8  JSR sub_0x006856
C - - - - - 0x01416E 05:815E: B0 03     BCS bra_8163
C - - - - - 0x014170 05:8160: 4C 9A A2  JMP loc_0x0062AA
bra_8163:
- - - - - - 0x014173 05:8163: 4C B7 A6  JMP loc_0x0066C7_delete_object_03



sub_8166:
C - - - - - 0x014176 05:8166: D0 20     BNE bra_8188_RTS
C - - - - - 0x014178 05:8168: A9 06     LDA #$06
C - - - - - 0x01417A 05:816A: 9D 80 07  STA ram_0780_obj,X
C - - - - - 0x01417D 05:816D: BC 56 07  LDY ram_0756_obj,X
C - - - - - 0x014180 05:8170: A6 11     LDX ram_0011
C - - - - - 0x014182 05:8172: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x014185 05:8175: 18        CLC
C - - - - - 0x014186 05:8176: 79 89 81  ADC tbl_8189_pos_Y,Y
C - - - - - 0x014189 05:8179: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x01418C 05:817C: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x01418F 05:817F: 18        CLC
C - - - - - 0x014190 05:8180: 79 91 81  ADC tbl_8191_pos_X,Y
C - - - - - 0x014193 05:8183: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x014196 05:8186: A6 10     LDX ram_0010
bra_8188_RTS:
C - - - - - 0x014198 05:8188: 60        RTS



tbl_8189_pos_Y:
- D 0 - - - 0x014199 05:8189: F6        .byte $F6   ; 00 
- D 0 - - - 0x01419A 05:818A: 00        .byte $00   ; 01 
- D 0 - - - 0x01419B 05:818B: 02        .byte $02   ; 02 
- D 0 - - - 0x01419C 05:818C: 00        .byte $00   ; 03 
- D 0 - - - 0x01419D 05:818D: F6        .byte $F6   ; 04 
- - - - - - 0x01419E 05:818E: F6        .byte $F6   ; 05 
- - - - - - 0x01419F 05:818F: F6        .byte $F6   ; 06 
- - - - - - 0x0141A0 05:8190: F6        .byte $F6   ; 07 



tbl_8191_pos_X:
- D 0 - - - 0x0141A1 05:8191: 0E        .byte $0E   ; 00 
- D 0 - - - 0x0141A2 05:8192: 0C        .byte $0C   ; 01 
- D 0 - - - 0x0141A3 05:8193: 00        .byte $00   ; 02 
- D 0 - - - 0x0141A4 05:8194: F4        .byte $F4   ; 03 
- D 0 - - - 0x0141A5 05:8195: F2        .byte $F2   ; 04 
- - - - - - 0x0141A6 05:8196: F2        .byte $F2   ; 05 
- - - - - - 0x0141A7 05:8197: 00        .byte $00   ; 06 
- - - - - - 0x0141A8 05:8198: 0E        .byte $0E   ; 07 



_off001_0x0141A9_30_bullet_tank:
- D 0 - I - 0x0141A9 05:8199: A3 81     .word ofs_038_30_81A3_01_initialize_object ; 
- D 0 - I - 0x0141AB 05:819B: A9 AE     .word ofs_038_30_0x006EB9_02 ; 
- D 0 - I - 0x0141AD 05:819D: DB 81     .word ofs_038_30_81DB_03 ; 
- D 0 - I - 0x0141AF 05:819F: 70 AE     .word ofs_038_30_0x006E80_04 ; 
- D 0 - I - 0x0141B1 05:81A1: 78 AE     .word ofs_038_30_0x006E88_05 ; 



ofs_038_30_81A3_01_initialize_object:
C - - J - - 0x0141B3 05:81A3: A9 02     LDA #$02
C - - - - - 0x0141B5 05:81A5: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x0141B8 05:81A8: 20 95 AE  JSR sub_0x006EA5
C - - - - - 0x0141BB 05:81AB: A9 80     LDA #$80
C - - - - - 0x0141BD 05:81AD: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x0141C0 05:81B0: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x0141C3 05:81B3: 0A        ASL
C - - - - - 0x0141C4 05:81B4: 0A        ASL
C - - - - - 0x0141C5 05:81B5: A8        TAY
C - - - - - 0x0141C6 05:81B6: B9 CF 81  LDA tbl_81CF_speed,Y
C - - - - - 0x0141C9 05:81B9: 9D A0 06  STA ram_spd_Y_lo_obj,X
C - - - - - 0x0141CC 05:81BC: B9 D0 81  LDA tbl_81CF_speed + $01,Y
C - - - - - 0x0141CF 05:81BF: 9D AE 06  STA ram_spd_Y_hi_obj,X
C - - - - - 0x0141D2 05:81C2: B9 D1 81  LDA tbl_81CF_speed + $02,Y
C - - - - - 0x0141D5 05:81C5: 9D BC 06  STA ram_spd_X_lo_obj,X
C - - - - - 0x0141D8 05:81C8: B9 D2 81  LDA tbl_81CF_speed + $03,Y
C - - - - - 0x0141DB 05:81CB: 9D CA 06  STA ram_spd_X_hi_obj,X
C - - - - - 0x0141DE 05:81CE: 60        RTS



tbl_81CF_speed:
; 00 
- D 0 - - - 0x0141DF 05:81CF: E8 01     .word $01E8 ; Y
- D 0 - - - 0x0141E1 05:81D1: 6C FF     .word $FF6C ; X
; 01 
- D 0 - - - 0x0141E3 05:81D3: E8 01     .word $01E8 ; Y
- D 0 - - - 0x0141E5 05:81D5: 94 00     .word $0094 ; X
; 02 
- D 0 - - - 0x0141E7 05:81D7: 00 02     .word $0200 ; Y
- D 0 - - - 0x0141E9 05:81D9: 00 00     .word $0000 ; X



ofs_038_30_81DB_03:
C - - J - - 0x0141EB 05:81DB: A5 5B     LDA ram_frm_cnt_2
C - - - - - 0x0141ED 05:81DD: 29 01     AND #$01
C - - - - - 0x0141EF 05:81DF: 9D 56 05  STA ram_attr_spr_enemy,X
C - - - - - 0x0141F2 05:81E2: 20 D3 A6  JSR sub_0x0066E3
C - - - - - 0x0141F5 05:81E5: DE F4 06  DEC ram_06F4_obj,X
C - - - - - 0x0141F8 05:81E8: D0 03     BNE bra_81ED_RTS
C - - - - - 0x0141FA 05:81EA: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state
bra_81ED_RTS:
C - - - - - 0x0141FD 05:81ED: 60        RTS



_off001_0x0141FE_5B_cannon_tank:
- D 0 - I - 0x0141FE 05:81EE: 00 82     .word ofs_038_5B_8200_01_initialize_object ; 
- D 0 - I - 0x014200 05:81F0: 27 82     .word ofs_038_5B_8227_02 ; 
- D 0 - I - 0x014202 05:81F2: 44 82     .word ofs_038_5B_8244_03 ; 
- D 0 - I - 0x014204 05:81F4: C2 82     .word ofs_038_5B_82C2_04 ; 
- D 0 - I - 0x014206 05:81F6: 54 A3     .word ofs_038_5B_0x006364_05_delete_object_06 ; 
- D 0 - I - 0x014208 05:81F8: 6B A3     .word ofs_038_5B_0x00637B_06_delete_object_07 ; 
- D 0 - I - 0x01420A 05:81FA: DA 82     .word ofs_038_5B_82DA_07 ; 
- D 0 - I - 0x01420C 05:81FC: FD A2     .word ofs_038_5B_0x00630D_08 ; 
- D 0 - I - 0x01420E 05:81FE: 3D A3     .word ofs_038_5B_0x00634D_09_delete_object_04 ; 



ofs_038_5B_8200_01_initialize_object:
C - - J - - 0x014210 05:8200: A9 01     LDA #$01
C - - - - - 0x014212 05:8202: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x014215 05:8205: A9 08     LDA #$08
C - - - - - 0x014217 05:8207: 20 95 AB  JSR sub_0x006BA5_set_dynamic_hp_to_enemy
C - - - - - 0x01421A 05:820A: A9 85     LDA #$85
C - - - - - 0x01421C 05:820C: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x01421F 05:820F: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x014222 05:8212: 69 08     ADC #$08
C - - - - - 0x014224 05:8214: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x014227 05:8217: A9 06     LDA #$06
C - - - - - 0x014229 05:8219: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x01422C 05:821C: A9 02     LDA #$02
C - - - - - 0x01422E 05:821E: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x014231 05:8221: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x014234 05:8224: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_5B_8227_02:
C - - J - - 0x014237 05:8227: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x01423A 05:822A: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x01423D 05:822D: C9 20     CMP #$20
C - - - - - 0x01423F 05:822F: 90 12     BCC bra_8243_RTS
C - - - - - 0x014241 05:8231: A9 05     LDA #$05
C - - - - - 0x014243 05:8233: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x014246 05:8236: A9 02     LDA #$02
C - - - - - 0x014248 05:8238: 9D 72 07  STA ram_0772_obj,X
C - - - - - 0x01424B 05:823B: A9 01     LDA #$01
C - - - - - 0x01424D 05:823D: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x014250 05:8240: 4C E0 A2  JMP loc_0x0062F0
bra_8243_RTS:
C - - - - - 0x014253 05:8243: 60        RTS



ofs_038_5B_8244_03:
C - - J - - 0x014254 05:8244: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x014257 05:8247: C9 C0     CMP #$C0
C - - - - - 0x014259 05:8249: 90 03     BCC bra_824E
C - - - - - 0x01425B 05:824B: 4C 75 A2  JMP loc_0x006285_delete_object_02
bra_824E:
C - - - - - 0x01425E 05:824E: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x014261 05:8251: DE F4 06  DEC ram_06F4_obj,X
C - - - - - 0x014264 05:8254: D0 21     BNE bra_8277
C - - - - - 0x014266 05:8256: BD 64 07  LDA ram_0764_obj,X
C - - - - - 0x014269 05:8259: 85 0A     STA ram_000A
C - - - - - 0x01426B 05:825B: 20 AE AA  JSR sub_0x006ABE
C - - - - - 0x01426E 05:825E: A0 03     LDY #$03
C - - - - - 0x014270 05:8260: 20 E4 F2  JSR sub_0x01F2F4
C - - - - - 0x014273 05:8263: 20 FA 82  JSR sub_82FA
C - - - - - 0x014276 05:8266: A9 10     LDA #$10
C - - - - - 0x014278 05:8268: DE 72 07  DEC ram_0772_obj,X
C - - - - - 0x01427B 05:826B: 10 07     BPL bra_8274
C - - - - - 0x01427D 05:826D: A9 02     LDA #$02
C - - - - - 0x01427F 05:826F: 9D 72 07  STA ram_0772_obj,X
C - - - - - 0x014282 05:8272: A9 57     LDA #$57
bra_8274:
C - - - - - 0x014284 05:8274: 9D F4 06  STA ram_06F4_obj,X
bra_8277:
C - - - - - 0x014287 05:8277: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x01428A 05:827A: D0 38     BNE bra_82B4_RTS
C - - - - - 0x01428C 05:827C: A9 0C     LDA #$0C
C - - - - - 0x01428E 05:827E: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x014291 05:8281: 20 0B AB  JSR sub_0x006B1B_set_target_on_closest_player_X_pos
C - - - - - 0x014294 05:8284: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x014297 05:8287: 38        SEC
C - - - - - 0x014298 05:8288: E9 10     SBC #$10
C - - - - - 0x01429A 05:828A: D9 32 05  CMP ram_pos_Y_hi_plr,Y
C - - - - - 0x01429D 05:828D: 98        TYA
C - - - - - 0x01429E 05:828E: 90 04     BCC bra_8294
C - - - - - 0x0142A0 05:8290: 49 01     EOR #$01
C - - - - - 0x0142A2 05:8292: 85 0A     STA ram_000A
bra_8294:
C - - - - - 0x0142A4 05:8294: 9D 64 07  STA ram_0764_obj,X
C - - - - - 0x0142A7 05:8297: 20 A2 F4  JSR sub_0x01F4B2
C - - - - - 0x0142AA 05:829A: BD 56 07  LDA ram_0756_obj,X
C - - - - - 0x0142AD 05:829D: 85 0B     STA ram_000B
C - - - - - 0x0142AF 05:829F: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x0142B2 05:82A2: C9 0D     CMP #$0D
C - - - - - 0x0142B4 05:82A4: B0 0E     BCS bra_82B4_RTS
C - - - - - 0x0142B6 05:82A6: A8        TAY
C - - - - - 0x0142B7 05:82A7: B9 B5 82  LDA tbl_82B5,Y
C - - - - - 0x0142BA 05:82AA: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x0142BD 05:82AD: C5 0B     CMP ram_000B
C - - - - - 0x0142BF 05:82AF: F0 03     BEQ bra_82B4_RTS
C - - - - - 0x0142C1 05:82B1: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state
bra_82B4_RTS:
C - - - - - 0x0142C4 05:82B4: 60        RTS



tbl_82B5:
- D 0 - - - 0x0142C5 05:82B5: 00        .byte $00   ; 00 
- D 0 - - - 0x0142C6 05:82B6: 00        .byte $00   ; 01 
- D 0 - - - 0x0142C7 05:82B7: 01        .byte $01   ; 02 
- D 0 - - - 0x0142C8 05:82B8: 01        .byte $01   ; 03 
- D 0 - - - 0x0142C9 05:82B9: 01        .byte $01   ; 04 
- D 0 - - - 0x0142CA 05:82BA: 02        .byte $02   ; 05 
- D 0 - - - 0x0142CB 05:82BB: 02        .byte $02   ; 06 
- D 0 - - - 0x0142CC 05:82BC: 02        .byte $02   ; 07 
- D 0 - - - 0x0142CD 05:82BD: 03        .byte $03   ; 08 
- D 0 - - - 0x0142CE 05:82BE: 03        .byte $03   ; 09 
- D 0 - - - 0x0142CF 05:82BF: 03        .byte $03   ; 0A 
- D 0 - - - 0x0142D0 05:82C0: 04        .byte $04   ; 0B 
- D 0 - - - 0x0142D1 05:82C1: 04        .byte $04   ; 0C 



ofs_038_5B_82C2_04:
C - - J - - 0x0142D2 05:82C2: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x0142D5 05:82C5: BC 56 07  LDY ram_0756_obj,X
C - - - - - 0x0142D8 05:82C8: B9 D5 82  LDA tbl_82D5,Y
C - - - - - 0x0142DB 05:82CB: 20 E7 82  JSR sub_82E7
C - - - - - 0x0142DE 05:82CE: B0 E4     BCS bra_82B4_RTS
C - - - - - 0x0142E0 05:82D0: A9 03     LDA #$03
C - - - - - 0x0142E2 05:82D2: 4C 83 A2  JMP loc_0x006293_set_obj_state



tbl_82D5:
- D 0 - - - 0x0142E5 05:82D5: 97        .byte $97   ; 00 
- D 0 - - - 0x0142E6 05:82D6: 96        .byte $96   ; 01 
- D 0 - - - 0x0142E7 05:82D7: D4        .byte $D4   ; 02 
- D 0 - - - 0x0142E8 05:82D8: 93        .byte $93   ; 03 
- D 0 - - - 0x0142E9 05:82D9: 92        .byte $92   ; 04 



ofs_038_5B_82DA_07:
C - - J - - 0x0142EA 05:82DA: A9 98     LDA #$98
C - - - - - 0x0142EC 05:82DC: 20 E7 82  JSR sub_82E7
C - - - - - 0x0142EF 05:82DF: B0 03     BCS bra_82E4
C - - - - - 0x0142F1 05:82E1: 4C 9A A2  JMP loc_0x0062AA
bra_82E4:
C - - - - - 0x0142F4 05:82E4: 4C B7 A6  JMP loc_0x0066C7_delete_object_03



sub_82E7:
C - - - - - 0x0142F7 05:82E7: 85 08     STA ram_0008
C - - - - - 0x0142F9 05:82E9: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x0142FC 05:82EC: E9 0C     SBC #$0C
C - - - - - 0x0142FE 05:82EE: A8        TAY
C - - - - - 0x0142FF 05:82EF: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x014302 05:82F2: E9 0C     SBC #$0C
C - - - - - 0x014304 05:82F4: 20 95 F0  JSR sub_0x01F0A5
C - - - - - 0x014307 05:82F7: A6 10     LDX ram_0010
C - - - - - 0x014309 05:82F9: 60        RTS



sub_82FA:
C - - - - - 0x01430A 05:82FA: D0 1B     BNE bra_8317_RTS    ; bzk optimize, BNE before JSR
C - - - - - 0x01430C 05:82FC: BC 56 07  LDY ram_0756_obj,X
C - - - - - 0x01430F 05:82FF: A6 11     LDX ram_0011
C - - - - - 0x014311 05:8301: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x014314 05:8304: 18        CLC
C - - - - - 0x014315 05:8305: 79 18 83  ADC tbl_8318_pos_Y,Y
C - - - - - 0x014318 05:8308: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x01431B 05:830B: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x01431E 05:830E: 18        CLC
C - - - - - 0x01431F 05:830F: 79 1D 83  ADC tbl_831D_pos_X,Y
C - - - - - 0x014322 05:8312: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x014325 05:8315: A6 10     LDX ram_0010
bra_8317_RTS:
C - - - - - 0x014327 05:8317: 60        RTS



tbl_8318_pos_Y:
- D 0 - - - 0x014328 05:8318: FB        .byte $FB   ; 00 
- D 0 - - - 0x014329 05:8319: 04        .byte $04   ; 01 
- D 0 - - - 0x01432A 05:831A: 0C        .byte $0C   ; 02 
- D 0 - - - 0x01432B 05:831B: 04        .byte $04   ; 03 
- D 0 - - - 0x01432C 05:831C: FB        .byte $FB   ; 04 



tbl_831D_pos_X:
- D 0 - - - 0x01432D 05:831D: 12        .byte $12   ; 00 
- D 0 - - - 0x01432E 05:831E: 0D        .byte $0D   ; 01 
- D 0 - - - 0x01432F 05:831F: 00        .byte $00   ; 02 
- D 0 - - - 0x014330 05:8320: F3        .byte $F3   ; 03 
- D 0 - - - 0x014331 05:8321: EE        .byte $EE   ; 04 



_off001_0x014332_5C_rifleman_standing_2:
- D 0 - I - 0x014332 05:8322: 2C 83     .word ofs_038_5C_832C_01_initialize_object ; 
- D 0 - I - 0x014334 05:8324: 4D 83     .word ofs_038_5C_834D_02 ; 
- D 0 - I - 0x014336 05:8326: 9A A2     .word ofs_038_5C_0x0062AA_03 ; 
- D 0 - I - 0x014338 05:8328: FD A2     .word ofs_038_5C_0x00630D_04 ; 
- D 0 - I - 0x01433A 05:832A: 3D A3     .word ofs_038_5C_0x00634D_05_delete_object_04 ; 



ofs_038_5C_832C_01_initialize_object:
C - - J - - 0x01433C 05:832C: A9 02     LDA #$02
C - - - - - 0x01433E 05:832E: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x014341 05:8331: A9 01     LDA #$01
C - - - - - 0x014343 05:8333: 9D 72 07  STA ram_0772_obj,X
C - - - - - 0x014346 05:8336: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x014349 05:8339: A9 06     LDA #$06
C - - - - - 0x01434B 05:833B: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x01434E 05:833E: A9 03     LDA #$03
C - - - - - 0x014350 05:8340: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x014353 05:8343: A9 20     LDA #$20
C - - - - - 0x014355 05:8345: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x014358 05:8348: A9 01     LDA #$01
C - - - - - 0x01435A 05:834A: 4C E0 A2  JMP loc_0x0062F0



ofs_038_5C_834D_02:
C - - J - - 0x01435D 05:834D: BC 56 07  LDY ram_0756_obj,X
C - - - - - 0x014360 05:8350: B9 A3 83  LDA tbl_83A3_animation,Y
C - - - - - 0x014363 05:8353: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x014366 05:8356: B9 AB 83  LDA tbl_83AB_spr_attr,Y
C - - - - - 0x014369 05:8359: 20 19 87  JSR sub_8719
C - - - - - 0x01436C 05:835C: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x01436F 05:835F: DE F4 06  DEC ram_06F4_obj,X
C - - - - - 0x014372 05:8362: D0 2A     BNE bra_838E
C - - - - - 0x014374 05:8364: BD 64 07  LDA ram_0764_obj,X
C - - - - - 0x014377 05:8367: 85 0A     STA ram_000A
C - - - - - 0x014379 05:8369: 20 AE AA  JSR sub_0x006ABE
C - - - - - 0x01437C 05:836C: A0 03     LDY #$03
C - - - - - 0x01437E 05:836E: 20 27 F3  JSR sub_0x01F337
C - - - - - 0x014381 05:8371: 20 B9 83  JSR sub_83B9
C - - - - - 0x014384 05:8374: A9 10     LDA #$10
C - - - - - 0x014386 05:8376: DE 72 07  DEC ram_0772_obj,X
C - - - - - 0x014389 05:8379: 10 0F     BPL bra_838A
C - - - - - 0x01438B 05:837B: A9 01     LDA #$01
C - - - - - 0x01438D 05:837D: 9D 72 07  STA ram_0772_obj,X
C - - - - - 0x014390 05:8380: A5 23     LDA ram_random
C - - - - - 0x014392 05:8382: 65 5B     ADC ram_frm_cnt_2
C - - - - - 0x014394 05:8384: 85 23     STA ram_random
C - - - - - 0x014396 05:8386: 29 0F     AND #$0F
C - - - - - 0x014398 05:8388: 69 77     ADC #$77
bra_838A:
C - - - - - 0x01439A 05:838A: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x01439D 05:838D: 60        RTS
bra_838E:
C - - - - - 0x01439E 05:838E: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x0143A1 05:8391: D0 0F     BNE bra_83A2_RTS
C - - - - - 0x0143A3 05:8393: A9 08     LDA #$08
C - - - - - 0x0143A5 05:8395: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x0143A8 05:8398: 20 0B AB  JSR sub_0x006B1B_set_target_on_closest_player_X_pos
C - - - - - 0x0143AB 05:839B: 98        TYA
C - - - - - 0x0143AC 05:839C: 9D 64 07  STA ram_0764_obj,X
C - - - - - 0x0143AF 05:839F: 20 95 F4  JSR sub_0x01F4A5
bra_83A2_RTS:
C - - - - - 0x0143B2 05:83A2: 60        RTS



tbl_83A3_animation:
- D 0 - - - 0x0143B3 05:83A3: 47        .byte $47   ; 00 
- D 0 - - - 0x0143B4 05:83A4: 41        .byte $41   ; 01 
- D 0 - - - 0x0143B5 05:83A5: 3E        .byte $3E   ; 02 
- D 0 - - - 0x0143B6 05:83A6: 41        .byte $41   ; 03 
- D 0 - - - 0x0143B7 05:83A7: 47        .byte $47   ; 04 
- D 0 - - - 0x0143B8 05:83A8: 44        .byte $44   ; 05 
- D 0 - - - 0x0143B9 05:83A9: 48        .byte $48   ; 06 
- D 0 - - - 0x0143BA 05:83AA: 44        .byte $44   ; 07 



tbl_83AB_spr_attr:
- D 0 - - - 0x0143BB 05:83AB: 40        .byte $40   ; 00 
- D 0 - - - 0x0143BC 05:83AC: 40        .byte $40   ; 01 
- D 0 - - - 0x0143BD 05:83AD: 00        .byte $00   ; 02 
- D 0 - - - 0x0143BE 05:83AE: 00        .byte $00   ; 03 
- D 0 - - - 0x0143BF 05:83AF: 00        .byte $00   ; 04 
- D 0 - - - 0x0143C0 05:83B0: 00        .byte $00   ; 05 
- D 0 - - - 0x0143C1 05:83B1: 00        .byte $00   ; 06 
- D 0 - - - 0x0143C2 05:83B2: 40        .byte $40   ; 07 


; bzk garbage
- - - - - - 0x0143C3 05:83B3: 4C 3E B1  JMP loc_0x00714E


; bzk garbage
- - - - - - 0x0143C6 05:83B6: 4C 7C B1  JMP loc_0x00718C



sub_83B9:
C - - - - - 0x0143C9 05:83B9: D0 06     BNE bra_83C1_RTS
C - - - - - 0x0143CB 05:83BB: BC 56 07  LDY ram_0756_obj,X
C - - - - - 0x0143CE 05:83BE: 4C EB 86  JMP loc_86EB
bra_83C1_RTS:
- - - - - - 0x0143D1 05:83C1: 60        RTS



_off001_0x0143D2_63_mob_normal_2:
- D 0 - I - 0x0143D2 05:83C2: CE 83     .word ofs_038_63_83CE_01_initialize_object ; 
- D 0 - I - 0x0143D4 05:83C4: 4D 84     .word ofs_038_63_844D_02 ; 
- D 0 - I - 0x0143D6 05:83C6: 8F 86     .word ofs_038_63_868F_03 ; 
- D 0 - I - 0x0143D8 05:83C8: 9A A2     .word ofs_038_63_0x0062AA_04 ; 
- D 0 - I - 0x0143DA 05:83CA: FD A2     .word ofs_038_63_0x00630D_05 ; 
- D 0 - I - 0x0143DC 05:83CC: 3D A3     .word ofs_038_63_0x00634D_06_delete_object_04 ; 



ofs_038_63_83CE_01_initialize_object:
C - - J - - 0x0143DE 05:83CE: A9 02     LDA #$02
C - - - - - 0x0143E0 05:83D0: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x0143E3 05:83D3: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x0143E6 05:83D6: 4A        LSR
C - - - - - 0x0143E7 05:83D7: 90 0A     BCC bra_83E3
C - - - - - 0x0143E9 05:83D9: A9 40     LDA #$40
C - - - - - 0x0143EB 05:83DB: 9D 72 07  STA ram_0772_obj,X
C - - - - - 0x0143EE 05:83DE: A9 E0     LDA #$E0
C - - - - - 0x0143F0 05:83E0: 9D 22 05  STA ram_pos_Y_hi_enemy,X
bra_83E3:
C - - - - - 0x0143F3 05:83E3: 20 F3 83  JSR sub_83F3
C - - - - - 0x0143F6 05:83E6: 20 D3 A6  JSR sub_0x0066E3
C - - - - - 0x0143F9 05:83E9: A9 20     LDA #$20
C - - - - - 0x0143FB 05:83EB: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x0143FE 05:83EE: A9 30     LDA #$30
C - - - - - 0x014400 05:83F0: 4C E0 A2  JMP loc_0x0062F0



sub_83F3:
C - - - - - 0x014403 05:83F3: 20 4C 86  JSR sub_864C
C - - - - - 0x014406 05:83F6: 20 AE AA  JSR sub_0x006ABE
C - - - - - 0x014409 05:83F9: 20 F0 F4  JSR sub_0x01F500
C - - - - - 0x01440C 05:83FC: A5 0C     LDA ram_000C
C - - - - - 0x01440E 05:83FE: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x014411 05:8401: A8        TAY
C - - - - - 0x014412 05:8402: 20 9B F4  JSR sub_0x01F4AB
C - - - - - 0x014415 05:8405: 4C 0E 84  JMP loc_840E



sub_8408:
C - - - - - 0x014418 05:8408: 20 4C 86  JSR sub_864C
C - - - - - 0x01441B 05:840B: 20 95 F4  JSR sub_0x01F4A5



loc_840E:
sub_840E:
C D 0 - - - 0x01441E 05:840E: BD 56 07  LDA ram_0756_obj,X
C - - - - - 0x014421 05:8411: 0A        ASL
C - - - - - 0x014422 05:8412: 0A        ASL
C - - - - - 0x014423 05:8413: A8        TAY
C - - - - - 0x014424 05:8414: B9 2D 84  LDA tbl_842D_speed,Y
C - - - - - 0x014427 05:8417: 9D A0 06  STA ram_spd_Y_lo_obj,X
C - - - - - 0x01442A 05:841A: B9 2E 84  LDA tbl_842D_speed + $01,Y
C - - - - - 0x01442D 05:841D: 9D AE 06  STA ram_spd_Y_hi_obj,X
C - - - - - 0x014430 05:8420: B9 2F 84  LDA tbl_842D_speed + $02,Y
C - - - - - 0x014433 05:8423: 9D BC 06  STA ram_spd_X_lo_obj,X
C - - - - - 0x014436 05:8426: B9 30 84  LDA tbl_842D_speed + $03,Y
C - - - - - 0x014439 05:8429: 9D CA 06  STA ram_spd_X_hi_obj,X
C - - - - - 0x01443C 05:842C: 60        RTS



tbl_842D_speed:
; 00 
- D 0 - - - 0x01443D 05:842D: 00 00     .word $0000 ; Y
- D 0 - - - 0x01443F 05:842F: C0 00     .word $00C0 ; X
; 01 
- D 0 - - - 0x014441 05:8431: 87 00     .word $0087 ; Y
- D 0 - - - 0x014443 05:8433: 87 00     .word $0087 ; X
; 02 
- D 0 - - - 0x014445 05:8435: C0 00     .word $00C0 ; Y
- D 0 - - - 0x014447 05:8437: 00 00     .word $0000 ; X
; 03 
- D 0 - - - 0x014449 05:8439: 87 00     .word $0087 ; Y
- D 0 - - - 0x01444B 05:843B: 79 FF     .word $FF79 ; X
; 04 
- D 0 - - - 0x01444D 05:843D: 00 00     .word $0000 ; Y
- D 0 - - - 0x01444F 05:843F: 40 FF     .word $FF40 ; X
; 05 
- D 0 - - - 0x014451 05:8441: 79 FF     .word $FF79 ; Y
- D 0 - - - 0x014453 05:8443: 79 FF     .word $FF79 ; X
; 06 
- D 0 - - - 0x014455 05:8445: 40 FF     .word $FF40 ; Y
- D 0 - - - 0x014457 05:8447: 00 00     .word $0000 ; X
; 07 
- D 0 - - - 0x014459 05:8449: 79 FF     .word $FF79 ; Y
- D 0 - - - 0x01445B 05:844B: 87 00     .word $0087 ; X



ofs_038_63_844D_02:
C - - J - - 0x01445D 05:844D: BC 64 07  LDY ram_0764_obj,X
C - - - - - 0x014460 05:8450: F0 2D     BEQ bra_847F
C - - - - - 0x014462 05:8452: B9 A1 85  LDA tbl_85A2 - $01,Y
C - - - - - 0x014465 05:8455: 18        CLC
C - - - - - 0x014466 05:8456: 7D 22 05  ADC ram_pos_Y_hi_enemy,X
C - - - - - 0x014469 05:8459: 85 08     STA ram_0008
C - - - - - 0x01446B 05:845B: B9 A5 85  LDA tbl_85A6 - $01,Y
C - - - - - 0x01446E 05:845E: 18        CLC
C - - - - - 0x01446F 05:845F: 7D 3C 05  ADC ram_pos_X_hi_enemy,X
C - - - - - 0x014472 05:8462: A4 08     LDY ram_0008
C - - - - - 0x014474 05:8464: 20 C0 BA  JSR sub_0x007AD0
C - - - - - 0x014477 05:8467: D0 16     BNE bra_847F
C - - - - - 0x014479 05:8469: BC 64 07  LDY ram_0764_obj,X
C - - - - - 0x01447C 05:846C: B9 A9 85  LDA tbl_85AA - $01,Y
C - - - - - 0x01447F 05:846F: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x014482 05:8472: A9 08     LDA #$08
C - - - - - 0x014484 05:8474: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x014487 05:8477: A9 00     LDA #$00
C - - - - - 0x014489 05:8479: 9D 64 07  STA ram_0764_obj,X
C - - - - - 0x01448C 05:847C: 4C 04 85  JMP loc_8504
bra_847F:
C - - - - - 0x01448F 05:847F: BD CA 06  LDA ram_spd_X_hi_obj,X
C - - - - - 0x014492 05:8482: 1D BC 06  ORA ram_spd_X_lo_obj,X
C - - - - - 0x014495 05:8485: F0 40     BEQ bra_84C7    ; if not moving along X axis
; if moving along X axis
C - - - - - 0x014497 05:8487: BD CA 06  LDA ram_spd_X_hi_obj,X
C - - - - - 0x01449A 05:848A: 2A        ROL
C - - - - - 0x01449B 05:848B: 2A        ROL
C - - - - - 0x01449C 05:848C: 29 01     AND #$01
C - - - - - 0x01449E 05:848E: A8        TAY
C - - - - - 0x01449F 05:848F: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x0144A2 05:8492: D9 B2 85  CMP tbl_85B2,Y
C - - - - - 0x0144A5 05:8495: C8        INY
C - - - - - 0x0144A6 05:8496: 84 13     STY ram_0013
C - - - - - 0x0144A8 05:8498: 6A        ROR
C - - - - - 0x0144A9 05:8499: 5D CA 06  EOR ram_spd_X_hi_obj,X
C - - - - - 0x0144AC 05:849C: 30 1B     BMI bra_84B9
C - - - - - 0x0144AE 05:849E: BD CA 06  LDA ram_spd_X_hi_obj,X
C - - - - - 0x0144B1 05:84A1: 0A        ASL
C - - - - - 0x0144B2 05:84A2: A9 08     LDA #$08
C - - - - - 0x0144B4 05:84A4: A0 01     LDY #$01
C - - - - - 0x0144B6 05:84A6: 90 03     BCC bra_84AB_moving_right
; if moving left
C - - - - - 0x0144B8 05:84A8: A9 F8     LDA #$F8
C - - - - - 0x0144BA 05:84AA: C8        INY ; 02
bra_84AB_moving_right:
C - - - - - 0x0144BB 05:84AB: 84 13     STY ram_0013
C - - - - - 0x0144BD 05:84AD: 18        CLC
C - - - - - 0x0144BE 05:84AE: 7D 3C 05  ADC ram_pos_X_hi_enemy,X
C - - - - - 0x0144C1 05:84B1: BC 22 05  LDY ram_pos_Y_hi_enemy,X
C - - - - - 0x0144C4 05:84B4: 20 C0 BA  JSR sub_0x007AD0
C - - - - - 0x0144C7 05:84B7: F0 0E     BEQ bra_84C7
bra_84B9:
C - - - - - 0x0144C9 05:84B9: BD 64 07  LDA ram_0764_obj,X
C - - - - - 0x0144CC 05:84BC: D0 03     BNE bra_84C1
C - - - - - 0x0144CE 05:84BE: 4C 3B 85  JMP loc_853B
bra_84C1:
C - - - - - 0x0144D1 05:84C1: 20 2B 86  JSR sub_862B
C - - - - - 0x0144D4 05:84C4: 4C 04 85  JMP loc_8504
bra_84C7:
C - - - - - 0x0144D7 05:84C7: BD AE 06  LDA ram_spd_Y_hi_obj,X
C - - - - - 0x0144DA 05:84CA: 1D A0 06  ORA ram_spd_Y_lo_obj,X
C - - - - - 0x0144DD 05:84CD: F0 2B     BEQ bra_84FA    ; if not moving along Y axis
; if moving along Y axis
C - - - - - 0x0144DF 05:84CF: BD AE 06  LDA ram_spd_Y_hi_obj,X
C - - - - - 0x0144E2 05:84D2: 0A        ASL
C - - - - - 0x0144E3 05:84D3: A9 10     LDA #$10
C - - - - - 0x0144E5 05:84D5: A0 03     LDY #$03
C - - - - - 0x0144E7 05:84D7: 90 03     BCC bra_84DC_moving_down
; if moving up
C - - - - - 0x0144E9 05:84D9: A9 F8     LDA #$F8
C - - - - - 0x0144EB 05:84DB: C8        INY ; 04
bra_84DC_moving_down:
C - - - - - 0x0144EC 05:84DC: 84 13     STY ram_0013
C - - - - - 0x0144EE 05:84DE: 18        CLC
C - - - - - 0x0144EF 05:84DF: 7D 22 05  ADC ram_pos_Y_hi_enemy,X
C - - - - - 0x0144F2 05:84E2: C9 E8     CMP #$E8
C - - - - - 0x0144F4 05:84E4: B0 14     BCS bra_84FA
C - - - - - 0x0144F6 05:84E6: A8        TAY
C - - - - - 0x0144F7 05:84E7: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x0144FA 05:84EA: 20 C0 BA  JSR sub_0x007AD0
C - - - - - 0x0144FD 05:84ED: F0 0B     BEQ bra_84FA
C - - - - - 0x0144FF 05:84EF: BD 64 07  LDA ram_0764_obj,X
C - - - - - 0x014502 05:84F2: F0 2B     BEQ bra_851F
- - - - - - 0x014504 05:84F4: 20 2B 86  JSR sub_862B
- - - - - - 0x014507 05:84F7: 4C 04 85  JMP loc_8504
bra_84FA:
C - - - - - 0x01450A 05:84FA: BC 64 07  LDY ram_0764_obj,X
C - - - - - 0x01450D 05:84FD: D0 05     BNE bra_8504
C - - - - - 0x01450F 05:84FF: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x014512 05:8502: F0 53     BEQ bra_8557
bra_8504:
loc_8504:
C D 0 - - - 0x014514 05:8504: 20 C3 85  JSR sub_85C3
C - - - - - 0x014517 05:8507: 20 D3 A6  JSR sub_0x0066E3
C - - - - - 0x01451A 05:850A: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x01451D 05:850D: 29 02     AND #$02
C - - - - - 0x01451F 05:850F: F0 0D     BEQ bra_851E_RTS
C - - - - - 0x014521 05:8511: DE F4 06  DEC ram_06F4_obj,X
C - - - - - 0x014524 05:8514: D0 08     BNE bra_851E_RTS
C - - - - - 0x014526 05:8516: A9 20     LDA #$20
C - - - - - 0x014528 05:8518: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x01452B 05:851B: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state
bra_851E_RTS:
C - - - - - 0x01452E 05:851E: 60        RTS
bra_851F:
C - - - - - 0x01452F 05:851F: 20 66 86  JSR sub_8666
C - - - - - 0x014532 05:8522: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x014535 05:8525: C5 0C     CMP ram_000C
C - - - - - 0x014537 05:8527: 6A        ROR
C - - - - - 0x014538 05:8528: 5D AE 06  EOR ram_spd_Y_hi_obj,X
C - - - - - 0x01453B 05:852B: 30 2A     BMI bra_8557
C - - - - - 0x01453D 05:852D: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x014540 05:8530: C5 0B     CMP ram_000B
C - - - - - 0x014542 05:8532: A9 00     LDA #$00
C - - - - - 0x014544 05:8534: 90 02     BCC bra_8538
C - - - - - 0x014546 05:8536: A9 01     LDA #$01
bra_8538:
C - - - - - 0x014548 05:8538: 4C 8A 85  JMP loc_858A



loc_853B:
C D 0 - - - 0x01454B 05:853B: 20 66 86  JSR sub_8666
C - - - - - 0x01454E 05:853E: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x014551 05:8541: C5 0B     CMP ram_000B
C - - - - - 0x014553 05:8543: 6A        ROR
C - - - - - 0x014554 05:8544: 5D CA 06  EOR ram_spd_X_hi_obj,X
C - - - - - 0x014557 05:8547: 30 0E     BMI bra_8557
C - - - - - 0x014559 05:8549: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x01455C 05:854C: C5 0C     CMP ram_000C
C - - - - - 0x01455E 05:854E: A9 02     LDA #$02
C - - - - - 0x014560 05:8550: 90 02     BCC bra_8554
C - - - - - 0x014562 05:8552: A9 03     LDA #$03
bra_8554:
C - - - - - 0x014564 05:8554: 4C 8A 85  JMP loc_858A
bra_8557:
C - - - - - 0x014567 05:8557: 20 66 86  JSR sub_8666
C - - - - - 0x01456A 05:855A: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x01456D 05:855D: C5 0C     CMP ram_000C
C - - - - - 0x01456F 05:855F: 90 0A     BCC bra_856B
C - - - - - 0x014571 05:8561: BD 72 07  LDA ram_0772_obj,X
C - - - - - 0x014574 05:8564: 0A        ASL
C - - - - - 0x014575 05:8565: 30 0C     BMI bra_8573
C - - - - - 0x014577 05:8567: A9 80     LDA #$80
C - - - - - 0x014579 05:8569: D0 05     BNE bra_8570    ; jmp
bra_856B:
C - - - - - 0x01457B 05:856B: BD 72 07  LDA ram_0772_obj,X
C - - - - - 0x01457E 05:856E: 29 BF     AND #$BF
bra_8570:
C - - - - - 0x014580 05:8570: 9D 72 07  STA ram_0772_obj,X
bra_8573:
C - - - - - 0x014583 05:8573: A5 1B     LDA ram_frm_cnt_1
C - - - - - 0x014585 05:8575: E5 23     SBC ram_random
C - - - - - 0x014587 05:8577: 85 23     STA ram_random
C - - - - - 0x014589 05:8579: A5 23     LDA ram_random
C - - - - - 0x01458B 05:857B: 29 07     AND #$07
C - - - - - 0x01458D 05:857D: A8        TAY
C - - - - - 0x01458E 05:857E: B9 B4 85  LDA tbl_85B4,Y
C - - - - - 0x014591 05:8581: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x014594 05:8584: 20 08 84  JSR sub_8408
C - - - - - 0x014597 05:8587: 4C B7 A6  JMP loc_0x0066C7_delete_object_03



loc_858A:
C D 0 - - - 0x01459A 05:858A: A8        TAY
C - - - - - 0x01459B 05:858B: B9 AA 85  LDA tbl_85AA,Y
C - - - - - 0x01459E 05:858E: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x0145A1 05:8591: B9 AE 85  LDA tbl_85AE,Y
C - - - - - 0x0145A4 05:8594: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x0145A7 05:8597: A5 13     LDA ram_0013
C - - - - - 0x0145A9 05:8599: 9D 64 07  STA ram_0764_obj,X
C - - - - - 0x0145AC 05:859C: 20 0E 84  JSR sub_840E
C - - - - - 0x0145AF 05:859F: 4C B7 A6  JMP loc_0x0066C7_delete_object_03



tbl_85A2:
- D 0 - - - 0x0145B2 05:85A2: 00        .byte $00   ; 01
- D 0 - - - 0x0145B3 05:85A3: 00        .byte $00   ; 02
- D 0 - - - 0x0145B4 05:85A4: 10        .byte $10   ; 03
- D 0 - - - 0x0145B5 05:85A5: F8        .byte $F8   ; 04



tbl_85A6:
- D 0 - - - 0x0145B6 05:85A6: 08        .byte $08   ; 01
- D 0 - - - 0x0145B7 05:85A7: F8        .byte $F8   ; 02
- D 0 - - - 0x0145B8 05:85A8: 00        .byte $00   ; 03
- D 0 - - - 0x0145B9 05:85A9: 00        .byte $00   ; 04



tbl_85AA:
- D 0 - - - 0x0145BA 05:85AA: 00        .byte $00   ; 00 (01)
- D 0 - - - 0x0145BB 05:85AB: 0C        .byte $0C   ; 01 (02)
- D 0 - - - 0x0145BC 05:85AC: 06        .byte $06   ; 02 (03)
- D 0 - - - 0x0145BD 05:85AD: 12        .byte $12   ; 03 (04)



tbl_85AE:
- D 0 - - - 0x0145BE 05:85AE: 00        .byte $00   ; 00
- D 0 - - - 0x0145BF 05:85AF: 04        .byte $04   ; 01
- D 0 - - - 0x0145C0 05:85B0: 02        .byte $02   ; 02
- D 0 - - - 0x0145C1 05:85B1: 06        .byte $06   ; 03



tbl_85B2:
- D 0 - - - 0x0145C2 05:85B2: F0        .byte $F0   ; 00
- D 0 - - - 0x0145C3 05:85B3: 10        .byte $10   ; 01



tbl_85B4:
- D 0 - - - 0x0145C4 05:85B4: 1A        .byte $1A   ; 00
- D 0 - - - 0x0145C5 05:85B5: 08        .byte $08   ; 01
- D 0 - - - 0x0145C6 05:85B6: 18        .byte $18   ; 02
- D 0 - - - 0x0145C7 05:85B7: 20        .byte $20   ; 03
- D 0 - - - 0x0145C8 05:85B8: 02        .byte $02   ; 04
- D 0 - - - 0x0145C9 05:85B9: 1C        .byte $1C   ; 05
- D 0 - - - 0x0145CA 05:85BA: 05        .byte $05   ; 06
- D 0 - - - 0x0145CB 05:85BB: 0E        .byte $0E   ; 07



sub_85BC:
C - - - - - 0x0145CC 05:85BC: A9 03     LDA #$03
C - - - - - 0x0145CE 05:85BE: 9D 10 07  STA ram_0710_obj,X
C - - - - - 0x0145D1 05:85C1: D0 1D     BNE bra_85E0    ; jmp



sub_85C3:
C - - - - - 0x0145D3 05:85C3: FE 02 07  INC ram_0702_obj,X
C - - - - - 0x0145D6 05:85C6: BD 02 07  LDA ram_0702_obj,X
C - - - - - 0x0145D9 05:85C9: C9 08     CMP #$08
C - - - - - 0x0145DB 05:85CB: 90 10     BCC bra_85DD
C - - - - - 0x0145DD 05:85CD: A9 00     LDA #$00
C - - - - - 0x0145DF 05:85CF: 9D 02 07  STA ram_0702_obj,X
C - - - - - 0x0145E2 05:85D2: FE 10 07  INC ram_0710_obj,X
C - - - - - 0x0145E5 05:85D5: BD 10 07  LDA ram_0710_obj,X
C - - - - - 0x0145E8 05:85D8: 29 03     AND #$03
C - - - - - 0x0145EA 05:85DA: 9D 10 07  STA ram_0710_obj,X
bra_85DD:
C - - - - - 0x0145ED 05:85DD: BC 56 07  LDY ram_0756_obj,X
bra_85E0:
C - - - - - 0x0145F0 05:85E0: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x0145F3 05:85E3: 4A        LSR
C - - - - - 0x0145F4 05:85E4: 4A        LSR
C - - - - - 0x0145F5 05:85E5: A9 01     LDA #$01
C - - - - - 0x0145F7 05:85E7: B0 02     BCS bra_85EB
C - - - - - 0x0145F9 05:85E9: A9 03     LDA #$03
bra_85EB:
C - - - - - 0x0145FB 05:85EB: 19 03 86  ORA tbl_8603_spr_attr,Y
C - - - - - 0x0145FE 05:85EE: 84 08     STY ram_0008
C - - - - - 0x014600 05:85F0: 20 19 87  JSR sub_8719
C - - - - - 0x014603 05:85F3: A5 08     LDA ram_0008
C - - - - - 0x014605 05:85F5: 0A        ASL
C - - - - - 0x014606 05:85F6: 0A        ASL
C - - - - - 0x014607 05:85F7: 18        CLC
C - - - - - 0x014608 05:85F8: 7D 10 07  ADC ram_0710_obj,X
C - - - - - 0x01460B 05:85FB: A8        TAY
C - - - - - 0x01460C 05:85FC: B9 0B 86  LDA tbl_860B_animation,Y
C - - - - - 0x01460F 05:85FF: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x014612 05:8602: 60        RTS



tbl_8603_spr_attr:
- D 0 - - - 0x014613 05:8603: 40        .byte $40   ; 00 
- D 0 - - - 0x014614 05:8604: 40        .byte $40   ; 01 
- D 0 - - - 0x014615 05:8605: 00        .byte $00   ; 02 
- D 0 - - - 0x014616 05:8606: 00        .byte $00   ; 03 
- D 0 - - - 0x014617 05:8607: 00        .byte $00   ; 04 
- D 0 - - - 0x014618 05:8608: 00        .byte $00   ; 05 
- D 0 - - - 0x014619 05:8609: 00        .byte $00   ; 06 
- D 0 - - - 0x01461A 05:860A: 40        .byte $40   ; 07 



tbl_860B_animation:
;                                              --------------------- 
;                                              |    ---------------- 
;                                              |    |    ----------- 
;                                              |    |    |    ------ 
;                                              |    |    |    |
- D 0 - - - 0x01461B 05:860B: 45        .byte $45, $46, $47, $46   ; 00 
- D 0 - - - 0x01461F 05:860F: 3F        .byte $3F, $40, $41, $40   ; 01 
- D 0 - - - 0x014623 05:8613: 3C        .byte $3C, $3D, $3E, $3D   ; 02 
- D 0 - - - 0x014627 05:8617: 3F        .byte $3F, $40, $41, $40   ; 03 
- D 0 - - - 0x01462B 05:861B: 45        .byte $45, $46, $47, $46   ; 04 
- D 0 - - - 0x01462F 05:861F: 42        .byte $42, $43, $44, $43   ; 05 
- D 0 - - - 0x014633 05:8623: 48        .byte $48, $49, $4A, $49   ; 06 
- D 0 - - - 0x014637 05:8627: 42        .byte $42, $43, $44, $43   ; 07 



sub_862B:
C - - - - - 0x01463B 05:862B: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x01463E 05:862E: 18        CLC
C - - - - - 0x01463F 05:862F: 69 0C     ADC #$0C
C - - - - - 0x014641 05:8631: C9 18     CMP #$18
C - - - - - 0x014643 05:8633: 90 02     BCC bra_8637
C - - - - - 0x014645 05:8635: E9 18     SBC #$18
bra_8637:
C - - - - - 0x014647 05:8637: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x01464A 05:863A: BD 56 07  LDA ram_0756_obj,X
C - - - - - 0x01464D 05:863D: 18        CLC
C - - - - - 0x01464E 05:863E: 69 04     ADC #$04
C - - - - - 0x014650 05:8640: C9 08     CMP #$08
C - - - - - 0x014652 05:8642: 90 02     BCC bra_8646
C - - - - - 0x014654 05:8644: E9 08     SBC #$08
bra_8646:
C - - - - - 0x014656 05:8646: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x014659 05:8649: 4C 0E 84  JMP loc_840E



sub_864C:
C - - - - - 0x01465C 05:864C: 20 7C 86  JSR sub_867C
C - - - - - 0x01465F 05:864F: BD 72 07  LDA ram_0772_obj,X
C - - - - - 0x014662 05:8652: 30 0F     BMI bra_8663
C - - - - - 0x014664 05:8654: 20 0B AB  JSR sub_0x006B1B_set_target_on_closest_player_X_pos
C - - - - - 0x014667 05:8657: 84 0A     STY ram_000A
C - - - - - 0x014669 05:8659: BD 72 07  LDA ram_0772_obj,X
C - - - - - 0x01466C 05:865C: 29 FE     AND #$FE
C - - - - - 0x01466E 05:865E: 05 0A     ORA ram_000A
C - - - - - 0x014670 05:8660: 9D 72 07  STA ram_0772_obj,X
bra_8663:
C - - - - - 0x014673 05:8663: 85 0A     STA ram_000A
C - - - - - 0x014675 05:8665: 60        RTS



sub_8666:
C - - - - - 0x014676 05:8666: 20 7C 86  JSR sub_867C
C - - - - - 0x014679 05:8669: BD 72 07  LDA ram_0772_obj,X
C - - - - - 0x01467C 05:866C: 30 0D     BMI bra_867B_RTS
C - - - - - 0x01467E 05:866E: 29 01     AND #$01
C - - - - - 0x014680 05:8670: A8        TAY
C - - - - - 0x014681 05:8671: B9 32 05  LDA ram_pos_Y_hi_plr,Y
C - - - - - 0x014684 05:8674: 85 0C     STA ram_000C
C - - - - - 0x014686 05:8676: B9 4C 05  LDA ram_pos_X_hi_plr,Y
C - - - - - 0x014689 05:8679: 85 0B     STA ram_000B
bra_867B_RTS:
C - - - - - 0x01468B 05:867B: 60        RTS



sub_867C:
C - - - - - 0x01468C 05:867C: A5 23     LDA ram_random
C - - - - - 0x01468E 05:867E: 29 03     AND #$03
C - - - - - 0x014690 05:8680: A8        TAY
C - - - - - 0x014691 05:8681: B9 8B 86  LDA tbl_868B,Y
C - - - - - 0x014694 05:8684: 85 0B     STA ram_000B
C - - - - - 0x014696 05:8686: A9 FF     LDA #$FF
C - - - - - 0x014698 05:8688: 85 0C     STA ram_000C
C - - - - - 0x01469A 05:868A: 60        RTS



tbl_868B:
- D 0 - - - 0x01469B 05:868B: 20        .byte $20   ; 00 
- D 0 - - - 0x01469C 05:868C: 60        .byte $60   ; 01 
- D 0 - - - 0x01469D 05:868D: A0        .byte $A0   ; 02 
- D 0 - - - 0x01469E 05:868E: E0        .byte $E0   ; 03 



ofs_038_63_868F_03:
C - - J - - 0x01469F 05:868F: BD 72 07  LDA ram_0772_obj,X
C - - - - - 0x0146A2 05:8692: 10 04     BPL bra_8698
C - - - - - 0x0146A4 05:8694: 20 0B AB  JSR sub_0x006B1B_set_target_on_closest_player_X_pos
C - - - - - 0x0146A7 05:8697: 98        TYA
bra_8698:
C - - - - - 0x0146A8 05:8698: 85 0A     STA ram_000A
C - - - - - 0x0146AA 05:869A: 48        PHA
C - - - - - 0x0146AB 05:869B: 20 AE AA  JSR sub_0x006ABE
C - - - - - 0x0146AE 05:869E: 20 F0 F4  JSR sub_0x01F500
C - - - - - 0x0146B1 05:86A1: A4 0C     LDY ram_000C
C - - - - - 0x0146B3 05:86A3: B9 D4 F4  LDA tbl_0x01F4E4,Y
C - - - - - 0x0146B6 05:86A6: A8        TAY
C - - - - - 0x0146B7 05:86A7: 85 17     STA ram_0017
C - - - - - 0x0146B9 05:86A9: 20 BC 85  JSR sub_85BC
C - - - - - 0x0146BC 05:86AC: 68        PLA
C - - - - - 0x0146BD 05:86AD: 85 0A     STA ram_000A
C - - - - - 0x0146BF 05:86AF: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x0146C2 05:86B2: DE F4 06  DEC ram_06F4_obj,X
C - - - - - 0x0146C5 05:86B5: F0 18     BEQ bra_86CF
C - - - - - 0x0146C7 05:86B7: BD F4 06  LDA ram_06F4_obj,X
C - - - - - 0x0146CA 05:86BA: C9 10     CMP #$10
C - - - - - 0x0146CC 05:86BC: D0 10     BNE bra_86CE_RTS
C - - - - - 0x0146CE 05:86BE: 20 AE AA  JSR sub_0x006ABE
C - - - - - 0x0146D1 05:86C1: A0 03     LDY #$03
C - - - - - 0x0146D3 05:86C3: 20 27 F3  JSR sub_0x01F337
C - - - - - 0x0146D6 05:86C6: 20 E7 86  JSR sub_86E7
C - - - - - 0x0146D9 05:86C9: A9 08     LDA #$08
C - - - - - 0x0146DB 05:86CB: 9D F4 06  STA ram_06F4_obj,X
bra_86CE_RTS:
C - - - - - 0x0146DE 05:86CE: 60        RTS
bra_86CF:
C - - - - - 0x0146DF 05:86CF: A5 23     LDA ram_random
C - - - - - 0x0146E1 05:86D1: 65 1B     ADC ram_frm_cnt_1
C - - - - - 0x0146E3 05:86D3: 85 23     STA ram_random
C - - - - - 0x0146E5 05:86D5: 29 1F     AND #$1F
C - - - - - 0x0146E7 05:86D7: 69 70     ADC #$70
C - - - - - 0x0146E9 05:86D9: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x0146EC 05:86DC: A9 02     LDA #$02
C - - - - - 0x0146EE 05:86DE: 4C 83 A2  JMP loc_0x006293_set_obj_state


; bzk garbage
- - - - - - 0x0146F1 05:86E1: 4C 3E B1  JMP loc_0x00714E


; bzk garbage
- - - - - - 0x0146F4 05:86E4: 4C 7C B1  JMP loc_0x00718C



sub_86E7:
C - - - - - 0x0146F7 05:86E7: D0 1F     BNE bra_8708_RTS
C - - - - - 0x0146F9 05:86E9: A4 17     LDY ram_0017
loc_86EB:
C D 0 - - - 0x0146FB 05:86EB: A9 06     LDA #$06
C - - - - - 0x0146FD 05:86ED: 9D 80 07  STA ram_0780_obj,X
C - - - - - 0x014700 05:86F0: A6 11     LDX ram_0011
C - - - - - 0x014702 05:86F2: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x014705 05:86F5: 18        CLC
C - - - - - 0x014706 05:86F6: 79 09 87  ADC tbl_8709_pos_Y,Y
C - - - - - 0x014709 05:86F9: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x01470C 05:86FC: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x01470F 05:86FF: 18        CLC
C - - - - - 0x014710 05:8700: 79 11 87  ADC tbl_8711_pos_X,Y
C - - - - - 0x014713 05:8703: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x014716 05:8706: A6 10     LDX ram_0010
bra_8708_RTS:
C - - - - - 0x014718 05:8708: 60        RTS



tbl_8709_pos_Y:
- D 0 - - - 0x014719 05:8709: FC        .byte $FC   ; 00 
- D 0 - - - 0x01471A 05:870A: 03        .byte $03   ; 01 
- D 0 - - - 0x01471B 05:870B: 04        .byte $04   ; 02 
- D 0 - - - 0x01471C 05:870C: 03        .byte $03   ; 03 
- D 0 - - - 0x01471D 05:870D: FC        .byte $FC   ; 04 
- D 0 - - - 0x01471E 05:870E: F3        .byte $F3   ; 05 
- D 0 - - - 0x01471F 05:870F: F0        .byte $F0   ; 06 
- D 0 - - - 0x014720 05:8710: F3        .byte $F3   ; 07 



tbl_8711_pos_X:
- D 0 - - - 0x014721 05:8711: 08        .byte $08   ; 00 
- D 0 - - - 0x014722 05:8712: 08        .byte $08   ; 01 
- D 0 - - - 0x014723 05:8713: FD        .byte $FD   ; 02 
- D 0 - - - 0x014724 05:8714: F8        .byte $F8   ; 03 
- D 0 - - - 0x014725 05:8715: F8        .byte $F8   ; 04 
- D 0 - - - 0x014726 05:8716: F8        .byte $F8   ; 05 
- D 0 - - - 0x014727 05:8717: 03        .byte $03   ; 06 
- D 0 - - - 0x014728 05:8718: 08        .byte $08   ; 07 



sub_8719:
C - - - - - 0x014729 05:8719: BC 80 07  LDY ram_0780_obj,X
C - - - - - 0x01472C 05:871C: F0 05     BEQ bra_8723
C - - - - - 0x01472E 05:871E: DE 80 07  DEC ram_0780_obj,X
C - - - - - 0x014731 05:8721: 09 04     ORA #$04
bra_8723:
C - - - - - 0x014733 05:8723: 9D 56 05  STA ram_attr_spr_enemy,X
C - - - - - 0x014736 05:8726: 60        RTS



_off001_0x014737_69_boss_2_green_tankman:
- D 0 - I - 0x014737 05:8727: 3B 87     .word ofs_038_69_873B_01_initialize_object ; 
- D 0 - I - 0x014739 05:8729: 48 87     .word ofs_038_69_8748_02 ; 
- D 0 - I - 0x01473B 05:872B: 61 87     .word ofs_038_69_8761_03 ; 
- D 0 - I - 0x01473D 05:872D: AD 87     .word ofs_038_69_87AD_04 ; 
- D 0 - I - 0x01473F 05:872F: 50 88     .word ofs_038_69_8850_05 ; 
- D 0 - I - 0x014741 05:8731: E2 88     .word ofs_038_69_88E2_06 ; 
- D 0 - I - 0x014743 05:8733: E8 88     .word ofs_038_69_88E8_07 ; 
- D 0 - I - 0x014745 05:8735: EE 88     .word ofs_038_69_88EE_08 ; 
- D 0 - I - 0x014747 05:8737: F6 A2     .word ofs_038_69_0x006306_09 ; 
- D 0 - I - 0x014749 05:8739: F4 88     .word ofs_038_69_88F4_0A ; 



ofs_038_69_873B_01_initialize_object:
C - - J - - 0x01474B 05:873B: A9 91     LDA #$91
C - - - - - 0x01474D 05:873D: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x014750 05:8740: A9 20     LDA #$20
C - - - - - 0x014752 05:8742: 20 99 AB  JSR sub_0x006BA9_set_dynamic_hp_to_boss
C - - - - - 0x014755 05:8745: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_69_8748_02:
C - - J - - 0x014758 05:8748: A9 4E     LDA #$4E
C - - - - - 0x01475A 05:874A: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x01475D 05:874D: A5 FC     LDA ram_scroll_Y
C - - - - - 0x01475F 05:874F: D0 1F     BNE bra_8770_RTS
C - - - - - 0x014761 05:8751: A9 00     LDA #$00
C - - - - - 0x014763 05:8753: 85 64     STA ram_0064
C - - - - - 0x014765 05:8755: A9 02     LDA #$02
C - - - - - 0x014767 05:8757: 85 61     STA ram_0061_area_config
C - - - - - 0x014769 05:8759: A9 08     LDA #$08
C - - - - - 0x01476B 05:875B: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x01476E 05:875E: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_69_8761_03:
C - - J - - 0x014771 05:8761: A5 60     LDA ram_0060_game_handler
C - - - - - 0x014773 05:8763: 05 70     ORA ram_0070_game_handler
C - - - - - 0x014775 05:8765: D0 09     BNE bra_8770_RTS
C - - - - - 0x014777 05:8767: DE 48 07  DEC ram_0748_obj,X
C - - - - - 0x01477A 05:876A: F0 05     BEQ bra_8771
C - - - - - 0x01477C 05:876C: A9 00     LDA #$00
C - - - - - 0x01477E 05:876E: 85 6B     STA ram_006B
bra_8770_RTS:
C - - - - - 0x014780 05:8770: 60        RTS
bra_8771:
C - - - - - 0x014781 05:8771: A9 01     LDA #con_mirroring_H
C - - - - - 0x014783 05:8773: 85 26     STA ram_for_A000
C - - - - - 0x014785 05:8775: A9 80     LDA #$80
C - - - - - 0x014787 05:8777: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x01478A 05:877A: A9 88     LDA #$88
C - - - - - 0x01478C 05:877C: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x01478F 05:877F: A9 FF     LDA #$FF
C - - - - - 0x014791 05:8781: 9D 8E 07  STA ram_078E_obj,X
C - - - - - 0x014794 05:8784: A9 0C     LDA #con_irq_area_2_boss
C - - - - - 0x014796 05:8786: 85 27     STA ram_irq_handler_hi
C - - - - - 0x014798 05:8788: 20 2F 89  JSR sub_892F
C - - - - - 0x01479B 05:878B: 20 CE A9  JSR sub_0x0069DE
C - - - - - 0x01479E 05:878E: A9 00     LDA #$00
C - - - - - 0x0147A0 05:8790: 9D 8E 07  STA ram_078E_obj,X
C - - - - - 0x0147A3 05:8793: A9 62     LDA #$62
C - - - - - 0x0147A5 05:8795: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x0147A8 05:8798: A9 10     LDA #$10
C - - - - - 0x0147AA 05:879A: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x0147AD 05:879D: 20 2C 89  JSR sub_892C
C - - - - - 0x0147B0 05:87A0: A9 31     LDA #con_sound_31
C - - - - - 0x0147B2 05:87A2: 20 DE FD  JSR sub_0x01FDEE_play_sound
C - - - - - 0x0147B5 05:87A5: A9 05     LDA #$05
C - - - - - 0x0147B7 05:87A7: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x0147BA 05:87AA: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_69_87AD_04:
C - - J - - 0x0147BD 05:87AD: A0 03     LDY #$03
; 07D6-07D9
C - - - - - 0x0147BF 05:87AF: A9 55     LDA #$55
bra_87B1_loop:
C - - - - - 0x0147C1 05:87B1: 99 D6 07  STA ram_07D0 + $06,Y    ; !!!
C - - - - - 0x0147C4 05:87B4: 88        DEY
C - - - - - 0x0147C5 05:87B5: 10 FA     BPL bra_87B1_loop
C - - - - - 0x0147C7 05:87B7: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x0147CA 05:87BA: 0A        ASL
C - - - - - 0x0147CB 05:87BB: 0A        ASL
C - - - - - 0x0147CC 05:87BC: A8        TAY
C - - - - - 0x0147CD 05:87BD: A6 1E     LDX ram_index_ppu_buffer
C - - - - - 0x0147CF 05:87BF: A9 03     LDA #con_buf_mode_03
C - - - - - 0x0147D1 05:87C1: 9D 00 03  STA ram_nmt_buffer,X
; ppu hi
C - - - - - 0x0147D4 05:87C4: E8        INX
C - - - - - 0x0147D5 05:87C5: B9 39 88  LDA tbl_8838 + $01,Y
C - - - - - 0x0147D8 05:87C8: 9D 00 03  STA ram_nmt_buffer,X
; ppu lo
C - - - - - 0x0147DB 05:87CB: E8        INX
C - - - - - 0x0147DC 05:87CC: B9 38 88  LDA tbl_8838,Y
C - - - - - 0x0147DF 05:87CF: 9D 00 03  STA ram_nmt_buffer,X
; counter
C - - - - - 0x0147E2 05:87D2: E8        INX
C - - - - - 0x0147E3 05:87D3: B9 3A 88  LDA tbl_8838 + $02,Y
C - - - - - 0x0147E6 05:87D6: 9D 00 03  STA ram_nmt_buffer,X
; fill tile
C - - - - - 0x0147E9 05:87D9: E8        INX
C - - - - - 0x0147EA 05:87DA: B9 3B 88  LDA tbl_8838 + $03,Y
C - - - - - 0x0147ED 05:87DD: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x0147F0 05:87E0: E8        INX
C - - - - - 0x0147F1 05:87E1: 86 1E     STX ram_index_ppu_buffer
C - - - - - 0x0147F3 05:87E3: A6 10     LDX ram_0010
C - - - - - 0x0147F5 05:87E5: 20 29 89  JSR sub_8929
C - - - - - 0x0147F8 05:87E8: DE 48 07  DEC ram_0748_obj,X
C - - - - - 0x0147FB 05:87EB: 10 46     BPL bra_8833_RTS
C - - - - - 0x0147FD 05:87ED: A9 00     LDA #$00
C - - - - - 0x0147FF 05:87EF: A0 2F     LDY #$2F
bra_87F1_loop:
C - - - - - 0x014801 05:87F1: 99 18 04  STA ram_0400_area_data_1 + $18,Y
C - - - - - 0x014804 05:87F4: 99 98 04  STA ram_0480_area_data_2 + $18,Y
C - - - - - 0x014807 05:87F7: 88        DEY
C - - - - - 0x014808 05:87F8: 10 F7     BPL bra_87F1_loop
C - - - - - 0x01480A 05:87FA: A9 87     LDA #$87
C - - - - - 0x01480C 05:87FC: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x01480F 05:87FF: A9 06     LDA #$06
C - - - - - 0x014811 05:8801: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x014814 05:8804: A9 03     LDA #$03
C - - - - - 0x014816 05:8806: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x014819 05:8809: A9 00     LDA #$00
C - - - - - 0x01481B 05:880B: 9D 72 07  STA ram_0772_obj,X
C - - - - - 0x01481E 05:880E: A9 F0     LDA #$F0
C - - - - - 0x014820 05:8810: 9D 02 07  STA ram_0702_obj,X
C - - - - - 0x014823 05:8813: A0 03     LDY #$03
bra_8815_loop:
C - - - - - 0x014825 05:8815: 84 08     STY ram_0008
C - - - - - 0x014827 05:8817: B9 34 88  LDA tbl_8834,Y
C - - - - - 0x01482A 05:881A: A8        TAY
C - - - - - 0x01482B 05:881B: 20 C8 AB  JSR sub_0x006BD8
C - - - - - 0x01482E 05:881E: 90 10     BCC bra_8830
C - - - - - 0x014830 05:8820: A4 11     LDY ram_0011
C - - - - - 0x014832 05:8822: A5 08     LDA ram_0008
C - - - - - 0x014834 05:8824: 99 1E 07  STA ram_obj_flags,Y
C - - - - - 0x014837 05:8827: 8A        TXA
C - - - - - 0x014838 05:8828: 99 64 07  STA ram_0764_obj,Y
C - - - - - 0x01483B 05:882B: A4 08     LDY ram_0008
C - - - - - 0x01483D 05:882D: 88        DEY
C - - - - - 0x01483E 05:882E: 10 E5     BPL bra_8815_loop
bra_8830:
C - - - - - 0x014840 05:8830: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state
bra_8833_RTS:
C - - - - - 0x014843 05:8833: 60        RTS



tbl_8834:
- D 0 - - - 0x014844 05:8834: 6A        .byte con_obj_id_6A   ; 00 
- D 0 - - - 0x014845 05:8835: 6A        .byte con_obj_id_6A   ; 01 
- D 0 - - - 0x014846 05:8836: 36        .byte con_obj_id_36   ; 02 
- D 0 - - - 0x014847 05:8837: 36        .byte con_obj_id_36   ; 03 



tbl_8838:
; 00 
- D 0 - - - 0x014848 05:8838: A8 20     .word $20A8 ; ppu address
- D 0 - - - 0x01484A 05:883A: 58        .byte $58, $08   ; counter + fill tile
; 01 
- D 0 - - - 0x01484C 05:883C: 08 21     .word $2108 ; ppu address
- D 0 - - - 0x01484E 05:883E: 58        .byte $58, $08   ; counter + fill tile
; 02 
- D 0 - - - 0x014850 05:8840: 68 21     .word $2168 ; ppu address
- D 0 - - - 0x014852 05:8842: 58        .byte $58, $08   ; counter + fill tile
; 03 
- D 0 - - - 0x014854 05:8844: C8 21     .word $21C8 ; ppu address
- D 0 - - - 0x014856 05:8846: 58        .byte $58, $08   ; counter + fill tile
; 04 
- D 0 - - - 0x014858 05:8848: 28 22     .word $2228 ; ppu address
- D 0 - - - 0x01485A 05:884A: 58        .byte $58, $08   ; counter + fill tile
; 05 
- D 0 - - - 0x01485C 05:884C: CA 23     .word $23CA ; ppu address
- D 0 - - - 0x01485E 05:884E: 1E        .byte $1E, $55   ; counter + fill tile



ofs_038_69_8850_05:
C - - J - - 0x014860 05:8850: DE 02 07  DEC ram_0702_obj,X
C - - - - - 0x014863 05:8853: F0 26     BEQ bra_887B
C - - - - - 0x014865 05:8855: BD 10 07  LDA ram_0710_obj,X
C - - - - - 0x014868 05:8858: 4A        LSR
C - - - - - 0x014869 05:8859: 90 32     BCC bra_888D
C - - - - - 0x01486B 05:885B: 4A        LSR
C - - - - - 0x01486C 05:885C: B0 12     BCS bra_8870
C - - - - - 0x01486E 05:885E: BD 02 07  LDA ram_0702_obj,X
C - - - - - 0x014871 05:8861: 4A        LSR
C - - - - - 0x014872 05:8862: 90 29     BCC bra_888D
C - - - - - 0x014874 05:8864: FE 80 07  INC ram_0780_obj,X
C - - - - - 0x014877 05:8867: BD 80 07  LDA ram_0780_obj,X
C - - - - - 0x01487A 05:886A: C9 10     CMP #$10
C - - - - - 0x01487C 05:886C: 90 1F     BCC bra_888D
C - - - - - 0x01487E 05:886E: B0 0B     BCS bra_887B    ; jmp
bra_8870:
C - - - - - 0x014880 05:8870: BD 02 07  LDA ram_0702_obj,X
C - - - - - 0x014883 05:8873: 4A        LSR
C - - - - - 0x014884 05:8874: 90 17     BCC bra_888D
C - - - - - 0x014886 05:8876: DE 80 07  DEC ram_0780_obj,X
C - - - - - 0x014889 05:8879: D0 12     BNE bra_888D
bra_887B:
C - - - - - 0x01488B 05:887B: FE 10 07  INC ram_0710_obj,X
C - - - - - 0x01488E 05:887E: BD 10 07  LDA ram_0710_obj,X
C - - - - - 0x014891 05:8881: 29 03     AND #$03
C - - - - - 0x014893 05:8883: 9D 10 07  STA ram_0710_obj,X
C - - - - - 0x014896 05:8886: A8        TAY
C - - - - - 0x014897 05:8887: B9 DE 88  LDA tbl_88DE,Y
C - - - - - 0x01489A 05:888A: 9D 02 07  STA ram_0702_obj,X
bra_888D:
C - - - - - 0x01489D 05:888D: 20 0B AB  JSR sub_0x006B1B_set_target_on_closest_player_X_pos
C - - - - - 0x0148A0 05:8890: 98        TYA
C - - - - - 0x0148A1 05:8891: 9D 64 07  STA ram_0764_obj,X
C - - - - - 0x0148A4 05:8894: 20 95 F4  JSR sub_0x01F4A5
C - - - - - 0x0148A7 05:8897: BC 56 07  LDY ram_0756_obj,X
C - - - - - 0x0148AA 05:889A: B9 CE 88  LDA tbl_88CE_animation,Y
C - - - - - 0x0148AD 05:889D: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x0148B0 05:88A0: B9 D6 88  LDA tbl_88D6_spr_attr,Y
C - - - - - 0x0148B3 05:88A3: 9D 56 05  STA ram_attr_spr_enemy,X
C - - - - - 0x0148B6 05:88A6: 20 8A 89  JSR sub_898A
C - - - - - 0x0148B9 05:88A9: 20 29 89  JSR sub_8929
C - - - - - 0x0148BC 05:88AC: DE F4 06  DEC ram_06F4_obj,X
C - - - - - 0x0148BF 05:88AF: D0 1C     BNE bra_88CD_RTS
C - - - - - 0x0148C1 05:88B1: BD 56 07  LDA ram_0756_obj,X
C - - - - - 0x0148C4 05:88B4: C9 06     CMP #$06
C - - - - - 0x0148C6 05:88B6: F0 10     BEQ bra_88C8
C - - - - - 0x0148C8 05:88B8: BD 64 07  LDA ram_0764_obj,X
C - - - - - 0x0148CB 05:88BB: 85 0A     STA ram_000A
C - - - - - 0x0148CD 05:88BD: 20 AE AA  JSR sub_0x006ABE
C - - - - - 0x0148D0 05:88C0: A0 03     LDY #$03
C - - - - - 0x0148D2 05:88C2: 20 27 F3  JSR sub_0x01F337
C - - - - - 0x0148D5 05:88C5: 20 FB 88  JSR sub_88FB
bra_88C8:
C - - - - - 0x0148D8 05:88C8: A9 43     LDA #$43
C - - - - - 0x0148DA 05:88CA: 9D F4 06  STA ram_06F4_obj,X
bra_88CD_RTS:
C - - - - - 0x0148DD 05:88CD: 60        RTS



tbl_88CE_animation:
- D 0 - - - 0x0148DE 05:88CE: 50        .byte $50   ; 00 
- D 0 - - - 0x0148DF 05:88CF: 4F        .byte $4F   ; 01 
- D 0 - - - 0x0148E0 05:88D0: 4E        .byte $4E   ; 02 
- D 0 - - - 0x0148E1 05:88D1: 4F        .byte $4F   ; 03 
- D 0 - - - 0x0148E2 05:88D2: 50        .byte $50   ; 04 
- D 0 - - - 0x0148E3 05:88D3: 50        .byte $50   ; 05 
- D 0 - - - 0x0148E4 05:88D4: 50        .byte $50   ; 06 
- D 0 - - - 0x0148E5 05:88D5: 50        .byte $50   ; 07 



tbl_88D6_spr_attr:
- D 0 - - - 0x0148E6 05:88D6: 43        .byte $43   ; 00 
- D 0 - - - 0x0148E7 05:88D7: 43        .byte $43   ; 01 
- D 0 - - - 0x0148E8 05:88D8: 03        .byte $03   ; 02 
- D 0 - - - 0x0148E9 05:88D9: 03        .byte $03   ; 03 
- D 0 - - - 0x0148EA 05:88DA: 03        .byte $03   ; 04 
- D 0 - - - 0x0148EB 05:88DB: 03        .byte $03   ; 05 
- D 0 - - - 0x0148EC 05:88DC: 03        .byte $03   ; 06 
- D 0 - - - 0x0148ED 05:88DD: 43        .byte $43   ; 07 



tbl_88DE:
- D 0 - - - 0x0148EE 05:88DE: 80        .byte $80   ; 00 
- D 0 - - - 0x0148EF 05:88DF: 00        .byte $00   ; 01 
- D 0 - - - 0x0148F0 05:88E0: 80        .byte $80   ; 02 
- D 0 - - - 0x0148F1 05:88E1: 00        .byte $00   ; 03 



ofs_038_69_88E2_06:
C - - J - - 0x0148F2 05:88E2: 20 2C 89  JSR sub_892C
C - - - - - 0x0148F5 05:88E5: 4C B8 A3  JMP loc_0x0063C8_boss_starts_exploding



ofs_038_69_88E8_07:
C - - J - - 0x0148F8 05:88E8: 20 2C 89  JSR sub_892C
C - - - - - 0x0148FB 05:88EB: 4C D8 A3  JMP loc_0x0063E8



ofs_038_69_88EE_08:
C - - J - - 0x0148FE 05:88EE: 20 8C FC  JSR sub_0x01FC9C_increase_002B
C - - - - - 0x014901 05:88F1: 4C A2 A2  JMP loc_0x0062B2



ofs_038_69_88F4_0A:
C - - J - - 0x014904 05:88F4: A9 00     LDA #con_mirroring_V
C - - - - - 0x014906 05:88F6: 85 26     STA ram_for_A000
C - - - - - 0x014908 05:88F8: 4C 37 A3  JMP loc_0x006347_delete_object_boss



sub_88FB:
C - - - - - 0x01490B 05:88FB: D0 1B     BNE bra_8918_RTS
C - - - - - 0x01490D 05:88FD: BC 56 07  LDY ram_0756_obj,X
C - - - - - 0x014910 05:8900: A6 11     LDX ram_0011
C - - - - - 0x014912 05:8902: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x014915 05:8905: 18        CLC
C - - - - - 0x014916 05:8906: 79 19 89  ADC tbl_8919_pos_Y,Y
C - - - - - 0x014919 05:8909: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x01491C 05:890C: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x01491F 05:890F: 18        CLC
C - - - - - 0x014920 05:8910: 79 21 89  ADC tbl_8921_pos_X,Y
C - - - - - 0x014923 05:8913: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x014926 05:8916: A6 10     LDX ram_0010
bra_8918_RTS:
C - - - - - 0x014928 05:8918: 60        RTS



tbl_8919_pos_Y:
- D 0 - - - 0x014929 05:8919: EC        .byte $EC   ; 00 
- D 0 - - - 0x01492A 05:891A: F6        .byte $F6   ; 01 
- D 0 - - - 0x01492B 05:891B: F8        .byte $F8   ; 02 
- D 0 - - - 0x01492C 05:891C: F6        .byte $F6   ; 03 
- D 0 - - - 0x01492D 05:891D: EC        .byte $EC   ; 04 
- D 0 - - - 0x01492E 05:891E: EC        .byte $EC   ; 05 
- - - - - - 0x01492F 05:891F: EC        .byte $EC   ; 06 
- D 0 - - - 0x014930 05:8920: EC        .byte $EC   ; 07 



tbl_8921_pos_X:
- D 0 - - - 0x014931 05:8921: 0E        .byte $0E   ; 00 
- D 0 - - - 0x014932 05:8922: 0C        .byte $0C   ; 01 
- D 0 - - - 0x014933 05:8923: 00        .byte $00   ; 02 
- D 0 - - - 0x014934 05:8924: F4        .byte $F4   ; 03 
- D 0 - - - 0x014935 05:8925: F2        .byte $F2   ; 04 
- D 0 - - - 0x014936 05:8926: F2        .byte $F2   ; 05 
- - - - - - 0x014937 05:8927: 00        .byte $00   ; 06 
- D 0 - - - 0x014938 05:8928: 0E        .byte $0E   ; 07 



sub_8929:
C - - - - - 0x014939 05:8929: 20 5D A7  JSR sub_0x00676D
sub_892C:
C - - - - - 0x01493C 05:892C: 20 4F AA  JSR sub_0x006A5F
sub_892F:
C - - - - - 0x01493F 05:892F: A5 F9     LDA ram_00F9_scroll_Y
C - - - - - 0x014941 05:8931: 29 07     AND #$07
C - - - - - 0x014943 05:8933: 85 46     STA ram_0046
C - - - - - 0x014945 05:8935: A9 27     LDA #$27
C - - - - - 0x014947 05:8937: 38        SEC
C - - - - - 0x014948 05:8938: E5 46     SBC ram_0046
C - - - - - 0x01494A 05:893A: 85 45     STA ram_scanline
C - - - - - 0x01494C 05:893C: E6 46     INC ram_0046
C - - - - - 0x01494E 05:893E: A9 97     LDA #$97
C - - - - - 0x014950 05:8940: 85 47     STA ram_0047
C - - - - - 0x014952 05:8942: A0 08     LDY #$08
C - - - - - 0x014954 05:8944: A5 FB     LDA ram_00FB_for_2000
C - - - - - 0x014956 05:8946: 29 02     AND #$02
C - - - - - 0x014958 05:8948: F0 02     BEQ bra_894C
C - - - - - 0x01495A 05:894A: A0 0B     LDY #$0B
bra_894C:
C - - - - - 0x01495C 05:894C: 84 4B     STY ram_004B
C - - - - - 0x01495E 05:894E: A5 F9     LDA ram_00F9_scroll_Y
C - - - - - 0x014960 05:8950: 29 F8     AND #$F8
C - - - - - 0x014962 05:8952: 0A        ASL
C - - - - - 0x014963 05:8953: 26 4B     ROL ram_004B
C - - - - - 0x014965 05:8955: 0A        ASL
C - - - - - 0x014966 05:8956: 26 4B     ROL ram_004B
C - - - - - 0x014968 05:8958: 85 4A     STA ram_004A
C - - - - - 0x01496A 05:895A: 60        RTS



sub_895B:
loc_895B:
C D 0 - - - 0x01496B 05:895B: BD 72 07  LDA ram_0772_obj,X
C - - - - - 0x01496E 05:895E: 0A        ASL
C - - - - - 0x01496F 05:895F: 0A        ASL
C - - - - - 0x014970 05:8960: A8        TAY
C - - - - - 0x014971 05:8961: B9 7A 89  LDA tbl_897A_speed,Y
C - - - - - 0x014974 05:8964: 9D A0 06  STA ram_spd_Y_lo_obj,X
C - - - - - 0x014977 05:8967: B9 7B 89  LDA tbl_897A_speed + $01,Y
C - - - - - 0x01497A 05:896A: 9D AE 06  STA ram_spd_Y_hi_obj,X
C - - - - - 0x01497D 05:896D: B9 7C 89  LDA tbl_897A_speed + $02,Y
C - - - - - 0x014980 05:8970: 9D BC 06  STA ram_spd_X_lo_obj,X
C - - - - - 0x014983 05:8973: B9 7D 89  LDA tbl_897A_speed + $03,Y
C - - - - - 0x014986 05:8976: 9D CA 06  STA ram_spd_X_hi_obj,X
C - - - - - 0x014989 05:8979: 60        RTS



tbl_897A_speed:
; 00 
- D 0 - - - 0x01498A 05:897A: 00 00     .word $0000 ; Y
- D 0 - - - 0x01498C 05:897C: 00 00     .word $0000 ; X
; 01 
- D 0 - - - 0x01498E 05:897E: 00 00     .word $0000 ; Y
- D 0 - - - 0x014990 05:8980: 60 00     .word $0060 ; X
; 02 
- D 0 - - - 0x014992 05:8982: 40 00     .word $0040 ; Y
- D 0 - - - 0x014994 05:8984: 00 00     .word $0000 ; X
; 03 
- D 0 - - - 0x014996 05:8986: C0 FF     .word $FFC0 ; Y
- D 0 - - - 0x014998 05:8988: 00 00     .word $0000 ; X



sub_898A:
C - - - - - 0x01499A 05:898A: BD 72 07  LDA ram_0772_obj,X
C - - - - - 0x01499D 05:898D: 20 09 E6  JSR sub_0x01E619_jump_to_pointers_after_jsr
- D 0 - I - 0x0149A0 05:8990: 98 89     .word ofs_030_8998_00
- D 0 - I - 0x0149A2 05:8992: A6 89     .word ofs_030_89A6_01
- D 0 - I - 0x0149A4 05:8994: C5 89     .word ofs_030_89C5_02
- D 0 - I - 0x0149A6 05:8996: EF 89     .word ofs_030_89EF_03



ofs_030_8998_00:
C - - J - - 0x0149A8 05:8998: FE 72 07  INC ram_0772_obj,X
C - - - - - 0x0149AB 05:899B: 20 5B 89  JSR sub_895B
C - - - - - 0x0149AE 05:899E: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x0149B1 05:89A1: 10 53     BPL bra_89F6_RTS
C - - - - - 0x0149B3 05:89A3: 4C DC A7  JMP loc_0x0067EC_inverse_spd_X



ofs_030_89A6_01:
C - - J - - 0x0149B6 05:89A6: BD CA 06  LDA ram_spd_X_hi_obj,X
C - - - - - 0x0149B9 05:89A9: 2A        ROL
C - - - - - 0x0149BA 05:89AA: 2A        ROL
C - - - - - 0x0149BB 05:89AB: 29 01     AND #$01
C - - - - - 0x0149BD 05:89AD: A8        TAY
C - - - - - 0x0149BE 05:89AE: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x0149C1 05:89B1: D9 F7 89  CMP tbl_89F7_pos_X,Y
C - - - - - 0x0149C4 05:89B4: 6A        ROR
C - - - - - 0x0149C5 05:89B5: 5D CA 06  EOR ram_spd_X_hi_obj,X
C - - - - - 0x0149C8 05:89B8: 10 3C     BPL bra_89F6_RTS
C - - - - - 0x0149CA 05:89BA: A9 20     LDA #$20
C - - - - - 0x0149CC 05:89BC: 9D E6 06  STA ram_06E6_obj,X
bra_89BF:
C - - - - - 0x0149CF 05:89BF: FE 72 07  INC ram_0772_obj,X
C - - - - - 0x0149D2 05:89C2: 4C 5B 89  JMP loc_895B



ofs_030_89C5_02:
C - - J - - 0x0149D5 05:89C5: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x0149D8 05:89C8: C9 88     CMP #$88
C - - - - - 0x0149DA 05:89CA: B0 F3     BCS bra_89BF
C - - - - - 0x0149DC 05:89CC: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x0149DF 05:89CF: D0 25     BNE bra_89F6_RTS
C - - - - - 0x0149E1 05:89D1: 69 20     ADC #$20
C - - - - - 0x0149E3 05:89D3: 85 08     STA ram_0008
C - - - - - 0x0149E5 05:89D5: A4 CA     LDY ram_plr_game_over
C - - - - - 0x0149E7 05:89D7: D0 05     BNE bra_89DE
C - - - - - 0x0149E9 05:89D9: CD 32 05  CMP ram_pos_Y_hi_plr
C - - - - - 0x0149EC 05:89DC: 90 09     BCC bra_89E7
bra_89DE:
C - - - - - 0x0149EE 05:89DE: A4 CB     LDY ram_plr_game_over + $01
C - - - - - 0x0149F0 05:89E0: D0 DD     BNE bra_89BF
C - - - - - 0x0149F2 05:89E2: CD 33 05  CMP ram_pos_Y_hi_plr + $01
C - - - - - 0x0149F5 05:89E5: B0 D8     BCS bra_89BF
bra_89E7:
C - - - - - 0x0149F7 05:89E7: A9 00     LDA #$00
C - - - - - 0x0149F9 05:89E9: 9D 72 07  STA ram_0772_obj,X
C - - - - - 0x0149FC 05:89EC: 4C 5B 89  JMP loc_895B



ofs_030_89EF_03:
C - - J - - 0x0149FF 05:89EF: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x014A02 05:89F2: C9 60     CMP #$60
C - - - - - 0x014A04 05:89F4: 90 F1     BCC bra_89E7
bra_89F6_RTS:
C - - - - - 0x014A06 05:89F6: 60        RTS



tbl_89F7_pos_X:
- D 0 - - - 0x014A07 05:89F7: C0        .byte $C0   ; 00 
- D 0 - - - 0x014A08 05:89F8: 40        .byte $40   ; 01 



_off001_0x014A09_6A_boss_2_red_tankman:
- D 0 - I - 0x014A09 05:89F9: 07 8A     .word ofs_038_6A_8A07_01_initialize_object ; 
- D 0 - I - 0x014A0B 05:89FB: 26 8A     .word ofs_038_6A_8A26_02 ; 
- D 0 - I - 0x014A0D 05:89FD: 74 8A     .word ofs_038_6A_8A74_03 ; 
- D 0 - I - 0x014A0F 05:89FF: 7A 8A     .word ofs_038_6A_8A7A_04 ; 
- D 0 - I - 0x014A11 05:8A01: 80 8A     .word ofs_038_6A_8A80_05 ; 
- D 0 - I - 0x014A13 05:8A03: 89 8A     .word ofs_038_6A_8A89_06 ; 
- D 0 - I - 0x014A15 05:8A05: 8F 8A     .word ofs_038_6A_8A8F_07 ; 



ofs_038_6A_8A07_01_initialize_object:
C - - J - - 0x014A17 05:8A07: A9 10     LDA #$10
C - - - - - 0x014A19 05:8A09: 20 95 AB  JSR sub_0x006BA5_set_dynamic_hp_to_enemy
C - - - - - 0x014A1C 05:8A0C: A9 06     LDA #$06
C - - - - - 0x014A1E 05:8A0E: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x014A21 05:8A11: A9 03     LDA #$03
C - - - - - 0x014A23 05:8A13: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x014A26 05:8A16: BC 1E 07  LDY ram_obj_flags,X
C - - - - - 0x014A29 05:8A19: B9 24 8A  LDA tbl_8A24,Y
C - - - - - 0x014A2C 05:8A1C: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x014A2F 05:8A1F: A9 01     LDA #$01
C - - - - - 0x014A31 05:8A21: 4C E0 A2  JMP loc_0x0062F0



tbl_8A24:
- D 0 - - - 0x014A34 05:8A24: 27        .byte $27   ; 00 
- D 0 - - - 0x014A35 05:8A25: 35        .byte $35   ; 01 



ofs_038_6A_8A26_02:
C - - J - - 0x014A36 05:8A26: 20 0B AB  JSR sub_0x006B1B_set_target_on_closest_player_X_pos
C - - - - - 0x014A39 05:8A29: 98        TYA
C - - - - - 0x014A3A 05:8A2A: 9D 72 07  STA ram_0772_obj,X
C - - - - - 0x014A3D 05:8A2D: 20 95 F4  JSR sub_0x01F4A5
C - - - - - 0x014A40 05:8A30: BC 56 07  LDY ram_0756_obj,X
C - - - - - 0x014A43 05:8A33: B9 64 8A  LDA tbl_8A64_animation,Y
C - - - - - 0x014A46 05:8A36: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x014A49 05:8A39: B9 6C 8A  LDA tbl_8A6C_spr_attr,Y
C - - - - - 0x014A4C 05:8A3C: 20 19 87  JSR sub_8719
C - - - - - 0x014A4F 05:8A3F: 20 95 8A  JSR sub_8A95
C - - - - - 0x014A52 05:8A42: DE F4 06  DEC ram_06F4_obj,X
C - - - - - 0x014A55 05:8A45: D0 1C     BNE bra_8A63_RTS
C - - - - - 0x014A57 05:8A47: BD 56 07  LDA ram_0756_obj,X
C - - - - - 0x014A5A 05:8A4A: C9 06     CMP #$06
C - - - - - 0x014A5C 05:8A4C: F0 10     BEQ bra_8A5E
C - - - - - 0x014A5E 05:8A4E: BD 72 07  LDA ram_0772_obj,X
C - - - - - 0x014A61 05:8A51: 85 0A     STA ram_000A
C - - - - - 0x014A63 05:8A53: 20 AE AA  JSR sub_0x006ABE
C - - - - - 0x014A66 05:8A56: A0 03     LDY #$03
C - - - - - 0x014A68 05:8A58: 20 27 F3  JSR sub_0x01F337
C - - - - - 0x014A6B 05:8A5B: 20 B2 8A  JSR sub_8AB2
bra_8A5E:
C - - - - - 0x014A6E 05:8A5E: A9 55     LDA #$55
C - - - - - 0x014A70 05:8A60: 9D F4 06  STA ram_06F4_obj,X
bra_8A63_RTS:
C - - - - - 0x014A73 05:8A63: 60        RTS



tbl_8A64_animation:
- D 0 - - - 0x014A74 05:8A64: 4D        .byte $4D   ; 00 
- D 0 - - - 0x014A75 05:8A65: 4C        .byte $4C   ; 01 
- D 0 - - - 0x014A76 05:8A66: 4B        .byte $4B   ; 02 
- D 0 - - - 0x014A77 05:8A67: 4C        .byte $4C   ; 03 
- D 0 - - - 0x014A78 05:8A68: 4D        .byte $4D   ; 04 
- D 0 - - - 0x014A79 05:8A69: 4D        .byte $4D   ; 05 
- D 0 - - - 0x014A7A 05:8A6A: 4D        .byte $4D   ; 06 
- D 0 - - - 0x014A7B 05:8A6B: 4D        .byte $4D   ; 07 



tbl_8A6C_spr_attr:
- D 0 - - - 0x014A7C 05:8A6C: 41        .byte $41   ; 00 
- D 0 - - - 0x014A7D 05:8A6D: 41        .byte $41   ; 01 
- D 0 - - - 0x014A7E 05:8A6E: 01        .byte $01   ; 02 
- D 0 - - - 0x014A7F 05:8A6F: 01        .byte $01   ; 03 
- D 0 - - - 0x014A80 05:8A70: 01        .byte $01   ; 04 
- D 0 - - - 0x014A81 05:8A71: 01        .byte $01   ; 05 
- D 0 - - - 0x014A82 05:8A72: 01        .byte $01   ; 06 
- D 0 - - - 0x014A83 05:8A73: 41        .byte $41   ; 07 



ofs_038_6A_8A74_03:
C - - J - - 0x014A84 05:8A74: 20 95 8A  JSR sub_8A95
C - - - - - 0x014A87 05:8A77: 4C 54 A3  JMP loc_0x006364_delete_object_06



ofs_038_6A_8A7A_04:
C - - J - - 0x014A8A 05:8A7A: 20 95 8A  JSR sub_8A95
C - - - - - 0x014A8D 05:8A7D: 4C 6B A3  JMP loc_0x00637B



ofs_038_6A_8A80_05:
C - - J - - 0x014A90 05:8A80: 20 95 8A  JSR sub_8A95
C - - - - - 0x014A93 05:8A83: 20 E5 8A  JSR sub_8AE5
C - - - - - 0x014A96 05:8A86: 4C 9A A2  JMP loc_0x0062AA



ofs_038_6A_8A89_06:
C - - J - - 0x014A99 05:8A89: 20 95 8A  JSR sub_8A95
C - - - - - 0x014A9C 05:8A8C: 4C FD A2  JMP loc_0x00630D



ofs_038_6A_8A8F_07:
C - - J - - 0x014A9F 05:8A8F: 20 95 8A  JSR sub_8A95
C - - - - - 0x014AA2 05:8A92: 4C 3D A3  JMP loc_0x00634D_delete_object_04



sub_8A95:
C - - - - - 0x014AA5 05:8A95: BC 64 07  LDY ram_0764_obj,X
C - - - - - 0x014AA8 05:8A98: B9 22 05  LDA ram_pos_Y_hi_enemy,Y
C - - - - - 0x014AAB 05:8A9B: 18        CLC
C - - - - - 0x014AAC 05:8A9C: 69 01     ADC #$01
C - - - - - 0x014AAE 05:8A9E: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x014AB1 05:8AA1: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x014AB4 05:8AA4: 4A        LSR
C - - - - - 0x014AB5 05:8AA5: A9 1C     LDA #$1C
C - - - - - 0x014AB7 05:8AA7: 90 02     BCC bra_8AAB
C - - - - - 0x014AB9 05:8AA9: A9 E3     LDA #$E3
bra_8AAB:
C - - - - - 0x014ABB 05:8AAB: 79 3C 05  ADC ram_pos_X_hi_enemy,Y
C - - - - - 0x014ABE 05:8AAE: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x014AC1 05:8AB1: 60        RTS



sub_8AB2:
C - - - - - 0x014AC2 05:8AB2: D0 20     BNE bra_8AD4_RTS
C - - - - - 0x014AC4 05:8AB4: A9 06     LDA #$06
C - - - - - 0x014AC6 05:8AB6: 9D 80 07  STA ram_0780_obj,X
C - - - - - 0x014AC9 05:8AB9: BC 56 07  LDY ram_0756_obj,X
C - - - - - 0x014ACC 05:8ABC: A6 11     LDX ram_0011
C - - - - - 0x014ACE 05:8ABE: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x014AD1 05:8AC1: 18        CLC
C - - - - - 0x014AD2 05:8AC2: 79 D5 8A  ADC tbl_8AD5_pos_Y,Y
C - - - - - 0x014AD5 05:8AC5: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x014AD8 05:8AC8: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x014ADB 05:8ACB: 18        CLC
C - - - - - 0x014ADC 05:8ACC: 79 DD 8A  ADC tbl_8ADD_pos_X,Y
C - - - - - 0x014ADF 05:8ACF: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x014AE2 05:8AD2: A6 10     LDX ram_0010
bra_8AD4_RTS:
C - - - - - 0x014AE4 05:8AD4: 60        RTS



tbl_8AD5_pos_Y:
- D 0 - - - 0x014AE5 05:8AD5: 08        .byte $08   ; 00 
- D 0 - - - 0x014AE6 05:8AD6: 12        .byte $12   ; 01 
- D 0 - - - 0x014AE7 05:8AD7: 14        .byte $14   ; 02 
- D 0 - - - 0x014AE8 05:8AD8: 12        .byte $12   ; 03 
- D 0 - - - 0x014AE9 05:8AD9: 08        .byte $08   ; 04 
- D 0 - - - 0x014AEA 05:8ADA: 08        .byte $08   ; 05 
- - - - - - 0x014AEB 05:8ADB: 08        .byte $08   ; 06 
- D 0 - - - 0x014AEC 05:8ADC: 08        .byte $08   ; 07 



tbl_8ADD_pos_X:
- D 0 - - - 0x014AED 05:8ADD: 0E        .byte $0E   ; 00 
- D 0 - - - 0x014AEE 05:8ADE: 0C        .byte $0C   ; 01 
- D 0 - - - 0x014AEF 05:8ADF: 00        .byte $00   ; 02 
- D 0 - - - 0x014AF0 05:8AE0: F4        .byte $F4   ; 03 
- D 0 - - - 0x014AF1 05:8AE1: F2        .byte $F2   ; 04 
- D 0 - - - 0x014AF2 05:8AE2: F2        .byte $F2   ; 05 
- - - - - - 0x014AF3 05:8AE3: 00        .byte $00   ; 06 
- D 0 - - - 0x014AF4 05:8AE4: 0E        .byte $0E   ; 07 



sub_8AE5:
C - - - - - 0x014AF5 05:8AE5: A0 00     LDY #$00
C - - - - - 0x014AF7 05:8AE7: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x014AFA 05:8AEA: F0 02     BEQ bra_8AEE
C - - - - - 0x014AFC 05:8AEC: A0 1E     LDY # off_8B1F - tbl_8B01
bra_8AEE:
C - - - - - 0x014AFE 05:8AEE: A6 1E     LDX ram_index_ppu_buffer
bra_8AF0_loop:
C - - - - - 0x014B00 05:8AF0: B9 01 8B  LDA tbl_8B01,Y
C - - - - - 0x014B03 05:8AF3: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x014B06 05:8AF6: E8        INX
C - - - - - 0x014B07 05:8AF7: C8        INY
C - - - - - 0x014B08 05:8AF8: C9 FF     CMP #$FF
C - - - - - 0x014B0A 05:8AFA: D0 F4     BNE bra_8AF0_loop
C - - - - - 0x014B0C 05:8AFC: 86 1E     STX ram_index_ppu_buffer
C - - - - - 0x014B0E 05:8AFE: A6 10     LDX ram_0010
C - - - - - 0x014B10 05:8B00: 60        RTS



tbl_8B01:
; 00
- D 0 - - - 0x014B11 05:8B01: 06        .byte con_buf_mode_06   ; 

- D 0 - - - 0x014B12 05:8B02: 2D 52     .dbyt $2D52 ; ppu address
- D 0 - - - 0x014B14 05:8B04: 04        .byte $04   ; counter
- D 0 - - - 0x014B15 05:8B05: E5        .byte $E5, $E6, $E7, $B3   ; tiles

- D 0 - - - 0x014B19 05:8B09: 2D 72     .dbyt $2D72 ; ppu address
- D 0 - - - 0x014B1B 05:8B0B: 04        .byte $04   ; counter
- D 0 - - - 0x014B1C 05:8B0C: E8        .byte $E8, $E9, $E8, $BA   ; tiles

- D 0 - - - 0x014B20 05:8B10: 2D 92     .dbyt $2D92 ; ppu address
- D 0 - - - 0x014B22 05:8B12: 04        .byte $04   ; counter
- D 0 - - - 0x014B23 05:8B13: EA        .byte $EA, $00, $F1, $C0   ; tiles

- D 0 - - - 0x014B27 05:8B17: 2D B2     .dbyt $2DB2 ; ppu address
- D 0 - - - 0x014B29 05:8B19: 04        .byte $04   ; counter
- D 0 - - - 0x014B2A 05:8B1A: F2        .byte $F2, $00, $F2, $C5   ; tiles

- D 0 - - - 0x014B2E 05:8B1E: FF        .byte $FF   ; end token



off_8B1F:
; 1E
- D 0 - - - 0x014B2F 05:8B1F: 06        .byte con_buf_mode_06   ; 

- D 0 - - - 0x014B30 05:8B20: 2D 4A     .dbyt $2D4A ; ppu address
- D 0 - - - 0x014B32 05:8B22: 04        .byte $04   ; counter
- D 0 - - - 0x014B33 05:8B23: AD        .byte $AD, $E5, $E6, $E7   ; tiles

- D 0 - - - 0x014B37 05:8B27: 2D 6A     .dbyt $2D6A ; ppu address
- D 0 - - - 0x014B39 05:8B29: 04        .byte $04   ; counter
- D 0 - - - 0x014B3A 05:8B2A: B4        .byte $B4, $E8, $E9, $E8   ; tiles

- D 0 - - - 0x014B3E 05:8B2E: 2D 8A     .dbyt $2D8A ; ppu address
- D 0 - - - 0x014B40 05:8B30: 04        .byte $04   ; counter
- D 0 - - - 0x014B41 05:8B31: 20        .byte $20, $EA, $00, $F1   ; tiles

- D 0 - - - 0x014B45 05:8B35: 2D AA     .dbyt $2DAA ; ppu address
- D 0 - - - 0x014B47 05:8B37: 04        .byte $04   ; counter
- D 0 - - - 0x014B48 05:8B38: C1        .byte $C1, $F2, $00, $F2   ; tiles

- D 0 - - - 0x014B4C 05:8B3C: FF        .byte $FF   ; end token



_off001_0x014B4D_36_tank_electricity:
- D 0 - I - 0x014B4D 05:8B3D: 43 8B     .word ofs_038_36_8B43_01_initialize_object ; 
- D 0 - I - 0x014B4F 05:8B3F: 4B 8B     .word ofs_038_36_8B4B_02 ; 
- D 0 - I - 0x014B51 05:8B41: 75 A2     .word ofs_038_36_0x006285_03_delete_object_02 ; 



ofs_038_36_8B43_01_initialize_object:
C - - J - - 0x014B53 05:8B43: A9 80     LDA #$80
C - - - - - 0x014B55 05:8B45: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x014B58 05:8B48: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_36_8B4B_02:
C - - J - - 0x014B5B 05:8B4B: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x014B5E 05:8B4E: 4A        LSR
C - - - - - 0x014B5F 05:8B4F: 90 08     BCC bra_8B59
C - - - - - 0x014B61 05:8B51: A9 54     LDA #$54
C - - - - - 0x014B63 05:8B53: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x014B66 05:8B56: 4C 66 8B  JMP loc_8B66
bra_8B59:
C - - - - - 0x014B69 05:8B59: A5 5B     LDA ram_frm_cnt_2
C - - - - - 0x014B6B 05:8B5B: 29 03     AND #$03
C - - - - - 0x014B6D 05:8B5D: 18        CLC
C - - - - - 0x014B6E 05:8B5E: 69 55     ADC #$55
C - - - - - 0x014B70 05:8B60: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x014B73 05:8B63: 4C 6A 8B  JMP loc_8B6A



loc_8B66:
C D 0 - - - 0x014B76 05:8B66: A9 00     LDA #$00
C - - - - - 0x014B78 05:8B68: F0 06     BEQ bra_8B70    ; jmp



loc_8B6A:
C D 0 - - - 0x014B7A 05:8B6A: BC 64 07  LDY ram_0764_obj,X
C - - - - - 0x014B7D 05:8B6D: B9 80 07  LDA ram_0780_obj,Y
bra_8B70:
C - - - - - 0x014B80 05:8B70: BC 64 07  LDY ram_0764_obj,X
C - - - - - 0x014B83 05:8B73: 18        CLC
C - - - - - 0x014B84 05:8B74: 79 22 05  ADC ram_pos_Y_hi_enemy,Y
C - - - - - 0x014B87 05:8B77: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x014B8A 05:8B7A: B9 3C 05  LDA ram_pos_X_hi_enemy,Y
C - - - - - 0x014B8D 05:8B7D: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x014B90 05:8B80: 60        RTS



_off001_0x014B91_25_moving_gun:
- D 0 - I - 0x014B91 05:8B81: 8B 8B     .word ofs_038_25_8B8B_01_initialize_object ; 
- D 0 - I - 0x014B93 05:8B83: AF 8B     .word ofs_038_25_8BAF_02 ; 
- D 0 - I - 0x014B95 05:8B85: 9A A2     .word ofs_038_25_0x0062AA_03 ; 
- D 0 - I - 0x014B97 05:8B87: FD A2     .word ofs_038_25_0x00630D_04 ; 
- D 0 - I - 0x014B99 05:8B89: 3D A3     .word ofs_038_25_0x00634D_05_delete_object_04 ; 



ofs_038_25_8B8B_01_initialize_object:
C - - J - - 0x014B9B 05:8B8B: A9 04     LDA #$04
C - - - - - 0x014B9D 05:8B8D: 20 95 AB  JSR sub_0x006BA5_set_dynamic_hp_to_enemy
C - - - - - 0x014BA0 05:8B90: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x014BA3 05:8B93: 29 01     AND #$01
C - - - - - 0x014BA5 05:8B95: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x014BA8 05:8B98: 20 41 8C  JSR sub_8C41
C - - - - - 0x014BAB 05:8B9B: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x014BAE 05:8B9E: 18        CLC
C - - - - - 0x014BAF 05:8B9F: 69 0A     ADC #$0A
C - - - - - 0x014BB1 05:8BA1: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x014BB4 05:8BA4: A9 27     LDA #$27
C - - - - - 0x014BB6 05:8BA6: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x014BB9 05:8BA9: 20 D3 A6  JSR sub_0x0066E3
C - - - - - 0x014BBC 05:8BAC: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_25_8BAF_02:
C - - J - - 0x014BBF 05:8BAF: 20 0B AB  JSR sub_0x006B1B_set_target_on_closest_player_X_pos
C - - - - - 0x014BC2 05:8BB2: 98        TYA
C - - - - - 0x014BC3 05:8BB3: 9D 64 07  STA ram_0764_obj,X
C - - - - - 0x014BC6 05:8BB6: B9 4C 05  LDA ram_pos_X_hi_plr,Y
C - - - - - 0x014BC9 05:8BB9: 38        SEC
C - - - - - 0x014BCA 05:8BBA: FD 3C 05  SBC ram_pos_X_hi_enemy,X
C - - - - - 0x014BCD 05:8BBD: A0 02     LDY #$02
C - - - - - 0x014BCF 05:8BBF: B0 06     BCS bra_8BC7
C - - - - - 0x014BD1 05:8BC1: A0 00     LDY #$00
C - - - - - 0x014BD3 05:8BC3: 49 FF     EOR #$FF
C - - - - - 0x014BD5 05:8BC5: 69 01     ADC #$01
bra_8BC7:
C - - - - - 0x014BD7 05:8BC7: C9 20     CMP #$20
C - - - - - 0x014BD9 05:8BC9: B0 02     BCS bra_8BCD
C - - - - - 0x014BDB 05:8BCB: A0 01     LDY #$01
bra_8BCD:
C - - - - - 0x014BDD 05:8BCD: 98        TYA
C - - - - - 0x014BDE 05:8BCE: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x014BE1 05:8BD1: B9 2D 8C  LDA tbl_8C2D_animation,Y
C - - - - - 0x014BE4 05:8BD4: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x014BE7 05:8BD7: B9 30 8C  LDA tbl_8C30_spr_attr,Y
C - - - - - 0x014BEA 05:8BDA: 9D 56 05  STA ram_attr_spr_enemy,X
C - - - - - 0x014BED 05:8BDD: 20 D3 A6  JSR sub_0x0066E3
C - - - - - 0x014BF0 05:8BE0: BD CA 06  LDA ram_spd_X_hi_obj,X
C - - - - - 0x014BF3 05:8BE3: 2A        ROL
C - - - - - 0x014BF4 05:8BE4: 2A        ROL
C - - - - - 0x014BF5 05:8BE5: 29 01     AND #$01
C - - - - - 0x014BF7 05:8BE7: A8        TAY
C - - - - - 0x014BF8 05:8BE8: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x014BFB 05:8BEB: D9 2B 8C  CMP tbl_8C2B_pos_X,Y
C - - - - - 0x014BFE 05:8BEE: 6A        ROR
C - - - - - 0x014BFF 05:8BEF: 5D CA 06  EOR ram_spd_X_hi_obj,X
C - - - - - 0x014C02 05:8BF2: 10 03     BPL bra_8BF7
C - - - - - 0x014C04 05:8BF4: 20 39 8C  JSR sub_8C39
bra_8BF7:
C - - - - - 0x014C07 05:8BF7: DE F4 06  DEC ram_06F4_obj,X
C - - - - - 0x014C0A 05:8BFA: D0 2E     BNE bra_8C2A_RTS
C - - - - - 0x014C0C 05:8BFC: BC 56 07  LDY ram_0756_obj,X
C - - - - - 0x014C0F 05:8BFF: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x014C12 05:8C02: 18        CLC
C - - - - - 0x014C13 05:8C03: 79 33 8C  ADC tbl_8C33_pos_Y,Y
C - - - - - 0x014C16 05:8C06: 85 08     STA ram_0008
C - - - - - 0x014C18 05:8C08: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x014C1B 05:8C0B: 18        CLC
C - - - - - 0x014C1C 05:8C0C: 79 36 8C  ADC tbl_8C36_pos_X,Y
C - - - - - 0x014C1F 05:8C0F: 85 09     STA ram_0009
C - - - - - 0x014C21 05:8C11: BC 64 07  LDY ram_0764_obj,X
C - - - - - 0x014C24 05:8C14: 84 0A     STY ram_000A
C - - - - - 0x014C26 05:8C16: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x014C29 05:8C19: C9 A0     CMP #$A0
C - - - - - 0x014C2B 05:8C1B: B0 0D     BCS bra_8C2A_RTS
C - - - - - 0x014C2D 05:8C1D: D9 32 05  CMP ram_pos_Y_hi_plr,Y
C - - - - - 0x014C30 05:8C20: B0 08     BCS bra_8C2A_RTS
C - - - - - 0x014C32 05:8C22: 20 25 F3  JSR sub_0x01F335
C - - - - - 0x014C35 05:8C25: A9 37     LDA #$37
C - - - - - 0x014C37 05:8C27: 9D F4 06  STA ram_06F4_obj,X
bra_8C2A_RTS:
C - - - - - 0x014C3A 05:8C2A: 60        RTS



tbl_8C2B_pos_X:
- D 0 - - - 0x014C3B 05:8C2B: E0        .byte $E0   ; 00 
- D 0 - - - 0x014C3C 05:8C2C: 20        .byte $20   ; 01 



tbl_8C2D_animation:
- D 0 - - - 0x014C3D 05:8C2D: 64        .byte $64   ; 00 
- D 0 - - - 0x014C3E 05:8C2E: 65        .byte $65   ; 01 
- D 0 - - - 0x014C3F 05:8C2F: 64        .byte $64   ; 02 



tbl_8C30_spr_attr:
- D 0 - - - 0x014C40 05:8C30: 03        .byte $03   ; 00 
- D 0 - - - 0x014C41 05:8C31: 03        .byte $03   ; 01 
- D 0 - - - 0x014C42 05:8C32: 43        .byte $43   ; 02 



tbl_8C33_pos_Y:
- D 0 - - - 0x014C43 05:8C33: 0B        .byte $0B   ; 00 
- D 0 - - - 0x014C44 05:8C34: 13        .byte $13   ; 01 
- D 0 - - - 0x014C45 05:8C35: 0B        .byte $0B   ; 02 



tbl_8C36_pos_X:
- D 0 - - - 0x014C46 05:8C36: F5        .byte $F5   ; 00 
- D 0 - - - 0x014C47 05:8C37: 00        .byte $00   ; 01 
- D 0 - - - 0x014C48 05:8C38: 0B        .byte $0B   ; 02 



sub_8C39:
C - - - - - 0x014C49 05:8C39: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x014C4C 05:8C3C: 49 01     EOR #$01
C - - - - - 0x014C4E 05:8C3E: 9D 48 07  STA ram_0748_obj,X
sub_8C41:
C - - - - - 0x014C51 05:8C41: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x014C54 05:8C44: 0A        ASL
C - - - - - 0x014C55 05:8C45: A8        TAY
C - - - - - 0x014C56 05:8C46: B9 53 8C  LDA tbl_8C53_spd_X,Y
C - - - - - 0x014C59 05:8C49: 9D BC 06  STA ram_spd_X_lo_obj,X
C - - - - - 0x014C5C 05:8C4C: B9 54 8C  LDA tbl_8C53_spd_X + $01,Y
C - - - - - 0x014C5F 05:8C4F: 9D CA 06  STA ram_spd_X_hi_obj,X
C - - - - - 0x014C62 05:8C52: 60        RTS



tbl_8C53_spd_X:
- D 0 - - - 0x014C63 05:8C53: 80 FF     .word $FF80 ; 00 
- D 0 - - - 0x014C65 05:8C55: 80 00     .word $0080 ; 01 



_off001_0x014C67_2C_falling_platform:
- D 0 - I - 0x014C67 05:8C57: 63 8C     .word ofs_038_2C_8C63_01_initialize_object ; 
- D 0 - I - 0x014C69 05:8C59: 76 8C     .word ofs_038_2C_8C76_02 ; 
- D 0 - I - 0x014C6B 05:8C5B: 85 8C     .word ofs_038_2C_8C85_03 ; 
- D 0 - I - 0x014C6D 05:8C5D: C1 8C     .word ofs_038_2C_8CC1_04 ; 
- D 0 - I - 0x014C6F 05:8C5F: 08 8D     .word ofs_038_2C_8D08_05 ; 
- D 0 - I - 0x014C71 05:8C61: A1 8D     .word ofs_038_2C_8DA1_06 ; 



ofs_038_2C_8C63_01_initialize_object:
C - - J - - 0x014C73 05:8C63: A9 01     LDA #$01
C - - - - - 0x014C75 05:8C65: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x014C78 05:8C68: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x014C7B 05:8C6B: 69 04     ADC #$04
C - - - - - 0x014C7D 05:8C6D: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x014C80 05:8C70: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x014C83 05:8C73: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_2C_8C76_02:
C - - J - - 0x014C86 05:8C76: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x014C89 05:8C79: A5 61     LDA ram_0061_area_config
C - - - - - 0x014C8B 05:8C7B: F0 07     BEQ bra_8C84_RTS
C - - - - - 0x014C8D 05:8C7D: A5 71     LDA ram_0071_scroll_type
C - - - - - 0x014C8F 05:8C7F: 10 03     BPL bra_8C84_RTS
C - - - - - 0x014C91 05:8C81: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state
bra_8C84_RTS:
C - - - - - 0x014C94 05:8C84: 60        RTS



ofs_038_2C_8C85_03:
C - - J - - 0x014C95 05:8C85: A9 01     LDA #$01
C - - - - - 0x014C97 05:8C87: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x014C9A 05:8C8A: A9 FF     LDA #$FF
C - - - - - 0x014C9C 05:8C8C: 85 08     STA ram_0008
C - - - - - 0x014C9E 05:8C8E: 85 09     STA ram_0009
C - - - - - 0x014CA0 05:8C90: A0 0F     LDY #$0F
bra_8C92_loop:
C - - - - - 0x014CA2 05:8C92: B9 A8 05  LDA ram_05A8_plr_bullet,Y
C - - - - - 0x014CA5 05:8C95: C9 01     CMP #$01
C - - - - - 0x014CA7 05:8C97: D0 16     BNE bra_8CAF
C - - - - - 0x014CA9 05:8C99: B9 88 05  LDA ram_plr_bullet_pos_X_hi,Y
C - - - - - 0x014CAC 05:8C9C: C9 38     CMP #$38
C - - - - - 0x014CAE 05:8C9E: 90 0F     BCC bra_8CAF
C - - - - - 0x014CB0 05:8CA0: C9 C8     CMP #$C8
C - - - - - 0x014CB2 05:8CA2: B0 0B     BCS bra_8CAF
C - - - - - 0x014CB4 05:8CA4: B9 78 05  LDA ram_plr_bullet_pos_Y_hi,Y
C - - - - - 0x014CB7 05:8CA7: C5 08     CMP ram_0008
C - - - - - 0x014CB9 05:8CA9: B0 04     BCS bra_8CAF
C - - - - - 0x014CBB 05:8CAB: 85 08     STA ram_0008
C - - - - - 0x014CBD 05:8CAD: 84 09     STY ram_0009
bra_8CAF:
C - - - - - 0x014CBF 05:8CAF: 88        DEY
C - - - - - 0x014CC0 05:8CB0: 10 E0     BPL bra_8C92_loop
C - - - - - 0x014CC2 05:8CB2: A9 80     LDA #$80
C - - - - - 0x014CC4 05:8CB4: A4 09     LDY ram_0009
C - - - - - 0x014CC6 05:8CB6: 30 03     BMI bra_8CBB
C - - - - - 0x014CC8 05:8CB8: B9 88 05  LDA ram_plr_bullet_pos_X_hi,Y
bra_8CBB:
C - - - - - 0x014CCB 05:8CBB: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x014CCE 05:8CBE: 4C B7 A6  JMP loc_0x0066C7_delete_object_03



ofs_038_2C_8CC1_04:
C - - J - - 0x014CD1 05:8CC1: A9 20     LDA #$20
C - - - - - 0x014CD3 05:8CC3: 8D 89 04  STA ram_0480_area_data_2 + $09
C - - - - - 0x014CD6 05:8CC6: A9 00     LDA #$00
C - - - - - 0x014CD8 05:8CC8: 8D 8A 04  STA ram_0480_area_data_2 + $0A
C - - - - - 0x014CDB 05:8CCB: 8D 8B 04  STA ram_0480_area_data_2 + $0B
C - - - - - 0x014CDE 05:8CCE: 8D 8C 04  STA ram_0480_area_data_2 + $0C
C - - - - - 0x014CE1 05:8CD1: 8D 8D 04  STA ram_0480_area_data_2 + $0D
C - - - - - 0x014CE4 05:8CD4: A9 02     LDA #$02
C - - - - - 0x014CE6 05:8CD6: 8D 8E 04  STA ram_0480_area_data_2 + $0E
C - - - - - 0x014CE9 05:8CD9: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x014CEC 05:8CDC: 38        SEC
C - - - - - 0x014CED 05:8CDD: E9 04     SBC #$04
C - - - - - 0x014CEF 05:8CDF: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x014CF2 05:8CE2: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x014CF5 05:8CE5: 29 F0     AND #$F0
C - - - - - 0x014CF7 05:8CE7: 09 04     ORA #$04
C - - - - - 0x014CF9 05:8CE9: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x014CFC 05:8CEC: 38        SEC
C - - - - - 0x014CFD 05:8CED: E9 10     SBC #$10
C - - - - - 0x014CFF 05:8CEF: C9 30     CMP #$30
C - - - - - 0x014D01 05:8CF1: B0 02     BCS bra_8CF5
- - - - - - 0x014D03 05:8CF3: A9 00     LDA #$00
bra_8CF5:
C - - - - - 0x014D05 05:8CF5: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x014D08 05:8CF8: A9 01     LDA #$01
C - - - - - 0x014D0A 05:8CFA: 9D 64 07  STA ram_0764_obj,X
C - - - - - 0x014D0D 05:8CFD: A9 10     LDA #$10
C - - - - - 0x014D0F 05:8CFF: 9D 72 07  STA ram_0772_obj,X
C - - - - - 0x014D12 05:8D02: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x014D15 05:8D05: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_2C_8D08_05:
C - - J - - 0x014D18 05:8D08: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x014D1B 05:8D0B: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x014D1E 05:8D0E: F0 40     BEQ bra_8D50
C - - - - - 0x014D20 05:8D10: DE 64 07  DEC ram_0764_obj,X
C - - - - - 0x014D23 05:8D13: D0 3B     BNE bra_8D50
C - - - - - 0x014D25 05:8D15: A9 00     LDA #$00
C - - - - - 0x014D27 05:8D17: 85 08     STA ram_0008
C - - - - - 0x014D29 05:8D19: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x014D2C 05:8D1C: 38        SEC
C - - - - - 0x014D2D 05:8D1D: E9 04     SBC #$04
C - - - - - 0x014D2F 05:8D1F: A8        TAY
C - - - - - 0x014D30 05:8D20: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x014D33 05:8D23: 20 E6 A8  JSR sub_0x0068F6
C - - - - - 0x014D36 05:8D26: A9 01     LDA #$01
C - - - - - 0x014D38 05:8D28: B0 23     BCS bra_8D4D
C - - - - - 0x014D3A 05:8D2A: A0 2D     LDY #con_obj_id_2D
C - - - - - 0x014D3C 05:8D2C: 20 C8 AB  JSR sub_0x006BD8
C - - - - - 0x014D3F 05:8D2F: 90 0B     BCC bra_8D3C
C - - - - - 0x014D41 05:8D31: A4 11     LDY ram_0011
C - - - - - 0x014D43 05:8D33: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x014D46 05:8D36: 18        CLC
C - - - - - 0x014D47 05:8D37: 69 04     ADC #$04
C - - - - - 0x014D49 05:8D39: 99 3C 05  STA ram_pos_X_hi_enemy,Y
bra_8D3C:
C - - - - - 0x014D4C 05:8D3C: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x014D4F 05:8D3F: 18        CLC
C - - - - - 0x014D50 05:8D40: 69 10     ADC #$10
C - - - - - 0x014D52 05:8D42: C9 D0     CMP #$D0
C - - - - - 0x014D54 05:8D44: 90 02     BCC bra_8D48
C - - - - - 0x014D56 05:8D46: A9 00     LDA #$00
bra_8D48:
C - - - - - 0x014D58 05:8D48: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x014D5B 05:8D4B: A9 10     LDA #$10
bra_8D4D:
C - - - - - 0x014D5D 05:8D4D: 9D 64 07  STA ram_0764_obj,X
bra_8D50:
C - - - - - 0x014D60 05:8D50: BD 56 07  LDA ram_0756_obj,X
C - - - - - 0x014D63 05:8D53: F0 40     BEQ bra_8D95
C - - - - - 0x014D65 05:8D55: DE 72 07  DEC ram_0772_obj,X
C - - - - - 0x014D68 05:8D58: D0 3B     BNE bra_8D95
C - - - - - 0x014D6A 05:8D5A: A9 00     LDA #$00
C - - - - - 0x014D6C 05:8D5C: 85 08     STA ram_0008
C - - - - - 0x014D6E 05:8D5E: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x014D71 05:8D61: 38        SEC
C - - - - - 0x014D72 05:8D62: E9 08     SBC #$08
C - - - - - 0x014D74 05:8D64: A8        TAY
C - - - - - 0x014D75 05:8D65: BD 56 07  LDA ram_0756_obj,X
C - - - - - 0x014D78 05:8D68: 20 E6 A8  JSR sub_0x0068F6
C - - - - - 0x014D7B 05:8D6B: A9 01     LDA #$01
C - - - - - 0x014D7D 05:8D6D: B0 23     BCS bra_8D92
C - - - - - 0x014D7F 05:8D6F: A0 2D     LDY #con_obj_id_2D
C - - - - - 0x014D81 05:8D71: 20 C8 AB  JSR sub_0x006BD8
C - - - - - 0x014D84 05:8D74: 90 0B     BCC bra_8D81
C - - - - - 0x014D86 05:8D76: A4 11     LDY ram_0011
C - - - - - 0x014D88 05:8D78: BD 56 07  LDA ram_0756_obj,X
C - - - - - 0x014D8B 05:8D7B: 18        CLC
C - - - - - 0x014D8C 05:8D7C: 69 04     ADC #$04
C - - - - - 0x014D8E 05:8D7E: 99 3C 05  STA ram_pos_X_hi_enemy,Y
bra_8D81:
C - - - - - 0x014D91 05:8D81: BD 56 07  LDA ram_0756_obj,X
C - - - - - 0x014D94 05:8D84: 38        SEC
C - - - - - 0x014D95 05:8D85: E9 10     SBC #$10
C - - - - - 0x014D97 05:8D87: C9 30     CMP #$30
C - - - - - 0x014D99 05:8D89: B0 02     BCS bra_8D8D
C - - - - - 0x014D9B 05:8D8B: A9 00     LDA #$00
bra_8D8D:
C - - - - - 0x014D9D 05:8D8D: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x014DA0 05:8D90: A9 10     LDA #$10
bra_8D92:
C - - - - - 0x014DA2 05:8D92: 9D 72 07  STA ram_0772_obj,X
bra_8D95:
C - - - - - 0x014DA5 05:8D95: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x014DA8 05:8D98: 1D 56 07  ORA ram_0756_obj,X
C - - - - - 0x014DAB 05:8D9B: D0 03     BNE bra_8DA0_RTS
C - - - - - 0x014DAD 05:8D9D: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state
bra_8DA0_RTS:
C - - - - - 0x014DB0 05:8DA0: 60        RTS



ofs_038_2C_8DA1_06:
C - - J - - 0x014DB1 05:8DA1: A9 40     LDA #$40
C - - - - - 0x014DB3 05:8DA3: 85 71     STA ram_0071_scroll_type
C - - - - - 0x014DB5 05:8DA5: 85 7D     STA ram_007D_scroll_type
C - - - - - 0x014DB7 05:8DA7: 4C 75 A2  JMP loc_0x006285_delete_object_02



_off001_0x014DBA_2D_spawner_falling_platforms:
- D 0 - I - 0x014DBA 05:8DAA: B4 8D     .word ofs_038_2D_8DB4_01_initialize_object ; 
- D 0 - I - 0x014DBC 05:8DAC: C4 8D     .word ofs_038_2D_8DC4_02 ; 
- D 0 - I - 0x014DBE 05:8DAE: 9A A2     .word ofs_038_2D_0x0062AA_03 ; 
- D 0 - I - 0x014DC0 05:8DB0: FD A2     .word ofs_038_2D_0x00630D_04 ; 
- D 0 - I - 0x014DC2 05:8DB2: 3D A3     .word ofs_038_2D_0x00634D_05_delete_object_04 ; 



ofs_038_2D_8DB4_01_initialize_object:
C - - J - - 0x014DC4 05:8DB4: A9 62     LDA #$62
C - - - - - 0x014DC6 05:8DB6: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x014DC9 05:8DB9: A9 04     LDA #$04
C - - - - - 0x014DCB 05:8DBB: 9D 76 06  STA ram_obj_hp,X
C - - - - - 0x014DCE 05:8DBE: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
bra_8DC1:
C - - - - - 0x014DD1 05:8DC1: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_2D_8DC4_02:
C - - J - - 0x014DD4 05:8DC4: BD A0 06  LDA ram_spd_Y_lo_obj,X
C - - - - - 0x014DD7 05:8DC7: 18        CLC
C - - - - - 0x014DD8 05:8DC8: 69 20     ADC #< $0020
C - - - - - 0x014DDA 05:8DCA: 9D A0 06  STA ram_spd_Y_lo_obj,X
C - - - - - 0x014DDD 05:8DCD: BD AE 06  LDA ram_spd_Y_hi_obj,X
C - - - - - 0x014DE0 05:8DD0: 69 00     ADC #> $0020
C - - - - - 0x014DE2 05:8DD2: 9D AE 06  STA ram_spd_Y_hi_obj,X
C - - - - - 0x014DE5 05:8DD5: 20 D3 A6  JSR sub_0x0066E3
C - - - - - 0x014DE8 05:8DD8: A9 00     LDA #$00
C - - - - - 0x014DEA 05:8DDA: 20 0A A8  JSR sub_0x00681A
C - - - - - 0x014DED 05:8DDD: D0 E2     BNE bra_8DC1
C - - - - - 0x014DEF 05:8DDF: 60        RTS



_off001_0x014DF0_31_redblue_bubble:
- D 0 - I - 0x014DF0 05:8DE0: EC 8D     .word ofs_038_31_8DEC_01_initialize_object ; 
- D 0 - I - 0x014DF2 05:8DE2: F9 8D     .word ofs_038_31_8DF9_02 ; 
- D 0 - I - 0x014DF4 05:8DE4: 19 8E     .word ofs_038_31_8E19_03 ; 
- D 0 - I - 0x014DF6 05:8DE6: 9A A2     .word ofs_038_31_0x0062AA_04 ; 
- D 0 - I - 0x014DF8 05:8DE8: FD A2     .word ofs_038_31_0x00630D_05 ; 
- D 0 - I - 0x014DFA 05:8DEA: 3D A3     .word ofs_038_31_0x00634D_06_delete_object_04 ; 



ofs_038_31_8DEC_01_initialize_object:
C - - J - - 0x014DFC 05:8DEC: A9 06     LDA #$06
C - - - - - 0x014DFE 05:8DEE: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x014E01 05:8DF1: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x014E04 05:8DF4: A9 40     LDA #$40
C - - - - - 0x014E06 05:8DF6: 4C E0 A2  JMP loc_0x0062F0



ofs_038_31_8DF9_02:
C - - J - - 0x014E09 05:8DF9: A0 05     LDY #con_0x006C32_05
C - - - - - 0x014E0B 05:8DFB: 20 FD AB  JSR sub_0x006C0D
C - - - - - 0x014E0E 05:8DFE: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x014E11 05:8E01: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x014E14 05:8E04: D0 12     BNE bra_8E18_RTS
C - - - - - 0x014E16 05:8E06: 20 0B AB  JSR sub_0x006B1B_set_target_on_closest_player_X_pos
C - - - - - 0x014E19 05:8E09: A0 06     LDY #$06
C - - - - - 0x014E1B 05:8E0B: 20 57 A9  JSR sub_0x006967
C - - - - - 0x014E1E 05:8E0E: A9 20     LDA #$20
C - - - - - 0x014E20 05:8E10: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x014E23 05:8E13: A9 30     LDA #$30
C - - - - - 0x014E25 05:8E15: 4C E0 A2  JMP loc_0x0062F0
bra_8E18_RTS:
C - - - - - 0x014E28 05:8E18: 60        RTS



ofs_038_31_8E19_03:
C - - J - - 0x014E29 05:8E19: A0 06     LDY #con_0x006C32_06
C - - - - - 0x014E2B 05:8E1B: 20 FD AB  JSR sub_0x006C0D
C - - - - - 0x014E2E 05:8E1E: BD 56 07  LDA ram_0756_obj,X
C - - - - - 0x014E31 05:8E21: F0 15     BEQ bra_8E38
C - - - - - 0x014E33 05:8E23: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x014E36 05:8E26: D0 10     BNE bra_8E38
C - - - - - 0x014E38 05:8E28: A9 06     LDA #$06
C - - - - - 0x014E3A 05:8E2A: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x014E3D 05:8E2D: 20 0B AB  JSR sub_0x006B1B_set_target_on_closest_player_X_pos
C - - - - - 0x014E40 05:8E30: A0 06     LDY #$06
C - - - - - 0x014E42 05:8E32: 20 23 A9  JSR sub_0x006933
C - - - - - 0x014E45 05:8E35: DE 56 07  DEC ram_0756_obj,X
bra_8E38:
C - - - - - 0x014E48 05:8E38: 4C D3 A6  JMP loc_0x0066E3



_off001_0x014E4B_39_elevator:
- D 0 - I - 0x014E4B 05:8E3B: 49 8E     .word ofs_038_39_8E49_01_initialize_object ; 
- D 0 - I - 0x014E4D 05:8E3D: 51 8E     .word ofs_038_39_8E51_02 ; 
- D 0 - I - 0x014E4F 05:8E3F: 70 8E     .word ofs_038_39_8E70_03 ; 
- D 0 - I - 0x014E51 05:8E41: 96 8E     .word ofs_038_39_8E96_04 ; 
- D 0 - I - 0x014E53 05:8E43: A3 8E     .word ofs_038_39_8EA3_05 ; 
- D 0 - I - 0x014E55 05:8E45: BB 8E     .word ofs_038_39_8EBB_06 ; 
- D 0 - I - 0x014E57 05:8E47: DE 8E     .word ofs_038_39_8EDE_07 ; 



ofs_038_39_8E49_01_initialize_object:
C - - J - - 0x014E59 05:8E49: A9 81     LDA #$81
C - - - - - 0x014E5B 05:8E4B: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x014E5E 05:8E4E: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_39_8E51_02:
C - - J - - 0x014E61 05:8E51: A5 FC     LDA ram_scroll_Y
C - - - - - 0x014E63 05:8E53: D0 1A     BNE bra_8E6F_RTS
C - - - - - 0x014E65 05:8E55: A9 00     LDA #$00
C - - - - - 0x014E67 05:8E57: 85 7E     STA ram_007E
C - - - - - 0x014E69 05:8E59: A9 C0     LDA #$C0
C - - - - - 0x014E6B 05:8E5B: 85 71     STA ram_0071_scroll_type
C - - - - - 0x014E6D 05:8E5D: A9 A0     LDA #$A0
C - - - - - 0x014E6F 05:8E5F: 9D 22 05  STA ram_pos_Y_hi_enemy,X
loc_8E62:
C D 0 - - - 0x014E72 05:8E62: A9 00     LDA #$00
C - - - - - 0x014E74 05:8E64: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x014E77 05:8E67: A9 08     LDA #$08
C - - - - - 0x014E79 05:8E69: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x014E7C 05:8E6C: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state
bra_8E6F_RTS:
C - - - - - 0x014E7F 05:8E6F: 60        RTS



ofs_038_39_8E70_03:
C - - J - - 0x014E80 05:8E70: BD E6 06  LDA ram_06E6_obj,X
C - - - - - 0x014E83 05:8E73: F0 05     BEQ bra_8E7A
C - - - - - 0x014E85 05:8E75: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x014E88 05:8E78: D0 F5     BNE bra_8E6F_RTS
bra_8E7A:
C - - - - - 0x014E8A 05:8E7A: A0 00     LDY #$00
C - - - - - 0x014E8C 05:8E7C: 20 F7 8E  JSR sub_8EF7
C - - - - - 0x014E8F 05:8E7F: 90 EE     BCC bra_8E6F_RTS
C - - - - - 0x014E91 05:8E81: A9 02     LDA #con_irq_area_4_elevator
C - - - - - 0x014E93 05:8E83: 85 27     STA ram_irq_handler_hi
C - - - - - 0x014E95 05:8E85: 20 C5 90  JSR sub_90C5
C - - - - - 0x014E98 05:8E88: A9 00     LDA #$00
C - - - - - 0x014E9A 05:8E8A: 85 FA     STA ram_00FA_scroll_X
C - - - - - 0x014E9C 05:8E8C: A9 00     LDA #$00
C - - - - - 0x014E9E 05:8E8E: 85 FB     STA ram_00FB_for_2000
C - - - - - 0x014EA0 05:8E90: 20 C5 90  JSR sub_90C5
C - - - - - 0x014EA3 05:8E93: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_39_8E96_04:
C - - J - - 0x014EA6 05:8E96: 20 C5 90  JSR sub_90C5
C - - - - - 0x014EA9 05:8E99: A0 01     LDY #$01
C - - - - - 0x014EAB 05:8E9B: 20 F7 8E  JSR sub_8EF7
C - - - - - 0x014EAE 05:8E9E: 90 CF     BCC bra_8E6F_RTS
C - - - - - 0x014EB0 05:8EA0: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_39_8EA3_05:
C - - J - - 0x014EB3 05:8EA3: 20 C5 90  JSR sub_90C5
C - - - - - 0x014EB6 05:8EA6: A9 80     LDA #$80
C - - - - - 0x014EB8 05:8EA8: 85 7E     STA ram_007E
C - - - - - 0x014EBA 05:8EAA: A9 C0     LDA #$C0
C - - - - - 0x014EBC 05:8EAC: 85 7F     STA ram_007F
C - - - - - 0x014EBE 05:8EAE: A9 FF     LDA #$FF
C - - - - - 0x014EC0 05:8EB0: 85 80     STA ram_0080
C - - - - - 0x014EC2 05:8EB2: A9 40     LDA #$40
C - - - - - 0x014EC4 05:8EB4: 85 71     STA ram_0071_scroll_type
C - - - - - 0x014EC6 05:8EB6: A9 01     LDA #$01
C - - - - - 0x014EC8 05:8EB8: 4C E0 A2  JMP loc_0x0062F0



ofs_038_39_8EBB_06:
C - - J - - 0x014ECB 05:8EBB: A5 5B     LDA ram_frm_cnt_2
C - - - - - 0x014ECD 05:8EBD: 29 03     AND #$03
C - - - - - 0x014ECF 05:8EBF: D0 0F     BNE bra_8ED0
C - - - - - 0x014ED1 05:8EC1: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x014ED4 05:8EC4: D0 0A     BNE bra_8ED0
C - - - - - 0x014ED6 05:8EC6: A9 80     LDA #$80
C - - - - - 0x014ED8 05:8EC8: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x014EDB 05:8ECB: A9 21     LDA #con_sound_21
C - - - - - 0x014EDD 05:8ECD: 20 DE FD  JSR sub_0x01FDEE_play_sound
bra_8ED0:
C - - - - - 0x014EE0 05:8ED0: 20 C5 90  JSR sub_90C5
C - - - - - 0x014EE3 05:8ED3: A5 7E     LDA ram_007E
C - - - - - 0x014EE5 05:8ED5: D0 98     BNE bra_8E6F_RTS
C - - - - - 0x014EE7 05:8ED7: A5 FC     LDA ram_scroll_Y
C - - - - - 0x014EE9 05:8ED9: D0 94     BNE bra_8E6F_RTS
C - - - - - 0x014EEB 05:8EDB: 4C 62 8E  JMP loc_8E62



ofs_038_39_8EDE_07:
C - - J - - 0x014EEE 05:8EDE: 20 C5 90  JSR sub_90C5
C - - - - - 0x014EF1 05:8EE1: A0 02     LDY #$02
C - - - - - 0x014EF3 05:8EE3: 20 F7 8E  JSR sub_8EF7
C - - - - - 0x014EF6 05:8EE6: 90 0E     BCC bra_8EF6_RTS
C - - - - - 0x014EF8 05:8EE8: 20 8C FC  JSR sub_0x01FC9C_increase_002B
C - - - - - 0x014EFB 05:8EEB: A9 40     LDA #$40
C - - - - - 0x014EFD 05:8EED: 85 71     STA ram_0071_scroll_type
C - - - - - 0x014EFF 05:8EEF: A9 00     LDA #$00
C - - - - - 0x014F01 05:8EF1: 85 80     STA ram_0080
C - - - - - 0x014F03 05:8EF3: 4C 75 A2  JMP loc_0x006285_delete_object_02
bra_8EF6_RTS:
C - - - - - 0x014F06 05:8EF6: 60        RTS



sub_8EF7:
C - - - - - 0x014F07 05:8EF7: 84 0C     STY ram_000C
C - - - - - 0x014F09 05:8EF9: B9 80 8F  LDA tbl_8F80,Y
C - - - - - 0x014F0C 05:8EFC: 85 0B     STA ram_000B
C - - - - - 0x014F0E 05:8EFE: 98        TYA
C - - - - - 0x014F0F 05:8EFF: 0A        ASL
C - - - - - 0x014F10 05:8F00: A8        TAY
C - - - - - 0x014F11 05:8F01: B9 7A 8F  LDA tbl_8F7A,Y
C - - - - - 0x014F14 05:8F04: 85 09     STA ram_0009
C - - - - - 0x014F16 05:8F06: B9 7B 8F  LDA tbl_8F7A + $01,Y
C - - - - - 0x014F19 05:8F09: 85 0A     STA ram_000A
C - - - - - 0x014F1B 05:8F0B: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x014F1E 05:8F0E: 0A        ASL
C - - - - - 0x014F1F 05:8F0F: A8        TAY
C - - - - - 0x014F20 05:8F10: B1 09     LDA (ram_0009),Y
C - - - - - 0x014F22 05:8F12: 85 08     STA ram_0008
C - - - - - 0x014F24 05:8F14: C8        INY
C - - - - - 0x014F25 05:8F15: B1 09     LDA (ram_0009),Y
C - - - - - 0x014F27 05:8F17: 85 09     STA ram_0009
C - - - - - 0x014F29 05:8F19: A6 1E     LDX ram_index_ppu_buffer
C - - - - - 0x014F2B 05:8F1B: E0 10     CPX #$10
C - - - - - 0x014F2D 05:8F1D: B0 54     BCS bra_8F73
C - - - - - 0x014F2F 05:8F1F: A0 00     LDY #$00
C - - - - - 0x014F31 05:8F21: B1 08     LDA (ram_0008),Y
C - - - - - 0x014F33 05:8F23: 85 0A     STA ram_000A
C - - - - - 0x014F35 05:8F25: C8        INY
bra_8F26_loop:
C - - - - - 0x014F36 05:8F26: B1 08     LDA (ram_0008),Y
C - - - - - 0x014F38 05:8F28: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x014F3B 05:8F2B: C8        INY
C - - - - - 0x014F3C 05:8F2C: E8        INX
C - - - - - 0x014F3D 05:8F2D: C6 0A     DEC ram_000A
C - - - - - 0x014F3F 05:8F2F: D0 F5     BNE bra_8F26_loop
C - - - - - 0x014F41 05:8F31: 86 1E     STX ram_index_ppu_buffer
C - - - - - 0x014F43 05:8F33: A6 10     LDX ram_0010
C - - - - - 0x014F45 05:8F35: FE 48 07  INC ram_0748_obj,X
C - - - - - 0x014F48 05:8F38: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x014F4B 05:8F3B: C5 0B     CMP ram_000B
C - - - - - 0x014F4D 05:8F3D: 90 37     BCC bra_8F76_RTS
C - - - - - 0x014F4F 05:8F3F: A9 00     LDA #$00
C - - - - - 0x014F51 05:8F41: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x014F54 05:8F44: A4 0C     LDY ram_000C
C - - - - - 0x014F56 05:8F46: B9 77 8F  LDA tbl_8F77,Y
C - - - - - 0x014F59 05:8F49: A8        TAY
C - - - - - 0x014F5A 05:8F4A: A9 06     LDA #$06
C - - - - - 0x014F5C 05:8F4C: 85 0D     STA ram_000D
bra_8F4E_loop:
C - - - - - 0x014F5E 05:8F4E: A9 11     LDA #$11
C - - - - - 0x014F60 05:8F50: 99 01 04  STA ram_0400_area_data_1 + $01,Y
C - - - - - 0x014F63 05:8F53: A9 00     LDA #$00
C - - - - - 0x014F65 05:8F55: 99 09 04  STA ram_0400_area_data_1 + $09,Y
C - - - - - 0x014F68 05:8F58: C8        INY
C - - - - - 0x014F69 05:8F59: C6 0D     DEC ram_000D
C - - - - - 0x014F6B 05:8F5B: D0 F1     BNE bra_8F4E_loop
C - - - - - 0x014F6D 05:8F5D: A9 21     LDA #$21
C - - - - - 0x014F6F 05:8F5F: 99 FA 03  STA ram_pal_buffer + $1A,Y
C - - - - - 0x014F72 05:8F62: A9 12     LDA #$12
C - - - - - 0x014F74 05:8F64: 99 01 04  STA ram_0400_area_data_1 + $01,Y
C - - - - - 0x014F77 05:8F67: A9 20     LDA #$20
C - - - - - 0x014F79 05:8F69: 99 02 04  STA ram_0400_area_data_1 + $02,Y
C - - - - - 0x014F7C 05:8F6C: A9 02     LDA #$02
C - - - - - 0x014F7E 05:8F6E: 99 09 04  STA ram_0400_area_data_1 + $09,Y
C - - - - - 0x014F81 05:8F71: 38        SEC
C - - - - - 0x014F82 05:8F72: 60        RTS
bra_8F73:
- - - - - - 0x014F83 05:8F73: A6 10     LDX ram_0010
- - - - - - 0x014F85 05:8F75: 18        CLC
bra_8F76_RTS:
C - - - - - 0x014F86 05:8F76: 60        RTS



tbl_8F77:
- D 0 - - - 0x014F87 05:8F77: 50        .byte $50   ; 00 
- D 0 - - - 0x014F88 05:8F78: D0        .byte $D0   ; 01 
- D 0 - - - 0x014F89 05:8F79: D0        .byte $D0   ; 02 



tbl_8F7A:
- D 0 - - - 0x014F8A 05:8F7A: 83 8F     .word off_8F83_00
- D 0 - - - 0x014F8C 05:8F7C: 8B 8F     .word off_8F8B_01
- D 0 - - - 0x014F8E 05:8F7E: 93 8F     .word off_8F93_02



tbl_8F80:
- D 0 - - - 0x014F90 05:8F80: 04        .byte $04   ; 00 
- D 0 - - - 0x014F91 05:8F81: 04        .byte $04   ; 01 
- D 0 - - - 0x014F92 05:8F82: 04        .byte $04   ; 02 



off_8F83_00:
- D 0 - I - 0x014F93 05:8F83: 9B 8F     .word _off025_00_8F9B_00
- D 0 - I - 0x014F95 05:8F85: B1 8F     .word _off025_00_8FB1_01
- D 0 - I - 0x014F97 05:8F87: D7 8F     .word _off025_00_8FD7_02
- D 0 - I - 0x014F99 05:8F89: FD 8F     .word _off025_00_8FFD_03



off_8F8B_01:
- D 0 - I - 0x014F9B 05:8F8B: 08 90     .word _off025_01_9008_00
- D 0 - I - 0x014F9D 05:8F8D: 1C 90     .word _off025_01_901C_01
- D 0 - I - 0x014F9F 05:8F8F: 30 90     .word _off025_01_9030_02
- D 0 - I - 0x014FA1 05:8F91: 44 90     .word _off025_01_9044_03



off_8F93_02:
- D 0 - I - 0x014FA3 05:8F93: 58 90     .word _off025_02_9058_00
- D 0 - I - 0x014FA5 05:8F95: 6E 90     .word _off025_02_906E_01
- D 0 - I - 0x014FA7 05:8F97: 94 90     .word _off025_02_9094_02
- D 0 - I - 0x014FA9 05:8F99: BA 90     .word _off025_02_90BA_03



_off025_00_8F9B_00:
- D 0 - I - 0x014FAB 05:8F9B: 15        .byte @end - * - $01   ; total data size

- D 0 - I - 0x014FAC 05:8F9C: 06        .byte con_buf_mode_06   ; 

- D 0 - I - 0x014FAD 05:8F9D: 22 80     .dbyt $2280 ; ppu address
- D 0 - I - 0x014FAF 05:8F9F: 04        .byte $04   ; counter
- D 0 - I - 0x014FB0 05:8FA0: 40        .byte $40, $40, $29, $6E   ; tiles

- D 0 - I - 0x014FB4 05:8FA4: 22 9C     .dbyt $229C ; ppu address
- D 0 - I - 0x014FB6 05:8FA6: 04        .byte $04   ; counter
- D 0 - I - 0x014FB7 05:8FA7: 2A        .byte $2A, $6F, $40, $40   ; tiles

- D 0 - I - 0x014FBB 05:8FAB: FF        .byte $FF   ; change mode

- D 0 - I - 0x014FBC 05:8FAC: 03        .byte con_buf_mode_03   ; 
- D 0 - I - 0x014FBD 05:8FAD: 22 84     .dbyt $2284 ; ppu address
- D 0 - I - 0x014FBF 05:8FAF: 18        .byte $18, $2B   ; counter + fill tile
@end:



_off025_00_8FB1_01:
- D 0 - I - 0x014FC1 05:8FB1: 25        .byte @end - * - $01   ; total data size

- D 0 - I - 0x014FC2 05:8FB2: 06        .byte con_buf_mode_06   ; 

- D 0 - I - 0x014FC3 05:8FB3: 22 A0     .dbyt $22A0 ; ppu address
- D 0 - I - 0x014FC5 05:8FB5: 20        .byte $20   ; counter
- D 0 - I - 0x014FC6 05:8FB6: 6B        .byte $6B, $6C, $70, $71, $72, $71, $72, $71, $72, $71, $72, $71, $72, $71, $72, $71   ; tiles
- D 0 - I - 0x014FD6 05:8FC6: 72        .byte $72, $71, $72, $71, $72, $71, $72, $71, $72, $71, $72, $71, $72, $73, $6B, $6C   ; 

- D 0 - I - 0x014FE6 05:8FD6: FF        .byte $FF   ; change mode
@end:



_off025_00_8FD7_02:
- D 0 - I - 0x014FE7 05:8FD7: 25        .byte @end - * - $01   ; total data size

- D 0 - I - 0x014FE8 05:8FD8: 06        .byte con_buf_mode_06   ; 

- D 0 - I - 0x014FE9 05:8FD9: 22 C0     .dbyt $22C0 ; ppu address
- D 0 - I - 0x014FEB 05:8FDB: 20        .byte $20   ; counter
- D 0 - I - 0x014FEC 05:8FDC: 30        .byte $30, $6D, $1E, $74, $1E, $74, $1E, $74, $1E, $74, $1E, $74, $1E, $74, $1E, $74   ; tiles
- D 0 - I - 0x014FFC 05:8FEC: 1E        .byte $1E, $74, $1E, $74, $1E, $74, $1E, $74, $1E, $74, $1E, $74, $1E, $74, $30, $6D   ; 

- D 0 - I - 0x01500C 05:8FFC: FF        .byte $FF   ; change mode
@end:



_off025_00_8FFD_03:
- D 0 - I - 0x01500D 05:8FFD: 0A        .byte @end - * - $01   ; total data size

- D 0 - I - 0x01500E 05:8FFE: 03        .byte con_buf_mode_03   ; 

- D 0 - I - 0x01500F 05:8FFF: 22 E0     .dbyt $22E0 ; ppu address
- D 0 - I - 0x015011 05:9001: 24        .byte $24, $00   ; counter + fill tile

- D 0 - I - 0x015013 05:9003: 03        .byte con_buf_mode_03   ; 

- D 0 - I - 0x015014 05:9004: 23 E8     .dbyt $23E8 ; ppu address
- D 0 - I - 0x015016 05:9006: 08        .byte $08, $00   ; counter + fill tile
@end:



_off025_01_9008_00:
- D 0 - I - 0x015018 05:9008: 13        .byte @end - * - $01   ; total data size

- D 0 - I - 0x015019 05:9009: 06        .byte con_buf_mode_06   ; 

- D 0 - I - 0x01501A 05:900A: 2E 80     .dbyt $2E80 ; ppu address
- D 0 - I - 0x01501C 05:900C: 03        .byte $03   ; counter
- D 0 - I - 0x01501D 05:900D: 3A        .byte $3A, $F0, $0C   ; tiles

- D 0 - I - 0x015020 05:9010: 2E 9D     .dbyt $2E9D ; ppu address
- D 0 - I - 0x015022 05:9012: 03        .byte $03   ; counter
- D 0 - I - 0x015023 05:9013: D5        .byte $D5, $3D, $3A   ; tiles

- D 0 - I - 0x015026 05:9016: FF        .byte $FF   ; change mode

- D 0 - I - 0x015027 05:9017: 03        .byte con_buf_mode_03   ; 

- D 0 - I - 0x015028 05:9018: 2E 83     .dbyt $2E83 ; ppu address
- D 0 - I - 0x01502A 05:901A: 1A        .byte $1A, $00   ; counter + fill tile
@end:



_off025_01_901C_01:
- D 0 - I - 0x01502C 05:901C: 13        .byte @end - * - $01   ; total data size

- D 0 - I - 0x01502D 05:901D: 06        .byte con_buf_mode_06   ; 

- D 0 - I - 0x01502E 05:901E: 2E A0     .dbyt $2EA0 ; ppu address
- D 0 - I - 0x015030 05:9020: 03        .byte $03   ; counter
- D 0 - I - 0x015031 05:9021: F5        .byte $F5, $F6, $0C   ; tiles

- D 0 - I - 0x015034 05:9024: 2E BD     .dbyt $2EBD ; ppu address
- D 0 - I - 0x015036 05:9026: 03        .byte $03   ; counter
- D 0 - I - 0x015037 05:9027: D5        .byte $D5, $EE, $43   ; tiles

- D 0 - I - 0x01503A 05:902A: FF        .byte $FF   ; change mode

- D 0 - I - 0x01503B 05:902B: 03        .byte con_buf_mode_03   ; 

- D 0 - I - 0x01503C 05:902C: 2E A3     .dbyt $2EA3 ; ppu address
- D 0 - I - 0x01503E 05:902E: 1A        .byte $1A, $00   ; counter + fill tile
@end:



_off025_01_9030_02:
- D 0 - I - 0x015040 05:9030: 13        .byte @end - * - $01   ; total data size

- D 0 - I - 0x015041 05:9031: 06        .byte con_buf_mode_06   ; 

- D 0 - I - 0x015042 05:9032: 2E C0     .dbyt $2EC0 ; ppu address
- D 0 - I - 0x015044 05:9034: 03        .byte $03   ; counter
- D 0 - I - 0x015045 05:9035: 3B        .byte $3B, $F7, $0C   ; tiles

- D 0 - I - 0x015048 05:9038: 2E DD     .dbyt $2EDD ; ppu address
- D 0 - I - 0x01504A 05:903A: 03        .byte $03   ; counter
- D 0 - I - 0x01504B 05:903B: D5        .byte $D5, $3E, $44   ; tiles

- D 0 - I - 0x01504E 05:903E: FF        .byte $FF   ; change mode

- D 0 - I - 0x01504F 05:903F: 03        .byte con_buf_mode_03   ; 

- D 0 - I - 0x015050 05:9040: 2E C3     .dbyt $2EC3 ; ppu address
- D 0 - I - 0x015052 05:9042: 1A        .byte $1A, $00   ; counter + fill tile
@end:



_off025_01_9044_03:
- D 0 - I - 0x015054 05:9044: 13        .byte @end - * - $01   ; total data size

- D 0 - I - 0x015055 05:9045: 06        .byte con_buf_mode_06   ; 

- D 0 - I - 0x015056 05:9046: 2E E0     .dbyt $2EE0 ; ppu address
- D 0 - I - 0x015058 05:9048: 03        .byte $03   ; counter
- D 0 - I - 0x015059 05:9049: C5        .byte $C5, $F1, $1B   ; tiles

- D 0 - I - 0x01505C 05:904C: 2E FD     .dbyt $2EFD ; ppu address
- D 0 - I - 0x01505E 05:904E: 03        .byte $03   ; counter
- D 0 - I - 0x01505F 05:904F: D6        .byte $D6, $E9, $C5   ; tiles

- D 0 - I - 0x015062 05:9052: FF        .byte $FF   ; change mode

- D 0 - I - 0x015063 05:9053: 03        .byte con_buf_mode_03   ; 

- D 0 - I - 0x015064 05:9054: 2E E3     .dbyt $2EE3 ; ppu address
- D 0 - I - 0x015066 05:9056: 1A        .byte $1A, $00   ; counter + fill tile
@end:



_off025_02_9058_00:
- D 0 - I - 0x015068 05:9058: 15        .byte @end - * - $01   ; total data size

- D 0 - I - 0x015069 05:9059: 06        .byte con_buf_mode_06   ; 

- D 0 - I - 0x01506A 05:905A: 2E 80     .dbyt $2E80 ; ppu address
- D 0 - I - 0x01506C 05:905C: 04        .byte $04   ; counter
- D 0 - I - 0x01506D 05:905D: 40        .byte $40, $40, $29, $6E   ; tiles

- D 0 - I - 0x015071 05:9061: 2E 9C     .dbyt $2E9C ; ppu address
- D 0 - I - 0x015073 05:9063: 04        .byte $04   ; counter
- D 0 - I - 0x015074 05:9064: 2A        .byte $2A, $6F, $40, $40   ; tiles

- D 0 - I - 0x015078 05:9068: FF        .byte $FF   ; change mode

- D 0 - I - 0x015079 05:9069: 03        .byte con_buf_mode_03   ; 

- D 0 - I - 0x01507A 05:906A: 2E 84     .dbyt $2E84 ; ppu address
- D 0 - I - 0x01507C 05:906C: 18        .byte $18, $2B   ; counter + fill tile
@end:



_off025_02_906E_01:
- D 0 - I - 0x01507E 05:906E: 25        .byte @end - * - $01   ; total data size

- D 0 - I - 0x01507F 05:906F: 06        .byte con_buf_mode_06   ; 

- D 0 - I - 0x015080 05:9070: 2E A0     .dbyt $2EA0 ; ppu address
- D 0 - I - 0x015082 05:9072: 20        .byte $20   ; counter
- D 0 - I - 0x015083 05:9073: 6B        .byte $6B, $6C, $70, $71, $72, $71, $72, $71, $72, $71, $72, $71, $72, $71, $72, $71   ; tiles
- D 0 - I - 0x015093 05:9083: 72        .byte $72, $71, $72, $71, $72, $71, $72, $71, $72, $71, $72, $71, $72, $73, $6B, $6C   ; 

- D 0 - I - 0x0150A3 05:9093: FF        .byte $FF   ; change mode
@end:



_off025_02_9094_02:
- D 0 - I - 0x0150A4 05:9094: 25        .byte @end - * - $01   ; total data size

- D 0 - I - 0x0150A5 05:9095: 06        .byte con_buf_mode_06   ; 

- D 0 - I - 0x0150A6 05:9096: 2E C0     .dbyt $2EC0 ; ppu address
- D 0 - I - 0x0150A8 05:9098: 20        .byte $20   ; counter
- D 0 - I - 0x0150A9 05:9099: 30        .byte $30, $6D, $1E, $74, $1E, $74, $1E, $74, $1E, $74, $1E, $74, $1E, $74, $1E, $74   ; tiles
- D 0 - I - 0x0150B9 05:90A9: 1E        .byte $1E, $74, $1E, $74, $1E, $74, $1E, $74, $1E, $74, $1E, $74, $1E, $74, $30, $6D   ; 
- D 0 - I - 0x0150C9 05:90B9: FF        .byte $FF   ; close buffer
@end:



_off025_02_90BA_03:
- D 0 - I - 0x0150CA 05:90BA: 0A        .byte @end - * - $01   ; total data size

- D 0 - I - 0x0150CB 05:90BB: 03        .byte con_buf_mode_03   ; 
- D 0 - I - 0x0150CC 05:90BC: 2E E0     .dbyt $2EE0 ; ppu address
- D 0 - I - 0x0150CE 05:90BE: 20        .byte $20, $00   ; counter + fill tile

- D 0 - I - 0x0150D0 05:90C0: 03        .byte con_buf_mode_03   ; 
- D 0 - I - 0x0150D1 05:90C1: 2F E8     .dbyt $2FE8 ; ppu address
- D 0 - I - 0x0150D3 05:90C3: 08        .byte $08, $00   ; counter + fill tile
@end:



sub_90C5:
C - - - - - 0x0150D5 05:90C5: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x0150D8 05:90C8: 85 45     STA ram_scanline
C - - - - - 0x0150DA 05:90CA: 18        CLC
C - - - - - 0x0150DB 05:90CB: 69 20     ADC #$20
C - - - - - 0x0150DD 05:90CD: 18        CLC
C - - - - - 0x0150DE 05:90CE: 65 FC     ADC ram_scroll_Y
C - - - - - 0x0150E0 05:90D0: B0 04     BCS bra_90D6
C - - - - - 0x0150E2 05:90D2: C9 F0     CMP #$F0
C - - - - - 0x0150E4 05:90D4: 90 02     BCC bra_90D8
bra_90D6:
C - - - - - 0x0150E6 05:90D6: 69 0F     ADC #$0F
bra_90D8:
C - - - - - 0x0150E8 05:90D8: 85 00     STA ram_0000
C - - - - - 0x0150EA 05:90DA: 29 07     AND #$07
C - - - - - 0x0150EC 05:90DC: 85 47     STA ram_0047
C - - - - - 0x0150EE 05:90DE: A9 1F     LDA #$1F
C - - - - - 0x0150F0 05:90E0: 38        SEC
C - - - - - 0x0150F1 05:90E1: E5 47     SBC ram_0047
C - - - - - 0x0150F3 05:90E3: 85 46     STA ram_0046
C - - - - - 0x0150F5 05:90E5: A9 09     LDA #$09
C - - - - - 0x0150F7 05:90E7: 85 4B     STA ram_004B
C - - - - - 0x0150F9 05:90E9: A5 00     LDA ram_0000
C - - - - - 0x0150FB 05:90EB: 29 F8     AND #$F8
C - - - - - 0x0150FD 05:90ED: 0A        ASL
C - - - - - 0x0150FE 05:90EE: 26 4B     ROL ram_004B
C - - - - - 0x015100 05:90F0: 0A        ASL
C - - - - - 0x015101 05:90F1: 26 4B     ROL ram_004B
C - - - - - 0x015103 05:90F3: 85 4A     STA ram_004A
C - - - - - 0x015105 05:90F5: A9 A0     LDA #$A0
C - - - - - 0x015107 05:90F7: 38        SEC
C - - - - - 0x015108 05:90F8: FD 22 05  SBC ram_pos_Y_hi_enemy,X
C - - - - - 0x01510B 05:90FB: 85 F9     STA ram_00F9_scroll_Y
C - - - - - 0x01510D 05:90FD: 60        RTS



_off001_0x01510E_40_mob_winged:
- D 0 - I - 0x01510E 05:90FE: 12 91     .word ofs_038_40_9112_01_initialize_object ; 
- D 0 - I - 0x015110 05:9100: 40 91     .word ofs_038_40_9140_02 ; 
- D 0 - I - 0x015112 05:9102: CC 91     .word ofs_038_40_91CC_03 ; 
- D 0 - I - 0x015114 05:9104: 05 92     .word ofs_038_40_9205_04 ; 
- D 0 - I - 0x015116 05:9106: 4C 92     .word ofs_038_40_924C_05 ; 
- D 0 - I - 0x015118 05:9108: 70 92     .word ofs_038_40_9270_06 ; 
- D 0 - I - 0x01511A 05:910A: 75 92     .word ofs_038_40_9275_07 ; 
- D 0 - I - 0x01511C 05:910C: 9A A2     .word ofs_038_40_0x0062AA_08 ; 
- D 0 - I - 0x01511E 05:910E: FD A2     .word ofs_038_40_0x00630D_09 ; 
- D 0 - I - 0x015120 05:9110: 3D A3     .word ofs_038_40_0x00634D_0A_delete_object_04 ; 



ofs_038_40_9112_01_initialize_object:
C - - J - - 0x015122 05:9112: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x015125 05:9115: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x015128 05:9118: 29 01     AND #$01
C - - - - - 0x01512A 05:911A: 9D 1E 07  STA ram_obj_flags,X
sub_911D:
C - - - - - 0x01512D 05:911D: 0A        ASL
C - - - - - 0x01512E 05:911E: A8        TAY
C - - - - - 0x01512F 05:911F: B9 3C 91  LDA tbl_913C_spd_X,Y
C - - - - - 0x015132 05:9122: 9D BC 06  STA ram_spd_X_lo_obj,X
C - - - - - 0x015135 05:9125: B9 3D 91  LDA tbl_913C_spd_X + $01,Y
C - - - - - 0x015138 05:9128: 9D CA 06  STA ram_spd_X_hi_obj,X
C - - - - - 0x01513B 05:912B: 20 31 91  JSR sub_9131
C - - - - - 0x01513E 05:912E: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



sub_9131:
C - - - - - 0x015141 05:9131: 0A        ASL
C - - - - - 0x015142 05:9132: A9 41     LDA #$41
C - - - - - 0x015144 05:9134: B0 02     BCS bra_9138
C - - - - - 0x015146 05:9136: A9 01     LDA #$01
bra_9138:
C - - - - - 0x015148 05:9138: 9D 56 05  STA ram_attr_spr_enemy,X
C - - - - - 0x01514B 05:913B: 60        RTS



tbl_913C_spd_X:
- D 0 - - - 0x01514C 05:913C: 00 FF     .word $FF00 ; 00 
- D 0 - - - 0x01514E 05:913E: 00 01     .word $0100 ; 01 



ofs_038_40_9140_02:
C - - J - - 0x015150 05:9140: A9 12     LDA #$12
C - - - - - 0x015152 05:9142: 20 00 A8  JSR sub_0x006810
C - - - - - 0x015155 05:9145: F0 79     BEQ bra_91C0
C - - - - - 0x015157 05:9147: 20 3D A8  JSR sub_0x00684D
C - - - - - 0x01515A 05:914A: A5 03     LDA ram_0003
C - - - - - 0x01515C 05:914C: 29 01     AND #$01
C - - - - - 0x01515E 05:914E: 85 03     STA ram_0003
C - - - - - 0x015160 05:9150: A9 01     LDA #$01
C - - - - - 0x015162 05:9152: BC CA 06  LDY ram_spd_X_hi_obj,X
C - - - - - 0x015165 05:9155: 10 02     BPL bra_9159_moving_right
; if moving left
C - - - - - 0x015167 05:9157: A9 FF     LDA #$FF
bra_9159_moving_right:
C - - - - - 0x015169 05:9159: 85 08     STA ram_0008
C - - - - - 0x01516B 05:915B: 18        CLC
C - - - - - 0x01516C 05:915C: 65 03     ADC ram_0003
C - - - - - 0x01516E 05:915E: C9 02     CMP #$02
C - - - - - 0x015170 05:9160: 29 01     AND #$01
C - - - - - 0x015172 05:9162: 85 03     STA ram_0003
C - - - - - 0x015174 05:9164: A5 04     LDA ram_0004
C - - - - - 0x015176 05:9166: 90 03     BCC bra_916B
C - - - - - 0x015178 05:9168: 18        CLC
C - - - - - 0x015179 05:9169: 65 08     ADC ram_0008
bra_916B:
C - - - - - 0x01517B 05:916B: A8        TAY
C - - - - - 0x01517C 05:916C: 20 1B BB  JSR sub_0x007B2B
C - - - - - 0x01517F 05:916F: F0 4F     BEQ bra_91C0
C - - - - - 0x015181 05:9171: A9 08     LDA #$08
C - - - - - 0x015183 05:9173: BC CA 06  LDY ram_spd_X_hi_obj,X
C - - - - - 0x015186 05:9176: 10 02     BPL bra_917A_moving_right
; if moving left
C - - - - - 0x015188 05:9178: A9 F8     LDA #$F8
bra_917A_moving_right:
C - - - - - 0x01518A 05:917A: 20 22 A8  JSR sub_0x006832
C - - - - - 0x01518D 05:917D: F0 09     BEQ bra_9188
C - - - - - 0x01518F 05:917F: 20 DC A7  JSR sub_0x0067EC_inverse_spd_X
C - - - - - 0x015192 05:9182: 20 31 91  JSR sub_9131
C - - - - - 0x015195 05:9185: FE 48 07  INC ram_0748_obj,X
bra_9188:
C - - - - - 0x015198 05:9188: 20 0B AB  JSR sub_0x006B1B_set_target_on_closest_player_X_pos
C - - - - - 0x01519B 05:918B: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x01519E 05:918E: 38        SEC
C - - - - - 0x01519F 05:918F: F9 32 05  SBC ram_pos_Y_hi_plr,Y
C - - - - - 0x0151A2 05:9192: B0 04     BCS bra_9198
C - - - - - 0x0151A4 05:9194: 49 FF     EOR #$FF
C - - - - - 0x0151A6 05:9196: 69 01     ADC #$01
bra_9198:
C - - - - - 0x0151A8 05:9198: C9 08     CMP #$08
C - - - - - 0x0151AA 05:919A: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x0151AD 05:919D: B0 04     BCS bra_91A3
C - - - - - 0x0151AF 05:919F: C9 02     CMP #$02
C - - - - - 0x0151B1 05:91A1: 90 15     BCC bra_91B8
bra_91A3:
C - - - - - 0x0151B3 05:91A3: C9 03     CMP #$03
C - - - - - 0x0151B5 05:91A5: B0 19     BCS bra_91C0
C - - - - - 0x0151B7 05:91A7: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x0151BA 05:91AA: 38        SEC
C - - - - - 0x0151BB 05:91AB: F9 4C 05  SBC ram_pos_X_hi_plr,Y
C - - - - - 0x0151BE 05:91AE: B0 04     BCS bra_91B4
C - - - - - 0x0151C0 05:91B0: 49 FF     EOR #$FF
C - - - - - 0x0151C2 05:91B2: 69 01     ADC #$01
bra_91B4:
C - - - - - 0x0151C4 05:91B4: C9 28     CMP #$28
C - - - - - 0x0151C6 05:91B6: 90 08     BCC bra_91C0
bra_91B8:
C - - - - - 0x0151C8 05:91B8: A0 07     LDY #con_0x006C32_07
C - - - - - 0x0151CA 05:91BA: 20 FD AB  JSR sub_0x006C0D
C - - - - - 0x0151CD 05:91BD: 4C 07 A7  JMP loc_0x006717
bra_91C0:
C - - - - - 0x0151D0 05:91C0: 20 C7 A7  JSR sub_0x0067D7_clear_spd_XY
C - - - - - 0x0151D3 05:91C3: 20 07 A7  JSR sub_0x006717
C - - - - - 0x0151D6 05:91C6: A9 10     LDA #$10
C - - - - - 0x0151D8 05:91C8: 4C E0 A2  JMP loc_0x0062F0



bra_91CB_RTS:
C - - - - - 0x0151DB 05:91CB: 60        RTS



ofs_038_40_91CC_03:
C - - J - - 0x0151DC 05:91CC: 20 7A 92  JSR sub_927A
C - - - - - 0x0151DF 05:91CF: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x0151E2 05:91D2: D0 F7     BNE bra_91CB_RTS
C - - - - - 0x0151E4 05:91D4: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x0151E7 05:91D7: CD 4C 05  CMP ram_pos_X_hi_plr
C - - - - - 0x0151EA 05:91DA: A0 00     LDY #$00
C - - - - - 0x0151EC 05:91DC: B0 02     BCS bra_91E0
C - - - - - 0x0151EE 05:91DE: A0 04     LDY #$04
bra_91E0:
C - - - - - 0x0151F0 05:91E0: B9 FD 91  LDA tbl_91FD_speed,Y
C - - - - - 0x0151F3 05:91E3: 9D A0 06  STA ram_spd_Y_lo_obj,X
C - - - - - 0x0151F6 05:91E6: B9 FE 91  LDA tbl_91FD_speed + $01,Y
C - - - - - 0x0151F9 05:91E9: 9D AE 06  STA ram_spd_Y_hi_obj,X
C - - - - - 0x0151FC 05:91EC: B9 FF 91  LDA tbl_91FD_speed + $02,Y
C - - - - - 0x0151FF 05:91EF: 9D BC 06  STA ram_spd_X_lo_obj,X
C - - - - - 0x015202 05:91F2: B9 00 92  LDA tbl_91FD_speed + $03,Y
C - - - - - 0x015205 05:91F5: 9D CA 06  STA ram_spd_X_hi_obj,X
C - - - - - 0x015208 05:91F8: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state


; bzk garbage
- - - - - - 0x01520B 05:91FB: 01        .byte $01   ; 
- - - - - - 0x01520C 05:91FC: 02        .byte $02   ; 



tbl_91FD_speed:
; 00 
- D 0 - - - 0x01520D 05:91FD: 80 FE     .word $FE80 ; Y
- D 0 - - - 0x01520F 05:91FF: 40 FF     .word $FF40 ; X
; 04 
- D 0 - - - 0x015211 05:9201: 80 FE     .word $FE80 ; Y
- D 0 - - - 0x015213 05:9203: C0 00     .word $00C0 ; X



ofs_038_40_9205_04:
C - - J - - 0x015215 05:9205: A9 6C     LDA #$6C
C - - - - - 0x015217 05:9207: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x01521A 05:920A: 20 07 A7  JSR sub_0x006717
C - - - - - 0x01521D 05:920D: BD A0 06  LDA ram_spd_Y_lo_obj,X
C - - - - - 0x015220 05:9210: 18        CLC
C - - - - - 0x015221 05:9211: 69 18     ADC #< $0018
C - - - - - 0x015223 05:9213: 9D A0 06  STA ram_spd_Y_lo_obj,X
C - - - - - 0x015226 05:9216: BD AE 06  LDA ram_spd_Y_hi_obj,X
C - - - - - 0x015229 05:9219: 69 00     ADC #> $0018
C - - - - - 0x01522B 05:921B: 9D AE 06  STA ram_spd_Y_hi_obj,X
C - - - - - 0x01522E 05:921E: A9 08     LDA #$08
C - - - - - 0x015230 05:9220: BC CA 06  LDY ram_spd_X_hi_obj,X
C - - - - - 0x015233 05:9223: 10 02     BPL bra_9227_moving_right
; if moving left
C - - - - - 0x015235 05:9225: A9 F8     LDA #$F8
bra_9227_moving_right:
C - - - - - 0x015237 05:9227: 20 22 A8  JSR sub_0x006832
C - - - - - 0x01523A 05:922A: F0 06     BEQ bra_9232
C - - - - - 0x01523C 05:922C: 20 DC A7  JSR sub_0x0067EC_inverse_spd_X
C - - - - - 0x01523F 05:922F: FE 48 07  INC ram_0748_obj,X
bra_9232:
C - - - - - 0x015242 05:9232: BD AE 06  LDA ram_spd_Y_hi_obj,X
C - - - - - 0x015245 05:9235: C9 02     CMP #$02
C - - - - - 0x015247 05:9237: 90 12     BCC bra_924B_RTS
C - - - - - 0x015249 05:9239: A9 12     LDA #$12
C - - - - - 0x01524B 05:923B: 20 00 A8  JSR sub_0x006810
C - - - - - 0x01524E 05:923E: F0 0B     BEQ bra_924B_RTS
C - - - - - 0x015250 05:9240: 20 3D A8  JSR sub_0x00684D
C - - - - - 0x015253 05:9243: 20 C7 A7  JSR sub_0x0067D7_clear_spd_XY
C - - - - - 0x015256 05:9246: A9 08     LDA #$08
C - - - - - 0x015258 05:9248: 4C E0 A2  JMP loc_0x0062F0
bra_924B_RTS:
C - - - - - 0x01525B 05:924B: 60        RTS



ofs_038_40_924C_05:
C - - J - - 0x01525C 05:924C: 20 7A 92  JSR sub_927A
C - - - - - 0x01525F 05:924F: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x015262 05:9252: D0 F7     BNE bra_924B_RTS
C - - - - - 0x015264 05:9254: A9 00     LDA #$00
C - - - - - 0x015266 05:9256: 9D 02 07  STA ram_0702_obj,X
C - - - - - 0x015269 05:9259: 20 0B AB  JSR sub_0x006B1B_set_target_on_closest_player_X_pos
C - - - - - 0x01526C 05:925C: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x01526F 05:925F: D9 4C 05  CMP ram_pos_X_hi_plr,Y
C - - - - - 0x015272 05:9262: A9 00     LDA #$00
C - - - - - 0x015274 05:9264: B0 02     BCS bra_9268
C - - - - - 0x015276 05:9266: A9 01     LDA #$01
bra_9268:
C - - - - - 0x015278 05:9268: 20 1D 91  JSR sub_911D
C - - - - - 0x01527B 05:926B: A9 02     LDA #$02
C - - - - - 0x01527D 05:926D: 4C 83 A2  JMP loc_0x006293_set_obj_state



ofs_038_40_9270_06:
C - - J - - 0x015280 05:9270: A9 6C     LDA #$6C    ; animation id
C - - - - - 0x015282 05:9272: 4C 3B B1  JMP loc_0x00714B



ofs_038_40_9275_07:
C - - J - - 0x015285 05:9275: A9 6C     LDA #$6C    ; animation id
C - - - - - 0x015287 05:9277: 4C 79 B1  JMP loc_0x007189



sub_927A:
C - - - - - 0x01528A 05:927A: A9 6B     LDA #$6B
C - - - - - 0x01528C 05:927C: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x01528F 05:927F: 20 07 A7  JSR sub_0x006717
C - - - - - 0x015292 05:9282: A9 12     LDA #$12
C - - - - - 0x015294 05:9284: 20 00 A8  JSR sub_0x006810
C - - - - - 0x015297 05:9287: F0 03     BEQ bra_928C_RTS
C - - - - - 0x015299 05:9289: 20 3D A8  JSR sub_0x00684D
bra_928C_RTS:
C - - - - - 0x01529C 05:928C: 60        RTS



_off001_0x01529D_41_spawner_winged_mobs:
- D 0 - I - 0x01529D 05:928D: 91 92     .word ofs_038_41_9291_01_initialize_object ; 
- D 0 - I - 0x01529F 05:928F: 9E 92     .word ofs_038_41_929E_02 ; 



ofs_038_41_9291_01_initialize_object:
C - - J - - 0x0152A1 05:9291: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x0152A4 05:9294: A9 03     LDA #$03
C - - - - - 0x0152A6 05:9296: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x0152A9 05:9299: A9 01     LDA #$01
C - - - - - 0x0152AB 05:929B: 4C E0 A2  JMP loc_0x0062F0



ofs_038_41_929E_02:
C - - J - - 0x0152AE 05:929E: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x0152B1 05:92A1: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x0152B4 05:92A4: C9 10     CMP #$10
C - - - - - 0x0152B6 05:92A6: 90 1F     BCC bra_92C7_RTS
C - - - - - 0x0152B8 05:92A8: C9 A0     CMP #$A0
C - - - - - 0x0152BA 05:92AA: B0 1C     BCS bra_92C8
C - - - - - 0x0152BC 05:92AC: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x0152BF 05:92AF: D0 16     BNE bra_92C7_RTS
C - - - - - 0x0152C1 05:92B1: A9 30     LDA #$30
C - - - - - 0x0152C3 05:92B3: DE 48 07  DEC ram_0748_obj,X
C - - - - - 0x0152C6 05:92B6: D0 07     BNE bra_92BF
C - - - - - 0x0152C8 05:92B8: A9 03     LDA #$03
C - - - - - 0x0152CA 05:92BA: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x0152CD 05:92BD: A9 F0     LDA #$F0
bra_92BF:
C - - - - - 0x0152CF 05:92BF: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x0152D2 05:92C2: A0 40     LDY #con_obj_id_40
C - - - - - 0x0152D4 05:92C4: 20 C8 AB  JSR sub_0x006BD8
bra_92C7_RTS:
C - - - - - 0x0152D7 05:92C7: 60        RTS
bra_92C8:
C - - - - - 0x0152D8 05:92C8: 4C 75 A2  JMP loc_0x006285_delete_object_02



_off001_0x0152DB_43_boss_4_gun:
- D 0 - I - 0x0152DB 05:92CB: DB 92     .word ofs_038_43_92DB_01_initialize_object ; 
- D 0 - I - 0x0152DD 05:92CD: EA 92     .word ofs_038_43_92EA_02 ; 
- D 0 - I - 0x0152DF 05:92CF: 09 93     .word ofs_038_43_9309_03 ; 
- D 0 - I - 0x0152E1 05:92D1: 33 93     .word ofs_038_43_9333_04 ; 
- D 0 - I - 0x0152E3 05:92D3: 44 93     .word ofs_038_43_9344_05 ; 
- D 0 - I - 0x0152E5 05:92D5: 51 93     .word ofs_038_43_9351_06 ; 
- D 0 - I - 0x0152E7 05:92D7: 88 93     .word ofs_038_43_9388_07 ; 
- D 0 - I - 0x0152E9 05:92D9: 8E 93     .word ofs_038_43_938E_08 ; 



ofs_038_43_92DB_01_initialize_object:
C - - J - - 0x0152EB 05:92DB: A9 03     LDA #$03
C - - - - - 0x0152ED 05:92DD: 9D 56 05  STA ram_attr_spr_enemy,X
C - - - - - 0x0152F0 05:92E0: A9 10     LDA #$10
C - - - - - 0x0152F2 05:92E2: A0 06     LDY #$06
C - - - - - 0x0152F4 05:92E4: 20 9B AB  JSR sub_0x006BAB_set_dynamic_hp_to_obj
C - - - - - 0x0152F7 05:92E7: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_43_92EA_02:
C - - J - - 0x0152FA 05:92EA: A9 01     LDA #$01
C - - - - - 0x0152FC 05:92EC: 20 96 93  JSR sub_9396
C - - - - - 0x0152FF 05:92EF: BC 80 07  LDY ram_0780_obj,X
C - - - - - 0x015302 05:92F2: B9 72 07  LDA ram_0772_obj,Y
C - - - - - 0x015305 05:92F5: 10 11     BPL bra_9308_RTS
C - - - - - 0x015307 05:92F7: C9 FF     CMP #$FF
C - - - - - 0x015309 05:92F9: F0 0D     BEQ bra_9308_RTS
C - - - - - 0x01530B 05:92FB: 29 7F     AND #$7F
C - - - - - 0x01530D 05:92FD: DD 1E 07  CMP ram_obj_flags,X
C - - - - - 0x015310 05:9300: D0 06     BNE bra_9308_RTS
C - - - - - 0x015312 05:9302: 99 72 07  STA ram_0772_obj,Y
C - - - - - 0x015315 05:9305: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state
bra_9308_RTS:
C - - - - - 0x015318 05:9308: 60        RTS



ofs_038_43_9309_03:
C - - J - - 0x015319 05:9309: 20 94 93  JSR sub_9394
C - - - - - 0x01531C 05:930C: FE 48 07  INC ram_0748_obj,X
C - - - - - 0x01531F 05:930F: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x015322 05:9312: C9 0F     CMP #$0F
C - - - - - 0x015324 05:9314: 90 F2     BCC bra_9308_RTS
C - - - - - 0x015326 05:9316: A0 44     LDY #con_obj_id_44
C - - - - - 0x015328 05:9318: 20 C8 AB  JSR sub_0x006BD8
C - - - - - 0x01532B 05:931B: 90 06     BCC bra_9323
C - - - - - 0x01532D 05:931D: A4 11     LDY ram_0011
C - - - - - 0x01532F 05:931F: 8A        TXA
C - - - - - 0x015330 05:9320: 99 80 07  STA ram_0780_obj,Y
bra_9323:
C - - - - - 0x015333 05:9323: BD 76 06  LDA ram_obj_hp,X
C - - - - - 0x015336 05:9326: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x015339 05:9329: A9 F0     LDA #con__hp_F0
C - - - - - 0x01533B 05:932B: 9D 76 06  STA ram_obj_hp,X
C - - - - - 0x01533E 05:932E: A9 10     LDA #$10
C - - - - - 0x015340 05:9330: 4C E0 A2  JMP loc_0x0062F0



ofs_038_43_9333_04:
C - - J - - 0x015343 05:9333: 20 94 93  JSR sub_9394
C - - - - - 0x015346 05:9336: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x015349 05:9339: D0 CD     BNE bra_9308_RTS
C - - - - - 0x01534B 05:933B: BD 56 07  LDA ram_0756_obj,X
C - - - - - 0x01534E 05:933E: 9D 76 06  STA ram_obj_hp,X
C - - - - - 0x015351 05:9341: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_43_9344_05:
C - - J - - 0x015354 05:9344: 20 94 93  JSR sub_9394
C - - - - - 0x015357 05:9347: DE 48 07  DEC ram_0748_obj,X
C - - - - - 0x01535A 05:934A: D0 BC     BNE bra_9308_RTS
C - - - - - 0x01535C 05:934C: A9 02     LDA #$02
C - - - - - 0x01535E 05:934E: 4C 83 A2  JMP loc_0x006293_set_obj_state



ofs_038_43_9351_06:
C - - J - - 0x015361 05:9351: BD 80 07  LDA ram_0780_obj,X
C - - - - - 0x015364 05:9354: AA        TAX
C - - - - - 0x015365 05:9355: DE 64 07  DEC ram_0764_obj,X
C - - - - - 0x015368 05:9358: A6 10     LDX ram_0010
C - - - - - 0x01536A 05:935A: BC 1E 07  LDY ram_obj_flags,X
C - - - - - 0x01536D 05:935D: C0 08     CPY #$08
C - - - - - 0x01536F 05:935F: D0 0A     BNE bra_936B
; 08
C - - - - - 0x015371 05:9361: BC 80 07  LDY ram_0780_obj,X
C - - - - - 0x015374 05:9364: A9 00     LDA #$00
C - - - - - 0x015376 05:9366: 99 10 07  STA ram_0710_obj,Y
C - - - - - 0x015379 05:9369: F0 0C     BEQ bra_9377    ; jmp
bra_936B:
C - - - - - 0x01537B 05:936B: B9 80 93  LDA tbl_9380,Y
C - - - - - 0x01537E 05:936E: BC 80 07  LDY ram_0780_obj,X
C - - - - - 0x015381 05:9371: 39 02 07  AND ram_0702_obj,Y
C - - - - - 0x015384 05:9374: 99 02 07  STA ram_0702_obj,Y
bra_9377:
C - - - - - 0x015387 05:9377: 20 99 93  JSR sub_9399
C - - - - - 0x01538A 05:937A: 20 E4 93  JSR sub_93E4
C - - - - - 0x01538D 05:937D: 4C 9A A2  JMP loc_0x0062AA



tbl_9380:
- D 0 - - - 0x015390 05:9380: 7F        .byte $7F   ; 00 
- D 0 - - - 0x015391 05:9381: BF        .byte $BF   ; 01 
- D 0 - - - 0x015392 05:9382: DF        .byte $DF   ; 02 
- D 0 - - - 0x015393 05:9383: EF        .byte $EF   ; 03 
- D 0 - - - 0x015394 05:9384: F7        .byte $F7   ; 04 
- D 0 - - - 0x015395 05:9385: FB        .byte $FB   ; 05 
- D 0 - - - 0x015396 05:9386: FD        .byte $FD   ; 06 
- D 0 - - - 0x015397 05:9387: FE        .byte $FE   ; 07 



ofs_038_43_9388_07:
C - - J - - 0x015398 05:9388: 20 99 93  JSR sub_9399
C - - - - - 0x01539B 05:938B: 4C FD A2  JMP loc_0x00630D



ofs_038_43_938E_08:
C - - J - - 0x01539E 05:938E: 20 99 93  JSR sub_9399
C - - - - - 0x0153A1 05:9391: 4C 3D A3  JMP loc_0x00634D_delete_object_04



sub_9394:
C - - - - - 0x0153A4 05:9394: A9 63     LDA #$63
sub_9396:
C - - - - - 0x0153A6 05:9396: 9D 08 05  STA ram_anim_id_enemy,X
sub_9399:
C - - - - - 0x0153A9 05:9399: BC 1E 07  LDY ram_obj_flags,X
C - - - - - 0x0153AC 05:939C: B9 DB 93  LDA tbl_93DB,Y
C - - - - - 0x0153AF 05:939F: 85 09     STA ram_0009
C - - - - - 0x0153B1 05:93A1: 0A        ASL
C - - - - - 0x0153B2 05:93A2: A9 00     LDA #$00
C - - - - - 0x0153B4 05:93A4: 90 02     BCC bra_93A8
C - - - - - 0x0153B6 05:93A6: A9 FF     LDA #$FF
bra_93A8:
C - - - - - 0x0153B8 05:93A8: 85 0B     STA ram_000B
C - - - - - 0x0153BA 05:93AA: BC 80 07  LDY ram_0780_obj,X
C - - - - - 0x0153BD 05:93AD: A5 09     LDA ram_0009
C - - - - - 0x0153BF 05:93AF: 18        CLC
C - - - - - 0x0153C0 05:93B0: 79 3C 05  ADC ram_pos_X_hi_enemy,Y
C - - - - - 0x0153C3 05:93B3: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x0153C6 05:93B6: A5 0B     LDA ram_000B
C - - - - - 0x0153C8 05:93B8: 79 9C 07  ADC ram_079C_obj,Y
C - - - - - 0x0153CB 05:93BB: 9D 9C 07  STA ram_079C_obj,X
C - - - - - 0x0153CE 05:93BE: D0 18     BNE bra_93D8
C - - - - - 0x0153D0 05:93C0: A9 18     LDA #$18
C - - - - - 0x0153D2 05:93C2: 18        CLC
C - - - - - 0x0153D3 05:93C3: 7D 48 07  ADC ram_0748_obj,X
C - - - - - 0x0153D6 05:93C6: 18        CLC
C - - - - - 0x0153D7 05:93C7: 79 22 05  ADC ram_pos_Y_hi_enemy,Y
C - - - - - 0x0153DA 05:93CA: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x0153DD 05:93CD: A9 00     LDA #$00
C - - - - - 0x0153DF 05:93CF: 79 8E 07  ADC ram_078E_obj,Y
C - - - - - 0x0153E2 05:93D2: 9D 8E 07  STA ram_078E_obj,X
C - - - - - 0x0153E5 05:93D5: D0 01     BNE bra_93D8
C - - - - - 0x0153E7 05:93D7: 60        RTS
bra_93D8:
C - - - - - 0x0153E8 05:93D8: 4C 7D A2  JMP loc_0x00628D_clear_anim_id



tbl_93DB:
- D 0 - - - 0x0153EB 05:93DB: C0        .byte $C0   ; 00 
- D 0 - - - 0x0153EC 05:93DC: D0        .byte $D0   ; 01 
- D 0 - - - 0x0153ED 05:93DD: E0        .byte $E0   ; 02 
- D 0 - - - 0x0153EE 05:93DE: F0        .byte $F0   ; 03 
- D 0 - - - 0x0153EF 05:93DF: 00        .byte $00   ; 04 
- D 0 - - - 0x0153F0 05:93E0: 10        .byte $10   ; 05 
- D 0 - - - 0x0153F1 05:93E1: 20        .byte $20   ; 06 
- D 0 - - - 0x0153F2 05:93E2: 30        .byte $30   ; 07 
- D 0 - - - 0x0153F3 05:93E3: 40        .byte $40   ; 08 



sub_93E4:
C - - - - - 0x0153F4 05:93E4: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x0153F7 05:93E7: 0A        ASL
C - - - - - 0x0153F8 05:93E8: 85 08     STA ram_0008
C - - - - - 0x0153FA 05:93EA: A0 00     LDY #$00
C - - - - - 0x0153FC 05:93EC: A6 1E     LDX ram_index_ppu_buffer
bra_93EE_loop:
C - - - - - 0x0153FE 05:93EE: B9 08 94  LDA tbl_9408,Y
C - - - - - 0x015401 05:93F1: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x015404 05:93F4: E8        INX
C - - - - - 0x015405 05:93F5: C8        INY
C - - - - - 0x015406 05:93F6: C9 FF     CMP #$FF
C - - - - - 0x015408 05:93F8: D0 F4     BNE bra_93EE_loop
C - - - - - 0x01540A 05:93FA: 86 1E     STX ram_index_ppu_buffer
C - - - - - 0x01540C 05:93FC: BD FB 02  LDA ram_nmt_buffer - $05,X
C - - - - - 0x01540F 05:93FF: 18        CLC
C - - - - - 0x015410 05:9400: 65 08     ADC ram_0008
C - - - - - 0x015412 05:9402: 9D FB 02  STA ram_nmt_buffer - $05,X
C - - - - - 0x015415 05:9405: A6 10     LDX ram_0010
C - - - - - 0x015417 05:9407: 60        RTS



tbl_9408:
- D 0 - - - 0x015418 05:9408: 07        .byte con_buf_mode_07   ; 

- D 0 - - - 0x015419 05:9409: 20 87     .dbyt $2087 ; ppu
- D 0 - - - 0x01541B 05:940B: 02        .byte $02   ; counter
- D 0 - - - 0x01541C 05:940C: FE        .byte $FE, $00   ; tiles

- D 0 - - - 0x01541E 05:940E: FF        .byte $FF   ; end token



_off001_0x01541F_44_boss_4_bullet:
- D 0 - I - 0x01541F 05:940F: 15 94     .word ofs_038_44_9415_01_initialize_object ; 
- D 0 - I - 0x015421 05:9411: 38 94     .word ofs_038_44_9438_02 ; 
- D 0 - I - 0x015423 05:9413: 58 94     .word ofs_038_44_9458_03 ; 



ofs_038_44_9415_01_initialize_object:
C - - J - - 0x015425 05:9415: A9 80     LDA #$80
C - - - - - 0x015427 05:9417: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x01542A 05:941A: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x01542D 05:941D: 18        CLC
C - - - - - 0x01542E 05:941E: 69 08     ADC #$08
C - - - - - 0x015430 05:9420: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x015433 05:9423: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x015436 05:9426: A9 00     LDA #< $0800
C - - - - - 0x015438 05:9428: 9D A0 06  STA ram_spd_Y_lo_obj,X
C - - - - - 0x01543B 05:942B: A9 08     LDA #> $0800
C - - - - - 0x01543D 05:942D: 9D AE 06  STA ram_spd_Y_hi_obj,X
C - - - - - 0x015440 05:9430: A9 10     LDA #con_sound_10
C - - - - - 0x015442 05:9432: 20 DE FD  JSR sub_0x01FDEE_play_sound
C - - - - - 0x015445 05:9435: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_44_9438_02:
C - - J - - 0x015448 05:9438: 20 6A 94  JSR sub_946A
C - - - - - 0x01544B 05:943B: A9 D2     LDA #$D2
C - - - - - 0x01544D 05:943D: 20 7C 94  JSR sub_947C
C - - - - - 0x015450 05:9440: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x015453 05:9443: C9 E0     CMP #$E0
C - - - - - 0x015455 05:9445: B0 07     BCS bra_944E
C - - - - - 0x015457 05:9447: A9 00     LDA #$00
C - - - - - 0x015459 05:9449: 20 0A A8  JSR sub_0x00681A
C - - - - - 0x01545C 05:944C: F0 09     BEQ bra_9457_RTS
bra_944E:
C - - - - - 0x01545E 05:944E: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x015461 05:9451: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x015464 05:9454: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state
bra_9457_RTS:
C - - - - - 0x015467 05:9457: 60        RTS



ofs_038_44_9458_03:
C - - J - - 0x015468 05:9458: 20 6A 94  JSR sub_946A
C - - - - - 0x01546B 05:945B: A9 00     LDA #$00
C - - - - - 0x01546D 05:945D: 20 7C 94  JSR sub_947C
C - - - - - 0x015470 05:9460: A9 00     LDA #$00
C - - - - - 0x015472 05:9462: 20 0A A8  JSR sub_0x00681A
C - - - - - 0x015475 05:9465: F0 F0     BEQ bra_9457_RTS
C - - - - - 0x015477 05:9467: 4C 75 A2  JMP loc_0x006285_delete_object_02



sub_946A:
C - - - - - 0x01547A 05:946A: A9 01     LDA #$01
C - - - - - 0x01547C 05:946C: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x01547F 05:946F: 20 D3 A6  JSR sub_0x0066E3
C - - - - - 0x015482 05:9472: BC 80 07  LDY ram_0780_obj,X
C - - - - - 0x015485 05:9475: B9 3C 05  LDA ram_pos_X_hi_enemy,Y
C - - - - - 0x015488 05:9478: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x01548B 05:947B: 60        RTS



sub_947C:
C - - - - - 0x01548C 05:947C: 85 08     STA ram_0008
C - - - - - 0x01548E 05:947E: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x015491 05:9481: 18        CLC
C - - - - - 0x015492 05:9482: 65 FA     ADC ram_00FA_scroll_X
C - - - - - 0x015494 05:9484: 4A        LSR
C - - - - - 0x015495 05:9485: 4A        LSR
C - - - - - 0x015496 05:9486: 4A        LSR
C - - - - - 0x015497 05:9487: 85 00     STA ram_0000
C - - - - - 0x015499 05:9489: A5 FB     LDA ram_00FB_for_2000
C - - - - - 0x01549B 05:948B: 4A        LSR
C - - - - - 0x01549C 05:948C: 4A        LSR
C - - - - - 0x01549D 05:948D: A9 08     LDA #$08
C - - - - - 0x01549F 05:948F: 90 02     BCC bra_9493
- - - - - - 0x0154A1 05:9491: A9 0A     LDA #$0A
bra_9493:
C - - - - - 0x0154A3 05:9493: 85 01     STA ram_0001
C - - - - - 0x0154A5 05:9495: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x0154A8 05:9498: 18        CLC
C - - - - - 0x0154A9 05:9499: 65 F9     ADC ram_00F9_scroll_Y
C - - - - - 0x0154AB 05:949B: B0 04     BCS bra_94A1
- - - - - - 0x0154AD 05:949D: C9 F0     CMP #$F0
- - - - - - 0x0154AF 05:949F: 90 0A     BCC bra_94AB
bra_94A1:
C - - - - - 0x0154B1 05:94A1: 69 0F     ADC #$0F
C - - - - - 0x0154B3 05:94A3: A8        TAY
C - - - - - 0x0154B4 05:94A4: A5 01     LDA ram_0001
C - - - - - 0x0154B6 05:94A6: 49 02     EOR #$02
C - - - - - 0x0154B8 05:94A8: 85 01     STA ram_0001
C - - - - - 0x0154BA 05:94AA: 98        TYA
bra_94AB:
C - - - - - 0x0154BB 05:94AB: 29 F8     AND #$F8
C - - - - - 0x0154BD 05:94AD: 0A        ASL
C - - - - - 0x0154BE 05:94AE: 26 01     ROL ram_0001
C - - - - - 0x0154C0 05:94B0: 0A        ASL
C - - - - - 0x0154C1 05:94B1: 26 01     ROL ram_0001
C - - - - - 0x0154C3 05:94B3: 18        CLC
C - - - - - 0x0154C4 05:94B4: 65 00     ADC ram_0000
C - - - - - 0x0154C6 05:94B6: 85 00     STA ram_0000
C - - - - - 0x0154C8 05:94B8: A6 1E     LDX ram_index_ppu_buffer
C - - - - - 0x0154CA 05:94BA: A9 06     LDA #con_buf_mode_06
C - - - - - 0x0154CC 05:94BC: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x0154CF 05:94BF: E8        INX
C - - - - - 0x0154D0 05:94C0: A5 01     LDA ram_0001    ; ppu hi
C - - - - - 0x0154D2 05:94C2: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x0154D5 05:94C5: E8        INX
C - - - - - 0x0154D6 05:94C6: A5 00     LDA ram_0000    ; ppu lo
C - - - - - 0x0154D8 05:94C8: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x0154DB 05:94CB: E8        INX
C - - - - - 0x0154DC 05:94CC: A9 01     LDA #$01    ; counter
C - - - - - 0x0154DE 05:94CE: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x0154E1 05:94D1: E8        INX
C - - - - - 0x0154E2 05:94D2: A5 08     LDA ram_0008    ; tile
C - - - - - 0x0154E4 05:94D4: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x0154E7 05:94D7: E8        INX
C - - - - - 0x0154E8 05:94D8: A9 FF     LDA #$FF    ; close buffer
C - - - - - 0x0154EA 05:94DA: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x0154ED 05:94DD: E8        INX
C - - - - - 0x0154EE 05:94DE: 86 1E     STX ram_index_ppu_buffer
C - - - - - 0x0154F0 05:94E0: A6 10     LDX ram_0010
C - - - - - 0x0154F2 05:94E2: 60        RTS



_off001_0x0154F3_6B_blue_bubble:
- D 0 - I - 0x0154F3 05:94E3: EF 94     .word ofs_038_6B_94EF_01_initialize_object ; 
- D 0 - I - 0x0154F5 05:94E5: 40 95     .word ofs_038_6B_9540_02 ; 
- D 0 - I - 0x0154F7 05:94E7: 71 95     .word ofs_038_6B_9571_03 ; 
- D 0 - I - 0x0154F9 05:94E9: 9A A2     .word ofs_038_6B_0x0062AA_04 ; 
- D 0 - I - 0x0154FB 05:94EB: FD A2     .word ofs_038_6B_0x00630D_05 ; 
- D 0 - I - 0x0154FD 05:94ED: 3D A3     .word ofs_038_6B_0x00634D_06_delete_object_04 ; 



ofs_038_6B_94EF_01_initialize_object:
C - - J - - 0x0154FF 05:94EF: A9 5E     LDA #$5E
C - - - - - 0x015501 05:94F1: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x015504 05:94F4: A5 23     LDA ram_random
C - - - - - 0x015506 05:94F6: 29 07     AND #$07
C - - - - - 0x015508 05:94F8: 0A        ASL
C - - - - - 0x015509 05:94F9: A8        TAY
C - - - - - 0x01550A 05:94FA: B9 28 95  LDA tbl_9528_spd_Y,Y
C - - - - - 0x01550D 05:94FD: 9D A0 06  STA ram_spd_Y_lo_obj,X
C - - - - - 0x015510 05:9500: B9 29 95  LDA tbl_9528_spd_Y + $01,Y
C - - - - - 0x015513 05:9503: 9D AE 06  STA ram_spd_Y_hi_obj,X
C - - - - - 0x015516 05:9506: A5 23     LDA ram_random
C - - - - - 0x015518 05:9508: 4A        LSR
C - - - - - 0x015519 05:9509: 4A        LSR
C - - - - - 0x01551A 05:950A: 4A        LSR
C - - - - - 0x01551B 05:950B: 4A        LSR
C - - - - - 0x01551C 05:950C: 48        PHA
C - - - - - 0x01551D 05:950D: 29 03     AND #$03
C - - - - - 0x01551F 05:950F: 0A        ASL
C - - - - - 0x015520 05:9510: A8        TAY
C - - - - - 0x015521 05:9511: B9 38 95  LDA tbl_9538_spd_X,Y
C - - - - - 0x015524 05:9514: 9D BC 06  STA ram_spd_X_lo_obj,X
C - - - - - 0x015527 05:9517: B9 39 95  LDA tbl_9538_spd_X + $01,Y
C - - - - - 0x01552A 05:951A: 9D CA 06  STA ram_spd_X_hi_obj,X
C - - - - - 0x01552D 05:951D: 68        PLA
C - - - - - 0x01552E 05:951E: 4A        LSR
C - - - - - 0x01552F 05:951F: 4A        LSR
C - - - - - 0x015530 05:9520: 90 03     BCC bra_9525
C - - - - - 0x015532 05:9522: 20 DC A7  JSR sub_0x0067EC_inverse_spd_X
bra_9525:
C - - - - - 0x015535 05:9525: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



tbl_9528_spd_Y:
- D 0 - - - 0x015538 05:9528: 00 08     .word $0800 ; 00 
- D 0 - - - 0x01553A 05:952A: 00 07     .word $0700 ; 01 
- D 0 - - - 0x01553C 05:952C: 00 06     .word $0600 ; 02 
- D 0 - - - 0x01553E 05:952E: 00 05     .word $0500 ; 03 
- D 0 - - - 0x015540 05:9530: 80 04     .word $0480 ; 04 
- D 0 - - - 0x015542 05:9532: 40 07     .word $0740 ; 05 
- D 0 - - - 0x015544 05:9534: 80 06     .word $0680 ; 06 
- D 0 - - - 0x015546 05:9536: 80 05     .word $0580 ; 07 



tbl_9538_spd_X:
- D 0 - - - 0x015548 05:9538: 40 00     .word $0040 ; 00 
- D 0 - - - 0x01554A 05:953A: 60 00     .word $0060 ; 01 
- D 0 - - - 0x01554C 05:953C: 80 00     .word $0080 ; 02 
- D 0 - - - 0x01554E 05:953E: C0 00     .word $00C0 ; 03 



ofs_038_6B_9540_02:
C - - J - - 0x015550 05:9540: BD AE 06  LDA ram_spd_Y_hi_obj,X
C - - - - - 0x015553 05:9543: 10 04     BPL bra_9549_moving_down
; if moving up
C - - - - - 0x015555 05:9545: C9 FF     CMP #$FF
C - - - - - 0x015557 05:9547: F0 11     BEQ bra_955A_FF
bra_9549_moving_down:
C - - - - - 0x015559 05:9549: BD A0 06  LDA ram_spd_Y_lo_obj,X
C - - - - - 0x01555C 05:954C: 38        SEC
C - - - - - 0x01555D 05:954D: E9 80     SBC #< $0080
C - - - - - 0x01555F 05:954F: 9D A0 06  STA ram_spd_Y_lo_obj,X
C - - - - - 0x015562 05:9552: BD AE 06  LDA ram_spd_Y_hi_obj,X
C - - - - - 0x015565 05:9555: E9 00     SBC #> $0080
C - - - - - 0x015567 05:9557: 9D AE 06  STA ram_spd_Y_hi_obj,X
bra_955A_FF:
C - - - - - 0x01556A 05:955A: 20 D3 A6  JSR sub_0x0066E3
C - - - - - 0x01556D 05:955D: 20 84 95  JSR sub_9584
C - - - - - 0x015570 05:9560: F0 06     BEQ bra_9568
C - - - - - 0x015572 05:9562: 20 EE A7  JSR sub_0x0067FE_inverse_spd_Y
C - - - - - 0x015575 05:9565: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state
bra_9568:
C - - - - - 0x015578 05:9568: 20 98 95  JSR sub_9598
C - - - - - 0x01557B 05:956B: F0 03     BEQ bra_9570_RTS
C - - - - - 0x01557D 05:956D: 4C DC A7  JMP loc_0x0067EC_inverse_spd_X
bra_9570_RTS:
C - - - - - 0x015580 05:9570: 60        RTS



ofs_038_6B_9571_03:
C - - J - - 0x015581 05:9571: 20 D3 A6  JSR sub_0x0066E3
C - - - - - 0x015584 05:9574: 20 84 95  JSR sub_9584
C - - - - - 0x015587 05:9577: F0 03     BEQ bra_957C
C - - - - - 0x015589 05:9579: 20 EE A7  JSR sub_0x0067FE_inverse_spd_Y
bra_957C:
C - - - - - 0x01558C 05:957C: 20 98 95  JSR sub_9598
C - - - - - 0x01558F 05:957F: F0 EF     BEQ bra_9570_RTS
C - - - - - 0x015591 05:9581: 4C DC A7  JMP loc_0x0067EC_inverse_spd_X



sub_9584:
C - - - - - 0x015594 05:9584: A9 04     LDA #$04
C - - - - - 0x015596 05:9586: BC AE 06  LDY ram_spd_Y_hi_obj,X
C - - - - - 0x015599 05:9589: 10 02     BPL bra_958D_moving_down
; if moving up
C - - - - - 0x01559B 05:958B: A9 FC     LDA #$FC
bra_958D_moving_down:
C - - - - - 0x01559D 05:958D: 18        CLC
C - - - - - 0x01559E 05:958E: 7D 22 05  ADC ram_pos_Y_hi_enemy,X
C - - - - - 0x0155A1 05:9591: A8        TAY
C - - - - - 0x0155A2 05:9592: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x0155A5 05:9595: 4C C0 BA  JMP loc_0x007AD0



sub_9598:
C - - - - - 0x0155A8 05:9598: BD CA 06  LDA ram_spd_X_hi_obj,X
C - - - - - 0x0155AB 05:959B: 2A        ROL
C - - - - - 0x0155AC 05:959C: 2A        ROL
C - - - - - 0x0155AD 05:959D: 29 01     AND #$01
C - - - - - 0x0155AF 05:959F: A8        TAY
C - - - - - 0x0155B0 05:95A0: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x0155B3 05:95A3: D9 AF 95  CMP tbl_95AF_pos_Y,Y
C - - - - - 0x0155B6 05:95A6: 6A        ROR
C - - - - - 0x0155B7 05:95A7: 5D CA 06  EOR ram_spd_X_hi_obj,X
C - - - - - 0x0155BA 05:95AA: 30 02     BMI bra_95AE_RTS    ; if moving left
; if moving right
C - - - - - 0x0155BC 05:95AC: A9 00     LDA #$00
bra_95AE_RTS:
C - - - - - 0x0155BE 05:95AE: 60        RTS



tbl_95AF_pos_Y:
- D 0 - - - 0x0155BF 05:95AF: F0        .byte $F0   ; 00 
- D 0 - - - 0x0155C0 05:95B0: 10        .byte $10   ; 01 



_off001_0x0155C1_6C_spawner_blue_bubbles:
- D 0 - I - 0x0155C1 05:95B1: BB 95     .word ofs_038_6C_95BB_01_initialize_object ; 
- D 0 - I - 0x0155C3 05:95B3: D5 95     .word ofs_038_6C_95D5_02 ; 
- - - - - - 0x0155C5 05:95B5: 9A A2     .word ofs_038_6C_0x0062AA_03 ; 
- - - - - - 0x0155C7 05:95B7: FD A2     .word ofs_038_6C_0x00630D_04 ; 
- - - - - - 0x0155C9 05:95B9: 3D A3     .word ofs_038_6C_0x00634D_05_delete_object_04 ; 



ofs_038_6C_95BB_01_initialize_object:
C - - J - - 0x0155CB 05:95BB: A9 01     LDA #$01
C - - - - - 0x0155CD 05:95BD: A9 20     LDA #$20
C - - - - - 0x0155CF 05:95BF: 9D 76 06  STA ram_obj_hp,X
C - - - - - 0x0155D2 05:95C2: A9 14     LDA #$14
C - - - - - 0x0155D4 05:95C4: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x0155D7 05:95C7: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x0155DA 05:95CA: 38        SEC
C - - - - - 0x0155DB 05:95CB: E9 08     SBC #$08
C - - - - - 0x0155DD 05:95CD: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x0155E0 05:95D0: A9 10     LDA #$10
C - - - - - 0x0155E2 05:95D2: 4C E0 A2  JMP loc_0x0062F0



ofs_038_6C_95D5_02:
C - - J - - 0x0155E5 05:95D5: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x0155E8 05:95D8: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x0155EB 05:95DB: D0 14     BNE bra_95F1_RTS
C - - - - - 0x0155ED 05:95DD: A9 14     LDA #$14
C - - - - - 0x0155EF 05:95DF: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x0155F2 05:95E2: A0 6B     LDY #con_obj_id_6B
C - - - - - 0x0155F4 05:95E4: 20 C8 AB  JSR sub_0x006BD8
C - - - - - 0x0155F7 05:95E7: 90 08     BCC bra_95F1_RTS
C - - - - - 0x0155F9 05:95E9: DE 48 07  DEC ram_0748_obj,X
C - - - - - 0x0155FC 05:95EC: D0 03     BNE bra_95F1_RTS
C - - - - - 0x0155FE 05:95EE: 4C 75 A2  JMP loc_0x006285_delete_object_02
bra_95F1_RTS:
C - - - - - 0x015601 05:95F1: 60        RTS



_off001_0x015602_42_boss_4_hanger:
- D 0 - I - 0x015602 05:95F2: 06 96     .word ofs_038_42_9606_01_initialize_object ; 
- D 0 - I - 0x015604 05:95F4: 0F 96     .word ofs_038_42_960F_02 ; 
- D 0 - I - 0x015606 05:95F6: 25 96     .word ofs_038_42_9625_03 ; 
- D 0 - I - 0x015608 05:95F8: 8F 96     .word ofs_038_42_968F_04 ; 
- D 0 - I - 0x01560A 05:95FA: BE 96     .word ofs_038_42_96BE_05 ; 
- D 0 - I - 0x01560C 05:95FC: B8 A3     .word ofs_038_42_0x0063C8_06_boss_starts_exploding ; 
- D 0 - I - 0x01560E 05:95FE: D8 A3     .word ofs_038_42_0x0063E8_07 ; 
- D 0 - I - 0x015610 05:9600: A2 A2     .word ofs_038_42_0x0062B2_08 ; 
- D 0 - I - 0x015612 05:9602: F6 A2     .word ofs_038_42_0x006306_09 ; 
- D 0 - I - 0x015614 05:9604: CC 96     .word ofs_038_42_96CC_0A ; 



ofs_038_42_9606_01_initialize_object:
C - - J - - 0x015616 05:9606: A9 10     LDA #$10
C - - - - - 0x015618 05:9608: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x01561B 05:960B: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state
bra_960E_RTS:
C - - - - - 0x01561E 05:960E: 60        RTS



ofs_038_42_960F_02:
C - - J - - 0x01561F 05:960F: A5 7E     LDA ram_007E
C - - - - - 0x015621 05:9611: 05 60     ORA ram_0060_game_handler
C - - - - - 0x015623 05:9613: 05 70     ORA ram_0070_game_handler
C - - - - - 0x015625 05:9615: 05 80     ORA ram_0080
C - - - - - 0x015627 05:9617: D0 F5     BNE bra_960E_RTS
C - - - - - 0x015629 05:9619: A9 C8     LDA #$C8
C - - - - - 0x01562B 05:961B: 85 98     STA ram_0098
C - - - - - 0x01562D 05:961D: A9 31     LDA #con_sound_31
C - - - - - 0x01562F 05:961F: 20 DE FD  JSR sub_0x01FDEE_play_sound
C - - - - - 0x015632 05:9622: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_42_9625_03:
C - - J - - 0x015635 05:9625: A5 98     LDA ram_0098
C - - - - - 0x015637 05:9627: D0 E5     BNE bra_960E_RTS
C - - - - - 0x015639 05:9629: A9 C0     LDA #$C0
C - - - - - 0x01563B 05:962B: 85 7D     STA ram_007D_scroll_type
C - - - - - 0x01563D 05:962D: A9 7C     LDA #$7C
C - - - - - 0x01563F 05:962F: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x015642 05:9632: A9 38     LDA #$38
C - - - - - 0x015644 05:9634: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x015647 05:9637: A9 00     LDA #$00
C - - - - - 0x015649 05:9639: 9D 8E 07  STA ram_078E_obj,X
C - - - - - 0x01564C 05:963C: A9 01     LDA #$01
C - - - - - 0x01564E 05:963E: 9D 9C 07  STA ram_079C_obj,X
C - - - - - 0x015651 05:9641: 20 7F FC  JSR sub_0x01FC8F_copy_reg_values
C - - - - - 0x015654 05:9644: A9 05     LDA #con_irq_area_4_boss
C - - - - - 0x015656 05:9646: 85 27     STA ram_irq_handler_hi
C - - - - - 0x015658 05:9648: A9 18     LDA #$18
C - - - - - 0x01565A 05:964A: 85 45     STA ram_scanline
C - - - - - 0x01565C 05:964C: A9 01     LDA #$01
C - - - - - 0x01565E 05:964E: 85 46     STA ram_0046
C - - - - - 0x015660 05:9650: A9 AB     LDA #$AB
C - - - - - 0x015662 05:9652: 85 47     STA ram_0047
C - - - - - 0x015664 05:9654: A9 00     LDA #$00
C - - - - - 0x015666 05:9656: 9D 64 07  STA ram_0764_obj,X
C - - - - - 0x015669 05:9659: A0 08     LDY #$08
bra_965B_loop:
C - - - - - 0x01566B 05:965B: 84 08     STY ram_0008
C - - - - - 0x01566D 05:965D: A9 43     LDA #con_obj_id_43
; bzk optimize, load into Y directly
C - - - - - 0x01566F 05:965F: A8        TAY
C - - - - - 0x015670 05:9660: 20 C8 AB  JSR sub_0x006BD8
C - - - - - 0x015673 05:9663: 90 13     BCC bra_9678
C - - - - - 0x015675 05:9665: FE 64 07  INC ram_0764_obj,X
C - - - - - 0x015678 05:9668: A4 11     LDY ram_0011
C - - - - - 0x01567A 05:966A: A5 08     LDA ram_0008
C - - - - - 0x01567C 05:966C: 99 1E 07  STA ram_obj_flags,Y
C - - - - - 0x01567F 05:966F: 8A        TXA
C - - - - - 0x015680 05:9670: 99 80 07  STA ram_0780_obj,Y
C - - - - - 0x015683 05:9673: A4 08     LDY ram_0008
C - - - - - 0x015685 05:9675: 88        DEY
C - - - - - 0x015686 05:9676: 10 E3     BPL bra_965B_loop
bra_9678:
C - - - - - 0x015688 05:9678: A9 FF     LDA #$FF
C - - - - - 0x01568A 05:967A: 9D 10 07  STA ram_0710_obj,X
C - - - - - 0x01568D 05:967D: 9D 02 07  STA ram_0702_obj,X
C - - - - - 0x015690 05:9680: A9 02     LDA #$02
C - - - - - 0x015692 05:9682: 85 61     STA ram_0061_area_config
C - - - - - 0x015694 05:9684: 20 90 F1  JSR sub_0x01F1A0
C - - - - - 0x015697 05:9687: A9 08     LDA #$08
C - - - - - 0x015699 05:9689: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x01569C 05:968C: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_42_968F_04:
C - - J - - 0x01569F 05:968F: A5 60     LDA ram_0060_game_handler
C - - - - - 0x0156A1 05:9691: 05 70     ORA ram_0070_game_handler
C - - - - - 0x0156A3 05:9693: D0 09     BNE bra_969E_RTS
C - - - - - 0x0156A5 05:9695: DE 48 07  DEC ram_0748_obj,X
C - - - - - 0x0156A8 05:9698: F0 05     BEQ bra_969F
C - - - - - 0x0156AA 05:969A: A9 00     LDA #$00
C - - - - - 0x0156AC 05:969C: 85 6B     STA ram_006B
bra_969E_RTS:
C - - - - - 0x0156AE 05:969E: 60        RTS
bra_969F:
C - - - - - 0x0156AF 05:969F: 20 10 BD  JSR sub_0x007D20_clear_0400_047F
C - - - - - 0x0156B2 05:96A2: A9 00     LDA #$00
C - - - - - 0x0156B4 05:96A4: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x0156B7 05:96A7: A9 09     LDA #$09
C - - - - - 0x0156B9 05:96A9: 9D 72 07  STA ram_0772_obj,X
C - - - - - 0x0156BC 05:96AC: A9 40     LDA #$40
C - - - - - 0x0156BE 05:96AE: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x0156C1 05:96B1: A9 00     LDA #< $F900
C - - - - - 0x0156C3 05:96B3: 9D BC 06  STA ram_spd_X_lo_obj,X
C - - - - - 0x0156C6 05:96B6: A9 F9     LDA #> $F900
C - - - - - 0x0156C8 05:96B8: 9D CA 06  STA ram_spd_X_hi_obj,X
C - - - - - 0x0156CB 05:96BB: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_42_96BE_05:
C - - J - - 0x0156CE 05:96BE: 20 FE 96  JSR sub_96FE
C - - - - - 0x0156D1 05:96C1: 20 00 98  JSR sub_9800
C - - - - - 0x0156D4 05:96C4: BD 64 07  LDA ram_0764_obj,X
C - - - - - 0x0156D7 05:96C7: D0 D5     BNE bra_969E_RTS
C - - - - - 0x0156D9 05:96C9: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_42_96CC_0A:
C - - J - - 0x0156DC 05:96CC: 20 8C FC  JSR sub_0x01FC9C_increase_002B
C - - - - - 0x0156DF 05:96CF: 20 88 F1  JSR sub_0x01F198
C - - - - - 0x0156E2 05:96D2: E6 65     INC ram_0065
C - - - - - 0x0156E4 05:96D4: A9 08     LDA #con_chr_bank + $08
C - - - - - 0x0156E6 05:96D6: 8D F0 07  STA ram_chr_bank_bg_1
C - - - - - 0x0156E9 05:96D9: A9 0A     LDA #con_chr_bank + $0A
C - - - - - 0x0156EB 05:96DB: 8D F1 07  STA ram_chr_bank_bg_2
C - - - - - 0x0156EE 05:96DE: 4C 37 A3  JMP loc_0x006347_delete_object_boss



sub_96E1:
C - - - - - 0x0156F1 05:96E1: BD 64 07  LDA ram_0764_obj,X
C - - - - - 0x0156F4 05:96E4: 29 0E     AND #$0E
C - - - - - 0x0156F6 05:96E6: A8        TAY
C - - - - - 0x0156F7 05:96E7: B9 F4 96  LDA tbl_96F4_spd_X,Y
C - - - - - 0x0156FA 05:96EA: 9D BC 06  STA ram_spd_X_lo_obj,X
C - - - - - 0x0156FD 05:96ED: B9 F5 96  LDA tbl_96F4_spd_X + $01,Y
C - - - - - 0x015700 05:96F0: 9D CA 06  STA ram_spd_X_hi_obj,X
C - - - - - 0x015703 05:96F3: 60        RTS



tbl_96F4_spd_X:
- D 0 - - - 0x015704 05:96F4: C0 00     .word $00C0 ; 00 
- D 0 - - - 0x015706 05:96F6: A0 00     .word $00A0 ; 02 
- D 0 - - - 0x015708 05:96F8: 80 00     .word $0080 ; 04 
- D 0 - - - 0x01570A 05:96FA: 60 00     .word $0060 ; 06 
- D 0 - - - 0x01570C 05:96FC: 40 00     .word $0040 ; 08 



sub_96FE:
C - - - - - 0x01570E 05:96FE: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x015711 05:9701: 20 09 E6  JSR sub_0x01E619_jump_to_pointers_after_jsr
- D 0 - I - 0x015714 05:9704: 0E 97     .word ofs_031_970E_00
- D 0 - I - 0x015716 05:9706: 25 97     .word ofs_031_9725_01
- D 0 - I - 0x015718 05:9708: 31 97     .word ofs_031_9731_02
- D 0 - I - 0x01571A 05:970A: 25 97     .word ofs_031_9725_03
- D 0 - I - 0x01571C 05:970C: 62 97     .word ofs_031_9762_04



ofs_031_970E_00:
C - - J - - 0x01571E 05:970E: BD BC 06  LDA ram_spd_X_lo_obj,X
C - - - - - 0x015721 05:9711: 18        CLC
C - - - - - 0x015722 05:9712: 69 16     ADC #< $0016
C - - - - - 0x015724 05:9714: 9D BC 06  STA ram_spd_X_lo_obj,X
C - - - - - 0x015727 05:9717: BD CA 06  LDA ram_spd_X_hi_obj,X
C - - - - - 0x01572A 05:971A: 69 00     ADC #> $0016
C - - - - - 0x01572C 05:971C: 9D CA 06  STA ram_spd_X_hi_obj,X
C - - - - - 0x01572F 05:971F: 30 0F     BMI bra_9730_RTS    ; if moving left
; if moving right
C - - - - - 0x015731 05:9721: A9 08     LDA #$08
C - - - - - 0x015733 05:9723: D0 36     BNE bra_975B    ; jmp



ofs_031_9725_01:
ofs_031_9725_03:
C - - J - - 0x015735 05:9725: 20 C7 A7  JSR sub_0x0067D7_clear_spd_XY
C - - - - - 0x015738 05:9728: 20 B7 97  JSR sub_97B7
C - - - - - 0x01573B 05:972B: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x01573E 05:972E: F0 2E     BEQ bra_975E
bra_9730_RTS:
C - - - - - 0x015740 05:9730: 60        RTS



ofs_031_9731_02:
C - - J - - 0x015741 05:9731: 20 B7 97  JSR sub_97B7
C - - - - - 0x015744 05:9734: 20 E1 96  JSR sub_96E1
C - - - - - 0x015747 05:9737: A0 00     LDY #$00
C - - - - - 0x015749 05:9739: BD 10 07  LDA ram_0710_obj,X
C - - - - - 0x01574C 05:973C: D0 0B     BNE bra_9749
C - - - - - 0x01574E 05:973E: BD 02 07  LDA ram_0702_obj,X
bra_9741_loop:
C - - - - - 0x015751 05:9741: C8        INY
C - - - - - 0x015752 05:9742: C0 08     CPY #$08
C - - - - - 0x015754 05:9744: B0 03     BCS bra_9749
C - - - - - 0x015756 05:9746: 4A        LSR
C - - - - - 0x015757 05:9747: 90 F8     BCC bra_9741_loop
bra_9749:
C - - - - - 0x015759 05:9749: BD 9C 07  LDA ram_079C_obj,X
C - - - - - 0x01575C 05:974C: D9 93 97  CMP tbl_9793,Y
C - - - - - 0x01575F 05:974F: D0 DF     BNE bra_9730_RTS
C - - - - - 0x015761 05:9751: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x015764 05:9754: D9 9C 97  CMP tbl_979C_pos_X,Y
C - - - - - 0x015767 05:9757: 90 D7     BCC bra_9730_RTS
C - - - - - 0x015769 05:9759: A9 30     LDA #$30
bra_975B:
C - - - - - 0x01576B 05:975B: 9D E6 06  STA ram_06E6_obj,X
bra_975E:
C - - - - - 0x01576E 05:975E: FE 48 07  INC ram_0748_obj,X
C - - - - - 0x015771 05:9761: 60        RTS



ofs_031_9762_04:
C - - J - - 0x015772 05:9762: 20 B7 97  JSR sub_97B7
C - - - - - 0x015775 05:9765: 20 E1 96  JSR sub_96E1
C - - - - - 0x015778 05:9768: 20 DC A7  JSR sub_0x0067EC_inverse_spd_X
C - - - - - 0x01577B 05:976B: A0 FF     LDY #$FF
C - - - - - 0x01577D 05:976D: BD 02 07  LDA ram_0702_obj,X
bra_9770_loop:
C - - - - - 0x015780 05:9770: C8        INY
C - - - - - 0x015781 05:9771: C0 08     CPY #$08
C - - - - - 0x015783 05:9773: B0 03     BCS bra_9778
C - - - - - 0x015785 05:9775: 0A        ASL
C - - - - - 0x015786 05:9776: 90 F8     BCC bra_9770_loop
bra_9778:
C - - - - - 0x015788 05:9778: BD 9C 07  LDA ram_079C_obj,X
C - - - - - 0x01578B 05:977B: D9 A5 97  CMP tbl_97A5,Y
C - - - - - 0x01578E 05:977E: D0 B0     BNE bra_9730_RTS
C - - - - - 0x015790 05:9780: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x015793 05:9783: D9 AE 97  CMP tbl_97AE_pos_X,Y
C - - - - - 0x015796 05:9786: B0 A8     BCS bra_9730_RTS
C - - - - - 0x015798 05:9788: A9 30     LDA #$30
C - - - - - 0x01579A 05:978A: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x01579D 05:978D: A9 01     LDA #$01
C - - - - - 0x01579F 05:978F: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x0157A2 05:9792: 60        RTS



tbl_9793:
- D 0 - - - 0x0157A3 05:9793: 00        .byte $00   ; 00 
- D 0 - - - 0x0157A4 05:9794: 00        .byte $00   ; 01 
- D 0 - - - 0x0157A5 05:9795: 00        .byte $00   ; 02 
- D 0 - - - 0x0157A6 05:9796: 00        .byte $00   ; 03 
- - - - - - 0x0157A7 05:9797: 00        .byte $00   ; 04 
- - - - - - 0x0157A8 05:9798: 01        .byte $01   ; 05 
- - - - - - 0x0157A9 05:9799: 01        .byte $01   ; 06 
- - - - - - 0x0157AA 05:979A: 01        .byte $01   ; 07 
- D 0 - - - 0x0157AB 05:979B: 01        .byte $01   ; 08 



tbl_979C_pos_X:
- D 0 - - - 0x0157AC 05:979C: B0        .byte $B0   ; 00 
- D 0 - - - 0x0157AD 05:979D: C0        .byte $C0   ; 01 
- - - - - - 0x0157AE 05:979E: D0        .byte $D0   ; 02 
- D 0 - - - 0x0157AF 05:979F: E0        .byte $E0   ; 03 
- - - - - - 0x0157B0 05:97A0: F0        .byte $F0   ; 04 
- - - - - - 0x0157B1 05:97A1: 00        .byte $00   ; 05 
- - - - - - 0x0157B2 05:97A2: 10        .byte $10   ; 06 
- - - - - - 0x0157B3 05:97A3: 20        .byte $20   ; 07 
- D 0 - - - 0x0157B4 05:97A4: 30        .byte $30   ; 08 



tbl_97A5:
- D 0 - - - 0x0157B5 05:97A5: 00        .byte $00   ; 00 
- - - - - - 0x0157B6 05:97A6: 00        .byte $00   ; 01 
- - - - - - 0x0157B7 05:97A7: 00        .byte $00   ; 02 
- D 0 - - - 0x0157B8 05:97A8: 00        .byte $00   ; 03 
- D 0 - - - 0x0157B9 05:97A9: 00        .byte $00   ; 04 
- D 0 - - - 0x0157BA 05:97AA: FF        .byte $FF   ; 05 
- D 0 - - - 0x0157BB 05:97AB: FF        .byte $FF   ; 06 
- D 0 - - - 0x0157BC 05:97AC: FF        .byte $FF   ; 07 
- D 0 - - - 0x0157BD 05:97AD: FF        .byte $FF   ; 08 



tbl_97AE_pos_X:
- D 0 - - - 0x0157BE 05:97AE: 50        .byte $50   ; 00 
- - - - - - 0x0157BF 05:97AF: 40        .byte $40   ; 01 
- - - - - - 0x0157C0 05:97B0: 30        .byte $30   ; 02 
- D 0 - - - 0x0157C1 05:97B1: 20        .byte $20   ; 03 
- D 0 - - - 0x0157C2 05:97B2: 10        .byte $10   ; 04 
- - - - - - 0x0157C3 05:97B3: FF        .byte $FF   ; 05 
- D 0 - - - 0x0157C4 05:97B4: F0        .byte $F0   ; 06 
- D 0 - - - 0x0157C5 05:97B5: E0        .byte $E0   ; 07 
- - - - - - 0x0157C6 05:97B6: D0        .byte $D0   ; 08 



sub_97B7:
C - - - - - 0x0157C7 05:97B7: DE F4 06  DEC ram_06F4_obj,X
C - - - - - 0x0157CA 05:97BA: D0 43     BNE bra_97FF_RTS
C - - - - - 0x0157CC 05:97BC: BD 72 07  LDA ram_0772_obj,X
C - - - - - 0x0157CF 05:97BF: C9 FF     CMP #$FF
C - - - - - 0x0157D1 05:97C1: F0 02     BEQ bra_97C5
C - - - - - 0x0157D3 05:97C3: 29 7F     AND #$7F
bra_97C5:
C - - - - - 0x0157D5 05:97C5: 9D 72 07  STA ram_0772_obj,X
C - - - - - 0x0157D8 05:97C8: A9 14     LDA #$14
C - - - - - 0x0157DA 05:97CA: BC 64 07  LDY ram_0764_obj,X
C - - - - - 0x0157DD 05:97CD: C0 06     CPY #$06
C - - - - - 0x0157DF 05:97CF: B0 02     BCS bra_97D3
C - - - - - 0x0157E1 05:97D1: A9 10     LDA #$10
bra_97D3:
C - - - - - 0x0157E3 05:97D3: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x0157E6 05:97D6: BD 56 07  LDA ram_0756_obj,X
C - - - - - 0x0157E9 05:97D9: 4A        LSR
C - - - - - 0x0157EA 05:97DA: A9 FF     LDA #$FF
C - - - - - 0x0157EC 05:97DC: 90 02     BCC bra_97E0
C - - - - - 0x0157EE 05:97DE: A9 01     LDA #$01
bra_97E0:
C - - - - - 0x0157F0 05:97E0: 18        CLC
C - - - - - 0x0157F1 05:97E1: 7D 72 07  ADC ram_0772_obj,X
C - - - - - 0x0157F4 05:97E4: C9 09     CMP #$09
C - - - - - 0x0157F6 05:97E6: 90 12     BCC bra_97FA
C - - - - - 0x0157F8 05:97E8: A8        TAY
C - - - - - 0x0157F9 05:97E9: BD 56 07  LDA ram_0756_obj,X
C - - - - - 0x0157FC 05:97EC: 49 01     EOR #$01
C - - - - - 0x0157FE 05:97EE: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x015801 05:97F1: A9 30     LDA #$30
C - - - - - 0x015803 05:97F3: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x015806 05:97F6: 98        TYA
C - - - - - 0x015807 05:97F7: 4C FC 97  JMP loc_97FC
bra_97FA:
C - - - - - 0x01580A 05:97FA: 09 80     ORA #$80
loc_97FC:
C D 0 - - - 0x01580C 05:97FC: 9D 72 07  STA ram_0772_obj,X
bra_97FF_RTS:
C - - - - - 0x01580F 05:97FF: 60        RTS



sub_9800:
C - - - - - 0x015810 05:9800: 20 5D A7  JSR sub_0x00676D
C - - - - - 0x015813 05:9803: A9 7C     LDA #$7C
C - - - - - 0x015815 05:9805: 38        SEC
C - - - - - 0x015816 05:9806: FD 3C 05  SBC ram_pos_X_hi_enemy,X
C - - - - - 0x015819 05:9809: 85 FA     STA ram_00FA_scroll_X
C - - - - - 0x01581B 05:980B: 2A        ROL
C - - - - - 0x01581C 05:980C: 5D 9C 07  EOR ram_079C_obj,X
C - - - - - 0x01581F 05:980F: 4A        LSR
C - - - - - 0x015820 05:9810: A9 A8     LDA #$A8
C - - - - - 0x015822 05:9812: B0 02     BCS bra_9816
C - - - - - 0x015824 05:9814: A9 A9     LDA #$A9
bra_9816:
C - - - - - 0x015826 05:9816: 85 FB     STA ram_00FB_for_2000
C - - - - - 0x015828 05:9818: 60        RTS


; bzk garbage, same code as 0x0047A9
- - - - - - 0x015829 05:9819: A9 14     LDA #$14
- - - - - - 0x01582B 05:981B: 85 08     STA ram_0008
- - - - - - 0x01582D 05:981D: A0 00     LDY #$00
; bzk optimize, check ram_index_ppu_buffer first
- - - - - - 0x01582F 05:981F: A6 1E     LDX ram_index_ppu_buffer
- - - - - - 0x015831 05:9821: E0 40     CPX #$40
- - - - - - 0x015833 05:9823: B0 0F     BCS bra_9834_skip
; if buffer is not too loaded
bra_9825_loop:
- - - - - - 0x015835 05:9825: B9 37 98  LDA tbl_9837,Y
- - - - - - 0x015838 05:9828: 9D 00 03  STA ram_nmt_buffer,X
- - - - - - 0x01583B 05:982B: E8        INX
- - - - - - 0x01583C 05:982C: C8        INY
- - - - - - 0x01583D 05:982D: C6 08     DEC ram_0008
- - - - - - 0x01583F 05:982F: D0 F4     BNE bra_9825_loop
- - - - - - 0x015841 05:9831: 86 1E     STX ram_index_ppu_buffer
- - - - - - 0x015843 05:9833: 18        CLC
bra_9834_skip:
- - - - - - 0x015844 05:9834: A6 10     LDX ram_0010
- - - - - - 0x015846 05:9836: 60        RTS



tbl_9837:
; bzk garbage, same table as 0x01086D
- - - - - - 0x015847 05:9837: 03        .byte con_buf_mode_03   ; 

- - - - - - 0x015848 05:9838: 23 D8     .dbyt $23D8 ; ppu address
- - - - - - 0x01584A 05:983A: 12        .byte $12, $AA   ; counter + fill tile

- - - - - - 0x01584C 05:983C: 06        .byte con_buf_mode_06   ; 

- - - - - - 0x01584D 05:983D: 23 EA     .dbyt $23EA ; ppu address
- - - - - - 0x01584F 05:983F: 05        .byte $05   ; counter
- - - - - - 0x015850 05:9840: AE        .byte $AE, $FA, $FA, $FA, $FA   ; tiles

- - - - - - 0x015855 05:9845: FF        .byte $FF   ; change mode

- - - - - - 0x015856 05:9846: 03        .byte con_buf_mode_03   ;
 
- - - - - - 0x015857 05:9847: 23 EF     .dbyt $23EF ; ppu address
- - - - - - 0x015859 05:9849: 08        .byte $08, $AA   ; counter + fill tile



_off004_0x01585B_06_area_7:
- D 0 - I - 0x01585B 05:984B: 02        .byte $02   ; columns
- D 0 - I - 0x01585C 05:984C: 0E        .byte $0E   ; rows

;                                              00   01
- D 0 - I - 0x01585D 05:984D: 01        .byte $01, $00   ; 00 
- D 0 - I - 0x01585F 05:984F: 02        .byte $02, $00   ; 01 
- D 0 - I - 0x015861 05:9851: 03        .byte $03, $00   ; 02 
- D 0 - I - 0x015863 05:9853: 04        .byte $04, $00   ; 03 
- D 0 - I - 0x015865 05:9855: 05        .byte $05, $00   ; 04 
- D 0 - I - 0x015867 05:9857: 06        .byte $06, $00   ; 05 
- D 0 - I - 0x015869 05:9859: 07        .byte $07, $00   ; 06 
- D 0 - I - 0x01586B 05:985B: 08        .byte $08, $00   ; 07 
- D 0 - I - 0x01586D 05:985D: 09        .byte $09, $00   ; 08 
- D 0 - I - 0x01586F 05:985F: 0A        .byte $0A, $00   ; 09 
- D 0 - I - 0x015871 05:9861: 0B        .byte $0B, $00   ; 0A 
- D 0 - I - 0x015873 05:9863: 0C        .byte $0C, $00   ; 0B 
- D 0 - I - 0x015875 05:9865: 0D        .byte $0D, $00   ; 0C 
- D 0 - I - 0x015877 05:9867: 0E        .byte $0E, $00   ; 0D 



_off005_0x015879_06_area_7:
- D 0 - I - 0x015879 05:9869: 87 98     .word _off018_06_9887_00
- D 0 - I - 0x01587B 05:986B: C7 98     .word _off018_06_98C7_01
- D 0 - I - 0x01587D 05:986D: 07 99     .word _off018_06_9907_02
- D 0 - I - 0x01587F 05:986F: 47 99     .word _off018_06_9947_03
- D 0 - I - 0x015881 05:9871: 87 99     .word _off018_06_9987_04
- D 0 - I - 0x015883 05:9873: C7 99     .word _off018_06_99C7_05
- D 0 - I - 0x015885 05:9875: 07 9A     .word _off018_06_9A07_06
- D 0 - I - 0x015887 05:9877: 47 9A     .word _off018_06_9A47_07
- D 0 - I - 0x015889 05:9879: 87 9A     .word _off018_06_9A87_08
- D 0 - I - 0x01588B 05:987B: C7 9A     .word _off018_06_9AC7_09
- D 0 - I - 0x01588D 05:987D: 07 9B     .word _off018_06_9B07_0A
- D 0 - I - 0x01588F 05:987F: 47 9B     .word _off018_06_9B47_0B
- D 0 - I - 0x015891 05:9881: 87 9B     .word _off018_06_9B87_0C
- D 0 - I - 0x015893 05:9883: C7 9B     .word _off018_06_9BC7_0D
- D 0 - I - 0x015895 05:9885: 07 9C     .word _off018_06_9C07_0E



_off018_06_9887_00:
;                                              00   01   02   03   04   05   06   07
- D 0 - I - 0x015897 05:9887: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 00 
- D 0 - I - 0x01589F 05:988F: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 01 
- D 0 - I - 0x0158A7 05:9897: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 02 
- D 0 - I - 0x0158AF 05:989F: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 03 
- D 0 - I - 0x0158B7 05:98A7: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 04 
- D 0 - I - 0x0158BF 05:98AF: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 05 
- D 0 - I - 0x0158C7 05:98B7: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 06 
- D 0 - I - 0x0158CF 05:98BF: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 07 



_off018_06_98C7_01:
;                                              00   01   02   03   04   05   06   07
- D 0 - I - 0x0158D7 05:98C7: 38        .byte $38, $38, $38, $38, $38, $38, $38, $38   ; 00 
- D 0 - I - 0x0158DF 05:98CF: 39        .byte $39, $39, $39, $39, $39, $39, $39, $39   ; 01 
- D 0 - I - 0x0158E7 05:98D7: 3A        .byte $3A, $3A, $3A, $3A, $3A, $3A, $3A, $3A   ; 02 
- D 0 - I - 0x0158EF 05:98DF: 3F        .byte $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F   ; 03 
- D 0 - I - 0x0158F7 05:98E7: 40        .byte $40, $40, $48, $48, $48, $48, $40, $40   ; 04 
- D 0 - I - 0x0158FF 05:98EF: 0B        .byte $0B, $09, $0A, $0B, $00, $0B, $0B, $0B   ; 05 
- D 0 - I - 0x015907 05:98F7: 02        .byte $02, $01, $03, $02, $10, $03, $02, $03   ; 06 
- D 0 - I - 0x01590F 05:98FF: 01        .byte $01, $03, $02, $03, $10, $01, $0E, $02   ; 07 



_off018_06_9907_02:
;                                              00   01   02   03   04   05   06   07
- D 0 - I - 0x015917 05:9907: 02        .byte $02, $01, $02, $01, $06, $08, $02, $01   ; 00 
- D 0 - I - 0x01591F 05:990F: 03        .byte $03, $02, $03, $02, $03, $05, $03, $02   ; 01 
- D 0 - I - 0x015927 05:9917: 02        .byte $02, $03, $02, $01, $02, $05, $02, $03   ; 02 
- D 0 - I - 0x01592F 05:991F: 01        .byte $01, $02, $03, $02, $02, $07, $03, $02   ; 03 
- D 0 - I - 0x015937 05:9927: 03        .byte $03, $02, $03, $02, $06, $08, $02, $03   ; 04 
- D 0 - I - 0x01593F 05:992F: 03        .byte $03, $02, $03, $0F, $04, $02, $03, $02   ; 05 
- D 0 - I - 0x015947 05:9937: 0D        .byte $0D, $0E, $0F, $04, $00, $02, $02, $03   ; 06 
- D 0 - I - 0x01594F 05:993F: 00        .byte $00, $00, $00, $00, $0B, $03, $03, $02   ; 07 



_off018_06_9947_03:
;                                              00   01   02   03   04   05   06   07
- D 0 - I - 0x015957 05:9947: 3C        .byte $3C, $37, $3C, $00, $0D, $0E, $0E, $0D   ; 00 
- D 0 - I - 0x01595F 05:994F: 20        .byte $20, $21, $37, $3C, $3C, $3C, $3C, $3C   ; 01 
- D 0 - I - 0x015967 05:9957: 24        .byte $24, $25, $20, $21, $38, $38, $38, $38   ; 02 
- D 0 - I - 0x01596F 05:995F: 22        .byte $22, $22, $24, $25, $26, $27, $39, $39   ; 03 
- D 0 - I - 0x015977 05:9967: 22        .byte $22, $22, $28, $29, $2A, $2B, $49, $3A   ; 04 
- D 0 - I - 0x01597F 05:996F: 29        .byte $29, $23, $3C, $3C, $3B, $3B, $3B, $46   ; 05 
- D 0 - I - 0x015987 05:9977: 37        .byte $37, $37, $37, $37, $37, $12, $13, $16   ; 06 
- D 0 - I - 0x01598F 05:997F: 37        .byte $37, $37, $37, $3D, $13, $16, $17, $1B   ; 07 



_off018_06_9987_04:
;                                              00   01   02   03   04   05   06   07
- D 0 - I - 0x015997 05:9987: 40        .byte $40, $40, $14, $15, $16, $17, $11, $11   ; 00 
- D 0 - I - 0x01599F 05:998F: 40        .byte $40, $40, $18, $19, $1A, $1B, $11, $11   ; 01 
- D 0 - I - 0x0159A7 05:9997: 21        .byte $21, $40, $40, $3E, $3E, $44, $1F, $1A   ; 02 
- D 0 - I - 0x0159AF 05:999F: 25        .byte $25, $20, $21, $47, $39, $39, $39, $39   ; 03 
- D 0 - I - 0x0159B7 05:99A7: 22        .byte $22, $24, $25, $20, $42, $4B, $3A, $3A   ; 04 
- D 0 - I - 0x0159BF 05:99AF: 22        .byte $22, $22, $28, $24, $2C, $2D, $4A, $3B   ; 05 
- D 0 - I - 0x0159C7 05:99B7: 29        .byte $29, $23, $3C, $3C, $3C, $3C, $37, $37   ; 06 
- D 0 - I - 0x0159CF 05:99BF: 3C        .byte $3C, $37, $37, $37, $37, $37, $37, $37   ; 07 



_off018_06_99C7_05:
;                                              00   01   02   03   04   05   06   07
- D 0 - I - 0x0159D7 05:99C7: 40        .byte $40, $40, $40, $2E, $30, $30, $30, $30   ; 00 
- D 0 - I - 0x0159DF 05:99CF: 40        .byte $40, $40, $43, $2F, $34, $31, $32, $32   ; 01 
- D 0 - I - 0x0159E7 05:99D7: 20        .byte $20, $21, $40, $40, $40, $33, $35, $36   ; 02 
- D 0 - I - 0x0159EF 05:99DF: 24        .byte $24, $25, $20, $21, $40, $3E, $3E, $3E   ; 03 
- D 0 - I - 0x0159F7 05:99E7: 22        .byte $22, $22, $24, $25, $26, $27, $47, $39   ; 04 
- D 0 - I - 0x0159FF 05:99EF: 22        .byte $22, $22, $28, $29, $2A, $2B, $49, $3A   ; 05 
- D 0 - I - 0x015A07 05:99F7: 29        .byte $29, $23, $3C, $40, $3F, $3F, $3F, $46   ; 06 
- D 0 - I - 0x015A0F 05:99FF: 40        .byte $40, $40, $40, $40, $40, $40, $13, $16   ; 07 



_off018_06_9A07_06:
;                                              00   01   02   03   04   05   06   07
- D 0 - I - 0x015A17 05:9A07: 37        .byte $37, $37, $37, $37, $12, $13, $16, $17   ; 00 
- D 0 - I - 0x015A1F 05:9A0F: 37        .byte $37, $37, $14, $15, $16, $17, $11, $11   ; 01 
- D 0 - I - 0x015A27 05:9A17: 37        .byte $37, $3D, $18, $19, $1A, $1B, $11, $11   ; 02 
- D 0 - I - 0x015A2F 05:9A1F: 21        .byte $21, $3E, $3E, $3E, $3E, $44, $1F, $1A   ; 03 
- D 0 - I - 0x015A37 05:9A27: 25        .byte $25, $20, $41, $47, $39, $39, $39, $39   ; 04 
- D 0 - I - 0x015A3F 05:9A2F: 22        .byte $22, $24, $25, $20, $42, $4B, $3A, $3A   ; 05 
- D 0 - I - 0x015A47 05:9A37: 22        .byte $22, $22, $22, $24, $2C, $2D, $4A, $3B   ; 06 
- D 0 - I - 0x015A4F 05:9A3F: 22        .byte $22, $29, $23, $3C, $3C, $3C, $37, $37   ; 07 



_off018_06_9A47_07:
;                                              00   01   02   03   04   05   06   07
- D 0 - I - 0x015A57 05:9A47: 29        .byte $29, $23, $40, $48, $48, $48, $48, $40   ; 00 
- D 0 - I - 0x015A5F 05:9A4F: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 01 
- D 0 - I - 0x015A67 05:9A57: 62        .byte $62, $00, $00, $00, $00, $00, $00, $63   ; 02 
- D 0 - I - 0x015A6F 05:9A5F: 5D        .byte $5D, $4C, $4D, $00, $00, $56, $57, $5E   ; 03 
- D 0 - I - 0x015A77 05:9A67: 5D        .byte $5D, $50, $4E, $4F, $53, $54, $55, $5E   ; 04 
- D 0 - I - 0x015A7F 05:9A6F: 5D        .byte $5D, $50, $52, $52, $52, $51, $55, $5E   ; 05 
- D 0 - I - 0x015A87 05:9A77: 5D        .byte $5D, $50, $51, $52, $51, $51, $55, $5E   ; 06 
- D 0 - I - 0x015A8F 05:9A7F: 5D        .byte $5D, $00, $00, $00, $00, $00, $00, $5E   ; 07 



_off018_06_9A87_08:
;                                              00   01   02   03   04   05   06   07
- D 0 - I - 0x015A97 05:9A87: 5D        .byte $5D, $50, $4C, $4D, $00, $4F, $55, $5E   ; 00 
- D 0 - I - 0x015A9F 05:9A8F: 5D        .byte $5D, $51, $51, $57, $50, $51, $55, $5E   ; 01 
- D 0 - I - 0x015AA7 05:9A97: 5D        .byte $5D, $50, $51, $51, $52, $51, $55, $5E   ; 02 
- D 0 - I - 0x015AAF 05:9A9F: 5D        .byte $5D, $50, $52, $52, $52, $52, $55, $5E   ; 03 
- D 0 - I - 0x015AB7 05:9AA7: 5D        .byte $5D, $50, $51, $52, $52, $51, $55, $5E   ; 04 
- D 0 - I - 0x015ABF 05:9AAF: 5D        .byte $5D, $50, $50, $51, $51, $51, $5A, $68   ; 05 
- D 0 - I - 0x015AC7 05:9AB7: 5C        .byte $5C, $58, $59, $52, $5A, $5B, $5F, $11   ; 06 
- D 0 - I - 0x015ACF 05:9ABF: 22        .byte $22, $22, $6A, $52, $6B, $11, $11, $11   ; 07 



_off018_06_9AC7_09:
;                                              00   01   02   03   04   05   06   07
- D 0 - I - 0x015AD7 05:9AC7: 22        .byte $22, $22, $5D, $51, $5E, $11, $11, $11   ; 00 
- D 0 - I - 0x015ADF 05:9ACF: 22        .byte $22, $22, $5D, $50, $5E, $11, $11, $11   ; 01 
- D 0 - I - 0x015AE7 05:9AD7: 22        .byte $22, $22, $5D, $51, $5E, $11, $11, $11   ; 02 
- D 0 - I - 0x015AEF 05:9ADF: 22        .byte $22, $22, $5D, $50, $5E, $11, $11, $11   ; 03 
- D 0 - I - 0x015AF7 05:9AE7: 22        .byte $22, $22, $5D, $51, $5E, $11, $11, $11   ; 04 
- D 0 - I - 0x015AFF 05:9AEF: 22        .byte $22, $22, $5D, $50, $5E, $11, $11, $11   ; 05 
- D 0 - I - 0x015B07 05:9AF7: 22        .byte $22, $28, $5D, $51, $5E, $11, $11, $11   ; 06 
- D 0 - I - 0x015B0F 05:9AFF: 22        .byte $22, $22, $5D, $54, $5E, $11, $11, $11   ; 07 



_off018_06_9B07_0A:
;                                              00   01   02   03   04   05   06   07
- D 0 - I - 0x015B17 05:9B07: 22        .byte $22, $66, $60, $00, $61, $67, $11, $11   ; 00 
- D 0 - I - 0x015B1F 05:9B0F: 64        .byte $64, $3C, $3C, $37, $37, $37, $65, $1A   ; 01 
- D 0 - I - 0x015B27 05:9B17: 3C        .byte $3C, $37, $6C, $69, $6D, $37, $37, $3C   ; 02 
- D 0 - I - 0x015B2F 05:9B1F: 37        .byte $37, $37, $37, $37, $37, $37, $37, $6E   ; 03 
- D 0 - I - 0x015B37 05:9B27: 37        .byte $37, $37, $37, $37, $6C, $69, $69, $6D   ; 04 
- D 0 - I - 0x015B3F 05:9B2F: 6E        .byte $6E, $6E, $37, $3D, $3C, $3C, $3C, $3C   ; 05 
- D 0 - I - 0x015B47 05:9B37: 6C        .byte $6C, $69, $69, $69, $6D, $37, $37, $37   ; 06 
- D 0 - I - 0x015B4F 05:9B3F: 37        .byte $37, $37, $37, $37, $37, $37, $37, $37   ; 07 



_off018_06_9B47_0B:
;                                              00   01   02   03   04   05   06   07
- D 0 - I - 0x015B57 05:9B47: 37        .byte $37, $37, $37, $37, $6E, $37, $37, $37   ; 00 
- D 0 - I - 0x015B5F 05:9B4F: 37        .byte $37, $37, $37, $37, $6C, $69, $69, $6D   ; 01 
- D 0 - I - 0x015B67 05:9B57: 37        .byte $37, $6E, $37, $37, $6E, $3C, $3C, $3C   ; 02 
- D 0 - I - 0x015B6F 05:9B5F: 6C        .byte $6C, $69, $69, $69, $69, $6D, $37, $37   ; 03 
- D 0 - I - 0x015B77 05:9B67: 37        .byte $37, $37, $37, $37, $37, $37, $37, $37   ; 04 
- D 0 - I - 0x015B7F 05:9B6F: 37        .byte $37, $37, $6E, $37, $37, $37, $3D, $6E   ; 05 
- D 0 - I - 0x015B87 05:9B77: 37        .byte $37, $6C, $69, $69, $69, $69, $69, $6D   ; 06 
- D 0 - I - 0x015B8F 05:9B7F: 37        .byte $37, $3C, $3C, $3C, $3C, $3C, $3C, $3C   ; 07 



_off018_06_9B87_0C:
;                                              00   01   02   03   04   05   06   07
- D 0 - I - 0x015B97 05:9B87: 37        .byte $37, $37, $37, $37, $37, $37, $37, $37   ; 00 
- D 0 - I - 0x015B9F 05:9B8F: 37        .byte $37, $3D, $6E, $37, $6E, $37, $37, $37   ; 01 
- D 0 - I - 0x015BA7 05:9B97: 6C        .byte $6C, $69, $69, $69, $69, $6D, $37, $37   ; 02 
- D 0 - I - 0x015BAF 05:9B9F: 3C        .byte $3C, $3C, $3C, $3C, $3C, $3C, $37, $37   ; 03 
- D 0 - I - 0x015BB7 05:9BA7: 3C        .byte $3C, $37, $37, $6E, $37, $37, $37, $6E   ; 04 
- D 0 - I - 0x015BBF 05:9BAF: 37        .byte $37, $37, $6C, $69, $69, $69, $69, $6D   ; 05 
- D 0 - I - 0x015BC7 05:9BB7: 37        .byte $37, $37, $3C, $3C, $3C, $3C, $3C, $3C   ; 06 
- D 0 - I - 0x015BCF 05:9BBF: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 07 



_off018_06_9BC7_0D:
;                                              00   01   02   03   04   05   06   07
- D 0 - I - 0x015BD7 05:9BC7: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 00 
- D 0 - I - 0x015BDF 05:9BCF: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 01 
- D 0 - I - 0x015BE7 05:9BD7: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 02 
- D 0 - I - 0x015BEF 05:9BDF: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 03 
- D 0 - I - 0x015BF7 05:9BE7: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 04 
- D 0 - I - 0x015BFF 05:9BEF: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 05 
- D 0 - I - 0x015C07 05:9BF7: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 06 
- D 0 - I - 0x015C0F 05:9BFF: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 07 



_off018_06_9C07_0E:
;                                              00   01   02   03   04   05   06   07
- D 0 - I - 0x015C17 05:9C07: 00        .byte $00, $71, $72, $73, $74, $75, $76, $00   ; 00 
- D 0 - I - 0x015C1F 05:9C0F: 00        .byte $00, $77, $78, $79, $7A, $7B, $00, $00   ; 01 
- D 0 - I - 0x015C27 05:9C17: 7C        .byte $7C, $7D, $7E, $7F, $80, $81, $82, $83   ; 02 
- D 0 - I - 0x015C2F 05:9C1F: 00        .byte $00, $84, $85, $86, $87, $88, $89, $00   ; 03 
- D 0 - I - 0x015C37 05:9C27: 00        .byte $00, $8A, $8B, $8C, $8D, $8E, $8F, $00   ; 04 
- D 0 - I - 0x015C3F 05:9C2F: 90        .byte $90, $91, $92, $93, $94, $95, $96, $97   ; 05 
- D 0 - I - 0x015C47 05:9C37: 98        .byte $98, $99, $9A, $9B, $9C, $9D, $9E, $9F   ; 06 
- - - - - - 0x015C4F 05:9C3F: A0        .byte $A0, $A0, $A0, $A0, $A0, $A0, $A0, $A0   ; 07 



_off006_0x015C57_06_area_7:
; 00 
- D 0 - I - 0x015C57 05:9C47: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x015C5B 05:9C4B: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x015C5F 05:9C4F: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x015C63 05:9C53: 00        .byte $00, $00, $00, $00   ; 
; 01 
- D 0 - I - 0x015C67 05:9C57: 17        .byte $17, $5D, $18, $5E   ; 
- D 0 - I - 0x015C6B 05:9C5B: 5B        .byte $5B, $5C, $5F, $5A   ; 
- D 0 - I - 0x015C6F 05:9C5F: 20        .byte $20, $58, $21, $59   ; 
- D 0 - I - 0x015C73 05:9C63: 16        .byte $16, $19, $1A, $1B   ; 
; 02 
- D 0 - I - 0x015C77 05:9C67: 3A        .byte $3A, $1C, $1D, $3B   ; 
- D 0 - I - 0x015C7B 05:9C6B: 3C        .byte $3C, $3D, $3E, $3F   ; 
- D 0 - I - 0x015C7F 05:9C6F: 22        .byte $22, $40, $23, $41   ; 
- D 0 - I - 0x015C83 05:9C73: 42        .byte $42, $43, $44, $45   ; 
; 03 
- D 0 - I - 0x015C87 05:9C77: 1E        .byte $1E, $46, $1F, $60   ; 
- D 0 - I - 0x015C8B 05:9C7B: 61        .byte $61, $62, $63, $64   ; 
- D 0 - I - 0x015C8F 05:9C7F: 24        .byte $24, $65, $25, $66   ; 
- D 0 - I - 0x015C93 05:9C83: 67        .byte $67, $68, $69, $6A   ; 
; 04 
- D 0 - I - 0x015C97 05:9C87: 03        .byte $03, $00, $00, $00   ; 
- D 0 - I - 0x015C9B 05:9C8B: 71        .byte $71, $00, $00, $00   ; 
- D 0 - I - 0x015C9F 05:9C8F: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x015CA3 05:9C93: 00        .byte $00, $00, $00, $00   ; 
; 05 
- D 0 - I - 0x015CA7 05:9C97: 03        .byte $03, $00, $00, $73   ; 
- D 0 - I - 0x015CAB 05:9C9B: 71        .byte $71, $00, $00, $74   ; 
- D 0 - I - 0x015CAF 05:9C9F: 04        .byte $04, $00, $00, $75   ; 
- D 0 - I - 0x015CB3 05:9CA3: 72        .byte $72, $00, $00, $76   ; 
; 06 
- D 0 - I - 0x015CB7 05:9CA7: 03        .byte $03, $00, $00, $00   ; 
- D 0 - I - 0x015CBB 05:9CAB: 71        .byte $71, $00, $00, $00   ; 
- D 0 - I - 0x015CBF 05:9CAF: 04        .byte $04, $00, $00, $00   ; 
- D 0 - I - 0x015CC3 05:9CB3: 72        .byte $72, $00, $00, $00   ; 
; 07 
- D 0 - I - 0x015CC7 05:9CB7: 01        .byte $01, $00, $00, $6D   ; 
- D 0 - I - 0x015CCB 05:9CBB: 6B        .byte $6B, $00, $00, $00   ; 
- D 0 - I - 0x015CCF 05:9CBF: 02        .byte $02, $00, $00, $00   ; 
- D 0 - I - 0x015CD3 05:9CC3: 6C        .byte $6C, $00, $00, $70   ; 
; 08 
- D 0 - I - 0x015CD7 05:9CC7: 00        .byte $00, $00, $00, $6D   ; 
- D 0 - I - 0x015CDB 05:9CCB: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x015CDF 05:9CCF: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x015CE3 05:9CD3: 00        .byte $00, $00, $00, $70   ; 
; 09 
- D 0 - I - 0x015CE7 05:9CD7: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x015CEB 05:9CDB: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x015CEF 05:9CDF: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x015CF3 05:9CE3: 77        .byte $77, $00, $00, $7A   ; 
; 0A 
- D 0 - I - 0x015CF7 05:9CE7: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x015CFB 05:9CEB: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x015CFF 05:9CEF: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x015D03 05:9CF3: 7B        .byte $7B, $00, $78, $79   ; 
; 0B 
- D 0 - I - 0x015D07 05:9CF7: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x015D0B 05:9CFB: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x015D0F 05:9CFF: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x015D13 05:9D03: 7A        .byte $7A, $7B, $78, $79   ; 
; 0C 
- - - - - - 0x015D17 05:9D07: 03        .byte $03, $00, $00, $76   ; 
- - - - - - 0x015D1B 05:9D0B: 71        .byte $71, $00, $00, $6D   ; 
- - - - - - 0x015D1F 05:9D0F: 04        .byte $04, $00, $00, $6F   ; 
- - - - - - 0x015D23 05:9D13: 72        .byte $72, $00, $00, $70   ; 
; 0D 
- D 0 - I - 0x015D27 05:9D17: 3A        .byte $3A, $1C, $1D, $3B   ; 
- D 0 - I - 0x015D2B 05:9D1B: 3C        .byte $3C, $3D, $3E, $3F   ; 
- D 0 - I - 0x015D2F 05:9D1F: 22        .byte $22, $40, $23, $41   ; 
- D 0 - I - 0x015D33 05:9D23: 42        .byte $42, $43, $44, $7C   ; 
; 0E 
- D 0 - I - 0x015D37 05:9D27: 1E        .byte $1E, $46, $1F, $60   ; 
- D 0 - I - 0x015D3B 05:9D2B: 61        .byte $61, $62, $63, $64   ; 
- D 0 - I - 0x015D3F 05:9D2F: 24        .byte $24, $65, $25, $66   ; 
- D 0 - I - 0x015D43 05:9D33: 05        .byte $05, $7D, $06, $7E   ; 
; 0F 
- D 0 - I - 0x015D47 05:9D37: 1E        .byte $1E, $46, $1F, $60   ; 
- D 0 - I - 0x015D4B 05:9D3B: 61        .byte $61, $62, $63, $64   ; 
- D 0 - I - 0x015D4F 05:9D3F: 24        .byte $24, $65, $25, $66   ; 
- D 0 - I - 0x015D53 05:9D43: 05        .byte $05, $7D, $06, $7F   ; 
; 10 
- D 0 - I - 0x015D57 05:9D47: 03        .byte $03, $00, $00, $73   ; 
- D 0 - I - 0x015D5B 05:9D4B: 71        .byte $71, $00, $00, $74   ; 
- D 0 - I - 0x015D5F 05:9D4F: 04        .byte $04, $00, $00, $75   ; 
- D 0 - I - 0x015D63 05:9D53: 00        .byte $00, $00, $00, $00   ; 
; 11 
- D 0 - I - 0x015D67 05:9D57: 2A        .byte $2A, $8E, $2B, $8F   ; 
- D 0 - I - 0x015D6B 05:9D5B: 2C        .byte $2C, $90, $2D, $91   ; 
- D 0 - I - 0x015D6F 05:9D5F: 2B        .byte $2B, $8F, $2A, $8E   ; 
- D 0 - I - 0x015D73 05:9D63: 2D        .byte $2D, $91, $2C, $90   ; 
; 12 
- D 0 - I - 0x015D77 05:9D67: 0C        .byte $0C, $B5, $0D, $B6   ; 
- D 0 - I - 0x015D7B 05:9D6B: B7        .byte $B7, $B8, $00, $00   ; 
- D 0 - I - 0x015D7F 05:9D6F: 00        .byte $00, $80, $51, $81   ; 
- D 0 - I - 0x015D83 05:9D73: 82        .byte $82, $83, $84, $4D   ; 
; 13 
- D 0 - I - 0x015D87 05:9D77: 00        .byte $00, $80, $51, $81   ; 
- D 0 - I - 0x015D8B 05:9D7B: 82        .byte $82, $83, $84, $4D   ; 
- D 0 - I - 0x015D8F 05:9D7F: 4D        .byte $4D, $81, $4F, $85   ; 
- D 0 - I - 0x015D93 05:9D83: 86        .byte $86, $87, $50, $88   ; 
; 14 
- D 0 - I - 0x015D97 05:9D87: 0C        .byte $0C, $B5, $0D, $00   ; 
- D 0 - I - 0x015D9B 05:9D8B: B7        .byte $B7, $B8, $00, $00   ; 
- D 0 - I - 0x015D9F 05:9D8F: 00        .byte $00, $80, $51, $81   ; 
- D 0 - I - 0x015DA3 05:9D93: 82        .byte $82, $83, $84, $4E   ; 
; 15 
- D 0 - I - 0x015DA7 05:9D97: 00        .byte $00, $80, $51, $81   ; 
- D 0 - I - 0x015DAB 05:9D9B: 82        .byte $82, $83, $84, $4D   ; 
- D 0 - I - 0x015DAF 05:9D9F: 4D        .byte $4D, $81, $4F, $85   ; 
- D 0 - I - 0x015DB3 05:9DA3: 8B        .byte $8B, $50, $88, $8A   ; 
; 16 
- D 0 - I - 0x015DB7 05:9DA7: 4D        .byte $4D, $81, $4F, $85   ; 
- D 0 - I - 0x015DBB 05:9DAB: 86        .byte $86, $87, $50, $88   ; 
- D 0 - I - 0x015DBF 05:9DAF: 26        .byte $26, $89, $27, $28   ; 
- D 0 - I - 0x015DC3 05:9DB3: 29        .byte $29, $8A, $28, $92   ; 
; 17 
- D 0 - I - 0x015DC7 05:9DB7: 26        .byte $26, $89, $27, $28   ; 
- D 0 - I - 0x015DCB 05:9DBB: 29        .byte $29, $8A, $28, $92   ; 
- D 0 - I - 0x015DCF 05:9DBF: 2B        .byte $2B, $8F, $2A, $8E   ; 
- D 0 - I - 0x015DD3 05:9DC3: 2D        .byte $2D, $91, $2C, $90   ; 
; 18 
- D 0 - I - 0x015DD7 05:9DC7: 4E        .byte $4E, $8C, $50, $88   ; 
- D 0 - I - 0x015DDB 05:9DCB: 8D        .byte $8D, $29, $8A, $28   ; 
- D 0 - I - 0x015DDF 05:9DCF: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x015DE3 05:9DD3: B7        .byte $B7, $B8, $B9, $BA   ; 
; 19 
- D 0 - I - 0x015DE7 05:9DD7: 29        .byte $29, $8A, $28, $92   ; 
- D 0 - I - 0x015DEB 05:9DDB: 93        .byte $93, $0B, $0B, $94   ; 
- D 0 - I - 0x015DEF 05:9DDF: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x015DF3 05:9DE3: B7        .byte $B7, $B8, $B9, $BA   ; 
; 1A 
- D 0 - I - 0x015DF7 05:9DE7: 2A        .byte $2A, $8E, $2B, $8F   ; 
- D 0 - I - 0x015DFB 05:9DEB: 2C        .byte $2C, $90, $2D, $91   ; 
- D 0 - I - 0x015DFF 05:9DEF: 00        .byte $00, $93, $07, $8E   ; 
- D 0 - I - 0x015E03 05:9DF3: 00        .byte $00, $00, $00, $93   ; 
; 1B 
- D 0 - I - 0x015E07 05:9DF7: 2A        .byte $2A, $8E, $2B, $8F   ; 
- D 0 - I - 0x015E0B 05:9DFB: 2C        .byte $2C, $90, $2D, $91   ; 
- D 0 - I - 0x015E0F 05:9DFF: 2A        .byte $2A, $8E, $2A, $8E   ; 
- D 0 - I - 0x015E13 05:9E03: 0B        .byte $0B, $94, $0B, $94   ; 
; 1C 
- - - - - - 0x015E17 05:9E07: 00        .byte $00, $80, $51, $81   ; 
- - - - - - 0x015E1B 05:9E0B: 82        .byte $82, $83, $84, $4E   ; 
- - - - - - 0x015E1F 05:9E0F: 4E        .byte $4E, $8C, $50, $88   ; 
- - - - - - 0x015E23 05:9E13: 8D        .byte $8D, $29, $8A, $28   ; 
; 1D 
- - - - - - 0x015E27 05:9E17: 4D        .byte $4D, $81, $4F, $85   ; 
- - - - - - 0x015E2B 05:9E1B: 8B        .byte $8B, $50, $88, $8A   ; 
- - - - - - 0x015E2F 05:9E1F: 29        .byte $29, $8A, $28, $92   ; 
- - - - - - 0x015E33 05:9E23: 93        .byte $93, $0B, $0B, $94   ; 
; 1E 
- - - - - - 0x015E37 05:9E27: 26        .byte $26, $89, $27, $28   ; 
- - - - - - 0x015E3B 05:9E2B: 29        .byte $29, $8A, $28, $92   ; 
- - - - - - 0x015E3F 05:9E2F: 2A        .byte $2A, $8E, $2B, $8F   ; 
- - - - - - 0x015E43 05:9E33: 2C        .byte $2C, $90, $2D, $91   ; 
; 1F 
- D 0 - I - 0x015E47 05:9E37: 00        .byte $00, $93, $07, $8E   ; 
- D 0 - I - 0x015E4B 05:9E3B: 00        .byte $00, $00, $00, $93   ; 
- D 0 - I - 0x015E4F 05:9E3F: 0E        .byte $0E, $BD, $0E, $00   ; 
- D 0 - I - 0x015E53 05:9E43: BE        .byte $BE, $BF, $BE, $BF   ; 
; 20 
- D 0 - I - 0x015E57 05:9E47: 56        .byte $56, $95, $08, $00   ; 
- D 0 - I - 0x015E5B 05:9E4B: 99        .byte $99, $98, $97, $96   ; 
- D 0 - I - 0x015E5F 05:9E4F: 54        .byte $54, $9A, $52, $99   ; 
- D 0 - I - 0x015E63 05:9E53: 55        .byte $55, $9D, $9C, $9B   ; 
; 21 
- D 0 - I - 0x015E67 05:9E57: 0C        .byte $0C, $B5, $0D, $B6   ; 
- D 0 - I - 0x015E6B 05:9E5B: 00        .byte $00, $B8, $B9, $BA   ; 
- D 0 - I - 0x015E6F 05:9E5F: 56        .byte $56, $95, $08, $00   ; 
- D 0 - I - 0x015E73 05:9E63: 99        .byte $99, $98, $97, $96   ; 
; 22 
- D 0 - I - 0x015E77 05:9E67: 32        .byte $32, $A5, $31, $A4   ; 
- D 0 - I - 0x015E7B 05:9E6B: A9        .byte $A9, $A8, $A7, $A6   ; 
- D 0 - I - 0x015E7F 05:9E6F: 31        .byte $31, $A4, $32, $A5   ; 
- D 0 - I - 0x015E83 05:9E73: A7        .byte $A7, $A6, $A9, $A8   ; 
; 23 
- D 0 - I - 0x015E87 05:9E77: 09        .byte $09, $A4, $0A, $00   ; 
- D 0 - I - 0x015E8B 05:9E7B: 0A        .byte $0A, $00, $00, $00   ; 
- D 0 - I - 0x015E8F 05:9E7F: 00        .byte $00, $00, $0C, $B5   ; 
- D 0 - I - 0x015E93 05:9E83: B9        .byte $B9, $BA, $B7, $B8   ; 
; 24 
- D 0 - I - 0x015E97 05:9E87: 2F        .byte $2F, $9F, $2E, $9E   ; 
- D 0 - I - 0x015E9B 05:9E8B: 39        .byte $39, $2F, $30, $A0   ; 
- D 0 - I - 0x015E9F 05:9E8F: 31        .byte $31, $A4, $32, $A5   ; 
- D 0 - I - 0x015EA3 05:9E93: A7        .byte $A7, $A6, $A9, $A8   ; 
; 25 
- D 0 - I - 0x015EA7 05:9E97: 54        .byte $54, $9A, $52, $99   ; 
- D 0 - I - 0x015EAB 05:9E9B: 55        .byte $55, $9D, $9C, $9B   ; 
- D 0 - I - 0x015EAF 05:9E9F: 2F        .byte $2F, $9F, $2E, $9E   ; 
- D 0 - I - 0x015EB3 05:9EA3: 39        .byte $39, $2F, $30, $A0   ; 
; 26 
- D 0 - I - 0x015EB7 05:9EA7: 56        .byte $56, $95, $08, $00   ; 
- D 0 - I - 0x015EBB 05:9EAB: 99        .byte $99, $98, $97, $96   ; 
- D 0 - I - 0x015EBF 05:9EAF: 54        .byte $54, $9A, $52, $99   ; 
- D 0 - I - 0x015EC3 05:9EB3: 30        .byte $30, $55, $9D, $A1   ; 
; 27 
- D 0 - I - 0x015EC7 05:9EB7: 0F        .byte $0F, $C0, $0F, $C0   ; 
- D 0 - I - 0x015ECB 05:9EBB: 00        .byte $00, $C2, $C1, $C2   ; 
- D 0 - I - 0x015ECF 05:9EBF: 56        .byte $56, $95, $08, $00   ; 
- D 0 - I - 0x015ED3 05:9EC3: A2        .byte $A2, $98, $97, $96   ; 
; 28 
- D 0 - I - 0x015ED7 05:9EC7: 32        .byte $32, $A5, $31, $A4   ; 
- D 0 - I - 0x015EDB 05:9ECB: A9        .byte $A9, $A8, $A7, $A6   ; 
- D 0 - I - 0x015EDF 05:9ECF: 31        .byte $31, $A4, $31, $A4   ; 
- D 0 - I - 0x015EE3 05:9ED3: AB        .byte $AB, $AA, $AB, $AA   ; 
; 29 
- D 0 - I - 0x015EE7 05:9ED7: 32        .byte $32, $A5, $31, $A4   ; 
- D 0 - I - 0x015EEB 05:9EDB: A9        .byte $A9, $A8, $A7, $A6   ; 
- D 0 - I - 0x015EEF 05:9EDF: 09        .byte $09, $A4, $0A, $00   ; 
- D 0 - I - 0x015EF3 05:9EE3: 0A        .byte $0A, $00, $00, $00   ; 
; 2A 
- D 0 - I - 0x015EF7 05:9EE7: 39        .byte $39, $2F, $30, $A0   ; 
- D 0 - I - 0x015EFB 05:9EEB: AB        .byte $AB, $AA, $AA, $0A   ; 
- D 0 - I - 0x015EFF 05:9EEF: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x015F03 05:9EF3: B9        .byte $B9, $BA, $CA, $CB   ; 
; 2B 
- D 0 - I - 0x015F07 05:9EF7: 55        .byte $55, $9D, $53, $A2   ; 
- D 0 - I - 0x015F0B 05:9EFB: 2F        .byte $2F, $30, $A0, $A3   ; 
- D 0 - I - 0x015F0F 05:9EFF: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x015F13 05:9F03: CA        .byte $CA, $CB, $CA, $CB   ; 
; 2C 
- D 0 - I - 0x015F17 05:9F07: 54        .byte $54, $9A, $52, $99   ; 
- D 0 - I - 0x015F1B 05:9F0B: 30        .byte $30, $55, $9D, $A1   ; 
- D 0 - I - 0x015F1F 05:9F0F: 39        .byte $39, $2F, $30, $A0   ; 
- D 0 - I - 0x015F23 05:9F13: AB        .byte $AB, $AA, $AA, $0A   ; 
; 2D 
- D 0 - I - 0x015F27 05:9F17: 56        .byte $56, $95, $08, $00   ; 
- D 0 - I - 0x015F2B 05:9F1B: A2        .byte $A2, $98, $97, $96   ; 
- D 0 - I - 0x015F2F 05:9F1F: 55        .byte $55, $9D, $53, $A2   ; 
- D 0 - I - 0x015F33 05:9F23: 2F        .byte $2F, $30, $A0, $A3   ; 
; 2E 
- D 0 - I - 0x015F37 05:9F27: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x015F3B 05:9F2B: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x015F3F 05:9F2F: 33        .byte $33, $AC, $34, $AD   ; 
- D 0 - I - 0x015F43 05:9F33: AE        .byte $AE, $AF, $84, $4D   ; 
; 2F 
- D 0 - I - 0x015F47 05:9F37: 15        .byte $15, $B2, $37, $B3   ; 
- D 0 - I - 0x015F4B 05:9F3B: 00        .byte $00, $93, $0B, $94   ; 
- D 0 - I - 0x015F4F 05:9F3F: 0C        .byte $0C, $B5, $00, $00   ; 
- D 0 - I - 0x015F53 05:9F43: B7        .byte $B7, $B8, $B9, $BA   ; 
; 30 
- D 0 - I - 0x015F57 05:9F47: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x015F5B 05:9F4B: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x015F5F 05:9F4F: 35        .byte $35, $B0, $36, $B1   ; 
- D 0 - I - 0x015F63 05:9F53: 84        .byte $84, $87, $84, $4D   ; 
; 31 
- D 0 - I - 0x015F67 05:9F57: 38        .byte $38, $B4, $37, $B3   ; 
- D 0 - I - 0x015F6B 05:9F5B: 2B        .byte $2B, $8F, $2B, $8F   ; 
- D 0 - I - 0x015F6F 05:9F5F: 2D        .byte $2D, $91, $2C, $90   ; 
- D 0 - I - 0x015F73 05:9F63: 2A        .byte $2A, $8E, $2A, $8E   ; 
; 32 
- D 0 - I - 0x015F77 05:9F67: 38        .byte $38, $B4, $37, $B3   ; 
- D 0 - I - 0x015F7B 05:9F6B: 2A        .byte $2A, $8E, $2B, $8F   ; 
- D 0 - I - 0x015F7F 05:9F6F: 2C        .byte $2C, $90, $2D, $91   ; 
- D 0 - I - 0x015F83 05:9F73: 2B        .byte $2B, $8F, $2A, $8E   ; 
; 33 
- D 0 - I - 0x015F87 05:9F77: 00        .byte $00, $93, $0B, $94   ; 
- D 0 - I - 0x015F8B 05:9F7B: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x015F8F 05:9F7F: 0C        .byte $0C, $B5, $0D, $B6   ; 
- D 0 - I - 0x015F93 05:9F83: B7        .byte $B7, $B8, $B9, $BA   ; 
; 34 
- D 0 - I - 0x015F97 05:9F87: 38        .byte $38, $B4, $37, $B3   ; 
- D 0 - I - 0x015F9B 05:9F8B: 2C        .byte $2C, $90, $2D, $91   ; 
- D 0 - I - 0x015F9F 05:9F8F: 00        .byte $00, $93, $07, $8E   ; 
- D 0 - I - 0x015FA3 05:9F93: 00        .byte $00, $00, $00, $93   ; 
; 35 
- D 0 - I - 0x015FA7 05:9F97: 07        .byte $07, $91, $2C, $91   ; 
- D 0 - I - 0x015FAB 05:9F9B: 00        .byte $00, $93, $2A, $8E   ; 
- D 0 - I - 0x015FAF 05:9F9F: 0C        .byte $0C, $00, $00, $93   ; 
- D 0 - I - 0x015FB3 05:9FA3: B7        .byte $B7, $B8, $00, $00   ; 
; 36 
- D 0 - I - 0x015FB7 05:9FA7: 2C        .byte $2C, $90, $2C, $90   ; 
- D 0 - I - 0x015FBB 05:9FAB: 2A        .byte $2A, $8E, $2B, $8F   ; 
- D 0 - I - 0x015FBF 05:9FAF: 0B        .byte $0B, $94, $07, $8E   ; 
- D 0 - I - 0x015FC3 05:9FB3: 00        .byte $00, $00, $00, $93   ; 
; 37 
- D 0 - I - 0x015FC7 05:9FB7: 0C        .byte $0C, $B5, $0D, $B6   ; 
- D 0 - I - 0x015FCB 05:9FBB: B7        .byte $B7, $B8, $B9, $BA   ; 
- D 0 - I - 0x015FCF 05:9FBF: 0D        .byte $0D, $B6, $0C, $B5   ; 
- D 0 - I - 0x015FD3 05:9FC3: B9        .byte $B9, $BA, $B7, $B8   ; 
; 38 
- D 0 - I - 0x015FD7 05:9FC7: 0C        .byte $0C, $B5, $0D, $B6   ; 
- D 0 - I - 0x015FDB 05:9FCB: BB        .byte $BB, $BC, $BB, $BC   ; 
- D 0 - I - 0x015FDF 05:9FCF: 0E        .byte $0E, $BD, $0E, $BD   ; 
- D 0 - I - 0x015FE3 05:9FD3: BE        .byte $BE, $BF, $BE, $BF   ; 
; 39 
- D 0 - I - 0x015FE7 05:9FD7: 0F        .byte $0F, $C0, $0F, $C0   ; 
- D 0 - I - 0x015FEB 05:9FDB: C1        .byte $C1, $C2, $C1, $C2   ; 
- D 0 - I - 0x015FEF 05:9FDF: 10        .byte $10, $C3, $10, $C3   ; 
- D 0 - I - 0x015FF3 05:9FE3: C4        .byte $C4, $C5, $C4, $C5   ; 
; 3A 
- D 0 - I - 0x015FF7 05:9FE7: 11        .byte $11, $C6, $11, $C6   ; 
- D 0 - I - 0x015FFB 05:9FEB: C7        .byte $C7, $C8, $C7, $C8   ; 
- D 0 - I - 0x015FFF 05:9FEF: 12        .byte $12, $C9, $12, $C9   ; 
- D 0 - I - 0x016003 05:9FF3: CA        .byte $CA, $CB, $CA, $CB   ; 
; 3B 
- D 0 - I - 0x016007 05:9FF7: 13        .byte $13, $CC, $13, $CC   ; 
- D 0 - I - 0x01600B 05:9FFB: CD        .byte $CD, $CE, $CD, $CE   ; 
- D 0 - I - 0x01600F 05:9FFF: 14        .byte $14, $CF, $14, $CF   ; 
- D 1 - I - 0x016013 05:A003: B9        .byte $B9, $BA, $B7, $B8   ; 
; 3C 
- D 1 - I - 0x016017 05:A007: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01601B 05:A00B: B7        .byte $B7, $B8, $B9, $BA   ; 
- D 1 - I - 0x01601F 05:A00F: 0D        .byte $0D, $B6, $0C, $B5   ; 
- D 1 - I - 0x016023 05:A013: B9        .byte $B9, $BA, $B7, $B8   ; 
; 3D 
- D 1 - I - 0x016027 05:A017: 0C        .byte $0C, $B5, $0D, $00   ; 
- D 1 - I - 0x01602B 05:A01B: B7        .byte $B7, $B8, $B9, $00   ; 
- D 1 - I - 0x01602F 05:A01F: 0D        .byte $0D, $B6, $0C, $B5   ; 
- D 1 - I - 0x016033 05:A023: B9        .byte $B9, $BA, $B7, $B8   ; 
; 3E 
- D 1 - I - 0x016037 05:A027: 0D        .byte $0D, $B6, $0C, $B5   ; 
- D 1 - I - 0x01603B 05:A02B: BB        .byte $BB, $BC, $BB, $BC   ; 
- D 1 - I - 0x01603F 05:A02F: 0E        .byte $0E, $BD, $0E, $BD   ; 
- D 1 - I - 0x016043 05:A033: BE        .byte $BE, $BF, $BE, $BF   ; 
; 3F 
- D 1 - I - 0x016047 05:A037: 13        .byte $13, $CC, $13, $CC   ; 
- D 1 - I - 0x01604B 05:A03B: CD        .byte $CD, $CE, $CD, $CE   ; 
- D 1 - I - 0x01604F 05:A03F: 14        .byte $14, $CF, $14, $CF   ; 
- D 1 - I - 0x016053 05:A043: B7        .byte $B7, $B8, $B9, $BA   ; 
; 40 
- D 1 - I - 0x016057 05:A047: 0D        .byte $0D, $B6, $0C, $B5   ; 
- D 1 - I - 0x01605B 05:A04B: B9        .byte $B9, $BA, $B7, $B8   ; 
- D 1 - I - 0x01605F 05:A04F: 0C        .byte $0C, $B5, $0D, $B6   ; 
- D 1 - I - 0x016063 05:A053: B7        .byte $B7, $B8, $B9, $BA   ; 
; 41 
- D 1 - I - 0x016067 05:A057: 0F        .byte $0F, $C0, $0F, $C0   ; 
- D 1 - I - 0x01606B 05:A05B: 00        .byte $00, $C2, $C1, $C2   ; 
- D 1 - I - 0x01606F 05:A05F: 56        .byte $56, $95, $08, $00   ; 
- D 1 - I - 0x016073 05:A063: 99        .byte $99, $98, $97, $96   ; 
; 42 
- D 1 - I - 0x016077 05:A067: 11        .byte $11, $C8, $11, $C6   ; 
- D 1 - I - 0x01607B 05:A06B: 00        .byte $00, $00, $C7, $C8   ; 
- D 1 - I - 0x01607F 05:A06F: 56        .byte $56, $95, $08, $00   ; 
- D 1 - I - 0x016083 05:A073: 99        .byte $99, $98, $97, $96   ; 
; 43 
- D 1 - I - 0x016087 05:A077: 0D        .byte $0D, $B6, $0C, $00   ; 
- D 1 - I - 0x01608B 05:A07B: B9        .byte $B9, $BA, $B7, $00   ; 
- D 1 - I - 0x01608F 05:A07F: 0C        .byte $0C, $B5, $0D, $00   ; 
- D 1 - I - 0x016093 05:A083: B7        .byte $B7, $B8, $B9, $BA   ; 
; 44 
- D 1 - I - 0x016097 05:A087: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01609B 05:A08B: BB        .byte $BB, $BC, $BB, $BC   ; 
- D 1 - I - 0x01609F 05:A08F: 0E        .byte $0E, $BD, $0E, $BD   ; 
- D 1 - I - 0x0160A3 05:A093: BE        .byte $BE, $BF, $BE, $BF   ; 
; 45 
- - - - - - 0x0160A7 05:A097: 13        .byte $13, $CC, $13, $CC   ; 
- - - - - - 0x0160AB 05:A09B: CD        .byte $CD, $CE, $CD, $CE   ; 
- - - - - - 0x0160AF 05:A09F: 14        .byte $14, $CF, $14, $CF   ; 
- - - - - - 0x0160B3 05:A0A3: 00        .byte $00, $00, $00, $00   ; 
; 46 
- D 1 - I - 0x0160B7 05:A0A7: 13        .byte $13, $CC, $13, $CC   ; 
- D 1 - I - 0x0160BB 05:A0AB: CD        .byte $CD, $CE, $00, $00   ; 
- D 1 - I - 0x0160BF 05:A0AF: 00        .byte $00, $80, $51, $81   ; 
- D 1 - I - 0x0160C3 05:A0B3: 82        .byte $82, $83, $84, $4D   ; 
; 47 
- D 1 - I - 0x0160C7 05:A0B7: 0F        .byte $0F, $C0, $0F, $C0   ; 
- D 1 - I - 0x0160CB 05:A0BB: C1        .byte $C1, $C2, $C1, $C2   ; 
- D 1 - I - 0x0160CF 05:A0BF: 10        .byte $10, $C3, $10, $C3   ; 
- D 1 - I - 0x0160D3 05:A0C3: 00        .byte $00, $00, $C4, $C5   ; 
; 48 
- D 1 - I - 0x0160D7 05:A0C7: 0D        .byte $0D, $B6, $0C, $B5   ; 
- D 1 - I - 0x0160DB 05:A0CB: B9        .byte $B9, $BA, $B7, $B8   ; 
- D 1 - I - 0x0160DF 05:A0CF: 0C        .byte $0C, $B5, $0D, $B6   ; 
- D 1 - I - 0x0160E3 05:A0D3: 00        .byte $00, $B8, $00, $00   ; 
; 49 
- D 1 - I - 0x0160E7 05:A0D7: 00        .byte $00, $00, $11, $C6   ; 
- D 1 - I - 0x0160EB 05:A0DB: 00        .byte $00, $C8, $C7, $C8   ; 
- D 1 - I - 0x0160EF 05:A0DF: 00        .byte $00, $C9, $12, $C9   ; 
- D 1 - I - 0x0160F3 05:A0E3: CA        .byte $CA, $CB, $CA, $CB   ; 
; 4A 
- D 1 - I - 0x0160F7 05:A0E7: 13        .byte $13, $CC, $13, $CC   ; 
- D 1 - I - 0x0160FB 05:A0EB: 00        .byte $00, $CE, $CD, $CE   ; 
- D 1 - I - 0x0160FF 05:A0EF: 00        .byte $00, $CF, $14, $CF   ; 
- D 1 - I - 0x016103 05:A0F3: 00        .byte $00, $BA, $B7, $B8   ; 
; 4B 
- D 1 - I - 0x016107 05:A0F7: 11        .byte $11, $C6, $11, $C6   ; 
- D 1 - I - 0x01610B 05:A0FB: C7        .byte $C7, $C8, $C7, $C8   ; 
- D 1 - I - 0x01610F 05:A0FF: 00        .byte $00, $C9, $12, $C9   ; 
- D 1 - I - 0x016113 05:A103: 00        .byte $00, $00, $CA, $CB   ; 
; 4C 
- D 1 - I - 0x016117 05:A107: 46        .byte $46, $D0, $00, $00   ; 
- D 1 - I - 0x01611B 05:A10B: D1        .byte $D1, $D2, $00, $00   ; 
- D 1 - I - 0x01611F 05:A10F: 4C        .byte $4C, $E2, $49, $D7   ; 
- D 1 - I - 0x016123 05:A113: E3        .byte $E3, $E4, $D8, $D9   ; 
; 4D 
- D 1 - I - 0x016127 05:A117: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01612B 05:A11B: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01612F 05:A11F: 46        .byte $46, $D0, $00, $00   ; 
- D 1 - I - 0x016133 05:A123: D1        .byte $D1, $D2, $00, $00   ; 
; 4E 
- D 1 - I - 0x016137 05:A127: 4B        .byte $4B, $DC, $47, $D0   ; 
- D 1 - I - 0x01613B 05:A12B: DD        .byte $DD, $DE, $D1, $D2   ; 
- D 1 - I - 0x01613F 05:A12F: 4C        .byte $4C, $E2, $46, $D0   ; 
- D 1 - I - 0x016143 05:A133: E3        .byte $E3, $E4, $D1, $D2   ; 
; 4F 
- D 1 - I - 0x016147 05:A137: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01614B 05:A13B: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01614F 05:A13F: 46        .byte $46, $D0, $49, $D7   ; 
- D 1 - I - 0x016153 05:A143: D1        .byte $D1, $D2, $D8, $D9   ; 
; 50 
- D 1 - I - 0x016157 05:A147: 48        .byte $48, $D4, $46, $D0   ; 
- D 1 - I - 0x01615B 05:A14B: D5        .byte $D5, $D6, $D1, $D2   ; 
- D 1 - I - 0x01615F 05:A14F: 46        .byte $46, $D0, $45, $DF   ; 
- D 1 - I - 0x016163 05:A153: D1        .byte $D1, $D2, $E0, $E1   ; 
; 51 
- D 1 - I - 0x016167 05:A157: 4B        .byte $4B, $DC, $4A, $D7   ; 
- D 1 - I - 0x01616B 05:A15B: DD        .byte $DD, $DE, $D8, $D9   ; 
- D 1 - I - 0x01616F 05:A15F: 4C        .byte $4C, $E2, $48, $D4   ; 
- D 1 - I - 0x016173 05:A163: E3        .byte $E3, $E4, $D5, $D6   ; 
; 52 
- D 1 - I - 0x016177 05:A167: 4B        .byte $4B, $DC, $4A, $D7   ; 
- D 1 - I - 0x01617B 05:A16B: DD        .byte $DD, $DE, $DA, $DB   ; 
- D 1 - I - 0x01617F 05:A16F: 4C        .byte $4C, $E2, $45, $DF   ; 
- D 1 - I - 0x016183 05:A173: E3        .byte $E3, $E4, $E0, $E1   ; 
; 53 
- D 1 - I - 0x016187 05:A177: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01618B 05:A17B: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01618F 05:A17F: 46        .byte $46, $D0, $48, $D4   ; 
- D 1 - I - 0x016193 05:A183: D1        .byte $D1, $D2, $D5, $D6   ; 
; 54 
- D 1 - I - 0x016197 05:A187: 46        .byte $46, $D0, $49, $D7   ; 
- D 1 - I - 0x01619B 05:A18B: D1        .byte $D1, $D2, $DA, $DB   ; 
- D 1 - I - 0x01619F 05:A18F: 4C        .byte $4C, $E2, $45, $DF   ; 
- D 1 - I - 0x0161A3 05:A193: E3        .byte $E3, $E4, $E0, $E1   ; 
; 55 
- D 1 - I - 0x0161A7 05:A197: 46        .byte $46, $D0, $48, $D4   ; 
- D 1 - I - 0x0161AB 05:A19B: D1        .byte $D1, $D2, $D5, $D6   ; 
- D 1 - I - 0x0161AF 05:A19F: 45        .byte $45, $DF, $46, $D0   ; 
- D 1 - I - 0x0161B3 05:A1A3: E0        .byte $E0, $E1, $D1, $D2   ; 
; 56 
- D 1 - I - 0x0161B7 05:A1A7: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x0161BB 05:A1AB: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x0161BF 05:A1AF: 00        .byte $00, $00, $45, $DF   ; 
- D 1 - I - 0x0161C3 05:A1B3: 00        .byte $00, $00, $E0, $E1   ; 
; 57 
- D 1 - I - 0x0161C7 05:A1B7: 46        .byte $46, $D0, $48, $D4   ; 
- D 1 - I - 0x0161CB 05:A1BB: D1        .byte $D1, $D2, $D5, $D6   ; 
- D 1 - I - 0x0161CF 05:A1BF: 4C        .byte $4C, $E2, $45, $DF   ; 
- D 1 - I - 0x0161D3 05:A1C3: E3        .byte $E3, $E4, $E0, $E1   ; 
; 58 
- D 1 - I - 0x0161D7 05:A1C7: 36        .byte $36, $B0, $37, $B1   ; 
- D 1 - I - 0x0161DB 05:A1CB: 84        .byte $84, $87, $84, $F6   ; 
- D 1 - I - 0x0161DF 05:A1CF: 38        .byte $38, $B4, $1E, $F7   ; 
- D 1 - I - 0x0161E3 05:A1D3: 32        .byte $32, $A5, $31, $F4   ; 
; 59 
- D 1 - I - 0x0161E7 05:A1D7: 16        .byte $16, $00, $48, $D4   ; 
- D 1 - I - 0x0161EB 05:A1DB: E5        .byte $E5, $E6, $D5, $D6   ; 
- D 1 - I - 0x0161EF 05:A1DF: 35        .byte $35, $E7, $16, $00   ; 
- D 1 - I - 0x0161F3 05:A1E3: E8        .byte $E8, $E9, $E5, $E6   ; 
; 5A 
- D 1 - I - 0x0161F7 05:A1E7: 46        .byte $46, $D0, $00, $F9   ; 
- D 1 - I - 0x0161FB 05:A1EB: D1        .byte $D1, $D2, $FA, $FB   ; 
- D 1 - I - 0x0161FF 05:A1EF: 00        .byte $00, $F9, $3A, $FC   ; 
- D 1 - I - 0x016203 05:A1F3: FA        .byte $FA, $FB, $FD, $FE   ; 
; 5B 
- D 1 - I - 0x016207 05:A1F7: 36        .byte $36, $B0, $37, $B1   ; 
- D 1 - I - 0x01620B 05:A1FB: 7A        .byte $7A, $87, $84, $4D   ; 
- D 1 - I - 0x01620F 05:A1FF: 23        .byte $23, $B4, $1E, $B3   ; 
- D 1 - I - 0x016213 05:A203: 78        .byte $78, $8E, $2B, $8F   ; 
; 5C 
- D 1 - I - 0x016217 05:A207: 32        .byte $32, $F3, $35, $E7   ; 
- D 1 - I - 0x01621B 05:A20B: A9        .byte $A9, $F4, $E8, $E9   ; 
- D 1 - I - 0x01621F 05:A20F: 31        .byte $31, $A4, $32, $F5   ; 
- D 1 - I - 0x016223 05:A213: A7        .byte $A7, $A6, $A9, $A8   ; 
; 5D 
- D 1 - I - 0x016227 05:A217: 32        .byte $32, $EA, $33, $EC   ; 
- D 1 - I - 0x01622B 05:A21B: A9        .byte $A9, $EB, $ED, $EE   ; 
- D 1 - I - 0x01622F 05:A21F: 31        .byte $31, $EF, $34, $F1   ; 
- D 1 - I - 0x016233 05:A223: A7        .byte $A7, $F0, $ED, $F2   ; 
; 5E 
- D 1 - I - 0x016237 05:A227: 24        .byte $24, $FF, $25, $8F   ; 
- D 1 - I - 0x01623B 05:A22B: 72        .byte $72, $73, $74, $91   ; 
- D 1 - I - 0x01623F 05:A22F: 1F        .byte $1F, $75, $20, $8E   ; 
- D 1 - I - 0x016243 05:A233: 76        .byte $76, $73, $77, $90   ; 
; 5F 
- D 1 - I - 0x016247 05:A237: 3A        .byte $3A, $FC, $21, $8F   ; 
- D 1 - I - 0x01624B 05:A23B: FD        .byte $FD, $FE, $78, $91   ; 
- D 1 - I - 0x01624F 05:A23F: 22        .byte $22, $8F, $2A, $8E   ; 
- D 1 - I - 0x016253 05:A243: 2D        .byte $2D, $91, $2A, $8E   ; 
; 60 
- D 1 - I - 0x016257 05:A247: 32        .byte $32, $EA, $33, $EC   ; 
- D 1 - I - 0x01625B 05:A24B: A9        .byte $A9, $7F, $7E, $EE   ; 
- D 1 - I - 0x01625F 05:A24F: 01        .byte $01, $0A, $02, $F8   ; 
- D 1 - I - 0x016263 05:A253: 00        .byte $00, $00, $00, $00   ; 
; 61 
- D 1 - I - 0x016267 05:A257: 24        .byte $24, $FF, $25, $8F   ; 
- D 1 - I - 0x01626B 05:A25B: 72        .byte $72, $7B, $7C, $91   ; 
- D 1 - I - 0x01626F 05:A25F: 03        .byte $03, $7D, $04, $2A   ; 
- D 1 - I - 0x016273 05:A263: 00        .byte $00, $00, $00, $00   ; 
; 62 
- D 1 - I - 0x016277 05:A267: 16        .byte $16, $00, $00, $00   ; 
- D 1 - I - 0x01627B 05:A26B: E5        .byte $E5, $E6, $00, $00   ; 
- D 1 - I - 0x01627F 05:A26F: 35        .byte $35, $E7, $16, $00   ; 
- D 1 - I - 0x016283 05:A273: E8        .byte $E8, $E9, $E5, $E6   ; 
; 63 
- D 1 - I - 0x016287 05:A277: 00        .byte $00, $00, $00, $F9   ; 
- D 1 - I - 0x01628B 05:A27B: 00        .byte $00, $00, $FA, $FB   ; 
- D 1 - I - 0x01628F 05:A27F: 00        .byte $00, $F9, $3A, $FC   ; 
- D 1 - I - 0x016293 05:A283: FA        .byte $FA, $FB, $FD, $FE   ; 
; 64 
- D 1 - I - 0x016297 05:A287: 01        .byte $01, $A9, $01, $0A   ; 
- D 1 - I - 0x01629B 05:A28B: AA        .byte $AA, $0A, $00, $00   ; 
- D 1 - I - 0x01629F 05:A28F: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x0162A3 05:A293: 00        .byte $00, $00, $00, $00   ; 
; 65 
- D 1 - I - 0x0162A7 05:A297: 04        .byte $04, $2A, $07, $2C   ; 
- D 1 - I - 0x0162AB 05:A29B: 00        .byte $00, $00, $93, $0B   ; 
- D 1 - I - 0x0162AF 05:A29F: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x0162B3 05:A2A3: 00        .byte $00, $00, $00, $00   ; 
; 66 
- D 1 - I - 0x0162B7 05:A2A7: 32        .byte $32, $A5, $31, $A4   ; 
- D 1 - I - 0x0162BB 05:A2AB: A9        .byte $A9, $A8, $A7, $A6   ; 
- D 1 - I - 0x0162BF 05:A2AF: 32        .byte $32, $A7, $32, $A9   ; 
- D 1 - I - 0x0162C3 05:A2B3: A8        .byte $A8, $AB, $AA, $0A   ; 
; 67 
- D 1 - I - 0x0162C7 05:A2B7: 2A        .byte $2A, $8E, $2B, $8F   ; 
- D 1 - I - 0x0162CB 05:A2BB: 2C        .byte $2C, $90, $2D, $91   ; 
- D 1 - I - 0x0162CF 05:A2BF: 2B        .byte $2B, $8F, $2A, $8E   ; 
- D 1 - I - 0x0162D3 05:A2C3: 93        .byte $93, $0B, $94, $90   ; 
; 68 
- D 1 - I - 0x0162D7 05:A2C7: 3A        .byte $3A, $FC, $21, $79   ; 
- D 1 - I - 0x0162DB 05:A2CB: FD        .byte $FD, $FE, $78, $91   ; 
- D 1 - I - 0x0162DF 05:A2CF: 21        .byte $21, $8F, $2A, $8E   ; 
- D 1 - I - 0x0162E3 05:A2D3: 78        .byte $78, $91, $2C, $90   ; 
; 69 
- D 1 - I - 0x0162E7 05:A2D7: 1B        .byte $1B, $BF, $1C, $C0   ; 
- D 1 - I - 0x0162EB 05:A2DB: C1        .byte $C1, $C2, $C3, $C4   ; 
- D 1 - I - 0x0162EF 05:A2DF: 18        .byte $18, $C5, $17, $C6   ; 
- D 1 - I - 0x0162F3 05:A2E3: C7        .byte $C7, $C8, $C9, $CA   ; 
; 6A 
- D 1 - I - 0x0162F7 05:A2E7: 32        .byte $32, $EA, $33, $EC   ; 
- D 1 - I - 0x0162FB 05:A2EB: A9        .byte $A9, $EB, $99, $EE   ; 
- - - - - - 0x0162FF 05:A2EF: 31        .byte $31, $EF, $34, $F1   ; 
- - - - - - 0x016303 05:A2F3: A7        .byte $A7, $F0, $ED, $F2   ; 
; 6B 
- D 1 - I - 0x016307 05:A2F7: 24        .byte $24, $FF, $25, $8F   ; 
- D 1 - I - 0x01630B 05:A2FB: 72        .byte $72, $73, $74, $91   ; 
- - - - - - 0x01630F 05:A2FF: 1F        .byte $1F, $75, $20, $8E   ; 
- - - - - - 0x016313 05:A303: 76        .byte $76, $73, $77, $90   ; 
; 6C 
- D 1 - I - 0x016317 05:A307: 19        .byte $19, $BF, $1A, $C0   ; 
- D 1 - I - 0x01631B 05:A30B: CE        .byte $CE, $C2, $C3, $C4   ; 
- D 1 - I - 0x01631F 05:A30F: 15        .byte $15, $C5, $17, $C6   ; 
- D 1 - I - 0x016323 05:A313: CF        .byte $CF, $C8, $C9, $CA   ; 
; 6D 
- D 1 - I - 0x016327 05:A317: 1B        .byte $1B, $BF, $1C, $CB   ; 
- D 1 - I - 0x01632B 05:A31B: C1        .byte $C1, $C2, $C3, $CC   ; 
- D 1 - I - 0x01632F 05:A31F: 18        .byte $18, $C5, $17, $CD   ; 
- D 1 - I - 0x016333 05:A323: C7        .byte $C7, $C8, $C9, $00   ; 
; 6E 
- D 1 - I - 0x016337 05:A327: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01633B 05:A32B: 00        .byte $00, $1D, $3B, $00   ; 
- D 1 - I - 0x01633F 05:A32F: 05        .byte $05, $3C, $06, $3D   ; 
- D 1 - I - 0x016343 05:A333: 3E        .byte $3E, $3F, $40, $41   ; 
; 6F 
- D 1 - I - 0x016347 05:A337: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01634B 05:A33B: 00        .byte $00, $42, $43, $00   ; 
- D 1 - I - 0x01634F 05:A33F: 44        .byte $44, $5B, $5C, $5D   ; 
- D 1 - I - 0x016353 05:A343: 5E        .byte $5E, $5F, $60, $61   ; 
; 70 
- D 1 - I - 0x016357 05:A347: 62        .byte $62, $63, $64, $65   ; 
- D 1 - I - 0x01635B 05:A34B: 66        .byte $66, $67, $68, $69   ; 
- D 1 - I - 0x01635F 05:A34F: BB        .byte $BB, $BC, $BD, $BE   ; 
- D 1 - I - 0x016363 05:A353: 3E        .byte $3E, $3F, $40, $41   ; 
; 71 
- D 1 - I - 0x016367 05:A357: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01636B 05:A35B: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01636F 05:A35F: 00        .byte $00, $00, $00, $2D   ; 
- D 1 - I - 0x016373 05:A363: 00        .byte $00, $00, $00, $3B   ; 
; 72 
- D 1 - I - 0x016377 05:A367: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01637B 05:A36B: 00        .byte $00, $00, $25, $26   ; 
- D 1 - I - 0x01637F 05:A36F: 2E        .byte $2E, $2F, $30, $31   ; 
- D 1 - I - 0x016383 05:A373: 3C        .byte $3C, $3D, $3E, $3F   ; 
; 73 
- D 1 - I - 0x016387 05:A377: 00        .byte $00, $00, $21, $22   ; 
- D 1 - I - 0x01638B 05:A37B: 27        .byte $27, $28, $29, $2A   ; 
- D 1 - I - 0x01638F 05:A37F: 32        .byte $32, $33, $34, $35   ; 
- D 1 - I - 0x016393 05:A383: 40        .byte $40, $41, $42, $43   ; 
; 74 
- D 1 - I - 0x016397 05:A387: 23        .byte $23, $24, $00, $00   ; 
- D 1 - I - 0x01639B 05:A38B: 2B        .byte $2B, $2C, $25, $26   ; 
- D 1 - I - 0x01639F 05:A38F: 36        .byte $36, $37, $38, $39   ; 
- D 1 - I - 0x0163A3 05:A393: 44        .byte $44, $45, $46, $47   ; 
; 75 
- D 1 - I - 0x0163A7 05:A397: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x0163AB 05:A39B: 27        .byte $27, $28, $00, $00   ; 
- D 1 - I - 0x0163AF 05:A39F: 2E        .byte $2E, $2F, $30, $31   ; 
- D 1 - I - 0x0163B3 05:A3A3: 3C        .byte $3C, $3D, $3E, $3F   ; 
; 76 
- D 1 - I - 0x0163B7 05:A3A7: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x0163BB 05:A3AB: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x0163BF 05:A3AF: 3A        .byte $3A, $00, $00, $00   ; 
- D 1 - I - 0x0163C3 05:A3B3: 48        .byte $48, $00, $00, $00   ; 
; 77 
- D 1 - I - 0x0163C7 05:A3B7: 00        .byte $00, $00, $00, $75   ; 
- D 1 - I - 0x0163CB 05:A3BB: 00        .byte $00, $00, $00, $77   ; 
- D 1 - I - 0x0163CF 05:A3BF: 00        .byte $00, $00, $00, $7E   ; 
- D 1 - I - 0x0163D3 05:A3C3: 00        .byte $00, $00, $00, $7F   ; 
; 78 
- D 1 - I - 0x0163D7 05:A3C7: 00        .byte $00, $7A, $79, $00   ; 
- D 1 - I - 0x0163DB 05:A3CB: 7A        .byte $7A, $00, $00, $7B   ; 
- D 1 - I - 0x0163DF 05:A3CF: 76        .byte $76, $00, $7A, $76   ; 
- D 1 - I - 0x0163E3 05:A3D3: 00        .byte $00, $7B, $76, $7A   ; 
; 79 
- D 1 - I - 0x0163E7 05:A3D7: 49        .byte $49, $4A, $4B, $4C   ; 
- D 1 - I - 0x0163EB 05:A3DB: 51        .byte $51, $52, $53, $54   ; 
- D 1 - I - 0x0163EF 05:A3DF: 58        .byte $58, $59, $5A, $5B   ; 
- D 1 - I - 0x0163F3 05:A3E3: 79        .byte $79, $60, $61, $62   ; 
; 7A 
- D 1 - I - 0x0163F7 05:A3E7: 4D        .byte $4D, $4E, $4F, $50   ; 
- D 1 - I - 0x0163FB 05:A3EB: 55        .byte $55, $56, $57, $51   ; 
- D 1 - I - 0x0163FF 05:A3EF: 5C        .byte $5C, $5D, $5E, $5F   ; 
- D 1 - I - 0x016403 05:A3F3: 63        .byte $63, $64, $65, $7A   ; 
; 7B 
- D 1 - I - 0x016407 05:A3F7: 00        .byte $00, $76, $00, $7C   ; 
- D 1 - I - 0x01640B 05:A3FB: 76        .byte $76, $7A, $76, $7D   ; 
- D 1 - I - 0x01640F 05:A3FF: 7A        .byte $7A, $00, $7A, $78   ; 
- D 1 - I - 0x016413 05:A403: 76        .byte $76, $7A, $00, $74   ; 
; 7C 
- D 1 - I - 0x016417 05:A407: 66        .byte $66, $67, $68, $69   ; 
- D 1 - I - 0x01641B 05:A40B: 00        .byte $00, $80, $81, $82   ; 
- D 1 - I - 0x01641F 05:A40F: 00        .byte $00, $00, $00, $76   ; 
- D 1 - I - 0x016423 05:A413: 00        .byte $00, $00, $00, $00   ; 
; 7D 
- D 1 - I - 0x016427 05:A417: 6A        .byte $6A, $6A, $6A, $6A   ; 
- D 1 - I - 0x01642B 05:A41B: 83        .byte $83, $84, $84, $85   ; 
- D 1 - I - 0x01642F 05:A41F: 7B        .byte $7B, $76, $00, $7A   ; 
- D 1 - I - 0x016433 05:A423: 75        .byte $75, $00, $7B, $00   ; 
; 7E 
- D 1 - I - 0x016437 05:A427: 6A        .byte $6A, $6A, $6A, $6B   ; 
- D 1 - I - 0x01643B 05:A42B: 85        .byte $85, $86, $86, $87   ; 
- D 1 - I - 0x01643F 05:A42F: 76        .byte $76, $7A, $00, $7A   ; 
- D 1 - I - 0x016443 05:A433: 00        .byte $00, $76, $7A, $76   ; 
; 7F 
- D 1 - I - 0x016447 05:A437: 6C        .byte $6C, $6D, $6E, $6F   ; 
- D 1 - I - 0x01644B 05:A43B: 88        .byte $88, $89, $8A, $8B   ; 
- D 1 - I - 0x01644F 05:A43F: 93        .byte $93, $94, $95, $96   ; 
- D 1 - I - 0x016453 05:A443: 9B        .byte $9B, $9C, $9D, $9E   ; 
; 80 
- D 1 - I - 0x016457 05:A447: 70        .byte $70, $71, $72, $6C   ; 
- D 1 - I - 0x01645B 05:A44B: 8C        .byte $8C, $8D, $8E, $88   ; 
- D 1 - I - 0x01645F 05:A44F: 97        .byte $97, $98, $99, $9A   ; 
- D 1 - I - 0x016463 05:A453: 9F        .byte $9F, $A0, $A1, $A2   ; 
; 81 
- D 1 - I - 0x016467 05:A457: 73        .byte $73, $6A, $6A, $6A   ; 
- D 1 - I - 0x01646B 05:A45B: 8F        .byte $8F, $86, $86, $85   ; 
- D 1 - I - 0x01646F 05:A45F: 00        .byte $00, $76, $00, $00   ; 
- D 1 - I - 0x016473 05:A463: 00        .byte $00, $7A, $76, $00   ; 
; 82 
- D 1 - I - 0x016477 05:A467: 6A        .byte $6A, $6A, $6A, $6A   ; 
- D 1 - I - 0x01647B 05:A46B: 85        .byte $85, $84, $84, $83   ; 
- D 1 - I - 0x01647F 05:A46F: 76        .byte $76, $7A, $00, $79   ; 
- D 1 - I - 0x016483 05:A473: 7A        .byte $7A, $76, $00, $7C   ; 
; 83 
- D 1 - I - 0x016487 05:A477: F5        .byte $F5, $F6, $F7, $F8   ; 
- D 1 - I - 0x01648B 05:A47B: 90        .byte $90, $91, $92, $00   ; 
- D 1 - I - 0x01648F 05:A47F: 7A        .byte $7A, $00, $00, $00   ; 
- D 1 - I - 0x016493 05:A483: 00        .byte $00, $00, $00, $00   ; 
; 84 
- D 1 - I - 0x016497 05:A487: 77        .byte $77, $7A, $76, $00   ; 
- D 1 - I - 0x01649B 05:A48B: 00        .byte $00, $76, $00, $76   ; 
- D 1 - I - 0x01649F 05:A48F: 00        .byte $00, $00, $75, $7A   ; 
- D 1 - I - 0x0164A3 05:A493: 00        .byte $00, $00, $77, $76   ; 
; 85 
- D 1 - I - 0x0164A7 05:A497: 00        .byte $00, $7A, $00, $A3   ; 
- D 1 - I - 0x0164AB 05:A49B: 7A        .byte $7A, $76, $AD, $AE   ; 
- D 1 - I - 0x0164AF 05:A49F: 00        .byte $00, $00, $B9, $BA   ; 
- D 1 - I - 0x0164B3 05:A4A3: 00        .byte $00, $7A, $C5, $C6   ; 
; 86 
- D 1 - I - 0x0164B7 05:A4A7: A4        .byte $A4, $A5, $A6, $A7   ; 
- D 1 - I - 0x0164BB 05:A4AB: AF        .byte $AF, $B0, $B1, $B2   ; 
- D 1 - I - 0x0164BF 05:A4AF: BB        .byte $BB, $BC, $BD, $BE   ; 
- D 1 - I - 0x0164C3 05:A4B3: C7        .byte $C7, $C8, $C9, $CA   ; 
; 87 
- D 1 - I - 0x0164C7 05:A4B7: A8        .byte $A8, $A9, $AA, $AB   ; 
- D 1 - I - 0x0164CB 05:A4BB: B3        .byte $B3, $B4, $B5, $B6   ; 
- D 1 - I - 0x0164CF 05:A4BF: BF        .byte $BF, $C0, $C1, $C2   ; 
- D 1 - I - 0x0164D3 05:A4C3: CB        .byte $CB, $CC, $CD, $CE   ; 
; 88 
- D 1 - I - 0x0164D7 05:A4C7: AC        .byte $AC, $00, $00, $7B   ; 
- D 1 - I - 0x0164DB 05:A4CB: B7        .byte $B7, $B8, $7A, $76   ; 
- D 1 - I - 0x0164DF 05:A4CF: C3        .byte $C3, $C4, $00, $7A   ; 
- D 1 - I - 0x0164E3 05:A4D3: CF        .byte $CF, $D0, $7A, $76   ; 
; 89 
- D 1 - I - 0x0164E7 05:A4D7: 00        .byte $00, $00, $76, $7D   ; 
- D 1 - I - 0x0164EB 05:A4DB: 00        .byte $00, $00, $7A, $00   ; 
- D 1 - I - 0x0164EF 05:A4DF: 76        .byte $76, $7C, $00, $00   ; 
- D 1 - I - 0x0164F3 05:A4E3: 00        .byte $00, $7D, $00, $00   ; 
; 8A 
- D 1 - I - 0x0164F7 05:A4E7: 00        .byte $00, $00, $00, $F3   ; 
- D 1 - I - 0x0164FB 05:A4EB: 00        .byte $00, $00, $7E, $7A   ; 
- D 1 - I - 0x0164FF 05:A4EF: 00        .byte $00, $00, $7F, $76   ; 
- D 1 - I - 0x016503 05:A4F3: 00        .byte $00, $7A, $76, $00   ; 
; 8B 
- D 1 - I - 0x016507 05:A4F7: 7B        .byte $7B, $D1, $D2, $D3   ; 
- D 1 - I - 0x01650B 05:A4FB: 00        .byte $00, $DE, $DF, $E0   ; 
- D 1 - I - 0x01650F 05:A4FF: E4        .byte $E4, $E5, $F9, $00   ; 
- D 1 - I - 0x016513 05:A503: E7        .byte $E7, $EF, $E5, $E6   ; 
; 8C 
- D 1 - I - 0x016517 05:A507: D4        .byte $D4, $D5, $D6, $D7   ; 
- D 1 - I - 0x01651B 05:A50B: D4        .byte $D4, $D5, $D6, $D7   ; 
- D 1 - I - 0x01651F 05:A50F: D4        .byte $D4, $D5, $D6, $D7   ; 
- D 1 - I - 0x016523 05:A513: D4        .byte $D4, $D5, $D6, $D7   ; 
; 8D 
- D 1 - I - 0x016527 05:A517: D8        .byte $D8, $D6, $D9, $DA   ; 
- D 1 - I - 0x01652B 05:A51B: D8        .byte $D8, $D6, $D9, $DA   ; 
- D 1 - I - 0x01652F 05:A51F: D8        .byte $D8, $D6, $D9, $DA   ; 
- D 1 - I - 0x016533 05:A523: D8        .byte $D8, $D6, $D9, $DA   ; 
; 8E 
- D 1 - I - 0x016537 05:A527: DB        .byte $DB, $DC, $DD, $7A   ; 
- D 1 - I - 0x01653B 05:A52B: E1        .byte $E1, $E2, $E3, $00   ; 
- D 1 - I - 0x01653F 05:A52F: E4        .byte $E4, $E5, $FA, $00   ; 
- D 1 - I - 0x016543 05:A533: E7        .byte $E7, $EF, $E5, $E6   ; 
; 8F 
- D 1 - I - 0x016547 05:A537: FC        .byte $FC, $00, $00, $00   ; 
- D 1 - I - 0x01654B 05:A53B: 00        .byte $00, $78, $00, $00   ; 
- D 1 - I - 0x01654F 05:A53F: 00        .byte $00, $74, $00, $00   ; 
- D 1 - I - 0x016553 05:A543: 00        .byte $00, $7A, $76, $00   ; 
; 90 
- D 1 - I - 0x016557 05:A547: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01655B 05:A54B: 00        .byte $00, $00, $00, $7A   ; 
- D 1 - I - 0x01655F 05:A54F: 00        .byte $00, $00, $E4, $E5   ; 
- D 1 - I - 0x016563 05:A553: E4        .byte $E4, $E5, $ED, $E8   ; 
; 91 
- D 1 - I - 0x016567 05:A557: 7A        .byte $7A, $00, $E4, $E5   ; 
- D 1 - I - 0x01656B 05:A55B: 76        .byte $76, $00, $E7, $E8   ; 
- D 1 - I - 0x01656F 05:A55F: E6        .byte $E6, $E4, $E5, $EE   ; 
- D 1 - I - 0x016573 05:A563: E9        .byte $E9, $E7, $E8, $EF   ; 
; 92 
- D 1 - I - 0x016577 05:A567: EE        .byte $EE, $E7, $E8, $EF   ; 
- D 1 - I - 0x01657B 05:A56B: F0        .byte $F0, $E5, $EE, $E7   ; 
- D 1 - I - 0x01657F 05:A56F: E7        .byte $E7, $E8, $EF, $E5   ; 
- D 1 - I - 0x016583 05:A573: E5        .byte $E5, $EE, $E7, $E8   ; 
; 93 
- D 1 - I - 0x016587 05:A577: E5        .byte $E5, $E6, $D6, $D7   ; 
- D 1 - I - 0x01658B 05:A57B: E8        .byte $E8, $E9, $D6, $D7   ; 
- D 1 - I - 0x01658F 05:A57F: EE        .byte $EE, $EC, $E4, $E5   ; 
- D 1 - I - 0x016593 05:A583: EF        .byte $EF, $E5, $ED, $E8   ; 
; 94 
- D 1 - I - 0x016597 05:A587: D8        .byte $D8, $D6, $E4, $E5   ; 
- D 1 - I - 0x01659B 05:A58B: D8        .byte $D8, $D6, $E7, $E8   ; 
- D 1 - I - 0x01659F 05:A58F: E6        .byte $E6, $E4, $E5, $EE   ; 
- D 1 - I - 0x0165A3 05:A593: EF        .byte $EF, $E5, $EE, $E9   ; 
; 95 
- D 1 - I - 0x0165A7 05:A597: EE        .byte $EE, $E7, $E8, $F0   ; 
- D 1 - I - 0x0165AB 05:A59B: E9        .byte $E9, $EA, $EF, $E5   ; 
- D 1 - I - 0x0165AF 05:A59F: EF        .byte $EF, $E5, $ED, $E8   ; 
- D 1 - I - 0x0165B3 05:A5A3: E7        .byte $E7, $E8, $EF, $E5   ; 
; 96 
- D 1 - I - 0x0165B7 05:A5A7: E5        .byte $E5, $E6, $7C, $76   ; 
- D 1 - I - 0x0165BB 05:A5AB: EE        .byte $EE, $E9, $00, $00   ; 
- D 1 - I - 0x0165BF 05:A5AF: F0        .byte $F0, $E5, $E6, $E4   ; 
- D 1 - I - 0x0165C3 05:A5B3: ED        .byte $ED, $EF, $E5, $ED   ; 
; 97 
- D 1 - I - 0x0165C7 05:A5B7: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x0165CB 05:A5BB: 79        .byte $79, $00, $00, $00   ; 
- D 1 - I - 0x0165CF 05:A5BF: E5        .byte $E5, $E6, $00, $00   ; 
- D 1 - I - 0x0165D3 05:A5C3: E8        .byte $E8, $EF, $E5, $E6   ; 
; 98 
- D 1 - I - 0x0165D7 05:A5C7: E7        .byte $E7, $E8, $E9, $EB   ; 
- D 1 - I - 0x0165DB 05:A5CB: EA        .byte $EA, $EB, $F0, $E5   ; 
- D 1 - I - 0x0165DF 05:A5CF: FD        .byte $FD, $FD, $FD, $FD   ; 
- D 1 - I - 0x0165E3 05:A5D3: F1        .byte $F1, $F2, $F1, $F2   ; 
; 99 
- D 1 - I - 0x0165E7 05:A5D7: F0        .byte $F0, $E5, $EE, $E7   ; 
- D 1 - I - 0x0165EB 05:A5DB: ED        .byte $ED, $E8, $E9, $EA   ; 
- D 1 - I - 0x0165EF 05:A5DF: FD        .byte $FD, $FD, $FD, $FD   ; 
- D 1 - I - 0x0165F3 05:A5E3: F1        .byte $F1, $F2, $F1, $F2   ; 
; 9A 
- D 1 - I - 0x0165F7 05:A5E7: E8        .byte $E8, $EF, $E5, $EE   ; 
- D 1 - I - 0x0165FB 05:A5EB: EB        .byte $EB, $E7, $E8, $E9   ; 
- D 1 - I - 0x0165FF 05:A5EF: FD        .byte $FD, $FD, $FD, $FD   ; 
- D 1 - I - 0x016603 05:A5F3: F1        .byte $F1, $F2, $F1, $F2   ; 
; 9B 
- D 1 - I - 0x016607 05:A5F7: E7        .byte $E7, $E8, $E9, $EB   ; 
- D 1 - I - 0x01660B 05:A5FB: EA        .byte $EA, $EF, $E5, $E6   ; 
- D 1 - I - 0x01660F 05:A5FF: FD        .byte $FD, $FD, $FD, $FD   ; 
- D 1 - I - 0x016613 05:A603: F1        .byte $F1, $F2, $F1, $F2   ; 
; 9C 
- D 1 - I - 0x016617 05:A607: E7        .byte $E7, $E8, $EF, $E5   ; 
- D 1 - I - 0x01661B 05:A60B: EA        .byte $EA, $EB, $E7, $E8   ; 
- D 1 - I - 0x01661F 05:A60F: FD        .byte $FD, $FD, $FD, $FD   ; 
- D 1 - I - 0x016623 05:A613: F1        .byte $F1, $F2, $F1, $F2   ; 
; 9D 
- D 1 - I - 0x016627 05:A617: EE        .byte $EE, $EB, $E7, $E8   ; 
- D 1 - I - 0x01662B 05:A61B: E9        .byte $E9, $E4, $E5, $EE   ; 
- D 1 - I - 0x01662F 05:A61F: FD        .byte $FD, $FD, $FD, $FD   ; 
- D 1 - I - 0x016633 05:A623: F1        .byte $F1, $F2, $F1, $F2   ; 
; 9E 
- D 1 - I - 0x016637 05:A627: EF        .byte $EF, $E5, $ED, $E9   ; 
- D 1 - I - 0x01663B 05:A62B: E7        .byte $E7, $E8, $E9, $F0   ; 
- D 1 - I - 0x01663F 05:A62F: FD        .byte $FD, $FD, $FD, $FD   ; 
- D 1 - I - 0x016643 05:A633: F1        .byte $F1, $F2, $F1, $F2   ; 
; 9F 
- D 1 - I - 0x016647 05:A637: EB        .byte $EB, $E7, $E8, $E9   ; 
- D 1 - I - 0x01664B 05:A63B: E5        .byte $E5, $EE, $EB, $EC   ; 
- D 1 - I - 0x01664F 05:A63F: FD        .byte $FD, $FD, $FD, $FD   ; 
- D 1 - I - 0x016653 05:A643: F1        .byte $F1, $F2, $F1, $F2   ; 
; A0 
- - - - - - 0x016657 05:A647: FE        .byte $FE, $F4, $FE, $F4   ; 
- - - - - - 0x01665B 05:A64B: FB        .byte $FB, $FF, $FB, $FF   ; 
- - - - - - 0x01665F 05:A64F: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x016663 05:A653: 00        .byte $00, $00, $00, $00   ; 
; A1 
- D 1 - I - 0x016667 05:A657: 6C        .byte $6C, $6D, $6E, $6F   ; 
- D 1 - I - 0x01666B 05:A65B: 88        .byte $88, $89, $01, $02   ; 
- D 1 - I - 0x01666F 05:A65F: 93        .byte $93, $05, $06, $07   ; 
- D 1 - I - 0x016673 05:A663: 9B        .byte $9B, $0B, $0C, $00   ; 
; A2 
- D 1 - I - 0x016677 05:A667: 70        .byte $70, $71, $72, $6C   ; 
- D 1 - I - 0x01667B 05:A66B: 03        .byte $03, $04, $8E, $88   ; 
- D 1 - I - 0x01667F 05:A66F: 08        .byte $08, $09, $0A, $9A   ; 
- D 1 - I - 0x016683 05:A673: 00        .byte $00, $0D, $0E, $A2   ; 
; A3 
- D 1 - I - 0x016687 05:A677: A4        .byte $A4, $0F, $10, $00   ; 
- D 1 - I - 0x01668B 05:A67B: AF        .byte $AF, $13, $14, $15   ; 
- D 1 - I - 0x01668F 05:A67F: BB        .byte $BB, $BC, $19, $1A   ; 
- D 1 - I - 0x016693 05:A683: C7        .byte $C7, $C8, $C9, $CA   ; 
; A4 
- D 1 - I - 0x016697 05:A687: 00        .byte $00, $11, $12, $AB   ; 
- D 1 - I - 0x01669B 05:A68B: 16        .byte $16, $17, $18, $B6   ; 
- D 1 - I - 0x01669F 05:A68F: 1B        .byte $1B, $1C, $C1, $C2   ; 
- D 1 - I - 0x0166A3 05:A693: CB        .byte $CB, $CC, $CD, $CE   ; 
; A5 
- D 1 - I - 0x0166A7 05:A697: 6C        .byte $6C, $6D, $6E, $6F   ; 
- D 1 - I - 0x0166AB 05:A69B: 88        .byte $88, $89, $1D, $1E   ; 
- D 1 - I - 0x0166AF 05:A69F: 93        .byte $93, $21, $06, $22   ; 
- D 1 - I - 0x0166B3 05:A6A3: 9B        .byte $9B, $25, $26, $00   ; 
; A6 
- D 1 - I - 0x0166B7 05:A6A7: 70        .byte $70, $71, $72, $6C   ; 
- D 1 - I - 0x0166BB 05:A6AB: 1F        .byte $1F, $20, $8E, $88   ; 
- D 1 - I - 0x0166BF 05:A6AF: 23        .byte $23, $09, $24, $9A   ; 
- D 1 - I - 0x0166C3 05:A6B3: 00        .byte $00, $27, $28, $A2   ; 
; A7 
- D 1 - I - 0x0166C7 05:A6B7: A4        .byte $A4, $29, $2A, $00   ; 
- D 1 - I - 0x0166CB 05:A6BB: AF        .byte $AF, $2D, $14, $2E   ; 
- D 1 - I - 0x0166CF 05:A6BF: BB        .byte $BB, $BC, $31, $32   ; 
- D 1 - I - 0x0166D3 05:A6C3: C7        .byte $C7, $C8, $C9, $CA   ; 
; A8 
- D 1 - I - 0x0166D7 05:A6C7: 00        .byte $00, $2B, $2C, $AB   ; 
- D 1 - I - 0x0166DB 05:A6CB: 2F        .byte $2F, $17, $30, $B6   ; 
- D 1 - I - 0x0166DF 05:A6CF: 33        .byte $33, $34, $C1, $C2   ; 
- D 1 - I - 0x0166E3 05:A6D3: CB        .byte $CB, $CC, $CD, $CE   ; 
; A9 
- D 1 - I - 0x0166E7 05:A6D7: 00        .byte $00, $00, $21, $22   ; 
- D 1 - I - 0x0166EB 05:A6DB: 27        .byte $27, $28, $29, $2A   ; 
- D 1 - I - 0x0166EF 05:A6DF: 32        .byte $32, $33, $34, $35   ; 
- D 1 - I - 0x0166F3 05:A6E3: 40        .byte $40, $41, $01, $02   ; 
; AA 
- D 1 - I - 0x0166F7 05:A6E7: 23        .byte $23, $24, $00, $00   ; 
- D 1 - I - 0x0166FB 05:A6EB: 2B        .byte $2B, $2C, $25, $26   ; 
- D 1 - I - 0x0166FF 05:A6EF: 36        .byte $36, $37, $38, $39   ; 
- D 1 - I - 0x016703 05:A6F3: 03        .byte $03, $04, $46, $47   ; 
; AB 
- D 1 - I - 0x016707 05:A6F7: 49        .byte $49, $4A, $05, $4C   ; 
- D 1 - I - 0x01670B 05:A6FB: 51        .byte $51, $52, $07, $54   ; 
- D 1 - I - 0x01670F 05:A6FF: 58        .byte $58, $59, $09, $0A   ; 
- D 1 - I - 0x016713 05:A703: 79        .byte $79, $60, $0D, $0E   ; 
; AC 
- D 1 - I - 0x016717 05:A707: 4D        .byte $4D, $06, $4F, $50   ; 
- D 1 - I - 0x01671B 05:A70B: 55        .byte $55, $08, $57, $51   ; 
- D 1 - I - 0x01671F 05:A70F: 0B        .byte $0B, $0C, $5E, $5F   ; 
- D 1 - I - 0x016723 05:A713: 0F        .byte $0F, $10, $65, $7A   ; 
; AD 
- D 1 - I - 0x016727 05:A717: 00        .byte $00, $00, $21, $22   ; 
- D 1 - I - 0x01672B 05:A71B: 27        .byte $27, $28, $29, $2A   ; 
- D 1 - I - 0x01672F 05:A71F: 32        .byte $32, $33, $34, $35   ; 
- D 1 - I - 0x016733 05:A723: 40        .byte $40, $41, $11, $12   ; 
; AE 
- D 1 - I - 0x016737 05:A727: 23        .byte $23, $24, $00, $00   ; 
- D 1 - I - 0x01673B 05:A72B: 2B        .byte $2B, $2C, $25, $26   ; 
- D 1 - I - 0x01673F 05:A72F: 36        .byte $36, $37, $38, $39   ; 
- D 1 - I - 0x016743 05:A733: 13        .byte $13, $14, $46, $47   ; 
; AF 
- D 1 - I - 0x016747 05:A737: 49        .byte $49, $4A, $15, $4C   ; 
- D 1 - I - 0x01674B 05:A73B: 51        .byte $51, $52, $17, $54   ; 
- D 1 - I - 0x01674F 05:A73F: 58        .byte $58, $59, $19, $1A   ; 
- D 1 - I - 0x016753 05:A743: 79        .byte $79, $60, $1D, $1E   ; 
; B0 
- D 1 - I - 0x016757 05:A747: 4D        .byte $4D, $16, $4F, $50   ; 
- D 1 - I - 0x01675B 05:A74B: 55        .byte $55, $18, $57, $51   ; 
- D 1 - I - 0x01675F 05:A74F: 1B        .byte $1B, $1C, $5E, $5F   ; 
- D 1 - I - 0x016763 05:A753: 1F        .byte $1F, $20, $65, $7A   ; 



_off007_0x016767_06_area_7:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 1 - I - 0x016767 05:A757: 00        .byte $00, $05, $50, $40, $00, $40, $00, $01, $00, $10, $00, $00, $00, $50, $40, $40   ; 00
- D 1 - I - 0x016777 05:A767: 00        .byte $00, $AA, $AF, $AA, $AF, $AA, $AA, $AA, $FA, $FA, $AA, $AA, $AA, $AA, $AA, $FA   ; 10
- D 1 - I - 0x016787 05:A777: AA        .byte $AA, $AF, $AA, $FA, $AA, $AA, $AA, $AF, $AA, $AA, $FA, $FA, $AA, $AA, $AA, $FA   ; 20
- D 1 - I - 0x016797 05:A787: AA        .byte $AA, $AA, $AA, $FA, $AA, $BA, $AA, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 30
- D 1 - I - 0x0167A7 05:A797: FF        .byte $FF, $AF, $AF, $FF, $FF, $FF, $AF, $FF, $FF, $FF, $FF, $FF, $55, $55, $55, $55   ; 40
- D 1 - I - 0x0167B7 05:A7A7: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55, $AA, $A6, $A9, $AA, $AA, $AA, $AA, $AA   ; 50
- D 1 - I - 0x0167C7 05:A7B7: AA        .byte $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $00, $00   ; 60
- D 1 - I - 0x0167D7 05:A7C7: 00        .byte $00, $55, $5D, $77, $DD, $57, $55, $DD, $FF, $F7, $FD, $FF, $D5, $F5, $F5, $7F   ; 70
- D 1 - I - 0x0167E7 05:A7D7: DF        .byte $DF, $F5, $F5, $75, $DF, $77, $F7, $FD, $DD, $7D, $FD, $57, $FF, $FF, $5D, $F7   ; 80
- D 1 - I - 0x0167F7 05:A7E7: 5D        .byte $5D, $57, $55, $5D, $57, $55, $5D, $57, $F5, $F5, $F5, $F5, $F5, $F5, $F5, $F5   ; 90
- - - - - - 0x016807 05:A7F7: 55        .byte $55, $7F, $DF, $F7, $FD, $7F, $DF, $F7, $FD, $77, $DD, $F7, $FD, $77, $DD, $F7   ; A0
- D 1 - I - 0x016817 05:A807: FD        .byte $FD                                                                              ; B0


; bzk garbage
- - - - - - 0x016818 05:A808: 00        .byte $00   ; 
- - - - - - 0x016819 05:A809: 00        .byte $00   ; 
- - - - - - 0x01681A 05:A80A: 00        .byte $00   ; 
- - - - - - 0x01681B 05:A80B: 00        .byte $00   ; 
- - - - - - 0x01681C 05:A80C: 00        .byte $00   ; 
- - - - - - 0x01681D 05:A80D: 00        .byte $00   ; 
- - - - - - 0x01681E 05:A80E: 00        .byte $00   ; 
- - - - - - 0x01681F 05:A80F: 00        .byte $00   ; 
- - - - - - 0x016820 05:A810: 00        .byte $00   ; 
- - - - - - 0x016821 05:A811: 00        .byte $00   ; 
- - - - - - 0x016822 05:A812: 00        .byte $00   ; 
- - - - - - 0x016823 05:A813: 00        .byte $00   ; 
- - - - - - 0x016824 05:A814: 00        .byte $00   ; 
- - - - - - 0x016825 05:A815: 00        .byte $00   ; 
- - - - - - 0x016826 05:A816: 00        .byte $00   ; 



_off004_0x016827_07_area_8:
- D 1 - I - 0x016827 05:A817: 10        .byte $10   ; columns
- D 1 - I - 0x016828 05:A818: 04        .byte $04   ; rows

;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- - - - - - 0x016829 05:A819: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $15, $15, $00, $00, $00, $00   ; 00 
- - - - - - 0x016839 05:A829: 00        .byte $00, $00, $00, $00, $00, $00, $0B, $0C, $0D, $0E, $0F, $0F, $10, $11, $00, $00   ; 01 
- - - - - - 0x016849 05:A839: 00        .byte $00, $00, $00, $07, $08, $09, $0A, $00, $00, $00, $00, $00, $12, $13, $14, $16   ; 02 
- D 1 - I - 0x016859 05:A849: 01        .byte $01, $02, $03, $04, $05, $06, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 03 



_off005_0x016869_07_area_8:
- D 1 - I - 0x016869 05:A859: 87 A8     .word _off018_07_A887_00
- D 1 - I - 0x01686B 05:A85B: C7 A8     .word _off018_07_A8C7_01
- D 1 - I - 0x01686D 05:A85D: 07 A9     .word _off018_07_A907_02
- D 1 - I - 0x01686F 05:A85F: 47 A9     .word _off018_07_A947_03
- D 1 - I - 0x016871 05:A861: 87 A9     .word _off018_07_A987_04
- D 1 - I - 0x016873 05:A863: C7 A9     .word _off018_07_A9C7_05
- D 1 - I - 0x016875 05:A865: 07 AA     .word _off018_07_AA07_06
- D 1 - I - 0x016877 05:A867: 47 AA     .word _off018_07_AA47_07
- D 1 - I - 0x016879 05:A869: 87 AA     .word _off018_07_AA87_08
- D 1 - I - 0x01687B 05:A86B: C7 AA     .word _off018_07_AAC7_09
- D 1 - I - 0x01687D 05:A86D: 07 AB     .word _off018_07_AB07_0A
- D 1 - I - 0x01687F 05:A86F: 47 AB     .word _off018_07_AB47_0B
- D 1 - I - 0x016881 05:A871: 87 AB     .word _off018_07_AB87_0C
- D 1 - I - 0x016883 05:A873: C7 AB     .word _off018_07_ABC7_0D
- D 1 - I - 0x016885 05:A875: 07 AC     .word _off018_07_AC07_0E
- D 1 - I - 0x016887 05:A877: 47 AC     .word _off018_07_AC47_0F
- D 1 - I - 0x016889 05:A879: 87 AC     .word _off018_07_AC87_10
- D 1 - I - 0x01688B 05:A87B: C7 AC     .word _off018_07_ACC7_11
- D 1 - I - 0x01688D 05:A87D: 07 AD     .word _off018_07_AD07_12
- D 1 - I - 0x01688F 05:A87F: 47 AD     .word _off018_07_AD47_13
- D 1 - I - 0x016891 05:A881: 87 AD     .word _off018_07_AD87_14
- D 1 - I - 0x016893 05:A883: C7 AD     .word _off018_07_ADC7_15
- D 1 - I - 0x016895 05:A885: 07 AE     .word _off018_07_AE07_16



_off018_07_A887_00:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x016897 05:A887: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 00 
- D 1 - I - 0x01689F 05:A88F: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 01 
- D 1 - I - 0x0168A7 05:A897: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 02 
- D 1 - I - 0x0168AF 05:A89F: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 03 
- D 1 - I - 0x0168B7 05:A8A7: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 04 
- D 1 - I - 0x0168BF 05:A8AF: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 05 
- D 1 - I - 0x0168C7 05:A8B7: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 06 
- D 1 - I - 0x0168CF 05:A8BF: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 07 



_off018_07_A8C7_01:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x0168D7 05:A8C7: 0C        .byte $0C, $0D, $0B, $0A, $0C, $0D, $0A, $0C   ; 00 
- D 1 - I - 0x0168DF 05:A8CF: 0D        .byte $0D, $0A, $0C, $0D, $0C, $0B, $0A, $71   ; 01 
- D 1 - I - 0x0168E7 05:A8D7: 0B        .byte $0B, $0D, $4F, $0A, $0E, $70, $72, $75   ; 02 
- D 1 - I - 0x0168EF 05:A8DF: 0E        .byte $0E, $0E, $0E, $00, $00, $71, $75, $79   ; 03 
- D 1 - I - 0x0168F7 05:A8E7: 00        .byte $00, $00, $00, $00, $00, $78, $7A, $7B   ; 04 
- D 1 - I - 0x0168FF 05:A8EF: 09        .byte $09, $09, $09, $09, $09, $09, $09, $09   ; 05 
- D 1 - I - 0x016907 05:A8F7: 0A        .byte $0A, $0C, $0D, $0B, $0A, $0C, $0D, $4F   ; 06 
- D 1 - I - 0x01690F 05:A8FF: 0E        .byte $0E, $0E, $0E, $0E, $0E, $0E, $0E, $0E   ; 07 



_off018_07_A907_02:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x016917 05:A907: 0D        .byte $0D, $0A, $0C, $0D, $0C, $0D, $4F, $7F   ; 00 
- D 1 - I - 0x01691F 05:A90F: 72        .byte $72, $00, $0B, $0C, $0D, $0E, $0E, $7D   ; 01 
- D 1 - I - 0x016927 05:A917: 76        .byte $76, $7B, $0E, $0E, $0E, $00, $79, $75   ; 02 
- D 1 - I - 0x01692F 05:A91F: 7A        .byte $7A, $7B, $00, $00, $00, $00, $00, $79   ; 03 
- D 1 - I - 0x016937 05:A927: 00        .byte $00, $00, $00, $00, $00, $0F, $1A, $04   ; 04 
- D 1 - I - 0x01693F 05:A92F: 09        .byte $09, $09, $09, $09, $50, $10, $1E, $08   ; 05 
- D 1 - I - 0x016947 05:A937: 0A        .byte $0A, $4F, $0C, $0D, $54, $14, $13, $00   ; 06 
- D 1 - I - 0x01694F 05:A93F: 0E        .byte $0E, $0E, $0E, $0E, $13, $00, $00, $00   ; 07 



_off018_07_A947_03:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x016957 05:A947: 0A        .byte $0A, $0A, $0B, $0C, $0D, $0A, $0A, $0C   ; 00 
- D 1 - I - 0x01695F 05:A94F: 72        .byte $72, $00, $00, $0A, $0C, $0D, $4F, $0A   ; 01 
- D 1 - I - 0x016967 05:A957: 76        .byte $76, $71, $00, $00, $0E, $0E, $0E, $70   ; 02 
- D 1 - I - 0x01696F 05:A95F: 77        .byte $77, $79, $00, $00, $00, $00, $70, $76   ; 03 
- D 1 - I - 0x016977 05:A967: 01        .byte $01, $02, $47, $03, $22, $17, $79, $75   ; 04 
- D 1 - I - 0x01697F 05:A96F: 05        .byte $05, $06, $4B, $07, $26, $21, $23, $7E   ; 05 
- D 1 - I - 0x016987 05:A977: 00        .byte $00, $79, $71, $73, $29, $25, $27, $21   ; 06 
- D 1 - I - 0x01698F 05:A97F: 00        .byte $00, $00, $74, $75, $76, $73, $29, $25   ; 07 



_off018_07_A987_04:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x016997 05:A987: 0D        .byte $0D, $0A, $7F, $0B, $0C, $0D, $7F, $73   ; 00 
- D 1 - I - 0x01699F 05:A98F: 0C        .byte $0C, $4F, $0C, $0D, $4F, $7F, $76, $77   ; 01 
- D 1 - I - 0x0169A7 05:A997: 71        .byte $71, $73, $00, $79, $75, $77, $7A, $7B   ; 02 
- D 1 - I - 0x0169AF 05:A99F: 44        .byte $44, $45, $45, $46, $79, $7B, $00, $00   ; 03 
- D 1 - I - 0x0169B7 05:A9A7: 6F        .byte $6F, $09, $09, $41, $00, $00, $2A, $00   ; 04 
- D 1 - I - 0x0169BF 05:A9AF: 0E        .byte $0E, $0E, $0E, $0E, $0F, $19, $2E, $71   ; 05 
- D 1 - I - 0x0169C7 05:A9B7: 01        .byte $01, $01, $02, $03, $10, $1D, $16, $75   ; 06 
- D 1 - I - 0x0169CF 05:A9BF: 05        .byte $05, $05, $06, $07, $14, $13, $71, $75   ; 07 



_off018_07_A9C7_05:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x0169D7 05:A9C7: 00        .byte $00, $00, $00, $00, $00, $00, $0F, $50   ; 00 
- D 1 - I - 0x0169DF 05:A9CF: 00        .byte $00, $00, $00, $00, $2A, $00, $38, $54   ; 01 
- D 1 - I - 0x0169E7 05:A9D7: 00        .byte $00, $70, $33, $71, $2B, $00, $3C, $13   ; 02 
- D 1 - I - 0x0169EF 05:A9DF: 32        .byte $32, $50, $37, $76, $2F, $00, $00, $00   ; 03 
- D 1 - I - 0x0169F7 05:A9E7: 36        .byte $36, $54, $16, $7C, $79, $70, $71, $72   ; 04 
- D 1 - I - 0x0169FF 05:A9EF: 35        .byte $35, $13, $00, $00, $00, $74, $75, $76   ; 05 
- D 1 - I - 0x016A07 05:A9F7: 72        .byte $72, $00, $00, $00, $00, $00, $74, $75   ; 06 
- D 1 - I - 0x016A0F 05:A9FF: 76        .byte $76, $71, $00, $00, $00, $00, $00, $7A   ; 07 



_off018_07_AA07_06:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x016A17 05:AA07: 10        .byte $10, $1D, $16, $0E, $0E, $0E, $0E, $0E   ; 00 
- D 1 - I - 0x016A1F 05:AA0F: 14        .byte $14, $00, $00, $00, $00, $00, $00, $00   ; 01 
- D 1 - I - 0x016A27 05:AA17: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 02 
- D 1 - I - 0x016A2F 05:AA1F: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 03 
- D 1 - I - 0x016A37 05:AA27: 73        .byte $73, $00, $00, $00, $00, $00, $00, $00   ; 04 
- D 1 - I - 0x016A3F 05:AA2F: 77        .byte $77, $00, $00, $00, $00, $00, $00, $00   ; 05 
- D 1 - I - 0x016A47 05:AA37: 76        .byte $76, $73, $00, $00, $00, $00, $00, $00   ; 06 
- - - - - - 0x016A4F 05:AA3F: 7A        .byte $7A, $7B, $00, $00, $00, $00, $00, $00   ; 07 



_off018_07_AA47_07:
;                                              00   01   02   03   04   05   06   07
- - - - - - 0x016A57 05:AA47: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 00 
- - - - - - 0x016A5F 05:AA4F: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 01 
- - - - - - 0x016A67 05:AA57: 00        .byte $00, $00, $00, $00, $00, $00, $00, $69   ; 02 
- - - - - - 0x016A6F 05:AA5F: 00        .byte $00, $00, $00, $00, $00, $00, $69, $69   ; 03 
- - - - - - 0x016A77 05:AA67: 00        .byte $00, $00, $00, $00, $00, $65, $67, $69   ; 04 
- - - - - - 0x016A7F 05:AA6F: 00        .byte $00, $00, $00, $00, $69, $06, $07, $65   ; 05 
- - - - - - 0x016A87 05:AA77: 00        .byte $00, $05, $69, $63, $65, $67, $69, $06   ; 06 
- - - - - - 0x016A8F 05:AA7F: 05        .byte $05, $05, $05, $08, $06, $07, $05, $05   ; 07 



_off018_07_AA87_08:
;                                              00   01   02   03   04   05   06   07
- - - - - - 0x016A97 05:AA87: 00        .byte $00, $05, $05, $69, $65, $67, $05, $05   ; 00 
- - - - - - 0x016A9F 05:AA8F: 05        .byte $05, $67, $69, $67, $64, $07, $69, $00   ; 01 
- - - - - - 0x016AA7 05:AA97: 65        .byte $65, $68, $69, $07, $08, $05, $70, $71   ; 02 
- - - - - - 0x016AAF 05:AA9F: 64        .byte $64, $07, $65, $67, $69, $00, $74, $76   ; 03 
- D 1 - I - 0x016AB7 05:AAA7: 08        .byte $08, $69, $06, $07, $00, $00, $79, $7A   ; 04 
- D 1 - I - 0x016ABF 05:AAAF: 67        .byte $67, $63, $00, $00, $00, $00, $00, $00   ; 05 
- D 1 - I - 0x016AC7 05:AAB7: 07        .byte $07, $08, $69, $00, $00, $00, $00, $00   ; 06 
- D 1 - I - 0x016ACF 05:AABF: 05        .byte $05, $00, $00, $00, $00, $00, $00, $00   ; 07 



_off018_07_AAC7_09:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x016AD7 05:AAC7: 05        .byte $05, $00, $00, $70, $71, $72, $00, $00   ; 00 
- D 1 - I - 0x016ADF 05:AACF: 00        .byte $00, $00, $00, $76, $75, $76, $72, $00   ; 01 
- D 1 - I - 0x016AE7 05:AAD7: 72        .byte $72, $73, $2D, $79, $42, $02, $03, $04   ; 02 
- D 1 - I - 0x016AEF 05:AADF: 75        .byte $75, $76, $20, $58, $43, $06, $07, $08   ; 03 
- D 1 - I - 0x016AF7 05:AAE7: 79        .byte $79, $7A, $24, $5C, $20, $3B, $00, $71   ; 04 
- D 1 - I - 0x016AFF 05:AAEF: 00        .byte $00, $00, $00, $29, $24, $3F, $70, $6D   ; 05 
- D 1 - I - 0x016B07 05:AAF7: 00        .byte $00, $0F, $1A, $01, $01, $04, $02, $6A   ; 06 
- D 1 - I - 0x016B0F 05:AAFF: 18        .byte $18, $11, $1E, $05, $05, $08, $06, $07   ; 07 



_off018_07_AB07_0A:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x016B17 05:AB07: 29        .byte $29, $1F, $2C, $20, $3B, $00, $70, $71   ; 00 
- D 1 - I - 0x016B1F 05:AB0F: 00        .byte $00, $00, $29, $24, $3F, $6D, $74, $75   ; 01 
- D 1 - I - 0x016B27 05:AB17: 02        .byte $02, $03, $04, $01, $02, $6A, $6B, $78   ; 02 
- D 1 - I - 0x016B2F 05:AB1F: 06        .byte $06, $07, $08, $05, $06, $07, $69, $69   ; 03 
- D 1 - I - 0x016B37 05:AB27: 70        .byte $70, $72, $71, $72, $71, $72, $00, $00   ; 04 
- D 1 - I - 0x016B3F 05:AB2F: 74        .byte $74, $76, $75, $76, $75, $77, $00, $00   ; 05 
- D 1 - I - 0x016B47 05:AB37: 6B        .byte $6B, $79, $7A, $79, $7B, $00, $00, $00   ; 06 
- D 1 - I - 0x016B4F 05:AB3F: 05        .byte $05, $00, $00, $00, $00, $00, $00, $00   ; 07 



_off018_07_AB47_0B:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x016B57 05:AB47: 00        .byte $00, $70, $71, $72, $00, $00, $00, $70   ; 00 
- D 1 - I - 0x016B5F 05:AB4F: 70        .byte $70, $71, $75, $76, $72, $00, $70, $71   ; 01 
- D 1 - I - 0x016B67 05:AB57: 74        .byte $74, $75, $76, $77, $7B, $0F, $31, $75   ; 02 
- D 1 - I - 0x016B6F 05:AB5F: 78        .byte $78, $79, $7A, $0F, $50, $12, $1D, $79   ; 03 
- D 1 - I - 0x016B77 05:AB67: 00        .byte $00, $0F, $1A, $10, $54, $16, $13, $00   ; 04 
- D 1 - I - 0x016B7F 05:AB6F: 2D        .byte $2D, $30, $1E, $14, $13, $70, $72, $73   ; 05 
- D 1 - I - 0x016B87 05:AB77: 21        .byte $21, $34, $17, $00, $00, $74, $75, $76   ; 06 
- D 1 - I - 0x016B8F 05:AB7F: 25        .byte $25, $26, $21, $23, $00, $00, $78, $79   ; 07 



_off018_07_AB87_0C:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x016B97 05:AB87: 71        .byte $71, $72, $00, $00, $00, $00, $00, $00   ; 00 
- D 1 - I - 0x016B9F 05:AB8F: 76        .byte $76, $77, $00, $70, $72, $72, $00, $00   ; 01 
- D 1 - I - 0x016BA7 05:AB97: 7C        .byte $7C, $7B, $00, $74, $76, $77, $00, $00   ; 02 
- D 1 - I - 0x016BAF 05:AB9F: 39        .byte $39, $17, $00, $78, $7A, $00, $70, $71   ; 03 
- D 1 - I - 0x016BB7 05:ABA7: 3D        .byte $3D, $20, $58, $17, $00, $00, $74, $75   ; 04 
- D 1 - I - 0x016BBF 05:ABAF: 29        .byte $29, $24, $5C, $3A, $00, $00, $78, $79   ; 05 
- D 1 - I - 0x016BC7 05:ABB7: 73        .byte $73, $00, $29, $3E, $00, $80, $02, $03   ; 06 
- D 1 - I - 0x016BCF 05:ABBF: 7B        .byte $7B, $00, $00, $00, $00, $81, $06, $07   ; 07 



_off018_07_ABC7_0D:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x016BD7 05:ABC7: 00        .byte $00, $00, $00, $00, $00, $00, $9B, $9C   ; 00 
- D 1 - I - 0x016BDF 05:ABCF: 00        .byte $00, $00, $00, $70, $72, $73, $00, $00   ; 01 
- D 1 - I - 0x016BE7 05:ABD7: 00        .byte $00, $00, $00, $74, $76, $77, $00, $00   ; 02 
- D 1 - I - 0x016BEF 05:ABDF: 72        .byte $72, $72, $73, $78, $79, $7B, $00, $00   ; 03 
- D 1 - I - 0x016BF7 05:ABE7: 76        .byte $76, $76, $77, $00, $00, $00, $00, $00   ; 04 
- D 1 - I - 0x016BFF 05:ABEF: 7A        .byte $7A, $7A, $7B, $00, $00, $00, $00, $00   ; 05 
- D 1 - I - 0x016C07 05:ABF7: 02        .byte $02, $03, $01, $02, $03, $01, $02, $03   ; 06 
- D 1 - I - 0x016C0F 05:ABFF: 06        .byte $06, $07, $05, $06, $07, $05, $06, $07   ; 07 



_off018_07_AC07_0E:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x016C17 05:AC07: 93        .byte $93, $94, $93, $95, $96, $97, $96, $98   ; 00 
- D 1 - I - 0x016C1F 05:AC0F: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 01 
- D 1 - I - 0x016C27 05:AC17: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 02 
- D 1 - I - 0x016C2F 05:AC1F: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 03 
- D 1 - I - 0x016C37 05:AC27: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 04 
- D 1 - I - 0x016C3F 05:AC2F: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 05 
- D 1 - I - 0x016C47 05:AC37: 82        .byte $82, $83, $82, $83, $82, $83, $82, $83   ; 06 
- D 1 - I - 0x016C4F 05:AC3F: 99        .byte $99, $9A, $99, $9A, $99, $9A, $99, $9A   ; 07 



_off018_07_AC47_0F:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x016C57 05:AC47: 93        .byte $93, $94, $93, $95, $96, $97, $96, $98   ; 00 
- D 1 - I - 0x016C5F 05:AC4F: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 01 
- D 1 - I - 0x016C67 05:AC57: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 02 
- D 1 - I - 0x016C6F 05:AC5F: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 03 
- D 1 - I - 0x016C77 05:AC67: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 04 
- D 1 - I - 0x016C7F 05:AC6F: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 05 
- D 1 - I - 0x016C87 05:AC77: 84        .byte $84, $00, $85, $00, $85, $00, $86, $82   ; 06 
- D 1 - I - 0x016C8F 05:AC7F: 99        .byte $99, $00, $9A, $00, $9A, $00, $87, $99   ; 07 



_off018_07_AC87_10:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x016C97 05:AC87: C5        .byte $C5, $9D, $9E, $A0, $BD, $A1, $A2, $CD   ; 00 
- D 1 - I - 0x016C9F 05:AC8F: 00        .byte $00, $00, $00, $00, $71, $76, $A3, $A4   ; 01 
- D 1 - I - 0x016CA7 05:AC97: 70        .byte $70, $71, $73, $00, $79, $79, $A5, $A6   ; 02 
- D 1 - I - 0x016CAF 05:AC9F: 74        .byte $74, $75, $76, $7B, $70, $70, $72, $A7   ; 03 
- D 1 - I - 0x016CB7 05:ACA7: 00        .byte $00, $79, $7A, $7B, $74, $76, $76, $A8   ; 04 
- D 1 - I - 0x016CBF 05:ACAF: 00        .byte $00, $00, $72, $00, $78, $79, $7A, $A9   ; 05 
- D 1 - I - 0x016CC7 05:ACB7: 82        .byte $82, $83, $82, $9F, $00, $00, $00, $AA   ; 06 
- D 1 - I - 0x016CCF 05:ACBF: 99        .byte $99, $9A, $99, $9A, $00, $00, $00, $AB   ; 07 



_off018_07_ACC7_11:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x016CD7 05:ACC7: 92        .byte $92, $CD, $92, $CD, $00, $00, $00, $00   ; 00 
- D 1 - I - 0x016CDF 05:ACCF: 8A        .byte $8A, $8B, $8A, $8B, $00, $00, $00, $00   ; 01 
- D 1 - I - 0x016CE7 05:ACD7: 90        .byte $90, $88, $90, $88, $00, $00, $00, $00   ; 02 
- D 1 - I - 0x016CEF 05:ACDF: 8D        .byte $8D, $8E, $8D, $8E, $00, $00, $00, $00   ; 03 
- D 1 - I - 0x016CF7 05:ACE7: AC        .byte $AC, $CD, $92, $CD, $92, $CD, $92, $CD   ; 04 
- D 1 - I - 0x016CFF 05:ACEF: AD        .byte $AD, $8B, $8A, $8B, $8A, $8B, $8A, $8B   ; 05 
- D 1 - I - 0x016D07 05:ACF7: AE        .byte $AE, $88, $90, $88, $90, $88, $90, $88   ; 06 
- D 1 - I - 0x016D0F 05:ACFF: 8D        .byte $8D, $8E, $8D, $8E, $8D, $8E, $8D, $8E   ; 07 



_off018_07_AD07_12:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x016D17 05:AD07: 88        .byte $88, $C3, $88, $C3, $00, $00, $00, $A7   ; 00 
- D 1 - I - 0x016D1F 05:AD0F: 8E        .byte $8E, $C4, $8E, $C4, $00, $00, $00, $A8   ; 01 
- D 1 - I - 0x016D27 05:AD17: CD        .byte $CD, $8F, $CD, $8F, $09, $41, $00, $A9   ; 02 
- D 1 - I - 0x016D2F 05:AD1F: 89        .byte $89, $8A, $89, $8A, $8C, $C4, $00, $AF   ; 03 
- - - - - - 0x016D37 05:AD27: 88        .byte $88, $90, $88, $91, $CD, $8F, $70, $71   ; 04 
- - - - - - 0x016D3F 05:AD2F: 8C        .byte $8C, $8D, $8C, $8D, $89, $8A, $74, $76   ; 05 
- - - - - - 0x016D47 05:AD37: CD        .byte $CD, $CE, $CD, $CE, $88, $90, $82, $83   ; 06 
- - - - - - 0x016D4F 05:AD3F: 89        .byte $89, $C4, $89, $C4, $8E, $8D, $99, $9A   ; 07 



_off018_07_AD47_13:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x016D57 05:AD47: B0        .byte $B0, $C8, $B0, $C8, $B0, $C8, $B0, $B9   ; 00 
- D 1 - I - 0x016D5F 05:AD4F: B2        .byte $B2, $B3, $B4, $B3, $B4, $B3, $BA, $BB   ; 01 
- D 1 - I - 0x016D67 05:AD57: B5        .byte $B5, $B6, $B7, $B6, $B7, $B6, $BC, $00   ; 02 
- D 1 - I - 0x016D6F 05:AD5F: A1        .byte $A1, $B8, $A1, $B8, $A1, $B8, $BB, $00   ; 03 
- D 1 - I - 0x016D77 05:AD67: 72        .byte $72, $00, $00, $00, $70, $71, $00, $00   ; 04 
- D 1 - I - 0x016D7F 05:AD6F: 75        .byte $75, $71, $00, $00, $74, $75, $72, $00   ; 05 
- D 1 - I - 0x016D87 05:AD77: 82        .byte $82, $83, $82, $83, $82, $83, $82, $83   ; 06 
- D 1 - I - 0x016D8F 05:AD7F: 99        .byte $99, $9A, $99, $9A, $99, $9A, $99, $9A   ; 07 



_off018_07_AD87_14:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x016D97 05:AD87: B8        .byte $B8, $A1, $B8, $BD, $BE, $BF, $A1, $C0   ; 00 
- D 1 - I - 0x016D9F 05:AD8F: 00        .byte $00, $00, $00, $00, $00, $00, $00, $C1   ; 01 
- D 1 - I - 0x016DA7 05:AD97: 00        .byte $00, $00, $00, $00, $00, $00, $00, $C2   ; 02 
- D 1 - I - 0x016DAF 05:AD9F: 00        .byte $00, $00, $00, $00, $00, $00, $00, $A9   ; 03 
- D 1 - I - 0x016DB7 05:ADA7: 00        .byte $00, $00, $00, $00, $00, $00, $00, $AA   ; 04 
- D 1 - I - 0x016DBF 05:ADAF: 00        .byte $00, $00, $00, $00, $00, $00, $00, $A7   ; 05 
- D 1 - I - 0x016DC7 05:ADB7: 82        .byte $82, $83, $82, $83, $82, $83, $82, $83   ; 06 
- D 1 - I - 0x016DCF 05:ADBF: 99        .byte $99, $9A, $99, $9A, $99, $9A, $99, $9A   ; 07 



_off018_07_ADC7_15:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x016DD7 05:ADC7: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 00 
- D 1 - I - 0x016DDF 05:ADCF: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 01 
- D 1 - I - 0x016DE7 05:ADD7: C6        .byte $C6, $C7, $C6, $C7, $B3, $B4, $B3, $B4   ; 02 
- D 1 - I - 0x016DEF 05:ADDF: B1        .byte $B1, $B0, $C8, $C9, $CA, $CB, $99, $9A   ; 03 
- D 1 - I - 0x016DF7 05:ADE7: B3        .byte $B3, $B4, $B3, $B4, $C6, $C7, $C6, $C7   ; 04 
- D 1 - I - 0x016DFF 05:ADEF: CA        .byte $CA, $CB, $99, $9A, $B1, $B0, $C8, $C9   ; 05 
- D 1 - I - 0x016E07 05:ADF7: C6        .byte $C6, $C7, $C6, $C7, $B3, $B4, $B3, $B4   ; 06 
- D 1 - I - 0x016E0F 05:ADFF: CC        .byte $CC, $B0, $CC, $C9, $CA, $CB, $99, $9A   ; 07 



_off018_07_AE07_16:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x016E17 05:AE07: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 00 
- D 1 - I - 0x016E1F 05:AE0F: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 01 
- D 1 - I - 0x016E27 05:AE17: 00        .byte $00, $00, $00, $00, $00, $D6, $D7, $D8   ; 02 
- D 1 - I - 0x016E2F 05:AE1F: 00        .byte $00, $00, $00, $00, $00, $D9, $DA, $DB   ; 03 
- D 1 - I - 0x016E37 05:AE27: 00        .byte $00, $00, $00, $00, $DC, $DD, $DE, $DF   ; 04 
- D 1 - I - 0x016E3F 05:AE2F: 00        .byte $00, $00, $00, $E0, $E1, $E2, $E3, $E4   ; 05 
- D 1 - I - 0x016E47 05:AE37: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 06 
- D 1 - I - 0x016E4F 05:AE3F: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 07 



_off006_0x016E57_07_area_8:
; 00 
- D 1 - I - 0x016E57 05:AE47: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x016E5B 05:AE4B: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x016E5F 05:AE4F: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x016E63 05:AE53: 00        .byte $00, $00, $00, $00   ; 
; 01 
- D 1 - I - 0x016E67 05:AE57: 42        .byte $42, $DB, $42, $DB   ; 
- D 1 - I - 0x016E6B 05:AE5B: DC        .byte $DC, $DD, $DC, $DD   ; 
- D 1 - I - 0x016E6F 05:AE5F: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x016E73 05:AE63: 00        .byte $00, $00, $00, $00   ; 
; 02 
- D 1 - I - 0x016E77 05:AE67: 42        .byte $42, $DB, $42, $DB   ; 
- D 1 - I - 0x016E7B 05:AE6B: DC        .byte $DC, $DD, $DC, $DD   ; 
- D 1 - I - 0x016E7F 05:AE6F: 04        .byte $04, $ED, $05, $F0   ; 
- D 1 - I - 0x016E83 05:AE73: EE        .byte $EE, $EF, $F1, $F2   ; 
; 03 
- D 1 - I - 0x016E87 05:AE77: 42        .byte $42, $DB, $42, $DB   ; 
- D 1 - I - 0x016E8B 05:AE7B: DC        .byte $DC, $DD, $DC, $DD   ; 
- D 1 - I - 0x016E8F 05:AE7F: 08        .byte $08, $F2, $09, $F9   ; 
- D 1 - I - 0x016E93 05:AE83: F7        .byte $F7, $F8, $FA, $FB   ; 
; 04 
- D 1 - I - 0x016E97 05:AE87: 42        .byte $42, $DB, $42, $DB   ; 
- D 1 - I - 0x016E9B 05:AE8B: DC        .byte $DC, $DD, $DC, $DD   ; 
- D 1 - I - 0x016E9F 05:AE8F: 0C        .byte $0C, $E1, $0D, $E3   ; 
- D 1 - I - 0x016EA3 05:AE93: 10        .byte $10, $E2, $11, $E4   ; 
; 05 
- D 1 - I - 0x016EA7 05:AE97: 01        .byte $01, $EA, $01, $EA   ; 
- D 1 - I - 0x016EAB 05:AE9B: EB        .byte $EB, $EC, $EB, $EC   ; 
- D 1 - I - 0x016EAF 05:AE9F: 02        .byte $02, $DE, $03, $02   ; 
- D 1 - I - 0x016EB3 05:AEA3: 00        .byte $00, $DF, $E0, $00   ; 
; 06 
- D 1 - I - 0x016EB7 05:AEA7: 06        .byte $06, $F3, $07, $F4   ; 
- D 1 - I - 0x016EBB 05:AEAB: EB        .byte $EB, $EC, $F5, $F6   ; 
- D 1 - I - 0x016EBF 05:AEAF: 02        .byte $02, $DE, $03, $02   ; 
- D 1 - I - 0x016EC3 05:AEB3: 00        .byte $00, $DF, $E0, $00   ; 
; 07 
- D 1 - I - 0x016EC7 05:AEB7: 0A        .byte $0A, $FC, $0B, $FE   ; 
- D 1 - I - 0x016ECB 05:AEBB: EB        .byte $EB, $FD, $FF, $EC   ; 
- D 1 - I - 0x016ECF 05:AEBF: 02        .byte $02, $DE, $03, $02   ; 
- D 1 - I - 0x016ED3 05:AEC3: 00        .byte $00, $DF, $E0, $00   ; 
; 08 
- D 1 - I - 0x016ED7 05:AEC7: 0E        .byte $0E, $E5, $0F, $E8   ; 
- D 1 - I - 0x016EDB 05:AECB: E6        .byte $E6, $E7, $17, $E9   ; 
- D 1 - I - 0x016EDF 05:AECF: 02        .byte $02, $DE, $03, $02   ; 
- D 1 - I - 0x016EE3 05:AED3: 00        .byte $00, $DF, $E0, $00   ; 
; 09 
- D 1 - I - 0x016EE7 05:AED7: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x016EEB 05:AEDB: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x016EEF 05:AEDF: 42        .byte $42, $DB, $42, $DB   ; 
- D 1 - I - 0x016EF3 05:AEE3: DC        .byte $DC, $DD, $DC, $DD   ; 
; 0A 
- D 1 - I - 0x016EF7 05:AEE7: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x016EFB 05:AEEB: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x016EFF 05:AEEF: 01        .byte $01, $EA, $01, $EA   ; 
- D 1 - I - 0x016F03 05:AEF3: EB        .byte $EB, $EC, $EB, $EC   ; 
; 0B 
- D 1 - I - 0x016F07 05:AEF7: 0C        .byte $0C, $E1, $0D, $E3   ; 
- D 1 - I - 0x016F0B 05:AEFB: 10        .byte $10, $E2, $11, $E4   ; 
- D 1 - I - 0x016F0F 05:AEFF: 0E        .byte $0E, $E5, $0F, $E8   ; 
- D 1 - I - 0x016F13 05:AF03: E6        .byte $E6, $E7, $17, $E9   ; 
; 0C 
- D 1 - I - 0x016F17 05:AF07: 04        .byte $04, $ED, $05, $F0   ; 
- D 1 - I - 0x016F1B 05:AF0B: EE        .byte $EE, $EF, $F1, $F2   ; 
- D 1 - I - 0x016F1F 05:AF0F: 06        .byte $06, $F3, $07, $F4   ; 
- D 1 - I - 0x016F23 05:AF13: EB        .byte $EB, $EC, $F5, $F6   ; 
; 0D 
- D 1 - I - 0x016F27 05:AF17: 08        .byte $08, $F2, $09, $F9   ; 
- D 1 - I - 0x016F2B 05:AF1B: F7        .byte $F7, $F8, $FA, $FB   ; 
- D 1 - I - 0x016F2F 05:AF1F: 0A        .byte $0A, $FC, $0B, $FE   ; 
- D 1 - I - 0x016F33 05:AF23: EB        .byte $EB, $FD, $FF, $EC   ; 
; 0E 
- D 1 - I - 0x016F37 05:AF27: 02        .byte $02, $DE, $03, $02   ; 
- D 1 - I - 0x016F3B 05:AF2B: 00        .byte $00, $DF, $E0, $00   ; 
- D 1 - I - 0x016F3F 05:AF2F: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x016F43 05:AF33: 00        .byte $00, $00, $00, $00   ; 
; 0F 
- D 1 - I - 0x016F47 05:AF37: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x016F4B 05:AF3B: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x016F4F 05:AF3F: 00        .byte $00, $00, $64, $CC   ; 
- D 1 - I - 0x016F53 05:AF43: 64        .byte $64, $CC, $60, $CA   ; 
; 10 
- D 1 - I - 0x016F57 05:AF47: 60        .byte $60, $CA, $62, $CB   ; 
- D 1 - I - 0x016F5B 05:AF4B: 15        .byte $15, $CB, $00, $00   ; 
- D 1 - I - 0x016F5F 05:AF4F: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x016F63 05:AF53: 00        .byte $00, $00, $14, $D3   ; 
; 11 
- D 1 - I - 0x016F67 05:AF57: 60        .byte $60, $CA, $62, $CF   ; 
- D 1 - I - 0x016F6B 05:AF5B: 8E        .byte $8E, $E1, $0D, $E3   ; 
- - - - - - 0x016F6F 05:AF5F: 10        .byte $10, $E2, $11, $E4   ; 
- - - - - - 0x016F73 05:AF63: 0E        .byte $0E, $E5, $0F, $E8   ; 
; 12 
- D 1 - I - 0x016F77 05:AF67: 60        .byte $60, $CA, $62, $D0   ; 
- D 1 - I - 0x016F7B 05:AF6B: CD        .byte $CD, $CE, $D1, $D2   ; 
- D 1 - I - 0x016F7F 05:AF6F: 12        .byte $12, $D6, $13, $D9   ; 
- D 1 - I - 0x016F83 05:AF73: D7        .byte $D7, $D8, $14, $D3   ; 
; 13 
- D 1 - I - 0x016F87 05:AF77: 02        .byte $02, $1A, $00, $1C   ; 
- D 1 - I - 0x016F8B 05:AF7B: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x016F8F 05:AF7F: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x016F93 05:AF83: 00        .byte $00, $00, $00, $00   ; 
; 14 
- D 1 - I - 0x016F97 05:AF87: 14        .byte $14, $D3, $15, $D4   ; 
- D 1 - I - 0x016F9B 05:AF8B: 15        .byte $15, $D4, $02, $D5   ; 
- D 1 - I - 0x016F9F 05:AF8F: 02        .byte $02, $1A, $00, $1C   ; 
- D 1 - I - 0x016FA3 05:AF93: 00        .byte $00, $00, $00, $00   ; 
; 15 
- - - - - - 0x016FA7 05:AF97: 16        .byte $16, $E7, $17, $D4   ; 
- - - - - - 0x016FAB 05:AF9B: 15        .byte $15, $D4, $02, $D5   ; 
- - - - - - 0x016FAF 05:AF9F: 02        .byte $02, $1A, $00, $1C   ; 
- - - - - - 0x016FB3 05:AFA3: 00        .byte $00, $00, $00, $00   ; 
; 16 
- D 1 - I - 0x016FB7 05:AFA7: 07        .byte $07, $DA, $15, $D4   ; 
- D 1 - I - 0x016FBB 05:AFAB: 15        .byte $15, $D4, $02, $D5   ; 
- D 1 - I - 0x016FBF 05:AFAF: 02        .byte $02, $1A, $00, $1C   ; 
- D 1 - I - 0x016FC3 05:AFB3: 00        .byte $00, $00, $00, $00   ; 
; 17 
- D 1 - I - 0x016FC7 05:AFB7: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x016FCB 05:AFBB: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x016FCF 05:AFBF: 68        .byte $68, $C0, $00, $00   ; 
- D 1 - I - 0x016FD3 05:AFC3: 65        .byte $65, $BE, $68, $C0   ; 
; 18 
- D 1 - I - 0x016FD7 05:AFC7: 00        .byte $00, $00, $64, $CC   ; 
- D 1 - I - 0x016FDB 05:AFCB: 64        .byte $64, $CC, $60, $CA   ; 
- - - - - - 0x016FDF 05:AFCF: 60        .byte $60, $CA, $62, $CB   ; 
- - - - - - 0x016FE3 05:AFD3: 15        .byte $15, $CB, $00, $00   ; 
; 19 
- D 1 - I - 0x016FE7 05:AFD7: 00        .byte $00, $00, $64, $CC   ; 
- D 1 - I - 0x016FEB 05:AFDB: 64        .byte $64, $CC, $60, $CA   ; 
- D 1 - I - 0x016FEF 05:AFDF: 60        .byte $60, $CA, $62, $CF   ; 
- D 1 - I - 0x016FF3 05:AFE3: 8E        .byte $8E, $E1, $0D, $E3   ; 
; 1A 
- D 1 - I - 0x016FF7 05:AFE7: 00        .byte $00, $00, $64, $CC   ; 
- D 1 - I - 0x016FFB 05:AFEB: 64        .byte $64, $CC, $60, $CA   ; 
- D 1 - I - 0x016FFF 05:AFEF: 60        .byte $60, $CA, $62, $D0   ; 
- D 1 - I - 0x017003 05:AFF3: CD        .byte $CD, $CE, $D1, $D2   ; 
; 1B 
- - - - - - 0x017007 05:AFF7: 66        .byte $66, $BF, $65, $BE   ; 
- - - - - - 0x01700B 05:AFFB: 00        .byte $00, $00, $66, $BF   ; 
- - - - - - 0x01700F 05:AFFF: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x017013 05:B003: 19        .byte $19, $C1, $00, $00   ; 
; 1C 
- - - - - - 0x017017 05:B007: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x01701B 05:B00B: 00        .byte $00, $00, $14, $D3   ; 
- - - - - - 0x01701F 05:B00F: 14        .byte $14, $D3, $15, $D4   ; 
- - - - - - 0x017023 05:B013: 15        .byte $15, $D4, $02, $D5   ; 
; 1D 
- D 1 - I - 0x017027 05:B017: 10        .byte $10, $E2, $11, $E4   ; 
- D 1 - I - 0x01702B 05:B01B: 0E        .byte $0E, $E5, $0F, $E8   ; 
- D 1 - I - 0x01702F 05:B01F: 16        .byte $16, $E7, $17, $D4   ; 
- D 1 - I - 0x017033 05:B023: 15        .byte $15, $D4, $02, $D5   ; 
; 1E 
- D 1 - I - 0x017037 05:B027: 12        .byte $12, $D6, $13, $D9   ; 
- D 1 - I - 0x01703B 05:B02B: D7        .byte $D7, $D8, $14, $D3   ; 
- D 1 - I - 0x01703F 05:B02F: 07        .byte $07, $DA, $15, $D4   ; 
- D 1 - I - 0x017043 05:B033: 15        .byte $15, $D4, $02, $D5   ; 
; 1F 
- D 1 - I - 0x017047 05:B037: 18        .byte $18, $BF, $19, $C1   ; 
- D 1 - I - 0x01704B 05:B03B: D5        .byte $D5, $02, $18, $BF   ; 
- D 1 - I - 0x01704F 05:B03F: 1C        .byte $1C, $00, $1A, $02   ; 
- D 1 - I - 0x017053 05:B043: 00        .byte $00, $00, $00, $00   ; 
; 20 
- D 1 - I - 0x017057 05:B047: 66        .byte $66, $BF, $65, $BE   ; 
- D 1 - I - 0x01705B 05:B04B: 0C        .byte $0C, $E1, $0D, $BF   ; 
- D 1 - I - 0x01705F 05:B04F: 10        .byte $10, $E2, $11, $E4   ; 
- D 1 - I - 0x017063 05:B053: 0E        .byte $0E, $E5, $0F, $E8   ; 
; 21 
- D 1 - I - 0x017067 05:B057: 67        .byte $67, $BF, $65, $BE   ; 
- D 1 - I - 0x01706B 05:B05B: C2        .byte $C2, $C3, $C5, $C6   ; 
- D 1 - I - 0x01706F 05:B05F: 00        .byte $00, $C4, $1B, $C7   ; 
- D 1 - I - 0x017073 05:B063: 19        .byte $19, $C1, $D7, $D8   ; 
; 22 
- D 1 - I - 0x017077 05:B067: 68        .byte $68, $C0, $00, $00   ; 
- D 1 - I - 0x01707B 05:B06B: 65        .byte $65, $BE, $68, $C0   ; 
- D 1 - I - 0x01707F 05:B06F: 66        .byte $66, $BF, $65, $BE   ; 
- D 1 - I - 0x017083 05:B073: 00        .byte $00, $00, $66, $BF   ; 
; 23 
- D 1 - I - 0x017087 05:B077: 68        .byte $68, $C0, $00, $00   ; 
- D 1 - I - 0x01708B 05:B07B: 65        .byte $65, $BE, $68, $C0   ; 
- D 1 - I - 0x01708F 05:B07F: 66        .byte $66, $BF, $65, $BE   ; 
- D 1 - I - 0x017093 05:B083: 0C        .byte $0C, $E1, $0D, $BF   ; 
; 24 
- D 1 - I - 0x017097 05:B087: 18        .byte $18, $E7, $17, $C9   ; 
- D 1 - I - 0x01709B 05:B08B: D5        .byte $D5, $02, $18, $BF   ; 
- D 1 - I - 0x01709F 05:B08F: 1C        .byte $1C, $00, $1A, $02   ; 
- D 1 - I - 0x0170A3 05:B093: 00        .byte $00, $00, $00, $00   ; 
; 25 
- D 1 - I - 0x0170A7 05:B097: 18        .byte $18, $BF, $07, $C8   ; 
- D 1 - I - 0x0170AB 05:B09B: D5        .byte $D5, $02, $18, $BF   ; 
- D 1 - I - 0x0170AF 05:B09F: 00        .byte $00, $00, $1A, $02   ; 
- D 1 - I - 0x0170B3 05:B0A3: 00        .byte $00, $00, $00, $00   ; 
; 26 
- D 1 - I - 0x0170B7 05:B0A7: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x0170BB 05:B0AB: 19        .byte $19, $C1, $00, $00   ; 
- D 1 - I - 0x0170BF 05:B0AF: 18        .byte $18, $BF, $19, $C1   ; 
- D 1 - I - 0x0170C3 05:B0B3: D5        .byte $D5, $02, $18, $BF   ; 
; 27 
- D 1 - I - 0x0170C7 05:B0B7: 10        .byte $10, $E2, $11, $E4   ; 
- D 1 - I - 0x0170CB 05:B0BB: 0E        .byte $0E, $E5, $0F, $E8   ; 
- D 1 - I - 0x0170CF 05:B0BF: 18        .byte $18, $E7, $17, $C9   ; 
- D 1 - I - 0x0170D3 05:B0C3: D5        .byte $D5, $02, $18, $BF   ; 
; 28 
- - - - - - 0x0170D7 05:B0C7: 68        .byte $68, $C0, $00, $00   ; 
- - - - - - 0x0170DB 05:B0CB: 65        .byte $65, $BE, $68, $C0   ; 
- - - - - - 0x0170DF 05:B0CF: 67        .byte $67, $BF, $65, $BE   ; 
- - - - - - 0x0170E3 05:B0D3: C2        .byte $C2, $C3, $C5, $C6   ; 
; 29 
- D 1 - I - 0x0170E7 05:B0D7: 1C        .byte $1C, $00, $1A, $02   ; 
- D 1 - I - 0x0170EB 05:B0DB: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x0170EF 05:B0DF: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x0170F3 05:B0E3: 00        .byte $00, $00, $00, $00   ; 
; 2A 
- D 1 - I - 0x0170F7 05:B0E7: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x0170FB 05:B0EB: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x0170FF 05:B0EF: 00        .byte $00, $00, $64, $B8   ; 
- D 1 - I - 0x017103 05:B0F3: 64        .byte $64, $CC, $60, $B9   ; 
; 2B 
- D 1 - I - 0x017107 05:B0F7: 61        .byte $61, $CA, $62, $D0   ; 
- D 1 - I - 0x01710B 05:B0FB: 63        .byte $63, $D0, $D1, $D2   ; 
- D 1 - I - 0x01710F 05:B0FF: 00        .byte $00, $D7, $17, $00   ; 
- D 1 - I - 0x017113 05:B103: D7        .byte $D7, $D8, $14, $B7   ; 
; 2C 
- D 1 - I - 0x017117 05:B107: 00        .byte $00, $C4, $1B, $C7   ; 
- D 1 - I - 0x01711B 05:B10B: 19        .byte $19, $C1, $D7, $D8   ; 
- D 1 - I - 0x01711F 05:B10F: 18        .byte $18, $BF, $07, $C8   ; 
- D 1 - I - 0x017123 05:B113: D5        .byte $D5, $02, $18, $BF   ; 
; 2D 
- D 1 - I - 0x017127 05:B117: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01712B 05:B11B: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01712F 05:B11F: 69        .byte $69, $C0, $00, $00   ; 
- D 1 - I - 0x017133 05:B123: BA        .byte $BA, $BE, $68, $C0   ; 
; 2E 
- D 1 - I - 0x017137 05:B127: 60        .byte $60, $CA, $62, $D0   ; 
- D 1 - I - 0x01713B 05:B12B: CD        .byte $CD, $CE, $D1, $D2   ; 
- D 1 - I - 0x01713F 05:B12F: 12        .byte $12, $D6, $17, $00   ; 
- D 1 - I - 0x017143 05:B133: D7        .byte $D7, $D8, $14, $B7   ; 
; 2F 
- D 1 - I - 0x017147 05:B137: 07        .byte $07, $DA, $15, $D4   ; 
- D 1 - I - 0x01714B 05:B13B: 63        .byte $63, $D4, $02, $D5   ; 
- D 1 - I - 0x01714F 05:B13F: 33        .byte $33, $00, $00, $1C   ; 
- D 1 - I - 0x017153 05:B143: 32        .byte $32, $6B, $00, $00   ; 
; 30 
- D 1 - I - 0x017157 05:B147: 61        .byte $61, $CA, $62, $CB   ; 
- D 1 - I - 0x01715B 05:B14B: 63        .byte $63, $CB, $00, $00   ; 
- D 1 - I - 0x01715F 05:B14F: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x017163 05:B153: 00        .byte $00, $00, $14, $D3   ; 
; 31 
- D 1 - I - 0x017167 05:B157: 00        .byte $00, $00, $64, $B8   ; 
- D 1 - I - 0x01716B 05:B15B: 64        .byte $64, $CC, $60, $B9   ; 
- D 1 - I - 0x01716F 05:B15F: 60        .byte $60, $CA, $62, $CF   ; 
- D 1 - I - 0x017173 05:B163: 8E        .byte $8E, $E1, $0D, $E3   ; 
; 32 
- D 1 - I - 0x017177 05:B167: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01717B 05:B16B: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01717F 05:B16F: 00        .byte $00, $00, $64, $CC   ; 
- D 1 - I - 0x017183 05:B173: 00        .byte $00, $00, $61, $CA   ; 
; 33 
- D 1 - I - 0x017187 05:B177: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01718B 05:B17B: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01718F 05:B17F: 00        .byte $00, $00, $64, $B8   ; 
- D 1 - I - 0x017193 05:B183: 64        .byte $64, $CC, $60, $B9   ; 
; 34 
- D 1 - I - 0x017197 05:B187: 68        .byte $68, $C0, $1D, $CB   ; 
- D 1 - I - 0x01719B 05:B18B: 65        .byte $65, $BE, $68, $C0   ; 
- D 1 - I - 0x01719F 05:B18F: 66        .byte $66, $BF, $65, $BE   ; 
- D 1 - I - 0x0171A3 05:B193: 00        .byte $00, $00, $66, $BF   ; 
; 35 
- D 1 - I - 0x0171A7 05:B197: 00        .byte $00, $00, $1D, $D4   ; 
- D 1 - I - 0x0171AB 05:B19B: 00        .byte $00, $00, $00, $D5   ; 
- D 1 - I - 0x0171AF 05:B19F: 00        .byte $00, $00, $00, $1C   ; 
- D 1 - I - 0x0171B3 05:B1A3: 00        .byte $00, $00, $00, $00   ; 
; 36 
- D 1 - I - 0x0171B7 05:B1A7: 00        .byte $00, $00, $63, $CB   ; 
- D 1 - I - 0x0171BB 05:B1AB: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x0171BF 05:B1AF: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x0171C3 05:B1B3: 00        .byte $00, $00, $14, $D3   ; 
; 37 
- D 1 - I - 0x0171C7 05:B1B7: 60        .byte $60, $CA, $62, $D0   ; 
- D 1 - I - 0x0171CB 05:B1BB: CD        .byte $CD, $CE, $D1, $D2   ; 
- D 1 - I - 0x0171CF 05:B1BF: 12        .byte $12, $D6, $13, $00   ; 
- D 1 - I - 0x0171D3 05:B1C3: D7        .byte $D7, $D8, $14, $B7   ; 
; 38 
- D 1 - I - 0x0171D7 05:B1C7: 61        .byte $61, $CA, $62, $D0   ; 
- D 1 - I - 0x0171DB 05:B1CB: 63        .byte $63, $D0, $D1, $D2   ; 
- D 1 - I - 0x0171DF 05:B1CF: 00        .byte $00, $D6, $13, $D9   ; 
- D 1 - I - 0x0171E3 05:B1D3: D7        .byte $D7, $D8, $14, $D3   ; 
; 39 
- D 1 - I - 0x0171E7 05:B1D7: 69        .byte $69, $C0, $00, $00   ; 
- D 1 - I - 0x0171EB 05:B1DB: BA        .byte $BA, $BE, $68, $C0   ; 
- D 1 - I - 0x0171EF 05:B1DF: 67        .byte $67, $BF, $65, $BE   ; 
- D 1 - I - 0x0171F3 05:B1E3: C2        .byte $C2, $C3, $C5, $C6   ; 
; 3A 
- D 1 - I - 0x0171F7 05:B1E7: 66        .byte $66, $BF, $65, $BB   ; 
- D 1 - I - 0x0171FB 05:B1EB: 00        .byte $00, $00, $66, $BC   ; 
- D 1 - I - 0x0171FF 05:B1EF: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x017203 05:B1F3: 19        .byte $19, $C1, $00, $00   ; 
; 3B 
- D 1 - I - 0x017207 05:B1F7: 68        .byte $68, $C0, $00, $00   ; 
- D 1 - I - 0x01720B 05:B1FB: 65        .byte $65, $BE, $68, $C0   ; 
- D 1 - I - 0x01720F 05:B1FF: 66        .byte $66, $BF, $65, $BB   ; 
- D 1 - I - 0x017213 05:B203: 00        .byte $00, $00, $66, $BC   ; 
; 3C 
- D 1 - I - 0x017217 05:B207: 07        .byte $07, $DA, $15, $D4   ; 
- D 1 - I - 0x01721B 05:B20B: 63        .byte $63, $D4, $02, $D5   ; 
- D 1 - I - 0x01721F 05:B20F: 00        .byte $00, $1A, $00, $1C   ; 
- D 1 - I - 0x017223 05:B213: 00        .byte $00, $00, $00, $00   ; 
; 3D 
- D 1 - I - 0x017227 05:B217: 00        .byte $00, $C4, $1B, $C7   ; 
- D 1 - I - 0x01722B 05:B21B: 69        .byte $69, $C1, $D7, $D8   ; 
- D 1 - I - 0x01722F 05:B21F: 18        .byte $18, $BF, $07, $C8   ; 
- D 1 - I - 0x017233 05:B223: D5        .byte $D5, $02, $18, $BF   ; 
; 3E 
- D 1 - I - 0x017237 05:B227: 18        .byte $18, $BF, $19, $B8   ; 
- D 1 - I - 0x01723B 05:B22B: D5        .byte $D5, $02, $18, $BD   ; 
- D 1 - I - 0x01723F 05:B22F: 1C        .byte $1C, $00, $1A, $00   ; 
- D 1 - I - 0x017243 05:B233: 00        .byte $00, $00, $00, $00   ; 
; 3F 
- D 1 - I - 0x017247 05:B237: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01724B 05:B23B: 19        .byte $19, $C1, $00, $00   ; 
- D 1 - I - 0x01724F 05:B23F: 18        .byte $18, $BF, $19, $B8   ; 
- D 1 - I - 0x017253 05:B243: D5        .byte $D5, $02, $18, $BD   ; 
; 40 
- - - - - - 0x017257 05:B247: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x01725B 05:B24B: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x01725F 05:B24F: 40        .byte $40, $DB, $42, $DB   ; 
- - - - - - 0x017263 05:B253: B4        .byte $B4, $DD, $DC, $DD   ; 
; 41 
- D 1 - I - 0x017267 05:B257: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01726B 05:B25B: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01726F 05:B25F: 42        .byte $42, $DB, $41, $B5   ; 
- D 1 - I - 0x017273 05:B263: DC        .byte $DC, $DD, $DC, $B6   ; 
; 42 
- D 1 - I - 0x017277 05:B267: 40        .byte $40, $DB, $42, $DB   ; 
- D 1 - I - 0x01727B 05:B26B: B4        .byte $B4, $DD, $DC, $DD   ; 
- D 1 - I - 0x01727F 05:B26F: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x017283 05:B273: 00        .byte $00, $00, $00, $00   ; 
; 43 
- D 1 - I - 0x017287 05:B277: 01        .byte $01, $EA, $01, $EA   ; 
- D 1 - I - 0x01728B 05:B27B: B4        .byte $B4, $EC, $EB, $EC   ; 
- D 1 - I - 0x01728F 05:B27F: 68        .byte $68, $C0, $02, $03   ; 
- D 1 - I - 0x017293 05:B283: 65        .byte $65, $BE, $68, $C0   ; 
; 44 
- D 1 - I - 0x017297 05:B287: 40        .byte $40, $DB, $42, $DB   ; 
- D 1 - I - 0x01729B 05:B28B: B4        .byte $B4, $DD, $DC, $DD   ; 
- D 1 - I - 0x01729F 05:B28F: 02        .byte $02, $DE, $03, $02   ; 
- D 1 - I - 0x0172A3 05:B293: 00        .byte $00, $DF, $E0, $00   ; 
; 45 
- D 1 - I - 0x0172A7 05:B297: 42        .byte $42, $DB, $42, $DB   ; 
- D 1 - I - 0x0172AB 05:B29B: DC        .byte $DC, $DD, $DC, $DD   ; 
- D 1 - I - 0x0172AF 05:B29F: 02        .byte $02, $DE, $03, $02   ; 
- D 1 - I - 0x0172B3 05:B2A3: 00        .byte $00, $DF, $E0, $00   ; 
; 46 
- D 1 - I - 0x0172B7 05:B2A7: 42        .byte $42, $DB, $41, $B5   ; 
- D 1 - I - 0x0172BB 05:B2AB: B4        .byte $B4, $DD, $DC, $B6   ; 
- D 1 - I - 0x0172BF 05:B2AF: 02        .byte $02, $DE, $03, $02   ; 
- D 1 - I - 0x0172C3 05:B2B3: 00        .byte $00, $DF, $E0, $00   ; 
; 47 
- D 1 - I - 0x0172C7 05:B2B7: 42        .byte $42, $DB, $42, $DB   ; 
- D 1 - I - 0x0172CB 05:B2BB: DC        .byte $DC, $DD, $DC, $DD   ; 
- D 1 - I - 0x0172CF 05:B2BF: 0C        .byte $0C, $94, $1E, $95   ; 
- D 1 - I - 0x0172D3 05:B2C3: 25        .byte $25, $96, $26, $97   ; 
; 48 
- D 1 - I - 0x0172D7 05:B2C7: 42        .byte $42, $DB, $42, $DB   ; 
- D 1 - I - 0x0172DB 05:B2CB: DC        .byte $DC, $DD, $DC, $DD   ; 
- D 1 - I - 0x0172DF 05:B2CF: 0C        .byte $0C, $94, $1E, $95   ; 
- D 1 - I - 0x0172E3 05:B2D3: 25        .byte $25, $90, $91, $97   ; 
; 49 
- D 1 - I - 0x0172E7 05:B2D7: 42        .byte $42, $DB, $42, $DB   ; 
- D 1 - I - 0x0172EB 05:B2DB: DC        .byte $DC, $DD, $DC, $DD   ; 
- D 1 - I - 0x0172EF 05:B2DF: 9E        .byte $9E, $9F, $A0, $A1   ; 
- D 1 - I - 0x0172F3 05:B2E3: A2        .byte $A2, $A3, $A4, $A5   ; 
; 4A 
- D 1 - I - 0x0172F7 05:B2E7: 42        .byte $42, $DB, $42, $DB   ; 
- D 1 - I - 0x0172FB 05:B2EB: DC        .byte $DC, $DD, $DC, $DD   ; 
- D 1 - I - 0x0172FF 05:B2EF: 9E        .byte $9E, $AE, $AF, $A1   ; 
- D 1 - I - 0x017303 05:B2F3: A2        .byte $A2, $B0, $B1, $A5   ; 
; 4B 
- D 1 - I - 0x017307 05:B2F7: 1F        .byte $1F, $98, $20, $99   ; 
- D 1 - I - 0x01730B 05:B2FB: 9A        .byte $9A, $9B, $9C, $9D   ; 
- D 1 - I - 0x01730F 05:B2FF: 02        .byte $02, $DE, $03, $02   ; 
- D 1 - I - 0x017313 05:B303: 00        .byte $00, $DF, $E0, $00   ; 
; 4C 
- D 1 - I - 0x017317 05:B307: 1F        .byte $1F, $92, $93, $99   ; 
- D 1 - I - 0x01731B 05:B30B: 9A        .byte $9A, $9B, $9C, $9D   ; 
- D 1 - I - 0x01731F 05:B30F: 02        .byte $02, $DE, $03, $02   ; 
- D 1 - I - 0x017323 05:B313: 00        .byte $00, $DF, $E0, $00   ; 
; 4D 
- D 1 - I - 0x017327 05:B317: A6        .byte $A6, $A7, $A8, $A9   ; 
- D 1 - I - 0x01732B 05:B31B: AA        .byte $AA, $AB, $AC, $AD   ; 
- D 1 - I - 0x01732F 05:B31F: 02        .byte $02, $DE, $03, $02   ; 
- D 1 - I - 0x017333 05:B323: 00        .byte $00, $DF, $E0, $00   ; 
; 4E 
- D 1 - I - 0x017337 05:B327: A6        .byte $A6, $B2, $B3, $A9   ; 
- D 1 - I - 0x01733B 05:B32B: AA        .byte $AA, $AB, $AC, $AD   ; 
- D 1 - I - 0x01733F 05:B32F: 02        .byte $02, $DE, $03, $02   ; 
- D 1 - I - 0x017343 05:B333: 00        .byte $00, $DF, $E0, $00   ; 
; 4F 
- D 1 - I - 0x017347 05:B337: 0C        .byte $0C, $94, $1E, $95   ; 
- D 1 - I - 0x01734B 05:B33B: 25        .byte $25, $96, $26, $97   ; 
- D 1 - I - 0x01734F 05:B33F: 1F        .byte $1F, $98, $20, $99   ; 
- D 1 - I - 0x017353 05:B343: 9A        .byte $9A, $9B, $9C, $9D   ; 
; 50 
- D 1 - I - 0x017357 05:B347: 00        .byte $00, $00, $64, $CC   ; 
- D 1 - I - 0x01735B 05:B34B: 64        .byte $64, $CC, $60, $CA   ; 
- D 1 - I - 0x01735F 05:B34F: 60        .byte $60, $CA, $62, $CF   ; 
- D 1 - I - 0x017363 05:B353: 8E        .byte $8E, $94, $1E, $95   ; 
; 51 
- D 1 - I - 0x017367 05:B357: 00        .byte $00, $00, $64, $CC   ; 
- D 1 - I - 0x01736B 05:B35B: 64        .byte $64, $CC, $60, $CA   ; 
- D 1 - I - 0x01736F 05:B35F: 60        .byte $60, $CA, $62, $CF   ; 
- D 1 - I - 0x017373 05:B363: 8E        .byte $8E, $94, $1E, $95   ; 
; 52 
- D 1 - I - 0x017377 05:B367: 00        .byte $00, $00, $64, $CC   ; 
- D 1 - I - 0x01737B 05:B36B: 64        .byte $64, $CC, $60, $CA   ; 
- D 1 - I - 0x01737F 05:B36F: 60        .byte $60, $CA, $62, $CF   ; 
- D 1 - I - 0x017383 05:B373: 8F        .byte $8F, $9F, $A0, $A1   ; 
; 53 
- D 1 - I - 0x017387 05:B377: 00        .byte $00, $00, $64, $CC   ; 
- D 1 - I - 0x01738B 05:B37B: 64        .byte $64, $CC, $60, $CA   ; 
- D 1 - I - 0x01738F 05:B37F: 60        .byte $60, $CA, $62, $CF   ; 
- D 1 - I - 0x017393 05:B383: 8F        .byte $8F, $AE, $AF, $A1   ; 
; 54 
- D 1 - I - 0x017397 05:B387: 25        .byte $25, $96, $26, $97   ; 
- D 1 - I - 0x01739B 05:B38B: 1F        .byte $1F, $98, $20, $99   ; 
- D 1 - I - 0x01739F 05:B38F: 16        .byte $16, $E7, $17, $D4   ; 
- D 1 - I - 0x0173A3 05:B393: 15        .byte $15, $D4, $02, $D5   ; 
; 55 
- D 1 - I - 0x0173A7 05:B397: 25        .byte $25, $90, $91, $97   ; 
- D 1 - I - 0x0173AB 05:B39B: 1F        .byte $1F, $92, $93, $99   ; 
- D 1 - I - 0x0173AF 05:B39F: 16        .byte $16, $E7, $17, $D4   ; 
- D 1 - I - 0x0173B3 05:B3A3: 15        .byte $15, $D4, $02, $D5   ; 
; 56 
- D 1 - I - 0x0173B7 05:B3A7: A2        .byte $A2, $A3, $A4, $A5   ; 
- D 1 - I - 0x0173BB 05:B3AB: A6        .byte $A6, $A7, $A8, $A9   ; 
- D 1 - I - 0x0173BF 05:B3AF: 16        .byte $16, $E7, $17, $D4   ; 
- D 1 - I - 0x0173C3 05:B3B3: 15        .byte $15, $D4, $02, $D5   ; 
; 57 
- D 1 - I - 0x0173C7 05:B3B7: A2        .byte $A2, $B0, $B1, $A5   ; 
- D 1 - I - 0x0173CB 05:B3BB: A6        .byte $A6, $B2, $B3, $A9   ; 
- D 1 - I - 0x0173CF 05:B3BF: 16        .byte $16, $E7, $17, $D4   ; 
- D 1 - I - 0x0173D3 05:B3C3: 15        .byte $15, $D4, $02, $D5   ; 
; 58 
- D 1 - I - 0x0173D7 05:B3C7: 68        .byte $68, $C0, $00, $00   ; 
- D 1 - I - 0x0173DB 05:B3CB: 65        .byte $65, $BE, $68, $C0   ; 
- D 1 - I - 0x0173DF 05:B3CF: 66        .byte $66, $BF, $65, $BE   ; 
- D 1 - I - 0x0173E3 05:B3D3: 0C        .byte $0C, $94, $1E, $8C   ; 
; 59 
- D 1 - I - 0x0173E7 05:B3D7: 68        .byte $68, $C0, $00, $00   ; 
- D 1 - I - 0x0173EB 05:B3DB: 65        .byte $65, $BE, $68, $C0   ; 
- D 1 - I - 0x0173EF 05:B3DF: 66        .byte $66, $BF, $65, $BE   ; 
- D 1 - I - 0x0173F3 05:B3E3: 0C        .byte $0C, $94, $1E, $8C   ; 
; 5A 
- D 1 - I - 0x0173F7 05:B3E7: 68        .byte $68, $C0, $00, $00   ; 
- D 1 - I - 0x0173FB 05:B3EB: 65        .byte $65, $BE, $68, $C0   ; 
- D 1 - I - 0x0173FF 05:B3EF: 66        .byte $66, $BF, $65, $BE   ; 
- D 1 - I - 0x017403 05:B3F3: 9E        .byte $9E, $9F, $A0, $8D   ; 
; 5B 
- D 1 - I - 0x017407 05:B3F7: 68        .byte $68, $C0, $00, $00   ; 
- D 1 - I - 0x01740B 05:B3FB: 65        .byte $65, $BE, $68, $C0   ; 
- D 1 - I - 0x01740F 05:B3FF: 66        .byte $66, $BF, $65, $BE   ; 
- D 1 - I - 0x017413 05:B403: 9E        .byte $9E, $AE, $AF, $8D   ; 
; 5C 
- D 1 - I - 0x017417 05:B407: 25        .byte $25, $96, $26, $97   ; 
- D 1 - I - 0x01741B 05:B40B: 1F        .byte $1F, $98, $20, $99   ; 
- D 1 - I - 0x01741F 05:B40F: 18        .byte $18, $E7, $17, $C9   ; 
- D 1 - I - 0x017423 05:B413: D5        .byte $D5, $02, $18, $BF   ; 
; 5D 
- D 1 - I - 0x017427 05:B417: 25        .byte $25, $90, $91, $97   ; 
- D 1 - I - 0x01742B 05:B41B: 1F        .byte $1F, $92, $93, $99   ; 
- D 1 - I - 0x01742F 05:B41F: 18        .byte $18, $E7, $17, $C9   ; 
- D 1 - I - 0x017433 05:B423: D5        .byte $D5, $02, $18, $BF   ; 
; 5E 
- D 1 - I - 0x017437 05:B427: A2        .byte $A2, $A3, $A4, $A5   ; 
- D 1 - I - 0x01743B 05:B42B: A6        .byte $A6, $A7, $A8, $A9   ; 
- D 1 - I - 0x01743F 05:B42F: 18        .byte $18, $E7, $17, $C9   ; 
- D 1 - I - 0x017443 05:B433: D5        .byte $D5, $02, $18, $BF   ; 
; 5F 
- D 1 - I - 0x017447 05:B437: A2        .byte $A2, $B0, $B1, $A5   ; 
- D 1 - I - 0x01744B 05:B43B: A6        .byte $A6, $B2, $B3, $A9   ; 
- D 1 - I - 0x01744F 05:B43F: 18        .byte $18, $E7, $17, $C9   ; 
- D 1 - I - 0x017453 05:B443: D5        .byte $D5, $02, $18, $BF   ; 
; 60 
- D 1 - I - 0x017457 05:B447: 0C        .byte $0C, $94, $1E, $95   ; 
- D 1 - I - 0x01745B 05:B44B: 25        .byte $25, $90, $91, $97   ; 
- D 1 - I - 0x01745F 05:B44F: 1F        .byte $1F, $92, $93, $99   ; 
- D 1 - I - 0x017463 05:B453: 9A        .byte $9A, $9B, $9C, $9D   ; 
; 61 
- D 1 - I - 0x017467 05:B457: 9E        .byte $9E, $9F, $A0, $A1   ; 
- D 1 - I - 0x01746B 05:B45B: A2        .byte $A2, $A3, $A4, $A5   ; 
- D 1 - I - 0x01746F 05:B45F: A6        .byte $A6, $A7, $A8, $A9   ; 
- D 1 - I - 0x017473 05:B463: AA        .byte $AA, $AB, $AC, $AD   ; 
; 62 
- D 1 - I - 0x017477 05:B467: 9E        .byte $9E, $AE, $AF, $A1   ; 
- D 1 - I - 0x01747B 05:B46B: A2        .byte $A2, $B0, $B1, $A5   ; 
- D 1 - I - 0x01747F 05:B46F: A6        .byte $A6, $B2, $B3, $A9   ; 
- D 1 - I - 0x017483 05:B473: AA        .byte $AA, $AB, $AC, $AD   ; 
; 63 
- D 1 - I - 0x017487 05:B477: 01        .byte $01, $EA, $01, $EA   ; 
- D 1 - I - 0x01748B 05:B47B: EB        .byte $EB, $EC, $EB, $EC   ; 
- D 1 - I - 0x01748F 05:B47F: 0C        .byte $0C, $E1, $0D, $E3   ; 
- D 1 - I - 0x017493 05:B483: 10        .byte $10, $E2, $11, $E4   ; 
; 64 
- - - - - - 0x017497 05:B487: 06        .byte $06, $F3, $07, $F4   ; 
- - - - - - 0x01749B 05:B48B: EB        .byte $EB, $EC, $F5, $F6   ; 
- - - - - - 0x01749F 05:B48F: 0C        .byte $0C, $E1, $0D, $E3   ; 
- - - - - - 0x0174A3 05:B493: 10        .byte $10, $E2, $11, $E4   ; 
; 65 
- D 1 - I - 0x0174A7 05:B497: 01        .byte $01, $EA, $01, $EA   ; 
- D 1 - I - 0x0174AB 05:B49B: EB        .byte $EB, $EC, $EB, $EC   ; 
- D 1 - I - 0x0174AF 05:B49F: 04        .byte $04, $ED, $05, $F0   ; 
- D 1 - I - 0x0174B3 05:B4A3: EE        .byte $EE, $EF, $F1, $F2   ; 
; 66 
- - - - - - 0x0174B7 05:B4A7: 0A        .byte $0A, $FC, $0B, $FE   ; 
- - - - - - 0x0174BB 05:B4AB: EB        .byte $EB, $FD, $FF, $EC   ; 
- - - - - - 0x0174BF 05:B4AF: 04        .byte $04, $ED, $05, $F0   ; 
- - - - - - 0x0174C3 05:B4B3: EE        .byte $EE, $EF, $F1, $F2   ; 
; 67 
- D 1 - I - 0x0174C7 05:B4B7: 01        .byte $01, $EA, $01, $EA   ; 
- D 1 - I - 0x0174CB 05:B4BB: EB        .byte $EB, $EC, $EB, $EC   ; 
- D 1 - I - 0x0174CF 05:B4BF: 08        .byte $08, $F2, $09, $F9   ; 
- D 1 - I - 0x0174D3 05:B4C3: F7        .byte $F7, $F8, $FA, $FB   ; 
; 68 
- - - - - - 0x0174D7 05:B4C7: 0A        .byte $0A, $FC, $0B, $FE   ; 
- - - - - - 0x0174DB 05:B4CB: EB        .byte $EB, $FD, $FF, $EC   ; 
- - - - - - 0x0174DF 05:B4CF: 08        .byte $08, $F2, $09, $F9   ; 
- - - - - - 0x0174E3 05:B4D3: F7        .byte $F7, $F8, $FA, $FB   ; 
; 69 
- D 1 - I - 0x0174E7 05:B4D7: 01        .byte $01, $EA, $01, $EA   ; 
- D 1 - I - 0x0174EB 05:B4DB: EB        .byte $EB, $EC, $EB, $EC   ; 
- D 1 - I - 0x0174EF 05:B4DF: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x0174F3 05:B4E3: 00        .byte $00, $00, $00, $00   ; 
; 6A 
- D 1 - I - 0x0174F7 05:B4E7: 50        .byte $50, $7F, $51, $80   ; 
- D 1 - I - 0x0174FB 05:B4EB: DC        .byte $DC, $DD, $DC, $DD   ; 
- D 1 - I - 0x0174FF 05:B4EF: 08        .byte $08, $F2, $09, $F9   ; 
- D 1 - I - 0x017503 05:B4F3: F7        .byte $F7, $F8, $FA, $FB   ; 
; 6B 
- D 1 - I - 0x017507 05:B4F7: 43        .byte $43, $DB, $41, $B5   ; 
- D 1 - I - 0x01750B 05:B4FB: DC        .byte $DC, $DD, $DC, $B6   ; 
- D 1 - I - 0x01750F 05:B4FF: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x017513 05:B503: 00        .byte $00, $00, $00, $00   ; 
; 6C 
- D 1 - I - 0x017517 05:B507: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01751B 05:B50B: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01751F 05:B50F: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x017523 05:B513: 89        .byte $89, $8A, $8B, $7E   ; 
; 6D 
- D 1 - I - 0x017527 05:B517: 21        .byte $21, $73, $22, $74   ; 
- D 1 - I - 0x01752B 05:B51B: 75        .byte $75, $76, $77, $78   ; 
- D 1 - I - 0x01752F 05:B51F: 23        .byte $23, $79, $24, $7A   ; 
- D 1 - I - 0x017533 05:B523: 7B        .byte $7B, $7C, $7D, $7E   ; 
; 6E 
- D 1 - I - 0x017537 05:B527: 21        .byte $21, $73, $22, $74   ; 
- D 1 - I - 0x01753B 05:B52B: 75        .byte $75, $81, $82, $78   ; 
- D 1 - I - 0x01753F 05:B52F: 83        .byte $83, $84, $85, $7A   ; 
- D 1 - I - 0x017543 05:B533: 86        .byte $86, $87, $88, $7E   ; 
; 6F 
- D 1 - I - 0x017547 05:B537: 2D        .byte $2D, $48, $2F, $00   ; 
- D 1 - I - 0x01754B 05:B53B: 29        .byte $29, $3D, $34, $00   ; 
- D 1 - I - 0x01754F 05:B53F: 40        .byte $40, $DB, $42, $DB   ; 
- D 1 - I - 0x017553 05:B543: B4        .byte $B4, $DD, $DC, $DD   ; 
; 70 
- D 1 - I - 0x017557 05:B547: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01755B 05:B54B: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01755F 05:B54F: 00        .byte $00, $00, $34, $54   ; 
- D 1 - I - 0x017563 05:B553: 00        .byte $00, $00, $35, $49   ; 
; 71 
- D 1 - I - 0x017567 05:B557: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01756B 05:B55B: 33        .byte $33, $00, $34, $54   ; 
- D 1 - I - 0x01756F 05:B55F: 36        .byte $36, $56, $35, $55   ; 
- D 1 - I - 0x017573 05:B563: 57        .byte $57, $58, $4C, $5A   ; 
; 72 
- D 1 - I - 0x017577 05:B567: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01757B 05:B56B: 4F        .byte $4F, $52, $00, $00   ; 
- D 1 - I - 0x01757F 05:B56F: 33        .byte $33, $00, $34, $54   ; 
- D 1 - I - 0x017583 05:B573: 32        .byte $32, $47, $35, $49   ; 
; 73 
- D 1 - I - 0x017587 05:B577: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01758B 05:B57B: 33        .byte $33, $00, $00, $00   ; 
- D 1 - I - 0x01758F 05:B57F: 36        .byte $36, $56, $35, $00   ; 
- D 1 - I - 0x017593 05:B583: 57        .byte $57, $58, $4C, $00   ; 
; 74 
- D 1 - I - 0x017597 05:B587: 00        .byte $00, $54, $2F, $47   ; 
- D 1 - I - 0x01759B 05:B58B: 00        .byte $00, $55, $2D, $48   ; 
- D 1 - I - 0x01759F 05:B58F: 00        .byte $00, $56, $2E, $49   ; 
- D 1 - I - 0x0175A3 05:B593: 00        .byte $00, $00, $59, $4D   ; 
; 75 
- D 1 - I - 0x0175A7 05:B597: 2B        .byte $2B, $3F, $2C, $44   ; 
- D 1 - I - 0x0175AB 05:B59B: 38        .byte $38, $39, $3A, $3B   ; 
- D 1 - I - 0x0175AF 05:B59F: 27        .byte $27, $37, $28, $3C   ; 
- D 1 - I - 0x0175B3 05:B5A3: 46        .byte $46, $47, $2E, $3D   ; 
; 76 
- D 1 - I - 0x0175B7 05:B5A7: 2D        .byte $2D, $48, $2F, $47   ; 
- D 1 - I - 0x0175BB 05:B5AB: 29        .byte $29, $3D, $28, $3C   ; 
- D 1 - I - 0x0175BF 05:B5AF: 2A        .byte $2A, $3B, $29, $3D   ; 
- D 1 - I - 0x0175C3 05:B5B3: 4A        .byte $4A, $4B, $3E, $4D   ; 
; 77 
- D 1 - I - 0x0175C7 05:B5B7: 2B        .byte $2B, $4E, $31, $00   ; 
- D 1 - I - 0x0175CB 05:B5BB: 45        .byte $45, $52, $32, $00   ; 
- D 1 - I - 0x0175CF 05:B5BF: 2C        .byte $2C, $00, $34, $00   ; 
- D 1 - I - 0x0175D3 05:B5C3: 46        .byte $46, $53, $35, $00   ; 
; 78 
- D 1 - I - 0x0175D7 05:B5C7: 00        .byte $00, $4E, $31, $44   ; 
- D 1 - I - 0x0175DB 05:B5CB: 00        .byte $00, $52, $32, $53   ; 
- D 1 - I - 0x0175DF 05:B5CF: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x0175E3 05:B5D3: 00        .byte $00, $00, $00, $00   ; 
; 79 
- D 1 - I - 0x0175E7 05:B5D7: 34        .byte $34, $54, $2F, $53   ; 
- D 1 - I - 0x0175EB 05:B5DB: 35        .byte $35, $55, $34, $54   ; 
- D 1 - I - 0x0175EF 05:B5DF: 36        .byte $36, $56, $35, $55   ; 
- D 1 - I - 0x0175F3 05:B5E3: 00        .byte $00, $00, $00, $00   ; 
; 7A 
- D 1 - I - 0x0175F7 05:B5E7: 2B        .byte $2B, $4E, $2C, $44   ; 
- D 1 - I - 0x0175FB 05:B5EB: 4F        .byte $4F, $52, $32, $53   ; 
- D 1 - I - 0x0175FF 05:B5EF: 33        .byte $33, $00, $00, $00   ; 
- D 1 - I - 0x017603 05:B5F3: 00        .byte $00, $00, $00, $00   ; 
; 7B 
- D 1 - I - 0x017607 05:B5F7: 34        .byte $34, $54, $00, $00   ; 
- D 1 - I - 0x01760B 05:B5FB: 35        .byte $35, $55, $00, $00   ; 
- D 1 - I - 0x01760F 05:B5FF: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x017613 05:B603: 00        .byte $00, $00, $00, $00   ; 
; 7C 
- D 1 - I - 0x017617 05:B607: 30        .byte $30, $4E, $31, $00   ; 
- D 1 - I - 0x01761B 05:B60B: 4F        .byte $4F, $52, $32, $53   ; 
- D 1 - I - 0x01761F 05:B60F: 33        .byte $33, $00, $34, $54   ; 
- D 1 - I - 0x017623 05:B613: 32        .byte $32, $53, $35, $55   ; 
; 7D 
- D 1 - I - 0x017627 05:B617: 34        .byte $34, $54, $32, $53   ; 
- D 1 - I - 0x01762B 05:B61B: 35        .byte $35, $55, $34, $54   ; 
- D 1 - I - 0x01762F 05:B61F: 36        .byte $36, $56, $35, $55   ; 
- D 1 - I - 0x017633 05:B623: 57        .byte $57, $58, $59, $5A   ; 
; 7E 
- D 1 - I - 0x017637 05:B627: 34        .byte $34, $54, $2F, $53   ; 
- D 1 - I - 0x01763B 05:B62B: 35        .byte $35, $55, $34, $54   ; 
- D 1 - I - 0x01763F 05:B62F: 68        .byte $68, $C0, $00, $00   ; 
- D 1 - I - 0x017643 05:B633: 65        .byte $65, $BE, $68, $C0   ; 
; 7F 
- D 1 - I - 0x017647 05:B637: 30        .byte $30, $4E, $31, $00   ; 
- D 1 - I - 0x01764B 05:B63B: 4F        .byte $4F, $52, $32, $53   ; 
- D 1 - I - 0x01764F 05:B63F: 01        .byte $01, $EA, $01, $EA   ; 
- D 1 - I - 0x017653 05:B643: EB        .byte $EB, $EC, $EB, $EC   ; 
; 80 
- D 1 - I - 0x017657 05:B647: 00        .byte $00, $00, $40, $DB   ; 
- D 1 - I - 0x01765B 05:B64B: 00        .byte $00, $00, $B4, $DD   ; 
- D 1 - I - 0x01765F 05:B64F: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x017663 05:B653: 00        .byte $00, $00, $00, $00   ; 
; 81 
- D 1 - I - 0x017667 05:B657: 00        .byte $00, $00, $01, $EA   ; 
- D 1 - I - 0x01766B 05:B65B: 00        .byte $00, $00, $EB, $EC   ; 
- - - - - - 0x01766F 05:B65F: 00        .byte $00, $00, $02, $DE   ; 
- - - - - - 0x017673 05:B663: 00        .byte $00, $00, $00, $DF   ; 
; 82 
- D 1 - I - 0x017677 05:B667: 42        .byte $42, $41, $42, $41   ; 
- D 1 - I - 0x01767B 05:B66B: DC        .byte $DC, $DD, $DC, $DD   ; 
- D 1 - I - 0x01767F 05:B66F: 8B        .byte $8B, $D2, $89, $BC   ; 
- D 1 - I - 0x017683 05:B673: B0        .byte $B0, $C1, $BE, $AB   ; 
; 83 
- D 1 - I - 0x017687 05:B677: 42        .byte $42, $41, $42, $41   ; 
- D 1 - I - 0x01768B 05:B67B: DC        .byte $DC, $DD, $DC, $DD   ; 
- D 1 - I - 0x01768F 05:B67F: 85        .byte $85, $D3, $5D, $C6   ; 
- D 1 - I - 0x017693 05:B683: D5        .byte $D5, $62, $5D, $C6   ; 
; 84 
- D 1 - I - 0x017697 05:B687: 42        .byte $42, $41, $42, $B5   ; 
- D 1 - I - 0x01769B 05:B68B: DC        .byte $DC, $DD, $DC, $B6   ; 
- D 1 - I - 0x01769F 05:B68F: 8B        .byte $8B, $D2, $89, $BC   ; 
- D 1 - I - 0x0176A3 05:B693: B0        .byte $B0, $C1, $BE, $AB   ; 
; 85 
- D 1 - I - 0x0176A7 05:B697: 40        .byte $40, $41, $42, $B5   ; 
- D 1 - I - 0x0176AB 05:B69B: B4        .byte $B4, $DD, $DC, $B6   ; 
- D 1 - I - 0x0176AF 05:B69F: 85        .byte $85, $D3, $5D, $C6   ; 
- D 1 - I - 0x0176B3 05:B6A3: D5        .byte $D5, $62, $5D, $C6   ; 
; 86 
- D 1 - I - 0x0176B7 05:B6A7: 00        .byte $00, $00, $40, $41   ; 
- D 1 - I - 0x0176BB 05:B6AB: 00        .byte $00, $00, $B4, $DD   ; 
- D 1 - I - 0x0176BF 05:B6AF: 00        .byte $00, $00, $61, $B8   ; 
- D 1 - I - 0x0176C3 05:B6B3: 00        .byte $00, $00, $E0, $8B   ; 
; 87 
- D 1 - I - 0x0176C7 05:B6B7: 00        .byte $00, $00, $8B, $B0   ; 
- D 1 - I - 0x0176CB 05:B6BB: 00        .byte $00, $00, $B0, $88   ; 
- - - - - - 0x0176CF 05:B6BF: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x0176D3 05:B6C3: 00        .byte $00, $00, $00, $00   ; 
; 88 
- D 1 - I - 0x0176D7 05:B6C7: 50        .byte $50, $00, $5F, $DA   ; 
- D 1 - I - 0x0176DB 05:B6CB: 00        .byte $00, $5B, $D9, $DE   ; 
- D 1 - I - 0x0176DF 05:B6CF: 5B        .byte $5B, $B8, $8C, $B1   ; 
- D 1 - I - 0x0176E3 05:B6D3: B8        .byte $B8, $8B, $B0, $88   ; 
; 89 
- D 1 - I - 0x0176E7 05:B6D7: 8B        .byte $8B, $D2, $89, $BC   ; 
- D 1 - I - 0x0176EB 05:B6DB: B0        .byte $B0, $C1, $BE, $AB   ; 
- D 1 - I - 0x0176EF 05:B6DF: 88        .byte $88, $BC, $51, $D6   ; 
- D 1 - I - 0x0176F3 05:B6E3: BE        .byte $BE, $50, $D7, $D8   ; 
; 8A 
- D 1 - I - 0x0176F7 05:B6E7: 85        .byte $85, $D3, $5D, $C6   ; 
- D 1 - I - 0x0176FB 05:B6EB: D5        .byte $D5, $62, $5D, $C6   ; 
- D 1 - I - 0x0176FF 05:B6EF: 60        .byte $60, $B3, $5D, $C6   ; 
- D 1 - I - 0x017703 05:B6F3: B9        .byte $B9, $8B, $C3, $C7   ; 
; 8B 
- D 1 - I - 0x017707 05:B6F7: 8B        .byte $8B, $D2, $89, $BC   ; 
- D 1 - I - 0x01770B 05:B6FB: B0        .byte $B0, $C1, $BE, $AB   ; 
- D 1 - I - 0x01770F 05:B6FF: 88        .byte $88, $BC, $51, $D6   ; 
- D 1 - I - 0x017713 05:B703: BD        .byte $BD, $50, $D7, $D8   ; 
; 8C 
- D 1 - I - 0x017717 05:B707: 8B        .byte $8B, $B0, $88, $BC   ; 
- D 1 - I - 0x01771B 05:B70B: B0        .byte $B0, $88, $BE, $82   ; 
- D 1 - I - 0x01771F 05:B70F: 88        .byte $88, $BC, $84, $E1   ; 
- D 1 - I - 0x017723 05:B713: BD        .byte $BD, $AD, $E2, $E3   ; 
; 8D 
- D 1 - I - 0x017727 05:B717: 85        .byte $85, $D3, $61, $B8   ; 
- D 1 - I - 0x01772B 05:B71B: D5        .byte $D5, $62, $E0, $8B   ; 
- D 1 - I - 0x01772F 05:B71F: 5E        .byte $5E, $D3, $8B, $B0   ; 
- D 1 - I - 0x017733 05:B723: D5        .byte $D5, $62, $B0, $88   ; 
; 8E 
- D 1 - I - 0x017737 05:B727: 8B        .byte $8B, $B0, $88, $BC   ; 
- D 1 - I - 0x01773B 05:B72B: B0        .byte $B0, $88, $BE, $82   ; 
- D 1 - I - 0x01773F 05:B72F: 88        .byte $88, $BC, $84, $E1   ; 
- D 1 - I - 0x017743 05:B733: BE        .byte $BE, $AD, $E2, $E3   ; 
; 8F 
- D 1 - I - 0x017747 05:B737: 5E        .byte $5E, $B0, $88, $C8   ; 
- D 1 - I - 0x01774B 05:B73B: CE        .byte $CE, $88, $BE, $AF   ; 
- D 1 - I - 0x01774F 05:B73F: 88        .byte $88, $BC, $87, $C5   ; 
- D 1 - I - 0x017753 05:B743: BE        .byte $BE, $AC, $C2, $C4   ; 
; 90 
- D 1 - I - 0x017757 05:B747: 8B        .byte $8B, $B0, $88, $C8   ; 
- D 1 - I - 0x01775B 05:B74B: B0        .byte $B0, $88, $BE, $AF   ; 
- D 1 - I - 0x01775F 05:B74F: 88        .byte $88, $BC, $50, $00   ; 
- D 1 - I - 0x017763 05:B753: BE        .byte $BE, $83, $DF, $5B   ; 
; 91 
- D 1 - I - 0x017767 05:B757: 8B        .byte $8B, $B0, $88, $C8   ; 
- D 1 - I - 0x01776B 05:B75B: B0        .byte $B0, $88, $BE, $AE   ; 
- D 1 - I - 0x01776F 05:B75F: 88        .byte $88, $BC, $50, $00   ; 
- D 1 - I - 0x017773 05:B763: BE        .byte $BE, $83, $DF, $5B   ; 
; 92 
- D 1 - I - 0x017777 05:B767: 5E        .byte $5E, $B0, $88, $BC   ; 
- D 1 - I - 0x01777B 05:B76B: CE        .byte $CE, $88, $BE, $AE   ; 
- D 1 - I - 0x01777F 05:B76F: 88        .byte $88, $BC, $87, $C5   ; 
- D 1 - I - 0x017783 05:B773: BE        .byte $BE, $AC, $C2, $C4   ; 
; 93 
- D 1 - I - 0x017787 05:B777: 85        .byte $85, $D4, $5C, $BA   ; 
- D 1 - I - 0x01778B 05:B77B: D5        .byte $D5, $62, $B7, $8B   ; 
- D 1 - I - 0x01778F 05:B77F: 5E        .byte $5E, $B8, $8B, $B0   ; 
- D 1 - I - 0x017793 05:B783: 00        .byte $00, $E7, $E8, $E9   ; 
; 94 
- D 1 - I - 0x017797 05:B787: 5E        .byte $5E, $B0, $88, $BC   ; 
- D 1 - I - 0x01779B 05:B78B: B0        .byte $B0, $88, $BE, $82   ; 
- D 1 - I - 0x01779F 05:B78F: 88        .byte $88, $BC, $84, $E1   ; 
- D 1 - I - 0x0177A3 05:B793: BF        .byte $BF, $50, $E4, $E3   ; 
; 95 
- D 1 - I - 0x0177A7 05:B797: 5E        .byte $5E, $B0, $88, $BC   ; 
- D 1 - I - 0x0177AB 05:B79B: B0        .byte $B0, $88, $BE, $85   ; 
- D 1 - I - 0x0177AF 05:B79F: 88        .byte $88, $BC, $82, $D5   ; 
- D 1 - I - 0x0177B3 05:B7A3: BF        .byte $BF, $50, $E5, $5E   ; 
; 96 
- D 1 - I - 0x0177B7 05:B7A7: 83        .byte $83, $DF, $5F, $DA   ; 
- D 1 - I - 0x0177BB 05:B7AB: D3        .byte $D3, $61, $D9, $DE   ; 
- D 1 - I - 0x0177BF 05:B7AF: 62        .byte $62, $E0, $8C, $B1   ; 
- D 1 - I - 0x0177C3 05:B7B3: E6        .byte $E6, $E7, $E8, $E9   ; 
; 97 
- D 1 - I - 0x0177C7 05:B7B7: 8B        .byte $8B, $B0, $88, $C8   ; 
- D 1 - I - 0x0177CB 05:B7BB: B2        .byte $B2, $88, $BE, $85   ; 
- D 1 - I - 0x0177CF 05:B7BF: 88        .byte $88, $BC, $82, $D5   ; 
- D 1 - I - 0x0177D3 05:B7C3: BF        .byte $BF, $50, $E5, $5E   ; 
; 98 
- D 1 - I - 0x0177D7 05:B7C7: 8B        .byte $8B, $B0, $88, $C8   ; 
- D 1 - I - 0x0177DB 05:B7CB: B0        .byte $B0, $88, $BE, $82   ; 
- D 1 - I - 0x0177DF 05:B7CF: 88        .byte $88, $BC, $84, $E1   ; 
- D 1 - I - 0x0177E3 05:B7D3: BF        .byte $BF, $50, $E4, $E3   ; 
; 99 
- D 1 - I - 0x0177E7 05:B7D7: 88        .byte $88, $BC, $51, $D6   ; 
- D 1 - I - 0x0177EB 05:B7DB: BD        .byte $BD, $50, $D7, $D8   ; 
- D 1 - I - 0x0177EF 05:B7DF: 50        .byte $50, $00, $5F, $DA   ; 
- D 1 - I - 0x0177F3 05:B7E3: 00        .byte $00, $5B, $D9, $DE   ; 
; 9A 
- D 1 - I - 0x0177F7 05:B7E7: 60        .byte $60, $B3, $5D, $C6   ; 
- D 1 - I - 0x0177FB 05:B7EB: B9        .byte $B9, $8B, $C3, $C7   ; 
- D 1 - I - 0x0177FF 05:B7EF: 8B        .byte $8B, $B0, $88, $C8   ; 
- D 1 - I - 0x017803 05:B7F3: B0        .byte $B0, $88, $BE, $AE   ; 
; 9B 
- D 1 - I - 0x017807 05:B7F7: 00        .byte $00, $00, $5C, $BA   ; 
- D 1 - I - 0x01780B 05:B7FB: 00        .byte $00, $00, $B7, $8B   ; 
- D 1 - I - 0x01780F 05:B7FF: 00        .byte $00, $00, $E7, $E8   ; 
- D 1 - I - 0x017813 05:B803: 00        .byte $00, $00, $00, $00   ; 
; 9C 
- D 1 - I - 0x017817 05:B807: 5E        .byte $5E, $B0, $88, $BC   ; 
- D 1 - I - 0x01781B 05:B80B: B0        .byte $B0, $88, $BE, $82   ; 
- D 1 - I - 0x01781F 05:B80F: E9        .byte $E9, $BD, $84, $E1   ; 
- D 1 - I - 0x017823 05:B813: 00        .byte $00, $00, $E4, $E3   ; 
; 9D 
- D 1 - I - 0x017827 05:B817: 85        .byte $85, $D3, $61, $B8   ; 
- D 1 - I - 0x01782B 05:B81B: D5        .byte $D5, $62, $E0, $8B   ; 
- D 1 - I - 0x01782F 05:B81F: 5E        .byte $5E, $B8, $8B, $B0   ; 
- D 1 - I - 0x017833 05:B823: 00        .byte $00, $E7, $E8, $E9   ; 
; 9E 
- D 1 - I - 0x017837 05:B827: 8B        .byte $8B, $B0, $88, $BC   ; 
- D 1 - I - 0x01783B 05:B82B: B0        .byte $B0, $88, $BE, $50   ; 
- D 1 - I - 0x01783F 05:B82F: 88        .byte $88, $BC, $15, $00   ; 
- D 1 - I - 0x017843 05:B833: BF        .byte $BF, $50, $00, $00   ; 
; 9F 
- D 1 - I - 0x017847 05:B837: 42        .byte $42, $41, $42, $B5   ; 
- D 1 - I - 0x01784B 05:B83B: B4        .byte $B4, $DD, $DC, $B6   ; 
- D 1 - I - 0x01784F 05:B83F: 85        .byte $85, $D3, $5D, $C6   ; 
- D 1 - I - 0x017853 05:B843: D5        .byte $D5, $62, $5D, $C6   ; 
; A0 
- D 1 - I - 0x017857 05:B847: 72        .byte $72, $67, $68, $67   ; 
- D 1 - I - 0x01785B 05:B84B: 6C        .byte $6C, $6E, $99, $99   ; 
- D 1 - I - 0x01785F 05:B84F: 00        .byte $00, $6C, $0F, $12   ; 
- D 1 - I - 0x017863 05:B853: 00        .byte $00, $00, $00, $00   ; 
; A1 
- D 1 - I - 0x017867 05:B857: 69        .byte $69, $67, $68, $69   ; 
- D 1 - I - 0x01786B 05:B85B: 72        .byte $72, $70, $66, $67   ; 
- D 1 - I - 0x01786F 05:B85F: 12        .byte $12, $72, $70, $71   ; 
- D 1 - I - 0x017873 05:B863: 00        .byte $00, $97, $9C, $99   ; 
; A2 
- D 1 - I - 0x017877 05:B867: 69        .byte $69, $B0, $88, $BC   ; 
- D 1 - I - 0x01787B 05:B86B: 66        .byte $66, $6B, $BE, $50   ; 
- D 1 - I - 0x01787F 05:B86F: 73        .byte $73, $94, $69, $00   ; 
- D 1 - I - 0x017883 05:B873: 6D        .byte $6D, $70, $94, $6B   ; 
; A3 
- D 1 - I - 0x017887 05:B877: 6C        .byte $6C, $6E, $75, $66   ; 
- D 1 - I - 0x01788B 05:B87B: 10        .byte $10, $6D, $70, $94   ; 
- D 1 - I - 0x01788F 05:B87F: 00        .byte $00, $10, $6E, $70   ; 
- D 1 - I - 0x017893 05:B883: 00        .byte $00, $00, $6C, $6F   ; 
; A4 
- D 1 - I - 0x017897 05:B887: 8B        .byte $8B, $D2, $89, $BC   ; 
- D 1 - I - 0x01789B 05:B88B: 69        .byte $69, $C0, $BE, $AB   ; 
- D 1 - I - 0x01789F 05:B88F: 66        .byte $66, $69, $51, $D6   ; 
- D 1 - I - 0x0178A3 05:B893: 70        .byte $70, $94, $D7, $D8   ; 
; A5 
- D 1 - I - 0x0178A7 05:B897: 00        .byte $00, $00, $10, $78   ; 
- D 1 - I - 0x0178AB 05:B89B: 00        .byte $00, $00, $00, $6D   ; 
- D 1 - I - 0x0178AF 05:B89F: 00        .byte $00, $00, $00, $6C   ; 
- D 1 - I - 0x0178B3 05:B8A3: 00        .byte $00, $00, $00, $95   ; 
; A6 
- D 1 - I - 0x0178B7 05:B8A7: 75        .byte $75, $66, $5F, $DA   ; 
- D 1 - I - 0x0178BB 05:B8AB: 70        .byte $70, $66, $D9, $DE   ; 
- D 1 - I - 0x0178BF 05:B8AF: 6F        .byte $6F, $94, $69, $B1   ; 
- D 1 - I - 0x0178C3 05:B8B3: 6D        .byte $6D, $70, $66, $88   ; 
; A7 
- D 1 - I - 0x0178C7 05:B8B7: 78        .byte $78, $75, $66, $6B   ; 
- D 1 - I - 0x0178CB 05:B8BB: 6D        .byte $6D, $70, $66, $69   ; 
- D 1 - I - 0x0178CF 05:B8BF: 10        .byte $10, $6E, $70, $6B   ; 
- D 1 - I - 0x0178D3 05:B8C3: 00        .byte $00, $6C, $6F, $66   ; 
; A8 
- D 1 - I - 0x0178D7 05:B8C7: 00        .byte $00, $95, $7C, $AA   ; 
- D 1 - I - 0x0178DB 05:B8CB: 00        .byte $00, $A9, $A7, $7E   ; 
- D 1 - I - 0x0178DF 05:B8CF: 77        .byte $77, $AA, $80, $A2   ; 
- D 1 - I - 0x0178E3 05:B8D3: 10        .byte $10, $A4, $AA, $7E   ; 
; A9 
- D 1 - I - 0x0178E7 05:B8D7: 00        .byte $00, $6C, $7D, $A2   ; 
- D 1 - I - 0x0178EB 05:B8DB: 00        .byte $00, $6C, $65, $67   ; 
- D 1 - I - 0x0178EF 05:B8DF: 00        .byte $00, $10, $6E, $66   ; 
- D 1 - I - 0x0178F3 05:B8E3: 00        .byte $00, $00, $6D, $94   ; 
; AA 
- D 1 - I - 0x0178F7 05:B8E7: 00        .byte $00, $91, $65, $93   ; 
- D 1 - I - 0x0178FB 05:B8EB: 90        .byte $90, $92, $93, $6B   ; 
- D 1 - I - 0x0178FF 05:B8EF: 64        .byte $64, $93, $66, $69   ; 
- D 1 - I - 0x017903 05:B8F3: 6F        .byte $6F, $94, $6B, $88   ; 
; AB 
- D 1 - I - 0x017907 05:B8F7: 6D        .byte $6D, $70, $66, $BC   ; 
- D 1 - I - 0x01790B 05:B8FB: 65        .byte $65, $70, $6B, $69   ; 
- - - - - - 0x01790F 05:B8FF: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x017913 05:B903: 00        .byte $00, $00, $00, $00   ; 
; AC 
- D 1 - I - 0x017917 05:B907: 6C        .byte $6C, $B0, $88, $BC   ; 
- D 1 - I - 0x01791B 05:B90B: 69        .byte $69, $69, $BE, $AE   ; 
- D 1 - I - 0x01791F 05:B90F: 69        .byte $69, $BC, $87, $C5   ; 
- D 1 - I - 0x017923 05:B913: 95        .byte $95, $AC, $C2, $C4   ; 
; AD 
- D 1 - I - 0x017927 05:B917: 85        .byte $85, $D3, $5D, $C6   ; 
- D 1 - I - 0x01792B 05:B91B: D5        .byte $D5, $62, $5D, $C6   ; 
- D 1 - I - 0x01792F 05:B91F: 60        .byte $60, $B3, $5D, $C6   ; 
- D 1 - I - 0x017933 05:B923: 6B        .byte $6B, $8B, $C3, $C7   ; 
; AE 
- D 1 - I - 0x017937 05:B927: 69        .byte $69, $B0, $88, $C8   ; 
- D 1 - I - 0x01793B 05:B92B: B0        .byte $B0, $88, $BE, $AF   ; 
- D 1 - I - 0x01793F 05:B92F: 88        .byte $88, $BC, $50, $00   ; 
- D 1 - I - 0x017943 05:B933: BE        .byte $BE, $83, $DF, $5B   ; 
; AF 
- D 1 - I - 0x017947 05:B937: 00        .byte $00, $00, $6D, $94   ; 
- D 1 - I - 0x01794B 05:B93B: 00        .byte $00, $00, $10, $6E   ; 
- D 1 - I - 0x01794F 05:B93F: 00        .byte $00, $00, $00, $97   ; 
- D 1 - I - 0x017953 05:B943: 00        .byte $00, $00, $00, $00   ; 
; B0 
- D 1 - I - 0x017957 05:B947: 5E        .byte $5E, $D3, $8B, $B0   ; 
- D 1 - I - 0x01795B 05:B94B: D5        .byte $D5, $62, $B0, $88   ; 
- D 1 - I - 0x01795F 05:B94F: 5E        .byte $5E, $B0, $88, $BC   ; 
- D 1 - I - 0x017963 05:B953: CE        .byte $CE, $88, $BE, $AE   ; 
; B1 
- D 1 - I - 0x017967 05:B957: 88        .byte $88, $BC, $84, $E1   ; 
- D 1 - I - 0x01796B 05:B95B: BD        .byte $BD, $AD, $E2, $E3   ; 
- D 1 - I - 0x01796F 05:B95F: 86        .byte $86, $C9, $8A, $BA   ; 
- D 1 - I - 0x017973 05:B963: CA        .byte $CA, $CB, $CC, $CD   ; 
; B2 
- D 1 - I - 0x017977 05:B967: 6A        .byte $6A, $BC, $87, $C5   ; 
- D 1 - I - 0x01797B 05:B96B: 69        .byte $69, $AC, $C2, $C4   ; 
- D 1 - I - 0x01797F 05:B96F: 7E        .byte $7E, $9B, $5D, $C6   ; 
- D 1 - I - 0x017983 05:B973: A2        .byte $A2, $5B, $5D, $C6   ; 
; B3 
- D 1 - I - 0x017987 05:B977: 5B        .byte $5B, $CF, $8B, $D0   ; 
- D 1 - I - 0x01798B 05:B97B: B8        .byte $B8, $D1, $B0, $C0   ; 
- D 1 - I - 0x01798F 05:B97F: 8B        .byte $8B, $D2, $88, $BC   ; 
- D 1 - I - 0x017993 05:B983: B0        .byte $B0, $C1, $BE, $50   ; 
; B4 
- D 1 - I - 0x017997 05:B987: 88        .byte $88, $BC, $87, $C5   ; 
- D 1 - I - 0x01799B 05:B98B: BE        .byte $BE, $AC, $C2, $C4   ; 
- D 1 - I - 0x01799F 05:B98F: 85        .byte $85, $D3, $5D, $C6   ; 
- D 1 - I - 0x0179A3 05:B993: D5        .byte $D5, $62, $5D, $C6   ; 
; B5 
- D 1 - I - 0x0179A7 05:B997: 69        .byte $69, $B3, $5D, $C6   ; 
- D 1 - I - 0x0179AB 05:B99B: B9        .byte $B9, $8B, $C3, $C7   ; 
- D 1 - I - 0x0179AF 05:B99F: 69        .byte $69, $B0, $88, $C8   ; 
- D 1 - I - 0x0179B3 05:B9A3: 6B        .byte $6B, $69, $BE, $AF   ; 
; B6 
- D 1 - I - 0x0179B7 05:B9A7: 88        .byte $88, $BC, $51, $D6   ; 
- D 1 - I - 0x0179BB 05:B9AB: BD        .byte $BD, $50, $D7, $D8   ; 
- D 1 - I - 0x0179BF 05:B9AF: 50        .byte $50, $5B, $5F, $DA   ; 
- D 1 - I - 0x0179C3 05:B9B3: 5B        .byte $5B, $68, $67, $69   ; 
; B7 
- D 1 - I - 0x0179C7 05:B9B7: 60        .byte $60, $B3, $5D, $C6   ; 
- D 1 - I - 0x0179CB 05:B9BB: B9        .byte $B9, $8B, $C3, $C7   ; 
- D 1 - I - 0x0179CF 05:B9BF: 8B        .byte $8B, $B0, $88, $C8   ; 
- D 1 - I - 0x0179D3 05:B9C3: E8        .byte $E8, $E9, $BF, $AF   ; 
; B8 
- D 1 - I - 0x0179D7 05:B9C7: 67        .byte $67, $66, $66, $66   ; 
- D 1 - I - 0x0179DB 05:B9CB: 71        .byte $71, $71, $99, $98   ; 
- D 1 - I - 0x0179DF 05:B9CF: 7A        .byte $7A, $13, $13, $9B   ; 
- D 1 - I - 0x0179E3 05:B9D3: 11        .byte $11, $00, $00, $00   ; 
; B9 
- D 1 - I - 0x0179E7 05:B9D7: 88        .byte $88, $BC, $6A, $67   ; 
- D 1 - I - 0x0179EB 05:B9DB: BE        .byte $BE, $6A, $66, $66   ; 
- D 1 - I - 0x0179EF 05:B9DF: 6A        .byte $6A, $67, $74, $71   ; 
- D 1 - I - 0x0179F3 05:B9E3: 66        .byte $66, $71, $A0, $9D   ; 
; BA 
- D 1 - I - 0x0179F7 05:B9E7: 88        .byte $88, $BC, $68, $6A   ; 
- D 1 - I - 0x0179FB 05:B9EB: BE        .byte $BE, $69, $6A, $71   ; 
- D 1 - I - 0x0179FF 05:B9EF: 85        .byte $85, $D3, $66, $71   ; 
- D 1 - I - 0x017A03 05:B9F3: D5        .byte $D5, $6A, $71, $7B   ; 
; BB 
- D 1 - I - 0x017A07 05:B9F7: 71        .byte $71, $A0, $13, $00   ; 
- D 1 - I - 0x017A0B 05:B9FB: 9D        .byte $9D, $11, $00, $00   ; 
- D 1 - I - 0x017A0F 05:B9FF: 11        .byte $11, $00, $00, $00   ; 
- D 1 - I - 0x017A13 05:BA03: 00        .byte $00, $00, $00, $00   ; 
; BC 
- D 1 - I - 0x017A17 05:BA07: 60        .byte $60, $6A, $76, $A1   ; 
- D 1 - I - 0x017A1B 05:BA0B: B9        .byte $B9, $66, $71, $96   ; 
- D 1 - I - 0x017A1F 05:BA0F: 6A        .byte $6A, $71, $7B, $A1   ; 
- D 1 - I - 0x017A23 05:BA13: 66        .byte $66, $71, $A0, $79   ; 
; BD 
- D 1 - I - 0x017A27 05:BA17: 67        .byte $67, $68, $66, $69   ; 
- D 1 - I - 0x017A2B 05:BA1B: 9A        .byte $9A, $98, $9A, $9D   ; 
- D 1 - I - 0x017A2F 05:BA1F: 13        .byte $13, $9B, $13, $11   ; 
- D 1 - I - 0x017A33 05:BA23: 00        .byte $00, $00, $00, $00   ; 
; BE 
- D 1 - I - 0x017A37 05:BA27: 79        .byte $79, $A3, $7F, $A3   ; 
- D 1 - I - 0x017A3B 05:BA2B: 9E        .byte $9E, $81, $A6, $81   ; 
- D 1 - I - 0x017A3F 05:BA2F: 00        .byte $00, $A8, $81, $A5   ; 
- D 1 - I - 0x017A43 05:BA33: 00        .byte $00, $00, $9F, $11   ; 
; BF 
- D 1 - I - 0x017A47 05:BA37: 7F        .byte $7F, $67, $66, $74   ; 
- D 1 - I - 0x017A4B 05:BA3B: A3        .byte $A3, $9D, $98, $9F   ; 
- D 1 - I - 0x017A4F 05:BA3F: 13        .byte $13, $14, $14, $11   ; 
- D 1 - I - 0x017A53 05:BA43: 00        .byte $00, $00, $00, $00   ; 
; C0 
- D 1 - I - 0x017A57 05:BA47: 88        .byte $88, $69, $6B, $69   ; 
- D 1 - I - 0x017A5B 05:BA4B: 67        .byte $67, $66, $66, $66   ; 
- D 1 - I - 0x017A5F 05:BA4F: 71        .byte $71, $70, $74, $71   ; 
- D 1 - I - 0x017A63 05:BA53: 9D        .byte $9D, $9C, $9F, $9F   ; 
; C1 
- D 1 - I - 0x017A67 05:BA57: 00        .byte $00, $00, $63, $91   ; 
- D 1 - I - 0x017A6B 05:BA5B: 00        .byte $00, $00, $90, $92   ; 
- D 1 - I - 0x017A6F 05:BA5F: 00        .byte $00, $00, $64, $93   ; 
- D 1 - I - 0x017A73 05:BA63: 00        .byte $00, $00, $6F, $94   ; 
; C2 
- D 1 - I - 0x017A77 05:BA67: 00        .byte $00, $00, $7C, $AA   ; 
- D 1 - I - 0x017A7B 05:BA6B: 00        .byte $00, $A9, $A7, $7E   ; 
- D 1 - I - 0x017A7F 05:BA6F: 77        .byte $77, $AA, $80, $A2   ; 
- D 1 - I - 0x017A83 05:BA73: 10        .byte $10, $A4, $AA, $7E   ; 
; C3 
- D 1 - I - 0x017A87 05:BA77: 8B        .byte $8B, $B0, $88, $C8   ; 
- D 1 - I - 0x017A8B 05:BA7B: B0        .byte $B0, $88, $BE, $AF   ; 
- D 1 - I - 0x017A8F 05:BA7F: 88        .byte $88, $BC, $87, $C5   ; 
- D 1 - I - 0x017A93 05:BA83: BE        .byte $BE, $83, $C2, $C4   ; 
; C4 
- D 1 - I - 0x017A97 05:BA87: 85        .byte $85, $D3, $5D, $C6   ; 
- D 1 - I - 0x017A9B 05:BA8B: D5        .byte $D5, $62, $5D, $C6   ; 
- D 1 - I - 0x017A9F 05:BA8F: 5E        .byte $5E, $D4, $5D, $C6   ; 
- D 1 - I - 0x017AA3 05:BA93: D5        .byte $D5, $62, $C3, $C7   ; 
; C5 
- D 1 - I - 0x017AA7 05:BA97: 8B        .byte $8B, $B0, $88, $BC   ; 
- D 1 - I - 0x017AAB 05:BA9B: B2        .byte $B2, $88, $BE, $82   ; 
- D 1 - I - 0x017AAF 05:BA9F: 88        .byte $88, $BC, $82, $E1   ; 
- D 1 - I - 0x017AB3 05:BAA3: BF        .byte $BF, $50, $00, $00   ; 
; C6 
- D 1 - I - 0x017AB7 05:BAA7: 5B        .byte $5B, $B8, $8C, $B1   ; 
- D 1 - I - 0x017ABB 05:BAAB: B8        .byte $B8, $8B, $B0, $88   ; 
- D 1 - I - 0x017ABF 05:BAAF: 8B        .byte $8B, $B0, $88, $BC   ; 
- D 1 - I - 0x017AC3 05:BAB3: B0        .byte $B0, $88, $BE, $82   ; 
; C7 
- D 1 - I - 0x017AC7 05:BAB7: 88        .byte $88, $BC, $50, $00   ; 
- D 1 - I - 0x017ACB 05:BABB: BE        .byte $BE, $83, $DF, $5B   ; 
- D 1 - I - 0x017ACF 05:BABF: 85        .byte $85, $D3, $61, $B8   ; 
- D 1 - I - 0x017AD3 05:BAC3: D5        .byte $D5, $62, $E0, $8B   ; 
; C8 
- D 1 - I - 0x017AD7 05:BAC7: 88        .byte $88, $BC, $84, $E1   ; 
- D 1 - I - 0x017ADB 05:BACB: BE        .byte $BE, $AD, $E2, $E3   ; 
- D 1 - I - 0x017ADF 05:BACF: 86        .byte $86, $C9, $8A, $BB   ; 
- D 1 - I - 0x017AE3 05:BAD3: CA        .byte $CA, $CB, $CC, $CD   ; 
; C9 
- D 1 - I - 0x017AE7 05:BAD7: 5E        .byte $5E, $D3, $8B, $B0   ; 
- D 1 - I - 0x017AEB 05:BADB: D5        .byte $D5, $62, $B0, $88   ; 
- D 1 - I - 0x017AEF 05:BADF: 5E        .byte $5E, $B0, $88, $BC   ; 
- D 1 - I - 0x017AF3 05:BAE3: CE        .byte $CE, $88, $BE, $50   ; 
; CA 
- D 1 - I - 0x017AF7 05:BAE7: 88        .byte $88, $BC, $51, $D6   ; 
- D 1 - I - 0x017AFB 05:BAEB: BE        .byte $BE, $50, $D7, $D8   ; 
- D 1 - I - 0x017AFF 05:BAEF: 50        .byte $50, $00, $5F, $DA   ; 
- D 1 - I - 0x017B03 05:BAF3: 00        .byte $00, $5B, $D9, $DE   ; 
; CB 
- D 1 - I - 0x017B07 05:BAF7: 60        .byte $60, $B3, $5D, $C6   ; 
- D 1 - I - 0x017B0B 05:BAFB: B9        .byte $B9, $8B, $C3, $C7   ; 
- D 1 - I - 0x017B0F 05:BAFF: 8B        .byte $8B, $B0, $88, $C8   ; 
- D 1 - I - 0x017B13 05:BB03: B0        .byte $B0, $88, $BE, $AF   ; 
; CC 
- D 1 - I - 0x017B17 05:BB07: 88        .byte $88, $BC, $84, $E1   ; 
- D 1 - I - 0x017B1B 05:BB0B: BD        .byte $BD, $50, $E4, $E3   ; 
- - - - - - 0x017B1F 05:BB0F: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x017B23 05:BB13: 00        .byte $00, $00, $00, $00   ; 
; CD 
- D 1 - I - 0x017B27 05:BB17: 86        .byte $86, $C9, $8A, $BB   ; 
- D 1 - I - 0x017B2B 05:BB1B: CA        .byte $CA, $CB, $CC, $CD   ; 
- D 1 - I - 0x017B2F 05:BB1F: 5B        .byte $5B, $CF, $8B, $D0   ; 
- D 1 - I - 0x017B33 05:BB23: B8        .byte $B8, $D1, $B0, $C0   ; 
; CE 
- D 1 - I - 0x017B37 05:BB27: 5E        .byte $5E, $B0, $88, $BC   ; 
- D 1 - I - 0x017B3B 05:BB2B: CE        .byte $CE, $88, $BE, $50   ; 
- D 1 - I - 0x017B3F 05:BB2F: 88        .byte $88, $BC, $87, $C5   ; 
- D 1 - I - 0x017B43 05:BB33: BE        .byte $BE, $AC, $C2, $C4   ; 
; CF 
- - - - - - 0x017B47 05:BB37: 9E        .byte $9E, $5C, $5D, $A1   ; 
- - - - - - 0x017B4B 05:BB3B: A2        .byte $A2, $6C, $6D, $A5   ; 
- - - - - - 0x017B4F 05:BB3F: A6        .byte $A6, $5E, $5F, $A9   ; 
- - - - - - 0x017B53 05:BB43: AA        .byte $AA, $6E, $6F, $AD   ; 
; D0 
- - - - - - 0x017B57 05:BB47: 42        .byte $42, $DB, $42, $DB   ; 
- - - - - - 0x017B5B 05:BB4B: DC        .byte $DC, $DD, $DC, $DD   ; 
- - - - - - 0x017B5F 05:BB4F: 9E        .byte $9E, $5C, $5D, $A1   ; 
- - - - - - 0x017B63 05:BB53: A2        .byte $A2, $6C, $6D, $A5   ; 
; D1 
- - - - - - 0x017B67 05:BB57: 00        .byte $00, $00, $64, $CC   ; 
- - - - - - 0x017B6B 05:BB5B: 64        .byte $64, $CC, $60, $CA   ; 
- - - - - - 0x017B6F 05:BB5F: 60        .byte $60, $CA, $62, $CF   ; 
- - - - - - 0x017B73 05:BB63: 8F        .byte $8F, $5C, $5D, $A1   ; 
; D2 
- - - - - - 0x017B77 05:BB67: 68        .byte $68, $C0, $00, $00   ; 
- - - - - - 0x017B7B 05:BB6B: 65        .byte $65, $BE, $68, $C0   ; 
- - - - - - 0x017B7F 05:BB6F: 66        .byte $66, $BF, $65, $BE   ; 
- - - - - - 0x017B83 05:BB73: 9E        .byte $9E, $5C, $5D, $8D   ; 
; D3 
- - - - - - 0x017B87 05:BB77: A2        .byte $A2, $6C, $6D, $A5   ; 
- - - - - - 0x017B8B 05:BB7B: A6        .byte $A6, $5E, $5F, $A9   ; 
- - - - - - 0x017B8F 05:BB7F: 18        .byte $18, $E7, $17, $C9   ; 
- - - - - - 0x017B93 05:BB83: D5        .byte $D5, $02, $18, $BF   ; 
; D4 
- - - - - - 0x017B97 05:BB87: A6        .byte $A6, $5E, $5F, $A9   ; 
- - - - - - 0x017B9B 05:BB8B: AA        .byte $AA, $6E, $6F, $AD   ; 
- - - - - - 0x017B9F 05:BB8F: 02        .byte $02, $DE, $03, $02   ; 
- - - - - - 0x017BA3 05:BB93: 00        .byte $00, $DF, $E0, $00   ; 
; D5 
- - - - - - 0x017BA7 05:BB97: A2        .byte $A2, $6C, $6D, $A5   ; 
- - - - - - 0x017BAB 05:BB9B: A6        .byte $A6, $5E, $5F, $A9   ; 
- - - - - - 0x017BAF 05:BB9F: 16        .byte $16, $6E, $6F, $D4   ; 
- - - - - - 0x017BB3 05:BBA3: 15        .byte $15, $D4, $02, $D5   ; 
; D6 
- D 1 - I - 0x017BB7 05:BBA7: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x017BBB 05:BBAB: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x017BBF 05:BBAF: 00        .byte $00, $00, $00, $0C   ; 
- D 1 - I - 0x017BC3 05:BBB3: 00        .byte $00, $00, $00, $15   ; 
; D7 
- D 1 - I - 0x017BC7 05:BBB7: 01        .byte $01, $02, $03, $04   ; 
- D 1 - I - 0x017BCB 05:BBBB: 07        .byte $07, $08, $09, $09   ; 
- D 1 - I - 0x017BCF 05:BBBF: 0D        .byte $0D, $0E, $0F, $10   ; 
- D 1 - I - 0x017BD3 05:BBC3: 16        .byte $16, $17, $18, $19   ; 
; D8 
- D 1 - I - 0x017BD7 05:BBC7: 05        .byte $05, $06, $00, $00   ; 
- D 1 - I - 0x017BDB 05:BBCB: 09        .byte $09, $0A, $0B, $00   ; 
- D 1 - I - 0x017BDF 05:BBCF: 11        .byte $11, $12, $13, $14   ; 
- D 1 - I - 0x017BE3 05:BBD3: 1A        .byte $1A, $1B, $1C, $1D   ; 
; D9 
- D 1 - I - 0x017BE7 05:BBD7: 00        .byte $00, $00, $00, $1E   ; 
- D 1 - I - 0x017BEB 05:BBDB: 00        .byte $00, $00, $27, $28   ; 
- D 1 - I - 0x017BEF 05:BBDF: 00        .byte $00, $31, $32, $33   ; 
- D 1 - I - 0x017BF3 05:BBE3: 00        .byte $00, $3C, $3D, $3E   ; 
; DA 
- D 1 - I - 0x017BF7 05:BBE7: 1F        .byte $1F, $20, $21, $22   ; 
- D 1 - I - 0x017BFB 05:BBEB: 29        .byte $29, $2A, $2B, $2C   ; 
- D 1 - I - 0x017BFF 05:BBEF: 34        .byte $34, $35, $36, $37   ; 
- D 1 - I - 0x017C03 05:BBF3: 3F        .byte $3F, $40, $41, $42   ; 
; DB 
- D 1 - I - 0x017C07 05:BBF7: 23        .byte $23, $24, $25, $26   ; 
- D 1 - I - 0x017C0B 05:BBFB: 2D        .byte $2D, $2E, $2F, $30   ; 
- D 1 - I - 0x017C0F 05:BBFF: 38        .byte $38, $39, $3A, $3B   ; 
- D 1 - I - 0x017C13 05:BC03: 43        .byte $43, $44, $45, $46   ; 
; DC 
- D 1 - I - 0x017C17 05:BC07: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x017C1B 05:BC0B: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x017C1F 05:BC0F: 00        .byte $00, $00, $5E, $5F   ; 
- D 1 - I - 0x017C23 05:BC13: 6C        .byte $6C, $6D, $6E, $6F   ; 
; DD 
- D 1 - I - 0x017C27 05:BC17: 00        .byte $00, $47, $48, $49   ; 
- D 1 - I - 0x017C2B 05:BC1B: 52        .byte $52, $53, $54, $55   ; 
- D 1 - I - 0x017C2F 05:BC1F: 60        .byte $60, $61, $62, $63   ; 
- D 1 - I - 0x017C33 05:BC23: 70        .byte $70, $71, $72, $73   ; 
; DE 
- D 1 - I - 0x017C37 05:BC27: 4A        .byte $4A, $4B, $4C, $4D   ; 
- D 1 - I - 0x017C3B 05:BC2B: 56        .byte $56, $57, $58, $59   ; 
- D 1 - I - 0x017C3F 05:BC2F: 64        .byte $64, $65, $66, $67   ; 
- D 1 - I - 0x017C43 05:BC33: 74        .byte $74, $75, $76, $77   ; 
; DF 
- D 1 - I - 0x017C47 05:BC37: 4E        .byte $4E, $4F, $50, $51   ; 
- D 1 - I - 0x017C4B 05:BC3B: 5A        .byte $5A, $5B, $5C, $5D   ; 
- D 1 - I - 0x017C4F 05:BC3F: 68        .byte $68, $69, $6A, $6B   ; 
- D 1 - I - 0x017C53 05:BC43: 78        .byte $78, $79, $7A, $7B   ; 
; E0 
- D 1 - I - 0x017C57 05:BC47: 00        .byte $00, $00, $00, $7C   ; 
- D 1 - I - 0x017C5B 05:BC4B: 00        .byte $00, $00, $00, $8D   ; 
- D 1 - I - 0x017C5F 05:BC4F: 00        .byte $00, $00, $9D, $9E   ; 
- D 1 - I - 0x017C63 05:BC53: 00        .byte $00, $00, $AC, $AD   ; 
; E1 
- D 1 - I - 0x017C67 05:BC57: 7D        .byte $7D, $7E, $7F, $80   ; 
- D 1 - I - 0x017C6B 05:BC5B: 8E        .byte $8E, $00, $8F, $90   ; 
- D 1 - I - 0x017C6F 05:BC5F: 00        .byte $00, $00, $9F, $A0   ; 
- D 1 - I - 0x017C73 05:BC63: 00        .byte $00, $00, $AE, $00   ; 
; E2 
- D 1 - I - 0x017C77 05:BC67: 81        .byte $81, $82, $83, $84   ; 
- D 1 - I - 0x017C7B 05:BC6B: 91        .byte $91, $92, $93, $94   ; 
- D 1 - I - 0x017C7F 05:BC6F: A1        .byte $A1, $A2, $A3, $00   ; 
- D 1 - I - 0x017C83 05:BC73: AF        .byte $AF, $00, $B0, $00   ; 
; E3 
- D 1 - I - 0x017C87 05:BC77: 85        .byte $85, $86, $87, $88   ; 
- D 1 - I - 0x017C8B 05:BC7B: 95        .byte $95, $96, $97, $98   ; 
- D 1 - I - 0x017C8F 05:BC7F: A4        .byte $A4, $A5, $A6, $A7   ; 
- D 1 - I - 0x017C93 05:BC83: B1        .byte $B1, $B2, $B3, $B4   ; 
; E4 
- D 1 - I - 0x017C97 05:BC87: 89        .byte $89, $8A, $8B, $8C   ; 
- D 1 - I - 0x017C9B 05:BC8B: 99        .byte $99, $9A, $9B, $9C   ; 
- D 1 - I - 0x017C9F 05:BC8F: A8        .byte $A8, $A9, $AA, $AB   ; 
- D 1 - I - 0x017CA3 05:BC93: B5        .byte $B5, $B6, $B7, $B8   ; 
; E5 
- - - - - - 0x017CA7 05:BC97: 85        .byte $85, $00, $BB, $88   ; 
- - - - - - 0x017CAB 05:BC9B: BC        .byte $BC, $BD, $BE, $BF   ; 
- - - - - - 0x017CAF 05:BC9F: C0        .byte $C0, $C1, $C2, $C3   ; 
- - - - - - 0x017CB3 05:BCA3: C4        .byte $C4, $C5, $B3, $B4   ; 



_off007_0x017CB7_07_area_8:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 1 - I - 0x017CB7 05:BCA7: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 00
- D 1 - I - 0x017CC7 05:BCB7: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 10
- D 1 - I - 0x017CD7 05:BCC7: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $10   ; 20
- D 1 - I - 0x017CE7 05:BCD7: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 30
- - - - - - 0x017CF7 05:BCE7: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 40
- D 1 - I - 0x017D07 05:BCF7: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 50
- D 1 - I - 0x017D17 05:BD07: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $05   ; 60
- D 1 - I - 0x017D27 05:BD17: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $05, $05   ; 70
- D 1 - I - 0x017D37 05:BD27: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 80
- D 1 - I - 0x017D47 05:BD37: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 90
- D 1 - I - 0x017D57 05:BD47: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; A0
- D 1 - I - 0x017D67 05:BD57: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; B0
- D 1 - I - 0x017D77 05:BD67: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; C0
- - - - - - 0x017D87 05:BD77: 00        .byte $00, $00, $00, $00, $00, $00, $80, $AA, $AA, $A8, $AA, $AA, $A0, $AA, $AA, $AA   ; D0
- D 1 - I - 0x017D97 05:BD87: 88        .byte $88, $8A, $AA, $AA, $AA, $AA                                                     ; E0


; bzk garbage
- - - - - - 0x017D9D 05:BD8D: 55        .byte $55   ; 
- - - - - - 0x017D9E 05:BD8E: 55        .byte $55   ; 
- - - - - - 0x017D9F 05:BD8F: 55        .byte $55   ; 
- - - - - - 0x017DA0 05:BD90: 55        .byte $55   ; 
- - - - - - 0x017DA1 05:BD91: 55        .byte $55   ; 
- - - - - - 0x017DA2 05:BD92: 55        .byte $55   ; 
- - - - - - 0x017DA3 05:BD93: 55        .byte $55   ; 
- - - - - - 0x017DA4 05:BD94: 55        .byte $55   ; 
- - - - - - 0x017DA5 05:BD95: 55        .byte $55   ; 
- - - - - - 0x017DA6 05:BD96: 55        .byte $55   ; 


; bzk garbage
- - - - - - 0x017DA7 05:BD97: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017DB0 05:BDA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017DC0 05:BDB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017DD0 05:BDC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017DE0 05:BDD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017DF0 05:BDE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017E00 05:BDF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017E10 05:BE00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017E20 05:BE10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017E30 05:BE20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017E40 05:BE30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017E50 05:BE40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017E60 05:BE50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017E70 05:BE60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017E80 05:BE70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017E90 05:BE80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017EA0 05:BE90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017EB0 05:BEA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017EC0 05:BEB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017ED0 05:BEC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017EE0 05:BED0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017EF0 05:BEE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017F00 05:BEF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017F10 05:BF00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017F20 05:BF10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017F30 05:BF20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017F40 05:BF30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017F50 05:BF40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017F60 05:BF50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017F70 05:BF60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017F80 05:BF70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017F90 05:BF80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017FA0 05:BF90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017FB0 05:BFA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017FC0 05:BFB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017FD0 05:BFC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017FE0 05:BFD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017FF0 05:BFE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x018000 05:BFF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



.out .sprintf("Free bytes in bank 3A: 0x%04X [%d]", ($BFFF - *), ($BFFF - *))



.segment "BANK_3Ab"
- - - - - - 0x01800F 05:BFFF: 3B        .byte con_prg_bank + $3B   ; 



