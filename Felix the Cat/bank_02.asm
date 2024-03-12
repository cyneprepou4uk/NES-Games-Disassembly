.segment "BANK_02"
.include "bank_ram.inc"
.include "bank_val.inc"
.org $8000 ; for listing file
; 0x004010-0x00800F



.export sub_0x004010_initialize_animation
sub_0x004010_initialize_animation:
; in
    ; X = object index
C D 0 - - - 0x004010 01:8000: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x004013 01:8003: 29 F3     AND #(con_0776_04 + con_0776_08) ^ $FF
C - - - - - 0x004015 01:8005: 9D 76 07  STA ram_0776_obj_flags,X
bra_8008_FF:
C - - - - - 0x004018 01:8008: A9 00     LDA #$00
C - - - - - 0x00401A 01:800A: 9D 60 07  STA ram_obj_anim_cnt,X
C - - - - - 0x00401D 01:800D: 20 AD 81  JSR sub_81AD_calculate_sprite_data_pointers
C - - - - - 0x004020 01:8010: 88        DEY
C - - - - - 0x004021 01:8011: B1 02     LDA (ram_0002),Y
C - - - - - 0x004023 01:8013: 9D 4A 07  STA ram_obj_anim_timer,X
C - - - - - 0x004026 01:8016: 60        RTS



.export loc_0x004027_update_animation_for_all_objects
loc_0x004027_update_animation_for_all_objects:
C D 0 - - - 0x004027 01:8017: A2 00     LDX #$00
bra_8019_loop:
C - - - - - 0x004029 01:8019: 20 22 80  JSR sub_8022
C - - - - - 0x00402C 01:801C: E8        INX
C - - - - - 0x00402D 01:801D: E0 16     CPX #$16
C - - - - - 0x00402F 01:801F: 90 F8     BCC bra_8019_loop
C - - - - - 0x004031 01:8021: 60        RTS



sub_8022:
C - - - - - 0x004032 01:8022: BD 16 06  LDA ram_0616_obj,X
C - - - - - 0x004035 01:8025: F0 3A     BEQ bra_8061_RTS
C - - - - - 0x004037 01:8027: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x00403A 01:802A: 29 08     AND #con_0776_08
C - - - - - 0x00403C 01:802C: D0 33     BNE bra_8061_RTS
C - - - - - 0x00403E 01:802E: BD 4A 07  LDA ram_obj_anim_timer,X
C - - - - - 0x004041 01:8031: C9 FF     CMP #$FF
C - - - - - 0x004043 01:8033: F0 D3     BEQ bra_8008_FF
C - - - - - 0x004045 01:8035: DE 4A 07  DEC ram_obj_anim_timer,X
C - - - - - 0x004048 01:8038: D0 27     BNE bra_8061_RTS
C - - - - - 0x00404A 01:803A: FE 60 07  INC ram_obj_anim_cnt,X
C - - - - - 0x00404D 01:803D: 20 AD 81  JSR sub_81AD_calculate_sprite_data_pointers
C - - - - - 0x004050 01:8040: 88        DEY
loc_8041_loop:
C D 0 - - - 0x004051 01:8041: B1 02     LDA (ram_0002),Y
; bzk optimize, in case it's 00, the following byte is not needed,
; delete this last byte from everywhere, for example 0x00446D
C - - - - - 0x004053 01:8043: F0 06     BEQ bra_804B_00
C - - - - - 0x004055 01:8045: 10 0E     BPL bra_8055_01_7F
; 80-FF
; bzk optimize, only FF is left, replace with BMI or JMP 0x004069
C - - - - - 0x004057 01:8047: C9 FF     CMP #$FF
C - - - - - 0x004059 01:8049: F0 0E     BEQ bra_8059_FF
bra_804B_00:
; bzk optimize, no need for AND 3F
C - - - - - 0x00405B 01:804B: 29 3F     AND #$3F
C - - - - - 0x00405D 01:804D: 9D 60 07  STA ram_obj_anim_cnt,X
; bzk optimize, replace with LDY 00
C - - - - - 0x004060 01:8050: 0A        ASL
C - - - - - 0x004061 01:8051: A8        TAY
C - - - - - 0x004062 01:8052: 4C 41 80  JMP loc_8041_loop
bra_8055_01_7F:
C - - - - - 0x004065 01:8055: 9D 4A 07  STA ram_obj_anim_timer,X
C - - - - - 0x004068 01:8058: 60        RTS
bra_8059_FF:
C - - - - - 0x004069 01:8059: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x00406C 01:805C: 09 08     ORA #con_0776_08
C - - - - - 0x00406E 01:805E: 9D 76 07  STA ram_0776_obj_flags,X
bra_8061_RTS:
C - - - - - 0x004071 01:8061: 60        RTS



.export loc_0x004072
loc_0x004072:
; in
    ; X = object index
C D 0 - - - 0x004072 01:8062: 20 AD 81  JSR sub_81AD_calculate_sprite_data_pointers
C - - - - - 0x004075 01:8065: BD 16 06  LDA ram_0616_obj,X
C - - - - - 0x004078 01:8068: F0 58     BEQ bra_80C2_RTS
C - - - - - 0x00407A 01:806A: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x00407D 01:806D: 29 04     AND #con_0776_04
C - - - - - 0x00407F 01:806F: D0 51     BNE bra_80C2_RTS
C - - - - - 0x004081 01:8071: 20 60 81  JSR sub_8160    ; possible PLA + PLA
C - - - - - 0x004084 01:8074: A4 00     LDY ram_0000
C - - - - - 0x004086 01:8076: C6 03     DEC ram_0003
C - - - - - 0x004088 01:8078: B1 02     LDA (ram_0002),Y
C - - - - - 0x00408A 01:807A: F0 46     BEQ bra_80C2_RTS
C - - - - - 0x00408C 01:807C: 30 45     BMI bra_80C3_80_FF
; 01-7F
C - - - - - 0x00408E 01:807E: 85 00     STA ram_0000    ; counter
C - - - - - 0x004090 01:8080: C8        INY
C - - - - - 0x004091 01:8081: 8A        TXA
C - - - - - 0x004092 01:8082: 48        PHA
C - - - - - 0x004093 01:8083: A6 B4     LDX ram_index_oam
bra_8085_loop:
C - - - - - 0x004095 01:8085: 20 2A 81  JSR sub_812A_spr_X
C - - - - - 0x004098 01:8088: D0 26     BNE bra_80B0_not_visible_X
C - - - - - 0x00409A 01:808A: C8        INY
C - - - - - 0x00409B 01:808B: 20 07 81  JSR sub_8107_spr_Y
C - - - - - 0x00409E 01:808E: D0 21     BNE bra_80B1_not_visible_Y
C - - - - - 0x0040A0 01:8090: C8        INY
C - - - - - 0x0040A1 01:8091: B1 02     LDA (ram_0002),Y
C - - - - - 0x0040A3 01:8093: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x0040A6 01:8096: C8        INY
C - - - - - 0x0040A7 01:8097: A5 0D     LDA ram_000D
; bzk optimize, 20 is never set, should be AND C3
C - - - - - 0x0040A9 01:8099: 29 E3     AND #con_0776_HV_flip + con_0776_spr_A + $03 + $20
C - - - - - 0x0040AB 01:809B: 51 02     EOR (ram_0002),Y
C - - - - - 0x0040AD 01:809D: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x0040B0 01:80A0: C8        INY
C - - - - - 0x0040B1 01:80A1: E8        INX
C - - - - - 0x0040B2 01:80A2: E8        INX
C - - - - - 0x0040B3 01:80A3: E8        INX
C - - - - - 0x0040B4 01:80A4: E8        INX
C - - - - - 0x0040B5 01:80A5: F0 16     BEQ bra_80BD_overflow
C - - - - - 0x0040B7 01:80A7: C6 00     DEC ram_0000    ; counter
C - - - - - 0x0040B9 01:80A9: D0 DA     BNE bra_8085_loop
C - - - - - 0x0040BB 01:80AB: 86 B4     STX ram_index_oam
C - - - - - 0x0040BD 01:80AD: 68        PLA
C - - - - - 0x0040BE 01:80AE: AA        TAX
C - - - - - 0x0040BF 01:80AF: 60        RTS
bra_80B0_not_visible_X:
C - - - - - 0x0040C0 01:80B0: C8        INY
bra_80B1_not_visible_Y:
C - - - - - 0x0040C1 01:80B1: C8        INY
C - - - - - 0x0040C2 01:80B2: C8        INY
C - - - - - 0x0040C3 01:80B3: C8        INY
C - - - - - 0x0040C4 01:80B4: C6 00     DEC ram_0000    ; counter
C - - - - - 0x0040C6 01:80B6: D0 CD     BNE bra_8085_loop
C - - - - - 0x0040C8 01:80B8: 86 B4     STX ram_index_oam
C - - - - - 0x0040CA 01:80BA: 68        PLA
C - - - - - 0x0040CB 01:80BB: AA        TAX
C - - - - - 0x0040CC 01:80BC: 60        RTS
bra_80BD_overflow:
C - - - - - 0x0040CD 01:80BD: E6 B5     INC ram_full_oam_flag
C - - - - - 0x0040CF 01:80BF: 68        PLA
C - - - - - 0x0040D0 01:80C0: AA        TAX
C - - - - - 0x0040D1 01:80C1: 60        RTS
bra_80C2_RTS:
C - - - - - 0x0040D2 01:80C2: 60        RTS
bra_80C3_80_FF:
C - - - - - 0x0040D3 01:80C3: 29 7F     AND #$7F
C - - - - - 0x0040D5 01:80C5: 85 00     STA ram_0000    ; counter
C - - - - - 0x0040D7 01:80C7: C8        INY
C - - - - - 0x0040D8 01:80C8: A5 0D     LDA ram_000D
; bzk optimize, 20 is never set, should be AND C3
C - - - - - 0x0040DA 01:80CA: 29 E3     AND #con_0776_HV_flip + con_0776_spr_A + $03 + $20
C - - - - - 0x0040DC 01:80CC: 51 02     EOR (ram_0002),Y
C - - - - - 0x0040DE 01:80CE: 85 0E     STA ram_000E
C - - - - - 0x0040E0 01:80D0: C8        INY
C - - - - - 0x0040E1 01:80D1: 8A        TXA
C - - - - - 0x0040E2 01:80D2: 48        PHA
C - - - - - 0x0040E3 01:80D3: A6 B4     LDX ram_index_oam
bra_80D5_loop:
C - - - - - 0x0040E5 01:80D5: 20 2A 81  JSR sub_812A_spr_X
C - - - - - 0x0040E8 01:80D8: D0 21     BNE bra_80FB_not_visible_X
C - - - - - 0x0040EA 01:80DA: C8        INY
C - - - - - 0x0040EB 01:80DB: 20 07 81  JSR sub_8107_spr_Y
C - - - - - 0x0040EE 01:80DE: D0 1C     BNE bra_80FC_not_visible_Y
C - - - - - 0x0040F0 01:80E0: C8        INY
C - - - - - 0x0040F1 01:80E1: B1 02     LDA (ram_0002),Y
C - - - - - 0x0040F3 01:80E3: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x0040F6 01:80E6: C8        INY
C - - - - - 0x0040F7 01:80E7: A5 0E     LDA ram_000E
C - - - - - 0x0040F9 01:80E9: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x0040FC 01:80EC: E8        INX
C - - - - - 0x0040FD 01:80ED: E8        INX
C - - - - - 0x0040FE 01:80EE: E8        INX
C - - - - - 0x0040FF 01:80EF: E8        INX
C - - - - - 0x004100 01:80F0: F0 CB     BEQ bra_80BD_overflow
C - - - - - 0x004102 01:80F2: C6 00     DEC ram_0000    ; counter
C - - - - - 0x004104 01:80F4: D0 DF     BNE bra_80D5_loop
C - - - - - 0x004106 01:80F6: 86 B4     STX ram_index_oam
C - - - - - 0x004108 01:80F8: 68        PLA
C - - - - - 0x004109 01:80F9: AA        TAX
C - - - - - 0x00410A 01:80FA: 60        RTS
bra_80FB_not_visible_X:
C - - - - - 0x00410B 01:80FB: C8        INY
bra_80FC_not_visible_Y:
C - - - - - 0x00410C 01:80FC: C8        INY
C - - - - - 0x00410D 01:80FD: C8        INY
C - - - - - 0x00410E 01:80FE: C6 00     DEC ram_0000    ; counter
C - - - - - 0x004110 01:8100: D0 D3     BNE bra_80D5_loop
C - - - - - 0x004112 01:8102: 86 B4     STX ram_index_oam
C - - - - - 0x004114 01:8104: 68        PLA
C - - - - - 0x004115 01:8105: AA        TAX
C - - - - - 0x004116 01:8106: 60        RTS



sub_8107_spr_Y:
; in
    ; ram_000D = ram_0776_obj_flags
C - - - - - 0x004117 01:8107: A5 0D     LDA ram_000D
C - - - - - 0x004119 01:8109: 0A        ASL
C - - - - - 0x00411A 01:810A: B1 02     LDA (ram_0002),Y
C - - - - - 0x00411C 01:810C: 90 04     BCC bra_8112_not_flipped_V
; if flipped vertically
; C = 1
C - - - - - 0x00411E 01:810E: 69 0E     ADC #$0E
C - - - - - 0x004120 01:8110: 49 FF     EOR #$FF
bra_8112_not_flipped_V:
C - - - - - 0x004122 01:8112: 30 0B     BMI bra_811F
C - - - - - 0x004124 01:8114: 18        CLC
C - - - - - 0x004125 01:8115: 65 06     ADC ram_0006
C - - - - - 0x004127 01:8117: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x00412A 01:811A: A5 07     LDA ram_0007
C - - - - - 0x00412C 01:811C: 69 00     ADC #$00
C - - - - - 0x00412E 01:811E: 60        RTS
bra_811F:
C - - - - - 0x00412F 01:811F: 18        CLC
C - - - - - 0x004130 01:8120: 65 06     ADC ram_0006
C - - - - - 0x004132 01:8122: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x004135 01:8125: A5 07     LDA ram_0007
C - - - - - 0x004137 01:8127: 69 FF     ADC #$FF
C - - - - - 0x004139 01:8129: 60        RTS



sub_812A_spr_X:
; in
    ; ram_000D = ram_0776_obj_flags
C - - - - - 0x00413A 01:812A: A5 0D     LDA ram_000D
C - - - - - 0x00413C 01:812C: 0A        ASL
C - - - - - 0x00413D 01:812D: 0A        ASL
C - - - - - 0x00413E 01:812E: B1 02     LDA (ram_0002),Y
C - - - - - 0x004140 01:8130: 90 04     BCC bra_8136_not_flipped_H
; if flipped horisontally
; C = 1
C - - - - - 0x004142 01:8132: 69 06     ADC #$06
C - - - - - 0x004144 01:8134: 49 FF     EOR #$FF
bra_8136_not_flipped_H:
C - - - - - 0x004146 01:8136: 30 0B     BMI bra_8143
C - - - - - 0x004148 01:8138: 18        CLC
C - - - - - 0x004149 01:8139: 65 04     ADC ram_0004
C - - - - - 0x00414B 01:813B: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x00414E 01:813E: A5 05     LDA ram_0005
C - - - - - 0x004150 01:8140: 69 00     ADC #$00
C - - - - - 0x004152 01:8142: 60        RTS
bra_8143:
C - - - - - 0x004153 01:8143: 18        CLC
C - - - - - 0x004154 01:8144: 65 04     ADC ram_0004
C - - - - - 0x004156 01:8146: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x004159 01:8149: A5 05     LDA ram_0005
C - - - - - 0x00415B 01:814B: 69 FF     ADC #$FF
C - - - - - 0x00415D 01:814D: 60        RTS



.export loc_0x00415E_hide_unused_sprites
loc_0x00415E_hide_unused_sprites:
C D 0 - - - 0x00415E 01:814E: A5 B5     LDA ram_full_oam_flag
C - - - - - 0x004160 01:8150: D0 0D     BNE bra_815F_RTS
C - - - - - 0x004162 01:8152: A9 FF     LDA #$FF
C - - - - - 0x004164 01:8154: A4 B4     LDY ram_index_oam
bra_8156_loop:
C - - - - - 0x004166 01:8156: 99 00 02  STA ram_spr_Y,Y
C - - - - - 0x004169 01:8159: C8        INY
C - - - - - 0x00416A 01:815A: C8        INY
C - - - - - 0x00416B 01:815B: C8        INY
C - - - - - 0x00416C 01:815C: C8        INY
C - - - - - 0x00416D 01:815D: D0 F7     BNE bra_8156_loop
bra_815F_RTS:
C - - - - - 0x00416F 01:815F: 60        RTS



sub_8160:
; in
    ; X = object index
C - - - - - 0x004170 01:8160: BD 76 07  LDA ram_0776_obj_flags,X
C - - - - - 0x004173 01:8163: 85 0D     STA ram_000D
C - - - - - 0x004175 01:8165: BD 42 06  LDA ram_obj_pos_X_lo,X
C - - - - - 0x004178 01:8168: 38        SEC
C - - - - - 0x004179 01:8169: E5 B9     SBC ram_cam_pos_X_lo
C - - - - - 0x00417B 01:816B: 85 04     STA ram_0004
C - - - - - 0x00417D 01:816D: BD 58 06  LDA ram_obj_pos_X_hi,X
C - - - - - 0x004180 01:8170: E5 B7     SBC ram_cam_pos_X_hi
C - - - - - 0x004182 01:8172: 85 05     STA ram_0005
C - - - - - 0x004184 01:8174: D0 2A     BNE bra_81A0
bra_8176:
C - - - - - 0x004186 01:8176: A5 04     LDA ram_0004
C - - - - - 0x004188 01:8178: 18        CLC
C - - - - - 0x004189 01:8179: 69 08     ADC #< $0008
C - - - - - 0x00418B 01:817B: 85 04     STA ram_0004
C - - - - - 0x00418D 01:817D: A5 05     LDA ram_0005
C - - - - - 0x00418F 01:817F: 69 00     ADC #> $0008
C - - - - - 0x004191 01:8181: 85 05     STA ram_0005
C - - - - - 0x004193 01:8183: BD 84 06  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x004196 01:8186: 38        SEC
C - - - - - 0x004197 01:8187: E5 BA     SBC ram_cam_pos_Y_lo
C - - - - - 0x004199 01:8189: 85 06     STA ram_0006
C - - - - - 0x00419B 01:818B: BD 9A 06  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x00419E 01:818E: E5 B8     SBC ram_cam_pos_Y_hi
C - - - - - 0x0041A0 01:8190: 85 07     STA ram_0007
C - - - - - 0x0041A2 01:8192: A5 06     LDA ram_0006
C - - - - - 0x0041A4 01:8194: 18        CLC
C - - - - - 0x0041A5 01:8195: 69 20     ADC #< $0020
C - - - - - 0x0041A7 01:8197: A5 07     LDA ram_0007
C - - - - - 0x0041A9 01:8199: 69 00     ADC #> $0020
C - - - - - 0x0041AB 01:819B: F0 02     BEQ bra_819F_RTS
C - - - - - 0x0041AD 01:819D: 68        PLA
C - - - - - 0x0041AE 01:819E: 68        PLA
bra_819F_RTS:
C - - - - - 0x0041AF 01:819F: 60        RTS
bra_81A0:
C - - - - - 0x0041B0 01:81A0: A5 04     LDA ram_0004
C - - - - - 0x0041B2 01:81A2: C9 20     CMP #$20
C - - - - - 0x0041B4 01:81A4: 90 D0     BCC bra_8176
C - - - - - 0x0041B6 01:81A6: C9 E0     CMP #$E0
C - - - - - 0x0041B8 01:81A8: B0 CC     BCS bra_8176
; 20-DF
C - - - - - 0x0041BA 01:81AA: 68        PLA
C - - - - - 0x0041BB 01:81AB: 68        PLA
C - - - - - 0x0041BC 01:81AC: 60        RTS



sub_81AD_calculate_sprite_data_pointers:
; in
    ; X = object index
; out
    ; ram_0000 = relative index
C - - - - - 0x0041BD 01:81AD: BD 00 06  LDA ram_0600_obj_id,X
C - - - - - 0x0041C0 01:81B0: 0A        ASL
C - - - - - 0x0041C1 01:81B1: A8        TAY
C - - - - - 0x0041C2 01:81B2: B9 D8 81  LDA tbl_81D8,Y
C - - - - - 0x0041C5 01:81B5: 85 00     STA ram_0000
C - - - - - 0x0041C7 01:81B7: C8        INY
C - - - - - 0x0041C8 01:81B8: B9 D8 81  LDA tbl_81D8,Y
C - - - - - 0x0041CB 01:81BB: 85 01     STA ram_0001
C - - - - - 0x0041CD 01:81BD: BD 34 07  LDA ram_0734_obj,X
; bzk bug? if A = 00, then Y = FE
; this is obviously incorrect index, although data
; from ram_0000 might not be read later in this case
C - - - - - 0x0041D0 01:81C0: 0A        ASL
C - - - - - 0x0041D1 01:81C1: A8        TAY
C - - - - - 0x0041D2 01:81C2: 88        DEY
C - - - - - 0x0041D3 01:81C3: 88        DEY
C - - - - - 0x0041D4 01:81C4: B1 00     LDA (ram_0000),Y
C - - - - - 0x0041D6 01:81C6: 85 02     STA ram_0002
C - - - - - 0x0041D8 01:81C8: C8        INY
C - - - - - 0x0041D9 01:81C9: B1 00     LDA (ram_0000),Y
C - - - - - 0x0041DB 01:81CB: 85 03     STA ram_0003
C - - - - - 0x0041DD 01:81CD: BD 60 07  LDA ram_obj_anim_cnt,X
C - - - - - 0x0041E0 01:81D0: 0A        ASL
C - - - - - 0x0041E1 01:81D1: A8        TAY
C - - - - - 0x0041E2 01:81D2: C8        INY
C - - - - - 0x0041E3 01:81D3: B1 02     LDA (ram_0002),Y
C - - - - - 0x0041E5 01:81D5: 85 00     STA ram_0000
; bzk optimize, write DEY here, delete it from 0x004020 and 0x004050
; it will save 1 byte of memory, but will add 2 cycles here 0x004075
; so pick your poison
C - - - - - 0x0041E7 01:81D7: 60        RTS



tbl_81D8:
- D 0 - - - 0x0041E8 01:81D8: 38 82     .word _off006_8238_00
- D 0 - - - 0x0041EA 01:81DA: 00 83     .word _off006_8300_01
- D 0 - - - 0x0041EC 01:81DC: 34 83     .word _off006_8334_02
- D 0 - - - 0x0041EE 01:81DE: 38 82     .word _off006_8238_03
- D 0 - - - 0x0041F0 01:81E0: 1E 83     .word _off006_831E_04
- - - - - - 0x0041F2 01:81E2: 38 82     .word _off006_8238_05
- - - - - - 0x0041F4 01:81E4: 38 82     .word _off006_8238_06
- - - - - - 0x0041F6 01:81E6: 38 82     .word _off006_8238_07
- D 0 - - - 0x0041F8 01:81E8: 68 83     .word _off006_8368_08
- - - - - - 0x0041FA 01:81EA: 38 82     .word _off006_8238_09
- - - - - - 0x0041FC 01:81EC: 38 82     .word _off006_8238_0A
- D 0 - - - 0x0041FE 01:81EE: 5E 83     .word _off006_835E_0B
- D 0 - - - 0x004200 01:81F0: 43 A1     .word _off006_A143_0C
- D 0 - - - 0x004202 01:81F2: 46 83     .word _off006_8346_0D
- D 0 - - - 0x004204 01:81F4: 50 83     .word _off006_8350_0E
- D 0 - - - 0x004206 01:81F6: 5A 83     .word _off006_835A_0F
- D 0 - - - 0x004208 01:81F8: 62 83     .word _off006_8362_10
- D 0 - - - 0x00420A 01:81FA: 86 83     .word _off006_8386_11
- D 0 - - - 0x00420C 01:81FC: 8A 83     .word _off006_838A_12
- D 0 - - - 0x00420E 01:81FE: 8C 83     .word _off006_838C_13
- D 0 - - - 0x004210 01:8200: 8E 83     .word _off006_838E_14
- D 0 - - - 0x004212 01:8202: 8E 83     .word _off006_838E_15
- D 0 - - - 0x004214 01:8204: 92 83     .word _off006_8392_16
- - - - - - 0x004216 01:8206: 92 83     .word _off006_8392_17
- D 0 - - - 0x004218 01:8208: 98 83     .word _off006_8398_18
- D 0 - - - 0x00421A 01:820A: 9A 83     .word _off006_839A_19
- D 0 - - - 0x00421C 01:820C: 9E 83     .word _off006_839E_1A
- D 0 - - - 0x00421E 01:820E: A2 83     .word _off006_83A2_1B
- D 0 - - - 0x004220 01:8210: A8 83     .word _off006_83A8_1C
- D 0 - - - 0x004222 01:8212: AA 83     .word _off006_83AA_1D
- D 0 - - - 0x004224 01:8214: AC 83     .word _off006_83AC_1E
- D 0 - - - 0x004226 01:8216: B2 83     .word _off006_83B2_1F
- D 0 - - - 0x004228 01:8218: A4 83     .word _off006_83A4_20
- D 0 - - - 0x00422A 01:821A: B8 83     .word _off006_83B8_21
- D 0 - - - 0x00422C 01:821C: BA 83     .word _off006_83BA_22
- - - - - - 0x00422E 01:821E: 86 83     .word _off006_8386_23
- D 0 - - - 0x004230 01:8220: FC 83     .word _off006_83FC_24
- D 0 - - - 0x004232 01:8222: 00 84     .word _off006_8400_25
- D 0 - - - 0x004234 01:8224: FA 83     .word _off006_83FA_26
- D 0 - - - 0x004236 01:8226: D2 83     .word _off006_83D2_27
- D 0 - - - 0x004238 01:8228: 66 83     .word _off006_8366_28
- D 0 - - - 0x00423A 01:822A: 66 83     .word _off006_8366_29
- D 0 - - - 0x00423C 01:822C: C2 83     .word _off006_83C2_2A
- - - - - - 0x00423E 01:822E: C2 83     .word _off006_83C2_2B
- D 0 - - - 0x004240 01:8230: C6 83     .word _off006_83C6_2C
- D 0 - - - 0x004242 01:8232: C6 83     .word _off006_83C6_2D
- D 0 - - - 0x004244 01:8234: CC 83     .word _off006_83CC_2E
- - - - - - 0x004246 01:8236: CC 83     .word _off006_83CC_2F



_off006_8238_00:
_off006_8238_03:
_off006_8238_05:
_off006_8238_06:
_off006_8238_07:
_off006_8238_09:
_off006_8238_0A:
- D 0 - I - 0x004248 01:8238: 0B 84     .word _off007_00_840B_01
- - - - - - 0x00424A 01:823A: 52 84     .word _off007_00_8452_02
- - - - - - 0x00424C 01:823C: 16 85     .word _off007_00_8516_03
- - - - - - 0x00424E 01:823E: 0B 84     .word _off007_00_840B_04
- D 0 - I - 0x004250 01:8240: 9A 84     .word _off007_00_849A_05
- - - - - - 0x004252 01:8242: 0B 84     .word _off007_00_840B_06
- - - - - - 0x004254 01:8244: 36 85     .word _off007_00_8536_07
- D 0 - I - 0x004256 01:8246: DE 84     .word _off007_00_84DE_08
- D 0 - I - 0x004258 01:8248: 52 84     .word _off007_00_8452_09
- D 0 - I - 0x00425A 01:824A: 16 85     .word _off007_00_8516_0A
- - - - - - 0x00425C 01:824C: 0B 84     .word _off007_00_840B_0B
- D 0 - I - 0x00425E 01:824E: 9A 84     .word _off007_00_849A_0C
- - - - - - 0x004260 01:8250: 0B 84     .word _off007_00_840B_0D
- D 0 - I - 0x004262 01:8252: 36 85     .word _off007_00_8536_0E
- D 0 - I - 0x004264 01:8254: 6E 85     .word _off007_00_856E_0F
- D 0 - I - 0x004266 01:8256: 52 84     .word _off007_00_8452_10
- D 0 - I - 0x004268 01:8258: BF 85     .word _off007_00_85BF_11
- - - - - - 0x00426A 01:825A: 0B 84     .word _off007_00_840B_12
- D 0 - I - 0x00426C 01:825C: 9A 84     .word _off007_00_849A_13
- D 0 - I - 0x00426E 01:825E: F9 85     .word _off007_00_85F9_14
- D 0 - I - 0x004270 01:8260: 21 86     .word _off007_00_8621_15
- D 0 - I - 0x004272 01:8262: 8A 86     .word _off007_00_868A_16
- D 0 - I - 0x004274 01:8264: DE 86     .word _off007_00_86DE_17
- D 0 - I - 0x004276 01:8266: 57 87     .word _off007_00_8757_18
- - - - - - 0x004278 01:8268: 0B 84     .word _off007_00_840B_19
- D 0 - I - 0x00427A 01:826A: 9A 84     .word _off007_00_849A_1A
- D 0 - I - 0x00427C 01:826C: 0C 88     .word _off007_00_880C_1B
- - - - - - 0x00427E 01:826E: A3 87     .word _off007_00_87A3_1C
- D 0 - I - 0x004280 01:8270: 66 88     .word _off007_00_8866_1D
- D 0 - I - 0x004282 01:8272: BE 88     .word _off007_00_88BE_1E
- D 0 - I - 0x004284 01:8274: 16 89     .word _off007_00_8916_1F
- - - - - - 0x004286 01:8276: 0B 84     .word _off007_00_840B_20
- D 0 - I - 0x004288 01:8278: 9A 84     .word _off007_00_849A_21
- D 0 - I - 0x00428A 01:827A: 68 8A     .word _off007_00_8A68_22
- - - - - - 0x00428C 01:827C: 5E 89     .word _off007_00_895E_23
- D 0 - I - 0x00428E 01:827E: 3A 8B     .word _off007_00_8B3A_24
- D 0 - I - 0x004290 01:8280: 3A 8B     .word _off007_00_8B3A_25
- D 0 - I - 0x004292 01:8282: D2 8A     .word _off007_00_8AD2_26
- D 0 - I - 0x004294 01:8284: 3A 8B     .word _off007_00_8B3A_27
- - - - - - 0x004296 01:8286: 9A 84     .word _off007_00_849A_28
- D 0 - I - 0x004298 01:8288: DB 8B     .word _off007_00_8BDB_29
- - - - - - 0x00429A 01:828A: 3A 8B     .word _off007_00_8B3A_2A
- D 0 - I - 0x00429C 01:828C: 2E 8C     .word _off007_00_8C2E_2B
- D 0 - I - 0x00429E 01:828E: 7B 8C     .word _off007_00_8C7B_2C
- D 0 - I - 0x0042A0 01:8290: E1 8C     .word _off007_00_8CE1_2D
- D 0 - I - 0x0042A2 01:8292: 41 8D     .word _off007_00_8D41_2E
- - - - - - 0x0042A4 01:8294: 9A 84     .word _off007_00_849A_2F
- - - - - - 0x0042A6 01:8296: 92 8D     .word _off007_00_8D92_30
- - - - - - 0x0042A8 01:8298: 41 8D     .word _off007_00_8D41_31
- D 0 - I - 0x0042AA 01:829A: 57 8E     .word _off007_00_8E57_32
- D 0 - I - 0x0042AC 01:829C: 5D 8F     .word _off007_00_8F5D_33
- D 0 - I - 0x0042AE 01:829E: E8 8E     .word _off007_00_8EE8_34
- D 0 - I - 0x0042B0 01:82A0: 5D 8F     .word _off007_00_8F5D_35
- - - - - - 0x0042B2 01:82A2: 9A 84     .word _off007_00_849A_36
- D 0 - I - 0x0042B4 01:82A4: D2 8F     .word _off007_00_8FD2_37
- - - - - - 0x0042B6 01:82A6: 5D 8F     .word _off007_00_8F5D_38
- - - - - - 0x0042B8 01:82A8: 5E 90     .word _off007_00_905E_39
- D 0 - I - 0x0042BA 01:82AA: 5E 90     .word _off007_00_905E_3A
- D 0 - I - 0x0042BC 01:82AC: 5E 90     .word _off007_00_905E_3B
- - - - - - 0x0042BE 01:82AE: 5E 90     .word _off007_00_905E_3C
- - - - - - 0x0042C0 01:82B0: 9A 84     .word _off007_00_849A_3D
- D 0 - I - 0x0042C2 01:82B2: EC 90     .word _off007_00_90EC_3E
- - - - - - 0x0042C4 01:82B4: 5E 90     .word _off007_00_905E_3F
- D 0 - I - 0x0042C6 01:82B6: 51 91     .word _off007_00_9151_40
- D 0 - I - 0x0042C8 01:82B8: B6 91     .word _off007_00_91B6_41
- D 0 - I - 0x0042CA 01:82BA: 48 92     .word _off007_00_9248_42
- - - - - - 0x0042CC 01:82BC: 48 92     .word _off007_00_9248_43
- - - - - - 0x0042CE 01:82BE: 9A 84     .word _off007_00_849A_44
- - - - - - 0x0042D0 01:82C0: A1 92     .word _off007_00_92A1_45
- - - - - - 0x0042D2 01:82C2: C0 92     .word _off007_00_92C0_46
- D 0 - I - 0x0042D4 01:82C4: 45 93     .word _off007_00_9345_47
- D 0 - I - 0x0042D6 01:82C6: CE 93     .word _off007_00_93CE_48
- D 0 - I - 0x0042D8 01:82C8: 57 94     .word _off007_00_9457_49
- - - - - - 0x0042DA 01:82CA: 45 93     .word _off007_00_9345_4A
- - - - - - 0x0042DC 01:82CC: 9A 84     .word _off007_00_849A_4B
- D 0 - I - 0x0042DE 01:82CE: B3 94     .word _off007_00_94B3_4C
- - - - - - 0x0042E0 01:82D0: E6 94     .word _off007_00_94E6_4D
- D 0 - I - 0x0042E2 01:82D2: 65 95     .word _off007_00_9565_4E
- D 0 - I - 0x0042E4 01:82D4: EA 95     .word _off007_00_95EA_4F
- D 0 - I - 0x0042E6 01:82D6: 6F 96     .word _off007_00_966F_50
- - - - - - 0x0042E8 01:82D8: 6F 96     .word _off007_00_966F_51
- - - - - - 0x0042EA 01:82DA: 9A 84     .word _off007_00_849A_52
- D 0 - I - 0x0042EC 01:82DC: F4 96     .word _off007_00_96F4_53
- - - - - - 0x0042EE 01:82DE: 28 97     .word _off007_00_9728_54
- D 0 - I - 0x0042F0 01:82E0: BE 97     .word _off007_00_97BE_55
- D 0 - I - 0x0042F2 01:82E2: 2F 98     .word _off007_00_982F_56
- D 0 - I - 0x0042F4 01:82E4: AA 98     .word _off007_00_98AA_57
- - - - - - 0x0042F6 01:82E6: BE 97     .word _off007_00_97BE_58
- - - - - - 0x0042F8 01:82E8: 9A 84     .word _off007_00_849A_59
- D 0 - I - 0x0042FA 01:82EA: 39 98     .word _off007_00_9839_5A
- - - - - - 0x0042FC 01:82EC: BE 97     .word _off007_00_97BE_5B
- D 0 - I - 0x0042FE 01:82EE: 50 99     .word _off007_00_9950_5C
- D 0 - I - 0x004300 01:82F0: 50 99     .word _off007_00_9950_5D
- D 0 - I - 0x004302 01:82F2: 06 9A     .word _off007_00_9A06_5E
- - - - - - 0x004304 01:82F4: 50 99     .word _off007_00_9950_5F
- - - - - - 0x004306 01:82F6: 9A 84     .word _off007_00_849A_60
- D 0 - I - 0x004308 01:82F8: A0 9A     .word _off007_00_9AA0_61
- - - - - - 0x00430A 01:82FA: 50 99     .word _off007_00_9950_62
- D 0 - I - 0x00430C 01:82FC: 5E 89     .word _off007_00_895E_63
- D 0 - I - 0x00430E 01:82FE: B2 89     .word _off007_00_89B2_64



_off006_8300_01:
- D 0 - I - 0x004310 01:8300: E8 9A     .word _off007_01_9AE8_01
- D 0 - I - 0x004312 01:8302: 33 9B     .word _off007_01_9B33_02
- D 0 - I - 0x004314 01:8304: A6 9B     .word _off007_01_9BA6_03
- D 0 - I - 0x004316 01:8306: C9 9B     .word _off007_01_9BC9_04
- D 0 - I - 0x004318 01:8308: D5 9B     .word _off007_01_9BD5_05
- D 0 - I - 0x00431A 01:830A: 01 9C     .word _off007_01_9C01_06
- D 0 - I - 0x00431C 01:830C: 2F 9C     .word _off007_01_9C2F_07
- D 0 - I - 0x00431E 01:830E: AF 9C     .word _off007_01_9CAF_08
- D 0 - I - 0x004320 01:8310: 27 9D     .word _off007_01_9D27_09
- D 0 - I - 0x004322 01:8312: 7D 9D     .word _off007_01_9D7D_0A
- D 0 - I - 0x004324 01:8314: DD 9D     .word _off007_01_9DDD_0B
- D 0 - I - 0x004326 01:8316: 0F 9E     .word _off007_01_9E0F_0C
- D 0 - I - 0x004328 01:8318: 65 9E     .word _off007_01_9E65_0D
- D 0 - I - 0x00432A 01:831A: 2F 9F     .word _off007_01_9F2F_0E
- D 0 - I - 0x00432C 01:831C: 8B 9F     .word _off007_01_9F8B_0F



_off006_831E_04:
- - - - - - 0x00432E 01:831E: EB 9D     .word _off007_04_9DEB_01
- - - - - - 0x004330 01:8320: EB 9D     .word _off007_04_9DEB_02
- - - - - - 0x004332 01:8322: EB 9D     .word _off007_04_9DEB_03
- - - - - - 0x004334 01:8324: EB 9D     .word _off007_04_9DEB_04
- - - - - - 0x004336 01:8326: EB 9D     .word _off007_04_9DEB_05
- - - - - - 0x004338 01:8328: EB 9D     .word _off007_04_9DEB_06
- - - - - - 0x00433A 01:832A: EB 9D     .word _off007_04_9DEB_07
- - - - - - 0x00433C 01:832C: EB 9D     .word _off007_04_9DEB_08
- D 0 - I - 0x00433E 01:832E: EB 9D     .word _off007_04_9DEB_09
- D 0 - I - 0x004340 01:8330: EB 9D     .word _off007_04_9DEB_0A
- D 0 - I - 0x004342 01:8332: EB 9D     .word _off007_04_9DEB_0B



_off006_8334_02:
- D 0 - I - 0x004344 01:8334: C0 A0     .word _off007_02_A0C0_01
- D 0 - I - 0x004346 01:8336: C4 A0     .word _off007_02_A0C4_02
- - - - - - 0x004348 01:8338: C8 A0     .word _off007_02_A0C8_03
- D 0 - I - 0x00434A 01:833A: 2F A1     .word _off007_02_A12F_04
- D 0 - I - 0x00434C 01:833C: 33 A1     .word _off007_02_A133_05
- D 0 - I - 0x00434E 01:833E: 37 A1     .word _off007_02_A137_06
- D 0 - I - 0x004350 01:8340: 3B A1     .word _off007_02_A13B_07
- D 0 - I - 0x004352 01:8342: 3F A1     .word _off007_02_A13F_08
- D 0 - I - 0x004354 01:8344: D8 A0     .word _off007_02_A0D8_09



_off006_8346_0D:
- D 0 - I - 0x004356 01:8346: 6F A4     .word _off007_0D_A46F_01
- - - - - - 0x004358 01:8348: BB A5     .word _off007_0D_A5BB_02
- D 0 - I - 0x00435A 01:834A: A2 A5     .word _off007_0D_A5A2_03
- - - - - - 0x00435C 01:834C: A6 A5     .word _off007_0D_A5A6_04
- - - - - - 0x00435E 01:834E: A6 A5     .word _off007_0D_A5A6_05



_off006_8350_0E:
- D 0 - I - 0x004360 01:8350: E0 A4     .word _off007_0E_A4E0_01
- D 0 - I - 0x004362 01:8352: BB A5     .word _off007_0E_A5BB_02
- - - - - - 0x004364 01:8354: A2 A5     .word _off007_0E_A5A2_03
- - - - - - 0x004366 01:8356: A6 A5     .word _off007_0E_A5A6_04
- D 0 - I - 0x004368 01:8358: A6 A5     .word _off007_0E_A5A6_05



_off006_835A_0F:
- D 0 - I - 0x00436A 01:835A: 6E A5     .word _off007_0F_A56E_01
- D 0 - I - 0x00436C 01:835C: 8E A5     .word _off007_0F_A58E_02



_off006_835E_0B:
- D 0 - I - 0x00436E 01:835E: 05 84     .word _off007_0B_8405_01
- D 0 - I - 0x004370 01:8360: 79 A6     .word _off007_0B_A679_02



_off006_8362_10:
- D 0 - I - 0x004372 01:8362: 43 A6     .word _off007_10_A643_01
- D 0 - I - 0x004374 01:8364: 49 A6     .word _off007_10_A649_02



_off006_8366_28:
_off006_8366_29:
- D 0 - I - 0x004376 01:8366: 5D A6     .word _off007_28_A65D_01



_off006_8368_08:
- D 0 - I - 0x004378 01:8368: 93 A6     .word _off007_08_A693_01
- D 0 - I - 0x00437A 01:836A: A1 A6     .word _off007_08_A6A1_02
- D 0 - I - 0x00437C 01:836C: B5 A6     .word _off007_08_A6B5_03
- D 0 - I - 0x00437E 01:836E: DB A6     .word _off007_08_A6DB_04
- D 0 - I - 0x004380 01:8370: EE A6     .word _off007_08_A6EE_05
- D 0 - I - 0x004382 01:8372: FE A6     .word _off007_08_A6FE_06
- D 0 - I - 0x004384 01:8374: 0A A7     .word _off007_08_A70A_07
- D 0 - I - 0x004386 01:8376: 16 A7     .word _off007_08_A716_08
- D 0 - I - 0x004388 01:8378: 25 A7     .word _off007_08_A725_09
- D 0 - I - 0x00438A 01:837A: 31 A7     .word _off007_08_A731_0A
- D 0 - I - 0x00438C 01:837C: 3D A7     .word _off007_08_A73D_0B
- - - - - - 0x00438E 01:837E: 83 A7     .word _off007_08_A783_0C
- - - - - - 0x004390 01:8380: 3D A7     .word _off007_08_A73D_0D
- D 0 - I - 0x004392 01:8382: A1 A7     .word _off007_08_A7A1_0E
- D 0 - I - 0x004394 01:8384: E5 B1     .word _off007_08_B1E5_0F



_off006_8386_11:
_off006_8386_23:
- D 0 - I - 0x004396 01:8386: C1 A7     .word _off007_11_A7C1_01
- - - - - - 0x004398 01:8388: C1 A7     .word _off007_11_A7C1_02



_off006_838A_12:
- D 0 - I - 0x00439A 01:838A: DB A7     .word _off007_12_A7DB_01



_off006_838C_13:
- D 0 - I - 0x00439C 01:838C: F1 A7     .word _off007_13_A7F1_01



_off006_838E_14:
_off006_838E_15:
- D 0 - I - 0x00439E 01:838E: 13 A8     .word _off007_14_A813_01
- D 0 - I - 0x0043A0 01:8390: 6E A5     .word _off007_14_A56E_02



_off006_8392_16:
_off006_8392_17:
- D 0 - I - 0x0043A2 01:8392: 7C A8     .word _off007_16_A87C_01
- D 0 - I - 0x0043A4 01:8394: 6E A5     .word _off007_16_A56E_02
- D 0 - I - 0x0043A6 01:8396: 83 A7     .word _off007_16_A783_03



_off006_8398_18:
- D 0 - I - 0x0043A8 01:8398: D7 A9     .word _off007_18_A9D7_01



_off006_839A_19:
- D 0 - I - 0x0043AA 01:839A: F5 A9     .word _off007_19_A9F5_01
- D 0 - I - 0x0043AC 01:839C: 59 AA     .word _off007_19_AA59_02



_off006_839E_1A:
- D 0 - I - 0x0043AE 01:839E: 39 AA     .word _off007_1A_AA39_01
- D 0 - I - 0x0043B0 01:83A0: 59 AA     .word _off007_1A_AA59_02



_off006_83A2_1B:
- D 0 - I - 0x0043B2 01:83A2: C5 9F     .word _off007_1B_9FC5_01



_off006_83A4_20:
- D 0 - I - 0x0043B4 01:83A4: 89 AA     .word _off007_20_AA89_01
- D 0 - I - 0x0043B6 01:83A6: 6E A5     .word _off007_20_A56E_02



_off006_83A8_1C:
- D 0 - I - 0x0043B8 01:83A8: A2 A8     .word _off007_1C_A8A2_01



_off006_83AA_1D:
- D 0 - I - 0x0043BA 01:83AA: C1 A9     .word _off007_1D_A9C1_01



_off006_83AC_1E:
- D 0 - I - 0x0043BC 01:83AC: C4 A8     .word _off007_1E_A8C4_01
- D 0 - I - 0x0043BE 01:83AE: 6E A5     .word _off007_1E_A56E_02
- D 0 - I - 0x0043C0 01:83B0: F6 A8     .word _off007_1E_A8F6_03



_off006_83B2_1F:
- D 0 - I - 0x0043C2 01:83B2: 8B A9     .word _off007_1F_A98B_01
- - - - - - 0x0043C4 01:83B4: 8B A9     .word _off007_1F_A98B_02
- - - - - - 0x0043C6 01:83B6: 8B A9     .word _off007_1F_A98B_03



_off006_83B8_21:
- D 0 - I - 0x0043C8 01:83B8: AB A9     .word _off007_21_A9AB_01



_off006_83BA_22:
- D 0 - I - 0x0043CA 01:83BA: 4D AB     .word _off007_22_AB4D_01
- D 0 - I - 0x0043CC 01:83BC: 6F AB     .word _off007_22_AB6F_02
- D 0 - I - 0x0043CE 01:83BE: 91 AB     .word _off007_22_AB91_03
- D 0 - I - 0x0043D0 01:83C0: B3 AB     .word _off007_22_ABB3_04



_off006_83C2_2A:
_off006_83C2_2B:
- D 0 - I - 0x0043D2 01:83C2: 69 A9     .word _off007_2A_A969_01
- D 0 - I - 0x0043D4 01:83C4: 6E A5     .word _off007_2A_A56E_02



_off006_83C6_2C:
_off006_83C6_2D:
- D 0 - I - 0x0043D6 01:83C6: AD AA     .word _off007_2C_AAAD_01
- D 0 - I - 0x0043D8 01:83C8: 6E A5     .word _off007_2C_A56E_02
- D 0 - I - 0x0043DA 01:83CA: E3 AA     .word _off007_2C_AAE3_03



_off006_83CC_2E:
_off006_83CC_2F:
- D 0 - I - 0x0043DC 01:83CC: F3 AA     .word _off007_2E_AAF3_01
- D 0 - I - 0x0043DE 01:83CE: 6E A5     .word _off007_2E_A56E_02
- D 0 - I - 0x0043E0 01:83D0: 29 AB     .word _off007_2E_AB29_03



_off006_83D2_27:
- D 0 - I - 0x0043E2 01:83D2: 1D 6F     .word ram_6F1D      ; 01
- D 0 - I - 0x0043E4 01:83D4: E5 B1     .word _off007_27_B1E5_02
- D 0 - I - 0x0043E6 01:83D6: 03 AC     .word _off007_27_AC03_03
- D 0 - I - 0x0043E8 01:83D8: 78 AC     .word _off007_27_AC78_04
- D 0 - I - 0x0043EA 01:83DA: AA AC     .word _off007_27_ACAA_05
- D 0 - I - 0x0043EC 01:83DC: EA AC     .word _off007_27_ACEA_06
- D 0 - I - 0x0043EE 01:83DE: 42 AD     .word _off007_27_AD42_07
- D 0 - I - 0x0043F0 01:83E0: 76 AD     .word _off007_27_AD76_08
- D 0 - I - 0x0043F2 01:83E2: B6 AD     .word _off007_27_ADB6_09
- - - - - - 0x0043F4 01:83E4: 78 AC     .word _off007_27_AC78_0A
- D 0 - I - 0x0043F6 01:83E6: 3E AE     .word _off007_27_AE3E_0B
- D 0 - I - 0x0043F8 01:83E8: A1 AE     .word _off007_27_AEA1_0C
- D 0 - I - 0x0043FA 01:83EA: 30 AF     .word _off007_27_AF30_0D
- D 0 - I - 0x0043FC 01:83EC: 62 AF     .word _off007_27_AF62_0E
- D 0 - I - 0x0043FE 01:83EE: 89 AF     .word _off007_27_AF89_0F
- D 0 - I - 0x004400 01:83F0: 20 B0     .word _off007_27_B020_10
- D 0 - I - 0x004402 01:83F2: 50 B0     .word _off007_27_B050_11
- D 0 - I - 0x004404 01:83F4: 9F B0     .word _off007_27_B09F_12
- - - - - - 0x004406 01:83F6: 30 AF     .word _off007_27_AF30_13
- D 0 - I - 0x004408 01:83F8: 21 B1     .word _off007_27_B121_14



_off006_83FA_26:
- D 0 - I - 0x00440A 01:83FA: 05 84     .word _off007_26_8405_01



_off006_83FC_24:
- D 0 - I - 0x00440C 01:83FC: 05 84     .word _off007_24_8405_01
- - - - - - 0x00440E 01:83FE: BB A5     .word _off007_24_A5BB_02



_off006_8400_25:
- D 0 - I - 0x004410 01:8400: 05 84     .word _off007_25_8405_01
- - - - - - 0x004412 01:8402: A2 A5     .word _off007_25_A5A2_02



off_8404_00:
- D 0 - I - 0x004414 01:8404: 00        .byte $00   ; counter



_off007_0B_8405_01:
_off007_26_8405_01:
_off007_24_8405_01:
_off007_25_8405_01:
@start:
; 00 
- D 0 - I - 0x004415 01:8405: 01        .byte $01   ; 
- D 0 - I - 0x004416 01:8406: FF        .byte off_8404_00 + $100 - @start   ; 
; 01 
- D 0 - I - 0x004417 01:8407: 01        .byte $01   ; 
- D 0 - I - 0x004418 01:8408: FF        .byte off_8404_00 + $100 - @start   ; 
; 02 
- D 0 - I - 0x004419 01:8409: FF        .byte $FF   ; 
- D 0 - I - 0x00441A 01:840A: FF        .byte off_8404_00 + $100 - @start   ; 



_off007_00_840B_01:
_off007_00_840B_04:
_off007_00_840B_06:
_off007_00_840B_0B:
_off007_00_840B_0D:
_off007_00_840B_12:
_off007_00_840B_19:
_off007_00_840B_20:
off_840B:
- D 0 - I - 0x00441B 01:840B: 06        .byte $06   ; counter
- D 0 - I - 0x00441C 01:840C: F7        .byte $F7, $F0, $07, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x004420 01:8410: FF        .byte $FF, $F0, $09, $01   ; 
- D 0 - I - 0x004424 01:8414: 07        .byte $07, $F0, $0B, $01   ; 
- D 0 - I - 0x004428 01:8418: F7        .byte $F7, $00, $27, $00   ; 
- D 0 - I - 0x00442C 01:841C: FF        .byte $FF, $00, $29, $00   ; 
- D 0 - I - 0x004430 01:8420: 07        .byte $07, $00, $2B, $00   ; 



off_8424:
- D 0 - I - 0x004434 01:8424: 05        .byte $05   ; counter
- D 0 - I - 0x004435 01:8425: 07        .byte $07, $F0, $11, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x004439 01:8429: F7        .byte $F7, $F0, $0D, $01   ; 
- D 0 - I - 0x00443D 01:842D: FF        .byte $FF, $F0, $0F, $01   ; 
- D 0 - I - 0x004441 01:8431: FF        .byte $FF, $00, $2F, $00   ; 
- D 0 - I - 0x004445 01:8435: F7        .byte $F7, $00, $2D, $00   ; 



off_8439:
- D 0 - I - 0x004449 01:8439: 06        .byte $06   ; counter
- D 0 - I - 0x00444A 01:843A: FF        .byte $FF, $F0, $15, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x00444E 01:843E: 07        .byte $07, $F0, $17, $01   ; 
- D 0 - I - 0x004452 01:8442: F7        .byte $F7, $00, $33, $00   ; 
- D 0 - I - 0x004456 01:8446: FF        .byte $FF, $00, $35, $00   ; 
- D 0 - I - 0x00445A 01:844A: 07        .byte $07, $00, $37, $00   ; 
- D 0 - I - 0x00445E 01:844E: F7        .byte $F7, $F0, $13, $00   ; 



_off007_00_8452_02:
_off007_00_8452_09:
_off007_00_8452_10:
@start:
; 00 
- D 0 - I - 0x004462 01:8452: 02        .byte $02   ; 
- D 0 - I - 0x004463 01:8453: B9        .byte off_840B + $100 - @start   ; 
; 01 
- D 0 - I - 0x004464 01:8454: 06        .byte $06   ; 
- D 0 - I - 0x004465 01:8455: D2        .byte off_8424 + $100 - @start   ; 
; 02 
- D 0 - I - 0x004466 01:8456: 08        .byte $08   ; 
- D 0 - I - 0x004467 01:8457: E7        .byte off_8439 + $100 - @start   ; 
; 03 
- D 0 - I - 0x004468 01:8458: 06        .byte $06   ; 
- D 0 - I - 0x004469 01:8459: D2        .byte off_8424 + $100 - @start   ; 
; 04 
- D 0 - I - 0x00446A 01:845A: 06        .byte $06   ; 
- D 0 - I - 0x00446B 01:845B: B9        .byte off_840B + $100 - @start   ; 
; 05 
- D 0 - I - 0x00446C 01:845C: 00        .byte $00   ; 
- D 0 - I - 0x00446D 01:845D: B9        .byte off_840B + $100 - @start   ; 



off_845E:
- D 0 - I - 0x00446E 01:845E: 02        .byte $02   ; counter
- D 0 - I - 0x00446F 01:845F: 00        .byte $00, $F8, $59, $40   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x004473 01:8463: F8        .byte $F8, $F8, $59, $00   ; 



off_8467:
- D 0 - I - 0x004477 01:8467: 02        .byte $02   ; counter
- D 0 - I - 0x004478 01:8468: 00        .byte $00, $F8, $59, $40   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x00447C 01:846C: F8        .byte $F8, $F8, $59, $00   ; 



off_8470:
- D 0 - I - 0x004480 01:8470: 02        .byte $02   ; counter
- D 0 - I - 0x004481 01:8471: 00        .byte $00, $F8, $5B, $40   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x004485 01:8475: F8        .byte $F8, $F8, $5B, $00   ; 



off_8479:
- D 0 - I - 0x004489 01:8479: 08        .byte $08   ; counter
- D 0 - I - 0x00448A 01:847A: F0        .byte $F0, $00, $7D, $80   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x00448E 01:847E: F8        .byte $F8, $00, $7F, $80   ; 
- D 0 - I - 0x004492 01:8482: 08        .byte $08, $00, $7D, $C0   ; 
- D 0 - I - 0x004496 01:8486: 00        .byte $00, $00, $7F, $C0   ; 
- D 0 - I - 0x00449A 01:848A: 08        .byte $08, $F0, $7D, $40   ; 
- D 0 - I - 0x00449E 01:848E: 00        .byte $00, $F0, $7F, $40   ; 
- D 0 - I - 0x0044A2 01:8492: F0        .byte $F0, $F0, $7D, $00   ; 
- D 0 - I - 0x0044A6 01:8496: F8        .byte $F8, $F0, $7F, $00   ; 



_off007_00_849A_05:
_off007_00_849A_0C:
_off007_00_849A_13:
_off007_00_849A_1A:
_off007_00_849A_21:
_off007_00_849A_28:
_off007_00_849A_2F:
_off007_00_849A_36:
_off007_00_849A_3D:
_off007_00_849A_44:
_off007_00_849A_4B:
_off007_00_849A_52:
_off007_00_849A_59:
_off007_00_849A_60:
@start:
; 00 
- D 0 - I - 0x0044AA 01:849A: 04        .byte $04   ; 
- D 0 - I - 0x0044AB 01:849B: C4        .byte off_845E + $100 - @start   ; 
; 01 
- D 0 - I - 0x0044AC 01:849C: 04        .byte $04   ; 
- D 0 - I - 0x0044AD 01:849D: CD        .byte off_8467 + $100 - @start   ; 
; 02 
- D 0 - I - 0x0044AE 01:849E: 04        .byte $04   ; 
- D 0 - I - 0x0044AF 01:849F: D6        .byte off_8470 + $100 - @start   ; 
; 03 
- D 0 - I - 0x0044B0 01:84A0: 06        .byte $06   ; 
- D 0 - I - 0x0044B1 01:84A1: DF        .byte off_8479 + $100 - @start   ; 
; 04 
- D 0 - I - 0x0044B2 01:84A2: 06        .byte $06   ; 
- D 0 - I - 0x0044B3 01:84A3: D6        .byte off_8470 + $100 - @start   ; 
; 05 
- D 0 - I - 0x0044B4 01:84A4: 05        .byte $05   ; 
- D 0 - I - 0x0044B5 01:84A5: CD        .byte off_8467 + $100 - @start   ; 
; 06 
- D 0 - I - 0x0044B6 01:84A6: FF        .byte $FF   ; 
- D 0 - I - 0x0044B7 01:84A7: C4        .byte off_845E + $100 - @start   ; 



off_84A8:
- D 0 - I - 0x0044B8 01:84A8: 07        .byte $07   ; counter
- D 0 - I - 0x0044B9 01:84A9: F4        .byte $F4, $00, $53, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x0044BD 01:84AD: FC        .byte $FC, $00, $55, $00   ; 
- D 0 - I - 0x0044C1 01:84B1: 04        .byte $04, $00, $25, $00   ; 
- D 0 - I - 0x0044C5 01:84B5: 04        .byte $04, $F0, $05, $01   ; 
- D 0 - I - 0x0044C9 01:84B9: F4        .byte $F4, $F0, $01, $01   ; 
- D 0 - I - 0x0044CD 01:84BD: FC        .byte $FC, $F0, $03, $01   ; 
- D 0 - I - 0x0044D1 01:84C1: F4        .byte $F4, $F0, $01, $00   ; 



off_84C5:
- D 0 - I - 0x0044D5 01:84C5: 06        .byte $06   ; counter
- D 0 - I - 0x0044D6 01:84C6: FC        .byte $FC, $F0, $4D, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x0044DA 01:84CA: 04        .byte $04, $F0, $4F, $01   ; 
- D 0 - I - 0x0044DE 01:84CE: 04        .byte $04, $00, $61, $00   ; 
- D 0 - I - 0x0044E2 01:84D2: FC        .byte $FC, $00, $23, $00   ; 
- D 0 - I - 0x0044E6 01:84D6: F4        .byte $F4, $00, $41, $00   ; 
- D 0 - I - 0x0044EA 01:84DA: F4        .byte $F4, $F0, $01, $00   ; 



_off007_00_84DE_08:
@start:
; 00 
- D 0 - I - 0x0044EE 01:84DE: 20        .byte $20   ; 
- D 0 - I - 0x0044EF 01:84DF: CA        .byte off_84A8 + $100 - @start   ; 
; 01 
- D 0 - I - 0x0044F0 01:84E0: 1B        .byte $1B   ; 
- D 0 - I - 0x0044F1 01:84E1: E7        .byte off_84C5 + $100 - @start   ; 
; 02 
- D 0 - I - 0x0044F2 01:84E2: 00        .byte $00   ; 
- D 0 - I - 0x0044F3 01:84E3: CA        .byte off_84A8 + $100 - @start   ; 



off_84E4:
- D 0 - I - 0x0044F4 01:84E4: 06        .byte $06   ; counter
- D 0 - I - 0x0044F5 01:84E5: F4        .byte $F4, $F0, $43, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x0044F9 01:84E9: FC        .byte $FC, $F0, $45, $01   ; 
- D 0 - I - 0x0044FD 01:84ED: 04        .byte $04, $F0, $47, $01   ; 
- D 0 - I - 0x004501 01:84F1: F4        .byte $F4, $00, $63, $00   ; 
- D 0 - I - 0x004505 01:84F5: 04        .byte $04, $00, $67, $00   ; 
- D 0 - I - 0x004509 01:84F9: FC        .byte $FC, $00, $65, $00   ; 



off_84FD:
- D 0 - I - 0x00450D 01:84FD: 06        .byte $06   ; counter
- D 0 - I - 0x00450E 01:84FE: FC        .byte $FC, $F0, $49, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x004512 01:8502: 04        .byte $04, $F0, $4B, $01   ; 
- D 0 - I - 0x004516 01:8506: F4        .byte $F4, $F0, $43, $00   ; 
- D 0 - I - 0x00451A 01:850A: F4        .byte $F4, $00, $63, $00   ; 
- D 0 - I - 0x00451E 01:850E: 04        .byte $04, $00, $67, $00   ; 
- D 0 - I - 0x004522 01:8512: FC        .byte $FC, $00, $65, $00   ; 



_off007_00_8516_03:
_off007_00_8516_0A:
@start:
; 00 
- D 0 - I - 0x004526 01:8516: 0B        .byte $0B   ; 
- D 0 - I - 0x004527 01:8517: CE        .byte off_84E4 + $100 - @start   ; 
; 01 
- D 0 - I - 0x004528 01:8518: 0B        .byte $0B   ; 
- D 0 - I - 0x004529 01:8519: E7        .byte off_84FD + $100 - @start   ; 
; 02 
- D 0 - I - 0x00452A 01:851A: 00        .byte $00   ; 
- D 0 - I - 0x00452B 01:851B: CE        .byte off_84E4 + $100 - @start   ; 



off_851C:
- D 0 - I - 0x00452C 01:851C: 03        .byte $03   ; counter
- D 0 - I - 0x00452D 01:851D: 04        .byte $04, $00, $1D, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x004531 01:8521: F4        .byte $F4, $00, $19, $00   ; 
- D 0 - I - 0x004535 01:8525: FC        .byte $FC, $00, $1B, $00   ; 



off_8529:
- D 0 - I - 0x004539 01:8529: 03        .byte $03   ; counter
- D 0 - I - 0x00453A 01:852A: 04        .byte $04, $00, $1F, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x00453E 01:852E: FC        .byte $FC, $00, $31, $00   ; 
- D 0 - I - 0x004542 01:8532: F4        .byte $F4, $00, $19, $00   ; 



_off007_00_8536_07:
_off007_00_8536_0E:
@start:
; 00 
- D 0 - I - 0x004546 01:8536: 18        .byte $18   ; 
- D 0 - I - 0x004547 01:8537: E6        .byte off_851C + $100 - @start   ; 
; 01 
- D 0 - I - 0x004548 01:8538: 18        .byte $18   ; 
- D 0 - I - 0x004549 01:8539: F3        .byte off_8529 + $100 - @start   ; 
; 02 
- D 0 - I - 0x00454A 01:853A: 00        .byte $00   ; 
- D 0 - I - 0x00454B 01:853B: E6        .byte off_851C + $100 - @start   ; 



off_853C:
- D 0 - I - 0x00454C 01:853C: 06        .byte $06   ; counter
- D 0 - I - 0x00454D 01:853D: F4        .byte $F4, $00, $75, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x004551 01:8541: FC        .byte $FC, $00, $77, $00   ; 
- D 0 - I - 0x004555 01:8545: 04        .byte $04, $00, $25, $01   ; 
- D 0 - I - 0x004559 01:8549: 04        .byte $04, $F0, $05, $01   ; 
- D 0 - I - 0x00455D 01:854D: F4        .byte $F4, $F0, $01, $01   ; 
- D 0 - I - 0x004561 01:8551: FC        .byte $FC, $F0, $03, $01   ; 



off_8555:
- D 0 - I - 0x004565 01:8555: 06        .byte $06   ; counter
- D 0 - I - 0x004566 01:8556: 04        .byte $04, $F0, $55, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x00456A 01:855A: 04        .byte $04, $00, $61, $01   ; 
- D 0 - I - 0x00456E 01:855E: FC        .byte $FC, $00, $23, $00   ; 
- D 0 - I - 0x004572 01:8562: F4        .byte $F4, $00, $41, $00   ; 
- D 0 - I - 0x004576 01:8566: F4        .byte $F4, $F0, $01, $01   ; 
- D 0 - I - 0x00457A 01:856A: FC        .byte $FC, $F0, $53, $01   ; 



_off007_00_856E_0F:
@start:
; 00 
- D 0 - I - 0x00457E 01:856E: 20        .byte $20   ; 
- D 0 - I - 0x00457F 01:856F: CE        .byte off_853C + $100 - @start   ; 
; 01 
- D 0 - I - 0x004580 01:8570: 1B        .byte $1B   ; 
- D 0 - I - 0x004581 01:8571: E7        .byte off_8555 + $100 - @start   ; 
; 02 
- D 0 - I - 0x004582 01:8572: 00        .byte $00   ; 
- D 0 - I - 0x004583 01:8573: CE        .byte off_853C + $100 - @start   ; 



off_8574:
- D 0 - I - 0x004584 01:8574: 06        .byte $06   ; counter
- D 0 - I - 0x004585 01:8575: F4        .byte $F4, $F0, $43, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x004589 01:8579: 04        .byte $04, $00, $67, $01   ; 
- D 0 - I - 0x00458D 01:857D: FC        .byte $FC, $F0, $45, $01   ; 
- D 0 - I - 0x004591 01:8581: 04        .byte $04, $F0, $47, $01   ; 
- D 0 - I - 0x004595 01:8585: F4        .byte $F4, $00, $63, $00   ; 
- D 0 - I - 0x004599 01:8589: FC        .byte $FC, $00, $65, $00   ; 



off_858D:
- D 0 - I - 0x00459D 01:858D: 06        .byte $06   ; counter
- D 0 - I - 0x00459E 01:858E: FC        .byte $FC, $F0, $45, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x0045A2 01:8592: 04        .byte $04, $F0, $39, $01   ; 
- D 0 - I - 0x0045A6 01:8596: F4        .byte $F4, $F0, $43, $00   ; 
- D 0 - I - 0x0045AA 01:859A: 04        .byte $04, $00, $67, $01   ; 
- D 0 - I - 0x0045AE 01:859E: FC        .byte $FC, $00, $65, $00   ; 
- D 0 - I - 0x0045B2 01:85A2: F4        .byte $F4, $00, $63, $00   ; 



off_85A6:
- D 0 - I - 0x0045B6 01:85A6: 06        .byte $06   ; counter
- D 0 - I - 0x0045B7 01:85A7: 04        .byte $04, $00, $67, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x0045BB 01:85AB: FC        .byte $FC, $00, $65, $00   ; 
- D 0 - I - 0x0045BF 01:85AF: F4        .byte $F4, $F0, $43, $00   ; 
- D 0 - I - 0x0045C3 01:85B3: FC        .byte $FC, $F0, $3B, $01   ; 
- D 0 - I - 0x0045C7 01:85B7: 04        .byte $04, $F0, $3D, $01   ; 
- D 0 - I - 0x0045CB 01:85BB: F4        .byte $F4, $00, $63, $00   ; 



_off007_00_85BF_11:
@start:
; 00 
- D 0 - I - 0x0045CF 01:85BF: 0B        .byte $0B   ; 
- D 0 - I - 0x0045D0 01:85C0: B5        .byte off_8574 + $100 - @start   ; 
; 01 
- D 0 - I - 0x0045D1 01:85C1: 0B        .byte $0B   ; 
- D 0 - I - 0x0045D2 01:85C2: CE        .byte off_858D + $100 - @start   ; 
; 02 
- D 0 - I - 0x0045D3 01:85C3: 0B        .byte $0B   ; 
- D 0 - I - 0x0045D4 01:85C4: E7        .byte off_85A6 + $100 - @start   ; 
; 03 
- D 0 - I - 0x0045D5 01:85C5: 00        .byte $00   ; 
- D 0 - I - 0x0045D6 01:85C6: B5        .byte off_8574 + $100 - @start   ; 



off_85C7:
- D 0 - I - 0x0045D7 01:85C7: 06        .byte $06   ; counter
- D 0 - I - 0x0045D8 01:85C8: 04        .byte $04, $F0, $4D, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x0045DC 01:85CC: F4        .byte $F4, $F0, $49, $01   ; 
- D 0 - I - 0x0045E0 01:85D0: FC        .byte $FC, $F0, $4B, $01   ; 
- D 0 - I - 0x0045E4 01:85D4: 04        .byte $04, $00, $6D, $00   ; 
- D 0 - I - 0x0045E8 01:85D8: F4        .byte $F4, $00, $69, $00   ; 
- D 0 - I - 0x0045EC 01:85DC: FC        .byte $FC, $00, $6B, $00   ; 



off_85E0:
- D 0 - I - 0x0045F0 01:85E0: 06        .byte $06   ; counter
- D 0 - I - 0x0045F1 01:85E1: FC        .byte $FC, $F0, $71, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x0045F5 01:85E5: 04        .byte $04, $F0, $73, $01   ; 
- D 0 - I - 0x0045F9 01:85E9: F4        .byte $F4, $F0, $6F, $01   ; 
- D 0 - I - 0x0045FD 01:85ED: 04        .byte $04, $00, $6D, $00   ; 
- D 0 - I - 0x004601 01:85F1: FC        .byte $FC, $00, $51, $00   ; 
- D 0 - I - 0x004605 01:85F5: F4        .byte $F4, $00, $31, $00   ; 



_off007_00_85F9_14:
@start:
; 00 
- D 0 - I - 0x004609 01:85F9: 03        .byte $03   ; 
- D 0 - I - 0x00460A 01:85FA: CE        .byte off_85C7 + $100 - @start   ; 
; 01 
- D 0 - I - 0x00460B 01:85FB: 04        .byte $04   ; 
- D 0 - I - 0x00460C 01:85FC: E7        .byte off_85E0 + $100 - @start   ; 
; 02 
- D 0 - I - 0x00460D 01:85FD: 07        .byte $07   ; 
- D 0 - I - 0x00460E 01:85FE: CE        .byte off_85C7 + $100 - @start   ; 
; 03 
- D 0 - I - 0x00460F 01:85FF: 07        .byte $07   ; 
- D 0 - I - 0x004610 01:8600: E7        .byte off_85E0 + $100 - @start   ; 
; 04 
- D 0 - I - 0x004611 01:8601: 03        .byte $03   ; 
- D 0 - I - 0x004612 01:8602: CE        .byte off_85C7 + $100 - @start   ; 
; 05 
- D 0 - I - 0x004613 01:8603: 03        .byte $03   ; 
- D 0 - I - 0x004614 01:8604: E7        .byte off_85E0 + $100 - @start   ; 
; 06 
- D 0 - I - 0x004615 01:8605: FF        .byte $FF   ; 
- D 0 - I - 0x004616 01:8606: CE        .byte off_85C7 + $100 - @start   ; 



off_8607:
- D 0 - I - 0x004617 01:8607: 03        .byte $03   ; counter
- D 0 - I - 0x004618 01:8608: 04        .byte $04, $00, $1D, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x00461C 01:860C: F4        .byte $F4, $00, $19, $00   ; 
- D 0 - I - 0x004620 01:8610: FC        .byte $FC, $00, $1B, $00   ; 



off_8614:
- D 0 - I - 0x004624 01:8614: 03        .byte $03   ; counter
- D 0 - I - 0x004625 01:8615: 04        .byte $04, $00, $1F, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x004629 01:8619: F4        .byte $F4, $00, $19, $00   ; 
- D 0 - I - 0x00462D 01:861D: FC        .byte $FC, $00, $1B, $00   ; 



_off007_00_8621_15:
@start:
; 00 
- D 0 - I - 0x004631 01:8621: 18        .byte $18   ; 
- D 0 - I - 0x004632 01:8622: E6        .byte off_8607 + $100 - @start   ; 
; 01 
- D 0 - I - 0x004633 01:8623: 18        .byte $18   ; 
- D 0 - I - 0x004634 01:8624: F3        .byte off_8614 + $100 - @start   ; 
; 02 
- D 0 - I - 0x004635 01:8625: 00        .byte $00   ; 
- D 0 - I - 0x004636 01:8626: E6        .byte off_8607 + $100 - @start   ; 



off_8627:
- D 0 - I - 0x004637 01:8627: 08        .byte $08   ; counter
- D 0 - I - 0x004638 01:8628: F0        .byte $F0, $F0, $01, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x00463C 01:862C: F8        .byte $F8, $F0, $03, $01   ; 
- D 0 - I - 0x004640 01:8630: 00        .byte $00, $F0, $05, $01   ; 
- D 0 - I - 0x004644 01:8634: 08        .byte $08, $F0, $07, $01   ; 
- D 0 - I - 0x004648 01:8638: 00        .byte $00, $00, $25, $00   ; 
- D 0 - I - 0x00464C 01:863C: 08        .byte $08, $00, $27, $00   ; 
- D 0 - I - 0x004650 01:8640: F0        .byte $F0, $00, $21, $00   ; 
- D 0 - I - 0x004654 01:8644: F8        .byte $F8, $00, $23, $00   ; 



off_8648:
- D 0 - I - 0x004658 01:8648: 08        .byte $08   ; counter
- D 0 - I - 0x004659 01:8649: F0        .byte $F0, $F0, $0D, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x00465D 01:864D: F8        .byte $F8, $F0, $0F, $01   ; 
- D 0 - I - 0x004661 01:8651: 00        .byte $00, $F0, $11, $01   ; 
- D 0 - I - 0x004665 01:8655: 08        .byte $08, $F0, $13, $01   ; 
- D 0 - I - 0x004669 01:8659: 00        .byte $00, $00, $31, $00   ; 
- D 0 - I - 0x00466D 01:865D: 08        .byte $08, $00, $33, $00   ; 
- D 0 - I - 0x004671 01:8661: F0        .byte $F0, $00, $2D, $00   ; 
- D 0 - I - 0x004675 01:8665: F8        .byte $F8, $00, $2F, $00   ; 



off_8669:
- D 0 - I - 0x004679 01:8669: 08        .byte $08   ; counter
- D 0 - I - 0x00467A 01:866A: 08        .byte $08, $F0, $07, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x00467E 01:866E: F0        .byte $F0, $F0, $01, $00   ; 
- D 0 - I - 0x004682 01:8672: F8        .byte $F8, $F0, $49, $01   ; 
- D 0 - I - 0x004686 01:8676: 00        .byte $00, $F0, $4B, $01   ; 
- D 0 - I - 0x00468A 01:867A: 00        .byte $00, $00, $25, $00   ; 
- D 0 - I - 0x00468E 01:867E: 08        .byte $08, $00, $27, $00   ; 
- D 0 - I - 0x004692 01:8682: F0        .byte $F0, $00, $21, $00   ; 
- D 0 - I - 0x004696 01:8686: F8        .byte $F8, $00, $23, $00   ; 



_off007_00_868A_16:
@start:
; 00 
- D 0 - I - 0x00469A 01:868A: 08        .byte $08   ; 
- D 0 - I - 0x00469B 01:868B: 9D        .byte off_8627 + $100 - @start   ; 
; 01 
- D 0 - I - 0x00469C 01:868C: 06        .byte $06   ; 
- D 0 - I - 0x00469D 01:868D: BE        .byte off_8648 + $100 - @start   ; 
; 02 
- D 0 - I - 0x00469E 01:868E: 08        .byte $08   ; 
- D 0 - I - 0x00469F 01:868F: DF        .byte off_8669 + $100 - @start   ; 
; 03 
- D 0 - I - 0x0046A0 01:8690: 06        .byte $06   ; 
- D 0 - I - 0x0046A1 01:8691: BE        .byte off_8648 + $100 - @start   ; 
; 04 
- D 0 - I - 0x0046A2 01:8692: 00        .byte $00   ; 
- D 0 - I - 0x0046A3 01:8693: 9D        .byte off_8627 + $100 - @start   ; 



off_8694:
- D 0 - I - 0x0046A4 01:8694: 09        .byte $09   ; counter
- D 0 - I - 0x0046A5 01:8695: E8        .byte $E8, $06, $47, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x0046A9 01:8699: F0        .byte $F0, $F0, $01, $00   ; 
- D 0 - I - 0x0046AD 01:869D: F8        .byte $F8, $F0, $03, $01   ; 
- D 0 - I - 0x0046B1 01:86A1: 00        .byte $00, $F0, $05, $01   ; 
- D 0 - I - 0x0046B5 01:86A5: 08        .byte $08, $F0, $07, $01   ; 
- D 0 - I - 0x0046B9 01:86A9: 00        .byte $00, $00, $25, $00   ; 
- D 0 - I - 0x0046BD 01:86AD: 08        .byte $08, $00, $27, $00   ; 
- D 0 - I - 0x0046C1 01:86B1: F0        .byte $F0, $00, $21, $00   ; 
- D 0 - I - 0x0046C5 01:86B5: F8        .byte $F8, $00, $23, $00   ; 



off_86B9:
- D 0 - I - 0x0046C9 01:86B9: 09        .byte $09   ; counter
- D 0 - I - 0x0046CA 01:86BA: E0        .byte $E0, $06, $45, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x0046CE 01:86BE: F0        .byte $F0, $F0, $0D, $00   ; 
- D 0 - I - 0x0046D2 01:86C2: F8        .byte $F8, $F0, $0F, $01   ; 
- D 0 - I - 0x0046D6 01:86C6: 00        .byte $00, $F0, $11, $01   ; 
- D 0 - I - 0x0046DA 01:86CA: 08        .byte $08, $F0, $13, $01   ; 
- D 0 - I - 0x0046DE 01:86CE: 00        .byte $00, $00, $31, $00   ; 
- D 0 - I - 0x0046E2 01:86D2: 08        .byte $08, $00, $33, $00   ; 
- D 0 - I - 0x0046E6 01:86D6: F0        .byte $F0, $00, $2D, $00   ; 
- D 0 - I - 0x0046EA 01:86DA: F8        .byte $F8, $00, $2F, $00   ; 



_off007_00_86DE_17:
@start:
; 00 
- D 0 - I - 0x0046EE 01:86DE: 06        .byte $06   ; 
- D 0 - I - 0x0046EF 01:86DF: B6        .byte off_8694 + $100 - @start   ; 
; 01 
- D 0 - I - 0x0046F0 01:86E0: 06        .byte $06   ; 
- D 0 - I - 0x0046F1 01:86E1: DB        .byte off_86B9 + $100 - @start   ; 
; 02 
- D 0 - I - 0x0046F2 01:86E2: 00        .byte $00   ; 
- D 0 - I - 0x0046F3 01:86E3: B6        .byte off_8694 + $100 - @start   ; 



off_86E4:
- D 0 - I - 0x0046F4 01:86E4: 08        .byte $08   ; counter
- D 0 - I - 0x0046F5 01:86E5: 00        .byte $00, $F0, $51, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x0046F9 01:86E9: 08        .byte $08, $F0, $53, $01   ; 
- D 0 - I - 0x0046FD 01:86ED: 00        .byte $00, $00, $25, $00   ; 
- D 0 - I - 0x004701 01:86F1: 08        .byte $08, $00, $27, $00   ; 
- D 0 - I - 0x004705 01:86F5: F0        .byte $F0, $00, $21, $00   ; 
- D 0 - I - 0x004709 01:86F9: F8        .byte $F8, $00, $23, $00   ; 
- D 0 - I - 0x00470D 01:86FD: F0        .byte $F0, $F0, $01, $00   ; 
- D 0 - I - 0x004711 01:8701: F8        .byte $F8, $F0, $03, $01   ; 



off_8705:
- D 0 - I - 0x004715 01:8705: 0A        .byte $0A   ; counter
- D 0 - I - 0x004716 01:8706: 08        .byte $08, $00, $27, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x00471A 01:870A: F0        .byte $F0, $00, $21, $00   ; 
- D 0 - I - 0x00471E 01:870E: 00        .byte $00, $10, $3D, $00   ; 
- D 0 - I - 0x004722 01:8712: F8        .byte $F8, $10, $1F, $00   ; 
- D 0 - I - 0x004726 01:8716: F8        .byte $F8, $00, $41, $00   ; 
- D 0 - I - 0x00472A 01:871A: 00        .byte $00, $00, $43, $00   ; 
- D 0 - I - 0x00472E 01:871E: F0        .byte $F0, $F0, $01, $00   ; 
- D 0 - I - 0x004732 01:8722: F8        .byte $F8, $F0, $03, $01   ; 
- D 0 - I - 0x004736 01:8726: 00        .byte $00, $F0, $05, $01   ; 
- D 0 - I - 0x00473A 01:872A: 08        .byte $08, $F0, $07, $01   ; 



off_872E:
- D 0 - I - 0x00473E 01:872E: 0A        .byte $0A   ; counter
- D 0 - I - 0x00473F 01:872F: 08        .byte $08, $F0, $4D, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x004743 01:8733: 08        .byte $08, $00, $27, $00   ; 
- D 0 - I - 0x004747 01:8737: F8        .byte $F8, $10, $29, $00   ; 
- D 0 - I - 0x00474B 01:873B: 00        .byte $00, $10, $2B, $00   ; 
- D 0 - I - 0x00474F 01:873F: F8        .byte $F8, $00, $09, $00   ; 
- D 0 - I - 0x004753 01:8743: 00        .byte $00, $00, $0B, $00   ; 
- D 0 - I - 0x004757 01:8747: F0        .byte $F0, $00, $21, $00   ; 
- D 0 - I - 0x00475B 01:874B: F0        .byte $F0, $F0, $01, $00   ; 
- D 0 - I - 0x00475F 01:874F: F8        .byte $F8, $F0, $49, $01   ; 
- D 0 - I - 0x004763 01:8753: 00        .byte $00, $F0, $4B, $01   ; 



_off007_00_8757_18:
@start:
; 00 
- D 0 - I - 0x004767 01:8757: 04        .byte $04   ; 
- D 0 - I - 0x004768 01:8758: 8D        .byte off_86E4 + $100 - @start   ; 
; 01 
- D 0 - I - 0x004769 01:8759: 04        .byte $04   ; 
- D 0 - I - 0x00476A 01:875A: AE        .byte off_8705 + $100 - @start   ; 
; 02 
- D 0 - I - 0x00476B 01:875B: 04        .byte $04   ; 
- D 0 - I - 0x00476C 01:875C: D7        .byte off_872E + $100 - @start   ; 
; 03 
- D 0 - I - 0x00476D 01:875D: 04        .byte $04   ; 
- D 0 - I - 0x00476E 01:875E: AE        .byte off_8705 + $100 - @start   ; 
; 04 
- D 0 - I - 0x00476F 01:875F: 00        .byte $00   ; 
- D 0 - I - 0x004770 01:8760: 8D        .byte off_86E4 + $100 - @start   ; 



off_8761:
- - - - - - 0x004771 01:8761: 08        .byte $08   ; counter
- - - - - - 0x004772 01:8762: 00        .byte $00, $00, $65, $01   ; spr_X, spr_Y, spr_T, spr_A
- - - - - - 0x004776 01:8766: 08        .byte $08, $00, $67, $01   ; 
- - - - - - 0x00477A 01:876A: F0        .byte $F0, $00, $61, $01   ; 
- - - - - - 0x00477E 01:876E: F8        .byte $F8, $00, $63, $01   ; 
- - - - - - 0x004782 01:8772: 00        .byte $00, $F0, $45, $00   ; 
- - - - - - 0x004786 01:8776: 08        .byte $08, $F0, $47, $00   ; 
- - - - - - 0x00478A 01:877A: F0        .byte $F0, $F0, $41, $00   ; 
- - - - - - 0x00478E 01:877E: F8        .byte $F8, $F0, $43, $00   ; 



off_8782:
- - - - - - 0x004792 01:8782: 08        .byte $08   ; counter
- - - - - - 0x004793 01:8783: 08        .byte $08, $00, $6F, $01   ; spr_X, spr_Y, spr_T, spr_A
- - - - - - 0x004797 01:8787: 00        .byte $00, $00, $6D, $00   ; 
- - - - - - 0x00479B 01:878B: 00        .byte $00, $F0, $4D, $00   ; 
- - - - - - 0x00479F 01:878F: 08        .byte $08, $F0, $4F, $00   ; 
- - - - - - 0x0047A3 01:8793: F0        .byte $F0, $00, $69, $01   ; 
- - - - - - 0x0047A7 01:8797: F8        .byte $F8, $00, $6B, $01   ; 
- - - - - - 0x0047AB 01:879B: F0        .byte $F0, $F0, $49, $00   ; 
- - - - - - 0x0047AF 01:879F: F8        .byte $F8, $F0, $4B, $00   ; 



_off007_00_87A3_1C:
@start:
; 00 
- - - - - - 0x0047B3 01:87A3: 08        .byte $08   ; 
- - - - - - 0x0047B4 01:87A4: BE        .byte off_8761 + $100 - @start   ; 
; 01 
- - - - - - 0x0047B5 01:87A5: 08        .byte $08   ; 
- - - - - - 0x0047B6 01:87A6: DF        .byte off_8782 + $100 - @start   ; 
; 02 
- - - - - - 0x0047B7 01:87A7: 00        .byte $00   ; 
- - - - - - 0x0047B8 01:87A8: BE        .byte off_8761 + $100 - @start   ; 



off_87A9:
- D 0 - I - 0x0047B9 01:87A9: 08        .byte $08   ; counter
- D 0 - I - 0x0047BA 01:87AA: 00        .byte $00, $F0, $11, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x0047BE 01:87AE: 08        .byte $08, $F0, $13, $01   ; 
- D 0 - I - 0x0047C2 01:87B2: F8        .byte $F8, $F0, $0F, $01   ; 
- D 0 - I - 0x0047C6 01:87B6: F0        .byte $F0, $F0, $0D, $00   ; 
- D 0 - I - 0x0047CA 01:87BA: 00        .byte $00, $00, $31, $00   ; 
- D 0 - I - 0x0047CE 01:87BE: 08        .byte $08, $00, $33, $00   ; 
- D 0 - I - 0x0047D2 01:87C2: F0        .byte $F0, $00, $2D, $00   ; 
- D 0 - I - 0x0047D6 01:87C6: F8        .byte $F8, $00, $2F, $00   ; 



off_87CA:
- D 0 - I - 0x0047DA 01:87CA: 08        .byte $08   ; counter
- D 0 - I - 0x0047DB 01:87CB: 00        .byte $00, $EE, $19, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x0047DF 01:87CF: 08        .byte $08, $EE, $1B, $01   ; 
- D 0 - I - 0x0047E3 01:87D3: F8        .byte $F8, $EE, $17, $01   ; 
- D 0 - I - 0x0047E7 01:87D7: F0        .byte $F0, $EE, $15, $00   ; 
- D 0 - I - 0x0047EB 01:87DB: 00        .byte $00, $FE, $39, $00   ; 
- D 0 - I - 0x0047EF 01:87DF: 08        .byte $08, $FE, $3B, $00   ; 
- D 0 - I - 0x0047F3 01:87E3: F0        .byte $F0, $FE, $35, $00   ; 
- D 0 - I - 0x0047F7 01:87E7: F8        .byte $F8, $FE, $37, $00   ; 



off_87EB:
- D 0 - I - 0x0047FB 01:87EB: 08        .byte $08   ; counter
- D 0 - I - 0x0047FC 01:87EC: 00        .byte $00, $FC, $39, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x004800 01:87F0: 08        .byte $08, $FC, $3B, $00   ; 
- D 0 - I - 0x004804 01:87F4: F0        .byte $F0, $FC, $35, $00   ; 
- D 0 - I - 0x004808 01:87F8: F8        .byte $F8, $FC, $37, $00   ; 
- D 0 - I - 0x00480C 01:87FC: 00        .byte $00, $EC, $19, $01   ; 
- D 0 - I - 0x004810 01:8800: 08        .byte $08, $EC, $1B, $01   ; 
- D 0 - I - 0x004814 01:8804: F8        .byte $F8, $EC, $17, $01   ; 
- D 0 - I - 0x004818 01:8808: F0        .byte $F0, $EC, $15, $00   ; 



_off007_00_880C_1B:
@start:
; 00 
- D 0 - I - 0x00481C 01:880C: 05        .byte $05   ; 
- D 0 - I - 0x00481D 01:880D: 9D        .byte off_87A9 + $100 - @start   ; 
; 01 
- D 0 - I - 0x00481E 01:880E: 06        .byte $06   ; 
- D 0 - I - 0x00481F 01:880F: BE        .byte off_87CA + $100 - @start   ; 
; 02 
- D 0 - I - 0x004820 01:8810: 0A        .byte $0A   ; 
- D 0 - I - 0x004821 01:8811: DF        .byte off_87EB + $100 - @start   ; 
; 03 
- D 0 - I - 0x004822 01:8812: FF        .byte $FF   ; 
- D 0 - I - 0x004823 01:8813: DF        .byte off_87EB + $100 - @start   ; 



off_8814:
- D 0 - I - 0x004824 01:8814: 0A        .byte $0A   ; counter
- D 0 - I - 0x004825 01:8815: 08        .byte $08, $F0, $07, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x004829 01:8819: 00        .byte $00, $F0, $05, $01   ; 
- D 0 - I - 0x00482D 01:881D: F8        .byte $F8, $F0, $03, $01   ; 
- D 0 - I - 0x004831 01:8821: F0        .byte $F0, $F0, $01, $00   ; 
- D 0 - I - 0x004835 01:8825: 10        .byte $10, $F0, $09, $00   ; 
- D 0 - I - 0x004839 01:8829: 10        .byte $10, $00, $29, $00   ; 
- D 0 - I - 0x00483D 01:882D: 00        .byte $00, $00, $25, $00   ; 
- D 0 - I - 0x004841 01:8831: 08        .byte $08, $00, $27, $00   ; 
- D 0 - I - 0x004845 01:8835: F0        .byte $F0, $00, $21, $00   ; 
- D 0 - I - 0x004849 01:8839: F8        .byte $F8, $00, $23, $00   ; 



off_883D:
- D 0 - I - 0x00484D 01:883D: 0A        .byte $0A   ; counter
- D 0 - I - 0x00484E 01:883E: 08        .byte $08, $F0, $07, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x004852 01:8842: 00        .byte $00, $F0, $0D, $01   ; 
- D 0 - I - 0x004856 01:8846: F8        .byte $F8, $F0, $0B, $01   ; 
- D 0 - I - 0x00485A 01:884A: 10        .byte $10, $F0, $09, $00   ; 
- D 0 - I - 0x00485E 01:884E: F0        .byte $F0, $F0, $01, $00   ; 
- D 0 - I - 0x004862 01:8852: 00        .byte $00, $00, $31, $00   ; 
- D 0 - I - 0x004866 01:8856: 08        .byte $08, $00, $33, $00   ; 
- D 0 - I - 0x00486A 01:885A: F0        .byte $F0, $00, $2D, $00   ; 
- D 0 - I - 0x00486E 01:885E: F8        .byte $F8, $00, $2F, $00   ; 
- D 0 - I - 0x004872 01:8862: 10        .byte $10, $00, $29, $00   ; 



_off007_00_8866_1D:
@start:
; 00 
- D 0 - I - 0x004876 01:8866: 18        .byte $18   ; 
- D 0 - I - 0x004877 01:8867: AE        .byte off_8814 + $100 - @start   ; 
; 01 
- D 0 - I - 0x004878 01:8868: 18        .byte $18   ; 
- D 0 - I - 0x004879 01:8869: D7        .byte off_883D + $100 - @start   ; 
; 02 
- D 0 - I - 0x00487A 01:886A: 00        .byte $00   ; 
- D 0 - I - 0x00487B 01:886B: AE        .byte off_8814 + $100 - @start   ; 



off_886C:
- D 0 - I - 0x00487C 01:886C: 0A        .byte $0A   ; counter
- D 0 - I - 0x00487D 01:886D: 08        .byte $08, $F0, $07, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x004881 01:8871: 00        .byte $00, $F0, $05, $01   ; 
- D 0 - I - 0x004885 01:8875: F8        .byte $F8, $F0, $03, $01   ; 
- D 0 - I - 0x004889 01:8879: 10        .byte $10, $F0, $09, $00   ; 
- D 0 - I - 0x00488D 01:887D: F0        .byte $F0, $F0, $01, $00   ; 
- D 0 - I - 0x004891 01:8881: 10        .byte $10, $00, $29, $00   ; 
- D 0 - I - 0x004895 01:8885: 00        .byte $00, $00, $25, $00   ; 
- D 0 - I - 0x004899 01:8889: 08        .byte $08, $00, $27, $00   ; 
- D 0 - I - 0x00489D 01:888D: F0        .byte $F0, $00, $21, $00   ; 
- D 0 - I - 0x0048A1 01:8891: F8        .byte $F8, $00, $23, $00   ; 



off_8895:
- D 0 - I - 0x0048A5 01:8895: 0A        .byte $0A   ; counter
- D 0 - I - 0x0048A6 01:8896: 00        .byte $00, $F0, $77, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x0048AA 01:889A: F8        .byte $F8, $F0, $75, $01   ; 
- D 0 - I - 0x0048AE 01:889E: F0        .byte $F0, $F0, $73, $00   ; 
- D 0 - I - 0x0048B2 01:88A2: 08        .byte $08, $F0, $07, $00   ; 
- D 0 - I - 0x0048B6 01:88A6: 10        .byte $10, $F0, $09, $00   ; 
- D 0 - I - 0x0048BA 01:88AA: 00        .byte $00, $00, $31, $00   ; 
- D 0 - I - 0x0048BE 01:88AE: 08        .byte $08, $00, $33, $00   ; 
- D 0 - I - 0x0048C2 01:88B2: F0        .byte $F0, $00, $2D, $00   ; 
- D 0 - I - 0x0048C6 01:88B6: F8        .byte $F8, $00, $2F, $00   ; 
- D 0 - I - 0x0048CA 01:88BA: 10        .byte $10, $00, $29, $00   ; 



_off007_00_88BE_1E:
@start:
; 00 
- D 0 - I - 0x0048CE 01:88BE: 08        .byte $08   ; 
- D 0 - I - 0x0048CF 01:88BF: AE        .byte off_886C + $100 - @start   ; 
; 01 
- D 0 - I - 0x0048D0 01:88C0: 08        .byte $08   ; 
- D 0 - I - 0x0048D1 01:88C1: D7        .byte off_8895 + $100 - @start   ; 
; 02 
- D 0 - I - 0x0048D2 01:88C2: 00        .byte $00   ; 
- D 0 - I - 0x0048D3 01:88C3: AE        .byte off_886C + $100 - @start   ; 



off_88C4:
- D 0 - I - 0x0048D4 01:88C4: 0A        .byte $0A   ; counter
- D 0 - I - 0x0048D5 01:88C5: 08        .byte $08, $F0, $07, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x0048D9 01:88C9: 00        .byte $00, $F0, $05, $01   ; 
- D 0 - I - 0x0048DD 01:88CD: F8        .byte $F8, $F0, $03, $01   ; 
- D 0 - I - 0x0048E1 01:88D1: F0        .byte $F0, $F0, $01, $00   ; 
- D 0 - I - 0x0048E5 01:88D5: 10        .byte $10, $F0, $09, $00   ; 
- D 0 - I - 0x0048E9 01:88D9: 10        .byte $10, $00, $29, $00   ; 
- D 0 - I - 0x0048ED 01:88DD: 00        .byte $00, $00, $25, $00   ; 
- D 0 - I - 0x0048F1 01:88E1: 08        .byte $08, $00, $27, $00   ; 
- D 0 - I - 0x0048F5 01:88E5: F0        .byte $F0, $00, $21, $00   ; 
- D 0 - I - 0x0048F9 01:88E9: F8        .byte $F8, $00, $23, $00   ; 



off_88ED:
- D 0 - I - 0x0048FD 01:88ED: 0A        .byte $0A   ; counter
- D 0 - I - 0x0048FE 01:88EE: 08        .byte $08, $F0, $07, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x004902 01:88F2: 00        .byte $00, $F0, $0D, $01   ; 
- D 0 - I - 0x004906 01:88F6: F8        .byte $F8, $F0, $0B, $01   ; 
- D 0 - I - 0x00490A 01:88FA: 10        .byte $10, $F0, $09, $00   ; 
- D 0 - I - 0x00490E 01:88FE: F0        .byte $F0, $F0, $01, $00   ; 
- D 0 - I - 0x004912 01:8902: 00        .byte $00, $00, $31, $00   ; 
- D 0 - I - 0x004916 01:8906: 08        .byte $08, $00, $33, $00   ; 
- D 0 - I - 0x00491A 01:890A: F0        .byte $F0, $00, $2D, $00   ; 
- D 0 - I - 0x00491E 01:890E: F8        .byte $F8, $00, $2F, $00   ; 
- D 0 - I - 0x004922 01:8912: 10        .byte $10, $00, $29, $00   ; 



_off007_00_8916_1F:
@start:
; 00 
- D 0 - I - 0x004926 01:8916: 08        .byte $08   ; 
- D 0 - I - 0x004927 01:8917: AE        .byte off_88C4 + $100 - @start   ; 
; 01 
- D 0 - I - 0x004928 01:8918: 08        .byte $08   ; 
- D 0 - I - 0x004929 01:8919: D7        .byte off_88ED + $100 - @start   ; 
; 02 
- D 0 - I - 0x00492A 01:891A: 00        .byte $00   ; 
- D 0 - I - 0x00492B 01:891B: AE        .byte off_88C4 + $100 - @start   ; 



off_891C:
- D 0 - I - 0x00492C 01:891C: 08        .byte $08   ; counter
- D 0 - I - 0x00492D 01:891D: F0        .byte $F0, $F0, $49, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x004931 01:8921: F8        .byte $F8, $F0, $1D, $01   ; 
- D 0 - I - 0x004935 01:8925: 00        .byte $00, $F0, $1F, $01   ; 
- D 0 - I - 0x004939 01:8929: 00        .byte $00, $00, $6D, $00   ; 
- D 0 - I - 0x00493D 01:892D: F0        .byte $F0, $00, $69, $01   ; 
- D 0 - I - 0x004941 01:8931: F8        .byte $F8, $00, $6B, $01   ; 
- D 0 - I - 0x004945 01:8935: 00        .byte $00, $E4, $71, $00   ; 
- D 0 - I - 0x004949 01:8939: F8        .byte $F8, $E4, $6F, $00   ; 



off_893D:
- D 0 - I - 0x00494D 01:893D: 08        .byte $08   ; counter
- D 0 - I - 0x00494E 01:893E: 00        .byte $00, $00, $6D, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x004952 01:8942: F0        .byte $F0, $00, $3D, $00   ; 
- D 0 - I - 0x004956 01:8946: F8        .byte $F8, $00, $6B, $00   ; 
- D 0 - I - 0x00495A 01:894A: 00        .byte $00, $F0, $4D, $01   ; 
- D 0 - I - 0x00495E 01:894E: F0        .byte $F0, $F0, $49, $01   ; 
- D 0 - I - 0x004962 01:8952: F8        .byte $F8, $F0, $4B, $01   ; 
- D 0 - I - 0x004966 01:8956: 00        .byte $00, $E0, $71, $00   ; 
- D 0 - I - 0x00496A 01:895A: F8        .byte $F8, $E0, $6F, $00   ; 



_off007_00_895E_23:
_off007_00_895E_63:
@start:
; 00 
- D 0 - I - 0x00496E 01:895E: 0A        .byte $0A   ; 
- D 0 - I - 0x00496F 01:895F: BE        .byte off_891C + $100 - @start   ; 
; 01 
- D 0 - I - 0x004970 01:8960: 0A        .byte $0A   ; 
- D 0 - I - 0x004971 01:8961: DF        .byte off_893D + $100 - @start   ; 
; 02 
- D 0 - I - 0x004972 01:8962: 08        .byte $08   ; 
- D 0 - I - 0x004973 01:8963: BE        .byte off_891C + $100 - @start   ; 
; 03 
- D 0 - I - 0x004974 01:8964: 08        .byte $08   ; 
- D 0 - I - 0x004975 01:8965: DF        .byte off_893D + $100 - @start   ; 
; 04 
- D 0 - I - 0x004976 01:8966: 06        .byte $06   ; 
- D 0 - I - 0x004977 01:8967: BE        .byte off_891C + $100 - @start   ; 
; 05 
- - - - - - 0x004978 01:8968: 06        .byte $06   ; 
- - - - - - 0x004979 01:8969: DF        .byte off_893D + $100 - @start   ; 
; 06 
- - - - - - 0x00497A 01:896A: 04        .byte $04   ; 
- - - - - - 0x00497B 01:896B: BE        .byte off_891C + $100 - @start   ; 
; 07 
- - - - - - 0x00497C 01:896C: 04        .byte $04   ; 
- - - - - - 0x00497D 01:896D: DF        .byte off_893D + $100 - @start   ; 
; 08 
- - - - - - 0x00497E 01:896E: 00        .byte $00   ; 
- - - - - - 0x00497F 01:896F: BE        .byte off_891C + $100 - @start   ; 



off_8970:
- D 0 - I - 0x004980 01:8970: 08        .byte $08   ; counter
- D 0 - I - 0x004981 01:8971: 00        .byte $00, $00, $65, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x004985 01:8975: 08        .byte $08, $00, $67, $00   ; 
- D 0 - I - 0x004989 01:8979: F0        .byte $F0, $00, $61, $01   ; 
- D 0 - I - 0x00498D 01:897D: F8        .byte $F8, $00, $63, $01   ; 
- D 0 - I - 0x004991 01:8981: 00        .byte $00, $F0, $45, $00   ; 
- D 0 - I - 0x004995 01:8985: 08        .byte $08, $F0, $47, $00   ; 
- D 0 - I - 0x004999 01:8989: F0        .byte $F0, $F0, $41, $00   ; 
- D 0 - I - 0x00499D 01:898D: F8        .byte $F8, $F0, $43, $00   ; 



off_8991:
- D 0 - I - 0x0049A1 01:8991: 08        .byte $08   ; counter
- D 0 - I - 0x0049A2 01:8992: F0        .byte $F0, $00, $4F, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x0049A6 01:8996: F8        .byte $F8, $00, $51, $01   ; 
- D 0 - I - 0x0049AA 01:899A: 00        .byte $00, $00, $65, $00   ; 
- D 0 - I - 0x0049AE 01:899E: 08        .byte $08, $00, $67, $00   ; 
- D 0 - I - 0x0049B2 01:89A2: 00        .byte $00, $F0, $45, $00   ; 
- D 0 - I - 0x0049B6 01:89A6: 08        .byte $08, $F0, $47, $00   ; 
- D 0 - I - 0x0049BA 01:89AA: F0        .byte $F0, $F0, $41, $00   ; 
- D 0 - I - 0x0049BE 01:89AE: F8        .byte $F8, $F0, $43, $00   ; 



_off007_00_89B2_64:
@start:
; 00 
- D 0 - I - 0x0049C2 01:89B2: 0A        .byte $0A   ; 
- D 0 - I - 0x0049C3 01:89B3: BE        .byte off_8970 + $100 - @start   ; 
; 01 
- D 0 - I - 0x0049C4 01:89B4: 0A        .byte $0A   ; 
- D 0 - I - 0x0049C5 01:89B5: DF        .byte off_8991 + $100 - @start   ; 
; 02 
- D 0 - I - 0x0049C6 01:89B6: 08        .byte $08   ; 
- D 0 - I - 0x0049C7 01:89B7: BE        .byte off_8970 + $100 - @start   ; 
; 03 
- D 0 - I - 0x0049C8 01:89B8: 08        .byte $08   ; 
- D 0 - I - 0x0049C9 01:89B9: DF        .byte off_8991 + $100 - @start   ; 
; 04 
- D 0 - I - 0x0049CA 01:89BA: 06        .byte $06   ; 
- D 0 - I - 0x0049CB 01:89BB: BE        .byte off_8970 + $100 - @start   ; 
; 05 
- D 0 - I - 0x0049CC 01:89BC: 06        .byte $06   ; 
- D 0 - I - 0x0049CD 01:89BD: DF        .byte off_8991 + $100 - @start   ; 
; 06 
- D 0 - I - 0x0049CE 01:89BE: 03        .byte $03   ; 
- D 0 - I - 0x0049CF 01:89BF: BE        .byte off_8970 + $100 - @start   ; 
; 07 
- D 0 - I - 0x0049D0 01:89C0: 04        .byte $04   ; 
- D 0 - I - 0x0049D1 01:89C1: DF        .byte off_8991 + $100 - @start   ; 
; 08 
- - - - - - 0x0049D2 01:89C2: 00        .byte $00   ; 
- - - - - - 0x0049D3 01:89C3: BE        .byte off_8970 + $100 - @start   ; 



off_89C4:
- D 0 - I - 0x0049D4 01:89C4: 0A        .byte $0A   ; counter
- D 0 - I - 0x0049D5 01:89C5: 08        .byte $08, $F0, $07, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x0049D9 01:89C9: 00        .byte $00, $F0, $05, $01   ; 
- D 0 - I - 0x0049DD 01:89CD: F8        .byte $F8, $F0, $03, $01   ; 
- D 0 - I - 0x0049E1 01:89D1: F0        .byte $F0, $F0, $01, $00   ; 
- D 0 - I - 0x0049E5 01:89D5: 10        .byte $10, $F0, $09, $00   ; 
- D 0 - I - 0x0049E9 01:89D9: 00        .byte $00, $00, $31, $00   ; 
- D 0 - I - 0x0049ED 01:89DD: 08        .byte $08, $00, $33, $00   ; 
- D 0 - I - 0x0049F1 01:89E1: F0        .byte $F0, $00, $2D, $00   ; 
- D 0 - I - 0x0049F5 01:89E5: F8        .byte $F8, $00, $2F, $00   ; 
- D 0 - I - 0x0049F9 01:89E9: 10        .byte $10, $00, $29, $00   ; 



off_89ED:
- D 0 - I - 0x0049FD 01:89ED: 0A        .byte $0A   ; counter
- D 0 - I - 0x0049FE 01:89EE: 08        .byte $08, $F0, $0F, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x004A02 01:89F2: 00        .byte $00, $F0, $0D, $01   ; 
- D 0 - I - 0x004A06 01:89F6: F8        .byte $F8, $F0, $0B, $01   ; 
- D 0 - I - 0x004A0A 01:89FA: 08        .byte $08, $00, $2B, $00   ; 
- D 0 - I - 0x004A0E 01:89FE: 10        .byte $10, $F0, $1B, $00   ; 
- D 0 - I - 0x004A12 01:8A02: 10        .byte $10, $00, $53, $00   ; 
- D 0 - I - 0x004A16 01:8A06: F0        .byte $F0, $F0, $01, $00   ; 
- D 0 - I - 0x004A1A 01:8A0A: F0        .byte $F0, $00, $21, $00   ; 
- D 0 - I - 0x004A1E 01:8A0E: F8        .byte $F8, $00, $23, $00   ; 
- D 0 - I - 0x004A22 01:8A12: 00        .byte $00, $00, $25, $00   ; 



off_8A16:
- D 0 - I - 0x004A26 01:8A16: 0A        .byte $0A   ; counter
- D 0 - I - 0x004A27 01:8A17: 00        .byte $00, $F0, $0D, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x004A2B 01:8A1B: F8        .byte $F8, $F0, $0B, $01   ; 
- D 0 - I - 0x004A2F 01:8A1F: F0        .byte $F0, $00, $2D, $00   ; 
- D 0 - I - 0x004A33 01:8A23: F8        .byte $F8, $00, $2F, $00   ; 
- D 0 - I - 0x004A37 01:8A27: 08        .byte $08, $00, $55, $00   ; 
- D 0 - I - 0x004A3B 01:8A2B: 00        .byte $00, $00, $31, $00   ; 
- D 0 - I - 0x004A3F 01:8A2F: 08        .byte $08, $F0, $11, $00   ; 
- D 0 - I - 0x004A43 01:8A33: 10        .byte $10, $F0, $13, $00   ; 
- D 0 - I - 0x004A47 01:8A37: 10        .byte $10, $00, $19, $00   ; 
- D 0 - I - 0x004A4B 01:8A3B: F0        .byte $F0, $F0, $01, $00   ; 



off_8A3F:
- D 0 - I - 0x004A4F 01:8A3F: 0A        .byte $0A   ; counter
- D 0 - I - 0x004A50 01:8A40: 00        .byte $00, $F0, $0D, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x004A54 01:8A44: F8        .byte $F8, $F0, $0B, $01   ; 
- D 0 - I - 0x004A58 01:8A48: 08        .byte $08, $00, $35, $00   ; 
- D 0 - I - 0x004A5C 01:8A4C: 10        .byte $10, $00, $37, $00   ; 
- D 0 - I - 0x004A60 01:8A50: 00        .byte $00, $00, $25, $00   ; 
- D 0 - I - 0x004A64 01:8A54: 08        .byte $08, $F0, $15, $00   ; 
- D 0 - I - 0x004A68 01:8A58: 10        .byte $10, $F0, $17, $00   ; 
- D 0 - I - 0x004A6C 01:8A5C: F0        .byte $F0, $F0, $01, $00   ; 
- D 0 - I - 0x004A70 01:8A60: F0        .byte $F0, $00, $21, $00   ; 
- D 0 - I - 0x004A74 01:8A64: F8        .byte $F8, $00, $23, $00   ; 



_off007_00_8A68_22:
@start:
; 00 
- D 0 - I - 0x004A78 01:8A68: 08        .byte $08   ; 
- D 0 - I - 0x004A79 01:8A69: 85        .byte off_89ED + $100 - @start   ; 
; 01 
- D 0 - I - 0x004A7A 01:8A6A: 09        .byte $09   ; 
- D 0 - I - 0x004A7B 01:8A6B: AE        .byte off_8A16 + $100 - @start   ; 
; 02 
- D 0 - I - 0x004A7C 01:8A6C: 04        .byte $04   ; 
- D 0 - I - 0x004A7D 01:8A6D: D7        .byte off_8A3F + $100 - @start   ; 
; 03 
- D 0 - I - 0x004A7E 01:8A6E: FF        .byte $FF   ; 
- D 0 - I - 0x004A7F 01:8A6F: 5C        .byte off_89C4 + $100 - @start   ; 



off_8A70:
- D 0 - I - 0x004A80 01:8A70: 0C        .byte $0C   ; counter
- D 0 - I - 0x004A81 01:8A71: 04        .byte $04, $D9, $51, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x004A85 01:8A75: F4        .byte $F4, $D9, $4D, $00   ; 
- D 0 - I - 0x004A89 01:8A79: FC        .byte $FC, $D9, $4F, $00   ; 
- D 0 - I - 0x004A8D 01:8A7D: F4        .byte $F4, $E9, $27, $00   ; 
- D 0 - I - 0x004A91 01:8A81: FC        .byte $FC, $E9, $29, $00   ; 
- D 0 - I - 0x004A95 01:8A85: 04        .byte $04, $E9, $2B, $00   ; 
- D 0 - I - 0x004A99 01:8A89: 04        .byte $04, $08, $65, $00   ; 
- D 0 - I - 0x004A9D 01:8A8D: 04        .byte $04, $F8, $45, $01   ; 
- D 0 - I - 0x004AA1 01:8A91: F4        .byte $F4, $08, $61, $00   ; 
- D 0 - I - 0x004AA5 01:8A95: FC        .byte $FC, $08, $63, $00   ; 
- D 0 - I - 0x004AA9 01:8A99: F4        .byte $F4, $F8, $41, $01   ; 
- D 0 - I - 0x004AAD 01:8A9D: FC        .byte $FC, $F8, $43, $01   ; 



off_8AA1:
- D 0 - I - 0x004AB1 01:8AA1: 0C        .byte $0C   ; counter
- D 0 - I - 0x004AB2 01:8AA2: FC        .byte $FC, $08, $69, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x004AB6 01:8AA6: 04        .byte $04, $08, $6B, $00   ; 
- D 0 - I - 0x004ABA 01:8AAA: 04        .byte $04, $D8, $51, $00   ; 
- D 0 - I - 0x004ABE 01:8AAE: F4        .byte $F4, $D8, $4D, $00   ; 
- D 0 - I - 0x004AC2 01:8AB2: FC        .byte $FC, $D8, $4F, $00   ; 
- D 0 - I - 0x004AC6 01:8AB6: 04        .byte $04, $E8, $53, $00   ; 
- D 0 - I - 0x004ACA 01:8ABA: F4        .byte $F4, $E8, $6D, $00   ; 
- D 0 - I - 0x004ACE 01:8ABE: FC        .byte $FC, $E8, $6F, $00   ; 
- D 0 - I - 0x004AD2 01:8AC2: F4        .byte $F4, $08, $67, $00   ; 
- D 0 - I - 0x004AD6 01:8AC6: F4        .byte $F4, $F8, $47, $01   ; 
- D 0 - I - 0x004ADA 01:8ACA: FC        .byte $FC, $F8, $49, $01   ; 
- D 0 - I - 0x004ADE 01:8ACE: 04        .byte $04, $F8, $4B, $01   ; 



_off007_00_8AD2_26:
@start:
; 00 
- D 0 - I - 0x004AE2 01:8AD2: 08        .byte $08   ; 
- D 0 - I - 0x004AE3 01:8AD3: 9E        .byte off_8A70 + $100 - @start   ; 
; 01 
- D 0 - I - 0x004AE4 01:8AD4: 08        .byte $08   ; 
- D 0 - I - 0x004AE5 01:8AD5: CF        .byte off_8AA1 + $100 - @start   ; 
; 02 
- D 0 - I - 0x004AE6 01:8AD6: 00        .byte $00   ; 
- D 0 - I - 0x004AE7 01:8AD7: 9E        .byte off_8A70 + $100 - @start   ; 



off_8AD8:
- D 0 - I - 0x004AE8 01:8AD8: 0C        .byte $0C   ; counter
- D 0 - I - 0x004AE9 01:8AD9: 04        .byte $04, $D8, $05, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x004AED 01:8ADD: F4        .byte $F4, $D8, $01, $00   ; 
- D 0 - I - 0x004AF1 01:8AE1: FC        .byte $FC, $D8, $03, $00   ; 
- D 0 - I - 0x004AF5 01:8AE5: 04        .byte $04, $E8, $25, $00   ; 
- D 0 - I - 0x004AF9 01:8AE9: F4        .byte $F4, $E8, $21, $00   ; 
- D 0 - I - 0x004AFD 01:8AED: FC        .byte $FC, $E8, $23, $00   ; 
- D 0 - I - 0x004B01 01:8AF1: 04        .byte $04, $08, $65, $00   ; 
- D 0 - I - 0x004B05 01:8AF5: 04        .byte $04, $F8, $45, $01   ; 
- D 0 - I - 0x004B09 01:8AF9: F4        .byte $F4, $08, $61, $00   ; 
- D 0 - I - 0x004B0D 01:8AFD: FC        .byte $FC, $08, $63, $00   ; 
- D 0 - I - 0x004B11 01:8B01: F4        .byte $F4, $F8, $41, $01   ; 
- D 0 - I - 0x004B15 01:8B05: FC        .byte $FC, $F8, $43, $01   ; 



off_8B09:
- D 0 - I - 0x004B19 01:8B09: 0C        .byte $0C   ; counter
- D 0 - I - 0x004B1A 01:8B0A: FC        .byte $FC, $07, $69, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x004B1E 01:8B0E: 04        .byte $04, $07, $6B, $00   ; 
- D 0 - I - 0x004B22 01:8B12: 04        .byte $04, $D7, $05, $00   ; 
- D 0 - I - 0x004B26 01:8B16: F4        .byte $F4, $D7, $01, $00   ; 
- D 0 - I - 0x004B2A 01:8B1A: FC        .byte $FC, $D7, $03, $00   ; 
- D 0 - I - 0x004B2E 01:8B1E: 04        .byte $04, $E7, $25, $00   ; 
- D 0 - I - 0x004B32 01:8B22: F4        .byte $F4, $E7, $21, $00   ; 
- D 0 - I - 0x004B36 01:8B26: FC        .byte $FC, $E7, $23, $00   ; 
- D 0 - I - 0x004B3A 01:8B2A: F4        .byte $F4, $07, $67, $00   ; 
- D 0 - I - 0x004B3E 01:8B2E: F4        .byte $F4, $F7, $47, $01   ; 
- D 0 - I - 0x004B42 01:8B32: FC        .byte $FC, $F7, $49, $01   ; 
- D 0 - I - 0x004B46 01:8B36: 04        .byte $04, $F7, $4B, $01   ; 



_off007_00_8B3A_24:
_off007_00_8B3A_25:
_off007_00_8B3A_27:
_off007_00_8B3A_2A:
@start:
; 00 
- D 0 - I - 0x004B4A 01:8B3A: 0F        .byte $0F   ; 
- D 0 - I - 0x004B4B 01:8B3B: 9E        .byte off_8AD8 + $100 - @start   ; 
; 01 
- D 0 - I - 0x004B4C 01:8B3C: 0D        .byte $0D   ; 
- D 0 - I - 0x004B4D 01:8B3D: CF        .byte off_8B09 + $100 - @start   ; 
; 02 
- D 0 - I - 0x004B4E 01:8B3E: 00        .byte $00   ; 
- D 0 - I - 0x004B4F 01:8B3F: 9E        .byte off_8AD8 + $100 - @start   ; 



off_8B40:
- D 0 - I - 0x004B50 01:8B40: 0E        .byte $0E   ; counter
- D 0 - I - 0x004B51 01:8B41: EC        .byte $EC, $08, $2D, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x004B55 01:8B45: F4        .byte $F4, $08, $2F, $00   ; 
- D 0 - I - 0x004B59 01:8B49: FC        .byte $FC, $08, $31, $00   ; 
- D 0 - I - 0x004B5D 01:8B4D: 04        .byte $04, $08, $33, $00   ; 
- D 0 - I - 0x004B61 01:8B51: EC        .byte $EC, $F8, $0D, $00   ; 
- D 0 - I - 0x004B65 01:8B55: F4        .byte $F4, $F8, $0F, $00   ; 
- D 0 - I - 0x004B69 01:8B59: FC        .byte $FC, $F8, $11, $01   ; 
- D 0 - I - 0x004B6D 01:8B5D: 04        .byte $04, $F8, $13, $01   ; 
- D 0 - I - 0x004B71 01:8B61: 04        .byte $04, $E8, $25, $00   ; 
- D 0 - I - 0x004B75 01:8B65: 04        .byte $04, $D8, $05, $00   ; 
- D 0 - I - 0x004B79 01:8B69: F4        .byte $F4, $D8, $01, $00   ; 
- D 0 - I - 0x004B7D 01:8B6D: FC        .byte $FC, $D8, $03, $00   ; 
- D 0 - I - 0x004B81 01:8B71: F4        .byte $F4, $E8, $21, $00   ; 
- D 0 - I - 0x004B85 01:8B75: FC        .byte $FC, $E8, $23, $00   ; 



off_8B79:
- D 0 - I - 0x004B89 01:8B79: 0C        .byte $0C   ; counter
- D 0 - I - 0x004B8A 01:8B7A: F4        .byte $F4, $D9, $07, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x004B8E 01:8B7E: FC        .byte $FC, $D9, $09, $00   ; 
- D 0 - I - 0x004B92 01:8B82: 04        .byte $04, $D9, $0B, $00   ; 
- D 0 - I - 0x004B96 01:8B86: 04        .byte $04, $09, $39, $00   ; 
- D 0 - I - 0x004B9A 01:8B8A: F4        .byte $F4, $09, $35, $00   ; 
- D 0 - I - 0x004B9E 01:8B8E: FC        .byte $FC, $09, $37, $00   ; 
- D 0 - I - 0x004BA2 01:8B92: 04        .byte $04, $F9, $19, $01   ; 
- D 0 - I - 0x004BA6 01:8B96: F4        .byte $F4, $F9, $15, $01   ; 
- D 0 - I - 0x004BAA 01:8B9A: FC        .byte $FC, $F9, $17, $01   ; 
- D 0 - I - 0x004BAE 01:8B9E: 04        .byte $04, $E9, $25, $00   ; 
- D 0 - I - 0x004BB2 01:8BA2: F4        .byte $F4, $E9, $21, $00   ; 
- D 0 - I - 0x004BB6 01:8BA6: FC        .byte $FC, $E9, $23, $00   ; 



off_8BAA:
- D 0 - I - 0x004BBA 01:8BAA: 0C        .byte $0C   ; counter
- D 0 - I - 0x004BBB 01:8BAB: 04        .byte $04, $08, $55, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x004BBF 01:8BAF: F4        .byte $F4, $08, $3B, $00   ; 
- D 0 - I - 0x004BC3 01:8BB3: FC        .byte $FC, $08, $3D, $00   ; 
- D 0 - I - 0x004BC7 01:8BB7: F4        .byte $F4, $F8, $1B, $01   ; 
- D 0 - I - 0x004BCB 01:8BBB: FC        .byte $FC, $F8, $1D, $01   ; 
- D 0 - I - 0x004BCF 01:8BBF: 04        .byte $04, $F8, $1F, $01   ; 
- D 0 - I - 0x004BD3 01:8BC3: 04        .byte $04, $E8, $25, $00   ; 
- D 0 - I - 0x004BD7 01:8BC7: 04        .byte $04, $D8, $05, $00   ; 
- D 0 - I - 0x004BDB 01:8BCB: F4        .byte $F4, $D8, $01, $00   ; 
- D 0 - I - 0x004BDF 01:8BCF: FC        .byte $FC, $D8, $03, $00   ; 
- D 0 - I - 0x004BE3 01:8BD3: F4        .byte $F4, $E8, $21, $00   ; 
- D 0 - I - 0x004BE7 01:8BD7: FC        .byte $FC, $E8, $23, $00   ; 



_off007_00_8BDB_29:
@start:
; 00 
- D 0 - I - 0x004BEB 01:8BDB: 07        .byte $07   ; 
- D 0 - I - 0x004BEC 01:8BDC: 65        .byte off_8B40 + $100 - @start   ; 
; 01 
- D 0 - I - 0x004BED 01:8BDD: 0B        .byte $0B   ; 
- D 0 - I - 0x004BEE 01:8BDE: 9E        .byte off_8B79 + $100 - @start   ; 
; 02 
- D 0 - I - 0x004BEF 01:8BDF: 03        .byte $03   ; 
- D 0 - I - 0x004BF0 01:8BE0: CF        .byte off_8BAA + $100 - @start   ; 
; 03 
- D 0 - I - 0x004BF1 01:8BE1: FF        .byte $FF   ; 
- D 0 - I - 0x004BF2 01:8BE2: CF        .byte off_8BAA + $100 - @start   ; 



off_8BE3:
- D 0 - I - 0x004BF3 01:8BE3: 06        .byte $06   ; counter
- D 0 - I - 0x004BF4 01:8BE4: F4        .byte $F4, $00, $47, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x004BF8 01:8BE8: F4        .byte $F4, $F0, $27, $00   ; 
- D 0 - I - 0x004BFC 01:8BEC: FC        .byte $FC, $00, $49, $00   ; 
- D 0 - I - 0x004C00 01:8BF0: 04        .byte $04, $00, $4B, $00   ; 
- D 0 - I - 0x004C04 01:8BF4: FC        .byte $FC, $F0, $29, $01   ; 
- D 0 - I - 0x004C08 01:8BF8: 04        .byte $04, $F0, $2B, $01   ; 



off_8BFC:
- D 0 - I - 0x004C0C 01:8BFC: 06        .byte $06   ; counter
- D 0 - I - 0x004C0D 01:8BFD: 04        .byte $04, $F0, $61, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x004C11 01:8C01: FC        .byte $FC, $F0, $37, $01   ; 
- D 0 - I - 0x004C15 01:8C05: F4        .byte $F4, $00, $47, $00   ; 
- D 0 - I - 0x004C19 01:8C09: F4        .byte $F4, $F0, $27, $00   ; 
- D 0 - I - 0x004C1D 01:8C0D: FC        .byte $FC, $00, $49, $00   ; 
- D 0 - I - 0x004C21 01:8C11: 04        .byte $04, $00, $4B, $00   ; 
- - - - - - 0x004C25 01:8C15: 06        .byte $06   ; 
- - - - - - 0x004C26 01:8C16: F4        .byte $F4, $00, $47, $00   ; 
- - - - - - 0x004C2A 01:8C1A: F4        .byte $F4, $F0, $27, $00   ; 
- - - - - - 0x004C2E 01:8C1E: FC        .byte $FC, $00, $49, $00   ; 
- - - - - - 0x004C32 01:8C22: 04        .byte $04, $00, $4B, $00   ; 
- - - - - - 0x004C36 01:8C26: FC        .byte $FC, $F0, $29, $01   ; 
- - - - - - 0x004C3A 01:8C2A: 04        .byte $04, $F0, $2B, $01   ; 



_off007_00_8C2E_2B:
@start:
; 00 
- D 0 - I - 0x004C3E 01:8C2E: 20        .byte $20   ; 
- D 0 - I - 0x004C3F 01:8C2F: B5        .byte off_8BE3 + $100 - @start   ; 
; 01 
- D 0 - I - 0x004C40 01:8C30: 1B        .byte $1B   ; 
- D 0 - I - 0x004C41 01:8C31: CE        .byte off_8BFC + $100 - @start   ; 
; 02 
- - - - - - 0x004C42 01:8C32: 00        .byte $00   ; 
- - - - - - 0x004C43 01:8C33: B5        .byte off_8BE3 + $100 - @start   ; 



off_8C34:
- D 0 - I - 0x004C44 01:8C34: 06        .byte $06   ; counter
- D 0 - I - 0x004C45 01:8C35: 04        .byte $04, $00, $31, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x004C49 01:8C39: 04        .byte $04, $F0, $11, $01   ; 
- D 0 - I - 0x004C4D 01:8C3D: F4        .byte $F4, $00, $2D, $00   ; 
- D 0 - I - 0x004C51 01:8C41: FC        .byte $FC, $00, $2F, $00   ; 
- D 0 - I - 0x004C55 01:8C45: F4        .byte $F4, $F0, $0D, $01   ; 
- D 0 - I - 0x004C59 01:8C49: FC        .byte $FC, $F0, $0F, $01   ; 



off_8C4D:
- D 0 - I - 0x004C5D 01:8C4D: 05        .byte $05   ; counter
- D 0 - I - 0x004C5E 01:8C4E: F4        .byte $F4, $F0, $13, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x004C62 01:8C52: F4        .byte $F4, $00, $33, $00   ; 
- D 0 - I - 0x004C66 01:8C56: FC        .byte $FC, $00, $35, $00   ; 
- D 0 - I - 0x004C6A 01:8C5A: FC        .byte $FC, $F0, $15, $01   ; 
- D 0 - I - 0x004C6E 01:8C5E: 04        .byte $04, $F0, $17, $01   ; 



off_8C62:
- D 0 - I - 0x004C72 01:8C62: 06        .byte $06   ; counter
- D 0 - I - 0x004C73 01:8C63: 04        .byte $04, $00, $3D, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x004C77 01:8C67: 04        .byte $04, $F0, $1D, $01   ; 
- D 0 - I - 0x004C7B 01:8C6B: F4        .byte $F4, $00, $39, $00   ; 
- D 0 - I - 0x004C7F 01:8C6F: FC        .byte $FC, $00, $3B, $00   ; 
- D 0 - I - 0x004C83 01:8C73: F4        .byte $F4, $F0, $19, $01   ; 
- D 0 - I - 0x004C87 01:8C77: FC        .byte $FC, $F0, $1B, $01   ; 



_off007_00_8C7B_2C:
@start:
; 00 
- D 0 - I - 0x004C8B 01:8C7B: 02        .byte $02   ; 
- D 0 - I - 0x004C8C 01:8C7C: E7        .byte off_8C62 + $100 - @start   ; 
; 01 
- D 0 - I - 0x004C8D 01:8C7D: 06        .byte $06   ; 
- D 0 - I - 0x004C8E 01:8C7E: D2        .byte off_8C4D + $100 - @start   ; 
; 02 
- D 0 - I - 0x004C8F 01:8C7F: 08        .byte $08   ; 
- D 0 - I - 0x004C90 01:8C80: B9        .byte off_8C34 + $100 - @start   ; 
; 03 
- D 0 - I - 0x004C91 01:8C81: 06        .byte $06   ; 
- D 0 - I - 0x004C92 01:8C82: D2        .byte off_8C4D + $100 - @start   ; 
; 04 
- D 0 - I - 0x004C93 01:8C83: 06        .byte $06   ; 
- D 0 - I - 0x004C94 01:8C84: E7        .byte off_8C62 + $100 - @start   ; 
; 05 
- D 0 - I - 0x004C95 01:8C85: 00        .byte $00   ; 
- D 0 - I - 0x004C96 01:8C86: B9        .byte off_8C34 + $100 - @start   ; 



off_8C87:
- D 0 - I - 0x004C97 01:8C87: 0A        .byte $0A   ; counter
- D 0 - I - 0x004C98 01:8C88: 06        .byte $06, $E0, $01, $40   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x004C9C 01:8C8C: F0        .byte $F0, $F0, $07, $01   ; 
- D 0 - I - 0x004CA0 01:8C90: F8        .byte $F8, $F0, $63, $01   ; 
- D 0 - I - 0x004CA4 01:8C94: F1        .byte $F1, $00, $67, $00   ; 
- D 0 - I - 0x004CA8 01:8C98: F9        .byte $F9, $00, $69, $00   ; 
- D 0 - I - 0x004CAC 01:8C9C: 01        .byte $01, $00, $6B, $00   ; 
- D 0 - I - 0x004CB0 01:8CA0: 00        .byte $00, $F0, $65, $01   ; 
- D 0 - I - 0x004CB4 01:8CA4: F8        .byte $F8, $E0, $03, $00   ; 
- D 0 - I - 0x004CB8 01:8CA8: 00        .byte $00, $E0, $05, $00   ; 
- D 0 - I - 0x004CBC 01:8CAC: F0        .byte $F0, $E0, $01, $00   ; 



off_8CB0:
- D 0 - I - 0x004CC0 01:8CB0: 0C        .byte $0C   ; counter
- D 0 - I - 0x004CC1 01:8CB1: 06        .byte $06, $E1, $01, $40   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x004CC5 01:8CB5: 00        .byte $00, $E1, $05, $00   ; 
- D 0 - I - 0x004CC9 01:8CB9: F8        .byte $F8, $F0, $53, $01   ; 
- D 0 - I - 0x004CCD 01:8CBD: F0        .byte $F0, $F0, $07, $01   ; 
- D 0 - I - 0x004CD1 01:8CC1: 00        .byte $00, $F0, $55, $01   ; 
- D 0 - I - 0x004CD5 01:8CC5: F0        .byte $F0, $E1, $01, $00   ; 
- D 0 - I - 0x004CD9 01:8CC9: F8        .byte $F8, $E1, $03, $00   ; 
- D 0 - I - 0x004CDD 01:8CCD: F8        .byte $F8, $F0, $63, $01   ; 
- D 0 - I - 0x004CE1 01:8CD1: 00        .byte $00, $F0, $65, $01   ; 
- D 0 - I - 0x004CE5 01:8CD5: 00        .byte $00, $00, $51, $01   ; 
- D 0 - I - 0x004CE9 01:8CD9: F9        .byte $F9, $00, $4F, $00   ; 
- D 0 - I - 0x004CED 01:8CDD: F1        .byte $F1, $00, $4D, $00   ; 



_off007_00_8CE1_2D:
@start:
; 00 
- D 0 - I - 0x004CF1 01:8CE1: 08        .byte $08   ; 
- D 0 - I - 0x004CF2 01:8CE2: A6        .byte off_8C87 + $100 - @start   ; 
; 01 
- D 0 - I - 0x004CF3 01:8CE3: 08        .byte $08   ; 
- D 0 - I - 0x004CF4 01:8CE4: CF        .byte off_8CB0 + $100 - @start   ; 
; 02 
- D 0 - I - 0x004CF5 01:8CE5: 00        .byte $00   ; 
- D 0 - I - 0x004CF6 01:8CE6: A6        .byte off_8C87 + $100 - @start   ; 



off_8CE7:
- D 0 - I - 0x004CF7 01:8CE7: 0A        .byte $0A   ; counter
- D 0 - I - 0x004CF8 01:8CE8: 06        .byte $06, $E0, $01, $40   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x004CFC 01:8CEC: 00        .byte $00, $F0, $25, $01   ; 
- D 0 - I - 0x004D00 01:8CF0: 00        .byte $00, $00, $45, $00   ; 
- D 0 - I - 0x004D04 01:8CF4: F8        .byte $F8, $E0, $03, $00   ; 
- D 0 - I - 0x004D08 01:8CF8: 00        .byte $00, $E0, $05, $00   ; 
- D 0 - I - 0x004D0C 01:8CFC: F0        .byte $F0, $E0, $01, $00   ; 
- D 0 - I - 0x004D10 01:8D00: F0        .byte $F0, $00, $41, $00   ; 
- D 0 - I - 0x004D14 01:8D04: F8        .byte $F8, $00, $43, $00   ; 
- D 0 - I - 0x004D18 01:8D08: F0        .byte $F0, $F0, $21, $01   ; 
- D 0 - I - 0x004D1C 01:8D0C: F8        .byte $F8, $F0, $23, $01   ; 



off_8D10:
- D 0 - I - 0x004D20 01:8D10: 0C        .byte $0C   ; counter
- D 0 - I - 0x004D21 01:8D11: 06        .byte $06, $E1, $01, $40   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x004D25 01:8D15: 00        .byte $00, $F1, $55, $01   ; 
- D 0 - I - 0x004D29 01:8D19: F8        .byte $F8, $F1, $53, $01   ; 
- D 0 - I - 0x004D2D 01:8D1D: 00        .byte $00, $F1, $25, $01   ; 
- D 0 - I - 0x004D31 01:8D21: F0        .byte $F0, $F1, $21, $01   ; 
- D 0 - I - 0x004D35 01:8D25: F8        .byte $F8, $F1, $23, $01   ; 
- D 0 - I - 0x004D39 01:8D29: F8        .byte $F8, $E1, $03, $00   ; 
- D 0 - I - 0x004D3D 01:8D2D: 00        .byte $00, $E1, $05, $00   ; 
- D 0 - I - 0x004D41 01:8D31: F0        .byte $F0, $E1, $01, $00   ; 
- D 0 - I - 0x004D45 01:8D35: 00        .byte $00, $01, $45, $00   ; 
- D 0 - I - 0x004D49 01:8D39: F0        .byte $F0, $01, $41, $00   ; 
- D 0 - I - 0x004D4D 01:8D3D: F8        .byte $F8, $01, $43, $00   ; 



_off007_00_8D41_2E:
_off007_00_8D41_31:
@start:
; 00 
- D 0 - I - 0x004D51 01:8D41: 0A        .byte $0A   ; 
- D 0 - I - 0x004D52 01:8D42: A6        .byte off_8CE7 + $100 - @start   ; 
; 01 
- D 0 - I - 0x004D53 01:8D43: 0A        .byte $0A   ; 
- D 0 - I - 0x004D54 01:8D44: CF        .byte off_8D10 + $100 - @start   ; 
; 02 
- D 0 - I - 0x004D55 01:8D45: 00        .byte $00   ; 
- D 0 - I - 0x004D56 01:8D46: A6        .byte off_8CE7 + $100 - @start   ; 



off_8D47:
- - - - - - 0x004D57 01:8D47: 06        .byte $06   ; counter
- - - - - - 0x004D58 01:8D48: 04        .byte $04, $00, $31, $00   ; spr_X, spr_Y, spr_T, spr_A
- - - - - - 0x004D5C 01:8D4C: 04        .byte $04, $F0, $11, $01   ; 
- - - - - - 0x004D60 01:8D50: F4        .byte $F4, $00, $2D, $00   ; 
- - - - - - 0x004D64 01:8D54: FC        .byte $FC, $00, $2F, $00   ; 
- - - - - - 0x004D68 01:8D58: F4        .byte $F4, $F0, $0D, $01   ; 
- - - - - - 0x004D6C 01:8D5C: FC        .byte $FC, $F0, $0F, $01   ; 



off_8D60:
- - - - - - 0x004D70 01:8D60: 06        .byte $06   ; counter
- - - - - - 0x004D71 01:8D61: 02        .byte $02, $00, $51, $01   ; spr_X, spr_Y, spr_T, spr_A
- - - - - - 0x004D75 01:8D65: F2        .byte $F2, $00, $09, $00   ; 
- - - - - - 0x004D79 01:8D69: FA        .byte $FA, $00, $0B, $00   ; 
- - - - - - 0x004D7D 01:8D6D: F4        .byte $F4, $F0, $13, $00   ; 
- - - - - - 0x004D81 01:8D71: FC        .byte $FC, $F0, $15, $01   ; 
- - - - - - 0x004D85 01:8D75: 04        .byte $04, $F0, $17, $01   ; 



off_8D79:
- - - - - - 0x004D89 01:8D79: 06        .byte $06   ; counter
- - - - - - 0x004D8A 01:8D7A: 04        .byte $04, $00, $3D, $00   ; spr_X, spr_Y, spr_T, spr_A
- - - - - - 0x004D8E 01:8D7E: 04        .byte $04, $F0, $1D, $01   ; 
- - - - - - 0x004D92 01:8D82: F4        .byte $F4, $00, $39, $00   ; 
- - - - - - 0x004D96 01:8D86: FC        .byte $FC, $00, $3B, $00   ; 
- - - - - - 0x004D9A 01:8D8A: F4        .byte $F4, $F0, $19, $01   ; 
- - - - - - 0x004D9E 01:8D8E: FC        .byte $FC, $F0, $1B, $01   ; 



_off007_00_8D92_30:
@start:
; 00 
- - - - - - 0x004DA2 01:8D92: 07        .byte $07   ; 
- - - - - - 0x004DA3 01:8D93: B5        .byte off_8D47 + $100 - @start   ; 
; 01 
- - - - - - 0x004DA4 01:8D94: 04        .byte $04   ; 
- - - - - - 0x004DA5 01:8D95: CE        .byte off_8D60 + $100 - @start   ; 
; 02 
- - - - - - 0x004DA6 01:8D96: 07        .byte $07   ; 
- - - - - - 0x004DA7 01:8D97: B5        .byte off_8D47 + $100 - @start   ; 
; 03 
- - - - - - 0x004DA8 01:8D98: 04        .byte $04   ; 
- - - - - - 0x004DA9 01:8D99: CE        .byte off_8D60 + $100 - @start   ; 
; 04 
- - - - - - 0x004DAA 01:8D9A: FF        .byte $FF   ; 
- - - - - - 0x004DAB 01:8D9B: CE        .byte off_8D60 + $100 - @start   ; 


; bzk garbage
off_8D9C:
- - - - - - 0x004DAC 01:8D9C: 08        .byte $08   ; counter
- - - - - - 0x004DAD 01:8D9D: 08        .byte $08, $18, $6F, $00   ; spr_X, spr_Y, spr_T, spr_A
- - - - - - 0x004DB1 01:8DA1: 00        .byte $00, $10, $3D, $00   ; 
- - - - - - 0x004DB5 01:8DA5: F0        .byte $F0, $10, $39, $00   ; 
- - - - - - 0x004DB9 01:8DA9: F8        .byte $F8, $10, $3B, $00   ; 
- - - - - - 0x004DBD 01:8DAD: F8        .byte $F8, $00, $1B, $00   ; 
- - - - - - 0x004DC1 01:8DB1: F0        .byte $F0, $00, $19, $00   ; 
- - - - - - 0x004DC5 01:8DB5: 08        .byte $08, $00, $1F, $00   ; 
- - - - - - 0x004DC9 01:8DB9: 00        .byte $00, $00, $1D, $00   ; 


; bzk garbage
off_8DBD:
- - - - - - 0x004DCD 01:8DBD: 08        .byte $08   ; counter
- - - - - - 0x004DCE 01:8DBE: 08        .byte $08, $18, $77, $00   ; spr_X, spr_Y, spr_T, spr_A
- - - - - - 0x004DD2 01:8DC2: 00        .byte $00, $18, $75, $00   ; 
- - - - - - 0x004DD6 01:8DC6: F8        .byte $F8, $18, $73, $00   ; 
- - - - - - 0x004DDA 01:8DCA: F0        .byte $F0, $18, $71, $00   ; 
- - - - - - 0x004DDE 01:8DCE: F8        .byte $F8, $00, $1B, $00   ; 
- - - - - - 0x004DE2 01:8DD2: F0        .byte $F0, $00, $19, $00   ; 
- - - - - - 0x004DE6 01:8DD6: 08        .byte $08, $00, $1F, $00   ; 
- - - - - - 0x004DEA 01:8DDA: 00        .byte $00, $00, $1D, $00   ; 


; bzk garbage
loc_8DDE:   ; needed for local label scope, other than that is useless
@start:
; 00 
- - - - - - 0x004DEE 01:8DDE: 08        .byte $08   ; 
- - - - - - 0x004DEF 01:8DDF: BE        .byte off_8D9C + $100 - @start   ; 
; 01 
- - - - - - 0x004DF0 01:8DE0: 08        .byte $08   ; 
- - - - - - 0x004DF1 01:8DE1: DF        .byte off_8DBD + $100 - @start   ; 
; 02 
- - - - - - 0x004DF2 01:8DE2: 00        .byte $00   ; 
- - - - - - 0x004DF3 01:8DE3: BE        .byte off_8D9C + $100 - @start   ; 



off_8DE4:
- D 0 - I - 0x004DF4 01:8DE4: 0A        .byte $0A   ; counter
- D 0 - I - 0x004DF5 01:8DE5: 08        .byte $08, $00, $39, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x004DF9 01:8DE9: 08        .byte $08, $F0, $1F, $00   ; 
- D 0 - I - 0x004DFD 01:8DED: 00        .byte $00, $00, $25, $00   ; 
- D 0 - I - 0x004E01 01:8DF1: F0        .byte $F0, $F0, $19, $00   ; 
- D 0 - I - 0x004E05 01:8DF5: F8        .byte $F8, $F0, $61, $01   ; 
- D 0 - I - 0x004E09 01:8DF9: 00        .byte $00, $F0, $63, $01   ; 
- D 0 - I - 0x004E0D 01:8DFD: F0        .byte $F0, $00, $21, $00   ; 
- D 0 - I - 0x004E11 01:8E01: F8        .byte $F8, $00, $23, $00   ; 
- D 0 - I - 0x004E15 01:8E05: F0        .byte $F0, $00, $21, $00   ; 
- D 0 - I - 0x004E19 01:8E09: F8        .byte $F8, $00, $23, $00   ; 



off_8E0D:
- D 0 - I - 0x004E1D 01:8E0D: 08        .byte $08   ; counter
- D 0 - I - 0x004E1E 01:8E0E: 08        .byte $08, $00, $53, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x004E22 01:8E12: 08        .byte $08, $F0, $33, $00   ; 
- D 0 - I - 0x004E26 01:8E16: 00        .byte $00, $00, $2D, $00   ; 
- D 0 - I - 0x004E2A 01:8E1A: F0        .byte $F0, $F0, $19, $00   ; 
- D 0 - I - 0x004E2E 01:8E1E: F8        .byte $F8, $F0, $1B, $01   ; 
- D 0 - I - 0x004E32 01:8E22: 00        .byte $00, $F0, $1D, $01   ; 
- D 0 - I - 0x004E36 01:8E26: F0        .byte $F0, $00, $29, $00   ; 
- D 0 - I - 0x004E3A 01:8E2A: F8        .byte $F8, $00, $2B, $00   ; 



off_8E2E:
- D 0 - I - 0x004E3E 01:8E2E: 0A        .byte $0A   ; counter
- D 0 - I - 0x004E3F 01:8E2F: 08        .byte $08, $00, $3D, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x004E43 01:8E33: 08        .byte $08, $F0, $3B, $00   ; 
- D 0 - I - 0x004E47 01:8E37: 00        .byte $00, $00, $25, $00   ; 
- D 0 - I - 0x004E4B 01:8E3B: F0        .byte $F0, $F0, $19, $00   ; 
- D 0 - I - 0x004E4F 01:8E3F: F8        .byte $F8, $F0, $61, $01   ; 
- D 0 - I - 0x004E53 01:8E43: 00        .byte $00, $F0, $63, $01   ; 
- D 0 - I - 0x004E57 01:8E47: F0        .byte $F0, $00, $21, $00   ; 
- D 0 - I - 0x004E5B 01:8E4B: F8        .byte $F8, $00, $23, $00   ; 
- D 0 - I - 0x004E5F 01:8E4F: F0        .byte $F0, $00, $21, $00   ; 
- D 0 - I - 0x004E63 01:8E53: F8        .byte $F8, $00, $23, $00   ; 



_off007_00_8E57_32:
@start:
; 00 
- D 0 - I - 0x004E67 01:8E57: 08        .byte $08   ; 
- D 0 - I - 0x004E68 01:8E58: 8D        .byte off_8DE4 + $100 - @start   ; 
; 01 
- D 0 - I - 0x004E69 01:8E59: 08        .byte $08   ; 
- D 0 - I - 0x004E6A 01:8E5A: B6        .byte off_8E0D + $100 - @start   ; 
; 02 
- D 0 - I - 0x004E6B 01:8E5B: 08        .byte $08   ; 
- D 0 - I - 0x004E6C 01:8E5C: D7        .byte off_8E2E + $100 - @start   ; 
; 03 
- D 0 - I - 0x004E6D 01:8E5D: 08        .byte $08   ; 
- D 0 - I - 0x004E6E 01:8E5E: B6        .byte off_8E0D + $100 - @start   ; 
; 04 
- D 0 - I - 0x004E6F 01:8E5F: 00        .byte $00   ; 
- D 0 - I - 0x004E70 01:8E60: 8D        .byte off_8DE4 + $100 - @start   ; 



off_8E61:
- D 0 - I - 0x004E71 01:8E61: 0B        .byte $0B   ; counter
- D 0 - I - 0x004E72 01:8E62: 08        .byte $08, $00, $6D, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x004E76 01:8E66: 08        .byte $08, $F0, $4D, $01   ; 
- D 0 - I - 0x004E7A 01:8E6A: E8        .byte $E8, $F0, $45, $00   ; 
- D 0 - I - 0x004E7E 01:8E6E: F0        .byte $F0, $F0, $47, $00   ; 
- D 0 - I - 0x004E82 01:8E72: 00        .byte $00, $F0, $4B, $01   ; 
- D 0 - I - 0x004E86 01:8E76: F8        .byte $F8, $F0, $49, $01   ; 
- D 0 - I - 0x004E8A 01:8E7A: E8        .byte $E8, $06, $17, $01   ; 
- D 0 - I - 0x004E8E 01:8E7E: E8        .byte $E8, $00, $65, $00   ; 
- D 0 - I - 0x004E92 01:8E82: F0        .byte $F0, $00, $67, $00   ; 
- D 0 - I - 0x004E96 01:8E86: F8        .byte $F8, $00, $69, $00   ; 
- D 0 - I - 0x004E9A 01:8E8A: 00        .byte $00, $00, $6B, $00   ; 



off_8E8E:
- D 0 - I - 0x004E9E 01:8E8E: 0B        .byte $0B   ; counter
- D 0 - I - 0x004E9F 01:8E8F: 08        .byte $08, $00, $51, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x004EA3 01:8E93: 08        .byte $08, $F0, $4F, $01   ; 
- D 0 - I - 0x004EA7 01:8E97: E8        .byte $E8, $F0, $45, $00   ; 
- D 0 - I - 0x004EAB 01:8E9B: F0        .byte $F0, $F0, $47, $00   ; 
- D 0 - I - 0x004EAF 01:8E9F: F8        .byte $F8, $F0, $6F, $01   ; 
- D 0 - I - 0x004EB3 01:8EA3: 00        .byte $00, $F0, $71, $01   ; 
- D 0 - I - 0x004EB7 01:8EA7: E4        .byte $E4, $08, $15, $01   ; 
- D 0 - I - 0x004EBB 01:8EAB: E8        .byte $E8, $00, $65, $00   ; 
- D 0 - I - 0x004EBF 01:8EAF: F0        .byte $F0, $00, $67, $00   ; 
- D 0 - I - 0x004EC3 01:8EB3: F8        .byte $F8, $00, $69, $00   ; 
- D 0 - I - 0x004EC7 01:8EB7: 00        .byte $00, $00, $6B, $00   ; 



off_8EBB:
- D 0 - I - 0x004ECB 01:8EBB: 0B        .byte $0B   ; counter
- D 0 - I - 0x004ECC 01:8EBC: 08        .byte $08, $00, $75, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x004ED0 01:8EC0: 08        .byte $08, $F0, $73, $01   ; 
- D 0 - I - 0x004ED4 01:8EC4: E8        .byte $E8, $F0, $45, $00   ; 
- D 0 - I - 0x004ED8 01:8EC8: F0        .byte $F0, $F0, $47, $00   ; 
- D 0 - I - 0x004EDC 01:8ECC: D8        .byte $D8, $09, $13, $01   ; 
- D 0 - I - 0x004EE0 01:8ED0: 00        .byte $00, $F0, $4B, $01   ; 
- D 0 - I - 0x004EE4 01:8ED4: F8        .byte $F8, $F0, $49, $01   ; 
- D 0 - I - 0x004EE8 01:8ED8: E8        .byte $E8, $00, $65, $00   ; 
- D 0 - I - 0x004EEC 01:8EDC: F0        .byte $F0, $00, $67, $00   ; 
- D 0 - I - 0x004EF0 01:8EE0: F8        .byte $F8, $00, $69, $00   ; 
- D 0 - I - 0x004EF4 01:8EE4: 00        .byte $00, $00, $6B, $00   ; 



_off007_00_8EE8_34:
@start:
; 00 
- D 0 - I - 0x004EF8 01:8EE8: 08        .byte $08   ; 
- D 0 - I - 0x004EF9 01:8EE9: 79        .byte off_8E61 + $100 - @start   ; 
; 01 
- D 0 - I - 0x004EFA 01:8EEA: 08        .byte $08   ; 
- D 0 - I - 0x004EFB 01:8EEB: A6        .byte off_8E8E + $100 - @start   ; 
; 02 
- D 0 - I - 0x004EFC 01:8EEC: 08        .byte $08   ; 
- D 0 - I - 0x004EFD 01:8EED: D3        .byte off_8EBB + $100 - @start   ; 
; 03 
- D 0 - I - 0x004EFE 01:8EEE: 08        .byte $08   ; 
- D 0 - I - 0x004EFF 01:8EEF: A6        .byte off_8E8E + $100 - @start   ; 
; 04 
- D 0 - I - 0x004F00 01:8EF0: 00        .byte $00   ; 
- D 0 - I - 0x004F01 01:8EF1: 79        .byte off_8E61 + $100 - @start   ; 



off_8EF2:
- D 0 - I - 0x004F02 01:8EF2: 09        .byte $09   ; counter
- D 0 - I - 0x004F03 01:8EF3: 08        .byte $08, $00, $27, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x004F07 01:8EF7: 08        .byte $08, $F0, $07, $01   ; 
- D 0 - I - 0x004F0B 01:8EFB: 00        .byte $00, $F0, $05, $01   ; 
- D 0 - I - 0x004F0F 01:8EFF: F8        .byte $F8, $F0, $03, $01   ; 
- D 0 - I - 0x004F13 01:8F03: F0        .byte $F0, $F0, $01, $00   ; 
- D 0 - I - 0x004F17 01:8F07: E8        .byte $E8, $00, $17, $02   ; 
- D 0 - I - 0x004F1B 01:8F0B: F8        .byte $F8, $00, $23, $00   ; 
- D 0 - I - 0x004F1F 01:8F0F: 00        .byte $00, $00, $25, $00   ; 
- D 0 - I - 0x004F23 01:8F13: F0        .byte $F0, $00, $21, $00   ; 



off_8F17:
- D 0 - I - 0x004F27 01:8F17: 09        .byte $09   ; counter
- D 0 - I - 0x004F28 01:8F18: 08        .byte $08, $00, $2F, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x004F2C 01:8F1C: 08        .byte $08, $F0, $0F, $01   ; 
- D 0 - I - 0x004F30 01:8F20: 00        .byte $00, $F0, $0D, $01   ; 
- D 0 - I - 0x004F34 01:8F24: F8        .byte $F8, $F0, $0B, $01   ; 
- D 0 - I - 0x004F38 01:8F28: F0        .byte $F0, $F0, $09, $00   ; 
- D 0 - I - 0x004F3C 01:8F2C: E5        .byte $E5, $00, $15, $02   ; 
- D 0 - I - 0x004F40 01:8F30: F8        .byte $F8, $00, $2B, $00   ; 
- D 0 - I - 0x004F44 01:8F34: 00        .byte $00, $00, $2D, $00   ; 
- D 0 - I - 0x004F48 01:8F38: F0        .byte $F0, $00, $29, $00   ; 



off_8F3C:
- D 0 - I - 0x004F4C 01:8F3C: 08        .byte $08   ; counter
- D 0 - I - 0x004F4D 01:8F3D: 08        .byte $08, $00, $31, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x004F51 01:8F41: 08        .byte $08, $F0, $11, $01   ; 
- D 0 - I - 0x004F55 01:8F45: 00        .byte $00, $F0, $05, $01   ; 
- D 0 - I - 0x004F59 01:8F49: F8        .byte $F8, $F0, $03, $01   ; 
- D 0 - I - 0x004F5D 01:8F4D: F0        .byte $F0, $F0, $01, $00   ; 
- D 0 - I - 0x004F61 01:8F51: F8        .byte $F8, $00, $23, $00   ; 
- D 0 - I - 0x004F65 01:8F55: 00        .byte $00, $00, $25, $00   ; 
- D 0 - I - 0x004F69 01:8F59: F0        .byte $F0, $00, $21, $00   ; 



_off007_00_8F5D_33:
_off007_00_8F5D_35:
_off007_00_8F5D_38:
@start:
; 00 
- D 0 - I - 0x004F6D 01:8F5D: 08        .byte $08   ; 
- D 0 - I - 0x004F6E 01:8F5E: 95        .byte off_8EF2 + $100 - @start   ; 
; 01 
- D 0 - I - 0x004F6F 01:8F5F: 08        .byte $08   ; 
- D 0 - I - 0x004F70 01:8F60: BA        .byte off_8F17 + $100 - @start   ; 
; 02 
- D 0 - I - 0x004F71 01:8F61: 08        .byte $08   ; 
- D 0 - I - 0x004F72 01:8F62: DF        .byte off_8F3C + $100 - @start   ; 
; 03 
- D 0 - I - 0x004F73 01:8F63: 08        .byte $08   ; 
- D 0 - I - 0x004F74 01:8F64: BA        .byte off_8F17 + $100 - @start   ; 
; 04 
- D 0 - I - 0x004F75 01:8F65: 00        .byte $00   ; 
- D 0 - I - 0x004F76 01:8F66: 95        .byte off_8EF2 + $100 - @start   ; 



off_8F67:
- D 0 - I - 0x004F77 01:8F67: 09        .byte $09   ; counter
- D 0 - I - 0x004F78 01:8F68: 08        .byte $08, $00, $27, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x004F7C 01:8F6C: 08        .byte $08, $F0, $07, $01   ; 
- D 0 - I - 0x004F80 01:8F70: 00        .byte $00, $F0, $05, $01   ; 
- D 0 - I - 0x004F84 01:8F74: F8        .byte $F8, $F0, $03, $01   ; 
- D 0 - I - 0x004F88 01:8F78: F0        .byte $F0, $F0, $01, $00   ; 
- D 0 - I - 0x004F8C 01:8F7C: E8        .byte $E8, $00, $17, $02   ; 
- D 0 - I - 0x004F90 01:8F80: F8        .byte $F8, $00, $23, $00   ; 
- D 0 - I - 0x004F94 01:8F84: 00        .byte $00, $00, $25, $00   ; 
- D 0 - I - 0x004F98 01:8F88: F0        .byte $F0, $00, $21, $00   ; 



off_8F8C:
- D 0 - I - 0x004F9C 01:8F8C: 09        .byte $09   ; counter
- D 0 - I - 0x004F9D 01:8F8D: 08        .byte $08, $00, $2F, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x004FA1 01:8F91: 08        .byte $08, $F0, $0F, $01   ; 
- D 0 - I - 0x004FA5 01:8F95: 00        .byte $00, $F0, $0D, $01   ; 
- D 0 - I - 0x004FA9 01:8F99: F8        .byte $F8, $F0, $0B, $01   ; 
- D 0 - I - 0x004FAD 01:8F9D: F0        .byte $F0, $F0, $09, $00   ; 
- D 0 - I - 0x004FB1 01:8FA1: E5        .byte $E5, $00, $15, $02   ; 
- D 0 - I - 0x004FB5 01:8FA5: F8        .byte $F8, $00, $2B, $00   ; 
- D 0 - I - 0x004FB9 01:8FA9: 00        .byte $00, $00, $2D, $00   ; 
- D 0 - I - 0x004FBD 01:8FAD: F0        .byte $F0, $00, $29, $00   ; 



off_8FB1:
- D 0 - I - 0x004FC1 01:8FB1: 08        .byte $08   ; counter
- D 0 - I - 0x004FC2 01:8FB2: 08        .byte $08, $00, $31, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x004FC6 01:8FB6: 08        .byte $08, $F0, $11, $01   ; 
- D 0 - I - 0x004FCA 01:8FBA: 00        .byte $00, $F0, $05, $01   ; 
- D 0 - I - 0x004FCE 01:8FBE: F8        .byte $F8, $F0, $03, $01   ; 
- D 0 - I - 0x004FD2 01:8FC2: F0        .byte $F0, $F0, $01, $00   ; 
- D 0 - I - 0x004FD6 01:8FC6: F8        .byte $F8, $00, $23, $00   ; 
- D 0 - I - 0x004FDA 01:8FCA: 00        .byte $00, $00, $25, $00   ; 
- D 0 - I - 0x004FDE 01:8FCE: F0        .byte $F0, $00, $21, $00   ; 



_off007_00_8FD2_37:
@start:
; 00 
- D 0 - I - 0x004FE2 01:8FD2: 06        .byte $06   ; 
- D 0 - I - 0x004FE3 01:8FD3: 95        .byte off_8F67 + $100 - @start   ; 
; 01 
- D 0 - I - 0x004FE4 01:8FD4: 07        .byte $07   ; 
- D 0 - I - 0x004FE5 01:8FD5: BA        .byte off_8F8C + $100 - @start   ; 
; 02 
- D 0 - I - 0x004FE6 01:8FD6: 08        .byte $08   ; 
- D 0 - I - 0x004FE7 01:8FD7: DF        .byte off_8FB1 + $100 - @start   ; 
; 03 
- D 0 - I - 0x004FE8 01:8FD8: FF        .byte $FF   ; 
- D 0 - I - 0x004FE9 01:8FD9: DF        .byte off_8FB1 + $100 - @start   ; 



off_8FDA:
- D 0 - I - 0x004FEA 01:8FDA: 08        .byte $08   ; counter
- D 0 - I - 0x004FEB 01:8FDB: 00        .byte $00, $00, $25, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x004FEF 01:8FDF: 08        .byte $08, $00, $27, $00   ; 
- D 0 - I - 0x004FF3 01:8FE3: F0        .byte $F0, $00, $21, $00   ; 
- D 0 - I - 0x004FF7 01:8FE7: F8        .byte $F8, $00, $23, $00   ; 
- D 0 - I - 0x004FFB 01:8FEB: 00        .byte $00, $F0, $05, $01   ; 
- D 0 - I - 0x004FFF 01:8FEF: 08        .byte $08, $F0, $07, $01   ; 
- D 0 - I - 0x005003 01:8FF3: F0        .byte $F0, $F0, $01, $01   ; 
- D 0 - I - 0x005007 01:8FF7: F8        .byte $F8, $F0, $03, $01   ; 



off_8FFB:
- D 0 - I - 0x00500B 01:8FFB: 08        .byte $08   ; counter
- D 0 - I - 0x00500C 01:8FFC: 00        .byte $00, $00, $2D, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x005010 01:9000: 08        .byte $08, $00, $2F, $00   ; 
- D 0 - I - 0x005014 01:9004: F0        .byte $F0, $00, $29, $00   ; 
- D 0 - I - 0x005018 01:9008: F8        .byte $F8, $00, $2B, $00   ; 
- D 0 - I - 0x00501C 01:900C: 00        .byte $00, $F0, $0D, $01   ; 
- D 0 - I - 0x005020 01:9010: 08        .byte $08, $F0, $0F, $01   ; 
- D 0 - I - 0x005024 01:9014: F0        .byte $F0, $F0, $09, $01   ; 
- D 0 - I - 0x005028 01:9018: F8        .byte $F8, $F0, $0B, $01   ; 



off_901C:
- D 0 - I - 0x00502C 01:901C: 08        .byte $08   ; counter
- D 0 - I - 0x00502D 01:901D: 00        .byte $00, $00, $65, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x005031 01:9021: 08        .byte $08, $00, $67, $00   ; 
- D 0 - I - 0x005035 01:9025: F0        .byte $F0, $00, $61, $00   ; 
- D 0 - I - 0x005039 01:9029: F8        .byte $F8, $00, $63, $00   ; 
- D 0 - I - 0x00503D 01:902D: 00        .byte $00, $F0, $45, $01   ; 
- D 0 - I - 0x005041 01:9031: 08        .byte $08, $F0, $47, $01   ; 
- D 0 - I - 0x005045 01:9035: F0        .byte $F0, $F0, $41, $01   ; 
- D 0 - I - 0x005049 01:9039: F8        .byte $F8, $F0, $43, $01   ; 



off_903D:
- D 0 - I - 0x00504D 01:903D: 08        .byte $08   ; counter
- D 0 - I - 0x00504E 01:903E: 00        .byte $00, $F0, $4D, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x005052 01:9042: 08        .byte $08, $F0, $4F, $01   ; 
- D 0 - I - 0x005056 01:9046: 00        .byte $00, $00, $6D, $00   ; 
- D 0 - I - 0x00505A 01:904A: 08        .byte $08, $00, $6F, $00   ; 
- D 0 - I - 0x00505E 01:904E: F0        .byte $F0, $00, $69, $00   ; 
- D 0 - I - 0x005062 01:9052: F8        .byte $F8, $00, $6B, $00   ; 
- D 0 - I - 0x005066 01:9056: F0        .byte $F0, $F0, $49, $01   ; 
- D 0 - I - 0x00506A 01:905A: F8        .byte $F8, $F0, $4B, $01   ; 



_off007_00_905E_39:
_off007_00_905E_3A:
_off007_00_905E_3B:
_off007_00_905E_3C:
_off007_00_905E_3F:
@start:
; 00 
- D 0 - I - 0x00506E 01:905E: 06        .byte $06   ; 
- D 0 - I - 0x00506F 01:905F: 7C        .byte off_8FDA + $100 - @start   ; 
; 01 
- D 0 - I - 0x005070 01:9060: 08        .byte $08   ; 
- D 0 - I - 0x005071 01:9061: 9D        .byte off_8FFB + $100 - @start   ; 
; 02 
- D 0 - I - 0x005072 01:9062: 08        .byte $08   ; 
- D 0 - I - 0x005073 01:9063: BE        .byte off_901C + $100 - @start   ; 
; 03 
- D 0 - I - 0x005074 01:9064: 06        .byte $06   ; 
- D 0 - I - 0x005075 01:9065: DF        .byte off_903D + $100 - @start   ; 
; 04 
- D 0 - I - 0x005076 01:9066: 00        .byte $00   ; 
- D 0 - I - 0x005077 01:9067: 7C        .byte off_8FDA + $100 - @start   ; 



off_9068:
- D 0 - I - 0x005078 01:9068: 08        .byte $08   ; counter
- D 0 - I - 0x005079 01:9069: 00        .byte $00, $00, $19, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x00507D 01:906D: 08        .byte $08, $00, $1B, $00   ; 
- D 0 - I - 0x005081 01:9071: F0        .byte $F0, $00, $15, $00   ; 
- D 0 - I - 0x005085 01:9075: F8        .byte $F8, $00, $17, $00   ; 
- D 0 - I - 0x005089 01:9079: 00        .byte $00, $F0, $05, $01   ; 
- D 0 - I - 0x00508D 01:907D: 08        .byte $08, $F0, $07, $01   ; 
- D 0 - I - 0x005091 01:9081: F0        .byte $F0, $F0, $01, $01   ; 
- D 0 - I - 0x005095 01:9085: F8        .byte $F8, $F0, $03, $01   ; 



off_9089:
- D 0 - I - 0x005099 01:9089: 08        .byte $08   ; counter
- D 0 - I - 0x00509A 01:908A: 00        .byte $00, $00, $39, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x00509E 01:908E: 08        .byte $08, $00, $3B, $00   ; 
- D 0 - I - 0x0050A2 01:9092: F0        .byte $F0, $00, $35, $00   ; 
- D 0 - I - 0x0050A6 01:9096: F8        .byte $F8, $00, $37, $00   ; 
- D 0 - I - 0x0050AA 01:909A: 00        .byte $00, $F0, $0D, $01   ; 
- D 0 - I - 0x0050AE 01:909E: 08        .byte $08, $F0, $0F, $01   ; 
- D 0 - I - 0x0050B2 01:90A2: F0        .byte $F0, $F0, $09, $01   ; 
- D 0 - I - 0x0050B6 01:90A6: F8        .byte $F8, $F0, $0B, $01   ; 



off_90AA:
- D 0 - I - 0x0050BA 01:90AA: 08        .byte $08   ; counter
- D 0 - I - 0x0050BB 01:90AB: 00        .byte $00, $00, $75, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x0050BF 01:90AF: 08        .byte $08, $00, $77, $00   ; 
- D 0 - I - 0x0050C3 01:90B3: F0        .byte $F0, $00, $71, $00   ; 
- D 0 - I - 0x0050C7 01:90B7: F8        .byte $F8, $00, $73, $00   ; 
- D 0 - I - 0x0050CB 01:90BB: 00        .byte $00, $F0, $45, $01   ; 
- D 0 - I - 0x0050CF 01:90BF: 08        .byte $08, $F0, $47, $01   ; 
- D 0 - I - 0x0050D3 01:90C3: F0        .byte $F0, $F0, $41, $01   ; 
- D 0 - I - 0x0050D7 01:90C7: F8        .byte $F8, $F0, $43, $01   ; 



off_90CB:
- D 0 - I - 0x0050DB 01:90CB: 08        .byte $08   ; counter
- D 0 - I - 0x0050DC 01:90CC: F0        .byte $F0, $F0, $49, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x0050E0 01:90D0: F8        .byte $F8, $F0, $4B, $01   ; 
- D 0 - I - 0x0050E4 01:90D4: 00        .byte $00, $F0, $4D, $01   ; 
- D 0 - I - 0x0050E8 01:90D8: 08        .byte $08, $F0, $4F, $01   ; 
- D 0 - I - 0x0050EC 01:90DC: 00        .byte $00, $00, $75, $00   ; 
- D 0 - I - 0x0050F0 01:90E0: 08        .byte $08, $00, $77, $00   ; 
- D 0 - I - 0x0050F4 01:90E4: F0        .byte $F0, $00, $71, $00   ; 
- D 0 - I - 0x0050F8 01:90E8: F8        .byte $F8, $00, $73, $00   ; 



_off007_00_90EC_3E:
@start:
; 00 
- D 0 - I - 0x0050FC 01:90EC: 06        .byte $06   ; 
- D 0 - I - 0x0050FD 01:90ED: 7C        .byte off_9068 + $100 - @start   ; 
; 01 
- D 0 - I - 0x0050FE 01:90EE: 0A        .byte $0A   ; 
- D 0 - I - 0x0050FF 01:90EF: 9D        .byte off_9089 + $100 - @start   ; 
; 02 
- D 0 - I - 0x005100 01:90F0: 03        .byte $03   ; 
- D 0 - I - 0x005101 01:90F1: BE        .byte off_90AA + $100 - @start   ; 
; 03 
- D 0 - I - 0x005102 01:90F2: 03        .byte $03   ; 
- D 0 - I - 0x005103 01:90F3: DF        .byte off_90CB + $100 - @start   ; 
; 04 
- D 0 - I - 0x005104 01:90F4: FF        .byte $FF   ; 
- D 0 - I - 0x005105 01:90F5: DF        .byte off_90CB + $100 - @start   ; 



off_90F6:
- D 0 - I - 0x005106 01:90F6: 09        .byte $09   ; counter
- D 0 - I - 0x005107 01:90F7: FA        .byte $FA, $E5, $53, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x00510B 01:90FB: F3        .byte $F3, $E5, $31, $01   ; 
- D 0 - I - 0x00510F 01:90FF: F8        .byte $F8, $E8, $53, $01   ; 
- D 0 - I - 0x005113 01:9103: 04        .byte $04, $00, $25, $00   ; 
- D 0 - I - 0x005117 01:9107: 04        .byte $04, $F0, $05, $01   ; 
- D 0 - I - 0x00511B 01:910B: F4        .byte $F4, $F0, $01, $01   ; 
- D 0 - I - 0x00511F 01:910F: FC        .byte $FC, $F0, $03, $01   ; 
- D 0 - I - 0x005123 01:9113: FC        .byte $FC, $00, $23, $00   ; 
- D 0 - I - 0x005127 01:9117: F4        .byte $F4, $00, $21, $00   ; 



off_911B:
- D 0 - I - 0x00512B 01:911B: 07        .byte $07   ; counter
- D 0 - I - 0x00512C 01:911C: F4        .byte $F4, $00, $69, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x005130 01:9120: FC        .byte $FC, $00, $6F, $00   ; 
- D 0 - I - 0x005134 01:9124: FC        .byte $FC, $F0, $1D, $01   ; 
- D 0 - I - 0x005138 01:9128: 04        .byte $04, $F0, $1F, $01   ; 
- D 0 - I - 0x00513C 01:912C: 04        .byte $04, $00, $51, $00   ; 
- D 0 - I - 0x005140 01:9130: F2        .byte $F2, $E2, $31, $01   ; 
- D 0 - I - 0x005144 01:9134: F4        .byte $F4, $F0, $01, $01   ; 



off_9138:
- D 0 - I - 0x005148 01:9138: 06        .byte $06   ; counter
- D 0 - I - 0x005149 01:9139: F4        .byte $F4, $00, $55, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x00514D 01:913D: FC        .byte $FC, $00, $23, $00   ; 
- D 0 - I - 0x005151 01:9141: FC        .byte $FC, $F0, $1D, $01   ; 
- D 0 - I - 0x005155 01:9145: 04        .byte $04, $F0, $1F, $01   ; 
- D 0 - I - 0x005159 01:9149: F4        .byte $F4, $F0, $01, $00   ; 
- D 0 - I - 0x00515D 01:914D: 04        .byte $04, $00, $25, $00   ; 



_off007_00_9151_40:
@start:
; 00 
- D 0 - I - 0x005161 01:9151: 12        .byte $12   ; 
- D 0 - I - 0x005162 01:9152: A5        .byte off_90F6 + $100 - @start   ; 
; 01 
- D 0 - I - 0x005163 01:9153: 0D        .byte $0D   ; 
- D 0 - I - 0x005164 01:9154: CA        .byte off_911B + $100 - @start   ; 
; 02 
- D 0 - I - 0x005165 01:9155: 0F        .byte $0F   ; 
- D 0 - I - 0x005166 01:9156: E7        .byte off_9138 + $100 - @start   ; 
; 03 
- D 0 - I - 0x005167 01:9157: 0D        .byte $0D   ; 
- D 0 - I - 0x005168 01:9158: CA        .byte off_911B + $100 - @start   ; 
; 04 
- D 0 - I - 0x005169 01:9159: 00        .byte $00   ; 
- D 0 - I - 0x00516A 01:915A: A5        .byte off_90F6 + $100 - @start   ; 



off_915B:
- D 0 - I - 0x00516B 01:915B: 07        .byte $07   ; counter
- D 0 - I - 0x00516C 01:915C: F8        .byte $F8, $EC, $53, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x005170 01:9160: 08        .byte $08, $00, $2B, $01   ; 
- D 0 - I - 0x005174 01:9164: 00        .byte $00, $00, $29, $00   ; 
- D 0 - I - 0x005178 01:9168: FF        .byte $FF, $F0, $09, $01   ; 
- D 0 - I - 0x00517C 01:916C: 07        .byte $07, $F0, $0B, $01   ; 
- D 0 - I - 0x005180 01:9170: F7        .byte $F7, $F0, $07, $00   ; 
- D 0 - I - 0x005184 01:9174: F8        .byte $F8, $00, $27, $00   ; 



off_9178:
- D 0 - I - 0x005188 01:9178: 08        .byte $08   ; counter
- D 0 - I - 0x005189 01:9179: F0        .byte $F0, $EA, $53, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x00518D 01:917D: F5        .byte $F5, $EC, $53, $01   ; 
- D 0 - I - 0x005191 01:9181: F2        .byte $F2, $EA, $31, $01   ; 
- D 0 - I - 0x005195 01:9185: 07        .byte $07, $F0, $11, $01   ; 
- D 0 - I - 0x005199 01:9189: F7        .byte $F7, $F0, $0D, $01   ; 
- D 0 - I - 0x00519D 01:918D: FF        .byte $FF, $F0, $0F, $01   ; 
- D 0 - I - 0x0051A1 01:9191: FF        .byte $FF, $00, $2F, $00   ; 
- D 0 - I - 0x0051A5 01:9195: F7        .byte $F7, $00, $2D, $00   ; 



off_9199:
- D 0 - I - 0x0051A9 01:9199: 07        .byte $07   ; counter
- D 0 - I - 0x0051AA 01:919A: F0        .byte $F0, $E4, $31, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x0051AE 01:919E: FF        .byte $FF, $F0, $15, $01   ; 
- D 0 - I - 0x0051B2 01:91A2: 07        .byte $07, $F0, $17, $01   ; 
- D 0 - I - 0x0051B6 01:91A6: F7        .byte $F7, $00, $33, $00   ; 
- D 0 - I - 0x0051BA 01:91AA: FF        .byte $FF, $00, $35, $00   ; 
- D 0 - I - 0x0051BE 01:91AE: 07        .byte $07, $00, $37, $00   ; 
- D 0 - I - 0x0051C2 01:91B2: F7        .byte $F7, $F0, $13, $00   ; 



_off007_00_91B6_41:
@start:
; 00 
- D 0 - I - 0x0051C6 01:91B6: 0C        .byte $0C   ; 
- D 0 - I - 0x0051C7 01:91B7: E3        .byte off_9199 + $100 - @start   ; 
; 01 
- D 0 - I - 0x0051C8 01:91B8: 0A        .byte $0A   ; 
- D 0 - I - 0x0051C9 01:91B9: C2        .byte off_9178 + $100 - @start   ; 
; 02 
- D 0 - I - 0x0051CA 01:91BA: 0C        .byte $0C   ; 
- D 0 - I - 0x0051CB 01:91BB: A5        .byte off_915B + $100 - @start   ; 
; 03 
- D 0 - I - 0x0051CC 01:91BC: 0A        .byte $0A   ; 
- D 0 - I - 0x0051CD 01:91BD: C2        .byte off_9178 + $100 - @start   ; 
; 04 
- D 0 - I - 0x0051CE 01:91BE: 00        .byte $00   ; 
- D 0 - I - 0x0051CF 01:91BF: A5        .byte off_915B + $100 - @start   ; 



off_91C0:
- - - - - - 0x0051D0 01:91C0: 05        .byte $05   ; counter
- - - - - - 0x0051D1 01:91C1: F4        .byte $F4, $00, $33, $00   ; spr_X, spr_Y, spr_T, spr_A
- - - - - - 0x0051D5 01:91C5: FC        .byte $FC, $00, $35, $00   ; 
- - - - - - 0x0051D9 01:91C9: 04        .byte $04, $00, $37, $00   ; 
- - - - - - 0x0051DD 01:91CD: FC        .byte $FC, $F0, $15, $02   ; 
- - - - - - 0x0051E1 01:91D1: 04        .byte $04, $F0, $17, $02   ; 
- - - - - - 0x0051E5 01:91D5: 04        .byte $04   ; 
- - - - - - 0x0051E6 01:91D6: EB        .byte $EB   ; 
- - - - - - 0x0051E7 01:91D7: FF        .byte $FF   ; 
- - - - - - 0x0051E8 01:91D8: EB        .byte $EB   ; 



off_91D9:
- D 0 - I - 0x0051E9 01:91D9: 0B        .byte $0B   ; counter
- D 0 - I - 0x0051EA 01:91DA: FD        .byte $FD, $E6, $53, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x0051EE 01:91DE: FA        .byte $FA, $E4, $53, $01   ; 
- D 0 - I - 0x0051F2 01:91E2: F0        .byte $F0, $F4, $41, $01   ; 
- D 0 - I - 0x0051F6 01:91E6: F8        .byte $F8, $F4, $43, $01   ; 
- D 0 - I - 0x0051FA 01:91EA: F8        .byte $F8, $ED, $31, $01   ; 
- D 0 - I - 0x0051FE 01:91EE: F0        .byte $F0, $04, $61, $00   ; 
- D 0 - I - 0x005202 01:91F2: F8        .byte $F8, $04, $63, $00   ; 
- D 0 - I - 0x005206 01:91F6: 00        .byte $00, $04, $65, $00   ; 
- D 0 - I - 0x00520A 01:91FA: 08        .byte $08, $04, $67, $00   ; 
- D 0 - I - 0x00520E 01:91FE: 00        .byte $00, $F4, $45, $01   ; 
- D 0 - I - 0x005212 01:9202: 08        .byte $08, $F4, $47, $01   ; 



off_9206:
- D 0 - I - 0x005216 01:9206: 08        .byte $08   ; counter
- D 0 - I - 0x005217 01:9207: F8        .byte $F8, $04, $6B, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x00521B 01:920B: 00        .byte $00, $04, $6D, $00   ; 
- D 0 - I - 0x00521F 01:920F: FB        .byte $FB, $E9, $31, $01   ; 
- D 0 - I - 0x005223 01:9213: 02        .byte $02, $EC, $53, $01   ; 
- D 0 - I - 0x005227 01:9217: 00        .byte $00, $F4, $4D, $01   ; 
- D 0 - I - 0x00522B 01:921B: 08        .byte $08, $F4, $4F, $01   ; 
- D 0 - I - 0x00522F 01:921F: F0        .byte $F0, $F4, $49, $01   ; 
- D 0 - I - 0x005233 01:9223: F8        .byte $F8, $F4, $4B, $01   ; 



off_9227:
- D 0 - I - 0x005237 01:9227: 08        .byte $08   ; counter
- D 0 - I - 0x005238 01:9228: F0        .byte $F0, $F4, $41, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x00523C 01:922C: F8        .byte $F8, $F4, $43, $01   ; 
- D 0 - I - 0x005240 01:9230: F0        .byte $F0, $04, $61, $00   ; 
- D 0 - I - 0x005244 01:9234: F8        .byte $F8, $04, $63, $00   ; 
- D 0 - I - 0x005248 01:9238: 00        .byte $00, $04, $65, $00   ; 
- D 0 - I - 0x00524C 01:923C: 08        .byte $08, $04, $67, $00   ; 
- D 0 - I - 0x005250 01:9240: 00        .byte $00, $F4, $45, $01   ; 
- D 0 - I - 0x005254 01:9244: 08        .byte $08, $F4, $47, $01   ; 



_off007_00_9248_42:
_off007_00_9248_43:
@start:
; 00 
- D 0 - I - 0x005258 01:9248: 0C        .byte $0C   ; 
- D 0 - I - 0x005259 01:9249: 91        .byte off_91D9 + $100 - @start   ; 
; 01 
- D 0 - I - 0x00525A 01:924A: 0C        .byte $0C   ; 
- D 0 - I - 0x00525B 01:924B: BE        .byte off_9206 + $100 - @start   ; 
; 02 
- D 0 - I - 0x00525C 01:924C: 0C        .byte $0C   ; 
- D 0 - I - 0x00525D 01:924D: DF        .byte off_9227 + $100 - @start   ; 
; 03 
- D 0 - I - 0x00525E 01:924E: 0C        .byte $0C   ; 
- D 0 - I - 0x00525F 01:924F: BE        .byte off_9206 + $100 - @start   ; 
; 04 
- D 0 - I - 0x005260 01:9250: 00        .byte $00   ; 
- D 0 - I - 0x005261 01:9251: 91        .byte off_91D9 + $100 - @start   ; 



off_9252:
- - - - - - 0x005262 01:9252: 06        .byte $06   ; counter
- - - - - - 0x005263 01:9253: FF        .byte $FF, $F0, $09, $01   ; spr_X, spr_Y, spr_T, spr_A
- - - - - - 0x005267 01:9257: 07        .byte $07, $F0, $0B, $01   ; 
- - - - - - 0x00526B 01:925B: F7        .byte $F7, $F0, $07, $00   ; 
- - - - - - 0x00526F 01:925F: F7        .byte $F7, $00, $27, $00   ; 
- - - - - - 0x005273 01:9263: FF        .byte $FF, $00, $29, $00   ; 
- - - - - - 0x005277 01:9267: 07        .byte $07, $00, $2B, $00   ; 



off_926B:
- - - - - - 0x00527B 01:926B: 07        .byte $07   ; counter
- - - - - - 0x00527C 01:926C: 06        .byte $06, $00, $3D, $01   ; spr_X, spr_Y, spr_T, spr_A
- - - - - - 0x005280 01:9270: F6        .byte $F6, $00, $39, $00   ; 
- - - - - - 0x005284 01:9274: FE        .byte $FE, $00, $3B, $00   ; 
- - - - - - 0x005288 01:9278: F7        .byte $F7, $F0, $0D, $01   ; 
- - - - - - 0x00528C 01:927C: FF        .byte $FF, $F0, $0F, $01   ; 
- - - - - - 0x005290 01:9280: F0        .byte $F0, $E4, $31, $01   ; 
- - - - - - 0x005294 01:9284: 07        .byte $07, $F0, $11, $01   ; 



off_9288:
- - - - - - 0x005298 01:9288: 06        .byte $06   ; counter
- - - - - - 0x005299 01:9289: FF        .byte $FF, $F0, $15, $01   ; spr_X, spr_Y, spr_T, spr_A
- - - - - - 0x00529D 01:928D: 07        .byte $07, $F0, $17, $01   ; 
- - - - - - 0x0052A1 01:9291: F7        .byte $F7, $00, $33, $00   ; 
- - - - - - 0x0052A5 01:9295: FF        .byte $FF, $00, $35, $00   ; 
- - - - - - 0x0052A9 01:9299: 07        .byte $07, $00, $37, $00   ; 
- - - - - - 0x0052AD 01:929D: F7        .byte $F7, $F0, $13, $00   ; 



_off007_00_92A1_45:
@start:
; 00 
- - - - - - 0x0052B1 01:92A1: 07        .byte $07   ; 
- - - - - - 0x0052B2 01:92A2: B1        .byte off_9252 + $100 - @start   ; 
; 01 
- - - - - - 0x0052B3 01:92A3: 04        .byte $04   ; 
- - - - - - 0x0052B4 01:92A4: CA        .byte off_926B + $100 - @start   ; 
; 02 
- - - - - - 0x0052B5 01:92A5: 07        .byte $07   ; 
- - - - - - 0x0052B6 01:92A6: E7        .byte off_9288 + $100 - @start   ; 
; 03 
- - - - - - 0x0052B7 01:92A7: 04        .byte $04   ; 
- - - - - - 0x0052B8 01:92A8: CA        .byte off_926B + $100 - @start   ; 
; 04 
- - - - - - 0x0052B9 01:92A9: FF        .byte $FF   ; 
- - - - - - 0x0052BA 01:92AA: CA        .byte off_926B + $100 - @start   ; 



off_92AB:
- - - - - - 0x0052BB 01:92AB: 05        .byte $05   ; counter
- - - - - - 0x0052BC 01:92AC: 08        .byte $08, $00, $3D, $00   ; spr_X, spr_Y, spr_T, spr_A
- - - - - - 0x0052C0 01:92B0: 00        .byte $00, $00, $1D, $00   ; 
- - - - - - 0x0052C4 01:92B4: FC        .byte $FC, $F0, $43, $02   ; 
- - - - - - 0x0052C8 01:92B8: F0        .byte $F0, $00, $19, $00   ; 
- - - - - - 0x0052CC 01:92BC: F8        .byte $F8, $00, $1B, $00   ; 



_off007_00_92C0_46:
@start:
; 00 
- - - - - - 0x0052D0 01:92C0: 08        .byte $08   ; 
- - - - - - 0x0052D1 01:92C1: 92        .byte off_9252 + $100 - @start   ; 
; 01 
- - - - - - 0x0052D2 01:92C2: 08        .byte $08   ; 
- - - - - - 0x0052D3 01:92C3: EB        .byte off_92AB + $100 - @start   ; 
; 02 
- - - - - - 0x0052D4 01:92C4: 00        .byte $00   ; 
- - - - - - 0x0052D5 01:92C5: 92        .byte off_9252 + $100 - @start   ; 



off_92C6:
- D 0 - I - 0x0052D6 01:92C6: 0A        .byte $0A   ; counter
- D 0 - I - 0x0052D7 01:92C7: F8        .byte $F8, $10, $43, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x0052DB 01:92CB: F0        .byte $F0, $F0, $01, $01   ; 
- D 0 - I - 0x0052DF 01:92CF: F8        .byte $F8, $F0, $03, $01   ; 
- D 0 - I - 0x0052E3 01:92D3: 00        .byte $00, $10, $45, $00   ; 
- D 0 - I - 0x0052E7 01:92D7: 00        .byte $00, $00, $25, $00   ; 
- D 0 - I - 0x0052EB 01:92DB: 08        .byte $08, $00, $27, $00   ; 
- D 0 - I - 0x0052EF 01:92DF: F0        .byte $F0, $00, $21, $00   ; 
- D 0 - I - 0x0052F3 01:92E3: F8        .byte $F8, $00, $23, $00   ; 
- D 0 - I - 0x0052F7 01:92E7: 00        .byte $00, $F0, $05, $01   ; 
- D 0 - I - 0x0052FB 01:92EB: 08        .byte $08, $F0, $07, $01   ; 



off_92EF:
- D 0 - I - 0x0052FF 01:92EF: 0B        .byte $0B   ; counter
- D 0 - I - 0x005300 01:92F0: F0        .byte $F0, $F0, $09, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x005304 01:92F4: F8        .byte $F8, $F0, $0B, $01   ; 
- D 0 - I - 0x005308 01:92F8: 00        .byte $00, $10, $4D, $00   ; 
- D 0 - I - 0x00530C 01:92FC: F0        .byte $F0, $10, $49, $00   ; 
- D 0 - I - 0x005310 01:9300: 00        .byte $00, $10, $4D, $00   ; 
- D 0 - I - 0x005314 01:9304: 00        .byte $00, $00, $2D, $00   ; 
- D 0 - I - 0x005318 01:9308: 08        .byte $08, $00, $2F, $00   ; 
- D 0 - I - 0x00531C 01:930C: F0        .byte $F0, $00, $29, $00   ; 
- D 0 - I - 0x005320 01:9310: F8        .byte $F8, $00, $2B, $00   ; 
- D 0 - I - 0x005324 01:9314: 00        .byte $00, $F0, $0D, $01   ; 
- D 0 - I - 0x005328 01:9318: 08        .byte $08, $F0, $0F, $01   ; 



off_931C:
- D 0 - I - 0x00532C 01:931C: 0A        .byte $0A   ; counter
- D 0 - I - 0x00532D 01:931D: 00        .byte $00, $F0, $6D, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x005331 01:9321: 08        .byte $08, $F0, $6F, $01   ; 
- D 0 - I - 0x005335 01:9325: F8        .byte $F8, $10, $43, $00   ; 
- D 0 - I - 0x005339 01:9329: F0        .byte $F0, $F0, $01, $01   ; 
- D 0 - I - 0x00533D 01:932D: F8        .byte $F8, $F0, $03, $01   ; 
- D 0 - I - 0x005341 01:9331: 00        .byte $00, $10, $45, $00   ; 
- D 0 - I - 0x005345 01:9335: 00        .byte $00, $00, $25, $00   ; 
- D 0 - I - 0x005349 01:9339: 08        .byte $08, $00, $27, $00   ; 
- D 0 - I - 0x00534D 01:933D: F0        .byte $F0, $00, $21, $00   ; 
- D 0 - I - 0x005351 01:9341: F8        .byte $F8, $00, $23, $00   ; 



_off007_00_9345_47:
_off007_00_9345_4A:
@start:
; 00 
- D 0 - I - 0x005355 01:9345: 10        .byte $10   ; 
- D 0 - I - 0x005356 01:9346: 81        .byte off_92C6 + $100 - @start   ; 
; 01 
- D 0 - I - 0x005357 01:9347: 0A        .byte $0A   ; 
- D 0 - I - 0x005358 01:9348: AA        .byte off_92EF + $100 - @start   ; 
; 02 
- D 0 - I - 0x005359 01:9349: 10        .byte $10   ; 
- D 0 - I - 0x00535A 01:934A: D7        .byte off_931C + $100 - @start   ; 
; 03 
- D 0 - I - 0x00535B 01:934B: 0A        .byte $0A   ; 
- D 0 - I - 0x00535C 01:934C: AA        .byte off_92EF + $100 - @start   ; 
; 04 
- D 0 - I - 0x00535D 01:934D: 00        .byte $00   ; 
- D 0 - I - 0x00535E 01:934E: 81        .byte off_92C6 + $100 - @start   ; 



off_934F:
- D 0 - I - 0x00535F 01:934F: 0A        .byte $0A   ; counter
- D 0 - I - 0x005360 01:9350: F8        .byte $F8, $10, $43, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x005364 01:9354: F0        .byte $F0, $F0, $01, $01   ; 
- D 0 - I - 0x005368 01:9358: F8        .byte $F8, $F0, $03, $01   ; 
- D 0 - I - 0x00536C 01:935C: 00        .byte $00, $10, $45, $00   ; 
- D 0 - I - 0x005370 01:9360: 00        .byte $00, $00, $25, $00   ; 
- D 0 - I - 0x005374 01:9364: 08        .byte $08, $00, $27, $00   ; 
- D 0 - I - 0x005378 01:9368: F0        .byte $F0, $00, $21, $00   ; 
- D 0 - I - 0x00537C 01:936C: F8        .byte $F8, $00, $23, $00   ; 
- D 0 - I - 0x005380 01:9370: 00        .byte $00, $F0, $05, $01   ; 
- D 0 - I - 0x005384 01:9374: 08        .byte $08, $F0, $07, $01   ; 



off_9378:
- D 0 - I - 0x005388 01:9378: 0B        .byte $0B   ; counter
- D 0 - I - 0x005389 01:9379: F0        .byte $F0, $F0, $09, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x00538D 01:937D: F8        .byte $F8, $F0, $0B, $01   ; 
- D 0 - I - 0x005391 01:9381: 00        .byte $00, $10, $4D, $00   ; 
- D 0 - I - 0x005395 01:9385: F0        .byte $F0, $10, $49, $00   ; 
- D 0 - I - 0x005399 01:9389: 00        .byte $00, $10, $4D, $00   ; 
- D 0 - I - 0x00539D 01:938D: 00        .byte $00, $00, $2D, $00   ; 
- D 0 - I - 0x0053A1 01:9391: 08        .byte $08, $00, $2F, $00   ; 
- D 0 - I - 0x0053A5 01:9395: F0        .byte $F0, $00, $29, $00   ; 
- D 0 - I - 0x0053A9 01:9399: F8        .byte $F8, $00, $2B, $00   ; 
- D 0 - I - 0x0053AD 01:939D: 00        .byte $00, $F0, $0D, $01   ; 
- D 0 - I - 0x0053B1 01:93A1: 08        .byte $08, $F0, $0F, $01   ; 



off_93A5:
- D 0 - I - 0x0053B5 01:93A5: 0A        .byte $0A   ; counter
- D 0 - I - 0x0053B6 01:93A6: 00        .byte $00, $F0, $6D, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x0053BA 01:93AA: 08        .byte $08, $F0, $6F, $01   ; 
- D 0 - I - 0x0053BE 01:93AE: F8        .byte $F8, $10, $43, $00   ; 
- D 0 - I - 0x0053C2 01:93B2: F0        .byte $F0, $F0, $01, $01   ; 
- D 0 - I - 0x0053C6 01:93B6: F8        .byte $F8, $F0, $03, $01   ; 
- D 0 - I - 0x0053CA 01:93BA: 00        .byte $00, $10, $45, $00   ; 
- D 0 - I - 0x0053CE 01:93BE: 00        .byte $00, $00, $25, $00   ; 
- D 0 - I - 0x0053D2 01:93C2: 08        .byte $08, $00, $27, $00   ; 
- D 0 - I - 0x0053D6 01:93C6: F0        .byte $F0, $00, $21, $00   ; 
- D 0 - I - 0x0053DA 01:93CA: F8        .byte $F8, $00, $23, $00   ; 



_off007_00_93CE_48:
@start:
; 00 
- D 0 - I - 0x0053DE 01:93CE: 08        .byte $08   ; 
- D 0 - I - 0x0053DF 01:93CF: 81        .byte off_934F + $100 - @start   ; 
; 01 
- D 0 - I - 0x0053E0 01:93D0: 08        .byte $08   ; 
- D 0 - I - 0x0053E1 01:93D1: AA        .byte off_9378 + $100 - @start   ; 
; 02 
- D 0 - I - 0x0053E2 01:93D2: 08        .byte $08   ; 
- D 0 - I - 0x0053E3 01:93D3: D7        .byte off_93A5 + $100 - @start   ; 
; 03 
- D 0 - I - 0x0053E4 01:93D4: 08        .byte $08   ; 
- D 0 - I - 0x0053E5 01:93D5: AA        .byte off_9378 + $100 - @start   ; 
; 04 
- D 0 - I - 0x0053E6 01:93D6: 00        .byte $00   ; 
- D 0 - I - 0x0053E7 01:93D7: 81        .byte off_934F + $100 - @start   ; 



off_93D8:
- D 0 - I - 0x0053E8 01:93D8: 0A        .byte $0A   ; counter
- D 0 - I - 0x0053E9 01:93D9: F8        .byte $F8, $10, $43, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x0053ED 01:93DD: F0        .byte $F0, $F0, $01, $01   ; 
- D 0 - I - 0x0053F1 01:93E1: F8        .byte $F8, $F0, $03, $01   ; 
- D 0 - I - 0x0053F5 01:93E5: 00        .byte $00, $10, $45, $00   ; 
- D 0 - I - 0x0053F9 01:93E9: 00        .byte $00, $00, $25, $00   ; 
- D 0 - I - 0x0053FD 01:93ED: 08        .byte $08, $00, $27, $00   ; 
- D 0 - I - 0x005401 01:93F1: F0        .byte $F0, $00, $21, $00   ; 
- D 0 - I - 0x005405 01:93F5: F8        .byte $F8, $00, $23, $00   ; 
- D 0 - I - 0x005409 01:93F9: 00        .byte $00, $F0, $05, $01   ; 
- D 0 - I - 0x00540D 01:93FD: 08        .byte $08, $F0, $07, $01   ; 



off_9401:
- D 0 - I - 0x005411 01:9401: 0B        .byte $0B   ; counter
- D 0 - I - 0x005412 01:9402: F0        .byte $F0, $F0, $09, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x005416 01:9406: F8        .byte $F8, $F0, $0B, $01   ; 
- D 0 - I - 0x00541A 01:940A: 00        .byte $00, $10, $4D, $00   ; 
- D 0 - I - 0x00541E 01:940E: F0        .byte $F0, $10, $49, $00   ; 
- D 0 - I - 0x005422 01:9412: 00        .byte $00, $10, $4D, $00   ; 
- D 0 - I - 0x005426 01:9416: 00        .byte $00, $00, $2D, $00   ; 
- D 0 - I - 0x00542A 01:941A: 08        .byte $08, $00, $2F, $00   ; 
- D 0 - I - 0x00542E 01:941E: F0        .byte $F0, $00, $29, $00   ; 
- D 0 - I - 0x005432 01:9422: F8        .byte $F8, $00, $2B, $00   ; 
- D 0 - I - 0x005436 01:9426: 00        .byte $00, $F0, $0D, $01   ; 
- D 0 - I - 0x00543A 01:942A: 08        .byte $08, $F0, $0F, $01   ; 



off_942E:
- D 0 - I - 0x00543E 01:942E: 0A        .byte $0A   ; counter
- D 0 - I - 0x00543F 01:942F: 00        .byte $00, $F0, $6D, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x005443 01:9433: 08        .byte $08, $F0, $6F, $01   ; 
- D 0 - I - 0x005447 01:9437: F8        .byte $F8, $10, $43, $00   ; 
- D 0 - I - 0x00544B 01:943B: F0        .byte $F0, $F0, $01, $01   ; 
- D 0 - I - 0x00544F 01:943F: F8        .byte $F8, $F0, $03, $01   ; 
- D 0 - I - 0x005453 01:9443: 00        .byte $00, $10, $45, $00   ; 
- D 0 - I - 0x005457 01:9447: 00        .byte $00, $00, $25, $00   ; 
- D 0 - I - 0x00545B 01:944B: 08        .byte $08, $00, $27, $00   ; 
- D 0 - I - 0x00545F 01:944F: F0        .byte $F0, $00, $21, $00   ; 
- D 0 - I - 0x005463 01:9453: F8        .byte $F8, $00, $23, $00   ; 



_off007_00_9457_49:
@start:
; 00 
- D 0 - I - 0x005467 01:9457: 08        .byte $08   ; 
- D 0 - I - 0x005468 01:9458: 81        .byte off_93D8 + $100 - @start   ; 
; 01 
- D 0 - I - 0x005469 01:9459: 08        .byte $08   ; 
- D 0 - I - 0x00546A 01:945A: AA        .byte off_9401 + $100 - @start   ; 
; 02 
- D 0 - I - 0x00546B 01:945B: 08        .byte $08   ; 
- D 0 - I - 0x00546C 01:945C: D7        .byte off_942E + $100 - @start   ; 
; 03 
- D 0 - I - 0x00546D 01:945D: 08        .byte $08   ; 
- D 0 - I - 0x00546E 01:945E: AA        .byte off_9401 + $100 - @start   ; 
; 04 
- D 0 - I - 0x00546F 01:945F: 00        .byte $00   ; 
- D 0 - I - 0x005470 01:9460: 81        .byte off_93D8 + $100 - @start   ; 



off_9461:
- D 0 - I - 0x005471 01:9461: 0A        .byte $0A   ; counter
- D 0 - I - 0x005472 01:9462: F0        .byte $F0, $F0, $31, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x005476 01:9466: F8        .byte $F8, $F0, $33, $00   ; 
- D 0 - I - 0x00547A 01:946A: F0        .byte $F0, $E0, $11, $00   ; 
- D 0 - I - 0x00547E 01:946E: F8        .byte $F8, $E0, $13, $00   ; 
- D 0 - I - 0x005482 01:9472: 00        .byte $00, $00, $3B, $00   ; 
- D 0 - I - 0x005486 01:9476: F8        .byte $F8, $00, $39, $00   ; 
- D 0 - I - 0x00548A 01:947A: 00        .byte $00, $F0, $35, $00   ; 
- D 0 - I - 0x00548E 01:947E: 08        .byte $08, $F0, $37, $00   ; 
- D 0 - I - 0x005492 01:9482: 00        .byte $00, $E0, $15, $01   ; 
- D 0 - I - 0x005496 01:9486: 08        .byte $08, $E0, $17, $01   ; 



off_948A:
- D 0 - I - 0x00549A 01:948A: 0A        .byte $0A   ; counter
- D 0 - I - 0x00549B 01:948B: F0        .byte $F0, $F0, $3D, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x00549F 01:948F: F0        .byte $F0, $E0, $51, $00   ; 
- D 0 - I - 0x0054A3 01:9493: F8        .byte $F8, $E0, $53, $00   ; 
- D 0 - I - 0x0054A7 01:9497: 00        .byte $00, $E0, $1D, $01   ; 
- D 0 - I - 0x0054AB 01:949B: 08        .byte $08, $E0, $1F, $01   ; 
- D 0 - I - 0x0054AF 01:949F: 00        .byte $00, $00, $69, $00   ; 
- D 0 - I - 0x0054B3 01:94A3: F8        .byte $F8, $00, $67, $00   ; 
- D 0 - I - 0x0054B7 01:94A7: 08        .byte $08, $F0, $65, $00   ; 
- D 0 - I - 0x0054BB 01:94AB: F8        .byte $F8, $F0, $61, $00   ; 
- D 0 - I - 0x0054BF 01:94AF: 00        .byte $00, $F0, $63, $00   ; 



_off007_00_94B3_4C:
@start:
; 00 
- D 0 - I - 0x0054C3 01:94B3: 06        .byte $06   ; 
- D 0 - I - 0x0054C4 01:94B4: AE        .byte off_9461 + $100 - @start   ; 
; 01 
- D 0 - I - 0x0054C5 01:94B5: 06        .byte $06   ; 
- D 0 - I - 0x0054C6 01:94B6: D7        .byte off_948A + $100 - @start   ; 
; 02 
- D 0 - I - 0x0054C7 01:94B7: 08        .byte $08   ; 
- D 0 - I - 0x0054C8 01:94B8: AE        .byte off_9461 + $100 - @start   ; 
; 03 
- D 0 - I - 0x0054C9 01:94B9: 08        .byte $08   ; 
- D 0 - I - 0x0054CA 01:94BA: D7        .byte off_948A + $100 - @start   ; 
; 04 
- D 0 - I - 0x0054CB 01:94BB: FF        .byte $FF   ; 
- D 0 - I - 0x0054CC 01:94BC: AE        .byte off_9461 + $100 - @start   ; 



off_94BD:
- - - - - - 0x0054CD 01:94BD: 0A        .byte $0A   ; counter
- - - - - - 0x0054CE 01:94BE: F8        .byte $F8, $10, $4B, $00   ; spr_X, spr_Y, spr_T, spr_A
- - - - - - 0x0054D2 01:94C2: 00        .byte $00, $10, $4D, $00   ; 
- - - - - - 0x0054D6 01:94C6: 00        .byte $00, $00, $2D, $00   ; 
- - - - - - 0x0054DA 01:94CA: 08        .byte $08, $00, $2F, $00   ; 
- - - - - - 0x0054DE 01:94CE: F0        .byte $F0, $00, $29, $00   ; 
- - - - - - 0x0054E2 01:94D2: F8        .byte $F8, $00, $2B, $00   ; 
- - - - - - 0x0054E6 01:94D6: 00        .byte $00, $F0, $0D, $00   ; 
- - - - - - 0x0054EA 01:94DA: 08        .byte $08, $F0, $0F, $00   ; 
- - - - - - 0x0054EE 01:94DE: F0        .byte $F0, $F0, $09, $01   ; 
- - - - - - 0x0054F2 01:94E2: F8        .byte $F8, $F0, $0B, $01   ; 



_off007_00_94E6_4D:
@start:
; 00 
- - - - - - 0x0054F6 01:94E6: 04        .byte $04   ; 
- - - - - - 0x0054F7 01:94E7: D7        .byte off_94BD + $100 - @start   ; 
; 01 
- - - - - - 0x0054F8 01:94E8: FF        .byte $FF   ; 
- - - - - - 0x0054F9 01:94E9: D7        .byte off_94BD + $100 - @start   ; 



off_94EA:
- D 0 - I - 0x0054FA 01:94EA: 0B        .byte $0B   ; counter
- D 0 - I - 0x0054FB 01:94EB: F6        .byte $F6, $E9, $1F, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x0054FF 01:94EF: F8        .byte $F8, $EC, $1F, $01   ; 
- D 0 - I - 0x005503 01:94F3: FC        .byte $FC, $E8, $1D, $01   ; 
- D 0 - I - 0x005507 01:94F7: 00        .byte $00, $00, $25, $00   ; 
- D 0 - I - 0x00550B 01:94FB: 08        .byte $08, $00, $27, $00   ; 
- D 0 - I - 0x00550F 01:94FF: F0        .byte $F0, $00, $21, $00   ; 
- D 0 - I - 0x005513 01:9503: F8        .byte $F8, $00, $23, $00   ; 
- D 0 - I - 0x005517 01:9507: 00        .byte $00, $F0, $05, $01   ; 
- D 0 - I - 0x00551B 01:950B: 08        .byte $08, $F0, $07, $01   ; 
- D 0 - I - 0x00551F 01:950F: F0        .byte $F0, $F0, $01, $00   ; 
- D 0 - I - 0x005523 01:9513: F8        .byte $F8, $F0, $03, $00   ; 



off_9517:
- D 0 - I - 0x005527 01:9517: 0A        .byte $0A   ; counter
- D 0 - I - 0x005528 01:9518: F2        .byte $F2, $E2, $1D, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x00552C 01:951C: FA        .byte $FA, $E7, $1F, $01   ; 
- D 0 - I - 0x005530 01:9520: 00        .byte $00, $00, $2D, $00   ; 
- D 0 - I - 0x005534 01:9524: 08        .byte $08, $00, $2F, $00   ; 
- D 0 - I - 0x005538 01:9528: F0        .byte $F0, $00, $29, $00   ; 
- D 0 - I - 0x00553C 01:952C: F8        .byte $F8, $00, $2B, $00   ; 
- D 0 - I - 0x005540 01:9530: 00        .byte $00, $F0, $0D, $01   ; 
- D 0 - I - 0x005544 01:9534: 08        .byte $08, $F0, $0F, $01   ; 
- D 0 - I - 0x005548 01:9538: F0        .byte $F0, $F0, $09, $02   ; 
- D 0 - I - 0x00554C 01:953C: F8        .byte $F8, $F0, $0B, $02   ; 



off_9540:
- D 0 - I - 0x005550 01:9540: 09        .byte $09   ; counter
- D 0 - I - 0x005551 01:9541: F6        .byte $F6, $EA, $1F, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x005555 01:9545: F0        .byte $F0, $00, $31, $00   ; 
- D 0 - I - 0x005559 01:9549: F8        .byte $F8, $00, $33, $00   ; 
- D 0 - I - 0x00555D 01:954D: 00        .byte $00, $00, $35, $00   ; 
- D 0 - I - 0x005561 01:9551: 08        .byte $08, $00, $37, $00   ; 
- D 0 - I - 0x005565 01:9555: 00        .byte $00, $F0, $15, $01   ; 
- D 0 - I - 0x005569 01:9559: 08        .byte $08, $F0, $17, $01   ; 
- D 0 - I - 0x00556D 01:955D: F0        .byte $F0, $F0, $11, $02   ; 
- D 0 - I - 0x005571 01:9561: F8        .byte $F8, $F0, $13, $02   ; 



_off007_00_9565_4E:
@start:
; 00 
- D 0 - I - 0x005575 01:9565: 0C        .byte $0C   ; 
- D 0 - I - 0x005576 01:9566: 85        .byte off_94EA + $100 - @start   ; 
; 01 
- D 0 - I - 0x005577 01:9567: 12        .byte $12   ; 
- D 0 - I - 0x005578 01:9568: B2        .byte off_9517 + $100 - @start   ; 
; 02 
- D 0 - I - 0x005579 01:9569: 0C        .byte $0C   ; 
- D 0 - I - 0x00557A 01:956A: DB        .byte off_9540 + $100 - @start   ; 
; 03 
- D 0 - I - 0x00557B 01:956B: 12        .byte $12   ; 
- D 0 - I - 0x00557C 01:956C: B2        .byte off_9517 + $100 - @start   ; 
; 04 
- - - - - - 0x00557D 01:956D: 00        .byte $00   ; 
- - - - - - 0x00557E 01:956E: 85        .byte off_94EA + $100 - @start   ; 



off_956F:
- D 0 - I - 0x00557F 01:956F: 0B        .byte $0B   ; counter
- D 0 - I - 0x005580 01:9570: F6        .byte $F6, $E9, $1F, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x005584 01:9574: F8        .byte $F8, $EC, $1F, $01   ; 
- D 0 - I - 0x005588 01:9578: FC        .byte $FC, $E8, $1D, $01   ; 
- D 0 - I - 0x00558C 01:957C: 00        .byte $00, $00, $25, $00   ; 
- D 0 - I - 0x005590 01:9580: 08        .byte $08, $00, $27, $00   ; 
- D 0 - I - 0x005594 01:9584: F0        .byte $F0, $00, $21, $00   ; 
- D 0 - I - 0x005598 01:9588: F8        .byte $F8, $00, $23, $00   ; 
- D 0 - I - 0x00559C 01:958C: 00        .byte $00, $F0, $05, $01   ; 
- D 0 - I - 0x0055A0 01:9590: 08        .byte $08, $F0, $07, $01   ; 
- D 0 - I - 0x0055A4 01:9594: F0        .byte $F0, $F0, $01, $00   ; 
- D 0 - I - 0x0055A8 01:9598: F8        .byte $F8, $F0, $03, $00   ; 



off_959C:
- D 0 - I - 0x0055AC 01:959C: 0A        .byte $0A   ; counter
- D 0 - I - 0x0055AD 01:959D: F2        .byte $F2, $E2, $1D, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x0055B1 01:95A1: FA        .byte $FA, $E7, $1F, $01   ; 
- D 0 - I - 0x0055B5 01:95A5: 00        .byte $00, $00, $2D, $00   ; 
- D 0 - I - 0x0055B9 01:95A9: 08        .byte $08, $00, $2F, $00   ; 
- D 0 - I - 0x0055BD 01:95AD: F0        .byte $F0, $00, $29, $00   ; 
- D 0 - I - 0x0055C1 01:95B1: F8        .byte $F8, $00, $2B, $00   ; 
- D 0 - I - 0x0055C5 01:95B5: 00        .byte $00, $F0, $0D, $01   ; 
- D 0 - I - 0x0055C9 01:95B9: 08        .byte $08, $F0, $0F, $01   ; 
- D 0 - I - 0x0055CD 01:95BD: F0        .byte $F0, $F0, $09, $02   ; 
- D 0 - I - 0x0055D1 01:95C1: F8        .byte $F8, $F0, $0B, $02   ; 



off_95C5:
- D 0 - I - 0x0055D5 01:95C5: 09        .byte $09   ; counter
- D 0 - I - 0x0055D6 01:95C6: F6        .byte $F6, $EA, $1F, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x0055DA 01:95CA: F0        .byte $F0, $00, $31, $00   ; 
- D 0 - I - 0x0055DE 01:95CE: F8        .byte $F8, $00, $33, $00   ; 
- D 0 - I - 0x0055E2 01:95D2: 00        .byte $00, $00, $35, $00   ; 
- D 0 - I - 0x0055E6 01:95D6: 08        .byte $08, $00, $37, $00   ; 
- D 0 - I - 0x0055EA 01:95DA: 00        .byte $00, $F0, $15, $01   ; 
- D 0 - I - 0x0055EE 01:95DE: 08        .byte $08, $F0, $17, $01   ; 
- D 0 - I - 0x0055F2 01:95E2: F0        .byte $F0, $F0, $11, $02   ; 
- D 0 - I - 0x0055F6 01:95E6: F8        .byte $F8, $F0, $13, $02   ; 



_off007_00_95EA_4F:
@start:
; 00 
- D 0 - I - 0x0055FA 01:95EA: 0C        .byte $0C   ; 
- D 0 - I - 0x0055FB 01:95EB: 85        .byte off_956F + $100 - @start   ; 
; 01 
- D 0 - I - 0x0055FC 01:95EC: 0C        .byte $0C   ; 
- D 0 - I - 0x0055FD 01:95ED: B2        .byte off_959C + $100 - @start   ; 
; 02 
- D 0 - I - 0x0055FE 01:95EE: 0C        .byte $0C   ; 
- D 0 - I - 0x0055FF 01:95EF: DB        .byte off_95C5 + $100 - @start   ; 
; 03 
- D 0 - I - 0x005600 01:95F0: 0C        .byte $0C   ; 
- D 0 - I - 0x005601 01:95F1: B2        .byte off_959C + $100 - @start   ; 
; 04 
- D 0 - I - 0x005602 01:95F2: 00        .byte $00   ; 
- D 0 - I - 0x005603 01:95F3: 85        .byte off_956F + $100 - @start   ; 



off_95F4:
- D 0 - I - 0x005604 01:95F4: 0B        .byte $0B   ; counter
- D 0 - I - 0x005605 01:95F5: F6        .byte $F6, $E9, $1F, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x005609 01:95F9: F8        .byte $F8, $EC, $1F, $01   ; 
- D 0 - I - 0x00560D 01:95FD: FC        .byte $FC, $E8, $1D, $01   ; 
- D 0 - I - 0x005611 01:9601: 00        .byte $00, $00, $25, $00   ; 
- D 0 - I - 0x005615 01:9605: 08        .byte $08, $00, $27, $00   ; 
- D 0 - I - 0x005619 01:9609: F0        .byte $F0, $00, $21, $00   ; 
- D 0 - I - 0x00561D 01:960D: F8        .byte $F8, $00, $23, $00   ; 
- D 0 - I - 0x005621 01:9611: 00        .byte $00, $F0, $05, $01   ; 
- D 0 - I - 0x005625 01:9615: 08        .byte $08, $F0, $07, $01   ; 
- D 0 - I - 0x005629 01:9619: F0        .byte $F0, $F0, $01, $00   ; 
- D 0 - I - 0x00562D 01:961D: F8        .byte $F8, $F0, $03, $00   ; 



off_9621:
- D 0 - I - 0x005631 01:9621: 0A        .byte $0A   ; counter
- D 0 - I - 0x005632 01:9622: F2        .byte $F2, $E2, $1D, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x005636 01:9626: FA        .byte $FA, $E7, $1F, $01   ; 
- D 0 - I - 0x00563A 01:962A: 00        .byte $00, $00, $2D, $00   ; 
- D 0 - I - 0x00563E 01:962E: 08        .byte $08, $00, $2F, $00   ; 
- D 0 - I - 0x005642 01:9632: F0        .byte $F0, $00, $29, $00   ; 
- D 0 - I - 0x005646 01:9636: F8        .byte $F8, $00, $2B, $00   ; 
- D 0 - I - 0x00564A 01:963A: 00        .byte $00, $F0, $0D, $01   ; 
- D 0 - I - 0x00564E 01:963E: 08        .byte $08, $F0, $0F, $01   ; 
- D 0 - I - 0x005652 01:9642: F0        .byte $F0, $F0, $09, $02   ; 
- D 0 - I - 0x005656 01:9646: F8        .byte $F8, $F0, $0B, $02   ; 



off_964A:
- D 0 - I - 0x00565A 01:964A: 09        .byte $09   ; counter
- D 0 - I - 0x00565B 01:964B: F6        .byte $F6, $EA, $1F, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x00565F 01:964F: F0        .byte $F0, $00, $31, $00   ; 
- D 0 - I - 0x005663 01:9653: F8        .byte $F8, $00, $33, $00   ; 
- D 0 - I - 0x005667 01:9657: 00        .byte $00, $00, $35, $00   ; 
- D 0 - I - 0x00566B 01:965B: 08        .byte $08, $00, $37, $00   ; 
- D 0 - I - 0x00566F 01:965F: 00        .byte $00, $F0, $15, $01   ; 
- D 0 - I - 0x005673 01:9663: 08        .byte $08, $F0, $17, $01   ; 
- D 0 - I - 0x005677 01:9667: F0        .byte $F0, $F0, $11, $02   ; 
- D 0 - I - 0x00567B 01:966B: F8        .byte $F8, $F0, $13, $02   ; 



_off007_00_966F_50:
_off007_00_966F_51:
@start:
; 00 
- D 0 - I - 0x00567F 01:966F: 0A        .byte $0A   ; 
- D 0 - I - 0x005680 01:9670: 85        .byte off_95F4 + $100 - @start   ; 
; 01 
- D 0 - I - 0x005681 01:9671: 0A        .byte $0A   ; 
- D 0 - I - 0x005682 01:9672: B2        .byte off_9621 + $100 - @start   ; 
; 02 
- D 0 - I - 0x005683 01:9673: 0A        .byte $0A   ; 
- D 0 - I - 0x005684 01:9674: DB        .byte off_964A + $100 - @start   ; 
; 03 
- D 0 - I - 0x005685 01:9675: 0A        .byte $0A   ; 
- D 0 - I - 0x005686 01:9676: B2        .byte off_9621 + $100 - @start   ; 
; 04 
- D 0 - I - 0x005687 01:9677: 00        .byte $00   ; 
- D 0 - I - 0x005688 01:9678: 85        .byte off_95F4 + $100 - @start   ; 



off_9679:
- D 0 - I - 0x005689 01:9679: 0A        .byte $0A   ; counter
- D 0 - I - 0x00568A 01:967A: 10        .byte $10, $00, $53, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x00568E 01:967E: 10        .byte $10, $F0, $51, $00   ; 
- D 0 - I - 0x005692 01:9682: F0        .byte $F0, $F0, $49, $00   ; 
- D 0 - I - 0x005696 01:9686: F8        .byte $F8, $F0, $4B, $00   ; 
- D 0 - I - 0x00569A 01:968A: F0        .byte $F0, $00, $69, $00   ; 
- D 0 - I - 0x00569E 01:968E: F8        .byte $F8, $00, $6B, $00   ; 
- D 0 - I - 0x0056A2 01:9692: 00        .byte $00, $00, $6D, $00   ; 
- D 0 - I - 0x0056A6 01:9696: 08        .byte $08, $00, $6F, $00   ; 
- D 0 - I - 0x0056AA 01:969A: 00        .byte $00, $F0, $4D, $01   ; 
- D 0 - I - 0x0056AE 01:969E: 08        .byte $08, $F0, $4F, $01   ; 



off_96A2:
- D 0 - I - 0x0056B2 01:96A2: 0A        .byte $0A   ; counter
- D 0 - I - 0x0056B3 01:96A3: 10        .byte $10, $F0, $43, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x0056B7 01:96A7: 08        .byte $08, $F0, $41, $01   ; 
- D 0 - I - 0x0056BB 01:96AB: F0        .byte $F0, $F0, $09, $00   ; 
- D 0 - I - 0x0056BF 01:96AF: F8        .byte $F8, $F0, $0B, $00   ; 
- D 0 - I - 0x0056C3 01:96B3: 08        .byte $08, $00, $61, $00   ; 
- D 0 - I - 0x0056C7 01:96B7: 10        .byte $10, $00, $63, $00   ; 
- D 0 - I - 0x0056CB 01:96BB: 00        .byte $00, $00, $6D, $00   ; 
- D 0 - I - 0x0056CF 01:96BF: 00        .byte $00, $F0, $4D, $01   ; 
- D 0 - I - 0x0056D3 01:96C3: F0        .byte $F0, $00, $69, $00   ; 
- D 0 - I - 0x0056D7 01:96C7: F8        .byte $F8, $00, $6B, $00   ; 



off_96CB:
- D 0 - I - 0x0056DB 01:96CB: 0A        .byte $0A   ; counter
- D 0 - I - 0x0056DC 01:96CC: 10        .byte $10, $F0, $47, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x0056E0 01:96D0: 08        .byte $08, $F0, $45, $01   ; 
- D 0 - I - 0x0056E4 01:96D4: 08        .byte $08, $00, $65, $00   ; 
- D 0 - I - 0x0056E8 01:96D8: 10        .byte $10, $00, $67, $00   ; 
- D 0 - I - 0x0056EC 01:96DC: 00        .byte $00, $00, $6D, $00   ; 
- D 0 - I - 0x0056F0 01:96E0: F0        .byte $F0, $F0, $49, $00   ; 
- D 0 - I - 0x0056F4 01:96E4: F8        .byte $F8, $F0, $4B, $00   ; 
- D 0 - I - 0x0056F8 01:96E8: 00        .byte $00, $F0, $4D, $01   ; 
- D 0 - I - 0x0056FC 01:96EC: F0        .byte $F0, $00, $69, $00   ; 
- D 0 - I - 0x005700 01:96F0: F8        .byte $F8, $00, $6B, $00   ; 



_off007_00_96F4_53:
@start:
; 00 
- D 0 - I - 0x005704 01:96F4: 04        .byte $04   ; 
- D 0 - I - 0x005705 01:96F5: 85        .byte off_9679 + $100 - @start   ; 
; 01 
- D 0 - I - 0x005706 01:96F6: 05        .byte $05   ; 
- D 0 - I - 0x005707 01:96F7: AE        .byte off_96A2 + $100 - @start   ; 
; 02 
- D 0 - I - 0x005708 01:96F8: 08        .byte $08   ; 
- D 0 - I - 0x005709 01:96F9: D7        .byte off_96CB + $100 - @start   ; 
; 03 
- D 0 - I - 0x00570A 01:96FA: 04        .byte $04   ; 
- D 0 - I - 0x00570B 01:96FB: AE        .byte off_96A2 + $100 - @start   ; 
; 04 
- D 0 - I - 0x00570C 01:96FC: FF        .byte $FF   ; 
- D 0 - I - 0x00570D 01:96FD: 85        .byte off_9679 + $100 - @start   ; 



off_96FE:
- - - - - - 0x00570E 01:96FE: 05        .byte $05   ; counter
- - - - - - 0x00570F 01:96FF: 00        .byte $00, $F8, $45, $00   ; spr_X, spr_Y, spr_T, spr_A
- - - - - - 0x005713 01:9703: 00        .byte $00, $00, $1D, $00   ; 
- - - - - - 0x005717 01:9707: 08        .byte $08, $00, $1F, $00   ; 
- - - - - - 0x00571B 01:970B: F0        .byte $F0, $00, $19, $00   ; 
- - - - - - 0x00571F 01:970F: F8        .byte $F8, $00, $1B, $00   ; 



off_9713:
- - - - - - 0x005723 01:9713: 05        .byte $05   ; counter
- - - - - - 0x005724 01:9714: F8        .byte $F8, $F0, $43, $00   ; spr_X, spr_Y, spr_T, spr_A
- - - - - - 0x005728 01:9718: 00        .byte $00, $00, $1D, $00   ; 
- - - - - - 0x00572C 01:971C: 08        .byte $08, $00, $1F, $00   ; 
- - - - - - 0x005730 01:9720: F0        .byte $F0, $00, $19, $00   ; 
- - - - - - 0x005734 01:9724: F8        .byte $F8, $00, $1B, $00   ; 



_off007_00_9728_54:
@start:
; 00 
- - - - - - 0x005738 01:9728: 08        .byte $08   ; 
- - - - - - 0x005739 01:9729: D6        .byte off_96FE + $100 - @start   ; 
; 01 
- - - - - - 0x00573A 01:972A: 08        .byte $08   ; 
- - - - - - 0x00573B 01:972B: EB        .byte off_9713 + $100 - @start   ; 
; 02 
- - - - - - 0x00573C 01:972C: 00        .byte $00   ; 
- - - - - - 0x00573D 01:972D: D6        .byte off_96FE + $100 - @start   ; 



off_972E:
- D 0 - I - 0x00573E 01:972E: 09        .byte $09   ; counter
- D 0 - I - 0x00573F 01:972F: 00        .byte $00, $ED, $4D, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x005743 01:9733: 00        .byte $00, $F8, $45, $01   ; 
- D 0 - I - 0x005747 01:9737: 08        .byte $08, $F8, $47, $01   ; 
- D 0 - I - 0x00574B 01:973B: F0        .byte $F0, $F8, $41, $01   ; 
- D 0 - I - 0x00574F 01:973F: F8        .byte $F8, $F8, $43, $01   ; 
- D 0 - I - 0x005753 01:9743: 00        .byte $00, $08, $65, $00   ; 
- D 0 - I - 0x005757 01:9747: 08        .byte $08, $08, $67, $00   ; 
- D 0 - I - 0x00575B 01:974B: F0        .byte $F0, $08, $61, $00   ; 
- D 0 - I - 0x00575F 01:974F: F8        .byte $F8, $08, $63, $00   ; 



off_9753:
- D 0 - I - 0x005763 01:9753: 09        .byte $09   ; counter
- D 0 - I - 0x005764 01:9754: 00        .byte $00, $F6, $45, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x005768 01:9758: 08        .byte $08, $F6, $47, $01   ; 
- D 0 - I - 0x00576C 01:975C: F0        .byte $F0, $F6, $41, $01   ; 
- D 0 - I - 0x005770 01:9760: F8        .byte $F8, $F6, $43, $01   ; 
- D 0 - I - 0x005774 01:9764: FC        .byte $FC, $EA, $4D, $01   ; 
- D 0 - I - 0x005778 01:9768: 00        .byte $00, $06, $65, $00   ; 
- D 0 - I - 0x00577C 01:976C: 08        .byte $08, $06, $67, $00   ; 
- D 0 - I - 0x005780 01:9770: F0        .byte $F0, $06, $61, $00   ; 
- D 0 - I - 0x005784 01:9774: F8        .byte $F8, $06, $63, $00   ; 



off_9778:
- D 0 - I - 0x005788 01:9778: 09        .byte $09   ; counter
- D 0 - I - 0x005789 01:9779: 00        .byte $00, $F8, $45, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x00578D 01:977D: 08        .byte $08, $F8, $47, $01   ; 
- D 0 - I - 0x005791 01:9781: F0        .byte $F0, $F8, $41, $01   ; 
- D 0 - I - 0x005795 01:9785: F8        .byte $F8, $F8, $43, $01   ; 
- D 0 - I - 0x005799 01:9789: FC        .byte $FC, $E4, $4F, $01   ; 
- D 0 - I - 0x00579D 01:978D: 00        .byte $00, $08, $65, $00   ; 
- D 0 - I - 0x0057A1 01:9791: 08        .byte $08, $08, $67, $00   ; 
- D 0 - I - 0x0057A5 01:9795: F0        .byte $F0, $08, $61, $00   ; 
- D 0 - I - 0x0057A9 01:9799: F8        .byte $F8, $08, $63, $00   ; 



off_979D:
- D 0 - I - 0x0057AD 01:979D: 08        .byte $08   ; counter
- D 0 - I - 0x0057AE 01:979E: 00        .byte $00, $F6, $45, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x0057B2 01:97A2: 08        .byte $08, $F6, $47, $01   ; 
- D 0 - I - 0x0057B6 01:97A6: F0        .byte $F0, $F6, $41, $01   ; 
- D 0 - I - 0x0057BA 01:97AA: F8        .byte $F8, $F6, $43, $01   ; 
- D 0 - I - 0x0057BE 01:97AE: 00        .byte $00, $06, $65, $00   ; 
- D 0 - I - 0x0057C2 01:97B2: 08        .byte $08, $06, $67, $00   ; 
- D 0 - I - 0x0057C6 01:97B6: F0        .byte $F0, $06, $61, $00   ; 
- D 0 - I - 0x0057CA 01:97BA: F8        .byte $F8, $06, $63, $00   ; 



_off007_00_97BE_55:
_off007_00_97BE_58:
_off007_00_97BE_5B:
@start:
; 00 
- D 0 - I - 0x0057CE 01:97BE: 08        .byte $08   ; 
- D 0 - I - 0x0057CF 01:97BF: 70        .byte off_972E + $100 - @start   ; 
; 01 
- D 0 - I - 0x0057D0 01:97C0: 08        .byte $08   ; 
- D 0 - I - 0x0057D1 01:97C1: 95        .byte off_9753 + $100 - @start   ; 
; 02 
- D 0 - I - 0x0057D2 01:97C2: 08        .byte $08   ; 
- D 0 - I - 0x0057D3 01:97C3: BA        .byte off_9778 + $100 - @start   ; 
; 03 
- D 0 - I - 0x0057D4 01:97C4: 08        .byte $08   ; 
- D 0 - I - 0x0057D5 01:97C5: DF        .byte off_979D + $100 - @start   ; 
; 04 
- D 0 - I - 0x0057D6 01:97C6: 00        .byte $00   ; 
- D 0 - I - 0x0057D7 01:97C7: 70        .byte off_972E + $100 - @start   ; 



off_97C8:
- D 0 - I - 0x0057D8 01:97C8: 09        .byte $09   ; counter
- D 0 - I - 0x0057D9 01:97C9: 00        .byte $00, $F0, $05, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x0057DD 01:97CD: 08        .byte $08, $F0, $07, $01   ; 
- D 0 - I - 0x0057E1 01:97D1: F0        .byte $F0, $F0, $01, $01   ; 
- D 0 - I - 0x0057E5 01:97D5: F8        .byte $F8, $F0, $03, $01   ; 
- D 0 - I - 0x0057E9 01:97D9: 00        .byte $00, $10, $11, $00   ; 
- D 0 - I - 0x0057ED 01:97DD: 00        .byte $00, $00, $25, $00   ; 
- D 0 - I - 0x0057F1 01:97E1: 08        .byte $08, $00, $27, $00   ; 
- D 0 - I - 0x0057F5 01:97E5: F0        .byte $F0, $00, $21, $00   ; 
- D 0 - I - 0x0057F9 01:97E9: F8        .byte $F8, $00, $23, $00   ; 



off_97ED:
- D 0 - I - 0x0057FD 01:97ED: 08        .byte $08   ; counter
- D 0 - I - 0x0057FE 01:97EE: F8        .byte $F8, $F0, $0B, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x005802 01:97F2: 00        .byte $00, $F0, $0D, $01   ; 
- D 0 - I - 0x005806 01:97F6: 08        .byte $08, $F0, $0F, $01   ; 
- D 0 - I - 0x00580A 01:97FA: F8        .byte $F8, $10, $4B, $00   ; 
- D 0 - I - 0x00580E 01:97FE: 00        .byte $00, $00, $2D, $00   ; 
- D 0 - I - 0x005812 01:9802: 08        .byte $08, $00, $2F, $00   ; 
- D 0 - I - 0x005816 01:9806: F0        .byte $F0, $00, $29, $00   ; 
- D 0 - I - 0x00581A 01:980A: F8        .byte $F8, $00, $2B, $00   ; 



off_980E:
- D 0 - I - 0x00581E 01:980E: 08        .byte $08   ; counter
- D 0 - I - 0x00581F 01:980F: F8        .byte $F8, $F0, $13, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x005823 01:9813: 00        .byte $00, $F0, $15, $01   ; 
- D 0 - I - 0x005827 01:9817: 08        .byte $08, $F0, $17, $01   ; 
- D 0 - I - 0x00582B 01:981B: F0        .byte $F0, $10, $51, $00   ; 
- D 0 - I - 0x00582F 01:981F: 00        .byte $00, $00, $35, $00   ; 
- D 0 - I - 0x005833 01:9823: 08        .byte $08, $00, $37, $00   ; 
- D 0 - I - 0x005837 01:9827: F0        .byte $F0, $00, $31, $00   ; 
- D 0 - I - 0x00583B 01:982B: F8        .byte $F8, $00, $33, $00   ; 



_off007_00_982F_56:
@start:
; 00 
- D 0 - I - 0x00583F 01:982F: 0A        .byte $0A   ; 
- D 0 - I - 0x005840 01:9830: 99        .byte off_97C8 + $100 - @start   ; 
; 01 
- D 0 - I - 0x005841 01:9831: 06        .byte $06   ; 
- D 0 - I - 0x005842 01:9832: BE        .byte off_97ED + $100 - @start   ; 
; 02 
- D 0 - I - 0x005843 01:9833: 0E        .byte $0E   ; 
- D 0 - I - 0x005844 01:9834: DF        .byte off_980E + $100 - @start   ; 
; 03 
- D 0 - I - 0x005845 01:9835: 06        .byte $06   ; 
- D 0 - I - 0x005846 01:9836: BE        .byte off_97ED + $100 - @start   ; 
; 04 
- D 0 - I - 0x005847 01:9837: 00        .byte $00   ; 
- D 0 - I - 0x005848 01:9838: 99        .byte off_97C8 + $100 - @start   ; 



_off007_00_9839_5A:
@start:
; 00 
- D 0 - I - 0x005849 01:9839: 0A        .byte $0A   ; 
- D 0 - I - 0x00584A 01:983A: 8F        .byte off_97C8 + $100 - @start   ; 
; 01 
- D 0 - I - 0x00584B 01:983B: 06        .byte $06   ; 
- D 0 - I - 0x00584C 01:983C: B4        .byte off_97ED + $100 - @start   ; 
; 02 
- D 0 - I - 0x00584D 01:983D: 0E        .byte $0E   ; 
- D 0 - I - 0x00584E 01:983E: D5        .byte off_980E + $100 - @start   ; 
; 03 
- D 0 - I - 0x00584F 01:983F: 06        .byte $06   ; 
- D 0 - I - 0x005850 01:9840: B4        .byte off_97ED + $100 - @start   ; 
; 04 
- D 0 - I - 0x005851 01:9841: FF        .byte $FF   ; 
- D 0 - I - 0x005852 01:9842: 8F        .byte off_97C8 + $100 - @start   ; 



off_9843:
- D 0 - I - 0x005853 01:9843: 09        .byte $09   ; counter
- D 0 - I - 0x005854 01:9844: 00        .byte $00, $F0, $1D, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x005858 01:9848: 08        .byte $08, $F0, $1F, $01   ; 
- D 0 - I - 0x00585C 01:984C: 00        .byte $00, $10, $11, $00   ; 
- D 0 - I - 0x005860 01:9850: F0        .byte $F0, $F0, $19, $01   ; 
- D 0 - I - 0x005864 01:9854: F8        .byte $F8, $F0, $1B, $01   ; 
- D 0 - I - 0x005868 01:9858: 00        .byte $00, $00, $25, $00   ; 
- D 0 - I - 0x00586C 01:985C: 08        .byte $08, $00, $27, $00   ; 
- D 0 - I - 0x005870 01:9860: F0        .byte $F0, $00, $21, $00   ; 
- D 0 - I - 0x005874 01:9864: F8        .byte $F8, $00, $23, $00   ; 



off_9868:
- D 0 - I - 0x005878 01:9868: 09        .byte $09   ; counter
- D 0 - I - 0x005879 01:9869: 08        .byte $08, $F0, $0F, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x00587D 01:986D: 00        .byte $00, $F0, $3D, $01   ; 
- D 0 - I - 0x005881 01:9871: F0        .byte $F0, $F0, $39, $01   ; 
- D 0 - I - 0x005885 01:9875: F8        .byte $F8, $F0, $3B, $01   ; 
- D 0 - I - 0x005889 01:9879: F8        .byte $F8, $10, $4B, $00   ; 
- D 0 - I - 0x00588D 01:987D: 00        .byte $00, $00, $2D, $00   ; 
- D 0 - I - 0x005891 01:9881: 08        .byte $08, $00, $2F, $00   ; 
- D 0 - I - 0x005895 01:9885: F0        .byte $F0, $00, $29, $00   ; 
- D 0 - I - 0x005899 01:9889: F8        .byte $F8, $00, $2B, $00   ; 



off_988D:
- D 0 - I - 0x00589D 01:988D: 07        .byte $07   ; counter
- D 0 - I - 0x00589E 01:988E: 00        .byte $00, $F0, $6B, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x0058A2 01:9892: 08        .byte $08, $F0, $6D, $01   ; 
- D 0 - I - 0x0058A6 01:9896: F0        .byte $F0, $10, $51, $00   ; 
- D 0 - I - 0x0058AA 01:989A: 00        .byte $00, $00, $35, $00   ; 
- D 0 - I - 0x0058AE 01:989E: 08        .byte $08, $00, $37, $00   ; 
- D 0 - I - 0x0058B2 01:98A2: F0        .byte $F0, $00, $31, $00   ; 
- D 0 - I - 0x0058B6 01:98A6: F8        .byte $F8, $00, $33, $00   ; 



_off007_00_98AA_57:
@start:
; 00 
- D 0 - I - 0x0058BA 01:98AA: 08        .byte $08   ; 
- D 0 - I - 0x0058BB 01:98AB: 99        .byte off_9843 + $100 - @start   ; 
; 01 
- D 0 - I - 0x0058BC 01:98AC: 06        .byte $06   ; 
- D 0 - I - 0x0058BD 01:98AD: BE        .byte off_9868 + $100 - @start   ; 
; 02 
- D 0 - I - 0x0058BE 01:98AE: 0A        .byte $0A   ; 
- D 0 - I - 0x0058BF 01:98AF: E3        .byte off_988D + $100 - @start   ; 
; 03 
- D 0 - I - 0x0058C0 01:98B0: 06        .byte $06   ; 
- D 0 - I - 0x0058C1 01:98B1: BE        .byte off_9868 + $100 - @start   ; 
; 04 
- D 0 - I - 0x0058C2 01:98B2: 00        .byte $00   ; 
- D 0 - I - 0x0058C3 01:98B3: 99        .byte off_9843 + $100 - @start   ; 



off_98B4:
- D 0 - I - 0x0058C4 01:98B4: 09        .byte $09   ; counter
- D 0 - I - 0x0058C5 01:98B5: 00        .byte $00, $F0, $05, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x0058C9 01:98B9: 08        .byte $08, $F0, $07, $01   ; 
- D 0 - I - 0x0058CD 01:98BD: 00        .byte $00, $00, $65, $00   ; 
- D 0 - I - 0x0058D1 01:98C1: 08        .byte $08, $00, $67, $00   ; 
- D 0 - I - 0x0058D5 01:98C5: F0        .byte $F0, $F0, $01, $00   ; 
- D 0 - I - 0x0058D9 01:98C9: F8        .byte $F8, $F0, $03, $00   ; 
- D 0 - I - 0x0058DD 01:98CD: E8        .byte $E8, $F8, $45, $01   ; 
- D 0 - I - 0x0058E1 01:98D1: F0        .byte $F0, $00, $21, $00   ; 
- D 0 - I - 0x0058E5 01:98D5: F8        .byte $F8, $00, $23, $00   ; 



off_98D9:
- D 0 - I - 0x0058E9 01:98D9: 0A        .byte $0A   ; counter
- D 0 - I - 0x0058EA 01:98DA: E6        .byte $E6, $F8, $45, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x0058EE 01:98DE: F0        .byte $F0, $F0, $69, $00   ; 
- D 0 - I - 0x0058F2 01:98E2: F8        .byte $F8, $F0, $6B, $00   ; 
- D 0 - I - 0x0058F6 01:98E6: 00        .byte $00, $00, $61, $00   ; 
- D 0 - I - 0x0058FA 01:98EA: 08        .byte $08, $00, $63, $00   ; 
- D 0 - I - 0x0058FE 01:98EE: 00        .byte $00, $F0, $09, $01   ; 
- D 0 - I - 0x005902 01:98F2: 08        .byte $08, $F0, $0B, $01   ; 
- D 0 - I - 0x005906 01:98F6: F0        .byte $F0, $00, $21, $00   ; 
- D 0 - I - 0x00590A 01:98FA: F8        .byte $F8, $00, $23, $00   ; 
- D 0 - I - 0x00590E 01:98FE: E2        .byte $E2, $F0, $43, $01   ; 



off_9902:
- D 0 - I - 0x005912 01:9902: 0A        .byte $0A   ; counter
- D 0 - I - 0x005913 01:9903: E5        .byte $E5, $F1, $45, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x005917 01:9907: 00        .byte $00, $F0, $0D, $01   ; 
- D 0 - I - 0x00591B 01:990B: 08        .byte $08, $F0, $0F, $01   ; 
- D 0 - I - 0x00591F 01:990F: F0        .byte $F0, $F0, $01, $00   ; 
- D 0 - I - 0x005923 01:9913: F8        .byte $F8, $F0, $03, $00   ; 
- D 0 - I - 0x005927 01:9917: E8        .byte $E8, $F3, $45, $01   ; 
- D 0 - I - 0x00592B 01:991B: 00        .byte $00, $00, $25, $00   ; 
- D 0 - I - 0x00592F 01:991F: 08        .byte $08, $00, $27, $00   ; 
- D 0 - I - 0x005933 01:9923: F0        .byte $F0, $00, $21, $00   ; 
- D 0 - I - 0x005937 01:9927: F8        .byte $F8, $00, $23, $00   ; 



off_992B:
- D 0 - I - 0x00593B 01:992B: 09        .byte $09   ; counter
- D 0 - I - 0x00593C 01:992C: F0        .byte $F0, $F0, $69, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x005940 01:9930: F8        .byte $F8, $F0, $6B, $00   ; 
- D 0 - I - 0x005944 01:9934: 00        .byte $00, $00, $61, $00   ; 
- D 0 - I - 0x005948 01:9938: 08        .byte $08, $00, $63, $00   ; 
- D 0 - I - 0x00594C 01:993C: 00        .byte $00, $F0, $11, $01   ; 
- D 0 - I - 0x005950 01:9940: 08        .byte $08, $F0, $13, $01   ; 
- D 0 - I - 0x005954 01:9944: F0        .byte $F0, $00, $21, $00   ; 
- D 0 - I - 0x005958 01:9948: F8        .byte $F8, $00, $23, $00   ; 
- D 0 - I - 0x00595C 01:994C: E0        .byte $E0, $F0, $43, $01   ; 



_off007_00_9950_5C:
_off007_00_9950_5D:
_off007_00_9950_5F:
_off007_00_9950_62:
@start:
; 00 
- D 0 - I - 0x005960 01:9950: 08        .byte $08   ; 
- D 0 - I - 0x005961 01:9951: 64        .byte off_98B4 + $100 - @start   ; 
; 01 
- D 0 - I - 0x005962 01:9952: 08        .byte $08   ; 
- D 0 - I - 0x005963 01:9953: 89        .byte off_98D9 + $100 - @start   ; 
; 02 
- D 0 - I - 0x005964 01:9954: 08        .byte $08   ; 
- D 0 - I - 0x005965 01:9955: B2        .byte off_9902 + $100 - @start   ; 
; 03 
- D 0 - I - 0x005966 01:9956: 08        .byte $08   ; 
- D 0 - I - 0x005967 01:9957: DB        .byte off_992B + $100 - @start   ; 
; 04 
- D 0 - I - 0x005968 01:9958: 00        .byte $00   ; 
- D 0 - I - 0x005969 01:9959: 64        .byte off_98B4 + $100 - @start   ; 



off_995A:
- D 0 - I - 0x00596A 01:995A: 0B        .byte $0B   ; counter
- D 0 - I - 0x00596B 01:995B: F6        .byte $F6, $1B, $45, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x00596F 01:995F: 00        .byte $00, $F0, $05, $01   ; 
- D 0 - I - 0x005973 01:9963: 08        .byte $08, $F0, $07, $01   ; 
- D 0 - I - 0x005977 01:9967: 00        .byte $00, $00, $65, $00   ; 
- D 0 - I - 0x00597B 01:996B: 08        .byte $08, $00, $67, $00   ; 
- D 0 - I - 0x00597F 01:996F: 02        .byte $02, $1C, $43, $01   ; 
- D 0 - I - 0x005983 01:9973: F7        .byte $F7, $18, $45, $01   ; 
- D 0 - I - 0x005987 01:9977: F0        .byte $F0, $F0, $01, $00   ; 
- D 0 - I - 0x00598B 01:997B: F8        .byte $F8, $F0, $03, $00   ; 
- D 0 - I - 0x00598F 01:997F: F0        .byte $F0, $00, $21, $00   ; 
- D 0 - I - 0x005993 01:9983: F8        .byte $F8, $00, $23, $00   ; 



off_9987:
- D 0 - I - 0x005997 01:9987: 0A        .byte $0A   ; counter
- D 0 - I - 0x005998 01:9988: 00        .byte $00, $00, $61, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x00599C 01:998C: 08        .byte $08, $00, $63, $00   ; 
- D 0 - I - 0x0059A0 01:9990: 00        .byte $00, $1C, $45, $01   ; 
- D 0 - I - 0x0059A4 01:9994: F8        .byte $F8, $12, $43, $01   ; 
- D 0 - I - 0x0059A8 01:9998: 00        .byte $00, $F0, $09, $01   ; 
- D 0 - I - 0x0059AC 01:999C: 08        .byte $08, $F0, $0B, $01   ; 
- D 0 - I - 0x0059B0 01:99A0: F0        .byte $F0, $F0, $01, $00   ; 
- D 0 - I - 0x0059B4 01:99A4: F8        .byte $F8, $F0, $03, $00   ; 
- D 0 - I - 0x0059B8 01:99A8: F0        .byte $F0, $00, $21, $00   ; 
- D 0 - I - 0x0059BC 01:99AC: F8        .byte $F8, $00, $23, $00   ; 



off_99B0:
- D 0 - I - 0x0059C0 01:99B0: 0B        .byte $0B   ; counter
- D 0 - I - 0x0059C1 01:99B1: 00        .byte $00, $19, $45, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x0059C5 01:99B5: 04        .byte $04, $18, $43, $01   ; 
- D 0 - I - 0x0059C9 01:99B9: F8        .byte $F8, $14, $45, $01   ; 
- D 0 - I - 0x0059CD 01:99BD: 00        .byte $00, $F0, $0D, $01   ; 
- D 0 - I - 0x0059D1 01:99C1: 08        .byte $08, $F0, $0F, $01   ; 
- D 0 - I - 0x0059D5 01:99C5: F0        .byte $F0, $F0, $01, $00   ; 
- D 0 - I - 0x0059D9 01:99C9: F8        .byte $F8, $F0, $03, $00   ; 
- D 0 - I - 0x0059DD 01:99CD: 00        .byte $00, $00, $25, $00   ; 
- D 0 - I - 0x0059E1 01:99D1: 08        .byte $08, $00, $27, $00   ; 
- D 0 - I - 0x0059E5 01:99D5: F0        .byte $F0, $00, $21, $00   ; 
- D 0 - I - 0x0059E9 01:99D9: F8        .byte $F8, $00, $23, $00   ; 



off_99DD:
- D 0 - I - 0x0059ED 01:99DD: 0A        .byte $0A   ; counter
- D 0 - I - 0x0059EE 01:99DE: 00        .byte $00, $00, $61, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x0059F2 01:99E2: 08        .byte $08, $00, $63, $00   ; 
- D 0 - I - 0x0059F6 01:99E6: 00        .byte $00, $11, $45, $01   ; 
- D 0 - I - 0x0059FA 01:99EA: F8        .byte $F8, $1B, $43, $01   ; 
- D 0 - I - 0x0059FE 01:99EE: 00        .byte $00, $F0, $11, $01   ; 
- D 0 - I - 0x005A02 01:99F2: 08        .byte $08, $F0, $13, $01   ; 
- D 0 - I - 0x005A06 01:99F6: F0        .byte $F0, $F0, $01, $00   ; 
- D 0 - I - 0x005A0A 01:99FA: F8        .byte $F8, $F0, $03, $00   ; 
- D 0 - I - 0x005A0E 01:99FE: F0        .byte $F0, $00, $21, $00   ; 
- D 0 - I - 0x005A12 01:9A02: F8        .byte $F8, $00, $23, $00   ; 



_off007_00_9A06_5E:
@start:
; 00 
- D 0 - I - 0x005A16 01:9A06: 06        .byte $06   ; 
- D 0 - I - 0x005A17 01:9A07: 54        .byte off_995A + $100 - @start   ; 
; 01 
- D 0 - I - 0x005A18 01:9A08: 08        .byte $08   ; 
- D 0 - I - 0x005A19 01:9A09: 81        .byte off_9987 + $100 - @start   ; 
; 02 
- D 0 - I - 0x005A1A 01:9A0A: 07        .byte $07   ; 
- D 0 - I - 0x005A1B 01:9A0B: AA        .byte off_99B0 + $100 - @start   ; 
; 03 
- D 0 - I - 0x005A1C 01:9A0C: 06        .byte $06   ; 
- D 0 - I - 0x005A1D 01:9A0D: D7        .byte off_99DD + $100 - @start   ; 
; 04 
- D 0 - I - 0x005A1E 01:9A0E: 00        .byte $00   ; 
- D 0 - I - 0x005A1F 01:9A0F: 54        .byte off_995A + $100 - @start   ; 



off_9A10:
- D 0 - I - 0x005A20 01:9A10: 09        .byte $09   ; counter
- D 0 - I - 0x005A21 01:9A11: 00        .byte $00, $F0, $05, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x005A25 01:9A15: 08        .byte $08, $F0, $07, $01   ; 
- D 0 - I - 0x005A29 01:9A19: F0        .byte $F0, $F0, $69, $00   ; 
- D 0 - I - 0x005A2D 01:9A1D: F8        .byte $F8, $F0, $6B, $00   ; 
- D 0 - I - 0x005A31 01:9A21: 00        .byte $00, $00, $29, $00   ; 
- D 0 - I - 0x005A35 01:9A25: 08        .byte $08, $00, $2B, $00   ; 
- D 0 - I - 0x005A39 01:9A29: E8        .byte $E8, $F8, $45, $01   ; 
- D 0 - I - 0x005A3D 01:9A2D: F0        .byte $F0, $00, $21, $00   ; 
- D 0 - I - 0x005A41 01:9A31: F8        .byte $F8, $00, $23, $00   ; 



off_9A35:
- D 0 - I - 0x005A45 01:9A35: 09        .byte $09   ; counter
- D 0 - I - 0x005A46 01:9A36: 00        .byte $00, $00, $2D, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x005A4A 01:9A3A: 08        .byte $08, $00, $2F, $00   ; 
- D 0 - I - 0x005A4E 01:9A3E: 00        .byte $00, $F0, $09, $01   ; 
- D 0 - I - 0x005A52 01:9A42: 08        .byte $08, $F0, $0B, $01   ; 
- D 0 - I - 0x005A56 01:9A46: F0        .byte $F0, $F0, $01, $00   ; 
- D 0 - I - 0x005A5A 01:9A4A: F8        .byte $F8, $F0, $03, $00   ; 
- D 0 - I - 0x005A5E 01:9A4E: F0        .byte $F0, $00, $21, $00   ; 
- D 0 - I - 0x005A62 01:9A52: F8        .byte $F8, $00, $23, $00   ; 
- D 0 - I - 0x005A66 01:9A56: E0        .byte $E0, $F0, $43, $01   ; 



off_9A5A:
- D 0 - I - 0x005A6A 01:9A5A: 09        .byte $09   ; counter
- D 0 - I - 0x005A6B 01:9A5B: 00        .byte $00, $F0, $6D, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x005A6F 01:9A5F: 08        .byte $08, $F0, $6F, $01   ; 
- D 0 - I - 0x005A73 01:9A63: F0        .byte $F0, $F0, $39, $00   ; 
- D 0 - I - 0x005A77 01:9A67: F8        .byte $F8, $F0, $3B, $00   ; 
- D 0 - I - 0x005A7B 01:9A6B: F0        .byte $F0, $00, $31, $00   ; 
- D 0 - I - 0x005A7F 01:9A6F: F8        .byte $F8, $00, $33, $00   ; 
- D 0 - I - 0x005A83 01:9A73: 00        .byte $00, $00, $35, $00   ; 
- D 0 - I - 0x005A87 01:9A77: 08        .byte $08, $00, $37, $00   ; 
- D 0 - I - 0x005A8B 01:9A7B: E0        .byte $E0, $F0, $43, $01   ; 



off_9A7F:
- D 0 - I - 0x005A8F 01:9A7F: 08        .byte $08   ; counter
- D 0 - I - 0x005A90 01:9A80: 00        .byte $00, $F0, $71, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x005A94 01:9A84: 08        .byte $08, $F0, $73, $01   ; 
- D 0 - I - 0x005A98 01:9A88: F0        .byte $F0, $F0, $39, $00   ; 
- D 0 - I - 0x005A9C 01:9A8C: F8        .byte $F8, $F0, $3B, $00   ; 
- D 0 - I - 0x005AA0 01:9A90: F0        .byte $F0, $00, $31, $00   ; 
- D 0 - I - 0x005AA4 01:9A94: F8        .byte $F8, $00, $33, $00   ; 
- D 0 - I - 0x005AA8 01:9A98: 00        .byte $00, $00, $35, $00   ; 
- D 0 - I - 0x005AAC 01:9A9C: 08        .byte $08, $00, $37, $00   ; 



_off007_00_9AA0_61:
@start:
; 00 
- D 0 - I - 0x005AB0 01:9AA0: 02        .byte $02   ; 
- D 0 - I - 0x005AB1 01:9AA1: 70        .byte off_9A10 + $100 - @start   ; 
; 01 
- D 0 - I - 0x005AB2 01:9AA2: 04        .byte $04   ; 
- D 0 - I - 0x005AB3 01:9AA3: 95        .byte off_9A35 + $100 - @start   ; 
; 02 
- D 0 - I - 0x005AB4 01:9AA4: 07        .byte $07   ; 
- D 0 - I - 0x005AB5 01:9AA5: BA        .byte off_9A5A + $100 - @start   ; 
; 03 
- D 0 - I - 0x005AB6 01:9AA6: 08        .byte $08   ; 
- D 0 - I - 0x005AB7 01:9AA7: DF        .byte off_9A7F + $100 - @start   ; 
; 04 
- D 0 - I - 0x005AB8 01:9AA8: FF        .byte $FF   ; 
- D 0 - I - 0x005AB9 01:9AA9: 70        .byte off_9A10 + $100 - @start   ; 



off_9AAA:
- D 0 - I - 0x005ABA 01:9AAA: 06        .byte $06   ; counter
- D 0 - I - 0x005ABB 01:9AAB: F4        .byte $F4, $00, $E3, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x005ABF 01:9AAF: F4        .byte $F4, $F0, $C3, $00   ; 
- D 0 - I - 0x005AC3 01:9AB3: FC        .byte $FC, $00, $E5, $01   ; 
- D 0 - I - 0x005AC7 01:9AB7: 04        .byte $04, $00, $E7, $01   ; 
- D 0 - I - 0x005ACB 01:9ABB: FC        .byte $FC, $F0, $C5, $01   ; 
- D 0 - I - 0x005ACF 01:9ABF: 04        .byte $04, $F0, $C7, $01   ; 



off_9AC3:
- D 0 - I - 0x005AD3 01:9AC3: 85        .byte $05 + $80   ; counter + compressed data flag
- D 0 - I - 0x005AD4 01:9AC4: 01        .byte $01   ; spr_A
- D 0 - I - 0x005AD5 01:9AC5: 04        .byte $04, $F0, $CD   ; spr_X, spr_Y, spr_T
- D 0 - I - 0x005AD8 01:9AC8: F4        .byte $F4, $00, $E9   ; 
- D 0 - I - 0x005ADB 01:9ACB: FC        .byte $FC, $00, $EB   ; 
- D 0 - I - 0x005ADE 01:9ACE: F4        .byte $F4, $F0, $C9   ; 
- D 0 - I - 0x005AE1 01:9AD1: FC        .byte $FC, $F0, $CB   ; 



off_9AD4:
- D 0 - I - 0x005AE4 01:9AD4: 86        .byte $06 + $80   ; counter + compressed data flag
- D 0 - I - 0x005AE5 01:9AD5: 01        .byte $01   ; spr_A
- D 0 - I - 0x005AE6 01:9AD6: F4        .byte $F4, $00, $EF   ; spr_X, spr_Y, spr_T
- D 0 - I - 0x005AE9 01:9AD9: F4        .byte $F4, $F0, $CF   ; 
- D 0 - I - 0x005AEC 01:9ADC: FC        .byte $FC, $00, $F1   ; 
- D 0 - I - 0x005AEF 01:9ADF: 04        .byte $04, $00, $F3   ; 
- D 0 - I - 0x005AF2 01:9AE2: FC        .byte $FC, $F0, $D1   ; 
- D 0 - I - 0x005AF5 01:9AE5: 04        .byte $04, $F0, $D3   ; 



_off007_01_9AE8_01:
@start:
; 00 
- D 0 - I - 0x005AF8 01:9AE8: 08        .byte $08   ; 
- D 0 - I - 0x005AF9 01:9AE9: C2        .byte off_9AAA + $100 - @start   ; 
; 01 
- D 0 - I - 0x005AFA 01:9AEA: 08        .byte $08   ; 
- D 0 - I - 0x005AFB 01:9AEB: DB        .byte off_9AC3 + $100 - @start   ; 
; 02 
- D 0 - I - 0x005AFC 01:9AEC: 08        .byte $08   ; 
- D 0 - I - 0x005AFD 01:9AED: EC        .byte off_9AD4 + $100 - @start   ; 
; 03 
- D 0 - I - 0x005AFE 01:9AEE: 08        .byte $08   ; 
- D 0 - I - 0x005AFF 01:9AEF: DB        .byte off_9AC3 + $100 - @start   ; 
; 04 
- D 0 - I - 0x005B00 01:9AF0: 00        .byte $00   ; 
- D 0 - I - 0x005B01 01:9AF1: C2        .byte off_9AAA + $100 - @start   ; 



off_9AF2:
- D 0 - I - 0x005B02 01:9AF2: 86        .byte $06 + $80   ; counter + compressed data flag
- D 0 - I - 0x005B03 01:9AF3: 01        .byte $01   ; spr_A
- D 0 - I - 0x005B04 01:9AF4: 04        .byte $04, $00, $A5   ; spr_X, spr_Y, spr_T
- D 0 - I - 0x005B07 01:9AF7: 04        .byte $04, $F0, $85   ; 
- D 0 - I - 0x005B0A 01:9AFA: F4        .byte $F4, $F0, $81   ; 
- D 0 - I - 0x005B0D 01:9AFD: FC        .byte $FC, $F0, $83   ; 
- D 0 - I - 0x005B10 01:9B00: F4        .byte $F4, $00, $A1   ; 
- D 0 - I - 0x005B13 01:9B03: FC        .byte $FC, $00, $A3   ; 



off_9B06:
- D 0 - I - 0x005B16 01:9B06: 86        .byte $06 + $80   ; counter + compressed data flag
- D 0 - I - 0x005B17 01:9B07: 01        .byte $01   ; spr_A
- D 0 - I - 0x005B18 01:9B08: 04        .byte $04, $00, $A5   ; spr_X, spr_Y, spr_T
- D 0 - I - 0x005B1B 01:9B0B: 04        .byte $04, $F0, $91   ; 
- D 0 - I - 0x005B1E 01:9B0E: F4        .byte $F4, $F0, $8D   ; 
- D 0 - I - 0x005B21 01:9B11: FC        .byte $FC, $F0, $8F   ; 
- D 0 - I - 0x005B24 01:9B14: F4        .byte $F4, $00, $A1   ; 
- D 0 - I - 0x005B27 01:9B17: FC        .byte $FC, $00, $A3   ; 



off_9B1A:
- D 0 - I - 0x005B2A 01:9B1A: 06        .byte $06   ; counter
- D 0 - I - 0x005B2B 01:9B1B: 04        .byte $04, $F0, $A5, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x005B2F 01:9B1F: F4        .byte $F4, $F0, $A7, $01   ; 
- D 0 - I - 0x005B33 01:9B23: FC        .byte $FC, $F0, $A3, $00   ; 
- D 0 - I - 0x005B37 01:9B27: F4        .byte $F4, $E0, $87, $00   ; 
- D 0 - I - 0x005B3B 01:9B2B: FC        .byte $FC, $E0, $89, $01   ; 
- D 0 - I - 0x005B3F 01:9B2F: 04        .byte $04, $E0, $8B, $01   ; 



_off007_01_9B33_02:
@start:
; 00 
- D 0 - I - 0x005B43 01:9B33: 08        .byte $08   ; 
- D 0 - I - 0x005B44 01:9B34: BF        .byte off_9AF2 + $100 - @start   ; 
; 01 
- D 0 - I - 0x005B45 01:9B35: 0C        .byte $0C   ; 
- D 0 - I - 0x005B46 01:9B36: D3        .byte off_9B06 + $100 - @start   ; 
; 02 
- D 0 - I - 0x005B47 01:9B37: 08        .byte $08   ; 
- D 0 - I - 0x005B48 01:9B38: BF        .byte off_9AF2 + $100 - @start   ; 
; 03 
- D 0 - I - 0x005B49 01:9B39: 0C        .byte $0C   ; 
- D 0 - I - 0x005B4A 01:9B3A: D3        .byte off_9B06 + $100 - @start   ; 
; 04 
- D 0 - I - 0x005B4B 01:9B3B: 08        .byte $08   ; 
- D 0 - I - 0x005B4C 01:9B3C: BF        .byte off_9AF2 + $100 - @start   ; 
; 05 
- D 0 - I - 0x005B4D 01:9B3D: 0C        .byte $0C   ; 
- D 0 - I - 0x005B4E 01:9B3E: D3        .byte off_9B06 + $100 - @start   ; 
; 06 
- D 0 - I - 0x005B4F 01:9B3F: 16        .byte $16   ; 
- D 0 - I - 0x005B50 01:9B40: E7        .byte off_9B1A + $100 - @start   ; 
; 07 
- D 0 - I - 0x005B51 01:9B41: 00        .byte $00   ; 
- D 0 - I - 0x005B52 01:9B42: BF        .byte off_9AF2 + $100 - @start   ; 



off_9B43:
- D 0 - I - 0x005B53 01:9B43: 08        .byte $08   ; counter
- D 0 - I - 0x005B54 01:9B44: F4        .byte $F4, $F0, $CF, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x005B58 01:9B48: F4        .byte $F4, $00, $EF, $00   ; 
- D 0 - I - 0x005B5C 01:9B4C: 08        .byte $08, $FE, $C1, $00   ; 
- D 0 - I - 0x005B60 01:9B50: 00        .byte $00, $FE, $B1, $00   ; 
- D 0 - I - 0x005B64 01:9B54: FC        .byte $FC, $00, $F1, $00   ; 
- D 0 - I - 0x005B68 01:9B58: 04        .byte $04, $00, $F3, $00   ; 
- D 0 - I - 0x005B6C 01:9B5C: FC        .byte $FC, $F0, $D1, $01   ; 
- D 0 - I - 0x005B70 01:9B60: 04        .byte $04, $F0, $D3, $01   ; 



off_9B64:
- D 0 - I - 0x005B74 01:9B64: 08        .byte $08   ; counter
- D 0 - I - 0x005B75 01:9B65: F0        .byte $F0, $F0, $F5, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x005B79 01:9B69: 04        .byte $04, $F0, $CD, $01   ; 
- D 0 - I - 0x005B7D 01:9B6D: F4        .byte $F4, $02, $AD, $00   ; 
- D 0 - I - 0x005B81 01:9B71: FC        .byte $FC, $02, $AF, $00   ; 
- D 0 - I - 0x005B85 01:9B75: F4        .byte $F4, $00, $E9, $00   ; 
- D 0 - I - 0x005B89 01:9B79: FC        .byte $FC, $00, $EB, $00   ; 
- D 0 - I - 0x005B8D 01:9B7D: F4        .byte $F4, $F0, $C9, $01   ; 
- D 0 - I - 0x005B91 01:9B81: FC        .byte $FC, $F0, $CB, $01   ; 



off_9B85:
- D 0 - I - 0x005B95 01:9B85: 08        .byte $08   ; counter
- D 0 - I - 0x005B96 01:9B86: F0        .byte $F0, $00, $A9, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x005B9A 01:9B8A: F8        .byte $F8, $00, $AB, $00   ; 
- D 0 - I - 0x005B9E 01:9B8E: F4        .byte $F4, $00, $E3, $00   ; 
- D 0 - I - 0x005BA2 01:9B92: F4        .byte $F4, $F0, $C3, $00   ; 
- D 0 - I - 0x005BA6 01:9B96: FC        .byte $FC, $00, $E5, $00   ; 
- D 0 - I - 0x005BAA 01:9B9A: 04        .byte $04, $00, $E7, $00   ; 
- D 0 - I - 0x005BAE 01:9B9E: FC        .byte $FC, $F0, $C5, $01   ; 
- D 0 - I - 0x005BB2 01:9BA2: 04        .byte $04, $F0, $C7, $01   ; 



_off007_01_9BA6_03:
@start:
; 00 
- D 0 - I - 0x005BB6 01:9BA6: 06        .byte $06   ; 
- D 0 - I - 0x005BB7 01:9BA7: 9D        .byte off_9B43 + $100 - @start   ; 
; 01 
- D 0 - I - 0x005BB8 01:9BA8: 06        .byte $06   ; 
- D 0 - I - 0x005BB9 01:9BA9: BE        .byte off_9B64 + $100 - @start   ; 
; 02 
- D 0 - I - 0x005BBA 01:9BAA: 06        .byte $06   ; 
- D 0 - I - 0x005BBB 01:9BAB: DF        .byte off_9B85 + $100 - @start   ; 
; 03 
- D 0 - I - 0x005BBC 01:9BAC: 06        .byte $06   ; 
- D 0 - I - 0x005BBD 01:9BAD: BE        .byte off_9B64 + $100 - @start   ; 
; 04 
- D 0 - I - 0x005BBE 01:9BAE: 00        .byte $00   ; 
- D 0 - I - 0x005BBF 01:9BAF: 9D        .byte off_9B43 + $100 - @start   ; 



off_9BB0:
- D 0 - I - 0x005BC0 01:9BB0: 06        .byte $06   ; counter
- D 0 - I - 0x005BC1 01:9BB1: 04        .byte $04, $00, $A5, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x005BC5 01:9BB5: F4        .byte $F4, $F0, $ED, $01   ; 
- D 0 - I - 0x005BC9 01:9BB9: FC        .byte $FC, $F0, $B9, $01   ; 
- D 0 - I - 0x005BCD 01:9BBD: 04        .byte $04, $F0, $BB, $01   ; 
- D 0 - I - 0x005BD1 01:9BC1: F4        .byte $F4, $00, $A1, $01   ; 
- D 0 - I - 0x005BD5 01:9BC5: FC        .byte $FC, $00, $A3, $01   ; 



_off007_01_9BC9_04:
@start:
; 00 
- D 0 - I - 0x005BD9 01:9BC9: 08        .byte $08   ; 
- D 0 - I - 0x005BDA 01:9BCA: E7        .byte off_9BB0 + $100 - @start   ; 
; 01 
- D 0 - I - 0x005BDB 01:9BCB: 00        .byte $00   ; 
- D 0 - I - 0x005BDC 01:9BCC: E7        .byte off_9BB0 + $100 - @start   ; 



off_9BCD:
- D 0 - I - 0x005BDD 01:9BCD: 82        .byte $02 + $80   ; counter + compressed data flag
- D 0 - I - 0x005BDE 01:9BCE: 00        .byte $00   ; spr_A
- D 0 - I - 0x005BDF 01:9BCF: 00        .byte $00, $F8, $BF   ; spr_X, spr_Y, spr_T
- D 0 - I - 0x005BE2 01:9BD2: F8        .byte $F8, $F8, $9F   ; 



_off007_01_9BD5_05:
@start:
; 00 
- D 0 - I - 0x005BE5 01:9BD5: 08        .byte $08   ; 
- D 0 - I - 0x005BE6 01:9BD6: F8        .byte off_9BCD + $100 - @start   ; 
; 01 
- D 0 - I - 0x005BE7 01:9BD7: FF        .byte $FF   ; 
- D 0 - I - 0x005BE8 01:9BD8: F8        .byte off_9BCD + $100 - @start   ; 



off_9BD9:
- D 0 - I - 0x005BE9 01:9BD9: 86        .byte $06 + $80   ; counter + compressed data flag
- D 0 - I - 0x005BEA 01:9BDA: 01        .byte $01   ; spr_A
- D 0 - I - 0x005BEB 01:9BDB: F4        .byte $F4, $00, $B3   ; spr_X, spr_Y, spr_T
- D 0 - I - 0x005BEE 01:9BDE: F4        .byte $F4, $F0, $93   ; 
- D 0 - I - 0x005BF1 01:9BE1: FC        .byte $FC, $00, $B5   ; 
- D 0 - I - 0x005BF4 01:9BE4: 04        .byte $04, $00, $B7   ; 
- D 0 - I - 0x005BF7 01:9BE7: FC        .byte $FC, $F0, $95   ; 
- D 0 - I - 0x005BFA 01:9BEA: 04        .byte $04, $F0, $97   ; 



off_9BED:
- D 0 - I - 0x005BFD 01:9BED: 86        .byte $06 + $80   ; counter + compressed data flag
- D 0 - I - 0x005BFE 01:9BEE: 01        .byte $01   ; spr_A
- D 0 - I - 0x005BFF 01:9BEF: F4        .byte $F4, $00, $B3   ; spr_X, spr_Y, spr_T
- D 0 - I - 0x005C02 01:9BF2: FC        .byte $FC, $00, $B5   ; 
- D 0 - I - 0x005C05 01:9BF5: 04        .byte $04, $00, $BD   ; 
- D 0 - I - 0x005C08 01:9BF8: 04        .byte $04, $F0, $9D   ; 
- D 0 - I - 0x005C0B 01:9BFB: F4        .byte $F4, $F0, $99   ; 
- D 0 - I - 0x005C0E 01:9BFE: FC        .byte $FC, $F0, $9B   ; 



_off007_01_9C01_06:
@start:
; 00 
- D 0 - I - 0x005C11 01:9C01: 0A        .byte $0A   ; 
- D 0 - I - 0x005C12 01:9C02: D8        .byte off_9BD9 + $100 - @start   ; 
; 01 
- D 0 - I - 0x005C13 01:9C03: 0A        .byte $0A   ; 
- D 0 - I - 0x005C14 01:9C04: EC        .byte off_9BED + $100 - @start   ; 
; 02 
- D 0 - I - 0x005C15 01:9C05: 00        .byte $00   ; 
- D 0 - I - 0x005C16 01:9C06: D8        .byte off_9BD9 + $100 - @start   ; 



off_9C07:
- D 0 - I - 0x005C17 01:9C07: 86        .byte $06 + $80   ; counter + compressed data flag
- D 0 - I - 0x005C18 01:9C08: 01        .byte $01   ; spr_A
- D 0 - I - 0x005C19 01:9C09: 04        .byte $04, $00, $F9   ; spr_X, spr_Y, spr_T
- D 0 - I - 0x005C1C 01:9C0C: 04        .byte $04, $F0, $D9   ; 
- D 0 - I - 0x005C1F 01:9C0F: F4        .byte $F4, $00, $FB   ; 
- D 0 - I - 0x005C22 01:9C12: FC        .byte $FC, $00, $F7   ; 
- D 0 - I - 0x005C25 01:9C15: F4        .byte $F4, $F0, $D5   ; 
- D 0 - I - 0x005C28 01:9C18: FC        .byte $FC, $F0, $D7   ; 



off_9C1B:
- D 0 - I - 0x005C2B 01:9C1B: 86        .byte $06 + $80   ; counter + compressed data flag
- D 0 - I - 0x005C2C 01:9C1C: 01        .byte $01   ; spr_A
- D 0 - I - 0x005C2D 01:9C1D: F4        .byte $F4, $F0, $DB   ; spr_X, spr_Y, spr_T
- D 0 - I - 0x005C30 01:9C20: F4        .byte $F4, $00, $FB   ; 
- D 0 - I - 0x005C33 01:9C23: FC        .byte $FC, $00, $FD   ; 
- D 0 - I - 0x005C36 01:9C26: 04        .byte $04, $00, $FF   ; 
- D 0 - I - 0x005C39 01:9C29: FC        .byte $FC, $F0, $DD   ; 
- D 0 - I - 0x005C3C 01:9C2C: 04        .byte $04, $F0, $DF   ; 



_off007_01_9C2F_07:
@start:
; 00 
- D 0 - I - 0x005C3F 01:9C2F: 0C        .byte $0C   ; 
- D 0 - I - 0x005C40 01:9C30: D8        .byte off_9C07 + $100 - @start   ; 
; 01 
- D 0 - I - 0x005C41 01:9C31: 0C        .byte $0C   ; 
- D 0 - I - 0x005C42 01:9C32: EC        .byte off_9C1B + $100 - @start   ; 
; 02 
- D 0 - I - 0x005C43 01:9C33: 00        .byte $00   ; 
- D 0 - I - 0x005C44 01:9C34: D8        .byte off_9C07 + $100 - @start   ; 



off_9C35:
- D 0 - I - 0x005C45 01:9C35: 0E        .byte $0E   ; counter
- D 0 - I - 0x005C46 01:9C36: F0        .byte $F0, $E0, $11, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x005C4A 01:9C3A: F8        .byte $F8, $E0, $13, $01   ; 
- D 0 - I - 0x005C4E 01:9C3E: E0        .byte $E0, $00, $71, $00   ; 
- D 0 - I - 0x005C52 01:9C42: E8        .byte $E8, $00, $73, $00   ; 
- D 0 - I - 0x005C56 01:9C46: 00        .byte $00, $00, $55, $02   ; 
- D 0 - I - 0x005C5A 01:9C4A: 08        .byte $08, $00, $57, $02   ; 
- D 0 - I - 0x005C5E 01:9C4E: F0        .byte $F0, $00, $51, $02   ; 
- D 0 - I - 0x005C62 01:9C52: F8        .byte $F8, $00, $53, $02   ; 
- D 0 - I - 0x005C66 01:9C56: F0        .byte $F0, $F0, $31, $02   ; 
- D 0 - I - 0x005C6A 01:9C5A: F8        .byte $F8, $F0, $33, $02   ; 
- D 0 - I - 0x005C6E 01:9C5E: 00        .byte $00, $F0, $35, $02   ; 
- D 0 - I - 0x005C72 01:9C62: 08        .byte $08, $F0, $37, $02   ; 
- D 0 - I - 0x005C76 01:9C66: 00        .byte $00, $E0, $15, $01   ; 
- D 0 - I - 0x005C7A 01:9C6A: 08        .byte $08, $E0, $17, $01   ; 



off_9C6E:
- D 0 - I - 0x005C7E 01:9C6E: 10        .byte $10   ; counter
- D 0 - I - 0x005C7F 01:9C6F: E0        .byte $E0, $06, $7D, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x005C83 01:9C73: E8        .byte $E8, $06, $7F, $00   ; 
- D 0 - I - 0x005C87 01:9C77: F0        .byte $F0, $E0, $19, $01   ; 
- D 0 - I - 0x005C8B 01:9C7B: F8        .byte $F8, $E0, $1B, $01   ; 
- D 0 - I - 0x005C8F 01:9C7F: E0        .byte $E0, $F4, $71, $00   ; 
- D 0 - I - 0x005C93 01:9C83: E8        .byte $E8, $F4, $73, $00   ; 
- D 0 - I - 0x005C97 01:9C87: 00        .byte $00, $00, $5D, $02   ; 
- D 0 - I - 0x005C9B 01:9C8B: 08        .byte $08, $00, $5F, $02   ; 
- D 0 - I - 0x005C9F 01:9C8F: F0        .byte $F0, $00, $59, $02   ; 
- D 0 - I - 0x005CA3 01:9C93: F8        .byte $F8, $00, $5B, $02   ; 
- D 0 - I - 0x005CA7 01:9C97: F0        .byte $F0, $F0, $39, $02   ; 
- D 0 - I - 0x005CAB 01:9C9B: F8        .byte $F8, $F0, $3B, $02   ; 
- D 0 - I - 0x005CAF 01:9C9F: 00        .byte $00, $F0, $3D, $02   ; 
- D 0 - I - 0x005CB3 01:9CA3: 08        .byte $08, $F0, $3F, $02   ; 
- D 0 - I - 0x005CB7 01:9CA7: 00        .byte $00, $E0, $1D, $01   ; 
- D 0 - I - 0x005CBB 01:9CAB: 08        .byte $08, $E0, $1F, $01   ; 



_off007_01_9CAF_08:
@start:
; 00 
- D 0 - I - 0x005CBF 01:9CAF: 06        .byte $06   ; 
- D 0 - I - 0x005CC0 01:9CB0: 86        .byte off_9C35 + $100 - @start   ; 
; 01 
- D 0 - I - 0x005CC1 01:9CB1: 06        .byte $06   ; 
- D 0 - I - 0x005CC2 01:9CB2: BF        .byte off_9C6E + $100 - @start   ; 
; 02 
- D 0 - I - 0x005CC3 01:9CB3: 00        .byte $00   ; 
- D 0 - I - 0x005CC4 01:9CB4: 86        .byte off_9C35 + $100 - @start   ; 



off_9CB5:
- D 0 - I - 0x005CC5 01:9CB5: 8C        .byte $0C + $80   ; counter + compressed data flag
- D 0 - I - 0x005CC6 01:9CB6: 02        .byte $02   ; spr_A
- D 0 - I - 0x005CC7 01:9CB7: 08        .byte $08, $F8, $29   ; spr_X, spr_Y, spr_T
- D 0 - I - 0x005CCA 01:9CBA: 10        .byte $10, $F8, $2B   ; 
- D 0 - I - 0x005CCD 01:9CBD: F8        .byte $F8, $F8, $25   ; 
- D 0 - I - 0x005CD0 01:9CC0: 00        .byte $00, $F8, $27   ; 
- D 0 - I - 0x005CD3 01:9CC3: E8        .byte $E8, $F8, $21   ; 
- D 0 - I - 0x005CD6 01:9CC6: F0        .byte $F0, $F8, $23   ; 
- D 0 - I - 0x005CD9 01:9CC9: 00        .byte $00, $E0, $09   ; 
- D 0 - I - 0x005CDC 01:9CCC: 08        .byte $08, $E0, $0B   ; 
- D 0 - I - 0x005CDF 01:9CCF: F0        .byte $F0, $E0, $05   ; 
- D 0 - I - 0x005CE2 01:9CD2: F8        .byte $F8, $E0, $07   ; 
- D 0 - I - 0x005CE5 01:9CD5: E8        .byte $E8, $E8, $01   ; 
- D 0 - I - 0x005CE8 01:9CD8: F0        .byte $F0, $E8, $03   ; 



off_9CDB:
- D 0 - I - 0x005CEB 01:9CDB: 8C        .byte $0C + $80   ; counter + compressed data flag
- D 0 - I - 0x005CEC 01:9CDC: 02        .byte $02   ; spr_A
- D 0 - I - 0x005CED 01:9CDD: E8        .byte $E8, $F8, $0D   ; spr_X, spr_Y, spr_T
- D 0 - I - 0x005CF0 01:9CE0: F0        .byte $F0, $F8, $0F   ; 
- D 0 - I - 0x005CF3 01:9CE3: 08        .byte $08, $F8, $29   ; 
- D 0 - I - 0x005CF6 01:9CE6: 10        .byte $10, $F8, $2B   ; 
- D 0 - I - 0x005CF9 01:9CE9: F8        .byte $F8, $F8, $25   ; 
- D 0 - I - 0x005CFC 01:9CEC: 00        .byte $00, $F8, $27   ; 
- D 0 - I - 0x005CFF 01:9CEF: 00        .byte $00, $E0, $09   ; 
- D 0 - I - 0x005D02 01:9CF2: 08        .byte $08, $E0, $0B   ; 
- D 0 - I - 0x005D05 01:9CF5: F0        .byte $F0, $E0, $05   ; 
- D 0 - I - 0x005D08 01:9CF8: F8        .byte $F8, $E0, $07   ; 
- D 0 - I - 0x005D0B 01:9CFB: E8        .byte $E8, $E8, $01   ; 
- D 0 - I - 0x005D0E 01:9CFE: F0        .byte $F0, $E8, $03   ; 



off_9D01:
- D 0 - I - 0x005D11 01:9D01: 8C        .byte $0C + $80   ; counter + compressed data flag
- D 0 - I - 0x005D12 01:9D02: 02        .byte $02   ; spr_A
- D 0 - I - 0x005D13 01:9D03: E8        .byte $E8, $F8, $2D   ; spr_X, spr_Y, spr_T
- D 0 - I - 0x005D16 01:9D06: F0        .byte $F0, $F8, $2F   ; 
- D 0 - I - 0x005D19 01:9D09: 08        .byte $08, $F8, $29   ; 
- D 0 - I - 0x005D1C 01:9D0C: 10        .byte $10, $F8, $2B   ; 
- D 0 - I - 0x005D1F 01:9D0F: F8        .byte $F8, $F8, $25   ; 
- D 0 - I - 0x005D22 01:9D12: 00        .byte $00, $F8, $27   ; 
- D 0 - I - 0x005D25 01:9D15: 00        .byte $00, $E0, $09   ; 
- D 0 - I - 0x005D28 01:9D18: 08        .byte $08, $E0, $0B   ; 
- D 0 - I - 0x005D2B 01:9D1B: F0        .byte $F0, $E0, $05   ; 
- D 0 - I - 0x005D2E 01:9D1E: F8        .byte $F8, $E0, $07   ; 
- D 0 - I - 0x005D31 01:9D21: E8        .byte $E8, $E8, $01   ; 
- D 0 - I - 0x005D34 01:9D24: F0        .byte $F0, $E8, $03   ; 



_off007_01_9D27_09:
@start:
; 00 
- D 0 - I - 0x005D37 01:9D27: 03        .byte $03   ; 
- D 0 - I - 0x005D38 01:9D28: 8E        .byte off_9CB5 + $100 - @start   ; 
; 01 
- D 0 - I - 0x005D39 01:9D29: 03        .byte $03   ; 
- D 0 - I - 0x005D3A 01:9D2A: B4        .byte off_9CDB + $100 - @start   ; 
; 02 
- D 0 - I - 0x005D3B 01:9D2B: 03        .byte $03   ; 
- D 0 - I - 0x005D3C 01:9D2C: DA        .byte off_9D01 + $100 - @start   ; 
; 03 
- D 0 - I - 0x005D3D 01:9D2D: 03        .byte $03   ; 
- D 0 - I - 0x005D3E 01:9D2E: B4        .byte off_9CDB + $100 - @start   ; 
; 04 
- D 0 - I - 0x005D3F 01:9D2F: 00        .byte $00   ; 
- D 0 - I - 0x005D40 01:9D30: 8E        .byte off_9CB5 + $100 - @start   ; 



off_9D31:
- D 0 - I - 0x005D41 01:9D31: 8C        .byte $0C + $80   ; counter + compressed data flag
- D 0 - I - 0x005D42 01:9D32: 02        .byte $02   ; spr_A
- D 0 - I - 0x005D43 01:9D33: 07        .byte $07, $F0, $49   ; spr_X, spr_Y, spr_T
- D 0 - I - 0x005D46 01:9D36: 0F        .byte $0F, $F0, $4B   ; 
- D 0 - I - 0x005D49 01:9D39: F7        .byte $F7, $F0, $45   ; 
- D 0 - I - 0x005D4C 01:9D3C: FF        .byte $FF, $F0, $47   ; 
- D 0 - I - 0x005D4F 01:9D3F: E7        .byte $E7, $F0, $41   ; 
- D 0 - I - 0x005D52 01:9D42: EF        .byte $EF, $F0, $43   ; 
- D 0 - I - 0x005D55 01:9D45: E7        .byte $E7, $00, $61   ; 
- D 0 - I - 0x005D58 01:9D48: EF        .byte $EF, $00, $63   ; 
- D 0 - I - 0x005D5B 01:9D4B: 07        .byte $07, $00, $69   ; 
- D 0 - I - 0x005D5E 01:9D4E: 0F        .byte $0F, $00, $6B   ; 
- D 0 - I - 0x005D61 01:9D51: F7        .byte $F7, $00, $65   ; 
- D 0 - I - 0x005D64 01:9D54: FF        .byte $FF, $00, $67   ; 



off_9D57:
- D 0 - I - 0x005D67 01:9D57: 8C        .byte $0C + $80   ; counter + compressed data flag
- D 0 - I - 0x005D68 01:9D58: 02        .byte $02   ; spr_A
- D 0 - I - 0x005D69 01:9D59: 08        .byte $08, $00, $A9   ; spr_X, spr_Y, spr_T
- D 0 - I - 0x005D6C 01:9D5C: 10        .byte $10, $00, $AB   ; 
- D 0 - I - 0x005D6F 01:9D5F: E8        .byte $E8, $00, $A1   ; 
- D 0 - I - 0x005D72 01:9D62: F0        .byte $F0, $00, $A3   ; 
- D 0 - I - 0x005D75 01:9D65: F8        .byte $F8, $00, $A5   ; 
- D 0 - I - 0x005D78 01:9D68: 00        .byte $00, $00, $A7   ; 
- D 0 - I - 0x005D7B 01:9D6B: E8        .byte $E8, $F0, $81   ; 
- D 0 - I - 0x005D7E 01:9D6E: F0        .byte $F0, $F0, $83   ; 
- D 0 - I - 0x005D81 01:9D71: 08        .byte $08, $F0, $89   ; 
- D 0 - I - 0x005D84 01:9D74: 10        .byte $10, $F0, $8B   ; 
- D 0 - I - 0x005D87 01:9D77: F8        .byte $F8, $F0, $85   ; 
- D 0 - I - 0x005D8A 01:9D7A: 00        .byte $00, $F0, $87   ; 



_off007_01_9D7D_0A:
@start:
; 00 
- D 0 - I - 0x005D8D 01:9D7D: 0F        .byte $0F   ; 
- D 0 - I - 0x005D8E 01:9D7E: B4        .byte off_9D31 + $100 - @start   ; 
; 01 
- D 0 - I - 0x005D8F 01:9D7F: 0F        .byte $0F   ; 
- D 0 - I - 0x005D90 01:9D80: DA        .byte off_9D57 + $100 - @start   ; 
; 02 
- D 0 - I - 0x005D91 01:9D81: 00        .byte $00   ; 
- D 0 - I - 0x005D92 01:9D82: B4        .byte off_9D31 + $100 - @start   ; 



off_9D83:
- D 0 - I - 0x005D93 01:9D83: 0C        .byte $0C   ; counter
- D 0 - I - 0x005D94 01:9D84: E8        .byte $E8, $F0, $C1, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x005D98 01:9D88: F0        .byte $F0, $F0, $C3, $01   ; 
- D 0 - I - 0x005D9C 01:9D8C: 08        .byte $08, $F0, $C9, $02   ; 
- D 0 - I - 0x005DA0 01:9D90: 10        .byte $10, $F0, $CB, $02   ; 
- D 0 - I - 0x005DA4 01:9D94: F8        .byte $F8, $F0, $C5, $02   ; 
- D 0 - I - 0x005DA8 01:9D98: 00        .byte $00, $F0, $C7, $02   ; 
- D 0 - I - 0x005DAC 01:9D9C: E8        .byte $E8, $00, $E1, $02   ; 
- D 0 - I - 0x005DB0 01:9DA0: F0        .byte $F0, $00, $E3, $02   ; 
- D 0 - I - 0x005DB4 01:9DA4: 08        .byte $08, $00, $E9, $02   ; 
- D 0 - I - 0x005DB8 01:9DA8: 10        .byte $10, $00, $EB, $02   ; 
- D 0 - I - 0x005DBC 01:9DAC: F8        .byte $F8, $00, $E5, $02   ; 
- D 0 - I - 0x005DC0 01:9DB0: 00        .byte $00, $00, $E7, $02   ; 



off_9DB4:
- D 0 - I - 0x005DC4 01:9DB4: 0A        .byte $0A   ; counter
- D 0 - I - 0x005DC5 01:9DB5: 08        .byte $08, $F0, $CD, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x005DC9 01:9DB9: 10        .byte $10, $F0, $CF, $01   ; 
- D 0 - I - 0x005DCD 01:9DBD: F8        .byte $F8, $F0, $ED, $02   ; 
- D 0 - I - 0x005DD1 01:9DC1: 00        .byte $00, $F0, $EF, $02   ; 
- D 0 - I - 0x005DD5 01:9DC5: E8        .byte $E8, $00, $E1, $02   ; 
- D 0 - I - 0x005DD9 01:9DC9: F0        .byte $F0, $00, $E3, $02   ; 
- D 0 - I - 0x005DDD 01:9DCD: 08        .byte $08, $00, $E9, $02   ; 
- D 0 - I - 0x005DE1 01:9DD1: 10        .byte $10, $00, $EB, $02   ; 
- D 0 - I - 0x005DE5 01:9DD5: F8        .byte $F8, $00, $E5, $02   ; 
- D 0 - I - 0x005DE9 01:9DD9: 00        .byte $00, $00, $E7, $02   ; 



_off007_01_9DDD_0B:
@start:
; 00 
- D 0 - I - 0x005DED 01:9DDD: 06        .byte $06   ; 
- D 0 - I - 0x005DEE 01:9DDE: A6        .byte off_9D83 + $100 - @start   ; 
; 01 
- D 0 - I - 0x005DEF 01:9DDF: 06        .byte $06   ; 
- D 0 - I - 0x005DF0 01:9DE0: D7        .byte off_9DB4 + $100 - @start   ; 
; 02 
- D 0 - I - 0x005DF1 01:9DE1: 00        .byte $00   ; 
- D 0 - I - 0x005DF2 01:9DE2: A6        .byte off_9D83 + $100 - @start   ; 



off_9DE3:
- D 0 - I - 0x005DF3 01:9DE3: 82        .byte $02 + $80   ; counter + compressed data flag
- D 0 - I - 0x005DF4 01:9DE4: 00        .byte $00   ; spr_A
- D 0 - I - 0x005DF5 01:9DE5: F8        .byte $F8, $00, $71   ; spr_X, spr_Y, spr_T
- D 0 - I - 0x005DF8 01:9DE8: 00        .byte $00, $00, $73   ; 



_off007_04_9DEB_01:
_off007_04_9DEB_02:
_off007_04_9DEB_03:
_off007_04_9DEB_04:
_off007_04_9DEB_05:
_off007_04_9DEB_06:
_off007_04_9DEB_07:
_off007_04_9DEB_08:
_off007_04_9DEB_09:
_off007_04_9DEB_0A:
_off007_04_9DEB_0B:
@start:
; 00 
- D 0 - I - 0x005DFB 01:9DEB: 01        .byte $01   ; 
- D 0 - I - 0x005DFC 01:9DEC: F8        .byte off_9DE3 + $100 - @start   ; 
; 01 
- D 0 - I - 0x005DFD 01:9DED: 00        .byte $00   ; 
- D 0 - I - 0x005DFE 01:9DEE: F8        .byte off_9DE3 + $100 - @start   ; 



off_9DEF:
- D 0 - I - 0x005DFF 01:9DEF: 82        .byte $02 + $80   ; counter + compressed data flag
- D 0 - I - 0x005E00 01:9DF0: 02        .byte $02   ; spr_A
- D 0 - I - 0x005E01 01:9DF1: F8        .byte $F8, $F8, $19   ; spr_X, spr_Y, spr_T
- D 0 - I - 0x005E04 01:9DF4: 00        .byte $00, $F8, $1B   ; 



off_9DF7:
- D 0 - I - 0x005E07 01:9DF7: 82        .byte $02 + $80   ; counter + compressed data flag
- D 0 - I - 0x005E08 01:9DF8: 02        .byte $02   ; spr_A
- D 0 - I - 0x005E09 01:9DF9: F8        .byte $F8, $F8, $1D   ; spr_X, spr_Y, spr_T
- D 0 - I - 0x005E0C 01:9DFC: 00        .byte $00, $F8, $1F   ; 



off_9DFF:
- D 0 - I - 0x005E0F 01:9DFF: 82        .byte $02 + $80   ; counter + compressed data flag
- D 0 - I - 0x005E10 01:9E00: 02        .byte $02   ; spr_A
- D 0 - I - 0x005E11 01:9E01: 00        .byte $00, $F8, $51   ; spr_X, spr_Y, spr_T
- D 0 - I - 0x005E14 01:9E04: F8        .byte $F8, $F8, $3D   ; 



off_9E07:
- D 0 - I - 0x005E17 01:9E07: 82        .byte $02 + $80   ; counter + compressed data flag
- D 0 - I - 0x005E18 01:9E08: 02        .byte $02   ; spr_A
- D 0 - I - 0x005E19 01:9E09: 00        .byte $00, $F8, $55   ; spr_X, spr_Y, spr_T
- D 0 - I - 0x005E1C 01:9E0C: F8        .byte $F8, $F8, $53   ; 



_off007_01_9E0F_0C:
@start:
; 00 
- D 0 - I - 0x005E1F 01:9E0F: 08        .byte $08   ; 
- D 0 - I - 0x005E20 01:9E10: E0        .byte off_9DEF + $100 - @start   ; 
; 01 
- D 0 - I - 0x005E21 01:9E11: 08        .byte $08   ; 
- D 0 - I - 0x005E22 01:9E12: E8        .byte off_9DF7 + $100 - @start   ; 
; 02 
- D 0 - I - 0x005E23 01:9E13: 08        .byte $08   ; 
- D 0 - I - 0x005E24 01:9E14: F0        .byte off_9DFF + $100 - @start   ; 
; 03 
- D 0 - I - 0x005E25 01:9E15: 08        .byte $08   ; 
- D 0 - I - 0x005E26 01:9E16: F8        .byte off_9E07 + $100 - @start   ; 
; 04 
- D 0 - I - 0x005E27 01:9E17: 00        .byte $00   ; 
- D 0 - I - 0x005E28 01:9E18: E0        .byte off_9DEF + $100 - @start   ; 



off_9E19:
- D 0 - I - 0x005E29 01:9E19: 8C        .byte $0C + $80   ; counter + compressed data flag
- D 0 - I - 0x005E2A 01:9E1A: 02        .byte $02   ; spr_A
- D 0 - I - 0x005E2B 01:9E1B: E8        .byte $E8, $00, $A1   ; spr_X, spr_Y, spr_T
- D 0 - I - 0x005E2E 01:9E1E: F0        .byte $F0, $00, $A3   ; 
- D 0 - I - 0x005E31 01:9E21: 08        .byte $08, $00, $A9   ; 
- D 0 - I - 0x005E34 01:9E24: 10        .byte $10, $00, $AB   ; 
- D 0 - I - 0x005E37 01:9E27: F8        .byte $F8, $00, $A5   ; 
- D 0 - I - 0x005E3A 01:9E2A: 00        .byte $00, $00, $A7   ; 
- D 0 - I - 0x005E3D 01:9E2D: E8        .byte $E8, $F0, $81   ; 
- D 0 - I - 0x005E40 01:9E30: F0        .byte $F0, $F0, $83   ; 
- D 0 - I - 0x005E43 01:9E33: 08        .byte $08, $F0, $89   ; 
- D 0 - I - 0x005E46 01:9E36: 10        .byte $10, $F0, $8B   ; 
- D 0 - I - 0x005E49 01:9E39: F8        .byte $F8, $F0, $85   ; 
- D 0 - I - 0x005E4C 01:9E3C: 00        .byte $00, $F0, $87   ; 



off_9E3F:
- D 0 - I - 0x005E4F 01:9E3F: 8C        .byte $0C + $80   ; counter + compressed data flag
- D 0 - I - 0x005E50 01:9E40: 02        .byte $02   ; spr_A
- D 0 - I - 0x005E51 01:9E41: E8        .byte $E8, $FF, $A1   ; spr_X, spr_Y, spr_T
- D 0 - I - 0x005E54 01:9E44: F0        .byte $F0, $FF, $A3   ; 
- D 0 - I - 0x005E57 01:9E47: 08        .byte $08, $FF, $A9   ; 
- D 0 - I - 0x005E5A 01:9E4A: 10        .byte $10, $FF, $AB   ; 
- D 0 - I - 0x005E5D 01:9E4D: F8        .byte $F8, $FF, $A5   ; 
- D 0 - I - 0x005E60 01:9E50: 00        .byte $00, $FF, $A7   ; 
- D 0 - I - 0x005E63 01:9E53: E8        .byte $E8, $EF, $81   ; 
- D 0 - I - 0x005E66 01:9E56: F0        .byte $F0, $EF, $83   ; 
- D 0 - I - 0x005E69 01:9E59: 08        .byte $08, $EF, $89   ; 
- D 0 - I - 0x005E6C 01:9E5C: 10        .byte $10, $EF, $8B   ; 
- D 0 - I - 0x005E6F 01:9E5F: F8        .byte $F8, $EF, $85   ; 
- D 0 - I - 0x005E72 01:9E62: 00        .byte $00, $EF, $87   ; 



_off007_01_9E65_0D:
@start:
; 00 
- D 0 - I - 0x005E75 01:9E65: 08        .byte $08   ; 
- D 0 - I - 0x005E76 01:9E66: B4        .byte off_9E19 + $100 - @start   ; 
; 01 
- D 0 - I - 0x005E77 01:9E67: 08        .byte $08   ; 
- D 0 - I - 0x005E78 01:9E68: DA        .byte off_9E3F + $100 - @start   ; 
; 02 
- D 0 - I - 0x005E79 01:9E69: 00        .byte $00   ; 
- D 0 - I - 0x005E7A 01:9E6A: B4        .byte off_9E19 + $100 - @start   ; 



off_9E6B:
- D 0 - I - 0x005E7B 01:9E6B: 8C        .byte $0C + $80   ; counter + compressed data flag
- D 0 - I - 0x005E7C 01:9E6C: 02        .byte $02   ; spr_A
- D 0 - I - 0x005E7D 01:9E6D: E8        .byte $E8, $00, $A1   ; spr_X, spr_Y, spr_T
- D 0 - I - 0x005E80 01:9E70: F0        .byte $F0, $00, $A3   ; 
- D 0 - I - 0x005E83 01:9E73: 08        .byte $08, $00, $A9   ; 
- D 0 - I - 0x005E86 01:9E76: 10        .byte $10, $00, $AB   ; 
- D 0 - I - 0x005E89 01:9E79: F8        .byte $F8, $00, $A5   ; 
- D 0 - I - 0x005E8C 01:9E7C: 00        .byte $00, $00, $A7   ; 
- D 0 - I - 0x005E8F 01:9E7F: E8        .byte $E8, $F0, $81   ; 
- D 0 - I - 0x005E92 01:9E82: F0        .byte $F0, $F0, $83   ; 
- D 0 - I - 0x005E95 01:9E85: 08        .byte $08, $F0, $89   ; 
- D 0 - I - 0x005E98 01:9E88: 10        .byte $10, $F0, $8B   ; 
- D 0 - I - 0x005E9B 01:9E8B: F8        .byte $F8, $F0, $85   ; 
- D 0 - I - 0x005E9E 01:9E8E: 00        .byte $00, $F0, $87   ; 



off_9E91:
- D 0 - I - 0x005EA1 01:9E91: 8C        .byte $0C + $80   ; counter + compressed data flag
- D 0 - I - 0x005EA2 01:9E92: 02        .byte $02   ; spr_A
- D 0 - I - 0x005EA3 01:9E93: E8        .byte $E8, $FE, $A1   ; spr_X, spr_Y, spr_T
- D 0 - I - 0x005EA6 01:9E96: F0        .byte $F0, $FE, $A3   ; 
- D 0 - I - 0x005EA9 01:9E99: 08        .byte $08, $FE, $A9   ; 
- D 0 - I - 0x005EAC 01:9E9C: 10        .byte $10, $FE, $AB   ; 
- D 0 - I - 0x005EAF 01:9E9F: F8        .byte $F8, $FE, $A5   ; 
- D 0 - I - 0x005EB2 01:9EA2: 00        .byte $00, $FE, $A7   ; 
- D 0 - I - 0x005EB5 01:9EA5: E8        .byte $E8, $EE, $81   ; 
- D 0 - I - 0x005EB8 01:9EA8: F0        .byte $F0, $EE, $83   ; 
- D 0 - I - 0x005EBB 01:9EAB: 08        .byte $08, $EE, $89   ; 
- D 0 - I - 0x005EBE 01:9EAE: 10        .byte $10, $EE, $8B   ; 
- D 0 - I - 0x005EC1 01:9EB1: F8        .byte $F8, $EE, $85   ; 
- D 0 - I - 0x005EC4 01:9EB4: 00        .byte $00, $EE, $87   ; 



off_9EB7:
- D 0 - I - 0x005EC7 01:9EB7: 88        .byte $08 + $80   ; counter + compressed data flag
- D 0 - I - 0x005EC8 01:9EB8: 02        .byte $02   ; spr_A
- D 0 - I - 0x005EC9 01:9EB9: 00        .byte $00, $00, $B1   ; spr_X, spr_Y, spr_T
- D 0 - I - 0x005ECC 01:9EBC: 08        .byte $08, $00, $B3   ; 
- D 0 - I - 0x005ECF 01:9EBF: F0        .byte $F0, $00, $AD   ; 
- D 0 - I - 0x005ED2 01:9EC2: F8        .byte $F8, $00, $AF   ; 
- D 0 - I - 0x005ED5 01:9EC5: 00        .byte $00, $F0, $91   ; 
- D 0 - I - 0x005ED8 01:9EC8: 08        .byte $08, $F0, $93   ; 
- D 0 - I - 0x005EDB 01:9ECB: F0        .byte $F0, $F0, $8D   ; 
- D 0 - I - 0x005EDE 01:9ECE: F8        .byte $F8, $F0, $8F   ; 



off_9ED1:
- D 0 - I - 0x005EE1 01:9ED1: 88        .byte $08 + $80   ; counter + compressed data flag
- D 0 - I - 0x005EE2 01:9ED2: 02        .byte $02   ; spr_A
- D 0 - I - 0x005EE3 01:9ED3: 00        .byte $00, $00, $B9   ; spr_X, spr_Y, spr_T
- D 0 - I - 0x005EE6 01:9ED6: 08        .byte $08, $00, $BB   ; 
- D 0 - I - 0x005EE9 01:9ED9: F0        .byte $F0, $00, $B5   ; 
- D 0 - I - 0x005EEC 01:9EDC: F8        .byte $F8, $00, $B7   ; 
- D 0 - I - 0x005EEF 01:9EDF: 00        .byte $00, $F0, $99   ; 
- D 0 - I - 0x005EF2 01:9EE2: 08        .byte $08, $F0, $9B   ; 
- D 0 - I - 0x005EF5 01:9EE5: F0        .byte $F0, $F0, $95   ; 
- D 0 - I - 0x005EF8 01:9EE8: F8        .byte $F8, $F0, $97   ; 



off_9EEB:
- D 0 - I - 0x005EFB 01:9EEB: 82        .byte $02 + $80   ; counter + compressed data flag
- D 0 - I - 0x005EFC 01:9EEC: 02        .byte $02   ; spr_A
- D 0 - I - 0x005EFD 01:9EED: F8        .byte $F8, $F8, $9D   ; spr_X, spr_Y, spr_T
- D 0 - I - 0x005F00 01:9EF0: 00        .byte $00, $F8, $9F   ; 



off_9EF3:
- D 0 - I - 0x005F03 01:9EF3: 82        .byte $02 + $80   ; counter + compressed data flag
- D 0 - I - 0x005F04 01:9EF4: 02        .byte $02   ; spr_A
- D 0 - I - 0x005F05 01:9EF5: F8        .byte $F8, $F8, $BD   ; spr_X, spr_Y, spr_T
- D 0 - I - 0x005F08 01:9EF8: 00        .byte $00, $F8, $BF   ; 



off_9EFB:
- D 0 - I - 0x005F0B 01:9EFB: 82        .byte $02 + $80   ; counter + compressed data flag
- D 0 - I - 0x005F0C 01:9EFC: 02        .byte $02   ; spr_A
- D 0 - I - 0x005F0D 01:9EFD: F8        .byte $F8, $F8, $C1   ; spr_X, spr_Y, spr_T
- D 0 - I - 0x005F10 01:9F00: 00        .byte $00, $F8, $C3   ; 



off_9F03:
- D 0 - I - 0x005F13 01:9F03: 82        .byte $02 + $80   ; counter + compressed data flag
- D 0 - I - 0x005F14 01:9F04: 02        .byte $02   ; spr_A
- D 0 - I - 0x005F15 01:9F05: F8        .byte $F8, $F8, $C5   ; spr_X, spr_Y, spr_T
- D 0 - I - 0x005F18 01:9F08: 00        .byte $00, $F8, $C7   ; 



off_9F0B:
- D 0 - I - 0x005F1B 01:9F0B: 82        .byte $02 + $80   ; counter + compressed data flag
- D 0 - I - 0x005F1C 01:9F0C: 02        .byte $02   ; spr_A
- D 0 - I - 0x005F1D 01:9F0D: F8        .byte $F8, $F8, $C9   ; spr_X, spr_Y, spr_T
- D 0 - I - 0x005F20 01:9F10: 00        .byte $00, $F8, $CB   ; 



off_9F13:
- D 0 - I - 0x005F23 01:9F13: 82        .byte $02 + $80   ; counter + compressed data flag
- D 0 - I - 0x005F24 01:9F14: 02        .byte $02   ; spr_A
- D 0 - I - 0x005F25 01:9F15: F8        .byte $F8, $F8, $CD   ; spr_X, spr_Y, spr_T
off_9F18_00:    ; bzk warning, 1st byte is counter 00
- D 0 - I - 0x005F28 01:9F18: 00        .byte $00, $F8, $CF   ; 



off_9F1B:
- D 0 - I - 0x005F2B 01:9F1B: 81        .byte $01 + $80   ; counter + compressed data flag
- D 0 - I - 0x005F2C 01:9F1C: 02        .byte $02   ; spr_A
- D 0 - I - 0x005F2D 01:9F1D: FC        .byte $FC, $F8, $E5   ; spr_X, spr_Y, spr_T



off_9F20:
- D 0 - I - 0x005F30 01:9F20: 81        .byte $01 + $80   ; counter + compressed data flag
- D 0 - I - 0x005F31 01:9F21: 01        .byte $01   ; spr_A
- D 0 - I - 0x005F32 01:9F22: FC        .byte $FC, $F8, $E7   ; spr_X, spr_Y, spr_T



off_9F25:
- D 0 - I - 0x005F35 01:9F25: 81        .byte $01 + $80   ; counter + compressed data flag
- D 0 - I - 0x005F36 01:9F26: 01        .byte $01   ; spr_A
- D 0 - I - 0x005F37 01:9F27: FC        .byte $FC, $F8, $E9   ; spr_X, spr_Y, spr_T



off_9F2A:
- D 0 - I - 0x005F3A 01:9F2A: 81        .byte $01 + $80   ; counter + compressed data flag
- D 0 - I - 0x005F3B 01:9F2B: 01        .byte $01   ; spr_A
- D 0 - I - 0x005F3C 01:9F2C: FC        .byte $FC, $F8, $EB   ; spr_X, spr_Y, spr_T



_off007_01_9F2F_0E:
@start:
; 00 
- D 0 - I - 0x005F3F 01:9F2F: 10        .byte $10   ; 
- D 0 - I - 0x005F40 01:9F30: 3C        .byte off_9E6B + $100 - @start   ; 
; 01 
- D 0 - I - 0x005F41 01:9F31: 28        .byte $28   ; 
- D 0 - I - 0x005F42 01:9F32: 62        .byte off_9E91 + $100 - @start   ; 
; 02 
- D 0 - I - 0x005F43 01:9F33: 48        .byte $48   ; 
- D 0 - I - 0x005F44 01:9F34: 88        .byte off_9EB7 + $100 - @start   ; 
; 03 
- D 0 - I - 0x005F45 01:9F35: 38        .byte $38   ; 
- D 0 - I - 0x005F46 01:9F36: A2        .byte off_9ED1 + $100 - @start   ; 
; 04 
- D 0 - I - 0x005F47 01:9F37: 30        .byte $30   ; 
- D 0 - I - 0x005F48 01:9F38: BC        .byte off_9EEB + $100 - @start   ; 
; 05 
- D 0 - I - 0x005F49 01:9F39: 20        .byte $20   ; 
- D 0 - I - 0x005F4A 01:9F3A: C4        .byte off_9EF3 + $100 - @start   ; 
; 06 
- D 0 - I - 0x005F4B 01:9F3B: 10        .byte $10   ; 
- D 0 - I - 0x005F4C 01:9F3C: CC        .byte off_9EFB + $100 - @start   ; 
; 07 
- D 0 - I - 0x005F4D 01:9F3D: 10        .byte $10   ; 
- D 0 - I - 0x005F4E 01:9F3E: D4        .byte off_9F03 + $100 - @start   ; 
; 08 
- D 0 - I - 0x005F4F 01:9F3F: 38        .byte $38   ; 
- D 0 - I - 0x005F50 01:9F40: DC        .byte off_9F0B + $100 - @start   ; 
; 09 
- D 0 - I - 0x005F51 01:9F41: 68        .byte $68   ; 
- D 0 - I - 0x005F52 01:9F42: E4        .byte off_9F13 + $100 - @start   ; 
; 0A 
- D 0 - I - 0x005F53 01:9F43: 06        .byte $06   ; 
- D 0 - I - 0x005F54 01:9F44: EC        .byte off_9F1B + $100 - @start   ; 
; 0B 
- D 0 - I - 0x005F55 01:9F45: 08        .byte $08   ; 
- D 0 - I - 0x005F56 01:9F46: F1        .byte off_9F20 + $100 - @start   ; 
; 0C 
- D 0 - I - 0x005F57 01:9F47: 0A        .byte $0A   ; 
- D 0 - I - 0x005F58 01:9F48: F6        .byte off_9F25 + $100 - @start   ; 
; 0D 
- D 0 - I - 0x005F59 01:9F49: 0C        .byte $0C   ; 
- D 0 - I - 0x005F5A 01:9F4A: FB        .byte off_9F2A + $100 - @start   ; 
; 0E 
- D 0 - I - 0x005F5B 01:9F4B: 0A        .byte $0A   ; 
- D 0 - I - 0x005F5C 01:9F4C: F6        .byte off_9F25 + $100 - @start   ; 
; 0F 
- D 0 - I - 0x005F5D 01:9F4D: 08        .byte $08   ; 
- D 0 - I - 0x005F5E 01:9F4E: F1        .byte off_9F20 + $100 - @start   ; 
; 10 
- D 0 - I - 0x005F5F 01:9F4F: 06        .byte $06   ; 
- D 0 - I - 0x005F60 01:9F50: EC        .byte off_9F1B + $100 - @start   ; 
; 11 
- D 0 - I - 0x005F61 01:9F51: FF        .byte $FF   ; 
- D 0 - I - 0x005F62 01:9F52: E9        .byte off_9F18_00 + $100 - @start   ; 



off_9F53:
- D 0 - I - 0x005F63 01:9F53: 81        .byte $01 + $80   ; counter + compressed data flag
- D 0 - I - 0x005F64 01:9F54: 02        .byte $02   ; spr_A
- D 0 - I - 0x005F65 01:9F55: FC        .byte $FC, $F8, $D1   ; spr_X, spr_Y, spr_T



off_9F58:
- D 0 - I - 0x005F68 01:9F58: 83        .byte $03 + $80   ; counter + compressed data flag
- D 0 - I - 0x005F69 01:9F59: 02        .byte $02   ; spr_A
- D 0 - I - 0x005F6A 01:9F5A: F4        .byte $F4, $F8, $D3   ; spr_X, spr_Y, spr_T
- D 0 - I - 0x005F6D 01:9F5D: FC        .byte $FC, $F8, $D5   ; 
- D 0 - I - 0x005F70 01:9F60: 04        .byte $04, $F8, $D7   ; 



off_9F63:
- D 0 - I - 0x005F73 01:9F63: 84        .byte $04 + $80   ; counter + compressed data flag
- D 0 - I - 0x005F74 01:9F64: 02        .byte $02   ; spr_A
off_9F65_00:    ; bzk warning, 1st byte is counter 00
- D 0 - I - 0x005F75 01:9F65: 00        .byte $00, $F8, $DD   ; spr_X, spr_Y, spr_T
- D 0 - I - 0x005F78 01:9F68: 08        .byte $08, $F8, $DF   ; 
- D 0 - I - 0x005F7B 01:9F6B: F0        .byte $F0, $F8, $D9   ; 
- D 0 - I - 0x005F7E 01:9F6E: F8        .byte $F8, $F8, $DB   ; 



off_9F71:
- D 0 - I - 0x005F81 01:9F71: 88        .byte $08 + $80   ; counter + compressed data flag
- D 0 - I - 0x005F82 01:9F72: 01        .byte $01   ; spr_A
- D 0 - I - 0x005F83 01:9F73: 14        .byte $14, $F8, $FD   ; spr_X, spr_Y, spr_T
- D 0 - I - 0x005F86 01:9F76: 1C        .byte $1C, $F8, $FF   ; 
- D 0 - I - 0x005F89 01:9F79: DC        .byte $DC, $F8, $F1   ; 
- D 0 - I - 0x005F8C 01:9F7C: E4        .byte $E4, $F8, $F3   ; 
- D 0 - I - 0x005F8F 01:9F7F: 04        .byte $04, $F8, $F9   ; 
- D 0 - I - 0x005F92 01:9F82: 0C        .byte $0C, $F8, $FB   ; 
- D 0 - I - 0x005F95 01:9F85: EC        .byte $EC, $F8, $F5   ; 
- D 0 - I - 0x005F98 01:9F88: F4        .byte $F4, $F8, $F7   ; 



_off007_01_9F8B_0F:
@start:
; 00 
- D 0 - I - 0x005F9B 01:9F8B: 3C        .byte $3C   ; 
- D 0 - I - 0x005F9C 01:9F8C: DA        .byte off_9F65_00 + $100 - @start   ; 
; 01 
- D 0 - I - 0x005F9D 01:9F8D: 3C        .byte $3C   ; 
- D 0 - I - 0x005F9E 01:9F8E: DA        .byte off_9F65_00 + $100 - @start   ; 
; 02 
- D 0 - I - 0x005F9F 01:9F8F: 3C        .byte $3C   ; 
- D 0 - I - 0x005FA0 01:9F90: DA        .byte off_9F65_00 + $100 - @start   ; 
; 03 
- D 0 - I - 0x005FA1 01:9F91: 3C        .byte $3C   ; 
- D 0 - I - 0x005FA2 01:9F92: DA        .byte off_9F65_00 + $100 - @start   ; 
; 04 
- D 0 - I - 0x005FA3 01:9F93: 06        .byte $06   ; 
- D 0 - I - 0x005FA4 01:9F94: C8        .byte off_9F53 + $100 - @start   ; 
; 05 
- D 0 - I - 0x005FA5 01:9F95: 08        .byte $08   ; 
- D 0 - I - 0x005FA6 01:9F96: CD        .byte off_9F58 + $100 - @start   ; 
; 06 
- D 0 - I - 0x005FA7 01:9F97: 0A        .byte $0A   ; 
- D 0 - I - 0x005FA8 01:9F98: D8        .byte off_9F63 + $100 - @start   ; 
; 07 
- D 0 - I - 0x005FA9 01:9F99: 0F        .byte $0F   ; 
- D 0 - I - 0x005FAA 01:9F9A: E6        .byte off_9F71 + $100 - @start   ; 
; 08 
- D 0 - I - 0x005FAB 01:9F9B: FF        .byte $FF   ; 
- D 0 - I - 0x005FAC 01:9F9C: E6        .byte off_9F71 + $100 - @start   ; 



off_9F9D:
- D 0 - I - 0x005FAD 01:9F9D: 86        .byte $06 + $80   ; counter + compressed data flag
- D 0 - I - 0x005FAE 01:9F9E: 01        .byte $01   ; spr_A
- D 0 - I - 0x005FAF 01:9F9F: F4        .byte $F4, $00, $F7   ; spr_X, spr_Y, spr_T
- D 0 - I - 0x005FB2 01:9FA2: F4        .byte $F4, $F0, $D7   ; 
- D 0 - I - 0x005FB5 01:9FA5: FC        .byte $FC, $00, $F9   ; 
- D 0 - I - 0x005FB8 01:9FA8: 04        .byte $04, $00, $FB   ; 
- D 0 - I - 0x005FBB 01:9FAB: FC        .byte $FC, $F0, $D9   ; 
- D 0 - I - 0x005FBE 01:9FAE: 04        .byte $04, $F0, $DB   ; 



off_9FB1:
- D 0 - I - 0x005FC1 01:9FB1: 86        .byte $06 + $80   ; counter + compressed data flag
- D 0 - I - 0x005FC2 01:9FB2: 01        .byte $01   ; spr_A
- D 0 - I - 0x005FC3 01:9FB3: 04        .byte $04, $00, $BD   ; spr_X, spr_Y, spr_T
- D 0 - I - 0x005FC6 01:9FB6: 04        .byte $04, $F0, $9D   ; 
- D 0 - I - 0x005FC9 01:9FB9: F4        .byte $F4, $F0, $8D   ; 
- D 0 - I - 0x005FCC 01:9FBC: FC        .byte $FC, $F0, $8F   ; 
- D 0 - I - 0x005FCF 01:9FBF: F4        .byte $F4, $00, $AD   ; 
- D 0 - I - 0x005FD2 01:9FC2: FC        .byte $FC, $00, $AF   ; 



_off007_1B_9FC5_01:
@start:
; 00 
- D 0 - I - 0x005FD5 01:9FC5: 08        .byte $08   ; 
- D 0 - I - 0x005FD6 01:9FC6: D8        .byte off_9F9D + $100 - @start   ; 
; 01 
- D 0 - I - 0x005FD7 01:9FC7: 08        .byte $08   ; 
- D 0 - I - 0x005FD8 01:9FC8: EC        .byte off_9FB1 + $100 - @start   ; 
; 02 
- D 0 - I - 0x005FD9 01:9FC9: 00        .byte $00   ; 
- D 0 - I - 0x005FDA 01:9FCA: D8        .byte off_9F9D + $100 - @start   ; 



off_9FCB:
- D 0 - I - 0x005FDB 01:9FCB: 0C        .byte $0C   ; counter
- D 0 - I - 0x005FDC 01:9FCC: E8        .byte $E8, $F0, $91, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 0 - I - 0x005FE0 01:9FD0: F0        .byte $F0, $F0, $93, $00   ; 
- D 0 - I - 0x005FE4 01:9FD4: F8        .byte $F8, $F0, $95, $00   ; 
- D 0 - I - 0x005FE8 01:9FD8: 00        .byte $00, $F0, $95, $40   ; 
- D 0 - I - 0x005FEC 01:9FDC: 08        .byte $08, $F0, $93, $40   ; 
- D 0 - I - 0x005FF0 01:9FE0: 10        .byte $10, $F0, $91, $40   ; 
- D 0 - I - 0x005FF4 01:9FE4: E8        .byte $E8, $00, $B1, $00   ; 
- D 0 - I - 0x005FF8 01:9FE8: F0        .byte $F0, $00, $B3, $00   ; 
- D 0 - I - 0x005FFC 01:9FEC: F8        .byte $F8, $00, $B5, $00   ; 
- D 0 - I - 0x006000 01:9FF0: 00        .byte $00, $00, $B5, $40   ; 
- D 0 - I - 0x006004 01:9FF4: 08        .byte $08, $00, $B3, $40   ; 
- D 0 - I - 0x006008 01:9FF8: 10        .byte $10, $00, $B1, $40   ; 



off_9FFC:
- D 0 - I - 0x00600C 01:9FFC: 0C        .byte $0C   ; counter
- D 0 - I - 0x00600D 01:9FFD: E8        .byte $E8, $F0, $97, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x006011 01:A001: F0        .byte $F0, $F0, $99, $00   ; 
- D 1 - I - 0x006015 01:A005: F8        .byte $F8, $F0, $9B, $00   ; 
- D 1 - I - 0x006019 01:A009: 00        .byte $00, $F0, $9B, $40   ; 
- D 1 - I - 0x00601D 01:A00D: 08        .byte $08, $F0, $99, $40   ; 
- D 1 - I - 0x006021 01:A011: 10        .byte $10, $F0, $97, $40   ; 
- D 1 - I - 0x006025 01:A015: E8        .byte $E8, $00, $B7, $00   ; 
- D 1 - I - 0x006029 01:A019: F0        .byte $F0, $00, $B9, $00   ; 
- D 1 - I - 0x00602D 01:A01D: F8        .byte $F8, $00, $BB, $00   ; 
- D 1 - I - 0x006031 01:A021: 00        .byte $00, $00, $BB, $40   ; 
- D 1 - I - 0x006035 01:A025: 08        .byte $08, $00, $B9, $40   ; 
- D 1 - I - 0x006039 01:A029: 10        .byte $10, $00, $B7, $40   ; 



off_A02D:
- D 1 - I - 0x00603D 01:A02D: 0C        .byte $0C   ; counter
- D 1 - I - 0x00603E 01:A02E: E8        .byte $E8, $EB, $97, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x006042 01:A032: F0        .byte $F0, $EC, $99, $00   ; 
- D 1 - I - 0x006046 01:A036: F8        .byte $F8, $ED, $9B, $00   ; 
- D 1 - I - 0x00604A 01:A03A: 00        .byte $00, $EE, $9B, $40   ; 
- D 1 - I - 0x00604E 01:A03E: 08        .byte $08, $EF, $99, $40   ; 
- D 1 - I - 0x006052 01:A042: 10        .byte $10, $F0, $97, $40   ; 
- D 1 - I - 0x006056 01:A046: E8        .byte $E8, $FB, $B7, $00   ; 
- D 1 - I - 0x00605A 01:A04A: F0        .byte $F0, $FC, $B9, $00   ; 
- D 1 - I - 0x00605E 01:A04E: F8        .byte $F8, $FD, $BB, $00   ; 
- D 1 - I - 0x006062 01:A052: 00        .byte $00, $FE, $BB, $40   ; 
- D 1 - I - 0x006066 01:A056: 08        .byte $08, $FF, $B9, $40   ; 
- D 1 - I - 0x00606A 01:A05A: 10        .byte $10, $00, $B7, $40   ; 



off_A05E:
- D 1 - I - 0x00606E 01:A05E: 0C        .byte $0C   ; counter
- D 1 - I - 0x00606F 01:A05F: E8        .byte $E8, $F0, $97, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x006073 01:A063: F0        .byte $F0, $EF, $99, $00   ; 
- D 1 - I - 0x006077 01:A067: F8        .byte $F8, $EE, $9B, $00   ; 
- D 1 - I - 0x00607B 01:A06B: 00        .byte $00, $ED, $9B, $40   ; 
- D 1 - I - 0x00607F 01:A06F: 08        .byte $08, $EC, $99, $40   ; 
- D 1 - I - 0x006083 01:A073: 10        .byte $10, $EB, $97, $40   ; 
- D 1 - I - 0x006087 01:A077: E8        .byte $E8, $00, $B7, $00   ; 
- D 1 - I - 0x00608B 01:A07B: F0        .byte $F0, $FF, $B9, $00   ; 
- D 1 - I - 0x00608F 01:A07F: F8        .byte $F8, $FE, $BB, $00   ; 
- D 1 - I - 0x006093 01:A083: 00        .byte $00, $FD, $BB, $40   ; 
- D 1 - I - 0x006097 01:A087: 08        .byte $08, $FC, $B9, $40   ; 
- D 1 - I - 0x00609B 01:A08B: 10        .byte $10, $FB, $B7, $40   ; 



off_A08F:
- D 1 - I - 0x00609F 01:A08F: 0C        .byte $0C   ; counter
- D 1 - I - 0x0060A0 01:A090: E8        .byte $E8, $F0, $97, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x0060A4 01:A094: F0        .byte $F0, $EF, $99, $00   ; 
- D 1 - I - 0x0060A8 01:A098: F8        .byte $F8, $EE, $9B, $00   ; 
- D 1 - I - 0x0060AC 01:A09C: 00        .byte $00, $ED, $9B, $40   ; 
- D 1 - I - 0x0060B0 01:A0A0: 08        .byte $08, $EE, $99, $40   ; 
- D 1 - I - 0x0060B4 01:A0A4: 10        .byte $10, $EF, $97, $40   ; 
- D 1 - I - 0x0060B8 01:A0A8: E8        .byte $E8, $00, $B7, $00   ; 
- D 1 - I - 0x0060BC 01:A0AC: F0        .byte $F0, $FF, $B9, $00   ; 
- D 1 - I - 0x0060C0 01:A0B0: F8        .byte $F8, $FE, $BB, $00   ; 
- D 1 - I - 0x0060C4 01:A0B4: 00        .byte $00, $FD, $BB, $40   ; 
- D 1 - I - 0x0060C8 01:A0B8: 08        .byte $08, $FE, $B9, $40   ; 
- D 1 - I - 0x0060CC 01:A0BC: 10        .byte $10, $FF, $B7, $40   ; 



_off007_02_A0C0_01:
@start:
; 00 
- D 1 - I - 0x0060D0 01:A0C0: 14        .byte $14   ; 
- D 1 - I - 0x0060D1 01:A0C1: 0B        .byte off_9FCB + $100 - @start   ; 
; 01 
- D 1 - I - 0x0060D2 01:A0C2: FF        .byte $FF   ; 
- D 1 - I - 0x0060D3 01:A0C3: 0B        .byte off_9FCB + $100 - @start   ; 



_off007_02_A0C4_02:
@start:
; 00 
- D 1 - I - 0x0060D4 01:A0C4: 01        .byte $01   ; 
- D 1 - I - 0x0060D5 01:A0C5: 38        .byte off_9FFC + $100 - @start   ; 
; 01 
- D 1 - I - 0x0060D6 01:A0C6: 00        .byte $00   ; 
- D 1 - I - 0x0060D7 01:A0C7: 38        .byte off_9FFC + $100 - @start   ; 



_off007_02_A0C8_03:
@start:
; 00 
- - - - - - 0x0060D8 01:A0C8: 06        .byte $06   ; 
- - - - - - 0x0060D9 01:A0C9: 03        .byte off_9FCB + $100 - @start   ; 
; 01 
- - - - - - 0x0060DA 01:A0CA: 06        .byte $06   ; 
- - - - - - 0x0060DB 01:A0CB: 34        .byte off_9FFC + $100 - @start   ; 
; 02 
- - - - - - 0x0060DC 01:A0CC: 07        .byte $07   ; 
- - - - - - 0x0060DD 01:A0CD: C7        .byte off_A08F + $100 - @start   ; 
; 03 
- - - - - - 0x0060DE 01:A0CE: 08        .byte $08   ; 
- - - - - - 0x0060DF 01:A0CF: 34        .byte off_9FFC + $100 - @start   ; 
; 04 
- - - - - - 0x0060E0 01:A0D0: 08        .byte $08   ; 
- - - - - - 0x0060E1 01:A0D1: 65        .byte off_A02D + $100 - @start   ; 
; 05 
- - - - - - 0x0060E2 01:A0D2: 08        .byte $08   ; 
- - - - - - 0x0060E3 01:A0D3: 34        .byte off_9FFC + $100 - @start   ; 
; 06 
- - - - - - 0x0060E4 01:A0D4: 08        .byte $08   ; 
- - - - - - 0x0060E5 01:A0D5: 96        .byte off_A05E + $100 - @start   ; 
; 07 
- - - - - - 0x0060E6 01:A0D6: 00        .byte $00   ; 
- - - - - - 0x0060E7 01:A0D7: 03        .byte off_9FCB + $100 - @start   ; 



_off007_02_A0D8_09:
@start:
; 00 
- D 1 - I - 0x0060E8 01:A0D8: 02        .byte $02   ; 
- D 1 - I - 0x0060E9 01:A0D9: 24        .byte off_9FFC + $100 - @start   ; 
; 01 
- D 1 - I - 0x0060EA 01:A0DA: 04        .byte $04   ; 
- D 1 - I - 0x0060EB 01:A0DB: B7        .byte off_A08F + $100 - @start   ; 
; 02 
- D 1 - I - 0x0060EC 01:A0DC: 03        .byte $03   ; 
- D 1 - I - 0x0060ED 01:A0DD: 24        .byte off_9FFC + $100 - @start   ; 
; 03 
- D 1 - I - 0x0060EE 01:A0DE: 06        .byte $06   ; 
- D 1 - I - 0x0060EF 01:A0DF: 55        .byte off_A02D + $100 - @start   ; 
; 04 
- D 1 - I - 0x0060F0 01:A0E0: 03        .byte $03   ; 
- D 1 - I - 0x0060F1 01:A0E1: 24        .byte off_9FFC + $100 - @start   ; 
; 05 
- D 1 - I - 0x0060F2 01:A0E2: 05        .byte $05   ; 
- D 1 - I - 0x0060F3 01:A0E3: 86        .byte off_A05E + $100 - @start   ; 
; 06 
- D 1 - I - 0x0060F4 01:A0E4: 03        .byte $03   ; 
- D 1 - I - 0x0060F5 01:A0E5: 55        .byte off_A02D + $100 - @start   ; 
; 07 
- D 1 - I - 0x0060F6 01:A0E6: 05        .byte $05   ; 
- D 1 - I - 0x0060F7 01:A0E7: 86        .byte off_A05E + $100 - @start   ; 
; 08 
- D 1 - I - 0x0060F8 01:A0E8: 00        .byte $00   ; 
; can't add a normal label there because of local labels.
; supposedly doesn't matter what byte it is,
; because it won't be used anyway in case of 00
- D 1 - I - 0x0060F9 01:A0E9: F3        .byte _off007_02_A0C8_03 + $100 - @start + $03   ; = A0CB 



off_A0EA:
- D 1 - I - 0x0060FA 01:A0EA: 06        .byte $06   ; counter
- D 1 - I - 0x0060FB 01:A0EB: E8        .byte $E8, $00, $B7, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x0060FF 01:A0EF: F0        .byte $F0, $00, $B9, $00   ; 
- D 1 - I - 0x006103 01:A0F3: F8        .byte $F8, $00, $BB, $00   ; 
- D 1 - I - 0x006107 01:A0F7: 00        .byte $00, $00, $BB, $40   ; 
- D 1 - I - 0x00610B 01:A0FB: 08        .byte $08, $00, $B9, $40   ; 
- D 1 - I - 0x00610F 01:A0FF: 10        .byte $10, $00, $B7, $40   ; 



off_A103:
- D 1 - I - 0x006113 01:A103: 03        .byte $03   ; counter
- D 1 - I - 0x006114 01:A104: E8        .byte $E8, $08, $75, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x006118 01:A108: F0        .byte $F0, $08, $77, $00   ; 
- D 1 - I - 0x00611C 01:A10C: F8        .byte $F8, $08, $79, $00   ; 



off_A110:
- D 1 - I - 0x006120 01:A110: 03        .byte $03   ; counter
- D 1 - I - 0x006121 01:A111: F8        .byte $F8, $08, $79, $40   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x006125 01:A115: 00        .byte $00, $08, $77, $40   ; 
- D 1 - I - 0x006129 01:A119: 08        .byte $08, $08, $75, $40   ; 



off_A11D:
- D 1 - I - 0x00612D 01:A11D: 02        .byte $02   ; counter
- D 1 - I - 0x00612E 01:A11E: E8        .byte $E8, $08, $75, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x006132 01:A122: F0        .byte $F0, $08, $79, $00   ; 



off_A126:
- D 1 - I - 0x006136 01:A126: 02        .byte $02   ; counter
- D 1 - I - 0x006137 01:A127: 00        .byte $00, $08, $79, $40   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x00613B 01:A12B: 08        .byte $08, $08, $75, $40   ; 



_off007_02_A12F_04:
@start:
; 00 
- D 1 - I - 0x00613F 01:A12F: 01        .byte $01   ; 
- D 1 - I - 0x006140 01:A130: BB        .byte off_A0EA + $100 - @start   ; 
; 01 
- D 1 - I - 0x006141 01:A131: 00        .byte $00   ; 
- D 1 - I - 0x006142 01:A132: BB        .byte off_A0EA + $100 - @start   ; 



_off007_02_A133_05:
@start:
; 00 
- D 1 - I - 0x006143 01:A133: 01        .byte $01   ; 
- D 1 - I - 0x006144 01:A134: D0        .byte off_A103 + $100 - @start   ; 
; 01 
- D 1 - I - 0x006145 01:A135: 00        .byte $00   ; 
- D 1 - I - 0x006146 01:A136: D0        .byte off_A103 + $100 - @start   ; 



_off007_02_A137_06:
@start:
; 00 
- D 1 - I - 0x006147 01:A137: 01        .byte $01   ; 
- D 1 - I - 0x006148 01:A138: D9        .byte off_A110 + $100 - @start   ; 
; 01 
- D 1 - I - 0x006149 01:A139: 00        .byte $00   ; 
- D 1 - I - 0x00614A 01:A13A: D9        .byte off_A110 + $100 - @start   ; 



_off007_02_A13B_07:
@start:
; 00 
- D 1 - I - 0x00614B 01:A13B: 01        .byte $01   ; 
- D 1 - I - 0x00614C 01:A13C: E2        .byte off_A11D + $100 - @start   ; 
; 01 
- D 1 - I - 0x00614D 01:A13D: 00        .byte $00   ; 
- D 1 - I - 0x00614E 01:A13E: E2        .byte off_A11D + $100 - @start   ; 



_off007_02_A13F_08:
@start:
; 00 
- D 1 - I - 0x00614F 01:A13F: 01        .byte $01   ; 
- D 1 - I - 0x006150 01:A140: E7        .byte off_A126 + $100 - @start   ; 
; 01 
- D 1 - I - 0x006151 01:A141: 00        .byte $00   ; 
- D 1 - I - 0x006152 01:A142: E7        .byte off_A126 + $100 - @start   ; 



_off006_A143_0C:
- D 1 - I - 0x006153 01:A143: 77 A3     .word _off007_0C_A377_01
- D 1 - I - 0x006155 01:A145: 01 A2     .word _off007_0C_A201_02
- D 1 - I - 0x006157 01:A147: 76 A2     .word _off007_0C_A276_03
- D 1 - I - 0x006159 01:A149: 90 A2     .word _off007_0C_A290_04
- D 1 - I - 0x00615B 01:A14B: 9E A2     .word _off007_0C_A29E_05
- D 1 - I - 0x00615D 01:A14D: B2 A2     .word _off007_0C_A2B2_06
- D 1 - I - 0x00615F 01:A14F: B2 A3     .word _off007_0C_A3B2_07
- D 1 - I - 0x006161 01:A151: C8 A2     .word _off007_0C_A2C8_08
- D 1 - I - 0x006163 01:A153: EE A2     .word _off007_0C_A2EE_09
- D 1 - I - 0x006165 01:A155: F9 A3     .word _off007_0C_A3F9_0A
- D 1 - I - 0x006167 01:A157: 08 A3     .word _off007_0C_A308_0B
- D 1 - I - 0x006169 01:A159: 1E A3     .word _off007_0C_A31E_0C
- D 1 - I - 0x00616B 01:A15B: 40 A4     .word _off007_0C_A440_0D
- D 1 - I - 0x00616D 01:A15D: 40 A3     .word _off007_0C_A340_0E
- D 1 - I - 0x00616F 01:A15F: C5 A1     .word _off007_0C_A1C5_0F
- D 1 - I - 0x006171 01:A161: C9 A1     .word _off007_0C_A1C9_10
- D 1 - I - 0x006173 01:A163: 64 A3     .word _off007_0C_A364_11
- D 1 - I - 0x006175 01:A165: CD A1     .word _off007_0C_A1CD_12
- D 1 - I - 0x006177 01:A167: 58 A4     .word _off007_0C_A458_13



off_A169:
- D 1 - I - 0x006179 01:A169: 02        .byte $02   ; counter
- D 1 - I - 0x00617A 01:A16A: F8        .byte $F8, $F8, $DD, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x00617E 01:A16E: 00        .byte $00, $F8, $DD, $41   ; 



off_A172:
- D 1 - I - 0x006182 01:A172: 98        .byte $18 + $80   ; counter + compressed data flag
- D 1 - I - 0x006183 01:A173: 00        .byte $00   ; spr_A
- D 1 - I - 0x006184 01:A174: F8        .byte $F8, $E4, $01   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006187 01:A177: F8        .byte $F8, $E4, $01   ; 
- D 1 - I - 0x00618A 01:A17A: F8        .byte $F8, $E4, $01   ; 
- D 1 - I - 0x00618D 01:A17D: F8        .byte $F8, $E4, $01   ; 
- D 1 - I - 0x006190 01:A180: F8        .byte $F8, $E4, $01   ; 
- D 1 - I - 0x006193 01:A183: F8        .byte $F8, $E4, $01   ; 
- D 1 - I - 0x006196 01:A186: F8        .byte $F8, $E4, $01   ; 
- D 1 - I - 0x006199 01:A189: F8        .byte $F8, $E4, $01   ; 
- D 1 - I - 0x00619C 01:A18C: F8        .byte $F8, $F4, $01   ; 
- D 1 - I - 0x00619F 01:A18F: F8        .byte $F8, $F4, $01   ; 
- D 1 - I - 0x0061A2 01:A192: F8        .byte $F8, $F4, $01   ; 
- D 1 - I - 0x0061A5 01:A195: F8        .byte $F8, $F4, $01   ; 
- D 1 - I - 0x0061A8 01:A198: F8        .byte $F8, $F4, $01   ; 
- D 1 - I - 0x0061AB 01:A19B: F8        .byte $F8, $F4, $01   ; 
- D 1 - I - 0x0061AE 01:A19E: F8        .byte $F8, $F4, $01   ; 
- D 1 - I - 0x0061B1 01:A1A1: F8        .byte $F8, $F4, $01   ; 
- D 1 - I - 0x0061B4 01:A1A4: F8        .byte $F8, $04, $01   ; 
- D 1 - I - 0x0061B7 01:A1A7: F8        .byte $F8, $04, $01   ; 
- D 1 - I - 0x0061BA 01:A1AA: F8        .byte $F8, $04, $01   ; 
- D 1 - I - 0x0061BD 01:A1AD: F8        .byte $F8, $04, $01   ; 
- D 1 - I - 0x0061C0 01:A1B0: F8        .byte $F8, $04, $01   ; 
- D 1 - I - 0x0061C3 01:A1B3: F8        .byte $F8, $04, $01   ; 
- D 1 - I - 0x0061C6 01:A1B6: F8        .byte $F8, $04, $01   ; 
- D 1 - I - 0x0061C9 01:A1B9: F8        .byte $F8, $04, $01   ; 



off_A1BC:
- D 1 - I - 0x0061CC 01:A1BC: 02        .byte $02   ; counter
- D 1 - I - 0x0061CD 01:A1BD: 08        .byte $08, $D2, $E3, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x0061D1 01:A1C1: 10        .byte $10, $D2, $E3, $41   ; 



_off007_0C_A1C5_0F:
@start:
; 00 
- D 1 - I - 0x0061D5 01:A1C5: 08        .byte $08   ; 
- D 1 - I - 0x0061D6 01:A1C6: A4        .byte off_A169 + $100 - @start   ; 
; 01 
- D 1 - I - 0x0061D7 01:A1C7: FF        .byte $FF   ; 
- D 1 - I - 0x0061D8 01:A1C8: A4        .byte off_A169 + $100 - @start   ; 



_off007_0C_A1C9_10:
@start:
; 00 
- D 1 - I - 0x0061D9 01:A1C9: 08        .byte $08   ; 
- D 1 - I - 0x0061DA 01:A1CA: A9        .byte off_A172 + $100 - @start   ; 
; 01 
- D 1 - I - 0x0061DB 01:A1CB: FF        .byte $FF   ; 
- D 1 - I - 0x0061DC 01:A1CC: A9        .byte off_A172 + $100 - @start   ; 



_off007_0C_A1CD_12:
@start:
; 00 
- D 1 - I - 0x0061DD 01:A1CD: 01        .byte $01   ; 
- D 1 - I - 0x0061DE 01:A1CE: EF        .byte off_A1BC + $100 - @start   ; 
; 01 
- D 1 - I - 0x0061DF 01:A1CF: 10        .byte $10   ; 
- D 1 - I - 0x0061E0 01:A1D0: EF        .byte off_A1BC + $100 - @start   ; 
; 02 
- D 1 - I - 0x0061E1 01:A1D1: FF        .byte $FF   ; 
- D 1 - I - 0x0061E2 01:A1D2: EF        .byte off_A1BC + $100 - @start   ; 



off_A1D3:
- D 1 - I - 0x0061E3 01:A1D3: 83        .byte $03 + $80   ; counter + compressed data flag
- D 1 - I - 0x0061E4 01:A1D4: 01        .byte $01   ; spr_A
- D 1 - I - 0x0061E5 01:A1D5: 04        .byte $04, $F6, $3D   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0061E8 01:A1D8: F4        .byte $F4, $F6, $39   ; 
- D 1 - I - 0x0061EB 01:A1DB: FC        .byte $FC, $F6, $3B   ; 



off_A1DE:
- D 1 - I - 0x0061EE 01:A1DE: 84        .byte $04 + $80   ; counter + compressed data flag
- D 1 - I - 0x0061EF 01:A1DF: 01        .byte $01   ; spr_A
- D 1 - I - 0x0061F0 01:A1E0: FC        .byte $FC, $F6, $6B   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0061F3 01:A1E3: F4        .byte $F4, $F6, $39   ; 
- D 1 - I - 0x0061F6 01:A1E6: 04        .byte $04, $F6, $6D   ; 
- D 1 - I - 0x0061F9 01:A1E9: 0C        .byte $0C, $F6, $6F   ; 



off_A1EC:
- D 1 - I - 0x0061FC 01:A1EC: 05        .byte $05   ; counter
- D 1 - I - 0x0061FD 01:A1ED: 14        .byte $14, $F6, $51, $41   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x006201 01:A1F1: 0C        .byte $0C, $F6, $51, $01   ; 
- D 1 - I - 0x006205 01:A1F5: 04        .byte $04, $F6, $69, $01   ; 
- D 1 - I - 0x006209 01:A1F9: FC        .byte $FC, $F6, $69, $01   ; 
- D 1 - I - 0x00620D 01:A1FD: F4        .byte $F4, $F6, $39, $01   ; 



_off007_0C_A201_02:
@start:
; 00 
- D 1 - I - 0x006211 01:A201: 02        .byte $02   ; 
- D 1 - I - 0x006212 01:A202: D2        .byte off_A1D3 + $100 - @start   ; 
; 01 
- D 1 - I - 0x006213 01:A203: 03        .byte $03   ; 
- D 1 - I - 0x006214 01:A204: DD        .byte off_A1DE + $100 - @start   ; 
; 02 
- D 1 - I - 0x006215 01:A205: 04        .byte $04   ; 
- D 1 - I - 0x006216 01:A206: EB        .byte off_A1EC + $100 - @start   ; 
; 03 
- D 1 - I - 0x006217 01:A207: 04        .byte $04   ; 
- D 1 - I - 0x006218 01:A208: DD        .byte off_A1DE + $100 - @start   ; 
; 04 
- D 1 - I - 0x006219 01:A209: 04        .byte $04   ; 
- D 1 - I - 0x00621A 01:A20A: EB        .byte off_A1EC + $100 - @start   ; 
; 05 
- D 1 - I - 0x00621B 01:A20B: 03        .byte $03   ; 
- D 1 - I - 0x00621C 01:A20C: DD        .byte off_A1DE + $100 - @start   ; 
; 06 
- D 1 - I - 0x00621D 01:A20D: 02        .byte $02   ; 
- D 1 - I - 0x00621E 01:A20E: D2        .byte off_A1D3 + $100 - @start   ; 
; 07 
- D 1 - I - 0x00621F 01:A20F: FF        .byte $FF   ; 
- D 1 - I - 0x006220 01:A210: D2        .byte off_A1D3 + $100 - @start   ; 



off_A211:
- D 1 - I - 0x006221 01:A211: 84        .byte $04 + $80   ; counter + compressed data flag
- D 1 - I - 0x006222 01:A212: 01        .byte $01   ; spr_A
- D 1 - I - 0x006223 01:A213: FC        .byte $FC, $07, $4F   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006226 01:A216: F6        .byte $F6, $FF, $4F   ; 
- D 1 - I - 0x006229 01:A219: FC        .byte $FC, $F6, $4F   ; 
- D 1 - I - 0x00622C 01:A21C: 01        .byte $01, $FF, $4F   ; 



off_A21F:
- D 1 - I - 0x00622F 01:A21F: 07        .byte $07   ; counter
- D 1 - I - 0x006230 01:A220: FC        .byte $FC, $EA, $4F, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x006234 01:A224: 02        .byte $02, $04, $4F, $01   ; 
- D 1 - I - 0x006238 01:A228: F6        .byte $F6, $04, $4F, $01   ; 
- D 1 - I - 0x00623C 01:A22C: 04        .byte $04, $F1, $4F, $01   ; 
- D 1 - I - 0x006240 01:A230: F3        .byte $F3, $F1, $4F, $01   ; 
- D 1 - I - 0x006244 01:A234: F0        .byte $F0, $FC, $4F, $41   ; 
- D 1 - I - 0x006248 01:A238: 07        .byte $07, $FC, $4F, $01   ; 



off_A23C:
- D 1 - I - 0x00624C 01:A23C: 07        .byte $07   ; counter
- D 1 - I - 0x00624D 01:A23D: FC        .byte $FC, $E4, $4F, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x006251 01:A241: 06        .byte $06, $06, $4F, $01   ; 
- D 1 - I - 0x006255 01:A245: F3        .byte $F3, $06, $4F, $01   ; 
- D 1 - I - 0x006259 01:A249: 0C        .byte $0C, $EC, $4F, $01   ; 
- D 1 - I - 0x00625D 01:A24D: EC        .byte $EC, $EC, $4F, $01   ; 
- D 1 - I - 0x006261 01:A251: E8        .byte $E8, $FC, $4F, $41   ; 
- D 1 - I - 0x006265 01:A255: 0E        .byte $0E, $FC, $4F, $01   ; 



off_A259:
- D 1 - I - 0x006269 01:A259: 07        .byte $07   ; counter
- D 1 - I - 0x00626A 01:A25A: FC        .byte $FC, $E0, $4F, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x00626E 01:A25E: 08        .byte $08, $08, $4F, $01   ; 
- D 1 - I - 0x006272 01:A262: F0        .byte $F0, $08, $4F, $01   ; 
- D 1 - I - 0x006276 01:A266: 14        .byte $14, $EA, $4F, $01   ; 
- D 1 - I - 0x00627A 01:A26A: E4        .byte $E4, $EA, $4F, $01   ; 
- D 1 - I - 0x00627E 01:A26E: E0        .byte $E0, $FC, $4F, $41   ; 
- D 1 - I - 0x006282 01:A272: 17        .byte $17, $FC, $4F, $01   ; 



_off007_0C_A276_03:
@start:
; 00 
- D 1 - I - 0x006286 01:A276: 04        .byte $04   ; 
- D 1 - I - 0x006287 01:A277: 9B        .byte off_A211 + $100 - @start   ; 
; 01 
- D 1 - I - 0x006288 01:A278: 05        .byte $05   ; 
- D 1 - I - 0x006289 01:A279: A9        .byte off_A21F + $100 - @start   ; 
; 02 
- D 1 - I - 0x00628A 01:A27A: 07        .byte $07   ; 
- D 1 - I - 0x00628B 01:A27B: C6        .byte off_A23C + $100 - @start   ; 
; 03 
- D 1 - I - 0x00628C 01:A27C: 0B        .byte $0B   ; 
- D 1 - I - 0x00628D 01:A27D: E3        .byte off_A259 + $100 - @start   ; 
; 04 
- D 1 - I - 0x00628E 01:A27E: FF        .byte $FF   ; 
- D 1 - I - 0x00628F 01:A27F: E3        .byte off_A259 + $100 - @start   ; 



off_A280:
- D 1 - I - 0x006290 01:A280: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x006291 01:A281: 00        .byte $00   ; spr_A
- D 1 - I - 0x006292 01:A282: F8        .byte $F8, $F8, $6D   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006295 01:A285: 00        .byte $00, $F8, $6F   ; 



off_A288:
- D 1 - I - 0x006298 01:A288: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x006299 01:A289: 00        .byte $00   ; spr_A
- D 1 - I - 0x00629A 01:A28A: F8        .byte $F8, $F8, $6D   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x00629D 01:A28D: 00        .byte $00, $F8, $6F   ; 



_off007_0C_A290_04:
@start:
; 00 
- D 1 - I - 0x0062A0 01:A290: 08        .byte $08   ; 
- D 1 - I - 0x0062A1 01:A291: F0        .byte off_A280 + $100 - @start   ; 
; 01 
- D 1 - I - 0x0062A2 01:A292: 08        .byte $08   ; 
- D 1 - I - 0x0062A3 01:A293: F8        .byte off_A288 + $100 - @start   ; 
; 02 
- - - - - - 0x0062A4 01:A294: 00        .byte $00   ; 
- - - - - - 0x0062A5 01:A295: F0        .byte off_A280 + $100 - @start   ; 



off_A296:
- D 1 - I - 0x0062A6 01:A296: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x0062A7 01:A297: 00        .byte $00   ; spr_A
- D 1 - I - 0x0062A8 01:A298: F8        .byte $F8, $F8, $39   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0062AB 01:A29B: 00        .byte $00, $F8, $3B   ; 



_off007_0C_A29E_05:
@start:
; 00 
- D 1 - I - 0x0062AE 01:A29E: 06        .byte $06   ; 
- D 1 - I - 0x0062AF 01:A29F: F8        .byte off_A296 + $100 - @start   ; 
; 01 
- D 1 - I - 0x0062B0 01:A2A0: 00        .byte $00   ; 
- D 1 - I - 0x0062B1 01:A2A1: F8        .byte off_A296 + $100 - @start   ; 



off_A2A2:
- D 1 - I - 0x0062B2 01:A2A2: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x0062B3 01:A2A3: 00        .byte $00   ; spr_A
- D 1 - I - 0x0062B4 01:A2A4: F8        .byte $F8, $F8, $71   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0062B7 01:A2A7: 00        .byte $00, $F8, $73   ; 



off_A2AA:
- D 1 - I - 0x0062BA 01:A2AA: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x0062BB 01:A2AB: 00        .byte $00   ; spr_A
- D 1 - I - 0x0062BC 01:A2AC: F8        .byte $F8, $F8, $75   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0062BF 01:A2AF: 00        .byte $00, $F8, $77   ; 



_off007_0C_A2B2_06:
@start:
; 00 
- D 1 - I - 0x0062C2 01:A2B2: 06        .byte $06   ; 
- D 1 - I - 0x0062C3 01:A2B3: F0        .byte off_A2A2 + $100 - @start   ; 
; 01 
- D 1 - I - 0x0062C4 01:A2B4: 06        .byte $06   ; 
- D 1 - I - 0x0062C5 01:A2B5: F8        .byte off_A2AA + $100 - @start   ; 
; 02 
- D 1 - I - 0x0062C6 01:A2B6: 00        .byte $00   ; 
- D 1 - I - 0x0062C7 01:A2B7: F0        .byte off_A2A2 + $100 - @start   ; 



off_A2B8:
- D 1 - I - 0x0062C8 01:A2B8: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x0062C9 01:A2B9: 01        .byte $01   ; spr_A
- D 1 - I - 0x0062CA 01:A2BA: F8        .byte $F8, $F8, $35   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0062CD 01:A2BD: 00        .byte $00, $F8, $37   ; 



off_A2C0:
- D 1 - I - 0x0062D0 01:A2C0: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x0062D1 01:A2C1: 01        .byte $01   ; spr_A
- D 1 - I - 0x0062D2 01:A2C2: F8        .byte $F8, $F8, $41   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0062D5 01:A2C5: 00        .byte $00, $F8, $43   ; 



_off007_0C_A2C8_08:
@start:
; 00 
- D 1 - I - 0x0062D8 01:A2C8: 05        .byte $05   ; 
- D 1 - I - 0x0062D9 01:A2C9: F0        .byte off_A2B8 + $100 - @start   ; 
; 01 
- D 1 - I - 0x0062DA 01:A2CA: 05        .byte $05   ; 
- D 1 - I - 0x0062DB 01:A2CB: F8        .byte off_A2C0 + $100 - @start   ; 
; 02 
- D 1 - I - 0x0062DC 01:A2CC: 00        .byte $00   ; 
- D 1 - I - 0x0062DD 01:A2CD: F0        .byte off_A2B8 + $100 - @start   ; 



off_A2CE:
- D 1 - I - 0x0062DE 01:A2CE: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x0062DF 01:A2CF: 01        .byte $01   ; spr_A
- D 1 - I - 0x0062E0 01:A2D0: F8        .byte $F8, $F8, $11   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0062E3 01:A2D3: 00        .byte $00, $F8, $13   ; 



off_A2D6:
- D 1 - I - 0x0062E6 01:A2D6: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x0062E7 01:A2D7: 01        .byte $01   ; spr_A
- D 1 - I - 0x0062E8 01:A2D8: FC        .byte $FC, $03, $11   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0062EB 01:A2DB: F9        .byte $F9, $F6, $11   ; 



off_A2DE:
- D 1 - I - 0x0062EE 01:A2DE: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x0062EF 01:A2DF: 01        .byte $01   ; spr_A
- D 1 - I - 0x0062F0 01:A2E0: 00        .byte $00, $F8, $11   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0062F3 01:A2E3: F8        .byte $F8, $00, $11   ; 



off_A2E6:
- D 1 - I - 0x0062F6 01:A2E6: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x0062F7 01:A2E7: 01        .byte $01   ; spr_A
- D 1 - I - 0x0062F8 01:A2E8: 01        .byte $01, $FB, $11   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0062FB 01:A2EB: F6        .byte $F6, $FD, $11   ; 



_off007_0C_A2EE_09:
@start:
; 00 
- D 1 - I - 0x0062FE 01:A2EE: 02        .byte $02   ; 
- D 1 - I - 0x0062FF 01:A2EF: E0        .byte off_A2CE + $100 - @start   ; 
; 01 
- D 1 - I - 0x006300 01:A2F0: 02        .byte $02   ; 
- D 1 - I - 0x006301 01:A2F1: E8        .byte off_A2D6 + $100 - @start   ; 
; 02 
- D 1 - I - 0x006302 01:A2F2: 02        .byte $02   ; 
- D 1 - I - 0x006303 01:A2F3: F0        .byte off_A2DE + $100 - @start   ; 
; 03 
- D 1 - I - 0x006304 01:A2F4: 02        .byte $02   ; 
- D 1 - I - 0x006305 01:A2F5: F8        .byte off_A2E6 + $100 - @start   ; 
; 04 
- D 1 - I - 0x006306 01:A2F6: 00        .byte $00   ; 
- D 1 - I - 0x006307 01:A2F7: E0        .byte off_A2CE + $100 - @start   ; 



off_A2F8:
- D 1 - I - 0x006308 01:A2F8: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x006309 01:A2F9: 01        .byte $01   ; spr_A
- D 1 - I - 0x00630A 01:A2FA: F8        .byte $F8, $F8, $19   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x00630D 01:A2FD: 00        .byte $00, $F8, $1B   ; 



off_A300:
- D 1 - I - 0x006310 01:A300: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x006311 01:A301: 01        .byte $01   ; spr_A
- D 1 - I - 0x006312 01:A302: F8        .byte $F8, $F8, $75   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006315 01:A305: 00        .byte $00, $F8, $77   ; 



_off007_0C_A308_0B:
@start:
; 00 
- D 1 - I - 0x006318 01:A308: 08        .byte $08   ; 
- D 1 - I - 0x006319 01:A309: F0        .byte off_A2F8 + $100 - @start   ; 
; 01 
- D 1 - I - 0x00631A 01:A30A: 08        .byte $08   ; 
- D 1 - I - 0x00631B 01:A30B: F8        .byte off_A300 + $100 - @start   ; 
; 02 
- D 1 - I - 0x00631C 01:A30C: 00        .byte $00   ; 
- D 1 - I - 0x00631D 01:A30D: F0        .byte off_A2F8 + $100 - @start   ; 



off_A30E:
- D 1 - I - 0x00631E 01:A30E: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x00631F 01:A30F: 02        .byte $02   ; spr_A
- D 1 - I - 0x006320 01:A310: F8        .byte $F8, $F8, $19   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006323 01:A313: 00        .byte $00, $F8, $1B   ; 



off_A316:
- D 1 - I - 0x006326 01:A316: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x006327 01:A317: 02        .byte $02   ; spr_A
- D 1 - I - 0x006328 01:A318: F8        .byte $F8, $F6, $19   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x00632B 01:A31B: 00        .byte $00, $F6, $1B   ; 



_off007_0C_A31E_0C:
@start:
; 00 
- D 1 - I - 0x00632E 01:A31E: 08        .byte $08   ; 
- D 1 - I - 0x00632F 01:A31F: F0        .byte off_A30E + $100 - @start   ; 
; 01 
- D 1 - I - 0x006330 01:A320: 08        .byte $08   ; 
- D 1 - I - 0x006331 01:A321: F8        .byte off_A316 + $100 - @start   ; 
; 02 
- D 1 - I - 0x006332 01:A322: 00        .byte $00   ; 
- D 1 - I - 0x006333 01:A323: F0        .byte off_A30E + $100 - @start   ; 



off_A324:
- D 1 - I - 0x006334 01:A324: 84        .byte $04 + $80   ; counter + compressed data flag
- D 1 - I - 0x006335 01:A325: 01        .byte $01   ; spr_A
- D 1 - I - 0x006336 01:A326: E8        .byte $E8, $FE, $43   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006339 01:A329: F0        .byte $F0, $FC, $45   ; 
- D 1 - I - 0x00633C 01:A32C: F7        .byte $F7, $F8, $49   ; 
- D 1 - I - 0x00633F 01:A32F: FF        .byte $FF, $F8, $4B   ; 



off_A332:
- D 1 - I - 0x006342 01:A332: 84        .byte $04 + $80   ; counter + compressed data flag
- D 1 - I - 0x006343 01:A333: 01        .byte $01   ; spr_A
- D 1 - I - 0x006344 01:A334: F0        .byte $F0, $00, $45   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006347 01:A337: E8        .byte $E8, $FC, $43   ; 
- D 1 - I - 0x00634A 01:A33A: F7        .byte $F7, $F8, $4D   ; 
- D 1 - I - 0x00634D 01:A33D: FF        .byte $FF, $F8, $4F   ; 



_off007_0C_A340_0E:
@start:
; 00 
- D 1 - I - 0x006350 01:A340: 06        .byte $06   ; 
- D 1 - I - 0x006351 01:A341: E4        .byte off_A324 + $100 - @start   ; 
; 01 
- D 1 - I - 0x006352 01:A342: 06        .byte $06   ; 
- D 1 - I - 0x006353 01:A343: F2        .byte off_A332 + $100 - @start   ; 
; 02 
- D 1 - I - 0x006354 01:A344: 00        .byte $00   ; 
- D 1 - I - 0x006355 01:A345: E4        .byte off_A324 + $100 - @start   ; 



off_A346:
- D 1 - I - 0x006356 01:A346: 81        .byte $01 + $80   ; counter + compressed data flag
- D 1 - I - 0x006357 01:A347: 01        .byte $01   ; spr_A
- D 1 - I - 0x006358 01:A348: FC        .byte $FC, $FC, $4F   ; spr_X, spr_Y, spr_T



off_A34B:
- D 1 - I - 0x00635B 01:A34B: 83        .byte $03 + $80   ; counter + compressed data flag
- D 1 - I - 0x00635C 01:A34C: 01        .byte $01   ; spr_A
- D 1 - I - 0x00635D 01:A34D: 00        .byte $00, $00, $4F   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006360 01:A350: FC        .byte $FC, $F8, $4F   ; 
- D 1 - I - 0x006363 01:A353: F8        .byte $F8, $00, $4F   ; 



off_A356:
- - - - - - 0x006366 01:A356: 84        .byte $04 + $80   ; counter + compressed data flag
- - - - - - 0x006367 01:A357: 01        .byte $01   ; spr_A
- - - - - - 0x006368 01:A358: F5        .byte $F5, $05, $4F   ; spr_X, spr_Y, spr_T
- - - - - - 0x00636B 01:A35B: 04        .byte $04, $05, $4F   ; 
- - - - - - 0x00636E 01:A35E: F4        .byte $F4, $F6, $4F   ; 
- - - - - - 0x006371 01:A361: 04        .byte $04, $F6, $4F   ; 



_off007_0C_A364_11:
@start:
; 00 
- D 1 - I - 0x006374 01:A364: 04        .byte $04   ; 
- D 1 - I - 0x006375 01:A365: E2        .byte off_A346 + $100 - @start   ; 
; 01 
- D 1 - I - 0x006376 01:A366: 06        .byte $06   ; 
- D 1 - I - 0x006377 01:A367: E7        .byte off_A34B + $100 - @start   ; 
; 02 
- - - - - - 0x006378 01:A368: 08        .byte $08   ; 
- - - - - - 0x006379 01:A369: F2        .byte off_A356 + $100 - @start   ; 
; 03 
- - - - - - 0x00637A 01:A36A: FF        .byte $FF   ; 
- - - - - - 0x00637B 01:A36B: F2        .byte off_A356 + $100 - @start   ; 



off_A36C:
- - - - - - 0x00637C 01:A36C: 83        .byte $03 + $80   ; counter + compressed data flag
- - - - - - 0x00637D 01:A36D: 02        .byte $02   ; spr_A
- - - - - - 0x00637E 01:A36E: 04        .byte $04, $F6, $3D   ; spr_X, spr_Y, spr_T
- - - - - - 0x006381 01:A371: F4        .byte $F4, $F6, $39   ; 
- - - - - - 0x006384 01:A374: FC        .byte $FC, $F6, $3B   ; 



_off007_0C_A377_01:
@start:
; 00 
- - - - - - 0x006387 01:A377: 10        .byte $10   ; 
- D 1 - I - 0x006388 01:A378: F5        .byte off_A36C + $100 - @start   ; 
; 01 
- - - - - - 0x006389 01:A379: FF        .byte $FF   ; 
- - - - - - 0x00638A 01:A37A: F5        .byte off_A36C + $100 - @start   ; 



off_A37B:
- D 1 - I - 0x00638B 01:A37B: 04        .byte $04   ; counter
- D 1 - I - 0x00638C 01:A37C: 06        .byte $06, $F6, $1F, $41   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x006390 01:A380: FE        .byte $FE, $F6, $1F, $01   ; 
- D 1 - I - 0x006394 01:A384: F4        .byte $F4, $F6, $09, $01   ; 
- D 1 - I - 0x006398 01:A388: FC        .byte $FC, $F6, $0B, $01   ; 



off_A38C:
- D 1 - I - 0x00639C 01:A38C: 04        .byte $04   ; counter
- D 1 - I - 0x00639D 01:A38D: FC        .byte $FC, $F6, $0B, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x0063A1 01:A391: 04        .byte $04, $F6, $6D, $01   ; 
- D 1 - I - 0x0063A5 01:A395: 0C        .byte $0C, $F6, $6D, $41   ; 
- D 1 - I - 0x0063A9 01:A399: F4        .byte $F4, $F6, $09, $01   ; 



off_A39D:
- D 1 - I - 0x0063AD 01:A39D: 05        .byte $05   ; counter
- D 1 - I - 0x0063AE 01:A39E: 14        .byte $14, $F6, $6F, $41   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x0063B2 01:A3A2: 04        .byte $04, $F6, $0B, $01   ; 
- D 1 - I - 0x0063B6 01:A3A6: FC        .byte $FC, $F6, $0B, $01   ; 
- D 1 - I - 0x0063BA 01:A3AA: 0C        .byte $0C, $F6, $6F, $01   ; 
- D 1 - I - 0x0063BE 01:A3AE: F4        .byte $F4, $F6, $09, $01   ; 



_off007_0C_A3B2_07:
@start:
; 00 
- D 1 - I - 0x0063C2 01:A3B2: 02        .byte $02   ; 
- D 1 - I - 0x0063C3 01:A3B3: C9        .byte off_A37B + $100 - @start   ; 
; 01 
- D 1 - I - 0x0063C4 01:A3B4: 03        .byte $03   ; 
- D 1 - I - 0x0063C5 01:A3B5: DA        .byte off_A38C + $100 - @start   ; 
; 02 
- D 1 - I - 0x0063C6 01:A3B6: 04        .byte $04   ; 
- D 1 - I - 0x0063C7 01:A3B7: EB        .byte off_A39D + $100 - @start   ; 
; 03 
- D 1 - I - 0x0063C8 01:A3B8: 04        .byte $04   ; 
- D 1 - I - 0x0063C9 01:A3B9: DA        .byte off_A38C + $100 - @start   ; 
; 04 
- D 1 - I - 0x0063CA 01:A3BA: 04        .byte $04   ; 
- D 1 - I - 0x0063CB 01:A3BB: EB        .byte off_A39D + $100 - @start   ; 
; 05 
- D 1 - I - 0x0063CC 01:A3BC: 03        .byte $03   ; 
- D 1 - I - 0x0063CD 01:A3BD: DA        .byte off_A38C + $100 - @start   ; 
; 06 
- D 1 - I - 0x0063CE 01:A3BE: 02        .byte $02   ; 
- D 1 - I - 0x0063CF 01:A3BF: C9        .byte off_A37B + $100 - @start   ; 
; 07 
- D 1 - I - 0x0063D0 01:A3C0: FF        .byte $FF   ; 
- D 1 - I - 0x0063D1 01:A3C1: C9        .byte off_A37B + $100 - @start   ; 



off_A3C2:
- D 1 - I - 0x0063D2 01:A3C2: 04        .byte $04   ; counter
- D 1 - I - 0x0063D3 01:A3C3: 06        .byte $06, $F8, $39, $41   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x0063D7 01:A3C7: FE        .byte $FE, $F8, $39, $01   ; 
- D 1 - I - 0x0063DB 01:A3CB: F4        .byte $F4, $F8, $19, $01   ; 
- D 1 - I - 0x0063DF 01:A3CF: FC        .byte $FC, $F8, $1B, $01   ; 



off_A3D3:
- D 1 - I - 0x0063E3 01:A3D3: 04        .byte $04   ; counter
- D 1 - I - 0x0063E4 01:A3D4: 04        .byte $04, $F8, $3B, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x0063E8 01:A3D8: 0C        .byte $0C, $F8, $3B, $41   ; 
- D 1 - I - 0x0063EC 01:A3DC: F4        .byte $F4, $F8, $19, $01   ; 
- D 1 - I - 0x0063F0 01:A3E0: FC        .byte $FC, $F8, $1B, $01   ; 



off_A3E4:
- D 1 - I - 0x0063F4 01:A3E4: 05        .byte $05   ; counter
- D 1 - I - 0x0063F5 01:A3E5: 14        .byte $14, $F8, $3D, $41   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x0063F9 01:A3E9: 04        .byte $04, $F8, $1B, $01   ; 
- D 1 - I - 0x0063FD 01:A3ED: 0C        .byte $0C, $F8, $3D, $01   ; 
- D 1 - I - 0x006401 01:A3F1: F4        .byte $F4, $F8, $19, $01   ; 
- D 1 - I - 0x006405 01:A3F5: FC        .byte $FC, $F8, $1B, $01   ; 



_off007_0C_A3F9_0A:
@start:
; 00 
- D 1 - I - 0x006409 01:A3F9: 02        .byte $02   ; 
- D 1 - I - 0x00640A 01:A3FA: C9        .byte off_A3C2 + $100 - @start   ; 
; 01 
- D 1 - I - 0x00640B 01:A3FB: 03        .byte $03   ; 
- D 1 - I - 0x00640C 01:A3FC: DA        .byte off_A3D3 + $100 - @start   ; 
; 02 
- D 1 - I - 0x00640D 01:A3FD: 04        .byte $04   ; 
- D 1 - I - 0x00640E 01:A3FE: EB        .byte off_A3E4 + $100 - @start   ; 
; 03 
- D 1 - I - 0x00640F 01:A3FF: 04        .byte $04   ; 
- D 1 - I - 0x006410 01:A400: DA        .byte off_A3D3 + $100 - @start   ; 
; 04 
- D 1 - I - 0x006411 01:A401: 04        .byte $04   ; 
- D 1 - I - 0x006412 01:A402: EB        .byte off_A3E4 + $100 - @start   ; 
; 05 
- D 1 - I - 0x006413 01:A403: 03        .byte $03   ; 
- D 1 - I - 0x006414 01:A404: DA        .byte off_A3D3 + $100 - @start   ; 
; 06 
- D 1 - I - 0x006415 01:A405: 02        .byte $02   ; 
- D 1 - I - 0x006416 01:A406: C9        .byte off_A3C2 + $100 - @start   ; 
; 07 
- D 1 - I - 0x006417 01:A407: FF        .byte $FF   ; 
- D 1 - I - 0x006418 01:A408: C9        .byte off_A3C2 + $100 - @start   ; 



off_A409:
- D 1 - I - 0x006419 01:A409: 04        .byte $04   ; counter
- D 1 - I - 0x00641A 01:A40A: 0A        .byte $0A, $F8, $55, $41   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x00641E 01:A40E: 02        .byte $02, $F8, $55, $01   ; 
- D 1 - I - 0x006422 01:A412: FC        .byte $FC, $F8, $53, $01   ; 
- D 1 - I - 0x006426 01:A416: F4        .byte $F4, $F8, $09, $01   ; 



off_A41A:
- D 1 - I - 0x00642A 01:A41A: 04        .byte $04   ; counter
- D 1 - I - 0x00642B 01:A41B: FC        .byte $FC, $F8, $53, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x00642F 01:A41F: 0C        .byte $0C, $F8, $69, $41   ; 
- D 1 - I - 0x006433 01:A423: 04        .byte $04, $F8, $69, $01   ; 
- D 1 - I - 0x006437 01:A427: F4        .byte $F4, $F8, $09, $01   ; 



off_A42B:
- D 1 - I - 0x00643B 01:A42B: 05        .byte $05   ; counter
- D 1 - I - 0x00643C 01:A42C: 0C        .byte $0C, $F8, $6F, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x006440 01:A430: 04        .byte $04, $F8, $53, $01   ; 
- D 1 - I - 0x006444 01:A434: FC        .byte $FC, $F8, $53, $01   ; 
- D 1 - I - 0x006448 01:A438: 14        .byte $14, $F8, $6F, $41   ; 
- D 1 - I - 0x00644C 01:A43C: F4        .byte $F4, $F8, $09, $01   ; 



_off007_0C_A440_0D:
@start:
; 00 
- D 1 - I - 0x006450 01:A440: 02        .byte $02   ; 
- D 1 - I - 0x006451 01:A441: C9        .byte off_A409 + $100 - @start   ; 
; 01 
- D 1 - I - 0x006452 01:A442: 03        .byte $03   ; 
- D 1 - I - 0x006453 01:A443: DA        .byte off_A41A + $100 - @start   ; 
; 02 
- D 1 - I - 0x006454 01:A444: 04        .byte $04   ; 
- D 1 - I - 0x006455 01:A445: EB        .byte off_A42B + $100 - @start   ; 
; 03 
- D 1 - I - 0x006456 01:A446: 04        .byte $04   ; 
- D 1 - I - 0x006457 01:A447: DA        .byte off_A41A + $100 - @start   ; 
; 04 
- D 1 - I - 0x006458 01:A448: 04        .byte $04   ; 
- D 1 - I - 0x006459 01:A449: EB        .byte off_A42B + $100 - @start   ; 
; 05 
- D 1 - I - 0x00645A 01:A44A: 03        .byte $03   ; 
- D 1 - I - 0x00645B 01:A44B: DA        .byte off_A41A + $100 - @start   ; 
; 06 
- D 1 - I - 0x00645C 01:A44C: 02        .byte $02   ; 
- D 1 - I - 0x00645D 01:A44D: C9        .byte off_A409 + $100 - @start   ; 
; 07 
- D 1 - I - 0x00645E 01:A44E: FF        .byte $FF   ; 
- D 1 - I - 0x00645F 01:A44F: C9        .byte off_A409 + $100 - @start   ; 



off_A450:
- D 1 - I - 0x006460 01:A450: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x006461 01:A451: 01        .byte $01   ; spr_A
- D 1 - I - 0x006462 01:A452: F8        .byte $F8, $F8, $71   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006465 01:A455: 00        .byte $00, $F8, $73   ; 



_off007_0C_A458_13:
@start:
; 00 
- D 1 - I - 0x006468 01:A458: 08        .byte $08   ; 
- D 1 - I - 0x006469 01:A459: F8        .byte off_A450 + $100 - @start   ; 
; 01 
- - - - - - 0x00646A 01:A45A: 00        .byte $00   ; 
- - - - - - 0x00646B 01:A45B: F8        .byte off_A450 + $100 - @start   ; 



off_A45C:
- D 1 - I - 0x00646C 01:A45C: 02        .byte $02   ; counter
- D 1 - I - 0x00646D 01:A45D: F8        .byte $F8, $F8, $5F, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x006471 01:A461: 00        .byte $00, $F8, $5F, $41   ; 



off_A465:
- D 1 - I - 0x006475 01:A465: 02        .byte $02   ; counter
- D 1 - I - 0x006476 01:A466: F8        .byte $F8, $F8, $5F, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x00647A 01:A46A: 00        .byte $00, $F8, $5F, $41   ; 



off_A46E_00:
- D 1 - I - 0x00647E 01:A46E: 00        .byte $00   ; counter



_off007_0D_A46F_01:
@start:
; 00 
- - - - - - 0x00647F 01:A46F: 08        .byte $08   ; 
- D 1 - I - 0x006480 01:A470: ED        .byte off_A45C + $100 - @start   ; 
; 01 
- D 1 - I - 0x006481 01:A471: 08        .byte $08   ; 
- D 1 - I - 0x006482 01:A472: F6        .byte off_A465 + $100 - @start   ; 
; 02 
- D 1 - I - 0x006483 01:A473: 08        .byte $08   ; 
- D 1 - I - 0x006484 01:A474: ED        .byte off_A45C + $100 - @start   ; 
; 03 
- D 1 - I - 0x006485 01:A475: 08        .byte $08   ; 
- D 1 - I - 0x006486 01:A476: F6        .byte off_A465 + $100 - @start   ; 
; 04 
- D 1 - I - 0x006487 01:A477: 08        .byte $08   ; 
- D 1 - I - 0x006488 01:A478: ED        .byte off_A45C + $100 - @start   ; 
; 05 
- D 1 - I - 0x006489 01:A479: 08        .byte $08   ; 
- D 1 - I - 0x00648A 01:A47A: F6        .byte off_A465 + $100 - @start   ; 
; 06 
- D 1 - I - 0x00648B 01:A47B: 08        .byte $08   ; 
- D 1 - I - 0x00648C 01:A47C: ED        .byte off_A45C + $100 - @start   ; 
; 07 
- D 1 - I - 0x00648D 01:A47D: 08        .byte $08   ; 
- D 1 - I - 0x00648E 01:A47E: F6        .byte off_A465 + $100 - @start   ; 
; 08 
- D 1 - I - 0x00648F 01:A47F: 08        .byte $08   ; 
- D 1 - I - 0x006490 01:A480: ED        .byte off_A45C + $100 - @start   ; 
; 09 
- D 1 - I - 0x006491 01:A481: 08        .byte $08   ; 
- D 1 - I - 0x006492 01:A482: F6        .byte off_A465 + $100 - @start   ; 
; 0A 
- D 1 - I - 0x006493 01:A483: 08        .byte $08   ; 
- D 1 - I - 0x006494 01:A484: ED        .byte off_A45C + $100 - @start   ; 
; 0B 
- D 1 - I - 0x006495 01:A485: 07        .byte $07   ; 
- D 1 - I - 0x006496 01:A486: F6        .byte off_A465 + $100 - @start   ; 
; 0C 
- D 1 - I - 0x006497 01:A487: 01        .byte $01   ; 
- D 1 - I - 0x006498 01:A488: FF        .byte off_A46E_00 + $100 - @start   ; 
; 0D 
- D 1 - I - 0x006499 01:A489: 07        .byte $07   ; 
- D 1 - I - 0x00649A 01:A48A: ED        .byte off_A45C + $100 - @start   ; 
; 0E 
- D 1 - I - 0x00649B 01:A48B: 01        .byte $01   ; 
- D 1 - I - 0x00649C 01:A48C: FF        .byte off_A46E_00 + $100 - @start   ; 
; 0F 
- D 1 - I - 0x00649D 01:A48D: 06        .byte $06   ; 
- D 1 - I - 0x00649E 01:A48E: F6        .byte off_A465 + $100 - @start   ; 
; 10 
- D 1 - I - 0x00649F 01:A48F: 02        .byte $02   ; 
- D 1 - I - 0x0064A0 01:A490: FF        .byte off_A46E_00 + $100 - @start   ; 
; 11 
- D 1 - I - 0x0064A1 01:A491: 06        .byte $06   ; 
- D 1 - I - 0x0064A2 01:A492: ED        .byte off_A45C + $100 - @start   ; 
; 12 
- D 1 - I - 0x0064A3 01:A493: 02        .byte $02   ; 
- D 1 - I - 0x0064A4 01:A494: FF        .byte off_A46E_00 + $100 - @start   ; 
; 13 
- D 1 - I - 0x0064A5 01:A495: 05        .byte $05   ; 
- D 1 - I - 0x0064A6 01:A496: F6        .byte off_A465 + $100 - @start   ; 
; 14 
- D 1 - I - 0x0064A7 01:A497: 03        .byte $03   ; 
- D 1 - I - 0x0064A8 01:A498: FF        .byte off_A46E_00 + $100 - @start   ; 
; 15 
- D 1 - I - 0x0064A9 01:A499: 05        .byte $05   ; 
- D 1 - I - 0x0064AA 01:A49A: ED        .byte off_A45C + $100 - @start   ; 
; 16 
- D 1 - I - 0x0064AB 01:A49B: 03        .byte $03   ; 
- D 1 - I - 0x0064AC 01:A49C: FF        .byte off_A46E_00 + $100 - @start   ; 
; 17 
- D 1 - I - 0x0064AD 01:A49D: 04        .byte $04   ; 
- D 1 - I - 0x0064AE 01:A49E: F6        .byte off_A465 + $100 - @start   ; 
; 18 
- D 1 - I - 0x0064AF 01:A49F: 04        .byte $04   ; 
- D 1 - I - 0x0064B0 01:A4A0: FF        .byte off_A46E_00 + $100 - @start   ; 
; 19 
- D 1 - I - 0x0064B1 01:A4A1: 04        .byte $04   ; 
- D 1 - I - 0x0064B2 01:A4A2: ED        .byte off_A45C + $100 - @start   ; 
; 1A 
- D 1 - I - 0x0064B3 01:A4A3: 04        .byte $04   ; 
- D 1 - I - 0x0064B4 01:A4A4: FF        .byte off_A46E_00 + $100 - @start   ; 
; 1B 
- D 1 - I - 0x0064B5 01:A4A5: 02        .byte $02   ; 
- D 1 - I - 0x0064B6 01:A4A6: F6        .byte off_A465 + $100 - @start   ; 
; 1C 
- D 1 - I - 0x0064B7 01:A4A7: 04        .byte $04   ; 
- D 1 - I - 0x0064B8 01:A4A8: FF        .byte off_A46E_00 + $100 - @start   ; 
; 1D 
- D 1 - I - 0x0064B9 01:A4A9: 02        .byte $02   ; 
- D 1 - I - 0x0064BA 01:A4AA: ED        .byte off_A45C + $100 - @start   ; 
; 1E 
- D 1 - I - 0x0064BB 01:A4AB: 04        .byte $04   ; 
- D 1 - I - 0x0064BC 01:A4AC: FF        .byte off_A46E_00 + $100 - @start   ; 
; 1F 
- D 1 - I - 0x0064BD 01:A4AD: 01        .byte $01   ; 
- D 1 - I - 0x0064BE 01:A4AE: F6        .byte off_A465 + $100 - @start   ; 
; 20 
- D 1 - I - 0x0064BF 01:A4AF: 05        .byte $05   ; 
- D 1 - I - 0x0064C0 01:A4B0: FF        .byte off_A46E_00 + $100 - @start   ; 
; 21 
- D 1 - I - 0x0064C1 01:A4B1: 01        .byte $01   ; 
- D 1 - I - 0x0064C2 01:A4B2: ED        .byte off_A45C + $100 - @start   ; 
; 22 
- D 1 - I - 0x0064C3 01:A4B3: 05        .byte $05   ; 
- D 1 - I - 0x0064C4 01:A4B4: FF        .byte off_A46E_00 + $100 - @start   ; 
; 23 
- D 1 - I - 0x0064C5 01:A4B5: 01        .byte $01   ; 
- D 1 - I - 0x0064C6 01:A4B6: F6        .byte off_A465 + $100 - @start   ; 
; 24 
- D 1 - I - 0x0064C7 01:A4B7: 05        .byte $05   ; 
- D 1 - I - 0x0064C8 01:A4B8: FF        .byte off_A46E_00 + $100 - @start   ; 
; 25 
- D 1 - I - 0x0064C9 01:A4B9: 01        .byte $01   ; 
- D 1 - I - 0x0064CA 01:A4BA: ED        .byte off_A45C + $100 - @start   ; 
; 26 
- D 1 - I - 0x0064CB 01:A4BB: 05        .byte $05   ; 
- D 1 - I - 0x0064CC 01:A4BC: FF        .byte off_A46E_00 + $100 - @start   ; 
; 27 
- D 1 - I - 0x0064CD 01:A4BD: 01        .byte $01   ; 
- D 1 - I - 0x0064CE 01:A4BE: F6        .byte off_A465 + $100 - @start   ; 
; 28 
- D 1 - I - 0x0064CF 01:A4BF: 05        .byte $05   ; 
- D 1 - I - 0x0064D0 01:A4C0: FF        .byte off_A46E_00 + $100 - @start   ; 
; 29 
- D 1 - I - 0x0064D1 01:A4C1: 01        .byte $01   ; 
- D 1 - I - 0x0064D2 01:A4C2: ED        .byte off_A45C + $100 - @start   ; 
; 2A 
- D 1 - I - 0x0064D3 01:A4C3: 06        .byte $06   ; 
- D 1 - I - 0x0064D4 01:A4C4: FF        .byte off_A46E_00 + $100 - @start   ; 
; 2B 
- D 1 - I - 0x0064D5 01:A4C5: 01        .byte $01   ; 
- D 1 - I - 0x0064D6 01:A4C6: F6        .byte off_A465 + $100 - @start   ; 
; 2C 
- D 1 - I - 0x0064D7 01:A4C7: 06        .byte $06   ; 
- D 1 - I - 0x0064D8 01:A4C8: FF        .byte off_A46E_00 + $100 - @start   ; 
; 2D 
- D 1 - I - 0x0064D9 01:A4C9: 01        .byte $01   ; 
- D 1 - I - 0x0064DA 01:A4CA: ED        .byte off_A45C + $100 - @start   ; 
; 2E 
- D 1 - I - 0x0064DB 01:A4CB: FF        .byte $FF   ; 
- D 1 - I - 0x0064DC 01:A4CC: FF        .byte off_A46E_00 + $100 - @start   ; 



off_A4CD:
- D 1 - I - 0x0064DD 01:A4CD: 02        .byte $02   ; counter
- D 1 - I - 0x0064DE 01:A4CE: F8        .byte $F8, $FA, $3F, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x0064E2 01:A4D2: 00        .byte $00, $FA, $3F, $40   ; 



off_A4D6:
- D 1 - I - 0x0064E6 01:A4D6: 02        .byte $02   ; counter
- D 1 - I - 0x0064E7 01:A4D7: F8        .byte $F8, $FA, $3F, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x0064EB 01:A4DB: 00        .byte $00, $FA, $3F, $41   ; 



off_A4DF_00:
- D 1 - I - 0x0064EF 01:A4DF: 00        .byte $00   ; counter



_off007_0E_A4E0_01:
@start:
; 00 
- - - - - - 0x0064F0 01:A4E0: 08        .byte $08   ; 
- D 1 - I - 0x0064F1 01:A4E1: ED        .byte off_A4CD + $100 - @start   ; 
; 01 
- D 1 - I - 0x0064F2 01:A4E2: 08        .byte $08   ; 
- D 1 - I - 0x0064F3 01:A4E3: F6        .byte off_A4D6 + $100 - @start   ; 
; 02 
- D 1 - I - 0x0064F4 01:A4E4: 08        .byte $08   ; 
- D 1 - I - 0x0064F5 01:A4E5: ED        .byte off_A4CD + $100 - @start   ; 
; 03 
- D 1 - I - 0x0064F6 01:A4E6: 08        .byte $08   ; 
- D 1 - I - 0x0064F7 01:A4E7: F6        .byte off_A4D6 + $100 - @start   ; 
; 04 
- D 1 - I - 0x0064F8 01:A4E8: 08        .byte $08   ; 
- D 1 - I - 0x0064F9 01:A4E9: ED        .byte off_A4CD + $100 - @start   ; 
; 05 
- D 1 - I - 0x0064FA 01:A4EA: 08        .byte $08   ; 
- D 1 - I - 0x0064FB 01:A4EB: F6        .byte off_A4D6 + $100 - @start   ; 
; 06 
- D 1 - I - 0x0064FC 01:A4EC: 08        .byte $08   ; 
- D 1 - I - 0x0064FD 01:A4ED: ED        .byte off_A4CD + $100 - @start   ; 
; 07 
- D 1 - I - 0x0064FE 01:A4EE: 08        .byte $08   ; 
- D 1 - I - 0x0064FF 01:A4EF: F6        .byte off_A4D6 + $100 - @start   ; 
; 08 
- D 1 - I - 0x006500 01:A4F0: 08        .byte $08   ; 
- D 1 - I - 0x006501 01:A4F1: ED        .byte off_A4CD + $100 - @start   ; 
; 09 
- D 1 - I - 0x006502 01:A4F2: 08        .byte $08   ; 
- D 1 - I - 0x006503 01:A4F3: F6        .byte off_A4D6 + $100 - @start   ; 
; 0A 
- D 1 - I - 0x006504 01:A4F4: 08        .byte $08   ; 
- D 1 - I - 0x006505 01:A4F5: ED        .byte off_A4CD + $100 - @start   ; 
; 0B 
- D 1 - I - 0x006506 01:A4F6: 08        .byte $08   ; 
- D 1 - I - 0x006507 01:A4F7: F6        .byte off_A4D6 + $100 - @start   ; 
; 0C 
- D 1 - I - 0x006508 01:A4F8: 08        .byte $08   ; 
- D 1 - I - 0x006509 01:A4F9: ED        .byte off_A4CD + $100 - @start   ; 
; 0D 
- D 1 - I - 0x00650A 01:A4FA: 08        .byte $08   ; 
- D 1 - I - 0x00650B 01:A4FB: F6        .byte off_A4D6 + $100 - @start   ; 
; 0E 
- D 1 - I - 0x00650C 01:A4FC: 08        .byte $08   ; 
- D 1 - I - 0x00650D 01:A4FD: ED        .byte off_A4CD + $100 - @start   ; 
; 0F 
- D 1 - I - 0x00650E 01:A4FE: 08        .byte $08   ; 
- D 1 - I - 0x00650F 01:A4FF: F6        .byte off_A4D6 + $100 - @start   ; 
; 10 
- D 1 - I - 0x006510 01:A500: 08        .byte $08   ; 
- D 1 - I - 0x006511 01:A501: ED        .byte off_A4CD + $100 - @start   ; 
; 11 
- D 1 - I - 0x006512 01:A502: 08        .byte $08   ; 
- D 1 - I - 0x006513 01:A503: F6        .byte off_A4D6 + $100 - @start   ; 
; 12 
- D 1 - I - 0x006514 01:A504: 08        .byte $08   ; 
- D 1 - I - 0x006515 01:A505: ED        .byte off_A4CD + $100 - @start   ; 
; 13 
- D 1 - I - 0x006516 01:A506: 08        .byte $08   ; 
- D 1 - I - 0x006517 01:A507: F6        .byte off_A4D6 + $100 - @start   ; 
; 14 
- D 1 - I - 0x006518 01:A508: 08        .byte $08   ; 
- D 1 - I - 0x006519 01:A509: ED        .byte off_A4CD + $100 - @start   ; 
; 15 
- D 1 - I - 0x00651A 01:A50A: 08        .byte $08   ; 
- D 1 - I - 0x00651B 01:A50B: F6        .byte off_A4D6 + $100 - @start   ; 
; 16 
- D 1 - I - 0x00651C 01:A50C: 08        .byte $08   ; 
- D 1 - I - 0x00651D 01:A50D: ED        .byte off_A4CD + $100 - @start   ; 
; 17 
- D 1 - I - 0x00651E 01:A50E: 07        .byte $07   ; 
- D 1 - I - 0x00651F 01:A50F: F6        .byte off_A4D6 + $100 - @start   ; 
; 18 
- D 1 - I - 0x006520 01:A510: 01        .byte $01   ; 
- D 1 - I - 0x006521 01:A511: FF        .byte off_A4DF_00 + $100 - @start   ; 
; 19 
- D 1 - I - 0x006522 01:A512: 07        .byte $07   ; 
- D 1 - I - 0x006523 01:A513: ED        .byte off_A4CD + $100 - @start   ; 
; 1A 
- D 1 - I - 0x006524 01:A514: 01        .byte $01   ; 
- D 1 - I - 0x006525 01:A515: FF        .byte off_A4DF_00 + $100 - @start   ; 
; 1B 
- D 1 - I - 0x006526 01:A516: 06        .byte $06   ; 
- D 1 - I - 0x006527 01:A517: F6        .byte off_A4D6 + $100 - @start   ; 
; 1C 
- D 1 - I - 0x006528 01:A518: 02        .byte $02   ; 
- D 1 - I - 0x006529 01:A519: FF        .byte off_A4DF_00 + $100 - @start   ; 
; 1D 
- D 1 - I - 0x00652A 01:A51A: 06        .byte $06   ; 
- D 1 - I - 0x00652B 01:A51B: ED        .byte off_A4CD + $100 - @start   ; 
; 1E 
- D 1 - I - 0x00652C 01:A51C: 02        .byte $02   ; 
- D 1 - I - 0x00652D 01:A51D: FF        .byte off_A4DF_00 + $100 - @start   ; 
; 1F 
- D 1 - I - 0x00652E 01:A51E: 05        .byte $05   ; 
- D 1 - I - 0x00652F 01:A51F: F6        .byte off_A4D6 + $100 - @start   ; 
; 20 
- D 1 - I - 0x006530 01:A520: 03        .byte $03   ; 
- D 1 - I - 0x006531 01:A521: FF        .byte off_A4DF_00 + $100 - @start   ; 
; 21 
- D 1 - I - 0x006532 01:A522: 05        .byte $05   ; 
- D 1 - I - 0x006533 01:A523: ED        .byte off_A4CD + $100 - @start   ; 
; 22 
- D 1 - I - 0x006534 01:A524: 03        .byte $03   ; 
- D 1 - I - 0x006535 01:A525: FF        .byte off_A4DF_00 + $100 - @start   ; 
; 23 
- D 1 - I - 0x006536 01:A526: 04        .byte $04   ; 
- D 1 - I - 0x006537 01:A527: F6        .byte off_A4D6 + $100 - @start   ; 
; 24 
- D 1 - I - 0x006538 01:A528: 04        .byte $04   ; 
- D 1 - I - 0x006539 01:A529: FF        .byte off_A4DF_00 + $100 - @start   ; 
; 25 
- D 1 - I - 0x00653A 01:A52A: 04        .byte $04   ; 
- D 1 - I - 0x00653B 01:A52B: ED        .byte off_A4CD + $100 - @start   ; 
; 26 
- D 1 - I - 0x00653C 01:A52C: 04        .byte $04   ; 
- D 1 - I - 0x00653D 01:A52D: FF        .byte off_A4DF_00 + $100 - @start   ; 
; 27 
- D 1 - I - 0x00653E 01:A52E: 02        .byte $02   ; 
- D 1 - I - 0x00653F 01:A52F: F6        .byte off_A4D6 + $100 - @start   ; 
; 28 
- D 1 - I - 0x006540 01:A530: 04        .byte $04   ; 
- D 1 - I - 0x006541 01:A531: FF        .byte off_A4DF_00 + $100 - @start   ; 
; 29 
- D 1 - I - 0x006542 01:A532: 02        .byte $02   ; 
- D 1 - I - 0x006543 01:A533: ED        .byte off_A4CD + $100 - @start   ; 
; 2A 
- D 1 - I - 0x006544 01:A534: 04        .byte $04   ; 
- D 1 - I - 0x006545 01:A535: FF        .byte off_A4DF_00 + $100 - @start   ; 
; 2B 
- D 1 - I - 0x006546 01:A536: 01        .byte $01   ; 
- D 1 - I - 0x006547 01:A537: F6        .byte off_A4D6 + $100 - @start   ; 
; 2C 
- D 1 - I - 0x006548 01:A538: 05        .byte $05   ; 
- D 1 - I - 0x006549 01:A539: FF        .byte off_A4DF_00 + $100 - @start   ; 
; 2D 
- D 1 - I - 0x00654A 01:A53A: 01        .byte $01   ; 
- D 1 - I - 0x00654B 01:A53B: ED        .byte off_A4CD + $100 - @start   ; 
; 2E 
- D 1 - I - 0x00654C 01:A53C: 05        .byte $05   ; 
- D 1 - I - 0x00654D 01:A53D: FF        .byte off_A4DF_00 + $100 - @start   ; 
; 2F 
- D 1 - I - 0x00654E 01:A53E: 01        .byte $01   ; 
- D 1 - I - 0x00654F 01:A53F: F6        .byte off_A4D6 + $100 - @start   ; 
; 30 
- D 1 - I - 0x006550 01:A540: 05        .byte $05   ; 
- D 1 - I - 0x006551 01:A541: FF        .byte off_A4DF_00 + $100 - @start   ; 
; 31 
- D 1 - I - 0x006552 01:A542: 01        .byte $01   ; 
- D 1 - I - 0x006553 01:A543: ED        .byte off_A4CD + $100 - @start   ; 
; 32 
- D 1 - I - 0x006554 01:A544: 05        .byte $05   ; 
- D 1 - I - 0x006555 01:A545: FF        .byte off_A4DF_00 + $100 - @start   ; 
; 33 
- D 1 - I - 0x006556 01:A546: 01        .byte $01   ; 
- D 1 - I - 0x006557 01:A547: F6        .byte off_A4D6 + $100 - @start   ; 
; 34 
- D 1 - I - 0x006558 01:A548: 05        .byte $05   ; 
- D 1 - I - 0x006559 01:A549: FF        .byte off_A4DF_00 + $100 - @start   ; 
; 35 
- D 1 - I - 0x00655A 01:A54A: 01        .byte $01   ; 
- D 1 - I - 0x00655B 01:A54B: ED        .byte off_A4CD + $100 - @start   ; 
; 36 
- D 1 - I - 0x00655C 01:A54C: 06        .byte $06   ; 
- D 1 - I - 0x00655D 01:A54D: FF        .byte off_A4DF_00 + $100 - @start   ; 
; 37 
- D 1 - I - 0x00655E 01:A54E: 01        .byte $01   ; 
- D 1 - I - 0x00655F 01:A54F: F6        .byte off_A4D6 + $100 - @start   ; 
; 38 
- D 1 - I - 0x006560 01:A550: 06        .byte $06   ; 
- D 1 - I - 0x006561 01:A551: FF        .byte off_A4DF_00 + $100 - @start   ; 
; 39 
- D 1 - I - 0x006562 01:A552: 01        .byte $01   ; 
- D 1 - I - 0x006563 01:A553: ED        .byte off_A4CD + $100 - @start   ; 
; 3A 
- D 1 - I - 0x006564 01:A554: FF        .byte $FF   ; 
- D 1 - I - 0x006565 01:A555: FF        .byte off_A4DF_00 + $100 - @start   ; 



off_A556:
- D 1 - I - 0x006566 01:A556: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x006567 01:A557: 01        .byte $01   ; spr_A
- D 1 - I - 0x006568 01:A558: F8        .byte $F8, $F8, $ED   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x00656B 01:A55B: 00        .byte $00, $F8, $EF   ; 



off_A55E:
- D 1 - I - 0x00656E 01:A55E: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x00656F 01:A55F: 01        .byte $01   ; spr_A
- D 1 - I - 0x006570 01:A560: F8        .byte $F8, $F8, $F1   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006573 01:A563: 00        .byte $00, $F8, $F3   ; 



off_A566:
- D 1 - I - 0x006576 01:A566: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x006577 01:A567: 01        .byte $01   ; spr_A
- D 1 - I - 0x006578 01:A568: F8        .byte $F8, $F8, $F5   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x00657B 01:A56B: 00        .byte $00, $F8, $F7   ; 



_off007_0F_A56E_01:
_off007_14_A56E_02:
_off007_16_A56E_02:
_off007_20_A56E_02:
_off007_1E_A56E_02:
_off007_2A_A56E_02:
_off007_2C_A56E_02:
_off007_2E_A56E_02:
@start:
; 00 
- D 1 - I - 0x00657E 01:A56E: 03        .byte $03   ; 
- D 1 - I - 0x00657F 01:A56F: E8        .byte off_A556 + $100 - @start   ; 
; 01 
- D 1 - I - 0x006580 01:A570: 03        .byte $03   ; 
- D 1 - I - 0x006581 01:A571: F0        .byte off_A55E + $100 - @start   ; 
; 02 
- D 1 - I - 0x006582 01:A572: 03        .byte $03   ; 
- D 1 - I - 0x006583 01:A573: F8        .byte off_A566 + $100 - @start   ; 
; 03 
- D 1 - I - 0x006584 01:A574: 01        .byte $01   ; 
- D 1 - I - 0x006585 01:A575: F0        .byte off_A55E + $100 - @start   ; 
; 04 
- D 1 - I - 0x006586 01:A576: 03        .byte $03   ; 
- D 1 - I - 0x006587 01:A577: F8        .byte off_A566 + $100 - @start   ; 
; 05 
- D 1 - I - 0x006588 01:A578: FF        .byte $FF   ; 
- D 1 - I - 0x006589 01:A579: F0        .byte off_A55E + $100 - @start   ; 



off_A57A:
- D 1 - I - 0x00658A 01:A57A: 86        .byte $06 + $80   ; counter + compressed data flag
- D 1 - I - 0x00658B 01:A57B: 01        .byte $01   ; spr_A
- D 1 - I - 0x00658C 01:A57C: E0        .byte $E0, $F8, $61   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x00658F 01:A57F: E8        .byte $E8, $F8, $63   ; 
- D 1 - I - 0x006592 01:A582: F0        .byte $F0, $F8, $65   ; 
- D 1 - I - 0x006595 01:A585: F8        .byte $F8, $F8, $67   ; 
- D 1 - I - 0x006598 01:A588: 08        .byte $08, $F8, $69   ; 
- D 1 - I - 0x00659B 01:A58B: 10        .byte $10, $F8, $6B   ; 



_off007_0F_A58E_02:
@start:
; 00 
- D 1 - I - 0x00659E 01:A58E: 01        .byte $01   ; 
- D 1 - I - 0x00659F 01:A58F: EC        .byte off_A57A + $100 - @start   ; 
; 01 
- D 1 - I - 0x0065A0 01:A590: 00        .byte $00   ; 
- D 1 - I - 0x0065A1 01:A591: EC        .byte off_A57A + $100 - @start   ; 



off_A592:
- D 1 - I - 0x0065A2 01:A592: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x0065A3 01:A593: 01        .byte $01   ; spr_A
- D 1 - I - 0x0065A4 01:A594: F8        .byte $F8, $EC, $E9   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0065A7 01:A597: 00        .byte $00, $EC, $EB   ; 



off_A59A:
- D 1 - I - 0x0065AA 01:A59A: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x0065AB 01:A59B: 02        .byte $02   ; spr_A
- D 1 - I - 0x0065AC 01:A59C: F8        .byte $F8, $EC, $F9   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0065AF 01:A59F: 00        .byte $00, $EC, $FB   ; 



_off007_0D_A5A2_03:
_off007_0E_A5A2_03:
_off007_25_A5A2_02:
@start:
; 00 
- D 1 - I - 0x0065B2 01:A5A2: 20        .byte $20   ; 
- D 1 - I - 0x0065B3 01:A5A3: F0        .byte off_A592 + $100 - @start   ; 
; 01 
- D 1 - I - 0x0065B4 01:A5A4: FF        .byte $FF   ; 
- D 1 - I - 0x0065B5 01:A5A5: F0        .byte off_A592 + $100 - @start   ; 



_off007_0D_A5A6_04:
_off007_0D_A5A6_05:
_off007_0E_A5A6_04:
_off007_0E_A5A6_05:
@start:
; 00 
- D 1 - I - 0x0065B6 01:A5A6: 20        .byte $20   ; 
- D 1 - I - 0x0065B7 01:A5A7: F4        .byte off_A59A + $100 - @start   ; 
; 01 
- D 1 - I - 0x0065B8 01:A5A8: FF        .byte $FF   ; 
- D 1 - I - 0x0065B9 01:A5A9: F4        .byte off_A59A + $100 - @start   ; 



off_A5AA:
- D 1 - I - 0x0065BA 01:A5AA: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x0065BB 01:A5AB: 01        .byte $01   ; spr_A
- D 1 - I - 0x0065BC 01:A5AC: F8        .byte $F8, $F8, $E5   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0065BF 01:A5AF: 00        .byte $00, $F8, $E7   ; 



off_A5B2:
- D 1 - I - 0x0065C2 01:A5B2: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x0065C3 01:A5B3: 01        .byte $01   ; spr_A
- D 1 - I - 0x0065C4 01:A5B4: F8        .byte $F8, $F8, $E5   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0065C7 01:A5B7: 00        .byte $00, $F8, $E7   ; 



off_A5BA_00:
- D 1 - I - 0x0065CA 01:A5BA: 00        .byte $00   ; counter



_off007_0D_A5BB_02:
_off007_0E_A5BB_02:
_off007_24_A5BB_02:
@start:
; 00 
- D 1 - I - 0x0065CB 01:A5BB: 08        .byte $08   ; 
- D 1 - I - 0x0065CC 01:A5BC: EF        .byte off_A5AA + $100 - @start   ; 
; 01 
- D 1 - I - 0x0065CD 01:A5BD: 08        .byte $08   ; 
- D 1 - I - 0x0065CE 01:A5BE: F7        .byte off_A5B2 + $100 - @start   ; 
; 02 
- D 1 - I - 0x0065CF 01:A5BF: 08        .byte $08   ; 
- D 1 - I - 0x0065D0 01:A5C0: EF        .byte off_A5AA + $100 - @start   ; 
; 03 
- D 1 - I - 0x0065D1 01:A5C1: 08        .byte $08   ; 
- D 1 - I - 0x0065D2 01:A5C2: F7        .byte off_A5B2 + $100 - @start   ; 
; 04 
- D 1 - I - 0x0065D3 01:A5C3: 08        .byte $08   ; 
- D 1 - I - 0x0065D4 01:A5C4: EF        .byte off_A5AA + $100 - @start   ; 
; 05 
- D 1 - I - 0x0065D5 01:A5C5: 08        .byte $08   ; 
- D 1 - I - 0x0065D6 01:A5C6: F7        .byte off_A5B2 + $100 - @start   ; 
; 06 
- D 1 - I - 0x0065D7 01:A5C7: 08        .byte $08   ; 
- D 1 - I - 0x0065D8 01:A5C8: EF        .byte off_A5AA + $100 - @start   ; 
; 07 
- D 1 - I - 0x0065D9 01:A5C9: 08        .byte $08   ; 
- D 1 - I - 0x0065DA 01:A5CA: F7        .byte off_A5B2 + $100 - @start   ; 
; 08 
- D 1 - I - 0x0065DB 01:A5CB: 08        .byte $08   ; 
- D 1 - I - 0x0065DC 01:A5CC: EF        .byte off_A5AA + $100 - @start   ; 
; 09 
- D 1 - I - 0x0065DD 01:A5CD: 08        .byte $08   ; 
- D 1 - I - 0x0065DE 01:A5CE: F7        .byte off_A5B2 + $100 - @start   ; 
; 0A 
- D 1 - I - 0x0065DF 01:A5CF: 08        .byte $08   ; 
- D 1 - I - 0x0065E0 01:A5D0: EF        .byte off_A5AA + $100 - @start   ; 
; 0B 
- D 1 - I - 0x0065E1 01:A5D1: 08        .byte $08   ; 
- D 1 - I - 0x0065E2 01:A5D2: F7        .byte off_A5B2 + $100 - @start   ; 
; 0C 
- D 1 - I - 0x0065E3 01:A5D3: 08        .byte $08   ; 
- D 1 - I - 0x0065E4 01:A5D4: EF        .byte off_A5AA + $100 - @start   ; 
; 0D 
- D 1 - I - 0x0065E5 01:A5D5: 08        .byte $08   ; 
- D 1 - I - 0x0065E6 01:A5D6: F7        .byte off_A5B2 + $100 - @start   ; 
; 0E 
- D 1 - I - 0x0065E7 01:A5D7: 08        .byte $08   ; 
- D 1 - I - 0x0065E8 01:A5D8: EF        .byte off_A5AA + $100 - @start   ; 
; 0F 
- D 1 - I - 0x0065E9 01:A5D9: 08        .byte $08   ; 
- D 1 - I - 0x0065EA 01:A5DA: F7        .byte off_A5B2 + $100 - @start   ; 
; 10 
- D 1 - I - 0x0065EB 01:A5DB: 08        .byte $08   ; 
- D 1 - I - 0x0065EC 01:A5DC: EF        .byte off_A5AA + $100 - @start   ; 
; 11 
- D 1 - I - 0x0065ED 01:A5DD: 08        .byte $08   ; 
- D 1 - I - 0x0065EE 01:A5DE: F7        .byte off_A5B2 + $100 - @start   ; 
; 12 
- D 1 - I - 0x0065EF 01:A5DF: 08        .byte $08   ; 
- D 1 - I - 0x0065F0 01:A5E0: EF        .byte off_A5AA + $100 - @start   ; 
; 13 
- D 1 - I - 0x0065F1 01:A5E1: 08        .byte $08   ; 
- D 1 - I - 0x0065F2 01:A5E2: F7        .byte off_A5B2 + $100 - @start   ; 
; 14 
- D 1 - I - 0x0065F3 01:A5E3: 08        .byte $08   ; 
- D 1 - I - 0x0065F4 01:A5E4: EF        .byte off_A5AA + $100 - @start   ; 
; 15 
- D 1 - I - 0x0065F5 01:A5E5: 08        .byte $08   ; 
- D 1 - I - 0x0065F6 01:A5E6: F7        .byte off_A5B2 + $100 - @start   ; 
; 16 
- D 1 - I - 0x0065F7 01:A5E7: 08        .byte $08   ; 
- D 1 - I - 0x0065F8 01:A5E8: EF        .byte off_A5AA + $100 - @start   ; 
; 17 
- D 1 - I - 0x0065F9 01:A5E9: 07        .byte $07   ; 
- D 1 - I - 0x0065FA 01:A5EA: F7        .byte off_A5B2 + $100 - @start   ; 
; 18 
- D 1 - I - 0x0065FB 01:A5EB: 01        .byte $01   ; 
- D 1 - I - 0x0065FC 01:A5EC: FF        .byte off_A5BA_00 + $100 - @start   ; 
; 19 
- D 1 - I - 0x0065FD 01:A5ED: 07        .byte $07   ; 
- D 1 - I - 0x0065FE 01:A5EE: EF        .byte off_A5AA + $100 - @start   ; 
; 1A 
- D 1 - I - 0x0065FF 01:A5EF: 01        .byte $01   ; 
- D 1 - I - 0x006600 01:A5F0: FF        .byte off_A5BA_00 + $100 - @start   ; 
; 1B 
- D 1 - I - 0x006601 01:A5F1: 06        .byte $06   ; 
- D 1 - I - 0x006602 01:A5F2: F7        .byte off_A5B2 + $100 - @start   ; 
; 1C 
- D 1 - I - 0x006603 01:A5F3: 02        .byte $02   ; 
- D 1 - I - 0x006604 01:A5F4: FF        .byte off_A5BA_00 + $100 - @start   ; 
; 1D 
- D 1 - I - 0x006605 01:A5F5: 06        .byte $06   ; 
- D 1 - I - 0x006606 01:A5F6: EF        .byte off_A5AA + $100 - @start   ; 
; 1E 
- D 1 - I - 0x006607 01:A5F7: 02        .byte $02   ; 
- D 1 - I - 0x006608 01:A5F8: FF        .byte off_A5BA_00 + $100 - @start   ; 
; 1F 
- D 1 - I - 0x006609 01:A5F9: 05        .byte $05   ; 
- D 1 - I - 0x00660A 01:A5FA: F7        .byte off_A5B2 + $100 - @start   ; 
; 20 
- D 1 - I - 0x00660B 01:A5FB: 03        .byte $03   ; 
- D 1 - I - 0x00660C 01:A5FC: FF        .byte off_A5BA_00 + $100 - @start   ; 
; 21 
- D 1 - I - 0x00660D 01:A5FD: 05        .byte $05   ; 
- D 1 - I - 0x00660E 01:A5FE: EF        .byte off_A5AA + $100 - @start   ; 
; 22 
- D 1 - I - 0x00660F 01:A5FF: 03        .byte $03   ; 
- D 1 - I - 0x006610 01:A600: FF        .byte off_A5BA_00 + $100 - @start   ; 
; 23 
- D 1 - I - 0x006611 01:A601: 04        .byte $04   ; 
- D 1 - I - 0x006612 01:A602: F7        .byte off_A5B2 + $100 - @start   ; 
; 24 
- D 1 - I - 0x006613 01:A603: 04        .byte $04   ; 
- D 1 - I - 0x006614 01:A604: FF        .byte off_A5BA_00 + $100 - @start   ; 
; 25 
- D 1 - I - 0x006615 01:A605: 04        .byte $04   ; 
- D 1 - I - 0x006616 01:A606: EF        .byte off_A5AA + $100 - @start   ; 
; 26 
- D 1 - I - 0x006617 01:A607: 04        .byte $04   ; 
- D 1 - I - 0x006618 01:A608: FF        .byte off_A5BA_00 + $100 - @start   ; 
; 27 
- D 1 - I - 0x006619 01:A609: 02        .byte $02   ; 
- D 1 - I - 0x00661A 01:A60A: F7        .byte off_A5B2 + $100 - @start   ; 
; 28 
- D 1 - I - 0x00661B 01:A60B: 04        .byte $04   ; 
- D 1 - I - 0x00661C 01:A60C: FF        .byte off_A5BA_00 + $100 - @start   ; 
; 29 
- D 1 - I - 0x00661D 01:A60D: 02        .byte $02   ; 
- D 1 - I - 0x00661E 01:A60E: EF        .byte off_A5AA + $100 - @start   ; 
; 2A 
- D 1 - I - 0x00661F 01:A60F: 04        .byte $04   ; 
- D 1 - I - 0x006620 01:A610: FF        .byte off_A5BA_00 + $100 - @start   ; 
; 2B 
- D 1 - I - 0x006621 01:A611: 01        .byte $01   ; 
- D 1 - I - 0x006622 01:A612: F7        .byte off_A5B2 + $100 - @start   ; 
; 2C 
- D 1 - I - 0x006623 01:A613: 05        .byte $05   ; 
- D 1 - I - 0x006624 01:A614: FF        .byte off_A5BA_00 + $100 - @start   ; 
; 2D 
- D 1 - I - 0x006625 01:A615: 01        .byte $01   ; 
- D 1 - I - 0x006626 01:A616: EF        .byte off_A5AA + $100 - @start   ; 
; 2E 
- D 1 - I - 0x006627 01:A617: 05        .byte $05   ; 
- D 1 - I - 0x006628 01:A618: FF        .byte off_A5BA_00 + $100 - @start   ; 
; 2F 
- D 1 - I - 0x006629 01:A619: 01        .byte $01   ; 
- D 1 - I - 0x00662A 01:A61A: F7        .byte off_A5B2 + $100 - @start   ; 
; 30 
- D 1 - I - 0x00662B 01:A61B: 05        .byte $05   ; 
- D 1 - I - 0x00662C 01:A61C: FF        .byte off_A5BA_00 + $100 - @start   ; 
; 31 
- D 1 - I - 0x00662D 01:A61D: 01        .byte $01   ; 
- D 1 - I - 0x00662E 01:A61E: EF        .byte off_A5AA + $100 - @start   ; 
; 32 
- D 1 - I - 0x00662F 01:A61F: 05        .byte $05   ; 
- D 1 - I - 0x006630 01:A620: FF        .byte off_A5BA_00 + $100 - @start   ; 
; 33 
- D 1 - I - 0x006631 01:A621: 01        .byte $01   ; 
- D 1 - I - 0x006632 01:A622: F7        .byte off_A5B2 + $100 - @start   ; 
; 34 
- D 1 - I - 0x006633 01:A623: 05        .byte $05   ; 
- D 1 - I - 0x006634 01:A624: FF        .byte off_A5BA_00 + $100 - @start   ; 
; 35 
- D 1 - I - 0x006635 01:A625: 01        .byte $01   ; 
- D 1 - I - 0x006636 01:A626: EF        .byte off_A5AA + $100 - @start   ; 
; 36 
- D 1 - I - 0x006637 01:A627: 06        .byte $06   ; 
- D 1 - I - 0x006638 01:A628: FF        .byte off_A5BA_00 + $100 - @start   ; 
; 37 
- D 1 - I - 0x006639 01:A629: 01        .byte $01   ; 
- D 1 - I - 0x00663A 01:A62A: F7        .byte off_A5B2 + $100 - @start   ; 
; 38 
- D 1 - I - 0x00663B 01:A62B: 06        .byte $06   ; 
- D 1 - I - 0x00663C 01:A62C: FF        .byte off_A5BA_00 + $100 - @start   ; 
; 39 
- D 1 - I - 0x00663D 01:A62D: 01        .byte $01   ; 
- D 1 - I - 0x00663E 01:A62E: EF        .byte off_A5AA + $100 - @start   ; 
; 3A 
- D 1 - I - 0x00663F 01:A62F: FF        .byte $FF   ; 
- D 1 - I - 0x006640 01:A630: FF        .byte off_A5BA_00 + $100 - @start   ; 



off_A631:
- D 1 - I - 0x006641 01:A631: 02        .byte $02   ; counter
- D 1 - I - 0x006642 01:A632: F8        .byte $F8, $F8, $FD, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x006646 01:A636: 00        .byte $00, $F8, $FD, $41   ; 



off_A63A:
- D 1 - I - 0x00664A 01:A63A: 02        .byte $02   ; counter
- D 1 - I - 0x00664B 01:A63B: F8        .byte $F8, $F8, $FF, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x00664F 01:A63F: 00        .byte $00, $F8, $FF, $41   ; 



_off007_10_A643_01:
@start:
; 00 
- D 1 - I - 0x006653 01:A643: 01        .byte $01   ; 
- D 1 - I - 0x006654 01:A644: EE        .byte off_A631 + $100 - @start   ; 
; 01 
- D 1 - I - 0x006655 01:A645: 01        .byte $01   ; 
- D 1 - I - 0x006656 01:A646: EE        .byte off_A631 + $100 - @start   ; 
; 02 
- D 1 - I - 0x006657 01:A647: FF        .byte $FF   ; 
- D 1 - I - 0x006658 01:A648: EE        .byte off_A631 + $100 - @start   ; 



_off007_10_A649_02:
@start:
; 00 
- D 1 - I - 0x006659 01:A649: 01        .byte $01   ; 
- D 1 - I - 0x00665A 01:A64A: F1        .byte off_A63A + $100 - @start   ; 
; 01 
- D 1 - I - 0x00665B 01:A64B: 01        .byte $01   ; 
- D 1 - I - 0x00665C 01:A64C: F1        .byte off_A63A + $100 - @start   ; 
; 02 
- D 1 - I - 0x00665D 01:A64D: FF        .byte $FF   ; 
- D 1 - I - 0x00665E 01:A64E: F1        .byte off_A63A + $100 - @start   ; 



off_A64F:
- D 1 - I - 0x00665F 01:A64F: 84        .byte $04 + $80   ; counter + compressed data flag
- D 1 - I - 0x006660 01:A650: 00        .byte $00   ; spr_A
- D 1 - I - 0x006661 01:A651: 00        .byte $00, $F8, $B1   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006664 01:A654: 08        .byte $08, $F8, $B3   ; 
- D 1 - I - 0x006667 01:A657: F0        .byte $F0, $F8, $AD   ; 
- D 1 - I - 0x00666A 01:A65A: F8        .byte $F8, $F8, $AF   ; 



_off007_28_A65D_01:
@start:
; 00 
- D 1 - I - 0x00666D 01:A65D: 06        .byte $06   ; 
- D 1 - I - 0x00666E 01:A65E: F2        .byte off_A64F + $100 - @start   ; 
; 01 
- D 1 - I - 0x00666F 01:A65F: 00        .byte $00   ; 
- D 1 - I - 0x006670 01:A660: F2        .byte off_A64F + $100 - @start   ; 



off_A661:
- D 1 - I - 0x006671 01:A661: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x006672 01:A662: 01        .byte $01   ; spr_A
- D 1 - I - 0x006673 01:A663: E2        .byte $E2, $FC, $ED   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006676 01:A666: EA        .byte $EA, $FC, $EF   ; 



off_A669:
- D 1 - I - 0x006679 01:A669: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x00667A 01:A66A: 01        .byte $01   ; spr_A
- D 1 - I - 0x00667B 01:A66B: E0        .byte $E0, $F8, $F5   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x00667E 01:A66E: E8        .byte $E8, $FC, $DF   ; 



off_A671:
- D 1 - I - 0x006681 01:A671: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x006682 01:A672: 01        .byte $01   ; spr_A
- D 1 - I - 0x006683 01:A673: E4        .byte $E4, $F0, $F7   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006686 01:A676: DE        .byte $DE, $F0, $F5   ; 



_off007_0B_A679_02:
@start:
; 00 
- D 1 - I - 0x006689 01:A679: 04        .byte $04   ; 
- D 1 - I - 0x00668A 01:A67A: E8        .byte off_A661 + $100 - @start   ; 
; 01 
- D 1 - I - 0x00668B 01:A67B: 06        .byte $06   ; 
- D 1 - I - 0x00668C 01:A67C: F0        .byte off_A669 + $100 - @start   ; 
; 02 
- D 1 - I - 0x00668D 01:A67D: 05        .byte $05   ; 
- D 1 - I - 0x00668E 01:A67E: F8        .byte off_A671 + $100 - @start   ; 
; 03 
- D 1 - I - 0x00668F 01:A67F: 06        .byte $06   ; 
- D 1 - I - 0x006690 01:A680: F0        .byte off_A669 + $100 - @start   ; 
; 04 
- D 1 - I - 0x006691 01:A681: FF        .byte $FF   ; 
- D 1 - I - 0x006692 01:A682: F0        .byte off_A669 + $100 - @start   ; 



off_A683:
- D 1 - I - 0x006693 01:A683: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x006694 01:A684: 01        .byte $01   ; spr_A
- D 1 - I - 0x006695 01:A685: F8        .byte $F8, $F8, $D9   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006698 01:A688: 00        .byte $00, $F8, $DB   ; 



off_A68B:
- D 1 - I - 0x00669B 01:A68B: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x00669C 01:A68C: 01        .byte $01   ; spr_A
- D 1 - I - 0x00669D 01:A68D: F8        .byte $F8, $F8, $BD   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0066A0 01:A690: 00        .byte $00, $F8, $BF   ; 



_off007_08_A693_01:
@start:
; 00 
- D 1 - I - 0x0066A3 01:A693: 08        .byte $08   ; 
- D 1 - I - 0x0066A4 01:A694: F0        .byte off_A683 + $100 - @start   ; 
; 01 
- D 1 - I - 0x0066A5 01:A695: 08        .byte $08   ; 
- D 1 - I - 0x0066A6 01:A696: F8        .byte off_A68B + $100 - @start   ; 
; 02 
- D 1 - I - 0x0066A7 01:A697: 00        .byte $00   ; 
- D 1 - I - 0x0066A8 01:A698: F0        .byte off_A683 + $100 - @start   ; 



off_A699:
- D 1 - I - 0x0066A9 01:A699: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x0066AA 01:A69A: 01        .byte $01   ; spr_A
- D 1 - I - 0x0066AB 01:A69B: F8        .byte $F8, $F8, $95   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0066AE 01:A69E: 00        .byte $00, $F8, $97   ; 



_off007_08_A6A1_02:
@start:
; 00 
- D 1 - I - 0x0066B1 01:A6A1: 08        .byte $08   ; 
- D 1 - I - 0x0066B2 01:A6A2: F8        .byte off_A699 + $100 - @start   ; 
; 01 
- D 1 - I - 0x0066B3 01:A6A3: 00        .byte $00   ; 
- D 1 - I - 0x0066B4 01:A6A4: F8        .byte off_A699 + $100 - @start   ; 



off_A6A5:
- D 1 - I - 0x0066B5 01:A6A5: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x0066B6 01:A6A6: 01        .byte $01   ; spr_A
- D 1 - I - 0x0066B7 01:A6A7: F8        .byte $F8, $F8, $D9   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0066BA 01:A6AA: 00        .byte $00, $F8, $DB   ; 



off_A6AD:
- D 1 - I - 0x0066BD 01:A6AD: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x0066BE 01:A6AE: 01        .byte $01   ; spr_A
- D 1 - I - 0x0066BF 01:A6AF: F8        .byte $F8, $F8, $BD   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0066C2 01:A6B2: 00        .byte $00, $F8, $BF   ; 



_off007_08_A6B5_03:
@start:
; 00 
- D 1 - I - 0x0066C5 01:A6B5: 06        .byte $06   ; 
- D 1 - I - 0x0066C6 01:A6B6: F0        .byte off_A6A5 + $100 - @start   ; 
; 01 
- D 1 - I - 0x0066C7 01:A6B7: 06        .byte $06   ; 
- D 1 - I - 0x0066C8 01:A6B8: F8        .byte off_A6AD + $100 - @start   ; 
; 02 
- D 1 - I - 0x0066C9 01:A6B9: 00        .byte $00   ; 
- D 1 - I - 0x0066CA 01:A6BA: F0        .byte off_A6A5 + $100 - @start   ; 



off_A6BB:
- D 1 - I - 0x0066CB 01:A6BB: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x0066CC 01:A6BC: 41        .byte $41   ; spr_A
- D 1 - I - 0x0066CD 01:A6BD: 00        .byte $00, $F8, $D9   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0066D0 01:A6C0: F8        .byte $F8, $F8, $DB   ; 



off_A6C3:
- D 1 - I - 0x0066D3 01:A6C3: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x0066D4 01:A6C4: C1        .byte $C1   ; spr_A
- D 1 - I - 0x0066D5 01:A6C5: 00        .byte $00, $F8, $D9   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0066D8 01:A6C8: F8        .byte $F8, $F8, $DB   ; 



off_A6CB:
- D 1 - I - 0x0066DB 01:A6CB: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x0066DC 01:A6CC: 01        .byte $01   ; spr_A
- D 1 - I - 0x0066DD 01:A6CD: F8        .byte $F8, $F8, $D9   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0066E0 01:A6D0: 00        .byte $00, $F8, $DB   ; 



off_A6D3:
- D 1 - I - 0x0066E3 01:A6D3: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x0066E4 01:A6D4: 81        .byte $81   ; spr_A
- D 1 - I - 0x0066E5 01:A6D5: F8        .byte $F8, $F8, $D9   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0066E8 01:A6D8: 00        .byte $00, $F8, $DB   ; 



_off007_08_A6DB_04:
@start:
; 00 
- D 1 - I - 0x0066EB 01:A6DB: 02        .byte $02   ; 
- D 1 - I - 0x0066EC 01:A6DC: E0        .byte off_A6BB + $100 - @start   ; 
; 01 
- D 1 - I - 0x0066ED 01:A6DD: 02        .byte $02   ; 
- D 1 - I - 0x0066EE 01:A6DE: E8        .byte off_A6C3 + $100 - @start   ; 
; 02 
- D 1 - I - 0x0066EF 01:A6DF: 02        .byte $02   ; 
- D 1 - I - 0x0066F0 01:A6E0: F0        .byte off_A6CB + $100 - @start   ; 
; 03 
- D 1 - I - 0x0066F1 01:A6E1: 02        .byte $02   ; 
- D 1 - I - 0x0066F2 01:A6E2: F8        .byte off_A6D3 + $100 - @start   ; 
; 04 
- D 1 - I - 0x0066F3 01:A6E3: 00        .byte $00   ; 
- D 1 - I - 0x0066F4 01:A6E4: E0        .byte off_A6BB + $100 - @start   ; 



off_A6E5:
- D 1 - I - 0x0066F5 01:A6E5: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x0066F6 01:A6E6: 01        .byte $01   ; spr_A
- D 1 - I - 0x0066F7 01:A6E7: F8        .byte $F8, $F8, $DD   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0066FA 01:A6EA: 00        .byte $00, $F8, $DF   ; 



off_A6ED_00:
- D 1 - I - 0x0066FD 01:A6ED: 00        .byte $00   ; counter



_off007_08_A6EE_05:
@start:
; 00 
- D 1 - I - 0x0066FE 01:A6EE: 01        .byte $01   ; 
- D 1 - I - 0x0066FF 01:A6EF: FF        .byte off_A6ED_00 + $100 - @start   ; 
; 01 
- D 1 - I - 0x006700 01:A6F0: 09        .byte $09   ; 
- D 1 - I - 0x006701 01:A6F1: FF        .byte off_A6ED_00 + $100 - @start   ; 
; 02 
- D 1 - I - 0x006702 01:A6F2: 08        .byte $08   ; 
- D 1 - I - 0x006703 01:A6F3: F7        .byte off_A6E5 + $100 - @start   ; 
; 03 
- D 1 - I - 0x006704 01:A6F4: FF        .byte $FF   ; 
- D 1 - I - 0x006705 01:A6F5: F7        .byte off_A6E5 + $100 - @start   ; 



off_A6F6:
- D 1 - I - 0x006706 01:A6F6: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x006707 01:A6F7: 00        .byte $00   ; spr_A
- D 1 - I - 0x006708 01:A6F8: F8        .byte $F8, $F8, $91   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x00670B 01:A6FB: 00        .byte $00, $F8, $93   ; 



_off007_08_A6FE_06:
@start:
; 00 
- D 1 - I - 0x00670E 01:A6FE: 08        .byte $08   ; 
- D 1 - I - 0x00670F 01:A6FF: F8        .byte off_A6F6 + $100 - @start   ; 
; 01 
- D 1 - I - 0x006710 01:A700: 00        .byte $00   ; 
- D 1 - I - 0x006711 01:A701: F8        .byte off_A6F6 + $100 - @start   ; 



off_A702:
- D 1 - I - 0x006712 01:A702: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x006713 01:A703: 01        .byte $01   ; spr_A
- D 1 - I - 0x006714 01:A704: 00        .byte $00, $F8, $B1   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006717 01:A707: F8        .byte $F8, $F8, $A1   ; 



_off007_08_A70A_07:
@start:
; 00 
- D 1 - I - 0x00671A 01:A70A: 08        .byte $08   ; 
- D 1 - I - 0x00671B 01:A70B: F8        .byte off_A702 + $100 - @start   ; 
; 01 
- D 1 - I - 0x00671C 01:A70C: 00        .byte $00   ; 
- D 1 - I - 0x00671D 01:A70D: F8        .byte off_A702 + $100 - @start   ; 



off_A70E:
- D 1 - I - 0x00671E 01:A70E: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x00671F 01:A70F: 01        .byte $01   ; spr_A
- D 1 - I - 0x006720 01:A710: F8        .byte $F8, $F8, $E5   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006723 01:A713: 00        .byte $00, $F8, $E7   ; 



_off007_08_A716_08:
@start:
; 00 
- D 1 - I - 0x006726 01:A716: 08        .byte $08   ; 
- D 1 - I - 0x006727 01:A717: F8        .byte off_A70E + $100 - @start   ; 
; 01 
- D 1 - I - 0x006728 01:A718: 00        .byte $00   ; 
- D 1 - I - 0x006729 01:A719: F8        .byte off_A70E + $100 - @start   ; 



off_A71A:
- D 1 - I - 0x00672A 01:A71A: 83        .byte $03 + $80   ; counter + compressed data flag
- D 1 - I - 0x00672B 01:A71B: 01        .byte $01   ; spr_A
- D 1 - I - 0x00672C 01:A71C: 04        .byte $04, $F8, $C5   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x00672F 01:A71F: F4        .byte $F4, $F8, $C1   ; 
- D 1 - I - 0x006732 01:A722: FC        .byte $FC, $F8, $C3   ; 



_off007_08_A725_09:
@start:
; 00 
- D 1 - I - 0x006735 01:A725: 08        .byte $08   ; 
- D 1 - I - 0x006736 01:A726: F5        .byte off_A71A + $100 - @start   ; 
; 01 
- D 1 - I - 0x006737 01:A727: 00        .byte $00   ; 
- D 1 - I - 0x006738 01:A728: F5        .byte off_A71A + $100 - @start   ; 



off_A729:
- D 1 - I - 0x006739 01:A729: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x00673A 01:A72A: 01        .byte $01   ; spr_A
- D 1 - I - 0x00673B 01:A72B: F8        .byte $F8, $F8, $E5   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x00673E 01:A72E: 00        .byte $00, $F8, $E7   ; 



_off007_08_A731_0A:
@start:
; 00 
- D 1 - I - 0x006741 01:A731: 0A        .byte $0A   ; 
- D 1 - I - 0x006742 01:A732: F8        .byte off_A729 + $100 - @start   ; 
; 01 
- D 1 - I - 0x006743 01:A733: 00        .byte $00   ; 
- D 1 - I - 0x006744 01:A734: F8        .byte off_A729 + $100 - @start   ; 



off_A735:
- D 1 - I - 0x006745 01:A735: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x006746 01:A736: 01        .byte $01   ; spr_A
- D 1 - I - 0x006747 01:A737: F8        .byte $F8, $F8, $B9   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x00674A 01:A73A: 00        .byte $00, $F8, $BB   ; 



_off007_08_A73D_0B:
_off007_08_A73D_0D:
@start:
; 00 
- D 1 - I - 0x00674D 01:A73D: 08        .byte $08   ; 
- D 1 - I - 0x00674E 01:A73E: F8        .byte off_A735 + $100 - @start   ; 
; 01 
- D 1 - I - 0x00674F 01:A73F: 00        .byte $00   ; 
- D 1 - I - 0x006750 01:A740: F8        .byte off_A735 + $100 - @start   ; 



off_A741:
- D 1 - I - 0x006751 01:A741: 08        .byte $08   ; counter
- D 1 - I - 0x006752 01:A742: F0        .byte $F0, $F0, $C1, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x006756 01:A746: F8        .byte $F8, $F0, $C3, $01   ; 
- D 1 - I - 0x00675A 01:A74A: F0        .byte $F0, $00, $C1, $81   ; 
- D 1 - I - 0x00675E 01:A74E: F8        .byte $F8, $00, $C3, $81   ; 
- D 1 - I - 0x006762 01:A752: 08        .byte $08, $00, $C1, $C1   ; 
- D 1 - I - 0x006766 01:A756: 00        .byte $00, $00, $C3, $C1   ; 
- D 1 - I - 0x00676A 01:A75A: 08        .byte $08, $F0, $C1, $41   ; 
- D 1 - I - 0x00676E 01:A75E: 00        .byte $00, $F0, $C3, $41   ; 



off_A762:
- D 1 - I - 0x006772 01:A762: 08        .byte $08   ; counter
- D 1 - I - 0x006773 01:A763: F0        .byte $F0, $00, $AD, $81   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x006777 01:A767: F8        .byte $F8, $00, $AF, $81   ; 
- D 1 - I - 0x00677B 01:A76B: 08        .byte $08, $00, $AD, $C1   ; 
- D 1 - I - 0x00677F 01:A76F: 00        .byte $00, $00, $AF, $C1   ; 
- D 1 - I - 0x006783 01:A773: 08        .byte $08, $F0, $AD, $41   ; 
- D 1 - I - 0x006787 01:A777: 00        .byte $00, $F0, $AF, $41   ; 
- D 1 - I - 0x00678B 01:A77B: F0        .byte $F0, $F0, $AD, $01   ; 
- D 1 - I - 0x00678F 01:A77F: F8        .byte $F8, $F0, $AF, $01   ; 



_off007_08_A783_0C:
_off007_16_A783_03:
@start:
; 00 
- D 1 - I - 0x006793 01:A783: 08        .byte $08   ; 
- D 1 - I - 0x006794 01:A784: BE        .byte off_A741 + $100 - @start   ; 
; 01 
- D 1 - I - 0x006795 01:A785: 08        .byte $08   ; 
- D 1 - I - 0x006796 01:A786: DF        .byte off_A762 + $100 - @start   ; 
; 02 
- D 1 - I - 0x006797 01:A787: 00        .byte $00   ; 
- D 1 - I - 0x006798 01:A788: BE        .byte off_A741 + $100 - @start   ; 



off_A789:
- D 1 - I - 0x006799 01:A789: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x00679A 01:A78A: 02        .byte $02   ; spr_A
- D 1 - I - 0x00679B 01:A78B: F8        .byte $F8, $F8, $C5   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x00679E 01:A78E: 00        .byte $00, $F8, $C7   ; 



off_A791:
- D 1 - I - 0x0067A1 01:A791: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x0067A2 01:A792: 01        .byte $01   ; spr_A
- D 1 - I - 0x0067A3 01:A793: F8        .byte $F8, $F8, $CD   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0067A6 01:A796: 00        .byte $00, $F8, $CF   ; 



off_A799:
- D 1 - I - 0x0067A9 01:A799: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x0067AA 01:A79A: 03        .byte $03   ; spr_A
- D 1 - I - 0x0067AB 01:A79B: F8        .byte $F8, $F8, $C9   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0067AE 01:A79E: 00        .byte $00, $F8, $CB   ; 



_off007_08_A7A1_0E:
@start:
; 00 
- D 1 - I - 0x0067B1 01:A7A1: 06        .byte $06   ; 
- D 1 - I - 0x0067B2 01:A7A2: E8        .byte off_A789 + $100 - @start   ; 
; 01 
- D 1 - I - 0x0067B3 01:A7A3: 06        .byte $06   ; 
- D 1 - I - 0x0067B4 01:A7A4: F0        .byte off_A791 + $100 - @start   ; 
; 02 
- D 1 - I - 0x0067B5 01:A7A5: 06        .byte $06   ; 
- D 1 - I - 0x0067B6 01:A7A6: F8        .byte off_A799 + $100 - @start   ; 
; 03 
- D 1 - I - 0x0067B7 01:A7A7: 00        .byte $00   ; 
- D 1 - I - 0x0067B8 01:A7A8: E8        .byte off_A789 + $100 - @start   ; 



off_A7A9:
- D 1 - I - 0x0067B9 01:A7A9: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x0067BA 01:A7AA: 00        .byte $00   ; spr_A
- D 1 - I - 0x0067BB 01:A7AB: F8        .byte $F8, $F8, $A1   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0067BE 01:A7AE: 00        .byte $00, $F8, $A3   ; 



off_A7B1:
- D 1 - I - 0x0067C1 01:A7B1: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x0067C2 01:A7B2: 00        .byte $00   ; spr_A
- D 1 - I - 0x0067C3 01:A7B3: F8        .byte $F8, $F8, $A5   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0067C6 01:A7B6: 00        .byte $00, $F8, $A7   ; 



off_A7B9:
- D 1 - I - 0x0067C9 01:A7B9: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x0067CA 01:A7BA: 00        .byte $00   ; spr_A
- D 1 - I - 0x0067CB 01:A7BB: F8        .byte $F8, $F8, $A9   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0067CE 01:A7BE: 00        .byte $00, $F8, $AB   ; 



_off007_11_A7C1_01:
_off007_11_A7C1_02:
@start:
; 00 
- D 1 - I - 0x0067D1 01:A7C1: 08        .byte $08   ; 
- D 1 - I - 0x0067D2 01:A7C2: E8        .byte off_A7A9 + $100 - @start   ; 
; 01 
- D 1 - I - 0x0067D3 01:A7C3: 06        .byte $06   ; 
- D 1 - I - 0x0067D4 01:A7C4: F0        .byte off_A7B1 + $100 - @start   ; 
; 02 
- D 1 - I - 0x0067D5 01:A7C5: 08        .byte $08   ; 
- D 1 - I - 0x0067D6 01:A7C6: F8        .byte off_A7B9 + $100 - @start   ; 
; 03 
- D 1 - I - 0x0067D7 01:A7C7: 06        .byte $06   ; 
- D 1 - I - 0x0067D8 01:A7C8: F0        .byte off_A7B1 + $100 - @start   ; 
; 04 
- D 1 - I - 0x0067D9 01:A7C9: 00        .byte $00   ; 
- D 1 - I - 0x0067DA 01:A7CA: E8        .byte off_A7A9 + $100 - @start   ; 



off_A7CB:
- D 1 - I - 0x0067DB 01:A7CB: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x0067DC 01:A7CC: 00        .byte $00   ; spr_A
- D 1 - I - 0x0067DD 01:A7CD: F8        .byte $F8, $F8, $B5   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0067E0 01:A7D0: 00        .byte $00, $F8, $B7   ; 



off_A7D3:
- D 1 - I - 0x0067E3 01:A7D3: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x0067E4 01:A7D4: 00        .byte $00   ; spr_A
- D 1 - I - 0x0067E5 01:A7D5: F8        .byte $F8, $F8, $B9   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0067E8 01:A7D8: 00        .byte $00, $F8, $BB   ; 



_off007_12_A7DB_01:
@start:
; 00 
- D 1 - I - 0x0067EB 01:A7DB: 08        .byte $08   ; 
- D 1 - I - 0x0067EC 01:A7DC: F0        .byte off_A7CB + $100 - @start   ; 
; 01 
- D 1 - I - 0x0067ED 01:A7DD: 08        .byte $08   ; 
- D 1 - I - 0x0067EE 01:A7DE: F8        .byte off_A7D3 + $100 - @start   ; 
; 02 
- D 1 - I - 0x0067EF 01:A7DF: 00        .byte $00   ; 
- D 1 - I - 0x0067F0 01:A7E0: F0        .byte off_A7CB + $100 - @start   ; 



off_A7E1:
- D 1 - I - 0x0067F1 01:A7E1: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x0067F2 01:A7E2: 00        .byte $00   ; spr_A
- D 1 - I - 0x0067F3 01:A7E3: F8        .byte $F8, $F8, $D1   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0067F6 01:A7E6: 00        .byte $00, $F8, $D3   ; 



off_A7E9:
- D 1 - I - 0x0067F9 01:A7E9: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x0067FA 01:A7EA: 00        .byte $00   ; spr_A
- D 1 - I - 0x0067FB 01:A7EB: F8        .byte $F8, $F8, $D5   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0067FE 01:A7EE: 00        .byte $00, $F8, $D7   ; 



_off007_13_A7F1_01:
@start:
; 00 
- D 1 - I - 0x006801 01:A7F1: 08        .byte $08   ; 
- D 1 - I - 0x006802 01:A7F2: F0        .byte off_A7E1 + $100 - @start   ; 
; 01 
- D 1 - I - 0x006803 01:A7F3: 08        .byte $08   ; 
- D 1 - I - 0x006804 01:A7F4: F8        .byte off_A7E9 + $100 - @start   ; 
; 02 
- D 1 - I - 0x006805 01:A7F5: 00        .byte $00   ; 
- D 1 - I - 0x006806 01:A7F6: F0        .byte off_A7E1 + $100 - @start   ; 



off_A7F7:
- D 1 - I - 0x006807 01:A7F7: 84        .byte $04 + $80   ; counter + compressed data flag
- D 1 - I - 0x006808 01:A7F8: 01        .byte $01   ; spr_A
- D 1 - I - 0x006809 01:A7F9: F8        .byte $F8, $00, $C5   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x00680C 01:A7FC: 00        .byte $00, $00, $C7   ; 
- D 1 - I - 0x00680F 01:A7FF: F8        .byte $F8, $F0, $C1   ; 
- D 1 - I - 0x006812 01:A802: 00        .byte $00, $F0, $C3   ; 



off_A805:
- D 1 - I - 0x006815 01:A805: 84        .byte $04 + $80   ; counter + compressed data flag
- D 1 - I - 0x006816 01:A806: 01        .byte $01   ; spr_A
- D 1 - I - 0x006817 01:A807: F8        .byte $F8, $00, $CD   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x00681A 01:A80A: 00        .byte $00, $00, $CF   ; 
- D 1 - I - 0x00681D 01:A80D: F8        .byte $F8, $F0, $C9   ; 
- D 1 - I - 0x006820 01:A810: 00        .byte $00, $F0, $CB   ; 



_off007_14_A813_01:
@start:
; 00 
- D 1 - I - 0x006823 01:A813: 18        .byte $18   ; 
- D 1 - I - 0x006824 01:A814: F2        .byte off_A805 + $100 - @start   ; 
; 01 
- D 1 - I - 0x006825 01:A815: 16        .byte $16   ; 
- D 1 - I - 0x006826 01:A816: E4        .byte off_A7F7 + $100 - @start   ; 
; 02 
- D 1 - I - 0x006827 01:A817: FF        .byte $FF   ; 
- D 1 - I - 0x006828 01:A818: E4        .byte off_A7F7 + $100 - @start   ; 



off_A819:
- D 1 - I - 0x006829 01:A819: 08        .byte $08   ; counter
- D 1 - I - 0x00682A 01:A81A: F0        .byte $F0, $00, $C1, $82   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x00682E 01:A81E: F8        .byte $F8, $00, $C3, $82   ; 
- D 1 - I - 0x006832 01:A822: 08        .byte $08, $00, $C1, $C2   ; 
- D 1 - I - 0x006836 01:A826: 00        .byte $00, $00, $C3, $C2   ; 
- D 1 - I - 0x00683A 01:A82A: 08        .byte $08, $F0, $C1, $42   ; 
- D 1 - I - 0x00683E 01:A82E: 00        .byte $00, $F0, $C3, $42   ; 
- D 1 - I - 0x006842 01:A832: F0        .byte $F0, $F0, $C1, $02   ; 
- D 1 - I - 0x006846 01:A836: F8        .byte $F8, $F0, $C3, $02   ; 



off_A83A:
- D 1 - I - 0x00684A 01:A83A: 08        .byte $08   ; counter
- D 1 - I - 0x00684B 01:A83B: F0        .byte $F0, $00, $C5, $82   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x00684F 01:A83F: F8        .byte $F8, $00, $C7, $82   ; 
- D 1 - I - 0x006853 01:A843: 08        .byte $08, $00, $C5, $C2   ; 
- D 1 - I - 0x006857 01:A847: 00        .byte $00, $00, $C7, $C2   ; 
- D 1 - I - 0x00685B 01:A84B: 08        .byte $08, $F0, $C5, $42   ; 
- D 1 - I - 0x00685F 01:A84F: 00        .byte $00, $F0, $C7, $42   ; 
- D 1 - I - 0x006863 01:A853: F0        .byte $F0, $F0, $C5, $02   ; 
- D 1 - I - 0x006867 01:A857: F8        .byte $F8, $F0, $C7, $02   ; 



off_A85B:
- D 1 - I - 0x00686B 01:A85B: 08        .byte $08   ; counter
- D 1 - I - 0x00686C 01:A85C: F0        .byte $F0, $00, $C9, $82   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x006870 01:A860: F8        .byte $F8, $00, $CB, $82   ; 
- D 1 - I - 0x006874 01:A864: 08        .byte $08, $00, $C9, $C2   ; 
- D 1 - I - 0x006878 01:A868: 00        .byte $00, $00, $CB, $C2   ; 
- D 1 - I - 0x00687C 01:A86C: 08        .byte $08, $F0, $C9, $42   ; 
- D 1 - I - 0x006880 01:A870: 00        .byte $00, $F0, $CB, $42   ; 
- D 1 - I - 0x006884 01:A874: F0        .byte $F0, $F0, $C9, $02   ; 
- D 1 - I - 0x006888 01:A878: F8        .byte $F8, $F0, $CB, $02   ; 



_off007_16_A87C_01:
@start:
; 00 
- D 1 - I - 0x00688C 01:A87C: 06        .byte $06   ; 
- D 1 - I - 0x00688D 01:A87D: 9D        .byte off_A819 + $100 - @start   ; 
; 01 
- D 1 - I - 0x00688E 01:A87E: 06        .byte $06   ; 
- D 1 - I - 0x00688F 01:A87F: BE        .byte off_A83A + $100 - @start   ; 
; 02 
- D 1 - I - 0x006890 01:A880: 06        .byte $06   ; 
- D 1 - I - 0x006891 01:A881: DF        .byte off_A85B + $100 - @start   ; 
; 03 
- D 1 - I - 0x006892 01:A882: 06        .byte $06   ; 
- D 1 - I - 0x006893 01:A883: BE        .byte off_A83A + $100 - @start   ; 
; 04 
- D 1 - I - 0x006894 01:A884: 00        .byte $00   ; 
- D 1 - I - 0x006895 01:A885: 9D        .byte off_A819 + $100 - @start   ; 



off_A886:
- D 1 - I - 0x006896 01:A886: 84        .byte $04 + $80   ; counter + compressed data flag
- D 1 - I - 0x006897 01:A887: 03        .byte $03   ; spr_A
- D 1 - I - 0x006898 01:A888: 00        .byte $00, $F8, $CD   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x00689B 01:A88B: 08        .byte $08, $F8, $CF   ; 
- D 1 - I - 0x00689E 01:A88E: F0        .byte $F0, $F8, $C9   ; 
- D 1 - I - 0x0068A1 01:A891: F8        .byte $F8, $F8, $CB   ; 



off_A894:
- D 1 - I - 0x0068A4 01:A894: 84        .byte $04 + $80   ; counter + compressed data flag
- D 1 - I - 0x0068A5 01:A895: 03        .byte $03   ; spr_A
- D 1 - I - 0x0068A6 01:A896: 00        .byte $00, $F8, $B9   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0068A9 01:A899: 08        .byte $08, $F8, $BB   ; 
- D 1 - I - 0x0068AC 01:A89C: F0        .byte $F0, $F8, $B5   ; 
- D 1 - I - 0x0068AF 01:A89F: F8        .byte $F8, $F8, $B7   ; 



_off007_1C_A8A2_01:
@start:
; 00 
- D 1 - I - 0x0068B2 01:A8A2: 0A        .byte $0A   ; 
- D 1 - I - 0x0068B3 01:A8A3: E4        .byte off_A886 + $100 - @start   ; 
; 01 
- D 1 - I - 0x0068B4 01:A8A4: 0A        .byte $0A   ; 
- D 1 - I - 0x0068B5 01:A8A5: F2        .byte off_A894 + $100 - @start   ; 
; 02 
- D 1 - I - 0x0068B6 01:A8A6: 00        .byte $00   ; 
- D 1 - I - 0x0068B7 01:A8A7: E4        .byte off_A886 + $100 - @start   ; 



off_A8A8:
- D 1 - I - 0x0068B8 01:A8A8: 84        .byte $04 + $80   ; counter + compressed data flag
- D 1 - I - 0x0068B9 01:A8A9: 01        .byte $01   ; spr_A
- D 1 - I - 0x0068BA 01:A8AA: 00        .byte $00, $F8, $9D   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0068BD 01:A8AD: 08        .byte $08, $F8, $9F   ; 
- D 1 - I - 0x0068C0 01:A8B0: F0        .byte $F0, $F8, $99   ; 
- D 1 - I - 0x0068C3 01:A8B3: F8        .byte $F8, $F8, $9B   ; 



off_A8B6:
- D 1 - I - 0x0068C6 01:A8B6: 84        .byte $04 + $80   ; counter + compressed data flag
- D 1 - I - 0x0068C7 01:A8B7: 01        .byte $01   ; spr_A
- D 1 - I - 0x0068C8 01:A8B8: 00        .byte $00, $F8, $95   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0068CB 01:A8BB: 08        .byte $08, $F8, $97   ; 
- D 1 - I - 0x0068CE 01:A8BE: F0        .byte $F0, $F8, $89   ; 
- D 1 - I - 0x0068D1 01:A8C1: F8        .byte $F8, $F8, $8B   ; 



_off007_1E_A8C4_01:
@start:
; 00 
- D 1 - I - 0x0068D4 01:A8C4: 07        .byte $07   ; 
- D 1 - I - 0x0068D5 01:A8C5: E4        .byte off_A8A8 + $100 - @start   ; 
; 01 
- D 1 - I - 0x0068D6 01:A8C6: 11        .byte $11   ; 
- D 1 - I - 0x0068D7 01:A8C7: F2        .byte off_A8B6 + $100 - @start   ; 
; 02 
- D 1 - I - 0x0068D8 01:A8C8: 07        .byte $07   ; 
- D 1 - I - 0x0068D9 01:A8C9: E4        .byte off_A8A8 + $100 - @start   ; 
; 03 
- D 1 - I - 0x0068DA 01:A8CA: FF        .byte $FF   ; 
- D 1 - I - 0x0068DB 01:A8CB: E4        .byte off_A8A8 + $100 - @start   ; 



off_A8CC:
- D 1 - I - 0x0068DC 01:A8CC: 84        .byte $04 + $80   ; counter + compressed data flag
- D 1 - I - 0x0068DD 01:A8CD: 01        .byte $01   ; spr_A
- D 1 - I - 0x0068DE 01:A8CE: 00        .byte $00, $F8, $9D   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0068E1 01:A8D1: 08        .byte $08, $F8, $9F   ; 
- D 1 - I - 0x0068E4 01:A8D4: F0        .byte $F0, $F8, $99   ; 
- D 1 - I - 0x0068E7 01:A8D7: F8        .byte $F8, $F8, $9B   ; 



off_A8DA:
- D 1 - I - 0x0068EA 01:A8DA: 84        .byte $04 + $80   ; counter + compressed data flag
- D 1 - I - 0x0068EB 01:A8DB: 01        .byte $01   ; spr_A
- D 1 - I - 0x0068EC 01:A8DC: 00        .byte $00, $F8, $95   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0068EF 01:A8DF: 08        .byte $08, $F8, $97   ; 
- D 1 - I - 0x0068F2 01:A8E2: F0        .byte $F0, $F8, $89   ; 
- D 1 - I - 0x0068F5 01:A8E5: F8        .byte $F8, $F8, $8B   ; 



off_A8E8:
- D 1 - I - 0x0068F8 01:A8E8: 84        .byte $04 + $80   ; counter + compressed data flag
- D 1 - I - 0x0068F9 01:A8E9: 01        .byte $01   ; spr_A
- D 1 - I - 0x0068FA 01:A8EA: 00        .byte $00, $F8, $85   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0068FD 01:A8ED: 08        .byte $08, $F8, $87   ; 
- D 1 - I - 0x006900 01:A8F0: F0        .byte $F0, $F8, $81   ; 
- D 1 - I - 0x006903 01:A8F3: F8        .byte $F8, $F8, $83   ; 



_off007_1E_A8F6_03:
@start:
; 00 
- D 1 - I - 0x006906 01:A8F6: 07        .byte $07   ; 
- D 1 - I - 0x006907 01:A8F7: D6        .byte off_A8CC + $100 - @start   ; 
; 01 
- D 1 - I - 0x006908 01:A8F8: 0E        .byte $0E   ; 
- D 1 - I - 0x006909 01:A8F9: E4        .byte off_A8DA + $100 - @start   ; 
; 02 
- D 1 - I - 0x00690A 01:A8FA: 0F        .byte $0F   ; 
- D 1 - I - 0x00690B 01:A8FB: F2        .byte off_A8E8 + $100 - @start   ; 
; 03 
- D 1 - I - 0x00690C 01:A8FC: 01        .byte $01   ; 
- D 1 - I - 0x00690D 01:A8FD: F2        .byte off_A8E8 + $100 - @start   ; 
; 04 
- D 1 - I - 0x00690E 01:A8FE: 01        .byte $01   ; 
- D 1 - I - 0x00690F 01:A8FF: F2        .byte off_A8E8 + $100 - @start   ; 
; 05 
- D 1 - I - 0x006910 01:A900: 0F        .byte $0F   ; 
- D 1 - I - 0x006911 01:A901: E4        .byte off_A8DA + $100 - @start   ; 
; 06 
- D 1 - I - 0x006912 01:A902: 05        .byte $05   ; 
- D 1 - I - 0x006913 01:A903: D6        .byte off_A8CC + $100 - @start   ; 
; 07 
- D 1 - I - 0x006914 01:A904: FF        .byte $FF   ; 
- D 1 - I - 0x006915 01:A905: D6        .byte off_A8CC + $100 - @start   ; 



off_A906:
- D 1 - I - 0x006916 01:A906: 08        .byte $08   ; counter
- D 1 - I - 0x006917 01:A907: 08        .byte $08, $F0, $95, $41   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x00691B 01:A90B: 00        .byte $00, $F0, $97, $41   ; 
- D 1 - I - 0x00691F 01:A90F: F0        .byte $F0, $F0, $95, $01   ; 
- D 1 - I - 0x006923 01:A913: F8        .byte $F8, $F0, $97, $01   ; 
- D 1 - I - 0x006927 01:A917: F0        .byte $F0, $00, $95, $81   ; 
- D 1 - I - 0x00692B 01:A91B: F8        .byte $F8, $00, $97, $81   ; 
- D 1 - I - 0x00692F 01:A91F: 08        .byte $08, $00, $95, $C1   ; 
- D 1 - I - 0x006933 01:A923: 00        .byte $00, $00, $97, $C1   ; 



off_A927:
- D 1 - I - 0x006937 01:A927: 08        .byte $08   ; counter
- D 1 - I - 0x006938 01:A928: F0        .byte $F0, $00, $99, $81   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x00693C 01:A92C: F8        .byte $F8, $00, $9B, $81   ; 
- D 1 - I - 0x006940 01:A930: 08        .byte $08, $00, $99, $C1   ; 
- D 1 - I - 0x006944 01:A934: 00        .byte $00, $00, $9B, $C1   ; 
- D 1 - I - 0x006948 01:A938: 08        .byte $08, $F0, $99, $41   ; 
- D 1 - I - 0x00694C 01:A93C: 00        .byte $00, $F0, $9B, $41   ; 
- D 1 - I - 0x006950 01:A940: F0        .byte $F0, $F0, $99, $01   ; 
- D 1 - I - 0x006954 01:A944: F8        .byte $F8, $F0, $9B, $01   ; 



off_A948:
- D 1 - I - 0x006958 01:A948: 08        .byte $08   ; counter
- D 1 - I - 0x006959 01:A949: F0        .byte $F0, $00, $9D, $81   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x00695D 01:A94D: F8        .byte $F8, $00, $9F, $81   ; 
- D 1 - I - 0x006961 01:A951: 08        .byte $08, $00, $9D, $C1   ; 
- D 1 - I - 0x006965 01:A955: 00        .byte $00, $00, $9F, $C1   ; 
- D 1 - I - 0x006969 01:A959: 08        .byte $08, $F0, $9D, $41   ; 
- D 1 - I - 0x00696D 01:A95D: 00        .byte $00, $F0, $9F, $41   ; 
- D 1 - I - 0x006971 01:A961: F0        .byte $F0, $F0, $9D, $01   ; 
- D 1 - I - 0x006975 01:A965: F8        .byte $F8, $F0, $9F, $01   ; 



_off007_2A_A969_01:
@start:
; 00 
- D 1 - I - 0x006979 01:A969: 0A        .byte $0A   ; 
- D 1 - I - 0x00697A 01:A96A: 9D        .byte off_A906 + $100 - @start   ; 
; 01 
- D 1 - I - 0x00697B 01:A96B: 0A        .byte $0A   ; 
- D 1 - I - 0x00697C 01:A96C: BE        .byte off_A927 + $100 - @start   ; 
; 02 
- D 1 - I - 0x00697D 01:A96D: 0A        .byte $0A   ; 
- D 1 - I - 0x00697E 01:A96E: DF        .byte off_A948 + $100 - @start   ; 
; 03 
- D 1 - I - 0x00697F 01:A96F: 0A        .byte $0A   ; 
- D 1 - I - 0x006980 01:A970: BE        .byte off_A927 + $100 - @start   ; 
; 04 
- D 1 - I - 0x006981 01:A971: 00        .byte $00   ; 
- D 1 - I - 0x006982 01:A972: 9D        .byte off_A906 + $100 - @start   ; 



off_A973:
- D 1 - I - 0x006983 01:A973: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x006984 01:A974: 01        .byte $01   ; spr_A
- D 1 - I - 0x006985 01:A975: F8        .byte $F8, $F8, $81   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006988 01:A978: 00        .byte $00, $F8, $83   ; 



off_A97B:
- D 1 - I - 0x00698B 01:A97B: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x00698C 01:A97C: 01        .byte $01   ; spr_A
- D 1 - I - 0x00698D 01:A97D: F8        .byte $F8, $F8, $85   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006990 01:A980: 00        .byte $00, $F8, $87   ; 



off_A983:
- D 1 - I - 0x006993 01:A983: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x006994 01:A984: 01        .byte $01   ; spr_A
- D 1 - I - 0x006995 01:A985: F8        .byte $F8, $F8, $89   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006998 01:A988: 00        .byte $00, $F8, $8B   ; 



_off007_1F_A98B_01:
_off007_1F_A98B_02:
_off007_1F_A98B_03:
@start:
; 00 
- D 1 - I - 0x00699B 01:A98B: 08        .byte $08   ; 
- D 1 - I - 0x00699C 01:A98C: E8        .byte off_A973 + $100 - @start   ; 
; 01 
- D 1 - I - 0x00699D 01:A98D: 06        .byte $06   ; 
- D 1 - I - 0x00699E 01:A98E: F8        .byte off_A983 + $100 - @start   ; 
; 02 
- D 1 - I - 0x00699F 01:A98F: 08        .byte $08   ; 
- D 1 - I - 0x0069A0 01:A990: F0        .byte off_A97B + $100 - @start   ; 
; 03 
- D 1 - I - 0x0069A1 01:A991: 06        .byte $06   ; 
- D 1 - I - 0x0069A2 01:A992: F8        .byte off_A983 + $100 - @start   ; 
; 04 
- D 1 - I - 0x0069A3 01:A993: 00        .byte $00   ; 
- D 1 - I - 0x0069A4 01:A994: E8        .byte off_A973 + $100 - @start   ; 



off_A995:
- D 1 - I - 0x0069A5 01:A995: 83        .byte $03 + $80   ; counter + compressed data flag
- D 1 - I - 0x0069A6 01:A996: 01        .byte $01   ; spr_A
- D 1 - I - 0x0069A7 01:A997: 04        .byte $04, $F8, $CD   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0069AA 01:A99A: F4        .byte $F4, $F8, $C9   ; 
- D 1 - I - 0x0069AD 01:A99D: FC        .byte $FC, $F8, $CB   ; 



off_A9A0:
- D 1 - I - 0x0069B0 01:A9A0: 83        .byte $03 + $80   ; counter + compressed data flag
- D 1 - I - 0x0069B1 01:A9A1: 01        .byte $01   ; spr_A
- D 1 - I - 0x0069B2 01:A9A2: F4        .byte $F4, $F8, $CF   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0069B5 01:A9A5: FC        .byte $FC, $F8, $BD   ; 
- D 1 - I - 0x0069B8 01:A9A8: 04        .byte $04, $F8, $BF   ; 



_off007_21_A9AB_01:
@start:
; 00 
- D 1 - I - 0x0069BB 01:A9AB: 08        .byte $08   ; 
- D 1 - I - 0x0069BC 01:A9AC: EA        .byte off_A995 + $100 - @start   ; 
; 01 
- D 1 - I - 0x0069BD 01:A9AD: 08        .byte $08   ; 
- D 1 - I - 0x0069BE 01:A9AE: F5        .byte off_A9A0 + $100 - @start   ; 
; 02 
- D 1 - I - 0x0069BF 01:A9AF: 00        .byte $00   ; 
- D 1 - I - 0x0069C0 01:A9B0: EA        .byte off_A995 + $100 - @start   ; 



off_A9B1:
- D 1 - I - 0x0069C1 01:A9B1: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x0069C2 01:A9B2: 01        .byte $01   ; spr_A
- D 1 - I - 0x0069C3 01:A9B3: F8        .byte $F8, $F8, $C1   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0069C6 01:A9B6: 00        .byte $00, $F8, $C3   ; 



off_A9B9:
- D 1 - I - 0x0069C9 01:A9B9: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x0069CA 01:A9BA: 03        .byte $03   ; spr_A
- D 1 - I - 0x0069CB 01:A9BB: F8        .byte $F8, $F8, $C5   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0069CE 01:A9BE: 00        .byte $00, $F8, $C7   ; 



_off007_1D_A9C1_01:
@start:
; 00 
- D 1 - I - 0x0069D1 01:A9C1: 08        .byte $08   ; 
- D 1 - I - 0x0069D2 01:A9C2: F0        .byte off_A9B1 + $100 - @start   ; 
; 01 
- D 1 - I - 0x0069D3 01:A9C3: 08        .byte $08   ; 
- D 1 - I - 0x0069D4 01:A9C4: F8        .byte off_A9B9 + $100 - @start   ; 
; 02 
- D 1 - I - 0x0069D5 01:A9C5: 00        .byte $00   ; 
- D 1 - I - 0x0069D6 01:A9C6: F0        .byte off_A9B1 + $100 - @start   ; 



off_A9C7:
- D 1 - I - 0x0069D7 01:A9C7: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x0069D8 01:A9C8: 00        .byte $00   ; spr_A
- D 1 - I - 0x0069D9 01:A9C9: F8        .byte $F8, $F8, $8D   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0069DC 01:A9CC: 00        .byte $00, $F8, $8F   ; 



off_A9CF:
- D 1 - I - 0x0069DF 01:A9CF: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x0069E0 01:A9D0: 00        .byte $00   ; spr_A
- D 1 - I - 0x0069E1 01:A9D1: F8        .byte $F8, $F8, $91   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0069E4 01:A9D4: 00        .byte $00, $F8, $93   ; 



_off007_18_A9D7_01:
@start:
; 00 
- D 1 - I - 0x0069E7 01:A9D7: 08        .byte $08   ; 
- D 1 - I - 0x0069E8 01:A9D8: F0        .byte off_A9C7 + $100 - @start   ; 
; 01 
- D 1 - I - 0x0069E9 01:A9D9: 08        .byte $08   ; 
- D 1 - I - 0x0069EA 01:A9DA: F8        .byte off_A9CF + $100 - @start   ; 
; 02 
- D 1 - I - 0x0069EB 01:A9DB: 00        .byte $00   ; 
- D 1 - I - 0x0069EC 01:A9DC: F0        .byte off_A9C7 + $100 - @start   ; 



off_A9DD:
- D 1 - I - 0x0069ED 01:A9DD: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x0069EE 01:A9DE: 03        .byte $03   ; spr_A
- D 1 - I - 0x0069EF 01:A9DF: F8        .byte $F8, $F8, $89   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0069F2 01:A9E2: 00        .byte $00, $F8, $8B   ; 



off_A9E5:
- D 1 - I - 0x0069F5 01:A9E5: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x0069F6 01:A9E6: 03        .byte $03   ; spr_A
- D 1 - I - 0x0069F7 01:A9E7: F7        .byte $F7, $F8, $8D   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0069FA 01:A9EA: FF        .byte $FF, $F8, $8F   ; 



off_A9ED:
- D 1 - I - 0x0069FD 01:A9ED: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x0069FE 01:A9EE: 03        .byte $03   ; spr_A
- D 1 - I - 0x0069FF 01:A9EF: F8        .byte $F8, $F9, $91   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006A02 01:A9F2: 00        .byte $00, $F9, $93   ; 



_off007_19_A9F5_01:
@start:
; 00 
- D 1 - I - 0x006A05 01:A9F5: 0A        .byte $0A   ; 
- D 1 - I - 0x006A06 01:A9F6: E8        .byte off_A9DD + $100 - @start   ; 
; 01 
- D 1 - I - 0x006A07 01:A9F7: 0A        .byte $0A   ; 
- D 1 - I - 0x006A08 01:A9F8: F0        .byte off_A9E5 + $100 - @start   ; 
; 02 
- D 1 - I - 0x006A09 01:A9F9: 0A        .byte $0A   ; 
- D 1 - I - 0x006A0A 01:A9FA: F8        .byte off_A9ED + $100 - @start   ; 
; 03 
- D 1 - I - 0x006A0B 01:A9FB: 00        .byte $00   ; 
- D 1 - I - 0x006A0C 01:A9FC: E8        .byte off_A9DD + $100 - @start   ; 



off_A9FD:
- D 1 - I - 0x006A0D 01:A9FD: 86        .byte $06 + $80   ; counter + compressed data flag
- D 1 - I - 0x006A0E 01:A9FE: 03        .byte $03   ; spr_A
- D 1 - I - 0x006A0F 01:A9FF: 05        .byte $05, $04, $C5   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006A12 01:AA02: FD        .byte $FD, $04, $C3   ; 
- D 1 - I - 0x006A15 01:AA05: F5        .byte $F5, $04, $C1   ; 
- D 1 - I - 0x006A18 01:AA08: 05        .byte $05, $F4, $A5   ; 
- D 1 - I - 0x006A1B 01:AA0B: F5        .byte $F5, $F4, $A1   ; 
- D 1 - I - 0x006A1E 01:AA0E: FD        .byte $FD, $F4, $A3   ; 



off_AA11:
- D 1 - I - 0x006A21 01:AA11: 86        .byte $06 + $80   ; counter + compressed data flag
- D 1 - I - 0x006A22 01:AA12: 03        .byte $03   ; spr_A
- D 1 - I - 0x006A23 01:AA13: 04        .byte $04, $04, $CB   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006A26 01:AA16: FC        .byte $FC, $04, $C9   ; 
- D 1 - I - 0x006A29 01:AA19: F4        .byte $F4, $04, $C7   ; 
- D 1 - I - 0x006A2C 01:AA1C: F4        .byte $F4, $F4, $A7   ; 
- D 1 - I - 0x006A2F 01:AA1F: FC        .byte $FC, $F4, $A9   ; 
- D 1 - I - 0x006A32 01:AA22: 04        .byte $04, $F4, $AB   ; 



off_AA25:
- D 1 - I - 0x006A35 01:AA25: 86        .byte $06 + $80   ; counter + compressed data flag
- D 1 - I - 0x006A36 01:AA26: 03        .byte $03   ; spr_A
- D 1 - I - 0x006A37 01:AA27: 04        .byte $04, $04, $D1   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006A3A 01:AA2A: FC        .byte $FC, $04, $CF   ; 
- D 1 - I - 0x006A3D 01:AA2D: F4        .byte $F4, $04, $CD   ; 
- D 1 - I - 0x006A40 01:AA30: 04        .byte $04, $F4, $B1   ; 
- D 1 - I - 0x006A43 01:AA33: F4        .byte $F4, $F4, $AD   ; 
- D 1 - I - 0x006A46 01:AA36: FC        .byte $FC, $F4, $AF   ; 



_off007_1A_AA39_01:
@start:
; 00 
- D 1 - I - 0x006A49 01:AA39: 0C        .byte $0C   ; 
- D 1 - I - 0x006A4A 01:AA3A: C4        .byte off_A9FD + $100 - @start   ; 
; 01 
- D 1 - I - 0x006A4B 01:AA3B: 0C        .byte $0C   ; 
- D 1 - I - 0x006A4C 01:AA3C: D8        .byte off_AA11 + $100 - @start   ; 
; 02 
- D 1 - I - 0x006A4D 01:AA3D: 0C        .byte $0C   ; 
- D 1 - I - 0x006A4E 01:AA3E: EC        .byte off_AA25 + $100 - @start   ; 
; 03 
- D 1 - I - 0x006A4F 01:AA3F: 00        .byte $00   ; 
- D 1 - I - 0x006A50 01:AA40: C4        .byte off_A9FD + $100 - @start   ; 



off_AA41:
- D 1 - I - 0x006A51 01:AA41: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x006A52 01:AA42: 03        .byte $03   ; spr_A
- D 1 - I - 0x006A53 01:AA43: F8        .byte $F8, $F8, $95   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006A56 01:AA46: 00        .byte $00, $F8, $97   ; 



off_AA49:
- D 1 - I - 0x006A59 01:AA49: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x006A5A 01:AA4A: 03        .byte $03   ; spr_A
- D 1 - I - 0x006A5B 01:AA4B: F8        .byte $F8, $F8, $99   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006A5E 01:AA4E: 00        .byte $00, $F8, $9B   ; 



off_AA51:
- D 1 - I - 0x006A61 01:AA51: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x006A62 01:AA52: 03        .byte $03   ; spr_A
- D 1 - I - 0x006A63 01:AA53: F8        .byte $F8, $F8, $9D   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006A66 01:AA56: 00        .byte $00, $F8, $9F   ; 



_off007_19_AA59_02:
_off007_1A_AA59_02:
@start:
; 00 
- D 1 - I - 0x006A69 01:AA59: 05        .byte $05   ; 
- D 1 - I - 0x006A6A 01:AA5A: E8        .byte off_AA41 + $100 - @start   ; 
; 01 
- D 1 - I - 0x006A6B 01:AA5B: 06        .byte $06   ; 
- D 1 - I - 0x006A6C 01:AA5C: F0        .byte off_AA49 + $100 - @start   ; 
; 02 
- D 1 - I - 0x006A6D 01:AA5D: 08        .byte $08   ; 
- D 1 - I - 0x006A6E 01:AA5E: F8        .byte off_AA51 + $100 - @start   ; 
; 03 
- D 1 - I - 0x006A6F 01:AA5F: FF        .byte $FF   ; 
- D 1 - I - 0x006A70 01:AA60: F8        .byte off_AA51 + $100 - @start   ; 



off_AA61:
- D 1 - I - 0x006A71 01:AA61: 86        .byte $06 + $80   ; counter + compressed data flag
- D 1 - I - 0x006A72 01:AA62: 02        .byte $02   ; spr_A
- D 1 - I - 0x006A73 01:AA63: F4        .byte $F4, $F0, $B3   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006A76 01:AA66: F4        .byte $F4, $00, $D3   ; 
- D 1 - I - 0x006A79 01:AA69: FC        .byte $FC, $00, $D5   ; 
- D 1 - I - 0x006A7C 01:AA6C: 04        .byte $04, $00, $D7   ; 
- D 1 - I - 0x006A7F 01:AA6F: FC        .byte $FC, $F0, $B5   ; 
- D 1 - I - 0x006A82 01:AA72: 04        .byte $04, $F0, $B7   ; 



off_AA75:
- D 1 - I - 0x006A85 01:AA75: 86        .byte $06 + $80   ; counter + compressed data flag
- D 1 - I - 0x006A86 01:AA76: 02        .byte $02   ; spr_A
- D 1 - I - 0x006A87 01:AA77: FC        .byte $FC, $00, $85   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006A8A 01:AA7A: 04        .byte $04, $00, $87   ; 
- D 1 - I - 0x006A8D 01:AA7D: F4        .byte $F4, $00, $83   ; 
- D 1 - I - 0x006A90 01:AA80: 04        .byte $04, $F0, $81   ; 
- D 1 - I - 0x006A93 01:AA83: F4        .byte $F4, $F0, $B9   ; 
- D 1 - I - 0x006A96 01:AA86: FC        .byte $FC, $F0, $BB   ; 



_off007_20_AA89_01:
@start:
; 00 
- D 1 - I - 0x006A99 01:AA89: 08        .byte $08   ; 
- D 1 - I - 0x006A9A 01:AA8A: D8        .byte off_AA61 + $100 - @start   ; 
; 01 
- D 1 - I - 0x006A9B 01:AA8B: 08        .byte $08   ; 
- D 1 - I - 0x006A9C 01:AA8C: EC        .byte off_AA75 + $100 - @start   ; 
; 02 
- D 1 - I - 0x006A9D 01:AA8D: 00        .byte $00   ; 
- D 1 - I - 0x006A9E 01:AA8E: D8        .byte off_AA61 + $100 - @start   ; 



off_AA8F:
- - - - - - 0x006A9F 01:AA8F: 82        .byte $02 + $80   ; counter + compressed data flag
- - - - - - 0x006AA0 01:AA90: 00        .byte $00   ; spr_A
- - - - - - 0x006AA1 01:AA91: F8        .byte $F8, $F8, $C1   ; spr_X, spr_Y, spr_T
- - - - - - 0x006AA4 01:AA94: 00        .byte $00, $F8, $C3   ; 



off_AA97:
- - - - - - 0x006AA7 01:AA97: 82        .byte $02 + $80   ; counter + compressed data flag
- - - - - - 0x006AA8 01:AA98: 00        .byte $00   ; spr_A
- - - - - - 0x006AA9 01:AA99: F8        .byte $F8, $F8, $C5   ; spr_X, spr_Y, spr_T
- - - - - - 0x006AAC 01:AA9C: 00        .byte $00, $F8, $C7   ; 
- - - - - - 0x006AAF 01:AA9F: 0A        .byte $0A   ; 
- - - - - - 0x006AB0 01:AAA0: F0        .byte $F0   ; 
- - - - - - 0x006AB1 01:AAA1: 0A        .byte $0A   ; 
- - - - - - 0x006AB2 01:AAA2: F8        .byte $F8   ; 
- - - - - - 0x006AB3 01:AAA3: 00        .byte $00   ; 
- - - - - - 0x006AB4 01:AAA4: F0        .byte $F0   ; 



off_AAA5:
- D 1 - I - 0x006AB5 01:AAA5: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x006AB6 01:AAA6: 01        .byte $01   ; spr_A
- D 1 - I - 0x006AB7 01:AAA7: F8        .byte $F8, $F8, $99   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006ABA 01:AAAA: 00        .byte $00, $F8, $9B   ; 



_off007_2C_AAAD_01:
@start:
; 00 
- D 1 - I - 0x006ABD 01:AAAD: 08        .byte $08   ; 
- D 1 - I - 0x006ABE 01:AAAE: F8        .byte off_AAA5 + $100 - @start   ; 
; 01 
- D 1 - I - 0x006ABF 01:AAAF: 00        .byte $00   ; 
- D 1 - I - 0x006AC0 01:AAB0: F8        .byte off_AAA5 + $100 - @start   ; 



off_AAB1:
- D 1 - I - 0x006AC1 01:AAB1: 84        .byte $04 + $80   ; counter + compressed data flag
- D 1 - I - 0x006AC2 01:AAB2: 01        .byte $01   ; spr_A
- D 1 - I - 0x006AC3 01:AAB3: F0        .byte $F0, $F0, $ED   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006AC6 01:AAB6: F8        .byte $F8, $F0, $EF   ; 
- D 1 - I - 0x006AC9 01:AAB9: F8        .byte $F8, $F8, $99   ; 
- D 1 - I - 0x006ACC 01:AABC: 00        .byte $00, $F8, $9B   ; 



off_AABF:
- D 1 - I - 0x006ACF 01:AABF: 84        .byte $04 + $80   ; counter + compressed data flag
- D 1 - I - 0x006AD0 01:AAC0: 01        .byte $01   ; spr_A
- D 1 - I - 0x006AD1 01:AAC1: F0        .byte $F0, $F0, $F1   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006AD4 01:AAC4: F8        .byte $F8, $F0, $F3   ; 
- D 1 - I - 0x006AD7 01:AAC7: F9        .byte $F9, $F8, $99   ; 
- D 1 - I - 0x006ADA 01:AACA: 01        .byte $01, $F8, $9B   ; 



off_AACD:
- D 1 - I - 0x006ADD 01:AACD: 84        .byte $04 + $80   ; counter + compressed data flag
- D 1 - I - 0x006ADE 01:AACE: 01        .byte $01   ; spr_A
- D 1 - I - 0x006ADF 01:AACF: F0        .byte $F0, $F0, $F5   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006AE2 01:AAD2: F8        .byte $F8, $F0, $F7   ; 
- D 1 - I - 0x006AE5 01:AAD5: F8        .byte $F8, $F8, $99   ; 
- D 1 - I - 0x006AE8 01:AAD8: 00        .byte $00, $F8, $9B   ; 



off_AADB:
- D 1 - I - 0x006AEB 01:AADB: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x006AEC 01:AADC: 01        .byte $01   ; spr_A
- D 1 - I - 0x006AED 01:AADD: F8        .byte $F8, $F8, $99   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006AF0 01:AAE0: 00        .byte $00, $F8, $9B   ; 



_off007_2C_AAE3_03:
@start:
; 00 
- D 1 - I - 0x006AF3 01:AAE3: 08        .byte $08   ; 
- D 1 - I - 0x006AF4 01:AAE4: CE        .byte off_AAB1 + $100 - @start   ; 
; 01 
- D 1 - I - 0x006AF5 01:AAE5: 08        .byte $08   ; 
- D 1 - I - 0x006AF6 01:AAE6: DC        .byte off_AABF + $100 - @start   ; 
; 02 
- D 1 - I - 0x006AF7 01:AAE7: 08        .byte $08   ; 
- D 1 - I - 0x006AF8 01:AAE8: EA        .byte off_AACD + $100 - @start   ; 
; 03 
- D 1 - I - 0x006AF9 01:AAE9: FF        .byte $FF   ; 
- D 1 - I - 0x006AFA 01:AAEA: F8        .byte off_AADB + $100 - @start   ; 



off_AAEB:
- D 1 - I - 0x006AFB 01:AAEB: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x006AFC 01:AAEC: 01        .byte $01   ; spr_A
- D 1 - I - 0x006AFD 01:AAED: F8        .byte $F8, $F8, $9D   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006B00 01:AAF0: 00        .byte $00, $F8, $9F   ; 



_off007_2E_AAF3_01:
@start:
; 00 
- D 1 - I - 0x006B03 01:AAF3: 08        .byte $08   ; 
- D 1 - I - 0x006B04 01:AAF4: F8        .byte off_AAEB + $100 - @start   ; 
; 01 
- D 1 - I - 0x006B05 01:AAF5: 00        .byte $00   ; 
- D 1 - I - 0x006B06 01:AAF6: F8        .byte off_AAEB + $100 - @start   ; 



off_AAF7:
- D 1 - I - 0x006B07 01:AAF7: 84        .byte $04 + $80   ; counter + compressed data flag
- D 1 - I - 0x006B08 01:AAF8: 01        .byte $01   ; spr_A
- D 1 - I - 0x006B09 01:AAF9: EC        .byte $EC, $F4, $ED   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006B0C 01:AAFC: F4        .byte $F4, $F4, $EF   ; 
- D 1 - I - 0x006B0F 01:AAFF: F8        .byte $F8, $F8, $9D   ; 
- D 1 - I - 0x006B12 01:AB02: 00        .byte $00, $F8, $9F   ; 



off_AB05:
- D 1 - I - 0x006B15 01:AB05: 84        .byte $04 + $80   ; counter + compressed data flag
- D 1 - I - 0x006B16 01:AB06: 01        .byte $01   ; spr_A
- D 1 - I - 0x006B17 01:AB07: EC        .byte $EC, $F4, $F1   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006B1A 01:AB0A: F4        .byte $F4, $F4, $F3   ; 
- D 1 - I - 0x006B1D 01:AB0D: F9        .byte $F9, $F8, $9D   ; 
- D 1 - I - 0x006B20 01:AB10: 01        .byte $01, $F8, $9F   ; 



off_AB13:
- D 1 - I - 0x006B23 01:AB13: 84        .byte $04 + $80   ; counter + compressed data flag
- D 1 - I - 0x006B24 01:AB14: 01        .byte $01   ; spr_A
- D 1 - I - 0x006B25 01:AB15: EC        .byte $EC, $F4, $F5   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006B28 01:AB18: F4        .byte $F4, $F4, $F7   ; 
- D 1 - I - 0x006B2B 01:AB1B: F8        .byte $F8, $F8, $9D   ; 
- D 1 - I - 0x006B2E 01:AB1E: 00        .byte $00, $F8, $9F   ; 



off_AB21:
- D 1 - I - 0x006B31 01:AB21: 82        .byte $02 + $80   ; counter + compressed data flag
- D 1 - I - 0x006B32 01:AB22: 01        .byte $01   ; spr_A
- D 1 - I - 0x006B33 01:AB23: F8        .byte $F8, $F8, $9D   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006B36 01:AB26: 00        .byte $00, $F8, $9F   ; 



_off007_2E_AB29_03:
@start:
; 00 
- D 1 - I - 0x006B39 01:AB29: 08        .byte $08   ; 
- D 1 - I - 0x006B3A 01:AB2A: CE        .byte off_AAF7 + $100 - @start   ; 
; 01 
- D 1 - I - 0x006B3B 01:AB2B: 08        .byte $08   ; 
- D 1 - I - 0x006B3C 01:AB2C: DC        .byte off_AB05 + $100 - @start   ; 
; 02 
- D 1 - I - 0x006B3D 01:AB2D: 08        .byte $08   ; 
- D 1 - I - 0x006B3E 01:AB2E: EA        .byte off_AB13 + $100 - @start   ; 
; 03 
- D 1 - I - 0x006B3F 01:AB2F: FF        .byte $FF   ; 
- D 1 - I - 0x006B40 01:AB30: F8        .byte off_AB21 + $100 - @start   ; 



off_AB31:
- D 1 - I - 0x006B41 01:AB31: 84        .byte $04 + $80   ; counter + compressed data flag
- D 1 - I - 0x006B42 01:AB32: 01        .byte $01   ; spr_A
- D 1 - I - 0x006B43 01:AB33: F8        .byte $F8, $00, $95   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006B46 01:AB36: 00        .byte $00, $00, $97   ; 
- D 1 - I - 0x006B49 01:AB39: F8        .byte $F8, $F0, $89   ; 
- D 1 - I - 0x006B4C 01:AB3C: 00        .byte $00, $F0, $8B   ; 



off_AB3F:
- D 1 - I - 0x006B4F 01:AB3F: 84        .byte $04 + $80   ; counter + compressed data flag
- D 1 - I - 0x006B50 01:AB40: 01        .byte $01   ; spr_A
- D 1 - I - 0x006B51 01:AB41: F8        .byte $F8, $00, $9D   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006B54 01:AB44: 00        .byte $00, $00, $9F   ; 
- D 1 - I - 0x006B57 01:AB47: F8        .byte $F8, $F0, $99   ; 
- D 1 - I - 0x006B5A 01:AB4A: 00        .byte $00, $F0, $9B   ; 



_off007_22_AB4D_01:
@start:
; 00 
- D 1 - I - 0x006B5D 01:AB4D: 0A        .byte $0A   ; 
- D 1 - I - 0x006B5E 01:AB4E: E4        .byte off_AB31 + $100 - @start   ; 
; 01 
- D 1 - I - 0x006B5F 01:AB4F: 0A        .byte $0A   ; 
- D 1 - I - 0x006B60 01:AB50: F2        .byte off_AB3F + $100 - @start   ; 
; 02 
- D 1 - I - 0x006B61 01:AB51: 00        .byte $00   ; 
- D 1 - I - 0x006B62 01:AB52: E4        .byte off_AB31 + $100 - @start   ; 



off_AB53:
- D 1 - I - 0x006B63 01:AB53: 84        .byte $04 + $80   ; counter + compressed data flag
- D 1 - I - 0x006B64 01:AB54: 01        .byte $01   ; spr_A
- D 1 - I - 0x006B65 01:AB55: F8        .byte $F8, $00, $9D   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006B68 01:AB58: 00        .byte $00, $00, $9F   ; 
- D 1 - I - 0x006B6B 01:AB5B: F8        .byte $F8, $F0, $99   ; 
- D 1 - I - 0x006B6E 01:AB5E: 00        .byte $00, $F0, $9B   ; 



off_AB61:
- D 1 - I - 0x006B71 01:AB61: 84        .byte $04 + $80   ; counter + compressed data flag
- D 1 - I - 0x006B72 01:AB62: 01        .byte $01   ; spr_A
- D 1 - I - 0x006B73 01:AB63: F8        .byte $F8, $FC, $85   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006B76 01:AB66: 00        .byte $00, $FC, $87   ; 
- D 1 - I - 0x006B79 01:AB69: F8        .byte $F8, $EC, $81   ; 
- D 1 - I - 0x006B7C 01:AB6C: 00        .byte $00, $EC, $83   ; 



_off007_22_AB6F_02:
@start:
; 00 
- D 1 - I - 0x006B7F 01:AB6F: 30        .byte $30   ; 
- D 1 - I - 0x006B80 01:AB70: E4        .byte off_AB53 + $100 - @start   ; 
; 01 
- D 1 - I - 0x006B81 01:AB71: 20        .byte $20   ; 
- D 1 - I - 0x006B82 01:AB72: F2        .byte off_AB61 + $100 - @start   ; 
; 02 
- D 1 - I - 0x006B83 01:AB73: FF        .byte $FF   ; 
- D 1 - I - 0x006B84 01:AB74: F2        .byte off_AB61 + $100 - @start   ; 



off_AB75:
- D 1 - I - 0x006B85 01:AB75: 84        .byte $04 + $80   ; counter + compressed data flag
- D 1 - I - 0x006B86 01:AB76: 03        .byte $03   ; spr_A
- D 1 - I - 0x006B87 01:AB77: F8        .byte $F8, $00, $85   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006B8A 01:AB7A: 00        .byte $00, $00, $87   ; 
- D 1 - I - 0x006B8D 01:AB7D: F0        .byte $F0, $F0, $81   ; 
- D 1 - I - 0x006B90 01:AB80: F8        .byte $F8, $F0, $83   ; 



off_AB83:
- D 1 - I - 0x006B93 01:AB83: 84        .byte $04 + $80   ; counter + compressed data flag
- D 1 - I - 0x006B94 01:AB84: 03        .byte $03   ; spr_A
- D 1 - I - 0x006B95 01:AB85: F8        .byte $F8, $00, $99   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006B98 01:AB88: 00        .byte $00, $00, $9B   ; 
- D 1 - I - 0x006B9B 01:AB8B: F0        .byte $F0, $F0, $89   ; 
- D 1 - I - 0x006B9E 01:AB8E: F8        .byte $F8, $F0, $8B   ; 



_off007_22_AB91_03:
@start:
; 00 
- D 1 - I - 0x006BA1 01:AB91: 0A        .byte $0A   ; 
- D 1 - I - 0x006BA2 01:AB92: E4        .byte off_AB75 + $100 - @start   ; 
; 01 
- D 1 - I - 0x006BA3 01:AB93: 0A        .byte $0A   ; 
- D 1 - I - 0x006BA4 01:AB94: F2        .byte off_AB83 + $100 - @start   ; 
; 02 
- D 1 - I - 0x006BA5 01:AB95: 00        .byte $00   ; 
- D 1 - I - 0x006BA6 01:AB96: E4        .byte off_AB75 + $100 - @start   ; 



off_AB97:
- D 1 - I - 0x006BA7 01:AB97: 84        .byte $04 + $80   ; counter + compressed data flag
- D 1 - I - 0x006BA8 01:AB98: 03        .byte $03   ; spr_A
- D 1 - I - 0x006BA9 01:AB99: F8        .byte $F8, $00, $99   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006BAC 01:AB9C: 00        .byte $00, $00, $9B   ; 
- D 1 - I - 0x006BAF 01:AB9F: F0        .byte $F0, $F0, $81   ; 
- D 1 - I - 0x006BB2 01:ABA2: F8        .byte $F8, $F0, $83   ; 



off_ABA5:
- D 1 - I - 0x006BB5 01:ABA5: 84        .byte $04 + $80   ; counter + compressed data flag
- D 1 - I - 0x006BB6 01:ABA6: 03        .byte $03   ; spr_A
- D 1 - I - 0x006BB7 01:ABA7: F8        .byte $F8, $FC, $C9   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006BBA 01:ABAA: 00        .byte $00, $FC, $CB   ; 
- D 1 - I - 0x006BBD 01:ABAD: F0        .byte $F0, $EC, $9D   ; 
- D 1 - I - 0x006BC0 01:ABB0: F8        .byte $F8, $EC, $9F   ; 



_off007_22_ABB3_04:
@start:
; 00 
- D 1 - I - 0x006BC3 01:ABB3: 20        .byte $20   ; 
- D 1 - I - 0x006BC4 01:ABB4: E4        .byte off_AB97 + $100 - @start   ; 
; 01 
- D 1 - I - 0x006BC5 01:ABB5: 20        .byte $20   ; 
- D 1 - I - 0x006BC6 01:ABB6: F2        .byte off_ABA5 + $100 - @start   ; 
; 02 
- D 1 - I - 0x006BC7 01:ABB7: FF        .byte $FF   ; 
- D 1 - I - 0x006BC8 01:ABB8: F2        .byte off_ABA5 + $100 - @start   ; 



off_ABB9:
- D 1 - I - 0x006BC9 01:ABB9: 09        .byte $09   ; counter
- D 1 - I - 0x006BCA 01:ABBA: FA        .byte $FA, $00, $A9, $02   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x006BCE 01:ABBE: 02        .byte $02, $00, $AB, $02   ; 
- D 1 - I - 0x006BD2 01:ABC2: EA        .byte $EA, $E8, $91, $00   ; 
- D 1 - I - 0x006BD6 01:ABC6: F2        .byte $F2, $E8, $93, $00   ; 
- D 1 - I - 0x006BDA 01:ABCA: F2        .byte $F2, $00, $A3, $02   ; 
- D 1 - I - 0x006BDE 01:ABCE: EA        .byte $EA, $F0, $81, $01   ; 
- D 1 - I - 0x006BE2 01:ABD2: F2        .byte $F2, $F0, $83, $01   ; 
- D 1 - I - 0x006BE6 01:ABD6: FA        .byte $FA, $F0, $85, $01   ; 
- D 1 - I - 0x006BEA 01:ABDA: 02        .byte $02, $F0, $87, $01   ; 



off_ABDE:
- D 1 - I - 0x006BEE 01:ABDE: 09        .byte $09   ; counter
- D 1 - I - 0x006BEF 01:ABDF: FA        .byte $FA, $00, $A5, $02   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x006BF3 01:ABE3: 02        .byte $02, $00, $A7, $02   ; 
- D 1 - I - 0x006BF7 01:ABE7: EA        .byte $EA, $DE, $91, $00   ; 
- D 1 - I - 0x006BFB 01:ABEB: F2        .byte $F2, $DE, $93, $00   ; 
- D 1 - I - 0x006BFF 01:ABEF: EA        .byte $EA, $F0, $89, $01   ; 
- D 1 - I - 0x006C03 01:ABF3: F2        .byte $F2, $F0, $8B, $01   ; 
- D 1 - I - 0x006C07 01:ABF7: F2        .byte $F2, $00, $A3, $02   ; 
- D 1 - I - 0x006C0B 01:ABFB: FA        .byte $FA, $EF, $85, $01   ; 
- D 1 - I - 0x006C0F 01:ABFF: 02        .byte $02, $EF, $87, $01   ; 



_off007_27_AC03_03:
@start:
; 00 
- D 1 - I - 0x006C13 01:AC03: 06        .byte $06   ; 
- D 1 - I - 0x006C14 01:AC04: B6        .byte off_ABB9 + $100 - @start   ; 
; 01 
- D 1 - I - 0x006C15 01:AC05: 06        .byte $06   ; 
- D 1 - I - 0x006C16 01:AC06: DB        .byte off_ABDE + $100 - @start   ; 
; 02 
- D 1 - I - 0x006C17 01:AC07: 00        .byte $00   ; 
- D 1 - I - 0x006C18 01:AC08: B6        .byte off_ABB9 + $100 - @start   ; 



off_AC09:
- D 1 - I - 0x006C19 01:AC09: 09        .byte $09   ; counter
- D 1 - I - 0x006C1A 01:AC0A: 00        .byte $00, $F5, $BD, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x006C1E 01:AC0E: E0        .byte $E0, $E5, $95, $02   ; 
- D 1 - I - 0x006C22 01:AC12: E8        .byte $E8, $E5, $97, $02   ; 
- D 1 - I - 0x006C26 01:AC16: FB        .byte $FB, $05, $B3, $03   ; 
- D 1 - I - 0x006C2A 01:AC1A: F8        .byte $F8, $F5, $BB, $01   ; 
- D 1 - I - 0x006C2E 01:AC1E: 00        .byte $00, $E5, $9D, $01   ; 
- D 1 - I - 0x006C32 01:AC22: 08        .byte $08, $E5, $9F, $01   ; 
- D 1 - I - 0x006C36 01:AC26: F0        .byte $F0, $E5, $99, $01   ; 
- D 1 - I - 0x006C3A 01:AC2A: F8        .byte $F8, $E5, $9B, $01   ; 



off_AC2E:
- D 1 - I - 0x006C3E 01:AC2E: 09        .byte $09   ; counter
- D 1 - I - 0x006C3F 01:AC2F: 00        .byte $00, $FB, $BD, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x006C43 01:AC33: F8        .byte $F8, $FB, $BB, $01   ; 
- D 1 - I - 0x006C47 01:AC37: E0        .byte $E0, $EB, $95, $02   ; 
- D 1 - I - 0x006C4B 01:AC3B: E8        .byte $E8, $EB, $97, $02   ; 
- D 1 - I - 0x006C4F 01:AC3F: 00        .byte $00, $EB, $9D, $01   ; 
- D 1 - I - 0x006C53 01:AC43: 08        .byte $08, $EB, $9F, $01   ; 
- D 1 - I - 0x006C57 01:AC47: F0        .byte $F0, $EB, $99, $01   ; 
- D 1 - I - 0x006C5B 01:AC4B: F8        .byte $F8, $EB, $9B, $01   ; 
- D 1 - I - 0x006C5F 01:AC4F: FB        .byte $FB, $0B, $B5, $03   ; 



off_AC53:
- D 1 - I - 0x006C63 01:AC53: 09        .byte $09   ; counter
- D 1 - I - 0x006C64 01:AC54: F8        .byte $F8, $FD, $BB, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x006C68 01:AC58: 00        .byte $00, $FD, $BD, $01   ; 
- D 1 - I - 0x006C6C 01:AC5C: E0        .byte $E0, $ED, $95, $02   ; 
- D 1 - I - 0x006C70 01:AC60: E8        .byte $E8, $ED, $97, $02   ; 
- D 1 - I - 0x006C74 01:AC64: 00        .byte $00, $ED, $9D, $01   ; 
- D 1 - I - 0x006C78 01:AC68: 08        .byte $08, $ED, $9F, $01   ; 
- D 1 - I - 0x006C7C 01:AC6C: F0        .byte $F0, $ED, $99, $01   ; 
- D 1 - I - 0x006C80 01:AC70: F8        .byte $F8, $ED, $9B, $01   ; 
- D 1 - I - 0x006C84 01:AC74: FB        .byte $FB, $0D, $B7, $03   ; 



_off007_27_AC78_04:
_off007_27_AC78_0A:
@start:
; 00 
- D 1 - I - 0x006C88 01:AC78: 06        .byte $06   ; 
- D 1 - I - 0x006C89 01:AC79: 91        .byte off_AC09 + $100 - @start   ; 
; 01 
- D 1 - I - 0x006C8A 01:AC7A: 06        .byte $06   ; 
- D 1 - I - 0x006C8B 01:AC7B: B6        .byte off_AC2E + $100 - @start   ; 
; 02 
- D 1 - I - 0x006C8C 01:AC7C: 06        .byte $06   ; 
- D 1 - I - 0x006C8D 01:AC7D: DB        .byte off_AC53 + $100 - @start   ; 
; 03 
- D 1 - I - 0x006C8E 01:AC7E: 06        .byte $06   ; 
- D 1 - I - 0x006C8F 01:AC7F: B6        .byte off_AC2E + $100 - @start   ; 
; 04 
- D 1 - I - 0x006C90 01:AC80: 00        .byte $00   ; 
- D 1 - I - 0x006C91 01:AC81: 91        .byte off_AC09 + $100 - @start   ; 



off_AC82:
- D 1 - I - 0x006C92 01:AC82: 86        .byte $06 + $80   ; counter + compressed data flag
- D 1 - I - 0x006C93 01:AC83: 01        .byte $01   ; spr_A
- D 1 - I - 0x006C94 01:AC84: F4        .byte $F4, $00, $C7   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006C97 01:AC87: FC        .byte $FC, $00, $C9   ; 
- D 1 - I - 0x006C9A 01:AC8A: 04        .byte $04, $00, $CB   ; 
- D 1 - I - 0x006C9D 01:AC8D: 04        .byte $04, $F0, $C5   ; 
- D 1 - I - 0x006CA0 01:AC90: F4        .byte $F4, $F0, $C1   ; 
- D 1 - I - 0x006CA3 01:AC93: FC        .byte $FC, $F0, $C3   ; 



off_AC96:
- D 1 - I - 0x006CA6 01:AC96: 86        .byte $06 + $80   ; counter + compressed data flag
- D 1 - I - 0x006CA7 01:AC97: 01        .byte $01   ; spr_A
- D 1 - I - 0x006CA8 01:AC98: FC        .byte $FC, $00, $D5   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006CAB 01:AC9B: 04        .byte $04, $00, $D7   ; 
- D 1 - I - 0x006CAE 01:AC9E: F4        .byte $F4, $00, $D3   ; 
- D 1 - I - 0x006CB1 01:ACA1: 04        .byte $04, $F0, $D1   ; 
- D 1 - I - 0x006CB4 01:ACA4: F4        .byte $F4, $F0, $CD   ; 
- D 1 - I - 0x006CB7 01:ACA7: FC        .byte $FC, $F0, $CF   ; 



_off007_27_ACAA_05:
@start:
; 00 
- D 1 - I - 0x006CBA 01:ACAA: 08        .byte $08   ; 
- D 1 - I - 0x006CBB 01:ACAB: D8        .byte off_AC82 + $100 - @start   ; 
; 01 
- D 1 - I - 0x006CBC 01:ACAC: 08        .byte $08   ; 
- D 1 - I - 0x006CBD 01:ACAD: EC        .byte off_AC96 + $100 - @start   ; 
; 02 
- D 1 - I - 0x006CBE 01:ACAE: 00        .byte $00   ; 
- D 1 - I - 0x006CBF 01:ACAF: D8        .byte off_AC82 + $100 - @start   ; 



off_ACB0:
- D 1 - I - 0x006CC0 01:ACB0: 07        .byte $07   ; counter
- D 1 - I - 0x006CC1 01:ACB1: 00        .byte $00, $F0, $A1, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x006CC5 01:ACB5: FE        .byte $FE, $E2, $81, $00   ; 
- D 1 - I - 0x006CC9 01:ACB9: FC        .byte $FC, $00, $A9, $03   ; 
- D 1 - I - 0x006CCD 01:ACBD: 04        .byte $04, $00, $AB, $03   ; 
- D 1 - I - 0x006CD1 01:ACC1: F4        .byte $F4, $F0, $87, $03   ; 
- D 1 - I - 0x006CD5 01:ACC5: FC        .byte $FC, $F0, $89, $03   ; 
- D 1 - I - 0x006CD9 01:ACC9: 04        .byte $04, $F0, $8B, $03   ; 



off_ACCD:
- D 1 - I - 0x006CDD 01:ACCD: 07        .byte $07   ; counter
- D 1 - I - 0x006CDE 01:ACCE: 06        .byte $06, $E3, $A1, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x006CE2 01:ACD2: FC        .byte $FC, $00, $C7, $03   ; 
- D 1 - I - 0x006CE6 01:ACD6: 04        .byte $04, $00, $C9, $03   ; 
- D 1 - I - 0x006CEA 01:ACDA: FE        .byte $FE, $E3, $81, $00   ; 
- D 1 - I - 0x006CEE 01:ACDE: F4        .byte $F4, $F1, $87, $03   ; 
- D 1 - I - 0x006CF2 01:ACE2: FC        .byte $FC, $F1, $89, $03   ; 
- D 1 - I - 0x006CF6 01:ACE6: 04        .byte $04, $F1, $8B, $03   ; 



_off007_27_ACEA_06:
@start:
; 00 
- D 1 - I - 0x006CFA 01:ACEA: 0A        .byte $0A   ; 
- D 1 - I - 0x006CFB 01:ACEB: C6        .byte off_ACB0 + $100 - @start   ; 
; 01 
- D 1 - I - 0x006CFC 01:ACEC: 0A        .byte $0A   ; 
- D 1 - I - 0x006CFD 01:ACED: E3        .byte off_ACCD + $100 - @start   ; 
; 02 
- D 1 - I - 0x006CFE 01:ACEE: 00        .byte $00   ; 
- D 1 - I - 0x006CFF 01:ACEF: C6        .byte off_ACB0 + $100 - @start   ; 



off_ACF0:
- D 1 - I - 0x006D00 01:ACF0: 0A        .byte $0A   ; counter
- D 1 - I - 0x006D01 01:ACF1: E4        .byte $E4, $00, $D7, $02   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x006D05 01:ACF5: EC        .byte $EC, $00, $D9, $02   ; 
- D 1 - I - 0x006D09 01:ACF9: F4        .byte $F4, $00, $CF, $01   ; 
- D 1 - I - 0x006D0D 01:ACFD: 04        .byte $04, $00, $CD, $01   ; 
- D 1 - I - 0x006D11 01:AD01: FC        .byte $FC, $00, $CB, $01   ; 
- D 1 - I - 0x006D15 01:AD05: E4        .byte $E4, $F0, $D1, $02   ; 
- D 1 - I - 0x006D19 01:AD09: EC        .byte $EC, $F0, $D3, $02   ; 
- D 1 - I - 0x006D1D 01:AD0D: F4        .byte $F4, $F0, $D5, $01   ; 
- D 1 - I - 0x006D21 01:AD11: FC        .byte $FC, $F0, $9D, $01   ; 
- D 1 - I - 0x006D25 01:AD15: 04        .byte $04, $F0, $9F, $01   ; 



off_AD19:
- D 1 - I - 0x006D29 01:AD19: 0A        .byte $0A   ; counter
- D 1 - I - 0x006D2A 01:AD1A: E4        .byte $E4, $00, $D7, $02   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x006D2E 01:AD1E: E4        .byte $E4, $F0, $D1, $02   ; 
- D 1 - I - 0x006D32 01:AD22: EC        .byte $EC, $F0, $D3, $02   ; 
- D 1 - I - 0x006D36 01:AD26: EC        .byte $EC, $00, $D9, $01   ; 
- D 1 - I - 0x006D3A 01:AD2A: F4        .byte $F4, $00, $DB, $01   ; 
- D 1 - I - 0x006D3E 01:AD2E: F4        .byte $F4, $F0, $D5, $01   ; 
- D 1 - I - 0x006D42 01:AD32: FC        .byte $FC, $00, $BD, $01   ; 
- D 1 - I - 0x006D46 01:AD36: 04        .byte $04, $00, $BF, $01   ; 
- D 1 - I - 0x006D4A 01:AD3A: FC        .byte $FC, $F0, $9D, $01   ; 
- D 1 - I - 0x006D4E 01:AD3E: 04        .byte $04, $F0, $9F, $01   ; 



_off007_27_AD42_07:
@start:
; 00 
- D 1 - I - 0x006D52 01:AD42: 0A        .byte $0A   ; 
- D 1 - I - 0x006D53 01:AD43: AE        .byte off_ACF0 + $100 - @start   ; 
; 01 
- D 1 - I - 0x006D54 01:AD44: 0A        .byte $0A   ; 
- D 1 - I - 0x006D55 01:AD45: D7        .byte off_AD19 + $100 - @start   ; 
; 02 
- D 1 - I - 0x006D56 01:AD46: 00        .byte $00   ; 
- D 1 - I - 0x006D57 01:AD47: AE        .byte off_ACF0 + $100 - @start   ; 



off_AD48:
- D 1 - I - 0x006D58 01:AD48: 87        .byte $07 + $80   ; counter + compressed data flag
- D 1 - I - 0x006D59 01:AD49: 01        .byte $01   ; spr_A
- D 1 - I - 0x006D5A 01:AD4A: 04        .byte $04, $F0, $97   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006D5D 01:AD4D: 00        .byte $00, $E0, $A1   ; 
- D 1 - I - 0x006D60 01:AD50: 04        .byte $04, $00, $B1   ; 
- D 1 - I - 0x006D63 01:AD53: F4        .byte $F4, $00, $AD   ; 
- D 1 - I - 0x006D66 01:AD56: FC        .byte $FC, $00, $AF   ; 
- D 1 - I - 0x006D69 01:AD59: F4        .byte $F4, $F0, $8D   ; 
- D 1 - I - 0x006D6C 01:AD5C: FC        .byte $FC, $F0, $8F   ; 



off_AD5F:
- D 1 - I - 0x006D6F 01:AD5F: 87        .byte $07 + $80   ; counter + compressed data flag
- D 1 - I - 0x006D70 01:AD60: 01        .byte $01   ; spr_A
- D 1 - I - 0x006D71 01:AD61: 04        .byte $04, $DC, $A1   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006D74 01:AD64: F4        .byte $F4, $00, $B3   ; 
- D 1 - I - 0x006D77 01:AD67: FC        .byte $FC, $00, $B5   ; 
- D 1 - I - 0x006D7A 01:AD6A: 04        .byte $04, $00, $B7   ; 
- D 1 - I - 0x006D7D 01:AD6D: F4        .byte $F4, $F0, $93   ; 
- D 1 - I - 0x006D80 01:AD70: FC        .byte $FC, $F0, $95   ; 
- D 1 - I - 0x006D83 01:AD73: 04        .byte $04, $F0, $97   ; 



_off007_27_AD76_08:
@start:
; 00 
- D 1 - I - 0x006D86 01:AD76: 08        .byte $08   ; 
- D 1 - I - 0x006D87 01:AD77: D2        .byte off_AD48 + $100 - @start   ; 
; 01 
- D 1 - I - 0x006D88 01:AD78: 08        .byte $08   ; 
- D 1 - I - 0x006D89 01:AD79: E9        .byte off_AD5F + $100 - @start   ; 
; 02 
- D 1 - I - 0x006D8A 01:AD7A: 00        .byte $00   ; 
- D 1 - I - 0x006D8B 01:AD7B: D2        .byte off_AD48 + $100 - @start   ; 



off_AD7C:
- D 1 - I - 0x006D8C 01:AD7C: 07        .byte $07   ; counter
- D 1 - I - 0x006D8D 01:AD7D: FA        .byte $FA, $00, $A9, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x006D91 01:AD81: 02        .byte $02, $00, $AB, $01   ; 
- D 1 - I - 0x006D95 01:AD85: F2        .byte $F2, $00, $A3, $01   ; 
- D 1 - I - 0x006D99 01:AD89: EA        .byte $EA, $F0, $81, $01   ; 
- D 1 - I - 0x006D9D 01:AD8D: F2        .byte $F2, $F0, $83, $01   ; 
- D 1 - I - 0x006DA1 01:AD91: FA        .byte $FA, $F0, $85, $01   ; 
- D 1 - I - 0x006DA5 01:AD95: 02        .byte $02, $F0, $87, $01   ; 



off_AD99:
- D 1 - I - 0x006DA9 01:AD99: 07        .byte $07   ; counter
- D 1 - I - 0x006DAA 01:AD9A: FA        .byte $FA, $00, $A5, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x006DAE 01:AD9E: 02        .byte $02, $00, $A7, $01   ; 
- D 1 - I - 0x006DB2 01:ADA2: EA        .byte $EA, $F0, $89, $01   ; 
- D 1 - I - 0x006DB6 01:ADA6: F2        .byte $F2, $F0, $8B, $01   ; 
- D 1 - I - 0x006DBA 01:ADAA: F2        .byte $F2, $00, $A3, $01   ; 
- D 1 - I - 0x006DBE 01:ADAE: FA        .byte $FA, $EF, $85, $01   ; 
- D 1 - I - 0x006DC2 01:ADB2: 02        .byte $02, $EF, $87, $01   ; 



_off007_27_ADB6_09:
@start:
; 00 
- D 1 - I - 0x006DC6 01:ADB6: 06        .byte $06   ; 
- D 1 - I - 0x006DC7 01:ADB7: C6        .byte off_AD7C + $100 - @start   ; 
; 01 
- D 1 - I - 0x006DC8 01:ADB8: 06        .byte $06   ; 
- D 1 - I - 0x006DC9 01:ADB9: E3        .byte off_AD99 + $100 - @start   ; 
; 02 
- D 1 - I - 0x006DCA 01:ADBA: 00        .byte $00   ; 
- D 1 - I - 0x006DCB 01:ADBB: C6        .byte off_AD7C + $100 - @start   ; 



off_ADBC:
- D 1 - I - 0x006DCC 01:ADBC: 88        .byte $08 + $80   ; counter + compressed data flag
- D 1 - I - 0x006DCD 01:ADBD: 01        .byte $01   ; spr_A
- D 1 - I - 0x006DCE 01:ADBE: 00        .byte $00, $00, $B5   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006DD1 01:ADC1: 08        .byte $08, $00, $B7   ; 
- D 1 - I - 0x006DD4 01:ADC4: F0        .byte $F0, $00, $B1   ; 
- D 1 - I - 0x006DD7 01:ADC7: F8        .byte $F8, $00, $B3   ; 
- D 1 - I - 0x006DDA 01:ADCA: 00        .byte $00, $F0, $95   ; 
- D 1 - I - 0x006DDD 01:ADCD: 08        .byte $08, $F0, $97   ; 
- D 1 - I - 0x006DE0 01:ADD0: F0        .byte $F0, $F0, $91   ; 
- D 1 - I - 0x006DE3 01:ADD3: F8        .byte $F8, $F0, $93   ; 



off_ADD6:
- D 1 - I - 0x006DE6 01:ADD6: 88        .byte $08 + $80   ; counter + compressed data flag
- D 1 - I - 0x006DE7 01:ADD7: 01        .byte $01   ; spr_A
- D 1 - I - 0x006DE8 01:ADD8: 08        .byte $08, $F0, $D9   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006DEB 01:ADDB: 00        .byte $00, $F0, $95   ; 
- D 1 - I - 0x006DEE 01:ADDE: F0        .byte $F0, $00, $D1   ; 
- D 1 - I - 0x006DF1 01:ADE1: F8        .byte $F8, $00, $D3   ; 
- D 1 - I - 0x006DF4 01:ADE4: F0        .byte $F0, $F0, $99   ; 
- D 1 - I - 0x006DF7 01:ADE7: F8        .byte $F8, $F0, $9B   ; 
- D 1 - I - 0x006DFA 01:ADEA: 00        .byte $00, $00, $B5   ; 
- D 1 - I - 0x006DFD 01:ADED: 08        .byte $08, $00, $B7   ; 



off_ADF0:
- D 1 - I - 0x006E00 01:ADF0: 88        .byte $08 + $80   ; counter + compressed data flag
- D 1 - I - 0x006E01 01:ADF1: 01        .byte $01   ; spr_A
- D 1 - I - 0x006E02 01:ADF2: 08        .byte $08, $F0, $DB   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006E05 01:ADF5: F0        .byte $F0, $00, $D5   ; 
- D 1 - I - 0x006E08 01:ADF8: F8        .byte $F8, $00, $D7   ; 
- D 1 - I - 0x006E0B 01:ADFB: 00        .byte $00, $F0, $BF   ; 
- D 1 - I - 0x006E0E 01:ADFE: F0        .byte $F0, $F0, $9D   ; 
- D 1 - I - 0x006E11 01:AE01: F8        .byte $F8, $F0, $9F   ; 
- D 1 - I - 0x006E14 01:AE04: 00        .byte $00, $00, $B5   ; 
- D 1 - I - 0x006E17 01:AE07: 08        .byte $08, $00, $B7   ; 



off_AE0A:
- D 1 - I - 0x006E1A 01:AE0A: 88        .byte $08 + $80   ; counter + compressed data flag
- D 1 - I - 0x006E1B 01:AE0B: 01        .byte $01   ; spr_A
- D 1 - I - 0x006E1C 01:AE0C: F0        .byte $F0, $00, $D1   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006E1F 01:AE0F: F8        .byte $F8, $00, $D3   ; 
- D 1 - I - 0x006E22 01:AE12: F0        .byte $F0, $F0, $B9   ; 
- D 1 - I - 0x006E25 01:AE15: F8        .byte $F8, $F0, $BB   ; 
- D 1 - I - 0x006E28 01:AE18: 00        .byte $00, $00, $B5   ; 
- D 1 - I - 0x006E2B 01:AE1B: 08        .byte $08, $00, $B7   ; 
- D 1 - I - 0x006E2E 01:AE1E: 00        .byte $00, $F0, $95   ; 
- D 1 - I - 0x006E31 01:AE21: 08        .byte $08, $F0, $97   ; 



off_AE24:
- D 1 - I - 0x006E34 01:AE24: 88        .byte $08 + $80   ; counter + compressed data flag
- D 1 - I - 0x006E35 01:AE25: 01        .byte $01   ; spr_A
- D 1 - I - 0x006E36 01:AE26: F0        .byte $F0, $00, $B1   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006E39 01:AE29: F8        .byte $F8, $00, $B3   ; 
- D 1 - I - 0x006E3C 01:AE2C: 08        .byte $08, $F0, $97   ; 
- D 1 - I - 0x006E3F 01:AE2F: 00        .byte $00, $F0, $BD   ; 
- D 1 - I - 0x006E42 01:AE32: 00        .byte $00, $00, $B5   ; 
- D 1 - I - 0x006E45 01:AE35: 08        .byte $08, $00, $B7   ; 
- D 1 - I - 0x006E48 01:AE38: F0        .byte $F0, $F0, $91   ; 
- D 1 - I - 0x006E4B 01:AE3B: F8        .byte $F8, $F0, $93   ; 



_off007_27_AE3E_0B:
@start:
; 00 
- D 1 - I - 0x006E4E 01:AE3E: 08        .byte $08   ; 
- D 1 - I - 0x006E4F 01:AE3F: 7E        .byte off_ADBC + $100 - @start   ; 
; 01 
- D 1 - I - 0x006E50 01:AE40: 08        .byte $08   ; 
- D 1 - I - 0x006E51 01:AE41: 98        .byte off_ADD6 + $100 - @start   ; 
; 02 
- D 1 - I - 0x006E52 01:AE42: 08        .byte $08   ; 
- D 1 - I - 0x006E53 01:AE43: B2        .byte off_ADF0 + $100 - @start   ; 
; 03 
- D 1 - I - 0x006E54 01:AE44: 08        .byte $08   ; 
- D 1 - I - 0x006E55 01:AE45: CC        .byte off_AE0A + $100 - @start   ; 
; 04 
- D 1 - I - 0x006E56 01:AE46: 08        .byte $08   ; 
- D 1 - I - 0x006E57 01:AE47: E6        .byte off_AE24 + $100 - @start   ; 
; 05 
- D 1 - I - 0x006E58 01:AE48: 00        .byte $00   ; 
- D 1 - I - 0x006E59 01:AE49: 7E        .byte off_ADBC + $100 - @start   ; 



off_AE4A:
- D 1 - I - 0x006E5A 01:AE4A: 07        .byte $07   ; counter
- D 1 - I - 0x006E5B 01:AE4B: FA        .byte $FA, $00, $A5, $02   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x006E5F 01:AE4F: 02        .byte $02, $00, $A7, $02   ; 
- D 1 - I - 0x006E63 01:AE53: F2        .byte $F2, $00, $A3, $02   ; 
- D 1 - I - 0x006E67 01:AE57: EA        .byte $EA, $F0, $81, $01   ; 
- D 1 - I - 0x006E6B 01:AE5B: F2        .byte $F2, $F0, $83, $01   ; 
- D 1 - I - 0x006E6F 01:AE5F: FA        .byte $FA, $F0, $85, $01   ; 
- D 1 - I - 0x006E73 01:AE63: 02        .byte $02, $F0, $87, $01   ; 



off_AE67:
- D 1 - I - 0x006E77 01:AE67: 07        .byte $07   ; counter
- D 1 - I - 0x006E78 01:AE68: FA        .byte $FA, $00, $A9, $02   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x006E7C 01:AE6C: 02        .byte $02, $00, $AB, $02   ; 
- D 1 - I - 0x006E80 01:AE70: EA        .byte $EA, $F0, $89, $01   ; 
- D 1 - I - 0x006E84 01:AE74: F2        .byte $F2, $F0, $8B, $01   ; 
- D 1 - I - 0x006E88 01:AE78: F2        .byte $F2, $00, $A3, $02   ; 
- D 1 - I - 0x006E8C 01:AE7C: FA        .byte $FA, $EF, $85, $01   ; 
- D 1 - I - 0x006E90 01:AE80: 02        .byte $02, $EF, $87, $01   ; 



off_AE84:
- D 1 - I - 0x006E94 01:AE84: 07        .byte $07   ; counter
- D 1 - I - 0x006E95 01:AE85: FA        .byte $FA, $00, $A5, $02   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x006E99 01:AE89: 02        .byte $02, $00, $A7, $02   ; 
- D 1 - I - 0x006E9D 01:AE8D: EA        .byte $EA, $F0, $8D, $01   ; 
- D 1 - I - 0x006EA1 01:AE91: F2        .byte $F2, $F0, $8F, $01   ; 
- D 1 - I - 0x006EA5 01:AE95: F2        .byte $F2, $00, $A3, $02   ; 
- D 1 - I - 0x006EA9 01:AE99: FA        .byte $FA, $F0, $85, $01   ; 
- D 1 - I - 0x006EAD 01:AE9D: 02        .byte $02, $F0, $87, $01   ; 



_off007_27_AEA1_0C:
@start:
; 00 
- D 1 - I - 0x006EB1 01:AEA1: 05        .byte $05   ; 
- D 1 - I - 0x006EB2 01:AEA2: A9        .byte off_AE4A + $100 - @start   ; 
; 01 
- D 1 - I - 0x006EB3 01:AEA3: 07        .byte $07   ; 
- D 1 - I - 0x006EB4 01:AEA4: C6        .byte off_AE67 + $100 - @start   ; 
; 02 
- D 1 - I - 0x006EB5 01:AEA5: 20        .byte $20   ; 
- D 1 - I - 0x006EB6 01:AEA6: E3        .byte off_AE84 + $100 - @start   ; 
; 03 
- D 1 - I - 0x006EB7 01:AEA7: FF        .byte $FF   ; 
- D 1 - I - 0x006EB8 01:AEA8: E3        .byte off_AE84 + $100 - @start   ; 



off_AEA9:
- D 1 - I - 0x006EB9 01:AEA9: 0B        .byte $0B   ; counter
- D 1 - I - 0x006EBA 01:AEAA: D4        .byte $D4, $E3, $ED, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x006EBE 01:AEAE: DC        .byte $DC, $E3, $EF, $01   ; 
- D 1 - I - 0x006EC2 01:AEB2: E0        .byte $E0, $E4, $B9, $02   ; 
- D 1 - I - 0x006EC6 01:AEB6: E8        .byte $E8, $E4, $BF, $02   ; 
- D 1 - I - 0x006ECA 01:AEBA: 00        .byte $00, $F5, $BD, $01   ; 
- D 1 - I - 0x006ECE 01:AEBE: FB        .byte $FB, $05, $B3, $03   ; 
- D 1 - I - 0x006ED2 01:AEC2: F8        .byte $F8, $F5, $BB, $01   ; 
- D 1 - I - 0x006ED6 01:AEC6: 00        .byte $00, $E5, $9D, $01   ; 
- D 1 - I - 0x006EDA 01:AECA: 08        .byte $08, $E5, $9F, $01   ; 
- D 1 - I - 0x006EDE 01:AECE: F0        .byte $F0, $E5, $99, $01   ; 
- D 1 - I - 0x006EE2 01:AED2: F8        .byte $F8, $E5, $9B, $01   ; 



off_AED6:
- D 1 - I - 0x006EE6 01:AED6: 0B        .byte $0B   ; counter
- D 1 - I - 0x006EE7 01:AED7: D4        .byte $D4, $EA, $F1, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x006EEB 01:AEDB: DC        .byte $DC, $EA, $F3, $01   ; 
- D 1 - I - 0x006EEF 01:AEDF: E0        .byte $E0, $EA, $B9, $02   ; 
- D 1 - I - 0x006EF3 01:AEE3: E8        .byte $E8, $EA, $BF, $02   ; 
- D 1 - I - 0x006EF7 01:AEE7: 00        .byte $00, $FB, $BD, $01   ; 
- D 1 - I - 0x006EFB 01:AEEB: F8        .byte $F8, $FB, $BB, $01   ; 
- D 1 - I - 0x006EFF 01:AEEF: 00        .byte $00, $EB, $9D, $01   ; 
- D 1 - I - 0x006F03 01:AEF3: 08        .byte $08, $EB, $9F, $01   ; 
- D 1 - I - 0x006F07 01:AEF7: F0        .byte $F0, $EB, $99, $01   ; 
- D 1 - I - 0x006F0B 01:AEFB: F8        .byte $F8, $EB, $9B, $01   ; 
- D 1 - I - 0x006F0F 01:AEFF: FB        .byte $FB, $0B, $B5, $03   ; 



off_AF03:
- D 1 - I - 0x006F13 01:AF03: 0B        .byte $0B   ; counter
- D 1 - I - 0x006F14 01:AF04: D4        .byte $D4, $EA, $F5, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x006F18 01:AF08: DC        .byte $DC, $EA, $F7, $01   ; 
- D 1 - I - 0x006F1C 01:AF0C: E0        .byte $E0, $EC, $B9, $02   ; 
- D 1 - I - 0x006F20 01:AF10: E8        .byte $E8, $EC, $BF, $02   ; 
- D 1 - I - 0x006F24 01:AF14: F8        .byte $F8, $FD, $BB, $01   ; 
- D 1 - I - 0x006F28 01:AF18: 00        .byte $00, $FD, $BD, $01   ; 
- D 1 - I - 0x006F2C 01:AF1C: 00        .byte $00, $ED, $9D, $01   ; 
- D 1 - I - 0x006F30 01:AF20: 08        .byte $08, $ED, $9F, $01   ; 
- D 1 - I - 0x006F34 01:AF24: F0        .byte $F0, $ED, $99, $01   ; 
- D 1 - I - 0x006F38 01:AF28: F8        .byte $F8, $ED, $9B, $01   ; 
- D 1 - I - 0x006F3C 01:AF2C: FB        .byte $FB, $0D, $B7, $03   ; 



_off007_27_AF30_0D:
_off007_27_AF30_13:
@start:
; 00 
- D 1 - I - 0x006F40 01:AF30: 06        .byte $06   ; 
- D 1 - I - 0x006F41 01:AF31: 79        .byte off_AEA9 + $100 - @start   ; 
; 01 
- D 1 - I - 0x006F42 01:AF32: 05        .byte $05   ; 
- D 1 - I - 0x006F43 01:AF33: A6        .byte off_AED6 + $100 - @start   ; 
; 02 
- D 1 - I - 0x006F44 01:AF34: 06        .byte $06   ; 
- D 1 - I - 0x006F45 01:AF35: D3        .byte off_AF03 + $100 - @start   ; 
; 03 
- D 1 - I - 0x006F46 01:AF36: 05        .byte $05   ; 
- D 1 - I - 0x006F47 01:AF37: A6        .byte off_AED6 + $100 - @start   ; 
; 04 
- D 1 - I - 0x006F48 01:AF38: FF        .byte $FF   ; 
- D 1 - I - 0x006F49 01:AF39: A6        .byte off_AED6 + $100 - @start   ; 



off_AF3A:
- D 1 - I - 0x006F4A 01:AF3A: 86        .byte $06 + $80   ; counter + compressed data flag
- D 1 - I - 0x006F4B 01:AF3B: 01        .byte $01   ; spr_A
- D 1 - I - 0x006F4C 01:AF3C: F4        .byte $F4, $F0, $AD   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006F4F 01:AF3F: FC        .byte $FC, $F0, $AF   ; 
- D 1 - I - 0x006F52 01:AF42: F4        .byte $F4, $00, $C7   ; 
- D 1 - I - 0x006F55 01:AF45: FC        .byte $FC, $00, $C9   ; 
- D 1 - I - 0x006F58 01:AF48: 04        .byte $04, $00, $CB   ; 
- D 1 - I - 0x006F5B 01:AF4B: 04        .byte $04, $F0, $C5   ; 



off_AF4E:
- D 1 - I - 0x006F5E 01:AF4E: 86        .byte $06 + $80   ; counter + compressed data flag
- D 1 - I - 0x006F5F 01:AF4F: 01        .byte $01   ; spr_A
- D 1 - I - 0x006F60 01:AF50: F4        .byte $F4, $F0, $D9   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x006F63 01:AF53: FC        .byte $FC, $F0, $DB   ; 
- D 1 - I - 0x006F66 01:AF56: FC        .byte $FC, $00, $D5   ; 
- D 1 - I - 0x006F69 01:AF59: 04        .byte $04, $00, $D7   ; 
- D 1 - I - 0x006F6C 01:AF5C: F4        .byte $F4, $00, $D3   ; 
- D 1 - I - 0x006F6F 01:AF5F: 04        .byte $04, $F0, $D1   ; 



_off007_27_AF62_0E:
@start:
; 00 
- D 1 - I - 0x006F72 01:AF62: 08        .byte $08   ; 
- D 1 - I - 0x006F73 01:AF63: D8        .byte off_AF3A + $100 - @start   ; 
; 01 
- D 1 - I - 0x006F74 01:AF64: 08        .byte $08   ; 
- D 1 - I - 0x006F75 01:AF65: EC        .byte off_AF4E + $100 - @start   ; 
; 02 
- D 1 - I - 0x006F76 01:AF66: 08        .byte $08   ; 
- D 1 - I - 0x006F77 01:AF67: D8        .byte off_AF3A + $100 - @start   ; 
; 03 
- D 1 - I - 0x006F78 01:AF68: 08        .byte $08   ; 
- D 1 - I - 0x006F79 01:AF69: EC        .byte off_AF4E + $100 - @start   ; 
; 04 
- D 1 - I - 0x006F7A 01:AF6A: FF        .byte $FF   ; 
- D 1 - I - 0x006F7B 01:AF6B: D8        .byte off_AF3A + $100 - @start   ; 



off_AF6C:
- D 1 - I - 0x006F7C 01:AF6C: 07        .byte $07   ; counter
- D 1 - I - 0x006F7D 01:AF6D: FE        .byte $FE, $DC, $81, $00   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x006F81 01:AF71: 08        .byte $08, $00, $A7, $03   ; 
- D 1 - I - 0x006F85 01:AF75: 00        .byte $00, $00, $A5, $03   ; 
- D 1 - I - 0x006F89 01:AF79: F8        .byte $F8, $00, $A3, $03   ; 
- D 1 - I - 0x006F8D 01:AF7D: 08        .byte $08, $F0, $91, $03   ; 
- D 1 - I - 0x006F91 01:AF81: 00        .byte $00, $F0, $85, $03   ; 
- D 1 - I - 0x006F95 01:AF85: F8        .byte $F8, $F0, $83, $03   ; 



_off007_27_AF89_0F:
@start:
; 00 
- D 1 - I - 0x006F99 01:AF89: 20        .byte $20   ; 
- D 1 - I - 0x006F9A 01:AF8A: E3        .byte off_AF6C + $100 - @start   ; 
; 01 
- D 1 - I - 0x006F9B 01:AF8B: FF        .byte $FF   ; 
- D 1 - I - 0x006F9C 01:AF8C: E3        .byte off_AF6C + $100 - @start   ; 



off_AF8D:
- D 1 - I - 0x006F9D 01:AF8D: 0C        .byte $0C   ; counter
- D 1 - I - 0x006F9E 01:AF8E: D8        .byte $D8, $F4, $ED, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x006FA2 01:AF92: E0        .byte $E0, $F4, $EF, $01   ; 
- D 1 - I - 0x006FA6 01:AF96: E4        .byte $E4, $00, $D7, $02   ; 
- D 1 - I - 0x006FAA 01:AF9A: EC        .byte $EC, $00, $D9, $02   ; 
- D 1 - I - 0x006FAE 01:AF9E: F4        .byte $F4, $00, $CF, $01   ; 
- D 1 - I - 0x006FB2 01:AFA2: 04        .byte $04, $00, $CD, $01   ; 
- D 1 - I - 0x006FB6 01:AFA6: FC        .byte $FC, $00, $CB, $01   ; 
- D 1 - I - 0x006FBA 01:AFAA: E4        .byte $E4, $F0, $D1, $02   ; 
- D 1 - I - 0x006FBE 01:AFAE: EC        .byte $EC, $F0, $D3, $02   ; 
- D 1 - I - 0x006FC2 01:AFB2: F4        .byte $F4, $F0, $D5, $01   ; 
- D 1 - I - 0x006FC6 01:AFB6: FC        .byte $FC, $F0, $9D, $01   ; 
- D 1 - I - 0x006FCA 01:AFBA: 04        .byte $04, $F0, $9F, $01   ; 



off_AFBE:
- D 1 - I - 0x006FCE 01:AFBE: 0C        .byte $0C   ; counter
- D 1 - I - 0x006FCF 01:AFBF: D8        .byte $D8, $F4, $F1, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x006FD3 01:AFC3: E0        .byte $E0, $F4, $F3, $01   ; 
- D 1 - I - 0x006FD7 01:AFC7: E4        .byte $E4, $00, $D7, $02   ; 
- D 1 - I - 0x006FDB 01:AFCB: EC        .byte $EC, $00, $D9, $02   ; 
- D 1 - I - 0x006FDF 01:AFCF: F4        .byte $F4, $00, $CF, $01   ; 
- D 1 - I - 0x006FE3 01:AFD3: 04        .byte $04, $00, $CD, $01   ; 
- D 1 - I - 0x006FE7 01:AFD7: FC        .byte $FC, $00, $CB, $01   ; 
- D 1 - I - 0x006FEB 01:AFDB: E4        .byte $E4, $F0, $D1, $02   ; 
- D 1 - I - 0x006FEF 01:AFDF: EC        .byte $EC, $F0, $D3, $02   ; 
- D 1 - I - 0x006FF3 01:AFE3: F4        .byte $F4, $F0, $D5, $01   ; 
- D 1 - I - 0x006FF7 01:AFE7: FC        .byte $FC, $F0, $9D, $01   ; 
- D 1 - I - 0x006FFB 01:AFEB: 04        .byte $04, $F0, $9F, $01   ; 



off_AFEF:
- D 1 - I - 0x006FFF 01:AFEF: 0C        .byte $0C   ; counter
- D 1 - I - 0x007000 01:AFF0: D8        .byte $D8, $F4, $F5, $01   ; spr_X, spr_Y, spr_T, spr_A
- D 1 - I - 0x007004 01:AFF4: E0        .byte $E0, $F4, $F7, $01   ; 
- D 1 - I - 0x007008 01:AFF8: E4        .byte $E4, $00, $D7, $02   ; 
- D 1 - I - 0x00700C 01:AFFC: EC        .byte $EC, $00, $D9, $02   ; 
- D 1 - I - 0x007010 01:B000: F4        .byte $F4, $00, $CF, $01   ; 
- D 1 - I - 0x007014 01:B004: 04        .byte $04, $00, $CD, $01   ; 
- D 1 - I - 0x007018 01:B008: FC        .byte $FC, $00, $CB, $01   ; 
- D 1 - I - 0x00701C 01:B00C: E4        .byte $E4, $F0, $D1, $02   ; 
- D 1 - I - 0x007020 01:B010: EC        .byte $EC, $F0, $D3, $02   ; 
- D 1 - I - 0x007024 01:B014: F4        .byte $F4, $F0, $D5, $01   ; 
- D 1 - I - 0x007028 01:B018: FC        .byte $FC, $F0, $9D, $01   ; 
- D 1 - I - 0x00702C 01:B01C: 04        .byte $04, $F0, $9F, $01   ; 



_off007_27_B020_10:
@start:
; 00 
- D 1 - I - 0x007030 01:B020: 08        .byte $08   ; 
- D 1 - I - 0x007031 01:B021: 6D        .byte off_AF8D + $100 - @start   ; 
; 01 
- D 1 - I - 0x007032 01:B022: 08        .byte $08   ; 
- D 1 - I - 0x007033 01:B023: 9E        .byte off_AFBE + $100 - @start   ; 
; 02 
- D 1 - I - 0x007034 01:B024: 08        .byte $08   ; 
- D 1 - I - 0x007035 01:B025: CF        .byte off_AFEF + $100 - @start   ; 
; 03 
- D 1 - I - 0x007036 01:B026: FF        .byte $FF   ; 
- D 1 - I - 0x007037 01:B027: CF        .byte off_AFEF + $100 - @start   ; 



off_B028:
- D 1 - I - 0x007038 01:B028: 86        .byte $06 + $80   ; counter + compressed data flag
- D 1 - I - 0x007039 01:B029: 01        .byte $01   ; spr_A
- D 1 - I - 0x00703A 01:B02A: 04        .byte $04, $F0, $97   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x00703D 01:B02D: 04        .byte $04, $00, $B1   ; 
- D 1 - I - 0x007040 01:B030: F4        .byte $F4, $00, $AD   ; 
- D 1 - I - 0x007043 01:B033: FC        .byte $FC, $00, $AF   ; 
- D 1 - I - 0x007046 01:B036: F4        .byte $F4, $F0, $99   ; 
- D 1 - I - 0x007049 01:B039: FC        .byte $FC, $F0, $9B   ; 



off_B03C:
- D 1 - I - 0x00704C 01:B03C: 86        .byte $06 + $80   ; counter + compressed data flag
- D 1 - I - 0x00704D 01:B03D: 01        .byte $01   ; spr_A
- D 1 - I - 0x00704E 01:B03E: F4        .byte $F4, $00, $B3   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x007051 01:B041: FC        .byte $FC, $00, $B5   ; 
- D 1 - I - 0x007054 01:B044: 04        .byte $04, $00, $B7   ; 
- D 1 - I - 0x007057 01:B047: 04        .byte $04, $F0, $97   ; 
- D 1 - I - 0x00705A 01:B04A: F4        .byte $F4, $F0, $99   ; 
- D 1 - I - 0x00705D 01:B04D: FC        .byte $FC, $F0, $9B   ; 



_off007_27_B050_11:
@start:
; 00 
- D 1 - I - 0x007060 01:B050: 08        .byte $08   ; 
- D 1 - I - 0x007061 01:B051: D8        .byte off_B028 + $100 - @start   ; 
; 01 
- D 1 - I - 0x007062 01:B052: 08        .byte $08   ; 
- D 1 - I - 0x007063 01:B053: EC        .byte off_B03C + $100 - @start   ; 
; 02 
- D 1 - I - 0x007064 01:B054: 08        .byte $08   ; 
- D 1 - I - 0x007065 01:B055: D8        .byte off_B028 + $100 - @start   ; 
; 03 
- D 1 - I - 0x007066 01:B056: 08        .byte $08   ; 
- D 1 - I - 0x007067 01:B057: EC        .byte off_B03C + $100 - @start   ; 
; 04 
- D 1 - I - 0x007068 01:B058: FF        .byte $FF   ; 
- D 1 - I - 0x007069 01:B059: D8        .byte off_B028 + $100 - @start   ; 



off_B05A:
- D 1 - I - 0x00706A 01:B05A: 87        .byte $07 + $80   ; counter + compressed data flag
- D 1 - I - 0x00706B 01:B05B: 01        .byte $01   ; spr_A
- D 1 - I - 0x00706C 01:B05C: FA        .byte $FA, $00, $A5   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x00706F 01:B05F: 02        .byte $02, $00, $A7   ; 
- D 1 - I - 0x007072 01:B062: F2        .byte $F2, $00, $A3   ; 
- D 1 - I - 0x007075 01:B065: EA        .byte $EA, $F0, $81   ; 
- D 1 - I - 0x007078 01:B068: F2        .byte $F2, $F0, $83   ; 
- D 1 - I - 0x00707B 01:B06B: FA        .byte $FA, $F0, $85   ; 
- D 1 - I - 0x00707E 01:B06E: 02        .byte $02, $F0, $87   ; 



off_B071:
- D 1 - I - 0x007081 01:B071: 87        .byte $07 + $80   ; counter + compressed data flag
- D 1 - I - 0x007082 01:B072: 01        .byte $01   ; spr_A
- D 1 - I - 0x007083 01:B073: FA        .byte $FA, $00, $A9   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x007086 01:B076: 02        .byte $02, $00, $AB   ; 
- D 1 - I - 0x007089 01:B079: EA        .byte $EA, $F0, $89   ; 
- D 1 - I - 0x00708C 01:B07C: F2        .byte $F2, $F0, $8B   ; 
- D 1 - I - 0x00708F 01:B07F: F2        .byte $F2, $00, $A3   ; 
- D 1 - I - 0x007092 01:B082: FA        .byte $FA, $EF, $85   ; 
- D 1 - I - 0x007095 01:B085: 02        .byte $02, $EF, $87   ; 



off_B088:
- D 1 - I - 0x007098 01:B088: 87        .byte $07 + $80   ; counter + compressed data flag
- D 1 - I - 0x007099 01:B089: 01        .byte $01   ; spr_A
- D 1 - I - 0x00709A 01:B08A: FA        .byte $FA, $00, $A5   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x00709D 01:B08D: 02        .byte $02, $00, $A7   ; 
- D 1 - I - 0x0070A0 01:B090: EA        .byte $EA, $F0, $8D   ; 
- D 1 - I - 0x0070A3 01:B093: F2        .byte $F2, $F0, $8F   ; 
- D 1 - I - 0x0070A6 01:B096: F2        .byte $F2, $00, $A3   ; 
- D 1 - I - 0x0070A9 01:B099: FA        .byte $FA, $F0, $85   ; 
- D 1 - I - 0x0070AC 01:B09C: 02        .byte $02, $F0, $87   ; 



_off007_27_B09F_12:
@start:
; 00 
- D 1 - I - 0x0070AF 01:B09F: 05        .byte $05   ; 
- D 1 - I - 0x0070B0 01:B0A0: BB        .byte off_B05A + $100 - @start   ; 
; 01 
- D 1 - I - 0x0070B1 01:B0A1: 07        .byte $07   ; 
- D 1 - I - 0x0070B2 01:B0A2: D2        .byte off_B071 + $100 - @start   ; 
; 02 
- D 1 - I - 0x0070B3 01:B0A3: 09        .byte $09   ; 
- D 1 - I - 0x0070B4 01:B0A4: E9        .byte off_B088 + $100 - @start   ; 
; 03 
- D 1 - I - 0x0070B5 01:B0A5: FF        .byte $FF   ; 
- D 1 - I - 0x0070B6 01:B0A6: E9        .byte off_B088 + $100 - @start   ; 



off_B0A7:
- D 1 - I - 0x0070B7 01:B0A7: 8A        .byte $0A + $80   ; counter + compressed data flag
- D 1 - I - 0x0070B8 01:B0A8: 01        .byte $01   ; spr_A
- D 1 - I - 0x0070B9 01:B0A9: E4        .byte $E4, $FC, $ED   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0070BC 01:B0AC: EC        .byte $EC, $FC, $EF   ; 
- D 1 - I - 0x0070BF 01:B0AF: 00        .byte $00, $00, $B5   ; 
- D 1 - I - 0x0070C2 01:B0B2: 08        .byte $08, $00, $B7   ; 
- D 1 - I - 0x0070C5 01:B0B5: F0        .byte $F0, $00, $B1   ; 
- D 1 - I - 0x0070C8 01:B0B8: F8        .byte $F8, $00, $B3   ; 
- D 1 - I - 0x0070CB 01:B0BB: 00        .byte $00, $F0, $95   ; 
- D 1 - I - 0x0070CE 01:B0BE: 08        .byte $08, $F0, $97   ; 
- D 1 - I - 0x0070D1 01:B0C1: F0        .byte $F0, $F0, $91   ; 
- D 1 - I - 0x0070D4 01:B0C4: F8        .byte $F8, $F0, $93   ; 



off_B0C7:
- D 1 - I - 0x0070D7 01:B0C7: 8A        .byte $0A + $80   ; counter + compressed data flag
- D 1 - I - 0x0070D8 01:B0C8: 01        .byte $01   ; spr_A
- D 1 - I - 0x0070D9 01:B0C9: F1        .byte $F1, $F0, $99   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0070DC 01:B0CC: F9        .byte $F9, $F0, $9B   ; 
- D 1 - I - 0x0070DF 01:B0CF: E4        .byte $E4, $FC, $F1   ; 
- D 1 - I - 0x0070E2 01:B0D2: EC        .byte $EC, $FC, $F3   ; 
- D 1 - I - 0x0070E5 01:B0D5: 01        .byte $01, $00, $B5   ; 
- D 1 - I - 0x0070E8 01:B0D8: 09        .byte $09, $00, $B7   ; 
- D 1 - I - 0x0070EB 01:B0DB: F1        .byte $F1, $00, $B1   ; 
- D 1 - I - 0x0070EE 01:B0DE: F9        .byte $F9, $00, $B3   ; 
- D 1 - I - 0x0070F1 01:B0E1: 01        .byte $01, $F0, $95   ; 
- D 1 - I - 0x0070F4 01:B0E4: 09        .byte $09, $F0, $97   ; 



off_B0E7:
- D 1 - I - 0x0070F7 01:B0E7: 8A        .byte $0A + $80   ; counter + compressed data flag
- D 1 - I - 0x0070F8 01:B0E8: 01        .byte $01   ; spr_A
- D 1 - I - 0x0070F9 01:B0E9: F0        .byte $F0, $F0, $9D   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0070FC 01:B0EC: F8        .byte $F8, $F0, $9F   ; 
- D 1 - I - 0x0070FF 01:B0EF: E4        .byte $E4, $FC, $F5   ; 
- D 1 - I - 0x007102 01:B0F2: EC        .byte $EC, $FC, $F7   ; 
- D 1 - I - 0x007105 01:B0F5: 00        .byte $00, $00, $B5   ; 
- D 1 - I - 0x007108 01:B0F8: 08        .byte $08, $00, $B7   ; 
- D 1 - I - 0x00710B 01:B0FB: F0        .byte $F0, $00, $B1   ; 
- D 1 - I - 0x00710E 01:B0FE: F8        .byte $F8, $00, $B3   ; 
- D 1 - I - 0x007111 01:B101: 00        .byte $00, $F0, $95   ; 
- D 1 - I - 0x007114 01:B104: 08        .byte $08, $F0, $97   ; 



off_B107:
- D 1 - I - 0x007117 01:B107: 88        .byte $08 + $80   ; counter + compressed data flag
- D 1 - I - 0x007118 01:B108: 01        .byte $01   ; spr_A
- D 1 - I - 0x007119 01:B109: F0        .byte $F0, $F0, $B9   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x00711C 01:B10C: F8        .byte $F8, $F0, $BB   ; 
- D 1 - I - 0x00711F 01:B10F: 00        .byte $00, $00, $B5   ; 
- D 1 - I - 0x007122 01:B112: 08        .byte $08, $00, $B7   ; 
- D 1 - I - 0x007125 01:B115: F0        .byte $F0, $00, $B1   ; 
- D 1 - I - 0x007128 01:B118: F8        .byte $F8, $00, $B3   ; 
- D 1 - I - 0x00712B 01:B11B: 00        .byte $00, $F0, $95   ; 
- D 1 - I - 0x00712E 01:B11E: 08        .byte $08, $F0, $97   ; 



_off007_27_B121_14:
@start:
; 00 
- D 1 - I - 0x007131 01:B121: 08        .byte $08   ; 
- D 1 - I - 0x007132 01:B122: 86        .byte off_B0A7 + $100 - @start   ; 
; 01 
- D 1 - I - 0x007133 01:B123: 08        .byte $08   ; 
- D 1 - I - 0x007134 01:B124: A6        .byte off_B0C7 + $100 - @start   ; 
; 02 
- D 1 - I - 0x007135 01:B125: 08        .byte $08   ; 
- D 1 - I - 0x007136 01:B126: C6        .byte off_B0E7 + $100 - @start   ; 
; 03 
- D 1 - I - 0x007137 01:B127: FF        .byte $FF   ; 
- D 1 - I - 0x007138 01:B128: E6        .byte off_B107 + $100 - @start   ; 



off_B129:
- D 1 - I - 0x007139 01:B129: 88        .byte $08 + $80   ; counter + compressed data flag
- D 1 - I - 0x00713A 01:B12A: 01        .byte $01   ; spr_A
- D 1 - I - 0x00713B 01:B12B: F4        .byte $F4, $FC, $81   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x00713E 01:B12E: FC        .byte $FC, $FC, $83   ; 
- D 1 - I - 0x007141 01:B131: FE        .byte $FE, $01, $85   ; 
- D 1 - I - 0x007144 01:B134: 06        .byte $06, $01, $87   ; 
- D 1 - I - 0x007147 01:B137: 02        .byte $02, $F4, $8D   ; 
- D 1 - I - 0x00714A 01:B13A: 0A        .byte $0A, $F4, $8F   ; 
- D 1 - I - 0x00714D 01:B13D: F0        .byte $F0, $F5, $89   ; 
- D 1 - I - 0x007150 01:B140: F8        .byte $F8, $F5, $8B   ; 



off_B143:
- D 1 - I - 0x007153 01:B143: 8A        .byte $0A + $80   ; counter + compressed data flag
- D 1 - I - 0x007154 01:B144: 01        .byte $01   ; spr_A
- D 1 - I - 0x007155 01:B145: F6        .byte $F6, $04, $81   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x007158 01:B148: FE        .byte $FE, $04, $83   ; 
- D 1 - I - 0x00715B 01:B14B: EB        .byte $EB, $FD, $89   ; 
- D 1 - I - 0x00715E 01:B14E: F3        .byte $F3, $FD, $8B   ; 
- D 1 - I - 0x007161 01:B151: EE        .byte $EE, $F2, $8D   ; 
- D 1 - I - 0x007164 01:B154: F6        .byte $F6, $F2, $8F   ; 
- D 1 - I - 0x007167 01:B157: FE        .byte $FE, $F3, $89   ; 
- D 1 - I - 0x00716A 01:B15A: 06        .byte $06, $F3, $8B   ; 
- D 1 - I - 0x00716D 01:B15D: 00        .byte $00, $FD, $85   ; 
- D 1 - I - 0x007170 01:B160: 08        .byte $08, $FD, $87   ; 



off_B163:
- D 1 - I - 0x007173 01:B163: 8A        .byte $0A + $80   ; counter + compressed data flag
- D 1 - I - 0x007174 01:B164: 01        .byte $01   ; spr_A
- D 1 - I - 0x007175 01:B165: F6        .byte $F6, $ED, $81   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x007178 01:B168: FE        .byte $FE, $ED, $83   ; 
- D 1 - I - 0x00717B 01:B16B: EB        .byte $EB, $F2, $8D   ; 
- D 1 - I - 0x00717E 01:B16E: F3        .byte $F3, $F2, $8F   ; 
- D 1 - I - 0x007181 01:B171: F6        .byte $F6, $00, $8D   ; 
- D 1 - I - 0x007184 01:B174: FE        .byte $FE, $00, $8F   ; 
- D 1 - I - 0x007187 01:B177: 00        .byte $00, $EF, $89   ; 
- D 1 - I - 0x00718A 01:B17A: 08        .byte $08, $EF, $8B   ; 
- D 1 - I - 0x00718D 01:B17D: FD        .byte $FD, $FD, $85   ; 
- D 1 - I - 0x007190 01:B180: 05        .byte $05, $FD, $87   ; 



off_B183:
- D 1 - I - 0x007193 01:B183: 8A        .byte $0A + $80   ; counter + compressed data flag
- D 1 - I - 0x007194 01:B184: 01        .byte $01   ; spr_A
- D 1 - I - 0x007195 01:B185: F9        .byte $F9, $FA, $85   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x007198 01:B188: 01        .byte $01, $FA, $87   ; 
- D 1 - I - 0x00719B 01:B18B: 00        .byte $00, $F0, $81   ; 
- D 1 - I - 0x00719E 01:B18E: 08        .byte $08, $F0, $83   ; 
- D 1 - I - 0x0071A1 01:B191: F1        .byte $F1, $FD, $8D   ; 
- D 1 - I - 0x0071A4 01:B194: F9        .byte $F9, $FD, $8F   ; 
- D 1 - I - 0x0071A7 01:B197: 04        .byte $04, $FD, $89   ; 
- D 1 - I - 0x0071AA 01:B19A: 0C        .byte $0C, $FD, $8B   ; 
- D 1 - I - 0x0071AD 01:B19D: ED        .byte $ED, $F5, $85   ; 
- D 1 - I - 0x0071B0 01:B1A0: F5        .byte $F5, $F5, $87   ; 



off_B1A3:
- D 1 - I - 0x0071B3 01:B1A3: 88        .byte $08 + $80   ; counter + compressed data flag
- D 1 - I - 0x0071B4 01:B1A4: 01        .byte $01   ; spr_A
- D 1 - I - 0x0071B5 01:B1A5: F1        .byte $F1, $F1, $81   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0071B8 01:B1A8: F9        .byte $F9, $F1, $83   ; 
- D 1 - I - 0x0071BB 01:B1AB: F4        .byte $F4, $FB, $8D   ; 
- D 1 - I - 0x0071BE 01:B1AE: FC        .byte $FC, $FB, $8F   ; 
- D 1 - I - 0x0071C1 01:B1B1: FF        .byte $FF, $FF, $85   ; 
- D 1 - I - 0x0071C4 01:B1B4: 07        .byte $07, $FF, $87   ; 
- D 1 - I - 0x0071C7 01:B1B7: 03        .byte $03, $F3, $89   ; 
- D 1 - I - 0x0071CA 01:B1BA: 0B        .byte $0B, $F3, $8B   ; 



off_B1BD:
- D 1 - I - 0x0071CD 01:B1BD: 86        .byte $06 + $80   ; counter + compressed data flag
- D 1 - I - 0x0071CE 01:B1BE: 01        .byte $01   ; spr_A
- D 1 - I - 0x0071CF 01:B1BF: F5        .byte $F5, $FD, $8D   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0071D2 01:B1C2: FD        .byte $FD, $FD, $8F   ; 
- D 1 - I - 0x0071D5 01:B1C5: F5        .byte $F5, $F0, $89   ; 
- D 1 - I - 0x0071D8 01:B1C8: FD        .byte $FD, $F0, $8B   ; 
- D 1 - I - 0x0071DB 01:B1CB: FF        .byte $FF, $F7, $85   ; 
- D 1 - I - 0x0071DE 01:B1CE: 07        .byte $07, $F7, $87   ; 



off_B1D1:
- D 1 - I - 0x0071E1 01:B1D1: 86        .byte $06 + $80   ; counter + compressed data flag
- D 1 - I - 0x0071E2 01:B1D2: 01        .byte $01   ; spr_A
- D 1 - I - 0x0071E3 01:B1D3: F2        .byte $F2, $F7, $8D   ; spr_X, spr_Y, spr_T
- D 1 - I - 0x0071E6 01:B1D6: FA        .byte $FA, $F7, $8F   ; 
- D 1 - I - 0x0071E9 01:B1D9: FE        .byte $FE, $F6, $8D   ; 
- D 1 - I - 0x0071EC 01:B1DC: 06        .byte $06, $F6, $8F   ; 
- D 1 - I - 0x0071EF 01:B1DF: FB        .byte $FB, $FB, $89   ; 
- D 1 - I - 0x0071F2 01:B1E2: 03        .byte $03, $FB, $8B   ; 



_off007_08_B1E5_0F:
_off007_27_B1E5_02:
@start:
; 00 
- D 1 - I - 0x0071F5 01:B1E5: 0A        .byte $0A   ; 
- D 1 - I - 0x0071F6 01:B1E6: EC        .byte off_B1D1 + $100 - @start   ; 
; 01 
- D 1 - I - 0x0071F7 01:B1E7: 0A        .byte $0A   ; 
- D 1 - I - 0x0071F8 01:B1E8: 44        .byte off_B129 + $100 - @start   ; 
; 02 
- D 1 - I - 0x0071F9 01:B1E9: 0A        .byte $0A   ; 
- D 1 - I - 0x0071FA 01:B1EA: 5E        .byte off_B143 + $100 - @start   ; 
; 03 
- D 1 - I - 0x0071FB 01:B1EB: 0A        .byte $0A   ; 
- D 1 - I - 0x0071FC 01:B1EC: 7E        .byte off_B163 + $100 - @start   ; 
; 04 
- D 1 - I - 0x0071FD 01:B1ED: 0A        .byte $0A   ; 
- D 1 - I - 0x0071FE 01:B1EE: 9E        .byte off_B183 + $100 - @start   ; 
; 05 
- D 1 - I - 0x0071FF 01:B1EF: 0A        .byte $0A   ; 
- D 1 - I - 0x007200 01:B1F0: BE        .byte off_B1A3 + $100 - @start   ; 
; 06 
- D 1 - I - 0x007201 01:B1F1: 0A        .byte $0A   ; 
- D 1 - I - 0x007202 01:B1F2: D8        .byte off_B1BD + $100 - @start   ; 
; 07 
- D 1 - I - 0x007203 01:B1F3: 0A        .byte $0A   ; 
- D 1 - I - 0x007204 01:B1F4: EC        .byte off_B1D1 + $100 - @start   ; 
; 08 
- D 1 - I - 0x007205 01:B1F5: FF        .byte $FF   ; 
- D 1 - I - 0x007206 01:B1F6: EC        .byte off_B1D1 + $100 - @start   ; 



.export tbl_0x007207_index
tbl_0x007207_index:
- D 1 - - - 0x007207 01:B1F7: 00        .byte $00   ; 78
- D 1 - - - 0x007208 01:B1F8: 00        .byte $00   ; 79
- D 1 - - - 0x007209 01:B1F9: 02        .byte $02   ; 7A
- D 1 - - - 0x00720A 01:B1FA: 01        .byte $01   ; 7B
- D 1 - - - 0x00720B 01:B1FB: 00        .byte $00   ; 7C
- D 1 - - - 0x00720C 01:B1FC: 00        .byte $00   ; 7D
- D 1 - - - 0x00720D 01:B1FD: 02        .byte $02   ; 7E
- D 1 - - - 0x00720E 01:B1FE: 01        .byte $01   ; 7F
- D 1 - - - 0x00720F 01:B1FF: 00        .byte $00   ; 80
- D 1 - - - 0x007210 01:B200: 00        .byte $00   ; 81
- D 1 - - - 0x007211 01:B201: 01        .byte $01   ; 82
- D 1 - - - 0x007212 01:B202: 02        .byte $02   ; 83
- D 1 - - - 0x007213 01:B203: 04        .byte $04   ; 84
- D 1 - - - 0x007214 01:B204: 03        .byte $03   ; 85
- D 1 - - - 0x007215 01:B205: 02        .byte $02   ; 86
- D 1 - - - 0x007216 01:B206: 03        .byte $03   ; 87
- D 1 - - - 0x007217 01:B207: 04        .byte $04   ; 88
- D 1 - - - 0x007218 01:B208: 02        .byte $02   ; 89
- D 1 - - - 0x007219 01:B209: 01        .byte $01   ; 8A
- D 1 - - - 0x00721A 01:B20A: 00        .byte $00   ; 8B
- D 1 - - - 0x00721B 01:B20B: 00        .byte $00   ; 8C
- D 1 - - - 0x00721C 01:B20C: 00        .byte $00   ; 8D
- D 1 - - - 0x00721D 01:B20D: 00        .byte $00   ; 8E
- D 1 - - - 0x00721E 01:B20E: 01        .byte $01   ; 8F
- D 1 - - - 0x00721F 01:B20F: 02        .byte $02   ; 90
- D 1 - - - 0x007220 01:B210: 03        .byte $03   ; 91
- D 1 - - - 0x007221 01:B211: 02        .byte $02   ; 92
- D 1 - - - 0x007222 01:B212: 03        .byte $03   ; 93
- D 1 - - - 0x007223 01:B213: 03        .byte $03   ; 94
- D 1 - - - 0x007224 01:B214: 04        .byte $04   ; 95
- D 1 - - - 0x007225 01:B215: 04        .byte $04   ; 96
- D 1 - - - 0x007226 01:B216: 03        .byte $03   ; 97



.export tbl_0x007227_colors
tbl_0x007227_colors:
- D 1 - - - 0x007227 01:B217: 0F        .byte $0F   ; 00
- D 1 - - - 0x007228 01:B218: 03        .byte $03   ; 01
- D 1 - - - 0x007229 01:B219: 06        .byte $06   ; 02
- D 1 - - - 0x00722A 01:B21A: 16        .byte $16   ; 03
- D 1 - - - 0x00722B 01:B21B: 27        .byte $27   ; 04



.export tbl_0x00722C_colors
tbl_0x00722C_colors:
- D 1 - - - 0x00722C 01:B21C: 03        .byte $03   ; 00
- D 1 - - - 0x00722D 01:B21D: 07        .byte $07   ; 01
- D 1 - - - 0x00722E 01:B21E: 17        .byte $17   ; 02
- D 1 - - - 0x00722F 01:B21F: 27        .byte $27   ; 03
- D 1 - - - 0x007230 01:B220: 38        .byte $38   ; 04



.export tbl_0x007231_colors
tbl_0x007231_colors:
- D 1 - - - 0x007231 01:B221: 00        .byte $00   ; 00
- D 1 - - - 0x007232 01:B222: 20        .byte $20   ; 01
- D 1 - - - 0x007233 01:B223: 27        .byte $27   ; 02
- D 1 - - - 0x007234 01:B224: 38        .byte $38   ; 03
- D 1 - - - 0x007235 01:B225: 39        .byte $39   ; 04



.export off_0x007236_phone_call_screen
off_0x007236_phone_call_screen:
; professor is talking to felix by the phone
- D 1 - I - 0x007236 01:B226: 03        .byte $03, $00   ; counter and fill tile

- D 1 - I - 0x007238 01:B228: 83        .byte $83   ; counter and list of bytes
- D 1 - I - 0x007239 01:B229: 1D        .byte $1D, $00, $BA   ; 

- D 1 - I - 0x00723C 01:B22C: 03        .byte $03, $00   ; counter and fill tile

- D 1 - I - 0x00723E 01:B22E: 84        .byte $84   ; counter and list of bytes
- D 1 - I - 0x00723F 01:B22F: BB        .byte $BB, $36, $37, $BC   ; 

- D 1 - I - 0x007243 01:B233: 03        .byte $03, $00   ; counter and fill tile

- D 1 - I - 0x007245 01:B235: 83        .byte $83   ; counter and list of bytes
- D 1 - I - 0x007246 01:B236: BA        .byte $BA, $00, $1D   ; 

- D 1 - I - 0x007249 01:B239: 10        .byte $10, $00   ; counter and fill tile

- D 1 - I - 0x00724B 01:B23B: 83        .byte $83   ; counter and list of bytes
- D 1 - I - 0x00724C 01:B23C: 1D        .byte $1D, $00, $BA   ; 

- D 1 - I - 0x00724F 01:B23F: 03        .byte $03, $00   ; counter and fill tile

- D 1 - I - 0x007251 01:B241: 84        .byte $84   ; counter and list of bytes
- D 1 - I - 0x007252 01:B242: BB        .byte $BB, $36, $37, $BC   ; 

- D 1 - I - 0x007256 01:B246: 03        .byte $03, $00   ; counter and fill tile

- D 1 - I - 0x007258 01:B248: 83        .byte $83   ; counter and list of bytes
- D 1 - I - 0x007259 01:B249: BA        .byte $BA, $00, $1D   ; 

- D 1 - I - 0x00725C 01:B24C: 0F        .byte $0F, $00   ; counter and fill tile

- D 1 - I - 0x00725E 01:B24E: 99        .byte $99   ; counter and list of bytes
- D 1 - I - 0x00725F 01:B24F: 02        .byte $02, $1D, $5B, $A7, $BD, $86, $87, $BB, $36, $37, $BC, $86, $87, $5B, $A7, $BD   ; 
- D 1 - I - 0x00726F 01:B25F: 1D        .byte $1D, $03, $00, $00, $0D, $00, $1E, $00, $0D   ; 

- D 1 - I - 0x007278 01:B268: 07        .byte $07, $00   ; counter and fill tile

- D 1 - I - 0x00727A 01:B26A: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x00727B 01:B26B: 4D        .byte $4D   ; 

- D 1 - I - 0x00727C 01:B26C: 10        .byte $10, $4E   ; counter and fill tile

- D 1 - I - 0x00727E 01:B26E: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x00727F 01:B26F: 4F        .byte $4F   ; 

- D 1 - I - 0x007280 01:B270: 0A        .byte $0A, $00   ; counter and fill tile

- D 1 - I - 0x007282 01:B272: 85        .byte $85   ; counter and list of bytes
- D 1 - I - 0x007283 01:B273: 1E        .byte $1E, $00, $00, $02, $5D   ; 

- D 1 - I - 0x007288 01:B278: 10        .byte $10, $1F   ; counter and fill tile

- D 1 - I - 0x00728A 01:B27A: 87        .byte $87   ; counter and list of bytes
- D 1 - I - 0x00728B 01:B27B: 5F        .byte $5F, $03, $00, $05, $06, $07, $08   ; 

- D 1 - I - 0x007292 01:B282: 07        .byte $07, $00   ; counter and fill tile

- D 1 - I - 0x007294 01:B284: 82        .byte $82   ; counter and list of bytes
- D 1 - I - 0x007295 01:B285: 16        .byte $16, $5D   ; 

- D 1 - I - 0x007297 01:B287: 10        .byte $10, $1F   ; counter and fill tile

- D 1 - I - 0x007299 01:B289: 87        .byte $87   ; counter and list of bytes
- D 1 - I - 0x00729A 01:B28A: 5F        .byte $5F, $17, $00, $15, $1F, $1F, $18   ; 

- D 1 - I - 0x0072A1 01:B291: 07        .byte $07, $00   ; counter and fill tile

- D 1 - I - 0x0072A3 01:B293: 82        .byte $82   ; counter and list of bytes
- D 1 - I - 0x0072A4 01:B294: 1D        .byte $1D, $5D   ; 

- D 1 - I - 0x0072A6 01:B296: 10        .byte $10, $1F   ; counter and fill tile

- D 1 - I - 0x0072A8 01:B298: 87        .byte $87   ; counter and list of bytes
- D 1 - I - 0x0072A9 01:B299: 5F        .byte $5F, $1D, $00, $01, $1F, $1F, $04   ; 

- D 1 - I - 0x0072B0 01:B2A0: 07        .byte $07, $00   ; counter and fill tile

- D 1 - I - 0x0072B2 01:B2A2: 82        .byte $82   ; counter and list of bytes
- D 1 - I - 0x0072B3 01:B2A3: 1D        .byte $1D, $5D   ; 

- D 1 - I - 0x0072B5 01:B2A5: 10        .byte $10, $1F   ; counter and fill tile

- D 1 - I - 0x0072B7 01:B2A7: 87        .byte $87   ; counter and list of bytes
- D 1 - I - 0x0072B8 01:B2A8: 5F        .byte $5F, $1D, $00, $11, $12, $13, $14   ; 

- D 1 - I - 0x0072BF 01:B2AF: 07        .byte $07, $00   ; counter and fill tile

- D 1 - I - 0x0072C1 01:B2B1: 82        .byte $82   ; counter and list of bytes
- D 1 - I - 0x0072C2 01:B2B2: 1D        .byte $1D, $5D   ; 

- D 1 - I - 0x0072C4 01:B2B4: 10        .byte $10, $1F   ; counter and fill tile

- D 1 - I - 0x0072C6 01:B2B6: 88        .byte $88   ; counter and list of bytes
- D 1 - I - 0x0072C7 01:B2B7: 5F        .byte $5F, $1D, $00, $0D, $00, $1E, $00, $0D   ; 

- D 1 - I - 0x0072CF 01:B2BF: 06        .byte $06, $00   ; counter and fill tile

- D 1 - I - 0x0072D1 01:B2C1: 82        .byte $82   ; counter and list of bytes
- D 1 - I - 0x0072D2 01:B2C2: 1D        .byte $1D, $5D   ; 

- D 1 - I - 0x0072D4 01:B2C4: 10        .byte $10, $1F   ; counter and fill tile

- D 1 - I - 0x0072D6 01:B2C6: 88        .byte $88   ; counter and list of bytes
- D 1 - I - 0x0072D7 01:B2C7: 5F        .byte $5F, $1D, $00, $0D, $00, $4B, $00, $0D   ; 

- D 1 - I - 0x0072DF 01:B2CF: 06        .byte $06, $00   ; counter and fill tile

- D 1 - I - 0x0072E1 01:B2D1: 82        .byte $82   ; counter and list of bytes
- D 1 - I - 0x0072E2 01:B2D2: 83        .byte $83, $5D   ; 

- D 1 - I - 0x0072E4 01:B2D4: 10        .byte $10, $1F   ; counter and fill tile

- D 1 - I - 0x0072E6 01:B2D6: 82        .byte $82   ; counter and list of bytes
- D 1 - I - 0x0072E7 01:B2D7: 5F        .byte $5F, $84   ; 

- D 1 - I - 0x0072E9 01:B2D9: 05        .byte $05, $00   ; counter and fill tile

- D 1 - I - 0x0072EB 01:B2DB: 89        .byte $89   ; counter and list of bytes
- D 1 - I - 0x0072EC 01:B2DC: 29        .byte $29, $2A, $2B, $2C, $4B, $00, $09, $0A, $6D   ; 

- D 1 - I - 0x0072F5 01:B2E5: 10        .byte $10, $6E   ; counter and fill tile

- D 1 - I - 0x0072F7 01:B2E7: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x0072F8 01:B2E8: 6F        .byte $6F   ; 

- D 1 - I - 0x0072F9 01:B2E9: 06        .byte $06, $38   ; counter and fill tile

- D 1 - I - 0x0072FB 01:B2EB: 8B        .byte $8B   ; counter and list of bytes
- D 1 - I - 0x0072FC 01:B2EC: 39        .byte $39, $3A, $3A, $3C, $0B, $0C, $19, $1A, $48, $96, $97   ; 

- D 1 - I - 0x007307 01:B2F7: 0C        .byte $0C, $A5   ; counter and fill tile

- D 1 - I - 0x007309 01:B2F9: 82        .byte $82   ; counter and list of bytes
- D 1 - I - 0x00730A 01:B2FA: AD        .byte $AD, $A4   ; 

- D 1 - I - 0x00730C 01:B2FC: 07        .byte $07, $48   ; counter and fill tile

- D 1 - I - 0x00730E 01:B2FE: 86        .byte $86   ; counter and list of bytes
- D 1 - I - 0x00730F 01:B2FF: 49        .byte $49, $4A, $4A, $4C, $1B, $1C   ; 

- D 1 - I - 0x007315 01:B305: 03        .byte $03, $48   ; counter and fill tile

- D 1 - I - 0x007317 01:B307: 86        .byte $86   ; counter and list of bytes
- D 1 - I - 0x007318 01:B308: A6        .byte $A6, $A3, $95, $23, $23, $93   ; 

- D 1 - I - 0x00731E 01:B30E: 04        .byte $04, $24   ; counter and fill tile

- D 1 - I - 0x007320 01:B310: 86        .byte $86   ; counter and list of bytes
- D 1 - I - 0x007321 01:B311: 95        .byte $95, $23, $23, $93, $A6, $A3   ; 

- D 1 - I - 0x007327 01:B317: 07        .byte $07, $48   ; counter and fill tile

- D 1 - I - 0x007329 01:B319: 84        .byte $84   ; counter and list of bytes
- D 1 - I - 0x00732A 01:B31A: 59        .byte $59, $5A, $5A, $5C   ; 

- D 1 - I - 0x00732E 01:B31E: 22        .byte $22, $48   ; counter and fill tile
- D 1 - I - 0x007330 01:B320: 20        .byte $20, $1F   ; counter and fill tile
- D 1 - I - 0x007332 01:B322: 20        .byte $20, $10   ; counter and fill tile
- D 1 - I - 0x007334 01:B324: 04        .byte $04, $26   ; counter and fill tile

- D 1 - I - 0x007336 01:B326: 83        .byte $83   ; counter and list of bytes
- D 1 - I - 0x007337 01:B327: 80        .byte $80, $81, $82   ; 

- D 1 - I - 0x00733A 01:B32A: 1D        .byte $1D, $26   ; counter and fill tile

- D 1 - I - 0x00733C 01:B32C: 83        .byte $83   ; counter and list of bytes
- D 1 - I - 0x00733D 01:B32D: 90        .byte $90, $91, $92   ; 

- D 1 - I - 0x007340 01:B330: 13        .byte $13, $26   ; counter and fill tile

- D 1 - I - 0x007342 01:B332: 82        .byte $82   ; counter and list of bytes
- D 1 - I - 0x007343 01:B333: 30        .byte $30, $30   ; 

- D 1 - I - 0x007345 01:B335: 08        .byte $08, $26   ; counter and fill tile

- D 1 - I - 0x007347 01:B337: 83        .byte $83   ; counter and list of bytes
- D 1 - I - 0x007348 01:B338: A0        .byte $A0, $A1, $A2   ; 

- D 1 - I - 0x00734B 01:B33B: 12        .byte $12, $26   ; counter and fill tile
- D 1 - I - 0x00734D 01:B33D: 04        .byte $04, $30   ; counter and fill tile
- D 1 - I - 0x00734F 01:B33F: 1C        .byte $1C, $26   ; counter and fill tile

- D 1 - I - 0x007351 01:B341: 84        .byte $84   ; counter and list of bytes
- D 1 - I - 0x007352 01:B342: 30        .byte $30, $7E, $7F, $30   ; 

- D 1 - I - 0x007356 01:B346: 18        .byte $18, $26   ; counter and fill tile

- D 1 - I - 0x007358 01:B348: 88        .byte $88   ; counter and list of bytes
- D 1 - I - 0x007359 01:B349: 69        .byte $69, $6A, $6B, $26, $30, $8E, $8F, $30   ; 

- D 1 - I - 0x007361 01:B351: 0E        .byte $0E, $26   ; counter and fill tile

- D 1 - I - 0x007363 01:B353: 85        .byte $85   ; counter and list of bytes
- D 1 - I - 0x007364 01:B354: 31        .byte $31, $32, $33, $34, $35   ; 

- D 1 - I - 0x007369 01:B359: 05        .byte $05, $26   ; counter and fill tile

- D 1 - I - 0x00736B 01:B35B: 87        .byte $87   ; counter and list of bytes
- D 1 - I - 0x00736C 01:B35C: 79        .byte $79, $7A, $7B, $26, $26, $9E, $9F   ; 

- D 1 - I - 0x007373 01:B363: 0D        .byte $0D, $26   ; counter and fill tile

- D 1 - I - 0x007375 01:B365: 93        .byte $93   ; counter and list of bytes
- D 1 - I - 0x007376 01:B366: 85        .byte $85, $40, $41, $42, $43, $44, $45, $46, $47, $26, $26, $88, $89, $8A, $8B, $8C   ; 
- D 1 - I - 0x007386 01:B376: 26        .byte $26, $AE, $AF   ; 

- D 1 - I - 0x007389 01:B379: 04        .byte $04, $26   ; counter and fill tile
- D 1 - I - 0x00738B 01:B37B: 09        .byte $09, $28   ; counter and fill tile

- D 1 - I - 0x00738D 01:B37D: 82        .byte $82   ; counter and list of bytes
- D 1 - I - 0x00738E 01:B37E: 94        .byte $94, $50   ; 

- D 1 - I - 0x007390 01:B380: 06        .byte $06, $51   ; counter and fill tile

- D 1 - I - 0x007392 01:B382: 8B        .byte $8B   ; counter and list of bytes
- D 1 - I - 0x007393 01:B383: 57        .byte $57, $28, $28, $98, $99, $9A, $9B, $9C, $28, $BE, $BF   ; 

- D 1 - I - 0x00739E 01:B38E: 04        .byte $04, $28   ; counter and fill tile
- D 1 - I - 0x0073A0 01:B390: 0A        .byte $0A, $27   ; counter and fill tile

- D 1 - I - 0x0073A2 01:B392: 82        .byte $82   ; counter and list of bytes
- D 1 - I - 0x0073A3 01:B393: 60        .byte $60, $61   ; 

- D 1 - I - 0x0073A5 01:B395: 04        .byte $04, $62   ; counter and fill tile

- D 1 - I - 0x0073A7 01:B397: 8C        .byte $8C   ; counter and list of bytes
- D 1 - I - 0x0073A8 01:B398: 66        .byte $66, $67, $27, $27, $A8, $A9, $AA, $AB, $AC, $27, $0E, $0F   ; 

- D 1 - I - 0x0073B4 01:B3A4: 0E        .byte $0E, $27   ; counter and fill tile

- D 1 - I - 0x0073B6 01:B3A6: 82        .byte $82   ; counter and list of bytes
- D 1 - I - 0x0073B7 01:B3A7: 70        .byte $70, $71   ; 

- D 1 - I - 0x0073B9 01:B3A9: 04        .byte $04, $72   ; counter and fill tile

- D 1 - I - 0x0073BB 01:B3AB: 82        .byte $82   ; counter and list of bytes
- D 1 - I - 0x0073BC 01:B3AC: 76        .byte $76, $77   ; 

- D 1 - I - 0x0073BE 01:B3AE: 6E        .byte $6E, $27   ; counter and fill tile
- D 1 - I - 0x0073C0 01:B3B0: 08        .byte $08, $AA   ; counter and fill tile

- D 1 - I - 0x0073C2 01:B3B2: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x0073C3 01:B3B3: 66        .byte $66   ; 

- D 1 - I - 0x0073C4 01:B3B4: 04        .byte $04, $55   ; counter and fill tile
- D 1 - I - 0x0073C6 01:B3B6: 03        .byte $03, $AA   ; counter and fill tile

- D 1 - I - 0x0073C8 01:B3B8: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x0073C9 01:B3B9: 66        .byte $66   ; 

- D 1 - I - 0x0073CA 01:B3BA: 04        .byte $04, $55   ; counter and fill tile
- D 1 - I - 0x0073CC 01:B3BC: 0B        .byte $0B, $AA   ; counter and fill tile
- D 1 - I - 0x0073CE 01:B3BE: 20        .byte $20, $00   ; counter and fill tile

- D 1 - I - 0x0073D0 01:B3C0: 00        .byte $00   ; end token



.export off_0x0073D1_felix_world_screen
off_0x0073D1_felix_world_screen:
; screen between rounds
- D 1 - I - 0x0073D1 01:B3C1: 42        .byte $42, $70   ; counter and fill tile

- D 1 - I - 0x0073D3 01:B3C3: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x0073D4 01:B3C4: 03        .byte $03   ; 

- D 1 - I - 0x0073D5 01:B3C5: 1A        .byte $1A, $04   ; counter and fill tile

- D 1 - I - 0x0073D7 01:B3C7: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x0073D8 01:B3C8: 05        .byte $05   ; 

- D 1 - I - 0x0073D9 01:B3C9: 04        .byte $04, $70   ; counter and fill tile

- D 1 - I - 0x0073DB 01:B3CB: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x0073DC 01:B3CC: 13        .byte $13   ; 

- D 1 - I - 0x0073DD 01:B3CD: 1A        .byte $1A, $14   ; counter and fill tile

- D 1 - I - 0x0073DF 01:B3CF: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x0073E0 01:B3D0: 13        .byte $13   ; 

- D 1 - I - 0x0073E1 01:B3D1: 04        .byte $04, $70   ; counter and fill tile

- D 1 - I - 0x0073E3 01:B3D3: 9C        .byte $9C   ; counter and list of bytes
- D 1 - I - 0x0073E4 01:B3D4: 13        .byte $13, $14, $16, $06, $14, $E0, $E1, $E2, $E3, $E4, $E5, $E6, $E7, $14, $14, $E8   ; 
- D 1 - I - 0x0073F4 01:B3E4: E9        .byte $E9, $EA, $EB, $EC, $ED, $EE, $EF, $CF, $16, $06, $14, $13   ; 

- D 1 - I - 0x007400 01:B3F0: 04        .byte $04, $70   ; counter and fill tile

- D 1 - I - 0x007402 01:B3F2: 9C        .byte $9C   ; counter and list of bytes
- D 1 - I - 0x007403 01:B3F3: 13        .byte $13, $14, $20, $30, $14, $F0, $F1, $F2, $F3, $F4, $F5, $F6, $F7, $14, $14, $F8   ; 
- D 1 - I - 0x007413 01:B403: F9        .byte $F9, $FA, $FB, $FC, $FD, $FE, $FF, $DF, $20, $30, $14, $13   ; 

- D 1 - I - 0x00741F 01:B40F: 04        .byte $04, $70   ; counter and fill tile

- D 1 - I - 0x007421 01:B411: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x007422 01:B412: 13        .byte $13   ; 

- D 1 - I - 0x007423 01:B413: 04        .byte $04, $14   ; counter and fill tile

- D 1 - I - 0x007425 01:B415: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x007426 01:B416: 49        .byte $49   ; 

- D 1 - I - 0x007427 01:B417: 05        .byte $05, $70   ; counter and fill tile

- D 1 - I - 0x007429 01:B419: 85        .byte $85   ; counter and list of bytes
- D 1 - I - 0x00742A 01:B41A: 21        .byte $21, $22, $23, $24, $25   ; 

- D 1 - I - 0x00742F 01:B41F: 06        .byte $06, $70   ; counter and fill tile

- D 1 - I - 0x007431 01:B421: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x007432 01:B422: 4A        .byte $4A   ; 

- D 1 - I - 0x007433 01:B423: 04        .byte $04, $14   ; counter and fill tile

- D 1 - I - 0x007435 01:B425: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x007436 01:B426: 13        .byte $13   ; 

- D 1 - I - 0x007437 01:B427: 04        .byte $04, $70   ; counter and fill tile

- D 1 - I - 0x007439 01:B429: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x00743A 01:B42A: 13        .byte $13   ; 

- D 1 - I - 0x00743B 01:B42B: 04        .byte $04, $14   ; counter and fill tile

- D 1 - I - 0x00743D 01:B42D: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x00743E 01:B42E: 49        .byte $49   ; 

- D 1 - I - 0x00743F 01:B42F: 05        .byte $05, $70   ; counter and fill tile

- D 1 - I - 0x007441 01:B431: 85        .byte $85   ; counter and list of bytes
- D 1 - I - 0x007442 01:B432: 31        .byte $31, $32, $33, $34, $35   ; 

- D 1 - I - 0x007447 01:B437: 06        .byte $06, $70   ; counter and fill tile

- D 1 - I - 0x007449 01:B439: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x00744A 01:B43A: 4A        .byte $4A   ; 

- D 1 - I - 0x00744B 01:B43B: 04        .byte $04, $14   ; counter and fill tile

- D 1 - I - 0x00744D 01:B43D: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x00744E 01:B43E: 13        .byte $13   ; 

- D 1 - I - 0x00744F 01:B43F: 04        .byte $04, $70   ; counter and fill tile

- D 1 - I - 0x007451 01:B441: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x007452 01:B442: 13        .byte $13   ; 

- D 1 - I - 0x007453 01:B443: 04        .byte $04, $14   ; counter and fill tile

- D 1 - I - 0x007455 01:B445: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x007456 01:B446: 49        .byte $49   ; 

- D 1 - I - 0x007457 01:B447: 05        .byte $05, $70   ; counter and fill tile

- D 1 - I - 0x007459 01:B449: 87        .byte $87   ; counter and list of bytes
- D 1 - I - 0x00745A 01:B44A: 41        .byte $41, $42, $43, $44, $45, $01, $02   ; 

- D 1 - I - 0x007461 01:B451: 04        .byte $04, $70   ; counter and fill tile

- D 1 - I - 0x007463 01:B453: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x007464 01:B454: 4A        .byte $4A   ; 

- D 1 - I - 0x007465 01:B455: 04        .byte $04, $14   ; counter and fill tile

- D 1 - I - 0x007467 01:B457: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x007468 01:B458: 13        .byte $13   ; 

- D 1 - I - 0x007469 01:B459: 04        .byte $04, $70   ; counter and fill tile

- D 1 - I - 0x00746B 01:B45B: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x00746C 01:B45C: 13        .byte $13   ; 

- D 1 - I - 0x00746D 01:B45D: 04        .byte $04, $14   ; counter and fill tile

- D 1 - I - 0x00746F 01:B45F: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x007470 01:B460: 49        .byte $49   ; 

- D 1 - I - 0x007471 01:B461: 05        .byte $05, $10   ; counter and fill tile

- D 1 - I - 0x007473 01:B463: 87        .byte $87   ; counter and list of bytes
- D 1 - I - 0x007474 01:B464: 51        .byte $51, $52, $53, $54, $55, $11, $12   ; 

- D 1 - I - 0x00747B 01:B46B: 04        .byte $04, $10   ; counter and fill tile

- D 1 - I - 0x00747D 01:B46D: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x00747E 01:B46E: 4A        .byte $4A   ; 

- D 1 - I - 0x00747F 01:B46F: 04        .byte $04, $14   ; counter and fill tile

- D 1 - I - 0x007481 01:B471: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x007482 01:B472: 13        .byte $13   ; 

- D 1 - I - 0x007483 01:B473: 04        .byte $04, $70   ; counter and fill tile

- D 1 - I - 0x007485 01:B475: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x007486 01:B476: 13        .byte $13   ; 

- D 1 - I - 0x007487 01:B477: 1A        .byte $1A, $14   ; counter and fill tile

- D 1 - I - 0x007489 01:B479: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x00748A 01:B47A: 13        .byte $13   ; 

- D 1 - I - 0x00748B 01:B47B: 04        .byte $04, $70   ; counter and fill tile

- D 1 - I - 0x00748D 01:B47D: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x00748E 01:B47E: 40        .byte $40   ; 

- D 1 - I - 0x00748F 01:B47F: 1A        .byte $1A, $50   ; counter and fill tile

- D 1 - I - 0x007491 01:B481: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x007492 01:B482: 60        .byte $60   ; 

- D 1 - I - 0x007493 01:B483: 2B        .byte $2B, $70   ; counter and fill tile

- D 1 - I - 0x007495 01:B485: 85        .byte $85   ; counter and list of bytes
- D 1 - I - 0x007496 01:B486: 07        .byte $07, $08, $09, $0A, $0B   ; 

- D 1 - I - 0x00749B 01:B48B: 03        .byte $03, $70   ; counter and fill tile

- D 1 - I - 0x00749D 01:B48D: 85        .byte $85   ; counter and list of bytes
- D 1 - I - 0x00749E 01:B48E: 17        .byte $17, $70, $5A, $70, $17   ; 

- D 1 - I - 0x0074A3 01:B493: 7F        .byte $7F, $70   ; counter and fill tile
- D 1 - I - 0x0074A5 01:B495: 66        .byte $66, $70   ; counter and fill tile

- D 1 - I - 0x0074A7 01:B497: 83        .byte $83   ; counter and list of bytes
- D 1 - I - 0x0074A8 01:B498: 0C        .byte $0C, $0D, $0E   ; 

- D 1 - I - 0x0074AB 01:B49B: 1D        .byte $1D, $70   ; counter and fill tile

- D 1 - I - 0x0074AD 01:B49D: A5        .byte $A5   ; counter and list of bytes
- D 1 - I - 0x0074AE 01:B49E: 0F        .byte $0F, $90, $80, $70, $70, $C0, $15, $C0, $15, $C0, $15, $C0, $15, $C0, $15, $C0   ; 
- D 1 - I - 0x0074BE 01:B4AE: 15        .byte $15, $C0, $15, $C0, $15, $C0, $15, $C0, $15, $C0, $15, $C0, $15, $C0, $15, $C0   ; 
- D 1 - I - 0x0074CE 01:B4BE: 15        .byte $15, $C0, $15, $C0, $15   ; 

- D 1 - I - 0x0074D3 01:B4C3: 20        .byte $20, $D0   ; counter and fill tile

- D 1 - I - 0x0074D5 01:B4C5: FF        .byte $FF   ; counter and list of bytes
- D 1 - I - 0x0074D6 01:B4C6: B0        .byte $B0, $A0, $B0, $A0, $B0, $A0, $B0, $A0, $B0, $A0, $B0, $A0, $B0, $A0, $B0, $A0   ; 
- D 1 - I - 0x0074E6 01:B4D6: B0        .byte $B0, $A0, $B0, $A0, $B0, $A0, $B0, $A0, $B0, $A0, $B0, $A0, $B0, $A0, $B0, $A0   ; 
- D 1 - I - 0x0074F6 01:B4E6: A0        .byte $A0, $B0, $A0, $B0, $A0, $B0, $A0, $B0, $A0, $B0, $A0, $B0, $A0, $B0, $A0, $B0   ; 
- D 1 - I - 0x007506 01:B4F6: A0        .byte $A0, $B0, $A0, $B0, $A0, $B0, $A0, $B0, $A0, $B0, $A0, $B0, $A0, $B0, $A0, $B0   ; 
- D 1 - I - 0x007516 01:B506: B0        .byte $B0, $A0, $B0, $A0, $B0, $A0, $B0, $A0, $B0, $A0, $B0, $A0, $B0, $A0, $B0, $A0   ; 
- D 1 - I - 0x007526 01:B516: B0        .byte $B0, $A0, $B0, $A0, $B0, $A0, $B0, $A0, $B0, $A0, $B0, $A0, $B0, $A0, $B0, $A0   ; 
- D 1 - I - 0x007536 01:B526: A0        .byte $A0, $B0, $A0, $B0, $A0, $B0, $A0, $B0, $A0, $B0, $A0, $B0, $A0, $B0, $A0, $B0   ; 
- D 1 - I - 0x007546 01:B536: A0        .byte $A0, $B0, $A0, $B0, $A0, $B0, $A0, $B0, $A0, $B0, $A0, $B0, $A0, $B0, $A0   ; 

- D 1 - I - 0x007555 01:B545: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x007556 01:B546: B0        .byte $B0   ; 

- D 1 - I - 0x007557 01:B547: 40        .byte $40, $14   ; counter and fill tile

- D 1 - I - 0x007559 01:B549: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x00755A 01:B54A: 40        .byte $40   ; 

- D 1 - I - 0x00755B 01:B54B: 06        .byte $06, $50   ; counter and fill tile

- D 1 - I - 0x00755D 01:B54D: 8A        .byte $8A   ; counter and list of bytes
- D 1 - I - 0x00755E 01:B54E: 10        .byte $10, $44, $03, $0C, $43, $4F, $57, $0C, $11, $44   ; 

- D 1 - I - 0x007568 01:B558: 03        .byte $03, $50   ; counter and fill tile

- D 1 - I - 0x00756A 01:B55A: 84        .byte $84   ; counter and list of bytes
- D 1 - I - 0x00756B 01:B55B: 54        .byte $54, $50, $50, $11   ; 

- D 1 - I - 0x00756F 01:B55F: 10        .byte $10, $55   ; counter and fill tile
- D 1 - I - 0x007571 01:B561: 08        .byte $08, $05   ; counter and fill tile
- D 1 - I - 0x007573 01:B563: 08        .byte $08, $55   ; counter and fill tile
- D 1 - I - 0x007575 01:B565: 08        .byte $08, $00   ; counter and fill tile

- D 1 - I - 0x007577 01:B567: 00        .byte $00   ; end token



.export tbl_0x007578_felix_world_image_tiles
tbl_0x007578_felix_world_image_tiles:
; image between rounds (00 is default and is not here)
; 01 
- D 1 - I - 0x007578 01:B568: 70        .byte $70, $70, $70, $70, $70, $70, $66, $67, $68, $69, $70, $70, $70, $70, $70, $70   ; 
- D 1 - I - 0x007588 01:B578: 70        .byte $70, $70, $01, $02, $70, $A5, $76, $77, $78, $79, $70, $70, $CA, $CA, $CA, $CA   ; 
- D 1 - I - 0x007598 01:B588: 70        .byte $70, $70, $11, $12, $70, $70, $86, $87, $88, $89, $70, $70, $70, $CA, $6A, $6A   ; 
- D 1 - I - 0x0075A8 01:B598: 70        .byte $70, $70, $70, $70, $70, $70, $96, $97, $98, $99, $70, $B5, $B5, $70, $70, $70   ; 
; 02 
- D 1 - I - 0x0075B8 01:B5A8: 70        .byte $70, $70, $70, $70, $70, $70, $2B, $2C, $2D, $2E, $2F, $70, $70, $70, $70, $70   ; 
- D 1 - I - 0x0075C8 01:B5B8: 70        .byte $70, $70, $70, $70, $01, $02, $3B, $3C, $3D, $3E, $3F, $70, $70, $70, $70, $70   ; 
- D 1 - I - 0x0075D8 01:B5C8: 70        .byte $70, $70, $70, $70, $11, $12, $4B, $4C, $4D, $4E, $4F, $70, $70, $70, $70, $70   ; 
- D 1 - I - 0x0075E8 01:B5D8: 70        .byte $70, $70, $70, $70, $70, $70, $5B, $5C, $5D, $5E, $70, $70, $70, $70, $70, $70   ; 
; 03 
- D 1 - I - 0x0075F8 01:B5E8: 70        .byte $70, $70, $70, $70, $70, $CA, $CA, $CA, $CA, $70, $BF, $63, $64, $65, $82, $70   ; 
- D 1 - I - 0x007608 01:B5F8: 70        .byte $70, $01, $02, $70, $61, $62, $81, $70, $CA, $CA, $70, $73, $74, $75, $70, $70   ; 
- D 1 - I - 0x007618 01:B608: 70        .byte $70, $11, $12, $70, $71, $72, $91, $70, $CA, $CA, $70, $83, $84, $85, $70, $70   ; 
- D 1 - I - 0x007628 01:B618: 70        .byte $70, $70, $70, $70, $70, $CA, $CA, $CA, $CA, $70, $70, $93, $94, $95, $70, $70   ; 
; 04 
- D 1 - I - 0x007638 01:B628: 70        .byte $70, $70, $70, $70, $70, $70, $A1, $A2, $A3, $AF, $70, $70, $70, $70, $70, $70   ; 
- D 1 - I - 0x007648 01:B638: 70        .byte $70, $70, $01, $02, $70, $D1, $B1, $B2, $B3, $B4, $70, $70, $70, $70, $70, $70   ; 
- D 1 - I - 0x007658 01:B648: 70        .byte $70, $70, $11, $12, $70, $D5, $C1, $C2, $C3, $C4, $70, $70, $70, $70, $70, $70   ; 
- D 1 - I - 0x007668 01:B658: 70        .byte $70, $70, $70, $70, $70, $70, $70, $D2, $D3, $D4, $70, $B5, $70, $B5, $B5, $70   ; 
; 05 
- D 1 - I - 0x007678 01:B668: 70        .byte $70, $70, $70, $70, $70, $70, $6B, $6C, $6D, $6E, $6F, $70, $70, $70, $70, $70   ; 
- D 1 - I - 0x007688 01:B678: 70        .byte $70, $70, $70, $70, $70, $7A, $7B, $7C, $7D, $7E, $7F, $9A, $6A, $6A, $6A, $70   ; 
- D 1 - I - 0x007698 01:B688: 70        .byte $70, $70, $70, $70, $70, $8A, $8B, $8C, $8D, $8E, $8F, $70, $9A, $6A, $6A, $6A   ; 
- D 1 - I - 0x0076A8 01:B698: 10        .byte $10, $10, $10, $10, $10, $10, $10, $9C, $9D, $9E, $9F, $10, $10, $10, $10, $10   ; 
; 06 
- D 1 - I - 0x0076B8 01:B6A8: 70        .byte $70, $70, $70, $26, $27, $28, $70, $26, $27, $28, $29, $26, $27, $28, $70, $70   ; 
- D 1 - I - 0x0076C8 01:B6B8: 70        .byte $70, $70, $2A, $36, $37, $38, $3A, $36, $37, $38, $39, $36, $37, $38, $3A, $70   ; 
- D 1 - I - 0x0076D8 01:B6C8: 70        .byte $70, $01, $02, $46, $47, $48, $70, $46, $47, $48, $70, $46, $47, $48, $70, $70   ; 
- D 1 - I - 0x0076E8 01:B6D8: 59        .byte $59, $11, $12, $56, $57, $58, $59, $56, $57, $58, $59, $56, $57, $58, $59, $59   ; 
; 07 
- D 1 - I - 0x0076F8 01:B6E8: 70        .byte $70, $70, $70, $70, $A6, $70, $A6, $A7, $A8, $A9, $AA, $5F, $70, $5F, $70, $70   ; 
- D 1 - I - 0x007708 01:B6F8: 70        .byte $70, $70, $70, $70, $70, $70, $B6, $B7, $B8, $B9, $BA, $70, $70, $70, $70, $70   ; 
- D 1 - I - 0x007718 01:B708: 70        .byte $70, $70, $CA, $CA, $CA, $CA, $C6, $C7, $C8, $C9, $CA, $CA, $CA, $CA, $70, $70   ; 
- D 1 - I - 0x007728 01:B718: 70        .byte $70, $70, $70, $70, $70, $70, $D6, $D7, $D8, $D9, $DA, $70, $70, $70, $70, $70   ; 
; 08 
- D 1 - I - 0x007738 01:B728: 70        .byte $70, $70, $70, $70, $70, $BF, $AB, $AC, $AD, $AE, $AF, $70, $70, $70, $70, $70   ; 
- D 1 - I - 0x007748 01:B738: 70        .byte $70, $70, $C5, $70, $70, $70, $BB, $BC, $BD, $BE, $70, $70, $70, $C5, $70, $70   ; 
- D 1 - I - 0x007758 01:B748: 70        .byte $70, $70, $70, $70, $C5, $70, $CB, $CC, $CD, $CE, $70, $C5, $70, $70, $70, $70   ; 
- D 1 - I - 0x007768 01:B758: 70        .byte $70, $70, $70, $70, $70, $70, $DB, $DC, $DD, $DE, $70, $70, $70, $70, $70, $70   ; 



.export tbl_0x007778
tbl_0x007778:
; 00 
- D 1 - I - 0x007778 01:B768: 5C        .byte $5C   ; 
- D 1 - I - 0x007779 01:B769: 53        .byte $53   ; 
- D 1 - I - 0x00777A 01:B76A: AF        .byte $AF   ; 
- D 1 - I - 0x00777B 01:B76B: 67        .byte $67   ; 
- D 1 - I - 0x00777C 01:B76C: 0C        .byte $0C   ; 
- D 1 - I - 0x00777D 01:B76D: 11        .byte $11   ; 
- D 1 - I - 0x00777E 01:B76E: 44        .byte $44   ; 
- D 1 - I - 0x00777F 01:B76F: 50        .byte $50   ; 
- D 1 - I - 0x007780 01:B770: 55        .byte $55   ; 
- D 1 - I - 0x007781 01:B771: 55        .byte $55   ; 
- D 1 - I - 0x007782 01:B772: 5A        .byte $5A   ; 
- D 1 - I - 0x007783 01:B773: 56        .byte $56   ; 
; 0C 
- D 1 - I - 0x007784 01:B774: 0C        .byte $0C   ; 
- D 1 - I - 0x007785 01:B775: 03        .byte $03   ; 
- D 1 - I - 0x007786 01:B776: 0F        .byte $0F   ; 
- D 1 - I - 0x007787 01:B777: 07        .byte $07   ; 
- D 1 - I - 0x007788 01:B778: 0C        .byte $0C   ; 
- D 1 - I - 0x007789 01:B779: 11        .byte $11   ; 
- D 1 - I - 0x00778A 01:B77A: 44        .byte $44   ; 
- D 1 - I - 0x00778B 01:B77B: 50        .byte $50   ; 
- D 1 - I - 0x00778C 01:B77C: 50        .byte $50   ; 
- D 1 - I - 0x00778D 01:B77D: 50        .byte $50   ; 
- D 1 - I - 0x00778E 01:B77E: 50        .byte $50   ; 
- D 1 - I - 0x00778F 01:B77F: 50        .byte $50   ; 



.export off_0x007790_game_over_screen
off_0x007790_game_over_screen:
- D 1 - I - 0x007790 01:B780: 82        .byte $82   ; counter and list of bytes
- D 1 - I - 0x007791 01:B781: 6D        .byte $6D, $6D   ; 

- D 1 - I - 0x007793 01:B783: 03        .byte $03, $6C   ; counter and fill tile

- D 1 - I - 0x007795 01:B785: 84        .byte $84   ; counter and list of bytes
- D 1 - I - 0x007796 01:B786: 6E        .byte $6E, $0D, $0D, $0F   ; 

- D 1 - I - 0x00779A 01:B78A: 11        .byte $11, $0D   ; counter and fill tile

- D 1 - I - 0x00779C 01:B78C: 82        .byte $82   ; counter and list of bytes
- D 1 - I - 0x00779D 01:B78D: 69        .byte $69, $6F   ; 

- D 1 - I - 0x00779F 01:B78F: 04        .byte $04, $68   ; counter and fill tile

- D 1 - I - 0x0077A1 01:B791: 86        .byte $86   ; counter and list of bytes
- D 1 - I - 0x0077A2 01:B792: 6D        .byte $6D, $6C, $68, $6C, $FC, $6E   ; 

- D 1 - I - 0x0077A8 01:B798: 03        .byte $03, $0D   ; counter and fill tile

- D 1 - I - 0x0077AA 01:B79A: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x0077AB 01:B79B: 0F        .byte $0F   ; 

- D 1 - I - 0x0077AC 01:B79C: 05        .byte $05, $0D   ; counter and fill tile

- D 1 - I - 0x0077AE 01:B79E: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x0077AF 01:B79F: 0E        .byte $0E   ; 

- D 1 - I - 0x0077B0 01:B7A0: 06        .byte $06, $0D   ; counter and fill tile

- D 1 - I - 0x0077B2 01:B7A2: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x0077B3 01:B7A3: 0F        .byte $0F   ; 

- D 1 - I - 0x0077B4 01:B7A4: 03        .byte $03, $0D   ; counter and fill tile

- D 1 - I - 0x0077B6 01:B7A6: 8C        .byte $8C   ; counter and list of bytes
- D 1 - I - 0x0077B7 01:B7A7: 69        .byte $69, $6F, $68, $FB, $FC, $68, $6C, $6C, $DE, $DF, $6C, $6E   ; 

- D 1 - I - 0x0077C3 01:B7B3: 04        .byte $04, $0D   ; counter and fill tile

- D 1 - I - 0x0077C5 01:B7B5: 8C        .byte $8C   ; counter and list of bytes
- D 1 - I - 0x0077C6 01:B7B6: 0F        .byte $0F, $0D, $0D, $0F, $0D, $0D, $0E, $0D, $A0, $A1, $A2, $A3   ; 

- D 1 - I - 0x0077D2 01:B7C2: 04        .byte $04, $0D   ; counter and fill tile

- D 1 - I - 0x0077D4 01:B7C4: 82        .byte $82   ; counter and list of bytes
- D 1 - I - 0x0077D5 01:B7C5: 69        .byte $69, $6F   ; 

- D 1 - I - 0x0077D7 01:B7C7: 04        .byte $04, $68   ; counter and fill tile

- D 1 - I - 0x0077D9 01:B7C9: 88        .byte $88   ; counter and list of bytes
- D 1 - I - 0x0077DA 01:B7CA: 6D        .byte $6D, $6C, $EE, $EF, $68, $6E, $0D, $0F   ; 

- D 1 - I - 0x0077E2 01:B7D2: 04        .byte $04, $0D   ; counter and fill tile

- D 1 - I - 0x0077E4 01:B7D4: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x0077E5 01:B7D5: 0F        .byte $0F   ; 

- D 1 - I - 0x0077E6 01:B7D6: 05        .byte $05, $0D   ; counter and fill tile

- D 1 - I - 0x0077E8 01:B7D8: 94        .byte $94   ; counter and list of bytes
- D 1 - I - 0x0077E9 01:B7D9: B0        .byte $B0, $B1, $B2, $B3, $0D, $0D, $0F, $0D, $69, $6F, $FB, $FC, $68, $68, $6D, $6D   ; 
- D 1 - I - 0x0077F9 01:B7E9: AE        .byte $AE, $AF, $68, $6E   ; 

- D 1 - I - 0x0077FD 01:B7ED: 0C        .byte $0C, $0D   ; counter and fill tile

- D 1 - I - 0x0077FF 01:B7EF: 84        .byte $84   ; counter and list of bytes
- D 1 - I - 0x007800 01:B7F0: C0        .byte $C0, $C1, $C2, $C3   ; 

- D 1 - I - 0x007804 01:B7F4: 04        .byte $04, $0D   ; counter and fill tile

- D 1 - I - 0x007806 01:B7F6: 94        .byte $94   ; counter and list of bytes
- D 1 - I - 0x007807 01:B7F7: 69        .byte $69, $6F, $FB, $FC, $FD, $FE, $6C, $6D, $BE, $BF, $FC, $6E, $0D, $BA, $BB, $0D   ; 
- D 1 - I - 0x007817 01:B807: 0D        .byte $0D, $0F, $D4, $D5   ; 

- D 1 - I - 0x00781B 01:B80B: 04        .byte $04, $0D   ; counter and fill tile

- D 1 - I - 0x00781D 01:B80D: 84        .byte $84   ; counter and list of bytes
- D 1 - I - 0x00781E 01:B80E: D0        .byte $D0, $D1, $D2, $D3   ; 

- D 1 - I - 0x007822 01:B812: 03        .byte $03, $0D   ; counter and fill tile

- D 1 - I - 0x007824 01:B814: 83        .byte $83   ; counter and list of bytes
- D 1 - I - 0x007825 01:B815: 0F        .byte $0F, $69, $6F   ; 

- D 1 - I - 0x007828 01:B818: 04        .byte $04, $68   ; counter and fill tile

- D 1 - I - 0x00782A 01:B81A: 91        .byte $91   ; counter and list of bytes
- D 1 - I - 0x00782B 01:B81B: 6D        .byte $6D, $6D, $EF, $FC, $68, $6E, $0C, $CA, $CB, $CC, $D7, $0D, $E4, $E5, $0D, $0E   ; 
- D 1 - I - 0x00783B 01:B82B: 0F        .byte $0F   ; 

- D 1 - I - 0x00783C 01:B82C: 05        .byte $05, $0D   ; counter and fill tile

- D 1 - I - 0x00783E 01:B82E: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x00783F 01:B82F: 0F        .byte $0F   ; 

- D 1 - I - 0x007840 01:B830: 03        .byte $03, $0D   ; counter and fill tile

- D 1 - I - 0x007842 01:B832: 94        .byte $94   ; counter and list of bytes
- D 1 - I - 0x007843 01:B833: 69        .byte $69, $6F, $68, $FB, $FC, $FD, $6D, $EF, $6C, $FB, $FC, $6E, $0C, $DA, $DB, $DC   ; 
- D 1 - I - 0x007853 01:B843: C8        .byte $C8, $0D, $D8, $D9   ; 

- D 1 - I - 0x007857 01:B847: 04        .byte $04, $0D   ; counter and fill tile

- D 1 - I - 0x007859 01:B849: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x00785A 01:B84A: 0E        .byte $0E   ; 

- D 1 - I - 0x00785B 01:B84B: 05        .byte $05, $0D   ; counter and fill tile

- D 1 - I - 0x00785D 01:B84D: 96        .byte $96   ; counter and list of bytes
- D 1 - I - 0x00785E 01:B84E: D7        .byte $D7, $0D, $69, $6F, $FB, $FC, $FB, $FC, $6D, $6C, $6C, $68, $68, $6E, $0D, $D7   ; 
- D 1 - I - 0x00786E 01:B85E: 1E        .byte $1E, $0D, $C8, $0D, $D8, $D9   ; 

- D 1 - I - 0x007874 01:B864: 0A        .byte $0A, $0D   ; counter and fill tile

- D 1 - I - 0x007876 01:B866: 91        .byte $91   ; counter and list of bytes
- D 1 - I - 0x007877 01:B867: C8        .byte $C8, $0D, $69, $6F, $FD, $FE, $FD, $FE, $EF, $DE, $DF, $6C, $68, $6E, $8E, $C8   ; 
- D 1 - I - 0x007887 01:B877: 1E        .byte $1E   ; 

- D 1 - I - 0x007888 01:B878: 03        .byte $03, $BC   ; counter and fill tile

- D 1 - I - 0x00788A 01:B87A: 9E        .byte $9E   ; counter and list of bytes
- D 1 - I - 0x00788B 01:B87B: D8        .byte $D8, $6A, $8E, $8F, $8E, $8F, $8E, $8F, $8E, $8F, $8E, $8F, $C8, $8F, $69, $6F   ; 
- D 1 - I - 0x00789B 01:B88B: FB        .byte $FB, $FC, $68, $68, $DE, $6D, $AE, $AF, $6C, $6E, $6A, $6A, $EB, $9D   ; 

- D 1 - I - 0x0078A9 01:B899: 03        .byte $03, $6A   ; counter and fill tile

- D 1 - I - 0x0078AB 01:B89B: 84        .byte $84   ; counter and list of bytes
- D 1 - I - 0x0078AC 01:B89C: D9        .byte $D9, $0A, $0A, $D6   ; 

- D 1 - I - 0x0078B0 01:B8A0: 03        .byte $03, $0A   ; counter and fill tile

- D 1 - I - 0x0078B2 01:B8A2: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x0078B3 01:B8A3: C8        .byte $C8   ; 

- D 1 - I - 0x0078B4 01:B8A4: 03        .byte $03, $0A   ; counter and fill tile

- D 1 - I - 0x0078B6 01:B8A6: 91        .byte $91   ; counter and list of bytes
- D 1 - I - 0x0078B7 01:B8A7: D8        .byte $D8, $8D, $69, $6F, $FB, $FC, $FD, $FE, $6D, $6D, $BE, $BF, $FB, $6E, $9D, $6A   ; 
- D 1 - I - 0x0078C7 01:B8B7: EB        .byte $EB   ; 

- D 1 - I - 0x0078C8 01:B8B8: 03        .byte $03, $6A   ; counter and fill tile

- D 1 - I - 0x0078CA 01:B8BA: A8        .byte $A8   ; counter and list of bytes
- D 1 - I - 0x0078CB 01:B8BB: 8C        .byte $8C, $D9, $0A, $0A, $D8, $D9, $0A, $0A, $C8, $0A, $0A, $D8, $6A, $6A, $69, $6F   ; 
- D 1 - I - 0x0078DB 01:B8CB: 68        .byte $68, $FB, $FC, $68, $6D, $6D, $EE, $EF, $68, $6E, $6A, $9D, $EB, $C9, $C9, $9D   ; 
- D 1 - I - 0x0078EB 01:B8DB: 6A        .byte $6A, $6A, $9E, $9F, $8C, $D9, $9E, $D8   ; 

- D 1 - I - 0x0078F3 01:B8E3: 03        .byte $03, $6A   ; counter and fill tile

- D 1 - I - 0x0078F5 01:B8E5: FF        .byte $FF   ; counter and list of bytes
- D 1 - I - 0x0078F6 01:B8E6: 8C        .byte $8C, $9D, $6A, $69, $6F, $FB, $FC, $FB, $FC, $EE, $EF, $FC, $FB, $FC, $6E, $C9   ; 
- D 1 - I - 0x007906 01:B8F6: C9        .byte $C9, $EB, $B8, $B9, $C9, $C9, $6A, $6A, $0B, $D8, $8D, $0B, $D8, $6A, $9D, $8D   ; 
- D 1 - I - 0x007916 01:B906: 9D        .byte $9D, $9D, $6A, $69, $FD, $FE, $68, $1B, $0A, $6C, $6C, $FB, $FC, $6C, $6E, $B8   ; 
- D 1 - I - 0x007926 01:B916: B9        .byte $B9, $EB, $AD, $CD, $E9, $B9, $C9, $C9, $0B, $C9, $C9, $0B, $C9, $8D, $C9, $B8   ; 
- D 1 - I - 0x007936 01:B926: B9        .byte $B9, $B8, $B9, $69, $6F, $FB, $FC, $1B, $0A, $6C, $84, $85, $86, $87, $6E, $0B   ; 
- D 1 - I - 0x007946 01:B936: CD        .byte $CD, $EB, $0B, $BD, $0B, $7C, $B9, $B8, $B9, $B8, $B9, $B8, $B9, $B8, $EA, $0B   ; 
- D 1 - I - 0x007956 01:B946: AD        .byte $AD, $7C, $0B, $69, $FD, $FE, $68, $1B, $0A, $68, $94, $95, $96, $97, $6E, $BD   ; 
- D 1 - I - 0x007966 01:B956: AD        .byte $AD, $EB, $0B, $AD, $BD, $0B, $CD, $BD, $0B, $AD, $7C, $0B, $BD, $0B, $BD   ; 

- D 1 - I - 0x007975 01:B965: FF        .byte $FF   ; counter and list of bytes
- D 1 - I - 0x007976 01:B966: CD        .byte $CD, $0B, $AD, $0B, $69, $6F, $FB, $FC, $5E, $0A, $68, $A4, $A5, $A6, $A7, $6E   ; 
- D 1 - I - 0x007986 01:B976: 78        .byte $78, $79, $EB, $7B, $78, $79, $7A, $7B, $78, $79, $7A, $7B, $78, $79, $7A, $7B   ; 
- D 1 - I - 0x007996 01:B986: 78        .byte $78, $79, $7A, $7B, $69, $6F, $FD, $FE, $1B, $0A, $68, $B4, $B5, $B6, $B7, $6E   ; 
- D 1 - I - 0x0079A6 01:B996: 88        .byte $88, $89, $1E, $8B, $88, $89, $8A, $8B, $88, $89, $8A, $8B, $88, $89, $8A, $8B   ; 
- D 1 - I - 0x0079B6 01:B9A6: 88        .byte $88, $89, $8A, $8B, $7F, $6F, $68, $68, $1B, $0A, $9A, $C4, $C5, $C6, $C7, $5B   ; 
- D 1 - I - 0x0079C6 01:B9B6: 98        .byte $98, $99, $1E, $9B, $98, $99, $9A, $9B, $98, $99, $9A, $9B, $98, $99, $9A, $9B   ; 
- D 1 - I - 0x0079D6 01:B9C6: 98        .byte $98, $99, $9A, $9B, $98, $99, $9A, $9B, $98, $99, $AA, $AB, $A8, $A9, $AA, $AB   ; 
- D 1 - I - 0x0079E6 01:B9D6: A8        .byte $A8, $A9, $1E, $AB, $A8, $A9, $AA, $AB, $A8, $A9, $AA, $AB, $A8, $A9, $AA   ; 

- D 1 - I - 0x0079F5 01:B9E5: 8B        .byte $8B   ; counter and list of bytes
- D 1 - I - 0x0079F6 01:B9E6: AB        .byte $AB, $A8, $A9, $AA, $AB, $A8, $A9, $AA, $AB, $A8, $A9   ; 

- D 1 - I - 0x007A01 01:B9F1: 33        .byte $33, $00   ; counter and fill tile

- D 1 - I - 0x007A03 01:B9F3: 89        .byte $89   ; counter and list of bytes
- D 1 - I - 0x007A04 01:B9F4: 1A        .byte $1A, $04, $05, $06, $07, $08, $09, $1C, $1D   ; 

- D 1 - I - 0x007A0D 01:B9FD: 05        .byte $05, $00   ; counter and fill tile

- D 1 - I - 0x007A0F 01:B9FF: 91        .byte $91   ; counter and list of bytes
- D 1 - I - 0x007A10 01:BA00: 20        .byte $20, $21, $22, $23, $24, $25, $26, $27, $00, $28, $29, $2A, $2B, $2C, $2D, $2E   ; 
- D 1 - I - 0x007A20 01:BA10: 2F        .byte $2F   ; 

- D 1 - I - 0x007A21 01:BA11: 0F        .byte $0F, $00   ; counter and fill tile

- D 1 - I - 0x007A23 01:BA13: 96        .byte $96   ; counter and list of bytes
- D 1 - I - 0x007A24 01:BA14: 30        .byte $30, $31, $32, $33, $34, $35, $36, $37, $00, $38, $39, $3A, $3B, $3C, $3D, $3E   ; 
- D 1 - I - 0x007A34 01:BA24: 3F        .byte $3F, $00, $00, $01, $02, $03   ; 

- D 1 - I - 0x007A3A 01:BA2A: 7F        .byte $7F, $00   ; counter and fill tile
- D 1 - I - 0x007A3C 01:BA2C: 2A        .byte $2A, $00   ; counter and fill tile

- D 1 - I - 0x007A3E 01:BA2E: 92        .byte $92   ; counter and list of bytes
- D 1 - I - 0x007A3F 01:BA2F: 55        .byte $55, $11, $00, $00, $80, $20, $00, $00, $59, $91, $20, $00, $08, $02, $00, $00   ; 
- D 1 - I - 0x007A4F 01:BA3F: 95        .byte $95, $51   ; 

- D 1 - I - 0x007A51 01:BA41: 04        .byte $04, $50   ; counter and fill tile

- D 1 - I - 0x007A53 01:BA43: 82        .byte $82   ; counter and list of bytes
- D 1 - I - 0x007A54 01:BA44: 10        .byte $10, $00   ; 

- D 1 - I - 0x007A56 01:BA46: 06        .byte $06, $55   ; counter and fill tile

- D 1 - I - 0x007A58 01:BA48: 84        .byte $84   ; counter and list of bytes
- D 1 - I - 0x007A59 01:BA49: 11        .byte $11, $00, $55, $15   ; 

- D 1 - I - 0x007A5D 01:BA4D: 04        .byte $04, $05   ; counter and fill tile

- D 1 - I - 0x007A5F 01:BA4F: 82        .byte $82   ; counter and list of bytes
- D 1 - I - 0x007A60 01:BA50: 01        .byte $01, $00   ; 

- D 1 - I - 0x007A62 01:BA52: 05        .byte $05, $F0   ; counter and fill tile
- D 1 - I - 0x007A64 01:BA54: 03        .byte $03, $A0   ; counter and fill tile
- D 1 - I - 0x007A66 01:BA56: 05        .byte $05, $0F   ; counter and fill tile

- D 1 - I - 0x007A68 01:BA58: 83        .byte $83   ; counter and list of bytes
- D 1 - I - 0x007A69 01:BA59: 8A        .byte $8A, $A0, $A0   ; 

- D 1 - I - 0x007A6C 01:BA5C: 08        .byte $08, $00   ; counter and fill tile

- D 1 - I - 0x007A6E 01:BA5E: 00        .byte $00   ; end token



.export off_0x007A6F_felix_laughing_screen
off_0x007A6F_felix_laughing_screen:
- D 1 - I - 0x007A6F 01:BA5F: 7F        .byte $7F, $00   ; counter and fill tile
- D 1 - I - 0x007A71 01:BA61: 7F        .byte $7F, $00   ; counter and fill tile
- D 1 - I - 0x007A73 01:BA63: 7F        .byte $7F, $00   ; counter and fill tile
- D 1 - I - 0x007A75 01:BA65: 10        .byte $10, $00   ; counter and fill tile

- D 1 - I - 0x007A77 01:BA67: 86        .byte $86   ; counter and list of bytes
- D 1 - I - 0x007A78 01:BA68: 41        .byte $41, $42, $43, $44, $45, $46   ; 

- D 1 - I - 0x007A7E 01:BA6E: 19        .byte $19, $00   ; counter and fill tile

- D 1 - I - 0x007A80 01:BA70: 82        .byte $82   ; counter and list of bytes
- D 1 - I - 0x007A81 01:BA71: 50        .byte $50, $51   ; 

- D 1 - I - 0x007A83 01:BA73: 04        .byte $04, $0A   ; counter and fill tile

- D 1 - I - 0x007A85 01:BA75: 82        .byte $82   ; counter and list of bytes
- D 1 - I - 0x007A86 01:BA76: 56        .byte $56, $57   ; 

- D 1 - I - 0x007A88 01:BA78: 18        .byte $18, $00   ; counter and fill tile

- D 1 - I - 0x007A8A 01:BA7A: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x007A8B 01:BA7B: 48        .byte $48   ; 

- D 1 - I - 0x007A8C 01:BA7C: 06        .byte $06, $0A   ; counter and fill tile

- D 1 - I - 0x007A8E 01:BA7E: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x007A8F 01:BA7F: 49        .byte $49   ; 

- D 1 - I - 0x007A90 01:BA80: 18        .byte $18, $00   ; counter and fill tile

- D 1 - I - 0x007A92 01:BA82: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x007A93 01:BA83: 58        .byte $58   ; 

- D 1 - I - 0x007A94 01:BA84: 06        .byte $06, $0A   ; counter and fill tile

- D 1 - I - 0x007A96 01:BA86: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x007A97 01:BA87: 59        .byte $59   ; 

- D 1 - I - 0x007A98 01:BA88: 18        .byte $18, $00   ; counter and fill tile

- D 1 - I - 0x007A9A 01:BA8A: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x007A9B 01:BA8B: 4A        .byte $4A   ; 

- D 1 - I - 0x007A9C 01:BA8C: 06        .byte $06, $0A   ; counter and fill tile

- D 1 - I - 0x007A9E 01:BA8E: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x007A9F 01:BA8F: 4F        .byte $4F   ; 

- D 1 - I - 0x007AA0 01:BA90: 18        .byte $18, $00   ; counter and fill tile

- D 1 - I - 0x007AA2 01:BA92: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x007AA3 01:BA93: 5A        .byte $5A   ; 

- D 1 - I - 0x007AA4 01:BA94: 06        .byte $06, $0A   ; counter and fill tile

- D 1 - I - 0x007AA6 01:BA96: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x007AA7 01:BA97: 5F        .byte $5F   ; 

- D 1 - I - 0x007AA8 01:BA98: 18        .byte $18, $00   ; counter and fill tile

- D 1 - I - 0x007AAA 01:BA9A: 82        .byte $82   ; counter and list of bytes
- D 1 - I - 0x007AAB 01:BA9B: 4B        .byte $4B, $4C   ; 

- D 1 - I - 0x007AAD 01:BA9D: 04        .byte $04, $0A   ; counter and fill tile

- D 1 - I - 0x007AAF 01:BA9F: 82        .byte $82   ; counter and list of bytes
- D 1 - I - 0x007AB0 01:BAA0: 4D        .byte $4D, $4E   ; 

- D 1 - I - 0x007AB2 01:BAA2: 19        .byte $19, $00   ; counter and fill tile

- D 1 - I - 0x007AB4 01:BAA4: 86        .byte $86   ; counter and list of bytes
- D 1 - I - 0x007AB5 01:BAA5: 5C        .byte $5C, $52, $53, $54, $55, $5D   ; 

- D 1 - I - 0x007ABB 01:BAAB: 7F        .byte $7F, $00   ; counter and fill tile
- D 1 - I - 0x007ABD 01:BAAD: 16        .byte $16, $00   ; counter and fill tile

- D 1 - I - 0x007ABF 01:BAAF: 89        .byte $89   ; counter and list of bytes
- D 1 - I - 0x007AC0 01:BAB0: E6        .byte $E6, $00, $E7, $00, $E3, $00, $F4, $00, $E8   ; 

- D 1 - I - 0x007AC9 01:BAB9: 17        .byte $17, $00   ; counter and fill tile

- D 1 - I - 0x007ACB 01:BABB: 91        .byte $91   ; counter and list of bytes
- D 1 - I - 0x007ACC 01:BABC: F6        .byte $F6, $00, $F7, $00, $F3, $00, $F4, $00, $F8, $00, $E0, $E1, $E2, $00, $F9, $FA   ; 
- D 1 - I - 0x007ADC 01:BACC: DD        .byte $DD   ; 

- D 1 - I - 0x007ADD 01:BACD: 7F        .byte $7F, $00   ; counter and fill tile
- D 1 - I - 0x007ADF 01:BACF: 3A        .byte $3A, $00   ; counter and fill tile

- D 1 - I - 0x007AE1 01:BAD1: 85        .byte $85   ; counter and list of bytes
- D 1 - I - 0x007AE2 01:BAD2: 03        .byte $03, $0C, $0B, $0E, $03   ; 

- D 1 - I - 0x007AE7 01:BAD7: 09        .byte $09, $00   ; counter and fill tile

- D 1 - I - 0x007AE9 01:BAD9: 00        .byte $00   ; end token



.export off_0x007AEA_the_end_screen
off_0x007AEA_the_end_screen:
; final screen in the game
- D 1 - I - 0x007AEA 01:BADA: 47        .byte $47, $00   ; counter and fill tile

- D 1 - I - 0x007AEC 01:BADC: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x007AED 01:BADD: 64        .byte $64   ; 

- D 1 - I - 0x007AEE 01:BADE: 23        .byte $23, $00   ; counter and fill tile

- D 1 - I - 0x007AF0 01:BAE0: 86        .byte $86   ; counter and list of bytes
- D 1 - I - 0x007AF1 01:BAE1: 67        .byte $67, $00, $00, $65, $00, $66   ; 

- D 1 - I - 0x007AF7 01:BAE7: 07        .byte $07, $00   ; counter and fill tile

- D 1 - I - 0x007AF9 01:BAE9: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x007AFA 01:BAEA: 65        .byte $65   ; 

- D 1 - I - 0x007AFB 01:BAEB: 0D        .byte $0D, $00   ; counter and fill tile

- D 1 - I - 0x007AFD 01:BAED: 83        .byte $83   ; counter and list of bytes
- D 1 - I - 0x007AFE 01:BAEE: 1F        .byte $1F, $00, $66   ; 

- D 1 - I - 0x007B01 01:BAF1: 0C        .byte $0C, $00   ; counter and fill tile

- D 1 - I - 0x007B03 01:BAF3: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x007B04 01:BAF4: 1F        .byte $1F   ; 

- D 1 - I - 0x007B05 01:BAF5: 0F        .byte $0F, $00   ; counter and fill tile

- D 1 - I - 0x007B07 01:BAF7: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x007B08 01:BAF8: 65        .byte $65   ; 

- D 1 - I - 0x007B09 01:BAF9: 06        .byte $06, $00   ; counter and fill tile

- D 1 - I - 0x007B0B 01:BAFB: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x007B0C 01:BAFC: 64        .byte $64   ; 

- D 1 - I - 0x007B0D 01:BAFD: 09        .byte $09, $00   ; counter and fill tile

- D 1 - I - 0x007B0F 01:BAFF: 83        .byte $83   ; counter and list of bytes
- D 1 - I - 0x007B10 01:BB00: 65        .byte $65, $00, $67   ; 

- D 1 - I - 0x007B13 01:BB03: 09        .byte $09, $00   ; counter and fill tile

- D 1 - I - 0x007B15 01:BB05: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x007B16 01:BB06: 64        .byte $64   ; 

- D 1 - I - 0x007B17 01:BB07: 09        .byte $09, $00   ; counter and fill tile

- D 1 - I - 0x007B19 01:BB09: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x007B1A 01:BB0A: 66        .byte $66   ; 

- D 1 - I - 0x007B1B 01:BB0B: 04        .byte $04, $00   ; counter and fill tile

- D 1 - I - 0x007B1D 01:BB0D: 89        .byte $89   ; counter and list of bytes
- D 1 - I - 0x007B1E 01:BB0E: 65        .byte $65, $CE, $CF, $66, $67, $67, $00, $00, $67   ; 

- D 1 - I - 0x007B27 01:BB17: 0F        .byte $0F, $00   ; counter and fill tile

- D 1 - I - 0x007B29 01:BB19: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x007B2A 01:BB1A: 65        .byte $65   ; 

- D 1 - I - 0x007B2B 01:BB1B: 04        .byte $04, $00   ; counter and fill tile

- D 1 - I - 0x007B2D 01:BB1D: 89        .byte $89   ; counter and list of bytes
- D 1 - I - 0x007B2E 01:BB1E: 65        .byte $65, $00, $66, $00, $EC, $ED, $65, $00, $64   ; 

- D 1 - I - 0x007B37 01:BB27: 0F        .byte $0F, $00   ; counter and fill tile

- D 1 - I - 0x007B39 01:BB29: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x007B3A 01:BB2A: 65        .byte $65   ; 

- D 1 - I - 0x007B3B 01:BB2B: 04        .byte $04, $00   ; counter and fill tile

- D 1 - I - 0x007B3D 01:BB2D: 8B        .byte $8B   ; counter and list of bytes
- D 1 - I - 0x007B3E 01:BB2E: 60        .byte $60, $61, $62, $63, $67, $F5, $67, $F5, $67, $67, $65   ; 

- D 1 - I - 0x007B49 01:BB39: 07        .byte $07, $00   ; counter and fill tile

- D 1 - I - 0x007B4B 01:BB3B: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x007B4C 01:BB3C: 67        .byte $67   ; 

- D 1 - I - 0x007B4D 01:BB3D: 0B        .byte $0B, $00   ; counter and fill tile

- D 1 - I - 0x007B4F 01:BB3F: 87        .byte $87   ; counter and list of bytes
- D 1 - I - 0x007B50 01:BB40: 67        .byte $67, $00, $70, $71, $72, $73, $00   ; 

- D 1 - I - 0x007B57 01:BB47: 03        .byte $03, $67   ; counter and fill tile

- D 1 - I - 0x007B59 01:BB49: 82        .byte $82   ; counter and list of bytes
- D 1 - I - 0x007B5A 01:BB4A: 65        .byte $65, $65   ; 

- D 1 - I - 0x007B5C 01:BB4C: 03        .byte $03, $00   ; counter and fill tile

- D 1 - I - 0x007B5E 01:BB4E: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x007B5F 01:BB4F: 47        .byte $47   ; 

- D 1 - I - 0x007B60 01:BB50: 09        .byte $09, $00   ; counter and fill tile

- D 1 - I - 0x007B62 01:BB52: 82        .byte $82   ; counter and list of bytes
- D 1 - I - 0x007B63 01:BB53: F0        .byte $F0, $F1   ; 

- D 1 - I - 0x007B65 01:BB55: 04        .byte $04, $00   ; counter and fill tile

- D 1 - I - 0x007B67 01:BB57: 8E        .byte $8E   ; counter and list of bytes
- D 1 - I - 0x007B68 01:BB58: 67        .byte $67, $00, $00, $80, $81, $82, $83, $65, $67, $65, $64, $65, $00, $67   ; 

- D 1 - I - 0x007B76 01:BB66: 04        .byte $04, $00   ; counter and fill tile

- D 1 - I - 0x007B78 01:BB68: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x007B79 01:BB69: 67        .byte $67   ; 

- D 1 - I - 0x007B7A 01:BB6A: 07        .byte $07, $00   ; counter and fill tile

- D 1 - I - 0x007B7C 01:BB6C: 8F        .byte $8F   ; counter and list of bytes
- D 1 - I - 0x007B7D 01:BB6D: F2        .byte $F2, $AC, $00, $65, $66, $00, $00, $F5, $67, $90, $91, $92, $93, $65, $F5   ; 

- D 1 - I - 0x007B8C 01:BB7C: 04        .byte $04, $67   ; counter and fill tile

- D 1 - I - 0x007B8E 01:BB7E: 85        .byte $85   ; counter and list of bytes
- D 1 - I - 0x007B8F 01:BB7F: 00        .byte $00, $64, $00, $00, $66   ; 

- D 1 - I - 0x007B94 01:BB84: 03        .byte $03, $00   ; counter and fill tile

- D 1 - I - 0x007B96 01:BB86: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x007B97 01:BB87: 66        .byte $66   ; 

- D 1 - I - 0x007B98 01:BB88: 0D        .byte $0D, $00   ; counter and fill tile

- D 1 - I - 0x007B9A 01:BB8A: 89        .byte $89   ; counter and list of bytes
- D 1 - I - 0x007B9B 01:BB8B: 66        .byte $66, $65, $67, $65, $F5, $66, $65, $F5, $64   ; 

- D 1 - I - 0x007BA4 01:BB94: 08        .byte $08, $00   ; counter and fill tile

- D 1 - I - 0x007BA6 01:BB96: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x007BA7 01:BB97: 65        .byte $65   ; 

- D 1 - I - 0x007BA8 01:BB98: 0A        .byte $0A, $00   ; counter and fill tile

- D 1 - I - 0x007BAA 01:BB9A: 92        .byte $92   ; counter and list of bytes
- D 1 - I - 0x007BAB 01:BB9B: 66        .byte $66, $47, $00, $64, $67, $F5, $67, $65, $67, $65, $64, $00, $67, $00, $00, $66   ; 
- D 1 - I - 0x007BBB 01:BBAB: 00        .byte $00, $65   ; 

- D 1 - I - 0x007BBD 01:BBAD: 03        .byte $03, $00   ; counter and fill tile

- D 1 - I - 0x007BBF 01:BBAF: 82        .byte $82   ; counter and list of bytes
- D 1 - I - 0x007BC0 01:BBB0: 1F        .byte $1F, $65   ; 

- D 1 - I - 0x007BC2 01:BBB2: 05        .byte $05, $00   ; counter and fill tile

- D 1 - I - 0x007BC4 01:BBB4: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x007BC5 01:BBB5: 65        .byte $65   ; 

- D 1 - I - 0x007BC6 01:BBB6: 06        .byte $06, $00   ; counter and fill tile

- D 1 - I - 0x007BC8 01:BBB8: 87        .byte $87   ; counter and list of bytes
- D 1 - I - 0x007BC9 01:BBB9: 67        .byte $67, $F5, $67, $66, $64, $65, $67   ; 

- D 1 - I - 0x007BD0 01:BBC0: 04        .byte $04, $00   ; counter and fill tile

- D 1 - I - 0x007BD2 01:BBC2: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x007BD3 01:BBC3: 67        .byte $67   ; 

- D 1 - I - 0x007BD4 01:BBC4: 11        .byte $11, $00   ; counter and fill tile

- D 1 - I - 0x007BD6 01:BBC6: 8C        .byte $8C   ; counter and list of bytes
- D 1 - I - 0x007BD7 01:BBC7: 65        .byte $65, $00, $67, $67, $65, $00, $65, $67, $00, $00, $47, $64   ; 

- D 1 - I - 0x007BE3 01:BBD3: 06        .byte $06, $00   ; counter and fill tile

- D 1 - I - 0x007BE5 01:BBD5: 82        .byte $82   ; counter and list of bytes
- D 1 - I - 0x007BE6 01:BBD6: F0        .byte $F0, $F1   ; 

- D 1 - I - 0x007BE8 01:BBD8: 0C        .byte $0C, $00   ; counter and fill tile

- D 1 - I - 0x007BEA 01:BBDA: 83        .byte $83   ; counter and list of bytes
- D 1 - I - 0x007BEB 01:BBDB: 67        .byte $67, $00, $67   ; 

- D 1 - I - 0x007BEE 01:BBDE: 03        .byte $03, $00   ; counter and fill tile

- D 1 - I - 0x007BF0 01:BBE0: 84        .byte $84   ; counter and list of bytes
- D 1 - I - 0x007BF1 01:BBE1: 66        .byte $66, $00, $00, $66   ; 

- D 1 - I - 0x007BF5 01:BBE5: 03        .byte $03, $00   ; counter and fill tile

- D 1 - I - 0x007BF7 01:BBE7: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x007BF8 01:BBE8: 40        .byte $40   ; 

- D 1 - I - 0x007BF9 01:BBE9: 04        .byte $04, $00   ; counter and fill tile

- D 1 - I - 0x007BFB 01:BBEB: 82        .byte $82   ; counter and list of bytes
- D 1 - I - 0x007BFC 01:BBEC: F2        .byte $F2, $AC   ; 

- D 1 - I - 0x007BFE 01:BBEE: 0F        .byte $0F, $00   ; counter and fill tile

- D 1 - I - 0x007C00 01:BBF0: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x007C01 01:BBF1: 64        .byte $64   ; 

- D 1 - I - 0x007C02 01:BBF2: 0C        .byte $0C, $00   ; counter and fill tile

- D 1 - I - 0x007C04 01:BBF4: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x007C05 01:BBF5: 64        .byte $64   ; 

- D 1 - I - 0x007C06 01:BBF6: 03        .byte $03, $00   ; counter and fill tile

- D 1 - I - 0x007C08 01:BBF8: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x007C09 01:BBF9: 65        .byte $65   ; 

- D 1 - I - 0x007C0A 01:BBFA: 05        .byte $05, $00   ; counter and fill tile

- D 1 - I - 0x007C0C 01:BBFC: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x007C0D 01:BBFD: 67        .byte $67   ; 

- D 1 - I - 0x007C0E 01:BBFE: 05        .byte $05, $00   ; counter and fill tile

- D 1 - I - 0x007C10 01:BC00: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x007C11 01:BC01: 65        .byte $65   ; 

- D 1 - I - 0x007C12 01:BC02: 06        .byte $06, $00   ; counter and fill tile

- D 1 - I - 0x007C14 01:BC04: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x007C15 01:BC05: 64        .byte $64   ; 

- D 1 - I - 0x007C16 01:BC06: 17        .byte $17, $00   ; counter and fill tile

- D 1 - I - 0x007C18 01:BC08: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x007C19 01:BC09: 1F        .byte $1F   ; 

- D 1 - I - 0x007C1A 01:BC0A: 04        .byte $04, $00   ; counter and fill tile

- D 1 - I - 0x007C1C 01:BC0C: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x007C1D 01:BC0D: 65        .byte $65   ; 

- D 1 - I - 0x007C1E 01:BC0E: 05        .byte $05, $00   ; counter and fill tile

- D 1 - I - 0x007C20 01:BC10: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x007C21 01:BC11: 67        .byte $67   ; 

- D 1 - I - 0x007C22 01:BC12: 09        .byte $09, $00   ; counter and fill tile

- D 1 - I - 0x007C24 01:BC14: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x007C25 01:BC15: 66        .byte $66   ; 

- D 1 - I - 0x007C26 01:BC16: 14        .byte $14, $00   ; counter and fill tile

- D 1 - I - 0x007C28 01:BC18: 82        .byte $82   ; counter and list of bytes
- D 1 - I - 0x007C29 01:BC19: CE        .byte $CE, $CF   ; 

- D 1 - I - 0x007C2B 01:BC1B: 07        .byte $07, $00   ; counter and fill tile

- D 1 - I - 0x007C2D 01:BC1D: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x007C2E 01:BC1E: 65        .byte $65   ; 

- D 1 - I - 0x007C2F 01:BC1F: 0A        .byte $0A, $00   ; counter and fill tile

- D 1 - I - 0x007C31 01:BC21: 81        .byte $81   ; counter and list of bytes
- D 1 - I - 0x007C32 01:BC22: 66        .byte $66   ; 

- D 1 - I - 0x007C33 01:BC23: 0B        .byte $0B, $00   ; counter and fill tile

- D 1 - I - 0x007C35 01:BC25: 84        .byte $84   ; counter and list of bytes
- D 1 - I - 0x007C36 01:BC26: EC        .byte $EC, $ED, $00, $67   ; 

- D 1 - I - 0x007C3A 01:BC2A: 7F        .byte $7F, $00   ; counter and fill tile
- D 1 - I - 0x007C3C 01:BC2C: 12        .byte $12, $00   ; counter and fill tile

- D 1 - I - 0x007C3E 01:BC2E: 8C        .byte $8C   ; counter and list of bytes
- D 1 - I - 0x007C3F 01:BC2F: 74        .byte $74, $75, $00, $E6, $00, $E7, $00, $E3, $00, $F4, $00, $E8   ; 

- D 1 - I - 0x007C4B 01:BC3B: 09        .byte $09, $00   ; counter and fill tile

- D 1 - I - 0x007C4D 01:BC3D: 82        .byte $82   ; counter and list of bytes
- D 1 - I - 0x007C4E 01:BC3E: 74        .byte $74, $75   ; 

- D 1 - I - 0x007C50 01:BC40: 09        .byte $09, $00   ; counter and fill tile

- D 1 - I - 0x007C52 01:BC42: 97        .byte $97   ; counter and list of bytes
- D 1 - I - 0x007C53 01:BC43: 76        .byte $76, $77, $00, $F6, $00, $F7, $00, $F3, $00, $F4, $00, $F8, $00, $E0, $E1, $E2   ; 
- D 1 - I - 0x007C63 01:BC53: 00        .byte $00, $F9, $FA, $DD, $00, $76, $77   ; 

- D 1 - I - 0x007C6A 01:BC5A: 45        .byte $45, $00   ; counter and fill tile

- D 1 - I - 0x007C6C 01:BC5C: 84        .byte $84   ; counter and list of bytes
- D 1 - I - 0x007C6D 01:BC5D: C0        .byte $C0, $00, $00, $30   ; 

- D 1 - I - 0x007C71 01:BC61: 03        .byte $03, $00   ; counter and fill tile

- D 1 - I - 0x007C73 01:BC63: 86        .byte $86   ; counter and list of bytes
- D 1 - I - 0x007C74 01:BC64: C0        .byte $C0, $00, $03, $33, $30, $F0   ; 

- D 1 - I - 0x007C7A 01:BC6A: 03        .byte $03, $00   ; counter and fill tile

- D 1 - I - 0x007C7C 01:BC6C: 8D        .byte $8D   ; counter and list of bytes
- D 1 - I - 0x007C7D 01:BC6D: C0        .byte $C0, $44, $55, $C0, $C0, $30, $30, $00, $0C, $0C, $30, $0F, $0C   ; 

- D 1 - I - 0x007C8A 01:BC7A: 05        .byte $05, $00   ; counter and fill tile

- D 1 - I - 0x007C8C 01:BC7C: 89        .byte $89   ; counter and list of bytes
- D 1 - I - 0x007C8D 01:BC7D: C3        .byte $C3, $03, $0C, $C0, $00, $00, $03, $00, $C0   ; 

- D 1 - I - 0x007C96 01:BC86: 04        .byte $04, $00   ; counter and fill tile

- D 1 - I - 0x007C98 01:BC88: 8A        .byte $8A   ; counter and list of bytes
- D 1 - I - 0x007C99 01:BC89: F0        .byte $F0, $A2, $30, $C0, $B0, $EC, $B3, $F0, $0F, $0C   ; 

- D 1 - I - 0x007CA3 01:BC93: 03        .byte $03, $0F   ; counter and fill tile

- D 1 - I - 0x007CA5 01:BC95: 83        .byte $83   ; counter and list of bytes
- D 1 - I - 0x007CA6 01:BC96: 03        .byte $03, $0F, $0F   ; 

- D 1 - I - 0x007CA9 01:BC99: 00        .byte $00   ; end token



off_BC9A_05_riiing:
; "Riiing..!"
- D 1 - I - 0x007CAA 01:BC9A: 0D        .byte $0D   ; new line
- D 1 - I - 0x007CAB 01:BC9B: 0D        .byte $0D   ; new line
- D 1 - I - 0x007CAC 01:BC9C: 20        .byte $20, $20, $5B, $52, $69, $69, $69, $6E, $67, $7E, $7E, $40, $5B   ; 
- D 1 - I - 0x007CB9 01:BCA9: 0D        .byte $0D   ; new line
- D 1 - I - 0x007CBA 01:BCAA: 00        .byte $00   ; end token



off_BCAB_00:
; "Felix, if you
; don't want to
; give me the bag,
; I'll get it from
; you anyway."
; Click!!
- D 1 - I - 0x007CBB 01:BCAB: 5B        .byte $5B, $46, $65, $6C, $69, $78, $7C, $20, $69, $66, $20, $79, $6F, $75   ; 
- D 1 - I - 0x007CC9 01:BCB9: 0D        .byte $0D   ; new line
- D 1 - I - 0x007CCA 01:BCBA: 64        .byte $64, $6F, $6E, $5D, $74, $20, $77, $61, $6E, $74, $20, $74, $6F   ; 
- D 1 - I - 0x007CD7 01:BCC7: 0D        .byte $0D   ; new line
- D 1 - I - 0x007CD8 01:BCC8: 67        .byte $67, $69, $76, $65, $20, $6D, $65, $20, $74, $68, $65, $20, $62, $61, $67, $7C   ; 
- D 1 - I - 0x007CE8 01:BCD8: 0D        .byte $0D   ; new line
- D 1 - I - 0x007CE9 01:BCD9: 49        .byte $49, $5D, $6C, $6C, $20, $67, $65, $74, $20, $69, $74, $20, $66, $72, $6F, $6D   ; 
- D 1 - I - 0x007CF9 01:BCE9: 0D        .byte $0D   ; new line
- D 1 - I - 0x007CFA 01:BCEA: 79        .byte $79, $6F, $75, $20, $61, $6E, $79, $77, $61, $79, $7E, $5B   ; 
- D 1 - I - 0x007D06 01:BCF6: 0D        .byte $0D   ; new line
- D 1 - I - 0x007D07 01:BCF7: 43        .byte $43, $6C, $69, $63, $6B, $40, $40   ; 
- D 1 - I - 0x007D0E 01:BCFE: 0D        .byte $0D   ; new line
- D 1 - I - 0x007D0F 01:BCFF: 00        .byte $00   ; end token



off_BD00_01:
; "You're doing
; well, Felix. But
; soon your game
; will be over."
; Click!!
- D 1 - I - 0x007D10 01:BD00: 5B        .byte $5B, $59, $6F, $75, $5D, $72, $65, $20, $64, $6F, $69, $6E, $67   ; 
- D 1 - I - 0x007D1D 01:BD0D: 0D        .byte $0D   ; new line
- D 1 - I - 0x007D1E 01:BD0E: 77        .byte $77, $65, $6C, $6C, $7C, $20, $46, $65, $6C, $69, $78, $7E, $20, $42, $75, $74   ; 
- D 1 - I - 0x007D2E 01:BD1E: 0D        .byte $0D   ; new line
- D 1 - I - 0x007D2F 01:BD1F: 73        .byte $73, $6F, $6F, $6E, $20, $79, $6F, $75, $72, $20, $67, $61, $6D, $65   ; 
- D 1 - I - 0x007D3D 01:BD2D: 0D        .byte $0D   ; new line
- D 1 - I - 0x007D3E 01:BD2E: 77        .byte $77, $69, $6C, $6C, $20, $62, $65, $20, $6F, $76, $65, $72, $7E, $5B   ; 
- D 1 - I - 0x007D4C 01:BD3C: 0D        .byte $0D   ; new line
- D 1 - I - 0x007D4D 01:BD3D: 43        .byte $43, $6C, $69, $63, $6B, $40, $40   ; 
- D 1 - I - 0x007D54 01:BD44: 0D        .byte $0D   ; new line
- D 1 - I - 0x007D55 01:BD45: 00        .byte $00   ; end token



off_BD46_02:
; "I'm getting
; mad, Felix!
; I can't control
; myself
; any more."
; Click!!
- D 1 - I - 0x007D56 01:BD46: 5B        .byte $5B, $49, $5D, $6D, $20, $67, $65, $74, $74, $69, $6E, $67   ; 
- D 1 - I - 0x007D62 01:BD52: 0D        .byte $0D   ; new line
- D 1 - I - 0x007D63 01:BD53: 6D        .byte $6D, $61, $64, $7C, $20, $46, $65, $6C, $69, $78, $40   ; 
- D 1 - I - 0x007D6E 01:BD5E: 0D        .byte $0D   ; new line
- D 1 - I - 0x007D6F 01:BD5F: 49        .byte $49, $20, $63, $61, $6E, $5D, $74, $20, $63, $6F, $6E, $74, $72, $6F, $6C   ; 
- D 1 - I - 0x007D7E 01:BD6E: 0D        .byte $0D   ; new line
- D 1 - I - 0x007D7F 01:BD6F: 6D        .byte $6D, $79, $73, $65, $6C, $66   ; 
- D 1 - I - 0x007D85 01:BD75: 0D        .byte $0D   ; new line
- D 1 - I - 0x007D86 01:BD76: 61        .byte $61, $6E, $79, $20, $6D, $6F, $72, $65, $7E, $5B   ; 
- D 1 - I - 0x007D90 01:BD80: 0D        .byte $0D   ; new line
- D 1 - I - 0x007D91 01:BD81: 43        .byte $43, $6C, $69, $63, $6B, $40, $40   ; 
- D 1 - I - 0x007D98 01:BD88: 0D        .byte $0D   ; new line
- D 1 - I - 0x007D99 01:BD89: 00        .byte $00   ; end token



off_BD8A_03:
; "Felix, I can't
; stand it
; anymore.
; I'm going to
; smash you!"
; Click!!
- D 1 - I - 0x007D9A 01:BD8A: 5B        .byte $5B, $46, $65, $6C, $69, $78, $7C, $20, $49, $20, $63, $61, $6E, $5D, $74   ; 
- D 1 - I - 0x007DA9 01:BD99: 0D        .byte $0D   ; new line
- D 1 - I - 0x007DAA 01:BD9A: 73        .byte $73, $74, $61, $6E, $64, $20, $69, $74   ; 
- D 1 - I - 0x007DB2 01:BDA2: 0D        .byte $0D   ; new line
- D 1 - I - 0x007DB3 01:BDA3: 61        .byte $61, $6E, $79, $6D, $6F, $72, $65, $7E   ; 
- D 1 - I - 0x007DBB 01:BDAB: 0D        .byte $0D   ; new line
- D 1 - I - 0x007DBC 01:BDAC: 49        .byte $49, $5D, $6D, $20, $67, $6F, $69, $6E, $67, $20, $74, $6F   ; 
- D 1 - I - 0x007DC8 01:BDB8: 0D        .byte $0D   ; new line
- D 1 - I - 0x007DC9 01:BDB9: 73        .byte $73, $6D, $61, $73, $68, $20, $79, $6F, $75, $40, $5B   ; 
- D 1 - I - 0x007DD4 01:BDC4: 0D        .byte $0D   ; new line
- D 1 - I - 0x007DD5 01:BDC5: 43        .byte $43, $6C, $69, $63, $6B, $40, $40   ; 
- D 1 - I - 0x007DDC 01:BDCC: 0D        .byte $0D   ; new line
- D 1 - I - 0x007DDD 01:BDCD: 00        .byte $00   ; end token



off_BDCE_04:
; "Felix, you did
; a good job
; getting here but
; this will be our
; last battle."
; Click!!
- D 1 - I - 0x007DDE 01:BDCE: 5B        .byte $5B, $46, $65, $6C, $69, $78, $7C, $20, $79, $6F, $75, $20, $64, $69, $64   ; 
- D 1 - I - 0x007DED 01:BDDD: 0D        .byte $0D   ; new line
- D 1 - I - 0x007DEE 01:BDDE: 61        .byte $61, $20, $67, $6F, $6F, $64, $20, $6A, $6F, $62   ; 
- D 1 - I - 0x007DF8 01:BDE8: 0D        .byte $0D   ; new line
- D 1 - I - 0x007DF9 01:BDE9: 67        .byte $67, $65, $74, $74, $69, $6E, $67, $20, $68, $65, $72, $65, $20, $62, $75, $74   ; 
- D 1 - I - 0x007E09 01:BDF9: 0D        .byte $0D   ; new line
- D 1 - I - 0x007E0A 01:BDFA: 74        .byte $74, $68, $69, $73, $20, $77, $69, $6C, $6C, $20, $62, $65, $20, $6F, $75, $72   ; 
- D 1 - I - 0x007E1A 01:BE0A: 0D        .byte $0D   ; new line
- D 1 - I - 0x007E1B 01:BE0B: 6C        .byte $6C, $61, $73, $74, $20, $62, $61, $74, $74, $6C, $65, $7E, $5B   ; 
- D 1 - I - 0x007E28 01:BE18: 0D        .byte $0D   ; new line
- D 1 - I - 0x007E29 01:BE19: 43        .byte $43, $6C, $69, $63, $6B, $40, $40   ; 
- D 1 - I - 0x007E30 01:BE20: 0D        .byte $0D   ; new line
- D 1 - I - 0x007E31 01:BE21: 00        .byte $00   ; end token



.export tbl_0x007E32_professor_text_english
tbl_0x007E32_professor_text_english:
- D 1 - - - 0x007E32 01:BE22: AB BC     .word off_BCAB_00
- D 1 - - - 0x007E34 01:BE24: 00 BD     .word off_BD00_01
- D 1 - - - 0x007E36 01:BE26: 46 BD     .word off_BD46_02
- D 1 - - - 0x007E38 01:BE28: 8A BD     .word off_BD8A_03
- D 1 - - - 0x007E3A 01:BE2A: CE BD     .word off_BDCE_04
- D 1 - - - 0x007E3C 01:BE2C: 9A BC     .word off_BC9A_05_riiing



off_BE2E_05:
- - - - - - 0x007E3E 01:BE2E: 0D        .byte $0D   ; 
- - - - - - 0x007E3F 01:BE2F: 20        .byte $20   ; 
- - - - - - 0x007E40 01:BE30: 20        .byte $20   ; 
- - - - - - 0x007E41 01:BE31: A2        .byte $A2   ; 
- - - - - - 0x007E42 01:BE32: 2F        .byte $2F   ; 
- - - - - - 0x007E43 01:BE33: 2F        .byte $2F   ; 
- - - - - - 0x007E44 01:BE34: 2F        .byte $2F   ; 
- - - - - - 0x007E45 01:BE35: 2F        .byte $2F   ; 
- - - - - - 0x007E46 01:BE36: 2F        .byte $2F   ; 
- - - - - - 0x007E47 01:BE37: B0        .byte $B0   ; 
- - - - - - 0x007E48 01:BE38: 63        .byte $63   ; 
- - - - - - 0x007E49 01:BE39: A5        .byte $A5   ; 
- - - - - - 0x007E4A 01:BE3A: A3        .byte $A3   ; 
- - - - - - 0x007E4B 01:BE3B: 0D        .byte $0D   ; 
- - - - - - 0x007E4C 01:BE3C: 00        .byte $00   ; end token



off_BE3D_00:
- - - - - - 0x007E4D 01:BE3D: 56        .byte $56   ; 
- - - - - - 0x007E4E 01:BE3E: 2E        .byte $2E   ; 
- - - - - - 0x007E4F 01:BE3F: 2F        .byte $2F   ; 
- - - - - - 0x007E50 01:BE40: 3E        .byte $3E   ; 
- - - - - - 0x007E51 01:BE41: 3F        .byte $3F   ; 
- - - - - - 0x007E52 01:BE42: 6C        .byte $6C   ; 
- - - - - - 0x007E53 01:BE43: A5        .byte $A5   ; 
- - - - - - 0x007E54 01:BE44: CF        .byte $CF   ; 
- - - - - - 0x007E55 01:BE45: C0        .byte $C0   ; 
- - - - - - 0x007E56 01:BE46: DE        .byte $DE   ; 
- - - - - - 0x007E57 01:BE47: 2D        .byte $2D   ; 
- - - - - - 0x007E58 01:BE48: 3D        .byte $3D   ; 
- - - - - - 0x007E59 01:BE49: DE        .byte $DE   ; 
- - - - - - 0x007E5A 01:BE4A: 3E        .byte $3E   ; 
- - - - - - 0x007E5B 01:BE4B: 3F        .byte $3F   ; 
- - - - - - 0x007E5C 01:BE4C: 0D        .byte $0D   ; 
- - - - - - 0x007E5D 01:BE4D: 5E        .byte $5E   ; 
- - - - - - 0x007E5E 01:BE4E: DE        .byte $DE   ; 
- - - - - - 0x007E5F 01:BE4F: 3E        .byte $3E   ; 
- - - - - - 0x007E60 01:BE50: 3F        .byte $3F   ; 
- - - - - - 0x007E61 01:BE51: DE        .byte $DE   ; 
- - - - - - 0x007E62 01:BE52: A6        .byte $A6   ; 
- - - - - - 0x007E63 01:BE53: DC        .byte $DC   ; 
- - - - - - 0x007E64 01:BE54: C0        .byte $C0   ; 
- - - - - - 0x007E65 01:BE55: BD        .byte $BD   ; 
- - - - - - 0x007E66 01:BE56: B7        .byte $B7   ; 
- - - - - - 0x007E67 01:BE57: C6        .byte $C6   ; 
- - - - - - 0x007E68 01:BE58: 20        .byte $20   ; 
- - - - - - 0x007E69 01:BE59: C5        .byte $C5   ; 
- - - - - - 0x007E6A 01:BE5A: D7        .byte $D7   ; 
- - - - - - 0x007E6B 01:BE5B: C5        .byte $C5   ; 
- - - - - - 0x007E6C 01:BE5C: B2        .byte $B2   ; 
- - - - - - 0x007E6D 01:BE5D: B6        .byte $B6   ; 
- - - - - - 0x007E6E 01:BE5E: A1        .byte $A1   ; 
- - - - - - 0x007E6F 01:BE5F: 0D        .byte $0D   ; 
- - - - - - 0x007E70 01:BE60: D6        .byte $D6   ; 
- - - - - - 0x007E71 01:BE61: BC        .byte $BC   ; 
- - - - - - 0x007E72 01:BE62: AF        .byte $AF   ; 
- - - - - - 0x007E73 01:BE63: 20        .byte $20   ; 
- - - - - - 0x007E74 01:BE64: C1        .byte $C1   ; 
- - - - - - 0x007E75 01:BE65: B6        .byte $B6   ; 
- - - - - - 0x007E76 01:BE66: D7        .byte $D7   ; 
- - - - - - 0x007E77 01:BE67: C2        .byte $C2   ; 
- - - - - - 0x007E78 01:BE68: DE        .byte $DE   ; 
- - - - - - 0x007E79 01:BE69: B8        .byte $B8   ; 
- - - - - - 0x007E7A 01:BE6A: C3        .byte $C3   ; 
- - - - - - 0x007E7B 01:BE6B: DE        .byte $DE   ; 
- - - - - - 0x007E7C 01:BE6C: D3        .byte $D3   ; 
- - - - - - 0x007E7D 01:BE6D: B3        .byte $B3   ; 
- - - - - - 0x007E7E 01:BE6E: CA        .byte $CA   ; 
- - - - - - 0x007E7F 01:BE6F: DE        .byte $DE   ; 
- - - - - - 0x007E80 01:BE70: B2        .byte $B2   ; 
- - - - - - 0x007E81 01:BE71: C4        .byte $C4   ; 
- - - - - - 0x007E82 01:BE72: D9        .byte $D9   ; 
- - - - - - 0x007E83 01:BE73: 0D        .byte $0D   ; 
- - - - - - 0x007E84 01:BE74: 00        .byte $00   ; end token



off_BE75_01:
- - - - - - 0x007E85 01:BE75: 56        .byte $56   ; 
- - - - - - 0x007E86 01:BE76: 2E        .byte $2E   ; 
- - - - - - 0x007E87 01:BE77: 2F        .byte $2F   ; 
- - - - - - 0x007E88 01:BE78: 3E        .byte $3E   ; 
- - - - - - 0x007E89 01:BE79: 3F        .byte $3F   ; 
- - - - - - 0x007E8A 01:BE7A: 6C        .byte $6C   ; 
- - - - - - 0x007E8B 01:BE7B: A5        .byte $A5   ; 
- - - - - - 0x007E8C 01:BE7C: 20        .byte $20   ; 
- - - - - - 0x007E8D 01:BE7D: B9        .byte $B9   ; 
- - - - - - 0x007E8E 01:BE7E: AF        .byte $AF   ; 
- - - - - - 0x007E8F 01:BE7F: BA        .byte $BA   ; 
- - - - - - 0x007E90 01:BE80: B3        .byte $B3   ; 
- - - - - - 0x007E91 01:BE81: D4        .byte $D4   ; 
- - - - - - 0x007E92 01:BE82: D9        .byte $D9   ; 
- - - - - - 0x007E93 01:BE83: C5        .byte $C5   ; 
- - - - - - 0x007E94 01:BE84: A4        .byte $A4   ; 
- - - - - - 0x007E95 01:BE85: 0D        .byte $0D   ; 
- - - - - - 0x007E96 01:BE86: BC        .byte $BC   ; 
- - - - - - 0x007E97 01:BE87: B6        .byte $B6   ; 
- - - - - - 0x007E98 01:BE88: BC        .byte $BC   ; 
- - - - - - 0x007E99 01:BE89: D3        .byte $D3   ; 
- - - - - - 0x007E9A 01:BE8A: B3        .byte $B3   ; 
- - - - - - 0x007E9B 01:BE8B: 20        .byte $20   ; 
- - - - - - 0x007E9C 01:BE8C: C8        .byte $C8   ; 
- - - - - - 0x007E9D 01:BE8D: DD        .byte $DD   ; 
- - - - - - 0x007E9E 01:BE8E: B8        .byte $B8   ; 
- - - - - - 0x007E9F 01:BE8F: DE        .byte $DE   ; 
- - - - - - 0x007EA0 01:BE90: C9        .byte $C9   ; 
- - - - - - 0x007EA1 01:BE91: B5        .byte $B5   ; 
- - - - - - 0x007EA2 01:BE92: BB        .byte $BB   ; 
- - - - - - 0x007EA3 01:BE93: D2        .byte $D2   ; 
- - - - - - 0x007EA4 01:BE94: C4        .byte $C4   ; 
- - - - - - 0x007EA5 01:BE95: DE        .byte $DE   ; 
- - - - - - 0x007EA6 01:BE96: B7        .byte $B7   ; 
- - - - - - 0x007EA7 01:BE97: C0        .byte $C0   ; 
- - - - - - 0x007EA8 01:BE98: DE        .byte $DE   ; 
- - - - - - 0x007EA9 01:BE99: 0D        .byte $0D   ; 
- - - - - - 0x007EAA 01:BE9A: 20        .byte $20   ; 
- - - - - - 0x007EAB 01:BE9B: 20        .byte $20   ; 
- - - - - - 0x007EAC 01:BE9C: 20        .byte $20   ; 
- - - - - - 0x007EAD 01:BE9D: 20        .byte $20   ; 
- - - - - - 0x007EAE 01:BE9E: 20        .byte $20   ; 
- - - - - - 0x007EAF 01:BE9F: 20        .byte $20   ; 
- - - - - - 0x007EB0 01:BEA0: 20        .byte $20   ; 
- - - - - - 0x007EB1 01:BEA1: B6        .byte $B6   ; 
- - - - - - 0x007EB2 01:BEA2: B8        .byte $B8   ; 
- - - - - - 0x007EB3 01:BEA3: BA        .byte $BA   ; 
- - - - - - 0x007EB4 01:BEA4: DE        .byte $DE   ; 
- - - - - - 0x007EB5 01:BEA5: BC        .byte $BC   ; 
- - - - - - 0x007EB6 01:BEA6: C5        .byte $C5   ; 
- - - - - - 0x007EB7 01:BEA7: A5        .byte $A5   ; 
- - - - - - 0x007EB8 01:BEA8: 0D        .byte $0D   ; 
- - - - - - 0x007EB9 01:BEA9: 00        .byte $00   ; end token



off_BEAA_02:
- - - - - - 0x007EBA 01:BEAA: 56        .byte $56   ; 
- - - - - - 0x007EBB 01:BEAB: 2E        .byte $2E   ; 
- - - - - - 0x007EBC 01:BEAC: 2F        .byte $2F   ; 
- - - - - - 0x007EBD 01:BEAD: 3E        .byte $3E   ; 
- - - - - - 0x007EBE 01:BEAE: 3F        .byte $3F   ; 
- - - - - - 0x007EBF 01:BEAF: 6C        .byte $6C   ; 
- - - - - - 0x007EC0 01:BEB0: A5        .byte $A5   ; 
- - - - - - 0x007EC1 01:BEB1: 20        .byte $20   ; 
- - - - - - 0x007EC2 01:BEB2: DC        .byte $DC   ; 
- - - - - - 0x007EC3 01:BEB3: C0        .byte $C0   ; 
- - - - - - 0x007EC4 01:BEB4: BC        .byte $BC   ; 
- - - - - - 0x007EC5 01:BEB5: CA        .byte $CA   ; 
- - - - - - 0x007EC6 01:BEB6: C0        .byte $C0   ; 
- - - - - - 0x007EC7 01:BEB7: DE        .byte $DE   ; 
- - - - - - 0x007EC8 01:BEB8: DD        .byte $DD   ; 
- - - - - - 0x007EC9 01:BEB9: C0        .byte $C0   ; 
- - - - - - 0x007ECA 01:BEBA: DE        .byte $DE   ; 
- - - - - - 0x007ECB 01:BEBB: DD        .byte $DD   ; 
- - - - - - 0x007ECC 01:BEBC: 0D        .byte $0D   ; 
- - - - - - 0x007ECD 01:BEBD: CA        .byte $CA   ; 
- - - - - - 0x007ECE 01:BEBE: D7        .byte $D7   ; 
- - - - - - 0x007ECF 01:BEBF: B6        .byte $B6   ; 
- - - - - - 0x007ED0 01:BEC0: DE        .byte $DE   ; 
- - - - - - 0x007ED1 01:BEC1: C0        .byte $C0   ; 
- - - - - - 0x007ED2 01:BEC2: AF        .byte $AF   ; 
- - - - - - 0x007ED3 01:BEC3: C3        .byte $C3   ; 
- - - - - - 0x007ED4 01:BEC4: B7        .byte $B7   ; 
- - - - - - 0x007ED5 01:BEC5: C0        .byte $C0   ; 
- - - - - - 0x007ED6 01:BEC6: A1        .byte $A1   ; 
- - - - - - 0x007ED7 01:BEC7: 20        .byte $20   ; 
- - - - - - 0x007ED8 01:BEC8: D3        .byte $D3   ; 
- - - - - - 0x007ED9 01:BEC9: B3        .byte $B3   ; 
- - - - - - 0x007EDA 01:BECA: 20        .byte $20   ; 
- - - - - - 0x007EDB 01:BECB: B6        .byte $B6   ; 
- - - - - - 0x007EDC 01:BECC: DE        .byte $DE   ; 
- - - - - - 0x007EDD 01:BECD: CF        .byte $CF   ; 
- - - - - - 0x007EDE 01:BECE: DD        .byte $DD   ; 
- - - - - - 0x007EDF 01:BECF: 0D        .byte $0D   ; 
- - - - - - 0x007EE0 01:BED0: C3        .byte $C3   ; 
- - - - - - 0x007EE1 01:BED1: DE        .byte $DE   ; 
- - - - - - 0x007EE2 01:BED2: B7        .byte $B7   ; 
- - - - - - 0x007EE3 01:BED3: C5        .byte $C5   ; 
- - - - - - 0x007EE4 01:BED4: B2        .byte $B2   ; 
- - - - - - 0x007EE5 01:BED5: BF        .byte $BF   ; 
- - - - - - 0x007EE6 01:BED6: DE        .byte $DE   ; 
- - - - - - 0x007EE7 01:BED7: A1        .byte $A1   ; 
- - - - - - 0x007EE8 01:BED8: 20        .byte $20   ; 
- - - - - - 0x007EE9 01:BED9: 20        .byte $20   ; 
- - - - - - 0x007EEA 01:BEDA: 20        .byte $20   ; 
- - - - - - 0x007EEB 01:BEDB: 20        .byte $20   ; 
- - - - - - 0x007EEC 01:BEDC: 20        .byte $20   ; 
- - - - - - 0x007EED 01:BEDD: B8        .byte $B8   ; 
- - - - - - 0x007EEE 01:BEDE: BF        .byte $BF   ; 
- - - - - - 0x007EEF 01:BEDF: A5        .byte $A5   ; 
- - - - - - 0x007EF0 01:BEE0: 0D        .byte $0D   ; 
- - - - - - 0x007EF1 01:BEE1: 00        .byte $00   ; end token



off_BEE2_03:
- - - - - - 0x007EF2 01:BEE2: 56        .byte $56   ; 
- - - - - - 0x007EF3 01:BEE3: 2E        .byte $2E   ; 
- - - - - - 0x007EF4 01:BEE4: 2F        .byte $2F   ; 
- - - - - - 0x007EF5 01:BEE5: 3E        .byte $3E   ; 
- - - - - - 0x007EF6 01:BEE6: 3F        .byte $3F   ; 
- - - - - - 0x007EF7 01:BEE7: 6C        .byte $6C   ; 
- - - - - - 0x007EF8 01:BEE8: A5        .byte $A5   ; 
- - - - - - 0x007EF9 01:BEE9: 20        .byte $20   ; 
- - - - - - 0x007EFA 01:BEEA: D3        .byte $D3   ; 
- - - - - - 0x007EFB 01:BEEB: B3        .byte $B3   ; 
- - - - - - 0x007EFC 01:BEEC: 20        .byte $20   ; 
- - - - - - 0x007EFD 01:BEED: B9        .byte $B9   ; 
- - - - - - 0x007EFE 01:BEEE: DE        .byte $DE   ; 
- - - - - - 0x007EFF 01:BEEF: DD        .byte $DD   ; 
- - - - - - 0x007F00 01:BEF0: B6        .byte $B6   ; 
- - - - - - 0x007F01 01:BEF1: B2        .byte $B2   ; 
- - - - - - 0x007F02 01:BEF2: C0        .byte $C0   ; 
- - - - - - 0x007F03 01:BEF3: DE        .byte $DE   ; 
- - - - - - 0x007F04 01:BEF4: 0D        .byte $0D   ; 
- - - - - - 0x007F05 01:BEF5: 20        .byte $20   ; 
- - - - - - 0x007F06 01:BEF6: 20        .byte $20   ; 
- - - - - - 0x007F07 01:BEF7: 20        .byte $20   ; 
- - - - - - 0x007F08 01:BEF8: 20        .byte $20   ; 
- - - - - - 0x007F09 01:BEF9: BF        .byte $BF   ; 
- - - - - - 0x007F0A 01:BEFA: B3        .byte $B3   ; 
- - - - - - 0x007F0B 01:BEFB: D8        .byte $D8   ; 
- - - - - - 0x007F0C 01:BEFC: AE        .byte $AE   ; 
- - - - - - 0x007F0D 01:BEFD: B8        .byte $B8   ; 
- - - - - - 0x007F0E 01:BEFE: C3        .byte $C3   ; 
- - - - - - 0x007F0F 01:BEFF: DE        .byte $DE   ; 
- - - - - - 0x007F10 01:BF00: 0D        .byte $0D   ; 
- - - - - - 0x007F11 01:BF01: 20        .byte $20   ; 
- - - - - - 0x007F12 01:BF02: 20        .byte $20   ; 
- - - - - - 0x007F13 01:BF03: 20        .byte $20   ; 
- - - - - - 0x007F14 01:BF04: 20        .byte $20   ; 
- - - - - - 0x007F15 01:BF05: 20        .byte $20   ; 
- - - - - - 0x007F16 01:BF06: 20        .byte $20   ; 
- - - - - - 0x007F17 01:BF07: 20        .byte $20   ; 
- - - - - - 0x007F18 01:BF08: 20        .byte $20   ; 
- - - - - - 0x007F19 01:BF09: B7        .byte $B7   ; 
- - - - - - 0x007F1A 01:BF0A: D0        .byte $D0   ; 
- - - - - - 0x007F1B 01:BF0B: A6        .byte $A6   ; 
- - - - - - 0x007F1C 01:BF0C: C0        .byte $C0   ; 
- - - - - - 0x007F1D 01:BF0D: B5        .byte $B5   ; 
- - - - - - 0x007F1E 01:BF0E: BD        .byte $BD   ; 
- - - - - - 0x007F1F 01:BF0F: BF        .byte $BF   ; 
- - - - - - 0x007F20 01:BF10: DE        .byte $DE   ; 
- - - - - - 0x007F21 01:BF11: A5        .byte $A5   ; 
- - - - - - 0x007F22 01:BF12: 0D        .byte $0D   ; 
- - - - - - 0x007F23 01:BF13: 00        .byte $00   ; end token



off_BF14_04:
- - - - - - 0x007F24 01:BF14: 56        .byte $56   ; 
- - - - - - 0x007F25 01:BF15: 2E        .byte $2E   ; 
- - - - - - 0x007F26 01:BF16: 2F        .byte $2F   ; 
- - - - - - 0x007F27 01:BF17: 3E        .byte $3E   ; 
- - - - - - 0x007F28 01:BF18: 3F        .byte $3F   ; 
- - - - - - 0x007F29 01:BF19: 6C        .byte $6C   ; 
- - - - - - 0x007F2A 01:BF1A: A5        .byte $A5   ; 
- - - - - - 0x007F2B 01:BF1B: D6        .byte $D6   ; 
- - - - - - 0x007F2C 01:BF1C: B8        .byte $B8   ; 
- - - - - - 0x007F2D 01:BF1D: BA        .byte $BA   ; 
- - - - - - 0x007F2E 01:BF1E: BA        .byte $BA   ; 
- - - - - - 0x007F2F 01:BF1F: CF        .byte $CF   ; 
- - - - - - 0x007F30 01:BF20: C3        .byte $C3   ; 
- - - - - - 0x007F31 01:BF21: DE        .byte $DE   ; 
- - - - - - 0x007F32 01:BF22: B7        .byte $B7   ; 
- - - - - - 0x007F33 01:BF23: C0        .byte $C0   ; 
- - - - - - 0x007F34 01:BF24: C5        .byte $C5   ; 
- - - - - - 0x007F35 01:BF25: 0D        .byte $0D   ; 
- - - - - - 0x007F36 01:BF26: 20        .byte $20   ; 
- - - - - - 0x007F37 01:BF27: 20        .byte $20   ; 
- - - - - - 0x007F38 01:BF28: 20        .byte $20   ; 
- - - - - - 0x007F39 01:BF29: 20        .byte $20   ; 
- - - - - - 0x007F3A 01:BF2A: CE        .byte $CE   ; 
- - - - - - 0x007F3B 01:BF2B: D2        .byte $D2   ; 
- - - - - - 0x007F3C 01:BF2C: C3        .byte $C3   ; 
- - - - - - 0x007F3D 01:BF2D: D4        .byte $D4   ; 
- - - - - - 0x007F3E 01:BF2E: D9        .byte $D9   ; 
- - - - - - 0x007F3F 01:BF2F: BF        .byte $BF   ; 
- - - - - - 0x007F40 01:BF30: DE        .byte $DE   ; 
- - - - - - 0x007F41 01:BF31: A5        .byte $A5   ; 
- - - - - - 0x007F42 01:BF32: 0D        .byte $0D   ; 
- - - - - - 0x007F43 01:BF33: 20        .byte $20   ; 
- - - - - - 0x007F44 01:BF34: BB        .byte $BB   ; 
- - - - - - 0x007F45 01:BF35: B1        .byte $B1   ; 
- - - - - - 0x007F46 01:BF36: A4        .byte $A4   ; 
- - - - - - 0x007F47 01:BF37: BB        .byte $BB   ; 
- - - - - - 0x007F48 01:BF38: B2        .byte $B2   ; 
- - - - - - 0x007F49 01:BF39: BA        .byte $BA   ; 
- - - - - - 0x007F4A 01:BF3A: DE        .byte $DE   ; 
- - - - - - 0x007F4B 01:BF3B: C9        .byte $C9   ; 
- - - - - - 0x007F4C 01:BF3C: 20        .byte $20   ; 
- - - - - - 0x007F4D 01:BF3D: C0        .byte $C0   ; 
- - - - - - 0x007F4E 01:BF3E: C0        .byte $C0   ; 
- - - - - - 0x007F4F 01:BF3F: B6        .byte $B6   ; 
- - - - - - 0x007F50 01:BF40: B2        .byte $B2   ; 
- - - - - - 0x007F51 01:BF41: C0        .byte $C0   ; 
- - - - - - 0x007F52 01:BF42: DE        .byte $DE   ; 
- - - - - - 0x007F53 01:BF43: A5        .byte $A5   ; 
- - - - - - 0x007F54 01:BF44: 0D        .byte $0D   ; 
- - - - - - 0x007F55 01:BF45: 00        .byte $00   ; end token



.export tbl_0x007F56_professor_text_japanese
tbl_0x007F56_professor_text_japanese:
- - - - - - 0x007F56 01:BF46: 3D BE     .word off_BE3D_00
- - - - - - 0x007F58 01:BF48: 75 BE     .word off_BE75_01
- - - - - - 0x007F5A 01:BF4A: AA BE     .word off_BEAA_02
- - - - - - 0x007F5C 01:BF4C: E2 BE     .word off_BEE2_03
- - - - - - 0x007F5E 01:BF4E: 14 BF     .word off_BF14_04
- - - - - - 0x007F60 01:BF50: 2E BE     .word off_BE2E_05



.export tbl_0x007F62
tbl_0x007F62:
- D 1 - I - 0x007F62 01:BF52: 01        .byte $01   ; ??? 001
- D 1 - I - 0x007F63 01:BF53: 02        .byte con_prg_bank + $02   ; 
- D 1 - I - 0x007F64 01:BF54: 10        .byte $10   ; 
- D 1 - I - 0x007F65 01:BF55: 03        .byte $03   ; 
- D 1 - I - 0x007F66 01:BF56: 83 28     .word $2883 ; ppu address
- D 1 - I - 0x007F68 01:BF58: 00        .byte $00   ; 
- D 1 - I - 0x007F69 01:BF59: 20        .byte $20   ; 
- D 1 - I - 0x007F6A 01:BF5A: 00        .byte $00   ; 
- D 1 - I - 0x007F6B 01:BF5B: 20        .byte $20   ; 
- D 1 - I - 0x007F6C 01:BF5C: 00 60     .word ram_6000 ; 



.export tbl_0x007F6E
tbl_0x007F6E:
- D 1 - I - 0x007F6E 01:BF5E: 01        .byte $01   ; ??? 001
- D 1 - I - 0x007F6F 01:BF5F: 02        .byte con_prg_bank + $02   ; 
- D 1 - I - 0x007F70 01:BF60: 10        .byte $10   ; 
- D 1 - I - 0x007F71 01:BF61: 03        .byte $03   ; 
- D 1 - I - 0x007F72 01:BF62: E3 28     .word $28E3 ; ppu address
- D 1 - I - 0x007F74 01:BF64: 00        .byte $00   ; 
- D 1 - I - 0x007F75 01:BF65: 20        .byte $20   ; 
- D 1 - I - 0x007F76 01:BF66: 00        .byte $00   ; 
- D 1 - I - 0x007F77 01:BF67: 20        .byte $20   ; 
- D 1 - I - 0x007F78 01:BF68: 30 60     .word ram_6030 ; 



.export tbl_0x007F7A
tbl_0x007F7A:
- D 1 - I - 0x007F7A 01:BF6A: 01        .byte $01   ; ??? 001
- D 1 - I - 0x007F7B 01:BF6B: 02        .byte con_prg_bank + $02   ; 
- D 1 - I - 0x007F7C 01:BF6C: 01        .byte $01   ; 
- D 1 - I - 0x007F7D 01:BF6D: 01        .byte $01   ; 
- D 1 - I - 0x007F7E 01:BF6E: 4A 29     .word $294A ; ppu address
- D 1 - I - 0x007F80 01:BF70: 00        .byte $00   ; 
- D 1 - I - 0x007F81 01:BF71: 20        .byte $20   ; 
- D 1 - I - 0x007F82 01:BF72: 00        .byte $00   ; 
- D 1 - I - 0x007F83 01:BF73: 20        .byte $20   ; 
- D 1 - I - 0x007F84 01:BF74: 67 60     .word ram_6067 ; 


; bzk garbage
- - - - - - 0x007F86 01:BF76: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x007F90 01:BF80: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x007FA0 01:BF90: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x007FB0 01:BFA0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x007FC0 01:BFB0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x007FD0 01:BFC0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x007FE0 01:BFD0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x007FF0 01:BFE0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x008000 01:BFF0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 



.out .sprintf("Free bytes in bank 02: 0x%X [%d]", ($C000 - *), ($C000 - *))



