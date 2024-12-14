.segment "BANK_9A"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x034010-0x03800F



.export sub_0x034011_sprite_engine
.export ofs_062_0x037792_00
.export sub_0x0377CF_crumbling_blocks
.export ofs_062_0x0379F4_02_calculate_ppu_address
.export sub_0x037DCC
.export sub_0x037DFF



; bzk bank id, must be located at 8000 in each bank
- D 0 - - - 0x034010 0D:8000: 9A        .byte con_prg_bank + $9A   ; 



sub_0x034011_sprite_engine:
C - - - - - 0x034011 0D:8001: A5 18     LDA ram_main_script
C - - - - - 0x034013 0D:8003: C9 0C     CMP #con_0018_0C
C - - - - - 0x034015 0D:8005: D0 03     BNE bra_800A
C - - - - - 0x034017 0D:8007: 4C 88 81  JMP loc_8188
bra_800A:
C - - - - - 0x03401A 0D:800A: A9 00     LDA #$00
C - - - - - 0x03401C 0D:800C: 85 05     STA ram_0005_t003
C - - - - - 0x03401E 0D:800E: A9 40     LDA #$40
C - - - - - 0x034020 0D:8010: 85 07     STA ram_0007_t019_sprites_counter
C - - - - - 0x034022 0D:8012: A5 20     LDA ram_0020_base_oam_offset
C - - - - - 0x034024 0D:8014: 18        CLC
C - - - - - 0x034025 0D:8015: 69 44     ADC #$44
C - - - - - 0x034027 0D:8017: 85 20     STA ram_0020_base_oam_offset
C - - - - - 0x034029 0D:8019: 85 04     STA ram_0004_t01E_current_oam_offset
bra_801B_loop:
C - - - - - 0x03402B 0D:801B: A6 05     LDX ram_0005_t003
C - - - - - 0x03402D 0D:801D: E0 1C     CPX #$1C
C - - - - - 0x03402F 0D:801F: B0 20     BCS bra_8041_no_more_objects
C - - - - - 0x034031 0D:8021: BD 00 04  LDA ram_obj_anim_id,X
C - - - - - 0x034034 0D:8024: F0 17     BEQ bra_803D_skip_object    ; if no animation
C - - - - - 0x034036 0D:8026: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x034039 0D:8029: 30 12     BMI bra_803D_skip_object    ; if con_obj_flag_not_visible
C - - - - - 0x03403B 0D:802B: BD 54 04  LDA ram_obj_spr_A,X
C - - - - - 0x03403E 0D:802E: 85 00     STA ram_0000_t0C7_spr_A_palette
C - - - - - 0x034040 0D:8030: BD 1C 04  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x034043 0D:8033: 85 01     STA ram_0001_t007_pos_Y_lo
C - - - - - 0x034045 0D:8035: BD 38 04  LDA ram_obj_pos_X_lo,X
C - - - - - 0x034048 0D:8038: 85 02     STA ram_0002_t020_pos_X_lo
C - - - - - 0x03404A 0D:803A: 20 79 80  JSR sub_8079_draw_sprites_random_priority
bra_803D_skip_object:
C - - - - - 0x03404D 0D:803D: E6 05     INC ram_0005_t003
C - - - - - 0x03404F 0D:803F: D0 DA     BNE bra_801B_loop   ; jmp
bra_8041_no_more_objects:
; hide unused sprites
C - - - - - 0x034051 0D:8041: A6 04     LDX ram_0004_t01E_current_oam_offset
C - - - - - 0x034053 0D:8043: A4 07     LDY ram_0007_t019_sprites_counter
bra_8045_loop:
C - - - - - 0x034055 0D:8045: A9 F4     LDA #$F4
C - - - - - 0x034057 0D:8047: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x03405A 0D:804A: 8A        TXA
C - - - - - 0x03405B 0D:804B: 18        CLC
C - - - - - 0x03405C 0D:804C: 69 C4     ADC #$C4
C - - - - - 0x03405E 0D:804E: AA        TAX
C - - - - - 0x03405F 0D:804F: 88        DEY
C - - - - - 0x034060 0D:8050: D0 F3     BNE bra_8045_loop
C - - - - - 0x034062 0D:8052: 60        RTS



bra_8053:
C - - - - - 0x034063 0D:8053: 20 7B 81  JSR sub_817B
C - - - - - 0x034066 0D:8056: 90 10     BCC bra_8068
C - - - - - 0x034068 0D:8058: B0 10     BCS bra_806A    ; jmp



bra_805A_CLC:
C - - - - - 0x03406A 0D:805A: 18        CLC
C - - - - - 0x03406B 0D:805B: 90 4A     BCC bra_80A7    ; jmp



bra_805D:
C - - - - - 0x03406D 0D:805D: 18        CLC
C - - - - - 0x03406E 0D:805E: 65 01     ADC ram_0001_t007_pos_Y_lo
C - - - - - 0x034070 0D:8060: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x034073 0D:8063: C8        INY
C - - - - - 0x034074 0D:8064: A5 B0     LDA ram_00B0_oam_flag
C - - - - - 0x034076 0D:8066: D0 EB     BNE bra_8053
bra_8068:
C - - - - - 0x034078 0D:8068: B1 0A     LDA (ram_000A_t009_spr_data),Y    ; spr_T
bra_806A:
C - - - - - 0x03407A 0D:806A: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x03407D 0D:806D: A5 10     LDA ram_0010_t021_spr_A_flip
C - - - - - 0x03407F 0D:806F: 4C CA 80  JMP loc_80CA



bra_8072:
C - - - - - 0x034082 0D:8072: 20 7B 81  JSR sub_817B
C - - - - - 0x034085 0D:8075: 90 3D     BCC bra_80B4
C - - - - - 0x034087 0D:8077: B0 3D     BCS bra_80B6    ; jmp



sub_8079_draw_sprites_random_priority:
C - - - - - 0x034089 0D:8079: BC 8C 04  LDY ram_obj_type,X
C - - - - - 0x03408C 0D:807C: 84 0F     STY ram_000F_t00F_obj_type
C - - - - - 0x03408E 0D:807E: B9 3E 82  LDA tbl_823E_sprite_data,Y
C - - - - - 0x034091 0D:8081: 85 08     STA ram_0008_t010_sprite_data_pointer
C - - - - - 0x034093 0D:8083: B9 3F 82  LDA tbl_823E_sprite_data + $01,Y
C - - - - - 0x034096 0D:8086: 85 09     STA ram_0008_t010_sprite_data_pointer + $01
C - - - - - 0x034098 0D:8088: BC 00 04  LDY ram_obj_anim_id,X
C - - - - - 0x03409B 0D:808B: B1 08     LDA (ram_0008_t010_sprite_data_pointer),Y
C - - - - - 0x03409D 0D:808D: 85 0A     STA ram_000A_t009_spr_data
C - - - - - 0x03409F 0D:808F: C8        INY
C - - - - - 0x0340A0 0D:8090: B1 08     LDA (ram_0008_t010_sprite_data_pointer),Y
C - - - - - 0x0340A2 0D:8092: 85 0B     STA ram_000A_t009_spr_data + $01
C - - - - - 0x0340A4 0D:8094: A0 00     LDY #$00
C - - - - - 0x0340A6 0D:8096: B1 0A     LDA (ram_000A_t009_spr_data),Y
C - - - - - 0x0340A8 0D:8098: 85 03     STA ram_0003_t021_sprites_counter
C - - - - - 0x0340AA 0D:809A: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x0340AD 0D:809D: F0 5A     BEQ bra_80F9_facing_right
; if facing left
C - - - - - 0x0340AF 0D:809F: A6 04     LDX ram_0004_t01E_current_oam_offset
bra_80A1_loop:
C - - - - - 0x0340B1 0D:80A1: C8        INY
C - - - - - 0x0340B2 0D:80A2: B1 0A     LDA (ram_000A_t009_spr_data),Y    ; spr_Y
C - - - - - 0x0340B4 0D:80A4: 10 B4     BPL bra_805A_CLC
C - - - - - 0x0340B6 0D:80A6: 38        SEC
bra_80A7:
C - - - - - 0x0340B7 0D:80A7: 6A        ROR
C - - - - - 0x0340B8 0D:80A8: B0 B3     BCS bra_805D
C - - - - - 0x0340BA 0D:80AA: 65 01     ADC ram_0001_t007_pos_Y_lo
C - - - - - 0x0340BC 0D:80AC: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x0340BF 0D:80AF: C8        INY
C - - - - - 0x0340C0 0D:80B0: A5 B0     LDA ram_00B0_oam_flag
C - - - - - 0x0340C2 0D:80B2: D0 BE     BNE bra_8072
bra_80B4:
C - - - - - 0x0340C4 0D:80B4: B1 0A     LDA (ram_000A_t009_spr_data),Y    ; spr_T
bra_80B6:
C - - - - - 0x0340C6 0D:80B6: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x0340C9 0D:80B9: C8        INY
C - - - - - 0x0340CA 0D:80BA: A5 00     LDA ram_0000_t0C7_spr_A_palette
C - - - - - 0x0340CC 0D:80BC: F0 08     BEQ bra_80C6
C - - - - - 0x0340CE 0D:80BE: B1 0A     LDA (ram_000A_t009_spr_data),Y    ; spr_A
C - - - - - 0x0340D0 0D:80C0: 29 FC     AND #$FC
C - - - - - 0x0340D2 0D:80C2: 05 00     ORA ram_0000_t0C7_spr_A_palette
C - - - - - 0x0340D4 0D:80C4: D0 02     BNE bra_80C8
bra_80C6:
C - - - - - 0x0340D6 0D:80C6: B1 0A     LDA (ram_000A_t009_spr_data),Y    ; spr_A
bra_80C8:
C - - - - - 0x0340D8 0D:80C8: 85 10     STA ram_0010_t021_spr_A_flip
loc_80CA:
C D 0 - - - 0x0340DA 0D:80CA: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x0340DD 0D:80CD: C8        INY
C - - - - - 0x0340DE 0D:80CE: B1 0A     LDA (ram_000A_t009_spr_data),Y    ; spr_X
C - - - - - 0x0340E0 0D:80D0: 30 18     BMI bra_80EA
C - - - - - 0x0340E2 0D:80D2: 18        CLC
C - - - - - 0x0340E3 0D:80D3: 65 02     ADC ram_0002_t020_pos_X_lo
C - - - - - 0x0340E5 0D:80D5: B0 18     BCS bra_80EF
bra_80D7:
C - - - - - 0x0340E7 0D:80D7: 9D 03 02  STA ram_spr_X,X
bra_80DA:
C - - - - - 0x0340EA 0D:80DA: 8A        TXA
C - - - - - 0x0340EB 0D:80DB: 18        CLC
C - - - - - 0x0340EC 0D:80DC: 69 C4     ADC #$C4
C - - - - - 0x0340EE 0D:80DE: AA        TAX
C - - - - - 0x0340EF 0D:80DF: C6 07     DEC ram_0007_t019_sprites_counter
C - - - - - 0x0340F1 0D:80E1: F0 13     BEQ bra_80F6
C - - - - - 0x0340F3 0D:80E3: C6 03     DEC ram_0003_t021_sprites_counter
C - - - - - 0x0340F5 0D:80E5: D0 BA     BNE bra_80A1_loop
C - - - - - 0x0340F7 0D:80E7: 86 04     STX ram_0004_t01E_current_oam_offset
C - - - - - 0x0340F9 0D:80E9: 60        RTS
bra_80EA:
C - - - - - 0x0340FA 0D:80EA: 18        CLC
C - - - - - 0x0340FB 0D:80EB: 65 02     ADC ram_0002_t020_pos_X_lo
C - - - - - 0x0340FD 0D:80ED: B0 E8     BCS bra_80D7
bra_80EF:
C - - - - - 0x0340FF 0D:80EF: A9 F4     LDA #$F4
C - - - - - 0x034101 0D:80F1: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x034104 0D:80F4: D0 E4     BNE bra_80DA    ; jmp
bra_80F6:
; bzk optimize, does this ever happen?
- - - - - - 0x034106 0D:80F6: 68        PLA
- - - - - - 0x034107 0D:80F7: 68        PLA
- - - - - - 0x034108 0D:80F8: 60        RTS



bra_80F9_facing_right:
C - - - - - 0x034109 0D:80F9: A6 04     LDX ram_0004_t01E_current_oam_offset
bra_80FB_loop:
C - - - - - 0x03410B 0D:80FB: C8        INY
C - - - - - 0x03410C 0D:80FC: B1 0A     LDA (ram_000A_t009_spr_data),Y    ; spr_Y
C - - - - - 0x03410E 0D:80FE: 10 5C     BPL bra_815C_CLC
C - - - - - 0x034110 0D:8100: 38        SEC
bra_8101:
C - - - - - 0x034111 0D:8101: 6A        ROR
C - - - - - 0x034112 0D:8102: B0 5B     BCS bra_815F
C - - - - - 0x034114 0D:8104: 65 01     ADC ram_0001_t007_pos_Y_lo
C - - - - - 0x034116 0D:8106: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x034119 0D:8109: C8        INY
C - - - - - 0x03411A 0D:810A: A5 B0     LDA ram_00B0_oam_flag
C - - - - - 0x03411C 0D:810C: D0 47     BNE bra_8155
bra_810E:
C - - - - - 0x03411E 0D:810E: B1 0A     LDA (ram_000A_t009_spr_data),Y    ; spr_T
bra_8110:
C - - - - - 0x034120 0D:8110: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x034123 0D:8113: C8        INY
C - - - - - 0x034124 0D:8114: A5 00     LDA ram_0000_t0C7_spr_A_palette
C - - - - - 0x034126 0D:8116: F0 08     BEQ bra_8120
C - - - - - 0x034128 0D:8118: B1 0A     LDA (ram_000A_t009_spr_data),Y    ; spr_A
C - - - - - 0x03412A 0D:811A: 29 FC     AND #$FC
C - - - - - 0x03412C 0D:811C: 05 00     ORA ram_0000_t0C7_spr_A_palette
C - - - - - 0x03412E 0D:811E: D0 02     BNE bra_8122
bra_8120:
C - - - - - 0x034130 0D:8120: B1 0A     LDA (ram_000A_t009_spr_data),Y    ; spr_A
bra_8122:
C - - - - - 0x034132 0D:8122: 49 40     EOR #$40
C - - - - - 0x034134 0D:8124: 85 10     STA ram_0010_t01F_spr_A_flip
loc_8126:
C D 0 - - - 0x034136 0D:8126: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x034139 0D:8129: C8        INY
C - - - - - 0x03413A 0D:812A: A9 F8     LDA #$F8
C - - - - - 0x03413C 0D:812C: 38        SEC
C - - - - - 0x03413D 0D:812D: F1 0A     SBC (ram_000A_t009_spr_data),Y    ; spr_X
C - - - - - 0x03413F 0D:812F: 30 18     BMI bra_8149
C - - - - - 0x034141 0D:8131: 18        CLC
C - - - - - 0x034142 0D:8132: 65 02     ADC ram_0002_t020_pos_X_lo
C - - - - - 0x034144 0D:8134: B0 18     BCS bra_814E
bra_8136:
C - - - - - 0x034146 0D:8136: 9D 03 02  STA ram_spr_X,X
bra_8139:
C - - - - - 0x034149 0D:8139: 8A        TXA
C - - - - - 0x03414A 0D:813A: 18        CLC
C - - - - - 0x03414B 0D:813B: 69 C4     ADC #$C4
C - - - - - 0x03414D 0D:813D: AA        TAX
C - - - - - 0x03414E 0D:813E: C6 07     DEC ram_0007_t019_sprites_counter
C - - - - - 0x034150 0D:8140: F0 B4     BEQ bra_80F6
C - - - - - 0x034152 0D:8142: C6 03     DEC ram_0003_t021_sprites_counter
C - - - - - 0x034154 0D:8144: D0 B5     BNE bra_80FB_loop
C - - - - - 0x034156 0D:8146: 86 04     STX ram_0004_t01E_current_oam_offset
C - - - - - 0x034158 0D:8148: 60        RTS
bra_8149:
C - - - - - 0x034159 0D:8149: 18        CLC
C - - - - - 0x03415A 0D:814A: 65 02     ADC ram_0002_t020_pos_X_lo
C - - - - - 0x03415C 0D:814C: B0 E8     BCS bra_8136
bra_814E:
C - - - - - 0x03415E 0D:814E: A9 F4     LDA #$F4
C - - - - - 0x034160 0D:8150: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x034163 0D:8153: D0 E4     BNE bra_8139    ; jmp



bra_8155:
C - - - - - 0x034165 0D:8155: 20 7B 81  JSR sub_817B
C - - - - - 0x034168 0D:8158: 90 B4     BCC bra_810E
C - - - - - 0x03416A 0D:815A: B0 B4     BCS bra_8110    ; jmp



bra_815C_CLC:
C - - - - - 0x03416C 0D:815C: 18        CLC
C - - - - - 0x03416D 0D:815D: 90 A2     BCC bra_8101    ; jmp



bra_815F:
C - - - - - 0x03416F 0D:815F: 18        CLC
C - - - - - 0x034170 0D:8160: 65 01     ADC ram_0001_t007_pos_Y_lo
C - - - - - 0x034172 0D:8162: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x034175 0D:8165: C8        INY
C - - - - - 0x034176 0D:8166: A5 B0     LDA ram_00B0_oam_flag
C - - - - - 0x034178 0D:8168: D0 0A     BNE bra_8174
bra_816A:
C - - - - - 0x03417A 0D:816A: B1 0A     LDA (ram_000A_t009_spr_data),Y    ; spr_T
bra_816C:
C - - - - - 0x03417C 0D:816C: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x03417F 0D:816F: A5 10     LDA ram_0010_t01F_spr_A_flip
C - - - - - 0x034181 0D:8171: 4C 26 81  JMP loc_8126
bra_8174:
C - - - - - 0x034184 0D:8174: 20 7B 81  JSR sub_817B
C - - - - - 0x034187 0D:8177: 90 F1     BCC bra_816A
C - - - - - 0x034189 0D:8179: B0 F1     BCS bra_816C    ; jmp



sub_817B:
; out
    ; C
        ; 0 = 
        ; 1 = 
    ; A = spr_T
C - - - - - 0x03418B 0D:817B: A5 0F     LDA ram_000F_t00F_obj_type
C - - - - - 0x03418D 0D:817D: C9 16     CMP #$16
C - - - - - 0x03418F 0D:817F: 90 06     BCC bra_8187_RTS
C - - - - - 0x034191 0D:8181: B1 0A     LDA (ram_000A_t009_spr_data),Y    ; spr_T
C - - - - - 0x034193 0D:8183: 18        CLC
C - - - - - 0x034194 0D:8184: 69 80     ADC #$80
C - - - - - 0x034196 0D:8186: 38        SEC
bra_8187_RTS:   ; C = 0
C - - - - - 0x034197 0D:8187: 60        RTS



loc_8188:
C D 0 - - - 0x034198 0D:8188: A9 40     LDA #$40    ; 64 sprites limit
C - - - - - 0x03419A 0D:818A: 85 05     STA ram_0005_t004_sprites_limit
C - - - - - 0x03419C 0D:818C: A9 00     LDA #$00
C - - - - - 0x03419E 0D:818E: 85 06     STA ram_0006_t009_object_index
C - - - - - 0x0341A0 0D:8190: 85 04     STA ram_0004_t007_current_oam_offset
C - - - - - 0x0341A2 0D:8192: A9 1C     LDA #$1C    ; 28 objects
C - - - - - 0x0341A4 0D:8194: 85 07     STA ram_0007_t00D_objects_counter
bra_8196_loop:
C - - - - - 0x0341A6 0D:8196: A6 06     LDX ram_0006_t009_object_index
C - - - - - 0x0341A8 0D:8198: BD 00 04  LDA ram_obj_anim_id,X
C - - - - - 0x0341AB 0D:819B: F0 17     BEQ bra_81B4_skip_object    ; if no animation
C - - - - - 0x0341AD 0D:819D: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x0341B0 0D:81A0: 30 12     BMI bra_81B4_skip_object    ; if con_obj_flag_not_visible
C - - - - - 0x0341B2 0D:81A2: BD 54 04  LDA ram_obj_spr_A,X
C - - - - - 0x0341B5 0D:81A5: 85 00     STA ram_0000_t051_spr_A_palette
C - - - - - 0x0341B7 0D:81A7: BD 1C 04  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x0341BA 0D:81AA: 85 01     STA ram_0001_t006_pos_Y_lo
C - - - - - 0x0341BC 0D:81AC: BD 38 04  LDA ram_obj_pos_X_lo,X
C - - - - - 0x0341BF 0D:81AF: 85 02     STA ram_0002_t01F_pos_X_lo
C - - - - - 0x0341C1 0D:81B1: 20 DC 81  JSR sub_81DC_draw_sprites_normally
bra_81B4_skip_object:
C - - - - - 0x0341C4 0D:81B4: E6 06     INC ram_0006_t009_object_index
C - - - - - 0x0341C6 0D:81B6: C6 07     DEC ram_0007_t00D_objects_counter
C - - - - - 0x0341C8 0D:81B8: D0 DC     BNE bra_8196_loop
; hide unused sprites
C - - - - - 0x0341CA 0D:81BA: A6 04     LDX ram_0004_t007_current_oam_offset
bra_81BC_loop:
C - - - - - 0x0341CC 0D:81BC: A9 F4     LDA #$F4
C - - - - - 0x0341CE 0D:81BE: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x0341D1 0D:81C1: E8        INX
C - - - - - 0x0341D2 0D:81C2: E8        INX
C - - - - - 0x0341D3 0D:81C3: E8        INX
C - - - - - 0x0341D4 0D:81C4: E8        INX
C - - - - - 0x0341D5 0D:81C5: D0 F5     BNE bra_81BC_loop
C - - - - - 0x0341D7 0D:81C7: 60        RTS



bra_81C8_CLC:
C - - - - - 0x0341D8 0D:81C8: 18        CLC
C - - - - - 0x0341D9 0D:81C9: 90 38     BCC bra_8203    ; jmp



bra_81CB:
C - - - - - 0x0341DB 0D:81CB: 18        CLC
C - - - - - 0x0341DC 0D:81CC: 65 01     ADC ram_0001_t006_pos_Y_lo
C - - - - - 0x0341DE 0D:81CE: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x0341E1 0D:81D1: C8        INY
C - - - - - 0x0341E2 0D:81D2: B1 0A     LDA (ram_000A_t008_spr_data),Y
C - - - - - 0x0341E4 0D:81D4: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x0341E7 0D:81D7: A5 10     LDA ram_0010_t020_spr_A_flip
C - - - - - 0x0341E9 0D:81D9: 4C 22 82  JMP loc_8222



sub_81DC_draw_sprites_normally:
; without random priority
C - - - - - 0x0341EC 0D:81DC: BC 8C 04  LDY ram_obj_type,X
C - - - - - 0x0341EF 0D:81DF: B9 3E 82  LDA tbl_823E_sprite_data,Y
C - - - - - 0x0341F2 0D:81E2: 85 08     STA ram_0008_t00F_sprite_data_pointer
C - - - - - 0x0341F4 0D:81E4: B9 3F 82  LDA tbl_823E_sprite_data + $01,Y
C - - - - - 0x0341F7 0D:81E7: 85 09     STA ram_0008_t00F_sprite_data_pointer + $01
C - - - - - 0x0341F9 0D:81E9: BC 00 04  LDY ram_obj_anim_id,X
C - - - - - 0x0341FC 0D:81EC: B1 08     LDA (ram_0008_t00F_sprite_data_pointer),Y
C - - - - - 0x0341FE 0D:81EE: 85 0A     STA ram_000A_t008_spr_data
C - - - - - 0x034200 0D:81F0: C8        INY
C - - - - - 0x034201 0D:81F1: B1 08     LDA (ram_0008_t00F_sprite_data_pointer),Y
C - - - - - 0x034203 0D:81F3: 85 0B     STA ram_000A_t008_spr_data + $01
C - - - - - 0x034205 0D:81F5: A0 00     LDY #$00
C - - - - - 0x034207 0D:81F7: B1 0A     LDA (ram_000A_t008_spr_data),Y
C - - - - - 0x034209 0D:81F9: 85 03     STA ram_0003_t007_sprites_counter
C - - - - - 0x03420B 0D:81FB: A6 04     LDX ram_0004_t007_current_oam_offset
C - - - - - 0x03420D 0D:81FD: C8        INY ; 01
bra_81FE_loop:
C - - - - - 0x03420E 0D:81FE: B1 0A     LDA (ram_000A_t008_spr_data),Y
C - - - - - 0x034210 0D:8200: 10 C6     BPL bra_81C8_CLC
C - - - - - 0x034212 0D:8202: 38        SEC
bra_8203:
C - - - - - 0x034213 0D:8203: 6A        ROR
C - - - - - 0x034214 0D:8204: B0 C5     BCS bra_81CB
C - - - - - 0x034216 0D:8206: 65 01     ADC ram_0001_t006_pos_Y_lo
C - - - - - 0x034218 0D:8208: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x03421B 0D:820B: C8        INY
C - - - - - 0x03421C 0D:820C: B1 0A     LDA (ram_000A_t008_spr_data),Y
C - - - - - 0x03421E 0D:820E: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x034221 0D:8211: C8        INY
C - - - - - 0x034222 0D:8212: A5 00     LDA ram_0000_t051_spr_A_palette
C - - - - - 0x034224 0D:8214: F0 08     BEQ bra_821E
C - - - - - 0x034226 0D:8216: B1 0A     LDA (ram_000A_t008_spr_data),Y
C - - - - - 0x034228 0D:8218: 29 FC     AND #$FC
C - - - - - 0x03422A 0D:821A: 05 00     ORA ram_0000_t051_spr_A_palette
C - - - - - 0x03422C 0D:821C: D0 02     BNE bra_8220
bra_821E:
C - - - - - 0x03422E 0D:821E: B1 0A     LDA (ram_000A_t008_spr_data),Y
bra_8220:
C - - - - - 0x034230 0D:8220: 85 10     STA ram_0010_t020_spr_A_flip
loc_8222:
C D 0 - - - 0x034232 0D:8222: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x034235 0D:8225: C8        INY
C - - - - - 0x034236 0D:8226: B1 0A     LDA (ram_000A_t008_spr_data),Y
C - - - - - 0x034238 0D:8228: 18        CLC
C - - - - - 0x034239 0D:8229: 65 02     ADC ram_0002_t01F_pos_X_lo
C - - - - - 0x03423B 0D:822B: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x03423E 0D:822E: C8        INY
C - - - - - 0x03423F 0D:822F: E8        INX
C - - - - - 0x034240 0D:8230: E8        INX
C - - - - - 0x034241 0D:8231: E8        INX
C - - - - - 0x034242 0D:8232: E8        INX
C - - - - - 0x034243 0D:8233: C6 05     DEC ram_0005_t004_sprites_limit
C - - - - - 0x034245 0D:8235: F0 04     BEQ bra_823B
C - - - - - 0x034247 0D:8237: C6 03     DEC ram_0003_t007_sprites_counter
C - - - - - 0x034249 0D:8239: D0 C3     BNE bra_81FE_loop
bra_823B:
C - - - - - 0x03424B 0D:823B: 86 04     STX ram_0004_t007_current_oam_offset
C - - - - - 0x03424D 0D:823D: 60        RTS



tbl_823E_sprite_data:
- D 0 - - - 0x03424E 0D:823E: 5C 82     .word _off039_825C_00
- D 0 - - - 0x034250 0D:8240: CC 82     .word _off039_82CC_01
- D 0 - - - 0x034252 0D:8242: 24 83     .word _off039_8324_02
- D 0 - - - 0x034254 0D:8244: 78 83     .word _off039_8378_03
- D 0 - - - 0x034256 0D:8246: E9 8B     .word _off039_8BE9_04
- D 0 - - - 0x034258 0D:8248: A2 96     .word _off039_96A2_05
- D 0 - - - 0x03425A 0D:824A: E7 AB     .word _off039_ABE7_06
- D 0 - - - 0x03425C 0D:824C: 53 AD     .word _off039_AD53_07
- D 0 - - - 0x03425E 0D:824E: D6 9F     .word _off039_9FD6_08
- D 0 - - - 0x034260 0D:8250: E9 8C     .word _off039_8CE9_09
- D 0 - - - 0x034262 0D:8252: E7 AC     .word _off039_ACE7_0A
- D 0 - - - 0x034264 0D:8254: 5C 82     .word _off039_825C_0B
- D 0 - - - 0x034266 0D:8256: CC 82     .word _off039_82CC_0C
- D 0 - - - 0x034268 0D:8258: 24 83     .word _off039_8324_0D
- D 0 - - - 0x03426A 0D:825A: 78 83     .word _off039_8378_0E



_off039_825C_00:
_off039_825C_0B:
- - - - - - 0x03426C 0D:825C: BE 83     .word off_00_0B_83BE_00     ; unused
- D 0 - I - 0x03426E 0D:825E: 02 84     .word off_00_0B_8402_01
- D 0 - I - 0x034270 0D:8260: 10 84     .word off_00_0B_8410_02
- D 0 - I - 0x034272 0D:8262: 1B 84     .word off_00_0B_841B_03
- D 0 - I - 0x034274 0D:8264: 10 84     .word off_00_0B_8410_04
- D 0 - I - 0x034276 0D:8266: 29 84     .word off_00_0B_8429_05
- D 0 - I - 0x034278 0D:8268: 37 84     .word off_00_0B_8437_06
- D 0 - I - 0x03427A 0D:826A: 53 84     .word off_00_0B_8453_07
- D 0 - I - 0x03427C 0D:826C: 1E 85     .word off_00_0B_851E_08
- D 0 - I - 0x03427E 0D:826E: 2C 85     .word off_00_0B_852C_09
- D 0 - I - 0x034280 0D:8270: 3A 85     .word off_00_0B_853A_0A
- D 0 - I - 0x034282 0D:8272: 45 84     .word off_00_0B_8445_0B
- D 0 - I - 0x034284 0D:8274: 61 84     .word off_00_0B_8461_0C
- D 0 - I - 0x034286 0D:8276: 6F 84     .word off_00_0B_846F_0D
- D 0 - I - 0x034288 0D:8278: 7D 84     .word off_00_0B_847D_0E
- D 0 - I - 0x03428A 0D:827A: 8E 84     .word off_00_0B_848E_0F
- D 0 - I - 0x03428C 0D:827C: 9F 84     .word off_00_0B_849F_10
- D 0 - I - 0x03428E 0D:827E: AD 84     .word off_00_0B_84AD_11
- D 0 - I - 0x034290 0D:8280: 48 85     .word off_00_0B_8548_12
- D 0 - I - 0x034292 0D:8282: 50 85     .word off_00_0B_8550_13
- D 0 - I - 0x034294 0D:8284: 58 85     .word off_00_0B_8558_14
- D 0 - I - 0x034296 0D:8286: 63 85     .word off_00_0B_8563_15
- D 0 - I - 0x034298 0D:8288: 6B 85     .word off_00_0B_856B_16
- D 0 - I - 0x03429A 0D:828A: 73 85     .word off_00_0B_8573_17
- D 0 - I - 0x03429C 0D:828C: 7B 85     .word off_00_0B_857B_18
- D 0 - I - 0x03429E 0D:828E: 86 85     .word off_00_0B_8586_19
- D 0 - I - 0x0342A0 0D:8290: BE 84     .word off_00_0B_84BE_1A
- D 0 - I - 0x0342A2 0D:8292: CF 84     .word off_00_0B_84CF_1B
- D 0 - I - 0x0342A4 0D:8294: DD 84     .word off_00_0B_84DD_1C
- D 0 - I - 0x0342A6 0D:8296: EE 84     .word off_00_0B_84EE_1D
- D 0 - I - 0x0342A8 0D:8298: FF 84     .word off_00_0B_84FF_1E
- D 0 - I - 0x0342AA 0D:829A: 0D 85     .word off_00_0B_850D_1F
- D 0 - I - 0x0342AC 0D:829C: 97 85     .word off_00_0B_8597_20
- D 0 - I - 0x0342AE 0D:829E: A0 85     .word off_00_0B_85A0_21
- D 0 - I - 0x0342B0 0D:82A0: A8 85     .word off_00_0B_85A8_22
- D 0 - I - 0x0342B2 0D:82A2: B0 85     .word off_00_0B_85B0_23
- D 0 - I - 0x0342B4 0D:82A4: B8 85     .word off_00_0B_85B8_24
- D 0 - I - 0x0342B6 0D:82A6: C0 85     .word off_00_0B_85C0_25
- D 0 - I - 0x0342B8 0D:82A8: C8 85     .word off_00_0B_85C8_26
- D 0 - I - 0x0342BA 0D:82AA: D0 85     .word off_00_0B_85D0_27
- D 0 - I - 0x0342BC 0D:82AC: DD 85     .word off_00_0B_85DD_28
- D 0 - I - 0x0342BE 0D:82AE: E5 85     .word off_00_0B_85E5_29
- D 0 - I - 0x0342C0 0D:82B0: EA 85     .word off_00_0B_85EA_2A
- D 0 - I - 0x0342C2 0D:82B2: CB 93     .word off_00_0B_93CB_2B
- D 0 - I - 0x0342C4 0D:82B4: D0 93     .word off_00_0B_93D0_2C
- D 0 - I - 0x0342C6 0D:82B6: D5 93     .word off_00_0B_93D5_2D
- D 0 - I - 0x0342C8 0D:82B8: D0 93     .word off_00_0B_93D0_2E
- D 0 - I - 0x0342CA 0D:82BA: F2 85     .word off_00_0B_85F2_2F
- D 0 - I - 0x0342CC 0D:82BC: FB 85     .word off_00_0B_85FB_30
- D 0 - I - 0x0342CE 0D:82BE: F9 83     .word off_00_0B_83F9_31
- - - - - - 0x0342D0 0D:82C0: D8 85     .word off_00_0B_85D8_32
- D 0 - I - 0x0342D2 0D:82C2: BE 83     .word off_00_0B_83BE_33
- D 0 - I - 0x0342D4 0D:82C4: C7 83     .word off_00_0B_83C7_34
- D 0 - I - 0x0342D6 0D:82C6: D2 83     .word off_00_0B_83D2_35
- D 0 - I - 0x0342D8 0D:82C8: E0 83     .word off_00_0B_83E0_36
- D 0 - I - 0x0342DA 0D:82CA: EB 83     .word off_00_0B_83EB_37



_off039_82CC_01:
_off039_82CC_0C:
- - - - - - 0x0342DC 0D:82CC: BE 83     .word off_01_0C_83BE_00     ; unused
- D 0 - I - 0x0342DE 0D:82CE: 04 86     .word off_01_0C_8604_01
- D 0 - I - 0x0342E0 0D:82D0: 12 86     .word off_01_0C_8612_02
- D 0 - I - 0x0342E2 0D:82D2: 20 86     .word off_01_0C_8620_03
- D 0 - I - 0x0342E4 0D:82D4: 12 86     .word off_01_0C_8612_04
- D 0 - I - 0x0342E6 0D:82D6: 2E 86     .word off_01_0C_862E_05
- D 0 - I - 0x0342E8 0D:82D8: 3C 86     .word off_01_0C_863C_06
- D 0 - I - 0x0342EA 0D:82DA: 58 86     .word off_01_0C_8658_07
- D 0 - I - 0x0342EC 0D:82DC: 66 86     .word off_01_0C_8666_08
- D 0 - I - 0x0342EE 0D:82DE: 74 86     .word off_01_0C_8674_09
- D 0 - I - 0x0342F0 0D:82E0: 82 86     .word off_01_0C_8682_0A
- D 0 - I - 0x0342F2 0D:82E2: 4A 86     .word off_01_0C_864A_0B
- D 0 - I - 0x0342F4 0D:82E4: 90 86     .word off_01_0C_8690_0C
- D 0 - I - 0x0342F6 0D:82E6: 9E 86     .word off_01_0C_869E_0D
- D 0 - I - 0x0342F8 0D:82E8: AC 86     .word off_01_0C_86AC_0E
- D 0 - I - 0x0342FA 0D:82EA: BA 86     .word off_01_0C_86BA_0F
- D 0 - I - 0x0342FC 0D:82EC: 00 87     .word off_01_0C_8700_10
- D 0 - I - 0x0342FE 0D:82EE: 05 87     .word off_01_0C_8705_11
- D 0 - I - 0x034300 0D:82F0: C8 86     .word off_01_0C_86C8_12
- D 0 - I - 0x034302 0D:82F2: D6 86     .word off_01_0C_86D6_13
- D 0 - I - 0x034304 0D:82F4: E4 86     .word off_01_0C_86E4_14
- D 0 - I - 0x034306 0D:82F6: F2 86     .word off_01_0C_86F2_15
- D 0 - I - 0x034308 0D:82F8: 37 87     .word off_01_0C_8737_16
- - - - - - 0x03430A 0D:82FA: 0D 87     .word off_01_0C_870D_17
- D 0 - I - 0x03430C 0D:82FC: 1B 87     .word off_01_0C_871B_18
- D 0 - I - 0x03430E 0D:82FE: 29 87     .word off_01_0C_8729_19
- D 0 - I - 0x034310 0D:8300: 45 87     .word off_01_0C_8745_1A
- - - - - - 0x034312 0D:8302: 56 87     .word off_01_0C_8756_1B
- D 0 - I - 0x034314 0D:8304: 67 87     .word off_01_0C_8767_1C
- D 0 - I - 0x034316 0D:8306: 78 87     .word off_01_0C_8778_1D
- D 0 - I - 0x034318 0D:8308: 89 87     .word off_01_0C_8789_1E
- D 0 - I - 0x03431A 0D:830A: 8E 87     .word off_01_0C_878E_1F
- D 0 - I - 0x03431C 0D:830C: 99 87     .word off_01_0C_8799_20
- D 0 - I - 0x03431E 0D:830E: AA 87     .word off_01_0C_87AA_21
- D 0 - I - 0x034320 0D:8310: B8 87     .word off_01_0C_87B8_22
- D 0 - I - 0x034322 0D:8312: C8 87     .word off_01_0C_87C8_23
- D 0 - I - 0x034324 0D:8314: CD 87     .word off_01_0C_87CD_24
- D 0 - I - 0x034326 0D:8316: D6 87     .word off_01_0C_87D6_25
- D 0 - I - 0x034328 0D:8318: DF 87     .word off_01_0C_87DF_26
- D 0 - I - 0x03432A 0D:831A: E8 87     .word off_01_0C_87E8_27
- D 0 - I - 0x03432C 0D:831C: F1 87     .word off_01_0C_87F1_28
- D 0 - I - 0x03432E 0D:831E: FA 87     .word off_01_0C_87FA_29
- D 0 - I - 0x034330 0D:8320: 02 88     .word off_01_0C_8802_2A
- D 0 - I - 0x034332 0D:8322: C0 87     .word off_01_0C_87C0_2B



_off039_8324_02:
_off039_8324_0D:
- - - - - - 0x034334 0D:8324: BE 83     .word off_02_0D_83BE_00     ; unused
- D 0 - I - 0x034336 0D:8326: 0A 88     .word off_02_0D_880A_01
- D 0 - I - 0x034338 0D:8328: 18 88     .word off_02_0D_8818_02
- D 0 - I - 0x03433A 0D:832A: 34 88     .word off_02_0D_8834_03
- D 0 - I - 0x03433C 0D:832C: 18 88     .word off_02_0D_8818_04
- D 0 - I - 0x03433E 0D:832E: 42 88     .word off_02_0D_8842_05
- D 0 - I - 0x034340 0D:8330: 50 88     .word off_02_0D_8850_06
- D 0 - I - 0x034342 0D:8332: 6C 88     .word off_02_0D_886C_07
- D 0 - I - 0x034344 0D:8334: 74 88     .word off_02_0D_8874_08
- D 0 - I - 0x034346 0D:8336: 82 88     .word off_02_0D_8882_09
- D 0 - I - 0x034348 0D:8338: 8A 88     .word off_02_0D_888A_0A
- D 0 - I - 0x03434A 0D:833A: 5E 88     .word off_02_0D_885E_0B
- D 0 - I - 0x03434C 0D:833C: 95 88     .word off_02_0D_8895_0C
- D 0 - I - 0x03434E 0D:833E: 9D 88     .word off_02_0D_889D_0D
- D 0 - I - 0x034350 0D:8340: AB 88     .word off_02_0D_88AB_0E
- D 0 - I - 0x034352 0D:8342: B6 88     .word off_02_0D_88B6_0F
- D 0 - I - 0x034354 0D:8344: BE 88     .word off_02_0D_88BE_10
- - - - - - 0x034356 0D:8346: C9 88     .word off_02_0D_88C9_11
- D 0 - I - 0x034358 0D:8348: D4 88     .word off_02_0D_88D4_12
- D 0 - I - 0x03435A 0D:834A: E2 88     .word off_02_0D_88E2_13
- D 0 - I - 0x03435C 0D:834C: 9D 89     .word off_02_0D_899D_14
- - - - - - 0x03435E 0D:834E: F3 88     .word off_02_0D_88F3_15
- - - - - - 0x034360 0D:8350: 01 89     .word off_02_0D_8901_16
- - - - - - 0x034362 0D:8352: 12 89     .word off_02_0D_8912_17
- - - - - - 0x034364 0D:8354: 20 89     .word off_02_0D_8920_18
- - - - - - 0x034366 0D:8356: 31 89     .word off_02_0D_8931_19
- - - - - - 0x034368 0D:8358: 3F 89     .word off_02_0D_893F_1A
- D 0 - I - 0x03436A 0D:835A: 50 89     .word off_02_0D_8950_1B
- D 0 - I - 0x03436C 0D:835C: 58 89     .word off_02_0D_8958_1C
- - - - - - 0x03436E 0D:835E: 66 89     .word off_02_0D_8966_1D
- D 0 - I - 0x034370 0D:8360: 71 89     .word off_02_0D_8971_1E
- - - - - - 0x034372 0D:8362: 7C 89     .word off_02_0D_897C_1F
- D 0 - I - 0x034374 0D:8364: 87 89     .word off_02_0D_8987_20
- D 0 - I - 0x034376 0D:8366: 92 89     .word off_02_0D_8992_21
- D 0 - I - 0x034378 0D:8368: AB 89     .word off_02_0D_89AB_22
- D 0 - I - 0x03437A 0D:836A: C0 89     .word off_02_0D_89C0_23
- D 0 - I - 0x03437C 0D:836C: 26 88     .word off_02_0D_8826_24
- D 0 - I - 0x03437E 0D:836E: CE 89     .word off_02_0D_89CE_25
- D 0 - I - 0x034380 0D:8370: E3 89     .word off_02_0D_89E3_26
- D 0 - I - 0x034382 0D:8372: F1 89     .word off_02_0D_89F1_27
- D 0 - I - 0x034384 0D:8374: 06 8A     .word off_02_0D_8A06_28
- D 0 - I - 0x034386 0D:8376: 14 8A     .word off_02_0D_8A14_29



_off039_8378_03:
_off039_8378_0E:
- - - - - - 0x034388 0D:8378: BE 83     .word off_03_0E_83BE_00     ; unused
- D 0 - I - 0x03438A 0D:837A: 29 8A     .word off_03_0E_8A29_01
- D 0 - I - 0x03438C 0D:837C: 3A 8A     .word off_03_0E_8A3A_02
- D 0 - I - 0x03438E 0D:837E: 4B 8A     .word off_03_0E_8A4B_03
- D 0 - I - 0x034390 0D:8380: 3A 8A     .word off_03_0E_8A3A_04
- D 0 - I - 0x034392 0D:8382: 5C 8A     .word off_03_0E_8A5C_05
- D 0 - I - 0x034394 0D:8384: 6D 8A     .word off_03_0E_8A6D_06
- D 0 - I - 0x034396 0D:8386: CE 8A     .word off_03_0E_8ACE_07
- D 0 - I - 0x034398 0D:8388: 15 8B     .word off_03_0E_8B15_08
- D 0 - I - 0x03439A 0D:838A: 23 8B     .word off_03_0E_8B23_09
- D 0 - I - 0x03439C 0D:838C: 31 8B     .word off_03_0E_8B31_0A
- D 0 - I - 0x03439E 0D:838E: C0 8A     .word off_03_0E_8AC0_0B
- D 0 - I - 0x0343A0 0D:8390: 7E 8A     .word off_03_0E_8A7E_0C
- D 0 - I - 0x0343A2 0D:8392: 8F 8A     .word off_03_0E_8A8F_0D
- D 0 - I - 0x0343A4 0D:8394: A9 8A     .word off_03_0E_8AA9_0E
- D 0 - I - 0x0343A6 0D:8396: DC 8A     .word off_03_0E_8ADC_0F
- D 0 - I - 0x0343A8 0D:8398: EA 8A     .word off_03_0E_8AEA_10
- D 0 - I - 0x0343AA 0D:839A: 01 8B     .word off_03_0E_8B01_11
- D 0 - I - 0x0343AC 0D:839C: 3F 8B     .word off_03_0E_8B3F_12
- D 0 - I - 0x0343AE 0D:839E: 47 8B     .word off_03_0E_8B47_13
- D 0 - I - 0x0343B0 0D:83A0: 4F 8B     .word off_03_0E_8B4F_14
- D 0 - I - 0x0343B2 0D:83A2: 57 8B     .word off_03_0E_8B57_15
- D 0 - I - 0x0343B4 0D:83A4: 6B 8B     .word off_03_0E_8B6B_16
- D 0 - I - 0x0343B6 0D:83A6: 82 8B     .word off_03_0E_8B82_17
- D 0 - I - 0x0343B8 0D:83A8: 90 8B     .word off_03_0E_8B90_18
- D 0 - I - 0x0343BA 0D:83AA: 9E 8B     .word off_03_0E_8B9E_19
- D 0 - I - 0x0343BC 0D:83AC: BA 8B     .word off_03_0E_8BBA_1A
- D 0 - I - 0x0343BE 0D:83AE: 9E 8B     .word off_03_0E_8B9E_1B
- D 0 - I - 0x0343C0 0D:83B0: 90 8B     .word off_03_0E_8B90_1C
- D 0 - I - 0x0343C2 0D:83B2: 82 8B     .word off_03_0E_8B82_1D
- D 0 - I - 0x0343C4 0D:83B4: 6B 8B     .word off_03_0E_8B6B_1E
- D 0 - I - 0x0343C6 0D:83B6: 57 8B     .word off_03_0E_8B57_1F
- D 0 - I - 0x0343C8 0D:83B8: D6 8B     .word off_03_0E_8BD6_20
- D 0 - I - 0x0343CA 0D:83BA: DB 8B     .word off_03_0E_8BDB_21
- - - - - - 0x0343CC 0D:83BC: E0 8B     .word off_03_0E_8BE0_22



off_00_0B_83BE_00:
off_00_0B_83BE_33:
off_01_0C_83BE_00:
off_02_0D_83BE_00:
off_03_0E_83BE_00:
- D 0 - I - 0x0343CE 0D:83BE: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0343CF 0D:83BF: 00        .byte $00, $E0, $02, $F8   ; 01 
- D 0 - I - 0x0343D3 0D:83C3: 00        .byte $00, $E0, $42, $00   ; 02 



off_00_0B_83C7_34:
- D 0 - I - 0x0343D7 0D:83C7: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0343D8 0D:83C8: 00        .byte $00, $E2, $02, $F4   ; 01 
- D 0 - I - 0x0343DC 0D:83CC: 01        .byte $01, $E4,      $FC   ; 02 
- D 0 - I - 0x0343DF 0D:83CF: 01        .byte $01, $E6,      $04   ; 03 



off_00_0B_83D2_35:
- D 0 - I - 0x0343E2 0D:83D2: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0343E3 0D:83D3: 00        .byte $00, $E8, $02, $F0   ; 01 
- D 0 - I - 0x0343E7 0D:83D7: 01        .byte $01, $EA,      $F8   ; 02 
- D 0 - I - 0x0343EA 0D:83DA: 01        .byte $01, $EC,      $00   ; 03 
- D 0 - I - 0x0343ED 0D:83DD: 01        .byte $01, $EE,      $08   ; 04 



off_00_0B_83E0_36:
- D 0 - I - 0x0343F0 0D:83E0: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0343F1 0D:83E1: 00        .byte $00, $F0, $02, $F4   ; 01 
- D 0 - I - 0x0343F5 0D:83E5: 01        .byte $01, $F2,      $FC   ; 02 
- D 0 - I - 0x0343F8 0D:83E8: 01        .byte $01, $F4,      $04   ; 03 



off_00_0B_83EB_37:
- D 0 - I - 0x0343FB 0D:83EB: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0343FC 0D:83EC: E0        .byte $E0, $F6, $02, $F5   ; 01 
- D 0 - I - 0x034400 0D:83F0: E1        .byte $E1, $F8,      $FD   ; 02 
- D 0 - I - 0x034403 0D:83F3: 01        .byte $01, $FA,      $F8   ; 03 
- D 0 - I - 0x034406 0D:83F6: 01        .byte $01, $FC,      $00   ; 04 



off_00_0B_83F9_31:
- D 0 - I - 0x034409 0D:83F9: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03440A 0D:83FA: F0        .byte $F0, $5F, $01, $F8   ; 01 
- D 0 - I - 0x03440E 0D:83FE: F0        .byte $F0, $5F, $41, $00   ; 02 



off_00_0B_8402_01:
- D 0 - I - 0x034412 0D:8402: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034413 0D:8403: E0        .byte $E0, $00, $00, $F8   ; 01 
- D 0 - I - 0x034417 0D:8407: E1        .byte $E1, $02,      $00   ; 02 
- D 0 - I - 0x03441A 0D:840A: 01        .byte $01, $04,      $F8   ; 03 
- D 0 - I - 0x03441D 0D:840D: 01        .byte $01, $06,      $00   ; 04 



off_00_0B_8410_02:
off_00_0B_8410_04:
- D 0 - I - 0x034420 0D:8410: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034421 0D:8411: E0        .byte $E0, $08, $00, $F8   ; 01 
- D 0 - I - 0x034425 0D:8415: E1        .byte $E1, $0A,      $00   ; 02 
- D 0 - I - 0x034428 0D:8418: 01        .byte $01, $0C,      $FB   ; 03 



off_00_0B_841B_03:
- D 0 - I - 0x03442B 0D:841B: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03442C 0D:841C: E0        .byte $E0, $0E, $00, $F8   ; 01 
- D 0 - I - 0x034430 0D:8420: E1        .byte $E1, $10,      $00   ; 02 
- D 0 - I - 0x034433 0D:8423: 01        .byte $01, $12,      $F8   ; 03 
- D 0 - I - 0x034436 0D:8426: 01        .byte $01, $14,      $00   ; 04 



off_00_0B_8429_05:
- D 0 - I - 0x034439 0D:8429: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03443A 0D:842A: E0        .byte $E0, $0E, $00, $F8   ; 01 
- D 0 - I - 0x03443E 0D:842E: E1        .byte $E1, $10,      $00   ; 02 
- D 0 - I - 0x034441 0D:8431: 01        .byte $01, $12,      $F8   ; 03 
- D 0 - I - 0x034444 0D:8434: 01        .byte $01, $18,      $00   ; 04 



off_00_0B_8437_06:
- D 0 - I - 0x034447 0D:8437: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034448 0D:8438: E0        .byte $E0, $0E, $00, $F8   ; 01 
- D 0 - I - 0x03444C 0D:843C: E1        .byte $E1, $10,      $00   ; 02 
- D 0 - I - 0x03444F 0D:843F: 01        .byte $01, $16,      $F8   ; 03 
- D 0 - I - 0x034452 0D:8442: 01        .byte $01, $14,      $00   ; 04 



off_00_0B_8445_0B:
- D 0 - I - 0x034455 0D:8445: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034456 0D:8446: E8        .byte $E8, $00, $00, $F8   ; 01 
- D 0 - I - 0x03445A 0D:844A: E9        .byte $E9, $02,      $00   ; 02 
- D 0 - I - 0x03445D 0D:844D: 09        .byte $09, $16,      $F8   ; 03 
- D 0 - I - 0x034460 0D:8450: 09        .byte $09, $18,      $00   ; 04 



off_00_0B_8453_07:
- D 0 - I - 0x034463 0D:8453: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034464 0D:8454: F0        .byte $F0, $00, $00, $F8   ; 01 
- D 0 - I - 0x034468 0D:8458: F1        .byte $F1, $02,      $00   ; 02 
- D 0 - I - 0x03446B 0D:845B: 11        .byte $11, $16,      $F8   ; 03 
- D 0 - I - 0x03446E 0D:845E: 11        .byte $11, $18,      $00   ; 04 



off_00_0B_8461_0C:
- D 0 - I - 0x034471 0D:8461: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034472 0D:8462: E0        .byte $E0, $1A, $00, $F9   ; 01 
- D 0 - I - 0x034476 0D:8466: E1        .byte $E1, $1C,      $01   ; 02 
- D 0 - I - 0x034479 0D:8469: E1        .byte $E1, $1E,      $09   ; 03 
- D 0 - I - 0x03447C 0D:846C: 01        .byte $01, $0C,      $FF   ; 04 



off_00_0B_846F_0D:
- D 0 - I - 0x03447F 0D:846F: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034480 0D:8470: E0        .byte $E0, $20, $00, $F8   ; 01 
- D 0 - I - 0x034484 0D:8474: E1        .byte $E1, $22,      $00   ; 02 
- D 0 - I - 0x034487 0D:8477: 01        .byte $01, $12,      $F8   ; 03 
- D 0 - I - 0x03448A 0D:847A: 01        .byte $01, $14,      $00   ; 04 



off_00_0B_847D_0E:
- D 0 - I - 0x03448D 0D:847D: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03448E 0D:847E: E0        .byte $E0, $24, $00, $F0   ; 01 
- D 0 - I - 0x034492 0D:8482: E1        .byte $E1, $26,      $F8   ; 02 
- D 0 - I - 0x034495 0D:8485: E1        .byte $E1, $28,      $00   ; 03 
- D 0 - I - 0x034498 0D:8488: 01        .byte $01, $04,      $F8   ; 04 
- D 0 - I - 0x03449B 0D:848B: 01        .byte $01, $06,      $00   ; 05 



off_00_0B_848E_0F:
- D 0 - I - 0x03449E 0D:848E: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03449F 0D:848F: F0        .byte $F0, $1A, $00, $F8   ; 01 
- D 0 - I - 0x0344A3 0D:8493: F1        .byte $F1, $1C,      $00   ; 02 
- D 0 - I - 0x0344A6 0D:8496: F1        .byte $F1, $1E,      $08   ; 03 
- D 0 - I - 0x0344A9 0D:8499: 11        .byte $11, $16,      $F8   ; 04 
- D 0 - I - 0x0344AC 0D:849C: 11        .byte $11, $18,      $00   ; 05 



off_00_0B_849F_10:
- D 0 - I - 0x0344AF 0D:849F: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0344B0 0D:84A0: F0        .byte $F0, $20, $00, $F8   ; 01 
- D 0 - I - 0x0344B4 0D:84A4: F1        .byte $F1, $22,      $00   ; 02 
- D 0 - I - 0x0344B7 0D:84A7: 11        .byte $11, $16,      $F8   ; 03 
- D 0 - I - 0x0344BA 0D:84AA: 11        .byte $11, $18,      $00   ; 04 



off_00_0B_84AD_11:
- D 0 - I - 0x0344BD 0D:84AD: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0344BE 0D:84AE: F0        .byte $F0, $24, $00, $F0   ; 01 
- D 0 - I - 0x0344C2 0D:84B2: F1        .byte $F1, $26,      $F8   ; 02 
- D 0 - I - 0x0344C5 0D:84B5: F1        .byte $F1, $28,      $00   ; 03 
- D 0 - I - 0x0344C8 0D:84B8: 11        .byte $11, $16,      $F8   ; 04 
- D 0 - I - 0x0344CB 0D:84BB: 11        .byte $11, $18,      $00   ; 05 



off_00_0B_84BE_1A:
- D 0 - I - 0x0344CE 0D:84BE: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0344CF 0D:84BF: E0        .byte $E0, $1A, $00, $F8   ; 01 
- D 0 - I - 0x0344D3 0D:84C3: E1        .byte $E1, $1C,      $00   ; 02 
- D 0 - I - 0x0344D6 0D:84C6: E1        .byte $E1, $1E,      $08   ; 03 
- D 0 - I - 0x0344D9 0D:84C9: 01        .byte $01, $12,      $F8   ; 04 
- D 0 - I - 0x0344DC 0D:84CC: 01        .byte $01, $18,      $00   ; 05 



off_00_0B_84CF_1B:
- D 0 - I - 0x0344DF 0D:84CF: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0344E0 0D:84D0: E0        .byte $E0, $20, $00, $F8   ; 01 
- D 0 - I - 0x0344E4 0D:84D4: E1        .byte $E1, $22,      $00   ; 02 
- D 0 - I - 0x0344E7 0D:84D7: 01        .byte $01, $12,      $F8   ; 03 
- D 0 - I - 0x0344EA 0D:84DA: 01        .byte $01, $18,      $00   ; 04 



off_00_0B_84DD_1C:
- D 0 - I - 0x0344ED 0D:84DD: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0344EE 0D:84DE: E0        .byte $E0, $24, $00, $F0   ; 01 
- D 0 - I - 0x0344F2 0D:84E2: E1        .byte $E1, $26,      $F8   ; 02 
- D 0 - I - 0x0344F5 0D:84E5: E1        .byte $E1, $28,      $00   ; 03 
- D 0 - I - 0x0344F8 0D:84E8: 01        .byte $01, $12,      $F8   ; 04 
- D 0 - I - 0x0344FB 0D:84EB: 01        .byte $01, $18,      $00   ; 05 



off_00_0B_84EE_1D:
- D 0 - I - 0x0344FE 0D:84EE: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0344FF 0D:84EF: E0        .byte $E0, $1A, $00, $F8   ; 01 
- D 0 - I - 0x034503 0D:84F3: E1        .byte $E1, $1C,      $00   ; 02 
- D 0 - I - 0x034506 0D:84F6: E1        .byte $E1, $1E,      $08   ; 03 
- D 0 - I - 0x034509 0D:84F9: 01        .byte $01, $16,      $F8   ; 04 
- D 0 - I - 0x03450C 0D:84FC: 01        .byte $01, $14,      $00   ; 05 



off_00_0B_84FF_1E:
- D 0 - I - 0x03450F 0D:84FF: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034510 0D:8500: E0        .byte $E0, $20, $00, $F8   ; 01 
- D 0 - I - 0x034514 0D:8504: E1        .byte $E1, $22,      $00   ; 02 
- D 0 - I - 0x034517 0D:8507: 01        .byte $01, $16,      $F8   ; 03 
- D 0 - I - 0x03451A 0D:850A: 01        .byte $01, $14,      $00   ; 04 



off_00_0B_850D_1F:
- D 0 - I - 0x03451D 0D:850D: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03451E 0D:850E: E0        .byte $E0, $24, $00, $F0   ; 01 
- D 0 - I - 0x034522 0D:8512: E1        .byte $E1, $26,      $F8   ; 02 
- D 0 - I - 0x034525 0D:8515: E1        .byte $E1, $28,      $00   ; 03 
- D 0 - I - 0x034528 0D:8518: 01        .byte $01, $16,      $F8   ; 04 
- D 0 - I - 0x03452B 0D:851B: 01        .byte $01, $14,      $00   ; 05 



off_00_0B_851E_08:
- D 0 - I - 0x03452E 0D:851E: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03452F 0D:851F: E0        .byte $E0, $2A, $00, $FA   ; 01 
- D 0 - I - 0x034533 0D:8523: E1        .byte $E1, $2C,      $02   ; 02 
- D 0 - I - 0x034536 0D:8526: 01        .byte $01, $2E,      $F8   ; 03 
- D 0 - I - 0x034539 0D:8529: 01        .byte $01, $18,      $00   ; 04 



off_00_0B_852C_09:
- D 0 - I - 0x03453C 0D:852C: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03453D 0D:852D: E0        .byte $E0, $2A, $00, $F7   ; 01 
- D 0 - I - 0x034541 0D:8531: E1        .byte $E1, $2C,      $FF   ; 02 
- D 0 - I - 0x034544 0D:8534: 01        .byte $01, $16,      $F8   ; 03 
- D 0 - I - 0x034547 0D:8537: 01        .byte $01, $18,      $00   ; 04 



off_00_0B_853A_0A:
- D 0 - I - 0x03454A 0D:853A: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03454B 0D:853B: 00        .byte $00, $30, $00, $E8   ; 01 
- D 0 - I - 0x03454F 0D:853F: 01        .byte $01, $32,      $F0   ; 02 
- D 0 - I - 0x034552 0D:8542: 01        .byte $01, $34,      $F8   ; 03 
- D 0 - I - 0x034555 0D:8545: 01        .byte $01, $36,      $00   ; 04 



off_00_0B_8548_12:
- D 0 - I - 0x034558 0D:8548: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034559 0D:8549: E0        .byte $E0, $38, $01, $10   ; 01 
- D 0 - I - 0x03455D 0D:854D: 01        .byte $01, $3A,      $10   ; 02 



off_00_0B_8550_13:
- D 0 - I - 0x034560 0D:8550: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034561 0D:8551: E0        .byte $E0, $3E, $01, $08   ; 01 
- D 0 - I - 0x034565 0D:8555: E5        .byte $E5, $40,      $10   ; 02 



off_00_0B_8558_14:
- D 0 - I - 0x034568 0D:8558: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034569 0D:8559: F0        .byte $F0, $42, $01, $D8   ; 01 
- D 0 - I - 0x03456D 0D:855D: F1        .byte $F1, $44,      $E0   ; 02 
- D 0 - I - 0x034570 0D:8560: F1        .byte $F1, $44,      $E8   ; 03 



off_00_0B_8563_15:
- D 0 - I - 0x034573 0D:8563: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034574 0D:8564: E0        .byte $E0, $38, $01, $10   ; 01 
- D 0 - I - 0x034578 0D:8568: 01        .byte $01, $3C,      $10   ; 02 



off_00_0B_856B_16:
- D 0 - I - 0x03457B 0D:856B: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03457C 0D:856C: E0        .byte $E0, $46, $00, $10   ; 01 
- D 0 - I - 0x034580 0D:8570: 01        .byte $01, $48,      $10   ; 02 



off_00_0B_8573_17:
- D 0 - I - 0x034583 0D:8573: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034584 0D:8574: E0        .byte $E0, $4C, $00, $08   ; 01 
- D 0 - I - 0x034588 0D:8578: E5        .byte $E5, $4E,      $10   ; 02 



off_00_0B_857B_18:
- D 0 - I - 0x03458B 0D:857B: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03458C 0D:857C: F0        .byte $F0, $50, $00, $D8   ; 01 
- D 0 - I - 0x034590 0D:8580: F1        .byte $F1, $52,      $E0   ; 02 
- D 0 - I - 0x034593 0D:8583: F1        .byte $F1, $52,      $E8   ; 03 



off_00_0B_8586_19:
- D 0 - I - 0x034596 0D:8586: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034597 0D:8587: F0        .byte $F0, $50, $00, $C8   ; 01 
- D 0 - I - 0x03459B 0D:858B: F1        .byte $F1, $52,      $D0   ; 02 
- D 0 - I - 0x03459E 0D:858E: F1        .byte $F1, $52,      $D8   ; 03 
- D 0 - I - 0x0345A1 0D:8591: F1        .byte $F1, $52,      $E0   ; 04 
- D 0 - I - 0x0345A4 0D:8594: F1        .byte $F1, $52,      $E8   ; 05 



off_00_0B_8597_20:
- D 0 - I - 0x0345A7 0D:8597: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0345A8 0D:8598: F0        .byte $F0, $54, $01, $F8   ; 01 
- D 0 - I - 0x0345AC 0D:859C: F0        .byte $F0, $54, $41, $00   ; 02 



off_00_0B_85A0_21:
- D 0 - I - 0x0345B0 0D:85A0: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0345B1 0D:85A1: F0        .byte $F0, $56, $01, $F8   ; 01 
- D 0 - I - 0x0345B5 0D:85A5: F1        .byte $F1, $58,      $00   ; 02 



off_00_0B_85A8_22:
- D 0 - I - 0x0345B8 0D:85A8: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0345B9 0D:85A9: F0        .byte $F0, $58, $41, $F8   ; 01 
- D 0 - I - 0x0345BD 0D:85AD: F1        .byte $F1, $56,      $00   ; 02 



off_00_0B_85B0_23:
- D 0 - I - 0x0345C0 0D:85B0: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0345C1 0D:85B1: F0        .byte $F0, $78, $01, $F8   ; 01 
- D 0 - I - 0x0345C5 0D:85B5: F1        .byte $F1, $7A,      $00   ; 02 



off_00_0B_85B8_24:
- D 0 - I - 0x0345C8 0D:85B8: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0345C9 0D:85B9: F0        .byte $F0, $7A, $41, $F8   ; 01 
- D 0 - I - 0x0345CD 0D:85BD: F1        .byte $F1, $78,      $00   ; 02 



off_00_0B_85C0_25:
- D 0 - I - 0x0345D0 0D:85C0: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0345D1 0D:85C1: F0        .byte $F0, $7A, $C1, $F8   ; 01 
- D 0 - I - 0x0345D5 0D:85C5: F1        .byte $F1, $78,      $00   ; 02 



off_00_0B_85C8_26:
- D 0 - I - 0x0345D8 0D:85C8: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0345D9 0D:85C9: F0        .byte $F0, $78, $81, $F8   ; 01 
- D 0 - I - 0x0345DD 0D:85CD: F1        .byte $F1, $7A,      $00   ; 02 



off_00_0B_85D0_27:
- D 0 - I - 0x0345E0 0D:85D0: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0345E1 0D:85D1: F0        .byte $F0, $7C, $81, $F8   ; 01 
- D 0 - I - 0x0345E5 0D:85D5: F1        .byte $F1, $7E,      $00   ; 02 



off_00_0B_85D8_32:
- - - - - - 0x0345E8 0D:85D8: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- - - - - - 0x0345E9 0D:85D9: F0        .byte $F0, $62, $01, $FC   ; 01 



off_00_0B_85DD_28:
- D 0 - I - 0x0345ED 0D:85DD: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0345EE 0D:85DE: F0        .byte $F0, $66, $01, $F8   ; 01 
- D 0 - I - 0x0345F2 0D:85E2: F1        .byte $F1, $68,      $00   ; 02 



off_00_0B_85E5_29:
- D 0 - I - 0x0345F5 0D:85E5: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0345F6 0D:85E6: F0        .byte $F0, $5A, $01, $FC   ; 01 



off_00_0B_85EA_2A:
- D 0 - I - 0x0345FA 0D:85EA: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0345FB 0D:85EB: F0        .byte $F0, $21, $01, $F8   ; 01 
- D 0 - I - 0x0345FF 0D:85EF: F1        .byte $F1, $23,      $00   ; 02 



off_00_0B_85F2_2F:
- D 0 - I - 0x034602 0D:85F2: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034603 0D:85F3: F0        .byte $F0, $15, $03, $F8   ; 01 
- D 0 - I - 0x034607 0D:85F7: F0        .byte $F0, $15, $43, $00   ; 02 



off_00_0B_85FB_30:
- D 0 - I - 0x03460B 0D:85FB: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03460C 0D:85FC: F0        .byte $F0, $17, $03, $F8   ; 01 
- D 0 - I - 0x034610 0D:8600: F0        .byte $F0, $17, $43, $00   ; 02 



off_01_0C_8604_01:
- D 0 - I - 0x034614 0D:8604: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034615 0D:8605: E0        .byte $E0, $00, $00, $F8   ; 01 
- D 0 - I - 0x034619 0D:8609: E1        .byte $E1, $02,      $00   ; 02 
- D 0 - I - 0x03461C 0D:860C: 01        .byte $01, $04,      $F8   ; 03 
- D 0 - I - 0x03461F 0D:860F: 01        .byte $01, $06,      $00   ; 04 



off_01_0C_8612_02:
off_01_0C_8612_04:
- D 0 - I - 0x034622 0D:8612: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034623 0D:8613: E0        .byte $E0, $08, $00, $F8   ; 01 
- D 0 - I - 0x034627 0D:8617: E1        .byte $E1, $0A,      $00   ; 02 
- D 0 - I - 0x03462A 0D:861A: 01        .byte $01, $0C,      $F8   ; 03 
- D 0 - I - 0x03462D 0D:861D: 01        .byte $01, $0E,      $00   ; 04 



off_01_0C_8620_03:
- D 0 - I - 0x034630 0D:8620: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034631 0D:8621: E0        .byte $E0, $10, $00, $F8   ; 01 
- D 0 - I - 0x034635 0D:8625: E1        .byte $E1, $12,      $00   ; 02 
- D 0 - I - 0x034638 0D:8628: 01        .byte $01, $14,      $F8   ; 03 
- D 0 - I - 0x03463B 0D:862B: 01        .byte $01, $16,      $00   ; 04 



off_01_0C_862E_05:
- D 0 - I - 0x03463E 0D:862E: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03463F 0D:862F: E0        .byte $E0, $10, $00, $F8   ; 01 
- D 0 - I - 0x034643 0D:8633: E1        .byte $E1, $12,      $00   ; 02 
- D 0 - I - 0x034646 0D:8636: 01        .byte $01, $56,      $F8   ; 03 
- D 0 - I - 0x034649 0D:8639: 01        .byte $01, $48,      $00   ; 04 



off_01_0C_863C_06:
- D 0 - I - 0x03464C 0D:863C: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03464D 0D:863D: E0        .byte $E0, $10, $00, $F8   ; 01 
- D 0 - I - 0x034651 0D:8641: E1        .byte $E1, $12,      $00   ; 02 
- D 0 - I - 0x034654 0D:8644: 01        .byte $01, $46,      $F8   ; 03 
- D 0 - I - 0x034657 0D:8647: 01        .byte $01, $52,      $00   ; 04 



off_01_0C_864A_0B:
- D 0 - I - 0x03465A 0D:864A: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03465B 0D:864B: E8        .byte $E8, $10, $00, $F8   ; 01 
- D 0 - I - 0x03465F 0D:864F: E9        .byte $E9, $44,      $00   ; 02 
- D 0 - I - 0x034662 0D:8652: 09        .byte $09, $46,      $F8   ; 03 
- D 0 - I - 0x034665 0D:8655: 09        .byte $09, $48,      $00   ; 04 



off_01_0C_8658_07:
- D 0 - I - 0x034668 0D:8658: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034669 0D:8659: F0        .byte $F0, $10, $00, $F8   ; 01 
- D 0 - I - 0x03466D 0D:865D: F1        .byte $F1, $44,      $00   ; 02 
- D 0 - I - 0x034670 0D:8660: 11        .byte $11, $46,      $F8   ; 03 
- D 0 - I - 0x034673 0D:8663: 11        .byte $11, $48,      $00   ; 04 



off_01_0C_8666_08:
- D 0 - I - 0x034676 0D:8666: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034677 0D:8667: E0        .byte $E0, $5C, $00, $F7   ; 01 
- D 0 - I - 0x03467B 0D:866B: E1        .byte $E1, $5E,      $FF   ; 02 
- D 0 - I - 0x03467E 0D:866E: 01        .byte $01, $46,      $F8   ; 03 
- D 0 - I - 0x034681 0D:8671: 01        .byte $01, $48,      $00   ; 04 



off_01_0C_8674_09:
- D 0 - I - 0x034684 0D:8674: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034685 0D:8675: E0        .byte $E0, $5C, $00, $F7   ; 01 
- D 0 - I - 0x034689 0D:8679: E1        .byte $E1, $5E,      $FF   ; 02 
- D 0 - I - 0x03468C 0D:867C: 01        .byte $01, $46,      $F8   ; 03 
- D 0 - I - 0x03468F 0D:867F: 01        .byte $01, $48,      $00   ; 04 



off_01_0C_8682_0A:
- D 0 - I - 0x034692 0D:8682: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034693 0D:8683: F0        .byte $F0, $60, $00, $E8   ; 01 
- D 0 - I - 0x034697 0D:8687: F1        .byte $F1, $62,      $F0   ; 02 
- D 0 - I - 0x03469A 0D:868A: F1        .byte $F1, $64,      $F8   ; 03 
- D 0 - I - 0x03469D 0D:868D: F1        .byte $F1, $66,      $00   ; 04 



off_01_0C_8690_0C:
- D 0 - I - 0x0346A0 0D:8690: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0346A1 0D:8691: E0        .byte $E0, $1E, $00, $F8   ; 01 
- D 0 - I - 0x0346A5 0D:8695: E1        .byte $E1, $0A,      $00   ; 02 
- D 0 - I - 0x0346A8 0D:8698: 01        .byte $01, $0C,      $F8   ; 03 
- D 0 - I - 0x0346AB 0D:869B: 01        .byte $01, $0E,      $00   ; 04 



off_01_0C_869E_0D:
- D 0 - I - 0x0346AE 0D:869E: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0346AF 0D:869F: E0        .byte $E0, $20, $00, $F7   ; 01 
- D 0 - I - 0x0346B3 0D:86A3: E1        .byte $E1, $12,      $FF   ; 02 
- D 0 - I - 0x0346B6 0D:86A6: 01        .byte $01, $22,      $F8   ; 03 
- D 0 - I - 0x0346B9 0D:86A9: 01        .byte $01, $16,      $00   ; 04 



off_01_0C_86AC_0E:
- D 0 - I - 0x0346BC 0D:86AC: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0346BD 0D:86AD: F0        .byte $F0, $4A, $00, $F9   ; 01 
- D 0 - I - 0x0346C1 0D:86B1: F1        .byte $F1, $12,      $01   ; 02 
- D 0 - I - 0x0346C4 0D:86B4: 11        .byte $11, $46,      $F8   ; 03 
- D 0 - I - 0x0346C7 0D:86B7: 11        .byte $11, $48,      $00   ; 04 



off_01_0C_86BA_0F:
- D 0 - I - 0x0346CA 0D:86BA: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0346CB 0D:86BB: F0        .byte $F0, $20, $00, $F7   ; 01 
- D 0 - I - 0x0346CF 0D:86BF: F1        .byte $F1, $12,      $FF   ; 02 
- D 0 - I - 0x0346D2 0D:86C2: 11        .byte $11, $46,      $F8   ; 03 
- D 0 - I - 0x0346D5 0D:86C5: 11        .byte $11, $48,      $00   ; 04 



off_01_0C_86C8_12:
- D 0 - I - 0x0346D8 0D:86C8: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0346D9 0D:86C9: E0        .byte $E0, $4A, $00, $F9   ; 01 
- D 0 - I - 0x0346DD 0D:86CD: E1        .byte $E1, $12,      $01   ; 02 
- D 0 - I - 0x0346E0 0D:86D0: 01        .byte $01, $56,      $F8   ; 03 
- D 0 - I - 0x0346E3 0D:86D3: 01        .byte $01, $48,      $00   ; 04 



off_01_0C_86D6_13:
- D 0 - I - 0x0346E6 0D:86D6: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0346E7 0D:86D7: E0        .byte $E0, $20, $00, $F7   ; 01 
- D 0 - I - 0x0346EB 0D:86DB: E1        .byte $E1, $12,      $FF   ; 02 
- D 0 - I - 0x0346EE 0D:86DE: 01        .byte $01, $56,      $F8   ; 03 
- D 0 - I - 0x0346F1 0D:86E1: 01        .byte $01, $48,      $00   ; 04 



off_01_0C_86E4_14:
- D 0 - I - 0x0346F4 0D:86E4: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0346F5 0D:86E5: E0        .byte $E0, $4A, $00, $F9   ; 01 
- D 0 - I - 0x0346F9 0D:86E9: E1        .byte $E1, $12,      $01   ; 02 
- D 0 - I - 0x0346FC 0D:86EC: 01        .byte $01, $46,      $F8   ; 03 
- D 0 - I - 0x0346FF 0D:86EF: 01        .byte $01, $52,      $00   ; 04 



off_01_0C_86F2_15:
- D 0 - I - 0x034702 0D:86F2: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034703 0D:86F3: E0        .byte $E0, $20, $00, $F7   ; 01 
- D 0 - I - 0x034707 0D:86F7: E1        .byte $E1, $12,      $FF   ; 02 
- D 0 - I - 0x03470A 0D:86FA: 01        .byte $01, $46,      $F8   ; 03 
- D 0 - I - 0x03470D 0D:86FD: 01        .byte $01, $52,      $00   ; 04 



off_01_0C_8700_10:
- D 0 - I - 0x034710 0D:8700: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034711 0D:8701: D0        .byte $D0, $18, $01, $F9   ; 01 



off_01_0C_8705_11:
- D 0 - I - 0x034715 0D:8705: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034716 0D:8706: E0        .byte $E0, $1A, $01, $E7   ; 01 
- D 0 - I - 0x03471A 0D:870A: E5        .byte $E5, $1C,      $EF   ; 02 



off_01_0C_870D_17:
- - - - - - 0x03471D 0D:870D: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- - - - - - 0x03471E 0D:870E: F0        .byte $F0, $24, $00, $F8   ; 01 
- - - - - - 0x034722 0D:8712: F1        .byte $F1, $26,      $00   ; 02 
- - - - - - 0x034725 0D:8715: 11        .byte $11, $46,      $F8   ; 03 
- - - - - - 0x034728 0D:8718: 11        .byte $11, $4C,      $00   ; 04 



off_01_0C_871B_18:
- D 0 - I - 0x03472B 0D:871B: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03472C 0D:871C: E0        .byte $E0, $24, $00, $F8   ; 01 
- D 0 - I - 0x034730 0D:8720: E1        .byte $E1, $26,      $00   ; 02 
- D 0 - I - 0x034733 0D:8723: 01        .byte $01, $58,      $F8   ; 03 
- D 0 - I - 0x034736 0D:8726: 01        .byte $01, $4C,      $00   ; 04 



off_01_0C_8729_19:
- D 0 - I - 0x034739 0D:8729: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03473A 0D:872A: E0        .byte $E0, $24, $00, $F8   ; 01 
- D 0 - I - 0x03473E 0D:872E: E1        .byte $E1, $26,      $00   ; 02 
- D 0 - I - 0x034741 0D:8731: 01        .byte $01, $46,      $F8   ; 03 
- D 0 - I - 0x034744 0D:8734: 01        .byte $01, $54,      $00   ; 04 



off_01_0C_8737_16:
- D 0 - I - 0x034747 0D:8737: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034748 0D:8738: E0        .byte $E0, $24, $00, $F8   ; 01 
- D 0 - I - 0x03474C 0D:873C: E1        .byte $E1, $26,      $00   ; 02 
- D 0 - I - 0x03474F 0D:873F: 01        .byte $01, $22,      $F8   ; 03 
- D 0 - I - 0x034752 0D:8742: 01        .byte $01, $28,      $00   ; 04 



off_01_0C_8745_1A:
- D 0 - I - 0x034755 0D:8745: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034756 0D:8746: F0        .byte $F0, $2A, $00, $F0   ; 01 
- D 0 - I - 0x03475A 0D:874A: E1        .byte $E1, $2C,      $F8   ; 02 
- D 0 - I - 0x03475D 0D:874D: E1        .byte $E1, $02,      $00   ; 03 
- D 0 - I - 0x034760 0D:8750: 01        .byte $01, $2E,      $F8   ; 04 
- D 0 - I - 0x034763 0D:8753: 01        .byte $01, $06,      $00   ; 05 



off_01_0C_8756_1B:
- - - - - - 0x034766 0D:8756: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- - - - - - 0x034767 0D:8757: F0        .byte $F0, $2A, $00, $F0   ; 01 
- - - - - - 0x03476B 0D:875B: E1        .byte $E1, $2C,      $F8   ; 02 
- - - - - - 0x03476E 0D:875E: E1        .byte $E1, $02,      $00   ; 03 
- - - - - - 0x034771 0D:8761: 01        .byte $01, $4E,      $F8   ; 04 
- - - - - - 0x034774 0D:8764: 01        .byte $01, $50,      $00   ; 05 



off_01_0C_8767_1C:
- D 0 - I - 0x034777 0D:8767: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034778 0D:8768: F0        .byte $F0, $2A, $00, $F0   ; 01 
- D 0 - I - 0x03477C 0D:876C: E1        .byte $E1, $2C,      $F8   ; 02 
- D 0 - I - 0x03477F 0D:876F: E1        .byte $E1, $12,      $00   ; 03 
- D 0 - I - 0x034782 0D:8772: 01        .byte $01, $5A,      $F8   ; 04 
- D 0 - I - 0x034785 0D:8775: 01        .byte $01, $50,      $00   ; 05 



off_01_0C_8778_1D:
- D 0 - I - 0x034788 0D:8778: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034789 0D:8779: F0        .byte $F0, $2A, $00, $F0   ; 01 
- D 0 - I - 0x03478D 0D:877D: E1        .byte $E1, $2C,      $F8   ; 02 
- D 0 - I - 0x034790 0D:8780: E1        .byte $E1, $12,      $00   ; 03 
- D 0 - I - 0x034793 0D:8783: 01        .byte $01, $4E,      $F8   ; 04 
- D 0 - I - 0x034796 0D:8786: 01        .byte $01, $06,      $00   ; 05 



off_01_0C_8789_1E:
- D 0 - I - 0x034799 0D:8789: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03479A 0D:878A: F0        .byte $F0, $30, $00, $FC   ; 01 



off_01_0C_878E_1F:
- D 0 - I - 0x03479E 0D:878E: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03479F 0D:878F: F0        .byte $F0, $32, $03, $F4   ; 01 
- D 0 - I - 0x0347A3 0D:8793: F1        .byte $F1, $34,      $FC   ; 02 
- D 0 - I - 0x0347A6 0D:8796: F1        .byte $F1, $36,      $04   ; 03 



off_01_0C_8799_20:
- D 0 - I - 0x0347A9 0D:8799: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0347AA 0D:879A: F0        .byte $F0, $32, $03, $EC   ; 01 
- D 0 - I - 0x0347AE 0D:879E: F1        .byte $F1, $3A,      $F4   ; 02 
- D 0 - I - 0x0347B1 0D:87A1: F1        .byte $F1, $3A,      $FC   ; 03 
- D 0 - I - 0x0347B4 0D:87A4: F1        .byte $F1, $3A,      $04   ; 04 
- D 0 - I - 0x0347B7 0D:87A7: F1        .byte $F1, $36,      $0C   ; 05 



off_01_0C_87AA_21:
- D 0 - I - 0x0347BA 0D:87AA: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0347BB 0D:87AB: F0        .byte $F0, $38, $03, $F0   ; 01 
- D 0 - I - 0x0347BF 0D:87AF: F1        .byte $F1, $3A,      $F8   ; 02 
- D 0 - I - 0x0347C2 0D:87B2: F1        .byte $F1, $3A,      $00   ; 03 
- D 0 - I - 0x0347C5 0D:87B5: F1        .byte $F1, $36,      $08   ; 04 



off_01_0C_87B8_22:
- D 0 - I - 0x0347C8 0D:87B8: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0347C9 0D:87B9: F0        .byte $F0, $3C, $03, $F8   ; 01 
- D 0 - I - 0x0347CD 0D:87BD: F1        .byte $F1, $3E,      $00   ; 02 



off_01_0C_87C0_2B:
- D 0 - I - 0x0347D0 0D:87C0: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0347D1 0D:87C1: F0        .byte $F0, $40, $03, $F8   ; 01 
- D 0 - I - 0x0347D5 0D:87C5: F1        .byte $F1, $42,      $00   ; 02 



off_01_0C_87C8_23:
- D 0 - I - 0x0347D8 0D:87C8: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0347D9 0D:87C9: F0        .byte $F0, $6E, $00, $FC   ; 01 



off_01_0C_87CD_24:
- D 0 - I - 0x0347DD 0D:87CD: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0347DE 0D:87CE: F0        .byte $F0, $68, $00, $F8   ; 01 
- D 0 - I - 0x0347E2 0D:87D2: F0        .byte $F0, $68, $C0, $00   ; 02 



off_01_0C_87D6_25:
- D 0 - I - 0x0347E6 0D:87D6: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0347E7 0D:87D7: F0        .byte $F0, $6A, $00, $F8   ; 01 
- D 0 - I - 0x0347EB 0D:87DB: F0        .byte $F0, $6A, $C0, $00   ; 02 



off_01_0C_87DF_26:
- D 0 - I - 0x0347EF 0D:87DF: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0347F0 0D:87E0: F0        .byte $F0, $6C, $00, $F8   ; 01 
- D 0 - I - 0x0347F4 0D:87E4: F0        .byte $F0, $6C, $C0, $00   ; 02 



off_01_0C_87E8_27:
- D 0 - I - 0x0347F8 0D:87E8: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0347F9 0D:87E9: F0        .byte $F0, $70, $00, $F8   ; 01 
- D 0 - I - 0x0347FD 0D:87ED: F0        .byte $F0, $70, $40, $00   ; 02 



off_01_0C_87F1_28:
- D 0 - I - 0x034801 0D:87F1: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034802 0D:87F2: F0        .byte $F0, $72, $00, $F8   ; 01 
- D 0 - I - 0x034806 0D:87F6: F0        .byte $F0, $72, $40, $00   ; 02 



off_01_0C_87FA_29:
- D 0 - I - 0x03480A 0D:87FA: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03480B 0D:87FB: F0        .byte $F0, $B1, $00, $F8   ; 01 
- D 0 - I - 0x03480F 0D:87FF: F1        .byte $F1, $B3,      $00   ; 02 



off_01_0C_8802_2A:
- D 0 - I - 0x034812 0D:8802: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034813 0D:8803: F0        .byte $F0, $B5, $00, $F8   ; 01 
- D 0 - I - 0x034817 0D:8807: F1        .byte $F1, $B7,      $00   ; 02 



off_02_0D_880A_01:
- D 0 - I - 0x03481A 0D:880A: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03481B 0D:880B: E0        .byte $E0, $00, $00, $F4   ; 01 
- D 0 - I - 0x03481F 0D:880F: E1        .byte $E1, $02,      $FC   ; 02 
- D 0 - I - 0x034822 0D:8812: 01        .byte $01, $04,      $F8   ; 03 
- D 0 - I - 0x034825 0D:8815: 01        .byte $01, $06,      $00   ; 04 



off_02_0D_8818_02:
off_02_0D_8818_04:
- D 0 - I - 0x034828 0D:8818: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034829 0D:8819: E0        .byte $E0, $08, $00, $F5   ; 01 
- D 0 - I - 0x03482D 0D:881D: E1        .byte $E1, $0A,      $FD   ; 02 
- D 0 - I - 0x034830 0D:8820: 01        .byte $01, $0C,      $F8   ; 03 
- D 0 - I - 0x034833 0D:8823: 01        .byte $01, $0E,      $00   ; 04 



off_02_0D_8826_24:
- D 0 - I - 0x034836 0D:8826: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034837 0D:8827: D8        .byte $D8, $08, $00, $F5   ; 01 
- D 0 - I - 0x03483B 0D:882B: D9        .byte $D9, $0A,      $FD   ; 02 
- D 0 - I - 0x03483E 0D:882E: F9        .byte $F9, $0C,      $F8   ; 03 
- D 0 - I - 0x034841 0D:8831: F9        .byte $F9, $0E,      $00   ; 04 



off_02_0D_8834_03:
- D 0 - I - 0x034844 0D:8834: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034845 0D:8835: E0        .byte $E0, $10, $00, $F4   ; 01 
- D 0 - I - 0x034849 0D:8839: E1        .byte $E1, $12,      $FC   ; 02 
- D 0 - I - 0x03484C 0D:883C: 01        .byte $01, $14,      $F8   ; 03 
- D 0 - I - 0x03484F 0D:883F: 01        .byte $01, $16,      $00   ; 04 



off_02_0D_8842_05:
- D 0 - I - 0x034852 0D:8842: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034853 0D:8843: D8        .byte $D8, $00, $00, $F8   ; 01 
- D 0 - I - 0x034857 0D:8847: D9        .byte $D9, $02,      $00   ; 02 
- D 0 - I - 0x03485A 0D:884A: F9        .byte $F9, $2A,      $F8   ; 03 
- D 0 - I - 0x03485D 0D:884D: F9        .byte $F9, $2C,      $00   ; 04 



off_02_0D_8850_06:
- D 0 - I - 0x034860 0D:8850: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034861 0D:8851: D8        .byte $D8, $00, $00, $F6   ; 01 
- D 0 - I - 0x034865 0D:8855: D9        .byte $D9, $02,      $FE   ; 02 
- D 0 - I - 0x034868 0D:8858: F9        .byte $F9, $26,      $F8   ; 03 
- D 0 - I - 0x03486B 0D:885B: F9        .byte $F9, $28,      $00   ; 04 



off_02_0D_885E_0B:
- D 0 - I - 0x03486E 0D:885E: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03486F 0D:885F: E0        .byte $E0, $00, $00, $F6   ; 01 
- D 0 - I - 0x034873 0D:8863: E1        .byte $E1, $02,      $FE   ; 02 
- D 0 - I - 0x034876 0D:8866: 01        .byte $01, $6C,      $F8   ; 03 
- D 0 - I - 0x034879 0D:8869: 01        .byte $01, $6E,      $00   ; 04 



off_02_0D_886C_07:
- D 0 - I - 0x03487C 0D:886C: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03487D 0D:886D: F8        .byte $F8, $40, $80, $F8   ; 01 
- D 0 - I - 0x034881 0D:8871: F9        .byte $F9, $42,      $00   ; 02 



off_02_0D_8874_08:
- D 0 - I - 0x034884 0D:8874: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034885 0D:8875: E2        .byte $E2, $64, $00, $F8   ; 01 
- D 0 - I - 0x034889 0D:8879: E3        .byte $E3, $02,      $00   ; 02 
- D 0 - I - 0x03488C 0D:887C: 01        .byte $01, $2A,      $F8   ; 03 
- D 0 - I - 0x03488F 0D:887F: 01        .byte $01, $2C,      $00   ; 04 



off_02_0D_8882_09:
- D 0 - I - 0x034892 0D:8882: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034893 0D:8883: F0        .byte $F0, $40, $80, $F8   ; 01 
- D 0 - I - 0x034897 0D:8887: F1        .byte $F1, $42,      $00   ; 02 



off_02_0D_888A_0A:
- D 0 - I - 0x03489A 0D:888A: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03489B 0D:888B: F0        .byte $F0, $66, $00, $F0   ; 01 
- D 0 - I - 0x03489F 0D:888F: F1        .byte $F1, $68,      $F8   ; 02 
- D 0 - I - 0x0348A2 0D:8892: F1        .byte $F1, $6A,      $00   ; 03 



off_02_0D_8895_0C:
- D 0 - I - 0x0348A5 0D:8895: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0348A6 0D:8896: F0        .byte $F0, $2E, $00, $F8   ; 01 
- D 0 - I - 0x0348AA 0D:889A: F1        .byte $F1, $30,      $00   ; 02 



off_02_0D_889D_0D:
- D 0 - I - 0x0348AD 0D:889D: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0348AE 0D:889E: F0        .byte $F0, $32, $00, $F8   ; 01 
- D 0 - I - 0x0348B2 0D:88A2: F1        .byte $F1, $34,      $00   ; 02 
- D 0 - I - 0x0348B5 0D:88A5: 11        .byte $11, $36,      $F8   ; 03 
- D 0 - I - 0x0348B8 0D:88A8: 11        .byte $11, $38,      $00   ; 04 



off_02_0D_88AB_0E:
- D 0 - I - 0x0348BB 0D:88AB: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0348BC 0D:88AC: F0        .byte $F0, $3A, $00, $F8   ; 01 
- D 0 - I - 0x0348C0 0D:88B0: F1        .byte $F1, $3C,      $00   ; 02 
- D 0 - I - 0x0348C3 0D:88B3: F1        .byte $F1, $3E,      $08   ; 03 



off_02_0D_88B6_0F:
- D 0 - I - 0x0348C6 0D:88B6: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0348C7 0D:88B7: F0        .byte $F0, $40, $00, $F8   ; 01 
- D 0 - I - 0x0348CB 0D:88BB: F1        .byte $F1, $42,      $00   ; 02 



off_02_0D_88BE_10:
- D 0 - I - 0x0348CE 0D:88BE: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0348CF 0D:88BF: F0        .byte $F0, $44, $00, $F0   ; 01 
- D 0 - I - 0x0348D3 0D:88C3: F1        .byte $F1, $46,      $F8   ; 02 
- D 0 - I - 0x0348D6 0D:88C6: F1        .byte $F1, $48,      $00   ; 03 



off_02_0D_88C9_11:
- - - - - - 0x0348D9 0D:88C9: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- - - - - - 0x0348DA 0D:88CA: F0        .byte $F0, $4A, $00, $F8   ; 01 
- - - - - - 0x0348DE 0D:88CE: F1        .byte $F1, $4E,      $00   ; 02 
- - - - - - 0x0348E1 0D:88D1: 11        .byte $11, $4C,      $F8   ; 03 



off_02_0D_88D4_12:
- D 0 - I - 0x0348E4 0D:88D4: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0348E5 0D:88D5: E0        .byte $E0, $18, $00, $F9   ; 01 
- D 0 - I - 0x0348E9 0D:88D9: E1        .byte $E1, $1A,      $01   ; 02 
- D 0 - I - 0x0348EC 0D:88DC: 01        .byte $01, $14,      $F8   ; 03 
- D 0 - I - 0x0348EF 0D:88DF: 01        .byte $01, $16,      $00   ; 04 



off_02_0D_88E2_13:
- D 0 - I - 0x0348F2 0D:88E2: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0348F3 0D:88E3: E0        .byte $E0, $1C, $00, $EE   ; 01 
- D 0 - I - 0x0348F7 0D:88E7: E1        .byte $E1, $1E,      $F6   ; 02 
- D 0 - I - 0x0348FA 0D:88EA: E1        .byte $E1, $20,      $FE   ; 03 
- D 0 - I - 0x0348FD 0D:88ED: 01        .byte $01, $0C,      $F8   ; 04 
- D 0 - I - 0x034900 0D:88F0: 01        .byte $01, $0E,      $00   ; 05 



off_02_0D_88F3_15:
- - - - - - 0x034903 0D:88F3: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- - - - - - 0x034904 0D:88F4: DA        .byte $DA, $18, $00, $FB   ; 01 
- - - - - - 0x034908 0D:88F8: DB        .byte $DB, $1A,      $03   ; 02 
- - - - - - 0x03490B 0D:88FB: F9        .byte $F9, $2A,      $F8   ; 03 
- - - - - - 0x03490E 0D:88FE: F9        .byte $F9, $2C,      $00   ; 04 



off_02_0D_8901_16:
- - - - - - 0x034911 0D:8901: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- - - - - - 0x034912 0D:8902: DA        .byte $DA, $1C, $00, $EF   ; 01 
- - - - - - 0x034916 0D:8906: DB        .byte $DB, $1E,      $F7   ; 02 
- - - - - - 0x034919 0D:8909: DB        .byte $DB, $20,      $FF   ; 03 
- - - - - - 0x03491C 0D:890C: F9        .byte $F9, $2A,      $F8   ; 04 
- - - - - - 0x03491F 0D:890F: F9        .byte $F9, $2C,      $00   ; 05 



off_02_0D_8912_17:
- - - - - - 0x034922 0D:8912: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- - - - - - 0x034923 0D:8913: DA        .byte $DA, $18, $00, $F9   ; 01 
- - - - - - 0x034927 0D:8917: DB        .byte $DB, $1A,      $01   ; 02 
- - - - - - 0x03492A 0D:891A: F9        .byte $F9, $26,      $F8   ; 03 
- - - - - - 0x03492D 0D:891D: F9        .byte $F9, $28,      $00   ; 04 



off_02_0D_8920_18:
- - - - - - 0x034930 0D:8920: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- - - - - - 0x034931 0D:8921: DA        .byte $DA, $1C, $00, $EE   ; 01 
- - - - - - 0x034935 0D:8925: DB        .byte $DB, $1E,      $F6   ; 02 
- - - - - - 0x034938 0D:8928: DB        .byte $DB, $20,      $FE   ; 03 
- - - - - - 0x03493B 0D:892B: F9        .byte $F9, $26,      $F8   ; 04 
- - - - - - 0x03493E 0D:892E: F9        .byte $F9, $28,      $00   ; 05 



off_02_0D_8931_19:
- - - - - - 0x034941 0D:8931: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- - - - - - 0x034942 0D:8932: E8        .byte $E8, $18, $00, $FC   ; 01 
- - - - - - 0x034946 0D:8936: E9        .byte $E9, $1A,      $04   ; 02 
- - - - - - 0x034949 0D:8939: 09        .byte $09, $22,      $F8   ; 03 
- - - - - - 0x03494C 0D:893C: 09        .byte $09, $24,      $00   ; 04 



off_02_0D_893F_1A:
- - - - - - 0x03494F 0D:893F: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- - - - - - 0x034950 0D:8940: E8        .byte $E8, $1C, $00, $EE   ; 01 
- - - - - - 0x034954 0D:8944: E9        .byte $E9, $1E,      $F6   ; 02 
- - - - - - 0x034957 0D:8947: E9        .byte $E9, $20,      $FE   ; 03 
- - - - - - 0x03495A 0D:894A: 09        .byte $09, $22,      $F8   ; 04 
- - - - - - 0x03495D 0D:894D: 09        .byte $09, $24,      $00   ; 05 



off_02_0D_8950_1B:
- D 0 - I - 0x034960 0D:8950: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034961 0D:8951: F0        .byte $F0, $2E, $80, $F8   ; 01 
- D 0 - I - 0x034965 0D:8955: F1        .byte $F1, $30,      $00   ; 02 



off_02_0D_8958_1C:
- D 0 - I - 0x034968 0D:8958: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034969 0D:8959: D0        .byte $D0, $36, $80, $F8   ; 01 
- D 0 - I - 0x03496D 0D:895D: D1        .byte $D1, $38,      $00   ; 02 
- D 0 - I - 0x034970 0D:8960: F1        .byte $F1, $32,      $F8   ; 03 
- D 0 - I - 0x034973 0D:8963: F1        .byte $F1, $34,      $00   ; 04 



off_02_0D_8966_1D:
- - - - - - 0x034976 0D:8966: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- - - - - - 0x034977 0D:8967: F0        .byte $F0, $3A, $80, $F8   ; 01 
- - - - - - 0x03497B 0D:896B: F1        .byte $F1, $3C,      $00   ; 02 
- - - - - - 0x03497E 0D:896E: F1        .byte $F1, $3E,      $08   ; 03 



off_02_0D_8971_1E:
- D 0 - I - 0x034981 0D:8971: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034982 0D:8972: E0        .byte $E0, $50, $00, $F8   ; 01 
- D 0 - I - 0x034986 0D:8976: 01        .byte $01, $52,      $F8   ; 02 
- D 0 - I - 0x034989 0D:8979: 01        .byte $01, $54,      $00   ; 03 



off_02_0D_897C_1F:
- - - - - - 0x03498C 0D:897C: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- - - - - - 0x03498D 0D:897D: E0        .byte $E0, $52, $80, $F8   ; 01 
- - - - - - 0x034991 0D:8981: E1        .byte $E1, $54,      $00   ; 02 
- - - - - - 0x034994 0D:8984: 01        .byte $01, $50,      $F8   ; 03 



off_02_0D_8987_20:
- D 0 - I - 0x034997 0D:8987: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034998 0D:8988: E0        .byte $E0, $56, $00, $F8   ; 01 
- D 0 - I - 0x03499C 0D:898C: F1        .byte $F1, $58,      $00   ; 02 
- D 0 - I - 0x03499F 0D:898F: F1        .byte $F1, $5A,      $08   ; 03 



off_02_0D_8992_21:
- D 0 - I - 0x0349A2 0D:8992: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0349A3 0D:8993: F0        .byte $F0, $58, $80, $00   ; 01 
- D 0 - I - 0x0349A7 0D:8997: F1        .byte $F1, $5A,      $08   ; 02 
- D 0 - I - 0x0349AA 0D:899A: 01        .byte $01, $56,      $F8   ; 03 



off_02_0D_899D_14:
- D 0 - I - 0x0349AD 0D:899D: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0349AE 0D:899E: E0        .byte $E0, $5C, $00, $F8   ; 01 
- D 0 - I - 0x0349B2 0D:89A2: E1        .byte $E1, $5E,      $00   ; 02 
- D 0 - I - 0x0349B5 0D:89A5: 01        .byte $01, $14,      $F8   ; 03 
- D 0 - I - 0x0349B8 0D:89A8: 01        .byte $01, $16,      $00   ; 04 



off_02_0D_89AB_22:
- D 0 - I - 0x0349BB 0D:89AB: 06        .byte $06   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0349BC 0D:89AC: E4        .byte $E4, $60, $01, $E4   ; 01 
- D 0 - I - 0x0349C0 0D:89B0: E0        .byte $E0, $1C, $00, $EC   ; 02 
- D 0 - I - 0x0349C4 0D:89B4: E1        .byte $E1, $1E,      $F4   ; 03 
- D 0 - I - 0x0349C7 0D:89B7: E1        .byte $E1, $20,      $FC   ; 04 
- D 0 - I - 0x0349CA 0D:89BA: 01        .byte $01, $14,      $F8   ; 05 
- D 0 - I - 0x0349CD 0D:89BD: 01        .byte $01, $16,      $00   ; 06 



off_02_0D_89C0_23:
- D 0 - I - 0x0349D0 0D:89C0: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0349D1 0D:89C1: E8        .byte $E8, $5C, $00, $FC   ; 01 
- D 0 - I - 0x0349D5 0D:89C5: E9        .byte $E9, $5E,      $04   ; 02 
- D 0 - I - 0x0349D8 0D:89C8: 09        .byte $09, $22,      $F8   ; 03 
- D 0 - I - 0x0349DB 0D:89CB: 09        .byte $09, $24,      $00   ; 04 



off_02_0D_89CE_25:
- D 0 - I - 0x0349DE 0D:89CE: 06        .byte $06   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0349DF 0D:89CF: EE        .byte $EE, $60, $01, $E6   ; 01 
- D 0 - I - 0x0349E3 0D:89D3: EA        .byte $EA, $1C, $00, $EE   ; 02 
- D 0 - I - 0x0349E7 0D:89D7: EB        .byte $EB, $1E,      $F6   ; 03 
- D 0 - I - 0x0349EA 0D:89DA: EB        .byte $EB, $20,      $FE   ; 04 
- D 0 - I - 0x0349ED 0D:89DD: 09        .byte $09, $22,      $F8   ; 05 
- D 0 - I - 0x0349F0 0D:89E0: 09        .byte $09, $24,      $00   ; 06 



off_02_0D_89E3_26:
- D 0 - I - 0x0349F3 0D:89E3: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0349F4 0D:89E4: D8        .byte $D8, $5C, $00, $FA   ; 01 
- D 0 - I - 0x0349F8 0D:89E8: D9        .byte $D9, $5E,      $02   ; 02 
- D 0 - I - 0x0349FB 0D:89EB: F9        .byte $F9, $26,      $F8   ; 03 
- D 0 - I - 0x0349FE 0D:89EE: F9        .byte $F9, $28,      $00   ; 04 



off_02_0D_89F1_27:
- D 0 - I - 0x034A01 0D:89F1: 06        .byte $06   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034A02 0D:89F2: DC        .byte $DC, $60, $01, $E6   ; 01 
- D 0 - I - 0x034A06 0D:89F6: D8        .byte $D8, $1C, $00, $EE   ; 02 
- D 0 - I - 0x034A0A 0D:89FA: D9        .byte $D9, $1E,      $F6   ; 03 
- D 0 - I - 0x034A0D 0D:89FD: D9        .byte $D9, $20,      $FE   ; 04 
- D 0 - I - 0x034A10 0D:8A00: F9        .byte $F9, $26,      $F8   ; 05 
- D 0 - I - 0x034A13 0D:8A03: F9        .byte $F9, $28,      $00   ; 06 



off_02_0D_8A06_28:
- D 0 - I - 0x034A16 0D:8A06: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034A17 0D:8A07: D8        .byte $D8, $5C, $00, $FA   ; 01 
- D 0 - I - 0x034A1B 0D:8A0B: D9        .byte $D9, $5E,      $02   ; 02 
- D 0 - I - 0x034A1E 0D:8A0E: F9        .byte $F9, $2A,      $F8   ; 03 
- D 0 - I - 0x034A21 0D:8A11: F9        .byte $F9, $2C,      $00   ; 04 



off_02_0D_8A14_29:
- D 0 - I - 0x034A24 0D:8A14: 06        .byte $06   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034A25 0D:8A15: DC        .byte $DC, $60, $01, $E6   ; 01 
- D 0 - I - 0x034A29 0D:8A19: D8        .byte $D8, $1C, $00, $EE   ; 02 
- D 0 - I - 0x034A2D 0D:8A1D: D9        .byte $D9, $1E,      $F6   ; 03 
- D 0 - I - 0x034A30 0D:8A20: D9        .byte $D9, $20,      $FE   ; 04 
- D 0 - I - 0x034A33 0D:8A23: F9        .byte $F9, $2A,      $F8   ; 05 
- D 0 - I - 0x034A36 0D:8A26: F9        .byte $F9, $2C,      $00   ; 06 



off_03_0E_8A29_01:
- D 0 - I - 0x034A39 0D:8A29: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034A3A 0D:8A2A: C0        .byte $C0, $00, $00, $FC   ; 01 
- D 0 - I - 0x034A3E 0D:8A2E: E1        .byte $E1, $02,      $F8   ; 02 
- D 0 - I - 0x034A41 0D:8A31: E1        .byte $E1, $04,      $00   ; 03 
- D 0 - I - 0x034A44 0D:8A34: 01        .byte $01, $06,      $F9   ; 04 
- D 0 - I - 0x034A47 0D:8A37: 01        .byte $01, $08,      $01   ; 05 



off_03_0E_8A3A_02:
off_03_0E_8A3A_04:
- D 0 - I - 0x034A4A 0D:8A3A: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034A4B 0D:8A3B: C0        .byte $C0, $0A, $00, $FC   ; 01 
- D 0 - I - 0x034A4F 0D:8A3F: E1        .byte $E1, $0C,      $F8   ; 02 
- D 0 - I - 0x034A52 0D:8A42: E1        .byte $E1, $0E,      $00   ; 03 
- D 0 - I - 0x034A55 0D:8A45: 01        .byte $01, $10,      $F8   ; 04 
- D 0 - I - 0x034A58 0D:8A48: 01        .byte $01, $12,      $00   ; 05 



off_03_0E_8A4B_03:
- D 0 - I - 0x034A5B 0D:8A4B: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034A5C 0D:8A4C: C0        .byte $C0, $00, $00, $FC   ; 01 
- D 0 - I - 0x034A60 0D:8A50: E1        .byte $E1, $14,      $F8   ; 02 
- D 0 - I - 0x034A63 0D:8A53: E1        .byte $E1, $16,      $00   ; 03 
- D 0 - I - 0x034A66 0D:8A56: 01        .byte $01, $18,      $F9   ; 04 
- D 0 - I - 0x034A69 0D:8A59: 01        .byte $01, $1A,      $01   ; 05 



off_03_0E_8A5C_05:
- D 0 - I - 0x034A6C 0D:8A5C: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034A6D 0D:8A5D: C0        .byte $C0, $00, $00, $FC   ; 01 
- D 0 - I - 0x034A71 0D:8A61: E1        .byte $E1, $02,      $F8   ; 02 
- D 0 - I - 0x034A74 0D:8A64: E1        .byte $E1, $04,      $00   ; 03 
- D 0 - I - 0x034A77 0D:8A67: 01        .byte $01, $06,      $F9   ; 04 
- D 0 - I - 0x034A7A 0D:8A6A: 01        .byte $01, $1C,      $01   ; 05 



off_03_0E_8A6D_06:
- D 0 - I - 0x034A7D 0D:8A6D: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034A7E 0D:8A6E: C0        .byte $C0, $00, $00, $FC   ; 01 
- D 0 - I - 0x034A82 0D:8A72: E1        .byte $E1, $14,      $F8   ; 02 
- D 0 - I - 0x034A85 0D:8A75: E1        .byte $E1, $16,      $00   ; 03 
- D 0 - I - 0x034A88 0D:8A78: 01        .byte $01, $1E,      $F9   ; 04 
- D 0 - I - 0x034A8B 0D:8A7B: 01        .byte $01, $1A,      $01   ; 05 



off_03_0E_8A7E_0C:
- D 0 - I - 0x034A8E 0D:8A7E: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034A8F 0D:8A7F: C0        .byte $C0, $00, $00, $FB   ; 01 
- D 0 - I - 0x034A93 0D:8A83: E1        .byte $E1, $20,      $F4   ; 02 
- D 0 - I - 0x034A96 0D:8A86: E1        .byte $E1, $22,      $FC   ; 03 
- D 0 - I - 0x034A99 0D:8A89: 01        .byte $01, $24,      $F8   ; 04 
- D 0 - I - 0x034A9C 0D:8A8C: 01        .byte $01, $26,      $00   ; 05 



off_03_0E_8A8F_0D:
- D 0 - I - 0x034A9F 0D:8A8F: 08        .byte $08   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034AA0 0D:8A90: C0        .byte $C0, $00, $00, $FC   ; 01 
- D 0 - I - 0x034AA4 0D:8A94: E1        .byte $E1, $02,      $F8   ; 02 
- D 0 - I - 0x034AA7 0D:8A97: E1        .byte $E1, $28,      $00   ; 03 
- D 0 - I - 0x034AAA 0D:8A9A: E1        .byte $E1, $2A,      $08   ; 04 
- D 0 - I - 0x034AAD 0D:8A9D: 01        .byte $01, $06,      $F9   ; 05 
- D 0 - I - 0x034AB0 0D:8AA0: 01        .byte $01, $2C,      $00   ; 06 
- D 0 - I - 0x034AB3 0D:8AA3: 01        .byte $01, $2E,      $08   ; 07 
- D 0 - I - 0x034AB6 0D:8AA6: EB        .byte $EB, $30,      $10   ; 08 



off_03_0E_8AA9_0E:
- D 0 - I - 0x034AB9 0D:8AA9: 07        .byte $07   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034ABA 0D:8AAA: C0        .byte $C0, $00, $00, $FC   ; 01 
- D 0 - I - 0x034ABE 0D:8AAE: E1        .byte $E1, $02,      $F8   ; 02 
- D 0 - I - 0x034AC1 0D:8AB1: E1        .byte $E1, $32,      $00   ; 03 
- D 0 - I - 0x034AC4 0D:8AB4: E1        .byte $E1, $34,      $08   ; 04 
- D 0 - I - 0x034AC7 0D:8AB7: 01        .byte $01, $06,      $F9   ; 05 
- D 0 - I - 0x034ACA 0D:8ABA: 01        .byte $01, $2C,      $00   ; 06 
- D 0 - I - 0x034ACD 0D:8ABD: 01        .byte $01, $2E,      $08   ; 07 



off_03_0E_8AC0_0B:
- D 0 - I - 0x034AD0 0D:8AC0: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034AD1 0D:8AC1: E8        .byte $E8, $38, $00, $F8   ; 01 
- D 0 - I - 0x034AD5 0D:8AC5: E9        .byte $E9, $3A,      $00   ; 02 
- D 0 - I - 0x034AD8 0D:8AC8: 09        .byte $09, $3C,      $F8   ; 03 
- D 0 - I - 0x034ADB 0D:8ACB: 09        .byte $09, $3E,      $00   ; 04 



off_03_0E_8ACE_07:
- D 0 - I - 0x034ADE 0D:8ACE: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034ADF 0D:8ACF: F0        .byte $F0, $38, $00, $F8   ; 01 
- D 0 - I - 0x034AE3 0D:8AD3: F1        .byte $F1, $3A,      $00   ; 02 
- D 0 - I - 0x034AE6 0D:8AD6: 11        .byte $11, $3C,      $F8   ; 03 
- D 0 - I - 0x034AE9 0D:8AD9: 11        .byte $11, $3E,      $00   ; 04 



off_03_0E_8ADC_0F:
- D 0 - I - 0x034AEC 0D:8ADC: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034AED 0D:8ADD: F0        .byte $F0, $40, $00, $F8   ; 01 
- D 0 - I - 0x034AF1 0D:8AE1: F1        .byte $F1, $42,      $00   ; 02 
- D 0 - I - 0x034AF4 0D:8AE4: 11        .byte $11, $44,      $F8   ; 03 
- D 0 - I - 0x034AF7 0D:8AE7: 11        .byte $11, $46,      $00   ; 04 



off_03_0E_8AEA_10:
- D 0 - I - 0x034AFA 0D:8AEA: 07        .byte $07   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034AFB 0D:8AEB: F0        .byte $F0, $38, $00, $F8   ; 01 
- D 0 - I - 0x034AFF 0D:8AEF: F1        .byte $F1, $48,      $00   ; 02 
- D 0 - I - 0x034B02 0D:8AF2: F1        .byte $F1, $2A,      $08   ; 03 
- D 0 - I - 0x034B05 0D:8AF5: 11        .byte $11, $3C,      $F8   ; 04 
- D 0 - I - 0x034B08 0D:8AF8: 11        .byte $11, $4A,      $00   ; 05 
- D 0 - I - 0x034B0B 0D:8AFB: 11        .byte $11, $2E,      $08   ; 06 
- D 0 - I - 0x034B0E 0D:8AFE: F9        .byte $F9, $30,      $10   ; 07 



off_03_0E_8B01_11:
- D 0 - I - 0x034B11 0D:8B01: 06        .byte $06   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034B12 0D:8B02: F0        .byte $F0, $38, $00, $F8   ; 01 
- D 0 - I - 0x034B16 0D:8B06: F1        .byte $F1, $48,      $00   ; 02 
- D 0 - I - 0x034B19 0D:8B09: F1        .byte $F1, $34,      $08   ; 03 
- D 0 - I - 0x034B1C 0D:8B0C: 11        .byte $11, $3C,      $F8   ; 04 
- D 0 - I - 0x034B1F 0D:8B0F: 11        .byte $11, $4A,      $00   ; 05 
- D 0 - I - 0x034B22 0D:8B12: 11        .byte $11, $36,      $08   ; 06 



off_03_0E_8B15_08:
- D 0 - I - 0x034B25 0D:8B15: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034B26 0D:8B16: E0        .byte $E0, $4C, $00, $FB   ; 01 
- D 0 - I - 0x034B2A 0D:8B1A: E1        .byte $E1, $4E,      $03   ; 02 
- D 0 - I - 0x034B2D 0D:8B1D: 01        .byte $01, $50,      $F8   ; 03 
- D 0 - I - 0x034B30 0D:8B20: 01        .byte $01, $52,      $00   ; 04 



off_03_0E_8B23_09:
- D 0 - I - 0x034B33 0D:8B23: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034B34 0D:8B24: E0        .byte $E0, $4C, $00, $F8   ; 01 
- D 0 - I - 0x034B38 0D:8B28: E1        .byte $E1, $4E,      $00   ; 02 
- D 0 - I - 0x034B3B 0D:8B2B: 01        .byte $01, $36,      $F8   ; 03 
- D 0 - I - 0x034B3E 0D:8B2E: 01        .byte $01, $3E,      $00   ; 04 



off_03_0E_8B31_0A:
- D 0 - I - 0x034B41 0D:8B31: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034B42 0D:8B32: 00        .byte $00, $54, $00, $E8   ; 01 
- D 0 - I - 0x034B46 0D:8B36: 01        .byte $01, $56,      $F0   ; 02 
- D 0 - I - 0x034B49 0D:8B39: 01        .byte $01, $58,      $F8   ; 03 
- D 0 - I - 0x034B4C 0D:8B3C: 01        .byte $01, $5A,      $00   ; 04 



off_03_0E_8B3F_12:
- D 0 - I - 0x034B4F 0D:8B3F: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034B50 0D:8B40: F0        .byte $F0, $60, $00, $F8   ; 01 
- D 0 - I - 0x034B54 0D:8B44: F1        .byte $F1, $62,      $00   ; 02 



off_03_0E_8B47_13:
- D 0 - I - 0x034B57 0D:8B47: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034B58 0D:8B48: F6        .byte $F6, $64, $00, $F8   ; 01 
- D 0 - I - 0x034B5C 0D:8B4C: F7        .byte $F7, $66,      $00   ; 02 



off_03_0E_8B4F_14:
- D 0 - I - 0x034B5F 0D:8B4F: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034B60 0D:8B50: FC        .byte $FC, $68, $00, $F8   ; 01 
- D 0 - I - 0x034B64 0D:8B54: FD        .byte $FD, $6A,      $00   ; 02 



off_03_0E_8B57_15:
off_03_0E_8B57_1F:
- D 0 - I - 0x034B67 0D:8B57: 06        .byte $06   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034B68 0D:8B58: F0        .byte $F0, $38, $00, $F8   ; 01 
- D 0 - I - 0x034B6C 0D:8B5C: F1        .byte $F1, $48,      $00   ; 02 
- D 0 - I - 0x034B6F 0D:8B5F: F1        .byte $F1, $34,      $08   ; 03 
- D 0 - I - 0x034B72 0D:8B62: 11        .byte $11, $3C,      $F8   ; 04 
- D 0 - I - 0x034B75 0D:8B65: 11        .byte $11, $4A,      $00   ; 05 
- D 0 - I - 0x034B78 0D:8B68: 11        .byte $11, $36,      $08   ; 06 



off_03_0E_8B6B_16:
off_03_0E_8B6B_1E:
- D 0 - I - 0x034B7B 0D:8B6B: 07        .byte $07   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034B7C 0D:8B6C: F0        .byte $F0, $38, $00, $F8   ; 01 
- D 0 - I - 0x034B80 0D:8B70: F1        .byte $F1, $48,      $00   ; 02 
- D 0 - I - 0x034B83 0D:8B73: F1        .byte $F1, $2A,      $08   ; 03 
- D 0 - I - 0x034B86 0D:8B76: 11        .byte $11, $3C,      $F8   ; 04 
- D 0 - I - 0x034B89 0D:8B79: 11        .byte $11, $4A,      $00   ; 05 
- D 0 - I - 0x034B8C 0D:8B7C: 11        .byte $11, $2E,      $08   ; 06 
- D 0 - I - 0x034B8F 0D:8B7F: F9        .byte $F9, $30,      $10   ; 07 



off_03_0E_8B82_17:
off_03_0E_8B82_1D:
- D 0 - I - 0x034B92 0D:8B82: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034B93 0D:8B83: F0        .byte $F0, $40, $00, $F8   ; 01 
- D 0 - I - 0x034B97 0D:8B87: F1        .byte $F1, $42,      $00   ; 02 
- D 0 - I - 0x034B9A 0D:8B8A: 11        .byte $11, $44,      $F8   ; 03 
- D 0 - I - 0x034B9D 0D:8B8D: 11        .byte $11, $46,      $00   ; 04 



off_03_0E_8B90_18:
off_03_0E_8B90_1C:
- D 0 - I - 0x034BA0 0D:8B90: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034BA1 0D:8B91: 00        .byte $00, $6C, $01, $F8   ; 01 
- D 0 - I - 0x034BA5 0D:8B95: 01        .byte $01, $6E,      $00   ; 02 
- D 0 - I - 0x034BA8 0D:8B98: F1        .byte $F1, $40,      $F8   ; 03 
- D 0 - I - 0x034BAB 0D:8B9B: F1        .byte $F1, $42,      $00   ; 04 



off_03_0E_8B9E_19:
off_03_0E_8B9E_1B:
- D 0 - I - 0x034BAE 0D:8B9E: 08        .byte $08   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034BAF 0D:8B9F: E0        .byte $E0, $72, $01, $F8   ; 01 
- D 0 - I - 0x034BB3 0D:8BA3: E1        .byte $E1, $76,      $00   ; 02 
- D 0 - I - 0x034BB6 0D:8BA6: 01        .byte $01, $74,      $F8   ; 03 
- D 0 - I - 0x034BB9 0D:8BA9: 01        .byte $01, $78,      $00   ; 04 
- D 0 - I - 0x034BBC 0D:8BAC: E1        .byte $E1, $70,      $F0   ; 05 
- D 0 - I - 0x034BBF 0D:8BAF: F0        .byte $F0, $40, $00, $F8   ; 06 
- D 0 - I - 0x034BC3 0D:8BB3: F1        .byte $F1, $42,      $00   ; 07 
- D 0 - I - 0x034BC6 0D:8BB6: E8        .byte $E8, $70, $41, $08   ; 08 



off_03_0E_8BBA_1A:
- D 0 - I - 0x034BCA 0D:8BBA: 08        .byte $08   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034BCB 0D:8BBB: F0        .byte $F0, $7A, $01, $F0   ; 01 
- D 0 - I - 0x034BCF 0D:8BBF: F1        .byte $F1, $7C,      $F8   ; 02 
- D 0 - I - 0x034BD2 0D:8BC2: 11        .byte $11, $7E,      $F5   ; 03 
- D 0 - I - 0x034BD5 0D:8BC5: 00        .byte $00, $60, $00, $F8   ; 04 
- D 0 - I - 0x034BD9 0D:8BC9: 01        .byte $01, $62,      $00   ; 05 
- D 0 - I - 0x034BDC 0D:8BCC: F0        .byte $F0, $7C, $41, $00   ; 06 
- D 0 - I - 0x034BE0 0D:8BD0: F1        .byte $F1, $7A,      $08   ; 07 
- D 0 - I - 0x034BE3 0D:8BD3: 11        .byte $11, $7E,      $03   ; 08 



off_03_0E_8BD6_20:
- D 0 - I - 0x034BE6 0D:8BD6: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034BE7 0D:8BD7: F0        .byte $F0, $5C, $03, $FC   ; 01 



off_03_0E_8BDB_21:
- D 0 - I - 0x034BEB 0D:8BDB: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034BEC 0D:8BDC: F0        .byte $F0, $5C, $01, $FC   ; 01 



off_03_0E_8BE0_22:
- - - - - - 0x034BF0 0D:8BE0: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- - - - - - 0x034BF1 0D:8BE1: F0        .byte $F0, $5E, $01, $FC   ; 01 
- - - - - - 0x034BF5 0D:8BE5: F0        .byte $F0, $5E, $41, $00   ; 02 



_off039_8BE9_04:
- - - - - - 0x034BF9 0D:8BE9: 7E 8D     .word off_04_8D7E_00     ; unused
- D 0 - I - 0x034BFB 0D:8BEB: 7E 8D     .word off_04_8D7E_01
- D 0 - I - 0x034BFD 0D:8BED: 8C 8D     .word off_04_8D8C_02
- D 0 - I - 0x034BFF 0D:8BEF: 9A 8D     .word off_04_8D9A_03
- D 0 - I - 0x034C01 0D:8BF1: A3 8D     .word off_04_8DA3_04
- D 0 - I - 0x034C03 0D:8BF3: AB 8D     .word off_04_8DAB_05
- D 0 - I - 0x034C05 0D:8BF5: B9 8D     .word off_04_8DB9_06
- D 0 - I - 0x034C07 0D:8BF7: C1 8D     .word off_04_8DC1_07
- D 0 - I - 0x034C09 0D:8BF9: B9 8D     .word off_04_8DB9_08
- D 0 - I - 0x034C0B 0D:8BFB: CF 8D     .word off_04_8DCF_09
- D 0 - I - 0x034C0D 0D:8BFD: 03 8E     .word off_04_8E03_0A
- D 0 - I - 0x034C0F 0D:8BFF: 08 8E     .word off_04_8E08_0B
- D 0 - I - 0x034C11 0D:8C01: 0D 8E     .word off_04_8E0D_0C
- D 0 - I - 0x034C13 0D:8C03: 15 8E     .word off_04_8E15_0D
- D 0 - I - 0x034C15 0D:8C05: 1D 8E     .word off_04_8E1D_0E
- D 0 - I - 0x034C17 0D:8C07: 25 8E     .word off_04_8E25_0F
- D 0 - I - 0x034C19 0D:8C09: 2E 8E     .word off_04_8E2E_10
- D 0 - I - 0x034C1B 0D:8C0B: 36 8E     .word off_04_8E36_11
- D 0 - I - 0x034C1D 0D:8C0D: 3E 8E     .word off_04_8E3E_12
- D 0 - I - 0x034C1F 0D:8C0F: 36 8E     .word off_04_8E36_13
- D 0 - I - 0x034C21 0D:8C11: 66 8E     .word off_04_8E66_14
- D 0 - I - 0x034C23 0D:8C13: 6E 8E     .word off_04_8E6E_15
- D 0 - I - 0x034C25 0D:8C15: 96 8E     .word off_04_8E96_16
- D 0 - I - 0x034C27 0D:8C17: A7 8E     .word off_04_8EA7_17
- D 0 - I - 0x034C29 0D:8C19: B8 8E     .word off_04_8EB8_18
- D 0 - I - 0x034C2B 0D:8C1B: D3 8E     .word off_04_8ED3_19
- D 0 - I - 0x034C2D 0D:8C1D: 19 8F     .word off_04_8F19_1A
- D 0 - I - 0x034C2F 0D:8C1F: 27 8F     .word off_04_8F27_1B
- D 0 - I - 0x034C31 0D:8C21: A5 90     .word off_04_90A5_1C
- D 0 - I - 0x034C33 0D:8C23: AD 90     .word off_04_90AD_1D
- D 0 - I - 0x034C35 0D:8C25: B5 90     .word off_04_90B5_1E
- D 0 - I - 0x034C37 0D:8C27: 71 8F     .word off_04_8F71_1F
- D 0 - I - 0x034C39 0D:8C29: 80 8F     .word off_04_8F80_20
- D 0 - I - 0x034C3B 0D:8C2B: 8F 8F     .word off_04_8F8F_21
- D 0 - I - 0x034C3D 0D:8C2D: 9D 8F     .word off_04_8F9D_22
- D 0 - I - 0x034C3F 0D:8C2F: AB 8F     .word off_04_8FAB_23
- D 0 - I - 0x034C41 0D:8C31: BC 8F     .word off_04_8FBC_24
- D 0 - I - 0x034C43 0D:8C33: CA 8F     .word off_04_8FCA_25
- D 0 - I - 0x034C45 0D:8C35: EE 8F     .word off_04_8FEE_26
- D 0 - I - 0x034C47 0D:8C37: F6 8F     .word off_04_8FF6_27
- - - - - - 0x034C49 0D:8C39: F6 8F     .word off_04_8FF6_28
- D 0 - I - 0x034C4B 0D:8C3B: E7 8E     .word off_04_8EE7_29
- D 0 - I - 0x034C4D 0D:8C3D: 05 8F     .word off_04_8F05_2A
- - - - - - 0x034C4F 0D:8C3F: 7E 8D     .word off_04_8D7E_2B
- D 0 - I - 0x034C51 0D:8C41: 68 90     .word off_04_9068_2C
- D 0 - I - 0x034C53 0D:8C43: 70 90     .word off_04_9070_2D
- D 0 - I - 0x034C55 0D:8C45: 78 90     .word off_04_9078_2E
- D 0 - I - 0x034C57 0D:8C47: 80 90     .word off_04_9080_2F
- D 0 - I - 0x034C59 0D:8C49: 88 90     .word off_04_9088_30
- D 0 - I - 0x034C5B 0D:8C4B: 8D 90     .word off_04_908D_31
- D 0 - I - 0x034C5D 0D:8C4D: 95 90     .word off_04_9095_32
- D 0 - I - 0x034C5F 0D:8C4F: 9D 90     .word off_04_909D_33
- D 0 - I - 0x034C61 0D:8C51: BD 90     .word off_04_90BD_34
- D 0 - I - 0x034C63 0D:8C53: CE 90     .word off_04_90CE_35
- D 0 - I - 0x034C65 0D:8C55: DF 90     .word off_04_90DF_36
- D 0 - I - 0x034C67 0D:8C57: CE 90     .word off_04_90CE_37
- D 0 - I - 0x034C69 0D:8C59: F0 90     .word off_04_90F0_38
- D 0 - I - 0x034C6B 0D:8C5B: FE 90     .word off_04_90FE_39
- D 0 - I - 0x034C6D 0D:8C5D: 06 91     .word off_04_9106_3A
- D 0 - I - 0x034C6F 0D:8C5F: 23 91     .word off_04_9123_3B
- D 0 - I - 0x034C71 0D:8C61: 40 91     .word off_04_9140_3C
- D 0 - I - 0x034C73 0D:8C63: 5C 91     .word off_04_915C_3D
- D 0 - I - 0x034C75 0D:8C65: 77 91     .word off_04_9177_3E
- D 0 - I - 0x034C77 0D:8C67: 86 8E     .word off_04_8E86_3F
- D 0 - I - 0x034C79 0D:8C69: 8E 8E     .word off_04_8E8E_40
- - - - - - 0x034C7B 0D:8C6B: 7E 8D     .word off_04_8D7E_41
- - - - - - 0x034C7D 0D:8C6D: 7E 8D     .word off_04_8D7E_42
- - - - - - 0x034C7F 0D:8C6F: 7E 8D     .word off_04_8D7E_43
- - - - - - 0x034C81 0D:8C71: 7E 8D     .word off_04_8D7E_44
- - - - - - 0x034C83 0D:8C73: 7E 8D     .word off_04_8D7E_45
- D 0 - I - 0x034C85 0D:8C75: 9E 91     .word off_04_919E_46
- D 0 - I - 0x034C87 0D:8C77: B8 91     .word off_04_91B8_47
- - - - - - 0x034C89 0D:8C79: B8 91     .word off_04_91B8_48
- D 0 - I - 0x034C8B 0D:8C7B: D2 91     .word off_04_91D2_49
- D 0 - I - 0x034C8D 0D:8C7D: E0 91     .word off_04_91E0_4A
- D 0 - I - 0x034C8F 0D:8C7F: EE 91     .word off_04_91EE_4B
- D 0 - I - 0x034C91 0D:8C81: FF 91     .word off_04_91FF_4C
- D 0 - I - 0x034C93 0D:8C83: 0D 92     .word off_04_920D_4D
- D 0 - I - 0x034C95 0D:8C85: 1E 92     .word off_04_921E_4E
- D 0 - I - 0x034C97 0D:8C87: 2D 92     .word off_04_922D_4F
- D 0 - I - 0x034C99 0D:8C89: 35 92     .word off_04_9235_50
- D 0 - I - 0x034C9B 0D:8C8B: 3D 92     .word off_04_923D_51
- D 0 - I - 0x034C9D 0D:8C8D: 45 92     .word off_04_9245_52
- D 0 - I - 0x034C9F 0D:8C8F: 4A 92     .word off_04_924A_53
- D 0 - I - 0x034CA1 0D:8C91: 52 92     .word off_04_9252_54
- D 0 - I - 0x034CA3 0D:8C93: 69 92     .word off_04_9269_55
- D 0 - I - 0x034CA5 0D:8C95: 81 92     .word off_04_9281_56
- - - - - - 0x034CA7 0D:8C97: 81 92     .word off_04_9281_57
- D 0 - I - 0x034CA9 0D:8C99: 8D 91     .word off_04_918D_58
- D 0 - I - 0x034CAB 0D:8C9B: 95 91     .word off_04_9195_59
- D 0 - I - 0x034CAD 0D:8C9D: 35 8F     .word off_04_8F35_5A
- D 0 - I - 0x034CAF 0D:8C9F: 46 8F     .word off_04_8F46_5B
- D 0 - I - 0x034CB1 0D:8CA1: B2 92     .word off_04_92B2_5C
- D 0 - I - 0x034CB3 0D:8CA3: C4 92     .word off_04_92C4_5D
- D 0 - I - 0x034CB5 0D:8CA5: 45 93     .word off_04_9345_5E
- D 0 - I - 0x034CB7 0D:8CA7: 56 93     .word off_04_9356_5F
- D 0 - I - 0x034CB9 0D:8CA9: 67 93     .word off_04_9367_60
- D 0 - I - 0x034CBB 0D:8CAB: 6C 93     .word off_04_936C_61
- D 0 - I - 0x034CBD 0D:8CAD: 75 93     .word off_04_9375_62
- D 0 - I - 0x034CBF 0D:8CAF: 82 93     .word off_04_9382_63
- D 0 - I - 0x034CC1 0D:8CB1: 93 93     .word off_04_9393_64
- D 0 - I - 0x034CC3 0D:8CB3: C1 93     .word off_04_93C1_65
- D 0 - I - 0x034CC5 0D:8CB5: C6 93     .word off_04_93C6_66
- - - - - - 0x034CC7 0D:8CB7: 46 8E     .word off_04_8E46_67
- D 0 - I - 0x034CC9 0D:8CB9: 4E 8E     .word off_04_8E4E_68
- D 0 - I - 0x034CCB 0D:8CBB: 56 8E     .word off_04_8E56_69
- D 0 - I - 0x034CCD 0D:8CBD: 5E 8E     .word off_04_8E5E_6A
- D 0 - I - 0x034CCF 0D:8CBF: 56 8E     .word off_04_8E56_6B
- D 0 - I - 0x034CD1 0D:8CC1: A8 93     .word off_04_93A8_6C
- D 0 - I - 0x034CD3 0D:8CC3: A0 94     .word off_04_94A0_6D
- D 0 - I - 0x034CD5 0D:8CC5: A5 94     .word off_04_94A5_6E
- D 0 - I - 0x034CD7 0D:8CC7: 55 94     .word off_04_9455_6F
- D 0 - I - 0x034CD9 0D:8CC9: 62 94     .word off_04_9462_70
- D 0 - I - 0x034CDB 0D:8CCB: 6E 94     .word off_04_946E_71
- D 0 - I - 0x034CDD 0D:8CCD: 7E 94     .word off_04_947E_72
- D 0 - I - 0x034CDF 0D:8CCF: 8E 94     .word off_04_948E_73
- D 0 - I - 0x034CE1 0D:8CD1: 97 94     .word off_04_9497_74
- D 0 - I - 0x034CE3 0D:8CD3: AA 94     .word off_04_94AA_75
- D 0 - I - 0x034CE5 0D:8CD5: B6 94     .word off_04_94B6_76
- D 0 - I - 0x034CE7 0D:8CD7: 95 92     .word off_04_9295_77
- D 0 - I - 0x034CE9 0D:8CD9: 5A 8F     .word off_04_8F5A_78
- D 0 - I - 0x034CEB 0D:8CDB: D6 92     .word off_04_92D6_79
- D 0 - I - 0x034CED 0D:8CDD: EB 92     .word off_04_92EB_7A
- - - - - - 0x034CEF 0D:8CDF: 09 93     .word off_04_9309_7B
- D 0 - I - 0x034CF1 0D:8CE1: 27 93     .word off_04_9327_7C
- D 0 - I - 0x034CF3 0D:8CE3: 17 95     .word off_04_9517_7D
- D 0 - I - 0x034CF5 0D:8CE5: 29 95     .word off_04_9529_7E
- - - - - - 0x034CF7 0D:8CE7: 67 8D     .word off_04_8D67_7F



_off039_8CE9_09:
- - - - - - 0x034CF9 0D:8CE9: 7E 8D     .word off_09_8D7E_00     ; unused
- D 0 - I - 0x034CFB 0D:8CEB: DA 93     .word off_09_93DA_01
- D 0 - I - 0x034CFD 0D:8CED: E3 93     .word off_09_93E3_02
- D 0 - I - 0x034CFF 0D:8CEF: EC 93     .word off_09_93EC_03
- D 0 - I - 0x034D01 0D:8CF1: FD 93     .word off_09_93FD_04
- D 0 - I - 0x034D03 0D:8CF3: 19 94     .word off_09_9419_05
- D 0 - I - 0x034D05 0D:8CF5: 30 94     .word off_09_9430_06
- D 0 - I - 0x034D07 0D:8CF7: 41 94     .word off_09_9441_07
- D 0 - I - 0x034D09 0D:8CF9: C2 94     .word off_09_94C2_08
- D 0 - I - 0x034D0B 0D:8CFB: CD 94     .word off_09_94CD_09
- D 0 - I - 0x034D0D 0D:8CFD: E1 94     .word off_09_94E1_0A
- D 0 - I - 0x034D0F 0D:8CFF: EC 94     .word off_09_94EC_0B
- - - - - - 0x034D11 0D:8D01: 7E 8D     .word off_09_8D7E_0C
- D 0 - I - 0x034D13 0D:8D03: 41 95     .word off_09_9541_0D
- D 0 - I - 0x034D15 0D:8D05: 4F 95     .word off_09_954F_0E
- D 0 - I - 0x034D17 0D:8D07: 5D 95     .word off_09_955D_0F
- D 0 - I - 0x034D19 0D:8D09: 6B 95     .word off_09_956B_10
- D 0 - I - 0x034D1B 0D:8D0B: 74 95     .word off_09_9574_11
- D 0 - I - 0x034D1D 0D:8D0D: D8 8F     .word off_09_8FD8_12
- D 0 - I - 0x034D1F 0D:8D0F: E3 8F     .word off_09_8FE3_13
- D 0 - I - 0x034D21 0D:8D11: 7C 95     .word off_09_957C_14
- D 0 - I - 0x034D23 0D:8D13: 8D 95     .word off_09_958D_15
- D 0 - I - 0x034D25 0D:8D15: 9E 95     .word off_09_959E_16
- D 0 - I - 0x034D27 0D:8D17: AF 95     .word off_09_95AF_17
- D 0 - I - 0x034D29 0D:8D19: B4 95     .word off_09_95B4_18
- D 0 - I - 0x034D2B 0D:8D1B: B9 95     .word off_09_95B9_19
- D 0 - I - 0x034D2D 0D:8D1D: BE 95     .word off_09_95BE_1A
- D 0 - I - 0x034D2F 0D:8D1F: CC 95     .word off_09_95CC_1B
- D 0 - I - 0x034D31 0D:8D21: DA 95     .word off_09_95DA_1C
- D 0 - I - 0x034D33 0D:8D23: FE 8F     .word off_09_8FFE_1D
- D 0 - I - 0x034D35 0D:8D25: 06 90     .word off_09_9006_1E
- - - - - - 0x034D37 0D:8D27: 1E 90     .word off_09_901E_1F
- D 0 - I - 0x034D39 0D:8D29: 2E 90     .word off_09_902E_20
- D 0 - I - 0x034D3B 0D:8D2B: 3E 90     .word off_09_903E_21
- D 0 - I - 0x034D3D 0D:8D2D: 48 90     .word off_09_9048_22
- - - - - - 0x034D3F 0D:8D2F: 58 90     .word off_09_9058_23
- D 0 - I - 0x034D41 0D:8D31: 0E 90     .word off_09_900E_24
- D 0 - I - 0x034D43 0D:8D33: 16 90     .word off_09_9016_25
- - - - - - 0x034D45 0D:8D35: 26 90     .word off_09_9026_26
- D 0 - I - 0x034D47 0D:8D37: 36 90     .word off_09_9036_27
- D 0 - I - 0x034D49 0D:8D39: 43 90     .word off_09_9043_28
- D 0 - I - 0x034D4B 0D:8D3B: 50 90     .word off_09_9050_29
- - - - - - 0x034D4D 0D:8D3D: 60 90     .word off_09_9060_2A
- D 0 - I - 0x034D4F 0D:8D3F: 12 96     .word off_09_9612_2B
- D 0 - I - 0x034D51 0D:8D41: 1A 96     .word off_09_961A_2C
- - - - - - 0x034D53 0D:8D43: E8 95     .word off_09_95E8_2D
- - - - - - 0x034D55 0D:8D45: F6 95     .word off_09_95F6_2E
- - - - - - 0x034D57 0D:8D47: 04 96     .word off_09_9604_2F
- D 0 - I - 0x034D59 0D:8D49: FD 94     .word off_09_94FD_30
- D 0 - I - 0x034D5B 0D:8D4B: 08 95     .word off_09_9508_31
- D 0 - I - 0x034D5D 0D:8D4D: 22 96     .word off_09_9622_32
- D 0 - I - 0x034D5F 0D:8D4F: 2A 96     .word off_09_962A_33
- D 0 - I - 0x034D61 0D:8D51: D7 8D     .word off_09_8DD7_34
- D 0 - I - 0x034D63 0D:8D53: E5 8D     .word off_09_8DE5_35
- D 0 - I - 0x034D65 0D:8D55: ED 8D     .word off_09_8DED_36
- D 0 - I - 0x034D67 0D:8D57: E5 8D     .word off_09_8DE5_37
- D 0 - I - 0x034D69 0D:8D59: FB 8D     .word off_09_8DFB_38
- D 0 - I - 0x034D6B 0D:8D5B: 32 96     .word off_09_9632_39
- D 0 - I - 0x034D6D 0D:8D5D: 50 96     .word off_09_9650_3A
- D 0 - I - 0x034D6F 0D:8D5F: 71 96     .word off_09_9671_3B
- D 0 - I - 0x034D71 0D:8D61: 88 96     .word off_09_9688_3C
- D 0 - I - 0x034D73 0D:8D63: 76 8E     .word off_09_8E76_3D
- D 0 - I - 0x034D75 0D:8D65: 7E 8E     .word off_09_8E7E_3E



off_04_8D67_7F:
- - - - - - 0x034D77 0D:8D67: 07        .byte $07   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- - - - - - 0x034D78 0D:8D68: F0        .byte $F0, $71, $01, $E4   ; 01 
- - - - - - 0x034D7C 0D:8D6C: E1        .byte $E1, $73,      $EC   ; 02 
- - - - - - 0x034D7F 0D:8D6F: E1        .byte $E1, $75,      $F4   ; 03 
- - - - - - 0x034D82 0D:8D72: E1        .byte $E1, $77,      $FC   ; 04 
- - - - - - 0x034D85 0D:8D75: E1        .byte $E1, $79,      $04   ; 05 
- - - - - - 0x034D88 0D:8D78: 01        .byte $01, $7B,      $FC   ; 06 
- - - - - - 0x034D8B 0D:8D7B: 01        .byte $01, $7D,      $04   ; 07 



off_04_8D7E_00:
off_04_8D7E_01:
off_04_8D7E_2B:
off_04_8D7E_41:
off_04_8D7E_42:
off_04_8D7E_43:
off_04_8D7E_44:
off_04_8D7E_45:
off_09_8D7E_00:
off_09_8D7E_0C:
- D 0 - I - 0x034D8E 0D:8D7E: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034D8F 0D:8D7F: E0        .byte $E0, $80, $02, $F4   ; 01 
- D 0 - I - 0x034D93 0D:8D83: E1        .byte $E1, $82,      $FC   ; 02 
- D 0 - I - 0x034D96 0D:8D86: 01        .byte $01, $88,      $F8   ; 03 
- D 0 - I - 0x034D99 0D:8D89: 01        .byte $01, $8A,      $00   ; 04 



off_04_8D8C_02:
- D 0 - I - 0x034D9C 0D:8D8C: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034D9D 0D:8D8D: E2        .byte $E2, $80, $02, $F5   ; 01 
- D 0 - I - 0x034DA1 0D:8D91: E3        .byte $E3, $82,      $FD   ; 02 
- D 0 - I - 0x034DA4 0D:8D94: 01        .byte $01, $84,      $F8   ; 03 
- D 0 - I - 0x034DA7 0D:8D97: 01        .byte $01, $86,      $00   ; 04 



off_04_8D9A_03:
- D 0 - I - 0x034DAA 0D:8D9A: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034DAB 0D:8D9B: 00        .byte $00, $90, $02, $F8   ; 01 
- D 0 - I - 0x034DAF 0D:8D9F: 00        .byte $00, $90, $42, $00   ; 02 



off_04_8DA3_04:
- D 0 - I - 0x034DB3 0D:8DA3: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034DB4 0D:8DA4: 00        .byte $00, $8C, $02, $F8   ; 01 
- D 0 - I - 0x034DB8 0D:8DA8: 01        .byte $01, $8E,      $00   ; 02 



off_04_8DAB_05:
- D 0 - I - 0x034DBB 0D:8DAB: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034DBC 0D:8DAC: E0        .byte $E0, $92, $02, $FD   ; 01 
- D 0 - I - 0x034DC0 0D:8DB0: E1        .byte $E1, $94,      $05   ; 02 
- D 0 - I - 0x034DC3 0D:8DB3: 01        .byte $01, $96,      $F8   ; 03 
- D 0 - I - 0x034DC6 0D:8DB6: 01        .byte $01, $98,      $00   ; 04 



off_04_8DB9_06:
off_04_8DB9_08:
- D 0 - I - 0x034DC9 0D:8DB9: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034DCA 0D:8DBA: 00        .byte $00, $9A, $02, $F8   ; 01 
- D 0 - I - 0x034DCE 0D:8DBE: 01        .byte $01, $9C,      $00   ; 02 



off_04_8DC1_07:
- D 0 - I - 0x034DD1 0D:8DC1: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034DD2 0D:8DC2: E2        .byte $E2, $9E, $02, $F8   ; 01 
- D 0 - I - 0x034DD6 0D:8DC6: E3        .byte $E3, $A0,      $00   ; 02 
- D 0 - I - 0x034DD9 0D:8DC9: 03        .byte $03, $A2,      $F8   ; 03 
- D 0 - I - 0x034DDC 0D:8DCC: 03        .byte $03, $A4,      $00   ; 04 



off_04_8DCF_09:
- D 0 - I - 0x034DDF 0D:8DCF: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034DE0 0D:8DD0: 00        .byte $00, $A6, $02, $F8   ; 01 
- D 0 - I - 0x034DE4 0D:8DD4: 01        .byte $01, $A8,      $00   ; 02 



off_09_8DD7_34:
- D 0 - I - 0x034DE7 0D:8DD7: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034DE8 0D:8DD8: E0        .byte $E0, $D2, $02, $FD   ; 01 
- D 0 - I - 0x034DEC 0D:8DDC: E1        .byte $E1, $D4,      $05   ; 02 
- D 0 - I - 0x034DEF 0D:8DDF: 01        .byte $01, $D6,      $F8   ; 03 
- D 0 - I - 0x034DF2 0D:8DE2: 01        .byte $01, $D8,      $00   ; 04 



off_09_8DE5_35:
off_09_8DE5_37:
- D 0 - I - 0x034DF5 0D:8DE5: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034DF6 0D:8DE6: 00        .byte $00, $DA, $02, $F8   ; 01 
- D 0 - I - 0x034DFA 0D:8DEA: 01        .byte $01, $DC,      $00   ; 02 



off_09_8DED_36:
- D 0 - I - 0x034DFD 0D:8DED: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034DFE 0D:8DEE: E2        .byte $E2, $DE, $02, $F8   ; 01 
- D 0 - I - 0x034E02 0D:8DF2: E3        .byte $E3, $E0,      $00   ; 02 
- D 0 - I - 0x034E05 0D:8DF5: 03        .byte $03, $E2,      $F8   ; 03 
- D 0 - I - 0x034E08 0D:8DF8: 03        .byte $03, $E4,      $00   ; 04 



off_09_8DFB_38:
- D 0 - I - 0x034E0B 0D:8DFB: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034E0C 0D:8DFC: 00        .byte $00, $E6, $02, $F8   ; 01 
- D 0 - I - 0x034E10 0D:8E00: 01        .byte $01, $E8,      $00   ; 02 



off_04_8E03_0A:
- D 0 - I - 0x034E13 0D:8E03: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034E14 0D:8E04: F0        .byte $F0, $BE, $01, $FC   ; 01 



off_04_8E08_0B:
- D 0 - I - 0x034E18 0D:8E08: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034E19 0D:8E09: F0        .byte $F0, $B4, $01, $FC   ; 01 



off_04_8E0D_0C:
- D 0 - I - 0x034E1D 0D:8E0D: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034E1E 0D:8E0E: F0        .byte $F0, $B0, $01, $F8   ; 01 
- D 0 - I - 0x034E22 0D:8E12: F1        .byte $F1, $B2,      $00   ; 02 



off_04_8E15_0D:
- D 0 - I - 0x034E25 0D:8E15: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034E26 0D:8E16: F0        .byte $F0, $AA, $01, $F8   ; 01 
- D 0 - I - 0x034E2A 0D:8E1A: F1        .byte $F1, $AC,      $00   ; 02 



off_04_8E1D_0E:
- D 0 - I - 0x034E2D 0D:8E1D: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034E2E 0D:8E1E: F0        .byte $F0, $AA, $01, $F8   ; 01 
- D 0 - I - 0x034E32 0D:8E22: F1        .byte $F1, $AE,      $00   ; 02 



off_04_8E25_0F:
- D 0 - I - 0x034E35 0D:8E25: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034E36 0D:8E26: F0        .byte $F0, $CC, $03, $F8   ; 01 
- D 0 - I - 0x034E3A 0D:8E2A: F0        .byte $F0, $CC, $43, $00   ; 02 



off_04_8E2E_10:
- D 0 - I - 0x034E3E 0D:8E2E: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034E3F 0D:8E2F: E8        .byte $E8, $C0, $03, $F8   ; 01 
- D 0 - I - 0x034E43 0D:8E33: E9        .byte $E9, $C2,      $00   ; 02 



off_04_8E36_11:
off_04_8E36_13:
- D 0 - I - 0x034E46 0D:8E36: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034E47 0D:8E37: F0        .byte $F0, $C4, $03, $F8   ; 01 
- D 0 - I - 0x034E4B 0D:8E3B: F1        .byte $F1, $C6,      $00   ; 02 



off_04_8E3E_12:
- D 0 - I - 0x034E4E 0D:8E3E: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034E4F 0D:8E3F: F8        .byte $F8, $C8, $03, $F8   ; 01 
- D 0 - I - 0x034E53 0D:8E43: F9        .byte $F9, $CA,      $00   ; 02 



off_04_8E46_67:
- - - - - - 0x034E56 0D:8E46: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- - - - - - 0x034E57 0D:8E47: F0        .byte $F0, $DE, $03, $F8   ; 01 
- - - - - - 0x034E5B 0D:8E4B: F1        .byte $F1, $DE,      $00   ; 02 



off_04_8E4E_68:
- D 0 - I - 0x034E5E 0D:8E4E: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034E5F 0D:8E4F: F0        .byte $F0, $D2, $03, $F8   ; 01 
- D 0 - I - 0x034E63 0D:8E53: F1        .byte $F1, $D4,      $00   ; 02 



off_04_8E56_69:
off_04_8E56_6B:
- D 0 - I - 0x034E66 0D:8E56: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034E67 0D:8E57: F0        .byte $F0, $D6, $03, $F8   ; 01 
- D 0 - I - 0x034E6B 0D:8E5B: F1        .byte $F1, $D8,      $00   ; 02 



off_04_8E5E_6A:
- D 0 - I - 0x034E6E 0D:8E5E: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034E6F 0D:8E5F: F0        .byte $F0, $DA, $03, $F8   ; 01 
- D 0 - I - 0x034E73 0D:8E63: F1        .byte $F1, $DC,      $00   ; 02 



off_04_8E66_14:
- D 0 - I - 0x034E76 0D:8E66: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034E77 0D:8E67: F0        .byte $F0, $EA, $01, $F8   ; 01 
- D 0 - I - 0x034E7B 0D:8E6B: F1        .byte $F1, $EC,      $00   ; 02 



off_04_8E6E_15:
- D 0 - I - 0x034E7E 0D:8E6E: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034E7F 0D:8E6F: F0        .byte $F0, $EE, $01, $F8   ; 01 
- D 0 - I - 0x034E83 0D:8E73: F1        .byte $F1, $F0,      $00   ; 02 



off_09_8E76_3D:
- D 0 - I - 0x034E86 0D:8E76: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034E87 0D:8E77: F0        .byte $F0, $8A, $01, $F8   ; 01 
- D 0 - I - 0x034E8B 0D:8E7B: F1        .byte $F1, $8C,      $00   ; 02 



off_09_8E7E_3E:
- D 0 - I - 0x034E8E 0D:8E7E: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034E8F 0D:8E7F: F0        .byte $F0, $8E, $01, $F8   ; 01 
- D 0 - I - 0x034E93 0D:8E83: F1        .byte $F1, $AE,      $00   ; 02 



off_04_8E86_3F:
- D 0 - I - 0x034E96 0D:8E86: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034E97 0D:8E87: F0        .byte $F0, $59, $01, $F8   ; 01 
- D 0 - I - 0x034E9B 0D:8E8B: F1        .byte $F1, $5B,      $00   ; 02 



off_04_8E8E_40:
- D 0 - I - 0x034E9E 0D:8E8E: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034E9F 0D:8E8F: F0        .byte $F0, $5D, $01, $F8   ; 01 
- D 0 - I - 0x034EA3 0D:8E93: F1        .byte $F1, $5F,      $00   ; 02 



off_04_8E96_16:
- D 0 - I - 0x034EA6 0D:8E96: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034EA7 0D:8E97: F0        .byte $F0, $D6, $01, $F0   ; 01 
- D 0 - I - 0x034EAB 0D:8E9B: E1        .byte $E1, $D8,      $F8   ; 02 
- D 0 - I - 0x034EAE 0D:8E9E: E1        .byte $E1, $DA,      $00   ; 03 
- D 0 - I - 0x034EB1 0D:8EA1: 01        .byte $01, $DC,      $F8   ; 04 
- D 0 - I - 0x034EB4 0D:8EA4: 01        .byte $01, $DE,      $00   ; 05 



off_04_8EA7_17:
- D 0 - I - 0x034EB7 0D:8EA7: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034EB8 0D:8EA8: F0        .byte $F0, $D6, $01, $EF   ; 01 
- D 0 - I - 0x034EBC 0D:8EAC: E1        .byte $E1, $D8,      $F7   ; 02 
- D 0 - I - 0x034EBF 0D:8EAF: E1        .byte $E1, $DA,      $FF   ; 03 
- D 0 - I - 0x034EC2 0D:8EB2: 01        .byte $01, $E0,      $F8   ; 04 
- D 0 - I - 0x034EC5 0D:8EB5: 01        .byte $01, $E2,      $00   ; 05 



off_04_8EB8_18:
- D 0 - I - 0x034EC8 0D:8EB8: 08        .byte $08   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034EC9 0D:8EB9: F0        .byte $F0, $D6, $01, $F0   ; 01 
- D 0 - I - 0x034ECD 0D:8EBD: E1        .byte $E1, $D8,      $F8   ; 02 
- D 0 - I - 0x034ED0 0D:8EC0: E1        .byte $E1, $E8,      $00   ; 03 
- D 0 - I - 0x034ED3 0D:8EC3: E1        .byte $E1, $EE,      $08   ; 04 
- D 0 - I - 0x034ED6 0D:8EC6: 01        .byte $01, $E4,      $F8   ; 05 
- D 0 - I - 0x034ED9 0D:8EC9: 01        .byte $01, $E6,      $00   ; 06 
- D 0 - I - 0x034EDC 0D:8ECC: C8        .byte $C8, $EC, $41, $06   ; 07 
- D 0 - I - 0x034EE0 0D:8ED0: C9        .byte $C9, $EA,      $0E   ; 08 



off_04_8ED3_19:
- D 0 - I - 0x034EE3 0D:8ED3: 06        .byte $06   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034EE4 0D:8ED4: E0        .byte $E0, $F0, $01, $ED   ; 01 
- D 0 - I - 0x034EE8 0D:8ED8: E1        .byte $E1, $F2,      $F4   ; 02 
- D 0 - I - 0x034EEB 0D:8EDB: E1        .byte $E1, $F4,      $FD   ; 03 
- D 0 - I - 0x034EEE 0D:8EDE: 01        .byte $01, $F6,      $F0   ; 04 
- D 0 - I - 0x034EF1 0D:8EE1: 01        .byte $01, $F8,      $F8   ; 05 
- D 0 - I - 0x034EF4 0D:8EE4: 01        .byte $01, $E6,      $00   ; 06 



off_04_8EE7_29:
- D 0 - I - 0x034EF7 0D:8EE7: 09        .byte $09   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034EF8 0D:8EE8: F0        .byte $F0, $D4, $01, $F0   ; 01 
- D 0 - I - 0x034EFC 0D:8EEC: F1        .byte $F1, $D8,      $F8   ; 02 
- D 0 - I - 0x034EFF 0D:8EEF: F1        .byte $F1, $E8,      $00   ; 03 
- D 0 - I - 0x034F02 0D:8EF2: F1        .byte $F1, $EE,      $08   ; 04 
- D 0 - I - 0x034F05 0D:8EF5: 11        .byte $11, $CE,      $F2   ; 05 
- D 0 - I - 0x034F08 0D:8EF8: 11        .byte $11, $D0,      $FA   ; 06 
- D 0 - I - 0x034F0B 0D:8EFB: 11        .byte $11, $D2,      $03   ; 07 
- D 0 - I - 0x034F0E 0D:8EFE: D6        .byte $D6, $EC, $41, $06   ; 08 
- D 0 - I - 0x034F12 0D:8F02: D7        .byte $D7, $EA,      $0E   ; 09 



off_04_8F05_2A:
- D 0 - I - 0x034F15 0D:8F05: 06        .byte $06   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034F16 0D:8F06: F0        .byte $F0, $F0, $01, $F1   ; 01 
- D 0 - I - 0x034F1A 0D:8F0A: F1        .byte $F1, $F2,      $F9   ; 02 
- D 0 - I - 0x034F1D 0D:8F0D: F1        .byte $F1, $F4,      $01   ; 03 
- D 0 - I - 0x034F20 0D:8F10: 11        .byte $11, $CE,      $F2   ; 04 
- D 0 - I - 0x034F23 0D:8F13: 11        .byte $11, $D0,      $FA   ; 05 
- D 0 - I - 0x034F26 0D:8F16: 11        .byte $11, $D2,      $02   ; 06 



off_04_8F19_1A:
- D 0 - I - 0x034F29 0D:8F19: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034F2A 0D:8F1A: E0        .byte $E0, $D4, $01, $F7   ; 01 
- D 0 - I - 0x034F2E 0D:8F1E: E1        .byte $E1, $D6,      $FF   ; 02 
- D 0 - I - 0x034F31 0D:8F21: 01        .byte $01, $D8,      $F8   ; 03 
- D 0 - I - 0x034F34 0D:8F24: 01        .byte $01, $DA,      $00   ; 04 



off_04_8F27_1B:
- D 0 - I - 0x034F37 0D:8F27: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034F38 0D:8F28: E2        .byte $E2, $D4, $01, $F7   ; 01 
- D 0 - I - 0x034F3C 0D:8F2C: E3        .byte $E3, $D6,      $FF   ; 02 
- D 0 - I - 0x034F3F 0D:8F2F: 01        .byte $01, $DC,      $F8   ; 03 
- D 0 - I - 0x034F42 0D:8F32: 01        .byte $01, $DE,      $00   ; 04 



off_04_8F35_5A:
- D 0 - I - 0x034F45 0D:8F35: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034F46 0D:8F36: E2        .byte $E2, $E0, $01, $EE   ; 01 
- D 0 - I - 0x034F4A 0D:8F3A: E3        .byte $E3, $E2,      $F6   ; 02 
- D 0 - I - 0x034F4D 0D:8F3D: E3        .byte $E3, $D6,      $FE   ; 03 
- D 0 - I - 0x034F50 0D:8F40: 01        .byte $01, $E4,      $F8   ; 04 
- D 0 - I - 0x034F53 0D:8F43: 01        .byte $01, $DE,      $00   ; 05 



off_04_8F46_5B:
- D 0 - I - 0x034F56 0D:8F46: 06        .byte $06   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034F57 0D:8F47: C0        .byte $C0, $E6, $01, $F7   ; 01
- D 0 - I - 0x034F5B 0D:8F4B: C1        .byte $C1, $E8,      $FF   ; 
- D 0 - I - 0x034F5E 0D:8F4E: E1        .byte $E1, $EA,      $F7   ; 
- D 0 - I - 0x034F61 0D:8F51: E1        .byte $E1, $EC,      $FF   ; 
- D 0 - I - 0x034F64 0D:8F54: 01        .byte $01, $EE,      $F8   ; 
- D 0 - I - 0x034F67 0D:8F57: 01        .byte $01, $DA,      $00   ; 



off_04_8F5A_78:
- D 0 - I - 0x034F6A 0D:8F5A: 07        .byte $07   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034F6B 0D:8F5B: E2        .byte $E2, $D4, $01, $F6   ; 01 
- D 0 - I - 0x034F6F 0D:8F5F: E3        .byte $E3, $D6,      $FE   ; 02 
- D 0 - I - 0x034F72 0D:8F62: 01        .byte $01, $DC,      $F8   ; 03 
- D 0 - I - 0x034F75 0D:8F65: 01        .byte $01, $DE,      $00   ; 04 
- D 0 - I - 0x034F78 0D:8F68: FB        .byte $FB, $F0,      $E0   ; 05 
- D 0 - I - 0x034F7B 0D:8F6B: FB        .byte $FB, $F2,      $E8   ; 06 
- D 0 - I - 0x034F7E 0D:8F6E: FB        .byte $FB, $F4,      $F0   ; 07 



off_04_8F71_1F:
- D 0 - I - 0x034F81 0D:8F71: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034F82 0D:8F72: E0        .byte $E0, $80, $01, $F8   ; 01 
- D 0 - I - 0x034F86 0D:8F76: E1        .byte $E1, $82,      $00   ; 02 
- D 0 - I - 0x034F89 0D:8F79: 00        .byte $00, $82, $41, $F8   ; 03 
- D 0 - I - 0x034F8D 0D:8F7D: 01        .byte $01, $80,      $00   ; 04 



off_04_8F80_20:
- D 0 - I - 0x034F90 0D:8F80: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034F91 0D:8F81: E0        .byte $E0, $FA, $01, $F8   ; 01 
- D 0 - I - 0x034F95 0D:8F85: E1        .byte $E1, $FC,      $00   ; 02 
- D 0 - I - 0x034F98 0D:8F88: 00        .byte $00, $FC, $41, $F8   ; 03 
- D 0 - I - 0x034F9C 0D:8F8C: 01        .byte $01, $FA,      $00   ; 04 



off_04_8F8F_21:
- D 0 - I - 0x034F9F 0D:8F8F: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034FA0 0D:8F90: E0        .byte $E0, $90, $03, $F7   ; 01 
- D 0 - I - 0x034FA4 0D:8F94: E1        .byte $E1, $92,      $FF   ; 02 
- D 0 - I - 0x034FA7 0D:8F97: 01        .byte $01, $94,      $F8   ; 03 
- D 0 - I - 0x034FAA 0D:8F9A: 01        .byte $01, $96,      $00   ; 04 



off_04_8F9D_22:
- D 0 - I - 0x034FAD 0D:8F9D: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034FAE 0D:8F9E: E2        .byte $E2, $90, $03, $F5   ; 01 
- D 0 - I - 0x034FB2 0D:8FA2: E3        .byte $E3, $92,      $FD   ; 02 
- D 0 - I - 0x034FB5 0D:8FA5: 01        .byte $01, $98,      $F8   ; 03 
- D 0 - I - 0x034FB8 0D:8FA8: 01        .byte $01, $9A,      $00   ; 04 



off_04_8FAB_23:
- D 0 - I - 0x034FBB 0D:8FAB: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034FBC 0D:8FAC: E0        .byte $E0, $9C, $03, $F4   ; 01 
- D 0 - I - 0x034FC0 0D:8FB0: E1        .byte $E1, $9E,      $FC   ; 02 
- D 0 - I - 0x034FC3 0D:8FB3: E1        .byte $E1, $A0,      $04   ; 03 
- D 0 - I - 0x034FC6 0D:8FB6: 01        .byte $01, $A2,      $F8   ; 04 
- D 0 - I - 0x034FC9 0D:8FB9: 01        .byte $01, $A4,      $00   ; 05 



off_04_8FBC_24:
- D 0 - I - 0x034FCC 0D:8FBC: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034FCD 0D:8FBD: F0        .byte $F0, $90, $03, $F7   ; 01 
- D 0 - I - 0x034FD1 0D:8FC1: F1        .byte $F1, $92,      $FF   ; 02 
- D 0 - I - 0x034FD4 0D:8FC4: 11        .byte $11, $B8,      $F8   ; 03 
- D 0 - I - 0x034FD7 0D:8FC7: 11        .byte $11, $BA,      $00   ; 04 



off_04_8FCA_25:
- D 0 - I - 0x034FDA 0D:8FCA: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034FDB 0D:8FCB: E0        .byte $E0, $A6, $03, $F7   ; 01 
- D 0 - I - 0x034FDF 0D:8FCF: E1        .byte $E1, $A8,      $FF   ; 02 
- D 0 - I - 0x034FE2 0D:8FD2: 01        .byte $01, $94,      $F8   ; 03 
- D 0 - I - 0x034FE5 0D:8FD5: 01        .byte $01, $96,      $00   ; 04 



off_09_8FD8_12:
- D 0 - I - 0x034FE8 0D:8FD8: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034FE9 0D:8FD9: F0        .byte $F0, $B2, $02, $F4   ; 01 
- D 0 - I - 0x034FED 0D:8FDD: F1        .byte $F1, $B4,      $FC   ; 02 
- D 0 - I - 0x034FF0 0D:8FE0: F1        .byte $F1, $B6,      $04   ; 03 



off_09_8FE3_13:
- D 0 - I - 0x034FF3 0D:8FE3: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034FF4 0D:8FE4: F0        .byte $F0, $B2, $82, $F4   ; 01 
- D 0 - I - 0x034FF8 0D:8FE8: F1        .byte $F1, $B4,      $FC   ; 02 
- D 0 - I - 0x034FFB 0D:8FEB: F1        .byte $F1, $B6,      $04   ; 03 



off_04_8FEE_26:
- D 0 - I - 0x034FFE 0D:8FEE: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x034FFF 0D:8FEF: F0        .byte $F0, $84, $02, $F8   ; 01 
- D 0 - I - 0x035003 0D:8FF3: F1        .byte $F1, $86,      $00   ; 02 



off_04_8FF6_27:
off_04_8FF6_28:
- D 0 - I - 0x035006 0D:8FF6: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035007 0D:8FF7: F0        .byte $F0, $88, $02, $F8   ; 01 
- D 0 - I - 0x03500B 0D:8FFB: F1        .byte $F1, $8A,      $00   ; 02 



off_09_8FFE_1D:
- D 0 - I - 0x03500E 0D:8FFE: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03500F 0D:8FFF: F0        .byte $F0, $E0, $01, $F8   ; 01 
- D 0 - I - 0x035013 0D:9003: F1        .byte $F1, $E2,      $00   ; 02 



off_09_9006_1E:
- D 0 - I - 0x035016 0D:9006: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035017 0D:9007: F0        .byte $F0, $E4, $01, $F8   ; 01 
- D 0 - I - 0x03501B 0D:900B: F1        .byte $F1, $E6,      $00   ; 02 



off_09_900E_24:
- D 0 - I - 0x03501E 0D:900E: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03501F 0D:900F: F0        .byte $F0, $90, $01, $F8   ; 01 
- D 0 - I - 0x035023 0D:9013: F1        .byte $F1, $92,      $00   ; 02 



off_09_9016_25:
- D 0 - I - 0x035026 0D:9016: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035027 0D:9017: F0        .byte $F0, $94, $01, $F8   ; 01 
- D 0 - I - 0x03502B 0D:901B: F1        .byte $F1, $96,      $00   ; 02 



off_09_901E_1F:
- - - - - - 0x03502E 0D:901E: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- - - - - - 0x03502F 0D:901F: F0        .byte $F0, $E8, $01, $F8   ; 01 
- - - - - - 0x035033 0D:9023: F1        .byte $F1, $EA,      $00   ; 02 



off_09_9026_26:
- - - - - - 0x035036 0D:9026: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- - - - - - 0x035037 0D:9027: F0        .byte $F0, $98, $01, $F8   ; 01 
- - - - - - 0x03503B 0D:902B: F1        .byte $F1, $9A,      $00   ; 02 



off_09_902E_20:
- D 0 - I - 0x03503E 0D:902E: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03503F 0D:902F: F0        .byte $F0, $EC, $01, $F8   ; 01 
- D 0 - I - 0x035043 0D:9033: F1        .byte $F1, $EE,      $00   ; 02 



off_09_9036_27:
- D 0 - I - 0x035046 0D:9036: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035047 0D:9037: F0        .byte $F0, $9C, $01, $F8   ; 01 
- D 0 - I - 0x03504B 0D:903B: F1        .byte $F1, $9E,      $00   ; 02 



off_09_903E_21:
- D 0 - I - 0x03504E 0D:903E: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03504F 0D:903F: F0        .byte $F0, $F0, $01, $FC   ; 01 



off_09_9043_28:
- D 0 - I - 0x035053 0D:9043: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035054 0D:9044: F0        .byte $F0, $A0, $01, $FC   ; 01 



off_09_9048_22:
- D 0 - I - 0x035058 0D:9048: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035059 0D:9049: F0        .byte $F0, $F2, $01, $F8   ; 01 
- D 0 - I - 0x03505D 0D:904D: F1        .byte $F1, $F4,      $00   ; 02 



off_09_9050_29:
- D 0 - I - 0x035060 0D:9050: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035061 0D:9051: F0        .byte $F0, $A2, $01, $F8   ; 01 
- D 0 - I - 0x035065 0D:9055: F1        .byte $F1, $A4,      $00   ; 02 



off_09_9058_23:
- - - - - - 0x035068 0D:9058: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- - - - - - 0x035069 0D:9059: F0        .byte $F0, $FA, $C1, $F8   ; 01 
- - - - - - 0x03506D 0D:905D: F1        .byte $F1, $F8,      $00   ; 02 



off_09_9060_2A:
- - - - - - 0x035070 0D:9060: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- - - - - - 0x035071 0D:9061: F0        .byte $F0, $9A, $C1, $F8   ; 01 
- - - - - - 0x035075 0D:9065: F1        .byte $F1, $98,      $00   ; 02 



off_04_9068_2C:
- D 0 - I - 0x035078 0D:9068: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035079 0D:9069: F0        .byte $F0, $80, $03, $F8   ; 01 
- D 0 - I - 0x03507D 0D:906D: F1        .byte $F1, $82,      $00   ; 02 



off_04_9070_2D:
- D 0 - I - 0x035080 0D:9070: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035081 0D:9071: F0        .byte $F0, $80, $03, $F8   ; 01 
- D 0 - I - 0x035085 0D:9075: F1        .byte $F1, $86,      $00   ; 02 



off_04_9078_2E:
- D 0 - I - 0x035088 0D:9078: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035089 0D:9079: F0        .byte $F0, $84, $03, $F8   ; 01 
- D 0 - I - 0x03508D 0D:907D: F1        .byte $F1, $86,      $00   ; 02 



off_04_9080_2F:
- D 0 - I - 0x035090 0D:9080: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035091 0D:9081: F0        .byte $F0, $88, $03, $F8   ; 01 
- D 0 - I - 0x035095 0D:9085: F1        .byte $F1, $82,      $00   ; 02 



off_04_9088_30:
- D 0 - I - 0x035098 0D:9088: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035099 0D:9089: F0        .byte $F0, $8A, $03, $FC   ; 01 



off_04_908D_31:
- D 0 - I - 0x03509D 0D:908D: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03509E 0D:908E: F0        .byte $F0, $8C, $02, $F8   ; 01 
- D 0 - I - 0x0350A2 0D:9092: F1        .byte $F1, $8E,      $00   ; 02 



off_04_9095_32:
- D 0 - I - 0x0350A5 0D:9095: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0350A6 0D:9096: F0        .byte $F0, $90, $02, $F8   ; 01 
- D 0 - I - 0x0350AA 0D:909A: F1        .byte $F1, $92,      $00   ; 02 



off_04_909D_33:
- D 0 - I - 0x0350AD 0D:909D: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0350AE 0D:909E: F0        .byte $F0, $94, $02, $F8   ; 01 
- D 0 - I - 0x0350B2 0D:90A2: F1        .byte $F1, $96,      $00   ; 02 



off_04_90A5_1C:
- D 0 - I - 0x0350B5 0D:90A5: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0350B6 0D:90A6: F0        .byte $F0, $8E, $C2, $F8   ; 01 
- D 0 - I - 0x0350BA 0D:90AA: F1        .byte $F1, $8C,      $00   ; 02 



off_04_90AD_1D:
- D 0 - I - 0x0350BD 0D:90AD: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0350BE 0D:90AE: F0        .byte $F0, $92, $C2, $F8   ; 01 
- D 0 - I - 0x0350C2 0D:90B2: F1        .byte $F1, $90,      $00   ; 02 



off_04_90B5_1E:
- D 0 - I - 0x0350C5 0D:90B5: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0350C6 0D:90B6: F0        .byte $F0, $96, $C2, $F8   ; 01 
- D 0 - I - 0x0350CA 0D:90BA: F1        .byte $F1, $94,      $00   ; 02 



off_04_90BD_34:
- D 0 - I - 0x0350CD 0D:90BD: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0350CE 0D:90BE: E0        .byte $E0, $98, $01, $F8   ; 01 
- D 0 - I - 0x0350D2 0D:90C2: E1        .byte $E1, $9A,      $00   ; 02 
- D 0 - I - 0x0350D5 0D:90C5: 01        .byte $01, $9C,      $F8   ; 03 
- D 0 - I - 0x0350D8 0D:90C8: 01        .byte $01, $9E,      $00   ; 04 
- D 0 - I - 0x0350DB 0D:90CB: C1        .byte $C1, $BE,      $FB   ; 05 



off_04_90CE_35:
off_04_90CE_37:
- D 0 - I - 0x0350DE 0D:90CE: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0350DF 0D:90CF: E0        .byte $E0, $98, $01, $F8   ; 01 
- D 0 - I - 0x0350E3 0D:90D3: E1        .byte $E1, $9A,      $00   ; 02 
- D 0 - I - 0x0350E6 0D:90D6: 01        .byte $01, $A0,      $F8   ; 03 
- D 0 - I - 0x0350E9 0D:90D9: 01        .byte $01, $A2,      $00   ; 04 
- D 0 - I - 0x0350EC 0D:90DC: C1        .byte $C1, $BE,      $FB   ; 05 



off_04_90DF_36:
- D 0 - I - 0x0350EF 0D:90DF: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0350F0 0D:90E0: E0        .byte $E0, $98, $01, $F8   ; 01 
- D 0 - I - 0x0350F4 0D:90E4: E1        .byte $E1, $9A,      $00   ; 02 
- D 0 - I - 0x0350F7 0D:90E7: 01        .byte $01, $A4,      $F8   ; 03 
- D 0 - I - 0x0350FA 0D:90EA: 01        .byte $01, $A6,      $00   ; 04 
- D 0 - I - 0x0350FD 0D:90ED: C1        .byte $C1, $BE,      $FB   ; 05 



off_04_90F0_38:
- D 0 - I - 0x035100 0D:90F0: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035101 0D:90F1: E0        .byte $E0, $A8, $01, $F8   ; 01 
- D 0 - I - 0x035105 0D:90F5: E1        .byte $E1, $AA,      $00   ; 02 
- D 0 - I - 0x035108 0D:90F8: 01        .byte $01, $9C,      $F8   ; 03 
- D 0 - I - 0x03510B 0D:90FB: 01        .byte $01, $9E,      $00   ; 04 



off_04_90FE_39:
- D 0 - I - 0x03510E 0D:90FE: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03510F 0D:90FF: 00        .byte $00, $AA, $41, $F8   ; 01 
- D 0 - I - 0x035113 0D:9103: 01        .byte $01, $A8,      $00   ; 02 



off_04_9106_3A:
- D 0 - I - 0x035116 0D:9106: 08        .byte $08   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035117 0D:9107: A0        .byte $A0, $AC, $01, $F8   ; 01 
- D 0 - I - 0x03511B 0D:910B: A1        .byte $A1, $AE,      $00   ; 02 
- D 0 - I - 0x03511E 0D:910E: C0        .byte $C0, $AE, $41, $F8   ; 03 
- D 0 - I - 0x035122 0D:9112: C1        .byte $C1, $AC,      $00   ; 04 
- D 0 - I - 0x035125 0D:9115: E0        .byte $E0, $AC, $01, $F8   ; 05 
- D 0 - I - 0x035129 0D:9119: E1        .byte $E1, $AE,      $00   ; 06 
- D 0 - I - 0x03512C 0D:911C: 00        .byte $00, $AE, $41, $F8   ; 07 
- D 0 - I - 0x035130 0D:9120: 01        .byte $01, $AC,      $00   ; 08 



off_04_9123_3B:
- D 0 - I - 0x035133 0D:9123: 08        .byte $08   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035134 0D:9124: A0        .byte $A0, $AE, $41, $F8   ; 01 
- D 0 - I - 0x035138 0D:9128: A1        .byte $A1, $AC,      $00   ; 02 
- D 0 - I - 0x03513B 0D:912B: C0        .byte $C0, $AC, $01, $F8   ; 03 
- D 0 - I - 0x03513F 0D:912F: C1        .byte $C1, $AE,      $00   ; 04 
- D 0 - I - 0x035142 0D:9132: E0        .byte $E0, $AE, $41, $F8   ; 05 
- D 0 - I - 0x035146 0D:9136: E1        .byte $E1, $AC,      $00   ; 06 
- D 0 - I - 0x035149 0D:9139: 00        .byte $00, $B0, $01, $F8   ; 07 
- D 0 - I - 0x03514D 0D:913D: 01        .byte $01, $B2,      $00   ; 08 



off_04_9140_3C:
- D 0 - I - 0x035150 0D:9140: 08        .byte $08   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035151 0D:9141: A0        .byte $A0, $AC, $01, $F8   ; 01 
- D 0 - I - 0x035155 0D:9145: A1        .byte $A1, $AE,      $00   ; 02 
- D 0 - I - 0x035158 0D:9148: C0        .byte $C0, $AE, $41, $F8   ; 03 
- D 0 - I - 0x03515C 0D:914C: C1        .byte $C1, $AC,      $00   ; 04 
- D 0 - I - 0x03515F 0D:914F: E0        .byte $E0, $AC, $01, $F8   ; 05 
- D 0 - I - 0x035163 0D:9153: E1        .byte $E1, $AE,      $00   ; 06 
- D 0 - I - 0x035166 0D:9156: 01        .byte $01, $A0,      $F8   ; 07 
- D 0 - I - 0x035169 0D:9159: 01        .byte $01, $A2,      $00   ; 08 



off_04_915C_3D:
- D 0 - I - 0x03516C 0D:915C: 08        .byte $08   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03516D 0D:915D: A0        .byte $A0, $AE, $41, $F8   ; 01 
- D 0 - I - 0x035171 0D:9161: A1        .byte $A1, $AC,      $00   ; 02 
- D 0 - I - 0x035174 0D:9164: C0        .byte $C0, $AC, $01, $F8   ; 03 
- D 0 - I - 0x035178 0D:9168: C1        .byte $C1, $AE,      $00   ; 04 
- D 0 - I - 0x03517B 0D:916B: E1        .byte $E1, $B4,      $F8   ; 05 
- D 0 - I - 0x03517E 0D:916E: E1        .byte $E1, $B6,      $00   ; 06 
- D 0 - I - 0x035181 0D:9171: 01        .byte $01, $A0,      $F8   ; 07 
- D 0 - I - 0x035184 0D:9174: 01        .byte $01, $A2,      $00   ; 08 



off_04_9177_3E:
- D 0 - I - 0x035187 0D:9177: 06        .byte $06   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035188 0D:9178: C0        .byte $C0, $AE, $41, $F8   ; 01 
- D 0 - I - 0x03518C 0D:917C: C1        .byte $C1, $AC,      $00   ; 02 
- D 0 - I - 0x03518F 0D:917F: E0        .byte $E0, $98, $01, $F8   ; 03 
- D 0 - I - 0x035193 0D:9183: E1        .byte $E1, $9A,      $00   ; 04 
- D 0 - I - 0x035196 0D:9186: 00        .byte $00, $A0, $01, $F8   ; 05 
- D 0 - I - 0x03519A 0D:918A: 01        .byte $01, $A2,      $00   ; 06 



off_04_918D_58:
- D 0 - I - 0x03519D 0D:918D: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03519E 0D:918E: F0        .byte $F0, $B8, $01, $F8   ; 01 
- D 0 - I - 0x0351A2 0D:9192: F1        .byte $F1, $BA,      $00   ; 02 



off_04_9195_59:
- D 0 - I - 0x0351A5 0D:9195: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0351A6 0D:9196: F0        .byte $F0, $BC, $01, $F8   ; 01 
- D 0 - I - 0x0351AA 0D:919A: F0        .byte $F0, $BA, $81, $00   ; 02 



off_04_919E_46:
- D 0 - I - 0x0351AE 0D:919E: 08        .byte $08   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0351AF 0D:919F: E0        .byte $E0, $C0, $02, $F0   ; 01 
- D 0 - I - 0x0351B3 0D:91A3: E1        .byte $E1, $C2,      $F8   ; 02 
- D 0 - I - 0x0351B6 0D:91A6: E1        .byte $E1, $C4,      $00   ; 03 
- D 0 - I - 0x0351B9 0D:91A9: E1        .byte $E1, $C6,      $08   ; 04 
- D 0 - I - 0x0351BC 0D:91AC: 01        .byte $01, $C8,      $F8   ; 05 
- D 0 - I - 0x0351BF 0D:91AF: 01        .byte $01, $CA,      $00   ; 06 
- D 0 - I - 0x0351C2 0D:91B2: 21        .byte $21, $CC,      $F8   ; 07 
- D 0 - I - 0x0351C5 0D:91B5: 21        .byte $21, $CE,      $00   ; 08 



off_04_91B8_47:
off_04_91B8_48:
- D 0 - I - 0x0351C8 0D:91B8: 08        .byte $08   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0351C9 0D:91B9: E2        .byte $E2, $C0, $02, $F0   ; 01 
- D 0 - I - 0x0351CD 0D:91BD: E3        .byte $E3, $C2,      $F8   ; 02 
- D 0 - I - 0x0351D0 0D:91C0: E3        .byte $E3, $D0,      $00   ; 03 
- D 0 - I - 0x0351D3 0D:91C3: F3        .byte $F3, $D2,      $08   ; 04 
- D 0 - I - 0x0351D6 0D:91C6: 03        .byte $03, $C8,      $F8   ; 05 
- D 0 - I - 0x0351D9 0D:91C9: 03        .byte $03, $CA,      $00   ; 06 
- D 0 - I - 0x0351DC 0D:91CC: 23        .byte $23, $CC,      $F8   ; 07 
- D 0 - I - 0x0351DF 0D:91CF: 23        .byte $23, $CE,      $00   ; 08 



off_04_91D2_49:
- D 0 - I - 0x0351E2 0D:91D2: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0351E3 0D:91D3: E0        .byte $E0, $C0, $01, $F7   ; 01 
- D 0 - I - 0x0351E7 0D:91D7: E1        .byte $E1, $C2,      $FF   ; 02 
- D 0 - I - 0x0351EA 0D:91DA: 01        .byte $01, $C4,      $F8   ; 03 
- D 0 - I - 0x0351ED 0D:91DD: 01        .byte $01, $C6,      $00   ; 04 



off_04_91E0_4A:
- D 0 - I - 0x0351F0 0D:91E0: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0351F1 0D:91E1: E0        .byte $E0, $C0, $01, $F8   ; 01 
- D 0 - I - 0x0351F5 0D:91E5: E1        .byte $E1, $C2,      $00   ; 02 
- D 0 - I - 0x0351F8 0D:91E8: 01        .byte $01, $C8,      $F8   ; 03 
- D 0 - I - 0x0351FB 0D:91EB: 01        .byte $01, $CA,      $00   ; 04 



off_04_91EE_4B:
- D 0 - I - 0x0351FE 0D:91EE: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0351FF 0D:91EF: E0        .byte $E0, $D0, $01, $F8   ; 01 
- D 0 - I - 0x035203 0D:91F3: E1        .byte $E1, $D2,      $00   ; 02 
- D 0 - I - 0x035206 0D:91F6: E1        .byte $E1, $D4,      $08   ; 03 
- D 0 - I - 0x035209 0D:91F9: 01        .byte $01, $C4,      $F8   ; 04 
- D 0 - I - 0x03520C 0D:91FC: 01        .byte $01, $CE,      $00   ; 05 



off_04_91FF_4C:
- D 0 - I - 0x03520F 0D:91FF: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035210 0D:9200: E0        .byte $E0, $D6, $01, $FB   ; 01 
- D 0 - I - 0x035214 0D:9204: E1        .byte $E1, $D8,      $03   ; 02 
- D 0 - I - 0x035217 0D:9207: 01        .byte $01, $CC,      $F8   ; 03 
- D 0 - I - 0x03521A 0D:920A: 01        .byte $01, $CE,      $00   ; 04 



off_04_920D_4D:
- D 0 - I - 0x03521D 0D:920D: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03521E 0D:920E: E2        .byte $E2, $DA, $01, $EE   ; 01 
- D 0 - I - 0x035222 0D:9212: E1        .byte $E1, $DC,      $F6   ; 02 
- D 0 - I - 0x035225 0D:9215: E1        .byte $E1, $DE,      $FE   ; 03 
- D 0 - I - 0x035228 0D:9218: 01        .byte $01, $C6,      $F8   ; 04 
- D 0 - I - 0x03522B 0D:921B: 01        .byte $01, $C6,      $00   ; 05 



off_04_921E_4E:
- D 0 - I - 0x03522E 0D:921E: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03522F 0D:921F: E0        .byte $E0, $E2, $41, $F9   ; 01 
- D 0 - I - 0x035233 0D:9223: E1        .byte $E1, $E0,      $FF   ; 02 
- D 0 - I - 0x035236 0D:9226: 00        .byte $00, $C8, $01, $F8   ; 03 
- D 0 - I - 0x03523A 0D:922A: 01        .byte $01, $CA,      $00   ; 04 



off_04_922D_4F:
- D 0 - I - 0x03523D 0D:922D: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03523E 0D:922E: 00        .byte $00, $E0, $01, $F8   ; 01 
- D 0 - I - 0x035242 0D:9232: 01        .byte $01, $E2,      $00   ; 02 



off_04_9235_50:
- D 0 - I - 0x035245 0D:9235: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035246 0D:9236: 00        .byte $00, $E4, $01, $F8   ; 01 
- D 0 - I - 0x03524A 0D:923A: 01        .byte $01, $E6,      $00   ; 02 



off_04_923D_51:
- D 0 - I - 0x03524D 0D:923D: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03524E 0D:923E: F0        .byte $F0, $F8, $01, $F8   ; 01 
- D 0 - I - 0x035252 0D:9242: F1        .byte $F1, $FA,      $00   ; 02 



off_04_9245_52:
- D 0 - I - 0x035255 0D:9245: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035256 0D:9246: F0        .byte $F0, $FC, $01, $FC   ; 01 



off_04_924A_53:
- D 0 - I - 0x03525A 0D:924A: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03525B 0D:924B: F0        .byte $F0, $FA, $41, $F8   ; 01 
- D 0 - I - 0x03525F 0D:924F: F1        .byte $F1, $F8,      $00   ; 02 



off_04_9252_54:
- D 0 - I - 0x035262 0D:9252: 07        .byte $07   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035263 0D:9253: E0        .byte $E0, $D0, $01, $F8   ; 01 
- D 0 - I - 0x035267 0D:9257: E1        .byte $E1, $D2,      $00   ; 02 
- D 0 - I - 0x03526A 0D:925A: E1        .byte $E1, $D4,      $08   ; 03 
- D 0 - I - 0x03526D 0D:925D: E1        .byte $E1, $EC,      $10   ; 04 
- D 0 - I - 0x035270 0D:9260: 01        .byte $01, $C4,      $F8   ; 05 
- D 0 - I - 0x035273 0D:9263: 01        .byte $01, $CE,      $00   ; 06 
- D 0 - I - 0x035276 0D:9266: 01        .byte $01, $EE,      $10   ; 07 



off_04_9269_55:
- D 0 - I - 0x035279 0D:9269: 07        .byte $07   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03527A 0D:926A: E0        .byte $E0, $D0, $01, $F7   ; 01 
- D 0 - I - 0x03527E 0D:926E: E1        .byte $E1, $D2,      $FF   ; 02 
- D 0 - I - 0x035281 0D:9271: E1        .byte $E1, $D4,      $07   ; 03 
- D 0 - I - 0x035284 0D:9274: E1        .byte $E1, $EC,      $0F   ; 04 
- D 0 - I - 0x035287 0D:9277: 01        .byte $01, $E8,      $F7   ; 05 
- D 0 - I - 0x03528A 0D:927A: 01        .byte $01, $EA,      $FF   ; 06 
- D 0 - I - 0x03528D 0D:927D: 00        .byte $00, $EE, $41, $0E   ; 07 



off_04_9281_56:
off_04_9281_57:
- D 0 - I - 0x035291 0D:9281: 06        .byte $06   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035292 0D:9282: E0        .byte $E0, $D6, $01, $FB   ; 01 
- D 0 - I - 0x035296 0D:9286: E1        .byte $E1, $D8,      $03   ; 02 
- D 0 - I - 0x035299 0D:9289: E1        .byte $E1, $F0,      $0B   ; 03 
- D 0 - I - 0x03529C 0D:928C: E3        .byte $E3, $F2,      $13   ; 04 
- D 0 - I - 0x03529F 0D:928F: 01        .byte $01, $CC,      $F8   ; 05 
- D 0 - I - 0x0352A2 0D:9292: 01        .byte $01, $CE,      $00   ; 06 



off_04_9295_77:
- D 0 - I - 0x0352A5 0D:9295: 09        .byte $09   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0352A6 0D:9296: F0        .byte $F0, $F4, $01, $CE   ; 01 
- D 0 - I - 0x0352AA 0D:929A: F1        .byte $F1, $F6,      $D6   ; 02 
- D 0 - I - 0x0352AD 0D:929D: F1        .byte $F1, $F6,      $DE   ; 03 
- D 0 - I - 0x0352B0 0D:92A0: F1        .byte $F1, $F6,      $E6   ; 04 
- D 0 - I - 0x0352B3 0D:92A3: E3        .byte $E3, $DA,      $EE   ; 05 
- D 0 - I - 0x0352B6 0D:92A6: E1        .byte $E1, $DC,      $F6   ; 06 
- D 0 - I - 0x0352B9 0D:92A9: E1        .byte $E1, $DE,      $FE   ; 07 
- D 0 - I - 0x0352BC 0D:92AC: 01        .byte $01, $CC,      $F8   ; 08 
- D 0 - I - 0x0352BF 0D:92AF: 01        .byte $01, $CE,      $00   ; 09 



off_04_92B2_5C:
- D 0 - I - 0x0352C2 0D:92B2: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0352C3 0D:92B3: DC        .byte $DC, $C0, $01, $F0   ; 01 
- D 0 - I - 0x0352C7 0D:92B7: E0        .byte $E0, $C2, $02, $F8   ; 02 
- D 0 - I - 0x0352CB 0D:92BB: E1        .byte $E1, $C4,      $00   ; 03 
- D 0 - I - 0x0352CE 0D:92BE: 01        .byte $01, $C6,      $F8   ; 04 
- D 0 - I - 0x0352D1 0D:92C1: 01        .byte $01, $C8,      $00   ; 05 



off_04_92C4_5D:
- D 0 - I - 0x0352D4 0D:92C4: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0352D5 0D:92C5: E0        .byte $E0, $C0, $01, $EF   ; 01 
- D 0 - I - 0x0352D9 0D:92C9: E0        .byte $E0, $C2, $02, $F7   ; 02 
- D 0 - I - 0x0352DD 0D:92CD: E1        .byte $E1, $C4,      $FF   ; 03 
- D 0 - I - 0x0352E0 0D:92D0: 01        .byte $01, $CA,      $F7   ; 04 
- D 0 - I - 0x0352E3 0D:92D3: 01        .byte $01, $CC,      $FF   ; 05 



off_04_92D6_79:
- D 0 - I - 0x0352E6 0D:92D6: 06        .byte $06   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0352E7 0D:92D7: E0        .byte $E0, $CE, $01, $E8   ; 01 
- D 0 - I - 0x0352EB 0D:92DB: E1        .byte $E1, $D0,      $F0   ; 02 
- D 0 - I - 0x0352EE 0D:92DE: E0        .byte $E0, $C2, $02, $F8   ; 03 
- D 0 - I - 0x0352F2 0D:92E2: E1        .byte $E1, $C4,      $00   ; 04 
- D 0 - I - 0x0352F5 0D:92E5: 01        .byte $01, $D2,      $F7   ; 05 
- D 0 - I - 0x0352F8 0D:92E8: 01        .byte $01, $D4,      $FF   ; 06 



off_04_92EB_7A:
- D 0 - I - 0x0352FB 0D:92EB: 09        .byte $09   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0352FC 0D:92EC: E0        .byte $E0, $D6, $01, $D6   ; 01 
- D 0 - I - 0x035300 0D:92F0: E1        .byte $E1, $D6,      $DE   ; 02 
- D 0 - I - 0x035303 0D:92F3: E0        .byte $E0, $D8, $02, $E6   ; 03 
- D 0 - I - 0x035307 0D:92F7: E1        .byte $E1, $DA,      $EE   ; 04 
- D 0 - I - 0x03530A 0D:92FA: E1        .byte $E1, $DC,      $F6   ; 05 
- D 0 - I - 0x03530D 0D:92FD: 01        .byte $01, $DE,      $E8   ; 06 
- D 0 - I - 0x035310 0D:9300: 01        .byte $01, $E0,      $F0   ; 07 
- D 0 - I - 0x035313 0D:9303: 01        .byte $01, $E2,      $F8   ; 08 
- D 0 - I - 0x035316 0D:9306: 01        .byte $01, $E4,      $00   ; 09 



off_04_9309_7B:
- - - - - - 0x035319 0D:9309: 09        .byte $09   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- - - - - - 0x03531A 0D:930A: E0        .byte $E0, $E6, $01, $D6   ; 01 
- - - - - - 0x03531E 0D:930E: E1        .byte $E1, $E8,      $DE   ; 02 
- - - - - - 0x035321 0D:9311: E0        .byte $E0, $D8, $02, $E6   ; 03 
- - - - - - 0x035325 0D:9315: E1        .byte $E1, $DA,      $EE   ; 04 
- - - - - - 0x035328 0D:9318: E1        .byte $E1, $DC,      $F6   ; 05 
- - - - - - 0x03532B 0D:931B: 01        .byte $01, $DE,      $E8   ; 06 
- - - - - - 0x03532E 0D:931E: 01        .byte $01, $E0,      $F0   ; 07 
- - - - - - 0x035331 0D:9321: 01        .byte $01, $E2,      $F8   ; 08 
- - - - - - 0x035334 0D:9324: 01        .byte $01, $E4,      $00   ; 09 



off_04_9327_7C:
- D 0 - I - 0x035337 0D:9327: 09        .byte $09   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035338 0D:9328: F6        .byte $F6, $E6, $01, $D6   ; 01 
- D 0 - I - 0x03533C 0D:932C: F7        .byte $F7, $E8,      $DE   ; 02 
- D 0 - I - 0x03533F 0D:932F: E2        .byte $E2, $D8, $02, $E6   ; 03 
- D 0 - I - 0x035343 0D:9333: E1        .byte $E1, $DA,      $EE   ; 04 
- D 0 - I - 0x035346 0D:9336: E1        .byte $E1, $DC,      $F6   ; 05 
- D 0 - I - 0x035349 0D:9339: 01        .byte $01, $DE,      $E8   ; 06 
- D 0 - I - 0x03534C 0D:933C: 01        .byte $01, $E0,      $F0   ; 07 
- D 0 - I - 0x03534F 0D:933F: 01        .byte $01, $E2,      $F8   ; 08 
- D 0 - I - 0x035352 0D:9342: 01        .byte $01, $E4,      $00   ; 09 



off_04_9345_5E:
- D 0 - I - 0x035355 0D:9345: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035356 0D:9346: E0        .byte $E0, $80, $03, $F8   ; 01 
- D 0 - I - 0x03535A 0D:934A: E0        .byte $E0, $80, $43, $00   ; 02 
- D 0 - I - 0x03535E 0D:934E: 00        .byte $00, $82, $03, $F8   ; 03 
- D 0 - I - 0x035362 0D:9352: 00        .byte $00, $82, $43, $00   ; 04 



off_04_9356_5F:
- D 0 - I - 0x035366 0D:9356: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035367 0D:9357: E0        .byte $E0, $84, $03, $F8   ; 01 
- D 0 - I - 0x03536B 0D:935B: E0        .byte $E0, $84, $43, $00   ; 02 
- D 0 - I - 0x03536F 0D:935F: 00        .byte $00, $86, $03, $F8   ; 03 
- D 0 - I - 0x035373 0D:9363: 00        .byte $00, $86, $43, $00   ; 04 



off_04_9367_60:
- D 0 - I - 0x035377 0D:9367: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035378 0D:9368: F0        .byte $F0, $8C, $03, $FC   ; 01 



off_04_936C_61:
- D 0 - I - 0x03537C 0D:936C: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03537D 0D:936D: E0        .byte $E0, $8C, $03, $FC   ; 01 
- D 0 - I - 0x035381 0D:9371: 00        .byte $00, $8C, $03, $FC   ; 02 



off_04_9375_62:
- D 0 - I - 0x035385 0D:9375: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035386 0D:9376: D0        .byte $D0, $8C, $03, $FC   ; 01 
- D 0 - I - 0x03538A 0D:937A: F0        .byte $F0, $8C, $03, $FC   ; 02 
- D 0 - I - 0x03538E 0D:937E: 10        .byte $10, $8C, $03, $FC   ; 03 



off_04_9382_63:
- D 0 - I - 0x035392 0D:9382: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035393 0D:9383: C0        .byte $C0, $8C, $03, $FC   ; 01 
- D 0 - I - 0x035397 0D:9387: E0        .byte $E0, $8C, $03, $FC   ; 02 
- D 0 - I - 0x03539B 0D:938B: 00        .byte $00, $8C, $03, $FC   ; 03 
- D 0 - I - 0x03539F 0D:938F: 20        .byte $20, $8C, $03, $FC   ; 04 



off_04_9393_64:
- D 0 - I - 0x0353A3 0D:9393: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0353A4 0D:9394: B0        .byte $B0, $8C, $03, $FC   ; 01 
- D 0 - I - 0x0353A8 0D:9398: D0        .byte $D0, $8C, $03, $FC   ; 02 
- D 0 - I - 0x0353AC 0D:939C: F0        .byte $F0, $8C, $03, $FC   ; 03 
- D 0 - I - 0x0353B0 0D:93A0: 10        .byte $10, $8C, $03, $FC   ; 04 
- D 0 - I - 0x0353B4 0D:93A4: 30        .byte $30, $8C, $03, $FC   ; 05 



off_04_93A8_6C:
- D 0 - I - 0x0353B8 0D:93A8: 06        .byte $06   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0353B9 0D:93A9: A0        .byte $A0, $8C, $03, $FC   ; 01 
- D 0 - I - 0x0353BD 0D:93AD: C0        .byte $C0, $8C, $03, $FC   ; 02 
- D 0 - I - 0x0353C1 0D:93B1: E0        .byte $E0, $8C, $03, $FC   ; 03 
- D 0 - I - 0x0353C5 0D:93B5: 00        .byte $00, $8C, $03, $FC   ; 04 
- D 0 - I - 0x0353C9 0D:93B9: 20        .byte $20, $8C, $03, $FC   ; 05 
- D 0 - I - 0x0353CD 0D:93BD: 40        .byte $40, $8C, $03, $FC   ; 06 



off_04_93C1_65:
- D 0 - I - 0x0353D1 0D:93C1: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0353D2 0D:93C2: F0        .byte $F0, $88, $03, $FC   ; 01 



off_04_93C6_66:
- D 0 - I - 0x0353D6 0D:93C6: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0353D7 0D:93C7: F0        .byte $F0, $8A, $03, $FC   ; 01 



off_00_0B_93CB_2B:
off_07_93CB_1F:
- D 0 - I - 0x0353DB 0D:93CB: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0353DC 0D:93CC: F0        .byte $F0, $EB, $03, $FC   ; 01 



off_00_0B_93D0_2C:
off_00_0B_93D0_2E:
off_07_93D0_20:
off_07_93D0_22:
- D 0 - I - 0x0353E0 0D:93D0: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0353E1 0D:93D1: F0        .byte $F0, $ED, $03, $FC   ; 01 



off_00_0B_93D5_2D:
off_07_93D5_21:
- D 0 - I - 0x0353E5 0D:93D5: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0353E6 0D:93D6: F0        .byte $F0, $EF, $03, $FC   ; 01 



off_09_93DA_01:
- D 0 - I - 0x0353EA 0D:93DA: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0353EB 0D:93DB: E0        .byte $E0, $8E, $02, $F8   ; 01 
- D 0 - I - 0x0353EF 0D:93DF: E0        .byte $E0, $8E, $42, $FF   ; 02 



off_09_93E3_02:
- D 0 - I - 0x0353F3 0D:93E3: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0353F4 0D:93E4: E0        .byte $E0, $90, $02, $F8   ; 01 
- D 0 - I - 0x0353F8 0D:93E8: E0        .byte $E0, $90, $42, $FF   ; 02 



off_09_93EC_03:
- D 0 - I - 0x0353FC 0D:93EC: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0353FD 0D:93ED: E0        .byte $E0, $92, $02, $F8   ; 01 
- D 0 - I - 0x035401 0D:93F1: E0        .byte $E0, $92, $42, $FF   ; 02 
- D 0 - I - 0x035405 0D:93F5: 00        .byte $00, $94, $02, $F8   ; 03 
- D 0 - I - 0x035409 0D:93F9: 00        .byte $00, $94, $42, $FF   ; 04 



off_09_93FD_04:
- D 0 - I - 0x03540D 0D:93FD: 08        .byte $08   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03540E 0D:93FE: E0        .byte $E0, $96, $02, $E8   ; 01 
- D 0 - I - 0x035412 0D:9402: E1        .byte $E1, $98,      $F0   ; 02 
- D 0 - I - 0x035415 0D:9405: E1        .byte $E1, $9A,      $F8   ; 03 
- D 0 - I - 0x035418 0D:9408: E0        .byte $E0, $9A, $42, $FF   ; 04 
- D 0 - I - 0x03541C 0D:940C: E1        .byte $E1, $98,      $07   ; 05 
- D 0 - I - 0x03541F 0D:940F: E1        .byte $E1, $96,      $0F   ; 06 
- D 0 - I - 0x035422 0D:9412: 00        .byte $00, $9C, $02, $F8   ; 07 
- D 0 - I - 0x035426 0D:9416: 01        .byte $01, $9C,      $FF   ; 08 



off_09_9419_05:
- D 0 - I - 0x035429 0D:9419: 07        .byte $07   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03542A 0D:941A: E0        .byte $E0, $9E, $02, $F0   ; 01 
- D 0 - I - 0x03542E 0D:941E: E1        .byte $E1, $A0,      $F8   ; 02 
- D 0 - I - 0x035431 0D:9421: E1        .byte $E1, $A2,      $00   ; 03 
- D 0 - I - 0x035434 0D:9424: E1        .byte $E1, $A4,      $08   ; 04 
- D 0 - I - 0x035437 0D:9427: E1        .byte $E1, $A6,      $10   ; 05 
- D 0 - I - 0x03543A 0D:942A: 01        .byte $01, $A8,      $F8   ; 06 
- D 0 - I - 0x03543D 0D:942D: 01        .byte $01, $AA,      $00   ; 07 



off_09_9430_06:
- D 0 - I - 0x035440 0D:9430: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035441 0D:9431: E0        .byte $E0, $AE, $02, $FB   ; 01 
- D 0 - I - 0x035445 0D:9435: E1        .byte $E1, $B0,      $03   ; 02 
- D 0 - I - 0x035448 0D:9438: F9        .byte $F9, $AC,      $F0   ; 03 
- D 0 - I - 0x03544B 0D:943B: 01        .byte $01, $B2,      $F8   ; 04 
- D 0 - I - 0x03544E 0D:943E: 01        .byte $01, $B4,      $00   ; 05 



off_09_9441_07:
- D 0 - I - 0x035451 0D:9441: 06        .byte $06   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035452 0D:9442: F0        .byte $F0, $AC, $02, $F0   ; 01 
- D 0 - I - 0x035456 0D:9446: F1        .byte $F1, $B6,      $F8   ; 02 
- D 0 - I - 0x035459 0D:9449: F1        .byte $F1, $B8,      $00   ; 03 
- D 0 - I - 0x03545C 0D:944C: 11        .byte $11, $BA,      $F0   ; 04 
- D 0 - I - 0x03545F 0D:944F: 11        .byte $11, $BC,      $F8   ; 05 
- D 0 - I - 0x035462 0D:9452: 11        .byte $11, $BE,      $00   ; 06 



off_04_9455_6F:
- D 0 - I - 0x035465 0D:9455: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035466 0D:9456: E0        .byte $E0, $DE, $03, $F8   ; 01 
- D 0 - I - 0x03546A 0D:945A: E0        .byte $E0, $DE, $43, $00   ; 02 
- D 0 - I - 0x03546E 0D:945E: 00        .byte $00, $EA, $03, $FC   ; 03 



off_04_9462_70:
- D 0 - I - 0x035472 0D:9462: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035473 0D:9463: E0        .byte $E0, $E0, $03, $F8   ; 01 
- D 0 - I - 0x035477 0D:9467: E0        .byte $E0, $E0, $43, $00   ; 02 
- D 0 - I - 0x03547B 0D:946B: 01        .byte $01, $F0,      $FC   ; 03 



off_04_946E_71:
- D 0 - I - 0x03547E 0D:946E: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03547F 0D:946F: E0        .byte $E0, $E2, $03, $F4   ; 01 
- D 0 - I - 0x035483 0D:9473: E1        .byte $E1, $E4,      $FC   ; 02 
- D 0 - I - 0x035486 0D:9476: E0        .byte $E0, $E2, $43, $04   ; 03 
- D 0 - I - 0x03548A 0D:947A: 00        .byte $00, $EA, $03, $FC   ; 04 



off_04_947E_72:
- D 0 - I - 0x03548E 0D:947E: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03548F 0D:947F: E0        .byte $E0, $E6, $03, $F4   ; 01 
- D 0 - I - 0x035493 0D:9483: E1        .byte $E1, $E8,      $FC   ; 02 
- D 0 - I - 0x035496 0D:9486: E0        .byte $E0, $E6, $43, $04   ; 03 
- D 0 - I - 0x03549A 0D:948A: 00        .byte $00, $F0, $03, $FC   ; 04 



off_04_948E_73:
- D 0 - I - 0x03549E 0D:948E: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03549F 0D:948F: F0        .byte $F0, $DE, $03, $F8   ; 01 
- D 0 - I - 0x0354A3 0D:9493: F0        .byte $F0, $DE, $43, $00   ; 02 



off_04_9497_74:
- D 0 - I - 0x0354A7 0D:9497: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0354A8 0D:9498: F0        .byte $F0, $E0, $03, $F8   ; 01 
- D 0 - I - 0x0354AC 0D:949C: F0        .byte $F0, $E0, $43, $00   ; 02 



off_04_94A0_6D:
- D 0 - I - 0x0354B0 0D:94A0: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0354B1 0D:94A1: F0        .byte $F0, $EC, $03, $FC   ; 01 



off_04_94A5_6E:
- D 0 - I - 0x0354B5 0D:94A5: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0354B6 0D:94A6: F0        .byte $F0, $EE, $03, $FC   ; 01 



off_04_94AA_75:
- D 0 - I - 0x0354BA 0D:94AA: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0354BB 0D:94AB: F0        .byte $F0, $E2, $03, $F4   ; 01 
- D 0 - I - 0x0354BF 0D:94AF: F1        .byte $F1, $E4,      $FC   ; 02 
- D 0 - I - 0x0354C2 0D:94B2: F0        .byte $F0, $E2, $43, $04   ; 03 



off_04_94B6_76:
- D 0 - I - 0x0354C6 0D:94B6: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0354C7 0D:94B7: F0        .byte $F0, $E6, $03, $F4   ; 01 
- D 0 - I - 0x0354CB 0D:94BB: F1        .byte $F1, $E8,      $FC   ; 02 
- D 0 - I - 0x0354CE 0D:94BE: F0        .byte $F0, $E6, $43, $04   ; 03 



off_09_94C2_08:
- D 0 - I - 0x0354D2 0D:94C2: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0354D3 0D:94C3: F0        .byte $F0, $84, $03, $F4   ; 01 
- D 0 - I - 0x0354D7 0D:94C7: F1        .byte $F1, $86,      $FC   ; 02 
- D 0 - I - 0x0354DA 0D:94CA: F1        .byte $F1, $88,      $04   ; 03 



off_09_94CD_09:
- D 0 - I - 0x0354DD 0D:94CD: 06        .byte $06   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0354DE 0D:94CE: E0        .byte $E0, $84, $03, $F0   ; 01 
- D 0 - I - 0x0354E2 0D:94D2: E1        .byte $E1, $86,      $F8   ; 02 
- D 0 - I - 0x0354E5 0D:94D5: E1        .byte $E1, $A8,      $00   ; 03 
- D 0 - I - 0x0354E8 0D:94D8: 01        .byte $01, $AA,      $F8   ; 04 
- D 0 - I - 0x0354EB 0D:94DB: 01        .byte $01, $AC,      $00   ; 05 
- D 0 - I - 0x0354EE 0D:94DE: F9        .byte $F9, $AE,      $08   ; 06 



off_09_94E1_0A:
- D 0 - I - 0x0354F1 0D:94E1: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0354F2 0D:94E2: F0        .byte $F0, $8A, $03, $F4   ; 01 
- D 0 - I - 0x0354F6 0D:94E6: F1        .byte $F1, $8C,      $FC   ; 02 
- D 0 - I - 0x0354F9 0D:94E9: F1        .byte $F1, $88,      $04   ; 03 



off_09_94EC_0B:
- D 0 - I - 0x0354FC 0D:94EC: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0354FD 0D:94ED: F0        .byte $F0, $90, $03, $F0   ; 01 
- D 0 - I - 0x035501 0D:94F1: E9        .byte $E9, $92,      $F8   ; 02 
- D 0 - I - 0x035504 0D:94F4: E1        .byte $E1, $94,      $00   ; 03 
- D 0 - I - 0x035507 0D:94F7: E1        .byte $E1, $96,      $08   ; 04 
- D 0 - I - 0x03550A 0D:94FA: 01        .byte $01, $98,      $00   ; 05 



off_09_94FD_30:
- D 0 - I - 0x03550D 0D:94FD: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03550E 0D:94FE: F0        .byte $F0, $80, $03, $F4   ; 01 
- D 0 - I - 0x035512 0D:9502: F1        .byte $F1, $82,      $FC   ; 02 
- D 0 - I - 0x035515 0D:9505: F1        .byte $F1, $88,      $04   ; 03 



off_09_9508_31:
- D 0 - I - 0x035518 0D:9508: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035519 0D:9509: F0        .byte $F0, $9A, $01, $F4   ; 01 
- D 0 - I - 0x03551D 0D:950D: F0        .byte $F0, $80, $03, $F4   ; 02 
- D 0 - I - 0x035521 0D:9511: F1        .byte $F1, $82,      $FC   ; 03 
- D 0 - I - 0x035524 0D:9514: F1        .byte $F1, $88,      $04   ; 04 



off_04_9517_7D:
- D 0 - I - 0x035527 0D:9517: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035528 0D:9518: F0        .byte $F0, $9C, $01, $EC   ; 01 
- D 0 - I - 0x03552C 0D:951C: F1        .byte $F1, $9E,      $F4   ; 02 
- D 0 - I - 0x03552F 0D:951F: F0        .byte $F0, $80, $03, $F4   ; 03 
- D 0 - I - 0x035533 0D:9523: F1        .byte $F1, $82,      $FC   ; 04 
- D 0 - I - 0x035536 0D:9526: F1        .byte $F1, $88,      $04   ; 05 



off_04_9529_7E:
- D 0 - I - 0x035539 0D:9529: 07        .byte $07   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03553A 0D:952A: F0        .byte $F0, $9C, $01, $DC   ; 01 
- D 0 - I - 0x03553E 0D:952E: F1        .byte $F1, $A0,      $E4   ; 02 
- D 0 - I - 0x035541 0D:9531: F3        .byte $F3, $A0,      $EC   ; 03 
- D 0 - I - 0x035544 0D:9534: F1        .byte $F1, $9E,      $F4   ; 04 
- D 0 - I - 0x035547 0D:9537: F0        .byte $F0, $80, $03, $F4   ; 05 
- D 0 - I - 0x03554B 0D:953B: F1        .byte $F1, $82,      $FC   ; 06 
- D 0 - I - 0x03554E 0D:953E: F1        .byte $F1, $88,      $04   ; 07 



off_09_9541_0D:
- D 0 - I - 0x035551 0D:9541: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035552 0D:9542: E0        .byte $E0, $95, $02, $F5   ; 01 
- D 0 - I - 0x035556 0D:9546: E1        .byte $E1, $97,      $FD   ; 02 
- D 0 - I - 0x035559 0D:9549: 01        .byte $01, $99,      $F8   ; 03 
- D 0 - I - 0x03555C 0D:954C: 01        .byte $01, $9B,      $00   ; 04 



off_09_954F_0E:
- D 0 - I - 0x03555F 0D:954F: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035560 0D:9550: E0        .byte $E0, $9D, $02, $F5   ; 01 
- D 0 - I - 0x035564 0D:9554: E1        .byte $E1, $9F,      $FD   ; 02 
- D 0 - I - 0x035567 0D:9557: 01        .byte $01, $B0,      $F8   ; 03 
- D 0 - I - 0x03556A 0D:955A: 01        .byte $01, $B2,      $00   ; 04 



off_09_955D_0F:
- D 0 - I - 0x03556D 0D:955D: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03556E 0D:955E: E0        .byte $E0, $B4, $02, $F5   ; 01 
- D 0 - I - 0x035572 0D:9562: E1        .byte $E1, $B6,      $FD   ; 02 
- D 0 - I - 0x035575 0D:9565: 01        .byte $01, $B8,      $F8   ; 03 
- D 0 - I - 0x035578 0D:9568: 01        .byte $01, $BA,      $00   ; 04 



off_09_956B_10:
- D 0 - I - 0x03557B 0D:956B: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03557C 0D:956C: 00        .byte $00, $A2, $02, $F8   ; 01 
- D 0 - I - 0x035580 0D:9570: 00        .byte $00, $A2, $42, $00   ; 02 



off_09_9574_11:
- D 0 - I - 0x035584 0D:9574: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035585 0D:9575: 00        .byte $00, $BC, $02, $F8   ; 01 
- D 0 - I - 0x035589 0D:9579: 01        .byte $01, $BE,      $00   ; 02 



off_09_957C_14:
- D 0 - I - 0x03558C 0D:957C: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03558D 0D:957D: E0        .byte $E0, $D8, $02, $F8   ; 01 
- D 0 - I - 0x035591 0D:9581: E1        .byte $E1, $DA,      $00   ; 02 
- D 0 - I - 0x035594 0D:9584: 01        .byte $01, $DC,      $F8   ; 03 
- D 0 - I - 0x035597 0D:9587: 01        .byte $01, $DE,      $00   ; 04 
- D 0 - I - 0x03559A 0D:958A: 01        .byte $01, $E0,      $08   ; 05 



off_09_958D_15:
- D 0 - I - 0x03559D 0D:958D: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03559E 0D:958E: E0        .byte $E0, $E2, $02, $F8   ; 01 
- D 0 - I - 0x0355A2 0D:9592: E1        .byte $E1, $E4,      $00   ; 02 
- D 0 - I - 0x0355A5 0D:9595: 01        .byte $01, $E6,      $F8   ; 03 
- D 0 - I - 0x0355A8 0D:9598: 01        .byte $01, $E8,      $00   ; 04 
- D 0 - I - 0x0355AB 0D:959B: 01        .byte $01, $EA,      $08   ; 05 



off_09_959E_16:
- D 0 - I - 0x0355AE 0D:959E: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0355AF 0D:959F: E0        .byte $E0, $EC, $02, $F9   ; 01 
- D 0 - I - 0x0355B3 0D:95A3: E1        .byte $E1, $EE,      $01   ; 02 
- D 0 - I - 0x0355B6 0D:95A6: 01        .byte $01, $F0,      $F8   ; 03 
- D 0 - I - 0x0355B9 0D:95A9: 01        .byte $01, $F2,      $00   ; 04 
- D 0 - I - 0x0355BC 0D:95AC: 01        .byte $01, $F8,      $08   ; 05 



off_09_95AF_17:
- D 0 - I - 0x0355BF 0D:95AF: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0355C0 0D:95B0: F0        .byte $F0, $F4, $02, $FC   ; 01 



off_09_95B4_18:
- D 0 - I - 0x0355C4 0D:95B4: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0355C5 0D:95B5: F0        .byte $F0, $F6, $02, $FC   ; 01 



off_09_95B9_19:
- D 0 - I - 0x0355C9 0D:95B9: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0355CA 0D:95BA: F0        .byte $F0, $F8, $02, $FC   ; 01 



off_09_95BE_1A:
- D 0 - I - 0x0355CE 0D:95BE: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0355CF 0D:95BF: E2        .byte $E2, $B0, $01, $F8   ; 01 
- D 0 - I - 0x0355D3 0D:95C3: E3        .byte $E3, $B2,      $00   ; 02 
- D 0 - I - 0x0355D6 0D:95C6: 01        .byte $01, $B4,      $F8   ; 03 
- D 0 - I - 0x0355D9 0D:95C9: 01        .byte $01, $B6,      $00   ; 04 



off_09_95CC_1B:
- D 0 - I - 0x0355DC 0D:95CC: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0355DD 0D:95CD: E2        .byte $E2, $B0, $01, $F8   ; 01 
- D 0 - I - 0x0355E1 0D:95D1: E3        .byte $E3, $B2,      $00   ; 02 
- D 0 - I - 0x0355E4 0D:95D4: 01        .byte $01, $B8,      $F8   ; 03 
- D 0 - I - 0x0355E7 0D:95D7: 01        .byte $01, $BA,      $00   ; 04 



off_09_95DA_1C:
- D 0 - I - 0x0355EA 0D:95DA: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0355EB 0D:95DB: E0        .byte $E0, $B0, $01, $F8   ; 01 
- D 0 - I - 0x0355EF 0D:95DF: E1        .byte $E1, $B2,      $00   ; 02 
- D 0 - I - 0x0355F2 0D:95E2: 01        .byte $01, $BC,      $F8   ; 03 
- D 0 - I - 0x0355F5 0D:95E5: 01        .byte $01, $BE,      $00   ; 04 



off_09_95E8_2D:
- - - - - - 0x0355F8 0D:95E8: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- - - - - - 0x0355F9 0D:95E9: E2        .byte $E2, $C0, $01, $F8   ; 01 
- - - - - - 0x0355FD 0D:95ED: E3        .byte $E3, $C2,      $00   ; 02 
- - - - - - 0x035600 0D:95F0: 01        .byte $01, $C4,      $F8   ; 03 
- - - - - - 0x035603 0D:95F3: 01        .byte $01, $C6,      $00   ; 04 



off_09_95F6_2E:
- - - - - - 0x035606 0D:95F6: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- - - - - - 0x035607 0D:95F7: E2        .byte $E2, $C0, $01, $F8   ; 01 
- - - - - - 0x03560B 0D:95FB: E3        .byte $E3, $C2,      $00   ; 02 
- - - - - - 0x03560E 0D:95FE: 01        .byte $01, $C8,      $F8   ; 03 
- - - - - - 0x035611 0D:9601: 01        .byte $01, $CA,      $00   ; 04 



off_09_9604_2F:
- - - - - - 0x035614 0D:9604: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- - - - - - 0x035615 0D:9605: E0        .byte $E0, $C0, $01, $F8   ; 01 
- - - - - - 0x035619 0D:9609: E1        .byte $E1, $C2,      $00   ; 02 
- - - - - - 0x03561C 0D:960C: 01        .byte $01, $CC,      $F8   ; 03 
- - - - - - 0x03561F 0D:960F: 01        .byte $01, $CE,      $00   ; 04 



off_09_9612_2B:
- D 0 - I - 0x035622 0D:9612: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035623 0D:9613: F0        .byte $F0, $F6, $01, $F8   ; 01 
- D 0 - I - 0x035627 0D:9617: F1        .byte $F1, $F8,      $00   ; 02 



off_09_961A_2C:
- D 0 - I - 0x03562A 0D:961A: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03562B 0D:961B: F0        .byte $F0, $FA, $01, $F8   ; 01 
- D 0 - I - 0x03562F 0D:961F: F1        .byte $F1, $FC,      $00   ; 02 



off_09_9622_32:
- D 0 - I - 0x035632 0D:9622: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035633 0D:9623: F0        .byte $F0, $B6, $01, $F8   ; 01 
- D 0 - I - 0x035637 0D:9627: F1        .byte $F1, $B8,      $00   ; 02 



off_09_962A_33:
- D 0 - I - 0x03563A 0D:962A: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03563B 0D:962B: F0        .byte $F0, $BA, $01, $F8   ; 01 
- D 0 - I - 0x03563F 0D:962F: F1        .byte $F1, $BC,      $00   ; 02 



off_09_9632_39:
- D 0 - I - 0x035642 0D:9632: 09        .byte $09   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035643 0D:9633: D0        .byte $D0, $C0, $01, $F0   ; 01 
- D 0 - I - 0x035647 0D:9637: E1        .byte $E1, $C2,      $F8   ; 02 
- D 0 - I - 0x03564A 0D:963A: E1        .byte $E1, $C4,      $00   ; 03 
- D 0 - I - 0x03564D 0D:963D: DB        .byte $DB, $C6,      $08   ; 04 
- D 0 - I - 0x035650 0D:9640: D1        .byte $D1, $C8,      $10   ; 05 
- D 0 - I - 0x035653 0D:9643: 01        .byte $01, $CA,      $FB   ; 06 
- D 0 - I - 0x035656 0D:9646: 01        .byte $01, $CC,      $03   ; 07 
- D 0 - I - 0x035659 0D:9649: 1A        .byte $1A, $84, $02, $F8   ; 08 
- D 0 - I - 0x03565D 0D:964D: 1B        .byte $1B, $86,      $00   ; 09 



off_09_9650_3A:
- D 0 - I - 0x035660 0D:9650: 0A        .byte $0A   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035661 0D:9651: E6        .byte $E6, $CE, $01, $F0   ; 01 
- D 0 - I - 0x035665 0D:9655: E1        .byte $E1, $D0,      $F8   ; 02 
- D 0 - I - 0x035668 0D:9658: E1        .byte $E1, $D2,      $00   ; 03 
- D 0 - I - 0x03566B 0D:965B: E7        .byte $E7, $D4,      $08   ; 04 
- D 0 - I - 0x03566E 0D:965E: 05        .byte $05, $D6,      $F0   ; 05 
- D 0 - I - 0x035671 0D:9661: 01        .byte $01, $D8,      $F8   ; 06 
- D 0 - I - 0x035674 0D:9664: 01        .byte $01, $DA,      $00   ; 07 
- D 0 - I - 0x035677 0D:9667: 05        .byte $05, $DC,      $08   ; 08 
- D 0 - I - 0x03567A 0D:966A: 1E        .byte $1E, $88, $02, $F8   ; 09 
- D 0 - I - 0x03567E 0D:966E: 1F        .byte $1F, $8A,      $00   ; 0A 



off_09_9671_3B:
- D 0 - I - 0x035681 0D:9671: 07        .byte $07   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035682 0D:9672: D0        .byte $D0, $C0, $01, $F0   ; 01 
- D 0 - I - 0x035686 0D:9676: E1        .byte $E1, $C2,      $F8   ; 02 
- D 0 - I - 0x035689 0D:9679: E1        .byte $E1, $C4,      $00   ; 03 
- D 0 - I - 0x03568C 0D:967C: DB        .byte $DB, $C6,      $08   ; 04 
- D 0 - I - 0x03568F 0D:967F: D1        .byte $D1, $C8,      $10   ; 05 
- D 0 - I - 0x035692 0D:9682: 01        .byte $01, $CA,      $FB   ; 06 
- D 0 - I - 0x035695 0D:9685: 01        .byte $01, $CC,      $03   ; 07 



off_09_9688_3C:
- D 0 - I - 0x035698 0D:9688: 08        .byte $08   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035699 0D:9689: E6        .byte $E6, $CE, $01, $F0   ; 01 
- D 0 - I - 0x03569D 0D:968D: E1        .byte $E1, $D0,      $F8   ; 02 
- D 0 - I - 0x0356A0 0D:9690: E1        .byte $E1, $D2,      $00   ; 03 
- D 0 - I - 0x0356A3 0D:9693: E7        .byte $E7, $D4,      $08   ; 04 
- D 0 - I - 0x0356A6 0D:9696: 05        .byte $05, $D6,      $F0   ; 05 
- D 0 - I - 0x0356A9 0D:9699: 01        .byte $01, $D8,      $F8   ; 06 
- D 0 - I - 0x0356AC 0D:969C: 01        .byte $01, $DA,      $00   ; 07 
- D 0 - I - 0x0356AF 0D:969F: 05        .byte $05, $DC,      $08   ; 08 



_off039_96A2_05:
- - - - - - 0x0356B2 0D:96A2: 82 97     .word off_05_9782_00     ; unused
- D 0 - I - 0x0356B4 0D:96A4: 82 97     .word off_05_9782_01
- D 0 - I - 0x0356B6 0D:96A6: A9 97     .word off_05_97A9_02
- D 0 - I - 0x0356B8 0D:96A8: CA 97     .word off_05_97CA_03
- - - - - - 0x0356BA 0D:96AA: A9 97     .word off_05_97A9_04
- D 0 - I - 0x0356BC 0D:96AC: EE 97     .word off_05_97EE_05
- D 0 - I - 0x0356BE 0D:96AE: 15 98     .word off_05_9815_06
- D 0 - I - 0x0356C0 0D:96B0: 36 98     .word off_05_9836_07
- D 0 - I - 0x0356C2 0D:96B2: 60 98     .word off_05_9860_08
- D 0 - I - 0x0356C4 0D:96B4: 81 98     .word off_05_9881_09
- D 0 - I - 0x0356C6 0D:96B6: 89 98     .word off_05_9889_0A
- D 0 - I - 0x0356C8 0D:96B8: 8E 98     .word off_05_988E_0B
- D 0 - I - 0x0356CA 0D:96BA: 96 98     .word off_05_9896_0C
- D 0 - I - 0x0356CC 0D:96BC: B7 98     .word off_05_98B7_0D
- D 0 - I - 0x0356CE 0D:96BE: D8 98     .word off_05_98D8_0E
- D 0 - I - 0x0356D0 0D:96C0: B7 98     .word off_05_98B7_0F
- D 0 - I - 0x0356D2 0D:96C2: FC 98     .word off_05_98FC_10
- D 0 - I - 0x0356D4 0D:96C4: 20 99     .word off_05_9920_11
- - - - - - 0x0356D6 0D:96C6: 44 99     .word off_05_9944_12
- D 0 - I - 0x0356D8 0D:96C8: 61 99     .word off_05_9961_13
- D 0 - I - 0x0356DA 0D:96CA: 6F 99     .word off_05_996F_14
- - - - - - 0x0356DC 0D:96CC: 82 97     .word off_05_9782_15
- - - - - - 0x0356DE 0D:96CE: 82 97     .word off_05_9782_16
- D 0 - I - 0x0356E0 0D:96D0: 78 99     .word off_05_9978_17
- - - - - - 0x0356E2 0D:96D2: 82 97     .word off_05_9782_18
- - - - - - 0x0356E4 0D:96D4: 82 97     .word off_05_9782_19
- - - - - - 0x0356E6 0D:96D6: 82 97     .word off_05_9782_1A
- - - - - - 0x0356E8 0D:96D8: 82 97     .word off_05_9782_1B
- - - - - - 0x0356EA 0D:96DA: 82 97     .word off_05_9782_1C
- D 0 - I - 0x0356EC 0D:96DC: F3 99     .word off_05_99F3_1D
- D 0 - I - 0x0356EE 0D:96DE: 07 9A     .word off_05_9A07_1E
- D 0 - I - 0x0356F0 0D:96E0: 1B 9A     .word off_05_9A1B_1F
- D 0 - I - 0x0356F2 0D:96E2: 2F 9A     .word off_05_9A2F_20
- D 0 - I - 0x0356F4 0D:96E4: 43 9A     .word off_05_9A43_21
- D 0 - I - 0x0356F6 0D:96E6: 57 9A     .word off_05_9A57_22
- - - - - - 0x0356F8 0D:96E8: 6E 9A     .word off_05_9A6E_23
- - - - - - 0x0356FA 0D:96EA: 82 9A     .word off_05_9A82_24
- D 0 - I - 0x0356FC 0D:96EC: 96 9A     .word off_05_9A96_25
- D 0 - I - 0x0356FE 0D:96EE: A7 9A     .word off_05_9AA7_26
- D 0 - I - 0x035700 0D:96F0: AF 9A     .word off_05_9AAF_27
- D 0 - I - 0x035702 0D:96F2: B7 9A     .word off_05_9AB7_28
- D 0 - I - 0x035704 0D:96F4: BF 9A     .word off_05_9ABF_29
- D 0 - I - 0x035706 0D:96F6: C7 9A     .word off_05_9AC7_2A
- D 0 - I - 0x035708 0D:96F8: F0 9A     .word off_05_9AF0_2B
- D 0 - I - 0x03570A 0D:96FA: 17 9B     .word off_05_9B17_2C
- D 0 - I - 0x03570C 0D:96FC: 31 9B     .word off_05_9B31_2D
- D 0 - I - 0x03570E 0D:96FE: 48 9B     .word off_05_9B48_2E
- D 0 - I - 0x035710 0D:9700: 5F 9B     .word off_05_9B5F_2F
- D 0 - I - 0x035712 0D:9702: 6A 9B     .word off_05_9B6A_30
- D 0 - I - 0x035714 0D:9704: 78 9B     .word off_05_9B78_31
- D 0 - I - 0x035716 0D:9706: 80 9B     .word off_05_9B80_32
- D 0 - I - 0x035718 0D:9708: 88 9B     .word off_05_9B88_33
- D 0 - I - 0x03571A 0D:970A: 96 9B     .word off_05_9B96_34
- D 0 - I - 0x03571C 0D:970C: BD 9B     .word off_05_9BBD_35
- D 0 - I - 0x03571E 0D:970E: D7 9B     .word off_05_9BD7_36
- D 0 - I - 0x035720 0D:9710: DC 9B     .word off_05_9BDC_37
- D 0 - I - 0x035722 0D:9712: F6 9B     .word off_05_9BF6_38
- D 0 - I - 0x035724 0D:9714: 17 9C     .word off_05_9C17_39
- D 0 - I - 0x035726 0D:9716: 45 9C     .word off_05_9C45_3A
- D 0 - I - 0x035728 0D:9718: 66 9C     .word off_05_9C66_3B
- D 0 - I - 0x03572A 0D:971A: 87 9C     .word off_05_9C87_3C
- D 0 - I - 0x03572C 0D:971C: B1 9C     .word off_05_9CB1_3D
- D 0 - I - 0x03572E 0D:971E: BD 9C     .word off_05_9CBD_3E
- D 0 - I - 0x035730 0D:9720: C6 9C     .word off_05_9CC6_3F
- D 0 - I - 0x035732 0D:9722: CE 9C     .word off_05_9CCE_40
- - - - - - 0x035734 0D:9724: D6 9C     .word off_05_9CD6_41
- D 0 - I - 0x035736 0D:9726: DE 9C     .word off_05_9CDE_42
- D 0 - I - 0x035738 0D:9728: FB 9C     .word off_05_9CFB_43
- D 0 - I - 0x03573A 0D:972A: 15 9D     .word off_05_9D15_44
- D 0 - I - 0x03573C 0D:972C: 26 9D     .word off_05_9D26_45
- D 0 - I - 0x03573E 0D:972E: 37 9D     .word off_05_9D37_46
- D 0 - I - 0x035740 0D:9730: 45 9D     .word off_05_9D45_47
- D 0 - I - 0x035742 0D:9732: 53 9D     .word off_05_9D53_48
- D 0 - I - 0x035744 0D:9734: 61 9D     .word off_05_9D61_49
- D 0 - I - 0x035746 0D:9736: CF 9A     .word off_05_9ACF_4A
- D 0 - I - 0x035748 0D:9738: DD 9A     .word off_05_9ADD_4B
- D 0 - I - 0x03574A 0D:973A: E8 9A     .word off_05_9AE8_4C
- D 0 - I - 0x03574C 0D:973C: 6F 9D     .word off_05_9D6F_4D
- D 0 - I - 0x03574E 0D:973E: 7D 9D     .word off_05_9D7D_4E
- D 0 - I - 0x035750 0D:9740: 88 9D     .word off_05_9D88_4F
- D 0 - I - 0x035752 0D:9742: 93 9D     .word off_05_9D93_50
- D 0 - I - 0x035754 0D:9744: A1 9D     .word off_05_9DA1_51
- D 0 - I - 0x035756 0D:9746: AF 9D     .word off_05_9DAF_52
- D 0 - I - 0x035758 0D:9748: B7 9D     .word off_05_9DB7_53
- D 0 - I - 0x03575A 0D:974A: BF 9D     .word off_05_9DBF_54
- D 0 - I - 0x03575C 0D:974C: C4 9D     .word off_05_9DC4_55
- D 0 - I - 0x03575E 0D:974E: CC 9D     .word off_05_9DCC_56
- D 0 - I - 0x035760 0D:9750: D4 9D     .word off_05_9DD4_57
- D 0 - I - 0x035762 0D:9752: D9 9D     .word off_05_9DD9_58
- D 0 - I - 0x035764 0D:9754: DE 9D     .word off_05_9DDE_59
- D 0 - I - 0x035766 0D:9756: E3 9D     .word off_05_9DE3_5A
- D 0 - I - 0x035768 0D:9758: E8 9D     .word off_05_9DE8_5B
- D 0 - I - 0x03576A 0D:975A: ED 9D     .word off_05_9DED_5C
- D 0 - I - 0x03576C 0D:975C: F2 9D     .word off_05_9DF2_5D
- D 0 - I - 0x03576E 0D:975E: FB 9D     .word off_05_9DFB_5E
- D 0 - I - 0x035770 0D:9760: 1A 9E     .word off_05_9E1A_5F
- D 0 - I - 0x035772 0D:9762: 31 9E     .word off_05_9E31_60
- D 0 - I - 0x035774 0D:9764: 40 9E     .word off_05_9E40_61
- D 0 - I - 0x035776 0D:9766: 4F 9E     .word off_05_9E4F_62
- D 0 - I - 0x035778 0D:9768: 75 9E     .word off_05_9E75_63
- D 0 - I - 0x03577A 0D:976A: 95 9E     .word off_05_9E95_64
- D 0 - I - 0x03577C 0D:976C: 75 9E     .word off_05_9E75_65
- D 0 - I - 0x03577E 0D:976E: BB 9E     .word off_05_9EBB_66
- D 0 - I - 0x035780 0D:9770: E1 9E     .word off_05_9EE1_67
- D 0 - I - 0x035782 0D:9772: 0A 9F     .word off_05_9F0A_68
- D 0 - I - 0x035784 0D:9774: 30 9F     .word off_05_9F30_69
- D 0 - I - 0x035786 0D:9776: 56 9F     .word off_05_9F56_6A
- D 0 - I - 0x035788 0D:9778: 82 9F     .word off_05_9F82_6B
- D 0 - I - 0x03578A 0D:977A: 9F 9F     .word off_05_9F9F_6C
- D 0 - I - 0x03578C 0D:977C: B3 9F     .word off_05_9FB3_6D
- D 0 - I - 0x03578E 0D:977E: B9 A9     .word off_05_A9B9_6E
- D 0 - I - 0x035790 0D:9780: 9B A9     .word off_05_A99B_6F



off_05_9782_00:
off_05_9782_01:
off_05_9782_15:
off_05_9782_16:
off_05_9782_18:
off_05_9782_19:
off_05_9782_1A:
off_05_9782_1B:
off_05_9782_1C:
- D 0 - I - 0x035792 0D:9782: 0C        .byte $0C   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035793 0D:9783: F0        .byte $F0, $C0, $03, $00   ; 01 
- D 0 - I - 0x035797 0D:9787: F1        .byte $F1, $C2,      $08   ; 02 
- D 0 - I - 0x03579A 0D:978A: D2        .byte $D2, $80, $02, $EE   ; 03 
- D 0 - I - 0x03579E 0D:978E: D3        .byte $D3, $82,      $F6   ; 04 
- D 0 - I - 0x0357A1 0D:9791: D3        .byte $D3, $84,      $FE   ; 05 
- D 0 - I - 0x0357A4 0D:9794: D1        .byte $D1, $86,      $E8   ; 06 
- D 0 - I - 0x0357A7 0D:9797: F1        .byte $F1, $88,      $E8   ; 07 
- D 0 - I - 0x0357AA 0D:979A: F1        .byte $F1, $8A,      $F0   ; 08 
- D 0 - I - 0x0357AD 0D:979D: F1        .byte $F1, $8C,      $F8   ; 09 
- D 0 - I - 0x0357B0 0D:97A0: 11        .byte $11, $8E,      $F8   ; 0A 
- D 0 - I - 0x0357B3 0D:97A3: 11        .byte $11, $90,      $00   ; 0B 
- D 0 - I - 0x0357B6 0D:97A6: 11        .byte $11, $92,      $08   ; 0C 



off_05_97A9_02:
off_05_97A9_04:
- D 0 - I - 0x0357B9 0D:97A9: 0A        .byte $0A   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0357BA 0D:97AA: F2        .byte $F2, $C0, $03, $FF   ; 01 
- D 0 - I - 0x0357BE 0D:97AE: F3        .byte $F3, $C2,      $07   ; 02 
- D 0 - I - 0x0357C1 0D:97B1: D0        .byte $D0, $80, $02, $F0   ; 03 
- D 0 - I - 0x0357C5 0D:97B5: D1        .byte $D1, $82,      $F8   ; 04 
- D 0 - I - 0x0357C8 0D:97B8: D1        .byte $D1, $84,      $00   ; 05 
- D 0 - I - 0x0357CB 0D:97BB: E1        .byte $E1, $94,      $E8   ; 06 
- D 0 - I - 0x0357CE 0D:97BE: F1        .byte $F1, $96,      $F0   ; 07 
- D 0 - I - 0x0357D1 0D:97C1: F1        .byte $F1, $98,      $F8   ; 08 
- D 0 - I - 0x0357D4 0D:97C4: 11        .byte $11, $9A,      $FA   ; 09 
- D 0 - I - 0x0357D7 0D:97C7: 11        .byte $11, $9C,      $02   ; 0A 



off_05_97CA_03:
- D 0 - I - 0x0357DA 0D:97CA: 0B        .byte $0B   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0357DB 0D:97CB: F2        .byte $F2, $C0, $03, $FD   ; 01 
- D 0 - I - 0x0357DF 0D:97CF: F3        .byte $F3, $C2,      $05   ; 02 
- D 0 - I - 0x0357E2 0D:97D2: D2        .byte $D2, $80, $02, $F0   ; 03 
- D 0 - I - 0x0357E6 0D:97D6: D3        .byte $D3, $82,      $F8   ; 04 
- D 0 - I - 0x0357E9 0D:97D9: D3        .byte $D3, $84,      $00   ; 05 
- D 0 - I - 0x0357EC 0D:97DC: F1        .byte $F1, $9E,      $E8   ; 06 
- D 0 - I - 0x0357EF 0D:97DF: F1        .byte $F1, $A0,      $F0   ; 07 
- D 0 - I - 0x0357F2 0D:97E2: F1        .byte $F1, $A2,      $F8   ; 08 
- D 0 - I - 0x0357F5 0D:97E5: 11        .byte $11, $A4,      $F8   ; 09 
- D 0 - I - 0x0357F8 0D:97E8: 11        .byte $11, $A6,      $00   ; 0A 
- D 0 - I - 0x0357FB 0D:97EB: 11        .byte $11, $A8,      $08   ; 0B 



off_05_97EE_05:
off_08_97EE_04:
- D 0 - I - 0x0357FE 0D:97EE: 0C        .byte $0C   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0357FF 0D:97EF: F0        .byte $F0, $C0, $03, $01   ; 01 
- D 0 - I - 0x035803 0D:97F3: F1        .byte $F1, $C2,      $09   ; 02 
- D 0 - I - 0x035806 0D:97F6: D2        .byte $D2, $80, $02, $F3   ; 03 
- D 0 - I - 0x03580A 0D:97FA: D3        .byte $D3, $82,      $FB   ; 04 
- D 0 - I - 0x03580D 0D:97FD: D3        .byte $D3, $84,      $03   ; 05 
- D 0 - I - 0x035810 0D:9800: D1        .byte $D1, $86,      $EA   ; 06 
- D 0 - I - 0x035813 0D:9803: F1        .byte $F1, $88,      $EA   ; 07 
- D 0 - I - 0x035816 0D:9806: F1        .byte $F1, $8A,      $F2   ; 08 
- D 0 - I - 0x035819 0D:9809: F1        .byte $F1, $8C,      $FA   ; 09 
- D 0 - I - 0x03581C 0D:980C: 11        .byte $11, $8E,      $F8   ; 0A 
- D 0 - I - 0x03581F 0D:980F: 11        .byte $11, $90,      $00   ; 0B 
- D 0 - I - 0x035822 0D:9812: 11        .byte $11, $92,      $08   ; 0C 



off_05_9815_06:
off_08_9815_05:
- D 0 - I - 0x035825 0D:9815: 0A        .byte $0A   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035826 0D:9816: F0        .byte $F0, $C0, $03, $01   ; 01 
- D 0 - I - 0x03582A 0D:981A: F1        .byte $F1, $C2,      $09   ; 02 
- D 0 - I - 0x03582D 0D:981D: D2        .byte $D2, $AA, $02, $F8   ; 03 
- D 0 - I - 0x035831 0D:9821: D3        .byte $D3, $AC,      $00   ; 04 
- D 0 - I - 0x035834 0D:9824: D3        .byte $D3, $AE,      $08   ; 05 
- D 0 - I - 0x035837 0D:9827: D3        .byte $D3, $B0,      $10   ; 06 
- D 0 - I - 0x03583A 0D:982A: F1        .byte $F1, $8C,      $FB   ; 07 
- D 0 - I - 0x03583D 0D:982D: 11        .byte $11, $8E,      $F8   ; 08 
- D 0 - I - 0x035840 0D:9830: 11        .byte $11, $90,      $00   ; 09 
- D 0 - I - 0x035843 0D:9833: 11        .byte $11, $92,      $08   ; 0A 



off_05_9836_07:
off_08_9836_06:
- D 0 - I - 0x035846 0D:9836: 0D        .byte $0D   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035847 0D:9837: F2        .byte $F2, $C0, $03, $00   ; 01 
- D 0 - I - 0x03584B 0D:983B: F3        .byte $F3, $C2,      $08   ; 02 
- D 0 - I - 0x03584E 0D:983E: D2        .byte $D2, $80, $02, $F0   ; 03 
- D 0 - I - 0x035852 0D:9842: D3        .byte $D3, $82,      $F8   ; 04 
- D 0 - I - 0x035855 0D:9845: D3        .byte $D3, $84,      $00   ; 05 
- D 0 - I - 0x035858 0D:9848: F7        .byte $F7, $9E,      $D8   ; 06 
- D 0 - I - 0x03585B 0D:984B: F7        .byte $F7, $A0,      $E0   ; 07 
- D 0 - I - 0x03585E 0D:984E: F5        .byte $F5, $B2,      $E8   ; 08 
- D 0 - I - 0x035861 0D:9851: F1        .byte $F1, $B4,      $F0   ; 09 
- D 0 - I - 0x035864 0D:9854: F1        .byte $F1, $A2,      $F8   ; 0A 
- D 0 - I - 0x035867 0D:9857: 11        .byte $11, $A4,      $F8   ; 0B 
- D 0 - I - 0x03586A 0D:985A: 11        .byte $11, $A6,      $00   ; 0C 
- D 0 - I - 0x03586D 0D:985D: 11        .byte $11, $A8,      $08   ; 0D 



off_05_9860_08:
- D 0 - I - 0x035870 0D:9860: 0A        .byte $0A   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035871 0D:9861: F2        .byte $F2, $C0, $03, $FF   ; 01 
- D 0 - I - 0x035875 0D:9865: F3        .byte $F3, $C2,      $07   ; 02 
- D 0 - I - 0x035878 0D:9868: D0        .byte $D0, $80, $02, $F0   ; 03 
- D 0 - I - 0x03587C 0D:986C: D1        .byte $D1, $82,      $F8   ; 04 
- D 0 - I - 0x03587F 0D:986F: D1        .byte $D1, $84,      $00   ; 05 
- D 0 - I - 0x035882 0D:9872: E1        .byte $E1, $94,      $E8   ; 06 
- D 0 - I - 0x035885 0D:9875: F1        .byte $F1, $96,      $F0   ; 07 
- D 0 - I - 0x035888 0D:9878: F1        .byte $F1, $98,      $F8   ; 08 
- D 0 - I - 0x03588B 0D:987B: 11        .byte $11, $F2,      $F8   ; 09 
- D 0 - I - 0x03588E 0D:987E: 11        .byte $11, $F4,      $00   ; 0A 



off_05_9881_09:
- D 0 - I - 0x035891 0D:9881: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035892 0D:9882: F8        .byte $F8, $EC, $02, $F8   ; 01 
- D 0 - I - 0x035896 0D:9886: F9        .byte $F9, $EE,      $00   ; 02 



off_05_9889_0A:
- D 0 - I - 0x035899 0D:9889: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03589A 0D:988A: F8        .byte $F8, $F0, $02, $FC   ; 01 



off_05_988E_0B:
- D 0 - I - 0x03589E 0D:988E: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03589F 0D:988F: F8        .byte $F8, $EE, $42, $F8   ; 01 
- D 0 - I - 0x0358A3 0D:9893: F9        .byte $F9, $EC,      $00   ; 02 



off_05_9896_0C:
off_08_9896_07:
- D 0 - I - 0x0358A6 0D:9896: 0A        .byte $0A   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0358A7 0D:9897: C2        .byte $C2, $80, $01, $F2   ; 01 
- D 0 - I - 0x0358AB 0D:989B: C3        .byte $C3, $82,      $FA   ; 02 
- D 0 - I - 0x0358AE 0D:989E: C3        .byte $C3, $84,      $02   ; 03 
- D 0 - I - 0x0358B1 0D:98A1: E1        .byte $E1, $86,      $F6   ; 04 
- D 0 - I - 0x0358B4 0D:98A4: E1        .byte $E1, $88,      $FE   ; 05 
- D 0 - I - 0x0358B7 0D:98A7: E1        .byte $E1, $8A,      $06   ; 06 
- D 0 - I - 0x0358BA 0D:98AA: 01        .byte $01, $8C,      $FC   ; 07 
- D 0 - I - 0x0358BD 0D:98AD: 01        .byte $01, $8E,      $04   ; 08 
- D 0 - I - 0x0358C0 0D:98B0: BA        .byte $BA, $B4, $02, $FF   ; 09 
- D 0 - I - 0x0358C4 0D:98B4: BB        .byte $BB, $B6,      $07   ; 0A 



off_05_98B7_0D:
off_05_98B7_0F:
- D 0 - I - 0x0358C7 0D:98B7: 0A        .byte $0A   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0358C8 0D:98B8: C0        .byte $C0, $80, $01, $F3   ; 01 
- D 0 - I - 0x0358CC 0D:98BC: C1        .byte $C1, $82,      $FB   ; 02 
- D 0 - I - 0x0358CF 0D:98BF: C1        .byte $C1, $84,      $03   ; 03 
- D 0 - I - 0x0358D2 0D:98C2: E1        .byte $E1, $90,      $F7   ; 04 
- D 0 - I - 0x0358D5 0D:98C5: E1        .byte $E1, $92,      $FF   ; 05 
- D 0 - I - 0x0358D8 0D:98C8: E1        .byte $E1, $94,      $07   ; 06 
- D 0 - I - 0x0358DB 0D:98CB: 01        .byte $01, $96,      $FB   ; 07 
- D 0 - I - 0x0358DE 0D:98CE: 01        .byte $01, $98,      $03   ; 08 
- D 0 - I - 0x0358E1 0D:98D1: BA        .byte $BA, $B4, $02, $00   ; 09 
- D 0 - I - 0x0358E5 0D:98D5: BB        .byte $BB, $B6,      $08   ; 0A 



off_05_98D8_0E:
- D 0 - I - 0x0358E8 0D:98D8: 0B        .byte $0B   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0358E9 0D:98D9: C0        .byte $C0, $80, $01, $F4   ; 01 
- D 0 - I - 0x0358ED 0D:98DD: C1        .byte $C1, $82,      $FC   ; 02 
- D 0 - I - 0x0358F0 0D:98E0: C1        .byte $C1, $84,      $04   ; 03 
- D 0 - I - 0x0358F3 0D:98E3: E1        .byte $E1, $9A,      $F8   ; 04 
- D 0 - I - 0x0358F6 0D:98E6: E1        .byte $E1, $9C,      $00   ; 05 
- D 0 - I - 0x0358F9 0D:98E9: E1        .byte $E1, $9E,      $08   ; 06 
- D 0 - I - 0x0358FC 0D:98EC: 01        .byte $01, $A0,      $F8   ; 07 
- D 0 - I - 0x0358FF 0D:98EF: 01        .byte $01, $A2,      $00   ; 08 
- D 0 - I - 0x035902 0D:98F2: 01        .byte $01, $A4,      $08   ; 09 
- D 0 - I - 0x035905 0D:98F5: B8        .byte $B8, $B4, $02, $00   ; 0A 
- D 0 - I - 0x035909 0D:98F9: B9        .byte $B9, $B6,      $08   ; 0B 



off_05_98FC_10:
- D 0 - I - 0x03590C 0D:98FC: 0B        .byte $0B   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x03590D 0D:98FD: C0        .byte $C0, $A6, $01, $F9   ; 01 
- D 0 - I - 0x035911 0D:9901: C1        .byte $C1, $A8,      $01   ; 02 
- D 0 - I - 0x035914 0D:9904: C1        .byte $C1, $AA,      $09   ; 03 
- D 0 - I - 0x035917 0D:9907: E1        .byte $E1, $AC,      $F8   ; 04 
- D 0 - I - 0x03591A 0D:990A: E1        .byte $E1, $AE,      $00   ; 05 
- D 0 - I - 0x03591D 0D:990D: E1        .byte $E1, $B0,      $08   ; 06 
- D 0 - I - 0x035920 0D:9910: 01        .byte $01, $A0,      $F8   ; 07 
- D 0 - I - 0x035923 0D:9913: 01        .byte $01, $A2,      $00   ; 08 
- D 0 - I - 0x035926 0D:9916: 01        .byte $01, $A4,      $08   ; 09 
- D 0 - I - 0x035929 0D:9919: B0        .byte $B0, $B8, $02, $08   ; 0A 
- D 0 - I - 0x03592D 0D:991D: B1        .byte $B1, $BA,      $10   ; 0B 



off_05_9920_11:
- D 0 - I - 0x035930 0D:9920: 0B        .byte $0B   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035931 0D:9921: C0        .byte $C0, $80, $01, $F2   ; 01 
- D 0 - I - 0x035935 0D:9925: C1        .byte $C1, $82,      $FA   ; 02 
- D 0 - I - 0x035938 0D:9928: C1        .byte $C1, $84,      $02   ; 03 
- D 0 - I - 0x03593B 0D:992B: E1        .byte $E1, $B2,      $F6   ; 04 
- D 0 - I - 0x03593E 0D:992E: E1        .byte $E1, $88,      $FE   ; 05 
- D 0 - I - 0x035941 0D:9931: E1        .byte $E1, $8A,      $06   ; 06 
- D 0 - I - 0x035944 0D:9934: 01        .byte $01, $8C,      $FC   ; 07 
- D 0 - I - 0x035947 0D:9937: 01        .byte $01, $8E,      $04   ; 08 
- D 0 - I - 0x03594A 0D:993A: 00        .byte $00, $B8, $02, $E4   ; 09 
- D 0 - I - 0x03594E 0D:993E: 01        .byte $01, $BA,      $EC   ; 0A 
- D 0 - I - 0x035951 0D:9941: 01        .byte $01, $BE,      $F4   ; 0B 



off_05_9944_12:
- - - - - - 0x035954 0D:9944: 09        .byte $09   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- - - - - - 0x035955 0D:9945: A0        .byte $A0, $C4, $02, $FB   ; 01 
- - - - - - 0x035959 0D:9949: C1        .byte $C1, $C6,      $F3   ; 02 
- - - - - - 0x03595C 0D:994C: C1        .byte $C1, $C8,      $FB   ; 03 
- - - - - - 0x03595F 0D:994F: C1        .byte $C1, $CA,      $03   ; 04 
- - - - - - 0x035962 0D:9952: E1        .byte $E1, $CC,      $F8   ; 05 
- - - - - - 0x035965 0D:9955: E1        .byte $E1, $CE,      $00   ; 06 
- - - - - - 0x035968 0D:9958: 01        .byte $01, $D0,      $F3   ; 07 
- - - - - - 0x03596B 0D:995B: 01        .byte $01, $D2,      $FB   ; 08 
- - - - - - 0x03596E 0D:995E: 01        .byte $01, $D4,      $03   ; 09 



off_05_9961_13:
- D 0 - I - 0x035971 0D:9961: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035972 0D:9962: F0        .byte $F0, $51, $01, $F0   ; 01 
- D 0 - I - 0x035976 0D:9966: F1        .byte $F1, $61,      $F8   ; 02 
- D 0 - I - 0x035979 0D:9969: F1        .byte $F1, $53,      $00   ; 03 
- D 0 - I - 0x03597C 0D:996C: F1        .byte $F1, $63,      $08   ; 04 



off_05_996F_14:
- D 0 - I - 0x03597F 0D:996F: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035980 0D:9970: 00        .byte $00, $F4, $01, $FC   ; 01 
- D 0 - I - 0x035984 0D:9974: 18        .byte $18, $F4, $41, $F8   ; 02 



off_05_9978_17:
- D 0 - I - 0x035988 0D:9978: 1B        .byte $1B   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035989 0D:9979: 80        .byte $80, $F0, $01, $FC   ; 01 
- D 0 - I - 0x03598D 0D:997D: 91        .byte $91, $C4,      $CC   ; 02 
- D 0 - I - 0x035990 0D:9980: 91        .byte $91, $C8,      $D4   ; 03 
- D 0 - I - 0x035993 0D:9983: 90        .byte $90, $C4, $C1, $DC   ; 04 
- D 0 - I - 0x035997 0D:9987: A0        .byte $A0, $C6, $41, $E4   ; 05 
- D 0 - I - 0x03599B 0D:998B: A1        .byte $A1, $C8,      $EC   ; 06 
- D 0 - I - 0x03599E 0D:998E: A0        .byte $A0, $C4, $01, $F4   ; 07 
- D 0 - I - 0x0359A2 0D:9992: A0        .byte $A0, $F2, $41, $FC   ; 08 
- D 0 - I - 0x0359A6 0D:9996: B0        .byte $B0, $E0, $01, $D4   ; 09 
- D 0 - I - 0x0359AA 0D:999A: B1        .byte $B1, $D6,      $DC   ; 0A 
- D 0 - I - 0x0359AD 0D:999D: B1        .byte $B1, $C4,      $04   ; 0B 
- D 0 - I - 0x0359B0 0D:99A0: C1        .byte $C1, $D8,      $CC   ; 0C 
- D 0 - I - 0x0359B3 0D:99A3: C1        .byte $C1, $F2,      $FC   ; 0D 
- D 0 - I - 0x0359B6 0D:99A6: D0        .byte $D0, $D8, $41, $D4   ; 0E 
- D 0 - I - 0x0359BA 0D:99AA: E0        .byte $E0, $F2, $01, $F6   ; 0F 
- D 0 - I - 0x0359BE 0D:99AE: E1        .byte $E1, $F0,      $FC   ; 10 
- D 0 - I - 0x0359C1 0D:99B1: E1        .byte $E1, $C8,      $04   ; 11 
- D 0 - I - 0x0359C4 0D:99B4: E1        .byte $E1, $CE,      $0C   ; 12 
- D 0 - I - 0x0359C7 0D:99B7: 01        .byte $01, $F2,      $F2   ; 13 
- D 0 - I - 0x0359CA 0D:99BA: 00        .byte $00, $F2, $C1, $FC   ; 14 
- D 0 - I - 0x0359CE 0D:99BE: 00        .byte $00, $C2, $01, $14   ; 15 
- D 0 - I - 0x0359D2 0D:99C2: 21        .byte $21, $E0,      $E4   ; 16 
- D 0 - I - 0x0359D5 0D:99C5: 21        .byte $21, $F2,      $EC   ; 17 
- D 0 - I - 0x0359D8 0D:99C8: 20        .byte $20, $F0, $C1, $FC   ; 18 
- D 0 - I - 0x0359DC 0D:99CC: 40        .byte $40, $CA, $41, $E4   ; 19 
- D 0 - I - 0x0359E0 0D:99D0: 40        .byte $40, $F2, $01, $FC   ; 1A 
- D 0 - I - 0x0359E4 0D:99D4: 60        .byte $60, $F2, $41, $FC   ; 1B 



off_08_99D8_08:
- D 0 - I - 0x0359E8 0D:99D8: 08        .byte $08   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x0359E9 0D:99D9: C2        .byte $C2, $80, $01, $F2   ; 01 
- D 0 - I - 0x0359ED 0D:99DD: C3        .byte $C3, $82,      $FA   ; 02 
- D 0 - I - 0x0359F0 0D:99E0: C3        .byte $C3, $84,      $02   ; 03 
- D 0 - I - 0x0359F3 0D:99E3: E1        .byte $E1, $86,      $F6   ; 04 
- D 0 - I - 0x0359F6 0D:99E6: E1        .byte $E1, $88,      $FE   ; 05 
- D 0 - I - 0x0359F9 0D:99E9: E1        .byte $E1, $8A,      $06   ; 06 
- D 0 - I - 0x0359FC 0D:99EC: BA        .byte $BA, $B4, $02, $FF   ; 07 
- D 0 - I - 0x035A00 0D:99F0: BB        .byte $BB, $B6,      $07   ; 08 



off_05_99F3_1D:
- D 0 - I - 0x035A03 0D:99F3: 06        .byte $06   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035A04 0D:99F4: E0        .byte $E0, $80, $02, $F8   ; 01 
- D 0 - I - 0x035A08 0D:99F8: E1        .byte $E1, $82,      $00   ; 02 
- D 0 - I - 0x035A0B 0D:99FB: E1        .byte $E1, $84,      $08   ; 03 
- D 0 - I - 0x035A0E 0D:99FE: 01        .byte $01, $86,      $F8   ; 04 
- D 0 - I - 0x035A11 0D:9A01: 01        .byte $01, $88,      $00   ; 05 
- D 0 - I - 0x035A14 0D:9A04: 01        .byte $01, $8A,      $08   ; 06 



off_05_9A07_1E:
- D 0 - I - 0x035A17 0D:9A07: 06        .byte $06   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035A18 0D:9A08: F0        .byte $F0, $8C, $02, $E8   ; 01 
- D 0 - I - 0x035A1C 0D:9A0C: E1        .byte $E1, $8E,      $F0   ; 02 
- D 0 - I - 0x035A1F 0D:9A0F: E1        .byte $E1, $90,      $F8   ; 03 
- D 0 - I - 0x035A22 0D:9A12: E1        .byte $E1, $92,      $00   ; 04 
- D 0 - I - 0x035A25 0D:9A15: 01        .byte $01, $94,      $00   ; 05 
- D 0 - I - 0x035A28 0D:9A18: 01        .byte $01, $96,      $08   ; 06 



off_05_9A1B_1F:
- D 0 - I - 0x035A2B 0D:9A1B: 06        .byte $06   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035A2C 0D:9A1C: E0        .byte $E0, $98, $02, $F0   ; 01 
- D 0 - I - 0x035A30 0D:9A20: E1        .byte $E1, $9A,      $F8   ; 02 
- D 0 - I - 0x035A33 0D:9A23: E1        .byte $E1, $9C,      $00   ; 03 
- D 0 - I - 0x035A36 0D:9A26: 01        .byte $01, $9E,      $F0   ; 04 
- D 0 - I - 0x035A39 0D:9A29: 01        .byte $01, $A0,      $F8   ; 05 
- D 0 - I - 0x035A3C 0D:9A2C: 01        .byte $01, $A2,      $00   ; 06 



off_05_9A2F_20:
- D 0 - I - 0x035A3F 0D:9A2F: 06        .byte $06   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035A40 0D:9A30: D6        .byte $D6, $A4, $02, $F0   ; 01 
- D 0 - I - 0x035A44 0D:9A34: E1        .byte $E1, $A6,      $F8   ; 02 
- D 0 - I - 0x035A47 0D:9A37: E1        .byte $E1, $A8,      $00   ; 03 
- D 0 - I - 0x035A4A 0D:9A3A: 11        .byte $11, $AA,      $F0   ; 04 
- D 0 - I - 0x035A4D 0D:9A3D: 01        .byte $01, $AC,      $F8   ; 05 
- D 0 - I - 0x035A50 0D:9A40: 01        .byte $01, $AE,      $00   ; 06 



off_05_9A43_21:
- D 0 - I - 0x035A53 0D:9A43: 06        .byte $06   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035A54 0D:9A44: F0        .byte $F0, $B0, $02, $F0   ; 01 
- D 0 - I - 0x035A58 0D:9A48: E1        .byte $E1, $B2,      $F8   ; 02 
- D 0 - I - 0x035A5B 0D:9A4B: E1        .byte $E1, $B4,      $00   ; 03 
- D 0 - I - 0x035A5E 0D:9A4E: 01        .byte $01, $B6,      $F8   ; 04 
- D 0 - I - 0x035A61 0D:9A51: 01        .byte $01, $B8,      $00   ; 05 
- D 0 - I - 0x035A64 0D:9A54: F1        .byte $F1, $BA,      $08   ; 06 



off_05_9A57_22:
- D 0 - I - 0x035A67 0D:9A57: 07        .byte $07   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035A68 0D:9A58: E0        .byte $E0, $BC, $02, $F0   ; 01 
- D 0 - I - 0x035A6C 0D:9A5C: E1        .byte $E1, $BE,      $F8   ; 02 
- D 0 - I - 0x035A6F 0D:9A5F: 01        .byte $01, $C0,      $F0   ; 03 
- D 0 - I - 0x035A72 0D:9A62: 01        .byte $01, $C2,      $F8   ; 04 
- D 0 - I - 0x035A75 0D:9A65: F1        .byte $F1, $C4,      $00   ; 05 
- D 0 - I - 0x035A78 0D:9A68: E9        .byte $E9, $C6,      $08   ; 06 
- D 0 - I - 0x035A7B 0D:9A6B: E1        .byte $E1, $C8,      $10   ; 07 



off_05_9A6E_23:
- - - - - - 0x035A7E 0D:9A6E: 06        .byte $06   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- - - - - - 0x035A7F 0D:9A6F: E0        .byte $E0, $9E, $82, $F0   ; 01 
- - - - - - 0x035A83 0D:9A73: E1        .byte $E1, $A0,      $F8   ; 02 
- - - - - - 0x035A86 0D:9A76: E1        .byte $E1, $A2,      $00   ; 03 
- - - - - - 0x035A89 0D:9A79: 01        .byte $01, $98,      $F0   ; 04 
- - - - - - 0x035A8C 0D:9A7C: 01        .byte $01, $9A,      $F8   ; 05 
- - - - - - 0x035A8F 0D:9A7F: 01        .byte $01, $9C,      $00   ; 06 



off_05_9A82_24:
- - - - - - 0x035A92 0D:9A82: 06        .byte $06   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- - - - - - 0x035A93 0D:9A83: D0        .byte $D0, $AA, $82, $F0   ; 01 
- - - - - - 0x035A97 0D:9A87: E1        .byte $E1, $AC,      $F8   ; 02 
- - - - - - 0x035A9A 0D:9A8A: E1        .byte $E1, $AE,      $00   ; 03 
- - - - - - 0x035A9D 0D:9A8D: 0B        .byte $0B, $A4,      $F0   ; 04 
- - - - - - 0x035AA0 0D:9A90: 01        .byte $01, $A6,      $F8   ; 05 
- - - - - - 0x035AA3 0D:9A93: 01        .byte $01, $A8,      $00   ; 06 



off_05_9A96_25:
- D 0 - I - 0x035AA6 0D:9A96: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035AA7 0D:9A97: F0        .byte $F0, $CE, $02, $E8   ; 01 
- D 0 - I - 0x035AAB 0D:9A9B: F1        .byte $F1, $D0,      $F0   ; 02 
- D 0 - I - 0x035AAE 0D:9A9E: F1        .byte $F1, $D2,      $F8   ; 03 
- D 0 - I - 0x035AB1 0D:9AA1: F1        .byte $F1, $D4,      $00   ; 04 
- D 0 - I - 0x035AB4 0D:9AA4: F1        .byte $F1, $D6,      $08   ; 05 



off_05_9AA7_26:
- D 0 - I - 0x035AB7 0D:9AA7: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035AB8 0D:9AA8: F0        .byte $F0, $D8, $81, $F8   ; 01 
- D 0 - I - 0x035ABC 0D:9AAC: F1        .byte $F1, $DA,      $00   ; 02 



off_05_9AAF_27:
- D 0 - I - 0x035ABF 0D:9AAF: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035AC0 0D:9AB0: F0        .byte $F0, $DC, $02, $F8   ; 01 
- D 0 - I - 0x035AC4 0D:9AB4: F1        .byte $F1, $DE,      $00   ; 02 



off_05_9AB7_28:
- D 0 - I - 0x035AC7 0D:9AB7: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035AC8 0D:9AB8: F0        .byte $F0, $DE, $42, $F8   ; 01 
- D 0 - I - 0x035ACC 0D:9ABC: F1        .byte $F1, $DC,      $00   ; 02 



off_05_9ABF_29:
- D 0 - I - 0x035ACF 0D:9ABF: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035AD0 0D:9AC0: F0        .byte $F0, $DE, $C2, $F8   ; 01 
- D 0 - I - 0x035AD4 0D:9AC4: F1        .byte $F1, $DC,      $00   ; 02 



off_05_9AC7_2A:
- D 0 - I - 0x035AD7 0D:9AC7: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035AD8 0D:9AC8: F0        .byte $F0, $DC, $82, $F8   ; 01 
- D 0 - I - 0x035ADC 0D:9ACC: F1        .byte $F1, $DE,      $00   ; 02 



off_05_9ACF_4A:
- D 0 - I - 0x035ADF 0D:9ACF: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035AE0 0D:9AD0: F0        .byte $F0, $F2, $00, $F0   ; 01 
- D 0 - I - 0x035AE4 0D:9AD4: F1        .byte $F1, $F4,      $F8   ; 02 
- D 0 - I - 0x035AE7 0D:9AD7: F1        .byte $F1, $F6,      $00   ; 03 
- D 0 - I - 0x035AEA 0D:9ADA: F1        .byte $F1, $F8,      $08   ; 04 



off_05_9ADD_4B:
- D 0 - I - 0x035AED 0D:9ADD: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035AEE 0D:9ADE: F0        .byte $F0, $E0, $00, $F4   ; 01 
- D 0 - I - 0x035AF2 0D:9AE2: F1        .byte $F1, $E2,      $FC   ; 02 
- D 0 - I - 0x035AF5 0D:9AE5: F1        .byte $F1, $E4,      $04   ; 03 



off_05_9AE8_4C:
- D 0 - I - 0x035AF8 0D:9AE8: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035AF9 0D:9AE9: F0        .byte $F0, $CA, $02, $F8   ; 01 
- D 0 - I - 0x035AFD 0D:9AED: F1        .byte $F1, $CC,      $00   ; 02 



off_05_9AF0_2B:
- D 0 - I - 0x035B00 0D:9AF0: 0C        .byte $0C   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035B01 0D:9AF1: E0        .byte $E0, $82, $02, $F8   ; 01 
- D 0 - I - 0x035B05 0D:9AF5: E1        .byte $E1, $84,      $00   ; 02 
- D 0 - I - 0x035B08 0D:9AF8: E1        .byte $E1, $86,      $08   ; 03 
- D 0 - I - 0x035B0B 0D:9AFB: E1        .byte $E1, $88,      $10   ; 04 
- D 0 - I - 0x035B0E 0D:9AFE: E1        .byte $E1, $8A,      $18   ; 05 
- D 0 - I - 0x035B11 0D:9B01: 01        .byte $01, $8C,      $F8   ; 06 
- D 0 - I - 0x035B14 0D:9B04: 01        .byte $01, $8E,      $00   ; 07 
- D 0 - I - 0x035B17 0D:9B07: 01        .byte $01, $90,      $08   ; 08 
- D 0 - I - 0x035B1A 0D:9B0A: 01        .byte $01, $92,      $10   ; 09 
- D 0 - I - 0x035B1D 0D:9B0D: 01        .byte $01, $E0,      $F0   ; 0A 
- D 0 - I - 0x035B20 0D:9B10: E0        .byte $E0, $8A, $42, $E8   ; 0B 
- D 0 - I - 0x035B24 0D:9B14: E1        .byte $E1, $88,      $F0   ; 0C 



off_05_9B17_2C:
- D 0 - I - 0x035B27 0D:9B17: 08        .byte $08   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035B28 0D:9B18: D0        .byte $D0, $94, $02, $F8   ; 01 
- D 0 - I - 0x035B2C 0D:9B1C: D1        .byte $D1, $96,      $00   ; 02 
- D 0 - I - 0x035B2F 0D:9B1F: F1        .byte $F1, $98,      $F7   ; 03 
- D 0 - I - 0x035B32 0D:9B22: F1        .byte $F1, $9A,      $FF   ; 04 
- D 0 - I - 0x035B35 0D:9B25: F1        .byte $F1, $9C,      $07   ; 05 
- D 0 - I - 0x035B38 0D:9B28: 11        .byte $11, $9E,      $F6   ; 06 
- D 0 - I - 0x035B3B 0D:9B2B: 11        .byte $11, $A0,      $FE   ; 07 
- D 0 - I - 0x035B3E 0D:9B2E: 11        .byte $11, $A2,      $06   ; 08 



off_05_9B31_2D:
- D 0 - I - 0x035B41 0D:9B31: 07        .byte $07   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035B42 0D:9B32: E0        .byte $E0, $A4, $02, $F0   ; 01 
- D 0 - I - 0x035B46 0D:9B36: E1        .byte $E1, $A6,      $F8   ; 02 
- D 0 - I - 0x035B49 0D:9B39: E1        .byte $E1, $A8,      $00   ; 03 
- D 0 - I - 0x035B4C 0D:9B3C: E1        .byte $E1, $AA,      $08   ; 04 
- D 0 - I - 0x035B4F 0D:9B3F: E1        .byte $E1, $AC,      $10   ; 05 
- D 0 - I - 0x035B52 0D:9B42: 01        .byte $01, $AE,      $F8   ; 06 
- D 0 - I - 0x035B55 0D:9B45: 01        .byte $01, $B0,      $00   ; 07 



off_05_9B48_2E:
- D 0 - I - 0x035B58 0D:9B48: 07        .byte $07   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035B59 0D:9B49: E0        .byte $E0, $B2, $02, $F9   ; 01 
- D 0 - I - 0x035B5D 0D:9B4D: E1        .byte $E1, $B4,      $FF   ; 02 
- D 0 - I - 0x035B60 0D:9B50: 01        .byte $01, $B6,      $F8   ; 03 
- D 0 - I - 0x035B63 0D:9B53: 01        .byte $01, $B8,      $00   ; 04 
- D 0 - I - 0x035B66 0D:9B56: 01        .byte $01, $BA,      $08   ; 05 
- D 0 - I - 0x035B69 0D:9B59: 21        .byte $21, $BC,      $FA   ; 06 
- D 0 - I - 0x035B6C 0D:9B5C: 21        .byte $21, $BE,      $02   ; 07 



off_05_9B5F_2F:
- D 0 - I - 0x035B6F 0D:9B5F: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035B70 0D:9B60: F0        .byte $F0, $C0, $02, $F8   ; 01 
- D 0 - I - 0x035B74 0D:9B64: F1        .byte $F1, $C2,      $00   ; 02 
- D 0 - I - 0x035B77 0D:9B67: F1        .byte $F1, $C4,      $08   ; 03 



off_05_9B6A_30:
- D 0 - I - 0x035B7A 0D:9B6A: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035B7B 0D:9B6B: F0        .byte $F0, $C6, $02, $FB   ; 01 
- D 0 - I - 0x035B7F 0D:9B6F: F1        .byte $F1, $C8,      $03   ; 02 
- D 0 - I - 0x035B82 0D:9B72: 01        .byte $01, $CA,      $FB   ; 03 


; bzk garbage
- - - - - - 0x035B85 0D:9B75: 01        .byte $01   ; 
- - - - - - 0x035B86 0D:9B76: CC        .byte $CC   ; 
- - - - - - 0x035B87 0D:9B77: 03        .byte $03   ; 



off_05_9B78_31:
- D 0 - I - 0x035B88 0D:9B78: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035B89 0D:9B79: F0        .byte $F0, $CE, $02, $F8   ; 01 
- D 0 - I - 0x035B8D 0D:9B7D: F1        .byte $F1, $D0,      $00   ; 02 



off_05_9B80_32:
- D 0 - I - 0x035B90 0D:9B80: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035B91 0D:9B81: F8        .byte $F8, $D2, $02, $F8   ; 01 
- D 0 - I - 0x035B95 0D:9B85: F9        .byte $F9, $D4,      $00   ; 02 



off_05_9B88_33:
- D 0 - I - 0x035B98 0D:9B88: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035B99 0D:9B89: E0        .byte $E0, $D6, $02, $F8   ; 01 
- D 0 - I - 0x035B9D 0D:9B8D: E1        .byte $E1, $D8,      $00   ; 02 
- D 0 - I - 0x035BA0 0D:9B90: 01        .byte $01, $DA,      $F8   ; 03 
- D 0 - I - 0x035BA3 0D:9B93: 01        .byte $01, $DC,      $00   ; 04 



off_05_9B96_34:
- D 0 - I - 0x035BA6 0D:9B96: 0C        .byte $0C   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035BA7 0D:9B97: E0        .byte $E0, $8C, $82, $F8   ; 01 
- D 0 - I - 0x035BAB 0D:9B9B: E1        .byte $E1, $8E,      $00   ; 02 
- D 0 - I - 0x035BAE 0D:9B9E: E1        .byte $E1, $90,      $08   ; 03 
- D 0 - I - 0x035BB1 0D:9BA1: E1        .byte $E1, $92,      $10   ; 04 
- D 0 - I - 0x035BB4 0D:9BA4: E1        .byte $E1, $E0,      $F0   ; 05 
- D 0 - I - 0x035BB7 0D:9BA7: 01        .byte $01, $82,      $F8   ; 06 
- D 0 - I - 0x035BBA 0D:9BAA: 01        .byte $01, $84,      $00   ; 07 
- D 0 - I - 0x035BBD 0D:9BAD: 01        .byte $01, $86,      $08   ; 08 
- D 0 - I - 0x035BC0 0D:9BB0: 01        .byte $01, $88,      $10   ; 09 
- D 0 - I - 0x035BC3 0D:9BB3: 01        .byte $01, $8A,      $18   ; 0A 
- D 0 - I - 0x035BC6 0D:9BB6: 00        .byte $00, $8A, $C2, $E8   ; 0B 
- D 0 - I - 0x035BCA 0D:9BBA: 01        .byte $01, $88,      $F0   ; 0C 



off_05_9BBD_35:
- D 0 - I - 0x035BCD 0D:9BBD: 08        .byte $08   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035BCE 0D:9BBE: D0        .byte $D0, $9E, $82, $F6   ; 01 
- D 0 - I - 0x035BD2 0D:9BC2: D1        .byte $D1, $A0,      $FE   ; 02 
- D 0 - I - 0x035BD5 0D:9BC5: D1        .byte $D1, $A2,      $06   ; 03 
- D 0 - I - 0x035BD8 0D:9BC8: F1        .byte $F1, $98,      $F7   ; 04 
- D 0 - I - 0x035BDB 0D:9BCB: F1        .byte $F1, $9A,      $FF   ; 05 
- D 0 - I - 0x035BDE 0D:9BCE: F1        .byte $F1, $9C,      $07   ; 06 
- D 0 - I - 0x035BE1 0D:9BD1: 11        .byte $11, $94,      $F8   ; 07 
- D 0 - I - 0x035BE4 0D:9BD4: 11        .byte $11, $96,      $00   ; 08 



off_05_9BD7_36:
- D 0 - I - 0x035BE7 0D:9BD7: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035BE8 0D:9BD8: 00        .byte $00, $80, $03, $00   ; 01 



off_05_9BDC_37:
- D 0 - I - 0x035BEC 0D:9BDC: 08        .byte $08   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035BED 0D:9BDD: E0        .byte $E0, $82, $01, $F4   ; 01 
- D 0 - I - 0x035BF1 0D:9BE1: E1        .byte $E1, $84,      $FC   ; 02 
- D 0 - I - 0x035BF4 0D:9BE4: E1        .byte $E1, $86,      $04   ; 03 
- D 0 - I - 0x035BF7 0D:9BE7: E1        .byte $E1, $88,      $0C   ; 04 
- D 0 - I - 0x035BFA 0D:9BEA: 01        .byte $01, $8A,      $F4   ; 05 
- D 0 - I - 0x035BFD 0D:9BED: 01        .byte $01, $8C,      $FC   ; 06 
- D 0 - I - 0x035C00 0D:9BF0: 01        .byte $01, $8E,      $04   ; 07 
- D 0 - I - 0x035C03 0D:9BF3: 01        .byte $01, $90,      $0C   ; 08 



off_05_9BF6_38:
- D 0 - I - 0x035C06 0D:9BF6: 0A        .byte $0A   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035C07 0D:9BF7: D4        .byte $D4, $92, $01, $F4   ; 01 
- D 0 - I - 0x035C0B 0D:9BFB: D1        .byte $D1, $94,      $FC   ; 02 
- D 0 - I - 0x035C0E 0D:9BFE: D1        .byte $D1, $96,      $04   ; 03 
- D 0 - I - 0x035C11 0D:9C01: D5        .byte $D5, $98,      $0C   ; 04 
- D 0 - I - 0x035C14 0D:9C04: E0        .byte $E0, $BE, $03, $F8   ; 05 
- D 0 - I - 0x035C18 0D:9C08: E1        .byte $E1, $C0,      $00   ; 06 
- D 0 - I - 0x035C1B 0D:9C0B: E1        .byte $E1, $C2,      $08   ; 07 
- D 0 - I - 0x035C1E 0D:9C0E: 01        .byte $01, $C4,      $F8   ; 08 
- D 0 - I - 0x035C21 0D:9C11: 01        .byte $01, $C6,      $00   ; 09 
- D 0 - I - 0x035C24 0D:9C14: 01        .byte $01, $C8,      $08   ; 0A 



off_05_9C17_39:
- D 0 - I - 0x035C27 0D:9C17: 0E        .byte $0E   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035C28 0D:9C18: B0        .byte $B0, $B6, $03, $FF   ; 01 
- D 0 - I - 0x035C2C 0D:9C1C: A0        .byte $A0, $9A, $01, $F4   ; 02 
- D 0 - I - 0x035C30 0D:9C20: A1        .byte $A1, $9C,      $FC   ; 03 
- D 0 - I - 0x035C33 0D:9C23: A1        .byte $A1, $9E,      $04   ; 04 
- D 0 - I - 0x035C36 0D:9C26: A1        .byte $A1, $A0,      $0C   ; 05 
- D 0 - I - 0x035C39 0D:9C29: C0        .byte $C0, $B8, $03, $F8   ; 06 
- D 0 - I - 0x035C3D 0D:9C2D: C1        .byte $C1, $BA,      $00   ; 07 
- D 0 - I - 0x035C40 0D:9C30: C1        .byte $C1, $BC,      $08   ; 08 
- D 0 - I - 0x035C43 0D:9C33: E1        .byte $E1, $BE,      $F8   ; 09 
- D 0 - I - 0x035C46 0D:9C36: E1        .byte $E1, $C0,      $00   ; 0A 
- D 0 - I - 0x035C49 0D:9C39: E1        .byte $E1, $C2,      $08   ; 0B 
- D 0 - I - 0x035C4C 0D:9C3C: 01        .byte $01, $C4,      $F8   ; 0C 
- D 0 - I - 0x035C4F 0D:9C3F: 01        .byte $01, $C6,      $00   ; 0D 
- D 0 - I - 0x035C52 0D:9C42: 01        .byte $01, $C8,      $08   ; 0E 



off_05_9C45_3A:
- D 0 - I - 0x035C55 0D:9C45: 0A        .byte $0A   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035C56 0D:9C46: B0        .byte $B0, $B6, $01, $FF   ; 01 
- D 0 - I - 0x035C5A 0D:9C4A: C0        .byte $C0, $B8, $03, $F8   ; 02 
- D 0 - I - 0x035C5E 0D:9C4E: C1        .byte $C1, $BA,      $00   ; 03 
- D 0 - I - 0x035C61 0D:9C51: C1        .byte $C1, $BC,      $08   ; 04 
- D 0 - I - 0x035C64 0D:9C54: E1        .byte $E1, $BE,      $F8   ; 05 
- D 0 - I - 0x035C67 0D:9C57: E1        .byte $E1, $C0,      $00   ; 06 
- D 0 - I - 0x035C6A 0D:9C5A: E1        .byte $E1, $C2,      $08   ; 07 
- D 0 - I - 0x035C6D 0D:9C5D: 01        .byte $01, $C4,      $F8   ; 08 
- D 0 - I - 0x035C70 0D:9C60: 01        .byte $01, $C6,      $00   ; 09 
- D 0 - I - 0x035C73 0D:9C63: 01        .byte $01, $C8,      $08   ; 0A 



off_05_9C66_3B:
- D 0 - I - 0x035C76 0D:9C66: 0A        .byte $0A   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035C77 0D:9C67: B0        .byte $B0, $B6, $01, $FF   ; 01 
- D 0 - I - 0x035C7B 0D:9C6B: C0        .byte $C0, $CA, $03, $F8   ; 02 
- D 0 - I - 0x035C7F 0D:9C6F: C1        .byte $C1, $BA,      $00   ; 03 
- D 0 - I - 0x035C82 0D:9C72: C1        .byte $C1, $BC,      $08   ; 04 
- D 0 - I - 0x035C85 0D:9C75: E1        .byte $E1, $CC,      $F8   ; 05 
- D 0 - I - 0x035C88 0D:9C78: E1        .byte $E1, $CE,      $00   ; 06 
- D 0 - I - 0x035C8B 0D:9C7B: E1        .byte $E1, $C2,      $08   ; 07 
- D 0 - I - 0x035C8E 0D:9C7E: 01        .byte $01, $D0,      $F8   ; 08 
- D 0 - I - 0x035C91 0D:9C81: 01        .byte $01, $D2,      $00   ; 09 
- D 0 - I - 0x035C94 0D:9C84: 01        .byte $01, $C8,      $08   ; 0A 



off_05_9C87_3C:
- D 0 - I - 0x035C97 0D:9C87: 0D        .byte $0D   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035C98 0D:9C88: B0        .byte $B0, $B6, $01, $FF   ; 01 
- D 0 - I - 0x035C9C 0D:9C8C: C0        .byte $C0, $D4, $03, $F8   ; 02 
- D 0 - I - 0x035CA0 0D:9C90: C1        .byte $C1, $D6,      $00   ; 03 
- D 0 - I - 0x035CA3 0D:9C93: C1        .byte $C1, $D8,      $08   ; 04 
- D 0 - I - 0x035CA6 0D:9C96: C1        .byte $C1, $DA,      $10   ; 05 
- D 0 - I - 0x035CA9 0D:9C99: E1        .byte $E1, $CC,      $F8   ; 06 
- D 0 - I - 0x035CAC 0D:9C9C: E1        .byte $E1, $EA,      $00   ; 07 
- D 0 - I - 0x035CAF 0D:9C9F: E1        .byte $E1, $EA,      $08   ; 08 
- D 0 - I - 0x035CB2 0D:9CA2: E1        .byte $E1, $DC,      $10   ; 09 
- D 0 - I - 0x035CB5 0D:9CA5: 01        .byte $01, $D0,      $F8   ; 0A 
- D 0 - I - 0x035CB8 0D:9CA8: 01        .byte $01, $EA,      $00   ; 0B 
- D 0 - I - 0x035CBB 0D:9CAB: 01        .byte $01, $EA,      $08   ; 0C 
- D 0 - I - 0x035CBE 0D:9CAE: 01        .byte $01, $DE,      $10   ; 0D 



off_05_9CB1_3D:
- D 0 - I - 0x035CC1 0D:9CB1: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035CC2 0D:9CB2: F0        .byte $F0, $A2, $03, $F4   ; 01 
- D 0 - I - 0x035CC6 0D:9CB6: F1        .byte $F1, $A4,      $FC   ; 02 
- D 0 - I - 0x035CC9 0D:9CB9: F0        .byte $F0, $A2, $43, $04   ; 03 



off_05_9CBD_3E:
- D 0 - I - 0x035CCD 0D:9CBD: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035CCE 0D:9CBE: F0        .byte $F0, $A6, $03, $F8   ; 01 
- D 0 - I - 0x035CD2 0D:9CC2: F0        .byte $F0, $A6, $43, $00   ; 02 



off_05_9CC6_3F:
- D 0 - I - 0x035CD6 0D:9CC6: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035CD7 0D:9CC7: F0        .byte $F0, $A8, $03, $F8   ; 01 
- D 0 - I - 0x035CDB 0D:9CCB: F1        .byte $F1, $AA,      $00   ; 02 



off_05_9CCE_40:
- D 0 - I - 0x035CDE 0D:9CCE: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035CDF 0D:9CCF: F0        .byte $F0, $AC, $03, $F8   ; 01 
- D 0 - I - 0x035CE3 0D:9CD3: F1        .byte $F1, $AE,      $00   ; 02 



off_05_9CD6_41:
- - - - - - 0x035CE6 0D:9CD6: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- - - - - - 0x035CE7 0D:9CD7: F0        .byte $F0, $AC, $83, $F8   ; 01 
- - - - - - 0x035CEB 0D:9CDB: F1        .byte $F1, $AE,      $00   ; 02 



off_05_9CDE_42:
- D 0 - I - 0x035CEE 0D:9CDE: 09        .byte $09   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035CEF 0D:9CDF: C6        .byte $C6, $B8, $03, $F8   ; 01 
- D 0 - I - 0x035CF3 0D:9CE3: C7        .byte $C7, $BA,      $00   ; 02 
- D 0 - I - 0x035CF6 0D:9CE6: C7        .byte $C7, $BC,      $08   ; 03 
- D 0 - I - 0x035CF9 0D:9CE9: E1        .byte $E1, $B8,      $F8   ; 04 
- D 0 - I - 0x035CFC 0D:9CEC: E1        .byte $E1, $C0,      $00   ; 05 
- D 0 - I - 0x035CFF 0D:9CEF: E1        .byte $E1, $C2,      $08   ; 06 
- D 0 - I - 0x035D02 0D:9CF2: 01        .byte $01, $C4,      $F8   ; 07 
- D 0 - I - 0x035D05 0D:9CF5: 01        .byte $01, $C6,      $00   ; 08 
- D 0 - I - 0x035D08 0D:9CF8: 01        .byte $01, $C8,      $08   ; 09 



off_05_9CFB_43:
- D 0 - I - 0x035D0B 0D:9CFB: 08        .byte $08   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035D0C 0D:9CFC: 00        .byte $00, $E2, $03, $F0   ; 01 
- D 0 - I - 0x035D10 0D:9D00: 01        .byte $01, $EA,      $F8   ; 02 
- D 0 - I - 0x035D13 0D:9D03: 01        .byte $01, $E4,      $00   ; 03 
- D 0 - I - 0x035D16 0D:9D06: 01        .byte $01, $E6,      $08   ; 04 
- D 0 - I - 0x035D19 0D:9D09: 01        .byte $01, $E8,      $10   ; 05 
- D 0 - I - 0x035D1C 0D:9D0C: E7        .byte $E7, $B8,      $F8   ; 06 
- D 0 - I - 0x035D1F 0D:9D0F: E7        .byte $E7, $BA,      $00   ; 07 
- D 0 - I - 0x035D22 0D:9D12: E7        .byte $E7, $BC,      $08   ; 08 



off_05_9D15_44:
- D 0 - I - 0x035D25 0D:9D15: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035D26 0D:9D16: 00        .byte $00, $EC, $03, $F0   ; 01 
- D 0 - I - 0x035D2A 0D:9D1A: 01        .byte $01, $EE,      $F8   ; 02 
- D 0 - I - 0x035D2D 0D:9D1D: 01        .byte $01, $F0,      $00   ; 03 
- D 0 - I - 0x035D30 0D:9D20: 01        .byte $01, $F2,      $08   ; 04 
- D 0 - I - 0x035D33 0D:9D23: 01        .byte $01, $F4,      $10   ; 05 



off_05_9D26_45:
- D 0 - I - 0x035D36 0D:9D26: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035D37 0D:9D27: 00        .byte $00, $EC, $01, $F0   ; 01 
- D 0 - I - 0x035D3B 0D:9D2B: 01        .byte $01, $EE,      $F8   ; 02 
- D 0 - I - 0x035D3E 0D:9D2E: 01        .byte $01, $F0,      $00   ; 03 
- D 0 - I - 0x035D41 0D:9D31: 01        .byte $01, $F2,      $08   ; 04 
- D 0 - I - 0x035D44 0D:9D34: 01        .byte $01, $F4,      $10   ; 05 



off_05_9D37_46:
- D 0 - I - 0x035D47 0D:9D37: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035D48 0D:9D38: 00        .byte $00, $F6, $02, $F4   ; 01 
- D 0 - I - 0x035D4C 0D:9D3C: 01        .byte $01, $F8,      $FC   ; 02 
- D 0 - I - 0x035D4F 0D:9D3F: 01        .byte $01, $FA,      $04   ; 03 
- D 0 - I - 0x035D52 0D:9D42: 01        .byte $01, $FC,      $0C   ; 04 



off_05_9D45_47:
- D 0 - I - 0x035D55 0D:9D45: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035D56 0D:9D46: 00        .byte $00, $F6, $01, $F4   ; 01 
- D 0 - I - 0x035D5A 0D:9D4A: 01        .byte $01, $F8,      $FC   ; 02 
- D 0 - I - 0x035D5D 0D:9D4D: 01        .byte $01, $FA,      $04   ; 03 
- D 0 - I - 0x035D60 0D:9D50: 01        .byte $01, $FC,      $0C   ; 04 



off_05_9D53_48:
- D 0 - I - 0x035D63 0D:9D53: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035D64 0D:9D54: E0        .byte $E0, $57, $01, $F8   ; 01 
- D 0 - I - 0x035D68 0D:9D58: E1        .byte $E1, $59,      $00   ; 02 
- D 0 - I - 0x035D6B 0D:9D5B: 01        .byte $01, $69,      $F8   ; 03 
- D 0 - I - 0x035D6E 0D:9D5E: 01        .byte $01, $6B,      $00   ; 04 



off_05_9D61_49:
- D 0 - I - 0x035D71 0D:9D61: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035D72 0D:9D62: E0        .byte $E0, $57, $03, $F8   ; 01 
- D 0 - I - 0x035D76 0D:9D66: E1        .byte $E1, $59,      $00   ; 02 
- D 0 - I - 0x035D79 0D:9D69: 01        .byte $01, $69,      $F8   ; 03 
- D 0 - I - 0x035D7C 0D:9D6C: 01        .byte $01, $6B,      $00   ; 04 



off_05_9D6F_4D:
- D 0 - I - 0x035D7F 0D:9D6F: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035D80 0D:9D70: E0        .byte $E0, $D4, $02, $F7   ; 01 
- D 0 - I - 0x035D84 0D:9D74: E1        .byte $E1, $D6,      $FF   ; 02 
- D 0 - I - 0x035D87 0D:9D77: 01        .byte $01, $D8,      $F9   ; 03 
- D 0 - I - 0x035D8A 0D:9D7A: 01        .byte $01, $DA,      $01   ; 04 



off_05_9D7D_4E:
- D 0 - I - 0x035D8D 0D:9D7D: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035D8E 0D:9D7E: EA        .byte $EA, $C0, $02, $F4   ; 01 
- D 0 - I - 0x035D92 0D:9D82: EF        .byte $EF, $C2,      $FC   ; 02 
- D 0 - I - 0x035D95 0D:9D85: F1        .byte $F1, $C4,      $04   ; 03 



off_05_9D88_4F:
- D 0 - I - 0x035D98 0D:9D88: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035D99 0D:9D89: F2        .byte $F2, $C6, $02, $F4   ; 01 
- D 0 - I - 0x035D9D 0D:9D8D: F1        .byte $F1, $C8,      $FC   ; 02 
- D 0 - I - 0x035DA0 0D:9D90: EF        .byte $EF, $CA,      $04   ; 03 



off_05_9D93_50:
- D 0 - I - 0x035DA3 0D:9D93: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035DA4 0D:9D94: E0        .byte $E0, $CE, $02, $FC   ; 01 
- D 0 - I - 0x035DA8 0D:9D98: E1        .byte $E1, $D0,      $04   ; 02 
- D 0 - I - 0x035DAB 0D:9D9B: F1        .byte $F1, $CC,      $F4   ; 03 
- D 0 - I - 0x035DAE 0D:9D9E: 01        .byte $01, $D2,      $FC   ; 04 



off_05_9DA1_51:
- D 0 - I - 0x035DB1 0D:9DA1: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035DB2 0D:9DA2: E0        .byte $E0, $DA, $C2, $F7   ; 01 
- D 0 - I - 0x035DB6 0D:9DA6: E1        .byte $E1, $D8,      $FF   ; 02 
- D 0 - I - 0x035DB9 0D:9DA9: 01        .byte $01, $D6,      $F9   ; 03 
- D 0 - I - 0x035DBC 0D:9DAC: 01        .byte $01, $D4,      $01   ; 04 



off_05_9DAF_52:
- D 0 - I - 0x035DBF 0D:9DAF: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035DC0 0D:9DB0: F0        .byte $F0, $E2, $02, $F8   ; 01 
- D 0 - I - 0x035DC4 0D:9DB4: F1        .byte $F1, $E4,      $00   ; 02 



off_05_9DB7_53:
- D 0 - I - 0x035DC7 0D:9DB7: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035DC8 0D:9DB8: F0        .byte $F0, $DE, $02, $F8   ; 01 
- D 0 - I - 0x035DCC 0D:9DBC: F1        .byte $F1, $E0,      $00   ; 02 



off_05_9DBF_54:
- D 0 - I - 0x035DCF 0D:9DBF: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035DD0 0D:9DC0: F0        .byte $F0, $DC, $02, $FC   ; 01 



off_05_9DC4_55:
- D 0 - I - 0x035DD4 0D:9DC4: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035DD5 0D:9DC5: F0        .byte $F0, $E0, $42, $F8   ; 01 
- D 0 - I - 0x035DD9 0D:9DC9: F1        .byte $F1, $DE,      $00   ; 02 



off_05_9DCC_56:
- D 0 - I - 0x035DDC 0D:9DCC: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035DDD 0D:9DCD: F0        .byte $F0, $E4, $42, $F8   ; 01 
- D 0 - I - 0x035DE1 0D:9DD1: F1        .byte $F1, $E2,      $00   ; 02 



off_05_9DD4_57:
- D 0 - I - 0x035DE4 0D:9DD4: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035DE5 0D:9DD5: F0        .byte $F0, $EA, $02, $FC   ; 01 



off_05_9DD9_58:
- D 0 - I - 0x035DE9 0D:9DD9: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035DEA 0D:9DDA: F0        .byte $F0, $E8, $02, $FC   ; 01 



off_05_9DDE_59:
- D 0 - I - 0x035DEE 0D:9DDE: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035DEF 0D:9DDF: F0        .byte $F0, $E6, $02, $FC   ; 01 



off_05_9DE3_5A:
- D 0 - I - 0x035DF3 0D:9DE3: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035DF4 0D:9DE4: F0        .byte $F0, $E8, $82, $FC   ; 01 



off_05_9DE8_5B:
- D 0 - I - 0x035DF8 0D:9DE8: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035DF9 0D:9DE9: F0        .byte $F0, $EA, $82, $FC   ; 01 



off_05_9DED_5C:
- D 0 - I - 0x035DFD 0D:9DED: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035DFE 0D:9DEE: 00        .byte $00, $B6, $01, $FC   ; 01 



off_05_9DF2_5D:
- D 0 - I - 0x035E02 0D:9DF2: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035E03 0D:9DF3: 00        .byte $00, $B8, $01, $F8   ; 01 
- D 0 - I - 0x035E07 0D:9DF7: 00        .byte $00, $B8, $41, $00   ; 02 



off_05_9DFB_5E:
- D 0 - I - 0x035E0B 0D:9DFB: 08        .byte $08   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035E0C 0D:9DFC: C0        .byte $C0, $BA, $01, $F8   ; 01 
- D 0 - I - 0x035E10 0D:9E00: C0        .byte $C0, $EE, $41, $00   ; 02 
- D 0 - I - 0x035E14 0D:9E04: E0        .byte $E0, $BC, $01, $F8   ; 03 
- D 0 - I - 0x035E18 0D:9E08: E0        .byte $E0, $BC, $41, $00   ; 04 
- D 0 - I - 0x035E1C 0D:9E0C: 00        .byte $00, $BE, $01, $F0   ; 05 
- D 0 - I - 0x035E20 0D:9E10: 01        .byte $01, $EC,      $F8   ; 06 
- D 0 - I - 0x035E23 0D:9E13: 00        .byte $00, $EC, $41, $00   ; 07 
- D 0 - I - 0x035E27 0D:9E17: 01        .byte $01, $BE,      $08   ; 08 



off_05_9E1A_5F:
- D 0 - I - 0x035E2A 0D:9E1A: 06        .byte $06   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035E2B 0D:9E1B: E0        .byte $E0, $EE, $01, $F8   ; 01 
- D 0 - I - 0x035E2F 0D:9E1F: E0        .byte $E0, $BA, $41, $00   ; 02 
- D 0 - I - 0x035E33 0D:9E23: 00        .byte $00, $F0, $01, $F0   ; 03 
- D 0 - I - 0x035E37 0D:9E27: 01        .byte $01, $F2,      $F8   ; 04 
- D 0 - I - 0x035E3A 0D:9E2A: 00        .byte $00, $F2, $41, $00   ; 05 
- D 0 - I - 0x035E3E 0D:9E2E: 01        .byte $01, $F0,      $08   ; 06 



off_05_9E31_60:
- D 0 - I - 0x035E41 0D:9E31: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035E42 0D:9E32: 00        .byte $00, $F4, $01, $F0   ; 01 
- D 0 - I - 0x035E46 0D:9E36: 01        .byte $01, $F6,      $F8   ; 02 
- D 0 - I - 0x035E49 0D:9E39: 00        .byte $00, $F6, $41, $00   ; 03 
- D 0 - I - 0x035E4D 0D:9E3D: 01        .byte $01, $F4,      $08   ; 04 



off_05_9E40_61:
- D 0 - I - 0x035E50 0D:9E40: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035E51 0D:9E41: 00        .byte $00, $F8, $01, $F0   ; 01 
- D 0 - I - 0x035E55 0D:9E45: 01        .byte $01, $F8,      $F8   ; 02 
- D 0 - I - 0x035E58 0D:9E48: 00        .byte $00, $F8, $41, $00   ; 03 
- D 0 - I - 0x035E5C 0D:9E4C: 01        .byte $01, $F8,      $08   ; 04 



off_05_9E4F_62:
- D 0 - I - 0x035E5F 0D:9E4F: 0C        .byte $0C   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035E60 0D:9E50: C2        .byte $C2, $80, $02, $EF   ; 01 
- D 0 - I - 0x035E64 0D:9E54: C1        .byte $C1, $82,      $F7   ; 02 
- D 0 - I - 0x035E67 0D:9E57: C1        .byte $C1, $84,      $00   ; 03 
- D 0 - I - 0x035E6A 0D:9E5A: E1        .byte $E1, $86,      $F2   ; 04 
- D 0 - I - 0x035E6D 0D:9E5D: E1        .byte $E1, $88,      $FA   ; 05 
- D 0 - I - 0x035E70 0D:9E60: E1        .byte $E1, $8A,      $02   ; 06 
- D 0 - I - 0x035E73 0D:9E63: 01        .byte $01, $8C,      $F0   ; 07 
- D 0 - I - 0x035E76 0D:9E66: 01        .byte $01, $8E,      $F8   ; 08 
- D 0 - I - 0x035E79 0D:9E69: 01        .byte $01, $90,      $00   ; 09 
- D 0 - I - 0x035E7C 0D:9E6C: 21        .byte $21, $92,      $F3   ; 0A 
- D 0 - I - 0x035E7F 0D:9E6F: 21        .byte $21, $94,      $FB   ; 0B 
- D 0 - I - 0x035E82 0D:9E72: 21        .byte $21, $96,      $03   ; 0C 



off_05_9E75_63:
off_05_9E75_65:
- D 0 - I - 0x035E85 0D:9E75: 0A        .byte $0A   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035E86 0D:9E76: C0        .byte $C0, $80, $02, $F0   ; 01 
- D 0 - I - 0x035E8A 0D:9E7A: C1        .byte $C1, $98,      $F8   ; 02 
- D 0 - I - 0x035E8D 0D:9E7D: C1        .byte $C1, $9A,      $00   ; 03 
- D 0 - I - 0x035E90 0D:9E80: E1        .byte $E1, $9C,      $F0   ; 04 
- D 0 - I - 0x035E93 0D:9E83: E1        .byte $E1, $9E,      $F8   ; 05 
- D 0 - I - 0x035E96 0D:9E86: E1        .byte $E1, $A0,      $00   ; 06 
- D 0 - I - 0x035E99 0D:9E89: 01        .byte $01, $A2,      $F6   ; 07 
- D 0 - I - 0x035E9C 0D:9E8C: 01        .byte $01, $A4,      $FE   ; 08 
- D 0 - I - 0x035E9F 0D:9E8F: 21        .byte $21, $A6,      $F8   ; 09 
- D 0 - I - 0x035EA2 0D:9E92: 21        .byte $21, $A8,      $00   ; 0A 



off_05_9E95_64:
- D 0 - I - 0x035EA5 0D:9E95: 0C        .byte $0C   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035EA6 0D:9E96: C2        .byte $C2, $80, $02, $F1   ; 01 
- D 0 - I - 0x035EAA 0D:9E9A: C1        .byte $C1, $AA,      $F9   ; 02 
- D 0 - I - 0x035EAD 0D:9E9D: C1        .byte $C1, $AC,      $01   ; 03 
- D 0 - I - 0x035EB0 0D:9EA0: E1        .byte $E1, $AE,      $F3   ; 04 
- D 0 - I - 0x035EB3 0D:9EA3: E1        .byte $E1, $B0,      $FB   ; 05 
- D 0 - I - 0x035EB6 0D:9EA6: E1        .byte $E1, $B2,      $03   ; 06 
- D 0 - I - 0x035EB9 0D:9EA9: 01        .byte $01, $B4,      $F2   ; 07 
- D 0 - I - 0x035EBC 0D:9EAC: 01        .byte $01, $B6,      $FA   ; 08 
- D 0 - I - 0x035EBF 0D:9EAF: 01        .byte $01, $B8,      $02   ; 09 
- D 0 - I - 0x035EC2 0D:9EB2: 21        .byte $21, $BA,      $F3   ; 0A 
- D 0 - I - 0x035EC5 0D:9EB5: 21        .byte $21, $BC,      $FB   ; 0B 
- D 0 - I - 0x035EC8 0D:9EB8: 21        .byte $21, $BE,      $03   ; 0C 



off_05_9EBB_66:
- D 0 - I - 0x035ECB 0D:9EBB: 0C        .byte $0C   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035ECC 0D:9EBC: C2        .byte $C2, $80, $02, $F4   ; 01 
- D 0 - I - 0x035ED0 0D:9EC0: C1        .byte $C1, $82,      $FC   ; 02 
- D 0 - I - 0x035ED3 0D:9EC3: C1        .byte $C1, $84,      $04   ; 03 
- D 0 - I - 0x035ED6 0D:9EC6: E1        .byte $E1, $86,      $F5   ; 04 
- D 0 - I - 0x035ED9 0D:9EC9: E1        .byte $E1, $88,      $FD   ; 05 
- D 0 - I - 0x035EDC 0D:9ECC: E1        .byte $E1, $8A,      $05   ; 06 
- D 0 - I - 0x035EDF 0D:9ECF: 01        .byte $01, $C0,      $F1   ; 07 
- D 0 - I - 0x035EE2 0D:9ED2: 01        .byte $01, $C2,      $F9   ; 08 
- D 0 - I - 0x035EE5 0D:9ED5: 01        .byte $01, $90,      $01   ; 09 
- D 0 - I - 0x035EE8 0D:9ED8: 21        .byte $21, $C4,      $F0   ; 0A 
- D 0 - I - 0x035EEB 0D:9EDB: 21        .byte $21, $C6,      $FB   ; 0B 
- D 0 - I - 0x035EEE 0D:9EDE: 21        .byte $21, $96,      $03   ; 0C 



off_05_9EE1_67:
- D 0 - I - 0x035EF1 0D:9EE1: 0D        .byte $0D   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035EF2 0D:9EE2: C2        .byte $C2, $80, $02, $F6   ; 01 
- D 0 - I - 0x035EF6 0D:9EE6: C1        .byte $C1, $82,      $FE   ; 02 
- D 0 - I - 0x035EF9 0D:9EE9: C1        .byte $C1, $84,      $06   ; 03 
- D 0 - I - 0x035EFC 0D:9EEC: E1        .byte $E1, $C8,      $F0   ; 04 
- D 0 - I - 0x035EFF 0D:9EEF: E1        .byte $E1, $CA,      $F8   ; 05 
- D 0 - I - 0x035F02 0D:9EF2: E1        .byte $E1, $CC,      $00   ; 06 
- D 0 - I - 0x035F05 0D:9EF5: E1        .byte $E1, $CE,      $08   ; 07 
- D 0 - I - 0x035F08 0D:9EF8: 01        .byte $01, $D0,      $EB   ; 08 
- D 0 - I - 0x035F0B 0D:9EFB: 01        .byte $01, $D2,      $F3   ; 09 
- D 0 - I - 0x035F0E 0D:9EFE: 01        .byte $01, $D4,      $FB   ; 0A 
- D 0 - I - 0x035F11 0D:9F01: 01        .byte $01, $D6,      $03   ; 0B 
- D 0 - I - 0x035F14 0D:9F04: 21        .byte $21, $D8,      $FB   ; 0C 
- D 0 - I - 0x035F17 0D:9F07: 21        .byte $21, $DA,      $03   ; 0D 



off_05_9F0A_68:
- D 0 - I - 0x035F1A 0D:9F0A: 0C        .byte $0C   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035F1B 0D:9F0B: C2        .byte $C2, $80, $02, $EC   ; 01 
- D 0 - I - 0x035F1F 0D:9F0F: C1        .byte $C1, $82,      $F4   ; 02 
- D 0 - I - 0x035F22 0D:9F12: C1        .byte $C1, $84,      $FC   ; 03 
- D 0 - I - 0x035F25 0D:9F15: E1        .byte $E1, $86,      $F0   ; 04 
- D 0 - I - 0x035F28 0D:9F18: E1        .byte $E1, $88,      $F8   ; 05 
- D 0 - I - 0x035F2B 0D:9F1B: E1        .byte $E1, $8A,      $00   ; 06 
- D 0 - I - 0x035F2E 0D:9F1E: 01        .byte $01, $8C,      $EF   ; 07 
- D 0 - I - 0x035F31 0D:9F21: 01        .byte $01, $8E,      $F7   ; 08 
- D 0 - I - 0x035F34 0D:9F24: 01        .byte $01, $90,      $FF   ; 09 
- D 0 - I - 0x035F37 0D:9F27: 21        .byte $21, $92,      $F3   ; 0A 
- D 0 - I - 0x035F3A 0D:9F2A: 21        .byte $21, $94,      $FB   ; 0B 
- D 0 - I - 0x035F3D 0D:9F2D: 21        .byte $21, $96,      $03   ; 0C 



off_05_9F30_69:
- D 0 - I - 0x035F40 0D:9F30: 0C        .byte $0C   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035F41 0D:9F31: C0        .byte $C0, $DC, $02, $F4   ; 01 
- D 0 - I - 0x035F45 0D:9F35: C1        .byte $C1, $DE,      $FC   ; 02 
- D 0 - I - 0x035F48 0D:9F38: C1        .byte $C1, $E0,      $04   ; 03 
- D 0 - I - 0x035F4B 0D:9F3B: E1        .byte $E1, $E2,      $F4   ; 04 
- D 0 - I - 0x035F4E 0D:9F3E: E1        .byte $E1, $9E,      $FC   ; 05 
- D 0 - I - 0x035F51 0D:9F41: E1        .byte $E1, $A0,      $04   ; 06 
- D 0 - I - 0x035F54 0D:9F44: 01        .byte $01, $E4,      $F1   ; 07 
- D 0 - I - 0x035F57 0D:9F47: 01        .byte $01, $8E,      $F7   ; 08 
- D 0 - I - 0x035F5A 0D:9F4A: 01        .byte $01, $90,      $01   ; 09 
- D 0 - I - 0x035F5D 0D:9F4D: 21        .byte $21, $92,      $F3   ; 0A 
- D 0 - I - 0x035F60 0D:9F50: 21        .byte $21, $94,      $FB   ; 0B 
- D 0 - I - 0x035F63 0D:9F53: 21        .byte $21, $96,      $03   ; 0C 



off_05_9F56_6A:
off_08_9F56_02:
- D 0 - I - 0x035F66 0D:9F56: 0E        .byte $0E   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035F67 0D:9F57: C2        .byte $C2, $80, $02, $EC   ; 01 
- D 0 - I - 0x035F6B 0D:9F5B: C1        .byte $C1, $82,      $F4   ; 02 
- D 0 - I - 0x035F6E 0D:9F5E: C1        .byte $C1, $84,      $FC   ; 03 
- D 0 - I - 0x035F71 0D:9F61: E1        .byte $E1, $E6,      $E0   ; 04 
- D 0 - I - 0x035F74 0D:9F64: E1        .byte $E1, $E8,      $E8   ; 05 
- D 0 - I - 0x035F77 0D:9F67: E1        .byte $E1, $EA,      $F0   ; 06 
- D 0 - I - 0x035F7A 0D:9F6A: E1        .byte $E1, $88,      $F8   ; 07 
- D 0 - I - 0x035F7D 0D:9F6D: E1        .byte $E1, $8A,      $00   ; 08 
- D 0 - I - 0x035F80 0D:9F70: 01        .byte $01, $E4,      $EF   ; 09 
- D 0 - I - 0x035F83 0D:9F73: 01        .byte $01, $8E,      $F7   ; 0A 
- D 0 - I - 0x035F86 0D:9F76: 01        .byte $01, $90,      $FF   ; 0B 
- D 0 - I - 0x035F89 0D:9F79: 21        .byte $21, $92,      $F3   ; 0C 
- D 0 - I - 0x035F8C 0D:9F7C: 21        .byte $21, $94,      $FB   ; 0D 
- D 0 - I - 0x035F8F 0D:9F7F: 21        .byte $21, $96,      $03   ; 0E 



off_05_9F82_6B:
- D 0 - I - 0x035F92 0D:9F82: 09        .byte $09   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035F93 0D:9F83: C2        .byte $C2, $80, $02, $EC   ; 01 
- D 0 - I - 0x035F97 0D:9F87: C1        .byte $C1, $82,      $F4   ; 02 
- D 0 - I - 0x035F9A 0D:9F8A: C1        .byte $C1, $84,      $FC   ; 03 
- D 0 - I - 0x035F9D 0D:9F8D: E1        .byte $E1, $86,      $F0   ; 04 
- D 0 - I - 0x035FA0 0D:9F90: E1        .byte $E1, $88,      $F8   ; 05 
- D 0 - I - 0x035FA3 0D:9F93: E1        .byte $E1, $8A,      $00   ; 06 
- D 0 - I - 0x035FA6 0D:9F96: 01        .byte $01, $EC,      $F3   ; 07 
- D 0 - I - 0x035FA9 0D:9F99: 01        .byte $01, $EE,      $FB   ; 08 
- D 0 - I - 0x035FAC 0D:9F9C: 01        .byte $01, $F0,      $03   ; 09 



off_05_9F9F_6C:
- D 0 - I - 0x035FAF 0D:9F9F: 06        .byte $06   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035FB0 0D:9FA0: C2        .byte $C2, $80, $02, $EC   ; 01 
- D 0 - I - 0x035FB4 0D:9FA4: C1        .byte $C1, $82,      $F4   ; 02 
- D 0 - I - 0x035FB7 0D:9FA7: C1        .byte $C1, $84,      $FC   ; 03 
- D 0 - I - 0x035FBA 0D:9FAA: E1        .byte $E1, $86,      $F0   ; 04 
- D 0 - I - 0x035FBD 0D:9FAD: E1        .byte $E1, $88,      $F8   ; 05 
- D 0 - I - 0x035FC0 0D:9FB0: E1        .byte $E1, $8A,      $00   ; 06 



off_05_9FB3_6D:
- D 0 - I - 0x035FC3 0D:9FB3: 0B        .byte $0B   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 0 - I - 0x035FC4 0D:9FB4: C0        .byte $C0, $F2, $02, $F9   ; 01 
- D 0 - I - 0x035FC8 0D:9FB8: C1        .byte $C1, $F4,      $01   ; 02 
- D 0 - I - 0x035FCB 0D:9FBB: E1        .byte $E1, $AE,      $F5   ; 03 
- D 0 - I - 0x035FCE 0D:9FBE: E1        .byte $E1, $B0,      $FD   ; 04 
- D 0 - I - 0x035FD1 0D:9FC1: E1        .byte $E1, $B2,      $05   ; 05 
- D 0 - I - 0x035FD4 0D:9FC4: 01        .byte $01, $B4,      $F2   ; 06 
- D 0 - I - 0x035FD7 0D:9FC7: 01        .byte $01, $B6,      $FA   ; 07 
- D 0 - I - 0x035FDA 0D:9FCA: 01        .byte $01, $B8,      $02   ; 08 
- D 0 - I - 0x035FDD 0D:9FCD: 21        .byte $21, $BA,      $F3   ; 09 
- D 0 - I - 0x035FE0 0D:9FD0: 21        .byte $21, $BC,      $FB   ; 0A 
- D 0 - I - 0x035FE3 0D:9FD3: 21        .byte $21, $BE,      $03   ; 0B 



_off039_9FD6_08:
- - - - - - 0x035FE6 0D:9FD6: D6 A0     .word off_08_A0D6_00     ; unused
- D 0 - I - 0x035FE8 0D:9FD8: DE A0     .word off_08_A0DE_01
- D 0 - I - 0x035FEA 0D:9FDA: 56 9F     .word off_08_9F56_02
- D 0 - I - 0x035FEC 0D:9FDC: D6 A0     .word off_08_A0D6_03
- D 0 - I - 0x035FEE 0D:9FDE: EE 97     .word off_08_97EE_04
- D 0 - I - 0x035FF0 0D:9FE0: 15 98     .word off_08_9815_05
- D 0 - I - 0x035FF2 0D:9FE2: 36 98     .word off_08_9836_06
- D 0 - I - 0x035FF4 0D:9FE4: 96 98     .word off_08_9896_07
- D 0 - I - 0x035FF6 0D:9FE6: D8 99     .word off_08_99D8_08
- D 0 - I - 0x035FF8 0D:9FE8: 04 A1     .word off_08_A104_09
- D 0 - I - 0x035FFA 0D:9FEA: 12 A1     .word off_08_A112_0A
- D 0 - I - 0x035FFC 0D:9FEC: 20 A1     .word off_08_A120_0B
- D 0 - I - 0x035FFE 0D:9FEE: 2E A1     .word off_08_A12E_0C
- D 0 - I - 0x036000 0D:9FF0: 3F A1     .word off_08_A13F_0D
- D 0 - I - 0x036002 0D:9FF2: 47 A1     .word off_08_A147_0E
- D 0 - I - 0x036004 0D:9FF4: C3 A9     .word off_08_A9C3_0F
- D 0 - I - 0x036006 0D:9FF6: A5 A9     .word off_08_A9A5_10
- D 0 - I - 0x036008 0D:9FF8: AF A9     .word off_08_A9AF_11
- D 0 - I - 0x03600A 0D:9FFA: 4F A1     .word off_08_A14F_12
- D 0 - I - 0x03600C 0D:9FFC: 5D A1     .word off_08_A15D_13
- D 0 - I - 0x03600E 0D:9FFE: 71 A1     .word off_08_A171_14
- D 1 - I - 0x036010 0D:A000: 8B A1     .word off_08_A18B_15
- D 1 - I - 0x036012 0D:A002: AB A1     .word off_08_A1AB_16
- D 1 - I - 0x036014 0D:A004: C8 A1     .word off_08_A1C8_17
- D 1 - I - 0x036016 0D:A006: E5 A1     .word off_08_A1E5_18
- D 1 - I - 0x036018 0D:A008: 02 A2     .word off_08_A202_19
- D 1 - I - 0x03601A 0D:A00A: 25 A2     .word off_08_A225_1A
- D 1 - I - 0x03601C 0D:A00C: 48 A2     .word off_08_A248_1B
- D 1 - I - 0x03601E 0D:A00E: 6B A2     .word off_08_A26B_1C
- D 1 - I - 0x036020 0D:A010: 91 A2     .word off_08_A291_1D
- D 1 - I - 0x036022 0D:A012: B7 A2     .word off_08_A2B7_1E
- D 1 - I - 0x036024 0D:A014: DD A2     .word off_08_A2DD_1F
- D 1 - I - 0x036026 0D:A016: FB A2     .word off_08_A2FB_20
- D 1 - I - 0x036028 0D:A018: 06 A3     .word off_08_A306_21
- D 1 - I - 0x03602A 0D:A01A: 11 A3     .word off_08_A311_22
- D 1 - I - 0x03602C 0D:A01C: 20 A3     .word off_08_A320_23
- D 1 - I - 0x03602E 0D:A01E: 35 A3     .word off_08_A335_24
- D 1 - I - 0x036030 0D:A020: 50 A3     .word off_08_A350_25
- D 1 - I - 0x036032 0D:A022: 5B A3     .word off_08_A35B_26
- D 1 - I - 0x036034 0D:A024: 63 A3     .word off_08_A363_27
- D 1 - I - 0x036036 0D:A026: 68 A3     .word off_08_A368_28
- D 1 - I - 0x036038 0D:A028: 6D A3     .word off_08_A36D_29
- D 1 - I - 0x03603A 0D:A02A: 76 A3     .word off_08_A376_2A
- D 1 - I - 0x03603C 0D:A02C: 88 A3     .word off_08_A388_2B
- D 1 - I - 0x03603E 0D:A02E: A3 A3     .word off_08_A3A3_2C
- D 1 - I - 0x036040 0D:A030: BE A3     .word off_08_A3BE_2D
- D 1 - I - 0x036042 0D:A032: D5 A3     .word off_08_A3D5_2E
- D 1 - I - 0x036044 0D:A034: EC A3     .word off_08_A3EC_2F
- D 1 - I - 0x036046 0D:A036: 0D A4     .word off_08_A40D_30
- D 1 - I - 0x036048 0D:A038: 31 A4     .word off_08_A431_31
- D 1 - I - 0x03604A 0D:A03A: 4E A4     .word off_08_A44E_32
- D 1 - I - 0x03604C 0D:A03C: 6B A4     .word off_08_A46B_33
- D 1 - I - 0x03604E 0D:A03E: 88 A4     .word off_08_A488_34
- D 1 - I - 0x036050 0D:A040: C9 A4     .word off_08_A4C9_35
- D 1 - I - 0x036052 0D:A042: FE A4     .word off_08_A4FE_36
- D 1 - I - 0x036054 0D:A044: C9 A4     .word off_08_A4C9_37
- D 1 - I - 0x036056 0D:A046: 30 A5     .word off_08_A530_38
- D 1 - I - 0x036058 0D:A048: 9A A5     .word off_08_A59A_39
- D 1 - I - 0x03605A 0D:A04A: A2 A5     .word off_08_A5A2_3A
- D 1 - I - 0x03605C 0D:A04C: AE A5     .word off_08_A5AE_3B
- D 1 - I - 0x03605E 0D:A04E: C6 A5     .word off_08_A5C6_3C
- D 1 - I - 0x036060 0D:A050: CB A5     .word off_08_A5CB_3D
- D 1 - I - 0x036062 0D:A052: DF A5     .word off_08_A5DF_3E
- D 1 - I - 0x036064 0D:A054: F0 A5     .word off_08_A5F0_3F
- D 1 - I - 0x036066 0D:A056: 01 A6     .word off_08_A601_40
- D 1 - I - 0x036068 0D:A058: 18 A6     .word off_08_A618_41
- D 1 - I - 0x03606A 0D:A05A: 2C A6     .word off_08_A62C_42
- D 1 - I - 0x03606C 0D:A05C: 3A A6     .word off_08_A63A_43
- D 1 - I - 0x03606E 0D:A05E: 49 A6     .word off_08_A649_44
- D 1 - I - 0x036070 0D:A060: 51 A6     .word off_08_A651_45
- D 1 - I - 0x036072 0D:A062: 5A A6     .word off_08_A65A_46
- D 1 - I - 0x036074 0D:A064: 6C A6     .word off_08_A66C_47
- D 1 - I - 0x036076 0D:A066: 87 A6     .word off_08_A687_48
- D 1 - I - 0x036078 0D:A068: A8 A6     .word off_08_A6A8_49
- D 1 - I - 0x03607A 0D:A06A: C9 A6     .word off_08_A6C9_4A
- D 1 - I - 0x03607C 0D:A06C: F6 A6     .word off_08_A6F6_4B
- D 1 - I - 0x03607E 0D:A06E: FE A6     .word off_08_A6FE_4C
- D 1 - I - 0x036080 0D:A070: 06 A7     .word off_08_A706_4D
- D 1 - I - 0x036082 0D:A072: 12 A7     .word off_08_A712_4E
- D 1 - I - 0x036084 0D:A074: 2B A7     .word off_08_A72B_4F
- D 1 - I - 0x036086 0D:A076: 4F A7     .word off_08_A74F_50
- D 1 - I - 0x036088 0D:A078: 79 A7     .word off_08_A779_51
- D 1 - I - 0x03608A 0D:A07A: 7E A7     .word off_08_A77E_52
- D 1 - I - 0x03608C 0D:A07C: 86 A7     .word off_08_A786_53
- D 1 - I - 0x03608E 0D:A07E: 91 A7     .word off_08_A791_54
- D 1 - I - 0x036090 0D:A080: 71 A5     .word off_08_A571_55
- D 1 - I - 0x036092 0D:A082: BA A5     .word off_08_A5BA_56
- D 1 - I - 0x036094 0D:A084: 9F A7     .word off_08_A79F_57
- D 1 - I - 0x036096 0D:A086: D2 A7     .word off_08_A7D2_58
- D 1 - I - 0x036098 0D:A088: 05 A8     .word off_08_A805_59
- D 1 - I - 0x03609A 0D:A08A: 3E A8     .word off_08_A83E_5A
- D 1 - I - 0x03609C 0D:A08C: 71 A8     .word off_08_A871_5B
- D 1 - I - 0x03609E 0D:A08E: A6 A8     .word off_08_A8A6_5C
- D 1 - I - 0x0360A0 0D:A090: AE A8     .word off_08_A8AE_5D
- D 1 - I - 0x0360A2 0D:A092: B6 A8     .word off_08_A8B6_5E
- D 1 - I - 0x0360A4 0D:A094: BE A8     .word off_08_A8BE_5F
- D 1 - I - 0x0360A6 0D:A096: C6 A8     .word off_08_A8C6_60
- D 1 - I - 0x0360A8 0D:A098: D1 A8     .word off_08_A8D1_61
- D 1 - I - 0x0360AA 0D:A09A: DC A8     .word off_08_A8DC_62
- D 1 - I - 0x0360AC 0D:A09C: E7 A8     .word off_08_A8E7_63
- D 1 - I - 0x0360AE 0D:A09E: F2 A8     .word off_08_A8F2_64
- D 1 - I - 0x0360B0 0D:A0A0: FD A8     .word off_08_A8FD_65
- D 1 - I - 0x0360B2 0D:A0A2: 08 A9     .word off_08_A908_66
- D 1 - I - 0x0360B4 0D:A0A4: 16 A9     .word off_08_A916_67
- D 1 - I - 0x0360B6 0D:A0A6: 24 A9     .word off_08_A924_68
- D 1 - I - 0x0360B8 0D:A0A8: 32 A9     .word off_08_A932_69
- - - - - - 0x0360BA 0D:A0AA: 41 A9     .word off_08_A941_6A
- D 1 - I - 0x0360BC 0D:A0AC: 50 A9     .word off_08_A950_6B
- D 1 - I - 0x0360BE 0D:A0AE: 55 A9     .word off_08_A955_6C
- D 1 - I - 0x0360C0 0D:A0B0: 5D A9     .word off_08_A95D_6D
- D 1 - I - 0x0360C2 0D:A0B2: 65 A9     .word off_08_A965_6E
- D 1 - I - 0x0360C4 0D:A0B4: 70 A9     .word off_08_A970_6F
- D 1 - I - 0x0360C6 0D:A0B6: 7C A9     .word off_08_A97C_70
- D 1 - I - 0x0360C8 0D:A0B8: 81 A9     .word off_08_A981_71
- D 1 - I - 0x0360CA 0D:A0BA: 89 A9     .word off_08_A989_72
- D 1 - I - 0x0360CC 0D:A0BC: 92 A9     .word off_08_A992_73
- D 1 - I - 0x0360CE 0D:A0BE: A0 A9     .word off_08_A9A0_74
- D 1 - I - 0x0360D0 0D:A0C0: AA A9     .word off_08_A9AA_75
- D 1 - I - 0x0360D2 0D:A0C2: B4 A9     .word off_08_A9B4_76
- D 1 - I - 0x0360D4 0D:A0C4: BE A9     .word off_08_A9BE_77
- D 1 - I - 0x0360D6 0D:A0C6: C8 A9     .word off_08_A9C8_78
- - - - - - 0x0360D8 0D:A0C8: CD A9     .word off_08_A9CD_79
- D 1 - I - 0x0360DA 0D:A0CA: D2 A9     .word off_08_A9D2_7A
- D 1 - I - 0x0360DC 0D:A0CC: D7 A9     .word off_08_A9D7_7B
- D 1 - I - 0x0360DE 0D:A0CE: DC A9     .word off_08_A9DC_7C
- D 1 - I - 0x0360E0 0D:A0D0: E1 A9     .word off_08_A9E1_7D
- D 1 - I - 0x0360E2 0D:A0D2: E6 A9     .word off_08_A9E6_7E
- D 1 - I - 0x0360E4 0D:A0D4: EB A9     .word off_08_A9EB_7F



off_08_A0D6_00:
off_08_A0D6_03:
- D 1 - I - 0x0360E6 0D:A0D6: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0360E7 0D:A0D7: F0        .byte $F0, $FA, $01, $F8   ; 01 
- D 1 - I - 0x0360EB 0D:A0DB: F1        .byte $F1, $FC,      $00   ; 02 



off_08_A0DE_01:
- D 1 - I - 0x0360EE 0D:A0DE: 0C        .byte $0C   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0360EF 0D:A0DF: C2        .byte $C2, $80, $02, $F3   ; 01 
- D 1 - I - 0x0360F3 0D:A0E3: C1        .byte $C1, $82,      $FB   ; 02 
- D 1 - I - 0x0360F6 0D:A0E6: C1        .byte $C1, $84,      $03   ; 03 
- D 1 - I - 0x0360F9 0D:A0E9: E1        .byte $E1, $F6,      $F5   ; 04 
- D 1 - I - 0x0360FC 0D:A0EC: E1        .byte $E1, $F8,      $FD   ; 05 
- D 1 - I - 0x0360FF 0D:A0EF: E1        .byte $E1, $8A,      $05   ; 06 
- D 1 - I - 0x036102 0D:A0F2: 01        .byte $01, $E4,      $F1   ; 07 
- D 1 - I - 0x036105 0D:A0F5: 01        .byte $01, $8E,      $F9   ; 08 
- D 1 - I - 0x036108 0D:A0F8: 01        .byte $01, $90,      $01   ; 09 
- D 1 - I - 0x03610B 0D:A0FB: 21        .byte $21, $92,      $F3   ; 0A 
- D 1 - I - 0x03610E 0D:A0FE: 21        .byte $21, $94,      $FB   ; 0B 
- D 1 - I - 0x036111 0D:A101: 21        .byte $21, $96,      $03   ; 0C 



off_08_A104_09:
- D 1 - I - 0x036114 0D:A104: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036115 0D:A105: C0        .byte $C0, $80, $03, $F8   ; 01 
- D 1 - I - 0x036119 0D:A109: C1        .byte $C1, $82,      $00   ; 02 
- D 1 - I - 0x03611C 0D:A10C: E1        .byte $E1, $84,      $F8   ; 03 
- D 1 - I - 0x03611F 0D:A10F: E1        .byte $E1, $86,      $00   ; 04 



off_08_A112_0A:
- D 1 - I - 0x036122 0D:A112: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036123 0D:A113: D8        .byte $D8, $88, $03, $F0   ; 01 
- D 1 - I - 0x036127 0D:A117: E1        .byte $E1, $8A,      $F0   ; 02 
- D 1 - I - 0x03612A 0D:A11A: E1        .byte $E1, $8C,      $F8   ; 03 
- D 1 - I - 0x03612D 0D:A11D: E1        .byte $E1, $8E,      $00   ; 04 



off_08_A120_0B:
- D 1 - I - 0x036130 0D:A120: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036131 0D:A121: E8        .byte $E8, $90, $03, $E8   ; 01 
- D 1 - I - 0x036135 0D:A125: E1        .byte $E1, $92,      $F0   ; 02 
- D 1 - I - 0x036138 0D:A128: E1        .byte $E1, $94,      $F8   ; 03 
- D 1 - I - 0x03613B 0D:A12B: E1        .byte $E1, $96,      $00   ; 04 



off_08_A12E_0C:
- D 1 - I - 0x03613E 0D:A12E: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03613F 0D:A12F: E0        .byte $E0, $98, $03, $E8   ; 01 
- D 1 - I - 0x036143 0D:A133: D1        .byte $D1, $9A,      $F0   ; 02 
- D 1 - I - 0x036146 0D:A136: F1        .byte $F1, $9C,      $F0   ; 03 
- D 1 - I - 0x036149 0D:A139: E1        .byte $E1, $9E,      $F8   ; 04 
- D 1 - I - 0x03614C 0D:A13C: E1        .byte $E1, $A0,      $00   ; 05 



off_08_A13F_0D:
- D 1 - I - 0x03614F 0D:A13F: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036150 0D:A140: F0        .byte $F0, $A2, $03, $F8   ; 01 
- D 1 - I - 0x036154 0D:A144: F1        .byte $F1, $A4,      $00   ; 02 



off_08_A147_0E:
- D 1 - I - 0x036157 0D:A147: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036158 0D:A148: F0        .byte $F0, $A6, $03, $F8   ; 01 
- D 1 - I - 0x03615C 0D:A14C: F1        .byte $F1, $AE,      $00   ; 02 



off_08_A14F_12:
- D 1 - I - 0x03615F 0D:A14F: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036160 0D:A150: F0        .byte $F0, $A2, $03, $F8   ; 01 
- D 1 - I - 0x036164 0D:A154: F1        .byte $F1, $A4,      $00   ; 02 
- D 1 - I - 0x036167 0D:A157: 11        .byte $11, $A2,      $F8   ; 03 
- D 1 - I - 0x03616A 0D:A15A: 11        .byte $11, $A4,      $00   ; 04 



off_08_A15D_13:
- D 1 - I - 0x03616D 0D:A15D: 06        .byte $06   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03616E 0D:A15E: F0        .byte $F0, $A2, $03, $F8   ; 01 
- D 1 - I - 0x036172 0D:A162: F1        .byte $F1, $A4,      $00   ; 02 
- D 1 - I - 0x036175 0D:A165: 11        .byte $11, $A2,      $F8   ; 03 
- D 1 - I - 0x036178 0D:A168: 11        .byte $11, $A4,      $00   ; 04 
- D 1 - I - 0x03617B 0D:A16B: 31        .byte $31, $A2,      $F8   ; 05 
- D 1 - I - 0x03617E 0D:A16E: 31        .byte $31, $A4,      $00   ; 06 



off_08_A171_14:
- D 1 - I - 0x036181 0D:A171: 08        .byte $08   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036182 0D:A172: F0        .byte $F0, $A2, $03, $F8   ; 01 
- D 1 - I - 0x036186 0D:A176: F1        .byte $F1, $A4,      $00   ; 02 
- D 1 - I - 0x036189 0D:A179: 11        .byte $11, $A2,      $F8   ; 03 
- D 1 - I - 0x03618C 0D:A17C: 11        .byte $11, $A4,      $00   ; 04 
- D 1 - I - 0x03618F 0D:A17F: 31        .byte $31, $A2,      $F8   ; 05 
- D 1 - I - 0x036192 0D:A182: 31        .byte $31, $A4,      $00   ; 06 
- D 1 - I - 0x036195 0D:A185: 51        .byte $51, $A2,      $F8   ; 07 
- D 1 - I - 0x036198 0D:A188: 51        .byte $51, $A4,      $00   ; 08 



off_08_A18B_15:
- D 1 - I - 0x03619B 0D:A18B: 0A        .byte $0A   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03619C 0D:A18C: F0        .byte $F0, $A2, $03, $F8   ; 01 
- D 1 - I - 0x0361A0 0D:A190: F1        .byte $F1, $A4,      $00   ; 02 
- D 1 - I - 0x0361A3 0D:A193: 11        .byte $11, $A2,      $F8   ; 03 
- D 1 - I - 0x0361A6 0D:A196: 11        .byte $11, $A4,      $00   ; 04 
- D 1 - I - 0x0361A9 0D:A199: 31        .byte $31, $A2,      $F8   ; 05 
- D 1 - I - 0x0361AC 0D:A19C: 31        .byte $31, $A4,      $00   ; 06 
- D 1 - I - 0x0361AF 0D:A19F: 51        .byte $51, $A2,      $F8   ; 07 
- D 1 - I - 0x0361B2 0D:A1A2: 51        .byte $51, $A4,      $00   ; 08 
- D 1 - I - 0x0361B5 0D:A1A5: 71        .byte $71, $A2,      $F8   ; 09 
- D 1 - I - 0x0361B8 0D:A1A8: 71        .byte $71, $A4,      $00   ; 0A 



off_08_A1AB_16:
- D 1 - I - 0x0361BB 0D:A1AB: 09        .byte $09   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0361BC 0D:A1AC: D2        .byte $D2, $9A, $03, $F2   ; 01 
- D 1 - I - 0x0361C0 0D:A1B0: D3        .byte $D3, $9C,      $FA   ; 02 
- D 1 - I - 0x0361C3 0D:A1B3: EB        .byte $EB, $98,      $EA   ; 03 
- D 1 - I - 0x0361C6 0D:A1B6: F3        .byte $F3, $9E,      $F2   ; 04 
- D 1 - I - 0x0361C9 0D:A1B9: F3        .byte $F3, $A0,      $FA   ; 05 
- D 1 - I - 0x0361CC 0D:A1BC: 11        .byte $11, $80,      $F0   ; 06 
- D 1 - I - 0x0361CF 0D:A1BF: 11        .byte $11, $82,      $F8   ; 07 
- D 1 - I - 0x0361D2 0D:A1C2: 11        .byte $11, $84,      $00   ; 08 
- D 1 - I - 0x0361D5 0D:A1C5: 11        .byte $11, $86,      $08   ; 09 



off_08_A1C8_17:
- D 1 - I - 0x0361D8 0D:A1C8: 09        .byte $09   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0361D9 0D:A1C9: D0        .byte $D0, $9A, $03, $F1   ; 01 
- D 1 - I - 0x0361DD 0D:A1CD: D1        .byte $D1, $9C,      $F9   ; 02 
- D 1 - I - 0x0361E0 0D:A1D0: E9        .byte $E9, $98,      $E9   ; 03 
- D 1 - I - 0x0361E3 0D:A1D3: F1        .byte $F1, $9E,      $F1   ; 04 
- D 1 - I - 0x0361E6 0D:A1D6: F1        .byte $F1, $A0,      $F9   ; 05 
- D 1 - I - 0x0361E9 0D:A1D9: 11        .byte $11, $80,      $F0   ; 06 
- D 1 - I - 0x0361EC 0D:A1DC: 11        .byte $11, $8A,      $F8   ; 07 
- D 1 - I - 0x0361EF 0D:A1DF: 11        .byte $11, $8C,      $00   ; 08 
- D 1 - I - 0x0361F2 0D:A1E2: 11        .byte $11, $8E,      $08   ; 09 



off_08_A1E5_18:
- D 1 - I - 0x0361F5 0D:A1E5: 09        .byte $09   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0361F6 0D:A1E6: D0        .byte $D0, $9A, $03, $F0   ; 01 
- D 1 - I - 0x0361FA 0D:A1EA: D1        .byte $D1, $9C,      $F8   ; 02 
- D 1 - I - 0x0361FD 0D:A1ED: E9        .byte $E9, $98,      $E8   ; 03 
- D 1 - I - 0x036200 0D:A1F0: F1        .byte $F1, $9E,      $F0   ; 04 
- D 1 - I - 0x036203 0D:A1F3: F1        .byte $F1, $A0,      $F8   ; 05 
- D 1 - I - 0x036206 0D:A1F6: 11        .byte $11, $90,      $F0   ; 06 
- D 1 - I - 0x036209 0D:A1F9: 11        .byte $11, $92,      $F8   ; 07 
- D 1 - I - 0x03620C 0D:A1FC: 11        .byte $11, $94,      $00   ; 08 
- D 1 - I - 0x03620F 0D:A1FF: 11        .byte $11, $96,      $08   ; 09 



off_08_A202_19:
- D 1 - I - 0x036212 0D:A202: 0B        .byte $0B   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036213 0D:A203: D2        .byte $D2, $9A, $03, $F4   ; 01 
- D 1 - I - 0x036217 0D:A207: D3        .byte $D3, $9C,      $FC   ; 02 
- D 1 - I - 0x03621A 0D:A20A: D1        .byte $D1, $A2,      $E7   ; 03 
- D 1 - I - 0x03621D 0D:A20D: F1        .byte $F1, $A4,      $E7   ; 04 
- D 1 - I - 0x036220 0D:A210: F1        .byte $F1, $A6,      $ED   ; 05 
- D 1 - I - 0x036223 0D:A213: F1        .byte $F1, $A8,      $F5   ; 06 
- D 1 - I - 0x036226 0D:A216: F1        .byte $F1, $AA,      $FD   ; 07 
- D 1 - I - 0x036229 0D:A219: 11        .byte $11, $80,      $F0   ; 08 
- D 1 - I - 0x03622C 0D:A21C: 11        .byte $11, $82,      $F8   ; 09 
- D 1 - I - 0x03622F 0D:A21F: 11        .byte $11, $84,      $00   ; 0A 
- D 1 - I - 0x036232 0D:A222: 11        .byte $11, $86,      $08   ; 0B 



off_08_A225_1A:
- D 1 - I - 0x036235 0D:A225: 0B        .byte $0B   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036236 0D:A226: D0        .byte $D0, $9A, $03, $F5   ; 01 
- D 1 - I - 0x03623A 0D:A22A: D1        .byte $D1, $9C,      $FD   ; 02 
- D 1 - I - 0x03623D 0D:A22D: D1        .byte $D1, $A2,      $E7   ; 03 
- D 1 - I - 0x036240 0D:A230: F1        .byte $F1, $A4,      $E7   ; 04 
- D 1 - I - 0x036243 0D:A233: F1        .byte $F1, $A6,      $EF   ; 05 
- D 1 - I - 0x036246 0D:A236: F1        .byte $F1, $AC,      $F7   ; 06 
- D 1 - I - 0x036249 0D:A239: F1        .byte $F1, $AE,      $FF   ; 07 
- D 1 - I - 0x03624C 0D:A23C: 11        .byte $11, $80,      $F0   ; 08 
- D 1 - I - 0x03624F 0D:A23F: 11        .byte $11, $82,      $F8   ; 09 
- D 1 - I - 0x036252 0D:A242: 11        .byte $11, $84,      $00   ; 0A 
- D 1 - I - 0x036255 0D:A245: 11        .byte $11, $86,      $08   ; 0B 



off_08_A248_1B:
- D 1 - I - 0x036258 0D:A248: 0B        .byte $0B   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036259 0D:A249: D0        .byte $D0, $9A, $03, $F5   ; 01 
- D 1 - I - 0x03625D 0D:A24D: D1        .byte $D1, $B0,      $FD   ; 02 
- D 1 - I - 0x036260 0D:A250: D1        .byte $D1, $A2,      $E9   ; 03 
- D 1 - I - 0x036263 0D:A253: F1        .byte $F1, $B2,      $E7   ; 04 
- D 1 - I - 0x036266 0D:A256: F1        .byte $F1, $B4,      $EF   ; 05 
- D 1 - I - 0x036269 0D:A259: F1        .byte $F1, $B6,      $F7   ; 06 
- D 1 - I - 0x03626C 0D:A25C: F1        .byte $F1, $B8,      $FF   ; 07 
- D 1 - I - 0x03626F 0D:A25F: 11        .byte $11, $80,      $F0   ; 08 
- D 1 - I - 0x036272 0D:A262: 11        .byte $11, $82,      $F8   ; 09 
- D 1 - I - 0x036275 0D:A265: 11        .byte $11, $84,      $00   ; 0A 
- D 1 - I - 0x036278 0D:A268: 11        .byte $11, $86,      $08   ; 0B 



off_08_A26B_1C:
- D 1 - I - 0x03627B 0D:A26B: 0C        .byte $0C   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03627C 0D:A26C: D0        .byte $D0, $BA, $03, $E4   ; 01 
- D 1 - I - 0x036280 0D:A270: D1        .byte $D1, $BC,      $EC   ; 02 
- D 1 - I - 0x036283 0D:A273: D1        .byte $D1, $BE,      $F4   ; 03 
- D 1 - I - 0x036286 0D:A276: D1        .byte $D1, $C0,      $FC   ; 04 
- D 1 - I - 0x036289 0D:A279: F1        .byte $F1, $C2,      $E4   ; 05 
- D 1 - I - 0x03628C 0D:A27C: F1        .byte $F1, $C4,      $EC   ; 06 
- D 1 - I - 0x03628F 0D:A27F: F1        .byte $F1, $C6,      $F4   ; 07 
- D 1 - I - 0x036292 0D:A282: F1        .byte $F1, $C8,      $FC   ; 08 
- D 1 - I - 0x036295 0D:A285: 11        .byte $11, $80,      $F0   ; 09 
- D 1 - I - 0x036298 0D:A288: 11        .byte $11, $82,      $F8   ; 0A 
- D 1 - I - 0x03629B 0D:A28B: 11        .byte $11, $84,      $00   ; 0B 
- D 1 - I - 0x03629E 0D:A28E: 11        .byte $11, $86,      $08   ; 0C 



off_08_A291_1D:
- D 1 - I - 0x0362A1 0D:A291: 0C        .byte $0C   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0362A2 0D:A292: D0        .byte $D0, $BA, $03, $E4   ; 01 
- D 1 - I - 0x0362A6 0D:A296: D1        .byte $D1, $BC,      $EC   ; 02 
- D 1 - I - 0x0362A9 0D:A299: D1        .byte $D1, $BE,      $F4   ; 03 
- D 1 - I - 0x0362AC 0D:A29C: D1        .byte $D1, $C0,      $FC   ; 04 
- D 1 - I - 0x0362AF 0D:A29F: F1        .byte $F1, $C2,      $E4   ; 05 
- D 1 - I - 0x0362B2 0D:A2A2: F1        .byte $F1, $C4,      $EC   ; 06 
- D 1 - I - 0x0362B5 0D:A2A5: F1        .byte $F1, $CA,      $F4   ; 07 
- D 1 - I - 0x0362B8 0D:A2A8: F1        .byte $F1, $CC,      $FC   ; 08 
- D 1 - I - 0x0362BB 0D:A2AB: 11        .byte $11, $80,      $F0   ; 09 
- D 1 - I - 0x0362BE 0D:A2AE: 11        .byte $11, $82,      $F8   ; 0A 
- D 1 - I - 0x0362C1 0D:A2B1: 11        .byte $11, $84,      $00   ; 0B 
- D 1 - I - 0x0362C4 0D:A2B4: 11        .byte $11, $86,      $08   ; 0C 



off_08_A2B7_1E:
- D 1 - I - 0x0362C7 0D:A2B7: 0C        .byte $0C   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0362C8 0D:A2B8: D2        .byte $D2, $BA, $03, $E8   ; 01 
- D 1 - I - 0x0362CC 0D:A2BC: D3        .byte $D3, $CE,      $EF   ; 02 
- D 1 - I - 0x0362CF 0D:A2BF: D3        .byte $D3, $BE,      $F7   ; 03 
- D 1 - I - 0x0362D2 0D:A2C2: D3        .byte $D3, $C0,      $FF   ; 04 
- D 1 - I - 0x0362D5 0D:A2C5: F3        .byte $F3, $C2,      $E8   ; 05 
- D 1 - I - 0x0362D8 0D:A2C8: F3        .byte $F3, $D0,      $F0   ; 06 
- D 1 - I - 0x0362DB 0D:A2CB: F3        .byte $F3, $D2,      $F8   ; 07 
- D 1 - I - 0x0362DE 0D:A2CE: F3        .byte $F3, $D4,      $00   ; 08 
- D 1 - I - 0x0362E1 0D:A2D1: 11        .byte $11, $80,      $F0   ; 09 
- D 1 - I - 0x0362E4 0D:A2D4: 11        .byte $11, $82,      $F8   ; 0A 
- D 1 - I - 0x0362E7 0D:A2D7: 11        .byte $11, $84,      $00   ; 0B 
- D 1 - I - 0x0362EA 0D:A2DA: 11        .byte $11, $86,      $08   ; 0C 



off_08_A2DD_1F:
- D 1 - I - 0x0362ED 0D:A2DD: 09        .byte $09   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0362EE 0D:A2DE: D0        .byte $D0, $9A, $01, $F0   ; 01 
- D 1 - I - 0x0362F2 0D:A2E2: D1        .byte $D1, $9C,      $F8   ; 02 
- D 1 - I - 0x0362F5 0D:A2E5: E8        .byte $E8, $98, $03, $E8   ; 03 
- D 1 - I - 0x0362F9 0D:A2E9: F1        .byte $F1, $9E,      $F0   ; 04 
- D 1 - I - 0x0362FC 0D:A2EC: F1        .byte $F1, $A0,      $F8   ; 05 
- D 1 - I - 0x0362FF 0D:A2EF: 11        .byte $11, $90,      $F0   ; 06 
- D 1 - I - 0x036302 0D:A2F2: 11        .byte $11, $92,      $F8   ; 07 
- D 1 - I - 0x036305 0D:A2F5: 11        .byte $11, $94,      $00   ; 08 
- D 1 - I - 0x036308 0D:A2F8: 11        .byte $11, $96,      $08   ; 09 



off_08_A2FB_20:
- D 1 - I - 0x03630B 0D:A2FB: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03630C 0D:A2FC: F0        .byte $F0, $E6, $03, $F4   ; 01 
- D 1 - I - 0x036310 0D:A300: F1        .byte $F1, $E8,      $FC   ; 02 
- D 1 - I - 0x036313 0D:A303: F1        .byte $F1, $EA,      $04   ; 03 



off_08_A306_21:
- D 1 - I - 0x036316 0D:A306: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036317 0D:A307: F0        .byte $F0, $EC, $03, $F4   ; 01 
- D 1 - I - 0x03631B 0D:A30B: F1        .byte $F1, $EE,      $FC   ; 02 
- D 1 - I - 0x03631E 0D:A30E: F1        .byte $F1, $F0,      $04   ; 03 



off_08_A311_22:
- D 1 - I - 0x036321 0D:A311: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036322 0D:A312: F0        .byte $F0, $EA, $43, $F0   ; 01 
- D 1 - I - 0x036326 0D:A316: F0        .byte $F0, $F2, $03, $F8   ; 02 
- D 1 - I - 0x03632A 0D:A31A: F1        .byte $F1, $F4,      $00   ; 03 
- D 1 - I - 0x03632D 0D:A31D: F1        .byte $F1, $F0,      $08   ; 04 



off_08_A320_23:
- D 1 - I - 0x036330 0D:A320: 06        .byte $06   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036331 0D:A321: D0        .byte $D0, $F4, $43, $F8   ; 01 
- D 1 - I - 0x036335 0D:A325: D1        .byte $D1, $F2,      $00   ; 02 
- D 1 - I - 0x036338 0D:A328: F1        .byte $F1, $F0,      $F0   ; 03 
- D 1 - I - 0x03633B 0D:A32B: F0        .byte $F0, $F6, $03, $F8   ; 04 
- D 1 - I - 0x03633F 0D:A32F: F1        .byte $F1, $F8,      $00   ; 05 
- D 1 - I - 0x036342 0D:A332: F1        .byte $F1, $EA,      $08   ; 06 



off_08_A335_24:
- D 1 - I - 0x036345 0D:A335: 08        .byte $08   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036346 0D:A336: B0        .byte $B0, $F2, $03, $F8   ; 01 
- D 1 - I - 0x03634A 0D:A33A: B1        .byte $B1, $F4,      $00   ; 02 
- D 1 - I - 0x03634D 0D:A33D: F1        .byte $F1, $F0,      $08   ; 03 
- D 1 - I - 0x036350 0D:A340: D0        .byte $D0, $F8, $43, $F8   ; 04 
- D 1 - I - 0x036354 0D:A344: D1        .byte $D1, $F6,      $00   ; 05 
- D 1 - I - 0x036357 0D:A347: F1        .byte $F1, $EA,      $F0   ; 06 
- D 1 - I - 0x03635A 0D:A34A: F1        .byte $F1, $F8,      $F8   ; 07 
- D 1 - I - 0x03635D 0D:A34D: F1        .byte $F1, $F6,      $00   ; 08 



off_08_A350_25:
- D 1 - I - 0x036360 0D:A350: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036361 0D:A351: F0        .byte $F0, $D6, $01, $F8   ; 01 
- D 1 - I - 0x036365 0D:A355: F1        .byte $F1, $D8,      $00   ; 02 
- D 1 - I - 0x036368 0D:A358: F1        .byte $F1, $DA,      $08   ; 03 



off_08_A35B_26:
- D 1 - I - 0x03636B 0D:A35B: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03636C 0D:A35C: F0        .byte $F0, $DC, $01, $F8   ; 01 
- D 1 - I - 0x036370 0D:A360: F1        .byte $F1, $DE,      $00   ; 02 



off_08_A363_27:
- D 1 - I - 0x036373 0D:A363: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036374 0D:A364: F0        .byte $F0, $E0, $03, $FC   ; 01 



off_08_A368_28:
- D 1 - I - 0x036378 0D:A368: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036379 0D:A369: F0        .byte $F0, $E2, $03, $FC   ; 01 



off_08_A36D_29:
- D 1 - I - 0x03637D 0D:A36D: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03637E 0D:A36E: E0        .byte $E0, $E4, $03, $FC   ; 01 
- D 1 - I - 0x036382 0D:A372: 00        .byte $00, $E4, $83, $FC   ; 02 



off_08_A376_2A:
- D 1 - I - 0x036386 0D:A376: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036387 0D:A377: 10        .byte $10, $E4, $03, $0C   ; 01 
- D 1 - I - 0x03638B 0D:A37B: 11        .byte $11, $E6,      $14   ; 02 
- D 1 - I - 0x03638E 0D:A37E: 10        .byte $10, $C4, $02, $F0   ; 03 
- D 1 - I - 0x036392 0D:A382: 11        .byte $11, $C6,      $F8   ; 04 
- D 1 - I - 0x036395 0D:A385: 11        .byte $11, $C8,      $00   ; 05 



off_08_A388_2B:
- D 1 - I - 0x036398 0D:A388: 08        .byte $08   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036399 0D:A389: 10        .byte $10, $E8, $03, $08   ; 01 
- D 1 - I - 0x03639D 0D:A38D: 11        .byte $11, $EA,      $10   ; 02 
- D 1 - I - 0x0363A0 0D:A390: F0        .byte $F0, $CC, $02, $00   ; 03 
- D 1 - I - 0x0363A4 0D:A394: F1        .byte $F1, $CE,      $08   ; 04 
- D 1 - I - 0x0363A7 0D:A397: 11        .byte $11, $D0,      $F0   ; 05 
- D 1 - I - 0x0363AA 0D:A39A: 11        .byte $11, $D2,      $F8   ; 06 
- D 1 - I - 0x0363AD 0D:A39D: 11        .byte $11, $D4,      $00   ; 07 
- D 1 - I - 0x0363B0 0D:A3A0: 11        .byte $11, $D6,      $08   ; 08 



off_08_A3A3_2C:
- D 1 - I - 0x0363B3 0D:A3A3: 08        .byte $08   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0363B4 0D:A3A4: 10        .byte $10, $E8, $03, $00   ; 01 
- D 1 - I - 0x0363B8 0D:A3A8: 11        .byte $11, $EA,      $08   ; 02 
- D 1 - I - 0x0363BB 0D:A3AB: F0        .byte $F0, $D8, $02, $F0   ; 03 
- D 1 - I - 0x0363BF 0D:A3AF: F1        .byte $F1, $DA,      $F8   ; 04 
- D 1 - I - 0x0363C2 0D:A3B2: F1        .byte $F1, $DC,      $00   ; 05 
- D 1 - I - 0x0363C5 0D:A3B5: 11        .byte $11, $DE,      $F0   ; 06 
- D 1 - I - 0x0363C8 0D:A3B8: 11        .byte $11, $E0,      $F8   ; 07 
- D 1 - I - 0x0363CB 0D:A3BB: 11        .byte $11, $E2,      $00   ; 08 



off_08_A3BE_2D:
- D 1 - I - 0x0363CE 0D:A3BE: 07        .byte $07   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0363CF 0D:A3BF: E0        .byte $E0, $F0, $02, $00   ; 01 
- D 1 - I - 0x0363D3 0D:A3C3: DD        .byte $DD, $80,      $F1   ; 02 
- D 1 - I - 0x0363D6 0D:A3C6: E1        .byte $E1, $E6,      $F9   ; 03 
- D 1 - I - 0x0363D9 0D:A3C9: E1        .byte $E1, $E8,      $01   ; 04 
- D 1 - I - 0x0363DC 0D:A3CC: 01        .byte $01, $EA,      $F0   ; 05 
- D 1 - I - 0x0363DF 0D:A3CF: 01        .byte $01, $EC,      $F8   ; 06 
- D 1 - I - 0x0363E2 0D:A3D2: 01        .byte $01, $8A,      $00   ; 07 



off_08_A3D5_2E:
- D 1 - I - 0x0363E5 0D:A3D5: 07        .byte $07   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0363E6 0D:A3D6: E0        .byte $E0, $FA, $02, $EE   ; 01 
- D 1 - I - 0x0363EA 0D:A3DA: E1        .byte $E1, $FC,      $F6   ; 02 
- D 1 - I - 0x0363ED 0D:A3DD: E1        .byte $E1, $84,      $FE   ; 03 
- D 1 - I - 0x0363F0 0D:A3E0: F1        .byte $F1, $EE,      $E6   ; 04 
- D 1 - I - 0x0363F3 0D:A3E3: 01        .byte $01, $EA,      $F0   ; 05 
- D 1 - I - 0x0363F6 0D:A3E6: 01        .byte $01, $EC,      $F8   ; 06 
- D 1 - I - 0x0363F9 0D:A3E9: 01        .byte $01, $8A,      $00   ; 07 



off_08_A3EC_2F:
- D 1 - I - 0x0363FC 0D:A3EC: 0A        .byte $0A   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0363FD 0D:A3ED: F8        .byte $F8, $C2, $43, $E9   ; 01 
- D 1 - I - 0x036401 0D:A3F1: F9        .byte $F9, $C0,      $F1   ; 02 
- D 1 - I - 0x036404 0D:A3F4: D2        .byte $D2, $80, $02, $F1   ; 03 
- D 1 - I - 0x036408 0D:A3F8: D3        .byte $D3, $82,      $F9   ; 04 
- D 1 - I - 0x03640B 0D:A3FB: D3        .byte $D3, $84,      $01   ; 05 
- D 1 - I - 0x03640E 0D:A3FE: F1        .byte $F1, $BC,      $F9   ; 06 
- D 1 - I - 0x036411 0D:A401: F1        .byte $F1, $BE,      $01   ; 07 
- D 1 - I - 0x036414 0D:A404: 11        .byte $11, $A4,      $F8   ; 08 
- D 1 - I - 0x036417 0D:A407: 11        .byte $11, $A6,      $00   ; 09 
- D 1 - I - 0x03641A 0D:A40A: 11        .byte $11, $A8,      $08   ; 0A 



off_08_A40D_30:
- D 1 - I - 0x03641D 0D:A40D: 0B        .byte $0B   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03641E 0D:A40E: 00        .byte $00, $C0, $03, $00   ; 01 
- D 1 - I - 0x036422 0D:A412: 01        .byte $01, $C2,      $08   ; 02 
- D 1 - I - 0x036425 0D:A415: E2        .byte $E2, $80, $02, $F0   ; 03 
- D 1 - I - 0x036429 0D:A419: E3        .byte $E3, $82,      $F8   ; 04 
- D 1 - I - 0x03642C 0D:A41C: E3        .byte $E3, $84,      $00   ; 05 
- D 1 - I - 0x03642F 0D:A41F: 01        .byte $01, $9E,      $E8   ; 06 
- D 1 - I - 0x036432 0D:A422: 01        .byte $01, $A0,      $F0   ; 07 
- D 1 - I - 0x036435 0D:A425: 01        .byte $01, $A2,      $F8   ; 08 
- D 1 - I - 0x036438 0D:A428: 21        .byte $21, $B6,      $F3   ; 09 
- D 1 - I - 0x03643B 0D:A42B: 21        .byte $21, $B8,      $FB   ; 0A 
- D 1 - I - 0x03643E 0D:A42E: 21        .byte $21, $BA,      $03   ; 0B 



off_08_A431_31:
- D 1 - I - 0x036441 0D:A431: 09        .byte $09   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036442 0D:A432: E0        .byte $E0, $CA, $02, $F4   ; 01 
- D 1 - I - 0x036446 0D:A436: E1        .byte $E1, $CC,      $FC   ; 02 
- D 1 - I - 0x036449 0D:A439: E1        .byte $E1, $CA,      $04   ; 03 
- D 1 - I - 0x03644C 0D:A43C: 01        .byte $01, $CE,      $F4   ; 04 
- D 1 - I - 0x03644F 0D:A43F: 01        .byte $01, $D4,      $FC   ; 05 
- D 1 - I - 0x036452 0D:A442: 01        .byte $01, $CE,      $04   ; 06 
- D 1 - I - 0x036455 0D:A445: 21        .byte $21, $D0,      $F4   ; 07 
- D 1 - I - 0x036458 0D:A448: 21        .byte $21, $D2,      $FC   ; 08 
- D 1 - I - 0x03645B 0D:A44B: 21        .byte $21, $D0,      $04   ; 09 



off_08_A44E_32:
- D 1 - I - 0x03645E 0D:A44E: 09        .byte $09   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03645F 0D:A44F: E0        .byte $E0, $CA, $02, $F4   ; 01 
- D 1 - I - 0x036463 0D:A453: E1        .byte $E1, $CC,      $FC   ; 02 
- D 1 - I - 0x036466 0D:A456: E1        .byte $E1, $CA,      $04   ; 03 
- D 1 - I - 0x036469 0D:A459: 01        .byte $01, $CE,      $F4   ; 04 
- D 1 - I - 0x03646C 0D:A45C: 01        .byte $01, $D6,      $FC   ; 05 
- D 1 - I - 0x03646F 0D:A45F: 01        .byte $01, $CE,      $04   ; 06 
- D 1 - I - 0x036472 0D:A462: 21        .byte $21, $D0,      $F4   ; 07 
- D 1 - I - 0x036475 0D:A465: 21        .byte $21, $D2,      $FC   ; 08 
- D 1 - I - 0x036478 0D:A468: 21        .byte $21, $D0,      $04   ; 09 



off_08_A46B_33:
- D 1 - I - 0x03647B 0D:A46B: 09        .byte $09   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03647C 0D:A46C: E0        .byte $E0, $CA, $02, $F4   ; 01 
- D 1 - I - 0x036480 0D:A470: E1        .byte $E1, $CC,      $FC   ; 02 
- D 1 - I - 0x036483 0D:A473: E1        .byte $E1, $CA,      $04   ; 03 
- D 1 - I - 0x036486 0D:A476: 01        .byte $01, $CE,      $F4   ; 04 
- D 1 - I - 0x036489 0D:A479: 01        .byte $01, $D8,      $FC   ; 05 
- D 1 - I - 0x03648C 0D:A47C: 01        .byte $01, $CE,      $04   ; 06 
- D 1 - I - 0x03648F 0D:A47F: 21        .byte $21, $D0,      $F4   ; 07 
- D 1 - I - 0x036492 0D:A482: 21        .byte $21, $D2,      $FC   ; 08 
- D 1 - I - 0x036495 0D:A485: 21        .byte $21, $D0,      $04   ; 09 



off_08_A488_34:
- D 1 - I - 0x036498 0D:A488: 15        .byte $15   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036499 0D:A489: C0        .byte $C0, $80, $02, $E8   ; 01 
- D 1 - I - 0x03649D 0D:A48D: C1        .byte $C1, $82,      $F0   ; 02 
- D 1 - I - 0x0364A0 0D:A490: C1        .byte $C1, $84,      $F8   ; 03 
- D 1 - I - 0x0364A3 0D:A493: C1        .byte $C1, $86,      $00   ; 04 
- D 1 - I - 0x0364A6 0D:A496: C1        .byte $C1, $88,      $08   ; 05 
- D 1 - I - 0x0364A9 0D:A499: C1        .byte $C1, $8A,      $10   ; 06 
- D 1 - I - 0x0364AC 0D:A49C: E1        .byte $E1, $8C,      $E8   ; 07 
- D 1 - I - 0x0364AF 0D:A49F: E1        .byte $E1, $8E,      $F0   ; 08 
- D 1 - I - 0x0364B2 0D:A4A2: E1        .byte $E1, $90,      $F8   ; 09 
- D 1 - I - 0x0364B5 0D:A4A5: E1        .byte $E1, $92,      $00   ; 0A 
- D 1 - I - 0x0364B8 0D:A4A8: E1        .byte $E1, $94,      $08   ; 0B 
- D 1 - I - 0x0364BB 0D:A4AB: E1        .byte $E1, $96,      $10   ; 0C 
- D 1 - I - 0x0364BE 0D:A4AE: 01        .byte $01, $98,      $E8   ; 0D 
- D 1 - I - 0x0364C1 0D:A4B1: 01        .byte $01, $9A,      $F0   ; 0E 
- D 1 - I - 0x0364C4 0D:A4B4: 01        .byte $01, $9C,      $F8   ; 0F 
- D 1 - I - 0x0364C7 0D:A4B7: 01        .byte $01, $9E,      $00   ; 10 
- D 1 - I - 0x0364CA 0D:A4BA: 01        .byte $01, $A0,      $08   ; 11 
- D 1 - I - 0x0364CD 0D:A4BD: 01        .byte $01, $A2,      $10   ; 12 
- D 1 - I - 0x0364D0 0D:A4C0: 21        .byte $21, $A4,      $EE   ; 13 
- D 1 - I - 0x0364D3 0D:A4C3: 21        .byte $21, $A6,      $F6   ; 14 
- D 1 - I - 0x0364D6 0D:A4C6: 21        .byte $21, $A8,      $FE   ; 15 



off_08_A4C9_35:
off_08_A4C9_37:
- D 1 - I - 0x0364D9 0D:A4C9: 11        .byte $11   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0364DA 0D:A4CA: C0        .byte $C0, $AA, $02, $F0   ; 01 
- D 1 - I - 0x0364DE 0D:A4CE: C1        .byte $C1, $84,      $F8   ; 02 
- D 1 - I - 0x0364E1 0D:A4D1: C1        .byte $C1, $AC,      $00   ; 03 
- D 1 - I - 0x0364E4 0D:A4D4: C1        .byte $C1, $AE,      $08   ; 04 
- D 1 - I - 0x0364E7 0D:A4D7: E1        .byte $E1, $8C,      $E8   ; 05 
- D 1 - I - 0x0364EA 0D:A4DA: E1        .byte $E1, $8E,      $F0   ; 06 
- D 1 - I - 0x0364ED 0D:A4DD: E1        .byte $E1, $90,      $F8   ; 07 
- D 1 - I - 0x0364F0 0D:A4E0: E1        .byte $E1, $92,      $00   ; 08 
- D 1 - I - 0x0364F3 0D:A4E3: E1        .byte $E1, $B0,      $08   ; 09 
- D 1 - I - 0x0364F6 0D:A4E6: 01        .byte $01, $98,      $E8   ; 0A 
- D 1 - I - 0x0364F9 0D:A4E9: 01        .byte $01, $9A,      $F0   ; 0B 
- D 1 - I - 0x0364FC 0D:A4EC: 01        .byte $01, $9C,      $F8   ; 0C 
- D 1 - I - 0x0364FF 0D:A4EF: 01        .byte $01, $9E,      $00   ; 0D 
- D 1 - I - 0x036502 0D:A4F2: 01        .byte $01, $B2,      $08   ; 0E 
- D 1 - I - 0x036505 0D:A4F5: 21        .byte $21, $A4,      $EE   ; 0F 
- D 1 - I - 0x036508 0D:A4F8: 21        .byte $21, $A6,      $F6   ; 10 
- D 1 - I - 0x03650B 0D:A4FB: 21        .byte $21, $A8,      $FE   ; 11 



off_08_A4FE_36:
- D 1 - I - 0x03650E 0D:A4FE: 10        .byte $10   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03650F 0D:A4FF: C0        .byte $C0, $B4, $02, $F0   ; 01 
- D 1 - I - 0x036513 0D:A503: C1        .byte $C1, $B6,      $F8   ; 02 
- D 1 - I - 0x036516 0D:A506: C1        .byte $C1, $B8,      $00   ; 03 
- D 1 - I - 0x036519 0D:A509: E1        .byte $E1, $8C,      $E8   ; 04 
- D 1 - I - 0x03651C 0D:A50C: E1        .byte $E1, $8E,      $F0   ; 05 
- D 1 - I - 0x03651F 0D:A50F: E1        .byte $E1, $90,      $F8   ; 06 
- D 1 - I - 0x036522 0D:A512: E1        .byte $E1, $92,      $00   ; 07 
- D 1 - I - 0x036525 0D:A515: E1        .byte $E1, $BA,      $08   ; 08 
- D 1 - I - 0x036528 0D:A518: 01        .byte $01, $98,      $E8   ; 09 
- D 1 - I - 0x03652B 0D:A51B: 01        .byte $01, $9A,      $F0   ; 0A 
- D 1 - I - 0x03652E 0D:A51E: 01        .byte $01, $9C,      $F8   ; 0B 
- D 1 - I - 0x036531 0D:A521: 01        .byte $01, $9E,      $00   ; 0C 
- D 1 - I - 0x036534 0D:A524: 01        .byte $01, $A0,      $08   ; 0D 
- D 1 - I - 0x036537 0D:A527: 21        .byte $21, $A4,      $EE   ; 0E 
- D 1 - I - 0x03653A 0D:A52A: 21        .byte $21, $A6,      $F6   ; 0F 
- D 1 - I - 0x03653D 0D:A52D: 21        .byte $21, $A8,      $FE   ; 10 



off_08_A530_38:
- D 1 - I - 0x036540 0D:A530: 15        .byte $15   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036541 0D:A531: D0        .byte $D0, $80, $02, $E8   ; 01 
- D 1 - I - 0x036545 0D:A535: D1        .byte $D1, $82,      $F0   ; 02 
- D 1 - I - 0x036548 0D:A538: D1        .byte $D1, $84,      $F8   ; 03 
- D 1 - I - 0x03654B 0D:A53B: D1        .byte $D1, $86,      $00   ; 04 
- D 1 - I - 0x03654E 0D:A53E: D1        .byte $D1, $88,      $08   ; 05 
- D 1 - I - 0x036551 0D:A541: D1        .byte $D1, $8A,      $10   ; 06 
- D 1 - I - 0x036554 0D:A544: F1        .byte $F1, $8C,      $E8   ; 07 
- D 1 - I - 0x036557 0D:A547: F1        .byte $F1, $8E,      $F0   ; 08 
- D 1 - I - 0x03655A 0D:A54A: F1        .byte $F1, $90,      $F8   ; 09 
- D 1 - I - 0x03655D 0D:A54D: F1        .byte $F1, $92,      $00   ; 0A 
- D 1 - I - 0x036560 0D:A550: F1        .byte $F1, $94,      $08   ; 0B 
- D 1 - I - 0x036563 0D:A553: F1        .byte $F1, $96,      $10   ; 0C 
- D 1 - I - 0x036566 0D:A556: 11        .byte $11, $BC,      $E8   ; 0D 
- D 1 - I - 0x036569 0D:A559: 11        .byte $11, $BE,      $F0   ; 0E 
- D 1 - I - 0x03656C 0D:A55C: 11        .byte $11, $C0,      $F8   ; 0F 
- D 1 - I - 0x03656F 0D:A55F: 11        .byte $11, $C2,      $00   ; 10 
- D 1 - I - 0x036572 0D:A562: 11        .byte $11, $A0,      $08   ; 11 
- D 1 - I - 0x036575 0D:A565: 11        .byte $11, $A2,      $10   ; 12 
- D 1 - I - 0x036578 0D:A568: 31        .byte $31, $C4,      $F0   ; 13 
- D 1 - I - 0x03657B 0D:A56B: 31        .byte $31, $C6,      $F8   ; 14 
- D 1 - I - 0x03657E 0D:A56E: 31        .byte $31, $C8,      $00   ; 15 



off_08_A571_55:
- D 1 - I - 0x036581 0D:A571: 0D        .byte $0D   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036582 0D:A572: C0        .byte $C0, $B4, $02, $F0   ; 01 
- D 1 - I - 0x036586 0D:A576: C1        .byte $C1, $B6,      $F8   ; 02 
- D 1 - I - 0x036589 0D:A579: C1        .byte $C1, $B8,      $00   ; 03 
- D 1 - I - 0x03658C 0D:A57C: E1        .byte $E1, $8C,      $E8   ; 04 
- D 1 - I - 0x03658F 0D:A57F: E1        .byte $E1, $8E,      $F0   ; 05 
- D 1 - I - 0x036592 0D:A582: E1        .byte $E1, $90,      $F8   ; 06 
- D 1 - I - 0x036595 0D:A585: E1        .byte $E1, $92,      $00   ; 07 
- D 1 - I - 0x036598 0D:A588: E1        .byte $E1, $B4,      $08   ; 08 
- D 1 - I - 0x03659B 0D:A58B: 01        .byte $01, $98,      $E8   ; 09 
- D 1 - I - 0x03659E 0D:A58E: 01        .byte $01, $9A,      $F0   ; 0A 
- D 1 - I - 0x0365A1 0D:A591: 01        .byte $01, $9C,      $F8   ; 0B 
- D 1 - I - 0x0365A4 0D:A594: 01        .byte $01, $9E,      $00   ; 0C 
- D 1 - I - 0x0365A7 0D:A597: 01        .byte $01, $A0,      $08   ; 0D 



off_08_A59A_39:
- D 1 - I - 0x0365AA 0D:A59A: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0365AB 0D:A59B: D0        .byte $D0, $F0, $01, $FC   ; 01 
- D 1 - I - 0x0365AF 0D:A59F: F1        .byte $F1, $F2,      $FC   ; 02 



off_08_A5A2_3A:
- D 1 - I - 0x0365B2 0D:A5A2: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0365B3 0D:A5A3: D0        .byte $D0, $F4, $01, $FC   ; 01 
- D 1 - I - 0x0365B7 0D:A5A7: F1        .byte $F1, $F6,      $F8   ; 02 
- D 1 - I - 0x0365BA 0D:A5AA: F0        .byte $F0, $F6, $41, $00   ; 03 



off_08_A5AE_3B:
- D 1 - I - 0x0365BE 0D:A5AE: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0365BF 0D:A5AF: D0        .byte $D0, $F8, $01, $FC   ; 01 
- D 1 - I - 0x0365C3 0D:A5B3: F1        .byte $F1, $FA,      $F8   ; 02 
- D 1 - I - 0x0365C6 0D:A5B6: F0        .byte $F0, $FA, $41, $00   ; 03 



off_08_A5BA_56:
- D 1 - I - 0x0365CA 0D:A5BA: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0365CB 0D:A5BB: F0        .byte $F0, $F8, $81, $FC   ; 01 
- D 1 - I - 0x0365CF 0D:A5BF: D1        .byte $D1, $FA,      $F8   ; 02 
- D 1 - I - 0x0365D2 0D:A5C2: D0        .byte $D0, $FA, $C1, $00   ; 03 



off_08_A5C6_3C:
- D 1 - I - 0x0365D6 0D:A5C6: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0365D7 0D:A5C7: F0        .byte $F0, $FC, $01, $FC   ; 01 



off_08_A5CB_3D:
- D 1 - I - 0x0365DB 0D:A5CB: 06        .byte $06   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0365DC 0D:A5CC: D0        .byte $D0, $C0, $02, $FE   ; 01 
- D 1 - I - 0x0365E0 0D:A5D0: F1        .byte $F1, $C2,      $F0   ; 02 
- D 1 - I - 0x0365E3 0D:A5D3: F1        .byte $F1, $C4,      $F8   ; 03 
- D 1 - I - 0x0365E6 0D:A5D6: F1        .byte $F1, $C6,      $00   ; 04 
- D 1 - I - 0x0365E9 0D:A5D9: 11        .byte $11, $C8,      $FB   ; 05 
- D 1 - I - 0x0365EC 0D:A5DC: 11        .byte $11, $CA,      $03   ; 06 



off_08_A5DF_3E:
- D 1 - I - 0x0365EF 0D:A5DF: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0365F0 0D:A5E0: D0        .byte $D0, $C0, $02, $FF   ; 01 
- D 1 - I - 0x0365F4 0D:A5E4: F1        .byte $F1, $CC,      $F8   ; 02 
- D 1 - I - 0x0365F7 0D:A5E7: F1        .byte $F1, $CE,      $00   ; 03 
- D 1 - I - 0x0365FA 0D:A5EA: 11        .byte $11, $D0,      $F8   ; 04 
- D 1 - I - 0x0365FD 0D:A5ED: 11        .byte $11, $D2,      $00   ; 05 



off_08_A5F0_3F:
- D 1 - I - 0x036600 0D:A5F0: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036601 0D:A5F1: D2        .byte $D2, $C0, $02, $FF   ; 01 
- D 1 - I - 0x036605 0D:A5F5: F1        .byte $F1, $D4,      $F8   ; 02 
- D 1 - I - 0x036608 0D:A5F8: F1        .byte $F1, $D6,      $00   ; 03 
- D 1 - I - 0x03660B 0D:A5FB: 11        .byte $11, $D8,      $FC   ; 04 
- D 1 - I - 0x03660E 0D:A5FE: 11        .byte $11, $DA,      $04   ; 05 



off_08_A601_40:
- D 1 - I - 0x036611 0D:A601: 07        .byte $07   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036612 0D:A602: D0        .byte $D0, $DE, $02, $F8   ; 01 
- D 1 - I - 0x036616 0D:A606: D1        .byte $D1, $DC,      $00   ; 02 
- D 1 - I - 0x036619 0D:A609: E1        .byte $E1, $DC,      $F0   ; 03 
- D 1 - I - 0x03661C 0D:A60C: F1        .byte $F1, $DC,      $F8   ; 04 
- D 1 - I - 0x03661F 0D:A60F: F1        .byte $F1, $DE,      $00   ; 05 
- D 1 - I - 0x036622 0D:A612: 11        .byte $11, $C8,      $FB   ; 06 
- D 1 - I - 0x036625 0D:A615: 11        .byte $11, $CA,      $03   ; 07 



off_08_A618_41:
- D 1 - I - 0x036628 0D:A618: 06        .byte $06   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036629 0D:A619: F0        .byte $F0, $DC, $82, $F8   ; 01 
- D 1 - I - 0x03662D 0D:A61D: F1        .byte $F1, $DC,      $00   ; 02 
- D 1 - I - 0x036630 0D:A620: F1        .byte $F1, $DE,      $08   ; 03 
- D 1 - I - 0x036633 0D:A623: 01        .byte $01, $DE,      $F0   ; 04 
- D 1 - I - 0x036636 0D:A626: 11        .byte $11, $C8,      $FB   ; 05 
- D 1 - I - 0x036639 0D:A629: 11        .byte $11, $CA,      $03   ; 06 



off_08_A62C_42:
- D 1 - I - 0x03663C 0D:A62C: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03663D 0D:A62D: 10        .byte $10, $DE, $02, $F0   ; 01 
- D 1 - I - 0x036641 0D:A631: 11        .byte $11, $D4,      $F8   ; 02 
- D 1 - I - 0x036644 0D:A634: 11        .byte $11, $D6,      $00   ; 03 
- D 1 - I - 0x036647 0D:A637: 11        .byte $11, $DC,      $08   ; 04 



off_08_A63A_43:
- D 1 - I - 0x03664A 0D:A63A: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03664B 0D:A63B: 10        .byte $10, $E0, $02, $F0   ; 01 
- D 1 - I - 0x03664F 0D:A63F: 11        .byte $11, $E2,      $F8   ; 02 
- D 1 - I - 0x036652 0D:A642: 10        .byte $10, $E2, $41, $00   ; 03 
- D 1 - I - 0x036656 0D:A646: 11        .byte $11, $E0,      $08   ; 04 



off_08_A649_44:
- D 1 - I - 0x036659 0D:A649: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03665A 0D:A64A: F0        .byte $F0, $EA, $02, $F8   ; 01 
- D 1 - I - 0x03665E 0D:A64E: F1        .byte $F1, $EC,      $00   ; 02 



off_08_A651_45:
- D 1 - I - 0x036661 0D:A651: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036662 0D:A652: F0        .byte $F0, $EE, $02, $F8   ; 01 
- D 1 - I - 0x036666 0D:A656: F0        .byte $F0, $EC, $82, $00   ; 02 



off_08_A65A_46:
- D 1 - I - 0x03666A 0D:A65A: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03666B 0D:A65B: D0        .byte $D0, $B6, $01, $E8   ; 01 
- D 1 - I - 0x03666F 0D:A65F: E0        .byte $E0, $AE, $02, $E4   ; 02 
- D 1 - I - 0x036673 0D:A663: E1        .byte $E1, $B0,      $EC   ; 03 
- D 1 - I - 0x036676 0D:A666: F1        .byte $F1, $B2,      $F4   ; 04 
- D 1 - I - 0x036679 0D:A669: 11        .byte $11, $B4,      $F4   ; 05 



off_08_A66C_47:
- D 1 - I - 0x03667C 0D:A66C: 08        .byte $08   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03667D 0D:A66D: D2        .byte $D2, $C6, $01, $FD   ; 01 
- D 1 - I - 0x036681 0D:A671: E0        .byte $E0, $B8, $02, $F0   ; 02 
- D 1 - I - 0x036685 0D:A675: E1        .byte $E1, $BA,      $F8   ; 03 
- D 1 - I - 0x036688 0D:A678: E1        .byte $E1, $BC,      $00   ; 04 
- D 1 - I - 0x03668B 0D:A67B: 01        .byte $01, $BE,      $F4   ; 05 
- D 1 - I - 0x03668E 0D:A67E: 01        .byte $01, $C0,      $FC   ; 06 
- D 1 - I - 0x036691 0D:A681: 11        .byte $11, $C2,      $F4   ; 07 
- D 1 - I - 0x036694 0D:A684: 11        .byte $11, $C4,      $FC   ; 08 



off_08_A687_48:
- D 1 - I - 0x036697 0D:A687: 0A        .byte $0A   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036698 0D:A688: CE        .byte $CE, $AC, $01, $FC   ; 01 
- D 1 - I - 0x03669C 0D:A68C: D0        .byte $D0, $80, $02, $F4   ; 02 
- D 1 - I - 0x0366A0 0D:A690: D1        .byte $D1, $82,      $FC   ; 03 
- D 1 - I - 0x0366A3 0D:A693: D1        .byte $D1, $84,      $04   ; 04 
- D 1 - I - 0x0366A6 0D:A696: F1        .byte $F1, $86,      $F4   ; 05 
- D 1 - I - 0x0366A9 0D:A699: F1        .byte $F1, $88,      $FC   ; 06 
- D 1 - I - 0x0366AC 0D:A69C: F1        .byte $F1, $8A,      $04   ; 07 
- D 1 - I - 0x0366AF 0D:A69F: 11        .byte $11, $8C,      $F4   ; 08 
- D 1 - I - 0x0366B2 0D:A6A2: 11        .byte $11, $8E,      $FC   ; 09 
- D 1 - I - 0x0366B5 0D:A6A5: 11        .byte $11, $90,      $04   ; 0A 



off_08_A6A8_49:
- D 1 - I - 0x0366B8 0D:A6A8: 0A        .byte $0A   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0366B9 0D:A6A9: CE        .byte $CE, $AC, $01, $FC   ; 01 
- D 1 - I - 0x0366BD 0D:A6AD: D0        .byte $D0, $80, $02, $F4   ; 02 
- D 1 - I - 0x0366C1 0D:A6B1: D1        .byte $D1, $92,      $FC   ; 03 
- D 1 - I - 0x0366C4 0D:A6B4: D1        .byte $D1, $84,      $04   ; 04 
- D 1 - I - 0x0366C7 0D:A6B7: F1        .byte $F1, $86,      $F4   ; 05 
- D 1 - I - 0x0366CA 0D:A6BA: F1        .byte $F1, $94,      $FC   ; 06 
- D 1 - I - 0x0366CD 0D:A6BD: F1        .byte $F1, $8A,      $04   ; 07 
- D 1 - I - 0x0366D0 0D:A6C0: 11        .byte $11, $8C,      $F4   ; 08 
- D 1 - I - 0x0366D3 0D:A6C3: 11        .byte $11, $96,      $FC   ; 09 
- D 1 - I - 0x0366D6 0D:A6C6: 11        .byte $11, $98,      $04   ; 0A 



off_08_A6C9_4A:
- D 1 - I - 0x0366D9 0D:A6C9: 0E        .byte $0E   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0366DA 0D:A6CA: CE        .byte $CE, $AC, $01, $FC   ; 01 
- D 1 - I - 0x0366DE 0D:A6CE: D0        .byte $D0, $80, $02, $F4   ; 02 
- D 1 - I - 0x0366E2 0D:A6D2: D1        .byte $D1, $92,      $FC   ; 03 
- D 1 - I - 0x0366E5 0D:A6D5: D1        .byte $D1, $9C,      $04   ; 04 
- D 1 - I - 0x0366E8 0D:A6D8: F1        .byte $F1, $86,      $F4   ; 05 
- D 1 - I - 0x0366EB 0D:A6DB: F1        .byte $F1, $A0,      $FC   ; 06 
- D 1 - I - 0x0366EE 0D:A6DE: F1        .byte $F1, $A2,      $04   ; 07 
- D 1 - I - 0x0366F1 0D:A6E1: 11        .byte $11, $8C,      $F4   ; 08 
- D 1 - I - 0x0366F4 0D:A6E4: 11        .byte $11, $A6,      $FC   ; 09 
- D 1 - I - 0x0366F7 0D:A6E7: 11        .byte $11, $A8,      $04   ; 0A 
- D 1 - I - 0x0366FA 0D:A6EA: B1        .byte $B1, $9A,      $04   ; 0B 
- D 1 - I - 0x0366FD 0D:A6ED: D1        .byte $D1, $9E,      $04   ; 0C 
- D 1 - I - 0x036700 0D:A6F0: F1        .byte $F1, $A4,      $04   ; 0D 
- D 1 - I - 0x036703 0D:A6F3: 11        .byte $11, $AA,      $04   ; 0E 



off_08_A6F6_4B:
- D 1 - I - 0x036706 0D:A6F6: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036707 0D:A6F7: F0        .byte $F0, $C8, $03, $F8   ; 01 
- D 1 - I - 0x03670B 0D:A6FB: F1        .byte $F1, $CA,      $00   ; 02 



off_08_A6FE_4C:
- D 1 - I - 0x03670E 0D:A6FE: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03670F 0D:A6FF: F0        .byte $F0, $E0, $03, $F8   ; 01 
- D 1 - I - 0x036713 0D:A703: F1        .byte $F1, $E2,      $00   ; 02 



off_08_A706_4D:
- D 1 - I - 0x036716 0D:A706: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036717 0D:A707: D0        .byte $D0, $E4, $03, $FC   ; 01 
- D 1 - I - 0x03671B 0D:A70B: F1        .byte $F1, $E6,      $F8   ; 02 
- D 1 - I - 0x03671E 0D:A70E: F0        .byte $F0, $E6, $C3, $00   ; 03 



off_08_A712_4E:
- D 1 - I - 0x036722 0D:A712: 07        .byte $07   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036723 0D:A713: 90        .byte $90, $E4, $43, $FC   ; 01 
- D 1 - I - 0x036727 0D:A717: B0        .byte $B0, $E6, $03, $F8   ; 02 
- D 1 - I - 0x03672B 0D:A71B: D1        .byte $D1, $E8,      $F8   ; 03 
- D 1 - I - 0x03672E 0D:A71E: 11        .byte $11, $EA,      $F8   ; 04 
- D 1 - I - 0x036731 0D:A721: B0        .byte $B0, $E6, $C3, $00   ; 05 
- D 1 - I - 0x036735 0D:A725: D1        .byte $D1, $E8,      $00   ; 06 
- D 1 - I - 0x036738 0D:A728: 11        .byte $11, $EA,      $00   ; 07 



off_08_A72B_4F:
- D 1 - I - 0x03673B 0D:A72B: 0B        .byte $0B   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03673C 0D:A72C: B0        .byte $B0, $E4, $03, $FC   ; 01 
- D 1 - I - 0x036740 0D:A730: D1        .byte $D1, $E6,      $F8   ; 02 
- D 1 - I - 0x036743 0D:A733: F1        .byte $F1, $E8,      $F8   ; 03 
- D 1 - I - 0x036746 0D:A736: 11        .byte $11, $EA,      $F8   ; 04 
- D 1 - I - 0x036749 0D:A739: 31        .byte $31, $EA,      $F8   ; 05 
- D 1 - I - 0x03674C 0D:A73C: 51        .byte $51, $EA,      $F8   ; 06 
- D 1 - I - 0x03674F 0D:A73F: D0        .byte $D0, $E6, $C3, $00   ; 07 
- D 1 - I - 0x036753 0D:A743: F1        .byte $F1, $E8,      $00   ; 08 
- D 1 - I - 0x036756 0D:A746: 11        .byte $11, $EA,      $00   ; 09 
- D 1 - I - 0x036759 0D:A749: 31        .byte $31, $EA,      $00   ; 0A 
- D 1 - I - 0x03675C 0D:A74C: 51        .byte $51, $EA,      $00   ; 0B 



off_08_A74F_50:
- D 1 - I - 0x03675F 0D:A74F: 0D        .byte $0D   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036760 0D:A750: 90        .byte $90, $E4, $03, $FC   ; 01 
- D 1 - I - 0x036764 0D:A754: B1        .byte $B1, $E6,      $F8   ; 02 
- D 1 - I - 0x036767 0D:A757: D1        .byte $D1, $E8,      $F8   ; 03 
- D 1 - I - 0x03676A 0D:A75A: F1        .byte $F1, $E8,      $F8   ; 04 
- D 1 - I - 0x03676D 0D:A75D: 11        .byte $11, $EA,      $F8   ; 05 
- D 1 - I - 0x036770 0D:A760: 31        .byte $31, $EA,      $F8   ; 06 
- D 1 - I - 0x036773 0D:A763: 51        .byte $51, $EA,      $F8   ; 07 
- D 1 - I - 0x036776 0D:A766: B0        .byte $B0, $E6, $C3, $00   ; 08 
- D 1 - I - 0x03677A 0D:A76A: D1        .byte $D1, $E8,      $00   ; 09 
- D 1 - I - 0x03677D 0D:A76D: F1        .byte $F1, $E8,      $00   ; 0A 
- D 1 - I - 0x036780 0D:A770: 11        .byte $11, $EA,      $00   ; 0B 
- D 1 - I - 0x036783 0D:A773: 31        .byte $31, $EA,      $00   ; 0C 
- D 1 - I - 0x036786 0D:A776: 51        .byte $51, $EA,      $00   ; 0D 



off_08_A779_51:
- D 1 - I - 0x036789 0D:A779: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03678A 0D:A77A: F0        .byte $F0, $CC, $03, $FC   ; 01 



off_08_A77E_52:
- D 1 - I - 0x03678E 0D:A77E: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03678F 0D:A77F: D0        .byte $D0, $CE, $03, $FC   ; 01 
- D 1 - I - 0x036793 0D:A783: F1        .byte $F1, $D0,      $FC   ; 02 



off_08_A786_53:
- D 1 - I - 0x036796 0D:A786: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036797 0D:A787: B0        .byte $B0, $CE, $03, $FC   ; 01 
- D 1 - I - 0x03679B 0D:A78B: D1        .byte $D1, $D0,      $FC   ; 02 
- D 1 - I - 0x03679E 0D:A78E: F1        .byte $F1, $D2,      $FC   ; 03 



off_08_A791_54:
- D 1 - I - 0x0367A1 0D:A791: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0367A2 0D:A792: 90        .byte $90, $CE, $03, $FC   ; 01 
- D 1 - I - 0x0367A6 0D:A796: B1        .byte $B1, $D0,      $FC   ; 02 
- D 1 - I - 0x0367A9 0D:A799: D1        .byte $D1, $D2,      $FC   ; 03 
- D 1 - I - 0x0367AC 0D:A79C: F1        .byte $F1, $D4,      $FC   ; 04 



off_08_A79F_57:
- D 1 - I - 0x0367AF 0D:A79F: 10        .byte $10   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0367B0 0D:A7A0: C0        .byte $C0, $80, $02, $F8   ; 01 
- D 1 - I - 0x0367B4 0D:A7A4: C1        .byte $C1, $82,      $00   ; 02 
- D 1 - I - 0x0367B7 0D:A7A7: C1        .byte $C1, $84,      $08   ; 03 
- D 1 - I - 0x0367BA 0D:A7AA: E1        .byte $E1, $8A,      $F0   ; 04 
- D 1 - I - 0x0367BD 0D:A7AD: E1        .byte $E1, $8C,      $F8   ; 05 
- D 1 - I - 0x0367C0 0D:A7B0: E1        .byte $E1, $8E,      $00   ; 06 
- D 1 - I - 0x0367C3 0D:A7B3: E1        .byte $E1, $90,      $08   ; 07 
- D 1 - I - 0x0367C6 0D:A7B6: 01        .byte $01, $92,      $F0   ; 08 
- D 1 - I - 0x0367C9 0D:A7B9: 01        .byte $01, $94,      $F8   ; 09 
- D 1 - I - 0x0367CC 0D:A7BC: 01        .byte $01, $96,      $00   ; 0A 
- D 1 - I - 0x0367CF 0D:A7BF: 01        .byte $01, $98,      $08   ; 0B 
- D 1 - I - 0x0367D2 0D:A7C2: 21        .byte $21, $9A,      $F5   ; 0C 
- D 1 - I - 0x0367D5 0D:A7C5: 21        .byte $21, $9C,      $FD   ; 0D 
- D 1 - I - 0x0367D8 0D:A7C8: 21        .byte $21, $9E,      $FB   ; 0E 
- D 1 - I - 0x0367DB 0D:A7CB: C2        .byte $C2, $86, $01, $10   ; 0F 
- D 1 - I - 0x0367DF 0D:A7CF: CD        .byte $CD, $88,      $18   ; 10 



off_08_A7D2_58:
- D 1 - I - 0x0367E2 0D:A7D2: 10        .byte $10   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0367E3 0D:A7D3: C0        .byte $C0, $80, $02, $F8   ; 01 
- D 1 - I - 0x0367E7 0D:A7D7: C1        .byte $C1, $82,      $00   ; 02 
- D 1 - I - 0x0367EA 0D:A7DA: C1        .byte $C1, $84,      $08   ; 03 
- D 1 - I - 0x0367ED 0D:A7DD: E1        .byte $E1, $A0,      $F0   ; 04 
- D 1 - I - 0x0367F0 0D:A7E0: E1        .byte $E1, $A2,      $F8   ; 05 
- D 1 - I - 0x0367F3 0D:A7E3: E1        .byte $E1, $A4,      $00   ; 06 
- D 1 - I - 0x0367F6 0D:A7E6: E1        .byte $E1, $A6,      $08   ; 07 
- D 1 - I - 0x0367F9 0D:A7E9: 01        .byte $01, $A8,      $F0   ; 08 
- D 1 - I - 0x0367FC 0D:A7EC: 01        .byte $01, $AA,      $F8   ; 09 
- D 1 - I - 0x0367FF 0D:A7EF: 01        .byte $01, $AC,      $00   ; 0A 
- D 1 - I - 0x036802 0D:A7F2: 01        .byte $01, $AE,      $08   ; 0B 
- D 1 - I - 0x036805 0D:A7F5: 21        .byte $21, $B0,      $F0   ; 0C 
- D 1 - I - 0x036808 0D:A7F8: 21        .byte $21, $B2,      $F8   ; 0D 
- D 1 - I - 0x03680B 0D:A7FB: 21        .byte $21, $B4,      $00   ; 0E 
- D 1 - I - 0x03680E 0D:A7FE: C2        .byte $C2, $86, $01, $10   ; 0F 
- D 1 - I - 0x036812 0D:A802: CD        .byte $CD, $88,      $18   ; 10 



off_08_A805_59:
- D 1 - I - 0x036815 0D:A805: 12        .byte $12   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036816 0D:A806: C0        .byte $C0, $80, $02, $F8   ; 01 
- D 1 - I - 0x03681A 0D:A80A: C1        .byte $C1, $82,      $00   ; 02 
- D 1 - I - 0x03681D 0D:A80D: C1        .byte $C1, $84,      $08   ; 03 
- D 1 - I - 0x036820 0D:A810: FD        .byte $FD, $B6,      $E8   ; 04 
- D 1 - I - 0x036823 0D:A813: E1        .byte $E1, $BA,      $F0   ; 05 
- D 1 - I - 0x036826 0D:A816: E1        .byte $E1, $BC,      $F8   ; 06 
- D 1 - I - 0x036829 0D:A819: E1        .byte $E1, $BE,      $00   ; 07 
- D 1 - I - 0x03682C 0D:A81C: E1        .byte $E1, $C0,      $08   ; 08 
- D 1 - I - 0x03682F 0D:A81F: 1D        .byte $1D, $B8,      $E8   ; 09 
- D 1 - I - 0x036832 0D:A822: 01        .byte $01, $C2,      $F0   ; 0A 
- D 1 - I - 0x036835 0D:A825: 01        .byte $01, $C4,      $F8   ; 0B 
- D 1 - I - 0x036838 0D:A828: 01        .byte $01, $C6,      $00   ; 0C 
- D 1 - I - 0x03683B 0D:A82B: 01        .byte $01, $C8,      $08   ; 0D 
- D 1 - I - 0x03683E 0D:A82E: 21        .byte $21, $CA,      $F0   ; 0E 
- D 1 - I - 0x036841 0D:A831: 21        .byte $21, $CC,      $F8   ; 0F 
- D 1 - I - 0x036844 0D:A834: 21        .byte $21, $CE,      $00   ; 10 
- D 1 - I - 0x036847 0D:A837: C2        .byte $C2, $86, $01, $10   ; 11 
- D 1 - I - 0x03684B 0D:A83B: CD        .byte $CD, $88,      $18   ; 12 



off_08_A83E_5A:
- D 1 - I - 0x03684E 0D:A83E: 10        .byte $10   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03684F 0D:A83F: C0        .byte $C0, $80, $02, $F8   ; 01 
- D 1 - I - 0x036853 0D:A843: C1        .byte $C1, $82,      $00   ; 02 
- D 1 - I - 0x036856 0D:A846: C1        .byte $C1, $D0,      $08   ; 03 
- D 1 - I - 0x036859 0D:A849: E1        .byte $E1, $D2,      $F0   ; 04 
- D 1 - I - 0x03685C 0D:A84C: E1        .byte $E1, $D4,      $F8   ; 05 
- D 1 - I - 0x03685F 0D:A84F: E1        .byte $E1, $D6,      $00   ; 06 
- D 1 - I - 0x036862 0D:A852: E1        .byte $E1, $90,      $08   ; 07 
- D 1 - I - 0x036865 0D:A855: 01        .byte $01, $D8,      $F0   ; 08 
- D 1 - I - 0x036868 0D:A858: 01        .byte $01, $DA,      $F8   ; 09 
- D 1 - I - 0x03686B 0D:A85B: 01        .byte $01, $96,      $00   ; 0A 
- D 1 - I - 0x03686E 0D:A85E: 01        .byte $01, $98,      $08   ; 0B 
- D 1 - I - 0x036871 0D:A861: 21        .byte $21, $E0,      $F5   ; 0C 
- D 1 - I - 0x036874 0D:A864: 21        .byte $21, $9C,      $FD   ; 0D 
- D 1 - I - 0x036877 0D:A867: 21        .byte $21, $9E,      $05   ; 0E 
- D 1 - I - 0x03687A 0D:A86A: 20        .byte $20, $DC, $01, $E5   ; 0F 
- D 1 - I - 0x03687E 0D:A86E: 21        .byte $21, $DE,      $ED   ; 10 



off_08_A871_5B:
- D 1 - I - 0x036881 0D:A871: 11        .byte $11   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036882 0D:A872: C0        .byte $C0, $80, $02, $F8   ; 01 
- D 1 - I - 0x036886 0D:A876: C1        .byte $C1, $82,      $00   ; 02 
- D 1 - I - 0x036889 0D:A879: C1        .byte $C1, $D0,      $08   ; 03 
- D 1 - I - 0x03688C 0D:A87C: E1        .byte $E1, $E2,      $D8   ; 04 
- D 1 - I - 0x03688F 0D:A87F: E1        .byte $E1, $E4,      $E0   ; 05 
- D 1 - I - 0x036892 0D:A882: E9        .byte $E9, $E6,      $E8   ; 06 
- D 1 - I - 0x036895 0D:A885: E1        .byte $E1, $E8,      $F0   ; 07 
- D 1 - I - 0x036898 0D:A888: E1        .byte $E1, $EA,      $F8   ; 08 
- D 1 - I - 0x03689B 0D:A88B: E1        .byte $E1, $D6,      $00   ; 09 
- D 1 - I - 0x03689E 0D:A88E: E1        .byte $E1, $A6,      $08   ; 0A 
- D 1 - I - 0x0368A1 0D:A891: 01        .byte $01, $EC,      $F0   ; 0B 
- D 1 - I - 0x0368A4 0D:A894: 01        .byte $01, $EE,      $F8   ; 0C 
- D 1 - I - 0x0368A7 0D:A897: 01        .byte $01, $AC,      $00   ; 0D 
- D 1 - I - 0x0368AA 0D:A89A: 01        .byte $01, $AE,      $08   ; 0E 
- D 1 - I - 0x0368AD 0D:A89D: 21        .byte $21, $B0,      $F0   ; 0F 
- D 1 - I - 0x0368B0 0D:A8A0: 21        .byte $21, $B2,      $F8   ; 10 
- D 1 - I - 0x0368B3 0D:A8A3: 21        .byte $21, $B4,      $00   ; 11 



off_08_A8A6_5C:
- D 1 - I - 0x0368B6 0D:A8A6: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0368B7 0D:A8A7: F0        .byte $F0, $F6, $C3, $F8   ; 01 
- D 1 - I - 0x0368BB 0D:A8AB: F1        .byte $F1, $F4,      $00   ; 02 



off_08_A8AE_5D:
- D 1 - I - 0x0368BE 0D:A8AE: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0368BF 0D:A8AF: F0        .byte $F0, $F0, $03, $F8   ; 01 
- D 1 - I - 0x0368C3 0D:A8B3: F1        .byte $F1, $F2,      $00   ; 02 



off_08_A8B6_5E:
- D 1 - I - 0x0368C6 0D:A8B6: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0368C7 0D:A8B7: F0        .byte $F0, $F4, $03, $F8   ; 01 
- D 1 - I - 0x0368CB 0D:A8BB: F1        .byte $F1, $F6,      $00   ; 02 



off_08_A8BE_5F:
- D 1 - I - 0x0368CE 0D:A8BE: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0368CF 0D:A8BF: F0        .byte $F0, $F2, $C3, $F8   ; 01 
- D 1 - I - 0x0368D3 0D:A8C3: F1        .byte $F1, $F0,      $00   ; 02 



off_08_A8C6_60:
- D 1 - I - 0x0368D6 0D:A8C6: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0368D7 0D:A8C7: E0        .byte $E0, $80, $02, $F8   ; 01 
- D 1 - I - 0x0368DB 0D:A8CB: 01        .byte $01, $82,      $F8   ; 02 
- D 1 - I - 0x0368DE 0D:A8CE: 01        .byte $01, $84,      $00   ; 03 



off_08_A8D1_61:
- D 1 - I - 0x0368E1 0D:A8D1: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0368E2 0D:A8D2: E0        .byte $E0, $A0, $02, $F8   ; 01 
- D 1 - I - 0x0368E6 0D:A8D6: 01        .byte $01, $A2,      $F8   ; 02 
- D 1 - I - 0x0368E9 0D:A8D9: 01        .byte $01, $A4,      $00   ; 03 



off_08_A8DC_62:
- D 1 - I - 0x0368EC 0D:A8DC: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0368ED 0D:A8DD: E0        .byte $E0, $C0, $01, $F8   ; 01 
- D 1 - I - 0x0368F1 0D:A8E1: 01        .byte $01, $C2,      $F8   ; 02 
- D 1 - I - 0x0368F4 0D:A8E4: 01        .byte $01, $C4,      $00   ; 03 



off_08_A8E7_63:
- D 1 - I - 0x0368F7 0D:A8E7: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0368F8 0D:A8E8: E0        .byte $E0, $86, $02, $F8   ; 01 
- D 1 - I - 0x0368FC 0D:A8EC: 01        .byte $01, $88,      $F8   ; 02 
- D 1 - I - 0x0368FF 0D:A8EF: 01        .byte $01, $8A,      $00   ; 03 



off_08_A8F2_64:
- D 1 - I - 0x036902 0D:A8F2: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036903 0D:A8F3: E0        .byte $E0, $A6, $02, $F8   ; 01 
- D 1 - I - 0x036907 0D:A8F7: 01        .byte $01, $A8,      $F8   ; 02 
- D 1 - I - 0x03690A 0D:A8FA: 01        .byte $01, $AA,      $00   ; 03 



off_08_A8FD_65:
- D 1 - I - 0x03690D 0D:A8FD: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03690E 0D:A8FE: E0        .byte $E0, $C6, $01, $F8   ; 01 
- D 1 - I - 0x036912 0D:A902: 01        .byte $01, $C8,      $F8   ; 02 
- D 1 - I - 0x036915 0D:A905: 01        .byte $01, $CA,      $00   ; 03 



off_08_A908_66:
- D 1 - I - 0x036918 0D:A908: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036919 0D:A909: E0        .byte $E0, $8C, $02, $F8   ; 01 
- D 1 - I - 0x03691D 0D:A90D: E1        .byte $E1, $90,      $00   ; 02 
- D 1 - I - 0x036920 0D:A910: 01        .byte $01, $8E,      $F8   ; 03 
- D 1 - I - 0x036923 0D:A913: 01        .byte $01, $92,      $00   ; 04 



off_08_A916_67:
- D 1 - I - 0x036926 0D:A916: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036927 0D:A917: E0        .byte $E0, $DE, $02, $F8   ; 01 
- D 1 - I - 0x03692B 0D:A91B: E1        .byte $E1, $B0,      $00   ; 02 
- D 1 - I - 0x03692E 0D:A91E: 01        .byte $01, $AE,      $F8   ; 03 
- D 1 - I - 0x036931 0D:A921: 01        .byte $01, $B2,      $00   ; 04 



off_08_A924_68:
- D 1 - I - 0x036934 0D:A924: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036935 0D:A925: E0        .byte $E0, $CC, $01, $F8   ; 01 
- D 1 - I - 0x036939 0D:A929: E1        .byte $E1, $CE,      $00   ; 02 
- D 1 - I - 0x03693C 0D:A92C: 01        .byte $01, $8E,      $F8   ; 03 
- D 1 - I - 0x03693F 0D:A92F: 01        .byte $01, $92,      $00   ; 04 



off_08_A932_69:
- D 1 - I - 0x036942 0D:A932: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036943 0D:A933: F0        .byte $F0, $94, $03, $F0   ; 01 
- D 1 - I - 0x036947 0D:A937: F1        .byte $F1, $96,      $F8   ; 02 
- D 1 - I - 0x03694A 0D:A93A: F0        .byte $F0, $96, $43, $00   ; 03 
- D 1 - I - 0x03694E 0D:A93E: F1        .byte $F1, $94,      $08   ; 04 



off_08_A941_6A:
- - - - - - 0x036951 0D:A941: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- - - - - - 0x036952 0D:A942: F0        .byte $F0, $98, $03, $F0   ; 01 
- - - - - - 0x036956 0D:A946: F1        .byte $F1, $9A,      $F8   ; 02 
- - - - - - 0x036959 0D:A949: F0        .byte $F0, $9A, $43, $00   ; 03 
- - - - - - 0x03695D 0D:A94D: F1        .byte $F1, $98,      $08   ; 04 



off_08_A950_6B:
- D 1 - I - 0x036960 0D:A950: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036961 0D:A951: F0        .byte $F0, $9C, $03, $FC   ; 01 



off_08_A955_6C:
- D 1 - I - 0x036965 0D:A955: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036966 0D:A956: D0        .byte $D0, $B4, $03, $FC   ; 01 
- D 1 - I - 0x03696A 0D:A95A: F1        .byte $F1, $B6,      $FC   ; 02 



off_08_A95D_6D:
- D 1 - I - 0x03696D 0D:A95D: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03696E 0D:A95E: F0        .byte $F0, $B8, $03, $F8   ; 01 
- D 1 - I - 0x036972 0D:A962: F1        .byte $F1, $BA,      $00   ; 02 



off_08_A965_6E:
- D 1 - I - 0x036975 0D:A965: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036976 0D:A966: F0        .byte $F0, $BC, $03, $F4   ; 01 
- D 1 - I - 0x03697A 0D:A96A: F1        .byte $F1, $BE,      $FC   ; 02 


; bzk garbage
- - - - - - 0x03697D 0D:A96D: F1        .byte $F1   ; 
- - - - - - 0x03697E 0D:A96E: D0        .byte $D0   ; 
- - - - - - 0x03697F 0D:A96F: 04        .byte $04   ; 



off_08_A970_6F:
- D 1 - I - 0x036980 0D:A970: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036981 0D:A971: F0        .byte $F0, $D2, $03, $F4   ; 01 
- D 1 - I - 0x036985 0D:A975: F1        .byte $F1, $D4,      $FC   ; 02 


; bzk garbage
- - - - - - 0x036988 0D:A978: F0        .byte $F0   ; 
- - - - - - 0x036989 0D:A979: D2        .byte $D2   ; 
- - - - - - 0x03698A 0D:A97A: 43        .byte $43   ; 
- - - - - - 0x03698B 0D:A97B: 04        .byte $04   ; 



off_08_A97C_70:
- D 1 - I - 0x03698C 0D:A97C: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03698D 0D:A97D: F0        .byte $F0, $EC, $01, $00   ; 01 



off_08_A981_71:
- D 1 - I - 0x036991 0D:A981: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036992 0D:A982: F0        .byte $F0, $EE, $01, $F8   ; 01 
- D 1 - I - 0x036996 0D:A986: F1        .byte $F1, $F0,      $00   ; 02 



off_08_A989_72:
- D 1 - I - 0x036999 0D:A989: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03699A 0D:A98A: F0        .byte $F0, $D6, $01, $F8   ; 01 
- D 1 - I - 0x03699E 0D:A98E: F0        .byte $F0, $D6, $41, $00   ; 02 



off_08_A992_73:
- D 1 - I - 0x0369A2 0D:A992: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0369A3 0D:A993: F0        .byte $F0, $D8, $01, $F8   ; 01 
- D 1 - I - 0x0369A7 0D:A997: F0        .byte $F0, $D8, $41, $00   ; 02 


off_05_A99B_6F:
- D 1 - I - 0x0369AB 0D:A99B: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0369AC 0D:A99C: F0        .byte $F0, $F4, $81, $F8   ; 01 



off_08_A9A0_74:
- D 1 - I - 0x0369B0 0D:A9A0: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0369B1 0D:A9A1: F0        .byte $F0, $F4, $01, $FC   ; 01 



off_08_A9A5_10:
- D 1 - I - 0x0369B5 0D:A9A5: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0369B6 0D:A9A6: F0        .byte $F0, $F6, $81, $FC   ; 01 



off_08_A9AA_75:
- D 1 - I - 0x0369BA 0D:A9AA: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0369BB 0D:A9AB: F0        .byte $F0, $F6, $01, $FC   ; 01 



off_08_A9AF_11:
- D 1 - I - 0x0369BF 0D:A9AF: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0369C0 0D:A9B0: F0        .byte $F0, $F8, $81, $F8   ; 01 



off_08_A9B4_76:
- D 1 - I - 0x0369C4 0D:A9B4: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0369C5 0D:A9B5: F0        .byte $F0, $F8, $01, $F8   ; 01 


off_05_A9B9_6E:
- D 1 - I - 0x0369C9 0D:A9B9: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0369CA 0D:A9BA: F0        .byte $F0, $FA, $81, $F8   ; 01 



off_08_A9BE_77:
- D 1 - I - 0x0369CE 0D:A9BE: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0369CF 0D:A9BF: F0        .byte $F0, $FA, $01, $F8   ; 01 



off_08_A9C3_0F:
- D 1 - I - 0x0369D3 0D:A9C3: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0369D4 0D:A9C4: F0        .byte $F0, $FC, $01, $F8   ; 01 



off_08_A9C8_78:
- D 1 - I - 0x0369D8 0D:A9C8: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0369D9 0D:A9C9: F0        .byte $F0, $AC, $01, $FC   ; 01 



off_08_A9CD_79:
- - - - - - 0x0369DD 0D:A9CD: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- - - - - - 0x0369DE 0D:A9CE: F0        .byte $F0, $AC, $01, $FC   ; 01 



off_08_A9D2_7A:
- D 1 - I - 0x0369E2 0D:A9D2: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0369E3 0D:A9D3: F0        .byte $F0, $84, $01, $FC   ; 01 



off_08_A9D7_7B:
- D 1 - I - 0x0369E7 0D:A9D7: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0369E8 0D:A9D8: F0        .byte $F0, $8A, $01, $FC   ; 01 



off_08_A9DC_7C:
- D 1 - I - 0x0369EC 0D:A9DC: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0369ED 0D:A9DD: F0        .byte $F0, $90, $01, $FC   ; 01 



off_08_A9E1_7D:
- D 1 - I - 0x0369F1 0D:A9E1: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0369F2 0D:A9E2: F0        .byte $F0, $80, $01, $FC   ; 01 



off_08_A9E6_7E:
- D 1 - I - 0x0369F6 0D:A9E6: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0369F7 0D:A9E7: F0        .byte $F0, $86, $01, $FC   ; 01 



off_08_A9EB_7F:
- D 1 - I - 0x0369FB 0D:A9EB: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0369FC 0D:A9EC: F0        .byte $F0, $8C, $01, $FC   ; 01 



off_06_A9F0_50:
- D 1 - I - 0x036A00 0D:A9F0: 06        .byte $06   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036A01 0D:A9F1: DA        .byte $DA, $C8, $43, $01   ; 01 
- D 1 - I - 0x036A05 0D:A9F5: F9        .byte $F9, $D4,      $F1   ; 02 
- D 1 - I - 0x036A08 0D:A9F8: FC        .byte $FC, $EC, $83, $01   ; 03 
- D 1 - I - 0x036A0C 0D:A9FC: E8        .byte $E8, $D6, $03, $F9   ; 04 
- D 1 - I - 0x036A10 0D:AA00: 09        .byte $09, $C8,      $F9   ; 05 
- D 1 - I - 0x036A13 0D:AA03: 13        .byte $13, $C8,      $09   ; 06 



off_06_AA06_51:
- D 1 - I - 0x036A16 0D:AA06: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036A17 0D:AA07: E0        .byte $E0, $E8, $03, $00   ; 01 
- D 1 - I - 0x036A1B 0D:AA0B: 01        .byte $01, $E4,      $F8   ; 02 
- D 1 - I - 0x036A1E 0D:AA0E: 01        .byte $01, $E6,      $00   ; 03 



off_06_AA11_52:
- D 1 - I - 0x036A21 0D:AA11: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036A22 0D:AA12: F4        .byte $F4, $D4, $03, $00   ; 01 
- D 1 - I - 0x036A26 0D:AA16: FB        .byte $FB, $D8,      $F8   ; 02 
- D 1 - I - 0x036A29 0D:AA19: FA        .byte $FA, $C2, $C3, $00   ; 03 



off_06_AA1D_53:
- D 1 - I - 0x036A2D 0D:AA1D: 09        .byte $09   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036A2E 0D:AA1E: D8        .byte $D8, $C6, $C3, $F1   ; 01 
- D 1 - I - 0x036A32 0D:AA22: DF        .byte $DF, $C6,      $F9   ; 02 
- D 1 - I - 0x036A35 0D:AA25: E0        .byte $E0, $CE, $43, $01   ; 03 
- D 1 - I - 0x036A39 0D:AA29: DF        .byte $DF, $C6,      $09   ; 04 
- D 1 - I - 0x036A3C 0D:AA2C: 01        .byte $01, $C2,      $F9   ; 05 
- D 1 - I - 0x036A3F 0D:AA2F: EE        .byte $EE, $DA, $03, $E9   ; 06 
- D 1 - I - 0x036A43 0D:AA33: FF        .byte $FF, $C6,      $F1   ; 07 
- D 1 - I - 0x036A46 0D:AA36: FF        .byte $FF, $C8,      $01   ; 08 
- D 1 - I - 0x036A49 0D:AA39: 01        .byte $01, $DC,      $09   ; 09 



off_06_AA3C_54:
- D 1 - I - 0x036A4C 0D:AA3C: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036A4D 0D:AA3D: EE        .byte $EE, $C8, $03, $F6   ; 01 
- D 1 - I - 0x036A51 0D:AA41: FF        .byte $FF, $C2,      $06   ; 02 
- D 1 - I - 0x036A54 0D:AA44: E2        .byte $E2, $C2, $C3, $FE   ; 03 



off_06_AA48_55:
- D 1 - I - 0x036A58 0D:AA48: 0C        .byte $0C   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036A59 0D:AA49: D0        .byte $D0, $84, $03, $F8   ; 01 
- D 1 - I - 0x036A5D 0D:AA4D: D1        .byte $D1, $86,      $00   ; 02 
- D 1 - I - 0x036A60 0D:AA50: E1        .byte $E1, $82,      $F0   ; 03 
- D 1 - I - 0x036A63 0D:AA53: F1        .byte $F1, $8E,      $F8   ; 04 
- D 1 - I - 0x036A66 0D:AA56: F1        .byte $F1, $90,      $00   ; 05 
- D 1 - I - 0x036A69 0D:AA59: E1        .byte $E1, $88,      $08   ; 06 
- D 1 - I - 0x036A6C 0D:AA5C: EF        .byte $EF, $8A,      $10   ; 07 
- D 1 - I - 0x036A6F 0D:AA5F: FB        .byte $FB, $80,      $E8   ; 08 
- D 1 - I - 0x036A72 0D:AA62: 01        .byte $01, $8C,      $F0   ; 09 
- D 1 - I - 0x036A75 0D:AA65: 11        .byte $11, $94,      $F8   ; 0A 
- D 1 - I - 0x036A78 0D:AA68: 11        .byte $11, $96,      $00   ; 0B 
- D 1 - I - 0x036A7B 0D:AA6B: 01        .byte $01, $92,      $08   ; 0C 



off_06_AA6E_56:
- D 1 - I - 0x036A7E 0D:AA6E: 0C        .byte $0C   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036A7F 0D:AA6F: D0        .byte $D0, $A0, $03, $F8   ; 01 
- D 1 - I - 0x036A83 0D:AA73: D1        .byte $D1, $A2,      $00   ; 02 
- D 1 - I - 0x036A86 0D:AA76: E1        .byte $E1, $9A,      $F0   ; 03 
- D 1 - I - 0x036A89 0D:AA79: F1        .byte $F1, $BC,      $F8   ; 04 
- D 1 - I - 0x036A8C 0D:AA7C: F1        .byte $F1, $BE,      $00   ; 05 
- D 1 - I - 0x036A8F 0D:AA7F: E1        .byte $E1, $A4,      $08   ; 06 
- D 1 - I - 0x036A92 0D:AA82: EF        .byte $EF, $8A,      $10   ; 07 
- D 1 - I - 0x036A95 0D:AA85: FB        .byte $FB, $98,      $E8   ; 08 
- D 1 - I - 0x036A98 0D:AA88: 01        .byte $01, $A6,      $F0   ; 09 
- D 1 - I - 0x036A9B 0D:AA8B: 11        .byte $11, $A8,      $F8   ; 0A 
- D 1 - I - 0x036A9E 0D:AA8E: 11        .byte $11, $96,      $00   ; 0B 
- D 1 - I - 0x036AA1 0D:AA91: 01        .byte $01, $92,      $08   ; 0C 



off_06_AA94_57:
- D 1 - I - 0x036AA4 0D:AA94: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036AA5 0D:AA95: DE        .byte $DE, $E8, $43, $FE   ; 01 
- D 1 - I - 0x036AA9 0D:AA99: FE        .byte $FE, $EA, $03, $FD   ; 02 



off_06_AA9D_58:
- D 1 - I - 0x036AAD 0D:AA9D: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036AAE 0D:AA9E: E8        .byte $E8, $E2, $03, $EF   ; 01 
- D 1 - I - 0x036AB2 0D:AAA2: F1        .byte $F1, $CA,      $F7   ; 02 
- D 1 - I - 0x036AB5 0D:AAA5: F1        .byte $F1, $E0,      $FF   ; 03 
- D 1 - I - 0x036AB8 0D:AAA8: 09        .byte $09, $CA,      $07   ; 04 



off_06_AAAB_59:
- D 1 - I - 0x036ABB 0D:AAAB: 06        .byte $06   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036ABC 0D:AAAC: CE        .byte $CE, $C6, $C3, $F8   ; 01 
- D 1 - I - 0x036AC0 0D:AAB0: E0        .byte $E0, $C6, $43, $00   ; 02 
- D 1 - I - 0x036AC4 0D:AAB4: E6        .byte $E6, $DA, $03, $F0   ; 03 
- D 1 - I - 0x036AC8 0D:AAB8: F7        .byte $F7, $C8,      $F8   ; 04 
- D 1 - I - 0x036ACB 0D:AABB: 03        .byte $03, $C6,      $00   ; 05 
- D 1 - I - 0x036ACE 0D:AABE: 03        .byte $03, $C4,      $08   ; 06 



off_06_AAC1_5A:
- D 1 - I - 0x036AD1 0D:AAC1: 06        .byte $06   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036AD2 0D:AAC2: 00        .byte $00, $C8, $43, $E9   ; 01 
- D 1 - I - 0x036AD6 0D:AAC6: 01        .byte $01, $C2,      $F1   ; 02 
- D 1 - I - 0x036AD9 0D:AAC9: 01        .byte $01, $EC,      $F9   ; 03 
- D 1 - I - 0x036ADC 0D:AACC: F5        .byte $F5, $C8,      $01   ; 04 
- D 1 - I - 0x036ADF 0D:AACF: F3        .byte $F3, $C2,      $09   ; 05 
- D 1 - I - 0x036AE2 0D:AAD2: EF        .byte $EF, $EC,      $11   ; 06 



off_06_AAD5_5B:
- D 1 - I - 0x036AE5 0D:AAD5: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036AE6 0D:AAD6: FC        .byte $FC, $C2, $43, $F6   ; 01 
- D 1 - I - 0x036AEA 0D:AADA: F2        .byte $F2, $C4, $03, $FE   ; 02 
- D 1 - I - 0x036AEE 0D:AADE: E5        .byte $E5, $DE,      $06   ; 03 



off_06_AAE1_5C:
- D 1 - I - 0x036AF1 0D:AAE1: 09        .byte $09   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036AF2 0D:AAE2: D4        .byte $D4, $EC, $C3, $E4   ; 01 
- D 1 - I - 0x036AF6 0D:AAE6: F6        .byte $F6, $C4, $43, $FC   ; 02 
- D 1 - I - 0x036AFA 0D:AAEA: F3        .byte $F3, $C8,      $04   ; 03 
- D 1 - I - 0x036AFD 0D:AAED: E7        .byte $E7, $D2,      $0C   ; 04 
- D 1 - I - 0x036B00 0D:AAF0: CB        .byte $CB, $EC,      $04   ; 05 
- D 1 - I - 0x036B03 0D:AAF3: F2        .byte $F2, $C8, $03, $EC   ; 06 
- D 1 - I - 0x036B07 0D:AAF7: F7        .byte $F7, $C4,      $F4   ; 07 
- D 1 - I - 0x036B0A 0D:AAFA: D7        .byte $D7, $D4,      $14   ; 08 
- D 1 - I - 0x036B0D 0D:AAFD: C7        .byte $C7, $CC,      $0C   ; 09 



off_06_AB00_5D:
- D 1 - I - 0x036B10 0D:AB00: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036B11 0D:AB01: E0        .byte $E0, $40, $00, $F8   ; 01 
- D 1 - I - 0x036B15 0D:AB05: E1        .byte $E1, $42,      $00   ; 02 
- D 1 - I - 0x036B18 0D:AB08: 01        .byte $01, $44,      $F8   ; 03 
- D 1 - I - 0x036B1B 0D:AB0B: 01        .byte $01, $46,      $00   ; 04 



off_06_AB0E_5E:
off_06_AB0E_60:
- D 1 - I - 0x036B1E 0D:AB0E: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036B1F 0D:AB0F: E0        .byte $E0, $48, $00, $F8   ; 01 
- D 1 - I - 0x036B23 0D:AB13: E1        .byte $E1, $4A,      $00   ; 02 
- D 1 - I - 0x036B26 0D:AB16: 01        .byte $01, $4C,      $F8   ; 03 
- D 1 - I - 0x036B29 0D:AB19: 01        .byte $01, $4E,      $00   ; 04 



off_06_AB1C_5F:
- D 1 - I - 0x036B2C 0D:AB1C: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036B2D 0D:AB1D: E0        .byte $E0, $50, $00, $F8   ; 01 
- D 1 - I - 0x036B31 0D:AB21: E1        .byte $E1, $52,      $00   ; 02 
- D 1 - I - 0x036B34 0D:AB24: 01        .byte $01, $54,      $F8   ; 03 
- D 1 - I - 0x036B37 0D:AB27: 01        .byte $01, $56,      $00   ; 04 



off_06_AB2A_61:
- D 1 - I - 0x036B3A 0D:AB2A: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036B3B 0D:AB2B: E0        .byte $E0, $40, $00, $F4   ; 01 
- D 1 - I - 0x036B3F 0D:AB2F: E1        .byte $E1, $42,      $FC   ; 02 
- D 1 - I - 0x036B42 0D:AB32: 01        .byte $01, $44,      $F8   ; 03 
- D 1 - I - 0x036B45 0D:AB35: 01        .byte $01, $46,      $00   ; 04 



off_06_AB38_62:
off_06_AB38_64:
- D 1 - I - 0x036B48 0D:AB38: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036B49 0D:AB39: E0        .byte $E0, $48, $00, $F5   ; 01 
- D 1 - I - 0x036B4D 0D:AB3D: E1        .byte $E1, $4A,      $FD   ; 02 
- D 1 - I - 0x036B50 0D:AB40: 01        .byte $01, $4C,      $F8   ; 03 
- D 1 - I - 0x036B53 0D:AB43: 01        .byte $01, $4E,      $00   ; 04 



off_06_AB46_63:
- D 1 - I - 0x036B56 0D:AB46: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036B57 0D:AB47: E0        .byte $E0, $50, $00, $F4   ; 01 
- D 1 - I - 0x036B5B 0D:AB4B: E1        .byte $E1, $52,      $FC   ; 02 
- D 1 - I - 0x036B5E 0D:AB4E: 01        .byte $01, $54,      $F8   ; 03 
- D 1 - I - 0x036B61 0D:AB51: 01        .byte $01, $56,      $00   ; 04 



off_06_AB54_65:
- D 1 - I - 0x036B64 0D:AB54: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036B65 0D:AB55: C0        .byte $C0, $40, $00, $FC   ; 01 
- D 1 - I - 0x036B69 0D:AB59: E1        .byte $E1, $42,      $F8   ; 02 
- D 1 - I - 0x036B6C 0D:AB5C: E1        .byte $E1, $44,      $00   ; 03 
- D 1 - I - 0x036B6F 0D:AB5F: 01        .byte $01, $46,      $F9   ; 04 
- D 1 - I - 0x036B72 0D:AB62: 01        .byte $01, $48,      $01   ; 05 



off_06_AB65_66:
off_06_AB65_68:
- D 1 - I - 0x036B75 0D:AB65: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036B76 0D:AB66: C0        .byte $C0, $4A, $00, $FC   ; 01 
- D 1 - I - 0x036B7A 0D:AB6A: E1        .byte $E1, $4C,      $F8   ; 02 
- D 1 - I - 0x036B7D 0D:AB6D: E1        .byte $E1, $4E,      $00   ; 03 
- D 1 - I - 0x036B80 0D:AB70: 01        .byte $01, $50,      $F8   ; 04 
- D 1 - I - 0x036B83 0D:AB73: 01        .byte $01, $52,      $00   ; 05 



off_06_AB76_67:
- D 1 - I - 0x036B86 0D:AB76: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036B87 0D:AB77: C0        .byte $C0, $40, $00, $FC   ; 01 
- D 1 - I - 0x036B8B 0D:AB7B: E1        .byte $E1, $54,      $F8   ; 02 
- D 1 - I - 0x036B8E 0D:AB7E: E1        .byte $E1, $56,      $00   ; 03 
- D 1 - I - 0x036B91 0D:AB81: 01        .byte $01, $58,      $F9   ; 04 
- D 1 - I - 0x036B94 0D:AB84: 01        .byte $01, $5A,      $01   ; 05 



off_06_AB87_69:
off_06_AB87_6A:
off_06_AB87_6B:
- D 1 - I - 0x036B97 0D:AB87: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036B98 0D:AB88: 00        .byte $00, $9C, $02, $00   ; 01 
- D 1 - I - 0x036B9C 0D:AB8C: 01        .byte $01, $9E,      $08   ; 02 



off_06_AB8F_6C:
- D 1 - I - 0x036B9F 0D:AB8F: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036BA0 0D:AB90: 00        .byte $00, $B8, $02, $00   ; 01 
- D 1 - I - 0x036BA4 0D:AB94: 01        .byte $01, $BA,      $08   ; 02 



off_06_AB97_75:
- D 1 - I - 0x036BA7 0D:AB97: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036BA8 0D:AB98: 00        .byte $00, $C0, $02, $00   ; 01 



off_06_AB9C_76:
- D 1 - I - 0x036BAC 0D:AB9C: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036BAD 0D:AB9D: 00        .byte $00, $B0, $03, $F8   ; 01 
- D 1 - I - 0x036BB1 0D:ABA1: 00        .byte $00, $B0, $43, $00   ; 02 



off_06_ABA5_77:
- D 1 - I - 0x036BB5 0D:ABA5: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036BB6 0D:ABA6: 00        .byte $00, $B2, $03, $F8   ; 01 
- D 1 - I - 0x036BBA 0D:ABAA: 00        .byte $00, $B2, $43, $00   ; 02 



off_06_ABAE_78:
- D 1 - I - 0x036BBE 0D:ABAE: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036BBF 0D:ABAF: 00        .byte $00, $B4, $03, $F8   ; 01 
- D 1 - I - 0x036BC3 0D:ABB3: 00        .byte $00, $B4, $43, $00   ; 02 



off_06_ABB7_79:
- D 1 - I - 0x036BC7 0D:ABB7: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036BC8 0D:ABB8: 02        .byte $02, $B6, $03, $F8   ; 01 
- D 1 - I - 0x036BCC 0D:ABBC: 02        .byte $02, $B6, $43, $00   ; 02 



off_06_ABC0_7A:
- D 1 - I - 0x036BD0 0D:ABC0: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036BD1 0D:ABC1: F0        .byte $F0, $6A, $03, $F8   ; 01 
- D 1 - I - 0x036BD5 0D:ABC5: F1        .byte $F1, $6C,      $00   ; 02 



off_06_ABC8_7B:
- D 1 - I - 0x036BD8 0D:ABC8: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036BD9 0D:ABC9: F0        .byte $F0, $6E, $00, $F8   ; 01 



off_06_ABCD_7C:
- D 1 - I - 0x036BDD 0D:ABCD: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036BDE 0D:ABCE: F0        .byte $F0, $15, $23, $F8   ; 01 
- D 1 - I - 0x036BE2 0D:ABD2: F0        .byte $F0, $15, $63, $00   ; 02 



off_06_ABD6_7D:
- D 1 - I - 0x036BE6 0D:ABD6: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036BE7 0D:ABD7: F0        .byte $F0, $17, $23, $F8   ; 01 
- D 1 - I - 0x036BEB 0D:ABDB: F0        .byte $F0, $17, $63, $00   ; 02 



off_06_ABDF_7E:
- D 1 - I - 0x036BEF 0D:ABDF: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036BF0 0D:ABE0: F0        .byte $F0, $DA, $41, $F8   ; 01 
- D 1 - I - 0x036BF4 0D:ABE4: F1        .byte $F1, $D8,      $00   ; 02 



_off039_ABE7_06:
- - - - - - 0x036BF7 0D:ABE7: 99 AE     .word off_06_AE99_00     ; unused
- D 1 - I - 0x036BF9 0D:ABE9: A7 AE     .word off_06_AEA7_01
- D 1 - I - 0x036BFB 0D:ABEB: BB AE     .word off_06_AEBB_02
- D 1 - I - 0x036BFD 0D:ABED: A7 AE     .word off_06_AEA7_03
- D 1 - I - 0x036BFF 0D:ABEF: 75 B0     .word off_06_B075_04
- D 1 - I - 0x036C01 0D:ABF1: 7D B0     .word off_06_B07D_05
- D 1 - I - 0x036C03 0D:ABF3: 85 B0     .word off_06_B085_06
- D 1 - I - 0x036C05 0D:ABF5: 8D B0     .word off_06_B08D_07
- D 1 - I - 0x036C07 0D:ABF7: 95 B0     .word off_06_B095_08
- D 1 - I - 0x036C09 0D:ABF9: 9D B0     .word off_06_B09D_09
- D 1 - I - 0x036C0B 0D:ABFB: A5 B0     .word off_06_B0A5_0A
- D 1 - I - 0x036C0D 0D:ABFD: AD B0     .word off_06_B0AD_0B
- D 1 - I - 0x036C0F 0D:ABFF: B5 B0     .word off_06_B0B5_0C
- D 1 - I - 0x036C11 0D:AC01: BD B0     .word off_06_B0BD_0D
- D 1 - I - 0x036C13 0D:AC03: CB B0     .word off_06_B0CB_0E
- D 1 - I - 0x036C15 0D:AC05: DC B0     .word off_06_B0DC_0F
- D 1 - I - 0x036C17 0D:AC07: E4 B0     .word off_06_B0E4_10
- D 1 - I - 0x036C19 0D:AC09: BD B0     .word off_06_B0BD_11
- D 1 - I - 0x036C1B 0D:AC0B: F5 B0     .word off_06_B0F5_12
- D 1 - I - 0x036C1D 0D:AC0D: 03 B1     .word off_06_B103_13
- D 1 - I - 0x036C1F 0D:AC0F: 17 B1     .word off_06_B117_14
- D 1 - I - 0x036C21 0D:AC11: 25 B1     .word off_06_B125_15
- D 1 - I - 0x036C23 0D:AC13: 39 B1     .word off_06_B139_16
- D 1 - I - 0x036C25 0D:AC15: 25 B1     .word off_06_B125_17
- D 1 - I - 0x036C27 0D:AC17: 17 B1     .word off_06_B117_18
- D 1 - I - 0x036C29 0D:AC19: 03 B1     .word off_06_B103_19
- - - - - - 0x036C2B 0D:AC1B: F5 B0     .word off_06_B0F5_1A
- D 1 - I - 0x036C2D 0D:AC1D: 47 B1     .word off_06_B147_1B
- D 1 - I - 0x036C2F 0D:AC1F: 4C B1     .word off_06_B14C_1C
- D 1 - I - 0x036C31 0D:AC21: 51 B1     .word off_06_B151_1D
- D 1 - I - 0x036C33 0D:AC23: 56 B1     .word off_06_B156_1E
- D 1 - I - 0x036C35 0D:AC25: 5B B1     .word off_06_B15B_1F
- D 1 - I - 0x036C37 0D:AC27: 60 B1     .word off_06_B160_20
- D 1 - I - 0x036C39 0D:AC29: 65 B1     .word off_06_B165_21
- D 1 - I - 0x036C3B 0D:AC2B: 6A B1     .word off_06_B16A_22
- D 1 - I - 0x036C3D 0D:AC2D: 6F B1     .word off_06_B16F_23
- D 1 - I - 0x036C3F 0D:AC2F: 74 B1     .word off_06_B174_24
- D 1 - I - 0x036C41 0D:AC31: 79 B1     .word off_06_B179_25
- D 1 - I - 0x036C43 0D:AC33: 7E B1     .word off_06_B17E_26
- D 1 - I - 0x036C45 0D:AC35: 86 B1     .word off_06_B186_27
- D 1 - I - 0x036C47 0D:AC37: 8E B1     .word off_06_B18E_28
- D 1 - I - 0x036C49 0D:AC39: 96 B1     .word off_06_B196_29
- D 1 - I - 0x036C4B 0D:AC3B: B2 B1     .word off_06_B1B2_2A
- D 1 - I - 0x036C4D 0D:AC3D: E6 B1     .word off_06_B1E6_2B
- D 1 - I - 0x036C4F 0D:AC3F: EF B1     .word off_06_B1EF_2C
- D 1 - I - 0x036C51 0D:AC41: F7 B1     .word off_06_B1F7_2D
- D 1 - I - 0x036C53 0D:AC43: FF B1     .word off_06_B1FF_2E
- D 1 - I - 0x036C55 0D:AC45: 04 B2     .word off_06_B204_2F
- D 1 - I - 0x036C57 0D:AC47: 09 B2     .word off_06_B209_30
- D 1 - I - 0x036C59 0D:AC49: 11 B2     .word off_06_B211_31
- D 1 - I - 0x036C5B 0D:AC4B: 1A B2     .word off_06_B21A_32
- D 1 - I - 0x036C5D 0D:AC4D: 22 B2     .word off_06_B222_33
- D 1 - I - 0x036C5F 0D:AC4F: 2A B2     .word off_06_B22A_34
- D 1 - I - 0x036C61 0D:AC51: 33 B2     .word off_06_B233_35
- D 1 - I - 0x036C63 0D:AC53: 3C B2     .word off_06_B23C_36
- D 1 - I - 0x036C65 0D:AC55: 45 B2     .word off_06_B245_37
- D 1 - I - 0x036C67 0D:AC57: 4D B2     .word off_06_B24D_38
- D 1 - I - 0x036C69 0D:AC59: 5B B2     .word off_06_B25B_39
- D 1 - I - 0x036C6B 0D:AC5B: 66 B2     .word off_06_B266_3A
- D 1 - I - 0x036C6D 0D:AC5D: 74 B2     .word off_06_B274_3B
- D 1 - I - 0x036C6F 0D:AC5F: 82 B2     .word off_06_B282_3C
- D 1 - I - 0x036C71 0D:AC61: 90 B2     .word off_06_B290_3D
- D 1 - I - 0x036C73 0D:AC63: 9E B2     .word off_06_B29E_3E
- D 1 - I - 0x036C75 0D:AC65: AC B2     .word off_06_B2AC_3F
- D 1 - I - 0x036C77 0D:AC67: BA B2     .word off_06_B2BA_40
- D 1 - I - 0x036C79 0D:AC69: C8 B2     .word off_06_B2C8_41
- D 1 - I - 0x036C7B 0D:AC6B: E9 B2     .word off_06_B2E9_42
- D 1 - I - 0x036C7D 0D:AC6D: 0A B3     .word off_06_B30A_43
- D 1 - I - 0x036C7F 0D:AC6F: 18 B3     .word off_06_B318_44
- D 1 - I - 0x036C81 0D:AC71: 29 B3     .word off_06_B329_45
- D 1 - I - 0x036C83 0D:AC73: 3A B3     .word off_06_B33A_46
- D 1 - I - 0x036C85 0D:AC75: 4B B3     .word off_06_B34B_47
- D 1 - I - 0x036C87 0D:AC77: 6F B3     .word off_06_B36F_48
- D 1 - I - 0x036C89 0D:AC79: 93 B3     .word off_06_B393_49
- D 1 - I - 0x036C8B 0D:AC7B: A4 B3     .word off_06_B3A4_4A
- D 1 - I - 0x036C8D 0D:AC7D: B2 B3     .word off_06_B3B2_4B
- D 1 - I - 0x036C8F 0D:AC7F: C0 B3     .word off_06_B3C0_4C
- D 1 - I - 0x036C91 0D:AC81: CE B3     .word off_06_B3CE_4D
- D 1 - I - 0x036C93 0D:AC83: EF B3     .word off_06_B3EF_4E
- D 1 - I - 0x036C95 0D:AC85: 10 B4     .word off_06_B410_4F
- D 1 - I - 0x036C97 0D:AC87: F0 A9     .word off_06_A9F0_50
- D 1 - I - 0x036C99 0D:AC89: 06 AA     .word off_06_AA06_51
- D 1 - I - 0x036C9B 0D:AC8B: 11 AA     .word off_06_AA11_52
- D 1 - I - 0x036C9D 0D:AC8D: 1D AA     .word off_06_AA1D_53
- D 1 - I - 0x036C9F 0D:AC8F: 3C AA     .word off_06_AA3C_54
- D 1 - I - 0x036CA1 0D:AC91: 48 AA     .word off_06_AA48_55
- D 1 - I - 0x036CA3 0D:AC93: 6E AA     .word off_06_AA6E_56
- D 1 - I - 0x036CA5 0D:AC95: 94 AA     .word off_06_AA94_57
- D 1 - I - 0x036CA7 0D:AC97: 9D AA     .word off_06_AA9D_58
- D 1 - I - 0x036CA9 0D:AC99: AB AA     .word off_06_AAAB_59
- D 1 - I - 0x036CAB 0D:AC9B: C1 AA     .word off_06_AAC1_5A
- D 1 - I - 0x036CAD 0D:AC9D: D5 AA     .word off_06_AAD5_5B
- D 1 - I - 0x036CAF 0D:AC9F: E1 AA     .word off_06_AAE1_5C
- D 1 - I - 0x036CB1 0D:ACA1: 00 AB     .word off_06_AB00_5D
- D 1 - I - 0x036CB3 0D:ACA3: 0E AB     .word off_06_AB0E_5E
- D 1 - I - 0x036CB5 0D:ACA5: 1C AB     .word off_06_AB1C_5F
- D 1 - I - 0x036CB7 0D:ACA7: 0E AB     .word off_06_AB0E_60
- D 1 - I - 0x036CB9 0D:ACA9: 2A AB     .word off_06_AB2A_61
- D 1 - I - 0x036CBB 0D:ACAB: 38 AB     .word off_06_AB38_62
- D 1 - I - 0x036CBD 0D:ACAD: 46 AB     .word off_06_AB46_63
- D 1 - I - 0x036CBF 0D:ACAF: 38 AB     .word off_06_AB38_64
- D 1 - I - 0x036CC1 0D:ACB1: 54 AB     .word off_06_AB54_65
- D 1 - I - 0x036CC3 0D:ACB3: 65 AB     .word off_06_AB65_66
- D 1 - I - 0x036CC5 0D:ACB5: 76 AB     .word off_06_AB76_67
- D 1 - I - 0x036CC7 0D:ACB7: 65 AB     .word off_06_AB65_68
- - - - - - 0x036CC9 0D:ACB9: 87 AB     .word off_06_AB87_69
- - - - - - 0x036CCB 0D:ACBB: 87 AB     .word off_06_AB87_6A
- D 1 - I - 0x036CCD 0D:ACBD: 87 AB     .word off_06_AB87_6B
- D 1 - I - 0x036CCF 0D:ACBF: 8F AB     .word off_06_AB8F_6C
- D 1 - I - 0x036CD1 0D:ACC1: 1E B4     .word off_06_B41E_6D
- D 1 - I - 0x036CD3 0D:ACC3: 44 B4     .word off_06_B444_6E
- D 1 - I - 0x036CD5 0D:ACC5: 52 B4     .word off_06_B452_6F
- D 1 - I - 0x036CD7 0D:ACC7: 60 B4     .word off_06_B460_70
- D 1 - I - 0x036CD9 0D:ACC9: 6E B4     .word off_06_B46E_71
- D 1 - I - 0x036CDB 0D:ACCB: 88 B4     .word off_06_B488_72
- D 1 - I - 0x036CDD 0D:ACCD: 9F B4     .word off_06_B49F_73
- D 1 - I - 0x036CDF 0D:ACCF: AD B4     .word off_06_B4AD_74
- D 1 - I - 0x036CE1 0D:ACD1: 97 AB     .word off_06_AB97_75
- D 1 - I - 0x036CE3 0D:ACD3: 9C AB     .word off_06_AB9C_76
- D 1 - I - 0x036CE5 0D:ACD5: A5 AB     .word off_06_ABA5_77
- D 1 - I - 0x036CE7 0D:ACD7: AE AB     .word off_06_ABAE_78
- D 1 - I - 0x036CE9 0D:ACD9: B7 AB     .word off_06_ABB7_79
- D 1 - I - 0x036CEB 0D:ACDB: C0 AB     .word off_06_ABC0_7A
- D 1 - I - 0x036CED 0D:ACDD: C8 AB     .word off_06_ABC8_7B
- D 1 - I - 0x036CEF 0D:ACDF: CD AB     .word off_06_ABCD_7C
- D 1 - I - 0x036CF1 0D:ACE1: D6 AB     .word off_06_ABD6_7D
- D 1 - I - 0x036CF3 0D:ACE3: DF AB     .word off_06_ABDF_7E
- D 1 - I - 0x036CF5 0D:ACE5: CC B1     .word off_06_B1CC_7F



_off039_ACE7_0A:
- - - - - - 0x036CF7 0D:ACE7: B5 B4     .word off_0A_B4B5_00     ; unused
- D 1 - I - 0x036CF9 0D:ACE9: B5 B4     .word off_0A_B4B5_01
- D 1 - I - 0x036CFB 0D:ACEB: C4 B4     .word off_0A_B4C4_02
- D 1 - I - 0x036CFD 0D:ACED: D3 B4     .word off_0A_B4D3_03
- D 1 - I - 0x036CFF 0D:ACEF: E1 B4     .word off_0A_B4E1_04
- D 1 - I - 0x036D01 0D:ACF1: FE B4     .word off_0A_B4FE_05
- D 1 - I - 0x036D03 0D:ACF3: 0C B5     .word off_0A_B50C_06
- D 1 - I - 0x036D05 0D:ACF5: 1D B5     .word off_0A_B51D_07
- D 1 - I - 0x036D07 0D:ACF7: 2B B5     .word off_0A_B52B_08
- D 1 - I - 0x036D09 0D:ACF9: 34 B5     .word off_0A_B534_09
- - - - - - 0x036D0B 0D:ACFB: 4F B5     .word off_0A_B54F_0A
- D 1 - I - 0x036D0D 0D:ACFD: 81 B5     .word off_0A_B581_0B
- D 1 - I - 0x036D0F 0D:ACFF: C2 B5     .word off_0A_B5C2_0C
- D 1 - I - 0x036D11 0D:AD01: F4 B5     .word off_0A_B5F4_0D
- D 1 - I - 0x036D13 0D:AD03: 05 B6     .word off_0A_B605_0E
- D 1 - I - 0x036D15 0D:AD05: 16 B6     .word off_0A_B616_0F
- D 1 - I - 0x036D17 0D:AD07: 2A B6     .word off_0A_B62A_10
- D 1 - I - 0x036D19 0D:AD09: 3E B6     .word off_0A_B63E_11
- D 1 - I - 0x036D1B 0D:AD0B: 4C B6     .word off_0A_B64C_12
- D 1 - I - 0x036D1D 0D:AD0D: 5D B6     .word off_0A_B65D_13
- D 1 - I - 0x036D1F 0D:AD0F: 6E B6     .word off_0A_B66E_14
- D 1 - I - 0x036D21 0D:AD11: 82 B6     .word off_0A_B682_15
- D 1 - I - 0x036D23 0D:AD13: 99 B6     .word off_0A_B699_16
- D 1 - I - 0x036D25 0D:AD15: B0 B6     .word off_0A_B6B0_17
- D 1 - I - 0x036D27 0D:AD17: C1 B6     .word off_0A_B6C1_18
- D 1 - I - 0x036D29 0D:AD19: D3 B6     .word off_0A_B6D3_19
- D 1 - I - 0x036D2B 0D:AD1B: EB B6     .word off_0A_B6EB_1A
- D 1 - I - 0x036D2D 0D:AD1D: 00 B7     .word off_0A_B700_1B
- D 1 - I - 0x036D2F 0D:AD1F: EB B6     .word off_0A_B6EB_1C
- D 1 - I - 0x036D31 0D:AD21: D3 B6     .word off_0A_B6D3_1D
- D 1 - I - 0x036D33 0D:AD23: EB B6     .word off_0A_B6EB_1E
- D 1 - I - 0x036D35 0D:AD25: 15 B7     .word off_0A_B715_1F
- D 1 - I - 0x036D37 0D:AD27: 36 B7     .word off_0A_B736_20
- D 1 - I - 0x036D39 0D:AD29: 5D B7     .word off_0A_B75D_21
- D 1 - I - 0x036D3B 0D:AD2B: C5 AD     .word off_0A_ADC5_22
- D 1 - I - 0x036D3D 0D:AD2D: CA AD     .word off_0A_ADCA_23
- D 1 - I - 0x036D3F 0D:AD2F: D2 AD     .word off_0A_ADD2_24
- D 1 - I - 0x036D41 0D:AD31: DD AD     .word off_0A_ADDD_25
- D 1 - I - 0x036D43 0D:AD33: EB AD     .word off_0A_ADEB_26
- D 1 - I - 0x036D45 0D:AD35: FC AD     .word off_0A_ADFC_27
- D 1 - I - 0x036D47 0D:AD37: 0D AE     .word off_0A_AE0D_28
- - - - - - 0x036D49 0D:AD39: 15 AE     .word off_0A_AE15_29
- - - - - - 0x036D4B 0D:AD3B: 1D AE     .word off_0A_AE1D_2A
- - - - - - 0x036D4D 0D:AD3D: 25 AE     .word off_0A_AE25_2B
- - - - - - 0x036D4F 0D:AD3F: 1D AE     .word off_0A_AE1D_2C
- - - - - - 0x036D51 0D:AD41: 3A AE     .word off_0A_AE3A_2D
- - - - - - 0x036D53 0D:AD43: 42 AE     .word off_0A_AE42_2E
- D 1 - I - 0x036D55 0D:AD45: 4A AE     .word off_0A_AE4A_2F
- D 1 - I - 0x036D57 0D:AD47: 58 AE     .word off_0A_AE58_30
- D 1 - I - 0x036D59 0D:AD49: 66 AE     .word off_0A_AE66_31
- D 1 - I - 0x036D5B 0D:AD4B: 77 AE     .word off_0A_AE77_32
- D 1 - I - 0x036D5D 0D:AD4D: 88 AE     .word off_0A_AE88_33
- D 1 - I - 0x036D5F 0D:AD4F: 2D AE     .word off_0A_AE2D_34
- D 1 - I - 0x036D61 0D:AD51: 32 AE     .word off_0A_AE32_35



_off039_AD53_07:
- - - - - - 0x036D63 0D:AD53: 99 AE     .word off_07_AE99_00     ; unused
- D 1 - I - 0x036D65 0D:AD55: F8 AE     .word off_07_AEF8_01
- D 1 - I - 0x036D67 0D:AD57: FD AE     .word off_07_AEFD_02
- D 1 - I - 0x036D69 0D:AD59: 99 AE     .word off_07_AE99_03
- - - - - - 0x036D6B 0D:AD5B: 99 AE     .word off_07_AE99_04
- D 1 - I - 0x036D6D 0D:AD5D: 1D AF     .word off_07_AF1D_05
- D 1 - I - 0x036D6F 0D:AD5F: 2E AF     .word off_07_AF2E_06
- D 1 - I - 0x036D71 0D:AD61: 51 AF     .word off_07_AF51_07
- D 1 - I - 0x036D73 0D:AD63: 56 AF     .word off_07_AF56_08
- D 1 - I - 0x036D75 0D:AD65: 5F AF     .word off_07_AF5F_09
- D 1 - I - 0x036D77 0D:AD67: 64 AF     .word off_07_AF64_0A
- D 1 - I - 0x036D79 0D:AD69: 69 AF     .word off_07_AF69_0B
- D 1 - I - 0x036D7B 0D:AD6B: 7F AF     .word off_07_AF7F_0C
- D 1 - I - 0x036D7D 0D:AD6D: A0 AF     .word off_07_AFA0_0D
- D 1 - I - 0x036D7F 0D:AD6F: A5 AF     .word off_07_AFA5_0E
- D 1 - I - 0x036D81 0D:AD71: AD AF     .word off_07_AFAD_0F
- D 1 - I - 0x036D83 0D:AD73: B5 AF     .word off_07_AFB5_10
- D 1 - I - 0x036D85 0D:AD75: BD AF     .word off_07_AFBD_11
- D 1 - I - 0x036D87 0D:AD77: C5 AF     .word off_07_AFC5_12
- D 1 - I - 0x036D89 0D:AD79: CD AF     .word off_07_AFCD_13
- D 1 - I - 0x036D8B 0D:AD7B: D5 AF     .word off_07_AFD5_14
- D 1 - I - 0x036D8D 0D:AD7D: DD AF     .word off_07_AFDD_15
- D 1 - I - 0x036D8F 0D:AD7F: E5 AF     .word off_07_AFE5_16
- D 1 - I - 0x036D91 0D:AD81: ED AF     .word off_07_AFED_17
- - - - - - 0x036D93 0D:AD83: F5 AF     .word off_07_AFF5_18
- - - - - - 0x036D95 0D:AD85: FD AF     .word off_07_AFFD_19
- D 1 - I - 0x036D97 0D:AD87: 05 B0     .word off_07_B005_1A
- D 1 - I - 0x036D99 0D:AD89: D8 AE     .word off_07_AED8_1B
- D 1 - I - 0x036D9B 0D:AD8B: E0 AE     .word off_07_AEE0_1C
- D 1 - I - 0x036D9D 0D:AD8D: E8 AE     .word off_07_AEE8_1D
- D 1 - I - 0x036D9F 0D:AD8F: F0 AE     .word off_07_AEF0_1E
- D 1 - I - 0x036DA1 0D:AD91: CB 93     .word off_07_93CB_1F
- D 1 - I - 0x036DA3 0D:AD93: D0 93     .word off_07_93D0_20
- D 1 - I - 0x036DA5 0D:AD95: D5 93     .word off_07_93D5_21
- D 1 - I - 0x036DA7 0D:AD97: D0 93     .word off_07_93D0_22
- D 1 - I - 0x036DA9 0D:AD99: 58 B0     .word off_07_B058_23
- D 1 - I - 0x036DAB 0D:AD9B: 84 AF     .word off_07_AF84_24
- D 1 - I - 0x036DAD 0D:AD9D: 95 AF     .word off_07_AF95_25
- D 1 - I - 0x036DAF 0D:AD9F: 3F AF     .word off_07_AF3F_26
- D 1 - I - 0x036DB1 0D:ADA1: 48 AF     .word off_07_AF48_27
- D 1 - I - 0x036DB3 0D:ADA3: 77 AF     .word off_07_AF77_28
- D 1 - I - 0x036DB5 0D:ADA5: 5D B0     .word off_07_B05D_29
- D 1 - I - 0x036DB7 0D:ADA7: 65 B0     .word off_07_B065_2A
- D 1 - I - 0x036DB9 0D:ADA9: 6D B0     .word off_07_B06D_2B
- D 1 - I - 0x036DBB 0D:ADAB: 18 B0     .word off_07_B018_2C
- D 1 - I - 0x036DBD 0D:ADAD: 20 B0     .word off_07_B020_2D
- D 1 - I - 0x036DBF 0D:ADAF: 38 B0     .word off_07_B038_2E
- D 1 - I - 0x036DC1 0D:ADB1: 41 B0     .word off_07_B041_2F
- D 1 - I - 0x036DC3 0D:ADB3: 02 AF     .word off_07_AF02_30
- D 1 - I - 0x036DC5 0D:ADB5: 0B AF     .word off_07_AF0B_31
- D 1 - I - 0x036DC7 0D:ADB7: 14 AF     .word off_07_AF14_32
- D 1 - I - 0x036DC9 0D:ADB9: 0B AF     .word off_07_AF0B_33
- D 1 - I - 0x036DCB 0D:ADBB: 28 B0     .word off_07_B028_34
- - - - - - 0x036DCD 0D:ADBD: 30 B0     .word off_07_B030_35
- - - - - - 0x036DCF 0D:ADBF: 99 AE     .word off_07_AE99_36
- D 1 - I - 0x036DD1 0D:ADC1: 4A B0     .word off_07_B04A_37
- - - - - - 0x036DD3 0D:ADC3: 0D B0     .word off_07_B00D_38



off_0A_ADC5_22:
- D 1 - I - 0x036DD5 0D:ADC5: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036DD6 0D:ADC6: F0        .byte $F0, $B0, $02, $F0   ; 01 



off_0A_ADCA_23:
- D 1 - I - 0x036DDA 0D:ADCA: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036DDB 0D:ADCB: F0        .byte $F0, $B0, $82, $E8   ; 01 
- D 1 - I - 0x036DDF 0D:ADCF: F1        .byte $F1, $FC,      $F0   ; 02 



off_0A_ADD2_24:
- D 1 - I - 0x036DE2 0D:ADD2: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036DE3 0D:ADD3: F0        .byte $F0, $B0, $02, $E0   ; 01 
- D 1 - I - 0x036DE7 0D:ADD7: F1        .byte $F1, $FA,      $E8   ; 02 
- D 1 - I - 0x036DEA 0D:ADDA: F1        .byte $F1, $FC,      $F0   ; 03 



off_0A_ADDD_25:
- D 1 - I - 0x036DED 0D:ADDD: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036DEE 0D:ADDE: F0        .byte $F0, $B0, $82, $D8   ; 01 
- D 1 - I - 0x036DF2 0D:ADE2: F1        .byte $F1, $B4,      $E0   ; 02 
- D 1 - I - 0x036DF5 0D:ADE5: F1        .byte $F1, $FA,      $E8   ; 03 
- D 1 - I - 0x036DF8 0D:ADE8: F1        .byte $F1, $FC,      $F0   ; 04 



off_0A_ADEB_26:
- D 1 - I - 0x036DFB 0D:ADEB: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036DFC 0D:ADEC: F0        .byte $F0, $B0, $02, $D0   ; 01 
- D 1 - I - 0x036E00 0D:ADF0: F1        .byte $F1, $B2,      $D8   ; 02 
- D 1 - I - 0x036E03 0D:ADF3: F1        .byte $F1, $B4,      $E0   ; 03 
- D 1 - I - 0x036E06 0D:ADF6: F1        .byte $F1, $FA,      $E8   ; 04 
- D 1 - I - 0x036E09 0D:ADF9: F1        .byte $F1, $FC,      $F0   ; 05 



off_0A_ADFC_27:
- D 1 - I - 0x036E0C 0D:ADFC: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036E0D 0D:ADFD: F0        .byte $F0, $B0, $82, $D0   ; 01 
- D 1 - I - 0x036E11 0D:AE01: F1        .byte $F1, $B2,      $D8   ; 02 
- D 1 - I - 0x036E14 0D:AE04: F1        .byte $F1, $B4,      $E0   ; 03 
- D 1 - I - 0x036E17 0D:AE07: F1        .byte $F1, $FA,      $E8   ; 04 
- D 1 - I - 0x036E1A 0D:AE0A: F1        .byte $F1, $FC,      $F0   ; 05 



off_0A_AE0D_28:
- D 1 - I - 0x036E1D 0D:AE0D: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036E1E 0D:AE0E: F0        .byte $F0, $B0, $02, $F0   ; 01 
- D 1 - I - 0x036E22 0D:AE12: F1        .byte $F1, $FC,      $F8   ; 02 



off_0A_AE15_29:
- - - - - - 0x036E25 0D:AE15: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- - - - - - 0x036E26 0D:AE16: E8        .byte $E8, $41, $03, $F8   ; 01 
- - - - - - 0x036E2A 0D:AE1A: E9        .byte $E9, $43,      $00   ; 02 



off_0A_AE1D_2A:
off_0A_AE1D_2C:
- - - - - - 0x036E2D 0D:AE1D: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- - - - - - 0x036E2E 0D:AE1E: F0        .byte $F0, $45, $03, $F8   ; 01 
- - - - - - 0x036E32 0D:AE22: F1        .byte $F1, $47,      $00   ; 02 



off_0A_AE25_2B:
- - - - - - 0x036E35 0D:AE25: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- - - - - - 0x036E36 0D:AE26: F8        .byte $F8, $49, $03, $F8   ; 01 
- - - - - - 0x036E3A 0D:AE2A: F9        .byte $F9, $4B,      $00   ; 02 



off_0A_AE2D_34:
- D 1 - I - 0x036E3D 0D:AE2D: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036E3E 0D:AE2E: F0        .byte $F0, $DA, $03, $FC   ; 01 



off_0A_AE32_35:
- D 1 - I - 0x036E42 0D:AE32: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036E43 0D:AE33: F0        .byte $F0, $DC, $03, $F8   ; 01 
- D 1 - I - 0x036E47 0D:AE37: F1        .byte $F1, $DE,      $00   ; 02 



off_0A_AE3A_2D:
- - - - - - 0x036E4A 0D:AE3A: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- - - - - - 0x036E4B 0D:AE3B: F0        .byte $F0, $77, $01, $F8   ; 01 
- - - - - - 0x036E4F 0D:AE3F: F1        .byte $F1, $79,      $00   ; 02 



off_0A_AE42_2E:
- - - - - - 0x036E52 0D:AE42: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- - - - - - 0x036E53 0D:AE43: F0        .byte $F0, $7B, $01, $F8   ; 01 
- - - - - - 0x036E57 0D:AE47: F1        .byte $F1, $7D,      $00   ; 02 



off_0A_AE4A_2F:
- D 1 - I - 0x036E5A 0D:AE4A: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036E5B 0D:AE4B: E0        .byte $E0, $41, $02, $F4   ; 01 
- D 1 - I - 0x036E5F 0D:AE4F: E1        .byte $E1, $43,      $FC   ; 02 
- D 1 - I - 0x036E62 0D:AE52: 01        .byte $01, $45,      $F8   ; 03 
- D 1 - I - 0x036E65 0D:AE55: 01        .byte $01, $47,      $00   ; 04 



off_0A_AE58_30:
- D 1 - I - 0x036E68 0D:AE58: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036E69 0D:AE59: E2        .byte $E2, $55, $02, $F5   ; 01 
- D 1 - I - 0x036E6D 0D:AE5D: E3        .byte $E3, $57,      $FD   ; 02 
- D 1 - I - 0x036E70 0D:AE60: 01        .byte $01, $49,      $F8   ; 03 
- D 1 - I - 0x036E73 0D:AE63: 01        .byte $01, $4B,      $00   ; 04 



off_0A_AE66_31:
- D 1 - I - 0x036E76 0D:AE66: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036E77 0D:AE67: EE        .byte $EE, $71, $01, $F4   ; 01 
- D 1 - I - 0x036E7B 0D:AE6B: E3        .byte $E3, $61,      $FC   ; 02 
- D 1 - I - 0x036E7E 0D:AE6E: E3        .byte $E3, $63,      $04   ; 03 
- D 1 - I - 0x036E81 0D:AE71: 01        .byte $01, $65,      $FC   ; 04 
- D 1 - I - 0x036E84 0D:AE74: 01        .byte $01, $67,      $04   ; 05 



off_0A_AE77_32:
- D 1 - I - 0x036E87 0D:AE77: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036E88 0D:AE78: F0        .byte $F0, $71, $01, $F4   ; 01 
- D 1 - I - 0x036E8C 0D:AE7C: E3        .byte $E3, $61,      $FC   ; 02 
- D 1 - I - 0x036E8F 0D:AE7F: E3        .byte $E3, $63,      $04   ; 03 
- D 1 - I - 0x036E92 0D:AE82: 01        .byte $01, $69,      $FC   ; 04 
- D 1 - I - 0x036E95 0D:AE85: 01        .byte $01, $6B,      $04   ; 05 



off_0A_AE88_33:
- D 1 - I - 0x036E98 0D:AE88: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036E99 0D:AE89: EC        .byte $EC, $71, $01, $F4   ; 01 
- D 1 - I - 0x036E9D 0D:AE8D: E1        .byte $E1, $61,      $FC   ; 02 
- D 1 - I - 0x036EA0 0D:AE90: E1        .byte $E1, $63,      $04   ; 03 
- D 1 - I - 0x036EA3 0D:AE93: 01        .byte $01, $6D,      $FC   ; 04 
- D 1 - I - 0x036EA6 0D:AE96: 01        .byte $01, $6F,      $04   ; 05 



off_06_AE99_00:
off_07_AE99_00:
off_07_AE99_03:
off_07_AE99_04:
off_07_AE99_36:
- D 1 - I - 0x036EA9 0D:AE99: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036EAA 0D:AE9A: F0        .byte $F0, $4D, $00, $F0   ; 01 
- D 1 - I - 0x036EAE 0D:AE9E: F1        .byte $F1, $5D,      $F8   ; 02 
- D 1 - I - 0x036EB1 0D:AEA1: F1        .byte $F1, $6D,      $00   ; 03 
- D 1 - I - 0x036EB4 0D:AEA4: F1        .byte $F1, $7D,      $08   ; 04 



off_06_AEA7_01:
off_06_AEA7_03:
- D 1 - I - 0x036EB7 0D:AEA7: 06        .byte $06   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036EB8 0D:AEA8: C0        .byte $C0, $05, $03, $F0   ; 01 
- D 1 - I - 0x036EBC 0D:AEAC: C1        .byte $C1, $0F,      $F8   ; 02 
- D 1 - I - 0x036EBF 0D:AEAF: E1        .byte $E1, $07,      $F0   ; 03 
- D 1 - I - 0x036EC2 0D:AEB2: E1        .byte $E1, $09,      $F8   ; 04 
- D 1 - I - 0x036EC5 0D:AEB5: 01        .byte $01, $07,      $F0   ; 05 
- D 1 - I - 0x036EC8 0D:AEB8: 01        .byte $01, $09,      $F8   ; 06 



off_06_AEBB_02:
- D 1 - I - 0x036ECB 0D:AEBB: 09        .byte $09   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036ECC 0D:AEBC: C0        .byte $C0, $0B, $03, $E8   ; 01 
- D 1 - I - 0x036ED0 0D:AEC0: C1        .byte $C1, $0D,      $F0   ; 02 
- D 1 - I - 0x036ED3 0D:AEC3: C1        .byte $C1, $0D,      $F8   ; 03 
- D 1 - I - 0x036ED6 0D:AEC6: E1        .byte $E1, $09,      $E8   ; 04 
- D 1 - I - 0x036ED9 0D:AEC9: E1        .byte $E1, $09,      $F0   ; 05 
- D 1 - I - 0x036EDC 0D:AECC: E1        .byte $E1, $09,      $F8   ; 06 
- D 1 - I - 0x036EDF 0D:AECF: 01        .byte $01, $09,      $E8   ; 07 
- D 1 - I - 0x036EE2 0D:AED2: 01        .byte $01, $09,      $F0   ; 08 
- D 1 - I - 0x036EE5 0D:AED5: 01        .byte $01, $09,      $F8   ; 09 



off_07_AED8_1B:
- D 1 - I - 0x036EE8 0D:AED8: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036EE9 0D:AED9: F0        .byte $F0, $EA, $01, $F8   ; 01 
- D 1 - I - 0x036EED 0D:AEDD: F1        .byte $F1, $EC,      $00   ; 02 



off_07_AEE0_1C:
- D 1 - I - 0x036EF0 0D:AEE0: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036EF1 0D:AEE1: F0        .byte $F0, $EC, $41, $F8   ; 01 
- D 1 - I - 0x036EF5 0D:AEE5: F1        .byte $F1, $EA,      $00   ; 02 



off_07_AEE8_1D:
- D 1 - I - 0x036EF8 0D:AEE8: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036EF9 0D:AEE9: F0        .byte $F0, $EC, $C1, $F8   ; 01 
- D 1 - I - 0x036EFD 0D:AEED: F1        .byte $F1, $EA,      $00   ; 02 



off_07_AEF0_1E:
- D 1 - I - 0x036F00 0D:AEF0: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036F01 0D:AEF1: F0        .byte $F0, $EA, $81, $F8   ; 01 
- D 1 - I - 0x036F05 0D:AEF5: F1        .byte $F1, $EC,      $00   ; 02 



off_07_AEF8_01:
- D 1 - I - 0x036F08 0D:AEF8: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036F09 0D:AEF9: F0        .byte $F0, $F1, $03, $FC   ; 01 



off_07_AEFD_02:
- D 1 - I - 0x036F0D 0D:AEFD: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036F0E 0D:AEFE: F0        .byte $F0, $F3, $03, $FC   ; 01 



off_07_AF02_30:
- D 1 - I - 0x036F12 0D:AF02: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036F13 0D:AF03: F0        .byte $F0, $2B, $01, $F8   ; 01 
- D 1 - I - 0x036F17 0D:AF07: F0        .byte $F0, $2B, $41, $00   ; 02 



off_07_AF0B_31:
off_07_AF0B_33:
- D 1 - I - 0x036F1B 0D:AF0B: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036F1C 0D:AF0C: F0        .byte $F0, $1D, $01, $F8   ; 01 
- D 1 - I - 0x036F20 0D:AF10: F0        .byte $F0, $1D, $41, $00   ; 02 



off_07_AF14_32:
- D 1 - I - 0x036F24 0D:AF14: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036F25 0D:AF15: F0        .byte $F0, $1F, $01, $F8   ; 01 
- D 1 - I - 0x036F29 0D:AF19: F0        .byte $F0, $1F, $41, $00   ; 02 



off_07_AF1D_05:
- D 1 - I - 0x036F2D 0D:AF1D: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036F2E 0D:AF1E: E0        .byte $E0, $15, $03, $F8   ; 01 
- D 1 - I - 0x036F32 0D:AF22: E0        .byte $E0, $15, $43, $00   ; 02 
- D 1 - I - 0x036F36 0D:AF26: 00        .byte $00, $19, $01, $F8   ; 03 
- D 1 - I - 0x036F3A 0D:AF2A: 00        .byte $00, $19, $41, $00   ; 04 



off_07_AF2E_06:
- D 1 - I - 0x036F3E 0D:AF2E: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036F3F 0D:AF2F: E0        .byte $E0, $17, $03, $F8   ; 01 
- D 1 - I - 0x036F43 0D:AF33: E0        .byte $E0, $17, $43, $00   ; 02 
- D 1 - I - 0x036F47 0D:AF37: 00        .byte $00, $19, $01, $F8   ; 03 
- D 1 - I - 0x036F4B 0D:AF3B: 00        .byte $00, $19, $41, $00   ; 04 



off_07_AF3F_26:
- D 1 - I - 0x036F4F 0D:AF3F: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036F50 0D:AF40: 00        .byte $00, $15, $03, $F8   ; 01 
- D 1 - I - 0x036F54 0D:AF44: 00        .byte $00, $15, $43, $00   ; 02 



off_07_AF48_27:
- D 1 - I - 0x036F58 0D:AF48: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036F59 0D:AF49: 00        .byte $00, $17, $03, $F8   ; 01 
- D 1 - I - 0x036F5D 0D:AF4D: 00        .byte $00, $17, $43, $00   ; 02 



off_07_AF51_07:
- D 1 - I - 0x036F61 0D:AF51: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036F62 0D:AF52: F0        .byte $F0, $25, $03, $FC   ; 01 



off_07_AF56_08:
- D 1 - I - 0x036F66 0D:AF56: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036F67 0D:AF57: F0        .byte $F0, $03, $03, $F8   ; 01 
- D 1 - I - 0x036F6B 0D:AF5B: F0        .byte $F0, $03, $43, $00   ; 02 



off_07_AF5F_09:
- D 1 - I - 0x036F6F 0D:AF5F: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036F70 0D:AF60: F0        .byte $F0, $E1, $03, $FC   ; 01 



off_07_AF64_0A:
- D 1 - I - 0x036F74 0D:AF64: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036F75 0D:AF65: F8        .byte $F8, $E3, $03, $FC   ; 01 



off_07_AF69_0B:
- D 1 - I - 0x036F79 0D:AF69: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036F7A 0D:AF6A: F0        .byte $F0, $E5, $00, $F0   ; 01 
- D 1 - I - 0x036F7E 0D:AF6E: F1        .byte $F1, $E5,      $F8   ; 02 
- D 1 - I - 0x036F81 0D:AF71: F1        .byte $F1, $E5,      $00   ; 03 
- D 1 - I - 0x036F84 0D:AF74: F1        .byte $F1, $E5,      $08   ; 04 



off_07_AF77_28:
- D 1 - I - 0x036F87 0D:AF77: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036F88 0D:AF78: F2        .byte $F2, $BF, $40, $F8   ; 01 
- D 1 - I - 0x036F8C 0D:AF7C: F3        .byte $F3, $BD,      $00   ; 02 



off_07_AF7F_0C:
- D 1 - I - 0x036F8F 0D:AF7F: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036F90 0D:AF80: F0        .byte $F0, $E7, $01, $FC   ; 01 



off_07_AF84_24:
- D 1 - I - 0x036F94 0D:AF84: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036F95 0D:AF85: E4        .byte $E4, $E7, $01, $F8   ; 01 
- D 1 - I - 0x036F99 0D:AF89: E5        .byte $E5, $E7,      $00   ; 02 
- D 1 - I - 0x036F9C 0D:AF8C: F5        .byte $F5, $E7,      $F8   ; 03 
- D 1 - I - 0x036F9F 0D:AF8F: F5        .byte $F5, $E7,      $FD   ; 04 
- D 1 - I - 0x036FA2 0D:AF92: F5        .byte $F5, $E7,      $00   ; 05 



off_07_AF95_25:
- D 1 - I - 0x036FA5 0D:AF95: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036FA6 0D:AF96: F8        .byte $F8, $E7, $01, $F8   ; 01 
- D 1 - I - 0x036FAA 0D:AF9A: F9        .byte $F9, $E7,      $FD   ; 02 
- D 1 - I - 0x036FAD 0D:AF9D: F9        .byte $F9, $E7,      $00   ; 03 



off_07_AFA0_0D:
- D 1 - I - 0x036FB0 0D:AFA0: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036FB1 0D:AFA1: F0        .byte $F0, $E9, $01, $FC   ; 01 



off_07_AFA5_0E:
- D 1 - I - 0x036FB5 0D:AFA5: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036FB6 0D:AFA6: F0        .byte $F0, $D1, $03, $F8   ; 01 
- D 1 - I - 0x036FBA 0D:AFAA: F1        .byte $F1, $D3,      $00   ; 02 



off_07_AFAD_0F:
- D 1 - I - 0x036FBD 0D:AFAD: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036FBE 0D:AFAE: F0        .byte $F0, $D5, $00, $F8   ; 01 
- D 1 - I - 0x036FC2 0D:AFB2: F1        .byte $F1, $D7,      $00   ; 02 



off_07_AFB5_10:
- D 1 - I - 0x036FC5 0D:AFB5: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036FC6 0D:AFB6: F0        .byte $F0, $D9, $01, $F8   ; 01 
- D 1 - I - 0x036FCA 0D:AFBA: F1        .byte $F1, $DB,      $00   ; 02 



off_07_AFBD_11:
- D 1 - I - 0x036FCD 0D:AFBD: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036FCE 0D:AFBE: F0        .byte $F0, $F9, $03, $F8   ; 01 
- D 1 - I - 0x036FD2 0D:AFC2: F1        .byte $F1, $FB,      $00   ; 02 



off_07_AFC5_12:
- D 1 - I - 0x036FD5 0D:AFC5: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036FD6 0D:AFC6: F0        .byte $F0, $CD, $01, $F8   ; 01 
- D 1 - I - 0x036FDA 0D:AFCA: F1        .byte $F1, $CF,      $00   ; 02 



off_07_AFCD_13:
- D 1 - I - 0x036FDD 0D:AFCD: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036FDE 0D:AFCE: F0        .byte $F0, $C1, $01, $F8   ; 01 
- D 1 - I - 0x036FE2 0D:AFD2: F1        .byte $F1, $C9,      $00   ; 02 



off_07_AFD5_14:
- D 1 - I - 0x036FE5 0D:AFD5: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036FE6 0D:AFD6: F0        .byte $F0, $C3, $01, $F8   ; 01 
- D 1 - I - 0x036FEA 0D:AFDA: F1        .byte $F1, $C9,      $00   ; 02 



off_07_AFDD_15:
- D 1 - I - 0x036FED 0D:AFDD: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036FEE 0D:AFDE: F0        .byte $F0, $C5, $01, $F8   ; 01 
- D 1 - I - 0x036FF2 0D:AFE2: F1        .byte $F1, $C9,      $00   ; 02 



off_07_AFE5_16:
- D 1 - I - 0x036FF5 0D:AFE5: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036FF6 0D:AFE6: F0        .byte $F0, $C7, $01, $F8   ; 01 
- D 1 - I - 0x036FFA 0D:AFEA: F1        .byte $F1, $C9,      $00   ; 02 



off_07_AFED_17:
- D 1 - I - 0x036FFD 0D:AFED: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x036FFE 0D:AFEE: F0        .byte $F0, $C1, $01, $F8   ; 01 
- D 1 - I - 0x037002 0D:AFF2: F1        .byte $F1, $CB,      $00   ; 02 



off_07_AFF5_18:
- - - - - - 0x037005 0D:AFF5: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- - - - - - 0x037006 0D:AFF6: F0        .byte $F0, $C3, $01, $F8   ; 01 
- - - - - - 0x03700A 0D:AFFA: F1        .byte $F1, $CB,      $00   ; 02 



off_07_AFFD_19:
- - - - - - 0x03700D 0D:AFFD: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- - - - - - 0x03700E 0D:AFFE: F0        .byte $F0, $C5, $01, $F8   ; 01 
- - - - - - 0x037012 0D:B002: F1        .byte $F1, $CB,      $00   ; 02 



off_07_B005_1A:
- D 1 - I - 0x037015 0D:B005: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x037016 0D:B006: F0        .byte $F0, $C7, $01, $F8   ; 01 
- D 1 - I - 0x03701A 0D:B00A: F1        .byte $F1, $CB,      $00   ; 02 



off_07_B00D_38:
- - - - - - 0x03701D 0D:B00D: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- - - - - - 0x03701E 0D:B00E: F0        .byte $F0, $C1, $01, $F4   ; 01 
- - - - - - 0x037022 0D:B012: F1        .byte $F1, $CB,      $FC   ; 02 
- - - - - - 0x037025 0D:B015: F1        .byte $F1, $C9,      $04   ; 03 



off_07_B018_2C:
- D 1 - I - 0x037028 0D:B018: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x037029 0D:B019: F0        .byte $F0, $70, $03, $F8   ; 01 
- D 1 - I - 0x03702D 0D:B01D: F1        .byte $F1, $72,      $00   ; 02 



off_07_B020_2D:
- D 1 - I - 0x037030 0D:B020: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x037031 0D:B021: F0        .byte $F0, $74, $01, $F8   ; 01 
- D 1 - I - 0x037035 0D:B025: F1        .byte $F1, $76,      $00   ; 02 



off_07_B028_34:
- D 1 - I - 0x037038 0D:B028: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x037039 0D:B029: F0        .byte $F0, $11, $01, $F8   ; 01 
- D 1 - I - 0x03703D 0D:B02D: F1        .byte $F1, $13,      $00   ; 02 



off_07_B030_35:
- - - - - - 0x037040 0D:B030: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- - - - - - 0x037041 0D:B031: F0        .byte $F0, $21, $01, $F8   ; 01 
- - - - - - 0x037045 0D:B035: F1        .byte $F1, $23,      $00   ; 02 



off_07_B038_2E:
- D 1 - I - 0x037048 0D:B038: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x037049 0D:B039: F0        .byte $F0, $F5, $03, $F8   ; 01 
- D 1 - I - 0x03704D 0D:B03D: F0        .byte $F0, $F5, $43, $00   ; 02 



off_07_B041_2F:
- D 1 - I - 0x037051 0D:B041: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x037052 0D:B042: F0        .byte $F0, $F7, $03, $F8   ; 01 
- D 1 - I - 0x037056 0D:B046: F0        .byte $F0, $F7, $43, $00   ; 02 



off_07_B04A_37:
- D 1 - I - 0x03705A 0D:B04A: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03705B 0D:B04B: F0        .byte $F0, $BD, $00, $F0   ; 01 
- D 1 - I - 0x03705F 0D:B04F: F1        .byte $F1, $BF,      $F8   ; 02 
- D 1 - I - 0x037062 0D:B052: F1        .byte $F1, $BD,      $00   ; 03 
- D 1 - I - 0x037065 0D:B055: F1        .byte $F1, $BF,      $08   ; 04 



off_07_B058_23:
- D 1 - I - 0x037068 0D:B058: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x037069 0D:B059: 00        .byte $00, $E7, $00, $FC   ; 01 



off_07_B05D_29:
- D 1 - I - 0x03706D 0D:B05D: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03706E 0D:B05E: F0        .byte $F0, $7C, $01, $F8   ; 01 
- D 1 - I - 0x037072 0D:B062: F1        .byte $F1, $7E,      $00   ; 02 



off_07_B065_2A:
- D 1 - I - 0x037075 0D:B065: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x037076 0D:B066: F0        .byte $F0, $7C, $03, $F8   ; 01 
- D 1 - I - 0x03707A 0D:B06A: F1        .byte $F1, $7E,      $00   ; 02 



off_07_B06D_2B:
- D 1 - I - 0x03707D 0D:B06D: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03707E 0D:B06E: F0        .byte $F0, $7C, $00, $F8   ; 01 
- D 1 - I - 0x037082 0D:B072: F1        .byte $F1, $7E,      $00   ; 02 



off_06_B075_04:
- D 1 - I - 0x037085 0D:B075: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x037086 0D:B076: F0        .byte $F0, $98, $01, $F8   ; 01 
- D 1 - I - 0x03708A 0D:B07A: F1        .byte $F1, $9A,      $00   ; 02 



off_06_B07D_05:
- D 1 - I - 0x03708D 0D:B07D: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03708E 0D:B07E: F0        .byte $F0, $98, $01, $F8   ; 01 
- D 1 - I - 0x037092 0D:B082: F3        .byte $F3, $9A,      $00   ; 02 



off_06_B085_06:
- D 1 - I - 0x037095 0D:B085: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x037096 0D:B086: F0        .byte $F0, $9C, $01, $F8   ; 01 
- D 1 - I - 0x03709A 0D:B08A: F1        .byte $F1, $9E,      $00   ; 02 



off_06_B08D_07:
- D 1 - I - 0x03709D 0D:B08D: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03709E 0D:B08E: F0        .byte $F0, $A0, $01, $F8   ; 01 
- D 1 - I - 0x0370A2 0D:B092: F1        .byte $F1, $A2,      $00   ; 02 



off_06_B095_08:
- D 1 - I - 0x0370A5 0D:B095: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0370A6 0D:B096: F0        .byte $F0, $A4, $01, $F8   ; 01 
- D 1 - I - 0x0370AA 0D:B09A: F1        .byte $F1, $A6,      $00   ; 02 



off_06_B09D_09:
- D 1 - I - 0x0370AD 0D:B09D: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0370AE 0D:B09E: F2        .byte $F2, $9A, $41, $F8   ; 01 
- D 1 - I - 0x0370B2 0D:B0A2: F1        .byte $F1, $98,      $00   ; 02 



off_06_B0A5_0A:
- D 1 - I - 0x0370B5 0D:B0A5: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0370B6 0D:B0A6: F0        .byte $F0, $9E, $41, $F8   ; 01 
- D 1 - I - 0x0370BA 0D:B0AA: F1        .byte $F1, $9C,      $00   ; 02 



off_06_B0AD_0B:
- D 1 - I - 0x0370BD 0D:B0AD: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0370BE 0D:B0AE: F0        .byte $F0, $A2, $41, $F8   ; 01 
- D 1 - I - 0x0370C2 0D:B0B2: F1        .byte $F1, $A0,      $00   ; 02 



off_06_B0B5_0C:
- D 1 - I - 0x0370C5 0D:B0B5: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0370C6 0D:B0B6: F0        .byte $F0, $A6, $41, $F8   ; 01 
- D 1 - I - 0x0370CA 0D:B0BA: F1        .byte $F1, $A4,      $00   ; 02 



off_06_B0BD_0D:
off_06_B0BD_11:
- D 1 - I - 0x0370CD 0D:B0BD: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0370CE 0D:B0BE: F8        .byte $F8, $E5, $02, $F0   ; 01 
- D 1 - I - 0x0370D2 0D:B0C2: F9        .byte $F9, $E5,      $F8   ; 02 
- D 1 - I - 0x0370D5 0D:B0C5: F9        .byte $F9, $E5,      $00   ; 03 
- D 1 - I - 0x0370D8 0D:B0C8: F9        .byte $F9, $E5,      $08   ; 04 



off_06_B0CB_0E:
- D 1 - I - 0x0370DB 0D:B0CB: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0370DC 0D:B0CC: E6        .byte $E6, $80, $02, $EE   ; 01 
- D 1 - I - 0x0370E0 0D:B0D0: E7        .byte $E7, $82,      $F6   ; 02 
- D 1 - I - 0x0370E3 0D:B0D3: E7        .byte $E7, $84,      $FE   ; 03 
- D 1 - I - 0x0370E6 0D:B0D6: 07        .byte $07, $86,      $FE   ; 04 
- D 1 - I - 0x0370E9 0D:B0D9: 01        .byte $01, $88,      $06   ; 05 



off_06_B0DC_0F:
- D 1 - I - 0x0370EC 0D:B0DC: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0370ED 0D:B0DD: E0        .byte $E0, $8A, $02, $F8   ; 01 
- D 1 - I - 0x0370F1 0D:B0E1: 01        .byte $01, $8A,      $F8   ; 02 



off_06_B0E4_10:
- D 1 - I - 0x0370F4 0D:B0E4: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0370F5 0D:B0E5: FA        .byte $FA, $80, $82, $EE   ; 01 
- D 1 - I - 0x0370F9 0D:B0E9: FB        .byte $FB, $82,      $F6   ; 02 
- D 1 - I - 0x0370FC 0D:B0EC: FB        .byte $FB, $84,      $FE   ; 03 
- D 1 - I - 0x0370FF 0D:B0EF: DB        .byte $DB, $86,      $FE   ; 04 
- D 1 - I - 0x037102 0D:B0F2: E1        .byte $E1, $88,      $06   ; 05 



off_06_B0F5_12:
off_06_B0F5_1A:
- D 1 - I - 0x037105 0D:B0F5: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x037106 0D:B0F6: F0        .byte $F0, $8C, $01, $F0   ; 01 
- D 1 - I - 0x03710A 0D:B0FA: F1        .byte $F1, $8C,      $F8   ; 02 
- D 1 - I - 0x03710D 0D:B0FD: F1        .byte $F1, $8C,      $00   ; 03 
- D 1 - I - 0x037110 0D:B100: F1        .byte $F1, $8C,      $08   ; 04 



off_06_B103_13:
off_06_B103_19:
- D 1 - I - 0x037113 0D:B103: 06        .byte $06   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x037114 0D:B104: E4        .byte $E4, $8E, $01, $F0   ; 01 
- D 1 - I - 0x037118 0D:B108: E1        .byte $E1, $90,      $F8   ; 02 
- D 1 - I - 0x03711B 0D:B10B: E1        .byte $E1, $84,      $00   ; 03 
- D 1 - I - 0x03711E 0D:B10E: 01        .byte $01, $92,      $F8   ; 04 
- D 1 - I - 0x037121 0D:B111: 01        .byte $01, $94,      $00   ; 05 
- D 1 - I - 0x037124 0D:B114: FB        .byte $FB, $88,      $08   ; 06 



off_06_B117_14:
off_06_B117_18:
- D 1 - I - 0x037127 0D:B117: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x037128 0D:B118: E0        .byte $E0, $96, $01, $F8   ; 01 
- D 1 - I - 0x03712C 0D:B11C: E1        .byte $E1, $8A,      $00   ; 02 
- D 1 - I - 0x03712F 0D:B11F: 01        .byte $01, $96,      $F8   ; 03 
- D 1 - I - 0x037132 0D:B122: 01        .byte $01, $8A,      $00   ; 04 



off_06_B125_15:
off_06_B125_17:
- D 1 - I - 0x037135 0D:B125: 06        .byte $06   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x037136 0D:B126: FC        .byte $FC, $8E, $81, $F0   ; 01 
- D 1 - I - 0x03713A 0D:B12A: E1        .byte $E1, $92,      $F8   ; 02 
- D 1 - I - 0x03713D 0D:B12D: E1        .byte $E1, $94,      $00   ; 03 
- D 1 - I - 0x037140 0D:B130: 01        .byte $01, $90,      $F8   ; 04 
- D 1 - I - 0x037143 0D:B133: 01        .byte $01, $84,      $00   ; 05 
- D 1 - I - 0x037146 0D:B136: E7        .byte $E7, $88,      $08   ; 06 



off_06_B139_16:
- D 1 - I - 0x037149 0D:B139: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03714A 0D:B13A: F0        .byte $F0, $8C, $81, $F0   ; 01 
- D 1 - I - 0x03714E 0D:B13E: F1        .byte $F1, $8C,      $F8   ; 02 
- D 1 - I - 0x037151 0D:B141: F1        .byte $F1, $8C,      $00   ; 03 
- D 1 - I - 0x037154 0D:B144: F1        .byte $F1, $8C,      $08   ; 04 



off_06_B147_1B:
- D 1 - I - 0x037157 0D:B147: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x037158 0D:B148: F2        .byte $F2, $80, $02, $FC   ; 01 



off_06_B14C_1C:
- D 1 - I - 0x03715C 0D:B14C: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03715D 0D:B14D: F2        .byte $F2, $82, $02, $FD   ; 01 



off_06_B151_1D:
- D 1 - I - 0x037161 0D:B151: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x037162 0D:B152: F2        .byte $F2, $84, $02, $FE   ; 01 



off_06_B156_1E:
- D 1 - I - 0x037166 0D:B156: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x037167 0D:B157: F4        .byte $F4, $86, $02, $FE   ; 01 



off_06_B15B_1F:
- D 1 - I - 0x03716B 0D:B15B: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03716C 0D:B15C: F6        .byte $F6, $88, $02, $FE   ; 01 



off_06_B160_20:
- D 1 - I - 0x037170 0D:B160: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x037171 0D:B161: EC        .byte $EC, $86, $82, $FE   ; 01 



off_06_B165_21:
- D 1 - I - 0x037175 0D:B165: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x037176 0D:B166: F0        .byte $F0, $84, $82, $FE   ; 01 



off_06_B16A_22:
- D 1 - I - 0x03717A 0D:B16A: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03717B 0D:B16B: F0        .byte $F0, $82, $82, $FD   ; 01 



off_06_B16F_23:
- D 1 - I - 0x03717F 0D:B16F: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x037180 0D:B170: F0        .byte $F0, $80, $82, $FC   ; 01 



off_06_B174_24:
- D 1 - I - 0x037184 0D:B174: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x037185 0D:B175: F0        .byte $F0, $A8, $02, $FC   ; 01 



off_06_B179_25:
- D 1 - I - 0x037189 0D:B179: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03718A 0D:B17A: F0        .byte $F0, $AA, $02, $FC   ; 01 



off_06_B17E_26:
- D 1 - I - 0x03718E 0D:B17E: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03718F 0D:B17F: F0        .byte $F0, $AC, $02, $F8   ; 01 
- D 1 - I - 0x037193 0D:B183: F1        .byte $F1, $AE,      $00   ; 02 



off_06_B186_27:
- D 1 - I - 0x037196 0D:B186: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x037197 0D:B187: F0        .byte $F0, $B0, $02, $F8   ; 01 
- D 1 - I - 0x03719B 0D:B18B: F1        .byte $F1, $B2,      $00   ; 02 



off_06_B18E_28:
- D 1 - I - 0x03719E 0D:B18E: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03719F 0D:B18F: F0        .byte $F0, $B4, $02, $F8   ; 01 
- D 1 - I - 0x0371A3 0D:B193: F1        .byte $F1, $B6,      $00   ; 02 



off_06_B196_29:
- D 1 - I - 0x0371A6 0D:B196: 08        .byte $08   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0371A7 0D:B197: E0        .byte $E0, $BC, $02, $F0   ; 01 
- D 1 - I - 0x0371AB 0D:B19B: E1        .byte $E1, $BE,      $F8   ; 02 
- D 1 - I - 0x0371AE 0D:B19E: E1        .byte $E1, $B8,      $00   ; 03 
- D 1 - I - 0x0371B1 0D:B1A1: E1        .byte $E1, $BA,      $08   ; 04 
- D 1 - I - 0x0371B4 0D:B1A4: 00        .byte $00, $BA, $C2, $F0   ; 05 
- D 1 - I - 0x0371B8 0D:B1A8: 01        .byte $01, $B8,      $F8   ; 06 
- D 1 - I - 0x0371BB 0D:B1AB: 00        .byte $00, $B8, $82, $00   ; 07 
- D 1 - I - 0x0371BF 0D:B1AF: 01        .byte $01, $BA,      $08   ; 08 



off_06_B1B2_2A:
- D 1 - I - 0x0371C2 0D:B1B2: 08        .byte $08   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0371C3 0D:B1B3: E0        .byte $E0, $DF, $01, $F0   ; 01 
- D 1 - I - 0x0371C7 0D:B1B7: E1        .byte $E1, $DF,      $F8   ; 02 
- D 1 - I - 0x0371CA 0D:B1BA: E1        .byte $E1, $DF,      $00   ; 03 
- D 1 - I - 0x0371CD 0D:B1BD: E1        .byte $E1, $DF,      $08   ; 04 
- D 1 - I - 0x0371D0 0D:B1C0: 01        .byte $01, $27,      $F0   ; 05 
- D 1 - I - 0x0371D3 0D:B1C3: 01        .byte $01, $27,      $F8   ; 06 
- D 1 - I - 0x0371D6 0D:B1C6: 01        .byte $01, $27,      $00   ; 07 
- D 1 - I - 0x0371D9 0D:B1C9: 01        .byte $01, $27,      $08   ; 08 



off_06_B1CC_7F:
- D 1 - I - 0x0371DC 0D:B1CC: 08        .byte $08   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0371DD 0D:B1CD: E0        .byte $E0, $DF, $01, $F0   ; 01 
- D 1 - I - 0x0371E1 0D:B1D1: E1        .byte $E1, $DF,      $F8   ; 02 
- D 1 - I - 0x0371E4 0D:B1D4: E1        .byte $E1, $DF,      $00   ; 03 
- D 1 - I - 0x0371E7 0D:B1D7: E1        .byte $E1, $DF,      $08   ; 04 
- D 1 - I - 0x0371EA 0D:B1DA: 01        .byte $01, $27,      $F0   ; 05 
- D 1 - I - 0x0371ED 0D:B1DD: 01        .byte $01, $27,      $F8   ; 06 
- D 1 - I - 0x0371F0 0D:B1E0: 01        .byte $01, $27,      $00   ; 07 
- D 1 - I - 0x0371F3 0D:B1E3: 01        .byte $01, $27,      $08   ; 08 



off_06_B1E6_2B:
- D 1 - I - 0x0371F6 0D:B1E6: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0371F7 0D:B1E7: F0        .byte $F0, $CA, $01, $F8   ; 01 
- D 1 - I - 0x0371FB 0D:B1EB: F0        .byte $F0, $CA, $41, $00   ; 02 



off_06_B1EF_2C:
- D 1 - I - 0x0371FF 0D:B1EF: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x037200 0D:B1F0: F0        .byte $F0, $CC, $01, $F8   ; 01 
- D 1 - I - 0x037204 0D:B1F4: F1        .byte $F1, $CE,      $00   ; 02 



off_06_B1F7_2D:
- D 1 - I - 0x037207 0D:B1F7: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x037208 0D:B1F8: F0        .byte $F0, $CE, $41, $F8   ; 01 
- D 1 - I - 0x03720C 0D:B1FC: F1        .byte $F1, $CC,      $00   ; 02 



off_06_B1FF_2E:
- D 1 - I - 0x03720F 0D:B1FF: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x037210 0D:B200: 00        .byte $00, $D0, $01, $FC   ; 01 



off_06_B204_2F:
- D 1 - I - 0x037214 0D:B204: 01        .byte $01   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x037215 0D:B205: F0        .byte $F0, $D2, $01, $FC   ; 01 



off_06_B209_30:
- D 1 - I - 0x037219 0D:B209: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03721A 0D:B20A: FC        .byte $FC, $D4, $01, $F8   ; 01 
- D 1 - I - 0x03721E 0D:B20E: FD        .byte $FD, $D6,      $00   ; 02 



off_06_B211_31:
- D 1 - I - 0x037221 0D:B211: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x037222 0D:B212: FC        .byte $FC, $CA, $81, $F8   ; 01 
- D 1 - I - 0x037226 0D:B216: FC        .byte $FC, $CA, $C1, $00   ; 02 



off_06_B21A_32:
- D 1 - I - 0x03722A 0D:B21A: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03722B 0D:B21B: F0        .byte $F0, $A3, $02, $F8   ; 01 
- D 1 - I - 0x03722F 0D:B21F: F1        .byte $F1, $A5,      $00   ; 02 



off_06_B222_33:
- D 1 - I - 0x037232 0D:B222: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x037233 0D:B223: F0        .byte $F0, $A7, $02, $F8   ; 01 
- D 1 - I - 0x037237 0D:B227: F1        .byte $F1, $A9,      $00   ; 02 



off_06_B22A_34:
- D 1 - I - 0x03723A 0D:B22A: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03723B 0D:B22B: F0        .byte $F0, $AB, $02, $F8   ; 01 
- D 1 - I - 0x03723F 0D:B22F: F0        .byte $F0, $AB, $42, $00   ; 02 



off_06_B233_35:
- D 1 - I - 0x037243 0D:B233: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x037244 0D:B234: F0        .byte $F0, $AD, $02, $F8   ; 01 
- D 1 - I - 0x037248 0D:B238: F0        .byte $F0, $AD, $42, $00   ; 02 



off_06_B23C_36:
- D 1 - I - 0x03724C 0D:B23C: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03724D 0D:B23D: F0        .byte $F0, $AF, $02, $F8   ; 01 
- D 1 - I - 0x037251 0D:B241: F0        .byte $F0, $AF, $42, $00   ; 02 



off_06_B245_37:
- D 1 - I - 0x037255 0D:B245: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x037256 0D:B246: F0        .byte $F0, $BD, $00, $F9   ; 01 
- D 1 - I - 0x03725A 0D:B24A: F1        .byte $F1, $BF,      $01   ; 02 



off_06_B24D_38:
- D 1 - I - 0x03725D 0D:B24D: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03725E 0D:B24E: E0        .byte $E0, $40, $00, $F8   ; 01 
- D 1 - I - 0x037262 0D:B252: E1        .byte $E1, $42,      $00   ; 02 
- D 1 - I - 0x037265 0D:B255: 01        .byte $01, $44,      $F8   ; 03 
- D 1 - I - 0x037268 0D:B258: 01        .byte $01, $46,      $00   ; 04 



off_06_B25B_39:
- D 1 - I - 0x03726B 0D:B25B: 03        .byte $03   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03726C 0D:B25C: E0        .byte $E0, $48, $00, $F8   ; 01 
- D 1 - I - 0x037270 0D:B260: E1        .byte $E1, $4A,      $00   ; 02 
- D 1 - I - 0x037273 0D:B263: 01        .byte $01, $4C,      $FC   ; 03 



off_06_B266_3A:
- D 1 - I - 0x037276 0D:B266: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x037277 0D:B267: E0        .byte $E0, $4E, $00, $F8   ; 01 
- D 1 - I - 0x03727B 0D:B26B: E1        .byte $E1, $50,      $00   ; 02 
- D 1 - I - 0x03727E 0D:B26E: 01        .byte $01, $52,      $F8   ; 03 
- D 1 - I - 0x037281 0D:B271: 01        .byte $01, $54,      $00   ; 04 



off_06_B274_3B:
- D 1 - I - 0x037284 0D:B274: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x037285 0D:B275: E0        .byte $E0, $78, $00, $F9   ; 01 
- D 1 - I - 0x037289 0D:B279: E1        .byte $E1, $50,      $01   ; 02 
- D 1 - I - 0x03728C 0D:B27C: 01        .byte $01, $52,      $F8   ; 03 
- D 1 - I - 0x03728F 0D:B27F: 01        .byte $01, $54,      $00   ; 04 



off_06_B282_3C:
- D 1 - I - 0x037292 0D:B282: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x037293 0D:B283: E0        .byte $E0, $7A, $00, $F9   ; 01 
- D 1 - I - 0x037297 0D:B287: E1        .byte $E1, $50,      $01   ; 02 
- D 1 - I - 0x03729A 0D:B28A: 01        .byte $01, $52,      $F8   ; 03 
- D 1 - I - 0x03729D 0D:B28D: 01        .byte $01, $54,      $00   ; 04 



off_06_B290_3D:
- D 1 - I - 0x0372A0 0D:B290: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0372A1 0D:B291: E0        .byte $E0, $7C, $00, $F9   ; 01 
- D 1 - I - 0x0372A5 0D:B295: E1        .byte $E1, $50,      $01   ; 02 
- D 1 - I - 0x0372A8 0D:B298: 01        .byte $01, $52,      $F8   ; 03 
- D 1 - I - 0x0372AB 0D:B29B: 01        .byte $01, $54,      $00   ; 04 



off_06_B29E_3E:
- D 1 - I - 0x0372AE 0D:B29E: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0372AF 0D:B29F: EA        .byte $EA, $56, $00, $F4   ; 01 
- D 1 - I - 0x0372B3 0D:B2A3: EB        .byte $EB, $58,      $FC   ; 02 
- D 1 - I - 0x0372B6 0D:B2A6: 0B        .byte $0B, $5A,      $F8   ; 03 
- D 1 - I - 0x0372B9 0D:B2A9: 0B        .byte $0B, $5C,      $00   ; 04 



off_06_B2AC_3F:
- D 1 - I - 0x0372BC 0D:B2AC: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0372BD 0D:B2AD: EA        .byte $EA, $5E, $00, $F5   ; 01 
- D 1 - I - 0x0372C1 0D:B2B1: EB        .byte $EB, $60,      $FD   ; 02 
- D 1 - I - 0x0372C4 0D:B2B4: 0B        .byte $0B, $62,      $F8   ; 03 
- D 1 - I - 0x0372C7 0D:B2B7: 0B        .byte $0B, $64,      $00   ; 04 



off_06_B2BA_40:
- D 1 - I - 0x0372CA 0D:B2BA: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0372CB 0D:B2BB: EA        .byte $EA, $66, $00, $F4   ; 01 
- D 1 - I - 0x0372CF 0D:B2BF: EB        .byte $EB, $68,      $FC   ; 02 
- D 1 - I - 0x0372D2 0D:B2C2: 0B        .byte $0B, $6A,      $F8   ; 03 
- D 1 - I - 0x0372D5 0D:B2C5: 0B        .byte $0B, $6C,      $00   ; 04 



off_06_B2C8_41:
- D 1 - I - 0x0372D8 0D:B2C8: 0A        .byte $0A   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0372D9 0D:B2C9: E8        .byte $E8, $58, $41, $EE   ; 01 
- D 1 - I - 0x0372DD 0D:B2CD: E9        .byte $E9, $74,      $F6   ; 02 
- D 1 - I - 0x0372E0 0D:B2D0: 09        .byte $09, $5C,      $EA   ; 03 
- D 1 - I - 0x0372E3 0D:B2D3: 09        .byte $09, $5A,      $F2   ; 04 
- D 1 - I - 0x0372E6 0D:B2D6: E9        .byte $E9, $72,      $FE   ; 05 
- D 1 - I - 0x0372E9 0D:B2D9: E0        .byte $E0, $E2, $00, $00   ; 06 
- D 1 - I - 0x0372ED 0D:B2DD: E1        .byte $E1, $E4,      $08   ; 07 
- D 1 - I - 0x0372F0 0D:B2E0: E1        .byte $E1, $E6,      $10   ; 08 
- D 1 - I - 0x0372F3 0D:B2E3: 01        .byte $01, $44,      $08   ; 09 
- D 1 - I - 0x0372F6 0D:B2E6: 01        .byte $01, $46,      $10   ; 0A 



off_06_B2E9_42:
- D 1 - I - 0x0372F9 0D:B2E9: 0A        .byte $0A   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0372FA 0D:B2EA: E8        .byte $E8, $58, $41, $EE   ; 01 
- D 1 - I - 0x0372FE 0D:B2EE: E9        .byte $E9, $74,      $F6   ; 02 
- D 1 - I - 0x037301 0D:B2F1: 09        .byte $09, $5C,      $EA   ; 03 
- D 1 - I - 0x037304 0D:B2F4: 09        .byte $09, $5A,      $F2   ; 04 
- D 1 - I - 0x037307 0D:B2F7: EB        .byte $EB, $9E,      $FE   ; 05 
- D 1 - I - 0x03730A 0D:B2FA: E0        .byte $E0, $E8, $00, $00   ; 06 
- D 1 - I - 0x03730E 0D:B2FE: E1        .byte $E1, $EA,      $08   ; 07 
- D 1 - I - 0x037311 0D:B301: E1        .byte $E1, $E6,      $10   ; 08 
- D 1 - I - 0x037314 0D:B304: 01        .byte $01, $44,      $08   ; 09 
- D 1 - I - 0x037317 0D:B307: 01        .byte $01, $46,      $10   ; 0A 



off_06_B30A_43:
- D 1 - I - 0x03731A 0D:B30A: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03731B 0D:B30B: EA        .byte $EA, $76, $00, $F5   ; 01 
- D 1 - I - 0x03731F 0D:B30F: EB        .byte $EB, $58,      $FD   ; 02 
- D 1 - I - 0x037322 0D:B312: 0B        .byte $0B, $5A,      $F8   ; 03 
- D 1 - I - 0x037325 0D:B315: 0B        .byte $0B, $5C,      $00   ; 04 



off_06_B318_44:
- D 1 - I - 0x037328 0D:B318: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x037329 0D:B319: D2        .byte $D2, $7E, $00, $FB   ; 01 
- D 1 - I - 0x03732D 0D:B31D: F1        .byte $F1, $80,      $F7   ; 02 
- D 1 - I - 0x037330 0D:B320: F1        .byte $F1, $82,      $FF   ; 03 
- D 1 - I - 0x037333 0D:B323: 11        .byte $11, $84,      $F8   ; 04 
- D 1 - I - 0x037336 0D:B326: 11        .byte $11, $86,      $00   ; 05 



off_06_B329_45:
- D 1 - I - 0x037339 0D:B329: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03733A 0D:B32A: D0        .byte $D0, $7E, $00, $FC   ; 01 
- D 1 - I - 0x03733E 0D:B32E: F1        .byte $F1, $88,      $F8   ; 02 
- D 1 - I - 0x037341 0D:B331: F1        .byte $F1, $8A,      $00   ; 03 
- D 1 - I - 0x037344 0D:B334: 11        .byte $11, $8C,      $F8   ; 04 
- D 1 - I - 0x037347 0D:B337: 11        .byte $11, $8E,      $00   ; 05 



off_06_B33A_46:
- D 1 - I - 0x03734A 0D:B33A: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03734B 0D:B33B: D2        .byte $D2, $7E, $00, $FC   ; 01 
- D 1 - I - 0x03734F 0D:B33F: F1        .byte $F1, $90,      $F7   ; 02 
- D 1 - I - 0x037352 0D:B342: F1        .byte $F1, $92,      $FF   ; 03 
- D 1 - I - 0x037355 0D:B345: 11        .byte $11, $94,      $F8   ; 04 
- D 1 - I - 0x037358 0D:B348: 11        .byte $11, $96,      $00   ; 05 



off_06_B34B_47:
- D 1 - I - 0x03735B 0D:B34B: 0B        .byte $0B   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03735C 0D:B34C: D2        .byte $D2, $7E, $43, $F5   ; 01 
- D 1 - I - 0x037360 0D:B350: F1        .byte $F1, $82,      $EF   ; 02 
- D 1 - I - 0x037363 0D:B353: F1        .byte $F1, $F6,      $F7   ; 03 
- D 1 - I - 0x037366 0D:B356: 11        .byte $11, $86,      $ED   ; 04 
- D 1 - I - 0x037369 0D:B359: 11        .byte $11, $84,      $F5   ; 05 
- D 1 - I - 0x03736C 0D:B35C: F1        .byte $F1, $F4,      $FF   ; 06 
- D 1 - I - 0x03736F 0D:B35F: F0        .byte $F0, $E2, $00, $00   ; 07 
- D 1 - I - 0x037373 0D:B363: F1        .byte $F1, $E4,      $08   ; 08 
- D 1 - I - 0x037376 0D:B366: F1        .byte $F1, $E6,      $10   ; 09 
- D 1 - I - 0x037379 0D:B369: 11        .byte $11, $44,      $08   ; 0A 
- D 1 - I - 0x03737C 0D:B36C: 11        .byte $11, $46,      $10   ; 0B 



off_06_B36F_48:
- D 1 - I - 0x03737F 0D:B36F: 0B        .byte $0B   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x037380 0D:B370: D2        .byte $D2, $7E, $43, $F5   ; 01 
- D 1 - I - 0x037384 0D:B374: F1        .byte $F1, $82,      $EF   ; 02 
- D 1 - I - 0x037387 0D:B377: F1        .byte $F1, $F8,      $FF   ; 03 
- D 1 - I - 0x03738A 0D:B37A: 11        .byte $11, $86,      $ED   ; 04 
- D 1 - I - 0x03738D 0D:B37D: 11        .byte $11, $84,      $F5   ; 05 
- D 1 - I - 0x037390 0D:B380: F1        .byte $F1, $FA,      $F7   ; 06 
- D 1 - I - 0x037393 0D:B383: F0        .byte $F0, $E8, $00, $00   ; 07 
- D 1 - I - 0x037397 0D:B387: F1        .byte $F1, $EA,      $08   ; 08 
- D 1 - I - 0x03739A 0D:B38A: F1        .byte $F1, $E6,      $10   ; 09 
- D 1 - I - 0x03739D 0D:B38D: 11        .byte $11, $44,      $08   ; 0A 
- D 1 - I - 0x0373A0 0D:B390: 11        .byte $11, $46,      $10   ; 0B 



off_06_B393_49:
- D 1 - I - 0x0373A3 0D:B393: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0373A4 0D:B394: D2        .byte $D2, $7E, $00, $FD   ; 01 
- D 1 - I - 0x0373A8 0D:B398: F1        .byte $F1, $98,      $F8   ; 02 
- D 1 - I - 0x0373AB 0D:B39B: F1        .byte $F1, $92,      $00   ; 03 
- D 1 - I - 0x0373AE 0D:B39E: 11        .byte $11, $94,      $F9   ; 04 
- D 1 - I - 0x0373B1 0D:B3A1: 11        .byte $11, $96,      $01   ; 05 



off_06_B3A4_4A:
- D 1 - I - 0x0373B4 0D:B3A4: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0373B5 0D:B3A5: E0        .byte $E0, $A0, $00, $F8   ; 01 
- D 1 - I - 0x0373B9 0D:B3A9: E1        .byte $E1, $A2,      $00   ; 02 
- D 1 - I - 0x0373BC 0D:B3AC: 01        .byte $01, $A4,      $F8   ; 03 
- D 1 - I - 0x0373BF 0D:B3AF: 01        .byte $01, $A6,      $00   ; 04 



off_06_B3B2_4B:
- D 1 - I - 0x0373C2 0D:B3B2: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0373C3 0D:B3B3: E0        .byte $E0, $A8, $00, $F8   ; 01 
- D 1 - I - 0x0373C7 0D:B3B7: E1        .byte $E1, $AA,      $00   ; 02 
- D 1 - I - 0x0373CA 0D:B3BA: 01        .byte $01, $AC,      $F8   ; 03 
- D 1 - I - 0x0373CD 0D:B3BD: 01        .byte $01, $AE,      $00   ; 04 



off_06_B3C0_4C:
- D 1 - I - 0x0373D0 0D:B3C0: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0373D1 0D:B3C1: E0        .byte $E0, $B0, $00, $F8   ; 01 
- D 1 - I - 0x0373D5 0D:B3C5: E1        .byte $E1, $B2,      $00   ; 02 
- D 1 - I - 0x0373D8 0D:B3C8: 01        .byte $01, $B4,      $F8   ; 03 
- D 1 - I - 0x0373DB 0D:B3CB: 01        .byte $01, $B6,      $00   ; 04 



off_06_B3CE_4D:
- D 1 - I - 0x0373DE 0D:B3CE: 0A        .byte $0A   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0373DF 0D:B3CF: E0        .byte $E0, $B2, $42, $EE   ; 01 
- D 1 - I - 0x0373E3 0D:B3D3: E1        .byte $E1, $EE,      $F6   ; 02 
- D 1 - I - 0x0373E6 0D:B3D6: 01        .byte $01, $B6,      $EE   ; 03 
- D 1 - I - 0x0373E9 0D:B3D9: 01        .byte $01, $B4,      $F6   ; 04 
- D 1 - I - 0x0373EC 0D:B3DC: E1        .byte $E1, $EC,      $FE   ; 05 
- D 1 - I - 0x0373EF 0D:B3DF: E0        .byte $E0, $E2, $00, $00   ; 06 
- D 1 - I - 0x0373F3 0D:B3E3: E1        .byte $E1, $E4,      $08   ; 07 
- D 1 - I - 0x0373F6 0D:B3E6: E1        .byte $E1, $E6,      $10   ; 08 
- D 1 - I - 0x0373F9 0D:B3E9: 01        .byte $01, $44,      $08   ; 09 
- D 1 - I - 0x0373FC 0D:B3EC: 01        .byte $01, $46,      $10   ; 0A 



off_06_B3EF_4E:
- D 1 - I - 0x0373FF 0D:B3EF: 0A        .byte $0A   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x037400 0D:B3F0: E0        .byte $E0, $B2, $42, $EE   ; 01 
- D 1 - I - 0x037404 0D:B3F4: E1        .byte $E1, $F2,      $F6   ; 02 
- D 1 - I - 0x037407 0D:B3F7: 01        .byte $01, $B6,      $EE   ; 03 
- D 1 - I - 0x03740A 0D:B3FA: 01        .byte $01, $B4,      $F6   ; 04 
- D 1 - I - 0x03740D 0D:B3FD: F1        .byte $F1, $F0,      $FE   ; 05 
- D 1 - I - 0x037410 0D:B400: E0        .byte $E0, $E8, $00, $00   ; 06 
- D 1 - I - 0x037414 0D:B404: E1        .byte $E1, $EA,      $08   ; 07 
- D 1 - I - 0x037417 0D:B407: E1        .byte $E1, $E6,      $10   ; 08 
- D 1 - I - 0x03741A 0D:B40A: 01        .byte $01, $44,      $08   ; 09 
- D 1 - I - 0x03741D 0D:B40D: 01        .byte $01, $46,      $10   ; 0A 



off_06_B410_4F:
- D 1 - I - 0x037420 0D:B410: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x037421 0D:B411: E0        .byte $E0, $B8, $00, $F8   ; 01 
- D 1 - I - 0x037425 0D:B415: E3        .byte $E3, $B2,      $00   ; 02 
- D 1 - I - 0x037428 0D:B418: 01        .byte $01, $B4,      $F8   ; 03 
- D 1 - I - 0x03742B 0D:B41B: 01        .byte $01, $B6,      $00   ; 04 



off_06_B41E_6D:
- D 1 - I - 0x03742E 0D:B41E: 0C        .byte $0C   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03742F 0D:B41F: A0        .byte $A0, $F2, $01, $F8   ; 01 
- D 1 - I - 0x037433 0D:B423: A1        .byte $A1, $CA,      $00   ; 02 
- D 1 - I - 0x037436 0D:B426: C1        .byte $C1, $E0,      $F0   ; 03 
- D 1 - I - 0x037439 0D:B429: C1        .byte $C1, $F0,      $F8   ; 04 
- D 1 - I - 0x03743C 0D:B42C: E1        .byte $E1, $F2,      $F8   ; 05 
- D 1 - I - 0x03743F 0D:B42F: E1        .byte $E1, $F0,      $00   ; 06 
- D 1 - I - 0x037442 0D:B432: 01        .byte $01, $F2,      $F0   ; 07 
- D 1 - I - 0x037445 0D:B435: 01        .byte $01, $F2,      $00   ; 08 
- D 1 - I - 0x037448 0D:B438: 21        .byte $21, $D6,      $E8   ; 09 
- D 1 - I - 0x03744B 0D:B43B: 21        .byte $21, $CA,      $00   ; 0A 
- D 1 - I - 0x03744E 0D:B43E: 21        .byte $21, $DC,      $08   ; 0B 
- D 1 - I - 0x037451 0D:B441: 41        .byte $41, $D6,      $E0   ; 0C 



off_06_B444_6E:
- D 1 - I - 0x037454 0D:B444: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x037455 0D:B445: E0        .byte $E0, $80, $00, $F8   ; 01 
- D 1 - I - 0x037459 0D:B449: E1        .byte $E1, $82,      $00   ; 02 
- D 1 - I - 0x03745C 0D:B44C: 01        .byte $01, $84,      $F8   ; 03 
- D 1 - I - 0x03745F 0D:B44F: 01        .byte $01, $86,      $00   ; 04 



off_06_B452_6F:
- D 1 - I - 0x037462 0D:B452: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x037463 0D:B453: E0        .byte $E0, $88, $00, $F8   ; 01 
- D 1 - I - 0x037467 0D:B457: E1        .byte $E1, $8A,      $00   ; 02 
- D 1 - I - 0x03746A 0D:B45A: 01        .byte $01, $8C,      $F8   ; 03 
- D 1 - I - 0x03746D 0D:B45D: 01        .byte $01, $8E,      $00   ; 04 



off_06_B460_70:
- D 1 - I - 0x037470 0D:B460: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x037471 0D:B461: E0        .byte $E0, $90, $00, $F8   ; 01 
- D 1 - I - 0x037475 0D:B465: E1        .byte $E1, $92,      $00   ; 02 
- D 1 - I - 0x037478 0D:B468: 01        .byte $01, $94,      $FC   ; 03 
- D 1 - I - 0x03747B 0D:B46B: 01        .byte $01, $96,      $04   ; 04 



off_06_B46E_71:
- D 1 - I - 0x03747E 0D:B46E: 08        .byte $08   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03747F 0D:B46F: E0        .byte $E0, $98, $00, $00   ; 01 
- D 1 - I - 0x037483 0D:B473: E1        .byte $E1, $9A,      $08   ; 02 
- D 1 - I - 0x037486 0D:B476: E1        .byte $E1, $9C,      $10   ; 03 
- D 1 - I - 0x037489 0D:B479: E1        .byte $E1, $9E,      $18   ; 04 
- D 1 - I - 0x03748C 0D:B47C: 01        .byte $01, $A0,      $00   ; 05 
- D 1 - I - 0x03748F 0D:B47F: 01        .byte $01, $A2,      $08   ; 06 
- D 1 - I - 0x037492 0D:B482: 01        .byte $01, $A4,      $10   ; 07 
- D 1 - I - 0x037495 0D:B485: 01        .byte $01, $A6,      $18   ; 08 



off_06_B488_72:
- D 1 - I - 0x037498 0D:B488: 07        .byte $07   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x037499 0D:B489: E0        .byte $E0, $98, $00, $00   ; 01 
- D 1 - I - 0x03749D 0D:B48D: E1        .byte $E1, $A8,      $08   ; 02 
- D 1 - I - 0x0374A0 0D:B490: E1        .byte $E1, $AA,      $10   ; 03 
- D 1 - I - 0x0374A3 0D:B493: 01        .byte $01, $A0,      $00   ; 04 
- D 1 - I - 0x0374A6 0D:B496: 01        .byte $01, $A2,      $08   ; 05 
- D 1 - I - 0x0374A9 0D:B499: 01        .byte $01, $AC,      $10   ; 06 
- D 1 - I - 0x0374AC 0D:B49C: 01        .byte $01, $AE,      $18   ; 07 



off_06_B49F_73:
- D 1 - I - 0x0374AF 0D:B49F: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0374B0 0D:B4A0: E0        .byte $E0, $B0, $00, $00   ; 01 
- D 1 - I - 0x0374B4 0D:B4A4: E1        .byte $E1, $B2,      $08   ; 02 
- D 1 - I - 0x0374B7 0D:B4A7: 01        .byte $01, $B4,      $00   ; 03 
- D 1 - I - 0x0374BA 0D:B4AA: 01        .byte $01, $B6,      $08   ; 04 



off_06_B4AD_74:
- D 1 - I - 0x0374BD 0D:B4AD: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0374BE 0D:B4AE: E0        .byte $E0, $2D, $03, $00   ; 01 
- D 1 - I - 0x0374C2 0D:B4B2: E1        .byte $E1, $2F,      $08   ; 02 



off_0A_B4B5_00:
off_0A_B4B5_01:
- D 1 - I - 0x0374C5 0D:B4B5: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0374C6 0D:B4B6: E0        .byte $E0, $8E, $01, $F7   ; 01 
- D 1 - I - 0x0374CA 0D:B4BA: 01        .byte $01, $90,      $F1   ; 02 
- D 1 - I - 0x0374CD 0D:B4BD: E0        .byte $E0, $8E, $41, $01   ; 03 
- D 1 - I - 0x0374D1 0D:B4C1: 01        .byte $01, $90,      $07   ; 04 



off_0A_B4C4_02:
- D 1 - I - 0x0374D4 0D:B4C4: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0374D5 0D:B4C5: E0        .byte $E0, $90, $41, $F7   ; 01 
- D 1 - I - 0x0374D9 0D:B4C9: 01        .byte $01, $8E,      $F1   ; 02 
- D 1 - I - 0x0374DC 0D:B4CC: E0        .byte $E0, $90, $01, $01   ; 03 
- D 1 - I - 0x0374E0 0D:B4D0: 01        .byte $01, $8E,      $07   ; 04 



off_0A_B4D3_03:
- D 1 - I - 0x0374E3 0D:B4D3: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0374E4 0D:B4D4: E0        .byte $E0, $80, $01, $F8   ; 01 
- D 1 - I - 0x0374E8 0D:B4D8: E1        .byte $E1, $82,      $00   ; 02 
- D 1 - I - 0x0374EB 0D:B4DB: 01        .byte $01, $84,      $F8   ; 03 
- D 1 - I - 0x0374EE 0D:B4DE: 01        .byte $01, $86,      $00   ; 04 



off_0A_B4E1_04:
- D 1 - I - 0x0374F1 0D:B4E1: 08        .byte $08   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0374F2 0D:B4E2: DE        .byte $DE, $8E, $C3, $F1   ; 01 
- D 1 - I - 0x0374F6 0D:B4E6: DE        .byte $DE, $8E, $83, $07   ; 02 
- D 1 - I - 0x0374FA 0D:B4EA: E0        .byte $E0, $82, $03, $F8   ; 03 
- D 1 - I - 0x0374FE 0D:B4EE: E1        .byte $E1, $82,      $00   ; 04 
- D 1 - I - 0x037501 0D:B4F1: FF        .byte $FF, $90,      $F1   ; 05 
- D 1 - I - 0x037504 0D:B4F4: 01        .byte $01, $84,      $F8   ; 06 
- D 1 - I - 0x037507 0D:B4F7: 01        .byte $01, $86,      $00   ; 07 
- D 1 - I - 0x03750A 0D:B4FA: FE        .byte $FE, $90, $43, $07   ; 08 



off_0A_B4FE_05:
- D 1 - I - 0x03750E 0D:B4FE: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03750F 0D:B4FF: E0        .byte $E0, $80, $02, $F8   ; 01 
- D 1 - I - 0x037513 0D:B503: E1        .byte $E1, $82,      $00   ; 02 
- D 1 - I - 0x037516 0D:B506: 01        .byte $01, $84,      $F8   ; 03 
- D 1 - I - 0x037519 0D:B509: 01        .byte $01, $86,      $00   ; 04 



off_0A_B50C_06:
- D 1 - I - 0x03751C 0D:B50C: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03751D 0D:B50D: E0        .byte $E0, $80, $02, $F8   ; 01 
- D 1 - I - 0x037521 0D:B511: E1        .byte $E1, $82,      $00   ; 02 
- D 1 - I - 0x037524 0D:B514: 01        .byte $01, $88,      $F4   ; 03 
- D 1 - I - 0x037527 0D:B517: 01        .byte $01, $8A,      $FC   ; 04 
- D 1 - I - 0x03752A 0D:B51A: 01        .byte $01, $8C,      $04   ; 05 



off_0A_B51D_07:
- D 1 - I - 0x03752D 0D:B51D: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03752E 0D:B51E: E0        .byte $E0, $F8, $02, $F8   ; 01 
- D 1 - I - 0x037532 0D:B522: E1        .byte $E1, $FA,      $00   ; 02 
- D 1 - I - 0x037535 0D:B525: 01        .byte $01, $FC,      $F8   ; 03 
- D 1 - I - 0x037538 0D:B528: 01        .byte $01, $EE,      $00   ; 04 



off_0A_B52B_08:
- D 1 - I - 0x03753B 0D:B52B: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03753C 0D:B52C: F0        .byte $F0, $5C, $00, $F8   ; 01 
- D 1 - I - 0x037540 0D:B530: F0        .byte $F0, $5C, $40, $00   ; 02 



off_0A_B534_09:
- D 1 - I - 0x037544 0D:B534: 08        .byte $08   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x037545 0D:B535: D0        .byte $D0, $5E, $00, $F0   ; 01 
- D 1 - I - 0x037549 0D:B539: D1        .byte $D1, $5E,      $F8   ; 02 
- D 1 - I - 0x03754C 0D:B53C: D1        .byte $D1, $5E,      $00   ; 03 
- D 1 - I - 0x03754F 0D:B53F: D1        .byte $D1, $5E,      $08   ; 04 
- D 1 - I - 0x037552 0D:B542: F1        .byte $F1, $5E,      $F0   ; 05 
- D 1 - I - 0x037555 0D:B545: F1        .byte $F1, $5C,      $F8   ; 06 
- D 1 - I - 0x037558 0D:B548: F1        .byte $F1, $5E,      $08   ; 07 
- D 1 - I - 0x03755B 0D:B54B: F0        .byte $F0, $5C, $40, $00   ; 08 



off_0A_B54F_0A:
- - - - - - 0x03755F 0D:B54F: 10        .byte $10   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- - - - - - 0x037560 0D:B550: A0        .byte $A0, $BA, $41, $F8   ; 01 
- - - - - - 0x037564 0D:B554: C1        .byte $C1, $BC,      $F8   ; 02 
- - - - - - 0x037567 0D:B557: C1        .byte $C1, $9E,      $00   ; 03 
- - - - - - 0x03756A 0D:B55A: E1        .byte $E1, $A0,      $00   ; 04 
- - - - - - 0x03756D 0D:B55D: E1        .byte $E1, $A2,      $08   ; 05 
- - - - - - 0x037570 0D:B560: E1        .byte $E1, $A4,      $10   ; 06 
- - - - - - 0x037573 0D:B563: E1        .byte $E1, $A6,      $18   ; 07 
- - - - - - 0x037576 0D:B566: 01        .byte $01, $A8,      $00   ; 08 
- - - - - - 0x037579 0D:B569: 01        .byte $01, $AA,      $18   ; 09 
- - - - - - 0x03757C 0D:B56C: 21        .byte $21, $B6,      $F8   ; 0A 
- - - - - - 0x03757F 0D:B56F: 21        .byte $21, $AC,      $00   ; 0B 
- - - - - - 0x037582 0D:B572: 21        .byte $21, $AE,      $10   ; 0C 
- - - - - - 0x037585 0D:B575: 21        .byte $21, $B0,      $18   ; 0D 
- - - - - - 0x037588 0D:B578: 41        .byte $41, $B8,      $F8   ; 0E 
- - - - - - 0x03758B 0D:B57B: 41        .byte $41, $B2,      $10   ; 0F 
- - - - - - 0x03758E 0D:B57E: 41        .byte $41, $B4,      $18   ; 10 



off_0A_B581_0B:
- D 1 - I - 0x037591 0D:B581: 15        .byte $15   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x037592 0D:B582: A0        .byte $A0, $80, $21, $F8   ; 01 
- D 1 - I - 0x037596 0D:B586: A1        .byte $A1, $82,      $00   ; 02 
- D 1 - I - 0x037599 0D:B589: C1        .byte $C1, $84,      $F0   ; 03 
- D 1 - I - 0x03759C 0D:B58C: C1        .byte $C1, $86,      $F8   ; 04 
- D 1 - I - 0x03759F 0D:B58F: C1        .byte $C1, $88,      $00   ; 05 
- D 1 - I - 0x0375A2 0D:B592: C1        .byte $C1, $8A,      $08   ; 06 
- D 1 - I - 0x0375A5 0D:B595: C1        .byte $C1, $8C,      $10   ; 07 
- D 1 - I - 0x0375A8 0D:B598: E1        .byte $E1, $8E,      $E8   ; 08 
- D 1 - I - 0x0375AB 0D:B59B: E1        .byte $E1, $90,      $F0   ; 09 
- D 1 - I - 0x0375AE 0D:B59E: E1        .byte $E1, $94,      $F8   ; 0A 
- D 1 - I - 0x0375B1 0D:B5A1: E1        .byte $E1, $9E,      $00   ; 0B 
- D 1 - I - 0x0375B4 0D:B5A4: E1        .byte $E1, $9E,      $08   ; 0C 
- D 1 - I - 0x0375B7 0D:B5A7: E1        .byte $E1, $9E,      $10   ; 0D 
- D 1 - I - 0x0375BA 0D:B5AA: E1        .byte $E1, $96,      $18   ; 0E 
- D 1 - I - 0x0375BD 0D:B5AD: 01        .byte $01, $98,      $E8   ; 0F 
- D 1 - I - 0x0375C0 0D:B5B0: 01        .byte $01, $9A,      $F0   ; 10 
- D 1 - I - 0x0375C3 0D:B5B3: 01        .byte $01, $9E,      $F8   ; 11 
- D 1 - I - 0x0375C6 0D:B5B6: 01        .byte $01, $9E,      $00   ; 12 
- D 1 - I - 0x0375C9 0D:B5B9: 01        .byte $01, $9E,      $08   ; 13 
- D 1 - I - 0x0375CC 0D:B5BC: 01        .byte $01, $9E,      $10   ; 14 
- D 1 - I - 0x0375CF 0D:B5BF: 01        .byte $01, $9C,      $18   ; 15 



off_0A_B5C2_0C:
- D 1 - I - 0x0375D2 0D:B5C2: 10        .byte $10   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0375D3 0D:B5C3: E0        .byte $E0, $D4, $03, $E0   ; 01 
- D 1 - I - 0x0375D7 0D:B5C7: E1        .byte $E1, $D0,      $F0   ; 02 
- D 1 - I - 0x0375DA 0D:B5CA: E1        .byte $E1, $D2,      $F8   ; 03 
- D 1 - I - 0x0375DD 0D:B5CD: E1        .byte $E1, $D4,      $00   ; 04 
- D 1 - I - 0x0375E0 0D:B5D0: E1        .byte $E1, $D6,      $08   ; 05 
- D 1 - I - 0x0375E3 0D:B5D3: E1        .byte $E1, $D6,      $10   ; 06 
- D 1 - I - 0x0375E6 0D:B5D6: E1        .byte $E1, $D8,      $18   ; 07 
- D 1 - I - 0x0375E9 0D:B5D9: 01        .byte $01, $D0,      $E8   ; 08 
- D 1 - I - 0x0375EC 0D:B5DC: 01        .byte $01, $DA,      $00   ; 09 
- D 1 - I - 0x0375EF 0D:B5DF: 01        .byte $01, $DC,      $08   ; 0A 
- D 1 - I - 0x0375F2 0D:B5E2: 01        .byte $01, $DC,      $10   ; 0B 
- D 1 - I - 0x0375F5 0D:B5E5: 01        .byte $01, $DE,      $18   ; 0C 
- D 1 - I - 0x0375F8 0D:B5E8: 21        .byte $21, $DA,      $F8   ; 0D 
- D 1 - I - 0x0375FB 0D:B5EB: 21        .byte $21, $DC,      $00   ; 0E 
- D 1 - I - 0x0375FE 0D:B5EE: 21        .byte $21, $DC,      $08   ; 0F 
- D 1 - I - 0x037601 0D:B5F1: 21        .byte $21, $DE,      $10   ; 10 



off_0A_B5F4_0D:
- D 1 - I - 0x037604 0D:B5F4: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x037605 0D:B5F5: C0        .byte $C0, $00, $00, $FD   ; 01 
- D 1 - I - 0x037609 0D:B5F9: E1        .byte $E1, $02,      $F8   ; 02 
- D 1 - I - 0x03760C 0D:B5FC: E1        .byte $E1, $04,      $00   ; 03 
- D 1 - I - 0x03760F 0D:B5FF: 01        .byte $01, $06,      $F8   ; 04 
- D 1 - I - 0x037612 0D:B602: 01        .byte $01, $08,      $00   ; 05 



off_0A_B605_0E:
- D 1 - I - 0x037615 0D:B605: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x037616 0D:B606: C0        .byte $C0, $00, $00, $FD   ; 01 
- D 1 - I - 0x03761A 0D:B60A: E1        .byte $E1, $0A,      $F8   ; 02 
- D 1 - I - 0x03761D 0D:B60D: E1        .byte $E1, $0C,      $00   ; 03 
- D 1 - I - 0x037620 0D:B610: 01        .byte $01, $0E,      $F8   ; 04 
- D 1 - I - 0x037623 0D:B613: 01        .byte $01, $10,      $00   ; 05 



off_0A_B616_0F:
- D 1 - I - 0x037626 0D:B616: 06        .byte $06   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x037627 0D:B617: C0        .byte $C0, $00, $00, $FD   ; 01 
- D 1 - I - 0x03762B 0D:B61B: E1        .byte $E1, $12,      $F8   ; 02 
- D 1 - I - 0x03762E 0D:B61E: E1        .byte $E1, $14,      $00   ; 03 
- D 1 - I - 0x037631 0D:B621: 01        .byte $01, $18,      $F8   ; 04 
- D 1 - I - 0x037634 0D:B624: 01        .byte $01, $1A,      $00   ; 05 
- D 1 - I - 0x037637 0D:B627: F9        .byte $F9, $16,      $F0   ; 06 



off_0A_B62A_10:
- D 1 - I - 0x03763A 0D:B62A: 06        .byte $06   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03763B 0D:B62B: C0        .byte $C0, $00, $00, $FD   ; 01 
- D 1 - I - 0x03763F 0D:B62F: E1        .byte $E1, $1C,      $F8   ; 02 
- D 1 - I - 0x037642 0D:B632: E1        .byte $E1, $1E,      $00   ; 03 
- D 1 - I - 0x037645 0D:B635: 01        .byte $01, $22,      $F8   ; 04 
- D 1 - I - 0x037648 0D:B638: 01        .byte $01, $24,      $00   ; 05 
- D 1 - I - 0x03764B 0D:B63B: FF        .byte $FF, $20,      $F0   ; 06 



off_0A_B63E_11:
- D 1 - I - 0x03764E 0D:B63E: 04        .byte $04   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03764F 0D:B63F: E0        .byte $E0, $74, $02, $FA   ; 01 
- D 1 - I - 0x037653 0D:B643: E1        .byte $E1, $76,      $02   ; 02 
- D 1 - I - 0x037656 0D:B646: 01        .byte $01, $7A,      $00   ; 03 
- D 1 - I - 0x037659 0D:B649: 01        .byte $01, $78,      $F8   ; 04 



off_0A_B64C_12:
- D 1 - I - 0x03765C 0D:B64C: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03765D 0D:B64D: E0        .byte $E0, $7C, $02, $F6   ; 01 
- D 1 - I - 0x037661 0D:B651: E1        .byte $E1, $7E,      $FE   ; 02 
- D 1 - I - 0x037664 0D:B654: E1        .byte $E1, $C0,      $06   ; 03 
- D 1 - I - 0x037667 0D:B657: 01        .byte $01, $7A,      $00   ; 04 
- D 1 - I - 0x03766A 0D:B65A: 01        .byte $01, $78,      $F8   ; 05 



off_0A_B65D_13:
- D 1 - I - 0x03766D 0D:B65D: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03766E 0D:B65E: E0        .byte $E0, $C2, $02, $F6   ; 01 
- D 1 - I - 0x037672 0D:B662: E1        .byte $E1, $C4,      $FE   ; 02 
- D 1 - I - 0x037675 0D:B665: E1        .byte $E1, $C6,      $06   ; 03 
- D 1 - I - 0x037678 0D:B668: 01        .byte $01, $7A,      $00   ; 04 
- D 1 - I - 0x03767B 0D:B66B: 01        .byte $01, $78,      $F8   ; 05 



off_0A_B66E_14:
- D 1 - I - 0x03767E 0D:B66E: 06        .byte $06   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03767F 0D:B66F: C0        .byte $C0, $54, $02, $F8   ; 01 
- D 1 - I - 0x037683 0D:B673: C1        .byte $C1, $56,      $00   ; 02 
- D 1 - I - 0x037686 0D:B676: E1        .byte $E1, $58,      $F8   ; 03 
- D 1 - I - 0x037689 0D:B679: E1        .byte $E1, $5A,      $00   ; 04 
- D 1 - I - 0x03768C 0D:B67C: 01        .byte $01, $5C,      $F8   ; 05 
- D 1 - I - 0x03768F 0D:B67F: 01        .byte $01, $5E,      $00   ; 06 



off_0A_B682_15:
- D 1 - I - 0x037692 0D:B682: 07        .byte $07   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x037693 0D:B683: C0        .byte $C0, $54, $02, $F8   ; 01 
- D 1 - I - 0x037697 0D:B687: C1        .byte $C1, $56,      $00   ; 02 
- D 1 - I - 0x03769A 0D:B68A: E1        .byte $E1, $60,      $F8   ; 03 
- D 1 - I - 0x03769D 0D:B68D: E1        .byte $E1, $62,      $00   ; 04 
- D 1 - I - 0x0376A0 0D:B690: 01        .byte $01, $66,      $F8   ; 05 
- D 1 - I - 0x0376A3 0D:B693: 01        .byte $01, $68,      $00   ; 06 
- D 1 - I - 0x0376A6 0D:B696: F1        .byte $F1, $64,      $F0   ; 07 



off_0A_B699_16:
- D 1 - I - 0x0376A9 0D:B699: 07        .byte $07   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0376AA 0D:B69A: C0        .byte $C0, $54, $02, $F8   ; 01 
- D 1 - I - 0x0376AE 0D:B69E: C1        .byte $C1, $56,      $00   ; 02 
- D 1 - I - 0x0376B1 0D:B6A1: E1        .byte $E1, $6A,      $F8   ; 03 
- D 1 - I - 0x0376B4 0D:B6A4: E1        .byte $E1, $6C,      $00   ; 04 
- D 1 - I - 0x0376B7 0D:B6A7: 01        .byte $01, $70,      $F8   ; 05 
- D 1 - I - 0x0376BA 0D:B6AA: 01        .byte $01, $72,      $00   ; 06 
- D 1 - I - 0x0376BD 0D:B6AD: F3        .byte $F3, $6E,      $F0   ; 07 



off_0A_B6B0_17:
- D 1 - I - 0x0376C0 0D:B6B0: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0376C1 0D:B6B1: C0        .byte $C0, $26, $02, $FC   ; 01 
- D 1 - I - 0x0376C5 0D:B6B5: E1        .byte $E1, $28,      $F8   ; 02 
- D 1 - I - 0x0376C8 0D:B6B8: E1        .byte $E1, $2A,      $00   ; 03 
- D 1 - I - 0x0376CB 0D:B6BB: 01        .byte $01, $2C,      $F8   ; 04 
- D 1 - I - 0x0376CE 0D:B6BE: 01        .byte $01, $2E,      $00   ; 05 



off_0A_B6C1_18:
- D 1 - I - 0x0376D1 0D:B6C1: 05        .byte $05   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0376D2 0D:B6C2: C0        .byte $C0, $30, $00, $FC   ; 01 
- D 1 - I - 0x0376D6 0D:B6C6: E0        .byte $E0, $32, $02, $F8   ; 02 
- D 1 - I - 0x0376DA 0D:B6CA: E1        .byte $E1, $34,      $00   ; 03 
- D 1 - I - 0x0376DD 0D:B6CD: 01        .byte $01, $2C,      $F8   ; 04 
- D 1 - I - 0x0376E0 0D:B6D0: 01        .byte $01, $2E,      $00   ; 05 



off_0A_B6D3_19:
off_0A_B6D3_1D:
- D 1 - I - 0x0376E3 0D:B6D3: 07        .byte $07   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0376E4 0D:B6D4: C0        .byte $C0, $30, $00, $FC   ; 01 
- D 1 - I - 0x0376E8 0D:B6D8: E1        .byte $E1, $3E,      $F3   ; 02 
- D 1 - I - 0x0376EB 0D:B6DB: E1        .byte $E1, $40,      $FB   ; 03 
- D 1 - I - 0x0376EE 0D:B6DE: E0        .byte $E0, $36, $02, $F8   ; 04 
- D 1 - I - 0x0376F2 0D:B6E2: E1        .byte $E1, $38,      $00   ; 05 
- D 1 - I - 0x0376F5 0D:B6E5: 01        .byte $01, $2C,      $F8   ; 06 
- D 1 - I - 0x0376F8 0D:B6E8: 01        .byte $01, $2E,      $00   ; 07 



off_0A_B6EB_1A:
off_0A_B6EB_1C:
off_0A_B6EB_1E:
- D 1 - I - 0x0376FB 0D:B6EB: 06        .byte $06   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x0376FC 0D:B6EC: C0        .byte $C0, $30, $00, $FC   ; 01 
- D 1 - I - 0x037700 0D:B6F0: E1        .byte $E1, $42,      $F4   ; 02 
- D 1 - I - 0x037703 0D:B6F3: E1        .byte $E1, $44,      $FC   ; 03 
- D 1 - I - 0x037706 0D:B6F6: E0        .byte $E0, $3A, $02, $00   ; 04 
- D 1 - I - 0x03770A 0D:B6FA: 01        .byte $01, $2C,      $F8   ; 05 
- D 1 - I - 0x03770D 0D:B6FD: 01        .byte $01, $2E,      $00   ; 06 



off_0A_B700_1B:
- D 1 - I - 0x037710 0D:B700: 06        .byte $06   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x037711 0D:B701: C0        .byte $C0, $30, $00, $FC   ; 01 
- D 1 - I - 0x037715 0D:B705: E1        .byte $E1, $46,      $F4   ; 02 
- D 1 - I - 0x037718 0D:B708: E1        .byte $E1, $48,      $FC   ; 03 
- D 1 - I - 0x03771B 0D:B70B: E0        .byte $E0, $3C, $02, $00   ; 04 
- D 1 - I - 0x03771F 0D:B70F: 01        .byte $01, $2C,      $F8   ; 05 
- D 1 - I - 0x037722 0D:B712: 01        .byte $01, $2E,      $00   ; 06 



off_0A_B715_1F:
- D 1 - I - 0x037725 0D:B715: 0A        .byte $0A   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x037726 0D:B716: C0        .byte $C0, $4A, $00, $EF   ; 01 
- D 1 - I - 0x03772A 0D:B71A: E1        .byte $E1, $02,      $E9   ; 02 
- D 1 - I - 0x03772D 0D:B71D: E1        .byte $E1, $4E,      $F0   ; 03 
- D 1 - I - 0x037730 0D:B720: E1        .byte $E1, $50,      $F8   ; 04 
- D 1 - I - 0x037733 0D:B723: 01        .byte $01, $06,      $E8   ; 05 
- D 1 - I - 0x037736 0D:B726: 01        .byte $01, $08,      $F0   ; 06 
- D 1 - I - 0x037739 0D:B729: C1        .byte $C1, $4C,      $F8   ; 07 
- D 1 - I - 0x03773C 0D:B72C: E0        .byte $E0, $52, $02, $00   ; 08 
- D 1 - I - 0x037740 0D:B730: 01        .byte $01, $2C,      $F8   ; 09 
- D 1 - I - 0x037743 0D:B733: 01        .byte $01, $2E,      $00   ; 0A 



off_0A_B736_20:
- D 1 - I - 0x037746 0D:B736: 0C        .byte $0C   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x037747 0D:B737: C0        .byte $C0, $E0, $00, $F1   ; 01 
- D 1 - I - 0x03774B 0D:B73B: C1        .byte $C1, $E2,      $F9   ; 02 
- D 1 - I - 0x03774E 0D:B73E: E1        .byte $E1, $F0,      $E9   ; 03 
- D 1 - I - 0x037751 0D:B741: E1        .byte $E1, $F2,      $F1   ; 04 
- D 1 - I - 0x037754 0D:B744: E1        .byte $E1, $EC,      $F9   ; 05 
- D 1 - I - 0x037757 0D:B747: E1        .byte $E1, $EE,      $01   ; 06 
- D 1 - I - 0x03775A 0D:B74A: 01        .byte $01, $06,      $EB   ; 07 
- D 1 - I - 0x03775D 0D:B74D: 01        .byte $01, $08,      $F3   ; 08 
- D 1 - I - 0x037760 0D:B750: E0        .byte $E0, $E4, $02, $F9   ; 09 
- D 1 - I - 0x037764 0D:B754: E1        .byte $E1, $E6,      $01   ; 0A 
- D 1 - I - 0x037767 0D:B757: 01        .byte $01, $E8,      $F8   ; 0B 
- D 1 - I - 0x03776A 0D:B75A: 01        .byte $01, $EA,      $00   ; 0C 



off_0A_B75D_21:
- D 1 - I - 0x03776D 0D:B75D: 02        .byte $02   ; sprites counter
;                                              +-------------------- spr_Y
;                                              |    +--------------- spr_T
;                                              |    |    +---------- spr_A
;                                              |    |    |    +----- spr_X
;                                              |    |    |    |
- D 1 - I - 0x03776E 0D:B75E: F0        .byte $F0, $64, $41, $F8   ; 01 
- D 1 - I - 0x037772 0D:B762: F1        .byte $F1, $62,      $00   ; 02 



sub_B765:
; in
    ; ram_000E_t015_pos_X_lo
C - - - - - 0x037775 0D:B765: A9 10     LDA #$10
C - - - - - 0x037777 0D:B767: AC 4E 05  LDY ram_plr_id
C - - - - - 0x03777A 0D:B76A: C0 02     CPY #$02
C - - - - - 0x03777C 0D:B76C: D0 02     BNE bra_B770
- - - - - - 0x03777E 0D:B76E: A9 0C     LDA #$0C
bra_B770:
C - - - - - 0x037780 0D:B770: 18        CLC
C - - - - - 0x037781 0D:B771: 6D 1C 04  ADC ram_plr_pos_Y_lo
C - - - - - 0x037784 0D:B774: B0 04     BCS bra_B77A
C - - - - - 0x037786 0D:B776: C9 F0     CMP #$F0
C - - - - - 0x037788 0D:B778: 90 02     BCC bra_B77C
bra_B77A:
; C = 1
- - - - - - 0x03778A 0D:B77A: 69 0F     ADC #$0F    ; 10
bra_B77C:
C - - - - - 0x03778C 0D:B77C: A8        TAY
C - - - - - 0x03778D 0D:B77D: A5 0E     LDA ram_000E_t015_pos_X_lo
C - - - - - 0x03778F 0D:B77F: 4C 88 B7  JMP loc_B788



ofs_062_0x037792_00:
C - - J - - 0x037792 0D:B782: BD 38 04  LDA ram_obj_pos_X_lo,X
C - - - - - 0x037795 0D:B785: BC 1C 04  LDY ram_obj_pos_Y_lo,X
loc_B788:
C D 1 - - - 0x037798 0D:B788: 29 F0     AND #$F0
; / 08
C - - - - - 0x03779A 0D:B78A: 4A        LSR
C - - - - - 0x03779B 0D:B78B: 4A        LSR
C - - - - - 0x03779C 0D:B78C: 4A        LSR
C - - - - - 0x03779D 0D:B78D: 85 12     STA ram_0012_t011_ppu_addr_lo
C - - - - - 0x03779F 0D:B78F: 98        TYA
C - - - - - 0x0377A0 0D:B790: A4 57     LDY ram_cam_pos_hi
C - - - - - 0x0377A2 0D:B792: 38        SEC
C - - - - - 0x0377A3 0D:B793: E9 30     SBC #$30
C - - - - - 0x0377A5 0D:B795: B0 03     BCS bra_B79A
C - - - - - 0x0377A7 0D:B797: E9 0F     SBC #$0F
C - - - - - 0x0377A9 0D:B799: 88        DEY
bra_B79A:
C - - - - - 0x0377AA 0D:B79A: 18        CLC
C - - - - - 0x0377AB 0D:B79B: 65 56     ADC ram_cam_pos_lo
C - - - - - 0x0377AD 0D:B79D: B0 04     BCS bra_B7A3
C - - - - - 0x0377AF 0D:B79F: C9 F0     CMP #$F0
C - - - - - 0x0377B1 0D:B7A1: 90 03     BCC bra_B7A6
bra_B7A3:
C - - - - - 0x0377B3 0D:B7A3: 69 0F     ADC #$0F
C - - - - - 0x0377B5 0D:B7A5: C8        INY
bra_B7A6:
C - - - - - 0x0377B6 0D:B7A6: 29 F0     AND #$F0
C - - - - - 0x0377B8 0D:B7A8: 85 00     STA ram_0000_t0C5
C - - - - - 0x0377BA 0D:B7AA: 85 0B     STA ram_000B_t017
C - - - - - 0x0377BC 0D:B7AC: 84 0F     STY ram_000F_t018
C - - - - - 0x0377BE 0D:B7AE: A9 0A     LDA #$0A
; * 04
C - - - - - 0x0377C0 0D:B7B0: 06 00     ASL ram_0000_t0C5
C - - - - - 0x0377C2 0D:B7B2: 2A        ROL
C - - - - - 0x0377C3 0D:B7B3: 06 00     ASL ram_0000_t0C5
C - - - - - 0x0377C5 0D:B7B5: 2A        ROL
C - - - - - 0x0377C6 0D:B7B6: 85 13     STA ram_0013_t009_ppu_addr_hi
C - - - - - 0x0377C8 0D:B7B8: A5 12     LDA ram_0012_t011_ppu_addr_lo
C - - - - - 0x0377CA 0D:B7BA: 05 00     ORA ram_0000_t0C5
C - - - - - 0x0377CC 0D:B7BC: 85 12     STA ram_0012_t011_ppu_addr_lo
bra_B7BE_RTS:
C - - - - - 0x0377CE 0D:B7BE: 60        RTS



sub_0x0377CF_crumbling_blocks:
; in
    ; Y = 
    ; ram_0010_t01D_pos_X_lo
C - - - - - 0x0377CF 0D:B7BF: 84 09     STY ram_0009_t024
C - - - - - 0x0377D1 0D:B7C1: A5 68     LDA ram_blk_scroll_type
C - - - - - 0x0377D3 0D:B7C3: 10 36     BPL bra_B7FB_horisontal
; if vertical
C - - - - - 0x0377D5 0D:B7C5: A5 10     LDA ram_0010_t01D_pos_X_lo
C - - - - - 0x0377D7 0D:B7C7: 85 0E     STA ram_000E_t015_pos_X_lo
C - - - - - 0x0377D9 0D:B7C9: 20 65 B7  JSR sub_B765
C - - - - - 0x0377DC 0D:B7CC: 20 B8 B8  JSR sub_B8B8
C - - - - - 0x0377DF 0D:B7CF: D0 ED     BNE bra_B7BE_RTS
C - - - - - 0x0377E1 0D:B7D1: 20 05 BA  JSR sub_BA05
C - - - - - 0x0377E4 0D:B7D4: 30 0B     BMI bra_B7E1
C - - - - - 0x0377E6 0D:B7D6: A9 10     LDA #con_sfx_10
C - - - - - 0x0377E8 0D:B7D8: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x0377EB 0D:B7DB: 20 A3 B9  JSR sub_B9A3_shift_ppu_address
C - - - - - 0x0377EE 0D:B7DE: 4C 82 B9  JMP loc_B982_write_to_buffer
bra_B7E1:
C - - - - - 0x0377F1 0D:B7E1: 20 E1 BA  JSR sub_BAE1
C - - - - - 0x0377F4 0D:B7E4: B0 D8     BCS bra_B7BE_RTS
C - - - - - 0x0377F6 0D:B7E6: AD 1C 04  LDA ram_plr_pos_Y_lo
C - - - - - 0x0377F9 0D:B7E9: 18        CLC
C - - - - - 0x0377FA 0D:B7EA: 69 08     ADC #$08
C - - - - - 0x0377FC 0D:B7EC: 85 14     STA ram_0014_t007_pos_Y_lo
C - - - - - 0x0377FE 0D:B7EE: A5 0E     LDA ram_000E_t015_pos_X_lo
C - - - - - 0x037800 0D:B7F0: 85 15     STA ram_0015_t008_pos_X_lo
C - - - - - 0x037802 0D:B7F2: 20 35 E9  JSR sub_0x03E945
C - - - - - 0x037805 0D:B7F5: 20 31 B8  JSR sub_B831
C - - - - - 0x037808 0D:B7F8: 4C 3F B8  JMP loc_B83F
bra_B7FB_horisontal:
C - - - - - 0x03780B 0D:B7FB: A5 13     LDA ram_0013_t003
C - - - - - 0x03780D 0D:B7FD: 85 0E     STA ram_000E_t015_pos_X_lo
C - - - - - 0x03780F 0D:B7FF: A5 14     LDA ram_0014_t002
C - - - - - 0x037811 0D:B801: 85 0F     STA ram_000F_t018
C - - - - - 0x037813 0D:B803: 20 B8 B8  JSR sub_B8B8
C - - - - - 0x037816 0D:B806: D0 B6     BNE bra_B7BE_RTS
C - - - - - 0x037818 0D:B808: 20 05 BA  JSR sub_BA05
C - - - - - 0x03781B 0D:B80B: 30 0E     BMI bra_B81B
C - - - - - 0x03781D 0D:B80D: A9 10     LDA #con_sfx_10
C - - - - - 0x03781F 0D:B80F: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x037822 0D:B812: 20 B2 B9  JSR sub_B9B2_calculate_ppu_address
C - - - - - 0x037825 0D:B815: 20 A3 B9  JSR sub_B9A3_shift_ppu_address
C - - - - - 0x037828 0D:B818: 4C 82 B9  JMP loc_B982_write_to_buffer
bra_B81B:
; triggers when crumbled block starts falling
C - - - - - 0x03782B 0D:B81B: 20 E7 BA  JSR sub_BAE7
C - - - - - 0x03782E 0D:B81E: B0 3D     BCS bra_B85D_RTS
C - - - - - 0x037830 0D:B820: 20 B2 B9  JSR sub_B9B2_calculate_ppu_address
C - - - - - 0x037833 0D:B823: A4 32     LDY ram_blk_id_hi
C - - - - - 0x037835 0D:B825: B9 4B C9  LDA tbl_0x03C95B_prg_bank,Y
C - - - - - 0x037838 0D:B828: 20 B3 E9  JSR sub_0x03E9C3
C - - - - - 0x03783B 0D:B82B: 20 31 B8  JSR sub_B831
C - - - - - 0x03783E 0D:B82E: 4C 5E B8  JMP loc_B85E



sub_B831:
; in
    ; ram_0009_t024
    ; ram_000B_t017
    ; ram_000D_t012
    ; ram_000F_t018
    ; ram_0011_t007_nametable_attribute
    ; ram_0012_t011_ppu_addr_lo
C - - - - - 0x037841 0D:B831: 20 E4 B9  JSR sub_B9E4_calculate_ppu_address
C - - - - - 0x037844 0D:B834: 20 DE B8  JSR sub_B8DE
C - - - - - 0x037847 0D:B837: 20 4B B9  JSR sub_B94B
C - - - - - 0x03784A 0D:B83A: A9 11     LDA #con_sfx_block
C - - - - - 0x03784C 0D:B83C: 4C 5F E2  JMP loc_0x03E26F_play_sound



loc_B83F:
; in
    ; ram_000E_t015_pos_X_lo
C D 1 - - - 0x03784F 0D:B83F: 20 83 B8  JSR sub_B883_find_empty_object_slot_01_11
C - - - - - 0x037852 0D:B842: D0 3E     BNE bra_B882_RTS    ; if not found
C - - - - - 0x037854 0D:B844: 20 91 B8  JSR sub_B891
C - - - - - 0x037857 0D:B847: A5 0E     LDA ram_000E_t015_pos_X_lo
C - - - - - 0x037859 0D:B849: 29 E0     AND #$E0
C - - - - - 0x03785B 0D:B84B: A4 A5     LDY ram_00A5
C - - - - - 0x03785D 0D:B84D: F0 02     BEQ bra_B851
C - - - - - 0x03785F 0D:B84F: 09 10     ORA #$10
bra_B851:
C - - - - - 0x037861 0D:B851: 9D 38 04  STA ram_obj_pos_X_lo,X
C - - - - - 0x037864 0D:B854: AD 1C 04  LDA ram_plr_pos_Y_lo
C - - - - - 0x037867 0D:B857: 18        CLC
C - - - - - 0x037868 0D:B858: 69 1D     ADC #$1D
C - - - - - 0x03786A 0D:B85A: 9D 1C 04  STA ram_obj_pos_Y_lo,X
bra_B85D_RTS:
C - - - - - 0x03786D 0D:B85D: 60        RTS



loc_B85E:
C D 1 - - - 0x03786E 0D:B85E: 20 83 B8  JSR sub_B883_find_empty_object_slot_01_11
C - - - - - 0x037871 0D:B861: D0 1F     BNE bra_B882_RTS    ; if not found
C - - - - - 0x037873 0D:B863: 20 91 B8  JSR sub_B891
C - - - - - 0x037876 0D:B866: A5 12     LDA ram_0012_t011_ppu_addr_lo
; * 08
C - - - - - 0x037878 0D:B868: 0A        ASL
C - - - - - 0x037879 0D:B869: 0A        ASL
C - - - - - 0x03787A 0D:B86A: 0A        ASL
C - - - - - 0x03787B 0D:B86B: 29 E0     AND #$E0
C - - - - - 0x03787D 0D:B86D: A4 A5     LDY ram_00A5
C - - - - - 0x03787F 0D:B86F: F0 02     BEQ bra_B873
C - - - - - 0x037881 0D:B871: 09 10     ORA #$10
bra_B873:
C - - - - - 0x037883 0D:B873: 38        SEC
C - - - - - 0x037884 0D:B874: E5 56     SBC ram_cam_pos_lo
C - - - - - 0x037886 0D:B876: 9D 38 04  STA ram_obj_pos_X_lo,X
C - - - - - 0x037889 0D:B879: AD 1C 04  LDA ram_plr_pos_Y_lo
C - - - - - 0x03788C 0D:B87C: 18        CLC
C - - - - - 0x03788D 0D:B87D: 69 1E     ADC #$1E
C - - - - - 0x03788F 0D:B87F: 9D 1C 04  STA ram_obj_pos_Y_lo,X
bra_B882_RTS:
C - - - - - 0x037892 0D:B882: 60        RTS



sub_B883_find_empty_object_slot_01_11:
; out
    ; Z
        ; 0 = not found
        ; 1 = found
    ; X = slot index
C - - - - - 0x037893 0D:B883: A2 01     LDX #$01
bra_B885_loop:
C - - - - - 0x037895 0D:B885: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x037898 0D:B888: F0 06     BEQ bra_B890_RTS
C - - - - - 0x03789A 0D:B88A: E8        INX
C - - - - - 0x03789B 0D:B88B: E0 12     CPX #$12
C - - - - - 0x03789D 0D:B88D: 90 F6     BCC bra_B885_loop
; make Z = 0
- - - - - - 0x03789F 0D:B88F: E8        INX
bra_B890_RTS:
C - - - - - 0x0378A0 0D:B890: 60        RTS



sub_B891:
C - - - - - 0x0378A1 0D:B891: 20 D7 FE  JSR sub_0x03FEE7_clear_object_speed_and_data
C - - - - - 0x0378A4 0D:B894: A9 89     LDA #$89
C - - - - - 0x0378A6 0D:B896: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x0378A9 0D:B899: A9 0C     LDA #con_obj_type_0C
C - - - - - 0x0378AB 0D:B89B: A0 00     LDY #$00
C - - - - - 0x0378AD 0D:B89D: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x0378B0 0D:B8A0: A9 E8     LDA #$E8
C - - - - - 0x0378B2 0D:B8A2: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x0378B5 0D:B8A5: A9 01     LDA #$01
C - - - - - 0x0378B7 0D:B8A7: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x0378BA 0D:B8AA: 9D A8 04  STA ram_obj_facing,X    ; facing left
C - - - - - 0x0378BD 0D:B8AD: A9 60     LDA #con_obj_flag_20 + con_obj_flag_40
C - - - - - 0x0378BF 0D:B8AF: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x0378C2 0D:B8B2: A9 03     LDA #$03
C - - - - - 0x0378C4 0D:B8B4: 9D 54 04  STA ram_obj_spr_A,X
C - - - - - 0x0378C7 0D:B8B7: 60        RTS



sub_B8B8:
; in
    ; ram_000E_t015_pos_X_lo
; out
    ; Z
        ; 0 = 
        ; 1 = 
C - - - - - 0x0378C8 0D:B8B8: A0 01     LDY #$01
C - - - - - 0x0378CA 0D:B8BA: A5 32     LDA ram_blk_id_hi
C - - - - - 0x0378CC 0D:B8BC: C9 07     CMP #$07    ; Caves of Alucard
C - - - - - 0x0378CE 0D:B8BE: F0 0B     BEQ bra_B8CB
C - - - - - 0x0378D0 0D:B8C0: C9 0A     CMP #$0A    ; Mountain Range
C - - - - - 0x0378D2 0D:B8C2: D0 06     BNE bra_B8CA
C - - - - - 0x0378D4 0D:B8C4: A5 33     LDA ram_blk_id_lo
C - - - - - 0x0378D6 0D:B8C6: C9 01     CMP #$01
C - - - - - 0x0378D8 0D:B8C8: F0 01     BEQ bra_B8CB
bra_B8CA:
C - - - - - 0x0378DA 0D:B8CA: 88        DEY ; 00
bra_B8CB:
C - - - - - 0x0378DB 0D:B8CB: A5 0E     LDA ram_000E_t015_pos_X_lo
; / 10
C - - - - - 0x0378DD 0D:B8CD: 4A        LSR
C - - - - - 0x0378DE 0D:B8CE: 4A        LSR
C - - - - - 0x0378DF 0D:B8CF: 4A        LSR
C - - - - - 0x0378E0 0D:B8D0: 4A        LSR
C - - - - - 0x0378E1 0D:B8D1: AA        TAX
C - - - - - 0x0378E2 0D:B8D2: FE B0 03  INC ram_ppu_buffer + $B0,X
C - - - - - 0x0378E5 0D:B8D5: BD B0 03  LDA ram_ppu_buffer + $B0,X
C - - - - - 0x0378E8 0D:B8D8: 39 DC B8  AND tbl_B8DC,Y
C - - - - - 0x0378EB 0D:B8DB: 60        RTS



tbl_B8DC:
- D 1 - - - 0x0378EC 0D:B8DC: 0F        .byte $0F   ; 00 
- D 1 - - - 0x0378ED 0D:B8DD: 07        .byte $07   ; 01 



sub_B8DE:
; in
    ; ram_0009_t024
    ; ram_000B_t017
    ; ram_000D_t012
    ; ram_000F_t018
    ; ram_0011_t007_nametable_attribute
    ; ram_0012_t011_ppu_addr_lo
C - - - - - 0x0378EE 0D:B8DE: A9 00     LDA #$00
C - - - - - 0x0378F0 0D:B8E0: 85 04     STA ram_0004_t020
C - - - - - 0x0378F2 0D:B8E2: A5 12     LDA ram_0012_t011_ppu_addr_lo
; * 04
C - - - - - 0x0378F4 0D:B8E4: 0A        ASL
C - - - - - 0x0378F5 0D:B8E5: 0A        ASL
C - - - - - 0x0378F6 0D:B8E6: 26 04     ROL ram_0004_t020
; * 20
C - - - - - 0x0378F8 0D:B8E8: 0A        ASL
C - - - - - 0x0378F9 0D:B8E9: 0A        ASL
C - - - - - 0x0378FA 0D:B8EA: 0A        ASL
C - - - - - 0x0378FB 0D:B8EB: 0A        ASL
C - - - - - 0x0378FC 0D:B8EC: 0A        ASL
C - - - - - 0x0378FD 0D:B8ED: 26 04     ROL ram_0004_t020
C - - - - - 0x0378FF 0D:B8EF: A6 04     LDX ram_0004_t020
C - - - - - 0x037901 0D:B8F1: A5 11     LDA ram_0011_t007_nametable_attribute
C - - - - - 0x037903 0D:B8F3: 20 32 B9  JSR sub_B932
C - - - - - 0x037906 0D:B8F6: A6 A5     LDX ram_00A5
C - - - - - 0x037908 0D:B8F8: A5 0D     LDA ram_000D_t012
C - - - - - 0x03790A 0D:B8FA: 3D 50 BA  AND tbl_BA50,X
C - - - - - 0x03790D 0D:B8FD: DD 50 BA  CMP tbl_BA50,X
C - - - - - 0x037910 0D:B900: F0 40     BEQ bra_B942_RTS
C - - - - - 0x037912 0D:B902: E0 00     CPX #$00
C - - - - - 0x037914 0D:B904: F0 04     BEQ bra_B90A
; / 10
C - - - - - 0x037916 0D:B906: 4A        LSR
C - - - - - 0x037917 0D:B907: 4A        LSR
C - - - - - 0x037918 0D:B908: 4A        LSR
C - - - - - 0x037919 0D:B909: 4A        LSR
bra_B90A:
C - - - - - 0x03791A 0D:B90A: 85 00     STA ram_0000_t055
C - - - - - 0x03791C 0D:B90C: A4 09     LDY ram_0009_t024
C - - - - - 0x03791E 0D:B90E: B9 E0 06  LDA ram_06E0_level_data,Y
C - - - - - 0x037921 0D:B911: 3D 50 BA  AND tbl_BA50,X
C - - - - - 0x037924 0D:B914: D0 2C     BNE bra_B942_RTS
C - - - - - 0x037926 0D:B916: A5 16     LDA $16 ; ram_0016_temp
C - - - - - 0x037928 0D:B918: 48        PHA
C - - - - - 0x037929 0D:B919: A5 17     LDA $17 ; ram_0017_temp
C - - - - - 0x03792B 0D:B91B: 48        PHA
C - - - - - 0x03792C 0D:B91C: A5 00     LDA ram_0000_t055
; bzk optimize, delete previous LDA, repoint JSR to 0x037B26
C - - - - - 0x03792E 0D:B91E: 20 14 BB  JSR sub_BB14
C - - - - - 0x037931 0D:B921: A5 04     LDA ram_0004_t020
C - - - - - 0x037933 0D:B923: 49 01     EOR #$01
C - - - - - 0x037935 0D:B925: AA        TAX
C - - - - - 0x037936 0D:B926: A5 0C     LDA ram_000C_t016_tile
C - - - - - 0x037938 0D:B928: 20 32 B9  JSR sub_B932
C - - - - - 0x03793B 0D:B92B: 68        PLA
C - - - - - 0x03793C 0D:B92C: 85 17     STA $17 ; ram_0017_temp
C - - - - - 0x03793E 0D:B92E: 68        PLA
C - - - - - 0x03793F 0D:B92F: 85 16     STA $16 ; ram_0016_temp
C - - - - - 0x037941 0D:B931: 60        RTS



sub_B932:
; in
    ; A = 
; out
    ; ram_000C_t016_tile
C - - - - - 0x037942 0D:B932: 3D 43 B9  AND tbl_B943,X
C - - - - - 0x037945 0D:B935: 85 01     STA ram_0001_t005
C - - - - - 0x037947 0D:B937: A0 04     LDY #$04
C - - - - - 0x037949 0D:B939: B1 16     LDA (ram_0016_t000_data),Y
C - - - - - 0x03794B 0D:B93B: 3D 47 B9  AND tbl_B947,X
C - - - - - 0x03794E 0D:B93E: 05 01     ORA ram_0001_t005
C - - - - - 0x037950 0D:B940: 85 0C     STA ram_000C_t016_tile
bra_B942_RTS:
C - - - - - 0x037952 0D:B942: 60        RTS



tbl_B943:
- D 1 - - - 0x037953 0D:B943: FC        .byte $FC   ; 00 
- D 1 - - - 0x037954 0D:B944: F3        .byte $F3   ; 01 
- D 1 - - - 0x037955 0D:B945: CF        .byte $CF   ; 02 
- D 1 - - - 0x037956 0D:B946: 3F        .byte $3F   ; 03 



tbl_B947:
- D 1 - - - 0x037957 0D:B947: 03        .byte $03   ; 00 
- D 1 - - - 0x037958 0D:B948: 0C        .byte $0C   ; 01 
- D 1 - - - 0x037959 0D:B949: 30        .byte $30   ; 02 
- D 1 - - - 0x03795A 0D:B94A: C0        .byte $C0   ; 03 



sub_B94B:
; in
    ; ram_0014_t008_ppu_addr_lo
    ; ram_0015_t009_ppu_addr_hi
    ; ram_000C_t016_tile
C - - - - - 0x03795B 0D:B94B: A0 00     LDY #$00
C - - - - - 0x03795D 0D:B94D: 20 70 B9  JSR sub_B970_write_to_buffer
C - - - - - 0x037960 0D:B950: A9 20     LDA #$20
C - - - - - 0x037962 0D:B952: 05 12     ORA ram_0012_t011_ppu_addr_lo
C - - - - - 0x037964 0D:B954: 85 12     STA ram_0012_t011_ppu_addr_lo
C - - - - - 0x037966 0D:B956: 20 70 B9  JSR sub_B970_write_to_buffer
C - - - - - 0x037969 0D:B959: A9 01     LDA #$01
C - - - - - 0x03796B 0D:B95B: 20 14 ED  JSR sub_0x03ED24_write_byte_to_buffer___unk_index
C - - - - - 0x03796E 0D:B95E: A5 14     LDA ram_0014_t008_ppu_addr_lo
C - - - - - 0x037970 0D:B960: 20 14 ED  JSR sub_0x03ED24_write_byte_to_buffer___unk_index
C - - - - - 0x037973 0D:B963: A5 15     LDA ram_0015_t009_ppu_addr_hi
C - - - - - 0x037975 0D:B965: 20 14 ED  JSR sub_0x03ED24_write_byte_to_buffer___unk_index
C - - - - - 0x037978 0D:B968: A5 0C     LDA ram_000C_t016_tile
C - - - - - 0x03797A 0D:B96A: 20 14 ED  JSR sub_0x03ED24_write_byte_to_buffer___unk_index
C - - - - - 0x03797D 0D:B96D: 4C 12 ED  JMP loc_0x03ED22_close_buffer



sub_B970_write_to_buffer:
C - - - - - 0x037980 0D:B970: 20 94 B9  JSR sub_B994_prepare_ppu_buffer
C - - - - - 0x037983 0D:B973: B1 16     LDA (ram_0016_t000_data),Y
C - - - - - 0x037985 0D:B975: 20 14 ED  JSR sub_0x03ED24_write_byte_to_buffer___unk_index
C - - - - - 0x037988 0D:B978: C8        INY
C - - - - - 0x037989 0D:B979: B1 16     LDA (ram_0016_t000_data),Y
C - - - - - 0x03798B 0D:B97B: 20 14 ED  JSR sub_0x03ED24_write_byte_to_buffer___unk_index
C - - - - - 0x03798E 0D:B97E: C8        INY
C - - - - - 0x03798F 0D:B97F: 4C 12 ED  JMP loc_0x03ED22_close_buffer



loc_B982_write_to_buffer:
C D 1 - - - 0x037992 0D:B982: 20 94 B9  JSR sub_B994_prepare_ppu_buffer
C - - - - - 0x037995 0D:B985: A4 0A     LDY ram_000A_t01A
C - - - - - 0x037997 0D:B987: B9 90 B9  LDA tbl_B990,Y
C - - - - - 0x03799A 0D:B98A: 20 14 ED  JSR sub_0x03ED24_write_byte_to_buffer___unk_index
C - - - - - 0x03799D 0D:B98D: 4C 12 ED  JMP loc_0x03ED22_close_buffer



tbl_B990:
- D 1 - - - 0x0379A0 0D:B990: 2C        .byte $2C   ; 00 
- D 1 - - - 0x0379A1 0D:B991: 2E        .byte $2E   ; 01 
- D 1 - - - 0x0379A2 0D:B992: 2F        .byte $2F   ; 02 
- D 1 - - - 0x0379A3 0D:B993: 2D        .byte $2D   ; 03 



sub_B994_prepare_ppu_buffer:
C - - - - - 0x0379A4 0D:B994: A9 01     LDA #$01
C - - - - - 0x0379A6 0D:B996: 20 14 ED  JSR sub_0x03ED24_write_byte_to_buffer___unk_index
C - - - - - 0x0379A9 0D:B999: A5 12     LDA ram_0012_t011_ppu_addr_lo
C - - - - - 0x0379AB 0D:B99B: 20 14 ED  JSR sub_0x03ED24_write_byte_to_buffer___unk_index
C - - - - - 0x0379AE 0D:B99E: A5 13     LDA ram_0013_t009_ppu_addr_hi
C - - - - - 0x0379B0 0D:B9A0: 4C 14 ED  JMP loc_0x03ED24_write_byte_to_buffer___unk_index



sub_B9A3_shift_ppu_address:
C - - - - - 0x0379B3 0D:B9A3: A4 0A     LDY ram_000A_t01A
C - - - - - 0x0379B5 0D:B9A5: B9 AE B9  LDA tbl_B9AE,Y
C - - - - - 0x0379B8 0D:B9A8: 18        CLC
C - - - - - 0x0379B9 0D:B9A9: 65 12     ADC ram_0012_t011_ppu_addr_lo
C - - - - - 0x0379BB 0D:B9AB: 85 12     STA ram_0012_t011_ppu_addr_lo
C - - - - - 0x0379BD 0D:B9AD: 60        RTS



tbl_B9AE:
- D 1 - - - 0x0379BE 0D:B9AE: 00        .byte $00   ; 00 
- D 1 - - - 0x0379BF 0D:B9AF: 01        .byte $01   ; 01 
- D 1 - - - 0x0379C0 0D:B9B0: 21        .byte $21   ; 02 
- D 1 - - - 0x0379C1 0D:B9B1: 20        .byte $20   ; 03 



sub_B9B2_calculate_ppu_address:
; in
    ; ram_0013_t003
    ; ram_0014_t002
; out
    ; ram_0012_t011_ppu_addr_lo
    ; ram_0013_t009_ppu_addr_hi
C - - - - - 0x0379C2 0D:B9B2: A5 13     LDA ram_0013_t003
C - - - - - 0x0379C4 0D:B9B4: 29 F0     AND #$F0
C - - - - - 0x0379C6 0D:B9B6: 85 12     STA ram_0012_t011_ppu_addr_lo
C - - - - - 0x0379C8 0D:B9B8: A5 14     LDA ram_0014_t002
C - - - - - 0x0379CA 0D:B9BA: 45 75     EOR ram_0075
C - - - - - 0x0379CC 0D:B9BC: 4A        LSR
C - - - - - 0x0379CD 0D:B9BD: A9 20     LDA #$20
C - - - - - 0x0379CF 0D:B9BF: 90 02     BCC bra_B9C3
C - - - - - 0x0379D1 0D:B9C1: A9 24     LDA #$24
bra_B9C3:
C - - - - - 0x0379D3 0D:B9C3: 85 13     STA ram_0013_t009_ppu_addr_hi
C - - - - - 0x0379D5 0D:B9C5: AD 1C 04  LDA ram_plr_pos_Y_lo
; / 08
C - - - - - 0x0379D8 0D:B9C8: 4A        LSR
C - - - - - 0x0379D9 0D:B9C9: 4A        LSR
C - - - - - 0x0379DA 0D:B9CA: 4A        LSR
; / 08
C - - - - - 0x0379DB 0D:B9CB: 4A        LSR
C - - - - - 0x0379DC 0D:B9CC: 66 12     ROR ram_0012_t011_ppu_addr_lo
C - - - - - 0x0379DE 0D:B9CE: 4A        LSR
C - - - - - 0x0379DF 0D:B9CF: 66 12     ROR ram_0012_t011_ppu_addr_lo
C - - - - - 0x0379E1 0D:B9D1: 4A        LSR
C - - - - - 0x0379E2 0D:B9D2: 66 12     ROR ram_0012_t011_ppu_addr_lo
C - - - - - 0x0379E4 0D:B9D4: 05 13     ORA ram_0013_t009_ppu_addr_hi
C - - - - - 0x0379E6 0D:B9D6: 85 13     STA ram_0013_t009_ppu_addr_hi
C - - - - - 0x0379E8 0D:B9D8: 18        CLC
C - - - - - 0x0379E9 0D:B9D9: A9 40     LDA #$40
C - - - - - 0x0379EB 0D:B9DB: 65 12     ADC ram_0012_t011_ppu_addr_lo
C - - - - - 0x0379ED 0D:B9DD: 85 12     STA ram_0012_t011_ppu_addr_lo
C - - - - - 0x0379EF 0D:B9DF: 90 02     BCC bra_B9E3_RTS
; if overflow
C - - - - - 0x0379F1 0D:B9E1: E6 13     INC ram_0013_t009_ppu_addr_hi
bra_B9E3_RTS:
C - - - - - 0x0379F3 0D:B9E3: 60        RTS



sub_B9E4_calculate_ppu_address:
ofs_062_0x0379F4_02_calculate_ppu_address:
; in
    ; ram_0012_t011_ppu_addr_lo
    ; ram_0013_t009_ppu_addr_hi
; out
    ; ram_0014_t008_ppu_addr_lo
    ; ram_0015_t009_ppu_addr_hi
C - - - - - 0x0379F4 0D:B9E4: A5 13     LDA ram_0013_t009_ppu_addr_hi
C - - - - - 0x0379F6 0D:B9E6: 29 FC     AND #$FC
C - - - - - 0x0379F8 0D:B9E8: 09 03     ORA #$03
C - - - - - 0x0379FA 0D:B9EA: 85 15     STA ram_0015_t009_ppu_addr_hi
C - - - - - 0x0379FC 0D:B9EC: A5 13     LDA ram_0013_t009_ppu_addr_hi
C - - - - - 0x0379FE 0D:B9EE: 29 03     AND #$03
C - - - - - 0x037A00 0D:B9F0: 09 0C     ORA #$0C
C - - - - - 0x037A02 0D:B9F2: 85 14     STA ram_0014_t008_ppu_addr_lo
C - - - - - 0x037A04 0D:B9F4: A5 12     LDA ram_0012_t011_ppu_addr_lo
; * 02
C - - - - - 0x037A06 0D:B9F6: 0A        ASL
C - - - - - 0x037A07 0D:B9F7: 26 14     ROL ram_0014_t008_ppu_addr_lo
; * 04
C - - - - - 0x037A09 0D:B9F9: 0A        ASL
C - - - - - 0x037A0A 0D:B9FA: 0A        ASL
; * 08
C - - - - - 0x037A0B 0D:B9FB: 0A        ASL
C - - - - - 0x037A0C 0D:B9FC: 26 14     ROL ram_0014_t008_ppu_addr_lo
C - - - - - 0x037A0E 0D:B9FE: 0A        ASL
C - - - - - 0x037A0F 0D:B9FF: 26 14     ROL ram_0014_t008_ppu_addr_lo
C - - - - - 0x037A11 0D:BA01: 0A        ASL
C - - - - - 0x037A12 0D:BA02: 26 14     ROL ram_0014_t008_ppu_addr_lo
C - - - - - 0x037A14 0D:BA04: 60        RTS



sub_BA05:
; in
    ; ram_0009_t024
    ; ram_000E_t015_pos_X_lo
; out
    ; N
        ; 0 = 
        ; 1 = 
    ; ram_000A_t01A
; bzk optimize, LDX
C - - - - - 0x037A15 0D:BA05: A5 A5     LDA ram_00A5
C - - - - - 0x037A17 0D:BA07: AA        TAX
C - - - - - 0x037A18 0D:BA08: A4 09     LDY ram_0009_t024
C - - - - - 0x037A1A 0D:BA0A: B9 E0 06  LDA ram_06E0_level_data,Y
C - - - - - 0x037A1D 0D:BA0D: 3D 50 BA  AND tbl_BA50,X
C - - - - - 0x037A20 0D:BA10: 85 00     STA ram_0000_t052
C - - - - - 0x037A22 0D:BA12: B9 E0 06  LDA ram_06E0_level_data,Y
C - - - - - 0x037A25 0D:BA15: 3D 4E BA  AND tbl_BA4E,X
C - - - - - 0x037A28 0D:BA18: DD 48 BA  CMP tbl_BA48,X
C - - - - - 0x037A2B 0D:BA1B: D0 0A     BNE bra_BA27
C - - - - - 0x037A2D 0D:BA1D: 18        CLC
C - - - - - 0x037A2E 0D:BA1E: 7D 4A BA  ADC tbl_BA4A,X
C - - - - - 0x037A31 0D:BA21: 20 52 BA  JSR sub_BA52
C - - - - - 0x037A34 0D:BA24: 4C 2E BA  JMP loc_BA2E
bra_BA27:
C - - - - - 0x037A37 0D:BA27: 18        CLC
C - - - - - 0x037A38 0D:BA28: 7D 4C BA  ADC tbl_BA4C,X
C - - - - - 0x037A3B 0D:BA2B: 20 52 BA  JSR sub_BA52
loc_BA2E:
C D 1 - - - 0x037A3E 0D:BA2E: 3D 4E BA  AND tbl_BA4E,X
C - - - - - 0x037A41 0D:BA31: 85 0A     STA ram_000A_t01A
C - - - - - 0x037A43 0D:BA33: 05 00     ORA ram_0000_t052
C - - - - - 0x037A45 0D:BA35: 99 E0 06  STA ram_06E0_level_data,Y
C - - - - - 0x037A48 0D:BA38: A5 0A     LDA ram_000A_t01A
C - - - - - 0x037A4A 0D:BA3A: C9 10     CMP #$10
C - - - - - 0x037A4C 0D:BA3C: 90 04     BCC bra_BA42
; / 10
C - - - - - 0x037A4E 0D:BA3E: 4A        LSR
C - - - - - 0x037A4F 0D:BA3F: 4A        LSR
C - - - - - 0x037A50 0D:BA40: 4A        LSR
C - - - - - 0x037A51 0D:BA41: 4A        LSR
bra_BA42:
C - - - - - 0x037A52 0D:BA42: 38        SEC
C - - - - - 0x037A53 0D:BA43: E9 0C     SBC #$0C
C - - - - - 0x037A55 0D:BA45: 85 0A     STA ram_000A_t01A
C - - - - - 0x037A57 0D:BA47: 60        RTS



tbl_BA48:
- D 1 - - - 0x037A58 0D:BA48: 40        .byte $40   ; 00 
- D 1 - - - 0x037A59 0D:BA49: 04        .byte $04   ; 01 



tbl_BA4A:
- D 1 - - - 0x037A5A 0D:BA4A: 80        .byte $80   ; 00 
- D 1 - - - 0x037A5B 0D:BA4B: 08        .byte $08   ; 01 



tbl_BA4C:
- D 1 - - - 0x037A5C 0D:BA4C: 10        .byte $10   ; 00 
- D 1 - - - 0x037A5D 0D:BA4D: 01        .byte $01   ; 01 



tbl_BA4E:
- D 1 - - - 0x037A5E 0D:BA4E: F0        .byte $F0   ; 00 
- D 1 - - - 0x037A5F 0D:BA4F: 0F        .byte $0F   ; 01 



tbl_BA50:
- D 1 - - - 0x037A60 0D:BA50: 0F        .byte $0F   ; 00 
- D 1 - - - 0x037A61 0D:BA51: F0        .byte $F0   ; 01 



sub_BA52:
; in
    ; ram_000E_t015_pos_X_lo
C - - - - - 0x037A62 0D:BA52: 48        PHA
C - - - - - 0x037A63 0D:BA53: 84 02     STY ram_0002_t021_save_Y
C - - - - - 0x037A65 0D:BA55: A5 0E     LDA ram_000E_t015_pos_X_lo
; / 10
C - - - - - 0x037A67 0D:BA57: 4A        LSR
C - - - - - 0x037A68 0D:BA58: 4A        LSR
C - - - - - 0x037A69 0D:BA59: 4A        LSR
C - - - - - 0x037A6A 0D:BA5A: 4A        LSR
C - - - - - 0x037A6B 0D:BA5B: A8        TAY
C - - - - - 0x037A6C 0D:BA5C: A9 00     LDA #$00
C - - - - - 0x037A6E 0D:BA5E: 99 B0 03  STA ram_ppu_buffer + $B0,Y
C - - - - - 0x037A71 0D:BA61: A4 02     LDY ram_0002_t021_save_Y
C - - - - - 0x037A73 0D:BA63: 68        PLA
C - - - - - 0x037A74 0D:BA64: 60        RTS



tbl_BA65:
;                                              +-------------------- compare with blk_id_hi
;                                              |    +--------------- compare with blk_id_lo
;                                              |    |    +---------- compare with blk_id_fr
;                                              |    |    |    +----- compare with ??? (camera position?)
;                                              |    |    |    |
- D 1 - - - 0x037A75 0D:BA65: 03        .byte $03, $01, $00, $00   ; 00 
- D 1 - - - 0x037A79 0D:BA69: 03        .byte $03, $01, $00, $01   ; 01 
- D 1 - - - 0x037A7D 0D:BA6D: 03        .byte $03, $01, $00, $02   ; 02 
- D 1 - - - 0x037A81 0D:BA71: 03        .byte $03, $03, $00, $00   ; 03 
- D 1 - - - 0x037A85 0D:BA75: 03        .byte $03, $03, $00, $01   ; 04 
- D 1 - - - 0x037A89 0D:BA79: 03        .byte $03, $03, $00, $02   ; 05 
- D 1 - - - 0x037A8D 0D:BA7D: 07        .byte $07, $00, $00, $00   ; 06 
- D 1 - - - 0x037A91 0D:BA81: 07        .byte $07, $05, $00, $00   ; 07 
- D 1 - - - 0x037A95 0D:BA85: 07        .byte $07, $05, $00, $01   ; 08 
- D 1 - - - 0x037A99 0D:BA89: 07        .byte $07, $05, $00, $02   ; 09 
- D 1 - - - 0x037A9D 0D:BA8D: 07        .byte $07, $05, $01, $00   ; 0A 
- D 1 - - - 0x037AA1 0D:BA91: 08        .byte $08, $03, $00, $01   ; 0B 
- D 1 - - - 0x037AA5 0D:BA95: 08        .byte $08, $03, $00, $02   ; 0C 
- D 1 - - - 0x037AA9 0D:BA99: 08        .byte $08, $04, $00, $01   ; 0D 
- D 1 - - - 0x037AAD 0D:BA9D: 08        .byte $08, $04, $00, $02   ; 0E 
- D 1 - - - 0x037AB1 0D:BAA1: 08        .byte $08, $04, $00, $04   ; 0F 
- D 1 - - - 0x037AB5 0D:BAA5: 0A        .byte $0A, $01, $00, $00   ; 10 
- D 1 - - - 0x037AB9 0D:BAA9: 0A        .byte $0A, $01, $00, $01   ; 11 
- D 1 - - - 0x037ABD 0D:BAAD: 0A        .byte $0A, $05, $00, $01   ; 12 
- D 1 - - - 0x037AC1 0D:BAB1: 0A        .byte $0A, $05, $00, $02   ; 13 
- D 1 - - - 0x037AC5 0D:BAB5: 0A        .byte $0A, $06, $01, $00   ; 14 
- D 1 - - - 0x037AC9 0D:BAB9: 0A        .byte $0A, $06, $01, $01   ; 15 
- D 1 - - - 0x037ACD 0D:BABD: 0A        .byte $0A, $06, $01, $02   ; 16 
- D 1 - - - 0x037AD1 0D:BAC1: 0A        .byte $0A, $06, $01, $03   ; 17 
- D 1 - - - 0x037AD5 0D:BAC5: 0B        .byte $0B, $02, $01, $00   ; 18 
- D 1 - - - 0x037AD9 0D:BAC9: 0B        .byte $0B, $02, $01, $01   ; 19 
- D 1 - - - 0x037ADD 0D:BACD: 0E        .byte $0E, $00, $01, $00   ; 1A 
- D 1 - - - 0x037AE1 0D:BAD1: 0E        .byte $0E, $00, $01, $01   ; 1B 
- D 1 - - - 0x037AE5 0D:BAD5: 0E        .byte $0E, $00, $01, $02   ; 1C 
- D 1 - - - 0x037AE9 0D:BAD9: 0E        .byte $0E, $00, $00, $00   ; 1D 
- D 1 - - - 0x037AED 0D:BADD: 0E        .byte $0E, $00, $00, $01   ; 1E 



sub_BAE1:
; in
    ; ram_000E_t015_pos_X_lo
; out
    ; C
        ; 0 = 
        ; 1 = 
    ; ram_000B_t017
C - - - - - 0x037AF1 0D:BAE1: 20 3E BB  JSR sub_BB3E
C - - - - - 0x037AF4 0D:BAE4: 90 06     BCC bra_BAEC
bra_BAE6_RTS:
C - - - - - 0x037AF6 0D:BAE6: 60        RTS



sub_BAE7:
; in
    ; ram_000B_t017
        ; bzk bug, value from 0x0340A2
        ; must be properly written, like at 0x037AF1
    ; ram_000E_t015_pos_X_lo
    ; ram_000F_t018
; out
    ; ram_000D_t012
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x037AF7 0D:BAE7: 20 5B BB  JSR sub_BB5B
C - - - - - 0x037AFA 0D:BAEA: B0 FA     BCS bra_BAE6_RTS
bra_BAEC:
C - - - - - 0x037AFC 0D:BAEC: A5 03     LDA ram_0003_t006_last_match_index
; * 08
C - - - - - 0x037AFE 0D:BAEE: 0A        ASL
C - - - - - 0x037AFF 0D:BAEF: 0A        ASL
C - - - - - 0x037B00 0D:BAF0: 0A        ASL
C - - - - - 0x037B01 0D:BAF1: 85 00     STA ram_0000_t0C6
C - - - - - 0x037B03 0D:BAF3: A5 0E     LDA ram_000E_t015_pos_X_lo
; / 20
C - - - - - 0x037B05 0D:BAF5: 4A        LSR
C - - - - - 0x037B06 0D:BAF6: 4A        LSR
C - - - - - 0x037B07 0D:BAF7: 4A        LSR
C - - - - - 0x037B08 0D:BAF8: 4A        LSR
C - - - - - 0x037B09 0D:BAF9: 4A        LSR
C - - - - - 0x037B0A 0D:BAFA: 08        PHP
C - - - - - 0x037B0B 0D:BAFB: 18        CLC
C - - - - - 0x037B0C 0D:BAFC: 65 00     ADC ram_0000_t0C6
C - - - - - 0x037B0E 0D:BAFE: A8        TAY
C - - - - - 0x037B0F 0D:BAFF: A9 00     LDA #$00
C - - - - - 0x037B11 0D:BB01: 28        PLP
C - - - - - 0x037B12 0D:BB02: 2A        ROL
C - - - - - 0x037B13 0D:BB03: AA        TAX
C - - - - - 0x037B14 0D:BB04: B9 CA BB  LDA tbl_BBCA,Y
C - - - - - 0x037B17 0D:BB07: 85 0D     STA ram_000D_t012
C - - - - - 0x037B19 0D:BB09: 3D 4E BA  AND tbl_BA4E,X
C - - - - - 0x037B1C 0D:BB0C: E0 00     CPX #$00
C - - - - - 0x037B1E 0D:BB0E: D0 04     BNE bra_BB14
; / 10
C - - - - - 0x037B20 0D:BB10: 4A        LSR
C - - - - - 0x037B21 0D:BB11: 4A        LSR
C - - - - - 0x037B22 0D:BB12: 4A        LSR
C - - - - - 0x037B23 0D:BB13: 4A        LSR
bra_BB14:
sub_BB14:
; in
    ; ram_000B_t017
    ; ram_000F_t018
C - - - - - 0x037B24 0D:BB14: 85 00     STA ram_0000_t055
C - - - - - 0x037B26 0D:BB16: 20 91 BB  JSR sub_BB91
; triggers when the block you stand on is falling after breaking completely.
; this data replaces falling block with proper background tiles
C - - - - - 0x037B29 0D:BB19: A5 32     LDA ram_blk_id_hi
C - - - - - 0x037B2B 0D:BB1B: 0A        ASL
C - - - - - 0x037B2C 0D:BB1C: A8        TAY
C - - - - - 0x037B2D 0D:BB1D: B9 C2 BC  LDA tbl_BCC2,Y
C - - - - - 0x037B30 0D:BB20: 85 02     STA ram_0002_t019_data_pointer
C - - - - - 0x037B32 0D:BB22: B9 C3 BC  LDA tbl_BCC2 + $01,Y
C - - - - - 0x037B35 0D:BB25: 85 03     STA ram_0002_t019_data_pointer + $01
C - - - - - 0x037B37 0D:BB27: A5 00     LDA ram_0000_t055
; * 05
C - - - - - 0x037B39 0D:BB29: 0A        ASL
C - - - - - 0x037B3A 0D:BB2A: 0A        ASL
C - - - - - 0x037B3B 0D:BB2B: 18        CLC
C - - - - - 0x037B3C 0D:BB2C: 65 00     ADC ram_0000_t055
; bzk optimize, delete STA + LDA, leave CLC
C - - - - - 0x037B3E 0D:BB2E: 85 00     STA ram_0000_t055
C - - - - - 0x037B40 0D:BB30: 18        CLC
C - - - - - 0x037B41 0D:BB31: A5 00     LDA ram_0000_t055
C - - - - - 0x037B43 0D:BB33: 65 02     ADC ram_0002_t019_data_pointer
C - - - - - 0x037B45 0D:BB35: 85 16     STA ram_0016_t000_data
C - - - - - 0x037B47 0D:BB37: A5 03     LDA ram_0002_t019_data_pointer + $01
C - - - - - 0x037B49 0D:BB39: 69 00     ADC #$00
C - - - - - 0x037B4B 0D:BB3B: 85 17     STA ram_0016_t000_data + $01
C - - - - - 0x037B4D 0D:BB3D: 60        RTS



sub_BB3E:
; out
    ; C
        ; 0 = perfect match
        ; 1 = no matches
    ; ram_000B_t017
C - - - - - 0x037B4E 0D:BB3E: AD 1C 04  LDA ram_plr_pos_Y_lo
C - - - - - 0x037B51 0D:BB41: 38        SEC
C - - - - - 0x037B52 0D:BB42: E9 20     SBC #$20
C - - - - - 0x037B54 0D:BB44: 18        CLC
C - - - - - 0x037B55 0D:BB45: 65 56     ADC ram_cam_pos_lo
C - - - - - 0x037B57 0D:BB47: B0 04     BCS bra_BB4D
C - - - - - 0x037B59 0D:BB49: C9 F0     CMP #$F0
C - - - - - 0x037B5B 0D:BB4B: 90 03     BCC bra_BB50
bra_BB4D:
C - - - - - 0x037B5D 0D:BB4D: 69 0F     ADC #$0F
C - - - - - 0x037B5F 0D:BB4F: 38        SEC
bra_BB50:
C - - - - - 0x037B60 0D:BB50: 85 0B     STA ram_000B_t017
C - - - - - 0x037B62 0D:BB52: A5 57     LDA ram_cam_pos_hi
C - - - - - 0x037B64 0D:BB54: 69 00     ADC #$00
C - - - - - 0x037B66 0D:BB56: 85 07     STA ram_0004_t00B_match_test_array + $03
C - - - - - 0x037B68 0D:BB58: 4C 5F BB  JMP loc_BB5F



sub_BB5B:
; in
    ; ram_000F_t018
; out
    ; C
        ; 0 = perfect match
        ; 1 = no matches
    ; ram_0003_t006_last_match_index
C - - - - - 0x037B6B 0D:BB5B: A5 0F     LDA ram_000F_t018
C - - - - - 0x037B6D 0D:BB5D: 85 07     STA ram_0004_t00B_match_test_array + $03
loc_BB5F:
C D 1 - - - 0x037B6F 0D:BB5F: A9 1F     LDA #$1F
C - - - - - 0x037B71 0D:BB61: 85 02     STA ram_0002_t018_attempts_counter
C - - - - - 0x037B73 0D:BB63: A5 32     LDA ram_blk_id_hi
C - - - - - 0x037B75 0D:BB65: 85 04     STA ram_0004_t00B_match_test_array
C - - - - - 0x037B77 0D:BB67: A5 33     LDA ram_blk_id_lo
C - - - - - 0x037B79 0D:BB69: 85 05     STA ram_0004_t00B_match_test_array + $01
C - - - - - 0x037B7B 0D:BB6B: A5 34     LDA ram_blk_id_fr
C - - - - - 0x037B7D 0D:BB6D: 85 06     STA ram_0004_t00B_match_test_array + $02
C - - - - - 0x037B7F 0D:BB6F: A9 00     LDA #$00
C - - - - - 0x037B81 0D:BB71: 85 03     STA ram_0003_t006_last_match_index
bra_BB73_loop:
C - - - - - 0x037B83 0D:BB73: A5 03     LDA ram_0003_t006_last_match_index
; * 04
C - - - - - 0x037B85 0D:BB75: 0A        ASL
C - - - - - 0x037B86 0D:BB76: 0A        ASL
C - - - - - 0x037B87 0D:BB77: A8        TAY
C - - - - - 0x037B88 0D:BB78: A2 00     LDX #$00
bra_BB7A_array_check_loop:
C - - - - - 0x037B8A 0D:BB7A: B5 04     LDA ram_0004_t00B_match_test_array,X ; 0004 0005 0006 0007 
C - - - - - 0x037B8C 0D:BB7C: D9 65 BA  CMP tbl_BA65,Y
C - - - - - 0x037B8F 0D:BB7F: D0 08     BNE bra_BB89_check_failed
; if check passed, check next
C - - - - - 0x037B91 0D:BB81: C8        INY
C - - - - - 0x037B92 0D:BB82: E8        INX
C - - - - - 0x037B93 0D:BB83: E0 04     CPX #$04
C - - - - - 0x037B95 0D:BB85: D0 F3     BNE bra_BB7A_array_check_loop
; if perfect match
C - - - - - 0x037B97 0D:BB87: 18        CLC
C - - - - - 0x037B98 0D:BB88: 60        RTS
bra_BB89_check_failed:
C - - - - - 0x037B99 0D:BB89: E6 03     INC ram_0003_t006_last_match_index
C - - - - - 0x037B9B 0D:BB8B: C6 02     DEC ram_0002_t018_attempts_counter
C - - - - - 0x037B9D 0D:BB8D: D0 E4     BNE bra_BB73_loop
; if no matches
C - - - - - 0x037B9F 0D:BB8F: 38        SEC
C - - - - - 0x037BA0 0D:BB90: 60        RTS



sub_BB91:
; in
    ; ram_0000_t055
    ; ram_000B_t017
    ; ram_000F_t018
; out
    ; ram_0000_t055
C - - - - - 0x037BA1 0D:BB91: A5 00     LDA ram_0000_t055
C - - - - - 0x037BA3 0D:BB93: A4 32     LDY ram_blk_id_hi
C - - - - - 0x037BA5 0D:BB95: C0 0A     CPY #$0A    ; Mountain Range
C - - - - - 0x037BA7 0D:BB97: D0 11     BNE bra_BBAA
C - - - - - 0x037BA9 0D:BB99: C9 0E     CMP #$0E    ; Final Clock Tower
C - - - - - 0x037BAB 0D:BB9B: D0 28     BNE bra_BBC5_RTS
- - - - - - 0x037BAD 0D:BB9D: A9 0D     LDA #$0D
- - - - - - 0x037BAF 0D:BB9F: A4 0B     LDY ram_000B_t017
- - - - - - 0x037BB1 0D:BBA1: C0 A0     CPY #$A0
- - - - - - 0x037BB3 0D:BBA3: 90 02     BCC bra_BBA7
- - - - - - 0x037BB5 0D:BBA5: A9 0B     LDA #$0B
bra_BBA7:
- - - - - - 0x037BB7 0D:BBA7: 85 00     STA ram_0000_t055
- - - - - - 0x037BB9 0D:BBA9: 60        RTS
bra_BBAA:
C - - - - - 0x037BBA 0D:BBAA: C0 0B     CPY #$0B
C - - - - - 0x037BBC 0D:BBAC: D0 17     BNE bra_BBC5_RTS
C - - - - - 0x037BBE 0D:BBAE: A4 0F     LDY ram_000F_t018
C - - - - - 0x037BC0 0D:BBB0: D0 13     BNE bra_BBC5_RTS
C - - - - - 0x037BC2 0D:BBB2: 38        SEC
C - - - - - 0x037BC3 0D:BBB3: E9 0D     SBC #$0D
C - - - - - 0x037BC5 0D:BBB5: 90 0E     BCC bra_BBC5_RTS
C - - - - - 0x037BC7 0D:BBB7: 0A        ASL
C - - - - - 0x037BC8 0D:BBB8: A8        TAY
C - - - - - 0x037BC9 0D:BBB9: A5 0B     LDA ram_000B_t017
C - - - - - 0x037BCB 0D:BBBB: C9 A0     CMP #$A0
C - - - - - 0x037BCD 0D:BBBD: 90 01     BCC bra_BBC0
- - - - - - 0x037BCF 0D:BBBF: C8        INY
bra_BBC0:
C - - - - - 0x037BD0 0D:BBC0: B9 C6 BB  LDA tbl_BBC6,Y
C - - - - - 0x037BD3 0D:BBC3: 85 00     STA ram_0000_t055
bra_BBC5_RTS:
C - - - - - 0x037BD5 0D:BBC5: 60        RTS



tbl_BBC6:
; 00 
- - - - - - 0x037BD6 0D:BBC6: 02        .byte $02   ; 00 
- - - - - - 0x037BD7 0D:BBC7: 01        .byte $01   ; 01 
; 01 
- D 1 - - - 0x037BD8 0D:BBC8: 03        .byte $03   ; 00 
- - - - - - 0x037BD9 0D:BBC9: 04        .byte $04   ; 01 



tbl_BBCA:
- - - - - - 0x037BDA 0D:BBCA: FF        .byte $FF   ; 00 
- - - - - - 0x037BDB 0D:BBCB: FF        .byte $FF   ; 01 
- D 1 - - - 0x037BDC 0D:BBCC: 00        .byte $00   ; 02 
- - - - - - 0x037BDD 0D:BBCD: FF        .byte $FF   ; 03 
- - - - - - 0x037BDE 0D:BBCE: 00        .byte $00   ; 04 
- - - - - - 0x037BDF 0D:BBCF: FF        .byte $FF   ; 05 
- - - - - - 0x037BE0 0D:BBD0: FF        .byte $FF   ; 06 
- - - - - - 0x037BE1 0D:BBD1: FF        .byte $FF   ; 07 
- - - - - - 0x037BE2 0D:BBD2: FF        .byte $FF   ; 08 
- - - - - - 0x037BE3 0D:BBD3: FF        .byte $FF   ; 09 
- - - - - - 0x037BE4 0D:BBD4: 12        .byte $12   ; 0A 
- - - - - - 0x037BE5 0D:BBD5: 00        .byte $00   ; 0B 
- - - - - - 0x037BE6 0D:BBD6: FF        .byte $FF   ; 0C 
- - - - - - 0x037BE7 0D:BBD7: FF        .byte $FF   ; 0D 
- - - - - - 0x037BE8 0D:BBD8: 00        .byte $00   ; 0E 
- - - - - - 0x037BE9 0D:BBD9: FF        .byte $FF   ; 0F 
- - - - - - 0x037BEA 0D:BBDA: FF        .byte $FF   ; 10 
- - - - - - 0x037BEB 0D:BBDB: FF        .byte $FF   ; 11 
- - - - - - 0x037BEC 0D:BBDC: FF        .byte $FF   ; 12 
- D 1 - - - 0x037BED 0D:BBDD: 00        .byte $00   ; 13 
- - - - - - 0x037BEE 0D:BBDE: FF        .byte $FF   ; 14 
- D 1 - - - 0x037BEF 0D:BBDF: 00        .byte $00   ; 15 
- - - - - - 0x037BF0 0D:BBE0: FF        .byte $FF   ; 16 
- D 1 - - - 0x037BF1 0D:BBE1: 00        .byte $00   ; 17 
- - - - - - 0x037BF2 0D:BBE2: FF        .byte $FF   ; 18 
- - - - - - 0x037BF3 0D:BBE3: FF        .byte $FF   ; 19 
- - - - - - 0x037BF4 0D:BBE4: FF        .byte $FF   ; 1A 
- - - - - - 0x037BF5 0D:BBE5: FF        .byte $FF   ; 1B 
- - - - - - 0x037BF6 0D:BBE6: 00        .byte $00   ; 1C 
- - - - - - 0x037BF7 0D:BBE7: FF        .byte $FF   ; 1D 
- - - - - - 0x037BF8 0D:BBE8: FF        .byte $FF   ; 1E 
- - - - - - 0x037BF9 0D:BBE9: FF        .byte $FF   ; 1F 
- - - - - - 0x037BFA 0D:BBEA: FF        .byte $FF   ; 20 
- - - - - - 0x037BFB 0D:BBEB: 00        .byte $00   ; 21 
- - - - - - 0x037BFC 0D:BBEC: FF        .byte $FF   ; 22 
- - - - - - 0x037BFD 0D:BBED: FF        .byte $FF   ; 23 
- - - - - - 0x037BFE 0D:BBEE: FF        .byte $FF   ; 24 
- - - - - - 0x037BFF 0D:BBEF: FF        .byte $FF   ; 25 
- - - - - - 0x037C00 0D:BBF0: FF        .byte $FF   ; 26 
- - - - - - 0x037C01 0D:BBF1: FF        .byte $FF   ; 27 
- - - - - - 0x037C02 0D:BBF2: 00        .byte $00   ; 28 
- - - - - - 0x037C03 0D:BBF3: FF        .byte $FF   ; 29 
- - - - - - 0x037C04 0D:BBF4: FF        .byte $FF   ; 2A 
- - - - - - 0x037C05 0D:BBF5: FF        .byte $FF   ; 2B 
- - - - - - 0x037C06 0D:BBF6: FF        .byte $FF   ; 2C 
- - - - - - 0x037C07 0D:BBF7: FF        .byte $FF   ; 2D 
- - - - - - 0x037C08 0D:BBF8: FF        .byte $FF   ; 2E 
- - - - - - 0x037C09 0D:BBF9: FF        .byte $FF   ; 2F 
- - - - - - 0x037C0A 0D:BBFA: FF        .byte $FF   ; 30 
- - - - - - 0x037C0B 0D:BBFB: FF        .byte $FF   ; 31 
- - - - - - 0x037C0C 0D:BBFC: FF        .byte $FF   ; 32 
- - - - - - 0x037C0D 0D:BBFD: FF        .byte $FF   ; 33 
- - - - - - 0x037C0E 0D:BBFE: FF        .byte $FF   ; 34 
- - - - - - 0x037C0F 0D:BBFF: 00        .byte $00   ; 35 
- - - - - - 0x037C10 0D:BC00: FF        .byte $FF   ; 36 
- - - - - - 0x037C11 0D:BC01: FF        .byte $FF   ; 37 
- - - - - - 0x037C12 0D:BC02: FF        .byte $FF   ; 38 
- - - - - - 0x037C13 0D:BC03: FF        .byte $FF   ; 39 
- - - - - - 0x037C14 0D:BC04: FF        .byte $FF   ; 3A 
- - - - - - 0x037C15 0D:BC05: FF        .byte $FF   ; 3B 
- - - - - - 0x037C16 0D:BC06: FF        .byte $FF   ; 3C 
- - - - - - 0x037C17 0D:BC07: FF        .byte $FF   ; 3D 
- D 1 - - - 0x037C18 0D:BC08: 12        .byte $12   ; 3E 
- - - - - - 0x037C19 0D:BC09: F3        .byte $F3   ; 3F 
- - - - - - 0x037C1A 0D:BC0A: 0F        .byte $0F   ; 40 
- - - - - - 0x037C1B 0D:BC0B: 00        .byte $00   ; 41 
- - - - - - 0x037C1C 0D:BC0C: FF        .byte $FF   ; 42 
- - - - - - 0x037C1D 0D:BC0D: FF        .byte $FF   ; 43 
- - - - - - 0x037C1E 0D:BC0E: FF        .byte $FF   ; 44 
- - - - - - 0x037C1F 0D:BC0F: FF        .byte $FF   ; 45 
- - - - - - 0x037C20 0D:BC10: FF        .byte $FF   ; 46 
- - - - - - 0x037C21 0D:BC11: FF        .byte $FF   ; 47 
- - - - - - 0x037C22 0D:BC12: 00        .byte $00   ; 48 
- - - - - - 0x037C23 0D:BC13: F0        .byte $F0   ; 49 
- D 1 - - - 0x037C24 0D:BC14: 30        .byte $30   ; 4A 
- - - - - - 0x037C25 0D:BC15: 12        .byte $12   ; 4B 
- - - - - - 0x037C26 0D:BC16: FF        .byte $FF   ; 4C 
- D 1 - - - 0x037C27 0D:BC17: 00        .byte $00   ; 4D 
- - - - - - 0x037C28 0D:BC18: FF        .byte $FF   ; 4E 
- - - - - - 0x037C29 0D:BC19: FF        .byte $FF   ; 4F 
- - - - - - 0x037C2A 0D:BC1A: FF        .byte $FF   ; 50 
- - - - - - 0x037C2B 0D:BC1B: FF        .byte $FF   ; 51 
- - - - - - 0x037C2C 0D:BC1C: FF        .byte $FF   ; 52 
- - - - - - 0x037C2D 0D:BC1D: FF        .byte $FF   ; 53 
- - - - - - 0x037C2E 0D:BC1E: FF        .byte $FF   ; 54 
- - - - - - 0x037C2F 0D:BC1F: FF        .byte $FF   ; 55 
- D 1 - - - 0x037C30 0D:BC20: 00        .byte $00   ; 56 
- - - - - - 0x037C31 0D:BC21: FF        .byte $FF   ; 57 
- - - - - - 0x037C32 0D:BC22: FF        .byte $FF   ; 58 
- - - - - - 0x037C33 0D:BC23: FF        .byte $FF   ; 59 
- - - - - - 0x037C34 0D:BC24: FF        .byte $FF   ; 5A 
- - - - - - 0x037C35 0D:BC25: FF        .byte $FF   ; 5B 
- - - - - - 0x037C36 0D:BC26: FF        .byte $FF   ; 5C 
- - - - - - 0x037C37 0D:BC27: 34        .byte $34   ; 5D 
- - - - - - 0x037C38 0D:BC28: FF        .byte $FF   ; 5E 
- - - - - - 0x037C39 0D:BC29: 34        .byte $34   ; 5F 
- - - - - - 0x037C3A 0D:BC2A: FF        .byte $FF   ; 60 
- - - - - - 0x037C3B 0D:BC2B: 34        .byte $34   ; 61 
- - - - - - 0x037C3C 0D:BC2C: FF        .byte $FF   ; 62 
- - - - - - 0x037C3D 0D:BC2D: 12        .byte $12   ; 63 
- - - - - - 0x037C3E 0D:BC2E: FF        .byte $FF   ; 64 
- - - - - - 0x037C3F 0D:BC2F: 12        .byte $12   ; 65 
- - - - - - 0x037C40 0D:BC30: FF        .byte $FF   ; 66 
- - - - - - 0x037C41 0D:BC31: FF        .byte $FF   ; 67 
- - - - - - 0x037C42 0D:BC32: 00        .byte $00   ; 68 
- - - - - - 0x037C43 0D:BC33: FF        .byte $FF   ; 69 
- - - - - - 0x037C44 0D:BC34: 12        .byte $12   ; 6A 
- - - - - - 0x037C45 0D:BC35: 12        .byte $12   ; 6B 
- - - - - - 0x037C46 0D:BC36: 12        .byte $12   ; 6C 
- - - - - - 0x037C47 0D:BC37: 12        .byte $12   ; 6D 
- - - - - - 0x037C48 0D:BC38: 12        .byte $12   ; 6E 
- - - - - - 0x037C49 0D:BC39: 12        .byte $12   ; 6F 
- D 1 - - - 0x037C4A 0D:BC3A: 05        .byte $05   ; 70 
- - - - - - 0x037C4B 0D:BC3B: FF        .byte $FF   ; 71 
- - - - - - 0x037C4C 0D:BC3C: FF        .byte $FF   ; 72 
- D 1 - - - 0x037C4D 0D:BC3D: 12        .byte $12   ; 73 
- - - - - - 0x037C4E 0D:BC3E: FF        .byte $FF   ; 74 
- - - - - - 0x037C4F 0D:BC3F: 12        .byte $12   ; 75 
- - - - - - 0x037C50 0D:BC40: FF        .byte $FF   ; 76 
- - - - - - 0x037C51 0D:BC41: FF        .byte $FF   ; 77 
- - - - - - 0x037C52 0D:BC42: FF        .byte $FF   ; 78 
- - - - - - 0x037C53 0D:BC43: 50        .byte $50   ; 79 
- - - - - - 0x037C54 0D:BC44: FF        .byte $FF   ; 7A 
- - - - - - 0x037C55 0D:BC45: FF        .byte $FF   ; 7B 
- - - - - - 0x037C56 0D:BC46: FF        .byte $FF   ; 7C 
- - - - - - 0x037C57 0D:BC47: FF        .byte $FF   ; 7D 
- - - - - - 0x037C58 0D:BC48: FF        .byte $FF   ; 7E 
- - - - - - 0x037C59 0D:BC49: FF        .byte $FF   ; 7F 
- - - - - - 0x037C5A 0D:BC4A: FF        .byte $FF   ; 80 
- - - - - - 0x037C5B 0D:BC4B: FF        .byte $FF   ; 81 
- - - - - - 0x037C5C 0D:BC4C: FF        .byte $FF   ; 82 
- - - - - - 0x037C5D 0D:BC4D: FF        .byte $FF   ; 83 
- - - - - - 0x037C5E 0D:BC4E: 00        .byte $00   ; 84 
- - - - - - 0x037C5F 0D:BC4F: FF        .byte $FF   ; 85 
- D 1 - - - 0x037C60 0D:BC50: 12        .byte $12   ; 86 
- - - - - - 0x037C61 0D:BC51: FF        .byte $FF   ; 87 
- D 1 - - - 0x037C62 0D:BC52: 34        .byte $34   ; 88 
- - - - - - 0x037C63 0D:BC53: FF        .byte $FF   ; 89 
- - - - - - 0x037C64 0D:BC54: 12        .byte $12   ; 8A 
- - - - - - 0x037C65 0D:BC55: FF        .byte $FF   ; 8B 
- D 1 - - - 0x037C66 0D:BC56: 00        .byte $00   ; 8C 
- - - - - - 0x037C67 0D:BC57: FF        .byte $FF   ; 8D 
- - - - - - 0x037C68 0D:BC58: FF        .byte $FF   ; 8E 
- - - - - - 0x037C69 0D:BC59: FF        .byte $FF   ; 8F 
- - - - - - 0x037C6A 0D:BC5A: FF        .byte $FF   ; 90 
- - - - - - 0x037C6B 0D:BC5B: FF        .byte $FF   ; 91 
- D 1 - - - 0x037C6C 0D:BC5C: 56        .byte $56   ; 92 
- D 1 - - - 0x037C6D 0D:BC5D: 78        .byte $78   ; 93 
- D 1 - - - 0x037C6E 0D:BC5E: 56        .byte $56   ; 94 
- - - - - - 0x037C6F 0D:BC5F: FF        .byte $FF   ; 95 
- - - - - - 0x037C70 0D:BC60: FF        .byte $FF   ; 96 
- - - - - - 0x037C71 0D:BC61: FF        .byte $FF   ; 97 
- - - - - - 0x037C72 0D:BC62: FF        .byte $FF   ; 98 
- - - - - - 0x037C73 0D:BC63: FF        .byte $FF   ; 99 
- - - - - - 0x037C74 0D:BC64: FF        .byte $FF   ; 9A 
- - - - - - 0x037C75 0D:BC65: FF        .byte $FF   ; 9B 
- - - - - - 0x037C76 0D:BC66: FF        .byte $FF   ; 9C 
- - - - - - 0x037C77 0D:BC67: 56        .byte $56   ; 9D 
- - - - - - 0x037C78 0D:BC68: FF        .byte $FF   ; 9E 
- - - - - - 0x037C79 0D:BC69: FF        .byte $FF   ; 9F 
- - - - - - 0x037C7A 0D:BC6A: FF        .byte $FF   ; A0 
- D 1 - - - 0x037C7B 0D:BC6B: 9A        .byte $9A   ; A1 
- - - - - - 0x037C7C 0D:BC6C: FF        .byte $FF   ; A2 
- - - - - - 0x037C7D 0D:BC6D: FF        .byte $FF   ; A3 
- - - - - - 0x037C7E 0D:BC6E: FF        .byte $FF   ; A4 
- - - - - - 0x037C7F 0D:BC6F: FF        .byte $FF   ; A5 
- - - - - - 0x037C80 0D:BC70: FF        .byte $FF   ; A6 
- - - - - - 0x037C81 0D:BC71: FF        .byte $FF   ; A7 
- - - - - - 0x037C82 0D:BC72: FF        .byte $FF   ; A8 
- - - - - - 0x037C83 0D:BC73: FF        .byte $FF   ; A9 
- - - - - - 0x037C84 0D:BC74: FF        .byte $FF   ; AA 
- - - - - - 0x037C85 0D:BC75: FF        .byte $FF   ; AB 
- - - - - - 0x037C86 0D:BC76: FF        .byte $FF   ; AC 
- D 1 - - - 0x037C87 0D:BC77: BC        .byte $BC   ; AD 
- - - - - - 0x037C88 0D:BC78: BC        .byte $BC   ; AE 
- - - - - - 0x037C89 0D:BC79: FF        .byte $FF   ; AF 
- - - - - - 0x037C8A 0D:BC7A: FF        .byte $FF   ; B0 
- - - - - - 0x037C8B 0D:BC7B: FF        .byte $FF   ; B1 
- - - - - - 0x037C8C 0D:BC7C: DC        .byte $DC   ; B2 
- - - - - - 0x037C8D 0D:BC7D: BC        .byte $BC   ; B3 
- - - - - - 0x037C8E 0D:BC7E: FC        .byte $FC   ; B4 
- - - - - - 0x037C8F 0D:BC7F: FF        .byte $FF   ; B5 
- D 1 - - - 0x037C90 0D:BC80: BC        .byte $BC   ; B6 
- - - - - - 0x037C91 0D:BC81: FF        .byte $FF   ; B7 
- - - - - - 0x037C92 0D:BC82: FF        .byte $FF   ; B8 
- - - - - - 0x037C93 0D:BC83: DC        .byte $DC   ; B9 
- - - - - - 0x037C94 0D:BC84: EC        .byte $EC   ; BA 
- - - - - - 0x037C95 0D:BC85: BC        .byte $BC   ; BB 
- - - - - - 0x037C96 0D:BC86: BC        .byte $BC   ; BC 
- - - - - - 0x037C97 0D:BC87: BC        .byte $BC   ; BD 
- - - - - - 0x037C98 0D:BC88: FF        .byte $FF   ; BE 
- - - - - - 0x037C99 0D:BC89: FF        .byte $FF   ; BF 
- D 1 - - - 0x037C9A 0D:BC8A: 23        .byte $23   ; C0 
- D 1 - - - 0x037C9B 0D:BC8B: 11        .byte $11   ; C1 
- - - - - - 0x037C9C 0D:BC8C: 23        .byte $23   ; C2 
- D 1 - - - 0x037C9D 0D:BC8D: DE        .byte $DE   ; C3 
- - - - - - 0x037C9E 0D:BC8E: 11        .byte $11   ; C4 
- - - - - - 0x037C9F 0D:BC8F: 23        .byte $23   ; C5 
- - - - - - 0x037CA0 0D:BC90: 11        .byte $11   ; C6 
- - - - - - 0x037CA1 0D:BC91: FF        .byte $FF   ; C7 
- - - - - - 0x037CA2 0D:BC92: FF        .byte $FF   ; C8 
- D 1 - - - 0x037CA3 0D:BC93: 11        .byte $11   ; C9 
- - - - - - 0x037CA4 0D:BC94: 23        .byte $23   ; CA 
- D 1 - - - 0x037CA5 0D:BC95: 11        .byte $11   ; CB 
- - - - - - 0x037CA6 0D:BC96: 11        .byte $11   ; CC 
- D 1 - - - 0x037CA7 0D:BC97: 23        .byte $23   ; CD 
- - - - - - 0x037CA8 0D:BC98: FF        .byte $FF   ; CE 
- - - - - - 0x037CA9 0D:BC99: FF        .byte $FF   ; CF 
- - - - - - 0x037CAA 0D:BC9A: FF        .byte $FF   ; D0 
- - - - - - 0x037CAB 0D:BC9B: FF        .byte $FF   ; D1 
- - - - - - 0x037CAC 0D:BC9C: FF        .byte $FF   ; D2 
- - - - - - 0x037CAD 0D:BC9D: FF        .byte $FF   ; D3 
- - - - - - 0x037CAE 0D:BC9E: FF        .byte $FF   ; D4 
- - - - - - 0x037CAF 0D:BC9F: FB        .byte $FB   ; D5 
- - - - - - 0x037CB0 0D:BCA0: FF        .byte $FF   ; D6 
- - - - - - 0x037CB1 0D:BCA1: FF        .byte $FF   ; D7 
- - - - - - 0x037CB2 0D:BCA2: 01        .byte $01   ; D8 
- - - - - - 0x037CB3 0D:BCA3: 12        .byte $12   ; D9 
- - - - - - 0x037CB4 0D:BCA4: FF        .byte $FF   ; DA 
- - - - - - 0x037CB5 0D:BCA5: FF        .byte $FF   ; DB 
- - - - - - 0x037CB6 0D:BCA6: 34        .byte $34   ; DC 
- - - - - - 0x037CB7 0D:BCA7: FF        .byte $FF   ; DD 
- - - - - - 0x037CB8 0D:BCA8: 34        .byte $34   ; DE 
- - - - - - 0x037CB9 0D:BCA9: 56        .byte $56   ; DF 
- - - - - - 0x037CBA 0D:BCAA: 01        .byte $01   ; E0 
- - - - - - 0x037CBB 0D:BCAB: FF        .byte $FF   ; E1 
- - - - - - 0x037CBC 0D:BCAC: FF        .byte $FF   ; E2 
- - - - - - 0x037CBD 0D:BCAD: FF        .byte $FF   ; E3 
- - - - - - 0x037CBE 0D:BCAE: FF        .byte $FF   ; E4 
- - - - - - 0x037CBF 0D:BCAF: 78        .byte $78   ; E5 
- - - - - - 0x037CC0 0D:BCB0: 34        .byte $34   ; E6 
- - - - - - 0x037CC1 0D:BCB1: 9A        .byte $9A   ; E7 
- - - - - - 0x037CC2 0D:BCB2: FF        .byte $FF   ; E8 
- - - - - - 0x037CC3 0D:BCB3: FF        .byte $FF   ; E9 
- - - - - - 0x037CC4 0D:BCB4: 00        .byte $00   ; EA 
- D 1 - - - 0x037CC5 0D:BCB5: 00        .byte $00   ; EB 
- - - - - - 0x037CC6 0D:BCB6: 00        .byte $00   ; EC 
- - - - - - 0x037CC7 0D:BCB7: FF        .byte $FF   ; ED 
- - - - - - 0x037CC8 0D:BCB8: FF        .byte $FF   ; EE 
- - - - - - 0x037CC9 0D:BCB9: FF        .byte $FF   ; EF 
- - - - - - 0x037CCA 0D:BCBA: 00        .byte $00   ; F0 
- - - - - - 0x037CCB 0D:BCBB: 00        .byte $00   ; F1 
- - - - - - 0x037CCC 0D:BCBC: FF        .byte $FF   ; F2 
- D 1 - - - 0x037CCD 0D:BCBD: 00        .byte $00   ; F3 
- - - - - - 0x037CCE 0D:BCBE: FF        .byte $FF   ; F4 
- - - - - - 0x037CCF 0D:BCBF: FF        .byte $FF   ; F5 
- - - - - - 0x037CD0 0D:BCC0: FF        .byte $FF   ; F6 
- - - - - - 0x037CD1 0D:BCC1: FF        .byte $FF   ; F7 



tbl_BCC2:
- - - - - - 0x037CD2 0D:BCC2: E0 BC     .word _off040_BCE0_00_Warakiya
- - - - - - 0x037CD4 0D:BCC4: E0 BC     .word _off040_BCE0_01_Clock_Tower
- - - - - - 0x037CD6 0D:BCC6: E0 BC     .word _off040_BCE0_02_Forest_of_Madness
- D 1 - - - 0x037CD8 0D:BCC8: E0 BC     .word _off040_BCE0_03_Ship_of_Fools
- - - - - - 0x037CDA 0D:BCCA: E0 BC     .word _off040_BCE0_04_Tower_of_Terror
- - - - - - 0x037CDC 0D:BCCC: E0 BC     .word _off040_BCE0_05_Causeway
- - - - - - 0x037CDE 0D:BCCE: E0 BC     .word _off040_BCE0_06_Murky_Marshes
- D 1 - - - 0x037CE0 0D:BCD0: EF BC     .word _off040_BCEF_07_Caves_of_Alucard
- D 1 - - - 0x037CE2 0D:BCD2: 03 BD     .word _off040_BD03_08_Sunken_City
- - - - - - 0x037CE4 0D:BCD4: E0 BC     .word _off040_BCE0_09_Catacombs
- D 1 - - - 0x037CE6 0D:BCD6: 21 BD     .word _off040_BD21_0A_Mountain_Range
- D 1 - - - 0x037CE8 0D:BCD8: 67 BD     .word _off040_BD67_0B_Castle_Courtyard
- - - - - - 0x037CEA 0D:BCDA: E0 BC     .word _off040_BCE0_0C_Main_Hall
- - - - - - 0x037CEC 0D:BCDC: E0 BC     .word _off040_BCE0_0D_Castle_Tower
- D 1 - - - 0x037CEE 0D:BCDE: 80 BD     .word _off040_BD80_0E_Final_Clock_Tower



_off040_BCE0_00_Warakiya:
_off040_BCE0_01_Clock_Tower:
_off040_BCE0_02_Forest_of_Madness:
_off040_BCE0_03_Ship_of_Fools:
_off040_BCE0_04_Tower_of_Terror:
_off040_BCE0_05_Causeway:
_off040_BCE0_06_Murky_Marshes:
_off040_BCE0_09_Catacombs:
_off040_BCE0_0C_Main_Hall:
_off040_BCE0_0D_Castle_Tower:
; first 4 bytes are 2x2 tile blocks, 5th byte is nametable attribute
; 00 
- D 1 - I - 0x037CF0 0D:BCE0: 00        .byte $00, $00   ; 
- D 1 - I - 0x037CF2 0D:BCE2: 00        .byte $00, $00   ; 
- D 1 - I - 0x037CF4 0D:BCE4: 00        .byte $00   ; 
; 01 
- - - - - - 0x037CF5 0D:BCE5: 7C        .byte $7C, $3E   ; 
- - - - - - 0x037CF7 0D:BCE7: 7C        .byte $7C, $3E   ; 
- - - - - - 0x037CF9 0D:BCE9: 55        .byte $55   ; 
; 02 
- - - - - - 0x037CFA 0D:BCEA: 7F        .byte $7F, $00   ; 
- - - - - - 0x037CFC 0D:BCEC: 7E        .byte $7E, $00   ; 
- - - - - - 0x037CFE 0D:BCEE: 55        .byte $55   ; 



_off040_BCEF_07_Caves_of_Alucard:
; 00 
- D 1 - I - 0x037CFF 0D:BCEF: 00        .byte $00, $00   ; 
- D 1 - I - 0x037D01 0D:BCF1: 00        .byte $00, $00   ; 
- D 1 - I - 0x037D03 0D:BCF3: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x037D04 0D:BCF4: 80        .byte $80, $81   ; 
- D 1 - I - 0x037D06 0D:BCF6: 94        .byte $94, $91   ; 
- D 1 - I - 0x037D08 0D:BCF8: AA        .byte $AA   ; 
; 02 
- - - - - - 0x037D09 0D:BCF9: A0        .byte $A0, $A1   ; 
- - - - - - 0x037D0B 0D:BCFB: B0        .byte $B0, $B1   ; 
- - - - - - 0x037D0D 0D:BCFD: AA        .byte $AA   ; 
; 03 
- D 1 - I - 0x037D0E 0D:BCFE: 77        .byte $77, $00   ; 
- D 1 - I - 0x037D10 0D:BD00: 84        .byte $84, $95   ; 
- D 1 - I - 0x037D12 0D:BD02: AA        .byte $AA   ; 



_off040_BD03_08_Sunken_City:
; 00 
- - - - - - 0x037D13 0D:BD03: 00        .byte $00, $00   ; 
- - - - - - 0x037D15 0D:BD05: 00        .byte $00, $00   ; 
- - - - - - 0x037D17 0D:BD07: 00        .byte $00   ; 
; 01 
- - - - - - 0x037D18 0D:BD08: 00        .byte $00, $00   ; 
- - - - - - 0x037D1A 0D:BD0A: 84        .byte $84, $85   ; 
- - - - - - 0x037D1C 0D:BD0C: AA        .byte $AA   ; 
; 02 
- D 1 - I - 0x037D1D 0D:BD0D: AC        .byte $AC, $00   ; 
- D 1 - I - 0x037D1F 0D:BD0F: B4        .byte $B4, $AC   ; 
- D 1 - I - 0x037D21 0D:BD11: FF        .byte $FF   ; 
; 03 
- - - - - - 0x037D22 0D:BD12: 84        .byte $84, $85   ; 
- - - - - - 0x037D24 0D:BD14: 94        .byte $94, $95   ; 
- - - - - - 0x037D26 0D:BD16: AA        .byte $AA   ; 
; 04 
- - - - - - 0x037D27 0D:BD17: 86        .byte $86, $3F   ; 
- - - - - - 0x037D29 0D:BD19: 96        .byte $96, $AC   ; 
- - - - - - 0x037D2B 0D:BD1B: FF        .byte $FF   ; 
; 05 
- D 1 - I - 0x037D2C 0D:BD1C: 00        .byte $00, $AC   ; 
- D 1 - I - 0x037D2E 0D:BD1E: AC        .byte $AC, $00   ; 
- D 1 - I - 0x037D30 0D:BD20: FF        .byte $FF   ; 



_off040_BD21_0A_Mountain_Range:
; 00 
- D 1 - I - 0x037D31 0D:BD21: 00        .byte $00, $00   ; 
- D 1 - I - 0x037D33 0D:BD23: 00        .byte $00, $00   ; 
- D 1 - I - 0x037D35 0D:BD25: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x037D36 0D:BD26: 4D        .byte $4D, $4C   ; 
- D 1 - I - 0x037D38 0D:BD28: 5D        .byte $5D, $5F   ; 
- D 1 - I - 0x037D3A 0D:BD2A: FF        .byte $FF   ; 
; 02 
- D 1 - I - 0x037D3B 0D:BD2B: 00        .byte $00, $00   ; 
- D 1 - I - 0x037D3D 0D:BD2D: 5E        .byte $5E, $00   ; 
- D 1 - I - 0x037D3F 0D:BD2F: FF        .byte $FF   ; 
; 03 
- - - - - - 0x037D40 0D:BD30: 5D        .byte $5D, $5F   ; 
- - - - - - 0x037D42 0D:BD32: 4C        .byte $4C, $4F   ; 
- - - - - - 0x037D44 0D:BD34: FF        .byte $FF   ; 
; 04 
- D 1 - I - 0x037D45 0D:BD35: 4F        .byte $4F, $4C   ; 
- D 1 - I - 0x037D47 0D:BD37: 5F        .byte $5F, $5D   ; 
- D 1 - I - 0x037D49 0D:BD39: FF        .byte $FF   ; 
; 05 
- D 1 - I - 0x037D4A 0D:BD3A: 5D        .byte $5D, $00   ; 
- D 1 - I - 0x037D4C 0D:BD3C: 00        .byte $00, $4D   ; 
- D 1 - I - 0x037D4E 0D:BD3E: 55        .byte $55   ; 
; 06 
- D 1 - I - 0x037D4F 0D:BD3F: 5D        .byte $5D, $00   ; 
- D 1 - I - 0x037D51 0D:BD41: 4C        .byte $4C, $5C   ; 
- D 1 - I - 0x037D53 0D:BD43: 55        .byte $55   ; 
; 07 
- - - - - - 0x037D54 0D:BD44: 4D        .byte $4D, $4C   ; 
- - - - - - 0x037D56 0D:BD46: 5D        .byte $5D, $5F   ; 
- - - - - - 0x037D58 0D:BD48: 55        .byte $55   ; 
; 08 
- D 1 - I - 0x037D59 0D:BD49: 4F        .byte $4F, $5F   ; 
- D 1 - I - 0x037D5B 0D:BD4B: 5E        .byte $5E, $5D   ; 
- D 1 - I - 0x037D5D 0D:BD4D: 55        .byte $55   ; 
; 09 
- - - - - - 0x037D5E 0D:BD4E: 6B        .byte $6B, $88   ; 
- - - - - - 0x037D60 0D:BD50: 7C        .byte $7C, $6A   ; 
- - - - - - 0x037D62 0D:BD52: 55        .byte $55   ; 
; 0A 
- D 1 - I - 0x037D63 0D:BD53: 7E        .byte $7E, $7F   ; 
- D 1 - I - 0x037D65 0D:BD55: 89        .byte $89, $7E   ; 
- D 1 - I - 0x037D67 0D:BD57: 55        .byte $55   ; 
; 0B 
- D 1 - I - 0x037D68 0D:BD58: 80        .byte $80, $81   ; 
- D 1 - I - 0x037D6A 0D:BD5A: 90        .byte $90, $91   ; 
- D 1 - I - 0x037D6C 0D:BD5C: AA        .byte $AA   ; 
; 0C 
- D 1 - I - 0x037D6D 0D:BD5D: 81        .byte $81, $82   ; 
- D 1 - I - 0x037D6F 0D:BD5F: 91        .byte $91, $92   ; 
- D 1 - I - 0x037D71 0D:BD61: AA        .byte $AA   ; 
; 0D 
- - - - - - 0x037D72 0D:BD62: 80        .byte $80, $81   ; 
- - - - - - 0x037D74 0D:BD64: 84        .byte $84, $91   ; 
- - - - - - 0x037D76 0D:BD66: AA        .byte $AA   ; 



_off040_BD67_0B_Castle_Courtyard:
; 00 
- - - - - - 0x037D77 0D:BD67: 00        .byte $00, $00   ; 
- - - - - - 0x037D79 0D:BD69: 00        .byte $00, $00   ; 
- - - - - - 0x037D7B 0D:BD6B: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x037D7C 0D:BD6C: 40        .byte $40, $41   ; 
- D 1 - I - 0x037D7E 0D:BD6E: 50        .byte $50, $51   ; 
- D 1 - I - 0x037D80 0D:BD70: 55        .byte $55   ; 
; 02 
- D 1 - I - 0x037D81 0D:BD71: 84        .byte $84, $85   ; 
- D 1 - I - 0x037D83 0D:BD73: 94        .byte $94, $95   ; 
- D 1 - I - 0x037D85 0D:BD75: 55        .byte $55   ; 
; 03 
- D 1 - I - 0x037D86 0D:BD76: 86        .byte $86, $87   ; 
- D 1 - I - 0x037D88 0D:BD78: 96        .byte $96, $97   ; 
- D 1 - I - 0x037D8A 0D:BD7A: 55        .byte $55   ; 
; 04 
- - - - - - 0x037D8B 0D:BD7B: 49        .byte $49, $49   ; 
- - - - - - 0x037D8D 0D:BD7D: 48        .byte $48, $48   ; 
- - - - - - 0x037D8F 0D:BD7F: 55        .byte $55   ; 



_off040_BD80_0E_Final_Clock_Tower:
; 00 
- D 1 - I - 0x037D90 0D:BD80: 00        .byte $00, $00   ; 
- D 1 - I - 0x037D92 0D:BD82: 00        .byte $00, $00   ; 
- D 1 - I - 0x037D94 0D:BD84: 00        .byte $00   ; 
; 01 
- - - - - - 0x037D95 0D:BD85: 00        .byte $00, $4C   ; 
- - - - - - 0x037D97 0D:BD87: 00        .byte $00, $4C   ; 
- - - - - - 0x037D99 0D:BD89: AA        .byte $AA   ; 
; 02 
- - - - - - 0x037D9A 0D:BD8A: 4F        .byte $4F, $00   ; 
- - - - - - 0x037D9C 0D:BD8C: 4F        .byte $4F, $00   ; 
- - - - - - 0x037D9E 0D:BD8E: AA        .byte $AA   ; 
; 03 
- - - - - - 0x037D9F 0D:BD8F: A8        .byte $A8, $A9   ; 
- - - - - - 0x037DA1 0D:BD91: 92        .byte $92, $B0   ; 
- - - - - - 0x037DA3 0D:BD93: FF        .byte $FF   ; 
; 04 
- - - - - - 0x037DA4 0D:BD94: 96        .byte $96, $00   ; 
- - - - - - 0x037DA6 0D:BD96: A6        .byte $A6, $00   ; 
- - - - - - 0x037DA8 0D:BD98: FF        .byte $FF   ; 
; 05 
- - - - - - 0x037DA9 0D:BD99: 00        .byte $00, $A3   ; 
- - - - - - 0x037DAB 0D:BD9B: 00        .byte $00, $91   ; 
- - - - - - 0x037DAD 0D:BD9D: 55        .byte $55   ; 
; 06 
- - - - - - 0x037DAE 0D:BD9E: B7        .byte $B7, $00   ; 
- - - - - - 0x037DB0 0D:BDA0: 3E        .byte $3E, $00   ; 
- - - - - - 0x037DB2 0D:BDA2: 55        .byte $55   ; 
; 07 
- - - - - - 0x037DB3 0D:BDA3: 00        .byte $00, $00   ; 
- - - - - - 0x037DB5 0D:BDA5: 9B        .byte $9B, $AA   ; 
- - - - - - 0x037DB7 0D:BDA7: FF        .byte $FF   ; 
; 08 
- - - - - - 0x037DB8 0D:BDA8: 8E        .byte $8E, $9C   ; 
- - - - - - 0x037DBA 0D:BDAA: AB        .byte $AB, $9C   ; 
- - - - - - 0x037DBC 0D:BDAC: FF        .byte $FF   ; 
; 09 
- - - - - - 0x037DBD 0D:BDAD: 9C        .byte $9C, $28   ; 
- - - - - - 0x037DBF 0D:BDAF: 9B        .byte $9B, $39   ; 
- - - - - - 0x037DC1 0D:BDB1: FF        .byte $FF   ; 
; 0A 
- - - - - - 0x037DC2 0D:BDB2: 00        .byte $00, $AA   ; 
- - - - - - 0x037DC4 0D:BDB4: 8F        .byte $8F, $28   ; 
- - - - - - 0x037DC6 0D:BDB6: FF        .byte $FF   ; 
; 0B 
- - - - - - 0x037DC7 0D:BDB7: 3E        .byte $3E, $00   ; 
- - - - - - 0x037DC9 0D:BDB9: 3E        .byte $3E, $00   ; 
- - - - - - 0x037DCB 0D:BDBB: 55        .byte $55   ; 



sub_0x037DCC:
C - - - - - 0x037DCC 0D:BDBC: A9 01     LDA #$01
C - - - - - 0x037DCE 0D:BDBE: 20 14 ED  JSR sub_0x03ED24_write_byte_to_buffer___unk_index
C - - - - - 0x037DD1 0D:BDC1: A9 00     LDA #< $2300
C - - - - - 0x037DD3 0D:BDC3: 20 14 ED  JSR sub_0x03ED24_write_byte_to_buffer___unk_index
C - - - - - 0x037DD6 0D:BDC6: A9 23     LDA #> $2300
C - - - - - 0x037DD8 0D:BDC8: 20 14 ED  JSR sub_0x03ED24_write_byte_to_buffer___unk_index
C - - - - - 0x037DDB 0D:BDCB: A9 BC     LDA #$BC
C - - - - - 0x037DDD 0D:BDCD: 85 03     STA ram_0003_t005
C - - - - - 0x037DDF 0D:BDCF: A0 00     LDY #$00
loc_BDD1_loop:
bra_BDD1_loop:
C D 1 - - - 0x037DE1 0D:BDD1: A5 03     LDA ram_0003_t005
C - - - - - 0x037DE3 0D:BDD3: 20 14 ED  JSR sub_0x03ED24_write_byte_to_buffer___unk_index
C - - - - - 0x037DE6 0D:BDD6: 18        CLC
C - - - - - 0x037DE7 0D:BDD7: 69 02     ADC #$02
C - - - - - 0x037DE9 0D:BDD9: 20 14 ED  JSR sub_0x03ED24_write_byte_to_buffer___unk_index
C - - - - - 0x037DEC 0D:BDDC: C8        INY
C - - - - - 0x037DED 0D:BDDD: C0 20     CPY #$20
C - - - - - 0x037DEF 0D:BDDF: B0 0B     BCS bra_BDEC
C - - - - - 0x037DF1 0D:BDE1: C0 10     CPY #$10
C - - - - - 0x037DF3 0D:BDE3: D0 EC     BNE bra_BDD1_loop
C - - - - - 0x037DF5 0D:BDE5: A9 BD     LDA #$BD
C - - - - - 0x037DF7 0D:BDE7: 85 03     STA ram_0003_t005
; bzk optimize, BNE
C - - - - - 0x037DF9 0D:BDE9: 4C D1 BD  JMP loc_BDD1_loop
bra_BDEC:
C - - - - - 0x037DFC 0D:BDEC: 4C 12 ED  JMP loc_0x03ED22_close_buffer



sub_0x037DFF:
C - - - - - 0x037DFF 0D:BDEF: AD F0 07  LDA ram_07F0
C - - - - - 0x037E02 0D:BDF2: 30 0A     BMI bra_BDFE
C - - - - - 0x037E04 0D:BDF4: 09 80     ORA #$80
C - - - - - 0x037E06 0D:BDF6: 8D F0 07  STA ram_07F0
C - - - - - 0x037E09 0D:BDF9: A9 00     LDA #$00
C - - - - - 0x037E0B 0D:BDFB: 8D F1 07  STA ram_07F1
bra_BDFE:
C - - - - - 0x037E0E 0D:BDFE: AD F0 07  LDA ram_07F0
C - - - - - 0x037E11 0D:BE01: 0A        ASL
C - - - - - 0x037E12 0D:BE02: A8        TAY
C - - - - - 0x037E13 0D:BE03: A9 00     LDA #$00
C - - - - - 0x037E15 0D:BE05: 85 01     STA ram_0001_t02F_ppu_addr_hi
C - - - - - 0x037E17 0D:BE07: AD F1 07  LDA ram_07F1
; * 20
C - - - - - 0x037E1A 0D:BE0A: 0A        ASL
C - - - - - 0x037E1B 0D:BE0B: 26 01     ROL ram_0001_t02F_ppu_addr_hi
C - - - - - 0x037E1D 0D:BE0D: 0A        ASL
C - - - - - 0x037E1E 0D:BE0E: 26 01     ROL ram_0001_t02F_ppu_addr_hi
C - - - - - 0x037E20 0D:BE10: 0A        ASL
C - - - - - 0x037E21 0D:BE11: 26 01     ROL ram_0001_t02F_ppu_addr_hi
C - - - - - 0x037E23 0D:BE13: 0A        ASL
C - - - - - 0x037E24 0D:BE14: 26 01     ROL ram_0001_t02F_ppu_addr_hi
C - - - - - 0x037E26 0D:BE16: 0A        ASL
C - - - - - 0x037E27 0D:BE17: 26 01     ROL ram_0001_t02F_ppu_addr_hi
C - - - - - 0x037E29 0D:BE19: 85 00     STA ram_0000_t050_ppu_addr_lo
C - - - - - 0x037E2B 0D:BE1B: 18        CLC
C - - - - - 0x037E2C 0D:BE1C: B9 5D BE  LDA tbl_BE5D_ppu_address,Y
C - - - - - 0x037E2F 0D:BE1F: 65 00     ADC ram_0000_t050_ppu_addr_lo
C - - - - - 0x037E31 0D:BE21: 85 00     STA ram_0000_t050_ppu_addr_lo
C - - - - - 0x037E33 0D:BE23: B9 5E BE  LDA tbl_BE5D_ppu_address + $01,Y
C - - - - - 0x037E36 0D:BE26: 65 01     ADC ram_0001_t02F_ppu_addr_hi
C - - - - - 0x037E38 0D:BE28: 85 01     STA ram_0001_t02F_ppu_addr_hi
C - - - - - 0x037E3A 0D:BE2A: A9 01     LDA #$01
C - - - - - 0x037E3C 0D:BE2C: 20 14 ED  JSR sub_0x03ED24_write_byte_to_buffer___unk_index
C - - - - - 0x037E3F 0D:BE2F: A5 00     LDA ram_0000_t050_ppu_addr_lo
C - - - - - 0x037E41 0D:BE31: 20 14 ED  JSR sub_0x03ED24_write_byte_to_buffer___unk_index
C - - - - - 0x037E44 0D:BE34: A5 01     LDA ram_0001_t02F_ppu_addr_hi
C - - - - - 0x037E46 0D:BE36: 20 14 ED  JSR sub_0x03ED24_write_byte_to_buffer___unk_index
C - - - - - 0x037E49 0D:BE39: A0 20     LDY #$20
C - - - - - 0x037E4B 0D:BE3B: A9 00     LDA #$00
bra_BE3D_loop:
C - - - - - 0x037E4D 0D:BE3D: 20 14 ED  JSR sub_0x03ED24_write_byte_to_buffer___unk_index
C - - - - - 0x037E50 0D:BE40: 88        DEY
C - - - - - 0x037E51 0D:BE41: D0 FA     BNE bra_BE3D_loop
C - - - - - 0x037E53 0D:BE43: 20 12 ED  JSR sub_0x03ED22_close_buffer
C - - - - - 0x037E56 0D:BE46: AD F0 07  LDA ram_07F0
C - - - - - 0x037E59 0D:BE49: 29 7F     AND #$7F
C - - - - - 0x037E5B 0D:BE4B: A8        TAY
C - - - - - 0x037E5C 0D:BE4C: EE F1 07  INC ram_07F1
C - - - - - 0x037E5F 0D:BE4F: AD F1 07  LDA ram_07F1
C - - - - - 0x037E62 0D:BE52: D9 61 BE  CMP tbl_BE61,Y
C - - - - - 0x037E65 0D:BE55: 90 05     BCC bra_BE5C_RTS
C - - - - - 0x037E67 0D:BE57: A9 FF     LDA #$FF
C - - - - - 0x037E69 0D:BE59: 8D F1 07  STA ram_07F1
bra_BE5C_RTS:
C - - - - - 0x037E6C 0D:BE5C: 60        RTS



tbl_BE5D_ppu_address:
- D 1 - - - 0x037E6D 0D:BE5D: C0 20     .word $20C0 ; 00 
- D 1 - - - 0x037E6F 0D:BE5F: 00 24     .word $2400 ; 01 



tbl_BE61:
- D 1 - - - 0x037E71 0D:BE61: 1E        .byte $1E   ; 00 
- D 1 - - - 0x037E72 0D:BE62: 20        .byte $20   ; 01 


; bzk garbage
- - - - - - 0x037E73 0D:BE63: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x037E80 0D:BE70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x037E90 0D:BE80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x037EA0 0D:BE90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x037EB0 0D:BEA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x037EC0 0D:BEB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x037ED0 0D:BEC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x037EE0 0D:BED0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x037EF0 0D:BEE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x037F00 0D:BEF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x037F10 0D:BF00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x037F20 0D:BF10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x037F30 0D:BF20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x037F40 0D:BF30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x037F50 0D:BF40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x037F60 0D:BF50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x037F70 0D:BF60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x037F80 0D:BF70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x037F90 0D:BF80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x037FA0 0D:BF90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x037FB0 0D:BFA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x037FC0 0D:BFB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x037FD0 0D:BFC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x037FE0 0D:BFD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x037FF0 0D:BFE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x038000 0D:BFF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



.out .sprintf("Free bytes in bank 9A: 0x%04X [%d]", ($C000 - *), ($C000 - *))



