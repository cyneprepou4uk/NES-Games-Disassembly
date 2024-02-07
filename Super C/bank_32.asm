.segment "BANK_32"
.include "bank_ram.inc"
.include "bank_val.inc"
.org $8000 ; for listing file
; 0x004010-0x00600F



.export _off001_0x004011_20_cannon_hidden_1
.export _off001_0x0040E9_22_boss_area_1_gun
.export _off001_0x004250_23_boss_area_1_door
.export _off001_0x0043E0_62_helicopter_rotor_blade
.export _off001_0x00448A_6F_thunder
.export _off001_0x004506_21_boss_area_1_helicopter
.export _off001_0x004C14_26_hidden_rifleman
.export _off001_0x004CEA_27_cannon_hidden_3
.export _off001_0x004DFF_28_cannon_howitzer
.export _off001_0x004EDF_29_bullet_cannon_howitzer
.export _off001_0x004F73_3F_earthquake
.export _off001_0x0051D0_3A_bullet_robospider
.export _off001_0x005216_4E_robospider
.export _off001_0x0059D2_4B_boss_3_ball_center
.export _off001_0x005BEE_50_boss_3_ball_violet



; bzk this byte must be placed at 8000
- D 0 - - - 0x004010 01:8000: 32        .byte con_prg_bank + $32   ; 



_off001_0x004011_20_cannon_hidden_1:
- D 0 - I - 0x004011 01:8001: 13 80     .word ofs_038_20_8013_01_initialize_object ; 
- D 0 - I - 0x004013 01:8003: 3A 80     .word ofs_038_20_803A_02 ; 
- D 0 - I - 0x004015 01:8005: 49 80     .word ofs_038_20_8049_03 ; 
- D 0 - I - 0x004017 01:8007: 6C 80     .word ofs_038_20_806C_04 ; 
- D 0 - I - 0x004019 01:8009: 54 A3     .word ofs_038_20_0x006364_05_delete_object_06 ; 
- D 0 - I - 0x00401B 01:800B: 6B A3     .word ofs_038_20_0x00637B_06_delete_object_07 ; 
- D 0 - I - 0x00401D 01:800D: B3 80     .word ofs_038_20_80B3_07 ; 
- D 0 - I - 0x00401F 01:800F: FD A2     .word ofs_038_20_0x00630D_08 ; 
- D 0 - I - 0x004021 01:8011: 3D A3     .word ofs_038_20_0x00634D_09_delete_object_04 ; 



ofs_038_20_8013_01_initialize_object:
C - - J - - 0x004023 01:8013: A9 01     LDA #$01
C - - - - - 0x004025 01:8015: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x004028 01:8018: A9 81     LDA #$81
C - - - - - 0x00402A 01:801A: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x00402D 01:801D: A9 0C     LDA #$0C
C - - - - - 0x00402F 01:801F: 20 95 AB  JSR sub_0x006BA5_set_dynamic_hp_to_enemy
C - - - - - 0x004032 01:8022: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x004035 01:8025: 18        CLC
C - - - - - 0x004036 01:8026: 69 08     ADC #$08
C - - - - - 0x004038 01:8028: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x00403B 01:802B: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x00403E 01:802E: 38        SEC
C - - - - - 0x00403F 01:802F: E9 08     SBC #$08
C - - - - - 0x004041 01:8031: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x004044 01:8034: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x004047 01:8037: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_20_803A_02:
C - - J - - 0x00404A 01:803A: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x00404D 01:803D: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x004050 01:8040: C9 E8     CMP #$E8
C - - - - - 0x004052 01:8042: B0 6E     BCS bra_80B2_RTS
C - - - - - 0x004054 01:8044: A9 01     LDA #$01
C - - - - - 0x004056 01:8046: 4C E0 A2  JMP loc_0x0062F0



ofs_038_20_8049_03:
C - - J - - 0x004059 01:8049: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x00405C 01:804C: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x00405F 01:804F: D0 61     BNE bra_80B2_RTS
C - - - - - 0x004061 01:8051: 20 C0 80  JSR sub_80C0
C - - - - - 0x004064 01:8054: B0 59     BCS bra_80AF
C - - - - - 0x004066 01:8056: FE 10 07  INC ram_0710_obj,X
C - - - - - 0x004069 01:8059: BD 10 07  LDA ram_0710_obj,X
C - - - - - 0x00406C 01:805C: C9 02     CMP #$02
C - - - - - 0x00406E 01:805E: A9 0C     LDA #$0C
C - - - - - 0x004070 01:8060: 90 4D     BCC bra_80AF
C - - - - - 0x004072 01:8062: A9 00     LDA #$00
C - - - - - 0x004074 01:8064: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x004077 01:8067: A9 20     LDA #$20
C - - - - - 0x004079 01:8069: 4C E0 A2  JMP loc_0x0062F0



ofs_038_20_806C_04:
C - - J - - 0x00407C 01:806C: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x00407F 01:806F: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x004082 01:8072: D0 3E     BNE bra_80B2_RTS
C - - - - - 0x004084 01:8074: A5 51     LDA ram_game_loop
C - - - - - 0x004086 01:8076: D0 06     BNE bra_807E_2nd_loop
; if 1st loop
C - - - - - 0x004088 01:8078: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x00408B 01:807B: 4A        LSR
C - - - - - 0x00408C 01:807C: B0 34     BCS bra_80B2_RTS
bra_807E_2nd_loop:
C - - - - - 0x00408E 01:807E: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x004091 01:8081: C9 30     CMP #$30
C - - - - - 0x004093 01:8083: 90 2D     BCC bra_80B2_RTS
C - - - - - 0x004095 01:8085: A0 02     LDY #$02
C - - - - - 0x004097 01:8087: 20 C8 AB  JSR sub_0x006BD8
C - - - - - 0x00409A 01:808A: 90 26     BCC bra_80B2_RTS
; C = 1
C - - - - - 0x00409C 01:808C: A4 11     LDY ram_0011
C - - - - - 0x00409E 01:808E: A9 00     LDA #< $FD00
C - - - - - 0x0040A0 01:8090: 99 BC 06  STA ram_spd_X_lo_obj,Y
C - - - - - 0x0040A3 01:8093: A9 FD     LDA #> $FD00
C - - - - - 0x0040A5 01:8095: 99 CA 06  STA ram_spd_X_hi_obj,Y
C - - - - - 0x0040A8 01:8098: A9 01     LDA #$01
C - - - - - 0x0040AA 01:809A: 99 48 07  STA ram_0748_obj,Y
C - - - - - 0x0040AD 01:809D: B9 3C 05  LDA ram_pos_X_hi_enemy,Y
C - - - - - 0x0040B0 01:80A0: E9 10     SBC #$10
C - - - - - 0x0040B2 01:80A2: 99 3C 05  STA ram_pos_X_hi_enemy,Y
C - - - - - 0x0040B5 01:80A5: B9 22 05  LDA ram_pos_Y_hi_enemy,Y
C - - - - - 0x0040B8 01:80A8: 69 02     ADC #$02
C - - - - - 0x0040BA 01:80AA: 99 22 05  STA ram_pos_Y_hi_enemy,Y
C - - - - - 0x0040BD 01:80AD: A9 60     LDA #$60
bra_80AF:
C - - - - - 0x0040BF 01:80AF: 9D E6 06  STA ram_06E6_obj,X
bra_80B2_RTS:
C - - - - - 0x0040C2 01:80B2: 60        RTS



ofs_038_20_80B3_07:
C - - J - - 0x0040C3 01:80B3: A0 02     LDY #$02
C - - - - - 0x0040C5 01:80B5: 20 C3 80  JSR sub_80C3
C - - - - - 0x0040C8 01:80B8: B0 03     BCS bra_80BD
C - - - - - 0x0040CA 01:80BA: 4C 9A A2  JMP loc_0x0062AA
bra_80BD:
- - - - - - 0x0040CD 01:80BD: 4C B7 A6  JMP loc_0x0066C7_delete_object_03



sub_80C0:
C - - - - - 0x0040D0 01:80C0: BC 10 07  LDY ram_0710_obj,X
sub_80C3:
C - - - - - 0x0040D3 01:80C3: B9 D6 80  LDA tbl_80D6,Y
C - - - - - 0x0040D6 01:80C6: 85 0C     STA ram_000C
C - - - - - 0x0040D8 01:80C8: B9 D3 80  LDA tbl_80D3,Y
C - - - - - 0x0040DB 01:80CB: A0 10     LDY #$10
C - - - - - 0x0040DD 01:80CD: 20 A8 A8  JSR sub_0x0068B8
C - - - - - 0x0040E0 01:80D0: A9 01     LDA #$01
C - - - - - 0x0040E2 01:80D2: 60        RTS



tbl_80D3:
- D 0 - - - 0x0040E3 01:80D3: F2        .byte $F2   ; 00 
- D 0 - - - 0x0040E4 01:80D4: F3        .byte $F3   ; 01 
- D 0 - - - 0x0040E5 01:80D5: 01        .byte $01   ; 02 



tbl_80D6:
- D 0 - - - 0x0040E6 01:80D6: F1        .byte $F1   ; 00 
- D 0 - - - 0x0040E7 01:80D7: F0        .byte $F0   ; 01 
- D 0 - - - 0x0040E8 01:80D8: 03        .byte $03   ; 02 



_off001_0x0040E9_22_boss_area_1_gun:
- D 0 - I - 0x0040E9 01:80D9: E7 80     .word ofs_038_22_80E7_01_initialize_object ; 
- D 0 - I - 0x0040EB 01:80DB: 08 81     .word ofs_038_22_8108_02 ; 
- D 0 - I - 0x0040ED 01:80DD: 54 A3     .word ofs_038_22_0x006364_03_delete_object_06 ; 
- D 0 - I - 0x0040EF 01:80DF: 6B A3     .word ofs_038_22_0x00637B_04_delete_object_07 ; 
- D 0 - I - 0x0040F1 01:80E1: 97 81     .word ofs_038_22_8197_05 ; 
- D 0 - I - 0x0040F3 01:80E3: FD A2     .word ofs_038_22_0x00630D_06 ; 
- D 0 - I - 0x0040F5 01:80E5: AD 81     .word ofs_038_22_81AD_07 ; 



ofs_038_22_80E7_01_initialize_object:
C - - J - - 0x0040F7 01:80E7: A9 08     LDA #$08
C - - - - - 0x0040F9 01:80E9: 20 95 AB  JSR sub_0x006BA5_set_dynamic_hp_to_enemy
C - - - - - 0x0040FC 01:80EC: A9 02     LDA #$02
C - - - - - 0x0040FE 01:80EE: 9D 64 07  STA ram_0764_obj,X
C - - - - - 0x004101 01:80F1: A9 03     LDA #$03
C - - - - - 0x004103 01:80F3: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x004106 01:80F6: BC 1E 07  LDY ram_obj_flags,X
C - - - - - 0x004109 01:80F9: B9 04 81  LDA tbl_8104,Y
C - - - - - 0x00410C 01:80FC: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x00410F 01:80FF: A9 01     LDA #$01
C - - - - - 0x004111 01:8101: 4C E0 A2  JMP loc_0x0062F0



tbl_8104:
- D 0 - - - 0x004114 01:8104: 6B        .byte $6B   ; 00 
- D 0 - - - 0x004115 01:8105: 95        .byte $95   ; 01 
- D 0 - - - 0x004116 01:8106: C1        .byte $C1   ; 02 
- D 0 - - - 0x004117 01:8107: F8        .byte $F8   ; 03 



ofs_038_22_8108_02:
C - - J - - 0x004118 01:8108: A9 01     LDA #$01
C - - - - - 0x00411A 01:810A: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x00411D 01:810D: 20 E6 81  JSR sub_81E6
C - - - - - 0x004120 01:8110: A9 81     LDA #$81
C - - - - - 0x004122 01:8112: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x004125 01:8115: BD 9C 07  LDA ram_079C_obj,X
C - - - - - 0x004128 01:8118: D0 7C     BNE bra_8196_RTS
C - - - - - 0x00412A 01:811A: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x00412D 01:811D: C9 08     CMP #$08
C - - - - - 0x00412F 01:811F: 90 75     BCC bra_8196_RTS
C - - - - - 0x004131 01:8121: C9 10     CMP #$10
C - - - - - 0x004133 01:8123: 90 0D     BCC bra_8132
C - - - - - 0x004135 01:8125: C9 FC     CMP #$FC
C - - - - - 0x004137 01:8127: B0 6D     BCS bra_8196_RTS
C - - - - - 0x004139 01:8129: C9 F0     CMP #$F0
C - - - - - 0x00413B 01:812B: B0 05     BCS bra_8132
C - - - - - 0x00413D 01:812D: A9 00     LDA #$00
C - - - - - 0x00413F 01:812F: 9D 2C 07  STA ram_072C_obj,X
bra_8132:
C - - - - - 0x004142 01:8132: BC 80 07  LDY ram_0780_obj,X
C - - - - - 0x004145 01:8135: B9 AE 06  LDA ram_spd_Y_hi_obj,Y
C - - - - - 0x004148 01:8138: 19 A0 06  ORA ram_spd_Y_lo_obj,Y
C - - - - - 0x00414B 01:813B: F0 05     BEQ bra_8142    ; if not moving along Y axis
; if moving along Y axis
C - - - - - 0x00414D 01:813D: B9 AE 06  LDA ram_spd_Y_hi_obj,Y
C - - - - - 0x004150 01:8140: 10 23     BPL bra_8165    ; if moving down
; if moving up
bra_8142:
C - - - - - 0x004152 01:8142: DE F4 06  DEC ram_06F4_obj,X
C - - - - - 0x004155 01:8145: D0 1E     BNE bra_8165
C - - - - - 0x004157 01:8147: BD 72 07  LDA ram_0772_obj,X
C - - - - - 0x00415A 01:814A: 85 0A     STA ram_000A
C - - - - - 0x00415C 01:814C: 20 AE AA  JSR sub_0x006ABE
C - - - - - 0x00415F 01:814F: A0 02     LDY #$02
C - - - - - 0x004161 01:8151: 20 27 F3  JSR sub_0x01F337
C - - - - - 0x004164 01:8154: A9 10     LDA #$10
C - - - - - 0x004166 01:8156: DE 64 07  DEC ram_0764_obj,X
C - - - - - 0x004169 01:8159: D0 07     BNE bra_8162
C - - - - - 0x00416B 01:815B: A9 02     LDA #$02
C - - - - - 0x00416D 01:815D: 9D 64 07  STA ram_0764_obj,X
C - - - - - 0x004170 01:8160: A9 89     LDA #$89
bra_8162:
C - - - - - 0x004172 01:8162: 9D F4 06  STA ram_06F4_obj,X
bra_8165:
C - - - - - 0x004175 01:8165: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x004178 01:8168: D0 2C     BNE bra_8196_RTS
C - - - - - 0x00417A 01:816A: A9 0D     LDA #$0D
C - - - - - 0x00417C 01:816C: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x00417F 01:816F: 20 0B AB  JSR sub_0x006B1B_set_target_on_closest_player_X_pos
C - - - - - 0x004182 01:8172: 98        TYA
C - - - - - 0x004183 01:8173: 9D 72 07  STA ram_0772_obj,X
C - - - - - 0x004186 01:8176: 20 AE AA  JSR sub_0x006ABE
C - - - - - 0x004189 01:8179: 20 A5 F4  JSR sub_0x01F4B5
C - - - - - 0x00418C 01:817C: A0 00     LDY #$00
C - - - - - 0x00418E 01:817E: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x004191 01:8181: C9 05     CMP #$05
C - - - - - 0x004193 01:8183: 90 0A     BCC bra_818F
C - - - - - 0x004195 01:8185: C9 12     CMP #$12
C - - - - - 0x004197 01:8187: B0 06     BCS bra_818F
C - - - - - 0x004199 01:8189: C8        INY ; 01
C - - - - - 0x00419A 01:818A: C9 08     CMP #$08
C - - - - - 0x00419C 01:818C: 90 01     BCC bra_818F
C - - - - - 0x00419E 01:818E: C8        INY ; 02
bra_818F:
C - - - - - 0x00419F 01:818F: 98        TYA
C - - - - - 0x0041A0 01:8190: 18        CLC
C - - - - - 0x0041A1 01:8191: 69 01     ADC #$01
C - - - - - 0x0041A3 01:8193: 4C B0 81  JMP loc_81B0
bra_8196_RTS:
C - - - - - 0x0041A6 01:8196: 60        RTS



ofs_038_22_8197_05:
C - - J - - 0x0041A7 01:8197: 20 E6 81  JSR sub_81E6
C - - - - - 0x0041AA 01:819A: A9 04     LDA #$04
C - - - - - 0x0041AC 01:819C: 20 B0 81  JSR sub_81B0
C - - - - - 0x0041AF 01:819F: B0 F5     BCS bra_8196_RTS
C - - - - - 0x0041B1 01:81A1: BD 80 07  LDA ram_0780_obj,X
C - - - - - 0x0041B4 01:81A4: AA        TAX
C - - - - - 0x0041B5 01:81A5: DE 64 07  DEC ram_0764_obj,X
C - - - - - 0x0041B8 01:81A8: A6 10     LDX ram_0010
C - - - - - 0x0041BA 01:81AA: 4C 9A A2  JMP loc_0x0062AA



ofs_038_22_81AD_07: ; bzk optimize
C - - J - - 0x0041BD 01:81AD: 4C 3D A3  JMP loc_0x00634D_delete_object_04



loc_81B0:
sub_81B0:
C D 0 - - - 0x0041C0 01:81B0: 85 08     STA ram_0008
C - - - - - 0x0041C2 01:81B2: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x0041C5 01:81B5: C9 08     CMP #$08
C - - - - - 0x0041C7 01:81B7: 90 21     BCC bra_81DA
C - - - - - 0x0041C9 01:81B9: C9 FC     CMP #$FC
C - - - - - 0x0041CB 01:81BB: B0 1D     BCS bra_81DA
C - - - - - 0x0041CD 01:81BD: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x0041D0 01:81C0: A6 1E     LDX ram_index_ppu_buffer
C - - - - - 0x0041D2 01:81C2: E0 50     CPX #$50
C - - - - - 0x0041D4 01:81C4: B0 11     BCS bra_81D7
C - - - - - 0x0041D6 01:81C6: 29 07     AND #$07
C - - - - - 0x0041D8 01:81C8: 0A        ASL
C - - - - - 0x0041D9 01:81C9: A8        TAY
C - - - - - 0x0041DA 01:81CA: B9 DC 81  LDA tbl_81DC_ppu_addr,Y
C - - - - - 0x0041DD 01:81CD: 85 00     STA ram_0000
C - - - - - 0x0041DF 01:81CF: B9 DD 81  LDA tbl_81DC_ppu_addr + $01,Y
C - - - - - 0x0041E2 01:81D2: 85 01     STA ram_0001
C - - - - - 0x0041E4 01:81D4: 20 3B BC  JSR sub_0x007C4B
bra_81D7:
C - - - - - 0x0041E7 01:81D7: A6 10     LDX ram_0010
C - - - - - 0x0041E9 01:81D9: 60        RTS
bra_81DA:
- - - - - - 0x0041EA 01:81DA: 18        CLC
- - - - - - 0x0041EB 01:81DB: 60        RTS



tbl_81DC_ppu_addr:
- D 0 - - - 0x0041EC 01:81DC: 8D 2E     .word $2E8D ; 00 
- D 0 - - - 0x0041EE 01:81DE: 90 2E     .word $2E90 ; 01 
- D 0 - - - 0x0041F0 01:81E0: 93 2E     .word $2E93 ; 02 
- D 0 - - - 0x0041F2 01:81E2: 96 2E     .word $2E96 ; 03 



sub_81E4:
C - - - - - 0x0041F4 01:81E4: A0 08     LDY #$08    ; bzk optimize, Y will be overwritten
sub_81E6:
C - - - - - 0x0041F6 01:81E6: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x0041F9 01:81E9: 29 07     AND #$07
C - - - - - 0x0041FB 01:81EB: 0A        ASL
C - - - - - 0x0041FC 01:81EC: A8        TAY
C - - - - - 0x0041FD 01:81ED: B9 36 82  LDA tbl_8236,Y
C - - - - - 0x004200 01:81F0: 85 08     STA ram_0008
C - - - - - 0x004202 01:81F2: 0A        ASL
C - - - - - 0x004203 01:81F3: A9 00     LDA #$00
C - - - - - 0x004205 01:81F5: 90 02     BCC bra_81F9
- - - - - - 0x004207 01:81F7: A9 FF     LDA #$FF
bra_81F9:
C - - - - - 0x004209 01:81F9: 85 0A     STA ram_000A
C - - - - - 0x00420B 01:81FB: B9 37 82  LDA tbl_8236 + $01,Y
C - - - - - 0x00420E 01:81FE: 85 09     STA ram_0009
C - - - - - 0x004210 01:8200: 0A        ASL
C - - - - - 0x004211 01:8201: A9 00     LDA #$00
C - - - - - 0x004213 01:8203: 90 02     BCC bra_8207
C - - - - - 0x004215 01:8205: A9 FF     LDA #$FF
bra_8207:
C - - - - - 0x004217 01:8207: 85 0B     STA ram_000B
C - - - - - 0x004219 01:8209: BC 80 07  LDY ram_0780_obj,X
C - - - - - 0x00421C 01:820C: A5 09     LDA ram_0009
C - - - - - 0x00421E 01:820E: 18        CLC
C - - - - - 0x00421F 01:820F: 79 3C 05  ADC ram_pos_X_hi_enemy,Y
C - - - - - 0x004222 01:8212: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x004225 01:8215: A5 0B     LDA ram_000B
C - - - - - 0x004227 01:8217: 79 9C 07  ADC ram_079C_obj,Y
C - - - - - 0x00422A 01:821A: 9D 9C 07  STA ram_079C_obj,X
C - - - - - 0x00422D 01:821D: D0 14     BNE bra_8233
C - - - - - 0x00422F 01:821F: A5 08     LDA ram_0008
C - - - - - 0x004231 01:8221: 18        CLC
C - - - - - 0x004232 01:8222: 79 22 05  ADC ram_pos_Y_hi_enemy,Y
C - - - - - 0x004235 01:8225: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x004238 01:8228: A5 0A     LDA ram_000A
C - - - - - 0x00423A 01:822A: 79 8E 07  ADC ram_078E_obj,Y
C - - - - - 0x00423D 01:822D: 9D 8E 07  STA ram_078E_obj,X
C - - - - - 0x004240 01:8230: D0 01     BNE bra_8233
C - - - - - 0x004242 01:8232: 60        RTS
bra_8233:
C - - - - - 0x004243 01:8233: 4C 7D A2  JMP loc_0x00628D_clear_anim_id



tbl_8236:
;                                              ----------- pos_Y
;                                              |    ------ pos_X
;                                              |    |
- D 0 - - - 0x004246 01:8236: 02        .byte $02, $D0   ; 00 
- D 0 - - - 0x004248 01:8238: 02        .byte $02, $E8   ; 01 
- D 0 - - - 0x00424A 01:823A: 02        .byte $02, $00   ; 02 
- D 0 - - - 0x00424C 01:823C: 02        .byte $02, $18   ; 03 
- D 0 - - - 0x00424E 01:823E: 0A        .byte $0A, $B0   ; 04 



_off001_0x004250_23_boss_area_1_door:
; helicopter boss area 1
- D 0 - I - 0x004250 01:8240: 4E 82     .word ofs_038_23_824E_01_initialize_object ; 
- D 0 - I - 0x004252 01:8242: 58 82     .word ofs_038_23_8258_02 ; 
- D 0 - I - 0x004254 01:8244: 73 82     .word ofs_038_23_8273_03_open_door ; 
- D 0 - I - 0x004256 01:8246: A8 82     .word ofs_038_23_82A8_04 ; 
- D 0 - I - 0x004258 01:8248: E5 82     .word ofs_038_23_82E5_05_close_door ; 
- D 0 - I - 0x00425A 01:824A: FC 82     .word ofs_038_23_82FC_06 ; 
- D 0 - I - 0x00425C 01:824C: 75 A2     .word ofs_038_23_0x006285_07_delete_object_02 ; 



ofs_038_23_824E_01_initialize_object:
C - - J - - 0x00425E 01:824E: A9 81     LDA #$81
C - - - - - 0x004260 01:8250: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x004263 01:8253: A9 80     LDA #$80
C - - - - - 0x004265 01:8255: 4C E0 A2  JMP loc_0x0062F0



ofs_038_23_8258_02:
C - - J - - 0x004268 01:8258: 20 E4 81  JSR sub_81E4
C - - - - - 0x00426B 01:825B: BD 9C 07  LDA ram_079C_obj,X
C - - - - - 0x00426E 01:825E: D0 31     BNE bra_8291_RTS
C - - - - - 0x004270 01:8260: A5 5B     LDA ram_frm_cnt_2
C - - - - - 0x004272 01:8262: 29 03     AND #$03
C - - - - - 0x004274 01:8264: D0 2B     BNE bra_8291_RTS
C - - - - - 0x004276 01:8266: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x004279 01:8269: D0 26     BNE bra_8291_RTS
C - - - - - 0x00427B 01:826B: A9 01     LDA #$01
C - - - - - 0x00427D 01:826D: 9D 10 07  STA ram_0710_obj,X
C - - - - - 0x004280 01:8270: 4C E0 A2  JMP loc_0x0062F0



ofs_038_23_8273_03_open_door:
C - - J - - 0x004283 01:8273: 20 E4 81  JSR sub_81E4
C - - - - - 0x004286 01:8276: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x004289 01:8279: D0 16     BNE bra_8291_RTS
C - - - - - 0x00428B 01:827B: 20 16 83  JSR sub_8316_draw_helicopter_door
C - - - - - 0x00428E 01:827E: A9 01     LDA #$01
C - - - - - 0x004290 01:8280: B0 0C     BCS bra_828E
C - - - - - 0x004292 01:8282: FE 10 07  INC ram_0710_obj,X
C - - - - - 0x004295 01:8285: BD 10 07  LDA ram_0710_obj,X
C - - - - - 0x004298 01:8288: C9 04     CMP #$04
C - - - - - 0x00429A 01:828A: B0 06     BCS bra_8292
bra_828C:
C - - - - - 0x00429C 01:828C: A9 10     LDA #$10
bra_828E:
C - - - - - 0x00429E 01:828E: 9D E6 06  STA ram_06E6_obj,X
bra_8291_RTS:
C - - - - - 0x0042A1 01:8291: 60        RTS
bra_8292:
C - - - - - 0x0042A2 01:8292: DE 10 07  DEC ram_0710_obj,X
C - - - - - 0x0042A5 01:8295: DE 10 07  DEC ram_0710_obj,X
C - - - - - 0x0042A8 01:8298: A9 20     LDA #$20
C - - - - - 0x0042AA 01:829A: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x0042AD 01:829D: BC 56 07  LDY ram_0756_obj,X
C - - - - - 0x0042B0 01:82A0: B9 A6 82  LDA tbl_82A6,Y
C - - - - - 0x0042B3 01:82A3: 4C E0 A2  JMP loc_0x0062F0



tbl_82A6:
- D 0 - - - 0x0042B6 01:82A6: B0        .byte $B0   ; 00 
- D 0 - - - 0x0042B7 01:82A7: A0        .byte $A0   ; 01 



ofs_038_23_82A8_04:
C - - J - - 0x0042B8 01:82A8: 20 E4 81  JSR sub_81E4
C - - - - - 0x0042BB 01:82AB: A5 5B     LDA ram_frm_cnt_2
C - - - - - 0x0042BD 01:82AD: 29 03     AND #$03
C - - - - - 0x0042BF 01:82AF: D0 0A     BNE bra_82BB
C - - - - - 0x0042C1 01:82B1: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x0042C4 01:82B4: D0 05     BNE bra_82BB
C - - - - - 0x0042C6 01:82B6: A9 01     LDA #$01
C - - - - - 0x0042C8 01:82B8: 4C E0 A2  JMP loc_0x0062F0
bra_82BB:
C - - - - - 0x0042CB 01:82BB: DE F4 06  DEC ram_06F4_obj,X
C - - - - - 0x0042CE 01:82BE: D0 D1     BNE bra_8291_RTS
C - - - - - 0x0042D0 01:82C0: A0 03     LDY #$03
C - - - - - 0x0042D2 01:82C2: 20 C8 AB  JSR sub_0x006BD8
C - - - - - 0x0042D5 01:82C5: 90 18     BCC bra_82DF
C - - - - - 0x0042D7 01:82C7: A4 11     LDY ram_0011
C - - - - - 0x0042D9 01:82C9: FE 48 07  INC ram_0748_obj,X
C - - - - - 0x0042DC 01:82CC: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x0042DF 01:82CF: C9 06     CMP #$06
C - - - - - 0x0042E1 01:82D1: A9 02     LDA #$02
C - - - - - 0x0042E3 01:82D3: 90 07     BCC bra_82DC
C - - - - - 0x0042E5 01:82D5: A9 00     LDA #$00
C - - - - - 0x0042E7 01:82D7: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x0042EA 01:82DA: A9 0A     LDA #$0A
bra_82DC:
C - - - - - 0x0042EC 01:82DC: 99 1E 07  STA ram_obj_flags,Y
bra_82DF:
C - - - - - 0x0042EF 01:82DF: A9 30     LDA #$30
C - - - - - 0x0042F1 01:82E1: 9D F4 06  STA ram_06F4_obj,X
bra_82E4_RTS:
C - - - - - 0x0042F4 01:82E4: 60        RTS



ofs_038_23_82E5_05_close_door:
C - - J - - 0x0042F5 01:82E5: 20 E4 81  JSR sub_81E4
C - - - - - 0x0042F8 01:82E8: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x0042FB 01:82EB: D0 A4     BNE bra_8291_RTS
C - - - - - 0x0042FD 01:82ED: 20 16 83  JSR sub_8316_draw_helicopter_door
C - - - - - 0x004300 01:82F0: A9 01     LDA #$01
C - - - - - 0x004302 01:82F2: B0 9A     BCS bra_828E
C - - - - - 0x004304 01:82F4: DE 10 07  DEC ram_0710_obj,X
C - - - - - 0x004307 01:82F7: 10 93     BPL bra_828C
C - - - - - 0x004309 01:82F9: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_23_82FC_06:
C - - J - - 0x00430C 01:82FC: 20 E4 81  JSR sub_81E4
C - - - - - 0x00430F 01:82FF: BC 80 07  LDY ram_0780_obj,X
C - - - - - 0x004312 01:8302: B9 80 07  LDA ram_0780_obj,Y
C - - - - - 0x004315 01:8305: F0 DD     BEQ bra_82E4_RTS
C - - - - - 0x004317 01:8307: A9 01     LDA #$01
C - - - - - 0x004319 01:8309: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x00431C 01:830C: A9 10     LDA #$10
C - - - - - 0x00431E 01:830E: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x004321 01:8311: A9 02     LDA #$02
C - - - - - 0x004323 01:8313: 4C 83 A2  JMP loc_0x006293_set_obj_state



sub_8316_draw_helicopter_door:
C - - - - - 0x004326 01:8316: BD 10 07  LDA ram_0710_obj,X
C - - - - - 0x004329 01:8319: 0A        ASL
C - - - - - 0x00432A 01:831A: A8        TAY
; bzk optimize, check ram_index_ppu_buffer first
C - - - - - 0x00432B 01:831B: A6 1E     LDX ram_index_ppu_buffer
C - - - - - 0x00432D 01:831D: E0 40     CPX #$40
C - - - - - 0x00432F 01:831F: B0 54     BCS bra_8375_skip
; if buffer is not too loaded
C - - - - - 0x004331 01:8321: B9 78 83  LDA tbl_8378_helicopter_door,Y
C - - - - - 0x004334 01:8324: 85 08     STA ram_0008
C - - - - - 0x004336 01:8326: B9 79 83  LDA tbl_8378_helicopter_door + $01,Y
C - - - - - 0x004339 01:8329: 85 09     STA ram_0009
C - - - - - 0x00433B 01:832B: A9 A8     LDA #< $2AA8
C - - - - - 0x00433D 01:832D: 85 00     STA ram_0000
C - - - - - 0x00433F 01:832F: A9 2A     LDA #> $2AA8
C - - - - - 0x004341 01:8331: 85 01     STA ram_0001
C - - - - - 0x004343 01:8333: A9 06     LDA #con_buf_mode_06
C - - - - - 0x004345 01:8335: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x004348 01:8338: E8        INX
C - - - - - 0x004349 01:8339: A0 00     LDY #$00
C - - - - - 0x00434B 01:833B: A9 04     LDA #$04
C - - - - - 0x00434D 01:833D: 85 0A     STA ram_000A    ; loop counter
bra_833F_loop:
C - - - - - 0x00434F 01:833F: A5 01     LDA ram_0001    ; ppu hi
C - - - - - 0x004351 01:8341: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x004354 01:8344: E8        INX
C - - - - - 0x004355 01:8345: A5 00     LDA ram_0000    ; ppu lo
C - - - - - 0x004357 01:8347: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x00435A 01:834A: E8        INX
C - - - - - 0x00435B 01:834B: A9 05     LDA #$05
C - - - - - 0x00435D 01:834D: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x004360 01:8350: 85 0B     STA ram_000B    ; tiles counter
C - - - - - 0x004362 01:8352: E8        INX
bra_8353_loop:
C - - - - - 0x004363 01:8353: B1 08     LDA (ram_0008),Y
C - - - - - 0x004365 01:8355: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x004368 01:8358: C8        INY
C - - - - - 0x004369 01:8359: E8        INX
C - - - - - 0x00436A 01:835A: C6 0B     DEC ram_000B    ; tiles counter
C - - - - - 0x00436C 01:835C: D0 F5     BNE bra_8353_loop
C - - - - - 0x00436E 01:835E: A5 00     LDA ram_0000    ; ppu lo
C - - - - - 0x004370 01:8360: 18        CLC
C - - - - - 0x004371 01:8361: 69 20     ADC #$20
C - - - - - 0x004373 01:8363: 85 00     STA ram_0000    ; ppu lo
C - - - - - 0x004375 01:8365: 90 02     BCC bra_8369_not_overflow
C - - - - - 0x004377 01:8367: E6 01     INC ram_0001    ; ppu hi
bra_8369_not_overflow:
C - - - - - 0x004379 01:8369: C6 0A     DEC ram_000A    ; loop counter
C - - - - - 0x00437B 01:836B: D0 D2     BNE bra_833F_loop
; close buffer
C - - - - - 0x00437D 01:836D: A9 FF     LDA #$FF
C - - - - - 0x00437F 01:836F: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x004382 01:8372: E8        INX
C - - - - - 0x004383 01:8373: 86 1E     STX ram_index_ppu_buffer
bra_8375_skip:
C - - - - - 0x004385 01:8375: A6 10     LDX ram_0010
C - - - - - 0x004387 01:8377: 60        RTS



tbl_8378_helicopter_door:
- D 0 - - - 0x004388 01:8378: 80 83     .word off_8380_00
- D 0 - - - 0x00438A 01:837A: 94 83     .word off_8394_01
- D 0 - - - 0x00438C 01:837C: A8 83     .word off_83A8_02
- D 0 - - - 0x00438E 01:837E: BC 83     .word off_83BC_03



off_8380_00:
- D 0 - I - 0x004390 01:8380: 00        .byte $00, $00, $5B, $5C, $5D   ; 
- D 0 - I - 0x004395 01:8385: 00        .byte $00, $00, $00, $68, $69   ; 
- D 0 - I - 0x00439A 01:838A: 00        .byte $00, $00, $00, $00, $7C   ; 
- D 0 - I - 0x00439F 01:838F: 00        .byte $00, $00, $00, $00, $00   ; 



off_8394_01:
- D 0 - I - 0x0043A4 01:8394: 93        .byte $93, $94, $95, $5C, $5D   ; 
- D 0 - I - 0x0043A9 01:8399: 00        .byte $00, $96, $97, $98, $69   ; 
- D 0 - I - 0x0043AE 01:839E: 00        .byte $00, $00, $00, $96, $7C   ; 
- D 0 - I - 0x0043B3 01:83A3: 00        .byte $00, $00, $00, $00, $00   ; 



off_83A8_02:
- D 0 - I - 0x0043B8 01:83A8: 00        .byte $00, $00, $99, $5C, $5D   ; 
- D 0 - I - 0x0043BD 01:83AD: 00        .byte $00, $00, $9A, $68, $69   ; 
- D 0 - I - 0x0043C2 01:83B2: 9B        .byte $9B, $9C, $9D, $9E, $9F   ; 
- D 0 - I - 0x0043C7 01:83B7: 00        .byte $00, $00, $00, $00, $00   ; 



off_83BC_03:
- D 0 - I - 0x0043CC 01:83BC: 00        .byte $00, $00, $5B, $5C, $5D   ; 
- D 0 - I - 0x0043D1 01:83C1: 00        .byte $00, $00, $9A, $68, $69   ; 
- D 0 - I - 0x0043D6 01:83C6: 00        .byte $00, $00, $A0, $A1, $A2   ; 
- D 0 - I - 0x0043DB 01:83CB: A3        .byte $A3, $A4, $A5, $A6, $00   ; 



_off001_0x0043E0_62_helicopter_rotor_blade:
- D 0 - I - 0x0043E0 01:83D0: D4 83     .word ofs_038_23_83D4_01_initialize_object ; 
- D 0 - I - 0x0043E2 01:83D2: E1 83     .word ofs_038_23_83E1_02 ; лопасти в процессе вращения, периодически молния



ofs_038_23_83D4_01_initialize_object:
C - - J - - 0x0043E4 01:83D4: A9 81     LDA #$81
C - - - - - 0x0043E6 01:83D6: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x0043E9 01:83D9: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x0043EC 01:83DC: A9 0C     LDA #$0C
C - - - - - 0x0043EE 01:83DE: 4C E0 A2  JMP loc_0x0062F0



ofs_038_23_83E1_02:
; helicopter rotor and lightning at the beginning of area 1
C - - J - - 0x0043F1 01:83E1: A9 00     LDA #$00
C - - - - - 0x0043F3 01:83E3: 20 90 84  JSR sub_8490
C - - - - - 0x0043F6 01:83E6: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x0043F9 01:83E9: BD 10 07  LDA ram_0710_obj,X
C - - - - - 0x0043FC 01:83EC: 0A        ASL
C - - - - - 0x0043FD 01:83ED: A8        TAY
C - - - - - 0x0043FE 01:83EE: B9 26 84  LDA tbl_8426,Y
C - - - - - 0x004401 01:83F1: 85 08     STA ram_0008
C - - - - - 0x004403 01:83F3: B9 27 84  LDA tbl_8426 + $01,Y
C - - - - - 0x004406 01:83F6: 85 09     STA ram_0009
; bzk optimize, check ram_index_ppu_buffer first
C - - - - - 0x004408 01:83F8: A5 1E     LDA ram_index_ppu_buffer
C - - - - - 0x00440A 01:83FA: C9 20     CMP #$20
C - - - - - 0x00440C 01:83FC: B0 21     BCS bra_841F_RTS
; if buffer is not too loaded
C - - - - - 0x00440E 01:83FE: AA        TAX
C - - - - - 0x00440F 01:83FF: A0 00     LDY #$00
bra_8401_loop:
C - - - - - 0x004411 01:8401: B1 08     LDA (ram_0008),Y
C - - - - - 0x004413 01:8403: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x004416 01:8406: E8        INX
C - - - - - 0x004417 01:8407: C8        INY
C - - - - - 0x004418 01:8408: C9 FF     CMP #$FF
C - - - - - 0x00441A 01:840A: D0 F5     BNE bra_8401_loop
C - - - - - 0x00441C 01:840C: 86 1E     STX ram_index_ppu_buffer
C - - - - - 0x00441E 01:840E: A6 10     LDX ram_0010
C - - - - - 0x004420 01:8410: BD 10 07  LDA ram_0710_obj,X
C - - - - - 0x004423 01:8413: 18        CLC
C - - - - - 0x004424 01:8414: 69 01     ADC #$01
C - - - - - 0x004426 01:8416: C9 06     CMP #$06
C - - - - - 0x004428 01:8418: 90 02     BCC bra_841C
C - - - - - 0x00442A 01:841A: A9 00     LDA #$00
bra_841C:
C - - - - - 0x00442C 01:841C: 9D 10 07  STA ram_0710_obj,X
bra_841F_RTS:
C - - - - - 0x00442F 01:841F: 60        RTS


; bzk garbage
- - - - - - 0x004430 01:8420: 00        .byte $00   ; 
- - - - - - 0x004431 01:8421: 02        .byte $02   ; 
- - - - - - 0x004432 01:8422: 04        .byte $04   ; 
- - - - - - 0x004433 01:8423: 06        .byte $06   ; 
- - - - - - 0x004434 01:8424: 04        .byte $04   ; 
- - - - - - 0x004435 01:8425: 02        .byte $02   ; 



tbl_8426:
- D 0 - - - 0x004436 01:8426: 32 84     .word off_8432_00
- D 0 - - - 0x004438 01:8428: 47 84     .word off_8447_01
- D 0 - - - 0x00443A 01:842A: 5C 84     .word off_845C_02
- D 0 - - - 0x00443C 01:842C: 6D 84     .word off_846D_03
- D 0 - - - 0x00443E 01:842E: 5C 84     .word off_845C_04
- D 0 - - - 0x004440 01:8430: 47 84     .word off_8447_05



off_8432_00:
- D 0 - I - 0x004442 01:8432: 06        .byte con_buf_mode_06   ; 

- D 0 - I - 0x004443 01:8433: 20 84     .dbyt $2084 ; ppu address
- D 0 - I - 0x004445 01:8435: 10        .byte $10   ; counter
- D 0 - I - 0x004446 01:8436: 11        .byte $11, $11, $12, $11, $12, $12, $13, $75, $14, $76, $12, $12, $11, $12, $11, $11   ; tiles

- D 0 - I - 0x004456 01:8446: FF        .byte $FF   ; end token



off_8447_01:
off_8447_05:
- D 0 - I - 0x004457 01:8447: 06        .byte con_buf_mode_06   ; 

- D 0 - I - 0x004458 01:8448: 20 84     .dbyt $2084 ; ppu address
- D 0 - I - 0x00445A 01:844A: 10        .byte $10   ; counter
- D 0 - I - 0x00445B 01:844B: 00        .byte $00, $00, $11, $12, $11, $12, $13, $75, $14, $76, $12, $12, $11, $11, $00, $00   ; tiles

- D 0 - I - 0x00446B 01:845B: FF        .byte $FF   ; end token



off_845C_02:
off_845C_04:
- D 0 - I - 0x00446C 01:845C: 06        .byte con_buf_mode_06   ; 

- D 0 - I - 0x00446D 01:845D: 20 86     .dbyt $2086 ; ppu address
- D 0 - I - 0x00446F 01:845F: 0C        .byte $0C   ; counter
- D 0 - I - 0x004470 01:8460: 00        .byte $00, $00, $11, $11, $12, $75, $14, $76, $12, $12, $00, $00   ; tiles

- D 0 - I - 0x00447C 01:846C: FF        .byte $FF   ; end token



off_846D_03:
- D 0 - I - 0x00447D 01:846D: 06        .byte con_buf_mode_06   ; 

- D 0 - I - 0x00447E 01:846E: 20 88     .dbyt $2088 ; ppu address
- D 0 - I - 0x004480 01:8470: 08        .byte $08   ; counter
- D 0 - I - 0x004481 01:8471: 00        .byte $00, $00, $00, $77, $78, $00, $00, $00   ; tiles

- D 0 - I - 0x004489 01:8479: FF        .byte $FF   ; end token



_off001_0x00448A_6F_thunder:
- D 0 - I - 0x00448A 01:847A: 7E 84     .word ofs_038_6F_847E_01_initialize_object ; 
- D 0 - I - 0x00448C 01:847C: 8B 84     .word ofs_038_6F_848B_02 ; 



ofs_038_6F_847E_01_initialize_object:
C - - J - - 0x00448E 01:847E: A9 81     LDA #$81
C - - - - - 0x004490 01:8480: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x004493 01:8483: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x004496 01:8486: A9 01     LDA #$01
C - - - - - 0x004498 01:8488: 4C E0 A2  JMP loc_0x0062F0



ofs_038_6F_848B_02:
C - - J - - 0x00449B 01:848B: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x00449E 01:848E: A9 01     LDA #$01
sub_8490:
C - - - - - 0x0044A0 01:8490: 85 08     STA ram_0008
C - - - - - 0x0044A2 01:8492: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x0044A5 01:8495: D0 07     BNE bra_849E
C - - - - - 0x0044A7 01:8497: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x0044AA 01:849A: C9 20     CMP #$20
C - - - - - 0x0044AC 01:849C: 90 4D     BCC bra_84EB_RTS
bra_849E:
C - - - - - 0x0044AE 01:849E: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x0044B1 01:84A1: D0 48     BNE bra_84EB_RTS
C - - - - - 0x0044B3 01:84A3: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x0044B6 01:84A6: D0 09     BNE bra_84B1
C - - - - - 0x0044B8 01:84A8: A5 08     LDA ram_0008
C - - - - - 0x0044BA 01:84AA: F0 05     BEQ bra_84B1
C - - - - - 0x0044BC 01:84AC: A9 1D     LDA #con_sound_1D
C - - - - - 0x0044BE 01:84AE: 20 DE FD  JSR sub_0x01FDEE_play_sound
bra_84B1:
C - - - - - 0x0044C1 01:84B1: BC 48 07  LDY ram_0748_obj,X
C - - - - - 0x0044C4 01:84B4: F0 02     BEQ bra_84B8
C - - - - - 0x0044C6 01:84B6: A0 03     LDY #$03
bra_84B8:
C - - - - - 0x0044C8 01:84B8: B9 F0 84  LDA tbl_84F0_colors,Y
C - - - - - 0x0044CB 01:84BB: 8D E9 03  STA ram_pal_buffer + $09
C - - - - - 0x0044CE 01:84BE: B9 F1 84  LDA tbl_84F0_colors + $01,Y
C - - - - - 0x0044D1 01:84C1: 8D EA 03  STA ram_pal_buffer + $0A
C - - - - - 0x0044D4 01:84C4: B9 F2 84  LDA tbl_84F0_colors + $02,Y
C - - - - - 0x0044D7 01:84C7: 8D EB 03  STA ram_pal_buffer + $0B
C - - - - - 0x0044DA 01:84CA: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x0044DD 01:84CD: 49 01     EOR #$01
C - - - - - 0x0044DF 01:84CF: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x0044E2 01:84D2: 4A        LSR
C - - - - - 0x0044E3 01:84D3: A9 05     LDA #$05
C - - - - - 0x0044E5 01:84D5: B0 11     BCS bra_84E8
C - - - - - 0x0044E7 01:84D7: BC 56 07  LDY ram_0756_obj,X
C - - - - - 0x0044EA 01:84DA: FE 56 07  INC ram_0756_obj,X
C - - - - - 0x0044ED 01:84DD: BD 56 07  LDA ram_0756_obj,X
C - - - - - 0x0044F0 01:84E0: 29 03     AND #$03
C - - - - - 0x0044F2 01:84E2: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x0044F5 01:84E5: B9 EC 84  LDA tbl_84EC,Y
bra_84E8:
C - - - - - 0x0044F8 01:84E8: 9D E6 06  STA ram_06E6_obj,X
bra_84EB_RTS:
C - - - - - 0x0044FB 01:84EB: 60        RTS



tbl_84EC:
- D 0 - - - 0x0044FC 01:84EC: 0E        .byte $0E   ; 00 
- D 0 - - - 0x0044FD 01:84ED: 2A        .byte $2A   ; 01 
- D 0 - - - 0x0044FE 01:84EE: 1E        .byte $1E   ; 02 
- D 0 - - - 0x0044FF 01:84EF: C0        .byte $C0   ; 03 



tbl_84F0_colors:
- D 0 - - - 0x004500 01:84F0: 24        .byte $24, $26, $20   ; 00 
- D 0 - - - 0x004503 01:84F3: 27        .byte $27, $16, $04   ; 03 



_off001_0x004506_21_boss_area_1_helicopter:
- D 0 - I - 0x004506 01:84F6: 0A 85     .word ofs_038_21_850A_01_initialize_object ; 
- D 0 - I - 0x004508 01:84F8: 18 85     .word ofs_038_21_8518_02 ; 
- D 0 - I - 0x00450A 01:84FA: CD 85     .word ofs_038_21_85CD_03 ; 
- D 0 - I - 0x00450C 01:84FC: D9 85     .word ofs_038_21_85D9_04 ; 
- D 0 - I - 0x00450E 01:84FE: EB 85     .word ofs_038_21_85EB_05 ; 
- D 0 - I - 0x004510 01:8500: 1A 86     .word ofs_038_21_861A_06 ; 
- D 0 - I - 0x004512 01:8502: 28 86     .word ofs_038_21_8628_07 ; 
- D 0 - I - 0x004514 01:8504: 38 86     .word ofs_038_21_8638_08 ; 
- D 0 - I - 0x004516 01:8506: F6 A2     .word ofs_038_21_0x006306_09 ; 
- D 0 - I - 0x004518 01:8508: 3B 86     .word ofs_038_21_863B_0A ; 



ofs_038_21_850A_01_initialize_object:
C - - J - - 0x00451A 01:850A: A9 11     LDA #$11
C - - - - - 0x00451C 01:850C: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x00451F 01:850F: A9 20     LDA #$20
C - - - - - 0x004521 01:8511: 20 99 AB  JSR sub_0x006BA9_set_dynamic_hp_to_boss
C - - - - - 0x004524 01:8514: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state
bra_8517_RTS:
C - - - - - 0x004527 01:8517: 60        RTS



ofs_038_21_8518_02:
C - - J - - 0x004528 01:8518: A5 61     LDA ram_0061_area_config
C - - - - - 0x00452A 01:851A: F0 FB     BEQ bra_8517_RTS
C - - - - - 0x00452C 01:851C: A5 60     LDA ram_0060_game_handler
C - - - - - 0x00452E 01:851E: 05 70     ORA ram_0070_game_handler
C - - - - - 0x004530 01:8520: D0 F5     BNE bra_8517_RTS
C - - - - - 0x004532 01:8522: A9 A0     LDA #$A0
C - - - - - 0x004534 01:8524: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x004537 01:8527: A9 B8     LDA #$B8
C - - - - - 0x004539 01:8529: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x00453C 01:852C: A9 FF     LDA #$FF
C - - - - - 0x00453E 01:852E: 9D 8E 07  STA ram_078E_obj,X
C - - - - - 0x004541 01:8531: 9D 9C 07  STA ram_079C_obj,X
C - - - - - 0x004544 01:8534: A9 E0     LDA #$E0
C - - - - - 0x004546 01:8536: 85 FC     STA ram_scroll_Y
C - - - - - 0x004548 01:8538: A9 00     LDA #$00
C - - - - - 0x00454A 01:853A: 85 FD     STA ram_scroll_X
C - - - - - 0x00454C 01:853C: A9 AB     LDA #$AB
C - - - - - 0x00454E 01:853E: 85 FF     STA ram_for_2000
C - - - - - 0x004550 01:8540: A5 FE     LDA ram_for_2001
C - - - - - 0x004552 01:8542: 29 FD     AND #$FD
C - - - - - 0x004554 01:8544: 85 FE     STA ram_for_2001
C - - - - - 0x004556 01:8546: 20 1B BD  JSR sub_0x007D2B_clear_0480_04FF
C - - - - - 0x004559 01:8549: A9 04     LDA #con_chr_bank + $04
C - - - - - 0x00455B 01:854B: 8D F0 07  STA ram_chr_bank_bg_1
C - - - - - 0x00455E 01:854E: A9 06     LDA #con_chr_bank + $06
C - - - - - 0x004560 01:8550: 8D F1 07  STA ram_chr_bank_bg_2
C - - - - - 0x004563 01:8553: A0 04     LDY #$04
bra_8555_loop:
C - - - - - 0x004565 01:8555: 84 08     STY ram_0008
C - - - - - 0x004567 01:8557: B9 C8 85  LDA tbl_85C8,Y
C - - - - - 0x00456A 01:855A: A8        TAY
C - - - - - 0x00456B 01:855B: 20 C8 AB  JSR sub_0x006BD8
C - - - - - 0x00456E 01:855E: 90 1B     BCC bra_857B
C - - - - - 0x004570 01:8560: A4 08     LDY ram_0008
C - - - - - 0x004572 01:8562: B9 C8 85  LDA tbl_85C8,Y
C - - - - - 0x004575 01:8565: C9 22     CMP #$22
C - - - - - 0x004577 01:8567: D0 03     BNE bra_856C_23
; 22
C - - - - - 0x004579 01:8569: FE 64 07  INC ram_0764_obj,X
bra_856C_23:
C - - - - - 0x00457C 01:856C: 98        TYA
C - - - - - 0x00457D 01:856D: A4 11     LDY ram_0011
C - - - - - 0x00457F 01:856F: 99 1E 07  STA ram_obj_flags,Y
C - - - - - 0x004582 01:8572: 8A        TXA
C - - - - - 0x004583 01:8573: 99 80 07  STA ram_0780_obj,Y
C - - - - - 0x004586 01:8576: A4 08     LDY ram_0008
C - - - - - 0x004588 01:8578: 88        DEY
C - - - - - 0x004589 01:8579: 10 DA     BPL bra_8555_loop
bra_857B:
C - - - - - 0x00458B 01:857B: 20 CE A9  JSR sub_0x0069DE
C - - - - - 0x00458E 01:857E: A9 01     LDA #con_mirroring_H
C - - - - - 0x004590 01:8580: 85 26     STA ram_for_A000
C - - - - - 0x004592 01:8582: A9 01     LDA #con_irq_area_1_boss
C - - - - - 0x004594 01:8584: 85 27     STA ram_irq_handler_hi
C - - - - - 0x004596 01:8586: A9 A2     LDA #$A2
C - - - - - 0x004598 01:8588: 85 45     STA ram_scanline
C - - - - - 0x00459A 01:858A: A5 FC     LDA ram_scroll_Y
C - - - - - 0x00459C 01:858C: 85 F9     STA ram_00F9_scroll_Y
C - - - - - 0x00459E 01:858E: A5 FD     LDA ram_scroll_X
C - - - - - 0x0045A0 01:8590: 85 FA     STA ram_00FA_scroll_X
C - - - - - 0x0045A2 01:8592: A5 FF     LDA ram_for_2000
C - - - - - 0x0045A4 01:8594: 29 FE     AND #$FE
C - - - - - 0x0045A6 01:8596: 85 FB     STA ram_00FB_for_2000
C - - - - - 0x0045A8 01:8598: A9 10     LDA #$10
C - - - - - 0x0045AA 01:859A: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x0045AD 01:859D: A9 00     LDA #$00
C - - - - - 0x0045AF 01:859F: 9D 8E 07  STA ram_078E_obj,X
C - - - - - 0x0045B2 01:85A2: A9 28     LDA #$28
C - - - - - 0x0045B4 01:85A4: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x0045B7 01:85A7: A9 00     LDA #$00
C - - - - - 0x0045B9 01:85A9: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x0045BC 01:85AC: A9 1E     LDA #$1E
C - - - - - 0x0045BE 01:85AE: 9D 72 07  STA ram_0772_obj,X
C - - - - - 0x0045C1 01:85B1: A0 00     LDY #con_F97C_colors + $00
C - - - - - 0x0045C3 01:85B3: 20 64 F9  JSR sub_0x01F974_write_3_colors_with_condition
C - - - - - 0x0045C6 01:85B6: A0 04     LDY #con_F97C_colors + $04
C - - - - - 0x0045C8 01:85B8: 20 64 F9  JSR sub_0x01F974_write_3_colors_with_condition
C - - - - - 0x0045CB 01:85BB: 20 B8 F7  JSR sub_0x01F7C8_write_palette_to_buffer
C - - - - - 0x0045CE 01:85BE: A6 10     LDX ram_0010
C - - - - - 0x0045D0 01:85C0: A9 30     LDA #con_sound_30
C - - - - - 0x0045D2 01:85C2: 20 DE FD  JSR sub_0x01FDEE_play_sound
C - - - - - 0x0045D5 01:85C5: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



tbl_85C8:
- D 0 - - - 0x0045D8 01:85C8: 22        .byte $22   ; 00 
- D 0 - - - 0x0045D9 01:85C9: 22        .byte $22   ; 01 
- D 0 - - - 0x0045DA 01:85CA: 22        .byte $22   ; 02 
- D 0 - - - 0x0045DB 01:85CB: 22        .byte $22   ; 03 
- D 0 - - - 0x0045DC 01:85CC: 23        .byte $23   ; 04 



ofs_038_21_85CD_03:
C - - J - - 0x0045DD 01:85CD: 20 EC A8  JSR sub_0x0068FC
C - - - - - 0x0045E0 01:85D0: DE 72 07  DEC ram_0772_obj,X
C - - - - - 0x0045E3 01:85D3: 10 03     BPL bra_85D8_RTS
C - - - - - 0x0045E5 01:85D5: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state
bra_85D8_RTS:
C - - - - - 0x0045E8 01:85D8: 60        RTS



ofs_038_21_85D9_04:
C - - J - - 0x0045E9 01:85D9: 20 99 87  JSR sub_8799
C - - - - - 0x0045EC 01:85DC: B0 3B     BCS bra_8619_RTS
C - - - - - 0x0045EE 01:85DE: A6 10     LDX ram_0010
C - - - - - 0x0045F0 01:85E0: A9 00     LDA #$00
C - - - - - 0x0045F2 01:85E2: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x0045F5 01:85E5: 20 68 86  JSR sub_8668
C - - - - - 0x0045F8 01:85E8: 4C E0 A2  JMP loc_0x0062F0



ofs_038_21_85EB_05:
C - - J - - 0x0045FB 01:85EB: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x0045FE 01:85EE: D0 0A     BNE bra_85FA
C - - - - - 0x004600 01:85F0: A9 04     LDA #$04
C - - - - - 0x004602 01:85F2: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x004605 01:85F5: A9 09     LDA #con_sound_09
C - - - - - 0x004607 01:85F7: 20 DE FD  JSR sub_0x01FDEE_play_sound
bra_85FA:
C - - - - - 0x00460A 01:85FA: BD 64 07  LDA ram_0764_obj,X
C - - - - - 0x00460D 01:85FD: D0 0B     BNE bra_860A
C - - - - - 0x00460F 01:85FF: A5 94     LDA ram_0094_area_config
C - - - - - 0x004611 01:8601: 29 BF     AND #$BF
C - - - - - 0x004613 01:8603: 85 94     STA ram_0094_area_config
C - - - - - 0x004615 01:8605: A9 A7     LDA #$A7
C - - - - - 0x004617 01:8607: 9D 08 05  STA ram_anim_id_enemy,X
bra_860A:
C - - - - - 0x00461A 01:860A: A5 5B     LDA ram_frm_cnt_2
C - - - - - 0x00461C 01:860C: 4A        LSR
C - - - - - 0x00461D 01:860D: 4A        LSR
C - - - - - 0x00461E 01:860E: 29 03     AND #$03
C - - - - - 0x004620 01:8610: 9D 56 05  STA ram_attr_spr_enemy,X
C - - - - - 0x004623 01:8613: 20 B7 86  JSR sub_86B7
C - - - - - 0x004626 01:8616: 4C 5C 86  JMP loc_865C
bra_8619_RTS:
- - - - - - 0x004629 01:8619: 60        RTS



ofs_038_21_861A_06:
C - - J - - 0x00462A 01:861A: A9 0B     LDA #$0B
C - - - - - 0x00462C 01:861C: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x00462F 01:861F: 20 68 86  JSR sub_8668
C - - - - - 0x004632 01:8622: 20 5C 86  JSR sub_865C
C - - - - - 0x004635 01:8625: 4C B8 A3  JMP loc_0x0063C8_boss_starts_exploding



ofs_038_21_8628_07:
C - - J - - 0x004638 01:8628: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x00463B 01:862B: C9 A0     CMP #$A0
C - - - - - 0x00463D 01:862D: B0 03     BCS bra_8632
C - - - - - 0x00463F 01:862F: 20 4F A7  JSR sub_0x00675F
bra_8632:
C - - - - - 0x004642 01:8632: 20 5F 86  JSR sub_865F
C - - - - - 0x004645 01:8635: 4C D8 A3  JMP loc_0x0063E8



ofs_038_21_8638_08: ; bzk optimize
C - - J - - 0x004648 01:8638: 4C A2 A2  JMP loc_0x0062B2



ofs_038_21_863B_0A:
C - - J - - 0x00464B 01:863B: 20 8C FC  JSR sub_0x01FC9C_increase_002B
C - - - - - 0x00464E 01:863E: A9 AA     LDA #$AA
C - - - - - 0x004650 01:8640: 85 FF     STA ram_for_2000
C - - - - - 0x004652 01:8642: A5 FE     LDA ram_for_2001
C - - - - - 0x004654 01:8644: 09 02     ORA #$02
C - - - - - 0x004656 01:8646: 85 FE     STA ram_for_2001
C - - - - - 0x004658 01:8648: A9 E0     LDA #$E0
C - - - - - 0x00465A 01:864A: 85 FC     STA ram_scroll_Y
C - - - - - 0x00465C 01:864C: 20 88 F1  JSR sub_0x01F198
C - - - - - 0x00465F 01:864F: A9 38     LDA #con_chr_bank + $38
C - - - - - 0x004661 01:8651: 8D F0 07  STA ram_chr_bank_bg_1
C - - - - - 0x004664 01:8654: A9 3A     LDA #con_chr_bank + $3A
C - - - - - 0x004666 01:8656: 8D F1 07  STA ram_chr_bank_bg_2
C - - - - - 0x004669 01:8659: 4C 37 A3  JMP loc_0x006347_delete_object_boss



loc_865C:
sub_865C:
C D 0 - - - 0x00466C 01:865C: 20 4F A7  JSR sub_0x00675F
sub_865F:
C - - - - - 0x00466F 01:865F: 20 0A AA  JSR sub_0x006A1A
C - - - - - 0x004672 01:8662: 20 CC 87  JSR sub_87CC_draw_helicopter
C - - - - - 0x004675 01:8665: 4C 90 89  JMP loc_8990



sub_8668:
loc_8668:
C D 0 - - - 0x004678 01:8668: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x00467B 01:866B: 0A        ASL
C - - - - - 0x00467C 01:866C: 0A        ASL
C - - - - - 0x00467D 01:866D: A8        TAY
C - - - - - 0x00467E 01:866E: B9 87 86  LDA tbl_8687_speed,Y
C - - - - - 0x004681 01:8671: 9D A0 06  STA ram_spd_Y_lo_obj,X
C - - - - - 0x004684 01:8674: B9 88 86  LDA tbl_8687_speed + $01,Y
C - - - - - 0x004687 01:8677: 9D AE 06  STA ram_spd_Y_hi_obj,X
C - - - - - 0x00468A 01:867A: B9 89 86  LDA tbl_8687_speed + $02,Y
C - - - - - 0x00468D 01:867D: 9D BC 06  STA ram_spd_X_lo_obj,X
C - - - - - 0x004690 01:8680: B9 8A 86  LDA tbl_8687_speed + $03,Y
C - - - - - 0x004693 01:8683: 9D CA 06  STA ram_spd_X_hi_obj,X
C - - - - - 0x004696 01:8686: 60        RTS



tbl_8687_speed:
; 00 
- D 0 - - - 0x004697 01:8687: 00 00     .word $0000 ; Y
- D 0 - - - 0x004699 01:8689: 50 00     .word $0050 ; X
; 01 
- D 0 - - - 0x00469B 01:868B: 50 00     .word $0050 ; Y
- D 0 - - - 0x00469D 01:868D: 50 00     .word $0050 ; X
; 02 
- D 0 - - - 0x00469F 01:868F: 00 00     .word $0000 ; Y
- D 0 - - - 0x0046A1 01:8691: 50 00     .word $0050 ; X
; 03 
- D 0 - - - 0x0046A3 01:8693: 50 00     .word $0050 ; Y
- D 0 - - - 0x0046A5 01:8695: 50 00     .word $0050 ; X
; 04 
- D 0 - - - 0x0046A7 01:8697: 00 00     .word $0000 ; Y
- D 0 - - - 0x0046A9 01:8699: 50 00     .word $0050 ; X
; 05 
- D 0 - - - 0x0046AB 01:869B: 00 00     .word $0000 ; Y
- D 0 - - - 0x0046AD 01:869D: B0 FF     .word $FFB0 ; X
; 06 
- D 0 - - - 0x0046AF 01:869F: B0 FF     .word $FFB0 ; Y
- D 0 - - - 0x0046B1 01:86A1: B0 FF     .word $FFB0 ; X
; 07 
- D 0 - - - 0x0046B3 01:86A3: 00 00     .word $0000 ; Y
- D 0 - - - 0x0046B5 01:86A5: B0 FF     .word $FFB0 ; X
; 08 
- D 0 - - - 0x0046B7 01:86A7: 50 00     .word $0050 ; Y
- D 0 - - - 0x0046B9 01:86A9: 50 00     .word $0050 ; X
; 09 
- D 0 - - - 0x0046BB 01:86AB: 00 00     .word $0000 ; Y
- D 0 - - - 0x0046BD 01:86AD: 50 00     .word $0050 ; X
; 0A 
- D 0 - - - 0x0046BF 01:86AF: B0 FF     .word $FFB0 ; Y
- D 0 - - - 0x0046C1 01:86B1: B0 FF     .word $FFB0 ; X
; 0B 
- D 0 - - - 0x0046C3 01:86B3: 50 00     .word $0050 ; Y
- D 0 - - - 0x0046C5 01:86B5: 00 00     .word $0000 ; X



sub_86B7:
C - - - - - 0x0046C7 01:86B7: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x0046CA 01:86BA: 20 09 E6  JSR sub_0x01E619_jump_to_pointers_after_jsr
- D 0 - I - 0x0046CD 01:86BD: D3 86     .word ofs_013_86D3_00
- D 0 - I - 0x0046CF 01:86BF: E5 86     .word ofs_013_86E5_01
- D 0 - I - 0x0046D1 01:86C1: F9 86     .word ofs_013_86F9_02
- D 0 - I - 0x0046D3 01:86C3: 01 87     .word ofs_013_8701_03
- D 0 - I - 0x0046D5 01:86C5: 09 87     .word ofs_013_8709_04
- D 0 - I - 0x0046D7 01:86C7: 18 87     .word ofs_013_8718_05
- D 0 - I - 0x0046D9 01:86C9: 25 87     .word ofs_013_8725_06
- D 0 - I - 0x0046DB 01:86CB: 2D 87     .word ofs_013_872D_07
- D 0 - I - 0x0046DD 01:86CD: 3A 87     .word ofs_013_873A_08
- D 0 - I - 0x0046DF 01:86CF: 45 87     .word ofs_013_8745_09
- D 0 - I - 0x0046E1 01:86D1: 5A 87     .word ofs_013_875A_0A



ofs_013_86D3_00:
C - - J - - 0x0046E3 01:86D3: BD 9C 07  LDA ram_079C_obj,X
C - - - - - 0x0046E6 01:86D6: D0 54     BNE bra_872C_RTS
C - - - - - 0x0046E8 01:86D8: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x0046EB 01:86DB: C9 01     CMP #$01
C - - - - - 0x0046ED 01:86DD: 90 4D     BCC bra_872C_RTS
bra_86DF:
C - - - - - 0x0046EF 01:86DF: FE 48 07  INC ram_0748_obj,X
C - - - - - 0x0046F2 01:86E2: 4C 68 86  JMP loc_8668



ofs_013_86E5_01:
C - - J - - 0x0046F5 01:86E5: BD 8E 07  LDA ram_078E_obj,X
C - - - - - 0x0046F8 01:86E8: D0 42     BNE bra_872C_RTS
C - - - - - 0x0046FA 01:86EA: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x0046FD 01:86ED: C9 40     CMP #$40
C - - - - - 0x0046FF 01:86EF: 90 0F     BCC bra_8700_RTS
C - - - - - 0x004701 01:86F1: A5 94     LDA ram_0094_area_config
C - - - - - 0x004703 01:86F3: 09 40     ORA #$40
C - - - - - 0x004705 01:86F5: 85 94     STA ram_0094_area_config
C - - - - - 0x004707 01:86F7: B0 E6     BCS bra_86DF    ; jmp



ofs_013_86F9_02:
C - - J - - 0x004709 01:86F9: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x00470C 01:86FC: C9 A0     CMP #$A0
C - - - - - 0x00470E 01:86FE: B0 DF     BCS bra_86DF
bra_8700_RTS:
C - - - - - 0x004710 01:8700: 60        RTS



ofs_013_8701_03:
C - - J - - 0x004711 01:8701: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x004714 01:8704: C9 78     CMP #$78
C - - - - - 0x004716 01:8706: B0 D7     BCS bra_86DF
C - - - - - 0x004718 01:8708: 60        RTS



ofs_013_8709_04:
C - - J - - 0x004719 01:8709: BD 9C 07  LDA ram_079C_obj,X
C - - - - - 0x00471C 01:870C: C9 01     CMP #$01
C - - - - - 0x00471E 01:870E: D0 1C     BNE bra_872C_RTS
C - - - - - 0x004720 01:8710: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x004723 01:8713: C9 30     CMP #$30
C - - - - - 0x004725 01:8715: B0 C8     BCS bra_86DF
C - - - - - 0x004727 01:8717: 60        RTS



ofs_013_8718_05:
C - - J - - 0x004728 01:8718: BD 9C 07  LDA ram_079C_obj,X
C - - - - - 0x00472B 01:871B: D0 0F     BNE bra_872C_RTS
C - - - - - 0x00472D 01:871D: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x004730 01:8720: C9 E0     CMP #$E0
C - - - - - 0x004732 01:8722: 90 BB     BCC bra_86DF
C - - - - - 0x004734 01:8724: 60        RTS



ofs_013_8725_06:
C - - J - - 0x004735 01:8725: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x004738 01:8728: C9 50     CMP #$50
C - - - - - 0x00473A 01:872A: 90 B3     BCC bra_86DF
bra_872C_RTS:
C - - - - - 0x00473C 01:872C: 60        RTS



ofs_013_872D_07:
C - - J - - 0x00473D 01:872D: BD 9C 07  LDA ram_079C_obj,X
C - - - - - 0x004740 01:8730: 10 FA     BPL bra_872C_RTS
C - - - - - 0x004742 01:8732: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x004745 01:8735: C9 E0     CMP #$E0
C - - - - - 0x004747 01:8737: 90 A6     BCC bra_86DF
C - - - - - 0x004749 01:8739: 60        RTS



ofs_013_873A_08:
C - - J - - 0x00474A 01:873A: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x00474D 01:873D: C9 78     CMP #$78
C - - - - - 0x00474F 01:873F: 90 BF     BCC bra_8700_RTS
; C = 1
C - - - - - 0x004751 01:8741: A9 01     LDA #$01
C - - - - - 0x004753 01:8743: D0 10     BNE bra_8755    ; jmp



ofs_013_8745_09:
C - - J - - 0x004755 01:8745: BD 9C 07  LDA ram_079C_obj,X
C - - - - - 0x004758 01:8748: C9 01     CMP #$01
C - - - - - 0x00475A 01:874A: D0 E0     BNE bra_872C_RTS
C - - - - - 0x00475C 01:874C: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x00475F 01:874F: C9 10     CMP #$10
C - - - - - 0x004761 01:8751: 90 AD     BCC bra_8700_RTS
; C = 1
C - - - - - 0x004763 01:8753: A9 00     LDA #$00
bra_8755:   ; C = 1
C - - - - - 0x004765 01:8755: 9D 80 07  STA ram_0780_obj,X
C - - - - - 0x004768 01:8758: B0 85     BCS bra_86DF    ; jmp



ofs_013_875A_0A:
C - - J - - 0x00476A 01:875A: BD AE 06  LDA ram_spd_Y_hi_obj,X
C - - - - - 0x00476D 01:875D: 2A        ROL
C - - - - - 0x00476E 01:875E: 2A        ROL
C - - - - - 0x00476F 01:875F: 29 01     AND #$01
C - - - - - 0x004771 01:8761: A8        TAY
C - - - - - 0x004772 01:8762: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x004775 01:8765: D9 93 87  CMP tbl_8793_pos_Y,Y
C - - - - - 0x004778 01:8768: 6A        ROR
C - - - - - 0x004779 01:8769: 5D AE 06  EOR ram_spd_Y_hi_obj,X
C - - - - - 0x00477C 01:876C: 10 03     BPL bra_8771
C - - - - - 0x00477E 01:876E: 20 EE A7  JSR sub_0x0067FE_inverse_spd_Y
bra_8771:
C - - - - - 0x004781 01:8771: BD 9C 07  LDA ram_079C_obj,X
C - - - - - 0x004784 01:8774: D0 B6     BNE bra_872C_RTS
C - - - - - 0x004786 01:8776: BD CA 06  LDA ram_spd_X_hi_obj,X
C - - - - - 0x004789 01:8779: 2A        ROL
C - - - - - 0x00478A 01:877A: 2A        ROL
C - - - - - 0x00478B 01:877B: 29 01     AND #$01
C - - - - - 0x00478D 01:877D: A8        TAY
C - - - - - 0x00478E 01:877E: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x004791 01:8781: D9 95 87  CMP tbl_8795_pos_X,Y
C - - - - - 0x004794 01:8784: 6A        ROR
C - - - - - 0x004795 01:8785: 5D CA 06  EOR ram_spd_X_hi_obj,X
C - - - - - 0x004798 01:8788: 10 A2     BPL bra_872C_RTS
C - - - - - 0x00479A 01:878A: B9 97 87  LDA tbl_8797,Y
C - - - - - 0x00479D 01:878D: 9D 80 07  STA ram_0780_obj,X
C - - - - - 0x0047A0 01:8790: 4C DC A7  JMP loc_0x0067EC_inverse_spd_X



tbl_8793_pos_Y:
- D 0 - - - 0x0047A3 01:8793: 78        .byte $78   ; 00 
- D 0 - - - 0x0047A4 01:8794: 40        .byte $40   ; 01 



tbl_8795_pos_X:
- D 0 - - - 0x0047A5 01:8795: E0        .byte $E0   ; 00 
- D 0 - - - 0x0047A6 01:8796: 10        .byte $10   ; 01 



tbl_8797:
- - - - - - 0x0047A7 01:8797: 00        .byte $00   ; 00 
- D 0 - - - 0x0047A8 01:8798: 01        .byte $01   ; 01 



sub_8799:
C - - - - - 0x0047A9 01:8799: A9 14     LDA #$14
C - - - - - 0x0047AB 01:879B: 85 08     STA ram_0008
C - - - - - 0x0047AD 01:879D: A0 00     LDY #$00
; bzk optimize, check ram_index_ppu_buffer first
C - - - - - 0x0047AF 01:879F: A6 1E     LDX ram_index_ppu_buffer
C - - - - - 0x0047B1 01:87A1: E0 40     CPX #$40
C - - - - - 0x0047B3 01:87A3: B0 0F     BCS bra_87B4_skip
; if buffer is not too loaded
bra_87A5_loop:
C - - - - - 0x0047B5 01:87A5: B9 B7 87  LDA tbl_87B7,Y
C - - - - - 0x0047B8 01:87A8: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x0047BB 01:87AB: E8        INX
C - - - - - 0x0047BC 01:87AC: C8        INY
C - - - - - 0x0047BD 01:87AD: C6 08     DEC ram_0008
C - - - - - 0x0047BF 01:87AF: D0 F4     BNE bra_87A5_loop
C - - - - - 0x0047C1 01:87B1: 86 1E     STX ram_index_ppu_buffer
C - - - - - 0x0047C3 01:87B3: 18        CLC
bra_87B4_skip:
C - - - - - 0x0047C4 01:87B4: A6 10     LDX ram_0010
C - - - - - 0x0047C6 01:87B6: 60        RTS



tbl_87B7:
- D 0 - - - 0x0047C7 01:87B7: 03        .byte con_buf_mode_03   ; 

- D 0 - - - 0x0047C8 01:87B8: 2B D8     .dbyt $2BD8 ; ppu address
- D 0 - - - 0x0047CA 01:87BA: 12        .byte $12, $AA   ; counter + fill tile

- D 0 - - - 0x0047CC 01:87BC: 06        .byte con_buf_mode_06   ; 

- D 0 - - - 0x0047CD 01:87BD: 2B EA     .dbyt $2BEA ; ppu address
- D 0 - - - 0x0047CF 01:87BF: 05        .byte $05   ; counter
- D 0 - - - 0x0047D0 01:87C0: AE        .byte $AE, $FA, $FA, $FA, $FA   ; tiles

- D 0 - - - 0x0047D5 01:87C5: FF        .byte $FF   ; change mode

- D 0 - - - 0x0047D6 01:87C6: 03        .byte con_buf_mode_03   ; 

- D 0 - - - 0x0047D7 01:87C7: 2B EF     .dbyt $2BEF ; ppu address
- D 0 - - - 0x0047D9 01:87C9: 08        .byte $08, $AA   ; counter + fill tile



bra_87CB_RTS:
C - - - - - 0x0047DB 01:87CB: 60        RTS



sub_87CC_draw_helicopter:
; area 1 boss
C - - - - - 0x0047DC 01:87CC: A5 FD     LDA ram_scroll_X
C - - - - - 0x0047DE 01:87CE: 29 07     AND #$07
C - - - - - 0x0047E0 01:87D0: DD 56 07  CMP ram_0756_obj,X
C - - - - - 0x0047E3 01:87D3: F0 F6     BEQ bra_87CB_RTS
C - - - - - 0x0047E5 01:87D5: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x0047E8 01:87D8: BD CA 06  LDA ram_spd_X_hi_obj,X
C - - - - - 0x0047EB 01:87DB: 2A        ROL
C - - - - - 0x0047EC 01:87DC: 2A        ROL
C - - - - - 0x0047ED 01:87DD: 29 01     AND #$01
C - - - - - 0x0047EF 01:87DF: DD 56 07  CMP ram_0756_obj,X
C - - - - - 0x0047F2 01:87E2: D0 E7     BNE bra_87CB_RTS
C - - - - - 0x0047F4 01:87E4: A5 FD     LDA ram_scroll_X
C - - - - - 0x0047F6 01:87E6: 4A        LSR
C - - - - - 0x0047F7 01:87E7: 4A        LSR
C - - - - - 0x0047F8 01:87E8: 4A        LSR
C - - - - - 0x0047F9 01:87E9: 85 0B     STA ram_000B
C - - - - - 0x0047FB 01:87EB: BD CA 06  LDA ram_spd_X_hi_obj,X
C - - - - - 0x0047FE 01:87EE: 0A        ASL
C - - - - - 0x0047FF 01:87EF: A5 FF     LDA ram_for_2000
C - - - - - 0x004801 01:87F1: 90 02     BCC bra_87F5_moving_right
; if moving left
C - - - - - 0x004803 01:87F3: 49 01     EOR #$01
bra_87F5_moving_right:
C - - - - - 0x004805 01:87F5: 4A        LSR
C - - - - - 0x004806 01:87F6: A0 00     LDY #$00
C - - - - - 0x004808 01:87F8: B0 0D     BCS bra_8807
C - - - - - 0x00480A 01:87FA: A5 0B     LDA ram_000B
C - - - - - 0x00480C 01:87FC: C9 03     CMP #$03
C - - - - - 0x00480E 01:87FE: 90 07     BCC bra_8807
C - - - - - 0x004810 01:8800: C9 1F     CMP #$1F
C - - - - - 0x004812 01:8802: B0 03     BCS bra_8807
C - - - - - 0x004814 01:8804: E9 02     SBC #$02
C - - - - - 0x004816 01:8806: A8        TAY
bra_8807:
C - - - - - 0x004817 01:8807: 98        TYA
; A = 00-1B
C - - - - - 0x004818 01:8808: 18        CLC
C - - - - - 0x004819 01:8809: 6D 5A 88  ADC tbl_885A
C - - - - - 0x00481C 01:880C: 85 08     STA ram_0008
C - - - - - 0x00481E 01:880E: A9 00     LDA #$00
C - - - - - 0x004820 01:8810: 6D 5B 88  ADC tbl_885A + $01
C - - - - - 0x004823 01:8813: 85 09     STA ram_0009
C - - - - - 0x004825 01:8815: A6 1E     LDX ram_index_ppu_buffer
C - - - - - 0x004827 01:8817: A9 07     LDA #con_buf_mode_07
C - - - - - 0x004829 01:8819: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x00482C 01:881C: E8        INX
C - - - - - 0x00482D 01:881D: A5 0B     LDA ram_000B
C - - - - - 0x00482F 01:881F: 18        CLC
C - - - - - 0x004830 01:8820: 69 E0     ADC #< $29E0
C - - - - - 0x004832 01:8822: 9D 01 03  STA ram_nmt_buffer + $01,X  ; ppu hi
C - - - - - 0x004835 01:8825: A9 00     LDA #$00
C - - - - - 0x004837 01:8827: 69 29     ADC #> $29E0
C - - - - - 0x004839 01:8829: 9D 00 03  STA ram_nmt_buffer,X    ; ppu lo
C - - - - - 0x00483C 01:882C: E8        INX
C - - - - - 0x00483D 01:882D: E8        INX
C - - - - - 0x00483E 01:882E: A9 0B     LDA #$0B    ; counter
C - - - - - 0x004840 01:8830: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x004843 01:8833: 85 0A     STA ram_000A
C - - - - - 0x004845 01:8835: E8        INX
C - - - - - 0x004846 01:8836: A0 00     LDY #$00
bra_8838_loop:
C - - - - - 0x004848 01:8838: B1 08     LDA (ram_0008),Y
C - - - - - 0x00484A 01:883A: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x00484D 01:883D: E8        INX
C - - - - - 0x00484E 01:883E: A5 08     LDA ram_0008
C - - - - - 0x004850 01:8840: 18        CLC
C - - - - - 0x004851 01:8841: 69 1C     ADC #< $001C
C - - - - - 0x004853 01:8843: 85 08     STA ram_0008
C - - - - - 0x004855 01:8845: A5 09     LDA ram_0009
C - - - - - 0x004857 01:8847: 69 00     ADC #> $001C
C - - - - - 0x004859 01:8849: 85 09     STA ram_0009
C - - - - - 0x00485B 01:884B: C6 0A     DEC ram_000A
C - - - - - 0x00485D 01:884D: D0 E9     BNE bra_8838_loop
; close buffer
C - - - - - 0x00485F 01:884F: A9 FF     LDA #$FF
C - - - - - 0x004861 01:8851: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x004864 01:8854: E8        INX
C - - - - - 0x004865 01:8855: 86 1E     STX ram_index_ppu_buffer
C - - - - - 0x004867 01:8857: A6 10     LDX ram_0010
C - - - - - 0x004869 01:8859: 60        RTS



tbl_885A:
; bzk optimize
- D 0 - - - 0x00486A 01:885A: 5C 88     .word tbl_885C



tbl_885C:
; 1C bytes in a row, 0B columns
; 00 
- D 0 - I - 0x00486C 01:885C: 00        .byte $00   ; 
- D 0 - I - 0x00486D 01:885D: 00        .byte $00   ; 
- D 0 - I - 0x00486E 01:885E: 00        .byte $00   ; 
- D 0 - I - 0x00486F 01:885F: 00        .byte $00   ; 
- D 0 - I - 0x004870 01:8860: 00        .byte $00   ; 
- D 0 - I - 0x004871 01:8861: 00        .byte $00   ; 
- D 0 - I - 0x004872 01:8862: 00        .byte $00   ; 
- D 0 - I - 0x004873 01:8863: 00        .byte $00   ; 
- D 0 - I - 0x004874 01:8864: 00        .byte $00   ; 
- D 0 - I - 0x004875 01:8865: 00        .byte $00   ; 
- D 0 - I - 0x004876 01:8866: 00        .byte $00   ; 
- D 0 - I - 0x004877 01:8867: 00        .byte $00   ; 
- D 0 - I - 0x004878 01:8868: 00        .byte $00   ; 
- D 0 - I - 0x004879 01:8869: 00        .byte $00   ; 
- D 0 - I - 0x00487A 01:886A: 00        .byte $00   ; 
- D 0 - I - 0x00487B 01:886B: 00        .byte $00   ; 
- D 0 - I - 0x00487C 01:886C: 04        .byte $04   ; 
- D 0 - I - 0x00487D 01:886D: 05        .byte $05   ; 
- D 0 - I - 0x00487E 01:886E: 00        .byte $00   ; 
- D 0 - I - 0x00487F 01:886F: 00        .byte $00   ; 
- D 0 - I - 0x004880 01:8870: 00        .byte $00   ; 
- D 0 - I - 0x004881 01:8871: 00        .byte $00   ; 
- D 0 - I - 0x004882 01:8872: 00        .byte $00   ; 
- D 0 - I - 0x004883 01:8873: 00        .byte $00   ; 
- D 0 - I - 0x004884 01:8874: 00        .byte $00   ; 
- D 0 - I - 0x004885 01:8875: 00        .byte $00   ; 
- D 0 - I - 0x004886 01:8876: 00        .byte $00   ; 
- D 0 - I - 0x004887 01:8877: 00        .byte $00   ; 
; 01 
- D 0 - I - 0x004888 01:8878: 00        .byte $00   ; 
- D 0 - I - 0x004889 01:8879: 08        .byte $08   ; 
- D 0 - I - 0x00488A 01:887A: 00        .byte $00   ; 
- D 0 - I - 0x00488B 01:887B: 00        .byte $00   ; 
- D 0 - I - 0x00488C 01:887C: 00        .byte $00   ; 
- D 0 - I - 0x00488D 01:887D: 00        .byte $00   ; 
- D 0 - I - 0x00488E 01:887E: 00        .byte $00   ; 
- D 0 - I - 0x00488F 01:887F: 00        .byte $00   ; 
- D 0 - I - 0x004890 01:8880: 00        .byte $00   ; 
- D 0 - I - 0x004891 01:8881: 00        .byte $00   ; 
- D 0 - I - 0x004892 01:8882: 00        .byte $00   ; 
- D 0 - I - 0x004893 01:8883: 00        .byte $00   ; 
- D 0 - I - 0x004894 01:8884: 00        .byte $00   ; 
- D 0 - I - 0x004895 01:8885: 00        .byte $00   ; 
- D 0 - I - 0x004896 01:8886: 00        .byte $00   ; 
- D 0 - I - 0x004897 01:8887: 00        .byte $00   ; 
- D 0 - I - 0x004898 01:8888: 0B        .byte $0B   ; 
- D 0 - I - 0x004899 01:8889: 0C        .byte $0C   ; 
- D 0 - I - 0x00489A 01:888A: 00        .byte $00   ; 
- D 0 - I - 0x00489B 01:888B: 00        .byte $00   ; 
- D 0 - I - 0x00489C 01:888C: 00        .byte $00   ; 
- D 0 - I - 0x00489D 01:888D: 00        .byte $00   ; 
- D 0 - I - 0x00489E 01:888E: 00        .byte $00   ; 
- D 0 - I - 0x00489F 01:888F: 00        .byte $00   ; 
- D 0 - I - 0x0048A0 01:8890: 00        .byte $00   ; 
- D 0 - I - 0x0048A1 01:8891: 00        .byte $00   ; 
- D 0 - I - 0x0048A2 01:8892: 00        .byte $00   ; 
- D 0 - I - 0x0048A3 01:8893: 00        .byte $00   ; 
; 02 
- D 0 - I - 0x0048A4 01:8894: 00        .byte $00   ; 
- D 0 - I - 0x0048A5 01:8895: 0F        .byte $0F   ; 
- D 0 - I - 0x0048A6 01:8896: 08        .byte $08   ; 
- D 0 - I - 0x0048A7 01:8897: 00        .byte $00   ; 
- D 0 - I - 0x0048A8 01:8898: 00        .byte $00   ; 
- D 0 - I - 0x0048A9 01:8899: 00        .byte $00   ; 
- D 0 - I - 0x0048AA 01:889A: 00        .byte $00   ; 
- D 0 - I - 0x0048AB 01:889B: 00        .byte $00   ; 
- D 0 - I - 0x0048AC 01:889C: 00        .byte $00   ; 
- D 0 - I - 0x0048AD 01:889D: 00        .byte $00   ; 
- D 0 - I - 0x0048AE 01:889E: 00        .byte $00   ; 
- D 0 - I - 0x0048AF 01:889F: 00        .byte $00   ; 
- D 0 - I - 0x0048B0 01:88A0: 10        .byte $10   ; 
- D 0 - I - 0x0048B1 01:88A1: 11        .byte $11   ; 
- D 0 - I - 0x0048B2 01:88A2: 12        .byte $12   ; 
- D 0 - I - 0x0048B3 01:88A3: 13        .byte $13   ; 
- D 0 - I - 0x0048B4 01:88A4: 14        .byte $14   ; 
- D 0 - I - 0x0048B5 01:88A5: 15        .byte $15   ; 
- D 0 - I - 0x0048B6 01:88A6: 16        .byte $16   ; 
- D 0 - I - 0x0048B7 01:88A7: 17        .byte $17   ; 
- D 0 - I - 0x0048B8 01:88A8: 18        .byte $18   ; 
- D 0 - I - 0x0048B9 01:88A9: 19        .byte $19   ; 
- D 0 - I - 0x0048BA 01:88AA: 1A        .byte $1A   ; 
- D 0 - I - 0x0048BB 01:88AB: 00        .byte $00   ; 
- D 0 - I - 0x0048BC 01:88AC: 00        .byte $00   ; 
- D 0 - I - 0x0048BD 01:88AD: 00        .byte $00   ; 
- D 0 - I - 0x0048BE 01:88AE: 00        .byte $00   ; 
- D 0 - I - 0x0048BF 01:88AF: 00        .byte $00   ; 
; 03 
- D 0 - I - 0x0048C0 01:88B0: 00        .byte $00   ; 
- D 0 - I - 0x0048C1 01:88B1: 1C        .byte $1C   ; 
- D 0 - I - 0x0048C2 01:88B2: 1D        .byte $1D   ; 
- D 0 - I - 0x0048C3 01:88B3: 1E        .byte $1E   ; 
- D 0 - I - 0x0048C4 01:88B4: 1F        .byte $1F   ; 
- D 0 - I - 0x0048C5 01:88B5: 20        .byte $20   ; 
- D 0 - I - 0x0048C6 01:88B6: 21        .byte $21   ; 
- D 0 - I - 0x0048C7 01:88B7: 22        .byte $22   ; 
- D 0 - I - 0x0048C8 01:88B8: 23        .byte $23   ; 
- D 0 - I - 0x0048C9 01:88B9: 23        .byte $23   ; 
- D 0 - I - 0x0048CA 01:88BA: 24        .byte $24   ; 
- D 0 - I - 0x0048CB 01:88BB: 25        .byte $25   ; 
- D 0 - I - 0x0048CC 01:88BC: 26        .byte $26   ; 
- D 0 - I - 0x0048CD 01:88BD: 27        .byte $27   ; 
- D 0 - I - 0x0048CE 01:88BE: 28        .byte $28   ; 
- D 0 - I - 0x0048CF 01:88BF: 29        .byte $29   ; 
- D 0 - I - 0x0048D0 01:88C0: 2A        .byte $2A   ; 
- D 0 - I - 0x0048D1 01:88C1: 2B        .byte $2B   ; 
- D 0 - I - 0x0048D2 01:88C2: 2C        .byte $2C   ; 
- D 0 - I - 0x0048D3 01:88C3: 2D        .byte $2D   ; 
- D 0 - I - 0x0048D4 01:88C4: 2E        .byte $2E   ; 
- D 0 - I - 0x0048D5 01:88C5: 2F        .byte $2F   ; 
- D 0 - I - 0x0048D6 01:88C6: 30        .byte $30   ; 
- D 0 - I - 0x0048D7 01:88C7: 31        .byte $31   ; 
- D 0 - I - 0x0048D8 01:88C8: 32        .byte $32   ; 
- D 0 - I - 0x0048D9 01:88C9: 00        .byte $00   ; 
- D 0 - I - 0x0048DA 01:88CA: 00        .byte $00   ; 
- D 0 - I - 0x0048DB 01:88CB: 00        .byte $00   ; 
; 04 
- D 0 - I - 0x0048DC 01:88CC: 00        .byte $00   ; 
- D 0 - I - 0x0048DD 01:88CD: 33        .byte $33   ; 
- D 0 - I - 0x0048DE 01:88CE: 34        .byte $34   ; 
- D 0 - I - 0x0048DF 01:88CF: 35        .byte $35   ; 
- D 0 - I - 0x0048E0 01:88D0: 36        .byte $36   ; 
- D 0 - I - 0x0048E1 01:88D1: 37        .byte $37   ; 
- D 0 - I - 0x0048E2 01:88D2: 38        .byte $38   ; 
- D 0 - I - 0x0048E3 01:88D3: 39        .byte $39   ; 
- D 0 - I - 0x0048E4 01:88D4: 3A        .byte $3A   ; 
- D 0 - I - 0x0048E5 01:88D5: 3A        .byte $3A   ; 
- D 0 - I - 0x0048E6 01:88D6: 3A        .byte $3A   ; 
- D 0 - I - 0x0048E7 01:88D7: 3B        .byte $3B   ; 
- D 0 - I - 0x0048E8 01:88D8: 3C        .byte $3C   ; 
- D 0 - I - 0x0048E9 01:88D9: 3D        .byte $3D   ; 
- D 0 - I - 0x0048EA 01:88DA: 3E        .byte $3E   ; 
- D 0 - I - 0x0048EB 01:88DB: 3F        .byte $3F   ; 
- D 0 - I - 0x0048EC 01:88DC: 40        .byte $40   ; 
- D 0 - I - 0x0048ED 01:88DD: 41        .byte $41   ; 
- D 0 - I - 0x0048EE 01:88DE: 42        .byte $42   ; 
- D 0 - I - 0x0048EF 01:88DF: 43        .byte $43   ; 
- D 0 - I - 0x0048F0 01:88E0: 44        .byte $44   ; 
- D 0 - I - 0x0048F1 01:88E1: 45        .byte $45   ; 
- D 0 - I - 0x0048F2 01:88E2: 46        .byte $46   ; 
- D 0 - I - 0x0048F3 01:88E3: 47        .byte $47   ; 
- D 0 - I - 0x0048F4 01:88E4: 48        .byte $48   ; 
- D 0 - I - 0x0048F5 01:88E5: 49        .byte $49   ; 
- D 0 - I - 0x0048F6 01:88E6: 00        .byte $00   ; 
- D 0 - I - 0x0048F7 01:88E7: 00        .byte $00   ; 
; 05 
- D 0 - I - 0x0048F8 01:88E8: 00        .byte $00   ; 
- D 0 - I - 0x0048F9 01:88E9: 00        .byte $00   ; 
- D 0 - I - 0x0048FA 01:88EA: 4A        .byte $4A   ; 
- D 0 - I - 0x0048FB 01:88EB: 4B        .byte $4B   ; 
- D 0 - I - 0x0048FC 01:88EC: 4C        .byte $4C   ; 
- D 0 - I - 0x0048FD 01:88ED: 4D        .byte $4D   ; 
- D 0 - I - 0x0048FE 01:88EE: 4E        .byte $4E   ; 
- D 0 - I - 0x0048FF 01:88EF: 4F        .byte $4F   ; 
- D 0 - I - 0x004900 01:88F0: 50        .byte $50   ; 
- D 0 - I - 0x004901 01:88F1: 51        .byte $51   ; 
- D 0 - I - 0x004902 01:88F2: C2        .byte $C2   ; 
- D 0 - I - 0x004903 01:88F3: C3        .byte $C3   ; 
- D 0 - I - 0x004904 01:88F4: 51        .byte $51   ; 
- D 0 - I - 0x004905 01:88F5: C2        .byte $C2   ; 
- D 0 - I - 0x004906 01:88F6: C3        .byte $C3   ; 
- D 0 - I - 0x004907 01:88F7: 51        .byte $51   ; 
- D 0 - I - 0x004908 01:88F8: C2        .byte $C2   ; 
- D 0 - I - 0x004909 01:88F9: C3        .byte $C3   ; 
- D 0 - I - 0x00490A 01:88FA: 51        .byte $51   ; 
- D 0 - I - 0x00490B 01:88FB: C2        .byte $C2   ; 
- D 0 - I - 0x00490C 01:88FC: C3        .byte $C3   ; 
- D 0 - I - 0x00490D 01:88FD: 54        .byte $54   ; 
- D 0 - I - 0x00490E 01:88FE: 55        .byte $55   ; 
- D 0 - I - 0x00490F 01:88FF: 56        .byte $56   ; 
- D 0 - I - 0x004910 01:8900: 57        .byte $57   ; 
- D 0 - I - 0x004911 01:8901: 58        .byte $58   ; 
- D 0 - I - 0x004912 01:8902: 59        .byte $59   ; 
- D 0 - I - 0x004913 01:8903: 5A        .byte $5A   ; 
; 06 
- D 0 - I - 0x004914 01:8904: 00        .byte $00   ; 
- D 0 - I - 0x004915 01:8905: 00        .byte $00   ; 
- D 0 - I - 0x004916 01:8906: 00        .byte $00   ; 
- D 0 - I - 0x004917 01:8907: 00        .byte $00   ; 
- D 0 - I - 0x004918 01:8908: 00        .byte $00   ; 
- D 0 - I - 0x004919 01:8909: 00        .byte $00   ; 
- D 0 - I - 0x00491A 01:890A: 00        .byte $00   ; 
- D 0 - I - 0x00491B 01:890B: 5B        .byte $5B   ; 
- D 0 - I - 0x00491C 01:890C: 5C        .byte $5C   ; 
- D 0 - I - 0x00491D 01:890D: 5D        .byte $5D   ; 
- D 0 - I - 0x00491E 01:890E: C4        .byte $C4   ; 
- D 0 - I - 0x00491F 01:890F: C5        .byte $C5   ; 
- D 0 - I - 0x004920 01:8910: 60        .byte $60   ; 
- D 0 - I - 0x004921 01:8911: C4        .byte $C4   ; 
- D 0 - I - 0x004922 01:8912: C5        .byte $C5   ; 
- D 0 - I - 0x004923 01:8913: 60        .byte $60   ; 
- D 0 - I - 0x004924 01:8914: C4        .byte $C4   ; 
- D 0 - I - 0x004925 01:8915: C5        .byte $C5   ; 
- D 0 - I - 0x004926 01:8916: 60        .byte $60   ; 
- D 0 - I - 0x004927 01:8917: C4        .byte $C4   ; 
- D 0 - I - 0x004928 01:8918: C5        .byte $C5   ; 
- D 0 - I - 0x004929 01:8919: 61        .byte $61   ; 
- D 0 - I - 0x00492A 01:891A: 62        .byte $62   ; 
- D 0 - I - 0x00492B 01:891B: 63        .byte $63   ; 
- D 0 - I - 0x00492C 01:891C: 64        .byte $64   ; 
- D 0 - I - 0x00492D 01:891D: 65        .byte $65   ; 
- D 0 - I - 0x00492E 01:891E: 66        .byte $66   ; 
- D 0 - I - 0x00492F 01:891F: 67        .byte $67   ; 
; 07 
- D 0 - I - 0x004930 01:8920: 00        .byte $00   ; 
- D 0 - I - 0x004931 01:8921: 00        .byte $00   ; 
- D 0 - I - 0x004932 01:8922: 00        .byte $00   ; 
- D 0 - I - 0x004933 01:8923: 00        .byte $00   ; 
- D 0 - I - 0x004934 01:8924: 00        .byte $00   ; 
- D 0 - I - 0x004935 01:8925: 00        .byte $00   ; 
- D 0 - I - 0x004936 01:8926: 00        .byte $00   ; 
- D 0 - I - 0x004937 01:8927: 00        .byte $00   ; 
- D 0 - I - 0x004938 01:8928: 68        .byte $68   ; 
- D 0 - I - 0x004939 01:8929: 69        .byte $69   ; 
- D 0 - I - 0x00493A 01:892A: 6A        .byte $6A   ; 
- D 0 - I - 0x00493B 01:892B: 6B        .byte $6B   ; 
- D 0 - I - 0x00493C 01:892C: 6C        .byte $6C   ; 
- D 0 - I - 0x00493D 01:892D: 6D        .byte $6D   ; 
- D 0 - I - 0x00493E 01:892E: 6E        .byte $6E   ; 
- D 0 - I - 0x00493F 01:892F: 6F        .byte $6F   ; 
- D 0 - I - 0x004940 01:8930: 70        .byte $70   ; 
- D 0 - I - 0x004941 01:8931: 71        .byte $71   ; 
- D 0 - I - 0x004942 01:8932: 72        .byte $72   ; 
- D 0 - I - 0x004943 01:8933: 73        .byte $73   ; 
- D 0 - I - 0x004944 01:8934: 74        .byte $74   ; 
- D 0 - I - 0x004945 01:8935: 75        .byte $75   ; 
- D 0 - I - 0x004946 01:8936: 76        .byte $76   ; 
- D 0 - I - 0x004947 01:8937: 77        .byte $77   ; 
- D 0 - I - 0x004948 01:8938: 78        .byte $78   ; 
- D 0 - I - 0x004949 01:8939: 79        .byte $79   ; 
- D 0 - I - 0x00494A 01:893A: 7A        .byte $7A   ; 
- D 0 - I - 0x00494B 01:893B: 7B        .byte $7B   ; 
; 08 
- D 0 - I - 0x00494C 01:893C: 00        .byte $00   ; 
- D 0 - I - 0x00494D 01:893D: 00        .byte $00   ; 
- D 0 - I - 0x00494E 01:893E: 00        .byte $00   ; 
- D 0 - I - 0x00494F 01:893F: 00        .byte $00   ; 
- D 0 - I - 0x004950 01:8940: 00        .byte $00   ; 
- D 0 - I - 0x004951 01:8941: 00        .byte $00   ; 
- D 0 - I - 0x004952 01:8942: 00        .byte $00   ; 
- D 0 - I - 0x004953 01:8943: 00        .byte $00   ; 
- D 0 - I - 0x004954 01:8944: 00        .byte $00   ; 
- D 0 - I - 0x004955 01:8945: 7C        .byte $7C   ; 
- D 0 - I - 0x004956 01:8946: 7D        .byte $7D   ; 
- D 0 - I - 0x004957 01:8947: 7E        .byte $7E   ; 
- D 0 - I - 0x004958 01:8948: 7F        .byte $7F   ; 
- D 0 - I - 0x004959 01:8949: 80        .byte $80   ; 
- D 0 - I - 0x00495A 01:894A: 81        .byte $81   ; 
- D 0 - I - 0x00495B 01:894B: 82        .byte $82   ; 
- D 0 - I - 0x00495C 01:894C: 83        .byte $83   ; 
- D 0 - I - 0x00495D 01:894D: 84        .byte $84   ; 
- D 0 - I - 0x00495E 01:894E: 85        .byte $85   ; 
- D 0 - I - 0x00495F 01:894F: 86        .byte $86   ; 
- D 0 - I - 0x004960 01:8950: 87        .byte $87   ; 
- D 0 - I - 0x004961 01:8951: 88        .byte $88   ; 
- D 0 - I - 0x004962 01:8952: 89        .byte $89   ; 
- D 0 - I - 0x004963 01:8953: 8A        .byte $8A   ; 
- D 0 - I - 0x004964 01:8954: 8B        .byte $8B   ; 
- D 0 - I - 0x004965 01:8955: 8C        .byte $8C   ; 
- D 0 - I - 0x004966 01:8956: 00        .byte $00   ; 
- D 0 - I - 0x004967 01:8957: 00        .byte $00   ; 
; 09 
- D 0 - I - 0x004968 01:8958: 00        .byte $00   ; 
- D 0 - I - 0x004969 01:8959: 00        .byte $00   ; 
- D 0 - I - 0x00496A 01:895A: 00        .byte $00   ; 
- D 0 - I - 0x00496B 01:895B: 00        .byte $00   ; 
- D 0 - I - 0x00496C 01:895C: 00        .byte $00   ; 
- D 0 - I - 0x00496D 01:895D: 00        .byte $00   ; 
- D 0 - I - 0x00496E 01:895E: 00        .byte $00   ; 
- D 0 - I - 0x00496F 01:895F: 00        .byte $00   ; 
- D 0 - I - 0x004970 01:8960: 00        .byte $00   ; 
- D 0 - I - 0x004971 01:8961: 00        .byte $00   ; 
- D 0 - I - 0x004972 01:8962: 00        .byte $00   ; 
- D 0 - I - 0x004973 01:8963: 00        .byte $00   ; 
- D 0 - I - 0x004974 01:8964: 00        .byte $00   ; 
- D 0 - I - 0x004975 01:8965: 00        .byte $00   ; 
- D 0 - I - 0x004976 01:8966: 8D        .byte $8D   ; 
- D 0 - I - 0x004977 01:8967: 8E        .byte $8E   ; 
- D 0 - I - 0x004978 01:8968: 00        .byte $00   ; 
- D 0 - I - 0x004979 01:8969: 00        .byte $00   ; 
- D 0 - I - 0x00497A 01:896A: 00        .byte $00   ; 
- D 0 - I - 0x00497B 01:896B: 00        .byte $00   ; 
- D 0 - I - 0x00497C 01:896C: 00        .byte $00   ; 
- D 0 - I - 0x00497D 01:896D: 00        .byte $00   ; 
- D 0 - I - 0x00497E 01:896E: 00        .byte $00   ; 
- D 0 - I - 0x00497F 01:896F: 8F        .byte $8F   ; 
- D 0 - I - 0x004980 01:8970: 90        .byte $90   ; 
- D 0 - I - 0x004981 01:8971: 00        .byte $00   ; 
- D 0 - I - 0x004982 01:8972: 00        .byte $00   ; 
- D 0 - I - 0x004983 01:8973: 00        .byte $00   ; 
; 0A 
- D 0 - I - 0x004984 01:8974: 00        .byte $00   ; 
- D 0 - I - 0x004985 01:8975: 00        .byte $00   ; 
- D 0 - I - 0x004986 01:8976: 00        .byte $00   ; 
- D 0 - I - 0x004987 01:8977: 00        .byte $00   ; 
- D 0 - I - 0x004988 01:8978: 00        .byte $00   ; 
- D 0 - I - 0x004989 01:8979: 00        .byte $00   ; 
- D 0 - I - 0x00498A 01:897A: 00        .byte $00   ; 
- D 0 - I - 0x00498B 01:897B: 00        .byte $00   ; 
- D 0 - I - 0x00498C 01:897C: 00        .byte $00   ; 
- D 0 - I - 0x00498D 01:897D: 00        .byte $00   ; 
- D 0 - I - 0x00498E 01:897E: 00        .byte $00   ; 
- D 0 - I - 0x00498F 01:897F: 00        .byte $00   ; 
- D 0 - I - 0x004990 01:8980: 00        .byte $00   ; 
- D 0 - I - 0x004991 01:8981: 00        .byte $00   ; 
- D 0 - I - 0x004992 01:8982: 91        .byte $91   ; 
- D 0 - I - 0x004993 01:8983: 92        .byte $92   ; 
- D 0 - I - 0x004994 01:8984: 00        .byte $00   ; 
- D 0 - I - 0x004995 01:8985: 00        .byte $00   ; 
- D 0 - I - 0x004996 01:8986: 00        .byte $00   ; 
- D 0 - I - 0x004997 01:8987: 00        .byte $00   ; 
- D 0 - I - 0x004998 01:8988: 00        .byte $00   ; 
- D 0 - I - 0x004999 01:8989: 00        .byte $00   ; 
- D 0 - I - 0x00499A 01:898A: 00        .byte $00   ; 
- D 0 - I - 0x00499B 01:898B: 00        .byte $00   ; 
- D 0 - I - 0x00499C 01:898C: 00        .byte $00   ; 
- D 0 - I - 0x00499D 01:898D: 00        .byte $00   ; 
- D 0 - I - 0x00499E 01:898E: 00        .byte $00   ; 
- D 0 - I - 0x00499F 01:898F: 00        .byte $00   ; 



loc_8990:
C D 0 - - - 0x0049A0 01:8990: A5 5B     LDA ram_frm_cnt_2
; bzk optimize, useless, always branches
C - - - - - 0x0049A2 01:8992: 29 00     AND #$00
C - - - - - 0x0049A4 01:8994: F0 03     BEQ bra_8999    ; jmp
- - - - - - 0x0049A6 01:8996: 4C 85 8A  JMP loc_8A85
bra_8999:
C - - - - - 0x0049A9 01:8999: BD 10 07  LDA ram_0710_obj,X
C - - - - - 0x0049AC 01:899C: 0A        ASL
C - - - - - 0x0049AD 01:899D: A8        TAY
C - - - - - 0x0049AE 01:899E: B9 88 8A  LDA tbl_8A88,Y
C - - - - - 0x0049B1 01:89A1: 85 08     STA ram_0008
C - - - - - 0x0049B3 01:89A3: B9 89 8A  LDA tbl_8A88 + $01,Y
C - - - - - 0x0049B6 01:89A6: 85 09     STA ram_0009
C - - - - - 0x0049B8 01:89A8: A6 1E     LDX ram_index_ppu_buffer
C - - - - - 0x0049BA 01:89AA: A9 06     LDA #con_buf_mode_06
C - - - - - 0x0049BC 01:89AC: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x0049BF 01:89AF: E8        INX
C - - - - - 0x0049C0 01:89B0: A0 00     LDY #$00
C - - - - - 0x0049C2 01:89B2: 84 06     STY ram_0006
loc_89B4:
C D 0 - - - 0x0049C4 01:89B4: 84 07     STY ram_0007
C - - - - - 0x0049C6 01:89B6: B1 08     LDA (ram_0008),Y    ; ppu hi
C - - - - - 0x0049C8 01:89B8: 10 03     BPL bra_89BD
; FF
C - - - - - 0x0049CA 01:89BA: 4C 69 8A  JMP loc_8A69_FF
bra_89BD:
C - - - - - 0x0049CD 01:89BD: 29 1F     AND #$1F
C - - - - - 0x0049CF 01:89BF: 85 05     STA ram_0005
C - - - - - 0x0049D1 01:89C1: A5 FF     LDA ram_for_2000
C - - - - - 0x0049D3 01:89C3: 6A        ROR
C - - - - - 0x0049D4 01:89C4: 6A        ROR
C - - - - - 0x0049D5 01:89C5: 6A        ROR
C - - - - - 0x0049D6 01:89C6: 6A        ROR
C - - - - - 0x0049D7 01:89C7: 29 20     AND #$20
C - - - - - 0x0049D9 01:89C9: 09 01     ORA #$01
C - - - - - 0x0049DB 01:89CB: 85 00     STA ram_0000
C - - - - - 0x0049DD 01:89CD: A5 FD     LDA ram_scroll_X
C - - - - - 0x0049DF 01:89CF: 4A        LSR
C - - - - - 0x0049E0 01:89D0: 4A        LSR
C - - - - - 0x0049E1 01:89D1: 4A        LSR
C - - - - - 0x0049E2 01:89D2: 18        CLC
C - - - - - 0x0049E3 01:89D3: 65 00     ADC ram_0000
C - - - - - 0x0049E5 01:89D5: 29 3F     AND #$3F
C - - - - - 0x0049E7 01:89D7: 85 00     STA ram_0000
C - - - - - 0x0049E9 01:89D9: 51 08     EOR (ram_0008),Y    ; ppu hi
C - - - - - 0x0049EB 01:89DB: C8        INY
C - - - - - 0x0049EC 01:89DC: C8        INY
C - - - - - 0x0049ED 01:89DD: 29 20     AND #$20
C - - - - - 0x0049EF 01:89DF: D0 1C     BNE bra_89FD
C - - - - - 0x0049F1 01:89E1: A5 00     LDA ram_0000
C - - - - - 0x0049F3 01:89E3: 29 1F     AND #$1F
C - - - - - 0x0049F5 01:89E5: 38        SEC
C - - - - - 0x0049F6 01:89E6: E5 05     SBC ram_0005
C - - - - - 0x0049F8 01:89E8: B0 02     BCS bra_89EC
C - - - - - 0x0049FA 01:89EA: A9 00     LDA #$00
bra_89EC:
C - - - - - 0x0049FC 01:89EC: 85 02     STA ram_0002
C - - - - - 0x0049FE 01:89EE: 18        CLC
C - - - - - 0x0049FF 01:89EF: 65 05     ADC ram_0005
C - - - - - 0x004A01 01:89F1: 85 03     STA ram_0003
C - - - - - 0x004A03 01:89F3: B1 08     LDA (ram_0008),Y    ; counter
C - - - - - 0x004A05 01:89F5: 38        SEC
C - - - - - 0x004A06 01:89F6: E5 02     SBC ram_0002
C - - - - - 0x004A08 01:89F8: 85 04     STA ram_0004
C - - - - - 0x004A0A 01:89FA: 4C 1C 8A  JMP loc_8A1C
bra_89FD:
C - - - - - 0x004A0D 01:89FD: A9 FF     LDA #$FF
C - - - - - 0x004A0F 01:89FF: 85 04     STA ram_0004
C - - - - - 0x004A11 01:8A01: A5 00     LDA ram_0000
C - - - - - 0x004A13 01:8A03: 29 1F     AND #$1F
C - - - - - 0x004A15 01:8A05: 38        SEC
C - - - - - 0x004A16 01:8A06: E5 05     SBC ram_0005
C - - - - - 0x004A18 01:8A08: F0 0A     BEQ bra_8A14
C - - - - - 0x004A1A 01:8A0A: 90 08     BCC bra_8A14
C - - - - - 0x004A1C 01:8A0C: D1 08     CMP (ram_0008),Y    ; counter
C - - - - - 0x004A1E 01:8A0E: 90 02     BCC bra_8A12
C - - - - - 0x004A20 01:8A10: B1 08     LDA (ram_0008),Y    ; counter
bra_8A12:
C - - - - - 0x004A22 01:8A12: 85 04     STA ram_0004
bra_8A14:
C - - - - - 0x004A24 01:8A14: A5 05     LDA ram_0005
C - - - - - 0x004A26 01:8A16: 85 03     STA ram_0003
C - - - - - 0x004A28 01:8A18: A9 00     LDA #$00
C - - - - - 0x004A2A 01:8A1A: 85 02     STA ram_0002
loc_8A1C:
C D 0 - - - 0x004A2C 01:8A1C: 88        DEY
C - - - - - 0x004A2D 01:8A1D: A9 00     LDA #$00
C - - - - - 0x004A2F 01:8A1F: 85 00     STA ram_0000
C - - - - - 0x004A31 01:8A21: B1 08     LDA (ram_0008),Y    ; ppu lo
C - - - - - 0x004A33 01:8A23: 0A        ASL
C - - - - - 0x004A34 01:8A24: 0A        ASL
C - - - - - 0x004A35 01:8A25: 0A        ASL
C - - - - - 0x004A36 01:8A26: 0A        ASL
C - - - - - 0x004A37 01:8A27: 26 00     ROL ram_0000
C - - - - - 0x004A39 01:8A29: 0A        ASL
C - - - - - 0x004A3A 01:8A2A: 26 00     ROL ram_0000
C - - - - - 0x004A3C 01:8A2C: 18        CLC
C - - - - - 0x004A3D 01:8A2D: 65 03     ADC ram_0003
C - - - - - 0x004A3F 01:8A2F: 9D 01 03  STA ram_nmt_buffer + $01,X  ; ppu hi
C - - - - - 0x004A42 01:8A32: A5 00     LDA ram_0000
C - - - - - 0x004A44 01:8A34: 09 28     ORA #$28
C - - - - - 0x004A46 01:8A36: 9D 00 03  STA ram_nmt_buffer,X    ; ppu lo
C - - - - - 0x004A49 01:8A39: C8        INY
C - - - - - 0x004A4A 01:8A3A: A5 04     LDA ram_0004
C - - - - - 0x004A4C 01:8A3C: F0 1B     BEQ bra_8A59
C - - - - - 0x004A4E 01:8A3E: 30 19     BMI bra_8A59
C - - - - - 0x004A50 01:8A40: E8        INX
C - - - - - 0x004A51 01:8A41: E8        INX
C - - - - - 0x004A52 01:8A42: 9D 00 03  STA ram_nmt_buffer,X    ; counter
C - - - - - 0x004A55 01:8A45: E8        INX
C - - - - - 0x004A56 01:8A46: C8        INY
C - - - - - 0x004A57 01:8A47: 98        TYA
C - - - - - 0x004A58 01:8A48: 18        CLC
C - - - - - 0x004A59 01:8A49: 65 02     ADC ram_0002
C - - - - - 0x004A5B 01:8A4B: A8        TAY
bra_8A4C_loop:
C - - - - - 0x004A5C 01:8A4C: B1 08     LDA (ram_0008),Y    ; tiles
C - - - - - 0x004A5E 01:8A4E: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x004A61 01:8A51: C8        INY
C - - - - - 0x004A62 01:8A52: E8        INX
C - - - - - 0x004A63 01:8A53: C6 04     DEC ram_0004
C - - - - - 0x004A65 01:8A55: D0 F5     BNE bra_8A4C_loop
C - - - - - 0x004A67 01:8A57: E6 06     INC ram_0006
bra_8A59:
C - - - - - 0x004A69 01:8A59: A4 07     LDY ram_0007
C - - - - - 0x004A6B 01:8A5B: C8        INY
C - - - - - 0x004A6C 01:8A5C: C8        INY
C - - - - - 0x004A6D 01:8A5D: 84 07     STY ram_0007
C - - - - - 0x004A6F 01:8A5F: B1 08     LDA (ram_0008),Y    ; counter
C - - - - - 0x004A71 01:8A61: 18        CLC
C - - - - - 0x004A72 01:8A62: 65 07     ADC ram_0007
C - - - - - 0x004A74 01:8A64: A8        TAY
C - - - - - 0x004A75 01:8A65: C8        INY
C - - - - - 0x004A76 01:8A66: 4C B4 89  JMP loc_89B4



loc_8A69_FF:
C D 0 - - - 0x004A79 01:8A69: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x004A7C 01:8A6C: E8        INX
C - - - - - 0x004A7D 01:8A6D: A5 06     LDA ram_0006
C - - - - - 0x004A7F 01:8A6F: F0 02     BEQ bra_8A73
C - - - - - 0x004A81 01:8A71: 86 1E     STX ram_index_ppu_buffer
bra_8A73:
C - - - - - 0x004A83 01:8A73: A6 10     LDX ram_0010
C - - - - - 0x004A85 01:8A75: BD 10 07  LDA ram_0710_obj,X
C - - - - - 0x004A88 01:8A78: 18        CLC
C - - - - - 0x004A89 01:8A79: 69 01     ADC #$01
C - - - - - 0x004A8B 01:8A7B: C9 06     CMP #$06
C - - - - - 0x004A8D 01:8A7D: 90 02     BCC bra_8A81
C - - - - - 0x004A8F 01:8A7F: A9 00     LDA #$00
bra_8A81:
C - - - - - 0x004A91 01:8A81: 9D 10 07  STA ram_0710_obj,X
C - - - - - 0x004A94 01:8A84: 60        RTS



loc_8A85:
- - - - - - 0x004A95 01:8A85: A6 10     LDX ram_0010
- - - - - - 0x004A97 01:8A87: 60        RTS



tbl_8A88:
- D 0 - - - 0x004A98 01:8A88: 94 8A     .word _off016_8A94_00
- D 0 - - - 0x004A9A 01:8A8A: 06 8B     .word _off016_8B06_01
- D 0 - - - 0x004A9C 01:8A8C: 3C 8B     .word _off016_8B3C_02
- D 0 - - - 0x004A9E 01:8A8E: 75 8B     .word _off016_8B75_03
- D 0 - - - 0x004AA0 01:8A90: A1 8B     .word _off016_8BA1_04
- D 0 - - - 0x004AA2 01:8A92: CB 8B     .word _off016_8BCB_05

; note: ppu addresses go through calculations (hi 0x0049C6 and 0x0049E9, lo 0x004A31)

_off016_8A94_00:
- D 0 - I - 0x004AA4 01:8A94: 21 0E     .dbyt $210E ; 
- D 0 - I - 0x004AA6 01:8A96: 04        .byte $04   ; counter
- D 0 - I - 0x004AA7 01:8A97: 00        .byte $00, $00, $00, $00   ; 

- D 0 - I - 0x004AAB 01:8A9B: 21 0F     .dbyt $210F ; 
- D 0 - I - 0x004AAD 01:8A9D: 04        .byte $04   ; counter
- D 0 - I - 0x004AAE 01:8A9E: 00        .byte $00, $00, $00, $00   ; 

- D 0 - I - 0x004AB2 01:8AA2: 20 10     .dbyt $2010 ; 
- D 0 - I - 0x004AB4 01:8AA4: 06        .byte $06   ; counter
- D 0 - I - 0x004AB5 01:8AA5: 09        .byte $09, $09, $00, $00, $00, $00   ; 

- D 0 - I - 0x004ABB 01:8AAB: 21 11     .dbyt $2111 ; 
- D 0 - I - 0x004ABD 01:8AAD: 03        .byte $03   ; counter
- D 0 - I - 0x004ABE 01:8AAE: 00        .byte $00, $00, $00   ; 

- D 0 - I - 0x004AC1 01:8AB1: 21 12     .dbyt $2112 ; 
- D 0 - I - 0x004AC3 01:8AB3: 02        .byte $02   ; counter
- D 0 - I - 0x004AC4 01:8AB4: 00        .byte $00, $00   ; 

- D 0 - I - 0x004AC6 01:8AB6: 06 10     .dbyt $0610 ; 
- D 0 - I - 0x004AC8 01:8AB8: 08        .byte $08   ; counter
- D 0 - I - 0x004AC9 01:8AB9: 09        .byte $09, $09, $09, $0A, $09, $0A, $09, $0A   ; 

- D 0 - I - 0x004AD1 01:8AC1: 1A 10     .dbyt $1A10 ; 
- D 0 - I - 0x004AD3 01:8AC3: 06        .byte $06   ; counter
- D 0 - I - 0x004AD4 01:8AC4: 0A        .byte $0A, $09, $0A, $09, $0A, $09   ; 

- D 0 - I - 0x004ADA 01:8ACA: 26 10     .dbyt $2610 ; 
- D 0 - I - 0x004ADC 01:8ACC: 1A        .byte $1A   ; counter
- D 0 - I - 0x004ADD 01:8ACD: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x004AED 01:8ADD: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 

- D 0 - I - 0x004AF7 01:8AE7: 03 0E     .dbyt $030E ; 
- D 0 - I - 0x004AF9 01:8AE9: 02        .byte $02   ; counter
- D 0 - I - 0x004AFA 01:8AEA: 00        .byte $00, $00   ; 

- D 0 - I - 0x004AFC 01:8AEC: 03 0F     .dbyt $030F ; 
- D 0 - I - 0x004AFE 01:8AEE: 02        .byte $02   ; counter
- D 0 - I - 0x004AFF 01:8AEF: 00        .byte $00, $00   ; 

- D 0 - I - 0x004B01 01:8AF1: 00 10     .dbyt $0010 ; 
- D 0 - I - 0x004B03 01:8AF3: 06        .byte $06   ; counter
- D 0 - I - 0x004B04 01:8AF4: B4        .byte $B4, $B5, $B6, $B7, $B8, $B9   ; 

- D 0 - I - 0x004B0A 01:8AFA: 01 11     .dbyt $0111 ; 
- D 0 - I - 0x004B0C 01:8AFC: 03        .byte $03   ; counter
- D 0 - I - 0x004B0D 01:8AFD: 00        .byte $00, $0D, $AF   ; 

- D 0 - I - 0x004B10 01:8B00: 01 12     .dbyt $0112 ; 
- D 0 - I - 0x004B12 01:8B02: 02        .byte $02   ; counter
- D 0 - I - 0x004B13 01:8B03: 00        .byte $00, $00   ; 

- D 0 - I - 0x004B15 01:8B05: FF        .byte $FF   ; end token



_off016_8B06_01:
- D 0 - I - 0x004B16 01:8B06: 20 10     .dbyt $2010 ; 
- D 0 - I - 0x004B18 01:8B08: 02        .byte $02   ; counter
- D 0 - I - 0x004B19 01:8B09: 00        .byte $00, $00   ; 

- D 0 - I - 0x004B1B 01:8B0B: 06 10     .dbyt $0610 ; 
- D 0 - I - 0x004B1D 01:8B0D: 08        .byte $08   ; counter
- D 0 - I - 0x004B1E 01:8B0E: 00        .byte $00, $00, $00, $00, $09, $09, $0A, $09   ; 

- D 0 - I - 0x004B26 01:8B16: 1A 10     .dbyt $1A10 ; 
- D 0 - I - 0x004B28 01:8B18: 06        .byte $06   ; counter
- D 0 - I - 0x004B29 01:8B19: 09        .byte $09, $0A, $09, $09, $00, $00   ; 

- D 0 - I - 0x004B2F 01:8B1F: 01 0E     .dbyt $010E ; 
- D 0 - I - 0x004B31 01:8B21: 01        .byte $01   ; counter
- D 0 - I - 0x004B32 01:8B22: 01        .byte $01   ; 

- D 0 - I - 0x004B33 01:8B23: 01 0F     .dbyt $010F ; 
- D 0 - I - 0x004B35 01:8B25: 02        .byte $02   ; counter
- D 0 - I - 0x004B36 01:8B26: 02        .byte $02, $03   ; 

- D 0 - I - 0x004B38 01:8B28: 00 10     .dbyt $0010 ; 
- D 0 - I - 0x004B3A 01:8B2A: 06        .byte $06   ; counter
- D 0 - I - 0x004B3B 01:8B2B: 00        .byte $00, $00, $06, $07, $08, $00   ; 

- D 0 - I - 0x004B41 01:8B31: 03 11     .dbyt $0311 ; 
- D 0 - I - 0x004B43 01:8B33: 02        .byte $02   ; counter
- D 0 - I - 0x004B44 01:8B34: 0E        .byte $0E, $0F   ; 

- D 0 - I - 0x004B46 01:8B36: 03 12     .dbyt $0312 ; 
- D 0 - I - 0x004B48 01:8B38: 02        .byte $02   ; counter
- D 0 - I - 0x004B49 01:8B39: 1B        .byte $1B, $1C   ; 

- D 0 - I - 0x004B4B 01:8B3B: FF        .byte $FF   ; end token



_off016_8B3C_02:
- D 0 - I - 0x004B4C 01:8B3C: 0A 10     .dbyt $0A10 ; 
- D 0 - I - 0x004B4E 01:8B3E: 14        .byte $14   ; counter
- D 0 - I - 0x004B4F 01:8B3F: 00        .byte $00, $00, $00, $00, $00, $09, $09, $0A, $0A, $C6, $0C, $0A, $0A, $09, $09, $00   ; 
- D 0 - I - 0x004B5F 01:8B4F: 00        .byte $00, $00, $00, $00   ; 

- D 0 - I - 0x004B63 01:8B53: 01 0E     .dbyt $010E ; 
- D 0 - I - 0x004B65 01:8B55: 04        .byte $04   ; counter
- D 0 - I - 0x004B66 01:8B56: 00        .byte $00, $00, $A7, $A8   ; 

- D 0 - I - 0x004B6A 01:8B5A: 01 0F     .dbyt $010F ; 
- D 0 - I - 0x004B6C 01:8B5C: 04        .byte $04   ; counter
- D 0 - I - 0x004B6D 01:8B5D: 00        .byte $00, $00, $A9, $AA   ; 

- D 0 - I - 0x004B71 01:8B61: 02 10     .dbyt $0210 ; 
- D 0 - I - 0x004B73 01:8B63: 02        .byte $02   ; counter
- D 0 - I - 0x004B74 01:8B64: AB        .byte $AB, $AC   ; 

- D 0 - I - 0x004B76 01:8B66: 01 11     .dbyt $0111 ; 
- D 0 - I - 0x004B78 01:8B68: 04        .byte $04   ; counter
- D 0 - I - 0x004B79 01:8B69: AD        .byte $AD, $AE, $AF, $B0   ; 

- D 0 - I - 0x004B7D 01:8B6D: 01 12     .dbyt $0112 ; 
- D 0 - I - 0x004B7F 01:8B6F: 04        .byte $04   ; counter
- D 0 - I - 0x004B80 01:8B70: B1        .byte $B1, $B2, $B3, $5D   ; 

- D 0 - I - 0x004B84 01:8B74: FF        .byte $FF   ; end token



_off016_8B75_03:

- D 0 - I - 0x004B85 01:8B75: 0F 10     .dbyt $0F10 ; 
- D 0 - I - 0x004B87 01:8B77: 0A        .byte $0A   ; counter
- D 0 - I - 0x004B88 01:8B78: 00        .byte $00, $00, $00, $00, $C8, $C9, $00, $00, $00, $00   ; 

- D 0 - I - 0x004B92 01:8B82: 03 0E     .dbyt $030E ; 
- D 0 - I - 0x004B94 01:8B84: 02        .byte $02   ; counter
- D 0 - I - 0x004B95 01:8B85: 00        .byte $00, $00   ; 

- D 0 - I - 0x004B97 01:8B87: 03 0F     .dbyt $030F ; 
- D 0 - I - 0x004B99 01:8B89: 02        .byte $02   ; counter
- D 0 - I - 0x004B9A 01:8B8A: 00        .byte $00, $00   ; 

- D 0 - I - 0x004B9C 01:8B8C: 00 10     .dbyt $0010 ; 
- D 0 - I - 0x004B9E 01:8B8E: 06        .byte $06   ; counter
- D 0 - I - 0x004B9F 01:8B8F: B4        .byte $B4, $B5, $B6, $B7, $B8, $B9   ; 

- D 0 - I - 0x004BA5 01:8B95: 01 11     .dbyt $0111 ; 
- D 0 - I - 0x004BA7 01:8B97: 03        .byte $03   ; counter
- D 0 - I - 0x004BA8 01:8B98: 00        .byte $00, $0D, $AF   ; 

- D 0 - I - 0x004BAB 01:8B9B: 01 12     .dbyt $0112 ; 
- D 0 - I - 0x004BAD 01:8B9D: 02        .byte $02   ; counter
- D 0 - I - 0x004BAE 01:8B9E: 00        .byte $00, $00   ; 

- D 0 - I - 0x004BB0 01:8BA0: FF        .byte $FF   ; end token



_off016_8BA1_04:
- D 0 - I - 0x004BB1 01:8BA1: 0F 10     .dbyt $0F10 ; 
- D 0 - I - 0x004BB3 01:8BA3: 0A        .byte $0A   ; counter
- D 0 - I - 0x004BB4 01:8BA4: 09        .byte $09, $09, $0A, $0A, $0B, $C7, $0A, $0A, $09, $09   ; 

- D 0 - I - 0x004BBE 01:8BAE: 01 0E     .dbyt $010E ; 
- D 0 - I - 0x004BC0 01:8BB0: 01        .byte $01   ; counter
- D 0 - I - 0x004BC1 01:8BB1: 01        .byte $01   ; 

- D 0 - I - 0x004BC2 01:8BB2: 01 0F     .dbyt $010F ; 
- D 0 - I - 0x004BC4 01:8BB4: 02        .byte $02   ; counter
- D 0 - I - 0x004BC5 01:8BB5: 02        .byte $02, $03   ; 

- D 0 - I - 0x004BC7 01:8BB7: 00 10     .dbyt $0010 ; 
- D 0 - I - 0x004BC9 01:8BB9: 06        .byte $06   ; counter
- D 0 - I - 0x004BCA 01:8BBA: 00        .byte $00, $00, $06, $07, $08, $00   ; 

- D 0 - I - 0x004BD0 01:8BC0: 03 11     .dbyt $0311 ; 
- D 0 - I - 0x004BD2 01:8BC2: 02        .byte $02   ; counter
- D 0 - I - 0x004BD3 01:8BC3: 0E        .byte $0E, $0F   ; 

- D 0 - I - 0x004BD5 01:8BC5: 03 12     .dbyt $0312 ; 
- D 0 - I - 0x004BD7 01:8BC7: 02        .byte $02   ; counter
- D 0 - I - 0x004BD8 01:8BC8: 1B        .byte $1B, $1C   ; 

- D 0 - I - 0x004BDA 01:8BCA: FF        .byte $FF   ; end token



_off016_8BCB_05:
- D 0 - I - 0x004BDB 01:8BCB: 0A 10     .dbyt $0A10 ; 
- D 0 - I - 0x004BDD 01:8BCD: 14        .byte $14   ; counter
- D 0 - I - 0x004BDE 01:8BCE: 09        .byte $09, $09, $0A, $09, $0A, $0A, $0A, $0A, $0A, $0B, $0C, $0A, $0A, $0A, $0A, $0A   ; 
- D 0 - I - 0x004BEE 01:8BDE: 09        .byte $09, $0A, $09, $09   ; 

- D 0 - I - 0x004BF2 01:8BE2: 01 0E     .dbyt $010E ; 
- D 0 - I - 0x004BF4 01:8BE4: 04        .byte $04   ; counter
- D 0 - I - 0x004BF5 01:8BE5: 00        .byte $00, $00, $A7, $A8   ; 

- D 0 - I - 0x004BF9 01:8BE9: 01 0F     .dbyt $010F ; 
- D 0 - I - 0x004BFB 01:8BEB: 04        .byte $04   ; counter
- D 0 - I - 0x004BFC 01:8BEC: 00        .byte $00, $00, $A9, $AA   ; 

- D 0 - I - 0x004C00 01:8BF0: 02 10     .dbyt $0210 ; 
- D 0 - I - 0x004C02 01:8BF2: 02        .byte $02   ; counter
- D 0 - I - 0x004C03 01:8BF3: AB        .byte $AB, $AC   ; 

- D 0 - I - 0x004C05 01:8BF5: 01 11     .dbyt $0111 ; 
- D 0 - I - 0x004C07 01:8BF7: 04        .byte $04   ; counter
- D 0 - I - 0x004C08 01:8BF8: AD        .byte $AD, $AE, $AF, $B0   ; 

- D 0 - I - 0x004C0C 01:8BFC: 01 12     .dbyt $0112 ; 
- D 0 - I - 0x004C0E 01:8BFE: 04        .byte $04   ; counter
- D 0 - I - 0x004C0F 01:8BFF: B1        .byte $B1, $B2, $B3, $5D   ; 

- D 0 - I - 0x004C13 01:8C03: FF        .byte $FF   ; end token



_off001_0x004C14_26_hidden_rifleman:
- D 0 - I - 0x004C14 01:8C04: 16 8C     .word ofs_038_26_8C16_01_initialize_object ; 
- D 0 - I - 0x004C16 01:8C06: 2C 8C     .word ofs_038_26_8C2C_02 ; 
- D 0 - I - 0x004C18 01:8C08: 43 8C     .word ofs_038_26_8C43_03 ; 
- D 0 - I - 0x004C1A 01:8C0A: 79 8C     .word ofs_038_26_8C79_04 ; 
- D 0 - I - 0x004C1C 01:8C0C: A1 8C     .word ofs_038_26_8CA1_05 ; 
- D 0 - I - 0x004C1E 01:8C0E: AE 8C     .word ofs_038_26_8CAE_06 ; 
- D 0 - I - 0x004C20 01:8C10: 9A A2     .word ofs_038_26_0x0062AA_07 ; 
- D 0 - I - 0x004C22 01:8C12: FD A2     .word ofs_038_26_0x00630D_08 ; 
- D 0 - I - 0x004C24 01:8C14: 3D A3     .word ofs_038_26_0x00634D_09_delete_object_04 ; 



ofs_038_26_8C16_01_initialize_object:
C - - J - - 0x004C26 01:8C16: A9 81     LDA #$81
C - - - - - 0x004C28 01:8C18: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x004C2B 01:8C1B: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x004C2E 01:8C1E: 18        CLC
C - - - - - 0x004C2F 01:8C1F: 69 05     ADC #$05
C - - - - - 0x004C31 01:8C21: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x004C34 01:8C24: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x004C37 01:8C27: A9 20     LDA #$20
C - - - - - 0x004C39 01:8C29: 4C E0 A2  JMP loc_0x0062F0



ofs_038_26_8C2C_02:
C - - J - - 0x004C3C 01:8C2C: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x004C3F 01:8C2F: D0 0F     BNE bra_8C40
C - - - - - 0x004C41 01:8C31: FE 10 07  INC ram_0710_obj,X
C - - - - - 0x004C44 01:8C34: 20 B3 8C  JSR sub_8CB3
C - - - - - 0x004C47 01:8C37: C0 02     CPY #$02
C - - - - - 0x004C49 01:8C39: 90 05     BCC bra_8C40
C - - - - - 0x004C4B 01:8C3B: A9 01     LDA #$01
C - - - - - 0x004C4D 01:8C3D: 20 E0 A2  JSR sub_0x0062F0
bra_8C40:
C - - - - - 0x004C50 01:8C40: 4C B7 A6  JMP loc_0x0066C7_delete_object_03



ofs_038_26_8C43_03:
C - - J - - 0x004C53 01:8C43: 20 B8 8C  JSR sub_8CB8
C - - - - - 0x004C56 01:8C46: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x004C59 01:8C49: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x004C5C 01:8C4C: D0 2A     BNE bra_8C78_RTS
C - - - - - 0x004C5E 01:8C4E: A9 00     LDA #$00
C - - - - - 0x004C60 01:8C50: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x004C63 01:8C53: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x004C66 01:8C56: 38        SEC
C - - - - - 0x004C67 01:8C57: E9 05     SBC #$05
C - - - - - 0x004C69 01:8C59: 85 08     STA ram_0008
C - - - - - 0x004C6B 01:8C5B: BD 56 05  LDA ram_attr_spr_enemy,X
C - - - - - 0x004C6E 01:8C5E: 0A        ASL
C - - - - - 0x004C6F 01:8C5F: 0A        ASL
C - - - - - 0x004C70 01:8C60: A9 0B     LDA #$0B
C - - - - - 0x004C72 01:8C62: B0 02     BCS bra_8C66
C - - - - - 0x004C74 01:8C64: A9 F4     LDA #$F4
bra_8C66:
C - - - - - 0x004C76 01:8C66: 7D 3C 05  ADC ram_pos_X_hi_enemy,X
C - - - - - 0x004C79 01:8C69: 85 09     STA ram_0009
C - - - - - 0x004C7B 01:8C6B: A0 03     LDY #$03
C - - - - - 0x004C7D 01:8C6D: 20 27 F3  JSR sub_0x01F337
C - - - - - 0x004C80 01:8C70: A9 30     LDA #$30
C - - - - - 0x004C82 01:8C72: 4C E0 A2  JMP loc_0x0062F0
- - - - - - 0x004C85 01:8C75: 9D E6 06  STA ram_06E6_obj,X
bra_8C78_RTS:
- - - - - - 0x004C88 01:8C78: 60        RTS



ofs_038_26_8C79_04:
C - - J - - 0x004C89 01:8C79: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x004C8C 01:8C7C: D0 C2     BNE bra_8C40
C - - - - - 0x004C8E 01:8C7E: A9 81     LDA #$81
C - - - - - 0x004C90 01:8C80: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x004C93 01:8C83: DE 10 07  DEC ram_0710_obj,X
C - - - - - 0x004C96 01:8C86: 20 B3 8C  JSR sub_8CB3
C - - - - - 0x004C99 01:8C89: C0 00     CPY #$00
C - - - - - 0x004C9B 01:8C8B: D0 B3     BNE bra_8C40
C - - - - - 0x004C9D 01:8C8D: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x004CA0 01:8C90: C9 30     CMP #$30
C - - - - - 0x004CA2 01:8C92: 90 0A     BCC bra_8C9E
C - - - - - 0x004CA4 01:8C94: A9 60     LDA #$60
C - - - - - 0x004CA6 01:8C96: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x004CA9 01:8C99: A9 02     LDA #$02
C - - - - - 0x004CAB 01:8C9B: 4C 83 A2  JMP loc_0x006293_set_obj_state
bra_8C9E:
C - - - - - 0x004CAE 01:8C9E: 4C 75 A2  JMP loc_0x006285_delete_object_02



ofs_038_26_8CA1_05:
C - - J - - 0x004CB1 01:8CA1: BD 56 05  LDA ram_attr_spr_enemy,X
C - - - - - 0x004CB4 01:8CA4: 49 40     EOR #$40
C - - - - - 0x004CB6 01:8CA6: 9D 56 05  STA ram_attr_spr_enemy,X
C - - - - - 0x004CB9 01:8CA9: A9 23     LDA #$23    ; animation id
C - - - - - 0x004CBB 01:8CAB: 4C 3B B1  JMP loc_0x00714B



ofs_038_26_8CAE_06:
C - - J - - 0x004CBE 01:8CAE: A9 23     LDA #$23    ; animation id
C - - - - - 0x004CC0 01:8CB0: 4C 79 B1  JMP loc_0x007189



sub_8CB3:
C - - - - - 0x004CC3 01:8CB3: A9 08     LDA #$08
C - - - - - 0x004CC5 01:8CB5: 9D E6 06  STA ram_06E6_obj,X
sub_8CB8:
C - - - - - 0x004CC8 01:8CB8: BC 10 07  LDY ram_0710_obj,X
C - - - - - 0x004CCB 01:8CBB: B9 D7 8C  LDA tbl_8CD7,Y
C - - - - - 0x004CCE 01:8CBE: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x004CD1 01:8CC1: 20 0B AB  JSR sub_0x006B1B_set_target_on_closest_player_X_pos
C - - - - - 0x004CD4 01:8CC4: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x004CD7 01:8CC7: D9 4C 05  CMP ram_pos_X_hi_plr,Y
C - - - - - 0x004CDA 01:8CCA: A9 01     LDA #$01
C - - - - - 0x004CDC 01:8CCC: B0 02     BCS bra_8CD0
C - - - - - 0x004CDE 01:8CCE: A9 41     LDA #$41
bra_8CD0:
C - - - - - 0x004CE0 01:8CD0: 9D 56 05  STA ram_attr_spr_enemy,X
C - - - - - 0x004CE3 01:8CD3: BC 10 07  LDY ram_0710_obj,X
C - - - - - 0x004CE6 01:8CD6: 60        RTS



tbl_8CD7:
- D 0 - - - 0x004CE7 01:8CD7: 59        .byte $59   ; 00 
- D 0 - - - 0x004CE8 01:8CD8: 5A        .byte $5A   ; 01 
- D 0 - - - 0x004CE9 01:8CD9: 5B        .byte $5B   ; 02 



_off001_0x004CEA_27_cannon_hidden_3:
- D 0 - I - 0x004CEA 01:8CDA: E8 8C     .word ofs_038_27_8CE8_01_initialize_object ; 
- D 0 - I - 0x004CEC 01:8CDC: 12 8D     .word ofs_038_27_8D12_02 ; 
- D 0 - I - 0x004CEE 01:8CDE: 22 8D     .word ofs_038_27_8D22_03 ; 
- D 0 - I - 0x004CF0 01:8CE0: 53 8D     .word ofs_038_27_8D53_04 ; 
- D 0 - I - 0x004CF2 01:8CE2: B3 8D     .word ofs_038_27_8DB3_05 ; 
- D 0 - I - 0x004CF4 01:8CE4: FD A2     .word ofs_038_27_0x00630D_06 ; 
- D 0 - I - 0x004CF6 01:8CE6: 3D A3     .word ofs_038_27_0x00634D_07_delete_object_04 ; 



ofs_038_27_8CE8_01_initialize_object:
C - - J - - 0x004CF8 01:8CE8: A9 08     LDA #$08
C - - - - - 0x004CFA 01:8CEA: 20 95 AB  JSR sub_0x006BA5_set_dynamic_hp_to_enemy
C - - - - - 0x004CFD 01:8CED: A9 81     LDA #$81
C - - - - - 0x004CFF 01:8CEF: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x004D02 01:8CF2: A9 B0     LDA #$B0
C - - - - - 0x004D04 01:8CF4: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x004D07 01:8CF7: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x004D0A 01:8CFA: 38        SEC
C - - - - - 0x004D0B 01:8CFB: E9 04     SBC #$04
C - - - - - 0x004D0D 01:8CFD: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x004D10 01:8D00: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x004D13 01:8D03: 4A        LSR
C - - - - - 0x004D14 01:8D04: 29 03     AND #$03
C - - - - - 0x004D16 01:8D06: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x004D19 01:8D09: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x004D1C 01:8D0C: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x004D1F 01:8D0F: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_27_8D12_02:
C - - J - - 0x004D22 01:8D12: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x004D25 01:8D15: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x004D28 01:8D18: C9 D8     CMP #$D8
C - - - - - 0x004D2A 01:8D1A: B0 05     BCS bra_8D21_RTS
C - - - - - 0x004D2C 01:8D1C: A9 01     LDA #$01
C - - - - - 0x004D2E 01:8D1E: 4C E0 A2  JMP loc_0x0062F0
bra_8D21_RTS:
C - - - - - 0x004D31 01:8D21: 60        RTS



ofs_038_27_8D22_03:
C - - J - - 0x004D32 01:8D22: A9 01     LDA #$01
C - - - - - 0x004D34 01:8D24: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x004D37 01:8D27: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x004D3A 01:8D2A: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x004D3D 01:8D2D: D0 F2     BNE bra_8D21_RTS
C - - - - - 0x004D3F 01:8D2F: 20 C9 8D  JSR sub_8DC9
C - - - - - 0x004D42 01:8D32: B0 1B     BCS bra_8D4F
C - - - - - 0x004D44 01:8D34: FE 10 07  INC ram_0710_obj,X
C - - - - - 0x004D47 01:8D37: BD 10 07  LDA ram_0710_obj,X
C - - - - - 0x004D4A 01:8D3A: C9 03     CMP #$03
C - - - - - 0x004D4C 01:8D3C: A9 0C     LDA #$0C
C - - - - - 0x004D4E 01:8D3E: 90 0F     BCC bra_8D4F
C - - - - - 0x004D50 01:8D40: A9 01     LDA #$01
C - - - - - 0x004D52 01:8D42: 9D 10 07  STA ram_0710_obj,X
C - - - - - 0x004D55 01:8D45: A9 00     LDA #$00
C - - - - - 0x004D57 01:8D47: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x004D5A 01:8D4A: 20 D7 A2  JSR sub_0x0062E7_increase_obj_state
C - - - - - 0x004D5D 01:8D4D: A9 38     LDA #$38
bra_8D4F:
loc_8D4F:
C D 0 - - - 0x004D5F 01:8D4F: 9D E6 06  STA ram_06E6_obj,X
bra_8D52_RTS:
C - - - - - 0x004D62 01:8D52: 60        RTS



ofs_038_27_8D53_04:
C - - J - - 0x004D63 01:8D53: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x004D66 01:8D56: C9 40     CMP #$40
C - - - - - 0x004D68 01:8D58: B0 03     BCS bra_8D5D
C - - - - - 0x004D6A 01:8D5A: 4C 75 A2  JMP loc_0x006285_delete_object_02
bra_8D5D:
C - - - - - 0x004D6D 01:8D5D: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x004D70 01:8D60: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x004D73 01:8D63: D0 ED     BNE bra_8D52_RTS
C - - - - - 0x004D75 01:8D65: 20 C9 8D  JSR sub_8DC9
C - - - - - 0x004D78 01:8D68: B0 E5     BCS bra_8D4F
C - - - - - 0x004D7A 01:8D6A: BD 10 07  LDA ram_0710_obj,X
C - - - - - 0x004D7D 01:8D6D: 4A        LSR
C - - - - - 0x004D7E 01:8D6E: A9 01     LDA #$01
C - - - - - 0x004D80 01:8D70: 90 02     BCC bra_8D74
C - - - - - 0x004D82 01:8D72: A9 02     LDA #$02
bra_8D74:
C - - - - - 0x004D84 01:8D74: 9D 10 07  STA ram_0710_obj,X
C - - - - - 0x004D87 01:8D77: B0 11     BCS bra_8D8A
C - - - - - 0x004D89 01:8D79: A9 08     LDA #$08
C - - - - - 0x004D8B 01:8D7B: DE 56 07  DEC ram_0756_obj,X
C - - - - - 0x004D8E 01:8D7E: 10 CF     BPL bra_8D4F
C - - - - - 0x004D90 01:8D80: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x004D93 01:8D83: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x004D96 01:8D86: A9 80     LDA #$80
C - - - - - 0x004D98 01:8D88: D0 C5     BNE bra_8D4F    ; jmp
bra_8D8A:
C - - - - - 0x004D9A 01:8D8A: A0 02     LDY #$02
C - - - - - 0x004D9C 01:8D8C: 20 C8 AB  JSR sub_0x006BD8
C - - - - - 0x004D9F 01:8D8F: 90 C1     BCC bra_8D52_RTS
C - - - - - 0x004DA1 01:8D91: A4 11     LDY ram_0011
C - - - - - 0x004DA3 01:8D93: A9 00     LDA #< $FE00
C - - - - - 0x004DA5 01:8D95: 99 BC 06  STA ram_spd_X_lo_obj,Y
C - - - - - 0x004DA8 01:8D98: A9 FE     LDA #> $FE00
C - - - - - 0x004DAA 01:8D9A: 99 CA 06  STA ram_spd_X_hi_obj,Y
C - - - - - 0x004DAD 01:8D9D: B9 22 05  LDA ram_pos_Y_hi_enemy,Y
C - - - - - 0x004DB0 01:8DA0: 18        CLC
C - - - - - 0x004DB1 01:8DA1: 69 02     ADC #$02
C - - - - - 0x004DB3 01:8DA3: 99 22 05  STA ram_pos_Y_hi_enemy,Y
C - - - - - 0x004DB6 01:8DA6: B9 3C 05  LDA ram_pos_X_hi_enemy,Y
C - - - - - 0x004DB9 01:8DA9: 69 FE     ADC #$FE
C - - - - - 0x004DBB 01:8DAB: 99 3C 05  STA ram_pos_X_hi_enemy,Y
C - - - - - 0x004DBE 01:8DAE: A9 04     LDA #$04
C - - - - - 0x004DC0 01:8DB0: 4C 4F 8D  JMP loc_8D4F



ofs_038_27_8DB3_05:
C - - J - - 0x004DC3 01:8DB3: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x004DC6 01:8DB6: A0 06     LDY #$03 * $02
C - - - - - 0x004DC8 01:8DB8: 20 CE 8D  JSR sub_8DCE
C - - - - - 0x004DCB 01:8DBB: B0 95     BCS bra_8D52_RTS
C - - - - - 0x004DCD 01:8DBD: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x004DD0 01:8DC0: 18        CLC
C - - - - - 0x004DD1 01:8DC1: 69 10     ADC #$10
C - - - - - 0x004DD3 01:8DC3: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x004DD6 01:8DC6: 4C 9A A2  JMP loc_0x0062AA



sub_8DC9:
C - - - - - 0x004DD9 01:8DC9: BD 10 07  LDA ram_0710_obj,X
C - - - - - 0x004DDC 01:8DCC: 0A        ASL
C - - - - - 0x004DDD 01:8DCD: A8        TAY
sub_8DCE:
C - - - - - 0x004DDE 01:8DCE: B9 E8 8D  LDA tbl_8DE7 + $01,Y
C - - - - - 0x004DE1 01:8DD1: 85 0C     STA ram_000C
C - - - - - 0x004DE3 01:8DD3: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x004DE6 01:8DD6: C9 D8     CMP #$D8
C - - - - - 0x004DE8 01:8DD8: B0 0B     BCS bra_8DE5
C - - - - - 0x004DEA 01:8DDA: B9 E7 8D  LDA tbl_8DE7,Y
C - - - - - 0x004DED 01:8DDD: A0 01     LDY #$01
C - - - - - 0x004DEF 01:8DDF: 20 A8 A8  JSR sub_0x0068B8
C - - - - - 0x004DF2 01:8DE2: A9 01     LDA #$01
C - - - - - 0x004DF4 01:8DE4: 60        RTS
bra_8DE5:
- - - - - - 0x004DF5 01:8DE5: 18        CLC
- - - - - - 0x004DF6 01:8DE6: 60        RTS



tbl_8DE7:
;                                              ----------- 
;                                              |    ------ 
;                                              |    |
- D 0 - - - 0x004DF7 01:8DE7: 49        .byte $49, $4A   ; 00 
- D 0 - - - 0x004DF9 01:8DE9: 4B        .byte $4B, $4C   ; 01 
- D 0 - - - 0x004DFB 01:8DEB: 4D        .byte $4D, $4E   ; 02 
- D 0 - - - 0x004DFD 01:8DED: 4F        .byte $4F, $50   ; 03 



_off001_0x004DFF_28_cannon_howitzer:
- D 0 - I - 0x004DFF 01:8DEF: FF 8D     .word ofs_038_28_8DFF_01_initialize_object ; 
- D 0 - I - 0x004E01 01:8DF1: 18 8E     .word ofs_038_28_8E18_02 ; 
- D 0 - I - 0x004E03 01:8DF3: 4F 8E     .word ofs_038_28_8E4F_03 ; 
- D 0 - I - 0x004E05 01:8DF5: 54 A3     .word ofs_038_28_0x006364_04_delete_object_06 ; 
- D 0 - I - 0x004E07 01:8DF7: 6B A3     .word ofs_038_28_0x00637B_05_delete_object_07 ; 
- D 0 - I - 0x004E09 01:8DF9: AC 8E     .word ofs_038_28_8EAC_06 ; 
- D 0 - I - 0x004E0B 01:8DFB: FD A2     .word ofs_038_28_0x00630D_07 ; 
- D 0 - I - 0x004E0D 01:8DFD: 3D A3     .word ofs_038_28_0x00634D_08_delete_object_04 ; 



ofs_038_28_8DFF_01_initialize_object:
C - - J - - 0x004E0F 01:8DFF: A9 20     LDA #$20
C - - - - - 0x004E11 01:8E01: 20 95 AB  JSR sub_0x006BA5_set_dynamic_hp_to_enemy
C - - - - - 0x004E14 01:8E04: A9 81     LDA #$81
C - - - - - 0x004E16 01:8E06: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x004E19 01:8E09: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x004E1C 01:8E0C: 38        SEC
C - - - - - 0x004E1D 01:8E0D: E9 02     SBC #$02
C - - - - - 0x004E1F 01:8E0F: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x004E22 01:8E12: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x004E25 01:8E15: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_28_8E18_02:
C - - J - - 0x004E28 01:8E18: A9 01     LDA #$01
C - - - - - 0x004E2A 01:8E1A: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x004E2D 01:8E1D: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x004E30 01:8E20: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x004E33 01:8E23: C9 E0     CMP #$E0
C - - - - - 0x004E35 01:8E25: B0 27     BCS bra_8E4E_RTS
C - - - - - 0x004E37 01:8E27: A5 94     LDA ram_0094_area_config
C - - - - - 0x004E39 01:8E29: 09 40     ORA #$40
C - - - - - 0x004E3B 01:8E2B: 85 94     STA ram_0094_area_config
C - - - - - 0x004E3D 01:8E2D: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x004E40 01:8E30: 18        CLC
C - - - - - 0x004E41 01:8E31: 69 16     ADC #$16
C - - - - - 0x004E43 01:8E33: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x004E46 01:8E36: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x004E49 01:8E39: 18        CLC
C - - - - - 0x004E4A 01:8E3A: 69 08     ADC #$08
C - - - - - 0x004E4C 01:8E3C: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x004E4F 01:8E3F: A9 00     LDA #$00
C - - - - - 0x004E51 01:8E41: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x004E54 01:8E44: A9 07     LDA #$07
C - - - - - 0x004E56 01:8E46: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x004E59 01:8E49: A9 01     LDA #$01
C - - - - - 0x004E5B 01:8E4B: 4C E0 A2  JMP loc_0x0062F0
bra_8E4E_RTS:
C - - - - - 0x004E5E 01:8E4E: 60        RTS



ofs_038_28_8E4F_03:
C - - J - - 0x004E5F 01:8E4F: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x004E62 01:8E52: C9 30     CMP #$30
C - - - - - 0x004E64 01:8E54: 90 4D     BCC bra_8EA3
C - - - - - 0x004E66 01:8E56: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x004E69 01:8E59: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x004E6C 01:8E5C: D0 F0     BNE bra_8E4E_RTS
C - - - - - 0x004E6E 01:8E5E: A0 00     LDY #$00
C - - - - - 0x004E70 01:8E60: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x004E73 01:8E63: F0 06     BEQ bra_8E6B
C - - - - - 0x004E75 01:8E65: A0 02     LDY #$02
C - - - - - 0x004E77 01:8E67: C9 07     CMP #$07
C - - - - - 0x004E79 01:8E69: D0 05     BNE bra_8E70
bra_8E6B:
C - - - - - 0x004E7B 01:8E6B: 20 BC 8E  JSR sub_8EBC
C - - - - - 0x004E7E 01:8E6E: B0 DE     BCS bra_8E4E_RTS
bra_8E70:
C - - - - - 0x004E80 01:8E70: A0 29     LDY #$29
C - - - - - 0x004E82 01:8E72: 20 C8 AB  JSR sub_0x006BD8
C - - - - - 0x004E85 01:8E75: 90 1A     BCC bra_8E91
C - - - - - 0x004E87 01:8E77: A4 11     LDY ram_0011
C - - - - - 0x004E89 01:8E79: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x004E8C 01:8E7C: 99 48 07  STA ram_0748_obj,Y
C - - - - - 0x004E8F 01:8E7F: B9 22 05  LDA ram_pos_Y_hi_enemy,Y
C - - - - - 0x004E92 01:8E82: 38        SEC
C - - - - - 0x004E93 01:8E83: E9 0E     SBC #$0E
C - - - - - 0x004E95 01:8E85: 99 22 05  STA ram_pos_Y_hi_enemy,Y
C - - - - - 0x004E98 01:8E88: B9 3C 05  LDA ram_pos_X_hi_enemy,Y
C - - - - - 0x004E9B 01:8E8B: 38        SEC
C - - - - - 0x004E9C 01:8E8C: E9 08     SBC #$08
C - - - - - 0x004E9E 01:8E8E: 99 3C 05  STA ram_pos_X_hi_enemy,Y
bra_8E91:
C - - - - - 0x004EA1 01:8E91: A9 02     LDA #$02
C - - - - - 0x004EA3 01:8E93: DE 48 07  DEC ram_0748_obj,X
C - - - - - 0x004EA6 01:8E96: 10 07     BPL bra_8E9F
C - - - - - 0x004EA8 01:8E98: A9 07     LDA #$07
C - - - - - 0x004EAA 01:8E9A: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x004EAD 01:8E9D: A9 80     LDA #$80
bra_8E9F:
C - - - - - 0x004EAF 01:8E9F: 9D E6 06  STA ram_06E6_obj,X
bra_8EA2_RTS:
C - - - - - 0x004EB2 01:8EA2: 60        RTS
bra_8EA3:
- - - - - - 0x004EB3 01:8EA3: A5 94     LDA ram_0094_area_config
- - - - - - 0x004EB5 01:8EA5: 29 BF     AND #$BF
- - - - - - 0x004EB7 01:8EA7: 85 94     STA ram_0094_area_config
- - - - - - 0x004EB9 01:8EA9: 4C 75 A2  JMP loc_0x006285_delete_object_02



ofs_038_28_8EAC_06:
C - - J - - 0x004EBC 01:8EAC: A0 04     LDY #$04
C - - - - - 0x004EBE 01:8EAE: 20 BC 8E  JSR sub_8EBC
C - - - - - 0x004EC1 01:8EB1: B0 EF     BCS bra_8EA2_RTS
C - - - - - 0x004EC3 01:8EB3: A5 94     LDA ram_0094_area_config
C - - - - - 0x004EC5 01:8EB5: 29 BF     AND #$BF
C - - - - - 0x004EC7 01:8EB7: 85 94     STA ram_0094_area_config
C - - - - - 0x004EC9 01:8EB9: 4C 9A A2  JMP loc_0x0062AA



sub_8EBC:
C - - - - - 0x004ECC 01:8EBC: B9 CA 8E  LDA tbl_8EC9 + $01,Y
C - - - - - 0x004ECF 01:8EBF: 85 0C     STA ram_000C
C - - - - - 0x004ED1 01:8EC1: B9 C9 8E  LDA tbl_8EC9,Y
C - - - - - 0x004ED4 01:8EC4: A0 10     LDY #$10
C - - - - - 0x004ED6 01:8EC6: 4C A8 A8  JMP loc_0x0068B8



tbl_8EC9:
;                                              ----------- 
;                                              |    ------ 
;                                              |    |
- D 0 - - - 0x004ED9 01:8EC9: 3E        .byte $3E, $40   ; 00 
- D 0 - - - 0x004EDB 01:8ECB: 46        .byte $46, $47   ; 02 
- D 0 - - - 0x004EDD 01:8ECD: 11        .byte $11, $48   ; 04 



_off001_0x004EDF_29_bullet_cannon_howitzer:
- D 0 - I - 0x004EDF 01:8ECF: D9 8E     .word ofs_038_29_8ED9_01_initialize_object ; 
- D 0 - I - 0x004EE1 01:8ED1: 2C 8F     .word ofs_038_29_8F2C_02 ; 
- D 0 - I - 0x004EE3 01:8ED3: 8C A2     .word ofs_038_29_0x00629C_03 ; 
- D 0 - I - 0x004EE5 01:8ED5: FD A2     .word ofs_038_29_0x00630D_04 ; 
- D 0 - I - 0x004EE7 01:8ED7: 3D A3     .word ofs_038_29_0x00634D_05_delete_object_04 ; 



ofs_038_29_8ED9_01_initialize_object:
C - - J - - 0x004EE9 01:8ED9: A9 02     LDA #$02
C - - - - - 0x004EEB 01:8EDB: 9D 76 06  STA ram_obj_hp,X
C - - - - - 0x004EEE 01:8EDE: A9 18     LDA #$18
C - - - - - 0x004EF0 01:8EE0: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x004EF3 01:8EE3: A9 01     LDA #$01
C - - - - - 0x004EF5 01:8EE5: 9D 56 05  STA ram_attr_spr_enemy,X
C - - - - - 0x004EF8 01:8EE8: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x004EFB 01:8EEB: 0A        ASL
C - - - - - 0x004EFC 01:8EEC: 0A        ASL
C - - - - - 0x004EFD 01:8EED: A8        TAY
C - - - - - 0x004EFE 01:8EEE: B9 0C 8F  LDA tbl_8F0C_speed,Y
C - - - - - 0x004F01 01:8EF1: 9D A0 06  STA ram_spd_Y_lo_obj,X
C - - - - - 0x004F04 01:8EF4: B9 0D 8F  LDA tbl_8F0C_speed + $01,Y
C - - - - - 0x004F07 01:8EF7: 9D AE 06  STA ram_spd_Y_hi_obj,X
C - - - - - 0x004F0A 01:8EFA: B9 0E 8F  LDA tbl_8F0C_speed + $02,Y
C - - - - - 0x004F0D 01:8EFD: 9D BC 06  STA ram_spd_X_lo_obj,X
C - - - - - 0x004F10 01:8F00: B9 0F 8F  LDA tbl_8F0C_speed + $03,Y
C - - - - - 0x004F13 01:8F03: 9D CA 06  STA ram_spd_X_hi_obj,X
C - - - - - 0x004F16 01:8F06: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x004F19 01:8F09: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



tbl_8F0C_speed:
; 00 
- D 0 - - - 0x004F1C 01:8F0C: 00 FD     .word $FD00 ; Y
- D 0 - - - 0x004F1E 01:8F0E: 90 FF     .word $FF90 ; X
; 01 
- D 0 - - - 0x004F20 01:8F10: 20 FD     .word $FD20 ; Y
- D 0 - - - 0x004F22 01:8F12: A0 FF     .word $FFA0 ; X
; 02 
- D 0 - - - 0x004F24 01:8F14: E0 FC     .word $FCE0 ; Y
- D 0 - - - 0x004F26 01:8F16: C0 FF     .word $FFC0 ; X
; 03 
- D 0 - - - 0x004F28 01:8F18: 20 FD     .word $FD20 ; Y
- D 0 - - - 0x004F2A 01:8F1A: D0 FF     .word $FFD0 ; X
; 04 
- D 0 - - - 0x004F2C 01:8F1C: C0 FC     .word $FCC0 ; Y
- D 0 - - - 0x004F2E 01:8F1E: E0 FF     .word $FFE0 ; X
; 05 
- D 0 - - - 0x004F30 01:8F20: 80 FD     .word $FD80 ; Y
- D 0 - - - 0x004F32 01:8F22: 80 FF     .word $FF80 ; X
; 06 
- D 0 - - - 0x004F34 01:8F24: A0 FC     .word $FCA0 ; Y
- D 0 - - - 0x004F36 01:8F26: 60 FF     .word $FF60 ; X
; 07 
- D 0 - - - 0x004F38 01:8F28: 40 FC     .word $FC40 ; Y
- D 0 - - - 0x004F3A 01:8F2A: 50 FF     .word $FF50 ; X



ofs_038_29_8F2C_02:
C - - J - - 0x004F3C 01:8F2C: A9 3A     LDA #$3A
C - - - - - 0x004F3E 01:8F2E: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x004F41 01:8F31: BD A0 06  LDA ram_spd_Y_lo_obj,X
C - - - - - 0x004F44 01:8F34: 18        CLC
C - - - - - 0x004F45 01:8F35: 69 08     ADC #< $0008
C - - - - - 0x004F47 01:8F37: 9D A0 06  STA ram_spd_Y_lo_obj,X
C - - - - - 0x004F4A 01:8F3A: BD AE 06  LDA ram_spd_Y_hi_obj,X
C - - - - - 0x004F4D 01:8F3D: 85 08     STA ram_0008
C - - - - - 0x004F4F 01:8F3F: 69 00     ADC #> $0008
C - - - - - 0x004F51 01:8F41: 9D AE 06  STA ram_spd_Y_hi_obj,X
C - - - - - 0x004F54 01:8F44: A8        TAY
C - - - - - 0x004F55 01:8F45: 45 08     EOR ram_0008
C - - - - - 0x004F57 01:8F47: 10 08     BPL bra_8F51
C - - - - - 0x004F59 01:8F49: 98        TYA
C - - - - - 0x004F5A 01:8F4A: 30 05     BMI bra_8F51
C - - - - - 0x004F5C 01:8F4C: A9 17     LDA #con_sound_17
C - - - - - 0x004F5E 01:8F4E: 20 DE FD  JSR sub_0x01FDEE_play_sound
bra_8F51:
C - - - - - 0x004F61 01:8F51: 20 07 A7  JSR sub_0x006717
C - - - - - 0x004F64 01:8F54: A9 00     LDA #$00
C - - - - - 0x004F66 01:8F56: 20 00 A8  JSR sub_0x006810
C - - - - - 0x004F69 01:8F59: A8        TAY
C - - - - - 0x004F6A 01:8F5A: B9 CC F8  LDA tbl_0x01F8DC,Y
C - - - - - 0x004F6D 01:8F5D: F0 03     BEQ bra_8F62_RTS
C - - - - - 0x004F6F 01:8F5F: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state
bra_8F62_RTS:
C - - - - - 0x004F72 01:8F62: 60        RTS



_off001_0x004F73_3F_earthquake:
- D 0 - I - 0x004F73 01:8F63: 69 8F     .word ofs_038_3F_8F69_01_initialize_object ; 
- D 0 - I - 0x004F75 01:8F65: 7A 8F     .word ofs_038_3F_8F7A_02 ; 
- D 0 - I - 0x004F77 01:8F67: A6 8F     .word ofs_038_3F_8FA6_03 ; 



ofs_038_3F_8F69_01_initialize_object:
C - - J - - 0x004F79 01:8F69: A5 FC     LDA ram_scroll_Y
C - - - - - 0x004F7B 01:8F6B: 85 7B     STA ram_007B
C - - - - - 0x004F7D 01:8F6D: A9 81     LDA #$81
C - - - - - 0x004F7F 01:8F6F: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x004F82 01:8F72: A9 01     LDA #$01
C - - - - - 0x004F84 01:8F74: 9D 02 07  STA ram_0702_obj,X
C - - - - - 0x004F87 01:8F77: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_3F_8F7A_02:
C - - J - - 0x004F8A 01:8F7A: 20 64 AB  JSR sub_0x006B74
C - - - - - 0x004F8D 01:8F7D: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x004F90 01:8F80: 0A        ASL
C - - - - - 0x004F91 01:8F81: A8        TAY
C - - - - - 0x004F92 01:8F82: A5 63     LDA ram_0063
C - - - - - 0x004F94 01:8F84: D9 C0 90  CMP tbl_90C0,Y
C - - - - - 0x004F97 01:8F87: 90 3B     BCC bra_8FC4_RTS
C - - - - - 0x004F99 01:8F89: D0 07     BNE bra_8F92
C - - - - - 0x004F9B 01:8F8B: A5 FD     LDA ram_scroll_X
C - - - - - 0x004F9D 01:8F8D: D9 C1 90  CMP tbl_90C0 + $01,Y
C - - - - - 0x004FA0 01:8F90: 90 32     BCC bra_8FC4_RTS
bra_8F92:
C - - - - - 0x004FA2 01:8F92: A9 20     LDA #con_sound_20
C - - - - - 0x004FA4 01:8F94: 20 DE FD  JSR sub_0x01FDEE_play_sound
C - - - - - 0x004FA7 01:8F97: A9 00     LDA #$00
C - - - - - 0x004FA9 01:8F99: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x004FAC 01:8F9C: A9 14     LDA #$14
C - - - - - 0x004FAE 01:8F9E: 9D 64 07  STA ram_0764_obj,X
C - - - - - 0x004FB1 01:8FA1: A9 01     LDA #$01
C - - - - - 0x004FB3 01:8FA3: 4C E0 A2  JMP loc_0x0062F0



ofs_038_3F_8FA6_03:
C - - J - - 0x004FB6 01:8FA6: 20 64 AB  JSR sub_0x006B74
C - - - - - 0x004FB9 01:8FA9: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x004FBC 01:8FAC: D0 16     BNE bra_8FC4_RTS
C - - - - - 0x004FBE 01:8FAE: 20 DB 8F  JSR sub_8FDB
C - - - - - 0x004FC1 01:8FB1: A9 01     LDA #$01
C - - - - - 0x004FC3 01:8FB3: B0 0C     BCS bra_8FC1
C - - - - - 0x004FC5 01:8FB5: BD 64 07  LDA ram_0764_obj,X
C - - - - - 0x004FC8 01:8FB8: C5 0D     CMP ram_000D
C - - - - - 0x004FCA 01:8FBA: F0 09     BEQ bra_8FC5
C - - - - - 0x004FCC 01:8FBC: FE 64 07  INC ram_0764_obj,X
C - - - - - 0x004FCF 01:8FBF: A9 08     LDA #$08
bra_8FC1:
C - - - - - 0x004FD1 01:8FC1: 9D E6 06  STA ram_06E6_obj,X
bra_8FC4_RTS:
C - - - - - 0x004FD4 01:8FC4: 60        RTS
bra_8FC5:
C - - - - - 0x004FD5 01:8FC5: FE 48 07  INC ram_0748_obj,X
C - - - - - 0x004FD8 01:8FC8: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x004FDB 01:8FCB: C9 0F     CMP #$0F
C - - - - - 0x004FDD 01:8FCD: B0 05     BCS bra_8FD4
C - - - - - 0x004FDF 01:8FCF: A9 02     LDA #$02
C - - - - - 0x004FE1 01:8FD1: 4C 83 A2  JMP loc_0x006293_set_obj_state
bra_8FD4:
C - - - - - 0x004FE4 01:8FD4: A5 7B     LDA ram_007B
C - - - - - 0x004FE6 01:8FD6: 85 FC     STA ram_scroll_Y
C - - - - - 0x004FE8 01:8FD8: 4C 75 A2  JMP loc_0x006285_delete_object_02



sub_8FDB:
; earthquake area 3
; drawing falling ground
C - - - - - 0x004FEB 01:8FDB: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x004FEE 01:8FDE: 0A        ASL
C - - - - - 0x004FEF 01:8FDF: 0A        ASL
C - - - - - 0x004FF0 01:8FE0: A8        TAY
C - - - - - 0x004FF1 01:8FE1: B9 DE 90  LDA tbl_90DE,Y
C - - - - - 0x004FF4 01:8FE4: 85 0A     STA ram_000A
C - - - - - 0x004FF6 01:8FE6: B9 DF 90  LDA tbl_90DE + $01,Y
C - - - - - 0x004FF9 01:8FE9: 85 0D     STA ram_000D
C - - - - - 0x004FFB 01:8FEB: A9 04     LDA #$04
C - - - - - 0x004FFD 01:8FED: 85 01     STA ram_0001
C - - - - - 0x004FFF 01:8FEF: B9 E0 90  LDA tbl_90DE + $02,Y
C - - - - - 0x005002 01:8FF2: 0A        ASL
C - - - - - 0x005003 01:8FF3: 85 00     STA ram_0000
C - - - - - 0x005005 01:8FF5: 26 01     ROL ram_0001
C - - - - - 0x005007 01:8FF7: BD 64 07  LDA ram_0764_obj,X
C - - - - - 0x00500A 01:8FFA: 0A        ASL
C - - - - - 0x00500B 01:8FFB: 0A        ASL
C - - - - - 0x00500C 01:8FFC: 0A        ASL
C - - - - - 0x00500D 01:8FFD: 0A        ASL
C - - - - - 0x00500E 01:8FFE: 26 01     ROL ram_0001
C - - - - - 0x005010 01:9000: 0A        ASL
C - - - - - 0x005011 01:9001: 26 01     ROL ram_0001
C - - - - - 0x005013 01:9003: 18        CLC
C - - - - - 0x005014 01:9004: 65 00     ADC ram_0000
C - - - - - 0x005016 01:9006: 85 00     STA ram_0000
C - - - - - 0x005018 01:9008: B9 E1 90  LDA tbl_90DE + $03,Y
C - - - - - 0x00501B 01:900B: A8        TAY
C - - - - - 0x00501C 01:900C: B9 1A 91  LDA tbl_911A,Y
C - - - - - 0x00501F 01:900F: 85 08     STA ram_0008
C - - - - - 0x005021 01:9011: B9 1B 91  LDA tbl_911A + $01,Y
C - - - - - 0x005024 01:9014: 85 09     STA ram_0009
C - - - - - 0x005026 01:9016: BD 64 07  LDA ram_0764_obj,X
C - - - - - 0x005029 01:9019: 4A        LSR
C - - - - - 0x00502A 01:901A: 90 2D     BCC bra_9049
C - - - - - 0x00502C 01:901C: A5 01     LDA ram_0001
C - - - - - 0x00502E 01:901E: 85 02     STA ram_0002
C - - - - - 0x005030 01:9020: A5 00     LDA ram_0000
C - - - - - 0x005032 01:9022: 0A        ASL
C - - - - - 0x005033 01:9023: 26 02     ROL ram_0002
C - - - - - 0x005035 01:9025: 0A        ASL
C - - - - - 0x005036 01:9026: 26 02     ROL ram_0002
C - - - - - 0x005038 01:9028: 0A        ASL
C - - - - - 0x005039 01:9029: 46 02     LSR ram_0002
C - - - - - 0x00503B 01:902B: 6A        ROR
C - - - - - 0x00503C 01:902C: 46 02     LSR ram_0002
C - - - - - 0x00503E 01:902E: 6A        ROR
C - - - - - 0x00503F 01:902F: 46 02     LSR ram_0002
C - - - - - 0x005041 01:9031: 6A        ROR
C - - - - - 0x005042 01:9032: 46 02     LSR ram_0002
C - - - - - 0x005044 01:9034: 6A        ROR
C - - - - - 0x005045 01:9035: 46 02     LSR ram_0002
C - - - - - 0x005047 01:9037: 6A        ROR
C - - - - - 0x005048 01:9038: A8        TAY
C - - - - - 0x005049 01:9039: A5 0A     LDA ram_000A
C - - - - - 0x00504B 01:903B: 4A        LSR
C - - - - - 0x00504C 01:903C: 4A        LSR
C - - - - - 0x00504D 01:903D: 85 02     STA ram_0002
C - - - - - 0x00504F 01:903F: A9 00     LDA #$00
bra_9041_loop:
C - - - - - 0x005051 01:9041: 99 00 04  STA ram_0400_area_data_1,Y
C - - - - - 0x005054 01:9044: C8        INY
C - - - - - 0x005055 01:9045: C6 02     DEC ram_0002
C - - - - - 0x005057 01:9047: D0 F8     BNE bra_9041_loop
bra_9049:
C - - - - - 0x005059 01:9049: A9 00     LDA #$00
C - - - - - 0x00505B 01:904B: BC 56 07  LDY ram_0756_obj,X
C - - - - - 0x00505E 01:904E: F0 06     BEQ bra_9056
- - - - - - 0x005060 01:9050: 18        CLC
bra_9051_loop:
- - - - - - 0x005061 01:9051: 65 0A     ADC ram_000A
- - - - - - 0x005063 01:9053: 88        DEY
- - - - - - 0x005064 01:9054: D0 FB     BNE bra_9051_loop
bra_9056:
C - - - - - 0x005066 01:9056: A8        TAY
C - - - - - 0x005067 01:9057: A9 1B     LDA #$1B
C - - - - - 0x005069 01:9059: 38        SEC
C - - - - - 0x00506A 01:905A: FD 64 07  SBC ram_0764_obj,X
C - - - - - 0x00506D 01:905D: B0 02     BCS bra_9061
C - - - - - 0x00506F 01:905F: A9 00     LDA #$00
bra_9061:
; A = 00-07
C - - - - - 0x005071 01:9061: 85 0C     STA ram_000C
C - - - - - 0x005073 01:9063: A6 1E     LDX ram_index_ppu_buffer
C - - - - - 0x005075 01:9065: E0 20     CPX #$20
C - - - - - 0x005077 01:9067: B0 36     BCS bra_909F
C - - - - - 0x005079 01:9069: A9 03     LDA #con_buf_mode_03
C - - - - - 0x00507B 01:906B: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x00507E 01:906E: E8        INX
C - - - - - 0x00507F 01:906F: 20 A2 90  JSR sub_90A2
C - - - - - 0x005082 01:9072: A9 00     LDA #$00    ; fill tile
C - - - - - 0x005084 01:9074: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x005087 01:9077: E8        INX
C - - - - - 0x005088 01:9078: A5 0C     LDA ram_000C
C - - - - - 0x00508A 01:907A: F0 20     BEQ bra_909C_skip
C - - - - - 0x00508C 01:907C: A9 06     LDA #con_buf_mode_06
C - - - - - 0x00508E 01:907E: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x005091 01:9081: E8        INX
bra_9082_loop:
C - - - - - 0x005092 01:9082: 20 A2 90  JSR sub_90A2
; A = 04 08
C - - - - - 0x005095 01:9085: 85 0B     STA ram_000B
bra_9087_loop:
C - - - - - 0x005097 01:9087: B1 08     LDA (ram_0008),Y
C - - - - - 0x005099 01:9089: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x00509C 01:908C: C8        INY
C - - - - - 0x00509D 01:908D: E8        INX
C - - - - - 0x00509E 01:908E: C6 0B     DEC ram_000B
C - - - - - 0x0050A0 01:9090: D0 F5     BNE bra_9087_loop
C - - - - - 0x0050A2 01:9092: C6 0C     DEC ram_000C
C - - - - - 0x0050A4 01:9094: D0 EC     BNE bra_9082_loop
; close buffer
C - - - - - 0x0050A6 01:9096: A9 FF     LDA #$FF
C - - - - - 0x0050A8 01:9098: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x0050AB 01:909B: E8        INX
bra_909C_skip:
C - - - - - 0x0050AC 01:909C: 86 1E     STX ram_index_ppu_buffer
C - - - - - 0x0050AE 01:909E: 18        CLC
bra_909F:
C - - - - - 0x0050AF 01:909F: A6 10     LDX ram_0010
C - - - - - 0x0050B1 01:90A1: 60        RTS



sub_90A2:
C - - - - - 0x0050B2 01:90A2: A5 01     LDA ram_0001    ; ppu hi
C - - - - - 0x0050B4 01:90A4: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x0050B7 01:90A7: E8        INX
C - - - - - 0x0050B8 01:90A8: A5 00     LDA ram_0000    ; ppu lo
C - - - - - 0x0050BA 01:90AA: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x0050BD 01:90AD: E8        INX
C - - - - - 0x0050BE 01:90AE: A5 00     LDA ram_0000
C - - - - - 0x0050C0 01:90B0: 18        CLC
C - - - - - 0x0050C1 01:90B1: 69 20     ADC #$20
C - - - - - 0x0050C3 01:90B3: 85 00     STA ram_0000
C - - - - - 0x0050C5 01:90B5: 90 02     BCC bra_90B9_not_overflow
C - - - - - 0x0050C7 01:90B7: E6 01     INC ram_0001
bra_90B9_not_overflow:
C - - - - - 0x0050C9 01:90B9: A5 0A     LDA ram_000A    ; counter
C - - - - - 0x0050CB 01:90BB: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x0050CE 01:90BE: E8        INX
C - - - - - 0x0050CF 01:90BF: 60        RTS



tbl_90C0:
;                                              ----------- 
;                                              |    ------ scroll_X
;                                              |    |
- D 0 - - - 0x0050D0 01:90C0: 0E        .byte $0E, $E0   ; 
- D 0 - - - 0x0050D2 01:90C2: 0F        .byte $0F, $00   ; 
- D 0 - - - 0x0050D4 01:90C4: 0F        .byte $0F, $20   ; 
- D 0 - - - 0x0050D6 01:90C6: 0F        .byte $0F, $70   ; 
- D 0 - - - 0x0050D8 01:90C8: 0F        .byte $0F, $B0   ; 
- D 0 - - - 0x0050DA 01:90CA: 0F        .byte $0F, $D0   ; 
- D 0 - - - 0x0050DC 01:90CC: 10        .byte $10, $60   ; 
- D 0 - - - 0x0050DE 01:90CE: 10        .byte $10, $A0   ; 
- D 0 - - - 0x0050E0 01:90D0: 10        .byte $10, $E0   ; 
- D 0 - - - 0x0050E2 01:90D2: 11        .byte $11, $40   ; 
- D 0 - - - 0x0050E4 01:90D4: 11        .byte $11, $80   ; 
- D 0 - - - 0x0050E6 01:90D6: 11        .byte $11, $C0   ; 
- D 0 - - - 0x0050E8 01:90D8: 11        .byte $11, $E0   ; 
- D 0 - - - 0x0050EA 01:90DA: 12        .byte $12, $00   ; 
- D 0 - - - 0x0050EC 01:90DC: 12        .byte $12, $20   ; 



tbl_90DE:
;                                              --------------------- 
;                                              |    ---------------- 
;                                              |    |    ----------- 
;                                              |    |    |    ------ index for 0x00512A
;                                              |    |    |    |
- D 0 - - - 0x0050EE 01:90DE: 04        .byte $04, $17, $88, $00   ; 00 
- D 0 - - - 0x0050F2 01:90E2: 04        .byte $04, $1D, $8A, $02   ; 01 
- D 0 - - - 0x0050F6 01:90E6: 08        .byte $08, $15, $8C, $04   ; 02 
- D 0 - - - 0x0050FA 01:90EA: 08        .byte $08, $19, $00, $04   ; 03 
- D 0 - - - 0x0050FE 01:90EE: 08        .byte $08, $15, $04, $04   ; 04 
- D 0 - - - 0x005102 01:90F2: 04        .byte $04, $1D, $08, $00   ; 05 
- D 0 - - - 0x005106 01:90F6: 04        .byte $04, $1D, $80, $00   ; 06 
- D 0 - - - 0x00510A 01:90FA: 04        .byte $04, $1D, $84, $00   ; 07 
- D 0 - - - 0x00510E 01:90FE: 04        .byte $04, $1D, $88, $00   ; 08 
- D 0 - - - 0x005112 01:9102: 04        .byte $04, $1D, $8C, $00   ; 09 
- D 0 - - - 0x005116 01:9106: 08        .byte $08, $19, $00, $04   ; 0A 
- D 0 - - - 0x00511A 01:910A: 08        .byte $08, $15, $04, $04   ; 0B 
- D 0 - - - 0x00511E 01:910E: 04        .byte $04, $1D, $08, $00   ; 0C 
- D 0 - - - 0x005122 01:9112: 04        .byte $04, $19, $0A, $02   ; 0D 
- D 0 - - - 0x005126 01:9116: 04        .byte $04, $17, $0C, $00   ; 0E 



tbl_911A:
- D 0 - - - 0x00512A 01:911A: 20 91     .word off_9120_00
- D 0 - - - 0x00512C 01:911C: 48 91     .word off_9148_02
- D 0 - - - 0x00512E 01:911E: 70 91     .word off_9170_04



off_9120_00:
- D 0 - I - 0x005130 01:9120: 2A        .byte $2A, $2A, $2B, $2B   ; 00 
- D 0 - I - 0x005134 01:9124: C5        .byte $C5, $C6, $C5, $C6   ; 01 
- D 0 - I - 0x005138 01:9128: 2E        .byte $2E, $C9, $30, $CF   ; 02 
- D 0 - I - 0x00513C 01:912C: CB        .byte $CB, $CC, $D1, $D2   ; 03 
- D 0 - I - 0x005140 01:9130: 30        .byte $30, $D0, $2F, $CA   ; 04 
- D 0 - I - 0x005144 01:9134: CB        .byte $CB, $CC, $CD, $CE   ; 05 
- D 0 - I - 0x005148 01:9138: 30        .byte $30, $CF, $31, $D0   ; 06 
; bzk garbage?
- - - - - - 0x00514C 01:913C: D1        .byte $D1, $D2, $D3, $D4   ; 07 
- - - - - - 0x005150 01:9140: 2F        .byte $2F, $CA, $2E, $C9   ; 08 
- - - - - - 0x005154 01:9144: CD        .byte $CD, $CE, $CB, $CC   ; 09 



off_9148_02:
- D 0 - I - 0x005158 01:9148: 2C        .byte $2C, $2B, $2B, $2C   ; 00 
- D 0 - I - 0x00515C 01:914C: C5        .byte $C5, $C6, $C7, $C8   ; 01 
- D 0 - I - 0x005160 01:9150: 2E        .byte $2E, $C9, $2F, $CA   ; 02 
- D 0 - I - 0x005164 01:9154: CB        .byte $CB, $CC, $CD, $CE   ; 03 
- D 0 - I - 0x005168 01:9158: 30        .byte $30, $CF, $31, $D0   ; 04 
- D 0 - I - 0x00516C 01:915C: D1        .byte $D1, $D2, $D3, $D4   ; 05 
- D 0 - I - 0x005170 01:9160: 2F        .byte $2F, $CA, $2E, $C9   ; 06 
; bzk garbage?
- - - - - - 0x005174 01:9164: CD        .byte $CD, $CE, $CB, $CC   ; 07 
- - - - - - 0x005178 01:9168: 31        .byte $31, $D0, $30, $D0   ; 08 
- - - - - - 0x00517C 01:916C: D3        .byte $D3, $D4, $CB, $CC   ; 09 



off_9170_04:
- D 0 - I - 0x005180 01:9170: 2A        .byte $2A, $2A, $2B, $2B, $2C, $2B, $2B, $2C   ; 00 
- D 0 - I - 0x005188 01:9178: C5        .byte $C5, $C6, $C5, $C6, $C5, $C6, $C7, $C8   ; 01 
- D 0 - I - 0x005190 01:9180: 2E        .byte $2E, $C9, $30, $CF, $2E, $C9, $2F, $CA   ; 02 
- D 0 - I - 0x005198 01:9188: CB        .byte $CB, $CC, $D1, $D2, $CB, $CC, $CD, $CE   ; 03 
- D 0 - I - 0x0051A0 01:9190: 30        .byte $30, $D0, $2F, $CA, $30, $CF, $31, $D0   ; 04 
- D 0 - I - 0x0051A8 01:9198: CB        .byte $CB, $CC, $CD, $CE, $D1, $D2, $D3, $D4   ; 05 
- D 0 - I - 0x0051B0 01:91A0: 30        .byte $30, $CF, $31, $D0, $2F, $CA, $2E, $C9   ; 06 
; bzk garbage?
- - - - - - 0x0051B8 01:91A8: D1        .byte $D1, $D2, $D3, $D4, $CD, $CE, $CB, $CC   ; 07 
- - - - - - 0x0051C0 01:91B0: 2F        .byte $2F, $CA, $2E, $C9, $31, $D0, $30, $D0   ; 08 
- - - - - - 0x0051C8 01:91B8: CD        .byte $CD, $CE, $CB, $CC, $D3, $D4, $CB, $CC   ; 09 



_off001_0x0051D0_3A_bullet_robospider:
- D 0 - I - 0x0051D0 01:91C0: C8 91     .word ofs_038_3A_91C8_01_initialize_object ; 
- D 0 - I - 0x0051D2 01:91C2: D1 91     .word ofs_038_3A_91D1_02 ; 
- D 0 - I - 0x0051D4 01:91C4: E1 91     .word ofs_038_3A_91E1_03 ; 
- D 0 - I - 0x0051D6 01:91C6: 75 A2     .word ofs_038_3A_0x006285_04_delete_object_02 ; 



ofs_038_3A_91C8_01_initialize_object:
C - - J - - 0x0051D8 01:91C8: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x0051DB 01:91CB: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x0051DE 01:91CE: 4C 95 AE  JMP loc_0x006EA5



ofs_038_3A_91D1_02:
C - - J - - 0x0051E1 01:91D1: 20 B7 A6  JSR sub_0x0066C7_delete_object_03
C - - - - - 0x0051E4 01:91D4: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x0051E7 01:91D7: D0 2C     BNE bra_9205_RTS
C - - - - - 0x0051E9 01:91D9: A9 06     LDA #$06
C - - - - - 0x0051EB 01:91DB: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x0051EE 01:91DE: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_3A_91E1_03:
C - - J - - 0x0051F1 01:91E1: FE E6 06  INC ram_06E6_obj,X
C - - - - - 0x0051F4 01:91E4: BD E6 06  LDA ram_06E6_obj,X
C - - - - - 0x0051F7 01:91E7: 4A        LSR
C - - - - - 0x0051F8 01:91E8: 4A        LSR
C - - - - - 0x0051F9 01:91E9: 29 03     AND #$03
C - - - - - 0x0051FB 01:91EB: 9D 56 05  STA ram_attr_spr_enemy,X
C - - - - - 0x0051FE 01:91EE: BD 64 07  LDA ram_0764_obj,X
C - - - - - 0x005201 01:91F1: F0 05     BEQ bra_91F8
C - - - - - 0x005203 01:91F3: A0 05     LDY #$05
C - - - - - 0x005205 01:91F5: 20 6E A9  JSR sub_0x00697E
bra_91F8:
C - - - - - 0x005208 01:91F8: 20 D3 A6  JSR sub_0x0066E3
C - - - - - 0x00520B 01:91FB: A9 F8     LDA #$F8
C - - - - - 0x00520D 01:91FD: 20 0A A8  JSR sub_0x00681A
C - - - - - 0x005210 01:9200: F0 03     BEQ bra_9205_RTS
C - - - - - 0x005212 01:9202: 4C 75 A2  JMP loc_0x006285_delete_object_02
bra_9205_RTS:
C - - - - - 0x005215 01:9205: 60        RTS



_off001_0x005216_4E_robospider:
- D 0 - I - 0x005216 01:9206: 18 92     .word ofs_038_4E_9218_01_initialize_object ; 
- D 0 - I - 0x005218 01:9208: 2A 92     .word ofs_038_4E_922A_02 ; 
- D 0 - I - 0x00521A 01:920A: 65 92     .word ofs_038_4E_9265_03 ; 
- D 0 - I - 0x00521C 01:920C: A7 92     .word ofs_038_4E_92A7_04 ; 
- D 0 - I - 0x00521E 01:920E: BE A3     .word ofs_038_4E_0x0063CE_05 ; 
- D 0 - I - 0x005220 01:9210: D8 A3     .word ofs_038_4E_0x0063E8_06 ; 
- D 0 - I - 0x005222 01:9212: DA 92     .word ofs_038_4E_92DA_07 ; 
- D 0 - I - 0x005224 01:9214: FD A2     .word ofs_038_4E_0x00630D_08 ; 
- D 0 - I - 0x005226 01:9216: E2 92     .word ofs_038_4E_92E2_09 ; 



ofs_038_4E_9218_01_initialize_object:
C - - J - - 0x005228 01:9218: A9 8D     LDA #$8D
C - - - - - 0x00522A 01:921A: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x00522D 01:921D: A9 F0     LDA #con__hp_F0
C - - - - - 0x00522F 01:921F: 9D 76 06  STA ram_obj_hp,X
C - - - - - 0x005232 01:9222: A9 08     LDA #$08
C - - - - - 0x005234 01:9224: 9D 02 07  STA ram_0702_obj,X
C - - - - - 0x005237 01:9227: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_4E_922A_02:
C - - J - - 0x00523A 01:922A: A5 61     LDA ram_0061_area_config
C - - - - - 0x00523C 01:922C: F0 36     BEQ bra_9264_RTS
C - - - - - 0x00523E 01:922E: A5 60     LDA ram_0060_game_handler
C - - - - - 0x005240 01:9230: 05 70     ORA ram_0070_game_handler
C - - - - - 0x005242 01:9232: D0 30     BNE bra_9264_RTS
C - - - - - 0x005244 01:9234: A9 01     LDA #con_mirroring_H
C - - - - - 0x005246 01:9236: 85 26     STA ram_for_A000
C - - - - - 0x005248 01:9238: A9 9C     LDA #$9C
C - - - - - 0x00524A 01:923A: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x00524D 01:923D: A9 60     LDA #$60
C - - - - - 0x00524F 01:923F: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x005252 01:9242: A9 01     LDA #$01
C - - - - - 0x005254 01:9244: 9D 9C 07  STA ram_079C_obj,X
C - - - - - 0x005257 01:9247: A9 2C     LDA #$2C
C - - - - - 0x005259 01:9249: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x00525C 01:924C: A9 00     LDA #$00
C - - - - - 0x00525E 01:924E: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x005261 01:9251: A9 1E     LDA #$1E
C - - - - - 0x005263 01:9253: 9D 72 07  STA ram_0772_obj,X
C - - - - - 0x005266 01:9256: A9 0C     LDA #$0C
C - - - - - 0x005268 01:9258: 85 0A     STA ram_000A
C - - - - - 0x00526A 01:925A: A6 1E     LDX ram_index_ppu_buffer
C - - - - - 0x00526C 01:925C: 20 45 96  JSR sub_9645
C - - - - - 0x00526F 01:925F: A9 01     LDA #$01
C - - - - - 0x005271 01:9261: 4C E0 A2  JMP loc_0x0062F0
bra_9264_RTS:
C - - - - - 0x005274 01:9264: 60        RTS



ofs_038_4E_9265_03:
C - - J - - 0x005275 01:9265: A9 00     LDA #$00
C - - - - - 0x005277 01:9267: BC 72 07  LDY ram_0772_obj,X
C - - - - - 0x00527A 01:926A: C0 08     CPY #$08
C - - - - - 0x00527C 01:926C: B0 14     BCS bra_9282
C - - - - - 0x00527E 01:926E: A9 AC     LDA #$AC
C - - - - - 0x005280 01:9270: C0 07     CPY #$07
C - - - - - 0x005282 01:9272: B0 0E     BCS bra_9282
C - - - - - 0x005284 01:9274: A9 34     LDA #$34
C - - - - - 0x005286 01:9276: C0 06     CPY #$06
C - - - - - 0x005288 01:9278: B0 08     BCS bra_9282
C - - - - - 0x00528A 01:927A: A9 B2     LDA #$B2
C - - - - - 0x00528C 01:927C: C0 05     CPY #$05
C - - - - - 0x00528E 01:927E: B0 02     BCS bra_9282
C - - - - - 0x005290 01:9280: A9 34     LDA #$34
bra_9282:
C - - - - - 0x005292 01:9282: 20 EE A8  JSR sub_0x0068FE
C - - - - - 0x005295 01:9285: DE 72 07  DEC ram_0772_obj,X
C - - - - - 0x005298 01:9288: 10 DA     BPL bra_9264_RTS
C - - - - - 0x00529A 01:928A: A0 57     LDY #$57
C - - - - - 0x00529C 01:928C: 20 1D BD  JSR sub_0x007D2D_clear_0480_Y
C - - - - - 0x00529F 01:928F: A9 32     LDA #con_sound_32
C - - - - - 0x0052A1 01:9291: 20 DE FD  JSR sub_0x01FDEE_play_sound
C - - - - - 0x0052A4 01:9294: A9 00     LDA #$00
C - - - - - 0x0052A6 01:9296: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x0052A9 01:9299: 9D 64 07  STA ram_0764_obj,X
C - - - - - 0x0052AC 01:929C: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x0052AF 01:929F: A9 01     LDA #$01
C - - - - - 0x0052B1 01:92A1: 9D 72 07  STA ram_0772_obj,X
C - - - - - 0x0052B4 01:92A4: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_4E_92A7_04:
C - - J - - 0x0052B7 01:92A7: A9 01     LDA #$01
C - - - - - 0x0052B9 01:92A9: BC 9C 07  LDY ram_079C_obj,X
C - - - - - 0x0052BC 01:92AC: D0 02     BNE bra_92B0
C - - - - - 0x0052BE 01:92AE: A9 06     LDA #$06
bra_92B0:
C - - - - - 0x0052C0 01:92B0: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x0052C3 01:92B3: A5 5B     LDA ram_frm_cnt_2
C - - - - - 0x0052C5 01:92B5: 4A        LSR
C - - - - - 0x0052C6 01:92B6: 4A        LSR
C - - - - - 0x0052C7 01:92B7: 29 03     AND #$03
C - - - - - 0x0052C9 01:92B9: 09 20     ORA #$20
C - - - - - 0x0052CB 01:92BB: 9D 56 05  STA ram_attr_spr_enemy,X
C - - - - - 0x0052CE 01:92BE: 20 F3 94  JSR sub_94F3
C - - - - - 0x0052D1 01:92C1: 20 10 93  JSR sub_9310
C - - - - - 0x0052D4 01:92C4: A9 0C     LDA #$0C
C - - - - - 0x0052D6 01:92C6: BC 9C 07  LDY ram_079C_obj,X
C - - - - - 0x0052D9 01:92C9: F0 02     BEQ bra_92CD
C - - - - - 0x0052DB 01:92CB: A9 8D     LDA #$8D
bra_92CD:
C - - - - - 0x0052DD 01:92CD: 9D 2C 07  STA ram_072C_obj,X
loc_92D0:
C D 0 - - - 0x0052E0 01:92D0: A5 FF     LDA ram_for_2000
C - - - - - 0x0052E2 01:92D2: 29 FD     AND #$FD
C - - - - - 0x0052E4 01:92D4: 1D 56 07  ORA ram_0756_obj,X
C - - - - - 0x0052E7 01:92D7: 85 FF     STA ram_for_2000
C - - - - - 0x0052E9 01:92D9: 60        RTS



ofs_038_4E_92DA_07:
C - - J - - 0x0052EA 01:92DA: A9 05     LDA #$05
C - - - - - 0x0052EC 01:92DC: 9D 64 07  STA ram_0764_obj,X
C - - - - - 0x0052EF 01:92DF: 4C 9A A2  JMP loc_0x0062AA



ofs_038_4E_92E2_09:
C - - J - - 0x0052F2 01:92E2: BD 64 07  LDA ram_0764_obj,X
C - - - - - 0x0052F5 01:92E5: C9 03     CMP #$03
C - - - - - 0x0052F7 01:92E7: 90 03     BCC bra_92EC
C - - - - - 0x0052F9 01:92E9: 4C FF 95  JMP loc_95FF
bra_92EC:
C - - - - - 0x0052FC 01:92EC: BD 56 07  LDA ram_0756_obj,X
C - - - - - 0x0052FF 01:92EF: 49 02     EOR #$02
C - - - - - 0x005301 01:92F1: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x005304 01:92F4: 29 02     AND #$02
C - - - - - 0x005306 01:92F6: F0 08     BEQ bra_9300
C - - - - - 0x005308 01:92F8: A9 05     LDA #$05
C - - - - - 0x00530A 01:92FA: 9D 64 07  STA ram_0764_obj,X
C - - - - - 0x00530D 01:92FD: 4C D0 92  JMP loc_92D0
bra_9300:
C - - - - - 0x005310 01:9300: A0 57     LDY #$57
C - - - - - 0x005312 01:9302: 20 12 BD  JSR sub_0x007D22_clear_0400_Y
C - - - - - 0x005315 01:9305: A0 57     LDY #$57
C - - - - - 0x005317 01:9307: 20 1D BD  JSR sub_0x007D2D_clear_0480_Y
C - - - - - 0x00531A 01:930A: 20 82 F1  JSR sub_0x01F192
C - - - - - 0x00531D 01:930D: 4C 3D A3  JMP loc_0x00634D_delete_object_04



sub_9310:
C - - - - - 0x005320 01:9310: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x005323 01:9313: 20 09 E6  JSR sub_0x01E619_jump_to_pointers_after_jsr
- D 0 - I - 0x005326 01:9316: 1C 93     .word ofs_014_931C_00
- D 0 - I - 0x005328 01:9318: 3E 93     .word ofs_014_933E_01
- D 0 - I - 0x00532A 01:931A: 71 93     .word ofs_014_9371_02



ofs_014_931C_00:
C - - J - - 0x00532C 01:931C: 20 0B 94  JSR sub_940B
C - - - - - 0x00532F 01:931F: BD 9C 07  LDA ram_079C_obj,X
C - - - - - 0x005332 01:9322: D0 19     BNE bra_933D_RTS
C - - - - - 0x005334 01:9324: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x005337 01:9327: C9 C0     CMP #$C0
C - - - - - 0x005339 01:9329: B0 12     BCS bra_933D_RTS
C - - - - - 0x00533B 01:932B: BD 10 07  LDA ram_0710_obj,X
C - - - - - 0x00533E 01:932E: D0 0D     BNE bra_933D_RTS
C - - - - - 0x005340 01:9330: A9 30     LDA #$30
C - - - - - 0x005342 01:9332: 20 99 AB  JSR sub_0x006BA9_set_dynamic_hp_to_boss
sub_9335:
C - - - - - 0x005345 01:9335: A9 18     LDA #$18
bra_9337:
C - - - - - 0x005347 01:9337: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x00534A 01:933A: FE 48 07  INC ram_0748_obj,X
bra_933D_RTS:
C - - - - - 0x00534D 01:933D: 60        RTS



ofs_014_933E_01:
C - - J - - 0x00534E 01:933E: BD E6 06  LDA ram_06E6_obj,X
C - - - - - 0x005351 01:9341: C9 10     CMP #$10
C - - - - - 0x005353 01:9343: D0 03     BNE bra_9348
C - - - - - 0x005355 01:9345: 20 8B 93  JSR sub_938B
bra_9348:
C - - - - - 0x005358 01:9348: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x00535B 01:934B: D0 F0     BNE bra_933D_RTS
C - - - - - 0x00535D 01:934D: BC 3C 05  LDY ram_pos_X_hi_enemy,X
C - - - - - 0x005360 01:9350: CC 4C 05  CPY ram_pos_X_hi_plr
C - - - - - 0x005363 01:9353: A9 00     LDA #$00
C - - - - - 0x005365 01:9355: 90 02     BCC bra_9359
C - - - - - 0x005367 01:9357: A9 01     LDA #$01
bra_9359:
C - - - - - 0x005369 01:9359: 9D 72 07  STA ram_0772_obj,X
C - - - - - 0x00536C 01:935C: A9 60     LDA #$60
C - - - - - 0x00536E 01:935E: BC 76 06  LDY ram_obj_hp,X
C - - - - - 0x005371 01:9361: C0 10     CPY #$10
C - - - - - 0x005373 01:9363: B0 02     BCS bra_9367
C - - - - - 0x005375 01:9365: A9 40     LDA #$40
bra_9367:
C - - - - - 0x005377 01:9367: 85 00     STA ram_0000
C - - - - - 0x005379 01:9369: A5 23     LDA ram_random
C - - - - - 0x00537B 01:936B: 29 1F     AND #$1F
C - - - - - 0x00537D 01:936D: 65 00     ADC ram_0000
C - - - - - 0x00537F 01:936F: D0 C6     BNE bra_9337    ; jmp?



ofs_014_9371_02:
C - - J - - 0x005381 01:9371: 20 0B 94  JSR sub_940B
C - - - - - 0x005384 01:9374: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x005387 01:9377: D0 11     BNE bra_938A_RTS
C - - - - - 0x005389 01:9379: BD 10 07  LDA ram_0710_obj,X
C - - - - - 0x00538C 01:937C: F0 04     BEQ bra_9382
C - - - - - 0x00538E 01:937E: FE E6 06  INC ram_06E6_obj,X
C - - - - - 0x005391 01:9381: 60        RTS
bra_9382:
C - - - - - 0x005392 01:9382: 20 35 93  JSR sub_9335
C - - - - - 0x005395 01:9385: A9 01     LDA #$01
C - - - - - 0x005397 01:9387: 9D 48 07  STA ram_0748_obj,X
bra_938A_RTS:
C - - - - - 0x00539A 01:938A: 60        RTS



sub_938B:
C - - - - - 0x00539B 01:938B: A9 05     LDA #$05
C - - - - - 0x00539D 01:938D: 85 08     STA ram_0008
bra_938F_loop:
C - - - - - 0x00539F 01:938F: A0 3A     LDY #$3A
C - - - - - 0x0053A1 01:9391: 20 C8 AB  JSR sub_0x006BD8
C - - - - - 0x0053A4 01:9394: 90 48     BCC bra_93DE
C - - - - - 0x0053A6 01:9396: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x0053A9 01:9399: 85 0A     STA ram_000A
C - - - - - 0x0053AB 01:939B: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x0053AE 01:939E: 85 0B     STA ram_000B
C - - - - - 0x0053B0 01:93A0: A6 11     LDX ram_0011
C - - - - - 0x0053B2 01:93A2: A5 08     LDA ram_0008
C - - - - - 0x0053B4 01:93A4: 0A        ASL
C - - - - - 0x0053B5 01:93A5: A8        TAY
C - - - - - 0x0053B6 01:93A6: B9 E1 93  LDA tbl_93E1_spd_Y,Y
C - - - - - 0x0053B9 01:93A9: 9D A0 06  STA ram_spd_Y_lo_obj,X
C - - - - - 0x0053BC 01:93AC: B9 E2 93  LDA tbl_93E1_spd_Y + $01,Y
C - - - - - 0x0053BF 01:93AF: 9D AE 06  STA ram_spd_Y_hi_obj,X
C - - - - - 0x0053C2 01:93B2: B9 ED 93  LDA tbl_93ED_spd_X,Y
C - - - - - 0x0053C5 01:93B5: 9D BC 06  STA ram_spd_X_lo_obj,X
C - - - - - 0x0053C8 01:93B8: B9 EE 93  LDA tbl_93ED_spd_X + $01,Y
C - - - - - 0x0053CB 01:93BB: 9D CA 06  STA ram_spd_X_hi_obj,X
C - - - - - 0x0053CE 01:93BE: A4 08     LDY ram_0008
C - - - - - 0x0053D0 01:93C0: A5 0A     LDA ram_000A
C - - - - - 0x0053D2 01:93C2: 18        CLC
C - - - - - 0x0053D3 01:93C3: 79 F9 93  ADC tbl_93F9_pos_Y,Y
C - - - - - 0x0053D6 01:93C6: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x0053D9 01:93C9: B9 FF 93  LDA tbl_93FF_pos_X,Y
C - - - - - 0x0053DC 01:93CC: 18        CLC
C - - - - - 0x0053DD 01:93CD: 65 0B     ADC ram_000B
C - - - - - 0x0053DF 01:93CF: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x0053E2 01:93D2: B9 05 94  LDA tbl_9405,Y
C - - - - - 0x0053E5 01:93D5: 9D 64 07  STA ram_0764_obj,X
C - - - - - 0x0053E8 01:93D8: A6 10     LDX ram_0010
C - - - - - 0x0053EA 01:93DA: C6 08     DEC ram_0008
C - - - - - 0x0053EC 01:93DC: 10 B1     BPL bra_938F_loop
bra_93DE:
C - - - - - 0x0053EE 01:93DE: A6 10     LDX ram_0010
bra_93E0_RTS:
C - - - - - 0x0053F0 01:93E0: 60        RTS



tbl_93E1_spd_Y:
- D 0 - - - 0x0053F1 01:93E1: 96 FE     .word $FE96 ; 00 
- D 0 - - - 0x0053F3 01:93E3: 00 04     .word $0400 ; 01 
- D 0 - - - 0x0053F5 01:93E5: 6A 01     .word $016A ; 02 
- D 0 - - - 0x0053F7 01:93E7: 96 FE     .word $FE96 ; 03 
- D 0 - - - 0x0053F9 01:93E9: 00 04     .word $0400 ; 04 
- D 0 - - - 0x0053FB 01:93EB: 6A 01     .word $016A ; 05 



tbl_93ED_spd_X:
- D 0 - - - 0x0053FD 01:93ED: 6A 01     .word $016A ; 00 
- D 0 - - - 0x0053FF 01:93EF: 00 02     .word $0200 ; 01 
- D 0 - - - 0x005401 01:93F1: 6A 01     .word $016A ; 02 
- D 0 - - - 0x005403 01:93F3: 96 FE     .word $FE96 ; 03 
- D 0 - - - 0x005405 01:93F5: 00 FE     .word $FE00 ; 04 
- D 0 - - - 0x005407 01:93F7: 96 FE     .word $FE96 ; 05 



tbl_93F9_pos_Y:
- D 0 - - - 0x005409 01:93F9: E6        .byte $E6   ; 00 
- D 0 - - - 0x00540A 01:93FA: F2        .byte $F2   ; 01 
- D 0 - - - 0x00540B 01:93FB: 02        .byte $02   ; 02 
- D 0 - - - 0x00540C 01:93FC: E6        .byte $E6   ; 03 
- D 0 - - - 0x00540D 01:93FD: F2        .byte $F2   ; 04 
- D 0 - - - 0x00540E 01:93FE: 02        .byte $02   ; 05 



tbl_93FF_pos_X:
- D 0 - - - 0x00540F 01:93FF: 1E        .byte $1E   ; 00 
- D 0 - - - 0x005410 01:9400: 22        .byte $22   ; 01 
- D 0 - - - 0x005411 01:9401: 1E        .byte $1E   ; 02 
- D 0 - - - 0x005412 01:9402: E2        .byte $E2   ; 03 
- D 0 - - - 0x005413 01:9403: DE        .byte $DE   ; 04 
- D 0 - - - 0x005414 01:9404: E2        .byte $E2   ; 05 



tbl_9405:
- D 0 - - - 0x005415 01:9405: 00        .byte $00   ; 00 
- D 0 - - - 0x005416 01:9406: 01        .byte $01   ; 01 
- D 0 - - - 0x005417 01:9407: 00        .byte $00   ; 02 
- D 0 - - - 0x005418 01:9408: 00        .byte $00   ; 03 
- D 0 - - - 0x005419 01:9409: 01        .byte $01   ; 04 
- D 0 - - - 0x00541A 01:940A: 00        .byte $00   ; 05 



sub_940B:
C - - - - - 0x00541B 01:940B: DE 02 07  DEC ram_0702_obj,X
C - - - - - 0x00541E 01:940E: D0 D0     BNE bra_93E0_RTS
C - - - - - 0x005420 01:9410: BD 9C 07  LDA ram_079C_obj,X
C - - - - - 0x005423 01:9413: D0 16     BNE bra_942B
C - - - - - 0x005425 01:9415: 20 0B AB  JSR sub_0x006B1B_set_target_on_closest_player_X_pos
C - - - - - 0x005428 01:9418: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x00542B 01:941B: 38        SEC
C - - - - - 0x00542C 01:941C: F9 4C 05  SBC ram_pos_X_hi_plr,Y
C - - - - - 0x00542F 01:941F: B0 04     BCS bra_9425
C - - - - - 0x005431 01:9421: 49 FF     EOR #$FF
C - - - - - 0x005433 01:9423: 69 01     ADC #$01
bra_9425:
C - - - - - 0x005435 01:9425: C9 20     CMP #$20
C - - - - - 0x005437 01:9427: A9 05     LDA #$05
C - - - - - 0x005439 01:9429: 90 11     BCC bra_943C
bra_942B:
C - - - - - 0x00543B 01:942B: A9 07     LDA #$07
C - - - - - 0x00543D 01:942D: BC 76 06  LDY ram_obj_hp,X
C - - - - - 0x005440 01:9430: C0 10     CPY #$10
C - - - - - 0x005442 01:9432: B0 08     BCS bra_943C
C - - - - - 0x005444 01:9434: A9 06     LDA #$06
C - - - - - 0x005446 01:9436: C0 08     CPY #$08
C - - - - - 0x005448 01:9438: B0 02     BCS bra_943C
C - - - - - 0x00544A 01:943A: A9 05     LDA #$05
bra_943C:
C - - - - - 0x00544C 01:943C: 9D 02 07  STA ram_0702_obj,X
C - - - - - 0x00544F 01:943F: BD 72 07  LDA ram_0772_obj,X
C - - - - - 0x005452 01:9442: 4A        LSR
C - - - - - 0x005453 01:9443: A9 FF     LDA #$FF
C - - - - - 0x005455 01:9445: A0 08     LDY #$08
C - - - - - 0x005457 01:9447: 90 04     BCC bra_944D
C - - - - - 0x005459 01:9449: A9 01     LDA #$01
C - - - - - 0x00545B 01:944B: A0 00     LDY #$00
bra_944D:
C - - - - - 0x00545D 01:944D: 18        CLC
C - - - - - 0x00545E 01:944E: 7D 10 07  ADC ram_0710_obj,X
C - - - - - 0x005461 01:9451: C9 09     CMP #$09
C - - - - - 0x005463 01:9453: 90 01     BCC bra_9456
C - - - - - 0x005465 01:9455: 98        TYA
bra_9456:
C - - - - - 0x005466 01:9456: 9D 10 07  STA ram_0710_obj,X
C - - - - - 0x005469 01:9459: 20 AA 94  JSR sub_94AA
C - - - - - 0x00546C 01:945C: B9 BD 94  LDA tbl_94BD,Y
C - - - - - 0x00546F 01:945F: 18        CLC
C - - - - - 0x005470 01:9460: 7D 3C 05  ADC ram_pos_X_hi_enemy,X
C - - - - - 0x005473 01:9463: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x005476 01:9466: BD 9C 07  LDA ram_079C_obj,X
C - - - - - 0x005479 01:9469: 79 CF 94  ADC tbl_94CF,Y
C - - - - - 0x00547C 01:946C: 9D 9C 07  STA ram_079C_obj,X
C - - - - - 0x00547F 01:946F: B9 E1 94  LDA tbl_94E1,Y
C - - - - - 0x005482 01:9472: F0 05     BEQ bra_9479_skip
C - - - - - 0x005484 01:9474: A9 1F     LDA #con_sound_1F
C - - - - - 0x005486 01:9476: 20 DE FD  JSR sub_0x01FDEE_play_sound
bra_9479_skip:
C - - - - - 0x005489 01:9479: BD 56 07  LDA ram_0756_obj,X
C - - - - - 0x00548C 01:947C: 49 02     EOR #$02
C - - - - - 0x00548E 01:947E: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x005491 01:9481: A9 05     LDA #$05
C - - - - - 0x005493 01:9483: 9D 64 07  STA ram_0764_obj,X
C - - - - - 0x005496 01:9486: BD 9C 07  LDA ram_079C_obj,X
C - - - - - 0x005499 01:9489: D0 1C     BNE bra_94A7
C - - - - - 0x00549B 01:948B: BD 72 07  LDA ram_0772_obj,X
C - - - - - 0x00549E 01:948E: 4A        LSR
C - - - - - 0x00549F 01:948F: A9 E0     LDA #$E0
C - - - - - 0x0054A1 01:9491: 90 02     BCC bra_9495
C - - - - - 0x0054A3 01:9493: A9 28     LDA #$28
bra_9495:
C - - - - - 0x0054A5 01:9495: DD 3C 05  CMP ram_pos_X_hi_enemy,X
C - - - - - 0x0054A8 01:9498: 2A        ROL
C - - - - - 0x0054A9 01:9499: 5D 72 07  EOR ram_0772_obj,X
C - - - - - 0x0054AC 01:949C: 4A        LSR
C - - - - - 0x0054AD 01:949D: B0 08     BCS bra_94A7
C - - - - - 0x0054AF 01:949F: BD 72 07  LDA ram_0772_obj,X
C - - - - - 0x0054B2 01:94A2: 49 01     EOR #$01
C - - - - - 0x0054B4 01:94A4: 9D 72 07  STA ram_0772_obj,X
bra_94A7:
C - - - - - 0x0054B7 01:94A7: A6 10     LDX ram_0010
C - - - - - 0x0054B9 01:94A9: 60        RTS



sub_94AA:
C - - - - - 0x0054BA 01:94AA: BD 10 07  LDA ram_0710_obj,X
sub_94AD:
C - - - - - 0x0054BD 01:94AD: 85 00     STA ram_0000
C - - - - - 0x0054BF 01:94AF: BD 72 07  LDA ram_0772_obj,X
C - - - - - 0x0054C2 01:94B2: 4A        LSR
C - - - - - 0x0054C3 01:94B3: A9 00     LDA #$00
C - - - - - 0x0054C5 01:94B5: 90 02     BCC bra_94B9
C - - - - - 0x0054C7 01:94B7: A9 08     LDA #$08
bra_94B9:
C - - - - - 0x0054C9 01:94B9: 65 00     ADC ram_0000
C - - - - - 0x0054CB 01:94BB: A8        TAY
C - - - - - 0x0054CC 01:94BC: 60        RTS



tbl_94BD:
- D 0 - - - 0x0054CD 01:94BD: 00        .byte $00   ; 00 
- D 0 - - - 0x0054CE 01:94BE: 08        .byte $08   ; 01 
- D 0 - - - 0x0054CF 01:94BF: 00        .byte $00   ; 02 
- D 0 - - - 0x0054D0 01:94C0: 08        .byte $08   ; 03 
- D 0 - - - 0x0054D1 01:94C1: 00        .byte $00   ; 04 
- D 0 - - - 0x0054D2 01:94C2: 08        .byte $08   ; 05 
- D 0 - - - 0x0054D3 01:94C3: 00        .byte $00   ; 06 
- D 0 - - - 0x0054D4 01:94C4: 08        .byte $08   ; 07 
- D 0 - - - 0x0054D5 01:94C5: 00        .byte $00   ; 08 
- D 0 - - - 0x0054D6 01:94C6: 00        .byte $00   ; 09 
- D 0 - - - 0x0054D7 01:94C7: 00        .byte $00   ; 0A 
- D 0 - - - 0x0054D8 01:94C8: F8        .byte $F8   ; 0B 
- D 0 - - - 0x0054D9 01:94C9: 00        .byte $00   ; 0C 
- D 0 - - - 0x0054DA 01:94CA: F8        .byte $F8   ; 0D 
- D 0 - - - 0x0054DB 01:94CB: 00        .byte $00   ; 0E 
- D 0 - - - 0x0054DC 01:94CC: F8        .byte $F8   ; 0F 
- D 0 - - - 0x0054DD 01:94CD: 00        .byte $00   ; 10 
- D 0 - - - 0x0054DE 01:94CE: F8        .byte $F8   ; 11 



tbl_94CF:
- D 0 - - - 0x0054DF 01:94CF: 00        .byte $00   ; 00 
- D 0 - - - 0x0054E0 01:94D0: 00        .byte $00   ; 01 
- D 0 - - - 0x0054E1 01:94D1: 00        .byte $00   ; 02 
- D 0 - - - 0x0054E2 01:94D2: 00        .byte $00   ; 03 
- D 0 - - - 0x0054E3 01:94D3: 00        .byte $00   ; 04 
- D 0 - - - 0x0054E4 01:94D4: 00        .byte $00   ; 05 
- D 0 - - - 0x0054E5 01:94D5: 00        .byte $00   ; 06 
- D 0 - - - 0x0054E6 01:94D6: 00        .byte $00   ; 07 
- D 0 - - - 0x0054E7 01:94D7: 00        .byte $00   ; 08 
- D 0 - - - 0x0054E8 01:94D8: 00        .byte $00   ; 09 
- D 0 - - - 0x0054E9 01:94D9: 00        .byte $00   ; 0A 
- D 0 - - - 0x0054EA 01:94DA: FF        .byte $FF   ; 0B 
- D 0 - - - 0x0054EB 01:94DB: 00        .byte $00   ; 0C 
- D 0 - - - 0x0054EC 01:94DC: FF        .byte $FF   ; 0D 
- D 0 - - - 0x0054ED 01:94DD: 00        .byte $00   ; 0E 
- D 0 - - - 0x0054EE 01:94DE: FF        .byte $FF   ; 0F 
- D 0 - - - 0x0054EF 01:94DF: 00        .byte $00   ; 10 
- D 0 - - - 0x0054F0 01:94E0: FF        .byte $FF   ; 11 



tbl_94E1:
; 00 = skip sound
; 01 = play sound
- D 0 - - - 0x0054F1 01:94E1: 01        .byte $01   ; 00 
- D 0 - - - 0x0054F2 01:94E2: 00        .byte $00   ; 01 
- D 0 - - - 0x0054F3 01:94E3: 00        .byte $00   ; 02 
- D 0 - - - 0x0054F4 01:94E4: 00        .byte $00   ; 03 
- D 0 - - - 0x0054F5 01:94E5: 00        .byte $00   ; 04 
- D 0 - - - 0x0054F6 01:94E6: 01        .byte $01   ; 05 
- D 0 - - - 0x0054F7 01:94E7: 00        .byte $00   ; 06 
- D 0 - - - 0x0054F8 01:94E8: 00        .byte $00   ; 07 
- D 0 - - - 0x0054F9 01:94E9: 00        .byte $00   ; 08 
- D 0 - - - 0x0054FA 01:94EA: 00        .byte $00   ; 09 
- D 0 - - - 0x0054FB 01:94EB: 01        .byte $01   ; 0A 
- D 0 - - - 0x0054FC 01:94EC: 00        .byte $00   ; 0B 
- D 0 - - - 0x0054FD 01:94ED: 00        .byte $00   ; 0C 
- D 0 - - - 0x0054FE 01:94EE: 00        .byte $00   ; 0D 
- D 0 - - - 0x0054FF 01:94EF: 00        .byte $00   ; 0E 
- D 0 - - - 0x005500 01:94F0: 00        .byte $00   ; 0F 
- D 0 - - - 0x005501 01:94F1: 01        .byte $01   ; 10 
- D 0 - - - 0x005502 01:94F2: 00        .byte $00   ; 11 



sub_94F3:
C - - - - - 0x005503 01:94F3: A9 00     LDA #$00
C - - - - - 0x005505 01:94F5: 85 86     STA ram_0085_for_2000 + $01
C - - - - - 0x005507 01:94F7: BD 64 07  LDA ram_0764_obj,X
C - - - - - 0x00550A 01:94FA: C9 01     CMP #$01
C - - - - - 0x00550C 01:94FC: D0 03     BNE bra_9501
C - - - - - 0x00550E 01:94FE: 20 82 96  JSR sub_9682
bra_9501:
C - - - - - 0x005511 01:9501: BD 64 07  LDA ram_0764_obj,X
C - - - - - 0x005514 01:9504: D0 03     BNE bra_9509
C - - - - - 0x005516 01:9506: 4C FC 95  JMP loc_95FC
bra_9509:
C - - - - - 0x005519 01:9509: C9 03     CMP #$03
C - - - - - 0x00551B 01:950B: 90 03     BCC bra_9510
C - - - - - 0x00551D 01:950D: 4C FF 95  JMP loc_95FF
bra_9510:
C - - - - - 0x005520 01:9510: 0A        ASL
C - - - - - 0x005521 01:9511: 85 08     STA ram_0008
C - - - - - 0x005523 01:9513: BD 56 07  LDA ram_0756_obj,X
C - - - - - 0x005526 01:9516: 0A        ASL
C - - - - - 0x005527 01:9517: 0A        ASL
C - - - - - 0x005528 01:9518: 49 08     EOR #$08
C - - - - - 0x00552A 01:951A: 85 0A     STA ram_000A
C - - - - - 0x00552C 01:951C: BD 72 07  LDA ram_0772_obj,X
C - - - - - 0x00552F 01:951F: 4A        LSR
C - - - - - 0x005530 01:9520: A9 01     LDA #$01
C - - - - - 0x005532 01:9522: A0 09     LDY #$09
C - - - - - 0x005534 01:9524: B0 04     BCS bra_952A
C - - - - - 0x005536 01:9526: A9 FF     LDA #$FF
C - - - - - 0x005538 01:9528: A0 F7     LDY #$F7
bra_952A:
C - - - - - 0x00553A 01:952A: 84 09     STY ram_0009
C - - - - - 0x00553C 01:952C: 18        CLC
C - - - - - 0x00553D 01:952D: 7D 10 07  ADC ram_0710_obj,X
C - - - - - 0x005540 01:9530: C9 09     CMP #$09
C - - - - - 0x005542 01:9532: 90 02     BCC bra_9536
C - - - - - 0x005544 01:9534: E5 09     SBC ram_0009
bra_9536:
C - - - - - 0x005546 01:9536: 85 0B     STA ram_000B
C - - - - - 0x005548 01:9538: 20 AD 94  JSR sub_94AD
C - - - - - 0x00554B 01:953B: B9 BD 94  LDA tbl_94BD,Y
C - - - - - 0x00554E 01:953E: 18        CLC
C - - - - - 0x00554F 01:953F: 7D 3C 05  ADC ram_pos_X_hi_enemy,X
C - - - - - 0x005552 01:9542: 85 0E     STA ram_000E
C - - - - - 0x005554 01:9544: BD 9C 07  LDA ram_079C_obj,X
C - - - - - 0x005557 01:9547: 79 CF 94  ADC tbl_94CF,Y
C - - - - - 0x00555A 01:954A: 85 0F     STA ram_000F
C - - - - - 0x00555C 01:954C: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x00555F 01:954F: 85 0D     STA ram_000D
C - - - - - 0x005561 01:9551: A6 1E     LDX ram_index_ppu_buffer
C - - - - - 0x005563 01:9553: E0 20     CPX #$20
C - - - - - 0x005565 01:9555: 90 03     BCC bra_955A
- - - - - - 0x005567 01:9557: 4C FC 95  JMP loc_95FC
bra_955A:
; if buffer is not too loaded
C - - - - - 0x00556A 01:955A: A5 0B     LDA ram_000B    ; 00-08
C - - - - - 0x00556C 01:955C: 0A        ASL
C - - - - - 0x00556D 01:955D: 0A        ASL
C - - - - - 0x00556E 01:955E: 65 08     ADC ram_0008    ; 02/04
C - - - - - 0x005570 01:9560: A8        TAY
C - - - - - 0x005571 01:9561: B9 CE 96  LDA tbl_96D0 - $02,Y
C - - - - - 0x005574 01:9564: 85 08     STA ram_0008
C - - - - - 0x005576 01:9566: B9 CF 96  LDA tbl_96D0 - $02 + $01,Y
C - - - - - 0x005579 01:9569: 85 09     STA ram_0009
C - - - - - 0x00557B 01:956B: A0 00     LDY #$00
C - - - - - 0x00557D 01:956D: 84 0C     STY ram_000C
C - - - - - 0x00557F 01:956F: A9 07     LDA #con_buf_mode_07
C - - - - - 0x005581 01:9571: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x005584 01:9574: E8        INX
loc_9575_loop:
C D 0 - - - 0x005585 01:9575: A9 00     LDA #$00
C - - - - - 0x005587 01:9577: 85 02     STA ram_0002
C - - - - - 0x005589 01:9579: B1 08     LDA (ram_0008),Y
C - - - - - 0x00558B 01:957B: 10 02     BPL bra_957F
C - - - - - 0x00558D 01:957D: C6 02     DEC ram_0002    ; FF
bra_957F:
C - - - - - 0x00558F 01:957F: C9 80     CMP #$80
C - - - - - 0x005591 01:9581: D0 03     BNE bra_9586
C - - - - - 0x005593 01:9583: 4C EA 95  JMP loc_95EA_80
bra_9586:
C - - - - - 0x005596 01:9586: 18        CLC
C - - - - - 0x005597 01:9587: 65 0E     ADC ram_000E
C - - - - - 0x005599 01:9589: 85 05     STA ram_0005
C - - - - - 0x00559B 01:958B: C8        INY
C - - - - - 0x00559C 01:958C: C8        INY
C - - - - - 0x00559D 01:958D: B1 08     LDA (ram_0008),Y    ; counter
C - - - - - 0x00559F 01:958F: 30 0C     BMI bra_959D    ; bzk optimize, no 80+ bytes there
C - - - - - 0x0055A1 01:9591: A5 02     LDA ram_0002    ; 00/FF
C - - - - - 0x0055A3 01:9593: 65 0F     ADC ram_000F
C - - - - - 0x0055A5 01:9595: D0 44     BNE bra_95DB
C - - - - - 0x0055A7 01:9597: A5 05     LDA ram_0005
C - - - - - 0x0055A9 01:9599: C9 04     CMP #$04
C - - - - - 0x0055AB 01:959B: 90 3E     BCC bra_95DB
bra_959D:
C - - - - - 0x0055AD 01:959D: 88        DEY
C - - - - - 0x0055AE 01:959E: 84 12     STY ram_0012
C - - - - - 0x0055B0 01:95A0: A5 0D     LDA ram_000D
C - - - - - 0x0055B2 01:95A2: 18        CLC
C - - - - - 0x0055B3 01:95A3: 71 08     ADC (ram_0008),Y
C - - - - - 0x0055B5 01:95A5: A8        TAY
C - - - - - 0x0055B6 01:95A6: A5 05     LDA ram_0005
C - - - - - 0x0055B8 01:95A8: 20 80 BA  JSR sub_0x007A90
C - - - - - 0x0055BB 01:95AB: A4 12     LDY ram_0012
C - - - - - 0x0055BD 01:95AD: C8        INY
C - - - - - 0x0055BE 01:95AE: A5 01     LDA ram_0001
C - - - - - 0x0055C0 01:95B0: 05 0A     ORA ram_000A
C - - - - - 0x0055C2 01:95B2: 9D 00 03  STA ram_nmt_buffer,X    ; ppu hi
C - - - - - 0x0055C5 01:95B5: E8        INX
C - - - - - 0x0055C6 01:95B6: A5 00     LDA ram_0000
C - - - - - 0x0055C8 01:95B8: 9D 00 03  STA ram_nmt_buffer,X    ; ppu lo
C - - - - - 0x0055CB 01:95BB: E8        INX
C - - - - - 0x0055CC 01:95BC: B1 08     LDA (ram_0008),Y    ; counter
C - - - - - 0x0055CE 01:95BE: 29 7F     AND #$7F    ; bzk optimize, no 80+ bytes there
C - - - - - 0x0055D0 01:95C0: 9D 00 03  STA ram_nmt_buffer,X    ; counter
C - - - - - 0x0055D3 01:95C3: 85 0B     STA ram_000B
C - - - - - 0x0055D5 01:95C5: E8        INX
C - - - - - 0x0055D6 01:95C6: C8        INY
bra_95C7_loop:
C - - - - - 0x0055D7 01:95C7: B1 08     LDA (ram_0008),Y
C - - - - - 0x0055D9 01:95C9: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x0055DC 01:95CC: 84 12     STY ram_0012
C - - - - - 0x0055DE 01:95CE: A4 12     LDY ram_0012
C - - - - - 0x0055E0 01:95D0: E8        INX
C - - - - - 0x0055E1 01:95D1: C8        INY
C - - - - - 0x0055E2 01:95D2: C6 0B     DEC ram_000B
C - - - - - 0x0055E4 01:95D4: D0 F1     BNE bra_95C7_loop
C - - - - - 0x0055E6 01:95D6: E6 0C     INC ram_000C
C - - - - - 0x0055E8 01:95D8: 4C 75 95  JMP loc_9575_loop
bra_95DB:
C - - - - - 0x0055EB 01:95DB: B1 08     LDA (ram_0008),Y    ; counter
C - - - - - 0x0055ED 01:95DD: 29 7F     AND #$7F    ; bzk optimize, no 80+ bytes there
C - - - - - 0x0055EF 01:95DF: 85 02     STA ram_0002
C - - - - - 0x0055F1 01:95E1: C8        INY
C - - - - - 0x0055F2 01:95E2: 98        TYA
C - - - - - 0x0055F3 01:95E3: 18        CLC
C - - - - - 0x0055F4 01:95E4: 65 02     ADC ram_0002
C - - - - - 0x0055F6 01:95E6: A8        TAY
C - - - - - 0x0055F7 01:95E7: 4C 75 95  JMP loc_9575_loop



loc_95EA_80:
C D 0 - - - 0x0055FA 01:95EA: A5 0C     LDA ram_000C
C - - - - - 0x0055FC 01:95EC: F0 08     BEQ bra_95F6
; close buffer
C - - - - - 0x0055FE 01:95EE: A9 FF     LDA #$FF
C - - - - - 0x005600 01:95F0: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x005603 01:95F3: E8        INX
C - - - - - 0x005604 01:95F4: 86 1E     STX ram_index_ppu_buffer
bra_95F6:
C - - - - - 0x005606 01:95F6: A6 10     LDX ram_0010
C - - - - - 0x005608 01:95F8: DE 64 07  DEC ram_0764_obj,X
C - - - - - 0x00560B 01:95FB: 18        CLC
loc_95FC:
C D 0 - - - 0x00560C 01:95FC: A6 10     LDX ram_0010
C - - - - - 0x00560E 01:95FE: 60        RTS



loc_95FF:
C D 0 - - - 0x00560F 01:95FF: 0A        ASL
C - - - - - 0x005610 01:9600: A8        TAY
C - - - - - 0x005611 01:9601: BD 56 07  LDA ram_0756_obj,X
C - - - - - 0x005614 01:9604: 0A        ASL
C - - - - - 0x005615 01:9605: 0A        ASL
C - - - - - 0x005616 01:9606: 49 08     EOR #$08
C - - - - - 0x005618 01:9608: 85 0A     STA ram_000A
C - - - - - 0x00561A 01:960A: A6 1E     LDX ram_index_ppu_buffer
C - - - - - 0x00561C 01:960C: E0 20     CPX #$20
C - - - - - 0x00561E 01:960E: B0 60     BCS bra_9670
C - - - - - 0x005620 01:9610: A9 03     LDA #con_buf_mode_03
C - - - - - 0x005622 01:9612: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x005625 01:9615: E8        INX
C - - - - - 0x005626 01:9616: B9 71 96  LDA tbl_9676 + $01 - $06,Y
C - - - - - 0x005629 01:9619: 18        CLC
C - - - - - 0x00562A 01:961A: 65 0A     ADC ram_000A
C - - - - - 0x00562C 01:961C: 9D 00 03  STA ram_nmt_buffer,X    ; ppu hi
C - - - - - 0x00562F 01:961F: E8        INX
C - - - - - 0x005630 01:9620: B9 70 96  LDA tbl_9676 - $06,Y
C - - - - - 0x005633 01:9623: 9D 00 03  STA ram_nmt_buffer,X    ; ppu lo
C - - - - - 0x005636 01:9626: E8        INX
C - - - - - 0x005637 01:9627: 98        TYA
C - - - - - 0x005638 01:9628: 4A        LSR
C - - - - - 0x005639 01:9629: A8        TAY
C - - - - - 0x00563A 01:962A: B9 70 96  LDA tbl_9673 - $03,Y
C - - - - - 0x00563D 01:962D: 9D 00 03  STA ram_nmt_buffer,X    ; counter
C - - - - - 0x005640 01:9630: 4A        LSR
C - - - - - 0x005641 01:9631: 4A        LSR
C - - - - - 0x005642 01:9632: 85 0B     STA ram_000B
C - - - - - 0x005644 01:9634: E8        INX
C - - - - - 0x005645 01:9635: A9 00     LDA #$00
C - - - - - 0x005647 01:9637: C0 05     CPY #$05
C - - - - - 0x005649 01:9639: D0 02     BNE bra_963D
C - - - - - 0x00564B 01:963B: A9 AC     LDA #$AC
bra_963D:
C - - - - - 0x00564D 01:963D: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x005650 01:9640: E8        INX
C - - - - - 0x005651 01:9641: C0 03     CPY #$03
C - - - - - 0x005653 01:9643: D0 21     BNE bra_9666
sub_9645:
C - - - - - 0x005655 01:9645: A9 03     LDA #con_buf_mode_03
C - - - - - 0x005657 01:9647: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x00565A 01:964A: E8        INX
C - - - - - 0x00565B 01:964B: A9 23     LDA #> $23E0
C - - - - - 0x00565D 01:964D: 18        CLC
C - - - - - 0x00565E 01:964E: 65 0A     ADC ram_000A
C - - - - - 0x005660 01:9650: 9D 00 03  STA ram_nmt_buffer,X    ; ppu hi
C - - - - - 0x005663 01:9653: E8        INX
C - - - - - 0x005664 01:9654: A9 E0     LDA #< $23E0
C - - - - - 0x005666 01:9656: 9D 00 03  STA ram_nmt_buffer,X    ; ppu lo
C - - - - - 0x005669 01:9659: E8        INX
C - - - - - 0x00566A 01:965A: A9 20     LDA #$20
C - - - - - 0x00566C 01:965C: 9D 00 03  STA ram_nmt_buffer,X    ; counter
C - - - - - 0x00566F 01:965F: E8        INX
C - - - - - 0x005670 01:9660: A9 FF     LDA #$FF
C - - - - - 0x005672 01:9662: 9D 00 03  STA ram_nmt_buffer,X    ; fill tile
C - - - - - 0x005675 01:9665: E8        INX
bra_9666:
C - - - - - 0x005676 01:9666: 86 1E     STX ram_index_ppu_buffer
C - - - - - 0x005678 01:9668: E6 86     INC ram_0085_for_2000 + $01
C - - - - - 0x00567A 01:966A: A6 10     LDX ram_0010
C - - - - - 0x00567C 01:966C: DE 64 07  DEC ram_0764_obj,X
C - - - - - 0x00567F 01:966F: 18        CLC
bra_9670:
C - - - - - 0x005680 01:9670: A6 10     LDX ram_0010
C - - - - - 0x005682 01:9672: 60        RTS



tbl_9673:
- D 0 - - - 0x005683 01:9673: 70        .byte $70   ; 03
- D 0 - - - 0x005684 01:9674: 70        .byte $70   ; 04
- D 0 - - - 0x005685 01:9675: 20        .byte $20   ; 05



tbl_9676:
- D 0 - - - 0x005686 01:9676: 00        .word $2200 ; 03
- D 0 - - - 0x005688 01:9678: 70        .word $2270 ; 04
- D 0 - - - 0x00568A 01:967A: E0        .word $22E0 ; 05


; bzk garbage
- - - - - - 0x00568C 01:967C: 80        .byte $80   ; 
- - - - - - 0x00568D 01:967D: 04        .byte $04   ; 
- - - - - - 0x00568E 01:967E: 9C        .byte $9C   ; 
- - - - - - 0x00568F 01:967F: 04        .byte $04   ; 
- - - - - - 0x005690 01:9680: B8        .byte $B8   ; 
- - - - - - 0x005691 01:9681: 04        .byte $04   ; 



sub_9682:
C - - - - - 0x005692 01:9682: BD 56 07  LDA ram_0756_obj,X
C - - - - - 0x005695 01:9685: 6A        ROR
C - - - - - 0x005696 01:9686: 6A        ROR
C - - - - - 0x005697 01:9687: 6A        ROR
C - - - - - 0x005698 01:9688: 49 80     EOR #$80
C - - - - - 0x00569A 01:968A: 29 80     AND #$80
C - - - - - 0x00569C 01:968C: 09 40     ORA #$40
C - - - - - 0x00569E 01:968E: 85 08     STA ram_0008
C - - - - - 0x0056A0 01:9690: A8        TAY
C - - - - - 0x0056A1 01:9691: A2 08     LDX #$08
C - - - - - 0x0056A3 01:9693: A9 00     LDA #$00
bra_9695_loop:
C - - - - - 0x0056A5 01:9695: 99 00 04  STA ram_0400_area_data_1,Y
C - - - - - 0x0056A8 01:9698: C8        INY
C - - - - - 0x0056A9 01:9699: CA        DEX
C - - - - - 0x0056AA 01:969A: D0 F9     BNE bra_9695_loop
C - - - - - 0x0056AC 01:969C: A6 10     LDX ram_0010
C - - - - - 0x0056AE 01:969E: BD 9C 07  LDA ram_079C_obj,X
C - - - - - 0x0056B1 01:96A1: D0 26     BNE bra_96C9_RTS
C - - - - - 0x0056B3 01:96A3: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x0056B6 01:96A6: 38        SEC
C - - - - - 0x0056B7 01:96A7: E9 18     SBC #$18
C - - - - - 0x0056B9 01:96A9: 4A        LSR
C - - - - - 0x0056BA 01:96AA: 4A        LSR
C - - - - - 0x0056BB 01:96AB: 4A        LSR
C - - - - - 0x0056BC 01:96AC: 4A        LSR
C - - - - - 0x0056BD 01:96AD: 4A        LSR
C - - - - - 0x0056BE 01:96AE: 05 08     ORA ram_0008
C - - - - - 0x0056C0 01:96B0: A8        TAY
C - - - - - 0x0056C1 01:96B1: A2 00     LDX #$00
C - - - - - 0x0056C3 01:96B3: 90 02     BCC bra_96B7
C - - - - - 0x0056C5 01:96B5: A2 03     LDX #$03
bra_96B7:
C - - - - - 0x0056C7 01:96B7: A9 03     LDA #$03
C - - - - - 0x0056C9 01:96B9: 85 08     STA ram_0008
bra_96BB_loop:
C - - - - - 0x0056CB 01:96BB: BD CA 96  LDA tbl_96CA,X
C - - - - - 0x0056CE 01:96BE: 99 00 04  STA ram_0400_area_data_1,Y
C - - - - - 0x0056D1 01:96C1: E8        INX
C - - - - - 0x0056D2 01:96C2: C8        INY
C - - - - - 0x0056D3 01:96C3: C6 08     DEC ram_0008
C - - - - - 0x0056D5 01:96C5: D0 F4     BNE bra_96BB_loop
C - - - - - 0x0056D7 01:96C7: A6 10     LDX ram_0010
bra_96C9_RTS:
C - - - - - 0x0056D9 01:96C9: 60        RTS



tbl_96CA:
; 00 
- D 0 - - - 0x0056DA 01:96CA: 22        .byte $22   ; 
- D 0 - - - 0x0056DB 01:96CB: 22        .byte $22   ; 
- D 0 - - - 0x0056DC 01:96CC: 00        .byte $00   ; 
; 03 
- D 0 - - - 0x0056DD 01:96CD: 02        .byte $02   ; 
- D 0 - - - 0x0056DE 01:96CE: 22        .byte $22   ; 
- D 0 - - - 0x0056DF 01:96CF: 20        .byte $20   ; 



tbl_96D0:
- D 0 - - - 0x0056E0 01:96D0: F4 96     .word _off017_96F4_01
- D 0 - - - 0x0056E2 01:96D2: 23 97     .word _off017_9723_02
- D 0 - - - 0x0056E4 01:96D4: F4 96     .word _off017_96F4_03
- D 0 - - - 0x0056E6 01:96D6: 51 97     .word _off017_9751_04
- D 0 - - - 0x0056E8 01:96D8: 75 97     .word _off017_9775_05
- D 0 - - - 0x0056EA 01:96DA: A3 97     .word _off017_97A3_06
- D 0 - - - 0x0056EC 01:96DC: C6 97     .word _off017_97C6_07
- D 0 - - - 0x0056EE 01:96DE: EF 97     .word _off017_97EF_08
- D 0 - - - 0x0056F0 01:96E0: 1D 98     .word _off017_981D_09
- D 0 - - - 0x0056F2 01:96E2: 4E 98     .word _off017_984E_0A
- D 0 - - - 0x0056F4 01:96E4: 80 98     .word _off017_9880_0B
- D 0 - - - 0x0056F6 01:96E6: AE 98     .word _off017_98AE_0C
- D 0 - - - 0x0056F8 01:96E8: E5 98     .word _off017_98E5_0D
- D 0 - - - 0x0056FA 01:96EA: 14 99     .word _off017_9914_0E
- D 0 - - - 0x0056FC 01:96EC: 41 99     .word _off017_9941_0F
- D 0 - - - 0x0056FE 01:96EE: 6B 99     .word _off017_996B_10
- D 0 - - - 0x005700 01:96F0: F4 96     .word _off017_96F4_11
- D 0 - - - 0x005702 01:96F2: 97 99     .word _off017_9997_12



_off017_96F4_01:
_off017_96F4_03:
_off017_96F4_11:
- D 0 - I - 0x005704 01:96F4: D8        .byte $D8   ; 
- D 0 - I - 0x005705 01:96F5: F8        .byte $F8   ; 
- D 0 - I - 0x005706 01:96F6: 05        .byte $05   ; counter
- D 0 - I - 0x005707 01:96F7: 0D        .byte $0D, $16, $20, $36, $3A   ; 

- D 0 - I - 0x00570C 01:96FC: E0        .byte $E0   ; 
- D 0 - I - 0x00570D 01:96FD: E8        .byte $E8   ; 
- D 0 - I - 0x00570E 01:96FE: 07        .byte $07   ; counter
- D 0 - I - 0x00570F 01:96FF: 01        .byte $01, $05, $0E, $17, $21, $37, $3B   ; 

- D 0 - I - 0x005716 01:9706: E8        .byte $E8   ; 
- D 0 - I - 0x005717 01:9707: E8        .byte $E8   ; 
- D 0 - I - 0x005718 01:9708: 08        .byte $08   ; counter
- D 0 - I - 0x005719 01:9709: 02        .byte $02, $06, $0F, $18, $22, $38, $3C, $3E   ; 

- D 0 - I - 0x005721 01:9711: F0        .byte $F0   ; 
- D 0 - I - 0x005722 01:9712: F0        .byte $F0   ; 
- D 0 - I - 0x005723 01:9713: 07        .byte $07   ; counter
- D 0 - I - 0x005724 01:9714: 07        .byte $07, $10, $19, $23, $39, $3D, $3F   ; 

- D 0 - I - 0x00572B 01:971B: F8        .byte $F8   ; 
- D 0 - I - 0x00572C 01:971C: F0        .byte $F0   ; 
- D 0 - I - 0x00572D 01:971D: 04        .byte $04   ; counter
- D 0 - I - 0x00572E 01:971E: 08        .byte $08, $11, $1A, $24   ; 

- D 0 - I - 0x005732 01:9722: 80        .byte $80   ; end token



_off017_9723_02:
- D 0 - I - 0x005733 01:9723: 00        .byte $00   ; 
- D 0 - I - 0x005734 01:9724: F0        .byte $F0   ; 
- D 0 - I - 0x005735 01:9725: 04        .byte $04   ; counter
- D 0 - I - 0x005736 01:9726: 09        .byte $09, $12, $1B, $25   ; 

- D 0 - I - 0x00573A 01:972A: 08        .byte $08   ; 
- D 0 - I - 0x00573B 01:972B: F0        .byte $F0   ; 
- D 0 - I - 0x00573C 01:972C: 06        .byte $06   ; counter
- D 0 - I - 0x00573D 01:972D: 0A        .byte $0A, $13, $1C, $26, $36, $3A   ; 

- D 0 - I - 0x005743 01:9733: 10        .byte $10   ; 
- D 0 - I - 0x005744 01:9734: E8        .byte $E8   ; 
- D 0 - I - 0x005745 01:9735: 07        .byte $07   ; counter
- D 0 - I - 0x005746 01:9736: 03        .byte $03, $0B, $14, $1D, $32, $37, $3B   ; 

- D 0 - I - 0x00574D 01:973D: 18        .byte $18   ; 
- D 0 - I - 0x00574E 01:973E: E8        .byte $E8   ; 
- D 0 - I - 0x00574F 01:973F: 08        .byte $08   ; counter
- D 0 - I - 0x005750 01:9740: 04        .byte $04, $0C, $15, $1E, $33, $38, $3C, $3E   ; 

- D 0 - I - 0x005758 01:9748: 20        .byte $20   ; 
- D 0 - I - 0x005759 01:9749: 00        .byte $00   ; 
- D 0 - I - 0x00575A 01:974A: 05        .byte $05   ; counter
- D 0 - I - 0x00575B 01:974B: 1F        .byte $1F, $35, $39, $3D, $3F   ; 

- D 0 - I - 0x005760 01:9750: 80        .byte $80   ; end token



_off017_9751_04:
- D 0 - I - 0x005761 01:9751: 00        .byte $00   ; 
- D 0 - I - 0x005762 01:9752: F0        .byte $F0   ; 
- D 0 - I - 0x005763 01:9753: 04        .byte $04   ; counter
- D 0 - I - 0x005764 01:9754: 09        .byte $09, $12, $42, $45   ; 

- D 0 - I - 0x005768 01:9758: 08        .byte $08   ; 
- D 0 - I - 0x005769 01:9759: F0        .byte $F0   ; 
- D 0 - I - 0x00576A 01:975A: 06        .byte $06   ; counter
- D 0 - I - 0x00576B 01:975B: 0A        .byte $0A, $13, $43, $46, $36, $3A   ; 

- D 0 - I - 0x005771 01:9761: 10        .byte $10   ; 
- D 0 - I - 0x005772 01:9762: E8        .byte $E8   ; 
- D 0 - I - 0x005773 01:9763: 07        .byte $07   ; counter
- D 0 - I - 0x005774 01:9764: 03        .byte $03, $0B, $40, $44, $38, $3C, $3B   ; 

- D 0 - I - 0x00577B 01:976B: 18        .byte $18   ; 
- D 0 - I - 0x00577C 01:976C: E8        .byte $E8   ; 
- D 0 - I - 0x00577D 01:976D: 06        .byte $06   ; counter
- D 0 - I - 0x00577E 01:976E: 04        .byte $04, $0C, $41, $35, $39, $3D   ; 

- D 0 - I - 0x005784 01:9774: 80        .byte $80   ; end token



_off017_9775_05:
- D 0 - I - 0x005785 01:9775: D8        .byte $D8   ; 
- D 0 - I - 0x005786 01:9776: F0        .byte $F0   ; 
- D 0 - I - 0x005787 01:9777: 05        .byte $05   ; counter
- D 0 - I - 0x005788 01:9778: 49        .byte $49, $4B, $20, $36, $3A   ; 

- D 0 - I - 0x00578D 01:977D: E0        .byte $E0   ; 
- D 0 - I - 0x00578E 01:977E: E8        .byte $E8   ; 
- D 0 - I - 0x00578F 01:977F: 06        .byte $06   ; counter
- D 0 - I - 0x005790 01:9780: 01        .byte $01, $05, $4C, $52, $37, $3B   ; 

- D 0 - I - 0x005796 01:9786: E8        .byte $E8   ; 
- D 0 - I - 0x005797 01:9787: E8        .byte $E8   ; 
- D 0 - I - 0x005798 01:9788: 05        .byte $05   ; counter
- D 0 - I - 0x005799 01:9789: 02        .byte $02, $06, $4D, $53, $59   ; 

- D 0 - I - 0x00579E 01:978E: F0        .byte $F0   ; 
- D 0 - I - 0x00579F 01:978F: F0        .byte $F0   ; 
- D 0 - I - 0x0057A0 01:9790: 07        .byte $07   ; counter
- D 0 - I - 0x0057A1 01:9791: 07        .byte $07, $4E, $54, $5A, $38, $3C, $3E   ; 

- D 0 - I - 0x0057A8 01:9798: F8        .byte $F8   ; 
- D 0 - I - 0x0057A9 01:9799: F0        .byte $F0   ; 
- D 0 - I - 0x0057AA 01:979A: 07        .byte $07   ; counter
- D 0 - I - 0x0057AB 01:979B: 08        .byte $08, $4F, $55, $35, $39, $3D, $3F   ; 

- D 0 - I - 0x0057B2 01:97A2: 80        .byte $80   ; end token



_off017_97A3_06:
- D 0 - I - 0x0057B3 01:97A3: 00        .byte $00   ; 
- D 0 - I - 0x0057B4 01:97A4: F0        .byte $F0   ; 
- D 0 - I - 0x0057B5 01:97A5: 04        .byte $04   ; counter
- D 0 - I - 0x0057B6 01:97A6: 09        .byte $09, $12, $56, $5B   ; 

- D 0 - I - 0x0057BA 01:97AA: 08        .byte $08   ; 
- D 0 - I - 0x0057BB 01:97AB: F0        .byte $F0   ; 
- D 0 - I - 0x0057BC 01:97AC: 04        .byte $04   ; counter
- D 0 - I - 0x0057BD 01:97AD: 0A        .byte $0A, $50, $57, $5C   ; 

- D 0 - I - 0x0057C1 01:97B1: 10        .byte $10   ; 
- D 0 - I - 0x0057C2 01:97B2: E8        .byte $E8   ; 
- D 0 - I - 0x0057C3 01:97B3: 07        .byte $07   ; counter
- D 0 - I - 0x0057C4 01:97B4: 47        .byte $47, $4A, $51, $58, $3C, $5D, $3A   ; 

- D 0 - I - 0x0057CB 01:97BB: 18        .byte $18   ; 
- D 0 - I - 0x0057CC 01:97BC: E8        .byte $E8   ; 
- D 0 - I - 0x0057CD 01:97BD: 07        .byte $07   ; counter
- D 0 - I - 0x0057CE 01:97BE: 48        .byte $48, $1F, $35, $39, $3D, $5E, $3B   ; 

- D 0 - I - 0x0057D5 01:97C5: 80        .byte $80   ; end token



_off017_97C6_07:
- D 0 - I - 0x0057D6 01:97C6: D0        .byte $D0   ; 
- D 0 - I - 0x0057D7 01:97C7: E8        .byte $E8   ; 
- D 0 - I - 0x0057D8 01:97C8: 05        .byte $05   ; counter
- D 0 - I - 0x0057D9 01:97C9: 5F        .byte $5F, $61, $20, $36, $3A   ; 

- D 0 - I - 0x0057DE 01:97CE: D8        .byte $D8   ; 
- D 0 - I - 0x0057DF 01:97CF: E8        .byte $E8   ; 
- D 0 - I - 0x0057E0 01:97D0: 05        .byte $05   ; counter
- D 0 - I - 0x0057E1 01:97D1: 60        .byte $60, $62, $64, $37, $3B   ; 

- D 0 - I - 0x0057E6 01:97D6: E0        .byte $E0   ; 
- D 0 - I - 0x0057E7 01:97D7: E8        .byte $E8   ; 
- D 0 - I - 0x0057E8 01:97D8: 04        .byte $04   ; counter
- D 0 - I - 0x0057E9 01:97D9: 01        .byte $01, $63, $65, $68   ; 

- D 0 - I - 0x0057ED 01:97DD: E8        .byte $E8   ; 
- D 0 - I - 0x0057EE 01:97DE: E8        .byte $E8   ; 
- D 0 - I - 0x0057EF 01:97DF: 04        .byte $04   ; counter
- D 0 - I - 0x0057F0 01:97E0: 02        .byte $02, $06, $4D, $69   ; 

- D 0 - I - 0x0057F4 01:97E4: F0        .byte $F0   ; 
- D 0 - I - 0x0057F5 01:97E5: F0        .byte $F0   ; 
- D 0 - I - 0x0057F6 01:97E6: 07        .byte $07   ; counter
- D 0 - I - 0x0057F7 01:97E7: 07        .byte $07, $4E, $6A, $22, $38, $3C, $3E   ; 

- D 0 - I - 0x0057FE 01:97EE: 80        .byte $80   ; end token



_off017_97EF_08:
- D 0 - I - 0x0057FF 01:97EF: F8        .byte $F8   ; 
- D 0 - I - 0x005800 01:97F0: F0        .byte $F0   ; 
- D 0 - I - 0x005801 01:97F1: 07        .byte $07   ; counter
- D 0 - I - 0x005802 01:97F2: 08        .byte $08, $4F, $55, $35, $39, $3D, $3F   ; 

- D 0 - I - 0x005809 01:97F9: 00        .byte $00   ; 
- D 0 - I - 0x00580A 01:97FA: F0        .byte $F0   ; 
- D 0 - I - 0x00580B 01:97FB: 04        .byte $04   ; counter
- D 0 - I - 0x00580C 01:97FC: 09        .byte $09, $12, $6B, $6E   ; 

- D 0 - I - 0x005810 01:9800: 08        .byte $08   ; 
- D 0 - I - 0x005811 01:9801: F0        .byte $F0   ; 
- D 0 - I - 0x005812 01:9802: 05        .byte $05   ; counter
- D 0 - I - 0x005813 01:9803: 0A        .byte $0A, $66, $6C, $6F, $3C   ; 

- D 0 - I - 0x005818 01:9808: 10        .byte $10   ; 
- D 0 - I - 0x005819 01:9809: E8        .byte $E8   ; 
- D 0 - I - 0x00581A 01:980A: 07        .byte $07   ; counter
- D 0 - I - 0x00581B 01:980B: 03        .byte $03, $0B, $67, $35, $39, $3D, $3A   ; 

- D 0 - I - 0x005822 01:9812: 18        .byte $18   ; 
- D 0 - I - 0x005823 01:9813: E8        .byte $E8   ; 
- D 0 - I - 0x005824 01:9814: 07        .byte $07   ; counter
- D 0 - I - 0x005825 01:9815: 04        .byte $04, $0C, $15, $6D, $21, $37, $3B   ; 

- D 0 - I - 0x00582C 01:981C: 80        .byte $80   ; end token



_off017_981D_09:
- D 0 - I - 0x00582D 01:981D: D0        .byte $D0   ; 
- D 0 - I - 0x00582E 01:981E: F0        .byte $F0   ; 
- D 0 - I - 0x00582F 01:981F: 05        .byte $05   ; counter
- D 0 - I - 0x005830 01:9820: 70        .byte $70, $72, $20, $36, $3A   ; 

- D 0 - I - 0x005835 01:9825: D8        .byte $D8   ; 
- D 0 - I - 0x005836 01:9826: F0        .byte $F0   ; 
- D 0 - I - 0x005837 01:9827: 05        .byte $05   ; counter
- D 0 - I - 0x005838 01:9828: 71        .byte $71, $73, $77, $37, $3B   ; 

- D 0 - I - 0x00583D 01:982D: E0        .byte $E0   ; 
- D 0 - I - 0x00583E 01:982E: E8        .byte $E8   ; 
- D 0 - I - 0x00583F 01:982F: 04        .byte $04   ; counter
- D 0 - I - 0x005840 01:9830: 01        .byte $01, $05, $74, $78   ; 

- D 0 - I - 0x005844 01:9834: E8        .byte $E8   ; 
- D 0 - I - 0x005845 01:9835: E8        .byte $E8   ; 
- D 0 - I - 0x005846 01:9836: 05        .byte $05   ; counter
- D 0 - I - 0x005847 01:9837: 02        .byte $02, $06, $4D, $79, $81   ; 

- D 0 - I - 0x00584C 01:983C: F0        .byte $F0   ; 
- D 0 - I - 0x00584D 01:983D: F0        .byte $F0   ; 
- D 0 - I - 0x00584E 01:983E: 04        .byte $04   ; counter
- D 0 - I - 0x00584F 01:983F: 07        .byte $07, $10, $7A, $82   ; 

- D 0 - I - 0x005853 01:9843: F8        .byte $F8   ; 
- D 0 - I - 0x005854 01:9844: F0        .byte $F0   ; 
- D 0 - I - 0x005855 01:9845: 07        .byte $07   ; counter
- D 0 - I - 0x005856 01:9846: 08        .byte $08, $11, $7B, $83, $38, $3C, $3E   ; 

- D 0 - I - 0x00585D 01:984D: 80        .byte $80   ; end token



_off017_984E_0A:
- D 0 - I - 0x00585E 01:984E: 00        .byte $00   ; 
- D 0 - I - 0x00585F 01:984F: F0        .byte $F0   ; 
- D 0 - I - 0x005860 01:9850: 07        .byte $07   ; counter
- D 0 - I - 0x005861 01:9851: 09        .byte $09, $12, $7C, $84, $39, $3D, $3F   ; 

- D 0 - I - 0x005868 01:9858: 08        .byte $08   ; 
- D 0 - I - 0x005869 01:9859: F0        .byte $F0   ; 
- D 0 - I - 0x00586A 01:985A: 07        .byte $07   ; counter
- D 0 - I - 0x00586B 01:985B: 0A        .byte $0A, $13, $7D, $85, $38, $3C, $3E   ; 

- D 0 - I - 0x005872 01:9862: 10        .byte $10   ; 
- D 0 - I - 0x005873 01:9863: E8        .byte $E8   ; 
- D 0 - I - 0x005874 01:9864: 08        .byte $08   ; counter
- D 0 - I - 0x005875 01:9865: 03        .byte $03, $0B, $14, $7E, $35, $39, $3D, $3F   ; 

- D 0 - I - 0x00587D 01:986D: 18        .byte $18   ; 
- D 0 - I - 0x00587E 01:986E: E8        .byte $E8   ; 
- D 0 - I - 0x00587F 01:986F: 07        .byte $07   ; counter
- D 0 - I - 0x005880 01:9870: 04        .byte $04, $0C, $75, $7F, $20, $36, $3A   ; 

- D 0 - I - 0x005887 01:9877: 20        .byte $20   ; 
- D 0 - I - 0x005888 01:9878: F8        .byte $F8   ; 
- D 0 - I - 0x005889 01:9879: 05        .byte $05   ; counter
- D 0 - I - 0x00588A 01:987A: 76        .byte $76, $80, $21, $37, $3B   ; 

- D 0 - I - 0x00588F 01:987F: 80        .byte $80   ; end token



_off017_9880_0B:
- D 0 - I - 0x005890 01:9880: C8        .byte $C8   ; 
- D 0 - I - 0x005891 01:9881: F8        .byte $F8   ; 
- D 0 - I - 0x005892 01:9882: 05        .byte $05   ; counter
- D 0 - I - 0x005893 01:9883: 86        .byte $86, $8B, $20, $36, $3A   ; 

- D 0 - I - 0x005898 01:9888: D0        .byte $D0   ; 
- D 0 - I - 0x005899 01:9889: F8        .byte $F8   ; 
- D 0 - I - 0x00589A 01:988A: 05        .byte $05   ; counter
- D 0 - I - 0x00589B 01:988B: 87        .byte $87, $8C, $21, $37, $3B   ; 

- D 0 - I - 0x0058A0 01:9890: D8        .byte $D8   ; 
- D 0 - I - 0x0058A1 01:9891: 00        .byte $00   ; 
- D 0 - I - 0x0058A2 01:9892: 02        .byte $02   ; counter
- D 0 - I - 0x0058A3 01:9893: 8D        .byte $8D, $93   ; 

- D 0 - I - 0x0058A5 01:9895: E0        .byte $E0   ; 
- D 0 - I - 0x0058A6 01:9896: E8        .byte $E8   ; 
- D 0 - I - 0x0058A7 01:9897: 05        .byte $05   ; counter
- D 0 - I - 0x0058A8 01:9898: 01        .byte $01, $05, $88, $8E, $94   ; 

- D 0 - I - 0x0058AD 01:989D: E8        .byte $E8   ; 
- D 0 - I - 0x0058AE 01:989E: E8        .byte $E8   ; 
- D 0 - I - 0x0058AF 01:989F: 05        .byte $05   ; counter
- D 0 - I - 0x0058B0 01:98A0: 02        .byte $02, $06, $4D, $8F, $95   ; 

- D 0 - I - 0x0058B5 01:98A5: F0        .byte $F0   ; 
- D 0 - I - 0x0058B6 01:98A6: F0        .byte $F0   ; 
- D 0 - I - 0x0058B7 01:98A7: 05        .byte $05   ; counter
- D 0 - I - 0x0058B8 01:98A8: 07        .byte $07, $89, $22, $38, $3C   ; 

- D 0 - I - 0x0058BD 01:98AD: 80        .byte $80   ; end token



_off017_98AE_0C:
- D 0 - I - 0x0058BE 01:98AE: F8        .byte $F8   ; 
- D 0 - I - 0x0058BF 01:98AF: F0        .byte $F0   ; 
- D 0 - I - 0x0058C0 01:98B0: 05        .byte $05   ; counter
- D 0 - I - 0x0058C1 01:98B1: 08        .byte $08, $8A, $90, $39, $3D   ; 

- D 0 - I - 0x0058C6 01:98B6: 00        .byte $00   ; 
- D 0 - I - 0x0058C7 01:98B7: F0        .byte $F0   ; 
- D 0 - I - 0x0058C8 01:98B8: 04        .byte $04   ; counter
- D 0 - I - 0x0058C9 01:98B9: 09        .byte $09, $12, $91, $96   ; 

- D 0 - I - 0x0058CD 01:98BD: 08        .byte $08   ; 
- D 0 - I - 0x0058CE 01:98BE: F0        .byte $F0   ; 
- D 0 - I - 0x0058CF 01:98BF: 07        .byte $07   ; counter
- D 0 - I - 0x0058D0 01:98C0: 0A        .byte $0A, $13, $92, $97, $38, $3C, $3E   ; 

- D 0 - I - 0x0058D7 01:98C7: 10        .byte $10   ; 
- D 0 - I - 0x0058D8 01:98C8: E8        .byte $E8   ; 
- D 0 - I - 0x0058D9 01:98C9: 08        .byte $08   ; counter
- D 0 - I - 0x0058DA 01:98CA: 03        .byte $03, $0B, $14, $7E, $35, $39, $3D, $3F   ; 

- D 0 - I - 0x0058E2 01:98D2: 18        .byte $18   ; 
- D 0 - I - 0x0058E3 01:98D3: E8        .byte $E8   ; 
- D 0 - I - 0x0058E4 01:98D4: 07        .byte $07   ; counter
- D 0 - I - 0x0058E5 01:98D5: 04        .byte $04, $0C, $75, $7F, $20, $36, $3A   ; 

- D 0 - I - 0x0058EC 01:98DC: 20        .byte $20   ; 
- D 0 - I - 0x0058ED 01:98DD: F8        .byte $F8   ; 
- D 0 - I - 0x0058EE 01:98DE: 05        .byte $05   ; counter
- D 0 - I - 0x0058EF 01:98DF: 76        .byte $76, $80, $21, $37, $3B   ; 

- D 0 - I - 0x0058F4 01:98E4: 80        .byte $80   ; end token



_off017_98E5_0D:
- D 0 - I - 0x0058F5 01:98E5: D0        .byte $D0   ; 
- D 0 - I - 0x0058F6 01:98E6: F8        .byte $F8   ; 
- D 0 - I - 0x0058F7 01:98E7: 05        .byte $05   ; counter
- D 0 - I - 0x0058F8 01:98E8: 5F        .byte $5F, $9F, $20, $36, $3A   ; 

- D 0 - I - 0x0058FD 01:98ED: D8        .byte $D8   ; 
- D 0 - I - 0x0058FE 01:98EE: F8        .byte $F8   ; 
- D 0 - I - 0x0058FF 01:98EF: 05        .byte $05   ; counter
- D 0 - I - 0x005900 01:98F0: 71        .byte $71, $A0, $21, $37, $3B   ; 

- D 0 - I - 0x005905 01:98F5: E0        .byte $E0   ; 
- D 0 - I - 0x005906 01:98F6: E8        .byte $E8   ; 
- D 0 - I - 0x005907 01:98F7: 05        .byte $05   ; counter
- D 0 - I - 0x005908 01:98F8: 01        .byte $01, $05, $88, $A1, $A8   ; 

- D 0 - I - 0x00590D 01:98FD: E8        .byte $E8   ; 
- D 0 - I - 0x00590E 01:98FE: E8        .byte $E8   ; 
- D 0 - I - 0x00590F 01:98FF: 05        .byte $05   ; counter
- D 0 - I - 0x005910 01:9900: 02        .byte $02, $06, $4D, $A2, $A9   ; 

- D 0 - I - 0x005915 01:9905: F0        .byte $F0   ; 
- D 0 - I - 0x005916 01:9906: F0        .byte $F0   ; 
- D 0 - I - 0x005917 01:9907: 04        .byte $04   ; counter
- D 0 - I - 0x005918 01:9908: 98        .byte $98, $9B, $38, $3C   ; 

- D 0 - I - 0x00591C 01:990C: F8        .byte $F8   ; 
- D 0 - I - 0x00591D 01:990D: F0        .byte $F0   ; 
- D 0 - I - 0x00591E 01:990E: 04        .byte $04   ; counter
- D 0 - I - 0x00591F 01:990F: 99        .byte $99, $9C, $A3, $3D   ; 

- D 0 - I - 0x005923 01:9913: 80        .byte $80   ; end token



_off017_9914_0E:
- D 0 - I - 0x005924 01:9914: 00        .byte $00   ; 
- D 0 - I - 0x005925 01:9915: F0        .byte $F0   ; 
- D 0 - I - 0x005926 01:9916: 04        .byte $04   ; counter
- D 0 - I - 0x005927 01:9917: 09        .byte $09, $12, $A4, $AA   ; 

- D 0 - I - 0x00592B 01:991B: 08        .byte $08   ; 
- D 0 - I - 0x00592C 01:991C: F0        .byte $F0   ; 
- D 0 - I - 0x00592D 01:991D: 04        .byte $04   ; counter
- D 0 - I - 0x00592E 01:991E: 0A        .byte $0A, $13, $A5, $AB   ; 

- D 0 - I - 0x005932 01:9922: 10        .byte $10   ; 
- D 0 - I - 0x005933 01:9923: E8        .byte $E8   ; 
- D 0 - I - 0x005934 01:9924: 08        .byte $08   ; counter
- D 0 - I - 0x005935 01:9925: 03        .byte $03, $0B, $14, $A6, $AE, $38, $3C, $3E   ; 

- D 0 - I - 0x00593D 01:992D: 18        .byte $18   ; 
- D 0 - I - 0x00593E 01:992E: E8        .byte $E8   ; 
- D 0 - I - 0x00593F 01:992F: 08        .byte $08   ; counter
- D 0 - I - 0x005940 01:9930: 04        .byte $04, $0C, $9D, $A7, $35, $39, $3D, $3F   ; 

- D 0 - I - 0x005948 01:9938: 20        .byte $20   ; 
- D 0 - I - 0x005949 01:9939: F0        .byte $F0   ; 
- D 0 - I - 0x00594A 01:993A: 05        .byte $05   ; counter
- D 0 - I - 0x00594B 01:993B: 9A        .byte $9A, $9E, $21, $37, $3B   ; 

- D 0 - I - 0x005950 01:9940: 80        .byte $80   ; end token



_off017_9941_0F:
- D 0 - I - 0x005951 01:9941: D0        .byte $D0   ; 
- D 0 - I - 0x005952 01:9942: F8        .byte $F8   ; 
- D 0 - I - 0x005953 01:9943: 05        .byte $05   ; counter
- D 0 - I - 0x005954 01:9944: 5F        .byte $5F, $9F, $20, $36, $3A   ; 

- D 0 - I - 0x005959 01:9949: D8        .byte $D8   ; 
- D 0 - I - 0x00595A 01:994A: F8        .byte $F8   ; 
- D 0 - I - 0x00595B 01:994B: 05        .byte $05   ; counter
- D 0 - I - 0x00595C 01:994C: 71        .byte $71, $A0, $21, $37, $3B   ; 

- D 0 - I - 0x005961 01:9951: E0        .byte $E0   ; 
- D 0 - I - 0x005962 01:9952: E8        .byte $E8   ; 
- D 0 - I - 0x005963 01:9953: 05        .byte $05   ; counter
- D 0 - I - 0x005964 01:9954: 01        .byte $01, $05, $88, $A1, $A8   ; 

- D 0 - I - 0x005969 01:9959: E8        .byte $E8   ; 
- D 0 - I - 0x00596A 01:995A: E8        .byte $E8   ; 
- D 0 - I - 0x00596B 01:995B: 06        .byte $06   ; counter
- D 0 - I - 0x00596C 01:995C: 02        .byte $02, $06, $AF, $B1, $B5, $3C   ; 

- D 0 - I - 0x005972 01:9962: F0        .byte $F0   ; 
- D 0 - I - 0x005973 01:9963: F0        .byte $F0   ; 
- D 0 - I - 0x005974 01:9964: 05        .byte $05   ; counter
- D 0 - I - 0x005975 01:9965: 07        .byte $07, $B0, $B3, $B6, $3D   ; 

- D 0 - I - 0x00597A 01:996A: 80        .byte $80   ; end token



_off017_996B_10:
- D 0 - I - 0x00597B 01:996B: F8        .byte $F8   ; 
- D 0 - I - 0x00597C 01:996C: F0        .byte $F0   ; 
- D 0 - I - 0x00597D 01:996D: 04        .byte $04   ; counter
- D 0 - I - 0x00597E 01:996E: 08        .byte $08, $11, $B4, $B7   ; 

- D 0 - I - 0x005982 01:9972: 00        .byte $00   ; 
- D 0 - I - 0x005983 01:9973: F0        .byte $F0   ; 
- D 0 - I - 0x005984 01:9974: 04        .byte $04   ; counter
- D 0 - I - 0x005985 01:9975: 09        .byte $09, $12, $A4, $AA   ; 

- D 0 - I - 0x005989 01:9979: 08        .byte $08   ; 
- D 0 - I - 0x00598A 01:997A: F0        .byte $F0   ; 
- D 0 - I - 0x00598B 01:997B: 04        .byte $04   ; counter
- D 0 - I - 0x00598C 01:997C: 0A        .byte $0A, $13, $A5, $AB   ; 

- D 0 - I - 0x005990 01:9980: 10        .byte $10   ; 
- D 0 - I - 0x005991 01:9981: E8        .byte $E8   ; 
- D 0 - I - 0x005992 01:9982: 08        .byte $08   ; counter
- D 0 - I - 0x005993 01:9983: 03        .byte $03, $0B, $14, $A6, $AE, $38, $3C, $3E   ; 

- D 0 - I - 0x00599B 01:998B: 18        .byte $18   ; 
- D 0 - I - 0x00599C 01:998C: E8        .byte $E8   ; 
- D 0 - I - 0x00599D 01:998D: 08        .byte $08   ; counter
- D 0 - I - 0x00599E 01:998E: 04        .byte $04, $0C, $15, $1F, $35, $39, $3D, $3F   ; 

- D 0 - I - 0x0059A6 01:9996: 80        .byte $80   ; end token



_off017_9997_12:
- D 0 - I - 0x0059A7 01:9997: 00        .byte $00   ; 
- D 0 - I - 0x0059A8 01:9998: F0        .byte $F0   ; 
- D 0 - I - 0x0059A9 01:9999: 04        .byte $04   ; counter
- D 0 - I - 0x0059AA 01:999A: 09        .byte $09, $12, $1B, $BA   ; 

- D 0 - I - 0x0059AE 01:999E: 08        .byte $08   ; 
- D 0 - I - 0x0059AF 01:999F: F0        .byte $F0   ; 
- D 0 - I - 0x0059B0 01:99A0: 04        .byte $04   ; counter
- D 0 - I - 0x0059B1 01:99A1: 0A        .byte $0A, $13, $B8, $BB   ; 

- D 0 - I - 0x0059B5 01:99A5: 10        .byte $10   ; 
- D 0 - I - 0x0059B6 01:99A6: E8        .byte $E8   ; 
- D 0 - I - 0x0059B7 01:99A7: 06        .byte $06   ; counter
- D 0 - I - 0x0059B8 01:99A8: 03        .byte $03, $0B, $14, $B9, $BC, $3A   ; 

- D 0 - I - 0x0059BE 01:99AE: 18        .byte $18   ; 
- D 0 - I - 0x0059BF 01:99AF: E8        .byte $E8   ; 
- D 0 - I - 0x0059C0 01:99B0: 08        .byte $08   ; counter
- D 0 - I - 0x0059C1 01:99B1: 04        .byte $04, $0C, $15, $1E, $33, $38, $3C, $3E   ; 

- D 0 - I - 0x0059C9 01:99B9: 20        .byte $20   ; 
- D 0 - I - 0x0059CA 01:99BA: 00        .byte $00   ; 
- D 0 - I - 0x0059CB 01:99BB: 05        .byte $05   ; counter
- D 0 - I - 0x0059CC 01:99BC: 1F        .byte $1F, $35, $39, $3D, $3F   ; 

- D 0 - I - 0x0059D1 01:99C1: 80        .byte $80   ; end token



_off001_0x0059D2_4B_boss_3_ball_center:
- D 0 - I - 0x0059D2 01:99C2: DA 99     .word ofs_038_4B_99DA_01_initialize_object ; 
- D 0 - I - 0x0059D4 01:99C4: E7 99     .word ofs_038_4B_99E7_02 ; 
- D 0 - I - 0x0059D6 01:99C6: FE 99     .word ofs_038_4B_99FE_03 ; 
- D 0 - I - 0x0059D8 01:99C8: 50 9A     .word ofs_038_4B_9A50_04 ; 
- D 0 - I - 0x0059DA 01:99CA: 66 9A     .word ofs_038_4B_9A66_05 ; 
- D 0 - I - 0x0059DC 01:99CC: 84 9A     .word ofs_038_4B_9A84_06 ; 
- D 0 - I - 0x0059DE 01:99CE: A0 9A     .word ofs_038_4B_9AA0_07 ; 
- D 0 - I - 0x0059E0 01:99D0: A8 9A     .word ofs_038_4B_9AA8_08 ; 
- D 0 - I - 0x0059E2 01:99D2: B8 9A     .word ofs_038_4B_9AB8_09 ; 
- D 0 - I - 0x0059E4 01:99D4: BE 9A     .word ofs_038_4B_9ABE_0A ; 
- D 0 - I - 0x0059E6 01:99D6: C4 9A     .word ofs_038_4B_9AC4_0B ; 
- D 0 - I - 0x0059E8 01:99D8: CA 9A     .word ofs_038_4B_9ACA_0C ; 



ofs_038_4B_99DA_01_initialize_object:
C - - J - - 0x0059EA 01:99DA: A9 11     LDA #$11
C - - - - - 0x0059EC 01:99DC: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x0059EF 01:99DF: A9 F0     LDA #con__hp_F0
C - - - - - 0x0059F1 01:99E1: 9D 76 06  STA ram_obj_hp,X
C - - - - - 0x0059F4 01:99E4: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_4B_99E7_02:
C - - J - - 0x0059F7 01:99E7: A5 61     LDA ram_0061_area_config
C - - - - - 0x0059F9 01:99E9: F0 22     BEQ bra_9A0D_RTS
C - - - - - 0x0059FB 01:99EB: A5 60     LDA ram_0060_game_handler
C - - - - - 0x0059FD 01:99ED: 05 70     ORA ram_0070_game_handler
C - - - - - 0x0059FF 01:99EF: D0 1C     BNE bra_9A0D_RTS
C - - - - - 0x005A01 01:99F1: A9 31     LDA #con_sound_31
C - - - - - 0x005A03 01:99F3: 20 DE FD  JSR sub_0x01FDEE_play_sound
C - - - - - 0x005A06 01:99F6: A9 07     LDA #$07
C - - - - - 0x005A08 01:99F8: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x005A0B 01:99FB: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_4B_99FE_03:
C - - J - - 0x005A0E 01:99FE: A5 60     LDA ram_0060_game_handler
C - - - - - 0x005A10 01:9A00: 05 70     ORA ram_0070_game_handler
C - - - - - 0x005A12 01:9A02: D0 09     BNE bra_9A0D_RTS
C - - - - - 0x005A14 01:9A04: DE 48 07  DEC ram_0748_obj,X
C - - - - - 0x005A17 01:9A07: F0 05     BEQ bra_9A0E
C - - - - - 0x005A19 01:9A09: A9 00     LDA #$00
C - - - - - 0x005A1B 01:9A0B: 85 6B     STA ram_006B
bra_9A0D_RTS:
C - - - - - 0x005A1D 01:9A0D: 60        RTS
bra_9A0E:
C - - - - - 0x005A1E 01:9A0E: A9 80     LDA #$80
C - - - - - 0x005A20 01:9A10: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x005A23 01:9A13: A9 18     LDA #$18
C - - - - - 0x005A25 01:9A15: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x005A28 01:9A18: A9 01     LDA #$01
C - - - - - 0x005A2A 01:9A1A: 9D 8E 07  STA ram_078E_obj,X
C - - - - - 0x005A2D 01:9A1D: A9 00     LDA #$00
C - - - - - 0x005A2F 01:9A1F: 9D 9C 07  STA ram_079C_obj,X
C - - - - - 0x005A32 01:9A22: A9 01     LDA #con_mirroring_H
C - - - - - 0x005A34 01:9A24: 85 26     STA ram_for_A000
C - - - - - 0x005A36 01:9A26: A9 00     LDA #$00
C - - - - - 0x005A38 01:9A28: 85 FC     STA ram_scroll_Y
C - - - - - 0x005A3A 01:9A2A: 85 F9     STA ram_00F9_scroll_Y
C - - - - - 0x005A3C 01:9A2C: 85 FD     STA ram_scroll_X
C - - - - - 0x005A3E 01:9A2E: 85 FA     STA ram_00FA_scroll_X
C - - - - - 0x005A40 01:9A30: A9 AA     LDA #$AA
C - - - - - 0x005A42 01:9A32: 85 FF     STA ram_for_2000
C - - - - - 0x005A44 01:9A34: A9 A8     LDA #$A8
C - - - - - 0x005A46 01:9A36: 85 FB     STA ram_00FB_for_2000
C - - - - - 0x005A48 01:9A38: 20 CE A9  JSR sub_0x0069DE
C - - - - - 0x005A4B 01:9A3B: A9 08     LDA #con_irq_area_3_boss
C - - - - - 0x005A4D 01:9A3D: 85 27     STA ram_irq_handler_hi
C - - - - - 0x005A4F 01:9A3F: A9 A2     LDA #$A2
C - - - - - 0x005A51 01:9A41: 85 45     STA ram_scanline
C - - - - - 0x005A53 01:9A43: A0 4F     LDY #$4F
C - - - - - 0x005A55 01:9A45: 20 12 BD  JSR sub_0x007D22_clear_0400_Y
C - - - - - 0x005A58 01:9A48: A9 09     LDA #$09
C - - - - - 0x005A5A 01:9A4A: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x005A5D 01:9A4D: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_4B_9A50_04:
C - - J - - 0x005A60 01:9A50: A5 60     LDA ram_0060_game_handler
C - - - - - 0x005A62 01:9A52: 05 70     ORA ram_0070_game_handler
C - - - - - 0x005A64 01:9A54: D0 09     BNE bra_9A5F_RTS
C - - - - - 0x005A66 01:9A56: DE 48 07  DEC ram_0748_obj,X
C - - - - - 0x005A69 01:9A59: F0 05     BEQ bra_9A60
C - - - - - 0x005A6B 01:9A5B: A9 00     LDA #$00
C - - - - - 0x005A6D 01:9A5D: 85 6B     STA ram_006B
bra_9A5F_RTS:
C - - - - - 0x005A6F 01:9A5F: 60        RTS
bra_9A60:
C - - - - - 0x005A70 01:9A60: 20 1B BD  JSR sub_0x007D2B_clear_0480_04FF
C - - - - - 0x005A73 01:9A63: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_4B_9A66_05:
C - - J - - 0x005A76 01:9A66: A9 AA     LDA #$AA
C - - - - - 0x005A78 01:9A68: 85 FB     STA ram_00FB_for_2000
C - - - - - 0x005A7A 01:9A6A: E6 45     INC ram_scanline
C - - - - - 0x005A7C 01:9A6C: 20 9D 9B  JSR sub_9B9D
C - - - - - 0x005A7F 01:9A6F: A5 45     LDA ram_scanline
C - - - - - 0x005A81 01:9A71: C9 C8     CMP #$C8
C - - - - - 0x005A83 01:9A73: 90 EA     BCC bra_9A5F_RTS
C - - - - - 0x005A85 01:9A75: A9 16     LDA #con_chr_bank + $16
C - - - - - 0x005A87 01:9A77: 8D F0 07  STA ram_chr_bank_bg_1
C - - - - - 0x005A8A 01:9A7A: A9 18     LDA #con_chr_bank + $18
C - - - - - 0x005A8C 01:9A7C: 8D F1 07  STA ram_chr_bank_bg_2
C - - - - - 0x005A8F 01:9A7F: A9 10     LDA #$10
C - - - - - 0x005A91 01:9A81: 4C E0 A2  JMP loc_0x0062F0



ofs_038_4B_9A84_06:
C - - J - - 0x005A94 01:9A84: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x005A97 01:9A87: D0 D6     BNE bra_9A5F_RTS
C - - - - - 0x005A99 01:9A89: A9 00     LDA #$00
C - - - - - 0x005A9B 01:9A8B: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x005A9E 01:9A8E: A9 01     LDA #$01
C - - - - - 0x005AA0 01:9A90: 9D 02 07  STA ram_0702_obj,X
C - - - - - 0x005AA3 01:9A93: A0 00     LDY #$00
C - - - - - 0x005AA5 01:9A95: 20 D7 9A  JSR sub_9AD7
C - - - - - 0x005AA8 01:9A98: A9 21     LDA #con_sound_21
C - - - - - 0x005AAA 01:9A9A: 20 DE FD  JSR sub_0x01FDEE_play_sound
C - - - - - 0x005AAD 01:9A9D: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_4B_9AA0_07:
C - - J - - 0x005AB0 01:9AA0: A9 01     LDA #$01
C - - - - - 0x005AB2 01:9AA2: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x005AB5 01:9AA5: 4C E8 9A  JMP loc_9AE8



ofs_038_4B_9AA8_08:
C - - J - - 0x005AB8 01:9AA8: A0 02     LDY #$02
C - - - - - 0x005ABA 01:9AAA: 20 D7 9A  JSR sub_9AD7
C - - - - - 0x005ABD 01:9AAD: A9 04     LDA #$04
C - - - - - 0x005ABF 01:9AAF: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x005AC2 01:9AB2: 20 E8 9A  JSR sub_9AE8
C - - - - - 0x005AC5 01:9AB5: 4C B8 A3  JMP loc_0x0063C8_boss_starts_exploding



ofs_038_4B_9AB8_09:
C - - J - - 0x005AC8 01:9AB8: 20 E8 9A  JSR sub_9AE8
C - - - - - 0x005ACB 01:9ABB: 4C D8 A3  JMP loc_0x0063E8



ofs_038_4B_9ABE_0A:
C - - J - - 0x005ACE 01:9ABE: 20 E8 9A  JSR sub_9AE8
C - - - - - 0x005AD1 01:9AC1: 4C A2 A2  JMP loc_0x0062B2



ofs_038_4B_9AC4_0B:
C - - J - - 0x005AD4 01:9AC4: 20 E8 9A  JSR sub_9AE8
C - - - - - 0x005AD7 01:9AC7: 4C F6 A2  JMP loc_0x006306



ofs_038_4B_9ACA_0C:
C - - J - - 0x005ADA 01:9ACA: A9 00     LDA #$00
C - - - - - 0x005ADC 01:9ACC: 85 FC     STA ram_scroll_Y
C - - - - - 0x005ADE 01:9ACE: 85 FD     STA ram_scroll_X
C - - - - - 0x005AE0 01:9AD0: A9 AA     LDA #$AA
C - - - - - 0x005AE2 01:9AD2: 85 FF     STA ram_for_2000
C - - - - - 0x005AE4 01:9AD4: 4C 37 A3  JMP loc_0x006347_delete_object_boss



sub_9AD7:
C - - - - - 0x005AE7 01:9AD7: B9 E4 9A  LDA tbl_9AE4_spd_Y,Y
C - - - - - 0x005AEA 01:9ADA: 9D A0 06  STA ram_spd_Y_lo_obj,X
C - - - - - 0x005AED 01:9ADD: B9 E5 9A  LDA tbl_9AE4_spd_Y + $01,Y
C - - - - - 0x005AF0 01:9AE0: 9D AE 06  STA ram_spd_Y_hi_obj,X
C - - - - - 0x005AF3 01:9AE3: 60        RTS



tbl_9AE4_spd_Y:
- D 0 - - - 0x005AF4 01:9AE4: 00 FF     .word $FF00 ; 00 
- D 0 - - - 0x005AF6 01:9AE6: 40 00     .word $0040 ; 02 



loc_9AE8:
sub_9AE8:
C D 0 - - - 0x005AF8 01:9AE8: 20 5D A7  JSR sub_0x00676D
C - - - - - 0x005AFB 01:9AEB: 20 0A AA  JSR sub_0x006A1A
C - - - - - 0x005AFE 01:9AEE: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x005B01 01:9AF1: 20 09 E6  JSR sub_0x01E619_jump_to_pointers_after_jsr
- D 0 - I - 0x005B04 01:9AF4: FE 9A     .word ofs_015_9AFE_00
- D 0 - I - 0x005B06 01:9AF6: 2C 9B     .word ofs_015_9B2C_01
- D 0 - I - 0x005B08 01:9AF8: 6B 9B     .word ofs_015_9B6B_02
- D 0 - I - 0x005B0A 01:9AFA: 7D 9B     .word ofs_015_9B7D_03
- D 0 - I - 0x005B0C 01:9AFC: 8D 9B     .word ofs_015_9B8D_04



ofs_015_9AFE_00:
C - - J - - 0x005B0E 01:9AFE: 20 87 AB  JSR sub_0x006B97
C - - - - - 0x005B11 01:9B01: DE 02 07  DEC ram_0702_obj,X
C - - - - - 0x005B14 01:9B04: D0 0A     BNE bra_9B10
C - - - - - 0x005B16 01:9B06: A9 10     LDA #$10
C - - - - - 0x005B18 01:9B08: 9D 02 07  STA ram_0702_obj,X
C - - - - - 0x005B1B 01:9B0B: A9 08     LDA #con_sound_08
C - - - - - 0x005B1D 01:9B0D: 20 DE FD  JSR sub_0x01FDEE_play_sound
bra_9B10:
C - - - - - 0x005B20 01:9B10: BD 8E 07  LDA ram_078E_obj,X
C - - - - - 0x005B23 01:9B13: D0 51     BNE bra_9B66_RTS
C - - - - - 0x005B25 01:9B15: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x005B28 01:9B18: C9 48     CMP #$48
C - - - - - 0x005B2A 01:9B1A: B0 4A     BCS bra_9B66_RTS
C - - - - - 0x005B2C 01:9B1C: A9 00     LDA #$00
C - - - - - 0x005B2E 01:9B1E: 85 FD     STA ram_scroll_X
C - - - - - 0x005B30 01:9B20: 85 FA     STA ram_00FA_scroll_X
C - - - - - 0x005B32 01:9B22: 20 C7 A7  JSR sub_0x0067D7_clear_spd_XY
C - - - - - 0x005B35 01:9B25: A9 10     LDA #$10
C - - - - - 0x005B37 01:9B27: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x005B3A 01:9B2A: D0 37     BNE bra_9B63    ; jmp



ofs_015_9B2C_01:
C - - J - - 0x005B3C 01:9B2C: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x005B3F 01:9B2F: D0 35     BNE bra_9B66_RTS
C - - - - - 0x005B41 01:9B31: A0 03     LDY #$03
bra_9B33_loop:
C - - - - - 0x005B43 01:9B33: 84 08     STY ram_0008
C - - - - - 0x005B45 01:9B35: A0 50     LDY #$50
C - - - - - 0x005B47 01:9B37: 20 C8 AB  JSR sub_0x006BD8
C - - - - - 0x005B4A 01:9B3A: 90 13     BCC bra_9B4F
C - - - - - 0x005B4C 01:9B3C: A4 08     LDY ram_0008
C - - - - - 0x005B4E 01:9B3E: B9 67 9B  LDA tbl_9B67,Y
C - - - - - 0x005B51 01:9B41: A4 11     LDY ram_0011
C - - - - - 0x005B53 01:9B43: 99 1E 07  STA ram_obj_flags,Y
C - - - - - 0x005B56 01:9B46: 8A        TXA
C - - - - - 0x005B57 01:9B47: 99 80 07  STA ram_0780_obj,Y
C - - - - - 0x005B5A 01:9B4A: A4 08     LDY ram_0008
C - - - - - 0x005B5C 01:9B4C: 88        DEY
C - - - - - 0x005B5D 01:9B4D: 10 E4     BPL bra_9B33_loop
bra_9B4F:
C - - - - - 0x005B5F 01:9B4F: A9 28     LDA #$28
C - - - - - 0x005B61 01:9B51: 20 99 AB  JSR sub_0x006BA9_set_dynamic_hp_to_boss
C - - - - - 0x005B64 01:9B54: A9 00     LDA #$00
C - - - - - 0x005B66 01:9B56: 8D CD 03  STA ram_03CD_area_config
C - - - - - 0x005B69 01:9B59: A9 40     LDA #$40
C - - - - - 0x005B6B 01:9B5B: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x005B6E 01:9B5E: A9 1A     LDA #con_chr_bank + $1A
C - - - - - 0x005B70 01:9B60: 8D F5 07  STA ram_chr_bank_spr_4
bra_9B63:
C - - - - - 0x005B73 01:9B63: FE 48 07  INC ram_0748_obj,X
bra_9B66_RTS:
C - - - - - 0x005B76 01:9B66: 60        RTS



tbl_9B67:
- D 0 - - - 0x005B77 01:9B67: 00        .byte $00   ; 00 
- D 0 - - - 0x005B78 01:9B68: 03        .byte $03   ; 01 
- D 0 - - - 0x005B79 01:9B69: 06        .byte $06   ; 02 
- D 0 - - - 0x005B7A 01:9B6A: 09        .byte $09   ; 03 



ofs_015_9B6B_02:
C - - J - - 0x005B7B 01:9B6B: A5 5B     LDA ram_frm_cnt_2
C - - - - - 0x005B7D 01:9B6D: 29 01     AND #$01
C - - - - - 0x005B7F 01:9B6F: D0 F5     BNE bra_9B66_RTS
C - - - - - 0x005B81 01:9B71: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x005B84 01:9B74: D0 F0     BNE bra_9B66_RTS
C - - - - - 0x005B86 01:9B76: A9 01     LDA #$01
C - - - - - 0x005B88 01:9B78: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x005B8B 01:9B7B: D0 E6     BNE bra_9B63    ; jmp



ofs_015_9B7D_03:
C - - J - - 0x005B8D 01:9B7D: A9 00     LDA #$00
C - - - - - 0x005B8F 01:9B7F: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x005B92 01:9B82: A9 40     LDA #$40
C - - - - - 0x005B94 01:9B84: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x005B97 01:9B87: A9 02     LDA #$02
C - - - - - 0x005B99 01:9B89: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x005B9C 01:9B8C: 60        RTS



ofs_015_9B8D_04:
C - - J - - 0x005B9D 01:9B8D: 20 87 AB  JSR sub_0x006B97
C - - - - - 0x005BA0 01:9B90: A5 45     LDA ram_scanline
C - - - - - 0x005BA2 01:9B92: C9 A3     CMP #$A3
C - - - - - 0x005BA4 01:9B94: F0 07     BEQ bra_9B9D
C - - - - - 0x005BA6 01:9B96: A5 5B     LDA ram_frm_cnt_2
C - - - - - 0x005BA8 01:9B98: 4A        LSR
C - - - - - 0x005BA9 01:9B99: 90 02     BCC bra_9B9D
C - - - - - 0x005BAB 01:9B9B: C6 45     DEC ram_scanline
bra_9B9D:
sub_9B9D:
C - - - - - 0x005BAD 01:9B9D: A5 45     LDA ram_scanline
C - - - - - 0x005BAF 01:9B9F: 38        SEC
C - - - - - 0x005BB0 01:9BA0: E9 A2     SBC #$A2
C - - - - - 0x005BB2 01:9BA2: 85 00     STA ram_0000
C - - - - - 0x005BB4 01:9BA4: A9 F0     LDA #$F0
C - - - - - 0x005BB6 01:9BA6: 38        SEC
C - - - - - 0x005BB7 01:9BA7: E5 00     SBC ram_0000
C - - - - - 0x005BB9 01:9BA9: 85 F9     STA ram_00F9_scroll_Y
C - - - - - 0x005BBB 01:9BAB: 60        RTS


; bzk garbage, same code as 0x0047A9
- - - - - - 0x005BBC 01:9BAC: A9 14     LDA #$14
- - - - - - 0x005BBE 01:9BAE: 85 08     STA ram_0008
- - - - - - 0x005BC0 01:9BB0: A0 00     LDY #$00
; bzk optimize, check ram_index_ppu_buffer first
- - - - - - 0x005BC2 01:9BB2: A6 1E     LDX ram_index_ppu_buffer
- - - - - - 0x005BC4 01:9BB4: E0 40     CPX #$40
- - - - - - 0x005BC6 01:9BB6: B0 0F     BCS bra_9BC7_skip
; if buffer is not too loaded
bra_9BB8_loop:
- - - - - - 0x005BC8 01:9BB8: B9 CA 9B  LDA tbl_9BCA,Y
- - - - - - 0x005BCB 01:9BBB: 9D 00 03  STA ram_nmt_buffer,X
- - - - - - 0x005BCE 01:9BBE: E8        INX
- - - - - - 0x005BCF 01:9BBF: C8        INY
- - - - - - 0x005BD0 01:9BC0: C6 08     DEC ram_0008
- - - - - - 0x005BD2 01:9BC2: D0 F4     BNE bra_9BB8_loop
- - - - - - 0x005BD4 01:9BC4: 86 1E     STX ram_index_ppu_buffer
- - - - - - 0x005BD6 01:9BC6: 18        CLC
bra_9BC7_skip:
- - - - - - 0x005BD7 01:9BC7: A6 10     LDX ram_0010
- - - - - - 0x005BD9 01:9BC9: 60        RTS



tbl_9BCA:
; bzk garbage, same table as 0x0047C7
- - - - - - 0x005BDA 01:9BCA: 03        .byte con_buf_mode_03   ; 

- - - - - - 0x005BDB 01:9BCB: 2B D8     .dbyt $2BD8 ; ppu address
- - - - - - 0x005BDD 01:9BCD: 12        .byte $12, $AA   ; counter + fill tile

- - - - - - 0x005BDF 01:9BCF: 06        .byte con_buf_mode_06   ; 

- - - - - - 0x005BE0 01:9BD0: 2B EA     .dbyt $2BEA ; ppu address
- - - - - - 0x005BE2 01:9BD2: 05        .byte $05   ; counter
- - - - - - 0x005BE3 01:9BD3: AE        .byte $AE, $FA, $FA, $FA, $FA   ; tiles

- - - - - - 0x005BE8 01:9BD8: FF        .byte $FF   ; change mode

- - - - - - 0x005BE9 01:9BD9: 03        .byte con_buf_mode_03   ; 

- - - - - - 0x005BEA 01:9BDA: 2B EF     .dbyt $2BEF ; ppu address
- - - - - - 0x005BEC 01:9BDC: 08        .byte $08, $AA   ; counter + fill tile



_off001_0x005BEE_50_boss_3_ball_violet:
- D 0 - I - 0x005BEE 01:9BDE: F0 9B     .word ofs_038_50_9BF0_01_initialize_object ; 
- D 0 - I - 0x005BF0 01:9BE0: 06 9C     .word ofs_038_50_9C06_02 ; 
- D 0 - I - 0x005BF2 01:9BE2: 29 9C     .word ofs_038_50_9C29_03 ; 
- D 0 - I - 0x005BF4 01:9BE4: 4C 9C     .word ofs_038_50_9C4C_04 ; 
- D 0 - I - 0x005BF6 01:9BE6: 6B 9C     .word ofs_038_50_9C6B_05 ; 
- D 0 - I - 0x005BF8 01:9BE8: 95 9C     .word ofs_038_50_9C95_06 ; 
- D 0 - I - 0x005BFA 01:9BEA: 9A A2     .word ofs_038_50_0x0062AA_07 ; 
- D 0 - I - 0x005BFC 01:9BEC: FD A2     .word ofs_038_50_0x00630D_08 ; 
- D 0 - I - 0x005BFE 01:9BEE: 3D A3     .word ofs_038_50_0x00634D_09_delete_object_04 ; 



ofs_038_50_9BF0_01_initialize_object:
C - - J - - 0x005C00 01:9BF0: A9 10     LDA #$10
C - - - - - 0x005C02 01:9BF2: 20 95 AB  JSR sub_0x006BA5_set_dynamic_hp_to_enemy
C - - - - - 0x005C05 01:9BF5: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x005C08 01:9BF8: A9 F1     LDA #con__hp_F1
C - - - - - 0x005C0A 01:9BFA: 9D 76 06  STA ram_obj_hp,X
C - - - - - 0x005C0D 01:9BFD: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x005C10 01:9C00: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x005C13 01:9C03: 4C D7 A2  JMP loc_0x0062E7_increase_obj_state



ofs_038_50_9C06_02:
C - - J - - 0x005C16 01:9C06: 20 A8 9C  JSR sub_9CA8
C - - - - - 0x005C19 01:9C09: 20 17 9D  JSR sub_9D17
C - - - - - 0x005C1C 01:9C0C: BC 80 07  LDY ram_0780_obj,X
C - - - - - 0x005C1F 01:9C0F: B9 56 07  LDA ram_0756_obj,Y
C - - - - - 0x005C22 01:9C12: F0 37     BEQ bra_9C4B_RTS
C - - - - - 0x005C24 01:9C14: BC 48 07  LDY ram_0748_obj,X
C - - - - - 0x005C27 01:9C17: B9 1D 9C  LDA tbl_9C1D,Y
C - - - - - 0x005C2A 01:9C1A: 4C E0 A2  JMP loc_0x0062F0



tbl_9C1D:
- D 0 - - - 0x005C2D 01:9C1D: 34        .byte $34   ; 00 
- D 0 - - - 0x005C2E 01:9C1E: 2F        .byte $2F   ; 01 
- D 0 - - - 0x005C2F 01:9C1F: 2F        .byte $2F   ; 02 
- D 0 - - - 0x005C30 01:9C20: 34        .byte $34   ; 03 
- D 0 - - - 0x005C31 01:9C21: 10        .byte $10   ; 04 
- D 0 - - - 0x005C32 01:9C22: 10        .byte $10   ; 05 
- D 0 - - - 0x005C33 01:9C23: 34        .byte $34   ; 06 
- D 0 - - - 0x005C34 01:9C24: 2F        .byte $2F   ; 07 
- D 0 - - - 0x005C35 01:9C25: 2F        .byte $2F   ; 08 
- D 0 - - - 0x005C36 01:9C26: 34        .byte $34   ; 09 
- D 0 - - - 0x005C37 01:9C27: 08        .byte $08   ; 0A 
- D 0 - - - 0x005C38 01:9C28: 08        .byte $08   ; 0B 



ofs_038_50_9C29_03:
C - - J - - 0x005C39 01:9C29: 20 9F 9C  JSR sub_9C9F
C - - - - - 0x005C3C 01:9C2C: 20 BA 9C  JSR sub_9CBA
C - - - - - 0x005C3F 01:9C2F: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x005C42 01:9C32: D0 17     BNE bra_9C4B_RTS
C - - - - - 0x005C44 01:9C34: 20 A8 9C  JSR sub_9CA8
C - - - - - 0x005C47 01:9C37: FE 48 07  INC ram_0748_obj,X
C - - - - - 0x005C4A 01:9C3A: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x005C4D 01:9C3D: C9 0C     CMP #$0C
C - - - - - 0x005C4F 01:9C3F: 90 02     BCC bra_9C43
C - - - - - 0x005C51 01:9C41: A9 00     LDA #$00
bra_9C43:
C - - - - - 0x005C53 01:9C43: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x005C56 01:9C46: A9 0C     LDA #$0C
C - - - - - 0x005C58 01:9C48: 4C E0 A2  JMP loc_0x0062F0
bra_9C4B_RTS:
C - - - - - 0x005C5B 01:9C4B: 60        RTS



ofs_038_50_9C4C_04:
C - - J - - 0x005C5C 01:9C4C: 20 17 9D  JSR sub_9D17
C - - - - - 0x005C5F 01:9C4F: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x005C62 01:9C52: D0 F7     BNE bra_9C4B_RTS
C - - - - - 0x005C64 01:9C54: 20 AE 9C  JSR sub_9CAE
C - - - - - 0x005C67 01:9C57: BD 56 07  LDA ram_0756_obj,X
C - - - - - 0x005C6A 01:9C5A: 9D 76 06  STA ram_obj_hp,X
C - - - - - 0x005C6D 01:9C5D: 20 D7 A2  JSR sub_0x0062E7_increase_obj_state
C - - - - - 0x005C70 01:9C60: A9 10     LDA #$10
C - - - - - 0x005C72 01:9C62: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x005C75 01:9C65: A9 30     LDA #$30
C - - - - - 0x005C77 01:9C67: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x005C7A 01:9C6A: 60        RTS



ofs_038_50_9C6B_05:
C - - J - - 0x005C7B 01:9C6B: BD F4 06  LDA ram_06F4_obj,X
C - - - - - 0x005C7E 01:9C6E: F0 0D     BEQ bra_9C7D
C - - - - - 0x005C80 01:9C70: DE F4 06  DEC ram_06F4_obj,X
C - - - - - 0x005C83 01:9C73: D0 08     BNE bra_9C7D
C - - - - - 0x005C85 01:9C75: 20 AE AA  JSR sub_0x006ABE
; triggers during area 3 boss fight
C - - - - - 0x005C88 01:9C78: A0 04     LDY #$04
C - - - - - 0x005C8A 01:9C7A: 20 27 F3  JSR sub_0x01F337
bra_9C7D:
C - - - - - 0x005C8D 01:9C7D: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x005C90 01:9C80: D0 C9     BNE bra_9C4B_RTS
C - - - - - 0x005C92 01:9C82: 20 A8 9C  JSR sub_9CA8
C - - - - - 0x005C95 01:9C85: BD 76 06  LDA ram_obj_hp,X
C - - - - - 0x005C98 01:9C88: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x005C9B 01:9C8B: A9 F1     LDA #con__hp_F1
C - - - - - 0x005C9D 01:9C8D: 9D 76 06  STA ram_obj_hp,X
C - - - - - 0x005CA0 01:9C90: A9 04     LDA #$04
C - - - - - 0x005CA2 01:9C92: 4C E0 A2  JMP loc_0x0062F0



ofs_038_50_9C95_06:
C - - J - - 0x005CA5 01:9C95: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x005CA8 01:9C98: D0 B1     BNE bra_9C4B_RTS
C - - - - - 0x005CAA 01:9C9A: A9 02     LDA #$02
C - - - - - 0x005CAC 01:9C9C: 4C 83 A2  JMP loc_0x006293_set_obj_state



sub_9C9F:
C - - - - - 0x005CAF 01:9C9F: A0 18     LDY #con_0x006C32_18
C - - - - - 0x005CB1 01:9CA1: 20 FD AB  JSR sub_0x006C0D
C - - - - - 0x005CB4 01:9CA4: A0 03     LDY #$03
C - - - - - 0x005CB6 01:9CA6: D0 0D     BNE bra_9CB5    ; jmp



sub_9CA8:
C - - - - - 0x005CB8 01:9CA8: A9 B6     LDA #$B6
C - - - - - 0x005CBA 01:9CAA: A0 03     LDY #$03
C - - - - - 0x005CBC 01:9CAC: D0 04     BNE bra_9CB2    ; jmp



sub_9CAE:
C - - - - - 0x005CBE 01:9CAE: A0 00     LDY #$00
C - - - - - 0x005CC0 01:9CB0: A9 B7     LDA #$B7
bra_9CB2:
C - - - - - 0x005CC2 01:9CB2: 9D 08 05  STA ram_anim_id_enemy,X
bra_9CB5:
C - - - - - 0x005CC5 01:9CB5: 98        TYA
C - - - - - 0x005CC6 01:9CB6: 9D 56 05  STA ram_attr_spr_enemy,X
C - - - - - 0x005CC9 01:9CB9: 60        RTS



sub_9CBA:
C - - - - - 0x005CCA 01:9CBA: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x005CCD 01:9CBD: 0A        ASL
C - - - - - 0x005CCE 01:9CBE: 0A        ASL
C - - - - - 0x005CCF 01:9CBF: A8        TAY
C - - - - - 0x005CD0 01:9CC0: BD 84 06  LDA ram_pos_Y_lo_enemy,X
C - - - - - 0x005CD3 01:9CC3: 18        CLC
C - - - - - 0x005CD4 01:9CC4: 79 E7 9C  ADC tbl_9CE7_position,Y
C - - - - - 0x005CD7 01:9CC7: 9D 84 06  STA ram_pos_Y_lo_enemy,X
C - - - - - 0x005CDA 01:9CCA: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x005CDD 01:9CCD: 79 E8 9C  ADC tbl_9CE7_position + $01,Y
C - - - - - 0x005CE0 01:9CD0: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x005CE3 01:9CD3: BD 92 06  LDA ram_pos_X_lo_enemy,X
C - - - - - 0x005CE6 01:9CD6: 18        CLC
C - - - - - 0x005CE7 01:9CD7: 79 E9 9C  ADC tbl_9CE7_position + $02,Y
C - - - - - 0x005CEA 01:9CDA: 9D 92 06  STA ram_pos_X_lo_enemy,X
C - - - - - 0x005CED 01:9CDD: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x005CF0 01:9CE0: 79 EA 9C  ADC tbl_9CE7_position + $03,Y
C - - - - - 0x005CF3 01:9CE3: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x005CF6 01:9CE6: 60        RTS



tbl_9CE7_position:
; 00 
- D 0 - - - 0x005CF7 01:9CE7: B5 00     .word $00B5 ; Y
- D 0 - - - 0x005CF9 01:9CE9: B5 00     .word $00B5 ; X
; 01 
- D 0 - - - 0x005CFB 01:9CEB: 00 00     .word $0000 ; Y
- D 0 - - - 0x005CFD 01:9CED: 00 01     .word $0100 ; X
; 02 
- D 0 - - - 0x005CFF 01:9CEF: 00 00     .word $0000 ; Y
- D 0 - - - 0x005D01 01:9CF1: 00 FF     .word $FF00 ; X
; 03 
- D 0 - - - 0x005D03 01:9CF3: B5 00     .word $00B5 ; Y
- D 0 - - - 0x005D05 01:9CF5: 4B FF     .word $FF4B ; X
; 04 
- D 0 - - - 0x005D07 01:9CF7: 00 01     .word $0100 ; Y
- D 0 - - - 0x005D09 01:9CF9: 00 00     .word $0000 ; X
; 05 
- D 0 - - - 0x005D0B 01:9CFB: 00 FF     .word $FF00 ; Y
- D 0 - - - 0x005D0D 01:9CFD: 00 00     .word $0000 ; X
; 06 
- D 0 - - - 0x005D0F 01:9CFF: 4B FF     .word $FF4B ; Y
- D 0 - - - 0x005D11 01:9D01: 4B FF     .word $FF4B ; X
; 07 
- D 0 - - - 0x005D13 01:9D03: 00 00     .word $0000 ; Y
- D 0 - - - 0x005D15 01:9D05: 00 FF     .word $FF00 ; X
; 08 
- D 0 - - - 0x005D17 01:9D07: 00 00     .word $0000 ; Y
- D 0 - - - 0x005D19 01:9D09: 00 01     .word $0100 ; X
; 09 
- D 0 - - - 0x005D1B 01:9D0B: 4B FF     .word $FF4B ; Y
- D 0 - - - 0x005D1D 01:9D0D: B5 00     .word $00B5 ; X
; 0A 
- D 0 - - - 0x005D1F 01:9D0F: 00 FF     .word $FF00 ; Y
- D 0 - - - 0x005D21 01:9D11: 00 00     .word $0000 ; X
; 0B 
- D 0 - - - 0x005D23 01:9D13: 00 01     .word $0100 ; Y
- D 0 - - - 0x005D25 01:9D15: 00 00     .word $0000 ; X



sub_9D17:
C - - - - - 0x005D27 01:9D17: BC 48 07  LDY ram_0748_obj,X
C - - - - - 0x005D2A 01:9D1A: B9 36 9D  LDA tbl_9D36,Y
C - - - - - 0x005D2D 01:9D1D: 85 00     STA ram_0000
C - - - - - 0x005D2F 01:9D1F: B9 42 9D  LDA tbl_9D42,Y
C - - - - - 0x005D32 01:9D22: BC 80 07  LDY ram_0780_obj,X
C - - - - - 0x005D35 01:9D25: 18        CLC
C - - - - - 0x005D36 01:9D26: 79 3C 05  ADC ram_pos_X_hi_enemy,Y
C - - - - - 0x005D39 01:9D29: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x005D3C 01:9D2C: A5 00     LDA ram_0000
C - - - - - 0x005D3E 01:9D2E: 18        CLC
C - - - - - 0x005D3F 01:9D2F: 79 22 05  ADC ram_pos_Y_hi_enemy,Y
C - - - - - 0x005D42 01:9D32: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x005D45 01:9D35: 60        RTS



tbl_9D36:
- D 0 - - - 0x005D46 01:9D36: DB        .byte $DB   ; 00 
- D 0 - - - 0x005D47 01:9D37: 00        .byte $00   ; 01 
- D 0 - - - 0x005D48 01:9D38: 00        .byte $00   ; 02 
- D 0 - - - 0x005D49 01:9D39: 00        .byte $00   ; 03 
- D 0 - - - 0x005D4A 01:9D3A: 25        .byte $25   ; 04 
- D 0 - - - 0x005D4B 01:9D3B: 35        .byte $35   ; 05 
- D 0 - - - 0x005D4C 01:9D3C: 25        .byte $25   ; 06 
- D 0 - - - 0x005D4D 01:9D3D: 00        .byte $00   ; 07 
- D 0 - - - 0x005D4E 01:9D3E: 00        .byte $00   ; 08 
- D 0 - - - 0x005D4F 01:9D3F: 00        .byte $00   ; 09 
- D 0 - - - 0x005D50 01:9D40: DB        .byte $DB   ; 0A 
- D 0 - - - 0x005D51 01:9D41: D3        .byte $D3   ; 0B 



tbl_9D42:
- D 0 - - - 0x005D52 01:9D42: 00        .byte $00   ; 00 
- D 0 - - - 0x005D53 01:9D43: 25        .byte $25   ; 01 
- D 0 - - - 0x005D54 01:9D44: 54        .byte $54   ; 02 
- D 0 - - - 0x005D55 01:9D45: 25        .byte $25   ; 03 
- D 0 - - - 0x005D56 01:9D46: 00        .byte $00   ; 04 
- D 0 - - - 0x005D57 01:9D47: 00        .byte $00   ; 05 
- D 0 - - - 0x005D58 01:9D48: 00        .byte $00   ; 06 
- D 0 - - - 0x005D59 01:9D49: DB        .byte $DB   ; 07 
- D 0 - - - 0x005D5A 01:9D4A: AC        .byte $AC   ; 08 
- D 0 - - - 0x005D5B 01:9D4B: DB        .byte $DB   ; 09 
- D 0 - - - 0x005D5C 01:9D4C: 00        .byte $00   ; 0A 
- D 0 - - - 0x005D5D 01:9D4D: 00        .byte $00   ; 0B 


; bzk garbage
- - - - - - 0x005D5E 01:9D4E: FF        .byte $FF, $FF   ; 
- - - - - - 0x005D60 01:9D50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005D70 01:9D60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005D80 01:9D70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005D90 01:9D80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005DA0 01:9D90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005DB0 01:9DA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005DC0 01:9DB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005DD0 01:9DC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005DE0 01:9DD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005DF0 01:9DE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005E00 01:9DF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005E10 01:9E00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005E20 01:9E10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005E30 01:9E20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005E40 01:9E30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005E50 01:9E40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005E60 01:9E50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005E70 01:9E60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005E80 01:9E70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005E90 01:9E80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005EA0 01:9E90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005EB0 01:9EA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005EC0 01:9EB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005ED0 01:9EC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005EE0 01:9ED0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005EF0 01:9EE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005F00 01:9EF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005F10 01:9F00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005F20 01:9F10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005F30 01:9F20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005F40 01:9F30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005F50 01:9F40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005F60 01:9F50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005F70 01:9F60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005F80 01:9F70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005F90 01:9F80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005FA0 01:9F90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005FB0 01:9FA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005FC0 01:9FB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005FD0 01:9FC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005FE0 01:9FD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x005FF0 01:9FE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x006000 01:9FF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



.out .sprintf("Free bytes in bank 32: %Xh [%d]", ($A000 - *), ($A000 - *))



