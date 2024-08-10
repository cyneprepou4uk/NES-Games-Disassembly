.segment "BANK_38"
.include "bank_ram.inc"
.include "bank_val.inc"
.org $8000 ; for listing file
; 0x010010-0x01400F



.export _off001_0x010011_2F_falling_rock
.export _off001_0x0100BD_32_cannon_hidden_5_2
.export _off001_0x010187_33_bullet_cannon_32
.export _off001_0x0101C2_34_flying_rifleman
.export _off001_0x010276_58_spawner_container_normal_mobs
.export _off001_0x01030C_5A_boss_5_skull
.export _off001_0x0103B9_35_boss_5_red_spiked_ball
.export _off001_0x01043B_59_boss_5_body
.export _off001_0x010881_5D_giant_mouth
.export _off001_0x010B24_5E_spawner_giant_mouths
.export _off001_0x010C55_5F_red_skull_head
.export _off001_0x010ED2_24_blue_spider
.export _off001_0x0111B7_60_big_red_spiked_ball
.export _off001_0x0112FC_61_boss_6_big_red_spiked_ball
.export _off001_0x0113B2_70_boss_6_hole
.export _off001_0x0113DA_71_chr_banks_changer
.export _off001_0x011424_65_boss_6_phase_2
.export _off001_0x011802_68_boss_6_big_bullet
.export _off001_0x011838_64_boss_6_phase_1
.export _off001_0x011B42_66_boss_6_snake
.export _off004_0x011DF1_04_area_5
.export _off005_0x011E32_04_area_5
.export _off006_0x0122D6_04_area_5
.export _off007_0x012C96_04_area_5
.export _off004_0x012D36_05_area_6
.export _off005_0x012D52_05_area_6
.export _off006_0x01306A_05_area_6
.export _off007_0x01399A_05_area_6



; bzk this byte must be placed at 8000
- D 0 - - - 0x010010 04:8000: 38        .byte con_prg_bank + $38   ; 



_off001_0x010011_2F_falling_rock:
- D 0 - I - 0x010011 04:8001: 0B 80     .word ofs_038_2F_800B_01_initialize_object ; 
- D 0 - I - 0x010013 04:8003: 22 80     .word ofs_038_2F_8022_02 ; 
- D 0 - I - 0x010015 04:8005: 9A A2     .word ofs_038_2F_0x0062AA_03 ; 
- D 0 - I - 0x010017 04:8007: FD A2     .word ofs_038_2F_0x00630D_04 ; 
- D 0 - I - 0x010019 04:8009: 3D A3     .word ofs_038_2F_0x00634D_05_delete_object_04 ; 



ofs_038_2F_800B_01_initialize_object:
; area 5 falling rock
; area 8 mouth which shooting red stars
C - - J - - 0x01001B 04:800B: A9 05     LDA #$05
C - - - - - 0x01001D 04:800D: A0 06     LDY #$06
C - - - - - 0x01001F 04:800F: 20 9B AB  JSR sub_0x006BAB_set_dynamic_hp_to_obj
C - - - - - 0x010022 04:8012: A9 03     LDA #$03
C - - - - - 0x010024 04:8014: 9D 56 05  STA ram_attr_spr_enemy,X
C - - - - - 0x010027 04:8017: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x01002A 04:801A: A0 08     LDY #con_0x006C32_08
C - - - - - 0x01002C 04:801C: 20 FD AB  JSR sub_0x006C0D
C - - - - - 0x01002F 04:801F: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_2F_8022_02:
C - - J - - 0x010032 04:8022: BD CA 06  LDA ram_spd_X_hi_obj,X
C - - - - - 0x010035 04:8025: 1D BC 06  ORA ram_spd_X_lo_obj,X
C - - - - - 0x010038 04:8028: F0 0B     BEQ bra_8035_not_moving_X
; if moving along X axis
C - - - - - 0x01003A 04:802A: A0 08     LDY #con_0x006C32_08
C - - - - - 0x01003C 04:802C: BD CA 06  LDA ram_spd_X_hi_obj,X
C - - - - - 0x01003F 04:802F: 30 01     BMI bra_8032
C - - - - - 0x010041 04:8031: C8        INY ; con_0x006C32_09
bra_8032:
C - - - - - 0x010042 04:8032: 20 FD AB  JSR sub_0x006C0D
bra_8035_not_moving_X:
C - - - - - 0x010045 04:8035: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x010048 04:8038: 85 17     STA ram_0017
C - - - - - 0x01004A 04:803A: A9 10     LDA #$10
C - - - - - 0x01004C 04:803C: 20 0A A8  JSR sub_0x00681A
C - - - - - 0x01004F 04:803F: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x010052 04:8042: F0 0F     BEQ bra_8053
C - - - - - 0x010054 04:8044: 20 3D A8  JSR sub_0x00684D
C - - - - - 0x010057 04:8047: A5 17     LDA ram_0017
C - - - - - 0x010059 04:8049: D0 08     BNE bra_8053
C - - - - - 0x01005B 04:804B: BD AE 06  LDA ram_spd_Y_hi_obj,X
C - - - - - 0x01005E 04:804E: F0 03     BEQ bra_8053
C - - - - - 0x010060 04:8050: 20 D3 A7  JSR sub_0x0067E3_clear_spd_X
bra_8053:
C - - - - - 0x010063 04:8053: BD A0 06  LDA ram_spd_Y_lo_obj,X
C - - - - - 0x010066 04:8056: 18        CLC
C - - - - - 0x010067 04:8057: 69 20     ADC #< $0020
C - - - - - 0x010069 04:8059: 9D A0 06  STA ram_spd_Y_lo_obj,X
C - - - - - 0x01006C 04:805C: BD AE 06  LDA ram_spd_Y_hi_obj,X
C - - - - - 0x01006F 04:805F: 69 00     ADC #> $0020
C - - - - - 0x010071 04:8061: 9D AE 06  STA ram_spd_Y_hi_obj,X
C - - - - - 0x010074 04:8064: BC 22 05  LDY ram_pos_Y_hi_enemy,X
C - - - - - 0x010077 04:8067: BD CA 06  LDA ram_spd_X_hi_obj,X
C - - - - - 0x01007A 04:806A: 0A        ASL
C - - - - - 0x01007B 04:806B: A9 10     LDA #$10
C - - - - - 0x01007D 04:806D: 90 02     BCC bra_8071_moving_right
; if moving left
C - - - - - 0x01007F 04:806F: A9 F0     LDA #$F0
bra_8071_moving_right:
C - - - - - 0x010081 04:8071: 18        CLC
C - - - - - 0x010082 04:8072: 7D 3C 05  ADC ram_pos_X_hi_enemy,X
C - - - - - 0x010085 04:8075: 20 AA BA  JSR sub_0x007ABA_calculate_surface_type
C - - - - - 0x010088 04:8078: C9 02     CMP #$02
C - - - - - 0x01008A 04:807A: D0 03     BNE bra_807F
; if solid ground surface
- - - - - - 0x01008C 04:807C: 20 D3 A7  JSR sub_0x0067E3_clear_spd_X
bra_807F:
C - - - - - 0x01008F 04:807F: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x010092 04:8082: F0 22     BEQ bra_80A6
C - - - - - 0x010094 04:8084: C9 06     CMP #$06
C - - - - - 0x010096 04:8086: 90 1B     BCC bra_80A3
C - - - - - 0x010098 04:8088: A0 00     LDY #$00
C - - - - - 0x01009A 04:808A: C9 09     CMP #$09
C - - - - - 0x01009C 04:808C: 90 02     BCC bra_8090
C - - - - - 0x01009E 04:808E: A0 02     LDY #$02
bra_8090:
C - - - - - 0x0100A0 04:8090: BD BC 06  LDA ram_spd_X_lo_obj,X
C - - - - - 0x0100A3 04:8093: 18        CLC
C - - - - - 0x0100A4 04:8094: 79 A9 80  ADC tbl_80A9_spd_X,Y
C - - - - - 0x0100A7 04:8097: 9D BC 06  STA ram_spd_X_lo_obj,X
C - - - - - 0x0100AA 04:809A: BD CA 06  LDA ram_spd_X_hi_obj,X
C - - - - - 0x0100AD 04:809D: 79 AA 80  ADC tbl_80A9_spd_X + $01,Y
C - - - - - 0x0100B0 04:80A0: 9D CA 06  STA ram_spd_X_hi_obj,X
bra_80A3:
C - - - - - 0x0100B3 04:80A3: 20 CA A7  JSR sub_0x0067DA_clear_spd_Y
bra_80A6:
C - - - - - 0x0100B6 04:80A6: 4C D3 A6  JMP loc_0x0066E3



tbl_80A9_spd_X:
- D 0 - - - 0x0100B9 04:80A9: FD FF     .word $FFFD ; 00 
- D 0 - - - 0x0100BB 04:80AB: 03 00     .word $0003 ; 01 



_off001_0x0100BD_32_cannon_hidden_5_2:
- D 0 - I - 0x0100BD 04:80AD: BB 80     .word ofs_038_32_80BB_01_initialize_object ; 
- D 0 - I - 0x0100BF 04:80AF: E2 80     .word ofs_038_32_80E2_02 ; 
- D 0 - I - 0x0100C1 04:80B1: F6 80     .word ofs_038_32_80F6_03 ; 
- D 0 - I - 0x0100C3 04:80B3: 1F 81     .word ofs_038_32_811F_04 ; 
- D 0 - I - 0x0100C5 04:80B5: 52 81     .word ofs_038_32_8152_05 ; 
- D 0 - I - 0x0100C7 04:80B7: FD A2     .word ofs_038_32_0x00630D_06 ; 
- D 0 - I - 0x0100C9 04:80B9: 3D A3     .word ofs_038_32_0x00634D_07_delete_object_04 ; 



ofs_038_32_80BB_01_initialize_object:
C - - J - - 0x0100CB 04:80BB: A9 81     LDA #$81
C - - - - - 0x0100CD 04:80BD: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x0100D0 04:80C0: A9 08     LDA #$08
C - - - - - 0x0100D2 04:80C2: 20 95 AB  JSR sub_0x006BA5_set_dynamic_hp_to_enemy
C - - - - - 0x0100D5 04:80C5: A9 01     LDA #$01
C - - - - - 0x0100D7 04:80C7: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x0100DA 04:80CA: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x0100DD 04:80CD: 38        SEC
C - - - - - 0x0100DE 04:80CE: E9 08     SBC #$08
C - - - - - 0x0100E0 04:80D0: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x0100E3 04:80D3: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x0100E6 04:80D6: 38        SEC
C - - - - - 0x0100E7 04:80D7: E9 20     SBC #$20
C - - - - - 0x0100E9 04:80D9: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x0100EC 04:80DC: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x0100EF 04:80DF: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_32_80E2_02:
C - - J - - 0x0100F2 04:80E2: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x0100F5 04:80E5: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x0100F8 04:80E8: C9 F0     CMP #$F0
C - - - - - 0x0100FA 04:80EA: B0 32     BCS bra_811E_RTS
C - - - - - 0x0100FC 04:80EC: 20 18 84  JSR sub_8418
C - - - - - 0x0100FF 04:80EF: B0 2D     BCS bra_811E_RTS
C - - - - - 0x010101 04:80F1: A9 01     LDA #$01
C - - - - - 0x010103 04:80F3: 4C E0 A2  JMP loc_0x0062F0



ofs_038_32_80F6_03:
C - - J - - 0x010106 04:80F6: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x010109 04:80F9: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x01010C 04:80FC: D0 20     BNE bra_811E_RTS
C - - - - - 0x01010E 04:80FE: 20 5F 81  JSR sub_815F
C - - - - - 0x010111 04:8101: A9 01     LDA #$01
C - - - - - 0x010113 04:8103: B0 16     BCS bra_811B
C - - - - - 0x010115 04:8105: FE 10 07  INC ram_0710_obj,X
C - - - - - 0x010118 04:8108: BD 10 07  LDA ram_0710_obj,X
C - - - - - 0x01011B 04:810B: C9 02     CMP #$02
C - - - - - 0x01011D 04:810D: A9 0C     LDA #$0C
C - - - - - 0x01011F 04:810F: 90 0A     BCC bra_811B
C - - - - - 0x010121 04:8111: A9 01     LDA #$01
C - - - - - 0x010123 04:8113: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x010126 04:8116: A9 30     LDA #$30
C - - - - - 0x010128 04:8118: 4C E0 A2  JMP loc_0x0062F0
bra_811B:
C - - - - - 0x01012B 04:811B: 9D E6 06  STA ram_06E6_obj,X
bra_811E_RTS:
C - - - - - 0x01012E 04:811E: 60        RTS



ofs_038_32_811F_04:
C - - J - - 0x01012F 04:811F: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x010132 04:8122: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x010135 04:8125: C9 20     CMP #$20
C - - - - - 0x010137 04:8127: B0 03     BCS bra_812C
- - - - - - 0x010139 04:8129: 4C 75 A2  JMP loc_0x006285_delete_object_02
bra_812C:
C - - - - - 0x01013C 04:812C: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x01013F 04:812F: D0 ED     BNE bra_811E_RTS
C - - - - - 0x010141 04:8131: A9 50     LDA #$50
C - - - - - 0x010143 04:8133: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x010146 04:8136: A0 33     LDY #con_obj_id_33
C - - - - - 0x010148 04:8138: 20 C8 AB  JSR sub_0x006BD8
C - - - - - 0x01014B 04:813B: 90 E1     BCC bra_811E_RTS
C - - - - - 0x01014D 04:813D: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x010150 04:8140: 29 01     AND #$01
C - - - - - 0x010152 04:8142: A8        TAY
C - - - - - 0x010153 04:8143: B9 50 81  LDA tbl_8150,Y
C - - - - - 0x010156 04:8146: A4 11     LDY ram_0011
C - - - - - 0x010158 04:8148: 18        CLC
C - - - - - 0x010159 04:8149: 7D 3C 05  ADC ram_pos_X_hi_enemy,X
C - - - - - 0x01015C 04:814C: 99 3C 05  STA ram_pos_X_hi_enemy,Y
C - - - - - 0x01015F 04:814F: 60        RTS



tbl_8150:
- D 0 - - - 0x010160 04:8150: F4        .byte $F4   ; 00 
- - - - - - 0x010161 04:8151: 0C        .byte $0C   ; 01 



ofs_038_32_8152_05:
C - - J - - 0x010162 04:8152: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x010165 04:8155: A0 02     LDY #$02
C - - - - - 0x010167 04:8157: 20 62 81  JSR sub_8162
C - - - - - 0x01016A 04:815A: B0 C2     BCS bra_811E_RTS
C - - - - - 0x01016C 04:815C: 4C 9A A2  JMP loc_0x0062AA



sub_815F:
C - - - - - 0x01016F 04:815F: BC 10 07  LDY ram_0710_obj,X
sub_8162:
C - - - - - 0x010172 04:8162: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x010175 04:8165: 4A        LSR
C - - - - - 0x010176 04:8166: 90 03     BCC bra_816B
- - - - - - 0x010178 04:8168: C8        INY
- - - - - - 0x010179 04:8169: C8        INY
- - - - - - 0x01017A 04:816A: C8        INY
bra_816B:
C - - - - - 0x01017B 04:816B: B9 71 81  LDA tbl_8171,Y
C - - - - - 0x01017E 04:816E: 4C 9A A8  JMP loc_0x0068AA



tbl_8171:
; 
- D 0 - - - 0x010181 04:8171: 88        .byte $88   ; 00 
- D 0 - - - 0x010182 04:8172: 89        .byte $89   ; 01 
- D 0 - - - 0x010183 04:8173: 87        .byte $87   ; 02 
; 
- - - - - - 0x010184 04:8174: 8A        .byte $8A   ; 00 
- - - - - - 0x010185 04:8175: 8B        .byte $8B   ; 01 
- - - - - - 0x010186 04:8176: 8C        .byte $8C   ; 02 



_off001_0x010187_33_bullet_cannon_32:
- D 0 - I - 0x010187 04:8177: 7D 81     .word ofs_038_33_817D_01_initialize_object ; 
- D 0 - I - 0x010189 04:8179: 9F 81     .word ofs_038_33_819F_02 ; 
- - - - - - 0x01018B 04:817B: 75 A2     .word ofs_038_33_0x006285_03_delete_object_02 ; 



ofs_038_33_817D_01_initialize_object:
C - - J - - 0x01018D 04:817D: A9 80     LDA #$80
C - - - - - 0x01018F 04:817F: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x010192 04:8182: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x010195 04:8185: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x010198 04:8188: 29 01     AND #$01
C - - - - - 0x01019A 04:818A: 0A        ASL
C - - - - - 0x01019B 04:818B: A8        TAY
C - - - - - 0x01019C 04:818C: B9 9B 81  LDA tbl_819B_spd_X,Y
C - - - - - 0x01019F 04:818F: 9D BC 06  STA ram_spd_X_lo_obj,X
C - - - - - 0x0101A2 04:8192: B9 9C 81  LDA tbl_819B_spd_X + $01,Y
C - - - - - 0x0101A5 04:8195: 9D CA 06  STA ram_spd_X_hi_obj,X
C - - - - - 0x0101A8 04:8198: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



tbl_819B_spd_X:
- D 0 - - - 0x0101AB 04:819B: 00 FC     .word $FC00 ; 00 
- - - - - - 0x0101AD 04:819D: 00 04     .word $0400 ; 01 



ofs_038_33_819F_02:
C - - J - - 0x0101AF 04:819F: A9 06     LDA #$06
C - - - - - 0x0101B1 04:81A1: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x0101B4 04:81A4: 20 D3 A6  JSR sub_0x0066E3
C - - - - - 0x0101B7 04:81A7: A9 00     LDA #$00
C - - - - - 0x0101B9 04:81A9: 20 0A A8  JSR sub_0x00681A
C - - - - - 0x0101BC 04:81AC: F0 03     BEQ bra_81B1_RTS
C - - - - - 0x0101BE 04:81AE: 4C 75 A2  JMP loc_0x006285_delete_object_02
bra_81B1_RTS:
C - - - - - 0x0101C1 04:81B1: 60        RTS



_off001_0x0101C2_34_flying_rifleman:
- D 0 - I - 0x0101C2 04:81B2: BE 81     .word ofs_038_34_81BE_01_initialize_object ; 
- D 0 - I - 0x0101C4 04:81B4: E1 81     .word ofs_038_34_81E1_02 ; 
- D 0 - I - 0x0101C6 04:81B6: FF 81     .word ofs_038_34_81FF_03 ; 
- D 0 - I - 0x0101C8 04:81B8: 9A A2     .word ofs_038_34_0x0062AA_04 ; 
- D 0 - I - 0x0101CA 04:81BA: FD A2     .word ofs_038_34_0x00630D_05 ; 
- D 0 - I - 0x0101CC 04:81BC: 3D A3     .word ofs_038_34_0x00634D_06_delete_object_04 ; 



ofs_038_34_81BE_01_initialize_object:
C - - J - - 0x0101CE 04:81BE: A9 C8     LDA #$C8
C - - - - - 0x0101D0 04:81C0: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x0101D3 04:81C3: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x0101D6 04:81C6: A0 00     LDY #$00
C - - - - - 0x0101D8 04:81C8: 20 D0 81  JSR sub_81D0
C - - - - - 0x0101DB 04:81CB: A9 60     LDA #$60
C - - - - - 0x0101DD 04:81CD: 4C E0 A2  JMP loc_0x0062F0



sub_81D0:
C - - - - - 0x0101E0 04:81D0: B9 DD 81  LDA tbl_81DD_spd_Y,Y
C - - - - - 0x0101E3 04:81D3: 9D A0 06  STA ram_spd_Y_lo_obj,X
C - - - - - 0x0101E6 04:81D6: B9 DE 81  LDA tbl_81DD_spd_Y + $01,Y
C - - - - - 0x0101E9 04:81D9: 9D AE 06  STA ram_spd_Y_hi_obj,X
C - - - - - 0x0101EC 04:81DC: 60        RTS



tbl_81DD_spd_Y:
- D 0 - - - 0x0101ED 04:81DD: 00 FF     .word $FF00 ; 00 
- D 0 - - - 0x0101EF 04:81DF: 00 01     .word $0100 ; 02 



ofs_038_34_81E1_02:
C - - J - - 0x0101F1 04:81E1: 20 1C 82  JSR sub_821C
C - - - - - 0x0101F4 04:81E4: 20 D3 A6  JSR sub_0x0066E3
C - - - - - 0x0101F7 04:81E7: 20 38 82  JSR sub_8238
C - - - - - 0x0101FA 04:81EA: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x0101FD 04:81ED: C9 20     CMP #$20
C - - - - - 0x0101FF 04:81EF: B0 0D     BCS bra_81FE_RTS
C - - - - - 0x010201 04:81F1: A0 02     LDY #$02
C - - - - - 0x010203 04:81F3: 20 D0 81  JSR sub_81D0
C - - - - - 0x010206 04:81F6: A9 90     LDA #$90
C - - - - - 0x010208 04:81F8: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x01020B 04:81FB: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state
bra_81FE_RTS:
C - - - - - 0x01020E 04:81FE: 60        RTS



ofs_038_34_81FF_03:
C - - J - - 0x01020F 04:81FF: 20 1C 82  JSR sub_821C
C - - - - - 0x010212 04:8202: A0 FC     LDY #$FC
C - - - - - 0x010214 04:8204: 20 8E A9  JSR sub_0x00699E
C - - - - - 0x010217 04:8207: 20 D3 A6  JSR sub_0x0066E3
C - - - - - 0x01021A 04:820A: 20 38 82  JSR sub_8238
C - - - - - 0x01021D 04:820D: BD AE 06  LDA ram_spd_Y_hi_obj,X
C - - - - - 0x010220 04:8210: 30 EC     BMI bra_81FE_RTS    ; if moving up
; if moving down
C - - - - - 0x010222 04:8212: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x010225 04:8215: C9 D0     CMP #$D0
C - - - - - 0x010227 04:8217: 90 E5     BCC bra_81FE_RTS
C - - - - - 0x010229 04:8219: 4C EE A7  JMP loc_0x0067FE_inverse_spd_Y



sub_821C:
C - - - - - 0x01022C 04:821C: A0 0C     LDY #con_0x006C32_0C
C - - - - - 0x01022E 04:821E: 20 FD AB  JSR sub_0x006C0D
C - - - - - 0x010231 04:8221: 20 24 AB  JSR sub_0x006B34_set_target_on_closest_player_Y_pos
C - - - - - 0x010234 04:8224: 98        TYA
C - - - - - 0x010235 04:8225: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x010238 04:8228: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x01023B 04:822B: D9 4C 05  CMP ram_pos_X_hi_plr,Y
C - - - - - 0x01023E 04:822E: A9 41     LDA #$41
C - - - - - 0x010240 04:8230: 90 02     BCC bra_8234
C - - - - - 0x010242 04:8232: A9 01     LDA #$01
bra_8234:
C - - - - - 0x010244 04:8234: 9D 56 05  STA ram_attr_spr_enemy,X
C - - - - - 0x010247 04:8237: 60        RTS



sub_8238:
C - - - - - 0x010248 04:8238: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x01024B 04:823B: D0 28     BNE bra_8265_RTS
C - - - - - 0x01024D 04:823D: A9 67     LDA #$67
C - - - - - 0x01024F 04:823F: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x010252 04:8242: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x010255 04:8245: 38        SEC
C - - - - - 0x010256 04:8246: E9 10     SBC #$10
C - - - - - 0x010258 04:8248: 85 08     STA ram_0008
C - - - - - 0x01025A 04:824A: BD 56 05  LDA ram_attr_spr_enemy,X
C - - - - - 0x01025D 04:824D: 0A        ASL
C - - - - - 0x01025E 04:824E: 0A        ASL
C - - - - - 0x01025F 04:824F: A9 0A     LDA #$0A
C - - - - - 0x010261 04:8251: B0 02     BCS bra_8255
C - - - - - 0x010263 04:8253: A9 F6     LDA #$F6
bra_8255:
C - - - - - 0x010265 04:8255: 18        CLC
C - - - - - 0x010266 04:8256: 7D 3C 05  ADC ram_pos_X_hi_enemy,X
C - - - - - 0x010269 04:8259: 85 09     STA ram_0009
C - - - - - 0x01026B 04:825B: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x01026E 04:825E: 85 0A     STA ram_000A
C - - - - - 0x010270 04:8260: A0 02     LDY #$02
C - - - - - 0x010272 04:8262: 4C 27 F3  JMP loc_0x01F337
bra_8265_RTS:
C - - - - - 0x010275 04:8265: 60        RTS



_off001_0x010276_58_spawner_container_normal_mobs:
- D 0 - I - 0x010276 04:8266: 6E 82     .word ofs_038_58_826E_01_initialize_object ; 
- D 0 - I - 0x010278 04:8268: 79 82     .word ofs_038_58_8279_02 ; 
- D 0 - I - 0x01027A 04:826A: 86 82     .word ofs_038_58_8286_03 ; 
- D 0 - I - 0x01027C 04:826C: AF 82     .word ofs_038_58_82AF_04 ; 



ofs_038_58_826E_01_initialize_object:
C - - J - - 0x01027E 04:826E: A9 81     LDA #$81
C - - - - - 0x010280 04:8270: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x010283 04:8273: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x010286 04:8276: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_58_8279_02:
C - - J - - 0x010289 04:8279: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x01028C 04:827C: 20 18 84  JSR sub_8418
C - - - - - 0x01028F 04:827F: B0 2D     BCS bra_82AE_RTS
C - - - - - 0x010291 04:8281: A9 01     LDA #$01
C - - - - - 0x010293 04:8283: 4C E0 A2  JMP loc_0x0062F0



ofs_038_58_8286_03:
C - - J - - 0x010296 04:8286: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x010299 04:8289: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x01029C 04:828C: D0 20     BNE bra_82AE_RTS
C - - - - - 0x01029E 04:828E: 20 E4 82  JSR sub_82E4
C - - - - - 0x0102A1 04:8291: A9 01     LDA #$01
C - - - - - 0x0102A3 04:8293: B0 16     BCS bra_82AB
C - - - - - 0x0102A5 04:8295: FE 10 07  INC ram_0710_obj,X
C - - - - - 0x0102A8 04:8298: BD 10 07  LDA ram_0710_obj,X
C - - - - - 0x0102AB 04:829B: C9 03     CMP #$03
C - - - - - 0x0102AD 04:829D: A9 0A     LDA #$0A
C - - - - - 0x0102AF 04:829F: 90 0A     BCC bra_82AB
C - - - - - 0x0102B1 04:82A1: A9 03     LDA #$03
C - - - - - 0x0102B3 04:82A3: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x0102B6 04:82A6: A9 01     LDA #$01
C - - - - - 0x0102B8 04:82A8: 4C E0 A2  JMP loc_0x0062F0
bra_82AB:
C - - - - - 0x0102BB 04:82AB: 9D E6 06  STA ram_06E6_obj,X
bra_82AE_RTS:
C - - - - - 0x0102BE 04:82AE: 60        RTS



ofs_038_58_82AF_04:
C - - J - - 0x0102BF 04:82AF: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x0102C2 04:82B2: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x0102C5 04:82B5: D0 F7     BNE bra_82AE_RTS
C - - - - - 0x0102C7 04:82B7: A9 10     LDA #$10
C - - - - - 0x0102C9 04:82B9: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x0102CC 04:82BC: A0 03     LDY #con_obj_id_03
C - - - - - 0x0102CE 04:82BE: 20 C8 AB  JSR sub_0x006BD8
C - - - - - 0x0102D1 04:82C1: 90 19     BCC bra_82DC
C - - - - - 0x0102D3 04:82C3: A4 11     LDY ram_0011
C - - - - - 0x0102D5 04:82C5: A9 81     LDA #$81
C - - - - - 0x0102D7 04:82C7: 99 1E 07  STA ram_obj_flags,Y
C - - - - - 0x0102DA 04:82CA: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x0102DD 04:82CD: 18        CLC
C - - - - - 0x0102DE 04:82CE: 69 18     ADC #$18
C - - - - - 0x0102E0 04:82D0: 99 22 05  STA ram_pos_Y_hi_enemy,Y
C - - - - - 0x0102E3 04:82D3: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x0102E6 04:82D6: 18        CLC
C - - - - - 0x0102E7 04:82D7: 69 04     ADC #$04
C - - - - - 0x0102E9 04:82D9: 99 3C 05  STA ram_pos_X_hi_enemy,Y
bra_82DC:
C - - - - - 0x0102EC 04:82DC: DE 48 07  DEC ram_0748_obj,X
C - - - - - 0x0102EF 04:82DF: D0 CD     BNE bra_82AE_RTS
C - - - - - 0x0102F1 04:82E1: 4C 75 A2  JMP loc_0x006285_delete_object_02



sub_82E4:
C - - - - - 0x0102F4 04:82E4: BD 10 07  LDA ram_0710_obj,X
C - - - - - 0x0102F7 04:82E7: 0A        ASL
C - - - - - 0x0102F8 04:82E8: A8        TAY
C - - - - - 0x0102F9 04:82E9: B9 F7 82  LDA tbl_82F6 + $01,Y
C - - - - - 0x0102FC 04:82EC: 85 0C     STA ram_000C
C - - - - - 0x0102FE 04:82EE: B9 F6 82  LDA tbl_82F6,Y
C - - - - - 0x010301 04:82F1: A0 1F     LDY #$1F
C - - - - - 0x010303 04:82F3: 4C A8 A8  JMP loc_0x0068B8



tbl_82F6:
;                                              +---------- 
;                                              |    +----- 
;                                              |    |
- D 0 - - - 0x010306 04:82F6: 61        .byte $61, $75   ; 00 
- D 0 - - - 0x010308 04:82F8: 76        .byte $76, $77   ; 01 
- D 0 - - - 0x01030A 04:82FA: 78        .byte $78, $79   ; 02 



_off001_0x01030C_5A_boss_5_skull:
- D 0 - I - 0x01030C 04:82FC: 08 83     .word ofs_038_5A_8308_01_initialize_object ; 
- D 0 - I - 0x01030E 04:82FE: 39 83     .word ofs_038_5A_8339_02 ; 
- D 0 - I - 0x010310 04:8300: 8C 83     .word ofs_038_5A_838C_03 ; 
- D 0 - I - 0x010312 04:8302: 9A A2     .word ofs_038_5A_0x0062AA_04 ; 
- D 0 - I - 0x010314 04:8304: FD A2     .word ofs_038_5A_0x00630D_05 ; 
- D 0 - I - 0x010316 04:8306: 3D A3     .word ofs_038_5A_0x00634D_06_delete_object_04 ; 



ofs_038_5A_8308_01_initialize_object:
; area 5 boss, small skeleton heads
C - - J - - 0x010318 04:8308: A9 02     LDA #$02
C - - - - - 0x01031A 04:830A: A0 06     LDY #$06
C - - - - - 0x01031C 04:830C: 20 9B AB  JSR sub_0x006BAB_set_dynamic_hp_to_obj
C - - - - - 0x01031F 04:830F: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x010322 04:8312: 0A        ASL
C - - - - - 0x010323 04:8313: A8        TAY
C - - - - - 0x010324 04:8314: B9 35 83  LDA tbl_8335_spd_X,Y
C - - - - - 0x010327 04:8317: 9D BC 06  STA ram_spd_X_lo_obj,X
C - - - - - 0x01032A 04:831A: B9 36 83  LDA tbl_8335_spd_X + $01,Y
C - - - - - 0x01032D 04:831D: 9D CA 06  STA ram_spd_X_hi_obj,X
C - - - - - 0x010330 04:8320: A9 C0     LDA #< $FEC0
C - - - - - 0x010332 04:8322: 9D A0 06  STA ram_spd_Y_lo_obj,X
C - - - - - 0x010335 04:8325: A9 FE     LDA #> $FEC0
C - - - - - 0x010337 04:8327: 9D AE 06  STA ram_spd_Y_hi_obj,X
C - - - - - 0x01033A 04:832A: 20 94 83  JSR sub_8394
C - - - - - 0x01033D 04:832D: 09 20     ORA #$20
C - - - - - 0x01033F 04:832F: 9D 56 05  STA ram_attr_spr_enemy,X
C - - - - - 0x010342 04:8332: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



tbl_8335_spd_X:
- D 0 - - - 0x010345 04:8335: 80 00     .word $0080 ; 00 
- D 0 - - - 0x010347 04:8337: 80 FF     .word $FF80 ; 01 



ofs_038_5A_8339_02:
C - - J - - 0x010349 04:8339: A0 0B     LDY #con_0x006C32_0B
C - - - - - 0x01034B 04:833B: 20 FD AB  JSR sub_0x006C0D
C - - - - - 0x01034E 04:833E: A9 14     LDA #$14
C - - - - - 0x010350 04:8340: 20 CB AA  JSR sub_0x006ADB_add_to_spd_Y
C - - - - - 0x010353 04:8343: 20 D3 A6  JSR sub_0x0066E3
C - - - - - 0x010356 04:8346: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x010359 04:8349: C9 10     CMP #$10
C - - - - - 0x01035B 04:834B: 90 04     BCC bra_8351
C - - - - - 0x01035D 04:834D: C9 F0     CMP #$F0
C - - - - - 0x01035F 04:834F: 90 03     BCC bra_8354
bra_8351:
C - - - - - 0x010361 04:8351: 20 D3 A7  JSR sub_0x0067E3_clear_spd_X
bra_8354:
C - - - - - 0x010364 04:8354: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x010367 04:8357: C9 A0     CMP #$A0
C - - - - - 0x010369 04:8359: 90 03     BCC bra_835E
C - - - - - 0x01036B 04:835B: 20 94 83  JSR sub_8394
bra_835E:
C - - - - - 0x01036E 04:835E: A9 08     LDA #$08
C - - - - - 0x010370 04:8360: 20 05 A8  JSR sub_0x006815
C - - - - - 0x010373 04:8363: F0 22     BEQ bra_8387_RTS
C - - - - - 0x010375 04:8365: 20 3D A8  JSR sub_0x00684D
C - - - - - 0x010378 04:8368: 20 CA A7  JSR sub_0x0067DA_clear_spd_Y
C - - - - - 0x01037B 04:836B: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x01037E 04:836E: 0A        ASL
C - - - - - 0x01037F 04:836F: A8        TAY
C - - - - - 0x010380 04:8370: B9 88 83  LDA tbl_8388_spd_X,Y
C - - - - - 0x010383 04:8373: 9D BC 06  STA ram_spd_X_lo_obj,X
C - - - - - 0x010386 04:8376: B9 89 83  LDA tbl_8388_spd_X + $01,Y
C - - - - - 0x010389 04:8379: 9D CA 06  STA ram_spd_X_hi_obj,X
C - - - - - 0x01038C 04:837C: 20 94 83  JSR sub_8394
C - - - - - 0x01038F 04:837F: A9 01     LDA #$01
C - - - - - 0x010391 04:8381: 9D 76 06  STA ram_obj_hp,X
C - - - - - 0x010394 04:8384: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state
bra_8387_RTS:
C - - - - - 0x010397 04:8387: 60        RTS



tbl_8388_spd_X:
- D 0 - - - 0x010398 04:8388: C0 FE     .word $FEC0 ; 00 
- D 0 - - - 0x01039A 04:838A: 40 01     .word $0140 ; 01 



ofs_038_5A_838C_03:
C - - J - - 0x01039C 04:838C: A0 0B     LDY #con_0x006C32_0B
C - - - - - 0x01039E 04:838E: 20 FD AB  JSR sub_0x006C0D
C - - - - - 0x0103A1 04:8391: 4C D3 A6  JMP loc_0x0066E3



sub_8394:
C - - - - - 0x0103A4 04:8394: BD CA 06  LDA ram_spd_X_hi_obj,X
C - - - - - 0x0103A7 04:8397: 1D BC 06  ORA ram_spd_X_lo_obj,X
C - - - - - 0x0103AA 04:839A: F0 0C     BEQ bra_83A8_RTS    ; if not moving along X axis
; if moving along X axis
C - - - - - 0x0103AC 04:839C: A9 02     LDA #$02
C - - - - - 0x0103AE 04:839E: BC CA 06  LDY ram_spd_X_hi_obj,X
C - - - - - 0x0103B1 04:83A1: 30 02     BMI bra_83A5_moving_left
; if moving right
C - - - - - 0x0103B3 04:83A3: A9 42     LDA #$42
bra_83A5_moving_left:
C - - - - - 0x0103B5 04:83A5: 9D 56 05  STA ram_attr_spr_enemy,X
bra_83A8_RTS:
C - - - - - 0x0103B8 04:83A8: 60        RTS



_off001_0x0103B9_35_boss_5_red_spiked_ball:
- D 0 - I - 0x0103B9 04:83A9: B7 83     .word ofs_038_35_83B7_01_initialize_object ; 
- D 0 - I - 0x0103BB 04:83AB: CB 83     .word ofs_038_35_83CB_02 ; 
- D 0 - I - 0x0103BD 04:83AD: F1 83     .word ofs_038_35_83F1_03 ; 
- D 0 - I - 0x0103BF 04:83AF: 06 84     .word ofs_038_35_8406_04 ; 
- D 0 - I - 0x0103C1 04:83B1: 9A A2     .word ofs_038_35_0x0062AA_05 ; 
- D 0 - I - 0x0103C3 04:83B3: FD A2     .word ofs_038_35_0x00630D_06 ; 
- D 0 - I - 0x0103C5 04:83B5: 3D A3     .word ofs_038_35_0x00634D_07_delete_object_04 ; 



ofs_038_35_83B7_01_initialize_object:
C - - J - - 0x0103C7 04:83B7: A9 22     LDA #$22
C - - - - - 0x0103C9 04:83B9: 9D 56 05  STA ram_attr_spr_enemy,X
C - - - - - 0x0103CC 04:83BC: A9 00     LDA #< $0200
C - - - - - 0x0103CE 04:83BE: 9D A0 06  STA ram_spd_Y_lo_obj,X
C - - - - - 0x0103D1 04:83C1: A9 02     LDA #> $0200
C - - - - - 0x0103D3 04:83C3: 9D AE 06  STA ram_spd_Y_hi_obj,X
C - - - - - 0x0103D6 04:83C6: A9 0A     LDA #$0A
C - - - - - 0x0103D8 04:83C8: 4C E0 A2  JMP loc_0x0062F0



ofs_038_35_83CB_02:
C - - J - - 0x0103DB 04:83CB: A0 0A     LDY #con_0x006C32_0A
C - - - - - 0x0103DD 04:83CD: 20 FD AB  JSR sub_0x006C0D
C - - - - - 0x0103E0 04:83D0: 20 D3 A6  JSR sub_0x0066E3
C - - - - - 0x0103E3 04:83D3: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x0103E6 04:83D6: D0 14     BNE bra_83EC_RTS
C - - - - - 0x0103E8 04:83D8: A9 02     LDA #$02
C - - - - - 0x0103EA 04:83DA: 9D 56 05  STA ram_attr_spr_enemy,X
C - - - - - 0x0103ED 04:83DD: A5 23     LDA ram_random
C - - - - - 0x0103EF 04:83DF: 65 1B     ADC ram_frm_cnt_1
C - - - - - 0x0103F1 04:83E1: 85 23     STA ram_random
C - - - - - 0x0103F3 04:83E3: 29 03     AND #$03
C - - - - - 0x0103F5 04:83E5: A8        TAY
C - - - - - 0x0103F6 04:83E6: B9 ED 83  LDA tbl_83ED,Y
C - - - - - 0x0103F9 04:83E9: 4C E0 A2  JMP loc_0x0062F0
bra_83EC_RTS:
C - - - - - 0x0103FC 04:83EC: 60        RTS



tbl_83ED:
- D 0 - - - 0x0103FD 04:83ED: 40        .byte $40   ; 00 
- D 0 - - - 0x0103FE 04:83EE: 60        .byte $60   ; 01 
- D 0 - - - 0x0103FF 04:83EF: 70        .byte $70   ; 02 
- D 0 - - - 0x010400 04:83F0: 50        .byte $50   ; 03 



ofs_038_35_83F1_03:
C - - J - - 0x010401 04:83F1: A0 0A     LDY #con_0x006C32_0A
C - - - - - 0x010403 04:83F3: 20 FD AB  JSR sub_0x006C0D
C - - - - - 0x010406 04:83F6: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x010409 04:83F9: D0 F1     BNE bra_83EC_RTS
C - - - - - 0x01040B 04:83FB: 20 0B AB  JSR sub_0x006B1B_set_target_on_closest_player_X_pos
C - - - - - 0x01040E 04:83FE: A0 02     LDY #$02
C - - - - - 0x010410 04:8400: 20 57 A9  JSR sub_0x006967
C - - - - - 0x010413 04:8403: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_35_8406_04:
C - - J - - 0x010416 04:8406: A0 0A     LDY #con_0x006C32_0A
C - - - - - 0x010418 04:8408: 20 FD AB  JSR sub_0x006C0D
C - - - - - 0x01041B 04:840B: 20 D3 A6  JSR sub_0x0066E3
C - - - - - 0x01041E 04:840E: A9 00     LDA #$00
C - - - - - 0x010420 04:8410: 20 0A A8  JSR sub_0x00681A
C - - - - - 0x010423 04:8413: F0 D7     BEQ bra_83EC_RTS
C - - - - - 0x010425 04:8415: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



sub_8418:
C - - - - - 0x010428 04:8418: 20 24 AB  JSR sub_0x006B34_set_target_on_closest_player_Y_pos
C - - - - - 0x01042B 04:841B: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x01042E 04:841E: 38        SEC
C - - - - - 0x01042F 04:841F: F9 32 05  SBC ram_pos_Y_hi_plr,Y
C - - - - - 0x010432 04:8422: B0 04     BCS bra_8428
- - - - - - 0x010434 04:8424: 49 FF     EOR #$FF
- - - - - - 0x010436 04:8426: 69 01     ADC #$01
bra_8428:
C - - - - - 0x010438 04:8428: C9 20     CMP #$20
C - - - - - 0x01043A 04:842A: 60        RTS



_off001_0x01043B_59_boss_5_body:
- D 0 - I - 0x01043B 04:842B: 3F 84     .word ofs_038_59_843F_01_initialize_object ; 
- D 0 - I - 0x01043D 04:842D: 4C 84     .word ofs_038_59_844C_02 ; 
- D 0 - I - 0x01043F 04:842F: 69 84     .word ofs_038_59_8469_03 ; 
- D 0 - I - 0x010441 04:8431: 7B 84     .word ofs_038_59_847B_04 ; 
- D 0 - I - 0x010443 04:8433: 0A 85     .word ofs_038_59_850A_05 ; 
- D 0 - I - 0x010445 04:8435: 2E 85     .word ofs_038_59_852E_06 ; 
- D 0 - I - 0x010447 04:8437: 3C 85     .word ofs_038_59_853C_07 ; 
- D 0 - I - 0x010449 04:8439: 42 85     .word ofs_038_59_8542_08 ; 
- D 0 - I - 0x01044B 04:843B: 48 85     .word ofs_038_59_8548_09 ; 
- D 0 - I - 0x01044D 04:843D: 4E 85     .word ofs_038_59_854E_0A ; 



ofs_038_59_843F_01_initialize_object:
C - - J - - 0x01044F 04:843F: A9 10     LDA #$10
C - - - - - 0x010451 04:8441: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x010454 04:8444: A9 F0     LDA #con__hp_F0
C - - - - - 0x010456 04:8446: 9D 76 06  STA ram_obj_hp,X
C - - - - - 0x010459 04:8449: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_59_844C_02:
C - - J - - 0x01045C 04:844C: A5 61     LDA ram_0061_area_config
C - - - - - 0x01045E 04:844E: F0 18     BEQ bra_8468_RTS
C - - - - - 0x010460 04:8450: A5 60     LDA ram_0060_game_handler
C - - - - - 0x010462 04:8452: 05 70     ORA ram_0070_game_handler
C - - - - - 0x010464 04:8454: D0 12     BNE bra_8468_RTS
C - - - - - 0x010466 04:8456: A5 94     LDA ram_0094_area_config
C - - - - - 0x010468 04:8458: 09 40     ORA #$40
C - - - - - 0x01046A 04:845A: 85 94     STA ram_0094_area_config
C - - - - - 0x01046C 04:845C: A9 B8     LDA #$B8
C - - - - - 0x01046E 04:845E: 85 98     STA ram_0098
C - - - - - 0x010470 04:8460: A9 31     LDA #con_sound_31
C - - - - - 0x010472 04:8462: 20 DE FD  JSR sub_0x01FDEE_play_sound
C - - - - - 0x010475 04:8465: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state
bra_8468_RTS:
C - - - - - 0x010478 04:8468: 60        RTS



ofs_038_59_8469_03:
C - - J - - 0x010479 04:8469: A5 98     LDA ram_0098
C - - - - - 0x01047B 04:846B: D0 FB     BNE bra_8468_RTS
C - - - - - 0x01047D 04:846D: 20 94 AA  JSR sub_0x006AA4_save_reg_values
C - - - - - 0x010480 04:8470: 20 90 F1  JSR sub_0x01F1A0
C - - - - - 0x010483 04:8473: A9 08     LDA #$08
C - - - - - 0x010485 04:8475: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x010488 04:8478: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_59_847B_04:
C - - J - - 0x01048B 04:847B: A5 60     LDA ram_0060_game_handler
C - - - - - 0x01048D 04:847D: 05 70     ORA ram_0070_game_handler
C - - - - - 0x01048F 04:847F: D0 E7     BNE bra_8468_RTS
C - - - - - 0x010491 04:8481: DE 48 07  DEC ram_0748_obj,X
C - - - - - 0x010494 04:8484: F0 05     BEQ bra_848B
C - - - - - 0x010496 04:8486: A9 00     LDA #$00
C - - - - - 0x010498 04:8488: 85 6B     STA ram_006B
C - - - - - 0x01049A 04:848A: 60        RTS
bra_848B:
C - - - - - 0x01049B 04:848B: A9 01     LDA #$01
C - - - - - 0x01049D 04:848D: 85 61     STA ram_0061_area_config
C - - - - - 0x01049F 04:848F: A9 01     LDA #con_mirroring_H
C - - - - - 0x0104A1 04:8491: 85 26     STA ram_for_A000
C - - - - - 0x0104A3 04:8493: A9 80     LDA #$80
C - - - - - 0x0104A5 04:8495: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x0104A8 04:8498: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x0104AB 04:849B: A9 C4     LDA #$C4
C - - - - - 0x0104AD 04:849D: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x0104B0 04:84A0: A9 FF     LDA #$FF
C - - - - - 0x0104B2 04:84A2: 9D 8E 07  STA ram_078E_obj,X
C - - - - - 0x0104B5 04:84A5: A9 00     LDA #$00
C - - - - - 0x0104B7 04:84A7: 9D 9C 07  STA ram_079C_obj,X
C - - - - - 0x0104BA 04:84AA: A9 A8     LDA #$A8
C - - - - - 0x0104BC 04:84AC: 85 FF     STA ram_for_2000
C - - - - - 0x0104BE 04:84AE: 20 7F FC  JSR sub_0x01FC8F_copy_reg_values
C - - - - - 0x0104C1 04:84B1: 20 CE A9  JSR sub_0x0069DE
C - - - - - 0x0104C4 04:84B4: A9 0B     LDA #con_irq_area_5_boss
C - - - - - 0x0104C6 04:84B6: 85 27     STA ram_irq_handler_hi
C - - - - - 0x0104C8 04:84B8: A9 C1     LDA #$C1
C - - - - - 0x0104CA 04:84BA: 85 45     STA ram_scanline
C - - - - - 0x0104CC 04:84BC: A9 00     LDA #$00
C - - - - - 0x0104CE 04:84BE: 9D 64 07  STA ram_0764_obj,X
C - - - - - 0x0104D1 04:84C1: A9 E0     LDA #< $00E0
C - - - - - 0x0104D3 04:84C3: 9D BC 06  STA ram_spd_X_lo_obj,X
C - - - - - 0x0104D6 04:84C6: A9 00     LDA #> $00E0
C - - - - - 0x0104D8 04:84C8: 9D CA 06  STA ram_spd_X_hi_obj,X
C - - - - - 0x0104DB 04:84CB: A0 00     LDY #$00
C - - - - - 0x0104DD 04:84CD: 20 F9 84  JSR sub_84F9
C - - - - - 0x0104E0 04:84D0: 20 10 BD  JSR sub_0x007D20_clear_0400_047F
C - - - - - 0x0104E3 04:84D3: A9 F0     LDA #$F0
C - - - - - 0x0104E5 04:84D5: 9D 02 07  STA ram_0702_obj,X
C - - - - - 0x0104E8 04:84D8: A9 00     LDA #$00
C - - - - - 0x0104EA 04:84DA: 9D 10 07  STA ram_0710_obj,X
C - - - - - 0x0104ED 04:84DD: A9 10     LDA #$10
C - - - - - 0x0104EF 04:84DF: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x0104F2 04:84E2: A9 00     LDA #$00
C - - - - - 0x0104F4 04:84E4: 9D 1E 07  STA ram_obj_flags,X
C - - - - - 0x0104F7 04:84E7: A9 20     LDA #$20
C - - - - - 0x0104F9 04:84E9: 9D 72 07  STA ram_0772_obj,X
C - - - - - 0x0104FC 04:84EC: A9 5A     LDA #con_chr_bank + $5A
C - - - - - 0x0104FE 04:84EE: 8D F0 07  STA ram_chr_bank_bg_1
C - - - - - 0x010501 04:84F1: A9 06     LDA #con_chr_bank + $06
C - - - - - 0x010503 04:84F3: 8D F1 07  STA ram_chr_bank_bg_2
C - - - - - 0x010506 04:84F6: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



sub_84F9:
loc_84F9:
C D 0 - - - 0x010509 04:84F9: B9 06 85  LDA tbl_8506_spd_Y,Y
C - - - - - 0x01050C 04:84FC: 9D A0 06  STA ram_spd_Y_lo_obj,X
C - - - - - 0x01050F 04:84FF: B9 07 85  LDA tbl_8506_spd_Y + $01,Y
C - - - - - 0x010512 04:8502: 9D AE 06  STA ram_spd_Y_hi_obj,X
C - - - - - 0x010515 04:8505: 60        RTS



tbl_8506_spd_Y:
- D 0 - - - 0x010516 04:8506: 40 00     .word $0040 ; 00 
- D 0 - - - 0x010518 04:8508: 80 00     .word $0080 ; 02 



ofs_038_59_850A_05:
C - - J - - 0x01051A 04:850A: A9 01     LDA #$01
C - - - - - 0x01051C 04:850C: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x01051F 04:850F: 20 B6 87  JSR sub_87B6
C - - - - - 0x010522 04:8512: A0 FC     LDY #$FC
C - - - - - 0x010524 04:8514: 20 8E A9  JSR sub_0x00699E
C - - - - - 0x010527 04:8517: BD 80 07  LDA ram_0780_obj,X
C - - - - - 0x01052A 04:851A: F0 05     BEQ bra_8521
C - - - - - 0x01052C 04:851C: A0 01     LDY #$01
C - - - - - 0x01052E 04:851E: 20 6E A9  JSR sub_0x00697E
bra_8521:
C - - - - - 0x010531 04:8521: 20 39 88  JSR sub_8839
C - - - - - 0x010534 04:8524: 20 66 85  JSR sub_8566
C - - - - - 0x010537 04:8527: 20 A0 86  JSR sub_86A0
C - - - - - 0x01053A 04:852A: 20 E7 86  JSR sub_86E7
C - - - - - 0x01053D 04:852D: 60        RTS



ofs_038_59_852E_06:
C - - J - - 0x01053E 04:852E: 20 D3 A7  JSR sub_0x0067E3_clear_spd_X
C - - - - - 0x010541 04:8531: A0 02     LDY #$02
C - - - - - 0x010543 04:8533: 20 F9 84  JSR sub_84F9
C - - - - - 0x010546 04:8536: 20 32 88  JSR sub_8832
C - - - - - 0x010549 04:8539: 4C B8 A3  JMP loc_0x0063C8_boss_starts_exploding



ofs_038_59_853C_07:
C - - J - - 0x01054C 04:853C: 20 32 88  JSR sub_8832
C - - - - - 0x01054F 04:853F: 4C D8 A3  JMP loc_0x0063E8



ofs_038_59_8542_08:
C - - J - - 0x010552 04:8542: 20 32 88  JSR sub_8832
C - - - - - 0x010555 04:8545: 4C A2 A2  JMP loc_0x0062B2



ofs_038_59_8548_09:
C - - J - - 0x010558 04:8548: 20 32 88  JSR sub_8832
C - - - - - 0x01055B 04:854B: 4C F6 A2  JMP loc_0x006306



ofs_038_59_854E_0A:
C - - J - - 0x01055E 04:854E: 20 8C FC  JSR sub_0x01FC9C_increase_002B
C - - - - - 0x010561 04:8551: 20 88 F1  JSR sub_0x01F198
C - - - - - 0x010564 04:8554: E6 65     INC ram_0065
C - - - - - 0x010566 04:8556: 20 A1 AA  JSR sub_0x006AB1_restore_reg_values
C - - - - - 0x010569 04:8559: A9 20     LDA #con_chr_bank + $20
C - - - - - 0x01056B 04:855B: 8D F0 07  STA ram_chr_bank_bg_1
C - - - - - 0x01056E 04:855E: A9 22     LDA #con_chr_bank + $22
C - - - - - 0x010570 04:8560: 8D F1 07  STA ram_chr_bank_bg_2
C - - - - - 0x010573 04:8563: 4C 37 A3  JMP loc_0x006347_delete_object_boss



sub_8566:
C - - - - - 0x010576 04:8566: BD 64 07  LDA ram_0764_obj,X
C - - - - - 0x010579 04:8569: C9 02     CMP #$02
C - - - - - 0x01057B 04:856B: D0 15     BNE bra_8582
C - - - - - 0x01057D 04:856D: BC 10 07  LDY ram_0710_obj,X
C - - - - - 0x010580 04:8570: B9 DD 86  LDA tbl_86DD,Y
C - - - - - 0x010583 04:8573: 0A        ASL
C - - - - - 0x010584 04:8574: 30 47     BMI bra_85BD_RTS
- - - - - - 0x010586 04:8576: BD 02 07  LDA ram_0702_obj,X
- - - - - - 0x010589 04:8579: C9 0C     CMP #$0C
- - - - - - 0x01058B 04:857B: 90 05     BCC bra_8582
- - - - - - 0x01058D 04:857D: A9 0C     LDA #$0C
- - - - - - 0x01058F 04:857F: 9D 02 07  STA ram_0702_obj,X
bra_8582:
C - - - - - 0x010592 04:8582: DE 02 07  DEC ram_0702_obj,X
C - - - - - 0x010595 04:8585: D0 36     BNE bra_85BD_RTS
C - - - - - 0x010597 04:8587: FE 10 07  INC ram_0710_obj,X
C - - - - - 0x01059A 04:858A: BD 10 07  LDA ram_0710_obj,X
C - - - - - 0x01059D 04:858D: C9 08     CMP #$08
C - - - - - 0x01059F 04:858F: 90 02     BCC bra_8593_not_overflow
C - - - - - 0x0105A1 04:8591: A9 00     LDA #$00
bra_8593_not_overflow:
C - - - - - 0x0105A3 04:8593: 9D 10 07  STA ram_0710_obj,X
C - - - - - 0x0105A6 04:8596: A8        TAY
C - - - - - 0x0105A7 04:8597: B9 BE 85  LDA tbl_85BE,Y
C - - - - - 0x0105AA 04:859A: 9D 02 07  STA ram_0702_obj,X
C - - - - - 0x0105AD 04:859D: 98        TYA
C - - - - - 0x0105AE 04:859E: 0A        ASL
C - - - - - 0x0105AF 04:859F: A8        TAY
C - - - - - 0x0105B0 04:85A0: B9 C6 85  LDA tbl_85C6,Y
C - - - - - 0x0105B3 04:85A3: 85 08     STA ram_0008
C - - - - - 0x0105B5 04:85A5: B9 C7 85  LDA tbl_85C6 + $01,Y
sub_85A8:
C - - - - - 0x0105B8 04:85A8: 85 09     STA ram_0009
C - - - - - 0x0105BA 04:85AA: A0 00     LDY #$00
C - - - - - 0x0105BC 04:85AC: A6 1E     LDX ram_index_ppu_buffer
bra_85AE_loop:
C - - - - - 0x0105BE 04:85AE: B1 08     LDA (ram_0008),Y
C - - - - - 0x0105C0 04:85B0: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x0105C3 04:85B3: C8        INY
C - - - - - 0x0105C4 04:85B4: E8        INX
C - - - - - 0x0105C5 04:85B5: C9 FF     CMP #$FF
C - - - - - 0x0105C7 04:85B7: D0 F5     BNE bra_85AE_loop
C - - - - - 0x0105C9 04:85B9: 86 1E     STX ram_index_ppu_buffer
C - - - - - 0x0105CB 04:85BB: A6 10     LDX ram_0010
bra_85BD_RTS:
C - - - - - 0x0105CD 04:85BD: 60        RTS



tbl_85BE:
- D 0 - - - 0x0105CE 04:85BE: 0C        .byte $0C   ; 00 
- D 0 - - - 0x0105CF 04:85BF: 50        .byte $50   ; 01 
- D 0 - - - 0x0105D0 04:85C0: 0C        .byte $0C   ; 02 
- D 0 - - - 0x0105D1 04:85C1: 10        .byte $10   ; 03 
- D 0 - - - 0x0105D2 04:85C2: 0C        .byte $0C   ; 04 
- D 0 - - - 0x0105D3 04:85C3: 50        .byte $50   ; 05 
- D 0 - - - 0x0105D4 04:85C4: 0C        .byte $0C   ; 06 
- D 0 - - - 0x0105D5 04:85C5: 10        .byte $10   ; 07 



tbl_85C6:
- D 0 - - - 0x0105D6 04:85C6: F4 85     .word _off022_85F4_00
- D 0 - - - 0x0105D8 04:85C8: 1A 86     .word _off022_861A_01
- D 0 - - - 0x0105DA 04:85CA: F4 85     .word _off022_85F4_02
- D 0 - - - 0x0105DC 04:85CC: D6 85     .word _off022_85D6_03
- D 0 - - - 0x0105DE 04:85CE: 59 86     .word _off022_8659_04
- D 0 - - - 0x0105E0 04:85D0: 7F 86     .word _off022_867F_05
- D 0 - - - 0x0105E2 04:85D2: 59 86     .word _off022_8659_06
- D 0 - - - 0x0105E4 04:85D4: 3B 86     .word _off022_863B_07



_off022_85D6_03:
- D 0 - I - 0x0105E6 04:85D6: 07        .byte con_buf_mode_07   ; 

- D 0 - I - 0x0105E7 04:85D7: 21 D3     .dbyt $21D3 ; ppu address
- D 0 - I - 0x0105E9 04:85D9: 02        .byte $02   ; counter
- D 0 - I - 0x0105EA 04:85DA: 18        .byte $18, $24   ; tiles

- D 0 - I - 0x0105EC 04:85DC: 21 B4     .dbyt $21B4 ; ppu address
- D 0 - I - 0x0105EE 04:85DE: 05        .byte $05   ; counter
- D 0 - I - 0x0105EF 04:85DF: 10        .byte $10, $19, $25, $32, $3D   ; tiles

- D 0 - I - 0x0105F4 04:85E4: 21 B5     .dbyt $21B5 ; ppu address
- D 0 - I - 0x0105F6 04:85E6: 05        .byte $05   ; counter
- D 0 - I - 0x0105F7 04:85E7: 00        .byte $00, $1A, $26, $33, $3E   ; tiles

- D 0 - I - 0x0105FC 04:85EC: 21 D6     .dbyt $21D6 ; ppu address
- D 0 - I - 0x0105FE 04:85EE: 04        .byte $04   ; counter
- D 0 - I - 0x0105FF 04:85EF: 00        .byte $00, $27, $34, $3F   ; tiles

- D 0 - I - 0x010603 04:85F3: FF        .byte $FF   ; end token



_off022_85F4_00:
_off022_85F4_02:
- D 0 - I - 0x010604 04:85F4: 07        .byte con_buf_mode_07   ; 

- D 0 - I - 0x010605 04:85F5: 21 D3     .dbyt $21D3 ; ppu address
- D 0 - I - 0x010607 04:85F7: 02        .byte $02   ; counter
- D 0 - I - 0x010608 04:85F8: 7A        .byte $7A, $FE   ; tiles

- D 0 - I - 0x01060A 04:85FA: 21 B4     .dbyt $21B4 ; ppu address
- D 0 - I - 0x01060C 04:85FC: 05        .byte $05   ; counter
- D 0 - I - 0x01060D 04:85FD: 79        .byte $79, $25, $32, $7B, $7C   ; tiles

- D 0 - I - 0x010612 04:8602: 21 95     .dbyt $2195 ; ppu address
- D 0 - I - 0x010614 04:8604: 06        .byte $06   ; counter
- D 0 - I - 0x010615 04:8605: 00        .byte $00, $1A, $26, $33, $3E, $7D   ; tiles

- D 0 - I - 0x01061B 04:860B: 21 96     .dbyt $2196 ; ppu address
- D 0 - I - 0x01061D 04:860D: 06        .byte $06   ; counter
- D 0 - I - 0x01061E 04:860E: 00        .byte $00, $00, $27, $34, $3F, $7E   ; tiles

- D 0 - I - 0x010624 04:8614: 21 97     .dbyt $2197 ; ppu address
- D 0 - I - 0x010626 04:8616: 02        .byte $02   ; counter
- D 0 - I - 0x010627 04:8617: 00        .byte $00, $00   ; tiles

- D 0 - I - 0x010629 04:8619: FF        .byte $FF   ; end token



_off022_861A_01:
- D 0 - I - 0x01062A 04:861A: 07        .byte con_buf_mode_07   ; 

- D 0 - I - 0x01062B 04:861B: 21 B4     .dbyt $21B4 ; ppu address
- D 0 - I - 0x01062D 04:861D: 05        .byte $05   ; counter
- D 0 - I - 0x01062E 04:861E: F3        .byte $F3, $F7, $FA, $FC, $7C   ; tiles

- D 0 - I - 0x010633 04:8623: 21 95     .dbyt $2195 ; ppu address
- D 0 - I - 0x010635 04:8625: 06        .byte $06   ; counter
- D 0 - I - 0x010636 04:8626: F0        .byte $F0, $F4, $F8, $FB, $00, $FD   ; tiles

- D 0 - I - 0x01063C 04:862C: 21 96     .dbyt $2196 ; ppu address
- D 0 - I - 0x01063E 04:862E: 06        .byte $06   ; counter
- D 0 - I - 0x01063F 04:862F: F1        .byte $F1, $F5, $F9, $00, $00, $00   ; tiles

- D 0 - I - 0x010645 04:8635: 21 97     .dbyt $2197 ; ppu address
- D 0 - I - 0x010647 04:8637: 02        .byte $02   ; counter
- D 0 - I - 0x010648 04:8638: F2        .byte $F2, $F6   ; tiles

- D 0 - I - 0x01064A 04:863A: FF        .byte $FF   ; end token



_off022_863B_07:
- D 0 - I - 0x01064B 04:863B: 07        .byte con_buf_mode_07   ; 

- D 0 - I - 0x01064C 04:863C: 21 C9     .dbyt $21C9 ; ppu address
- D 0 - I - 0x01064E 04:863E: 04        .byte $04   ; counter
- D 0 - I - 0x01064F 04:863F: 00        .byte $00, $1B, $28, $35   ; tiles

- D 0 - I - 0x010653 04:8643: 21 AA     .dbyt $21AA ; ppu address
- D 0 - I - 0x010655 04:8645: 05        .byte $05   ; counter
- D 0 - I - 0x010656 04:8646: 00        .byte $00, $11, $1C, $29, $36   ; tiles

- D 0 - I - 0x01065B 04:864B: 21 AB     .dbyt $21AB ; ppu address
- D 0 - I - 0x01065D 04:864D: 05        .byte $05   ; counter
- D 0 - I - 0x01065E 04:864E: 07        .byte $07, $12, $1D, $2A, $37   ; tiles

- D 0 - I - 0x010663 04:8653: 21 CC     .dbyt $21CC ; ppu address
- D 0 - I - 0x010665 04:8655: 02        .byte $02   ; counter
- D 0 - I - 0x010666 04:8656: 13        .byte $13, $1E   ; tiles

- D 0 - I - 0x010668 04:8658: FF        .byte $FF   ; end token



_off022_8659_04:
_off022_8659_06:
- D 0 - I - 0x010669 04:8659: 07        .byte con_buf_mode_07   ; 

- D 0 - I - 0x01066A 04:865A: 21 88     .dbyt $2188 ; ppu address
- D 0 - I - 0x01066C 04:865C: 02        .byte $02   ; counter
- D 0 - I - 0x01066D 04:865D: 00        .byte $00, $00   ; tiles

- D 0 - I - 0x01066F 04:865F: 21 89     .dbyt $2189 ; ppu address
- D 0 - I - 0x010671 04:8661: 06        .byte $06   ; counter
- D 0 - I - 0x010672 04:8662: 00        .byte $00, $00, $1B, $28, $35, $68   ; tiles

- D 0 - I - 0x010678 04:8668: 21 8A     .dbyt $218A ; ppu address
- D 0 - I - 0x01067A 04:866A: 06        .byte $06   ; counter
- D 0 - I - 0x01067B 04:866B: 00        .byte $00, $11, $1C, $29, $36, $69   ; tiles

- D 0 - I - 0x010681 04:8671: 21 AB     .dbyt $21AB ; ppu address
- D 0 - I - 0x010683 04:8673: 05        .byte $05   ; counter
- D 0 - I - 0x010684 04:8674: 65        .byte $65, $1D, $2A, $67, $6A   ; tiles

- D 0 - I - 0x010689 04:8679: 21 CC     .dbyt $21CC ; ppu address
- D 0 - I - 0x01068B 04:867B: 02        .byte $02   ; counter
- D 0 - I - 0x01068C 04:867C: 66        .byte $66, $7F   ; tiles

- D 0 - I - 0x01068E 04:867E: FF        .byte $FF   ; end token



_off022_867F_05:
- D 0 - I - 0x01068F 04:867F: 07        .byte con_buf_mode_07   ; 

- D 0 - I - 0x010690 04:8680: 21 88     .dbyt $2188 ; ppu address
- D 0 - I - 0x010692 04:8682: 02        .byte $02   ; counter
- D 0 - I - 0x010693 04:8683: 6B        .byte $6B, $6E   ; tiles

- D 0 - I - 0x010695 04:8685: 21 89     .dbyt $2189 ; ppu address
- D 0 - I - 0x010697 04:8687: 06        .byte $06   ; counter
- D 0 - I - 0x010698 04:8688: 6C        .byte $6C, $6F, $72, $00, $00, $00   ; tiles

- D 0 - I - 0x01069E 04:868E: 21 8A     .dbyt $218A ; ppu address
- D 0 - I - 0x0106A0 04:8690: 06        .byte $06   ; counter
- D 0 - I - 0x0106A1 04:8691: 6D        .byte $6D, $70, $73, $75, $00, $78   ; tiles

- D 0 - I - 0x0106A7 04:8697: 21 AB     .dbyt $21AB ; ppu address
- D 0 - I - 0x0106A9 04:8699: 05        .byte $05   ; counter
- D 0 - I - 0x0106AA 04:869A: 71        .byte $71, $74, $76, $77, $6A   ; tiles

- D 0 - I - 0x0106AF 04:869F: FF        .byte $FF   ; end token



sub_86A0:
C - - - - - 0x0106B0 04:86A0: BC 10 07  LDY ram_0710_obj,X
C - - - - - 0x0106B3 04:86A3: B9 DD 86  LDA tbl_86DD,Y
C - - - - - 0x0106B6 04:86A6: 30 34     BMI bra_86DC_RTS
C - - - - - 0x0106B8 04:86A8: DE F4 06  DEC ram_06F4_obj,X
C - - - - - 0x0106BB 04:86AB: D0 2F     BNE bra_86DC_RTS
C - - - - - 0x0106BD 04:86AD: A9 30     LDA #$30
C - - - - - 0x0106BF 04:86AF: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x0106C2 04:86B2: A0 5A     LDY #con_obj_id_5A
C - - - - - 0x0106C4 04:86B4: 20 C8 AB  JSR sub_0x006BD8
C - - - - - 0x0106C7 04:86B7: 90 23     BCC bra_86DC_RTS
C - - - - - 0x0106C9 04:86B9: BC 10 07  LDY ram_0710_obj,X
C - - - - - 0x0106CC 04:86BC: B9 DD 86  LDA tbl_86DD,Y
C - - - - - 0x0106CF 04:86BF: 85 08     STA ram_0008
C - - - - - 0x0106D1 04:86C1: A8        TAY
C - - - - - 0x0106D2 04:86C2: B9 E5 86  LDA tbl_86E5,Y
C - - - - - 0x0106D5 04:86C5: 18        CLC
C - - - - - 0x0106D6 04:86C6: 7D 3C 05  ADC ram_pos_X_hi_enemy,X
C - - - - - 0x0106D9 04:86C9: A4 11     LDY ram_0011
C - - - - - 0x0106DB 04:86CB: 99 3C 05  STA ram_pos_X_hi_enemy,Y
C - - - - - 0x0106DE 04:86CE: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x0106E1 04:86D1: 38        SEC
C - - - - - 0x0106E2 04:86D2: E9 10     SBC #$10
C - - - - - 0x0106E4 04:86D4: 99 22 05  STA ram_pos_Y_hi_enemy,Y
C - - - - - 0x0106E7 04:86D7: A5 08     LDA ram_0008
C - - - - - 0x0106E9 04:86D9: 99 1E 07  STA ram_obj_flags,Y
bra_86DC_RTS:
C - - - - - 0x0106EC 04:86DC: 60        RTS



tbl_86DD:
- D 0 - - - 0x0106ED 04:86DD: 80        .byte $80   ; 00 
- D 0 - - - 0x0106EE 04:86DE: 00        .byte $00   ; 01 
- D 0 - - - 0x0106EF 04:86DF: 80        .byte $80   ; 02 
- D 0 - - - 0x0106F0 04:86E0: C0        .byte $C0   ; 03 
- D 0 - - - 0x0106F1 04:86E1: 80        .byte $80   ; 04 
- D 0 - - - 0x0106F2 04:86E2: 01        .byte $01   ; 05 
- D 0 - - - 0x0106F3 04:86E3: 80        .byte $80   ; 06 
- D 0 - - - 0x0106F4 04:86E4: C0        .byte $C0   ; 07 



tbl_86E5:
; bzk fortunately 0x0106CC reads only correct indexes
- D 0 - - - 0x0106F5 04:86E5: 30        .byte $30   ; 00 
- D 0 - - - 0x0106F6 04:86E6: D0        .byte $D0   ; 01 



sub_86E7:
C - - - - - 0x0106F7 04:86E7: BD 64 07  LDA ram_0764_obj,X
C - - - - - 0x0106FA 04:86EA: C9 01     CMP #$01
C - - - - - 0x0106FC 04:86EC: F0 05     BEQ bra_86F3
C - - - - - 0x0106FE 04:86EE: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x010701 04:86F1: F0 5D     BEQ bra_8750_RTS
bra_86F3:
C - - - - - 0x010703 04:86F3: A5 5B     LDA ram_frm_cnt_2
C - - - - - 0x010705 04:86F5: 4A        LSR
C - - - - - 0x010706 04:86F6: 90 58     BCC bra_8750_RTS
C - - - - - 0x010708 04:86F8: DE 72 07  DEC ram_0772_obj,X
C - - - - - 0x01070B 04:86FB: D0 53     BNE bra_8750_RTS
C - - - - - 0x01070D 04:86FD: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x010710 04:8700: 0A        ASL
C - - - - - 0x010711 04:8701: A8        TAY
C - - - - - 0x010712 04:8702: B9 54 87  LDA tbl_8754,Y
C - - - - - 0x010715 04:8705: 85 08     STA ram_0008
C - - - - - 0x010717 04:8707: B9 55 87  LDA tbl_8754 + $01,Y
C - - - - - 0x01071A 04:870A: 20 A8 85  JSR sub_85A8
C - - - - - 0x01071D 04:870D: FE 1E 07  INC ram_obj_flags,X
C - - - - - 0x010720 04:8710: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x010723 04:8713: C9 04     CMP #$04
C - - - - - 0x010725 04:8715: A9 06     LDA #$06
C - - - - - 0x010727 04:8717: 90 07     BCC bra_8720
C - - - - - 0x010729 04:8719: A9 00     LDA #$00
C - - - - - 0x01072B 04:871B: 9D 1E 07  STA ram_obj_flags,X
C - - - - - 0x01072E 04:871E: A9 50     LDA #$50
bra_8720:
C - - - - - 0x010730 04:8720: 9D 72 07  STA ram_0772_obj,X
C - - - - - 0x010733 04:8723: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x010736 04:8726: C9 02     CMP #$02
C - - - - - 0x010738 04:8728: D0 26     BNE bra_8750_RTS
C - - - - - 0x01073A 04:872A: A9 02     LDA #$02
C - - - - - 0x01073C 04:872C: 85 08     STA ram_0008
bra_872E_loop:
C - - - - - 0x01073E 04:872E: A0 35     LDY #con_obj_id_35
C - - - - - 0x010740 04:8730: 20 C8 AB  JSR sub_0x006BD8
C - - - - - 0x010743 04:8733: 90 1B     BCC bra_8750_RTS
C - - - - - 0x010745 04:8735: A4 08     LDY ram_0008
C - - - - - 0x010747 04:8737: B9 51 87  LDA tbl_8751_pos_X,Y
C - - - - - 0x01074A 04:873A: 18        CLC
C - - - - - 0x01074B 04:873B: 7D 3C 05  ADC ram_pos_X_hi_enemy,X
C - - - - - 0x01074E 04:873E: A4 11     LDY ram_0011
C - - - - - 0x010750 04:8740: 99 3C 05  STA ram_pos_X_hi_enemy,Y
C - - - - - 0x010753 04:8743: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x010756 04:8746: 18        CLC
C - - - - - 0x010757 04:8747: 69 12     ADC #$12
C - - - - - 0x010759 04:8749: 99 22 05  STA ram_pos_Y_hi_enemy,Y
C - - - - - 0x01075C 04:874C: C6 08     DEC ram_0008
C - - - - - 0x01075E 04:874E: 10 DE     BPL bra_872E_loop
bra_8750_RTS:
C - - - - - 0x010760 04:8750: 60        RTS



tbl_8751_pos_X:
- D 0 - - - 0x010761 04:8751: E0        .byte $E0   ; 00 
- D 0 - - - 0x010762 04:8752: 00        .byte $00   ; 01 
- D 0 - - - 0x010763 04:8753: 20        .byte $20   ; 02 



tbl_8754:
- D 0 - - - 0x010764 04:8754: 7A 87     .word off_877A_00
- D 0 - - - 0x010766 04:8756: 98 87     .word off_8798_01
- D 0 - - - 0x010768 04:8758: 7A 87     .word off_877A_02
- D 0 - - - 0x01076A 04:875A: 5C 87     .word off_875C_03



off_875C_03:
- D 0 - I - 0x01076C 04:875C: 06        .byte con_buf_mode_06   ; 

- D 0 - I - 0x01076D 04:875D: 22 8A     .dbyt $228A ; ppu address
- D 0 - I - 0x01076F 04:875F: 0C        .byte $0C   ; counter
- D 0 - I - 0x010770 04:8760: 53        .byte $53, $54, $55, $56, $53, $54, $55, $56, $53, $54, $55, $56   ; tiles

- D 0 - I - 0x01077C 04:876C: 22 AB     .dbyt $22AB ; ppu address
- D 0 - I - 0x01077E 04:876E: 0A        .byte $0A   ; counter
- D 0 - I - 0x01077F 04:876F: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; tiles

- D 0 - I - 0x010789 04:8779: FF        .byte $FF   ; end token



off_877A_00:
off_877A_02:
- D 0 - I - 0x01078A 04:877A: 06        .byte con_buf_mode_06   ; 

- D 0 - I - 0x01078B 04:877B: 22 8A     .dbyt $228A ; ppu address
- D 0 - I - 0x01078D 04:877D: 0C        .byte $0C   ; counter
- D 0 - I - 0x01078E 04:877E: 57        .byte $57, $58, $59, $5A, $57, $58, $59, $5A, $57, $58, $59, $5A   ; tiles

- D 0 - I - 0x01079A 04:878A: 22 AB     .dbyt $22AB ; ppu address
- D 0 - I - 0x01079C 04:878C: 0A        .byte $0A   ; counter
- D 0 - I - 0x01079D 04:878D: 5B        .byte $5B, $5C, $00, $00, $5B, $5C, $00, $00, $5B, $5C   ; tiles

- D 0 - I - 0x0107A7 04:8797: FF        .byte $FF   ; end token



off_8798_01:
- D 0 - I - 0x0107A8 04:8798: 06        .byte con_buf_mode_06   ; 

- D 0 - I - 0x0107A9 04:8799: 22 8A     .dbyt $228A ; ppu address
- D 0 - I - 0x0107AB 04:879B: 0C        .byte $0C   ; counter
- D 0 - I - 0x0107AC 04:879C: 5D        .byte $5D, $5E, $5F, $60, $5D, $5E, $5F, $60, $5E, $5D, $5F, $60   ; tiles

- D 0 - I - 0x0107B8 04:87A8: 22 AB     .dbyt $22AB ; ppu address
- D 0 - I - 0x0107BA 04:87AA: 0A        .byte $0A   ; counter
- D 0 - I - 0x0107BB 04:87AB: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; tiles

- D 0 - I - 0x0107C5 04:87B5: FF        .byte $FF   ; end token



sub_87B6:
C - - - - - 0x0107C6 04:87B6: BD 64 07  LDA ram_0764_obj,X
C - - - - - 0x0107C9 04:87B9: 20 09 E6  JSR sub_0x01E619_jump_to_pointers_after_jsr
- D 0 - I - 0x0107CC 04:87BC: C4 87     .word ofs_028_87C4_00
- D 0 - I - 0x0107CE 04:87BE: E8 87     .word ofs_028_87E8_01
- D 0 - I - 0x0107D0 04:87C0: F3 87     .word ofs_028_87F3_02
- D 0 - I - 0x0107D2 04:87C2: 06 88     .word ofs_028_8806_03



ofs_028_87C4_00:
C - - J - - 0x0107D4 04:87C4: BD 8E 07  LDA ram_078E_obj,X
C - - - - - 0x0107D7 04:87C7: D0 29     BNE bra_87F2_RTS
C - - - - - 0x0107D9 04:87C9: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x0107DC 04:87CC: C9 48     CMP #$48
C - - - - - 0x0107DE 04:87CE: 90 22     BCC bra_87F2_RTS
C - - - - - 0x0107E0 04:87D0: A9 F0     LDA #$F0
C - - - - - 0x0107E2 04:87D2: 20 FF 87  JSR sub_87FF
C - - - - - 0x0107E5 04:87D5: A9 20     LDA #$20
C - - - - - 0x0107E7 04:87D7: 20 99 AB  JSR sub_0x006BA9_set_dynamic_hp_to_boss
C - - - - - 0x0107EA 04:87DA: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x0107ED 04:87DD: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x0107F0 04:87E0: FE 80 07  INC ram_0780_obj,X
C - - - - - 0x0107F3 04:87E3: A0 02     LDY #$02
C - - - - - 0x0107F5 04:87E5: 4C F9 84  JMP loc_84F9



ofs_028_87E8_01:
C - - J - - 0x0107F8 04:87E8: A5 1B     LDA ram_frm_cnt_1
C - - - - - 0x0107FA 04:87EA: 4A        LSR
C - - - - - 0x0107FB 04:87EB: B0 05     BCS bra_87F2_RTS
C - - - - - 0x0107FD 04:87ED: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x010800 04:87F0: F0 10     BEQ bra_8802
bra_87F2_RTS:
C - - - - - 0x010802 04:87F2: 60        RTS



ofs_028_87F3_02:
C - - J - - 0x010803 04:87F3: A9 01     LDA #$01
C - - - - - 0x010805 04:87F5: 20 1D 88  JSR sub_881D
C - - - - - 0x010808 04:87F8: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x01080B 04:87FB: C9 A4     CMP #$A4
C - - - - - 0x01080D 04:87FD: 90 F3     BCC bra_87F2_RTS
sub_87FF:
C - - - - - 0x01080F 04:87FF: 9D E6 06  STA ram_06E6_obj,X
bra_8802:
C - - - - - 0x010812 04:8802: FE 64 07  INC ram_0764_obj,X
C - - - - - 0x010815 04:8805: 60        RTS



ofs_028_8806_03:
C - - J - - 0x010816 04:8806: A9 FF     LDA #$FF
C - - - - - 0x010818 04:8808: 20 1D 88  JSR sub_881D
C - - - - - 0x01081B 04:880B: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x01081E 04:880E: C9 48     CMP #$48
C - - - - - 0x010820 04:8810: B0 E0     BCS bra_87F2_RTS
C - - - - - 0x010822 04:8812: A9 F0     LDA #$F0
C - - - - - 0x010824 04:8814: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x010827 04:8817: A9 01     LDA #$01
C - - - - - 0x010829 04:8819: 9D 64 07  STA ram_0764_obj,X
C - - - - - 0x01082C 04:881C: 60        RTS



sub_881D:
C - - - - - 0x01082D 04:881D: 85 00     STA ram_0000
C - - - - - 0x01082F 04:881F: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x010832 04:8822: 18        CLC
C - - - - - 0x010833 04:8823: 65 00     ADC ram_0000
C - - - - - 0x010835 04:8825: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x010838 04:8828: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x01083B 04:882B: 18        CLC
C - - - - - 0x01083C 04:882C: 65 00     ADC ram_0000
C - - - - - 0x01083E 04:882E: 9D 22 05  STA ram_pos_Y_hi_enemy,X
bra_8831_RTS:
C - - - - - 0x010841 04:8831: 60        RTS



sub_8832:
C - - - - - 0x010842 04:8832: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x010845 04:8835: C9 90     CMP #$90
C - - - - - 0x010847 04:8837: B0 F8     BCS bra_8831_RTS
sub_8839:
C - - - - - 0x010849 04:8839: 20 5D A7  JSR sub_0x00676D
C - - - - - 0x01084C 04:883C: 4C 0A AA  JMP loc_0x006A1A


; bzk garbage, same code as 0x0047A9
- - - - - - 0x01084F 04:883F: A9 14     LDA #$14
- - - - - - 0x010851 04:8841: 85 08     STA ram_0008
- - - - - - 0x010853 04:8843: A0 00     LDY #$00
; bzk optimize, check ram_index_ppu_buffer first
- - - - - - 0x010855 04:8845: A6 1E     LDX ram_index_ppu_buffer
- - - - - - 0x010857 04:8847: E0 40     CPX #$40
- - - - - - 0x010859 04:8849: B0 0F     BCS bra_885A
; if buffer is not too loaded
bra_884B_loop:
- - - - - - 0x01085B 04:884B: B9 5D 88  LDA tbl_885D,Y
- - - - - - 0x01085E 04:884E: 9D 00 03  STA ram_nmt_buffer,X
- - - - - - 0x010861 04:8851: E8        INX
- - - - - - 0x010862 04:8852: C8        INY
- - - - - - 0x010863 04:8853: C6 08     DEC ram_0008
- - - - - - 0x010865 04:8855: D0 F4     BNE bra_884B_loop
- - - - - - 0x010867 04:8857: 86 1E     STX ram_index_ppu_buffer
- - - - - - 0x010869 04:8859: 18        CLC
bra_885A:
- - - - - - 0x01086A 04:885A: A6 10     LDX ram_0010
- - - - - - 0x01086C 04:885C: 60        RTS



tbl_885D:
; bzk garbage, same table as 0x015847
- - - - - - 0x01086D 04:885D: 03        .byte con_buf_mode_03   ; 

- - - - - - 0x01086E 04:885E: 23 D8     .dbyt $23D8 ; ppu address
- - - - - - 0x010870 04:8860: 12        .byte $12, $AA   ; counter + fill tile

- - - - - - 0x010872 04:8862: 06        .byte con_buf_mode_06   ; 

- - - - - - 0x010873 04:8863: 23 EA     .dbyt $23EA ; ppu address
- - - - - - 0x010875 04:8865: 05        .byte $05   ; counter
- - - - - - 0x010876 04:8866: AE        .byte $AE, $FA, $FA, $FA, $FA   ; tiles

- - - - - - 0x01087B 04:886B: FF        .byte $FF   ; change mode

- - - - - - 0x01087C 04:886C: 03        .byte con_buf_mode_03   ; 

- - - - - - 0x01087D 04:886D: 23 EF     .dbyt $23EF ; ppu address
- - - - - - 0x01087F 04:886F: 08        .byte $08, $AA   ; counter + fill tile



_off001_0x010881_5D_giant_mouth:
- D 0 - I - 0x010881 04:8871: 7D 88     .word ofs_038_5D_887D_01_initialize_object ; 
- D 0 - I - 0x010883 04:8873: B8 88     .word ofs_038_5D_88B8_02 ; 
- D 0 - I - 0x010885 04:8875: CC 88     .word ofs_038_5D_88CC_03 ; 
- D 0 - I - 0x010887 04:8877: 4E 89     .word ofs_038_5D_894E_04 ; 
- D 0 - I - 0x010889 04:8879: FD A2     .word ofs_038_5D_0x00630D_05 ; 
- D 0 - I - 0x01088B 04:887B: 3D A3     .word ofs_038_5D_0x00634D_06_delete_object_04 ; 



ofs_038_5D_887D_01_initialize_object:
C - - J - - 0x01088D 04:887D: A9 01     LDA #$01
C - - - - - 0x01088F 04:887F: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x010892 04:8882: A9 01     LDA #$01
C - - - - - 0x010894 04:8884: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x010897 04:8887: A9 06     LDA #$06
C - - - - - 0x010899 04:8889: 20 95 AB  JSR sub_0x006BA5_set_dynamic_hp_to_enemy
C - - - - - 0x01089C 04:888C: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x01089F 04:888F: 4A        LSR
C - - - - - 0x0108A0 04:8890: A9 02     LDA #$02
C - - - - - 0x0108A2 04:8892: 90 14     BCC bra_88A8
C - - - - - 0x0108A4 04:8894: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x0108A7 04:8897: 38        SEC
C - - - - - 0x0108A8 04:8898: E9 08     SBC #$08
C - - - - - 0x0108AA 04:889A: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x0108AD 04:889D: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x0108B0 04:88A0: 18        CLC
C - - - - - 0x0108B1 04:88A1: 69 08     ADC #$08
C - - - - - 0x0108B3 04:88A3: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x0108B6 04:88A6: A9 FF     LDA #$FF
bra_88A8:
C - - - - - 0x0108B8 04:88A8: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x0108BB 04:88AB: A9 01     LDA #$01
C - - - - - 0x0108BD 04:88AD: 9D 10 07  STA ram_0710_obj,X
C - - - - - 0x0108C0 04:88B0: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x0108C3 04:88B3: A9 01     LDA #$01
C - - - - - 0x0108C5 04:88B5: 4C E0 A2  JMP loc_0x0062F0



ofs_038_5D_88B8_02:
C - - J - - 0x0108C8 04:88B8: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x0108CB 04:88BB: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x0108CE 04:88BE: 4A        LSR
C - - - - - 0x0108CF 04:88BF: 90 07     BCC bra_88C8
C - - - - - 0x0108D1 04:88C1: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x0108D4 04:88C4: C9 28     CMP #$28
C - - - - - 0x0108D6 04:88C6: 90 03     BCC bra_88CB_RTS
bra_88C8:
C - - - - - 0x0108D8 04:88C8: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state
bra_88CB_RTS:
C - - - - - 0x0108DB 04:88CB: 60        RTS



ofs_038_5D_88CC_03:
C - - J - - 0x0108DC 04:88CC: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x0108DF 04:88CF: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x0108E2 04:88D2: D0 70     BNE bra_8944_RTS
C - - - - - 0x0108E4 04:88D4: 20 5E 89  JSR sub_895E
C - - - - - 0x0108E7 04:88D7: A9 01     LDA #$01
C - - - - - 0x0108E9 04:88D9: B0 5D     BCS bra_8938
C - - - - - 0x0108EB 04:88DB: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x0108EE 04:88DE: D0 28     BNE bra_8908
C - - - - - 0x0108F0 04:88E0: FE 10 07  INC ram_0710_obj,X
C - - - - - 0x0108F3 04:88E3: BC 22 05  LDY ram_pos_Y_hi_enemy,X
C - - - - - 0x0108F6 04:88E6: C0 C0     CPY #$C0
C - - - - - 0x0108F8 04:88E8: B0 0F     BCS bra_88F9
C - - - - - 0x0108FA 04:88EA: BD 10 07  LDA ram_0710_obj,X
C - - - - - 0x0108FD 04:88ED: C9 05     CMP #$05
C - - - - - 0x0108FF 04:88EF: B0 08     BCS bra_88F9
C - - - - - 0x010901 04:88F1: C9 02     CMP #$02
C - - - - - 0x010903 04:88F3: D0 41     BNE bra_8936
C - - - - - 0x010905 04:88F5: A9 1E     LDA #$1E
C - - - - - 0x010907 04:88F7: D0 3F     BNE bra_8938    ; jmp
bra_88F9:
C - - - - - 0x010909 04:88F9: A9 01     LDA #$01
C - - - - - 0x01090B 04:88FB: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x01090E 04:88FE: DE 10 07  DEC ram_0710_obj,X
C - - - - - 0x010911 04:8901: DE 10 07  DEC ram_0710_obj,X
C - - - - - 0x010914 04:8904: A9 0C     LDA #$0C
C - - - - - 0x010916 04:8906: D0 30     BNE bra_8938    ; jmp
bra_8908:
C - - - - - 0x010918 04:8908: DE 10 07  DEC ram_0710_obj,X
C - - - - - 0x01091B 04:890B: A9 FF     LDA #$FF
C - - - - - 0x01091D 04:890D: BC 22 05  LDY ram_pos_Y_hi_enemy,X
C - - - - - 0x010920 04:8910: C0 C0     CPY #$C0
C - - - - - 0x010922 04:8912: B0 07     BCS bra_891B
C - - - - - 0x010924 04:8914: BC 56 07  LDY ram_0756_obj,X
C - - - - - 0x010927 04:8917: F0 02     BEQ bra_891B
C - - - - - 0x010929 04:8919: A9 01     LDA #$01
bra_891B:
C - - - - - 0x01092B 04:891B: DD 10 07  CMP ram_0710_obj,X
C - - - - - 0x01092E 04:891E: D0 16     BNE bra_8936
C - - - - - 0x010930 04:8920: A8        TAY
C - - - - - 0x010931 04:8921: 30 22     BMI bra_8945
C - - - - - 0x010933 04:8923: FE 10 07  INC ram_0710_obj,X
C - - - - - 0x010936 04:8926: FE 10 07  INC ram_0710_obj,X
C - - - - - 0x010939 04:8929: BD 56 07  LDA ram_0756_obj,X
C - - - - - 0x01093C 04:892C: 30 03     BMI bra_8931
C - - - - - 0x01093E 04:892E: DE 56 07  DEC ram_0756_obj,X
bra_8931:
C - - - - - 0x010941 04:8931: A9 00     LDA #$00
C - - - - - 0x010943 04:8933: 9D 48 07  STA ram_0748_obj,X
bra_8936:
C - - - - - 0x010946 04:8936: A9 08     LDA #$08
bra_8938:
C - - - - - 0x010948 04:8938: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x01094B 04:893B: BC 10 07  LDY ram_0710_obj,X
C - - - - - 0x01094E 04:893E: B9 48 89  LDA tbl_8948,Y
C - - - - - 0x010951 04:8941: 9D 2C 07  STA ram_072C_obj,X
bra_8944_RTS:
C - - - - - 0x010954 04:8944: 60        RTS
bra_8945:
C - - - - - 0x010955 04:8945: 4C 75 A2  JMP loc_0x006285_delete_object_02



tbl_8948:
- D 0 - - - 0x010958 04:8948: 81        .byte $81   ; 00 
- D 0 - - - 0x010959 04:8949: 01        .byte $01   ; 01 
- D 0 - - - 0x01095A 04:894A: 01        .byte $01   ; 02 
- D 0 - - - 0x01095B 04:894B: 00        .byte $00   ; 03 
- D 0 - - - 0x01095C 04:894C: 00        .byte $00   ; 04 
- - - - - - 0x01095D 04:894D: 81        .byte $81   ; 05 



ofs_038_5D_894E_04:
C - - J - - 0x01095E 04:894E: A9 05     LDA #$05
C - - - - - 0x010960 04:8950: 9D 10 07  STA ram_0710_obj,X
C - - - - - 0x010963 04:8953: 20 5E 89  JSR sub_895E
C - - - - - 0x010966 04:8956: B0 03     BCS bra_895B
C - - - - - 0x010968 04:8958: 4C 9A A2  JMP loc_0x0062AA
bra_895B:
C - - - - - 0x01096B 04:895B: 4C B7 A6  JMP loc_0x0066C7_delete_object_03



sub_895E:
C - - - - - 0x01096E 04:895E: A5 1E     LDA ram_index_ppu_buffer
C - - - - - 0x010970 04:8960: C9 20     CMP #$20
C - - - - - 0x010972 04:8962: A9 01     LDA #$01    ; bzk optimize, useless load
C - - - - - 0x010974 04:8964: B0 DE     BCS bra_8944_RTS
C - - - - - 0x010976 04:8966: 20 FF 89  JSR sub_89FF
C - - - - - 0x010979 04:8969: BD 10 07  LDA ram_0710_obj,X
C - - - - - 0x01097C 04:896C: 0A        ASL
C - - - - - 0x01097D 04:896D: A8        TAY
C - - - - - 0x01097E 04:896E: B9 2E 8A  LDA tbl_8A2E,Y
C - - - - - 0x010981 04:8971: 85 08     STA ram_0008
C - - - - - 0x010983 04:8973: B9 2F 8A  LDA tbl_8A2E + $01,Y
C - - - - - 0x010986 04:8976: 85 09     STA ram_0009
C - - - - - 0x010988 04:8978: A0 00     LDY #$00
C - - - - - 0x01098A 04:897A: A6 1E     LDX ram_index_ppu_buffer
C - - - - - 0x01098C 04:897C: A9 06     LDA #con_buf_mode_06
C - - - - - 0x01098E 04:897E: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x010991 04:8981: E8        INX
bra_8982_loop:
C - - - - - 0x010992 04:8982: B1 08     LDA (ram_0008),Y
C - - - - - 0x010994 04:8984: C9 FF     CMP #$FF
C - - - - - 0x010996 04:8986: F0 26     BEQ bra_89AE_FF
C - - - - - 0x010998 04:8988: 18        CLC
C - - - - - 0x010999 04:8989: 65 00     ADC ram_0000    ; ppu hi
C - - - - - 0x01099B 04:898B: 9D 01 03  STA ram_nmt_buffer + $01,X
C - - - - - 0x01099E 04:898E: A5 01     LDA ram_0001    ; ppu lo
C - - - - - 0x0109A0 04:8990: 69 00     ADC #$00
C - - - - - 0x0109A2 04:8992: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x0109A5 04:8995: E8        INX
C - - - - - 0x0109A6 04:8996: E8        INX
C - - - - - 0x0109A7 04:8997: C8        INY
C - - - - - 0x0109A8 04:8998: B1 08     LDA (ram_0008),Y
C - - - - - 0x0109AA 04:899A: 85 0A     STA ram_000A    ; counter
C - - - - - 0x0109AC 04:899C: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x0109AF 04:899F: E8        INX
C - - - - - 0x0109B0 04:89A0: C8        INY
bra_89A1_loop:
C - - - - - 0x0109B1 04:89A1: B1 08     LDA (ram_0008),Y
C - - - - - 0x0109B3 04:89A3: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x0109B6 04:89A6: E8        INX
C - - - - - 0x0109B7 04:89A7: C8        INY
C - - - - - 0x0109B8 04:89A8: C6 0A     DEC ram_000A
C - - - - - 0x0109BA 04:89AA: D0 F5     BNE bra_89A1_loop
C - - - - - 0x0109BC 04:89AC: F0 D4     BEQ bra_8982_loop    ; jmp
bra_89AE_FF:
C - - - - - 0x0109BE 04:89AE: C8        INY
C - - - - - 0x0109BF 04:89AF: A5 00     LDA ram_0000
C - - - - - 0x0109C1 04:89B1: 0A        ASL
C - - - - - 0x0109C2 04:89B2: 26 01     ROL ram_0001
C - - - - - 0x0109C4 04:89B4: 0A        ASL
C - - - - - 0x0109C5 04:89B5: 0A        ASL
C - - - - - 0x0109C6 04:89B6: 46 01     LSR ram_0001
C - - - - - 0x0109C8 04:89B8: 6A        ROR
C - - - - - 0x0109C9 04:89B9: 46 01     LSR ram_0001
C - - - - - 0x0109CB 04:89BB: 6A        ROR
C - - - - - 0x0109CC 04:89BC: 46 01     LSR ram_0001
C - - - - - 0x0109CE 04:89BE: 6A        ROR
C - - - - - 0x0109CF 04:89BF: 4A        LSR
C - - - - - 0x0109D0 04:89C0: 4A        LSR
C - - - - - 0x0109D1 04:89C1: 09 C0     ORA #$C0
C - - - - - 0x0109D3 04:89C3: 85 00     STA ram_0000
C - - - - - 0x0109D5 04:89C5: A9 02     LDA #$02
C - - - - - 0x0109D7 04:89C7: 85 01     STA ram_0001
bra_89C9_loop:
C - - - - - 0x0109D9 04:89C9: A9 23     LDA #$23    ; ppu hi
C - - - - - 0x0109DB 04:89CB: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x0109DE 04:89CE: E8        INX
C - - - - - 0x0109DF 04:89CF: A5 00     LDA ram_0000    ; ppu lo
C - - - - - 0x0109E1 04:89D1: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x0109E4 04:89D4: E8        INX
C - - - - - 0x0109E5 04:89D5: A9 02     LDA #$02    ; counter
C - - - - - 0x0109E7 04:89D7: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x0109EA 04:89DA: 85 02     STA ram_0002
C - - - - - 0x0109EC 04:89DC: E8        INX
bra_89DD_loop:
C - - - - - 0x0109ED 04:89DD: B1 08     LDA (ram_0008),Y
C - - - - - 0x0109EF 04:89DF: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x0109F2 04:89E2: E8        INX
C - - - - - 0x0109F3 04:89E3: C8        INY
C - - - - - 0x0109F4 04:89E4: C6 02     DEC ram_0002
C - - - - - 0x0109F6 04:89E6: D0 F5     BNE bra_89DD_loop
C - - - - - 0x0109F8 04:89E8: A5 00     LDA ram_0000
C - - - - - 0x0109FA 04:89EA: 18        CLC
C - - - - - 0x0109FB 04:89EB: 69 08     ADC #$08
C - - - - - 0x0109FD 04:89ED: 85 00     STA ram_0000
C - - - - - 0x0109FF 04:89EF: C6 01     DEC ram_0001
C - - - - - 0x010A01 04:89F1: D0 D6     BNE bra_89C9_loop
; close buffer
C - - - - - 0x010A03 04:89F3: A9 FF     LDA #$FF
C - - - - - 0x010A05 04:89F5: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x010A08 04:89F8: E8        INX
C - - - - - 0x010A09 04:89F9: 86 1E     STX ram_index_ppu_buffer
C - - - - - 0x010A0B 04:89FB: A6 10     LDX ram_0010
C - - - - - 0x010A0D 04:89FD: 18        CLC
C - - - - - 0x010A0E 04:89FE: 60        RTS



sub_89FF:
C - - - - - 0x010A0F 04:89FF: A9 08     LDA #$08
C - - - - - 0x010A11 04:8A01: 85 01     STA ram_0001
C - - - - - 0x010A13 04:8A03: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x010A16 04:8A06: 38        SEC
C - - - - - 0x010A17 04:8A07: E9 10     SBC #$10
C - - - - - 0x010A19 04:8A09: 18        CLC
C - - - - - 0x010A1A 04:8A0A: 65 FC     ADC ram_scroll_Y
C - - - - - 0x010A1C 04:8A0C: B0 04     BCS bra_8A12
C - - - - - 0x010A1E 04:8A0E: C9 F0     CMP #$F0
C - - - - - 0x010A20 04:8A10: 90 02     BCC bra_8A14
bra_8A12:
C - - - - - 0x010A22 04:8A12: 69 0F     ADC #$0F
bra_8A14:
C - - - - - 0x010A24 04:8A14: 29 E0     AND #$E0
C - - - - - 0x010A26 04:8A16: 0A        ASL
C - - - - - 0x010A27 04:8A17: 26 01     ROL ram_0001
C - - - - - 0x010A29 04:8A19: 0A        ASL
C - - - - - 0x010A2A 04:8A1A: 26 01     ROL ram_0001
C - - - - - 0x010A2C 04:8A1C: 85 02     STA ram_0002
C - - - - - 0x010A2E 04:8A1E: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x010A31 04:8A21: 38        SEC
C - - - - - 0x010A32 04:8A22: E9 10     SBC #$10
C - - - - - 0x010A34 04:8A24: 4A        LSR
C - - - - - 0x010A35 04:8A25: 4A        LSR
C - - - - - 0x010A36 04:8A26: 4A        LSR
C - - - - - 0x010A37 04:8A27: 29 1C     AND #$1C
C - - - - - 0x010A39 04:8A29: 05 02     ORA ram_0002
C - - - - - 0x010A3B 04:8A2B: 85 00     STA ram_0000
C - - - - - 0x010A3D 04:8A2D: 60        RTS



tbl_8A2E:
- D 0 - - - 0x010A3E 04:8A2E: 3A 8A     .word _off023_8A3A_00
- D 0 - - - 0x010A40 04:8A30: 47 8A     .word _off023_8A47_01
- D 0 - - - 0x010A42 04:8A32: 60 8A     .word _off023_8A60_02
- D 0 - - - 0x010A44 04:8A34: 81 8A     .word _off023_8A81_03
- D 0 - - - 0x010A46 04:8A36: B2 8A     .word _off023_8AB2_04
- D 0 - - - 0x010A48 04:8A38: E3 8A     .word _off023_8AE3_05



_off023_8A3A_00:
- D 0 - I - 0x010A4A 04:8A3A: 63        .byte $63   ; ppu address offset
- D 0 - I - 0x010A4B 04:8A3B: 02        .byte $02   ; counter
- D 0 - I - 0x010A4C 04:8A3C: 09        .byte $09, $0B   ; tiles

- D 0 - I - 0x010A4E 04:8A3E: 83        .byte $83   ; ppu address offset
- D 0 - I - 0x010A4F 04:8A3F: 02        .byte $02   ; counter
- D 0 - I - 0x010A50 04:8A40: 47        .byte $47, $0B   ; tiles

- D 0 - I - 0x010A52 04:8A42: FF        .byte $FF   ; end token + last 4 tiles
- D 0 - I - 0x010A53 04:8A43: 00        .byte $00, $00   ; 
- D 0 - I - 0x010A55 04:8A45: 00        .byte $00, $00   ; 



_off023_8A47_01:
- D 0 - I - 0x010A57 04:8A47: 43        .byte $43   ; ppu address offset
- D 0 - I - 0x010A58 04:8A48: 02        .byte $02   ; counter
- D 0 - I - 0x010A59 04:8A49: 0C        .byte $0C, $0A   ; tiles

- D 0 - I - 0x010A5B 04:8A4B: 62        .byte $62   ; ppu address offset
- D 0 - I - 0x010A5C 04:8A4C: 04        .byte $04   ; counter
- D 0 - I - 0x010A5D 04:8A4D: 0A        .byte $0A, $88, $89, $0C   ; tiles

- D 0 - I - 0x010A61 04:8A51: 82        .byte $82   ; ppu address offset
- D 0 - I - 0x010A62 04:8A52: 04        .byte $04   ; counter
- D 0 - I - 0x010A63 04:8A53: 0A        .byte $0A, $8A, $8B, $0C   ; tiles

- D 0 - I - 0x010A67 04:8A57: A3        .byte $A3   ; ppu address offset
- D 0 - I - 0x010A68 04:8A58: 02        .byte $02   ; counter
- D 0 - I - 0x010A69 04:8A59: 0C        .byte $0C, $0A   ; tiles

- D 0 - I - 0x010A6B 04:8A5B: FF        .byte $FF   ; end token + last 4 tiles
- D 0 - I - 0x010A6C 04:8A5C: 00        .byte $00, $00   ; 
- D 0 - I - 0x010A6E 04:8A5E: 00        .byte $00, $00   ; 



_off023_8A60_02:
- D 0 - I - 0x010A70 04:8A60: 42        .byte $42   ; ppu address offset
- D 0 - I - 0x010A71 04:8A61: 04        .byte $04   ; counter
- D 0 - I - 0x010A72 04:8A62: 0B        .byte $0B, $8C, $8D, $47   ; tiles

- D 0 - I - 0x010A76 04:8A66: 61        .byte $61   ; ppu address offset
- D 0 - I - 0x010A77 04:8A67: 06        .byte $06   ; counter
- D 0 - I - 0x010A78 04:8A68: 0C        .byte $0C, $8E, $8F, $90, $91, $0A   ; tiles

- D 0 - I - 0x010A7E 04:8A6E: 81        .byte $81   ; ppu address offset
- D 0 - I - 0x010A7F 04:8A6F: 06        .byte $06   ; counter
- D 0 - I - 0x010A80 04:8A70: 0C        .byte $0C, $92, $93, $94, $95, $0A   ; tiles

- D 0 - I - 0x010A86 04:8A76: A2        .byte $A2   ; ppu address offset
- D 0 - I - 0x010A87 04:8A77: 04        .byte $04   ; counter
- D 0 - I - 0x010A88 04:8A78: 0B        .byte $0B, $96, $97, $09   ; tiles

- D 0 - I - 0x010A8C 04:8A7C: FF        .byte $FF   ; end token + last 4 tiles
- D 0 - I - 0x010A8D 04:8A7D: 00        .byte $00, $00   ; 
- D 0 - I - 0x010A8F 04:8A7F: 00        .byte $00, $00   ; 



_off023_8A81_03:
- D 0 - I - 0x010A91 04:8A81: 22        .byte $22   ; ppu address offset
- D 0 - I - 0x010A92 04:8A82: 04        .byte $04   ; counter
- D 0 - I - 0x010A93 04:8A83: 0B        .byte $0B, $0C, $0A, $09   ; tiles

- D 0 - I - 0x010A97 04:8A87: 41        .byte $41   ; ppu address offset
- D 0 - I - 0x010A98 04:8A88: 06        .byte $06   ; counter
- D 0 - I - 0x010A99 04:8A89: 47        .byte $47, $98, $99, $9A, $9B, $0B   ; tiles

- D 0 - I - 0x010A9F 04:8A8F: 61        .byte $61   ; ppu address offset
- D 0 - I - 0x010AA0 04:8A90: 06        .byte $06   ; counter
- D 0 - I - 0x010AA1 04:8A91: 9C        .byte $9C, $9D, $9E, $9F, $A0, $A1   ; tiles

- D 0 - I - 0x010AA7 04:8A97: 81        .byte $81   ; ppu address offset
- D 0 - I - 0x010AA8 04:8A98: 06        .byte $06   ; counter
- D 0 - I - 0x010AA9 04:8A99: A2        .byte $A2, $A3, $A4, $A5, $A6, $A7   ; tiles

- D 0 - I - 0x010AAF 04:8A9F: A1        .byte $A1   ; ppu address offset
- D 0 - I - 0x010AB0 04:8AA0: 06        .byte $06   ; counter
- D 0 - I - 0x010AB1 04:8AA1: 09        .byte $09, $A8, $A9, $AA, $AB, $0B   ; tiles

- D 0 - I - 0x010AB7 04:8AA7: C2        .byte $C2   ; ppu address offset
- D 0 - I - 0x010AB8 04:8AA8: 04        .byte $04   ; counter
- D 0 - I - 0x010AB9 04:8AA9: 0B        .byte $0B, $0C, $0A, $47   ; tiles

- D 0 - I - 0x010ABD 04:8AAD: FF        .byte $FF   ; end token + last 4 tiles
- D 0 - I - 0x010ABE 04:8AAE: 80        .byte $80, $20   ; 
- D 0 - I - 0x010AC0 04:8AB0: 08        .byte $08, $02   ; 



_off023_8AB2_04:
- D 0 - I - 0x010AC2 04:8AB2: 22        .byte $22   ; ppu address offset
- D 0 - I - 0x010AC3 04:8AB3: 04        .byte $04   ; counter
- D 0 - I - 0x010AC4 04:8AB4: AC        .byte $AC, $AD, $AE, $AF   ; tiles

- D 0 - I - 0x010AC8 04:8AB8: 41        .byte $41   ; ppu address offset
- D 0 - I - 0x010AC9 04:8AB9: 06        .byte $06   ; counter
- D 0 - I - 0x010ACA 04:8ABA: B0        .byte $B0, $B1, $B2, $B3, $B4, $B5   ; tiles

- D 0 - I - 0x010AD0 04:8AC0: 61        .byte $61   ; ppu address offset
- D 0 - I - 0x010AD1 04:8AC1: 06        .byte $06   ; counter
- D 0 - I - 0x010AD2 04:8AC2: B6        .byte $B6, $B7, $B8, $B9, $BA, $BB   ; tiles

- D 0 - I - 0x010AD8 04:8AC8: 81        .byte $81   ; ppu address offset
- D 0 - I - 0x010AD9 04:8AC9: 06        .byte $06   ; counter
- D 0 - I - 0x010ADA 04:8ACA: BC        .byte $BC, $BD, $BE, $BF, $C0, $C1   ; tiles

- D 0 - I - 0x010AE0 04:8AD0: A1        .byte $A1   ; ppu address offset
- D 0 - I - 0x010AE1 04:8AD1: 06        .byte $06   ; counter
- D 0 - I - 0x010AE2 04:8AD2: C2        .byte $C2, $C3, $C4, $C5, $C6, $C7   ; tiles

- D 0 - I - 0x010AE8 04:8AD8: C2        .byte $C2   ; ppu address offset
- D 0 - I - 0x010AE9 04:8AD9: 04        .byte $04   ; counter
- D 0 - I - 0x010AEA 04:8ADA: C8        .byte $C8, $C9, $CA, $CB   ; tiles

- D 0 - I - 0x010AEE 04:8ADE: FF        .byte $FF   ; end token + last 4 tiles
- D 0 - I - 0x010AEF 04:8ADF: 80        .byte $80, $20   ; 
- D 0 - I - 0x010AF1 04:8AE1: 08        .byte $08, $02   ; 



_off023_8AE3_05:
- D 0 - I - 0x010AF3 04:8AE3: 22        .byte $22   ; ppu address offset
- D 0 - I - 0x010AF4 04:8AE4: 04        .byte $04   ; counter
- D 0 - I - 0x010AF5 04:8AE5: 0B        .byte $0B, $0C, $0A, $09   ; tiles

- D 0 - I - 0x010AF9 04:8AE9: 41        .byte $41   ; ppu address offset
- D 0 - I - 0x010AFA 04:8AEA: 06        .byte $06   ; counter
- D 0 - I - 0x010AFB 04:8AEB: 47        .byte $47, $0B, $0C, $0A, $47, $0B   ; tiles

- D 0 - I - 0x010B01 04:8AF1: 61        .byte $61   ; ppu address offset
- D 0 - I - 0x010B02 04:8AF2: 06        .byte $06   ; counter
- D 0 - I - 0x010B03 04:8AF3: 0C        .byte $0C, $0A, $09, $0B, $0C, $0A   ; tiles

- D 0 - I - 0x010B09 04:8AF9: 81        .byte $81   ; ppu address offset
- D 0 - I - 0x010B0A 04:8AFA: 06        .byte $06   ; counter
- D 0 - I - 0x010B0B 04:8AFB: 0C        .byte $0C, $0A, $47, $0B, $0C, $0A   ; tiles

- D 0 - I - 0x010B11 04:8B01: A1        .byte $A1   ; ppu address offset
- D 0 - I - 0x010B12 04:8B02: 06        .byte $06   ; counter
- D 0 - I - 0x010B13 04:8B03: 09        .byte $09, $0B, $0C, $0A, $09, $0B   ; tiles

- D 0 - I - 0x010B19 04:8B09: C2        .byte $C2   ; ppu address offset
- D 0 - I - 0x010B1A 04:8B0A: 04        .byte $04   ; counter
- D 0 - I - 0x010B1B 04:8B0B: 0B        .byte $0B, $0C, $0B, $0C   ; tiles

- D 0 - I - 0x010B1F 04:8B0F: FF        .byte $FF   ; end token + last 4 tiles
- D 0 - I - 0x010B20 04:8B10: 00        .byte $00, $00   ; 
- D 0 - I - 0x010B22 04:8B12: 00        .byte $00, $00   ; 



_off001_0x010B24_5E_spawner_giant_mouths:
- D 0 - I - 0x010B24 04:8B14: 18 8B     .word ofs_038_5E_8B18_01_initialize_object ; 
- D 0 - I - 0x010B26 04:8B16: 22 8B     .word ofs_038_5E_8B22_02 ; 



ofs_038_5E_8B18_01_initialize_object:
C - - J - - 0x010B28 04:8B18: A9 F0     LDA #con__hp_F0
C - - - - - 0x010B2A 04:8B1A: 9D 76 06  STA ram_obj_hp,X
C - - - - - 0x010B2D 04:8B1D: A9 01     LDA #$01
C - - - - - 0x010B2F 04:8B1F: 4C E0 A2  JMP loc_0x0062F0



ofs_038_5E_8B22_02:
C - - J - - 0x010B32 04:8B22: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x010B35 04:8B25: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x010B38 04:8B28: C9 E0     CMP #$E0
C - - - - - 0x010B3A 04:8B2A: 90 11     BCC bra_8B3D
C - - - - - 0x010B3C 04:8B2C: BC 56 07  LDY ram_0756_obj,X
C - - - - - 0x010B3F 04:8B2F: 30 31     BMI bra_8B62
C - - - - - 0x010B41 04:8B31: B9 65 8B  LDA tbl_8B65,Y
C - - - - - 0x010B44 04:8B34: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x010B47 04:8B37: B9 68 8B  LDA tbl_8B68,Y
C - - - - - 0x010B4A 04:8B3A: 9D 22 05  STA ram_pos_Y_hi_enemy,X
bra_8B3D:
C - - - - - 0x010B4D 04:8B3D: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x010B50 04:8B40: D0 1F     BNE bra_8B61_RTS
C - - - - - 0x010B52 04:8B42: 20 6B 8B  JSR sub_8B6B
C - - - - - 0x010B55 04:8B45: A9 01     LDA #$01
C - - - - - 0x010B57 04:8B47: B0 15     BCS bra_8B5E
C - - - - - 0x010B59 04:8B49: A0 5D     LDY #con_obj_id_5D
C - - - - - 0x010B5B 04:8B4B: 20 C8 AB  JSR sub_0x006BD8
C - - - - - 0x010B5E 04:8B4E: 90 0E     BCC bra_8B5E
C - - - - - 0x010B60 04:8B50: A4 11     LDY ram_0011
C - - - - - 0x010B62 04:8B52: A5 08     LDA ram_0008
C - - - - - 0x010B64 04:8B54: 99 22 05  STA ram_pos_Y_hi_enemy,Y
C - - - - - 0x010B67 04:8B57: A5 09     LDA ram_0009
C - - - - - 0x010B69 04:8B59: 99 3C 05  STA ram_pos_X_hi_enemy,Y
C - - - - - 0x010B6C 04:8B5C: A9 47     LDA #$47
bra_8B5E:
C - - - - - 0x010B6E 04:8B5E: 9D E6 06  STA ram_06E6_obj,X
bra_8B61_RTS:
C - - - - - 0x010B71 04:8B61: 60        RTS
bra_8B62:
C - - - - - 0x010B72 04:8B62: 4C 75 A2  JMP loc_0x006285_delete_object_02



tbl_8B65:
- D 0 - - - 0x010B75 04:8B65: 01        .byte $01   ; 00 
- D 0 - - - 0x010B76 04:8B66: 02        .byte $02   ; 01 
- D 0 - - - 0x010B77 04:8B67: 80        .byte $80   ; 02 



tbl_8B68:
- D 0 - - - 0x010B78 04:8B68: 00        .byte $00   ; 00 
- D 0 - - - 0x010B79 04:8B69: C0        .byte $C0   ; 01 
- D 0 - - - 0x010B7A 04:8B6A: 00        .byte $00   ; 02 



sub_8B6B:
C - - - - - 0x010B7B 04:8B6B: A5 23     LDA ram_random
C - - - - - 0x010B7D 04:8B6D: 4A        LSR
C - - - - - 0x010B7E 04:8B6E: 29 07     AND #$07
C - - - - - 0x010B80 04:8B70: A8        TAY
C - - - - - 0x010B81 04:8B71: B9 31 8C  LDA tbl_8C31,Y
C - - - - - 0x010B84 04:8B74: 85 09     STA ram_0009
C - - - - - 0x010B86 04:8B76: A5 23     LDA ram_random
C - - - - - 0x010B88 04:8B78: 65 5B     ADC ram_frm_cnt_2
C - - - - - 0x010B8A 04:8B7A: 4A        LSR
C - - - - - 0x010B8B 04:8B7B: 4A        LSR
C - - - - - 0x010B8C 04:8B7C: 4A        LSR
C - - - - - 0x010B8D 04:8B7D: 29 07     AND #$07
C - - - - - 0x010B8F 04:8B7F: A8        TAY
C - - - - - 0x010B90 04:8B80: B9 29 8C  LDA tbl_8C29,Y
C - - - - - 0x010B93 04:8B83: 85 08     STA ram_0008
C - - - - - 0x010B95 04:8B85: FE 48 07  INC ram_0748_obj,X
C - - - - - 0x010B98 04:8B88: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x010B9B 04:8B8B: 29 01     AND #$01
C - - - - - 0x010B9D 04:8B8D: A8        TAY
C - - - - - 0x010B9E 04:8B8E: B9 CA 00  LDA ram_plr_game_over,Y
C - - - - - 0x010BA1 04:8B91: F0 03     BEQ bra_8B96
C - - - - - 0x010BA3 04:8B93: 49 01     EOR #$01
C - - - - - 0x010BA5 04:8B95: A8        TAY
bra_8B96:
C - - - - - 0x010BA6 04:8B96: B9 4C 05  LDA ram_pos_X_hi_plr,Y
C - - - - - 0x010BA9 04:8B99: 18        CLC
C - - - - - 0x010BAA 04:8B9A: 65 09     ADC ram_0009
C - - - - - 0x010BAC 04:8B9C: C9 20     CMP #$20
C - - - - - 0x010BAE 04:8B9E: 90 04     BCC bra_8BA4
C - - - - - 0x010BB0 04:8BA0: C9 E0     CMP #$E0
C - - - - - 0x010BB2 04:8BA2: 90 09     BCC bra_8BAD
bra_8BA4:
C - - - - - 0x010BB4 04:8BA4: A9 00     LDA #$00
C - - - - - 0x010BB6 04:8BA6: 38        SEC
C - - - - - 0x010BB7 04:8BA7: E5 09     SBC ram_0009
C - - - - - 0x010BB9 04:8BA9: 18        CLC
C - - - - - 0x010BBA 04:8BAA: 79 4C 05  ADC ram_pos_X_hi_plr,Y
bra_8BAD:
C - - - - - 0x010BBD 04:8BAD: 29 E0     AND #$E0
C - - - - - 0x010BBF 04:8BAF: 85 09     STA ram_0009
C - - - - - 0x010BC1 04:8BB1: B9 32 05  LDA ram_pos_Y_hi_plr,Y
C - - - - - 0x010BC4 04:8BB4: 18        CLC
C - - - - - 0x010BC5 04:8BB5: 65 08     ADC ram_0008
C - - - - - 0x010BC7 04:8BB7: C9 E0     CMP #$E0
C - - - - - 0x010BC9 04:8BB9: B0 04     BCS bra_8BBF
C - - - - - 0x010BCB 04:8BBB: C9 38     CMP #$38
C - - - - - 0x010BCD 04:8BBD: B0 06     BCS bra_8BC5
bra_8BBF:
C - - - - - 0x010BCF 04:8BBF: B9 32 05  LDA ram_pos_Y_hi_plr,Y
C - - - - - 0x010BD2 04:8BC2: 38        SEC
C - - - - - 0x010BD3 04:8BC3: E5 08     SBC ram_0008
bra_8BC5:
C - - - - - 0x010BD5 04:8BC5: 20 39 8C  JSR sub_8C39
C - - - - - 0x010BD8 04:8BC8: 29 E0     AND #$E0
C - - - - - 0x010BDA 04:8BCA: 85 08     STA ram_0008
C - - - - - 0x010BDC 04:8BCC: C9 10     CMP #$10
C - - - - - 0x010BDE 04:8BCE: 90 04     BCC bra_8BD4
C - - - - - 0x010BE0 04:8BD0: C9 E0     CMP #$E0
C - - - - - 0x010BE2 04:8BD2: 90 09     BCC bra_8BDD
bra_8BD4:
C - - - - - 0x010BE4 04:8BD4: A5 0A     LDA ram_000A
C - - - - - 0x010BE6 04:8BD6: 0A        ASL
C - - - - - 0x010BE7 04:8BD7: A9 20     LDA #$20
C - - - - - 0x010BE9 04:8BD9: 90 02     BCC bra_8BDD
C - - - - - 0x010BEB 04:8BDB: A9 C0     LDA #$C0
bra_8BDD:
C - - - - - 0x010BED 04:8BDD: 85 0B     STA ram_000B
C - - - - - 0x010BEF 04:8BDF: 38        SEC
C - - - - - 0x010BF0 04:8BE0: E5 FC     SBC ram_scroll_Y
C - - - - - 0x010BF2 04:8BE2: 90 04     BCC bra_8BE8
C - - - - - 0x010BF4 04:8BE4: C9 F0     CMP #$F0
C - - - - - 0x010BF6 04:8BE6: 90 03     BCC bra_8BEB
bra_8BE8:
C - - - - - 0x010BF8 04:8BE8: 38        SEC
C - - - - - 0x010BF9 04:8BE9: E9 10     SBC #$10
bra_8BEB:
C - - - - - 0x010BFB 04:8BEB: 85 08     STA ram_0008
C - - - - - 0x010BFD 04:8BED: C9 18     CMP #$18
C - - - - - 0x010BFF 04:8BEF: 90 13     BCC bra_8C04
C - - - - - 0x010C01 04:8BF1: BC 56 07  LDY ram_0756_obj,X
C - - - - - 0x010C04 04:8BF4: 30 02     BMI bra_8BF8
C - - - - - 0x010C06 04:8BF6: D0 09     BNE bra_8C01
bra_8BF8:
C - - - - - 0x010C08 04:8BF8: DD 22 05  CMP ram_pos_Y_hi_enemy,X
C - - - - - 0x010C0B 04:8BFB: 6A        ROR
C - - - - - 0x010C0C 04:8BFC: 5D 56 07  EOR ram_0756_obj,X
C - - - - - 0x010C0F 04:8BFF: 30 03     BMI bra_8C04
bra_8C01:
C - - - - - 0x010C11 04:8C01: 4C 06 8C  JMP loc_8C06
bra_8C04:
C - - - - - 0x010C14 04:8C04: 38        SEC
C - - - - - 0x010C15 04:8C05: 60        RTS



loc_8C06:
C D 0 - - - 0x010C16 04:8C06: A0 0D     LDY #$0D
bra_8C08_loop:
C - - - - - 0x010C18 04:8C08: B9 D8 06  LDA ram_obj_id,Y
C - - - - - 0x010C1B 04:8C0B: C9 5D     CMP #con_obj_id_5D
C - - - - - 0x010C1D 04:8C0D: D0 15     BNE bra_8C24
C - - - - - 0x010C1F 04:8C0F: B9 22 05  LDA ram_pos_Y_hi_enemy,Y
C - - - - - 0x010C22 04:8C12: 20 39 8C  JSR sub_8C39
C - - - - - 0x010C25 04:8C15: 29 E0     AND #$E0
C - - - - - 0x010C27 04:8C17: C5 0B     CMP ram_000B
C - - - - - 0x010C29 04:8C19: D0 09     BNE bra_8C24
C - - - - - 0x010C2B 04:8C1B: B9 3C 05  LDA ram_pos_X_hi_enemy,Y
C - - - - - 0x010C2E 04:8C1E: 29 E0     AND #$E0
C - - - - - 0x010C30 04:8C20: C5 09     CMP ram_0009
C - - - - - 0x010C32 04:8C22: F0 E0     BEQ bra_8C04
bra_8C24:
C - - - - - 0x010C34 04:8C24: 88        DEY
C - - - - - 0x010C35 04:8C25: 10 E1     BPL bra_8C08_loop
C - - - - - 0x010C37 04:8C27: 18        CLC
C - - - - - 0x010C38 04:8C28: 60        RTS



tbl_8C29:
- D 0 - - - 0x010C39 04:8C29: E0        .byte $E0   ; 00 
- D 0 - - - 0x010C3A 04:8C2A: C0        .byte $C0   ; 08 
- D 0 - - - 0x010C3B 04:8C2B: 00        .byte $00   ; 10 
- D 0 - - - 0x010C3C 04:8C2C: A0        .byte $A0   ; 18 
- D 0 - - - 0x010C3D 04:8C2D: E0        .byte $E0   ; 20 
- D 0 - - - 0x010C3E 04:8C2E: 00        .byte $00   ; 28 
- D 0 - - - 0x010C3F 04:8C2F: 20        .byte $20   ; 30 
- D 0 - - - 0x010C40 04:8C30: C0        .byte $C0   ; 38 



tbl_8C31:
- D 0 - - - 0x010C41 04:8C31: 00        .byte $00   ; 00 
- D 0 - - - 0x010C42 04:8C32: 20        .byte $20   ; 02 
- D 0 - - - 0x010C43 04:8C33: 40        .byte $40   ; 04 
- D 0 - - - 0x010C44 04:8C34: 60        .byte $60   ; 06 
- D 0 - - - 0x010C45 04:8C35: 00        .byte $00   ; 08 
- D 0 - - - 0x010C46 04:8C36: E0        .byte $E0   ; 0A 
- D 0 - - - 0x010C47 04:8C37: C0        .byte $C0   ; 0C 
- D 0 - - - 0x010C48 04:8C38: A0        .byte $A0   ; 0E 



sub_8C39:
C - - - - - 0x010C49 04:8C39: 18        CLC
C - - - - - 0x010C4A 04:8C3A: 65 FC     ADC ram_scroll_Y
C - - - - - 0x010C4C 04:8C3C: B0 04     BCS bra_8C42
C - - - - - 0x010C4E 04:8C3E: C9 F0     CMP #$F0
C - - - - - 0x010C50 04:8C40: 90 02     BCC bra_8C44_RTS
bra_8C42:
C - - - - - 0x010C52 04:8C42: 69 0F     ADC #$0F
bra_8C44_RTS:
C - - - - - 0x010C54 04:8C44: 60        RTS



_off001_0x010C55_5F_red_skull_head:
- D 0 - I - 0x010C55 04:8C45: 53 8C     .word ofs_038_5F_8C53_01_initialize_object ; 
- D 0 - I - 0x010C57 04:8C47: 8F 8C     .word ofs_038_5F_8C8F_02 ; 
- D 0 - I - 0x010C59 04:8C49: F0 8C     .word ofs_038_5F_8CF0_03 ; 
- D 0 - I - 0x010C5B 04:8C4B: 27 8E     .word ofs_038_5F_8E27_04 ; 
- D 0 - I - 0x010C5D 04:8C4D: 9A A2     .word ofs_038_5F_0x0062AA_05 ; 
- D 0 - I - 0x010C5F 04:8C4F: FD A2     .word ofs_038_5F_0x00630D_06 ; 
- D 0 - I - 0x010C61 04:8C51: 3D A3     .word ofs_038_5F_0x00634D_07_delete_object_04 ; 



ofs_038_5F_8C53_01_initialize_object:
C - - J - - 0x010C63 04:8C53: A9 08     LDA #$08
C - - - - - 0x010C65 04:8C55: 9D 76 06  STA ram_obj_hp,X
C - - - - - 0x010C68 04:8C58: A9 02     LDA #$02
C - - - - - 0x010C6A 04:8C5A: 9D 56 05  STA ram_attr_spr_enemy,X
C - - - - - 0x010C6D 04:8C5D: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x010C70 04:8C60: 4A        LSR
C - - - - - 0x010C71 04:8C61: 90 05     BCC bra_8C68
C - - - - - 0x010C73 04:8C63: A9 D0     LDA #$D0
C - - - - - 0x010C75 04:8C65: 9D 22 05  STA ram_pos_Y_hi_enemy,X
bra_8C68:
C - - - - - 0x010C78 04:8C68: 20 0B AB  JSR sub_0x006B1B_set_target_on_closest_player_X_pos
C - - - - - 0x010C7B 04:8C6B: 98        TYA
C - - - - - 0x010C7C 04:8C6C: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x010C7F 04:8C6F: B9 32 05  LDA ram_pos_Y_hi_plr,Y
C - - - - - 0x010C82 04:8C72: 9D 64 07  STA ram_0764_obj,X
C - - - - - 0x010C85 04:8C75: B9 4C 05  LDA ram_pos_X_hi_plr,Y
C - - - - - 0x010C88 04:8C78: 9D 72 07  STA ram_0772_obj,X
C - - - - - 0x010C8B 04:8C7B: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x010C8E 04:8C7E: 0A        ASL
C - - - - - 0x010C8F 04:8C7F: A8        TAY
C - - - - - 0x010C90 04:8C80: B9 E6 8C  LDA tbl_8CE6_spd_Y,Y
C - - - - - 0x010C93 04:8C83: 9D A0 06  STA ram_spd_Y_lo_obj,X
C - - - - - 0x010C96 04:8C86: B9 E7 8C  LDA tbl_8CE6_spd_Y + $01,Y
C - - - - - 0x010C99 04:8C89: 9D AE 06  STA ram_spd_Y_hi_obj,X
C - - - - - 0x010C9C 04:8C8C: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_5F_8C8F_02:
C - - J - - 0x010C9F 04:8C8F: A9 84     LDA #$84
C - - - - - 0x010CA1 04:8C91: BC AE 06  LDY ram_spd_Y_hi_obj,X
C - - - - - 0x010CA4 04:8C94: 10 02     BPL bra_8C98_moving_down
; if moving up
C - - - - - 0x010CA6 04:8C96: A9 88     LDA #$88
bra_8C98_moving_down:
C - - - - - 0x010CA8 04:8C98: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x010CAB 04:8C9B: A9 03     LDA #$03
C - - - - - 0x010CAD 04:8C9D: 9D 56 05  STA ram_attr_spr_enemy,X
C - - - - - 0x010CB0 04:8CA0: 20 D3 A6  JSR sub_0x0066E3
C - - - - - 0x010CB3 04:8CA3: 20 57 8E  JSR sub_8E57
C - - - - - 0x010CB6 04:8CA6: A0 00     LDY #$00
C - - - - - 0x010CB8 04:8CA8: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x010CBB 04:8CAB: C5 09     CMP ram_0009
C - - - - - 0x010CBD 04:8CAD: F0 06     BEQ bra_8CB5
C - - - - - 0x010CBF 04:8CAF: A0 02     LDY #$02
C - - - - - 0x010CC1 04:8CB1: 90 02     BCC bra_8CB5
C - - - - - 0x010CC3 04:8CB3: A0 04     LDY #$04
bra_8CB5:
C - - - - - 0x010CC5 04:8CB5: B9 EA 8C  LDA tbl_8CEA_spd_X,Y
C - - - - - 0x010CC8 04:8CB8: 9D BC 06  STA ram_spd_X_lo_obj,X
C - - - - - 0x010CCB 04:8CBB: B9 EB 8C  LDA tbl_8CEA_spd_X + $01,Y
C - - - - - 0x010CCE 04:8CBE: 9D CA 06  STA ram_spd_X_hi_obj,X
C - - - - - 0x010CD1 04:8CC1: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x010CD4 04:8CC4: 38        SEC
C - - - - - 0x010CD5 04:8CC5: E5 08     SBC ram_0008
C - - - - - 0x010CD7 04:8CC7: B0 04     BCS bra_8CCD
C - - - - - 0x010CD9 04:8CC9: 49 FF     EOR #$FF
C - - - - - 0x010CDB 04:8CCB: 69 01     ADC #$01
bra_8CCD:
C - - - - - 0x010CDD 04:8CCD: C9 38     CMP #$38
C - - - - - 0x010CDF 04:8CCF: B0 14     BCS bra_8CE5_RTS
C - - - - - 0x010CE1 04:8CD1: A9 60     LDA #$60
C - - - - - 0x010CE3 04:8CD3: BC AE 06  LDY ram_spd_Y_hi_obj,X
C - - - - - 0x010CE6 04:8CD6: 10 02     BPL bra_8CDA_moving_down
; if moving up
C - - - - - 0x010CE8 04:8CD8: A9 20     LDA #$20
bra_8CDA_moving_down:
C - - - - - 0x010CEA 04:8CDA: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x010CED 04:8CDD: A9 16     LDA #con_sound_16
C - - - - - 0x010CEF 04:8CDF: 20 DE FD  JSR sub_0x01FDEE_play_sound
C - - - - - 0x010CF2 04:8CE2: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state
bra_8CE5_RTS:
C - - - - - 0x010CF5 04:8CE5: 60        RTS



tbl_8CE6_spd_Y:
- D 0 - - - 0x010CF6 04:8CE6: 00 02     .word $0200 ; 00 
- D 0 - - - 0x010CF8 04:8CE8: 00 FE     .word $FE00 ; 01 



tbl_8CEA_spd_X:
- D 0 - - - 0x010CFA 04:8CEA: 00 00     .word $0000 ; 00 
- D 0 - - - 0x010CFC 04:8CEC: 00 03     .word $0300 ; 02 
- D 0 - - - 0x010CFE 04:8CEE: 00 FD     .word $FD00 ; 04 



ofs_038_5F_8CF0_03:
C - - J - - 0x010D00 04:8CF0: 20 71 8E  JSR sub_8E71
C - - - - - 0x010D03 04:8CF3: BD 56 07  LDA ram_0756_obj,X
C - - - - - 0x010D06 04:8CF6: 18        CLC
C - - - - - 0x010D07 04:8CF7: 69 01     ADC #$01
C - - - - - 0x010D09 04:8CF9: 29 7F     AND #$7F
C - - - - - 0x010D0B 04:8CFB: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x010D0E 04:8CFE: BC 56 07  LDY ram_0756_obj,X
C - - - - - 0x010D11 04:8D01: B9 87 8D  LDA tbl_8D87,Y
C - - - - - 0x010D14 04:8D04: 18        CLC
C - - - - - 0x010D15 04:8D05: 7D 64 07  ADC ram_0764_obj,X
C - - - - - 0x010D18 04:8D08: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x010D1B 04:8D0B: 6A        ROR
C - - - - - 0x010D1C 04:8D0C: 59 87 8D  EOR tbl_8D87,Y
C - - - - - 0x010D1F 04:8D0F: 30 10     BMI bra_8D21
C - - - - - 0x010D21 04:8D11: B9 A7 8D  LDA tbl_8DA7,Y
C - - - - - 0x010D24 04:8D14: 18        CLC
C - - - - - 0x010D25 04:8D15: 7D 72 07  ADC ram_0772_obj,X
C - - - - - 0x010D28 04:8D18: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x010D2B 04:8D1B: 6A        ROR
C - - - - - 0x010D2C 04:8D1C: 59 A7 8D  EOR tbl_8DA7,Y
C - - - - - 0x010D2F 04:8D1F: 10 07     BPL bra_8D28
bra_8D21:
C - - - - - 0x010D31 04:8D21: A9 00     LDA #$00
C - - - - - 0x010D33 04:8D23: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x010D36 04:8D26: F0 03     BEQ bra_8D2B
bra_8D28:
C - - - - - 0x010D38 04:8D28: 20 2D 8E  JSR sub_8E2D
bra_8D2B:
C - - - - - 0x010D3B 04:8D2B: A5 82     LDA ram_0082_area_config
C - - - - - 0x010D3D 04:8D2D: C9 05     CMP #$05
C - - - - - 0x010D3F 04:8D2F: D0 B4     BNE bra_8CE5_RTS
C - - - - - 0x010D41 04:8D31: A5 FC     LDA ram_scroll_Y
C - - - - - 0x010D43 04:8D33: C9 60     CMP #$60
C - - - - - 0x010D45 04:8D35: B0 AE     BCS bra_8CE5_RTS
C - - - - - 0x010D47 04:8D37: BD 08 05  LDA ram_anim_id_enemy,X
C - - - - - 0x010D4A 04:8D3A: D0 03     BNE bra_8D3F
- - - - - - 0x010D4C 04:8D3C: 4C 75 A2  JMP loc_0x006285_delete_object_02
bra_8D3F:
C - - - - - 0x010D4F 04:8D3F: BD 56 07  LDA ram_0756_obj,X
C - - - - - 0x010D52 04:8D42: 18        CLC
C - - - - - 0x010D53 04:8D43: 69 08     ADC #$08
C - - - - - 0x010D55 04:8D45: 29 7F     AND #$7F
C - - - - - 0x010D57 04:8D47: 4A        LSR
C - - - - - 0x010D58 04:8D48: 4A        LSR
C - - - - - 0x010D59 04:8D49: 29 1C     AND #$1C
C - - - - - 0x010D5B 04:8D4B: A8        TAY
C - - - - - 0x010D5C 04:8D4C: B9 67 8D  LDA tbl_8D67_speed,Y
C - - - - - 0x010D5F 04:8D4F: 9D A0 06  STA ram_spd_Y_lo_obj,X
C - - - - - 0x010D62 04:8D52: B9 68 8D  LDA tbl_8D67_speed + $01,Y
C - - - - - 0x010D65 04:8D55: 9D AE 06  STA ram_spd_Y_hi_obj,X
C - - - - - 0x010D68 04:8D58: B9 69 8D  LDA tbl_8D67_speed + $02,Y
C - - - - - 0x010D6B 04:8D5B: 9D BC 06  STA ram_spd_X_lo_obj,X
C - - - - - 0x010D6E 04:8D5E: B9 6A 8D  LDA tbl_8D67_speed + $03,Y
C - - - - - 0x010D71 04:8D61: 9D CA 06  STA ram_spd_X_hi_obj,X
C - - - - - 0x010D74 04:8D64: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



tbl_8D67_speed:
; 
- - - - - - 0x010D77 04:8D67: 00 00     .word $0000 ; Y
- - - - - - 0x010D79 04:8D69: 00 02     .word $0200 ; X
; 
- - - - - - 0x010D7B 04:8D6B: 6A 01     .word $016A ; Y
- - - - - - 0x010D7D 04:8D6D: 6A 01     .word $016A ; X
; 
- - - - - - 0x010D7F 04:8D6F: 00 02     .word $0200 ; Y
- - - - - - 0x010D81 04:8D71: 00 00     .word $0000 ; X
; 
- D 0 - - - 0x010D83 04:8D73: 6A 01     .word $016A ; Y
- D 0 - - - 0x010D85 04:8D75: 96 FE     .word $FE96 ; X
; 
- - - - - - 0x010D87 04:8D77: 00 00     .word $0000 ; Y
- - - - - - 0x010D89 04:8D79: 00 FE     .word $FE00 ; X
; 
- - - - - - 0x010D8B 04:8D7B: 96 FE     .word $FE96 ; Y
- - - - - - 0x010D8D 04:8D7D: 96 FE     .word $FE96 ; X
; 
- D 0 - - - 0x010D8F 04:8D7F: 00 FE     .word $FE00 ; Y
- D 0 - - - 0x010D91 04:8D81: 00 00     .word $0000 ; X
; 
- D 0 - - - 0x010D93 04:8D83: 96 FE     .word $FE96 ; Y
- D 0 - - - 0x010D95 04:8D85: 6A 01     .word $016A ; X



tbl_8D87:
- D 0 - - - 0x010D97 04:8D87: 00        .byte $00   ; 00 
- D 0 - - - 0x010D98 04:8D88: 02        .byte $02   ; 01 
- D 0 - - - 0x010D99 04:8D89: 05        .byte $05   ; 02 
- D 0 - - - 0x010D9A 04:8D8A: 08        .byte $08   ; 03 
- D 0 - - - 0x010D9B 04:8D8B: 0A        .byte $0A   ; 04 
- D 0 - - - 0x010D9C 04:8D8C: 0D        .byte $0D   ; 05 
- D 0 - - - 0x010D9D 04:8D8D: 10        .byte $10   ; 06 
- D 0 - - - 0x010D9E 04:8D8E: 12        .byte $12   ; 07 
- D 0 - - - 0x010D9F 04:8D8F: 15        .byte $15   ; 08 
- D 0 - - - 0x010DA0 04:8D90: 17        .byte $17   ; 09 
- D 0 - - - 0x010DA1 04:8D91: 1A        .byte $1A   ; 0A 
- D 0 - - - 0x010DA2 04:8D92: 1C        .byte $1C   ; 0B 
- D 0 - - - 0x010DA3 04:8D93: 1F        .byte $1F   ; 0C 
- D 0 - - - 0x010DA4 04:8D94: 21        .byte $21   ; 0D 
- D 0 - - - 0x010DA5 04:8D95: 23        .byte $23   ; 0E 
- D 0 - - - 0x010DA6 04:8D96: 25        .byte $25   ; 0F 
- D 0 - - - 0x010DA7 04:8D97: 27        .byte $27   ; 10 
- D 0 - - - 0x010DA8 04:8D98: 29        .byte $29   ; 11 
- D 0 - - - 0x010DA9 04:8D99: 2B        .byte $2B   ; 12 
- D 0 - - - 0x010DAA 04:8D9A: 2C        .byte $2C   ; 13 
- D 0 - - - 0x010DAB 04:8D9B: 2E        .byte $2E   ; 14 
- D 0 - - - 0x010DAC 04:8D9C: 2F        .byte $2F   ; 15 
- D 0 - - - 0x010DAD 04:8D9D: 31        .byte $31   ; 16 
- D 0 - - - 0x010DAE 04:8D9E: 32        .byte $32   ; 17 
- D 0 - - - 0x010DAF 04:8D9F: 33        .byte $33   ; 18 
- D 0 - - - 0x010DB0 04:8DA0: 34        .byte $34   ; 19 
- D 0 - - - 0x010DB1 04:8DA1: 35        .byte $35   ; 1A 
- D 0 - - - 0x010DB2 04:8DA2: 36        .byte $36   ; 1B 
- D 0 - - - 0x010DB3 04:8DA3: 36        .byte $36   ; 1C 
- D 0 - - - 0x010DB4 04:8DA4: 37        .byte $37   ; 1D 
- D 0 - - - 0x010DB5 04:8DA5: 37        .byte $37   ; 1E 
- D 0 - - - 0x010DB6 04:8DA6: 37        .byte $37   ; 1F 
tbl_8DA7:
- D 0 - - - 0x010DB7 04:8DA7: 37        .byte $37   ; 00 (20) 
- D 0 - - - 0x010DB8 04:8DA8: 37        .byte $37   ; 01 (21) 
- D 0 - - - 0x010DB9 04:8DA9: 37        .byte $37   ; 02 (22) 
- D 0 - - - 0x010DBA 04:8DAA: 37        .byte $37   ; 03 (23) 
- D 0 - - - 0x010DBB 04:8DAB: 36        .byte $36   ; 04 (24) 
- D 0 - - - 0x010DBC 04:8DAC: 36        .byte $36   ; 05 (25) 
- D 0 - - - 0x010DBD 04:8DAD: 35        .byte $35   ; 06 (26) 
- D 0 - - - 0x010DBE 04:8DAE: 34        .byte $34   ; 07 (27) 
- D 0 - - - 0x010DBF 04:8DAF: 33        .byte $33   ; 08 (28) 
- D 0 - - - 0x010DC0 04:8DB0: 32        .byte $32   ; 09 (29) 
- D 0 - - - 0x010DC1 04:8DB1: 31        .byte $31   ; 0A (2A) 
- D 0 - - - 0x010DC2 04:8DB2: 2F        .byte $2F   ; 0B (2B) 
- D 0 - - - 0x010DC3 04:8DB3: 2E        .byte $2E   ; 0C (2C) 
- D 0 - - - 0x010DC4 04:8DB4: 2C        .byte $2C   ; 0D (2D) 
- D 0 - - - 0x010DC5 04:8DB5: 2B        .byte $2B   ; 0E (2E) 
- D 0 - - - 0x010DC6 04:8DB6: 29        .byte $29   ; 0F (2F) 
- D 0 - - - 0x010DC7 04:8DB7: 27        .byte $27   ; 10 (30) 
- D 0 - - - 0x010DC8 04:8DB8: 25        .byte $25   ; 11 (31) 
- D 0 - - - 0x010DC9 04:8DB9: 23        .byte $23   ; 12 (32) 
- D 0 - - - 0x010DCA 04:8DBA: 21        .byte $21   ; 13 (33) 
- D 0 - - - 0x010DCB 04:8DBB: 1F        .byte $1F   ; 14 (34) 
- D 0 - - - 0x010DCC 04:8DBC: 1C        .byte $1C   ; 15 (35) 
- D 0 - - - 0x010DCD 04:8DBD: 1A        .byte $1A   ; 16 (36) 
- D 0 - - - 0x010DCE 04:8DBE: 17        .byte $17   ; 17 (37) 
- D 0 - - - 0x010DCF 04:8DBF: 15        .byte $15   ; 18 (38) 
- D 0 - - - 0x010DD0 04:8DC0: 12        .byte $12   ; 19 (39) 
- D 0 - - - 0x010DD1 04:8DC1: 10        .byte $10   ; 1A (3A) 
- D 0 - - - 0x010DD2 04:8DC2: 0D        .byte $0D   ; 1B (3B) 
- D 0 - - - 0x010DD3 04:8DC3: 0A        .byte $0A   ; 1C (3C) 
- D 0 - - - 0x010DD4 04:8DC4: 08        .byte $08   ; 1D (3D) 
- D 0 - - - 0x010DD5 04:8DC5: 05        .byte $05   ; 1E (3E) 
- D 0 - - - 0x010DD6 04:8DC6: 02        .byte $02   ; 1F (3F) 
- D 0 - - - 0x010DD7 04:8DC7: 00        .byte $00   ; 20 (40) 
- D 0 - - - 0x010DD8 04:8DC8: FE        .byte $FE   ; 21 (41) 
- D 0 - - - 0x010DD9 04:8DC9: FB        .byte $FB   ; 22 (42) 
- D 0 - - - 0x010DDA 04:8DCA: F8        .byte $F8   ; 23 (43) 
- D 0 - - - 0x010DDB 04:8DCB: F6        .byte $F6   ; 24 (44) 
- D 0 - - - 0x010DDC 04:8DCC: F3        .byte $F3   ; 25 (45) 
- D 0 - - - 0x010DDD 04:8DCD: F0        .byte $F0   ; 26 (46) 
- D 0 - - - 0x010DDE 04:8DCE: EE        .byte $EE   ; 27 (47) 
- D 0 - - - 0x010DDF 04:8DCF: EB        .byte $EB   ; 28 (48) 
- D 0 - - - 0x010DE0 04:8DD0: E9        .byte $E9   ; 29 (49) 
- D 0 - - - 0x010DE1 04:8DD1: E6        .byte $E6   ; 2A (4A) 
- D 0 - - - 0x010DE2 04:8DD2: E4        .byte $E4   ; 2B (4B) 
- D 0 - - - 0x010DE3 04:8DD3: E1        .byte $E1   ; 2C (4C) 
- D 0 - - - 0x010DE4 04:8DD4: DF        .byte $DF   ; 2D (4D) 
- D 0 - - - 0x010DE5 04:8DD5: DD        .byte $DD   ; 2E (4E) 
- D 0 - - - 0x010DE6 04:8DD6: DB        .byte $DB   ; 2F (4F) 
- D 0 - - - 0x010DE7 04:8DD7: D9        .byte $D9   ; 30 (50) 
- D 0 - - - 0x010DE8 04:8DD8: D7        .byte $D7   ; 31 (51) 
- D 0 - - - 0x010DE9 04:8DD9: D5        .byte $D5   ; 32 (52) 
- D 0 - - - 0x010DEA 04:8DDA: D4        .byte $D4   ; 33 (53) 
- D 0 - - - 0x010DEB 04:8DDB: D2        .byte $D2   ; 34 (54) 
- D 0 - - - 0x010DEC 04:8DDC: D1        .byte $D1   ; 35 (55) 
- D 0 - - - 0x010DED 04:8DDD: CF        .byte $CF   ; 36 (56) 
- D 0 - - - 0x010DEE 04:8DDE: CE        .byte $CE   ; 37 (57) 
- D 0 - - - 0x010DEF 04:8DDF: CD        .byte $CD   ; 38 (58) 
- D 0 - - - 0x010DF0 04:8DE0: CC        .byte $CC   ; 39 (59) 
- D 0 - - - 0x010DF1 04:8DE1: CB        .byte $CB   ; 3A (5A) 
- D 0 - - - 0x010DF2 04:8DE2: CA        .byte $CA   ; 3B (5B) 
- D 0 - - - 0x010DF3 04:8DE3: CA        .byte $CA   ; 3C (5C) 
- D 0 - - - 0x010DF4 04:8DE4: C9        .byte $C9   ; 3D (5D) 
- D 0 - - - 0x010DF5 04:8DE5: C9        .byte $C9   ; 3E (5E) 
- D 0 - - - 0x010DF6 04:8DE6: C9        .byte $C9   ; 3F (5F) 
- D 0 - - - 0x010DF7 04:8DE7: C9        .byte $C9   ; 40 (60) 
- D 0 - - - 0x010DF8 04:8DE8: C9        .byte $C9   ; 41 (61) 
- D 0 - - - 0x010DF9 04:8DE9: C9        .byte $C9   ; 42 (62) 
- D 0 - - - 0x010DFA 04:8DEA: C9        .byte $C9   ; 43 (63) 
- D 0 - - - 0x010DFB 04:8DEB: CA        .byte $CA   ; 44 (64) 
- D 0 - - - 0x010DFC 04:8DEC: CA        .byte $CA   ; 45 (65) 
- D 0 - - - 0x010DFD 04:8DED: CB        .byte $CB   ; 46 (66) 
- D 0 - - - 0x010DFE 04:8DEE: CC        .byte $CC   ; 47 (67) 
- D 0 - - - 0x010DFF 04:8DEF: CD        .byte $CD   ; 48 (68) 
- D 0 - - - 0x010E00 04:8DF0: CE        .byte $CE   ; 49 (69) 
- D 0 - - - 0x010E01 04:8DF1: CF        .byte $CF   ; 4A (6A) 
- D 0 - - - 0x010E02 04:8DF2: D1        .byte $D1   ; 4B (6B) 
- D 0 - - - 0x010E03 04:8DF3: D2        .byte $D2   ; 4C (6C) 
- D 0 - - - 0x010E04 04:8DF4: D4        .byte $D4   ; 4D (6D) 
- D 0 - - - 0x010E05 04:8DF5: D5        .byte $D5   ; 4E (6E) 
- D 0 - - - 0x010E06 04:8DF6: D7        .byte $D7   ; 4F (6F) 
- D 0 - - - 0x010E07 04:8DF7: D9        .byte $D9   ; 50 (70) 
- D 0 - - - 0x010E08 04:8DF8: DB        .byte $DB   ; 51 (71) 
- D 0 - - - 0x010E09 04:8DF9: DD        .byte $DD   ; 52 (72) 
- D 0 - - - 0x010E0A 04:8DFA: DF        .byte $DF   ; 53 (73) 
- D 0 - - - 0x010E0B 04:8DFB: E1        .byte $E1   ; 54 (74) 
- D 0 - - - 0x010E0C 04:8DFC: E4        .byte $E4   ; 55 (75) 
- D 0 - - - 0x010E0D 04:8DFD: E6        .byte $E6   ; 56 (76) 
- D 0 - - - 0x010E0E 04:8DFE: E9        .byte $E9   ; 57 (77) 
- D 0 - - - 0x010E0F 04:8DFF: EB        .byte $EB   ; 58 (78) 
- D 0 - - - 0x010E10 04:8E00: EE        .byte $EE   ; 59 (79) 
- D 0 - - - 0x010E11 04:8E01: F0        .byte $F0   ; 5A (7A) 
- D 0 - - - 0x010E12 04:8E02: F3        .byte $F3   ; 5B (7B) 
- D 0 - - - 0x010E13 04:8E03: F6        .byte $F6   ; 5C (7C) 
- D 0 - - - 0x010E14 04:8E04: F8        .byte $F8   ; 5D (7D) 
- D 0 - - - 0x010E15 04:8E05: FB        .byte $FB   ; 5E (7E) 
- D 0 - - - 0x010E16 04:8E06: FE        .byte $FE   ; 5F (7F) 
- D 0 - - - 0x010E17 04:8E07: 00        .byte $00   ; 60 
- D 0 - - - 0x010E18 04:8E08: 02        .byte $02   ; 61 
- D 0 - - - 0x010E19 04:8E09: 05        .byte $05   ; 62 
- D 0 - - - 0x010E1A 04:8E0A: 08        .byte $08   ; 63 
- D 0 - - - 0x010E1B 04:8E0B: 0A        .byte $0A   ; 64 
- D 0 - - - 0x010E1C 04:8E0C: 0D        .byte $0D   ; 65 
- D 0 - - - 0x010E1D 04:8E0D: 10        .byte $10   ; 66 
- D 0 - - - 0x010E1E 04:8E0E: 12        .byte $12   ; 67 
- D 0 - - - 0x010E1F 04:8E0F: 15        .byte $15   ; 68 
- D 0 - - - 0x010E20 04:8E10: 17        .byte $17   ; 69 
- D 0 - - - 0x010E21 04:8E11: 1A        .byte $1A   ; 6A 
- D 0 - - - 0x010E22 04:8E12: 1C        .byte $1C   ; 6B 
- D 0 - - - 0x010E23 04:8E13: 1F        .byte $1F   ; 6C 
- D 0 - - - 0x010E24 04:8E14: 21        .byte $21   ; 6D 
- D 0 - - - 0x010E25 04:8E15: 23        .byte $23   ; 6E 
- D 0 - - - 0x010E26 04:8E16: 25        .byte $25   ; 6F 
- D 0 - - - 0x010E27 04:8E17: 27        .byte $27   ; 70 
- D 0 - - - 0x010E28 04:8E18: 29        .byte $29   ; 71 
- D 0 - - - 0x010E29 04:8E19: 2B        .byte $2B   ; 72 
- D 0 - - - 0x010E2A 04:8E1A: 2C        .byte $2C   ; 73 
- D 0 - - - 0x010E2B 04:8E1B: 2E        .byte $2E   ; 74 
- D 0 - - - 0x010E2C 04:8E1C: 2F        .byte $2F   ; 75 
- D 0 - - - 0x010E2D 04:8E1D: 31        .byte $31   ; 76 
- D 0 - - - 0x010E2E 04:8E1E: 32        .byte $32   ; 77 
- D 0 - - - 0x010E2F 04:8E1F: 33        .byte $33   ; 78 
- D 0 - - - 0x010E30 04:8E20: 34        .byte $34   ; 79 
- D 0 - - - 0x010E31 04:8E21: 35        .byte $35   ; 7A 
- D 0 - - - 0x010E32 04:8E22: 36        .byte $36   ; 7B 
- D 0 - - - 0x010E33 04:8E23: 36        .byte $36   ; 7C 
- D 0 - - - 0x010E34 04:8E24: 37        .byte $37   ; 7D 
- D 0 - - - 0x010E35 04:8E25: 37        .byte $37   ; 7E 
- D 0 - - - 0x010E36 04:8E26: 37        .byte $37   ; 7F 



ofs_038_5F_8E27_04:
C - - J - - 0x010E37 04:8E27: 20 2D 8E  JSR sub_8E2D
C - - - - - 0x010E3A 04:8E2A: 4C D3 A6  JMP loc_0x0066E3



sub_8E2D:
C - - - - - 0x010E3D 04:8E2D: BD 56 07  LDA ram_0756_obj,X
C - - - - - 0x010E40 04:8E30: 18        CLC
C - - - - - 0x010E41 04:8E31: 69 08     ADC #$08
C - - - - - 0x010E43 04:8E33: 29 7F     AND #$7F
C - - - - - 0x010E45 04:8E35: 4A        LSR
C - - - - - 0x010E46 04:8E36: 4A        LSR
C - - - - - 0x010E47 04:8E37: 4A        LSR
C - - - - - 0x010E48 04:8E38: 4A        LSR
C - - - - - 0x010E49 04:8E39: A8        TAY
C - - - - - 0x010E4A 04:8E3A: B9 47 8E  LDA tbl_8E47,Y
C - - - - - 0x010E4D 04:8E3D: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x010E50 04:8E40: B9 4F 8E  LDA tbl_8E4F,Y
C - - - - - 0x010E53 04:8E43: 9D 56 05  STA ram_attr_spr_enemy,X
C - - - - - 0x010E56 04:8E46: 60        RTS



tbl_8E47:
- D 0 - - - 0x010E57 04:8E47: 86        .byte $86   ; 00 
- D 0 - - - 0x010E58 04:8E48: 87        .byte $87   ; 10 
- D 0 - - - 0x010E59 04:8E49: 88        .byte $88   ; 20 
- D 0 - - - 0x010E5A 04:8E4A: 87        .byte $87   ; 30 
- D 0 - - - 0x010E5B 04:8E4B: 86        .byte $86   ; 40 
- D 0 - - - 0x010E5C 04:8E4C: 85        .byte $85   ; 50 
- D 0 - - - 0x010E5D 04:8E4D: 84        .byte $84   ; 60 
- D 0 - - - 0x010E5E 04:8E4E: 85        .byte $85   ; 70 



tbl_8E4F:
- D 0 - - - 0x010E5F 04:8E4F: 03        .byte $03   ; 00 
- D 0 - - - 0x010E60 04:8E50: 03        .byte $03   ; 10 
- D 0 - - - 0x010E61 04:8E51: 03        .byte $03   ; 20 
- D 0 - - - 0x010E62 04:8E52: 43        .byte $43   ; 30 
- D 0 - - - 0x010E63 04:8E53: 43        .byte $43   ; 40 
- D 0 - - - 0x010E64 04:8E54: 43        .byte $43   ; 50 
- D 0 - - - 0x010E65 04:8E55: 03        .byte $03   ; 60 
- D 0 - - - 0x010E66 04:8E56: 03        .byte $03   ; 70 



sub_8E57:
C - - - - - 0x010E67 04:8E57: BC 48 07  LDY ram_0748_obj,X
C - - - - - 0x010E6A 04:8E5A: B9 CA 00  LDA ram_plr_game_over,Y
C - - - - - 0x010E6D 04:8E5D: F0 07     BEQ bra_8E66
- - - - - - 0x010E6F 04:8E5F: 98        TYA
- - - - - - 0x010E70 04:8E60: 49 01     EOR #$01
- - - - - - 0x010E72 04:8E62: A8        TAY
- - - - - - 0x010E73 04:8E63: 9D 48 07  STA ram_0748_obj,X
bra_8E66:
C - - - - - 0x010E76 04:8E66: B9 32 05  LDA ram_pos_Y_hi_plr,Y
C - - - - - 0x010E79 04:8E69: 85 08     STA ram_0008
C - - - - - 0x010E7B 04:8E6B: B9 4C 05  LDA ram_pos_X_hi_plr,Y
C - - - - - 0x010E7E 04:8E6E: 85 09     STA ram_0009
C - - - - - 0x010E80 04:8E70: 60        RTS



sub_8E71:
C - - - - - 0x010E81 04:8E71: 20 57 8E  JSR sub_8E57
C - - - - - 0x010E84 04:8E74: BD 64 07  LDA ram_0764_obj,X
C - - - - - 0x010E87 04:8E77: C5 08     CMP ram_0008
C - - - - - 0x010E89 04:8E79: F0 19     BEQ bra_8E94
C - - - - - 0x010E8B 04:8E7B: A0 00     LDY #$00
C - - - - - 0x010E8D 04:8E7D: 90 02     BCC bra_8E81
C - - - - - 0x010E8F 04:8E7F: A0 02     LDY #$02
bra_8E81:
C - - - - - 0x010E91 04:8E81: B9 BE 8E  LDA tbl_8EBE,Y
C - - - - - 0x010E94 04:8E84: 18        CLC
C - - - - - 0x010E95 04:8E85: 7D A0 06  ADC ram_spd_Y_lo_obj,X
C - - - - - 0x010E98 04:8E88: 9D A0 06  STA ram_spd_Y_lo_obj,X
C - - - - - 0x010E9B 04:8E8B: B9 BF 8E  LDA tbl_8EBE + $01,Y
C - - - - - 0x010E9E 04:8E8E: 7D 64 07  ADC ram_0764_obj,X
C - - - - - 0x010EA1 04:8E91: 9D 64 07  STA ram_0764_obj,X
bra_8E94:
C - - - - - 0x010EA4 04:8E94: BD 64 07  LDA ram_0764_obj,X
C - - - - - 0x010EA7 04:8E97: 38        SEC
C - - - - - 0x010EA8 04:8E98: E5 72     SBC ram_cam_spd_Y
C - - - - - 0x010EAA 04:8E9A: 9D 64 07  STA ram_0764_obj,X
C - - - - - 0x010EAD 04:8E9D: BD 72 07  LDA ram_0772_obj,X
C - - - - - 0x010EB0 04:8EA0: C5 09     CMP ram_0009
C - - - - - 0x010EB2 04:8EA2: F0 19     BEQ bra_8EBD_RTS
C - - - - - 0x010EB4 04:8EA4: A0 00     LDY #$00
C - - - - - 0x010EB6 04:8EA6: 90 02     BCC bra_8EAA
C - - - - - 0x010EB8 04:8EA8: A0 02     LDY #$02
bra_8EAA:
C - - - - - 0x010EBA 04:8EAA: B9 BE 8E  LDA tbl_8EBE,Y
C - - - - - 0x010EBD 04:8EAD: 18        CLC
C - - - - - 0x010EBE 04:8EAE: 7D BC 06  ADC ram_spd_X_lo_obj,X
C - - - - - 0x010EC1 04:8EB1: 9D BC 06  STA ram_spd_X_lo_obj,X
C - - - - - 0x010EC4 04:8EB4: B9 BF 8E  LDA tbl_8EBE + $01,Y
C - - - - - 0x010EC7 04:8EB7: 7D 72 07  ADC ram_0772_obj,X
C - - - - - 0x010ECA 04:8EBA: 9D 72 07  STA ram_0772_obj,X
bra_8EBD_RTS:
C - - - - - 0x010ECD 04:8EBD: 60        RTS



tbl_8EBE:
;                                              +---------- speed
;                                              |    +----- 
;                                              |    |
- D 0 - - - 0x010ECE 04:8EBE: 00        .byte $00, $01   ; 00 
- D 0 - - - 0x010ED0 04:8EC0: 00        .byte $00, $FF   ; 02 



_off001_0x010ED2_24_blue_spider:
- D 0 - I - 0x010ED2 04:8EC2: CE 8E     .word ofs_038_24_8ECE_01_initialize_object ; 
- D 0 - I - 0x010ED4 04:8EC4: 52 8F     .word ofs_038_24_8F52_02 ; 
- D 0 - I - 0x010ED6 04:8EC6: 1E 91     .word ofs_038_24_911E_03 ; 
- D 0 - I - 0x010ED8 04:8EC8: 9A A2     .word ofs_038_24_0x0062AA_04 ; 
- D 0 - I - 0x010EDA 04:8ECA: FD A2     .word ofs_038_24_0x00630D_05 ; 
- D 0 - I - 0x010EDC 04:8ECC: 3D A3     .word ofs_038_24_0x00634D_06_delete_object_04 ; 



ofs_038_24_8ECE_01_initialize_object:
C - - J - - 0x010EDE 04:8ECE: A9 14     LDA #$14
C - - - - - 0x010EE0 04:8ED0: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x010EE3 04:8ED3: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x010EE6 04:8ED6: 4A        LSR
C - - - - - 0x010EE7 04:8ED7: 90 0A     BCC bra_8EE3
C - - - - - 0x010EE9 04:8ED9: A9 40     LDA #$40
C - - - - - 0x010EEB 04:8EDB: 9D 72 07  STA ram_0772_obj,X
C - - - - - 0x010EEE 04:8EDE: A9 E0     LDA #$E0
C - - - - - 0x010EF0 04:8EE0: 9D 22 05  STA ram_pos_Y_hi_enemy,X
bra_8EE3:
C - - - - - 0x010EF3 04:8EE3: A9 00     LDA #$00
C - - - - - 0x010EF5 04:8EE5: 9D 3A 07  STA ram_073A_obj_hitbox_index,X
C - - - - - 0x010EF8 04:8EE8: 20 F8 8E  JSR sub_8EF8
C - - - - - 0x010EFB 04:8EEB: 20 D3 A6  JSR sub_0x0066E3
C - - - - - 0x010EFE 04:8EEE: A9 20     LDA #$20
C - - - - - 0x010F00 04:8EF0: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x010F03 04:8EF3: A9 30     LDA #$30
C - - - - - 0x010F05 04:8EF5: 4C E0 A2  JMP loc_0x0062F0



sub_8EF8:
C - - - - - 0x010F08 04:8EF8: 20 DB 90  JSR sub_90DB
C - - - - - 0x010F0B 04:8EFB: 20 AE AA  JSR sub_0x006ABE
C - - - - - 0x010F0E 04:8EFE: 20 F0 F4  JSR sub_0x01F500
C - - - - - 0x010F11 04:8F01: A5 0C     LDA ram_000C
C - - - - - 0x010F13 04:8F03: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x010F16 04:8F06: A8        TAY
C - - - - - 0x010F17 04:8F07: 20 9B F4  JSR sub_0x01F4AB
C - - - - - 0x010F1A 04:8F0A: 4C 13 8F  JMP loc_8F13



sub_8F0D:
C - - - - - 0x010F1D 04:8F0D: 20 DB 90  JSR sub_90DB
C - - - - - 0x010F20 04:8F10: 20 95 F4  JSR sub_0x01F4A5
loc_8F13:
sub_8F13:
C D 0 - - - 0x010F23 04:8F13: BD 56 07  LDA ram_0756_obj,X
C - - - - - 0x010F26 04:8F16: 0A        ASL
C - - - - - 0x010F27 04:8F17: 0A        ASL
C - - - - - 0x010F28 04:8F18: A8        TAY
C - - - - - 0x010F29 04:8F19: B9 32 8F  LDA tbl_8F32_speed,Y
C - - - - - 0x010F2C 04:8F1C: 9D A0 06  STA ram_spd_Y_lo_obj,X
C - - - - - 0x010F2F 04:8F1F: B9 33 8F  LDA tbl_8F32_speed + $01,Y
C - - - - - 0x010F32 04:8F22: 9D AE 06  STA ram_spd_Y_hi_obj,X
C - - - - - 0x010F35 04:8F25: B9 34 8F  LDA tbl_8F32_speed + $02,Y
C - - - - - 0x010F38 04:8F28: 9D BC 06  STA ram_spd_X_lo_obj,X
C - - - - - 0x010F3B 04:8F2B: B9 35 8F  LDA tbl_8F32_speed + $03,Y
C - - - - - 0x010F3E 04:8F2E: 9D CA 06  STA ram_spd_X_hi_obj,X
C - - - - - 0x010F41 04:8F31: 60        RTS



tbl_8F32_speed:
; 00 
- D 0 - - - 0x010F42 04:8F32: 00 00     .word $0000 ; Y
- D 0 - - - 0x010F44 04:8F34: C0 00     .word $00C0 ; X
; 01 
- D 0 - - - 0x010F46 04:8F36: 87 00     .word $0087 ; Y
- D 0 - - - 0x010F48 04:8F38: 87 00     .word $0087 ; X
; 02 
- D 0 - - - 0x010F4A 04:8F3A: C0 00     .word $00C0 ; Y
- D 0 - - - 0x010F4C 04:8F3C: 00 00     .word $0000 ; X
; 03 
- D 0 - - - 0x010F4E 04:8F3E: 87 00     .word $0087 ; Y
- D 0 - - - 0x010F50 04:8F40: 79 FF     .word $FF79 ; X
; 04 
- D 0 - - - 0x010F52 04:8F42: 00 00     .word $0000 ; Y
- D 0 - - - 0x010F54 04:8F44: 40 FF     .word $FF40 ; X
; 05 
- D 0 - - - 0x010F56 04:8F46: 79 FF     .word $FF79 ; Y
- D 0 - - - 0x010F58 04:8F48: 79 FF     .word $FF79 ; X
; 06 
- D 0 - - - 0x010F5A 04:8F4A: 40 FF     .word $FF40 ; Y
- D 0 - - - 0x010F5C 04:8F4C: 00 00     .word $0000 ; X
; 07 
- D 0 - - - 0x010F5E 04:8F4E: 79 FF     .word $FF79 ; Y
- D 0 - - - 0x010F60 04:8F50: 87 00     .word $0087 ; X



ofs_038_24_8F52_02:
C - - J - - 0x010F62 04:8F52: BC 64 07  LDY ram_0764_obj,X
C - - - - - 0x010F65 04:8F55: F0 2D     BEQ bra_8F84
C - - - - - 0x010F67 04:8F57: B9 9F 90  LDA tbl_90A0 - $01,Y
C - - - - - 0x010F6A 04:8F5A: 18        CLC
C - - - - - 0x010F6B 04:8F5B: 7D 22 05  ADC ram_pos_Y_hi_enemy,X
C - - - - - 0x010F6E 04:8F5E: 85 08     STA ram_0008
C - - - - - 0x010F70 04:8F60: B9 A3 90  LDA tbl_90A4 - $01,Y
C - - - - - 0x010F73 04:8F63: 18        CLC
C - - - - - 0x010F74 04:8F64: 7D 3C 05  ADC ram_pos_X_hi_enemy,X
C - - - - - 0x010F77 04:8F67: A4 08     LDY ram_0008
C - - - - - 0x010F79 04:8F69: 20 C0 BA  JSR sub_0x007AD0
C - - - - - 0x010F7C 04:8F6C: D0 16     BNE bra_8F84
C - - - - - 0x010F7E 04:8F6E: BC 64 07  LDY ram_0764_obj,X
C - - - - - 0x010F81 04:8F71: B9 A7 90  LDA tbl_90A8 - $01,Y
C - - - - - 0x010F84 04:8F74: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x010F87 04:8F77: A9 08     LDA #$08
C - - - - - 0x010F89 04:8F79: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x010F8C 04:8F7C: A9 00     LDA #$00
C - - - - - 0x010F8E 04:8F7E: 9D 64 07  STA ram_0764_obj,X
C - - - - - 0x010F91 04:8F81: 4C 02 90  JMP loc_9002
bra_8F84:
C - - - - - 0x010F94 04:8F84: BD CA 06  LDA ram_spd_X_hi_obj,X
C - - - - - 0x010F97 04:8F87: 1D BC 06  ORA ram_spd_X_lo_obj,X
C - - - - - 0x010F9A 04:8F8A: F0 3D     BEQ bra_8FC9    ; if not moving along X axis
; if moving along Y axis
C - - - - - 0x010F9C 04:8F8C: BD CA 06  LDA ram_spd_X_hi_obj,X
C - - - - - 0x010F9F 04:8F8F: 2A        ROL
C - - - - - 0x010FA0 04:8F90: 2A        ROL
C - - - - - 0x010FA1 04:8F91: 29 01     AND #$01
C - - - - - 0x010FA3 04:8F93: A8        TAY
C - - - - - 0x010FA4 04:8F94: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x010FA7 04:8F97: D9 B0 90  CMP tbl_90B0,Y
C - - - - - 0x010FAA 04:8F9A: C8        INY
C - - - - - 0x010FAB 04:8F9B: 84 13     STY ram_0013
C - - - - - 0x010FAD 04:8F9D: 6A        ROR
C - - - - - 0x010FAE 04:8F9E: 5D CA 06  EOR ram_spd_X_hi_obj,X
C - - - - - 0x010FB1 04:8FA1: 30 1B     BMI bra_8FBE
C - - - - - 0x010FB3 04:8FA3: BD CA 06  LDA ram_spd_X_hi_obj,X
C - - - - - 0x010FB6 04:8FA6: 0A        ASL
C - - - - - 0x010FB7 04:8FA7: A9 08     LDA #$08
C - - - - - 0x010FB9 04:8FA9: A0 01     LDY #$01
C - - - - - 0x010FBB 04:8FAB: 90 03     BCC bra_8FB0_moving_right
; if moving left
C - - - - - 0x010FBD 04:8FAD: A9 F8     LDA #$F8
C - - - - - 0x010FBF 04:8FAF: C8        INY ; 02
bra_8FB0_moving_right:
C - - - - - 0x010FC0 04:8FB0: 84 13     STY ram_0013
C - - - - - 0x010FC2 04:8FB2: 18        CLC
C - - - - - 0x010FC3 04:8FB3: 7D 3C 05  ADC ram_pos_X_hi_enemy,X
C - - - - - 0x010FC6 04:8FB6: BC 22 05  LDY ram_pos_Y_hi_enemy,X
C - - - - - 0x010FC9 04:8FB9: 20 C0 BA  JSR sub_0x007AD0
C - - - - - 0x010FCC 04:8FBC: F0 0B     BEQ bra_8FC9
bra_8FBE:
C - - - - - 0x010FCE 04:8FBE: BD 64 07  LDA ram_0764_obj,X
C - - - - - 0x010FD1 04:8FC1: F0 76     BEQ bra_9039
C - - - - - 0x010FD3 04:8FC3: 20 BA 90  JSR sub_90BA
C - - - - - 0x010FD6 04:8FC6: 4C 02 90  JMP loc_9002
bra_8FC9:
C - - - - - 0x010FD9 04:8FC9: BD AE 06  LDA ram_spd_Y_hi_obj,X
C - - - - - 0x010FDC 04:8FCC: 1D A0 06  ORA ram_spd_Y_lo_obj,X
C - - - - - 0x010FDF 04:8FCF: F0 27     BEQ bra_8FF8    ; if not moving along Y axis
; if moving along Y axis
C - - - - - 0x010FE1 04:8FD1: BD AE 06  LDA ram_spd_Y_hi_obj,X
C - - - - - 0x010FE4 04:8FD4: 0A        ASL
C - - - - - 0x010FE5 04:8FD5: A9 08     LDA #$08
C - - - - - 0x010FE7 04:8FD7: A0 03     LDY #$03
C - - - - - 0x010FE9 04:8FD9: 90 03     BCC bra_8FDE_moving_down
; if moving uo
C - - - - - 0x010FEB 04:8FDB: A9 F8     LDA #$F8
C - - - - - 0x010FED 04:8FDD: C8        INY ; 04
bra_8FDE_moving_down:
C - - - - - 0x010FEE 04:8FDE: 84 13     STY ram_0013
C - - - - - 0x010FF0 04:8FE0: 18        CLC
C - - - - - 0x010FF1 04:8FE1: 7D 22 05  ADC ram_pos_Y_hi_enemy,X
C - - - - - 0x010FF4 04:8FE4: A8        TAY
C - - - - - 0x010FF5 04:8FE5: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x010FF8 04:8FE8: 20 C0 BA  JSR sub_0x007AD0
C - - - - - 0x010FFB 04:8FEB: F0 0B     BEQ bra_8FF8
C - - - - - 0x010FFD 04:8FED: BD 64 07  LDA ram_0764_obj,X
C - - - - - 0x011000 04:8FF0: F0 2B     BEQ bra_901D
C - - - - - 0x011002 04:8FF2: 20 BA 90  JSR sub_90BA
C - - - - - 0x011005 04:8FF5: 4C 02 90  JMP loc_9002
bra_8FF8:
C - - - - - 0x011008 04:8FF8: BC 64 07  LDY ram_0764_obj,X
C - - - - - 0x01100B 04:8FFB: D0 05     BNE bra_9002
C - - - - - 0x01100D 04:8FFD: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x011010 04:9000: F0 53     BEQ bra_9055
bra_9002:
loc_9002:
C D 0 - - - 0x011012 04:9002: 20 5E 91  JSR sub_915E
C - - - - - 0x011015 04:9005: 20 D3 A6  JSR sub_0x0066E3
C - - - - - 0x011018 04:9008: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x01101B 04:900B: 29 02     AND #$02
C - - - - - 0x01101D 04:900D: F0 0D     BEQ bra_901C_RTS
C - - - - - 0x01101F 04:900F: DE F4 06  DEC ram_06F4_obj,X
C - - - - - 0x011022 04:9012: D0 08     BNE bra_901C_RTS
C - - - - - 0x011024 04:9014: A9 10     LDA #$10
C - - - - - 0x011026 04:9016: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x011029 04:9019: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state
bra_901C_RTS:
C - - - - - 0x01102C 04:901C: 60        RTS
bra_901D:
C - - - - - 0x01102D 04:901D: 20 F5 90  JSR sub_90F5
C - - - - - 0x011030 04:9020: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x011033 04:9023: C5 0C     CMP ram_000C
C - - - - - 0x011035 04:9025: 6A        ROR
C - - - - - 0x011036 04:9026: 5D AE 06  EOR ram_spd_Y_hi_obj,X
C - - - - - 0x011039 04:9029: 30 2A     BMI bra_9055
C - - - - - 0x01103B 04:902B: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x01103E 04:902E: C5 0B     CMP ram_000B
C - - - - - 0x011040 04:9030: A9 00     LDA #$00
C - - - - - 0x011042 04:9032: 90 02     BCC bra_9036
C - - - - - 0x011044 04:9034: A9 01     LDA #$01
bra_9036:
C - - - - - 0x011046 04:9036: 4C 88 90  JMP loc_9088
bra_9039:
C - - - - - 0x011049 04:9039: 20 F5 90  JSR sub_90F5
C - - - - - 0x01104C 04:903C: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x01104F 04:903F: C5 0B     CMP ram_000B
C - - - - - 0x011051 04:9041: 6A        ROR
C - - - - - 0x011052 04:9042: 5D CA 06  EOR ram_spd_X_hi_obj,X
C - - - - - 0x011055 04:9045: 30 0E     BMI bra_9055
C - - - - - 0x011057 04:9047: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x01105A 04:904A: C5 0C     CMP ram_000C
C - - - - - 0x01105C 04:904C: A9 02     LDA #$02
C - - - - - 0x01105E 04:904E: 90 02     BCC bra_9052
- - - - - - 0x011060 04:9050: A9 03     LDA #$03
bra_9052:
C - - - - - 0x011062 04:9052: 4C 88 90  JMP loc_9088
bra_9055:
C - - - - - 0x011065 04:9055: 20 F5 90  JSR sub_90F5
C - - - - - 0x011068 04:9058: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x01106B 04:905B: C5 0C     CMP ram_000C
C - - - - - 0x01106D 04:905D: 90 0A     BCC bra_9069
C - - - - - 0x01106F 04:905F: BD 72 07  LDA ram_0772_obj,X
C - - - - - 0x011072 04:9062: 0A        ASL
C - - - - - 0x011073 04:9063: 30 0C     BMI bra_9071
C - - - - - 0x011075 04:9065: A9 80     LDA #$80
C - - - - - 0x011077 04:9067: D0 05     BNE bra_906E    ; jmp
bra_9069:
C - - - - - 0x011079 04:9069: BD 72 07  LDA ram_0772_obj,X
C - - - - - 0x01107C 04:906C: 29 BF     AND #$BF
bra_906E:
C - - - - - 0x01107E 04:906E: 9D 72 07  STA ram_0772_obj,X
bra_9071:
C - - - - - 0x011081 04:9071: A5 1B     LDA ram_frm_cnt_1
C - - - - - 0x011083 04:9073: E5 23     SBC ram_random
C - - - - - 0x011085 04:9075: 85 23     STA ram_random
C - - - - - 0x011087 04:9077: A5 23     LDA ram_random  ; bzk optimize, loading the same value
C - - - - - 0x011089 04:9079: 29 07     AND #$07
C - - - - - 0x01108B 04:907B: A8        TAY
C - - - - - 0x01108C 04:907C: B9 B2 90  LDA tbl_90B2,Y
C - - - - - 0x01108F 04:907F: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x011092 04:9082: 20 0D 8F  JSR sub_8F0D
C - - - - - 0x011095 04:9085: 4C B7 A6  JMP loc_0x0066C7_delete_object_03



loc_9088:
C D 0 - - - 0x011098 04:9088: A8        TAY
C - - - - - 0x011099 04:9089: B9 A8 90  LDA tbl_90A8,Y
C - - - - - 0x01109C 04:908C: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x01109F 04:908F: B9 AC 90  LDA tbl_90AC,Y
C - - - - - 0x0110A2 04:9092: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x0110A5 04:9095: A5 13     LDA ram_0013
C - - - - - 0x0110A7 04:9097: 9D 64 07  STA ram_0764_obj,X
C - - - - - 0x0110AA 04:909A: 20 13 8F  JSR sub_8F13
C - - - - - 0x0110AD 04:909D: 4C B7 A6  JMP loc_0x0066C7_delete_object_03



tbl_90A0:
- D 0 - - - 0x0110B0 04:90A0: 00        .byte $00   ; 01
- D 0 - - - 0x0110B1 04:90A1: 00        .byte $00   ; 02
- D 0 - - - 0x0110B2 04:90A2: 08        .byte $08   ; 03
- - - - - - 0x0110B3 04:90A3: F8        .byte $F8   ; 04



tbl_90A4:
- D 0 - - - 0x0110B4 04:90A4: 08        .byte $08   ; 01
- D 0 - - - 0x0110B5 04:90A5: F8        .byte $F8   ; 02
- D 0 - - - 0x0110B6 04:90A6: 00        .byte $00   ; 03
- - - - - - 0x0110B7 04:90A7: 00        .byte $00   ; 04



tbl_90A8:
- D 0 - - - 0x0110B8 04:90A8: 00        .byte $00   ; 00 (01)
- D 0 - - - 0x0110B9 04:90A9: 0C        .byte $0C   ; 01 (02)
- D 0 - - - 0x0110BA 04:90AA: 06        .byte $06   ; 02 (03)
- - - - - - 0x0110BB 04:90AB: 12        .byte $12   ; 03 (04)



tbl_90AC:
- D 0 - - - 0x0110BC 04:90AC: 00        .byte $00   ; 00
- D 0 - - - 0x0110BD 04:90AD: 04        .byte $04   ; 01
- D 0 - - - 0x0110BE 04:90AE: 02        .byte $02   ; 02
- - - - - - 0x0110BF 04:90AF: 06        .byte $06   ; 03



tbl_90B0:
- D 0 - - - 0x0110C0 04:90B0: F0        .byte $F0   ; 00
- D 0 - - - 0x0110C1 04:90B1: 10        .byte $10   ; 01



tbl_90B2:
- D 0 - - - 0x0110C2 04:90B2: 1A        .byte $1A   ; 00
- D 0 - - - 0x0110C3 04:90B3: 08        .byte $08   ; 01
- D 0 - - - 0x0110C4 04:90B4: 18        .byte $18   ; 02
- D 0 - - - 0x0110C5 04:90B5: 20        .byte $20   ; 03
- D 0 - - - 0x0110C6 04:90B6: 02        .byte $02   ; 04
- D 0 - - - 0x0110C7 04:90B7: 1C        .byte $1C   ; 05
- D 0 - - - 0x0110C8 04:90B8: 05        .byte $05   ; 06
- D 0 - - - 0x0110C9 04:90B9: 0E        .byte $0E   ; 07



sub_90BA:
C - - - - - 0x0110CA 04:90BA: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x0110CD 04:90BD: 18        CLC
C - - - - - 0x0110CE 04:90BE: 69 0C     ADC #$0C
C - - - - - 0x0110D0 04:90C0: C9 18     CMP #$18
C - - - - - 0x0110D2 04:90C2: 90 02     BCC bra_90C6
C - - - - - 0x0110D4 04:90C4: E9 18     SBC #$18
bra_90C6:
C - - - - - 0x0110D6 04:90C6: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x0110D9 04:90C9: BD 56 07  LDA ram_0756_obj,X
C - - - - - 0x0110DC 04:90CC: 18        CLC
C - - - - - 0x0110DD 04:90CD: 69 04     ADC #$04
C - - - - - 0x0110DF 04:90CF: C9 08     CMP #$08
C - - - - - 0x0110E1 04:90D1: 90 02     BCC bra_90D5
C - - - - - 0x0110E3 04:90D3: E9 08     SBC #$08
bra_90D5:
C - - - - - 0x0110E5 04:90D5: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x0110E8 04:90D8: 4C 13 8F  JMP loc_8F13



sub_90DB:
C - - - - - 0x0110EB 04:90DB: 20 0B 91  JSR sub_910B
C - - - - - 0x0110EE 04:90DE: BD 72 07  LDA ram_0772_obj,X
C - - - - - 0x0110F1 04:90E1: 30 0F     BMI bra_90F2
C - - - - - 0x0110F3 04:90E3: 20 0B AB  JSR sub_0x006B1B_set_target_on_closest_player_X_pos
C - - - - - 0x0110F6 04:90E6: 84 0A     STY ram_000A
C - - - - - 0x0110F8 04:90E8: BD 72 07  LDA ram_0772_obj,X
C - - - - - 0x0110FB 04:90EB: 29 FE     AND #$FE
C - - - - - 0x0110FD 04:90ED: 05 0A     ORA ram_000A
C - - - - - 0x0110FF 04:90EF: 9D 72 07  STA ram_0772_obj,X
bra_90F2:
C - - - - - 0x011102 04:90F2: 85 0A     STA ram_000A
C - - - - - 0x011104 04:90F4: 60        RTS



sub_90F5:
C - - - - - 0x011105 04:90F5: 20 0B 91  JSR sub_910B
C - - - - - 0x011108 04:90F8: BD 72 07  LDA ram_0772_obj,X
C - - - - - 0x01110B 04:90FB: 30 0D     BMI bra_910A_RTS
C - - - - - 0x01110D 04:90FD: 29 01     AND #$01
C - - - - - 0x01110F 04:90FF: A8        TAY
C - - - - - 0x011110 04:9100: B9 32 05  LDA ram_pos_Y_hi_plr,Y
C - - - - - 0x011113 04:9103: 85 0C     STA ram_000C
C - - - - - 0x011115 04:9105: B9 4C 05  LDA ram_pos_X_hi_plr,Y
C - - - - - 0x011118 04:9108: 85 0B     STA ram_000B
bra_910A_RTS:
C - - - - - 0x01111A 04:910A: 60        RTS



sub_910B:
C - - - - - 0x01111B 04:910B: A5 23     LDA ram_random
C - - - - - 0x01111D 04:910D: 29 03     AND #$03
C - - - - - 0x01111F 04:910F: A8        TAY
C - - - - - 0x011120 04:9110: B9 1A 91  LDA tbl_911A,Y
C - - - - - 0x011123 04:9113: 85 0B     STA ram_000B
C - - - - - 0x011125 04:9115: A9 FF     LDA #$FF
C - - - - - 0x011127 04:9117: 85 0C     STA ram_000C
C - - - - - 0x011129 04:9119: 60        RTS



tbl_911A:
- D 0 - - - 0x01112A 04:911A: 20        .byte $20   ; 00 
- D 0 - - - 0x01112B 04:911B: 60        .byte $60   ; 01 
- D 0 - - - 0x01112C 04:911C: A0        .byte $A0   ; 02 
- D 0 - - - 0x01112D 04:911D: E0        .byte $E0   ; 03 



ofs_038_24_911E_03:
C - - J - - 0x01112E 04:911E: 20 57 91  JSR sub_9157
C - - - - - 0x011131 04:9121: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x011134 04:9124: DE F4 06  DEC ram_06F4_obj,X
C - - - - - 0x011137 04:9127: F0 24     BEQ bra_914D
C - - - - - 0x011139 04:9129: BD F4 06  LDA ram_06F4_obj,X
C - - - - - 0x01113C 04:912C: C9 0C     CMP #$0C
C - - - - - 0x01113E 04:912E: D0 1C     BNE bra_914C_RTS
C - - - - - 0x011140 04:9130: A9 06     LDA #$06
C - - - - - 0x011142 04:9132: 9D 80 07  STA ram_0780_obj,X
C - - - - - 0x011145 04:9135: BD 72 07  LDA ram_0772_obj,X
C - - - - - 0x011148 04:9138: 10 03     BPL bra_913D
C - - - - - 0x01114A 04:913A: 20 0B AB  JSR sub_0x006B1B_set_target_on_closest_player_X_pos
bra_913D:
C - - - - - 0x01114D 04:913D: 85 0A     STA ram_000A
C - - - - - 0x01114F 04:913F: 20 AE AA  JSR sub_0x006ABE
C - - - - - 0x011152 04:9142: A0 03     LDY #$03
C - - - - - 0x011154 04:9144: 20 27 F3  JSR sub_0x01F337
C - - - - - 0x011157 04:9147: A9 08     LDA #$08
C - - - - - 0x011159 04:9149: 9D F4 06  STA ram_06F4_obj,X
bra_914C_RTS:
C - - - - - 0x01115C 04:914C: 60        RTS
bra_914D:
C - - - - - 0x01115D 04:914D: A9 40     LDA #$40
C - - - - - 0x01115F 04:914F: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x011162 04:9152: A9 02     LDA #$02
C - - - - - 0x011164 04:9154: 4C 83 A2  JMP loc_0x006293_set_obj_state



sub_9157:
C - - - - - 0x011167 04:9157: A9 00     LDA #$00
C - - - - - 0x011169 04:9159: 9D 10 07  STA ram_0710_obj,X
; bzk optimize, useless branch
C - - - - - 0x01116C 04:915C: D0 1D     BNE bra_917B
sub_915E:
C - - - - - 0x01116E 04:915E: FE 02 07  INC ram_0702_obj,X
C - - - - - 0x011171 04:9161: BD 02 07  LDA ram_0702_obj,X
C - - - - - 0x011174 04:9164: C9 08     CMP #$08
C - - - - - 0x011176 04:9166: 90 10     BCC bra_9178_not_overflow
C - - - - - 0x011178 04:9168: A9 00     LDA #$00
C - - - - - 0x01117A 04:916A: 9D 02 07  STA ram_0702_obj,X
C - - - - - 0x01117D 04:916D: FE 10 07  INC ram_0710_obj,X
C - - - - - 0x011180 04:9170: BD 10 07  LDA ram_0710_obj,X
C - - - - - 0x011183 04:9173: 29 01     AND #$01
C - - - - - 0x011185 04:9175: 9D 10 07  STA ram_0710_obj,X
bra_9178_not_overflow:
C - - - - - 0x011188 04:9178: BC 56 07  LDY ram_0756_obj,X
bra_917B:
C - - - - - 0x01118B 04:917B: B9 8F 91  LDA tbl_918F_spr_attr,Y
C - - - - - 0x01118E 04:917E: 9D 56 05  STA ram_attr_spr_enemy,X
C - - - - - 0x011191 04:9181: 98        TYA
C - - - - - 0x011192 04:9182: 0A        ASL
C - - - - - 0x011193 04:9183: 18        CLC
C - - - - - 0x011194 04:9184: 7D 10 07  ADC ram_0710_obj,X
C - - - - - 0x011197 04:9187: A8        TAY
C - - - - - 0x011198 04:9188: B9 97 91  LDA tbl_9197_animation,Y
C - - - - - 0x01119B 04:918B: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x01119E 04:918E: 60        RTS



tbl_918F_spr_attr:
- D 0 - - - 0x01119F 04:918F: 40        .byte $40   ; 00 
- D 0 - - - 0x0111A0 04:9190: 40        .byte $40   ; 01 
- D 0 - - - 0x0111A1 04:9191: 00        .byte $00   ; 02 
- D 0 - - - 0x0111A2 04:9192: 00        .byte $00   ; 03 
- D 0 - - - 0x0111A3 04:9193: 00        .byte $00   ; 04 
- D 0 - - - 0x0111A4 04:9194: 00        .byte $00   ; 05 
- D 0 - - - 0x0111A5 04:9195: 00        .byte $00   ; 06 
- D 0 - - - 0x0111A6 04:9196: 40        .byte $40   ; 07 



tbl_9197_animation:
;                                              +---------- 
;                                              |    +----- 
;                                              |    |
- D 0 - - - 0x0111A7 04:9197: 7C        .byte $7C, $7D   ; 00 
- D 0 - - - 0x0111A9 04:9199: 7A        .byte $7A, $7B   ; 01 
- D 0 - - - 0x0111AB 04:919B: 78        .byte $78, $79   ; 02 
- D 0 - - - 0x0111AD 04:919D: 7A        .byte $7A, $7B   ; 03 
- D 0 - - - 0x0111AF 04:919F: 7C        .byte $7C, $7D   ; 04 
- D 0 - - - 0x0111B1 04:91A1: 7E        .byte $7E, $7F   ; 05 
- D 0 - - - 0x0111B3 04:91A3: 80        .byte $80, $81   ; 06 
- D 0 - - - 0x0111B5 04:91A5: 7E        .byte $7E, $7F   ; 07 



_off001_0x0111B7_60_big_red_spiked_ball:
- D 0 - I - 0x0111B7 04:91A7: B5 91     .word ofs_038_60_91B5_01_initialize_object ; 
- D 0 - I - 0x0111B9 04:91A9: C9 91     .word ofs_038_60_91C9_02 ; 
- D 0 - I - 0x0111BB 04:91AB: 05 92     .word ofs_038_60_9205_03 ; 
- D 0 - I - 0x0111BD 04:91AD: 7A 92     .word ofs_038_60_927A_04 ; 
- D 0 - I - 0x0111BF 04:91AF: 97 92     .word ofs_038_60_9297_05 ; 
- D 0 - I - 0x0111C1 04:91B1: 9D 92     .word ofs_038_60_929D_06 ; 
- D 0 - I - 0x0111C3 04:91B3: A3 92     .word ofs_038_60_92A3_07 ; 



ofs_038_60_91B5_01_initialize_object:
C - - J - - 0x0111C5 04:91B5: A9 81     LDA #$81
C - - - - - 0x0111C7 04:91B7: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x0111CA 04:91BA: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x0111CD 04:91BD: 18        CLC
C - - - - - 0x0111CE 04:91BE: 69 08     ADC #$08
C - - - - - 0x0111D0 04:91C0: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x0111D3 04:91C3: 20 C5 92  JSR sub_92C5
C - - - - - 0x0111D6 04:91C6: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_60_91C9_02:
C - - J - - 0x0111D9 04:91C9: A9 01     LDA #$01
C - - - - - 0x0111DB 04:91CB: 9D 56 05  STA ram_attr_spr_enemy,X
C - - - - - 0x0111DE 04:91CE: 20 C5 92  JSR sub_92C5
C - - - - - 0x0111E1 04:91D1: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x0111E4 04:91D4: C9 10     CMP #$10
C - - - - - 0x0111E6 04:91D6: 90 2A     BCC bra_9202_RTS
C - - - - - 0x0111E8 04:91D8: C9 FF     CMP #$FF
C - - - - - 0x0111EA 04:91DA: D0 03     BNE bra_91DF
C - - - - - 0x0111EC 04:91DC: 4C 75 A2  JMP loc_0x006285_delete_object_02
bra_91DF:
C - - - - - 0x0111EF 04:91DF: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x0111F2 04:91E2: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x0111F5 04:91E5: 29 01     AND #$01
C - - - - - 0x0111F7 04:91E7: A8        TAY
C - - - - - 0x0111F8 04:91E8: B9 03 92  LDA tbl_9203_pos_X,Y
C - - - - - 0x0111FB 04:91EB: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x0111FE 04:91EE: A9 00     LDA #$00
C - - - - - 0x011200 04:91F0: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x011203 04:91F3: A9 00     LDA #$00
C - - - - - 0x011205 04:91F5: 9D 3A 07  STA ram_073A_obj_hitbox_index,X
C - - - - - 0x011208 04:91F8: A0 0D     LDY #con_0x006C32_0D
C - - - - - 0x01120A 04:91FA: 20 FD AB  JSR sub_0x006C0D
C - - - - - 0x01120D 04:91FD: A9 32     LDA #$32
C - - - - - 0x01120F 04:91FF: 4C E0 A2  JMP loc_0x0062F0
bra_9202_RTS:
C - - - - - 0x011212 04:9202: 60        RTS



tbl_9203_pos_X:
- D 0 - - - 0x011213 04:9203: E0        .byte $E0   ; 00 
- D 0 - - - 0x011214 04:9204: 20        .byte $20   ; 01 



ofs_038_60_9205_03:
C - - J - - 0x011215 04:9205: A0 0D     LDY #con_0x006C32_0D
C - - - - - 0x011217 04:9207: 20 FD AB  JSR sub_0x006C0D
C - - - - - 0x01121A 04:920A: 20 C5 92  JSR sub_92C5
C - - - - - 0x01121D 04:920D: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x011220 04:9210: D0 F0     BNE bra_9202_RTS
C - - - - - 0x011222 04:9212: 20 0B AB  JSR sub_0x006B1B_set_target_on_closest_player_X_pos
C - - - - - 0x011225 04:9215: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x011228 04:9218: 38        SEC
C - - - - - 0x011229 04:9219: F9 32 05  SBC ram_pos_Y_hi_plr,Y
C - - - - - 0x01122C 04:921C: A0 00     LDY #$00
C - - - - - 0x01122E 04:921E: 90 02     BCC bra_9222
C - - - - - 0x011230 04:9220: A0 04     LDY #$04
bra_9222:
C - - - - - 0x011232 04:9222: B0 04     BCS bra_9228
C - - - - - 0x011234 04:9224: 49 FF     EOR #$FF
C - - - - - 0x011236 04:9226: 69 01     ADC #$01
bra_9228:
C - - - - - 0x011238 04:9228: C9 20     CMP #$20
C - - - - - 0x01123A 04:922A: B0 02     BCS bra_922E
C - - - - - 0x01123C 04:922C: A0 02     LDY #$02
bra_922E:
C - - - - - 0x01123E 04:922E: A5 72     LDA ram_cam_spd_Y
C - - - - - 0x011240 04:9230: F0 02     BEQ bra_9234
C - - - - - 0x011242 04:9232: C8        INY
C - - - - - 0x011243 04:9233: C8        INY
bra_9234:
C - - - - - 0x011244 04:9234: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x011247 04:9237: 4A        LSR
C - - - - - 0x011248 04:9238: 90 01     BCC bra_923B
C - - - - - 0x01124A 04:923A: C8        INY
bra_923B:
C - - - - - 0x01124B 04:923B: 98        TYA
C - - - - - 0x01124C 04:923C: 0A        ASL
C - - - - - 0x01124D 04:923D: 0A        ASL
C - - - - - 0x01124E 04:923E: A8        TAY
C - - - - - 0x01124F 04:923F: B9 5A 92  LDA tbl_925A_speed,Y
C - - - - - 0x011252 04:9242: 9D A0 06  STA ram_spd_Y_lo_obj,X
C - - - - - 0x011255 04:9245: B9 5B 92  LDA tbl_925A_speed + $01,Y
C - - - - - 0x011258 04:9248: 9D AE 06  STA ram_spd_Y_hi_obj,X
C - - - - - 0x01125B 04:924B: B9 5C 92  LDA tbl_925A_speed + $02,Y
C - - - - - 0x01125E 04:924E: 9D BC 06  STA ram_spd_X_lo_obj,X
C - - - - - 0x011261 04:9251: B9 5D 92  LDA tbl_925A_speed + $03,Y
C - - - - - 0x011264 04:9254: 9D CA 06  STA ram_spd_X_hi_obj,X
C - - - - - 0x011267 04:9257: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



tbl_925A_speed:
; 00 
- D 0 - - - 0x01126A 04:925A: 81 00     .word $0081 ; Y
- D 0 - - - 0x01126C 04:925C: A6 FE     .word $FEA6 ; X
; 01 
- D 0 - - - 0x01126E 04:925E: 81 00     .word $0081 ; Y
- D 0 - - - 0x011270 04:9260: 5A 01     .word $015A ; X
; 02 
- D 0 - - - 0x011272 04:9262: 00 00     .word $0000 ; Y
- D 0 - - - 0x011274 04:9264: 80 FE     .word $FE80 ; X
; 03 
- D 0 - - - 0x011276 04:9266: 00 00     .word $0000 ; Y
- D 0 - - - 0x011278 04:9268: 80 01     .word $0180 ; X
; 04 
- D 0 - - - 0x01127A 04:926A: 7F FF     .word $FF7F ; Y
- D 0 - - - 0x01127C 04:926C: A6 FE     .word $FEA6 ; X
; 05 
- D 0 - - - 0x01127E 04:926E: 7F FF     .word $FF7F ; Y
- D 0 - - - 0x011280 04:9270: 5A 01     .word $015A ; X
; 06 
- D 0 - - - 0x011282 04:9272: 7F FF     .word $FF7F ; Y
- D 0 - - - 0x011284 04:9274: A6 FE     .word $FEA6 ; X
; 07 
- D 0 - - - 0x011286 04:9276: 7F FF     .word $FF7F ; Y
- D 0 - - - 0x011288 04:9278: 5A 01     .word $015A ; X



ofs_038_60_927A_04:
C - - J - - 0x01128A 04:927A: A0 0D     LDY #con_0x006C32_0D
C - - - - - 0x01128C 04:927C: 20 FD AB  JSR sub_0x006C0D
C - - - - - 0x01128F 04:927F: 20 AF 92  JSR sub_92AF
C - - - - - 0x011292 04:9282: 20 6F 93  JSR sub_936F
C - - - - - 0x011295 04:9285: 10 0F     BPL bra_9296_RTS
bra_9287:
sub_9287:
C - - - - - 0x011297 04:9287: A0 60     LDY #con_obj_id_60
C - - - - - 0x011299 04:9289: 20 9E F7  JSR sub_0x01F7AE_prepare_object
C - - - - - 0x01129C 04:928C: A9 02     LDA #$02
C - - - - - 0x01129E 04:928E: 9D 68 06  STA ram_obj_state,X
C - - - - - 0x0112A1 04:9291: A9 00     LDA #$00
C - - - - - 0x0112A3 04:9293: 9D 10 07  STA ram_0710_obj,X
bra_9296_RTS:
C - - - - - 0x0112A6 04:9296: 60        RTS



ofs_038_60_9297_05:
C - - J - - 0x0112A7 04:9297: 20 9A A2  JSR sub_0x0062AA
C - - - - - 0x0112AA 04:929A: 4C A6 92  JMP loc_92A6



ofs_038_60_929D_06:
C - - J - - 0x0112AD 04:929D: 20 FD A2  JSR sub_0x00630D
C - - - - - 0x0112B0 04:92A0: 4C A6 92  JMP loc_92A6



ofs_038_60_92A3_07:
C - - J - - 0x0112B3 04:92A3: 20 3D A3  JSR sub_0x00634D_delete_object_04
loc_92A6:
C D 0 - - - 0x0112B6 04:92A6: 20 D5 92  JSR sub_92D5
C - - - - - 0x0112B9 04:92A9: BD 68 06  LDA ram_obj_state,X
C - - - - - 0x0112BC 04:92AC: F0 D9     BEQ bra_9287
C - - - - - 0x0112BE 04:92AE: 60        RTS



sub_92AF:
C - - - - - 0x0112BF 04:92AF: 20 ED A6  JSR sub_0x0066FD
C - - - - - 0x0112C2 04:92B2: BD 84 06  LDA ram_pos_Y_lo_enemy,X
C - - - - - 0x0112C5 04:92B5: 18        CLC
C - - - - - 0x0112C6 04:92B6: 7D A0 06  ADC ram_spd_Y_lo_obj,X
C - - - - - 0x0112C9 04:92B9: 9D 84 06  STA ram_pos_Y_lo_enemy,X
C - - - - - 0x0112CC 04:92BC: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x0112CF 04:92BF: 7D AE 06  ADC ram_spd_Y_hi_obj,X
C - - - - - 0x0112D2 04:92C2: 4C C8 92  JMP loc_92C8



sub_92C5:
C - - - - - 0x0112D5 04:92C5: BD 22 05  LDA ram_pos_Y_hi_enemy,X
loc_92C8:
C D 0 - - - 0x0112D8 04:92C8: 38        SEC
C - - - - - 0x0112D9 04:92C9: E5 72     SBC ram_cam_spd_Y
C - - - - - 0x0112DB 04:92CB: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x0112DE 04:92CE: C9 E8     CMP #$E8
C - - - - - 0x0112E0 04:92D0: 90 03     BCC bra_92D5
C - - - - - 0x0112E2 04:92D2: 20 87 92  JSR sub_9287
bra_92D5:
sub_92D5:
C - - - - - 0x0112E5 04:92D5: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x0112E8 04:92D8: C9 FF     CMP #$FF
C - - - - - 0x0112EA 04:92DA: F0 BA     BEQ bra_9296_RTS
C - - - - - 0x0112EC 04:92DC: 38        SEC
C - - - - - 0x0112ED 04:92DD: E5 72     SBC ram_cam_spd_Y
C - - - - - 0x0112EF 04:92DF: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x0112F2 04:92E2: C9 E0     CMP #$E0
C - - - - - 0x0112F4 04:92E4: 90 B0     BCC bra_9296_RTS
C - - - - - 0x0112F6 04:92E6: A9 FF     LDA #$FF
C - - - - - 0x0112F8 04:92E8: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x0112FB 04:92EB: 60        RTS



_off001_0x0112FC_61_boss_6_big_red_spiked_ball:
- D 0 - I - 0x0112FC 04:92EC: F6 92     .word ofs_038_61_92F6_01_initialize_object ; 
- D 0 - I - 0x0112FE 04:92EE: 05 93     .word ofs_038_61_9305_02 ; 
- D 0 - I - 0x011300 04:92F0: 9A A2     .word ofs_038_61_0x0062AA_03 ; 
- D 0 - I - 0x011302 04:92F2: FD A2     .word ofs_038_61_0x00630D_04 ; 
- D 0 - I - 0x011304 04:92F4: 3D A3     .word ofs_038_61_0x00634D_05_delete_object_04 ; 



ofs_038_61_92F6_01_initialize_object:
C - - J - - 0x011306 04:92F6: A9 06     LDA #$06
C - - - - - 0x011308 04:92F8: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x01130B 04:92FB: A9 01     LDA #$01
C - - - - - 0x01130D 04:92FD: 9D 56 05  STA ram_attr_spr_enemy,X
C - - - - - 0x011310 04:9300: A9 01     LDA #$01
C - - - - - 0x011312 04:9302: 4C E0 A2  JMP loc_0x0062F0



ofs_038_61_9305_02:
C - - J - - 0x011315 04:9305: A0 0D     LDY #con_0x006C32_0D
C - - - - - 0x011317 04:9307: 20 FD AB  JSR sub_0x006C0D
C - - - - - 0x01131A 04:930A: 20 23 93  JSR sub_9323
C - - - - - 0x01131D 04:930D: 20 D3 A6  JSR sub_0x0066E3
C - - - - - 0x011320 04:9310: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x011323 04:9313: D0 0D     BNE bra_9322_RTS
C - - - - - 0x011325 04:9315: A9 18     LDA #$18
C - - - - - 0x011327 04:9317: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x01132A 04:931A: 20 0B AB  JSR sub_0x006B1B_set_target_on_closest_player_X_pos
C - - - - - 0x01132D 04:931D: A0 01     LDY #$01
C - - - - - 0x01132F 04:931F: 4C 23 A9  JMP loc_0x006933
bra_9322_RTS:
C - - - - - 0x011332 04:9322: 60        RTS



sub_9323:
C - - - - - 0x011333 04:9323: A9 08     LDA #$08
C - - - - - 0x011335 04:9325: BC CA 06  LDY ram_spd_X_hi_obj,X
C - - - - - 0x011338 04:9328: 10 02     BPL bra_932C_moving_right
; if moving left
C - - - - - 0x01133A 04:932A: A9 F8     LDA #$F8
bra_932C_moving_right:
C - - - - - 0x01133C 04:932C: 18        CLC
C - - - - - 0x01133D 04:932D: 7D 3C 05  ADC ram_pos_X_hi_enemy,X
C - - - - - 0x011340 04:9330: BC 22 05  LDY ram_pos_Y_hi_enemy,X
C - - - - - 0x011343 04:9333: 20 C0 BA  JSR sub_0x007AD0
C - - - - - 0x011346 04:9336: C9 02     CMP #$02
C - - - - - 0x011348 04:9338: B0 07     BCS bra_9341
C - - - - - 0x01134A 04:933A: A9 02     LDA #$02
C - - - - - 0x01134C 04:933C: 20 71 93  JSR sub_9371
C - - - - - 0x01134F 04:933F: 10 08     BPL bra_9349
bra_9341:
C - - - - - 0x011351 04:9341: 20 D3 A7  JSR sub_0x0067E3_clear_spd_X
C - - - - - 0x011354 04:9344: A9 01     LDA #$01
C - - - - - 0x011356 04:9346: 9D E6 06  STA ram_06E6_obj,X
bra_9349:
C - - - - - 0x011359 04:9349: A9 08     LDA #$08
C - - - - - 0x01135B 04:934B: BC AE 06  LDY ram_spd_Y_hi_obj,X
C - - - - - 0x01135E 04:934E: 10 02     BPL bra_9352_moving_down
; if moving up
C - - - - - 0x011360 04:9350: A9 F8     LDA #$F8
bra_9352_moving_down:
C - - - - - 0x011362 04:9352: 18        CLC
C - - - - - 0x011363 04:9353: 7D 22 05  ADC ram_pos_Y_hi_enemy,X
C - - - - - 0x011366 04:9356: A8        TAY
C - - - - - 0x011367 04:9357: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x01136A 04:935A: 20 C0 BA  JSR sub_0x007AD0
C - - - - - 0x01136D 04:935D: C9 02     CMP #$02
C - - - - - 0x01136F 04:935F: B0 05     BCS bra_9366
C - - - - - 0x011371 04:9361: 20 89 93  JSR sub_9389
C - - - - - 0x011374 04:9364: 10 08     BPL bra_936E_RTS
bra_9366:
C - - - - - 0x011376 04:9366: 20 CA A7  JSR sub_0x0067DA_clear_spd_Y
C - - - - - 0x011379 04:9369: A9 01     LDA #$01
C - - - - - 0x01137B 04:936B: 9D E6 06  STA ram_06E6_obj,X
bra_936E_RTS:
C - - - - - 0x01137E 04:936E: 60        RTS



sub_936F:
C - - - - - 0x01137F 04:936F: A9 00     LDA #$00
sub_9371:
C - - - - - 0x011381 04:9371: 85 08     STA ram_0008
C - - - - - 0x011383 04:9373: BD CA 06  LDA ram_spd_X_hi_obj,X
C - - - - - 0x011386 04:9376: 2A        ROL
C - - - - - 0x011387 04:9377: 2A        ROL
C - - - - - 0x011388 04:9378: 29 01     AND #$01
C - - - - - 0x01138A 04:937A: 18        CLC
C - - - - - 0x01138B 04:937B: 65 08     ADC ram_0008
C - - - - - 0x01138D 04:937D: A8        TAY
C - - - - - 0x01138E 04:937E: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x011391 04:9381: D9 9C 93  CMP tbl_939C_pos_X,Y
C - - - - - 0x011394 04:9384: 6A        ROR
C - - - - - 0x011395 04:9385: 5D CA 06  EOR ram_spd_X_hi_obj,X
C - - - - - 0x011398 04:9388: 60        RTS



sub_9389:
C - - - - - 0x011399 04:9389: BD AE 06  LDA ram_spd_Y_hi_obj,X
C - - - - - 0x01139C 04:938C: 2A        ROL
C - - - - - 0x01139D 04:938D: 2A        ROL
C - - - - - 0x01139E 04:938E: 29 01     AND #$01
C - - - - - 0x0113A0 04:9390: A8        TAY
C - - - - - 0x0113A1 04:9391: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x0113A4 04:9394: D9 A0 93  CMP tbl_93A0_pos_Y,Y
C - - - - - 0x0113A7 04:9397: 6A        ROR
C - - - - - 0x0113A8 04:9398: 5D AE 06  EOR ram_spd_Y_hi_obj,X
C - - - - - 0x0113AB 04:939B: 60        RTS



tbl_939C_pos_X:
;                                              +---------- 
;                                              |    +----- 
;                                              |    |
- D 0 - - - 0x0113AC 04:939C: E0        .byte $E0, $20   ; 00 
- D 0 - - - 0x0113AE 04:939E: F8        .byte $F8, $08   ; 02 



tbl_93A0_pos_Y:
- D 0 - - - 0x0113B0 04:93A0: D0        .byte $D0   ; 00 
- D 0 - - - 0x0113B1 04:93A1: 18        .byte $18   ; 01 



_off001_0x0113B2_70_boss_6_hole:
- D 0 - I - 0x0113B2 04:93A2: A8 93     .word ofs_038_70_93A8_01_initialize_object ; 
- D 0 - I - 0x0113B4 04:93A4: B0 93     .word ofs_038_70_93B0_02 ; 
- D 0 - I - 0x0113B6 04:93A6: 75 A2     .word ofs_038_70_0x006285_03_delete_object_02 ; 



ofs_038_70_93A8_01_initialize_object:
C - - J - - 0x0113B8 04:93A8: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x0113BB 04:93AB: A9 70     LDA #$70
C - - - - - 0x0113BD 04:93AD: 4C E0 A2  JMP loc_0x0062F0



ofs_038_70_93B0_02:
C - - J - - 0x0113C0 04:93B0: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x0113C3 04:93B3: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x0113C6 04:93B6: D0 11     BNE bra_93C9_RTS
C - - - - - 0x0113C8 04:93B8: A0 61     LDY #$61
C - - - - - 0x0113CA 04:93BA: 84 17     STY ram_0017
C - - - - - 0x0113CC 04:93BC: A2 05     LDX #$05
C - - - - - 0x0113CE 04:93BE: 20 08 F7  JSR sub_0x01F718_try_to_find_free_object_slot___X_slots
C - - - - - 0x0113D1 04:93C1: 20 CD AB  JSR sub_0x006BDD
C - - - - - 0x0113D4 04:93C4: A9 F0     LDA #$F0
C - - - - - 0x0113D6 04:93C6: 9D E6 06  STA ram_06E6_obj,X
bra_93C9_RTS:
C - - - - - 0x0113D9 04:93C9: 60        RTS



_off001_0x0113DA_71_chr_banks_changer:
- D 0 - I - 0x0113DA 04:93CA: CE 93     .word ofs_038_71_93CE_01_initialize_object ; 
- D 0 - I - 0x0113DC 04:93CC: FB 93     .word ofs_038_71_93FB_02 ; 



ofs_038_71_93CE_01_initialize_object:
C - - J - - 0x0113DE 04:93CE: A9 F0     LDA #con__hp_F0
C - - - - - 0x0113E0 04:93D0: 9D 76 06  STA ram_obj_hp,X
C - - - - - 0x0113E3 04:93D3: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x0113E6 04:93D6: 29 01     AND #$01
C - - - - - 0x0113E8 04:93D8: A8        TAY
C - - - - - 0x0113E9 04:93D9: B9 F3 93  LDA tbl_93F3_chr_bank_bg_0,Y
C - - - - - 0x0113EC 04:93DC: 8D F0 07  STA ram_chr_bank_bg_1
C - - - - - 0x0113EF 04:93DF: B9 F5 93  LDA tbl_93F5_chr_bank_bg_1,Y
C - - - - - 0x0113F2 04:93E2: 8D F1 07  STA ram_chr_bank_bg_2
C - - - - - 0x0113F5 04:93E5: B9 F7 93  LDA tbl_93F7_irq_handler,Y
C - - - - - 0x0113F8 04:93E8: 85 27     STA ram_irq_handler_hi
C - - - - - 0x0113FA 04:93EA: B9 F9 93  LDA tbl_93F9,Y
C - - - - - 0x0113FD 04:93ED: 20 FD 93  JSR sub_93FD
C - - - - - 0x011400 04:93F0: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



tbl_93F3_chr_bank_bg_0:
- D 0 - - - 0x011403 04:93F3: 50        .byte con_chr_bank + $50   ; 00 
- D 0 - - - 0x011404 04:93F4: 54        .byte con_chr_bank + $54   ; 01 



tbl_93F5_chr_bank_bg_1:
- D 0 - - - 0x011405 04:93F5: 52        .byte con_chr_bank + $52   ; 00 
- D 0 - - - 0x011406 04:93F6: 56        .byte con_chr_bank + $56   ; 01 



tbl_93F7_irq_handler:
- D 0 - - - 0x011407 04:93F7: 0E        .byte con_irq_area_6_change_floor_color   ; 00 
- D 0 - - - 0x011408 04:93F8: 0F        .byte con_irq_area_6_boss   ; 01 



tbl_93F9:
- D 0 - - - 0x011409 04:93F9: 06        .byte $06   ; 00 
- D 0 - - - 0x01140A 04:93FA: 08        .byte $08   ; 01 



ofs_038_71_93FB_02:
C - - J - - 0x01140B 04:93FB: A5 45     LDA ram_scanline
sub_93FD:
C - - - - - 0x01140D 04:93FD: 38        SEC
C - - - - - 0x01140E 04:93FE: E5 72     SBC ram_cam_spd_Y
C - - - - - 0x011410 04:9400: 85 45     STA ram_scanline
C - - - - - 0x011412 04:9402: C9 F0     CMP #$F0
C - - - - - 0x011414 04:9404: B0 07     BCS bra_940D
C - - - - - 0x011416 04:9406: A5 71     LDA ram_0071_scroll_type
C - - - - - 0x011418 04:9408: 30 09     BMI bra_9413_RTS
C - - - - - 0x01141A 04:940A: 4C 7F FC  JMP loc_0x01FC8F_copy_reg_values
bra_940D:
C - - - - - 0x01141D 04:940D: 20 75 A2  JSR sub_0x006285_delete_object_02
C - - - - - 0x011420 04:9410: 4C 8C FC  JMP loc_0x01FC9C_increase_002B
bra_9413_RTS:
C - - - - - 0x011423 04:9413: 60        RTS



_off001_0x011424_65_boss_6_phase_2:
- D 0 - I - 0x011424 04:9414: 2E 94     .word ofs_038_65_942E_01_initialize_object ; 
- D 0 - I - 0x011426 04:9416: 58 94     .word ofs_038_65_9458_02 ; 
- D 0 - I - 0x011428 04:9418: 72 94     .word ofs_038_65_9472_03 ; 
- D 0 - I - 0x01142A 04:941A: 91 94     .word ofs_038_65_9491_04 ; 
- D 0 - I - 0x01142C 04:941C: D3 94     .word ofs_038_65_94D3_05 ; 
- D 0 - I - 0x01142E 04:941E: 1E 95     .word ofs_038_65_951E_06 ; 
- D 0 - I - 0x011430 04:9420: 64 95     .word ofs_038_65_9564_07 ; 
- D 0 - I - 0x011432 04:9422: 73 95     .word ofs_038_65_9573_08 ; 
- D 0 - I - 0x011434 04:9424: C5 95     .word ofs_038_65_95C5_09 ; 
- D 0 - I - 0x011436 04:9426: C8 95     .word ofs_038_65_95C8_0A ; 
- D 0 - I - 0x011438 04:9428: CB 95     .word ofs_038_65_95CB_0B ; 
- D 0 - I - 0x01143A 04:942A: F6 A2     .word ofs_038_65_0x006306_0C ; 
- D 0 - I - 0x01143C 04:942C: DF 95     .word ofs_038_65_95DF_0D ; 



ofs_038_65_942E_01_initialize_object:
C - - J - - 0x01143E 04:942E: A9 10     LDA #$10
C - - - - - 0x011440 04:9430: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x011443 04:9433: A9 F0     LDA #con__hp_F0
C - - - - - 0x011445 04:9435: 9D 76 06  STA ram_obj_hp,X
C - - - - - 0x011448 04:9438: A9 58     LDA #con_chr_bank + $58
C - - - - - 0x01144A 04:943A: 8D F1 07  STA ram_chr_bank_bg_2
C - - - - - 0x01144D 04:943D: A9 11     LDA #con_chr_bank + $11
C - - - - - 0x01144F 04:943F: 8D F5 07  STA ram_chr_bank_spr_4
C - - - - - 0x011452 04:9442: A9 FF     LDA #$FF
C - - - - - 0x011454 04:9444: 8D CF 03  STA ram_03CF_area_config
C - - - - - 0x011457 04:9447: A0 9C     LDY #con_F97C_colors + $9C
C - - - - - 0x011459 04:9449: 20 64 F9  JSR sub_0x01F974_write_3_colors_with_condition
C - - - - - 0x01145C 04:944C: A0 A0     LDY #con_F97C_colors + $A0
C - - - - - 0x01145E 04:944E: 20 64 F9  JSR sub_0x01F974_write_3_colors_with_condition
C - - - - - 0x011461 04:9451: A6 10     LDX ram_0010
C - - - - - 0x011463 04:9453: A9 70     LDA #$70
C - - - - - 0x011465 04:9455: 4C E0 A2  JMP loc_0x0062F0



ofs_038_65_9458_02:
C - - J - - 0x011468 04:9458: A5 5B     LDA ram_frm_cnt_2
C - - - - - 0x01146A 04:945A: 4A        LSR
C - - - - - 0x01146B 04:945B: 90 6C     BCC bra_94C9_RTS
C - - - - - 0x01146D 04:945D: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x011470 04:9460: D0 67     BNE bra_94C9_RTS
C - - - - - 0x011472 04:9462: A9 00     LDA #$00
C - - - - - 0x011474 04:9464: 85 64     STA ram_0064
C - - - - - 0x011476 04:9466: A9 02     LDA #$02
C - - - - - 0x011478 04:9468: 85 61     STA ram_0061_area_config
C - - - - - 0x01147A 04:946A: A9 08     LDA #$08
C - - - - - 0x01147C 04:946C: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x01147F 04:946F: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_65_9472_03:
C - - J - - 0x011482 04:9472: A5 60     LDA ram_0060_game_handler
C - - - - - 0x011484 04:9474: 05 70     ORA ram_0070_game_handler
C - - - - - 0x011486 04:9476: D0 09     BNE bra_9481_RTS
C - - - - - 0x011488 04:9478: DE 48 07  DEC ram_0748_obj,X
C - - - - - 0x01148B 04:947B: F0 05     BEQ bra_9482
C - - - - - 0x01148D 04:947D: A9 00     LDA #$00
C - - - - - 0x01148F 04:947F: 85 6B     STA ram_006B
bra_9481_RTS:
C - - - - - 0x011491 04:9481: 60        RTS
bra_9482:
C - - - - - 0x011492 04:9482: A9 01     LDA #$01
C - - - - - 0x011494 04:9484: 9D 02 07  STA ram_0702_obj,X
C - - - - - 0x011497 04:9487: A5 45     LDA ram_scanline
C - - - - - 0x011499 04:9489: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x01149C 04:948C: A9 B0     LDA #$B0
C - - - - - 0x01149E 04:948E: 4C E0 A2  JMP loc_0x0062F0



ofs_038_65_9491_04:
C - - J - - 0x0114A1 04:9491: 20 6B AB  JSR sub_0x006B7B
C - - - - - 0x0114A4 04:9494: 20 CA 94  JSR sub_94CA
C - - - - - 0x0114A7 04:9497: A5 5B     LDA ram_frm_cnt_2
C - - - - - 0x0114A9 04:9499: 4A        LSR
C - - - - - 0x0114AA 04:949A: 90 2D     BCC bra_94C9_RTS
C - - - - - 0x0114AC 04:949C: BD E6 06  LDA ram_06E6_obj,X
C - - - - - 0x0114AF 04:949F: C9 60     CMP #$60
C - - - - - 0x0114B1 04:94A1: D0 05     BNE bra_94A8
C - - - - - 0x0114B3 04:94A3: A9 30     LDA #con_sound_30
C - - - - - 0x0114B5 04:94A5: 20 DE FD  JSR sub_0x01FDEE_play_sound
bra_94A8:
C - - - - - 0x0114B8 04:94A8: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x0114BB 04:94AB: D0 1C     BNE bra_94C9_RTS
C - - - - - 0x0114BD 04:94AD: A9 38     LDA #$38
C - - - - - 0x0114BF 04:94AF: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x0114C2 04:94B2: A9 80     LDA #$80
C - - - - - 0x0114C4 04:94B4: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x0114C7 04:94B7: A9 00     LDA #$00
C - - - - - 0x0114C9 04:94B9: 9D 72 07  STA ram_0772_obj,X
C - - - - - 0x0114CC 04:94BC: A9 01     LDA #$01
C - - - - - 0x0114CE 04:94BE: 9D 64 07  STA ram_0764_obj,X
C - - - - - 0x0114D1 04:94C1: 9D 80 07  STA ram_0780_obj,X
C - - - - - 0x0114D4 04:94C4: A9 01     LDA #$01
C - - - - - 0x0114D6 04:94C6: 4C E0 A2  JMP loc_0x0062F0
bra_94C9_RTS:
C - - - - - 0x0114D9 04:94C9: 60        RTS



sub_94CA:
C - - - - - 0x0114DA 04:94CA: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x0114DD 04:94CD: 38        SEC
C - - - - - 0x0114DE 04:94CE: E5 FC     SBC ram_scroll_Y
C - - - - - 0x0114E0 04:94D0: 85 45     STA ram_scanline
C - - - - - 0x0114E2 04:94D2: 60        RTS



ofs_038_65_94D3_05:
C - - J - - 0x0114E3 04:94D3: 20 6B AB  JSR sub_0x006B7B
C - - - - - 0x0114E6 04:94D6: 20 CA 94  JSR sub_94CA
C - - - - - 0x0114E9 04:94D9: 20 8C 96  JSR sub_968C
C - - - - - 0x0114EC 04:94DC: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x0114EF 04:94DF: D0 E8     BNE bra_94C9_RTS
C - - - - - 0x0114F1 04:94E1: A9 00     LDA #$00
C - - - - - 0x0114F3 04:94E3: 9D 72 07  STA ram_0772_obj,X
C - - - - - 0x0114F6 04:94E6: A9 06     LDA #$06
C - - - - - 0x0114F8 04:94E8: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x0114FB 04:94EB: BD 56 07  LDA ram_0756_obj,X
C - - - - - 0x0114FE 04:94EE: 49 01     EOR #$01
C - - - - - 0x011500 04:94F0: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x011503 04:94F3: A5 FF     LDA ram_for_2000
C - - - - - 0x011505 04:94F5: 29 FE     AND #$FE
C - - - - - 0x011507 04:94F7: 1D 56 07  ORA ram_0756_obj,X
C - - - - - 0x01150A 04:94FA: 85 FF     STA ram_for_2000
C - - - - - 0x01150C 04:94FC: FE 64 07  INC ram_0764_obj,X
C - - - - - 0x01150F 04:94FF: BD 64 07  LDA ram_0764_obj,X
C - - - - - 0x011512 04:9502: 9D 80 07  STA ram_0780_obj,X
C - - - - - 0x011515 04:9505: C9 0F     CMP #$0F
C - - - - - 0x011517 04:9507: 90 C0     BCC bra_94C9_RTS
C - - - - - 0x011519 04:9509: A9 05     LDA #$05
C - - - - - 0x01151B 04:950B: 20 FE 98  JSR sub_98FE
C - - - - - 0x01151E 04:950E: A9 00     LDA #$00
C - - - - - 0x011520 04:9510: 85 64     STA ram_0064
C - - - - - 0x011522 04:9512: A9 01     LDA #$01
C - - - - - 0x011524 04:9514: 85 65     STA ram_0065
C - - - - - 0x011526 04:9516: A9 08     LDA #$08
C - - - - - 0x011528 04:9518: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x01152B 04:951B: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_65_951E_06:
C - - J - - 0x01152E 04:951E: 20 6B AB  JSR sub_0x006B7B
C - - - - - 0x011531 04:9521: 20 CA 94  JSR sub_94CA
C - - - - - 0x011534 04:9524: A5 60     LDA ram_0060_game_handler
C - - - - - 0x011536 04:9526: 05 70     ORA ram_0070_game_handler
C - - - - - 0x011538 04:9528: D0 09     BNE bra_9533_RTS
C - - - - - 0x01153A 04:952A: DE 56 07  DEC ram_0756_obj,X
C - - - - - 0x01153D 04:952D: F0 05     BEQ bra_9534
C - - - - - 0x01153F 04:952F: A9 00     LDA #$00
C - - - - - 0x011541 04:9531: 85 6B     STA ram_006B
bra_9533_RTS:
C - - - - - 0x011543 04:9533: 60        RTS
bra_9534:
C - - - - - 0x011544 04:9534: A9 01     LDA #$01
C - - - - - 0x011546 04:9536: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x011549 04:9539: A0 66     LDY #con_obj_id_66
C - - - - - 0x01154B 04:953B: 20 C8 AB  JSR sub_0x006BD8
C - - - - - 0x01154E 04:953E: A0 00     LDY #$00
C - - - - - 0x011550 04:9540: 84 FC     STY ram_scroll_Y
C - - - - - 0x011552 04:9542: 84 FD     STY ram_scroll_X
C - - - - - 0x011554 04:9544: 88        DEY
C - - - - - 0x011555 04:9545: 84 F9     STY ram_00F9_scroll_Y
C - - - - - 0x011557 04:9547: 20 CA 94  JSR sub_94CA
C - - - - - 0x01155A 04:954A: A9 00     LDA #$00
C - - - - - 0x01155C 04:954C: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x01155F 04:954F: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x011562 04:9552: A9 01     LDA #$01
C - - - - - 0x011564 04:9554: 9D 64 07  STA ram_0764_obj,X
C - - - - - 0x011567 04:9557: 9D 72 07  STA ram_0772_obj,X
C - - - - - 0x01156A 04:955A: A9 20     LDA #$20
C - - - - - 0x01156C 04:955C: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x01156F 04:955F: A9 80     LDA #$80
C - - - - - 0x011571 04:9561: 4C E0 A2  JMP loc_0x0062F0



ofs_038_65_9564_07:
C - - J - - 0x011574 04:9564: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x011577 04:9567: D0 CA     BNE bra_9533_RTS
C - - - - - 0x011579 04:9569: A9 40     LDA #$40
C - - - - - 0x01157B 04:956B: 20 99 AB  JSR sub_0x006BA9_set_dynamic_hp_to_boss
C - - - - - 0x01157E 04:956E: A9 01     LDA #$01
C - - - - - 0x011580 04:9570: 4C E0 A2  JMP loc_0x0062F0



ofs_038_65_9573_08:
C - - J - - 0x011583 04:9573: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x011586 04:9576: D0 1B     BNE bra_9593
C - - - - - 0x011588 04:9578: BD 56 07  LDA ram_0756_obj,X
C - - - - - 0x01158B 04:957B: 49 01     EOR #$01
C - - - - - 0x01158D 04:957D: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x011590 04:9580: 4A        LSR
C - - - - - 0x011591 04:9581: A9 30     LDA #$30
C - - - - - 0x011593 04:9583: B0 02     BCS bra_9587
C - - - - - 0x011595 04:9585: A9 20     LDA #$20
bra_9587:
C - - - - - 0x011597 04:9587: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x01159A 04:958A: BD 56 07  LDA ram_0756_obj,X
C - - - - - 0x01159D 04:958D: 18        CLC
C - - - - - 0x01159E 04:958E: 69 06     ADC #$06
C - - - - - 0x0115A0 04:9590: 20 FE 98  JSR sub_98FE
bra_9593:
C - - - - - 0x0115A3 04:9593: 20 E2 95  JSR sub_95E2
C - - - - - 0x0115A6 04:9596: BD 56 07  LDA ram_0756_obj,X
C - - - - - 0x0115A9 04:9599: F0 29     BEQ bra_95C4_RTS
C - - - - - 0x0115AB 04:959B: DE F4 06  DEC ram_06F4_obj,X
C - - - - - 0x0115AE 04:959E: D0 24     BNE bra_95C4_RTS
C - - - - - 0x0115B0 04:95A0: FE 48 07  INC ram_0748_obj,X
C - - - - - 0x0115B3 04:95A3: A0 70     LDY #$70
C - - - - - 0x0115B5 04:95A5: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x0115B8 04:95A8: 29 03     AND #$03
C - - - - - 0x0115BA 04:95AA: F0 02     BEQ bra_95AE
C - - - - - 0x0115BC 04:95AC: A0 10     LDY #$10
bra_95AE:
C - - - - - 0x0115BE 04:95AE: 98        TYA
C - - - - - 0x0115BF 04:95AF: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x0115C2 04:95B2: A0 68     LDY #con_obj_id_68
C - - - - - 0x0115C4 04:95B4: 20 C8 AB  JSR sub_0x006BD8
C - - - - - 0x0115C7 04:95B7: 90 0B     BCC bra_95C4_RTS
C - - - - - 0x0115C9 04:95B9: A4 11     LDY ram_0011
C - - - - - 0x0115CB 04:95BB: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x0115CE 04:95BE: 18        CLC
C - - - - - 0x0115CF 04:95BF: 69 18     ADC #$18
C - - - - - 0x0115D1 04:95C1: 99 22 05  STA ram_pos_Y_hi_enemy,Y
bra_95C4_RTS:
C - - - - - 0x0115D4 04:95C4: 60        RTS



ofs_038_65_95C5_09: ; bzk optimize
C - - J - - 0x0115D5 04:95C5: 4C B8 A3  JMP loc_0x0063C8_boss_starts_exploding



ofs_038_65_95C8_0A: ; bzk optimize
C - - J - - 0x0115D8 04:95C8: 4C D8 A3  JMP loc_0x0063E8



ofs_038_65_95CB_0B:
C - - J - - 0x0115DB 04:95CB: A0 7F     LDY #$7F
bra_95CD_loop:
C - - - - - 0x0115DD 04:95CD: B9 00 04  LDA ram_0400_area_data_1,Y
C - - - - - 0x0115E0 04:95D0: 99 80 04  STA ram_0480_area_data_2,Y
C - - - - - 0x0115E3 04:95D3: 88        DEY
C - - - - - 0x0115E4 04:95D4: 10 F7     BPL bra_95CD_loop
C - - - - - 0x0115E6 04:95D6: A5 FF     LDA ram_for_2000
C - - - - - 0x0115E8 04:95D8: 09 01     ORA #$01
C - - - - - 0x0115EA 04:95DA: 85 FF     STA ram_for_2000
C - - - - - 0x0115EC 04:95DC: 4C A2 A2  JMP loc_0x0062B2



ofs_038_65_95DF_0D: ; bzk optimize
C - - J - - 0x0115EF 04:95DF: 4C 37 A3  JMP loc_0x006347_delete_object_boss



sub_95E2:
C - - - - - 0x0115F2 04:95E2: DE 64 07  DEC ram_0764_obj,X
C - - - - - 0x0115F5 04:95E5: D0 53     BNE bra_963A_RTS
C - - - - - 0x0115F7 04:95E7: A9 01     LDA #$01
C - - - - - 0x0115F9 04:95E9: 9D 64 07  STA ram_0764_obj,X
C - - - - - 0x0115FC 04:95EC: 20 24 AB  JSR sub_0x006B34_set_target_on_closest_player_Y_pos
C - - - - - 0x0115FF 04:95EF: B9 4C 05  LDA ram_pos_X_hi_plr,Y
C - - - - - 0x011602 04:95F2: A0 00     LDY #$00
C - - - - - 0x011604 04:95F4: C9 60     CMP #$60
C - - - - - 0x011606 04:95F6: 90 06     BCC bra_95FE
C - - - - - 0x011608 04:95F8: C8        INY
C - - - - - 0x011609 04:95F9: C9 A0     CMP #$A0
C - - - - - 0x01160B 04:95FB: 90 01     BCC bra_95FE
C - - - - - 0x01160D 04:95FD: C8        INY
bra_95FE:
C - - - - - 0x01160E 04:95FE: 98        TYA
C - - - - - 0x01160F 04:95FF: DD 72 07  CMP ram_0772_obj,X
C - - - - - 0x011612 04:9602: F0 36     BEQ bra_963A_RTS
C - - - - - 0x011614 04:9604: A9 FF     LDA #$FF
C - - - - - 0x011616 04:9606: 90 02     BCC bra_960A
C - - - - - 0x011618 04:9608: A9 00     LDA #$00
bra_960A:
C - - - - - 0x01161A 04:960A: 7D 72 07  ADC ram_0772_obj,X
C - - - - - 0x01161D 04:960D: C9 03     CMP #$03
C - - - - - 0x01161F 04:960F: B0 03     BCS bra_9614
C - - - - - 0x011621 04:9611: 9D 72 07  STA ram_0772_obj,X
bra_9614:
C - - - - - 0x011624 04:9614: BD 72 07  LDA ram_0772_obj,X
C - - - - - 0x011627 04:9617: 0A        ASL
C - - - - - 0x011628 04:9618: A8        TAY
C - - - - - 0x011629 04:9619: B9 43 96  LDA tbl_9643,Y
C - - - - - 0x01162C 04:961C: 85 08     STA ram_0008
C - - - - - 0x01162E 04:961E: B9 44 96  LDA tbl_9643 + $01,Y
C - - - - - 0x011631 04:9621: 85 09     STA ram_0009
C - - - - - 0x011633 04:9623: A0 00     LDY #$00
; bzk optimize, check ram_index_ppu_buffer first
C - - - - - 0x011635 04:9625: A6 1E     LDX ram_index_ppu_buffer
C - - - - - 0x011637 04:9627: E0 20     CPX #$20
C - - - - - 0x011639 04:9629: B0 10     BCS bra_963B
; if buffer is not too loaded
bra_962B_loop:
C - - - - - 0x01163B 04:962B: B1 08     LDA (ram_0008),Y
C - - - - - 0x01163D 04:962D: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x011640 04:9630: E8        INX
C - - - - - 0x011641 04:9631: C8        INY
C - - - - - 0x011642 04:9632: C9 FF     CMP #$FF
C - - - - - 0x011644 04:9634: D0 F5     BNE bra_962B_loop
C - - - - - 0x011646 04:9636: 86 1E     STX ram_index_ppu_buffer
C - - - - - 0x011648 04:9638: A6 10     LDX ram_0010
bra_963A_RTS:
C - - - - - 0x01164A 04:963A: 60        RTS
bra_963B:
C - - - - - 0x01164B 04:963B: A6 10     LDX ram_0010
C - - - - - 0x01164D 04:963D: A9 01     LDA #$01
C - - - - - 0x01164F 04:963F: 9D 64 07  STA ram_0764_obj,X
C - - - - - 0x011652 04:9642: 60        RTS



tbl_9643:
- D 0 - - - 0x011653 04:9643: 49 96     .word off_9649_00
- D 0 - - - 0x011655 04:9645: 5F 96     .word off_965F_01
- D 0 - - - 0x011657 04:9647: 75 96     .word off_9675_02



off_9649_00:
- D 0 - I - 0x011659 04:9649: 06        .byte con_buf_mode_06   ; 

- D 0 - I - 0x01165A 04:964A: 20 AD     .dbyt $20AD ; ppu address
- D 0 - I - 0x01165C 04:964C: 02        .byte $02   ; counter
- D 0 - I - 0x01165D 04:964D: A9        .byte $A9, $56   ; tiles

- D 0 - I - 0x01165F 04:964F: 20 CD     .dbyt $20CD ; ppu address
- D 0 - I - 0x011661 04:9651: 02        .byte $02   ; counter
- D 0 - I - 0x011662 04:9652: AC        .byte $AC, $AD   ; tiles

- D 0 - I - 0x011664 04:9654: 20 B1     .dbyt $20B1 ; ppu address
- D 0 - I - 0x011666 04:9656: 02        .byte $02   ; counter
- D 0 - I - 0x011667 04:9657: 55        .byte $55, $B6   ; tiles

- D 0 - I - 0x011669 04:9659: 20 D1     .dbyt $20D1 ; ppu address
- D 0 - I - 0x01166B 04:965B: 02        .byte $02   ; counter
- D 0 - I - 0x01166C 04:965C: B7        .byte $B7, $B8   ; tiles

- D 0 - I - 0x01166E 04:965E: FF        .byte $FF   ; end token



off_965F_01:
- D 0 - I - 0x01166F 04:965F: 06        .byte con_buf_mode_06   ; 

- D 0 - I - 0x011670 04:9660: 20 AD     .dbyt $20AD ; ppu address
- D 0 - I - 0x011672 04:9662: 02        .byte $02   ; counter
- D 0 - I - 0x011673 04:9663: 55        .byte $55, $56   ; tiles

- D 0 - I - 0x011675 04:9665: 20 CD     .dbyt $20CD ; ppu address
- D 0 - I - 0x011677 04:9667: 02        .byte $02   ; counter
- D 0 - I - 0x011678 04:9668: 5B        .byte $5B, $5C   ; tiles

- D 0 - I - 0x01167A 04:966A: 20 B1     .dbyt $20B1 ; ppu address
- D 0 - I - 0x01167C 04:966C: 02        .byte $02   ; counter
- D 0 - I - 0x01167D 04:966D: 55        .byte $55, $56   ; tiles

- D 0 - I - 0x01167F 04:966F: 20 D1     .dbyt $20D1 ; ppu address
- D 0 - I - 0x011681 04:9671: 02        .byte $02   ; counter
- D 0 - I - 0x011682 04:9672: 5F        .byte $5F, $60   ; tiles

- D 0 - I - 0x011684 04:9674: FF        .byte $FF   ; end token



off_9675_02:
- D 0 - I - 0x011685 04:9675: 06        .byte con_buf_mode_06   ; 

- D 0 - I - 0x011686 04:9676: 20 AD     .dbyt $20AD ; ppu address
- D 0 - I - 0x011688 04:9678: 02        .byte $02   ; counter
- D 0 - I - 0x011689 04:9679: A9        .byte $A9, $56   ; tiles

- D 0 - I - 0x01168B 04:967B: 20 CD     .dbyt $20CD ; ppu address
- D 0 - I - 0x01168D 04:967D: 02        .byte $02   ; counter
- D 0 - I - 0x01168E 04:967E: AE        .byte $AE, $B0   ; tiles

- D 0 - I - 0x011690 04:9680: 20 B1     .dbyt $20B1 ; ppu address
- D 0 - I - 0x011692 04:9682: 02        .byte $02   ; counter
- D 0 - I - 0x011693 04:9683: 55        .byte $55, $B6   ; tiles

- D 0 - I - 0x011695 04:9685: 20 D1     .dbyt $20D1 ; ppu address
- D 0 - I - 0x011697 04:9687: 02        .byte $02   ; counter
- D 0 - I - 0x011698 04:9688: B9        .byte $B9, $BF   ; tiles

- D 0 - I - 0x01169A 04:968A: FF        .byte $FF   ; end token



bra_968B_RTS:
C - - - - - 0x01169B 04:968B: 60        RTS



sub_968C:
C - - - - - 0x01169C 04:968C: BD 72 07  LDA ram_0772_obj,X
C - - - - - 0x01169F 04:968F: 30 FA     BMI bra_968B_RTS
C - - - - - 0x0116A1 04:9691: BD 56 07  LDA ram_0756_obj,X
C - - - - - 0x0116A4 04:9694: 4A        LSR
C - - - - - 0x0116A5 04:9695: A9 08     LDA #$08
C - - - - - 0x0116A7 04:9697: B0 02     BCS bra_969B
C - - - - - 0x0116A9 04:9699: A9 0B     LDA #$0B
bra_969B:
C - - - - - 0x0116AB 04:969B: 85 01     STA ram_0001
C - - - - - 0x0116AD 04:969D: BC 64 07  LDY ram_0764_obj,X
C - - - - - 0x0116B0 04:96A0: 88        DEY
C - - - - - 0x0116B1 04:96A1: 98        TYA
C - - - - - 0x0116B2 04:96A2: 38        SEC
C - - - - - 0x0116B3 04:96A3: FD 72 07  SBC ram_0772_obj,X
C - - - - - 0x0116B6 04:96A6: 0A        ASL
C - - - - - 0x0116B7 04:96A7: 0A        ASL
C - - - - - 0x0116B8 04:96A8: 0A        ASL
C - - - - - 0x0116B9 04:96A9: 0A        ASL
C - - - - - 0x0116BA 04:96AA: 26 01     ROL ram_0001
C - - - - - 0x0116BC 04:96AC: 0A        ASL
C - - - - - 0x0116BD 04:96AD: 26 01     ROL ram_0001
C - - - - - 0x0116BF 04:96AF: 85 00     STA ram_0000
C - - - - - 0x0116C1 04:96B1: A0 00     LDY #$00
C - - - - - 0x0116C3 04:96B3: BD 72 07  LDA ram_0772_obj,X
C - - - - - 0x0116C6 04:96B6: 85 0A     STA ram_000A
C - - - - - 0x0116C8 04:96B8: F0 10     BEQ bra_96CA
bra_96BA_loop:
C - - - - - 0x0116CA 04:96BA: C8        INY
C - - - - - 0x0116CB 04:96BB: B9 49 97  LDA tbl_9749,Y
C - - - - - 0x0116CE 04:96BE: 85 0B     STA ram_000B
C - - - - - 0x0116D0 04:96C0: C8        INY
C - - - - - 0x0116D1 04:96C1: 98        TYA
C - - - - - 0x0116D2 04:96C2: 18        CLC
C - - - - - 0x0116D3 04:96C3: 65 0B     ADC ram_000B
C - - - - - 0x0116D5 04:96C5: A8        TAY
C - - - - - 0x0116D6 04:96C6: C6 0A     DEC ram_000A
C - - - - - 0x0116D8 04:96C8: D0 F0     BNE bra_96BA_loop
bra_96CA:
C - - - - - 0x0116DA 04:96CA: B9 49 97  LDA tbl_9749,Y
C - - - - - 0x0116DD 04:96CD: C9 80     CMP #$80
C - - - - - 0x0116DF 04:96CF: F0 03     BEQ bra_96D4_80
C - - - - - 0x0116E1 04:96D1: 4C D8 96  JMP loc_96D8
bra_96D4_80:
- - - - - - 0x0116E4 04:96D4: 9D 72 07  STA ram_0772_obj,X
- - - - - - 0x0116E7 04:96D7: 60        RTS



loc_96D8:
C D 0 - - - 0x0116E8 04:96D8: A9 04     LDA #$04
C - - - - - 0x0116EA 04:96DA: 85 08     STA ram_0008
C - - - - - 0x0116EC 04:96DC: BD 80 07  LDA ram_0780_obj,X
C - - - - - 0x0116EF 04:96DF: 85 09     STA ram_0009
C - - - - - 0x0116F1 04:96E1: BD 72 07  LDA ram_0772_obj,X
C - - - - - 0x0116F4 04:96E4: 85 0A     STA ram_000A
C - - - - - 0x0116F6 04:96E6: A6 1E     LDX ram_index_ppu_buffer
C - - - - - 0x0116F8 04:96E8: A9 06     LDA #con_buf_mode_06
C - - - - - 0x0116FA 04:96EA: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x0116FD 04:96ED: E8        INX
bra_96EE_loop:
C - - - - - 0x0116FE 04:96EE: B9 49 97  LDA tbl_9749,Y
C - - - - - 0x011701 04:96F1: C9 80     CMP #$80
C - - - - - 0x011703 04:96F3: F0 49     BEQ bra_973E_80
; ppu hi
C - - - - - 0x011705 04:96F5: 18        CLC
C - - - - - 0x011706 04:96F6: 65 00     ADC ram_0000
C - - - - - 0x011708 04:96F8: 9D 01 03  STA ram_nmt_buffer + $01,X
; ppu lo
C - - - - - 0x01170B 04:96FB: A5 01     LDA ram_0001
C - - - - - 0x01170D 04:96FD: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x011710 04:9700: E8        INX
C - - - - - 0x011711 04:9701: E8        INX
C - - - - - 0x011712 04:9702: C8        INY
; counter
C - - - - - 0x011713 04:9703: B9 49 97  LDA tbl_9749,Y
C - - - - - 0x011716 04:9706: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x011719 04:9709: 85 0B     STA ram_000B
C - - - - - 0x01171B 04:970B: E8        INX
C - - - - - 0x01171C 04:970C: C8        INY
bra_970D_loop:
C - - - - - 0x01171D 04:970D: B9 49 97  LDA tbl_9749,Y
C - - - - - 0x011720 04:9710: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x011723 04:9713: E8        INX
C - - - - - 0x011724 04:9714: C8        INY
C - - - - - 0x011725 04:9715: C6 0B     DEC ram_000B
C - - - - - 0x011727 04:9717: D0 F4     BNE bra_970D_loop
C - - - - - 0x011729 04:9719: E6 0A     INC ram_000A
C - - - - - 0x01172B 04:971B: C6 09     DEC ram_0009
C - - - - - 0x01172D 04:971D: F0 11     BEQ bra_9730
C - - - - - 0x01172F 04:971F: A5 00     LDA ram_0000
C - - - - - 0x011731 04:9721: 38        SEC
C - - - - - 0x011732 04:9722: E9 20     SBC #$20
C - - - - - 0x011734 04:9724: 85 00     STA ram_0000
C - - - - - 0x011736 04:9726: B0 02     BCS bra_972A_not_underflow
C - - - - - 0x011738 04:9728: C6 01     DEC ram_0001
bra_972A_not_underflow:
C - - - - - 0x01173A 04:972A: C6 08     DEC ram_0008
C - - - - - 0x01173C 04:972C: D0 C0     BNE bra_96EE_loop
C - - - - - 0x01173E 04:972E: F0 04     BEQ bra_9734    ; jmp
bra_9730:
C - - - - - 0x011740 04:9730: A9 FF     LDA #$FF
C - - - - - 0x011742 04:9732: 85 0A     STA ram_000A
bra_9734:
; close buffer
C - - - - - 0x011744 04:9734: A9 FF     LDA #$FF
C - - - - - 0x011746 04:9736: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x011749 04:9739: E8        INX
C - - - - - 0x01174A 04:973A: 86 1E     STX ram_index_ppu_buffer
C - - - - - 0x01174C 04:973C: A5 0A     LDA ram_000A
bra_973E_80:
C - - - - - 0x01174E 04:973E: A6 10     LDX ram_0010
C - - - - - 0x011750 04:9740: 9D 72 07  STA ram_0772_obj,X
C - - - - - 0x011753 04:9743: A5 09     LDA ram_0009
C - - - - - 0x011755 04:9745: 9D 80 07  STA ram_0780_obj,X
C - - - - - 0x011758 04:9748: 60        RTS



tbl_9749:
- D 0 - - - 0x011759 04:9749: 0E        .byte $0E   ; ppu address offset
- D 0 - - - 0x01175A 04:974A: 04        .byte $04   ; counter
- D 0 - - - 0x01175B 04:974B: 00        .byte $00, $8E, $8F, $00   ; tiles

- D 0 - - - 0x01175F 04:974F: 0D        .byte $0D   ; ppu address offset
- D 0 - - - 0x011760 04:9750: 06        .byte $06   ; counter
- D 0 - - - 0x011761 04:9751: 00        .byte $00, $8A, $8B, $8C, $8D, $00   ; tiles

- D 0 - - - 0x011767 04:9757: 0D        .byte $0D   ; ppu address offset
- D 0 - - - 0x011768 04:9758: 06        .byte $06   ; counter
- D 0 - - - 0x011769 04:9759: 7C        .byte $7C, $7D, $7E, $7F, $88, $89   ; tiles

- D 0 - - - 0x01176F 04:975F: 0D        .byte $0D   ; ppu address offset
- D 0 - - - 0x011770 04:9760: 06        .byte $06   ; counter
- D 0 - - - 0x011771 04:9761: 79        .byte $79, $7A, $7A, $7A, $7A, $7B   ; tiles

- D 0 - - - 0x011777 04:9767: 0C        .byte $0C   ; ppu address offset
- D 0 - - - 0x011778 04:9768: 08        .byte $08   ; counter
- D 0 - - - 0x011779 04:9769: 00        .byte $00, $73, $74, $75, $76, $77, $78, $00   ; tiles

- D 0 - - - 0x011781 04:9771: 0C        .byte $0C   ; ppu address offset
- D 0 - - - 0x011782 04:9772: 08        .byte $08   ; counter
- D 0 - - - 0x011783 04:9773: 6B        .byte $6B, $6C, $6D, $6E, $6F, $70, $71, $72   ; tiles

- D 0 - - - 0x01178B 04:977B: 0B        .byte $0B   ; ppu address offset
- D 0 - - - 0x01178C 04:977C: 0A        .byte $0A   ; counter
- D 0 - - - 0x01178D 04:977D: 62        .byte $62, $63, $64, $65, $66, $67, $65, $68, $69, $6A   ; tiles

- D 0 - - - 0x011797 04:9787: 0B        .byte $0B   ; ppu address offset
- D 0 - - - 0x011798 04:9788: 0A        .byte $0A   ; counter
- D 0 - - - 0x011799 04:9789: 5A        .byte $5A, $54, $5B, $5C, $5D, $5E, $5F, $60, $59, $61   ; tiles

- D 0 - - - 0x0117A3 04:9793: 0A        .byte $0A   ; ppu address offset
- D 0 - - - 0x0117A4 04:9794: 0C        .byte $0C   ; counter
- D 0 - - - 0x0117A5 04:9795: 00        .byte $00, $00, $54, $55, $56, $57, $58, $55, $56, $59, $00, $00   ; tiles

- D 0 - - - 0x0117B1 04:97A1: 09        .byte $09   ; ppu address offset
- D 0 - - - 0x0117B2 04:97A2: 0E        .byte $0E   ; counter
- D 0 - - - 0x0117B3 04:97A3: 00        .byte $00, $3C, $A8, $4C, $4D, $4E, $4F, $50, $51, $52, $53, $3B, $49, $00   ; tiles

- D 0 - - - 0x0117C1 04:97B1: 09        .byte $09   ; ppu address offset
- D 0 - - - 0x0117C2 04:97B2: 0E        .byte $0E   ; counter
- D 0 - - - 0x0117C3 04:97B3: 00        .byte $00, $A8, $42, $3D, $0B, $4A, $0E, $1D, $4B, $20, $48, $47, $3B, $00   ; tiles

- D 0 - - - 0x0117D1 04:97C1: 09        .byte $09   ; ppu address offset
- D 0 - - - 0x0117D2 04:97C2: 0E        .byte $0E   ; counter
- D 0 - - - 0x0117D3 04:97C3: 3C        .byte $3C, $0A, $3D, $42, $43, $44, $0E, $1D, $45, $46, $47, $48, $22, $49   ; tiles

- D 0 - - - 0x0117E1 04:97D1: 09        .byte $09   ; ppu address offset
- D 0 - - - 0x0117E2 04:97D2: 0E        .byte $0E   ; counter
- D 0 - - - 0x0117E3 04:97D3: A8        .byte $A8, $0A, $09, $39, $0C, $0D, $0E, $1D, $1E, $1F, $3A, $21, $22, $3B   ; tiles

- D 0 - - - 0x0117F1 04:97E1: 09        .byte $09   ; ppu address offset
- D 0 - - - 0x0117F2 04:97E2: 0E        .byte $0E   ; counter
- D 0 - - - 0x0117F3 04:97E3: 09        .byte $09, $0A, $09, $0B, $0C, $0D, $0E, $1D, $1E, $1F, $20, $21, $22, $21   ; tiles

- - - - - - 0x011801 04:97F1: 80        .byte $80   ; end token



_off001_0x011802_68_boss_6_big_bullet:
- D 0 - I - 0x011802 04:97F2: FC 97     .word ofs_038_68_97FC_01_initialize_object ; 
- D 0 - I - 0x011804 04:97F4: 13 98     .word ofs_038_68_9813_02 ; 
- D 0 - I - 0x011806 04:97F6: 9A A2     .word ofs_038_68_0x0062AA_03 ; 
- D 0 - I - 0x011808 04:97F8: FD A2     .word ofs_038_68_0x00630D_04 ; 
- D 0 - I - 0x01180A 04:97FA: 3D A3     .word ofs_038_68_0x00634D_05_delete_object_04 ; 



ofs_038_68_97FC_01_initialize_object:
C - - J - - 0x01180C 04:97FC: A9 8F     LDA #$8F
C - - - - - 0x01180E 04:97FE: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x011811 04:9801: A9 02     LDA #$02
C - - - - - 0x011813 04:9803: 9D 56 05  STA ram_attr_spr_enemy,X
C - - - - - 0x011816 04:9806: 20 0B AB  JSR sub_0x006B1B_set_target_on_closest_player_X_pos
C - - - - - 0x011819 04:9809: A0 03     LDY #$03
C - - - - - 0x01181B 04:980B: 20 57 A9  JSR sub_0x006967
C - - - - - 0x01181E 04:980E: A9 08     LDA #$08
C - - - - - 0x011820 04:9810: 4C E0 A2  JMP loc_0x0062F0



ofs_038_68_9813_02:
C - - J - - 0x011823 04:9813: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x011826 04:9816: D0 0D     BNE bra_9825
C - - - - - 0x011828 04:9818: A9 0C     LDA #$0C
C - - - - - 0x01182A 04:981A: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x01182D 04:981D: 20 0B AB  JSR sub_0x006B1B_set_target_on_closest_player_X_pos
C - - - - - 0x011830 04:9820: A0 03     LDY #$03
C - - - - - 0x011832 04:9822: 20 23 A9  JSR sub_0x006933
bra_9825:
C - - - - - 0x011835 04:9825: 4C D3 A6  JMP loc_0x0066E3



_off001_0x011838_64_boss_6_phase_1:
- D 0 - I - 0x011838 04:9828: 3A 98     .word ofs_038_64_983A_01_initialize_object ; 
- D 0 - I - 0x01183A 04:982A: 4C 98     .word ofs_038_64_984C_02 ; 
- D 0 - I - 0x01183C 04:982C: 6F 98     .word ofs_038_64_986F_03 ; 
- D 0 - I - 0x01183E 04:982E: 7E 98     .word ofs_038_64_987E_04 ; 
- D 0 - I - 0x011840 04:9830: D1 98     .word ofs_038_64_98D1_05 ; 
- D 0 - I - 0x011842 04:9832: D4 98     .word ofs_038_64_98D4_06 ; 
- D 0 - I - 0x011844 04:9834: DC 98     .word ofs_038_64_98DC_07 ; 
- D 0 - I - 0x011846 04:9836: F6 A2     .word ofs_038_64_0x006306_08 ; 
- D 0 - I - 0x011848 04:9838: EF 98     .word ofs_038_64_98EF_09 ; 



ofs_038_64_983A_01_initialize_object:
C - - J - - 0x01184A 04:983A: A9 F0     LDA #con__hp_F0
C - - - - - 0x01184C 04:983C: 9D 76 06  STA ram_obj_hp,X
C - - - - - 0x01184F 04:983F: A9 91     LDA #$91
C - - - - - 0x011851 04:9841: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x011854 04:9844: A9 01     LDA #$01
C - - - - - 0x011856 04:9846: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x011859 04:9849: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_64_984C_02:
C - - J - - 0x01185C 04:984C: A5 71     LDA ram_0071_scroll_type
C - - - - - 0x01185E 04:984E: 10 1E     BPL bra_986E_RTS
C - - - - - 0x011860 04:9850: A9 30     LDA #$30
C - - - - - 0x011862 04:9852: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x011865 04:9855: A9 80     LDA #$80
C - - - - - 0x011867 04:9857: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x01186A 04:985A: A9 32     LDA #con_sound_32
C - - - - - 0x01186C 04:985C: 20 DE FD  JSR sub_0x01FDEE_play_sound
C - - - - - 0x01186F 04:985F: A9 10     LDA #$10
C - - - - - 0x011871 04:9861: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x011874 04:9864: A9 01     LDA #$01
C - - - - - 0x011876 04:9866: 9D 10 07  STA ram_0710_obj,X
C - - - - - 0x011879 04:9869: A9 40     LDA #$40
C - - - - - 0x01187B 04:986B: 4C E0 A2  JMP loc_0x0062F0
bra_986E_RTS:
C - - - - - 0x01187E 04:986E: 60        RTS



ofs_038_64_986F_03:
C - - J - - 0x01187F 04:986F: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x011882 04:9872: D0 FA     BNE bra_986E_RTS
C - - - - - 0x011884 04:9874: A9 20     LDA #$20
C - - - - - 0x011886 04:9876: 20 99 AB  JSR sub_0x006BA9_set_dynamic_hp_to_boss
C - - - - - 0x011889 04:9879: A9 01     LDA #$01
C - - - - - 0x01188B 04:987B: 4C E0 A2  JMP loc_0x0062F0



ofs_038_64_987E_04:
C - - J - - 0x01188E 04:987E: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x011891 04:9881: D0 2F     BNE bra_98B2
C - - - - - 0x011893 04:9883: 20 FB 98  JSR sub_98FB
C - - - - - 0x011896 04:9886: A9 01     LDA #$01
C - - - - - 0x011898 04:9888: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x01189B 04:988B: BC 10 07  LDY ram_0710_obj,X
C - - - - - 0x01189E 04:988E: B9 CE 98  LDA tbl_98CE,Y
C - - - - - 0x0118A1 04:9891: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x0118A4 04:9894: BD 56 07  LDA ram_0756_obj,X
C - - - - - 0x0118A7 04:9897: 4A        LSR
C - - - - - 0x0118A8 04:9898: B0 05     BCS bra_989F
C - - - - - 0x0118AA 04:989A: FE 10 07  INC ram_0710_obj,X
C - - - - - 0x0118AD 04:989D: D0 03     BNE bra_98A2
bra_989F:
C - - - - - 0x0118AF 04:989F: DE 10 07  DEC ram_0710_obj,X
bra_98A2:
C - - - - - 0x0118B2 04:98A2: BD 10 07  LDA ram_0710_obj,X
C - - - - - 0x0118B5 04:98A5: C9 03     CMP #$03
C - - - - - 0x0118B7 04:98A7: 90 08     BCC bra_98B1_RTS
C - - - - - 0x0118B9 04:98A9: A9 01     LDA #$01
C - - - - - 0x0118BB 04:98AB: 9D 10 07  STA ram_0710_obj,X
C - - - - - 0x0118BE 04:98AE: FE 56 07  INC ram_0756_obj,X
bra_98B1_RTS:
C - - - - - 0x0118C1 04:98B1: 60        RTS
bra_98B2:
C - - - - - 0x0118C2 04:98B2: BD 56 07  LDA ram_0756_obj,X
C - - - - - 0x0118C5 04:98B5: 4A        LSR
C - - - - - 0x0118C6 04:98B6: 90 B6     BCC bra_986E_RTS
C - - - - - 0x0118C8 04:98B8: DE F4 06  DEC ram_06F4_obj,X
C - - - - - 0x0118CB 04:98BB: D0 10     BNE bra_98CD_RTS
C - - - - - 0x0118CD 04:98BD: 20 0B AB  JSR sub_0x006B1B_set_target_on_closest_player_X_pos
C - - - - - 0x0118D0 04:98C0: 20 AE AA  JSR sub_0x006ABE
C - - - - - 0x0118D3 04:98C3: A0 05     LDY #$05
C - - - - - 0x0118D5 04:98C5: 20 E4 F2  JSR sub_0x01F2F4
C - - - - - 0x0118D8 04:98C8: A9 10     LDA #$10
C - - - - - 0x0118DA 04:98CA: 9D F4 06  STA ram_06F4_obj,X
bra_98CD_RTS:
C - - - - - 0x0118DD 04:98CD: 60        RTS



tbl_98CE:
- D 0 - - - 0x0118DE 04:98CE: 20        .byte $20   ; 00 
- D 0 - - - 0x0118DF 04:98CF: 0C        .byte $0C   ; 01 
- D 0 - - - 0x0118E0 04:98D0: 70        .byte $70   ; 02 



ofs_038_64_98D1_05: ; bzk optimize
C - - J - - 0x0118E1 04:98D1: 4C B8 A3  JMP loc_0x0063C8_boss_starts_exploding



ofs_038_64_98D4_06:
C - - J - - 0x0118E4 04:98D4: A9 03     LDA #$03
C - - - - - 0x0118E6 04:98D6: 9D 10 07  STA ram_0710_obj,X
C - - - - - 0x0118E9 04:98D9: 4C D8 A3  JMP loc_0x0063E8



ofs_038_64_98DC_07:
C - - J - - 0x0118EC 04:98DC: BD 10 07  LDA ram_0710_obj,X
C - - - - - 0x0118EF 04:98DF: 20 FE 98  JSR sub_98FE
C - - - - - 0x0118F2 04:98E2: FE 10 07  INC ram_0710_obj,X
C - - - - - 0x0118F5 04:98E5: BD 10 07  LDA ram_0710_obj,X
C - - - - - 0x0118F8 04:98E8: C9 05     CMP #$05
C - - - - - 0x0118FA 04:98EA: 90 E1     BCC bra_98CD_RTS
C - - - - - 0x0118FC 04:98EC: 4C A2 A2  JMP loc_0x0062B2



ofs_038_64_98EF_09:
C - - J - - 0x0118FF 04:98EF: 20 3D A3  JSR sub_0x00634D_delete_object_04
C - - - - - 0x011902 04:98F2: A9 00     LDA #$00
C - - - - - 0x011904 04:98F4: 85 5C     STA ram_area_end_flags
C - - - - - 0x011906 04:98F6: A0 65     LDY #con_obj_id_65
C - - - - - 0x011908 04:98F8: 4C C8 AB  JMP loc_0x006BD8



sub_98FB:
C - - - - - 0x01190B 04:98FB: BD 10 07  LDA ram_0710_obj,X
sub_98FE:
C - - - - - 0x01190E 04:98FE: A6 1E     LDX ram_index_ppu_buffer
C - - - - - 0x011910 04:9900: 0A        ASL
C - - - - - 0x011911 04:9901: A8        TAY
C - - - - - 0x011912 04:9902: B9 23 99  LDA tbl_9923,Y
C - - - - - 0x011915 04:9905: 85 08     STA ram_0008
C - - - - - 0x011917 04:9907: B9 24 99  LDA tbl_9923 + $01,Y
C - - - - - 0x01191A 04:990A: 85 09     STA ram_0009
C - - - - - 0x01191C 04:990C: A0 00     LDY #$00
bra_990E_loop:
C - - - - - 0x01191E 04:990E: B1 08     LDA (ram_0008),Y
C - - - - - 0x011920 04:9910: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x011923 04:9913: E8        INX
C - - - - - 0x011924 04:9914: C8        INY
C - - - - - 0x011925 04:9915: C9 FE     CMP #$FE
C - - - - - 0x011927 04:9917: D0 F5     BNE bra_990E_loop
; close buffer
C - - - - - 0x011929 04:9919: A9 FF     LDA #$FF
C - - - - - 0x01192B 04:991B: 9D FF 02  STA ram_nmt_buffer - $01,X
C - - - - - 0x01192E 04:991E: 86 1E     STX ram_index_ppu_buffer
C - - - - - 0x011930 04:9920: A6 10     LDX ram_0010
C - - - - - 0x011932 04:9922: 60        RTS



tbl_9923:
- D 0 - - - 0x011933 04:9923: 33 99     .word _off015_9933_00
- D 0 - - - 0x011935 04:9925: 8F 99     .word _off015_998F_01
- D 0 - - - 0x011937 04:9927: EB 99     .word _off015_99EB_02
- D 0 - - - 0x011939 04:9929: 29 9A     .word _off015_9A29_03
- D 0 - - - 0x01193B 04:992B: 59 9A     .word _off015_9A59_04
- D 0 - - - 0x01193D 04:992D: B5 9A     .word _off015_9AB5_05
- D 0 - - - 0x01193F 04:992F: CA 9A     .word _off015_9ACA_06
- D 0 - - - 0x011941 04:9931: FE 9A     .word _off015_9AFE_07



_off015_9933_00:
- D 0 - I - 0x011943 04:9933: 06        .byte con_buf_mode_06   ; 

- D 0 - I - 0x011944 04:9934: 20 6A     .dbyt $206A ; ppu address
- D 0 - I - 0x011946 04:9936: 0C        .byte $0C   ; counter
- D 0 - I - 0x011947 04:9937: 92        .byte $92, $93, $94, $95, $92, $93, $94, $95, $92, $93, $94, $95   ; 

- D 0 - I - 0x011953 04:9943: 20 88     .dbyt $2088 ; ppu address
- D 0 - I - 0x011955 04:9945: 10        .byte $10   ; counter
- D 0 - I - 0x011956 04:9946: 17        .byte $17, $97, $18, $98, $18, $98, $18, $98, $18, $98, $18, $98, $18, $98, $19, $99   ; 

- D 0 - I - 0x011966 04:9956: 20 A8     .dbyt $20A8 ; ppu address
- D 0 - I - 0x011968 04:9958: 10        .byte $10   ; counter
- D 0 - I - 0x011969 04:9959: 9A        .byte $9A, $9B, $9C, $9D, $9E, $9D, $9E, $9D, $9E, $9D, $9E, $9D, $9E, $9F, $A0, $A1   ; 

- D 0 - I - 0x011979 04:9969: 20 CA     .dbyt $20CA ; ppu address
- D 0 - I - 0x01197B 04:996B: 0C        .byte $0C   ; counter
- D 0 - I - 0x01197C 04:996C: 1A        .byte $1A, $A3, $1B, $A3, $1B, $A3, $1B, $A3, $1B, $A3, $1B, $A7   ; 

- D 0 - I - 0x011988 04:9978: 20 EA     .dbyt $20EA ; ppu address
- D 0 - I - 0x01198A 04:997A: 0C        .byte $0C   ; counter
- D 0 - I - 0x01198B 04:997B: 00        .byte $00, $A8, $A9, $A8, $A9, $A8, $A9, $A8, $A9, $A8, $A9, $00, $23, $CA, $04, $00, $00, $00, $00   ; 

- D 0 - I - 0x01199E 04:998E: FE        .byte $FE   ; end token



_off015_998F_01:
- D 0 - I - 0x01199F 04:998F: 06        .byte con_buf_mode_06   ; 

- D 0 - I - 0x0119A0 04:9990: 20 6A     .dbyt $206A ; ppu address
- D 0 - I - 0x0119A2 04:9992: 0C        .byte $0C   ; counter
- D 0 - I - 0x0119A3 04:9993: AA        .byte $AA, $AB, $AC, $AD, $AA, $AB, $AC, $AD, $AA, $AB, $AC, $AD   ; 

- D 0 - I - 0x0119AF 04:999F: 20 88     .dbyt $2088 ; ppu address
- D 0 - I - 0x0119B1 04:99A1: 10        .byte $10   ; counter
- D 0 - I - 0x0119B2 04:99A2: AE        .byte $AE, $B0, $B4, $B5, $B6, $B5, $B6, $B5, $B6, $B5, $B6, $B5, $B6, $B7, $B8, $B9   ; 

- D 0 - I - 0x0119C2 04:99B2: 20 A8     .dbyt $20A8 ; ppu address
- D 0 - I - 0x0119C4 04:99B4: 10        .byte $10   ; counter
- D 0 - I - 0x0119C5 04:99B5: BF        .byte $BF, $C0, $C1, $C2, $C3, $C2, $C3, $C2, $C3, $C2, $C3, $C2, $C3, $C4, $C5, $C6   ; 

- D 0 - I - 0x0119D5 04:99C5: 20 CA     .dbyt $20CA ; ppu address
- D 0 - I - 0x0119D7 04:99C7: 0C        .byte $0C   ; counter
- D 0 - I - 0x0119D8 04:99C8: C7        .byte $C7, $C8, $C9, $C8, $C9, $C8, $C9, $C8, $C9, $C8, $C9, $CA   ; 

- D 0 - I - 0x0119E4 04:99D4: 20 EA     .dbyt $20EA ; ppu address
- D 0 - I - 0x0119E6 04:99D6: 0C        .byte $0C   ; counter
- D 0 - I - 0x0119E7 04:99D7: 00        .byte $00, $CB, $CC, $CB, $CC, $CB, $CC, $CB, $CC, $CB, $CC, $00   ; 

- D 0 - I - 0x0119F3 04:99E3: 23 CA     .dbyt $23CA ; ppu address
- D 0 - I - 0x0119F5 04:99E5: 04        .byte $04   ; counter
- D 0 - I - 0x0119F6 04:99E6: 88        .byte $88, $AA, $AA, $22   ; 

- D 0 - I - 0x0119FA 04:99EA: FE        .byte $FE   ; end token



_off015_99EB_02:
- D 0 - I - 0x0119FB 04:99EB: 06        .byte con_buf_mode_06   ; 

- D 0 - I - 0x0119FC 04:99EC: 20 8A     .dbyt $208A ; ppu address
- D 0 - I - 0x0119FE 04:99EE: 0C        .byte $0C   ; counter
- D 0 - I - 0x0119FF 04:99EF: CD        .byte $CD, $CE, $CF, $CE, $CF, $CE, $CF, $CE, $CF, $CE, $CF, $D0   ; 

- D 0 - I - 0x011A0B 04:99FB: 20 AA     .dbyt $20AA ; ppu address
- D 0 - I - 0x011A0D 04:99FD: 0C        .byte $0C   ; counter
- D 0 - I - 0x011A0E 04:99FE: D1        .byte $D1, $D2, $D3, $D2, $D3, $D2, $D3, $D2, $D3, $D2, $D3, $D4   ; 

- D 0 - I - 0x011A1A 04:9A0A: 20 CA     .dbyt $20CA ; ppu address
- D 0 - I - 0x011A1C 04:9A0C: 0C        .byte $0C   ; counter
- D 0 - I - 0x011A1D 04:9A0D: D5        .byte $D5, $D6, $D7, $D6, $D7, $D6, $D7, $D6, $D7, $D6, $D7, $D8   ; 

- D 0 - I - 0x011A29 04:9A19: 20 EA     .dbyt $20EA ; ppu address
- D 0 - I - 0x011A2B 04:9A1B: 0C        .byte $0C   ; counter
- D 0 - I - 0x011A2C 04:9A1C: D9        .byte $D9, $DA, $DB, $DA, $DB, $DA, $DB, $DA, $DB, $DA, $DB, $DC   ; 

- D 0 - I - 0x011A38 04:9A28: FE        .byte $FE   ; end token



_off015_9A29_03:
- D 0 - I - 0x011A39 04:9A29: 03        .byte con_buf_mode_03   ; 

- D 0 - I - 0x011A3A 04:9A2A: 20 28     .dbyt $2028 ; ppu address
- D 0 - I - 0x011A3C 04:9A2C: 10        .byte $10, $00   ; counter + fill tile

- D 0 - I - 0x011A3E 04:9A2E: 03        .byte con_buf_mode_03   ; 

- D 0 - I - 0x011A3F 04:9A2F: 20 48     .dbyt $2048 ; ppu address
- D 0 - I - 0x011A41 04:9A31: 10        .byte $10, $00   ; counter + fill tile

- D 0 - I - 0x011A43 04:9A33: 06        .byte con_buf_mode_06   ; 

- D 0 - I - 0x011A44 04:9A34: 20 09     .dbyt $2009 ; ppu address
- D 0 - I - 0x011A46 04:9A36: 0E        .byte $0E   ; counter
- D 0 - I - 0x011A47 04:9A37: E0        .byte $E0, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $E1   ; 

- D 0 - I - 0x011A55 04:9A45: 20 68     .dbyt $2068 ; ppu address
- D 0 - I - 0x011A57 04:9A47: 10        .byte $10   ; counter
- D 0 - I - 0x011A58 04:9A48: 00        .byte $00, $00, $E2, $E4, $00, $00, $00, $00, $00, $00, $00, $00, $E5, $E3, $00, $00   ; 
- D 0 - I - 0x011A68 04:9A58: FE        .byte $FE   ; end token



_off015_9A59_04:
- D 0 - I - 0x011A69 04:9A59: 06        .byte con_buf_mode_06   ; 

- D 0 - I - 0x011A6A 04:9A5A: 20 88     .dbyt $2088 ; ppu address
- D 0 - I - 0x011A6C 04:9A5C: 10        .byte $10   ; counter
- D 0 - I - 0x011A6D 04:9A5D: 00        .byte $00, $E2, $E4, $E6, $E8, $EA, $EC, $EC, $EC, $EC, $EB, $E9, $E7, $E5, $E3, $00   ; 

- D 0 - I - 0x011A7D 04:9A6D: 20 A8     .dbyt $20A8 ; ppu address
- D 0 - I - 0x011A7F 04:9A6F: 10        .byte $10   ; counter
- D 0 - I - 0x011A80 04:9A70: EE        .byte $EE, $F0, $F2, $E8, $EA, $EC, $ED, $ED, $ED, $ED, $EC, $EB, $E9, $F3, $F1, $EF   ; 

- D 0 - I - 0x011A90 04:9A80: 20 C8     .dbyt $20C8 ; ppu address
- D 0 - I - 0x011A92 04:9A82: 10        .byte $10   ; counter
- D 0 - I - 0x011A93 04:9A83: 00        .byte $00, $F8, $F6, $EE, $F0, $F4, $DE, $DE, $DE, $DE, $F5, $F1, $EF, $F7, $1C, $00   ; 

- D 0 - I - 0x011AA3 04:9A93: 20 E8     .dbyt $20E8 ; ppu address
- D 0 - I - 0x011AA5 04:9A95: 10        .byte $10   ; counter
- D 0 - I - 0x011AA6 04:9A96: 00        .byte $00, $00, $00, $00, $F8, $F6, $DF, $DF, $DF, $DF, $F7, $1C, $00, $00, $00, $00   ; 

- D 0 - I - 0x011AB6 04:9AA6: 23 C2     .dbyt $23C2 ; ppu address
- D 0 - I - 0x011AB8 04:9AA8: 04        .byte $04   ; counter
- D 0 - I - 0x011AB9 04:9AA9: 00        .byte $00, $00, $00, $00   ; 

- D 0 - I - 0x011ABD 04:9AAD: 23 CA     .dbyt $23CA ; ppu address
- D 0 - I - 0x011ABF 04:9AAF: 04        .byte $04   ; counter
- D 0 - I - 0x011AC0 04:9AB0: 00        .byte $00, $00, $00, $00   ; 

- D 0 - I - 0x011AC4 04:9AB4: FE        .byte $FE   ; end token



_off015_9AB5_05:
- D 0 - I - 0x011AC5 04:9AB5: 06        .byte con_buf_mode_06   ; 

- D 0 - I - 0x011AC6 04:9AB6: 23 C2     .dbyt $23C2 ; ppu address
- D 0 - I - 0x011AC8 04:9AB8: 04        .byte $04   ; counter
- D 0 - I - 0x011AC9 04:9AB9: FF        .byte $FF, $33, $CC, $FF   ; 

- D 0 - I - 0x011ACD 04:9ABD: 23 CA     .dbyt $23CA ; ppu address
- D 0 - I - 0x011ACF 04:9ABF: 04        .byte $04   ; counter
- D 0 - I - 0x011AD0 04:9AC0: 0C        .byte $0C, $F0, $F0, $03   ; 

- D 0 - I - 0x011AD4 04:9AC4: 23 DB     .dbyt $23DB ; ppu address
- D 0 - I - 0x011AD6 04:9AC6: 02        .byte $02   ; counter
- D 0 - I - 0x011AD7 04:9AC7: 51        .byte $51, $54   ; 

- D 0 - I - 0x011AD9 04:9AC9: FE        .byte $FE   ; end token



_off015_9ACA_06:
- D 0 - I - 0x011ADA 04:9ACA: 06        .byte con_buf_mode_06   ; 

- D 0 - I - 0x011ADB 04:9ACB: 21 2C     .dbyt $212C ; ppu address
- D 0 - I - 0x011ADD 04:9ACD: 08        .byte $08   ; counter
- D 0 - I - 0x011ADE 04:9ACE: 00        .byte $00, $73, $74, $75, $76, $77, $78, $00   ; 

- D 0 - I - 0x011AE6 04:9AD6: 21 4D     .dbyt $214D ; ppu address
- D 0 - I - 0x011AE8 04:9AD8: 06        .byte $06   ; counter
- D 0 - I - 0x011AE9 04:9AD9: 79        .byte $79, $7A, $7A, $7A, $7A, $7B   ; 

- D 0 - I - 0x011AEF 04:9ADF: 21 6D     .dbyt $216D ; ppu address
- D 0 - I - 0x011AF1 04:9AE1: 06        .byte $06   ; counter
- D 0 - I - 0x011AF2 04:9AE2: 7C        .byte $7C, $7D, $7E, $7F, $88, $89   ; 

- D 0 - I - 0x011AF8 04:9AE8: 21 8D     .dbyt $218D ; ppu address
- D 0 - I - 0x011AFA 04:9AEA: 06        .byte $06   ; counter
- D 0 - I - 0x011AFB 04:9AEB: 00        .byte $00, $8A, $8B, $8C, $8D, $00   ; 

- D 0 - I - 0x011B01 04:9AF1: 21 AE     .dbyt $21AE ; ppu address
- D 0 - I - 0x011B03 04:9AF3: 04        .byte $04   ; counter
- D 0 - I - 0x011B04 04:9AF4: 00        .byte $00, $8E, $8F, $00   ; 

- D 0 - I - 0x011B08 04:9AF8: 23 DB     .dbyt $23DB ; ppu address
- D 0 - I - 0x011B0A 04:9AFA: 02        .byte $02   ; counter
- D 0 - I - 0x011B0B 04:9AFB: 51        .byte $51, $54   ; 

- D 0 - I - 0x011B0D 04:9AFD: FE        .byte $FE   ; end token



_off015_9AFE_07:
- D 0 - I - 0x011B0E 04:9AFE: 06        .byte con_buf_mode_06   ; 

- D 0 - I - 0x011B0F 04:9AFF: 21 2C     .dbyt $212C ; ppu address
- D 0 - I - 0x011B11 04:9B01: 08        .byte $08   ; counter
- D 0 - I - 0x011B12 04:9B02: 90        .byte $90, $7A, $74, $75, $76, $77, $7A, $91   ; 

- D 0 - I - 0x011B1A 04:9B0A: 21 4D     .dbyt $214D ; ppu address
- D 0 - I - 0x011B1C 04:9B0C: 06        .byte $06   ; counter
- D 0 - I - 0x011B1D 04:9B0D: 92        .byte $92, $7A, $7A, $7A, $7A, $93   ; 

- D 0 - I - 0x011B23 04:9B13: 21 6D     .dbyt $216D ; ppu address
- D 0 - I - 0x011B25 04:9B15: 06        .byte $06   ; counter
- D 0 - I - 0x011B26 04:9B16: 94        .byte $94, $95, $96, $97, $98, $99   ; 

- D 0 - I - 0x011B2C 04:9B1C: 21 8D     .dbyt $218D ; ppu address
- D 0 - I - 0x011B2E 04:9B1E: 06        .byte $06   ; counter
- D 0 - I - 0x011B2F 04:9B1F: 9A        .byte $9A, $9B, $9C, $9D, $9E, $9F   ; 

- D 0 - I - 0x011B35 04:9B25: 21 AE     .dbyt $21AE ; ppu address
- D 0 - I - 0x011B37 04:9B27: 04        .byte $04   ; counter
- D 0 - I - 0x011B38 04:9B28: A0        .byte $A0, $A1, $A3, $A7   ; 

- D 0 - I - 0x011B3C 04:9B2C: 23 DB     .dbyt $23DB ; ppu address
- D 0 - I - 0x011B3E 04:9B2E: 02        .byte $02   ; counter
- D 0 - I - 0x011B3F 04:9B2F: 59        .byte $59, $56   ; 

- D 0 - I - 0x011B41 04:9B31: FE        .byte $FE   ; end token



_off001_0x011B42_66_boss_6_snake:
- D 0 - I - 0x011B42 04:9B32: 3C 9B     .word ofs_038_66_9B3C_01_initialize_object ; 
- D 0 - I - 0x011B44 04:9B34: 95 9B     .word ofs_038_66_9B95_02 ; 
- D 0 - I - 0x011B46 04:9B36: 11 9C     .word ofs_038_66_9C11_03 ; 
- D 0 - I - 0x011B48 04:9B38: FD A2     .word ofs_038_66_0x00630D_04 ; 
- D 0 - I - 0x011B4A 04:9B3A: 3D A3     .word ofs_038_66_0x00634D_05_delete_object_04 ; 



ofs_038_66_9B3C_01_initialize_object:
C - - J - - 0x011B4C 04:9B3C: A9 18     LDA #$18
C - - - - - 0x011B4E 04:9B3E: 20 95 AB  JSR sub_0x006BA5_set_dynamic_hp_to_enemy
C - - - - - 0x011B51 04:9B41: BC 64 07  LDY ram_0764_obj,X
C - - - - - 0x011B54 04:9B44: F0 02     BEQ bra_9B48
C - - - - - 0x011B56 04:9B46: A9 F1     LDA #con__hp_F1
bra_9B48:
C - - - - - 0x011B58 04:9B48: 9D 76 06  STA ram_obj_hp,X
C - - - - - 0x011B5B 04:9B4B: BD 64 07  LDA ram_0764_obj,X
C - - - - - 0x011B5E 04:9B4E: D0 40     BNE bra_9B90
C - - - - - 0x011B60 04:9B50: A9 F0     LDA #$F0
C - - - - - 0x011B62 04:9B52: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x011B65 04:9B55: A0 00     LDY #$00
bra_9B57_loop:
C - - - - - 0x011B67 04:9B57: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x011B6A 04:9B5A: 99 40 04  STA ram_0400_area_data_1 + $40,Y  ; 0440-049B
C - - - - - 0x011B6D 04:9B5D: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x011B70 04:9B60: 99 A0 04  STA ram_0480_area_data_2 + $20,Y  ; 04A0-04FB
C - - - - - 0x011B73 04:9B63: C8        INY
C - - - - - 0x011B74 04:9B64: C0 5C     CPY #$5C
C - - - - - 0x011B76 04:9B66: 90 EF     BCC bra_9B57_loop
C - - - - - 0x011B78 04:9B68: 86 12     STX ram_0012
C - - - - - 0x011B7A 04:9B6A: A9 01     LDA #$01
C - - - - - 0x011B7C 04:9B6C: 85 08     STA ram_0008
bra_9B6E_loop:
C - - - - - 0x011B7E 04:9B6E: 86 10     STX ram_0010
C - - - - - 0x011B80 04:9B70: A0 66     LDY #con_obj_id_66
C - - - - - 0x011B82 04:9B72: 20 C8 AB  JSR sub_0x006BD8
C - - - - - 0x011B85 04:9B75: 90 12     BCC bra_9B89
C - - - - - 0x011B87 04:9B77: A4 11     LDY ram_0011
C - - - - - 0x011B89 04:9B79: A5 08     LDA ram_0008
C - - - - - 0x011B8B 04:9B7B: 99 64 07  STA ram_0764_obj,Y
C - - - - - 0x011B8E 04:9B7E: E6 08     INC ram_0008
C - - - - - 0x011B90 04:9B80: C9 06     CMP #$06
C - - - - - 0x011B92 04:9B82: 98        TYA
C - - - - - 0x011B93 04:9B83: 9D 80 07  STA ram_0780_obj,X
C - - - - - 0x011B96 04:9B86: AA        TAX
C - - - - - 0x011B97 04:9B87: 90 E5     BCC bra_9B6E_loop
bra_9B89:
C - - - - - 0x011B99 04:9B89: A9 FF     LDA #$FF
C - - - - - 0x011B9B 04:9B8B: 9D 80 07  STA ram_0780_obj,X
C - - - - - 0x011B9E 04:9B8E: A6 12     LDX ram_0012
bra_9B90:
C - - - - - 0x011BA0 04:9B90: A9 08     LDA #$08
C - - - - - 0x011BA2 04:9B92: 4C E0 A2  JMP loc_0x0062F0



ofs_038_66_9B95_02:
C - - J - - 0x011BA5 04:9B95: 20 22 9C  JSR sub_9C22
C - - - - - 0x011BA8 04:9B98: BC 3C 05  LDY ram_pos_X_hi_enemy,X
C - - - - - 0x011BAB 04:9B9B: C0 14     CPY #$14
C - - - - - 0x011BAD 04:9B9D: 90 17     BCC bra_9BB6
C - - - - - 0x011BAF 04:9B9F: C0 24     CPY #$24
C - - - - - 0x011BB1 04:9BA1: 90 08     BCC bra_9BAB
C - - - - - 0x011BB3 04:9BA3: C0 EA     CPY #$EA
C - - - - - 0x011BB5 04:9BA5: B0 0F     BCS bra_9BB6
C - - - - - 0x011BB7 04:9BA7: C0 DC     CPY #$DC
C - - - - - 0x011BB9 04:9BA9: 90 10     BCC bra_9BBB
bra_9BAB:
C - - - - - 0x011BBB 04:9BAB: BD 56 05  LDA ram_attr_spr_enemy,X
C - - - - - 0x011BBE 04:9BAE: 09 20     ORA #$20
C - - - - - 0x011BC0 04:9BB0: 9D 56 05  STA ram_attr_spr_enemy,X
C - - - - - 0x011BC3 04:9BB3: 4C BB 9B  JMP loc_9BBB    ; bzk optimize, BNE
bra_9BB6:
C - - - - - 0x011BC6 04:9BB6: A9 00     LDA #$00
C - - - - - 0x011BC8 04:9BB8: 9D 08 05  STA ram_anim_id_enemy,X
bra_9BBB:
loc_9BBB:
C D 0 - - - 0x011BCB 04:9BBB: BD 64 07  LDA ram_0764_obj,X
C - - - - - 0x011BCE 04:9BBE: F0 01     BEQ bra_9BC1
C - - - - - 0x011BD0 04:9BC0: 60        RTS
bra_9BC1:
C - - - - - 0x011BD1 04:9BC1: 20 4F 9C  JSR sub_9C4F
C - - - - - 0x011BD4 04:9BC4: AD FF 04  LDA ram_0480_area_data_2 + $7F
C - - - - - 0x011BD7 04:9BC7: 38        SEC
C - - - - - 0x011BD8 04:9BC8: E9 01     SBC #$01
C - - - - - 0x011BDA 04:9BCA: C9 5C     CMP #$5C
C - - - - - 0x011BDC 04:9BCC: 90 02     BCC bra_9BD0
C - - - - - 0x011BDE 04:9BCE: 69 5B     ADC #$5B
bra_9BD0:
C - - - - - 0x011BE0 04:9BD0: 8D FF 04  STA ram_0480_area_data_2 + $7F
C - - - - - 0x011BE3 04:9BD3: A8        TAY
C - - - - - 0x011BE4 04:9BD4: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x011BE7 04:9BD7: 99 40 04  STA ram_0400_area_data_1 + $40,Y
C - - - - - 0x011BEA 04:9BDA: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x011BED 04:9BDD: 99 A0 04  STA ram_0480_area_data_2 + $20,Y
loc_9BE0:
C D 0 - - - 0x011BF0 04:9BE0: BD 80 07  LDA ram_0780_obj,X
C - - - - - 0x011BF3 04:9BE3: 30 23     BMI bra_9C08
C - - - - - 0x011BF5 04:9BE5: AA        TAX
C - - - - - 0x011BF6 04:9BE6: BC 64 07  LDY ram_0764_obj,X
C - - - - - 0x011BF9 04:9BE9: B9 0A 9C  LDA tbl_9C0B - $01,Y
C - - - - - 0x011BFC 04:9BEC: 18        CLC
C - - - - - 0x011BFD 04:9BED: 6D FF 04  ADC ram_0480_area_data_2 + $7F
C - - - - - 0x011C00 04:9BF0: B0 04     BCS bra_9BF6
C - - - - - 0x011C02 04:9BF2: C9 5C     CMP #$5C
C - - - - - 0x011C04 04:9BF4: 90 02     BCC bra_9BF8
bra_9BF6:
C - - - - - 0x011C06 04:9BF6: E9 5C     SBC #$5C
bra_9BF8:
C - - - - - 0x011C08 04:9BF8: A8        TAY
C - - - - - 0x011C09 04:9BF9: B9 40 04  LDA ram_0400_area_data_1 + $40,Y
C - - - - - 0x011C0C 04:9BFC: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x011C0F 04:9BFF: B9 A0 04  LDA ram_0480_area_data_2 + $20,Y
C - - - - - 0x011C12 04:9C02: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x011C15 04:9C05: 4C E0 9B  JMP loc_9BE0
bra_9C08:
C - - - - - 0x011C18 04:9C08: A6 10     LDX ram_0010
C - - - - - 0x011C1A 04:9C0A: 60        RTS



tbl_9C0B:
- D 0 - - - 0x011C1B 04:9C0B: 0F        .byte $0F   ; 01 
- D 0 - - - 0x011C1C 04:9C0C: 1E        .byte $1E   ; 02 
- D 0 - - - 0x011C1D 04:9C0D: 2D        .byte $2D   ; 03 
- D 0 - - - 0x011C1E 04:9C0E: 3C        .byte $3C   ; 04 
- D 0 - - - 0x011C1F 04:9C0F: 4B        .byte $4B   ; 05 
- D 0 - - - 0x011C20 04:9C10: 5A        .byte $5A   ; 06 



ofs_038_66_9C11_03:
C - - J - - 0x011C21 04:9C11: BD 80 07  LDA ram_0780_obj,X
C - - - - - 0x011C24 04:9C14: C9 FF     CMP #$FF
C - - - - - 0x011C26 04:9C16: F0 06     BEQ bra_9C1E_FF
C - - - - - 0x011C28 04:9C18: AA        TAX
C - - - - - 0x011C29 04:9C19: 20 75 A4  JSR sub_0x006485_kill_enemy
C - - - - - 0x011C2C 04:9C1C: A6 10     LDX ram_0010
bra_9C1E_FF:
C - - - - - 0x011C2E 04:9C1E: 20 9A A2  JSR sub_0x0062AA
C - - - - - 0x011C31 04:9C21: 60        RTS



sub_9C22:
C - - - - - 0x011C32 04:9C22: A0 08     LDY #$08
C - - - - - 0x011C34 04:9C24: BD 64 07  LDA ram_0764_obj,X
C - - - - - 0x011C37 04:9C27: D0 07     BNE bra_9C30
C - - - - - 0x011C39 04:9C29: BC 48 07  LDY ram_0748_obj,X
C - - - - - 0x011C3C 04:9C2C: B9 D4 F4  LDA tbl_0x01F4E4,Y
C - - - - - 0x011C3F 04:9C2F: A8        TAY
bra_9C30:
C - - - - - 0x011C40 04:9C30: B9 3D 9C  LDA tbl_9C3D_animation,Y
C - - - - - 0x011C43 04:9C33: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x011C46 04:9C36: B9 46 9C  LDA tbl_9C46_spr_attr,Y
C - - - - - 0x011C49 04:9C39: 9D 56 05  STA ram_attr_spr_enemy,X
C - - - - - 0x011C4C 04:9C3C: 60        RTS



tbl_9C3D_animation:
- D 0 - - - 0x011C4D 04:9C3D: 8B        .byte $8B   ; 00 
- D 0 - - - 0x011C4E 04:9C3E: 8A        .byte $8A   ; 01 
- D 0 - - - 0x011C4F 04:9C3F: 89        .byte $89   ; 02 
- D 0 - - - 0x011C50 04:9C40: 8A        .byte $8A   ; 03 
- D 0 - - - 0x011C51 04:9C41: 8B        .byte $8B   ; 04 
- D 0 - - - 0x011C52 04:9C42: 8C        .byte $8C   ; 05 
- D 0 - - - 0x011C53 04:9C43: 8D        .byte $8D   ; 06 
- D 0 - - - 0x011C54 04:9C44: 8C        .byte $8C   ; 07 
- D 0 - - - 0x011C55 04:9C45: 8E        .byte $8E   ; 08 



tbl_9C46_spr_attr:
- D 0 - - - 0x011C56 04:9C46: 43        .byte $43   ; 00 
- D 0 - - - 0x011C57 04:9C47: 43        .byte $43   ; 01 
- D 0 - - - 0x011C58 04:9C48: 03        .byte $03   ; 02 
- D 0 - - - 0x011C59 04:9C49: 03        .byte $03   ; 03 
- D 0 - - - 0x011C5A 04:9C4A: 03        .byte $03   ; 04 
- D 0 - - - 0x011C5B 04:9C4B: 03        .byte $03   ; 05 
- D 0 - - - 0x011C5C 04:9C4C: 03        .byte $03   ; 06 
- D 0 - - - 0x011C5D 04:9C4D: 43        .byte $43   ; 07 
- D 0 - - - 0x011C5E 04:9C4E: 03        .byte $03   ; 08 



sub_9C4F:
C - - - - - 0x011C5F 04:9C4F: BD 56 07  LDA ram_0756_obj,X
C - - - - - 0x011C62 04:9C52: 20 09 E6  JSR sub_0x01E619_jump_to_pointers_after_jsr
- D 0 - I - 0x011C65 04:9C55: 5B 9C     .word ofs_029_9C5B_00
- D 0 - I - 0x011C67 04:9C57: 79 9C     .word ofs_029_9C79_01
- D 0 - I - 0x011C69 04:9C59: 9E 9C     .word ofs_029_9C9E_02



ofs_029_9C5B_00:
C - - J - - 0x011C6B 04:9C5B: BC 72 07  LDY ram_0772_obj,X
C - - - - - 0x011C6E 04:9C5E: B9 DA 9C  LDA tbl_9CDA_index,Y
C - - - - - 0x011C71 04:9C61: A8        TAY
C - - - - - 0x011C72 04:9C62: B9 DE 9C  LDA tbl_9CDE_pos_Y,Y
C - - - - - 0x011C75 04:9C65: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x011C78 04:9C68: B9 E2 9C  LDA tbl_9CE2_pos_X,Y
C - - - - - 0x011C7B 04:9C6B: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x011C7E 04:9C6E: A9 FF     LDA #$FF
C - - - - - 0x011C80 04:9C70: 9D 10 07  STA ram_0710_obj,X
C - - - - - 0x011C83 04:9C73: 20 A9 9C  JSR sub_9CA9
C - - - - - 0x011C86 04:9C76: 4C 9A 9C  JMP loc_9C9A



ofs_029_9C79_01:
C - - J - - 0x011C89 04:9C79: 20 BA 9D  JSR sub_9DBA_move_object
C - - - - - 0x011C8C 04:9C7C: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x011C8F 04:9C7F: D0 1C     BNE bra_9C9D_RTS
C - - - - - 0x011C91 04:9C81: 20 A9 9C  JSR sub_9CA9
C - - - - - 0x011C94 04:9C84: 10 17     BPL bra_9C9D_RTS
C - - - - - 0x011C96 04:9C86: BD 72 07  LDA ram_0772_obj,X
C - - - - - 0x011C99 04:9C89: 18        CLC
C - - - - - 0x011C9A 04:9C8A: 69 01     ADC #$01
C - - - - - 0x011C9C 04:9C8C: C9 04     CMP #$04
C - - - - - 0x011C9E 04:9C8E: 90 02     BCC bra_9C92
- - - - - - 0x011CA0 04:9C90: A9 00     LDA #$00
bra_9C92:
C - - - - - 0x011CA2 04:9C92: 9D 72 07  STA ram_0772_obj,X
C - - - - - 0x011CA5 04:9C95: A9 80     LDA #$80
C - - - - - 0x011CA7 04:9C97: 9D E6 06  STA ram_06E6_obj,X
loc_9C9A:
C D 0 - - - 0x011CAA 04:9C9A: FE 56 07  INC ram_0756_obj,X
bra_9C9D_RTS:
C - - - - - 0x011CAD 04:9C9D: 60        RTS



ofs_029_9C9E_02:
C - - J - - 0x011CAE 04:9C9E: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x011CB1 04:9CA1: D0 FA     BNE bra_9C9D_RTS
C - - - - - 0x011CB3 04:9CA3: A9 00     LDA #$00
C - - - - - 0x011CB5 04:9CA5: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x011CB8 04:9CA8: 60        RTS



sub_9CA9:
C - - - - - 0x011CB9 04:9CA9: FE 10 07  INC ram_0710_obj,X
C - - - - - 0x011CBC 04:9CAC: BC 72 07  LDY ram_0772_obj,X
C - - - - - 0x011CBF 04:9CAF: B9 DA 9C  LDA tbl_9CDA_index,Y
C - - - - - 0x011CC2 04:9CB2: 0A        ASL
C - - - - - 0x011CC3 04:9CB3: A8        TAY
C - - - - - 0x011CC4 04:9CB4: B9 E6 9C  LDA tbl_9CE6,Y
C - - - - - 0x011CC7 04:9CB7: 85 00     STA ram_0000
C - - - - - 0x011CC9 04:9CB9: B9 E7 9C  LDA tbl_9CE6 + $01,Y
C - - - - - 0x011CCC 04:9CBC: 85 01     STA ram_0001
C - - - - - 0x011CCE 04:9CBE: BD 10 07  LDA ram_0710_obj,X
C - - - - - 0x011CD1 04:9CC1: 0A        ASL
C - - - - - 0x011CD2 04:9CC2: A8        TAY
C - - - - - 0x011CD3 04:9CC3: B1 00     LDA (ram_0000),Y
C - - - - - 0x011CD5 04:9CC5: 30 12     BMI bra_9CD9_RTS
C - - - - - 0x011CD7 04:9CC7: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x011CDA 04:9CCA: C8        INY
C - - - - - 0x011CDB 04:9CCB: B1 00     LDA (ram_0000),Y
C - - - - - 0x011CDD 04:9CCD: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x011CE0 04:9CD0: A0 03     LDY #$03
C - - - - - 0x011CE2 04:9CD2: 84 06     STY ram_0006
C - - - - - 0x011CE4 04:9CD4: 20 2B A9  JSR sub_0x00693B
C - - - - - 0x011CE7 04:9CD7: A9 00     LDA #$00
bra_9CD9_RTS:
C - - - - - 0x011CE9 04:9CD9: 60        RTS



tbl_9CDA_index:
- D 0 - - - 0x011CEA 04:9CDA: 02        .byte $02   ; 00 
- D 0 - - - 0x011CEB 04:9CDB: 03        .byte $03   ; 01 
- D 0 - - - 0x011CEC 04:9CDC: 02        .byte $02   ; 02 
- - - - - - 0x011CED 04:9CDD: 03        .byte $03   ; 03 



tbl_9CDE_pos_Y:
; bzk garbage 00 and 01, no such indexes 0x011CEA
- - - - - - 0x011CEE 04:9CDE: 48        .byte $48   ; 00 
- - - - - - 0x011CEF 04:9CDF: 48        .byte $48   ; 01 
- D 0 - - - 0x011CF0 04:9CE0: 48        .byte $48   ; 02 
- D 0 - - - 0x011CF1 04:9CE1: 48        .byte $48   ; 03 



tbl_9CE2_pos_X:
; bzk garbage 00 and 01, no such indexes 0x011CEA
- - - - - - 0x011CF2 04:9CE2: F0        .byte $F0   ; 00 
- - - - - - 0x011CF3 04:9CE3: 10        .byte $10   ; 01 
- D 0 - - - 0x011CF4 04:9CE4: F0        .byte $F0   ; 02 
- D 0 - - - 0x011CF5 04:9CE5: 10        .byte $10   ; 03 



tbl_9CE6:
- - - - - - 0x011CF6 04:9CE6: EE 9C     .word _off024_9CEE_00
- - - - - - 0x011CF8 04:9CE8: 09 9D     .word _off024_9D09_01
- D 0 - - - 0x011CFA 04:9CEA: 24 9D     .word _off024_9D24_02
- D 0 - - - 0x011CFC 04:9CEC: 6F 9D     .word _off024_9D6F_03



_off024_9CEE_00:
; bzk garbage, no such index 0x011CEA
;                                              +---------- 
;                                              |    +----- 
;                                              |    |
- - - - - - 0x011CFE 04:9CEE: 09        .byte $09, $16   ; 00 
- - - - - - 0x011D00 04:9CF0: 07        .byte $07, $40   ; 01 
- - - - - - 0x011D02 04:9CF2: 08        .byte $08, $10   ; 02 
- - - - - - 0x011D04 04:9CF4: 09        .byte $09, $10   ; 03 
- - - - - - 0x011D06 04:9CF6: 0A        .byte $0A, $10   ; 04 
- - - - - - 0x011D08 04:9CF8: 0B        .byte $0B, $10   ; 05 
- - - - - - 0x011D0A 04:9CFA: 0C        .byte $0C, $10   ; 06 
- - - - - - 0x011D0C 04:9CFC: 0D        .byte $0D, $10   ; 07 
- - - - - - 0x011D0E 04:9CFE: 0E        .byte $0E, $10   ; 08 
- - - - - - 0x011D10 04:9D00: 0F        .byte $0F, $10   ; 09 
- - - - - - 0x011D12 04:9D02: 10        .byte $10, $10   ; 0A 
- - - - - - 0x011D14 04:9D04: 11        .byte $11, $40   ; 0B 
- - - - - - 0x011D16 04:9D06: 0F        .byte $0F, $16   ; 0C 
- - - - - - 0x011D18 04:9D08: FF        .byte $FF   ; 0D final



_off024_9D09_01:
; bzk garbage, no such index 0x011CEA
;                                              +---------- 
;                                              |    +----- 
;                                              |    |
- - - - - - 0x011D19 04:9D09: 03        .byte $03, $16   ; 
- - - - - - 0x011D1B 04:9D0B: 05        .byte $05, $40   ; 
- - - - - - 0x011D1D 04:9D0D: 04        .byte $04, $10   ; 
- - - - - - 0x011D1F 04:9D0F: 03        .byte $03, $10   ; 
- - - - - - 0x011D21 04:9D11: 02        .byte $02, $10   ; 
- - - - - - 0x011D23 04:9D13: 01        .byte $01, $10   ; 
- - - - - - 0x011D25 04:9D15: 00        .byte $00, $10   ; 
- - - - - - 0x011D27 04:9D17: 17        .byte $17, $10   ; 
- - - - - - 0x011D29 04:9D19: 16        .byte $16, $10   ; 
- - - - - - 0x011D2B 04:9D1B: 15        .byte $15, $10   ; 
- - - - - - 0x011D2D 04:9D1D: 14        .byte $14, $10   ; 
- - - - - - 0x011D2F 04:9D1F: 13        .byte $13, $40   ; 
- - - - - - 0x011D31 04:9D21: 15        .byte $15, $16   ; 
- - - - - - 0x011D33 04:9D23: FF        .byte $FF   ; 



_off024_9D24_02:
;                                              +---------- 
;                                              |    +----- 
;                                              |    |
- D 0 - I - 0x011D34 04:9D24: 09        .byte $09, $16   ; 00 
- D 0 - I - 0x011D36 04:9D26: 07        .byte $07, $40   ; 01 
- D 0 - I - 0x011D38 04:9D28: 08        .byte $08, $10   ; 02 
- D 0 - I - 0x011D3A 04:9D2A: 09        .byte $09, $10   ; 03 
- D 0 - I - 0x011D3C 04:9D2C: 0A        .byte $0A, $10   ; 04 
- D 0 - I - 0x011D3E 04:9D2E: 0B        .byte $0B, $10   ; 05 
- D 0 - I - 0x011D40 04:9D30: 0C        .byte $0C, $10   ; 06 
- D 0 - I - 0x011D42 04:9D32: 0D        .byte $0D, $0A   ; 07 
- D 0 - I - 0x011D44 04:9D34: 0E        .byte $0E, $0A   ; 08 
- D 0 - I - 0x011D46 04:9D36: 0F        .byte $0F, $0A   ; 09 
- D 0 - I - 0x011D48 04:9D38: 10        .byte $10, $0A   ; 0A 
- D 0 - I - 0x011D4A 04:9D3A: 11        .byte $11, $0A   ; 0B 
- D 0 - I - 0x011D4C 04:9D3C: 12        .byte $12, $0A   ; 0C 
- D 0 - I - 0x011D4E 04:9D3E: 13        .byte $13, $0A   ; 0D 
- D 0 - I - 0x011D50 04:9D40: 14        .byte $14, $0A   ; 0E 
- D 0 - I - 0x011D52 04:9D42: 15        .byte $15, $0A   ; 0F 
- D 0 - I - 0x011D54 04:9D44: 16        .byte $16, $0A   ; 10 
- D 0 - I - 0x011D56 04:9D46: 17        .byte $17, $0A   ; 11 
- D 0 - I - 0x011D58 04:9D48: 00        .byte $00, $10   ; 12 
- D 0 - I - 0x011D5A 04:9D4A: 01        .byte $01, $0A   ; 13 
- D 0 - I - 0x011D5C 04:9D4C: 02        .byte $02, $0A   ; 14 
- D 0 - I - 0x011D5E 04:9D4E: 03        .byte $03, $0A   ; 15 
- D 0 - I - 0x011D60 04:9D50: 04        .byte $04, $0A   ; 16 
- D 0 - I - 0x011D62 04:9D52: 05        .byte $05, $0A   ; 17 
- D 0 - I - 0x011D64 04:9D54: 06        .byte $06, $0A   ; 18 
- D 0 - I - 0x011D66 04:9D56: 07        .byte $07, $0A   ; 19 
- D 0 - I - 0x011D68 04:9D58: 08        .byte $08, $0A   ; 1A 
- D 0 - I - 0x011D6A 04:9D5A: 09        .byte $09, $0A   ; 1B 
- D 0 - I - 0x011D6C 04:9D5C: 0A        .byte $0A, $0A   ; 1C 
- D 0 - I - 0x011D6E 04:9D5E: 0B        .byte $0B, $0A   ; 1D 
- D 0 - I - 0x011D70 04:9D60: 0C        .byte $0C, $10   ; 1E 
- D 0 - I - 0x011D72 04:9D62: 0D        .byte $0D, $10   ; 1F 
- D 0 - I - 0x011D74 04:9D64: 0E        .byte $0E, $10   ; 20 
- D 0 - I - 0x011D76 04:9D66: 0F        .byte $0F, $10   ; 21 
- D 0 - I - 0x011D78 04:9D68: 10        .byte $10, $10   ; 22 
- D 0 - I - 0x011D7A 04:9D6A: 11        .byte $11, $40   ; 23 
- D 0 - I - 0x011D7C 04:9D6C: 0F        .byte $0F, $16   ; 24 
- D 0 - I - 0x011D7E 04:9D6E: FF        .byte $FF   ; 25 final



_off024_9D6F_03:
;                                              +---------- 
;                                              |    +----- 
;                                              |    |
- D 0 - I - 0x011D7F 04:9D6F: 03        .byte $03, $16   ; 00 
- D 0 - I - 0x011D81 04:9D71: 05        .byte $05, $40   ; 01 
- D 0 - I - 0x011D83 04:9D73: 04        .byte $04, $10   ; 02 
- D 0 - I - 0x011D85 04:9D75: 03        .byte $03, $10   ; 03 
- D 0 - I - 0x011D87 04:9D77: 02        .byte $02, $10   ; 04 
- D 0 - I - 0x011D89 04:9D79: 01        .byte $01, $10   ; 05 
- D 0 - I - 0x011D8B 04:9D7B: 00        .byte $00, $10   ; 06 
- D 0 - I - 0x011D8D 04:9D7D: 17        .byte $17, $0A   ; 07 
- D 0 - I - 0x011D8F 04:9D7F: 16        .byte $16, $0A   ; 08 
- D 0 - I - 0x011D91 04:9D81: 15        .byte $15, $0A   ; 09 
- D 0 - I - 0x011D93 04:9D83: 14        .byte $14, $0A   ; 0A 
- D 0 - I - 0x011D95 04:9D85: 13        .byte $13, $0A   ; 0B 
- D 0 - I - 0x011D97 04:9D87: 12        .byte $12, $0A   ; 0C 
- D 0 - I - 0x011D99 04:9D89: 11        .byte $11, $0A   ; 0D 
- D 0 - I - 0x011D9B 04:9D8B: 10        .byte $10, $0A   ; 0E 
- D 0 - I - 0x011D9D 04:9D8D: 0F        .byte $0F, $0A   ; 0F 
- D 0 - I - 0x011D9F 04:9D8F: 0E        .byte $0E, $0A   ; 10 
- D 0 - I - 0x011DA1 04:9D91: 0D        .byte $0D, $0A   ; 11 
- D 0 - I - 0x011DA3 04:9D93: 0C        .byte $0C, $10   ; 12 
- D 0 - I - 0x011DA5 04:9D95: 0B        .byte $0B, $0A   ; 13 
- D 0 - I - 0x011DA7 04:9D97: 0A        .byte $0A, $0A   ; 14 
- D 0 - I - 0x011DA9 04:9D99: 09        .byte $09, $0A   ; 15 
- D 0 - I - 0x011DAB 04:9D9B: 08        .byte $08, $0A   ; 16 
- D 0 - I - 0x011DAD 04:9D9D: 07        .byte $07, $0A   ; 17 
- D 0 - I - 0x011DAF 04:9D9F: 06        .byte $06, $0A   ; 18 
- D 0 - I - 0x011DB1 04:9DA1: 05        .byte $05, $0A   ; 19 
- D 0 - I - 0x011DB3 04:9DA3: 04        .byte $04, $0A   ; 1A 
- D 0 - I - 0x011DB5 04:9DA5: 03        .byte $03, $0A   ; 1B 
- D 0 - I - 0x011DB7 04:9DA7: 02        .byte $02, $0A   ; 1C 
- D 0 - I - 0x011DB9 04:9DA9: 01        .byte $01, $0A   ; 1D 
- D 0 - I - 0x011DBB 04:9DAB: 00        .byte $00, $10   ; 1E 
- D 0 - I - 0x011DBD 04:9DAD: 17        .byte $17, $10   ; 1F 
- D 0 - I - 0x011DBF 04:9DAF: 16        .byte $16, $10   ; 20 
- D 0 - I - 0x011DC1 04:9DB1: 15        .byte $15, $10   ; 21 
- D 0 - I - 0x011DC3 04:9DB3: 14        .byte $14, $10   ; 22 
- D 0 - I - 0x011DC5 04:9DB5: 13        .byte $13, $40   ; 23 
- D 0 - I - 0x011DC7 04:9DB7: 15        .byte $15, $16   ; 24 
- D 0 - I - 0x011DC9 04:9DB9: FF        .byte $FF   ; 25 final



sub_9DBA_move_object:
C - - - - - 0x011DCA 04:9DBA: BD 84 06  LDA ram_pos_Y_lo_enemy,X
C - - - - - 0x011DCD 04:9DBD: 18        CLC
C - - - - - 0x011DCE 04:9DBE: 7D A0 06  ADC ram_spd_Y_lo_obj,X
C - - - - - 0x011DD1 04:9DC1: 9D 84 06  STA ram_pos_Y_lo_enemy,X
C - - - - - 0x011DD4 04:9DC4: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x011DD7 04:9DC7: 7D AE 06  ADC ram_spd_Y_hi_obj,X
C - - - - - 0x011DDA 04:9DCA: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x011DDD 04:9DCD: BD 92 06  LDA ram_pos_X_lo_enemy,X
C - - - - - 0x011DE0 04:9DD0: 18        CLC
C - - - - - 0x011DE1 04:9DD1: 7D BC 06  ADC ram_spd_X_lo_obj,X
C - - - - - 0x011DE4 04:9DD4: 9D 92 06  STA ram_pos_X_lo_enemy,X
C - - - - - 0x011DE7 04:9DD7: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x011DEA 04:9DDA: 7D CA 06  ADC ram_spd_X_hi_obj,X
C - - - - - 0x011DED 04:9DDD: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x011DF0 04:9DE0: 60        RTS



_off004_0x011DF1_04_area_5:
- D 0 - I - 0x011DF1 04:9DE1: 09        .byte $09   ; columns
- D 0 - I - 0x011DF2 04:9DE2: 07        .byte $07   ; rows

;                                              00   01   02   03   04   05   06   07   08
- D 0 - I - 0x011DF3 04:9DE3: 07        .byte $07, $08, $09, $00, $00, $00, $00, $00, $00   ; 00 
- D 0 - I - 0x011DFC 04:9DEC: 06        .byte $06, $0A, $0B, $0C, $00, $00, $00, $00, $00   ; 01 
- D 0 - I - 0x011E05 04:9DF5: 05        .byte $05, $00, $0A, $0D, $0E, $0F, $11, $00, $10   ; 02 
- D 0 - I - 0x011E0E 04:9DFE: 04        .byte $04, $00, $00, $00, $00, $00, $00, $00, $00   ; 03 
- D 0 - I - 0x011E17 04:9E07: 03        .byte $03, $00, $00, $00, $00, $00, $00, $00, $00   ; 04 
- D 0 - I - 0x011E20 04:9E10: 02        .byte $02, $00, $00, $00, $00, $00, $00, $00, $00   ; 05 
- D 0 - I - 0x011E29 04:9E19: 01        .byte $01, $00, $00, $00, $00, $00, $00, $00, $00   ; 06 



_off005_0x011E32_04_area_5:
- D 0 - I - 0x011E32 04:9E22: 46 9E     .word _off018_04_9E46_00
- D 0 - I - 0x011E34 04:9E24: 86 9E     .word _off018_04_9E86_01
- D 0 - I - 0x011E36 04:9E26: C6 9E     .word _off018_04_9EC6_02
- D 0 - I - 0x011E38 04:9E28: 06 9F     .word _off018_04_9F06_03
- D 0 - I - 0x011E3A 04:9E2A: 46 9F     .word _off018_04_9F46_04
- D 0 - I - 0x011E3C 04:9E2C: 86 9F     .word _off018_04_9F86_05
- D 0 - I - 0x011E3E 04:9E2E: C6 9F     .word _off018_04_9FC6_06
- D 0 - I - 0x011E40 04:9E30: 06 A0     .word _off018_04_A006_07
- D 0 - I - 0x011E42 04:9E32: 46 A0     .word _off018_04_A046_08
- D 0 - I - 0x011E44 04:9E34: 86 A0     .word _off018_04_A086_09
- D 0 - I - 0x011E46 04:9E36: C6 A0     .word _off018_04_A0C6_0A
- D 0 - I - 0x011E48 04:9E38: 06 A1     .word _off018_04_A106_0B
- D 0 - I - 0x011E4A 04:9E3A: 46 A1     .word _off018_04_A146_0C
- D 0 - I - 0x011E4C 04:9E3C: 86 A1     .word _off018_04_A186_0D
- D 0 - I - 0x011E4E 04:9E3E: C6 A1     .word _off018_04_A1C6_0E
- D 0 - I - 0x011E50 04:9E40: 06 A2     .word _off018_04_A206_0F
- D 0 - I - 0x011E52 04:9E42: 46 A2     .word _off018_04_A246_10
- D 0 - I - 0x011E54 04:9E44: 86 A2     .word _off018_04_A286_11



_off018_04_9E46_00:
;                                              00   01   02   03   04   05   06   07
- D 0 - I - 0x011E56 04:9E46: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 00 
- D 0 - I - 0x011E5E 04:9E4E: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 01 
- D 0 - I - 0x011E66 04:9E56: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 02 
- D 0 - I - 0x011E6E 04:9E5E: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 03 
- D 0 - I - 0x011E76 04:9E66: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 04 
- D 0 - I - 0x011E7E 04:9E6E: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 05 
- D 0 - I - 0x011E86 04:9E76: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 06 
- D 0 - I - 0x011E8E 04:9E7E: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 07 



_off018_04_9E86_01:
;                                              00   01   02   03   04   05   06   07
- D 0 - I - 0x011E96 04:9E86: 32        .byte $32, $39, $3A, $3F, $40, $41, $3C, $0E   ; 00 
- D 0 - I - 0x011E9E 04:9E8E: 33        .byte $33, $31, $32, $39, $3A, $3B, $5B, $1C   ; 01 
- D 0 - I - 0x011EA6 04:9E96: 26        .byte $26, $25, $25, $26, $26, $29, $34, $35   ; 02 
- D 0 - I - 0x011EAE 04:9E9E: 57        .byte $57, $54, $55, $56, $34, $35, $38, $32   ; 03 
- D 0 - I - 0x011EB6 04:9EA6: 58        .byte $58, $59, $34, $35, $38, $31, $32, $33   ; 04 
- D 0 - I - 0x011EBE 04:9EAE: 00        .byte $00, $00, $28, $25, $26, $25, $26, $25   ; 05 
- D 0 - I - 0x011EC6 04:9EB6: 42        .byte $42, $43, $42, $43, $42, $43, $42, $43   ; 06 
- D 0 - I - 0x011ECE 04:9EBE: 46        .byte $46, $47, $46, $47, $46, $47, $46, $47   ; 07 



_off018_04_9EC6_02:
;                                              00   01   02   03   04   05   06   07
- D 0 - I - 0x011ED6 04:9EC6: 25        .byte $25, $26, $27, $18, $1B, $00, $3C, $0E   ; 00 
- D 0 - I - 0x011EDE 04:9ECE: 1A        .byte $1A, $1B, $00, $1C, $1F, $00, $00, $1C   ; 01 
- D 0 - I - 0x011EE6 04:9ED6: 1F        .byte $1F, $1F, $18, $1A, $19, $1B, $5A, $34   ; 02 
- D 0 - I - 0x011EEE 04:9EDE: 58        .byte $58, $59, $1C, $1F, $1F, $1E, $35, $38   ; 03 
- D 0 - I - 0x011EF6 04:9EE6: 19        .byte $19, $1B, $5B, $22, $00, $13, $0E, $30   ; 04 
- D 0 - I - 0x011EFE 04:9EEE: 1F        .byte $1F, $1E, $35, $2B, $58, $24, $25, $25   ; 05 
- D 0 - I - 0x011F06 04:9EF6: 3B        .byte $3B, $28, $25, $27, $00, $00, $54, $55   ; 06 
- D 0 - I - 0x011F0E 04:9EFE: 39        .byte $39, $3A, $00, $18, $19, $1A, $19, $1A   ; 07 



_off018_04_9F06_03:
;                                              00   01   02   03   04   05   06   07
- D 0 - I - 0x011F16 04:9F06: 58        .byte $58, $59, $34, $35, $38, $0E, $32, $33   ; 00 
- D 0 - I - 0x011F1E 04:9F0E: 00        .byte $00, $17, $2C, $3D, $26, $26, $25, $26   ; 01 
- D 0 - I - 0x011F26 04:9F16: 3A        .byte $3A, $3B, $00, $00, $00, $00, $54, $55   ; 02 
- D 0 - I - 0x011F2E 04:9F1E: 3D        .byte $3D, $2D, $16, $00, $58, $18, $19, $1A   ; 03 
- D 0 - I - 0x011F36 04:9F26: 00        .byte $00, $58, $59, $00, $14, $1D, $1F, $1F   ; 04 
- D 0 - I - 0x011F3E 04:9F2E: 3A        .byte $3A, $9A, $9B, $58, $3C, $2D, $16, $5B   ; 05 
- D 0 - I - 0x011F46 04:9F36: 0E        .byte $0E, $39, $3A, $54, $55, $56, $34, $35   ; 06 
- D 0 - I - 0x011F4E 04:9F3E: 25        .byte $25, $26, $27, $00, $00, $00, $13, $32   ; 07 



_off018_04_9F46_04:
;                                              00   01   02   03   04   05   06   07
- D 0 - I - 0x011F56 04:9F46: 58        .byte $58, $59, $14, $3B, $00, $00, $00, $00   ; 00 
- D 0 - I - 0x011F5E 04:9F4E: 00        .byte $00, $58, $20, $39, $3A, $54, $55, $56   ; 01 
- D 0 - I - 0x011F66 04:9F56: 00        .byte $00, $00, $3C, $3E, $27, $22, $00, $5A   ; 02 
- D 0 - I - 0x011F6E 04:9F5E: 58        .byte $58, $59, $21, $57, $17, $2F, $58, $59   ; 03 
- D 0 - I - 0x011F76 04:9F66: 00        .byte $00, $00, $2A, $3A, $3B, $00, $00, $5B   ; 04 
- D 0 - I - 0x011F7E 04:9F6E: 54        .byte $54, $55, $3C, $0E, $39, $16, $59, $34   ; 05 
- D 0 - I - 0x011F86 04:9F76: 00        .byte $00, $58, $59, $1F, $1F, $1E, $35, $38   ; 06 
- D 0 - I - 0x011F8E 04:9F7E: 00        .byte $00, $00, $00, $00, $35, $38, $31, $33   ; 07 



_off018_04_9F86_05:
;                                              00   01   02   03   04   05   06   07
- D 0 - I - 0x011F96 04:9F86: 00        .byte $00, $00, $28, $25, $26, $25, $27, $00   ; 00 
- D 0 - I - 0x011F9E 04:9F8E: 58        .byte $58, $14, $3B, $00, $00, $00, $00, $00   ; 01 
- D 0 - I - 0x011FA6 04:9F96: 00        .byte $00, $24, $29, $00, $00, $21, $54, $55   ; 02 
- D 0 - I - 0x011FAE 04:9F9E: 00        .byte $00, $00, $34, $15, $58, $2E, $16, $59   ; 03 
- D 0 - I - 0x011FB6 04:9FA6: 58        .byte $58, $59, $28, $27, $00, $5B, $34, $35   ; 04 
- D 0 - I - 0x011FBE 04:9FAE: 55        .byte $55, $56, $5B, $00, $22, $00, $13, $37   ; 05 
- D 0 - I - 0x011FC6 04:9FB6: 00        .byte $00, $00, $57, $17, $2F, $59, $24, $25   ; 06 
- D 0 - I - 0x011FCE 04:9FBE: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 07 



_off018_04_9FC6_06:
;                                              00   01   02   03   04   05   06   07
- D 0 - I - 0x011FD6 04:9FC6: 00        .byte $00, $34, $15, $00, $24, $25, $26, $27   ; 00 
- D 0 - I - 0x011FDE 04:9FCE: 00        .byte $00, $28, $27, $58, $59, $00, $58, $59   ; 01 
- D 0 - I - 0x011FE6 04:9FD6: 14        .byte $14, $3B, $00, $00, $00, $00, $00, $00   ; 02 
- D 0 - I - 0x011FEE 04:9FDE: 20        .byte $20, $39, $3A, $00, $21, $00, $58, $59   ; 03 
- D 0 - I - 0x011FF6 04:9FE6: 1C        .byte $1C, $1C, $1F, $57, $2E, $16, $00, $00   ; 04 
- D 0 - I - 0x011FFE 04:9FEE: 00        .byte $00, $00, $00, $58, $59, $34, $15, $00   ; 05 
- D 0 - I - 0x012006 04:9FF6: 54        .byte $54, $55, $56, $34, $35, $38, $23, $59   ; 06 
- D 0 - I - 0x01200E 04:9FFE: 00        .byte $00, $00, $35, $38, $30, $32, $23, $00   ; 07 



_off018_04_A006_07:
;                                              00   01   02   03   04   05   06   07
- - - - - - 0x012016 04:A006: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 00 
- - - - - - 0x01201E 04:A00E: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 01 
- D 1 - I - 0x012026 04:A016: 00        .byte $00, $00, $00, $00, $5A, $5B, $57, $00   ; 02 
- D 1 - I - 0x01202E 04:A01E: 00        .byte $00, $57, $00, $00, $00, $00, $00, $00   ; 03 
- D 1 - I - 0x012036 04:A026: 00        .byte $00, $54, $55, $56, $00, $54, $55, $56   ; 04 
- D 1 - I - 0x01203E 04:A02E: 00        .byte $00, $00, $00, $5A, $00, $00, $34, $15   ; 05 
- D 1 - I - 0x012046 04:A036: 58        .byte $58, $59, $00, $00, $34, $35, $38, $23   ; 06 
- D 1 - I - 0x01204E 04:A03E: 00        .byte $00, $00, $00, $00, $38, $30, $32, $23   ; 07 



_off018_04_A046_08:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x012056 04:A046: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 00 
- D 1 - I - 0x01205E 04:A04E: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 01 
- D 1 - I - 0x012066 04:A056: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 02 
- D 1 - I - 0x01206E 04:A05E: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 03 
- D 1 - I - 0x012076 04:A066: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 04 
- D 1 - I - 0x01207E 04:A06E: 63        .byte $63, $5C, $5C, $5C, $5C, $5C, $5C, $5C   ; 05 
- D 1 - I - 0x012086 04:A076: 66        .byte $66, $64, $64, $68, $69, $64, $66, $64   ; 06 
- D 1 - I - 0x01208E 04:A07E: 67        .byte $67, $67, $67, $6C, $6D, $67, $67, $67   ; 07 



_off018_04_A086_09:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x012096 04:A086: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 00 
- D 1 - I - 0x01209E 04:A08E: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 01 
- D 1 - I - 0x0120A6 04:A096: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 02 
- D 1 - I - 0x0120AE 04:A09E: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 03 
- D 1 - I - 0x0120B6 04:A0A6: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 04 
- D 1 - I - 0x0120BE 04:A0AE: 5D        .byte $5D, $5E, $00, $00, $00, $00, $00, $00   ; 05 
- D 1 - I - 0x0120C6 04:A0B6: 6B        .byte $6B, $7A, $00, $00, $00, $00, $00, $00   ; 06 
- D 1 - I - 0x0120CE 04:A0BE: 6F        .byte $6F, $7B, $00, $00, $00, $00, $00, $00   ; 07 



_off018_04_A0C6_0A:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x0120D6 04:A0C6: 70        .byte $70, $70, $70, $70, $70, $70, $70, $70   ; 00 
- D 1 - I - 0x0120DE 04:A0CE: 67        .byte $67, $65, $65, $67, $65, $67, $65, $67   ; 01 
- D 1 - I - 0x0120E6 04:A0D6: 67        .byte $67, $65, $67, $67, $67, $67, $67, $67   ; 02 
- D 1 - I - 0x0120EE 04:A0DE: 70        .byte $70, $70, $70, $70, $70, $70, $70, $70   ; 03 
- - - - - - 0x0120F6 04:A0E6: 67        .byte $67, $65, $65, $67, $65, $67, $65, $67   ; 04 
- - - - - - 0x0120FE 04:A0EE: 67        .byte $67, $65, $67, $67, $67, $67, $67, $67   ; 05 
- - - - - - 0x012106 04:A0F6: 67        .byte $67, $67, $67, $67, $67, $67, $67, $67   ; 06 
- - - - - - 0x01210E 04:A0FE: 67        .byte $67, $67, $67, $67, $67, $67, $67, $67   ; 07 



_off018_04_A106_0B:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x012116 04:A106: 71        .byte $71, $62, $63, $5C, $5F, $00, $00, $00   ; 00 
- D 1 - I - 0x01211E 04:A10E: 6F        .byte $6F, $6E, $6A, $69, $60, $00, $00, $00   ; 01 
- D 1 - I - 0x012126 04:A116: 6F        .byte $6F, $73, $6C, $6D, $61, $00, $00, $00   ; 02 
- D 1 - I - 0x01212E 04:A11E: 71        .byte $71, $74, $70, $70, $62, $63, $5C, $5D   ; 03 
- D 1 - I - 0x012136 04:A126: 6F        .byte $6F, $73, $67, $67, $6E, $68, $69, $6B   ; 04 
- - - - - - 0x01213E 04:A12E: 6F        .byte $6F, $73, $67, $67, $73, $6C, $6D, $6F   ; 05 
- - - - - - 0x012146 04:A136: 71        .byte $71, $74, $70, $70, $74, $70, $70, $71   ; 06 
- - - - - - 0x01214E 04:A13E: 6F        .byte $6F, $73, $67, $67, $73, $67, $67, $6F   ; 07 



_off018_04_A146_0C:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x012156 04:A146: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 00 
- D 1 - I - 0x01215E 04:A14E: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 01 
- D 1 - I - 0x012166 04:A156: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 02 
- D 1 - I - 0x01216E 04:A15E: 5E        .byte $5E, $00, $00, $00, $00, $00, $00, $00   ; 03 
- D 1 - I - 0x012176 04:A166: 60        .byte $60, $00, $00, $00, $00, $00, $00, $00   ; 04 
- D 1 - I - 0x01217E 04:A16E: 61        .byte $61, $00, $00, $00, $00, $00, $00, $00   ; 05 
- D 1 - I - 0x012186 04:A176: 62        .byte $62, $63, $5C, $5C, $5C, $5F, $00, $00   ; 06 
- D 1 - I - 0x01218E 04:A17E: 6E        .byte $6E, $64, $64, $64, $64, $60, $00, $00   ; 07 



_off018_04_A186_0D:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x012196 04:A186: 73        .byte $73, $67, $67, $67, $67, $61, $00, $00   ; 00 
- D 1 - I - 0x01219E 04:A18E: 74        .byte $74, $70, $70, $70, $70, $62, $63, $5C   ; 01 
- - - - - - 0x0121A6 04:A196: 73        .byte $73, $67, $67, $67, $67, $6E, $68, $69   ; 02 
- - - - - - 0x0121AE 04:A19E: 73        .byte $73, $67, $67, $67, $67, $73, $6C, $6D   ; 03 
- - - - - - 0x0121B6 04:A1A6: 74        .byte $74, $70, $70, $70, $70, $74, $70, $70   ; 04 
- - - - - - 0x0121BE 04:A1AE: 73        .byte $73, $65, $65, $65, $65, $73, $65, $65   ; 05 
- - - - - - 0x0121C6 04:A1B6: 73        .byte $73, $65, $65, $65, $65, $73, $65, $65   ; 06 
- - - - - - 0x0121CE 04:A1BE: 73        .byte $73, $65, $65, $65, $65, $73, $65, $65   ; 07 



_off018_04_A1C6_0E:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x0121D6 04:A1C6: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 00 
- D 1 - I - 0x0121DE 04:A1CE: 5C        .byte $5C, $5C, $5C, $5F, $00, $00, $00, $00   ; 01 
- D 1 - I - 0x0121E6 04:A1D6: 66        .byte $66, $6A, $69, $60, $00, $00, $00, $00   ; 02 
- D 1 - I - 0x0121EE 04:A1DE: 67        .byte $67, $6C, $6D, $61, $00, $00, $00, $00   ; 03 
- D 1 - I - 0x0121F6 04:A1E6: 70        .byte $70, $70, $70, $62, $63, $5C, $5C, $5D   ; 04 
- D 1 - I - 0x0121FE 04:A1EE: 65        .byte $65, $65, $65, $6E, $68, $69, $66, $6B   ; 05 
- D 1 - I - 0x012206 04:A1F6: 70        .byte $70, $70, $70, $72, $6C, $6D, $67, $6F   ; 06 
- D 1 - I - 0x01220E 04:A1FE: 70        .byte $70, $70, $70, $72, $70, $70, $70, $71   ; 07 



_off018_04_A206_0F:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x012216 04:A206: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 00 
- D 1 - I - 0x01221E 04:A20E: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 01 
- D 1 - I - 0x012226 04:A216: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 02 
- D 1 - I - 0x01222E 04:A21E: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 03 
- D 1 - I - 0x012236 04:A226: 5C        .byte $5C, $5C, $5D, $5C, $5C, $5C, $5D, $5C   ; 04 
- D 1 - I - 0x01223E 04:A22E: 68        .byte $68, $69, $6B, $66, $6A, $69, $6B, $66   ; 05 
- D 1 - I - 0x012246 04:A236: 6C        .byte $6C, $6D, $6F, $67, $6C, $6D, $6F, $67   ; 06 
- D 1 - I - 0x01224E 04:A23E: 70        .byte $70, $70, $71, $70, $70, $70, $71, $70   ; 07 



_off018_04_A246_10:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x012256 04:A246: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 00 
- D 1 - I - 0x01225E 04:A24E: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 01 
- D 1 - I - 0x012266 04:A256: 00        .byte $00, $00, $00, $00, $8D, $8E, $8E, $00   ; 02 
- D 1 - I - 0x01226E 04:A25E: 00        .byte $00, $00, $00, $8F, $90, $91, $92, $00   ; 03 
- D 1 - I - 0x012276 04:A266: 5C        .byte $5C, $5C, $5D, $93, $94, $95, $96, $00   ; 04 
- D 1 - I - 0x01227E 04:A26E: 68        .byte $68, $69, $6B, $64, $97, $98, $99, $00   ; 05 
- - - - - - 0x012286 04:A276: 6C        .byte $6C, $6D, $6F, $65, $98, $99, $98, $00   ; 06 
- - - - - - 0x01228E 04:A27E: 70        .byte $70, $70, $71, $70, $99, $98, $99, $00   ; 07 



_off018_04_A286_11:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x012296 04:A286: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 00 
- D 1 - I - 0x01229E 04:A28E: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 01 
- D 1 - I - 0x0122A6 04:A296: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 02 
- D 1 - I - 0x0122AE 04:A29E: 00        .byte $00, $00, $7C, $7D, $7E, $7F, $00, $00   ; 03 
- D 1 - I - 0x0122B6 04:A2A6: 00        .byte $00, $00, $80, $81, $82, $83, $00, $00   ; 04 
- D 1 - I - 0x0122BE 04:A2AE: 00        .byte $00, $00, $84, $85, $85, $86, $00, $00   ; 05 
- D 1 - I - 0x0122C6 04:A2B6: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 06 
- D 1 - I - 0x0122CE 04:A2BE: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 07 



_off006_0x0122D6_04_area_5:
; 00 
- D 1 - I - 0x0122D6 04:A2C6: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x0122DA 04:A2CA: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x0122DE 04:A2CE: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x0122E2 04:A2D2: 00        .byte $00, $00, $00, $00   ; 
; 01 
- D 1 - I - 0x0122E6 04:A2D6: 28        .byte $28, $6F, $70, $5C   ; 
- D 1 - I - 0x0122EA 04:A2DA: 71        .byte $71, $82, $83, $74   ; 
- D 1 - I - 0x0122EE 04:A2DE: 75        .byte $75, $84, $85, $78   ; 
- D 1 - I - 0x0122F2 04:A2E2: 63        .byte $63, $86, $87, $66   ; 
; 02 
- D 1 - I - 0x0122F6 04:A2E6: 28        .byte $28, $6F, $70, $5C   ; 
- D 1 - I - 0x0122FA 04:A2EA: 71        .byte $71, $82, $83, $74   ; 
- D 1 - I - 0x0122FE 04:A2EE: 75        .byte $75, $88, $89, $78   ; 
- D 1 - I - 0x012302 04:A2F2: 8A        .byte $8A, $8B, $7A, $66   ; 
; 03 
- D 1 - I - 0x012306 04:A2F6: 28        .byte $28, $6F, $70, $5C   ; 
- D 1 - I - 0x01230A 04:A2FA: 71        .byte $71, $8C, $83, $74   ; 
- D 1 - I - 0x01230E 04:A2FE: 8D        .byte $8D, $8E, $8F, $78   ; 
- D 1 - I - 0x012312 04:A302: 90        .byte $90, $79, $7A, $66   ; 
; 04 
- D 1 - I - 0x012316 04:A306: 28        .byte $28, $6F, $70, $5C   ; 
- D 1 - I - 0x01231A 04:A30A: 91        .byte $91, $92, $83, $74   ; 
- D 1 - I - 0x01231E 04:A30E: 93        .byte $93, $94, $8F, $78   ; 
- D 1 - I - 0x012322 04:A312: 63        .byte $63, $79, $7A, $66   ; 
; 05 
- D 1 - I - 0x012326 04:A316: 95        .byte $95, $6F, $70, $5C   ; 
- D 1 - I - 0x01232A 04:A31A: 96        .byte $96, $97, $83, $74   ; 
- D 1 - I - 0x01232E 04:A31E: 75        .byte $75, $98, $8F, $78   ; 
- D 1 - I - 0x012332 04:A322: 63        .byte $63, $79, $7A, $66   ; 
; 06 
- D 1 - I - 0x012336 04:A326: E3        .byte $E3, $E4, $70, $5C   ; 
- D 1 - I - 0x01233A 04:A32A: 71        .byte $71, $E5, $E6, $74   ; 
- D 1 - I - 0x01233E 04:A32E: 75        .byte $75, $E7, $8F, $78   ; 
- D 1 - I - 0x012342 04:A332: 63        .byte $63, $79, $7A, $66   ; 
; 07 
- D 1 - I - 0x012346 04:A336: 28        .byte $28, $E8, $E9, $5C   ; 
- D 1 - I - 0x01234A 04:A33A: 71        .byte $71, $EA, $EB, $74   ; 
- D 1 - I - 0x01234E 04:A33E: 75        .byte $75, $E7, $8F, $78   ; 
- D 1 - I - 0x012352 04:A342: 63        .byte $63, $79, $7A, $66   ; 
; 08 
- D 1 - I - 0x012356 04:A346: 28        .byte $28, $6F, $EC, $ED   ; 
- D 1 - I - 0x01235A 04:A34A: 71        .byte $71, $EE, $EF, $74   ; 
- D 1 - I - 0x01235E 04:A34E: 75        .byte $75, $E7, $8F, $78   ; 
- D 1 - I - 0x012362 04:A352: 63        .byte $63, $79, $7A, $66   ; 
; 09 
- D 1 - I - 0x012366 04:A356: 28        .byte $28, $6F, $70, $F0   ; 
- D 1 - I - 0x01236A 04:A35A: 71        .byte $71, $82, $F1, $F2   ; 
- D 1 - I - 0x01236E 04:A35E: 75        .byte $75, $E7, $F3, $78   ; 
- D 1 - I - 0x012372 04:A362: 63        .byte $63, $79, $7A, $66   ; 
; 0A 
- D 1 - I - 0x012376 04:A366: 28        .byte $28, $6F, $70, $5C   ; 
- D 1 - I - 0x01237A 04:A36A: 71        .byte $71, $82, $F4, $F5   ; 
- D 1 - I - 0x01237E 04:A36E: 75        .byte $75, $E7, $F6, $F7   ; 
- D 1 - I - 0x012382 04:A372: 63        .byte $63, $79, $7A, $66   ; 
; 0B 
- D 1 - I - 0x012386 04:A376: 28        .byte $28, $6F, $70, $5C   ; 
- D 1 - I - 0x01238A 04:A37A: 71        .byte $71, $82, $F8, $74   ; 
- D 1 - I - 0x01238E 04:A37E: 75        .byte $75, $E7, $F9, $FA   ; 
- D 1 - I - 0x012392 04:A382: 63        .byte $63, $79, $7A, $FB   ; 
; 0C 
- D 1 - I - 0x012396 04:A386: 28        .byte $28, $6F, $70, $5C   ; 
- D 1 - I - 0x01239A 04:A38A: 71        .byte $71, $82, $83, $74   ; 
- D 1 - I - 0x01239E 04:A38E: 75        .byte $75, $FC, $FD, $78   ; 
- D 1 - I - 0x0123A2 04:A392: 63        .byte $63, $79, $FE, $FF   ; 
; 0D 
- D 1 - I - 0x0123A6 04:A396: 28        .byte $28, $6F, $70, $5C   ; 
- D 1 - I - 0x0123AA 04:A39A: 71        .byte $71, $7B, $7C, $74   ; 
- D 1 - I - 0x0123AE 04:A39E: 75        .byte $75, $7C, $7D, $78   ; 
- D 1 - I - 0x0123B2 04:A3A2: 63        .byte $63, $79, $7A, $66   ; 
; 0E 
- D 1 - I - 0x0123B6 04:A3A6: 28        .byte $28, $5B, $29, $5C   ; 
- D 1 - I - 0x0123BA 04:A3AA: 5D        .byte $5D, $5E, $5F, $61   ; 
- D 1 - I - 0x0123BE 04:A3AE: 2A        .byte $2A, $60, $2B, $62   ; 
- D 1 - I - 0x0123C2 04:A3B2: 63        .byte $63, $64, $65, $66   ; 
; 0F 
- D 1 - I - 0x0123C6 04:A3B6: 28        .byte $28, $5B, $29, $5C   ; 
- D 1 - I - 0x0123CA 04:A3BA: 5D        .byte $5D, $67, $68, $61   ; 
- D 1 - I - 0x0123CE 04:A3BE: 2A        .byte $2A, $69, $6A, $62   ; 
- D 1 - I - 0x0123D2 04:A3C2: 63        .byte $63, $64, $65, $66   ; 
; 10 
- D 1 - I - 0x0123D6 04:A3C6: 28        .byte $28, $5B, $29, $5C   ; 
- D 1 - I - 0x0123DA 04:A3CA: 5D        .byte $5D, $7E, $7F, $61   ; 
- D 1 - I - 0x0123DE 04:A3CE: 2A        .byte $2A, $80, $81, $62   ; 
- D 1 - I - 0x0123E2 04:A3D2: 63        .byte $63, $64, $65, $66   ; 
; 11 
- D 1 - I - 0x0123E6 04:A3D6: 28        .byte $28, $5B, $29, $5C   ; 
- D 1 - I - 0x0123EA 04:A3DA: 5D        .byte $5D, $6B, $6C, $61   ; 
- D 1 - I - 0x0123EE 04:A3DE: 2A        .byte $2A, $6D, $6E, $62   ; 
- D 1 - I - 0x0123F2 04:A3E2: 63        .byte $63, $64, $65, $66   ; 
; 12 
- D 1 - I - 0x0123F6 04:A3E6: 28        .byte $28, $6F, $70, $5C   ; 
- D 1 - I - 0x0123FA 04:A3EA: 71        .byte $71, $72, $73, $74   ; 
- D 1 - I - 0x0123FE 04:A3EE: 75        .byte $75, $76, $77, $78   ; 
- D 1 - I - 0x012402 04:A3F2: 63        .byte $63, $79, $7A, $66   ; 
; 13 
- D 1 - I - 0x012406 04:A3F6: 36        .byte $36, $53, $37, $0E   ; 
- D 1 - I - 0x01240A 04:A3FA: 0F        .byte $0F, $54, $0D, $05   ; 
- D 1 - I - 0x01240E 04:A3FE: 21        .byte $21, $4A, $0B, $51   ; 
- D 1 - I - 0x012412 04:A402: 26        .byte $26, $05, $04, $0C   ; 
; 14 
- D 1 - I - 0x012416 04:A406: 3D        .byte $3D, $55, $00, $00   ; 
- D 1 - I - 0x01241A 04:A40A: 39        .byte $39, $A0, $3E, $55   ; 
- D 1 - I - 0x01241E 04:A40E: 3B        .byte $3B, $39, $3A, $36   ; 
- D 1 - I - 0x012422 04:A412: A4        .byte $A4, $9F, $A1, $39   ; 
; 15 
- D 1 - I - 0x012426 04:A416: 00        .byte $00, $00, $38, $55   ; 
- D 1 - I - 0x01242A 04:A41A: 38        .byte $38, $2D, $52, $0F   ; 
- D 1 - I - 0x01242E 04:A41E: 36        .byte $36, $53, $37, $58   ; 
- D 1 - I - 0x012432 04:A422: 0F        .byte $0F, $54, $0D, $59   ; 
; 16 
- D 1 - I - 0x012436 04:A426: 3E        .byte $3E, $55, $00, $00   ; 
- D 1 - I - 0x01243A 04:A42A: 39        .byte $39, $A0, $3E, $55   ; 
- D 1 - I - 0x01243E 04:A42E: 3C        .byte $3C, $39, $3A, $A0   ; 
- D 1 - I - 0x012442 04:A432: A4        .byte $A4, $9F, $A1, $39   ; 
; 17 
- D 1 - I - 0x012446 04:A436: 00        .byte $00, $00, $38, $2D   ; 
- D 1 - I - 0x01244A 04:A43A: 38        .byte $38, $2D, $52, $0F   ; 
- D 1 - I - 0x01244E 04:A43E: 36        .byte $36, $53, $37, $0E   ; 
- D 1 - I - 0x012452 04:A442: 0F        .byte $0F, $54, $0D, $59   ; 
; 18 
- D 1 - I - 0x012456 04:A446: 2D        .byte $2D, $A2, $2C, $A2   ; 
- D 1 - I - 0x01245A 04:A44A: A3        .byte $A3, $A3, $A3, $1F   ; 
- D 1 - I - 0x01245E 04:A44E: 27        .byte $27, $03, $0E, $07   ; 
- D 1 - I - 0x012462 04:A452: 26        .byte $26, $50, $07, $4A   ; 
; 19 
- D 1 - I - 0x012466 04:A456: 2C        .byte $2C, $A2, $2C, $A2   ; 
- D 1 - I - 0x01246A 04:A45A: A3        .byte $A3, $A3, $A3, $1F   ; 
- D 1 - I - 0x01246E 04:A45E: 0D        .byte $0D, $03, $0E, $07   ; 
- D 1 - I - 0x012472 04:A462: 0A        .byte $0A, $50, $07, $4A   ; 
; 1A 
- D 1 - I - 0x012476 04:A466: 2C        .byte $2C, $A2, $2C, $A2   ; 
- D 1 - I - 0x01247A 04:A46A: 52        .byte $52, $A3, $A3, $1F   ; 
- D 1 - I - 0x01247E 04:A46E: 0D        .byte $0D, $1E, $04, $19   ; 
- D 1 - I - 0x012482 04:A472: 0A        .byte $0A, $1A, $07, $4A   ; 
; 1B 
- D 1 - I - 0x012486 04:A476: 2C        .byte $2C, $A2, $2C, $3E   ; 
- D 1 - I - 0x01248A 04:A47A: 52        .byte $52, $A3, $A3, $1F   ; 
- D 1 - I - 0x01248E 04:A47E: 0D        .byte $0D, $1E, $04, $19   ; 
- D 1 - I - 0x012492 04:A482: 0A        .byte $0A, $1A, $07, $4A   ; 
; 1C 
- D 1 - I - 0x012496 04:A486: 22        .byte $22, $24, $25, $20   ; 
- D 1 - I - 0x01249A 04:A48A: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01249E 04:A48E: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x0124A2 04:A492: 00        .byte $00, $00, $00, $00   ; 
; 1D 
- D 1 - I - 0x0124A6 04:A496: 22        .byte $22, $24, $25, $20   ; 
- D 1 - I - 0x0124AA 04:A49A: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x0124AE 04:A49E: 3E        .byte $3E, $55, $00, $00   ; 
- D 1 - I - 0x0124B2 04:A4A2: 39        .byte $39, $A0, $3E, $55   ; 
; 1E 
- D 1 - I - 0x0124B6 04:A4A6: 23        .byte $23, $06, $25, $20   ; 
- D 1 - I - 0x0124BA 04:A4AA: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x0124BE 04:A4AE: 00        .byte $00, $00, $38, $2D   ; 
- D 1 - I - 0x0124C2 04:A4B2: 38        .byte $38, $2D, $52, $0F   ; 
; 1F 
- D 1 - I - 0x0124C6 04:A4B6: 23        .byte $23, $24, $25, $20   ; 
- D 1 - I - 0x0124CA 04:A4BA: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x0124CE 04:A4BE: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x0124D2 04:A4C2: 00        .byte $00, $00, $00, $00   ; 
; 20 
- D 1 - I - 0x0124D6 04:A4C6: 21        .byte $21, $4A, $0B, $51   ; 
- D 1 - I - 0x0124DA 04:A4CA: 26        .byte $26, $9C, $04, $0C   ; 
- D 1 - I - 0x0124DE 04:A4CE: 26        .byte $26, $4F, $03, $4C   ; 
- D 1 - I - 0x0124E2 04:A4D2: 22        .byte $22, $0A, $50, $07   ; 
; 21 
- D 1 - I - 0x0124E6 04:A4D6: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x0124EA 04:A4DA: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x0124EE 04:A4DE: 3D        .byte $3D, $55, $00, $00   ; 
- D 1 - I - 0x0124F2 04:A4E2: 39        .byte $39, $A0, $3E, $55   ; 
; 22 
- D 1 - I - 0x0124F6 04:A4E6: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x0124FA 04:A4EA: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x0124FE 04:A4EE: 00        .byte $00, $00, $38, $55   ; 
- D 1 - I - 0x012502 04:A4F2: 38        .byte $38, $2D, $52, $0F   ; 
; 23 
- D 1 - I - 0x012506 04:A4F6: 03        .byte $03, $4C, $0C, $56   ; 
- D 1 - I - 0x01250A 04:A4FA: 05        .byte $05, $07, $4C, $59   ; 
- D 1 - I - 0x01250E 04:A4FE: 01        .byte $01, $4A, $05, $56   ; 
- D 1 - I - 0x012512 04:A502: 04        .byte $04, $05, $06, $57   ; 
; 24 
- D 1 - I - 0x012516 04:A506: 21        .byte $21, $4A, $03, $4C   ; 
- D 1 - I - 0x01251A 04:A50A: 22        .byte $22, $0A, $50, $07   ; 
- D 1 - I - 0x01251E 04:A50E: 00        .byte $00, $23, $23, $25   ; 
- D 1 - I - 0x012522 04:A512: 00        .byte $00, $00, $00, $00   ; 
; 25 
- D 1 - I - 0x012526 04:A516: 0B        .byte $0B, $51, $08, $05   ; 
- D 1 - I - 0x01252A 04:A51A: 04        .byte $04, $05, $4F, $03   ; 
- D 1 - I - 0x01252E 04:A51E: 22        .byte $22, $23, $24, $25   ; 
- D 1 - I - 0x012532 04:A522: 00        .byte $00, $00, $00, $00   ; 
; 26 
- D 1 - I - 0x012536 04:A526: 09        .byte $09, $03, $1D, $05   ; 
- D 1 - I - 0x01253A 04:A52A: 0A        .byte $0A, $50, $07, $4A   ; 
- D 1 - I - 0x01253E 04:A52E: 23        .byte $23, $24, $25, $20   ; 
- D 1 - I - 0x012542 04:A532: 00        .byte $00, $00, $00, $00   ; 
; 27 
- D 1 - I - 0x012546 04:A536: 01        .byte $01, $4A, $09, $56   ; 
- D 1 - I - 0x01254A 04:A53A: 04        .byte $04, $05, $0A, $57   ; 
- D 1 - I - 0x01254E 04:A53E: 23        .byte $23, $25, $20, $00   ; 
- D 1 - I - 0x012552 04:A542: 00        .byte $00, $00, $00, $00   ; 
; 28 
- D 1 - I - 0x012556 04:A546: 36        .byte $36, $53, $37, $0E   ; 
- D 1 - I - 0x01255A 04:A54A: 0F        .byte $0F, $54, $0E, $5A   ; 
- D 1 - I - 0x01255E 04:A54E: 20        .byte $20, $24, $23, $25   ; 
- D 1 - I - 0x012562 04:A552: 00        .byte $00, $00, $00, $00   ; 
; 29 
- D 1 - I - 0x012566 04:A556: 3C        .byte $3C, $39, $3A, $36   ; 
- D 1 - I - 0x01256A 04:A55A: 5A        .byte $5A, $1E, $A1, $39   ; 
- D 1 - I - 0x01256E 04:A55E: 24        .byte $24, $23, $24, $25   ; 
- D 1 - I - 0x012572 04:A562: 00        .byte $00, $00, $00, $00   ; 
; 2A 
- D 1 - I - 0x012576 04:A566: 3B        .byte $3B, $39, $3A, $36   ; 
- D 1 - I - 0x01257A 04:A56A: A4        .byte $A4, $9F, $A1, $39   ; 
- D 1 - I - 0x01257E 04:A56E: 26        .byte $26, $4C, $0C, $4F   ; 
- D 1 - I - 0x012582 04:A572: 22        .byte $22, $07, $4C, $1A   ; 
; 2B 
- D 1 - I - 0x012586 04:A576: 36        .byte $36, $53, $37, $58   ; 
- D 1 - I - 0x01258A 04:A57A: 0F        .byte $0F, $54, $0D, $25   ; 
- D 1 - I - 0x01258E 04:A57E: 1A        .byte $1A, $9B, $0B, $56   ; 
- D 1 - I - 0x012592 04:A582: 04        .byte $04, $1A, $04, $57   ; 
; 2C 
- D 1 - I - 0x012596 04:A586: 36        .byte $36, $53, $37, $0E   ; 
- D 1 - I - 0x01259A 04:A58A: 0F        .byte $0F, $54, $0D, $05   ; 
- D 1 - I - 0x01259E 04:A58E: 1C        .byte $1C, $9D, $0A, $50   ; 
- D 1 - I - 0x0125A2 04:A592: 25        .byte $25, $20, $23, $24   ; 
; 2D 
- D 1 - I - 0x0125A6 04:A596: 3C        .byte $3C, $39, $3A, $36   ; 
- D 1 - I - 0x0125AA 04:A59A: 05        .byte $05, $9F, $A1, $39   ; 
- D 1 - I - 0x0125AE 04:A59E: 0A        .byte $0A, $50, $07, $4A   ; 
- D 1 - I - 0x0125B2 04:A5A2: 23        .byte $23, $24, $25, $20   ; 
; 2E 
- D 1 - I - 0x0125B6 04:A5A6: 3B        .byte $3B, $39, $3A, $36   ; 
- D 1 - I - 0x0125BA 04:A5AA: A4        .byte $A4, $1E, $A1, $39   ; 
- D 1 - I - 0x0125BE 04:A5AE: 26        .byte $26, $05, $0C, $4F   ; 
- D 1 - I - 0x0125C2 04:A5B2: 22        .byte $22, $23, $24, $25   ; 
; 2F 
- D 1 - I - 0x0125C6 04:A5B6: 36        .byte $36, $53, $37, $58   ; 
- D 1 - I - 0x0125CA 04:A5BA: 0F        .byte $0F, $54, $0D, $25   ; 
- D 1 - I - 0x0125CE 04:A5BE: 1A        .byte $1A, $07, $05, $56   ; 
- D 1 - I - 0x0125D2 04:A5C2: 23        .byte $23, $24, $23, $57   ; 
; 30 
- D 1 - I - 0x0125D6 04:A5C6: 08        .byte $08, $4D, $09, $03   ; 
- D 1 - I - 0x0125DA 04:A5CA: 4F        .byte $4F, $03, $0A, $50   ; 
- D 1 - I - 0x0125DE 04:A5CE: 1A        .byte $1A, $9A, $1B, $9B   ; 
- D 1 - I - 0x0125E2 04:A5D2: 9D        .byte $9D, $9E, $1C, $9D   ; 
; 31 
- D 1 - I - 0x0125E6 04:A5D6: 01        .byte $01, $4A, $19, $99   ; 
- D 1 - I - 0x0125EA 04:A5DA: 04        .byte $04, $05, $06, $9C   ; 
- D 1 - I - 0x0125EE 04:A5DE: 08        .byte $08, $4D, $09, $03   ; 
- D 1 - I - 0x0125F2 04:A5E2: 4F        .byte $4F, $03, $0A, $50   ; 
; 32 
- D 1 - I - 0x0125F6 04:A5E6: 02        .byte $02, $4B, $03, $4C   ; 
- D 1 - I - 0x0125FA 04:A5EA: 4D        .byte $4D, $4E, $05, $07   ; 
- D 1 - I - 0x0125FE 04:A5EE: 1D        .byte $1D, $05, $01, $4A   ; 
- D 1 - I - 0x012602 04:A5F2: 07        .byte $07, $4A, $04, $05   ; 
; 33 
- D 1 - I - 0x012606 04:A5F6: 1A        .byte $1A, $9A, $1B, $9B   ; 
- D 1 - I - 0x01260A 04:A5FA: 9D        .byte $9D, $9E, $1C, $9D   ; 
- D 1 - I - 0x01260E 04:A5FE: 19        .byte $19, $99, $02, $4B   ; 
- D 1 - I - 0x012612 04:A602: 06        .byte $06, $9C, $05, $4E   ; 
; 34 
- D 1 - I - 0x012616 04:A606: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01261A 04:A60A: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01261E 04:A60E: 00        .byte $00, $00, $38, $2D   ; 
- D 1 - I - 0x012622 04:A612: 38        .byte $38, $2D, $52, $0F   ; 
; 35 
- D 1 - I - 0x012626 04:A616: 00        .byte $00, $00, $38, $2D   ; 
- D 1 - I - 0x01262A 04:A61A: 38        .byte $38, $2D, $52, $0F   ; 
- D 1 - I - 0x01262E 04:A61E: 36        .byte $36, $53, $37, $0E   ; 
- D 1 - I - 0x012632 04:A622: 0F        .byte $0F, $54, $0D, $05   ; 
; 36 
- - - - - - 0x012636 04:A626: 0B        .byte $0B, $51, $08, $4D   ; 
- - - - - - 0x01263A 04:A62A: 04        .byte $04, $0C, $4F, $03   ; 
- - - - - - 0x01263E 04:A62E: 03        .byte $03, $4C, $1A, $9A   ; 
- - - - - - 0x012642 04:A632: 05        .byte $05, $07, $9D, $9E   ; 
; 37 
- D 1 - I - 0x012646 04:A636: 09        .byte $09, $03, $1D, $05   ; 
- D 1 - I - 0x01264A 04:A63A: 0A        .byte $0A, $50, $07, $4A   ; 
- D 1 - I - 0x01264E 04:A63E: 1B        .byte $1B, $9B, $0B, $51   ; 
- D 1 - I - 0x012652 04:A642: 1C        .byte $1C, $9D, $04, $0C   ; 
; 38 
- D 1 - I - 0x012656 04:A646: 36        .byte $36, $53, $37, $0E   ; 
- D 1 - I - 0x01265A 04:A64A: 0F        .byte $0F, $54, $0E, $05   ; 
- D 1 - I - 0x01265E 04:A64E: 0B        .byte $0B, $4A, $0B, $51   ; 
- D 1 - I - 0x012662 04:A652: 04        .byte $04, $0C, $04, $0C   ; 
; 39 
- D 1 - I - 0x012666 04:A656: 3C        .byte $3C, $39, $3A, $36   ; 
- D 1 - I - 0x01266A 04:A65A: 05        .byte $05, $9F, $A1, $39   ; 
- D 1 - I - 0x01266E 04:A65E: 03        .byte $03, $4C, $1A, $05   ; 
- D 1 - I - 0x012672 04:A662: 05        .byte $05, $07, $9D, $9E   ; 
; 3A 
- D 1 - I - 0x012676 04:A666: 3E        .byte $3E, $55, $00, $00   ; 
- D 1 - I - 0x01267A 04:A66A: 39        .byte $39, $A0, $3E, $55   ; 
- D 1 - I - 0x01267E 04:A66E: 3C        .byte $3C, $39, $3A, $36   ; 
- D 1 - I - 0x012682 04:A672: 05        .byte $05, $9F, $A1, $39   ; 
; 3B 
- D 1 - I - 0x012686 04:A676: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01268A 04:A67A: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01268E 04:A67E: 3E        .byte $3E, $55, $00, $00   ; 
- D 1 - I - 0x012692 04:A682: 39        .byte $39, $A0, $3E, $55   ; 
; 3C 
- D 1 - I - 0x012696 04:A686: 26        .byte $26, $0B, $03, $4C   ; 
- D 1 - I - 0x01269A 04:A68A: 21        .byte $21, $04, $50, $07   ; 
- D 1 - I - 0x01269E 04:A68E: 22        .byte $22, $08, $05, $06   ; 
- D 1 - I - 0x0126A2 04:A692: 00        .byte $00, $22, $23, $4A   ; 
; 3D 
- D 1 - I - 0x0126A6 04:A696: 0B        .byte $0B, $51, $08, $4D   ; 
- D 1 - I - 0x0126AA 04:A69A: 04        .byte $04, $0C, $4F, $03   ; 
- D 1 - I - 0x0126AE 04:A69E: 03        .byte $03, $02, $1A, $05   ; 
- D 1 - I - 0x0126B2 04:A6A2: 20        .byte $20, $23, $25, $20   ; 
; 3E 
- D 1 - I - 0x0126B6 04:A6A6: 09        .byte $09, $03, $1D, $05   ; 
- D 1 - I - 0x0126BA 04:A6AA: 0A        .byte $0A, $50, $07, $4A   ; 
- D 1 - I - 0x0126BE 04:A6AE: 1B        .byte $1B, $05, $06, $51   ; 
- D 1 - I - 0x0126C2 04:A6B2: 24        .byte $24, $23, $25, $20   ; 
; 3F 
- D 1 - I - 0x0126C6 04:A6B6: 27        .byte $27, $03, $0E, $07   ; 
- D 1 - I - 0x0126CA 04:A6BA: 00        .byte $00, $20, $23, $24   ; 
- D 1 - I - 0x0126CE 04:A6BE: 3E        .byte $3E, $55, $00, $22   ; 
- D 1 - I - 0x0126D2 04:A6C2: 39        .byte $39, $A0, $3E, $55   ; 
; 40 
- D 1 - I - 0x0126D6 04:A6C6: 0D        .byte $0D, $1E, $04, $19   ; 
- D 1 - I - 0x0126DA 04:A6CA: 0A        .byte $0A, $1A, $07, $4A   ; 
- D 1 - I - 0x0126DE 04:A6CE: 24        .byte $24, $06, $25, $20   ; 
- D 1 - I - 0x0126E2 04:A6D2: 00        .byte $00, $00, $00, $00   ; 
; 41 
- D 1 - I - 0x0126E6 04:A6D6: 0D        .byte $0D, $03, $0E, $07   ; 
- D 1 - I - 0x0126EA 04:A6DA: 0A        .byte $0A, $50, $07, $4A   ; 
- D 1 - I - 0x0126EE 04:A6DE: 23        .byte $23, $24, $25, $20   ; 
- D 1 - I - 0x0126F2 04:A6E2: 00        .byte $00, $00, $00, $00   ; 
; 42 
- D 1 - I - 0x0126F6 04:A6E6: 35        .byte $35, $A2, $35, $A2   ; 
- D 1 - I - 0x0126FA 04:A6EA: A3        .byte $A3, $A3, $A3, $1F   ; 
- D 1 - I - 0x0126FE 04:A6EE: 33        .byte $33, $03, $34, $07   ; 
- D 1 - I - 0x012702 04:A6F2: 0A        .byte $0A, $50, $07, $4A   ; 
; 43 
- D 1 - I - 0x012706 04:A6F6: 35        .byte $35, $A2, $35, $A2   ; 
- D 1 - I - 0x01270A 04:A6FA: 52        .byte $52, $A3, $A3, $1F   ; 
- D 1 - I - 0x01270E 04:A6FE: 33        .byte $33, $1E, $2F, $19   ; 
- D 1 - I - 0x012712 04:A702: 0A        .byte $0A, $1A, $07, $4A   ; 
; 44 
- D 1 - I - 0x012716 04:A706: B6        .byte $B6, $B7, $B7, $B8   ; 
- D 1 - I - 0x01271A 04:A70A: A3        .byte $A3, $A3, $A3, $1F   ; 
- - - - - - 0x01271E 04:A70E: 27        .byte $27, $03, $0E, $07   ; 
- - - - - - 0x012722 04:A712: 26        .byte $26, $50, $07, $4A   ; 
; 45 
- D 1 - I - 0x012726 04:A716: B6        .byte $B6, $A5, $A5, $A6   ; 
- D 1 - I - 0x01272A 04:A71A: A3        .byte $A3, $A3, $A3, $1F   ; 
- - - - - - 0x01272E 04:A71E: 27        .byte $27, $03, $0E, $07   ; 
- - - - - - 0x012732 04:A722: 26        .byte $26, $50, $07, $4A   ; 
; 46 
- D 1 - I - 0x012736 04:A726: 30        .byte $30, $4B, $2F, $4C   ; 
- D 1 - I - 0x01273A 04:A72A: 4D        .byte $4D, $4E, $05, $07   ; 
- - - - - - 0x01273E 04:A72E: 31        .byte $31, $05, $2E, $4A   ; 
- - - - - - 0x012742 04:A732: 07        .byte $07, $4A, $04, $05   ; 
; 47 
- D 1 - I - 0x012746 04:A736: 32        .byte $32, $03, $31, $05   ; 
- D 1 - I - 0x01274A 04:A73A: 0A        .byte $0A, $50, $07, $4A   ; 
- - - - - - 0x01274E 04:A73E: 31        .byte $31, $9B, $32, $51   ; 
- - - - - - 0x012752 04:A742: 1C        .byte $1C, $9D, $04, $0C   ; 
; 48 
- D 1 - I - 0x012756 04:A746: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01275A 04:A74A: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01275E 04:A74E: 00        .byte $00, $C0, $C1, $A9   ; 
- D 1 - I - 0x012762 04:A752: C2        .byte $C2, $C3, $C4, $AD   ; 
; 49 
- D 1 - I - 0x012766 04:A756: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01276A 04:A75A: B9        .byte $B9, $BA, $A8, $A9   ; 
- D 1 - I - 0x01276E 04:A75E: BB        .byte $BB, $BC, $BD, $AD   ; 
- D 1 - I - 0x012772 04:A762: BE        .byte $BE, $BF, $B0, $B1   ; 
; 4A 
- D 1 - I - 0x012776 04:A766: 00        .byte $00, $A7, $A8, $A9   ; 
- D 1 - I - 0x01277A 04:A76A: AA        .byte $AA, $AB, $AC, $AD   ; 
- D 1 - I - 0x01277E 04:A76E: AE        .byte $AE, $AF, $B0, $B1   ; 
- D 1 - I - 0x012782 04:A772: B2        .byte $B2, $B3, $B4, $B5   ; 
; 4B 
- D 1 - I - 0x012786 04:A776: B9        .byte $B9, $BA, $A8, $A9   ; 
- D 1 - I - 0x01278A 04:A77A: BB        .byte $BB, $BC, $BD, $AD   ; 
- D 1 - I - 0x01278E 04:A77E: BE        .byte $BE, $BF, $B0, $B1   ; 
- D 1 - I - 0x012792 04:A782: B2        .byte $B2, $B3, $B4, $B5   ; 
; 4C 
- D 1 - I - 0x012796 04:A786: 00        .byte $00, $C0, $C1, $A9   ; 
- D 1 - I - 0x01279A 04:A78A: C2        .byte $C2, $C3, $C4, $AD   ; 
- D 1 - I - 0x01279E 04:A78E: BE        .byte $BE, $BF, $B0, $B1   ; 
- D 1 - I - 0x0127A2 04:A792: B2        .byte $B2, $B3, $B4, $B5   ; 
; 4D 
- D 1 - I - 0x0127A6 04:A796: D6        .byte $D6, $B7, $B7, $D5   ; 
- D 1 - I - 0x0127AA 04:A79A: 52        .byte $52, $A3, $A3, $1F   ; 
- D 1 - I - 0x0127AE 04:A79E: 0D        .byte $0D, $1E, $04, $19   ; 
- D 1 - I - 0x0127B2 04:A7A2: 0A        .byte $0A, $1A, $07, $4A   ; 
; 4E 
- D 1 - I - 0x0127B6 04:A7A6: C5        .byte $C5, $A5, $A5, $D5   ; 
- D 1 - I - 0x0127BA 04:A7AA: 52        .byte $52, $A3, $A3, $1F   ; 
- D 1 - I - 0x0127BE 04:A7AE: 0D        .byte $0D, $1E, $04, $19   ; 
- D 1 - I - 0x0127C2 04:A7B2: 0A        .byte $0A, $1A, $07, $4A   ; 
; 4F 
- D 1 - I - 0x0127C6 04:A7B6: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x0127CA 04:A7BA: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x0127CE 04:A7BE: C8        .byte $C8, $DF, $DE, $00   ; 
- D 1 - I - 0x0127D2 04:A7C2: CC        .byte $CC, $E2, $E1, $E0   ; 
; 50 
- D 1 - I - 0x0127D6 04:A7C6: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x0127DA 04:A7CA: C8        .byte $C8, $C7, $D8, $D7   ; 
- D 1 - I - 0x0127DE 04:A7CE: CC        .byte $CC, $DB, $DA, $D9   ; 
- D 1 - I - 0x0127E2 04:A7D2: D0        .byte $D0, $CF, $DD, $DC   ; 
; 51 
- D 1 - I - 0x0127E6 04:A7D6: C8        .byte $C8, $C7, $C6, $00   ; 
- D 1 - I - 0x0127EA 04:A7DA: CC        .byte $CC, $CB, $CA, $C9   ; 
- D 1 - I - 0x0127EE 04:A7DE: D0        .byte $D0, $CF, $CE, $CD   ; 
- D 1 - I - 0x0127F2 04:A7E2: D4        .byte $D4, $D3, $D2, $D1   ; 
; 52 
- D 1 - I - 0x0127F6 04:A7E6: C8        .byte $C8, $C7, $D8, $D7   ; 
- D 1 - I - 0x0127FA 04:A7EA: CC        .byte $CC, $DB, $DA, $D9   ; 
- D 1 - I - 0x0127FE 04:A7EE: D0        .byte $D0, $CF, $DD, $DC   ; 
- D 1 - I - 0x012802 04:A7F2: D4        .byte $D4, $D3, $D2, $D1   ; 
; 53 
- D 1 - I - 0x012806 04:A7F6: C8        .byte $C8, $DF, $DE, $00   ; 
- D 1 - I - 0x01280A 04:A7FA: CC        .byte $CC, $E2, $E1, $E0   ; 
- D 1 - I - 0x01280E 04:A7FE: D0        .byte $D0, $CF, $DD, $DC   ; 
- D 1 - I - 0x012812 04:A802: D4        .byte $D4, $D3, $D2, $D1   ; 
; 54 
- D 1 - I - 0x012816 04:A806: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01281A 04:A80A: 00        .byte $00, $00, $13, $12   ; 
- D 1 - I - 0x01281E 04:A80E: 13        .byte $13, $16, $14, $14   ; 
- D 1 - I - 0x012822 04:A812: 10        .byte $10, $11, $15, $18   ; 
; 55 
- D 1 - I - 0x012826 04:A816: 00        .byte $00, $13, $13, $16   ; 
- D 1 - I - 0x01282A 04:A81A: 16        .byte $16, $10, $14, $14   ; 
- D 1 - I - 0x01282E 04:A81E: 11        .byte $11, $18, $10, $11   ; 
- D 1 - I - 0x012832 04:A822: 00        .byte $00, $00, $00, $00   ; 
; 56 
- D 1 - I - 0x012836 04:A826: 16        .byte $16, $12, $17, $00   ; 
- D 1 - I - 0x01283A 04:A82A: 14        .byte $14, $14, $14, $17   ; 
- D 1 - I - 0x01283E 04:A82E: 15        .byte $15, $11, $18, $00   ; 
- D 1 - I - 0x012842 04:A832: 00        .byte $00, $00, $00, $00   ; 
; 57 
- D 1 - I - 0x012846 04:A836: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01284A 04:A83A: 00        .byte $00, $13, $16, $17   ; 
- D 1 - I - 0x01284E 04:A83E: 10        .byte $10, $15, $11, $18   ; 
- D 1 - I - 0x012852 04:A842: 00        .byte $00, $00, $00, $00   ; 
; 58 
- D 1 - I - 0x012856 04:A846: 13        .byte $13, $16, $12, $17   ; 
- D 1 - I - 0x01285A 04:A84A: 10        .byte $10, $15, $11, $13   ; 
- D 1 - I - 0x01285E 04:A84E: 00        .byte $00, $00, $10, $15   ; 
- D 1 - I - 0x012862 04:A852: 00        .byte $00, $00, $00, $00   ; 
; 59 
- D 1 - I - 0x012866 04:A856: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01286A 04:A85A: 16        .byte $16, $12, $16, $17   ; 
- D 1 - I - 0x01286E 04:A85E: 14        .byte $14, $14, $15, $18   ; 
- D 1 - I - 0x012872 04:A862: 10        .byte $10, $15, $18, $00   ; 
; 5A 
- D 1 - I - 0x012876 04:A866: 00        .byte $00, $13, $12, $17   ; 
- D 1 - I - 0x01287A 04:A86A: 00        .byte $00, $10, $15, $18   ; 
- D 1 - I - 0x01287E 04:A86E: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x012882 04:A872: 00        .byte $00, $00, $00, $00   ; 
; 5B 
- D 1 - I - 0x012886 04:A876: 13        .byte $13, $16, $12, $17   ; 
- D 1 - I - 0x01288A 04:A87A: 10        .byte $10, $11, $15, $18   ; 
- D 1 - I - 0x01288E 04:A87E: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x012892 04:A882: 00        .byte $00, $00, $00, $00   ; 
; 5C 
- D 1 - I - 0x012896 04:A886: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01289A 04:A88A: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01289E 04:A88E: 43        .byte $43, $2E, $44, $2E   ; 
- D 1 - I - 0x0128A2 04:A892: DD        .byte $DD, $DE, $DF, $E0   ; 
; 5D 
- D 1 - I - 0x0128A6 04:A896: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x0128AA 04:A89A: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x0128AE 04:A89E: 43        .byte $43, $C5, $45, $C4   ; 
- D 1 - I - 0x0128B2 04:A8A2: E1        .byte $E1, $CE, $CF, $DD   ; 
; 5E 
- D 1 - I - 0x0128B6 04:A8A6: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x0128BA 04:A8AA: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x0128BE 04:A8AE: 2E        .byte $2E, $44, $2E, $E2   ; 
- D 1 - I - 0x0128C2 04:A8B2: DE        .byte $DE, $DF, $D2, $D3   ; 
; 5F 
- D 1 - I - 0x0128C6 04:A8B6: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x0128CA 04:A8BA: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x0128CE 04:A8BE: 43        .byte $43, $44, $2E, $E2   ; 
- D 1 - I - 0x0128D2 04:A8C2: E1        .byte $E1, $DF, $D2, $D3   ; 
; 60 
- D 1 - I - 0x0128D6 04:A8C6: 31        .byte $31, $47, $32, $D5   ; 
- D 1 - I - 0x0128DA 04:A8CA: 5B        .byte $5B, $3A, $30, $D5   ; 
- D 1 - I - 0x0128DE 04:A8CE: 5B        .byte $5B, $39, $30, $D5   ; 
- D 1 - I - 0x0128E2 04:A8D2: 5B        .byte $5B, $39, $30, $D5   ; 
; 61 
- D 1 - I - 0x0128E6 04:A8D6: 5B        .byte $5B, $39, $30, $D5   ; 
- D 1 - I - 0x0128EA 04:A8DA: 5B        .byte $5B, $39, $30, $C6   ; 
- D 1 - I - 0x0128EE 04:A8DE: 5B        .byte $5B, $39, $48, $C7   ; 
- D 1 - I - 0x0128F2 04:A8E2: 5B        .byte $5B, $39, $49, $FD   ; 
; 62 
- D 1 - I - 0x0128F6 04:A8E6: 5B        .byte $5B, $39, $49, $FD   ; 
- D 1 - I - 0x0128FA 04:A8EA: F4        .byte $F4, $F3, $FE, $FD   ; 
- D 1 - I - 0x0128FE 04:A8EE: 5B        .byte $5B, $3A, $49, $FF   ; 
- D 1 - I - 0x012902 04:A8F2: 5B        .byte $5B, $39, $49, $C8   ; 
; 63 
- D 1 - I - 0x012906 04:A8F6: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01290A 04:A8FA: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01290E 04:A8FE: 2F        .byte $2F, $44, $2E, $43   ; 
- D 1 - I - 0x012912 04:A902: D0        .byte $D0, $D1, $E0, $DD   ; 
; 64 
- D 1 - I - 0x012916 04:A906: 47        .byte $47, $31, $47, $D8   ; 
- D 1 - I - 0x01291A 04:A90A: 3A        .byte $3A, $5B, $3A, $3B   ; 
- D 1 - I - 0x01291E 04:A90E: 39        .byte $39, $5B, $39, $3B   ; 
- D 1 - I - 0x012922 04:A912: 39        .byte $39, $5B, $39, $3B   ; 
; 65 
- D 1 - I - 0x012926 04:A916: 39        .byte $39, $5B, $39, $3B   ; 
- D 1 - I - 0x01292A 04:A91A: 39        .byte $39, $5B, $39, $3B   ; 
- D 1 - I - 0x01292E 04:A91E: 39        .byte $39, $5B, $39, $3B   ; 
- D 1 - I - 0x012932 04:A922: 39        .byte $39, $5B, $39, $3B   ; 
; 66 
- D 1 - I - 0x012936 04:A926: 47        .byte $47, $31, $47, $D8   ; 
- D 1 - I - 0x01293A 04:A92A: 3A        .byte $3A, $5B, $3A, $3B   ; 
- D 1 - I - 0x01293E 04:A92E: 46        .byte $46, $EE, $3E, $E5   ; 
- D 1 - I - 0x012942 04:A932: EF        .byte $EF, $F0, $F1, $3B   ; 
; 67 
- D 1 - I - 0x012946 04:A936: 39        .byte $39, $5B, $39, $E5   ; 
- D 1 - I - 0x01294A 04:A93A: 39        .byte $39, $5B, $39, $3B   ; 
- D 1 - I - 0x01294E 04:A93E: 39        .byte $39, $5B, $39, $E5   ; 
- D 1 - I - 0x012952 04:A942: 39        .byte $39, $5B, $39, $3B   ; 
; 68 
- D 1 - I - 0x012956 04:A946: 47        .byte $47, $31, $47, $D8   ; 
- D 1 - I - 0x01295A 04:A94A: DA        .byte $DA, $DB, $DC, $E3   ; 
- D 1 - I - 0x01295E 04:A94E: 3C        .byte $3C, $FB, $42, $3B   ; 
- D 1 - I - 0x012962 04:A952: 3C        .byte $3C, $5B, $FC, $3B   ; 
; 69 
- D 1 - I - 0x012966 04:A956: 47        .byte $47, $31, $47, $D8   ; 
- D 1 - I - 0x01296A 04:A95A: DC        .byte $DC, $DB, $E4, $3B   ; 
- D 1 - I - 0x01296E 04:A95E: 39        .byte $39, $E6, $3D, $E5   ; 
- D 1 - I - 0x012972 04:A962: E7        .byte $E7, $E8, $39, $3B   ; 
; 6A 
- D 1 - I - 0x012976 04:A966: 47        .byte $47, $31, $47, $D8   ; 
- D 1 - I - 0x01297A 04:A96A: DA        .byte $DA, $DB, $DC, $E3   ; 
- D 1 - I - 0x01297E 04:A96E: 3C        .byte $3C, $F9, $41, $3B   ; 
- D 1 - I - 0x012982 04:A972: 3C        .byte $3C, $5B, $FA, $3B   ; 
; 6B 
- D 1 - I - 0x012986 04:A976: 34        .byte $34, $D9, $35, $47   ; 
- D 1 - I - 0x01298A 04:A97A: 3F        .byte $3F, $F2, $40, $3A   ; 
- D 1 - I - 0x01298E 04:A97E: 3F        .byte $3F, $F2, $40, $39   ; 
- D 1 - I - 0x012992 04:A982: 3F        .byte $3F, $F2, $40, $39   ; 
; 6C 
- D 1 - I - 0x012996 04:A986: 3C        .byte $3C, $5B, $39, $E9   ; 
- D 1 - I - 0x01299A 04:A98A: EA        .byte $EA, $EB, $EC, $ED   ; 
- D 1 - I - 0x01299E 04:A98E: 39        .byte $39, $5B, $39, $3B   ; 
- D 1 - I - 0x0129A2 04:A992: 39        .byte $39, $5B, $39, $3B   ; 
; 6D 
- D 1 - I - 0x0129A6 04:A996: 3D        .byte $3D, $5B, $39, $E5   ; 
- D 1 - I - 0x0129AA 04:A99A: 39        .byte $39, $5B, $39, $3B   ; 
- D 1 - I - 0x0129AE 04:A99E: 39        .byte $39, $5B, $39, $E5   ; 
- D 1 - I - 0x0129B2 04:A9A2: 39        .byte $39, $5B, $39, $3B   ; 
; 6E 
- D 1 - I - 0x0129B6 04:A9A6: 5B        .byte $5B, $39, $33, $47   ; 
- D 1 - I - 0x0129BA 04:A9AA: 5B        .byte $5B, $39, $3B, $3A   ; 
- D 1 - I - 0x0129BE 04:A9AE: 5B        .byte $5B, $39, $3B, $39   ; 
- D 1 - I - 0x0129C2 04:A9B2: 5B        .byte $5B, $39, $3B, $39   ; 
; 6F 
- D 1 - I - 0x0129C6 04:A9B6: 3F        .byte $3F, $F2, $40, $39   ; 
- D 1 - I - 0x0129CA 04:A9BA: 3F        .byte $3F, $F2, $40, $39   ; 
- D 1 - I - 0x0129CE 04:A9BE: 3F        .byte $3F, $F2, $40, $39   ; 
- D 1 - I - 0x0129D2 04:A9C2: 3F        .byte $3F, $F2, $40, $39   ; 
; 70 
- D 1 - I - 0x0129D6 04:A9C6: 39        .byte $39, $5B, $39, $E5   ; 
- D 1 - I - 0x0129DA 04:A9CA: F3        .byte $F3, $F4, $F3, $F5   ; 
- D 1 - I - 0x0129DE 04:A9CE: 3A        .byte $3A, $5B, $3A, $3B   ; 
- D 1 - I - 0x0129E2 04:A9D2: 39        .byte $39, $5B, $39, $E5   ; 
; 71 
- D 1 - I - 0x0129E6 04:A9D6: 3F        .byte $3F, $F2, $40, $39   ; 
- D 1 - I - 0x0129EA 04:A9DA: F6        .byte $F6, $F2, $F7, $F3   ; 
- D 1 - I - 0x0129EE 04:A9DE: 3F        .byte $3F, $F2, $40, $3A   ; 
- D 1 - I - 0x0129F2 04:A9E2: 3F        .byte $3F, $F2, $40, $39   ; 
; 72 
- D 1 - I - 0x0129F6 04:A9E6: 5B        .byte $5B, $39, $3B, $39   ; 
- D 1 - I - 0x0129FA 04:A9EA: F4        .byte $F4, $F3, $F8, $39   ; 
- D 1 - I - 0x0129FE 04:A9EE: 5B        .byte $5B, $39, $3B, $39   ; 
- D 1 - I - 0x012A02 04:A9F2: 5B        .byte $5B, $39, $3B, $39   ; 
; 73 
- D 1 - I - 0x012A06 04:A9F6: 5B        .byte $5B, $39, $3B, $39   ; 
- D 1 - I - 0x012A0A 04:A9FA: 5B        .byte $5B, $39, $3B, $39   ; 
- D 1 - I - 0x012A0E 04:A9FE: 5B        .byte $5B, $39, $3B, $39   ; 
- D 1 - I - 0x012A12 04:AA02: 5B        .byte $5B, $39, $3B, $39   ; 
; 74 
- D 1 - I - 0x012A16 04:AA06: 5B        .byte $5B, $39, $3B, $39   ; 
- D 1 - I - 0x012A1A 04:AA0A: F4        .byte $F4, $F3, $F5, $F3   ; 
- D 1 - I - 0x012A1E 04:AA0E: 5B        .byte $5B, $39, $3B, $39   ; 
- D 1 - I - 0x012A22 04:AA12: 5B        .byte $5B, $39, $3B, $39   ; 
; 75 
- D 1 - I - 0x012A26 04:AA16: 5B        .byte $5B, $39, $49, $FD   ; 
- D 1 - I - 0x012A2A 04:AA1A: F4        .byte $F4, $F3, $FE, $C9   ; 
- D 1 - I - 0x012A2E 04:AA1E: 5B        .byte $5B, $3A, $49, $CA   ; 
- D 1 - I - 0x012A32 04:AA22: 5B        .byte $5B, $39, $5C, $D7   ; 
; 76 
- D 1 - I - 0x012A36 04:AA26: 5B        .byte $5B, $39, $30, $D5   ; 
- D 1 - I - 0x012A3A 04:AA2A: 5B        .byte $5B, $39, $30, $C6   ; 
- D 1 - I - 0x012A3E 04:AA2E: 5B        .byte $5B, $39, $48, $C7   ; 
- D 1 - I - 0x012A42 04:AA32: 5B        .byte $5B, $39, $49, $C9   ; 
; 77 
- D 1 - I - 0x012A46 04:AA36: 5B        .byte $5B, $39, $49, $CB   ; 
- D 1 - I - 0x012A4A 04:AA3A: F4        .byte $F4, $F3, $D4, $D5   ; 
- D 1 - I - 0x012A4E 04:AA3E: 5B        .byte $5B, $3A, $5C, $D6   ; 
- D 1 - I - 0x012A52 04:AA42: 5B        .byte $5B, $39, $5C, $D7   ; 
; 78 
- D 1 - I - 0x012A56 04:AA46: 5B        .byte $5B, $39, $30, $D5   ; 
- D 1 - I - 0x012A5A 04:AA4A: 5B        .byte $5B, $39, $30, $CC   ; 
- D 1 - I - 0x012A5E 04:AA4E: 5B        .byte $5B, $39, $48, $CD   ; 
- D 1 - I - 0x012A62 04:AA52: 5B        .byte $5B, $39, $5C, $D5   ; 
; 79 
- D 1 - I - 0x012A66 04:AA56: 5B        .byte $5B, $39, $5C, $D5   ; 
- D 1 - I - 0x012A6A 04:AA5A: F4        .byte $F4, $F3, $D4, $D5   ; 
- D 1 - I - 0x012A6E 04:AA5E: 5B        .byte $5B, $3A, $5C, $D6   ; 
- D 1 - I - 0x012A72 04:AA62: 5B        .byte $5B, $39, $5C, $D7   ; 
; 7A 
- D 1 - I - 0x012A76 04:AA66: 31        .byte $31, $47, $32, $D5   ; 
- D 1 - I - 0x012A7A 04:AA6A: 5B        .byte $5B, $39, $30, $D5   ; 
- D 1 - I - 0x012A7E 04:AA6E: 5B        .byte $5B, $39, $30, $D5   ; 
- D 1 - I - 0x012A82 04:AA72: 5B        .byte $5B, $39, $30, $C6   ; 
; 7B 
- D 1 - I - 0x012A86 04:AA76: 5B        .byte $5B, $39, $48, $C7   ; 
- D 1 - I - 0x012A8A 04:AA7A: 5B        .byte $5B, $39, $49, $C9   ; 
- - - - - - 0x012A8E 04:AA7E: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x012A92 04:AA82: 00        .byte $00, $00, $00, $00   ; 
; 7C 
- D 1 - I - 0x012A96 04:AA86: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x012A9A 04:AA8A: 00        .byte $00, $00, $00, $07   ; 
- D 1 - I - 0x012A9E 04:AA8E: 00        .byte $00, $00, $11, $12   ; 
- D 1 - I - 0x012AA2 04:AA92: 00        .byte $00, $1B, $1C, $1D   ; 
; 7D 
- D 1 - I - 0x012AA6 04:AA96: 00        .byte $00, $01, $02, $03   ; 
- D 1 - I - 0x012AAA 04:AA9A: 08        .byte $08, $09, $0A, $0B   ; 
- D 1 - I - 0x012AAE 04:AA9E: 13        .byte $13, $14, $15, $16   ; 
- D 1 - I - 0x012AB2 04:AAA2: 1E        .byte $1E, $1F, $20, $21   ; 
; 7E 
- D 1 - I - 0x012AB6 04:AAA6: 04        .byte $04, $05, $06, $00   ; 
- D 1 - I - 0x012ABA 04:AAAA: 0C        .byte $0C, $0D, $0E, $0F   ; 
- D 1 - I - 0x012ABE 04:AAAE: 17        .byte $17, $14, $16, $18   ; 
- D 1 - I - 0x012AC2 04:AAB2: 22        .byte $22, $23, $21, $24   ; 
; 7F 
- D 1 - I - 0x012AC6 04:AAB6: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x012ACA 04:AABA: 10        .byte $10, $00, $00, $00   ; 
- D 1 - I - 0x012ACE 04:AABE: 19        .byte $19, $1A, $00, $00   ; 
- D 1 - I - 0x012AD2 04:AAC2: 25        .byte $25, $26, $27, $00   ; 
; 80 
- D 1 - I - 0x012AD6 04:AAC6: 00        .byte $00, $28, $29, $2A   ; 
- D 1 - I - 0x012ADA 04:AACA: 00        .byte $00, $35, $36, $37   ; 
- D 1 - I - 0x012ADE 04:AACE: 40        .byte $40, $41, $42, $2D   ; 
- D 1 - I - 0x012AE2 04:AAD2: 4B        .byte $4B, $4C, $4D, $4E   ; 
; 81 
- D 1 - I - 0x012AE6 04:AAD6: 2B        .byte $2B, $2C, $2D, $2E   ; 
- D 1 - I - 0x012AEA 04:AADA: 21        .byte $21, $38, $39, $3A   ; 
- D 1 - I - 0x012AEE 04:AADE: 43        .byte $43, $2C, $44, $45   ; 
- D 1 - I - 0x012AF2 04:AAE2: 4D        .byte $4D, $4C, $FF, $4F   ; 
; 82 
- D 1 - I - 0x012AF6 04:AAE6: 2F        .byte $2F, $30, $14, $31   ; 
- D 1 - I - 0x012AFA 04:AAEA: 3B        .byte $3B, $3C, $1F, $20   ; 
- D 1 - I - 0x012AFE 04:AAEE: 46        .byte $46, $47, $2C, $2D   ; 
- D 1 - I - 0x012B02 04:AAF2: 50        .byte $50, $FF, $4D, $4E   ; 
; 83 
- D 1 - I - 0x012B06 04:AAF6: 32        .byte $32, $33, $34, $00   ; 
- D 1 - I - 0x012B0A 04:AAFA: 3D        .byte $3D, $3E, $3F, $00   ; 
- D 1 - I - 0x012B0E 04:AAFE: 43        .byte $43, $48, $49, $4A   ; 
- D 1 - I - 0x012B12 04:AB02: 4D        .byte $4D, $51, $4C, $52   ; 
; 84 
- D 1 - I - 0x012B16 04:AB06: 00        .byte $00, $00, $53, $54   ; 
- D 1 - I - 0x012B1A 04:AB0A: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x012B1E 04:AB0E: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x012B22 04:AB12: 00        .byte $00, $00, $00, $00   ; 
; 85 
- D 1 - I - 0x012B26 04:AB16: 55        .byte $55, $56, $53, $54   ; 
- D 1 - I - 0x012B2A 04:AB1A: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x012B2E 04:AB1E: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x012B32 04:AB22: 00        .byte $00, $00, $00, $00   ; 
; 86 
- D 1 - I - 0x012B36 04:AB26: 55        .byte $55, $56, $00, $00   ; 
- D 1 - I - 0x012B3A 04:AB2A: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x012B3E 04:AB2E: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x012B42 04:AB32: 00        .byte $00, $00, $00, $00   ; 
; 87 
- D 1 - I - 0x012B46 04:AB36: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x012B4A 04:AB3A: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x012B4E 04:AB3E: AC        .byte $AC, $AD, $AE, $AF   ; 
- D 1 - I - 0x012B52 04:AB42: 9F        .byte $9F, $B0, $AB, $A2   ; 
; 88 
- D 1 - I - 0x012B56 04:AB46: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x012B5A 04:AB4A: 97        .byte $97, $98, $99, $9A   ; 
- D 1 - I - 0x012B5E 04:AB4E: 9B        .byte $9B, $9C, $9D, $9E   ; 
- D 1 - I - 0x012B62 04:AB52: 9F        .byte $9F, $A0, $A1, $A2   ; 
; 89 
- D 1 - I - 0x012B66 04:AB56: A3        .byte $A3, $98, $99, $9A   ; 
- D 1 - I - 0x012B6A 04:AB5A: A4        .byte $A4, $9C, $9D, $A5   ; 
- D 1 - I - 0x012B6E 04:AB5E: A6        .byte $A6, $A7, $A8, $A9   ; 
- D 1 - I - 0x012B72 04:AB62: 9F        .byte $9F, $AA, $AB, $A2   ; 
; 8A 
- - - - - - 0x012B76 04:AB66: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x012B7A 04:AB6A: B1        .byte $B1, $2E, $B2, $B3   ; 
- - - - - - 0x012B7E 04:AB6E: B4        .byte $B4, $B5, $B6, $B7   ; 
- - - - - - 0x012B82 04:AB72: B8        .byte $B8, $B0, $B9, $BA   ; 
; 8B 
- - - - - - 0x012B86 04:AB76: B1        .byte $B1, $2E, $B2, $BB   ; 
- - - - - - 0x012B8A 04:AB7A: B4        .byte $B4, $B5, $B6, $BC   ; 
- - - - - - 0x012B8E 04:AB7E: 95        .byte $95, $BD, $BE, $BF   ; 
- - - - - - 0x012B92 04:AB82: 96        .byte $96, $C0, $C1, $BA   ; 
; 8C 
- - - - - - 0x012B96 04:AB86: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x012B9A 04:AB8A: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x012B9E 04:AB8E: C2        .byte $C2, $AE, $C3, $2E   ; 
- - - - - - 0x012BA2 04:AB92: B8        .byte $B8, $B0, $B9, $BA   ; 
; 8D 
- D 1 - I - 0x012BA6 04:AB96: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x012BAA 04:AB9A: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x012BAE 04:AB9E: 00        .byte $00, $00, $19, $8F   ; 
- D 1 - I - 0x012BB2 04:ABA2: 00        .byte $00, $1B, $27, $27   ; 
; 8E 
- D 1 - I - 0x012BB6 04:ABA6: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x012BBA 04:ABAA: 00        .byte $00, $19, $19, $19   ; 
- D 1 - I - 0x012BBE 04:ABAE: 1A        .byte $1A, $90, $1A, $90   ; 
- D 1 - I - 0x012BC2 04:ABB2: 27        .byte $27, $27, $27, $1F   ; 
; 8F 
- D 1 - I - 0x012BC6 04:ABB6: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x012BCA 04:ABBA: 00        .byte $00, $00, $00, $1B   ; 
- D 1 - I - 0x012BCE 04:ABBE: 00        .byte $00, $00, $00, $27   ; 
- D 1 - I - 0x012BD2 04:ABC2: 00        .byte $00, $00, $1B, $1A   ; 
; 90 
- D 1 - I - 0x012BD6 04:ABC6: 1B        .byte $1B, $91, $1C, $00   ; 
- D 1 - I - 0x012BDA 04:ABCA: 91        .byte $91, $1C, $00, $00   ; 
- D 1 - I - 0x012BDE 04:ABCE: 1D        .byte $1D, $00, $00, $00   ; 
- D 1 - I - 0x012BE2 04:ABD2: 1C        .byte $1C, $00, $00, $00   ; 
; 91 
- D 1 - I - 0x012BE6 04:ABD6: 1E        .byte $1E, $92, $1A, $27   ; 
- D 1 - I - 0x012BEA 04:ABDA: 27        .byte $27, $1F, $93, $1A   ; 
- D 1 - I - 0x012BEE 04:ABDE: 1B        .byte $1B, $27, $1F, $94   ; 
- D 1 - I - 0x012BF2 04:ABE2: 27        .byte $27, $27, $91, $1E   ; 
; 92 
- D 1 - I - 0x012BF6 04:ABE6: 1F        .byte $1F, $93, $26, $27   ; 
- D 1 - I - 0x012BFA 04:ABEA: 91        .byte $91, $1E, $92, $1A   ; 
- D 1 - I - 0x012BFE 04:ABEE: 26        .byte $26, $27, $1F, $94   ; 
- D 1 - I - 0x012C02 04:ABF2: 92        .byte $92, $1A, $91, $1E   ; 
; 93 
- D 1 - I - 0x012C06 04:ABF6: 00        .byte $00, $1B, $27, $1D   ; 
- D 1 - I - 0x012C0A 04:ABFA: 00        .byte $00, $27, $91, $1C   ; 
- D 1 - I - 0x012C0E 04:ABFE: 2E        .byte $2E, $2E, $44, $2E   ; 
- D 1 - I - 0x012C12 04:AC02: DE        .byte $DE, $DE, $DF, $DE   ; 
; 94 
- D 1 - I - 0x012C16 04:AC06: 00        .byte $00, $00, $00, $1B   ; 
- D 1 - I - 0x012C1A 04:AC0A: 00        .byte $00, $00, $00, $27   ; 
- D 1 - I - 0x012C1E 04:AC0E: 5E        .byte $5E, $00, $5F, $93   ; 
- D 1 - I - 0x012C22 04:AC12: 8E        .byte $8E, $00, $27, $1E   ; 
; 95 
- D 1 - I - 0x012C26 04:AC16: 1F        .byte $1F, $93, $26, $27   ; 
- D 1 - I - 0x012C2A 04:AC1A: 91        .byte $91, $1E, $92, $1A   ; 
- D 1 - I - 0x012C2E 04:AC1E: 60        .byte $60, $27, $61, $94   ; 
- D 1 - I - 0x012C32 04:AC22: 92        .byte $92, $1A, $91, $1E   ; 
; 96 
- D 1 - I - 0x012C36 04:AC26: 1F        .byte $1F, $94, $26, $27   ; 
- D 1 - I - 0x012C3A 04:AC2A: 91        .byte $91, $1E, $92, $1A   ; 
- D 1 - I - 0x012C3E 04:AC2E: 62        .byte $62, $93, $61, $94   ; 
- D 1 - I - 0x012C42 04:AC32: 90        .byte $90, $1A, $91, $1E   ; 
; 97 
- D 1 - I - 0x012C46 04:AC36: 5D        .byte $5D, $5F, $62, $27   ; 
- D 1 - I - 0x012C4A 04:AC3A: 93        .byte $93, $1E, $90, $1A   ; 
- D 1 - I - 0x012C4E 04:AC3E: 63        .byte $63, $27, $61, $94   ; 
- D 1 - I - 0x012C52 04:AC42: 27        .byte $27, $1E, $93, $1E   ; 
; 98 
- D 1 - I - 0x012C56 04:AC46: 61        .byte $61, $94, $60, $27   ; 
- D 1 - I - 0x012C5A 04:AC4A: 91        .byte $91, $1E, $92, $1A   ; 
- D 1 - I - 0x012C5E 04:AC4E: 62        .byte $62, $93, $61, $94   ; 
- D 1 - I - 0x012C62 04:AC52: 90        .byte $90, $1A, $91, $1E   ; 
; 99 
- D 1 - I - 0x012C66 04:AC56: 61        .byte $61, $93, $60, $27   ; 
- D 1 - I - 0x012C6A 04:AC5A: 91        .byte $91, $1E, $92, $1A   ; 
- D 1 - I - 0x012C6E 04:AC5E: 60        .byte $60, $27, $61, $94   ; 
- D 1 - I - 0x012C72 04:AC62: 92        .byte $92, $1A, $91, $1E   ; 
; 9A 
- D 1 - I - 0x012C76 04:AC66: 00        .byte $00, $00, $2D, $A2   ; 
- D 1 - I - 0x012C7A 04:AC6A: 00        .byte $00, $00, $A3, $A3   ; 
- D 1 - I - 0x012C7E 04:AC6E: 3E        .byte $3E, $55, $22, $27   ; 
- D 1 - I - 0x012C82 04:AC72: 39        .byte $39, $A0, $3E, $55   ; 
; 9B 
- D 1 - I - 0x012C86 04:AC76: 2C        .byte $2C, $A2, $2C, $3E   ; 
- D 1 - I - 0x012C8A 04:AC7A: 52        .byte $52, $A3, $A3, $1F   ; 
- D 1 - I - 0x012C8E 04:AC7E: 0A        .byte $0A, $1E, $24, $4A   ; 
- D 1 - I - 0x012C92 04:AC82: 23        .byte $23, $06, $25, $20   ; 



_off007_0x012C96_04_area_5:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 1 - I - 0x012C96 04:AC86: 00        .byte $00, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 00
- D 1 - I - 0x012CA6 04:AC96: FF        .byte $FF, $FF, $FF, $05, $55, $55, $55, $55, $05, $05, $05, $05, $00, $50, $50, $00   ; 10
- D 1 - I - 0x012CB6 04:ACA6: 00        .byte $00, $50, $50, $00, $00, $00, $00, $00, $05, $05, $05, $05, $05, $05, $05, $05   ; 20
- D 1 - I - 0x012CC6 04:ACB6: 00        .byte $00, $00, $00, $00, $50, $55, $00, $00, $05, $05, $55, $50, $00, $00, $00, $50   ; 30
- D 1 - I - 0x012CD6 04:ACC6: 00        .byte $00, $00, $05, $05, $05, $05, $00, $00, $05, $00, $00, $00, $00, $05, $05, $05   ; 40
- D 1 - I - 0x012CE6 04:ACD6: 00        .byte $00, $00, $00, $00, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $00, $00, $00, $0A   ; 50
- D 1 - I - 0x012CF6 04:ACE6: FF        .byte $FF, $FF, $FF, $05, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 60
- D 1 - I - 0x012D06 04:ACF6: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $00, $00, $00, $00   ; 70
- D 1 - I - 0x012D16 04:AD06: 00        .byte $00, $88, $22, $00, $00, $00, $00, $05, $00, $00, $00, $00, $05, $55, $55, $55   ; 80
- D 1 - I - 0x012D26 04:AD16: 55        .byte $55, $55, $55, $05, $45, $55, $55, $55, $55, $55, $55, $05                       ; 90


; bzk garbage
- - - - - - 0x012D32 04:AD22: 00        .byte $00   ; 
- - - - - - 0x012D33 04:AD23: 00        .byte $00   ; 
- - - - - - 0x012D34 04:AD24: 00        .byte $00   ; 
- - - - - - 0x012D35 04:AD25: 00        .byte $00   ; 



_off004_0x012D36_05_area_6:
- D 1 - I - 0x012D36 04:AD26: 02        .byte $02   ; columns
- D 1 - I - 0x012D37 04:AD27: 0D        .byte $0D   ; rows

;                                              00   01
- - - - - - 0x012D38 04:AD28: 00        .byte $00, $00   ; 00 
- D 1 - I - 0x012D3A 04:AD2A: 0A        .byte $0A, $0B   ; 01 
- D 1 - I - 0x012D3C 04:AD2C: 09        .byte $09, $00   ; 02 
- D 1 - I - 0x012D3E 04:AD2E: 08        .byte $08, $00   ; 03 
- D 1 - I - 0x012D40 04:AD30: 07        .byte $07, $00   ; 04 
- D 1 - I - 0x012D42 04:AD32: 06        .byte $06, $00   ; 05 
- D 1 - I - 0x012D44 04:AD34: 05        .byte $05, $00   ; 06 
- D 1 - I - 0x012D46 04:AD36: 05        .byte $05, $00   ; 07 
- D 1 - I - 0x012D48 04:AD38: 04        .byte $04, $00   ; 08 
- D 1 - I - 0x012D4A 04:AD3A: 04        .byte $04, $00   ; 09 
- D 1 - I - 0x012D4C 04:AD3C: 03        .byte $03, $00   ; 0A 
- D 1 - I - 0x012D4E 04:AD3E: 02        .byte $02, $00   ; 0B 
- D 1 - I - 0x012D50 04:AD40: 01        .byte $01, $00   ; 0C 



_off005_0x012D52_05_area_6:
- D 1 - I - 0x012D52 04:AD42: 5A AD     .word _off018_05_AD5A_00
- D 1 - I - 0x012D54 04:AD44: 9A AD     .word _off018_05_AD9A_01
- D 1 - I - 0x012D56 04:AD46: DA AD     .word _off018_05_ADDA_02
- D 1 - I - 0x012D58 04:AD48: 1A AE     .word _off018_05_AE1A_03
- D 1 - I - 0x012D5A 04:AD4A: 5A AE     .word _off018_05_AE5A_04
- D 1 - I - 0x012D5C 04:AD4C: 9A AE     .word _off018_05_AE9A_05
- D 1 - I - 0x012D5E 04:AD4E: DA AE     .word _off018_05_AEDA_06
- D 1 - I - 0x012D60 04:AD50: 1A AF     .word _off018_05_AF1A_07
- D 1 - I - 0x012D62 04:AD52: 5A AF     .word _off018_05_AF5A_08
- D 1 - I - 0x012D64 04:AD54: 9A AF     .word _off018_05_AF9A_09
- D 1 - I - 0x012D66 04:AD56: DA AF     .word _off018_05_AFDA_0A
- D 1 - I - 0x012D68 04:AD58: 1A B0     .word _off018_05_B01A_0B



_off018_05_AD5A_00:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x012D6A 04:AD5A: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 00 
- D 1 - I - 0x012D72 04:AD62: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 01 
- D 1 - I - 0x012D7A 04:AD6A: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 02 
- D 1 - I - 0x012D82 04:AD72: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 03 
- D 1 - I - 0x012D8A 04:AD7A: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 04 
- D 1 - I - 0x012D92 04:AD82: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 05 
- D 1 - I - 0x012D9A 04:AD8A: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 06 
- D 1 - I - 0x012DA2 04:AD92: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 07 



_off018_05_AD9A_01:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x012DAA 04:AD9A: 08        .byte $08, $09, $04, $05, $06, $07, $0A, $0B   ; 00 
- D 1 - I - 0x012DB2 04:ADA2: 08        .byte $08, $1E, $04, $02, $03, $07, $1F, $0B   ; 01 
- D 1 - I - 0x012DBA 04:ADAA: 08        .byte $08, $09, $04, $05, $06, $07, $0A, $0B   ; 02 
- D 1 - I - 0x012DC2 04:ADB2: 08        .byte $08, $1E, $04, $02, $03, $07, $1F, $0B   ; 03 
- D 1 - I - 0x012DCA 04:ADBA: 08        .byte $08, $09, $04, $05, $06, $07, $0A, $0B   ; 04 
- D 1 - I - 0x012DD2 04:ADC2: 08        .byte $08, $1E, $04, $02, $03, $07, $1F, $0B   ; 05 
- D 1 - I - 0x012DDA 04:ADCA: 08        .byte $08, $09, $04, $05, $06, $07, $0A, $0B   ; 06 
- D 1 - I - 0x012DE2 04:ADD2: 08        .byte $08, $1E, $04, $02, $03, $07, $1F, $0B   ; 07 



_off018_05_ADDA_02:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x012DEA 04:ADDA: 16        .byte $16, $0C, $0C, $14, $15, $0C, $0C, $1B   ; 00 
- D 1 - I - 0x012DF2 04:ADE2: 1A        .byte $1A, $0C, $0C, $07, $19, $0C, $0C, $17   ; 01 
- D 1 - I - 0x012DFA 04:ADEA: 16        .byte $16, $0C, $0C, $18, $19, $0C, $0C, $1B   ; 02 
- D 1 - I - 0x012E02 04:ADF2: 1A        .byte $1A, $0C, $0C, $1C, $1D, $0C, $0C, $17   ; 03 
- D 1 - I - 0x012E0A 04:ADFA: 10        .byte $10, $11, $0C, $0C, $0C, $0C, $12, $13   ; 04 
- D 1 - I - 0x012E12 04:AE02: 24        .byte $24, $0E, $0C, $0C, $0C, $0C, $0F, $27   ; 05 
- D 1 - I - 0x012E1A 04:AE0A: 20        .byte $20, $25, $0E, $0C, $0C, $0F, $26, $23   ; 06 
- D 1 - I - 0x012E22 04:AE12: 20        .byte $20, $21, $04, $0C, $0D, $07, $22, $23   ; 07 



_off018_05_AE1A_03:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x012E2A 04:AE1A: 0E        .byte $0E, $0C, $0C, $14, $15, $0C, $0C, $0F   ; 00 
- D 1 - I - 0x012E32 04:AE22: 30        .byte $30, $31, $0C, $07, $04, $0C, $32, $33   ; 01 
- D 1 - I - 0x012E3A 04:AE2A: 28        .byte $28, $29, $0C, $07, $04, $0C, $2A, $2B   ; 02 
- D 1 - I - 0x012E42 04:AE32: 28        .byte $28, $29, $0C, $07, $04, $0C, $2A, $2B   ; 03 
- D 1 - I - 0x012E4A 04:AE3A: 28        .byte $28, $29, $0C, $18, $19, $0C, $2A, $2B   ; 04 
- D 1 - I - 0x012E52 04:AE42: 2C        .byte $2C, $2D, $0C, $1C, $1D, $0C, $2E, $2F   ; 05 
- D 1 - I - 0x012E5A 04:AE4A: 19        .byte $19, $0C, $0C, $0C, $0C, $0C, $0C, $18   ; 06 
- D 1 - I - 0x012E62 04:AE52: 1A        .byte $1A, $0C, $0C, $0C, $0C, $0C, $0C, $1B   ; 07 



_off018_05_AE5A_04:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x012E6A 04:AE5A: 0D        .byte $0D, $0D, $0D, $0D, $0D, $0D, $0D, $0D   ; 00 
- D 1 - I - 0x012E72 04:AE62: 0D        .byte $0D, $0D, $0D, $0D, $0D, $0D, $0D, $0D   ; 01 
- D 1 - I - 0x012E7A 04:AE6A: 0D        .byte $0D, $0D, $0D, $0D, $0D, $0D, $0D, $0D   ; 02 
- D 1 - I - 0x012E82 04:AE72: 0D        .byte $0D, $0D, $0D, $0D, $0D, $0D, $0D, $0D   ; 03 
- D 1 - I - 0x012E8A 04:AE7A: 0D        .byte $0D, $0D, $0D, $0D, $0D, $0D, $0D, $0D   ; 04 
- D 1 - I - 0x012E92 04:AE82: 0D        .byte $0D, $0D, $0D, $0D, $0D, $0D, $0D, $0D   ; 05 
- D 1 - I - 0x012E9A 04:AE8A: 0D        .byte $0D, $0D, $0D, $0D, $0D, $0D, $0D, $0D   ; 06 
- D 1 - I - 0x012EA2 04:AE92: 0D        .byte $0D, $0D, $0D, $0D, $0D, $0D, $0D, $0D   ; 07 



_off018_05_AE9A_05:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x012EAA 04:AE9A: 48        .byte $48, $4C, $0C, $0D, $0C, $0D, $4D, $4B   ; 00 
- D 1 - I - 0x012EB2 04:AEA2: 4C        .byte $4C, $49, $0D, $0C, $0D, $0C, $4A, $4B   ; 01 
- D 1 - I - 0x012EBA 04:AEAA: 49        .byte $49, $0C, $0C, $0D, $0C, $0D, $0C, $4D   ; 02 
- D 1 - I - 0x012EC2 04:AEB2: 48        .byte $48, $49, $0D, $0C, $0D, $0C, $0C, $4D   ; 03 
- D 1 - I - 0x012ECA 04:AEBA: 48        .byte $48, $49, $0C, $0D, $0C, $0D, $0C, $4B   ; 04 
- D 1 - I - 0x012ED2 04:AEC2: 48        .byte $48, $4C, $0D, $0D, $0D, $0D, $4D, $4B   ; 05 
- D 1 - I - 0x012EDA 04:AECA: 48        .byte $48, $49, $0D, $0D, $0D, $0D, $0D, $4D   ; 06 
- D 1 - I - 0x012EE2 04:AED2: 4C        .byte $4C, $0D, $0D, $0D, $0D, $0D, $0D, $0D   ; 07 



_off018_05_AEDA_06:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x012EEA 04:AEDA: 5C        .byte $5C, $5D, $7D, $7C, $7D, $7C, $5E, $5F   ; 00 
- D 1 - I - 0x012EF2 04:AEE2: 58        .byte $58, $59, $7C, $7D, $7C, $7D, $5A, $5B   ; 01 
- D 1 - I - 0x012EFA 04:AEEA: 5C        .byte $5C, $5D, $7D, $7C, $7D, $7C, $5E, $5F   ; 02 
- D 1 - I - 0x012F02 04:AEF2: 58        .byte $58, $59, $7C, $7D, $7C, $7D, $5A, $5B   ; 03 
- D 1 - I - 0x012F0A 04:AEFA: 5C        .byte $5C, $5D, $7D, $7C, $7D, $7C, $5E, $5F   ; 04 
- D 1 - I - 0x012F12 04:AF02: 60        .byte $60, $61, $7C, $7D, $7C, $7D, $62, $63   ; 05 
- D 1 - I - 0x012F1A 04:AF0A: 48        .byte $48, $49, $64, $65, $66, $67, $4A, $4B   ; 06 
- D 1 - I - 0x012F22 04:AF12: 48        .byte $48, $4C, $0D, $0D, $0D, $0D, $4D, $4B   ; 07 



_off018_05_AF1A_07:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x012F2A 04:AF1A: 4E        .byte $4E, $51, $78, $79, $78, $79, $52, $4F   ; 00 
- D 1 - I - 0x012F32 04:AF22: 54        .byte $54, $55, $79, $78, $79, $78, $56, $57   ; 01 
- D 1 - I - 0x012F3A 04:AF2A: 50        .byte $50, $51, $78, $79, $78, $79, $52, $53   ; 02 
- D 1 - I - 0x012F42 04:AF32: 54        .byte $54, $55, $79, $78, $79, $78, $56, $57   ; 03 
- D 1 - I - 0x012F4A 04:AF3A: 50        .byte $50, $51, $78, $79, $78, $79, $52, $53   ; 04 
- D 1 - I - 0x012F52 04:AF42: 54        .byte $54, $55, $79, $78, $79, $78, $56, $57   ; 05 
- D 1 - I - 0x012F5A 04:AF4A: 50        .byte $50, $51, $78, $79, $78, $79, $52, $53   ; 06 
- D 1 - I - 0x012F62 04:AF52: 54        .byte $54, $55, $79, $78, $79, $78, $56, $57   ; 07 



_off018_05_AF5A_08:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x012F6A 04:AF5A: 76        .byte $76, $7D, $7C, $7D, $7C, $7D, $7C, $77   ; 00 
- D 1 - I - 0x012F72 04:AF62: 76        .byte $76, $7C, $7D, $7C, $7D, $7C, $7D, $77   ; 01 
- D 1 - I - 0x012F7A 04:AF6A: 76        .byte $76, $7D, $7C, $7D, $7C, $7D, $7C, $77   ; 02 
- D 1 - I - 0x012F82 04:AF72: 76        .byte $76, $7C, $7D, $7C, $7D, $7C, $7D, $77   ; 03 
- D 1 - I - 0x012F8A 04:AF7A: 76        .byte $76, $7D, $7C, $7D, $7C, $7D, $7C, $77   ; 04 
- D 1 - I - 0x012F92 04:AF82: 76        .byte $76, $7C, $7D, $7C, $7D, $7C, $7D, $77   ; 05 
- D 1 - I - 0x012F9A 04:AF8A: 7A        .byte $7A, $7D, $7C, $7D, $7C, $7D, $7C, $7B   ; 06 
- D 1 - I - 0x012FA2 04:AF92: 7E        .byte $7E, $7C, $7D, $7C, $7D, $7C, $7D, $7F   ; 07 



_off018_05_AF9A_09:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x012FAA 04:AF9A: 72        .byte $72, $78, $79, $78, $79, $78, $79, $73   ; 00 
- D 1 - I - 0x012FB2 04:AFA2: 72        .byte $72, $79, $78, $79, $78, $79, $78, $73   ; 01 
- D 1 - I - 0x012FBA 04:AFAA: 72        .byte $72, $78, $79, $78, $79, $78, $79, $73   ; 02 
- D 1 - I - 0x012FC2 04:AFB2: 72        .byte $72, $79, $78, $79, $78, $79, $78, $73   ; 03 
- D 1 - I - 0x012FCA 04:AFBA: 80        .byte $80, $81, $68, $69, $6A, $6B, $82, $83   ; 04 
- D 1 - I - 0x012FD2 04:AFC2: 84        .byte $84, $85, $6C, $6D, $6E, $6F, $86, $87   ; 05 
- D 1 - I - 0x012FDA 04:AFCA: 88        .byte $88, $89, $8C, $8C, $8C, $01, $8A, $8B   ; 06 
- D 1 - I - 0x012FE2 04:AFD2: 72        .byte $72, $79, $78, $79, $78, $79, $78, $73   ; 07 



_off018_05_AFDA_0A:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x012FEA 04:AFDA: 43        .byte $43, $34, $8D, $8E, $8E, $8F, $37, $40   ; 00 
- D 1 - I - 0x012FF2 04:AFE2: 3C        .byte $3C, $38, $90, $91, $91, $92, $3B, $3F   ; 01 
- D 1 - I - 0x012FFA 04:AFEA: 40        .byte $40, $41, $8C, $8C, $8C, $01, $42, $43   ; 02 
- D 1 - I - 0x013002 04:AFF2: 44        .byte $44, $45, $78, $79, $78, $79, $46, $47   ; 03 
- D 1 - I - 0x01300A 04:AFFA: 76        .byte $76, $01, $79, $78, $79, $78, $8C, $77   ; 04 
- D 1 - I - 0x013012 04:B002: 76        .byte $76, $79, $78, $79, $78, $79, $78, $77   ; 05 
- D 1 - I - 0x01301A 04:B00A: 76        .byte $76, $78, $79, $78, $79, $78, $79, $77   ; 06 
- D 1 - I - 0x013022 04:B012: 76        .byte $76, $79, $78, $79, $78, $79, $78, $77   ; 07 



_off018_05_B01A_0B:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x01302A 04:B01A: 43        .byte $43, $34, $35, $00, $00, $36, $37, $40   ; 00 
- D 1 - I - 0x013032 04:B022: 3C        .byte $3C, $38, $39, $3D, $3E, $3A, $3B, $3F   ; 01 
- D 1 - I - 0x01303A 04:B02A: 40        .byte $40, $41, $8C, $8C, $8C, $01, $42, $43   ; 02 
- D 1 - I - 0x013042 04:B032: 44        .byte $44, $45, $78, $79, $78, $79, $46, $47   ; 03 
- D 1 - I - 0x01304A 04:B03A: 76        .byte $76, $01, $79, $78, $79, $78, $8C, $77   ; 04 
- D 1 - I - 0x013052 04:B042: 76        .byte $76, $79, $78, $79, $78, $79, $78, $77   ; 05 
- D 1 - I - 0x01305A 04:B04A: 76        .byte $76, $78, $79, $78, $79, $78, $79, $77   ; 06 
- D 1 - I - 0x013062 04:B052: 76        .byte $76, $79, $78, $79, $78, $79, $78, $77   ; 07 



_off006_0x01306A_05_area_6:
; 00 
- D 1 - I - 0x01306A 04:B05A: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01306E 04:B05E: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x013072 04:B062: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x013076 04:B066: 00        .byte $00, $00, $00, $00   ; 
; 01 
- D 1 - I - 0x01307A 04:B06A: 00        .byte $00, $00, $00, $3E   ; 
- D 1 - I - 0x01307E 04:B06E: 3E        .byte $3E, $3F, $BB, $86   ; 
- D 1 - I - 0x013082 04:B072: 07        .byte $07, $BD, $08, $84   ; 
- D 1 - I - 0x013086 04:B076: 80        .byte $80, $04, $87, $06   ; 
; 02 
- D 1 - I - 0x01308A 04:B07A: 0B        .byte $0B, $0C, $0A, $47   ; 
- D 1 - I - 0x01308E 04:B07E: 36        .byte $36, $09, $0B, $0C   ; 
- D 1 - I - 0x013092 04:B082: 0D        .byte $0D, $47, $0B, $0C   ; 
- D 1 - I - 0x013096 04:B086: 0B        .byte $0B, $0C, $0A, $09   ; 
; 03 
- D 1 - I - 0x01309A 04:B08A: 0A        .byte $0A, $47, $09, $0A   ; 
- D 1 - I - 0x01309E 04:B08E: 0B        .byte $0B, $0C, $0C, $0B   ; 
- D 1 - I - 0x0130A2 04:B092: 09        .byte $09, $0A, $0A, $47   ; 
- D 1 - I - 0x0130A6 04:B096: 0C        .byte $0C, $0B, $0B, $D0   ; 
; 04 
- D 1 - I - 0x0130AA 04:B09A: 32        .byte $32, $33, $34, $36   ; 
- D 1 - I - 0x0130AE 04:B09E: 00        .byte $00, $35, $CC, $0D   ; 
- D 1 - I - 0x0130B2 04:B0A2: 32        .byte $32, $33, $34, $37   ; 
- D 1 - I - 0x0130B6 04:B0A6: 00        .byte $00, $00, $CD, $38   ; 
; 05 
- D 1 - I - 0x0130BA 04:B0AA: 0A        .byte $0A, $47, $09, $0A   ; 
- D 1 - I - 0x0130BE 04:B0AE: 0B        .byte $0B, $0C, $0C, $0B   ; 
- D 1 - I - 0x0130C2 04:B0B2: 09        .byte $09, $0A, $0A, $47   ; 
- D 1 - I - 0x0130C6 04:B0B6: 0E        .byte $0E, $0B, $0B, $0C   ; 
; 06 
- D 1 - I - 0x0130CA 04:B0BA: 0B        .byte $0B, $0C, $0A, $47   ; 
- D 1 - I - 0x0130CE 04:B0BE: 0A        .byte $0A, $09, $0B, $42   ; 
- D 1 - I - 0x0130D2 04:B0C2: 0A        .byte $0A, $47, $0B, $43   ; 
- D 1 - I - 0x0130D6 04:B0C6: 0B        .byte $0B, $0C, $0A, $09   ; 
; 07 
- D 1 - I - 0x0130DA 04:B0CA: 42        .byte $42, $3A, $3B, $00   ; 
- D 1 - I - 0x0130DE 04:B0CE: 43        .byte $43, $CE, $3C, $00   ; 
- D 1 - I - 0x0130E2 04:B0D2: 44        .byte $44, $3A, $3B, $00   ; 
- D 1 - I - 0x0130E6 04:B0D6: CF        .byte $CF, $3D, $00, $00   ; 
; 08 
- D 1 - I - 0x0130EA 04:B0DA: 55        .byte $55, $D1, $56, $D2   ; 
- D 1 - I - 0x0130EE 04:B0DE: D4        .byte $D4, $D5, $D6, $D7   ; 
- D 1 - I - 0x0130F2 04:B0E2: 4A        .byte $4A, $DC, $4B, $DD   ; 
- D 1 - I - 0x0130F6 04:B0E6: 00        .byte $00, $E0, $E1, $00   ; 
; 09 
- D 1 - I - 0x0130FA 04:B0EA: 48        .byte $48, $D3, $49, $00   ; 
- D 1 - I - 0x0130FE 04:B0EE: D8        .byte $D8, $D9, $DA, $DB   ; 
- D 1 - I - 0x013102 04:B0F2: 4C        .byte $4C, $DE, $4D, $DF   ; 
- D 1 - I - 0x013106 04:B0F6: E2        .byte $E2, $E3, $E4, $E5   ; 
; 0A 
- D 1 - I - 0x01310A 04:B0FA: 32        .byte $32, $E6, $4E, $E7   ; 
- D 1 - I - 0x01310E 04:B0FE: EA        .byte $EA, $EB, $EC, $ED   ; 
- D 1 - I - 0x013112 04:B102: 51        .byte $51, $F2, $52, $F3   ; 
- D 1 - I - 0x013116 04:B106: F6        .byte $F6, $F7, $F8, $F9   ; 
; 0B 
- D 1 - I - 0x01311A 04:B10A: 4F        .byte $4F, $E8, $50, $E9   ; 
- D 1 - I - 0x01311E 04:B10E: EE        .byte $EE, $EF, $F0, $F1   ; 
- D 1 - I - 0x013122 04:B112: 53        .byte $53, $F4, $54, $F5   ; 
- D 1 - I - 0x013126 04:B116: 00        .byte $00, $FA, $FB, $00   ; 
; 0C 
- D 1 - I - 0x01312A 04:B11A: 0A        .byte $0A, $47, $09, $0A   ; 
- D 1 - I - 0x01312E 04:B11E: 0B        .byte $0B, $0C, $0C, $0B   ; 
- D 1 - I - 0x013132 04:B122: 09        .byte $09, $0A, $0A, $47   ; 
- D 1 - I - 0x013136 04:B126: 0C        .byte $0C, $0B, $0B, $0C   ; 
; 0D 
- D 1 - I - 0x01313A 04:B12A: 0B        .byte $0B, $0C, $0A, $47   ; 
- D 1 - I - 0x01313E 04:B12E: 0A        .byte $0A, $09, $0B, $0C   ; 
- D 1 - I - 0x013142 04:B132: 0A        .byte $0A, $47, $0B, $0C   ; 
- D 1 - I - 0x013146 04:B136: 0B        .byte $0B, $0C, $0A, $09   ; 
; 0E 
- D 1 - I - 0x01314A 04:B13A: 34        .byte $34, $37, $09, $0A   ; 
- D 1 - I - 0x01314E 04:B13E: CD        .byte $CD, $39, $0C, $0B   ; 
- D 1 - I - 0x013152 04:B142: 32        .byte $32, $35, $39, $47   ; 
- D 1 - I - 0x013156 04:B146: 00        .byte $00, $00, $CD, $0D   ; 
; 0F 
- D 1 - I - 0x01315A 04:B14A: 0A        .byte $0A, $47, $44, $3A   ; 
- D 1 - I - 0x01315E 04:B14E: 0B        .byte $0B, $0C, $45, $3D   ; 
- D 1 - I - 0x013162 04:B152: 46        .byte $46, $45, $3C, $00   ; 
- D 1 - I - 0x013166 04:B156: 43        .byte $43, $3D, $00, $00   ; 
; 10 
- D 1 - I - 0x01316A 04:B15A: 32        .byte $32, $CD, $39, $36   ; 
- D 1 - I - 0x01316E 04:B15E: 00        .byte $00, $33, $34, $0D   ; 
- D 1 - I - 0x013172 04:B162: 32        .byte $32, $00, $35, $39   ; 
- D 1 - I - 0x013176 04:B166: 00        .byte $00, $00, $00, $CD   ; 
; 11 
- D 1 - I - 0x01317A 04:B16A: 0A        .byte $0A, $47, $09, $0A   ; 
- D 1 - I - 0x01317E 04:B16E: 0B        .byte $0B, $0C, $0C, $0B   ; 
- D 1 - I - 0x013182 04:B172: 0E        .byte $0E, $0A, $0A, $47   ; 
- D 1 - I - 0x013186 04:B176: 39        .byte $39, $0E, $0B, $0C   ; 
; 12 
- D 1 - I - 0x01318A 04:B17A: 0A        .byte $0A, $47, $09, $0A   ; 
- D 1 - I - 0x01318E 04:B17E: 0B        .byte $0B, $0C, $0C, $0B   ; 
- D 1 - I - 0x013192 04:B182: 09        .byte $09, $0A, $0A, $D0   ; 
- D 1 - I - 0x013196 04:B186: 0C        .byte $0C, $0B, $D0, $45   ; 
; 13 
- D 1 - I - 0x01319A 04:B18A: 42        .byte $42, $45, $3D, $00   ; 
- D 1 - I - 0x01319E 04:B18E: 43        .byte $43, $3A, $3B, $00   ; 
- D 1 - I - 0x0131A2 04:B192: 45        .byte $45, $3C, $32, $00   ; 
- D 1 - I - 0x0131A6 04:B196: 3D        .byte $3D, $00, $00, $00   ; 
; 14 
- D 1 - I - 0x0131AA 04:B19A: 09        .byte $09, $0A, $46, $45   ; 
- D 1 - I - 0x0131AE 04:B19E: 0C        .byte $0C, $0B, $43, $3D   ; 
- D 1 - I - 0x0131B2 04:B1A2: 46        .byte $46, $44, $3A, $3B   ; 
- D 1 - I - 0x0131B6 04:B1A6: 0B        .byte $0B, $45, $3D, $00   ; 
; 15 
- D 1 - I - 0x0131BA 04:B1AA: 38        .byte $38, $0E, $0A, $0A   ; 
- D 1 - I - 0x0131BE 04:B1AE: 35        .byte $35, $39, $0C, $09   ; 
- D 1 - I - 0x0131C2 04:B1B2: 33        .byte $33, $34, $37, $0B   ; 
- D 1 - I - 0x0131C6 04:B1B6: 00        .byte $00, $CD, $39, $0C   ; 
; 16 
- D 1 - I - 0x0131CA 04:B1BA: 33        .byte $33, $34, $36, $0B   ; 
- D 1 - I - 0x0131CE 04:B1BE: 35        .byte $35, $CC, $0D, $36   ; 
- D 1 - I - 0x0131D2 04:B1C2: 33        .byte $33, $34, $37, $0D   ; 
- D 1 - I - 0x0131D6 04:B1C6: 00        .byte $00, $CD, $38, $0B   ; 
; 17 
- D 1 - I - 0x0131DA 04:B1CA: 47        .byte $47, $42, $3A, $3B   ; 
- D 1 - I - 0x0131DE 04:B1CE: 42        .byte $42, $43, $CE, $3C   ; 
- D 1 - I - 0x0131E2 04:B1D2: 43        .byte $43, $44, $3A, $3B   ; 
- D 1 - I - 0x0131E6 04:B1D6: 09        .byte $09, $CF, $3D, $00   ; 
; 18 
- D 1 - I - 0x0131EA 04:B1DA: 42        .byte $42, $3A, $3B, $00   ; 
- D 1 - I - 0x0131EE 04:B1DE: 43        .byte $43, $CE, $3C, $00   ; 
- D 1 - I - 0x0131F2 04:B1E2: 44        .byte $44, $3A, $3B, $00   ; 
- D 1 - I - 0x0131F6 04:B1E6: 43        .byte $43, $3D, $00, $00   ; 
; 19 
- D 1 - I - 0x0131FA 04:B1EA: 32        .byte $32, $33, $34, $36   ; 
- D 1 - I - 0x0131FE 04:B1EE: 00        .byte $00, $35, $CC, $0D   ; 
- D 1 - I - 0x013202 04:B1F2: 32        .byte $32, $33, $34, $37   ; 
- D 1 - I - 0x013206 04:B1F6: 00        .byte $00, $33, $34, $0D   ; 
; 1A 
- D 1 - I - 0x01320A 04:B1FA: 33        .byte $33, $34, $36, $0B   ; 
- D 1 - I - 0x01320E 04:B1FE: 35        .byte $35, $CC, $0D, $0E   ; 
- D 1 - I - 0x013212 04:B202: 33        .byte $33, $34, $37, $47   ; 
- D 1 - I - 0x013216 04:B206: 00        .byte $00, $CD, $38, $0B   ; 
; 1B 
- D 1 - I - 0x01321A 04:B20A: 47        .byte $47, $42, $3A, $3B   ; 
- D 1 - I - 0x01321E 04:B20E: D0        .byte $D0, $43, $CE, $3C   ; 
- D 1 - I - 0x013222 04:B212: 47        .byte $47, $44, $3A, $3B   ; 
- D 1 - I - 0x013226 04:B216: 09        .byte $09, $CF, $3D, $00   ; 
; 1C 
- D 1 - I - 0x01322A 04:B21A: 47        .byte $47, $42, $3A, $3B   ; 
- D 1 - I - 0x01322E 04:B21E: 0B        .byte $0B, $43, $CE, $3C   ; 
- D 1 - I - 0x013232 04:B222: 09        .byte $09, $0C, $42, $3D   ; 
- D 1 - I - 0x013236 04:B226: 0C        .byte $0C, $0B, $43, $42   ; 
; 1D 
- D 1 - I - 0x01323A 04:B22A: 33        .byte $33, $34, $36, $0A   ; 
- D 1 - I - 0x01323E 04:B22E: 00        .byte $00, $CD, $0D, $0C   ; 
- D 1 - I - 0x013242 04:B232: 33        .byte $33, $36, $0B, $47   ; 
- D 1 - I - 0x013246 04:B236: 36        .byte $36, $47, $0B, $0C   ; 
; 1E 
- D 1 - I - 0x01324A 04:B23A: 48        .byte $48, $D3, $49, $00   ; 
- D 1 - I - 0x01324E 04:B23E: D8        .byte $D8, $D9, $FC, $00   ; 
- D 1 - I - 0x013252 04:B242: 4C        .byte $4C, $DE, $4D, $DF   ; 
- D 1 - I - 0x013256 04:B246: E2        .byte $E2, $E3, $E4, $E5   ; 
; 1F 
- D 1 - I - 0x01325A 04:B24A: 32        .byte $32, $E6, $4E, $E7   ; 
- D 1 - I - 0x01325E 04:B24E: 00        .byte $00, $FD, $EC, $ED   ; 
- D 1 - I - 0x013262 04:B252: 51        .byte $51, $F2, $52, $F3   ; 
- D 1 - I - 0x013266 04:B256: F6        .byte $F6, $F7, $F8, $F9   ; 
; 20 
- D 1 - I - 0x01326A 04:B25A: 4A        .byte $4A, $DC, $4B, $DD   ; 
- D 1 - I - 0x01326E 04:B25E: 00        .byte $00, $E0, $E1, $00   ; 
- D 1 - I - 0x013272 04:B262: 55        .byte $55, $D1, $56, $D2   ; 
- D 1 - I - 0x013276 04:B266: D4        .byte $D4, $D5, $D6, $D7   ; 
; 21 
- D 1 - I - 0x01327A 04:B26A: 4C        .byte $4C, $DE, $4D, $DF   ; 
- D 1 - I - 0x01327E 04:B26E: E2        .byte $E2, $E3, $E4, $E5   ; 
- - - - - - 0x013282 04:B272: 48        .byte $48, $D3, $49, $00   ; 
- - - - - - 0x013286 04:B276: D8        .byte $D8, $D9, $DA, $DB   ; 
; 22 
- D 1 - I - 0x01328A 04:B27A: 51        .byte $51, $F2, $52, $F3   ; 
- D 1 - I - 0x01328E 04:B27E: F6        .byte $F6, $F7, $F8, $F9   ; 
- - - - - - 0x013292 04:B282: 32        .byte $32, $E6, $4E, $E7   ; 
- - - - - - 0x013296 04:B286: EA        .byte $EA, $EB, $EC, $ED   ; 
; 23 
- D 1 - I - 0x01329A 04:B28A: 53        .byte $53, $F4, $54, $F5   ; 
- D 1 - I - 0x01329E 04:B28E: 00        .byte $00, $FA, $FB, $00   ; 
- D 1 - I - 0x0132A2 04:B292: 4F        .byte $4F, $E8, $50, $E9   ; 
- D 1 - I - 0x0132A6 04:B296: EE        .byte $EE, $EF, $F0, $F1   ; 
; 24 
- D 1 - I - 0x0132AA 04:B29A: 32        .byte $32, $00, $32, $00   ; 
- D 1 - I - 0x0132AE 04:B29E: 00        .byte $00, $E0, $E1, $00   ; 
- D 1 - I - 0x0132B2 04:B2A2: 55        .byte $55, $D1, $56, $D2   ; 
- D 1 - I - 0x0132B6 04:B2A6: D4        .byte $D4, $D5, $D6, $D7   ; 
; 25 
- D 1 - I - 0x0132BA 04:B2AA: 4C        .byte $4C, $DE, $32, $00   ; 
- D 1 - I - 0x0132BE 04:B2AE: E2        .byte $E2, $E3, $00, $00   ; 
- D 1 - I - 0x0132C2 04:B2B2: 48        .byte $48, $D3, $49, $00   ; 
- D 1 - I - 0x0132C6 04:B2B6: D8        .byte $D8, $D9, $DA, $DB   ; 
; 26 
- D 1 - I - 0x0132CA 04:B2BA: 32        .byte $32, $00, $52, $F3   ; 
- D 1 - I - 0x0132CE 04:B2BE: 00        .byte $00, $00, $F8, $F9   ; 
- D 1 - I - 0x0132D2 04:B2C2: 32        .byte $32, $E6, $4E, $E7   ; 
- D 1 - I - 0x0132D6 04:B2C6: EA        .byte $EA, $EB, $EC, $ED   ; 
; 27 
- D 1 - I - 0x0132DA 04:B2CA: 32        .byte $32, $00, $32, $00   ; 
- D 1 - I - 0x0132DE 04:B2CE: 00        .byte $00, $FA, $FB, $00   ; 
- D 1 - I - 0x0132E2 04:B2D2: 4F        .byte $4F, $E8, $50, $E9   ; 
- D 1 - I - 0x0132E6 04:B2D6: EE        .byte $EE, $EF, $F0, $F1   ; 
; 28 
- D 1 - I - 0x0132EA 04:B2DA: 48        .byte $48, $49, $32, $00   ; 
- D 1 - I - 0x0132EE 04:B2DE: D8        .byte $D8, $D9, $FC, $00   ; 
- D 1 - I - 0x0132F2 04:B2E2: 4C        .byte $4C, $DE, $4D, $DF   ; 
- D 1 - I - 0x0132F6 04:B2E6: E2        .byte $E2, $E3, $E4, $E5   ; 
; 29 
- D 1 - I - 0x0132FA 04:B2EA: 34        .byte $34, $36, $09, $0A   ; 
- D 1 - I - 0x0132FE 04:B2EE: 35        .byte $35, $0D, $0E, $0B   ; 
- D 1 - I - 0x013302 04:B2F2: 34        .byte $34, $37, $0A, $47   ; 
- D 1 - I - 0x013306 04:B2F6: CD        .byte $CD, $38, $0B, $0C   ; 
; 2A 
- D 1 - I - 0x01330A 04:B2FA: 0A        .byte $0A, $47, $42, $3A   ; 
- D 1 - I - 0x01330E 04:B2FE: 0B        .byte $0B, $D0, $43, $3C   ; 
- D 1 - I - 0x013312 04:B302: 09        .byte $09, $0A, $44, $3A   ; 
- D 1 - I - 0x013316 04:B306: 0C        .byte $0C, $0B, $CF, $3D   ; 
; 2B 
- D 1 - I - 0x01331A 04:B30A: 32        .byte $32, $00, $4E, $E7   ; 
- D 1 - I - 0x01331E 04:B30E: 00        .byte $00, $FD, $EC, $ED   ; 
- D 1 - I - 0x013322 04:B312: 51        .byte $51, $F2, $52, $F3   ; 
- D 1 - I - 0x013326 04:B316: F6        .byte $F6, $F7, $F8, $F9   ; 
; 2C 
- D 1 - I - 0x01332A 04:B31A: 48        .byte $48, $49, $32, $33   ; 
- D 1 - I - 0x01332E 04:B31E: D8        .byte $D8, $FE, $00, $35   ; 
- D 1 - I - 0x013332 04:B322: 4C        .byte $4C, $DE, $33, $34   ; 
- D 1 - I - 0x013336 04:B326: E2        .byte $E2, $00, $35, $CC   ; 
; 2D 
- D 1 - I - 0x01333A 04:B32A: 34        .byte $34, $36, $09, $0A   ; 
- D 1 - I - 0x01333E 04:B32E: CC        .byte $CC, $0D, $0C, $0B   ; 
- D 1 - I - 0x013342 04:B332: 37        .byte $37, $0A, $0A, $47   ; 
- D 1 - I - 0x013346 04:B336: 0D        .byte $0D, $0B, $0B, $0C   ; 
; 2E 
- D 1 - I - 0x01334A 04:B33A: 0A        .byte $0A, $47, $42, $3A   ; 
- D 1 - I - 0x01334E 04:B33E: 0B        .byte $0B, $0C, $43, $CE   ; 
- D 1 - I - 0x013352 04:B342: 09        .byte $09, $0A, $47, $44   ; 
- D 1 - I - 0x013356 04:B346: 0C        .byte $0C, $0B, $0B, $43   ; 
; 2F 
- D 1 - I - 0x01335A 04:B34A: 3B        .byte $3B, $00, $4E, $E7   ; 
- D 1 - I - 0x01335E 04:B34E: 3C        .byte $3C, $00, $FF, $ED   ; 
- D 1 - I - 0x013362 04:B352: 3A        .byte $3A, $3B, $52, $F3   ; 
- D 1 - I - 0x013366 04:B356: CE        .byte $CE, $3C, $00, $F9   ; 
; 30 
- D 1 - I - 0x01336A 04:B35A: 48        .byte $48, $49, $35, $39   ; 
- D 1 - I - 0x01336E 04:B35E: D8        .byte $D8, $FE, $00, $CD   ; 
- D 1 - I - 0x013372 04:B362: 4C        .byte $4C, $DE, $4D, $DF   ; 
- D 1 - I - 0x013376 04:B366: E2        .byte $E2, $E3, $E4, $E5   ; 
; 31 
- D 1 - I - 0x01337A 04:B36A: 46        .byte $46, $47, $09, $0A   ; 
- D 1 - I - 0x01337E 04:B36E: 39        .byte $39, $0E, $0C, $0B   ; 
- D 1 - I - 0x013382 04:B372: 34        .byte $34, $37, $0A, $47   ; 
- D 1 - I - 0x013386 04:B376: CD        .byte $CD, $38, $0B, $0C   ; 
; 32 
- D 1 - I - 0x01338A 04:B37A: 0A        .byte $0A, $47, $46, $D0   ; 
- D 1 - I - 0x01338E 04:B37E: 0B        .byte $0B, $0C, $D0, $45   ; 
- D 1 - I - 0x013392 04:B382: 09        .byte $09, $0A, $44, $3A   ; 
- D 1 - I - 0x013396 04:B386: 0C        .byte $0C, $0B, $CF, $3D   ; 
; 33 
- D 1 - I - 0x01339A 04:B38A: 45        .byte $45, $3C, $4E, $E7   ; 
- D 1 - I - 0x01339E 04:B38E: 3D        .byte $3D, $00, $FF, $ED   ; 
- D 1 - I - 0x0133A2 04:B392: 32        .byte $32, $F2, $52, $F3   ; 
- D 1 - I - 0x0133A6 04:B396: 00        .byte $00, $F7, $F8, $F9   ; 
; 34 
- D 1 - I - 0x0133AA 04:B39A: 30        .byte $30, $11, $2E, $2B   ; 
- D 1 - I - 0x0133AE 04:B39E: 28        .byte $28, $30, $11, $2E   ; 
- D 1 - I - 0x0133B2 04:B3A2: 29        .byte $29, $28, $28, $00   ; 
- D 1 - I - 0x0133B6 04:B3A6: 2A        .byte $2A, $29, $13, $00   ; 
; 35 
- D 1 - I - 0x0133BA 04:B3AA: 32        .byte $32, $E0, $00, $00   ; 
- D 1 - I - 0x0133BE 04:B3AE: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x0133C2 04:B3B2: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x0133C6 04:B3B6: 00        .byte $00, $00, $E2, $E4   ; 
; 36 
- D 1 - I - 0x0133CA 04:B3BA: 00        .byte $00, $00, $E1, $2C   ; 
- D 1 - I - 0x0133CE 04:B3BE: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x0133D2 04:B3C2: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x0133D6 04:B3C6: E5        .byte $E5, $E3, $00, $00   ; 
; 37 
- D 1 - I - 0x0133DA 04:B3CA: 2D        .byte $2D, $12, $2F, $31   ; 
- D 1 - I - 0x0133DE 04:B3CE: 12        .byte $12, $2F, $31, $28   ; 
- D 1 - I - 0x0133E2 04:B3D2: 23        .byte $23, $28, $28, $29   ; 
- D 1 - I - 0x0133E6 04:B3D6: 00        .byte $00, $13, $29, $0F   ; 
; 38 
- D 1 - I - 0x0133EA 04:B3DA: 10        .byte $10, $2A, $14, $FA   ; 
- D 1 - I - 0x0133EE 04:B3DE: 00        .byte $00, $00, $00, $FC   ; 
- D 1 - I - 0x0133F2 04:B3E2: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x0133F6 04:B3E6: 2D        .byte $2D, $00, $00, $00   ; 
; 39 
- D 1 - I - 0x0133FA 04:B3EA: 00        .byte $00, $E2, $E4, $E6   ; 
- D 1 - I - 0x0133FE 04:B3EE: EE        .byte $EE, $F0, $F2, $E8   ; 
- D 1 - I - 0x013402 04:B3F2: 00        .byte $00, $F8, $F6, $EE   ; 
- D 1 - I - 0x013406 04:B3F6: 00        .byte $00, $00, $00, $00   ; 
; 3A 
- D 1 - I - 0x01340A 04:B3FA: E7        .byte $E7, $E5, $E3, $00   ; 
- D 1 - I - 0x01340E 04:B3FE: E9        .byte $E9, $F3, $F1, $EF   ; 
- D 1 - I - 0x013412 04:B402: EF        .byte $EF, $F7, $1C, $00   ; 
- D 1 - I - 0x013416 04:B406: 00        .byte $00, $00, $00, $00   ; 
; 3B 
- D 1 - I - 0x01341A 04:B40A: 15        .byte $15, $FB, $0F, $00   ; 
- D 1 - I - 0x01341E 04:B40E: FE        .byte $FE, $00, $00, $00   ; 
- D 1 - I - 0x013422 04:B412: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x013426 04:B416: 00        .byte $00, $00, $00, $2B   ; 
; 3C 
- D 1 - I - 0x01342A 04:B41A: 2C        .byte $2C, $2D, $29, $0F   ; 
- D 1 - I - 0x01342E 04:B41E: 28        .byte $28, $2C, $2D, $00   ; 
- D 1 - I - 0x013432 04:B422: 2B        .byte $2B, $28, $2C, $2D   ; 
- D 1 - I - 0x013436 04:B426: 2E        .byte $2E, $2B, $28, $2C   ; 
; 3D 
- D 1 - I - 0x01343A 04:B42A: E8        .byte $E8, $EA, $EC, $EC   ; 
- D 1 - I - 0x01343E 04:B42E: EA        .byte $EA, $EC, $ED, $ED   ; 
- D 1 - I - 0x013442 04:B432: F0        .byte $F0, $F4, $DE, $DE   ; 
- D 1 - I - 0x013446 04:B436: F8        .byte $F8, $F6, $DF, $DF   ; 
; 3E 
- D 1 - I - 0x01344A 04:B43A: EC        .byte $EC, $EC, $EB, $E9   ; 
- D 1 - I - 0x01344E 04:B43E: ED        .byte $ED, $ED, $EC, $EB   ; 
- D 1 - I - 0x013452 04:B442: DE        .byte $DE, $DE, $F5, $F1   ; 
- D 1 - I - 0x013456 04:B446: DF        .byte $DF, $DF, $F7, $1C   ; 
; 3F 
- D 1 - I - 0x01345A 04:B44A: 2A        .byte $2A, $29, $2B, $32   ; 
- D 1 - I - 0x01345E 04:B44E: 00        .byte $00, $2B, $32, $28   ; 
- D 1 - I - 0x013462 04:B452: 2B        .byte $2B, $32, $28, $2D   ; 
- D 1 - I - 0x013466 04:B456: 32        .byte $32, $28, $2D, $12   ; 
; 40 
- D 1 - I - 0x01346A 04:B45A: 25        .byte $25, $2E, $2B, $28   ; 
- D 1 - I - 0x01346E 04:B45E: 30        .byte $30, $11, $2E, $2B   ; 
- D 1 - I - 0x013472 04:B462: 28        .byte $28, $30, $25, $2E   ; 
- D 1 - I - 0x013476 04:B466: 29        .byte $29, $28, $30, $00   ; 
; 41 
- D 1 - I - 0x01347A 04:B46A: 2C        .byte $2C, $2D, $10, $00   ; 
- D 1 - I - 0x01347E 04:B46E: 28        .byte $28, $2C, $2D, $00   ; 
- D 1 - I - 0x013482 04:B472: 10        .byte $10, $00, $12, $2F   ; 
- D 1 - I - 0x013486 04:B476: 00        .byte $00, $00, $00, $31   ; 
; 42 
- D 1 - I - 0x01348A 04:B47A: 10        .byte $10, $00, $2B, $32   ; 
- D 1 - I - 0x01348E 04:B47E: 00        .byte $00, $2B, $32, $28   ; 
- D 1 - I - 0x013492 04:B482: 11        .byte $11, $2E, $10, $00   ; 
- D 1 - I - 0x013496 04:B486: 30        .byte $30, $00, $00, $00   ; 
; 43 
- D 1 - I - 0x01349A 04:B48A: 28        .byte $28, $2D, $27, $2F   ; 
- D 1 - I - 0x01349E 04:B48E: 2D        .byte $2D, $12, $2F, $31   ; 
- D 1 - I - 0x0134A2 04:B492: 27        .byte $27, $2F, $31, $28   ; 
- D 1 - I - 0x0134A6 04:B496: 00        .byte $00, $31, $28, $29   ; 
; 44 
- D 1 - I - 0x0134AA 04:B49A: 2A        .byte $2A, $29, $13, $F9   ; 
- D 1 - I - 0x0134AE 04:B49E: 00        .byte $00, $2A, $13, $F9   ; 
- D 1 - I - 0x0134B2 04:B4A2: 24        .byte $24, $A2, $14, $FA   ; 
- D 1 - I - 0x0134B6 04:B4A6: A4        .byte $A4, $A5, $A6, $FC   ; 
; 45 
- D 1 - I - 0x0134BA 04:B4AA: 10        .byte $10, $00, $10, $13   ; 
- D 1 - I - 0x0134BE 04:B4AE: 16        .byte $16, $00, $00, $13   ; 
- D 1 - I - 0x0134C2 04:B4B2: 16        .byte $16, $FF, $15, $FB   ; 
- D 1 - I - 0x0134C6 04:B4B6: FD        .byte $FD, $FD, $FE, $00   ; 
; 46 
- D 1 - I - 0x0134CA 04:B4BA: 13        .byte $13, $F9, $10, $00   ; 
- D 1 - I - 0x0134CE 04:B4BE: 13        .byte $13, $F9, $16, $00   ; 
- D 1 - I - 0x0134D2 04:B4C2: 14        .byte $14, $FA, $16, $FF   ; 
- D 1 - I - 0x0134D6 04:B4C6: 00        .byte $00, $FC, $FD, $FD   ; 
; 47 
- D 1 - I - 0x0134DA 04:B4CA: 10        .byte $10, $13, $29, $0F   ; 
- D 1 - I - 0x0134DE 04:B4CE: 00        .byte $00, $13, $0F, $00   ; 
- D 1 - I - 0x0134E2 04:B4D2: 15        .byte $15, $FB, $26, $AF   ; 
- D 1 - I - 0x0134E6 04:B4D6: FE        .byte $FE, $B1, $B2, $B3   ; 
; 48 
- D 1 - I - 0x0134EA 04:B4DA: 0F        .byte $0F, $7A, $10, $19   ; 
- D 1 - I - 0x0134EE 04:B4DE: 7E        .byte $7E, $78, $7B, $1A   ; 
- D 1 - I - 0x0134F2 04:B4E2: 00        .byte $00, $7D, $11, $72   ; 
- D 1 - I - 0x0134F6 04:B4E6: 7E        .byte $7E, $75, $72, $19   ; 
; 49 
- D 1 - I - 0x0134FA 04:B4EA: 14        .byte $14, $0C, $0A, $47   ; 
- D 1 - I - 0x0134FE 04:B4EE: 0C        .byte $0C, $09, $0B, $0C   ; 
- D 1 - I - 0x013502 04:B4F2: 15        .byte $15, $47, $0B, $0C   ; 
- D 1 - I - 0x013506 04:B4F6: 13        .byte $13, $0C, $0A, $46   ; 
; 4A 
- D 1 - I - 0x01350A 04:B4FA: 0B        .byte $0B, $0C, $0A, $77   ; 
- D 1 - I - 0x01350E 04:B4FE: 0A        .byte $0A, $09, $0B, $0C   ; 
- D 1 - I - 0x013512 04:B502: 0A        .byte $0A, $47, $0B, $16   ; 
- D 1 - I - 0x013516 04:B506: 0B        .byte $0B, $0C, $47, $70   ; 
; 4B 
- D 1 - I - 0x01351A 04:B50A: 19        .byte $19, $74, $17, $76   ; 
- D 1 - I - 0x01351E 04:B50E: 1A        .byte $1A, $7C, $79, $7F   ; 
- D 1 - I - 0x013522 04:B512: 12        .byte $12, $73, $18, $00   ; 
- D 1 - I - 0x013526 04:B516: 19        .byte $19, $12, $71, $7F   ; 
; 4C 
- D 1 - I - 0x01352A 04:B51A: 0C        .byte $0C, $1A, $13, $0C   ; 
- D 1 - I - 0x01352E 04:B51E: 0C        .byte $0C, $12, $15, $0C   ; 
- D 1 - I - 0x013532 04:B522: 13        .byte $13, $15, $0B, $0C   ; 
- D 1 - I - 0x013536 04:B526: 19        .byte $19, $0C, $0A, $46   ; 
; 4D 
- D 1 - I - 0x01353A 04:B52A: 0B        .byte $0B, $70, $1A, $77   ; 
- D 1 - I - 0x01353E 04:B52E: 0A        .byte $0A, $46, $72, $0C   ; 
- D 1 - I - 0x013542 04:B532: 0A        .byte $0A, $47, $16, $70   ; 
- D 1 - I - 0x013546 04:B536: 0B        .byte $0B, $0C, $47, $70   ; 
; 4E 
- D 1 - I - 0x01354A 04:B53A: 5B        .byte $5B, $D9, $30, $DA   ; 
- D 1 - I - 0x01354E 04:B53E: CC        .byte $CC, $CD, $CE, $00   ; 
- D 1 - I - 0x013552 04:B542: 5A        .byte $5A, $D0, $27, $00   ; 
- D 1 - I - 0x013556 04:B546: D1        .byte $D1, $D2, $D4, $D5   ; 
; 4F 
- D 1 - I - 0x01355A 04:B54A: 2E        .byte $2E, $FC, $61, $FD   ; 
- D 1 - I - 0x01355E 04:B54E: 00        .byte $00, $F1, $F2, $F3   ; 
- D 1 - I - 0x013562 04:B552: 32        .byte $32, $F4, $60, $F5   ; 
- D 1 - I - 0x013566 04:B556: F8        .byte $F8, $F9, $FA, $FB   ; 
; 50 
- D 1 - I - 0x01356A 04:B55A: 59        .byte $59, $C9, $25, $CA   ; 
- D 1 - I - 0x01356E 04:B55E: CC        .byte $CC, $CD, $CE, $00   ; 
- D 1 - I - 0x013572 04:B562: 5A        .byte $5A, $D0, $27, $00   ; 
- D 1 - I - 0x013576 04:B566: D1        .byte $D1, $D2, $D4, $D5   ; 
; 51 
- D 1 - I - 0x01357A 04:B56A: 26        .byte $26, $CB, $1D, $82   ; 
- D 1 - I - 0x01357E 04:B56E: 00        .byte $00, $CF, $00, $86   ; 
- D 1 - I - 0x013582 04:B572: 32        .byte $32, $00, $1E, $84   ; 
- D 1 - I - 0x013586 04:B576: D6        .byte $D6, $D7, $87, $06   ; 
; 52 
- D 1 - I - 0x01358A 04:B57A: 02        .byte $02, $67, $2C, $ED   ; 
- D 1 - I - 0x01358E 04:B57E: 06        .byte $06, $82, $F0, $00   ; 
- D 1 - I - 0x013592 04:B582: 03        .byte $03, $05, $32, $00   ; 
- D 1 - I - 0x013596 04:B586: 82        .byte $82, $00, $F6, $F7   ; 
; 53 
- D 1 - I - 0x01359A 04:B58A: 2D        .byte $2D, $EE, $5F, $EF   ; 
- D 1 - I - 0x01359E 04:B58E: 00        .byte $00, $F1, $F2, $F3   ; 
- D 1 - I - 0x0135A2 04:B592: 32        .byte $32, $F4, $60, $F5   ; 
- D 1 - I - 0x0135A6 04:B596: F8        .byte $F8, $F9, $FA, $FB   ; 
; 54 
- D 1 - I - 0x0135AA 04:B59A: 57        .byte $57, $BF, $21, $6A   ; 
- D 1 - I - 0x0135AE 04:B59E: 6C        .byte $6C, $6D, $6E, $6F   ; 
- D 1 - I - 0x0135B2 04:B5A2: 58        .byte $58, $C1, $23, $D8   ; 
- D 1 - I - 0x0135B6 04:B5A6: C3        .byte $C3, $C4, $C5, $C6   ; 
; 55 
- D 1 - I - 0x0135BA 04:B5AA: 22        .byte $22, $6B, $1F, $BB   ; 
- D 1 - I - 0x0135BE 04:B5AE: D3        .byte $D3, $C0, $85, $BE   ; 
- D 1 - I - 0x0135C2 04:B5B2: 24        .byte $24, $C2, $20, $81   ; 
- D 1 - I - 0x0135C6 04:B5B6: C7        .byte $C7, $C8, $1F, $03   ; 
; 56 
- D 1 - I - 0x0135CA 04:B5BA: 05        .byte $05, $00, $28, $DD   ; 
- D 1 - I - 0x0135CE 04:B5BE: BA        .byte $BA, $BB, $E0, $E1   ; 
- D 1 - I - 0x0135D2 04:B5C2: 07        .byte $07, $68, $2A, $E6   ; 
- D 1 - I - 0x0135D6 04:B5C6: 80        .byte $80, $69, $C7, $C8   ; 
; 57 
- D 1 - I - 0x0135DA 04:B5CA: 29        .byte $29, $DE, $5D, $DF   ; 
- D 1 - I - 0x0135DE 04:B5CE: E2        .byte $E2, $E3, $E4, $E5   ; 
- D 1 - I - 0x0135E2 04:B5D2: 2B        .byte $2B, $E7, $5E, $E8   ; 
- D 1 - I - 0x0135E6 04:B5D6: E9        .byte $E9, $EA, $EB, $EC   ; 
; 58 
- D 1 - I - 0x0135EA 04:B5DA: 5A        .byte $5A, $D0, $27, $00   ; 
- D 1 - I - 0x0135EE 04:B5DE: D1        .byte $D1, $D2, $D4, $D5   ; 
- D 1 - I - 0x0135F2 04:B5E2: 57        .byte $57, $BF, $21, $6A   ; 
- D 1 - I - 0x0135F6 04:B5E6: 6C        .byte $6C, $6D, $6E, $6F   ; 
; 59 
- D 1 - I - 0x0135FA 04:B5EA: 32        .byte $32, $00, $1E, $84   ; 
- D 1 - I - 0x0135FE 04:B5EE: D6        .byte $D6, $D7, $87, $06   ; 
- D 1 - I - 0x013602 04:B5F2: 22        .byte $22, $6B, $1F, $BB   ; 
- D 1 - I - 0x013606 04:B5F6: D3        .byte $D3, $C0, $85, $BE   ; 
; 5A 
- D 1 - I - 0x01360A 04:B5FA: 03        .byte $03, $05, $32, $00   ; 
- D 1 - I - 0x01360E 04:B5FE: 82        .byte $82, $00, $F6, $F7   ; 
- D 1 - I - 0x013612 04:B602: 05        .byte $05, $00, $28, $DD   ; 
- D 1 - I - 0x013616 04:B606: BA        .byte $BA, $BB, $E0, $E1   ; 
; 5B 
- D 1 - I - 0x01361A 04:B60A: 32        .byte $32, $F4, $60, $F5   ; 
- D 1 - I - 0x01361E 04:B60E: F8        .byte $F8, $F9, $FA, $FB   ; 
- D 1 - I - 0x013622 04:B612: 29        .byte $29, $DE, $5D, $DF   ; 
- D 1 - I - 0x013626 04:B616: E2        .byte $E2, $E3, $E4, $E5   ; 
; 5C 
- D 1 - I - 0x01362A 04:B61A: 58        .byte $58, $C1, $23, $D8   ; 
- D 1 - I - 0x01362E 04:B61E: C3        .byte $C3, $C4, $C5, $C6   ; 
- D 1 - I - 0x013632 04:B622: 59        .byte $59, $C9, $25, $CA   ; 
- D 1 - I - 0x013636 04:B626: CC        .byte $CC, $CD, $CE, $00   ; 
; 5D 
- D 1 - I - 0x01363A 04:B62A: 24        .byte $24, $C2, $20, $81   ; 
- D 1 - I - 0x01363E 04:B62E: C7        .byte $C7, $C8, $1F, $03   ; 
- D 1 - I - 0x013642 04:B632: 26        .byte $26, $CB, $1D, $82   ; 
- D 1 - I - 0x013646 04:B636: 00        .byte $00, $CF, $00, $86   ; 
; 5E 
- D 1 - I - 0x01364A 04:B63A: 07        .byte $07, $68, $2A, $E6   ; 
- D 1 - I - 0x01364E 04:B63E: 80        .byte $80, $69, $C7, $C8   ; 
- D 1 - I - 0x013652 04:B642: 05        .byte $05, $67, $2C, $ED   ; 
- D 1 - I - 0x013656 04:B646: 06        .byte $06, $82, $F0, $00   ; 
; 5F 
- D 1 - I - 0x01365A 04:B64A: 2B        .byte $2B, $E7, $5E, $E8   ; 
- D 1 - I - 0x01365E 04:B64E: E9        .byte $E9, $EA, $EB, $EC   ; 
- D 1 - I - 0x013662 04:B652: 2D        .byte $2D, $EE, $5F, $EF   ; 
- D 1 - I - 0x013666 04:B656: 00        .byte $00, $F1, $F2, $F3   ; 
; 60 
- D 1 - I - 0x01366A 04:B65A: 5A        .byte $5A, $D0, $27, $00   ; 
- D 1 - I - 0x01366E 04:B65E: D1        .byte $D1, $D2, $D4, $D5   ; 
- D 1 - I - 0x013672 04:B662: 5C        .byte $5C, $DB, $31, $DC   ; 
- D 1 - I - 0x013676 04:B666: 7E        .byte $7E, $10, $1A, $0B   ; 
; 61 
- D 1 - I - 0x01367A 04:B66A: 32        .byte $32, $00, $1E, $81   ; 
- D 1 - I - 0x01367E 04:B66E: D6        .byte $D6, $D7, $1F, $03   ; 
- D 1 - I - 0x013682 04:B672: 22        .byte $22, $6B, $1D, $82   ; 
- D 1 - I - 0x013686 04:B676: 0C        .byte $0C, $1B, $1F, $86   ; 
; 62 
- D 1 - I - 0x01368A 04:B67A: 03        .byte $03, $05, $32, $00   ; 
- D 1 - I - 0x01368E 04:B67E: 82        .byte $82, $00, $F6, $F7   ; 
- D 1 - I - 0x013692 04:B682: 05        .byte $05, $00, $28, $DD   ; 
- D 1 - I - 0x013696 04:B686: BA        .byte $BA, $BB, $1C, $0C   ; 
; 63 
- D 1 - I - 0x01369A 04:B68A: 32        .byte $32, $F4, $60, $F5   ; 
- D 1 - I - 0x01369E 04:B68E: F8        .byte $F8, $F9, $FA, $FB   ; 
- D 1 - I - 0x0136A2 04:B692: 2F        .byte $2F, $FE, $62, $FF   ; 
- D 1 - I - 0x0136A6 04:B696: 47        .byte $47, $1A, $74, $7F   ; 
; 64 
- D 1 - I - 0x0136AA 04:B69A: 1B        .byte $1B, $00, $08, $84   ; 
- D 1 - I - 0x0136AE 04:B69E: 0B        .byte $0B, $1B, $00, $06   ; 
- D 1 - I - 0x0136B2 04:B6A2: 09        .byte $09, $0A, $0B, $0C   ; 
- D 1 - I - 0x0136B6 04:B6A6: 0B        .byte $0B, $0C, $0A, $09   ; 
; 65 
- D 1 - I - 0x0136BA 04:B6AA: 03        .byte $03, $80, $04, $81   ; 
- D 1 - I - 0x0136BE 04:B6AE: 82        .byte $82, $83, $84, $03   ; 
- D 1 - I - 0x0136C2 04:B6B2: 0B        .byte $0B, $1B, $0C, $1B   ; 
- D 1 - I - 0x0136C6 04:B6B6: 0B        .byte $0B, $0C, $0A, $09   ; 
; 66 
- D 1 - I - 0x0136CA 04:B6BA: 07        .byte $07, $BD, $08, $84   ; 
- D 1 - I - 0x0136CE 04:B6BE: 80        .byte $80, $04, $87, $06   ; 
- D 1 - I - 0x0136D2 04:B6C2: 1C        .byte $1C, $0B, $1C, $0C   ; 
- D 1 - I - 0x0136D6 04:B6C6: 0B        .byte $0B, $0C, $0A, $09   ; 
; 67 
- D 1 - I - 0x0136DA 04:B6CA: 03        .byte $03, $04, $00, $1C   ; 
- D 1 - I - 0x0136DE 04:B6CE: 82        .byte $82, $00, $1C, $0B   ; 
- D 1 - I - 0x0136E2 04:B6D2: 0B        .byte $0B, $0C, $0A, $0C   ; 
- D 1 - I - 0x0136E6 04:B6D6: 0B        .byte $0B, $0C, $0A, $09   ; 
; 68 
- D 1 - I - 0x0136EA 04:B6DA: 05        .byte $05, $85, $06, $82   ; 
- D 1 - I - 0x0136EE 04:B6DE: BA        .byte $BA, $02, $BB, $40   ; 
- D 1 - I - 0x0136F2 04:B6E2: 23        .byte $23, $77, $36, $00   ; 
- D 1 - I - 0x0136F6 04:B6E6: 35        .byte $35, $A5, $7E, $7F   ; 
; 69 
- D 1 - I - 0x0136FA 04:B6EA: 04        .byte $04, $40, $00, $00   ; 
- D 1 - I - 0x0136FE 04:B6EE: 00        .byte $00, $00, $42, $43   ; 
- D 1 - I - 0x013702 04:B6F2: 23        .byte $23, $44, $32, $45   ; 
- D 1 - I - 0x013706 04:B6F6: 46        .byte $46, $47, $48, $49   ; 
; 6A 
- D 1 - I - 0x01370A 04:B6FA: 00        .byte $00, $00, $04, $BC   ; 
- D 1 - I - 0x01370E 04:B6FE: 58        .byte $58, $57, $00, $40   ; 
- D 1 - I - 0x013712 04:B702: 39        .byte $39, $59, $38, $00   ; 
- D 1 - I - 0x013716 04:B706: 5D        .byte $5D, $5C, $5B, $5A   ; 
; 6B 
- D 1 - I - 0x01371A 04:B70A: 01        .byte $01, $BA, $02, $BB   ; 
- D 1 - I - 0x01371E 04:B70E: BC        .byte $BC, $07, $BD, $BE   ; 
- D 1 - I - 0x013722 04:B712: 23        .byte $23, $9D, $3C, $00   ; 
- D 1 - I - 0x013726 04:B716: 20        .byte $20, $9E, $B2, $93   ; 
; 6C 
- D 1 - I - 0x01372A 04:B71A: 35        .byte $35, $77, $37, $88   ; 
- D 1 - I - 0x01372E 04:B71E: 76        .byte $76, $A5, $89, $88   ; 
- D 1 - I - 0x013732 04:B722: 1C        .byte $1C, $79, $12, $7F   ; 
- D 1 - I - 0x013736 04:B726: 7A        .byte $7A, $7B, $8A, $AD   ; 
; 6D 
- D 1 - I - 0x01373A 04:B72A: 33        .byte $33, $4A, $34, $4B   ; 
- D 1 - I - 0x01373E 04:B72E: 4C        .byte $4C, $4D, $4E, $4F   ; 
- D 1 - I - 0x013742 04:B732: 1A        .byte $1A, $50, $1B, $51   ; 
- D 1 - I - 0x013746 04:B736: 00        .byte $00, $52, $53, $54   ; 
; 6E 
- D 1 - I - 0x01374A 04:B73A: 3B        .byte $3B, $5F, $3A, $5E   ; 
- D 1 - I - 0x01374E 04:B73E: 63        .byte $63, $62, $61, $60   ; 
- D 1 - I - 0x013752 04:B742: 1E        .byte $1E, $65, $1D, $64   ; 
- D 1 - I - 0x013756 04:B746: 68        .byte $68, $67, $66, $00   ; 
; 6F 
- D 1 - I - 0x01375A 04:B74A: 3D        .byte $3D, $9F, $3C, $93   ; 
- D 1 - I - 0x01375E 04:B74E: 3D        .byte $3D, $A0, $B2, $96   ; 
- D 1 - I - 0x013762 04:B752: 20        .byte $20, $B4, $1F, $97   ; 
- D 1 - I - 0x013766 04:B756: B6        .byte $B6, $A1, $99, $98   ; 
; 70 
- D 1 - I - 0x01376A 04:B75A: 04        .byte $04, $40, $00, $00   ; 
- D 1 - I - 0x01376E 04:B75E: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x013772 04:B762: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x013776 04:B766: 46        .byte $46, $55, $00, $00   ; 
; 71 
- D 1 - I - 0x01377A 04:B76A: 00        .byte $00, $00, $40, $BC   ; 
- D 1 - I - 0x01377E 04:B76E: 00        .byte $00, $00, $00, $40   ; 
- D 1 - I - 0x013782 04:B772: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x013786 04:B776: 00        .byte $00, $00, $69, $5A   ; 
; 72 
- D 1 - I - 0x01378A 04:B77A: 24        .byte $24, $A2, $11, $A3   ; 
- D 1 - I - 0x01378E 04:B77E: A4        .byte $A4, $A5, $A6, $A7   ; 
- D 1 - I - 0x013792 04:B782: 25        .byte $25, $A8, $12, $A9   ; 
- D 1 - I - 0x013796 04:B786: AA        .byte $AA, $AB, $AC, $AD   ; 
; 73 
- D 1 - I - 0x01379A 04:B78A: 13        .byte $13, $AE, $26, $AF   ; 
- D 1 - I - 0x01379E 04:B78E: B0        .byte $B0, $B1, $B2, $B3   ; 
- D 1 - I - 0x0137A2 04:B792: 14        .byte $14, $B4, $27, $B5   ; 
- D 1 - I - 0x0137A6 04:B796: B6        .byte $B6, $B7, $B8, $B9   ; 
; 74 
- D 1 - I - 0x0137AA 04:B79A: 33        .byte $33, $55, $00, $00   ; 
- D 1 - I - 0x0137AE 04:B79E: 4C        .byte $4C, $56, $00, $00   ; 
- D 1 - I - 0x0137B2 04:B7A2: 1A        .byte $1A, $56, $00, $00   ; 
- D 1 - I - 0x0137B6 04:B7A6: 00        .byte $00, $52, $56, $00   ; 
; 75 
- D 1 - I - 0x0137BA 04:B7AA: 00        .byte $00, $00, $69, $5E   ; 
- D 1 - I - 0x0137BE 04:B7AE: 00        .byte $00, $00, $6A, $60   ; 
- D 1 - I - 0x0137C2 04:B7B2: 00        .byte $00, $00, $6A, $64   ; 
- D 1 - I - 0x0137C6 04:B7B6: 00        .byte $00, $6A, $66, $00   ; 
; 76 
- D 1 - I - 0x0137CA 04:B7BA: 25        .byte $25, $A8, $12, $A9   ; 
- D 1 - I - 0x0137CE 04:B7BE: AA        .byte $AA, $AB, $AC, $AD   ; 
- D 1 - I - 0x0137D2 04:B7C2: 24        .byte $24, $A2, $11, $A3   ; 
- D 1 - I - 0x0137D6 04:B7C6: A4        .byte $A4, $A5, $A6, $A7   ; 
; 77 
- D 1 - I - 0x0137DA 04:B7CA: 14        .byte $14, $B4, $27, $B5   ; 
- D 1 - I - 0x0137DE 04:B7CE: B6        .byte $B6, $B7, $B8, $B9   ; 
- D 1 - I - 0x0137E2 04:B7D2: 13        .byte $13, $AE, $26, $AF   ; 
- D 1 - I - 0x0137E6 04:B7D6: B0        .byte $B0, $B1, $B2, $B3   ; 
; 78 
- D 1 - I - 0x0137EA 04:B7DA: 01        .byte $01, $BA, $02, $BB   ; 
- D 1 - I - 0x0137EE 04:B7DE: BC        .byte $BC, $07, $BD, $BE   ; 
- D 1 - I - 0x0137F2 04:B7E2: 03        .byte $03, $80, $04, $81   ; 
- D 1 - I - 0x0137F6 04:B7E6: 82        .byte $82, $83, $84, $03   ; 
; 79 
- D 1 - I - 0x0137FA 04:B7EA: 05        .byte $05, $85, $06, $82   ; 
- D 1 - I - 0x0137FE 04:B7EE: BA        .byte $BA, $02, $BB, $86   ; 
- D 1 - I - 0x013802 04:B7F2: 07        .byte $07, $BD, $08, $84   ; 
- D 1 - I - 0x013806 04:B7F6: 80        .byte $80, $04, $87, $06   ; 
; 7A 
- D 1 - I - 0x01380A 04:B7FA: 25        .byte $25, $A8, $12, $A9   ; 
- D 1 - I - 0x01380E 04:B7FE: AA        .byte $AA, $AB, $AC, $AD   ; 
- D 1 - I - 0x013812 04:B802: 24        .byte $24, $A2, $11, $A3   ; 
- D 1 - I - 0x013816 04:B806: 6E        .byte $6E, $A5, $A6, $A7   ; 
; 7B 
- D 1 - I - 0x01381A 04:B80A: 14        .byte $14, $B4, $27, $B5   ; 
- D 1 - I - 0x01381E 04:B80E: B6        .byte $B6, $B7, $B8, $B9   ; 
- D 1 - I - 0x013822 04:B812: 13        .byte $13, $AE, $26, $AF   ; 
- D 1 - I - 0x013826 04:B816: B0        .byte $B0, $B1, $B2, $8E   ; 
; 7C 
- D 1 - I - 0x01382A 04:B81A: 03        .byte $03, $80, $04, $81   ; 
- D 1 - I - 0x01382E 04:B81E: 82        .byte $82, $83, $84, $03   ; 
- D 1 - I - 0x013832 04:B822: 05        .byte $05, $85, $06, $82   ; 
- D 1 - I - 0x013836 04:B826: BA        .byte $BA, $02, $BB, $86   ; 
; 7D 
- D 1 - I - 0x01383A 04:B82A: 07        .byte $07, $BD, $08, $84   ; 
- D 1 - I - 0x01383E 04:B82E: 80        .byte $80, $04, $87, $06   ; 
- D 1 - I - 0x013842 04:B832: 01        .byte $01, $BA, $02, $BB   ; 
- D 1 - I - 0x013846 04:B836: BC        .byte $BC, $07, $BD, $BE   ; 
; 7E 
- D 1 - I - 0x01384A 04:B83A: 0F        .byte $0F, $6F, $12, $A9   ; 
- D 1 - I - 0x01384E 04:B83E: 0A        .byte $0A, $0B, $71, $AD   ; 
- - - - - - 0x013852 04:B842: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x013856 04:B846: 00        .byte $00, $00, $00, $00   ; 
; 7F 
- D 1 - I - 0x01385A 04:B84A: 14        .byte $14, $B4, $17, $0E   ; 
- D 1 - I - 0x01385E 04:B84E: B6        .byte $B6, $91, $0C, $0D   ; 
- - - - - - 0x013862 04:B852: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x013866 04:B856: 00        .byte $00, $00, $00, $00   ; 
; 80 
- D 1 - I - 0x01386A 04:B85A: 28        .byte $28, $7D, $15, $00   ; 
- D 1 - I - 0x01386E 04:B85E: 29        .byte $29, $6D, $28, $7C   ; 
- D 1 - I - 0x013872 04:B862: 28        .byte $28, $6C, $29, $6D   ; 
- D 1 - I - 0x013876 04:B866: 29        .byte $29, $6D, $28, $6C   ; 
; 81 
- D 1 - I - 0x01387A 04:B86A: 01        .byte $01, $BA, $02, $BB   ; 
- D 1 - I - 0x01387E 04:B86E: 86        .byte $86, $BA, $BD, $BE   ; 
- D 1 - I - 0x013882 04:B872: 24        .byte $24, $A2, $2A, $00   ; 
- D 1 - I - 0x013886 04:B876: 6E        .byte $6E, $A5, $73, $74   ; 
; 82 
- D 1 - I - 0x01388A 04:B87A: 05        .byte $05, $85, $06, $41   ; 
- D 1 - I - 0x01388E 04:B87E: BA        .byte $BA, $02, $40, $00   ; 
- D 1 - I - 0x013892 04:B882: 23        .byte $23, $9A, $26, $AF   ; 
- D 1 - I - 0x013896 04:B886: 31        .byte $31, $92, $B2, $8E   ; 
; 83 
- D 1 - I - 0x01389A 04:B88A: 10        .byte $10, $9C, $2D, $8C   ; 
- D 1 - I - 0x01389E 04:B88E: 9B        .byte $9B, $8C, $2C, $8D   ; 
- D 1 - I - 0x0138A2 04:B892: 2C        .byte $2C, $8D, $2B, $8C   ; 
- D 1 - I - 0x0138A6 04:B896: 2B        .byte $2B, $8C, $2C, $8D   ; 
; 84 
- D 1 - I - 0x0138AA 04:B89A: 2E        .byte $2E, $6B, $29, $6D   ; 
- D 1 - I - 0x0138AE 04:B89E: 28        .byte $28, $6C, $2E, $6B   ; 
- D 1 - I - 0x0138B2 04:B8A2: 29        .byte $29, $6D, $24, $A2   ; 
- D 1 - I - 0x0138B6 04:B8A6: 2E        .byte $2E, $6B, $6E, $A5   ; 
; 85 
- D 1 - I - 0x0138BA 04:B8AA: 24        .byte $24, $A2, $2F, $74   ; 
- D 1 - I - 0x0138BE 04:B8AE: 6E        .byte $6E, $A5, $73, $75   ; 
- D 1 - I - 0x0138C2 04:B8B2: 16        .byte $16, $6F, $12, $78   ; 
- D 1 - I - 0x0138C6 04:B8B6: A6        .byte $A6, $70, $71, $AD   ; 
; 86 
- D 1 - I - 0x0138CA 04:B8BA: 31        .byte $31, $94, $26, $AF   ; 
- D 1 - I - 0x0138CE 04:B8BE: 95        .byte $95, $92, $B2, $8E   ; 
- D 1 - I - 0x0138D2 04:B8C2: 18        .byte $18, $B4, $17, $8F   ; 
- D 1 - I - 0x0138D6 04:B8C6: B6        .byte $B6, $91, $90, $B1   ; 
; 87 
- D 1 - I - 0x0138DA 04:B8CA: 2C        .byte $2C, $8D, $30, $8B   ; 
- D 1 - I - 0x0138DE 04:B8CE: 30        .byte $30, $8B, $2B, $8C   ; 
- D 1 - I - 0x0138E2 04:B8D2: 26        .byte $26, $AF, $2C, $8D   ; 
- D 1 - I - 0x0138E6 04:B8D6: B2        .byte $B2, $8E, $30, $8B   ; 
; 88 
- D 1 - I - 0x0138EA 04:B8DA: 24        .byte $24, $A2, $16, $6F   ; 
- D 1 - I - 0x0138EE 04:B8DE: A4        .byte $A4, $A5, $A6, $70   ; 
- D 1 - I - 0x0138F2 04:B8E2: 25        .byte $25, $A8, $12, $72   ; 
- D 1 - I - 0x0138F6 04:B8E6: AA        .byte $AA, $AB, $AC, $AD   ; 
; 89 
- D 1 - I - 0x0138FA 04:B8EA: 12        .byte $12, $72, $00, $3E   ; 
- D 1 - I - 0x0138FE 04:B8EE: 71        .byte $71, $AD, $3E, $BE   ; 
- D 1 - I - 0x013902 04:B8F2: 00        .byte $00, $3E, $04, $81   ; 
- D 1 - I - 0x013906 04:B8F6: 00        .byte $00, $83, $84, $03   ; 
; 8A 
- D 1 - I - 0x01390A 04:B8FA: 03        .byte $03, $00, $19, $B4   ; 
- D 1 - I - 0x01390E 04:B8FE: BA        .byte $BA, $3F, $B6, $91   ; 
- D 1 - I - 0x013912 04:B902: 07        .byte $07, $BD, $03, $00   ; 
- D 1 - I - 0x013916 04:B906: 80        .byte $80, $04, $87, $3F   ; 
; 8B 
- D 1 - I - 0x01391A 04:B90A: 17        .byte $17, $8F, $26, $AF   ; 
- D 1 - I - 0x01391E 04:B90E: 90        .byte $90, $B1, $B2, $B3   ; 
- D 1 - I - 0x013922 04:B912: 19        .byte $19, $B4, $27, $B5   ; 
- D 1 - I - 0x013926 04:B916: B6        .byte $B6, $B7, $B8, $B9   ; 
; 8C 
- D 1 - I - 0x01392A 04:B91A: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01392E 04:B91E: 87        .byte $87, $3E, $3F, $3F   ; 
- D 1 - I - 0x013932 04:B922: 03        .byte $03, $80, $04, $81   ; 
- D 1 - I - 0x013936 04:B926: 82        .byte $82, $83, $84, $03   ; 
; 8D 
- D 1 - I - 0x01393A 04:B92A: 32        .byte $32, $8B, $33, $34   ; 
- D 1 - I - 0x01393E 04:B92E: 8D        .byte $8D, $33, $8E, $8F   ; 
- D 1 - I - 0x013942 04:B932: 23        .byte $23, $8E, $37, $38   ; 
- D 1 - I - 0x013946 04:B936: 00        .byte $00, $91, $92, $93   ; 
; 8E 
- D 1 - I - 0x01394A 04:B93A: 34        .byte $34, $34, $34, $34   ; 
- D 1 - I - 0x01394E 04:B93E: 8F        .byte $8F, $DD, $DD, $8F   ; 
- D 1 - I - 0x013952 04:B942: 38        .byte $38, $37, $37, $38   ; 
- D 1 - I - 0x013956 04:B946: 94        .byte $94, $95, $92, $93   ; 
; 8F 
- D 1 - I - 0x01395A 04:B94A: 34        .byte $34, $8C, $35, $2C   ; 
- D 1 - I - 0x01395E 04:B94E: 8F        .byte $8F, $36, $8C, $90   ; 
- D 1 - I - 0x013962 04:B952: 38        .byte $38, $37, $36, $00   ; 
- D 1 - I - 0x013966 04:B956: 94        .byte $94, $95, $96, $00   ; 
; 90 
- D 1 - I - 0x01396A 04:B95A: 17        .byte $17, $97, $18, $98   ; 
- D 1 - I - 0x01396E 04:B95E: 9A        .byte $9A, $9B, $9C, $9D   ; 
- D 1 - I - 0x013972 04:B962: 10        .byte $10, $89, $1A, $A3   ; 
- D 1 - I - 0x013976 04:B966: 00        .byte $00, $00, $00, $A8   ; 
; 91 
- D 1 - I - 0x01397A 04:B96A: 18        .byte $18, $98, $18, $98   ; 
- D 1 - I - 0x01397E 04:B96E: 9E        .byte $9E, $9D, $9E, $9D   ; 
- D 1 - I - 0x013982 04:B972: 1B        .byte $1B, $A3, $1B, $A3   ; 
- D 1 - I - 0x013986 04:B976: A9        .byte $A9, $A8, $A9, $A8   ; 
; 92 
- D 1 - I - 0x01398A 04:B97A: 18        .byte $18, $98, $19, $99   ; 
- D 1 - I - 0x01398E 04:B97E: 9E        .byte $9E, $9F, $A0, $A1   ; 
- D 1 - I - 0x013992 04:B982: 1B        .byte $1B, $A7, $8A, $00   ; 
- D 1 - I - 0x013996 04:B986: A9        .byte $A9, $00, $00, $00   ; 



_off007_0x01399A_05_area_6:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 1 - I - 0x01399A 04:B98A: 00        .byte $00, $55, $00, $00, $00, $00, $00, $00, $55, $55, $55, $55, $00, $00, $00, $00   ; 00 
- D 1 - I - 0x0139AA 04:B99A: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $55, $55   ; 10 
- D 1 - I - 0x0139BA 04:B9AA: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55, $55, $00, $00, $55, $11, $00, $00, $44   ; 20 
- D 1 - I - 0x0139CA 04:B9BA: 51        .byte $51, $00, $00, $54, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 30 
- D 1 - I - 0x0139DA 04:B9CA: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 40 
- D 1 - I - 0x0139EA 04:B9DA: 00        .byte $00, $44, $11, $00, $CC, $44, $11, $33, $C0, $44, $11, $30, $0C, $44, $11, $03   ; 50 
- D 1 - I - 0x0139FA 04:B9EA: 00        .byte $00, $44, $11, $00, $04, $05, $05, $01, $05, $01, $04, $05, $00, $00, $00, $00   ; 60 
- D 1 - I - 0x013A0A 04:B9FA: 01        .byte $01, $04, $00, $00, $00, $00, $00, $00, $55, $55, $00, $00, $55, $55, $00, $00   ; 70 
- D 1 - I - 0x013A1A 04:BA0A: 00        .byte $00, $05, $05, $00, $00, $00, $00, $00, $00, $54, $51, $00, $55, $C0, $F0, $30   ; 80 
- D 1 - I - 0x013A2A 04:BA1A: 00        .byte $00, $00, $00                                                                    ; 90 


; bzk garbage
- - - - - - 0x013A2D 04:BA1D: 00        .byte $00   ; 
- - - - - - 0x013A2E 04:BA1E: 00        .byte $00   ; 
- - - - - - 0x013A2F 04:BA1F: 00        .byte $00   ; 
- - - - - - 0x013A30 04:BA20: 00        .byte $00   ; 
- - - - - - 0x013A31 04:BA21: 00        .byte $00   ; 
- - - - - - 0x013A32 04:BA22: 00        .byte $00   ; 
- - - - - - 0x013A33 04:BA23: 00        .byte $00   ; 
- - - - - - 0x013A34 04:BA24: 00        .byte $00   ; 
- - - - - - 0x013A35 04:BA25: 00        .byte $00   ; 
- - - - - - 0x013A36 04:BA26: 00        .byte $00   ; 
- - - - - - 0x013A37 04:BA27: 00        .byte $00   ; 
- - - - - - 0x013A38 04:BA28: 00        .byte $00   ; 
- - - - - - 0x013A39 04:BA29: 00        .byte $00   ; 


; bzk garbage
- - - - - - 0x013A3A 04:BA2A: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013A40 04:BA30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013A50 04:BA40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013A60 04:BA50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013A70 04:BA60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013A80 04:BA70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013A90 04:BA80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013AA0 04:BA90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013AB0 04:BAA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013AC0 04:BAB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013AD0 04:BAC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013AE0 04:BAD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013AF0 04:BAE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013B00 04:BAF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013B10 04:BB00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013B20 04:BB10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013B30 04:BB20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013B40 04:BB30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013B50 04:BB40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013B60 04:BB50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013B70 04:BB60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013B80 04:BB70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013B90 04:BB80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013BA0 04:BB90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013BB0 04:BBA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013BC0 04:BBB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013BD0 04:BBC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013BE0 04:BBD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013BF0 04:BBE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013C00 04:BBF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013C10 04:BC00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013C20 04:BC10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013C30 04:BC20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013C40 04:BC30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013C50 04:BC40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013C60 04:BC50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013C70 04:BC60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013C80 04:BC70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013C90 04:BC80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013CA0 04:BC90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013CB0 04:BCA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013CC0 04:BCB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013CD0 04:BCC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013CE0 04:BCD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013CF0 04:BCE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013D00 04:BCF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013D10 04:BD00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013D20 04:BD10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013D30 04:BD20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013D40 04:BD30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013D50 04:BD40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013D60 04:BD50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013D70 04:BD60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013D80 04:BD70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013D90 04:BD80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013DA0 04:BD90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013DB0 04:BDA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013DC0 04:BDB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013DD0 04:BDC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013DE0 04:BDD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013DF0 04:BDE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013E00 04:BDF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013E10 04:BE00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013E20 04:BE10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013E30 04:BE20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013E40 04:BE30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013E50 04:BE40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013E60 04:BE50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013E70 04:BE60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013E80 04:BE70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013E90 04:BE80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013EA0 04:BE90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013EB0 04:BEA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013EC0 04:BEB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013ED0 04:BEC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013EE0 04:BED0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013EF0 04:BEE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013F00 04:BEF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013F10 04:BF00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013F20 04:BF10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013F30 04:BF20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013F40 04:BF30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013F50 04:BF40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013F60 04:BF50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013F70 04:BF60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013F80 04:BF70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013F90 04:BF80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013FA0 04:BF90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013FB0 04:BFA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013FC0 04:BFB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013FD0 04:BFC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013FE0 04:BFD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013FF0 04:BFE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x014000 04:BFF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



.out .sprintf("Free bytes in bank 38: 0x%04X [%d]", ($BFFF - *), ($BFFF - *))



.segment "BANK_38b"
- - - - - - 0x01400F 04:BFFF: 39        .byte con_prg_bank + $39   ; 



