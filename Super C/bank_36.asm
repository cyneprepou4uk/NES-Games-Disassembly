.segment "BANK_36"
.include "bank_ram.inc"
.include "bank_val.inc"
.org $8000 ; for listing file
; 0x00C010-0x01000F



.export loc_0x00C0CE_sprite_engine
.export ofs_044_0x00D3B9_00_area_1
.export ofs_044_0x00D4A2_01_area_2
.export ofs_044_0x00D557_02_area_3
.export ofs_044_0x00D610_03_area_4
.export ofs_044_0x00D703_04_area_5
.export ofs_044_0x00D82A_05_area_6
.export ofs_044_0x00D8F3_06_area_7
.export ofs_044_0x00D977_07_area_8
.export _off004_0x00DA87_03_area_4
.export _off005_0x00DAE4_03_area_4
.export _off006_0x00DFCA_03_area_4
.export _off007_0x00EACA_03_area_4
.export _off004_0x00EB7A_02_area_3
.export _off005_0x00EB92_02_area_3
.export _off006_0x00EFF4_02_area_3
.export _off007_0x00F804_02_area_3
.export loc_0x00F894_set_palette_for_area
.export loc_0x00F896_set_palette



; bzk this byte must be placed at 8000
- D 0 - - - 0x00C010 03:8000: 36        .byte con_prg_bank + $36   ; 



sub_8001_display_lives_with_sprites:
C - - - - - 0x00C011 03:8001: A5 87     LDA ram_game_over_flag
C - - - - - 0x00C013 03:8003: F0 48     BEQ bra_804D_RTS
C - - - - - 0x00C015 03:8005: A4 20     LDY ram_plr_counter
bra_8007_loop:
C - - - - - 0x00C017 03:8007: 84 02     STY ram_0002    ; player index
C - - - - - 0x00C019 03:8009: B9 CA 00  LDA ram_plr_game_over,Y
C - - - - - 0x00C01C 03:800C: A0 04     LDY #$04
C - - - - - 0x00C01E 03:800E: 05 1F     ORA ram_001F_flag
C - - - - - 0x00C020 03:8010: D0 0B     BNE bra_801D
C - - - - - 0x00C022 03:8012: A4 02     LDY ram_0002    ; player index
C - - - - - 0x00C024 03:8014: B9 53 00  LDA ram_plr_lives,Y
C - - - - - 0x00C027 03:8017: A0 00     LDY #$00
C - - - - - 0x00C029 03:8019: C9 04     CMP #$04
C - - - - - 0x00C02B 03:801B: 90 02     BCC bra_801F_not_overflow
bra_801D:
C - - - - - 0x00C02D 03:801D: A9 04     LDA #$04
bra_801F_not_overflow:
C - - - - - 0x00C02F 03:801F: 85 01     STA ram_0001
bra_8021_loop:
C - - - - - 0x00C031 03:8021: C6 01     DEC ram_0001
C - - - - - 0x00C033 03:8023: 30 23     BMI bra_8048
C - - - - - 0x00C035 03:8025: A9 10     LDA #$10
C - - - - - 0x00C037 03:8027: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x00C03A 03:802A: B9 4E 80  LDA tbl_804E_spr_T,Y
C - - - - - 0x00C03D 03:802D: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x00C040 03:8030: A5 02     LDA ram_0002    ; player index
C - - - - - 0x00C042 03:8032: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x00C045 03:8035: 4A        LSR
C - - - - - 0x00C046 03:8036: B9 56 80  LDA tbl_8056_spr_X,Y
C - - - - - 0x00C049 03:8039: 90 03     BCC bra_803E
C - - - - - 0x00C04B 03:803B: 69 AF     ADC #$AF
C - - - - - 0x00C04D 03:803D: 18        CLC
bra_803E:
C - - - - - 0x00C04E 03:803E: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x00C051 03:8041: 8A        TXA
C - - - - - 0x00C052 03:8042: 69 C4     ADC #$C4
C - - - - - 0x00C054 03:8044: AA        TAX
C - - - - - 0x00C055 03:8045: C8        INY
C - - - - - 0x00C056 03:8046: D0 D9     BNE bra_8021_loop
bra_8048:
C - - - - - 0x00C058 03:8048: A4 02     LDY ram_0002    ; player index
C - - - - - 0x00C05A 03:804A: 88        DEY
C - - - - - 0x00C05B 03:804B: 10 BA     BPL bra_8007_loop
bra_804D_RTS:
C - - - - - 0x00C05D 03:804D: 60        RTS



tbl_804E_spr_T:
- D 0 - - - 0x00C05E 03:804E: 8D        .byte $8D   ; 00 
- D 0 - - - 0x00C05F 03:804F: 8D        .byte $8D   ; 01 
- D 0 - - - 0x00C060 03:8050: 8D        .byte $8D   ; 02 
- D 0 - - - 0x00C061 03:8051: 8D        .byte $8D   ; 03 
- D 0 - - - 0x00C062 03:8052: 83        .byte $83   ; 04 
- D 0 - - - 0x00C063 03:8053: 85        .byte $85   ; 05 
- D 0 - - - 0x00C064 03:8054: 87        .byte $87   ; 06 
- D 0 - - - 0x00C065 03:8055: 89        .byte $89   ; 07 



tbl_8056_spr_X:
- D 0 - - - 0x00C066 03:8056: 10        .byte $10   ; 00 
- D 0 - - - 0x00C067 03:8057: 1C        .byte $1C   ; 01 
- D 0 - - - 0x00C068 03:8058: 28        .byte $28   ; 02 
- D 0 - - - 0x00C069 03:8059: 34        .byte $34   ; 03 
- D 0 - - - 0x00C06A 03:805A: 10        .byte $10   ; 04 
- D 0 - - - 0x00C06B 03:805B: 1C        .byte $1C   ; 05 
- D 0 - - - 0x00C06C 03:805C: 28        .byte $28   ; 06 
- D 0 - - - 0x00C06D 03:805D: 34        .byte $34   ; 07 



sub_805E_player_animation_sprite_data_handler:
C - - - - - 0x00C06E 03:805E: 0A        ASL
C - - - - - 0x00C06F 03:805F: A8        TAY
C - - - - - 0x00C070 03:8060: B9 2F 8F  LDA tbl_8F31 - $02,Y
C - - - - - 0x00C073 03:8063: 85 08     STA ram_0008
C - - - - - 0x00C075 03:8065: B9 30 8F  LDA tbl_8F31 - $02 + $01,Y
C - - - - - 0x00C078 03:8068: 85 09     STA ram_0009
C - - - - - 0x00C07A 03:806A: A0 00     LDY #$00
C - - - - - 0x00C07C 03:806C: B1 08     LDA (ram_0008),Y
C - - - - - 0x00C07E 03:806E: 85 03     STA ram_0003    ; counter
C - - - - - 0x00C080 03:8070: C8        INY
bra_8071_loop:
C - - - - - 0x00C081 03:8071: B1 08     LDA (ram_0008),Y
C - - - - - 0x00C083 03:8073: C9 80     CMP #$80
C - - - - - 0x00C085 03:8075: D0 12     BNE bra_8089_not_jump
; 80 jump control byte
C - - - - - 0x00C087 03:8077: C8        INY
C - - - - - 0x00C088 03:8078: B1 08     LDA (ram_0008),Y
C - - - - - 0x00C08A 03:807A: 85 04     STA ram_0004
C - - - - - 0x00C08C 03:807C: C8        INY
C - - - - - 0x00C08D 03:807D: B1 08     LDA (ram_0008),Y
C - - - - - 0x00C08F 03:807F: 85 09     STA ram_0009
C - - - - - 0x00C091 03:8081: A5 04     LDA ram_0004
C - - - - - 0x00C093 03:8083: 85 08     STA ram_0008
C - - - - - 0x00C095 03:8085: A0 00     LDY #$00
C - - - - - 0x00C097 03:8087: B1 08     LDA (ram_0008),Y
bra_8089_not_jump:
C - - - - - 0x00C099 03:8089: 18        CLC
C - - - - - 0x00C09A 03:808A: 65 01     ADC ram_0001
C - - - - - 0x00C09C 03:808C: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x00C09F 03:808F: C8        INY
C - - - - - 0x00C0A0 03:8090: B1 08     LDA (ram_0008),Y
C - - - - - 0x00C0A2 03:8092: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x00C0A5 03:8095: C8        INY
C - - - - - 0x00C0A6 03:8096: B1 08     LDA (ram_0008),Y
C - - - - - 0x00C0A8 03:8098: 25 0B     AND ram_000B
C - - - - - 0x00C0AA 03:809A: 05 00     ORA ram_0000    ; palette
C - - - - - 0x00C0AC 03:809C: 45 0A     EOR ram_000A    ; flip
C - - - - - 0x00C0AE 03:809E: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x00C0B1 03:80A1: C8        INY
C - - - - - 0x00C0B2 03:80A2: 24 0A     BIT ram_000A    ; flip
C - - - - - 0x00C0B4 03:80A4: B1 08     LDA (ram_0008),Y
C - - - - - 0x00C0B6 03:80A6: 50 05     BVC bra_80AD
C - - - - - 0x00C0B8 03:80A8: 49 FF     EOR #$FF
C - - - - - 0x00C0BA 03:80AA: 18        CLC
C - - - - - 0x00C0BB 03:80AB: 69 F9     ADC #$F9
bra_80AD:
C - - - - - 0x00C0BD 03:80AD: 18        CLC
C - - - - - 0x00C0BE 03:80AE: 65 02     ADC ram_0002
C - - - - - 0x00C0C0 03:80B0: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x00C0C3 03:80B3: 8A        TXA
C - - - - - 0x00C0C4 03:80B4: 18        CLC
C - - - - - 0x00C0C5 03:80B5: 69 C4     ADC #$C4
C - - - - - 0x00C0C7 03:80B7: AA        TAX
C - - - - - 0x00C0C8 03:80B8: C8        INY
C - - - - - 0x00C0C9 03:80B9: C6 03     DEC ram_0003    ; counter
C - - - - - 0x00C0CB 03:80BB: D0 B4     BNE bra_8071_loop
C - - - - - 0x00C0CD 03:80BD: 60        RTS



loc_0x00C0CE_sprite_engine:
C D 0 - - - 0x00C0CE 03:80BE: A5 24     LDA ram_base_spr_index
C - - - - - 0x00C0D0 03:80C0: 18        CLC
C - - - - - 0x00C0D1 03:80C1: 69 4C     ADC #$4C
C - - - - - 0x00C0D3 03:80C3: 85 24     STA ram_base_spr_index
C - - - - - 0x00C0D5 03:80C5: AA        TAX
C - - - - - 0x00C0D6 03:80C6: 38        SEC
C - - - - - 0x00C0D7 03:80C7: E9 C4     SBC #$C4
C - - - - - 0x00C0D9 03:80C9: A8        TAY
C - - - - - 0x00C0DA 03:80CA: 84 07     STY ram_0007
C - - - - - 0x00C0DC 03:80CC: A9 00     LDA #$00
C - - - - - 0x00C0DE 03:80CE: 99 01 02  STA ram_spr_T,Y
C - - - - - 0x00C0E1 03:80D1: 20 01 80  JSR sub_8001_display_lives_with_sprites
C - - - - - 0x00C0E4 03:80D4: A9 FF     LDA #$FF
C - - - - - 0x00C0E6 03:80D6: A4 D4     LDY ram_plr_barrier_timer
C - - - - - 0x00C0E8 03:80D8: F0 02     BEQ bra_80DC
C - - - - - 0x00C0EA 03:80DA: A9 FC     LDA #$FC
bra_80DC:
C - - - - - 0x00C0EC 03:80DC: 85 0B     STA ram_000B
C - - - - - 0x00C0EE 03:80DE: AD 66 05  LDA ram_attr_spr_plr
C - - - - - 0x00C0F1 03:80E1: 29 03     AND #$03
C - - - - - 0x00C0F3 03:80E3: 85 00     STA ram_0000    ; palette
C - - - - - 0x00C0F5 03:80E5: AD 66 05  LDA ram_attr_spr_plr
C - - - - - 0x00C0F8 03:80E8: 29 E0     AND #$E0
C - - - - - 0x00C0FA 03:80EA: 85 0A     STA ram_000A    ; flip
C - - - - - 0x00C0FC 03:80EC: AD 32 05  LDA ram_pos_Y_hi_plr
C - - - - - 0x00C0FF 03:80EF: 85 01     STA ram_0001
C - - - - - 0x00C101 03:80F1: AD 4C 05  LDA ram_pos_X_hi_plr
C - - - - - 0x00C104 03:80F4: 85 02     STA ram_0002
C - - - - - 0x00C106 03:80F6: AD 18 05  LDA ram_anim_id_plr
C - - - - - 0x00C109 03:80F9: F0 03     BEQ bra_80FE_skip
C - - - - - 0x00C10B 03:80FB: 20 5E 80  JSR sub_805E_player_animation_sprite_data_handler
bra_80FE_skip:
C - - - - - 0x00C10E 03:80FE: A9 FF     LDA #$FF
C - - - - - 0x00C110 03:8100: A4 D5     LDY ram_plr_barrier_timer + $01
C - - - - - 0x00C112 03:8102: F0 02     BEQ bra_8106
C - - - - - 0x00C114 03:8104: A9 FC     LDA #$FC
bra_8106:
C - - - - - 0x00C116 03:8106: 85 0B     STA ram_000B
C - - - - - 0x00C118 03:8108: AD 67 05  LDA ram_attr_spr_plr + $01
C - - - - - 0x00C11B 03:810B: 29 03     AND #$03
C - - - - - 0x00C11D 03:810D: 85 00     STA ram_0000    ; palette
C - - - - - 0x00C11F 03:810F: AD 67 05  LDA ram_attr_spr_plr + $01
C - - - - - 0x00C122 03:8112: 29 E0     AND #$E0
C - - - - - 0x00C124 03:8114: 85 0A     STA ram_000A    ; flip
C - - - - - 0x00C126 03:8116: AD 33 05  LDA ram_pos_Y_hi_plr + $01
C - - - - - 0x00C129 03:8119: 85 01     STA ram_0001
C - - - - - 0x00C12B 03:811B: AD 4D 05  LDA ram_pos_X_hi_plr + $01
C - - - - - 0x00C12E 03:811E: 85 02     STA ram_0002
C - - - - - 0x00C130 03:8120: AD 19 05  LDA ram_anim_id_plr + $01
C - - - - - 0x00C133 03:8123: F0 03     BEQ bra_8128_skip
C - - - - - 0x00C135 03:8125: 20 5E 80  JSR sub_805E_player_animation_sprite_data_handler
bra_8128_skip:
C - - - - - 0x00C138 03:8128: A0 17     LDY #con_max_index_total
bra_812A_loop:
C - - - - - 0x00C13A 03:812A: B9 4E 05  LDA ram_attr_spr_obj,Y
C - - - - - 0x00C13D 03:812D: 29 3F     AND #$3F
C - - - - - 0x00C13F 03:812F: 85 00     STA ram_0000
C - - - - - 0x00C141 03:8131: 4A        LSR
C - - - - - 0x00C142 03:8132: 4A        LSR
C - - - - - 0x00C143 03:8133: 85 0B     STA ram_000B
C - - - - - 0x00C145 03:8135: B9 4E 05  LDA ram_attr_spr_obj,Y
C - - - - - 0x00C148 03:8138: 29 C0     AND #$C0
C - - - - - 0x00C14A 03:813A: 85 0A     STA ram_000A    ; flip
C - - - - - 0x00C14C 03:813C: B9 1A 05  LDA ram_pos_Y_hi_obj,Y
C - - - - - 0x00C14F 03:813F: 85 01     STA ram_0001
C - - - - - 0x00C151 03:8141: B9 34 05  LDA ram_pos_X_hi_obj,Y
C - - - - - 0x00C154 03:8144: 85 02     STA ram_0002
; bzk optimize, check ram_anim_id_obj first
C - - - - - 0x00C156 03:8146: B9 00 05  LDA ram_anim_id_obj,Y
C - - - - - 0x00C159 03:8149: F0 07     BEQ bra_8152_skip
C - - - - - 0x00C15B 03:814B: 84 05     STY ram_0005
C - - - - - 0x00C15D 03:814D: 20 6B 81  JSR sub_816B_enemy_animation_sprite_data_handler
C - - - - - 0x00C160 03:8150: A4 05     LDY ram_0005
bra_8152_skip:
C - - - - - 0x00C162 03:8152: 88        DEY
C - - - - - 0x00C163 03:8153: 10 D5     BPL bra_812A_loop
C - - - - - 0x00C165 03:8155: A4 07     LDY ram_0007
C - - - - - 0x00C167 03:8157: B9 01 02  LDA ram_spr_T,Y
C - - - - - 0x00C16A 03:815A: D0 0E     BNE bra_816A_RTS
bra_815C_loop:
C - - - - - 0x00C16C 03:815C: A9 F4     LDA #$F4
C - - - - - 0x00C16E 03:815E: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x00C171 03:8161: 8A        TXA
C - - - - - 0x00C172 03:8162: 18        CLC
C - - - - - 0x00C173 03:8163: 69 C4     ADC #$C4
C - - - - - 0x00C175 03:8165: AA        TAX
C - - - - - 0x00C176 03:8166: E4 24     CPX ram_base_spr_index
C - - - - - 0x00C178 03:8168: D0 F2     BNE bra_815C_loop
bra_816A_RTS:
C - - - - - 0x00C17A 03:816A: 60        RTS



sub_816B_enemy_animation_sprite_data_handler:
C - - - - - 0x00C17B 03:816B: 0A        ASL
C - - - - - 0x00C17C 03:816C: A8        TAY
C - - - - - 0x00C17D 03:816D: 90 0A     BCC bra_8179_00_7F
; 80-FF
C - - - - - 0x00C17F 03:816F: B9 05 83  LDA tbl_8305,Y
C - - - - - 0x00C182 03:8172: 85 08     STA ram_0008
C - - - - - 0x00C184 03:8174: B9 06 83  LDA tbl_8305 + $01,Y
C - - - - - 0x00C187 03:8177: B0 08     BCS bra_8181    ; jmp
bra_8179_00_7F:
C - - - - - 0x00C189 03:8179: B9 05 82  LDA tbl_8205,Y
C - - - - - 0x00C18C 03:817C: 85 08     STA ram_0008
C - - - - - 0x00C18E 03:817E: B9 06 82  LDA tbl_8205 + $01,Y
bra_8181:
C - - - - - 0x00C191 03:8181: 85 09     STA ram_0009
C - - - - - 0x00C193 03:8183: A0 00     LDY #$00
C - - - - - 0x00C195 03:8185: B1 08     LDA (ram_0008),Y
C - - - - - 0x00C197 03:8187: 30 5A     BMI bra_81E3_80_FF
C - - - - - 0x00C199 03:8189: A8        TAY
C - - - - - 0x00C19A 03:818A: D0 09     BNE bra_8195    ; jmp



bra_818C_loop:
C - - - - - 0x00C19C 03:818C: B1 08     LDA (ram_0008),Y
C - - - - - 0x00C19E 03:818E: C9 80     CMP #$80
C - - - - - 0x00C1A0 03:8190: D0 03     BNE bra_8195
; 80
C - - - - - 0x00C1A2 03:8192: 85 0B     STA ram_000B
C - - - - - 0x00C1A4 03:8194: 88        DEY
bra_8195:
C - - - - - 0x00C1A5 03:8195: 24 0A     BIT ram_000A    ; flip
C - - - - - 0x00C1A7 03:8197: B1 08     LDA (ram_0008),Y
C - - - - - 0x00C1A9 03:8199: 50 05     BVC bra_81A0
C - - - - - 0x00C1AB 03:819B: 49 FF     EOR #$FF
C - - - - - 0x00C1AD 03:819D: 18        CLC
C - - - - - 0x00C1AE 03:819E: 69 F9     ADC #$F9
bra_81A0:
C - - - - - 0x00C1B0 03:81A0: 18        CLC
C - - - - - 0x00C1B1 03:81A1: 10 37     BPL bra_81DA
C - - - - - 0x00C1B3 03:81A3: 65 02     ADC ram_0002
C - - - - - 0x00C1B5 03:81A5: 90 37     BCC bra_81DE
bra_81A7:
C - - - - - 0x00C1B7 03:81A7: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x00C1BA 03:81AA: 88        DEY
C - - - - - 0x00C1BB 03:81AB: B1 08     LDA (ram_0008),Y
C - - - - - 0x00C1BD 03:81AD: 05 00     ORA ram_0000
C - - - - - 0x00C1BF 03:81AF: 45 0A     EOR ram_000A    ; flip
C - - - - - 0x00C1C1 03:81B1: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x00C1C4 03:81B4: 88        DEY
C - - - - - 0x00C1C5 03:81B5: B1 08     LDA (ram_0008),Y
C - - - - - 0x00C1C7 03:81B7: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x00C1CA 03:81BA: 88        DEY
C - - - - - 0x00C1CB 03:81BB: A5 0B     LDA ram_000B
C - - - - - 0x00C1CD 03:81BD: 4A        LSR
C - - - - - 0x00C1CE 03:81BE: B1 08     LDA (ram_0008),Y
C - - - - - 0x00C1D0 03:81C0: 10 10     BPL bra_81D2
C - - - - - 0x00C1D2 03:81C2: 65 01     ADC ram_0001
C - - - - - 0x00C1D4 03:81C4: 90 08     BCC bra_81CE
C - - - - - 0x00C1D6 03:81C6: 18        CLC
bra_81C7:
C - - - - - 0x00C1D7 03:81C7: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x00C1DA 03:81CA: 8A        TXA
C - - - - - 0x00C1DB 03:81CB: 69 C4     ADC #$C4
C - - - - - 0x00C1DD 03:81CD: AA        TAX
bra_81CE:
C - - - - - 0x00C1DE 03:81CE: 88        DEY
C - - - - - 0x00C1DF 03:81CF: D0 BB     BNE bra_818C_loop
bra_81D1_RTS:
C - - - - - 0x00C1E1 03:81D1: 60        RTS
bra_81D2:
C - - - - - 0x00C1E2 03:81D2: 65 01     ADC ram_0001
C - - - - - 0x00C1E4 03:81D4: 90 F1     BCC bra_81C7
C - - - - - 0x00C1E6 03:81D6: 88        DEY
C - - - - - 0x00C1E7 03:81D7: D0 B3     BNE bra_818C_loop
- - - - - - 0x00C1E9 03:81D9: 60        RTS
bra_81DA:
C - - - - - 0x00C1EA 03:81DA: 65 02     ADC ram_0002
C - - - - - 0x00C1EC 03:81DC: 90 C9     BCC bra_81A7
bra_81DE:
C - - - - - 0x00C1EE 03:81DE: 88        DEY
C - - - - - 0x00C1EF 03:81DF: 88        DEY
C - - - - - 0x00C1F0 03:81E0: 88        DEY
C - - - - - 0x00C1F1 03:81E1: D0 EB     BNE bra_81CE    ; jmp



bra_81E3_80_FF:
C - - - - - 0x00C1F3 03:81E3: C9 FF     CMP #$FF
C - - - - - 0x00C1F5 03:81E5: F0 EA     BEQ bra_81D1_RTS    ; FF
; 80-FE
; only for bullets with a single sprite?
C - - - - - 0x00C1F7 03:81E7: 38        SEC
C - - - - - 0x00C1F8 03:81E8: 2A        ROL
C - - - - - 0x00C1F9 03:81E9: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x00C1FC 03:81EC: A5 00     LDA ram_0000
C - - - - - 0x00C1FE 03:81EE: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x00C201 03:81F1: A5 01     LDA ram_0001
C - - - - - 0x00C203 03:81F3: E9 08     SBC #$08
C - - - - - 0x00C205 03:81F5: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x00C208 03:81F8: A5 02     LDA ram_0002
C - - - - - 0x00C20A 03:81FA: E9 04     SBC #$04
C - - - - - 0x00C20C 03:81FC: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x00C20F 03:81FF: 8A        TXA
C - - - - - 0x00C210 03:8200: 18        CLC
C - - - - - 0x00C211 03:8201: 69 C4     ADC #$C4
C - - - - - 0x00C213 03:8203: AA        TAX
C - - - - - 0x00C214 03:8204: 60        RTS



tbl_8205:
- - - - - - 0x00C215 03:8205: 05 84     .word _off028_8405_00
- D 0 - - - 0x00C217 03:8207: 05 84     .word _off028_8405_01
- D 0 - - - 0x00C219 03:8209: 06 84     .word _off028_8406_02
- D 0 - - - 0x00C21B 03:820B: 0F 84     .word _off028_840F_03
- D 0 - - - 0x00C21D 03:820D: 18 84     .word _off028_8418_04
- D 0 - - - 0x00C21F 03:820F: 19 84     .word _off028_8419_05
- D 0 - - - 0x00C221 03:8211: 1A 84     .word _off028_841A_06
- D 0 - - - 0x00C223 03:8213: 1B 84     .word _off028_841B_07
- D 0 - - - 0x00C225 03:8215: 28 84     .word _off028_8428_08
- D 0 - - - 0x00C227 03:8217: 35 84     .word _off028_8435_09
- D 0 - - - 0x00C229 03:8219: 42 84     .word _off028_8442_0A
- D 0 - - - 0x00C22B 03:821B: 4F 84     .word _off028_844F_0B
- D 0 - - - 0x00C22D 03:821D: 5C 84     .word _off028_845C_0C
- D 0 - - - 0x00C22F 03:821F: 69 84     .word _off028_8469_0D
- D 0 - - - 0x00C231 03:8221: 76 84     .word _off028_8476_0E
- D 0 - - - 0x00C233 03:8223: 83 84     .word _off028_8483_0F
- D 0 - - - 0x00C235 03:8225: 9C 84     .word _off028_849C_10
- D 0 - - - 0x00C237 03:8227: BD 84     .word _off028_84BD_11
- D 0 - - - 0x00C239 03:8229: D6 84     .word _off028_84D6_12
- D 0 - - - 0x00C23B 03:822B: EF 84     .word _off028_84EF_13
- D 0 - - - 0x00C23D 03:822D: 10 85     .word _off028_8510_14
- D 0 - - - 0x00C23F 03:822F: 31 85     .word _off028_8531_15
- D 0 - - - 0x00C241 03:8231: 32 85     .word _off028_8532_16
- D 0 - - - 0x00C243 03:8233: 33 85     .word _off028_8533_17
- D 0 - - - 0x00C245 03:8235: 38 85     .word _off028_8538_18
- D 0 - - - 0x00C247 03:8237: 3D 85     .word _off028_853D_19
- D 0 - - - 0x00C249 03:8239: 3E 85     .word _off028_853E_1A
- D 0 - - - 0x00C24B 03:823B: 57 85     .word _off028_8557_1B
- D 0 - - - 0x00C24D 03:823D: 68 85     .word _off028_8568_1C
- D 0 - - - 0x00C24F 03:823F: 75 85     .word _off028_8575_1D
- D 0 - - - 0x00C251 03:8241: 82 85     .word _off028_8582_1E
- D 0 - - - 0x00C253 03:8243: 93 85     .word _off028_8593_1F
- D 0 - - - 0x00C255 03:8245: A0 85     .word _off028_85A0_20
- D 0 - - - 0x00C257 03:8247: B1 85     .word _off028_85B1_21
- - - - - - 0x00C259 03:8249: BF 85     .word _off028_85BF_22
- D 0 - - - 0x00C25B 03:824B: D0 85     .word _off028_85D0_23
- D 0 - - - 0x00C25D 03:824D: E2 85     .word _off028_85E2_24
- D 0 - - - 0x00C25F 03:824F: F4 85     .word _off028_85F4_25
- D 0 - - - 0x00C261 03:8251: 06 86     .word _off028_8606_26
- D 0 - - - 0x00C263 03:8253: 17 86     .word _off028_8617_27
- D 0 - - - 0x00C265 03:8255: 2C 86     .word _off028_862C_28
- D 0 - - - 0x00C267 03:8257: 41 86     .word _off028_8641_29
- D 0 - - - 0x00C269 03:8259: 46 86     .word _off028_8646_2A
- D 0 - - - 0x00C26B 03:825B: 47 86     .word _off028_8647_2B
- D 0 - - - 0x00C26D 03:825D: 48 86     .word _off028_8648_2C
- D 0 - - - 0x00C26F 03:825F: 4D 86     .word _off028_864D_2D
- D 0 - - - 0x00C271 03:8261: 52 86     .word _off028_8652_2E
- D 0 - - - 0x00C273 03:8263: 57 86     .word _off028_8657_2F
- D 0 - - - 0x00C275 03:8265: 58 86     .word _off028_8658_30
- D 0 - - - 0x00C277 03:8267: 59 86     .word _off028_8659_31
- D 0 - - - 0x00C279 03:8269: 72 86     .word _off028_8672_32
- D 0 - - - 0x00C27B 03:826B: 87 86     .word _off028_8687_33
- D 0 - - - 0x00C27D 03:826D: 9C 86     .word _off028_869C_34
- D 0 - - - 0x00C27F 03:826F: B1 86     .word _off028_86B1_35
- D 0 - - - 0x00C281 03:8271: CA 86     .word _off028_86CA_36
- D 0 - - - 0x00C283 03:8273: E3 86     .word _off028_86E3_37
- D 0 - - - 0x00C285 03:8275: EC 86     .word _off028_86EC_38
- D 0 - - - 0x00C287 03:8277: F5 86     .word _off028_86F5_39
- D 0 - - - 0x00C289 03:8279: FE 86     .word _off028_86FE_3A
- - - - - - 0x00C28B 03:827B: FF 86     .word _off028_86FF_3B
- D 0 - - - 0x00C28D 03:827D: FF 86     .word _off028_86FF_3C
- D 0 - - - 0x00C28F 03:827F: 11 87     .word _off028_8711_3D
- D 0 - - - 0x00C291 03:8281: 23 87     .word _off028_8723_3E
- D 0 - - - 0x00C293 03:8283: 35 87     .word _off028_8735_3F
- D 0 - - - 0x00C295 03:8285: 47 87     .word _off028_8747_40
- D 0 - - - 0x00C297 03:8287: 55 87     .word _off028_8755_41
- D 0 - - - 0x00C299 03:8289: 67 87     .word _off028_8767_42
- D 0 - - - 0x00C29B 03:828B: 79 87     .word _off028_8779_43
- D 0 - - - 0x00C29D 03:828D: 87 87     .word _off028_8787_44
- D 0 - - - 0x00C29F 03:828F: 95 87     .word _off028_8795_45
- D 0 - - - 0x00C2A1 03:8291: A7 87     .word _off028_87A7_46
- D 0 - - - 0x00C2A3 03:8293: B5 87     .word _off028_87B5_47
- D 0 - - - 0x00C2A5 03:8295: C7 87     .word _off028_87C7_48
- D 0 - - - 0x00C2A7 03:8297: D5 87     .word _off028_87D5_49
- D 0 - - - 0x00C2A9 03:8299: E3 87     .word _off028_87E3_4A
- D 0 - - - 0x00C2AB 03:829B: F1 87     .word _off028_87F1_4B
- D 0 - - - 0x00C2AD 03:829D: 06 88     .word _off028_8806_4C
- D 0 - - - 0x00C2AF 03:829F: 1B 88     .word _off028_881B_4D
- D 0 - - - 0x00C2B1 03:82A1: 30 88     .word _off028_8830_4E
- D 0 - - - 0x00C2B3 03:82A3: 45 88     .word _off028_8845_4F
- D 0 - - - 0x00C2B5 03:82A5: 5A 88     .word _off028_885A_50
- D 0 - - - 0x00C2B7 03:82A7: 6F 88     .word _off028_886F_51
- D 0 - - - 0x00C2B9 03:82A9: 84 88     .word _off028_8884_52
- D 0 - - - 0x00C2BB 03:82AB: 99 88     .word _off028_8899_53
- D 0 - - - 0x00C2BD 03:82AD: AE 88     .word _off028_88AE_54
- D 0 - - - 0x00C2BF 03:82AF: B7 88     .word _off028_88B7_55
- D 0 - - - 0x00C2C1 03:82B1: D4 88     .word _off028_88D4_56
- D 0 - - - 0x00C2C3 03:82B3: F1 88     .word _off028_88F1_57
- D 0 - - - 0x00C2C5 03:82B5: 0E 89     .word _off028_890E_58
- D 0 - - - 0x00C2C7 03:82B7: 2B 89     .word _off028_892B_59
- D 0 - - - 0x00C2C9 03:82B9: 30 89     .word _off028_8930_5A
- D 0 - - - 0x00C2CB 03:82BB: 3D 89     .word _off028_893D_5B
- D 0 - - - 0x00C2CD 03:82BD: 46 89     .word _off028_8946_5C
- D 0 - - - 0x00C2CF 03:82BF: 4F 89     .word _off028_894F_5D
- D 0 - - - 0x00C2D1 03:82C1: 58 89     .word _off028_8958_5E
- D 0 - - - 0x00C2D3 03:82C3: 59 89     .word _off028_8959_5F
- D 0 - - - 0x00C2D5 03:82C5: 5E 89     .word _off028_895E_60
- D 0 - - - 0x00C2D7 03:82C7: 67 89     .word _off028_8967_61
- D 0 - - - 0x00C2D9 03:82C9: 70 89     .word _off028_8970_62
- D 0 - - - 0x00C2DB 03:82CB: 79 89     .word _off028_8979_63
- D 0 - - - 0x00C2DD 03:82CD: 7A 89     .word _off028_897A_64
- D 0 - - - 0x00C2DF 03:82CF: 87 89     .word _off028_8987_65
- D 0 - - - 0x00C2E1 03:82D1: 94 89     .word _off028_8994_66
- D 0 - - - 0x00C2E3 03:82D3: A5 89     .word _off028_89A5_67
- D 0 - - - 0x00C2E5 03:82D5: B2 89     .word _off028_89B2_68
- D 0 - - - 0x00C2E7 03:82D7: BF 89     .word _off028_89BF_69
- D 0 - - - 0x00C2E9 03:82D9: D0 89     .word _off028_89D0_6A
- D 0 - - - 0x00C2EB 03:82DB: DD 89     .word _off028_89DD_6B
- D 0 - - - 0x00C2ED 03:82DD: EE 89     .word _off028_89EE_6C
- D 0 - - - 0x00C2EF 03:82DF: 03 8A     .word _off028_8A03_6D
- D 0 - - - 0x00C2F1 03:82E1: 14 8A     .word _off028_8A14_6E
- D 0 - - - 0x00C2F3 03:82E3: 25 8A     .word _off028_8A25_6F
- D 0 - - - 0x00C2F5 03:82E5: 3E 8A     .word _off028_8A3E_70
- D 0 - - - 0x00C2F7 03:82E7: 57 8A     .word _off028_8A57_71
- D 0 - - - 0x00C2F9 03:82E9: 70 8A     .word _off028_8A70_72
- D 0 - - - 0x00C2FB 03:82EB: 89 8A     .word _off028_8A89_73
- D 0 - - - 0x00C2FD 03:82ED: 92 8A     .word _off028_8A92_74
- D 0 - - - 0x00C2FF 03:82EF: 9B 8A     .word _off028_8A9B_75
- D 0 - - - 0x00C301 03:82F1: A4 8A     .word _off028_8AA4_76
- D 0 - - - 0x00C303 03:82F3: AD 8A     .word _off028_8AAD_77
- D 0 - - - 0x00C305 03:82F5: B6 8A     .word _off028_8AB6_78
- D 0 - - - 0x00C307 03:82F7: C3 8A     .word _off028_8AC3_79
- D 0 - - - 0x00C309 03:82F9: D0 8A     .word _off028_8AD0_7A
- D 0 - - - 0x00C30B 03:82FB: E1 8A     .word _off028_8AE1_7B
- D 0 - - - 0x00C30D 03:82FD: F2 8A     .word _off028_8AF2_7C
- D 0 - - - 0x00C30F 03:82FF: 03 8B     .word _off028_8B03_7D
- D 0 - - - 0x00C311 03:8301: 14 8B     .word _off028_8B14_7E
- D 0 - - - 0x00C313 03:8303: 25 8B     .word _off028_8B25_7F



tbl_8305:
- D 0 - - - 0x00C315 03:8305: 36 8B     .word _off028_8B36_80
- D 0 - - - 0x00C317 03:8307: 43 8B     .word _off028_8B43_81
- D 0 - - - 0x00C319 03:8309: 50 8B     .word _off028_8B50_82
- D 0 - - - 0x00C31B 03:830B: 59 8B     .word _off028_8B59_83
- D 0 - - - 0x00C31D 03:830D: 62 8B     .word _off028_8B62_84
- D 0 - - - 0x00C31F 03:830F: 83 8B     .word _off028_8B83_85
- D 0 - - - 0x00C321 03:8311: A4 8B     .word _off028_8BA4_86
- D 0 - - - 0x00C323 03:8313: C5 8B     .word _off028_8BC5_87
- D 0 - - - 0x00C325 03:8315: E6 8B     .word _off028_8BE6_88
- D 0 - - - 0x00C327 03:8317: 07 8C     .word _off028_8C07_89
- D 0 - - - 0x00C329 03:8319: 28 8C     .word _off028_8C28_8A
- D 0 - - - 0x00C32B 03:831B: 49 8C     .word _off028_8C49_8B
- D 0 - - - 0x00C32D 03:831D: 6A 8C     .word _off028_8C6A_8C
- D 0 - - - 0x00C32F 03:831F: 8B 8C     .word _off028_8C8B_8D
- D 0 - - - 0x00C331 03:8321: AC 8C     .word _off028_8CAC_8E
- D 0 - - - 0x00C333 03:8323: C5 8C     .word _off028_8CC5_8F
- D 0 - - - 0x00C335 03:8325: C6 8C     .word _off028_8CC6_90
- D 0 - - - 0x00C337 03:8327: FF 8C     .word _off028_8CFF_91
- D 0 - - - 0x00C339 03:8329: 38 8D     .word _off028_8D38_92
- D 0 - - - 0x00C33B 03:832B: 39 8D     .word _off028_8D39_93
- D 0 - - - 0x00C33D 03:832D: 3A 8D     .word _off028_8D3A_94
- D 0 - - - 0x00C33F 03:832F: 3F 8D     .word _off028_8D3F_95
- D 0 - - - 0x00C341 03:8331: 44 8D     .word _off028_8D44_96
- D 0 - - - 0x00C343 03:8333: 49 8D     .word _off028_8D49_97
- D 0 - - - 0x00C345 03:8335: 4E 8D     .word _off028_8D4E_98
- D 0 - - - 0x00C347 03:8337: 57 8D     .word _off028_8D57_99
- D 0 - - - 0x00C349 03:8339: 60 8D     .word _off028_8D60_9A
- D 0 - - - 0x00C34B 03:833B: 69 8D     .word _off028_8D69_9B
- D 0 - - - 0x00C34D 03:833D: 72 8D     .word _off028_8D72_9C
- D 0 - - - 0x00C34F 03:833F: 77 8D     .word _off028_8D77_9D
- D 0 - - - 0x00C351 03:8341: 80 8D     .word _off028_8D80_9E
- D 0 - - - 0x00C353 03:8343: 8D 8D     .word _off028_8D8D_9F
- D 0 - - - 0x00C355 03:8345: 9A 8D     .word _off028_8D9A_A0
- D 0 - - - 0x00C357 03:8347: A7 8D     .word _off028_8DA7_A1
- D 0 - - - 0x00C359 03:8349: C8 8D     .word _off028_8DC8_A2
- D 0 - - - 0x00C35B 03:834B: E9 8D     .word _off028_8DE9_A3
- D 0 - - - 0x00C35D 03:834D: 0A 8E     .word _off028_8E0A_A4
- D 0 - - - 0x00C35F 03:834F: 2B 8E     .word _off028_8E2B_A5
- D 0 - - - 0x00C361 03:8351: 34 8E     .word _off028_8E34_A6
- D 0 - - - 0x00C363 03:8353: 3D 8E     .word _off028_8E3D_A7
- D 0 - - - 0x00C365 03:8355: 56 8E     .word _off028_8E56_A8
- D 0 - - - 0x00C367 03:8357: 5F 8E     .word _off028_8E5F_A9
- D 0 - - - 0x00C369 03:8359: 68 8E     .word _off028_8E68_AA
- D 0 - - - 0x00C36B 03:835B: 71 8E     .word _off028_8E71_AB
- D 0 - - - 0x00C36D 03:835D: 7A 8E     .word _off028_8E7A_AC
- D 0 - - - 0x00C36F 03:835F: 7B 8E     .word _off028_8E7B_AD
- D 0 - - - 0x00C371 03:8361: 7C 8E     .word _off028_8E7C_AE
- D 0 - - - 0x00C373 03:8363: 81 8E     .word _off028_8E81_AF
- D 0 - - - 0x00C375 03:8365: 86 8E     .word _off028_8E86_B0
- D 0 - - - 0x00C377 03:8367: 87 8E     .word _off028_8E87_B1
- D 0 - - - 0x00C379 03:8369: 88 8E     .word _off028_8E88_B2
- D 0 - - - 0x00C37B 03:836B: 8D 8E     .word _off028_8E8D_B3
- D 0 - - - 0x00C37D 03:836D: 92 8E     .word _off028_8E92_B4
- D 0 - - - 0x00C37F 03:836F: 9B 8E     .word _off028_8E9B_B5
- D 0 - - - 0x00C381 03:8371: A4 8E     .word _off028_8EA4_B6
- D 0 - - - 0x00C383 03:8373: AD 8E     .word _off028_8EAD_B7
- D 0 - - - 0x00C385 03:8375: B6 8E     .word _off028_8EB6_B8
- D 0 - - - 0x00C387 03:8377: E3 8E     .word _off028_8EE3_B9
- D 0 - - - 0x00C389 03:8379: E8 8E     .word _off028_8EE8_BA
- D 0 - - - 0x00C38B 03:837B: 0D 8F     .word _off028_8F0D_BB
- - - - - - 0x00C38D 03:837D: 2E 8F     .word _off028_8F2E_BC
- - - - - - 0x00C38F 03:837F: 2E 8F     .word _off028_8F2E_BD
- - - - - - 0x00C391 03:8381: 2E 8F     .word _off028_8F2E_BE
- - - - - - 0x00C393 03:8383: 2E 8F     .word _off028_8F2E_BF
- - - - - - 0x00C395 03:8385: 2E 8F     .word _off028_8F2E_C0
- - - - - - 0x00C397 03:8387: 2E 8F     .word _off028_8F2E_C1
- - - - - - 0x00C399 03:8389: 2E 8F     .word _off028_8F2E_C2
- - - - - - 0x00C39B 03:838B: 2E 8F     .word _off028_8F2E_C3
- - - - - - 0x00C39D 03:838D: 2E 8F     .word _off028_8F2E_C4
- - - - - - 0x00C39F 03:838F: 2E 8F     .word _off028_8F2E_C5
- - - - - - 0x00C3A1 03:8391: 2E 8F     .word _off028_8F2E_C6
- - - - - - 0x00C3A3 03:8393: 2E 8F     .word _off028_8F2E_C7
- - - - - - 0x00C3A5 03:8395: 2E 8F     .word _off028_8F2E_C8
- - - - - - 0x00C3A7 03:8397: 2E 8F     .word _off028_8F2E_C9
- - - - - - 0x00C3A9 03:8399: 2E 8F     .word _off028_8F2E_CA
- - - - - - 0x00C3AB 03:839B: 2E 8F     .word _off028_8F2E_CB
- - - - - - 0x00C3AD 03:839D: 2E 8F     .word _off028_8F2E_CC
- - - - - - 0x00C3AF 03:839F: 2E 8F     .word _off028_8F2E_CD
- - - - - - 0x00C3B1 03:83A1: 2E 8F     .word _off028_8F2E_CE
- - - - - - 0x00C3B3 03:83A3: 2E 8F     .word _off028_8F2E_CF
- - - - - - 0x00C3B5 03:83A5: 2E 8F     .word _off028_8F2E_D0
- - - - - - 0x00C3B7 03:83A7: 2E 8F     .word _off028_8F2E_D1
- - - - - - 0x00C3B9 03:83A9: 2E 8F     .word _off028_8F2E_D2
- - - - - - 0x00C3BB 03:83AB: 2E 8F     .word _off028_8F2E_D3
- - - - - - 0x00C3BD 03:83AD: 2E 8F     .word _off028_8F2E_D4
- - - - - - 0x00C3BF 03:83AF: 2E 8F     .word _off028_8F2E_D5
- - - - - - 0x00C3C1 03:83B1: 2E 8F     .word _off028_8F2E_D6
- - - - - - 0x00C3C3 03:83B3: 2E 8F     .word _off028_8F2E_D7
- - - - - - 0x00C3C5 03:83B5: 2E 8F     .word _off028_8F2E_D8
- - - - - - 0x00C3C7 03:83B7: 2E 8F     .word _off028_8F2E_D9
- - - - - - 0x00C3C9 03:83B9: 2E 8F     .word _off028_8F2E_DA
- - - - - - 0x00C3CB 03:83BB: 2E 8F     .word _off028_8F2E_DB
- - - - - - 0x00C3CD 03:83BD: 2E 8F     .word _off028_8F2E_DC
- - - - - - 0x00C3CF 03:83BF: 2E 8F     .word _off028_8F2E_DD
- - - - - - 0x00C3D1 03:83C1: 2E 8F     .word _off028_8F2E_DE
- - - - - - 0x00C3D3 03:83C3: 2E 8F     .word _off028_8F2E_DF
- - - - - - 0x00C3D5 03:83C5: 2E 8F     .word _off028_8F2E_E0
- - - - - - 0x00C3D7 03:83C7: 2E 8F     .word _off028_8F2E_E1
- - - - - - 0x00C3D9 03:83C9: 2E 8F     .word _off028_8F2E_E2
- - - - - - 0x00C3DB 03:83CB: 2E 8F     .word _off028_8F2E_E3
- - - - - - 0x00C3DD 03:83CD: 2E 8F     .word _off028_8F2E_E4
- - - - - - 0x00C3DF 03:83CF: 2E 8F     .word _off028_8F2E_E5
- - - - - - 0x00C3E1 03:83D1: 2E 8F     .word _off028_8F2E_E6
- - - - - - 0x00C3E3 03:83D3: 2E 8F     .word _off028_8F2E_E7
- - - - - - 0x00C3E5 03:83D5: 2E 8F     .word _off028_8F2E_E8
- - - - - - 0x00C3E7 03:83D7: 2E 8F     .word _off028_8F2E_E9
- - - - - - 0x00C3E9 03:83D9: 2E 8F     .word _off028_8F2E_EA
- - - - - - 0x00C3EB 03:83DB: 2E 8F     .word _off028_8F2E_EB
- - - - - - 0x00C3ED 03:83DD: 2E 8F     .word _off028_8F2E_EC
- - - - - - 0x00C3EF 03:83DF: 2E 8F     .word _off028_8F2E_ED
- - - - - - 0x00C3F1 03:83E1: 2E 8F     .word _off028_8F2E_EE
- - - - - - 0x00C3F3 03:83E3: 2E 8F     .word _off028_8F2E_EF
- - - - - - 0x00C3F5 03:83E5: 2E 8F     .word _off028_8F2E_F0
- - - - - - 0x00C3F7 03:83E7: 2E 8F     .word _off028_8F2E_F1
- - - - - - 0x00C3F9 03:83E9: 2E 8F     .word _off028_8F2E_F2
- - - - - - 0x00C3FB 03:83EB: 2E 8F     .word _off028_8F2E_F3
- - - - - - 0x00C3FD 03:83ED: 2E 8F     .word _off028_8F2E_F4
- - - - - - 0x00C3FF 03:83EF: 2E 8F     .word _off028_8F2E_F5
- - - - - - 0x00C401 03:83F1: 2E 8F     .word _off028_8F2E_F6
- - - - - - 0x00C403 03:83F3: 2E 8F     .word _off028_8F2E_F7
- - - - - - 0x00C405 03:83F5: 2E 8F     .word _off028_8F2E_F8
- - - - - - 0x00C407 03:83F7: 2E 8F     .word _off028_8F2E_F9
- - - - - - 0x00C409 03:83F9: 2E 8F     .word _off028_8F2E_FA
- - - - - - 0x00C40B 03:83FB: 2E 8F     .word _off028_8F2E_FB
- - - - - - 0x00C40D 03:83FD: 2E 8F     .word _off028_8F2E_FC
- - - - - - 0x00C40F 03:83FF: 2E 8F     .word _off028_8F2E_FD
- - - - - - 0x00C411 03:8401: 2E 8F     .word _off028_8F2E_FE
- - - - - - 0x00C413 03:8403: 2E 8F     .word _off028_8F2E_FF



_off028_8405_00:
_off028_8405_01:
- D 0 - I - 0x00C415 03:8405: FF        .byte $FF   ; end token



_off028_8406_02:
- D 0 - I - 0x00C416 03:8406: 08        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C417 03:8407: F8        .byte $F8, $59, $00, $F8   ; 
- D 0 - I - 0x00C41B 03:840B: F8        .byte $F8, $59, $C0, $00   ; 
@end:



_off028_840F_03:
- D 0 - I - 0x00C41F 03:840F: 08        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C420 03:8410: F8        .byte $F8, $7D, $00, $F8   ; 
- D 0 - I - 0x00C424 03:8414: F8        .byte $F8, $7D, $C0, $00   ; 
@end:



_off028_8418_04:
- D 0 - I - 0x00C428 03:8418: C7        .byte $C7   ; 



_off028_8419_05:
- D 0 - I - 0x00C429 03:8419: 80        .byte $80   ; 



_off028_841A_06:
- D 0 - I - 0x00C42A 03:841A: D1        .byte $D1   ; 



_off028_841B_07:
- D 0 - I - 0x00C42B 03:841B: 0C        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C42C 03:841C: F8        .byte $F8, $55, $00, $F4   ; 
- D 0 - I - 0x00C430 03:8420: F8        .byte $F8, $57, $00, $FC   ; 
- D 0 - I - 0x00C434 03:8424: F8        .byte $F8, $55, $40, $04   ; 
@end:



_off028_8428_08:
- D 0 - I - 0x00C438 03:8428: 0C        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C439 03:8429: F8        .byte $F8, $93, $00, $FC   ; 
- D 0 - I - 0x00C43D 03:842D: F8        .byte $F8, $91, $00, $F4   ; 
- D 0 - I - 0x00C441 03:8431: F8        .byte $F8, $91, $40, $04   ; 
@end:



_off028_8435_09:
- D 0 - I - 0x00C445 03:8435: 0C        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C446 03:8436: F8        .byte $F8, $95, $00, $FC   ; 
- D 0 - I - 0x00C44A 03:843A: F8        .byte $F8, $91, $00, $F4   ; 
- D 0 - I - 0x00C44E 03:843E: F8        .byte $F8, $91, $40, $04   ; 
@end:



_off028_8442_0A:
- D 0 - I - 0x00C452 03:8442: 0C        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C453 03:8443: F8        .byte $F8, $97, $00, $FC   ; 
- D 0 - I - 0x00C457 03:8447: F8        .byte $F8, $91, $00, $F4   ; 
- D 0 - I - 0x00C45B 03:844B: F8        .byte $F8, $91, $40, $04   ; 
@end:



_off028_844F_0B:
- D 0 - I - 0x00C45F 03:844F: 0C        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C460 03:8450: F8        .byte $F8, $99, $00, $FC   ; 
- D 0 - I - 0x00C464 03:8454: F8        .byte $F8, $91, $00, $F4   ; 
- D 0 - I - 0x00C468 03:8458: F8        .byte $F8, $91, $40, $04   ; 
@end:



_off028_845C_0C:
- D 0 - I - 0x00C46C 03:845C: 0C        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C46D 03:845D: F8        .byte $F8, $9B, $00, $FC   ; 
- D 0 - I - 0x00C471 03:8461: F8        .byte $F8, $91, $00, $F4   ; 
- D 0 - I - 0x00C475 03:8465: F8        .byte $F8, $91, $40, $04   ; 
@end:



_off028_8469_0D:
- D 0 - I - 0x00C479 03:8469: 0C        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C47A 03:846A: F8        .byte $F8, $9D, $00, $FC   ; 
- D 0 - I - 0x00C47E 03:846E: F8        .byte $F8, $91, $00, $F4   ; 
- D 0 - I - 0x00C482 03:8472: F8        .byte $F8, $91, $40, $04   ; 
@end:



_off028_8476_0E:
- D 0 - I - 0x00C486 03:8476: 0C        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C487 03:8477: F8        .byte $F8, $9F, $00, $FC   ; 
- D 0 - I - 0x00C48B 03:847B: F8        .byte $F8, $91, $00, $F4   ; 
- D 0 - I - 0x00C48F 03:847F: F8        .byte $F8, $91, $40, $04   ; 
@end:



_off028_8483_0F:
- D 0 - I - 0x00C493 03:8483: 18        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C494 03:8484: F4        .byte $F4, $5D, $00, $F0   ; 
- D 0 - I - 0x00C498 03:8488: F0        .byte $F0, $5F, $00, $F8   ; 
- D 0 - I - 0x00C49C 03:848C: F0        .byte $F0, $61, $C0, $00   ; 
- D 0 - I - 0x00C4A0 03:8490: 00        .byte $00, $61, $00, $F8   ; 
- D 0 - I - 0x00C4A4 03:8494: 00        .byte $00, $5F, $C0, $00   ; 
- D 0 - I - 0x00C4A8 03:8498: FC        .byte $FC, $5D, $C0, $08   ; 
@end:



_off028_849C_10:
- D 0 - I - 0x00C4AC 03:849C: 20        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C4AD 03:849D: F0        .byte $F0, $63, $00, $F0   ; 
- D 0 - I - 0x00C4B1 03:84A1: F0        .byte $F0, $65, $00, $F8   ; 
- D 0 - I - 0x00C4B5 03:84A5: F0        .byte $F0, $69, $C0, $00   ; 
- D 0 - I - 0x00C4B9 03:84A9: F0        .byte $F0, $67, $C0, $08   ; 
- D 0 - I - 0x00C4BD 03:84AD: 00        .byte $00, $67, $00, $F0   ; 
- D 0 - I - 0x00C4C1 03:84B1: 00        .byte $00, $69, $00, $F8   ; 
- D 0 - I - 0x00C4C5 03:84B5: 00        .byte $00, $65, $C0, $00   ; 
- D 0 - I - 0x00C4C9 03:84B9: 00        .byte $00, $63, $C0, $08   ; 
@end:



_off028_84BD_11:
- D 0 - I - 0x00C4CD 03:84BD: 18        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C4CE 03:84BE: F8        .byte $F8, $6B, $00, $F0   ; 
- D 0 - I - 0x00C4D2 03:84C2: F0        .byte $F0, $6D, $00, $F8   ; 
- D 0 - I - 0x00C4D6 03:84C6: F0        .byte $F0, $6B, $C0, $00   ; 
- D 0 - I - 0x00C4DA 03:84CA: F8        .byte $F8, $6D, $40, $08   ; 
- D 0 - I - 0x00C4DE 03:84CE: 00        .byte $00, $6B, $00, $F8   ; 
- D 0 - I - 0x00C4E2 03:84D2: 00        .byte $00, $6D, $C0, $08   ; 
@end:



_off028_84D6_12:
- D 0 - I - 0x00C4E6 03:84D6: 18        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C4E7 03:84D7: F0        .byte $F0, $7F, $00, $F4   ; 
- D 0 - I - 0x00C4EB 03:84DB: F0        .byte $F0, $81, $00, $FC   ; 
- D 0 - I - 0x00C4EF 03:84DF: F0        .byte $F0, $7F, $40, $04   ; 
- D 0 - I - 0x00C4F3 03:84E3: 00        .byte $00, $7F, $80, $F4   ; 
- D 0 - I - 0x00C4F7 03:84E7: 00        .byte $00, $81, $C0, $FC   ; 
- D 0 - I - 0x00C4FB 03:84EB: 00        .byte $00, $7F, $C0, $04   ; 
@end:



_off028_84EF_13:
- D 0 - I - 0x00C4FF 03:84EF: 20        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C500 03:84F0: F0        .byte $F0, $71, $00, $F0   ; 
- D 0 - I - 0x00C504 03:84F4: F0        .byte $F0, $73, $00, $F8   ; 
- D 0 - I - 0x00C508 03:84F8: F0        .byte $F0, $73, $40, $00   ; 
- D 0 - I - 0x00C50C 03:84FC: F0        .byte $F0, $71, $40, $08   ; 
- D 0 - I - 0x00C510 03:8500: 00        .byte $00, $71, $80, $F0   ; 
- D 0 - I - 0x00C514 03:8504: 00        .byte $00, $73, $80, $F8   ; 
- D 0 - I - 0x00C518 03:8508: 00        .byte $00, $73, $C0, $00   ; 
- D 0 - I - 0x00C51C 03:850C: 00        .byte $00, $71, $C0, $08   ; 
@end:



_off028_8510_14:
- D 0 - I - 0x00C520 03:8510: 20        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C521 03:8511: F0        .byte $F0, $75, $00, $F0   ; 
- D 0 - I - 0x00C525 03:8515: F0        .byte $F0, $77, $00, $F8   ; 
- D 0 - I - 0x00C529 03:8519: F0        .byte $F0, $77, $40, $00   ; 
- D 0 - I - 0x00C52D 03:851D: F0        .byte $F0, $75, $40, $08   ; 
- D 0 - I - 0x00C531 03:8521: 00        .byte $00, $75, $80, $F0   ; 
- D 0 - I - 0x00C535 03:8525: 00        .byte $00, $77, $80, $F8   ; 
- D 0 - I - 0x00C539 03:8529: 00        .byte $00, $77, $C0, $00   ; 
- D 0 - I - 0x00C53D 03:852D: 00        .byte $00, $75, $C0, $08   ; 
@end:



_off028_8531_15:
- D 0 - I - 0x00C541 03:8531: C5        .byte $C5   ; 



_off028_8532_16:
- D 0 - I - 0x00C542 03:8532: BC        .byte $BC   ; 



_off028_8533_17:
- D 0 - I - 0x00C543 03:8533: 04        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C544 03:8534: F8        .byte $F8, $7B, $00, $FC   ; 
@end:



_off028_8538_18:
- D 0 - I - 0x00C548 03:8538: 04        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C549 03:8539: F8        .byte $F8, $7B, $80, $FC   ; 
@end:



_off028_853D_19:
- D 0 - I - 0x00C54D 03:853D: D0        .byte $D0   ; 



_off028_853E_1A:
- D 0 - I - 0x00C54E 03:853E: 18        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C54F 03:853F: F0        .byte $F0, $7F, $00, $F4   ; 
- D 0 - I - 0x00C553 03:8543: F0        .byte $F0, $81, $00, $FC   ; 
- D 0 - I - 0x00C557 03:8547: F0        .byte $F0, $7F, $40, $04   ; 
- D 0 - I - 0x00C55B 03:854B: 00        .byte $00, $7F, $80, $F4   ; 
- D 0 - I - 0x00C55F 03:854F: 00        .byte $00, $81, $C0, $FC   ; 
- D 0 - I - 0x00C563 03:8553: 00        .byte $00, $7F, $C0, $04   ; 
@end:



_off028_8557_1B:
- D 0 - I - 0x00C567 03:8557: 10        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C568 03:8558: F0        .byte $F0, $A9, $00, $F8   ; 
- D 0 - I - 0x00C56C 03:855C: EE        .byte $EE, $AB, $00, $00   ; 
- D 0 - I - 0x00C570 03:8560: 00        .byte $00, $AD, $00, $F4   ; 
- D 0 - I - 0x00C574 03:8564: FE        .byte $FE, $AF, $00, $FC   ; 
@end:



_off028_8568_1C:
- D 0 - I - 0x00C578 03:8568: 0C        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C579 03:8569: F1        .byte $F1, $B1, $00, $FC   ; 
- D 0 - I - 0x00C57D 03:856D: F8        .byte $F8, $B3, $00, $F5   ; 
- D 0 - I - 0x00C581 03:8571: 01        .byte $01, $B5, $00, $FD   ; 
@end:



_off028_8575_1D:
- D 0 - I - 0x00C585 03:8575: 0C        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C586 03:8576: F0        .byte $F0, $B9, $00, $FF   ; 
- D 0 - I - 0x00C58A 03:857A: F0        .byte $F0, $B7, $00, $F7   ; 
- D 0 - I - 0x00C58E 03:857E: 00        .byte $00, $BB, $00, $FA   ; 
@end:



_off028_8582_1E:
- D 0 - I - 0x00C592 03:8582: 10        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C593 03:8583: F0        .byte $F0, $B9, $00, $FF   ; 
- D 0 - I - 0x00C597 03:8587: F0        .byte $F0, $B7, $00, $F7   ; 
- D 0 - I - 0x00C59B 03:858B: 00        .byte $00, $AD, $00, $F4   ; 
- D 0 - I - 0x00C59F 03:858F: FE        .byte $FE, $AF, $00, $FC   ; 
@end:



_off028_8593_1F:
- D 0 - I - 0x00C5A3 03:8593: 0C        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C5A4 03:8594: F0        .byte $F0, $A9, $00, $F8   ; 
- D 0 - I - 0x00C5A8 03:8598: EE        .byte $EE, $AB, $00, $00   ; 
- D 0 - I - 0x00C5AC 03:859C: 00        .byte $00, $BB, $00, $FA   ; 
@end:



_off028_85A0_20:
- D 0 - I - 0x00C5B0 03:85A0: 10        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C5B1 03:85A1: EE        .byte $EE, $BD, $00, $F8   ; 
- D 0 - I - 0x00C5B5 03:85A5: EE        .byte $EE, $BF, $00, $00   ; 
- D 0 - I - 0x00C5B9 03:85A9: FE        .byte $FE, $C1, $00, $F6   ; 
- D 0 - I - 0x00C5BD 03:85AD: FE        .byte $FE, $C3, $00, $FE   ; 
@end:



_off028_85B1_21:
- D 0 - I - 0x00C5C1 03:85B1: 0D        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C5C2 03:85B2: 00        .byte $00, $BB, $00, $FA   ; 
- D 0 - I - 0x00C5C6 03:85B6: 80        .byte $80   ; 80
- D 0 - I - 0x00C5C7 03:85B7: F0        .byte $F0, $C7, $00, $00   ; 
- D 0 - I - 0x00C5CB 03:85BB: F0        .byte $F0, $C5, $00, $F8   ; 
@end:



_off028_85BF_22:
- - - - - - 0x00C5CF 03:85BF: 10        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- - - - - - 0x00C5D0 03:85C0: 00        .byte $00, $DD, $00, $F0   ; 
- - - - - - 0x00C5D4 03:85C4: 00        .byte $00, $D7, $00, $F8   ; 
- - - - - - 0x00C5D8 03:85C8: 00        .byte $00, $D9, $00, $00   ; 
- - - - - - 0x00C5DC 03:85CC: 00        .byte $00, $DB, $00, $08   ; 
@end:



_off028_85D0_23:
- D 0 - I - 0x00C5E0 03:85D0: 11        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C5E1 03:85D1: 00        .byte $00, $D3, $00, $F7   ; 
- D 0 - I - 0x00C5E5 03:85D5: 00        .byte $00, $D5, $00, $FF   ; 
- D 0 - I - 0x00C5E9 03:85D9: 80        .byte $80   ; 80
- D 0 - I - 0x00C5EA 03:85DA: F0        .byte $F0, $CB, $00, $00   ; 
- D 0 - I - 0x00C5EE 03:85DE: F0        .byte $F0, $C9, $00, $F8   ; 
@end:



_off028_85E2_24:
- D 0 - I - 0x00C5F2 03:85E2: 11        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C5F3 03:85E3: 00        .byte $00, $D3, $00, $F7   ; 
- D 0 - I - 0x00C5F7 03:85E7: 00        .byte $00, $D5, $00, $FF   ; 
- D 0 - I - 0x00C5FB 03:85EB: 80        .byte $80   ; 80
- D 0 - I - 0x00C5FC 03:85EC: F0        .byte $F0, $C7, $00, $00   ; 
- D 0 - I - 0x00C600 03:85F0: F0        .byte $F0, $CD, $00, $F8   ; 
@end:



_off028_85F4_25:
- D 0 - I - 0x00C604 03:85F4: 11        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C605 03:85F5: 00        .byte $00, $D3, $00, $F7   ; 
- D 0 - I - 0x00C609 03:85F9: 00        .byte $00, $D5, $00, $FF   ; 
- D 0 - I - 0x00C60D 03:85FD: 80        .byte $80   ; 80
- D 0 - I - 0x00C60E 03:85FE: F2        .byte $F2, $D1, $00, $00   ; 
- D 0 - I - 0x00C612 03:8602: F0        .byte $F0, $CF, $00, $F8   ; 
@end:



_off028_8606_26:
- D 0 - I - 0x00C616 03:8606: 10        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C617 03:8607: 00        .byte $00, $DD, $00, $F0   ; 
- D 0 - I - 0x00C61B 03:860B: 00        .byte $00, $DF, $00, $F8   ; 
- D 0 - I - 0x00C61F 03:860F: FF        .byte $FF, $E1, $00, $00   ; 
- D 0 - I - 0x00C623 03:8613: 00        .byte $00, $E3, $00, $08   ; 
@end:



_off028_8617_27:
- D 0 - I - 0x00C627 03:8617: 14        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C628 03:8618: F0        .byte $F0, $E9, $00, $F6   ; 
- D 0 - I - 0x00C62C 03:861C: F0        .byte $F0, $EB, $00, $FE   ; 
- D 0 - I - 0x00C630 03:8620: F1        .byte $F1, $ED, $00, $06   ; 
- D 0 - I - 0x00C634 03:8624: 00        .byte $00, $D3, $00, $F7   ; 
- D 0 - I - 0x00C638 03:8628: 00        .byte $00, $D5, $00, $FF   ; 
@end:



_off028_862C_28:
- D 0 - I - 0x00C63C 03:862C: 14        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C63D 03:862D: E0        .byte $E0, $EF, $00, $FB   ; 
- D 0 - I - 0x00C641 03:8631: F0        .byte $F0, $F1, $00, $F6   ; 
- D 0 - I - 0x00C645 03:8635: F0        .byte $F0, $F3, $00, $FE   ; 
- D 0 - I - 0x00C649 03:8639: 00        .byte $00, $D3, $00, $F7   ; 
- D 0 - I - 0x00C64D 03:863D: 00        .byte $00, $D5, $00, $FF   ; 
@end:



_off028_8641_29:
- D 0 - I - 0x00C651 03:8641: 04        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C652 03:8642: F8        .byte $F8, $F5, $00, $FB   ; 
@end:



_off028_8646_2A:
- D 0 - I - 0x00C656 03:8646: FB        .byte $FB   ; 



_off028_8647_2B:
- D 0 - I - 0x00C657 03:8647: FC        .byte $FC   ; 



_off028_8648_2C:
- D 0 - I - 0x00C658 03:8648: 04        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C659 03:8649: F8        .byte $F8, $F7, $C0, $FC   ; 
@end:



_off028_864D_2D:
- D 0 - I - 0x00C65D 03:864D: 04        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C65E 03:864E: F8        .byte $F8, $F5, $C0, $FD   ; 
@end:



_off028_8652_2E:
- D 0 - I - 0x00C662 03:8652: 04        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C663 03:8653: F8        .byte $F8, $F7, $C0, $FC   ; 
@end:



_off028_8657_2F:
- D 0 - I - 0x00C667 03:8657: FC        .byte $FC   ; 



_off028_8658_30:
- D 0 - I - 0x00C668 03:8658: FB        .byte $FB   ; 



_off028_8659_31:
- D 0 - I - 0x00C669 03:8659: 18        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C66A 03:865A: F0        .byte $F0, $A9, $03, $F9   ; 
- D 0 - I - 0x00C66E 03:865E: EF        .byte $EF, $AB, $03, $FE   ; 
- D 0 - I - 0x00C672 03:8662: EF        .byte $EF, $AD, $03, $06   ; 
- D 0 - I - 0x00C676 03:8666: 02        .byte $02, $AF, $03, $F0   ; 
- D 0 - I - 0x00C67A 03:866A: 00        .byte $00, $B1, $03, $F8   ; 
- D 0 - I - 0x00C67E 03:866E: FF        .byte $FF, $B3, $03, $00   ; 
@end:



_off028_8672_32:
- D 0 - I - 0x00C682 03:8672: 14        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C683 03:8673: EF        .byte $EF, $B5, $03, $FA   ; 
- D 0 - I - 0x00C687 03:8677: EF        .byte $EF, $B7, $03, $02   ; 
- D 0 - I - 0x00C68B 03:867B: FF        .byte $FF, $B9, $03, $F4   ; 
- D 0 - I - 0x00C68F 03:867F: FF        .byte $FF, $BB, $03, $FC   ; 
- D 0 - I - 0x00C693 03:8683: FF        .byte $FF, $BD, $03, $04   ; 
@end:



_off028_8687_33:
- D 0 - I - 0x00C697 03:8687: 14        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C698 03:8688: F0        .byte $F0, $BF, $03, $F9   ; 
- D 0 - I - 0x00C69C 03:868C: F0        .byte $F0, $C1, $03, $01   ; 
- D 0 - I - 0x00C6A0 03:8690: 04        .byte $04, $C3, $03, $EE   ; 
- D 0 - I - 0x00C6A4 03:8694: 00        .byte $00, $C5, $03, $F4   ; 
- D 0 - I - 0x00C6A8 03:8698: 00        .byte $00, $C7, $03, $FC   ; 
@end:



_off028_869C_34:
- D 0 - I - 0x00C6AC 03:869C: 14        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C6AD 03:869D: F0        .byte $F0, $BF, $03, $F9   ; 
- D 0 - I - 0x00C6B1 03:86A1: F0        .byte $F0, $C1, $03, $01   ; 
- D 0 - I - 0x00C6B5 03:86A5: 02        .byte $02, $C3, $03, $EF   ; 
- D 0 - I - 0x00C6B9 03:86A9: 00        .byte $00, $C9, $03, $F7   ; 
- D 0 - I - 0x00C6BD 03:86AD: 00        .byte $00, $CB, $03, $FF   ; 
@end:



_off028_86B1_35:
- D 0 - I - 0x00C6C1 03:86B1: 18        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C6C2 03:86B2: F0        .byte $F0, $A9, $03, $F9   ; 
- D 0 - I - 0x00C6C6 03:86B6: EF        .byte $EF, $AB, $03, $FE   ; 
- D 0 - I - 0x00C6CA 03:86BA: EF        .byte $EF, $AD, $03, $06   ; 
- D 0 - I - 0x00C6CE 03:86BE: 04        .byte $04, $C3, $03, $EF   ; 
- D 0 - I - 0x00C6D2 03:86C2: 00        .byte $00, $C5, $03, $F5   ; 
- D 0 - I - 0x00C6D6 03:86C6: 00        .byte $00, $CD, $03, $FD   ; 
@end:



_off028_86CA_36:
- D 0 - I - 0x00C6DA 03:86CA: 18        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C6DB 03:86CB: F0        .byte $F0, $CF, $03, $F9   ; 
- D 0 - I - 0x00C6DF 03:86CF: ED        .byte $ED, $D1, $03, $FE   ; 
- D 0 - I - 0x00C6E3 03:86D3: EB        .byte $EB, $D3, $03, $06   ; 
- D 0 - I - 0x00C6E7 03:86D7: 02        .byte $02, $AF, $03, $F0   ; 
- D 0 - I - 0x00C6EB 03:86DB: 00        .byte $00, $B1, $03, $F8   ; 
- D 0 - I - 0x00C6EF 03:86DF: FF        .byte $FF, $B3, $03, $00   ; 
@end:



_off028_86E3_37:
- D 0 - I - 0x00C6F3 03:86E3: 08        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C6F4 03:86E4: F0        .byte $F0, $D9, $00, $F8   ; 
- D 0 - I - 0x00C6F8 03:86E8: F0        .byte $F0, $DB, $00, $00   ; 
@end:



_off028_86EC_38:
- D 0 - I - 0x00C6FC 03:86EC: 08        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C6FD 03:86ED: F1        .byte $F1, $E9, $00, $F8   ; 
- D 0 - I - 0x00C701 03:86F1: F1        .byte $F1, $EB, $00, $00   ; 
@end:



_off028_86F5_39:
- D 0 - I - 0x00C705 03:86F5: 08        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C706 03:86F6: F0        .byte $F0, $ED, $00, $F8   ; 
- D 0 - I - 0x00C70A 03:86FA: F0        .byte $F0, $EF, $00, $00   ; 
@end:



_off028_86FE_3A:
- D 0 - I - 0x00C70E 03:86FE: F8        .byte $F8   ; 



_off028_86FF_3B:
_off028_86FF_3C:
- D 0 - I - 0x00C70F 03:86FF: 11        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C710 03:8700: 03        .byte $03, $07, $01, $F7   ; 
- D 0 - I - 0x00C714 03:8704: 00        .byte $00, $09, $01, $FF   ; 
- D 0 - I - 0x00C718 03:8708: 80        .byte $80   ; 80
- D 0 - I - 0x00C719 03:8709: F3        .byte $F3, $AB, $01, $F9   ; 
- D 0 - I - 0x00C71D 03:870D: F0        .byte $F0, $AD, $01, $FF   ; 
@end:



_off028_8711_3D:
- D 0 - I - 0x00C721 03:8711: 11        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C722 03:8712: 04        .byte $04, $0B, $01, $F7   ; 
- D 0 - I - 0x00C726 03:8716: 01        .byte $01, $0D, $01, $FF   ; 
- D 0 - I - 0x00C72A 03:871A: 80        .byte $80   ; 80
- D 0 - I - 0x00C72B 03:871B: F4        .byte $F4, $AB, $01, $F9   ; 
- D 0 - I - 0x00C72F 03:871F: F1        .byte $F1, $AD, $01, $FF   ; 
@end:



_off028_8723_3E:
- D 0 - I - 0x00C733 03:8723: 11        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C734 03:8724: 03        .byte $03, $0F, $01, $F7   ; 
- D 0 - I - 0x00C738 03:8728: 00        .byte $00, $11, $01, $FF   ; 
- D 0 - I - 0x00C73C 03:872C: 80        .byte $80   ; 80
- D 0 - I - 0x00C73D 03:872D: F3        .byte $F3, $AB, $01, $F9   ; 
- D 0 - I - 0x00C741 03:8731: F0        .byte $F0, $AD, $01, $FF   ; 
@end:



_off028_8735_3F:
- D 0 - I - 0x00C745 03:8735: 11        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C746 03:8736: 02        .byte $02, $17, $01, $F7   ; 
- D 0 - I - 0x00C74A 03:873A: 01        .byte $01, $19, $01, $FF   ; 
- D 0 - I - 0x00C74E 03:873E: 80        .byte $80   ; 80
- D 0 - I - 0x00C74F 03:873F: F2        .byte $F2, $AF, $01, $F7   ; 
- D 0 - I - 0x00C753 03:8743: F1        .byte $F1, $B1, $01, $FF   ; 
@end:



_off028_8747_40:
- D 0 - I - 0x00C757 03:8747: 0D        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C758 03:8748: 02        .byte $02, $1B, $01, $FD   ; 
- D 0 - I - 0x00C75C 03:874C: 80        .byte $80   ; 80
- D 0 - I - 0x00C75D 03:874D: F3        .byte $F3, $AF, $01, $F7   ; 
- D 0 - I - 0x00C761 03:8751: F2        .byte $F2, $B1, $01, $FF   ; 
@end:



_off028_8755_41:
- D 0 - I - 0x00C765 03:8755: 11        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C766 03:8756: 02        .byte $02, $1D, $01, $F7   ; 
- D 0 - I - 0x00C76A 03:875A: 01        .byte $01, $1F, $01, $FF   ; 
- D 0 - I - 0x00C76E 03:875E: 80        .byte $80   ; 80
- D 0 - I - 0x00C76F 03:875F: F2        .byte $F2, $AF, $01, $F7   ; 
- D 0 - I - 0x00C773 03:8763: F1        .byte $F1, $B1, $01, $FF   ; 
@end:



_off028_8767_42:
- D 0 - I - 0x00C777 03:8767: 11        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C778 03:8768: FF        .byte $FF, $35, $01, $F8   ; 
- D 0 - I - 0x00C77C 03:876C: FF        .byte $FF, $37, $01, $00   ; 
- D 0 - I - 0x00C780 03:8770: 80        .byte $80   ; 80
- D 0 - I - 0x00C781 03:8771: EF        .byte $EF, $B7, $01, $F8   ; 
- D 0 - I - 0x00C785 03:8775: EF        .byte $EF, $B9, $01, $00   ; 
@end:



_off028_8779_43:
- D 0 - I - 0x00C789 03:8779: 0D        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C78A 03:877A: 00        .byte $00, $39, $01, $FD   ; 
- D 0 - I - 0x00C78E 03:877E: 80        .byte $80   ; 80
- D 0 - I - 0x00C78F 03:877F: F0        .byte $F0, $B7, $01, $F8   ; 
- D 0 - I - 0x00C793 03:8783: F0        .byte $F0, $B9, $01, $00   ; 
@end:



_off028_8787_44:
- D 0 - I - 0x00C797 03:8787: 0D        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C798 03:8788: FF        .byte $FF, $3B, $01, $FE   ; 
- D 0 - I - 0x00C79C 03:878C: 80        .byte $80   ; 80
- D 0 - I - 0x00C79D 03:878D: EF        .byte $EF, $B7, $01, $F8   ; 
- D 0 - I - 0x00C7A1 03:8791: EF        .byte $EF, $B9, $01, $00   ; 
@end:



_off028_8795_45:
- D 0 - I - 0x00C7A5 03:8795: 11        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C7A6 03:8796: FF        .byte $FF, $25, $01, $F9   ; 
- D 0 - I - 0x00C7AA 03:879A: FF        .byte $FF, $27, $01, $01   ; 
- D 0 - I - 0x00C7AE 03:879E: 80        .byte $80   ; 80
- D 0 - I - 0x00C7AF 03:879F: EF        .byte $EF, $B3, $01, $F7   ; 
- D 0 - I - 0x00C7B3 03:87A3: EF        .byte $EF, $B5, $01, $FF   ; 
@end:



_off028_87A7_46:
- D 0 - I - 0x00C7B7 03:87A7: 0D        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C7B8 03:87A8: 00        .byte $00, $29, $01, $FD   ; 
- D 0 - I - 0x00C7BC 03:87AC: 80        .byte $80   ; 80
- D 0 - I - 0x00C7BD 03:87AD: F0        .byte $F0, $B3, $01, $F7   ; 
- D 0 - I - 0x00C7C1 03:87B1: F0        .byte $F0, $B5, $01, $FF   ; 
@end:



_off028_87B5_47:
- D 0 - I - 0x00C7C5 03:87B5: 11        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C7C6 03:87B6: FF        .byte $FF, $2B, $01, $FA   ; 
- D 0 - I - 0x00C7CA 03:87BA: FF        .byte $FF, $2D, $01, $02   ; 
- D 0 - I - 0x00C7CE 03:87BE: 80        .byte $80   ; 80
- D 0 - I - 0x00C7CF 03:87BF: EF        .byte $EF, $B3, $01, $F7   ; 
- D 0 - I - 0x00C7D3 03:87C3: EF        .byte $EF, $B5, $01, $FF   ; 
@end:



_off028_87C7_48:
- D 0 - I - 0x00C7D7 03:87C7: 0D        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C7D8 03:87C8: 00        .byte $00, $3D, $01, $FC   ; 
- D 0 - I - 0x00C7DC 03:87CC: 80        .byte $80   ; 80
- D 0 - I - 0x00C7DD 03:87CD: F0        .byte $F0, $BB, $01, $F9   ; 
- D 0 - I - 0x00C7E1 03:87D1: F0        .byte $F0, $BD, $01, $01   ; 
@end:



_off028_87D5_49:
- D 0 - I - 0x00C7E5 03:87D5: 0D        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C7E6 03:87D6: 01        .byte $01, $43, $01, $FC   ; 
- D 0 - I - 0x00C7EA 03:87DA: 80        .byte $80   ; 80
- D 0 - I - 0x00C7EB 03:87DB: F1        .byte $F1, $BB, $01, $F9   ; 
- D 0 - I - 0x00C7EF 03:87DF: F1        .byte $F1, $BD, $01, $01   ; 
@end:



_off028_87E3_4A:
- D 0 - I - 0x00C7F3 03:87E3: 0D        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C7F4 03:87E4: 00        .byte $00, $3D, $41, $FC   ; 
- D 0 - I - 0x00C7F8 03:87E8: 80        .byte $80   ; 80
- D 0 - I - 0x00C7F9 03:87E9: F0        .byte $F0, $BB, $01, $F9   ; 
- D 0 - I - 0x00C7FD 03:87ED: F0        .byte $F0, $BD, $01, $01   ; 
@end:



_off028_87F1_4B:
- D 0 - I - 0x00C801 03:87F1: 14        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C802 03:87F2: EA        .byte $EA, $E5, $00, $F9   ; 
- D 0 - I - 0x00C806 03:87F6: EA        .byte $EA, $E5, $40, $00   ; 
- D 0 - I - 0x00C80A 03:87FA: FA        .byte $FA, $E7, $00, $F9   ; 
- D 0 - I - 0x00C80E 03:87FE: FA        .byte $FA, $E7, $40, $00   ; 
- D 0 - I - 0x00C812 03:8802: 0A        .byte $0A, $E9, $00, $FD   ; 
@end:



_off028_8806_4C:
- D 0 - I - 0x00C816 03:8806: 14        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C817 03:8807: EA        .byte $EA, $ED, $00, $02   ; 
- D 0 - I - 0x00C81B 03:880B: F1        .byte $F1, $EB, $00, $FA   ; 
- D 0 - I - 0x00C81F 03:880F: FA        .byte $FA, $F1, $00, $02   ; 
- D 0 - I - 0x00C823 03:8813: 01        .byte $01, $EF, $00, $FA   ; 
- D 0 - I - 0x00C827 03:8817: 0A        .byte $0A, $F3, $00, $F3   ; 
@end:



_off028_881B_4D:
- D 0 - I - 0x00C82B 03:881B: 14        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C82C 03:881C: F2        .byte $F2, $F5, $00, $FC   ; 
- D 0 - I - 0x00C830 03:8820: F2        .byte $F2, $F7, $00, $04   ; 
- D 0 - I - 0x00C834 03:8824: 02        .byte $02, $F9, $00, $F3   ; 
- D 0 - I - 0x00C838 03:8828: 02        .byte $02, $FB, $00, $FB   ; 
- D 0 - I - 0x00C83C 03:882C: 02        .byte $02, $FD, $00, $03   ; 
@end:



_off028_8830_4E:
- D 0 - I - 0x00C840 03:8830: 14        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C841 03:8831: D2        .byte $D2, $E5, $00, $F9   ; 
- D 0 - I - 0x00C845 03:8835: D2        .byte $D2, $E5, $40, $00   ; 
- D 0 - I - 0x00C849 03:8839: E2        .byte $E2, $E7, $00, $F9   ; 
- D 0 - I - 0x00C84D 03:883D: E2        .byte $E2, $E7, $40, $00   ; 
- D 0 - I - 0x00C851 03:8841: F2        .byte $F2, $E9, $00, $FD   ; 
@end:



_off028_8845_4F:
- D 0 - I - 0x00C855 03:8845: 14        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C856 03:8846: D2        .byte $D2, $ED, $00, $02   ; 
- D 0 - I - 0x00C85A 03:884A: D9        .byte $D9, $EB, $00, $FA   ; 
- D 0 - I - 0x00C85E 03:884E: E2        .byte $E2, $F1, $00, $02   ; 
- D 0 - I - 0x00C862 03:8852: E9        .byte $E9, $EF, $00, $FA   ; 
- D 0 - I - 0x00C866 03:8856: F2        .byte $F2, $F3, $00, $F3   ; 
@end:



_off028_885A_50:
- D 0 - I - 0x00C86A 03:885A: 14        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C86B 03:885B: DA        .byte $DA, $F5, $00, $FC   ; 
- D 0 - I - 0x00C86F 03:885F: DA        .byte $DA, $F7, $00, $04   ; 
- D 0 - I - 0x00C873 03:8863: EA        .byte $EA, $F9, $00, $F3   ; 
- D 0 - I - 0x00C877 03:8867: EA        .byte $EA, $FB, $00, $FB   ; 
- D 0 - I - 0x00C87B 03:886B: EA        .byte $EA, $FD, $00, $03   ; 
@end:



_off028_886F_51:
- D 0 - I - 0x00C87F 03:886F: 14        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C880 03:8870: D8        .byte $D8, $E5, $00, $F9   ; 
- D 0 - I - 0x00C884 03:8874: D8        .byte $D8, $E5, $40, $00   ; 
- D 0 - I - 0x00C888 03:8878: E8        .byte $E8, $E7, $00, $F9   ; 
- D 0 - I - 0x00C88C 03:887C: E8        .byte $E8, $E7, $40, $00   ; 
- D 0 - I - 0x00C890 03:8880: F8        .byte $F8, $E9, $00, $FD   ; 
@end:



_off028_8884_52:
- D 0 - I - 0x00C894 03:8884: 14        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C895 03:8885: D8        .byte $D8, $ED, $00, $02   ; 
- D 0 - I - 0x00C899 03:8889: DF        .byte $DF, $EB, $00, $FA   ; 
- D 0 - I - 0x00C89D 03:888D: E8        .byte $E8, $F1, $00, $02   ; 
- D 0 - I - 0x00C8A1 03:8891: EF        .byte $EF, $EF, $00, $FA   ; 
- D 0 - I - 0x00C8A5 03:8895: F8        .byte $F8, $F3, $00, $F3   ; 
@end:



_off028_8899_53:
- D 0 - I - 0x00C8A9 03:8899: 14        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C8AA 03:889A: E0        .byte $E0, $F5, $00, $FC   ; 
- D 0 - I - 0x00C8AE 03:889E: E0        .byte $E0, $F7, $00, $04   ; 
- D 0 - I - 0x00C8B2 03:88A2: F0        .byte $F0, $F9, $00, $F3   ; 
- D 0 - I - 0x00C8B6 03:88A6: F0        .byte $F0, $FB, $00, $FB   ; 
- D 0 - I - 0x00C8BA 03:88AA: F0        .byte $F0, $FD, $00, $03   ; 
@end:



_off028_88AE_54:
- D 0 - I - 0x00C8BE 03:88AE: 08        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C8BF 03:88AF: 1F        .byte $1F, $E1, $00, $E0   ; 
- D 0 - I - 0x00C8C3 03:88B3: 1F        .byte $1F, $E1, $00, $18   ; 
@end:



_off028_88B7_55:
- D 0 - I - 0x00C8C7 03:88B7: 1C        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C8C8 03:88B8: 1F        .byte $1F, $E1, $00, $E0   ; 
- D 0 - I - 0x00C8CC 03:88BC: 1F        .byte $1F, $E1, $00, $18   ; 
- D 0 - I - 0x00C8D0 03:88C0: 2F        .byte $2F, $E3, $00, $E0   ; 
- D 0 - I - 0x00C8D4 03:88C4: 2F        .byte $2F, $DF, $00, $E8   ; 
- D 0 - I - 0x00C8D8 03:88C8: 2F        .byte $2F, $DF, $00, $F8   ; 
- D 0 - I - 0x00C8DC 03:88CC: 2F        .byte $2F, $DF, $00, $08   ; 
- D 0 - I - 0x00C8E0 03:88D0: 2F        .byte $2F, $E3, $00, $18   ; 
@end:



_off028_88D4_56:
- D 0 - I - 0x00C8E4 03:88D4: 1C        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C8E5 03:88D5: 1F        .byte $1F, $E1, $00, $E0   ; 
- D 0 - I - 0x00C8E9 03:88D9: 1F        .byte $1F, $E1, $00, $18   ; 
- D 0 - I - 0x00C8ED 03:88DD: 2F        .byte $2F, $E3, $00, $E0   ; 
- D 0 - I - 0x00C8F1 03:88E1: 2F        .byte $2F, $DF, $00, $F0   ; 
- D 0 - I - 0x00C8F5 03:88E5: 2F        .byte $2F, $DF, $00, $00   ; 
- D 0 - I - 0x00C8F9 03:88E9: 2F        .byte $2F, $DF, $00, $10   ; 
- D 0 - I - 0x00C8FD 03:88ED: 2F        .byte $2F, $E3, $00, $18   ; 
@end:



_off028_88F1_57:
- D 0 - I - 0x00C901 03:88F1: 1C        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C902 03:88F2: 1F        .byte $1F, $E1, $00, $E0   ; 
- D 0 - I - 0x00C906 03:88F6: 1F        .byte $1F, $E1, $00, $18   ; 
- D 0 - I - 0x00C90A 03:88FA: 2F        .byte $2F, $E3, $00, $E0   ; 
- D 0 - I - 0x00C90E 03:88FE: 2F        .byte $2F, $DF, $80, $E8   ; 
- D 0 - I - 0x00C912 03:8902: 2F        .byte $2F, $DF, $80, $F8   ; 
- D 0 - I - 0x00C916 03:8906: 2F        .byte $2F, $DF, $80, $08   ; 
- D 0 - I - 0x00C91A 03:890A: 2F        .byte $2F, $E3, $00, $18   ; 
@end:



_off028_890E_58:
- D 0 - I - 0x00C91E 03:890E: 1C        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C91F 03:890F: 1F        .byte $1F, $E1, $00, $E0   ; 
- D 0 - I - 0x00C923 03:8913: 1F        .byte $1F, $E1, $00, $18   ; 
- D 0 - I - 0x00C927 03:8917: 2F        .byte $2F, $E3, $00, $E0   ; 
- D 0 - I - 0x00C92B 03:891B: 2F        .byte $2F, $DF, $80, $F0   ; 
- D 0 - I - 0x00C92F 03:891F: 2F        .byte $2F, $DF, $80, $00   ; 
- D 0 - I - 0x00C933 03:8923: 2F        .byte $2F, $DF, $80, $10   ; 
- D 0 - I - 0x00C937 03:8927: 2F        .byte $2F, $E3, $00, $18   ; 
@end:



_off028_892B_59:
- D 0 - I - 0x00C93B 03:892B: 04        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C93C 03:892C: F0        .byte $F0, $F3, $00, $00   ; 
@end:



_off028_8930_5A:
- D 0 - I - 0x00C940 03:8930: 0C        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C941 03:8931: FE        .byte $FE, $F9, $00, $F1   ; 
- D 0 - I - 0x00C945 03:8935: F1        .byte $F1, $F5, $00, $F8   ; 
- D 0 - I - 0x00C949 03:8939: F1        .byte $F1, $F7, $00, $00   ; 
@end:



_off028_893D_5B:
- D 0 - I - 0x00C94D 03:893D: 08        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C94E 03:893E: F0        .byte $F0, $FB, $00, $F8   ; 
- D 0 - I - 0x00C952 03:8942: F0        .byte $F0, $FD, $00, $00   ; 
@end:



_off028_8946_5C:
- D 0 - I - 0x00C956 03:8946: 08        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C957 03:8947: F8        .byte $F8, $F9, $00, $F8   ; 
- D 0 - I - 0x00C95B 03:894B: F8        .byte $F8, $FD, $01, $FE   ; 
@end:



_off028_894F_5D:
- D 0 - I - 0x00C95F 03:894F: 08        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C960 03:8950: F8        .byte $F8, $FD, $00, $FA   ; 
- D 0 - I - 0x00C964 03:8954: F8        .byte $F8, $F7, $01, $00   ; 
@end:



_off028_8958_5E:
- D 0 - I - 0x00C968 03:8958: FE        .byte $FE   ; 



_off028_8959_5F:
- D 0 - I - 0x00C969 03:8959: 04        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C96A 03:895A: F8        .byte $F8, $FD, $01, $FC   ; 
@end:



_off028_895E_60:
- D 0 - I - 0x00C96E 03:895E: 08        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C96F 03:895F: F8        .byte $F8, $FD, $01, $FA   ; 
- D 0 - I - 0x00C973 03:8963: F8        .byte $F8, $F7, $00, $00   ; 
@end:



_off028_8967_61:
- D 0 - I - 0x00C977 03:8967: 08        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C978 03:8968: F8        .byte $F8, $F9, $01, $F8   ; 
- D 0 - I - 0x00C97C 03:896C: F8        .byte $F8, $FD, $00, $FE   ; 
@end:



_off028_8970_62:
- D 0 - I - 0x00C980 03:8970: 08        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C981 03:8971: F8        .byte $F8, $FB, $03, $F8   ; 
- D 0 - I - 0x00C985 03:8975: F8        .byte $F8, $FB, $43, $00   ; 
@end:



_off028_8979_63:
- D 0 - I - 0x00C989 03:8979: FA        .byte $FA   ; 



_off028_897A_64:
- D 0 - I - 0x00C98A 03:897A: 0C        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C98B 03:897B: F8        .byte $F8, $F1, $03, $F8   ; 
- D 0 - I - 0x00C98F 03:897F: F8        .byte $F8, $F3, $03, $00   ; 
- D 0 - I - 0x00C993 03:8983: 05        .byte $05, $EF, $03, $F3   ; 
@end:



_off028_8987_65:
- D 0 - I - 0x00C997 03:8987: 0C        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C998 03:8988: F8        .byte $F8, $C5, $03, $F8   ; 
- D 0 - I - 0x00C99C 03:898C: F8        .byte $F8, $C5, $43, $00   ; 
- D 0 - I - 0x00C9A0 03:8990: 08        .byte $08, $DB, $03, $FC   ; 
@end:



_off028_8994_66:
- D 0 - I - 0x00C9A4 03:8994: 10        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C9A5 03:8995: F0        .byte $F0, $D7, $00, $F8   ; 
- D 0 - I - 0x00C9A9 03:8999: EE        .byte $EE, $D9, $00, $00   ; 
- D 0 - I - 0x00C9AD 03:899D: 00        .byte $00, $AD, $00, $F4   ; 
- D 0 - I - 0x00C9B1 03:89A1: FE        .byte $FE, $AF, $00, $FC   ; 
@end:



_off028_89A5_67:
- D 0 - I - 0x00C9B5 03:89A5: 0C        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C9B6 03:89A6: F1        .byte $F1, $DD, $00, $FC   ; 
- D 0 - I - 0x00C9BA 03:89AA: F8        .byte $F8, $B3, $00, $F5   ; 
- D 0 - I - 0x00C9BE 03:89AE: 01        .byte $01, $B5, $00, $FD   ; 
@end:



_off028_89B2_68:
- D 0 - I - 0x00C9C2 03:89B2: 0C        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C9C3 03:89B3: F0        .byte $F0, $E1, $00, $FF   ; 
- D 0 - I - 0x00C9C7 03:89B7: F0        .byte $F0, $DF, $00, $F7   ; 
- D 0 - I - 0x00C9CB 03:89BB: 00        .byte $00, $BB, $00, $FA   ; 
@end:



_off028_89BF_69:
- D 0 - I - 0x00C9CF 03:89BF: 10        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C9D0 03:89C0: F0        .byte $F0, $E1, $00, $FF   ; 
- D 0 - I - 0x00C9D4 03:89C4: F0        .byte $F0, $DF, $00, $F7   ; 
- D 0 - I - 0x00C9D8 03:89C8: 00        .byte $00, $AD, $00, $F4   ; 
- D 0 - I - 0x00C9DC 03:89CC: FE        .byte $FE, $AF, $00, $FC   ; 
@end:



_off028_89D0_6A:
- D 0 - I - 0x00C9E0 03:89D0: 0C        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C9E1 03:89D1: F0        .byte $F0, $D7, $00, $F8   ; 
- D 0 - I - 0x00C9E5 03:89D5: EE        .byte $EE, $D9, $00, $00   ; 
- D 0 - I - 0x00C9E9 03:89D9: 00        .byte $00, $BB, $00, $FA   ; 
@end:



_off028_89DD_6B:
- D 0 - I - 0x00C9ED 03:89DD: 10        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C9EE 03:89DE: F0        .byte $F0, $E3, $00, $F8   ; 
- D 0 - I - 0x00C9F2 03:89E2: F0        .byte $F0, $E3, $40, $00   ; 
- D 0 - I - 0x00C9F6 03:89E6: 00        .byte $00, $E5, $00, $F8   ; 
- D 0 - I - 0x00C9FA 03:89EA: 00        .byte $00, $E5, $40, $00   ; 
@end:



_off028_89EE_6C:
- D 0 - I - 0x00C9FE 03:89EE: 14        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00C9FF 03:89EF: EE        .byte $EE, $E7, $00, $F4   ; 
- D 0 - I - 0x00CA03 03:89F3: EE        .byte $EE, $E7, $40, $04   ; 
- D 0 - I - 0x00CA07 03:89F7: F5        .byte $F5, $E9, $00, $FC   ; 
- D 0 - I - 0x00CA0B 03:89FB: FE        .byte $FE, $EB, $00, $F7   ; 
- D 0 - I - 0x00CA0F 03:89FF: 05        .byte $05, $ED, $00, $00   ; 
@end:



_off028_8A03_6D:
- D 0 - I - 0x00CA13 03:8A03: 10        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CA14 03:8A04: F1        .byte $F1, $F7, $00, $F7   ; 
- D 0 - I - 0x00CA18 03:8A08: F1        .byte $F1, $F9, $00, $FF   ; 
- D 0 - I - 0x00CA1C 03:8A0C: F5        .byte $F5, $FB, $00, $07   ; 
- D 0 - I - 0x00CA20 03:8A10: 01        .byte $01, $FD, $00, $FE   ; 
@end:



_off028_8A14_6E:
- D 0 - I - 0x00CA24 03:8A14: 10        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CA25 03:8A15: F1        .byte $F1, $F7, $00, $F7   ; 
- D 0 - I - 0x00CA29 03:8A19: F1        .byte $F1, $F9, $00, $FF   ; 
- D 0 - I - 0x00CA2D 03:8A1D: F5        .byte $F5, $EB, $00, $07   ; 
- D 0 - I - 0x00CA31 03:8A21: 01        .byte $01, $FD, $00, $FE   ; 
@end:



_off028_8A25_6F:
- D 0 - I - 0x00CA35 03:8A25: 18        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CA36 03:8A26: F0        .byte $F0, $EF, $00, $F4   ; 
- D 0 - I - 0x00CA3A 03:8A2A: F0        .byte $F0, $F1, $00, $FC   ; 
- D 0 - I - 0x00CA3E 03:8A2E: F0        .byte $F0, $F3, $C0, $04   ; 
- D 0 - I - 0x00CA42 03:8A32: 00        .byte $00, $F3, $00, $F4   ; 
- D 0 - I - 0x00CA46 03:8A36: 00        .byte $00, $F5, $00, $FC   ; 
- D 0 - I - 0x00CA4A 03:8A3A: 00        .byte $00, $EF, $C0, $04   ; 
@end:



_off028_8A3E_70:
- D 0 - I - 0x00CA4E 03:8A3E: 18        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CA4F 03:8A3F: F0        .byte $F0, $F3, $80, $F4   ; 
- D 0 - I - 0x00CA53 03:8A43: F0        .byte $F0, $F1, $40, $FC   ; 
- D 0 - I - 0x00CA57 03:8A47: F0        .byte $F0, $EF, $40, $04   ; 
- D 0 - I - 0x00CA5B 03:8A4B: 00        .byte $00, $EF, $80, $F4   ; 
- D 0 - I - 0x00CA5F 03:8A4F: 00        .byte $00, $F5, $40, $FC   ; 
- D 0 - I - 0x00CA63 03:8A53: 00        .byte $00, $F3, $40, $04   ; 
@end:



_off028_8A57_71:
- D 0 - I - 0x00CA67 03:8A57: 18        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CA68 03:8A58: F0        .byte $F0, $EF, $00, $F4   ; 
- D 0 - I - 0x00CA6C 03:8A5C: F0        .byte $F0, $F5, $C0, $FC   ; 
- D 0 - I - 0x00CA70 03:8A60: F0        .byte $F0, $F3, $C0, $04   ; 
- D 0 - I - 0x00CA74 03:8A64: 00        .byte $00, $F3, $00, $F4   ; 
- D 0 - I - 0x00CA78 03:8A68: 00        .byte $00, $F1, $C0, $FC   ; 
- D 0 - I - 0x00CA7C 03:8A6C: 00        .byte $00, $EF, $C0, $04   ; 
@end:



_off028_8A70_72:
- D 0 - I - 0x00CA80 03:8A70: 18        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CA81 03:8A71: F0        .byte $F0, $F3, $80, $F4   ; 
- D 0 - I - 0x00CA85 03:8A75: F0        .byte $F0, $F5, $80, $FC   ; 
- D 0 - I - 0x00CA89 03:8A79: F0        .byte $F0, $EF, $40, $04   ; 
- D 0 - I - 0x00CA8D 03:8A7D: 00        .byte $00, $EF, $80, $F4   ; 
- D 0 - I - 0x00CA91 03:8A81: 00        .byte $00, $F1, $80, $FC   ; 
- D 0 - I - 0x00CA95 03:8A85: 00        .byte $00, $F3, $40, $04   ; 
@end:



_off028_8A89_73:
- D 0 - I - 0x00CA99 03:8A89: 08        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CA9A 03:8A8A: F8        .byte $F8, $D7, $00, $F8   ; 
- D 0 - I - 0x00CA9E 03:8A8E: F8        .byte $F8, $D7, $40, $00   ; 
@end:



_off028_8A92_74:
- D 0 - I - 0x00CAA2 03:8A92: 08        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CAA3 03:8A93: F8        .byte $F8, $D9, $00, $F8   ; 
- D 0 - I - 0x00CAA7 03:8A97: F8        .byte $F8, $D9, $40, $00   ; 
@end:



_off028_8A9B_75:
- D 0 - I - 0x00CAAB 03:8A9B: 08        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CAAC 03:8A9C: F8        .byte $F8, $DB, $00, $F8   ; 
- D 0 - I - 0x00CAB0 03:8AA0: F8        .byte $F8, $DD, $00, $00   ; 
@end:



_off028_8AA4_76:
- D 0 - I - 0x00CAB4 03:8AA4: 08        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CAB5 03:8AA5: F7        .byte $F7, $DF, $00, $F8   ; 
- D 0 - I - 0x00CAB9 03:8AA9: F7        .byte $F7, $E1, $00, $00   ; 
@end:



_off028_8AAD_77:
- D 0 - I - 0x00CABD 03:8AAD: 08        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CABE 03:8AAE: F7        .byte $F7, $E3, $00, $F8   ; 
- D 0 - I - 0x00CAC2 03:8AB2: F7        .byte $F7, $E9, $00, $00   ; 
@end:



_off028_8AB6_78:
- D 0 - I - 0x00CAC6 03:8AB6: 0C        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CAC7 03:8AB7: F9        .byte $F9, $BB, $00, $F4   ; 
- D 0 - I - 0x00CACB 03:8ABB: F8        .byte $F8, $BD, $00, $FC   ; 
- D 0 - I - 0x00CACF 03:8ABF: F6        .byte $F6, $BF, $00, $04   ; 
@end:



_off028_8AC3_79:
- D 0 - I - 0x00CAD3 03:8AC3: 0C        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CAD4 03:8AC4: F6        .byte $F6, $BF, $40, $F4   ; 
- D 0 - I - 0x00CAD8 03:8AC8: F8        .byte $F8, $ED, $00, $FC   ; 
- D 0 - I - 0x00CADC 03:8ACC: F9        .byte $F9, $BB, $40, $04   ; 
@end:



_off028_8AD0_7A:
- D 0 - I - 0x00CAE0 03:8AD0: 10        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CAE1 03:8AD1: F0        .byte $F0, $EF, $00, $F3   ; 
- D 0 - I - 0x00CAE5 03:8AD5: F7        .byte $F7, $F1, $00, $F8   ; 
- D 0 - I - 0x00CAE9 03:8AD9: F8        .byte $F8, $F3, $00, $00   ; 
- D 0 - I - 0x00CAED 03:8ADD: 00        .byte $00, $F5, $00, $07   ; 
@end:



_off028_8AE1_7B:
- D 0 - I - 0x00CAF1 03:8AE1: 10        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CAF2 03:8AE2: F2        .byte $F2, $F7, $00, $F6   ; 
- D 0 - I - 0x00CAF6 03:8AE6: F2        .byte $F2, $F9, $00, $FE   ; 
- D 0 - I - 0x00CAFA 03:8AEA: 02        .byte $02, $FB, $00, $F9   ; 
- D 0 - I - 0x00CAFE 03:8AEE: FC        .byte $FC, $FD, $00, $01   ; 
@end:



_off028_8AF2_7C:
- D 0 - I - 0x00CB02 03:8AF2: 10        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CB03 03:8AF3: F4        .byte $F4, $AB, $00, $F7   ; 
- D 0 - I - 0x00CB07 03:8AF7: EC        .byte $EC, $AD, $00, $FF   ; 
- D 0 - I - 0x00CB0B 03:8AFB: FC        .byte $FC, $AF, $00, $FA   ; 
- D 0 - I - 0x00CB0F 03:8AFF: FC        .byte $FC, $B1, $00, $02   ; 
@end:



_off028_8B03_7D:
- D 0 - I - 0x00CB13 03:8B03: 10        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CB14 03:8B04: F4        .byte $F4, $B3, $00, $FA   ; 
- D 0 - I - 0x00CB18 03:8B08: F4        .byte $F4, $B5, $00, $02   ; 
- D 0 - I - 0x00CB1C 03:8B0C: FC        .byte $FC, $B7, $00, $F7   ; 
- D 0 - I - 0x00CB20 03:8B10: 04        .byte $04, $B9, $00, $FF   ; 
@end:



_off028_8B14_7E:
- D 0 - I - 0x00CB24 03:8B14: 10        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CB25 03:8B15: 00        .byte $00, $EF, $80, $F3   ; 
- D 0 - I - 0x00CB29 03:8B19: F9        .byte $F9, $F1, $80, $F7   ; 
- D 0 - I - 0x00CB2D 03:8B1D: F8        .byte $F8, $F3, $80, $FF   ; 
- D 0 - I - 0x00CB31 03:8B21: F0        .byte $F0, $F5, $80, $07   ; 
@end:



_off028_8B25_7F:
- D 0 - I - 0x00CB35 03:8B25: 10        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CB36 03:8B26: FE        .byte $FE, $F7, $80, $F6   ; 
- D 0 - I - 0x00CB3A 03:8B2A: FE        .byte $FE, $F9, $80, $FE   ; 
- D 0 - I - 0x00CB3E 03:8B2E: EE        .byte $EE, $FB, $80, $F9   ; 
- D 0 - I - 0x00CB42 03:8B32: F4        .byte $F4, $FD, $80, $01   ; 
@end:



_off028_8B36_80:
- D 0 - I - 0x00CB46 03:8B36: 0C        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CB47 03:8B37: F7        .byte $F7, $BB, $80, $F4   ; 
- D 0 - I - 0x00CB4B 03:8B3B: F8        .byte $F8, $BD, $80, $FC   ; 
- D 0 - I - 0x00CB4F 03:8B3F: FA        .byte $FA, $BF, $80, $04   ; 
@end:



_off028_8B43_81:
- D 0 - I - 0x00CB53 03:8B43: 0C        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CB54 03:8B44: FA        .byte $FA, $BF, $C0, $F4   ; 
- D 0 - I - 0x00CB58 03:8B48: F8        .byte $F8, $ED, $80, $FC   ; 
- D 0 - I - 0x00CB5C 03:8B4C: F7        .byte $F7, $BB, $C0, $04   ; 
@end:



_off028_8B50_82:
- D 0 - I - 0x00CB60 03:8B50: 08        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CB61 03:8B51: F8        .byte $F8, $E5, $00, $F8   ; 
- D 0 - I - 0x00CB65 03:8B55: F8        .byte $F8, $E7, $00, $00   ; 
@end:



_off028_8B59_83:
- D 0 - I - 0x00CB69 03:8B59: 08        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CB6A 03:8B5A: F8        .byte $F8, $E9, $00, $F8   ; 
- D 0 - I - 0x00CB6E 03:8B5E: F8        .byte $F8, $EB, $00, $00   ; 
@end:



_off028_8B62_84:
- D 0 - I - 0x00CB72 03:8B62: 20        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CB73 03:8B63: F0        .byte $F0, $C1, $00, $F0   ; 
- D 0 - I - 0x00CB77 03:8B67: F0        .byte $F0, $C3, $00, $F8   ; 
- D 0 - I - 0x00CB7B 03:8B6B: F0        .byte $F0, $C3, $40, $00   ; 
- D 0 - I - 0x00CB7F 03:8B6F: F0        .byte $F0, $C1, $40, $08   ; 
- D 0 - I - 0x00CB83 03:8B73: 00        .byte $00, $C5, $00, $F0   ; 
- D 0 - I - 0x00CB87 03:8B77: 00        .byte $00, $C7, $00, $F8   ; 
- D 0 - I - 0x00CB8B 03:8B7B: 00        .byte $00, $C7, $40, $00   ; 
- D 0 - I - 0x00CB8F 03:8B7F: 00        .byte $00, $C5, $40, $08   ; 
@end:



_off028_8B83_85:
- D 0 - I - 0x00CB93 03:8B83: 20        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CB94 03:8B84: F0        .byte $F0, $C9, $00, $F0   ; 
- D 0 - I - 0x00CB98 03:8B88: F0        .byte $F0, $CB, $00, $F8   ; 
- D 0 - I - 0x00CB9C 03:8B8C: F0        .byte $F0, $CD, $00, $00   ; 
- D 0 - I - 0x00CBA0 03:8B90: F0        .byte $F0, $CF, $00, $08   ; 
- D 0 - I - 0x00CBA4 03:8B94: 00        .byte $00, $D1, $00, $F0   ; 
- D 0 - I - 0x00CBA8 03:8B98: 00        .byte $00, $D3, $00, $F8   ; 
- D 0 - I - 0x00CBAC 03:8B9C: 00        .byte $00, $D5, $00, $00   ; 
- D 0 - I - 0x00CBB0 03:8BA0: 00        .byte $00, $D7, $00, $08   ; 
@end:



_off028_8BA4_86:
- D 0 - I - 0x00CBB4 03:8BA4: 20        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CBB5 03:8BA5: F0        .byte $F0, $D9, $00, $F0   ; 
- D 0 - I - 0x00CBB9 03:8BA9: F0        .byte $F0, $DB, $00, $F8   ; 
- D 0 - I - 0x00CBBD 03:8BAD: F0        .byte $F0, $DD, $00, $00   ; 
- D 0 - I - 0x00CBC1 03:8BB1: F0        .byte $F0, $DF, $00, $08   ; 
- D 0 - I - 0x00CBC5 03:8BB5: 00        .byte $00, $D9, $80, $F0   ; 
- D 0 - I - 0x00CBC9 03:8BB9: 00        .byte $00, $DB, $80, $F8   ; 
- D 0 - I - 0x00CBCD 03:8BBD: 00        .byte $00, $DD, $80, $00   ; 
- D 0 - I - 0x00CBD1 03:8BC1: 00        .byte $00, $DF, $80, $08   ; 
@end:



_off028_8BC5_87:
- D 0 - I - 0x00CBD5 03:8BC5: 20        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CBD6 03:8BC6: F0        .byte $F0, $D1, $80, $F0   ; 
- D 0 - I - 0x00CBDA 03:8BCA: F0        .byte $F0, $D3, $80, $F8   ; 
- D 0 - I - 0x00CBDE 03:8BCE: F0        .byte $F0, $D5, $80, $00   ; 
- D 0 - I - 0x00CBE2 03:8BD2: F0        .byte $F0, $D7, $80, $08   ; 
- D 0 - I - 0x00CBE6 03:8BD6: 00        .byte $00, $C9, $80, $F0   ; 
- D 0 - I - 0x00CBEA 03:8BDA: 00        .byte $00, $CB, $80, $F8   ; 
- D 0 - I - 0x00CBEE 03:8BDE: 00        .byte $00, $CD, $80, $00   ; 
- D 0 - I - 0x00CBF2 03:8BE2: 00        .byte $00, $CF, $80, $08   ; 
@end:



_off028_8BE6_88:
- D 0 - I - 0x00CBF6 03:8BE6: 20        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CBF7 03:8BE7: F0        .byte $F0, $C5, $80, $F0   ; 
- D 0 - I - 0x00CBFB 03:8BEB: F0        .byte $F0, $C7, $80, $F8   ; 
- D 0 - I - 0x00CBFF 03:8BEF: F0        .byte $F0, $C7, $C0, $00   ; 
- D 0 - I - 0x00CC03 03:8BF3: F0        .byte $F0, $C5, $C0, $08   ; 
- D 0 - I - 0x00CC07 03:8BF7: 00        .byte $00, $C1, $80, $F0   ; 
- D 0 - I - 0x00CC0B 03:8BFB: 00        .byte $00, $C3, $80, $F8   ; 
- D 0 - I - 0x00CC0F 03:8BFF: 00        .byte $00, $C3, $C0, $00   ; 
- D 0 - I - 0x00CC13 03:8C03: 00        .byte $00, $C1, $C0, $08   ; 
@end:



_off028_8C07_89:
- D 0 - I - 0x00CC17 03:8C07: 20        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CC18 03:8C08: F0        .byte $F0, $D9, $00, $F0   ; 
- D 0 - I - 0x00CC1C 03:8C0C: F0        .byte $F0, $DB, $00, $F8   ; 
- D 0 - I - 0x00CC20 03:8C10: F0        .byte $F0, $DB, $40, $00   ; 
- D 0 - I - 0x00CC24 03:8C14: F0        .byte $F0, $D9, $40, $08   ; 
- D 0 - I - 0x00CC28 03:8C18: 00        .byte $00, $DD, $00, $F0   ; 
- D 0 - I - 0x00CC2C 03:8C1C: 00        .byte $00, $DF, $00, $F8   ; 
- D 0 - I - 0x00CC30 03:8C20: 00        .byte $00, $DF, $40, $00   ; 
- D 0 - I - 0x00CC34 03:8C24: 00        .byte $00, $DD, $40, $08   ; 
@end:



_off028_8C28_8A:
- D 0 - I - 0x00CC38 03:8C28: 20        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CC39 03:8C29: EE        .byte $EE, $E1, $00, $F2   ; 
- D 0 - I - 0x00CC3D 03:8C2D: EE        .byte $EE, $E3, $00, $FA   ; 
- D 0 - I - 0x00CC41 03:8C31: EE        .byte $EE, $E5, $00, $02   ; 
- D 0 - I - 0x00CC45 03:8C35: EE        .byte $EE, $E7, $00, $0A   ; 
- D 0 - I - 0x00CC49 03:8C39: FE        .byte $FE, $E9, $00, $F2   ; 
- D 0 - I - 0x00CC4D 03:8C3D: FE        .byte $FE, $EB, $00, $FA   ; 
- D 0 - I - 0x00CC51 03:8C41: FE        .byte $FE, $ED, $00, $02   ; 
- D 0 - I - 0x00CC55 03:8C45: FE        .byte $FE, $EF, $00, $0A   ; 
@end:



_off028_8C49_8B:
- D 0 - I - 0x00CC59 03:8C49: 20        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CC5A 03:8C4A: F0        .byte $F0, $F1, $00, $F0   ; 
- D 0 - I - 0x00CC5E 03:8C4E: F0        .byte $F0, $F3, $00, $F8   ; 
- D 0 - I - 0x00CC62 03:8C52: F0        .byte $F0, $F5, $00, $00   ; 
- D 0 - I - 0x00CC66 03:8C56: F0        .byte $F0, $F7, $00, $08   ; 
- D 0 - I - 0x00CC6A 03:8C5A: 00        .byte $00, $F1, $80, $F0   ; 
- D 0 - I - 0x00CC6E 03:8C5E: 00        .byte $00, $F3, $80, $F8   ; 
- D 0 - I - 0x00CC72 03:8C62: 00        .byte $00, $F5, $80, $00   ; 
- D 0 - I - 0x00CC76 03:8C66: 00        .byte $00, $F7, $80, $08   ; 
@end:



_off028_8C6A_8C:
- D 0 - I - 0x00CC7A 03:8C6A: 20        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CC7B 03:8C6B: F2        .byte $F2, $E9, $80, $F2   ; 
- D 0 - I - 0x00CC7F 03:8C6F: F2        .byte $F2, $EB, $80, $FA   ; 
- D 0 - I - 0x00CC83 03:8C73: F2        .byte $F2, $ED, $80, $02   ; 
- D 0 - I - 0x00CC87 03:8C77: F2        .byte $F2, $EF, $80, $0A   ; 
- D 0 - I - 0x00CC8B 03:8C7B: 02        .byte $02, $E1, $80, $F2   ; 
- D 0 - I - 0x00CC8F 03:8C7F: 02        .byte $02, $E3, $80, $FA   ; 
- D 0 - I - 0x00CC93 03:8C83: 02        .byte $02, $E5, $80, $02   ; 
- D 0 - I - 0x00CC97 03:8C87: 02        .byte $02, $E7, $80, $0A   ; 
@end:



_off028_8C8B_8D:
- D 0 - I - 0x00CC9B 03:8C8B: 20        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CC9C 03:8C8C: F0        .byte $F0, $DD, $80, $F0   ; 
- D 0 - I - 0x00CCA0 03:8C90: F0        .byte $F0, $DF, $80, $F8   ; 
- D 0 - I - 0x00CCA4 03:8C94: F0        .byte $F0, $DF, $C0, $00   ; 
- D 0 - I - 0x00CCA8 03:8C98: F0        .byte $F0, $DD, $C0, $08   ; 
- D 0 - I - 0x00CCAC 03:8C9C: 00        .byte $00, $D9, $80, $F0   ; 
- D 0 - I - 0x00CCB0 03:8CA0: 00        .byte $00, $DB, $80, $F8   ; 
- D 0 - I - 0x00CCB4 03:8CA4: 00        .byte $00, $DB, $C0, $00   ; 
- D 0 - I - 0x00CCB8 03:8CA8: 00        .byte $00, $D9, $C0, $08   ; 
@end:



_off028_8CAC_8E:
- D 0 - I - 0x00CCBC 03:8CAC: 18        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CCBD 03:8CAD: F0        .byte $F0, $F9, $00, $F4   ; 
- D 0 - I - 0x00CCC1 03:8CB1: F0        .byte $F0, $FB, $00, $FC   ; 
- D 0 - I - 0x00CCC5 03:8CB5: F0        .byte $F0, $FD, $00, $04   ; 
- D 0 - I - 0x00CCC9 03:8CB9: 00        .byte $00, $FD, $C0, $F4   ; 
- D 0 - I - 0x00CCCD 03:8CBD: 00        .byte $00, $FB, $C0, $FC   ; 
- D 0 - I - 0x00CCD1 03:8CC1: 00        .byte $00, $F9, $C0, $04   ; 
@end:



_off028_8CC5_8F:
- D 0 - I - 0x00CCD5 03:8CC5: EB        .byte $EB   ; 



_off028_8CC6_90:
- D 0 - I - 0x00CCD6 03:8CC6: 38        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CCD7 03:8CC7: E0        .byte $E0, $C5, $00, $F0   ; 
- D 0 - I - 0x00CCDB 03:8CCB: E0        .byte $E0, $C7, $00, $F8   ; 
- D 0 - I - 0x00CCDF 03:8CCF: E0        .byte $E0, $C9, $00, $00   ; 
- D 0 - I - 0x00CCE3 03:8CD3: E0        .byte $E0, $CB, $00, $08   ; 
- D 0 - I - 0x00CCE7 03:8CD7: F0        .byte $F0, $CD, $00, $F1   ; 
- D 0 - I - 0x00CCEB 03:8CDB: F0        .byte $F0, $CF, $00, $F9   ; 
- D 0 - I - 0x00CCEF 03:8CDF: F0        .byte $F0, $D1, $00, $01   ; 
- D 0 - I - 0x00CCF3 03:8CE3: F0        .byte $F0, $D3, $00, $07   ; 
- D 0 - I - 0x00CCF7 03:8CE7: 00        .byte $00, $D5, $00, $F0   ; 
- D 0 - I - 0x00CCFB 03:8CEB: 00        .byte $00, $D7, $00, $F8   ; 
- D 0 - I - 0x00CCFF 03:8CEF: 00        .byte $00, $D9, $00, $00   ; 
- D 0 - I - 0x00CD03 03:8CF3: 00        .byte $00, $DB, $00, $08   ; 
- D 0 - I - 0x00CD07 03:8CF7: 10        .byte $10, $DD, $00, $F2   ; 
- D 0 - I - 0x00CD0B 03:8CFB: 10        .byte $10, $DF, $00, $FA   ; 
@end:



_off028_8CFF_91:
- D 0 - I - 0x00CD0F 03:8CFF: 38        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CD10 03:8D00: E0        .byte $E0, $E1, $00, $EF   ; 
- D 0 - I - 0x00CD14 03:8D04: E0        .byte $E0, $E3, $00, $F7   ; 
- D 0 - I - 0x00CD18 03:8D08: E0        .byte $E0, $E9, $00, $FF   ; 
- D 0 - I - 0x00CD1C 03:8D0C: E0        .byte $E0, $EB, $00, $07   ; 
- D 0 - I - 0x00CD20 03:8D10: F0        .byte $F0, $ED, $00, $F0   ; 
- D 0 - I - 0x00CD24 03:8D14: F0        .byte $F0, $EF, $00, $F8   ; 
- D 0 - I - 0x00CD28 03:8D18: F0        .byte $F0, $F1, $00, $00   ; 
- D 0 - I - 0x00CD2C 03:8D1C: F0        .byte $F0, $F3, $00, $08   ; 
- D 0 - I - 0x00CD30 03:8D20: 00        .byte $00, $D5, $00, $EF   ; 
- D 0 - I - 0x00CD34 03:8D24: 00        .byte $00, $D7, $00, $F7   ; 
- D 0 - I - 0x00CD38 03:8D28: 00        .byte $00, $F5, $00, $FF   ; 
- D 0 - I - 0x00CD3C 03:8D2C: 00        .byte $00, $F7, $00, $07   ; 
- D 0 - I - 0x00CD40 03:8D30: 10        .byte $10, $F9, $00, $F2   ; 
- D 0 - I - 0x00CD44 03:8D34: 10        .byte $10, $DF, $00, $FA   ; 
@end:



_off028_8D38_92:
- D 0 - I - 0x00CD48 03:8D38: FD        .byte $FD   ; 



_off028_8D39_93:
- D 0 - I - 0x00CD49 03:8D39: FE        .byte $FE   ; 



_off028_8D3A_94:
- D 0 - I - 0x00CD4A 03:8D3A: 04        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CD4B 03:8D3B: F8        .byte $F8, $DD, $00, $FC   ; 
@end:



_off028_8D3F_95:
- D 0 - I - 0x00CD4F 03:8D3F: 04        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CD50 03:8D40: F8        .byte $F8, $DF, $00, $FC   ; 
@end:



_off028_8D44_96:
- D 0 - I - 0x00CD54 03:8D44: 04        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CD55 03:8D45: F8        .byte $F8, $E1, $00, $FC   ; 
@end:



_off028_8D49_97:
- D 0 - I - 0x00CD59 03:8D49: 04        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CD5A 03:8D4A: F8        .byte $F8, $E3, $00, $FC   ; 
@end:



_off028_8D4E_98:
- D 0 - I - 0x00CD5E 03:8D4E: 08        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CD5F 03:8D4F: F8        .byte $F8, $E9, $00, $F8   ; 
- D 0 - I - 0x00CD63 03:8D53: F8        .byte $F8, $EB, $00, $00   ; 
@end:



_off028_8D57_99:
- D 0 - I - 0x00CD67 03:8D57: 08        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CD68 03:8D58: F8        .byte $F8, $ED, $00, $F8   ; 
- D 0 - I - 0x00CD6C 03:8D5C: F8        .byte $F8, $EF, $00, $00   ; 
@end:



_off028_8D60_9A:
- D 0 - I - 0x00CD70 03:8D60: 08        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CD71 03:8D61: F8        .byte $F8, $F1, $00, $F8   ; 
- D 0 - I - 0x00CD75 03:8D65: F8        .byte $F8, $F3, $00, $00   ; 
@end:



_off028_8D69_9B:
- D 0 - I - 0x00CD79 03:8D69: 08        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CD7A 03:8D6A: F8        .byte $F8, $F5, $00, $F8   ; 
- D 0 - I - 0x00CD7E 03:8D6E: F8        .byte $F8, $F7, $00, $00   ; 
@end:



_off028_8D72_9C:
- D 0 - I - 0x00CD82 03:8D72: 04        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CD83 03:8D73: F8        .byte $F8, $F9, $00, $FC   ; 
@end:



_off028_8D77_9D:
- D 0 - I - 0x00CD87 03:8D77: 08        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CD88 03:8D78: F8        .byte $F8, $FB, $00, $F8   ; 
- D 0 - I - 0x00CD8C 03:8D7C: F8        .byte $F8, $FD, $00, $00   ; 
@end:



_off028_8D80_9E:
- D 0 - I - 0x00CD90 03:8D80: 0C        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CD91 03:8D81: F8        .byte $F8, $CB, $00, $F5   ; 
- D 0 - I - 0x00CD95 03:8D85: F8        .byte $F8, $CD, $00, $FD   ; 
- D 0 - I - 0x00CD99 03:8D89: F0        .byte $F0, $CF, $00, $04   ; 
@end:



_off028_8D8D_9F:
- D 0 - I - 0x00CD9D 03:8D8D: 0C        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CD9E 03:8D8E: F8        .byte $F8, $D1, $00, $F7   ; 
- D 0 - I - 0x00CDA2 03:8D92: F9        .byte $F9, $D3, $00, $FF   ; 
- D 0 - I - 0x00CDA6 03:8D96: F0        .byte $F0, $D5, $00, $05   ; 
@end:



_off028_8D9A_A0:
- D 0 - I - 0x00CDAA 03:8D9A: 0C        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CDAB 03:8D9B: F8        .byte $F8, $D7, $00, $F8   ; 
- D 0 - I - 0x00CDAF 03:8D9F: F8        .byte $F8, $D9, $00, $00   ; 
- D 0 - I - 0x00CDB3 03:8DA3: F4        .byte $F4, $DB, $00, $08   ; 
@end:



_off028_8DA7_A1:
- D 0 - I - 0x00CDB7 03:8DA7: 20        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CDB8 03:8DA8: F0        .byte $F0, $B9, $00, $F0   ; 
- D 0 - I - 0x00CDBC 03:8DAC: F0        .byte $F0, $BB, $00, $F8   ; 
- D 0 - I - 0x00CDC0 03:8DB0: F0        .byte $F0, $BD, $00, $00   ; 
- D 0 - I - 0x00CDC4 03:8DB4: F0        .byte $F0, $BF, $00, $08   ; 
- D 0 - I - 0x00CDC8 03:8DB8: 00        .byte $00, $C5, $00, $F0   ; 
- D 0 - I - 0x00CDCC 03:8DBC: 00        .byte $00, $C7, $00, $F8   ; 
- D 0 - I - 0x00CDD0 03:8DC0: 00        .byte $00, $BB, $C0, $00   ; 
- D 0 - I - 0x00CDD4 03:8DC4: 00        .byte $00, $C9, $00, $08   ; 
@end:



_off028_8DC8_A2:
- D 0 - I - 0x00CDD8 03:8DC8: 20        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CDD9 03:8DC9: F0        .byte $F0, $C5, $80, $F0   ; 
- D 0 - I - 0x00CDDD 03:8DCD: F0        .byte $F0, $C7, $80, $F8   ; 
- D 0 - I - 0x00CDE1 03:8DD1: F0        .byte $F0, $BB, $40, $00   ; 
- D 0 - I - 0x00CDE5 03:8DD5: F0        .byte $F0, $C9, $80, $08   ; 
- D 0 - I - 0x00CDE9 03:8DD9: 00        .byte $00, $B9, $80, $F0   ; 
- D 0 - I - 0x00CDED 03:8DDD: 00        .byte $00, $BB, $80, $F8   ; 
- D 0 - I - 0x00CDF1 03:8DE1: 00        .byte $00, $BD, $80, $00   ; 
- D 0 - I - 0x00CDF5 03:8DE5: 00        .byte $00, $BF, $80, $08   ; 
@end:



_off028_8DE9_A3:
- D 0 - I - 0x00CDF9 03:8DE9: 20        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CDFA 03:8DEA: F0        .byte $F0, $C9, $C0, $F0   ; 
- D 0 - I - 0x00CDFE 03:8DEE: F0        .byte $F0, $BB, $00, $F8   ; 
- D 0 - I - 0x00CE02 03:8DF2: F0        .byte $F0, $C7, $C0, $00   ; 
- D 0 - I - 0x00CE06 03:8DF6: F0        .byte $F0, $C5, $C0, $08   ; 
- D 0 - I - 0x00CE0A 03:8DFA: 00        .byte $00, $BF, $C0, $F0   ; 
- D 0 - I - 0x00CE0E 03:8DFE: 00        .byte $00, $BD, $C0, $F8   ; 
- D 0 - I - 0x00CE12 03:8E02: 00        .byte $00, $BB, $C0, $00   ; 
- D 0 - I - 0x00CE16 03:8E06: 00        .byte $00, $B9, $C0, $08   ; 
@end:



_off028_8E0A_A4:
- D 0 - I - 0x00CE1A 03:8E0A: 20        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CE1B 03:8E0B: F0        .byte $F0, $BF, $40, $F0   ; 
- D 0 - I - 0x00CE1F 03:8E0F: F0        .byte $F0, $BD, $40, $F8   ; 
- D 0 - I - 0x00CE23 03:8E13: F0        .byte $F0, $BB, $40, $00   ; 
- D 0 - I - 0x00CE27 03:8E17: F0        .byte $F0, $B9, $40, $08   ; 
- D 0 - I - 0x00CE2B 03:8E1B: 00        .byte $00, $C9, $40, $F0   ; 
- D 0 - I - 0x00CE2F 03:8E1F: 00        .byte $00, $BB, $80, $F8   ; 
- D 0 - I - 0x00CE33 03:8E23: 00        .byte $00, $C7, $40, $00   ; 
- D 0 - I - 0x00CE37 03:8E27: 00        .byte $00, $C5, $40, $08   ; 
@end:



_off028_8E2B_A5:
- D 0 - I - 0x00CE3B 03:8E2B: 08        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CE3C 03:8E2C: F8        .byte $F8, $B5, $00, $F8   ; 
- D 0 - I - 0x00CE40 03:8E30: F8        .byte $F8, $B5, $40, $00   ; 
@end:



_off028_8E34_A6:
- D 0 - I - 0x00CE44 03:8E34: 08        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CE45 03:8E35: F8        .byte $F8, $B7, $00, $F8   ; 
- D 0 - I - 0x00CE49 03:8E39: F8        .byte $F8, $B7, $40, $00   ; 
@end:



_off028_8E3D_A7:
- D 0 - I - 0x00CE4D 03:8E3D: 18        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CE4E 03:8E3E: F0        .byte $F0, $D7, $00, $F4   ; 
- D 0 - I - 0x00CE52 03:8E42: F0        .byte $F0, $D9, $00, $FC   ; 
- D 0 - I - 0x00CE56 03:8E46: F0        .byte $F0, $DB, $00, $04   ; 
- D 0 - I - 0x00CE5A 03:8E4A: 00        .byte $00, $DB, $C0, $F4   ; 
- D 0 - I - 0x00CE5E 03:8E4E: 00        .byte $00, $D9, $C0, $FC   ; 
- D 0 - I - 0x00CE62 03:8E52: 00        .byte $00, $D7, $C0, $04   ; 
@end:



_off028_8E56_A8:
- D 0 - I - 0x00CE66 03:8E56: 08        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CE67 03:8E57: F8        .byte $F8, $D5, $00, $F8   ; 
- D 0 - I - 0x00CE6B 03:8E5B: F8        .byte $F8, $D7, $00, $00   ; 
@end:



_off028_8E5F_A9:
- D 0 - I - 0x00CE6F 03:8E5F: 08        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CE70 03:8E60: F8        .byte $F8, $D9, $00, $F8   ; 
- D 0 - I - 0x00CE74 03:8E64: F8        .byte $F8, $DB, $00, $00   ; 
@end:



_off028_8E68_AA:
- D 0 - I - 0x00CE78 03:8E68: 08        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CE79 03:8E69: F8        .byte $F8, $DD, $00, $F8   ; 
- D 0 - I - 0x00CE7D 03:8E6D: F8        .byte $F8, $DD, $40, $00   ; 
@end:



_off028_8E71_AB:
- D 0 - I - 0x00CE81 03:8E71: 08        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CE82 03:8E72: F8        .byte $F8, $DF, $00, $F8   ; 
- D 0 - I - 0x00CE86 03:8E76: F8        .byte $F8, $DF, $40, $00   ; 
@end:



_off028_8E7A_AC:
- D 0 - I - 0x00CE8A 03:8E7A: F0        .byte $F0   ; 



_off028_8E7B_AD:
- D 0 - I - 0x00CE8B 03:8E7B: F1        .byte $F1   ; 



_off028_8E7C_AE:
- D 0 - I - 0x00CE8C 03:8E7C: 04        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CE8D 03:8E7D: F8        .byte $F8, $E3, $80, $FC   ; 
@end:



_off028_8E81_AF:
- D 0 - I - 0x00CE91 03:8E81: 04        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CE92 03:8E82: F8        .byte $F8, $E1, $80, $FC   ; 
@end:



_off028_8E86_B0:
- D 0 - I - 0x00CE96 03:8E86: F4        .byte $F4   ; 



_off028_8E87_B1:
- D 0 - I - 0x00CE97 03:8E87: F5        .byte $F5   ; 



_off028_8E88_B2:
- D 0 - I - 0x00CE98 03:8E88: 04        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CE99 03:8E89: F8        .byte $F8, $EB, $80, $FC   ; 
@end:



_off028_8E8D_B3:
- D 0 - I - 0x00CE9D 03:8E8D: 04        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CE9E 03:8E8E: F8        .byte $F8, $E9, $80, $FC   ; 
@end:



_off028_8E92_B4:
- D 0 - I - 0x00CEA2 03:8E92: 08        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CEA3 03:8E93: F8        .byte $F8, $D7, $00, $F8   ; 
- D 0 - I - 0x00CEA7 03:8E97: F8        .byte $F8, $D7, $40, $00   ; 
@end:



_off028_8E9B_B5:
- D 0 - I - 0x00CEAB 03:8E9B: 08        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CEAC 03:8E9C: F8        .byte $F8, $D9, $00, $F8   ; 
- D 0 - I - 0x00CEB0 03:8EA0: F8        .byte $F8, $D9, $40, $00   ; 
@end:



_off028_8EA4_B6:
- D 0 - I - 0x00CEB4 03:8EA4: 08        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CEB5 03:8EA5: F8        .byte $F8, $DB, $00, $F8   ; 
- D 0 - I - 0x00CEB9 03:8EA9: F8        .byte $F8, $DB, $40, $00   ; 
@end:



_off028_8EAD_B7:
- D 0 - I - 0x00CEBD 03:8EAD: 08        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CEBE 03:8EAE: F8        .byte $F8, $DD, $00, $F8   ; 
- D 0 - I - 0x00CEC2 03:8EB2: F8        .byte $F8, $DD, $40, $00   ; 
@end:



_off028_8EB6_B8:
- D 0 - I - 0x00CEC6 03:8EB6: 2C        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CEC7 03:8EB7: 00        .byte $00, $CB, $00, $00   ; 
- D 0 - I - 0x00CECB 03:8EBB: 10        .byte $10, $CD, $00, $00   ; 
- D 0 - I - 0x00CECF 03:8EBF: 20        .byte $20, $CF, $00, $00   ; 
- D 0 - I - 0x00CED3 03:8EC3: 2E        .byte $2E, $D1, $00, $08   ; 
- D 0 - I - 0x00CED7 03:8EC7: 2E        .byte $2E, $D3, $00, $10   ; 
- D 0 - I - 0x00CEDB 03:8ECB: 2E        .byte $2E, $D5, $00, $18   ; 
- D 0 - I - 0x00CEDF 03:8ECF: 2E        .byte $2E, $D7, $00, $20   ; 
- D 0 - I - 0x00CEE3 03:8ED3: 30        .byte $30, $DB, $00, $28   ; 
- D 0 - I - 0x00CEE7 03:8ED7: 30        .byte $30, $DD, $00, $30   ; 
- D 0 - I - 0x00CEEB 03:8EDB: 30        .byte $30, $DF, $00, $38   ; 
- D 0 - I - 0x00CEEF 03:8EDF: 2E        .byte $2E, $E1, $00, $40   ; 
@end:



_off028_8EE3_B9:
- D 0 - I - 0x00CEF3 03:8EE3: 04        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CEF4 03:8EE4: 00        .byte $00, $D9, $00, $00   ; 
@end:



_off028_8EE8_BA:
- D 0 - I - 0x00CEF8 03:8EE8: 24        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CEF9 03:8EE9: F5        .byte $F5, $C1, $00, $E7   ; 
- D 0 - I - 0x00CEFD 03:8EED: F0        .byte $F0, $C3, $00, $EF   ; 
- D 0 - I - 0x00CF01 03:8EF1: F0        .byte $F0, $C5, $00, $F7   ; 
- D 0 - I - 0x00CF05 03:8EF5: F0        .byte $F0, $C7, $00, $FF   ; 
- D 0 - I - 0x00CF09 03:8EF9: F0        .byte $F0, $C9, $00, $07   ; 
- D 0 - I - 0x00CF0D 03:8EFD: 00        .byte $00, $CB, $00, $EF   ; 
- D 0 - I - 0x00CF11 03:8F01: 00        .byte $00, $CD, $00, $F7   ; 
- D 0 - I - 0x00CF15 03:8F05: 00        .byte $00, $CF, $00, $FF   ; 
- D 0 - I - 0x00CF19 03:8F09: 00        .byte $00, $D1, $00, $07   ; 
@end:



_off028_8F0D_BB:
- D 0 - I - 0x00CF1D 03:8F0D: 20        .byte @end - * - $01   ; total data size
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00CF1E 03:8F0E: F8        .byte $F8, $D3, $00, $E5   ; 
- D 0 - I - 0x00CF22 03:8F12: F8        .byte $F8, $D5, $00, $ED   ; 
- D 0 - I - 0x00CF26 03:8F16: F0        .byte $F0, $D7, $00, $F5   ; 
- D 0 - I - 0x00CF2A 03:8F1A: F0        .byte $F0, $D9, $00, $FD   ; 
- D 0 - I - 0x00CF2E 03:8F1E: F0        .byte $F0, $DB, $00, $05   ; 
- D 0 - I - 0x00CF32 03:8F22: 00        .byte $00, $DD, $00, $F5   ; 
- D 0 - I - 0x00CF36 03:8F26: 00        .byte $00, $DF, $00, $FD   ; 
- D 0 - I - 0x00CF3A 03:8F2A: 00        .byte $00, $E1, $00, $05   ; 
@end:



_off028_8F2E_BC:
_off028_8F2E_BD:
_off028_8F2E_BE:
_off028_8F2E_BF:
_off028_8F2E_C0:
_off028_8F2E_C1:
_off028_8F2E_C2:
_off028_8F2E_C3:
_off028_8F2E_C4:
_off028_8F2E_C5:
_off028_8F2E_C6:
_off028_8F2E_C7:
_off028_8F2E_C8:
_off028_8F2E_C9:
_off028_8F2E_CA:
_off028_8F2E_CB:
_off028_8F2E_CC:
_off028_8F2E_CD:
_off028_8F2E_CE:
_off028_8F2E_CF:
_off028_8F2E_D0:
_off028_8F2E_D1:
_off028_8F2E_D2:
_off028_8F2E_D3:
_off028_8F2E_D4:
_off028_8F2E_D5:
_off028_8F2E_D6:
_off028_8F2E_D7:
_off028_8F2E_D8:
_off028_8F2E_D9:
_off028_8F2E_DA:
_off028_8F2E_DB:
_off028_8F2E_DC:
_off028_8F2E_DD:
_off028_8F2E_DE:
_off028_8F2E_DF:
_off028_8F2E_E0:
_off028_8F2E_E1:
_off028_8F2E_E2:
_off028_8F2E_E3:
_off028_8F2E_E4:
_off028_8F2E_E5:
_off028_8F2E_E6:
_off028_8F2E_E7:
_off028_8F2E_E8:
_off028_8F2E_E9:
_off028_8F2E_EA:
_off028_8F2E_EB:
_off028_8F2E_EC:
_off028_8F2E_ED:
_off028_8F2E_EE:
_off028_8F2E_EF:
_off028_8F2E_F0:
_off028_8F2E_F1:
_off028_8F2E_F2:
_off028_8F2E_F3:
_off028_8F2E_F4:
_off028_8F2E_F5:
_off028_8F2E_F6:
_off028_8F2E_F7:
_off028_8F2E_F8:
_off028_8F2E_F9:
_off028_8F2E_FA:
_off028_8F2E_FB:
_off028_8F2E_FC:
_off028_8F2E_FD:
_off028_8F2E_FE:
_off028_8F2E_FF:
- - - - - - 0x00CF3E 03:8F2E: FF        .byte $FF   ; end token


; bzk garbage
- - - - - - 0x00CF3F 03:8F2F: 2F        .byte $2F   ; 
- - - - - - 0x00CF40 03:8F30: 90        .byte $90   ; 



tbl_8F31:
- D 0 - - - 0x00CF41 03:8F31: 2F 90     .word _off020_902F_01
- D 0 - - - 0x00CF43 03:8F33: 44 90     .word _off020_9044_02
- D 0 - - - 0x00CF45 03:8F35: 59 90     .word _off020_9059_03
- D 0 - - - 0x00CF47 03:8F37: 6E 90     .word _off020_906E_04
- D 0 - - - 0x00CF49 03:8F39: 7A 90     .word _off020_907A_05
- D 0 - - - 0x00CF4B 03:8F3B: 86 90     .word _off020_9086_06
- D 0 - - - 0x00CF4D 03:8F3D: 96 90     .word _off020_9096_07
- D 0 - - - 0x00CF4F 03:8F3F: A6 90     .word _off020_90A6_08
- D 0 - - - 0x00CF51 03:8F41: B6 90     .word _off020_90B6_09
- D 0 - - - 0x00CF53 03:8F43: C6 90     .word _off020_90C6_0A
- D 0 - - - 0x00CF55 03:8F45: D6 90     .word _off020_90D6_0B
- D 0 - - - 0x00CF57 03:8F47: E6 90     .word _off020_90E6_0C
- D 0 - - - 0x00CF59 03:8F49: F2 90     .word _off020_90F2_0D
- D 0 - - - 0x00CF5B 03:8F4B: FE 90     .word _off020_90FE_0E
- D 0 - - - 0x00CF5D 03:8F4D: 0A 91     .word _off020_910A_0F
- D 0 - - - 0x00CF5F 03:8F4F: 16 91     .word _off020_9116_10
- D 0 - - - 0x00CF61 03:8F51: 22 91     .word _off020_9122_11
- D 0 - - - 0x00CF63 03:8F53: 32 91     .word _off020_9132_12
- D 0 - - - 0x00CF65 03:8F55: 42 91     .word _off020_9142_13
- D 0 - - - 0x00CF67 03:8F57: 52 91     .word _off020_9152_14
- D 0 - - - 0x00CF69 03:8F59: 62 91     .word _off020_9162_15
- D 0 - - - 0x00CF6B 03:8F5B: 72 91     .word _off020_9172_16
- D 0 - - - 0x00CF6D 03:8F5D: 83 91     .word _off020_9183_17
- D 0 - - - 0x00CF6F 03:8F5F: 94 91     .word _off020_9194_18
- D 0 - - - 0x00CF71 03:8F61: A4 91     .word _off020_91A4_19
- D 0 - - - 0x00CF73 03:8F63: B4 91     .word _off020_91B4_1A
- D 0 - - - 0x00CF75 03:8F65: C5 91     .word _off020_91C5_1B
- D 0 - - - 0x00CF77 03:8F67: CE 91     .word _off020_91CE_1C
- D 0 - - - 0x00CF79 03:8F69: DF 91     .word _off020_91DF_1D
- D 0 - - - 0x00CF7B 03:8F6B: E8 91     .word _off020_91E8_1E
- D 0 - - - 0x00CF7D 03:8F6D: F9 91     .word _off020_91F9_1F
- D 0 - - - 0x00CF7F 03:8F6F: 06 92     .word _off020_9206_20
- D 0 - - - 0x00CF81 03:8F71: 17 92     .word _off020_9217_21
- D 0 - - - 0x00CF83 03:8F73: 24 92     .word _off020_9224_22
- D 0 - - - 0x00CF85 03:8F75: 35 92     .word _off020_9235_23
- D 0 - - - 0x00CF87 03:8F77: 4A 92     .word _off020_924A_24
- D 0 - - - 0x00CF89 03:8F79: 5F 92     .word _off020_925F_25
- - - - - - 0x00CF8B 03:8F7B: 70 92     .word _off020_9270_26
- D 0 - - - 0x00CF8D 03:8F7D: 70 92     .word _off020_9270_27
- - - - - - 0x00CF8F 03:8F7F: 79 92     .word _off020_9279_28
- D 0 - - - 0x00CF91 03:8F81: 79 92     .word _off020_9279_29
- D 0 - - - 0x00CF93 03:8F83: 89 92     .word _off020_9289_2A
- D 0 - - - 0x00CF95 03:8F85: 95 92     .word _off020_9295_2B
- D 0 - - - 0x00CF97 03:8F87: A5 92     .word _off020_92A5_2C
- D 0 - - - 0x00CF99 03:8F89: B6 92     .word _off020_92B6_2D
- D 0 - - - 0x00CF9B 03:8F8B: C7 92     .word _off020_92C7_2E
- D 0 - - - 0x00CF9D 03:8F8D: D3 92     .word _off020_92D3_2F
- D 0 - - - 0x00CF9F 03:8F8F: E4 92     .word _off020_92E4_30
- D 0 - - - 0x00CFA1 03:8F91: F1 92     .word _off020_92F1_31
- D 0 - - - 0x00CFA3 03:8F93: FD 92     .word _off020_92FD_32
- D 0 - - - 0x00CFA5 03:8F95: 0E 93     .word _off020_930E_33
- D 0 - - - 0x00CFA7 03:8F97: 1B 93     .word _off020_931B_34
- D 0 - - - 0x00CFA9 03:8F99: 23 93     .word _off020_9323_35
- D 0 - - - 0x00CFAB 03:8F9B: 34 93     .word _off020_9334_36
- D 0 - - - 0x00CFAD 03:8F9D: 41 93     .word _off020_9341_37
- D 0 - - - 0x00CFAF 03:8F9F: 4D 93     .word _off020_934D_38
- D 0 - - - 0x00CFB1 03:8FA1: 5A 93     .word _off020_935A_39
- D 0 - - - 0x00CFB3 03:8FA3: 67 93     .word _off020_9367_3A
- D 0 - - - 0x00CFB5 03:8FA5: 6F 93     .word _off020_936F_3B
- D 0 - - - 0x00CFB7 03:8FA7: 80 93     .word _off020_9380_3C
- D 0 - - - 0x00CFB9 03:8FA9: 91 93     .word _off020_9391_3D
- - - - - - 0x00CFBB 03:8FAB: A6 93     .word _off020_93A6_3E
- - - - - - 0x00CFBD 03:8FAD: A6 93     .word _off020_93A6_3F
- - - - - - 0x00CFBF 03:8FAF: A6 93     .word _off020_93A6_40
- - - - - - 0x00CFC1 03:8FB1: A6 93     .word _off020_93A6_41
- - - - - - 0x00CFC3 03:8FB3: A6 93     .word _off020_93A6_42
- - - - - - 0x00CFC5 03:8FB5: A6 93     .word _off020_93A6_43
- - - - - - 0x00CFC7 03:8FB7: A6 93     .word _off020_93A6_44
- - - - - - 0x00CFC9 03:8FB9: A6 93     .word _off020_93A6_45
- - - - - - 0x00CFCB 03:8FBB: A6 93     .word _off020_93A6_46
- - - - - - 0x00CFCD 03:8FBD: A6 93     .word _off020_93A6_47
- - - - - - 0x00CFCF 03:8FBF: A6 93     .word _off020_93A6_48
- - - - - - 0x00CFD1 03:8FC1: A6 93     .word _off020_93A6_49
- - - - - - 0x00CFD3 03:8FC3: A6 93     .word _off020_93A6_4A
- - - - - - 0x00CFD5 03:8FC5: A6 93     .word _off020_93A6_4B
- - - - - - 0x00CFD7 03:8FC7: A6 93     .word _off020_93A6_4C
- - - - - - 0x00CFD9 03:8FC9: A6 93     .word _off020_93A6_4D
- - - - - - 0x00CFDB 03:8FCB: A6 93     .word _off020_93A6_4E
- - - - - - 0x00CFDD 03:8FCD: A6 93     .word _off020_93A6_4F
- - - - - - 0x00CFDF 03:8FCF: A6 93     .word _off020_93A6_50
- - - - - - 0x00CFE1 03:8FD1: A6 93     .word _off020_93A6_51
- - - - - - 0x00CFE3 03:8FD3: A6 93     .word _off020_93A6_52
- - - - - - 0x00CFE5 03:8FD5: A6 93     .word _off020_93A6_53
- - - - - - 0x00CFE7 03:8FD7: A6 93     .word _off020_93A6_54
- - - - - - 0x00CFE9 03:8FD9: A6 93     .word _off020_93A6_55
- - - - - - 0x00CFEB 03:8FDB: A6 93     .word _off020_93A6_56
- - - - - - 0x00CFED 03:8FDD: A6 93     .word _off020_93A6_57
- - - - - - 0x00CFEF 03:8FDF: A6 93     .word _off020_93A6_58
- - - - - - 0x00CFF1 03:8FE1: A6 93     .word _off020_93A6_59
- - - - - - 0x00CFF3 03:8FE3: A6 93     .word _off020_93A6_5A
- - - - - - 0x00CFF5 03:8FE5: A6 93     .word _off020_93A6_5B
- - - - - - 0x00CFF7 03:8FE7: A6 93     .word _off020_93A6_5C
- - - - - - 0x00CFF9 03:8FE9: A6 93     .word _off020_93A6_5D
- - - - - - 0x00CFFB 03:8FEB: A6 93     .word _off020_93A6_5E
- - - - - - 0x00CFFD 03:8FED: A6 93     .word _off020_93A6_5F
- - - - - - 0x00CFFF 03:8FEF: A6 93     .word _off020_93A6_60
- - - - - - 0x00D001 03:8FF1: A6 93     .word _off020_93A6_61
- - - - - - 0x00D003 03:8FF3: A6 93     .word _off020_93A6_62
- - - - - - 0x00D005 03:8FF5: A6 93     .word _off020_93A6_63
- - - - - - 0x00D007 03:8FF7: A6 93     .word _off020_93A6_64
- - - - - - 0x00D009 03:8FF9: A6 93     .word _off020_93A6_65
- - - - - - 0x00D00B 03:8FFB: A6 93     .word _off020_93A6_66
- - - - - - 0x00D00D 03:8FFD: A6 93     .word _off020_93A6_67
- - - - - - 0x00D00F 03:8FFF: A6 93     .word _off020_93A6_68
- - - - - - 0x00D011 03:9001: A6 93     .word _off020_93A6_69
- - - - - - 0x00D013 03:9003: A6 93     .word _off020_93A6_6A
- - - - - - 0x00D015 03:9005: A6 93     .word _off020_93A6_6B
- - - - - - 0x00D017 03:9007: A6 93     .word _off020_93A6_6C
- - - - - - 0x00D019 03:9009: A6 93     .word _off020_93A6_6D
- - - - - - 0x00D01B 03:900B: A6 93     .word _off020_93A6_6E
- - - - - - 0x00D01D 03:900D: A6 93     .word _off020_93A6_6F
- - - - - - 0x00D01F 03:900F: A6 93     .word _off020_93A6_70
- - - - - - 0x00D021 03:9011: A6 93     .word _off020_93A6_71
- - - - - - 0x00D023 03:9013: A6 93     .word _off020_93A6_72
- - - - - - 0x00D025 03:9015: A6 93     .word _off020_93A6_73
- - - - - - 0x00D027 03:9017: A6 93     .word _off020_93A6_74
- - - - - - 0x00D029 03:9019: A6 93     .word _off020_93A6_75
- - - - - - 0x00D02B 03:901B: A6 93     .word _off020_93A6_76
- - - - - - 0x00D02D 03:901D: A6 93     .word _off020_93A6_77
- - - - - - 0x00D02F 03:901F: A6 93     .word _off020_93A6_78
- - - - - - 0x00D031 03:9021: A6 93     .word _off020_93A6_79
- - - - - - 0x00D033 03:9023: A6 93     .word _off020_93A6_7A
- - - - - - 0x00D035 03:9025: A6 93     .word _off020_93A6_7B
- - - - - - 0x00D037 03:9027: A6 93     .word _off020_93A6_7C
- - - - - - 0x00D039 03:9029: A6 93     .word _off020_93A6_7D
- - - - - - 0x00D03B 03:902B: A6 93     .word _off020_93A6_7E
- - - - - - 0x00D03D 03:902D: A6 93     .word _off020_93A6_7F



_off020_902F_01:
- D 0 - I - 0x00D03F 03:902F: 05        .byte $05   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D040 03:9030: F0        .byte $F0, $03, $01, $FA   ; 01 
- D 0 - I - 0x00D044 03:9034: EF        .byte $EF, $05, $01, $02   ; 02 
ofs_9038_04:
ofs_9038_06:
ofs_9038_09:
ofs_9038_0C:
ofs_9038_0F:
ofs_9038_11:
ofs_9038_14:
- D 0 - I - 0x00D048 03:9038: FF        .byte $FF, $0F, $00, $F6   ; 03 (04) 
- D 0 - I - 0x00D04C 03:903C: 00        .byte $00, $11, $00, $FE   ; 04 (05) 
- D 0 - I - 0x00D050 03:9040: 0F        .byte $0F, $13, $00, $F4   ; 05 (06) 



_off020_9044_02:
- D 0 - I - 0x00D054 03:9044: 05        .byte $05   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D055 03:9045: F1        .byte $F1, $07, $01, $FC   ; 01 
- D 0 - I - 0x00D059 03:9049: F0        .byte $F0, $09, $01, $04   ; 02 
ofs_904D_07:
ofs_904D_0D:
ofs_904D_12:
- D 0 - I - 0x00D05D 03:904D: 00        .byte $00, $15, $00, $F6   ; 03 (04) 
- D 0 - I - 0x00D061 03:9051: 01        .byte $01, $17, $00, $FE   ; 04 (05) 
- D 0 - I - 0x00D065 03:9055: 11        .byte $11, $13, $00, $01   ; 05 (06) 



_off020_9059_03:
- D 0 - I - 0x00D069 03:9059: 05        .byte $05   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D06A 03:905A: EF        .byte $EF, $0B, $01, $F8   ; 01 
- D 0 - I - 0x00D06E 03:905E: F0        .byte $F0, $0D, $01, $00   ; 02 
ofs_9062_05:
ofs_9062_08:
ofs_9062_0A:
ofs_9062_0B:
ofs_9062_0E:
ofs_9062_10:
ofs_9062_13:
ofs_9062_15:
ofs_9062_18:
ofs_9062_19:
- D 0 - I - 0x00D072 03:9062: FF        .byte $FF, $19, $00, $F9   ; 03 (04) 
- D 0 - I - 0x00D076 03:9066: 00        .byte $00, $1B, $00, $01   ; 04 (05) 
- D 0 - I - 0x00D07A 03:906A: 0F        .byte $0F, $13, $00, $FB   ; 05 (06) 



_off020_906E_04:
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D07E 03:906E: 05        .byte $05   ; counter
- D 0 - I - 0x00D07F 03:906F: EF        .byte $EF, $0B, $01, $F8   ; 01 
- D 0 - I - 0x00D083 03:9073: F0        .byte $F0, $0D, $01, $00   ; 02 
- D 0 - I - 0x00D087 03:9077: 80        .byte $80   ; jump
- D 0 - I - 0x00D088 03:9078: 38 90     .word ofs_9038_04



_off020_907A_05:
- D 0 - I - 0x00D08A 03:907A: 05        .byte $05   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D08B 03:907B: F0        .byte $F0, $03, $01, $F9   ; 01 
- D 0 - I - 0x00D08F 03:907F: EF        .byte $EF, $05, $01, $01   ; 02 
- D 0 - I - 0x00D093 03:9083: 80        .byte $80   ; jump
- D 0 - I - 0x00D094 03:9084: 62 90     .word ofs_9062_05



_off020_9086_06:
- D 0 - I - 0x00D096 03:9086: 06        .byte $06   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D097 03:9087: F0        .byte $F0, $1D, $01, $F7   ; 01 
- D 0 - I - 0x00D09B 03:908B: F0        .byte $F0, $1F, $01, $FF   ; 02 
- D 0 - I - 0x00D09F 03:908F: EF        .byte $EF, $21, $01, $07   ; 03 
- D 0 - I - 0x00D0A3 03:9093: 80        .byte $80   ; jump
- D 0 - I - 0x00D0A4 03:9094: 38 90     .word ofs_9038_06



_off020_9096_07:
- D 0 - I - 0x00D0A6 03:9096: 06        .byte $06   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D0A7 03:9097: F1        .byte $F1, $1D, $01, $F7   ; 01 
- D 0 - I - 0x00D0AB 03:909B: F1        .byte $F1, $1F, $01, $FF   ; 02 
- D 0 - I - 0x00D0AF 03:909F: F0        .byte $F0, $21, $01, $07   ; 03 
- D 0 - I - 0x00D0B3 03:90A3: 80        .byte $80   ; jump
- D 0 - I - 0x00D0B4 03:90A4: 4D 90     .word ofs_904D_07



_off020_90A6_08:
- D 0 - I - 0x00D0B6 03:90A6: 06        .byte $06   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D0B7 03:90A7: F0        .byte $F0, $1D, $01, $F7   ; 01 
- D 0 - I - 0x00D0BB 03:90AB: F0        .byte $F0, $1F, $01, $FF   ; 02 
- D 0 - I - 0x00D0BF 03:90AF: EF        .byte $EF, $21, $01, $07   ; 03 
- D 0 - I - 0x00D0C3 03:90B3: 80        .byte $80   ; jump
- D 0 - I - 0x00D0C4 03:90B4: 62 90     .word ofs_9062_08



_off020_90B6_09:
- D 0 - I - 0x00D0C6 03:90B6: 06        .byte $06   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D0C7 03:90B7: F0        .byte $F0, $1D, $01, $F7   ; 01 
- D 0 - I - 0x00D0CB 03:90BB: F0        .byte $F0, $1F, $01, $FF   ; 02 
- D 0 - I - 0x00D0CF 03:90BF: EF        .byte $EF, $21, $01, $07   ; 03 
- D 0 - I - 0x00D0D3 03:90C3: 80        .byte $80   ; jump
- D 0 - I - 0x00D0D4 03:90C4: 38 90     .word ofs_9038_09



_off020_90C6_0A:
- D 0 - I - 0x00D0D6 03:90C6: 06        .byte $06   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D0D7 03:90C7: F0        .byte $F0, $1D, $01, $F7   ; 01 
- D 0 - I - 0x00D0DB 03:90CB: F0        .byte $F0, $1F, $01, $FF   ; 02 
- D 0 - I - 0x00D0DF 03:90CF: EF        .byte $EF, $21, $01, $07   ; 03 
- D 0 - I - 0x00D0E3 03:90D3: 80        .byte $80   ; jump
- D 0 - I - 0x00D0E4 03:90D4: 62 90     .word ofs_9062_0A



_off020_90D6_0B:
- D 0 - I - 0x00D0E6 03:90D6: 06        .byte $06   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D0E7 03:90D7: F1        .byte $F1, $1D, $01, $F7   ; 01 
- D 0 - I - 0x00D0EB 03:90DB: F1        .byte $F1, $1F, $01, $FF   ; 02 
- D 0 - I - 0x00D0EF 03:90DF: F0        .byte $F0, $21, $01, $07   ; 03 
- D 0 - I - 0x00D0F3 03:90E3: 80        .byte $80   ; jump
- D 0 - I - 0x00D0F4 03:90E4: 62 90     .word ofs_9062_0B



_off020_90E6_0C:
- D 0 - I - 0x00D0F6 03:90E6: 05        .byte $05   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D0F7 03:90E7: F0        .byte $F0, $2B, $01, $FA   ; 01 
- D 0 - I - 0x00D0FB 03:90EB: EF        .byte $EF, $2D, $01, $02   ; 02 
- D 0 - I - 0x00D0FF 03:90EF: 80        .byte $80   ; jump
- D 0 - I - 0x00D100 03:90F0: 38 90     .word ofs_9038_0C



_off020_90F2_0D:
- D 0 - I - 0x00D102 03:90F2: 05        .byte $05   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D103 03:90F3: F1        .byte $F1, $2B, $01, $FA   ; 01 
- D 0 - I - 0x00D107 03:90F7: F0        .byte $F0, $2D, $01, $02   ; 02 
- D 0 - I - 0x00D10B 03:90FB: 80        .byte $80   ; jump
- D 0 - I - 0x00D10C 03:90FC: 4D 90     .word ofs_904D_0D



_off020_90FE_0E:
- D 0 - I - 0x00D10E 03:90FE: 05        .byte $05   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D10F 03:90FF: F0        .byte $F0, $2B, $01, $FA   ; 01 
- D 0 - I - 0x00D113 03:9103: EF        .byte $EF, $2D, $01, $02   ; 02 
- D 0 - I - 0x00D117 03:9107: 80        .byte $80   ; jump
- D 0 - I - 0x00D118 03:9108: 62 90     .word ofs_9062_0E



_off020_910A_0F:
- D 0 - I - 0x00D11A 03:910A: 05        .byte $05   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D11B 03:910B: F0        .byte $F0, $2B, $01, $FA   ; 01 
- D 0 - I - 0x00D11F 03:910F: EF        .byte $EF, $2D, $01, $02   ; 02 
- D 0 - I - 0x00D123 03:9113: 80        .byte $80   ; jump
- D 0 - I - 0x00D124 03:9114: 38 90     .word ofs_9038_0F



_off020_9116_10:
- D 0 - I - 0x00D126 03:9116: 05        .byte $05   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D127 03:9117: F0        .byte $F0, $2B, $01, $FA   ; 01 
- D 0 - I - 0x00D12B 03:911B: EF        .byte $EF, $2D, $01, $02   ; 02 
- D 0 - I - 0x00D12F 03:911F: 80        .byte $80   ; jump
- D 0 - I - 0x00D130 03:9120: 62 90     .word ofs_9062_10



_off020_9122_11:
- D 0 - I - 0x00D132 03:9122: 06        .byte $06   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D133 03:9123: EF        .byte $EF, $2F, $01, $F6   ; 01 
- D 0 - I - 0x00D137 03:9127: F0        .byte $F0, $31, $01, $FE   ; 02 
- D 0 - I - 0x00D13B 03:912B: F8        .byte $F8, $33, $01, $03   ; 03 
- D 0 - I - 0x00D13F 03:912F: 80        .byte $80   ; jump
- D 0 - I - 0x00D140 03:9130: 38 90     .word ofs_9038_11



_off020_9132_12:
- D 0 - I - 0x00D142 03:9132: 06        .byte $06   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D143 03:9133: F0        .byte $F0, $2F, $01, $F6   ; 01 
- D 0 - I - 0x00D147 03:9137: F1        .byte $F1, $31, $01, $FE   ; 02 
- D 0 - I - 0x00D14B 03:913B: F9        .byte $F9, $33, $01, $03   ; 03 
- D 0 - I - 0x00D14F 03:913F: 80        .byte $80   ; jump
- D 0 - I - 0x00D150 03:9140: 4D 90     .word ofs_904D_12



_off020_9142_13:
- D 0 - I - 0x00D152 03:9142: 06        .byte $06   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D153 03:9143: EF        .byte $EF, $2F, $01, $F6   ; 01 
- D 0 - I - 0x00D157 03:9147: F0        .byte $F0, $31, $01, $FE   ; 02 
- D 0 - I - 0x00D15B 03:914B: F8        .byte $F8, $33, $01, $03   ; 03 
- D 0 - I - 0x00D15F 03:914F: 80        .byte $80   ; jump
- D 0 - I - 0x00D160 03:9150: 62 90     .word ofs_9062_13



_off020_9152_14:
- D 0 - I - 0x00D162 03:9152: 06        .byte $06   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D163 03:9153: EF        .byte $EF, $2F, $01, $F6   ; 01 
- D 0 - I - 0x00D167 03:9157: F0        .byte $F0, $31, $01, $FE   ; 02 
- D 0 - I - 0x00D16B 03:915B: F8        .byte $F8, $33, $01, $03   ; 03 
- D 0 - I - 0x00D16F 03:915F: 80        .byte $80   ; jump
- D 0 - I - 0x00D170 03:9160: 38 90     .word ofs_9038_14



_off020_9162_15:
- D 0 - I - 0x00D172 03:9162: 06        .byte $06   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D173 03:9163: EF        .byte $EF, $2F, $01, $F6   ; 01 
- D 0 - I - 0x00D177 03:9167: F0        .byte $F0, $31, $01, $FE   ; 02 
- D 0 - I - 0x00D17B 03:916B: F8        .byte $F8, $33, $01, $03   ; 03 
- D 0 - I - 0x00D17F 03:916F: 80        .byte $80   ; jump
- D 0 - I - 0x00D180 03:9170: 62 90     .word ofs_9062_15



_off020_9172_16:
- D 0 - I - 0x00D182 03:9172: 04        .byte $04   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D183 03:9173: 02        .byte $02, $23, $00, $F0   ; 01 
- D 0 - I - 0x00D187 03:9177: 02        .byte $02, $25, $00, $F8   ; 02 
- D 0 - I - 0x00D18B 03:917B: 02        .byte $02, $27, $01, $00   ; 03 
- D 0 - I - 0x00D18F 03:917F: 02        .byte $02, $29, $01, $08   ; 04 



_off020_9183_17:
- D 0 - I - 0x00D193 03:9183: 04        .byte $04   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D194 03:9184: 03        .byte $03, $23, $00, $F0   ; 01 
- D 0 - I - 0x00D198 03:9188: 03        .byte $03, $25, $00, $F8   ; 02 
- D 0 - I - 0x00D19C 03:918C: 03        .byte $03, $27, $01, $00   ; 03 
- D 0 - I - 0x00D1A0 03:9190: 03        .byte $03, $29, $01, $08   ; 04 



_off020_9194_18:
- D 0 - I - 0x00D1A4 03:9194: 06        .byte $06   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D1A5 03:9195: E0        .byte $E0, $35, $01, $FF   ; 01 
- D 0 - I - 0x00D1A9 03:9199: EF        .byte $EF, $37, $01, $F6   ; 02 
- D 0 - I - 0x00D1AD 03:919D: F0        .byte $F0, $39, $01, $FE   ; 03 
- D 0 - I - 0x00D1B1 03:91A1: 80        .byte $80   ; jump
- D 0 - I - 0x00D1B2 03:91A2: 62 90     .word ofs_9062_18



_off020_91A4_19:
- D 0 - I - 0x00D1B4 03:91A4: 06        .byte $06   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D1B5 03:91A5: E1        .byte $E1, $35, $01, $FF   ; 01 
- D 0 - I - 0x00D1B9 03:91A9: F0        .byte $F0, $37, $01, $F6   ; 02 
- D 0 - I - 0x00D1BD 03:91AD: F1        .byte $F1, $39, $01, $FE   ; 03 
- D 0 - I - 0x00D1C1 03:91B1: 80        .byte $80   ; jump
- D 0 - I - 0x00D1C2 03:91B2: 62 90     .word ofs_9062_19



_off020_91B4_1A:
- D 0 - I - 0x00D1C4 03:91B4: 04        .byte $04   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D1C5 03:91B5: F1        .byte $F1, $3B, $01, $F8   ; 01 
- D 0 - I - 0x00D1C9 03:91B9: F1        .byte $F1, $3D, $01, $00   ; 02 
- D 0 - I - 0x00D1CD 03:91BD: 01        .byte $01, $3F, $00, $F8   ; 03 
- D 0 - I - 0x00D1D1 03:91C1: 01        .byte $01, $41, $00, $00   ; 04 



_off020_91C5_1B:
- D 0 - I - 0x00D1D5 03:91C5: 02        .byte $02   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D1D6 03:91C6: F8        .byte $F8, $43, $00, $F7   ; 01 
- D 0 - I - 0x00D1DA 03:91CA: F8        .byte $F8, $45, $01, $FF   ; 02 



_off020_91CE_1C:
- D 0 - I - 0x00D1DE 03:91CE: 04        .byte $04   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D1DF 03:91CF: EF        .byte $EF, $41, $C0, $F8   ; 01 
- D 0 - I - 0x00D1E3 03:91D3: EF        .byte $EF, $3F, $C0, $00   ; 02 
- D 0 - I - 0x00D1E7 03:91D7: FF        .byte $FF, $3D, $C1, $F8   ; 03 
- D 0 - I - 0x00D1EB 03:91DB: FF        .byte $FF, $3B, $C1, $00   ; 04 



_off020_91DF_1D:
- D 0 - I - 0x00D1EF 03:91DF: 02        .byte $02   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D1F0 03:91E0: F8        .byte $F8, $45, $C1, $F9   ; 01 
- D 0 - I - 0x00D1F4 03:91E4: F8        .byte $F8, $43, $C0, $01   ; 02 



_off020_91E8_1E:
- D 0 - I - 0x00D1F8 03:91E8: 04        .byte $04   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D1F9 03:91E9: F2        .byte $F2, $47, $01, $F6   ; 01 
- D 0 - I - 0x00D1FD 03:91ED: F2        .byte $F2, $49, $01, $FE   ; 02 
- D 0 - I - 0x00D201 03:91F1: 02        .byte $02, $4B, $00, $F8   ; 03 
- D 0 - I - 0x00D205 03:91F5: 02        .byte $02, $4D, $00, $00   ; 04 



_off020_91F9_1F:
- D 0 - I - 0x00D209 03:91F9: 03        .byte $03   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D20A 03:91FA: FB        .byte $FB, $4F, $01, $F5   ; 01 
- D 0 - I - 0x00D20E 03:91FE: FB        .byte $FB, $51, $00, $FD   ; 02 
- D 0 - I - 0x00D212 03:9202: F9        .byte $F9, $53, $00, $05   ; 03 



_off020_9206_20:
- D 0 - I - 0x00D216 03:9206: 04        .byte $04   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D217 03:9207: F4        .byte $F4, $4D, $C0, $F8   ; 01 
- D 0 - I - 0x00D21B 03:920B: F4        .byte $F4, $4B, $C0, $00   ; 02 
- D 0 - I - 0x00D21F 03:920F: 04        .byte $04, $49, $C1, $FA   ; 03 
- D 0 - I - 0x00D223 03:9213: 04        .byte $04, $47, $C1, $02   ; 04 



_off020_9217_21:
- D 0 - I - 0x00D227 03:9217: 03        .byte $03   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D228 03:9218: FD        .byte $FD, $53, $C0, $F3   ; 01 
- D 0 - I - 0x00D22C 03:921C: FB        .byte $FB, $51, $C0, $FB   ; 02 
- D 0 - I - 0x00D230 03:9220: FB        .byte $FB, $4F, $C1, $03   ; 03 



_off020_9224_22:
- D 0 - I - 0x00D234 03:9224: 04        .byte $04   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D235 03:9225: 03        .byte $03, $A5, $01, $F0   ; 01 
- D 0 - I - 0x00D239 03:9229: 03        .byte $03, $A7, $01, $F8   ; 02 
- D 0 - I - 0x00D23D 03:922D: 03        .byte $03, $5B, $00, $00   ; 03 
- D 0 - I - 0x00D241 03:9231: 03        .byte $03, $6F, $00, $08   ; 04 



_off020_9235_23:
- D 0 - I - 0x00D245 03:9235: 05        .byte $05   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D246 03:9236: F8        .byte $F8, $1D, $01, $F7   ; 01 
- D 0 - I - 0x00D24A 03:923A: F8        .byte $F8, $1F, $01, $FF   ; 02 
- D 0 - I - 0x00D24E 03:923E: F7        .byte $F7, $21, $01, $07   ; 03 
- D 0 - I - 0x00D252 03:9242: 08        .byte $08, $E5, $00, $F7   ; 04 
- D 0 - I - 0x00D256 03:9246: 07        .byte $07, $E7, $00, $FF   ; 05 



_off020_924A_24:
- D 0 - I - 0x00D25A 03:924A: 05        .byte $05   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D25B 03:924B: F9        .byte $F9, $1D, $01, $F7   ; 01 
- D 0 - I - 0x00D25F 03:924F: F9        .byte $F9, $1F, $01, $FF   ; 02 
- D 0 - I - 0x00D263 03:9253: F8        .byte $F8, $21, $01, $07   ; 03 
- D 0 - I - 0x00D267 03:9257: 08        .byte $08, $E5, $00, $F7   ; 04 
- D 0 - I - 0x00D26B 03:925B: 07        .byte $07, $E7, $00, $FF   ; 05 



_off020_925F_25:
- D 0 - I - 0x00D26F 03:925F: 04        .byte $04   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D270 03:9260: F0        .byte $F0, $07, $01, $FC   ; 01 
- D 0 - I - 0x00D274 03:9264: EF        .byte $EF, $09, $01, $04   ; 02 
ofs_9268_29:
ofs_9268_2A:
ofs_9268_2B:
- D 0 - I - 0x00D278 03:9268: 00        .byte $00, $E5, $01, $F8   ; 03 (04) 
- D 0 - I - 0x00D27C 03:926C: FF        .byte $FF, $E7, $01, $00   ; 04 (05) 



_off020_9270_26:
_off020_9270_27:
- D 0 - I - 0x00D280 03:9270: 02        .byte $02   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D281 03:9271: 00        .byte $00, $E5, $01, $F8   ; 01 
- D 0 - I - 0x00D285 03:9275: FF        .byte $FF, $E7, $01, $00   ; 02 



_off020_9279_28:
_off020_9279_29:
- D 0 - I - 0x00D289 03:9279: 05        .byte $05   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D28A 03:927A: F0        .byte $F0, $1D, $01, $F7   ; 01 
- D 0 - I - 0x00D28E 03:927E: F0        .byte $F0, $1F, $01, $FF   ; 02 
- D 0 - I - 0x00D292 03:9282: EF        .byte $EF, $21, $01, $07   ; 03 
- D 0 - I - 0x00D296 03:9286: 80        .byte $80   ; jump
- D 0 - I - 0x00D297 03:9287: 68 92     .word ofs_9268_29



_off020_9289_2A:
- D 0 - I - 0x00D299 03:9289: 04        .byte $04   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D29A 03:928A: F0        .byte $F0, $2B, $01, $FA   ; 01 
- D 0 - I - 0x00D29E 03:928E: EF        .byte $EF, $2D, $01, $02   ; 02 
- D 0 - I - 0x00D2A2 03:9292: 80        .byte $80   ; jump
- D 0 - I - 0x00D2A3 03:9293: 68 92     .word ofs_9268_2A



_off020_9295_2B:
- D 0 - I - 0x00D2A5 03:9295: 05        .byte $05   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D2A6 03:9296: E0        .byte $E0, $35, $01, $FF   ; 01 
- D 0 - I - 0x00D2AA 03:929A: EF        .byte $EF, $37, $01, $F6   ; 02 
- D 0 - I - 0x00D2AE 03:929E: F0        .byte $F0, $39, $01, $FE   ; 03 
- D 0 - I - 0x00D2B2 03:92A2: 80        .byte $80   ; jump
- D 0 - I - 0x00D2B3 03:92A3: 68 92     .word ofs_9268_2B



_off020_92A5_2C:
- D 0 - I - 0x00D2B5 03:92A5: 04        .byte $04   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D2B6 03:92A6: 03        .byte $03, $07, $00, $F7   ; 01 
- D 0 - I - 0x00D2BA 03:92AA: 00        .byte $00, $09, $00, $FF   ; 02 
ofs_92AE_2E:
- D 0 - I - 0x00D2BE 03:92AE: F3        .byte $F3, $03, $01, $F9   ; 03 
- D 0 - I - 0x00D2C2 03:92B2: F0        .byte $F0, $05, $01, $FF   ; 04 



_off020_92B6_2D:
- D 0 - I - 0x00D2C6 03:92B6: 04        .byte $04   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D2C7 03:92B7: F4        .byte $F4, $03, $01, $F9   ; 01 
- D 0 - I - 0x00D2CB 03:92BB: F1        .byte $F1, $05, $01, $FF   ; 02 
- D 0 - I - 0x00D2CF 03:92BF: 04        .byte $04, $0B, $00, $F7   ; 03 
- D 0 - I - 0x00D2D3 03:92C3: 01        .byte $01, $0D, $00, $FF   ; 04 



_off020_92C7_2E:
- D 0 - I - 0x00D2D7 03:92C7: 04        .byte $04   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D2D8 03:92C8: 03        .byte $03, $0F, $00, $F7   ; 01 
- D 0 - I - 0x00D2DC 03:92CC: 00        .byte $00, $11, $00, $FF   ; 02 
- D 0 - I - 0x00D2E0 03:92D0: 80        .byte $80   ; jump
- D 0 - I - 0x00D2E1 03:92D1: AE 92     .word ofs_92AE_2E



_off020_92D3_2F:
- D 0 - I - 0x00D2E3 03:92D3: 04        .byte $04   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D2E4 03:92D4: 02        .byte $02, $17, $00, $F7   ; 01 
- D 0 - I - 0x00D2E8 03:92D8: 01        .byte $01, $19, $00, $FF   ; 02 
ofs_92DC_31:
- D 0 - I - 0x00D2EC 03:92DC: F2        .byte $F2, $13, $01, $F7   ; 03 
- D 0 - I - 0x00D2F0 03:92E0: F1        .byte $F1, $15, $01, $FF   ; 04 



_off020_92E4_30:
- D 0 - I - 0x00D2F4 03:92E4: 03        .byte $03   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D2F5 03:92E5: 02        .byte $02, $1B, $00, $FD   ; 01 
- D 0 - I - 0x00D2F9 03:92E9: F3        .byte $F3, $13, $01, $F7   ; 02 
- D 0 - I - 0x00D2FD 03:92ED: F2        .byte $F2, $15, $01, $FF   ; 03 



_off020_92F1_31:
- D 0 - I - 0x00D301 03:92F1: 04        .byte $04   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D302 03:92F2: 02        .byte $02, $1D, $00, $F7   ; 01 
- D 0 - I - 0x00D306 03:92F6: 01        .byte $01, $1F, $00, $FF   ; 02 
- D 0 - I - 0x00D30A 03:92FA: 80        .byte $80   ; jump
- D 0 - I - 0x00D30B 03:92FB: DC 92     .word ofs_92DC_31



_off020_92FD_32:
- D 0 - I - 0x00D30D 03:92FD: 04        .byte $04   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D30E 03:92FE: FF        .byte $FF, $35, $00, $F8   ; 01 
- D 0 - I - 0x00D312 03:9302: FF        .byte $FF, $37, $00, $00   ; 02 
ofs_9306_34:
- D 0 - I - 0x00D316 03:9306: EF        .byte $EF, $31, $01, $F8   ; 03 (02) 
- D 0 - I - 0x00D31A 03:930A: EF        .byte $EF, $33, $01, $00   ; 04 (03) 



_off020_930E_33:
- D 0 - I - 0x00D31E 03:930E: 03        .byte $03   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D31F 03:930F: 00        .byte $00, $39, $00, $FD   ; 01 
- D 0 - I - 0x00D323 03:9313: F0        .byte $F0, $31, $01, $F8   ; 02 
- D 0 - I - 0x00D327 03:9317: F0        .byte $F0, $33, $01, $00   ; 03 



_off020_931B_34:
- D 0 - I - 0x00D32B 03:931B: 03        .byte $03   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D32C 03:931C: FF        .byte $FF, $3B, $00, $FE   ; 01 
- D 0 - I - 0x00D330 03:9320: 80        .byte $80   ; jump
- D 0 - I - 0x00D331 03:9321: 06 93     .word ofs_9306_34



_off020_9323_35:
- D 0 - I - 0x00D333 03:9323: 04        .byte $04   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D334 03:9324: FF        .byte $FF, $25, $00, $F9   ; 01 
- D 0 - I - 0x00D338 03:9328: FF        .byte $FF, $27, $00, $01   ; 02 
ofs_932C_37:
- D 0 - I - 0x00D33C 03:932C: EF        .byte $EF, $21, $01, $F7   ; 03 
- D 0 - I - 0x00D340 03:9330: EF        .byte $EF, $23, $01, $FF   ; 04 



_off020_9334_36:
- D 0 - I - 0x00D344 03:9334: 03        .byte $03   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D345 03:9335: 00        .byte $00, $29, $00, $FD   ; 01 
- D 0 - I - 0x00D349 03:9339: F0        .byte $F0, $21, $01, $F7   ; 02 
- D 0 - I - 0x00D34D 03:933D: F0        .byte $F0, $23, $01, $FF   ; 03 



_off020_9341_37:
- D 0 - I - 0x00D351 03:9341: 04        .byte $04   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D352 03:9342: FF        .byte $FF, $2B, $00, $FA   ; 01 
- D 0 - I - 0x00D356 03:9346: FF        .byte $FF, $2D, $00, $02   ; 02 
- D 0 - I - 0x00D35A 03:934A: 80        .byte $80   ; jump
- D 0 - I - 0x00D35B 03:934B: 2C 93     .word ofs_932C_37



_off020_934D_38:
- D 0 - I - 0x00D35D 03:934D: 03        .byte $03   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D35E 03:934E: 00        .byte $00, $3D, $00, $FC   ; 01 
ofs_9352_3A:
- D 0 - I - 0x00D362 03:9352: F0        .byte $F0, $3F, $01, $F9   ; 02 
- D 0 - I - 0x00D366 03:9356: F0        .byte $F0, $41, $01, $01   ; 03 



_off020_935A_39:
- D 0 - I - 0x00D36A 03:935A: 03        .byte $03   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D36B 03:935B: 01        .byte $01, $43, $00, $FC   ; 01 
- D 0 - I - 0x00D36F 03:935F: F1        .byte $F1, $3F, $01, $F9   ; 02 
- D 0 - I - 0x00D373 03:9363: F1        .byte $F1, $41, $01, $01   ; 03 



_off020_9367_3A:
- D 0 - I - 0x00D377 03:9367: 03        .byte $03   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D378 03:9368: 00        .byte $00, $3D, $40, $FC   ; 01 
- D 0 - I - 0x00D37C 03:936C: 80        .byte $80   ; jump
- D 0 - I - 0x00D37D 03:936D: 52 93     .word ofs_9352_3A



_off020_936F_3B:
- D 0 - I - 0x00D37F 03:936F: 04        .byte $04   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D380 03:9370: F0        .byte $F0, $4B, $01, $F6   ; 01 
- D 0 - I - 0x00D384 03:9374: F0        .byte $F0, $4D, $01, $FE   ; 02 
- D 0 - I - 0x00D388 03:9378: F3        .byte $F3, $4F, $01, $06   ; 03 
- D 0 - I - 0x00D38C 03:937C: 00        .byte $00, $51, $00, $FC   ; 04 



_off020_9380_3C:
- D 0 - I - 0x00D390 03:9380: 04        .byte $04   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D391 03:9381: FB        .byte $FB, $53, $01, $F4   ; 01 
- D 0 - I - 0x00D395 03:9385: F9        .byte $F9, $5B, $01, $FA   ; 02 
- D 0 - I - 0x00D399 03:9389: F2        .byte $F2, $6F, $00, $FE   ; 03 
- D 0 - I - 0x00D39D 03:938D: 02        .byte $02, $A5, $01, $02   ; 04 



_off020_9391_3D:
- D 0 - I - 0x00D3A1 03:9391: 05        .byte $05   ; counter
;                                              --------------------- spr_Y
;                                              |    ---------------- spr_T
;                                              |    |    ----------- spr_A
;                                              |    |    |    ------ spr_X
;                                              |    |    |    |
- D 0 - I - 0x00D3A2 03:9392: EF        .byte $EF, $A7, $00, $FA   ; 01 
- D 0 - I - 0x00D3A6 03:9396: F3        .byte $F3, $45, $00, $02   ; 02 
- D 0 - I - 0x00D3AA 03:939A: 00        .byte $00, $2F, $01, $F2   ; 03 
- D 0 - I - 0x00D3AE 03:939E: FF        .byte $FF, $47, $01, $FA   ; 04 
- D 0 - I - 0x00D3B2 03:93A2: 03        .byte $03, $49, $01, $02   ; 05 



_off020_93A6_3E:
_off020_93A6_3F:
_off020_93A6_40:
_off020_93A6_41:
_off020_93A6_42:
_off020_93A6_43:
_off020_93A6_44:
_off020_93A6_45:
_off020_93A6_46:
_off020_93A6_47:
_off020_93A6_48:
_off020_93A6_49:
_off020_93A6_4A:
_off020_93A6_4B:
_off020_93A6_4C:
_off020_93A6_4D:
_off020_93A6_4E:
_off020_93A6_4F:
_off020_93A6_50:
_off020_93A6_51:
_off020_93A6_52:
_off020_93A6_53:
_off020_93A6_54:
_off020_93A6_55:
_off020_93A6_56:
_off020_93A6_57:
_off020_93A6_58:
_off020_93A6_59:
_off020_93A6_5A:
_off020_93A6_5B:
_off020_93A6_5C:
_off020_93A6_5D:
_off020_93A6_5E:
_off020_93A6_5F:
_off020_93A6_60:
_off020_93A6_61:
_off020_93A6_62:
_off020_93A6_63:
_off020_93A6_64:
_off020_93A6_65:
_off020_93A6_66:
_off020_93A6_67:
_off020_93A6_68:
_off020_93A6_69:
_off020_93A6_6A:
_off020_93A6_6B:
_off020_93A6_6C:
_off020_93A6_6D:
_off020_93A6_6E:
_off020_93A6_6F:
_off020_93A6_70:
_off020_93A6_71:
_off020_93A6_72:
_off020_93A6_73:
_off020_93A6_74:
_off020_93A6_75:
_off020_93A6_76:
_off020_93A6_77:
_off020_93A6_78:
_off020_93A6_79:
_off020_93A6_7A:
_off020_93A6_7B:
_off020_93A6_7C:
_off020_93A6_7D:
_off020_93A6_7E:
_off020_93A6_7F:
- - - - - - 0x00D3B6 03:93A6: 80        .byte $80   ; jump
- - - - - - 0x00D3B7 03:93A7: 01 00     .word $0001 ; location



ofs_044_0x00D3B9_00_area_1:
C - - J - - 0x00D3B9 03:93A9: A5 39     LDA ram_pause_flag
C - - - - - 0x00D3BB 03:93AB: F0 01     BEQ bra_93AE_not_paused
C - - - - - 0x00D3BD 03:93AD: 60        RTS
bra_93AE_not_paused:
C - - - - - 0x00D3BE 03:93AE: 20 55 94  JSR sub_9455_area_1
C - - - - - 0x00D3C1 03:93B1: A5 61     LDA ram_0061_area_config
C - - - - - 0x00D3C3 03:93B3: D0 1A     BNE bra_93CF_RTS
C - - - - - 0x00D3C5 03:93B5: A5 8C     LDA ram_008C_area_handler_1
C - - - - - 0x00D3C7 03:93B7: 0A        ASL
C - - - - - 0x00D3C8 03:93B8: A8        TAY
C - - - - - 0x00D3C9 03:93B9: B9 D0 93  LDA tbl_93D0,Y
C - - - - - 0x00D3CC 03:93BC: C5 63     CMP ram_0063
C - - - - - 0x00D3CE 03:93BE: 90 0B     BCC bra_93CB
C - - - - - 0x00D3D0 03:93C0: D0 0D     BNE bra_93CF_RTS
C - - - - - 0x00D3D2 03:93C2: B9 D1 93  LDA tbl_93D0 + $01,Y
C - - - - - 0x00D3D5 03:93C5: C5 FD     CMP ram_scroll_X
C - - - - - 0x00D3D7 03:93C7: F0 02     BEQ bra_93CB
C - - - - - 0x00D3D9 03:93C9: B0 04     BCS bra_93CF_RTS
bra_93CB:
C - - - - - 0x00D3DB 03:93CB: 20 E9 93  JSR sub_93E9_area_1
C - - - - - 0x00D3DE 03:93CE: 18        CLC
bra_93CF_RTS:
C - - - - - 0x00D3DF 03:93CF: 60        RTS



tbl_93D0:
;                                              ----------- 
;                                              |    ------ scroll_X
;                                              |    |
- D 0 - - - 0x00D3E0 03:93D0: 03        .byte $03, $00   ; 00 
- D 0 - - - 0x00D3E2 03:93D2: 03        .byte $03, $80   ; 01 
- D 0 - - - 0x00D3E4 03:93D4: 03        .byte $03, $C0   ; 02 
- D 0 - - - 0x00D3E6 03:93D6: 05        .byte $05, $70   ; 03 
- D 0 - - - 0x00D3E8 03:93D8: 05        .byte $05, $B0   ; 04 
- D 0 - - - 0x00D3EA 03:93DA: 07        .byte $07, $80   ; 05 
- D 0 - - - 0x00D3EC 03:93DC: 07        .byte $07, $C0   ; 06 
- D 0 - - - 0x00D3EE 03:93DE: 0A        .byte $0A, $70   ; 07 
- D 0 - - - 0x00D3F0 03:93E0: 0A        .byte $0A, $B0   ; 08 
- D 0 - - - 0x00D3F2 03:93E2: 0C        .byte $0C, $00   ; 09 
- D 0 - - - 0x00D3F4 03:93E4: 0C        .byte $0C, $02   ; 0A 
- D 0 - - - 0x00D3F6 03:93E6: 0C        .byte $0C, $FE   ; 0B 
- - - - - - 0x00D3F8 03:93E8: FF        .byte $FF   ; 0C final



sub_93E9_area_1:
C - - - - - 0x00D3F9 03:93E9: A5 8C     LDA ram_008C_area_handler_1
C - - - - - 0x00D3FB 03:93EB: 20 09 E6  JSR sub_0x01E619_jump_to_pointers_after_jsr
- D 0 - I - 0x00D3FE 03:93EE: 08 94     .word ofs_019_9408_00
- D 0 - I - 0x00D400 03:93F0: 0F 94     .word ofs_019_940F_01
- D 0 - I - 0x00D402 03:93F2: 19 94     .word ofs_019_9419_02
- D 0 - I - 0x00D404 03:93F4: 23 94     .word ofs_019_9423_03
- D 0 - I - 0x00D406 03:93F6: 2D 94     .word ofs_019_942D_04
- D 0 - I - 0x00D408 03:93F8: 13 94     .word ofs_019_9413_05
- D 0 - I - 0x00D40A 03:93FA: 1D 94     .word ofs_019_941D_06
- D 0 - I - 0x00D40C 03:93FC: 27 94     .word ofs_019_9427_07
- D 0 - I - 0x00D40E 03:93FE: 31 94     .word ofs_019_9431_08
- D 0 - I - 0x00D410 03:9400: 3B 94     .word ofs_019_943B_09
- D 0 - I - 0x00D412 03:9402: 47 94     .word ofs_019_9447_0A
- D 0 - I - 0x00D414 03:9404: 41 94     .word ofs_019_9441_0B
- - - - - - 0x00D416 03:9406: 54 94     .word ofs_019_9454_0C_RTS



ofs_019_9408_00:
C - - J - - 0x00D418 03:9408: A9 3A     LDA #con_chr_bank + $3A
C - - - - - 0x00D41A 03:940A: 8D F1 07  STA ram_chr_bank_bg_2
C - - - - - 0x00D41D 03:940D: D0 42     BNE bra_9451    ; jmp



ofs_019_940F_01:
C - - J - - 0x00D41F 03:940F: A0 02     LDY #$02
C - - - - - 0x00D421 03:9411: D0 02     BNE bra_9415    ; jmp



ofs_019_9413_05:
C - - J - - 0x00D423 03:9413: A0 01     LDY #$01
bra_9415:
C - - - - - 0x00D425 03:9415: A9 90     LDA #$90
C - - - - - 0x00D427 03:9417: D0 1C     BNE bra_9435    ; jmp



ofs_019_9419_02:
C - - J - - 0x00D429 03:9419: A0 02     LDY #$02
C - - - - - 0x00D42B 03:941B: D0 02     BNE bra_941F    ; jmp



ofs_019_941D_06:
C - - J - - 0x00D42D 03:941D: A0 01     LDY #$01
bra_941F:
C - - - - - 0x00D42F 03:941F: A9 60     LDA #$60
C - - - - - 0x00D431 03:9421: D0 12     BNE bra_9435    ; jmp



ofs_019_9423_03:
C - - J - - 0x00D433 03:9423: A0 02     LDY #$02
C - - - - - 0x00D435 03:9425: D0 02     BNE bra_9429    ; jmp



ofs_019_9427_07:
C - - J - - 0x00D437 03:9427: A0 01     LDY #$01
bra_9429:
C - - - - - 0x00D439 03:9429: A9 20     LDA #$20
C - - - - - 0x00D43B 03:942B: D0 08     BNE bra_9435    ; jmp



ofs_019_942D_04:
C - - J - - 0x00D43D 03:942D: A0 01     LDY #$01
C - - - - - 0x00D43F 03:942F: D0 02     BNE bra_9433    ; jmp



ofs_019_9431_08:
C - - J - - 0x00D441 03:9431: A0 00     LDY #$00
bra_9433:
C - - - - - 0x00D443 03:9433: A9 E0     LDA #$E0
bra_9435:
C - - - - - 0x00D445 03:9435: 20 10 F8  JSR sub_0x01F820
C - - - - - 0x00D448 03:9438: 4C 51 94  JMP loc_9451



ofs_019_943B_09:
C - - J - - 0x00D44B 03:943B: A9 C0     LDA #$C0
C - - - - - 0x00D44D 03:943D: 85 7D     STA ram_007D_scroll_type
C - - - - - 0x00D44F 03:943F: 85 71     STA ram_0071_scroll_type
ofs_019_9441_0B:
C - - - - - 0x00D451 03:9441: A9 01     LDA #$01    ; boss fight?
C - - - - - 0x00D453 03:9443: 85 61     STA ram_0061_area_config
C - - - - - 0x00D455 03:9445: D0 0A     BNE bra_9451    ; jmp



ofs_019_9447_0A:
C - - J - - 0x00D457 03:9447: A0 80     LDY #con_F97C_colors + $80
C - - - - - 0x00D459 03:9449: 20 68 F9  JSR sub_0x01F978_write_3_colors
C - - - - - 0x00D45C 03:944C: A0 84     LDY #con_F97C_colors + $84
C - - - - - 0x00D45E 03:944E: 20 68 F9  JSR sub_0x01F978_write_3_colors
bra_9451:
loc_9451:
C D 0 - - - 0x00D461 03:9451: E6 8C     INC ram_008C_area_handler_1
C - - - - - 0x00D463 03:9453: 60        RTS



ofs_019_9454_0C_RTS:
- - - - - - 0x00D464 03:9454: 60        RTS



sub_9455_area_1:
C - - - - - 0x00D465 03:9455: A5 8D     LDA ram_008D_area_handler_2
C - - - - - 0x00D467 03:9457: 0A        ASL
C - - - - - 0x00D468 03:9458: A8        TAY
C - - - - - 0x00D469 03:9459: B9 6E 94  LDA tbl_946E,Y
C - - - - - 0x00D46C 03:945C: C5 82     CMP ram_0082_area_config
C - - - - - 0x00D46E 03:945E: 90 09     BCC bra_9469
C - - - - - 0x00D470 03:9460: D0 0B     BNE bra_946D_RTS
C - - - - - 0x00D472 03:9462: B9 6F 94  LDA tbl_946E + $01,Y
C - - - - - 0x00D475 03:9465: C5 FC     CMP ram_scroll_Y
C - - - - - 0x00D477 03:9467: B0 04     BCS bra_946D_RTS
bra_9469:
C - - - - - 0x00D479 03:9469: 20 73 94  JSR sub_9473_area_1
C - - - - - 0x00D47C 03:946C: 18        CLC
bra_946D_RTS:
C - - - - - 0x00D47D 03:946D: 60        RTS



tbl_946E:
;                                              ----------- 
;                                              |    ------ scroll_Y
;                                              |    |
- D 0 - - - 0x00D47E 03:946E: 02        .byte $02, $80   ; 00 
- D 0 - - - 0x00D480 03:9470: 02        .byte $02, $E0   ; 01 
- D 0 - - - 0x00D482 03:9472: FF        .byte $FF   ; 02 final



sub_9473_area_1:
C - - - - - 0x00D483 03:9473: A5 8D     LDA ram_008D_area_handler_2
C - - - - - 0x00D485 03:9475: 20 09 E6  JSR sub_0x01E619_jump_to_pointers_after_jsr
- D 0 - I - 0x00D488 03:9478: 7E 94     .word ofs_020_947E_00
- D 0 - I - 0x00D48A 03:947A: 86 94     .word ofs_020_9486_01
- - - - - - 0x00D48C 03:947C: 91 94     .word ofs_020_9491_02_RTS



ofs_020_947E_00:
C - - J - - 0x00D48E 03:947E: A0 64     LDY #con_F97C_colors + $64
C - - - - - 0x00D490 03:9480: 20 64 F9  JSR sub_0x01F974_write_3_colors_with_condition
bra_9483:
C - - - - - 0x00D493 03:9483: E6 8D     INC ram_008D_area_handler_2
C - - - - - 0x00D495 03:9485: 60        RTS



ofs_020_9486_01:
C - - J - - 0x00D496 03:9486: A9 38     LDA #con_chr_bank + $38
C - - - - - 0x00D498 03:9488: 8D F0 07  STA ram_chr_bank_bg_1
C - - - - - 0x00D49B 03:948B: A9 40     LDA #$40
C - - - - - 0x00D49D 03:948D: 85 7D     STA ram_007D_scroll_type
C - - - - - 0x00D49F 03:948F: D0 F2     BNE bra_9483    ; jmp



ofs_020_9491_02_RTS:
- - - - - - 0x00D4A1 03:9491: 60        RTS



ofs_044_0x00D4A2_01_area_2:
C - - J - - 0x00D4A2 03:9492: A5 39     LDA ram_pause_flag
C - - - - - 0x00D4A4 03:9494: F0 01     BEQ bra_9497_not_paused
C - - - - - 0x00D4A6 03:9496: 60        RTS
bra_9497_not_paused:
C - - - - - 0x00D4A7 03:9497: A5 8D     LDA ram_008D_area_handler_2
C - - - - - 0x00D4A9 03:9499: 0A        ASL
C - - - - - 0x00D4AA 03:949A: A8        TAY
C - - - - - 0x00D4AB 03:949B: B9 B2 94  LDA tbl_94B2,Y
C - - - - - 0x00D4AE 03:949E: C5 82     CMP ram_0082_area_config
C - - - - - 0x00D4B0 03:94A0: 90 0F     BCC bra_94B1_RTS
C - - - - - 0x00D4B2 03:94A2: F0 02     BEQ bra_94A6
C - - - - - 0x00D4B4 03:94A4: B0 07     BCS bra_94AD    ; jmp
bra_94A6:
C - - - - - 0x00D4B6 03:94A6: B9 B3 94  LDA tbl_94B2 + $01,Y
C - - - - - 0x00D4B9 03:94A9: C5 FC     CMP ram_scroll_Y
C - - - - - 0x00D4BB 03:94AB: 90 04     BCC bra_94B1_RTS
bra_94AD:
C - - - - - 0x00D4BD 03:94AD: 20 CD 94  JSR sub_94CD_area_2
C - - - - - 0x00D4C0 03:94B0: 18        CLC
bra_94B1_RTS:
C - - - - - 0x00D4C1 03:94B1: 60        RTS



tbl_94B2:
;                                              ----------- 
;                                              |    ------ scroll_Y
;                                              |    |
- D 0 - - - 0x00D4C2 03:94B2: 0A        .byte $0A, $00   ; 00 
- D 0 - - - 0x00D4C4 03:94B4: 09        .byte $09, $E0   ; 01 
- D 0 - - - 0x00D4C6 03:94B6: 09        .byte $09, $8E   ; 02 
- D 0 - - - 0x00D4C8 03:94B8: 08        .byte $08, $D0   ; 03 
- D 0 - - - 0x00D4CA 03:94BA: 08        .byte $08, $8E   ; 04 
- D 0 - - - 0x00D4CC 03:94BC: 08        .byte $08, $80   ; 05 
- D 0 - - - 0x00D4CE 03:94BE: 07        .byte $07, $90   ; 06 
- D 0 - - - 0x00D4D0 03:94C0: 03        .byte $03, $00   ; 07 
- D 0 - - - 0x00D4D2 03:94C2: 02        .byte $02, $18   ; 08 
- D 0 - - - 0x00D4D4 03:94C4: 02        .byte $02, $00   ; 09 
- D 0 - - - 0x00D4D6 03:94C6: 01        .byte $01, $60   ; 0A 
- D 0 - - - 0x00D4D8 03:94C8: 01        .byte $01, $00   ; 0B 
- D 0 - - - 0x00D4DA 03:94CA: 00        .byte $00, $80   ; 0C 
- D 0 - - - 0x00D4DC 03:94CC: FF        .byte $FF   ; 0D final



sub_94CD_area_2:
C - - - - - 0x00D4DD 03:94CD: A5 8D     LDA ram_008D_area_handler_2
C - - - - - 0x00D4DF 03:94CF: 20 09 E6  JSR sub_0x01E619_jump_to_pointers_after_jsr
- D 0 - I - 0x00D4E2 03:94D2: EE 94     .word ofs_021_94EE_00
- D 0 - I - 0x00D4E4 03:94D4: 2B 95     .word ofs_021_952B_01
- D 0 - I - 0x00D4E6 03:94D6: 3A 95     .word ofs_021_953A_02
- D 0 - I - 0x00D4E8 03:94D8: 2B 95     .word ofs_021_952B_03
- D 0 - I - 0x00D4EA 03:94DA: 3A 95     .word ofs_021_953A_04
- D 0 - I - 0x00D4EC 03:94DC: FC 94     .word ofs_021_94FC_05
- D 0 - I - 0x00D4EE 03:94DE: 04 95     .word ofs_021_9504_06
- D 0 - I - 0x00D4F0 03:94E0: 1C 95     .word ofs_021_951C_07
- D 0 - I - 0x00D4F2 03:94E2: 33 95     .word ofs_021_9533_08
- D 0 - I - 0x00D4F4 03:94E4: 20 95     .word ofs_021_9520_09
- D 0 - I - 0x00D4F6 03:94E6: 33 95     .word ofs_021_9533_0A
- D 0 - I - 0x00D4F8 03:94E8: 3A 95     .word ofs_021_953A_0B
- D 0 - I - 0x00D4FA 03:94EA: 3A 95     .word ofs_021_953A_0C
- D 0 - I - 0x00D4FC 03:94EC: 46 95     .word ofs_021_9546_0D_RTS



ofs_021_94EE_00:
C - - J - - 0x00D4FE 03:94EE: A0 68     LDY #con_F97C_colors + $68
C - - - - - 0x00D500 03:94F0: 20 64 F9  JSR sub_0x01F974_write_3_colors_with_condition
C - - - - - 0x00D503 03:94F3: A0 6C     LDY #con_F97C_colors + $6C
C - - - - - 0x00D505 03:94F5: 20 64 F9  JSR sub_0x01F974_write_3_colors_with_condition
C - - - - - 0x00D508 03:94F8: A0 70     LDY #con_F97C_colors + $70
C - - - - - 0x00D50A 03:94FA: D0 02     BNE bra_94FE    ; jmp



ofs_021_94FC_05:
C - - J - - 0x00D50C 03:94FC: A0 74     LDY #con_F97C_colors + $74
bra_94FE:
C - - - - - 0x00D50E 03:94FE: 20 64 F9  JSR sub_0x01F974_write_3_colors_with_condition
bra_9501:
loc_9501:
C D 0 - - - 0x00D511 03:9501: E6 8D     INC ram_008D_area_handler_2
C - - - - - 0x00D513 03:9503: 60        RTS



ofs_021_9504_06:
C - - J - - 0x00D514 03:9504: A0 78     LDY #con_F97C_colors + $78
C - - - - - 0x00D516 03:9506: 20 64 F9  JSR sub_0x01F974_write_3_colors_with_condition
C - - - - - 0x00D519 03:9509: A0 20     LDY #$20
C - - - - - 0x00D51B 03:950B: 20 30 FA  JSR sub_0x01FA40
C - - - - - 0x00D51E 03:950E: A0 7C     LDY #con_F97C_colors + $7C
C - - - - - 0x00D520 03:9510: A9 5C     LDA #con_chr_bank + $5C
C - - - - - 0x00D522 03:9512: A2 5E     LDX #con_chr_bank + $5E
C - - - - - 0x00D524 03:9514: 8D F0 07  STA ram_chr_bank_bg_1
bra_9517:
C - - - - - 0x00D527 03:9517: 8E F1 07  STX ram_chr_bank_bg_2
C - - - - - 0x00D52A 03:951A: D0 E2     BNE bra_94FE    ; jmp



ofs_021_951C_07:
C - - J - - 0x00D52C 03:951C: A0 88     LDY #con_F97C_colors + $88
C - - - - - 0x00D52E 03:951E: D0 DE     BNE bra_94FE    ; jmp



ofs_021_9520_09:
C - - J - - 0x00D530 03:9520: A0 8C     LDY #con_F97C_colors + $8C
C - - - - - 0x00D532 03:9522: 20 64 F9  JSR sub_0x01F974_write_3_colors_with_condition
C - - - - - 0x00D535 03:9525: A0 90     LDY #con_F97C_colors + $90
C - - - - - 0x00D537 03:9527: A2 32     LDX #con_chr_bank + $32
C - - - - - 0x00D539 03:9529: D0 EC     BNE bra_9517    ; jmp



ofs_021_952B_01:
ofs_021_952B_03:
C - - J - - 0x00D53B 03:952B: A9 88     LDA #$88
C - - - - - 0x00D53D 03:952D: A0 00     LDY #$00
C - - - - - 0x00D53F 03:952F: 84 9F     STY ram_009F
C - - - - - 0x00D541 03:9531: F0 02     BEQ bra_9535    ; jmp



ofs_021_9533_08:
ofs_021_9533_0A:
C - - J - - 0x00D543 03:9533: A9 EE     LDA #$EE
bra_9535:
C - - - - - 0x00D545 03:9535: 85 98     STA ram_0098
C - - - - - 0x00D547 03:9537: 4C 01 95  JMP loc_9501



ofs_021_953A_02:
ofs_021_953A_04:
ofs_021_953A_0B:
ofs_021_953A_0C:
C - - J - - 0x00D54A 03:953A: A9 00     LDA #$00
C - - - - - 0x00D54C 03:953C: 85 98     STA ram_0098
C - - - - - 0x00D54E 03:953E: A9 C0     LDA #$C0
C - - - - - 0x00D550 03:9540: 85 7D     STA ram_007D_scroll_type
C - - - - - 0x00D552 03:9542: 85 71     STA ram_0071_scroll_type
C - - - - - 0x00D554 03:9544: D0 BB     BNE bra_9501    ; jmp



ofs_021_9546_0D_RTS:
C - - J - - 0x00D556 03:9546: 60        RTS



ofs_044_0x00D557_02_area_3:
C - - J - - 0x00D557 03:9547: AD CD 03  LDA ram_03CD_area_config
C - - - - - 0x00D55A 03:954A: 30 1B     BMI bra_9567
C - - - - - 0x00D55C 03:954C: A5 1B     LDA ram_frm_cnt_1
C - - - - - 0x00D55E 03:954E: 29 07     AND #$07
C - - - - - 0x00D560 03:9550: D0 15     BNE bra_9567
; each 8th frame
C - - - - - 0x00D562 03:9552: EE CD 03  INC ram_03CD_area_config
C - - - - - 0x00D565 03:9555: AC CD 03  LDY ram_03CD_area_config
C - - - - - 0x00D568 03:9558: C0 09     CPY #$09
C - - - - - 0x00D56A 03:955A: 90 02     BCC bra_955E_not_overflow
C - - - - - 0x00D56C 03:955C: A0 00     LDY #$00
bra_955E_not_overflow:
C - - - - - 0x00D56E 03:955E: 8C CD 03  STY ram_03CD_area_config
C - - - - - 0x00D571 03:9561: B9 6C 95  LDA tbl_956C_color,Y
C - - - - - 0x00D574 03:9564: 8D E3 03  STA ram_pal_buffer + $03
bra_9567:
C - - - - - 0x00D577 03:9567: A5 39     LDA ram_pause_flag
C - - - - - 0x00D579 03:9569: F0 0A     BEQ bra_9575_not_paused
C - - - - - 0x00D57B 03:956B: 60        RTS



tbl_956C_color:
- D 0 - - - 0x00D57C 03:956C: 0F        .byte $0F   ; 00 
- D 0 - - - 0x00D57D 03:956D: 0F        .byte $0F   ; 01 
- D 0 - - - 0x00D57E 03:956E: 06        .byte $06   ; 02 
- D 0 - - - 0x00D57F 03:956F: 16        .byte $16   ; 03 
- D 0 - - - 0x00D580 03:9570: 26        .byte $26   ; 04 
- D 0 - - - 0x00D581 03:9571: 16        .byte $16   ; 05 
- D 0 - - - 0x00D582 03:9572: 06        .byte $06   ; 06 
- D 0 - - - 0x00D583 03:9573: 0F        .byte $0F   ; 07 
- D 0 - - - 0x00D584 03:9574: 0F        .byte $0F   ; 08



bra_9575_not_paused:
C - - - - - 0x00D585 03:9575: A5 8C     LDA ram_008C_area_handler_1
C - - - - - 0x00D587 03:9577: 0A        ASL
C - - - - - 0x00D588 03:9578: A8        TAY
C - - - - - 0x00D589 03:9579: B9 90 95  LDA tbl_9590,Y
C - - - - - 0x00D58C 03:957C: C5 63     CMP ram_0063
C - - - - - 0x00D58E 03:957E: 90 0B     BCC bra_958B
C - - - - - 0x00D590 03:9580: D0 0D     BNE bra_958F_RTS
C - - - - - 0x00D592 03:9582: B9 91 95  LDA tbl_9590 + $01,Y
C - - - - - 0x00D595 03:9585: C5 FD     CMP ram_scroll_X
C - - - - - 0x00D597 03:9587: F0 02     BEQ bra_958B
C - - - - - 0x00D599 03:9589: B0 04     BCS bra_958F_RTS
bra_958B:
C - - - - - 0x00D59B 03:958B: 20 9D 95  JSR sub_959D
C - - - - - 0x00D59E 03:958E: 18        CLC
bra_958F_RTS:
C - - - - - 0x00D59F 03:958F: 60        RTS



tbl_9590:
;                                              ----------- 
;                                              |    ------ scroll_X
;                                              |    |
- D 0 - - - 0x00D5A0 03:9590: 06        .byte $06, $00   ; 00 
- D 0 - - - 0x00D5A2 03:9592: 0C        .byte $0C, $00   ; 01 
- D 0 - - - 0x00D5A4 03:9594: 0E        .byte $0E, $00   ; 02 
- D 0 - - - 0x00D5A6 03:9596: 0E        .byte $0E, $02   ; 03 
- D 0 - - - 0x00D5A8 03:9598: 10        .byte $10, $00   ; 04 
- D 0 - - - 0x00D5AA 03:959A: 13        .byte $13, $00   ; 05 
- D 0 - - - 0x00D5AC 03:959C: FF        .byte $FF   ; 06 final



sub_959D:
C - - - - - 0x00D5AD 03:959D: A6 8C     LDX ram_008C_area_handler_1
C - - - - - 0x00D5AF 03:959F: D0 0E     BNE bra_95AF
; 00 
C - - - - - 0x00D5B1 03:95A1: A9 10     LDA #con_chr_bank + $10
C - - - - - 0x00D5B3 03:95A3: 8D F1 07  STA ram_chr_bank_bg_2
C - - - - - 0x00D5B6 03:95A6: A0 08     LDY #con_F97C_colors + $08
C - - - - - 0x00D5B8 03:95A8: 20 64 F9  JSR sub_0x01F974_write_3_colors_with_condition
C - - - - - 0x00D5BB 03:95AB: A0 0C     LDY #con_F97C_colors + $0C
C - - - - - 0x00D5BD 03:95AD: D0 0A     BNE bra_95B9    ; jmp
bra_95AF:
C - - - - - 0x00D5BF 03:95AF: CA        DEX
C - - - - - 0x00D5C0 03:95B0: D0 0D     BNE bra_95BF
; 01 
C - - - - - 0x00D5C2 03:95B2: A0 10     LDY #con_F97C_colors + $10
C - - - - - 0x00D5C4 03:95B4: 20 64 F9  JSR sub_0x01F974_write_3_colors_with_condition
C - - - - - 0x00D5C7 03:95B7: A0 14     LDY #con_F97C_colors + $14
bra_95B9:
C - - - - - 0x00D5C9 03:95B9: 20 64 F9  JSR sub_0x01F974_write_3_colors_with_condition
bra_95BC:
C - - - - - 0x00D5CC 03:95BC: E6 8C     INC ram_008C_area_handler_1
C - - - - - 0x00D5CE 03:95BE: 60        RTS
bra_95BF:
C - - - - - 0x00D5CF 03:95BF: CA        DEX
C - - - - - 0x00D5D0 03:95C0: D0 17     BNE bra_95D9
; 02 
C - - - - - 0x00D5D2 03:95C2: A9 01     LDA #$01
C - - - - - 0x00D5D4 03:95C4: 85 61     STA ram_0061_area_config
C - - - - - 0x00D5D6 03:95C6: A9 12     LDA #con_chr_bank + $12
C - - - - - 0x00D5D8 03:95C8: 8D F0 07  STA ram_chr_bank_bg_1
C - - - - - 0x00D5DB 03:95CB: A9 14     LDA #con_chr_bank + $14
C - - - - - 0x00D5DD 03:95CD: 8D F1 07  STA ram_chr_bank_bg_2
C - - - - - 0x00D5E0 03:95D0: A0 18     LDY #con_F97C_colors + $18
C - - - - - 0x00D5E2 03:95D2: 20 64 F9  JSR sub_0x01F974_write_3_colors_with_condition
C - - - - - 0x00D5E5 03:95D5: A0 1C     LDY #con_F97C_colors + $1C
C - - - - - 0x00D5E7 03:95D7: D0 E0     BNE bra_95B9    ; jmp
bra_95D9:
C - - - - - 0x00D5E9 03:95D9: CA        DEX
C - - - - - 0x00D5EA 03:95DA: D0 0E     BNE bra_95EA
; 03 
C - - - - - 0x00D5EC 03:95DC: A9 10     LDA #con_chr_bank + $10
C - - - - - 0x00D5EE 03:95DE: 8D F1 07  STA ram_chr_bank_bg_2
C - - - - - 0x00D5F1 03:95E1: A0 20     LDY #con_F97C_colors + $20
C - - - - - 0x00D5F3 03:95E3: 20 64 F9  JSR sub_0x01F974_write_3_colors_with_condition
C - - - - - 0x00D5F6 03:95E6: A0 24     LDY #con_F97C_colors + $24
C - - - - - 0x00D5F8 03:95E8: D0 CF     BNE bra_95B9    ; jmp
bra_95EA:
C - - - - - 0x00D5FA 03:95EA: CA        DEX
C - - - - - 0x00D5FB 03:95EB: D0 09     BNE bra_95F6
; 04 
C - - - - - 0x00D5FD 03:95ED: A0 44     LDY #con_F97C_colors + $44
C - - - - - 0x00D5FF 03:95EF: 20 64 F9  JSR sub_0x01F974_write_3_colors_with_condition
C - - - - - 0x00D602 03:95F2: A0 48     LDY #con_F97C_colors + $48
C - - - - - 0x00D604 03:95F4: D0 C3     BNE bra_95B9    ; jmp
bra_95F6:
C - - - - - 0x00D606 03:95F6: CA        DEX
C - - - - - 0x00D607 03:95F7: D0 06     BNE bra_95FF_RTS
; 05 
C - - - - - 0x00D609 03:95F9: A9 02     LDA #$02
C - - - - - 0x00D60B 03:95FB: 85 61     STA ram_0061_area_config
C - - - - - 0x00D60D 03:95FD: D0 BD     BNE bra_95BC    ; jmp
bra_95FF_RTS:
- - - - - - 0x00D60F 03:95FF: 60        RTS



ofs_044_0x00D610_03_area_4:
C - - J - - 0x00D610 03:9600: A5 1B     LDA ram_frm_cnt_1
C - - - - - 0x00D612 03:9602: 29 07     AND #$07
C - - - - - 0x00D614 03:9604: D0 15     BNE bra_961B
C - - - - - 0x00D616 03:9606: EE CD 03  INC ram_03CD_area_config
C - - - - - 0x00D619 03:9609: AC CD 03  LDY ram_03CD_area_config
C - - - - - 0x00D61C 03:960C: C0 09     CPY #$09
C - - - - - 0x00D61E 03:960E: 90 02     BCC bra_9612_not_overflow
C - - - - - 0x00D620 03:9610: A0 00     LDY #$00
bra_9612_not_overflow:
C - - - - - 0x00D622 03:9612: 8C CD 03  STY ram_03CD_area_config
C - - - - - 0x00D625 03:9615: B9 20 96  LDA tbl_9620_color,Y
C - - - - - 0x00D628 03:9618: 8D EF 03  STA ram_pal_buffer + $0F
bra_961B:
C - - - - - 0x00D62B 03:961B: A5 39     LDA ram_pause_flag
C - - - - - 0x00D62D 03:961D: F0 0A     BEQ bra_9629_not_paused
C - - - - - 0x00D62F 03:961F: 60        RTS



tbl_9620_color:
- D 0 - - - 0x00D630 03:9620: 0F        .byte $0F   ; 00 
- D 0 - - - 0x00D631 03:9621: 0F        .byte $0F   ; 01 
- D 0 - - - 0x00D632 03:9622: 06        .byte $06   ; 02 
- D 0 - - - 0x00D633 03:9623: 16        .byte $16   ; 03 
- D 0 - - - 0x00D634 03:9624: 26        .byte $26   ; 04 
- D 0 - - - 0x00D635 03:9625: 16        .byte $16   ; 05 
- D 0 - - - 0x00D636 03:9626: 06        .byte $06   ; 06 
- D 0 - - - 0x00D637 03:9627: 0F        .byte $0F   ; 07 
- D 0 - - - 0x00D638 03:9628: 0F        .byte $0F   ; 08 



bra_9629_not_paused:
C - - - - - 0x00D639 03:9629: 20 6F 96  JSR sub_966F
C - - - - - 0x00D63C 03:962C: A5 8C     LDA ram_008C_area_handler_1
C - - - - - 0x00D63E 03:962E: 0A        ASL
C - - - - - 0x00D63F 03:962F: A8        TAY
C - - - - - 0x00D640 03:9630: B9 47 96  LDA tbl_9647,Y
C - - - - - 0x00D643 03:9633: C5 63     CMP ram_0063
C - - - - - 0x00D645 03:9635: 90 0B     BCC bra_9642
C - - - - - 0x00D647 03:9637: D0 0D     BNE bra_9646_RTS
C - - - - - 0x00D649 03:9639: B9 48 96  LDA tbl_9647 + $01,Y
C - - - - - 0x00D64C 03:963C: C5 FD     CMP ram_scroll_X
C - - - - - 0x00D64E 03:963E: F0 02     BEQ bra_9642
C - - - - - 0x00D650 03:9640: B0 04     BCS bra_9646_RTS
bra_9642:
C - - - - - 0x00D652 03:9642: 20 4E 96  JSR sub_964E
C - - - - - 0x00D655 03:9645: 18        CLC
bra_9646_RTS:
C - - - - - 0x00D656 03:9646: 60        RTS



tbl_9647:
;                                              ----------- 
;                                              |    ------ scroll_X
;                                              |    |
- D 0 - - - 0x00D657 03:9647: 02        .byte $02, $A0   ; 00 
- D 0 - - - 0x00D659 03:9649: 03        .byte $03, $00   ; 01 
- D 0 - - - 0x00D65B 03:964B: 03        .byte $03, $C0   ; 02 
- D 0 - - - 0x00D65D 03:964D: FF        .byte $FF   ; 03 final



sub_964E:
C - - - - - 0x00D65E 03:964E: A5 8C     LDA ram_008C_area_handler_1
C - - - - - 0x00D660 03:9650: 20 09 E6  JSR sub_0x01E619_jump_to_pointers_after_jsr
- D 0 - I - 0x00D663 03:9653: 5B 96     .word ofs_022_965B_00
- D 0 - I - 0x00D665 03:9655: 61 96     .word ofs_022_9661_01
- D 0 - I - 0x00D667 03:9657: 68 96     .word ofs_022_9668_02
- - - - - - 0x00D669 03:9659: 6E 96     .word ofs_022_966E_03_RTS



ofs_022_965B_00:
C - - J - - 0x00D66B 03:965B: A9 01     LDA #$01
C - - - - - 0x00D66D 03:965D: 85 6F     STA ram_006F
C - - - - - 0x00D66F 03:965F: D0 04     BNE bra_9665    ; jmp



ofs_022_9661_01:
C - - J - - 0x00D671 03:9661: A9 01     LDA #$01
C - - - - - 0x00D673 03:9663: 85 61     STA ram_0061_area_config
bra_9665:
C - - - - - 0x00D675 03:9665: E6 8C     INC ram_008C_area_handler_1
C - - - - - 0x00D677 03:9667: 60        RTS



ofs_022_9668_02:
C - - J - - 0x00D678 03:9668: A9 01     LDA #$01
C - - - - - 0x00D67A 03:966A: 85 61     STA ram_0061_area_config
C - - - - - 0x00D67C 03:966C: D0 F7     BNE bra_9665    ; jmp



ofs_022_966E_03_RTS:
- - - - - - 0x00D67E 03:966E: 60        RTS



sub_966F:
C - - - - - 0x00D67F 03:966F: A5 8D     LDA ram_008D_area_handler_2
C - - - - - 0x00D681 03:9671: 0A        ASL
C - - - - - 0x00D682 03:9672: A8        TAY
C - - - - - 0x00D683 03:9673: B9 8A 96  LDA tbl_968A,Y
C - - - - - 0x00D686 03:9676: C5 82     CMP ram_0082_area_config
C - - - - - 0x00D688 03:9678: 90 0F     BCC bra_9689_RTS
C - - - - - 0x00D68A 03:967A: F0 02     BEQ bra_967E
C - - - - - 0x00D68C 03:967C: B0 07     BCS bra_9685    ; jmp
bra_967E:
C - - - - - 0x00D68E 03:967E: B9 8B 96  LDA tbl_968A + $01,Y
C - - - - - 0x00D691 03:9681: C5 FC     CMP ram_scroll_Y
C - - - - - 0x00D693 03:9683: 90 04     BCC bra_9689_RTS
bra_9685:
C - - - - - 0x00D695 03:9685: 20 9D 96  JSR sub_969D
C - - - - - 0x00D698 03:9688: 18        CLC
bra_9689_RTS:
C - - - - - 0x00D699 03:9689: 60        RTS



tbl_968A:
;                                              ----------- 
;                                              |    ------ scroll_Y
;                                              |    |
- D 0 - - - 0x00D69A 03:968A: 0B        .byte $0B, $E0   ; 00 
- D 0 - - - 0x00D69C 03:968C: 09        .byte $09, $30   ; 01 
- D 0 - - - 0x00D69E 03:968E: 09        .byte $09, $00   ; 02 
- D 0 - - - 0x00D6A0 03:9690: 08        .byte $08, $40   ; 03 
- D 0 - - - 0x00D6A2 03:9692: 06        .byte $06, $00   ; 04 
- D 0 - - - 0x00D6A4 03:9694: 05        .byte $05, $40   ; 05 
- D 0 - - - 0x00D6A6 03:9696: 04        .byte $04, $C0   ; 06 
- D 0 - - - 0x00D6A8 03:9698: 02        .byte $02, $D0   ; 07 
- D 0 - - - 0x00D6AA 03:969A: 01        .byte $01, $00   ; 08 
- D 0 - - - 0x00D6AC 03:969C: FF        .byte $FF   ; 09 final



sub_969D:
C - - - - - 0x00D6AD 03:969D: A5 8D     LDA ram_008D_area_handler_2
C - - - - - 0x00D6AF 03:969F: 20 09 E6  JSR sub_0x01E619_jump_to_pointers_after_jsr
- D 0 - I - 0x00D6B2 03:96A2: B6 96     .word ofs_023_96B6_00
- D 0 - I - 0x00D6B4 03:96A4: BD 96     .word ofs_023_96BD_01
- D 0 - I - 0x00D6B6 03:96A6: C3 96     .word ofs_023_96C3_02
- D 0 - I - 0x00D6B8 03:96A8: CF 96     .word ofs_023_96CF_03
- D 0 - I - 0x00D6BA 03:96AA: DD 96     .word ofs_023_96DD_04
- D 0 - I - 0x00D6BC 03:96AC: CF 96     .word ofs_023_96CF_05
- D 0 - I - 0x00D6BE 03:96AE: E7 96     .word ofs_023_96E7_06
- D 0 - I - 0x00D6C0 03:96B0: EB 96     .word ofs_023_96EB_07
- D 0 - I - 0x00D6C2 03:96B2: DD 96     .word ofs_023_96DD_08
- D 0 - I - 0x00D6C4 03:96B4: F2 96     .word ofs_023_96F2_09_RTS



ofs_023_96B6_00:
C - - J - - 0x00D6C6 03:96B6: A9 1B     LDA #con_chr_bank + $1B
C - - - - - 0x00D6C8 03:96B8: 8D F5 07  STA ram_chr_bank_spr_4
C - - - - - 0x00D6CB 03:96BB: D0 32     BNE bra_96EF    ; jmp



ofs_023_96BD_01:
C - - J - - 0x00D6CD 03:96BD: A9 EE     LDA #$EE
C - - - - - 0x00D6CF 03:96BF: 85 98     STA ram_0098
C - - - - - 0x00D6D1 03:96C1: D0 2C     BNE bra_96EF    ; jmp



ofs_023_96C3_02:
C - - J - - 0x00D6D3 03:96C3: A9 00     LDA #$00
C - - - - - 0x00D6D5 03:96C5: 85 98     STA ram_0098
C - - - - - 0x00D6D7 03:96C7: A9 C0     LDA #$C0
C - - - - - 0x00D6D9 03:96C9: 85 7D     STA ram_007D_scroll_type
C - - - - - 0x00D6DB 03:96CB: 85 71     STA ram_0071_scroll_type
C - - - - - 0x00D6DD 03:96CD: D0 20     BNE bra_96EF    ; jmp



ofs_023_96CF_03:
ofs_023_96CF_05:
C - - J - - 0x00D6DF 03:96CF: A9 80     LDA #$80
C - - - - - 0x00D6E1 03:96D1: 85 7E     STA ram_007E
C - - - - - 0x00D6E3 03:96D3: A9 00     LDA #$00
C - - - - - 0x00D6E5 03:96D5: 85 7F     STA ram_007F
C - - - - - 0x00D6E7 03:96D7: A9 FF     LDA #$FF
C - - - - - 0x00D6E9 03:96D9: 85 80     STA ram_0080
C - - - - - 0x00D6EB 03:96DB: D0 12     BNE bra_96EF    ; jmp



ofs_023_96DD_04:
ofs_023_96DD_08:
C - - J - - 0x00D6ED 03:96DD: A9 C0     LDA #$C0
C - - - - - 0x00D6EF 03:96DF: 85 71     STA ram_0071_scroll_type
C - - - - - 0x00D6F1 03:96E1: A9 00     LDA #$00
C - - - - - 0x00D6F3 03:96E3: 85 7E     STA ram_007E
C - - - - - 0x00D6F5 03:96E5: F0 08     BEQ bra_96EF    ; jmp



ofs_023_96E7_06:
C - - J - - 0x00D6F7 03:96E7: A9 01     LDA #$01
C - - - - - 0x00D6F9 03:96E9: D0 02     BNE bra_96ED    ; jmp



ofs_023_96EB_07:
C - - J - - 0x00D6FB 03:96EB: A9 00     LDA #$00
bra_96ED:
C - - - - - 0x00D6FD 03:96ED: 85 9F     STA ram_009F
bra_96EF:
C - - - - - 0x00D6FF 03:96EF: E6 8D     INC ram_008D_area_handler_2
C - - - - - 0x00D701 03:96F1: 60        RTS



ofs_023_96F2_09_RTS:
C - - J - - 0x00D702 03:96F2: 60        RTS



ofs_044_0x00D703_04_area_5:
C - - J - - 0x00D703 03:96F3: AD CD 03  LDA ram_03CD_area_config
C - - - - - 0x00D706 03:96F6: 30 1C     BMI bra_9714
C - - - - - 0x00D708 03:96F8: A5 1B     LDA ram_frm_cnt_1
C - - - - - 0x00D70A 03:96FA: 29 07     AND #$07
C - - - - - 0x00D70C 03:96FC: D0 16     BNE bra_9714
; each 8th frame
C - - - - - 0x00D70E 03:96FE: EE CD 03  INC ram_03CD_area_config
C - - - - - 0x00D711 03:9701: AC CD 03  LDY ram_03CD_area_config
C - - - - - 0x00D714 03:9704: C0 06     CPY #$06
C - - - - - 0x00D716 03:9706: 90 02     BCC bra_970A_not_overflow
C - - - - - 0x00D718 03:9708: A0 00     LDY #$00
bra_970A_not_overflow:
C - - - - - 0x00D71A 03:970A: 8C CD 03  STY ram_03CD_area_config
C - - - - - 0x00D71D 03:970D: B9 4E 97  LDA tbl_974E,Y
C - - - - - 0x00D720 03:9710: A8        TAY
C - - - - - 0x00D721 03:9711: 20 64 F9  JSR sub_0x01F974_write_3_colors_with_condition
bra_9714:
C - - - - - 0x00D724 03:9714: AD CF 03  LDA ram_03CF_area_config
C - - - - - 0x00D727 03:9717: 30 30     BMI bra_9749
C - - - - - 0x00D729 03:9719: A5 1B     LDA ram_frm_cnt_1
C - - - - - 0x00D72B 03:971B: 29 03     AND #$03
C - - - - - 0x00D72D 03:971D: D0 2A     BNE bra_9749
C - - - - - 0x00D72F 03:971F: EE CF 03  INC ram_03CF_area_config
C - - - - - 0x00D732 03:9722: AD CF 03  LDA ram_03CF_area_config
C - - - - - 0x00D735 03:9725: 29 40     AND #$40
C - - - - - 0x00D737 03:9727: 85 00     STA ram_0000
C - - - - - 0x00D739 03:9729: AD CF 03  LDA ram_03CF_area_config
C - - - - - 0x00D73C 03:972C: 29 3F     AND #$3F
C - - - - - 0x00D73E 03:972E: C9 09     CMP #$09
C - - - - - 0x00D740 03:9730: 90 02     BCC bra_9734_not_overflow
C - - - - - 0x00D742 03:9732: A9 00     LDA #$00
bra_9734_not_overflow:
C - - - - - 0x00D744 03:9734: A8        TAY
C - - - - - 0x00D745 03:9735: 05 00     ORA ram_0000
C - - - - - 0x00D747 03:9737: 8D CF 03  STA ram_03CF_area_config
C - - - - - 0x00D74A 03:973A: 0A        ASL
C - - - - - 0x00D74B 03:973B: 0A        ASL
C - - - - - 0x00D74C 03:973C: B9 54 97  LDA tbl_9754_color,Y
C - - - - - 0x00D74F 03:973F: B0 05     BCS bra_9746
C - - - - - 0x00D751 03:9741: 8D EF 03  STA ram_pal_buffer + $0F
C - - - - - 0x00D754 03:9744: 90 03     BCC bra_9749    ; jmp
bra_9746:
C - - - - - 0x00D756 03:9746: 8D EB 03  STA ram_pal_buffer + $0B
bra_9749:
C - - - - - 0x00D759 03:9749: A5 39     LDA ram_pause_flag
C - - - - - 0x00D75B 03:974B: F0 10     BEQ bra_975D_not_paused
C - - - - - 0x00D75D 03:974D: 60        RTS



tbl_974E:
- D 0 - - - 0x00D75E 03:974E: 38        .byte con_F97C_colors + $38   ; 
- D 0 - - - 0x00D75F 03:974F: 3C        .byte con_F97C_colors + $3C   ; 
- D 0 - - - 0x00D760 03:9750: 40        .byte con_F97C_colors + $40   ; 
- D 0 - - - 0x00D761 03:9751: 40        .byte con_F97C_colors + $40   ; 
- D 0 - - - 0x00D762 03:9752: 3C        .byte con_F97C_colors + $3C   ; 
- D 0 - - - 0x00D763 03:9753: 38        .byte con_F97C_colors + $38   ; 



tbl_9754_color:
- D 0 - - - 0x00D764 03:9754: 0F        .byte $0F   ; 00 
- D 0 - - - 0x00D765 03:9755: 0F        .byte $0F   ; 01 
- D 0 - - - 0x00D766 03:9756: 06        .byte $06   ; 02 
- D 0 - - - 0x00D767 03:9757: 16        .byte $16   ; 03 
- D 0 - - - 0x00D768 03:9758: 26        .byte $26   ; 04 
- D 0 - - - 0x00D769 03:9759: 16        .byte $16   ; 05 
- D 0 - - - 0x00D76A 03:975A: 06        .byte $06   ; 06 
- D 0 - - - 0x00D76B 03:975B: 0F        .byte $0F   ; 07 
- D 0 - - - 0x00D76C 03:975C: 0F        .byte $0F   ; 08 



bra_975D_not_paused:
C - - - - - 0x00D76D 03:975D: 20 E1 97  JSR sub_97E1
C - - - - - 0x00D770 03:9760: A5 61     LDA ram_0061_area_config
C - - - - - 0x00D772 03:9762: D0 1A     BNE bra_977E_RTS
C - - - - - 0x00D774 03:9764: A5 8C     LDA ram_008C_area_handler_1
C - - - - - 0x00D776 03:9766: 0A        ASL
C - - - - - 0x00D777 03:9767: A8        TAY
C - - - - - 0x00D778 03:9768: B9 7F 97  LDA tbl_977F,Y
C - - - - - 0x00D77B 03:976B: C5 63     CMP ram_0063
C - - - - - 0x00D77D 03:976D: 90 0B     BCC bra_977A
C - - - - - 0x00D77F 03:976F: D0 0D     BNE bra_977E_RTS
C - - - - - 0x00D781 03:9771: B9 80 97  LDA tbl_977F + $01,Y
C - - - - - 0x00D784 03:9774: C5 FD     CMP ram_scroll_X
C - - - - - 0x00D786 03:9776: F0 02     BEQ bra_977A
C - - - - - 0x00D788 03:9778: B0 04     BCS bra_977E_RTS    ; jmp
bra_977A:
C - - - - - 0x00D78A 03:977A: 20 8A 97  JSR sub_978A
C - - - - - 0x00D78D 03:977D: 18        CLC
bra_977E_RTS:
C - - - - - 0x00D78E 03:977E: 60        RTS



tbl_977F:
;                                              ----------- 
;                                              |    ------ scroll_X
;                                              |    |
- D 0 - - - 0x00D78F 03:977F: 00        .byte $00, $02   ; 00 
- D 0 - - - 0x00D791 03:9781: 01        .byte $01, $00   ; 01 
- D 0 - - - 0x00D793 03:9783: 01        .byte $01, $80   ; 02 
- D 0 - - - 0x00D795 03:9785: 05        .byte $05, $00   ; 03 
- D 0 - - - 0x00D797 03:9787: 05        .byte $05, $E0   ; 04 
- - - - - - 0x00D799 03:9789: FF        .byte $FF   ; 05 final



sub_978A:
C - - - - - 0x00D79A 03:978A: A5 8C     LDA ram_008C_area_handler_1
C - - - - - 0x00D79C 03:978C: 20 09 E6  JSR sub_0x01E619_jump_to_pointers_after_jsr
- D 0 - I - 0x00D79F 03:978F: 9B 97     .word ofs_024_979B_00
- D 0 - I - 0x00D7A1 03:9791: B2 97     .word ofs_024_97B2_01
- D 0 - I - 0x00D7A3 03:9793: BB 97     .word ofs_024_97BB_02
- D 0 - I - 0x00D7A5 03:9795: C3 97     .word ofs_024_97C3_03
- D 0 - I - 0x00D7A7 03:9797: DA 97     .word ofs_024_97DA_04
- - - - - - 0x00D7A9 03:9799: E0 97     .word ofs_024_97E0_05_RTS



ofs_024_979B_00:
C - - J - - 0x00D7AB 03:979B: A0 00     LDY #$00
C - - - - - 0x00D7AD 03:979D: 20 30 FA  JSR sub_0x01FA40
C - - - - - 0x00D7B0 03:97A0: A9 20     LDA #con_chr_bank + $20
C - - - - - 0x00D7B2 03:97A2: 8D F0 07  STA ram_chr_bank_bg_1
C - - - - - 0x00D7B5 03:97A5: A9 22     LDA #con_chr_bank + $22
C - - - - - 0x00D7B7 03:97A7: 8D F1 07  STA ram_chr_bank_bg_2
C - - - - - 0x00D7BA 03:97AA: A0 28     LDY #con_F97C_colors + $28
bra_97AC:
C - - - - - 0x00D7BC 03:97AC: 20 64 F9  JSR sub_0x01F974_write_3_colors_with_condition
bra_97AF:
C - - - - - 0x00D7BF 03:97AF: E6 8C     INC ram_008C_area_handler_1
C - - - - - 0x00D7C1 03:97B1: 60        RTS



ofs_024_97B2_01:
C - - J - - 0x00D7C2 03:97B2: A9 FF     LDA #$FF
C - - - - - 0x00D7C4 03:97B4: 8D CD 03  STA ram_03CD_area_config
C - - - - - 0x00D7C7 03:97B7: A0 2C     LDY #con_F97C_colors + $2C
C - - - - - 0x00D7C9 03:97B9: D0 F1     BNE bra_97AC    ; jmp



ofs_024_97BB_02:
C - - J - - 0x00D7CB 03:97BB: A9 80     LDA #$80
bra_97BD:
C - - - - - 0x00D7CD 03:97BD: 85 7D     STA ram_007D_scroll_type
C - - - - - 0x00D7CF 03:97BF: 85 71     STA ram_0071_scroll_type
C - - - - - 0x00D7D1 03:97C1: D0 EC     BNE bra_97AF    ; jmp



ofs_024_97C3_03:
C - - J - - 0x00D7D3 03:97C3: A9 40     LDA #$40
C - - - - - 0x00D7D5 03:97C5: 8D CF 03  STA ram_03CF_area_config
C - - - - - 0x00D7D8 03:97C8: A0 A4     LDY #con_F97C_colors + $A4
C - - - - - 0x00D7DA 03:97CA: 20 64 F9  JSR sub_0x01F974_write_3_colors_with_condition
C - - - - - 0x00D7DD 03:97CD: A0 A8     LDY #con_F97C_colors + $A8
C - - - - - 0x00D7DF 03:97CF: 20 64 F9  JSR sub_0x01F974_write_3_colors_with_condition
C - - - - - 0x00D7E2 03:97D2: A9 02     LDA #$02
C - - - - - 0x00D7E4 03:97D4: 85 61     STA ram_0061_area_config
C - - - - - 0x00D7E6 03:97D6: A9 C0     LDA #$C0
C - - - - - 0x00D7E8 03:97D8: D0 E3     BNE bra_97BD    ; jmp



ofs_024_97DA_04:
C - - J - - 0x00D7EA 03:97DA: A9 01     LDA #$01
C - - - - - 0x00D7EC 03:97DC: 85 61     STA ram_0061_area_config
C - - - - - 0x00D7EE 03:97DE: D0 CF     BNE bra_97AF    ; jmp



ofs_024_97E0_05_RTS:
- - - - - - 0x00D7F0 03:97E0: 60        RTS



sub_97E1:
C - - - - - 0x00D7F1 03:97E1: A5 8D     LDA ram_008D_area_handler_2
C - - - - - 0x00D7F3 03:97E3: 0A        ASL
C - - - - - 0x00D7F4 03:97E4: A8        TAY
C - - - - - 0x00D7F5 03:97E5: B9 FC 97  LDA tbl_97FC,Y
C - - - - - 0x00D7F8 03:97E8: C5 82     CMP ram_0082_area_config
C - - - - - 0x00D7FA 03:97EA: 90 0F     BCC bra_97FB_RTS
C - - - - - 0x00D7FC 03:97EC: F0 02     BEQ bra_97F0
C - - - - - 0x00D7FE 03:97EE: B0 07     BCS bra_97F7    ; jmp
bra_97F0:
C - - - - - 0x00D800 03:97F0: B9 FD 97  LDA tbl_97FC + $01,Y
C - - - - - 0x00D803 03:97F3: C5 FC     CMP ram_scroll_Y
C - - - - - 0x00D805 03:97F5: 90 04     BCC bra_97FB_RTS
bra_97F7:
C - - - - - 0x00D807 03:97F7: 20 01 98  JSR sub_9801
C - - - - - 0x00D80A 03:97FA: 18        CLC
bra_97FB_RTS:
C - - - - - 0x00D80B 03:97FB: 60        RTS



tbl_97FC:
;                                              ----------- 
;                                              |    ------ scroll_Y
;                                              |    |
- D 0 - - - 0x00D80C 03:97FC: 01        .byte $01, $00   ; 00 
- D 0 - - - 0x00D80E 03:97FE: 00        .byte $00, $80   ; 01 
- D 0 - - - 0x00D810 03:9800: FF        .byte $FF   ; 02 final



sub_9801:
C - - - - - 0x00D811 03:9801: A6 8D     LDX ram_008D_area_handler_2
C - - - - - 0x00D813 03:9803: D0 07     BNE bra_980C
C - - - - - 0x00D815 03:9805: A9 FF     LDA #$FF
C - - - - - 0x00D817 03:9807: 8D CF 03  STA ram_03CF_area_config
C - - - - - 0x00D81A 03:980A: D0 0A     BNE bra_9816    ; jmp
bra_980C:
C - - - - - 0x00D81C 03:980C: CA        DEX
C - - - - - 0x00D81D 03:980D: D0 0A     BNE bra_9819_RTS
C - - - - - 0x00D81F 03:980F: 20 90 F1  JSR sub_0x01F1A0
C - - - - - 0x00D822 03:9812: A9 00     LDA #$00
C - - - - - 0x00D824 03:9814: 85 61     STA ram_0061_area_config
bra_9816:
C - - - - - 0x00D826 03:9816: E6 8D     INC ram_008D_area_handler_2
C - - - - - 0x00D828 03:9818: 60        RTS
bra_9819_RTS:   ; bzk optimize
C - - - - - 0x00D829 03:9819: 60        RTS



ofs_044_0x00D82A_05_area_6:
C - - J - - 0x00D82A 03:981A: AC CD 03  LDY ram_03CD_area_config
C - - - - - 0x00D82D 03:981D: 30 1B     BMI bra_983A
C - - - - - 0x00D82F 03:981F: A5 1B     LDA ram_frm_cnt_1
C - - - - - 0x00D831 03:9821: 29 0F     AND #$0F
C - - - - - 0x00D833 03:9823: D0 15     BNE bra_983A
; each 16th frame
C - - - - - 0x00D835 03:9825: EE CD 03  INC ram_03CD_area_config
C - - - - - 0x00D838 03:9828: AC CD 03  LDY ram_03CD_area_config
C - - - - - 0x00D83B 03:982B: B9 5E 98  LDA tbl_985F - $01,Y
C - - - - - 0x00D83E 03:982E: 8D E7 03  STA ram_pal_buffer + $07
C - - - - - 0x00D841 03:9831: C0 04     CPY #$04
C - - - - - 0x00D843 03:9833: 90 05     BCC bra_983A
C - - - - - 0x00D845 03:9835: A9 FF     LDA #$FF
C - - - - - 0x00D847 03:9837: 8D CD 03  STA ram_03CD_area_config
bra_983A:
C - - - - - 0x00D84A 03:983A: AD CF 03  LDA ram_03CF_area_config
C - - - - - 0x00D84D 03:983D: 30 1B     BMI bra_985A
C - - - - - 0x00D84F 03:983F: A5 1B     LDA ram_frm_cnt_1
C - - - - - 0x00D851 03:9841: 29 07     AND #$07
C - - - - - 0x00D853 03:9843: D0 15     BNE bra_985A
C - - - - - 0x00D855 03:9845: EE CF 03  INC ram_03CF_area_config
C - - - - - 0x00D858 03:9848: AC CF 03  LDY ram_03CF_area_config
C - - - - - 0x00D85B 03:984B: C0 07     CPY #$07
C - - - - - 0x00D85D 03:984D: 90 02     BCC bra_9851_not_overflow
C - - - - - 0x00D85F 03:984F: A0 00     LDY #$00
bra_9851_not_overflow:
C - - - - - 0x00D861 03:9851: 8C CF 03  STY ram_03CF_area_config
C - - - - - 0x00D864 03:9854: B9 63 98  LDA tbl_9863_color,Y
C - - - - - 0x00D867 03:9857: 8D EF 03  STA ram_pal_buffer + $0F
bra_985A:
C - - - - - 0x00D86A 03:985A: A5 39     LDA ram_pause_flag
C - - - - - 0x00D86C 03:985C: F0 0C     BEQ bra_986A_not_paused
C - - - - - 0x00D86E 03:985E: 60        RTS



tbl_985F:
- D 0 - - - 0x00D86F 03:985F: 03        .byte $03   ; 01 
- D 0 - - - 0x00D870 03:9860: 04        .byte $04   ; 02 
- D 0 - - - 0x00D871 03:9861: 05        .byte $05   ; 03 
- D 0 - - - 0x00D872 03:9862: 06        .byte $06   ; 04 



tbl_9863_color:
- D 0 - - - 0x00D873 03:9863: 0F        .byte $0F   ; 00 
- D 0 - - - 0x00D874 03:9864: 06        .byte $06   ; 01 
- D 0 - - - 0x00D875 03:9865: 16        .byte $16   ; 02 
- D 0 - - - 0x00D876 03:9866: 26        .byte $26   ; 03 
- D 0 - - - 0x00D877 03:9867: 16        .byte $16   ; 04 
- D 0 - - - 0x00D878 03:9868: 06        .byte $06   ; 05 
- D 0 - - - 0x00D879 03:9869: 0F        .byte $0F   ; 06 



bra_986A_not_paused:
C - - - - - 0x00D87A 03:986A: A5 8D     LDA ram_008D_area_handler_2
C - - - - - 0x00D87C 03:986C: 0A        ASL
C - - - - - 0x00D87D 03:986D: A8        TAY
C - - - - - 0x00D87E 03:986E: B9 85 98  LDA tbl_9885,Y
C - - - - - 0x00D881 03:9871: C5 82     CMP ram_0082_area_config
C - - - - - 0x00D883 03:9873: 90 0F     BCC bra_9884_RTS
C - - - - - 0x00D885 03:9875: F0 02     BEQ bra_9879
C - - - - - 0x00D887 03:9877: B0 07     BCS bra_9880    ; jmp
bra_9879:
C - - - - - 0x00D889 03:9879: B9 86 98  LDA tbl_9885 + $01,Y
C - - - - - 0x00D88C 03:987C: C5 FC     CMP ram_scroll_Y
C - - - - - 0x00D88E 03:987E: 90 04     BCC bra_9884_RTS
bra_9880:
C - - - - - 0x00D890 03:9880: 20 94 98  JSR sub_9894_area_6
C - - - - - 0x00D893 03:9883: 18        CLC
bra_9884_RTS:
C - - - - - 0x00D894 03:9884: 60        RTS



tbl_9885:
;                                              ----------- 
;                                              |    ------ scroll_Y
;                                              |    |
- D 0 - - - 0x00D895 03:9885: 09        .byte $09, $00   ; 00 
- D 0 - - - 0x00D897 03:9887: 06        .byte $06, $00   ; 01 
- D 0 - - - 0x00D899 03:9889: 04        .byte $04, $00   ; 02 
- D 0 - - - 0x00D89B 03:988B: 03        .byte $03, $C0   ; 03 
- D 0 - - - 0x00D89D 03:988D: 02        .byte $02, $C0   ; 04 
- D 0 - - - 0x00D89F 03:988F: 01        .byte $01, $60   ; 05 
- D 0 - - - 0x00D8A1 03:9891: 01        .byte $01, $00   ; 06 
- D 0 - - - 0x00D8A3 03:9893: FF        .byte $FF   ; 07 final



sub_9894_area_6:
C - - - - - 0x00D8A4 03:9894: A5 8D     LDA ram_008D_area_handler_2
C - - - - - 0x00D8A6 03:9896: 20 09 E6  JSR sub_0x01E619_jump_to_pointers_after_jsr
- D 0 - I - 0x00D8A9 03:9899: A9 98     .word ofs_025_98A9_00
- D 0 - I - 0x00D8AB 03:989B: B1 98     .word ofs_025_98B1_01
- D 0 - I - 0x00D8AD 03:989D: B8 98     .word ofs_025_98B8_02
- D 0 - I - 0x00D8AF 03:989F: C0 98     .word ofs_025_98C0_03
- D 0 - I - 0x00D8B1 03:98A1: C7 98     .word ofs_025_98C7_04
- D 0 - I - 0x00D8B3 03:98A3: CB 98     .word ofs_025_98CB_05
- D 0 - I - 0x00D8B5 03:98A5: D1 98     .word ofs_025_98D1_06
- D 0 - I - 0x00D8B7 03:98A7: E2 98     .word ofs_025_98E2_07_RTS



ofs_025_98A9_00:
C - - J - - 0x00D8B9 03:98A9: A0 94     LDY #con_F97C_colors + $94
C - - - - - 0x00D8BB 03:98AB: 20 64 F9  JSR sub_0x01F974_write_3_colors_with_condition
bra_98AE:
loc_98AE:
C D 0 - - - 0x00D8BE 03:98AE: E6 8D     INC ram_008D_area_handler_2
C - - - - - 0x00D8C0 03:98B0: 60        RTS



ofs_025_98B1_01:
C - - J - - 0x00D8C1 03:98B1: A9 52     LDA #con_chr_bank + $52
C - - - - - 0x00D8C3 03:98B3: 8D F1 07  STA ram_chr_bank_bg_2
C - - - - - 0x00D8C6 03:98B6: D0 F6     BNE bra_98AE    ; jmp



ofs_025_98B8_02:
C - - J - - 0x00D8C8 03:98B8: A0 30     LDY #$30
C - - - - - 0x00D8CA 03:98BA: 20 30 FA  JSR sub_0x01FA40
C - - - - - 0x00D8CD 03:98BD: 4C AE 98  JMP loc_98AE



ofs_025_98C0_03:
C - - J - - 0x00D8D0 03:98C0: A9 00     LDA #$00
C - - - - - 0x00D8D2 03:98C2: 8D CD 03  STA ram_03CD_area_config
C - - - - - 0x00D8D5 03:98C5: F0 E7     BEQ bra_98AE    ; jmp



ofs_025_98C7_04:
C - - J - - 0x00D8D7 03:98C7: A9 70     LDA #$70
C - - - - - 0x00D8D9 03:98C9: D0 02     BNE bra_98CD    ; jmp



ofs_025_98CB_05:
C - - J - - 0x00D8DB 03:98CB: A9 EE     LDA #$EE
bra_98CD:
C - - - - - 0x00D8DD 03:98CD: 85 98     STA ram_0098
C - - - - - 0x00D8DF 03:98CF: D0 DD     BNE bra_98AE    ; jmp



ofs_025_98D1_06:
C - - J - - 0x00D8E1 03:98D1: A0 98     LDY #con_F97C_colors + $98
C - - - - - 0x00D8E3 03:98D3: 20 64 F9  JSR sub_0x01F974_write_3_colors_with_condition
C - - - - - 0x00D8E6 03:98D6: A9 00     LDA #$00
C - - - - - 0x00D8E8 03:98D8: 85 98     STA ram_0098
C - - - - - 0x00D8EA 03:98DA: A9 C0     LDA #$C0
C - - - - - 0x00D8EC 03:98DC: 85 7D     STA ram_007D_scroll_type
C - - - - - 0x00D8EE 03:98DE: 85 71     STA ram_0071_scroll_type
C - - - - - 0x00D8F0 03:98E0: D0 CC     BNE bra_98AE    ; jmp



ofs_025_98E2_07_RTS:
C - - J - - 0x00D8F2 03:98E2: 60        RTS



ofs_044_0x00D8F3_06_area_7:
C - - J - - 0x00D8F3 03:98E3: A5 39     LDA ram_pause_flag
C - - - - - 0x00D8F5 03:98E5: F0 01     BEQ bra_98E8_not_paused
C - - - - - 0x00D8F7 03:98E7: 60        RTS
bra_98E8_not_paused:
C - - - - - 0x00D8F8 03:98E8: A5 8D     LDA ram_008D_area_handler_2
C - - - - - 0x00D8FA 03:98EA: 0A        ASL
C - - - - - 0x00D8FB 03:98EB: A8        TAY
C - - - - - 0x00D8FC 03:98EC: B9 01 99  LDA tbl_9901,Y
C - - - - - 0x00D8FF 03:98EF: C5 82     CMP ram_0082_area_config
C - - - - - 0x00D901 03:98F1: 90 09     BCC bra_98FC
C - - - - - 0x00D903 03:98F3: D0 0B     BNE bra_9900_RTS
C - - - - - 0x00D905 03:98F5: B9 02 99  LDA tbl_9901 + $01,Y
C - - - - - 0x00D908 03:98F8: C5 FC     CMP ram_scroll_Y
C - - - - - 0x00D90A 03:98FA: B0 04     BCS bra_9900_RTS
bra_98FC:
C - - - - - 0x00D90C 03:98FC: 20 0C 99  JSR sub_990C_area_7
C - - - - - 0x00D90F 03:98FF: 18        CLC
bra_9900_RTS:
C - - - - - 0x00D910 03:9900: 60        RTS



tbl_9901:
;                                              ----------- 
;                                              |    ------ scroll_Y
;                                              |    |
- D 0 - - - 0x00D911 03:9901: 00        .byte $00, $10   ; 00 
- D 0 - - - 0x00D913 03:9903: 05        .byte $05, $00   ; 01 
- D 0 - - - 0x00D915 03:9905: 08        .byte $08, $00   ; 02 
- D 0 - - - 0x00D917 03:9907: 0C        .byte $0C, $00   ; 03 
- D 0 - - - 0x00D919 03:9909: 0C        .byte $0C, $D8   ; 04 
- D 0 - - - 0x00D91B 03:990B: FF        .byte $FF   ; 05 final



sub_990C_area_7:
C - - - - - 0x00D91C 03:990C: A6 8D     LDX ram_008D_area_handler_2
C - - - - - 0x00D91E 03:990E: D0 0C     BNE bra_991C
C - - - - - 0x00D920 03:9910: A9 33     LDA #$33
C - - - - - 0x00D922 03:9912: A0 7F     LDY #$7F
bra_9914_loop:
C - - - - - 0x00D924 03:9914: 99 80 04  STA ram_0480_area_data_2,Y
C - - - - - 0x00D927 03:9917: 88        DEY
C - - - - - 0x00D928 03:9918: 10 FA     BPL bra_9914_loop
C - - - - - 0x00D92A 03:991A: 30 0D     BMI bra_9929    ; jmp
bra_991C:
C - - - - - 0x00D92C 03:991C: CA        DEX
C - - - - - 0x00D92D 03:991D: D0 0D     BNE bra_992C
C - - - - - 0x00D92F 03:991F: A9 28     LDA #con_chr_bank + $28
C - - - - - 0x00D931 03:9921: 8D F0 07  STA ram_chr_bank_bg_1
C - - - - - 0x00D934 03:9924: A0 30     LDY #con_F97C_colors + $30
bra_9926:
C - - - - - 0x00D936 03:9926: 20 64 F9  JSR sub_0x01F974_write_3_colors_with_condition
bra_9929:
C - - - - - 0x00D939 03:9929: E6 8D     INC ram_008D_area_handler_2
C - - - - - 0x00D93B 03:992B: 60        RTS
bra_992C:
C - - - - - 0x00D93C 03:992C: CA        DEX
C - - - - - 0x00D93D 03:992D: D0 0E     BNE bra_993D
C - - - - - 0x00D93F 03:992F: A9 2A     LDA #con_chr_bank + $2A
C - - - - - 0x00D941 03:9931: 8D F1 07  STA ram_chr_bank_bg_2
C - - - - - 0x00D944 03:9934: A9 65     LDA #con_chr_bank + $65
C - - - - - 0x00D946 03:9936: 8D F5 07  STA ram_chr_bank_spr_4
C - - - - - 0x00D949 03:9939: A0 34     LDY #con_F97C_colors + $34
C - - - - - 0x00D94B 03:993B: D0 E9     BNE bra_9926    ; jmp
bra_993D:
C - - - - - 0x00D94D 03:993D: CA        DEX
C - - - - - 0x00D94E 03:993E: D0 1D     BNE bra_995D
C - - - - - 0x00D950 03:9940: A0 10     LDY #$10
C - - - - - 0x00D952 03:9942: 20 30 FA  JSR sub_0x01FA40
C - - - - - 0x00D955 03:9945: A9 2C     LDA #con_chr_bank + $2C
C - - - - - 0x00D957 03:9947: 8D F0 07  STA ram_chr_bank_bg_1
C - - - - - 0x00D95A 03:994A: A9 2E     LDA #con_chr_bank + $2E
C - - - - - 0x00D95C 03:994C: 8D F1 07  STA ram_chr_bank_bg_2
C - - - - - 0x00D95F 03:994F: A9 66     LDA #con_chr_bank + $66
C - - - - - 0x00D961 03:9951: 8D F4 07  STA ram_chr_bank_spr_3
C - - - - - 0x00D964 03:9954: A0 50     LDY #con_F97C_colors + $50
C - - - - - 0x00D966 03:9956: 20 64 F9  JSR sub_0x01F974_write_3_colors_with_condition
C - - - - - 0x00D969 03:9959: A0 54     LDY #con_F97C_colors + $54
C - - - - - 0x00D96B 03:995B: D0 C9     BNE bra_9926    ; jmp
bra_995D:
C - - - - - 0x00D96D 03:995D: CA        DEX
C - - - - - 0x00D96E 03:995E: D0 06     BNE bra_9966_RTS
C - - - - - 0x00D970 03:9960: A9 C0     LDA #$C0
C - - - - - 0x00D972 03:9962: 85 7D     STA ram_007D_scroll_type
C - - - - - 0x00D974 03:9964: D0 C3     BNE bra_9929    ; jmp
bra_9966_RTS:
- - - - - - 0x00D976 03:9966: 60        RTS



ofs_044_0x00D977_07_area_8:
C - - J - - 0x00D977 03:9967: A5 1B     LDA ram_frm_cnt_1
C - - - - - 0x00D979 03:9969: 29 07     AND #$07
C - - - - - 0x00D97B 03:996B: D0 16     BNE bra_9983
; each 8th frame
C - - - - - 0x00D97D 03:996D: EE CD 03  INC ram_03CD_area_config
C - - - - - 0x00D980 03:9970: AC CD 03  LDY ram_03CD_area_config
C - - - - - 0x00D983 03:9973: C0 06     CPY #$06
C - - - - - 0x00D985 03:9975: 90 02     BCC bra_9979_not_overflow
C - - - - - 0x00D987 03:9977: A0 00     LDY #$00
bra_9979_not_overflow:
C - - - - - 0x00D989 03:9979: 8C CD 03  STY ram_03CD_area_config
C - - - - - 0x00D98C 03:997C: B9 88 99  LDA tbl_9988,Y
C - - - - - 0x00D98F 03:997F: A8        TAY
C - - - - - 0x00D990 03:9980: 20 64 F9  JSR sub_0x01F974_write_3_colors_with_condition
bra_9983:
C - - - - - 0x00D993 03:9983: A5 39     LDA ram_pause_flag
C - - - - - 0x00D995 03:9985: F0 07     BEQ bra_998E_not_paused
C - - - - - 0x00D997 03:9987: 60        RTS



tbl_9988:
- D 0 - - - 0x00D998 03:9988: 58        .byte con_F97C_colors + $58   ; 
- D 0 - - - 0x00D999 03:9989: 5C        .byte con_F97C_colors + $5C   ; 
- D 0 - - - 0x00D99A 03:998A: 60        .byte con_F97C_colors + $60   ; 
- D 0 - - - 0x00D99B 03:998B: 60        .byte con_F97C_colors + $60   ; 
- D 0 - - - 0x00D99C 03:998C: 5C        .byte con_F97C_colors + $5C   ; 
- D 0 - - - 0x00D99D 03:998D: 58        .byte con_F97C_colors + $58   ; 



bra_998E_not_paused:
C - - - - - 0x00D99E 03:998E: 20 3A 9A  JSR sub_9A3A_area_8
C - - - - - 0x00D9A1 03:9991: A5 8C     LDA ram_008C_area_handler_1
C - - - - - 0x00D9A3 03:9993: 0A        ASL
C - - - - - 0x00D9A4 03:9994: A8        TAY
C - - - - - 0x00D9A5 03:9995: B9 AC 99  LDA tbl_99AC,Y
C - - - - - 0x00D9A8 03:9998: C5 63     CMP ram_0063
C - - - - - 0x00D9AA 03:999A: 90 0B     BCC bra_99A7
C - - - - - 0x00D9AC 03:999C: D0 0D     BNE bra_99AB_RTS
C - - - - - 0x00D9AE 03:999E: B9 AD 99  LDA tbl_99AC + $01,Y
C - - - - - 0x00D9B1 03:99A1: C5 FD     CMP ram_scroll_X
C - - - - - 0x00D9B3 03:99A3: F0 02     BEQ bra_99A7
C - - - - - 0x00D9B5 03:99A5: B0 04     BCS bra_99AB_RTS
bra_99A7:
C - - - - - 0x00D9B7 03:99A7: 20 C5 99  JSR sub_99C5_area_8
C - - - - - 0x00D9BA 03:99AA: 18        CLC
bra_99AB_RTS:
C - - - - - 0x00D9BB 03:99AB: 60        RTS



tbl_99AC:
;                                              ----------- 
;                                              |    ------ scroll_X
;                                              |    |
- D 0 - - - 0x00D9BC 03:99AC: 03        .byte $03, $80   ; 00 
- D 0 - - - 0x00D9BE 03:99AE: 05        .byte $05, $01   ; 01 
- D 0 - - - 0x00D9C0 03:99B0: 05        .byte $05, $20   ; 02 
- D 0 - - - 0x00D9C2 03:99B2: 05        .byte $05, $B0   ; 03 
- D 0 - - - 0x00D9C4 03:99B4: 05        .byte $05, $E0   ; 04 
- D 0 - - - 0x00D9C6 03:99B6: 06        .byte $06, $90   ; 05 
- D 0 - - - 0x00D9C8 03:99B8: 07        .byte $07, $80   ; 06 
- D 0 - - - 0x00D9CA 03:99BA: 0B        .byte $0B, $C0   ; 07 
- D 0 - - - 0x00D9CC 03:99BC: 0C        .byte $0C, $80   ; 08 
- D 0 - - - 0x00D9CE 03:99BE: 0C        .byte $0C, $80   ; 09 
- D 0 - - - 0x00D9D0 03:99C0: 0D        .byte $0D, $A0   ; 0A 
- D 0 - - - 0x00D9D2 03:99C2: 0E        .byte $0E, $00   ; 0B 
- D 0 - - - 0x00D9D4 03:99C4: FF        .byte $FF   ; 0C final



sub_99C5_area_8:
C - - - - - 0x00D9D5 03:99C5: A5 8C     LDA ram_008C_area_handler_1
C - - - - - 0x00D9D7 03:99C7: 20 09 E6  JSR sub_0x01E619_jump_to_pointers_after_jsr
- D 0 - I - 0x00D9DA 03:99CA: E4 99     .word ofs_026_99E4_00
- D 0 - I - 0x00D9DC 03:99CC: 2D 9A     .word ofs_026_9A2D_01
- D 0 - I - 0x00D9DE 03:99CE: EC 99     .word ofs_026_99EC_02
- D 0 - I - 0x00D9E0 03:99D0: 2D 9A     .word ofs_026_9A2D_03
- D 0 - I - 0x00D9E2 03:99D2: EC 99     .word ofs_026_99EC_04
- D 0 - I - 0x00D9E4 03:99D4: F7 99     .word ofs_026_99F7_05
- D 0 - I - 0x00D9E6 03:99D6: 0A 9A     .word ofs_026_9A0A_06
- D 0 - I - 0x00D9E8 03:99D8: 1B 9A     .word ofs_026_9A1B_07
- D 0 - I - 0x00D9EA 03:99DA: F7 99     .word ofs_026_99F7_08
- D 0 - I - 0x00D9EC 03:99DC: 23 9A     .word ofs_026_9A23_09
- D 0 - I - 0x00D9EE 03:99DE: 2D 9A     .word ofs_026_9A2D_0A
- D 0 - I - 0x00D9F0 03:99E0: 33 9A     .word ofs_026_9A33_0B
- - - - - - 0x00D9F2 03:99E2: 39 9A     .word ofs_026_9A39_0C_RTS



ofs_026_99E4_00:
C - - J - - 0x00D9F4 03:99E4: A9 40     LDA #$40
C - - - - - 0x00D9F6 03:99E6: 85 7D     STA ram_007D_scroll_type
C - - - - - 0x00D9F8 03:99E8: 85 71     STA ram_0071_scroll_type
C - - - - - 0x00D9FA 03:99EA: D0 08     BNE bra_99F4    ; jmp



ofs_026_99EC_02:
ofs_026_99EC_04:
C - - J - - 0x00D9FC 03:99EC: A9 02     LDA #$02
C - - - - - 0x00D9FE 03:99EE: 85 61     STA ram_0061_area_config
C - - - - - 0x00DA00 03:99F0: A9 00     LDA #$00
C - - - - - 0x00DA02 03:99F2: 85 6F     STA ram_006F
bra_99F4:
loc_99F4:
C D 0 - - - 0x00DA04 03:99F4: E6 8C     INC ram_008C_area_handler_1
C - - - - - 0x00DA06 03:99F6: 60        RTS



ofs_026_99F7_05:
ofs_026_99F7_08:
C - - J - - 0x00DA07 03:99F7: A9 C0     LDA #$C0
C - - - - - 0x00DA09 03:99F9: 85 7D     STA ram_007D_scroll_type
C - - - - - 0x00DA0B 03:99FB: 85 71     STA ram_0071_scroll_type
C - - - - - 0x00DA0D 03:99FD: A9 01     LDA #$01
C - - - - - 0x00DA0F 03:99FF: A4 FC     LDY ram_scroll_Y
C - - - - - 0x00DA11 03:9A01: 30 02     BMI bra_9A05
C - - - - - 0x00DA13 03:9A03: A9 EE     LDA #$EE
bra_9A05:
C - - - - - 0x00DA15 03:9A05: 85 98     STA ram_0098
C - - - - - 0x00DA17 03:9A07: 4C F4 99  JMP loc_99F4



ofs_026_9A0A_06:
C - - J - - 0x00DA1A 03:9A0A: A0 40     LDY #$40
C - - - - - 0x00DA1C 03:9A0C: 20 30 FA  JSR sub_0x01FA40
C - - - - - 0x00DA1F 03:9A0F: A9 6C     LDA #con_chr_bank + $6C
C - - - - - 0x00DA21 03:9A11: 8D F0 07  STA ram_chr_bank_bg_1
C - - - - - 0x00DA24 03:9A14: A9 6E     LDA #con_chr_bank + $6E
C - - - - - 0x00DA26 03:9A16: 8D F1 07  STA ram_chr_bank_bg_2
C - - - - - 0x00DA29 03:9A19: D0 D9     BNE bra_99F4    ; jmp



ofs_026_9A1B_07:
C - - J - - 0x00DA2B 03:9A1B: A9 80     LDA #$80
C - - - - - 0x00DA2D 03:9A1D: 85 7D     STA ram_007D_scroll_type
C - - - - - 0x00DA2F 03:9A1F: 85 71     STA ram_0071_scroll_type
C - - - - - 0x00DA31 03:9A21: D0 D1     BNE bra_99F4    ; jmp



ofs_026_9A23_09:
C - - J - - 0x00DA33 03:9A23: A5 FC     LDA ram_scroll_Y
C - - - - - 0x00DA35 03:9A25: D0 12     BNE bra_9A39_RTS
C - - - - - 0x00DA37 03:9A27: A9 00     LDA #$00
C - - - - - 0x00DA39 03:9A29: 85 98     STA ram_0098
C - - - - - 0x00DA3B 03:9A2B: F0 C7     BEQ bra_99F4    ; jmp



ofs_026_9A2D_01:
ofs_026_9A2D_03:
ofs_026_9A2D_0A:
C - - J - - 0x00DA3D 03:9A2D: A9 01     LDA #$01
C - - - - - 0x00DA3F 03:9A2F: 85 6F     STA ram_006F
C - - - - - 0x00DA41 03:9A31: D0 C1     BNE bra_99F4    ; jmp



ofs_026_9A33_0B:
C - - J - - 0x00DA43 03:9A33: A9 01     LDA #$01
C - - - - - 0x00DA45 03:9A35: 85 61     STA ram_0061_area_config
C - - - - - 0x00DA47 03:9A37: D0 BB     BNE bra_99F4    ; jmp



bra_9A39_RTS:
ofs_026_9A39_0C_RTS:
C - - - - - 0x00DA49 03:9A39: 60        RTS



sub_9A3A_area_8:
C - - - - - 0x00DA4A 03:9A3A: A5 8D     LDA ram_008D_area_handler_2
C - - - - - 0x00DA4C 03:9A3C: 0A        ASL
C - - - - - 0x00DA4D 03:9A3D: A8        TAY
C - - - - - 0x00DA4E 03:9A3E: B9 55 9A  LDA tbl_9A55,Y
C - - - - - 0x00DA51 03:9A41: C5 82     CMP ram_0082_area_config
C - - - - - 0x00DA53 03:9A43: 90 0F     BCC bra_9A54_RTS
C - - - - - 0x00DA55 03:9A45: F0 02     BEQ bra_9A49
C - - - - - 0x00DA57 03:9A47: B0 07     BCS bra_9A50    ; jmp
bra_9A49:
C - - - - - 0x00DA59 03:9A49: B9 56 9A  LDA tbl_9A55 + $01,Y
C - - - - - 0x00DA5C 03:9A4C: C5 FC     CMP ram_scroll_Y
C - - - - - 0x00DA5E 03:9A4E: 90 04     BCC bra_9A54_RTS
bra_9A50:
C - - - - - 0x00DA60 03:9A50: 20 5C 9A  JSR sub_9A5C_area_8
C - - - - - 0x00DA63 03:9A53: 18        CLC
bra_9A54_RTS:
C - - - - - 0x00DA64 03:9A54: 60        RTS



tbl_9A55:
;                                              ----------- 
;                                              |    ------ scroll_Y
;                                              |    |
- D 0 - - - 0x00DA65 03:9A55: 01        .byte $01, $D0   ; 00 
- D 0 - - - 0x00DA67 03:9A57: 01        .byte $01, $20   ; 01 
- D 0 - - - 0x00DA69 03:9A59: 00        .byte $00, $C0   ; 02 
- D 0 - - - 0x00DA6B 03:9A5B: FF        .byte $FF   ; 03 final



sub_9A5C_area_8:
C - - - - - 0x00DA6C 03:9A5C: A5 8D     LDA ram_008D_area_handler_2
C - - - - - 0x00DA6E 03:9A5E: 20 09 E6  JSR sub_0x01E619_jump_to_pointers_after_jsr
- D 0 - I - 0x00DA71 03:9A61: 69 9A     .word ofs_027_9A69_00
- D 0 - I - 0x00DA73 03:9A63: 69 9A     .word ofs_027_9A69_01
- D 0 - I - 0x00DA75 03:9A65: 70 9A     .word ofs_027_9A70_02
- D 0 - I - 0x00DA77 03:9A67: 76 9A     .word ofs_027_9A76_03_RTS



ofs_027_9A69_00:
ofs_027_9A69_01:
C - - J - - 0x00DA79 03:9A69: A9 00     LDA #$00
C - - - - - 0x00DA7B 03:9A6B: 85 61     STA ram_0061_area_config
bra_9A6D:
C - - - - - 0x00DA7D 03:9A6D: E6 8D     INC ram_008D_area_handler_2
C - - - - - 0x00DA7F 03:9A6F: 60        RTS



ofs_027_9A70_02:
C - - J - - 0x00DA80 03:9A70: A9 C0     LDA #$C0
C - - - - - 0x00DA82 03:9A72: 85 71     STA ram_0071_scroll_type
C - - - - - 0x00DA84 03:9A74: D0 F7     BNE bra_9A6D    ; jmp



ofs_027_9A76_03_RTS:
C - - J - - 0x00DA86 03:9A76: 60        RTS



_off004_0x00DA87_03_area_4:
- D 0 - I - 0x00DA87 03:9A77: 07        .byte $07   ; columns
- D 0 - I - 0x00DA88 03:9A78: 0D        .byte $0D   ; rows

;                                              00   01   02   03   04   05   06
- - - - - - 0x00DA89 03:9A79: 00        .byte $00, $00, $00, $0E, $12, $00, $10   ; 00 
- - - - - - 0x00DA90 03:9A80: 00        .byte $00, $00, $00, $0D, $11, $00, $0F   ; 01 
- - - - - - 0x00DA97 03:9A87: 00        .byte $00, $00, $00, $0C, $00, $00, $00   ; 02 
- - - - - - 0x00DA9E 03:9A8E: 00        .byte $00, $00, $00, $0B, $00, $00, $00   ; 03 
- - - - - - 0x00DAA5 03:9A95: 00        .byte $00, $00, $00, $0A, $00, $00, $00   ; 04 
- - - - - - 0x00DAAC 03:9A9C: 00        .byte $00, $00, $00, $09, $00, $00, $00   ; 05 
- - - - - - 0x00DAB3 03:9AA3: 00        .byte $00, $00, $00, $08, $00, $00, $00   ; 06 
- - - - - - 0x00DABA 03:9AAA: 00        .byte $00, $00, $00, $07, $00, $00, $00   ; 07 
- - - - - - 0x00DAC1 03:9AB1: 00        .byte $00, $00, $00, $06, $00, $00, $00   ; 08 
- - - - - - 0x00DAC8 03:9AB8: 00        .byte $00, $00, $00, $05, $00, $00, $00   ; 09 
- - - - - - 0x00DACF 03:9ABF: 00        .byte $00, $00, $00, $04, $00, $00, $00   ; 0A 
- - - - - - 0x00DAD6 03:9AC6: 00        .byte $00, $00, $00, $03, $00, $00, $00   ; 0B 
- D 0 - I - 0x00DADD 03:9ACD: 01        .byte $01, $01, $01, $02, $00, $00, $00   ; 0C 



_off005_0x00DAE4_03_area_4:
- D 0 - I - 0x00DAE4 03:9AD4: FA 9A     .word _off018_03_9AFA_00
- D 0 - I - 0x00DAE6 03:9AD6: 3A 9B     .word _off018_03_9B3A_01
- D 0 - I - 0x00DAE8 03:9AD8: 7A 9B     .word _off018_03_9B7A_02
- D 0 - I - 0x00DAEA 03:9ADA: BA 9B     .word _off018_03_9BBA_03
- D 0 - I - 0x00DAEC 03:9ADC: FA 9B     .word _off018_03_9BFA_04
- D 0 - I - 0x00DAEE 03:9ADE: 3A 9C     .word _off018_03_9C3A_05
- D 0 - I - 0x00DAF0 03:9AE0: 7A 9C     .word _off018_03_9C7A_06
- D 0 - I - 0x00DAF2 03:9AE2: BA 9C     .word _off018_03_9CBA_07
- D 0 - I - 0x00DAF4 03:9AE4: FA 9C     .word _off018_03_9CFA_08
- D 0 - I - 0x00DAF6 03:9AE6: 3A 9D     .word _off018_03_9D3A_09
- D 0 - I - 0x00DAF8 03:9AE8: 7A 9D     .word _off018_03_9D7A_0A
- D 0 - I - 0x00DAFA 03:9AEA: BA 9D     .word _off018_03_9DBA_0B
- D 0 - I - 0x00DAFC 03:9AEC: FA 9D     .word _off018_03_9DFA_0C
- D 0 - I - 0x00DAFE 03:9AEE: 3A 9E     .word _off018_03_9E3A_0D
- D 0 - I - 0x00DB00 03:9AF0: 7A 9E     .word _off018_03_9E7A_0E
- D 0 - I - 0x00DB02 03:9AF2: BA 9E     .word _off018_03_9EBA_0F
- D 0 - I - 0x00DB04 03:9AF4: FA 9E     .word _off018_03_9EFA_10
- D 0 - I - 0x00DB06 03:9AF6: 3A 9F     .word _off018_03_9F3A_11
- D 0 - I - 0x00DB08 03:9AF8: 7A 9F     .word _off018_03_9F7A_12



_off018_03_9AFA_00:
;                                              00   01   02   03   04   05   06   07
- D 0 - I - 0x00DB0A 03:9AFA: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 00 
- D 0 - I - 0x00DB12 03:9B02: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 01 
- D 0 - I - 0x00DB1A 03:9B0A: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 02 
- D 0 - I - 0x00DB22 03:9B12: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 03 
- D 0 - I - 0x00DB2A 03:9B1A: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 04 
- D 0 - I - 0x00DB32 03:9B22: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 05 
- D 0 - I - 0x00DB3A 03:9B2A: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 06 
- D 0 - I - 0x00DB42 03:9B32: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 07 



_off018_03_9B3A_01:
;                                              00   01   02   03   04   05   06   07
- D 0 - I - 0x00DB4A 03:9B3A: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 00 
- D 0 - I - 0x00DB52 03:9B42: 8B        .byte $8B, $12, $8B, $12, $8B, $12, $8B, $12   ; 01 
- D 0 - I - 0x00DB5A 03:9B4A: 78        .byte $78, $79, $7A, $7B, $7A, $7C, $7A, $88   ; 02 
- D 0 - I - 0x00DB62 03:9B52: 81        .byte $81, $82, $00, $86, $86, $86, $86, $2B   ; 03 
- D 0 - I - 0x00DB6A 03:9B5A: 62        .byte $62, $27, $00, $87, $87, $87, $87, $00   ; 04 
- D 0 - I - 0x00DB72 03:9B62: 7D        .byte $7D, $7E, $7F, $80, $7D, $7E, $7F, $80   ; 05 
- D 0 - I - 0x00DB7A 03:9B6A: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 06 
- D 0 - I - 0x00DB82 03:9B72: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 07 



_off018_03_9B7A_02:
;                                              00   01   02   03   04   05   06   07
- D 0 - I - 0x00DB8A 03:9B7A: 30        .byte $30, $41, $10, $10, $10, $10, $42, $31   ; 00 
- D 0 - I - 0x00DB92 03:9B82: 18        .byte $18, $40, $00, $81, $82, $00, $32, $1B   ; 01 
- D 0 - I - 0x00DB9A 03:9B8A: 89        .byte $89, $2B, $3C, $62, $27, $3C, $2B, $1A   ; 02 
- D 0 - I - 0x00DBA2 03:9B92: 00        .byte $00, $2B, $00, $00, $00, $00, $2B, $1B   ; 03 
- D 0 - I - 0x00DBAA 03:9B9A: 00        .byte $00, $00, $15, $15, $15, $15, $00, $19   ; 04 
- D 0 - I - 0x00DBB2 03:9BA2: 7D        .byte $7D, $7E, $7F, $80, $8A, $7E, $8A, $13   ; 05 
- D 0 - I - 0x00DBBA 03:9BAA: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 06 
- D 0 - I - 0x00DBC2 03:9BB2: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 07 



_off018_03_9BBA_03:
;                                              00   01   02   03   04   05   06   07
- D 0 - I - 0x00DBCA 03:9BBA: 5E        .byte $5E, $36, $37, $00, $63, $68, $15, $23   ; 00 
- D 0 - I - 0x00DBD2 03:9BC2: 4D        .byte $4D, $2E, $15, $68, $66, $15, $15, $19   ; 01 
- D 0 - I - 0x00DBDA 03:9BCA: 44        .byte $44, $01, $63, $64, $4F, $01, $00, $1B   ; 02 
- D 0 - I - 0x00DBE2 03:9BD2: 45        .byte $45, $26, $66, $65, $2B, $3C, $63, $84   ; 03 
- D 0 - I - 0x00DBEA 03:9BDA: 16        .byte $16, $26, $14, $14, $63, $68, $6A, $5F   ; 04 
- D 0 - I - 0x00DBF2 03:9BE2: 20        .byte $20, $14, $3C, $67, $66, $15, $6B, $23   ; 05 
- D 0 - I - 0x00DBFA 03:9BEA: 1C        .byte $1C, $68, $64, $3C, $3C, $3C, $67, $19   ; 06 
- D 0 - I - 0x00DC02 03:9BF2: 1E        .byte $1E, $00, $00, $00, $00, $00, $00, $1F   ; 07 



_off018_03_9BFA_04:
;                                              00   01   02   03   04   05   06   07
- D 0 - I - 0x00DC0A 03:9BFA: 16        .byte $16, $00, $3C, $8C, $01, $15, $32, $19   ; 00 
- D 0 - I - 0x00DC12 03:9C02: 50        .byte $50, $4F, $01, $8D, $8E, $68, $15, $23   ; 01 
- D 0 - I - 0x00DC1A 03:9C0A: 49        .byte $49, $6C, $68, $8F, $11, $64, $2B, $5D   ; 02 
- D 0 - I - 0x00DC22 03:9C12: 44        .byte $44, $26, $15, $0E, $0F, $3C, $3C, $5B   ; 03 
- D 0 - I - 0x00DC2A 03:9C1A: 20        .byte $20, $14, $33, $2B, $67, $68, $68, $1D   ; 04 
- D 0 - I - 0x00DC32 03:9C22: 50        .byte $50, $3C, $72, $73, $71, $2C, $2D, $4E   ; 05 
- D 0 - I - 0x00DC3A 03:9C2A: 3A        .byte $3A, $2F, $2F, $73, $70, $14, $14, $21   ; 06 
- D 0 - I - 0x00DC42 03:9C32: 34        .byte $34, $15, $15, $00, $00, $00, $00, $1D   ; 07 



_off018_03_9C3A_05:
;                                              00   01   02   03   04   05   06   07
- D 0 - I - 0x00DC4A 03:9C3A: 30        .byte $30, $41, $10, $10, $10, $10, $42, $31   ; 00 
- D 0 - I - 0x00DC52 03:9C42: 83        .byte $83, $40, $00, $00, $00, $00, $32, $19   ; 01 
- D 0 - I - 0x00DC5A 03:9C4A: 5A        .byte $5A, $3C, $3C, $71, $01, $38, $00, $1A   ; 02 
- D 0 - I - 0x00DC62 03:9C52: 49        .byte $49, $6C, $68, $6E, $69, $4F, $63, $1B   ; 03 
- D 0 - I - 0x00DC6A 03:9C5A: 44        .byte $44, $26, $68, $15, $6A, $69, $65, $19   ; 04 
- D 0 - I - 0x00DC72 03:9C62: 45        .byte $45, $26, $15, $15, $6B, $67, $6A, $1B   ; 05 
- D 0 - I - 0x00DC7A 03:9C6A: 20        .byte $20, $14, $14, $14, $67, $14, $14, $21   ; 06 
- D 0 - I - 0x00DC82 03:9C72: 1C        .byte $1C, $00, $00, $00, $00, $00, $00, $1D   ; 07 



_off018_03_9C7A_06:
;                                              00   01   02   03   04   05   06   07
- D 0 - I - 0x00DC8A 03:9C7A: 3A        .byte $3A, $2F, $65, $00, $72, $71, $6F, $19   ; 00 
- D 0 - I - 0x00DC92 03:9C82: 4D        .byte $4D, $2E, $66, $63, $68, $6E, $6E, $1B   ; 01 
- D 0 - I - 0x00DC9A 03:9C8A: 44        .byte $44, $26, $69, $65, $63, $64, $14, $21   ; 02 
- D 0 - I - 0x00DCA2 03:9C92: 45        .byte $45, $26, $6A, $6A, $66, $67, $6D, $4A   ; 03 
- D 0 - I - 0x00DCAA 03:9C9A: 43        .byte $43, $26, $66, $67, $68, $68, $24, $46   ; 04 
- D 0 - I - 0x00DCB2 03:9CA2: 75        .byte $75, $76, $76, $76, $76, $76, $76, $77   ; 05 
- D 0 - I - 0x00DCBA 03:9CAA: 20        .byte $20, $14, $14, $3C, $3C, $3C, $14, $21   ; 06 
- D 0 - I - 0x00DCC2 03:9CB2: 1E        .byte $1E, $00, $00, $00, $00, $00, $00, $1F   ; 07 



_off018_03_9CBA_07:
;                                              00   01   02   03   04   05   06   07
- D 0 - I - 0x00DCCA 03:9CBA: 83        .byte $83, $73, $70, $65, $67, $6E, $68, $5F   ; 00 
- D 0 - I - 0x00DCD2 03:9CC2: 5E        .byte $5E, $68, $68, $66, $2B, $72, $71, $1B   ; 01 
- D 0 - I - 0x00DCDA 03:9CCA: 18        .byte $18, $71, $01, $00, $00, $01, $74, $1A   ; 02 
- D 0 - I - 0x00DCE2 03:9CD2: 83        .byte $83, $6E, $68, $68, $69, $63, $6E, $84   ; 03 
- D 0 - I - 0x00DCEA 03:9CDA: 5E        .byte $5E, $72, $73, $71, $67, $66, $74, $5F   ; 04 
- D 0 - I - 0x00DCF2 03:9CE2: 17        .byte $17, $73, $73, $70, $00, $00, $72, $1A   ; 05 
- D 0 - I - 0x00DCFA 03:9CEA: 18        .byte $18, $68, $68, $69, $6F, $73, $73, $1B   ; 06 
- D 0 - I - 0x00DD02 03:9CF2: 1E        .byte $1E, $68, $69, $67, $6E, $68, $68, $1F   ; 07 



_off018_03_9CFA_08:
;                                              00   01   02   03   04   05   06   07
- D 0 - I - 0x00DD0A 03:9CFA: 5E        .byte $5E, $68, $68, $69, $15, $15, $15, $61   ; 00 
- D 0 - I - 0x00DD12 03:9D02: 22        .byte $22, $15, $15, $6B, $6B, $15, $68, $5F   ; 01 
- D 0 - I - 0x00DD1A 03:9D0A: 17        .byte $17, $73, $71, $65, $67, $69, $14, $21   ; 02 
- D 0 - I - 0x00DD22 03:9D12: 18        .byte $18, $68, $6E, $14, $00, $67, $68, $1D   ; 03 
- D 0 - I - 0x00DD2A 03:9D1A: 17        .byte $17, $00, $74, $00, $00, $15, $00, $19   ; 04 
- D 0 - I - 0x00DD32 03:9D22: 20        .byte $20, $14, $72, $73, $73, $71, $2B, $1B   ; 05 
- D 0 - I - 0x00DD3A 03:9D2A: 16        .byte $16, $00, $71, $63, $68, $6E, $68, $1A   ; 06 
- D 0 - I - 0x00DD42 03:9D32: 1E        .byte $1E, $68, $6E, $6A, $69, $74, $00, $1F   ; 07 



_off018_03_9D3A_09:
;                                              00   01   02   03   04   05   06   07
- D 0 - I - 0x00DD4A 03:9D3A: 16        .byte $16, $68, $68, $68, $68, $68, $68, $19   ; 00 
- D 0 - I - 0x00DD52 03:9D42: 56        .byte $56, $59, $59, $59, $59, $59, $59, $57   ; 01 
- D 0 - I - 0x00DD5A 03:9D4A: 17        .byte $17, $73, $71, $63, $69, $63, $68, $1A   ; 02 
- D 0 - I - 0x00DD62 03:9D52: 18        .byte $18, $68, $6E, $66, $67, $6A, $68, $1B   ; 03 
- D 0 - I - 0x00DD6A 03:9D5A: 16        .byte $16, $73, $70, $2B, $2B, $67, $68, $19   ; 04 
- D 0 - I - 0x00DD72 03:9D62: 75        .byte $75, $76, $76, $76, $76, $76, $76, $77   ; 05 
- D 0 - I - 0x00DD7A 03:9D6A: 18        .byte $18, $2B, $3C, $00, $00, $00, $00, $1B   ; 06 
- D 0 - I - 0x00DD82 03:9D72: 85        .byte $85, $00, $00, $00, $00, $00, $00, $1F   ; 07 



_off018_03_9D7A_0A:
;                                              00   01   02   03   04   05   06   07
- D 0 - I - 0x00DD8A 03:9D7A: 16        .byte $16, $00, $00, $00, $00, $00, $00, $19   ; 00 
- D 0 - I - 0x00DD92 03:9D82: 54        .byte $54, $58, $58, $58, $58, $58, $58, $55   ; 01 
- D 0 - I - 0x00DD9A 03:9D8A: 17        .byte $17, $68, $69, $00, $00, $00, $00, $1A   ; 02 
- D 0 - I - 0x00DDA2 03:9D92: 18        .byte $18, $01, $65, $00, $00, $00, $01, $1B   ; 03 
- D 0 - I - 0x00DDAA 03:9D9A: 16        .byte $16, $00, $67, $68, $68, $68, $68, $19   ; 04 
- D 0 - I - 0x00DDB2 03:9DA2: 54        .byte $54, $58, $58, $58, $58, $58, $58, $55   ; 05 
- D 0 - I - 0x00DDBA 03:9DAA: 17        .byte $17, $68, $68, $68, $68, $68, $68, $1A   ; 06 
- D 0 - I - 0x00DDC2 03:9DB2: 54        .byte $54, $58, $58, $58, $58, $58, $58, $55   ; 07 



_off018_03_9DBA_0B:
;                                              00   01   02   03   04   05   06   07
- D 0 - I - 0x00DDCA 03:9DBA: 16        .byte $16, $73, $71, $2B, $00, $63, $68, $19   ; 00 
- D 0 - I - 0x00DDD2 03:9DC2: 18        .byte $18, $68, $6E, $68, $69, $65, $63, $1B   ; 01 
- D 0 - I - 0x00DDDA 03:9DCA: 17        .byte $17, $71, $70, $63, $6A, $6A, $66, $1A   ; 02 
- D 0 - I - 0x00DDE2 03:9DD2: 18        .byte $18, $6E, $68, $6A, $6A, $66, $2B, $1B   ; 03 
- D 0 - I - 0x00DDEA 03:9DDA: 16        .byte $16, $70, $00, $65, $67, $69, $00, $19   ; 04 
- D 0 - I - 0x00DDF2 03:9DE2: 18        .byte $18, $68, $68, $66, $00, $67, $68, $1B   ; 05 
- D 0 - I - 0x00DDFA 03:9DEA: 54        .byte $54, $58, $58, $58, $58, $58, $58, $55   ; 06 
- D 0 - I - 0x00DE02 03:9DF2: 54        .byte $54, $58, $58, $58, $58, $58, $58, $55   ; 07 



_off018_03_9DFA_0C:
;                                              00   01   02   03   04   05   06   07
- D 0 - I - 0x00DE0A 03:9DFA: 3A        .byte $3A, $2F, $2F, $2F, $2F, $2F, $00, $19   ; 00 
- D 0 - I - 0x00DE12 03:9E02: 60        .byte $60, $15, $15, $15, $15, $15, $00, $1B   ; 01 
- D 0 - I - 0x00DE1A 03:9E0A: 5A        .byte $5A, $3C, $3C, $00, $15, $15, $15, $23   ; 02 
- D 0 - I - 0x00DE22 03:9E12: 3A        .byte $3A, $2F, $2F, $2F, $00, $15, $2F, $3B   ; 03 
- D 0 - I - 0x00DE2A 03:9E1A: 22        .byte $22, $15, $15, $15, $00, $00, $15, $61   ; 04 
- D 0 - I - 0x00DE32 03:9E22: 20        .byte $20, $14, $14, $14, $14, $3C, $3C, $5B   ; 05 
- D 0 - I - 0x00DE3A 03:9E2A: 1C        .byte $1C, $00, $00, $00, $00, $00, $00, $1D   ; 06 
- D 0 - I - 0x00DE42 03:9E32: 1E        .byte $1E, $00, $00, $00, $00, $00, $00, $1F   ; 07 



_off018_03_9E3A_0D:
;                                              00   01   02   03   04   05   06   07
- D 0 - I - 0x00DE4A 03:9E3A: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 00 
- D 0 - I - 0x00DE52 03:9E42: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 01 
- D 0 - I - 0x00DE5A 03:9E4A: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 02 
- D 0 - I - 0x00DE62 03:9E52: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 03 
- D 0 - I - 0x00DE6A 03:9E5A: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 04 
- D 0 - I - 0x00DE72 03:9E62: 17        .byte $17, $00, $00, $00, $00, $00, $00, $1A   ; 05 
- D 0 - I - 0x00DE7A 03:9E6A: 18        .byte $18, $00, $00, $00, $00, $00, $00, $1B   ; 06 
- D 0 - I - 0x00DE82 03:9E72: 1E        .byte $1E, $00, $00, $00, $00, $00, $00, $1F   ; 07 



_off018_03_9E7A_0E:
;                                              00   01   02   03   04   05   06   07
- - - - - - 0x00DE8A 03:9E7A: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 00 
- - - - - - 0x00DE92 03:9E82: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 01 
- - - - - - 0x00DE9A 03:9E8A: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 02 
- - - - - - 0x00DEA2 03:9E92: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 03 
- - - - - - 0x00DEAA 03:9E9A: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 04 
- - - - - - 0x00DEB2 03:9EA2: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 05 
- D 0 - I - 0x00DEBA 03:9EAA: 90        .byte $90, $91, $92, $90, $91, $92, $90, $91   ; 06 
- D 0 - I - 0x00DEC2 03:9EB2: A0        .byte $A0, $A0, $A0, $A0, $A0, $A0, $A0, $A0   ; 07 



_off018_03_9EBA_0F:
;                                              00   01   02   03   04   05   06   07
- D 0 - I - 0x00DECA 03:9EBA: 00        .byte $00, $00, $00, $00, $94, $AD, $AD, $AD   ; 00 
- D 0 - I - 0x00DED2 03:9EC2: 00        .byte $00, $00, $00, $00, $95, $AE, $AE, $AE   ; 01 
- D 0 - I - 0x00DEDA 03:9ECA: 00        .byte $00, $00, $00, $00, $96, $AC, $AC, $AC   ; 02 
- D 0 - I - 0x00DEE2 03:9ED2: 00        .byte $00, $00, $00, $00, $97, $AF, $AF, $AF   ; 03 
- D 0 - I - 0x00DEEA 03:9EDA: 00        .byte $00, $00, $00, $00, $9F, $AF, $AF, $AF   ; 04 
- D 0 - I - 0x00DEF2 03:9EE2: 98        .byte $98, $99, $99, $9A, $9B, $AC, $AC, $AC   ; 05 
- D 0 - I - 0x00DEFA 03:9EEA: 9C        .byte $9C, $7B, $9E, $79, $7A, $9C, $9D, $9C   ; 06 
- - - - - - 0x00DF02 03:9EF2: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 07 



_off018_03_9EFA_10:
;                                              00   01   02   03   04   05   06   07
- - - - - - 0x00DF0A 03:9EFA: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 00 
- - - - - - 0x00DF12 03:9F02: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 01 
- - - - - - 0x00DF1A 03:9F0A: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 02 
- - - - - - 0x00DF22 03:9F12: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 03 
- - - - - - 0x00DF2A 03:9F1A: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 04 
- - - - - - 0x00DF32 03:9F22: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 05 
- D 0 - I - 0x00DF3A 03:9F2A: 92        .byte $92, $90, $91, $92, $93, $90, $91, $92   ; 06 
- D 0 - I - 0x00DF42 03:9F32: A0        .byte $A0, $A0, $A0, $A0, $A1, $AE, $AE, $AE   ; 07 



_off018_03_9F3A_11:
;                                              00   01   02   03   04   05   06   07
- D 0 - I - 0x00DF4A 03:9F3A: 00        .byte $00, $A5, $A6, $A7, $A8, $A9, $AA, $00   ; 00 
- D 0 - I - 0x00DF52 03:9F42: 00        .byte $00, $AB, $A2, $A2, $A2, $A2, $00, $00   ; 01 
- D 0 - I - 0x00DF5A 03:9F4A: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 02 
- D 0 - I - 0x00DF62 03:9F52: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 03 
- D 0 - I - 0x00DF6A 03:9F5A: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 04 
- D 0 - I - 0x00DF72 03:9F62: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 05 
- D 0 - I - 0x00DF7A 03:9F6A: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 06 
- - - - - - 0x00DF82 03:9F72: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 07 



_off018_03_9F7A_12:
;                                              00   01   02   03   04   05   06   07
- - - - - - 0x00DF8A 03:9F7A: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 00 
- - - - - - 0x00DF92 03:9F82: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 01 
- - - - - - 0x00DF9A 03:9F8A: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 02 
- - - - - - 0x00DFA2 03:9F92: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 03 
- - - - - - 0x00DFAA 03:9F9A: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 04 
- - - - - - 0x00DFB2 03:9FA2: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 05 
- D 0 - I - 0x00DFBA 03:9FAA: 90        .byte $90, $91, $92, $90, $91, $92, $90, $91   ; 06 
- D 0 - I - 0x00DFC2 03:9FB2: A0        .byte $A0, $A0, $A0, $A3, $A4, $A0, $A0, $A0   ; 07 



_off006_0x00DFCA_03_area_4:
; 00 
- D 0 - I - 0x00DFCA 03:9FBA: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x00DFCE 03:9FBE: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x00DFD2 03:9FC2: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x00DFD6 03:9FC6: 00        .byte $00, $00, $00, $00   ; 
; 01 
- D 0 - I - 0x00DFDA 03:9FCA: 12        .byte $12, $75, $13, $76   ; 
- D 0 - I - 0x00DFDE 03:9FCE: 77        .byte $77, $78, $79, $7A   ; 
- D 0 - I - 0x00DFE2 03:9FD2: 14        .byte $14, $7B, $15, $7C   ; 
- D 0 - I - 0x00DFE6 03:9FD6: 7D        .byte $7D, $7E, $7F, $80   ; 
; 02 
- D 0 - I - 0x00DFEA 03:9FDA: 81        .byte $81, $82, $83, $84   ; 
- D 0 - I - 0x00DFEE 03:9FDE: 85        .byte $85, $86, $87, $88   ; 
- D 0 - I - 0x00DFF2 03:9FE2: 89        .byte $89, $8A, $8B, $8C   ; 
- D 0 - I - 0x00DFF6 03:9FE6: 8D        .byte $8D, $8E, $8F, $90   ; 
; 03 
- D 0 - I - 0x00DFFA 03:9FEA: 91        .byte $91, $92, $93, $94   ; 
- D 0 - I - 0x00DFFE 03:9FEE: 95        .byte $95, $96, $97, $98   ; 
- D 0 - I - 0x00E002 03:9FF2: 99        .byte $99, $9A, $9B, $9C   ; 
- D 0 - I - 0x00E006 03:9FF6: 9D        .byte $9D, $9E, $9F, $A0   ; 
; 04 
- D 0 - I - 0x00E00A 03:9FFA: 12        .byte $12, $75, $13, $76   ; 
- D 0 - I - 0x00E00E 03:9FFE: 77        .byte $77, $78, $79, $7A   ; 
- D 1 - I - 0x00E012 03:A002: 14        .byte $14, $7B, $15, $7C   ; 
- D 1 - I - 0x00E016 03:A006: 7D        .byte $7D, $7E, $7F, $80   ; 
; 05 
- D 1 - I - 0x00E01A 03:A00A: 81        .byte $81, $82, $83, $84   ; 
- D 1 - I - 0x00E01E 03:A00E: 85        .byte $85, $86, $87, $88   ; 
- D 1 - I - 0x00E022 03:A012: 89        .byte $89, $8A, $8B, $8C   ; 
- D 1 - I - 0x00E026 03:A016: 8D        .byte $8D, $8E, $8F, $90   ; 
; 06 
- D 1 - I - 0x00E02A 03:A01A: 91        .byte $91, $92, $93, $94   ; 
- D 1 - I - 0x00E02E 03:A01E: 95        .byte $95, $96, $97, $98   ; 
- D 1 - I - 0x00E032 03:A022: 99        .byte $99, $9A, $9B, $9C   ; 
- D 1 - I - 0x00E036 03:A026: 9D        .byte $9D, $9E, $9F, $A0   ; 
; 07 
- - - - - - 0x00E03A 03:A02A: 12        .byte $12, $75, $13, $76   ; 
- - - - - - 0x00E03E 03:A02E: 77        .byte $77, $78, $79, $7A   ; 
- - - - - - 0x00E042 03:A032: 14        .byte $14, $7B, $15, $7C   ; 
- - - - - - 0x00E046 03:A036: 7D        .byte $7D, $7E, $7F, $80   ; 
; 08 
- D 1 - I - 0x00E04A 03:A03A: 81        .byte $81, $82, $83, $84   ; 
- D 1 - I - 0x00E04E 03:A03E: 85        .byte $85, $86, $87, $88   ; 
- D 1 - I - 0x00E052 03:A042: 89        .byte $89, $8A, $8B, $8C   ; 
- D 1 - I - 0x00E056 03:A046: 8D        .byte $8D, $8E, $8F, $90   ; 
; 09 
- D 1 - I - 0x00E05A 03:A04A: 91        .byte $91, $92, $93, $94   ; 
- D 1 - I - 0x00E05E 03:A04E: 95        .byte $95, $96, $97, $98   ; 
- D 1 - I - 0x00E062 03:A052: 99        .byte $99, $9A, $9B, $9C   ; 
- D 1 - I - 0x00E066 03:A056: 9D        .byte $9D, $9E, $9F, $A0   ; 
; 0A 
- D 1 - I - 0x00E06A 03:A05A: 12        .byte $12, $75, $13, $76   ; 
- D 1 - I - 0x00E06E 03:A05E: 77        .byte $77, $78, $79, $7A   ; 
- D 1 - I - 0x00E072 03:A062: 14        .byte $14, $7B, $15, $7C   ; 
- D 1 - I - 0x00E076 03:A066: 7D        .byte $7D, $7E, $7F, $80   ; 
; 0B 
- D 1 - I - 0x00E07A 03:A06A: 81        .byte $81, $82, $83, $84   ; 
- D 1 - I - 0x00E07E 03:A06E: 85        .byte $85, $86, $87, $88   ; 
- D 1 - I - 0x00E082 03:A072: 89        .byte $89, $8A, $8B, $8C   ; 
- D 1 - I - 0x00E086 03:A076: 8D        .byte $8D, $8E, $8F, $90   ; 
; 0C 
- D 1 - I - 0x00E08A 03:A07A: 91        .byte $91, $92, $93, $94   ; 
- D 1 - I - 0x00E08E 03:A07E: 95        .byte $95, $96, $97, $98   ; 
- D 1 - I - 0x00E092 03:A082: 99        .byte $99, $9A, $9B, $9C   ; 
- D 1 - I - 0x00E096 03:A086: 9D        .byte $9D, $9E, $9F, $A0   ; 
; 0D 
- D 1 - I - 0x00E09A 03:A08A: 91        .byte $91, $82, $83, $84   ; 
- D 1 - I - 0x00E09E 03:A08E: 85        .byte $85, $90, $A3, $88   ; 
- D 1 - I - 0x00E0A2 03:A092: 89        .byte $89, $A4, $31, $8C   ; 
- D 1 - I - 0x00E0A6 03:A096: 9D        .byte $9D, $8E, $8F, $80   ; 
; 0E 
- D 1 - I - 0x00E0AA 03:A09A: 42        .byte $42, $48, $43, $3A   ; 
- D 1 - I - 0x00E0AE 03:A09E: 42        .byte $42, $57, $44, $3A   ; 
- D 1 - I - 0x00E0B2 03:A0A2: 42        .byte $42, $3A, $3A, $3A   ; 
- D 1 - I - 0x00E0B6 03:A0A6: 60        .byte $60, $D2, $61, $D2   ; 
; 0F 
- D 1 - I - 0x00E0BA 03:A0AA: 48        .byte $48, $43, $3A, $56   ; 
- D 1 - I - 0x00E0BE 03:A0AE: 57        .byte $57, $44, $3A, $56   ; 
- D 1 - I - 0x00E0C2 03:A0B2: 3A        .byte $3A, $3A, $3A, $56   ; 
- D 1 - I - 0x00E0C6 03:A0B6: 61        .byte $61, $D2, $61, $62   ; 
; 10 
- D 1 - I - 0x00E0CA 03:A0BA: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00E0CE 03:A0BE: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00E0D2 03:A0C2: 49        .byte $49, $51, $49, $51   ; 
- D 1 - I - 0x00E0D6 03:A0C6: 52        .byte $52, $53, $52, $53   ; 
; 11 
- D 1 - I - 0x00E0DA 03:A0CA: 46        .byte $46, $46, $46, $5D   ; 
- D 1 - I - 0x00E0DE 03:A0CE: 3A        .byte $3A, $3A, $3A, $56   ; 
- D 1 - I - 0x00E0E2 03:A0D2: 46        .byte $46, $46, $46, $5D   ; 
- D 1 - I - 0x00E0E6 03:A0D6: 3A        .byte $3A, $3A, $3A, $56   ; 
; 12 
- D 1 - I - 0x00E0EA 03:A0DA: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00E0EE 03:A0DE: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00E0F2 03:A0E2: 32        .byte $32, $32, $32, $32   ; 
- D 1 - I - 0x00E0F6 03:A0E6: DC        .byte $DC, $DC, $DC, $DC   ; 
; 13 
- D 1 - I - 0x00E0FA 03:A0EA: 32        .byte $32, $D3, $3F, $3A   ; 
- D 1 - I - 0x00E0FE 03:A0EE: DC        .byte $DC, $D4, $3D, $3A   ; 
- D 1 - I - 0x00E102 03:A0F2: 34        .byte $34, $34, $3A, $3A   ; 
- D 1 - I - 0x00E106 03:A0F6: C5        .byte $C5, $C5, $C5, $C5   ; 
; 14 
- D 1 - I - 0x00E10A 03:A0FA: 0D        .byte $0D, $0F, $0D, $0F   ; 
- D 1 - I - 0x00E10E 03:A0FE: E7        .byte $E7, $E8, $E7, $E8   ; 
- D 1 - I - 0x00E112 03:A102: 2B        .byte $2B, $2B, $2B, $2B   ; 
- D 1 - I - 0x00E116 03:A106: DD        .byte $DD, $DE, $DE, $DF   ; 
; 15 
- D 1 - I - 0x00E11A 03:A10A: 2B        .byte $2B, $2B, $2B, $2B   ; 
- D 1 - I - 0x00E11E 03:A10E: DD        .byte $DD, $DE, $DE, $DF   ; 
- D 1 - I - 0x00E122 03:A112: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00E126 03:A116: 00        .byte $00, $00, $00, $00   ; 
; 16 
- D 1 - I - 0x00E12A 03:A11A: 34        .byte $34, $EF, $0C, $00   ; 
- D 1 - I - 0x00E12E 03:A11E: 3A        .byte $3A, $F0, $0C, $00   ; 
- D 1 - I - 0x00E132 03:A122: 37        .byte $37, $37, $0C, $00   ; 
- D 1 - I - 0x00E136 03:A126: 3A        .byte $3A, $F8, $0C, $00   ; 
; 17 
- D 1 - I - 0x00E13A 03:A12A: 38        .byte $38, $EF, $0C, $00   ; 
- D 1 - I - 0x00E13E 03:A12E: F2        .byte $F2, $F3, $0C, $00   ; 
- D 1 - I - 0x00E142 03:A132: 39        .byte $39, $F4, $0C, $00   ; 
- D 1 - I - 0x00E146 03:A136: 3A        .byte $3A, $F0, $0C, $00   ; 
; 18 
- D 1 - I - 0x00E14A 03:A13A: 3A        .byte $3A, $F0, $0C, $00   ; 
- D 1 - I - 0x00E14E 03:A13E: F5        .byte $F5, $F6, $0C, $00   ; 
- D 1 - I - 0x00E152 03:A142: 3B        .byte $3B, $F7, $0C, $00   ; 
- D 1 - I - 0x00E156 03:A146: C5        .byte $C5, $F1, $1B, $00   ; 
; 19 
- D 1 - I - 0x00E15A 03:A14A: 00        .byte $00, $D5, $33, $EA   ; 
- D 1 - I - 0x00E15E 03:A14E: 00        .byte $00, $D5, $EB, $EC   ; 
- D 1 - I - 0x00E162 03:A152: 00        .byte $00, $D5, $3C, $ED   ; 
- D 1 - I - 0x00E166 03:A156: 00        .byte $00, $D5, $3D, $3A   ; 
; 1A 
- D 1 - I - 0x00E16A 03:A15A: 00        .byte $00, $D5, $33, $34   ; 
- D 1 - I - 0x00E16E 03:A15E: 00        .byte $00, $D5, $3D, $3A   ; 
- D 1 - I - 0x00E172 03:A162: 00        .byte $00, $D5, $37, $37   ; 
- D 1 - I - 0x00E176 03:A166: 00        .byte $00, $D5, $3F, $3A   ; 
; 1B 
- D 1 - I - 0x00E17A 03:A16A: 00        .byte $00, $D5, $3D, $3A   ; 
- D 1 - I - 0x00E17E 03:A16E: 00        .byte $00, $D5, $EE, $43   ; 
- D 1 - I - 0x00E182 03:A172: 00        .byte $00, $D5, $3E, $44   ; 
- D 1 - I - 0x00E186 03:A176: 00        .byte $00, $D6, $E9, $C5   ; 
; 1C 
- D 1 - I - 0x00E18A 03:A17A: 34        .byte $34, $EF, $0E, $00   ; 
- D 1 - I - 0x00E18E 03:A17E: 37        .byte $37, $37, $0C, $00   ; 
- D 1 - I - 0x00E192 03:A182: 3A        .byte $3A, $F0, $0C, $00   ; 
- D 1 - I - 0x00E196 03:A186: C5        .byte $C5, $F1, $1B, $00   ; 
; 1D 
- D 1 - I - 0x00E19A 03:A18A: 00        .byte $00, $D9, $33, $34   ; 
- D 1 - I - 0x00E19E 03:A18E: 00        .byte $00, $D5, $37, $37   ; 
- D 1 - I - 0x00E1A2 03:A192: 00        .byte $00, $D5, $3D, $3A   ; 
- D 1 - I - 0x00E1A6 03:A196: 00        .byte $00, $D6, $E9, $C5   ; 
; 1E 
- D 1 - I - 0x00E1AA 03:A19A: 3A        .byte $3A, $F8, $0C, $00   ; 
- D 1 - I - 0x00E1AE 03:A19E: C5        .byte $C5, $F1, $0C, $00   ; 
- - - - - - 0x00E1B2 03:A1A2: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x00E1B6 03:A1A6: 00        .byte $00, $00, $00, $00   ; 
; 1F 
- D 1 - I - 0x00E1BA 03:A1AA: 00        .byte $00, $D5, $3F, $3A   ; 
- D 1 - I - 0x00E1BE 03:A1AE: 00        .byte $00, $D5, $E9, $C5   ; 
- - - - - - 0x00E1C2 03:A1B2: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x00E1C6 03:A1B6: 00        .byte $00, $00, $00, $00   ; 
; 20 
- D 1 - I - 0x00E1CA 03:A1BA: 34        .byte $34, $EF, $0C, $0F   ; 
- D 1 - I - 0x00E1CE 03:A1BE: F5        .byte $F5, $F6, $0C, $E8   ; 
- D 1 - I - 0x00E1D2 03:A1C2: 3B        .byte $3B, $F7, $28, $2B   ; 
- D 1 - I - 0x00E1D6 03:A1C6: C5        .byte $C5, $F1, $DE, $DF   ; 
; 21 
- D 1 - I - 0x00E1DA 03:A1CA: 0F        .byte $0F, $D5, $33, $EA   ; 
- D 1 - I - 0x00E1DE 03:A1CE: E8        .byte $E8, $D5, $EB, $EC   ; 
- D 1 - I - 0x00E1E2 03:A1D2: 2B        .byte $2B, $D7, $3C, $ED   ; 
- D 1 - I - 0x00E1E6 03:A1D6: DD        .byte $DD, $DF, $E9, $C5   ; 
; 22 
- D 1 - I - 0x00E1EA 03:A1DA: 38        .byte $38, $EF, $28, $2B   ; 
- D 1 - I - 0x00E1EE 03:A1DE: F2        .byte $F2, $F3, $DE, $DE   ; 
- D 1 - I - 0x00E1F2 03:A1E2: 39        .byte $39, $F4, $0E, $00   ; 
- D 1 - I - 0x00E1F6 03:A1E6: C5        .byte $C5, $F1, $1B, $00   ; 
; 23 
- D 1 - I - 0x00E1FA 03:A1EA: 2B        .byte $2B, $D7, $33, $34   ; 
- D 1 - I - 0x00E1FE 03:A1EE: DE        .byte $DE, $DF, $EE, $43   ; 
- D 1 - I - 0x00E202 03:A1F2: 00        .byte $00, $D9, $3E, $44   ; 
- D 1 - I - 0x00E206 03:A1F6: 00        .byte $00, $D6, $E9, $C5   ; 
; 24 
- D 1 - I - 0x00E20A 03:A1FA: 00        .byte $00, $BF, $10, $10   ; 
- D 1 - I - 0x00E20E 03:A1FE: 00        .byte $00, $BF, $10, $10   ; 
- D 1 - I - 0x00E212 03:A202: 00        .byte $00, $BF, $10, $10   ; 
- D 1 - I - 0x00E216 03:A206: 00        .byte $00, $BF, $10, $10   ; 
; 25 
- - - - - - 0x00E21A 03:A20A: 10        .byte $10, $10, $10, $10   ; 
- - - - - - 0x00E21E 03:A20E: 10        .byte $10, $10, $10, $10   ; 
- - - - - - 0x00E222 03:A212: 10        .byte $10, $10, $10, $10   ; 
- - - - - - 0x00E226 03:A216: 10        .byte $10, $10, $10, $10   ; 
; 26 
- D 1 - I - 0x00E22A 03:A21A: 10        .byte $10, $10, $11, $00   ; 
- D 1 - I - 0x00E22E 03:A21E: 10        .byte $10, $10, $11, $00   ; 
- D 1 - I - 0x00E232 03:A222: 10        .byte $10, $10, $11, $00   ; 
- D 1 - I - 0x00E236 03:A226: 10        .byte $10, $10, $11, $00   ; 
; 27 
- D 1 - I - 0x00E23A 03:A22A: 06        .byte $06, $B2, $07, $00   ; 
- D 1 - I - 0x00E23E 03:A22E: B6        .byte $B6, $B7, $B8, $00   ; 
- D 1 - I - 0x00E242 03:A232: 09        .byte $09, $BA, $00, $00   ; 
- D 1 - I - 0x00E246 03:A236: 00        .byte $00, $00, $00, $00   ; 
; 28 
- - - - - - 0x00E24A 03:A23A: 00        .byte $00, $BF, $10, $10   ; 
- - - - - - 0x00E24E 03:A23E: 00        .byte $00, $BF, $10, $10   ; 
- - - - - - 0x00E252 03:A242: 00        .byte $00, $BF, $10, $10   ; 
- - - - - - 0x00E256 03:A246: 00        .byte $00, $BF, $10, $10   ; 
; 29 
- - - - - - 0x00E25A 03:A24A: 10        .byte $10, $10, $10, $10   ; 
- - - - - - 0x00E25E 03:A24E: 10        .byte $10, $10, $10, $10   ; 
- - - - - - 0x00E262 03:A252: 10        .byte $10, $10, $10, $10   ; 
- - - - - - 0x00E266 03:A256: 10        .byte $10, $10, $10, $10   ; 
; 2A 
- - - - - - 0x00E26A 03:A25A: 10        .byte $10, $10, $11, $00   ; 
- - - - - - 0x00E26E 03:A25E: 10        .byte $10, $10, $11, $00   ; 
- - - - - - 0x00E272 03:A262: 10        .byte $10, $10, $11, $00   ; 
- - - - - - 0x00E276 03:A266: 10        .byte $10, $10, $11, $00   ; 
; 2B 
- D 1 - I - 0x00E27A 03:A26A: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00E27E 03:A26E: 00        .byte $00, $BC, $BD, $00   ; 
- D 1 - I - 0x00E282 03:A272: 00        .byte $00, $BE, $16, $00   ; 
- D 1 - I - 0x00E286 03:A276: 00        .byte $00, $00, $00, $00   ; 
; 2C 
- D 1 - I - 0x00E28A 03:A27A: 2B        .byte $2B, $2B, $2B, $2B   ; 
- D 1 - I - 0x00E28E 03:A27E: DD        .byte $DD, $DE, $DE, $DF   ; 
- D 1 - I - 0x00E292 03:A282: 00        .byte $00, $C0, $17, $17   ; 
- D 1 - I - 0x00E296 03:A286: 00        .byte $00, $BF, $10, $10   ; 
; 2D 
- D 1 - I - 0x00E29A 03:A28A: 2B        .byte $2B, $2B, $2B, $2B   ; 
- D 1 - I - 0x00E29E 03:A28E: DD        .byte $DD, $DE, $DE, $DF   ; 
- D 1 - I - 0x00E2A2 03:A292: 17        .byte $17, $17, $17, $17   ; 
- D 1 - I - 0x00E2A6 03:A296: 10        .byte $10, $10, $10, $10   ; 
; 2E 
- D 1 - I - 0x00E2AA 03:A29A: 2B        .byte $2B, $2B, $2B, $2B   ; 
- D 1 - I - 0x00E2AE 03:A29E: DD        .byte $DD, $DE, $DE, $DF   ; 
- D 1 - I - 0x00E2B2 03:A2A2: 17        .byte $17, $17, $18, $00   ; 
- D 1 - I - 0x00E2B6 03:A2A6: 10        .byte $10, $10, $11, $00   ; 
; 2F 
- D 1 - I - 0x00E2BA 03:A2AA: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00E2BE 03:A2AE: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00E2C2 03:A2B2: 0D        .byte $0D, $0F, $0D, $0F   ; 
- D 1 - I - 0x00E2C6 03:A2B6: E7        .byte $E7, $E8, $E7, $E8   ; 
; 30 
- D 1 - I - 0x00E2CA 03:A2BA: 34        .byte $34, $EF, $2C, $2B   ; 
- D 1 - I - 0x00E2CE 03:A2BE: 3A        .byte $3A, $3A, $22, $22   ; 
- D 1 - I - 0x00E2D2 03:A2C2: 3A        .byte $3A, $3A, $3A, $3A   ; 
- D 1 - I - 0x00E2D6 03:A2C6: C5        .byte $C5, $C5, $C5, $C5   ; 
; 31 
- D 1 - I - 0x00E2DA 03:A2CA: 4A        .byte $4A, $D7, $33, $34   ; 
- D 1 - I - 0x00E2DE 03:A2CE: 22        .byte $22, $22, $3A, $3A   ; 
- D 1 - I - 0x00E2E2 03:A2D2: 3A        .byte $3A, $3A, $3A, $3A   ; 
- D 1 - I - 0x00E2E6 03:A2D6: C5        .byte $C5, $C5, $C5, $C5   ; 
; 32 
- D 1 - I - 0x00E2EA 03:A2DA: 2B        .byte $2B, $2B, $00, $00   ; 
- D 1 - I - 0x00E2EE 03:A2DE: DE        .byte $DE, $DF, $00, $00   ; 
- D 1 - I - 0x00E2F2 03:A2E2: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00E2F6 03:A2E6: 00        .byte $00, $00, $00, $00   ; 
; 33 
- D 1 - I - 0x00E2FA 03:A2EA: 0D        .byte $0D, $0F, $00, $00   ; 
- D 1 - I - 0x00E2FE 03:A2EE: E7        .byte $E7, $E8, $00, $00   ; 
- D 1 - I - 0x00E302 03:A2F2: 2B        .byte $2B, $2B, $00, $00   ; 
- D 1 - I - 0x00E306 03:A2F6: DD        .byte $DD, $DF, $00, $00   ; 
; 34 
- D 1 - I - 0x00E30A 03:A2FA: 34        .byte $34, $EF, $28, $2B   ; 
- D 1 - I - 0x00E30E 03:A2FE: 3A        .byte $3A, $3A, $DE, $DE   ; 
- - - - - - 0x00E312 03:A302: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x00E316 03:A306: 00        .byte $00, $00, $00, $00   ; 
; 35 
- - - - - - 0x00E31A 03:A30A: 00        .byte $00, $BF, $10, $10   ; 
- - - - - - 0x00E31E 03:A30E: 00        .byte $00, $BF, $10, $10   ; 
- - - - - - 0x00E322 03:A312: 0D        .byte $0D, $0F, $0D, $0F   ; 
- - - - - - 0x00E326 03:A316: E7        .byte $E7, $E8, $E7, $E8   ; 
; 36 
- D 1 - I - 0x00E32A 03:A31A: 10        .byte $10, $10, $10, $10   ; 
- D 1 - I - 0x00E32E 03:A31E: 10        .byte $10, $10, $10, $10   ; 
- D 1 - I - 0x00E332 03:A322: 0D        .byte $0D, $0F, $0D, $0F   ; 
- D 1 - I - 0x00E336 03:A326: E7        .byte $E7, $E8, $E7, $E8   ; 
; 37 
- D 1 - I - 0x00E33A 03:A32A: 10        .byte $10, $10, $11, $00   ; 
- D 1 - I - 0x00E33E 03:A32E: 10        .byte $10, $10, $11, $00   ; 
- D 1 - I - 0x00E342 03:A332: 0D        .byte $0D, $0F, $0D, $0F   ; 
- D 1 - I - 0x00E346 03:A336: E7        .byte $E7, $E8, $E7, $E8   ; 
; 38 
- D 1 - I - 0x00E34A 03:A33A: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00E34E 03:A33E: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00E352 03:A342: 00        .byte $00, $00, $2B, $2B   ; 
- D 1 - I - 0x00E356 03:A346: 00        .byte $00, $00, $DD, $DF   ; 
; 39 
- - - - - - 0x00E35A 03:A34A: 2B        .byte $2B, $2B, $2B, $2B   ; 
- - - - - - 0x00E35E 03:A34E: DD        .byte $DD, $DE, $DE, $DF   ; 
- - - - - - 0x00E362 03:A352: 0D        .byte $0D, $0F, $0D, $0F   ; 
- - - - - - 0x00E366 03:A356: E7        .byte $E7, $E8, $E7, $E8   ; 
; 3A 
- D 1 - I - 0x00E36A 03:A35A: 34        .byte $34, $EF, $0C, $00   ; 
- D 1 - I - 0x00E36E 03:A35E: 37        .byte $37, $37, $0C, $00   ; 
- D 1 - I - 0x00E372 03:A362: 3A        .byte $3A, $F0, $0C, $0F   ; 
- D 1 - I - 0x00E376 03:A366: C5        .byte $C5, $F1, $0C, $E8   ; 
; 3B 
- D 1 - I - 0x00E37A 03:A36A: 00        .byte $00, $D5, $33, $34   ; 
- D 1 - I - 0x00E37E 03:A36E: 00        .byte $00, $D5, $37, $37   ; 
- D 1 - I - 0x00E382 03:A372: 0F        .byte $0F, $D5, $3D, $3A   ; 
- D 1 - I - 0x00E386 03:A376: E8        .byte $E8, $D5, $3D, $3A   ; 
; 3C 
- D 1 - I - 0x00E38A 03:A37A: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00E38E 03:A37E: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00E392 03:A382: 2B        .byte $2B, $2B, $2B, $2B   ; 
- D 1 - I - 0x00E396 03:A386: DD        .byte $DD, $DE, $DE, $DF   ; 
; 3D 
- - - - - - 0x00E39A 03:A38A: 34        .byte $34, $EF, $28, $2B   ; 
- - - - - - 0x00E39E 03:A38E: 37        .byte $37, $37, $34, $34   ; 
- - - - - - 0x00E3A2 03:A392: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x00E3A6 03:A396: 00        .byte $00, $00, $00, $00   ; 
; 3E 
- - - - - - 0x00E3AA 03:A39A: 2B        .byte $2B, $D7, $33, $34   ; 
- - - - - - 0x00E3AE 03:A39E: 34        .byte $34, $34, $37, $37   ; 
- - - - - - 0x00E3B2 03:A3A2: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x00E3B6 03:A3A6: 00        .byte $00, $00, $00, $00   ; 
; 3F 
- - - - - - 0x00E3BA 03:A3AA: 2B        .byte $2B, $2B, $00, $00   ; 
- - - - - - 0x00E3BE 03:A3AE: 34        .byte $34, $EF, $00, $00   ; 
- - - - - - 0x00E3C2 03:A3B2: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x00E3C6 03:A3B6: 00        .byte $00, $00, $00, $00   ; 
; 40 
- D 1 - I - 0x00E3CA 03:A3BA: 00        .byte $00, $00, $2B, $2B   ; 
- D 1 - I - 0x00E3CE 03:A3BE: 00        .byte $00, $00, $DD, $DE   ; 
- D 1 - I - 0x00E3D2 03:A3C2: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00E3D6 03:A3C6: 00        .byte $00, $00, $00, $00   ; 
; 41 
- D 1 - I - 0x00E3DA 03:A3CA: 4A        .byte $4A, $4A, $00, $00   ; 
- D 1 - I - 0x00E3DE 03:A3CE: 22        .byte $22, $EF, $00, $00   ; 
- D 1 - I - 0x00E3E2 03:A3D2: 3A        .byte $3A, $F0, $49, $51   ; 
- D 1 - I - 0x00E3E6 03:A3D6: C5        .byte $C5, $F1, $52, $53   ; 
; 42 
- D 1 - I - 0x00E3EA 03:A3DA: 00        .byte $00, $00, $4A, $4A   ; 
- D 1 - I - 0x00E3EE 03:A3DE: 00        .byte $00, $00, $21, $34   ; 
- D 1 - I - 0x00E3F2 03:A3E2: 49        .byte $49, $51, $3D, $3A   ; 
- D 1 - I - 0x00E3F6 03:A3E6: 52        .byte $52, $53, $C4, $C5   ; 
; 43 
- D 1 - I - 0x00E3FA 03:A3EA: 34        .byte $34, $EF, $0C, $17   ; 
- D 1 - I - 0x00E3FE 03:A3EE: 3A        .byte $3A, $F0, $0C, $17   ; 
- D 1 - I - 0x00E402 03:A3F2: 37        .byte $37, $37, $0C, $17   ; 
- D 1 - I - 0x00E406 03:A3F6: 3A        .byte $3A, $F8, $0C, $17   ; 
; 44 
- D 1 - I - 0x00E40A 03:A3FA: 38        .byte $38, $EF, $0C, $17   ; 
- D 1 - I - 0x00E40E 03:A3FE: F2        .byte $F2, $F3, $0C, $17   ; 
- D 1 - I - 0x00E412 03:A402: 39        .byte $39, $F4, $0C, $17   ; 
- D 1 - I - 0x00E416 03:A406: 3A        .byte $3A, $F0, $0C, $17   ; 
; 45 
- D 1 - I - 0x00E41A 03:A40A: 3A        .byte $3A, $F0, $0C, $17   ; 
- D 1 - I - 0x00E41E 03:A40E: F5        .byte $F5, $F6, $0C, $17   ; 
- D 1 - I - 0x00E422 03:A412: 3B        .byte $3B, $F7, $0C, $17   ; 
- D 1 - I - 0x00E426 03:A416: C5        .byte $C5, $F1, $1B, $17   ; 
; 46 
- D 1 - I - 0x00E42A 03:A41A: 17        .byte $17, $D5, $33, $EA   ; 
- D 1 - I - 0x00E42E 03:A41E: 17        .byte $17, $D5, $EB, $EC   ; 
- D 1 - I - 0x00E432 03:A422: 17        .byte $17, $D5, $3C, $ED   ; 
- D 1 - I - 0x00E436 03:A426: 17        .byte $17, $D5, $3D, $3A   ; 
; 47 
- - - - - - 0x00E43A 03:A42A: 17        .byte $17, $D5, $33, $34   ; 
- - - - - - 0x00E43E 03:A42E: 17        .byte $17, $D5, $3D, $3A   ; 
- - - - - - 0x00E442 03:A432: 17        .byte $17, $D5, $37, $37   ; 
- - - - - - 0x00E446 03:A436: 17        .byte $17, $D5, $3F, $3A   ; 
; 48 
- - - - - - 0x00E44A 03:A43A: 17        .byte $17, $D5, $3D, $3A   ; 
- - - - - - 0x00E44E 03:A43E: 17        .byte $17, $D5, $EE, $43   ; 
- - - - - - 0x00E452 03:A442: 17        .byte $17, $D5, $3E, $44   ; 
- - - - - - 0x00E456 03:A446: 17        .byte $17, $D6, $E9, $C5   ; 
; 49 
- D 1 - I - 0x00E45A 03:A44A: 34        .byte $34, $EF, $0E, $17   ; 
- D 1 - I - 0x00E45E 03:A44E: 37        .byte $37, $37, $0C, $17   ; 
- D 1 - I - 0x00E462 03:A452: 3A        .byte $3A, $F0, $0C, $17   ; 
- D 1 - I - 0x00E466 03:A456: C5        .byte $C5, $F1, $1B, $17   ; 
; 4A 
- D 1 - I - 0x00E46A 03:A45A: 17        .byte $17, $D9, $33, $34   ; 
- D 1 - I - 0x00E46E 03:A45E: 17        .byte $17, $D5, $37, $37   ; 
- D 1 - I - 0x00E472 03:A462: 17        .byte $17, $D5, $3D, $3A   ; 
- D 1 - I - 0x00E476 03:A466: 17        .byte $17, $D6, $E9, $C5   ; 
; 4B 
- - - - - - 0x00E47A 03:A46A: 3A        .byte $3A, $F8, $0C, $17   ; 
- - - - - - 0x00E47E 03:A46E: C5        .byte $C5, $F1, $0C, $17   ; 
- - - - - - 0x00E482 03:A472: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x00E486 03:A476: 00        .byte $00, $00, $00, $00   ; 
; 4C 
- - - - - - 0x00E48A 03:A47A: 17        .byte $17, $D5, $3F, $3A   ; 
- - - - - - 0x00E48E 03:A47E: 17        .byte $17, $D5, $E9, $C5   ; 
- - - - - - 0x00E492 03:A482: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x00E496 03:A486: 00        .byte $00, $00, $00, $00   ; 
; 4D 
- D 1 - I - 0x00E49A 03:A48A: 38        .byte $38, $EF, $28, $2B   ; 
- D 1 - I - 0x00E49E 03:A48E: F2        .byte $F2, $F3, $DE, $DE   ; 
- D 1 - I - 0x00E4A2 03:A492: 39        .byte $39, $F4, $0E, $17   ; 
- D 1 - I - 0x00E4A6 03:A496: C5        .byte $C5, $F1, $1B, $17   ; 
; 4E 
- D 1 - I - 0x00E4AA 03:A49A: 2B        .byte $2B, $D7, $33, $34   ; 
- D 1 - I - 0x00E4AE 03:A49E: DE        .byte $DE, $DF, $EE, $43   ; 
- D 1 - I - 0x00E4B2 03:A4A2: 17        .byte $17, $D9, $3E, $44   ; 
- D 1 - I - 0x00E4B6 03:A4A6: 17        .byte $17, $D6, $E9, $C5   ; 
; 4F 
- D 1 - I - 0x00E4BA 03:A4AA: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00E4BE 03:A4AE: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00E4C2 03:A4B2: 2B        .byte $2B, $2B, $00, $00   ; 
- D 1 - I - 0x00E4C6 03:A4B6: DD        .byte $DD, $DF, $00, $00   ; 
; 50 
- D 1 - I - 0x00E4CA 03:A4BA: 34        .byte $34, $EF, $0C, $00   ; 
- D 1 - I - 0x00E4CE 03:A4BE: F5        .byte $F5, $F6, $0C, $00   ; 
- D 1 - I - 0x00E4D2 03:A4C2: 3B        .byte $3B, $F7, $28, $2B   ; 
- D 1 - I - 0x00E4D6 03:A4C6: C5        .byte $C5, $F1, $DE, $DF   ; 
; 51 
- - - - - - 0x00E4DA 03:A4CA: 00        .byte $00, $D5, $33, $EA   ; 
- - - - - - 0x00E4DE 03:A4CE: 00        .byte $00, $D5, $EB, $EC   ; 
- - - - - - 0x00E4E2 03:A4D2: 2B        .byte $2B, $D7, $3C, $ED   ; 
- - - - - - 0x00E4E6 03:A4D6: DD        .byte $DD, $DF, $E9, $C5   ; 
; 52 
- - - - - - 0x00E4EA 03:A4DA: 10        .byte $10, $10, $11, $00   ; 
- - - - - - 0x00E4EE 03:A4DE: 10        .byte $10, $10, $11, $00   ; 
- - - - - - 0x00E4F2 03:A4E2: 2B        .byte $2B, $2B, $2B, $2B   ; 
- - - - - - 0x00E4F6 03:A4E6: DD        .byte $DD, $DE, $DE, $DF   ; 
; 53 
- - - - - - 0x00E4FA 03:A4EA: 00        .byte $00, $BF, $10, $10   ; 
- - - - - - 0x00E4FE 03:A4EE: 00        .byte $00, $BF, $10, $10   ; 
- - - - - - 0x00E502 03:A4F2: 2B        .byte $2B, $2B, $2B, $2B   ; 
- - - - - - 0x00E506 03:A4F6: DD        .byte $DD, $DE, $DE, $DF   ; 
; 54 
- D 1 - I - 0x00E50A 03:A4FA: 3A        .byte $3A, $F0, $19, $1A   ; 
- D 1 - I - 0x00E50E 03:A4FE: 3A        .byte $3A, $F0, $0C, $00   ; 
- D 1 - I - 0x00E512 03:A502: 3A        .byte $3A, $F0, $0C, $00   ; 
- D 1 - I - 0x00E516 03:A506: C5        .byte $C5, $F1, $1B, $00   ; 
; 55 
- D 1 - I - 0x00E51A 03:A50A: 1A        .byte $1A, $E1, $3D, $3A   ; 
- D 1 - I - 0x00E51E 03:A50E: 00        .byte $00, $D5, $3D, $3A   ; 
- D 1 - I - 0x00E522 03:A512: 00        .byte $00, $D5, $3D, $3A   ; 
- D 1 - I - 0x00E526 03:A516: 00        .byte $00, $D6, $E9, $C5   ; 
; 56 
- D 1 - I - 0x00E52A 03:A51A: 3A        .byte $3A, $F0, $0C, $00   ; 
- D 1 - I - 0x00E52E 03:A51E: C5        .byte $C5, $F1, $1B, $00   ; 
- D 1 - I - 0x00E532 03:A522: 34        .byte $34, $EF, $19, $1A   ; 
- D 1 - I - 0x00E536 03:A526: 3A        .byte $3A, $F0, $0C, $00   ; 
; 57 
- D 1 - I - 0x00E53A 03:A52A: 00        .byte $00, $D5, $3D, $3A   ; 
- D 1 - I - 0x00E53E 03:A52E: 00        .byte $00, $D6, $E9, $C5   ; 
- D 1 - I - 0x00E542 03:A532: 1A        .byte $1A, $E1, $33, $34   ; 
- D 1 - I - 0x00E546 03:A536: 00        .byte $00, $D5, $3D, $3A   ; 
; 58 
- D 1 - I - 0x00E54A 03:A53A: 1A        .byte $1A, $1A, $1A, $1A   ; 
- D 1 - I - 0x00E54E 03:A53E: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00E552 03:A542: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00E556 03:A546: 00        .byte $00, $00, $00, $00   ; 
; 59 
- D 1 - I - 0x00E55A 03:A54A: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00E55E 03:A54E: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00E562 03:A552: 1A        .byte $1A, $1A, $1A, $1A   ; 
- D 1 - I - 0x00E566 03:A556: 00        .byte $00, $00, $00, $00   ; 
; 5A 
- D 1 - I - 0x00E56A 03:A55A: 3A        .byte $3A, $F0, $1D, $00   ; 
- D 1 - I - 0x00E56E 03:A55E: F5        .byte $F5, $F6, $1D, $00   ; 
- D 1 - I - 0x00E572 03:A562: 3B        .byte $3B, $F7, $27, $2B   ; 
- D 1 - I - 0x00E576 03:A566: C5        .byte $C5, $F1, $DE, $DE   ; 
; 5B 
- D 1 - I - 0x00E57A 03:A56A: 00        .byte $00, $E3, $3D, $3A   ; 
- D 1 - I - 0x00E57E 03:A56E: 00        .byte $00, $E3, $EE, $43   ; 
- D 1 - I - 0x00E582 03:A572: 2B        .byte $2B, $E4, $3E, $44   ; 
- D 1 - I - 0x00E586 03:A576: DE        .byte $DE, $DE, $3D, $C5   ; 
; 5C 
- - - - - - 0x00E58A 03:A57A: 38        .byte $38, $EF, $0C, $00   ; 
- - - - - - 0x00E58E 03:A57E: F2        .byte $F2, $F3, $0C, $00   ; 
- - - - - - 0x00E592 03:A582: 39        .byte $39, $F4, $1C, $00   ; 
- - - - - - 0x00E596 03:A586: C5        .byte $C5, $F1, $1D, $00   ; 
; 5D 
- D 1 - I - 0x00E59A 03:A58A: 00        .byte $00, $D5, $33, $34   ; 
- D 1 - I - 0x00E59E 03:A58E: 00        .byte $00, $D5, $37, $37   ; 
- D 1 - I - 0x00E5A2 03:A592: 00        .byte $00, $E2, $3D, $3A   ; 
- D 1 - I - 0x00E5A6 03:A596: 00        .byte $00, $E3, $E9, $C5   ; 
; 5E 
- D 1 - I - 0x00E5AA 03:A59A: 34        .byte $34, $EF, $1D, $00   ; 
- D 1 - I - 0x00E5AE 03:A59E: 3A        .byte $3A, $F0, $1D, $00   ; 
- D 1 - I - 0x00E5B2 03:A5A2: 37        .byte $37, $37, $1D, $00   ; 
- D 1 - I - 0x00E5B6 03:A5A6: 3A        .byte $3A, $F8, $E5, $00   ; 
; 5F 
- D 1 - I - 0x00E5BA 03:A5AA: 00        .byte $00, $E3, $33, $EA   ; 
- D 1 - I - 0x00E5BE 03:A5AE: 00        .byte $00, $E3, $EB, $EC   ; 
- D 1 - I - 0x00E5C2 03:A5B2: 00        .byte $00, $E3, $3C, $ED   ; 
- D 1 - I - 0x00E5C6 03:A5B6: 00        .byte $00, $E6, $3D, $3A   ; 
; 60 
- D 1 - I - 0x00E5CA 03:A5BA: 38        .byte $38, $EF, $28, $2B   ; 
- D 1 - I - 0x00E5CE 03:A5BE: F2        .byte $F2, $F3, $DE, $DE   ; 
- D 1 - I - 0x00E5D2 03:A5C2: 39        .byte $39, $F4, $1C, $00   ; 
- D 1 - I - 0x00E5D6 03:A5C6: C5        .byte $C5, $F1, $1D, $00   ; 
; 61 
- D 1 - I - 0x00E5DA 03:A5CA: 2B        .byte $2B, $D7, $33, $34   ; 
- D 1 - I - 0x00E5DE 03:A5CE: DE        .byte $DE, $DF, $EE, $43   ; 
- D 1 - I - 0x00E5E2 03:A5D2: 00        .byte $00, $E2, $3E, $44   ; 
- D 1 - I - 0x00E5E6 03:A5D6: 00        .byte $00, $E3, $E9, $C5   ; 
; 62 
- D 1 - I - 0x00E5EA 03:A5DA: 00        .byte $00, $B0, $05, $B1   ; 
- D 1 - I - 0x00E5EE 03:A5DE: 00        .byte $00, $B3, $B4, $B5   ; 
- D 1 - I - 0x00E5F2 03:A5E2: 00        .byte $00, $00, $08, $B9   ; 
- D 1 - I - 0x00E5F6 03:A5E6: 00        .byte $00, $00, $00, $00   ; 
; 63 
- D 1 - I - 0x00E5FA 03:A5EA: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00E5FE 03:A5EE: 00        .byte $00, $00, $FA, $F9   ; 
- D 1 - I - 0x00E602 03:A5F2: 00        .byte $00, $A5, $1F, $00   ; 
- D 1 - I - 0x00E606 03:A5F6: 00        .byte $00, $00, $1F, $00   ; 
; 64 
- D 1 - I - 0x00E60A 03:A5FA: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00E60E 03:A5FE: F9        .byte $F9, $F9, $FB, $00   ; 
- D 1 - I - 0x00E612 03:A602: 2B        .byte $2B, $2B, $2B, $2B   ; 
- D 1 - I - 0x00E616 03:A606: DD        .byte $DD, $DE, $DE, $DF   ; 
; 65 
- D 1 - I - 0x00E61A 03:A60A: 00        .byte $00, $00, $1F, $00   ; 
- D 1 - I - 0x00E61E 03:A60E: 69        .byte $69, $00, $1F, $00   ; 
- D 1 - I - 0x00E622 03:A612: 00        .byte $00, $00, $1F, $00   ; 
- D 1 - I - 0x00E626 03:A616: A5        .byte $A5, $00, $1F, $00   ; 
; 66 
- D 1 - I - 0x00E62A 03:A61A: 00        .byte $00, $00, $1F, $00   ; 
- D 1 - I - 0x00E62E 03:A61E: F9        .byte $F9, $F9, $FD, $00   ; 
- D 1 - I - 0x00E632 03:A622: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00E636 03:A626: 00        .byte $00, $A5, $00, $00   ; 
; 67 
- D 1 - I - 0x00E63A 03:A62A: 00        .byte $00, $00, $1F, $00   ; 
- D 1 - I - 0x00E63E 03:A62E: A5        .byte $A5, $00, $FC, $F9   ; 
- D 1 - I - 0x00E642 03:A632: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00E646 03:A636: 00        .byte $00, $A5, $00, $00   ; 
; 68 
- D 1 - I - 0x00E64A 03:A63A: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00E64E 03:A63E: F9        .byte $F9, $F9, $F9, $F9   ; 
- D 1 - I - 0x00E652 03:A642: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00E656 03:A646: 00        .byte $00, $00, $A5, $00   ; 
; 69 
- D 1 - I - 0x00E65A 03:A64A: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00E65E 03:A64E: F9        .byte $F9, $F9, $FB, $00   ; 
- D 1 - I - 0x00E662 03:A652: 00        .byte $00, $00, $1F, $00   ; 
- D 1 - I - 0x00E666 03:A656: A5        .byte $A5, $00, $1F, $00   ; 
; 6A 
- D 1 - I - 0x00E66A 03:A65A: 00        .byte $00, $00, $1F, $00   ; 
- D 1 - I - 0x00E66E 03:A65E: F9        .byte $F9, $F9, $1F, $F9   ; 
- D 1 - I - 0x00E672 03:A662: 00        .byte $00, $00, $1F, $00   ; 
- D 1 - I - 0x00E676 03:A666: 00        .byte $00, $00, $1F, $00   ; 
; 6B 
- D 1 - I - 0x00E67A 03:A66A: 2B        .byte $2B, $2B, $2B, $2B   ; 
- D 1 - I - 0x00E67E 03:A66E: DD        .byte $DD, $DE, $DE, $DF   ; 
- D 1 - I - 0x00E682 03:A672: 00        .byte $00, $00, $1F, $00   ; 
- D 1 - I - 0x00E686 03:A676: 00        .byte $00, $00, $1F, $00   ; 
; 6C 
- D 1 - I - 0x00E68A 03:A67A: 17        .byte $17, $17, $18, $00   ; 
- D 1 - I - 0x00E68E 03:A67E: 10        .byte $10, $10, $11, $00   ; 
- D 1 - I - 0x00E692 03:A682: 10        .byte $10, $10, $11, $00   ; 
- D 1 - I - 0x00E696 03:A686: 10        .byte $10, $10, $11, $00   ; 
; 6D 
- D 1 - I - 0x00E69A 03:A68A: 00        .byte $00, $C0, $17, $17   ; 
- D 1 - I - 0x00E69E 03:A68E: 00        .byte $00, $BF, $10, $10   ; 
- D 1 - I - 0x00E6A2 03:A692: 00        .byte $00, $BF, $10, $10   ; 
- D 1 - I - 0x00E6A6 03:A696: 00        .byte $00, $BF, $10, $10   ; 
; 6E 
- D 1 - I - 0x00E6AA 03:A69A: 00        .byte $00, $6A, $00, $00   ; 
- D 1 - I - 0x00E6AE 03:A69E: F9        .byte $F9, $F9, $F9, $F9   ; 
- D 1 - I - 0x00E6B2 03:A6A2: 00        .byte $00, $6A, $00, $00   ; 
- D 1 - I - 0x00E6B6 03:A6A6: 00        .byte $00, $6A, $00, $00   ; 
; 6F 
- D 1 - I - 0x00E6BA 03:A6AA: 00        .byte $00, $00, $00, $A5   ; 
- D 1 - I - 0x00E6BE 03:A6AE: 00        .byte $00, $A5, $00, $69   ; 
- D 1 - I - 0x00E6C2 03:A6B2: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00E6C6 03:A6B6: 00        .byte $00, $64, $65, $65   ; 
; 70 
- D 1 - I - 0x00E6CA 03:A6BA: 00        .byte $00, $6A, $00, $00   ; 
- D 1 - I - 0x00E6CE 03:A6BE: 00        .byte $00, $6A, $00, $00   ; 
- D 1 - I - 0x00E6D2 03:A6C2: 00        .byte $00, $6A, $00, $00   ; 
- D 1 - I - 0x00E6D6 03:A6C6: 65        .byte $65, $68, $00, $00   ; 
; 71 
- D 1 - I - 0x00E6DA 03:A6CA: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00E6DE 03:A6CE: 00        .byte $00, $A5, $00, $00   ; 
- D 1 - I - 0x00E6E2 03:A6D2: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00E6E6 03:A6D6: 65        .byte $65, $66, $00, $A5   ; 
; 72 
- D 1 - I - 0x00E6EA 03:A6DA: 00        .byte $00, $6A, $00, $00   ; 
- D 1 - I - 0x00E6EE 03:A6DE: 00        .byte $00, $6A, $00, $A5   ; 
- D 1 - I - 0x00E6F2 03:A6E2: 00        .byte $00, $6A, $00, $00   ; 
- D 1 - I - 0x00E6F6 03:A6E6: 00        .byte $00, $67, $65, $65   ; 
; 73 
- D 1 - I - 0x00E6FA 03:A6EA: 00        .byte $00, $A5, $00, $00   ; 
- D 1 - I - 0x00E6FE 03:A6EE: 00        .byte $00, $00, $00, $69   ; 
- D 1 - I - 0x00E702 03:A6F2: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00E706 03:A6F6: 65        .byte $65, $65, $65, $65   ; 
; 74 
- D 1 - I - 0x00E70A 03:A6FA: 00        .byte $00, $6A, $00, $A5   ; 
- D 1 - I - 0x00E70E 03:A6FE: 00        .byte $00, $6A, $69, $00   ; 
- D 1 - I - 0x00E712 03:A702: 00        .byte $00, $6A, $00, $A5   ; 
- D 1 - I - 0x00E716 03:A706: 00        .byte $00, $6A, $00, $00   ; 
; 75 
- D 1 - I - 0x00E71A 03:A70A: 40        .byte $40, $40, $29, $6E   ; 
- D 1 - I - 0x00E71E 03:A70E: 6B        .byte $6B, $6C, $70, $71   ; 
- D 1 - I - 0x00E722 03:A712: 30        .byte $30, $6D, $1E, $74   ; 
- D 1 - I - 0x00E726 03:A716: 00        .byte $00, $00, $00, $00   ; 
; 76 
- D 1 - I - 0x00E72A 03:A71A: 2B        .byte $2B, $2B, $2B, $2B   ; 
- D 1 - I - 0x00E72E 03:A71E: 72        .byte $72, $71, $72, $71   ; 
- D 1 - I - 0x00E732 03:A722: 1E        .byte $1E, $74, $1E, $74   ; 
- D 1 - I - 0x00E736 03:A726: 00        .byte $00, $00, $00, $00   ; 
; 77 
- D 1 - I - 0x00E73A 03:A72A: 2A        .byte $2A, $6F, $40, $40   ; 
- D 1 - I - 0x00E73E 03:A72E: 72        .byte $72, $73, $6B, $6C   ; 
- D 1 - I - 0x00E742 03:A732: 1E        .byte $1E, $74, $30, $6D   ; 
- D 1 - I - 0x00E746 03:A736: 00        .byte $00, $00, $00, $00   ; 
; 78 
- D 1 - I - 0x00E74A 03:A73A: 33        .byte $33, $34, $34, $34   ; 
- D 1 - I - 0x00E74E 03:A73E: C4        .byte $C4, $C5, $D1, $D1   ; 
- D 1 - I - 0x00E752 03:A742: 00        .byte $00, $00, $01, $A1   ; 
- D 1 - I - 0x00E756 03:A746: 00        .byte $00, $00, $00, $00   ; 
; 79 
- D 1 - I - 0x00E75A 03:A74A: 34        .byte $34, $34, $34, $C7   ; 
- D 1 - I - 0x00E75E 03:A74E: D1        .byte $D1, $D1, $C5, $C6   ; 
- D 1 - I - 0x00E762 03:A752: 20        .byte $20, $A2, $00, $00   ; 
- D 1 - I - 0x00E766 03:A756: 00        .byte $00, $00, $00, $00   ; 
; 7A 
- D 1 - I - 0x00E76A 03:A75A: 33        .byte $33, $C8, $35, $34   ; 
- D 1 - I - 0x00E76E 03:A75E: C4        .byte $C4, $C9, $CA, $C5   ; 
- D 1 - I - 0x00E772 03:A762: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00E776 03:A766: 00        .byte $00, $00, $00, $00   ; 
; 7B 
- D 1 - I - 0x00E77A 03:A76A: 34        .byte $34, $CB, $36, $CE   ; 
- D 1 - I - 0x00E77E 03:A76E: C5        .byte $C5, $CC, $CD, $CF   ; 
- D 1 - I - 0x00E782 03:A772: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00E786 03:A776: 00        .byte $00, $00, $00, $00   ; 
; 7C 
- D 1 - I - 0x00E78A 03:A77A: 34        .byte $34, $34, $34, $C7   ; 
- D 1 - I - 0x00E78E 03:A77E: D2        .byte $D2, $C5, $D2, $C6   ; 
- D 1 - I - 0x00E792 03:A782: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00E796 03:A786: 00        .byte $00, $00, $00, $00   ; 
; 7D 
- D 1 - I - 0x00E79A 03:A78A: 32        .byte $32, $FE, $32, $32   ; 
- D 1 - I - 0x00E79E 03:A78E: DA        .byte $DA, $DB, $DC, $DC   ; 
- D 1 - I - 0x00E7A2 03:A792: 33        .byte $33, $E0, $34, $E0   ; 
- D 1 - I - 0x00E7A6 03:A796: C4        .byte $C4, $C5, $C5, $C5   ; 
; 7E 
- D 1 - I - 0x00E7AA 03:A79A: 32        .byte $32, $32, $32, $32   ; 
- D 1 - I - 0x00E7AE 03:A79E: DC        .byte $DC, $DC, $DC, $DC   ; 
- D 1 - I - 0x00E7B2 03:A7A2: 34        .byte $34, $CB, $36, $CE   ; 
- D 1 - I - 0x00E7B6 03:A7A6: C5        .byte $C5, $CC, $CD, $CF   ; 
; 7F 
- D 1 - I - 0x00E7BA 03:A7AA: 32        .byte $32, $FE, $32, $32   ; 
- D 1 - I - 0x00E7BE 03:A7AE: DA        .byte $DA, $DB, $DC, $DC   ; 
- D 1 - I - 0x00E7C2 03:A7B2: 33        .byte $33, $D0, $34, $D0   ; 
- D 1 - I - 0x00E7C6 03:A7B6: C4        .byte $C4, $C5, $C5, $C5   ; 
; 80 
- D 1 - I - 0x00E7CA 03:A7BA: 32        .byte $32, $32, $32, $32   ; 
- D 1 - I - 0x00E7CE 03:A7BE: DC        .byte $DC, $DC, $DC, $DC   ; 
- D 1 - I - 0x00E7D2 03:A7C2: 33        .byte $33, $C8, $35, $C7   ; 
- D 1 - I - 0x00E7D6 03:A7C6: C4        .byte $C4, $C9, $CA, $C6   ; 
; 81 
- D 1 - I - 0x00E7DA 03:A7CA: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00E7DE 03:A7CE: 00        .byte $00, $00, $C1, $C2   ; 
- D 1 - I - 0x00E7E2 03:A7D2: 00        .byte $00, $A7, $02, $A8   ; 
- D 1 - I - 0x00E7E6 03:A7D6: 00        .byte $00, $AA, $AB, $AC   ; 
; 82 
- D 1 - I - 0x00E7EA 03:A7DA: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00E7EE 03:A7DE: C3        .byte $C3, $A6, $00, $00   ; 
- D 1 - I - 0x00E7F2 03:A7E2: 03        .byte $03, $A9, $04, $00   ; 
- D 1 - I - 0x00E7F6 03:A7E6: AD        .byte $AD, $AE, $AF, $00   ; 
; 83 
- D 1 - I - 0x00E7FA 03:A7EA: 3A        .byte $3A, $F0, $0C, $00   ; 
- D 1 - I - 0x00E7FE 03:A7EE: F5        .byte $F5, $F6, $0C, $00   ; 
- D 1 - I - 0x00E802 03:A7F2: 3B        .byte $3B, $F7, $0C, $00   ; 
- D 1 - I - 0x00E806 03:A7F6: C5        .byte $C5, $F1, $1C, $00   ; 
; 84 
- D 1 - I - 0x00E80A 03:A7FA: 00        .byte $00, $D5, $3D, $3A   ; 
- D 1 - I - 0x00E80E 03:A7FE: 00        .byte $00, $D5, $EE, $43   ; 
- D 1 - I - 0x00E812 03:A802: 00        .byte $00, $D5, $3E, $44   ; 
- D 1 - I - 0x00E816 03:A806: 00        .byte $00, $E2, $E9, $C5   ; 
; 85 
- D 1 - I - 0x00E81A 03:A80A: 3A        .byte $3A, $F8, $0C, $00   ; 
- D 1 - I - 0x00E81E 03:A80E: C5        .byte $C5, $F1, $1C, $00   ; 
- - - - - - 0x00E822 03:A812: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x00E826 03:A816: 00        .byte $00, $00, $00, $00   ; 
; 86 
- D 1 - I - 0x00E82A 03:A81A: 00        .byte $00, $0A, $0A, $0A   ; 
- D 1 - I - 0x00E82E 03:A81E: 00        .byte $00, $0B, $0B, $0B   ; 
- D 1 - I - 0x00E832 03:A822: 00        .byte $00, $0B, $0B, $0B   ; 
- D 1 - I - 0x00E836 03:A826: 00        .byte $00, $0B, $0B, $0B   ; 
; 87 
- D 1 - I - 0x00E83A 03:A82A: 00        .byte $00, $0B, $0B, $0B   ; 
- D 1 - I - 0x00E83E 03:A82E: 00        .byte $00, $BB, $BB, $BB   ; 
- D 1 - I - 0x00E842 03:A832: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00E846 03:A836: 00        .byte $00, $00, $00, $00   ; 
; 88 
- D 1 - I - 0x00E84A 03:A83A: 34        .byte $34, $CB, $36, $34   ; 
- D 1 - I - 0x00E84E 03:A83E: C5        .byte $C5, $CC, $CD, $C5   ; 
- D 1 - I - 0x00E852 03:A842: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00E856 03:A846: 00        .byte $00, $00, $00, $00   ; 
; 89 
- D 1 - I - 0x00E85A 03:A84A: 34        .byte $34, $C7, $0C, $00   ; 
- D 1 - I - 0x00E85E 03:A84E: C5        .byte $C5, $C6, $D8, $00   ; 
- D 1 - I - 0x00E862 03:A852: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00E866 03:A856: 00        .byte $00, $00, $00, $00   ; 
; 8A 
- D 1 - I - 0x00E86A 03:A85A: 32        .byte $32, $32, $32, $32   ; 
- D 1 - I - 0x00E86E 03:A85E: DC        .byte $DC, $DC, $DC, $DC   ; 
- D 1 - I - 0x00E872 03:A862: 33        .byte $33, $D0, $34, $D0   ; 
- D 1 - I - 0x00E876 03:A866: C4        .byte $C4, $C5, $C5, $C5   ; 
; 8B 
- D 1 - I - 0x00E87A 03:A86A: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00E87E 03:A86E: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00E882 03:A872: 32        .byte $32, $FE, $32, $32   ; 
- D 1 - I - 0x00E886 03:A876: DA        .byte $DA, $DC, $DC, $DC   ; 
; 8C 
- D 1 - I - 0x00E88A 03:A87A: 41        .byte $41, $41, $41, $63   ; 
- D 1 - I - 0x00E88E 03:A87E: 54        .byte $54, $22, $22, $55   ; 
- D 1 - I - 0x00E892 03:A882: 42        .byte $42, $48, $43, $56   ; 
- D 1 - I - 0x00E896 03:A886: 42        .byte $42, $57, $44, $56   ; 
; 8D 
- D 1 - I - 0x00E89A 03:A88A: 42        .byte $42, $3A, $3A, $58   ; 
- D 1 - I - 0x00E89E 03:A88E: 42        .byte $42, $48, $43, $59   ; 
- D 1 - I - 0x00E8A2 03:A892: 42        .byte $42, $57, $44, $3A   ; 
- D 1 - I - 0x00E8A6 03:A896: 42        .byte $42, $3A, $3A, $3A   ; 
; 8E 
- D 1 - I - 0x00E8AA 03:A89A: 41        .byte $41, $41, $41, $63   ; 
- D 1 - I - 0x00E8AE 03:A89E: 34        .byte $34, $5A, $34, $55   ; 
- D 1 - I - 0x00E8B2 03:A8A2: 45        .byte $45, $EC, $3A, $56   ; 
- D 1 - I - 0x00E8B6 03:A8A6: 5B        .byte $5B, $ED, $3A, $56   ; 
; 8F 
- D 1 - I - 0x00E8BA 03:A8AA: 42        .byte $42, $48, $43, $5C   ; 
- D 1 - I - 0x00E8BE 03:A8AE: 42        .byte $42, $57, $44, $5E   ; 
- D 1 - I - 0x00E8C2 03:A8B2: 47        .byte $47, $46, $46, $5F   ; 
- D 1 - I - 0x00E8C6 03:A8B6: 42        .byte $42, $3A, $3A, $3A   ; 
; 90 
- - - - - - 0x00E8CA 03:A8BA: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x00E8CE 03:A8BE: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00E8D2 03:A8C2: 34        .byte $34, $34, $34, $C8   ; 
- D 1 - I - 0x00E8D6 03:A8C6: D1        .byte $D1, $D1, $D1, $C9   ; 
; 91 
- - - - - - 0x00E8DA 03:A8CA: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x00E8DE 03:A8CE: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00E8E2 03:A8D2: 35        .byte $35, $C7, $33, $CB   ; 
- D 1 - I - 0x00E8E6 03:A8D6: CA        .byte $CA, $C6, $C4, $CC   ; 
; 92 
- - - - - - 0x00E8EA 03:A8DA: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x00E8EE 03:A8DE: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00E8F2 03:A8E2: 36        .byte $36, $CE, $33, $34   ; 
- D 1 - I - 0x00E8F6 03:A8E6: CD        .byte $CD, $CF, $C4, $D1   ; 
; 93 
- - - - - - 0x00E8FA 03:A8EA: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x00E8FE 03:A8EE: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00E902 03:A8F2: 34        .byte $34, $34, $34, $34   ; 
- D 1 - I - 0x00E906 03:A8F6: D1        .byte $D1, $C5, $C5, $C5   ; 
; 94 
- D 1 - I - 0x00E90A 03:A8FA: 25        .byte $25, $25, $3C, $ED   ; 
- D 1 - I - 0x00E90E 03:A8FE: 25        .byte $25, $25, $3D, $3A   ; 
- D 1 - I - 0x00E912 03:A902: 25        .byte $25, $25, $3F, $3A   ; 
- D 1 - I - 0x00E916 03:A906: 25        .byte $25, $25, $C4, $C5   ; 
; 95 
- D 1 - I - 0x00E91A 03:A90A: 24        .byte $24, $24, $33, $34   ; 
- D 1 - I - 0x00E91E 03:A90E: 25        .byte $25, $25, $37, $37   ; 
- D 1 - I - 0x00E922 03:A912: 25        .byte $25, $25, $3D, $3A   ; 
- D 1 - I - 0x00E926 03:A916: 25        .byte $25, $25, $3D, $3A   ; 
; 96 
- D 1 - I - 0x00E92A 03:A91A: 25        .byte $25, $25, $3F, $3A   ; 
- D 1 - I - 0x00E92E 03:A91E: 4C        .byte $4C, $4D, $C4, $C5   ; 
- D 1 - I - 0x00E932 03:A922: 26        .byte $26, $4E, $21, $34   ; 
- D 1 - I - 0x00E936 03:A926: 26        .byte $26, $4E, $3D, $3A   ; 
; 97 
- D 1 - I - 0x00E93A 03:A92A: 26        .byte $26, $4E, $23, $3A   ; 
- D 1 - I - 0x00E93E 03:A92E: 26        .byte $26, $4E, $3D, $3A   ; 
- D 1 - I - 0x00E942 03:A932: 26        .byte $26, $4E, $23, $3A   ; 
- D 1 - I - 0x00E946 03:A936: 26        .byte $26, $4E, $3F, $3A   ; 
; 98 
- D 1 - I - 0x00E94A 03:A93A: 2D        .byte $2D, $32, $32, $32   ; 
- D 1 - I - 0x00E94E 03:A93E: 50        .byte $50, $FF, $DC, $DC   ; 
- D 1 - I - 0x00E952 03:A942: 2E        .byte $2E, $25, $34, $D0   ; 
- D 1 - I - 0x00E956 03:A946: 00        .byte $00, $25, $3A, $3A   ; 
; 99 
- D 1 - I - 0x00E95A 03:A94A: 32        .byte $32, $32, $32, $32   ; 
- D 1 - I - 0x00E95E 03:A94E: DC        .byte $DC, $DC, $DC, $DC   ; 
- D 1 - I - 0x00E962 03:A952: 34        .byte $34, $D0, $34, $D0   ; 
- D 1 - I - 0x00E966 03:A956: 3A        .byte $3A, $3A, $3A, $3A   ; 
; 9A 
- D 1 - I - 0x00E96A 03:A95A: 32        .byte $32, $32, $32, $32   ; 
- D 1 - I - 0x00E96E 03:A95E: DC        .byte $DC, $DC, $DC, $DC   ; 
- D 1 - I - 0x00E972 03:A962: 34        .byte $34, $D0, $34, $34   ; 
- D 1 - I - 0x00E976 03:A966: 3A        .byte $3A, $3A, $37, $37   ; 
; 9B 
- D 1 - I - 0x00E97A 03:A96A: 2F        .byte $2F, $4E, $3D, $3A   ; 
- D 1 - I - 0x00E97E 03:A96E: DC        .byte $DC, $4F, $C4, $C5   ; 
- D 1 - I - 0x00E982 03:A972: 34        .byte $34, $34, $34, $34   ; 
- D 1 - I - 0x00E986 03:A976: 37        .byte $37, $37, $37, $37   ; 
; 9C 
- D 1 - I - 0x00E98A 03:A97A: 33        .byte $33, $34, $34, $34   ; 
- D 1 - I - 0x00E98E 03:A97E: C4        .byte $C4, $C5, $C5, $C5   ; 
- - - - - - 0x00E992 03:A982: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x00E996 03:A986: 00        .byte $00, $00, $00, $00   ; 
; 9D 
- D 1 - I - 0x00E99A 03:A98A: 34        .byte $34, $CB, $36, $CE   ; 
- D 1 - I - 0x00E99E 03:A98E: C5        .byte $C5, $CC, $CD, $CF   ; 
- - - - - - 0x00E9A2 03:A992: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x00E9A6 03:A996: 00        .byte $00, $00, $00, $00   ; 
; 9E 
- D 1 - I - 0x00E9AA 03:A99A: 3A        .byte $3A, $3A, $33, $34   ; 
- D 1 - I - 0x00E9AE 03:A99E: 3A        .byte $3A, $3A, $C4, $D1   ; 
- - - - - - 0x00E9B2 03:A9A2: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x00E9B6 03:A9A6: 00        .byte $00, $00, $00, $00   ; 
; 9F 
- D 1 - I - 0x00E9BA 03:A9AA: 26        .byte $26, $4E, $23, $3A   ; 
- D 1 - I - 0x00E9BE 03:A9AE: 26        .byte $26, $4E, $3F, $3A   ; 
- D 1 - I - 0x00E9C2 03:A9B2: 26        .byte $26, $4E, $23, $3A   ; 
- D 1 - I - 0x00E9C6 03:A9B6: 26        .byte $26, $4E, $3F, $3A   ; 
; A0 
- D 1 - I - 0x00E9CA 03:A9BA: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00E9CE 03:A9BE: 1A        .byte $1A, $1A, $1A, $1A   ; 
- - - - - - 0x00E9D2 03:A9C2: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x00E9D6 03:A9C6: 00        .byte $00, $00, $00, $00   ; 
; A1 
- D 1 - I - 0x00E9DA 03:A9CA: 00        .byte $00, $4B, $33, $EA   ; 
- D 1 - I - 0x00E9DE 03:A9CE: E1        .byte $E1, $25, $EB, $EC   ; 
- - - - - - 0x00E9E2 03:A9D2: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x00E9E6 03:A9D6: 00        .byte $00, $00, $00, $00   ; 
; A2 
- D 1 - I - 0x00E9EA 03:A9DA: 00        .byte $00, $FB, $00, $FB   ; 
- D 1 - I - 0x00E9EE 03:A9DE: 00        .byte $00, $FD, $00, $FD   ; 
- D 1 - I - 0x00E9F2 03:A9E2: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00E9F6 03:A9E6: 00        .byte $00, $00, $00, $00   ; 
; A3 
- D 1 - I - 0x00E9FA 03:A9EA: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00E9FE 03:A9EE: FF        .byte $FF, $FF, $D3, $D4   ; 
- - - - - - 0x00EA02 03:A9F2: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x00EA06 03:A9F6: 00        .byte $00, $00, $00, $00   ; 
; A4 
- D 1 - I - 0x00EA0A 03:A9FA: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00EA0E 03:A9FE: D5        .byte $D5, $FF, $FF, $FF   ; 
- - - - - - 0x00EA12 03:AA02: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x00EA16 03:AA06: 00        .byte $00, $00, $00, $00   ; 
; A5 
- D 1 - I - 0x00EA1A 03:AA0A: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00EA1E 03:AA0E: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00EA22 03:AA12: 00        .byte $00, $00, $E4, $E5   ; 
- D 1 - I - 0x00EA26 03:AA16: 00        .byte $00, $00, $F1, $F2   ; 
; A6 
- D 1 - I - 0x00EA2A 03:AA1A: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00EA2E 03:AA1E: 00        .byte $00, $DD, $DE, $DE   ; 
- D 1 - I - 0x00EA32 03:AA22: E6        .byte $E6, $E7, $EF, $F0   ; 
- D 1 - I - 0x00EA36 03:AA26: F3        .byte $F3, $F4, $F9, $FA   ; 
; A7 
- D 1 - I - 0x00EA3A 03:AA2A: D6        .byte $D6, $D7, $D8, $D9   ; 
- D 1 - I - 0x00EA3E 03:AA2E: DE        .byte $DE, $DE, $DF, $E0   ; 
- D 1 - I - 0x00EA42 03:AA32: F0        .byte $F0, $F0, $E8, $E9   ; 
- D 1 - I - 0x00EA46 03:AA36: F9        .byte $F9, $FA, $F9, $FA   ; 
; A8 
- D 1 - I - 0x00EA4A 03:AA3A: DA        .byte $DA, $DB, $DC, $00   ; 
- D 1 - I - 0x00EA4E 03:AA3E: E1        .byte $E1, $E2, $DE, $DE   ; 
- D 1 - I - 0x00EA52 03:AA42: EA        .byte $EA, $F0, $F0, $F0   ; 
- D 1 - I - 0x00EA56 03:AA46: F9        .byte $F9, $FA, $F9, $FA   ; 
; A9 
- D 1 - I - 0x00EA5A 03:AA4A: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00EA5E 03:AA4E: DE        .byte $DE, $E3, $00, $00   ; 
- D 1 - I - 0x00EA62 03:AA52: EF        .byte $EF, $EB, $EC, $ED   ; 
- D 1 - I - 0x00EA66 03:AA56: F9        .byte $F9, $F5, $F6, $F7   ; 
; AA 
- D 1 - I - 0x00EA6A 03:AA5A: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00EA6E 03:AA5E: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00EA72 03:AA62: EE        .byte $EE, $00, $00, $00   ; 
- D 1 - I - 0x00EA76 03:AA66: F8        .byte $F8, $00, $00, $00   ; 
; AB 
- D 1 - I - 0x00EA7A 03:AA6A: 00        .byte $00, $00, $00, $FB   ; 
- D 1 - I - 0x00EA7E 03:AA6E: 00        .byte $00, $00, $00, $FD   ; 
- D 1 - I - 0x00EA82 03:AA72: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00EA86 03:AA76: 00        .byte $00, $00, $00, $00   ; 
; AC 
- D 1 - I - 0x00EA8A 03:AA7A: 3A        .byte $3A, $3A, $3A, $3A   ; 
- D 1 - I - 0x00EA8E 03:AA7E: C5        .byte $C5, $C5, $C5, $C5   ; 
- D 1 - I - 0x00EA92 03:AA82: 34        .byte $34, $34, $34, $34   ; 
- D 1 - I - 0x00EA96 03:AA86: 3A        .byte $3A, $3A, $3A, $3A   ; 
; AD 
- D 1 - I - 0x00EA9A 03:AA8A: 3A        .byte $3A, $3A, $3A, $3A   ; 
- D 1 - I - 0x00EA9E 03:AA8E: 3A        .byte $3A, $3A, $3A, $3A   ; 
- D 1 - I - 0x00EAA2 03:AA92: 3A        .byte $3A, $3A, $3A, $3A   ; 
- D 1 - I - 0x00EAA6 03:AA96: C5        .byte $C5, $C5, $C5, $C5   ; 
; AE 
- D 1 - I - 0x00EAAA 03:AA9A: 34        .byte $34, $34, $34, $34   ; 
- D 1 - I - 0x00EAAE 03:AA9E: 3A        .byte $3A, $3A, $3A, $3A   ; 
- D 1 - I - 0x00EAB2 03:AAA2: 3A        .byte $3A, $3A, $3A, $3A   ; 
- D 1 - I - 0x00EAB6 03:AAA6: 3A        .byte $3A, $3A, $3A, $3A   ; 
; AF
- D 1 - I - 0x00EABA 03:AAAA: 3A        .byte $3A, $3A, $3A, $3A   ; 
- D 1 - I - 0x00EABE 03:AAAE: 3A        .byte $3A, $3A, $3A, $3A   ; 
- D 1 - I - 0x00EAC2 03:AAB2: 3A        .byte $3A, $3A, $3A, $3A   ; 
- D 1 - I - 0x00EAC6 03:AAB6: 3A        .byte $3A, $3A, $3A, $3A   ; 



_off007_0x00EACA_03_area_4:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 1 - I - 0x00EACA 03:AABA: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 00
- D 1 - I - 0x00EADA 03:AACA: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 10
- D 1 - I - 0x00EAEA 03:AADA: 00        .byte $00, $00, $00, $00, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $F0, $F0, $F0, $00   ; 20
- D 1 - I - 0x00EAFA 03:AAEA: 00        .byte $00, $00, $00, $00, $00, $0F, $0F, $0F, $00, $00, $00, $00, $00, $00, $00, $00   ; 30
- D 1 - I - 0x00EB0A 03:AAFA: 00        .byte $00, $00, $00, $88, $88, $88, $22, $22, $22, $88, $22, $08, $02, $80, $20, $00   ; 40
- D 1 - I - 0x00EB1A 03:AB0A: 00        .byte $00, $00, $0F, $0F, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 50
- D 1 - I - 0x00EB2A 03:AB1A: 00        .byte $00, $00, $CF, $FC, $0F, $FF, $3F, $3F, $CF, $FF, $CF, $C0, $FF, $FF, $3F, $FF   ; 60
- D 1 - I - 0x00EB3A 03:AB2A: 33        .byte $33, $F3, $FF, $FF, $FF, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 70
- D 1 - I - 0x00EB4A 03:AB3A: 00        .byte $00, $FC, $F3, $00, $00, $00, $FF, $0F, $00, $00, $00, $00, $00, $00, $00, $00   ; 80
- D 1 - I - 0x00EB5A 03:AB4A: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 90
- D 1 - I - 0x00EB6A 03:AB5A: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; A0



_off004_0x00EB7A_02_area_3:
- D 1 - I - 0x00EB7A 03:AB6A: 16        .byte $16   ; columns
- D 1 - I - 0x00EB7B 03:AB6B: 01        .byte $01   ; rows

;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F   10   11   12   13   14   15
- D 1 - I - 0x00EB7C 03:AB6C: 01        .byte $01, $02, $01, $03, $01, $04, $01, $05, $06, $07, $08, $09, $0A, $0B, $0C, $0D, $0E, $0E, $0E, $0E, $0F, $10   ; 



_off005_0x00EB92_02_area_3:
- - - - - - 0x00EB92 03:AB82: A4 AB     .word _off018_02_ABA4_00
- D 1 - I - 0x00EB94 03:AB84: E4 AB     .word _off018_02_ABE4_01
- D 1 - I - 0x00EB96 03:AB86: 24 AC     .word _off018_02_AC24_02
- D 1 - I - 0x00EB98 03:AB88: 64 AC     .word _off018_02_AC64_03
- D 1 - I - 0x00EB9A 03:AB8A: A4 AC     .word _off018_02_ACA4_04
- D 1 - I - 0x00EB9C 03:AB8C: E4 AC     .word _off018_02_ACE4_05
- D 1 - I - 0x00EB9E 03:AB8E: 24 AD     .word _off018_02_AD24_06
- D 1 - I - 0x00EBA0 03:AB90: 64 AD     .word _off018_02_AD64_07
- D 1 - I - 0x00EBA2 03:AB92: A4 AD     .word _off018_02_ADA4_08
- D 1 - I - 0x00EBA4 03:AB94: E4 AD     .word _off018_02_ADE4_09
- D 1 - I - 0x00EBA6 03:AB96: 24 AE     .word _off018_02_AE24_0A
- D 1 - I - 0x00EBA8 03:AB98: 64 AE     .word _off018_02_AE64_0B
- D 1 - I - 0x00EBAA 03:AB9A: A4 AE     .word _off018_02_AEA4_0C
- D 1 - I - 0x00EBAC 03:AB9C: E4 AE     .word _off018_02_AEE4_0D
- D 1 - I - 0x00EBAE 03:AB9E: 24 AF     .word _off018_02_AF24_0E
- D 1 - I - 0x00EBB0 03:ABA0: 64 AF     .word _off018_02_AF64_0F
- D 1 - I - 0x00EBB2 03:ABA2: A4 AF     .word _off018_02_AFA4_10



_off018_02_ABA4_00:
;                                              00   01   02   03   04   05   06   07
- - - - - - 0x00EBB4 03:ABA4: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 00 
- - - - - - 0x00EBBC 03:ABAC: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 01 
- - - - - - 0x00EBC4 03:ABB4: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 02 
- - - - - - 0x00EBCC 03:ABBC: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 03 
- - - - - - 0x00EBD4 03:ABC4: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 04 
- - - - - - 0x00EBDC 03:ABCC: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 05 
- - - - - - 0x00EBE4 03:ABD4: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 06 
- - - - - - 0x00EBEC 03:ABDC: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 07 



_off018_02_ABE4_01:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x00EBF4 03:ABE4: 14        .byte $14, $01, $02, $03, $14, $01, $02, $03   ; 00 
- D 1 - I - 0x00EBFC 03:ABEC: 04        .byte $04, $05, $06, $07, $04, $05, $06, $07   ; 01 
- D 1 - I - 0x00EC04 03:ABF4: 08        .byte $08, $09, $0A, $0B, $08, $09, $0A, $0B   ; 02 
- D 1 - I - 0x00EC0C 03:ABFC: 0C        .byte $0C, $0D, $0E, $0F, $0C, $0D, $0E, $0F   ; 03 
- D 1 - I - 0x00EC14 03:AC04: 10        .byte $10, $11, $12, $13, $10, $11, $12, $13   ; 04 
- D 1 - I - 0x00EC1C 03:AC0C: 15        .byte $15, $15, $15, $15, $15, $15, $15, $15   ; 05 
- D 1 - I - 0x00EC24 03:AC14: 16        .byte $16, $16, $16, $16, $16, $16, $16, $16   ; 06 
- D 1 - I - 0x00EC2C 03:AC1C: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 07 



_off018_02_AC24_02:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x00EC34 03:AC24: 14        .byte $14, $01, $02, $03, $14, $01, $02, $03   ; 00 
- D 1 - I - 0x00EC3C 03:AC2C: 04        .byte $04, $05, $06, $07, $04, $05, $06, $07   ; 01 
- D 1 - I - 0x00EC44 03:AC34: 08        .byte $08, $09, $0A, $0B, $08, $09, $0A, $0B   ; 02 
- D 1 - I - 0x00EC4C 03:AC3C: 0C        .byte $0C, $0D, $0E, $0F, $0C, $0D, $0E, $0F   ; 03 
- D 1 - I - 0x00EC54 03:AC44: 10        .byte $10, $11, $12, $13, $10, $11, $12, $13   ; 04 
- D 1 - I - 0x00EC5C 03:AC4C: 15        .byte $15, $15, $15, $42, $43, $15, $15, $15   ; 05 
- D 1 - I - 0x00EC64 03:AC54: 16        .byte $16, $16, $16, $16, $16, $16, $16, $16   ; 06 
- D 1 - I - 0x00EC6C 03:AC5C: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 07 



_off018_02_AC64_03:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x00EC74 03:AC64: 14        .byte $14, $01, $02, $03, $14, $01, $02, $03   ; 00 
- D 1 - I - 0x00EC7C 03:AC6C: 04        .byte $04, $05, $06, $07, $04, $05, $06, $07   ; 01 
- D 1 - I - 0x00EC84 03:AC74: 08        .byte $08, $09, $0A, $0B, $08, $09, $0A, $0B   ; 02 
- D 1 - I - 0x00EC8C 03:AC7C: 0C        .byte $0C, $0D, $0E, $0F, $0C, $0D, $0E, $0F   ; 03 
- D 1 - I - 0x00EC94 03:AC84: 10        .byte $10, $11, $12, $13, $10, $11, $12, $13   ; 04 
- D 1 - I - 0x00EC9C 03:AC8C: 15        .byte $15, $42, $43, $15, $15, $42, $43, $15   ; 05 
- D 1 - I - 0x00ECA4 03:AC94: 16        .byte $16, $16, $16, $16, $16, $16, $16, $16   ; 06 
- D 1 - I - 0x00ECAC 03:AC9C: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 07 



_off018_02_ACA4_04:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x00ECB4 03:ACA4: 14        .byte $14, $01, $02, $03, $14, $01, $02, $03   ; 00 
- D 1 - I - 0x00ECBC 03:ACAC: 04        .byte $04, $05, $06, $07, $04, $05, $06, $07   ; 01 
- D 1 - I - 0x00ECC4 03:ACB4: 08        .byte $08, $09, $0A, $0B, $08, $09, $0A, $0B   ; 02 
- D 1 - I - 0x00ECCC 03:ACBC: 0C        .byte $0C, $0D, $0E, $0F, $0C, $0D, $0E, $0F   ; 03 
- D 1 - I - 0x00ECD4 03:ACC4: 10        .byte $10, $11, $12, $13, $10, $3E, $12, $13   ; 04 
- D 1 - I - 0x00ECDC 03:ACCC: 15        .byte $15, $15, $15, $15, $3F, $40, $41, $15   ; 05 
- D 1 - I - 0x00ECE4 03:ACD4: 16        .byte $16, $16, $16, $16, $16, $16, $16, $16   ; 06 
- D 1 - I - 0x00ECEC 03:ACDC: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 07 



_off018_02_ACE4_05:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x00ECF4 03:ACE4: 14        .byte $14, $01, $02, $03, $14, $01, $02, $03   ; 00 
- D 1 - I - 0x00ECFC 03:ACEC: 04        .byte $04, $05, $06, $07, $04, $05, $06, $07   ; 01 
- D 1 - I - 0x00ED04 03:ACF4: 08        .byte $08, $09, $0A, $0B, $08, $09, $0A, $0B   ; 02 
- D 1 - I - 0x00ED0C 03:ACFC: 0C        .byte $0C, $0D, $0E, $0F, $0C, $0D, $0E, $0F   ; 03 
- D 1 - I - 0x00ED14 03:AD04: 10        .byte $10, $11, $12, $13, $10, $18, $19, $1A   ; 04 
- D 1 - I - 0x00ED1C 03:AD0C: 15        .byte $15, $15, $15, $15, $15, $1E, $1F, $1F   ; 05 
- D 1 - I - 0x00ED24 03:AD14: 16        .byte $16, $16, $16, $16, $22, $23, $24, $24   ; 06 
- D 1 - I - 0x00ED2C 03:AD1C: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 07 



_off018_02_AD24_06:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x00ED34 03:AD24: 14        .byte $14, $01, $02, $03, $14, $01, $02, $03   ; 00 
- D 1 - I - 0x00ED3C 03:AD2C: 04        .byte $04, $05, $06, $07, $04, $05, $06, $07   ; 01 
- D 1 - I - 0x00ED44 03:AD34: 08        .byte $08, $09, $0A, $0B, $08, $09, $0A, $0B   ; 02 
- D 1 - I - 0x00ED4C 03:AD3C: 0C        .byte $0C, $0D, $0E, $0F, $0C, $0D, $0E, $0F   ; 03 
- D 1 - I - 0x00ED54 03:AD44: 1C        .byte $1C, $1A, $19, $1A, $1C, $1A, $1B, $13   ; 04 
- D 1 - I - 0x00ED5C 03:AD4C: 1F        .byte $1F, $1F, $1F, $1F, $1F, $1F, $20, $21   ; 05 
- D 1 - I - 0x00ED64 03:AD54: 24        .byte $24, $24, $24, $24, $24, $24, $25, $26   ; 06 
- D 1 - I - 0x00ED6C 03:AD5C: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 07 



_off018_02_AD64_07:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x00ED74 03:AD64: 14        .byte $14, $01, $02, $03, $14, $01, $02, $03   ; 00 
- D 1 - I - 0x00ED7C 03:AD6C: 04        .byte $04, $05, $06, $07, $04, $05, $06, $07   ; 01 
- D 1 - I - 0x00ED84 03:AD74: 08        .byte $08, $09, $0A, $0B, $08, $09, $0A, $0B   ; 02 
- D 1 - I - 0x00ED8C 03:AD7C: 0C        .byte $0C, $0D, $0E, $0F, $0C, $0D, $0E, $0F   ; 03 
- D 1 - I - 0x00ED94 03:AD84: 10        .byte $10, $18, $19, $1A, $1C, $1A, $19, $1A   ; 04 
- D 1 - I - 0x00ED9C 03:AD8C: 1D        .byte $1D, $1E, $1F, $1F, $1F, $1F, $1F, $1F   ; 05 
- D 1 - I - 0x00EDA4 03:AD94: 22        .byte $22, $23, $24, $24, $24, $24, $24, $24   ; 06 
- D 1 - I - 0x00EDAC 03:AD9C: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 07 



_off018_02_ADA4_08:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x00EDB4 03:ADA4: 14        .byte $14, $01, $02, $03, $14, $01, $02, $03   ; 00 
- D 1 - I - 0x00EDBC 03:ADAC: 04        .byte $04, $05, $06, $07, $04, $05, $06, $07   ; 01 
- D 1 - I - 0x00EDC4 03:ADB4: 08        .byte $08, $09, $0A, $0B, $08, $09, $0A, $0B   ; 02 
- D 1 - I - 0x00EDCC 03:ADBC: 0C        .byte $0C, $0D, $0E, $0F, $0C, $0D, $0E, $0F   ; 03 
- D 1 - I - 0x00EDD4 03:ADC4: 1C        .byte $1C, $1A, $19, $1A, $1C, $1A, $19, $1A   ; 04 
- D 1 - I - 0x00EDDC 03:ADCC: 1F        .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F   ; 05 
- D 1 - I - 0x00EDE4 03:ADD4: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24   ; 06 
- D 1 - I - 0x00EDEC 03:ADDC: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 07 



_off018_02_ADE4_09:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x00EDF4 03:ADE4: 14        .byte $14, $01, $02, $03, $14, $01, $02, $03   ; 00 
- D 1 - I - 0x00EDFC 03:ADEC: 04        .byte $04, $05, $06, $07, $04, $05, $06, $07   ; 01 
- D 1 - I - 0x00EE04 03:ADF4: 08        .byte $08, $09, $0A, $0B, $08, $09, $0A, $0B   ; 02 
- D 1 - I - 0x00EE0C 03:ADFC: 0C        .byte $0C, $0D, $0E, $0F, $0C, $0D, $0E, $0F   ; 03 
- D 1 - I - 0x00EE14 03:AE04: 1C        .byte $1C, $1A, $1B, $13, $10, $11, $12, $13   ; 04 
- D 1 - I - 0x00EE1C 03:AE0C: 1F        .byte $1F, $1F, $20, $21, $15, $15, $15, $15   ; 05 
- D 1 - I - 0x00EE24 03:AE14: 24        .byte $24, $24, $25, $26, $16, $16, $16, $16   ; 06 
- D 1 - I - 0x00EE2C 03:AE1C: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 07 



_off018_02_AE24_0A:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x00EE34 03:AE24: 14        .byte $14, $01, $02, $03, $14, $01, $02, $03   ; 00 
- D 1 - I - 0x00EE3C 03:AE2C: 04        .byte $04, $05, $06, $07, $04, $05, $06, $07   ; 01 
- D 1 - I - 0x00EE44 03:AE34: 08        .byte $08, $09, $0A, $0B, $08, $09, $0A, $0B   ; 02 
- D 1 - I - 0x00EE4C 03:AE3C: 0C        .byte $0C, $0D, $0E, $0F, $0C, $0D, $0E, $0F   ; 03 
- D 1 - I - 0x00EE54 03:AE44: 10        .byte $10, $11, $12, $13, $10, $11, $12, $13   ; 04 
- D 1 - I - 0x00EE5C 03:AE4C: 15        .byte $15, $15, $15, $15, $15, $15, $15, $15   ; 05 
- D 1 - I - 0x00EE64 03:AE54: 16        .byte $16, $16, $16, $16, $16, $44, $35, $35   ; 06 
- D 1 - I - 0x00EE6C 03:AE5C: 00        .byte $00, $00, $00, $00, $00, $45, $39, $39   ; 07 



_off018_02_AE64_0B:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x00EE74 03:AE64: 14        .byte $14, $01, $02, $34, $00, $00, $00, $00   ; 00 
- D 1 - I - 0x00EE7C 03:AE6C: 04        .byte $04, $05, $06, $38, $00, $00, $00, $00   ; 01 
- D 1 - I - 0x00EE84 03:AE74: 08        .byte $08, $09, $0A, $00, $00, $00, $00, $00   ; 02 
- D 1 - I - 0x00EE8C 03:AE7C: 0C        .byte $0C, $0D, $0E, $00, $00, $00, $00, $00   ; 03 
- D 1 - I - 0x00EE94 03:AE84: 10        .byte $10, $11, $12, $00, $00, $00, $00, $00   ; 04 
- D 1 - I - 0x00EE9C 03:AE8C: 15        .byte $15, $15, $15, $27, $31, $32, $33, $3C   ; 05 
- D 1 - I - 0x00EEA4 03:AE94: 17        .byte $17, $29, $2A, $2B, $30, $00, $36, $37   ; 06 
- D 1 - I - 0x00EEAC 03:AE9C: 2C        .byte $2C, $2D, $2E, $2F, $28, $00, $3A, $3B   ; 07 



_off018_02_AEA4_0C:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x00EEB4 03:AEA4: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 00 
- D 1 - I - 0x00EEBC 03:AEAC: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 01 
- D 1 - I - 0x00EEC4 03:AEB4: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 02 
- D 1 - I - 0x00EECC 03:AEBC: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 03 
- D 1 - I - 0x00EED4 03:AEC4: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 04 
- D 1 - I - 0x00EEDC 03:AECC: 3C        .byte $3C, $3C, $3C, $3C, $3C, $3C, $3C, $3C   ; 05 
- D 1 - I - 0x00EEE4 03:AED4: 3D        .byte $3D, $3D, $3D, $3D, $3D, $3D, $3D, $3D   ; 06 
- D 1 - I - 0x00EEEC 03:AEDC: 3B        .byte $3B, $3B, $3B, $3B, $3B, $3B, $3B, $3B   ; 07 



_off018_02_AEE4_0D:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x00EEF4 03:AEE4: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 00 
- D 1 - I - 0x00EEFC 03:AEEC: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 01 
- D 1 - I - 0x00EF04 03:AEF4: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 02 
- D 1 - I - 0x00EF0C 03:AEFC: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 03 
- D 1 - I - 0x00EF14 03:AF04: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 04 
- D 1 - I - 0x00EF1C 03:AF0C: 51        .byte $51, $52, $53, $54, $53, $54, $53, $54   ; 05 
- D 1 - I - 0x00EF24 03:AF14: 57        .byte $57, $55, $56, $55, $56, $55, $56, $55   ; 06 
- D 1 - I - 0x00EF2C 03:AF1C: 58        .byte $58, $59, $5A, $59, $5A, $59, $5A, $59   ; 07 



_off018_02_AF24_0E:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x00EF34 03:AF24: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 00 
- D 1 - I - 0x00EF3C 03:AF2C: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 01 
- D 1 - I - 0x00EF44 03:AF34: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 02 
- D 1 - I - 0x00EF4C 03:AF3C: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 03 
- D 1 - I - 0x00EF54 03:AF44: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 04 
- D 1 - I - 0x00EF5C 03:AF4C: 53        .byte $53, $54, $53, $54, $53, $54, $53, $54   ; 05 
- D 1 - I - 0x00EF64 03:AF54: 56        .byte $56, $55, $56, $55, $56, $55, $56, $55   ; 06 
- D 1 - I - 0x00EF6C 03:AF5C: 5A        .byte $5A, $59, $5A, $59, $5A, $59, $5A, $59   ; 07 



_off018_02_AF64_0F:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x00EF74 03:AF64: 60        .byte $60, $67, $68, $69, $6A, $6B, $6C, $66   ; 00 
- D 1 - I - 0x00EF7C 03:AF6C: 6D        .byte $6D, $6E, $6F, $70, $71, $72, $6E, $73   ; 01 
- D 1 - I - 0x00EF84 03:AF74: 60        .byte $60, $74, $74, $75, $76, $74, $74, $66   ; 02 
- D 1 - I - 0x00EF8C 03:AF7C: 77        .byte $77, $78, $79, $7A, $7B, $7A, $7C, $7D   ; 03 
- D 1 - I - 0x00EF94 03:AF84: 7E        .byte $7E, $7F, $7F, $7F, $7F, $7F, $7F, $80   ; 04 
- D 1 - I - 0x00EF9C 03:AF8C: 53        .byte $53, $54, $53, $54, $53, $54, $53, $54   ; 05 
- D 1 - I - 0x00EFA4 03:AF94: 56        .byte $56, $55, $56, $55, $56, $55, $56, $55   ; 06 
- D 1 - I - 0x00EFAC 03:AF9C: 5A        .byte $5A, $59, $5A, $59, $5A, $59, $5A, $59   ; 07 



_off018_02_AFA4_10:
;                                              00   01   02   03   04   05   06   07
- D 1 - I - 0x00EFB4 03:AFA4: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 00 
- D 1 - I - 0x00EFBC 03:AFAC: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 01 
- D 1 - I - 0x00EFC4 03:AFB4: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 02 
- D 1 - I - 0x00EFCC 03:AFBC: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 03 
- D 1 - I - 0x00EFD4 03:AFC4: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 04 
- D 1 - I - 0x00EFDC 03:AFCC: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 05 
- D 1 - I - 0x00EFE4 03:AFD4: 5B        .byte $5B, $5C, $5C, $5D, $5E, $5C, $5C, $5F   ; 06 
- D 1 - I - 0x00EFEC 03:AFDC: 60        .byte $60, $61, $62, $63, $64, $65, $61, $66   ; 07 



_off006_0x00EFF4_02_area_3:
; 00
- D 1 - I - 0x00EFF4 03:AFE4: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00EFF8 03:AFE8: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00EFFC 03:AFEC: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00F000 03:AFF0: 00        .byte $00, $00, $00, $00   ; 
; 01 
- D 1 - I - 0x00F004 03:AFF4: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00F008 03:AFF8: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00F00C 03:AFFC: 00        .byte $00, $6D, $0D, $6F   ; 
- D 1 - I - 0x00F010 03:B000: 4C        .byte $4C, $4D, $6E, $70   ; 
; 02 
- D 1 - I - 0x00F014 03:B004: 00        .byte $00, $00, $01, $47   ; 
- D 1 - I - 0x00F018 03:B008: 48        .byte $48, $49, $4A, $4B   ; 
- D 1 - I - 0x00F01C 03:B00C: 02        .byte $02, $4E, $03, $4F   ; 
- D 1 - I - 0x00F020 03:B010: 51        .byte $51, $52, $53, $54   ; 
; 03 
- D 1 - I - 0x00F024 03:B014: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00F028 03:B018: 4C        .byte $4C, $4D, $00, $00   ; 
- D 1 - I - 0x00F02C 03:B01C: 04        .byte $04, $50, $05, $72   ; 
- D 1 - I - 0x00F030 03:B020: 55        .byte $55, $56, $57, $73   ; 
; 04 
- D 1 - I - 0x00F034 03:B024: 02        .byte $02, $4E, $03, $4F   ; 
- D 1 - I - 0x00F038 03:B028: 51        .byte $51, $52, $53, $54   ; 
- D 1 - I - 0x00F03C 03:B02C: 06        .byte $06, $59, $07, $5A   ; 
- D 1 - I - 0x00F040 03:B030: 5D        .byte $5D, $5E, $5F, $60   ; 
; 05 
- D 1 - I - 0x00F044 03:B034: 04        .byte $04, $50, $05, $58   ; 
- D 1 - I - 0x00F048 03:B038: 55        .byte $55, $56, $57, $5C   ; 
- D 1 - I - 0x00F04C 03:B03C: 08        .byte $08, $5B, $0F, $64   ; 
- D 1 - I - 0x00F050 03:B040: 61        .byte $61, $62, $63, $70   ; 
; 06 
- D 1 - I - 0x00F054 03:B044: 06        .byte $06, $59, $07, $5A   ; 
- D 1 - I - 0x00F058 03:B048: 5D        .byte $5D, $5E, $5F, $60   ; 
- D 1 - I - 0x00F05C 03:B04C: 09        .byte $09, $65, $0A, $66   ; 
- D 1 - I - 0x00F060 03:B050: 68        .byte $68, $69, $6A, $6B   ; 
; 07 
- D 1 - I - 0x00F064 03:B054: 08        .byte $08, $5B, $0F, $74   ; 
- D 1 - I - 0x00F068 03:B058: 61        .byte $61, $62, $63, $70   ; 
- D 1 - I - 0x00F06C 03:B05C: 0B        .byte $0B, $67, $0C, $58   ; 
- D 1 - I - 0x00F070 03:B060: 6C        .byte $6C, $75, $76, $5C   ; 
; 08 
- D 1 - I - 0x00F074 03:B064: 11        .byte $11, $65, $0A, $66   ; 
- D 1 - I - 0x00F078 03:B068: 68        .byte $68, $69, $6A, $6B   ; 
- D 1 - I - 0x00F07C 03:B06C: 00        .byte $00, $13, $13, $82   ; 
- D 1 - I - 0x00F080 03:B070: 00        .byte $00, $83, $15, $85   ; 
; 09 
- D 1 - I - 0x00F084 03:B074: 0B        .byte $0B, $67, $0C, $77   ; 
- D 1 - I - 0x00F088 03:B078: 6C        .byte $6C, $75, $76, $7D   ; 
- D 1 - I - 0x00F08C 03:B07C: 12        .byte $12, $79, $10, $7A   ; 
- D 1 - I - 0x00F090 03:B080: 70        .byte $70, $00, $7B, $7C   ; 
; 0A 
- D 1 - I - 0x00F094 03:B084: 00        .byte $00, $78, $13, $82   ; 
- D 1 - I - 0x00F098 03:B088: 7E        .byte $7E, $7F, $15, $86   ; 
- D 1 - I - 0x00F09C 03:B08C: 13        .byte $13, $00, $15, $86   ; 
- D 1 - I - 0x00F0A0 03:B090: 83        .byte $83, $00, $15, $86   ; 
; 0B 
- D 1 - I - 0x00F0A4 03:B094: 12        .byte $12, $79, $10, $7A   ; 
- D 1 - I - 0x00F0A8 03:B098: 70        .byte $70, $00, $7B, $7C   ; 
- D 1 - I - 0x00F0AC 03:B09C: 14        .byte $14, $82, $14, $82   ; 
- D 1 - I - 0x00F0B0 03:B0A0: 18        .byte $18, $84, $17, $86   ; 
; 0C 
- D 1 - I - 0x00F0B4 03:B0A4: 00        .byte $00, $83, $15, $86   ; 
- D 1 - I - 0x00F0B8 03:B0A8: 00        .byte $00, $83, $15, $85   ; 
- D 1 - I - 0x00F0BC 03:B0AC: 00        .byte $00, $16, $15, $85   ; 
- D 1 - I - 0x00F0C0 03:B0B0: 00        .byte $00, $83, $19, $85   ; 
; 0D 
- D 1 - I - 0x00F0C4 03:B0B4: 14        .byte $14, $82, $14, $82   ; 
- D 1 - I - 0x00F0C8 03:B0B8: 18        .byte $18, $84, $17, $86   ; 
- D 1 - I - 0x00F0CC 03:B0BC: 18        .byte $18, $84, $17, $86   ; 
- D 1 - I - 0x00F0D0 03:B0C0: 18        .byte $18, $84, $17, $86   ; 
; 0E 
- D 1 - I - 0x00F0D4 03:B0C4: 16        .byte $16, $00, $15, $86   ; 
- D 1 - I - 0x00F0D8 03:B0C8: 83        .byte $83, $00, $19, $85   ; 
- D 1 - I - 0x00F0DC 03:B0CC: 16        .byte $16, $00, $19, $85   ; 
- D 1 - I - 0x00F0E0 03:B0D0: 83        .byte $83, $00, $19, $85   ; 
; 0F 
- D 1 - I - 0x00F0E4 03:B0D4: 18        .byte $18, $84, $17, $86   ; 
- D 1 - I - 0x00F0E8 03:B0D8: 18        .byte $18, $84, $17, $86   ; 
- D 1 - I - 0x00F0EC 03:B0DC: 18        .byte $18, $84, $17, $86   ; 
- D 1 - I - 0x00F0F0 03:B0E0: 18        .byte $18, $84, $17, $86   ; 
; 10 
- D 1 - I - 0x00F0F4 03:B0E4: 00        .byte $00, $16, $19, $85   ; 
- D 1 - I - 0x00F0F8 03:B0E8: 00        .byte $00, $83, $19, $87   ; 
- D 1 - I - 0x00F0FC 03:B0EC: 00        .byte $00, $83, $19, $87   ; 
- D 1 - I - 0x00F100 03:B0F0: 00        .byte $00, $00, $88, $80   ; 
; 11 
- D 1 - I - 0x00F104 03:B0F4: 18        .byte $18, $84, $17, $86   ; 
- D 1 - I - 0x00F108 03:B0F8: 18        .byte $18, $84, $17, $85   ; 
- D 1 - I - 0x00F10C 03:B0FC: 18        .byte $18, $84, $17, $85   ; 
- D 1 - I - 0x00F110 03:B100: 1C        .byte $1C, $81, $88, $81   ; 
; 12 
- D 1 - I - 0x00F114 03:B104: 16        .byte $16, $00, $19, $85   ; 
- D 1 - I - 0x00F118 03:B108: 83        .byte $83, $00, $19, $87   ; 
- D 1 - I - 0x00F11C 03:B10C: 16        .byte $16, $00, $19, $87   ; 
- D 1 - I - 0x00F120 03:B110: 83        .byte $83, $00, $88, $80   ; 
; 13 
- D 1 - I - 0x00F124 03:B114: 18        .byte $18, $84, $17, $85   ; 
- D 1 - I - 0x00F128 03:B118: 18        .byte $18, $84, $17, $85   ; 
- D 1 - I - 0x00F12C 03:B11C: 1C        .byte $1C, $81, $17, $85   ; 
- D 1 - I - 0x00F130 03:B120: 00        .byte $00, $00, $88, $81   ; 
; 14 
- D 1 - I - 0x00F134 03:B124: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00F138 03:B128: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00F13C 03:B12C: 0E        .byte $0E, $71, $01, $47   ; 
- D 1 - I - 0x00F140 03:B130: 48        .byte $48, $49, $4A, $4B   ; 
; 15 
- D 1 - I - 0x00F144 03:B134: 1B        .byte $1B, $1B, $1B, $1B   ; 
- D 1 - I - 0x00F148 03:B138: 89        .byte $89, $8A, $89, $8A   ; 
- D 1 - I - 0x00F14C 03:B13C: 28        .byte $28, $28, $28, $28   ; 
- D 1 - I - 0x00F150 03:B140: 8B        .byte $8B, $28, $8B, $28   ; 
; 16 
- D 1 - I - 0x00F154 03:B144: 2F        .byte $2F, $8B, $2F, $8B   ; 
- D 1 - I - 0x00F158 03:B148: 8C        .byte $8C, $2F, $8C, $2F   ; 
- D 1 - I - 0x00F15C 03:B14C: 2F        .byte $2F, $8D, $2F, $8C   ; 
- D 1 - I - 0x00F160 03:B150: 35        .byte $35, $8E, $35, $35   ; 
; 17 
- D 1 - I - 0x00F164 03:B154: 2F        .byte $2F, $8B, $2F, $8B   ; 
- D 1 - I - 0x00F168 03:B158: 8C        .byte $8C, $2F, $8C, $2F   ; 
- D 1 - I - 0x00F16C 03:B15C: 2F        .byte $2F, $8C, $2F, $8C   ; 
- D 1 - I - 0x00F170 03:B160: 8C        .byte $8C, $2F, $8C, $2F   ; 
; 18 
- D 1 - I - 0x00F174 03:B164: 1C        .byte $1C, $81, $17, $84   ; 
- D 1 - I - 0x00F178 03:B168: 00        .byte $00, $00, $17, $81   ; 
- D 1 - I - 0x00F17C 03:B16C: 1D        .byte $1D, $1D, $1A, $1D   ; 
- D 1 - I - 0x00F180 03:B170: 1B        .byte $1B, $1B, $1D, $26   ; 
; 19 
- D 1 - I - 0x00F184 03:B174: 16        .byte $16, $00, $19, $87   ; 
- D 1 - I - 0x00F188 03:B178: 83        .byte $83, $00, $88, $80   ; 
- D 1 - I - 0x00F18C 03:B17C: 1A        .byte $1A, $1D, $1A, $1A   ; 
- D 1 - I - 0x00F190 03:B180: 96        .byte $96, $3A, $96, $3A   ; 
; 1A 
- D 1 - I - 0x00F194 03:B184: 1C        .byte $1C, $81, $17, $85   ; 
- D 1 - I - 0x00F198 03:B188: 00        .byte $00, $00, $88, $81   ; 
- D 1 - I - 0x00F19C 03:B18C: 1D        .byte $1D, $1D, $1A, $1D   ; 
- D 1 - I - 0x00F1A0 03:B190: 96        .byte $96, $3A, $96, $3A   ; 
; 1B 
- D 1 - I - 0x00F1A4 03:B194: 16        .byte $16, $00, $19, $87   ; 
- D 1 - I - 0x00F1A8 03:B198: 83        .byte $83, $00, $88, $80   ; 
- D 1 - I - 0x00F1AC 03:B19C: 1A        .byte $1A, $1A, $1A, $1A   ; 
- D 1 - I - 0x00F1B0 03:B1A0: 1E        .byte $1E, $1B, $1D, $1B   ; 
; 1C 
- D 1 - I - 0x00F1B4 03:B1A4: 00        .byte $00, $83, $19, $87   ; 
- D 1 - I - 0x00F1B8 03:B1A8: 00        .byte $00, $83, $88, $80   ; 
- D 1 - I - 0x00F1BC 03:B1AC: 1A        .byte $1A, $1A, $1A, $1A   ; 
- D 1 - I - 0x00F1C0 03:B1B0: 96        .byte $96, $3A, $96, $3A   ; 
; 1D 
- D 1 - I - 0x00F1C4 03:B1B4: 1B        .byte $1B, $1B, $1B, $1B   ; 
- D 1 - I - 0x00F1C8 03:B1B8: 89        .byte $89, $8A, $89, $8A   ; 
- D 1 - I - 0x00F1CC 03:B1BC: 28        .byte $28, $28, $28, $91   ; 
- D 1 - I - 0x00F1D0 03:B1C0: 8B        .byte $8B, $28, $28, $91   ; 
; 1E 
- D 1 - I - 0x00F1D4 03:B1C4: 1B        .byte $1B, $26, $1F, $3B   ; 
- D 1 - I - 0x00F1D8 03:B1C8: 8F        .byte $8F, $1F, $3C, $3D   ; 
- D 1 - I - 0x00F1DC 03:B1CC: 26        .byte $26, $3C, $24, $3F   ; 
- D 1 - I - 0x00F1E0 03:B1D0: 43        .byte $43, $42, $37, $3F   ; 
; 1F 
- D 1 - I - 0x00F1E4 03:B1D4: 20        .byte $20, $3B, $20, $3B   ; 
- D 1 - I - 0x00F1E8 03:B1D8: 3E        .byte $3E, $3D, $3E, $3D   ; 
- D 1 - I - 0x00F1EC 03:B1DC: 24        .byte $24, $3F, $24, $3F   ; 
- D 1 - I - 0x00F1F0 03:B1E0: 3F        .byte $3F, $24, $3F, $24   ; 
; 20 
- D 1 - I - 0x00F1F4 03:B1E4: 20        .byte $20, $97, $1E, $1B   ; 
- D 1 - I - 0x00F1F8 03:B1E8: 3E        .byte $3E, $25, $97, $90   ; 
- D 1 - I - 0x00F1FC 03:B1EC: 24        .byte $24, $3F, $25, $1E   ; 
- D 1 - I - 0x00F200 03:B1F0: 3F        .byte $3F, $3F, $42, $40   ; 
; 21 
- D 1 - I - 0x00F204 03:B1F4: 1B        .byte $1B, $1B, $1B, $1B   ; 
- D 1 - I - 0x00F208 03:B1F8: 90        .byte $90, $8A, $89, $8A   ; 
- D 1 - I - 0x00F20C 03:B1FC: 29        .byte $29, $28, $28, $28   ; 
- D 1 - I - 0x00F210 03:B200: 29        .byte $29, $8C, $8B, $2F   ; 
; 22 
- D 1 - I - 0x00F214 03:B204: 2F        .byte $2F, $8B, $28, $91   ; 
- D 1 - I - 0x00F218 03:B208: 8C        .byte $8C, $2F, $8C, $28   ; 
- D 1 - I - 0x00F21C 03:B20C: 2F        .byte $2F, $8D, $2F, $8C   ; 
- D 1 - I - 0x00F220 03:B210: 35        .byte $35, $8E, $35, $35   ; 
; 23 
- D 1 - I - 0x00F224 03:B214: 43        .byte $43, $42, $42, $3F   ; 
- D 1 - I - 0x00F228 03:B218: 95        .byte $95, $42, $37, $44   ; 
- D 1 - I - 0x00F22C 03:B21C: 2E        .byte $2E, $95, $37, $37   ; 
- D 1 - I - 0x00F230 03:B220: 35        .byte $35, $35, $94, $94   ; 
; 24 
- D 1 - I - 0x00F234 03:B224: 44        .byte $44, $3F, $44, $3F   ; 
- D 1 - I - 0x00F238 03:B228: 37        .byte $37, $44, $3F, $37   ; 
- D 1 - I - 0x00F23C 03:B22C: 37        .byte $37, $92, $37, $37   ; 
- D 1 - I - 0x00F240 03:B230: 94        .byte $94, $93, $94, $94   ; 
; 25 
- D 1 - I - 0x00F244 03:B234: 44        .byte $44, $3F, $42, $40   ; 
- D 1 - I - 0x00F248 03:B238: 3F        .byte $3F, $44, $42, $41   ; 
- D 1 - I - 0x00F24C 03:B23C: 37        .byte $37, $92, $41, $2E   ; 
- D 1 - I - 0x00F250 03:B240: 94        .byte $94, $93, $35, $35   ; 
; 26 
- D 1 - I - 0x00F254 03:B244: 29        .byte $29, $28, $2F, $8C   ; 
- D 1 - I - 0x00F258 03:B248: 2F        .byte $2F, $2F, $8C, $2F   ; 
- D 1 - I - 0x00F25C 03:B24C: 2F        .byte $2F, $8D, $2F, $8C   ; 
- D 1 - I - 0x00F260 03:B250: 35        .byte $35, $8E, $35, $35   ; 
; 27 
- D 1 - I - 0x00F264 03:B254: 1A        .byte $1A, $1A, $00, $00   ; 
- D 1 - I - 0x00F268 03:B258: B9        .byte $B9, $B9, $BA, $BB   ; 
- D 1 - I - 0x00F26C 03:B25C: 28        .byte $28, $2F, $28, $29   ; 
- D 1 - I - 0x00F270 03:B260: 8B        .byte $8B, $28, $8B, $28   ; 
; 28 
- D 1 - I - 0x00F274 03:B264: 30        .byte $30, $A4, $2D, $00   ; 
- D 1 - I - 0x00F278 03:B268: 9C        .byte $9C, $A0, $00, $00   ; 
- - - - - - 0x00F27C 03:B26C: 2D        .byte $2D, $00, $2D, $00   ; 
- - - - - - 0x00F280 03:B270: 00        .byte $00, $00, $00, $00   ; 
; 29 
- D 1 - I - 0x00F284 03:B274: 2F        .byte $2F, $8B, $2F, $8B   ; 
- D 1 - I - 0x00F288 03:B278: 8C        .byte $8C, $2F, $8C, $2F   ; 
- D 1 - I - 0x00F28C 03:B27C: 2F        .byte $2F, $8B, $2F, $8B   ; 
- D 1 - I - 0x00F290 03:B280: 9E        .byte $9E, $31, $9E, $31   ; 
; 2A 
- D 1 - I - 0x00F294 03:B284: 2F        .byte $2F, $8B, $2F, $8B   ; 
- D 1 - I - 0x00F298 03:B288: 8C        .byte $8C, $2F, $8C, $2F   ; 
- D 1 - I - 0x00F29C 03:B28C: 2F        .byte $2F, $8B, $2F, $9E   ; 
- D 1 - I - 0x00F2A0 03:B290: 9E        .byte $9E, $31, $9F, $00   ; 
; 2B 
- D 1 - I - 0x00F2A4 03:B294: 2F        .byte $2F, $8B, $2F, $8B   ; 
- D 1 - I - 0x00F2A8 03:B298: 8C        .byte $8C, $2F, $9E, $31   ; 
- D 1 - I - 0x00F2AC 03:B29C: 31        .byte $31, $9F, $2D, $A1   ; 
- D 1 - I - 0x00F2B0 03:B2A0: A2        .byte $A2, $A2, $98, $9A   ; 
; 2C 
- D 1 - I - 0x00F2B4 03:B2A4: 28        .byte $28, $28, $31, $9F   ; 
- D 1 - I - 0x00F2B8 03:B2A8: 35        .byte $35, $9F, $00, $A2   ; 
- - - - - - 0x00F2BC 03:B2AC: 2D        .byte $2D, $00, $2D, $00   ; 
- - - - - - 0x00F2C0 03:B2B0: 00        .byte $00, $00, $00, $00   ; 
; 2D 
- D 1 - I - 0x00F2C4 03:B2B4: 32        .byte $32, $A1, $32, $32   ; 
- D 1 - I - 0x00F2C8 03:B2B8: 99        .byte $99, $9A, $9C, $99   ; 
- - - - - - 0x00F2CC 03:B2BC: 2D        .byte $2D, $00, $2D, $00   ; 
- - - - - - 0x00F2D0 03:B2C0: 00        .byte $00, $00, $00, $00   ; 
; 2E 
- D 1 - I - 0x00F2D4 03:B2C4: 32        .byte $32, $A1, $32, $9B   ; 
- D 1 - I - 0x00F2D8 03:B2C8: 99        .byte $99, $9A, $9C, $9D   ; 
- - - - - - 0x00F2DC 03:B2CC: 2D        .byte $2D, $00, $2D, $00   ; 
- - - - - - 0x00F2E0 03:B2D0: 00        .byte $00, $00, $00, $00   ; 
; 2F 
- D 1 - I - 0x00F2E4 03:B2D4: 30        .byte $30, $98, $30, $9B   ; 
- D 1 - I - 0x00F2E8 03:B2D8: 9C        .byte $9C, $9A, $9C, $9D   ; 
- - - - - - 0x00F2EC 03:B2DC: 2D        .byte $2D, $00, $2D, $00   ; 
- - - - - - 0x00F2F0 03:B2E0: 00        .byte $00, $00, $00, $00   ; 
; 30 
- D 1 - I - 0x00F2F4 03:B2E4: 2F        .byte $2F, $9F, $2D, $00   ; 
- D 1 - I - 0x00F2F8 03:B2E8: 9F        .byte $9F, $A3, $00, $00   ; 
- D 1 - I - 0x00F2FC 03:B2EC: 32        .byte $32, $A4, $2D, $00   ; 
- D 1 - I - 0x00F300 03:B2F0: 9A        .byte $9A, $A0, $00, $00   ; 
; 31 
- D 1 - I - 0x00F304 03:B2F4: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00F308 03:B2F8: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00F30C 03:B2FC: 2A        .byte $2A, $2B, $2B, $A5   ; 
- D 1 - I - 0x00F310 03:B300: A7        .byte $A7, $A9, $A8, $A9   ; 
; 32 
- D 1 - I - 0x00F314 03:B304: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00F318 03:B308: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00F31C 03:B30C: 2C        .byte $2C, $A5, $2C, $A5   ; 
- D 1 - I - 0x00F320 03:B310: A8        .byte $A8, $A9, $A8, $A9   ; 
; 33 
- D 1 - I - 0x00F324 03:B314: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00F328 03:B318: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00F32C 03:B31C: 2C        .byte $2C, $A5, $2C, $A6   ; 
- D 1 - I - 0x00F330 03:B320: A8        .byte $A8, $A9, $A8, $AA   ; 
; 34 
- D 1 - I - 0x00F334 03:B324: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00F338 03:B328: 4C        .byte $4C, $4D, $00, $00   ; 
- D 1 - I - 0x00F33C 03:B32C: 04        .byte $04, $50, $05, $00   ; 
- D 1 - I - 0x00F340 03:B330: 55        .byte $55, $56, $57, $00   ; 
; 35 
- D 1 - I - 0x00F344 03:B334: 2F        .byte $2F, $8B, $2F, $8B   ; 
- D 1 - I - 0x00F348 03:B338: 8C        .byte $8C, $2F, $8C, $2F   ; 
- D 1 - I - 0x00F34C 03:B33C: 2F        .byte $2F, $8C, $2F, $8C   ; 
- D 1 - I - 0x00F350 03:B340: 28        .byte $28, $2F, $28, $2F   ; 
; 36 
- D 1 - I - 0x00F354 03:B344: 2D        .byte $2D, $00, $33, $AD   ; 
- D 1 - I - 0x00F358 03:B348: 00        .byte $00, $AE, $AF, $B0   ; 
- D 1 - I - 0x00F35C 03:B34C: 2D        .byte $2D, $B3, $B8, $B5   ; 
- D 1 - I - 0x00F360 03:B350: B6        .byte $B6, $B7, $B8, $B5   ; 
; 37 
- D 1 - I - 0x00F364 03:B354: 34        .byte $34, $34, $34, $34   ; 
- D 1 - I - 0x00F368 03:B358: B1        .byte $B1, $B1, $B2, $B2   ; 
- D 1 - I - 0x00F36C 03:B35C: 34        .byte $34, $34, $34, $34   ; 
- D 1 - I - 0x00F370 03:B360: 34        .byte $34, $34, $34, $34   ; 
; 38 
- D 1 - I - 0x00F374 03:B364: 08        .byte $08, $5B, $00, $00   ; 
- D 1 - I - 0x00F378 03:B368: 61        .byte $61, $62, $45, $00   ; 
- D 1 - I - 0x00F37C 03:B36C: 0B        .byte $0B, $46, $0C, $00   ; 
- D 1 - I - 0x00F380 03:B370: 6C        .byte $6C, $00, $00, $00   ; 
; 39 
- D 1 - I - 0x00F384 03:B374: 35        .byte $35, $8D, $2F, $28   ; 
- D 1 - I - 0x00F388 03:B378: 00        .byte $00, $8E, $35, $35   ; 
- - - - - - 0x00F38C 03:B37C: 2D        .byte $2D, $00, $2D, $00   ; 
- - - - - - 0x00F390 03:B380: 00        .byte $00, $00, $00, $00   ; 
; 3A 
- D 1 - I - 0x00F394 03:B384: 36        .byte $36, $B7, $B8, $B5   ; 
- D 1 - I - 0x00F398 03:B388: AB        .byte $AB, $B7, $B8, $B5   ; 
- - - - - - 0x00F39C 03:B38C: 2D        .byte $2D, $00, $2D, $00   ; 
- - - - - - 0x00F3A0 03:B390: 00        .byte $00, $00, $00, $00   ; 
; 3B 
- D 1 - I - 0x00F3A4 03:B394: 34        .byte $34, $34, $34, $34   ; 
- D 1 - I - 0x00F3A8 03:B398: 34        .byte $34, $34, $34, $34   ; 
- - - - - - 0x00F3AC 03:B39C: 2D        .byte $2D, $2D, $2D, $2D   ; 
- - - - - - 0x00F3B0 03:B3A0: 00        .byte $00, $00, $00, $00   ; 
; 3C 
- D 1 - I - 0x00F3B4 03:B3A4: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00F3B8 03:B3A8: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00F3BC 03:B3AC: 2D        .byte $2D, $2D, $2D, $2D   ; 
- D 1 - I - 0x00F3C0 03:B3B0: AC        .byte $AC, $AC, $AC, $AC   ; 
; 3D 
- D 1 - I - 0x00F3C4 03:B3B4: 34        .byte $34, $34, $34, $34   ; 
- D 1 - I - 0x00F3C8 03:B3B8: B2        .byte $B2, $B2, $B2, $B2   ; 
- D 1 - I - 0x00F3CC 03:B3BC: 34        .byte $34, $34, $34, $34   ; 
- D 1 - I - 0x00F3D0 03:B3C0: 34        .byte $34, $34, $34, $34   ; 
; 3E 
- D 1 - I - 0x00F3D4 03:B3C4: 18        .byte $18, $84, $17, $86   ; 
- D 1 - I - 0x00F3D8 03:B3C8: 00        .byte $00, $00, $98, $85   ; 
- D 1 - I - 0x00F3DC 03:B3CC: 21        .byte $21, $99, $00, $00   ; 
- D 1 - I - 0x00F3E0 03:B3D0: 9A        .byte $9A, $9B, $9C, $00   ; 
; 3F 
- D 1 - I - 0x00F3E4 03:B3D4: 1B        .byte $1B, $1B, $1B, $1B   ; 
- D 1 - I - 0x00F3E8 03:B3D8: 89        .byte $89, $8A, $89, $8A   ; 
- D 1 - I - 0x00F3EC 03:B3DC: 28        .byte $28, $28, $28, $A3   ; 
- D 1 - I - 0x00F3F0 03:B3E0: 8B        .byte $8B, $28, $8B, $A7   ; 
; 40 
- D 1 - I - 0x00F3F4 03:B3E4: 22        .byte $22, $9D, $23, $9E   ; 
- D 1 - I - 0x00F3F8 03:B3E8: 9F        .byte $9F, $A0, $A1, $A2   ; 
- D 1 - I - 0x00F3FC 03:B3EC: 38        .byte $38, $A4, $39, $A5   ; 
- D 1 - I - 0x00F400 03:B3F0: A8        .byte $A8, $A9, $AA, $AB   ; 
; 41 
- D 1 - I - 0x00F404 03:B3F4: 1A        .byte $1A, $1B, $1B, $1B   ; 
- D 1 - I - 0x00F408 03:B3F8: 8F        .byte $8F, $8A, $89, $8A   ; 
- D 1 - I - 0x00F40C 03:B3FC: 27        .byte $27, $A6, $28, $28   ; 
- D 1 - I - 0x00F410 03:B400: AC        .byte $AC, $AD, $8B, $28   ; 
; 42 
- D 1 - I - 0x00F414 03:B404: 1B        .byte $1B, $1B, $1B, $1B   ; 
- D 1 - I - 0x00F418 03:B408: 89        .byte $89, $8A, $89, $8A   ; 
- D 1 - I - 0x00F41C 03:B40C: 28        .byte $28, $28, $28, $28   ; 
- D 1 - I - 0x00F420 03:B410: 8B        .byte $8B, $28, $8B, $BB   ; 
; 43 
- D 1 - I - 0x00F424 03:B414: 1B        .byte $1B, $1B, $1B, $1B   ; 
- D 1 - I - 0x00F428 03:B418: 89        .byte $89, $8A, $89, $8A   ; 
- D 1 - I - 0x00F42C 03:B41C: 28        .byte $28, $28, $28, $28   ; 
- D 1 - I - 0x00F430 03:B420: BC        .byte $BC, $BD, $BE, $BF   ; 
; 44 
- D 1 - I - 0x00F434 03:B424: 2F        .byte $2F, $8B, $2F, $8B   ; 
- D 1 - I - 0x00F438 03:B428: 8C        .byte $8C, $2F, $8C, $2F   ; 
- D 1 - I - 0x00F43C 03:B42C: 2F        .byte $2F, $8D, $2F, $8C   ; 
- D 1 - I - 0x00F440 03:B430: 35        .byte $35, $8E, $35, $8D   ; 
; 45 
- D 1 - I - 0x00F444 03:B434: 2D        .byte $2D, $00, $2D, $8E   ; 
- D 1 - I - 0x00F448 03:B438: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x00F44C 03:B43C: 2D        .byte $2D, $00, $2D, $00   ; 
- - - - - - 0x00F450 03:B440: 00        .byte $00, $00, $00, $00   ; 
; 46 
- D 1 - I - 0x00F454 03:B444: 18        .byte $18, $84, $17, $86   ; 
- D 1 - I - 0x00F458 03:B448: 00        .byte $00, $00, $98, $85   ; 
- D 1 - I - 0x00F45C 03:B44C: AE        .byte $AE, $AF, $00, $00   ; 
- D 1 - I - 0x00F460 03:B450: 9A        .byte $9A, $B0, $B1, $00   ; 
; 47 
- D 1 - I - 0x00F464 03:B454: 22        .byte $22, $B2, $B3, $9E   ; 
- D 1 - I - 0x00F468 03:B458: 9F        .byte $9F, $A0, $A1, $A2   ; 
- D 1 - I - 0x00F46C 03:B45C: 38        .byte $38, $A4, $39, $B4   ; 
- D 1 - I - 0x00F470 03:B460: A8        .byte $A8, $A9, $AA, $B5   ; 
; 48 
- D 1 - I - 0x00F474 03:B464: 1B        .byte $1B, $1B, $1B, $1B   ; 
- D 1 - I - 0x00F478 03:B468: 89        .byte $89, $8A, $89, $8A   ; 
- D 1 - I - 0x00F47C 03:B46C: B6        .byte $B6, $B7, $B8, $B9   ; 
- D 1 - I - 0x00F480 03:B470: A8        .byte $A8, $A9, $AA, $BA   ; 
; 49 
- D 1 - I - 0x00F484 03:B474: 1B        .byte $1B, $1B, $1B, $1B   ; 
- D 1 - I - 0x00F488 03:B478: 89        .byte $89, $8A, $89, $8A   ; 
- D 1 - I - 0x00F48C 03:B47C: 28        .byte $28, $28, $C0, $C1   ; 
- D 1 - I - 0x00F490 03:B480: 8B        .byte $8B, $28, $C5, $C6   ; 
; 4A 
- D 1 - I - 0x00F494 03:B484: 1B        .byte $1B, $1B, $1B, $1B   ; 
- D 1 - I - 0x00F498 03:B488: 89        .byte $89, $8A, $89, $8A   ; 
- D 1 - I - 0x00F49C 03:B48C: C2        .byte $C2, $C3, $C4, $28   ; 
- D 1 - I - 0x00F4A0 03:B490: C7        .byte $C7, $C7, $C8, $C9   ; 
; 4B 
- D 1 - I - 0x00F4A4 03:B494: 1B        .byte $1B, $1B, $1B, $1B   ; 
- D 1 - I - 0x00F4A8 03:B498: 89        .byte $89, $8A, $CA, $CB   ; 
- D 1 - I - 0x00F4AC 03:B49C: 28        .byte $28, $28, $D0, $D1   ; 
- D 1 - I - 0x00F4B0 03:B4A0: 8B        .byte $8B, $D5, $00, $D6   ; 
; 4C 
- D 1 - I - 0x00F4B4 03:B4A4: 1B        .byte $1B, $1B, $1B, $1B   ; 
- D 1 - I - 0x00F4B8 03:B4A8: CC        .byte $CC, $CD, $CE, $8A   ; 
- D 1 - I - 0x00F4BC 03:B4AC: D2        .byte $D2, $D3, $D4, $28   ; 
- D 1 - I - 0x00F4C0 03:B4B0: D7        .byte $D7, $D8, $D9, $DA   ; 
; 4D 
- D 1 - I - 0x00F4C4 03:B4B4: 1B        .byte $1B, $1B, $1B, $1B   ; 
- D 1 - I - 0x00F4C8 03:B4B8: 89        .byte $89, $8A, $DB, $DC   ; 
- D 1 - I - 0x00F4CC 03:B4BC: 28        .byte $28, $28, $E0, $E1   ; 
- D 1 - I - 0x00F4D0 03:B4C0: 8B        .byte $8B, $D5, $00, $E5   ; 
; 4E 
- D 1 - I - 0x00F4D4 03:B4C4: 1B        .byte $1B, $1B, $1B, $1B   ; 
- D 1 - I - 0x00F4D8 03:B4C8: DD        .byte $DD, $DE, $DF, $8A   ; 
- D 1 - I - 0x00F4DC 03:B4CC: E2        .byte $E2, $E3, $E4, $28   ; 
- D 1 - I - 0x00F4E0 03:B4D0: E6        .byte $E6, $E7, $E8, $DA   ; 
; 4F 
- D 1 - I - 0x00F4E4 03:B4D4: 1B        .byte $1B, $1B, $1B, $1B   ; 
- D 1 - I - 0x00F4E8 03:B4D8: 89        .byte $89, $8A, $89, $8A   ; 
- D 1 - I - 0x00F4EC 03:B4DC: 28        .byte $28, $28, $E9, $EA   ; 
- D 1 - I - 0x00F4F0 03:B4E0: 8B        .byte $8B, $28, $ED, $EE   ; 
; 50 
- D 1 - I - 0x00F4F4 03:B4E4: 1B        .byte $1B, $1B, $1B, $1B   ; 
- D 1 - I - 0x00F4F8 03:B4E8: 89        .byte $89, $8A, $89, $8A   ; 
- D 1 - I - 0x00F4FC 03:B4EC: EB        .byte $EB, $EB, $EC, $28   ; 
- D 1 - I - 0x00F500 03:B4F0: EF        .byte $EF, $EF, $F0, $F1   ; 
; 51 
- D 1 - I - 0x00F504 03:B4F4: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00F508 03:B4F8: 00        .byte $00, $00, $00, $BC   ; 
- D 1 - I - 0x00F50C 03:B4FC: 2D        .byte $2D, $00, $27, $BD   ; 
- D 1 - I - 0x00F510 03:B500: AC        .byte $AC, $AC, $BE, $BF   ; 
; 52 
- D 1 - I - 0x00F514 03:B504: 28        .byte $28, $C3, $29, $C4   ; 
- D 1 - I - 0x00F518 03:B508: C5        .byte $C5, $C6, $C7, $C8   ; 
- D 1 - I - 0x00F51C 03:B50C: 2E        .byte $2E, $C9, $2F, $CA   ; 
- D 1 - I - 0x00F520 03:B510: CB        .byte $CB, $CC, $CD, $CE   ; 
; 53 
- D 1 - I - 0x00F524 03:B514: 2A        .byte $2A, $2A, $2B, $2B   ; 
- D 1 - I - 0x00F528 03:B518: C5        .byte $C5, $C6, $C5, $C6   ; 
- D 1 - I - 0x00F52C 03:B51C: 2E        .byte $2E, $C9, $30, $CF   ; 
- D 1 - I - 0x00F530 03:B520: CB        .byte $CB, $CC, $D1, $D2   ; 
; 54 
- D 1 - I - 0x00F534 03:B524: 2C        .byte $2C, $2B, $2B, $2C   ; 
- D 1 - I - 0x00F538 03:B528: C5        .byte $C5, $C6, $C7, $C8   ; 
- D 1 - I - 0x00F53C 03:B52C: 2E        .byte $2E, $C9, $2F, $CA   ; 
- D 1 - I - 0x00F540 03:B530: CB        .byte $CB, $CC, $CD, $CE   ; 
; 55 
- D 1 - I - 0x00F544 03:B534: 30        .byte $30, $CF, $31, $D0   ; 
- D 1 - I - 0x00F548 03:B538: D1        .byte $D1, $D2, $D3, $D4   ; 
- D 1 - I - 0x00F54C 03:B53C: 2F        .byte $2F, $CA, $2E, $C9   ; 
- D 1 - I - 0x00F550 03:B540: CD        .byte $CD, $CE, $CB, $CC   ; 
; 56 
- D 1 - I - 0x00F554 03:B544: 30        .byte $30, $D0, $2F, $CA   ; 
- D 1 - I - 0x00F558 03:B548: CB        .byte $CB, $CC, $CD, $CE   ; 
- D 1 - I - 0x00F55C 03:B54C: 30        .byte $30, $CF, $31, $D0   ; 
- D 1 - I - 0x00F560 03:B550: D1        .byte $D1, $D2, $D3, $D4   ; 
; 57 
- D 1 - I - 0x00F564 03:B554: 34        .byte $34, $34, $34, $C0   ; 
- D 1 - I - 0x00F568 03:B558: B2        .byte $B2, $B2, $B2, $C1   ; 
- D 1 - I - 0x00F56C 03:B55C: 34        .byte $34, $34, $34, $C2   ; 
- D 1 - I - 0x00F570 03:B560: 34        .byte $34, $34, $34, $C2   ; 
; 58 
- D 1 - I - 0x00F574 03:B564: 34        .byte $34, $34, $34, $C2   ; 
- D 1 - I - 0x00F578 03:B568: 34        .byte $34, $34, $34, $C2   ; 
- - - - - - 0x00F57C 03:B56C: 34        .byte $34, $34, $34, $C2   ; 
- - - - - - 0x00F580 03:B570: 34        .byte $34, $34, $34, $C2   ; 
; 59 
- D 1 - I - 0x00F584 03:B574: 31        .byte $31, $D0, $30, $D0   ; 
- D 1 - I - 0x00F588 03:B578: D3        .byte $D3, $D4, $CB, $CC   ; 
- - - - - - 0x00F58C 03:B57C: 2E        .byte $2E, $C9, $30, $CF   ; 
- - - - - - 0x00F590 03:B580: CB        .byte $CB, $CC, $D1, $D2   ; 
; 5A 
- D 1 - I - 0x00F594 03:B584: 2F        .byte $2F, $CA, $2E, $C9   ; 
- D 1 - I - 0x00F598 03:B588: CD        .byte $CD, $CE, $CB, $CC   ; 
- - - - - - 0x00F59C 03:B58C: 31        .byte $31, $D0, $30, $D0   ; 
- - - - - - 0x00F5A0 03:B590: D3        .byte $D3, $D4, $CB, $CC   ; 
; 5B 
- D 1 - I - 0x00F5A4 03:B594: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00F5A8 03:B598: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00F5AC 03:B59C: 00        .byte $00, $00, $01, $02   ; 
- D 1 - I - 0x00F5B0 03:B5A0: 00        .byte $00, $00, $11, $12   ; 
; 5C 
- D 1 - I - 0x00F5B4 03:B5A4: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00F5B8 03:B5A8: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00F5BC 03:B5AC: 20        .byte $20, $20, $20, $20   ; 
- D 1 - I - 0x00F5C0 03:B5B0: 26        .byte $26, $26, $26, $26   ; 
; 5D 
- D 1 - I - 0x00F5C4 03:B5B4: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00F5C8 03:B5B8: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00F5CC 03:B5BC: 21        .byte $21, $22, $23, $23   ; 
- D 1 - I - 0x00F5D0 03:B5C0: 27        .byte $27, $28, $07, $17   ; 
; 5E 
- D 1 - I - 0x00F5D4 03:B5C4: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00F5D8 03:B5C8: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00F5DC 03:B5CC: 23        .byte $23, $23, $24, $25   ; 
- D 1 - I - 0x00F5E0 03:B5D0: 18        .byte $18, $09, $29, $2A   ; 
; 5F 
- D 1 - I - 0x00F5E4 03:B5D4: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00F5E8 03:B5D8: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x00F5EC 03:B5DC: 03        .byte $03, $04, $00, $00   ; 
- D 1 - I - 0x00F5F0 03:B5E0: 13        .byte $13, $14, $00, $00   ; 
; 60 
- D 1 - I - 0x00F5F4 03:B5E4: 00        .byte $00, $00, $11, $12   ; 
- D 1 - I - 0x00F5F8 03:B5E8: 00        .byte $00, $00, $11, $12   ; 
- D 1 - I - 0x00F5FC 03:B5EC: 00        .byte $00, $00, $11, $12   ; 
- D 1 - I - 0x00F600 03:B5F0: 00        .byte $00, $00, $11, $12   ; 
; 61 
- D 1 - I - 0x00F604 03:B5F4: 26        .byte $26, $0C, $0D, $26   ; 
- D 1 - I - 0x00F608 03:B5F8: 26        .byte $26, $1C, $1D, $26   ; 
- - - - - - 0x00F60C 03:B5FC: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x00F610 03:B600: 00        .byte $00, $00, $00, $00   ; 
; 62 
- D 1 - I - 0x00F614 03:B604: 26        .byte $26, $0C, $0D, $26   ; 
- D 1 - I - 0x00F618 03:B608: 26        .byte $26, $1C, $1D, $2F   ; 
- - - - - - 0x00F61C 03:B60C: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x00F620 03:B610: 00        .byte $00, $00, $00, $00   ; 
; 63 
- D 1 - I - 0x00F624 03:B614: 2B        .byte $2B, $2C, $08, $18   ; 
- D 1 - I - 0x00F628 03:B618: 30        .byte $30, $31, $00, $19   ; 
- - - - - - 0x00F62C 03:B61C: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x00F630 03:B620: 00        .byte $00, $00, $00, $00   ; 
; 64 
- D 1 - I - 0x00F634 03:B624: 0B        .byte $0B, $00, $2D, $2E   ; 
- D 1 - I - 0x00F638 03:B628: 00        .byte $00, $10, $32, $33   ; 
- - - - - - 0x00F63C 03:B62C: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x00F640 03:B630: 00        .byte $00, $00, $00, $00   ; 
; 65 
- D 1 - I - 0x00F644 03:B634: 26        .byte $26, $0C, $0D, $26   ; 
- D 1 - I - 0x00F648 03:B638: 34        .byte $34, $1C, $1D, $26   ; 
- - - - - - 0x00F64C 03:B63C: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x00F650 03:B640: 00        .byte $00, $00, $00, $00   ; 
; 66 
- D 1 - I - 0x00F654 03:B644: 13        .byte $13, $14, $00, $00   ; 
- D 1 - I - 0x00F658 03:B648: 13        .byte $13, $14, $00, $00   ; 
- D 1 - I - 0x00F65C 03:B64C: 13        .byte $13, $14, $00, $00   ; 
- D 1 - I - 0x00F660 03:B650: 13        .byte $13, $14, $00, $00   ; 
; 67 
- D 1 - I - 0x00F664 03:B654: 35        .byte $35, $35, $35, $35   ; 
- D 1 - I - 0x00F668 03:B658: 3C        .byte $3C, $3C, $3C, $3C   ; 
- D 1 - I - 0x00F66C 03:B65C: 0E        .byte $0E, $00, $10, $1A   ; 
- D 1 - I - 0x00F670 03:B660: 0E        .byte $0E, $1A, $08, $19   ; 
; 68 
- D 1 - I - 0x00F674 03:B664: 35        .byte $35, $35, $36, $37   ; 
- D 1 - I - 0x00F678 03:B668: 3C        .byte $3C, $3C, $3D, $31   ; 
- D 1 - I - 0x00F67C 03:B66C: 08        .byte $08, $08, $08, $0B   ; 
- D 1 - I - 0x00F680 03:B670: 08        .byte $08, $08, $0B, $00   ; 
; 69 
- D 1 - I - 0x00F684 03:B674: 38        .byte $38, $80, $00, $68   ; 
- D 1 - I - 0x00F688 03:B678: 80        .byte $80, $00, $6A, $6B   ; 
- D 1 - I - 0x00F68C 03:B67C: 00        .byte $00, $6E, $6F, $70   ; 
- D 1 - I - 0x00F690 03:B680: 00        .byte $00, $74, $75, $76   ; 
; 6A 
- D 1 - I - 0x00F694 03:B684: 69        .byte $69, $00, $81, $39   ; 
- D 1 - I - 0x00F698 03:B688: 6C        .byte $6C, $6D, $00, $81   ; 
- D 1 - I - 0x00F69C 03:B68C: 71        .byte $71, $72, $73, $00   ; 
- D 1 - I - 0x00F6A0 03:B690: 77        .byte $77, $78, $79, $00   ; 
; 6B 
- D 1 - I - 0x00F6A4 03:B694: 3A        .byte $3A, $3B, $35, $35   ; 
- D 1 - I - 0x00F6A8 03:B698: 32        .byte $32, $3E, $3C, $3C   ; 
- D 1 - I - 0x00F6AC 03:B69C: 00        .byte $00, $10, $1A, $08   ; 
- D 1 - I - 0x00F6B0 03:B6A0: 1A        .byte $1A, $08, $19, $08   ; 
; 6C 
- D 1 - I - 0x00F6B4 03:B6A4: 35        .byte $35, $35, $35, $35   ; 
- D 1 - I - 0x00F6B8 03:B6A8: 3C        .byte $3C, $3C, $3C, $3C   ; 
- D 1 - I - 0x00F6BC 03:B6AC: 18        .byte $18, $08, $0B, $0F   ; 
- D 1 - I - 0x00F6C0 03:B6B0: 0B        .byte $0B, $10, $00, $0F   ; 
; 6D 
- D 1 - I - 0x00F6C4 03:B6B4: 00        .byte $00, $00, $05, $06   ; 
- D 1 - I - 0x00F6C8 03:B6B8: 00        .byte $00, $00, $11, $12   ; 
- D 1 - I - 0x00F6CC 03:B6BC: 00        .byte $00, $00, $11, $12   ; 
- D 1 - I - 0x00F6D0 03:B6C0: 00        .byte $00, $00, $05, $06   ; 
; 6E 
- D 1 - I - 0x00F6D4 03:B6C4: 3F        .byte $3F, $3F, $3F, $3F   ; 
- D 1 - I - 0x00F6D8 03:B6C8: 44        .byte $44, $44, $44, $44   ; 
- D 1 - I - 0x00F6DC 03:B6CC: 26        .byte $26, $26, $26, $26   ; 
- D 1 - I - 0x00F6E0 03:B6D0: 26        .byte $26, $0C, $0D, $26   ; 
; 6F 
- D 1 - I - 0x00F6E4 03:B6D4: 3F        .byte $3F, $3F, $40, $41   ; 
- D 1 - I - 0x00F6E8 03:B6D8: 44        .byte $44, $44, $45, $46   ; 
- D 1 - I - 0x00F6EC 03:B6DC: 26        .byte $26, $26, $26, $4B   ; 
- D 1 - I - 0x00F6F0 03:B6E0: 26        .byte $26, $0C, $0D, $26   ; 
; 70 
- D 1 - I - 0x00F6F4 03:B6E4: 82        .byte $82, $00, $7A, $7B   ; 
- D 1 - I - 0x00F6F8 03:B6E8: 47        .byte $47, $82, $00, $7E   ; 
- D 1 - I - 0x00F6FC 03:B6EC: 4C        .byte $4C, $41, $00, $17   ; 
- D 1 - I - 0x00F700 03:B6F0: 4F        .byte $4F, $50, $00, $18   ; 
; 71 
- D 1 - I - 0x00F704 03:B6F4: 7C        .byte $7C, $7D, $00, $83   ; 
- D 1 - I - 0x00F708 03:B6F8: 7F        .byte $7F, $00, $83, $48   ; 
- D 1 - I - 0x00F70C 03:B6FC: 00        .byte $00, $00, $42, $4D   ; 
- D 1 - I - 0x00F710 03:B700: 1A        .byte $1A, $08, $51, $52   ; 
; 72 
- D 1 - I - 0x00F714 03:B704: 42        .byte $42, $43, $3F, $3F   ; 
- D 1 - I - 0x00F718 03:B708: 49        .byte $49, $4A, $44, $44   ; 
- D 1 - I - 0x00F71C 03:B70C: 4E        .byte $4E, $26, $26, $26   ; 
- D 1 - I - 0x00F720 03:B710: 26        .byte $26, $0C, $0D, $26   ; 
; 73 
- D 1 - I - 0x00F724 03:B714: 15        .byte $15, $16, $00, $00   ; 
- D 1 - I - 0x00F728 03:B718: 13        .byte $13, $14, $00, $00   ; 
- D 1 - I - 0x00F72C 03:B71C: 13        .byte $13, $14, $00, $00   ; 
- D 1 - I - 0x00F730 03:B720: 15        .byte $15, $16, $00, $00   ; 
; 74 
- D 1 - I - 0x00F734 03:B724: 26        .byte $26, $1C, $1D, $26   ; 
- D 1 - I - 0x00F738 03:B728: 26        .byte $26, $26, $26, $26   ; 
- D 1 - I - 0x00F73C 03:B72C: 57        .byte $57, $57, $57, $57   ; 
- D 1 - I - 0x00F740 03:B730: 57        .byte $57, $57, $57, $57   ; 
; 75 
- D 1 - I - 0x00F744 03:B734: 53        .byte $53, $54, $08, $08   ; 
- D 1 - I - 0x00F748 03:B738: 53        .byte $53, $54, $07, $0B   ; 
- D 1 - I - 0x00F74C 03:B73C: 57        .byte $57, $58, $59, $59   ; 
- D 1 - I - 0x00F750 03:B740: 57        .byte $57, $57, $57, $57   ; 
; 76 
- D 1 - I - 0x00F754 03:B744: 0B        .byte $0B, $00, $55, $56   ; 
- D 1 - I - 0x00F758 03:B748: 07        .byte $07, $08, $55, $56   ; 
- D 1 - I - 0x00F75C 03:B74C: 59        .byte $59, $59, $5A, $57   ; 
- D 1 - I - 0x00F760 03:B750: 57        .byte $57, $57, $57, $57   ; 
; 77 
- D 1 - I - 0x00F764 03:B754: 00        .byte $00, $00, $11, $12   ; 
- D 1 - I - 0x00F768 03:B758: 00        .byte $00, $00, $11, $12   ; 
- D 1 - I - 0x00F76C 03:B75C: 00        .byte $00, $00, $11, $12   ; 
- D 1 - I - 0x00F770 03:B760: 00        .byte $00, $5D, $5E, $12   ; 
; 78 
- D 1 - I - 0x00F774 03:B764: 5B        .byte $5B, $5B, $5B, $5B   ; 
- D 1 - I - 0x00F778 03:B768: 5C        .byte $5C, $5C, $5C, $5C   ; 
- D 1 - I - 0x00F77C 03:B76C: 1E        .byte $1E, $07, $08, $18   ; 
- D 1 - I - 0x00F780 03:B770: 1E        .byte $1E, $00, $1A, $0A   ; 
; 79 
- D 1 - I - 0x00F784 03:B774: 5B        .byte $5B, $5B, $5B, $5B   ; 
- D 1 - I - 0x00F788 03:B778: 5C        .byte $5C, $5C, $5C, $5C   ; 
- D 1 - I - 0x00F78C 03:B77C: 08        .byte $08, $1B, $19, $10   ; 
- D 1 - I - 0x00F790 03:B780: 0A        .byte $0A, $08, $0A, $09   ; 
; 7A 
- D 1 - I - 0x00F794 03:B784: 5B        .byte $5B, $5B, $5B, $5B   ; 
- D 1 - I - 0x00F798 03:B788: 5C        .byte $5C, $5C, $5C, $5C   ; 
- D 1 - I - 0x00F79C 03:B78C: 1A        .byte $1A, $08, $08, $18   ; 
- D 1 - I - 0x00F7A0 03:B790: 18        .byte $18, $07, $08, $0B   ; 
; 7B 
- D 1 - I - 0x00F7A4 03:B794: 5B        .byte $5B, $5B, $5B, $5B   ; 
- D 1 - I - 0x00F7A8 03:B798: 5C        .byte $5C, $5C, $5C, $5C   ; 
- D 1 - I - 0x00F7AC 03:B79C: 1A        .byte $1A, $0A, $0B, $10   ; 
- D 1 - I - 0x00F7B0 03:B7A0: 84        .byte $84, $07, $0A, $08   ; 
; 7C 
- D 1 - I - 0x00F7B4 03:B7A4: 5B        .byte $5B, $5B, $5B, $5B   ; 
- D 1 - I - 0x00F7B8 03:B7A8: 5C        .byte $5C, $5C, $5C, $5C   ; 
- D 1 - I - 0x00F7BC 03:B7AC: 0A        .byte $0A, $08, $09, $1F   ; 
- D 1 - I - 0x00F7C0 03:B7B0: 0A        .byte $0A, $08, $1B, $1F   ; 
; 7D 
- D 1 - I - 0x00F7C4 03:B7B4: 13        .byte $13, $14, $00, $00   ; 
- D 1 - I - 0x00F7C8 03:B7B8: 13        .byte $13, $14, $00, $00   ; 
- D 1 - I - 0x00F7CC 03:B7BC: 13        .byte $13, $14, $00, $00   ; 
- D 1 - I - 0x00F7D0 03:B7C0: 13        .byte $13, $5F, $60, $00   ; 
; 7E 
- D 1 - I - 0x00F7D4 03:B7C4: 00        .byte $00, $61, $62, $63   ; 
- D 1 - I - 0x00F7D8 03:B7C8: 00        .byte $00, $85, $86, $87   ; 
- D 1 - I - 0x00F7DC 03:B7CC: 00        .byte $00, $85, $86, $87   ; 
- D 1 - I - 0x00F7E0 03:B7D0: 00        .byte $00, $85, $86, $87   ; 
; 7F 
- D 1 - I - 0x00F7E4 03:B7D4: 64        .byte $64, $64, $64, $64   ; 
- D 1 - I - 0x00F7E8 03:B7D8: 26        .byte $26, $26, $26, $26   ; 
- D 1 - I - 0x00F7EC 03:B7DC: 26        .byte $26, $26, $26, $26   ; 
- D 1 - I - 0x00F7F0 03:B7E0: 26        .byte $26, $26, $26, $26   ; 
; 80 
- D 1 - I - 0x00F7F4 03:B7E4: 65        .byte $65, $66, $67, $00   ; 
- D 1 - I - 0x00F7F8 03:B7E8: 88        .byte $88, $89, $8A, $00   ; 
- D 1 - I - 0x00F7FC 03:B7EC: 88        .byte $88, $89, $8A, $00   ; 
- D 1 - I - 0x00F800 03:B7F0: 88        .byte $88, $89, $8A, $00   ; 



_off007_0x00F804_02_area_3:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 1 - I - 0x00F804 03:B7F4: C0        .byte $C0, $00, $00, $00, $00, $00, $00, $00, $50, $00, $54, $50, $55, $55, $55, $55   ; 00
- D 1 - I - 0x00F814 03:B804: 55        .byte $55, $55, $55, $55, $00, $00, $00, $00, $C5, $F5, $F5, $35, $F5, $00, $BB, $AA   ; 10
- D 1 - I - 0x00F824 03:B814: EE        .byte $EE, $00, $00, $BB, $AA, $EE, $00, $00, $01, $00, $00, $60, $08, $05, $05, $05   ; 20
- D 1 - I - 0x00F834 03:B824: 12        .byte $12, $50, $50, $50, $00, $00, $FF, $FF, $00, $00, $0F, $FF, $FF, $FF, $F5, $00   ; 30
- D 1 - I - 0x00F844 03:B834: FF        .byte $FF, $20, $88, $A2, $00, $00, $F5, $FF, $F0, $88, $A2, $C8, $B2, $C8, $B2, $88   ; 40
- D 1 - I - 0x00F854 03:B844: 00        .byte $00, $B4, $55, $55, $55, $55, $55, $FB, $FF, $55, $55, $FF, $FF, $BF, $EF, $FF   ; 50
- D 1 - I - 0x00F864 03:B854: FF        .byte $FF, $FF, $FF, $FB, $FE, $FF, $FF, $AF, $AF, $3C, $C3, $AF, $AF, $FF, $FF, $FF   ; 60
- D 1 - I - 0x00F874 03:B864: BC        .byte $BC, $E3, $FF, $FF, $FF, $FB, $FE, $FF, $AF, $AF, $AF, $AF, $AF, $FF, $FF, $FF   ; 70
- D 1 - I - 0x00F884 03:B874: FF        .byte $FF                                                                              ; 80


; bzk garbage
- - - - - - 0x00F885 03:B875: 00        .byte $00   ; 
- - - - - - 0x00F886 03:B876: 00        .byte $00   ; 
- - - - - - 0x00F887 03:B877: 00        .byte $00   ; 
- - - - - - 0x00F888 03:B878: 03        .byte $03   ; 
- - - - - - 0x00F889 03:B879: 00        .byte $00   ; 
- - - - - - 0x00F88A 03:B87A: 00        .byte $00   ; 
- - - - - - 0x00F88B 03:B87B: 00        .byte $00   ; 
- - - - - - 0x00F88C 03:B87C: 00        .byte $00   ; 
- - - - - - 0x00F88D 03:B87D: 00        .byte $00   ; 
- - - - - - 0x00F88E 03:B87E: 00        .byte $00   ; 
- - - - - - 0x00F88F 03:B87F: 00        .byte $00   ; 
- - - - - - 0x00F890 03:B880: 00        .byte $00   ; 
- - - - - - 0x00F891 03:B881: 00        .byte $00   ; 
- - - - - - 0x00F892 03:B882: 00        .byte $00   ; 
- - - - - - 0x00F893 03:B883: 00        .byte $00   ; 



loc_0x00F894_set_palette_for_area:
C D 1 - - - 0x00F894 03:B884: A5 50     LDA ram_area_index
loc_0x00F896_set_palette:
C D 1 - - - 0x00F896 03:B886: 85 08     STA ram_0008
; fill 0F color by default
C - - - - - 0x00F898 03:B888: A9 0F     LDA #$0F
C - - - - - 0x00F89A 03:B88A: A0 1F     LDY #$1F
bra_B88C_loop:
C - - - - - 0x00F89C 03:B88C: 99 E0 03  STA ram_pal_buffer,Y
C - - - - - 0x00F89F 03:B88F: 88        DEY
C - - - - - 0x00F8A0 03:B890: 10 FA     BPL bra_B88C_loop
C - - - - - 0x00F8A2 03:B892: A5 08     LDA ram_0008
C - - - - - 0x00F8A4 03:B894: 0A        ASL
C - - - - - 0x00F8A5 03:B895: A8        TAY
C - - - - - 0x00F8A6 03:B896: B9 B3 B8  LDA tbl_B8B3,Y
C - - - - - 0x00F8A9 03:B899: 85 00     STA ram_0000
C - - - - - 0x00F8AB 03:B89B: B9 B4 B8  LDA tbl_B8B3 + $01,Y
C - - - - - 0x00F8AE 03:B89E: 85 01     STA ram_0001
; skip 1st color in each palette set
C - - - - - 0x00F8B0 03:B8A0: A0 17     LDY #con_max_index_total
C - - - - - 0x00F8B2 03:B8A2: A2 1F     LDX #$1F
bra_B8A4_loop:
C - - - - - 0x00F8B4 03:B8A4: 8A        TXA
C - - - - - 0x00F8B5 03:B8A5: 29 03     AND #$03
C - - - - - 0x00F8B7 03:B8A7: F0 06     BEQ bra_B8AF_skip
C - - - - - 0x00F8B9 03:B8A9: B1 00     LDA (ram_0000),Y
C - - - - - 0x00F8BB 03:B8AB: 9D E0 03  STA ram_pal_buffer,X
C - - - - - 0x00F8BE 03:B8AE: 88        DEY
bra_B8AF_skip:
C - - - - - 0x00F8BF 03:B8AF: CA        DEX
C - - - - - 0x00F8C0 03:B8B0: 10 F2     BPL bra_B8A4_loop
C - - - - - 0x00F8C2 03:B8B2: 60        RTS



tbl_B8B3:
- D 1 - - - 0x00F8C3 03:B8B3: C9 B8     .word _off021_B8C9_00_area_1
- D 1 - - - 0x00F8C5 03:B8B5: E1 B8     .word _off021_B8E1_01_area_2
- D 1 - - - 0x00F8C7 03:B8B7: F9 B8     .word _off021_B8F9_02_area_3
- D 1 - - - 0x00F8C9 03:B8B9: 11 B9     .word _off021_B911_03_area_4
- D 1 - - - 0x00F8CB 03:B8BB: 29 B9     .word _off021_B929_04_area_5
- D 1 - - - 0x00F8CD 03:B8BD: 41 B9     .word _off021_B941_05_area_6
- D 1 - - - 0x00F8CF 03:B8BF: 59 B9     .word _off021_B959_06_area_7
- D 1 - - - 0x00F8D1 03:B8C1: 71 B9     .word _off021_B971_07_area_8
- D 1 - - - 0x00F8D3 03:B8C3: 89 B9     .word _off021_B989_08
- D 1 - - - 0x00F8D5 03:B8C5: A1 B9     .word _off021_B9A1_09
- D 1 - - - 0x00F8D7 03:B8C7: B9 B9     .word _off021_B9B9_0A



_off021_B8C9_00_area_1:
; background
- D 1 - I - 0x00F8D9 03:B8C9: 20        .byte $20, $10, $00   ; 
- D 1 - I - 0x00F8DC 03:B8CC: 20        .byte $20, $10, $00   ; 
- D 1 - I - 0x00F8DF 03:B8CF: 27        .byte $27, $16, $04   ; 
- D 1 - I - 0x00F8E2 03:B8D2: 16        .byte $16, $06, $00   ; 
; sprites
- D 1 - I - 0x00F8E5 03:B8D5: 37        .byte $37, $1C, $0F   ; 
- D 1 - I - 0x00F8E8 03:B8D8: 37        .byte $37, $16, $0F   ; 
- D 1 - I - 0x00F8EB 03:B8DB: 20        .byte $20, $26, $16   ; 
- D 1 - I - 0x00F8EE 03:B8DE: 34        .byte $34, $1B, $0F   ; 



_off021_B8E1_01_area_2:
; background
- D 1 - I - 0x00F8F1 03:B8E1: 20        .byte $20, $10, $00   ; 
- D 1 - I - 0x00F8F4 03:B8E4: 00        .byte $00, $10, $0C   ; 
- D 1 - I - 0x00F8F7 03:B8E7: 20        .byte $20, $1C, $0C   ; 
- D 1 - I - 0x00F8FA 03:B8EA: 06        .byte $06, $1C, $0C   ; 
; sprites
- D 1 - I - 0x00F8FD 03:B8ED: 37        .byte $37, $11, $0C   ; 
- D 1 - I - 0x00F900 03:B8F0: 37        .byte $37, $16, $07   ; 
- D 1 - I - 0x00F903 03:B8F3: 20        .byte $20, $26, $16   ; 
- D 1 - I - 0x00F906 03:B8F6: 34        .byte $34, $1B, $0F   ; 



_off021_B8F9_02_area_3:
; background
- D 1 - I - 0x00F909 03:B8F9: 2A        .byte $2A, $1A, $0A   ; 
- D 1 - I - 0x00F90C 03:B8FC: 28        .byte $28, $18, $08   ; 
- D 1 - I - 0x00F90F 03:B8FF: 10        .byte $10, $1A, $0A   ; 
- D 1 - I - 0x00F912 03:B902: 20        .byte $20, $10, $00   ; 
; sprites
- D 1 - I - 0x00F915 03:B905: 37        .byte $37, $1C, $0F   ; 
- D 1 - I - 0x00F918 03:B908: 37        .byte $37, $16, $0F   ; 
- D 1 - I - 0x00F91B 03:B90B: 20        .byte $20, $26, $16   ; 
- D 1 - I - 0x00F91E 03:B90E: 3B        .byte $3B, $14, $0F   ; 



_off021_B911_03_area_4:
; background
- D 1 - I - 0x00F921 03:B911: 20        .byte $20, $1B, $0A   ; 
- D 1 - I - 0x00F924 03:B914: 01        .byte $01, $00, $0A   ; 
- D 1 - I - 0x00F927 03:B917: 01        .byte $01, $1B, $0A   ; 
- D 1 - I - 0x00F92A 03:B91A: 01        .byte $01, $00, $06   ; 
; sprites
- D 1 - I - 0x00F92D 03:B91D: 37        .byte $37, $1C, $0F   ; 
- D 1 - I - 0x00F930 03:B920: 37        .byte $37, $16, $0F   ; 
- D 1 - I - 0x00F933 03:B923: 20        .byte $20, $26, $16   ; 
- D 1 - I - 0x00F936 03:B926: 20        .byte $20, $1B, $0A   ; 



_off021_B929_04_area_5:
; background
- D 1 - I - 0x00F939 03:B929: 20        .byte $20, $10, $00   ; 
- D 1 - I - 0x00F93C 03:B92C: 2A        .byte $2A, $1A, $00   ; 
- D 1 - I - 0x00F93F 03:B92F: 2C        .byte $2C, $1C, $0C   ; 
- D 1 - I - 0x00F942 03:B932: 20        .byte $20, $10, $04   ; 
; sprites
- D 1 - I - 0x00F945 03:B935: 37        .byte $37, $1C, $0F   ; 
- D 1 - I - 0x00F948 03:B938: 37        .byte $37, $16, $0F   ; 
- D 1 - I - 0x00F94B 03:B93B: 20        .byte $20, $26, $16   ; 
- D 1 - I - 0x00F94E 03:B93E: 3B        .byte $3B, $14, $0F   ; 



_off021_B941_05_area_6:
; background
- D 1 - I - 0x00F951 03:B941: 20        .byte $20, $10, $00   ; 
- D 1 - I - 0x00F954 03:B944: 29        .byte $29, $19, $09   ; 
- D 1 - I - 0x00F957 03:B947: 20        .byte $20, $10, $06   ; 
- D 1 - I - 0x00F95A 03:B94A: 10        .byte $10, $00, $06   ; 
; sprites
- D 1 - I - 0x00F95D 03:B94D: 37        .byte $37, $11, $0C   ; 
- D 1 - I - 0x00F960 03:B950: 37        .byte $37, $16, $07   ; 
- D 1 - I - 0x00F963 03:B953: 20        .byte $20, $26, $16   ; 
- D 1 - I - 0x00F966 03:B956: 10        .byte $10, $16, $0F   ; 



_off021_B959_06_area_7:
; background
- D 1 - I - 0x00F969 03:B959: 2C        .byte $2C, $12, $02   ; 
- D 1 - I - 0x00F96C 03:B95C: 22        .byte $22, $12, $02   ; 
- D 1 - I - 0x00F96F 03:B95F: 27        .byte $27, $16, $06   ; 
- D 1 - I - 0x00F972 03:B962: 1C        .byte $1C, $1A, $0A   ; 
; sprites
- D 1 - I - 0x00F975 03:B965: 37        .byte $37, $1C, $0F   ; 
- D 1 - I - 0x00F978 03:B968: 37        .byte $37, $16, $0F   ; 
- D 1 - I - 0x00F97B 03:B96B: 20        .byte $20, $26, $16   ; 
- D 1 - I - 0x00F97E 03:B96E: 24        .byte $24, $14, $04   ; 



_off021_B971_07_area_8:
; background
- D 1 - I - 0x00F981 03:B971: 24        .byte $24, $14, $04   ; 
- D 1 - I - 0x00F984 03:B974: 03        .byte $03, $02, $0C   ; 
- D 1 - I - 0x00F987 03:B977: 20        .byte $20, $10, $00   ; 
- D 1 - I - 0x00F98A 03:B97A: 09        .byte $09, $18, $08   ; 
; sprites
- D 1 - I - 0x00F98D 03:B97D: 37        .byte $37, $1C, $0F   ; 
- D 1 - I - 0x00F990 03:B980: 37        .byte $37, $16, $0F   ; 
- D 1 - I - 0x00F993 03:B983: 20        .byte $20, $26, $16   ; 
- D 1 - I - 0x00F996 03:B986: 20        .byte $20, $00, $0C   ; 



_off021_B989_08:
; background
- D 1 - I - 0x00F999 03:B989: 10        .byte $10, $27, $16   ; 
- D 1 - I - 0x00F99C 03:B98C: 20        .byte $20, $22, $02   ; 
- D 1 - I - 0x00F99F 03:B98F: 20        .byte $20, $10, $00   ; 
- D 1 - I - 0x00F9A2 03:B992: 27        .byte $27, $16, $06   ; 
; sprites
- D 1 - I - 0x00F9A5 03:B995: 16        .byte $16, $06, $0F   ; 
- D 1 - I - 0x00F9A8 03:B998: 20        .byte $20, $16, $17   ; 
- D 1 - I - 0x00F9AB 03:B99B: 20        .byte $20, $26, $16   ; 
- D 1 - I - 0x00F9AE 03:B99E: 20        .byte $20, $00, $0F   ; 



_off021_B9A1_09:
; background
- D 1 - I - 0x00F9B1 03:B9A1: 0F        .byte $0F, $0F, $0F   ; 
- D 1 - I - 0x00F9B4 03:B9A4: 20        .byte $20, $22, $02   ; 
- D 1 - I - 0x00F9B7 03:B9A7: 0F        .byte $0F, $0F, $0F   ; 
- D 1 - I - 0x00F9BA 03:B9AA: 0F        .byte $0F, $0F, $0F   ; 
; sprites
- D 1 - I - 0x00F9BD 03:B9AD: 0F        .byte $0F, $0F, $0F   ; 
- D 1 - I - 0x00F9C0 03:B9B0: 20        .byte $20, $16, $17   ; 
- D 1 - I - 0x00F9C3 03:B9B3: 20        .byte $20, $26, $16   ; 
- D 1 - I - 0x00F9C6 03:B9B6: 20        .byte $20, $00, $0F   ; 



_off021_B9B9_0A:
; background
- D 1 - I - 0x00F9C9 03:B9B9: 20        .byte $20, $27, $16   ; 
- D 1 - I - 0x00F9CC 03:B9BC: 27        .byte $27, $16, $04   ; 
- D 1 - I - 0x00F9CF 03:B9BF: 27        .byte $27, $16, $04   ; 
- D 1 - I - 0x00F9D2 03:B9C2: 26        .byte $26, $16, $05   ; 
; sprites
- D 1 - I - 0x00F9D5 03:B9C5: 20        .byte $20, $27, $0F   ; 
- D 1 - I - 0x00F9D8 03:B9C8: 20        .byte $20, $16, $17   ; 
- D 1 - I - 0x00F9DB 03:B9CB: 20        .byte $20, $26, $16   ; 
- D 1 - I - 0x00F9DE 03:B9CE: 37        .byte $37, $00, $0F   ; 


; bzk garbage
- - - - - - 0x00F9E1 03:B9D1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00F9F0 03:B9E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FA00 03:B9F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FA10 03:BA00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FA20 03:BA10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FA30 03:BA20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FA40 03:BA30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FA50 03:BA40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FA60 03:BA50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FA70 03:BA60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FA80 03:BA70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FA90 03:BA80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FAA0 03:BA90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FAB0 03:BAA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FAC0 03:BAB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FAD0 03:BAC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FAE0 03:BAD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FAF0 03:BAE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FB00 03:BAF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FB10 03:BB00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FB20 03:BB10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FB30 03:BB20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FB40 03:BB30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FB50 03:BB40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FB60 03:BB50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FB70 03:BB60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FB80 03:BB70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FB90 03:BB80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FBA0 03:BB90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FBB0 03:BBA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FBC0 03:BBB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FBD0 03:BBC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FBE0 03:BBD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FBF0 03:BBE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FC00 03:BBF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FC10 03:BC00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FC20 03:BC10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FC30 03:BC20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FC40 03:BC30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FC50 03:BC40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FC60 03:BC50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FC70 03:BC60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FC80 03:BC70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FC90 03:BC80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FCA0 03:BC90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FCB0 03:BCA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FCC0 03:BCB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FCD0 03:BCC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FCE0 03:BCD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FCF0 03:BCE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FD00 03:BCF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FD10 03:BD00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FD20 03:BD10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FD30 03:BD20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FD40 03:BD30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FD50 03:BD40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FD60 03:BD50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FD70 03:BD60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FD80 03:BD70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FD90 03:BD80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FDA0 03:BD90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FDB0 03:BDA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FDC0 03:BDB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FDD0 03:BDC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FDE0 03:BDD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FDF0 03:BDE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FE00 03:BDF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FE10 03:BE00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FE20 03:BE10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FE30 03:BE20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FE40 03:BE30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FE50 03:BE40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FE60 03:BE50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FE70 03:BE60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FE80 03:BE70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FE90 03:BE80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FEA0 03:BE90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FEB0 03:BEA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FEC0 03:BEB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FED0 03:BEC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FEE0 03:BED0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FEF0 03:BEE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FF00 03:BEF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FF10 03:BF00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FF20 03:BF10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FF30 03:BF20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FF40 03:BF30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FF50 03:BF40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FF60 03:BF50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FF70 03:BF60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FF80 03:BF70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FF90 03:BF80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FFA0 03:BF90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FFB0 03:BFA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FFC0 03:BFB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FFD0 03:BFC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FFE0 03:BFD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FFF0 03:BFE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x010000 03:BFF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



.out .sprintf("Free bytes in bank 36: 0x%X [%d]", ($BFFF - *), ($BFFF - *))



.segment "BANK_36b"
- D 1 - - - 0x01000F 03:BFFF: 37        .byte con_prg_bank + $37   ; 



