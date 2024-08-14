.segment "BANK_05"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x014010-0x01800F



.export sub_0x014010_load_sound_into_engine
.export sub_0x014013_update_sound_engine



sub_0x014010_load_sound_into_engine:
; bzk optimize
C D 0 - - - 0x014010 05:8000: 4C 26 80  JMP loc_8026_load_sound_into_engine



sub_0x014013_update_sound_engine:
; bzk optimize
C - - - - - 0x014013 05:8003: 4C 96 81  JMP loc_8196_update_sound_engine


; bzk garbage
- - - - - - 0x014016 05:8006: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x014020 05:8010: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 


; bzk garbage
- - - - - - 0x014030 05:8020: 4C 26 80  JMP loc_8026_load_sound_into_engine
- - - - - - 0x014033 05:8023: 4C 96 81  JMP loc_8196_update_sound_engine



loc_8026_load_sound_into_engine:
sub_8026_load_sound_into_engine:
C D 0 - - - 0x014036 05:8026: 8A        TXA
C - - - - - 0x014037 05:8027: 48        PHA
C - - - - - 0x014038 05:8028: 98        TYA
C - - - - - 0x014039 05:8029: 48        PHA
C - - - - - 0x01403A 05:802A: AD FE 07  LDA ram_game_flags_2
C - - - - - 0x01403D 05:802D: 29 7F     AND #con_gf2_80 ^ $FF
C - - - - - 0x01403F 05:802F: 8D FE 07  STA ram_game_flags_2
C - - - - - 0x014042 05:8032: AE FF 07  LDX ram_sound_id
C - - - - - 0x014045 05:8035: F0 2C     BEQ bra_8063_disable_sound_engine
C - - - - - 0x014047 05:8037: 10 6F     BPL bra_80A8_prepare_sound
; check for control bytes
C - - - - - 0x014049 05:8039: E8        INX
C - - - - - 0x01404A 05:803A: F0 43     BEQ bra_807F_FF_resume_music
C - - - - - 0x01404C 05:803C: E8        INX
C - - - - - 0x01404D 05:803D: F0 32     BEQ bra_8071_FE
C - - - - - 0x01404F 05:803F: E8        INX
C - - - - - 0x014050 05:8040: F0 27     BEQ bra_8069_FD_pause_music
C - - - - - 0x014052 05:8042: E8        INX
C - - - - - 0x014053 05:8043: F0 10     BEQ bra_8055_FC
C - - - - - 0x014055 05:8045: E8        INX
C - - - - - 0x014056 05:8046: F0 02     BEQ bra_804A_FB
; if something unexpected, like 54-FA
- - - - - - 0x014058 05:8048: D0 19     BNE bra_8063_disable_sound_engine
bra_804A_FB:
C - - - - - 0x01405A 05:804A: AD FE 07  LDA ram_game_flags_2
C - - - - - 0x01405D 05:804D: 29 DF     AND #con_gf2_heli_bg_sound ^ $FF
C - - - - - 0x01405F 05:804F: 8D FE 07  STA ram_game_flags_2
C - - - - - 0x014062 05:8052: 4C 6C 81  JMP loc_816C
bra_8055_FC:
C - - - - - 0x014065 05:8055: AD 21 07  LDA ram_0721_se
C - - - - - 0x014068 05:8058: 48        PHA
C - - - - - 0x014069 05:8059: 20 79 81  JSR sub_8179_clear_sound_engine
C - - - - - 0x01406C 05:805C: 68        PLA
C - - - - - 0x01406D 05:805D: 8D 21 07  STA ram_0721_se
C - - - - - 0x014070 05:8060: 4C 67 81  JMP loc_8167
bra_8063_disable_sound_engine:
C - - - - - 0x014073 05:8063: 20 79 81  JSR sub_8179_clear_sound_engine
C - - - - - 0x014076 05:8066: 4C 67 81  JMP loc_8167
bra_8069_FD_pause_music:
C - - - - - 0x014079 05:8069: AD FE 07  LDA ram_game_flags_2
C - - - - - 0x01407C 05:806C: 09 40     ORA #con_gf2_40
C - - - - - 0x01407E 05:806E: 8D FE 07  STA ram_game_flags_2
bra_8071_FE:
C - - - - - 0x014081 05:8071: AD 20 07  LDA ram_copy_sound_id_1
C - - - - - 0x014084 05:8074: 8D 21 07  STA ram_0721_se
C - - - - - 0x014087 05:8077: A9 00     LDA #$00
C - - - - - 0x014089 05:8079: 8D 15 40  STA $4015
C - - - - - 0x01408C 05:807C: 4C 6C 81  JMP loc_816C
bra_807F_FF_resume_music:
C - - - - - 0x01408F 05:807F: AD FE 07  LDA ram_game_flags_2
C - - - - - 0x014092 05:8082: 29 BF     AND #con_gf2_40 ^ $FF
C - - - - - 0x014094 05:8084: 8D FE 07  STA ram_game_flags_2
C - - - - - 0x014097 05:8087: AD 21 07  LDA ram_0721_se
C - - - - - 0x01409A 05:808A: F0 09     BEQ bra_8095
C - - - - - 0x01409C 05:808C: CD 20 07  CMP ram_copy_sound_id_1
C - - - - - 0x01409F 05:808F: F0 04     BEQ bra_8095
- - - - - - 0x0140A1 05:8091: AA        TAX
- - - - - - 0x0140A2 05:8092: 4C A8 80  JMP loc_80A8
bra_8095:
C - - - - - 0x0140A5 05:8095: A2 07     LDX #$07
bra_8097_loop:
C - - - - - 0x0140A7 05:8097: 8E 38 07  STX ram_0738_se_index
C - - - - - 0x0140AA 05:809A: 20 03 85  JSR sub_8503
C - - - - - 0x0140AD 05:809D: AE 38 07  LDX ram_0738_se_index
C - - - - - 0x0140B0 05:80A0: CA        DEX
C - - - - - 0x0140B1 05:80A1: E0 03     CPX #$03
C - - - - - 0x0140B3 05:80A3: D0 F2     BNE bra_8097_loop
C - - - - - 0x0140B5 05:80A5: 4C 67 81  JMP loc_8167
bra_80A8_prepare_sound:
loc_80A8:
C - - - - - 0x0140B8 05:80A8: CA        DEX
C - - - - - 0x0140B9 05:80A9: 8A        TXA
C - - - - - 0x0140BA 05:80AA: 0A        ASL
C - - - - - 0x0140BB 05:80AB: AA        TAX
C - - - - - 0x0140BC 05:80AC: BD 00 8A  LDA tbl_8A00_music_data,X
C - - - - - 0x0140BF 05:80AF: 85 00     STA ram_0000
C - - - - - 0x0140C1 05:80B1: BD 01 8A  LDA tbl_8A00_music_data + $01,X
C - - - - - 0x0140C4 05:80B4: 85 01     STA ram_0001
C - - - - - 0x0140C6 05:80B6: A0 00     LDY #$00
C - - - - - 0x0140C8 05:80B8: B1 00     LDA (ram_0000),Y
C - - - - - 0x0140CA 05:80BA: 30 2F     BMI bra_80EB
; 00-7F
C - - - - - 0x0140CC 05:80BC: 85 02     STA ram_0002
C - - - - - 0x0140CE 05:80BE: C8        INY
C - - - - - 0x0140CF 05:80BF: B1 00     LDA (ram_0000),Y
C - - - - - 0x0140D1 05:80C1: 10 19     BPL bra_80DC
; 80-FF
C - - - - - 0x0140D3 05:80C3: C8        INY
C - - - - - 0x0140D4 05:80C4: B1 00     LDA (ram_0000),Y
C - - - - - 0x0140D6 05:80C6: 8D 22 07  STA ram_0722_se_timer
C - - - - - 0x0140D9 05:80C9: AD FF 07  LDA ram_sound_id
C - - - - - 0x0140DC 05:80CC: 8D 23 07  STA ram_copy_sound_id_2
C - - - - - 0x0140DF 05:80CF: AD FE 07  LDA ram_game_flags_2
C - - - - - 0x0140E2 05:80D2: 09 20     ORA #con_gf2_heli_bg_sound
C - - - - - 0x0140E4 05:80D4: 8D FE 07  STA ram_game_flags_2
bra_80D7_loop:
C - - - - - 0x0140E7 05:80D7: C8        INY
C - - - - - 0x0140E8 05:80D8: B1 00     LDA (ram_0000),Y
C - - - - - 0x0140EA 05:80DA: 30 32     BMI bra_810E
; 00-7F
bra_80DC:
C - - - - - 0x0140EC 05:80DC: AA        TAX
C - - - - - 0x0140ED 05:80DD: A5 02     LDA ram_0002
C - - - - - 0x0140EF 05:80DF: DD 20 07  CMP ram_0724_se - $04,X ; 0724 0725 0726 0727
C - - - - - 0x0140F2 05:80E2: 90 04     BCC bra_80E8
C - - - - - 0x0140F4 05:80E4: C8        INY
C - - - - - 0x0140F5 05:80E5: C8        INY
C - - - - - 0x0140F6 05:80E6: D0 EF     BNE bra_80D7_loop
bra_80E8:
C - - - - - 0x0140F8 05:80E8: 4C 6C 81  JMP loc_816C
bra_80EB:
C - - - - - 0x0140FB 05:80EB: AD FF 07  LDA ram_sound_id
C - - - - - 0x0140FE 05:80EE: CD 20 07  CMP ram_copy_sound_id_1
C - - - - - 0x014101 05:80F1: D0 03     BNE bra_80F6
C - - - - - 0x014103 05:80F3: 4C 67 81  JMP loc_8167
bra_80F6:
C - - - - - 0x014106 05:80F6: 8D 20 07  STA ram_copy_sound_id_1
C - - - - - 0x014109 05:80F9: A9 FF     LDA #$FF
C - - - - - 0x01410B 05:80FB: 8D 3B 07  STA ram_073B_se
C - - - - - 0x01410E 05:80FE: 8D 39 07  STA ram_0739_se
C - - - - - 0x014111 05:8101: 8D 3A 07  STA ram_073A_useless
C - - - - - 0x014114 05:8104: AD FE 07  LDA ram_game_flags_2
C - - - - - 0x014117 05:8107: 09 02     ORA #con_gf2_02
C - - - - - 0x014119 05:8109: 29 BF     AND #con_gf2_40 ^ $FF
C - - - - - 0x01411B 05:810B: 8D FE 07  STA ram_game_flags_2
bra_810E:
C - - - - - 0x01411E 05:810E: A0 01     LDY #$01
C - - - - - 0x014120 05:8110: B1 00     LDA (ram_0000),Y
C - - - - - 0x014122 05:8112: 10 02     BPL bra_8116
; 80-FF
C - - - - - 0x014124 05:8114: C8        INY
C - - - - - 0x014125 05:8115: C8        INY
bra_8116:
bra_8116_loop:
C - - - - - 0x014126 05:8116: B1 00     LDA (ram_0000),Y
C - - - - - 0x014128 05:8118: 30 4D     BMI bra_8167
; 00-7F
C - - - - - 0x01412A 05:811A: AA        TAX
C - - - - - 0x01412B 05:811B: E0 04     CPX #$04
C - - - - - 0x01412D 05:811D: 90 07     BCC bra_8126
C - - - - - 0x01412F 05:811F: A5 02     LDA ram_0002
C - - - - - 0x014131 05:8121: 9D 20 07  STA ram_0724_se - $04,X ; 0724 0725 0726 0727
C - - - - - 0x014134 05:8124: D0 18     BNE bra_813E
bra_8126:
C - - - - - 0x014136 05:8126: E0 03     CPX #$03
C - - - - - 0x014138 05:8128: B0 0A     BCS bra_8134
C - - - - - 0x01413A 05:812A: A9 1E     LDA #$1E
C - - - - - 0x01413C 05:812C: 9D C2 07  STA ram_07C2_se,X
C - - - - - 0x01413F 05:812F: A9 96     LDA #$96
C - - - - - 0x014141 05:8131: 9D CB 07  STA ram_07CB_se,X
bra_8134:
C - - - - - 0x014144 05:8134: A9 F0     LDA #$F0
C - - - - - 0x014146 05:8136: 9D A4 07  STA ram_07A4_se,X
C - - - - - 0x014149 05:8139: A9 00     LDA #$00
C - - - - - 0x01414B 05:813B: 9D AC 07  STA ram_07AC_se,X
bra_813E:
C - - - - - 0x01414E 05:813E: C8        INY
C - - - - - 0x01414F 05:813F: B1 00     LDA (ram_0000),Y
C - - - - - 0x014151 05:8141: 9D 3C 07  STA ram_073C_se,X
C - - - - - 0x014154 05:8144: C8        INY
C - - - - - 0x014155 05:8145: B1 00     LDA (ram_0000),Y
C - - - - - 0x014157 05:8147: 9D 44 07  STA ram_0744_se,X
C - - - - - 0x01415A 05:814A: A9 00     LDA #$00
C - - - - - 0x01415C 05:814C: 9D 6C 07  STA ram_076C_se,X
C - - - - - 0x01415F 05:814F: 9D 74 07  STA ram_0774_se,X
C - - - - - 0x014162 05:8152: 9D 5C 07  STA ram_075C_se,X
C - - - - - 0x014165 05:8155: A9 01     LDA #$01
C - - - - - 0x014167 05:8157: 9D 4C 07  STA ram_074C_se_timer,X
C - - - - - 0x01416A 05:815A: A9 80     LDA #con_0728_80
C - - - - - 0x01416C 05:815C: 9D 28 07  STA ram_0728_se_flags,X
C - - - - - 0x01416F 05:815F: A9 01     LDA #con_0730_01
C - - - - - 0x014171 05:8161: 9D 30 07  STA ram_0730_se_flags,X
C - - - - - 0x014174 05:8164: C8        INY
C - - - - - 0x014175 05:8165: D0 AF     BNE bra_8116_loop
bra_8167:
loc_8167:
C D 0 - - - 0x014177 05:8167: A9 0F     LDA #$0F
C - - - - - 0x014179 05:8169: 8D 15 40  STA $4015
loc_816C:
C D 0 - - - 0x01417C 05:816C: AD FE 07  LDA ram_game_flags_2
C - - - - - 0x01417F 05:816F: 09 80     ORA #con_gf2_80
C - - - - - 0x014181 05:8171: 8D FE 07  STA ram_game_flags_2
C - - - - - 0x014184 05:8174: 68        PLA
C - - - - - 0x014185 05:8175: A8        TAY
C - - - - - 0x014186 05:8176: 68        PLA
C - - - - - 0x014187 05:8177: AA        TAX
C - - - - - 0x014188 05:8178: 60        RTS



sub_8179_clear_sound_engine:
C - - - - - 0x014189 05:8179: A9 00     LDA #$00
C - - - - - 0x01418B 05:817B: 8D 15 40  STA $4015
C - - - - - 0x01418E 05:817E: A2 E0     LDX #$E0
bra_8180_loop:  ; clear 0720-07FF
C - - - - - 0x014190 05:8180: 9D 1F 07  STA ram_sound_engine_memory - $01,X
C - - - - - 0x014193 05:8183: CA        DEX
C - - - - - 0x014194 05:8184: D0 FA     BNE bra_8180_loop
C - - - - - 0x014196 05:8186: A9 8D     LDA #$8D    ; STA
C - - - - - 0x014198 05:8188: 8D F0 07  STA ram_STA_40xx_RTS
C - - - - - 0x01419B 05:818B: A9 40     LDA #$40    ; 40xx
C - - - - - 0x01419D 05:818D: 8D F2 07  STA ram_STA_40xx_RTS + $02
C - - - - - 0x0141A0 05:8190: A9 60     LDA #$60    ; RTS
C - - - - - 0x0141A2 05:8192: 8D F3 07  STA ram_STA_40xx_RTS + $03
C - - - - - 0x0141A5 05:8195: 60        RTS



loc_8196_update_sound_engine:
C D 0 - - - 0x0141A6 05:8196: 2C FE 07  BIT ram_game_flags_2
C - - - - - 0x0141A9 05:8199: 10 69     BPL bra_8204_RTS    ; if not con_gf2_80
C - - - - - 0x0141AB 05:819B: AD FE 07  LDA ram_game_flags_2
C - - - - - 0x0141AE 05:819E: 29 20     AND #con_gf2_heli_bg_sound
C - - - - - 0x0141B0 05:81A0: F0 15     BEQ bra_81B7
C - - - - - 0x0141B2 05:81A2: AD FE 07  LDA ram_game_flags_2
C - - - - - 0x0141B5 05:81A5: 29 40     AND #con_gf2_40
C - - - - - 0x0141B7 05:81A7: D0 0E     BNE bra_81B7
C - - - - - 0x0141B9 05:81A9: CE 22 07  DEC ram_0722_se_timer
C - - - - - 0x0141BC 05:81AC: D0 09     BNE bra_81B7
C - - - - - 0x0141BE 05:81AE: AD 23 07  LDA ram_copy_sound_id_2
C - - - - - 0x0141C1 05:81B1: 8D FF 07  STA ram_sound_id
C - - - - - 0x0141C4 05:81B4: 20 26 80  JSR sub_8026_load_sound_into_engine
bra_81B7:
C - - - - - 0x0141C7 05:81B7: A2 07     LDX #$07
bra_81B9_loop:
C - - - - - 0x0141C9 05:81B9: 8E 38 07  STX ram_0738_se_index
C - - - - - 0x0141CC 05:81BC: BD 30 07  LDA ram_0730_se_flags,X
C - - - - - 0x0141CF 05:81BF: F0 03     BEQ bra_81C4    ; if con_0730_00
C - - - - - 0x0141D1 05:81C1: 20 05 82  JSR sub_8205
bra_81C4:
C - - - - - 0x0141D4 05:81C4: BD 28 07  LDA ram_0728_se_flags,X
C - - - - - 0x0141D7 05:81C7: F0 03     BEQ bra_81CC    ; if con_0728_00
C - - - - - 0x0141D9 05:81C9: 20 A6 85  JSR sub_85A6
bra_81CC:
C - - - - - 0x0141DC 05:81CC: CA        DEX
C - - - - - 0x0141DD 05:81CD: E0 03     CPX #$03
C - - - - - 0x0141DF 05:81CF: D0 E8     BNE bra_81B9_loop
C - - - - - 0x0141E1 05:81D1: 2C FE 07  BIT ram_game_flags_2
C - - - - - 0x0141E4 05:81D4: 70 2E     BVS bra_8204_RTS    ; if con_gf2_40
bra_81D6_loop:
C - - - - - 0x0141E6 05:81D6: 8E 38 07  STX ram_0738_se_index
C - - - - - 0x0141E9 05:81D9: 20 52 88  JSR sub_8852
C - - - - - 0x0141EC 05:81DC: 20 A6 85  JSR sub_85A6
C - - - - - 0x0141EF 05:81DF: 20 E8 85  JSR sub_85E8
C - - - - - 0x0141F2 05:81E2: AE 38 07  LDX ram_0738_se_index
C - - - - - 0x0141F5 05:81E5: CA        DEX
C - - - - - 0x0141F6 05:81E6: 10 EE     BPL bra_81D6_loop
C - - - - - 0x0141F8 05:81E8: AD 39 07  LDA ram_0739_se
C - - - - - 0x0141FB 05:81EB: 18        CLC
C - - - - - 0x0141FC 05:81EC: 6D 3B 07  ADC ram_073B_se
C - - - - - 0x0141FF 05:81EF: 8D 3B 07  STA ram_073B_se
C - - - - - 0x014202 05:81F2: 90 10     BCC bra_8204_RTS
C - - - - - 0x014204 05:81F4: A2 03     LDX #$03
bra_81F6_loop:
C - - - - - 0x014206 05:81F6: BD 30 07  LDA ram_0730_se_flags,X
C - - - - - 0x014209 05:81F9: F0 06     BEQ bra_8201    ; if con_0730_00
C - - - - - 0x01420B 05:81FB: 8E 38 07  STX ram_0738_se_index
C - - - - - 0x01420E 05:81FE: 20 0B 82  JSR sub_820B
bra_8201:
C - - - - - 0x014211 05:8201: CA        DEX
C - - - - - 0x014212 05:8202: 10 F2     BPL bra_81F6_loop
bra_8204_RTS:
C - - - - - 0x014214 05:8204: 60        RTS



sub_8205:
C - - - - - 0x014215 05:8205: DE 4C 07  DEC ram_074C_se_timer,X
C - - - - - 0x014218 05:8208: F0 1C     BEQ bra_8226
C - - - - - 0x01421A 05:820A: 60        RTS



sub_820B:
C - - - - - 0x01421B 05:820B: DE 9C 07  DEC ram_079C_se,X
C - - - - - 0x01421E 05:820E: D0 08     BNE bra_8218
C - - - - - 0x014220 05:8210: BD 28 07  LDA ram_0728_se_flags,X
C - - - - - 0x014223 05:8213: 09 80     ORA #con_0728_80
C - - - - - 0x014225 05:8215: 9D 28 07  STA ram_0728_se_flags,X
bra_8218:
C - - - - - 0x014228 05:8218: DE 4C 07  DEC ram_074C_se_timer,X
C - - - - - 0x01422B 05:821B: F0 01     BEQ bra_821E
C - - - - - 0x01422D 05:821D: 60        RTS
bra_821E:
C - - - - - 0x01422E 05:821E: BD 30 07  LDA ram_0730_se_flags,X
C - - - - - 0x014231 05:8221: 29 FB     AND #con_0730_04 ^ $FF
C - - - - - 0x014233 05:8223: 9D 30 07  STA ram_0730_se_flags,X
bra_8226:
C - - - - - 0x014236 05:8226: BD 3C 07  LDA ram_073C_se,X
C - - - - - 0x014239 05:8229: 85 00     STA ram_0000
C - - - - - 0x01423B 05:822B: BD 44 07  LDA ram_0744_se,X
C - - - - - 0x01423E 05:822E: 85 01     STA ram_0001
C - - - - - 0x014240 05:8230: A0 00     LDY #$00
bra_8232_loop:
C - - - - - 0x014242 05:8232: 20 45 82  JSR sub_8245
C - - - - - 0x014245 05:8235: 90 FB     BCC bra_8232_loop
C - - - - - 0x014247 05:8237: 20 D0 88  JSR sub_88D0
C - - - - - 0x01424A 05:823A: A5 00     LDA ram_0000
C - - - - - 0x01424C 05:823C: 9D 3C 07  STA ram_073C_se,X
C - - - - - 0x01424F 05:823F: A5 01     LDA ram_0001
C - - - - - 0x014251 05:8241: 9D 44 07  STA ram_0744_se,X
C - - - - - 0x014254 05:8244: 60        RTS



sub_8245:
C - - - - - 0x014255 05:8245: BD 30 07  LDA ram_0730_se_flags,X
C - - - - - 0x014258 05:8248: 29 02     AND #con_0730_02
C - - - - - 0x01425A 05:824A: F0 17     BEQ bra_8263
C - - - - - 0x01425C 05:824C: 98        TYA
C - - - - - 0x01425D 05:824D: 48        PHA
C - - - - - 0x01425E 05:824E: 20 63 82  JSR sub_8263
C - - - - - 0x014261 05:8251: DE 8C 07  DEC ram_078C_se_timer,X
C - - - - - 0x014264 05:8254: F0 03     BEQ bra_8259
C - - - - - 0x014266 05:8256: 68        PLA
C - - - - - 0x014267 05:8257: A8        TAY
C - - - - - 0x014268 05:8258: 60        RTS
bra_8259:
C - - - - - 0x014269 05:8259: BD 30 07  LDA ram_0730_se_flags,X
C - - - - - 0x01426C 05:825C: 29 FD     AND #con_0730_02 ^ $FF
C - - - - - 0x01426E 05:825E: 9D 30 07  STA ram_0730_se_flags,X
C - - - - - 0x014271 05:8261: 68        PLA
C - - - - - 0x014272 05:8262: 60        RTS
bra_8263:
sub_8263:
C - - - - - 0x014273 05:8263: B1 00     LDA (ram_0000),Y
C - - - - - 0x014275 05:8265: C9 40     CMP #$40
C - - - - - 0x014277 05:8267: 90 0D     BCC bra_8276_00_3F
C - - - - - 0x014279 05:8269: C9 C0     CMP #$C0
C - - - - - 0x01427B 05:826B: 90 03     BCC bra_8270_40_BF
C - - - - - 0x01427D 05:826D: 4C 17 83  JMP loc_8317_sound_engine_control_bytes_C0_DD
bra_8270_40_BF:
C - - - - - 0x014280 05:8270: E0 04     CPX #$04
C - - - - - 0x014282 05:8272: B0 27     BCS bra_829B
C - - - - - 0x014284 05:8274: 90 33     BCC bra_82A9
bra_8276_00_3F:
C - - - - - 0x014286 05:8276: E0 04     CPX #$04
C - - - - - 0x014288 05:8278: B0 1B     BCS bra_8295
C - - - - - 0x01428A 05:827A: 90 00     BCC bra_827C    ; bzk optimize, useless check
bra_827C:
C - - - - - 0x01428C 05:827C: 9D 94 07  STA ram_0794_se,X
loc_827F:
C D 0 - - - 0x01428F 05:827F: 85 02     STA ram_0002
C - - - - - 0x014291 05:8281: BD A4 07  LDA ram_07A4_se,X
C - - - - - 0x014294 05:8284: 85 03     STA ram_0003
C - - - - - 0x014296 05:8286: 20 DD 88  JSR sub_88DD
C - - - - - 0x014299 05:8289: A5 02     LDA ram_0002
C - - - - - 0x01429B 05:828B: D0 02     BNE bra_828F
C - - - - - 0x01429D 05:828D: A9 01     LDA #$01
bra_828F:
C - - - - - 0x01429F 05:828F: 9D 98 07  STA ram_0798_se,X
C - - - - - 0x0142A2 05:8292: C8        INY
C - - - - - 0x0142A3 05:8293: 18        CLC
C - - - - - 0x0142A4 05:8294: 60        RTS
bra_8295:
C - - - - - 0x0142A5 05:8295: 9D 4C 07  STA ram_074C_se_timer,X
C - - - - - 0x0142A8 05:8298: C8        INY
C - - - - - 0x0142A9 05:8299: 38        SEC
C - - - - - 0x0142AA 05:829A: 60        RTS
bra_829B:
loc_829B:
C D 0 - - - 0x0142AB 05:829B: 9D 54 07  STA ram_0754_se,X
C - - - - - 0x0142AE 05:829E: BD 28 07  LDA ram_0728_se_flags,X
C - - - - - 0x0142B1 05:82A1: 09 20     ORA #con_0728_20
C - - - - - 0x0142B3 05:82A3: 9D 28 07  STA ram_0728_se_flags,X
C - - - - - 0x0142B6 05:82A6: C8        INY
C - - - - - 0x0142B7 05:82A7: 18        CLC
C - - - - - 0x0142B8 05:82A8: 60        RTS
bra_82A9:
C - - - - - 0x0142B9 05:82A9: 48        PHA
C - - - - - 0x0142BA 05:82AA: 7D AC 07  ADC ram_07AC_se,X
C - - - - - 0x0142BD 05:82AD: 29 3F     AND #$3F
C - - - - - 0x0142BF 05:82AF: 9D 54 07  STA ram_0754_se,X
C - - - - - 0x0142C2 05:82B2: BD 30 07  LDA ram_0730_se_flags,X
C - - - - - 0x0142C5 05:82B5: 29 08     AND #con_0730_08
C - - - - - 0x0142C7 05:82B7: F0 04     BEQ bra_82BD
C - - - - - 0x0142C9 05:82B9: A9 FF     LDA #$FF
C - - - - - 0x0142CB 05:82BB: D0 03     BNE bra_82C0    ; jmp
bra_82BD:
C - - - - - 0x0142CD 05:82BD: BD 98 07  LDA ram_0798_se,X
bra_82C0:
C - - - - - 0x0142D0 05:82C0: 9D 9C 07  STA ram_079C_se,X
C - - - - - 0x0142D3 05:82C3: BD 94 07  LDA ram_0794_se,X
C - - - - - 0x0142D6 05:82C6: 9D 4C 07  STA ram_074C_se_timer,X
C - - - - - 0x0142D9 05:82C9: 68        PLA
C - - - - - 0x0142DA 05:82CA: 10 32     BPL bra_82FE
C - - - - - 0x0142DC 05:82CC: C8        INY
C - - - - - 0x0142DD 05:82CD: B1 00     LDA (ram_0000),Y
C - - - - - 0x0142DF 05:82CF: 85 02     STA ram_0002
C - - - - - 0x0142E1 05:82D1: A9 40     LDA #$40
C - - - - - 0x0142E3 05:82D3: 24 02     BIT ram_0002
C - - - - - 0x0142E5 05:82D5: F0 0E     BEQ bra_82E5
- - - - - - 0x0142E7 05:82D7: BD 94 07  LDA ram_0794_se,X
- - - - - - 0x0142EA 05:82DA: DD A0 07  CMP ram_07A0_se,X
- - - - - - 0x0142ED 05:82DD: 90 03     BCC bra_82E2
- - - - - - 0x0142EF 05:82DF: BD A0 07  LDA ram_07A0_se,X
bra_82E2:
- - - - - - 0x0142F2 05:82E2: 9D 9C 07  STA ram_079C_se,X
bra_82E5:
C - - - - - 0x0142F5 05:82E5: A9 80     LDA #$80
C - - - - - 0x0142F7 05:82E7: 24 02     BIT ram_0002
C - - - - - 0x0142F9 05:82E9: F0 05     BEQ bra_82F0
C - - - - - 0x0142FB 05:82EB: A9 FF     LDA #$FF
C - - - - - 0x0142FD 05:82ED: 9D 9C 07  STA ram_079C_se,X
bra_82F0:
C - - - - - 0x014300 05:82F0: A9 20     LDA #$20
C - - - - - 0x014302 05:82F2: 24 02     BIT ram_0002
C - - - - - 0x014304 05:82F4: F0 08     BEQ bra_82FE
- - - - - - 0x014306 05:82F6: BD 30 07  LDA ram_0730_se_flags,X
- - - - - - 0x014309 05:82F9: 09 04     ORA #con_0730_04
- - - - - - 0x01430B 05:82FB: 9D 30 07  STA ram_0730_se_flags,X
bra_82FE:
C - - - - - 0x01430E 05:82FE: E0 03     CPX #$03
C - - - - - 0x014310 05:8300: B0 0A     BCS bra_830C
C - - - - - 0x014312 05:8302: BD 30 07  LDA ram_0730_se_flags,X
; bzk optimize, BMI without AND
C - - - - - 0x014315 05:8305: 29 80     AND #con_0730_80
C - - - - - 0x014317 05:8307: D0 03     BNE bra_830C
C - - - - - 0x014319 05:8309: 20 AE 88  JSR sub_88AE
bra_830C:
C - - - - - 0x01431C 05:830C: BD 28 07  LDA ram_0728_se_flags,X
C - - - - - 0x01431F 05:830F: 09 30     ORA #con_0728_10 + con_0728_20
C - - - - - 0x014321 05:8311: 9D 28 07  STA ram_0728_se_flags,X
C - - - - - 0x014324 05:8314: C8        INY
C - - - - - 0x014325 05:8315: 38        SEC
C - - - - - 0x014326 05:8316: 60        RTS



loc_8317_sound_engine_control_bytes_C0_DD:
; see con_se_cb
C D 0 - - - 0x014327 05:8317: 29 3F     AND #$3F
C - - - - - 0x014329 05:8319: AA        TAX
C - - - - - 0x01432A 05:831A: BD 2C 83  LDA tbl_832C_lo,X
C - - - - - 0x01432D 05:831D: 85 02     STA ram_0002
C - - - - - 0x01432F 05:831F: BD 4A 83  LDA tbl_834A_hi,X
C - - - - - 0x014332 05:8322: 85 03     STA ram_0003
C - - - - - 0x014334 05:8324: AE 38 07  LDX ram_0738_se_index
C - - - - - 0x014337 05:8327: C8        INY
C - - - - - 0x014338 05:8328: 18        CLC
C - - - - - 0x014339 05:8329: 6C 02 00  JMP (ram_0002)



tbl_832C_lo:
- D 0 - - - 0x01433C 05:832C: 68        .byte < ofs_017_8368_C0
- D 0 - - - 0x01433D 05:832D: 6D        .byte < ofs_017_836D_C1
- D 0 - - - 0x01433E 05:832E: 75        .byte < ofs_017_8375_C2
- D 0 - - - 0x01433F 05:832F: 79        .byte < ofs_017_8379_C3
- D 0 - - - 0x014340 05:8330: 9D        .byte < ofs_017_839D_C4
- D 0 - - - 0x014341 05:8331: A1        .byte < ofs_017_83A1_C5
- - - - - - 0x014342 05:8332: B4        .byte < ofs_017_83B4_C6 ; unused, index doesn't exist
- D 0 - - - 0x014343 05:8333: BB        .byte < ofs_017_83BB_C7
- - - - - - 0x014344 05:8334: C6        .byte < ofs_017_83C6_C8 ; unused, index doesn't exist
- D 0 - - - 0x014345 05:8335: CD        .byte < ofs_017_83CD_C9
- D 0 - - - 0x014346 05:8336: D6        .byte < ofs_017_83D6_CA
- D 0 - - - 0x014347 05:8337: DF        .byte < ofs_017_83DF_CB
- D 0 - - - 0x014348 05:8338: FC        .byte < ofs_017_83FC_CC
- D 0 - - - 0x014349 05:8339: 06        .byte < ofs_017_8406_CD_instrument
- D 0 - - - 0x01434A 05:833A: A5        .byte < ofs_017_84A5_CE_loop_1
- D 0 - - - 0x01434B 05:833B: B8        .byte < ofs_017_84B8_CF_loop_2
- D 0 - - - 0x01434C 05:833C: CB        .byte < ofs_017_84CB_D0_jmp
- D 0 - - - 0x01434D 05:833D: D9        .byte < ofs_017_84D9_D1_jsr
- D 0 - - - 0x01434E 05:833E: F6        .byte < ofs_017_84F6_D2_rts
- D 0 - - - 0x01434F 05:833F: 03        .byte < ofs_017_8503_D3_stop
- D 0 - - - 0x014350 05:8340: 8E        .byte < ofs_017_848E_D4
- - - - - - 0x014351 05:8341: 80        .byte < ofs_017_8480_D5 ; unused, index doesn't exist
- D 0 - - - 0x014352 05:8342: E8        .byte < ofs_017_83E8_D6
- D 0 - - - 0x014353 05:8343: F2        .byte < ofs_017_83F2_D7
- D 0 - - - 0x014354 05:8344: 79        .byte < ofs_017_8479_D8
- - - - - - 0x014355 05:8345: 6E        .byte < ofs_017_846E_D9_play_another_sound ; unused, index doesn't exist
- D 0 - - - 0x014356 05:8346: 66        .byte < ofs_017_8566_DA
- D 0 - - - 0x014357 05:8347: 76        .byte < ofs_017_8576_DB
- D 0 - - - 0x014358 05:8348: 92        .byte < ofs_017_8592_DC
- D 0 - - - 0x014359 05:8349: 9C        .byte < ofs_017_859C_DD



tbl_834A_hi:
- D 0 - - - 0x01435A 05:834A: 83        .byte > ofs_017_8368_C0
- D 0 - - - 0x01435B 05:834B: 83        .byte > ofs_017_836D_C1
- D 0 - - - 0x01435C 05:834C: 83        .byte > ofs_017_8375_C2
- D 0 - - - 0x01435D 05:834D: 83        .byte > ofs_017_8379_C3
- D 0 - - - 0x01435E 05:834E: 83        .byte > ofs_017_839D_C4
- D 0 - - - 0x01435F 05:834F: 83        .byte > ofs_017_83A1_C5
- - - - - - 0x014360 05:8350: 83        .byte > ofs_017_83B4_C6 ; unused, index doesn't exist
- D 0 - - - 0x014361 05:8351: 83        .byte > ofs_017_83BB_C7
- - - - - - 0x014362 05:8352: 83        .byte > ofs_017_83C6_C8 ; unused, index doesn't exist
- D 0 - - - 0x014363 05:8353: 83        .byte > ofs_017_83CD_C9
- D 0 - - - 0x014364 05:8354: 83        .byte > ofs_017_83D6_CA
- D 0 - - - 0x014365 05:8355: 83        .byte > ofs_017_83DF_CB
- D 0 - - - 0x014366 05:8356: 83        .byte > ofs_017_83FC_CC
- D 0 - - - 0x014367 05:8357: 84        .byte > ofs_017_8406_CD_instrument
- D 0 - - - 0x014368 05:8358: 84        .byte > ofs_017_84A5_CE_loop_1
- D 0 - - - 0x014369 05:8359: 84        .byte > ofs_017_84B8_CF_loop_2
- D 0 - - - 0x01436A 05:835A: 84        .byte > ofs_017_84CB_D0_jmp
- D 0 - - - 0x01436B 05:835B: 84        .byte > ofs_017_84D9_D1_jsr
- D 0 - - - 0x01436C 05:835C: 84        .byte > ofs_017_84F6_D2_rts
- D 0 - - - 0x01436D 05:835D: 85        .byte > ofs_017_8503_D3_stop
- D 0 - - - 0x01436E 05:835E: 84        .byte > ofs_017_848E_D4
- - - - - - 0x01436F 05:835F: 84        .byte > ofs_017_8480_D5
- D 0 - - - 0x014370 05:8360: 83        .byte > ofs_017_83E8_D6 ; unused, index doesn't exist
- D 0 - - - 0x014371 05:8361: 83        .byte > ofs_017_83F2_D7
- D 0 - - - 0x014372 05:8362: 84        .byte > ofs_017_8479_D8
- - - - - - 0x014373 05:8363: 84        .byte > ofs_017_846E_D9_play_another_sound ; unused, index doesn't exist
- D 0 - - - 0x014374 05:8364: 85        .byte > ofs_017_8566_DA
- D 0 - - - 0x014375 05:8365: 85        .byte > ofs_017_8576_DB
- D 0 - - - 0x014376 05:8366: 85        .byte > ofs_017_8592_DC
- D 0 - - - 0x014377 05:8367: 85        .byte > ofs_017_859C_DD



ofs_017_8368_C0:
C - - J - - 0x014378 05:8368: B1 00     LDA (ram_0000),Y
C - - - - - 0x01437A 05:836A: 4C 9B 82  JMP loc_829B



ofs_017_836D_C1:
C - - J - - 0x01437D 05:836D: B1 00     LDA (ram_0000),Y
C - - - - - 0x01437F 05:836F: 7D 54 07  ADC ram_0754_se,X
C - - - - - 0x014382 05:8372: 4C 9B 82  JMP loc_829B



ofs_017_8375_C2:
C - - J - - 0x014385 05:8375: B1 00     LDA (ram_0000),Y
C - - - - - 0x014387 05:8377: 90 16     BCC bra_838F    ; jmp



ofs_017_8379_C3:
C - - J - - 0x014389 05:8379: B1 00     LDA (ram_0000),Y
C - - - - - 0x01438B 05:837B: 30 0A     BMI bra_8387
C - - - - - 0x01438D 05:837D: 7D 5C 07  ADC ram_075C_se,X
C - - - - - 0x014390 05:8380: 90 0D     BCC bra_838F
C - - - - - 0x014392 05:8382: FE 54 07  INC ram_0754_se,X
C - - - - - 0x014395 05:8385: B0 08     BCS bra_838F    ; jmp
bra_8387:
C - - - - - 0x014397 05:8387: 7D 5C 07  ADC ram_075C_se,X
C - - - - - 0x01439A 05:838A: B0 03     BCS bra_838F
C - - - - - 0x01439C 05:838C: DE 54 07  DEC ram_0754_se,X
bra_838F:
C - - - - - 0x01439F 05:838F: 9D 5C 07  STA ram_075C_se,X
C - - - - - 0x0143A2 05:8392: BD 28 07  LDA ram_0728_se_flags,X
C - - - - - 0x0143A5 05:8395: 09 20     ORA #con_0728_20
C - - - - - 0x0143A7 05:8397: 9D 28 07  STA ram_0728_se_flags,X
C - - - - - 0x0143AA 05:839A: C8        INY
C - - - - - 0x0143AB 05:839B: 18        CLC
C - - - - - 0x0143AC 05:839C: 60        RTS



ofs_017_839D_C4:
C - - J - - 0x0143AD 05:839D: B1 00     LDA (ram_0000),Y
C - - - - - 0x0143AF 05:839F: 90 05     BCC bra_83A6    ; jmp



ofs_017_83A1_C5:
C - - J - - 0x0143B1 05:83A1: B1 00     LDA (ram_0000),Y
C - - - - - 0x0143B3 05:83A3: 7D 64 07  ADC ram_0764_se,X
bra_83A6:
C - - - - - 0x0143B6 05:83A6: 9D 64 07  STA ram_0764_se,X
C - - - - - 0x0143B9 05:83A9: BD 28 07  LDA ram_0728_se_flags,X
C - - - - - 0x0143BC 05:83AC: 09 08     ORA #con_0728_08
C - - - - - 0x0143BE 05:83AE: 9D 28 07  STA ram_0728_se_flags,X
C - - - - - 0x0143C1 05:83B1: C8        INY
C - - - - - 0x0143C2 05:83B2: 18        CLC
C - - - - - 0x0143C3 05:83B3: 60        RTS



ofs_017_83B4_C6:
; bzk garbage
- - - - - - 0x0143C4 05:83B4: B1 00     LDA (ram_0000),Y
- - - - - - 0x0143C6 05:83B6: 9D A8 07  STA ram_07A8_se,X
- - - - - - 0x0143C9 05:83B9: C8        INY
- - - - - - 0x0143CA 05:83BA: 60        RTS



ofs_017_83BB_C7:
C - - J - - 0x0143CB 05:83BB: B1 00     LDA (ram_0000),Y
C - - - - - 0x0143CD 05:83BD: 9D A4 07  STA ram_07A4_se,X
C - - - - - 0x0143D0 05:83C0: BD 94 07  LDA ram_0794_se,X
C - - - - - 0x0143D3 05:83C3: 4C 7F 82  JMP loc_827F



ofs_017_83C6_C8:
; bzk garbage
- - - - - - 0x0143D6 05:83C6: B1 00     LDA (ram_0000),Y
- - - - - - 0x0143D8 05:83C8: 9D A0 07  STA ram_07A0_se,X
- - - - - - 0x0143DB 05:83CB: C8        INY
- - - - - - 0x0143DC 05:83CC: 60        RTS



ofs_017_83CD_C9:
C - - J - - 0x0143DD 05:83CD: BD 94 07  LDA ram_0794_se,X
C - - - - - 0x0143E0 05:83D0: 9D 4C 07  STA ram_074C_se_timer,X
C - - - - - 0x0143E3 05:83D3: 38        SEC
C - - - - - 0x0143E4 05:83D4: B0 09     BCS bra_83DF    ; jmp



ofs_017_83D6_CA:
C - - J - - 0x0143E6 05:83D6: BD 28 07  LDA ram_0728_se_flags,X
C - - - - - 0x0143E9 05:83D9: 09 10     ORA #con_0728_10
C - - - - - 0x0143EB 05:83DB: 9D 28 07  STA ram_0728_se_flags,X
C - - - - - 0x0143EE 05:83DE: 60        RTS



bra_83DF:
ofs_017_83DF_CB:
C - - - - - 0x0143EF 05:83DF: BD 28 07  LDA ram_0728_se_flags,X
C - - - - - 0x0143F2 05:83E2: 09 80     ORA #con_0728_80
C - - - - - 0x0143F4 05:83E4: 9D 28 07  STA ram_0728_se_flags,X
C - - - - - 0x0143F7 05:83E7: 60        RTS



ofs_017_83E8_D6:
C - - J - - 0x0143F8 05:83E8: BD 30 07  LDA ram_0730_se_flags,X
C - - - - - 0x0143FB 05:83EB: 09 08     ORA #con_0730_08
C - - - - - 0x0143FD 05:83ED: 9D 30 07  STA ram_0730_se_flags,X
C - - - - - 0x014400 05:83F0: 90 ED     BCC bra_83DF    ; jmp



ofs_017_83F2_D7:
C - - J - - 0x014402 05:83F2: BD 30 07  LDA ram_0730_se_flags,X
C - - - - - 0x014405 05:83F5: 29 F7     AND #con_0730_08 ^ $FF
C - - - - - 0x014407 05:83F7: 9D 30 07  STA ram_0730_se_flags,X
C - - - - - 0x01440A 05:83FA: 90 E3     BCC bra_83DF    ; jmp



ofs_017_83FC_CC:
C - - J - - 0x01440C 05:83FC: B1 00     LDA (ram_0000),Y
C - - - - - 0x01440E 05:83FE: 8D 39 07  STA ram_0739_se
C - - - - - 0x014411 05:8401: 8D 3A 07  STA ram_073A_useless
C - - - - - 0x014414 05:8404: C8        INY
C - - - - - 0x014415 05:8405: 60        RTS



ofs_017_8406_CD_instrument:
C - - J - - 0x014416 05:8406: E0 03     CPX #$03
C - - - - - 0x014418 05:8408: F0 0B     BEQ bra_8415
C - - - - - 0x01441A 05:840A: 8A        TXA
C - - - - - 0x01441B 05:840B: 29 03     AND #$03
C - - - - - 0x01441D 05:840D: C9 02     CMP #$02
C - - - - - 0x01441F 05:840F: D0 1A     BNE bra_842B
- - - - - - 0x014421 05:8411: C8        INY
- - - - - - 0x014422 05:8412: C8        INY
- - - - - - 0x014423 05:8413: 18        CLC
- - - - - - 0x014424 05:8414: 60        RTS
bra_8415:
C - - - - - 0x014425 05:8415: B1 00     LDA (ram_0000),Y
C - - - - - 0x014427 05:8417: 8D EE 07  STA ram_07EE_se_data
C - - - - - 0x01442A 05:841A: C8        INY
C - - - - - 0x01442B 05:841B: B1 00     LDA (ram_0000),Y
C - - - - - 0x01442D 05:841D: 8D EF 07  STA ram_07EE_se_data + $01
C - - - - - 0x014430 05:8420: AD DA 07  LDA ram_07DA
C - - - - - 0x014433 05:8423: 09 30     ORA #$30
C - - - - - 0x014435 05:8425: 8D DA 07  STA ram_07DA
C - - - - - 0x014438 05:8428: C8        INY
C - - - - - 0x014439 05:8429: 18        CLC
C - - - - - 0x01443A 05:842A: 60        RTS
bra_842B:
C - - - - - 0x01443B 05:842B: B1 00     LDA (ram_0000),Y
C - - - - - 0x01443D 05:842D: 85 02     STA ram_0002
C - - - - - 0x01443F 05:842F: C8        INY
C - - - - - 0x014440 05:8430: B1 00     LDA (ram_0000),Y
C - - - - - 0x014442 05:8432: 85 03     STA ram_0003
C - - - - - 0x014444 05:8434: C8        INY
C - - - - - 0x014445 05:8435: 98        TYA
C - - - - - 0x014446 05:8436: 48        PHA
C - - - - - 0x014447 05:8437: E0 04     CPX #$04
C - - - - - 0x014449 05:8439: B0 10     BCS bra_844B_04_05
; 00-03
C - - - - - 0x01444B 05:843B: A0 00     LDY #$00
C - - - - - 0x01444D 05:843D: B1 02     LDA (ram_0002),Y
C - - - - - 0x01444F 05:843F: 9D B3 07  STA ram_07B3_se,X
C - - - - - 0x014452 05:8442: C8        INY ; 01
C - - - - - 0x014453 05:8443: B1 02     LDA (ram_0002),Y
C - - - - - 0x014455 05:8445: 9D B6 07  STA ram_07B6_se,X
C - - - - - 0x014458 05:8448: AE 38 07  LDX ram_0738_se_index
bra_844B_04_05:
C - - - - - 0x01445B 05:844B: A0 02     LDY #$02
C - - - - - 0x01445D 05:844D: B1 02     LDA (ram_0002),Y
C - - - - - 0x01445F 05:844F: 09 30     ORA #$30
C - - - - - 0x014461 05:8451: 48        PHA
C - - - - - 0x014462 05:8452: C8        INY ; 03
C - - - - - 0x014463 05:8453: B1 02     LDA (ram_0002),Y
C - - - - - 0x014465 05:8455: 48        PHA
C - - - - - 0x014466 05:8456: 8A        TXA
C - - - - - 0x014467 05:8457: 0A        ASL
C - - - - - 0x014468 05:8458: 0A        ASL
C - - - - - 0x014469 05:8459: A8        TAY
C - - - - - 0x01446A 05:845A: 68        PLA
C - - - - - 0x01446B 05:845B: 99 CF 07  STA ram_07CF,Y
C - - - - - 0x01446E 05:845E: 68        PLA
C - - - - - 0x01446F 05:845F: 99 CE 07  STA ram_07CE,Y
C - - - - - 0x014472 05:8462: BD 28 07  LDA ram_0728_se_flags,X
C - - - - - 0x014475 05:8465: 09 40     ORA #con_0728_40
C - - - - - 0x014477 05:8467: 9D 28 07  STA ram_0728_se_flags,X
C - - - - - 0x01447A 05:846A: 68        PLA
C - - - - - 0x01447B 05:846B: A8        TAY
C - - - - - 0x01447C 05:846C: 18        CLC
C - - - - - 0x01447D 05:846D: 60        RTS



ofs_017_846E_D9_play_another_sound:
; bzk garbage
- - - - - - 0x01447E 05:846E: B1 00     LDA (ram_0000),Y
- - - - - - 0x014480 05:8470: 8D FF 07  STA ram_sound_id
- - - - - - 0x014483 05:8473: 20 26 80  JSR sub_8026_load_sound_into_engine
- - - - - - 0x014486 05:8476: C8        INY
- - - - - - 0x014487 05:8477: 18        CLC
- - - - - - 0x014488 05:8478: 60        RTS



ofs_017_8479_D8:
C - - J - - 0x014489 05:8479: B1 00     LDA (ram_0000),Y
C - - - - - 0x01448B 05:847B: 9D AC 07  STA ram_07AC_se,X
C - - - - - 0x01448E 05:847E: C8        INY
C - - - - - 0x01448F 05:847F: 60        RTS



ofs_017_8480_D5:
; bzk garbage
- - - - - - 0x014490 05:8480: A9 00     LDA #$00
- - - - - - 0x014492 05:8482: 8D 15 40  STA $4015
- - - - - - 0x014495 05:8485: AD FE 07  LDA ram_game_flags_2
- - - - - - 0x014498 05:8488: 09 40     ORA #con_gf2_40
- - - - - - 0x01449A 05:848A: 8D FE 07  STA ram_game_flags_2
- - - - - - 0x01449D 05:848D: 60        RTS



ofs_017_848E_D4:
C - - J - - 0x01449E 05:848E: 8A        TXA
C - - - - - 0x01449F 05:848F: 0A        ASL
C - - - - - 0x0144A0 05:8490: 0A        ASL
C - - - - - 0x0144A1 05:8491: AA        TAX
C - - - - - 0x0144A2 05:8492: E8        INX
C - - - - - 0x0144A3 05:8493: B1 00     LDA (ram_0000),Y
C - - - - - 0x0144A5 05:8495: 9D CE 07  STA ram_07CE,X
C - - - - - 0x0144A8 05:8498: AE 38 07  LDX ram_0738_se_index
C - - - - - 0x0144AB 05:849B: BD 28 07  LDA ram_0728_se_flags,X
C - - - - - 0x0144AE 05:849E: 09 04     ORA #con_0728_04
C - - - - - 0x0144B0 05:84A0: 9D 28 07  STA ram_0728_se_flags,X
C - - - - - 0x0144B3 05:84A3: C8        INY
C - - - - - 0x0144B4 05:84A4: 60        RTS



ofs_017_84A5_CE_loop_1:
C - - J - - 0x0144B5 05:84A5: BD 6C 07  LDA ram_076C_se,X
C - - - - - 0x0144B8 05:84A8: D0 05     BNE bra_84AF
C - - - - - 0x0144BA 05:84AA: B1 00     LDA (ram_0000),Y
C - - - - - 0x0144BC 05:84AC: 9D 6C 07  STA ram_076C_se,X
bra_84AF:
C - - - - - 0x0144BF 05:84AF: C8        INY
C - - - - - 0x0144C0 05:84B0: DE 6C 07  DEC ram_076C_se,X
C - - - - - 0x0144C3 05:84B3: D0 16     BNE bra_84CB
C - - - - - 0x0144C5 05:84B5: C8        INY
C - - - - - 0x0144C6 05:84B6: C8        INY
C - - - - - 0x0144C7 05:84B7: 60        RTS



ofs_017_84B8_CF_loop_2:
C - - J - - 0x0144C8 05:84B8: BD 74 07  LDA ram_0774_se,X
C - - - - - 0x0144CB 05:84BB: D0 05     BNE bra_84C2
C - - - - - 0x0144CD 05:84BD: B1 00     LDA (ram_0000),Y
C - - - - - 0x0144CF 05:84BF: 9D 74 07  STA ram_0774_se,X
bra_84C2:
C - - - - - 0x0144D2 05:84C2: C8        INY
C - - - - - 0x0144D3 05:84C3: DE 74 07  DEC ram_0774_se,X
C - - - - - 0x0144D6 05:84C6: D0 03     BNE bra_84CB
C - - - - - 0x0144D8 05:84C8: C8        INY
C - - - - - 0x0144D9 05:84C9: C8        INY
C - - - - - 0x0144DA 05:84CA: 60        RTS



bra_84CB:
ofs_017_84CB_D0_jmp:
C - - - - - 0x0144DB 05:84CB: B1 00     LDA (ram_0000),Y
C - - - - - 0x0144DD 05:84CD: 48        PHA
C - - - - - 0x0144DE 05:84CE: C8        INY
C - - - - - 0x0144DF 05:84CF: B1 00     LDA (ram_0000),Y
C - - - - - 0x0144E1 05:84D1: 85 01     STA ram_0001
C - - - - - 0x0144E3 05:84D3: 68        PLA
C - - - - - 0x0144E4 05:84D4: 85 00     STA ram_0000
C - - - - - 0x0144E6 05:84D6: A0 00     LDY #$00
C - - - - - 0x0144E8 05:84D8: 60        RTS



ofs_017_84D9_D1_jsr:
C - - J - - 0x0144E9 05:84D9: B1 00     LDA (ram_0000),Y
C - - - - - 0x0144EB 05:84DB: 48        PHA
C - - - - - 0x0144EC 05:84DC: C8        INY
C - - - - - 0x0144ED 05:84DD: B1 00     LDA (ram_0000),Y
C - - - - - 0x0144EF 05:84DF: 48        PHA
C - - - - - 0x0144F0 05:84E0: C8        INY
C - - - - - 0x0144F1 05:84E1: 20 D0 88  JSR sub_88D0
C - - - - - 0x0144F4 05:84E4: A5 00     LDA ram_0000
C - - - - - 0x0144F6 05:84E6: 9D 7C 07  STA ram_077C_se_stack_lo,X
C - - - - - 0x0144F9 05:84E9: A5 01     LDA ram_0001
C - - - - - 0x0144FB 05:84EB: 9D 84 07  STA ram_0784_se_stack_hi,X
C - - - - - 0x0144FE 05:84EE: 68        PLA
C - - - - - 0x0144FF 05:84EF: 85 01     STA ram_0001
C - - - - - 0x014501 05:84F1: 68        PLA
C - - - - - 0x014502 05:84F2: 85 00     STA ram_0000
C - - - - - 0x014504 05:84F4: 18        CLC
C - - - - - 0x014505 05:84F5: 60        RTS



ofs_017_84F6_D2_rts:
C - - J - - 0x014506 05:84F6: BD 7C 07  LDA ram_077C_se_stack_lo,X
C - - - - - 0x014509 05:84F9: 85 00     STA ram_0000
C - - - - - 0x01450B 05:84FB: BD 84 07  LDA ram_0784_se_stack_hi,X
C - - - - - 0x01450E 05:84FE: 85 01     STA ram_0001
C - - - - - 0x014510 05:8500: A0 00     LDY #$00
C - - - - - 0x014512 05:8502: 60        RTS



sub_8503:
ofs_017_8503_D3_stop:
C - - J - - 0x014513 05:8503: A9 80     LDA #con_0728_80
C - - - - - 0x014515 05:8505: 9D 28 07  STA ram_0728_se_flags,X
C - - - - - 0x014518 05:8508: A9 00     LDA #con_0730_00
C - - - - - 0x01451A 05:850A: 9D 30 07  STA ram_0730_se_flags,X
C - - - - - 0x01451D 05:850D: E0 04     CPX #$04
C - - - - - 0x01451F 05:850F: B0 18     BCS bra_8529
C - - - - - 0x014521 05:8511: AD 30 07  LDA ram_0730_se_flags
C - - - - - 0x014524 05:8514: 0D 31 07  ORA ram_0730_se_flags + $01
C - - - - - 0x014527 05:8517: 0D 32 07  ORA ram_0730_se_flags + $02
C - - - - - 0x01452A 05:851A: 0D 33 07  ORA ram_0730_se_flags + $03
C - - - - - 0x01452D 05:851D: D0 08     BNE bra_8527    ; if at least one is not con_0730_00
C - - - - - 0x01452F 05:851F: AD FE 07  LDA ram_game_flags_2
C - - - - - 0x014532 05:8522: 29 FD     AND #con_gf2_02 ^ $FF
C - - - - - 0x014534 05:8524: 8D FE 07  STA ram_game_flags_2
bra_8527:
C - - - - - 0x014537 05:8527: 38        SEC
C - - - - - 0x014538 05:8528: 60        RTS
bra_8529:
C - - - - - 0x014539 05:8529: 2C FE 07  BIT ram_game_flags_2
C - - - - - 0x01453C 05:852C: 70 30     BVS bra_855E    ; if con_gf2_40
C - - - - - 0x01453E 05:852E: 8A        TXA
C - - - - - 0x01453F 05:852F: 29 03     AND #$03
C - - - - - 0x014541 05:8531: AA        TAX
C - - - - - 0x014542 05:8532: BD 30 07  LDA ram_0730_se_flags,X
C - - - - - 0x014545 05:8535: F0 27     BEQ bra_855E    ; if con_0730_00
C - - - - - 0x014547 05:8537: 8A        TXA
C - - - - - 0x014548 05:8538: 0A        ASL
C - - - - - 0x014549 05:8539: 0A        ASL
C - - - - - 0x01454A 05:853A: A8        TAY
C - - - - - 0x01454B 05:853B: B9 CE 07  LDA ram_07D2 - $04,Y
C - - - - - 0x01454E 05:853E: 20 34 88  JSR sub_8834
C - - - - - 0x014551 05:8541: C8        INY
C - - - - - 0x014552 05:8542: B9 CE 07  LDA ram_07D3 - $05,Y
C - - - - - 0x014555 05:8545: 20 34 88  JSR sub_8834
C - - - - - 0x014558 05:8548: C8        INY
C - - - - - 0x014559 05:8549: B9 CE 07  LDA ram_07D4 - $06,Y
C - - - - - 0x01455C 05:854C: 20 34 88  JSR sub_8834
C - - - - - 0x01455F 05:854F: C8        INY
C - - - - - 0x014560 05:8550: B9 CE 07  LDA ram_07D5 - $07,Y
C - - - - - 0x014563 05:8553: 20 34 88  JSR sub_8834
C - - - - - 0x014566 05:8556: AE 38 07  LDX ram_0738_se_index
C - - - - - 0x014569 05:8559: A9 00     LDA #con_0728_00
C - - - - - 0x01456B 05:855B: 9D 28 07  STA ram_0728_se_flags,X
bra_855E:
C - - - - - 0x01456E 05:855E: AE 38 07  LDX ram_0738_se_index
C - - - - - 0x014571 05:8561: 9D 20 07  STA ram_0724_se - $04,X ; 0724 0725 0726 0727
C - - - - - 0x014574 05:8564: 38        SEC
C - - - - - 0x014575 05:8565: 60        RTS



ofs_017_8566_DA:
C - - J - - 0x014576 05:8566: B1 00     LDA (ram_0000),Y
C - - - - - 0x014578 05:8568: 9D 8C 07  STA ram_078C_se_timer,X
C - - - - - 0x01457B 05:856B: BD 30 07  LDA ram_0730_se_flags,X
C - - - - - 0x01457E 05:856E: 09 02     ORA #con_0730_02
C - - - - - 0x014580 05:8570: 9D 30 07  STA ram_0730_se_flags,X
C - - - - - 0x014583 05:8573: C8        INY
C - - - - - 0x014584 05:8574: 18        CLC
C - - - - - 0x014585 05:8575: 60        RTS



ofs_017_8576_DB:
C - - J - - 0x014586 05:8576: B1 00     LDA (ram_0000),Y
C - - - - - 0x014588 05:8578: 9D C5 07  STA ram_07C5_se,X
C - - - - - 0x01458B 05:857B: C8        INY
C - - - - - 0x01458C 05:857C: B1 00     LDA (ram_0000),Y
C - - - - - 0x01458E 05:857E: 9D C2 07  STA ram_07C2_se,X
C - - - - - 0x014591 05:8581: C8        INY
C - - - - - 0x014592 05:8582: B1 00     LDA (ram_0000),Y
C - - - - - 0x014594 05:8584: 9D CB 07  STA ram_07CB_se,X
C - - - - - 0x014597 05:8587: BD 30 07  LDA ram_0730_se_flags,X
C - - - - - 0x01459A 05:858A: 09 10     ORA #con_0730_10
C - - - - - 0x01459C 05:858C: 9D 30 07  STA ram_0730_se_flags,X
C - - - - - 0x01459F 05:858F: C8        INY
C - - - - - 0x0145A0 05:8590: 18        CLC
C - - - - - 0x0145A1 05:8591: 60        RTS



ofs_017_8592_DC:
C - - J - - 0x0145A2 05:8592: BD 30 07  LDA ram_0730_se_flags,X
C - - - - - 0x0145A5 05:8595: 09 10     ORA #con_0730_10
C - - - - - 0x0145A7 05:8597: 9D 30 07  STA ram_0730_se_flags,X
C - - - - - 0x0145AA 05:859A: 18        CLC
C - - - - - 0x0145AB 05:859B: 60        RTS



ofs_017_859C_DD:
C - - J - - 0x0145AC 05:859C: BD 30 07  LDA ram_0730_se_flags,X
C - - - - - 0x0145AF 05:859F: 29 EF     AND #con_0730_10 ^ $FF
C - - - - - 0x0145B1 05:85A1: 9D 30 07  STA ram_0730_se_flags,X
C - - - - - 0x0145B4 05:85A4: 18        CLC
C - - - - - 0x0145B5 05:85A5: 60        RTS



sub_85A6:
C - - - - - 0x0145B6 05:85A6: BD 28 07  LDA ram_0728_se_flags,X
C - - - - - 0x0145B9 05:85A9: 29 80     AND #con_0728_80
C - - - - - 0x0145BB 05:85AB: F0 03     BEQ bra_85B0
C - - - - - 0x0145BD 05:85AD: 20 D0 86  JSR sub_86D0
bra_85B0:
C - - - - - 0x0145C0 05:85B0: BD 28 07  LDA ram_0728_se_flags,X
C - - - - - 0x0145C3 05:85B3: 29 40     AND #con_0728_40
C - - - - - 0x0145C5 05:85B5: F0 03     BEQ bra_85BA
C - - - - - 0x0145C7 05:85B7: 20 49 87  JSR sub_8749
bra_85BA:
C - - - - - 0x0145CA 05:85BA: BD 28 07  LDA ram_0728_se_flags,X
C - - - - - 0x0145CD 05:85BD: 29 20     AND #con_0728_20
C - - - - - 0x0145CF 05:85BF: F0 03     BEQ bra_85C4
C - - - - - 0x0145D1 05:85C1: 20 89 87  JSR sub_8789
bra_85C4:
C - - - - - 0x0145D4 05:85C4: BD 28 07  LDA ram_0728_se_flags,X
C - - - - - 0x0145D7 05:85C7: 29 08     AND #con_0728_08
C - - - - - 0x0145D9 05:85C9: F0 03     BEQ bra_85CE
C - - - - - 0x0145DB 05:85CB: 20 5A 87  JSR sub_875A
bra_85CE:
C - - - - - 0x0145DE 05:85CE: BD 28 07  LDA ram_0728_se_flags,X
C - - - - - 0x0145E1 05:85D1: 29 04     AND #con_0728_04
C - - - - - 0x0145E3 05:85D3: F0 03     BEQ bra_85D8
C - - - - - 0x0145E5 05:85D5: 20 C5 86  JSR sub_86C5
bra_85D8:
C - - - - - 0x0145E8 05:85D8: BD 28 07  LDA ram_0728_se_flags,X
C - - - - - 0x0145EB 05:85DB: 29 10     AND #con_0728_10
C - - - - - 0x0145ED 05:85DD: F0 03     BEQ bra_85E2
C - - - - - 0x0145EF 05:85DF: 20 12 87  JSR sub_8712
bra_85E2:
C - - - - - 0x0145F2 05:85E2: A9 00     LDA #con_0728_00
C - - - - - 0x0145F4 05:85E4: 9D 28 07  STA ram_0728_se_flags,X
C - - - - - 0x0145F7 05:85E7: 60        RTS



sub_85E8:
C - - - - - 0x0145F8 05:85E8: E0 02     CPX #$02
C - - - - - 0x0145FA 05:85EA: 90 06     BCC bra_85F2
C - - - - - 0x0145FC 05:85EC: E0 03     CPX #$03
C - - - - - 0x0145FE 05:85EE: F0 01     BEQ bra_85F1
C - - - - - 0x014600 05:85F0: 60        RTS
bra_85F1:
C - - - - - 0x014601 05:85F1: CA        DEX
bra_85F2:
C - - - - - 0x014602 05:85F2: BD B9 07  LDA ram_07B9_se,X
C - - - - - 0x014605 05:85F5: D0 01     BNE bra_85F8
C - - - - - 0x014607 05:85F7: 60        RTS
bra_85F8:
C - - - - - 0x014608 05:85F8: A8        TAY
C - - - - - 0x014609 05:85F9: BD B3 07  LDA ram_07B3_se,X
C - - - - - 0x01460C 05:85FC: 85 00     STA ram_0000
C - - - - - 0x01460E 05:85FE: BD B6 07  LDA ram_07B6_se,X
C - - - - - 0x014611 05:8601: 85 01     STA ram_0001
C - - - - - 0x014613 05:8603: 98        TYA
C - - - - - 0x014614 05:8604: 30 38     BMI bra_863E
C - - - - - 0x014616 05:8606: C9 02     CMP #$02
C - - - - - 0x014618 05:8608: F0 16     BEQ bra_8620
C - - - - - 0x01461A 05:860A: C9 01     CMP #$01
C - - - - - 0x01461C 05:860C: F0 26     BEQ bra_8634
C - - - - - 0x01461E 05:860E: B1 00     LDA (ram_0000),Y
C - - - - - 0x014620 05:8610: 18        CLC
C - - - - - 0x014621 05:8611: 7D B0 07  ADC ram_07B0_se,X
C - - - - - 0x014624 05:8614: 9D B0 07  STA ram_07B0_se,X
C - - - - - 0x014627 05:8617: DE BC 07  DEC ram_07BC_se_timer,X
C - - - - - 0x01462A 05:861A: D0 66     BNE bra_8682
C - - - - - 0x01462C 05:861C: C8        INY
C - - - - - 0x01462D 05:861D: C8        INY
C - - - - - 0x01462E 05:861E: D0 44     BNE bra_8664
bra_8620:
C - - - - - 0x014630 05:8620: 88        DEY
C - - - - - 0x014631 05:8621: B1 00     LDA (ram_0000),Y
C - - - - - 0x014633 05:8623: DD B0 07  CMP ram_07B0_se,X
C - - - - - 0x014636 05:8626: B0 03     BCS bra_862B
C - - - - - 0x014638 05:8628: 9D B0 07  STA ram_07B0_se,X
bra_862B:
C - - - - - 0x01463B 05:862B: C8        INY
C - - - - - 0x01463C 05:862C: 98        TYA
C - - - - - 0x01463D 05:862D: 09 80     ORA #$80
C - - - - - 0x01463F 05:862F: 9D B9 07  STA ram_07B9_se,X
C - - - - - 0x014642 05:8632: D0 4E     BNE bra_8682    ; jmp
bra_8634:
C - - - - - 0x014644 05:8634: 88        DEY
C - - - - - 0x014645 05:8635: B1 00     LDA (ram_0000),Y
C - - - - - 0x014647 05:8637: 9D B0 07  STA ram_07B0_se,X
C - - - - - 0x01464A 05:863A: A0 03     LDY #$03
C - - - - - 0x01464C 05:863C: D0 26     BNE bra_8664    ; jmp
bra_863E:
C - - - - - 0x01464E 05:863E: 29 7F     AND #$7F
C - - - - - 0x014650 05:8640: A8        TAY
C - - - - - 0x014651 05:8641: B1 00     LDA (ram_0000),Y
C - - - - - 0x014653 05:8643: 30 09     BMI bra_864E
C - - - - - 0x014655 05:8645: 7D B0 07  ADC ram_07B0_se,X
C - - - - - 0x014658 05:8648: 90 15     BCC bra_865F
C - - - - - 0x01465A 05:864A: A9 FF     LDA #$FF
C - - - - - 0x01465C 05:864C: B0 07     BCS bra_8655    ; jmp
bra_864E:
C - - - - - 0x01465E 05:864E: 7D B0 07  ADC ram_07B0_se,X
C - - - - - 0x014661 05:8651: B0 0C     BCS bra_865F
C - - - - - 0x014663 05:8653: A9 00     LDA #$00
bra_8655:
C - - - - - 0x014665 05:8655: 9D B0 07  STA ram_07B0_se,X
C - - - - - 0x014668 05:8658: A9 00     LDA #$00
C - - - - - 0x01466A 05:865A: 9D B9 07  STA ram_07B9_se,X
C - - - - - 0x01466D 05:865D: F0 23     BEQ bra_8682    ; jmp
bra_865F:
C - - - - - 0x01466F 05:865F: 9D B0 07  STA ram_07B0_se,X
C - - - - - 0x014672 05:8662: B0 1E     BCS bra_8682
bra_8664:
C - - - - - 0x014674 05:8664: 98        TYA
C - - - - - 0x014675 05:8665: 9D B9 07  STA ram_07B9_se,X
C - - - - - 0x014678 05:8668: C8        INY
C - - - - - 0x014679 05:8669: B1 00     LDA (ram_0000),Y
C - - - - - 0x01467B 05:866B: 9D BC 07  STA ram_07BC_se_timer,X
C - - - - - 0x01467E 05:866E: D0 12     BNE bra_8682
C - - - - - 0x014680 05:8670: 88        DEY
C - - - - - 0x014681 05:8671: B1 00     LDA (ram_0000),Y
C - - - - - 0x014683 05:8673: D0 05     BNE bra_867A
- - - - - - 0x014685 05:8675: 9D B9 07  STA ram_07B9_se,X
- - - - - - 0x014688 05:8678: F0 08     BEQ bra_8682
bra_867A:
C - - - - - 0x01468A 05:867A: BD B9 07  LDA ram_07B9_se,X
C - - - - - 0x01468D 05:867D: 09 80     ORA #$80
C - - - - - 0x01468F 05:867F: 9D B9 07  STA ram_07B9_se,X
bra_8682:
C - - - - - 0x014692 05:8682: 86 00     STX ram_0000
C - - - - - 0x014694 05:8684: AE 38 07  LDX ram_0738_se_index
C - - - - - 0x014697 05:8687: BD 30 07  LDA ram_0730_se_flags,X
C - - - - - 0x01469A 05:868A: 29 04     AND #con_0730_04
C - - - - - 0x01469C 05:868C: F0 03     BEQ bra_8691
- - - - - - 0x01469E 05:868E: BD A8 07  LDA ram_07A8_se,X
bra_8691:
C - - - - - 0x0146A1 05:8691: 38        SEC
C - - - - - 0x0146A2 05:8692: 7D 64 07  ADC ram_0764_se,X
C - - - - - 0x0146A5 05:8695: 85 03     STA ram_0003
C - - - - - 0x0146A7 05:8697: A6 00     LDX ram_0000
C - - - - - 0x0146A9 05:8699: BD B0 07  LDA ram_07B0_se,X
C - - - - - 0x0146AC 05:869C: 85 02     STA ram_0002
C - - - - - 0x0146AE 05:869E: 20 DD 88  JSR sub_88DD
C - - - - - 0x0146B1 05:86A1: 46 02     LSR ram_0002
C - - - - - 0x0146B3 05:86A3: 46 02     LSR ram_0002
C - - - - - 0x0146B5 05:86A5: 46 02     LSR ram_0002
C - - - - - 0x0146B7 05:86A7: AD 38 07  LDA ram_0738_se_index
C - - - - - 0x0146BA 05:86AA: AA        TAX
C - - - - - 0x0146BB 05:86AB: 0A        ASL
C - - - - - 0x0146BC 05:86AC: 0A        ASL
C - - - - - 0x0146BD 05:86AD: A8        TAY
C - - - - - 0x0146BE 05:86AE: B9 CE 07  LDA ram_07CE,Y
C - - - - - 0x0146C1 05:86B1: 29 F0     AND #$F0
C - - - - - 0x0146C3 05:86B3: 05 02     ORA ram_0002
C - - - - - 0x0146C5 05:86B5: 4C 34 88  JMP loc_8834



loc_86B8:
C D 0 - - - 0x0146C8 05:86B8: 86 02     STX ram_0002
C - - - - - 0x0146CA 05:86BA: E0 03     CPX #$03
C - - - - - 0x0146CC 05:86BC: D0 01     BNE bra_86BF
C - - - - - 0x0146CE 05:86BE: CA        DEX
bra_86BF:
C - - - - - 0x0146CF 05:86BF: 9D B9 07  STA ram_07B9_se,X
C - - - - - 0x0146D2 05:86C2: A6 02     LDX ram_0002
C - - - - - 0x0146D4 05:86C4: 60        RTS



sub_86C5:
C - - - - - 0x0146D5 05:86C5: 8A        TXA
C - - - - - 0x0146D6 05:86C6: 0A        ASL
C - - - - - 0x0146D7 05:86C7: 0A        ASL
C - - - - - 0x0146D8 05:86C8: A8        TAY
C - - - - - 0x0146D9 05:86C9: C8        INY
C - - - - - 0x0146DA 05:86CA: B9 CE 07  LDA ram_07CE,Y
C - - - - - 0x0146DD 05:86CD: 4C 34 88  JMP loc_8834



sub_86D0:
C - - - - - 0x0146E0 05:86D0: BD 30 07  LDA ram_0730_se_flags,X
C - - - - - 0x0146E3 05:86D3: 29 7F     AND #con_0730_80 ^ $FF
C - - - - - 0x0146E5 05:86D5: 9D 30 07  STA ram_0730_se_flags,X
C - - - - - 0x0146E8 05:86D8: 8A        TXA
C - - - - - 0x0146E9 05:86D9: 29 03     AND #$03
C - - - - - 0x0146EB 05:86DB: C9 02     CMP #$02
C - - - - - 0x0146ED 05:86DD: F0 2A     BEQ bra_8709
C - - - - - 0x0146EF 05:86DF: E0 04     CPX #$04
C - - - - - 0x0146F1 05:86E1: B0 05     BCS bra_86E8
C - - - - - 0x0146F3 05:86E3: A9 02     LDA #$02
C - - - - - 0x0146F5 05:86E5: 4C B8 86  JMP loc_86B8
bra_86E8:
C - - - - - 0x0146F8 05:86E8: 8A        TXA
C - - - - - 0x0146F9 05:86E9: 0A        ASL
C - - - - - 0x0146FA 05:86EA: 0A        ASL
C - - - - - 0x0146FB 05:86EB: A8        TAY
C - - - - - 0x0146FC 05:86EC: B9 CE 07  LDA ram_07CE,Y
C - - - - - 0x0146FF 05:86EF: 29 F0     AND #$F0
C - - - - - 0x014701 05:86F1: 4C 34 88  JMP loc_8834
- - - - - - 0x014704 05:86F4: 8A        TXA
- - - - - - 0x014705 05:86F5: 0A        ASL
- - - - - - 0x014706 05:86F6: 0A        ASL
- - - - - - 0x014707 05:86F7: A8        TAY
- - - - - - 0x014708 05:86F8: A9 81     LDA #$81
- - - - - - 0x01470A 05:86FA: 4C 34 88  JMP loc_8834
bra_86FD:
C - - - - - 0x01470D 05:86FD: 20 36 87  JSR sub_8736
C - - - - - 0x014710 05:8700: 8A        TXA
C - - - - - 0x014711 05:8701: 0A        ASL
C - - - - - 0x014712 05:8702: 0A        ASL
C - - - - - 0x014713 05:8703: A8        TAY
C - - - - - 0x014714 05:8704: A9 81     LDA #$81
C - - - - - 0x014716 05:8706: 4C 34 88  JMP loc_8834
bra_8709:
C - - - - - 0x014719 05:8709: 8A        TXA
C - - - - - 0x01471A 05:870A: 0A        ASL
C - - - - - 0x01471B 05:870B: 0A        ASL
C - - - - - 0x01471C 05:870C: A8        TAY
C - - - - - 0x01471D 05:870D: A9 80     LDA #$80
C - - - - - 0x01471F 05:870F: 4C 34 88  JMP loc_8834



sub_8712:
C - - - - - 0x014722 05:8712: BD 30 07  LDA ram_0730_se_flags,X
C - - - - - 0x014725 05:8715: 10 01     BPL bra_8718    ; if not con_0730_80
C - - - - - 0x014727 05:8717: 60        RTS
bra_8718:
C - - - - - 0x014728 05:8718: 09 80     ORA #con_0730_80
C - - - - - 0x01472A 05:871A: 9D 30 07  STA ram_0730_se_flags,X
C - - - - - 0x01472D 05:871D: 8A        TXA
C - - - - - 0x01472E 05:871E: 29 03     AND #$03
C - - - - - 0x014730 05:8720: C9 02     CMP #$02
C - - - - - 0x014732 05:8722: F0 D9     BEQ bra_86FD
C - - - - - 0x014734 05:8724: E0 04     CPX #$04
C - - - - - 0x014736 05:8726: 90 06     BCC bra_872E
C - - - - - 0x014738 05:8728: 20 36 87  JSR sub_8736
C - - - - - 0x01473B 05:872B: 4C 6B 87  JMP loc_876B
bra_872E:
C - - - - - 0x01473E 05:872E: 20 36 87  JSR sub_8736
C - - - - - 0x014741 05:8731: A9 01     LDA #$01
C - - - - - 0x014743 05:8733: 4C B8 86  JMP loc_86B8



sub_8736:
C - - - - - 0x014746 05:8736: 8A        TXA
C - - - - - 0x014747 05:8737: 0A        ASL
C - - - - - 0x014748 05:8738: 0A        ASL
C - - - - - 0x014749 05:8739: A8        TAY
C - - - - - 0x01474A 05:873A: C8        INY
C - - - - - 0x01474B 05:873B: C8        INY
C - - - - - 0x01474C 05:873C: B9 CE 07  LDA ram_07CE,Y
C - - - - - 0x01474F 05:873F: 20 34 88  JSR sub_8834
C - - - - - 0x014752 05:8742: C8        INY
C - - - - - 0x014753 05:8743: B9 CE 07  LDA ram_07CE,Y
C - - - - - 0x014756 05:8746: 4C 34 88  JMP loc_8834



sub_8749:
C - - - - - 0x014759 05:8749: 8A        TXA
C - - - - - 0x01475A 05:874A: 0A        ASL
C - - - - - 0x01475B 05:874B: 0A        ASL
C - - - - - 0x01475C 05:874C: A8        TAY
C - - - - - 0x01475D 05:874D: B9 CE 07  LDA ram_07CE,Y
C - - - - - 0x014760 05:8750: 20 34 88  JSR sub_8834
C - - - - - 0x014763 05:8753: C8        INY
C - - - - - 0x014764 05:8754: B9 CE 07  LDA ram_07CE,Y
C - - - - - 0x014767 05:8757: 4C 34 88  JMP loc_8834



sub_875A:
C - - - - - 0x01476A 05:875A: 8A        TXA
C - - - - - 0x01476B 05:875B: 29 03     AND #$03
C - - - - - 0x01476D 05:875D: C9 02     CMP #$02
C - - - - - 0x01476F 05:875F: F0 09     BEQ bra_876A_RTS
C - - - - - 0x014771 05:8761: E0 04     CPX #$04
C - - - - - 0x014773 05:8763: 90 05     BCC bra_876A_RTS
C - - - - - 0x014775 05:8765: BD 30 07  LDA ram_0730_se_flags,X
C - - - - - 0x014778 05:8768: 30 01     BMI bra_876B    ; if con_0730_80
bra_876A_RTS:
C - - - - - 0x01477A 05:876A: 60        RTS
bra_876B:
loc_876B:
C D 0 - - - 0x01477B 05:876B: BD 64 07  LDA ram_0764_se,X
C - - - - - 0x01477E 05:876E: 4A        LSR
C - - - - - 0x01477F 05:876F: 4A        LSR
C - - - - - 0x014780 05:8770: 4A        LSR
C - - - - - 0x014781 05:8771: 29 0F     AND #$0F
C - - - - - 0x014783 05:8773: 09 30     ORA #$30
C - - - - - 0x014785 05:8775: 48        PHA
C - - - - - 0x014786 05:8776: 8A        TXA
C - - - - - 0x014787 05:8777: 0A        ASL
C - - - - - 0x014788 05:8778: 0A        ASL
C - - - - - 0x014789 05:8779: A8        TAY
C - - - - - 0x01478A 05:877A: B9 CE 07  LDA ram_07CE,Y
C - - - - - 0x01478D 05:877D: 29 F0     AND #$F0
C - - - - - 0x01478F 05:877F: 99 CE 07  STA ram_07CE,Y
C - - - - - 0x014792 05:8782: 68        PLA
C - - - - - 0x014793 05:8783: 19 CE 07  ORA ram_07CE,Y
C - - - - - 0x014796 05:8786: 4C 34 88  JMP loc_8834



sub_8789:
C - - - - - 0x014799 05:8789: 8A        TXA
C - - - - - 0x01479A 05:878A: 29 03     AND #$03
C - - - - - 0x01479C 05:878C: C9 03     CMP #$03
C - - - - - 0x01479E 05:878E: D0 33     BNE bra_87C3
C - - - - - 0x0147A0 05:8790: E0 03     CPX #$03
C - - - - - 0x0147A2 05:8792: F0 0E     BEQ bra_87A2
C - - - - - 0x0147A4 05:8794: BD 54 07  LDA ram_0754_se,X
loc_8797:
C D 0 - - - 0x0147A7 05:8797: 48        PHA
C - - - - - 0x0147A8 05:8798: 8A        TXA
C - - - - - 0x0147A9 05:8799: 0A        ASL
C - - - - - 0x0147AA 05:879A: 0A        ASL
C - - - - - 0x0147AB 05:879B: A8        TAY
C - - - - - 0x0147AC 05:879C: C8        INY
C - - - - - 0x0147AD 05:879D: C8        INY
C - - - - - 0x0147AE 05:879E: 68        PLA
C - - - - - 0x0147AF 05:879F: 4C 34 88  JMP loc_8834
bra_87A2:
C - - - - - 0x0147B2 05:87A2: AD EE 07  LDA ram_07EE_se_data
C - - - - - 0x0147B5 05:87A5: 85 02     STA ram_0002
C - - - - - 0x0147B7 05:87A7: AD EF 07  LDA ram_07EE_se_data + $01
C - - - - - 0x0147BA 05:87AA: 85 03     STA ram_0003
C - - - - - 0x0147BC 05:87AC: BD 54 07  LDA ram_0754_se,X
C - - - - - 0x0147BF 05:87AF: 0A        ASL
C - - - - - 0x0147C0 05:87B0: 0A        ASL
C - - - - - 0x0147C1 05:87B1: A8        TAY
C - - - - - 0x0147C2 05:87B2: B1 02     LDA (ram_0002),Y
C - - - - - 0x0147C4 05:87B4: 8D B5 07  STA ram_07B3_se + $02
C - - - - - 0x0147C7 05:87B7: C8        INY
C - - - - - 0x0147C8 05:87B8: B1 02     LDA (ram_0002),Y
C - - - - - 0x0147CA 05:87BA: 8D B8 07  STA ram_07B6_se + $02
C - - - - - 0x0147CD 05:87BD: C8        INY
C - - - - - 0x0147CE 05:87BE: B1 02     LDA (ram_0002),Y
C - - - - - 0x0147D0 05:87C0: 4C 97 87  JMP loc_8797
bra_87C3:
C - - - - - 0x0147D3 05:87C3: E0 04     CPX #$04
C - - - - - 0x0147D5 05:87C5: B0 21     BCS bra_87E8
C - - - - - 0x0147D7 05:87C7: BD BF 07  LDA ram_07BF_se,X
C - - - - - 0x0147DA 05:87CA: 30 0E     BMI bra_87DA
C - - - - - 0x0147DC 05:87CC: 18        CLC
C - - - - - 0x0147DD 05:87CD: 7D 5C 07  ADC ram_075C_se,X
C - - - - - 0x0147E0 05:87D0: 85 02     STA ram_0002
C - - - - - 0x0147E2 05:87D2: BD 54 07  LDA ram_0754_se,X
C - - - - - 0x0147E5 05:87D5: 69 00     ADC #$00
C - - - - - 0x0147E7 05:87D7: 4C F0 87  JMP loc_87F0
bra_87DA:
C - - - - - 0x0147EA 05:87DA: 18        CLC
C - - - - - 0x0147EB 05:87DB: 7D 5C 07  ADC ram_075C_se,X
C - - - - - 0x0147EE 05:87DE: 85 02     STA ram_0002
C - - - - - 0x0147F0 05:87E0: BD 54 07  LDA ram_0754_se,X
C - - - - - 0x0147F3 05:87E3: E9 00     SBC #$00
C - - - - - 0x0147F5 05:87E5: 4C F0 87  JMP loc_87F0
bra_87E8:
C - - - - - 0x0147F8 05:87E8: BD 5C 07  LDA ram_075C_se,X
C - - - - - 0x0147FB 05:87EB: 85 02     STA ram_0002
C - - - - - 0x0147FD 05:87ED: BD 54 07  LDA ram_0754_se,X
loc_87F0:
C D 0 - - - 0x014800 05:87F0: 29 3F     AND #$3F
C - - - - - 0x014802 05:87F2: A8        TAY
C - - - - - 0x014803 05:87F3: B9 F8 88  LDA tbl_88F8,Y
C - - - - - 0x014806 05:87F6: 85 00     STA ram_0000
C - - - - - 0x014808 05:87F8: B9 39 89  LDA tbl_8939,Y
C - - - - - 0x01480B 05:87FB: 85 01     STA ram_0001
C - - - - - 0x01480D 05:87FD: A5 02     LDA ram_0002
C - - - - - 0x01480F 05:87FF: F0 18     BEQ bra_8819
C - - - - - 0x014811 05:8801: A5 00     LDA ram_0000
C - - - - - 0x014813 05:8803: 38        SEC
C - - - - - 0x014814 05:8804: F9 F9 88  SBC tbl_88F8 + $01,Y
C - - - - - 0x014817 05:8807: 85 03     STA ram_0003
C - - - - - 0x014819 05:8809: 20 DD 88  JSR sub_88DD
C - - - - - 0x01481C 05:880C: A5 00     LDA ram_0000
C - - - - - 0x01481E 05:880E: 38        SEC
C - - - - - 0x01481F 05:880F: E5 02     SBC ram_0002
C - - - - - 0x014821 05:8811: 85 00     STA ram_0000
C - - - - - 0x014823 05:8813: A5 01     LDA ram_0001
C - - - - - 0x014825 05:8815: E9 00     SBC #$00
C - - - - - 0x014827 05:8817: 85 01     STA ram_0001
bra_8819:
C - - - - - 0x014829 05:8819: 8A        TXA
C - - - - - 0x01482A 05:881A: 0A        ASL
C - - - - - 0x01482B 05:881B: 0A        ASL
C - - - - - 0x01482C 05:881C: A8        TAY
C - - - - - 0x01482D 05:881D: C8        INY
C - - - - - 0x01482E 05:881E: C8        INY
C - - - - - 0x01482F 05:881F: A5 00     LDA ram_0000
C - - - - - 0x014831 05:8821: 20 34 88  JSR sub_8834
C - - - - - 0x014834 05:8824: C8        INY
C - - - - - 0x014835 05:8825: B9 CC 07  LDA ram_07CF - $03,Y ; 07CF 07D3 07D7 07DF 07E3 07E7
C - - - - - 0x014838 05:8828: 30 08     BMI bra_8832
C - - - - - 0x01483A 05:882A: A5 01     LDA ram_0001
C - - - - - 0x01483C 05:882C: D9 CE 07  CMP ram_07D1 - $03,Y ; 07D1 07D5 07D9 07E1 07E5 07E9
C - - - - - 0x01483F 05:882F: D0 01     BNE bra_8832
C - - - - - 0x014841 05:8831: 60        RTS
bra_8832:
C - - - - - 0x014842 05:8832: A5 01     LDA ram_0001
sub_8834:
loc_8834:
C D 0 - - - 0x014844 05:8834: 99 CE 07  STA ram_07CE,Y
C - - - - - 0x014847 05:8837: E0 04     CPX #$04
C - - - - - 0x014849 05:8839: B0 0A     BCS bra_8845
C - - - - - 0x01484B 05:883B: BD 34 07  LDA ram_0730_se_flags + $04,X
C - - - - - 0x01484E 05:883E: D0 11     BNE bra_8851_RTS    ; if not con_0730_00
C - - - - - 0x014850 05:8840: 8C F1 07  STY ram_STA_40xx_RTS + $01
C - - - - - 0x014853 05:8843: F0 06     BEQ bra_884B    ; jmp
bra_8845:
C - - - - - 0x014855 05:8845: 98        TYA
C - - - - - 0x014856 05:8846: 29 0F     AND #$0F
C - - - - - 0x014858 05:8848: 8D F1 07  STA ram_STA_40xx_RTS + $01
bra_884B:
C - - - - - 0x01485B 05:884B: B9 CE 07  LDA ram_07CE,Y
C - - - - - 0x01485E 05:884E: 4C F0 07  JMP ram_STA_40xx_RTS
bra_8851_RTS:
C - - - - - 0x014861 05:8851: 60        RTS



sub_8852:
C - - - - - 0x014862 05:8852: E0 03     CPX #$03
C - - - - - 0x014864 05:8854: F0 57     BEQ bra_88AD_RTS
C - - - - - 0x014866 05:8856: BD 30 07  LDA ram_0730_se_flags,X
C - - - - - 0x014869 05:8859: 29 10     AND #con_0730_10
C - - - - - 0x01486B 05:885B: F0 50     BEQ bra_88AD_RTS
C - - - - - 0x01486D 05:885D: DE C8 07  DEC ram_07C8_se,X
C - - - - - 0x014870 05:8860: 10 4B     BPL bra_88AD_RTS
C - - - - - 0x014872 05:8862: A9 00     LDA #$00
C - - - - - 0x014874 05:8864: 9D C8 07  STA ram_07C8_se,X
C - - - - - 0x014877 05:8867: BD CB 07  LDA ram_07CB_se,X
C - - - - - 0x01487A 05:886A: 4A        LSR
C - - - - - 0x01487B 05:886B: 85 03     STA ram_0003
C - - - - - 0x01487D 05:886D: 18        CLC
C - - - - - 0x01487E 05:886E: 7D BF 07  ADC ram_07BF_se,X
C - - - - - 0x014881 05:8871: 85 02     STA ram_0002
C - - - - - 0x014883 05:8873: BD C2 07  LDA ram_07C2_se,X
C - - - - - 0x014886 05:8876: 30 17     BMI bra_888F
C - - - - - 0x014888 05:8878: 18        CLC
C - - - - - 0x014889 05:8879: 65 02     ADC ram_0002
C - - - - - 0x01488B 05:887B: DD CB 07  CMP ram_07CB_se,X
C - - - - - 0x01488E 05:887E: 90 1F     BCC bra_889F
C - - - - - 0x014890 05:8880: A9 00     LDA #$00
C - - - - - 0x014892 05:8882: 38        SEC
C - - - - - 0x014893 05:8883: FD C2 07  SBC ram_07C2_se,X
C - - - - - 0x014896 05:8886: 9D C2 07  STA ram_07C2_se,X
C - - - - - 0x014899 05:8889: BD CB 07  LDA ram_07CB_se,X
C - - - - - 0x01489C 05:888C: 4C 9F 88  JMP loc_889F
bra_888F:
C - - - - - 0x01489F 05:888F: 18        CLC
C - - - - - 0x0148A0 05:8890: 65 02     ADC ram_0002
C - - - - - 0x0148A2 05:8892: B0 0B     BCS bra_889F
C - - - - - 0x0148A4 05:8894: A9 00     LDA #$00
C - - - - - 0x0148A6 05:8896: 38        SEC
C - - - - - 0x0148A7 05:8897: FD C2 07  SBC ram_07C2_se,X
C - - - - - 0x0148AA 05:889A: 9D C2 07  STA ram_07C2_se,X
C - - - - - 0x0148AD 05:889D: A9 00     LDA #$00
bra_889F:
loc_889F:
C D 0 - - - 0x0148AF 05:889F: 38        SEC
C - - - - - 0x0148B0 05:88A0: E5 03     SBC ram_0003
C - - - - - 0x0148B2 05:88A2: 9D BF 07  STA ram_07BF_se,X
C - - - - - 0x0148B5 05:88A5: BD 28 07  LDA ram_0728_se_flags,X
C - - - - - 0x0148B8 05:88A8: 09 20     ORA #con_0728_20
C - - - - - 0x0148BA 05:88AA: 9D 28 07  STA ram_0728_se_flags,X
bra_88AD_RTS:
C - - - - - 0x0148BD 05:88AD: 60        RTS



sub_88AE:
C - - - - - 0x0148BE 05:88AE: BD C5 07  LDA ram_07C5_se,X
C - - - - - 0x0148C1 05:88B1: 9D C8 07  STA ram_07C8_se,X
C - - - - - 0x0148C4 05:88B4: A9 00     LDA #$00
C - - - - - 0x0148C6 05:88B6: 9D BF 07  STA ram_07BF_se,X
C - - - - - 0x0148C9 05:88B9: BD C2 07  LDA ram_07C2_se,X
C - - - - - 0x0148CC 05:88BC: 10 11     BPL bra_88CF_RTS
C - - - - - 0x0148CE 05:88BE: A9 00     LDA #$00
C - - - - - 0x0148D0 05:88C0: 38        SEC
C - - - - - 0x0148D1 05:88C1: FD C2 07  SBC ram_07C2_se,X
C - - - - - 0x0148D4 05:88C4: 9D C2 07  STA ram_07C2_se,X
C - - - - - 0x0148D7 05:88C7: BD 28 07  LDA ram_0728_se_flags,X
C - - - - - 0x0148DA 05:88CA: 09 20     ORA #con_0728_20
C - - - - - 0x0148DC 05:88CC: 9D 28 07  STA ram_0728_se_flags,X
bra_88CF_RTS:
C - - - - - 0x0148DF 05:88CF: 60        RTS



sub_88D0:
C - - - - - 0x0148E0 05:88D0: 98        TYA
C - - - - - 0x0148E1 05:88D1: 18        CLC
C - - - - - 0x0148E2 05:88D2: 65 00     ADC ram_0000
C - - - - - 0x0148E4 05:88D4: 85 00     STA ram_0000
C - - - - - 0x0148E6 05:88D6: 90 02     BCC bra_88DA
C - - - - - 0x0148E8 05:88D8: E6 01     INC ram_0001
bra_88DA:
C - - - - - 0x0148EA 05:88DA: A0 00     LDY #$00
C - - - - - 0x0148EC 05:88DC: 60        RTS



sub_88DD:
C - - - - - 0x0148ED 05:88DD: A5 02     LDA ram_0002
C - - - - - 0x0148EF 05:88DF: D0 01     BNE bra_88E2
C - - - - - 0x0148F1 05:88E1: 60        RTS
bra_88E2:
C - - - - - 0x0148F2 05:88E2: 8A        TXA
C - - - - - 0x0148F3 05:88E3: 48        PHA
C - - - - - 0x0148F4 05:88E4: A9 00     LDA #$00
C - - - - - 0x0148F6 05:88E6: A2 08     LDX #$08
bra_88E8_loop:
C - - - - - 0x0148F8 05:88E8: 46 02     LSR ram_0002
C - - - - - 0x0148FA 05:88EA: 90 03     BCC bra_88EF
C - - - - - 0x0148FC 05:88EC: 18        CLC
C - - - - - 0x0148FD 05:88ED: 65 03     ADC ram_0003
bra_88EF:
C - - - - - 0x0148FF 05:88EF: 6A        ROR
C - - - - - 0x014900 05:88F0: CA        DEX
C - - - - - 0x014901 05:88F1: D0 F5     BNE bra_88E8_loop
C - - - - - 0x014903 05:88F3: 85 02     STA ram_0002
C - - - - - 0x014905 05:88F5: 68        PLA
C - - - - - 0x014906 05:88F6: AA        TAX
C - - - - - 0x014907 05:88F7: 60        RTS



tbl_88F8:
- D 0 - - - 0x014908 05:88F8: FF        .byte $FF   ; 00 
- D 0 - - - 0x014909 05:88F9: 9A        .byte $9A   ; 01 
- D 0 - - - 0x01490A 05:88FA: 2D        .byte $2D   ; 02 
- D 0 - - - 0x01490B 05:88FB: C6        .byte $C6   ; 03 
- D 0 - - - 0x01490C 05:88FC: 64        .byte $64   ; 04 
- D 0 - - - 0x01490D 05:88FD: 08        .byte $08   ; 05 
- D 0 - - - 0x01490E 05:88FE: B2        .byte $B2   ; 06 
- D 0 - - - 0x01490F 05:88FF: 60        .byte $60   ; 07 
- D 0 - - - 0x014910 05:8900: 13        .byte $13   ; 08 
- D 0 - - - 0x014911 05:8901: CA        .byte $CA   ; 09 
- D 0 - - - 0x014912 05:8902: 85        .byte $85   ; 0A 
- D 0 - - - 0x014913 05:8903: 44        .byte $44   ; 0B 
- D 0 - - - 0x014914 05:8904: 07        .byte $07   ; 0C 
- D 0 - - - 0x014915 05:8905: CD        .byte $CD   ; 0D 
- D 0 - - - 0x014916 05:8906: 96        .byte $96   ; 0E 
- D 0 - - - 0x014917 05:8907: 63        .byte $63   ; 0F 
- D 0 - - - 0x014918 05:8908: 32        .byte $32   ; 10 
- D 0 - - - 0x014919 05:8909: 04        .byte $04   ; 11 
- D 0 - - - 0x01491A 05:890A: D9        .byte $D9   ; 12 
- D 0 - - - 0x01491B 05:890B: B0        .byte $B0   ; 13 
- D 0 - - - 0x01491C 05:890C: 89        .byte $89   ; 14 
- D 0 - - - 0x01491D 05:890D: 65        .byte $65   ; 15 
- D 0 - - - 0x01491E 05:890E: 42        .byte $42   ; 16 
- D 0 - - - 0x01491F 05:890F: 22        .byte $22   ; 17 
- D 0 - - - 0x014920 05:8910: 03        .byte $03   ; 18 
- D 0 - - - 0x014921 05:8911: E6        .byte $E6   ; 19 
- D 0 - - - 0x014922 05:8912: CB        .byte $CB   ; 1A 
- D 0 - - - 0x014923 05:8913: B1        .byte $B1   ; 1B 
- D 0 - - - 0x014924 05:8914: 99        .byte $99   ; 1C 
- D 0 - - - 0x014925 05:8915: 82        .byte $82   ; 1D 
- D 0 - - - 0x014926 05:8916: 6C        .byte $6C   ; 1E 
- D 0 - - - 0x014927 05:8917: 58        .byte $58   ; 1F 
- D 0 - - - 0x014928 05:8918: 44        .byte $44   ; 20 
- D 0 - - - 0x014929 05:8919: 32        .byte $32   ; 21 
- D 0 - - - 0x01492A 05:891A: 21        .byte $21   ; 22 
- D 0 - - - 0x01492B 05:891B: 11        .byte $11   ; 23 
- D 0 - - - 0x01492C 05:891C: 01        .byte $01   ; 24 
- D 0 - - - 0x01492D 05:891D: F3        .byte $F3   ; 25 
- D 0 - - - 0x01492E 05:891E: E5        .byte $E5   ; 26 
- D 0 - - - 0x01492F 05:891F: D8        .byte $D8   ; 27 
- D 0 - - - 0x014930 05:8920: CC        .byte $CC   ; 28 
- D 0 - - - 0x014931 05:8921: C1        .byte $C1   ; 29 
- D 0 - - - 0x014932 05:8922: B6        .byte $B6   ; 2A 
- D 0 - - - 0x014933 05:8923: AC        .byte $AC   ; 2B 
- D 0 - - - 0x014934 05:8924: A2        .byte $A2   ; 2C 
- D 0 - - - 0x014935 05:8925: 99        .byte $99   ; 2D 
- D 0 - - - 0x014936 05:8926: 90        .byte $90   ; 2E 
- D 0 - - - 0x014937 05:8927: 88        .byte $88   ; 2F 
- D 0 - - - 0x014938 05:8928: 80        .byte $80   ; 30 
- D 0 - - - 0x014939 05:8929: 79        .byte $79   ; 31 
- D 0 - - - 0x01493A 05:892A: 72        .byte $72   ; 32 
- D 0 - - - 0x01493B 05:892B: 6C        .byte $6C   ; 33 
- D 0 - - - 0x01493C 05:892C: 66        .byte $66   ; 34 
- D 0 - - - 0x01493D 05:892D: 60        .byte $60   ; 35 
- D 0 - - - 0x01493E 05:892E: 5B        .byte $5B   ; 36 
- D 0 - - - 0x01493F 05:892F: 56        .byte $56   ; 37 
- D 0 - - - 0x014940 05:8930: 51        .byte $51   ; 38 
- D 0 - - - 0x014941 05:8931: 4C        .byte $4C   ; 39 
- D 0 - - - 0x014942 05:8932: 49        .byte $49   ; 3A 
- D 0 - - - 0x014943 05:8933: 45        .byte $45   ; 3B 
- D 0 - - - 0x014944 05:8934: 40        .byte $40   ; 3C 
- D 0 - - - 0x014945 05:8935: 3D        .byte $3D   ; 3D 
- D 0 - - - 0x014946 05:8936: 39        .byte $39   ; 3E 
- D 0 - - - 0x014947 05:8937: 36        .byte $36   ; 3F 
- D 0 - - - 0x014948 05:8938: 33        .byte $33   ; 



tbl_8939:
- D 0 - - - 0x014949 05:8939: 07        .byte $07   ; 00 
- D 0 - - - 0x01494A 05:893A: 07        .byte $07   ; 01 
- D 0 - - - 0x01494B 05:893B: 07        .byte $07   ; 02 
- D 0 - - - 0x01494C 05:893C: 06        .byte $06   ; 03 
- D 0 - - - 0x01494D 05:893D: 06        .byte $06   ; 04 
- D 0 - - - 0x01494E 05:893E: 06        .byte $06   ; 05 
- D 0 - - - 0x01494F 05:893F: 05        .byte $05   ; 06 
- D 0 - - - 0x014950 05:8940: 05        .byte $05   ; 07 
- D 0 - - - 0x014951 05:8941: 05        .byte $05   ; 08 
- D 0 - - - 0x014952 05:8942: 04        .byte $04   ; 09 
- D 0 - - - 0x014953 05:8943: 04        .byte $04   ; 0A 
- D 0 - - - 0x014954 05:8944: 04        .byte $04   ; 0B 
- D 0 - - - 0x014955 05:8945: 04        .byte $04   ; 0C 
- D 0 - - - 0x014956 05:8946: 03        .byte $03   ; 0D 
- D 0 - - - 0x014957 05:8947: 03        .byte $03   ; 0E 
- D 0 - - - 0x014958 05:8948: 03        .byte $03   ; 0F 
- D 0 - - - 0x014959 05:8949: 03        .byte $03   ; 10 
- D 0 - - - 0x01495A 05:894A: 03        .byte $03   ; 11 
- D 0 - - - 0x01495B 05:894B: 02        .byte $02   ; 12 
- D 0 - - - 0x01495C 05:894C: 02        .byte $02   ; 13 
- D 0 - - - 0x01495D 05:894D: 02        .byte $02   ; 14 
- D 0 - - - 0x01495E 05:894E: 02        .byte $02   ; 15 
- D 0 - - - 0x01495F 05:894F: 02        .byte $02   ; 16 
- D 0 - - - 0x014960 05:8950: 02        .byte $02   ; 17 
- D 0 - - - 0x014961 05:8951: 02        .byte $02   ; 18 
- D 0 - - - 0x014962 05:8952: 01        .byte $01   ; 19 
- D 0 - - - 0x014963 05:8953: 01        .byte $01   ; 1A 
- D 0 - - - 0x014964 05:8954: 01        .byte $01   ; 1B 
- D 0 - - - 0x014965 05:8955: 01        .byte $01   ; 1C 
- D 0 - - - 0x014966 05:8956: 01        .byte $01   ; 1D 
- D 0 - - - 0x014967 05:8957: 01        .byte $01   ; 1E 
- D 0 - - - 0x014968 05:8958: 01        .byte $01   ; 1F 
- D 0 - - - 0x014969 05:8959: 01        .byte $01   ; 20 
- D 0 - - - 0x01496A 05:895A: 01        .byte $01   ; 21 
- D 0 - - - 0x01496B 05:895B: 01        .byte $01   ; 22 
- D 0 - - - 0x01496C 05:895C: 01        .byte $01   ; 23 
- D 0 - - - 0x01496D 05:895D: 01        .byte $01   ; 24 
- D 0 - - - 0x01496E 05:895E: 00        .byte $00   ; 25 
- D 0 - - - 0x01496F 05:895F: 00        .byte $00   ; 26 
- D 0 - - - 0x014970 05:8960: 00        .byte $00   ; 27 
- D 0 - - - 0x014971 05:8961: 00        .byte $00   ; 28 
- D 0 - - - 0x014972 05:8962: 00        .byte $00   ; 29 
- D 0 - - - 0x014973 05:8963: 00        .byte $00   ; 2A 
- D 0 - - - 0x014974 05:8964: 00        .byte $00   ; 2B 
- D 0 - - - 0x014975 05:8965: 00        .byte $00   ; 2C 
- D 0 - - - 0x014976 05:8966: 00        .byte $00   ; 2D 
- D 0 - - - 0x014977 05:8967: 00        .byte $00   ; 2E 
- D 0 - - - 0x014978 05:8968: 00        .byte $00   ; 2F 
- D 0 - - - 0x014979 05:8969: 00        .byte $00   ; 30 
- D 0 - - - 0x01497A 05:896A: 00        .byte $00   ; 31 
- D 0 - - - 0x01497B 05:896B: 00        .byte $00   ; 32 
- D 0 - - - 0x01497C 05:896C: 00        .byte $00   ; 33 
- D 0 - - - 0x01497D 05:896D: 00        .byte $00   ; 34 
- D 0 - - - 0x01497E 05:896E: 00        .byte $00   ; 35 
- D 0 - - - 0x01497F 05:896F: 00        .byte $00   ; 36 
- D 0 - - - 0x014980 05:8970: 00        .byte $00   ; 37 
- D 0 - - - 0x014981 05:8971: 00        .byte $00   ; 38 
- D 0 - - - 0x014982 05:8972: 00        .byte $00   ; 39 
- D 0 - - - 0x014983 05:8973: 00        .byte $00   ; 3A 
- D 0 - - - 0x014984 05:8974: 00        .byte $00   ; 3B 
- D 0 - - - 0x014985 05:8975: 00        .byte $00   ; 3C 
- D 0 - - - 0x014986 05:8976: 00        .byte $00   ; 3D 
- D 0 - - - 0x014987 05:8977: 00        .byte $00   ; 3E 
- D 0 - - - 0x014988 05:8978: 00        .byte $00   ; 3F 


; bzk garbage
- - - - - - 0x014989 05:8979: 00        .byte $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x014990 05:8980: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x0149A0 05:8990: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x0149B0 05:89A0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x0149C0 05:89B0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x0149D0 05:89C0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x0149E0 05:89D0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x0149F0 05:89E0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x014A00 05:89F0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 



tbl_8A00_music_data:
; music
- D 0 - - - 0x014A10 05:8A00: 2F 8C     .word _off013_8C2F_01_logo_and_menu
- D 0 - - - 0x014A12 05:8A02: 71 92     .word _off013_9271_02_mission_2
- D 0 - - - 0x014A14 05:8A04: E7 95     .word _off013_95E7_03_mission_1
- D 0 - - - 0x014A16 05:8A06: 80 98     .word _off013_9880_04_mission_5
- D 0 - - - 0x014A18 05:8A08: 12 9C     .word _off013_9C12_05_mission_8
- D 0 - - - 0x014A1A 05:8A0A: 2E 9E     .word _off013_9E2E_06_mission_7
- D 0 - - - 0x014A1C 05:8A0C: 29 A0     .word _off013_A029_07_mission_6
- D 0 - - - 0x014A1E 05:8A0E: 14 A1     .word _off013_A114_08_boss_normal
- D 0 - - - 0x014A20 05:8A10: 0A A3     .word _off013_A30A_09_boss_tractor
- D 0 - - - 0x014A22 05:8A12: 45 A4     .word _off013_A445_0A_mission_complete
- - - - - - 0x014A24 05:8A14: 45 A7     .word _off013_A745_0B
- D 0 - - - 0x014A26 05:8A16: C8 A8     .word _off013_A8C8_0C_mission_9
- D 0 - - - 0x014A28 05:8A18: 7D A9     .word _off013_A97D_0D_boss_clone
- D 0 - - - 0x014A2A 05:8A1A: 56 AB     .word _off013_AB56_0E_mission_info
- D 0 - - - 0x014A2C 05:8A1C: 2F AC     .word _off013_AC2F_0F_mission_3
- D 0 - - - 0x014A2E 05:8A1E: 20 AD     .word _off013_AD20_10_mission_4
- D 0 - - - 0x014A30 05:8A20: CD AE     .word _off013_AECD_11_boss_final
- D 0 - - - 0x014A32 05:8A22: 46 B2     .word _off013_B246_12_game_over
- D 0 - - - 0x014A34 05:8A24: 45 A7     .word _off013_A745_13_final_cutscene
- D 0 - - - 0x014A36 05:8A26: 3C A5     .word _off013_A53C_14
- - - - - - 0x014A38 05:8A28: AD B2     .word _off013_B2AD_15
- - - - - - 0x014A3A 05:8A2A: AD B2     .word _off013_B2AD_16
- - - - - - 0x014A3C 05:8A2C: AD B2     .word _off013_B2AD_17
- - - - - - 0x014A3E 05:8A2E: AD B2     .word _off013_B2AD_18
; sfx
- D 0 - - - 0x014A40 05:8A30: BC B2     .word _off013_B2BC_19
- D 0 - - - 0x014A42 05:8A32: E6 B2     .word _off013_B2E6_1A
- D 0 - - - 0x014A44 05:8A34: 25 B3     .word _off013_B325_1B
- D 0 - - - 0x014A46 05:8A36: 96 B3     .word _off013_B396_1C
- D 0 - - - 0x014A48 05:8A38: BD B3     .word _off013_B3BD_1D
- D 0 - - - 0x014A4A 05:8A3A: DF B3     .word _off013_B3DF_1E
- D 0 - - - 0x014A4C 05:8A3C: 46 B4     .word _off013_B446_1F
- D 0 - - - 0x014A4E 05:8A3E: 82 B4     .word _off013_B482_20
- D 0 - - - 0x014A50 05:8A40: A6 B4     .word _off013_B4A6_21
- D 0 - - - 0x014A52 05:8A42: E4 B4     .word _off013_B4E4_22
- D 0 - - - 0x014A54 05:8A44: 1F B5     .word _off013_B51F_23
- D 0 - - - 0x014A56 05:8A46: 39 B5     .word _off013_B539_24
- - - - - - 0x014A58 05:8A48: 83 B5     .word _off013_B583_25
- D 0 - - - 0x014A5A 05:8A4A: C7 B5     .word _off013_B5C7_26
- D 0 - - - 0x014A5C 05:8A4C: E8 B5     .word _off013_B5E8_27
- - - - - - 0x014A5E 05:8A4E: 31 B6     .word _off013_B631_28
- D 0 - - - 0x014A60 05:8A50: 6E B6     .word _off013_B66E_29
- - - - - - 0x014A62 05:8A52: A5 B6     .word _off013_B6A5_2A
- - - - - - 0x014A64 05:8A54: C8 B6     .word _off013_B6C8_2B
- - - - - - 0x014A66 05:8A56: F0 B6     .word _off013_B6F0_2C
- D 0 - - - 0x014A68 05:8A58: 05 B7     .word _off013_B705_2D
- D 0 - - - 0x014A6A 05:8A5A: 37 B7     .word _off013_B737_2E
- - - - - - 0x014A6C 05:8A5C: 56 B7     .word _off013_B756_2F
- - - - - - 0x014A6E 05:8A5E: A3 B7     .word _off013_B7A3_30
- - - - - - 0x014A70 05:8A60: AE B7     .word _off013_B7AE_31
- - - - - - 0x014A72 05:8A62: D1 B7     .word _off013_B7D1_32
- - - - - - 0x014A74 05:8A64: EC B7     .word _off013_B7EC_33
- - - - - - 0x014A76 05:8A66: 1B B8     .word _off013_B81B_34
- - - - - - 0x014A78 05:8A68: 36 B8     .word _off013_B836_35
- - - - - - 0x014A7A 05:8A6A: 77 B8     .word _off013_B877_36
- D 0 - - - 0x014A7C 05:8A6C: 96 B8     .word _off013_B896_37
- D 0 - - - 0x014A7E 05:8A6E: B4 B8     .word _off013_B8B4_38
- D 0 - - - 0x014A80 05:8A70: F0 BB     .word _off013_BBF0_39
- D 0 - - - 0x014A82 05:8A72: 25 B9     .word _off013_B925_3A
- D 0 - - - 0x014A84 05:8A74: 55 B9     .word _off013_B955_3B
- D 0 - - - 0x014A86 05:8A76: 9F B9     .word _off013_B99F_3C
- D 0 - - - 0x014A88 05:8A78: CF B9     .word _off013_B9CF_3D
- D 0 - - - 0x014A8A 05:8A7A: F2 B9     .word _off013_B9F2_3E
- D 0 - - - 0x014A8C 05:8A7C: 40 BA     .word _off013_BA40_3F
- D 0 - - - 0x014A8E 05:8A7E: 5D BA     .word _off013_BA5D_40
- - - - - - 0x014A90 05:8A80: 6E BA     .word _off013_BA6E_41
- - - - - - 0x014A92 05:8A82: 91 BA     .word _off013_BA91_42
- D 0 - - - 0x014A94 05:8A84: B7 BA     .word _off013_BAB7_43
- - - - - - 0x014A96 05:8A86: ED BA     .word _off013_BAED_44
- - - - - - 0x014A98 05:8A88: 36 BB     .word _off013_BB36_45
- D 0 - - - 0x014A9A 05:8A8A: 6C BB     .word _off013_BB6C_46
- D 0 - - - 0x014A9C 05:8A8C: 8D BB     .word _off013_BB8D_47
- - - - - - 0x014A9E 05:8A8E: A2 BB     .word _off013_BBA2_48
- D 0 - - - 0x014AA0 05:8A90: 24 BC     .word _off013_BC24_49
- D 0 - - - 0x014AA2 05:8A92: 3E BC     .word _off013_BC3E_4A
- D 0 - - - 0x014AA4 05:8A94: A3 BC     .word _off013_BCA3_4B
- D 0 - - - 0x014AA6 05:8A96: 36 BD     .word _off013_BD36_4C
- D 0 - - - 0x014AA8 05:8A98: 4A BD     .word _off013_BD4A_4D
- D 0 - - - 0x014AAA 05:8A9A: 68 BD     .word _off013_BD68_4E
- D 0 - - - 0x014AAC 05:8A9C: 91 BD     .word _off013_BD91_4F
- D 0 - - - 0x014AAE 05:8A9E: CC BD     .word _off013_BDCC_50
- D 0 - - - 0x014AB0 05:8AA0: EF BD     .word _off013_BDEF_51
- D 0 - - - 0x014AB2 05:8AA2: 12 BE     .word _off013_BE12_52
- D 0 - - - 0x014AB4 05:8AA4: A6 BE     .word _off013_BEA6_53



ofs_CD_8AA6:
- - - - - - 0x014AB6 05:8AA6: 00        .byte $00   ; 
- - - - - - 0x014AB7 05:8AA7: 00        .byte $00   ; 
- D 0 - I - 0x014AB8 05:8AA8: F0        .byte $F0   ; 
- D 0 - I - 0x014AB9 05:8AA9: 08        .byte $08   ; 



ofs_CD_8AAA:
- - - - - - 0x014ABA 05:8AAA: 00        .byte $00   ; 
- - - - - - 0x014ABB 05:8AAB: 00        .byte $00   ; 
- D 0 - I - 0x014ABC 05:8AAC: B0        .byte $B0   ; 
- D 0 - I - 0x014ABD 05:8AAD: 08        .byte $08   ; 



ofs_CD_8AAE:
- - - - - - 0x014ABE 05:8AAE: 00        .byte $00   ; 
- - - - - - 0x014ABF 05:8AAF: 00        .byte $00   ; 
- D 0 - I - 0x014AC0 05:8AB0: 70        .byte $70   ; 
- D 0 - I - 0x014AC1 05:8AB1: 08        .byte $08   ; 



ofs_CD_8AB2:
- - - - - - 0x014AC2 05:8AB2: 00        .byte $00   ; 
- - - - - - 0x014AC3 05:8AB3: 00        .byte $00   ; 
- D 0 - I - 0x014AC4 05:8AB4: 30        .byte $30   ; 
- D 0 - I - 0x014AC5 05:8AB5: 08        .byte $08   ; 



ofs_CD_8AB6:
- D 0 - I - 0x014AC6 05:8AB6: E6 8A     .word off_8AE6
- D 0 - I - 0x014AC8 05:8AB8: F0        .byte $F0   ; 
- D 0 - I - 0x014AC9 05:8AB9: 08        .byte $08   ; 



ofs_CD_8ABA:
- D 0 - I - 0x014ACA 05:8ABA: E6 8A     .word off_8AE6
- D 0 - I - 0x014ACC 05:8ABC: B0        .byte $B0   ; 
- D 0 - I - 0x014ACD 05:8ABD: 08        .byte $08   ; 


; bzk garbage
- - - - - - 0x014ACE 05:8ABE: E6        .byte $E6   ; 
- - - - - - 0x014ACF 05:8ABF: 8A        .byte $8A   ; 
- - - - - - 0x014AD0 05:8AC0: 70        .byte $70   ; 
- - - - - - 0x014AD1 05:8AC1: 08        .byte $08   ; 
- - - - - - 0x014AD2 05:8AC2: E6        .byte $E6   ; 
- - - - - - 0x014AD3 05:8AC3: 8A        .byte $8A   ; 
- - - - - - 0x014AD4 05:8AC4: 30        .byte $30   ; 
- - - - - - 0x014AD5 05:8AC5: 08        .byte $08   ; 
- - - - - - 0x014AD6 05:8AC6: EF        .byte $EF   ; 
- - - - - - 0x014AD7 05:8AC7: 8A        .byte $8A   ; 
- - - - - - 0x014AD8 05:8AC8: F0        .byte $F0   ; 
- - - - - - 0x014AD9 05:8AC9: 08        .byte $08   ; 



ofs_CD_8ACA:
- D 0 - I - 0x014ADA 05:8ACA: EF 8A     .word off_8AEF
- D 0 - I - 0x014ADC 05:8ACC: B0        .byte $B0   ; 
- D 0 - I - 0x014ADD 05:8ACD: 08        .byte $08   ; 


; bzk garbage
- - - - - - 0x014ADE 05:8ACE: EF        .byte $EF   ; 
- - - - - - 0x014ADF 05:8ACF: 8A        .byte $8A   ; 
- - - - - - 0x014AE0 05:8AD0: 70        .byte $70   ; 
- - - - - - 0x014AE1 05:8AD1: 08        .byte $08   ; 
- - - - - - 0x014AE2 05:8AD2: EF        .byte $EF   ; 
- - - - - - 0x014AE3 05:8AD3: 8A        .byte $8A   ; 
- - - - - - 0x014AE4 05:8AD4: 30        .byte $30   ; 
- - - - - - 0x014AE5 05:8AD5: 08        .byte $08   ; 



ofs_CD_8AD6:
- D 0 - I - 0x014AE6 05:8AD6: 16 8B     .word off_8B16
- D 0 - I - 0x014AE8 05:8AD8: F0        .byte $F0   ; 
- D 0 - I - 0x014AE9 05:8AD9: 08        .byte $08   ; 



- - - - - - 0x014AEA 05:8ADA: 16        .byte $16   ; 
- - - - - - 0x014AEB 05:8ADB: 8B        .byte $8B   ; 
- - - - - - 0x014AEC 05:8ADC: B0        .byte $B0   ; 
- - - - - - 0x014AED 05:8ADD: 08        .byte $08   ; 
- - - - - - 0x014AEE 05:8ADE: 16        .byte $16   ; 
- - - - - - 0x014AEF 05:8ADF: 8B        .byte $8B   ; 
- - - - - - 0x014AF0 05:8AE0: 70        .byte $70   ; 
- - - - - - 0x014AF1 05:8AE1: 08        .byte $08   ; 



ofs_CD_8AE2:
- D 0 - I - 0x014AF2 05:8AE2: 16 8B     .word off_8B16
- D 0 - I - 0x014AF4 05:8AE4: 30        .byte $30   ; 
- D 0 - I - 0x014AF5 05:8AE5: 08        .byte $08   ; 



off_8AE6:
- D 0 - I - 0x014AF6 05:8AE6: E1        .byte $E1   ; 
- D 0 - I - 0x014AF7 05:8AE7: 22        .byte $22   ; 
- D 0 - I - 0x014AF8 05:8AE8: FF        .byte $FF   ; 
- D 0 - I - 0x014AF9 05:8AE9: 05        .byte $05   ; 
- D 0 - I - 0x014AFA 05:8AEA: 04        .byte $04   ; 
- D 0 - I - 0x014AFB 05:8AEB: 00        .byte $00   ; 
- D 0 - I - 0x014AFC 05:8AEC: 28        .byte $28   ; 
- D 0 - I - 0x014AFD 05:8AED: 02        .byte $02   ; 
- D 0 - I - 0x014AFE 05:8AEE: 00        .byte $00   ; 



off_8AEF:
- D 0 - I - 0x014AFF 05:8AEF: FF        .byte $FF   ; 
- D 0 - I - 0x014B00 05:8AF0: 21        .byte $21   ; 
- D 0 - I - 0x014B01 05:8AF1: FF        .byte $FF   ; 
- D 0 - I - 0x014B02 05:8AF2: 00        .byte $00   ; 
- D 0 - I - 0x014B03 05:8AF3: 10        .byte $10   ; 
- D 0 - I - 0x014B04 05:8AF4: E9        .byte $E9   ; 
- D 0 - I - 0x014B05 05:8AF5: 04        .byte $04   ; 
- D 0 - I - 0x014B06 05:8AF6: 13        .byte $13   ; 
- D 0 - I - 0x014B07 05:8AF7: 04        .byte $04   ; 
- D 0 - I - 0x014B08 05:8AF8: E9        .byte $E9   ; 
- D 0 - I - 0x014B09 05:8AF9: 04        .byte $04   ; 
- D 0 - I - 0x014B0A 05:8AFA: 13        .byte $13   ; 
- D 0 - I - 0x014B0B 05:8AFB: 04        .byte $04   ; 
- D 0 - I - 0x014B0C 05:8AFC: E9        .byte $E9   ; 
- D 0 - I - 0x014B0D 05:8AFD: 04        .byte $04   ; 
- D 0 - I - 0x014B0E 05:8AFE: 13        .byte $13   ; 
- D 0 - I - 0x014B0F 05:8AFF: 04        .byte $04   ; 
- D 0 - I - 0x014B10 05:8B00: E9        .byte $E9   ; 
- D 0 - I - 0x014B11 05:8B01: 04        .byte $04   ; 
- D 0 - I - 0x014B12 05:8B02: 13        .byte $13   ; 
- D 0 - I - 0x014B13 05:8B03: 04        .byte $04   ; 
- D 0 - I - 0x014B14 05:8B04: E9        .byte $E9   ; 
- D 0 - I - 0x014B15 05:8B05: 04        .byte $04   ; 
- D 0 - I - 0x014B16 05:8B06: 13        .byte $13   ; 
- D 0 - I - 0x014B17 05:8B07: 04        .byte $04   ; 
- D 0 - I - 0x014B18 05:8B08: E9        .byte $E9   ; 
- D 0 - I - 0x014B19 05:8B09: 04        .byte $04   ; 
- D 0 - I - 0x014B1A 05:8B0A: 13        .byte $13   ; 
- D 0 - I - 0x014B1B 05:8B0B: 04        .byte $04   ; 
- D 0 - I - 0x014B1C 05:8B0C: E9        .byte $E9   ; 
- D 0 - I - 0x014B1D 05:8B0D: 04        .byte $04   ; 
- D 0 - I - 0x014B1E 05:8B0E: 13        .byte $13   ; 
- D 0 - I - 0x014B1F 05:8B0F: 04        .byte $04   ; 
- D 0 - I - 0x014B20 05:8B10: E9        .byte $E9   ; 
- D 0 - I - 0x014B21 05:8B11: 04        .byte $04   ; 
- D 0 - I - 0x014B22 05:8B12: 13        .byte $13   ; 
- D 0 - I - 0x014B23 05:8B13: 04        .byte $04   ; 
- D 0 - I - 0x014B24 05:8B14: FD        .byte $FD   ; 
- D 0 - I - 0x014B25 05:8B15: 00        .byte $00   ; 



off_8B16:
- D 0 - I - 0x014B26 05:8B16: 96        .byte $96   ; 
- D 0 - I - 0x014B27 05:8B17: 22        .byte $22   ; 
- D 0 - I - 0x014B28 05:8B18: FF        .byte $FF   ; 
- D 0 - I - 0x014B29 05:8B19: 0A        .byte $0A   ; 
- D 0 - I - 0x014B2A 05:8B1A: 0A        .byte $0A   ; 
- D 0 - I - 0x014B2B 05:8B1B: 00        .byte $00   ; 
- D 0 - I - 0x014B2C 05:8B1C: 28        .byte $28   ; 
- D 0 - I - 0x014B2D 05:8B1D: FF        .byte $FF   ; 
- D 0 - I - 0x014B2E 05:8B1E: 00        .byte $00   ; 



ofs_CD_8B1F:
- D 0 - I - 0x014B2F 05:8B1F: 54 8B     .word off_8B54
- D 0 - I - 0x014B31 05:8B21: F0        .byte $F0   ; 
- D 0 - I - 0x014B32 05:8B22: 08        .byte $08   ; 



ofs_CD_8B23:
- D 0 - I - 0x014B33 05:8B23: 54 8B     .word off_8B54
- D 0 - I - 0x014B35 05:8B25: B0        .byte $B0   ; 
- D 0 - I - 0x014B36 05:8B26: 08        .byte $08   ; 


; bzk garbage
- - - - - - 0x014B37 05:8B27: 54        .byte $54   ; 
- - - - - - 0x014B38 05:8B28: 8B        .byte $8B   ; 
- - - - - - 0x014B39 05:8B29: 70        .byte $70   ; 
- - - - - - 0x014B3A 05:8B2A: 08        .byte $08   ; 
- - - - - - 0x014B3B 05:8B2B: 54        .byte $54   ; 
- - - - - - 0x014B3C 05:8B2C: 8B        .byte $8B   ; 
- - - - - - 0x014B3D 05:8B2D: 30        .byte $30   ; 
- - - - - - 0x014B3E 05:8B2E: 08        .byte $08   ; 



ofs_CD_8B2F:
- D 0 - I - 0x014B3F 05:8B2F: 5D 8B     .word off_8B5D
- D 0 - I - 0x014B41 05:8B31: F0        .byte $F0   ; 
- D 0 - I - 0x014B42 05:8B32: 08        .byte $08   ; 



ofs_CD_8B33:
- D 0 - I - 0x014B43 05:8B33: 37 8B     .word off_8B37
- D 0 - I - 0x014B45 05:8B35: F0        .byte $F0   ; 
- D 0 - I - 0x014B46 05:8B36: 08        .byte $08   ; 



off_8B37:
- D 0 - I - 0x014B47 05:8B37: FF        .byte $FF   ; 
- D 0 - I - 0x014B48 05:8B38: 0A        .byte $0A   ; 
- - - - - - 0x014B49 05:8B39: FF        .byte $FF   ; 
- D 0 - I - 0x014B4A 05:8B3A: FA        .byte $FA   ; 
- D 0 - I - 0x014B4B 05:8B3B: 12        .byte $12   ; 
- D 0 - I - 0x014B4C 05:8B3C: 06        .byte $06   ; 
- D 0 - I - 0x014B4D 05:8B3D: 12        .byte $12   ; 
- D 0 - I - 0x014B4E 05:8B3E: FA        .byte $FA   ; 
- D 0 - I - 0x014B4F 05:8B3F: 12        .byte $12   ; 
- D 0 - I - 0x014B50 05:8B40: 06        .byte $06   ; 
- D 0 - I - 0x014B51 05:8B41: 12        .byte $12   ; 
- D 0 - I - 0x014B52 05:8B42: FA        .byte $FA   ; 
- D 0 - I - 0x014B53 05:8B43: 12        .byte $12   ; 
- D 0 - I - 0x014B54 05:8B44: 06        .byte $06   ; 
- D 0 - I - 0x014B55 05:8B45: 12        .byte $12   ; 
- D 0 - I - 0x014B56 05:8B46: FA        .byte $FA   ; 
- D 0 - I - 0x014B57 05:8B47: 12        .byte $12   ; 
- D 0 - I - 0x014B58 05:8B48: 06        .byte $06   ; 
- D 0 - I - 0x014B59 05:8B49: 12        .byte $12   ; 
- - - - - - 0x014B5A 05:8B4A: FA        .byte $FA   ; 
- - - - - - 0x014B5B 05:8B4B: 12        .byte $12   ; 
- - - - - - 0x014B5C 05:8B4C: 06        .byte $06   ; 
- - - - - - 0x014B5D 05:8B4D: 12        .byte $12   ; 
- - - - - - 0x014B5E 05:8B4E: FA        .byte $FA   ; 
- - - - - - 0x014B5F 05:8B4F: 12        .byte $12   ; 
- - - - - - 0x014B60 05:8B50: 06        .byte $06   ; 
- - - - - - 0x014B61 05:8B51: 12        .byte $12   ; 
- - - - - - 0x014B62 05:8B52: FD        .byte $FD   ; 
- - - - - - 0x014B63 05:8B53: 00        .byte $00   ; 



off_8B54:
- D 0 - I - 0x014B64 05:8B54: FA        .byte $FA   ; 
- D 0 - I - 0x014B65 05:8B55: 28        .byte $28   ; 
- D 0 - I - 0x014B66 05:8B56: FF        .byte $FF   ; 
- D 0 - I - 0x014B67 05:8B57: 00        .byte $00   ; 
- D 0 - I - 0x014B68 05:8B58: 08        .byte $08   ; 
- D 0 - I - 0x014B69 05:8B59: EE        .byte $EE   ; 
- D 0 - I - 0x014B6A 05:8B5A: 08        .byte $08   ; 
- D 0 - I - 0x014B6B 05:8B5B: FE        .byte $FE   ; 
- D 0 - I - 0x014B6C 05:8B5C: 00        .byte $00   ; 



off_8B5D:
- D 0 - I - 0x014B6D 05:8B5D: FA        .byte $FA   ; 
- D 0 - I - 0x014B6E 05:8B5E: 21        .byte $21   ; 
- D 0 - I - 0x014B6F 05:8B5F: FF        .byte $FF   ; 
- D 0 - I - 0x014B70 05:8B60: 00        .byte $00   ; 
- D 0 - I - 0x014B71 05:8B61: 08        .byte $08   ; 
- D 0 - I - 0x014B72 05:8B62: F6        .byte $F6   ; 
- D 0 - I - 0x014B73 05:8B63: 08        .byte $08   ; 
- D 0 - I - 0x014B74 05:8B64: FF        .byte $FF   ; 
- D 0 - I - 0x014B75 05:8B65: 00        .byte $00   ; 


; bzk garbage
- - - - - - 0x014B76 05:8B66: 7E 8B     .word off_8B7E
- - - - - - 0x014B78 05:8B68: F0        .byte $F0   ; 
- - - - - - 0x014B79 05:8B69: 08        .byte $08   ; 
- - - - - - 0x014B7A 05:8B6A: 7E 8B     .word off_8B7E
- - - - - - 0x014B7C 05:8B6C: B0        .byte $B0   ; 
- - - - - - 0x014B7D 05:8B6D: 08        .byte $08   ; 



ofs_CD_8B6E:
- D 0 - I - 0x014B7E 05:8B6E: 7E 8B     .word off_8B7E
- D 0 - I - 0x014B80 05:8B70: 70        .byte $70   ; 
- D 0 - I - 0x014B81 05:8B71: 08        .byte $08   ; 



ofs_CD_8B72:
- D 0 - I - 0x014B82 05:8B72: 7E 8B     .word off_8B7E
- D 0 - I - 0x014B84 05:8B74: 30        .byte $30   ; 
- D 0 - I - 0x014B85 05:8B75: 08        .byte $08   ; 



ofs_CD_8B76:
- D 0 - I - 0x014B86 05:8B76: 85 8B     .word off_8B85
- D 0 - I - 0x014B88 05:8B78: 30        .byte $30   ; 
- D 0 - I - 0x014B89 05:8B79: 08        .byte $08   ; 



ofs_CD_8B7A:
- D 0 - I - 0x014B8A 05:8B7A: 8C 8B     .word off_8B8C
- D 0 - I - 0x014B8C 05:8B7C: 30        .byte $30   ; 
- D 0 - I - 0x014B8D 05:8B7D: 08        .byte $08   ; 



off_8B7E:
- D 0 - I - 0x014B8E 05:8B7E: FA        .byte $FA   ; 
- D 0 - I - 0x014B8F 05:8B7F: 21        .byte $21   ; 
- D 0 - I - 0x014B90 05:8B80: FF        .byte $FF   ; 
- D 0 - I - 0x014B91 05:8B81: F1        .byte $F1   ; 
- D 0 - I - 0x014B92 05:8B82: 08        .byte $08   ; 
- D 0 - I - 0x014B93 05:8B83: F8        .byte $F8   ; 
- D 0 - I - 0x014B94 05:8B84: 00        .byte $00   ; 



off_8B85:
- - - - - - 0x014B95 05:8B85: FA        .byte $FA   ; 
- D 0 - I - 0x014B96 05:8B86: 21        .byte $21   ; 
- D 0 - I - 0x014B97 05:8B87: FF        .byte $FF   ; 
- - - - - - 0x014B98 05:8B88: F1        .byte $F1   ; 
- - - - - - 0x014B99 05:8B89: 08        .byte $08   ; 
- - - - - - 0x014B9A 05:8B8A: FF        .byte $FF   ; 
- - - - - - 0x014B9B 05:8B8B: 00        .byte $00   ; 



off_8B8C:
- D 0 - I - 0x014B9C 05:8B8C: FF        .byte $FF   ; 
- D 0 - I - 0x014B9D 05:8B8D: 2D        .byte $2D   ; 
- D 0 - I - 0x014B9E 05:8B8E: FF        .byte $FF   ; 
- D 0 - I - 0x014B9F 05:8B8F: F1        .byte $F1   ; 
- D 0 - I - 0x014BA0 05:8B90: 04        .byte $04   ; 
- D 0 - I - 0x014BA1 05:8B91: 03        .byte $03   ; 
- D 0 - I - 0x014BA2 05:8B92: 00        .byte $00   ; 


; bzk garbage
- - - - - - 0x014BA3 05:8B93: A3        .byte $A3   ; 
- - - - - - 0x014BA4 05:8B94: 8B        .byte $8B   ; 
- - - - - - 0x014BA5 05:8B95: F0        .byte $F0   ; 
- - - - - - 0x014BA6 05:8B96: 08        .byte $08   ; 
- - - - - - 0x014BA7 05:8B97: A3        .byte $A3   ; 
- - - - - - 0x014BA8 05:8B98: 8B        .byte $8B   ; 
- - - - - - 0x014BA9 05:8B99: B0        .byte $B0   ; 
- - - - - - 0x014BAA 05:8B9A: 08        .byte $08   ; 
- - - - - - 0x014BAB 05:8B9B: A3        .byte $A3   ; 
- - - - - - 0x014BAC 05:8B9C: 8B        .byte $8B   ; 
- - - - - - 0x014BAD 05:8B9D: 70        .byte $70   ; 
- - - - - - 0x014BAE 05:8B9E: 08        .byte $08   ; 



ofs_CD_8B9F:
- D 0 - I - 0x014BAF 05:8B9F: A3 8B     .word off_8BA3
- D 0 - I - 0x014BB1 05:8BA1: 30        .byte $30   ; 
- D 0 - I - 0x014BB2 05:8BA2: 08        .byte $08   ; 



off_8BA3:
- D 0 - I - 0x014BB3 05:8BA3: FF        .byte $FF   ; 
- D 0 - I - 0x014BB4 05:8BA4: 21        .byte $21   ; 
- D 0 - I - 0x014BB5 05:8BA5: FF        .byte $FF   ; 
- D 0 - I - 0x014BB6 05:8BA6: E7        .byte $E7   ; 
- D 0 - I - 0x014BB7 05:8BA7: 07        .byte $07   ; 
- D 0 - I - 0x014BB8 05:8BA8: FC        .byte $FC   ; 
- D 0 - I - 0x014BB9 05:8BA9: 00        .byte $00   ; 



ofs_CD_8BAA:
- D 0 - I - 0x014BBA 05:8BAA: B2 8B     .word off_8BB2
- D 0 - I - 0x014BBC 05:8BAC: B0        .byte $B0   ; 
- D 0 - I - 0x014BBD 05:8BAD: 94        .byte $94   ; 


; bzk garbage
- - - - - - 0x014BBE 05:8BAE: B9        .byte $B9   ; 
- - - - - - 0x014BBF 05:8BAF: 8B        .byte $8B   ; 
- - - - - - 0x014BC0 05:8BB0: F0        .byte $F0   ; 
- - - - - - 0x014BC1 05:8BB1: A3        .byte $A3   ; 



off_8BB2:
- D 0 - I - 0x014BC2 05:8BB2: FF        .byte $FF   ; 
- D 0 - I - 0x014BC3 05:8BB3: 1E        .byte $1E   ; 
- D 0 - I - 0x014BC4 05:8BB4: FF        .byte $FF   ; 
- D 0 - I - 0x014BC5 05:8BB5: EC        .byte $EC   ; 
- D 0 - I - 0x014BC6 05:8BB6: 06        .byte $06   ; 
- D 0 - I - 0x014BC7 05:8BB7: FE        .byte $FE   ; 
- D 0 - I - 0x014BC8 05:8BB8: 00        .byte $00   ; 


; bzk garbage
- - - - - - 0x014BC9 05:8BB9: FF        .byte $FF   ; 
- - - - - - 0x014BCA 05:8BBA: 1E        .byte $1E   ; 
- - - - - - 0x014BCB 05:8BBB: FF        .byte $FF   ; 
- - - - - - 0x014BCC 05:8BBC: E2        .byte $E2   ; 
- - - - - - 0x014BCD 05:8BBD: 06        .byte $06   ; 
- - - - - - 0x014BCE 05:8BBE: FB        .byte $FB   ; 
- - - - - - 0x014BCF 05:8BBF: 00        .byte $00   ; 



off_8BC0:
- D 0 - I - 0x014BD0 05:8BC0: FF        .byte $FF   ; 
- D 0 - I - 0x014BD1 05:8BC1: 0E        .byte $0E   ; 
- D 0 - I - 0x014BD2 05:8BC2: FF        .byte $FF   ; 
- D 0 - I - 0x014BD3 05:8BC3: E7        .byte $E7   ; 
- D 0 - I - 0x014BD4 05:8BC4: 08        .byte $08   ; 
- D 0 - I - 0x014BD5 05:8BC5: F2        .byte $F2   ; 
- D 0 - I - 0x014BD6 05:8BC6: 00        .byte $00   ; 



off_8BC7:
- D 0 - I - 0x014BD7 05:8BC7: FF        .byte $FF   ; 
- D 0 - I - 0x014BD8 05:8BC8: 14        .byte $14   ; 
- D 0 - I - 0x014BD9 05:8BC9: FF        .byte $FF   ; 
- D 0 - I - 0x014BDA 05:8BCA: E7        .byte $E7   ; 
- D 0 - I - 0x014BDB 05:8BCB: 06        .byte $06   ; 
- D 0 - I - 0x014BDC 05:8BCC: FB        .byte $FB   ; 
- D 0 - I - 0x014BDD 05:8BCD: 00        .byte $00   ; 



off_8BCE:
- D 0 - I - 0x014BDE 05:8BCE: E1        .byte $E1   ; 
- D 0 - I - 0x014BDF 05:8BCF: 0A        .byte $0A   ; 
- D 0 - I - 0x014BE0 05:8BD0: FF        .byte $FF   ; 
- D 0 - I - 0x014BE1 05:8BD1: E7        .byte $E7   ; 
- D 0 - I - 0x014BE2 05:8BD2: 08        .byte $08   ; 
- D 0 - I - 0x014BE3 05:8BD3: FB        .byte $FB   ; 
- D 0 - I - 0x014BE4 05:8BD4: 00        .byte $00   ; 



off_8BD5:
- D 0 - I - 0x014BE5 05:8BD5: F0        .byte $F0   ; 
- D 0 - I - 0x014BE6 05:8BD6: 03        .byte $03   ; 
- D 0 - I - 0x014BE7 05:8BD7: FF        .byte $FF   ; 
- D 0 - I - 0x014BE8 05:8BD8: 00        .byte $00   ; 
- D 0 - I - 0x014BE9 05:8BD9: 01        .byte $01   ; 
- D 0 - I - 0x014BEA 05:8BDA: A6        .byte $A6   ; 
- D 0 - I - 0x014BEB 05:8BDB: 02        .byte $02   ; 
- D 0 - I - 0x014BEC 05:8BDC: FF        .byte $FF   ; 
- D 0 - I - 0x014BED 05:8BDD: 00        .byte $00   ; 



off_8BDE:
- D 0 - I - 0x014BEE 05:8BDE: B4        .byte $B4   ; 
- D 0 - I - 0x014BEF 05:8BDF: 03        .byte $03   ; 
- D 0 - I - 0x014BF0 05:8BE0: FF        .byte $FF   ; 
- D 0 - I - 0x014BF1 05:8BE1: A6        .byte $A6   ; 
- D 0 - I - 0x014BF2 05:8BE2: 00        .byte $00   ; 



off_8BE3:
- D 0 - I - 0x014BF3 05:8BE3: 7F        .byte $7F   ; 
- D 0 - I - 0x014BF4 05:8BE4: 05        .byte $05   ; 
- D 0 - I - 0x014BF5 05:8BE5: FF        .byte $FF   ; 
- D 0 - I - 0x014BF6 05:8BE6: 10        .byte $10   ; 
- D 0 - I - 0x014BF7 05:8BE7: 05        .byte $05   ; 
- D 0 - I - 0x014BF8 05:8BE8: F6        .byte $F6   ; 
- D 0 - I - 0x014BF9 05:8BE9: 04        .byte $04   ; 
- D 0 - I - 0x014BFA 05:8BEA: FF        .byte $FF   ; 
- D 0 - I - 0x014BFB 05:8BEB: 00        .byte $00   ; 



off_8BEC:
- D 0 - I - 0x014BFC 05:8BEC: FF        .byte $FF   ; 
- D 0 - I - 0x014BFD 05:8BED: 1E        .byte $1E   ; 
- D 0 - I - 0x014BFE 05:8BEE: FF        .byte $FF   ; 
- D 0 - I - 0x014BFF 05:8BEF: E2        .byte $E2   ; 
- D 0 - I - 0x014C00 05:8BF0: 05        .byte $05   ; 
- D 0 - I - 0x014C01 05:8BF1: FE        .byte $FE   ; 
- D 0 - I - 0x014C02 05:8BF2: 00        .byte $00   ; 



ofs_CD_8BF3:
- D 0 - I - 0x014C03 05:8BF3: D5 8B     .word off_8BD5
- D 0 - I - 0x014C05 05:8BF5: 0F        .byte $0F   ; 
- - - - - - 0x014C06 05:8BF6: 00        .byte $00   ; 
- D 0 - I - 0x014C07 05:8BF7: DE 8B     .word off_8BDE
- D 0 - I - 0x014C09 05:8BF9: 06        .byte $06   ; 
- - - - - - 0x014C0A 05:8BFA: 00        .byte $00   ; 
- D 0 - I - 0x014C0B 05:8BFB: C0 8B     .word off_8BC0
- D 0 - I - 0x014C0D 05:8BFD: 07        .byte $07   ; 
- - - - - - 0x014C0E 05:8BFE: 00        .byte $00   ; 
- D 0 - I - 0x014C0F 05:8BFF: C0 8B     .word off_8BC0
- D 0 - I - 0x014C11 05:8C01: 03        .byte $03   ; 
- - - - - - 0x014C12 05:8C02: 00        .byte $00   ; 
- - - - - - 0x014C13 05:8C03: C0 8B     .word off_8BC0
- - - - - - 0x014C15 05:8C05: 05        .byte $05   ; 
- - - - - - 0x014C16 05:8C06: 00        .byte $00   ; 
- - - - - - 0x014C17 05:8C07: C0 8B     .word off_8BC0
- - - - - - 0x014C19 05:8C09: 07        .byte $07   ; 
- - - - - - 0x014C1A 05:8C0A: 00        .byte $00   ; 
- - - - - - 0x014C1B 05:8C0B: C0 8B     .word off_8BC0
- - - - - - 0x014C1D 05:8C0D: 09        .byte $09   ; 
- - - - - - 0x014C1E 05:8C0E: 00        .byte $00   ; 
- - - - - - 0x014C1F 05:8C0F: C0 8B     .word off_8BC0
- - - - - - 0x014C21 05:8C11: 0B        .byte $0B   ; 
- - - - - - 0x014C22 05:8C12: 00        .byte $00   ; 
- - - - - - 0x014C23 05:8C13: C0 8B     .word off_8BC0
- - - - - - 0x014C25 05:8C15: 0D        .byte $0D   ; 
- - - - - - 0x014C26 05:8C16: 00        .byte $00   ; 
- D 0 - I - 0x014C27 05:8C17: EC 8B     .word off_8BEC
- D 0 - I - 0x014C29 05:8C19: 0C        .byte $0C   ; 
- - - - - - 0x014C2A 05:8C1A: 00        .byte $00   ; 
- D 0 - I - 0x014C2B 05:8C1B: E3 8B     .word off_8BE3
- D 0 - I - 0x014C2D 05:8C1D: 0C        .byte $0C   ; 
- - - - - - 0x014C2E 05:8C1E: 00        .byte $00   ; 
- D 0 - I - 0x014C2F 05:8C1F: C7 8B     .word off_8BC7
- D 0 - I - 0x014C31 05:8C21: 0C        .byte $0C   ; 
- - - - - - 0x014C32 05:8C22: 00        .byte $00   ; 
- D 0 - I - 0x014C33 05:8C23: CE 8B     .word off_8BCE
- D 0 - I - 0x014C35 05:8C25: 06        .byte $06   ; 
- - - - - - 0x014C36 05:8C26: 00        .byte $00   ; 
- D 0 - I - 0x014C37 05:8C27: E3 8B     .word off_8BE3
- D 0 - I - 0x014C39 05:8C29: 0D        .byte $0D   ; 
- - - - - - 0x014C3A 05:8C2A: 00        .byte $00   ; 
- D 0 - I - 0x014C3B 05:8C2B: E3 8B     .word off_8BE3
- D 0 - I - 0x014C3D 05:8C2D: 0E        .byte $0E   ; 
- - - - - - 0x014C3E 05:8C2E: 00        .byte $00   ; 



_off013_8C2F_01_logo_and_menu:
- D 0 - I - 0x014C3F 05:8C2F: FF        .byte $FF   ; 
- D 0 - I - 0x014C40 05:8C30: 00        .byte $00   ; 
- D 0 - I - 0x014C41 05:8C31: 3D 8C     .word off_ch_01_8C3D_00
- D 0 - I - 0x014C43 05:8C33: 01        .byte $01   ; 
- D 0 - I - 0x014C44 05:8C34: 8F 8D     .word off_ch_01_8D8F_01
- D 0 - I - 0x014C46 05:8C36: 02        .byte $02   ; 
- D 0 - I - 0x014C47 05:8C37: 0F 8F     .word off_ch_01_8F0F_02
- D 0 - I - 0x014C49 05:8C39: 03        .byte $03   ; 
- D 0 - I - 0x014C4A 05:8C3A: 6F 91     .word off_ch_01_916F_03
- D 0 - I - 0x014C4C 05:8C3C: FF        .byte $FF   ; 



off_ch_01_8C3D_00:
- D 0 - I - 0x014C4D 05:8C3D: CC        .byte con_se_cb_CC, $73   ; 
- D 0 - I - 0x014C4F 05:8C3F: D8        .byte con_se_cb_D8, $F8   ; 
- D 0 - I - 0x014C51 05:8C41: CD        .byte con_se_cb_CD   ; 
- D 0 - I - 0x014C52 05:8C42: CA 8A     .word ofs_CD_8ACA
- D 0 - I - 0x014C54 05:8C44: DB        .byte con_se_cb_DB, $12, $1E, $96   ; 
- D 0 - I - 0x014C58 05:8C48: C4        .byte con_se_cb_C4, $2F   ; 
- D 0 - I - 0x014C5A 05:8C4A: C7        .byte con_se_cb_C7, $C8   ; 
- D 0 - I - 0x014C5C 05:8C4C: 03        .byte $03   ; 
- D 0 - I - 0x014C5D 05:8C4D: A9        .byte $A9   ; 
- D 0 - I - 0x014C5E 05:8C4E: 80        .byte $80   ; 
loc_D0_8C4F:
- D 0 - I - 0x014C5F 05:8C4F: 09        .byte $09   ; 
- D 0 - I - 0x014C60 05:8C50: 69        .byte $69   ; 
- D 0 - I - 0x014C61 05:8C51: 03        .byte $03   ; 
- D 0 - I - 0x014C62 05:8C52: 69        .byte $69   ; 
- D 0 - I - 0x014C63 05:8C53: 06        .byte $06   ; 
- D 0 - I - 0x014C64 05:8C54: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014C65 05:8C55: 6B        .byte $6B   ; 
- D 0 - I - 0x014C66 05:8C56: 18        .byte $18   ; 
- D 0 - I - 0x014C67 05:8C57: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014C68 05:8C58: 09        .byte $09   ; 
- D 0 - I - 0x014C69 05:8C59: 6C        .byte $6C   ; 
- D 0 - I - 0x014C6A 05:8C5A: 03        .byte $03   ; 
- D 0 - I - 0x014C6B 05:8C5B: 6C        .byte $6C   ; 
- D 0 - I - 0x014C6C 05:8C5C: 06        .byte $06   ; 
- D 0 - I - 0x014C6D 05:8C5D: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014C6E 05:8C5E: 6E        .byte $6E   ; 
- D 0 - I - 0x014C6F 05:8C5F: 0C        .byte $0C   ; 
- D 0 - I - 0x014C70 05:8C60: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014C71 05:8C61: 06        .byte $06   ; 
- D 0 - I - 0x014C72 05:8C62: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014C73 05:8C63: 03        .byte $03   ; 
- D 0 - I - 0x014C74 05:8C64: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014C75 05:8C65: A9        .byte $A9   ; 
- D 0 - I - 0x014C76 05:8C66: 80        .byte $80   ; 
- D 0 - I - 0x014C77 05:8C67: 09        .byte $09   ; 
- D 0 - I - 0x014C78 05:8C68: 69        .byte $69   ; 
- D 0 - I - 0x014C79 05:8C69: 03        .byte $03   ; 
- D 0 - I - 0x014C7A 05:8C6A: 69        .byte $69   ; 
- D 0 - I - 0x014C7B 05:8C6B: 06        .byte $06   ; 
- D 0 - I - 0x014C7C 05:8C6C: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014C7D 05:8C6D: 6B        .byte $6B   ; 
- D 0 - I - 0x014C7E 05:8C6E: 18        .byte $18   ; 
- D 0 - I - 0x014C7F 05:8C6F: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014C80 05:8C70: 09        .byte $09   ; 
- D 0 - I - 0x014C81 05:8C71: 6C        .byte $6C   ; 
- D 0 - I - 0x014C82 05:8C72: 03        .byte $03   ; 
- D 0 - I - 0x014C83 05:8C73: 6C        .byte $6C   ; 
- D 0 - I - 0x014C84 05:8C74: 06        .byte $06   ; 
- D 0 - I - 0x014C85 05:8C75: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014C86 05:8C76: 6B        .byte $6B   ; 
- D 0 - I - 0x014C87 05:8C77: 0C        .byte $0C   ; 
- D 0 - I - 0x014C88 05:8C78: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014C89 05:8C79: 06        .byte $06   ; 
- D 0 - I - 0x014C8A 05:8C7A: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014C8B 05:8C7B: 03        .byte $03   ; 
- D 0 - I - 0x014C8C 05:8C7C: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014C8D 05:8C7D: A9        .byte $A9   ; 
- D 0 - I - 0x014C8E 05:8C7E: 80        .byte $80   ; 
- D 0 - I - 0x014C8F 05:8C7F: 09        .byte $09   ; 
- D 0 - I - 0x014C90 05:8C80: 69        .byte $69   ; 
- D 0 - I - 0x014C91 05:8C81: 03        .byte $03   ; 
- D 0 - I - 0x014C92 05:8C82: 69        .byte $69   ; 
- D 0 - I - 0x014C93 05:8C83: 06        .byte $06   ; 
- D 0 - I - 0x014C94 05:8C84: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014C95 05:8C85: 6B        .byte $6B   ; 
- D 0 - I - 0x014C96 05:8C86: 18        .byte $18   ; 
- D 0 - I - 0x014C97 05:8C87: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014C98 05:8C88: 09        .byte $09   ; 
- D 0 - I - 0x014C99 05:8C89: 6C        .byte $6C   ; 
- D 0 - I - 0x014C9A 05:8C8A: 03        .byte $03   ; 
- D 0 - I - 0x014C9B 05:8C8B: 6C        .byte $6C   ; 
- D 0 - I - 0x014C9C 05:8C8C: 06        .byte $06   ; 
- D 0 - I - 0x014C9D 05:8C8D: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014C9E 05:8C8E: 6E        .byte $6E   ; 
- D 0 - I - 0x014C9F 05:8C8F: 0C        .byte $0C   ; 
- D 0 - I - 0x014CA0 05:8C90: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014CA1 05:8C91: 06        .byte $06   ; 
- D 0 - I - 0x014CA2 05:8C92: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014CA3 05:8C93: 03        .byte $03   ; 
- D 0 - I - 0x014CA4 05:8C94: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014CA5 05:8C95: AE        .byte $AE   ; 
- D 0 - I - 0x014CA6 05:8C96: 80        .byte $80   ; 
- D 0 - I - 0x014CA7 05:8C97: 06        .byte $06   ; 
- D 0 - I - 0x014CA8 05:8C98: 6E        .byte $6E   ; 
- D 0 - I - 0x014CA9 05:8C99: 6E        .byte $6E   ; 
- D 0 - I - 0x014CAA 05:8C9A: 03        .byte $03   ; 
- D 0 - I - 0x014CAB 05:8C9B: 6E        .byte $6E   ; 
- D 0 - I - 0x014CAC 05:8C9C: 6E        .byte $6E   ; 
- D 0 - I - 0x014CAD 05:8C9D: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014CAE 05:8C9E: 6E        .byte $6E   ; 
- D 0 - I - 0x014CAF 05:8C9F: 0C        .byte $0C   ; 
- D 0 - I - 0x014CB0 05:8CA0: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014CB1 05:8CA1: 06        .byte $06   ; 
- D 0 - I - 0x014CB2 05:8CA2: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014CB3 05:8CA3: 03        .byte $03   ; 
- D 0 - I - 0x014CB4 05:8CA4: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014CB5 05:8CA5: AE        .byte $AE   ; 
- D 0 - I - 0x014CB6 05:8CA6: 80        .byte $80   ; 
- D 0 - I - 0x014CB7 05:8CA7: 06        .byte $06   ; 
- D 0 - I - 0x014CB8 05:8CA8: 6E        .byte $6E   ; 
- D 0 - I - 0x014CB9 05:8CA9: 6E        .byte $6E   ; 
- D 0 - I - 0x014CBA 05:8CAA: 03        .byte $03   ; 
- D 0 - I - 0x014CBB 05:8CAB: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014CBC 05:8CAC: 6E        .byte $6E   ; 
- D 0 - I - 0x014CBD 05:8CAD: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014CBE 05:8CAE: AE        .byte $AE   ; 
- D 0 - I - 0x014CBF 05:8CAF: 80        .byte $80   ; 
- D 0 - I - 0x014CC0 05:8CB0: 18        .byte $18   ; 
- D 0 - I - 0x014CC1 05:8CB1: AE        .byte $AE   ; 
- D 0 - I - 0x014CC2 05:8CB2: 80        .byte $80   ; 
- D 0 - I - 0x014CC3 05:8CB3: 09        .byte $09   ; 
- D 0 - I - 0x014CC4 05:8CB4: 6E        .byte $6E   ; 
- D 0 - I - 0x014CC5 05:8CB5: DD        .byte con_se_cb_DD   ; 
- D 0 - I - 0x014CC6 05:8CB6: CD        .byte con_se_cb_CD   ; 
- D 0 - I - 0x014CC7 05:8CB7: AA 8B     .word ofs_CD_8BAA
- D 0 - I - 0x014CC9 05:8CB9: C7        .byte con_se_cb_C7, $FF   ; 
- D 0 - I - 0x014CCB 05:8CBB: 09        .byte $09   ; 
- D 0 - I - 0x014CCC 05:8CBC: 5F        .byte $5F   ; 
- D 0 - I - 0x014CCD 05:8CBD: 06        .byte $06   ; 
- D 0 - I - 0x014CCE 05:8CBE: 5B        .byte $5B   ; 
- D 0 - I - 0x014CCF 05:8CBF: 0C        .byte $0C   ; 
- D 0 - I - 0x014CD0 05:8CC0: 56        .byte $56   ; 
- D 0 - I - 0x014CD1 05:8CC1: CD        .byte con_se_cb_CD   ; 
- D 0 - I - 0x014CD2 05:8CC2: CA 8A     .word ofs_CD_8ACA
- D 0 - I - 0x014CD4 05:8CC4: DC        .byte con_se_cb_DC   ; 
- D 0 - I - 0x014CD5 05:8CC5: C4        .byte con_se_cb_C4, $2F   ; 
- D 0 - I - 0x014CD7 05:8CC7: C7        .byte con_se_cb_C7, $C8   ; 
- D 0 - I - 0x014CD9 05:8CC9: 03        .byte $03   ; 
- D 0 - I - 0x014CDA 05:8CCA: 64        .byte $64   ; 
- D 0 - I - 0x014CDB 05:8CCB: 67        .byte $67   ; 
- D 0 - I - 0x014CDC 05:8CCC: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014CDD 05:8CCD: 69        .byte $69   ; 
- D 0 - I - 0x014CDE 05:8CCE: D1        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x014CDF 05:8CCF: 2F 8D     .word sub_D1_8D2F
- D 0 - I - 0x014CE1 05:8CD1: 18        .byte $18   ; 
- D 0 - I - 0x014CE2 05:8CD2: AE        .byte $AE   ; 
- D 0 - I - 0x014CE3 05:8CD3: 80        .byte $80   ; 
- D 0 - I - 0x014CE4 05:8CD4: 12        .byte $12   ; 
- D 0 - I - 0x014CE5 05:8CD5: 6E        .byte $6E   ; 
- D 0 - I - 0x014CE6 05:8CD6: 06        .byte $06   ; 
- D 0 - I - 0x014CE7 05:8CD7: B0        .byte $B0   ; 
- D 0 - I - 0x014CE8 05:8CD8: 80        .byte $80   ; 
- D 0 - I - 0x014CE9 05:8CD9: 18        .byte $18   ; 
- D 0 - I - 0x014CEA 05:8CDA: 70        .byte $70   ; 
- D 0 - I - 0x014CEB 05:8CDB: 0C        .byte $0C   ; 
- D 0 - I - 0x014CEC 05:8CDC: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014CED 05:8CDD: 03        .byte $03   ; 
- D 0 - I - 0x014CEE 05:8CDE: 64        .byte $64   ; 
- D 0 - I - 0x014CEF 05:8CDF: 67        .byte $67   ; 
- D 0 - I - 0x014CF0 05:8CE0: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014CF1 05:8CE1: 69        .byte $69   ; 
- D 0 - I - 0x014CF2 05:8CE2: D1        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x014CF3 05:8CE3: 2F 8D     .word sub_D1_8D2F
- D 0 - I - 0x014CF5 05:8CE5: 24        .byte $24   ; 
- D 0 - I - 0x014CF6 05:8CE6: 6E        .byte $6E   ; 
- D 0 - I - 0x014CF7 05:8CE7: 03        .byte $03   ; 
- D 0 - I - 0x014CF8 05:8CE8: 6E        .byte $6E   ; 
- D 0 - I - 0x014CF9 05:8CE9: 71        .byte $71   ; 
- D 0 - I - 0x014CFA 05:8CEA: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014CFB 05:8CEB: B3        .byte $B3   ; 
- D 0 - I - 0x014CFC 05:8CEC: 80        .byte $80   ; 
- D 0 - I - 0x014CFD 05:8CED: 18        .byte $18   ; 
- D 0 - I - 0x014CFE 05:8CEE: 73        .byte $73   ; 
- D 0 - I - 0x014CFF 05:8CEF: 09        .byte $09   ; 
- D 0 - I - 0x014D00 05:8CF0: 6B        .byte $6B   ; 
- D 0 - I - 0x014D01 05:8CF1: 03        .byte $03   ; 
- D 0 - I - 0x014D02 05:8CF2: AC        .byte $AC   ; 
- D 0 - I - 0x014D03 05:8CF3: 80        .byte $80   ; 
- D 0 - I - 0x014D04 05:8CF4: 06        .byte $06   ; 
- D 0 - I - 0x014D05 05:8CF5: 6C        .byte $6C   ; 
- D 0 - I - 0x014D06 05:8CF6: 6E        .byte $6E   ; 
off_CE_8CF7:
- D 0 - I - 0x014D07 05:8CF7: 65        .byte $65   ; 
- D 0 - I - 0x014D08 05:8CF8: 69        .byte $69   ; 
- D 0 - I - 0x014D09 05:8CF9: 6C        .byte $6C   ; 
- D 0 - I - 0x014D0A 05:8CFA: A7        .byte $A7   ; 
- D 0 - I - 0x014D0B 05:8CFB: 80        .byte $80   ; 
- D 0 - I - 0x014D0C 05:8CFC: 67        .byte $67   ; 
- D 0 - I - 0x014D0D 05:8CFD: 6B        .byte $6B   ; 
- D 0 - I - 0x014D0E 05:8CFE: 6E        .byte $6E   ; 
- D 0 - I - 0x014D0F 05:8CFF: AC        .byte $AC   ; 
- D 0 - I - 0x014D10 05:8D00: 80        .byte $80   ; 
- D 0 - I - 0x014D11 05:8D01: 0C        .byte $0C   ; 
- D 0 - I - 0x014D12 05:8D02: 6C        .byte $6C   ; 
- D 0 - I - 0x014D13 05:8D03: 6C        .byte $6C   ; 
- D 0 - I - 0x014D14 05:8D04: 09        .byte $09   ; 
- D 0 - I - 0x014D15 05:8D05: 6E        .byte $6E   ; 
- D 0 - I - 0x014D16 05:8D06: 67        .byte $67   ; 
- D 0 - I - 0x014D17 05:8D07: 06        .byte $06   ; 
- D 0 - I - 0x014D18 05:8D08: 69        .byte $69   ; 
- D 0 - I - 0x014D19 05:8D09: CE        .byte con_se_cb_loop_1, $02   ; 
- D 0 - I - 0x014D1B 05:8D0B: F7 8C     .word off_CE_8CF7
- D 0 - I - 0x014D1D 05:8D0D: 65        .byte $65   ; 
- D 0 - I - 0x014D1E 05:8D0E: 69        .byte $69   ; 
- D 0 - I - 0x014D1F 05:8D0F: 6C        .byte $6C   ; 
- D 0 - I - 0x014D20 05:8D10: A7        .byte $A7   ; 
- D 0 - I - 0x014D21 05:8D11: 80        .byte $80   ; 
- D 0 - I - 0x014D22 05:8D12: 67        .byte $67   ; 
- D 0 - I - 0x014D23 05:8D13: 6B        .byte $6B   ; 
- D 0 - I - 0x014D24 05:8D14: 6E        .byte $6E   ; 
- D 0 - I - 0x014D25 05:8D15: AC        .byte $AC   ; 
- D 0 - I - 0x014D26 05:8D16: 80        .byte $80   ; 
- D 0 - I - 0x014D27 05:8D17: 0C        .byte $0C   ; 
- D 0 - I - 0x014D28 05:8D18: 6C        .byte $6C   ; 
- D 0 - I - 0x014D29 05:8D19: 6C        .byte $6C   ; 
- D 0 - I - 0x014D2A 05:8D1A: 06        .byte $06   ; 
- D 0 - I - 0x014D2B 05:8D1B: 6E        .byte $6E   ; 
- D 0 - I - 0x014D2C 05:8D1C: 69        .byte $69   ; 
- D 0 - I - 0x014D2D 05:8D1D: 6C        .byte $6C   ; 
- D 0 - I - 0x014D2E 05:8D1E: AE        .byte $AE   ; 
- D 0 - I - 0x014D2F 05:8D1F: 80        .byte $80   ; 
- D 0 - I - 0x014D30 05:8D20: 30        .byte $30   ; 
- D 0 - I - 0x014D31 05:8D21: AE        .byte $AE   ; 
- D 0 - I - 0x014D32 05:8D22: 80        .byte $80   ; 
- D 0 - I - 0x014D33 05:8D23: 24        .byte $24   ; 
- D 0 - I - 0x014D34 05:8D24: 6E        .byte $6E   ; 
- D 0 - I - 0x014D35 05:8D25: 03        .byte $03   ; 
- D 0 - I - 0x014D36 05:8D26: 6E        .byte $6E   ; 
- D 0 - I - 0x014D37 05:8D27: 6B        .byte $6B   ; 
- D 0 - I - 0x014D38 05:8D28: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014D39 05:8D29: A9        .byte $A9   ; 
- D 0 - I - 0x014D3A 05:8D2A: 80        .byte $80   ; 
- D 0 - I - 0x014D3B 05:8D2B: D0        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x014D3C 05:8D2C: 4F 8C     .word loc_D0_8C4F


; bzk garbage
- - - - - - 0x014D3E 05:8D2E: D3        .byte con_se_cb_stop   ; 



sub_D1_8D2F:
- D 0 - I - 0x014D3F 05:8D2F: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014D40 05:8D30: 60        .byte $60   ; 
- D 0 - I - 0x014D41 05:8D31: 5F        .byte $5F   ; 
- D 0 - I - 0x014D42 05:8D32: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014D43 05:8D33: 60        .byte $60   ; 
- D 0 - I - 0x014D44 05:8D34: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014D45 05:8D35: 5F        .byte $5F   ; 
- D 0 - I - 0x014D46 05:8D36: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014D47 05:8D37: 60        .byte $60   ; 
- D 0 - I - 0x014D48 05:8D38: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014D49 05:8D39: 6C        .byte $6C   ; 
- D 0 - I - 0x014D4A 05:8D3A: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014D4B 05:8D3B: 6B        .byte $6B   ; 
- D 0 - I - 0x014D4C 05:8D3C: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014D4D 05:8D3D: 69        .byte $69   ; 
- D 0 - I - 0x014D4E 05:8D3E: 6B        .byte $6B   ; 
- D 0 - I - 0x014D4F 05:8D3F: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014D50 05:8D40: 5F        .byte $5F   ; 
- D 0 - I - 0x014D51 05:8D41: 5D        .byte $5D   ; 
- D 0 - I - 0x014D52 05:8D42: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014D53 05:8D43: 5F        .byte $5F   ; 
- D 0 - I - 0x014D54 05:8D44: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014D55 05:8D45: 5D        .byte $5D   ; 
- D 0 - I - 0x014D56 05:8D46: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014D57 05:8D47: 5F        .byte $5F   ; 
- D 0 - I - 0x014D58 05:8D48: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014D59 05:8D49: 6E        .byte $6E   ; 
- D 0 - I - 0x014D5A 05:8D4A: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014D5B 05:8D4B: 6C        .byte $6C   ; 
- D 0 - I - 0x014D5C 05:8D4C: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014D5D 05:8D4D: 6B        .byte $6B   ; 
- D 0 - I - 0x014D5E 05:8D4E: 6C        .byte $6C   ; 
- D 0 - I - 0x014D5F 05:8D4F: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014D60 05:8D50: 60        .byte $60   ; 
- D 0 - I - 0x014D61 05:8D51: 5F        .byte $5F   ; 
- D 0 - I - 0x014D62 05:8D52: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014D63 05:8D53: 60        .byte $60   ; 
- D 0 - I - 0x014D64 05:8D54: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014D65 05:8D55: 5F        .byte $5F   ; 
- D 0 - I - 0x014D66 05:8D56: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014D67 05:8D57: 60        .byte $60   ; 
- D 0 - I - 0x014D68 05:8D58: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014D69 05:8D59: 70        .byte $70   ; 
- D 0 - I - 0x014D6A 05:8D5A: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014D6B 05:8D5B: 6E        .byte $6E   ; 
- D 0 - I - 0x014D6C 05:8D5C: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014D6D 05:8D5D: 6C        .byte $6C   ; 
- D 0 - I - 0x014D6E 05:8D5E: 6E        .byte $6E   ; 
- D 0 - I - 0x014D6F 05:8D5F: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014D70 05:8D60: 62        .byte $62   ; 
- D 0 - I - 0x014D71 05:8D61: 62        .byte $62   ; 
- D 0 - I - 0x014D72 05:8D62: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014D73 05:8D63: 69        .byte $69   ; 
- D 0 - I - 0x014D74 05:8D64: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014D75 05:8D65: 6E        .byte $6E   ; 
- D 0 - I - 0x014D76 05:8D66: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014D77 05:8D67: 62        .byte $62   ; 
- D 0 - I - 0x014D78 05:8D68: 62        .byte $62   ; 
- D 0 - I - 0x014D79 05:8D69: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014D7A 05:8D6A: 62        .byte $62   ; 
- D 0 - I - 0x014D7B 05:8D6B: 6E        .byte $6E   ; 
- D 0 - I - 0x014D7C 05:8D6C: 70        .byte $70   ; 
- D 0 - I - 0x014D7D 05:8D6D: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014D7E 05:8D6E: B1        .byte $B1   ; 
- D 0 - I - 0x014D7F 05:8D6F: 80        .byte $80   ; 
- D 0 - I - 0x014D80 05:8D70: 0C        .byte $0C   ; 
- D 0 - I - 0x014D81 05:8D71: B1        .byte $B1   ; 
- D 0 - I - 0x014D82 05:8D72: 80        .byte $80   ; 
- D 0 - I - 0x014D83 05:8D73: 06        .byte $06   ; 
- D 0 - I - 0x014D84 05:8D74: 71        .byte $71   ; 
- D 0 - I - 0x014D85 05:8D75: 73        .byte $73   ; 
- D 0 - I - 0x014D86 05:8D76: 71        .byte $71   ; 
- D 0 - I - 0x014D87 05:8D77: 03        .byte $03   ; 
- D 0 - I - 0x014D88 05:8D78: 6C        .byte $6C   ; 
- D 0 - I - 0x014D89 05:8D79: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014D8A 05:8D7A: 6C        .byte $6C   ; 
- D 0 - I - 0x014D8B 05:8D7B: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014D8C 05:8D7C: 71        .byte $71   ; 
- D 0 - I - 0x014D8D 05:8D7D: B0        .byte $B0   ; 
- D 0 - I - 0x014D8E 05:8D7E: 80        .byte $80   ; 
- D 0 - I - 0x014D8F 05:8D7F: 0C        .byte $0C   ; 
- D 0 - I - 0x014D90 05:8D80: B0        .byte $B0   ; 
- D 0 - I - 0x014D91 05:8D81: 80        .byte $80   ; 
- D 0 - I - 0x014D92 05:8D82: 06        .byte $06   ; 
- D 0 - I - 0x014D93 05:8D83: 70        .byte $70   ; 
- D 0 - I - 0x014D94 05:8D84: 71        .byte $71   ; 
- D 0 - I - 0x014D95 05:8D85: 70        .byte $70   ; 
- D 0 - I - 0x014D96 05:8D86: 03        .byte $03   ; 
- D 0 - I - 0x014D97 05:8D87: 6C        .byte $6C   ; 
- D 0 - I - 0x014D98 05:8D88: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014D99 05:8D89: 6C        .byte $6C   ; 
- D 0 - I - 0x014D9A 05:8D8A: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014D9B 05:8D8B: 70        .byte $70   ; 
- D 0 - I - 0x014D9C 05:8D8C: AE        .byte $AE   ; 
- D 0 - I - 0x014D9D 05:8D8D: 80        .byte $80   ; 
- D 0 - I - 0x014D9E 05:8D8E: D2        .byte con_se_cb_rts   ; 



off_ch_01_8D8F_01:
- D 0 - I - 0x014D9F 05:8D8F: D8        .byte con_se_cb_D8, $F8   ; 
- D 0 - I - 0x014DA1 05:8D91: CD        .byte con_se_cb_CD   ; 
- D 0 - I - 0x014DA2 05:8D92: CA 8A     .word ofs_CD_8ACA
- D 0 - I - 0x014DA4 05:8D94: DB        .byte con_se_cb_DB, $12, $1E, $96   ; 
- D 0 - I - 0x014DA8 05:8D98: C4        .byte con_se_cb_C4, $27   ; 
- D 0 - I - 0x014DAA 05:8D9A: C7        .byte con_se_cb_C7, $C8   ; 
- D 0 - I - 0x014DAC 05:8D9C: 03        .byte $03   ; 
- D 0 - I - 0x014DAD 05:8D9D: A5        .byte $A5   ; 
- D 0 - I - 0x014DAE 05:8D9E: 80        .byte $80   ; 
loc_D0_8D9F:
- D 0 - I - 0x014DAF 05:8D9F: 09        .byte $09   ; 
- D 0 - I - 0x014DB0 05:8DA0: 65        .byte $65   ; 
- D 0 - I - 0x014DB1 05:8DA1: 03        .byte $03   ; 
- D 0 - I - 0x014DB2 05:8DA2: 65        .byte $65   ; 
- D 0 - I - 0x014DB3 05:8DA3: 06        .byte $06   ; 
- D 0 - I - 0x014DB4 05:8DA4: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014DB5 05:8DA5: 67        .byte $67   ; 
- D 0 - I - 0x014DB6 05:8DA6: 18        .byte $18   ; 
- D 0 - I - 0x014DB7 05:8DA7: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014DB8 05:8DA8: 09        .byte $09   ; 
- D 0 - I - 0x014DB9 05:8DA9: 69        .byte $69   ; 
- D 0 - I - 0x014DBA 05:8DAA: 03        .byte $03   ; 
- D 0 - I - 0x014DBB 05:8DAB: 69        .byte $69   ; 
- D 0 - I - 0x014DBC 05:8DAC: 06        .byte $06   ; 
- D 0 - I - 0x014DBD 05:8DAD: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014DBE 05:8DAE: 6B        .byte $6B   ; 
- D 0 - I - 0x014DBF 05:8DAF: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014DC0 05:8DB0: C4        .byte con_se_cb_C4, $25   ; 
- D 0 - I - 0x014DC2 05:8DB2: 03        .byte $03   ; 
- D 0 - I - 0x014DC3 05:8DB3: 5F        .byte $5F   ; 
- D 0 - I - 0x014DC4 05:8DB4: 60        .byte $60   ; 
- D 0 - I - 0x014DC5 05:8DB5: 5F        .byte $5F   ; 
- D 0 - I - 0x014DC6 05:8DB6: 5D        .byte $5D   ; 
- D 0 - I - 0x014DC7 05:8DB7: 5B        .byte $5B   ; 
- D 0 - I - 0x014DC8 05:8DB8: C4        .byte con_se_cb_C4, $21   ; 
- D 0 - I - 0x014DCA 05:8DBA: A5        .byte $A5   ; 
- D 0 - I - 0x014DCB 05:8DBB: 80        .byte $80   ; 
- D 0 - I - 0x014DCC 05:8DBC: 09        .byte $09   ; 
- D 0 - I - 0x014DCD 05:8DBD: 65        .byte $65   ; 
- D 0 - I - 0x014DCE 05:8DBE: 03        .byte $03   ; 
- D 0 - I - 0x014DCF 05:8DBF: 65        .byte $65   ; 
- D 0 - I - 0x014DD0 05:8DC0: 06        .byte $06   ; 
- D 0 - I - 0x014DD1 05:8DC1: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014DD2 05:8DC2: 67        .byte $67   ; 
- D 0 - I - 0x014DD3 05:8DC3: 18        .byte $18   ; 
- D 0 - I - 0x014DD4 05:8DC4: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014DD5 05:8DC5: 09        .byte $09   ; 
- D 0 - I - 0x014DD6 05:8DC6: 69        .byte $69   ; 
- D 0 - I - 0x014DD7 05:8DC7: 03        .byte $03   ; 
- D 0 - I - 0x014DD8 05:8DC8: 69        .byte $69   ; 
- D 0 - I - 0x014DD9 05:8DC9: 06        .byte $06   ; 
- D 0 - I - 0x014DDA 05:8DCA: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014DDB 05:8DCB: C4        .byte con_se_cb_C4, $25   ; 
- D 0 - I - 0x014DDD 05:8DCD: 67        .byte $67   ; 
- D 0 - I - 0x014DDE 05:8DCE: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014DDF 05:8DCF: 64        .byte $64   ; 
- D 0 - I - 0x014DE0 05:8DD0: 03        .byte $03   ; 
- D 0 - I - 0x014DE1 05:8DD1: 62        .byte $62   ; 
- D 0 - I - 0x014DE2 05:8DD2: 60        .byte $60   ; 
- D 0 - I - 0x014DE3 05:8DD3: 5F        .byte $5F   ; 
- D 0 - I - 0x014DE4 05:8DD4: C4        .byte con_se_cb_C4, $21   ; 
- D 0 - I - 0x014DE6 05:8DD6: A5        .byte $A5   ; 
- D 0 - I - 0x014DE7 05:8DD7: 80        .byte $80   ; 
- D 0 - I - 0x014DE8 05:8DD8: 09        .byte $09   ; 
- D 0 - I - 0x014DE9 05:8DD9: 65        .byte $65   ; 
- D 0 - I - 0x014DEA 05:8DDA: 03        .byte $03   ; 
- D 0 - I - 0x014DEB 05:8DDB: 65        .byte $65   ; 
- D 0 - I - 0x014DEC 05:8DDC: 06        .byte $06   ; 
- D 0 - I - 0x014DED 05:8DDD: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014DEE 05:8DDE: 67        .byte $67   ; 
- D 0 - I - 0x014DEF 05:8DDF: 18        .byte $18   ; 
- D 0 - I - 0x014DF0 05:8DE0: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014DF1 05:8DE1: 09        .byte $09   ; 
- D 0 - I - 0x014DF2 05:8DE2: 69        .byte $69   ; 
- D 0 - I - 0x014DF3 05:8DE3: 03        .byte $03   ; 
- D 0 - I - 0x014DF4 05:8DE4: 69        .byte $69   ; 
- D 0 - I - 0x014DF5 05:8DE5: 06        .byte $06   ; 
- D 0 - I - 0x014DF6 05:8DE6: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014DF7 05:8DE7: 6B        .byte $6B   ; 
- D 0 - I - 0x014DF8 05:8DE8: C4        .byte con_se_cb_C4, $25   ; 
- D 0 - I - 0x014DFA 05:8DEA: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014DFB 05:8DEB: 03        .byte $03   ; 
- D 0 - I - 0x014DFC 05:8DEC: 62        .byte $62   ; 
- D 0 - I - 0x014DFD 05:8DED: 64        .byte $64   ; 
- D 0 - I - 0x014DFE 05:8DEE: 65        .byte $65   ; 
- D 0 - I - 0x014DFF 05:8DEF: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014E00 05:8DF0: 67        .byte $67   ; 
- D 0 - I - 0x014E01 05:8DF1: C4        .byte con_se_cb_C4, $21   ; 
- D 0 - I - 0x014E03 05:8DF3: A9        .byte $A9   ; 
- D 0 - I - 0x014E04 05:8DF4: 80        .byte $80   ; 
- D 0 - I - 0x014E05 05:8DF5: 06        .byte $06   ; 
- D 0 - I - 0x014E06 05:8DF6: 69        .byte $69   ; 
- D 0 - I - 0x014E07 05:8DF7: 69        .byte $69   ; 
- D 0 - I - 0x014E08 05:8DF8: 03        .byte $03   ; 
- D 0 - I - 0x014E09 05:8DF9: 69        .byte $69   ; 
- D 0 - I - 0x014E0A 05:8DFA: 69        .byte $69   ; 
- D 0 - I - 0x014E0B 05:8DFB: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014E0C 05:8DFC: 69        .byte $69   ; 
- D 0 - I - 0x014E0D 05:8DFD: 0C        .byte $0C   ; 
- D 0 - I - 0x014E0E 05:8DFE: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014E0F 05:8DFF: 06        .byte $06   ; 
- D 0 - I - 0x014E10 05:8E00: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014E11 05:8E01: 03        .byte $03   ; 
- D 0 - I - 0x014E12 05:8E02: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014E13 05:8E03: AB        .byte $AB   ; 
- D 0 - I - 0x014E14 05:8E04: 80        .byte $80   ; 
- D 0 - I - 0x014E15 05:8E05: 06        .byte $06   ; 
- D 0 - I - 0x014E16 05:8E06: 6B        .byte $6B   ; 
- D 0 - I - 0x014E17 05:8E07: 6B        .byte $6B   ; 
- D 0 - I - 0x014E18 05:8E08: 03        .byte $03   ; 
- D 0 - I - 0x014E19 05:8E09: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014E1A 05:8E0A: 6B        .byte $6B   ; 
- D 0 - I - 0x014E1B 05:8E0B: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014E1C 05:8E0C: AB        .byte $AB   ; 
- D 0 - I - 0x014E1D 05:8E0D: 80        .byte $80   ; 
- D 0 - I - 0x014E1E 05:8E0E: 18        .byte $18   ; 
- D 0 - I - 0x014E1F 05:8E0F: AB        .byte $AB   ; 
- D 0 - I - 0x014E20 05:8E10: 80        .byte $80   ; 
- D 0 - I - 0x014E21 05:8E11: 09        .byte $09   ; 
- D 0 - I - 0x014E22 05:8E12: 6B        .byte $6B   ; 
- D 0 - I - 0x014E23 05:8E13: DD        .byte con_se_cb_DD   ; 
- D 0 - I - 0x014E24 05:8E14: CD        .byte con_se_cb_CD   ; 
- D 0 - I - 0x014E25 05:8E15: AA 8B     .word ofs_CD_8BAA
- D 0 - I - 0x014E27 05:8E17: C7        .byte con_se_cb_C7, $FF   ; 
- D 0 - I - 0x014E29 05:8E19: 09        .byte $09   ; 
- D 0 - I - 0x014E2A 05:8E1A: 5E        .byte $5E   ; 
- D 0 - I - 0x014E2B 05:8E1B: 06        .byte $06   ; 
- D 0 - I - 0x014E2C 05:8E1C: 5C        .byte $5C   ; 
- D 0 - I - 0x014E2D 05:8E1D: 0C        .byte $0C   ; 
- D 0 - I - 0x014E2E 05:8E1E: 57        .byte $57   ; 
- D 0 - I - 0x014E2F 05:8E1F: CD        .byte con_se_cb_CD   ; 
- D 0 - I - 0x014E30 05:8E20: CA 8A     .word ofs_CD_8ACA
- D 0 - I - 0x014E32 05:8E22: C7        .byte con_se_cb_C7, $C8   ; 
- D 0 - I - 0x014E34 05:8E24: DC        .byte con_se_cb_DC   ; 
- D 0 - I - 0x014E35 05:8E25: C4        .byte con_se_cb_C4, $25   ; 
- D 0 - I - 0x014E37 05:8E27: 03        .byte $03   ; 
- D 0 - I - 0x014E38 05:8E28: 5F        .byte $5F   ; 
- D 0 - I - 0x014E39 05:8E29: 62        .byte $62   ; 
- D 0 - I - 0x014E3A 05:8E2A: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014E3B 05:8E2B: 64        .byte $64   ; 
- D 0 - I - 0x014E3C 05:8E2C: D1        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x014E3D 05:8E2D: AF 8E     .word sub_D1_8EAF
- D 0 - I - 0x014E3F 05:8E2F: 0C        .byte $0C   ; 
- D 0 - I - 0x014E40 05:8E30: 65        .byte $65   ; 
- D 0 - I - 0x014E41 05:8E31: 67        .byte $67   ; 
- D 0 - I - 0x014E42 05:8E32: 09        .byte $09   ; 
- D 0 - I - 0x014E43 05:8E33: 69        .byte $69   ; 
- D 0 - I - 0x014E44 05:8E34: 03        .byte $03   ; 
- D 0 - I - 0x014E45 05:8E35: AB        .byte $AB   ; 
- D 0 - I - 0x014E46 05:8E36: 80        .byte $80   ; 
- D 0 - I - 0x014E47 05:8E37: 06        .byte $06   ; 
- D 0 - I - 0x014E48 05:8E38: 6B        .byte $6B   ; 
- D 0 - I - 0x014E49 05:8E39: A8        .byte $A8   ; 
- D 0 - I - 0x014E4A 05:8E3A: 80        .byte $80   ; 
- D 0 - I - 0x014E4B 05:8E3B: 18        .byte $18   ; 
- D 0 - I - 0x014E4C 05:8E3C: 68        .byte $68   ; 
- D 0 - I - 0x014E4D 05:8E3D: 0C        .byte $0C   ; 
- D 0 - I - 0x014E4E 05:8E3E: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014E4F 05:8E3F: 03        .byte $03   ; 
- D 0 - I - 0x014E50 05:8E40: 5F        .byte $5F   ; 
- D 0 - I - 0x014E51 05:8E41: 62        .byte $62   ; 
- D 0 - I - 0x014E52 05:8E42: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014E53 05:8E43: 64        .byte $64   ; 
- D 0 - I - 0x014E54 05:8E44: D1        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x014E55 05:8E45: AF 8E     .word sub_D1_8EAF
- D 0 - I - 0x014E57 05:8E47: 0C        .byte $0C   ; 
- D 0 - I - 0x014E58 05:8E48: 69        .byte $69   ; 
- D 0 - I - 0x014E59 05:8E49: 65        .byte $65   ; 
- D 0 - I - 0x014E5A 05:8E4A: 62        .byte $62   ; 
- D 0 - I - 0x014E5B 05:8E4B: 03        .byte $03   ; 
- D 0 - I - 0x014E5C 05:8E4C: 65        .byte $65   ; 
- D 0 - I - 0x014E5D 05:8E4D: 69        .byte $69   ; 
- D 0 - I - 0x014E5E 05:8E4E: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014E5F 05:8E4F: AC        .byte $AC   ; 
- D 0 - I - 0x014E60 05:8E50: 80        .byte $80   ; 
- D 0 - I - 0x014E61 05:8E51: 09        .byte $09   ; 
- D 0 - I - 0x014E62 05:8E52: 6C        .byte $6C   ; 
- D 0 - I - 0x014E63 05:8E53: 03        .byte $03   ; 
- D 0 - I - 0x014E64 05:8E54: 6C        .byte $6C   ; 
- D 0 - I - 0x014E65 05:8E55: 6C        .byte $6C   ; 
- D 0 - I - 0x014E66 05:8E56: 6E        .byte $6E   ; 
- D 0 - I - 0x014E67 05:8E57: 06        .byte $06   ; 
- D 0 - I - 0x014E68 05:8E58: 6C        .byte $6C   ; 
- D 0 - I - 0x014E69 05:8E59: 09        .byte $09   ; 
- D 0 - I - 0x014E6A 05:8E5A: 67        .byte $67   ; 
- D 0 - I - 0x014E6B 05:8E5B: 03        .byte $03   ; 
- D 0 - I - 0x014E6C 05:8E5C: A9        .byte $A9   ; 
- D 0 - I - 0x014E6D 05:8E5D: 80        .byte $80   ; 
- D 0 - I - 0x014E6E 05:8E5E: 06        .byte $06   ; 
- D 0 - I - 0x014E6F 05:8E5F: 69        .byte $69   ; 
- D 0 - I - 0x014E70 05:8E60: 6B        .byte $6B   ; 
off_CE_8E61:
- D 0 - I - 0x014E71 05:8E61: 62        .byte $62   ; 
- D 0 - I - 0x014E72 05:8E62: 65        .byte $65   ; 
- D 0 - I - 0x014E73 05:8E63: 69        .byte $69   ; 
- D 0 - I - 0x014E74 05:8E64: A4        .byte $A4   ; 
- D 0 - I - 0x014E75 05:8E65: 80        .byte $80   ; 
- D 0 - I - 0x014E76 05:8E66: 64        .byte $64   ; 
- D 0 - I - 0x014E77 05:8E67: 67        .byte $67   ; 
- D 0 - I - 0x014E78 05:8E68: 6B        .byte $6B   ; 
- D 0 - I - 0x014E79 05:8E69: A9        .byte $A9   ; 
- D 0 - I - 0x014E7A 05:8E6A: 80        .byte $80   ; 
- D 0 - I - 0x014E7B 05:8E6B: 0C        .byte $0C   ; 
- D 0 - I - 0x014E7C 05:8E6C: 69        .byte $69   ; 
- D 0 - I - 0x014E7D 05:8E6D: 69        .byte $69   ; 
- D 0 - I - 0x014E7E 05:8E6E: 09        .byte $09   ; 
- D 0 - I - 0x014E7F 05:8E6F: 6B        .byte $6B   ; 
- D 0 - I - 0x014E80 05:8E70: 64        .byte $64   ; 
- D 0 - I - 0x014E81 05:8E71: 06        .byte $06   ; 
- D 0 - I - 0x014E82 05:8E72: 64        .byte $64   ; 
- D 0 - I - 0x014E83 05:8E73: CE        .byte con_se_cb_loop_1, $02   ; 
- D 0 - I - 0x014E85 05:8E75: 61 8E     .word off_CE_8E61
- D 0 - I - 0x014E87 05:8E77: 62        .byte $62   ; 
- D 0 - I - 0x014E88 05:8E78: 65        .byte $65   ; 
- D 0 - I - 0x014E89 05:8E79: 69        .byte $69   ; 
- D 0 - I - 0x014E8A 05:8E7A: A4        .byte $A4   ; 
- D 0 - I - 0x014E8B 05:8E7B: 80        .byte $80   ; 
- D 0 - I - 0x014E8C 05:8E7C: 64        .byte $64   ; 
- D 0 - I - 0x014E8D 05:8E7D: 67        .byte $67   ; 
- D 0 - I - 0x014E8E 05:8E7E: 6B        .byte $6B   ; 
- D 0 - I - 0x014E8F 05:8E7F: A9        .byte $A9   ; 
- D 0 - I - 0x014E90 05:8E80: 80        .byte $80   ; 
- D 0 - I - 0x014E91 05:8E81: 0C        .byte $0C   ; 
- D 0 - I - 0x014E92 05:8E82: 69        .byte $69   ; 
- D 0 - I - 0x014E93 05:8E83: 69        .byte $69   ; 
- D 0 - I - 0x014E94 05:8E84: 06        .byte $06   ; 
- D 0 - I - 0x014E95 05:8E85: 6B        .byte $6B   ; 
- D 0 - I - 0x014E96 05:8E86: 65        .byte $65   ; 
- D 0 - I - 0x014E97 05:8E87: 69        .byte $69   ; 
- D 0 - I - 0x014E98 05:8E88: AB        .byte $AB   ; 
- D 0 - I - 0x014E99 05:8E89: 80        .byte $80   ; 
- D 0 - I - 0x014E9A 05:8E8A: 03        .byte $03   ; 
- D 0 - I - 0x014E9B 05:8E8B: 6B        .byte $6B   ; 
- D 0 - I - 0x014E9C 05:8E8C: 6B        .byte $6B   ; 
- D 0 - I - 0x014E9D 05:8E8D: 69        .byte $69   ; 
- D 0 - I - 0x014E9E 05:8E8E: 5B        .byte $5B   ; 
- D 0 - I - 0x014E9F 05:8E8F: 6B        .byte $6B   ; 
- D 0 - I - 0x014EA0 05:8E90: 5B        .byte $5B   ; 
- D 0 - I - 0x014EA1 05:8E91: 69        .byte $69   ; 
- D 0 - I - 0x014EA2 05:8E92: 5B        .byte $5B   ; 
- D 0 - I - 0x014EA3 05:8E93: 6C        .byte $6C   ; 
- D 0 - I - 0x014EA4 05:8E94: 5B        .byte $5B   ; 
- D 0 - I - 0x014EA5 05:8E95: 6C        .byte $6C   ; 
- D 0 - I - 0x014EA6 05:8E96: 67        .byte $67   ; 
- D 0 - I - 0x014EA7 05:8E97: 5B        .byte $5B   ; 
- D 0 - I - 0x014EA8 05:8E98: 69        .byte $69   ; 
- D 0 - I - 0x014EA9 05:8E99: 6B        .byte $6B   ; 
- D 0 - I - 0x014EAA 05:8E9A: 5B        .byte $5B   ; 
- D 0 - I - 0x014EAB 05:8E9B: 5B        .byte $5B   ; 
- D 0 - I - 0x014EAC 05:8E9C: 6B        .byte $6B   ; 
- D 0 - I - 0x014EAD 05:8E9D: 69        .byte $69   ; 
- D 0 - I - 0x014EAE 05:8E9E: 5B        .byte $5B   ; 
- D 0 - I - 0x014EAF 05:8E9F: 6B        .byte $6B   ; 
- D 0 - I - 0x014EB0 05:8EA0: 5B        .byte $5B   ; 
- D 0 - I - 0x014EB1 05:8EA1: 69        .byte $69   ; 
- D 0 - I - 0x014EB2 05:8EA2: 5B        .byte $5B   ; 
- D 0 - I - 0x014EB3 05:8EA3: 6C        .byte $6C   ; 
- D 0 - I - 0x014EB4 05:8EA4: 5B        .byte $5B   ; 
- D 0 - I - 0x014EB5 05:8EA5: 6C        .byte $6C   ; 
- D 0 - I - 0x014EB6 05:8EA6: 5B        .byte $5B   ; 
- D 0 - I - 0x014EB7 05:8EA7: 67        .byte $67   ; 
- D 0 - I - 0x014EB8 05:8EA8: 64        .byte $64   ; 
- D 0 - I - 0x014EB9 05:8EA9: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014EBA 05:8EAA: A5        .byte $A5   ; 
- D 0 - I - 0x014EBB 05:8EAB: 80        .byte $80   ; 
- D 0 - I - 0x014EBC 05:8EAC: D0        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x014EBD 05:8EAD: 9F 8D     .word loc_D0_8D9F



sub_D1_8EAF:
- D 0 - I - 0x014EBF 05:8EAF: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014EC0 05:8EB0: 5D        .byte $5D   ; 
- D 0 - I - 0x014EC1 05:8EB1: 5B        .byte $5B   ; 
- D 0 - I - 0x014EC2 05:8EB2: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014EC3 05:8EB3: 5D        .byte $5D   ; 
- D 0 - I - 0x014EC4 05:8EB4: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014EC5 05:8EB5: 5B        .byte $5B   ; 
- D 0 - I - 0x014EC6 05:8EB6: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014EC7 05:8EB7: 5D        .byte $5D   ; 
- D 0 - I - 0x014EC8 05:8EB8: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014EC9 05:8EB9: 69        .byte $69   ; 
- D 0 - I - 0x014ECA 05:8EBA: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014ECB 05:8EBB: 67        .byte $67   ; 
- D 0 - I - 0x014ECC 05:8EBC: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014ECD 05:8EBD: 65        .byte $65   ; 
- D 0 - I - 0x014ECE 05:8EBE: 67        .byte $67   ; 
- D 0 - I - 0x014ECF 05:8EBF: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014ED0 05:8EC0: 5B        .byte $5B   ; 
- D 0 - I - 0x014ED1 05:8EC1: 5B        .byte $5B   ; 
- D 0 - I - 0x014ED2 05:8EC2: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014ED3 05:8EC3: 5B        .byte $5B   ; 
- D 0 - I - 0x014ED4 05:8EC4: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014ED5 05:8EC5: 5B        .byte $5B   ; 
- D 0 - I - 0x014ED6 05:8EC6: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014ED7 05:8EC7: 5B        .byte $5B   ; 
- D 0 - I - 0x014ED8 05:8EC8: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014ED9 05:8EC9: 6B        .byte $6B   ; 
- D 0 - I - 0x014EDA 05:8ECA: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014EDB 05:8ECB: 69        .byte $69   ; 
- D 0 - I - 0x014EDC 05:8ECC: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014EDD 05:8ECD: 67        .byte $67   ; 
- D 0 - I - 0x014EDE 05:8ECE: 67        .byte $67   ; 
- D 0 - I - 0x014EDF 05:8ECF: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014EE0 05:8ED0: 5B        .byte $5B   ; 
- D 0 - I - 0x014EE1 05:8ED1: 5B        .byte $5B   ; 
- D 0 - I - 0x014EE2 05:8ED2: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014EE3 05:8ED3: 5B        .byte $5B   ; 
- D 0 - I - 0x014EE4 05:8ED4: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014EE5 05:8ED5: 5B        .byte $5B   ; 
- D 0 - I - 0x014EE6 05:8ED6: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014EE7 05:8ED7: 5B        .byte $5B   ; 
- D 0 - I - 0x014EE8 05:8ED8: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014EE9 05:8ED9: 6C        .byte $6C   ; 
- D 0 - I - 0x014EEA 05:8EDA: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014EEB 05:8EDB: 6B        .byte $6B   ; 
- D 0 - I - 0x014EEC 05:8EDC: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014EED 05:8EDD: 69        .byte $69   ; 
- D 0 - I - 0x014EEE 05:8EDE: 69        .byte $69   ; 
- D 0 - I - 0x014EEF 05:8EDF: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014EF0 05:8EE0: 5D        .byte $5D   ; 
- D 0 - I - 0x014EF1 05:8EE1: 5D        .byte $5D   ; 
- D 0 - I - 0x014EF2 05:8EE2: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014EF3 05:8EE3: 65        .byte $65   ; 
- D 0 - I - 0x014EF4 05:8EE4: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014EF5 05:8EE5: 69        .byte $69   ; 
- D 0 - I - 0x014EF6 05:8EE6: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014EF7 05:8EE7: 5D        .byte $5D   ; 
- D 0 - I - 0x014EF8 05:8EE8: 5D        .byte $5D   ; 
- D 0 - I - 0x014EF9 05:8EE9: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014EFA 05:8EEA: 5D        .byte $5D   ; 
- D 0 - I - 0x014EFB 05:8EEB: 69        .byte $69   ; 
- D 0 - I - 0x014EFC 05:8EEC: 6B        .byte $6B   ; 
- D 0 - I - 0x014EFD 05:8EED: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014EFE 05:8EEE: AC        .byte $AC   ; 
- D 0 - I - 0x014EFF 05:8EEF: 80        .byte $80   ; 
- D 0 - I - 0x014F00 05:8EF0: 0C        .byte $0C   ; 
- D 0 - I - 0x014F01 05:8EF1: AC        .byte $AC   ; 
- D 0 - I - 0x014F02 05:8EF2: 80        .byte $80   ; 
- D 0 - I - 0x014F03 05:8EF3: 06        .byte $06   ; 
- D 0 - I - 0x014F04 05:8EF4: 6C        .byte $6C   ; 
- D 0 - I - 0x014F05 05:8EF5: 6E        .byte $6E   ; 
- D 0 - I - 0x014F06 05:8EF6: 6C        .byte $6C   ; 
- D 0 - I - 0x014F07 05:8EF7: 03        .byte $03   ; 
- D 0 - I - 0x014F08 05:8EF8: 69        .byte $69   ; 
- D 0 - I - 0x014F09 05:8EF9: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014F0A 05:8EFA: 69        .byte $69   ; 
- D 0 - I - 0x014F0B 05:8EFB: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014F0C 05:8EFC: 6C        .byte $6C   ; 
- D 0 - I - 0x014F0D 05:8EFD: AB        .byte $AB   ; 
- D 0 - I - 0x014F0E 05:8EFE: 80        .byte $80   ; 
- D 0 - I - 0x014F0F 05:8EFF: 0C        .byte $0C   ; 
- D 0 - I - 0x014F10 05:8F00: AB        .byte $AB   ; 
- D 0 - I - 0x014F11 05:8F01: 80        .byte $80   ; 
- D 0 - I - 0x014F12 05:8F02: 06        .byte $06   ; 
- D 0 - I - 0x014F13 05:8F03: 6B        .byte $6B   ; 
- D 0 - I - 0x014F14 05:8F04: 6C        .byte $6C   ; 
- D 0 - I - 0x014F15 05:8F05: 6B        .byte $6B   ; 
- D 0 - I - 0x014F16 05:8F06: 03        .byte $03   ; 
- D 0 - I - 0x014F17 05:8F07: 69        .byte $69   ; 
- D 0 - I - 0x014F18 05:8F08: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014F19 05:8F09: 69        .byte $69   ; 
- D 0 - I - 0x014F1A 05:8F0A: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014F1B 05:8F0B: 6B        .byte $6B   ; 
- D 0 - I - 0x014F1C 05:8F0C: A5        .byte $A5   ; 
- D 0 - I - 0x014F1D 05:8F0D: 80        .byte $80   ; 
- D 0 - I - 0x014F1E 05:8F0E: D2        .byte con_se_cb_rts   ; 



off_ch_01_8F0F_02:
- D 0 - I - 0x014F1F 05:8F0F: D8        .byte con_se_cb_D8, $10   ; 
- D 0 - I - 0x014F21 05:8F11: C7        .byte con_se_cb_C7, $C8   ; 
- D 0 - I - 0x014F23 05:8F13: 03        .byte $03   ; 
- D 0 - I - 0x014F24 05:8F14: 8A        .byte $8A   ; 
- D 0 - I - 0x014F25 05:8F15: 80        .byte $80   ; 
loc_D0_8F16:
off_CE_8F16:
- D 0 - I - 0x014F26 05:8F16: 06        .byte $06   ; 
- D 0 - I - 0x014F27 05:8F17: 4A        .byte $4A   ; 
- D 0 - I - 0x014F28 05:8F18: 03        .byte $03   ; 
- D 0 - I - 0x014F29 05:8F19: 56        .byte $56   ; 
- D 0 - I - 0x014F2A 05:8F1A: 56        .byte $56   ; 
- D 0 - I - 0x014F2B 05:8F1B: 4A        .byte $4A   ; 
- D 0 - I - 0x014F2C 05:8F1C: 56        .byte $56   ; 
- D 0 - I - 0x014F2D 05:8F1D: 06        .byte $06   ; 
- D 0 - I - 0x014F2E 05:8F1E: 4A        .byte $4A   ; 
- D 0 - I - 0x014F2F 05:8F1F: 4A        .byte $4A   ; 
- D 0 - I - 0x014F30 05:8F20: 03        .byte $03   ; 
- D 0 - I - 0x014F31 05:8F21: 56        .byte $56   ; 
- D 0 - I - 0x014F32 05:8F22: 56        .byte $56   ; 
- D 0 - I - 0x014F33 05:8F23: 06        .byte $06   ; 
- D 0 - I - 0x014F34 05:8F24: 4A        .byte $4A   ; 
- D 0 - I - 0x014F35 05:8F25: 03        .byte $03   ; 
- D 0 - I - 0x014F36 05:8F26: 56        .byte $56   ; 
- D 0 - I - 0x014F37 05:8F27: 56        .byte $56   ; 
- D 0 - I - 0x014F38 05:8F28: 06        .byte $06   ; 
- D 0 - I - 0x014F39 05:8F29: 4A        .byte $4A   ; 
- D 0 - I - 0x014F3A 05:8F2A: 03        .byte $03   ; 
- D 0 - I - 0x014F3B 05:8F2B: 56        .byte $56   ; 
- D 0 - I - 0x014F3C 05:8F2C: 56        .byte $56   ; 
- D 0 - I - 0x014F3D 05:8F2D: 06        .byte $06   ; 
- D 0 - I - 0x014F3E 05:8F2E: 4A        .byte $4A   ; 
- D 0 - I - 0x014F3F 05:8F2F: 03        .byte $03   ; 
- D 0 - I - 0x014F40 05:8F30: 56        .byte $56   ; 
- D 0 - I - 0x014F41 05:8F31: 56        .byte $56   ; 
- D 0 - I - 0x014F42 05:8F32: 06        .byte $06   ; 
- D 0 - I - 0x014F43 05:8F33: 4A        .byte $4A   ; 
- D 0 - I - 0x014F44 05:8F34: 03        .byte $03   ; 
- D 0 - I - 0x014F45 05:8F35: 56        .byte $56   ; 
- D 0 - I - 0x014F46 05:8F36: 56        .byte $56   ; 
- D 0 - I - 0x014F47 05:8F37: 4A        .byte $4A   ; 
- D 0 - I - 0x014F48 05:8F38: 56        .byte $56   ; 
- D 0 - I - 0x014F49 05:8F39: 4A        .byte $4A   ; 
- D 0 - I - 0x014F4A 05:8F3A: 8A        .byte $8A   ; 
- D 0 - I - 0x014F4B 05:8F3B: 80        .byte $80   ; 
- D 0 - I - 0x014F4C 05:8F3C: CE        .byte con_se_cb_loop_1, $02   ; 
- D 0 - I - 0x014F4E 05:8F3E: 16 8F     .word off_CE_8F16
- D 0 - I - 0x014F50 05:8F40: 06        .byte $06   ; 
- D 0 - I - 0x014F51 05:8F41: 4A        .byte $4A   ; 
- D 0 - I - 0x014F52 05:8F42: 03        .byte $03   ; 
- D 0 - I - 0x014F53 05:8F43: 56        .byte $56   ; 
- D 0 - I - 0x014F54 05:8F44: 56        .byte $56   ; 
- D 0 - I - 0x014F55 05:8F45: 4A        .byte $4A   ; 
- D 0 - I - 0x014F56 05:8F46: 56        .byte $56   ; 
- D 0 - I - 0x014F57 05:8F47: 06        .byte $06   ; 
- D 0 - I - 0x014F58 05:8F48: 4A        .byte $4A   ; 
- D 0 - I - 0x014F59 05:8F49: 4A        .byte $4A   ; 
- D 0 - I - 0x014F5A 05:8F4A: 03        .byte $03   ; 
- D 0 - I - 0x014F5B 05:8F4B: 56        .byte $56   ; 
- D 0 - I - 0x014F5C 05:8F4C: 56        .byte $56   ; 
- D 0 - I - 0x014F5D 05:8F4D: 06        .byte $06   ; 
- D 0 - I - 0x014F5E 05:8F4E: 4A        .byte $4A   ; 
- D 0 - I - 0x014F5F 05:8F4F: 03        .byte $03   ; 
- D 0 - I - 0x014F60 05:8F50: 56        .byte $56   ; 
- D 0 - I - 0x014F61 05:8F51: 56        .byte $56   ; 
- D 0 - I - 0x014F62 05:8F52: 06        .byte $06   ; 
- D 0 - I - 0x014F63 05:8F53: 4A        .byte $4A   ; 
- D 0 - I - 0x014F64 05:8F54: 03        .byte $03   ; 
- D 0 - I - 0x014F65 05:8F55: 56        .byte $56   ; 
- D 0 - I - 0x014F66 05:8F56: 56        .byte $56   ; 
- D 0 - I - 0x014F67 05:8F57: 06        .byte $06   ; 
- D 0 - I - 0x014F68 05:8F58: 4A        .byte $4A   ; 
- D 0 - I - 0x014F69 05:8F59: 03        .byte $03   ; 
- D 0 - I - 0x014F6A 05:8F5A: 56        .byte $56   ; 
- D 0 - I - 0x014F6B 05:8F5B: 56        .byte $56   ; 
- D 0 - I - 0x014F6C 05:8F5C: 06        .byte $06   ; 
- D 0 - I - 0x014F6D 05:8F5D: 4A        .byte $4A   ; 
- D 0 - I - 0x014F6E 05:8F5E: 03        .byte $03   ; 
- D 0 - I - 0x014F6F 05:8F5F: 56        .byte $56   ; 
- D 0 - I - 0x014F70 05:8F60: 56        .byte $56   ; 
- D 0 - I - 0x014F71 05:8F61: 4A        .byte $4A   ; 
- D 0 - I - 0x014F72 05:8F62: 56        .byte $56   ; 
- D 0 - I - 0x014F73 05:8F63: 4A        .byte $4A   ; 
- D 0 - I - 0x014F74 05:8F64: 92        .byte $92   ; 
- D 0 - I - 0x014F75 05:8F65: 80        .byte $80   ; 
- D 0 - I - 0x014F76 05:8F66: 06        .byte $06   ; 
- D 0 - I - 0x014F77 05:8F67: 52        .byte $52   ; 
- D 0 - I - 0x014F78 05:8F68: 03        .byte $03   ; 
- D 0 - I - 0x014F79 05:8F69: 46        .byte $46   ; 
- D 0 - I - 0x014F7A 05:8F6A: 46        .byte $46   ; 
- D 0 - I - 0x014F7B 05:8F6B: 06        .byte $06   ; 
- D 0 - I - 0x014F7C 05:8F6C: 52        .byte $52   ; 
- D 0 - I - 0x014F7D 05:8F6D: 03        .byte $03   ; 
- D 0 - I - 0x014F7E 05:8F6E: 46        .byte $46   ; 
- D 0 - I - 0x014F7F 05:8F6F: 46        .byte $46   ; 
- D 0 - I - 0x014F80 05:8F70: 06        .byte $06   ; 
- D 0 - I - 0x014F81 05:8F71: 52        .byte $52   ; 
- D 0 - I - 0x014F82 05:8F72: 03        .byte $03   ; 
- D 0 - I - 0x014F83 05:8F73: 46        .byte $46   ; 
- D 0 - I - 0x014F84 05:8F74: 46        .byte $46   ; 
- D 0 - I - 0x014F85 05:8F75: 06        .byte $06   ; 
- D 0 - I - 0x014F86 05:8F76: 52        .byte $52   ; 
- D 0 - I - 0x014F87 05:8F77: 03        .byte $03   ; 
- D 0 - I - 0x014F88 05:8F78: 46        .byte $46   ; 
- D 0 - I - 0x014F89 05:8F79: 8F        .byte $8F   ; 
- D 0 - I - 0x014F8A 05:8F7A: 80        .byte $80   ; 
- D 0 - I - 0x014F8B 05:8F7B: 06        .byte $06   ; 
- D 0 - I - 0x014F8C 05:8F7C: 4F        .byte $4F   ; 
- D 0 - I - 0x014F8D 05:8F7D: 03        .byte $03   ; 
- D 0 - I - 0x014F8E 05:8F7E: 5B        .byte $5B   ; 
- D 0 - I - 0x014F8F 05:8F7F: 5B        .byte $5B   ; 
- D 0 - I - 0x014F90 05:8F80: 06        .byte $06   ; 
- D 0 - I - 0x014F91 05:8F81: 4F        .byte $4F   ; 
- D 0 - I - 0x014F92 05:8F82: 03        .byte $03   ; 
- D 0 - I - 0x014F93 05:8F83: 5B        .byte $5B   ; 
- D 0 - I - 0x014F94 05:8F84: 5B        .byte $5B   ; 
- D 0 - I - 0x014F95 05:8F85: 06        .byte $06   ; 
- D 0 - I - 0x014F96 05:8F86: 4F        .byte $4F   ; 
- D 0 - I - 0x014F97 05:8F87: 03        .byte $03   ; 
- D 0 - I - 0x014F98 05:8F88: 5B        .byte $5B   ; 
- D 0 - I - 0x014F99 05:8F89: 5B        .byte $5B   ; 
- D 0 - I - 0x014F9A 05:8F8A: 06        .byte $06   ; 
- D 0 - I - 0x014F9B 05:8F8B: 4F        .byte $4F   ; 
- D 0 - I - 0x014F9C 05:8F8C: 03        .byte $03   ; 
- D 0 - I - 0x014F9D 05:8F8D: 5B        .byte $5B   ; 
- D 0 - I - 0x014F9E 05:8F8E: 5B        .byte $5B   ; 
- D 0 - I - 0x014F9F 05:8F8F: 0C        .byte $0C   ; 
- D 0 - I - 0x014FA0 05:8F90: 4F        .byte $4F   ; 
- D 0 - I - 0x014FA1 05:8F91: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014FA2 05:8F92: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014FA3 05:8F93: 03        .byte $03   ; 
- D 0 - I - 0x014FA4 05:8F94: 4F        .byte $4F   ; 
- D 0 - I - 0x014FA5 05:8F95: 50        .byte $50   ; 
- D 0 - I - 0x014FA6 05:8F96: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x014FA7 05:8F97: 91        .byte $91   ; 
- D 0 - I - 0x014FA8 05:8F98: 80        .byte $80   ; 
- D 0 - I - 0x014FA9 05:8F99: 06        .byte $06   ; 
- D 0 - I - 0x014FAA 05:8F9A: 51        .byte $51   ; 
- D 0 - I - 0x014FAB 05:8F9B: 03        .byte $03   ; 
- D 0 - I - 0x014FAC 05:8F9C: 5D        .byte $5D   ; 
- D 0 - I - 0x014FAD 05:8F9D: 5D        .byte $5D   ; 
- D 0 - I - 0x014FAE 05:8F9E: 06        .byte $06   ; 
- D 0 - I - 0x014FAF 05:8F9F: 51        .byte $51   ; 
- D 0 - I - 0x014FB0 05:8FA0: 03        .byte $03   ; 
- D 0 - I - 0x014FB1 05:8FA1: 5D        .byte $5D   ; 
- D 0 - I - 0x014FB2 05:8FA2: 5D        .byte $5D   ; 
- D 0 - I - 0x014FB3 05:8FA3: 06        .byte $06   ; 
- D 0 - I - 0x014FB4 05:8FA4: 51        .byte $51   ; 
- D 0 - I - 0x014FB5 05:8FA5: 03        .byte $03   ; 
- D 0 - I - 0x014FB6 05:8FA6: 5D        .byte $5D   ; 
- D 0 - I - 0x014FB7 05:8FA7: 5D        .byte $5D   ; 
- D 0 - I - 0x014FB8 05:8FA8: 06        .byte $06   ; 
- D 0 - I - 0x014FB9 05:8FA9: 51        .byte $51   ; 
- D 0 - I - 0x014FBA 05:8FAA: 03        .byte $03   ; 
- D 0 - I - 0x014FBB 05:8FAB: 5D        .byte $5D   ; 
- D 0 - I - 0x014FBC 05:8FAC: 5D        .byte $5D   ; 
- D 0 - I - 0x014FBD 05:8FAD: 06        .byte $06   ; 
- D 0 - I - 0x014FBE 05:8FAE: 4F        .byte $4F   ; 
- D 0 - I - 0x014FBF 05:8FAF: 03        .byte $03   ; 
- D 0 - I - 0x014FC0 05:8FB0: 5B        .byte $5B   ; 
- D 0 - I - 0x014FC1 05:8FB1: 5B        .byte $5B   ; 
- D 0 - I - 0x014FC2 05:8FB2: 06        .byte $06   ; 
- D 0 - I - 0x014FC3 05:8FB3: 4F        .byte $4F   ; 
- D 0 - I - 0x014FC4 05:8FB4: 03        .byte $03   ; 
- D 0 - I - 0x014FC5 05:8FB5: 5B        .byte $5B   ; 
- D 0 - I - 0x014FC6 05:8FB6: 5B        .byte $5B   ; 
- D 0 - I - 0x014FC7 05:8FB7: 06        .byte $06   ; 
- D 0 - I - 0x014FC8 05:8FB8: 4F        .byte $4F   ; 
- D 0 - I - 0x014FC9 05:8FB9: 03        .byte $03   ; 
- D 0 - I - 0x014FCA 05:8FBA: 5B        .byte $5B   ; 
- D 0 - I - 0x014FCB 05:8FBB: 5B        .byte $5B   ; 
- D 0 - I - 0x014FCC 05:8FBC: 06        .byte $06   ; 
- D 0 - I - 0x014FCD 05:8FBD: 4F        .byte $4F   ; 
- D 0 - I - 0x014FCE 05:8FBE: 03        .byte $03   ; 
- D 0 - I - 0x014FCF 05:8FBF: 5B        .byte $5B   ; 
- D 0 - I - 0x014FD0 05:8FC0: 5B        .byte $5B   ; 
- D 0 - I - 0x014FD1 05:8FC1: 06        .byte $06   ; 
- D 0 - I - 0x014FD2 05:8FC2: 48        .byte $48   ; 
- D 0 - I - 0x014FD3 05:8FC3: 03        .byte $03   ; 
- D 0 - I - 0x014FD4 05:8FC4: 54        .byte $54   ; 
- D 0 - I - 0x014FD5 05:8FC5: 54        .byte $54   ; 
- D 0 - I - 0x014FD6 05:8FC6: 06        .byte $06   ; 
- D 0 - I - 0x014FD7 05:8FC7: 48        .byte $48   ; 
- D 0 - I - 0x014FD8 05:8FC8: 03        .byte $03   ; 
- D 0 - I - 0x014FD9 05:8FC9: 54        .byte $54   ; 
- D 0 - I - 0x014FDA 05:8FCA: 54        .byte $54   ; 
- D 0 - I - 0x014FDB 05:8FCB: 06        .byte $06   ; 
- D 0 - I - 0x014FDC 05:8FCC: 48        .byte $48   ; 
- D 0 - I - 0x014FDD 05:8FCD: 03        .byte $03   ; 
- D 0 - I - 0x014FDE 05:8FCE: 54        .byte $54   ; 
- D 0 - I - 0x014FDF 05:8FCF: 54        .byte $54   ; 
- D 0 - I - 0x014FE0 05:8FD0: 06        .byte $06   ; 
- D 0 - I - 0x014FE1 05:8FD1: 48        .byte $48   ; 
- D 0 - I - 0x014FE2 05:8FD2: 03        .byte $03   ; 
- D 0 - I - 0x014FE3 05:8FD3: 54        .byte $54   ; 
- D 0 - I - 0x014FE4 05:8FD4: 54        .byte $54   ; 
- D 0 - I - 0x014FE5 05:8FD5: 06        .byte $06   ; 
- D 0 - I - 0x014FE6 05:8FD6: 4A        .byte $4A   ; 
- D 0 - I - 0x014FE7 05:8FD7: 03        .byte $03   ; 
- D 0 - I - 0x014FE8 05:8FD8: 56        .byte $56   ; 
- D 0 - I - 0x014FE9 05:8FD9: 56        .byte $56   ; 
- D 0 - I - 0x014FEA 05:8FDA: 06        .byte $06   ; 
- D 0 - I - 0x014FEB 05:8FDB: 4A        .byte $4A   ; 
- D 0 - I - 0x014FEC 05:8FDC: 03        .byte $03   ; 
- D 0 - I - 0x014FED 05:8FDD: 56        .byte $56   ; 
- D 0 - I - 0x014FEE 05:8FDE: 56        .byte $56   ; 
- D 0 - I - 0x014FEF 05:8FDF: 06        .byte $06   ; 
- D 0 - I - 0x014FF0 05:8FE0: 4A        .byte $4A   ; 
- D 0 - I - 0x014FF1 05:8FE1: 03        .byte $03   ; 
- D 0 - I - 0x014FF2 05:8FE2: 56        .byte $56   ; 
- D 0 - I - 0x014FF3 05:8FE3: 56        .byte $56   ; 
- D 0 - I - 0x014FF4 05:8FE4: 06        .byte $06   ; 
- D 0 - I - 0x014FF5 05:8FE5: 4A        .byte $4A   ; 
- D 0 - I - 0x014FF6 05:8FE6: 03        .byte $03   ; 
- D 0 - I - 0x014FF7 05:8FE7: 56        .byte $56   ; 
- D 0 - I - 0x014FF8 05:8FE8: 56        .byte $56   ; 
- D 0 - I - 0x014FF9 05:8FE9: 06        .byte $06   ; 
- D 0 - I - 0x014FFA 05:8FEA: 4D        .byte $4D   ; 
- D 0 - I - 0x014FFB 05:8FEB: 03        .byte $03   ; 
- D 0 - I - 0x014FFC 05:8FEC: 59        .byte $59   ; 
- D 0 - I - 0x014FFD 05:8FED: 59        .byte $59   ; 
- D 0 - I - 0x014FFE 05:8FEE: 06        .byte $06   ; 
- D 0 - I - 0x014FFF 05:8FEF: 4D        .byte $4D   ; 
- D 0 - I - 0x015000 05:8FF0: 03        .byte $03   ; 
- D 0 - I - 0x015001 05:8FF1: 59        .byte $59   ; 
- D 0 - I - 0x015002 05:8FF2: 59        .byte $59   ; 
- D 0 - I - 0x015003 05:8FF3: 06        .byte $06   ; 
- D 0 - I - 0x015004 05:8FF4: 4D        .byte $4D   ; 
- D 0 - I - 0x015005 05:8FF5: 03        .byte $03   ; 
- D 0 - I - 0x015006 05:8FF6: 59        .byte $59   ; 
- D 0 - I - 0x015007 05:8FF7: 59        .byte $59   ; 
- D 0 - I - 0x015008 05:8FF8: 06        .byte $06   ; 
- D 0 - I - 0x015009 05:8FF9: 4D        .byte $4D   ; 
- D 0 - I - 0x01500A 05:8FFA: 03        .byte $03   ; 
- D 0 - I - 0x01500B 05:8FFB: 59        .byte $59   ; 
- D 0 - I - 0x01500C 05:8FFC: 59        .byte $59   ; 
- D 0 - I - 0x01500D 05:8FFD: 06        .byte $06   ; 
- D 0 - I - 0x01500E 05:8FFE: 4C        .byte $4C   ; 
- D 0 - I - 0x01500F 05:8FFF: 03        .byte $03   ; 
- D 0 - I - 0x015010 05:9000: 58        .byte $58   ; 
- D 0 - I - 0x015011 05:9001: 58        .byte $58   ; 
- D 0 - I - 0x015012 05:9002: 06        .byte $06   ; 
- D 0 - I - 0x015013 05:9003: 4C        .byte $4C   ; 
- D 0 - I - 0x015014 05:9004: 03        .byte $03   ; 
- D 0 - I - 0x015015 05:9005: 58        .byte $58   ; 
- D 0 - I - 0x015016 05:9006: 58        .byte $58   ; 
- D 0 - I - 0x015017 05:9007: 06        .byte $06   ; 
- D 0 - I - 0x015018 05:9008: 4C        .byte $4C   ; 
- D 0 - I - 0x015019 05:9009: 03        .byte $03   ; 
- D 0 - I - 0x01501A 05:900A: 58        .byte $58   ; 
- D 0 - I - 0x01501B 05:900B: 58        .byte $58   ; 
- D 0 - I - 0x01501C 05:900C: 06        .byte $06   ; 
- D 0 - I - 0x01501D 05:900D: 4C        .byte $4C   ; 
- D 0 - I - 0x01501E 05:900E: 03        .byte $03   ; 
- D 0 - I - 0x01501F 05:900F: 58        .byte $58   ; 
- D 0 - I - 0x015020 05:9010: 58        .byte $58   ; 
- D 0 - I - 0x015021 05:9011: 06        .byte $06   ; 
- D 0 - I - 0x015022 05:9012: 4A        .byte $4A   ; 
- D 0 - I - 0x015023 05:9013: 03        .byte $03   ; 
- D 0 - I - 0x015024 05:9014: 56        .byte $56   ; 
- D 0 - I - 0x015025 05:9015: 56        .byte $56   ; 
- D 0 - I - 0x015026 05:9016: 06        .byte $06   ; 
- D 0 - I - 0x015027 05:9017: 4A        .byte $4A   ; 
- D 0 - I - 0x015028 05:9018: 03        .byte $03   ; 
- D 0 - I - 0x015029 05:9019: 56        .byte $56   ; 
- D 0 - I - 0x01502A 05:901A: 56        .byte $56   ; 
- D 0 - I - 0x01502B 05:901B: 06        .byte $06   ; 
- D 0 - I - 0x01502C 05:901C: 4A        .byte $4A   ; 
- D 0 - I - 0x01502D 05:901D: 03        .byte $03   ; 
- D 0 - I - 0x01502E 05:901E: 56        .byte $56   ; 
- D 0 - I - 0x01502F 05:901F: 56        .byte $56   ; 
- D 0 - I - 0x015030 05:9020: 06        .byte $06   ; 
- D 0 - I - 0x015031 05:9021: 4A        .byte $4A   ; 
- D 0 - I - 0x015032 05:9022: 8C        .byte $8C   ; 
- D 0 - I - 0x015033 05:9023: 80        .byte $80   ; 
- D 0 - I - 0x015034 05:9024: 4C        .byte $4C   ; 
- D 0 - I - 0x015035 05:9025: 03        .byte $03   ; 
- D 0 - I - 0x015036 05:9026: 58        .byte $58   ; 
- D 0 - I - 0x015037 05:9027: 58        .byte $58   ; 
- D 0 - I - 0x015038 05:9028: 06        .byte $06   ; 
- D 0 - I - 0x015039 05:9029: 4C        .byte $4C   ; 
- D 0 - I - 0x01503A 05:902A: 03        .byte $03   ; 
- D 0 - I - 0x01503B 05:902B: 58        .byte $58   ; 
- D 0 - I - 0x01503C 05:902C: 4C        .byte $4C   ; 
- D 0 - I - 0x01503D 05:902D: 0C        .byte $0C   ; 
- D 0 - I - 0x01503E 05:902E: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x01503F 05:902F: 03        .byte $03   ; 
- D 0 - I - 0x015040 05:9030: 4C        .byte $4C   ; 
- D 0 - I - 0x015041 05:9031: 4F        .byte $4F   ; 
- D 0 - I - 0x015042 05:9032: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015043 05:9033: 91        .byte $91   ; 
- D 0 - I - 0x015044 05:9034: 80        .byte $80   ; 
- D 0 - I - 0x015045 05:9035: 06        .byte $06   ; 
- D 0 - I - 0x015046 05:9036: 51        .byte $51   ; 
- D 0 - I - 0x015047 05:9037: 03        .byte $03   ; 
- D 0 - I - 0x015048 05:9038: 5D        .byte $5D   ; 
- D 0 - I - 0x015049 05:9039: 5D        .byte $5D   ; 
- D 0 - I - 0x01504A 05:903A: 06        .byte $06   ; 
- D 0 - I - 0x01504B 05:903B: 51        .byte $51   ; 
- D 0 - I - 0x01504C 05:903C: 03        .byte $03   ; 
- D 0 - I - 0x01504D 05:903D: 5D        .byte $5D   ; 
- D 0 - I - 0x01504E 05:903E: 5D        .byte $5D   ; 
- D 0 - I - 0x01504F 05:903F: 06        .byte $06   ; 
- D 0 - I - 0x015050 05:9040: 51        .byte $51   ; 
- D 0 - I - 0x015051 05:9041: 03        .byte $03   ; 
- D 0 - I - 0x015052 05:9042: 5D        .byte $5D   ; 
- D 0 - I - 0x015053 05:9043: 5D        .byte $5D   ; 
- D 0 - I - 0x015054 05:9044: 06        .byte $06   ; 
- D 0 - I - 0x015055 05:9045: 51        .byte $51   ; 
- D 0 - I - 0x015056 05:9046: 03        .byte $03   ; 
- D 0 - I - 0x015057 05:9047: 5D        .byte $5D   ; 
- D 0 - I - 0x015058 05:9048: 5D        .byte $5D   ; 
- D 0 - I - 0x015059 05:9049: 06        .byte $06   ; 
- D 0 - I - 0x01505A 05:904A: 4F        .byte $4F   ; 
- D 0 - I - 0x01505B 05:904B: 03        .byte $03   ; 
- D 0 - I - 0x01505C 05:904C: 5B        .byte $5B   ; 
- D 0 - I - 0x01505D 05:904D: 5B        .byte $5B   ; 
- D 0 - I - 0x01505E 05:904E: 06        .byte $06   ; 
- D 0 - I - 0x01505F 05:904F: 4F        .byte $4F   ; 
- D 0 - I - 0x015060 05:9050: 03        .byte $03   ; 
- D 0 - I - 0x015061 05:9051: 5B        .byte $5B   ; 
- D 0 - I - 0x015062 05:9052: 5B        .byte $5B   ; 
- D 0 - I - 0x015063 05:9053: 06        .byte $06   ; 
- D 0 - I - 0x015064 05:9054: 4F        .byte $4F   ; 
- D 0 - I - 0x015065 05:9055: 03        .byte $03   ; 
- D 0 - I - 0x015066 05:9056: 5B        .byte $5B   ; 
- D 0 - I - 0x015067 05:9057: 5B        .byte $5B   ; 
- D 0 - I - 0x015068 05:9058: 06        .byte $06   ; 
- D 0 - I - 0x015069 05:9059: 4F        .byte $4F   ; 
- D 0 - I - 0x01506A 05:905A: 03        .byte $03   ; 
- D 0 - I - 0x01506B 05:905B: 5B        .byte $5B   ; 
- D 0 - I - 0x01506C 05:905C: 5B        .byte $5B   ; 
- D 0 - I - 0x01506D 05:905D: 06        .byte $06   ; 
- D 0 - I - 0x01506E 05:905E: 48        .byte $48   ; 
- D 0 - I - 0x01506F 05:905F: 03        .byte $03   ; 
- D 0 - I - 0x015070 05:9060: 54        .byte $54   ; 
- D 0 - I - 0x015071 05:9061: 54        .byte $54   ; 
- D 0 - I - 0x015072 05:9062: 06        .byte $06   ; 
- D 0 - I - 0x015073 05:9063: 48        .byte $48   ; 
- D 0 - I - 0x015074 05:9064: 03        .byte $03   ; 
- D 0 - I - 0x015075 05:9065: 54        .byte $54   ; 
- D 0 - I - 0x015076 05:9066: 54        .byte $54   ; 
- D 0 - I - 0x015077 05:9067: 06        .byte $06   ; 
- D 0 - I - 0x015078 05:9068: 48        .byte $48   ; 
- D 0 - I - 0x015079 05:9069: 03        .byte $03   ; 
- D 0 - I - 0x01507A 05:906A: 54        .byte $54   ; 
- D 0 - I - 0x01507B 05:906B: 54        .byte $54   ; 
- D 0 - I - 0x01507C 05:906C: 06        .byte $06   ; 
- D 0 - I - 0x01507D 05:906D: 48        .byte $48   ; 
- D 0 - I - 0x01507E 05:906E: 03        .byte $03   ; 
- D 0 - I - 0x01507F 05:906F: 54        .byte $54   ; 
- D 0 - I - 0x015080 05:9070: 54        .byte $54   ; 
- D 0 - I - 0x015081 05:9071: 06        .byte $06   ; 
- D 0 - I - 0x015082 05:9072: 4A        .byte $4A   ; 
- D 0 - I - 0x015083 05:9073: 03        .byte $03   ; 
- D 0 - I - 0x015084 05:9074: 56        .byte $56   ; 
- D 0 - I - 0x015085 05:9075: 56        .byte $56   ; 
- D 0 - I - 0x015086 05:9076: 06        .byte $06   ; 
- D 0 - I - 0x015087 05:9077: 4A        .byte $4A   ; 
- D 0 - I - 0x015088 05:9078: 03        .byte $03   ; 
- D 0 - I - 0x015089 05:9079: 56        .byte $56   ; 
- D 0 - I - 0x01508A 05:907A: 56        .byte $56   ; 
- D 0 - I - 0x01508B 05:907B: 06        .byte $06   ; 
- D 0 - I - 0x01508C 05:907C: 4A        .byte $4A   ; 
- D 0 - I - 0x01508D 05:907D: 03        .byte $03   ; 
- D 0 - I - 0x01508E 05:907E: 56        .byte $56   ; 
- D 0 - I - 0x01508F 05:907F: 56        .byte $56   ; 
- D 0 - I - 0x015090 05:9080: 06        .byte $06   ; 
- D 0 - I - 0x015091 05:9081: 4A        .byte $4A   ; 
- D 0 - I - 0x015092 05:9082: 03        .byte $03   ; 
- D 0 - I - 0x015093 05:9083: 56        .byte $56   ; 
- D 0 - I - 0x015094 05:9084: 56        .byte $56   ; 
- D 0 - I - 0x015095 05:9085: 06        .byte $06   ; 
- D 0 - I - 0x015096 05:9086: 4D        .byte $4D   ; 
- D 0 - I - 0x015097 05:9087: 03        .byte $03   ; 
- D 0 - I - 0x015098 05:9088: 59        .byte $59   ; 
- D 0 - I - 0x015099 05:9089: 59        .byte $59   ; 
- D 0 - I - 0x01509A 05:908A: 06        .byte $06   ; 
- D 0 - I - 0x01509B 05:908B: 4D        .byte $4D   ; 
- D 0 - I - 0x01509C 05:908C: 03        .byte $03   ; 
- D 0 - I - 0x01509D 05:908D: 59        .byte $59   ; 
- D 0 - I - 0x01509E 05:908E: 59        .byte $59   ; 
- D 0 - I - 0x01509F 05:908F: 06        .byte $06   ; 
- D 0 - I - 0x0150A0 05:9090: 4D        .byte $4D   ; 
- D 0 - I - 0x0150A1 05:9091: 03        .byte $03   ; 
- D 0 - I - 0x0150A2 05:9092: 59        .byte $59   ; 
- D 0 - I - 0x0150A3 05:9093: 59        .byte $59   ; 
- D 0 - I - 0x0150A4 05:9094: 06        .byte $06   ; 
- D 0 - I - 0x0150A5 05:9095: 4D        .byte $4D   ; 
- D 0 - I - 0x0150A6 05:9096: 03        .byte $03   ; 
- D 0 - I - 0x0150A7 05:9097: 59        .byte $59   ; 
- D 0 - I - 0x0150A8 05:9098: 59        .byte $59   ; 
- D 0 - I - 0x0150A9 05:9099: 06        .byte $06   ; 
- D 0 - I - 0x0150AA 05:909A: 4C        .byte $4C   ; 
- D 0 - I - 0x0150AB 05:909B: 03        .byte $03   ; 
- D 0 - I - 0x0150AC 05:909C: 58        .byte $58   ; 
- D 0 - I - 0x0150AD 05:909D: 58        .byte $58   ; 
- D 0 - I - 0x0150AE 05:909E: 06        .byte $06   ; 
- D 0 - I - 0x0150AF 05:909F: 4C        .byte $4C   ; 
- D 0 - I - 0x0150B0 05:90A0: 03        .byte $03   ; 
- D 0 - I - 0x0150B1 05:90A1: 58        .byte $58   ; 
- D 0 - I - 0x0150B2 05:90A2: 58        .byte $58   ; 
- D 0 - I - 0x0150B3 05:90A3: 06        .byte $06   ; 
- D 0 - I - 0x0150B4 05:90A4: 4C        .byte $4C   ; 
- D 0 - I - 0x0150B5 05:90A5: 03        .byte $03   ; 
- D 0 - I - 0x0150B6 05:90A6: 58        .byte $58   ; 
- D 0 - I - 0x0150B7 05:90A7: 58        .byte $58   ; 
- D 0 - I - 0x0150B8 05:90A8: 06        .byte $06   ; 
- D 0 - I - 0x0150B9 05:90A9: 4C        .byte $4C   ; 
- D 0 - I - 0x0150BA 05:90AA: 92        .byte $92   ; 
- D 0 - I - 0x0150BB 05:90AB: 80        .byte $80   ; 
- D 0 - I - 0x0150BC 05:90AC: 52        .byte $52   ; 
- D 0 - I - 0x0150BD 05:90AD: 03        .byte $03   ; 
- D 0 - I - 0x0150BE 05:90AE: 5E        .byte $5E   ; 
- D 0 - I - 0x0150BF 05:90AF: 5E        .byte $5E   ; 
- D 0 - I - 0x0150C0 05:90B0: 06        .byte $06   ; 
- D 0 - I - 0x0150C1 05:90B1: 52        .byte $52   ; 
- D 0 - I - 0x0150C2 05:90B2: 03        .byte $03   ; 
- D 0 - I - 0x0150C3 05:90B3: 5E        .byte $5E   ; 
- D 0 - I - 0x0150C4 05:90B4: 5E        .byte $5E   ; 
- D 0 - I - 0x0150C5 05:90B5: 06        .byte $06   ; 
- D 0 - I - 0x0150C6 05:90B6: 52        .byte $52   ; 
- D 0 - I - 0x0150C7 05:90B7: 03        .byte $03   ; 
- D 0 - I - 0x0150C8 05:90B8: 5E        .byte $5E   ; 
- D 0 - I - 0x0150C9 05:90B9: 5E        .byte $5E   ; 
- D 0 - I - 0x0150CA 05:90BA: 06        .byte $06   ; 
- D 0 - I - 0x0150CB 05:90BB: 52        .byte $52   ; 
- D 0 - I - 0x0150CC 05:90BC: 8F        .byte $8F   ; 
- D 0 - I - 0x0150CD 05:90BD: 80        .byte $80   ; 
- D 0 - I - 0x0150CE 05:90BE: 4F        .byte $4F   ; 
- D 0 - I - 0x0150CF 05:90BF: 03        .byte $03   ; 
- D 0 - I - 0x0150D0 05:90C0: 5B        .byte $5B   ; 
- D 0 - I - 0x0150D1 05:90C1: 5B        .byte $5B   ; 
- D 0 - I - 0x0150D2 05:90C2: 4F        .byte $4F   ; 
- D 0 - I - 0x0150D3 05:90C3: 5B        .byte $5B   ; 
- D 0 - I - 0x0150D4 05:90C4: 06        .byte $06   ; 
- D 0 - I - 0x0150D5 05:90C5: 4F        .byte $4F   ; 
- D 0 - I - 0x0150D6 05:90C6: 4F        .byte $4F   ; 
- D 0 - I - 0x0150D7 05:90C7: 03        .byte $03   ; 
- D 0 - I - 0x0150D8 05:90C8: 5B        .byte $5B   ; 
- D 0 - I - 0x0150D9 05:90C9: 5B        .byte $5B   ; 
- D 0 - I - 0x0150DA 05:90CA: 06        .byte $06   ; 
- D 0 - I - 0x0150DB 05:90CB: 4F        .byte $4F   ; 
- D 0 - I - 0x0150DC 05:90CC: 03        .byte $03   ; 
- D 0 - I - 0x0150DD 05:90CD: 5B        .byte $5B   ; 
- D 0 - I - 0x0150DE 05:90CE: 5B        .byte $5B   ; 
- D 0 - I - 0x0150DF 05:90CF: 06        .byte $06   ; 
- D 0 - I - 0x0150E0 05:90D0: 4A        .byte $4A   ; 
- D 0 - I - 0x0150E1 05:90D1: 03        .byte $03   ; 
- D 0 - I - 0x0150E2 05:90D2: 56        .byte $56   ; 
- D 0 - I - 0x0150E3 05:90D3: 56        .byte $56   ; 
- D 0 - I - 0x0150E4 05:90D4: 06        .byte $06   ; 
- D 0 - I - 0x0150E5 05:90D5: 4A        .byte $4A   ; 
- D 0 - I - 0x0150E6 05:90D6: 03        .byte $03   ; 
- D 0 - I - 0x0150E7 05:90D7: 56        .byte $56   ; 
- D 0 - I - 0x0150E8 05:90D8: 56        .byte $56   ; 
- D 0 - I - 0x0150E9 05:90D9: 06        .byte $06   ; 
- D 0 - I - 0x0150EA 05:90DA: 4C        .byte $4C   ; 
- D 0 - I - 0x0150EB 05:90DB: 03        .byte $03   ; 
- D 0 - I - 0x0150EC 05:90DC: 58        .byte $58   ; 
- D 0 - I - 0x0150ED 05:90DD: 58        .byte $58   ; 
- D 0 - I - 0x0150EE 05:90DE: 06        .byte $06   ; 
- D 0 - I - 0x0150EF 05:90DF: 4C        .byte $4C   ; 
- D 0 - I - 0x0150F0 05:90E0: 03        .byte $03   ; 
- D 0 - I - 0x0150F1 05:90E1: 58        .byte $58   ; 
- D 0 - I - 0x0150F2 05:90E2: 58        .byte $58   ; 
- D 0 - I - 0x0150F3 05:90E3: 06        .byte $06   ; 
- D 0 - I - 0x0150F4 05:90E4: 51        .byte $51   ; 
- D 0 - I - 0x0150F5 05:90E5: 03        .byte $03   ; 
- D 0 - I - 0x0150F6 05:90E6: 5D        .byte $5D   ; 
- D 0 - I - 0x0150F7 05:90E7: 5D        .byte $5D   ; 
- D 0 - I - 0x0150F8 05:90E8: 06        .byte $06   ; 
- D 0 - I - 0x0150F9 05:90E9: 51        .byte $51   ; 
- D 0 - I - 0x0150FA 05:90EA: 03        .byte $03   ; 
- D 0 - I - 0x0150FB 05:90EB: 5D        .byte $5D   ; 
- D 0 - I - 0x0150FC 05:90EC: 5D        .byte $5D   ; 
- D 0 - I - 0x0150FD 05:90ED: 06        .byte $06   ; 
- D 0 - I - 0x0150FE 05:90EE: 51        .byte $51   ; 
- D 0 - I - 0x0150FF 05:90EF: 03        .byte $03   ; 
- D 0 - I - 0x015100 05:90F0: 5D        .byte $5D   ; 
- D 0 - I - 0x015101 05:90F1: 5D        .byte $5D   ; 
- D 0 - I - 0x015102 05:90F2: 06        .byte $06   ; 
- D 0 - I - 0x015103 05:90F3: 51        .byte $51   ; 
- D 0 - I - 0x015104 05:90F4: 03        .byte $03   ; 
- D 0 - I - 0x015105 05:90F5: 5D        .byte $5D   ; 
- D 0 - I - 0x015106 05:90F6: 5D        .byte $5D   ; 
- D 0 - I - 0x015107 05:90F7: 06        .byte $06   ; 
- D 0 - I - 0x015108 05:90F8: 4A        .byte $4A   ; 
- D 0 - I - 0x015109 05:90F9: 03        .byte $03   ; 
- D 0 - I - 0x01510A 05:90FA: 56        .byte $56   ; 
- D 0 - I - 0x01510B 05:90FB: 56        .byte $56   ; 
- D 0 - I - 0x01510C 05:90FC: 06        .byte $06   ; 
- D 0 - I - 0x01510D 05:90FD: 4A        .byte $4A   ; 
- D 0 - I - 0x01510E 05:90FE: 03        .byte $03   ; 
- D 0 - I - 0x01510F 05:90FF: 56        .byte $56   ; 
- D 0 - I - 0x015110 05:9100: 56        .byte $56   ; 
- D 0 - I - 0x015111 05:9101: 06        .byte $06   ; 
- D 0 - I - 0x015112 05:9102: 4C        .byte $4C   ; 
- D 0 - I - 0x015113 05:9103: 03        .byte $03   ; 
- D 0 - I - 0x015114 05:9104: 58        .byte $58   ; 
- D 0 - I - 0x015115 05:9105: 58        .byte $58   ; 
- D 0 - I - 0x015116 05:9106: 06        .byte $06   ; 
- D 0 - I - 0x015117 05:9107: 4C        .byte $4C   ; 
- D 0 - I - 0x015118 05:9108: 03        .byte $03   ; 
- D 0 - I - 0x015119 05:9109: 58        .byte $58   ; 
- D 0 - I - 0x01511A 05:910A: 58        .byte $58   ; 
- D 0 - I - 0x01511B 05:910B: 06        .byte $06   ; 
- D 0 - I - 0x01511C 05:910C: 51        .byte $51   ; 
- D 0 - I - 0x01511D 05:910D: 03        .byte $03   ; 
- D 0 - I - 0x01511E 05:910E: 5D        .byte $5D   ; 
- D 0 - I - 0x01511F 05:910F: 5D        .byte $5D   ; 
- D 0 - I - 0x015120 05:9110: 06        .byte $06   ; 
- D 0 - I - 0x015121 05:9111: 51        .byte $51   ; 
- D 0 - I - 0x015122 05:9112: 03        .byte $03   ; 
- D 0 - I - 0x015123 05:9113: 5D        .byte $5D   ; 
- D 0 - I - 0x015124 05:9114: 5D        .byte $5D   ; 
- D 0 - I - 0x015125 05:9115: 06        .byte $06   ; 
- D 0 - I - 0x015126 05:9116: 51        .byte $51   ; 
- D 0 - I - 0x015127 05:9117: 03        .byte $03   ; 
- D 0 - I - 0x015128 05:9118: 5D        .byte $5D   ; 
- D 0 - I - 0x015129 05:9119: 5D        .byte $5D   ; 
- D 0 - I - 0x01512A 05:911A: 06        .byte $06   ; 
- D 0 - I - 0x01512B 05:911B: 51        .byte $51   ; 
- D 0 - I - 0x01512C 05:911C: 03        .byte $03   ; 
- D 0 - I - 0x01512D 05:911D: 5D        .byte $5D   ; 
- D 0 - I - 0x01512E 05:911E: 5D        .byte $5D   ; 
- D 0 - I - 0x01512F 05:911F: 06        .byte $06   ; 
- D 0 - I - 0x015130 05:9120: 4A        .byte $4A   ; 
- D 0 - I - 0x015131 05:9121: 03        .byte $03   ; 
- D 0 - I - 0x015132 05:9122: 56        .byte $56   ; 
- D 0 - I - 0x015133 05:9123: 56        .byte $56   ; 
- D 0 - I - 0x015134 05:9124: 06        .byte $06   ; 
- D 0 - I - 0x015135 05:9125: 4A        .byte $4A   ; 
- D 0 - I - 0x015136 05:9126: 03        .byte $03   ; 
- D 0 - I - 0x015137 05:9127: 56        .byte $56   ; 
- D 0 - I - 0x015138 05:9128: 56        .byte $56   ; 
- D 0 - I - 0x015139 05:9129: 06        .byte $06   ; 
- D 0 - I - 0x01513A 05:912A: 4C        .byte $4C   ; 
- D 0 - I - 0x01513B 05:912B: 03        .byte $03   ; 
- D 0 - I - 0x01513C 05:912C: 58        .byte $58   ; 
- D 0 - I - 0x01513D 05:912D: 58        .byte $58   ; 
- D 0 - I - 0x01513E 05:912E: 06        .byte $06   ; 
- D 0 - I - 0x01513F 05:912F: 4C        .byte $4C   ; 
- D 0 - I - 0x015140 05:9130: 03        .byte $03   ; 
- D 0 - I - 0x015141 05:9131: 58        .byte $58   ; 
- D 0 - I - 0x015142 05:9132: 58        .byte $58   ; 
- D 0 - I - 0x015143 05:9133: 06        .byte $06   ; 
- D 0 - I - 0x015144 05:9134: 51        .byte $51   ; 
- D 0 - I - 0x015145 05:9135: 03        .byte $03   ; 
- D 0 - I - 0x015146 05:9136: 5D        .byte $5D   ; 
- D 0 - I - 0x015147 05:9137: 5D        .byte $5D   ; 
- D 0 - I - 0x015148 05:9138: 06        .byte $06   ; 
- D 0 - I - 0x015149 05:9139: 51        .byte $51   ; 
- D 0 - I - 0x01514A 05:913A: 03        .byte $03   ; 
- D 0 - I - 0x01514B 05:913B: 5D        .byte $5D   ; 
- D 0 - I - 0x01514C 05:913C: 5D        .byte $5D   ; 
- D 0 - I - 0x01514D 05:913D: 06        .byte $06   ; 
- D 0 - I - 0x01514E 05:913E: 51        .byte $51   ; 
- D 0 - I - 0x01514F 05:913F: 03        .byte $03   ; 
- D 0 - I - 0x015150 05:9140: 5D        .byte $5D   ; 
- D 0 - I - 0x015151 05:9141: 5D        .byte $5D   ; 
- D 0 - I - 0x015152 05:9142: 06        .byte $06   ; 
- D 0 - I - 0x015153 05:9143: 51        .byte $51   ; 
- D 0 - I - 0x015154 05:9144: 8F        .byte $8F   ; 
- D 0 - I - 0x015155 05:9145: 80        .byte $80   ; 
- D 0 - I - 0x015156 05:9146: 4F        .byte $4F   ; 
- D 0 - I - 0x015157 05:9147: 03        .byte $03   ; 
- D 0 - I - 0x015158 05:9148: 5B        .byte $5B   ; 
- D 0 - I - 0x015159 05:9149: 5B        .byte $5B   ; 
- D 0 - I - 0x01515A 05:914A: 4F        .byte $4F   ; 
- D 0 - I - 0x01515B 05:914B: 5B        .byte $5B   ; 
- D 0 - I - 0x01515C 05:914C: 06        .byte $06   ; 
- D 0 - I - 0x01515D 05:914D: 4F        .byte $4F   ; 
- D 0 - I - 0x01515E 05:914E: 4F        .byte $4F   ; 
- D 0 - I - 0x01515F 05:914F: 03        .byte $03   ; 
- D 0 - I - 0x015160 05:9150: 5B        .byte $5B   ; 
- D 0 - I - 0x015161 05:9151: 5B        .byte $5B   ; 
- D 0 - I - 0x015162 05:9152: 06        .byte $06   ; 
- D 0 - I - 0x015163 05:9153: 4F        .byte $4F   ; 
- D 0 - I - 0x015164 05:9154: 03        .byte $03   ; 
- D 0 - I - 0x015165 05:9155: 5B        .byte $5B   ; 
- D 0 - I - 0x015166 05:9156: 5B        .byte $5B   ; 
- D 0 - I - 0x015167 05:9157: 06        .byte $06   ; 
- D 0 - I - 0x015168 05:9158: 4F        .byte $4F   ; 
- D 0 - I - 0x015169 05:9159: 03        .byte $03   ; 
- D 0 - I - 0x01516A 05:915A: 5B        .byte $5B   ; 
- D 0 - I - 0x01516B 05:915B: 5B        .byte $5B   ; 
- D 0 - I - 0x01516C 05:915C: 06        .byte $06   ; 
- D 0 - I - 0x01516D 05:915D: 4F        .byte $4F   ; 
- D 0 - I - 0x01516E 05:915E: 03        .byte $03   ; 
- D 0 - I - 0x01516F 05:915F: 5B        .byte $5B   ; 
- D 0 - I - 0x015170 05:9160: 5B        .byte $5B   ; 
- D 0 - I - 0x015171 05:9161: 06        .byte $06   ; 
- D 0 - I - 0x015172 05:9162: 4F        .byte $4F   ; 
- D 0 - I - 0x015173 05:9163: 03        .byte $03   ; 
- D 0 - I - 0x015174 05:9164: 5B        .byte $5B   ; 
- D 0 - I - 0x015175 05:9165: 5B        .byte $5B   ; 
- D 0 - I - 0x015176 05:9166: 4F        .byte $4F   ; 
- D 0 - I - 0x015177 05:9167: 4C        .byte $4C   ; 
- D 0 - I - 0x015178 05:9168: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015179 05:9169: 8A        .byte $8A   ; 
- D 0 - I - 0x01517A 05:916A: 80        .byte $80   ; 
- D 0 - I - 0x01517B 05:916B: D0        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x01517C 05:916C: 16 8F     .word loc_D0_8F16


; bzk garbage
- - - - - - 0x01517E 05:916E: D3        .byte con_se_cb_stop   ; 



off_ch_01_916F_03:
- D 0 - I - 0x01517F 05:916F: CD        .byte con_se_cb_CD   ; 
- D 0 - I - 0x015180 05:9170: F3 8B     .word ofs_CD_8BF3
- D 0 - I - 0x015182 05:9172: C4        .byte con_se_cb_C4, $23   ; 
- D 0 - I - 0x015184 05:9174: 03        .byte $03   ; 
- D 0 - I - 0x015185 05:9175: 83        .byte $83   ; 
- D 0 - I - 0x015186 05:9176: 80        .byte $80   ; 
loc_D0_9177:
- D 0 - I - 0x015187 05:9177: D1        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x015188 05:9178: 39 92     .word sub_D1_9239
- D 0 - I - 0x01518A 05:917A: 06        .byte $06   ; 
- D 0 - I - 0x01518B 05:917B: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x01518C 05:917C: 03        .byte $03   ; 
- D 0 - I - 0x01518D 05:917D: 41        .byte $41   ; 
- D 0 - I - 0x01518E 05:917E: 41        .byte $41   ; 
- D 0 - I - 0x01518F 05:917F: 06        .byte $06   ; 
- D 0 - I - 0x015190 05:9180: 42        .byte $42   ; 
- D 0 - I - 0x015191 05:9181: 41        .byte $41   ; 
- D 0 - I - 0x015192 05:9182: 03        .byte $03   ; 
- D 0 - I - 0x015193 05:9183: 41        .byte $41   ; 
- D 0 - I - 0x015194 05:9184: 41        .byte $41   ; 
- D 0 - I - 0x015195 05:9185: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015196 05:9186: 41        .byte $41   ; 
- D 0 - I - 0x015197 05:9187: 4C        .byte $4C   ; 
- D 0 - I - 0x015198 05:9188: 4C        .byte $4C   ; 
- D 0 - I - 0x015199 05:9189: 41        .byte $41   ; 
- D 0 - I - 0x01519A 05:918A: 83        .byte $83   ; 
- D 0 - I - 0x01519B 05:918B: 80        .byte $80   ; 
- D 0 - I - 0x01519C 05:918C: D1        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x01519D 05:918D: 39 92     .word sub_D1_9239
- D 0 - I - 0x01519F 05:918F: 06        .byte $06   ; 
- D 0 - I - 0x0151A0 05:9190: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0151A1 05:9191: 03        .byte $03   ; 
- D 0 - I - 0x0151A2 05:9192: 41        .byte $41   ; 
- D 0 - I - 0x0151A3 05:9193: 41        .byte $41   ; 
- D 0 - I - 0x0151A4 05:9194: 06        .byte $06   ; 
- D 0 - I - 0x0151A5 05:9195: 42        .byte $42   ; 
- D 0 - I - 0x0151A6 05:9196: 03        .byte $03   ; 
- D 0 - I - 0x0151A7 05:9197: 41        .byte $41   ; 
- D 0 - I - 0x0151A8 05:9198: 83        .byte $83   ; 
- D 0 - I - 0x0151A9 05:9199: 80        .byte $80   ; 
- D 0 - I - 0x0151AA 05:919A: 43        .byte $43   ; 
- D 0 - I - 0x0151AB 05:919B: 41        .byte $41   ; 
- D 0 - I - 0x0151AC 05:919C: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0151AD 05:919D: 41        .byte $41   ; 
- D 0 - I - 0x0151AE 05:919E: 4C        .byte $4C   ; 
- D 0 - I - 0x0151AF 05:919F: 4C        .byte $4C   ; 
- D 0 - I - 0x0151B0 05:91A0: 41        .byte $41   ; 
- D 0 - I - 0x0151B1 05:91A1: 41        .byte $41   ; 
- D 0 - I - 0x0151B2 05:91A2: 09        .byte $09   ; 
- D 0 - I - 0x0151B3 05:91A3: 4C        .byte $4C   ; 
- D 0 - I - 0x0151B4 05:91A4: 03        .byte $03   ; 
- D 0 - I - 0x0151B5 05:91A5: 8C        .byte $8C   ; 
- D 0 - I - 0x0151B6 05:91A6: 80        .byte $80   ; 
- D 0 - I - 0x0151B7 05:91A7: 06        .byte $06   ; 
- D 0 - I - 0x0151B8 05:91A8: 4C        .byte $4C   ; 
- D 0 - I - 0x0151B9 05:91A9: 4C        .byte $4C   ; 
- D 0 - I - 0x0151BA 05:91AA: 4C        .byte $4C   ; 
- D 0 - I - 0x0151BB 05:91AB: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0151BC 05:91AC: 03        .byte $03   ; 
- D 0 - I - 0x0151BD 05:91AD: 4C        .byte $4C   ; 
- D 0 - I - 0x0151BE 05:91AE: 4C        .byte $4C   ; 
- D 0 - I - 0x0151BF 05:91AF: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0151C0 05:91B0: 4C        .byte $4C   ; 
off_CE_91B1:
- D 0 - I - 0x0151C1 05:91B1: 06        .byte $06   ; 
- D 0 - I - 0x0151C2 05:91B2: 41        .byte $41   ; 
- D 0 - I - 0x0151C3 05:91B3: 03        .byte $03   ; 
- D 0 - I - 0x0151C4 05:91B4: 41        .byte $41   ; 
- D 0 - I - 0x0151C5 05:91B5: 41        .byte $41   ; 
- D 0 - I - 0x0151C6 05:91B6: 06        .byte $06   ; 
- D 0 - I - 0x0151C7 05:91B7: 42        .byte $42   ; 
- D 0 - I - 0x0151C8 05:91B8: 03        .byte $03   ; 
- D 0 - I - 0x0151C9 05:91B9: 41        .byte $41   ; 
- D 0 - I - 0x0151CA 05:91BA: 41        .byte $41   ; 
- D 0 - I - 0x0151CB 05:91BB: CE        .byte con_se_cb_loop_1, $0E   ; 
- D 0 - I - 0x0151CD 05:91BD: B1 91     .word off_CE_91B1
- D 0 - I - 0x0151CF 05:91BF: 06        .byte $06   ; 
- D 0 - I - 0x0151D0 05:91C0: 41        .byte $41   ; 
- D 0 - I - 0x0151D1 05:91C1: 03        .byte $03   ; 
- D 0 - I - 0x0151D2 05:91C2: 41        .byte $41   ; 
- D 0 - I - 0x0151D3 05:91C3: 41        .byte $41   ; 
- D 0 - I - 0x0151D4 05:91C4: 06        .byte $06   ; 
- D 0 - I - 0x0151D5 05:91C5: 4C        .byte $4C   ; 
- D 0 - I - 0x0151D6 05:91C6: 03        .byte $03   ; 
- D 0 - I - 0x0151D7 05:91C7: 4C        .byte $4C   ; 
- D 0 - I - 0x0151D8 05:91C8: 4C        .byte $4C   ; 
- D 0 - I - 0x0151D9 05:91C9: 0C        .byte $0C   ; 
- D 0 - I - 0x0151DA 05:91CA: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0151DB 05:91CB: 03        .byte $03   ; 
- D 0 - I - 0x0151DC 05:91CC: 4C        .byte $4C   ; 
- D 0 - I - 0x0151DD 05:91CD: 4C        .byte $4C   ; 
- D 0 - I - 0x0151DE 05:91CE: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0151DF 05:91CF: 4C        .byte $4C   ; 
off_CE_91D0:
- D 0 - I - 0x0151E0 05:91D0: 06        .byte $06   ; 
- D 0 - I - 0x0151E1 05:91D1: 41        .byte $41   ; 
- D 0 - I - 0x0151E2 05:91D2: 03        .byte $03   ; 
- D 0 - I - 0x0151E3 05:91D3: 41        .byte $41   ; 
- D 0 - I - 0x0151E4 05:91D4: 41        .byte $41   ; 
- D 0 - I - 0x0151E5 05:91D5: 06        .byte $06   ; 
- D 0 - I - 0x0151E6 05:91D6: 42        .byte $42   ; 
- D 0 - I - 0x0151E7 05:91D7: 03        .byte $03   ; 
- D 0 - I - 0x0151E8 05:91D8: 41        .byte $41   ; 
- D 0 - I - 0x0151E9 05:91D9: 41        .byte $41   ; 
- D 0 - I - 0x0151EA 05:91DA: CE        .byte con_se_cb_loop_1, $0E   ; 
- D 0 - I - 0x0151EC 05:91DC: D0 91     .word off_CE_91D0
- D 0 - I - 0x0151EE 05:91DE: 06        .byte $06   ; 
- D 0 - I - 0x0151EF 05:91DF: 41        .byte $41   ; 
- D 0 - I - 0x0151F0 05:91E0: 03        .byte $03   ; 
- D 0 - I - 0x0151F1 05:91E1: 41        .byte $41   ; 
- D 0 - I - 0x0151F2 05:91E2: 41        .byte $41   ; 
- D 0 - I - 0x0151F3 05:91E3: 06        .byte $06   ; 
- D 0 - I - 0x0151F4 05:91E4: 4C        .byte $4C   ; 
- D 0 - I - 0x0151F5 05:91E5: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0151F6 05:91E6: 03        .byte $03   ; 
- D 0 - I - 0x0151F7 05:91E7: 4C        .byte $4C   ; 
- D 0 - I - 0x0151F8 05:91E8: 4C        .byte $4C   ; 
- D 0 - I - 0x0151F9 05:91E9: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0151FA 05:91EA: 4C        .byte $4C   ; 
- D 0 - I - 0x0151FB 05:91EB: 06        .byte $06   ; 
- D 0 - I - 0x0151FC 05:91EC: 4C        .byte $4C   ; 
- D 0 - I - 0x0151FD 05:91ED: 4C        .byte $4C   ; 
off_CE_91EE:
- D 0 - I - 0x0151FE 05:91EE: 06        .byte $06   ; 
- D 0 - I - 0x0151FF 05:91EF: 41        .byte $41   ; 
- D 0 - I - 0x015200 05:91F0: 03        .byte $03   ; 
- D 0 - I - 0x015201 05:91F1: 41        .byte $41   ; 
- D 0 - I - 0x015202 05:91F2: 41        .byte $41   ; 
- D 0 - I - 0x015203 05:91F3: 06        .byte $06   ; 
- D 0 - I - 0x015204 05:91F4: 42        .byte $42   ; 
- D 0 - I - 0x015205 05:91F5: 03        .byte $03   ; 
- D 0 - I - 0x015206 05:91F6: 41        .byte $41   ; 
- D 0 - I - 0x015207 05:91F7: 41        .byte $41   ; 
- D 0 - I - 0x015208 05:91F8: CE        .byte con_se_cb_loop_1, $0A   ; 
- D 0 - I - 0x01520A 05:91FA: EE 91     .word off_CE_91EE
- D 0 - I - 0x01520C 05:91FC: 06        .byte $06   ; 
- D 0 - I - 0x01520D 05:91FD: 41        .byte $41   ; 
- D 0 - I - 0x01520E 05:91FE: 03        .byte $03   ; 
- D 0 - I - 0x01520F 05:91FF: 41        .byte $41   ; 
- D 0 - I - 0x015210 05:9200: 41        .byte $41   ; 
- D 0 - I - 0x015211 05:9201: 06        .byte $06   ; 
- D 0 - I - 0x015212 05:9202: 42        .byte $42   ; 
- D 0 - I - 0x015213 05:9203: 03        .byte $03   ; 
- D 0 - I - 0x015214 05:9204: 41        .byte $41   ; 
- D 0 - I - 0x015215 05:9205: 41        .byte $41   ; 
- D 0 - I - 0x015216 05:9206: 06        .byte $06   ; 
- D 0 - I - 0x015217 05:9207: 41        .byte $41   ; 
- D 0 - I - 0x015218 05:9208: 03        .byte $03   ; 
- D 0 - I - 0x015219 05:9209: 41        .byte $41   ; 
- D 0 - I - 0x01521A 05:920A: 41        .byte $41   ; 
- D 0 - I - 0x01521B 05:920B: 06        .byte $06   ; 
- D 0 - I - 0x01521C 05:920C: 4C        .byte $4C   ; 
- D 0 - I - 0x01521D 05:920D: 83        .byte $83   ; 
- D 0 - I - 0x01521E 05:920E: 80        .byte $80   ; 
- D 0 - I - 0x01521F 05:920F: 43        .byte $43   ; 
- D 0 - I - 0x015220 05:9210: 03        .byte $03   ; 
- D 0 - I - 0x015221 05:9211: 41        .byte $41   ; 
- D 0 - I - 0x015222 05:9212: 41        .byte $41   ; 
- D 0 - I - 0x015223 05:9213: 06        .byte $06   ; 
- D 0 - I - 0x015224 05:9214: 41        .byte $41   ; 
- D 0 - I - 0x015225 05:9215: 03        .byte $03   ; 
- D 0 - I - 0x015226 05:9216: 41        .byte $41   ; 
- D 0 - I - 0x015227 05:9217: 41        .byte $41   ; 
- D 0 - I - 0x015228 05:9218: 06        .byte $06   ; 
- D 0 - I - 0x015229 05:9219: 41        .byte $41   ; 
- D 0 - I - 0x01522A 05:921A: 03        .byte $03   ; 
- D 0 - I - 0x01522B 05:921B: 41        .byte $41   ; 
- D 0 - I - 0x01522C 05:921C: 41        .byte $41   ; 
- D 0 - I - 0x01522D 05:921D: 06        .byte $06   ; 
- D 0 - I - 0x01522E 05:921E: 4C        .byte $4C   ; 
- D 0 - I - 0x01522F 05:921F: 03        .byte $03   ; 
- D 0 - I - 0x015230 05:9220: 41        .byte $41   ; 
- D 0 - I - 0x015231 05:9221: 41        .byte $41   ; 
- D 0 - I - 0x015232 05:9222: 06        .byte $06   ; 
- D 0 - I - 0x015233 05:9223: 41        .byte $41   ; 
- D 0 - I - 0x015234 05:9224: 03        .byte $03   ; 
- D 0 - I - 0x015235 05:9225: 41        .byte $41   ; 
- D 0 - I - 0x015236 05:9226: 41        .byte $41   ; 
- D 0 - I - 0x015237 05:9227: 06        .byte $06   ; 
- D 0 - I - 0x015238 05:9228: 41        .byte $41   ; 
- D 0 - I - 0x015239 05:9229: 03        .byte $03   ; 
- D 0 - I - 0x01523A 05:922A: 41        .byte $41   ; 
- D 0 - I - 0x01523B 05:922B: 41        .byte $41   ; 
- D 0 - I - 0x01523C 05:922C: 06        .byte $06   ; 
- D 0 - I - 0x01523D 05:922D: 41        .byte $41   ; 
- D 0 - I - 0x01523E 05:922E: 03        .byte $03   ; 
- D 0 - I - 0x01523F 05:922F: 41        .byte $41   ; 
- D 0 - I - 0x015240 05:9230: 41        .byte $41   ; 
- D 0 - I - 0x015241 05:9231: 4C        .byte $4C   ; 
- D 0 - I - 0x015242 05:9232: 4C        .byte $4C   ; 
- D 0 - I - 0x015243 05:9233: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015244 05:9234: 83        .byte $83   ; 
- D 0 - I - 0x015245 05:9235: 80        .byte $80   ; 
- D 0 - I - 0x015246 05:9236: D0        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x015247 05:9237: 77 91     .word loc_D0_9177



sub_D1_9239:
- D 0 - I - 0x015249 05:9239: 06        .byte $06   ; 
- D 0 - I - 0x01524A 05:923A: 43        .byte $43   ; 
- D 0 - I - 0x01524B 05:923B: 03        .byte $03   ; 
- D 0 - I - 0x01524C 05:923C: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x01524D 05:923D: 41        .byte $41   ; 
- D 0 - I - 0x01524E 05:923E: 06        .byte $06   ; 
- D 0 - I - 0x01524F 05:923F: 42        .byte $42   ; 
- D 0 - I - 0x015250 05:9240: 41        .byte $41   ; 
- D 0 - I - 0x015251 05:9241: 03        .byte $03   ; 
- D 0 - I - 0x015252 05:9242: 41        .byte $41   ; 
- D 0 - I - 0x015253 05:9243: 41        .byte $41   ; 
- D 0 - I - 0x015254 05:9244: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015255 05:9245: 41        .byte $41   ; 
- D 0 - I - 0x015256 05:9246: 06        .byte $06   ; 
- D 0 - I - 0x015257 05:9247: 4C        .byte $4C   ; 
- D 0 - I - 0x015258 05:9248: 03        .byte $03   ; 
- D 0 - I - 0x015259 05:9249: 41        .byte $41   ; 
- D 0 - I - 0x01525A 05:924A: 41        .byte $41   ; 
- D 0 - I - 0x01525B 05:924B: 06        .byte $06   ; 
- D 0 - I - 0x01525C 05:924C: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x01525D 05:924D: 03        .byte $03   ; 
- D 0 - I - 0x01525E 05:924E: 41        .byte $41   ; 
- D 0 - I - 0x01525F 05:924F: 41        .byte $41   ; 
- D 0 - I - 0x015260 05:9250: 06        .byte $06   ; 
- D 0 - I - 0x015261 05:9251: 42        .byte $42   ; 
- D 0 - I - 0x015262 05:9252: 41        .byte $41   ; 
- D 0 - I - 0x015263 05:9253: 03        .byte $03   ; 
- D 0 - I - 0x015264 05:9254: 41        .byte $41   ; 
- D 0 - I - 0x015265 05:9255: 41        .byte $41   ; 
- D 0 - I - 0x015266 05:9256: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015267 05:9257: 41        .byte $41   ; 
- D 0 - I - 0x015268 05:9258: 06        .byte $06   ; 
- D 0 - I - 0x015269 05:9259: 4C        .byte $4C   ; 
- D 0 - I - 0x01526A 05:925A: 03        .byte $03   ; 
- D 0 - I - 0x01526B 05:925B: 41        .byte $41   ; 
- D 0 - I - 0x01526C 05:925C: 41        .byte $41   ; 
- D 0 - I - 0x01526D 05:925D: 06        .byte $06   ; 
- D 0 - I - 0x01526E 05:925E: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x01526F 05:925F: 03        .byte $03   ; 
- D 0 - I - 0x015270 05:9260: 41        .byte $41   ; 
- D 0 - I - 0x015271 05:9261: 41        .byte $41   ; 
- D 0 - I - 0x015272 05:9262: 06        .byte $06   ; 
- D 0 - I - 0x015273 05:9263: 42        .byte $42   ; 
- D 0 - I - 0x015274 05:9264: 41        .byte $41   ; 
- D 0 - I - 0x015275 05:9265: 03        .byte $03   ; 
- D 0 - I - 0x015276 05:9266: 41        .byte $41   ; 
- D 0 - I - 0x015277 05:9267: 41        .byte $41   ; 
- D 0 - I - 0x015278 05:9268: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015279 05:9269: 41        .byte $41   ; 
- D 0 - I - 0x01527A 05:926A: 06        .byte $06   ; 
- D 0 - I - 0x01527B 05:926B: 4C        .byte $4C   ; 
- D 0 - I - 0x01527C 05:926C: 03        .byte $03   ; 
- D 0 - I - 0x01527D 05:926D: 41        .byte $41   ; 
- D 0 - I - 0x01527E 05:926E: 41        .byte $41   ; 
- D 0 - I - 0x01527F 05:926F: D2        .byte con_se_cb_rts   ; 


; bzk garbage
- - - - - - 0x015280 05:9270: D3        .byte con_se_cb_stop   ; 



_off013_9271_02_mission_2:
- D 0 - I - 0x015281 05:9271: FF        .byte $FF   ; 
- D 0 - I - 0x015282 05:9272: 00        .byte $00   ; 
- D 0 - I - 0x015283 05:9273: 7F 92     .word off_ch_02_927F_00
- D 0 - I - 0x015285 05:9275: 01        .byte $01   ; 
- D 0 - I - 0x015286 05:9276: 9A 93     .word off_ch_02_939A_01
- D 0 - I - 0x015288 05:9278: 02        .byte $02   ; 
- D 0 - I - 0x015289 05:9279: AB 94     .word off_ch_02_94AB_02
- D 0 - I - 0x01528B 05:927B: 03        .byte $03   ; 
- D 0 - I - 0x01528C 05:927C: 85 95     .word off_ch_02_9585_03
- D 0 - I - 0x01528E 05:927E: FF        .byte $FF   ; 



off_ch_02_927F_00:
- D 0 - I - 0x01528F 05:927F: CC        .byte con_se_cb_CC, $7D   ; 
- D 0 - I - 0x015291 05:9281: CD        .byte con_se_cb_CD   ; 
- D 0 - I - 0x015292 05:9282: 7A 8B     .word ofs_CD_8B7A
- D 0 - I - 0x015294 05:9284: DB        .byte con_se_cb_DB, $0C, $1E, $78   ; 
- D 0 - I - 0x015298 05:9288: D8        .byte con_se_cb_D8, $F9   ; 
- D 0 - I - 0x01529A 05:928A: C4        .byte con_se_cb_C4, $23   ; 
- D 0 - I - 0x01529C 05:928C: C7        .byte con_se_cb_C7, $AA   ; 
- D 0 - I - 0x01529E 05:928E: 06        .byte $06   ; 
- D 0 - I - 0x01529F 05:928F: C9        .byte con_se_cb_C9   ; 
loc_D0_9290:
- D 0 - I - 0x0152A0 05:9290: 18        .byte $18   ; 
- D 0 - I - 0x0152A1 05:9291: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0152A2 05:9292: 06        .byte $06   ; 
- D 0 - I - 0x0152A3 05:9293: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0152A4 05:9294: 75        .byte $75   ; 
- D 0 - I - 0x0152A5 05:9295: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0152A6 05:9296: A7        .byte $A7   ; 
- D 0 - I - 0x0152A7 05:9297: 80        .byte $80   ; 
- D 0 - I - 0x0152A8 05:9298: 12        .byte $12   ; 
- D 0 - I - 0x0152A9 05:9299: 67        .byte $67   ; 
- D 0 - I - 0x0152AA 05:929A: 06        .byte $06   ; 
- D 0 - I - 0x0152AB 05:929B: A4        .byte $A4   ; 
- D 0 - I - 0x0152AC 05:929C: 80        .byte $80   ; 
- D 0 - I - 0x0152AD 05:929D: 0C        .byte $0C   ; 
- D 0 - I - 0x0152AE 05:929E: 64        .byte $64   ; 
- D 0 - I - 0x0152AF 05:929F: 06        .byte $06   ; 
- D 0 - I - 0x0152B0 05:92A0: 6B        .byte $6B   ; 
- D 0 - I - 0x0152B1 05:92A1: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0152B2 05:92A2: 18        .byte $18   ; 
- D 0 - I - 0x0152B3 05:92A3: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0152B4 05:92A4: 06        .byte $06   ; 
- D 0 - I - 0x0152B5 05:92A5: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0152B6 05:92A6: 75        .byte $75   ; 
- D 0 - I - 0x0152B7 05:92A7: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0152B8 05:92A8: 67        .byte $67   ; 
- D 0 - I - 0x0152B9 05:92A9: 12        .byte $12   ; 
- D 0 - I - 0x0152BA 05:92AA: 67        .byte $67   ; 
- D 0 - I - 0x0152BB 05:92AB: 06        .byte $06   ; 
- D 0 - I - 0x0152BC 05:92AC: 69        .byte $69   ; 
- D 0 - I - 0x0152BD 05:92AD: 12        .byte $12   ; 
- D 0 - I - 0x0152BE 05:92AE: 69        .byte $69   ; 
- D 0 - I - 0x0152BF 05:92AF: 06        .byte $06   ; 
- D 0 - I - 0x0152C0 05:92B0: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0152C1 05:92B1: 18        .byte $18   ; 
- D 0 - I - 0x0152C2 05:92B2: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0152C3 05:92B3: 06        .byte $06   ; 
- D 0 - I - 0x0152C4 05:92B4: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0152C5 05:92B5: 75        .byte $75   ; 
- D 0 - I - 0x0152C6 05:92B6: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0152C7 05:92B7: A7        .byte $A7   ; 
- D 0 - I - 0x0152C8 05:92B8: 80        .byte $80   ; 
- D 0 - I - 0x0152C9 05:92B9: 12        .byte $12   ; 
- D 0 - I - 0x0152CA 05:92BA: 67        .byte $67   ; 
- D 0 - I - 0x0152CB 05:92BB: 06        .byte $06   ; 
- D 0 - I - 0x0152CC 05:92BC: A4        .byte $A4   ; 
- D 0 - I - 0x0152CD 05:92BD: 80        .byte $80   ; 
- D 0 - I - 0x0152CE 05:92BE: 0C        .byte $0C   ; 
- D 0 - I - 0x0152CF 05:92BF: 64        .byte $64   ; 
- D 0 - I - 0x0152D0 05:92C0: 06        .byte $06   ; 
- D 0 - I - 0x0152D1 05:92C1: 6B        .byte $6B   ; 
- D 0 - I - 0x0152D2 05:92C2: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0152D3 05:92C3: 18        .byte $18   ; 
- D 0 - I - 0x0152D4 05:92C4: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0152D5 05:92C5: 06        .byte $06   ; 
- D 0 - I - 0x0152D6 05:92C6: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0152D7 05:92C7: 75        .byte $75   ; 
- D 0 - I - 0x0152D8 05:92C8: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0152D9 05:92C9: 67        .byte $67   ; 
- D 0 - I - 0x0152DA 05:92CA: 12        .byte $12   ; 
- D 0 - I - 0x0152DB 05:92CB: 67        .byte $67   ; 
- D 0 - I - 0x0152DC 05:92CC: 06        .byte $06   ; 
- D 0 - I - 0x0152DD 05:92CD: 69        .byte $69   ; 
- D 0 - I - 0x0152DE 05:92CE: 12        .byte $12   ; 
- D 0 - I - 0x0152DF 05:92CF: 69        .byte $69   ; 
- D 0 - I - 0x0152E0 05:92D0: 06        .byte $06   ; 
- D 0 - I - 0x0152E1 05:92D1: B0        .byte $B0   ; 
- D 0 - I - 0x0152E2 05:92D2: 80        .byte $80   ; 
- D 0 - I - 0x0152E3 05:92D3: 70        .byte $70   ; 
- D 0 - I - 0x0152E4 05:92D4: 6C        .byte $6C   ; 
- D 0 - I - 0x0152E5 05:92D5: 0C        .byte $0C   ; 
- D 0 - I - 0x0152E6 05:92D6: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0152E7 05:92D7: 06        .byte $06   ; 
- D 0 - I - 0x0152E8 05:92D8: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0152E9 05:92D9: 75        .byte $75   ; 
- D 0 - I - 0x0152EA 05:92DA: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0152EB 05:92DB: A7        .byte $A7   ; 
- D 0 - I - 0x0152EC 05:92DC: 80        .byte $80   ; 
- D 0 - I - 0x0152ED 05:92DD: 12        .byte $12   ; 
- D 0 - I - 0x0152EE 05:92DE: 67        .byte $67   ; 
- D 0 - I - 0x0152EF 05:92DF: 06        .byte $06   ; 
- D 0 - I - 0x0152F0 05:92E0: A4        .byte $A4   ; 
- D 0 - I - 0x0152F1 05:92E1: 80        .byte $80   ; 
- D 0 - I - 0x0152F2 05:92E2: 0C        .byte $0C   ; 
- D 0 - I - 0x0152F3 05:92E3: 64        .byte $64   ; 
- D 0 - I - 0x0152F4 05:92E4: 06        .byte $06   ; 
- D 0 - I - 0x0152F5 05:92E5: 6B        .byte $6B   ; 
- D 0 - I - 0x0152F6 05:92E6: 6C        .byte $6C   ; 
- D 0 - I - 0x0152F7 05:92E7: 18        .byte $18   ; 
- D 0 - I - 0x0152F8 05:92E8: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0152F9 05:92E9: 06        .byte $06   ; 
- D 0 - I - 0x0152FA 05:92EA: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0152FB 05:92EB: 75        .byte $75   ; 
- D 0 - I - 0x0152FC 05:92EC: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0152FD 05:92ED: 67        .byte $67   ; 
- D 0 - I - 0x0152FE 05:92EE: 12        .byte $12   ; 
- D 0 - I - 0x0152FF 05:92EF: 67        .byte $67   ; 
- D 0 - I - 0x015300 05:92F0: 06        .byte $06   ; 
- D 0 - I - 0x015301 05:92F1: 69        .byte $69   ; 
- D 0 - I - 0x015302 05:92F2: 12        .byte $12   ; 
- D 0 - I - 0x015303 05:92F3: 69        .byte $69   ; 
- D 0 - I - 0x015304 05:92F4: 06        .byte $06   ; 
- D 0 - I - 0x015305 05:92F5: B0        .byte $B0   ; 
- D 0 - I - 0x015306 05:92F6: 80        .byte $80   ; 
- D 0 - I - 0x015307 05:92F7: 70        .byte $70   ; 
- D 0 - I - 0x015308 05:92F8: 6C        .byte $6C   ; 
- D 0 - I - 0x015309 05:92F9: 0C        .byte $0C   ; 
- D 0 - I - 0x01530A 05:92FA: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x01530B 05:92FB: 06        .byte $06   ; 
- D 0 - I - 0x01530C 05:92FC: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x01530D 05:92FD: 75        .byte $75   ; 
- D 0 - I - 0x01530E 05:92FE: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x01530F 05:92FF: A7        .byte $A7   ; 
- D 0 - I - 0x015310 05:9300: 80        .byte $80   ; 
- D 0 - I - 0x015311 05:9301: 12        .byte $12   ; 
- D 0 - I - 0x015312 05:9302: 67        .byte $67   ; 
- D 0 - I - 0x015313 05:9303: 06        .byte $06   ; 
- D 0 - I - 0x015314 05:9304: A4        .byte $A4   ; 
- D 0 - I - 0x015315 05:9305: 80        .byte $80   ; 
- D 0 - I - 0x015316 05:9306: 0C        .byte $0C   ; 
- D 0 - I - 0x015317 05:9307: 64        .byte $64   ; 
- D 0 - I - 0x015318 05:9308: 06        .byte $06   ; 
- D 0 - I - 0x015319 05:9309: 6B        .byte $6B   ; 
- D 0 - I - 0x01531A 05:930A: 6C        .byte $6C   ; 
- D 0 - I - 0x01531B 05:930B: 18        .byte $18   ; 
- D 0 - I - 0x01531C 05:930C: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x01531D 05:930D: 06        .byte $06   ; 
- D 0 - I - 0x01531E 05:930E: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x01531F 05:930F: 75        .byte $75   ; 
- D 0 - I - 0x015320 05:9310: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015321 05:9311: 67        .byte $67   ; 
- D 0 - I - 0x015322 05:9312: 12        .byte $12   ; 
- D 0 - I - 0x015323 05:9313: 67        .byte $67   ; 
- D 0 - I - 0x015324 05:9314: 06        .byte $06   ; 
- D 0 - I - 0x015325 05:9315: 69        .byte $69   ; 
- D 0 - I - 0x015326 05:9316: 12        .byte $12   ; 
- D 0 - I - 0x015327 05:9317: 69        .byte $69   ; 
- D 0 - I - 0x015328 05:9318: 06        .byte $06   ; 
- D 0 - I - 0x015329 05:9319: AC        .byte $AC   ; 
- D 0 - I - 0x01532A 05:931A: 80        .byte $80   ; 
- D 0 - I - 0x01532B 05:931B: C7        .byte con_se_cb_C7, $C8   ; 
- D 0 - I - 0x01532D 05:931D: 30        .byte $30   ; 
- D 0 - I - 0x01532E 05:931E: 6C        .byte $6C   ; 
- D 0 - I - 0x01532F 05:931F: C7        .byte con_se_cb_C7, $AA   ; 
- D 0 - I - 0x015331 05:9321: 06        .byte $06   ; 
- D 0 - I - 0x015332 05:9322: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015333 05:9323: 69        .byte $69   ; 
- D 0 - I - 0x015334 05:9324: 69        .byte $69   ; 
- D 0 - I - 0x015335 05:9325: 69        .byte $69   ; 
- D 0 - I - 0x015336 05:9326: 69        .byte $69   ; 
- D 0 - I - 0x015337 05:9327: 6B        .byte $6B   ; 
- D 0 - I - 0x015338 05:9328: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015339 05:9329: 6C        .byte $6C   ; 
- D 0 - I - 0x01533A 05:932A: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x01533B 05:932B: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x01533C 05:932C: 6C        .byte $6C   ; 
- D 0 - I - 0x01533D 05:932D: 6C        .byte $6C   ; 
- D 0 - I - 0x01533E 05:932E: 6C        .byte $6C   ; 
- D 0 - I - 0x01533F 05:932F: 6B        .byte $6B   ; 
- D 0 - I - 0x015340 05:9330: 69        .byte $69   ; 
- D 0 - I - 0x015341 05:9331: 67        .byte $67   ; 
- D 0 - I - 0x015342 05:9332: 69        .byte $69   ; 
- D 0 - I - 0x015343 05:9333: 6B        .byte $6B   ; 
- D 0 - I - 0x015344 05:9334: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015345 05:9335: A9        .byte $A9   ; 
- D 0 - I - 0x015346 05:9336: 80        .byte $80   ; 
- D 0 - I - 0x015347 05:9337: 69        .byte $69   ; 
- D 0 - I - 0x015348 05:9338: 6B        .byte $6B   ; 
- D 0 - I - 0x015349 05:9339: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x01534A 05:933A: 6C        .byte $6C   ; 
- D 0 - I - 0x01534B 05:933B: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x01534C 05:933C: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x01534D 05:933D: 6C        .byte $6C   ; 
- D 0 - I - 0x01534E 05:933E: 6C        .byte $6C   ; 
- D 0 - I - 0x01534F 05:933F: 0C        .byte $0C   ; 
- D 0 - I - 0x015350 05:9340: 6E        .byte $6E   ; 
- D 0 - I - 0x015351 05:9341: 06        .byte $06   ; 
- D 0 - I - 0x015352 05:9342: 6C        .byte $6C   ; 
- D 0 - I - 0x015353 05:9343: A9        .byte $A9   ; 
- D 0 - I - 0x015354 05:9344: 80        .byte $80   ; 
- D 0 - I - 0x015355 05:9345: 18        .byte $18   ; 
- D 0 - I - 0x015356 05:9346: 69        .byte $69   ; 
- D 0 - I - 0x015357 05:9347: 06        .byte $06   ; 
- D 0 - I - 0x015358 05:9348: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015359 05:9349: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x01535A 05:934A: 0C        .byte $0C   ; 
- D 0 - I - 0x01535B 05:934B: 6B        .byte $6B   ; 
- D 0 - I - 0x01535C 05:934C: 06        .byte $06   ; 
- D 0 - I - 0x01535D 05:934D: 6C        .byte $6C   ; 
- D 0 - I - 0x01535E 05:934E: 6C        .byte $6C   ; 
- D 0 - I - 0x01535F 05:934F: 6C        .byte $6C   ; 
- D 0 - I - 0x015360 05:9350: 6C        .byte $6C   ; 
- D 0 - I - 0x015361 05:9351: 6C        .byte $6C   ; 
- D 0 - I - 0x015362 05:9352: 6B        .byte $6B   ; 
- D 0 - I - 0x015363 05:9353: 6B        .byte $6B   ; 
- D 0 - I - 0x015364 05:9354: 69        .byte $69   ; 
- D 0 - I - 0x015365 05:9355: 69        .byte $69   ; 
- D 0 - I - 0x015366 05:9356: 69        .byte $69   ; 
- D 0 - I - 0x015367 05:9357: 6B        .byte $6B   ; 
- D 0 - I - 0x015368 05:9358: A9        .byte $A9   ; 
- D 0 - I - 0x015369 05:9359: 80        .byte $80   ; 
- D 0 - I - 0x01536A 05:935A: 69        .byte $69   ; 
- D 0 - I - 0x01536B 05:935B: 69        .byte $69   ; 
- D 0 - I - 0x01536C 05:935C: 0C        .byte $0C   ; 
- D 0 - I - 0x01536D 05:935D: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x01536E 05:935E: 06        .byte $06   ; 
- D 0 - I - 0x01536F 05:935F: 6B        .byte $6B   ; 
- D 0 - I - 0x015370 05:9360: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015371 05:9361: 6E        .byte $6E   ; 
- D 0 - I - 0x015372 05:9362: 6E        .byte $6E   ; 
- D 0 - I - 0x015373 05:9363: 6B        .byte $6B   ; 
- D 0 - I - 0x015374 05:9364: 67        .byte $67   ; 
- D 0 - I - 0x015375 05:9365: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015376 05:9366: A8        .byte $A8   ; 
- D 0 - I - 0x015377 05:9367: 80        .byte $80   ; 
- D 0 - I - 0x015378 05:9368: 68        .byte $68   ; 
- D 0 - I - 0x015379 05:9369: 64        .byte $64   ; 
- D 0 - I - 0x01537A 05:936A: 68        .byte $68   ; 
- D 0 - I - 0x01537B 05:936B: 69        .byte $69   ; 
- D 0 - I - 0x01537C 05:936C: 6B        .byte $6B   ; 
- D 0 - I - 0x01537D 05:936D: 6C        .byte $6C   ; 
- D 0 - I - 0x01537E 05:936E: 6E        .byte $6E   ; 
- D 0 - I - 0x01537F 05:936F: 70        .byte $70   ; 
- D 0 - I - 0x015380 05:9370: A0        .byte $A0   ; 
- D 0 - I - 0x015381 05:9371: 80        .byte $80   ; 
- D 0 - I - 0x015382 05:9372: A0        .byte $A0   ; 
- D 0 - I - 0x015383 05:9373: 80        .byte $80   ; 
- D 0 - I - 0x015384 05:9374: 60        .byte $60   ; 
- D 0 - I - 0x015385 05:9375: AC        .byte $AC   ; 
- D 0 - I - 0x015386 05:9376: 80        .byte $80   ; 
- D 0 - I - 0x015387 05:9377: 18        .byte $18   ; 
- D 0 - I - 0x015388 05:9378: 6C        .byte $6C   ; 
- D 0 - I - 0x015389 05:9379: 06        .byte $06   ; 
- D 0 - I - 0x01538A 05:937A: 9F        .byte $9F   ; 
- D 0 - I - 0x01538B 05:937B: 80        .byte $80   ; 
- D 0 - I - 0x01538C 05:937C: 9F        .byte $9F   ; 
- D 0 - I - 0x01538D 05:937D: 80        .byte $80   ; 
- D 0 - I - 0x01538E 05:937E: 5F        .byte $5F   ; 
- D 0 - I - 0x01538F 05:937F: AB        .byte $AB   ; 
- D 0 - I - 0x015390 05:9380: 80        .byte $80   ; 
- D 0 - I - 0x015391 05:9381: 18        .byte $18   ; 
- D 0 - I - 0x015392 05:9382: 6B        .byte $6B   ; 
- D 0 - I - 0x015393 05:9383: 06        .byte $06   ; 
- D 0 - I - 0x015394 05:9384: A0        .byte $A0   ; 
- D 0 - I - 0x015395 05:9385: 80        .byte $80   ; 
- D 0 - I - 0x015396 05:9386: A0        .byte $A0   ; 
- D 0 - I - 0x015397 05:9387: 80        .byte $80   ; 
- D 0 - I - 0x015398 05:9388: 60        .byte $60   ; 
- D 0 - I - 0x015399 05:9389: AC        .byte $AC   ; 
- D 0 - I - 0x01539A 05:938A: 80        .byte $80   ; 
- D 0 - I - 0x01539B 05:938B: 18        .byte $18   ; 
- D 0 - I - 0x01539C 05:938C: 6C        .byte $6C   ; 
- D 0 - I - 0x01539D 05:938D: 06        .byte $06   ; 
- D 0 - I - 0x01539E 05:938E: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x01539F 05:938F: 6C        .byte $6C   ; 
- D 0 - I - 0x0153A0 05:9390: 6C        .byte $6C   ; 
- D 0 - I - 0x0153A1 05:9391: 6B        .byte $6B   ; 
- D 0 - I - 0x0153A2 05:9392: 6C        .byte $6C   ; 
- D 0 - I - 0x0153A3 05:9393: 6E        .byte $6E   ; 
- D 0 - I - 0x0153A4 05:9394: 70        .byte $70   ; 
- D 0 - I - 0x0153A5 05:9395: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0153A6 05:9396: D0        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x0153A7 05:9397: 90 92     .word loc_D0_9290


; bzk garbage
- - - - - - 0x0153A9 05:9399: D3        .byte con_se_cb_stop   ; 



off_ch_02_939A_01:
- D 0 - I - 0x0153AA 05:939A: CD        .byte con_se_cb_CD   ; 
- D 0 - I - 0x0153AB 05:939B: 7A 8B     .word ofs_CD_8B7A
- D 0 - I - 0x0153AD 05:939D: DB        .byte con_se_cb_DB, $0C, $1E, $78   ; 
- D 0 - I - 0x0153B1 05:93A1: D8        .byte con_se_cb_D8, $F9   ; 
- D 0 - I - 0x0153B3 05:93A3: C4        .byte con_se_cb_C4, $23   ; 
- D 0 - I - 0x0153B5 05:93A5: C7        .byte con_se_cb_C7, $AA   ; 
- D 0 - I - 0x0153B7 05:93A7: 06        .byte $06   ; 
- D 0 - I - 0x0153B8 05:93A8: C9        .byte con_se_cb_C9   ; 
loc_D0_93A9:
- D 0 - I - 0x0153B9 05:93A9: 18        .byte $18   ; 
- D 0 - I - 0x0153BA 05:93AA: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0153BB 05:93AB: 06        .byte $06   ; 
- D 0 - I - 0x0153BC 05:93AC: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0153BD 05:93AD: 70        .byte $70   ; 
- D 0 - I - 0x0153BE 05:93AE: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0153BF 05:93AF: A2        .byte $A2   ; 
- D 0 - I - 0x0153C0 05:93B0: 80        .byte $80   ; 
- D 0 - I - 0x0153C1 05:93B1: 12        .byte $12   ; 
- D 0 - I - 0x0153C2 05:93B2: 62        .byte $62   ; 
- D 0 - I - 0x0153C3 05:93B3: 06        .byte $06   ; 
- D 0 - I - 0x0153C4 05:93B4: 9F        .byte $9F   ; 
- D 0 - I - 0x0153C5 05:93B5: 80        .byte $80   ; 
- D 0 - I - 0x0153C6 05:93B6: 0C        .byte $0C   ; 
- D 0 - I - 0x0153C7 05:93B7: 5F        .byte $5F   ; 
- D 0 - I - 0x0153C8 05:93B8: 06        .byte $06   ; 
- D 0 - I - 0x0153C9 05:93B9: 67        .byte $67   ; 
- D 0 - I - 0x0153CA 05:93BA: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0153CB 05:93BB: 18        .byte $18   ; 
- D 0 - I - 0x0153CC 05:93BC: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0153CD 05:93BD: 06        .byte $06   ; 
- D 0 - I - 0x0153CE 05:93BE: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0153CF 05:93BF: 70        .byte $70   ; 
- D 0 - I - 0x0153D0 05:93C0: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0153D1 05:93C1: 64        .byte $64   ; 
- D 0 - I - 0x0153D2 05:93C2: 12        .byte $12   ; 
- D 0 - I - 0x0153D3 05:93C3: 64        .byte $64   ; 
- D 0 - I - 0x0153D4 05:93C4: 06        .byte $06   ; 
- D 0 - I - 0x0153D5 05:93C5: 66        .byte $66   ; 
- D 0 - I - 0x0153D6 05:93C6: 12        .byte $12   ; 
- D 0 - I - 0x0153D7 05:93C7: 66        .byte $66   ; 
- D 0 - I - 0x0153D8 05:93C8: 06        .byte $06   ; 
- D 0 - I - 0x0153D9 05:93C9: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0153DA 05:93CA: 18        .byte $18   ; 
- D 0 - I - 0x0153DB 05:93CB: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0153DC 05:93CC: 06        .byte $06   ; 
- D 0 - I - 0x0153DD 05:93CD: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0153DE 05:93CE: 70        .byte $70   ; 
- D 0 - I - 0x0153DF 05:93CF: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0153E0 05:93D0: A2        .byte $A2   ; 
- D 0 - I - 0x0153E1 05:93D1: 80        .byte $80   ; 
- D 0 - I - 0x0153E2 05:93D2: 12        .byte $12   ; 
- D 0 - I - 0x0153E3 05:93D3: 62        .byte $62   ; 
- D 0 - I - 0x0153E4 05:93D4: 06        .byte $06   ; 
- D 0 - I - 0x0153E5 05:93D5: 9F        .byte $9F   ; 
- D 0 - I - 0x0153E6 05:93D6: 80        .byte $80   ; 
- D 0 - I - 0x0153E7 05:93D7: 0C        .byte $0C   ; 
- D 0 - I - 0x0153E8 05:93D8: 5F        .byte $5F   ; 
- D 0 - I - 0x0153E9 05:93D9: 06        .byte $06   ; 
- D 0 - I - 0x0153EA 05:93DA: 67        .byte $67   ; 
- D 0 - I - 0x0153EB 05:93DB: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0153EC 05:93DC: 18        .byte $18   ; 
- D 0 - I - 0x0153ED 05:93DD: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0153EE 05:93DE: 06        .byte $06   ; 
- D 0 - I - 0x0153EF 05:93DF: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0153F0 05:93E0: 70        .byte $70   ; 
- D 0 - I - 0x0153F1 05:93E1: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0153F2 05:93E2: 64        .byte $64   ; 
- D 0 - I - 0x0153F3 05:93E3: 12        .byte $12   ; 
- D 0 - I - 0x0153F4 05:93E4: 64        .byte $64   ; 
- D 0 - I - 0x0153F5 05:93E5: 06        .byte $06   ; 
- D 0 - I - 0x0153F6 05:93E6: AC        .byte $AC   ; 
- D 0 - I - 0x0153F7 05:93E7: 80        .byte $80   ; 
- D 0 - I - 0x0153F8 05:93E8: 6C        .byte $6C   ; 
- D 0 - I - 0x0153F9 05:93E9: 6B        .byte $6B   ; 
- D 0 - I - 0x0153FA 05:93EA: 69        .byte $69   ; 
- D 0 - I - 0x0153FB 05:93EB: AC        .byte $AC   ; 
- D 0 - I - 0x0153FC 05:93EC: 80        .byte $80   ; 
- D 0 - I - 0x0153FD 05:93ED: 6C        .byte $6C   ; 
- D 0 - I - 0x0153FE 05:93EE: 69        .byte $69   ; 
- D 0 - I - 0x0153FF 05:93EF: 0C        .byte $0C   ; 
- D 0 - I - 0x015400 05:93F0: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015401 05:93F1: 06        .byte $06   ; 
- D 0 - I - 0x015402 05:93F2: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015403 05:93F3: 70        .byte $70   ; 
- D 0 - I - 0x015404 05:93F4: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015405 05:93F5: AB        .byte $AB   ; 
- D 0 - I - 0x015406 05:93F6: 80        .byte $80   ; 
- D 0 - I - 0x015407 05:93F7: 6B        .byte $6B   ; 
- D 0 - I - 0x015408 05:93F8: 69        .byte $69   ; 
- D 0 - I - 0x015409 05:93F9: 6B        .byte $6B   ; 
- D 0 - I - 0x01540A 05:93FA: 69        .byte $69   ; 
- D 0 - I - 0x01540B 05:93FB: 6C        .byte $6C   ; 
- D 0 - I - 0x01540C 05:93FC: 6B        .byte $6B   ; 
- D 0 - I - 0x01540D 05:93FD: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x01540E 05:93FE: 69        .byte $69   ; 
- D 0 - I - 0x01540F 05:93FF: 18        .byte $18   ; 
- D 0 - I - 0x015410 05:9400: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015411 05:9401: 06        .byte $06   ; 
- D 0 - I - 0x015412 05:9402: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015413 05:9403: 70        .byte $70   ; 
- D 0 - I - 0x015414 05:9404: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015415 05:9405: 64        .byte $64   ; 
- D 0 - I - 0x015416 05:9406: 12        .byte $12   ; 
- D 0 - I - 0x015417 05:9407: 64        .byte $64   ; 
- D 0 - I - 0x015418 05:9408: 06        .byte $06   ; 
- D 0 - I - 0x015419 05:9409: AC        .byte $AC   ; 
- D 0 - I - 0x01541A 05:940A: 80        .byte $80   ; 
- D 0 - I - 0x01541B 05:940B: 6C        .byte $6C   ; 
- D 0 - I - 0x01541C 05:940C: 6B        .byte $6B   ; 
- D 0 - I - 0x01541D 05:940D: 69        .byte $69   ; 
- D 0 - I - 0x01541E 05:940E: AC        .byte $AC   ; 
- D 0 - I - 0x01541F 05:940F: 80        .byte $80   ; 
- D 0 - I - 0x015420 05:9410: 6C        .byte $6C   ; 
- D 0 - I - 0x015421 05:9411: 69        .byte $69   ; 
- D 0 - I - 0x015422 05:9412: 0C        .byte $0C   ; 
- D 0 - I - 0x015423 05:9413: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015424 05:9414: 06        .byte $06   ; 
- D 0 - I - 0x015425 05:9415: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015426 05:9416: 70        .byte $70   ; 
- D 0 - I - 0x015427 05:9417: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015428 05:9418: AB        .byte $AB   ; 
- D 0 - I - 0x015429 05:9419: 80        .byte $80   ; 
- D 0 - I - 0x01542A 05:941A: 6B        .byte $6B   ; 
- D 0 - I - 0x01542B 05:941B: 69        .byte $69   ; 
- D 0 - I - 0x01542C 05:941C: 6B        .byte $6B   ; 
- D 0 - I - 0x01542D 05:941D: 69        .byte $69   ; 
- D 0 - I - 0x01542E 05:941E: 6C        .byte $6C   ; 
- D 0 - I - 0x01542F 05:941F: 6B        .byte $6B   ; 
- D 0 - I - 0x015430 05:9420: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015431 05:9421: 69        .byte $69   ; 
- D 0 - I - 0x015432 05:9422: 18        .byte $18   ; 
- D 0 - I - 0x015433 05:9423: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015434 05:9424: 06        .byte $06   ; 
- D 0 - I - 0x015435 05:9425: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015436 05:9426: 70        .byte $70   ; 
- D 0 - I - 0x015437 05:9427: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015438 05:9428: 64        .byte $64   ; 
- D 0 - I - 0x015439 05:9429: 12        .byte $12   ; 
- D 0 - I - 0x01543A 05:942A: 64        .byte $64   ; 
- D 0 - I - 0x01543B 05:942B: 06        .byte $06   ; 
- D 0 - I - 0x01543C 05:942C: 69        .byte $69   ; 
- D 0 - I - 0x01543D 05:942D: 6C        .byte $6C   ; 
- D 0 - I - 0x01543E 05:942E: 6B        .byte $6B   ; 
- D 0 - I - 0x01543F 05:942F: 69        .byte $69   ; 
- D 0 - I - 0x015440 05:9430: A9        .byte $A9   ; 
- D 0 - I - 0x015441 05:9431: 80        .byte $80   ; 
- D 0 - I - 0x015442 05:9432: C7        .byte con_se_cb_C7, $C8   ; 
- D 0 - I - 0x015444 05:9434: 30        .byte $30   ; 
- D 0 - I - 0x015445 05:9435: 69        .byte $69   ; 
- D 0 - I - 0x015446 05:9436: C7        .byte con_se_cb_C7, $AA   ; 
- D 0 - I - 0x015448 05:9438: 06        .byte $06   ; 
- D 0 - I - 0x015449 05:9439: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x01544A 05:943A: 65        .byte $65   ; 
- D 0 - I - 0x01544B 05:943B: 65        .byte $65   ; 
- D 0 - I - 0x01544C 05:943C: 65        .byte $65   ; 
- D 0 - I - 0x01544D 05:943D: 65        .byte $65   ; 
- D 0 - I - 0x01544E 05:943E: 67        .byte $67   ; 
- D 0 - I - 0x01544F 05:943F: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015450 05:9440: 69        .byte $69   ; 
- D 0 - I - 0x015451 05:9441: 0C        .byte $0C   ; 
- D 0 - I - 0x015452 05:9442: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015453 05:9443: 06        .byte $06   ; 
- D 0 - I - 0x015454 05:9444: 69        .byte $69   ; 
- D 0 - I - 0x015455 05:9445: 69        .byte $69   ; 
- D 0 - I - 0x015456 05:9446: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015457 05:9447: 67        .byte $67   ; 
- D 0 - I - 0x015458 05:9448: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015459 05:9449: 65        .byte $65   ; 
- D 0 - I - 0x01545A 05:944A: 65        .byte $65   ; 
- D 0 - I - 0x01545B 05:944B: 67        .byte $67   ; 
- D 0 - I - 0x01545C 05:944C: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x01545D 05:944D: 65        .byte $65   ; 
- D 0 - I - 0x01545E 05:944E: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x01545F 05:944F: 67        .byte $67   ; 
- D 0 - I - 0x015460 05:9450: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015461 05:9451: 69        .byte $69   ; 
- D 0 - I - 0x015462 05:9452: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015463 05:9453: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015464 05:9454: 69        .byte $69   ; 
- D 0 - I - 0x015465 05:9455: 69        .byte $69   ; 
- D 0 - I - 0x015466 05:9456: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015467 05:9457: 67        .byte $67   ; 
- D 0 - I - 0x015468 05:9458: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015469 05:9459: A5        .byte $A5   ; 
- D 0 - I - 0x01546A 05:945A: 80        .byte $80   ; 
- D 0 - I - 0x01546B 05:945B: 18        .byte $18   ; 
- D 0 - I - 0x01546C 05:945C: 65        .byte $65   ; 
- D 0 - I - 0x01546D 05:945D: 06        .byte $06   ; 
- D 0 - I - 0x01546E 05:945E: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x01546F 05:945F: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015470 05:9460: 0C        .byte $0C   ; 
- D 0 - I - 0x015471 05:9461: 67        .byte $67   ; 
- D 0 - I - 0x015472 05:9462: 06        .byte $06   ; 
- D 0 - I - 0x015473 05:9463: 69        .byte $69   ; 
- D 0 - I - 0x015474 05:9464: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015475 05:9465: 69        .byte $69   ; 
- D 0 - I - 0x015476 05:9466: 69        .byte $69   ; 
- D 0 - I - 0x015477 05:9467: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015478 05:9468: 67        .byte $67   ; 
- D 0 - I - 0x015479 05:9469: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x01547A 05:946A: 65        .byte $65   ; 
- D 0 - I - 0x01547B 05:946B: 65        .byte $65   ; 
- D 0 - I - 0x01547C 05:946C: 65        .byte $65   ; 
- D 0 - I - 0x01547D 05:946D: 67        .byte $67   ; 
- D 0 - I - 0x01547E 05:946E: 65        .byte $65   ; 
- D 0 - I - 0x01547F 05:946F: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015480 05:9470: 65        .byte $65   ; 
- D 0 - I - 0x015481 05:9471: 0C        .byte $0C   ; 
- D 0 - I - 0x015482 05:9472: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015483 05:9473: 06        .byte $06   ; 
- D 0 - I - 0x015484 05:9474: 67        .byte $67   ; 
- D 0 - I - 0x015485 05:9475: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015486 05:9476: 6B        .byte $6B   ; 
- D 0 - I - 0x015487 05:9477: 6B        .byte $6B   ; 
- D 0 - I - 0x015488 05:9478: 67        .byte $67   ; 
- D 0 - I - 0x015489 05:9479: 64        .byte $64   ; 
- D 0 - I - 0x01548A 05:947A: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x01548B 05:947B: 64        .byte $64   ; 
- D 0 - I - 0x01548C 05:947C: 64        .byte $64   ; 
- D 0 - I - 0x01548D 05:947D: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x01548E 05:947E: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x01548F 05:947F: A8        .byte $A8   ; 
- D 0 - I - 0x015490 05:9480: 80        .byte $80   ; 
- D 0 - I - 0x015491 05:9481: 18        .byte $18   ; 
- D 0 - I - 0x015492 05:9482: 68        .byte $68   ; 
- D 0 - I - 0x015493 05:9483: 06        .byte $06   ; 
- D 0 - I - 0x015494 05:9484: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015495 05:9485: A5        .byte $A5   ; 
- D 0 - I - 0x015496 05:9486: 80        .byte $80   ; 
- D 0 - I - 0x015497 05:9487: A5        .byte $A5   ; 
- D 0 - I - 0x015498 05:9488: 80        .byte $80   ; 
- D 0 - I - 0x015499 05:9489: 65        .byte $65   ; 
- D 0 - I - 0x01549A 05:948A: 18        .byte $18   ; 
- D 0 - I - 0x01549B 05:948B: 65        .byte $65   ; 
- D 0 - I - 0x01549C 05:948C: 06        .byte $06   ; 
- D 0 - I - 0x01549D 05:948D: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x01549E 05:948E: A4        .byte $A4   ; 
- D 0 - I - 0x01549F 05:948F: 80        .byte $80   ; 
- D 0 - I - 0x0154A0 05:9490: A4        .byte $A4   ; 
- D 0 - I - 0x0154A1 05:9491: 80        .byte $80   ; 
- D 0 - I - 0x0154A2 05:9492: 64        .byte $64   ; 
- D 0 - I - 0x0154A3 05:9493: 18        .byte $18   ; 
- D 0 - I - 0x0154A4 05:9494: 64        .byte $64   ; 
- D 0 - I - 0x0154A5 05:9495: 06        .byte $06   ; 
- D 0 - I - 0x0154A6 05:9496: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0154A7 05:9497: A5        .byte $A5   ; 
- D 0 - I - 0x0154A8 05:9498: 80        .byte $80   ; 
- D 0 - I - 0x0154A9 05:9499: A5        .byte $A5   ; 
- D 0 - I - 0x0154AA 05:949A: 80        .byte $80   ; 
- D 0 - I - 0x0154AB 05:949B: 65        .byte $65   ; 
- D 0 - I - 0x0154AC 05:949C: 18        .byte $18   ; 
- D 0 - I - 0x0154AD 05:949D: 65        .byte $65   ; 
- D 0 - I - 0x0154AE 05:949E: 06        .byte $06   ; 
- D 0 - I - 0x0154AF 05:949F: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0154B0 05:94A0: 69        .byte $69   ; 
- D 0 - I - 0x0154B1 05:94A1: 69        .byte $69   ; 
- D 0 - I - 0x0154B2 05:94A2: 68        .byte $68   ; 
- D 0 - I - 0x0154B3 05:94A3: 69        .byte $69   ; 
- D 0 - I - 0x0154B4 05:94A4: 6B        .byte $6B   ; 
- D 0 - I - 0x0154B5 05:94A5: 6C        .byte $6C   ; 
- D 0 - I - 0x0154B6 05:94A6: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0154B7 05:94A7: D0        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x0154B8 05:94A8: A9 93     .word loc_D0_93A9


; bzk garbage
- - - - - - 0x0154BA 05:94AA: D3        .byte con_se_cb_stop   ; 



off_ch_02_94AB_02:
- D 0 - I - 0x0154BB 05:94AB: D8        .byte con_se_cb_D8, $11   ; 
- D 0 - I - 0x0154BD 05:94AD: C4        .byte con_se_cb_C4, $27   ; 
- D 0 - I - 0x0154BF 05:94AF: C7        .byte con_se_cb_C7, $C8   ; 
- D 0 - I - 0x0154C1 05:94B1: 06        .byte $06   ; 
- D 0 - I - 0x0154C2 05:94B2: 91        .byte $91   ; 
- D 0 - I - 0x0154C3 05:94B3: 80        .byte $80   ; 
loc_D0_94B4:
- D 0 - I - 0x0154C4 05:94B4: D1        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x0154C5 05:94B5: 41 95     .word sub_D1_9541
- D 0 - I - 0x0154C7 05:94B7: 12        .byte $12   ; 
- D 0 - I - 0x0154C8 05:94B8: 48        .byte $48   ; 
- D 0 - I - 0x0154C9 05:94B9: 06        .byte $06   ; 
- D 0 - I - 0x0154CA 05:94BA: 4A        .byte $4A   ; 
- D 0 - I - 0x0154CB 05:94BB: 12        .byte $12   ; 
- D 0 - I - 0x0154CC 05:94BC: 4A        .byte $4A   ; 
- D 0 - I - 0x0154CD 05:94BD: 06        .byte $06   ; 
- D 0 - I - 0x0154CE 05:94BE: 91        .byte $91   ; 
- D 0 - I - 0x0154CF 05:94BF: 80        .byte $80   ; 
- D 0 - I - 0x0154D0 05:94C0: D1        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x0154D1 05:94C1: 41 95     .word sub_D1_9541
- D 0 - I - 0x0154D3 05:94C3: 12        .byte $12   ; 
- D 0 - I - 0x0154D4 05:94C4: 48        .byte $48   ; 
- D 0 - I - 0x0154D5 05:94C5: 06        .byte $06   ; 
- D 0 - I - 0x0154D6 05:94C6: 4A        .byte $4A   ; 
- D 0 - I - 0x0154D7 05:94C7: 12        .byte $12   ; 
- D 0 - I - 0x0154D8 05:94C8: 4A        .byte $4A   ; 
- D 0 - I - 0x0154D9 05:94C9: 06        .byte $06   ; 
- D 0 - I - 0x0154DA 05:94CA: 8D        .byte $8D   ; 
- D 0 - I - 0x0154DB 05:94CB: 80        .byte $80   ; 
- D 0 - I - 0x0154DC 05:94CC: 30        .byte $30   ; 
- D 0 - I - 0x0154DD 05:94CD: 4D        .byte $4D   ; 
- D 0 - I - 0x0154DE 05:94CE: 06        .byte $06   ; 
- D 0 - I - 0x0154DF 05:94CF: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0154E0 05:94D0: 4D        .byte $4D   ; 
- D 0 - I - 0x0154E1 05:94D1: 4D        .byte $4D   ; 
- D 0 - I - 0x0154E2 05:94D2: 4D        .byte $4D   ; 
- D 0 - I - 0x0154E3 05:94D3: 4D        .byte $4D   ; 
- D 0 - I - 0x0154E4 05:94D4: 4F        .byte $4F   ; 
- D 0 - I - 0x0154E5 05:94D5: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0154E6 05:94D6: 4F        .byte $4F   ; 
- D 0 - I - 0x0154E7 05:94D7: 51        .byte $51   ; 
- D 0 - I - 0x0154E8 05:94D8: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0154E9 05:94D9: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0154EA 05:94DA: 51        .byte $51   ; 
- D 0 - I - 0x0154EB 05:94DB: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0154EC 05:94DC: 4F        .byte $4F   ; 
- D 0 - I - 0x0154ED 05:94DD: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0154EE 05:94DE: 4D        .byte $4D   ; 
- D 0 - I - 0x0154EF 05:94DF: 0C        .byte $0C   ; 
- D 0 - I - 0x0154F0 05:94E0: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0154F1 05:94E1: 06        .byte $06   ; 
- D 0 - I - 0x0154F2 05:94E2: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0154F3 05:94E3: 4D        .byte $4D   ; 
- D 0 - I - 0x0154F4 05:94E4: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0154F5 05:94E5: 4F        .byte $4F   ; 
- D 0 - I - 0x0154F6 05:94E6: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0154F7 05:94E7: 4F        .byte $4F   ; 
- D 0 - I - 0x0154F8 05:94E8: 51        .byte $51   ; 
- D 0 - I - 0x0154F9 05:94E9: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0154FA 05:94EA: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0154FB 05:94EB: 51        .byte $51   ; 
- D 0 - I - 0x0154FC 05:94EC: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0154FD 05:94ED: 4F        .byte $4F   ; 
- D 0 - I - 0x0154FE 05:94EE: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0154FF 05:94EF: 4D        .byte $4D   ; 
- D 0 - I - 0x015500 05:94F0: 18        .byte $18   ; 
- D 0 - I - 0x015501 05:94F1: 4D        .byte $4D   ; 
- D 0 - I - 0x015502 05:94F2: 06        .byte $06   ; 
- D 0 - I - 0x015503 05:94F3: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015504 05:94F4: 4D        .byte $4D   ; 
- D 0 - I - 0x015505 05:94F5: 4F        .byte $4F   ; 
- D 0 - I - 0x015506 05:94F6: 4F        .byte $4F   ; 
- D 0 - I - 0x015507 05:94F7: 51        .byte $51   ; 
- D 0 - I - 0x015508 05:94F8: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015509 05:94F9: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x01550A 05:94FA: 51        .byte $51   ; 
- D 0 - I - 0x01550B 05:94FB: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x01550C 05:94FC: 4F        .byte $4F   ; 
- D 0 - I - 0x01550D 05:94FD: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x01550E 05:94FE: 4D        .byte $4D   ; 
- D 0 - I - 0x01550F 05:94FF: 0C        .byte $0C   ; 
- D 0 - I - 0x015510 05:9500: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015511 05:9501: 06        .byte $06   ; 
- D 0 - I - 0x015512 05:9502: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015513 05:9503: 4D        .byte $4D   ; 
- D 0 - I - 0x015514 05:9504: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015515 05:9505: 4D        .byte $4D   ; 
- D 0 - I - 0x015516 05:9506: 4D        .byte $4D   ; 
- D 0 - I - 0x015517 05:9507: 4D        .byte $4D   ; 
- D 0 - I - 0x015518 05:9508: 0C        .byte $0C   ; 
- D 0 - I - 0x015519 05:9509: 4F        .byte $4F   ; 
- D 0 - I - 0x01551A 05:950A: 06        .byte $06   ; 
- D 0 - I - 0x01551B 05:950B: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x01551C 05:950C: 4F        .byte $4F   ; 
- D 0 - I - 0x01551D 05:950D: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x01551E 05:950E: 4F        .byte $4F   ; 
- D 0 - I - 0x01551F 05:950F: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015520 05:9510: 4F        .byte $4F   ; 
- D 0 - I - 0x015521 05:9511: 0C        .byte $0C   ; 
- D 0 - I - 0x015522 05:9512: 4C        .byte $4C   ; 
- D 0 - I - 0x015523 05:9513: 06        .byte $06   ; 
- D 0 - I - 0x015524 05:9514: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015525 05:9515: 8C        .byte $8C   ; 
- D 0 - I - 0x015526 05:9516: 80        .byte $80   ; 
- D 0 - I - 0x015527 05:9517: 4C        .byte $4C   ; 
- D 0 - I - 0x015528 05:9518: 50        .byte $50   ; 
- D 0 - I - 0x015529 05:9519: 51        .byte $51   ; 
- D 0 - I - 0x01552A 05:951A: 53        .byte $53   ; 
- D 0 - I - 0x01552B 05:951B: 12        .byte $12   ; 
- D 0 - I - 0x01552C 05:951C: 4D        .byte $4D   ; 
- D 0 - I - 0x01552D 05:951D: 06        .byte $06   ; 
- D 0 - I - 0x01552E 05:951E: 4D        .byte $4D   ; 
- D 0 - I - 0x01552F 05:951F: 12        .byte $12   ; 
- D 0 - I - 0x015530 05:9520: 4D        .byte $4D   ; 
- D 0 - I - 0x015531 05:9521: 06        .byte $06   ; 
- D 0 - I - 0x015532 05:9522: 48        .byte $48   ; 
- D 0 - I - 0x015533 05:9523: 12        .byte $12   ; 
- D 0 - I - 0x015534 05:9524: 4C        .byte $4C   ; 
- D 0 - I - 0x015535 05:9525: 06        .byte $06   ; 
- D 0 - I - 0x015536 05:9526: 8C        .byte $8C   ; 
- D 0 - I - 0x015537 05:9527: 80        .byte $80   ; 
- D 0 - I - 0x015538 05:9528: 4C        .byte $4C   ; 
- D 0 - I - 0x015539 05:9529: 50        .byte $50   ; 
- D 0 - I - 0x01553A 05:952A: 51        .byte $51   ; 
- D 0 - I - 0x01553B 05:952B: 53        .byte $53   ; 
- D 0 - I - 0x01553C 05:952C: 12        .byte $12   ; 
- D 0 - I - 0x01553D 05:952D: 4D        .byte $4D   ; 
- D 0 - I - 0x01553E 05:952E: 06        .byte $06   ; 
- D 0 - I - 0x01553F 05:952F: 8D        .byte $8D   ; 
- D 0 - I - 0x015540 05:9530: 80        .byte $80   ; 
- D 0 - I - 0x015541 05:9531: 12        .byte $12   ; 
- D 0 - I - 0x015542 05:9532: 4D        .byte $4D   ; 
- D 0 - I - 0x015543 05:9533: 06        .byte $06   ; 
- D 0 - I - 0x015544 05:9534: 48        .byte $48   ; 
- D 0 - I - 0x015545 05:9535: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015546 05:9536: 4C        .byte $4C   ; 
- D 0 - I - 0x015547 05:9537: 4C        .byte $4C   ; 
- D 0 - I - 0x015548 05:9538: 4C        .byte $4C   ; 
- D 0 - I - 0x015549 05:9539: 4C        .byte $4C   ; 
- D 0 - I - 0x01554A 05:953A: 4C        .byte $4C   ; 
- D 0 - I - 0x01554B 05:953B: 50        .byte $50   ; 
- D 0 - I - 0x01554C 05:953C: 91        .byte $91   ; 
- D 0 - I - 0x01554D 05:953D: 80        .byte $80   ; 
- D 0 - I - 0x01554E 05:953E: D0        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x01554F 05:953F: B4 94     .word loc_D0_94B4



sub_D1_9541:
- D 0 - I - 0x015551 05:9541: 06        .byte $06   ; 
- D 0 - I - 0x015552 05:9542: 51        .byte $51   ; 
- D 0 - I - 0x015553 05:9543: 51        .byte $51   ; 
- D 0 - I - 0x015554 05:9544: 54        .byte $54   ; 
- D 0 - I - 0x015555 05:9545: 56        .byte $56   ; 
- D 0 - I - 0x015556 05:9546: 51        .byte $51   ; 
- D 0 - I - 0x015557 05:9547: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015558 05:9548: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015559 05:9549: 8F        .byte $8F   ; 
- D 0 - I - 0x01555A 05:954A: 80        .byte $80   ; 
- D 0 - I - 0x01555B 05:954B: 12        .byte $12   ; 
- D 0 - I - 0x01555C 05:954C: 4F        .byte $4F   ; 
- D 0 - I - 0x01555D 05:954D: 06        .byte $06   ; 
- D 0 - I - 0x01555E 05:954E: 8C        .byte $8C   ; 
- D 0 - I - 0x01555F 05:954F: 80        .byte $80   ; 
- D 0 - I - 0x015560 05:9550: 0C        .byte $0C   ; 
- D 0 - I - 0x015561 05:9551: 4C        .byte $4C   ; 
- D 0 - I - 0x015562 05:9552: 06        .byte $06   ; 
- D 0 - I - 0x015563 05:9553: 53        .byte $53   ; 
- D 0 - I - 0x015564 05:9554: 91        .byte $91   ; 
- D 0 - I - 0x015565 05:9555: 80        .byte $80   ; 
- D 0 - I - 0x015566 05:9556: 51        .byte $51   ; 
- D 0 - I - 0x015567 05:9557: 51        .byte $51   ; 
- D 0 - I - 0x015568 05:9558: 54        .byte $54   ; 
- D 0 - I - 0x015569 05:9559: 56        .byte $56   ; 
- D 0 - I - 0x01556A 05:955A: 51        .byte $51   ; 
- D 0 - I - 0x01556B 05:955B: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x01556C 05:955C: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x01556D 05:955D: 48        .byte $48   ; 
- D 0 - I - 0x01556E 05:955E: 12        .byte $12   ; 
- D 0 - I - 0x01556F 05:955F: 48        .byte $48   ; 
- D 0 - I - 0x015570 05:9560: 06        .byte $06   ; 
- D 0 - I - 0x015571 05:9561: 4A        .byte $4A   ; 
- D 0 - I - 0x015572 05:9562: 12        .byte $12   ; 
- D 0 - I - 0x015573 05:9563: 4A        .byte $4A   ; 
- D 0 - I - 0x015574 05:9564: 06        .byte $06   ; 
- D 0 - I - 0x015575 05:9565: 91        .byte $91   ; 
- D 0 - I - 0x015576 05:9566: 80        .byte $80   ; 
- D 0 - I - 0x015577 05:9567: 51        .byte $51   ; 
- D 0 - I - 0x015578 05:9568: 51        .byte $51   ; 
- D 0 - I - 0x015579 05:9569: 54        .byte $54   ; 
- D 0 - I - 0x01557A 05:956A: 56        .byte $56   ; 
- D 0 - I - 0x01557B 05:956B: 51        .byte $51   ; 
- D 0 - I - 0x01557C 05:956C: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x01557D 05:956D: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x01557E 05:956E: 8F        .byte $8F   ; 
- D 0 - I - 0x01557F 05:956F: 80        .byte $80   ; 
- D 0 - I - 0x015580 05:9570: 12        .byte $12   ; 
- D 0 - I - 0x015581 05:9571: 4F        .byte $4F   ; 
- D 0 - I - 0x015582 05:9572: 06        .byte $06   ; 
- D 0 - I - 0x015583 05:9573: 8C        .byte $8C   ; 
- D 0 - I - 0x015584 05:9574: 80        .byte $80   ; 
- D 0 - I - 0x015585 05:9575: 0C        .byte $0C   ; 
- D 0 - I - 0x015586 05:9576: 4C        .byte $4C   ; 
- D 0 - I - 0x015587 05:9577: 06        .byte $06   ; 
- D 0 - I - 0x015588 05:9578: 53        .byte $53   ; 
- D 0 - I - 0x015589 05:9579: 91        .byte $91   ; 
- D 0 - I - 0x01558A 05:957A: 80        .byte $80   ; 
- D 0 - I - 0x01558B 05:957B: 51        .byte $51   ; 
- D 0 - I - 0x01558C 05:957C: 51        .byte $51   ; 
- D 0 - I - 0x01558D 05:957D: 54        .byte $54   ; 
- D 0 - I - 0x01558E 05:957E: 56        .byte $56   ; 
- D 0 - I - 0x01558F 05:957F: 51        .byte $51   ; 
- D 0 - I - 0x015590 05:9580: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015591 05:9581: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015592 05:9582: 48        .byte $48   ; 
- D 0 - I - 0x015593 05:9583: D2        .byte con_se_cb_rts   ; 


; bzk garbage
- - - - - - 0x015594 05:9584: D3        .byte con_se_cb_stop   ; 



off_ch_02_9585_03:
- D 0 - I - 0x015595 05:9585: CD        .byte con_se_cb_CD   ; 
- D 0 - I - 0x015596 05:9586: F3 8B     .word ofs_CD_8BF3
- D 0 - I - 0x015598 05:9588: C4        .byte con_se_cb_C4, $23   ; 
- D 0 - I - 0x01559A 05:958A: 06        .byte $06   ; 
- D 0 - I - 0x01559B 05:958B: 83        .byte $83   ; 
- D 0 - I - 0x01559C 05:958C: 80        .byte $80   ; 
loc_D0_958D:
off_CE_958D:
- D 0 - I - 0x01559D 05:958D: 06        .byte $06   ; 
- D 0 - I - 0x01559E 05:958E: 43        .byte $43   ; 
- D 0 - I - 0x01559F 05:958F: 41        .byte $41   ; 
- D 0 - I - 0x0155A0 05:9590: 42        .byte $42   ; 
- D 0 - I - 0x0155A1 05:9591: 41        .byte $41   ; 
- D 0 - I - 0x0155A2 05:9592: 41        .byte $41   ; 
- D 0 - I - 0x0155A3 05:9593: 41        .byte $41   ; 
- D 0 - I - 0x0155A4 05:9594: 42        .byte $42   ; 
- D 0 - I - 0x0155A5 05:9595: 41        .byte $41   ; 
- D 0 - I - 0x0155A6 05:9596: 41        .byte $41   ; 
- D 0 - I - 0x0155A7 05:9597: 41        .byte $41   ; 
- D 0 - I - 0x0155A8 05:9598: 42        .byte $42   ; 
- D 0 - I - 0x0155A9 05:9599: 41        .byte $41   ; 
- D 0 - I - 0x0155AA 05:959A: 41        .byte $41   ; 
- D 0 - I - 0x0155AB 05:959B: 41        .byte $41   ; 
- D 0 - I - 0x0155AC 05:959C: 42        .byte $42   ; 
- D 0 - I - 0x0155AD 05:959D: 41        .byte $41   ; 
- D 0 - I - 0x0155AE 05:959E: 41        .byte $41   ; 
- D 0 - I - 0x0155AF 05:959F: 41        .byte $41   ; 
- D 0 - I - 0x0155B0 05:95A0: 42        .byte $42   ; 
- D 0 - I - 0x0155B1 05:95A1: 41        .byte $41   ; 
- D 0 - I - 0x0155B2 05:95A2: 41        .byte $41   ; 
- D 0 - I - 0x0155B3 05:95A3: 41        .byte $41   ; 
- D 0 - I - 0x0155B4 05:95A4: 42        .byte $42   ; 
- D 0 - I - 0x0155B5 05:95A5: 41        .byte $41   ; 
- D 0 - I - 0x0155B6 05:95A6: 41        .byte $41   ; 
- D 0 - I - 0x0155B7 05:95A7: 41        .byte $41   ; 
- D 0 - I - 0x0155B8 05:95A8: 42        .byte $42   ; 
- D 0 - I - 0x0155B9 05:95A9: 41        .byte $41   ; 
- D 0 - I - 0x0155BA 05:95AA: 41        .byte $41   ; 
- D 0 - I - 0x0155BB 05:95AB: 41        .byte $41   ; 
- D 0 - I - 0x0155BC 05:95AC: 4C        .byte $4C   ; 
- D 0 - I - 0x0155BD 05:95AD: 83        .byte $83   ; 
- D 0 - I - 0x0155BE 05:95AE: 80        .byte $80   ; 
- D 0 - I - 0x0155BF 05:95AF: CE        .byte con_se_cb_loop_1, $04   ; 
- D 0 - I - 0x0155C1 05:95B1: 8D 95     .word off_CE_958D
- D 0 - I - 0x0155C3 05:95B3: 06        .byte $06   ; 
- D 0 - I - 0x0155C4 05:95B4: 43        .byte $43   ; 
- D 0 - I - 0x0155C5 05:95B5: 2A        .byte $2A   ; 
- D 0 - I - 0x0155C6 05:95B6: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0155C7 05:95B7: 06        .byte $06   ; 
- D 0 - I - 0x0155C8 05:95B8: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0155C9 05:95B9: 4C        .byte $4C   ; 
- D 0 - I - 0x0155CA 05:95BA: 4C        .byte $4C   ; 
- D 0 - I - 0x0155CB 05:95BB: 4C        .byte $4C   ; 
- D 0 - I - 0x0155CC 05:95BC: 4C        .byte $4C   ; 
- D 0 - I - 0x0155CD 05:95BD: 4C        .byte $4C   ; 
- D 0 - I - 0x0155CE 05:95BE: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0155CF 05:95BF: 4C        .byte $4C   ; 
off_CE_95C0:
- D 0 - I - 0x0155D0 05:95C0: 06        .byte $06   ; 
- D 0 - I - 0x0155D1 05:95C1: 41        .byte $41   ; 
- D 0 - I - 0x0155D2 05:95C2: 41        .byte $41   ; 
- D 0 - I - 0x0155D3 05:95C3: 42        .byte $42   ; 
- D 0 - I - 0x0155D4 05:95C4: 41        .byte $41   ; 
- D 0 - I - 0x0155D5 05:95C5: 41        .byte $41   ; 
- D 0 - I - 0x0155D6 05:95C6: 41        .byte $41   ; 
- D 0 - I - 0x0155D7 05:95C7: 42        .byte $42   ; 
- D 0 - I - 0x0155D8 05:95C8: 41        .byte $41   ; 
- D 0 - I - 0x0155D9 05:95C9: CE        .byte con_se_cb_loop_1, $08   ; 
- D 0 - I - 0x0155DB 05:95CB: C0 95     .word off_CE_95C0
- D 0 - I - 0x0155DD 05:95CD: 06        .byte $06   ; 
off_CE_95CE:
- D 0 - I - 0x0155DE 05:95CE: 41        .byte $41   ; 
- D 0 - I - 0x0155DF 05:95CF: 41        .byte $41   ; 
- D 0 - I - 0x0155E0 05:95D0: 42        .byte $42   ; 
- D 0 - I - 0x0155E1 05:95D1: 41        .byte $41   ; 
- D 0 - I - 0x0155E2 05:95D2: 41        .byte $41   ; 
- D 0 - I - 0x0155E3 05:95D3: 41        .byte $41   ; 
- D 0 - I - 0x0155E4 05:95D4: 4C        .byte $4C   ; 
- D 0 - I - 0x0155E5 05:95D5: 41        .byte $41   ; 
- D 0 - I - 0x0155E6 05:95D6: CE        .byte con_se_cb_loop_1, $03   ; 
- D 0 - I - 0x0155E8 05:95D8: CE 95     .word off_CE_95CE
- D 0 - I - 0x0155EA 05:95DA: 41        .byte $41   ; 
- D 0 - I - 0x0155EB 05:95DB: 41        .byte $41   ; 
- D 0 - I - 0x0155EC 05:95DC: 42        .byte $42   ; 
- D 0 - I - 0x0155ED 05:95DD: 41        .byte $41   ; 
- D 0 - I - 0x0155EE 05:95DE: 41        .byte $41   ; 
- D 0 - I - 0x0155EF 05:95DF: 4C        .byte $4C   ; 
- D 0 - I - 0x0155F0 05:95E0: 4C        .byte $4C   ; 
- D 0 - I - 0x0155F1 05:95E1: 83        .byte $83   ; 
- D 0 - I - 0x0155F2 05:95E2: 80        .byte $80   ; 
- D 0 - I - 0x0155F3 05:95E3: D0        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x0155F4 05:95E4: 8D 95     .word loc_D0_958D


; bzk garbage
- - - - - - 0x0155F6 05:95E6: D3        .byte con_se_cb_stop   ; 



_off013_95E7_03_mission_1:
- D 0 - I - 0x0155F7 05:95E7: FF        .byte $FF   ; 
- D 0 - I - 0x0155F8 05:95E8: 00        .byte $00   ; 
- D 0 - I - 0x0155F9 05:95E9: F5 95     .word off_ch_03_95F5_00
- D 0 - I - 0x0155FB 05:95EB: 01        .byte $01   ; 
- D 0 - I - 0x0155FC 05:95EC: A0 96     .word off_ch_03_96A0_01
- D 0 - I - 0x0155FE 05:95EE: 02        .byte $02   ; 
- D 0 - I - 0x0155FF 05:95EF: 7D 97     .word off_ch_03_977D_02
- D 0 - I - 0x015601 05:95F1: 03        .byte $03   ; 
- D 0 - I - 0x015602 05:95F2: 28 98     .word off_ch_03_9828_03
- D 0 - I - 0x015604 05:95F4: FF        .byte $FF   ; 



off_ch_03_95F5_00:
- D 0 - I - 0x015605 05:95F5: D8        .byte con_se_cb_D8, $02   ; 
- D 0 - I - 0x015607 05:95F7: CC        .byte con_se_cb_CC, $8E   ; 
- D 0 - I - 0x015609 05:95F9: C4        .byte con_se_cb_C4, $2B   ; 
- D 0 - I - 0x01560B 05:95FB: C7        .byte con_se_cb_C7, $F0   ; 
loc_D0_95FD:
- D 0 - I - 0x01560D 05:95FD: D8        .byte con_se_cb_D8, $F6   ; 
- D 0 - I - 0x01560F 05:95FF: CD        .byte con_se_cb_CD   ; 
- D 0 - I - 0x015610 05:9600: 9F 8B     .word ofs_CD_8B9F
- D 0 - I - 0x015612 05:9602: DD        .byte con_se_cb_DD   ; 
- D 0 - I - 0x015613 05:9603: 06        .byte $06   ; 
- D 0 - I - 0x015614 05:9604: D1        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x015615 05:9605: 02 98     .word sub_D1_9802
- D 0 - I - 0x015617 05:9607: D8        .byte con_se_cb_D8, $02   ; 
- D 0 - I - 0x015619 05:9609: CD        .byte con_se_cb_CD   ; 
- D 0 - I - 0x01561A 05:960A: 1F 8B     .word ofs_CD_8B1F
- D 0 - I - 0x01561C 05:960C: DB        .byte con_se_cb_DB, $05, $19, $64   ; 
- D 0 - I - 0x015620 05:9610: D1        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x015621 05:9611: 3B 96     .word sub_D1_963B
- D 0 - I - 0x015623 05:9613: 30        .byte $30   ; 
- D 0 - I - 0x015624 05:9614: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015625 05:9615: D8        .byte con_se_cb_D8, $F6   ; 
- D 0 - I - 0x015627 05:9617: CD        .byte con_se_cb_CD   ; 
- D 0 - I - 0x015628 05:9618: 9F 8B     .word ofs_CD_8B9F
- D 0 - I - 0x01562A 05:961A: DD        .byte con_se_cb_DD   ; 
- D 0 - I - 0x01562B 05:961B: 06        .byte $06   ; 
- D 0 - I - 0x01562C 05:961C: D1        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x01562D 05:961D: 02 98     .word sub_D1_9802
- D 0 - I - 0x01562F 05:961F: D1        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x015630 05:9620: 02 98     .word sub_D1_9802
- D 0 - I - 0x015632 05:9622: D8        .byte con_se_cb_D8, $02   ; 
- D 0 - I - 0x015634 05:9624: CD        .byte con_se_cb_CD   ; 
- D 0 - I - 0x015635 05:9625: 1F 8B     .word ofs_CD_8B1F
- D 0 - I - 0x015637 05:9627: DB        .byte con_se_cb_DB, $08, $16, $64   ; 
- D 0 - I - 0x01563B 05:962B: D1        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x01563C 05:962C: 3B 96     .word sub_D1_963B
- D 0 - I - 0x01563E 05:962E: 30        .byte $30   ; 
- D 0 - I - 0x01563F 05:962F: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015640 05:9630: 60        .byte $60   ; 
- D 0 - I - 0x015641 05:9631: 5F        .byte $5F   ; 
- D 0 - I - 0x015642 05:9632: 5F        .byte $5F   ; 
- D 0 - I - 0x015643 05:9633: 5D        .byte $5D   ; 
- D 0 - I - 0x015644 05:9634: 60        .byte $60   ; 
- D 0 - I - 0x015645 05:9635: 5F        .byte $5F   ; 
- D 0 - I - 0x015646 05:9636: 5F        .byte $5F   ; 
- D 0 - I - 0x015647 05:9637: 5D        .byte $5D   ; 
- D 0 - I - 0x015648 05:9638: D0        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x015649 05:9639: FD 95     .word loc_D0_95FD



sub_D1_963B:
- D 0 - I - 0x01564B 05:963B: 06        .byte $06   ; 
- D 0 - I - 0x01564C 05:963C: 64        .byte $64   ; 
- D 0 - I - 0x01564D 05:963D: 63        .byte $63   ; 
- D 0 - I - 0x01564E 05:963E: 5A        .byte $5A   ; 
- D 0 - I - 0x01564F 05:963F: A4        .byte $A4   ; 
- D 0 - I - 0x015650 05:9640: 80        .byte $80   ; 
- D 0 - I - 0x015651 05:9641: 64        .byte $64   ; 
- D 0 - I - 0x015652 05:9642: 63        .byte $63   ; 
- D 0 - I - 0x015653 05:9643: 0C        .byte $0C   ; 
- D 0 - I - 0x015654 05:9644: 5A        .byte $5A   ; 
- D 0 - I - 0x015655 05:9645: 06        .byte $06   ; 
- D 0 - I - 0x015656 05:9646: 64        .byte $64   ; 
- D 0 - I - 0x015657 05:9647: 63        .byte $63   ; 
- D 0 - I - 0x015658 05:9648: 5A        .byte $5A   ; 
- D 0 - I - 0x015659 05:9649: A4        .byte $A4   ; 
- D 0 - I - 0x01565A 05:964A: 80        .byte $80   ; 
- D 0 - I - 0x01565B 05:964B: 64        .byte $64   ; 
- D 0 - I - 0x01565C 05:964C: 63        .byte $63   ; 
- D 0 - I - 0x01565D 05:964D: 0C        .byte $0C   ; 
- D 0 - I - 0x01565E 05:964E: 66        .byte $66   ; 
- D 0 - I - 0x01565F 05:964F: 06        .byte $06   ; 
- D 0 - I - 0x015660 05:9650: 64        .byte $64   ; 
- D 0 - I - 0x015661 05:9651: 62        .byte $62   ; 
- D 0 - I - 0x015662 05:9652: 61        .byte $61   ; 
- D 0 - I - 0x015663 05:9653: 9D        .byte $9D   ; 
- D 0 - I - 0x015664 05:9654: 80        .byte $80   ; 
- D 0 - I - 0x015665 05:9655: 0C        .byte $0C   ; 
- D 0 - I - 0x015666 05:9656: 5D        .byte $5D   ; 
- D 0 - I - 0x015667 05:9657: 58        .byte $58   ; 
- D 0 - I - 0x015668 05:9658: 06        .byte $06   ; 
- D 0 - I - 0x015669 05:9659: 62        .byte $62   ; 
- D 0 - I - 0x01566A 05:965A: A1        .byte $A1   ; 
- D 0 - I - 0x01566B 05:965B: 80        .byte $80   ; 
- D 0 - I - 0x01566C 05:965C: 61        .byte $61   ; 
- D 0 - I - 0x01566D 05:965D: A4        .byte $A4   ; 
- D 0 - I - 0x01566E 05:965E: 80        .byte $80   ; 
- D 0 - I - 0x01566F 05:965F: 64        .byte $64   ; 
- D 0 - I - 0x015670 05:9660: 62        .byte $62   ; 
- D 0 - I - 0x015671 05:9661: 61        .byte $61   ; 
- D 0 - I - 0x015672 05:9662: 5D        .byte $5D   ; 
- D 0 - I - 0x015673 05:9663: 64        .byte $64   ; 
- D 0 - I - 0x015674 05:9664: 63        .byte $63   ; 
- D 0 - I - 0x015675 05:9665: 5A        .byte $5A   ; 
- D 0 - I - 0x015676 05:9666: A4        .byte $A4   ; 
- D 0 - I - 0x015677 05:9667: 80        .byte $80   ; 
- D 0 - I - 0x015678 05:9668: 64        .byte $64   ; 
- D 0 - I - 0x015679 05:9669: 63        .byte $63   ; 
- D 0 - I - 0x01567A 05:966A: 0C        .byte $0C   ; 
- D 0 - I - 0x01567B 05:966B: 5A        .byte $5A   ; 
- D 0 - I - 0x01567C 05:966C: 06        .byte $06   ; 
- D 0 - I - 0x01567D 05:966D: 64        .byte $64   ; 
- D 0 - I - 0x01567E 05:966E: 63        .byte $63   ; 
- D 0 - I - 0x01567F 05:966F: 5A        .byte $5A   ; 
- D 0 - I - 0x015680 05:9670: A4        .byte $A4   ; 
- D 0 - I - 0x015681 05:9671: 80        .byte $80   ; 
- D 0 - I - 0x015682 05:9672: 64        .byte $64   ; 
- D 0 - I - 0x015683 05:9673: 63        .byte $63   ; 
- D 0 - I - 0x015684 05:9674: 0C        .byte $0C   ; 
- D 0 - I - 0x015685 05:9675: 66        .byte $66   ; 
- D 0 - I - 0x015686 05:9676: 06        .byte $06   ; 
- D 0 - I - 0x015687 05:9677: 64        .byte $64   ; 
- D 0 - I - 0x015688 05:9678: 62        .byte $62   ; 
- D 0 - I - 0x015689 05:9679: 61        .byte $61   ; 
- D 0 - I - 0x01568A 05:967A: 9D        .byte $9D   ; 
- D 0 - I - 0x01568B 05:967B: 80        .byte $80   ; 
- D 0 - I - 0x01568C 05:967C: 0C        .byte $0C   ; 
- D 0 - I - 0x01568D 05:967D: 5D        .byte $5D   ; 
- D 0 - I - 0x01568E 05:967E: 58        .byte $58   ; 
- D 0 - I - 0x01568F 05:967F: 06        .byte $06   ; 
- D 0 - I - 0x015690 05:9680: 62        .byte $62   ; 
- D 0 - I - 0x015691 05:9681: A1        .byte $A1   ; 
- D 0 - I - 0x015692 05:9682: 80        .byte $80   ; 
- D 0 - I - 0x015693 05:9683: 61        .byte $61   ; 
- D 0 - I - 0x015694 05:9684: A4        .byte $A4   ; 
- D 0 - I - 0x015695 05:9685: 80        .byte $80   ; 
- D 0 - I - 0x015696 05:9686: 18        .byte $18   ; 
- D 0 - I - 0x015697 05:9687: 64        .byte $64   ; 
- D 0 - I - 0x015698 05:9688: 12        .byte $12   ; 
- D 0 - I - 0x015699 05:9689: 60        .byte $60   ; 
- D 0 - I - 0x01569A 05:968A: 06        .byte $06   ; 
- D 0 - I - 0x01569B 05:968B: 9F        .byte $9F   ; 
- D 0 - I - 0x01569C 05:968C: 80        .byte $80   ; 
- D 0 - I - 0x01569D 05:968D: 18        .byte $18   ; 
- D 0 - I - 0x01569E 05:968E: 5F        .byte $5F   ; 
- D 0 - I - 0x01569F 05:968F: 12        .byte $12   ; 
- D 0 - I - 0x0156A0 05:9690: 5E        .byte $5E   ; 
- D 0 - I - 0x0156A1 05:9691: 06        .byte $06   ; 
- D 0 - I - 0x0156A2 05:9692: 9D        .byte $9D   ; 
- D 0 - I - 0x0156A3 05:9693: 80        .byte $80   ; 
- D 0 - I - 0x0156A4 05:9694: 0C        .byte $0C   ; 
- D 0 - I - 0x0156A5 05:9695: 5D        .byte $5D   ; 
- D 0 - I - 0x0156A6 05:9696: 59        .byte $59   ; 
- D 0 - I - 0x0156A7 05:9697: 12        .byte $12   ; 
- D 0 - I - 0x0156A8 05:9698: 60        .byte $60   ; 
- D 0 - I - 0x0156A9 05:9699: 06        .byte $06   ; 
- D 0 - I - 0x0156AA 05:969A: 9F        .byte $9F   ; 
- D 0 - I - 0x0156AB 05:969B: 80        .byte $80   ; 
- D 0 - I - 0x0156AC 05:969C: 18        .byte $18   ; 
- D 0 - I - 0x0156AD 05:969D: 5F        .byte $5F   ; 
- D 0 - I - 0x0156AE 05:969E: D2        .byte con_se_cb_rts   ; 


; bzk garbage
- - - - - - 0x0156AF 05:969F: D3        .byte con_se_cb_stop   ; 



off_ch_03_96A0_01:
- D 0 - I - 0x0156B0 05:96A0: D8        .byte con_se_cb_D8, $02   ; 
- D 0 - I - 0x0156B2 05:96A2: CD        .byte con_se_cb_CD   ; 
- D 0 - I - 0x0156B3 05:96A3: 1F 8B     .word ofs_CD_8B1F
- D 0 - I - 0x0156B5 05:96A5: DB        .byte con_se_cb_DB, $08, $19, $64   ; 
- D 0 - I - 0x0156B9 05:96A9: C4        .byte con_se_cb_C4, $17   ; 
- D 0 - I - 0x0156BB 05:96AB: C7        .byte con_se_cb_C7, $DC   ; 
loc_D0_96AD:
- D 0 - I - 0x0156BD 05:96AD: 30        .byte $30   ; 
- D 0 - I - 0x0156BE 05:96AE: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0156BF 05:96AF: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0156C0 05:96B0: 06        .byte $06   ; 
- D 0 - I - 0x0156C1 05:96B1: 4A        .byte $4A   ; 
- D 0 - I - 0x0156C2 05:96B2: 4A        .byte $4A   ; 
- D 0 - I - 0x0156C3 05:96B3: 4F        .byte $4F   ; 
- D 0 - I - 0x0156C4 05:96B4: 91        .byte $91   ; 
- D 0 - I - 0x0156C5 05:96B5: 80        .byte $80   ; 
- D 0 - I - 0x0156C6 05:96B6: 51        .byte $51   ; 
- D 0 - I - 0x0156C7 05:96B7: 4A        .byte $4A   ; 
- D 0 - I - 0x0156C8 05:96B8: 4F        .byte $4F   ; 
- D 0 - I - 0x0156C9 05:96B9: 51        .byte $51   ; 
- D 0 - I - 0x0156CA 05:96BA: 4A        .byte $4A   ; 
- D 0 - I - 0x0156CB 05:96BB: 4A        .byte $4A   ; 
- D 0 - I - 0x0156CC 05:96BC: 4F        .byte $4F   ; 
- D 0 - I - 0x0156CD 05:96BD: 91        .byte $91   ; 
- D 0 - I - 0x0156CE 05:96BE: 80        .byte $80   ; 
- D 0 - I - 0x0156CF 05:96BF: 51        .byte $51   ; 
- D 0 - I - 0x0156D0 05:96C0: 4A        .byte $4A   ; 
- D 0 - I - 0x0156D1 05:96C1: 4F        .byte $4F   ; 
- D 0 - I - 0x0156D2 05:96C2: 03        .byte $03   ; 
- D 0 - I - 0x0156D3 05:96C3: 51        .byte $51   ; 
- D 0 - I - 0x0156D4 05:96C4: 9F        .byte $9F   ; 
- D 0 - I - 0x0156D5 05:96C5: 80        .byte $80   ; 
- D 0 - I - 0x0156D6 05:96C6: D1        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x0156D7 05:96C7: F3 96     .word sub_D1_96F3
- D 0 - I - 0x0156D9 05:96C9: 30        .byte $30   ; 
- D 0 - I - 0x0156DA 05:96CA: DA        .byte con_se_cb_DA, $07   ; 
- D 0 - I - 0x0156DC 05:96CC: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0156DD 05:96CD: 06        .byte $06   ; 
- D 0 - I - 0x0156DE 05:96CE: 4A        .byte $4A   ; 
- D 0 - I - 0x0156DF 05:96CF: 4A        .byte $4A   ; 
- D 0 - I - 0x0156E0 05:96D0: 4F        .byte $4F   ; 
- D 0 - I - 0x0156E1 05:96D1: 91        .byte $91   ; 
- D 0 - I - 0x0156E2 05:96D2: 80        .byte $80   ; 
- D 0 - I - 0x0156E3 05:96D3: 51        .byte $51   ; 
- D 0 - I - 0x0156E4 05:96D4: 4A        .byte $4A   ; 
- D 0 - I - 0x0156E5 05:96D5: 4F        .byte $4F   ; 
- D 0 - I - 0x0156E6 05:96D6: 51        .byte $51   ; 
- D 0 - I - 0x0156E7 05:96D7: 4A        .byte $4A   ; 
- D 0 - I - 0x0156E8 05:96D8: 4A        .byte $4A   ; 
- D 0 - I - 0x0156E9 05:96D9: 4F        .byte $4F   ; 
- D 0 - I - 0x0156EA 05:96DA: 91        .byte $91   ; 
- D 0 - I - 0x0156EB 05:96DB: 80        .byte $80   ; 
- D 0 - I - 0x0156EC 05:96DC: 51        .byte $51   ; 
- D 0 - I - 0x0156ED 05:96DD: 4A        .byte $4A   ; 
- D 0 - I - 0x0156EE 05:96DE: 4F        .byte $4F   ; 
- D 0 - I - 0x0156EF 05:96DF: 03        .byte $03   ; 
- D 0 - I - 0x0156F0 05:96E0: 51        .byte $51   ; 
- D 0 - I - 0x0156F1 05:96E1: 9F        .byte $9F   ; 
- D 0 - I - 0x0156F2 05:96E2: 80        .byte $80   ; 
- D 0 - I - 0x0156F3 05:96E3: D1        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x0156F4 05:96E4: F3 96     .word sub_D1_96F3
- D 0 - I - 0x0156F6 05:96E6: 30        .byte $30   ; 
- D 0 - I - 0x0156F7 05:96E7: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0156F8 05:96E8: 5C        .byte $5C   ; 
- D 0 - I - 0x0156F9 05:96E9: 5C        .byte $5C   ; 
- D 0 - I - 0x0156FA 05:96EA: 5A        .byte $5A   ; 
- D 0 - I - 0x0156FB 05:96EB: 58        .byte $58   ; 
- D 0 - I - 0x0156FC 05:96EC: 5C        .byte $5C   ; 
- D 0 - I - 0x0156FD 05:96ED: 5C        .byte $5C   ; 
- D 0 - I - 0x0156FE 05:96EE: 5A        .byte $5A   ; 
- D 0 - I - 0x0156FF 05:96EF: 58        .byte $58   ; 
- D 0 - I - 0x015700 05:96F0: D0        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x015701 05:96F1: AD 96     .word loc_D0_96AD



sub_D1_96F3:
- D 0 - I - 0x015703 05:96F3: 06        .byte $06   ; 
- D 0 - I - 0x015704 05:96F4: 9F        .byte $9F   ; 
- D 0 - I - 0x015705 05:96F5: 80        .byte $80   ; 
- D 0 - I - 0x015706 05:96F6: 5F        .byte $5F   ; 
- D 0 - I - 0x015707 05:96F7: 9F        .byte $9F   ; 
- D 0 - I - 0x015708 05:96F8: 80        .byte $80   ; 
- D 0 - I - 0x015709 05:96F9: 9F        .byte $9F   ; 
- D 0 - I - 0x01570A 05:96FA: 80        .byte $80   ; 
- D 0 - I - 0x01570B 05:96FB: 9F        .byte $9F   ; 
- D 0 - I - 0x01570C 05:96FC: 80        .byte $80   ; 
- D 0 - I - 0x01570D 05:96FD: 5F        .byte $5F   ; 
- D 0 - I - 0x01570E 05:96FE: 9F        .byte $9F   ; 
- D 0 - I - 0x01570F 05:96FF: 80        .byte $80   ; 
- D 0 - I - 0x015710 05:9700: 03        .byte $03   ; 
- D 0 - I - 0x015711 05:9701: 5F        .byte $5F   ; 
- D 0 - I - 0x015712 05:9702: 9F        .byte $9F   ; 
- D 0 - I - 0x015713 05:9703: 80        .byte $80   ; 
- D 0 - I - 0x015714 05:9704: 06        .byte $06   ; 
- D 0 - I - 0x015715 05:9705: 9F        .byte $9F   ; 
- D 0 - I - 0x015716 05:9706: 80        .byte $80   ; 
- D 0 - I - 0x015717 05:9707: 5F        .byte $5F   ; 
- D 0 - I - 0x015718 05:9708: 9F        .byte $9F   ; 
- D 0 - I - 0x015719 05:9709: 80        .byte $80   ; 
- D 0 - I - 0x01571A 05:970A: 9F        .byte $9F   ; 
- D 0 - I - 0x01571B 05:970B: 80        .byte $80   ; 
- D 0 - I - 0x01571C 05:970C: 9F        .byte $9F   ; 
- D 0 - I - 0x01571D 05:970D: 80        .byte $80   ; 
- D 0 - I - 0x01571E 05:970E: 5F        .byte $5F   ; 
- D 0 - I - 0x01571F 05:970F: 0C        .byte $0C   ; 
- D 0 - I - 0x015720 05:9710: 5F        .byte $5F   ; 
- D 0 - I - 0x015721 05:9711: 06        .byte $06   ; 
- D 0 - I - 0x015722 05:9712: 9D        .byte $9D   ; 
- D 0 - I - 0x015723 05:9713: 80        .byte $80   ; 
- D 0 - I - 0x015724 05:9714: 9D        .byte $9D   ; 
- D 0 - I - 0x015725 05:9715: 80        .byte $80   ; 
- D 0 - I - 0x015726 05:9716: 0C        .byte $0C   ; 
- D 0 - I - 0x015727 05:9717: 9D        .byte $9D   ; 
- D 0 - I - 0x015728 05:9718: 80        .byte $80   ; 
- D 0 - I - 0x015729 05:9719: 9D        .byte $9D   ; 
- D 0 - I - 0x01572A 05:971A: 80        .byte $80   ; 
- D 0 - I - 0x01572B 05:971B: 5D        .byte $5D   ; 
- D 0 - I - 0x01572C 05:971C: 06        .byte $06   ; 
- D 0 - I - 0x01572D 05:971D: 9D        .byte $9D   ; 
- D 0 - I - 0x01572E 05:971E: 80        .byte $80   ; 
- D 0 - I - 0x01572F 05:971F: 9D        .byte $9D   ; 
- D 0 - I - 0x015730 05:9720: 80        .byte $80   ; 
- D 0 - I - 0x015731 05:9721: 5D        .byte $5D   ; 
- D 0 - I - 0x015732 05:9722: 9D        .byte $9D   ; 
- D 0 - I - 0x015733 05:9723: 80        .byte $80   ; 
- D 0 - I - 0x015734 05:9724: 9D        .byte $9D   ; 
- D 0 - I - 0x015735 05:9725: 80        .byte $80   ; 
- D 0 - I - 0x015736 05:9726: 9D        .byte $9D   ; 
- D 0 - I - 0x015737 05:9727: 80        .byte $80   ; 
- D 0 - I - 0x015738 05:9728: 5D        .byte $5D   ; 
- D 0 - I - 0x015739 05:9729: 03        .byte $03   ; 
- D 0 - I - 0x01573A 05:972A: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x01573B 05:972B: 9F        .byte $9F   ; 
- D 0 - I - 0x01573C 05:972C: 80        .byte $80   ; 
- D 0 - I - 0x01573D 05:972D: 06        .byte $06   ; 
- D 0 - I - 0x01573E 05:972E: 9F        .byte $9F   ; 
- D 0 - I - 0x01573F 05:972F: 80        .byte $80   ; 
- D 0 - I - 0x015740 05:9730: 5F        .byte $5F   ; 
- D 0 - I - 0x015741 05:9731: 9F        .byte $9F   ; 
- D 0 - I - 0x015742 05:9732: 80        .byte $80   ; 
- D 0 - I - 0x015743 05:9733: 9F        .byte $9F   ; 
- D 0 - I - 0x015744 05:9734: 80        .byte $80   ; 
- D 0 - I - 0x015745 05:9735: 9F        .byte $9F   ; 
- D 0 - I - 0x015746 05:9736: 80        .byte $80   ; 
- D 0 - I - 0x015747 05:9737: 5F        .byte $5F   ; 
- D 0 - I - 0x015748 05:9738: 9F        .byte $9F   ; 
- D 0 - I - 0x015749 05:9739: 80        .byte $80   ; 
- D 0 - I - 0x01574A 05:973A: 03        .byte $03   ; 
- D 0 - I - 0x01574B 05:973B: 5F        .byte $5F   ; 
- D 0 - I - 0x01574C 05:973C: 9F        .byte $9F   ; 
- D 0 - I - 0x01574D 05:973D: 80        .byte $80   ; 
- D 0 - I - 0x01574E 05:973E: 06        .byte $06   ; 
- D 0 - I - 0x01574F 05:973F: 9F        .byte $9F   ; 
- D 0 - I - 0x015750 05:9740: 80        .byte $80   ; 
- D 0 - I - 0x015751 05:9741: 5F        .byte $5F   ; 
- D 0 - I - 0x015752 05:9742: 9F        .byte $9F   ; 
- D 0 - I - 0x015753 05:9743: 80        .byte $80   ; 
- D 0 - I - 0x015754 05:9744: 9F        .byte $9F   ; 
- D 0 - I - 0x015755 05:9745: 80        .byte $80   ; 
- D 0 - I - 0x015756 05:9746: 9F        .byte $9F   ; 
- D 0 - I - 0x015757 05:9747: 80        .byte $80   ; 
- D 0 - I - 0x015758 05:9748: 5F        .byte $5F   ; 
- D 0 - I - 0x015759 05:9749: 0C        .byte $0C   ; 
- D 0 - I - 0x01575A 05:974A: 5F        .byte $5F   ; 
- D 0 - I - 0x01575B 05:974B: 06        .byte $06   ; 
- D 0 - I - 0x01575C 05:974C: 9D        .byte $9D   ; 
- D 0 - I - 0x01575D 05:974D: 80        .byte $80   ; 
- D 0 - I - 0x01575E 05:974E: 9D        .byte $9D   ; 
- D 0 - I - 0x01575F 05:974F: 80        .byte $80   ; 
- D 0 - I - 0x015760 05:9750: 0C        .byte $0C   ; 
- D 0 - I - 0x015761 05:9751: 9D        .byte $9D   ; 
- D 0 - I - 0x015762 05:9752: 80        .byte $80   ; 
- D 0 - I - 0x015763 05:9753: 9D        .byte $9D   ; 
- D 0 - I - 0x015764 05:9754: 80        .byte $80   ; 
- D 0 - I - 0x015765 05:9755: 5D        .byte $5D   ; 
- D 0 - I - 0x015766 05:9756: 06        .byte $06   ; 
- D 0 - I - 0x015767 05:9757: 9D        .byte $9D   ; 
- D 0 - I - 0x015768 05:9758: 80        .byte $80   ; 
- D 0 - I - 0x015769 05:9759: 9D        .byte $9D   ; 
- D 0 - I - 0x01576A 05:975A: 80        .byte $80   ; 
- D 0 - I - 0x01576B 05:975B: 5D        .byte $5D   ; 
- D 0 - I - 0x01576C 05:975C: 9D        .byte $9D   ; 
- D 0 - I - 0x01576D 05:975D: 80        .byte $80   ; 
- D 0 - I - 0x01576E 05:975E: 9D        .byte $9D   ; 
- D 0 - I - 0x01576F 05:975F: 80        .byte $80   ; 
- D 0 - I - 0x015770 05:9760: 9D        .byte $9D   ; 
- D 0 - I - 0x015771 05:9761: 80        .byte $80   ; 
- D 0 - I - 0x015772 05:9762: 5D        .byte $5D   ; 
- D 0 - I - 0x015773 05:9763: 03        .byte $03   ; 
- D 0 - I - 0x015774 05:9764: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015775 05:9765: 9B        .byte $9B   ; 
- D 0 - I - 0x015776 05:9766: 80        .byte $80   ; 
- D 0 - I - 0x015777 05:9767: 18        .byte $18   ; 
- D 0 - I - 0x015778 05:9768: 9B        .byte $9B   ; 
- D 0 - I - 0x015779 05:9769: 80        .byte $80   ; 
- D 0 - I - 0x01577A 05:976A: 12        .byte $12   ; 
- D 0 - I - 0x01577B 05:976B: 5B        .byte $5B   ; 
- D 0 - I - 0x01577C 05:976C: 03        .byte $03   ; 
- D 0 - I - 0x01577D 05:976D: 54        .byte $54   ; 
- D 0 - I - 0x01577E 05:976E: 99        .byte $99   ; 
- D 0 - I - 0x01577F 05:976F: 80        .byte $80   ; 
- D 0 - I - 0x015780 05:9770: 18        .byte $18   ; 
- D 0 - I - 0x015781 05:9771: 99        .byte $99   ; 
- D 0 - I - 0x015782 05:9772: 80        .byte $80   ; 
- D 0 - I - 0x015783 05:9773: 12        .byte $12   ; 
- D 0 - I - 0x015784 05:9774: 59        .byte $59   ; 
- D 0 - I - 0x015785 05:9775: 03        .byte $03   ; 
- D 0 - I - 0x015786 05:9776: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015787 05:9777: 9B        .byte $9B   ; 
- D 0 - I - 0x015788 05:9778: 80        .byte $80   ; 
- D 0 - I - 0x015789 05:9779: 30        .byte $30   ; 
- D 0 - I - 0x01578A 05:977A: 5B        .byte $5B   ; 
- D 0 - I - 0x01578B 05:977B: D2        .byte con_se_cb_rts   ; 


; bzk garbage
- - - - - - 0x01578C 05:977C: D3        .byte con_se_cb_stop   ; 



off_ch_03_977D_02:
- D 0 - I - 0x01578D 05:977D: D8        .byte con_se_cb_D8, $0E   ; 
- D 0 - I - 0x01578F 05:977F: DB        .byte con_se_cb_DB, $14, $1E, $64   ; 
- D 0 - I - 0x015793 05:9783: C7        .byte con_se_cb_C7, $B4   ; 
loc_D0_9785:
- D 0 - I - 0x015795 05:9785: 06        .byte $06   ; 
- D 0 - I - 0x015796 05:9786: D1        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x015797 05:9787: 02 98     .word sub_D1_9802
- D 0 - I - 0x015799 05:9789: D1        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x01579A 05:978A: 02 98     .word sub_D1_9802
- D 0 - I - 0x01579C 05:978C: D1        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x01579D 05:978D: 02 98     .word sub_D1_9802
- D 0 - I - 0x01579F 05:978F: 48        .byte $48   ; 
- D 0 - I - 0x0157A0 05:9790: 48        .byte $48   ; 
- D 0 - I - 0x0157A1 05:9791: 4D        .byte $4D   ; 
- D 0 - I - 0x0157A2 05:9792: 8F        .byte $8F   ; 
- D 0 - I - 0x0157A3 05:9793: 80        .byte $80   ; 
- D 0 - I - 0x0157A4 05:9794: 4F        .byte $4F   ; 
- D 0 - I - 0x0157A5 05:9795: 48        .byte $48   ; 
- D 0 - I - 0x0157A6 05:9796: 4D        .byte $4D   ; 
- D 0 - I - 0x0157A7 05:9797: 4F        .byte $4F   ; 
- D 0 - I - 0x0157A8 05:9798: 46        .byte $46   ; 
- D 0 - I - 0x0157A9 05:9799: 46        .byte $46   ; 
- D 0 - I - 0x0157AA 05:979A: 4B        .byte $4B   ; 
- D 0 - I - 0x0157AB 05:979B: 8D        .byte $8D   ; 
- D 0 - I - 0x0157AC 05:979C: 80        .byte $80   ; 
- D 0 - I - 0x0157AD 05:979D: 4D        .byte $4D   ; 
- D 0 - I - 0x0157AE 05:979E: 46        .byte $46   ; 
- D 0 - I - 0x0157AF 05:979F: 4B        .byte $4B   ; 
- D 0 - I - 0x0157B0 05:97A0: 4D        .byte $4D   ; 
- D 0 - I - 0x0157B1 05:97A1: 48        .byte $48   ; 
- D 0 - I - 0x0157B2 05:97A2: 48        .byte $48   ; 
- D 0 - I - 0x0157B3 05:97A3: 4D        .byte $4D   ; 
- D 0 - I - 0x0157B4 05:97A4: 8F        .byte $8F   ; 
- D 0 - I - 0x0157B5 05:97A5: 80        .byte $80   ; 
- D 0 - I - 0x0157B6 05:97A6: 4F        .byte $4F   ; 
- D 0 - I - 0x0157B7 05:97A7: 48        .byte $48   ; 
- D 0 - I - 0x0157B8 05:97A8: 4D        .byte $4D   ; 
- D 0 - I - 0x0157B9 05:97A9: 4F        .byte $4F   ; 
- D 0 - I - 0x0157BA 05:97AA: 30        .byte $30   ; 
- D 0 - I - 0x0157BB 05:97AB: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0157BC 05:97AC: 06        .byte $06   ; 
- D 0 - I - 0x0157BD 05:97AD: D1        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x0157BE 05:97AE: 02 98     .word sub_D1_9802
- D 0 - I - 0x0157C0 05:97B0: D1        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x0157C1 05:97B1: 02 98     .word sub_D1_9802
- D 0 - I - 0x0157C3 05:97B3: D1        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x0157C4 05:97B4: 02 98     .word sub_D1_9802
- D 0 - I - 0x0157C6 05:97B6: D1        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x0157C7 05:97B7: 02 98     .word sub_D1_9802
- D 0 - I - 0x0157C9 05:97B9: 48        .byte $48   ; 
- D 0 - I - 0x0157CA 05:97BA: 48        .byte $48   ; 
- D 0 - I - 0x0157CB 05:97BB: 4D        .byte $4D   ; 
- D 0 - I - 0x0157CC 05:97BC: 8F        .byte $8F   ; 
- D 0 - I - 0x0157CD 05:97BD: 80        .byte $80   ; 
- D 0 - I - 0x0157CE 05:97BE: 4F        .byte $4F   ; 
- D 0 - I - 0x0157CF 05:97BF: 48        .byte $48   ; 
- D 0 - I - 0x0157D0 05:97C0: 4D        .byte $4D   ; 
- D 0 - I - 0x0157D1 05:97C1: 4F        .byte $4F   ; 
- D 0 - I - 0x0157D2 05:97C2: 46        .byte $46   ; 
- D 0 - I - 0x0157D3 05:97C3: 46        .byte $46   ; 
- D 0 - I - 0x0157D4 05:97C4: 4B        .byte $4B   ; 
- D 0 - I - 0x0157D5 05:97C5: 8D        .byte $8D   ; 
- D 0 - I - 0x0157D6 05:97C6: 80        .byte $80   ; 
- D 0 - I - 0x0157D7 05:97C7: 4D        .byte $4D   ; 
- D 0 - I - 0x0157D8 05:97C8: 46        .byte $46   ; 
- D 0 - I - 0x0157D9 05:97C9: 4B        .byte $4B   ; 
- D 0 - I - 0x0157DA 05:97CA: 4D        .byte $4D   ; 
- D 0 - I - 0x0157DB 05:97CB: 48        .byte $48   ; 
- D 0 - I - 0x0157DC 05:97CC: 48        .byte $48   ; 
- D 0 - I - 0x0157DD 05:97CD: 4D        .byte $4D   ; 
- D 0 - I - 0x0157DE 05:97CE: 8F        .byte $8F   ; 
- D 0 - I - 0x0157DF 05:97CF: 80        .byte $80   ; 
- D 0 - I - 0x0157E0 05:97D0: 4F        .byte $4F   ; 
- D 0 - I - 0x0157E1 05:97D1: 48        .byte $48   ; 
- D 0 - I - 0x0157E2 05:97D2: 4D        .byte $4D   ; 
- D 0 - I - 0x0157E3 05:97D3: 4F        .byte $4F   ; 
- D 0 - I - 0x0157E4 05:97D4: 30        .byte $30   ; 
- D 0 - I - 0x0157E5 05:97D5: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0157E6 05:97D6: 06        .byte $06   ; 
off_CE_97D7:
- D 0 - I - 0x0157E7 05:97D7: 4D        .byte $4D   ; 
- D 0 - I - 0x0157E8 05:97D8: 4D        .byte $4D   ; 
- D 0 - I - 0x0157E9 05:97D9: 52        .byte $52   ; 
- D 0 - I - 0x0157EA 05:97DA: 94        .byte $94   ; 
- D 0 - I - 0x0157EB 05:97DB: 80        .byte $80   ; 
- D 0 - I - 0x0157EC 05:97DC: 54        .byte $54   ; 
- D 0 - I - 0x0157ED 05:97DD: 4D        .byte $4D   ; 
- D 0 - I - 0x0157EE 05:97DE: 52        .byte $52   ; 
- D 0 - I - 0x0157EF 05:97DF: 54        .byte $54   ; 
- D 0 - I - 0x0157F0 05:97E0: 4C        .byte $4C   ; 
- D 0 - I - 0x0157F1 05:97E1: 4C        .byte $4C   ; 
- D 0 - I - 0x0157F2 05:97E2: 52        .byte $52   ; 
- D 0 - I - 0x0157F3 05:97E3: 93        .byte $93   ; 
- D 0 - I - 0x0157F4 05:97E4: 80        .byte $80   ; 
- D 0 - I - 0x0157F5 05:97E5: 53        .byte $53   ; 
- D 0 - I - 0x0157F6 05:97E6: 4C        .byte $4C   ; 
- D 0 - I - 0x0157F7 05:97E7: 52        .byte $52   ; 
- D 0 - I - 0x0157F8 05:97E8: 53        .byte $53   ; 
- D 0 - I - 0x0157F9 05:97E9: 4A        .byte $4A   ; 
- D 0 - I - 0x0157FA 05:97EA: 4A        .byte $4A   ; 
- D 0 - I - 0x0157FB 05:97EB: 4F        .byte $4F   ; 
- D 0 - I - 0x0157FC 05:97EC: 91        .byte $91   ; 
- D 0 - I - 0x0157FD 05:97ED: 80        .byte $80   ; 
- D 0 - I - 0x0157FE 05:97EE: 51        .byte $51   ; 
- D 0 - I - 0x0157FF 05:97EF: 4A        .byte $4A   ; 
- D 0 - I - 0x015800 05:97F0: 4F        .byte $4F   ; 
- D 0 - I - 0x015801 05:97F1: 51        .byte $51   ; 
- D 0 - I - 0x015802 05:97F2: 48        .byte $48   ; 
- D 0 - I - 0x015803 05:97F3: 48        .byte $48   ; 
- D 0 - I - 0x015804 05:97F4: 53        .byte $53   ; 
- D 0 - I - 0x015805 05:97F5: 8F        .byte $8F   ; 
- D 0 - I - 0x015806 05:97F6: 80        .byte $80   ; 
- D 0 - I - 0x015807 05:97F7: 4F        .byte $4F   ; 
- D 0 - I - 0x015808 05:97F8: 48        .byte $48   ; 
- D 0 - I - 0x015809 05:97F9: 4A        .byte $4A   ; 
- D 0 - I - 0x01580A 05:97FA: 4C        .byte $4C   ; 
- D 0 - I - 0x01580B 05:97FB: CE        .byte con_se_cb_loop_1, $02   ; 
- D 0 - I - 0x01580D 05:97FD: D7 97     .word off_CE_97D7
- D 0 - I - 0x01580F 05:97FF: D0        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x015810 05:9800: 85 97     .word loc_D0_9785



sub_D1_9802:
- D 0 - I - 0x015812 05:9802: 06        .byte $06   ; 
- D 0 - I - 0x015813 05:9803: 4C        .byte $4C   ; 
- D 0 - I - 0x015814 05:9804: 4C        .byte $4C   ; 
- D 0 - I - 0x015815 05:9805: 51        .byte $51   ; 
- D 0 - I - 0x015816 05:9806: 93        .byte $93   ; 
- D 0 - I - 0x015817 05:9807: 80        .byte $80   ; 
- D 0 - I - 0x015818 05:9808: 53        .byte $53   ; 
- D 0 - I - 0x015819 05:9809: 4C        .byte $4C   ; 
- D 0 - I - 0x01581A 05:980A: 51        .byte $51   ; 
- D 0 - I - 0x01581B 05:980B: 53        .byte $53   ; 
- D 0 - I - 0x01581C 05:980C: 4C        .byte $4C   ; 
- D 0 - I - 0x01581D 05:980D: 4C        .byte $4C   ; 
- D 0 - I - 0x01581E 05:980E: 51        .byte $51   ; 
- D 0 - I - 0x01581F 05:980F: 93        .byte $93   ; 
- D 0 - I - 0x015820 05:9810: 80        .byte $80   ; 
- D 0 - I - 0x015821 05:9811: 53        .byte $53   ; 
- D 0 - I - 0x015822 05:9812: 4C        .byte $4C   ; 
- D 0 - I - 0x015823 05:9813: 51        .byte $51   ; 
- D 0 - I - 0x015824 05:9814: 53        .byte $53   ; 
- D 0 - I - 0x015825 05:9815: 4A        .byte $4A   ; 
- D 0 - I - 0x015826 05:9816: 4A        .byte $4A   ; 
- D 0 - I - 0x015827 05:9817: 4F        .byte $4F   ; 
- D 0 - I - 0x015828 05:9818: 91        .byte $91   ; 
- D 0 - I - 0x015829 05:9819: 80        .byte $80   ; 
- D 0 - I - 0x01582A 05:981A: 51        .byte $51   ; 
- D 0 - I - 0x01582B 05:981B: 4A        .byte $4A   ; 
- D 0 - I - 0x01582C 05:981C: 4F        .byte $4F   ; 
- D 0 - I - 0x01582D 05:981D: 51        .byte $51   ; 
- D 0 - I - 0x01582E 05:981E: 4A        .byte $4A   ; 
- D 0 - I - 0x01582F 05:981F: 4A        .byte $4A   ; 
- D 0 - I - 0x015830 05:9820: 4F        .byte $4F   ; 
- D 0 - I - 0x015831 05:9821: 91        .byte $91   ; 
- D 0 - I - 0x015832 05:9822: 80        .byte $80   ; 
- D 0 - I - 0x015833 05:9823: 51        .byte $51   ; 
- D 0 - I - 0x015834 05:9824: 4A        .byte $4A   ; 
- D 0 - I - 0x015835 05:9825: 4F        .byte $4F   ; 
- D 0 - I - 0x015836 05:9826: 51        .byte $51   ; 
- D 0 - I - 0x015837 05:9827: D2        .byte con_se_cb_rts   ; 



off_ch_03_9828_03:
- D 0 - I - 0x015838 05:9828: CD        .byte con_se_cb_CD   ; 
- D 0 - I - 0x015839 05:9829: F3 8B     .word ofs_CD_8BF3
loc_D0_982B:
- D 0 - I - 0x01583B 05:982B: C4        .byte con_se_cb_C4, $23   ; 
- D 0 - I - 0x01583D 05:982D: 0C        .byte $0C   ; 
- D 0 - I - 0x01583E 05:982E: 43        .byte $43   ; 
- D 0 - I - 0x01583F 05:982F: 06        .byte $06   ; 
- D 0 - I - 0x015840 05:9830: 42        .byte $42   ; 
- D 0 - I - 0x015841 05:9831: 41        .byte $41   ; 
- D 0 - I - 0x015842 05:9832: 41        .byte $41   ; 
- D 0 - I - 0x015843 05:9833: 41        .byte $41   ; 
- D 0 - I - 0x015844 05:9834: 42        .byte $42   ; 
- D 0 - I - 0x015845 05:9835: 41        .byte $41   ; 
off_CE_9836:
- D 0 - I - 0x015846 05:9836: 41        .byte $41   ; 
- D 0 - I - 0x015847 05:9837: 41        .byte $41   ; 
- D 0 - I - 0x015848 05:9838: 42        .byte $42   ; 
- D 0 - I - 0x015849 05:9839: 41        .byte $41   ; 
- D 0 - I - 0x01584A 05:983A: CE        .byte con_se_cb_loop_1, $1C   ; 
- D 0 - I - 0x01584C 05:983C: 36 98     .word off_CE_9836
- D 0 - I - 0x01584E 05:983E: C4        .byte con_se_cb_C4, $32   ; 
- D 0 - I - 0x015850 05:9840: 41        .byte $41   ; 
- D 0 - I - 0x015851 05:9841: 41        .byte $41   ; 
- D 0 - I - 0x015852 05:9842: 42        .byte $42   ; 
- D 0 - I - 0x015853 05:9843: 41        .byte $41   ; 
- D 0 - I - 0x015854 05:9844: 41        .byte $41   ; 
- D 0 - I - 0x015855 05:9845: 41        .byte $41   ; 
- D 0 - I - 0x015856 05:9846: 42        .byte $42   ; 
- D 0 - I - 0x015857 05:9847: 4C        .byte $4C   ; 
- D 0 - I - 0x015858 05:9848: C4        .byte con_se_cb_C4, $23   ; 
- D 0 - I - 0x01585A 05:984A: 0C        .byte $0C   ; 
- D 0 - I - 0x01585B 05:984B: 43        .byte $43   ; 
- D 0 - I - 0x01585C 05:984C: 06        .byte $06   ; 
- D 0 - I - 0x01585D 05:984D: 42        .byte $42   ; 
- D 0 - I - 0x01585E 05:984E: 41        .byte $41   ; 
- D 0 - I - 0x01585F 05:984F: 41        .byte $41   ; 
- D 0 - I - 0x015860 05:9850: 41        .byte $41   ; 
- D 0 - I - 0x015861 05:9851: 42        .byte $42   ; 
- D 0 - I - 0x015862 05:9852: 41        .byte $41   ; 
off_CE_9853:
- D 0 - I - 0x015863 05:9853: 41        .byte $41   ; 
- D 0 - I - 0x015864 05:9854: 41        .byte $41   ; 
- D 0 - I - 0x015865 05:9855: 42        .byte $42   ; 
- D 0 - I - 0x015866 05:9856: 41        .byte $41   ; 
- D 0 - I - 0x015867 05:9857: CE        .byte con_se_cb_loop_1, $24   ; 
- D 0 - I - 0x015869 05:9859: 53 98     .word off_CE_9853
- D 0 - I - 0x01586B 05:985B: C4        .byte con_se_cb_C4, $32   ; 
- D 0 - I - 0x01586D 05:985D: 41        .byte $41   ; 
- D 0 - I - 0x01586E 05:985E: 41        .byte $41   ; 
- D 0 - I - 0x01586F 05:985F: 42        .byte $42   ; 
- D 0 - I - 0x015870 05:9860: 41        .byte $41   ; 
- D 0 - I - 0x015871 05:9861: 41        .byte $41   ; 
- D 0 - I - 0x015872 05:9862: 41        .byte $41   ; 
- D 0 - I - 0x015873 05:9863: 42        .byte $42   ; 
- D 0 - I - 0x015874 05:9864: 4C        .byte $4C   ; 
- D 0 - I - 0x015875 05:9865: C4        .byte con_se_cb_C4, $23   ; 
off_CE_9867:
- D 0 - I - 0x015877 05:9867: 0C        .byte $0C   ; 
- D 0 - I - 0x015878 05:9868: 43        .byte $43   ; 
- D 0 - I - 0x015879 05:9869: 06        .byte $06   ; 
- D 0 - I - 0x01587A 05:986A: 4C        .byte $4C   ; 
- D 0 - I - 0x01587B 05:986B: 41        .byte $41   ; 
- D 0 - I - 0x01587C 05:986C: 41        .byte $41   ; 
- D 0 - I - 0x01587D 05:986D: 41        .byte $41   ; 
- D 0 - I - 0x01587E 05:986E: 4C        .byte $4C   ; 
- D 0 - I - 0x01587F 05:986F: 41        .byte $41   ; 
- D 0 - I - 0x015880 05:9870: 41        .byte $41   ; 
- D 0 - I - 0x015881 05:9871: 41        .byte $41   ; 
- D 0 - I - 0x015882 05:9872: 4C        .byte $4C   ; 
- D 0 - I - 0x015883 05:9873: 41        .byte $41   ; 
- D 0 - I - 0x015884 05:9874: 41        .byte $41   ; 
- D 0 - I - 0x015885 05:9875: 41        .byte $41   ; 
- D 0 - I - 0x015886 05:9876: 42        .byte $42   ; 
- D 0 - I - 0x015887 05:9877: 4C        .byte $4C   ; 
- D 0 - I - 0x015888 05:9878: CE        .byte con_se_cb_loop_1, $04   ; 
- D 0 - I - 0x01588A 05:987A: 67 98     .word off_CE_9867
- D 0 - I - 0x01588C 05:987C: D0        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x01588D 05:987D: 2B 98     .word loc_D0_982B


; bzk garbage
- - - - - - 0x01588F 05:987F: D3        .byte con_se_cb_stop   ; 



_off013_9880_04_mission_5:
- D 0 - I - 0x015890 05:9880: FF        .byte $FF   ; 
- D 0 - I - 0x015891 05:9881: 00        .byte $00   ; 
- D 0 - I - 0x015892 05:9882: 8E 98     .word off_ch_04_988E_00
- D 0 - I - 0x015894 05:9884: 01        .byte $01   ; 
- D 0 - I - 0x015895 05:9885: C2 99     .word off_ch_04_99C2_01
- D 0 - I - 0x015897 05:9887: 02        .byte $02   ; 
- D 0 - I - 0x015898 05:9888: F4 9A     .word off_ch_04_9AF4_02
- D 0 - I - 0x01589A 05:988A: 03        .byte $03   ; 
- D 0 - I - 0x01589B 05:988B: DA 9B     .word off_ch_04_9BDA_03
- D 0 - I - 0x01589D 05:988D: FF        .byte $FF   ; 



off_ch_04_988E_00:
- D 0 - I - 0x01589E 05:988E: D8        .byte con_se_cb_D8, $F4   ; 
- D 0 - I - 0x0158A0 05:9890: CC        .byte con_se_cb_CC, $73   ; 
- D 0 - I - 0x0158A2 05:9892: DB        .byte con_se_cb_DB, $0E, $1E, $78   ; 
- D 0 - I - 0x0158A6 05:9896: CD        .byte con_se_cb_CD   ; 
- D 0 - I - 0x0158A7 05:9897: BA 8A     .word ofs_CD_8ABA
- D 0 - I - 0x0158A9 05:9899: C4        .byte con_se_cb_C4, $21   ; 
- D 0 - I - 0x0158AB 05:989B: C7        .byte con_se_cb_C7, $B4   ; 
- D 0 - I - 0x0158AD 05:989D: 0C        .byte $0C   ; 
- D 0 - I - 0x0158AE 05:989E: C9        .byte con_se_cb_C9   ; 
loc_D0_989F:
- D 0 - I - 0x0158AF 05:989F: 0C        .byte $0C   ; 
- D 0 - I - 0x0158B0 05:98A0: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0158B1 05:98A1: 06        .byte $06   ; 
- D 0 - I - 0x0158B2 05:98A2: 6B        .byte $6B   ; 
- D 0 - I - 0x0158B3 05:98A3: 09        .byte $09   ; 
- D 0 - I - 0x0158B4 05:98A4: 69        .byte $69   ; 
- D 0 - I - 0x0158B5 05:98A5: 03        .byte $03   ; 
- D 0 - I - 0x0158B6 05:98A6: 6C        .byte $6C   ; 
- D 0 - I - 0x0158B7 05:98A7: 06        .byte $06   ; 
- D 0 - I - 0x0158B8 05:98A8: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0158B9 05:98A9: 09        .byte $09   ; 
- D 0 - I - 0x0158BA 05:98AA: 6B        .byte $6B   ; 
- D 0 - I - 0x0158BB 05:98AB: 03        .byte $03   ; 
- D 0 - I - 0x0158BC 05:98AC: 67        .byte $67   ; 
- D 0 - I - 0x0158BD 05:98AD: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0158BE 05:98AE: 58        .byte $58   ; 
- D 0 - I - 0x0158BF 05:98AF: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0158C0 05:98B0: 58        .byte $58   ; 
- D 0 - I - 0x0158C1 05:98B1: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0158C2 05:98B2: 58        .byte $58   ; 
- D 0 - I - 0x0158C3 05:98B3: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0158C4 05:98B4: 58        .byte $58   ; 
- D 0 - I - 0x0158C5 05:98B5: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0158C6 05:98B6: 58        .byte $58   ; 
- D 0 - I - 0x0158C7 05:98B7: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0158C8 05:98B8: 58        .byte $58   ; 
- D 0 - I - 0x0158C9 05:98B9: 09        .byte $09   ; 
- D 0 - I - 0x0158CA 05:98BA: 69        .byte $69   ; 
- D 0 - I - 0x0158CB 05:98BB: 03        .byte $03   ; 
- D 0 - I - 0x0158CC 05:98BC: 6B        .byte $6B   ; 
- D 0 - I - 0x0158CD 05:98BD: 06        .byte $06   ; 
- D 0 - I - 0x0158CE 05:98BE: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0158CF 05:98BF: 03        .byte $03   ; 
- D 0 - I - 0x0158D0 05:98C0: 58        .byte $58   ; 
- D 0 - I - 0x0158D1 05:98C1: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0158D2 05:98C2: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0158D3 05:98C3: 58        .byte $58   ; 
- D 0 - I - 0x0158D4 05:98C4: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0158D5 05:98C5: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0158D6 05:98C6: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0158D7 05:98C7: 58        .byte $58   ; 
- D 0 - I - 0x0158D8 05:98C8: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0158D9 05:98C9: 58        .byte $58   ; 
- D 0 - I - 0x0158DA 05:98CA: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0158DB 05:98CB: 58        .byte $58   ; 
- D 0 - I - 0x0158DC 05:98CC: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0158DD 05:98CD: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0158DE 05:98CE: 06        .byte $06   ; 
- D 0 - I - 0x0158DF 05:98CF: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0158E0 05:98D0: 03        .byte $03   ; 
- D 0 - I - 0x0158E1 05:98D1: 53        .byte $53   ; 
- D 0 - I - 0x0158E2 05:98D2: 53        .byte $53   ; 
- D 0 - I - 0x0158E3 05:98D3: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0158E4 05:98D4: 58        .byte $58   ; 
- D 0 - I - 0x0158E5 05:98D5: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0158E6 05:98D6: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0158E7 05:98D7: 64        .byte $64   ; 
- D 0 - I - 0x0158E8 05:98D8: 67        .byte $67   ; 
- D 0 - I - 0x0158E9 05:98D9: 06        .byte $06   ; 
- D 0 - I - 0x0158EA 05:98DA: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0158EB 05:98DB: 09        .byte $09   ; 
- D 0 - I - 0x0158EC 05:98DC: 69        .byte $69   ; 
- D 0 - I - 0x0158ED 05:98DD: 03        .byte $03   ; 
- D 0 - I - 0x0158EE 05:98DE: 6B        .byte $6B   ; 
- D 0 - I - 0x0158EF 05:98DF: 0C        .byte $0C   ; 
- D 0 - I - 0x0158F0 05:98E0: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0158F1 05:98E1: 06        .byte $06   ; 
- D 0 - I - 0x0158F2 05:98E2: 6B        .byte $6B   ; 
- D 0 - I - 0x0158F3 05:98E3: 09        .byte $09   ; 
- D 0 - I - 0x0158F4 05:98E4: 69        .byte $69   ; 
- D 0 - I - 0x0158F5 05:98E5: 03        .byte $03   ; 
- D 0 - I - 0x0158F6 05:98E6: 6C        .byte $6C   ; 
- D 0 - I - 0x0158F7 05:98E7: 06        .byte $06   ; 
- D 0 - I - 0x0158F8 05:98E8: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0158F9 05:98E9: 09        .byte $09   ; 
- D 0 - I - 0x0158FA 05:98EA: 6B        .byte $6B   ; 
- D 0 - I - 0x0158FB 05:98EB: 03        .byte $03   ; 
- D 0 - I - 0x0158FC 05:98EC: 67        .byte $67   ; 
- D 0 - I - 0x0158FD 05:98ED: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0158FE 05:98EE: 58        .byte $58   ; 
- D 0 - I - 0x0158FF 05:98EF: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015900 05:98F0: 58        .byte $58   ; 
- D 0 - I - 0x015901 05:98F1: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015902 05:98F2: 58        .byte $58   ; 
- D 0 - I - 0x015903 05:98F3: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015904 05:98F4: 58        .byte $58   ; 
- D 0 - I - 0x015905 05:98F5: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015906 05:98F6: 58        .byte $58   ; 
- D 0 - I - 0x015907 05:98F7: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015908 05:98F8: 58        .byte $58   ; 
- D 0 - I - 0x015909 05:98F9: 09        .byte $09   ; 
- D 0 - I - 0x01590A 05:98FA: 69        .byte $69   ; 
- D 0 - I - 0x01590B 05:98FB: 03        .byte $03   ; 
- D 0 - I - 0x01590C 05:98FC: 6B        .byte $6B   ; 
- D 0 - I - 0x01590D 05:98FD: 06        .byte $06   ; 
- D 0 - I - 0x01590E 05:98FE: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x01590F 05:98FF: 03        .byte $03   ; 
- D 0 - I - 0x015910 05:9900: 58        .byte $58   ; 
- D 0 - I - 0x015911 05:9901: 53        .byte $53   ; 
- D 0 - I - 0x015912 05:9902: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015913 05:9903: 58        .byte $58   ; 
- D 0 - I - 0x015914 05:9904: 53        .byte $53   ; 
- D 0 - I - 0x015915 05:9905: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015916 05:9906: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015917 05:9907: 58        .byte $58   ; 
- D 0 - I - 0x015918 05:9908: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015919 05:9909: 58        .byte $58   ; 
- D 0 - I - 0x01591A 05:990A: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x01591B 05:990B: 58        .byte $58   ; 
- D 0 - I - 0x01591C 05:990C: 53        .byte $53   ; 
- D 0 - I - 0x01591D 05:990D: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x01591E 05:990E: 06        .byte $06   ; 
- D 0 - I - 0x01591F 05:990F: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015920 05:9910: 03        .byte $03   ; 
- D 0 - I - 0x015921 05:9911: 53        .byte $53   ; 
- D 0 - I - 0x015922 05:9912: 53        .byte $53   ; 
- D 0 - I - 0x015923 05:9913: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015924 05:9914: 58        .byte $58   ; 
- D 0 - I - 0x015925 05:9915: 53        .byte $53   ; 
- D 0 - I - 0x015926 05:9916: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015927 05:9917: 64        .byte $64   ; 
- D 0 - I - 0x015928 05:9918: 67        .byte $67   ; 
- D 0 - I - 0x015929 05:9919: 06        .byte $06   ; 
- D 0 - I - 0x01592A 05:991A: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x01592B 05:991B: 09        .byte $09   ; 
- D 0 - I - 0x01592C 05:991C: 69        .byte $69   ; 
- D 0 - I - 0x01592D 05:991D: 03        .byte $03   ; 
- D 0 - I - 0x01592E 05:991E: 6B        .byte $6B   ; 
- D 0 - I - 0x01592F 05:991F: 0C        .byte $0C   ; 
- D 0 - I - 0x015930 05:9920: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015931 05:9921: 06        .byte $06   ; 
- D 0 - I - 0x015932 05:9922: 6B        .byte $6B   ; 
- D 0 - I - 0x015933 05:9923: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015934 05:9924: 69        .byte $69   ; 
- D 0 - I - 0x015935 05:9925: 03        .byte $03   ; 
- D 0 - I - 0x015936 05:9926: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015937 05:9927: 67        .byte $67   ; 
- D 0 - I - 0x015938 05:9928: 06        .byte $06   ; 
- D 0 - I - 0x015939 05:9929: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x01593A 05:992A: A6        .byte $A6   ; 
- D 0 - I - 0x01593B 05:992B: 80        .byte $80   ; 
- D 0 - I - 0x01593C 05:992C: 66        .byte $66   ; 
- D 0 - I - 0x01593D 05:992D: 62        .byte $62   ; 
- D 0 - I - 0x01593E 05:992E: 03        .byte $03   ; 
- D 0 - I - 0x01593F 05:992F: 56        .byte $56   ; 
- D 0 - I - 0x015940 05:9930: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015941 05:9931: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015942 05:9932: 56        .byte $56   ; 
- D 0 - I - 0x015943 05:9933: 56        .byte $56   ; 
- D 0 - I - 0x015944 05:9934: 56        .byte $56   ; 
- D 0 - I - 0x015945 05:9935: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015946 05:9936: 56        .byte $56   ; 
- D 0 - I - 0x015947 05:9937: 56        .byte $56   ; 
- D 0 - I - 0x015948 05:9938: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015949 05:9939: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x01594A 05:993A: 56        .byte $56   ; 
- D 0 - I - 0x01594B 05:993B: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x01594C 05:993C: 58        .byte $58   ; 
- D 0 - I - 0x01594D 05:993D: 58        .byte $58   ; 
- D 0 - I - 0x01594E 05:993E: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x01594F 05:993F: 06        .byte $06   ; 
- D 0 - I - 0x015950 05:9940: 6B        .byte $6B   ; 
- D 0 - I - 0x015951 05:9941: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015952 05:9942: 69        .byte $69   ; 
- D 0 - I - 0x015953 05:9943: 03        .byte $03   ; 
- D 0 - I - 0x015954 05:9944: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015955 05:9945: 6E        .byte $6E   ; 
- D 0 - I - 0x015956 05:9946: 06        .byte $06   ; 
- D 0 - I - 0x015957 05:9947: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015958 05:9948: AC        .byte $AC   ; 
- D 0 - I - 0x015959 05:9949: 80        .byte $80   ; 
- D 0 - I - 0x01595A 05:994A: 12        .byte $12   ; 
- D 0 - I - 0x01595B 05:994B: 6C        .byte $6C   ; 
- D 0 - I - 0x01595C 05:994C: 06        .byte $06   ; 
- D 0 - I - 0x01595D 05:994D: AB        .byte $AB   ; 
- D 0 - I - 0x01595E 05:994E: 80        .byte $80   ; 
- D 0 - I - 0x01595F 05:994F: 0C        .byte $0C   ; 
- D 0 - I - 0x015960 05:9950: 6B        .byte $6B   ; 
- D 0 - I - 0x015961 05:9951: 03        .byte $03   ; 
- D 0 - I - 0x015962 05:9952: 5F        .byte $5F   ; 
- D 0 - I - 0x015963 05:9953: 62        .byte $62   ; 
- D 0 - I - 0x015964 05:9954: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015965 05:9955: 64        .byte $64   ; 
- D 0 - I - 0x015966 05:9956: 5B        .byte $5B   ; 
- D 0 - I - 0x015967 05:9957: 5F        .byte $5F   ; 
- D 0 - I - 0x015968 05:9958: 62        .byte $62   ; 
- D 0 - I - 0x015969 05:9959: 66        .byte $66   ; 
- D 0 - I - 0x01596A 05:995A: 0C        .byte $0C   ; 
- D 0 - I - 0x01596B 05:995B: 6B        .byte $6B   ; 
- D 0 - I - 0x01596C 05:995C: 69        .byte $69   ; 
- D 0 - I - 0x01596D 05:995D: 6C        .byte $6C   ; 
- D 0 - I - 0x01596E 05:995E: 09        .byte $09   ; 
- D 0 - I - 0x01596F 05:995F: 6B        .byte $6B   ; 
- D 0 - I - 0x015970 05:9960: 03        .byte $03   ; 
- D 0 - I - 0x015971 05:9961: A7        .byte $A7   ; 
- D 0 - I - 0x015972 05:9962: 80        .byte $80   ; 
- D 0 - I - 0x015973 05:9963: 06        .byte $06   ; 
- D 0 - I - 0x015974 05:9964: 67        .byte $67   ; 
- D 0 - I - 0x015975 05:9965: A9        .byte $A9   ; 
- D 0 - I - 0x015976 05:9966: 80        .byte $80   ; 
- D 0 - I - 0x015977 05:9967: 09        .byte $09   ; 
- D 0 - I - 0x015978 05:9968: 69        .byte $69   ; 
- D 0 - I - 0x015979 05:9969: 03        .byte $03   ; 
- D 0 - I - 0x01597A 05:996A: 66        .byte $66   ; 
- D 0 - I - 0x01597B 05:996B: 62        .byte $62   ; 
- D 0 - I - 0x01597C 05:996C: 66        .byte $66   ; 
- D 0 - I - 0x01597D 05:996D: 69        .byte $69   ; 
- D 0 - I - 0x01597E 05:996E: 66        .byte $66   ; 
- D 0 - I - 0x01597F 05:996F: 5B        .byte $5B   ; 
- D 0 - I - 0x015980 05:9970: 5F        .byte $5F   ; 
- D 0 - I - 0x015981 05:9971: 62        .byte $62   ; 
- D 0 - I - 0x015982 05:9972: 66        .byte $66   ; 
- D 0 - I - 0x015983 05:9973: 0C        .byte $0C   ; 
- D 0 - I - 0x015984 05:9974: 6B        .byte $6B   ; 
- D 0 - I - 0x015985 05:9975: 09        .byte $09   ; 
- D 0 - I - 0x015986 05:9976: 6E        .byte $6E   ; 
- D 0 - I - 0x015987 05:9977: 03        .byte $03   ; 
- D 0 - I - 0x015988 05:9978: 6E        .byte $6E   ; 
- D 0 - I - 0x015989 05:9979: 06        .byte $06   ; 
- D 0 - I - 0x01598A 05:997A: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x01598B 05:997B: AC        .byte $AC   ; 
- D 0 - I - 0x01598C 05:997C: 80        .byte $80   ; 
- D 0 - I - 0x01598D 05:997D: 12        .byte $12   ; 
- D 0 - I - 0x01598E 05:997E: 6C        .byte $6C   ; 
- D 0 - I - 0x01598F 05:997F: 06        .byte $06   ; 
- D 0 - I - 0x015990 05:9980: AE        .byte $AE   ; 
- D 0 - I - 0x015991 05:9981: 80        .byte $80   ; 
- D 0 - I - 0x015992 05:9982: 09        .byte $09   ; 
- D 0 - I - 0x015993 05:9983: 6E        .byte $6E   ; 
- D 0 - I - 0x015994 05:9984: 03        .byte $03   ; 
- D 0 - I - 0x015995 05:9985: 69        .byte $69   ; 
- D 0 - I - 0x015996 05:9986: 66        .byte $66   ; 
- D 0 - I - 0x015997 05:9987: 62        .byte $62   ; 
- D 0 - I - 0x015998 05:9988: 66        .byte $66   ; 
- D 0 - I - 0x015999 05:9989: 5D        .byte $5D   ; 
- D 0 - I - 0x01599A 05:998A: 5B        .byte $5B   ; 
- D 0 - I - 0x01599B 05:998B: 5F        .byte $5F   ; 
- D 0 - I - 0x01599C 05:998C: 62        .byte $62   ; 
- D 0 - I - 0x01599D 05:998D: 66        .byte $66   ; 
- D 0 - I - 0x01599E 05:998E: 0C        .byte $0C   ; 
- D 0 - I - 0x01599F 05:998F: 6B        .byte $6B   ; 
- D 0 - I - 0x0159A0 05:9990: 69        .byte $69   ; 
- D 0 - I - 0x0159A1 05:9991: 6C        .byte $6C   ; 
- D 0 - I - 0x0159A2 05:9992: 09        .byte $09   ; 
- D 0 - I - 0x0159A3 05:9993: 6B        .byte $6B   ; 
- D 0 - I - 0x0159A4 05:9994: 03        .byte $03   ; 
- D 0 - I - 0x0159A5 05:9995: A7        .byte $A7   ; 
- D 0 - I - 0x0159A6 05:9996: 80        .byte $80   ; 
- D 0 - I - 0x0159A7 05:9997: 06        .byte $06   ; 
- D 0 - I - 0x0159A8 05:9998: 67        .byte $67   ; 
- D 0 - I - 0x0159A9 05:9999: A9        .byte $A9   ; 
- D 0 - I - 0x0159AA 05:999A: 80        .byte $80   ; 
- D 0 - I - 0x0159AB 05:999B: 09        .byte $09   ; 
- D 0 - I - 0x0159AC 05:999C: 69        .byte $69   ; 
- D 0 - I - 0x0159AD 05:999D: 03        .byte $03   ; 
- D 0 - I - 0x0159AE 05:999E: 66        .byte $66   ; 
- D 0 - I - 0x0159AF 05:999F: 62        .byte $62   ; 
- D 0 - I - 0x0159B0 05:99A0: 66        .byte $66   ; 
- D 0 - I - 0x0159B1 05:99A1: 69        .byte $69   ; 
- D 0 - I - 0x0159B2 05:99A2: 66        .byte $66   ; 
- D 0 - I - 0x0159B3 05:99A3: 5B        .byte $5B   ; 
- D 0 - I - 0x0159B4 05:99A4: 5F        .byte $5F   ; 
- D 0 - I - 0x0159B5 05:99A5: 62        .byte $62   ; 
- D 0 - I - 0x0159B6 05:99A6: 66        .byte $66   ; 
- D 0 - I - 0x0159B7 05:99A7: 0C        .byte $0C   ; 
- D 0 - I - 0x0159B8 05:99A8: 6B        .byte $6B   ; 
- D 0 - I - 0x0159B9 05:99A9: 09        .byte $09   ; 
- D 0 - I - 0x0159BA 05:99AA: 6E        .byte $6E   ; 
- D 0 - I - 0x0159BB 05:99AB: 03        .byte $03   ; 
- D 0 - I - 0x0159BC 05:99AC: 6E        .byte $6E   ; 
- D 0 - I - 0x0159BD 05:99AD: 06        .byte $06   ; 
- D 0 - I - 0x0159BE 05:99AE: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0159BF 05:99AF: AC        .byte $AC   ; 
- D 0 - I - 0x0159C0 05:99B0: 80        .byte $80   ; 
- D 0 - I - 0x0159C1 05:99B1: 12        .byte $12   ; 
- D 0 - I - 0x0159C2 05:99B2: 6C        .byte $6C   ; 
- D 0 - I - 0x0159C3 05:99B3: 06        .byte $06   ; 
- D 0 - I - 0x0159C4 05:99B4: AE        .byte $AE   ; 
- D 0 - I - 0x0159C5 05:99B5: 80        .byte $80   ; 
- D 0 - I - 0x0159C6 05:99B6: 09        .byte $09   ; 
- D 0 - I - 0x0159C7 05:99B7: 6E        .byte $6E   ; 
- D 0 - I - 0x0159C8 05:99B8: 03        .byte $03   ; 
- D 0 - I - 0x0159C9 05:99B9: 69        .byte $69   ; 
- D 0 - I - 0x0159CA 05:99BA: 66        .byte $66   ; 
- D 0 - I - 0x0159CB 05:99BB: 62        .byte $62   ; 
- D 0 - I - 0x0159CC 05:99BC: 66        .byte $66   ; 
- D 0 - I - 0x0159CD 05:99BD: 5D        .byte $5D   ; 
- D 0 - I - 0x0159CE 05:99BE: D0        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x0159CF 05:99BF: 9F 98     .word loc_D0_989F


; bzk garbage
- - - - - - 0x0159D1 05:99C1: D3        .byte con_se_cb_stop   ; 



off_ch_04_99C2_01:
- D 0 - I - 0x0159D2 05:99C2: D8        .byte con_se_cb_D8, $F4   ; 
- D 0 - I - 0x0159D4 05:99C4: CD        .byte con_se_cb_CD   ; 
- D 0 - I - 0x0159D5 05:99C5: BA 8A     .word ofs_CD_8ABA
- D 0 - I - 0x0159D7 05:99C7: DB        .byte con_se_cb_DB, $0E, $1E, $78   ; 
- D 0 - I - 0x0159DB 05:99CB: C4        .byte con_se_cb_C4, $21   ; 
- D 0 - I - 0x0159DD 05:99CD: C7        .byte con_se_cb_C7, $B4   ; 
- D 0 - I - 0x0159DF 05:99CF: 0C        .byte $0C   ; 
- D 0 - I - 0x0159E0 05:99D0: C9        .byte con_se_cb_C9   ; 
loc_D0_99D1:
- D 0 - I - 0x0159E1 05:99D1: 0C        .byte $0C   ; 
- D 0 - I - 0x0159E2 05:99D2: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0159E3 05:99D3: 06        .byte $06   ; 
- D 0 - I - 0x0159E4 05:99D4: 67        .byte $67   ; 
- D 0 - I - 0x0159E5 05:99D5: 09        .byte $09   ; 
- D 0 - I - 0x0159E6 05:99D6: 66        .byte $66   ; 
- D 0 - I - 0x0159E7 05:99D7: 03        .byte $03   ; 
- D 0 - I - 0x0159E8 05:99D8: 69        .byte $69   ; 
- D 0 - I - 0x0159E9 05:99D9: 06        .byte $06   ; 
- D 0 - I - 0x0159EA 05:99DA: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0159EB 05:99DB: 09        .byte $09   ; 
- D 0 - I - 0x0159EC 05:99DC: 67        .byte $67   ; 
- D 0 - I - 0x0159ED 05:99DD: 03        .byte $03   ; 
- D 0 - I - 0x0159EE 05:99DE: 64        .byte $64   ; 
- D 0 - I - 0x0159EF 05:99DF: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0159F0 05:99E0: 5B        .byte $5B   ; 
- D 0 - I - 0x0159F1 05:99E1: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0159F2 05:99E2: 5B        .byte $5B   ; 
- D 0 - I - 0x0159F3 05:99E3: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0159F4 05:99E4: 5B        .byte $5B   ; 
- D 0 - I - 0x0159F5 05:99E5: 58        .byte $58   ; 
- D 0 - I - 0x0159F6 05:99E6: 5B        .byte $5B   ; 
- D 0 - I - 0x0159F7 05:99E7: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x0159F8 05:99E8: 5B        .byte $5B   ; 
- D 0 - I - 0x0159F9 05:99E9: 58        .byte $58   ; 
- D 0 - I - 0x0159FA 05:99EA: 5B        .byte $5B   ; 
- D 0 - I - 0x0159FB 05:99EB: 09        .byte $09   ; 
- D 0 - I - 0x0159FC 05:99EC: 66        .byte $66   ; 
- D 0 - I - 0x0159FD 05:99ED: 03        .byte $03   ; 
- D 0 - I - 0x0159FE 05:99EE: 67        .byte $67   ; 
- D 0 - I - 0x0159FF 05:99EF: 06        .byte $06   ; 
- D 0 - I - 0x015A00 05:99F0: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015A01 05:99F1: 03        .byte $03   ; 
- D 0 - I - 0x015A02 05:99F2: 5B        .byte $5B   ; 
- D 0 - I - 0x015A03 05:99F3: 58        .byte $58   ; 
- D 0 - I - 0x015A04 05:99F4: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015A05 05:99F5: 5B        .byte $5B   ; 
- D 0 - I - 0x015A06 05:99F6: 58        .byte $58   ; 
- D 0 - I - 0x015A07 05:99F7: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015A08 05:99F8: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015A09 05:99F9: 5B        .byte $5B   ; 
- D 0 - I - 0x015A0A 05:99FA: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015A0B 05:99FB: 5B        .byte $5B   ; 
- D 0 - I - 0x015A0C 05:99FC: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015A0D 05:99FD: 5B        .byte $5B   ; 
- D 0 - I - 0x015A0E 05:99FE: 58        .byte $58   ; 
- D 0 - I - 0x015A0F 05:99FF: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015A10 05:9A00: 06        .byte $06   ; 
- D 0 - I - 0x015A11 05:9A01: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015A12 05:9A02: 03        .byte $03   ; 
- D 0 - I - 0x015A13 05:9A03: 58        .byte $58   ; 
- D 0 - I - 0x015A14 05:9A04: 58        .byte $58   ; 
- D 0 - I - 0x015A15 05:9A05: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015A16 05:9A06: 5B        .byte $5B   ; 
- D 0 - I - 0x015A17 05:9A07: 58        .byte $58   ; 
- D 0 - I - 0x015A18 05:9A08: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015A19 05:9A09: 5F        .byte $5F   ; 
- D 0 - I - 0x015A1A 05:9A0A: 64        .byte $64   ; 
- D 0 - I - 0x015A1B 05:9A0B: 06        .byte $06   ; 
- D 0 - I - 0x015A1C 05:9A0C: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015A1D 05:9A0D: 09        .byte $09   ; 
- D 0 - I - 0x015A1E 05:9A0E: 66        .byte $66   ; 
- D 0 - I - 0x015A1F 05:9A0F: 03        .byte $03   ; 
- D 0 - I - 0x015A20 05:9A10: 67        .byte $67   ; 
- D 0 - I - 0x015A21 05:9A11: 0C        .byte $0C   ; 
- D 0 - I - 0x015A22 05:9A12: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015A23 05:9A13: 06        .byte $06   ; 
- D 0 - I - 0x015A24 05:9A14: 67        .byte $67   ; 
- D 0 - I - 0x015A25 05:9A15: 09        .byte $09   ; 
- D 0 - I - 0x015A26 05:9A16: 66        .byte $66   ; 
- D 0 - I - 0x015A27 05:9A17: 03        .byte $03   ; 
- D 0 - I - 0x015A28 05:9A18: 69        .byte $69   ; 
- D 0 - I - 0x015A29 05:9A19: 06        .byte $06   ; 
- D 0 - I - 0x015A2A 05:9A1A: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015A2B 05:9A1B: 09        .byte $09   ; 
- D 0 - I - 0x015A2C 05:9A1C: 67        .byte $67   ; 
- D 0 - I - 0x015A2D 05:9A1D: 03        .byte $03   ; 
- D 0 - I - 0x015A2E 05:9A1E: 64        .byte $64   ; 
- D 0 - I - 0x015A2F 05:9A1F: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015A30 05:9A20: 5B        .byte $5B   ; 
- D 0 - I - 0x015A31 05:9A21: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015A32 05:9A22: 5B        .byte $5B   ; 
- D 0 - I - 0x015A33 05:9A23: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015A34 05:9A24: 5B        .byte $5B   ; 
- D 0 - I - 0x015A35 05:9A25: 58        .byte $58   ; 
- D 0 - I - 0x015A36 05:9A26: 5B        .byte $5B   ; 
- D 0 - I - 0x015A37 05:9A27: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015A38 05:9A28: 5B        .byte $5B   ; 
- D 0 - I - 0x015A39 05:9A29: 58        .byte $58   ; 
- D 0 - I - 0x015A3A 05:9A2A: 5B        .byte $5B   ; 
- D 0 - I - 0x015A3B 05:9A2B: 09        .byte $09   ; 
- D 0 - I - 0x015A3C 05:9A2C: 66        .byte $66   ; 
- D 0 - I - 0x015A3D 05:9A2D: 03        .byte $03   ; 
- D 0 - I - 0x015A3E 05:9A2E: 67        .byte $67   ; 
- D 0 - I - 0x015A3F 05:9A2F: 06        .byte $06   ; 
- D 0 - I - 0x015A40 05:9A30: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015A41 05:9A31: 03        .byte $03   ; 
- D 0 - I - 0x015A42 05:9A32: 5B        .byte $5B   ; 
- D 0 - I - 0x015A43 05:9A33: 58        .byte $58   ; 
- D 0 - I - 0x015A44 05:9A34: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015A45 05:9A35: 5B        .byte $5B   ; 
- D 0 - I - 0x015A46 05:9A36: 58        .byte $58   ; 
- D 0 - I - 0x015A47 05:9A37: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015A48 05:9A38: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015A49 05:9A39: 5B        .byte $5B   ; 
- D 0 - I - 0x015A4A 05:9A3A: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015A4B 05:9A3B: 5B        .byte $5B   ; 
- D 0 - I - 0x015A4C 05:9A3C: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015A4D 05:9A3D: 5B        .byte $5B   ; 
- D 0 - I - 0x015A4E 05:9A3E: 58        .byte $58   ; 
- D 0 - I - 0x015A4F 05:9A3F: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015A50 05:9A40: 06        .byte $06   ; 
- D 0 - I - 0x015A51 05:9A41: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015A52 05:9A42: 03        .byte $03   ; 
- D 0 - I - 0x015A53 05:9A43: 58        .byte $58   ; 
- D 0 - I - 0x015A54 05:9A44: 58        .byte $58   ; 
- D 0 - I - 0x015A55 05:9A45: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015A56 05:9A46: 5B        .byte $5B   ; 
- D 0 - I - 0x015A57 05:9A47: 58        .byte $58   ; 
- D 0 - I - 0x015A58 05:9A48: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015A59 05:9A49: 5F        .byte $5F   ; 
- D 0 - I - 0x015A5A 05:9A4A: 64        .byte $64   ; 
- D 0 - I - 0x015A5B 05:9A4B: 06        .byte $06   ; 
- D 0 - I - 0x015A5C 05:9A4C: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015A5D 05:9A4D: 09        .byte $09   ; 
- D 0 - I - 0x015A5E 05:9A4E: 66        .byte $66   ; 
- D 0 - I - 0x015A5F 05:9A4F: 03        .byte $03   ; 
- D 0 - I - 0x015A60 05:9A50: 67        .byte $67   ; 
- D 0 - I - 0x015A61 05:9A51: 0C        .byte $0C   ; 
- D 0 - I - 0x015A62 05:9A52: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015A63 05:9A53: 06        .byte $06   ; 
- D 0 - I - 0x015A64 05:9A54: 67        .byte $67   ; 
- D 0 - I - 0x015A65 05:9A55: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015A66 05:9A56: 66        .byte $66   ; 
- D 0 - I - 0x015A67 05:9A57: 03        .byte $03   ; 
- D 0 - I - 0x015A68 05:9A58: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015A69 05:9A59: 64        .byte $64   ; 
- D 0 - I - 0x015A6A 05:9A5A: 06        .byte $06   ; 
- D 0 - I - 0x015A6B 05:9A5B: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015A6C 05:9A5C: A2        .byte $A2   ; 
- D 0 - I - 0x015A6D 05:9A5D: 80        .byte $80   ; 
- D 0 - I - 0x015A6E 05:9A5E: 62        .byte $62   ; 
- D 0 - I - 0x015A6F 05:9A5F: 5F        .byte $5F   ; 
- D 0 - I - 0x015A70 05:9A60: 03        .byte $03   ; 
- D 0 - I - 0x015A71 05:9A61: 5A        .byte $5A   ; 
- D 0 - I - 0x015A72 05:9A62: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015A73 05:9A63: 56        .byte $56   ; 
- D 0 - I - 0x015A74 05:9A64: 5A        .byte $5A   ; 
- D 0 - I - 0x015A75 05:9A65: 5A        .byte $5A   ; 
- D 0 - I - 0x015A76 05:9A66: 5A        .byte $5A   ; 
- D 0 - I - 0x015A77 05:9A67: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015A78 05:9A68: 5A        .byte $5A   ; 
- D 0 - I - 0x015A79 05:9A69: 5A        .byte $5A   ; 
- D 0 - I - 0x015A7A 05:9A6A: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015A7B 05:9A6B: 56        .byte $56   ; 
- D 0 - I - 0x015A7C 05:9A6C: 5A        .byte $5A   ; 
- D 0 - I - 0x015A7D 05:9A6D: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015A7E 05:9A6E: 5B        .byte $5B   ; 
- D 0 - I - 0x015A7F 05:9A6F: 5B        .byte $5B   ; 
- D 0 - I - 0x015A80 05:9A70: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015A81 05:9A71: 06        .byte $06   ; 
- D 0 - I - 0x015A82 05:9A72: 67        .byte $67   ; 
- D 0 - I - 0x015A83 05:9A73: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015A84 05:9A74: 66        .byte $66   ; 
- D 0 - I - 0x015A85 05:9A75: 03        .byte $03   ; 
- D 0 - I - 0x015A86 05:9A76: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015A87 05:9A77: 6B        .byte $6B   ; 
- D 0 - I - 0x015A88 05:9A78: 06        .byte $06   ; 
- D 0 - I - 0x015A89 05:9A79: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015A8A 05:9A7A: A9        .byte $A9   ; 
- D 0 - I - 0x015A8B 05:9A7B: 80        .byte $80   ; 
- D 0 - I - 0x015A8C 05:9A7C: 12        .byte $12   ; 
- D 0 - I - 0x015A8D 05:9A7D: 69        .byte $69   ; 
- D 0 - I - 0x015A8E 05:9A7E: 06        .byte $06   ; 
- D 0 - I - 0x015A8F 05:9A7F: A6        .byte $A6   ; 
- D 0 - I - 0x015A90 05:9A80: 80        .byte $80   ; 
- D 0 - I - 0x015A91 05:9A81: 0C        .byte $0C   ; 
- D 0 - I - 0x015A92 05:9A82: 66        .byte $66   ; 
- D 0 - I - 0x015A93 05:9A83: 03        .byte $03   ; 
- D 0 - I - 0x015A94 05:9A84: 6B        .byte $6B   ; 
- D 0 - I - 0x015A95 05:9A85: 6E        .byte $6E   ; 
- D 0 - I - 0x015A96 05:9A86: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015A97 05:9A87: 70        .byte $70   ; 
- D 0 - I - 0x015A98 05:9A88: 58        .byte $58   ; 
- D 0 - I - 0x015A99 05:9A89: 5B        .byte $5B   ; 
- D 0 - I - 0x015A9A 05:9A8A: 5F        .byte $5F   ; 
- D 0 - I - 0x015A9B 05:9A8B: 62        .byte $62   ; 
- D 0 - I - 0x015A9C 05:9A8C: 0C        .byte $0C   ; 
- D 0 - I - 0x015A9D 05:9A8D: 67        .byte $67   ; 
- D 0 - I - 0x015A9E 05:9A8E: 66        .byte $66   ; 
- D 0 - I - 0x015A9F 05:9A8F: 67        .byte $67   ; 
- D 0 - I - 0x015AA0 05:9A90: 09        .byte $09   ; 
- D 0 - I - 0x015AA1 05:9A91: 67        .byte $67   ; 
- D 0 - I - 0x015AA2 05:9A92: 03        .byte $03   ; 
- D 0 - I - 0x015AA3 05:9A93: A4        .byte $A4   ; 
- D 0 - I - 0x015AA4 05:9A94: 80        .byte $80   ; 
- D 0 - I - 0x015AA5 05:9A95: 06        .byte $06   ; 
- D 0 - I - 0x015AA6 05:9A96: 64        .byte $64   ; 
- D 0 - I - 0x015AA7 05:9A97: A6        .byte $A6   ; 
- D 0 - I - 0x015AA8 05:9A98: 80        .byte $80   ; 
- D 0 - I - 0x015AA9 05:9A99: 09        .byte $09   ; 
- D 0 - I - 0x015AAA 05:9A9A: 66        .byte $66   ; 
- D 0 - I - 0x015AAB 05:9A9B: 03        .byte $03   ; 
- D 0 - I - 0x015AAC 05:9A9C: 62        .byte $62   ; 
- D 0 - I - 0x015AAD 05:9A9D: 5D        .byte $5D   ; 
- D 0 - I - 0x015AAE 05:9A9E: 62        .byte $62   ; 
- D 0 - I - 0x015AAF 05:9A9F: 66        .byte $66   ; 
- D 0 - I - 0x015AB0 05:9AA0: 62        .byte $62   ; 
- D 0 - I - 0x015AB1 05:9AA1: 58        .byte $58   ; 
- D 0 - I - 0x015AB2 05:9AA2: 5B        .byte $5B   ; 
- D 0 - I - 0x015AB3 05:9AA3: 5F        .byte $5F   ; 
- D 0 - I - 0x015AB4 05:9AA4: 62        .byte $62   ; 
- D 0 - I - 0x015AB5 05:9AA5: 0C        .byte $0C   ; 
- D 0 - I - 0x015AB6 05:9AA6: 67        .byte $67   ; 
- D 0 - I - 0x015AB7 05:9AA7: 09        .byte $09   ; 
- D 0 - I - 0x015AB8 05:9AA8: 69        .byte $69   ; 
- D 0 - I - 0x015AB9 05:9AA9: 03        .byte $03   ; 
- D 0 - I - 0x015ABA 05:9AAA: 69        .byte $69   ; 
- D 0 - I - 0x015ABB 05:9AAB: 06        .byte $06   ; 
- D 0 - I - 0x015ABC 05:9AAC: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015ABD 05:9AAD: A7        .byte $A7   ; 
- D 0 - I - 0x015ABE 05:9AAE: 80        .byte $80   ; 
- D 0 - I - 0x015ABF 05:9AAF: 12        .byte $12   ; 
- D 0 - I - 0x015AC0 05:9AB0: 67        .byte $67   ; 
- D 0 - I - 0x015AC1 05:9AB1: 06        .byte $06   ; 
- D 0 - I - 0x015AC2 05:9AB2: A9        .byte $A9   ; 
- D 0 - I - 0x015AC3 05:9AB3: 80        .byte $80   ; 
- D 0 - I - 0x015AC4 05:9AB4: 09        .byte $09   ; 
- D 0 - I - 0x015AC5 05:9AB5: 69        .byte $69   ; 
- D 0 - I - 0x015AC6 05:9AB6: 03        .byte $03   ; 
- D 0 - I - 0x015AC7 05:9AB7: 66        .byte $66   ; 
- D 0 - I - 0x015AC8 05:9AB8: 62        .byte $62   ; 
- D 0 - I - 0x015AC9 05:9AB9: 5D        .byte $5D   ; 
- D 0 - I - 0x015ACA 05:9ABA: 62        .byte $62   ; 
- D 0 - I - 0x015ACB 05:9ABB: 5A        .byte $5A   ; 
- D 0 - I - 0x015ACC 05:9ABC: 58        .byte $58   ; 
- D 0 - I - 0x015ACD 05:9ABD: 5B        .byte $5B   ; 
- D 0 - I - 0x015ACE 05:9ABE: 5F        .byte $5F   ; 
- D 0 - I - 0x015ACF 05:9ABF: 62        .byte $62   ; 
- D 0 - I - 0x015AD0 05:9AC0: 0C        .byte $0C   ; 
- D 0 - I - 0x015AD1 05:9AC1: 67        .byte $67   ; 
- D 0 - I - 0x015AD2 05:9AC2: 66        .byte $66   ; 
- D 0 - I - 0x015AD3 05:9AC3: 67        .byte $67   ; 
- D 0 - I - 0x015AD4 05:9AC4: 09        .byte $09   ; 
- D 0 - I - 0x015AD5 05:9AC5: 67        .byte $67   ; 
- D 0 - I - 0x015AD6 05:9AC6: 03        .byte $03   ; 
- D 0 - I - 0x015AD7 05:9AC7: A4        .byte $A4   ; 
- D 0 - I - 0x015AD8 05:9AC8: 80        .byte $80   ; 
- D 0 - I - 0x015AD9 05:9AC9: 06        .byte $06   ; 
- D 0 - I - 0x015ADA 05:9ACA: 64        .byte $64   ; 
- D 0 - I - 0x015ADB 05:9ACB: A6        .byte $A6   ; 
- D 0 - I - 0x015ADC 05:9ACC: 80        .byte $80   ; 
- D 0 - I - 0x015ADD 05:9ACD: 09        .byte $09   ; 
- D 0 - I - 0x015ADE 05:9ACE: 66        .byte $66   ; 
- D 0 - I - 0x015ADF 05:9ACF: 03        .byte $03   ; 
- D 0 - I - 0x015AE0 05:9AD0: 62        .byte $62   ; 
- D 0 - I - 0x015AE1 05:9AD1: 5D        .byte $5D   ; 
- D 0 - I - 0x015AE2 05:9AD2: 62        .byte $62   ; 
- D 0 - I - 0x015AE3 05:9AD3: 66        .byte $66   ; 
- D 0 - I - 0x015AE4 05:9AD4: 62        .byte $62   ; 
- D 0 - I - 0x015AE5 05:9AD5: 58        .byte $58   ; 
- D 0 - I - 0x015AE6 05:9AD6: 5B        .byte $5B   ; 
- D 0 - I - 0x015AE7 05:9AD7: 5F        .byte $5F   ; 
- D 0 - I - 0x015AE8 05:9AD8: 62        .byte $62   ; 
- D 0 - I - 0x015AE9 05:9AD9: 0C        .byte $0C   ; 
- D 0 - I - 0x015AEA 05:9ADA: 67        .byte $67   ; 
- D 0 - I - 0x015AEB 05:9ADB: 09        .byte $09   ; 
- D 0 - I - 0x015AEC 05:9ADC: 69        .byte $69   ; 
- D 0 - I - 0x015AED 05:9ADD: 03        .byte $03   ; 
- D 0 - I - 0x015AEE 05:9ADE: 69        .byte $69   ; 
- D 0 - I - 0x015AEF 05:9ADF: 06        .byte $06   ; 
- D 0 - I - 0x015AF0 05:9AE0: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015AF1 05:9AE1: A7        .byte $A7   ; 
- D 0 - I - 0x015AF2 05:9AE2: 80        .byte $80   ; 
- D 0 - I - 0x015AF3 05:9AE3: 12        .byte $12   ; 
- D 0 - I - 0x015AF4 05:9AE4: 67        .byte $67   ; 
- D 0 - I - 0x015AF5 05:9AE5: 06        .byte $06   ; 
- D 0 - I - 0x015AF6 05:9AE6: A9        .byte $A9   ; 
- D 0 - I - 0x015AF7 05:9AE7: 80        .byte $80   ; 
- D 0 - I - 0x015AF8 05:9AE8: 09        .byte $09   ; 
- D 0 - I - 0x015AF9 05:9AE9: 69        .byte $69   ; 
- D 0 - I - 0x015AFA 05:9AEA: 03        .byte $03   ; 
- D 0 - I - 0x015AFB 05:9AEB: 66        .byte $66   ; 
- D 0 - I - 0x015AFC 05:9AEC: 62        .byte $62   ; 
- D 0 - I - 0x015AFD 05:9AED: 5D        .byte $5D   ; 
- D 0 - I - 0x015AFE 05:9AEE: 62        .byte $62   ; 
- D 0 - I - 0x015AFF 05:9AEF: 5A        .byte $5A   ; 
- D 0 - I - 0x015B00 05:9AF0: D0        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x015B01 05:9AF1: D1 99     .word loc_D0_99D1


; bzk garbage
- - - - - - 0x015B03 05:9AF3: D3        .byte con_se_cb_stop   ; 



off_ch_04_9AF4_02:
- D 0 - I - 0x015B04 05:9AF4: D8        .byte con_se_cb_D8, $0C   ; 
- D 0 - I - 0x015B06 05:9AF6: C7        .byte con_se_cb_C7, $8C   ; 
- D 0 - I - 0x015B08 05:9AF8: 03        .byte $03   ; 
- D 0 - I - 0x015B09 05:9AF9: 4A        .byte $4A   ; 
- D 0 - I - 0x015B0A 05:9AFA: 4A        .byte $4A   ; 
- D 0 - I - 0x015B0B 05:9AFB: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015B0C 05:9AFC: 8C        .byte $8C   ; 
- D 0 - I - 0x015B0D 05:9AFD: 80        .byte $80   ; 
loc_D0_9AFE:
off_CE_9AFE:
- D 0 - I - 0x015B0E 05:9AFE: 06        .byte $06   ; 
- D 0 - I - 0x015B0F 05:9AFF: 4C        .byte $4C   ; 
- D 0 - I - 0x015B10 05:9B00: 4C        .byte $4C   ; 
- D 0 - I - 0x015B11 05:9B01: 4F        .byte $4F   ; 
- D 0 - I - 0x015B12 05:9B02: 4F        .byte $4F   ; 
- D 0 - I - 0x015B13 05:9B03: 51        .byte $51   ; 
- D 0 - I - 0x015B14 05:9B04: 51        .byte $51   ; 
- D 0 - I - 0x015B15 05:9B05: 03        .byte $03   ; 
- D 0 - I - 0x015B16 05:9B06: 54        .byte $54   ; 
- D 0 - I - 0x015B17 05:9B07: 54        .byte $54   ; 
- D 0 - I - 0x015B18 05:9B08: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015B19 05:9B09: 93        .byte $93   ; 
- D 0 - I - 0x015B1A 05:9B0A: 80        .byte $80   ; 
- D 0 - I - 0x015B1B 05:9B0B: 06        .byte $06   ; 
- D 0 - I - 0x015B1C 05:9B0C: 53        .byte $53   ; 
- D 0 - I - 0x015B1D 05:9B0D: 4F        .byte $4F   ; 
- D 0 - I - 0x015B1E 05:9B0E: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015B1F 05:9B0F: 4F        .byte $4F   ; 
- D 0 - I - 0x015B20 05:9B10: 03        .byte $03   ; 
- D 0 - I - 0x015B21 05:9B11: 4C        .byte $4C   ; 
- D 0 - I - 0x015B22 05:9B12: 4F        .byte $4F   ; 
- D 0 - I - 0x015B23 05:9B13: 06        .byte $06   ; 
- D 0 - I - 0x015B24 05:9B14: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015B25 05:9B15: 03        .byte $03   ; 
- D 0 - I - 0x015B26 05:9B16: 4A        .byte $4A   ; 
- D 0 - I - 0x015B27 05:9B17: 4A        .byte $4A   ; 
- D 0 - I - 0x015B28 05:9B18: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015B29 05:9B19: 8C        .byte $8C   ; 
- D 0 - I - 0x015B2A 05:9B1A: 80        .byte $80   ; 
- D 0 - I - 0x015B2B 05:9B1B: CE        .byte con_se_cb_loop_1, $04   ; 
- D 0 - I - 0x015B2D 05:9B1D: FE 9A     .word off_CE_9AFE
- D 0 - I - 0x015B2F 05:9B1F: 06        .byte $06   ; 
- D 0 - I - 0x015B30 05:9B20: 48        .byte $48   ; 
- D 0 - I - 0x015B31 05:9B21: 03        .byte $03   ; 
- D 0 - I - 0x015B32 05:9B22: 48        .byte $48   ; 
- D 0 - I - 0x015B33 05:9B23: 48        .byte $48   ; 
- D 0 - I - 0x015B34 05:9B24: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015B35 05:9B25: 87        .byte $87   ; 
- D 0 - I - 0x015B36 05:9B26: 80        .byte $80   ; 
- D 0 - I - 0x015B37 05:9B27: 47        .byte $47   ; 
- D 0 - I - 0x015B38 05:9B28: 48        .byte $48   ; 
- D 0 - I - 0x015B39 05:9B29: 0C        .byte $0C   ; 
- D 0 - I - 0x015B3A 05:9B2A: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015B3B 05:9B2B: 06        .byte $06   ; 
- D 0 - I - 0x015B3C 05:9B2C: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015B3D 05:9B2D: 03        .byte $03   ; 
- D 0 - I - 0x015B3E 05:9B2E: 53        .byte $53   ; 
- D 0 - I - 0x015B3F 05:9B2F: 54        .byte $54   ; 
- D 0 - I - 0x015B40 05:9B30: 06        .byte $06   ; 
- D 0 - I - 0x015B41 05:9B31: 47        .byte $47   ; 
- D 0 - I - 0x015B42 05:9B32: 03        .byte $03   ; 
- D 0 - I - 0x015B43 05:9B33: 47        .byte $47   ; 
- D 0 - I - 0x015B44 05:9B34: 47        .byte $47   ; 
- D 0 - I - 0x015B45 05:9B35: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015B46 05:9B36: 8A        .byte $8A   ; 
- D 0 - I - 0x015B47 05:9B37: 80        .byte $80   ; 
- D 0 - I - 0x015B48 05:9B38: 4A        .byte $4A   ; 
- D 0 - I - 0x015B49 05:9B39: 47        .byte $47   ; 
- D 0 - I - 0x015B4A 05:9B3A: 0C        .byte $0C   ; 
- D 0 - I - 0x015B4B 05:9B3B: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015B4C 05:9B3C: 03        .byte $03   ; 
- D 0 - I - 0x015B4D 05:9B3D: 53        .byte $53   ; 
- D 0 - I - 0x015B4E 05:9B3E: 52        .byte $52   ; 
- D 0 - I - 0x015B4F 05:9B3F: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015B50 05:9B40: 91        .byte $91   ; 
- D 0 - I - 0x015B51 05:9B41: 80        .byte $80   ; 
- D 0 - I - 0x015B52 05:9B42: 06        .byte $06   ; 
- D 0 - I - 0x015B53 05:9B43: 51        .byte $51   ; 
- D 0 - I - 0x015B54 05:9B44: 03        .byte $03   ; 
- D 0 - I - 0x015B55 05:9B45: 51        .byte $51   ; 
- D 0 - I - 0x015B56 05:9B46: 51        .byte $51   ; 
- D 0 - I - 0x015B57 05:9B47: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015B58 05:9B48: 8F        .byte $8F   ; 
- D 0 - I - 0x015B59 05:9B49: 80        .byte $80   ; 
- D 0 - I - 0x015B5A 05:9B4A: 4F        .byte $4F   ; 
- D 0 - I - 0x015B5B 05:9B4B: 51        .byte $51   ; 
- D 0 - I - 0x015B5C 05:9B4C: 0C        .byte $0C   ; 
- D 0 - I - 0x015B5D 05:9B4D: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015B5E 05:9B4E: 06        .byte $06   ; 
- D 0 - I - 0x015B5F 05:9B4F: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015B60 05:9B50: 03        .byte $03   ; 
- D 0 - I - 0x015B61 05:9B51: 5D        .byte $5D   ; 
- D 0 - I - 0x015B62 05:9B52: 5F        .byte $5F   ; 
- D 0 - I - 0x015B63 05:9B53: 06        .byte $06   ; 
- D 0 - I - 0x015B64 05:9B54: 47        .byte $47   ; 
- D 0 - I - 0x015B65 05:9B55: 03        .byte $03   ; 
- D 0 - I - 0x015B66 05:9B56: 47        .byte $47   ; 
- D 0 - I - 0x015B67 05:9B57: 47        .byte $47   ; 
- D 0 - I - 0x015B68 05:9B58: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015B69 05:9B59: 87        .byte $87   ; 
- D 0 - I - 0x015B6A 05:9B5A: 80        .byte $80   ; 
- D 0 - I - 0x015B6B 05:9B5B: 47        .byte $47   ; 
- D 0 - I - 0x015B6C 05:9B5C: 47        .byte $47   ; 
- D 0 - I - 0x015B6D 05:9B5D: 0C        .byte $0C   ; 
- D 0 - I - 0x015B6E 05:9B5E: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015B6F 05:9B5F: 06        .byte $06   ; 
- D 0 - I - 0x015B70 05:9B60: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015B71 05:9B61: 03        .byte $03   ; 
- D 0 - I - 0x015B72 05:9B62: 51        .byte $51   ; 
- D 0 - I - 0x015B73 05:9B63: 53        .byte $53   ; 
- D 0 - I - 0x015B74 05:9B64: 4C        .byte $4C   ; 
- D 0 - I - 0x015B75 05:9B65: 4C        .byte $4C   ; 
- D 0 - I - 0x015B76 05:9B66: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015B77 05:9B67: 4C        .byte $4C   ; 
- D 0 - I - 0x015B78 05:9B68: 0C        .byte $0C   ; 
- D 0 - I - 0x015B79 05:9B69: 4C        .byte $4C   ; 
- D 0 - I - 0x015B7A 05:9B6A: 4A        .byte $4A   ; 
- D 0 - I - 0x015B7B 05:9B6B: 03        .byte $03   ; 
- D 0 - I - 0x015B7C 05:9B6C: 48        .byte $48   ; 
- D 0 - I - 0x015B7D 05:9B6D: 48        .byte $48   ; 
- D 0 - I - 0x015B7E 05:9B6E: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015B7F 05:9B6F: 48        .byte $48   ; 
- D 0 - I - 0x015B80 05:9B70: 09        .byte $09   ; 
- D 0 - I - 0x015B81 05:9B71: 53        .byte $53   ; 
- D 0 - I - 0x015B82 05:9B72: 03        .byte $03   ; 
- D 0 - I - 0x015B83 05:9B73: 53        .byte $53   ; 
- D 0 - I - 0x015B84 05:9B74: 06        .byte $06   ; 
- D 0 - I - 0x015B85 05:9B75: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015B86 05:9B76: 8C        .byte $8C   ; 
- D 0 - I - 0x015B87 05:9B77: 80        .byte $80   ; 
- D 0 - I - 0x015B88 05:9B78: 4C        .byte $4C   ; 
- D 0 - I - 0x015B89 05:9B79: 03        .byte $03   ; 
- D 0 - I - 0x015B8A 05:9B7A: 58        .byte $58   ; 
- D 0 - I - 0x015B8B 05:9B7B: 58        .byte $58   ; 
- D 0 - I - 0x015B8C 05:9B7C: 0C        .byte $0C   ; 
- D 0 - I - 0x015B8D 05:9B7D: 4A        .byte $4A   ; 
- D 0 - I - 0x015B8E 05:9B7E: 03        .byte $03   ; 
- D 0 - I - 0x015B8F 05:9B7F: 4C        .byte $4C   ; 
- D 0 - I - 0x015B90 05:9B80: 4C        .byte $4C   ; 
- D 0 - I - 0x015B91 05:9B81: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015B92 05:9B82: 4C        .byte $4C   ; 
- D 0 - I - 0x015B93 05:9B83: 0C        .byte $0C   ; 
- D 0 - I - 0x015B94 05:9B84: 4C        .byte $4C   ; 
- D 0 - I - 0x015B95 05:9B85: 09        .byte $09   ; 
- D 0 - I - 0x015B96 05:9B86: 4A        .byte $4A   ; 
- D 0 - I - 0x015B97 05:9B87: 03        .byte $03   ; 
- D 0 - I - 0x015B98 05:9B88: 4A        .byte $4A   ; 
- D 0 - I - 0x015B99 05:9B89: 06        .byte $06   ; 
- D 0 - I - 0x015B9A 05:9B8A: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015B9B 05:9B8B: 88        .byte $88   ; 
- D 0 - I - 0x015B9C 05:9B8C: 80        .byte $80   ; 
- D 0 - I - 0x015B9D 05:9B8D: 0C        .byte $0C   ; 
- D 0 - I - 0x015B9E 05:9B8E: 48        .byte $48   ; 
- D 0 - I - 0x015B9F 05:9B8F: 03        .byte $03   ; 
- D 0 - I - 0x015BA0 05:9B90: 48        .byte $48   ; 
- D 0 - I - 0x015BA1 05:9B91: 48        .byte $48   ; 
- D 0 - I - 0x015BA2 05:9B92: 06        .byte $06   ; 
- D 0 - I - 0x015BA3 05:9B93: 8A        .byte $8A   ; 
- D 0 - I - 0x015BA4 05:9B94: 80        .byte $80   ; 
- D 0 - I - 0x015BA5 05:9B95: 4A        .byte $4A   ; 
- D 0 - I - 0x015BA6 05:9B96: 03        .byte $03   ; 
- D 0 - I - 0x015BA7 05:9B97: 4A        .byte $4A   ; 
- D 0 - I - 0x015BA8 05:9B98: 4A        .byte $4A   ; 
- D 0 - I - 0x015BA9 05:9B99: 4A        .byte $4A   ; 
- D 0 - I - 0x015BAA 05:9B9A: 4A        .byte $4A   ; 
- D 0 - I - 0x015BAB 05:9B9B: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015BAC 05:9B9C: 4A        .byte $4A   ; 
- D 0 - I - 0x015BAD 05:9B9D: 4C        .byte $4C   ; 
- D 0 - I - 0x015BAE 05:9B9E: 4C        .byte $4C   ; 
- D 0 - I - 0x015BAF 05:9B9F: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015BB0 05:9BA0: 4C        .byte $4C   ; 
- D 0 - I - 0x015BB1 05:9BA1: 0C        .byte $0C   ; 
- D 0 - I - 0x015BB2 05:9BA2: 4C        .byte $4C   ; 
- D 0 - I - 0x015BB3 05:9BA3: 4A        .byte $4A   ; 
- D 0 - I - 0x015BB4 05:9BA4: 03        .byte $03   ; 
- D 0 - I - 0x015BB5 05:9BA5: 48        .byte $48   ; 
- D 0 - I - 0x015BB6 05:9BA6: 48        .byte $48   ; 
- D 0 - I - 0x015BB7 05:9BA7: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015BB8 05:9BA8: 48        .byte $48   ; 
- D 0 - I - 0x015BB9 05:9BA9: 09        .byte $09   ; 
- D 0 - I - 0x015BBA 05:9BAA: 53        .byte $53   ; 
- D 0 - I - 0x015BBB 05:9BAB: 03        .byte $03   ; 
- D 0 - I - 0x015BBC 05:9BAC: 53        .byte $53   ; 
- D 0 - I - 0x015BBD 05:9BAD: 06        .byte $06   ; 
- D 0 - I - 0x015BBE 05:9BAE: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015BBF 05:9BAF: 8C        .byte $8C   ; 
- D 0 - I - 0x015BC0 05:9BB0: 80        .byte $80   ; 
- D 0 - I - 0x015BC1 05:9BB1: 4C        .byte $4C   ; 
- D 0 - I - 0x015BC2 05:9BB2: 03        .byte $03   ; 
- D 0 - I - 0x015BC3 05:9BB3: 58        .byte $58   ; 
- D 0 - I - 0x015BC4 05:9BB4: 58        .byte $58   ; 
- D 0 - I - 0x015BC5 05:9BB5: 0C        .byte $0C   ; 
- D 0 - I - 0x015BC6 05:9BB6: 4A        .byte $4A   ; 
- D 0 - I - 0x015BC7 05:9BB7: 03        .byte $03   ; 
- D 0 - I - 0x015BC8 05:9BB8: 4C        .byte $4C   ; 
- D 0 - I - 0x015BC9 05:9BB9: 4C        .byte $4C   ; 
- D 0 - I - 0x015BCA 05:9BBA: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015BCB 05:9BBB: 4C        .byte $4C   ; 
- D 0 - I - 0x015BCC 05:9BBC: 0C        .byte $0C   ; 
- D 0 - I - 0x015BCD 05:9BBD: 4C        .byte $4C   ; 
- D 0 - I - 0x015BCE 05:9BBE: 09        .byte $09   ; 
- D 0 - I - 0x015BCF 05:9BBF: 4A        .byte $4A   ; 
- D 0 - I - 0x015BD0 05:9BC0: 03        .byte $03   ; 
- D 0 - I - 0x015BD1 05:9BC1: 4A        .byte $4A   ; 
- D 0 - I - 0x015BD2 05:9BC2: 06        .byte $06   ; 
- D 0 - I - 0x015BD3 05:9BC3: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015BD4 05:9BC4: 88        .byte $88   ; 
- D 0 - I - 0x015BD5 05:9BC5: 80        .byte $80   ; 
- D 0 - I - 0x015BD6 05:9BC6: 0C        .byte $0C   ; 
- D 0 - I - 0x015BD7 05:9BC7: 48        .byte $48   ; 
- D 0 - I - 0x015BD8 05:9BC8: 03        .byte $03   ; 
- D 0 - I - 0x015BD9 05:9BC9: 48        .byte $48   ; 
- D 0 - I - 0x015BDA 05:9BCA: 48        .byte $48   ; 
- D 0 - I - 0x015BDB 05:9BCB: 06        .byte $06   ; 
- D 0 - I - 0x015BDC 05:9BCC: 8A        .byte $8A   ; 
- D 0 - I - 0x015BDD 05:9BCD: 80        .byte $80   ; 
- D 0 - I - 0x015BDE 05:9BCE: 4A        .byte $4A   ; 
- D 0 - I - 0x015BDF 05:9BCF: 03        .byte $03   ; 
- D 0 - I - 0x015BE0 05:9BD0: 4A        .byte $4A   ; 
- D 0 - I - 0x015BE1 05:9BD1: 4A        .byte $4A   ; 
- D 0 - I - 0x015BE2 05:9BD2: 4A        .byte $4A   ; 
- D 0 - I - 0x015BE3 05:9BD3: 4A        .byte $4A   ; 
- D 0 - I - 0x015BE4 05:9BD4: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015BE5 05:9BD5: 4A        .byte $4A   ; 
- D 0 - I - 0x015BE6 05:9BD6: D0        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x015BE7 05:9BD7: FE 9A     .word loc_D0_9AFE


; bzk garbage
- - - - - - 0x015BE9 05:9BD9: D3        .byte con_se_cb_stop   ; 



off_ch_04_9BDA_03:
- D 0 - I - 0x015BEA 05:9BDA: CD        .byte con_se_cb_CD   ; 
- D 0 - I - 0x015BEB 05:9BDB: F3 8B     .word ofs_CD_8BF3
- D 0 - I - 0x015BED 05:9BDD: C4        .byte con_se_cb_C4, $23   ; 
- D 0 - I - 0x015BEF 05:9BDF: 03        .byte $03   ; 
- D 0 - I - 0x015BF0 05:9BE0: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015BF1 05:9BE1: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015BF2 05:9BE2: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015BF3 05:9BE3: 83        .byte $83   ; 
- D 0 - I - 0x015BF4 05:9BE4: 80        .byte $80   ; 
loc_D0_9BE5:
- D 0 - I - 0x015BF5 05:9BE5: 06        .byte $06   ; 
- D 0 - I - 0x015BF6 05:9BE6: 43        .byte $43   ; 
- D 0 - I - 0x015BF7 05:9BE7: 41        .byte $41   ; 
- D 0 - I - 0x015BF8 05:9BE8: 42        .byte $42   ; 
- D 0 - I - 0x015BF9 05:9BE9: 41        .byte $41   ; 
- D 0 - I - 0x015BFA 05:9BEA: 41        .byte $41   ; 
- D 0 - I - 0x015BFB 05:9BEB: 41        .byte $41   ; 
- D 0 - I - 0x015BFC 05:9BEC: 42        .byte $42   ; 
- D 0 - I - 0x015BFD 05:9BED: 03        .byte $03   ; 
- D 0 - I - 0x015BFE 05:9BEE: 41        .byte $41   ; 
- D 0 - I - 0x015BFF 05:9BEF: 83        .byte $83   ; 
- D 0 - I - 0x015C00 05:9BF0: 80        .byte $80   ; 
- D 0 - I - 0x015C01 05:9BF1: 06        .byte $06   ; 
- D 0 - I - 0x015C02 05:9BF2: 43        .byte $43   ; 
- D 0 - I - 0x015C03 05:9BF3: 41        .byte $41   ; 
- D 0 - I - 0x015C04 05:9BF4: 42        .byte $42   ; 
- D 0 - I - 0x015C05 05:9BF5: 41        .byte $41   ; 
- D 0 - I - 0x015C06 05:9BF6: 41        .byte $41   ; 
- D 0 - I - 0x015C07 05:9BF7: 41        .byte $41   ; 
- D 0 - I - 0x015C08 05:9BF8: 42        .byte $42   ; 
- D 0 - I - 0x015C09 05:9BF9: 03        .byte $03   ; 
- D 0 - I - 0x015C0A 05:9BFA: 41        .byte $41   ; 
- D 0 - I - 0x015C0B 05:9BFB: 83        .byte $83   ; 
- D 0 - I - 0x015C0C 05:9BFC: 80        .byte $80   ; 
- D 0 - I - 0x015C0D 05:9BFD: 06        .byte $06   ; 
- D 0 - I - 0x015C0E 05:9BFE: 43        .byte $43   ; 
- D 0 - I - 0x015C0F 05:9BFF: 41        .byte $41   ; 
- D 0 - I - 0x015C10 05:9C00: 42        .byte $42   ; 
- D 0 - I - 0x015C11 05:9C01: 41        .byte $41   ; 
- D 0 - I - 0x015C12 05:9C02: 41        .byte $41   ; 
- D 0 - I - 0x015C13 05:9C03: 41        .byte $41   ; 
- D 0 - I - 0x015C14 05:9C04: 42        .byte $42   ; 
- D 0 - I - 0x015C15 05:9C05: 41        .byte $41   ; 
- D 0 - I - 0x015C16 05:9C06: 41        .byte $41   ; 
- D 0 - I - 0x015C17 05:9C07: 41        .byte $41   ; 
- D 0 - I - 0x015C18 05:9C08: 42        .byte $42   ; 
- D 0 - I - 0x015C19 05:9C09: 41        .byte $41   ; 
- D 0 - I - 0x015C1A 05:9C0A: 41        .byte $41   ; 
- D 0 - I - 0x015C1B 05:9C0B: 41        .byte $41   ; 
- D 0 - I - 0x015C1C 05:9C0C: 42        .byte $42   ; 
- D 0 - I - 0x015C1D 05:9C0D: 41        .byte $41   ; 
- D 0 - I - 0x015C1E 05:9C0E: D0        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x015C1F 05:9C0F: E5 9B     .word loc_D0_9BE5


; bzk garbage
- - - - - - 0x015C21 05:9C11: D3        .byte con_se_cb_stop   ; 



_off013_9C12_05_mission_8:
- D 0 - I - 0x015C22 05:9C12: FF        .byte $FF   ; 
- D 0 - I - 0x015C23 05:9C13: 00        .byte $00   ; 
- D 0 - I - 0x015C24 05:9C14: 20 9C     .word off_ch_05_9C20_00
- D 0 - I - 0x015C26 05:9C16: 01        .byte $01   ; 
- D 0 - I - 0x015C27 05:9C17: C0 9C     .word off_ch_05_9CC0_01
- D 0 - I - 0x015C29 05:9C19: 02        .byte $02   ; 
- D 0 - I - 0x015C2A 05:9C1A: 68 9D     .word off_ch_05_9D68_02
- D 0 - I - 0x015C2C 05:9C1C: 03        .byte $03   ; 
- D 0 - I - 0x015C2D 05:9C1D: 8B 9D     .word off_ch_05_9D8B_03
- D 0 - I - 0x015C2F 05:9C1F: FF        .byte $FF   ; 



off_ch_05_9C20_00:
- D 0 - I - 0x015C30 05:9C20: D8        .byte con_se_cb_D8, $00   ; 
- D 0 - I - 0x015C32 05:9C22: CC        .byte con_se_cb_CC, $73   ; 
- D 0 - I - 0x015C34 05:9C24: CD        .byte con_se_cb_CD   ; 
- D 0 - I - 0x015C35 05:9C25: 7A 8B     .word ofs_CD_8B7A
- D 0 - I - 0x015C37 05:9C27: DB        .byte con_se_cb_DB, $18, $3C, $F0   ; 
- D 0 - I - 0x015C3B 05:9C2B: C4        .byte con_se_cb_C4, $2D   ; 
- D 0 - I - 0x015C3D 05:9C2D: C7        .byte con_se_cb_C7, $F0   ; 
loc_D0_9C2F:
- D 0 - I - 0x015C3F 05:9C2F: 30        .byte $30   ; 
- D 0 - I - 0x015C40 05:9C30: DA        .byte con_se_cb_DA, $04   ; 
- D 0 - I - 0x015C42 05:9C32: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015C43 05:9C33: 12        .byte $12   ; 
- D 0 - I - 0x015C44 05:9C34: 69        .byte $69   ; 
- D 0 - I - 0x015C45 05:9C35: 06        .byte $06   ; 
- D 0 - I - 0x015C46 05:9C36: A7        .byte $A7   ; 
- D 0 - I - 0x015C47 05:9C37: 80        .byte $80   ; 
- D 0 - I - 0x015C48 05:9C38: 0C        .byte $0C   ; 
- D 0 - I - 0x015C49 05:9C39: 67        .byte $67   ; 
- D 0 - I - 0x015C4A 05:9C3A: 06        .byte $06   ; 
- D 0 - I - 0x015C4B 05:9C3B: 6B        .byte $6B   ; 
- D 0 - I - 0x015C4C 05:9C3C: A4        .byte $A4   ; 
- D 0 - I - 0x015C4D 05:9C3D: 80        .byte $80   ; 
- D 0 - I - 0x015C4E 05:9C3E: 30        .byte $30   ; 
- D 0 - I - 0x015C4F 05:9C3F: 64        .byte $64   ; 
- D 0 - I - 0x015C50 05:9C40: 06        .byte $06   ; 
- D 0 - I - 0x015C51 05:9C41: 67        .byte $67   ; 
- D 0 - I - 0x015C52 05:9C42: A9        .byte $A9   ; 
- D 0 - I - 0x015C53 05:9C43: 80        .byte $80   ; 
- D 0 - I - 0x015C54 05:9C44: 0C        .byte $0C   ; 
- D 0 - I - 0x015C55 05:9C45: A9        .byte $A9   ; 
- D 0 - I - 0x015C56 05:9C46: 80        .byte $80   ; 
- D 0 - I - 0x015C57 05:9C47: 12        .byte $12   ; 
- D 0 - I - 0x015C58 05:9C48: 69        .byte $69   ; 
- D 0 - I - 0x015C59 05:9C49: 06        .byte $06   ; 
- D 0 - I - 0x015C5A 05:9C4A: 67        .byte $67   ; 
- D 0 - I - 0x015C5B 05:9C4B: 62        .byte $62   ; 
- D 0 - I - 0x015C5C 05:9C4C: A4        .byte $A4   ; 
- D 0 - I - 0x015C5D 05:9C4D: 80        .byte $80   ; 
- D 0 - I - 0x015C5E 05:9C4E: 24        .byte $24   ; 
- D 0 - I - 0x015C5F 05:9C4F: 64        .byte $64   ; 
- D 0 - I - 0x015C60 05:9C50: 12        .byte $12   ; 
- D 0 - I - 0x015C61 05:9C51: 69        .byte $69   ; 
- D 0 - I - 0x015C62 05:9C52: 06        .byte $06   ; 
- D 0 - I - 0x015C63 05:9C53: A7        .byte $A7   ; 
- D 0 - I - 0x015C64 05:9C54: 80        .byte $80   ; 
- D 0 - I - 0x015C65 05:9C55: 0C        .byte $0C   ; 
- D 0 - I - 0x015C66 05:9C56: 67        .byte $67   ; 
- D 0 - I - 0x015C67 05:9C57: 06        .byte $06   ; 
- D 0 - I - 0x015C68 05:9C58: 6B        .byte $6B   ; 
- D 0 - I - 0x015C69 05:9C59: A4        .byte $A4   ; 
- D 0 - I - 0x015C6A 05:9C5A: 80        .byte $80   ; 
- D 0 - I - 0x015C6B 05:9C5B: 30        .byte $30   ; 
- D 0 - I - 0x015C6C 05:9C5C: 64        .byte $64   ; 
- D 0 - I - 0x015C6D 05:9C5D: 06        .byte $06   ; 
- D 0 - I - 0x015C6E 05:9C5E: 67        .byte $67   ; 
- D 0 - I - 0x015C6F 05:9C5F: A9        .byte $A9   ; 
- D 0 - I - 0x015C70 05:9C60: 80        .byte $80   ; 
- D 0 - I - 0x015C71 05:9C61: 12        .byte $12   ; 
- D 0 - I - 0x015C72 05:9C62: 69        .byte $69   ; 
- D 0 - I - 0x015C73 05:9C63: 06        .byte $06   ; 
- D 0 - I - 0x015C74 05:9C64: 6B        .byte $6B   ; 
- D 0 - I - 0x015C75 05:9C65: 67        .byte $67   ; 
- D 0 - I - 0x015C76 05:9C66: 64        .byte $64   ; 
- D 0 - I - 0x015C77 05:9C67: 62        .byte $62   ; 
- D 0 - I - 0x015C78 05:9C68: A4        .byte $A4   ; 
- D 0 - I - 0x015C79 05:9C69: 80        .byte $80   ; 
- D 0 - I - 0x015C7A 05:9C6A: 64        .byte $64   ; 
- D 0 - I - 0x015C7B 05:9C6B: A4        .byte $A4   ; 
- D 0 - I - 0x015C7C 05:9C6C: 80        .byte $80   ; 
- D 0 - I - 0x015C7D 05:9C6D: 18        .byte $18   ; 
- D 0 - I - 0x015C7E 05:9C6E: 64        .byte $64   ; 
- D 0 - I - 0x015C7F 05:9C6F: CD        .byte con_se_cb_CD   ; 
- D 0 - I - 0x015C80 05:9C70: 1F 8B     .word ofs_CD_8B1F
- D 0 - I - 0x015C82 05:9C72: DD        .byte con_se_cb_DD   ; 
- D 0 - I - 0x015C83 05:9C73: 0C        .byte $0C   ; 
- D 0 - I - 0x015C84 05:9C74: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015C85 05:9C75: 06        .byte $06   ; 
- D 0 - I - 0x015C86 05:9C76: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015C87 05:9C77: AE        .byte $AE   ; 
- D 0 - I - 0x015C88 05:9C78: 80        .byte $80   ; 
- D 0 - I - 0x015C89 05:9C79: 12        .byte $12   ; 
- D 0 - I - 0x015C8A 05:9C7A: 6E        .byte $6E   ; 
- D 0 - I - 0x015C8B 05:9C7B: 06        .byte $06   ; 
- D 0 - I - 0x015C8C 05:9C7C: AC        .byte $AC   ; 
- D 0 - I - 0x015C8D 05:9C7D: 80        .byte $80   ; 
- D 0 - I - 0x015C8E 05:9C7E: 12        .byte $12   ; 
- D 0 - I - 0x015C8F 05:9C7F: 6C        .byte $6C   ; 
- D 0 - I - 0x015C90 05:9C80: 06        .byte $06   ; 
- D 0 - I - 0x015C91 05:9C81: A9        .byte $A9   ; 
- D 0 - I - 0x015C92 05:9C82: 80        .byte $80   ; 
- D 0 - I - 0x015C93 05:9C83: 18        .byte $18   ; 
- D 0 - I - 0x015C94 05:9C84: 69        .byte $69   ; 
- D 0 - I - 0x015C95 05:9C85: 12        .byte $12   ; 
- D 0 - I - 0x015C96 05:9C86: 6B        .byte $6B   ; 
- D 0 - I - 0x015C97 05:9C87: 06        .byte $06   ; 
- D 0 - I - 0x015C98 05:9C88: AE        .byte $AE   ; 
- D 0 - I - 0x015C99 05:9C89: 80        .byte $80   ; 
- D 0 - I - 0x015C9A 05:9C8A: 12        .byte $12   ; 
- D 0 - I - 0x015C9B 05:9C8B: 6E        .byte $6E   ; 
- D 0 - I - 0x015C9C 05:9C8C: 06        .byte $06   ; 
- D 0 - I - 0x015C9D 05:9C8D: AC        .byte $AC   ; 
- D 0 - I - 0x015C9E 05:9C8E: 80        .byte $80   ; 
- D 0 - I - 0x015C9F 05:9C8F: 0C        .byte $0C   ; 
- D 0 - I - 0x015CA0 05:9C90: 6C        .byte $6C   ; 
- D 0 - I - 0x015CA1 05:9C91: 06        .byte $06   ; 
- D 0 - I - 0x015CA2 05:9C92: 70        .byte $70   ; 
- D 0 - I - 0x015CA3 05:9C93: AC        .byte $AC   ; 
- D 0 - I - 0x015CA4 05:9C94: 80        .byte $80   ; 
- D 0 - I - 0x015CA5 05:9C95: 18        .byte $18   ; 
- D 0 - I - 0x015CA6 05:9C96: 6C        .byte $6C   ; 
- D 0 - I - 0x015CA7 05:9C97: 12        .byte $12   ; 
- D 0 - I - 0x015CA8 05:9C98: 69        .byte $69   ; 
- D 0 - I - 0x015CA9 05:9C99: 06        .byte $06   ; 
- D 0 - I - 0x015CAA 05:9C9A: AC        .byte $AC   ; 
- D 0 - I - 0x015CAB 05:9C9B: 80        .byte $80   ; 
- D 0 - I - 0x015CAC 05:9C9C: 12        .byte $12   ; 
- D 0 - I - 0x015CAD 05:9C9D: 6C        .byte $6C   ; 
- D 0 - I - 0x015CAE 05:9C9E: 06        .byte $06   ; 
- D 0 - I - 0x015CAF 05:9C9F: A9        .byte $A9   ; 
- D 0 - I - 0x015CB0 05:9CA0: 80        .byte $80   ; 
- D 0 - I - 0x015CB1 05:9CA1: 0C        .byte $0C   ; 
- D 0 - I - 0x015CB2 05:9CA2: 69        .byte $69   ; 
- D 0 - I - 0x015CB3 05:9CA3: 06        .byte $06   ; 
- D 0 - I - 0x015CB4 05:9CA4: 6C        .byte $6C   ; 
- D 0 - I - 0x015CB5 05:9CA5: AF        .byte $AF   ; 
- D 0 - I - 0x015CB6 05:9CA6: 80        .byte $80   ; 
- D 0 - I - 0x015CB7 05:9CA7: 18        .byte $18   ; 
- D 0 - I - 0x015CB8 05:9CA8: 6F        .byte $6F   ; 
- D 0 - I - 0x015CB9 05:9CA9: CD        .byte con_se_cb_CD   ; 
- D 0 - I - 0x015CBA 05:9CAA: 7A 8B     .word ofs_CD_8B7A
- D 0 - I - 0x015CBC 05:9CAC: DC        .byte con_se_cb_DC   ; 
- D 0 - I - 0x015CBD 05:9CAD: 12        .byte $12   ; 
- D 0 - I - 0x015CBE 05:9CAE: 70        .byte $70   ; 
- D 0 - I - 0x015CBF 05:9CAF: 06        .byte $06   ; 
- D 0 - I - 0x015CC0 05:9CB0: AE        .byte $AE   ; 
- D 0 - I - 0x015CC1 05:9CB1: 80        .byte $80   ; 
- D 0 - I - 0x015CC2 05:9CB2: 0C        .byte $0C   ; 
- D 0 - I - 0x015CC3 05:9CB3: 6E        .byte $6E   ; 
- D 0 - I - 0x015CC4 05:9CB4: 06        .byte $06   ; 
- D 0 - I - 0x015CC5 05:9CB5: 73        .byte $73   ; 
- D 0 - I - 0x015CC6 05:9CB6: B0        .byte $B0   ; 
- D 0 - I - 0x015CC7 05:9CB7: 80        .byte $80   ; 
- D 0 - I - 0x015CC8 05:9CB8: 24        .byte $24   ; 
- D 0 - I - 0x015CC9 05:9CB9: 70        .byte $70   ; 
- D 0 - I - 0x015CCA 05:9CBA: 0C        .byte $0C   ; 
- D 0 - I - 0x015CCB 05:9CBB: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015CCC 05:9CBC: D0        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x015CCD 05:9CBD: 2F 9C     .word loc_D0_9C2F


; bzk garbage
- - - - - - 0x015CCF 05:9CBF: D3        .byte con_se_cb_stop   ; 



off_ch_05_9CC0_01:
- D 0 - I - 0x015CD0 05:9CC0: D8        .byte con_se_cb_D8, $00   ; 
- D 0 - I - 0x015CD2 05:9CC2: CD        .byte con_se_cb_CD   ; 
- D 0 - I - 0x015CD3 05:9CC3: 7A 8B     .word ofs_CD_8B7A
- D 0 - I - 0x015CD5 05:9CC5: DB        .byte con_se_cb_DB, $18, $3C, $F0   ; 
- D 0 - I - 0x015CD9 05:9CC9: C4        .byte con_se_cb_C4, $2D   ; 
- D 0 - I - 0x015CDB 05:9CCB: C7        .byte con_se_cb_C7, $F0   ; 
- D 0 - I - 0x015CDD 05:9CCD: 30        .byte $30   ; 
- D 0 - I - 0x015CDE 05:9CCE: C9        .byte con_se_cb_C9   ; 
loc_D0_9CCF:
- D 0 - I - 0x015CDF 05:9CCF: 30        .byte $30   ; 
- D 0 - I - 0x015CE0 05:9CD0: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015CE1 05:9CD1: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015CE2 05:9CD2: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015CE3 05:9CD3: 12        .byte $12   ; 
- D 0 - I - 0x015CE4 05:9CD4: 64        .byte $64   ; 
- D 0 - I - 0x015CE5 05:9CD5: 06        .byte $06   ; 
- D 0 - I - 0x015CE6 05:9CD6: A2        .byte $A2   ; 
- D 0 - I - 0x015CE7 05:9CD7: 80        .byte $80   ; 
- D 0 - I - 0x015CE8 05:9CD8: 0C        .byte $0C   ; 
- D 0 - I - 0x015CE9 05:9CD9: 62        .byte $62   ; 
- D 0 - I - 0x015CEA 05:9CDA: 06        .byte $06   ; 
- D 0 - I - 0x015CEB 05:9CDB: 66        .byte $66   ; 
- D 0 - I - 0x015CEC 05:9CDC: 9F        .byte $9F   ; 
- D 0 - I - 0x015CED 05:9CDD: 80        .byte $80   ; 
- D 0 - I - 0x015CEE 05:9CDE: 30        .byte $30   ; 
- D 0 - I - 0x015CEF 05:9CDF: 5F        .byte $5F   ; 
- D 0 - I - 0x015CF0 05:9CE0: 06        .byte $06   ; 
- D 0 - I - 0x015CF1 05:9CE1: 62        .byte $62   ; 
- D 0 - I - 0x015CF2 05:9CE2: A4        .byte $A4   ; 
- D 0 - I - 0x015CF3 05:9CE3: 80        .byte $80   ; 
- D 0 - I - 0x015CF4 05:9CE4: 0C        .byte $0C   ; 
- D 0 - I - 0x015CF5 05:9CE5: A4        .byte $A4   ; 
- D 0 - I - 0x015CF6 05:9CE6: 80        .byte $80   ; 
- D 0 - I - 0x015CF7 05:9CE7: 12        .byte $12   ; 
- D 0 - I - 0x015CF8 05:9CE8: 64        .byte $64   ; 
- D 0 - I - 0x015CF9 05:9CE9: 06        .byte $06   ; 
- D 0 - I - 0x015CFA 05:9CEA: 62        .byte $62   ; 
- D 0 - I - 0x015CFB 05:9CEB: 5D        .byte $5D   ; 
- D 0 - I - 0x015CFC 05:9CEC: 9F        .byte $9F   ; 
- D 0 - I - 0x015CFD 05:9CED: 80        .byte $80   ; 
- D 0 - I - 0x015CFE 05:9CEE: 24        .byte $24   ; 
- D 0 - I - 0x015CFF 05:9CEF: 5F        .byte $5F   ; 
- D 0 - I - 0x015D00 05:9CF0: 12        .byte $12   ; 
- D 0 - I - 0x015D01 05:9CF1: 64        .byte $64   ; 
- D 0 - I - 0x015D02 05:9CF2: 06        .byte $06   ; 
- D 0 - I - 0x015D03 05:9CF3: A2        .byte $A2   ; 
- D 0 - I - 0x015D04 05:9CF4: 80        .byte $80   ; 
- D 0 - I - 0x015D05 05:9CF5: 0C        .byte $0C   ; 
- D 0 - I - 0x015D06 05:9CF6: 62        .byte $62   ; 
- D 0 - I - 0x015D07 05:9CF7: 06        .byte $06   ; 
- D 0 - I - 0x015D08 05:9CF8: 66        .byte $66   ; 
- D 0 - I - 0x015D09 05:9CF9: 9F        .byte $9F   ; 
- D 0 - I - 0x015D0A 05:9CFA: 80        .byte $80   ; 
- D 0 - I - 0x015D0B 05:9CFB: 30        .byte $30   ; 
- D 0 - I - 0x015D0C 05:9CFC: 5F        .byte $5F   ; 
- D 0 - I - 0x015D0D 05:9CFD: 06        .byte $06   ; 
- D 0 - I - 0x015D0E 05:9CFE: 62        .byte $62   ; 
- D 0 - I - 0x015D0F 05:9CFF: A4        .byte $A4   ; 
- D 0 - I - 0x015D10 05:9D00: 80        .byte $80   ; 
- D 0 - I - 0x015D11 05:9D01: 12        .byte $12   ; 
- D 0 - I - 0x015D12 05:9D02: 64        .byte $64   ; 
- D 0 - I - 0x015D13 05:9D03: 06        .byte $06   ; 
- D 0 - I - 0x015D14 05:9D04: 67        .byte $67   ; 
- D 0 - I - 0x015D15 05:9D05: 64        .byte $64   ; 
- D 0 - I - 0x015D16 05:9D06: 5F        .byte $5F   ; 
- D 0 - I - 0x015D17 05:9D07: 5D        .byte $5D   ; 
- D 0 - I - 0x015D18 05:9D08: 9F        .byte $9F   ; 
- D 0 - I - 0x015D19 05:9D09: 80        .byte $80   ; 
- D 0 - I - 0x015D1A 05:9D0A: 5F        .byte $5F   ; 
- D 0 - I - 0x015D1B 05:9D0B: 9F        .byte $9F   ; 
- D 0 - I - 0x015D1C 05:9D0C: 80        .byte $80   ; 
- D 0 - I - 0x015D1D 05:9D0D: 0C        .byte $0C   ; 
- D 0 - I - 0x015D1E 05:9D0E: 5F        .byte $5F   ; 
- D 0 - I - 0x015D1F 05:9D0F: CD        .byte con_se_cb_CD   ; 
- D 0 - I - 0x015D20 05:9D10: 1F 8B     .word ofs_CD_8B1F
- D 0 - I - 0x015D22 05:9D12: DD        .byte con_se_cb_DD   ; 
- D 0 - I - 0x015D23 05:9D13: 06        .byte $06   ; 
- D 0 - I - 0x015D24 05:9D14: 64        .byte $64   ; 
- D 0 - I - 0x015D25 05:9D15: 67        .byte $67   ; 
- D 0 - I - 0x015D26 05:9D16: 12        .byte $12   ; 
- D 0 - I - 0x015D27 05:9D17: 69        .byte $69   ; 
- D 0 - I - 0x015D28 05:9D18: 06        .byte $06   ; 
- D 0 - I - 0x015D29 05:9D19: A9        .byte $A9   ; 
- D 0 - I - 0x015D2A 05:9D1A: 80        .byte $80   ; 
- D 0 - I - 0x015D2B 05:9D1B: 12        .byte $12   ; 
- D 0 - I - 0x015D2C 05:9D1C: 69        .byte $69   ; 
- D 0 - I - 0x015D2D 05:9D1D: 06        .byte $06   ; 
- D 0 - I - 0x015D2E 05:9D1E: A7        .byte $A7   ; 
- D 0 - I - 0x015D2F 05:9D1F: 80        .byte $80   ; 
- D 0 - I - 0x015D30 05:9D20: 12        .byte $12   ; 
- D 0 - I - 0x015D31 05:9D21: 67        .byte $67   ; 
- D 0 - I - 0x015D32 05:9D22: 06        .byte $06   ; 
- D 0 - I - 0x015D33 05:9D23: 69        .byte $69   ; 
- D 0 - I - 0x015D34 05:9D24: 6B        .byte $6B   ; 
- D 0 - I - 0x015D35 05:9D25: 6C        .byte $6C   ; 
- D 0 - I - 0x015D36 05:9D26: 6E        .byte $6E   ; 
- D 0 - I - 0x015D37 05:9D27: 69        .byte $69   ; 
- D 0 - I - 0x015D38 05:9D28: 12        .byte $12   ; 
- D 0 - I - 0x015D39 05:9D29: 67        .byte $67   ; 
- D 0 - I - 0x015D3A 05:9D2A: 06        .byte $06   ; 
- D 0 - I - 0x015D3B 05:9D2B: A9        .byte $A9   ; 
- D 0 - I - 0x015D3C 05:9D2C: 80        .byte $80   ; 
- D 0 - I - 0x015D3D 05:9D2D: 12        .byte $12   ; 
- D 0 - I - 0x015D3E 05:9D2E: 69        .byte $69   ; 
- D 0 - I - 0x015D3F 05:9D2F: 06        .byte $06   ; 
- D 0 - I - 0x015D40 05:9D30: A7        .byte $A7   ; 
- D 0 - I - 0x015D41 05:9D31: 80        .byte $80   ; 
- D 0 - I - 0x015D42 05:9D32: 0C        .byte $0C   ; 
- D 0 - I - 0x015D43 05:9D33: 67        .byte $67   ; 
- D 0 - I - 0x015D44 05:9D34: 06        .byte $06   ; 
- D 0 - I - 0x015D45 05:9D35: 6B        .byte $6B   ; 
- D 0 - I - 0x015D46 05:9D36: 67        .byte $67   ; 
- D 0 - I - 0x015D47 05:9D37: 69        .byte $69   ; 
- D 0 - I - 0x015D48 05:9D38: 6B        .byte $6B   ; 
- D 0 - I - 0x015D49 05:9D39: 6C        .byte $6C   ; 
- D 0 - I - 0x015D4A 05:9D3A: 67        .byte $67   ; 
- D 0 - I - 0x015D4B 05:9D3B: 12        .byte $12   ; 
- D 0 - I - 0x015D4C 05:9D3C: 66        .byte $66   ; 
- D 0 - I - 0x015D4D 05:9D3D: 06        .byte $06   ; 
- D 0 - I - 0x015D4E 05:9D3E: A9        .byte $A9   ; 
- D 0 - I - 0x015D4F 05:9D3F: 80        .byte $80   ; 
- D 0 - I - 0x015D50 05:9D40: 12        .byte $12   ; 
- D 0 - I - 0x015D51 05:9D41: 69        .byte $69   ; 
- D 0 - I - 0x015D52 05:9D42: 06        .byte $06   ; 
- D 0 - I - 0x015D53 05:9D43: A6        .byte $A6   ; 
- D 0 - I - 0x015D54 05:9D44: 80        .byte $80   ; 
- D 0 - I - 0x015D55 05:9D45: 0C        .byte $0C   ; 
- D 0 - I - 0x015D56 05:9D46: 66        .byte $66   ; 
- D 0 - I - 0x015D57 05:9D47: 06        .byte $06   ; 
- D 0 - I - 0x015D58 05:9D48: 69        .byte $69   ; 
- D 0 - I - 0x015D59 05:9D49: 69        .byte $69   ; 
- D 0 - I - 0x015D5A 05:9D4A: 6C        .byte $6C   ; 
- D 0 - I - 0x015D5B 05:9D4B: 6F        .byte $6F   ; 
- D 0 - I - 0x015D5C 05:9D4C: 6C        .byte $6C   ; 
- D 0 - I - 0x015D5D 05:9D4D: 69        .byte $69   ; 
- D 0 - I - 0x015D5E 05:9D4E: CD        .byte con_se_cb_CD   ; 
- D 0 - I - 0x015D5F 05:9D4F: 7A 8B     .word ofs_CD_8B7A
- D 0 - I - 0x015D61 05:9D51: DC        .byte con_se_cb_DC   ; 
- D 0 - I - 0x015D62 05:9D52: 12        .byte $12   ; 
- D 0 - I - 0x015D63 05:9D53: 64        .byte $64   ; 
- D 0 - I - 0x015D64 05:9D54: 06        .byte $06   ; 
- D 0 - I - 0x015D65 05:9D55: A9        .byte $A9   ; 
- D 0 - I - 0x015D66 05:9D56: 80        .byte $80   ; 
- D 0 - I - 0x015D67 05:9D57: 0C        .byte $0C   ; 
- D 0 - I - 0x015D68 05:9D58: 69        .byte $69   ; 
- D 0 - I - 0x015D69 05:9D59: 06        .byte $06   ; 
- D 0 - I - 0x015D6A 05:9D5A: 6E        .byte $6E   ; 
- D 0 - I - 0x015D6B 05:9D5B: AB        .byte $AB   ; 
- D 0 - I - 0x015D6C 05:9D5C: 80        .byte $80   ; 
- D 0 - I - 0x015D6D 05:9D5D: 0C        .byte $0C   ; 
- D 0 - I - 0x015D6E 05:9D5E: 6B        .byte $6B   ; 
- D 0 - I - 0x015D6F 05:9D5F: 62        .byte $62   ; 
- D 0 - I - 0x015D70 05:9D60: 64        .byte $64   ; 
- D 0 - I - 0x015D71 05:9D61: 6B        .byte $6B   ; 
- D 0 - I - 0x015D72 05:9D62: 30        .byte $30   ; 
- D 0 - I - 0x015D73 05:9D63: 64        .byte $64   ; 
- D 0 - I - 0x015D74 05:9D64: D0        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x015D75 05:9D65: CF 9C     .word loc_D0_9CCF


; bzk garbage
- - - - - - 0x015D77 05:9D67: D3        .byte con_se_cb_stop   ; 



off_ch_05_9D68_02:
- D 0 - I - 0x015D78 05:9D68: D8        .byte con_se_cb_D8, $0C   ; 
- D 0 - I - 0x015D7A 05:9D6A: C7        .byte con_se_cb_C7, $96   ; 
loc_D0_9D6C:
- D 0 - I - 0x015D7C 05:9D6C: 06        .byte $06   ; 
- D 0 - I - 0x015D7D 05:9D6D: DA        .byte con_se_cb_DA, $20   ; 
- D 0 - I - 0x015D7F 05:9D6F: 4C        .byte $4C   ; 
- D 0 - I - 0x015D80 05:9D70: DA        .byte con_se_cb_DA, $40   ; 
- D 0 - I - 0x015D82 05:9D72: 4C        .byte $4C   ; 
- D 0 - I - 0x015D83 05:9D73: DA        .byte con_se_cb_DA, $10   ; 
- D 0 - I - 0x015D85 05:9D75: 51        .byte $51   ; 
- D 0 - I - 0x015D86 05:9D76: DA        .byte con_se_cb_DA, $10   ; 
- D 0 - I - 0x015D88 05:9D78: 4F        .byte $4F   ; 
- D 0 - I - 0x015D89 05:9D79: DA        .byte con_se_cb_DA, $10   ; 
- D 0 - I - 0x015D8B 05:9D7B: 4E        .byte $4E   ; 
- D 0 - I - 0x015D8C 05:9D7C: DA        .byte con_se_cb_DA, $08   ; 
- D 0 - I - 0x015D8E 05:9D7E: 4C        .byte $4C   ; 
- D 0 - I - 0x015D8F 05:9D7F: 4C        .byte $4C   ; 
- D 0 - I - 0x015D90 05:9D80: 4C        .byte $4C   ; 
- D 0 - I - 0x015D91 05:9D81: 4C        .byte $4C   ; 
- D 0 - I - 0x015D92 05:9D82: 4C        .byte $4C   ; 
- D 0 - I - 0x015D93 05:9D83: 4C        .byte $4C   ; 
- D 0 - I - 0x015D94 05:9D84: 47        .byte $47   ; 
- D 0 - I - 0x015D95 05:9D85: 4A        .byte $4A   ; 
- D 0 - I - 0x015D96 05:9D86: 4B        .byte $4B   ; 
- D 0 - I - 0x015D97 05:9D87: D0        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x015D98 05:9D88: 6C 9D     .word loc_D0_9D6C


; bzk garbage
- - - - - - 0x015D9A 05:9D8A: D3        .byte con_se_cb_stop   ; 



off_ch_05_9D8B_03:
- D 0 - I - 0x015D9B 05:9D8B: CD        .byte con_se_cb_CD   ; 
- D 0 - I - 0x015D9C 05:9D8C: F3 8B     .word ofs_CD_8BF3
- D 0 - I - 0x015D9E 05:9D8E: C4        .byte con_se_cb_C4, $23   ; 
loc_D0_9D90:
- D 0 - I - 0x015DA0 05:9D90: 0C        .byte $0C   ; 
- D 0 - I - 0x015DA1 05:9D91: 42        .byte $42   ; 
- D 0 - I - 0x015DA2 05:9D92: 42        .byte $42   ; 
- D 0 - I - 0x015DA3 05:9D93: 06        .byte $06   ; 
- D 0 - I - 0x015DA4 05:9D94: 42        .byte $42   ; 
- D 0 - I - 0x015DA5 05:9D95: 03        .byte $03   ; 
- D 0 - I - 0x015DA6 05:9D96: 41        .byte $41   ; 
- D 0 - I - 0x015DA7 05:9D97: 41        .byte $41   ; 
- D 0 - I - 0x015DA8 05:9D98: 06        .byte $06   ; 
- D 0 - I - 0x015DA9 05:9D99: 41        .byte $41   ; 
- D 0 - I - 0x015DAA 05:9D9A: 43        .byte $43   ; 
- D 0 - I - 0x015DAB 05:9D9B: 0C        .byte $0C   ; 
- D 0 - I - 0x015DAC 05:9D9C: 42        .byte $42   ; 
- D 0 - I - 0x015DAD 05:9D9D: 42        .byte $42   ; 
- D 0 - I - 0x015DAE 05:9D9E: 06        .byte $06   ; 
- D 0 - I - 0x015DAF 05:9D9F: 42        .byte $42   ; 
- D 0 - I - 0x015DB0 05:9DA0: 03        .byte $03   ; 
- D 0 - I - 0x015DB1 05:9DA1: 41        .byte $41   ; 
- D 0 - I - 0x015DB2 05:9DA2: 41        .byte $41   ; 
- D 0 - I - 0x015DB3 05:9DA3: 06        .byte $06   ; 
- D 0 - I - 0x015DB4 05:9DA4: 43        .byte $43   ; 
- D 0 - I - 0x015DB5 05:9DA5: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015DB6 05:9DA6: 0C        .byte $0C   ; 
- D 0 - I - 0x015DB7 05:9DA7: 42        .byte $42   ; 
- D 0 - I - 0x015DB8 05:9DA8: 42        .byte $42   ; 
- D 0 - I - 0x015DB9 05:9DA9: 06        .byte $06   ; 
- D 0 - I - 0x015DBA 05:9DAA: 42        .byte $42   ; 
- D 0 - I - 0x015DBB 05:9DAB: 41        .byte $41   ; 
- D 0 - I - 0x015DBC 05:9DAC: 03        .byte $03   ; 
- D 0 - I - 0x015DBD 05:9DAD: 41        .byte $41   ; 
- D 0 - I - 0x015DBE 05:9DAE: 41        .byte $41   ; 
- D 0 - I - 0x015DBF 05:9DAF: 06        .byte $06   ; 
- D 0 - I - 0x015DC0 05:9DB0: 43        .byte $43   ; 
- D 0 - I - 0x015DC1 05:9DB1: 0C        .byte $0C   ; 
- D 0 - I - 0x015DC2 05:9DB2: 42        .byte $42   ; 
- D 0 - I - 0x015DC3 05:9DB3: 42        .byte $42   ; 
- D 0 - I - 0x015DC4 05:9DB4: 06        .byte $06   ; 
- D 0 - I - 0x015DC5 05:9DB5: 42        .byte $42   ; 
- D 0 - I - 0x015DC6 05:9DB6: 43        .byte $43   ; 
- D 0 - I - 0x015DC7 05:9DB7: 43        .byte $43   ; 
- D 0 - I - 0x015DC8 05:9DB8: C9        .byte con_se_cb_C9   ; 
off_CE_9DB9:
- D 0 - I - 0x015DC9 05:9DB9: 0C        .byte $0C   ; 
- D 0 - I - 0x015DCA 05:9DBA: DA        .byte con_se_cb_DA, $06   ; 
- D 0 - I - 0x015DCC 05:9DBC: 42        .byte $42   ; 
- D 0 - I - 0x015DCD 05:9DBD: 06        .byte $06   ; 
- D 0 - I - 0x015DCE 05:9DBE: 42        .byte $42   ; 
- D 0 - I - 0x015DCF 05:9DBF: 03        .byte $03   ; 
- D 0 - I - 0x015DD0 05:9DC0: 41        .byte $41   ; 
- D 0 - I - 0x015DD1 05:9DC1: 41        .byte $41   ; 
- D 0 - I - 0x015DD2 05:9DC2: 0C        .byte $0C   ; 
- D 0 - I - 0x015DD3 05:9DC3: 43        .byte $43   ; 
- D 0 - I - 0x015DD4 05:9DC4: CE        .byte con_se_cb_loop_1, $03   ; 
- D 0 - I - 0x015DD6 05:9DC6: B9 9D     .word off_CE_9DB9
- D 0 - I - 0x015DD8 05:9DC8: 42        .byte $42   ; 
- D 0 - I - 0x015DD9 05:9DC9: 42        .byte $42   ; 
- D 0 - I - 0x015DDA 05:9DCA: 42        .byte $42   ; 
- D 0 - I - 0x015DDB 05:9DCB: 42        .byte $42   ; 
- D 0 - I - 0x015DDC 05:9DCC: 42        .byte $42   ; 
- D 0 - I - 0x015DDD 05:9DCD: 42        .byte $42   ; 
- D 0 - I - 0x015DDE 05:9DCE: 06        .byte $06   ; 
- D 0 - I - 0x015DDF 05:9DCF: 42        .byte $42   ; 
- D 0 - I - 0x015DE0 05:9DD0: 03        .byte $03   ; 
- D 0 - I - 0x015DE1 05:9DD1: 41        .byte $41   ; 
- D 0 - I - 0x015DE2 05:9DD2: 41        .byte $41   ; 
- D 0 - I - 0x015DE3 05:9DD3: 06        .byte $06   ; 
- D 0 - I - 0x015DE4 05:9DD4: 43        .byte $43   ; 
- D 0 - I - 0x015DE5 05:9DD5: 43        .byte $43   ; 
- D 0 - I - 0x015DE6 05:9DD6: D1        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x015DE7 05:9DD7: 0B 9E     .word sub_D1_9E0B
- D 0 - I - 0x015DE9 05:9DD9: 06        .byte $06   ; 
- D 0 - I - 0x015DEA 05:9DDA: 41        .byte $41   ; 
- D 0 - I - 0x015DEB 05:9DDB: 03        .byte $03   ; 
- D 0 - I - 0x015DEC 05:9DDC: 41        .byte $41   ; 
- D 0 - I - 0x015DED 05:9DDD: 41        .byte $41   ; 
- D 0 - I - 0x015DEE 05:9DDE: 06        .byte $06   ; 
- D 0 - I - 0x015DEF 05:9DDF: 41        .byte $41   ; 
- D 0 - I - 0x015DF0 05:9DE0: 41        .byte $41   ; 
- D 0 - I - 0x015DF1 05:9DE1: 03        .byte $03   ; 
- D 0 - I - 0x015DF2 05:9DE2: 41        .byte $41   ; 
- D 0 - I - 0x015DF3 05:9DE3: 41        .byte $41   ; 
- D 0 - I - 0x015DF4 05:9DE4: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015DF5 05:9DE5: 41        .byte $41   ; 
- D 0 - I - 0x015DF6 05:9DE6: 06        .byte $06   ; 
- D 0 - I - 0x015DF7 05:9DE7: 41        .byte $41   ; 
- D 0 - I - 0x015DF8 05:9DE8: 03        .byte $03   ; 
- D 0 - I - 0x015DF9 05:9DE9: 41        .byte $41   ; 
- D 0 - I - 0x015DFA 05:9DEA: 41        .byte $41   ; 
- D 0 - I - 0x015DFB 05:9DEB: 06        .byte $06   ; 
- D 0 - I - 0x015DFC 05:9DEC: 41        .byte $41   ; 
- D 0 - I - 0x015DFD 05:9DED: 03        .byte $03   ; 
- D 0 - I - 0x015DFE 05:9DEE: 41        .byte $41   ; 
- D 0 - I - 0x015DFF 05:9DEF: 41        .byte $41   ; 
- D 0 - I - 0x015E00 05:9DF0: 41        .byte $41   ; 
- D 0 - I - 0x015E01 05:9DF1: 41        .byte $41   ; 
- D 0 - I - 0x015E02 05:9DF2: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015E03 05:9DF3: 41        .byte $41   ; 
- D 0 - I - 0x015E04 05:9DF4: 41        .byte $41   ; 
- D 0 - I - 0x015E05 05:9DF5: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015E06 05:9DF6: 41        .byte $41   ; 
- D 0 - I - 0x015E07 05:9DF7: 41        .byte $41   ; 
- D 0 - I - 0x015E08 05:9DF8: 0C        .byte $0C   ; 
- D 0 - I - 0x015E09 05:9DF9: 43        .byte $43   ; 
- D 0 - I - 0x015E0A 05:9DFA: D1        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x015E0B 05:9DFB: 0B 9E     .word sub_D1_9E0B
- D 0 - I - 0x015E0D 05:9DFD: 0C        .byte $0C   ; 
- D 0 - I - 0x015E0E 05:9DFE: 42        .byte $42   ; 
- D 0 - I - 0x015E0F 05:9DFF: 42        .byte $42   ; 
- D 0 - I - 0x015E10 05:9E00: 42        .byte $42   ; 
- D 0 - I - 0x015E11 05:9E01: 43        .byte $43   ; 
- D 0 - I - 0x015E12 05:9E02: 42        .byte $42   ; 
- D 0 - I - 0x015E13 05:9E03: 42        .byte $42   ; 
- D 0 - I - 0x015E14 05:9E04: 42        .byte $42   ; 
- D 0 - I - 0x015E15 05:9E05: 06        .byte $06   ; 
- D 0 - I - 0x015E16 05:9E06: 43        .byte $43   ; 
- D 0 - I - 0x015E17 05:9E07: 43        .byte $43   ; 
- D 0 - I - 0x015E18 05:9E08: D0        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x015E19 05:9E09: 90 9D     .word loc_D0_9D90



sub_D1_9E0B:
- D 0 - I - 0x015E1B 05:9E0B: 0C        .byte $0C   ; 
- D 0 - I - 0x015E1C 05:9E0C: 43        .byte $43   ; 
- D 0 - I - 0x015E1D 05:9E0D: 06        .byte $06   ; 
- D 0 - I - 0x015E1E 05:9E0E: 41        .byte $41   ; 
- D 0 - I - 0x015E1F 05:9E0F: 03        .byte $03   ; 
- D 0 - I - 0x015E20 05:9E10: 41        .byte $41   ; 
- D 0 - I - 0x015E21 05:9E11: 41        .byte $41   ; 
- D 0 - I - 0x015E22 05:9E12: 06        .byte $06   ; 
- D 0 - I - 0x015E23 05:9E13: 41        .byte $41   ; 
- D 0 - I - 0x015E24 05:9E14: 03        .byte $03   ; 
- D 0 - I - 0x015E25 05:9E15: 41        .byte $41   ; 
- D 0 - I - 0x015E26 05:9E16: 41        .byte $41   ; 
- D 0 - I - 0x015E27 05:9E17: 06        .byte $06   ; 
- D 0 - I - 0x015E28 05:9E18: 41        .byte $41   ; 
- D 0 - I - 0x015E29 05:9E19: 03        .byte $03   ; 
- D 0 - I - 0x015E2A 05:9E1A: 41        .byte $41   ; 
- D 0 - I - 0x015E2B 05:9E1B: 41        .byte $41   ; 
- D 0 - I - 0x015E2C 05:9E1C: 06        .byte $06   ; 
- D 0 - I - 0x015E2D 05:9E1D: 41        .byte $41   ; 
- D 0 - I - 0x015E2E 05:9E1E: 03        .byte $03   ; 
- D 0 - I - 0x015E2F 05:9E1F: 41        .byte $41   ; 
- D 0 - I - 0x015E30 05:9E20: 41        .byte $41   ; 
- D 0 - I - 0x015E31 05:9E21: 06        .byte $06   ; 
- D 0 - I - 0x015E32 05:9E22: 41        .byte $41   ; 
- D 0 - I - 0x015E33 05:9E23: 03        .byte $03   ; 
- D 0 - I - 0x015E34 05:9E24: 41        .byte $41   ; 
- D 0 - I - 0x015E35 05:9E25: 41        .byte $41   ; 
- D 0 - I - 0x015E36 05:9E26: 06        .byte $06   ; 
- D 0 - I - 0x015E37 05:9E27: 41        .byte $41   ; 
- D 0 - I - 0x015E38 05:9E28: 03        .byte $03   ; 
- D 0 - I - 0x015E39 05:9E29: 41        .byte $41   ; 
- D 0 - I - 0x015E3A 05:9E2A: 41        .byte $41   ; 
- D 0 - I - 0x015E3B 05:9E2B: 0C        .byte $0C   ; 
- D 0 - I - 0x015E3C 05:9E2C: 43        .byte $43   ; 
- D 0 - I - 0x015E3D 05:9E2D: D2        .byte con_se_cb_rts   ; 



_off013_9E2E_06_mission_7:
- D 0 - I - 0x015E3E 05:9E2E: FF        .byte $FF   ; 
- D 0 - I - 0x015E3F 05:9E2F: 00        .byte $00   ; 
- D 0 - I - 0x015E40 05:9E30: 3C 9E     .word off_ch_06_9E3C_00
- D 0 - I - 0x015E42 05:9E32: 01        .byte $01   ; 
- D 0 - I - 0x015E43 05:9E33: C1 9E     .word off_ch_06_9EC1_01
- D 0 - I - 0x015E45 05:9E35: 02        .byte $02   ; 
- D 0 - I - 0x015E46 05:9E36: 70 9F     .word off_ch_06_9F70_02
- D 0 - I - 0x015E48 05:9E38: 03        .byte $03   ; 
- D 0 - I - 0x015E49 05:9E39: EB 9F     .word off_ch_06_9FEB_03
- D 0 - I - 0x015E4B 05:9E3B: FF        .byte $FF   ; 



off_ch_06_9E3C_00:
- D 0 - I - 0x015E4C 05:9E3C: CC        .byte con_se_cb_CC, $7D   ; 
- D 0 - I - 0x015E4E 05:9E3E: CD        .byte con_se_cb_CD   ; 
- D 0 - I - 0x015E4F 05:9E3F: BA 8A     .word ofs_CD_8ABA
- D 0 - I - 0x015E51 05:9E41: DB        .byte con_se_cb_DB, $0A, $1E, $82   ; 
- D 0 - I - 0x015E55 05:9E45: D8        .byte con_se_cb_D8, $FD   ; 
- D 0 - I - 0x015E57 05:9E47: C4        .byte con_se_cb_C4, $1F   ; 
- D 0 - I - 0x015E59 05:9E49: C7        .byte con_se_cb_C7, $C8   ; 
loc_D0_9E4B:
- D 0 - I - 0x015E5B 05:9E4B: D1        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x015E5C 05:9E4C: 9F 9E     .word sub_D1_9E9F
- D 0 - I - 0x015E5E 05:9E4E: D1        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x015E5F 05:9E4F: 9F 9E     .word sub_D1_9E9F
off_CE_9E51:
- D 0 - I - 0x015E61 05:9E51: 06        .byte $06   ; 
- D 0 - I - 0x015E62 05:9E52: 58        .byte $58   ; 
- D 0 - I - 0x015E63 05:9E53: 03        .byte $03   ; 
- D 0 - I - 0x015E64 05:9E54: 5D        .byte $5D   ; 
- D 0 - I - 0x015E65 05:9E55: 5F        .byte $5F   ; 
- D 0 - I - 0x015E66 05:9E56: 06        .byte $06   ; 
- D 0 - I - 0x015E67 05:9E57: 67        .byte $67   ; 
- D 0 - I - 0x015E68 05:9E58: A4        .byte $A4   ; 
- D 0 - I - 0x015E69 05:9E59: 80        .byte $80   ; 
- D 0 - I - 0x015E6A 05:9E5A: 64        .byte $64   ; 
- D 0 - I - 0x015E6B 05:9E5B: 03        .byte $03   ; 
- D 0 - I - 0x015E6C 05:9E5C: 5D        .byte $5D   ; 
- D 0 - I - 0x015E6D 05:9E5D: 5F        .byte $5F   ; 
- D 0 - I - 0x015E6E 05:9E5E: 06        .byte $06   ; 
- D 0 - I - 0x015E6F 05:9E5F: 62        .byte $62   ; 
- D 0 - I - 0x015E70 05:9E60: 64        .byte $64   ; 
- D 0 - I - 0x015E71 05:9E61: CE        .byte con_se_cb_loop_1, $02   ; 
- D 0 - I - 0x015E73 05:9E63: 51 9E     .word off_CE_9E51
- D 0 - I - 0x015E75 05:9E65: D1        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x015E76 05:9E66: 9F 9E     .word sub_D1_9E9F
- D 0 - I - 0x015E78 05:9E68: 06        .byte $06   ; 
- D 0 - I - 0x015E79 05:9E69: 5B        .byte $5B   ; 
- D 0 - I - 0x015E7A 05:9E6A: 03        .byte $03   ; 
- D 0 - I - 0x015E7B 05:9E6B: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015E7C 05:9E6C: 9B        .byte $9B   ; 
- D 0 - I - 0x015E7D 05:9E6D: 80        .byte $80   ; 
- D 0 - I - 0x015E7E 05:9E6E: 06        .byte $06   ; 
- D 0 - I - 0x015E7F 05:9E6F: 5B        .byte $5B   ; 
- D 0 - I - 0x015E80 05:9E70: 5A        .byte $5A   ; 
- D 0 - I - 0x015E81 05:9E71: 18        .byte $18   ; 
- D 0 - I - 0x015E82 05:9E72: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015E83 05:9E73: 06        .byte $06   ; 
- D 0 - I - 0x015E84 05:9E74: 58        .byte $58   ; 
- D 0 - I - 0x015E85 05:9E75: 03        .byte $03   ; 
- D 0 - I - 0x015E86 05:9E76: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015E87 05:9E77: 98        .byte $98   ; 
- D 0 - I - 0x015E88 05:9E78: 80        .byte $80   ; 
- D 0 - I - 0x015E89 05:9E79: 06        .byte $06   ; 
- D 0 - I - 0x015E8A 05:9E7A: 58        .byte $58   ; 
- D 0 - I - 0x015E8B 05:9E7B: 5A        .byte $5A   ; 
- D 0 - I - 0x015E8C 05:9E7C: 18        .byte $18   ; 
- D 0 - I - 0x015E8D 05:9E7D: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015E8E 05:9E7E: 06        .byte $06   ; 
- D 0 - I - 0x015E8F 05:9E7F: 5B        .byte $5B   ; 
- D 0 - I - 0x015E90 05:9E80: 03        .byte $03   ; 
- D 0 - I - 0x015E91 05:9E81: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015E92 05:9E82: 9B        .byte $9B   ; 
- D 0 - I - 0x015E93 05:9E83: 80        .byte $80   ; 
- D 0 - I - 0x015E94 05:9E84: 06        .byte $06   ; 
- D 0 - I - 0x015E95 05:9E85: 5B        .byte $5B   ; 
- D 0 - I - 0x015E96 05:9E86: 5A        .byte $5A   ; 
- D 0 - I - 0x015E97 05:9E87: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015E98 05:9E88: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015E99 05:9E89: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015E9A 05:9E8A: 98        .byte $98   ; 
- D 0 - I - 0x015E9B 05:9E8B: 80        .byte $80   ; 
- D 0 - I - 0x015E9C 05:9E8C: 58        .byte $58   ; 
- D 0 - I - 0x015E9D 05:9E8D: 03        .byte $03   ; 
- D 0 - I - 0x015E9E 05:9E8E: 5A        .byte $5A   ; 
- D 0 - I - 0x015E9F 05:9E8F: 5D        .byte $5D   ; 
- D 0 - I - 0x015EA0 05:9E90: 5E        .byte $5E   ; 
- D 0 - I - 0x015EA1 05:9E91: 61        .byte $61   ; 
- D 0 - I - 0x015EA2 05:9E92: 64        .byte $64   ; 
- D 0 - I - 0x015EA3 05:9E93: 66        .byte $66   ; 
- D 0 - I - 0x015EA4 05:9E94: 67        .byte $67   ; 
- D 0 - I - 0x015EA5 05:9E95: 69        .byte $69   ; 
- D 0 - I - 0x015EA6 05:9E96: 67        .byte $67   ; 
- D 0 - I - 0x015EA7 05:9E97: 66        .byte $66   ; 
- D 0 - I - 0x015EA8 05:9E98: 64        .byte $64   ; 
- D 0 - I - 0x015EA9 05:9E99: 62        .byte $62   ; 
- D 0 - I - 0x015EAA 05:9E9A: 61        .byte $61   ; 
- D 0 - I - 0x015EAB 05:9E9B: 5F        .byte $5F   ; 
- D 0 - I - 0x015EAC 05:9E9C: D0        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x015EAD 05:9E9D: 4B 9E     .word loc_D0_9E4B



sub_D1_9E9F:
- D 0 - I - 0x015EAF 05:9E9F: 06        .byte $06   ; 
- D 0 - I - 0x015EB0 05:9EA0: 53        .byte $53   ; 
- D 0 - I - 0x015EB1 05:9EA1: 03        .byte $03   ; 
- D 0 - I - 0x015EB2 05:9EA2: 58        .byte $58   ; 
- D 0 - I - 0x015EB3 05:9EA3: 5A        .byte $5A   ; 
- D 0 - I - 0x015EB4 05:9EA4: 06        .byte $06   ; 
- D 0 - I - 0x015EB5 05:9EA5: 62        .byte $62   ; 
- D 0 - I - 0x015EB6 05:9EA6: 9F        .byte $9F   ; 
- D 0 - I - 0x015EB7 05:9EA7: 80        .byte $80   ; 
- D 0 - I - 0x015EB8 05:9EA8: 5F        .byte $5F   ; 
- D 0 - I - 0x015EB9 05:9EA9: 03        .byte $03   ; 
- D 0 - I - 0x015EBA 05:9EAA: 58        .byte $58   ; 
- D 0 - I - 0x015EBB 05:9EAB: 5A        .byte $5A   ; 
- D 0 - I - 0x015EBC 05:9EAC: 06        .byte $06   ; 
- D 0 - I - 0x015EBD 05:9EAD: 5D        .byte $5D   ; 
- D 0 - I - 0x015EBE 05:9EAE: 5F        .byte $5F   ; 
- D 0 - I - 0x015EBF 05:9EAF: 53        .byte $53   ; 
- D 0 - I - 0x015EC0 05:9EB0: 03        .byte $03   ; 
- D 0 - I - 0x015EC1 05:9EB1: 58        .byte $58   ; 
- D 0 - I - 0x015EC2 05:9EB2: 5A        .byte $5A   ; 
- D 0 - I - 0x015EC3 05:9EB3: 62        .byte $62   ; 
- D 0 - I - 0x015EC4 05:9EB4: 64        .byte $64   ; 
- D 0 - I - 0x015EC5 05:9EB5: 06        .byte $06   ; 
- D 0 - I - 0x015EC6 05:9EB6: A2        .byte $A2   ; 
- D 0 - I - 0x015EC7 05:9EB7: 80        .byte $80   ; 
- D 0 - I - 0x015EC8 05:9EB8: 62        .byte $62   ; 
- D 0 - I - 0x015EC9 05:9EB9: 03        .byte $03   ; 
- D 0 - I - 0x015ECA 05:9EBA: 64        .byte $64   ; 
- D 0 - I - 0x015ECB 05:9EBB: 66        .byte $66   ; 
- D 0 - I - 0x015ECC 05:9EBC: 64        .byte $64   ; 
- D 0 - I - 0x015ECD 05:9EBD: 62        .byte $62   ; 
- D 0 - I - 0x015ECE 05:9EBE: 5F        .byte $5F   ; 
- D 0 - I - 0x015ECF 05:9EBF: 5D        .byte $5D   ; 
- D 0 - I - 0x015ED0 05:9EC0: D2        .byte con_se_cb_rts   ; 



off_ch_06_9EC1_01:
- D 0 - I - 0x015ED1 05:9EC1: CD        .byte con_se_cb_CD   ; 
- D 0 - I - 0x015ED2 05:9EC2: BA 8A     .word ofs_CD_8ABA
- D 0 - I - 0x015ED4 05:9EC4: DB        .byte con_se_cb_DB, $0A, $1E, $82   ; 
- D 0 - I - 0x015ED8 05:9EC8: D8        .byte con_se_cb_D8, $FD   ; 
- D 0 - I - 0x015EDA 05:9ECA: C4        .byte con_se_cb_C4, $1F   ; 
- D 0 - I - 0x015EDC 05:9ECC: C7        .byte con_se_cb_C7, $C8   ; 
loc_D0_9ECE:
- D 0 - I - 0x015EDE 05:9ECE: 06        .byte $06   ; 
- D 0 - I - 0x015EDF 05:9ECF: 56        .byte $56   ; 
- D 0 - I - 0x015EE0 05:9ED0: 03        .byte $03   ; 
- D 0 - I - 0x015EE1 05:9ED1: 5B        .byte $5B   ; 
- D 0 - I - 0x015EE2 05:9ED2: 5D        .byte $5D   ; 
- D 0 - I - 0x015EE3 05:9ED3: 06        .byte $06   ; 
- D 0 - I - 0x015EE4 05:9ED4: 66        .byte $66   ; 
- D 0 - I - 0x015EE5 05:9ED5: A2        .byte $A2   ; 
- D 0 - I - 0x015EE6 05:9ED6: 80        .byte $80   ; 
- D 0 - I - 0x015EE7 05:9ED7: 62        .byte $62   ; 
- D 0 - I - 0x015EE8 05:9ED8: 03        .byte $03   ; 
- D 0 - I - 0x015EE9 05:9ED9: 5B        .byte $5B   ; 
- D 0 - I - 0x015EEA 05:9EDA: 5D        .byte $5D   ; 
- D 0 - I - 0x015EEB 05:9EDB: 06        .byte $06   ; 
- D 0 - I - 0x015EEC 05:9EDC: 61        .byte $61   ; 
- D 0 - I - 0x015EED 05:9EDD: 62        .byte $62   ; 
- D 0 - I - 0x015EEE 05:9EDE: 06        .byte $06   ; 
- D 0 - I - 0x015EEF 05:9EDF: 56        .byte $56   ; 
- D 0 - I - 0x015EF0 05:9EE0: 03        .byte $03   ; 
- D 0 - I - 0x015EF1 05:9EE1: 5B        .byte $5B   ; 
- D 0 - I - 0x015EF2 05:9EE2: 5D        .byte $5D   ; 
- D 0 - I - 0x015EF3 05:9EE3: 66        .byte $66   ; 
- D 0 - I - 0x015EF4 05:9EE4: 67        .byte $67   ; 
- D 0 - I - 0x015EF5 05:9EE5: 06        .byte $06   ; 
- D 0 - I - 0x015EF6 05:9EE6: A6        .byte $A6   ; 
- D 0 - I - 0x015EF7 05:9EE7: 80        .byte $80   ; 
- D 0 - I - 0x015EF8 05:9EE8: 66        .byte $66   ; 
- D 0 - I - 0x015EF9 05:9EE9: 03        .byte $03   ; 
- D 0 - I - 0x015EFA 05:9EEA: 70        .byte $70   ; 
- D 0 - I - 0x015EFB 05:9EEB: 72        .byte $72   ; 
- D 0 - I - 0x015EFC 05:9EEC: 70        .byte $70   ; 
- D 0 - I - 0x015EFD 05:9EED: 6E        .byte $6E   ; 
- D 0 - I - 0x015EFE 05:9EEE: 6B        .byte $6B   ; 
- D 0 - I - 0x015EFF 05:9EEF: 69        .byte $69   ; 
- D 0 - I - 0x015F00 05:9EF0: D1        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x015F01 05:9EF1: 4D 9F     .word sub_D1_9F4D
- D 0 - I - 0x015F03 05:9EF3: 06        .byte $06   ; 
- D 0 - I - 0x015F04 05:9EF4: 5B        .byte $5B   ; 
- D 0 - I - 0x015F05 05:9EF5: 03        .byte $03   ; 
- D 0 - I - 0x015F06 05:9EF6: 61        .byte $61   ; 
- D 0 - I - 0x015F07 05:9EF7: 62        .byte $62   ; 
- D 0 - I - 0x015F08 05:9EF8: 06        .byte $06   ; 
- D 0 - I - 0x015F09 05:9EF9: 6B        .byte $6B   ; 
- D 0 - I - 0x015F0A 05:9EFA: A7        .byte $A7   ; 
- D 0 - I - 0x015F0B 05:9EFB: 80        .byte $80   ; 
- D 0 - I - 0x015F0C 05:9EFC: 67        .byte $67   ; 
- D 0 - I - 0x015F0D 05:9EFD: 03        .byte $03   ; 
- D 0 - I - 0x015F0E 05:9EFE: 61        .byte $61   ; 
- D 0 - I - 0x015F0F 05:9EFF: 62        .byte $62   ; 
- D 0 - I - 0x015F10 05:9F00: 06        .byte $06   ; 
- D 0 - I - 0x015F11 05:9F01: 64        .byte $64   ; 
- D 0 - I - 0x015F12 05:9F02: 67        .byte $67   ; 
- D 0 - I - 0x015F13 05:9F03: 06        .byte $06   ; 
- D 0 - I - 0x015F14 05:9F04: 5B        .byte $5B   ; 
- D 0 - I - 0x015F15 05:9F05: 03        .byte $03   ; 
- D 0 - I - 0x015F16 05:9F06: 61        .byte $61   ; 
- D 0 - I - 0x015F17 05:9F07: 62        .byte $62   ; 
- D 0 - I - 0x015F18 05:9F08: 06        .byte $06   ; 
- D 0 - I - 0x015F19 05:9F09: 6B        .byte $6B   ; 
- D 0 - I - 0x015F1A 05:9F0A: A7        .byte $A7   ; 
- D 0 - I - 0x015F1B 05:9F0B: 80        .byte $80   ; 
- D 0 - I - 0x015F1C 05:9F0C: 67        .byte $67   ; 
- D 0 - I - 0x015F1D 05:9F0D: 03        .byte $03   ; 
- D 0 - I - 0x015F1E 05:9F0E: 61        .byte $61   ; 
- D 0 - I - 0x015F1F 05:9F0F: 62        .byte $62   ; 
- D 0 - I - 0x015F20 05:9F10: 06        .byte $06   ; 
- D 0 - I - 0x015F21 05:9F11: 66        .byte $66   ; 
- D 0 - I - 0x015F22 05:9F12: 67        .byte $67   ; 
- D 0 - I - 0x015F23 05:9F13: D1        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x015F24 05:9F14: 4D 9F     .word sub_D1_9F4D
- D 0 - I - 0x015F26 05:9F16: 06        .byte $06   ; 
- D 0 - I - 0x015F27 05:9F17: 62        .byte $62   ; 
- D 0 - I - 0x015F28 05:9F18: 03        .byte $03   ; 
- D 0 - I - 0x015F29 05:9F19: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015F2A 05:9F1A: A2        .byte $A2   ; 
- D 0 - I - 0x015F2B 05:9F1B: 80        .byte $80   ; 
- D 0 - I - 0x015F2C 05:9F1C: 06        .byte $06   ; 
- D 0 - I - 0x015F2D 05:9F1D: 62        .byte $62   ; 
- D 0 - I - 0x015F2E 05:9F1E: 61        .byte $61   ; 
- D 0 - I - 0x015F2F 05:9F1F: 18        .byte $18   ; 
- D 0 - I - 0x015F30 05:9F20: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015F31 05:9F21: 06        .byte $06   ; 
- D 0 - I - 0x015F32 05:9F22: 5F        .byte $5F   ; 
- D 0 - I - 0x015F33 05:9F23: 03        .byte $03   ; 
- D 0 - I - 0x015F34 05:9F24: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015F35 05:9F25: 9F        .byte $9F   ; 
- D 0 - I - 0x015F36 05:9F26: 80        .byte $80   ; 
- D 0 - I - 0x015F37 05:9F27: 06        .byte $06   ; 
- D 0 - I - 0x015F38 05:9F28: 5F        .byte $5F   ; 
- D 0 - I - 0x015F39 05:9F29: 61        .byte $61   ; 
- D 0 - I - 0x015F3A 05:9F2A: 18        .byte $18   ; 
- D 0 - I - 0x015F3B 05:9F2B: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015F3C 05:9F2C: 06        .byte $06   ; 
- D 0 - I - 0x015F3D 05:9F2D: 62        .byte $62   ; 
- D 0 - I - 0x015F3E 05:9F2E: 03        .byte $03   ; 
- D 0 - I - 0x015F3F 05:9F2F: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015F40 05:9F30: A2        .byte $A2   ; 
- D 0 - I - 0x015F41 05:9F31: 80        .byte $80   ; 
- D 0 - I - 0x015F42 05:9F32: 06        .byte $06   ; 
- D 0 - I - 0x015F43 05:9F33: 62        .byte $62   ; 
- D 0 - I - 0x015F44 05:9F34: 61        .byte $61   ; 
- D 0 - I - 0x015F45 05:9F35: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015F46 05:9F36: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015F47 05:9F37: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015F48 05:9F38: 9F        .byte $9F   ; 
- D 0 - I - 0x015F49 05:9F39: 80        .byte $80   ; 
- D 0 - I - 0x015F4A 05:9F3A: 5F        .byte $5F   ; 
- D 0 - I - 0x015F4B 05:9F3B: 03        .byte $03   ; 
- D 0 - I - 0x015F4C 05:9F3C: 5D        .byte $5D   ; 
- D 0 - I - 0x015F4D 05:9F3D: 61        .byte $61   ; 
- D 0 - I - 0x015F4E 05:9F3E: 62        .byte $62   ; 
- D 0 - I - 0x015F4F 05:9F3F: 64        .byte $64   ; 
- D 0 - I - 0x015F50 05:9F40: 67        .byte $67   ; 
- D 0 - I - 0x015F51 05:9F41: 69        .byte $69   ; 
- D 0 - I - 0x015F52 05:9F42: 6B        .byte $6B   ; 
- D 0 - I - 0x015F53 05:9F43: 6D        .byte $6D   ; 
- D 0 - I - 0x015F54 05:9F44: 6B        .byte $6B   ; 
- D 0 - I - 0x015F55 05:9F45: 69        .byte $69   ; 
- D 0 - I - 0x015F56 05:9F46: 67        .byte $67   ; 
- D 0 - I - 0x015F57 05:9F47: 66        .byte $66   ; 
- D 0 - I - 0x015F58 05:9F48: 64        .byte $64   ; 
- D 0 - I - 0x015F59 05:9F49: 62        .byte $62   ; 
- D 0 - I - 0x015F5A 05:9F4A: D0        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x015F5B 05:9F4B: CE 9E     .word loc_D0_9ECE



sub_D1_9F4D:
- D 0 - I - 0x015F5D 05:9F4D: 06        .byte $06   ; 
- D 0 - I - 0x015F5E 05:9F4E: 56        .byte $56   ; 
- D 0 - I - 0x015F5F 05:9F4F: 03        .byte $03   ; 
- D 0 - I - 0x015F60 05:9F50: 5B        .byte $5B   ; 
- D 0 - I - 0x015F61 05:9F51: 5D        .byte $5D   ; 
- D 0 - I - 0x015F62 05:9F52: 06        .byte $06   ; 
- D 0 - I - 0x015F63 05:9F53: 66        .byte $66   ; 
- D 0 - I - 0x015F64 05:9F54: A2        .byte $A2   ; 
- D 0 - I - 0x015F65 05:9F55: 80        .byte $80   ; 
- D 0 - I - 0x015F66 05:9F56: 62        .byte $62   ; 
- D 0 - I - 0x015F67 05:9F57: 03        .byte $03   ; 
- D 0 - I - 0x015F68 05:9F58: 5B        .byte $5B   ; 
- D 0 - I - 0x015F69 05:9F59: 5D        .byte $5D   ; 
- D 0 - I - 0x015F6A 05:9F5A: 06        .byte $06   ; 
- D 0 - I - 0x015F6B 05:9F5B: 61        .byte $61   ; 
- D 0 - I - 0x015F6C 05:9F5C: 62        .byte $62   ; 
- D 0 - I - 0x015F6D 05:9F5D: 06        .byte $06   ; 
- D 0 - I - 0x015F6E 05:9F5E: 56        .byte $56   ; 
- D 0 - I - 0x015F6F 05:9F5F: 03        .byte $03   ; 
- D 0 - I - 0x015F70 05:9F60: 5B        .byte $5B   ; 
- D 0 - I - 0x015F71 05:9F61: 5D        .byte $5D   ; 
- D 0 - I - 0x015F72 05:9F62: 66        .byte $66   ; 
- D 0 - I - 0x015F73 05:9F63: 67        .byte $67   ; 
- D 0 - I - 0x015F74 05:9F64: 06        .byte $06   ; 
- D 0 - I - 0x015F75 05:9F65: A6        .byte $A6   ; 
- D 0 - I - 0x015F76 05:9F66: 80        .byte $80   ; 
- D 0 - I - 0x015F77 05:9F67: 66        .byte $66   ; 
- D 0 - I - 0x015F78 05:9F68: 03        .byte $03   ; 
- D 0 - I - 0x015F79 05:9F69: 6D        .byte $6D   ; 
- D 0 - I - 0x015F7A 05:9F6A: 6E        .byte $6E   ; 
- D 0 - I - 0x015F7B 05:9F6B: 6D        .byte $6D   ; 
- D 0 - I - 0x015F7C 05:9F6C: 6B        .byte $6B   ; 
- D 0 - I - 0x015F7D 05:9F6D: 67        .byte $67   ; 
- D 0 - I - 0x015F7E 05:9F6E: 66        .byte $66   ; 
- D 0 - I - 0x015F7F 05:9F6F: D2        .byte con_se_cb_rts   ; 



off_ch_06_9F70_02:
- D 0 - I - 0x015F80 05:9F70: D8        .byte con_se_cb_D8, $09   ; 
- D 0 - I - 0x015F82 05:9F72: C7        .byte con_se_cb_C7, $C8   ; 
loc_D0_9F74:
- D 0 - I - 0x015F84 05:9F74: D1        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x015F85 05:9F75: C8 9F     .word sub_D1_9FC8
- D 0 - I - 0x015F87 05:9F77: D1        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x015F88 05:9F78: C8 9F     .word sub_D1_9FC8
off_CE_9F7A:
- D 0 - I - 0x015F8A 05:9F7A: 06        .byte $06   ; 
- D 0 - I - 0x015F8B 05:9F7B: 4C        .byte $4C   ; 
- D 0 - I - 0x015F8C 05:9F7C: 03        .byte $03   ; 
- D 0 - I - 0x015F8D 05:9F7D: 51        .byte $51   ; 
- D 0 - I - 0x015F8E 05:9F7E: 53        .byte $53   ; 
- D 0 - I - 0x015F8F 05:9F7F: 06        .byte $06   ; 
- D 0 - I - 0x015F90 05:9F80: 5B        .byte $5B   ; 
- D 0 - I - 0x015F91 05:9F81: 98        .byte $98   ; 
- D 0 - I - 0x015F92 05:9F82: 80        .byte $80   ; 
- D 0 - I - 0x015F93 05:9F83: 58        .byte $58   ; 
- D 0 - I - 0x015F94 05:9F84: 03        .byte $03   ; 
- D 0 - I - 0x015F95 05:9F85: 51        .byte $51   ; 
- D 0 - I - 0x015F96 05:9F86: 53        .byte $53   ; 
- D 0 - I - 0x015F97 05:9F87: 06        .byte $06   ; 
- D 0 - I - 0x015F98 05:9F88: 56        .byte $56   ; 
- D 0 - I - 0x015F99 05:9F89: 58        .byte $58   ; 
- D 0 - I - 0x015F9A 05:9F8A: CE        .byte con_se_cb_loop_1, $02   ; 
- D 0 - I - 0x015F9C 05:9F8C: 7A 9F     .word off_CE_9F7A
- D 0 - I - 0x015F9E 05:9F8E: D1        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x015F9F 05:9F8F: C8 9F     .word sub_D1_9FC8
- D 0 - I - 0x015FA1 05:9F91: 06        .byte $06   ; 
- D 0 - I - 0x015FA2 05:9F92: 4F        .byte $4F   ; 
- D 0 - I - 0x015FA3 05:9F93: 03        .byte $03   ; 
- D 0 - I - 0x015FA4 05:9F94: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015FA5 05:9F95: 8F        .byte $8F   ; 
- D 0 - I - 0x015FA6 05:9F96: 80        .byte $80   ; 
- D 0 - I - 0x015FA7 05:9F97: 06        .byte $06   ; 
- D 0 - I - 0x015FA8 05:9F98: 4F        .byte $4F   ; 
- D 0 - I - 0x015FA9 05:9F99: 4E        .byte $4E   ; 
- D 0 - I - 0x015FAA 05:9F9A: 18        .byte $18   ; 
- D 0 - I - 0x015FAB 05:9F9B: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015FAC 05:9F9C: 06        .byte $06   ; 
- D 0 - I - 0x015FAD 05:9F9D: 4C        .byte $4C   ; 
- D 0 - I - 0x015FAE 05:9F9E: 03        .byte $03   ; 
- D 0 - I - 0x015FAF 05:9F9F: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015FB0 05:9FA0: 8C        .byte $8C   ; 
- D 0 - I - 0x015FB1 05:9FA1: 80        .byte $80   ; 
- D 0 - I - 0x015FB2 05:9FA2: 06        .byte $06   ; 
- D 0 - I - 0x015FB3 05:9FA3: 4C        .byte $4C   ; 
- D 0 - I - 0x015FB4 05:9FA4: 4E        .byte $4E   ; 
- D 0 - I - 0x015FB5 05:9FA5: 18        .byte $18   ; 
- D 0 - I - 0x015FB6 05:9FA6: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015FB7 05:9FA7: 06        .byte $06   ; 
- D 0 - I - 0x015FB8 05:9FA8: 4F        .byte $4F   ; 
- D 0 - I - 0x015FB9 05:9FA9: 03        .byte $03   ; 
- D 0 - I - 0x015FBA 05:9FAA: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015FBB 05:9FAB: 8F        .byte $8F   ; 
- D 0 - I - 0x015FBC 05:9FAC: 80        .byte $80   ; 
- D 0 - I - 0x015FBD 05:9FAD: 06        .byte $06   ; 
- D 0 - I - 0x015FBE 05:9FAE: 4F        .byte $4F   ; 
- D 0 - I - 0x015FBF 05:9FAF: 4E        .byte $4E   ; 
- D 0 - I - 0x015FC0 05:9FB0: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015FC1 05:9FB1: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015FC2 05:9FB2: C9        .byte con_se_cb_C9   ; 
- D 0 - I - 0x015FC3 05:9FB3: 8C        .byte $8C   ; 
- D 0 - I - 0x015FC4 05:9FB4: 80        .byte $80   ; 
- D 0 - I - 0x015FC5 05:9FB5: 4C        .byte $4C   ; 
- D 0 - I - 0x015FC6 05:9FB6: 03        .byte $03   ; 
- D 0 - I - 0x015FC7 05:9FB7: 4E        .byte $4E   ; 
- D 0 - I - 0x015FC8 05:9FB8: 51        .byte $51   ; 
- D 0 - I - 0x015FC9 05:9FB9: 52        .byte $52   ; 
- D 0 - I - 0x015FCA 05:9FBA: 55        .byte $55   ; 
- D 0 - I - 0x015FCB 05:9FBB: 58        .byte $58   ; 
- D 0 - I - 0x015FCC 05:9FBC: 5A        .byte $5A   ; 
- D 0 - I - 0x015FCD 05:9FBD: 5B        .byte $5B   ; 
- D 0 - I - 0x015FCE 05:9FBE: 5D        .byte $5D   ; 
- D 0 - I - 0x015FCF 05:9FBF: 5B        .byte $5B   ; 
- D 0 - I - 0x015FD0 05:9FC0: 5A        .byte $5A   ; 
- D 0 - I - 0x015FD1 05:9FC1: 58        .byte $58   ; 
- D 0 - I - 0x015FD2 05:9FC2: 56        .byte $56   ; 
- D 0 - I - 0x015FD3 05:9FC3: 55        .byte $55   ; 
- D 0 - I - 0x015FD4 05:9FC4: 53        .byte $53   ; 
- D 0 - I - 0x015FD5 05:9FC5: D0        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x015FD6 05:9FC6: 74 9F     .word loc_D0_9F74



sub_D1_9FC8:
- D 0 - I - 0x015FD8 05:9FC8: 06        .byte $06   ; 
- D 0 - I - 0x015FD9 05:9FC9: 47        .byte $47   ; 
- D 0 - I - 0x015FDA 05:9FCA: 03        .byte $03   ; 
- D 0 - I - 0x015FDB 05:9FCB: 4C        .byte $4C   ; 
- D 0 - I - 0x015FDC 05:9FCC: 4E        .byte $4E   ; 
- D 0 - I - 0x015FDD 05:9FCD: 06        .byte $06   ; 
- D 0 - I - 0x015FDE 05:9FCE: 56        .byte $56   ; 
- D 0 - I - 0x015FDF 05:9FCF: 93        .byte $93   ; 
- D 0 - I - 0x015FE0 05:9FD0: 80        .byte $80   ; 
- D 0 - I - 0x015FE1 05:9FD1: 53        .byte $53   ; 
- D 0 - I - 0x015FE2 05:9FD2: 03        .byte $03   ; 
- D 0 - I - 0x015FE3 05:9FD3: 4C        .byte $4C   ; 
- D 0 - I - 0x015FE4 05:9FD4: 4E        .byte $4E   ; 
- D 0 - I - 0x015FE5 05:9FD5: 06        .byte $06   ; 
- D 0 - I - 0x015FE6 05:9FD6: 51        .byte $51   ; 
- D 0 - I - 0x015FE7 05:9FD7: 53        .byte $53   ; 
- D 0 - I - 0x015FE8 05:9FD8: 06        .byte $06   ; 
- D 0 - I - 0x015FE9 05:9FD9: 47        .byte $47   ; 
- D 0 - I - 0x015FEA 05:9FDA: 03        .byte $03   ; 
- D 0 - I - 0x015FEB 05:9FDB: 4C        .byte $4C   ; 
- D 0 - I - 0x015FEC 05:9FDC: 4E        .byte $4E   ; 
- D 0 - I - 0x015FED 05:9FDD: 56        .byte $56   ; 
- D 0 - I - 0x015FEE 05:9FDE: 58        .byte $58   ; 
- D 0 - I - 0x015FEF 05:9FDF: 06        .byte $06   ; 
- D 0 - I - 0x015FF0 05:9FE0: 96        .byte $96   ; 
- D 0 - I - 0x015FF1 05:9FE1: 80        .byte $80   ; 
- D 0 - I - 0x015FF2 05:9FE2: 56        .byte $56   ; 
- D 0 - I - 0x015FF3 05:9FE3: 03        .byte $03   ; 
- D 0 - I - 0x015FF4 05:9FE4: 58        .byte $58   ; 
- D 0 - I - 0x015FF5 05:9FE5: 5A        .byte $5A   ; 
- D 0 - I - 0x015FF6 05:9FE6: 58        .byte $58   ; 
- D 0 - I - 0x015FF7 05:9FE7: 56        .byte $56   ; 
- D 0 - I - 0x015FF8 05:9FE8: 53        .byte $53   ; 
- D 0 - I - 0x015FF9 05:9FE9: 51        .byte $51   ; 
- D 0 - I - 0x015FFA 05:9FEA: D2        .byte con_se_cb_rts   ; 



off_ch_06_9FEB_03:
- D 0 - I - 0x015FFB 05:9FEB: CD        .byte con_se_cb_CD   ; 
- D 0 - I - 0x015FFC 05:9FEC: F3 8B     .word ofs_CD_8BF3
- D 0 - I - 0x015FFE 05:9FEE: C4        .byte con_se_cb_C4, $23   ; 
loc_D0_9FF0:
- D 0 - I - 0x016000 05:9FF0: D1        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x016001 05:9FF1: 0E A0     .word sub_D1_A00E
- D 0 - I - 0x016003 05:9FF3: D1        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x016004 05:9FF4: 0E A0     .word sub_D1_A00E
- D 0 - I - 0x016006 05:9FF6: 06        .byte $06   ; 
- D 0 - I - 0x016007 05:9FF7: 41        .byte $41   ; 
- D 0 - I - 0x016008 05:9FF8: 41        .byte $41   ; 
- D 0 - I - 0x016009 05:9FF9: 42        .byte $42   ; 
- D 0 - I - 0x01600A 05:9FFA: 41        .byte $41   ; 
- D 0 - I - 0x01600B 05:9FFB: 41        .byte $41   ; 
- D 0 - I - 0x01600C 05:9FFC: 41        .byte $41   ; 
- D 0 - I - 0x01600D 05:9FFD: 4C        .byte $4C   ; 
- D 0 - I - 0x01600E 05:9FFE: 4C        .byte $4C   ; 
- D 0 - I - 0x01600F 05:9FFF: D1        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x016010 05:A000: 0E A0     .word sub_D1_A00E
- D 1 - I - 0x016012 05:A002: 0C        .byte $0C   ; 
- D 1 - I - 0x016013 05:A003: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016014 05:A004: 06        .byte $06   ; 
- D 1 - I - 0x016015 05:A005: 41        .byte $41   ; 
- D 1 - I - 0x016016 05:A006: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016017 05:A007: 41        .byte $41   ; 
- D 1 - I - 0x016018 05:A008: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016019 05:A009: 4C        .byte $4C   ; 
- D 1 - I - 0x01601A 05:A00A: 4C        .byte $4C   ; 
- D 1 - I - 0x01601B 05:A00B: D0        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x01601C 05:A00C: F0 9F     .word loc_D0_9FF0



sub_D1_A00E:
- D 1 - I - 0x01601E 05:A00E: 0C        .byte $0C   ; 
- D 1 - I - 0x01601F 05:A00F: 43        .byte $43   ; 
- D 1 - I - 0x016020 05:A010: 06        .byte $06   ; 
- D 1 - I - 0x016021 05:A011: 42        .byte $42   ; 
- D 1 - I - 0x016022 05:A012: 41        .byte $41   ; 
- D 1 - I - 0x016023 05:A013: 41        .byte $41   ; 
- D 1 - I - 0x016024 05:A014: 41        .byte $41   ; 
- D 1 - I - 0x016025 05:A015: 4C        .byte $4C   ; 
- D 1 - I - 0x016026 05:A016: 41        .byte $41   ; 
- D 1 - I - 0x016027 05:A017: 41        .byte $41   ; 
- D 1 - I - 0x016028 05:A018: 41        .byte $41   ; 
- D 1 - I - 0x016029 05:A019: 42        .byte $42   ; 
- D 1 - I - 0x01602A 05:A01A: 41        .byte $41   ; 
- D 1 - I - 0x01602B 05:A01B: 41        .byte $41   ; 
- D 1 - I - 0x01602C 05:A01C: 41        .byte $41   ; 
- D 1 - I - 0x01602D 05:A01D: 4C        .byte $4C   ; 
- D 1 - I - 0x01602E 05:A01E: 41        .byte $41   ; 
- D 1 - I - 0x01602F 05:A01F: 41        .byte $41   ; 
- D 1 - I - 0x016030 05:A020: 41        .byte $41   ; 
- D 1 - I - 0x016031 05:A021: 42        .byte $42   ; 
- D 1 - I - 0x016032 05:A022: 41        .byte $41   ; 
- D 1 - I - 0x016033 05:A023: 41        .byte $41   ; 
- D 1 - I - 0x016034 05:A024: 41        .byte $41   ; 
- D 1 - I - 0x016035 05:A025: 4C        .byte $4C   ; 
- D 1 - I - 0x016036 05:A026: 41        .byte $41   ; 
- D 1 - I - 0x016037 05:A027: D2        .byte con_se_cb_rts   ; 


; bzk garbage
- - - - - - 0x016038 05:A028: D3        .byte con_se_cb_stop   ; 



_off013_A029_07_mission_6:
- D 1 - I - 0x016039 05:A029: FF        .byte $FF   ; 
- D 1 - I - 0x01603A 05:A02A: 00        .byte $00   ; 
- D 1 - I - 0x01603B 05:A02B: 37 A0     .word off_ch_07_A037_00
- D 1 - I - 0x01603D 05:A02D: 01        .byte $01   ; 
- D 1 - I - 0x01603E 05:A02E: 71 A0     .word off_ch_07_A071_01
- D 1 - I - 0x016040 05:A030: 02        .byte $02   ; 
- D 1 - I - 0x016041 05:A031: B9 A0     .word off_ch_07_A0B9_02
- D 1 - I - 0x016043 05:A033: 03        .byte $03   ; 
- D 1 - I - 0x016044 05:A034: FC A0     .word off_ch_07_A0FC_03
- D 1 - I - 0x016046 05:A036: FF        .byte $FF   ; 



off_ch_07_A037_00:
- D 1 - I - 0x016047 05:A037: CC        .byte con_se_cb_CC, $64   ; 
- D 1 - I - 0x016049 05:A039: DB        .byte con_se_cb_DB, $0E, $23, $A0   ; 
- D 1 - I - 0x01604D 05:A03D: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x01604E 05:A03E: 23 8B     .word ofs_CD_8B23
- D 1 - I - 0x016050 05:A040: D8        .byte con_se_cb_D8, $00   ; 
- D 1 - I - 0x016052 05:A042: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016054 05:A044: C7        .byte con_se_cb_C7, $F0   ; 
loc_D0_A046:
- D 1 - I - 0x016056 05:A046: 30        .byte $30   ; 
- D 1 - I - 0x016057 05:A047: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016058 05:A048: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016059 05:A049: 0C        .byte $0C   ; 
- D 1 - I - 0x01605A 05:A04A: 48        .byte $48   ; 
- D 1 - I - 0x01605B 05:A04B: 4B        .byte $4B   ; 
- D 1 - I - 0x01605C 05:A04C: 06        .byte $06   ; 
- D 1 - I - 0x01605D 05:A04D: 4A        .byte $4A   ; 
- D 1 - I - 0x01605E 05:A04E: 8E        .byte $8E   ; 
- D 1 - I - 0x01605F 05:A04F: 80        .byte $80   ; 
- D 1 - I - 0x016060 05:A050: 4E        .byte $4E   ; 
- D 1 - I - 0x016061 05:A051: 8D        .byte $8D   ; 
- D 1 - I - 0x016062 05:A052: 80        .byte $80   ; 
- D 1 - I - 0x016063 05:A053: 18        .byte $18   ; 
- D 1 - I - 0x016064 05:A054: 8D        .byte $8D   ; 
- D 1 - I - 0x016065 05:A055: 80        .byte $80   ; 
- D 1 - I - 0x016066 05:A056: 06        .byte $06   ; 
- D 1 - I - 0x016067 05:A057: 4D        .byte $4D   ; 
- D 1 - I - 0x016068 05:A058: 8C        .byte $8C   ; 
- D 1 - I - 0x016069 05:A059: 80        .byte $80   ; 
- D 1 - I - 0x01606A 05:A05A: 0C        .byte $0C   ; 
- D 1 - I - 0x01606B 05:A05B: 4C        .byte $4C   ; 
- D 1 - I - 0x01606C 05:A05C: 48        .byte $48   ; 
- D 1 - I - 0x01606D 05:A05D: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x01606E 05:A05E: 18        .byte $18   ; 
- D 1 - I - 0x01606F 05:A05F: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016070 05:A060: 30        .byte $30   ; 
- D 1 - I - 0x016071 05:A061: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016072 05:A062: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016073 05:A063: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016074 05:A064: 0C        .byte $0C   ; 
- D 1 - I - 0x016075 05:A065: 4F        .byte $4F   ; 
- D 1 - I - 0x016076 05:A066: 4E        .byte $4E   ; 
- D 1 - I - 0x016077 05:A067: 4D        .byte $4D   ; 
- D 1 - I - 0x016078 05:A068: 4C        .byte $4C   ; 
- D 1 - I - 0x016079 05:A069: 54        .byte $54   ; 
- D 1 - I - 0x01607A 05:A06A: 53        .byte $53   ; 
- D 1 - I - 0x01607B 05:A06B: 52        .byte $52   ; 
- D 1 - I - 0x01607C 05:A06C: 51        .byte $51   ; 
- D 1 - I - 0x01607D 05:A06D: D0        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x01607E 05:A06E: 46 A0     .word loc_D0_A046


; bzk garbage
- - - - - - 0x016080 05:A070: D3        .byte con_se_cb_stop   ; 



off_ch_07_A071_01:
- D 1 - I - 0x016081 05:A071: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x016082 05:A072: 23 8B     .word ofs_CD_8B23
- D 1 - I - 0x016084 05:A074: DB        .byte con_se_cb_DB, $0A, $23, $A0   ; 
- D 1 - I - 0x016088 05:A078: D8        .byte con_se_cb_D8, $00   ; 
- D 1 - I - 0x01608A 05:A07A: C4        .byte con_se_cb_C4, $25   ; 
- D 1 - I - 0x01608C 05:A07C: C7        .byte con_se_cb_C7, $F0   ; 
loc_D0_A07E:
- D 1 - I - 0x01608E 05:A07E: 0C        .byte $0C   ; 
- D 1 - I - 0x01608F 05:A07F: 48        .byte $48   ; 
- D 1 - I - 0x016090 05:A080: 52        .byte $52   ; 
- D 1 - I - 0x016091 05:A081: 51        .byte $51   ; 
- D 1 - I - 0x016092 05:A082: 50        .byte $50   ; 
- D 1 - I - 0x016093 05:A083: 4D        .byte $4D   ; 
- D 1 - I - 0x016094 05:A084: 54        .byte $54   ; 
- D 1 - I - 0x016095 05:A085: 53        .byte $53   ; 
- D 1 - I - 0x016096 05:A086: 52        .byte $52   ; 
- D 1 - I - 0x016097 05:A087: 4B        .byte $4B   ; 
- D 1 - I - 0x016098 05:A088: 4F        .byte $4F   ; 
- D 1 - I - 0x016099 05:A089: 06        .byte $06   ; 
- D 1 - I - 0x01609A 05:A08A: 4E        .byte $4E   ; 
- D 1 - I - 0x01609B 05:A08B: 92        .byte $92   ; 
- D 1 - I - 0x01609C 05:A08C: 80        .byte $80   ; 
- D 1 - I - 0x01609D 05:A08D: 52        .byte $52   ; 
- D 1 - I - 0x01609E 05:A08E: 91        .byte $91   ; 
- D 1 - I - 0x01609F 05:A08F: 80        .byte $80   ; 
- D 1 - I - 0x0160A0 05:A090: 18        .byte $18   ; 
- D 1 - I - 0x0160A1 05:A091: 91        .byte $91   ; 
- D 1 - I - 0x0160A2 05:A092: 80        .byte $80   ; 
- D 1 - I - 0x0160A3 05:A093: 06        .byte $06   ; 
- D 1 - I - 0x0160A4 05:A094: 51        .byte $51   ; 
- D 1 - I - 0x0160A5 05:A095: 90        .byte $90   ; 
- D 1 - I - 0x0160A6 05:A096: 80        .byte $80   ; 
- D 1 - I - 0x0160A7 05:A097: 0C        .byte $0C   ; 
- D 1 - I - 0x0160A8 05:A098: 50        .byte $50   ; 
- D 1 - I - 0x0160A9 05:A099: 4B        .byte $4B   ; 
- D 1 - I - 0x0160AA 05:A09A: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0160AB 05:A09B: 06        .byte $06   ; 
- D 1 - I - 0x0160AC 05:A09C: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0160AD 05:A09D: 4F        .byte $4F   ; 
- D 1 - I - 0x0160AE 05:A09E: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0160AF 05:A09F: 4F        .byte $4F   ; 
off_CE_A0A0:
- D 1 - I - 0x0160B0 05:A0A0: 0C        .byte $0C   ; 
- D 1 - I - 0x0160B1 05:A0A1: 4F        .byte $4F   ; 
- D 1 - I - 0x0160B2 05:A0A2: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0160B3 05:A0A3: 06        .byte $06   ; 
- D 1 - I - 0x0160B4 05:A0A4: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0160B5 05:A0A5: 4F        .byte $4F   ; 
- D 1 - I - 0x0160B6 05:A0A6: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0160B7 05:A0A7: 4F        .byte $4F   ; 
- D 1 - I - 0x0160B8 05:A0A8: CE        .byte con_se_cb_loop_1, $03   ; 
- D 1 - I - 0x0160BA 05:A0AA: A0 A0     .word off_CE_A0A0
- D 1 - I - 0x0160BC 05:A0AC: 0C        .byte $0C   ; 
- D 1 - I - 0x0160BD 05:A0AD: 4F        .byte $4F   ; 
- D 1 - I - 0x0160BE 05:A0AE: 4E        .byte $4E   ; 
- D 1 - I - 0x0160BF 05:A0AF: 4D        .byte $4D   ; 
- D 1 - I - 0x0160C0 05:A0B0: 4C        .byte $4C   ; 
- D 1 - I - 0x0160C1 05:A0B1: 54        .byte $54   ; 
- D 1 - I - 0x0160C2 05:A0B2: 53        .byte $53   ; 
- D 1 - I - 0x0160C3 05:A0B3: 52        .byte $52   ; 
- D 1 - I - 0x0160C4 05:A0B4: 51        .byte $51   ; 
- D 1 - I - 0x0160C5 05:A0B5: D0        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x0160C6 05:A0B6: 7E A0     .word loc_D0_A07E


; bzk garbage
- - - - - - 0x0160C8 05:A0B8: D3        .byte con_se_cb_stop   ; 



off_ch_07_A0B9_02:
- D 1 - I - 0x0160C9 05:A0B9: D8        .byte con_se_cb_D8, $0C   ; 
- D 1 - I - 0x0160CB 05:A0BB: C7        .byte con_se_cb_C7, $F0   ; 
- D 1 - I - 0x0160CD 05:A0BD: DB        .byte con_se_cb_DB, $08, $1C, $78   ; 
loc_D0_A0C1:
- D 1 - I - 0x0160D1 05:A0C1: 0C        .byte $0C   ; 
- D 1 - I - 0x0160D2 05:A0C2: 48        .byte $48   ; 
- D 1 - I - 0x0160D3 05:A0C3: 52        .byte $52   ; 
- D 1 - I - 0x0160D4 05:A0C4: 51        .byte $51   ; 
- D 1 - I - 0x0160D5 05:A0C5: 50        .byte $50   ; 
- D 1 - I - 0x0160D6 05:A0C6: 4D        .byte $4D   ; 
- D 1 - I - 0x0160D7 05:A0C7: 54        .byte $54   ; 
- D 1 - I - 0x0160D8 05:A0C8: 53        .byte $53   ; 
- D 1 - I - 0x0160D9 05:A0C9: 52        .byte $52   ; 
- D 1 - I - 0x0160DA 05:A0CA: 48        .byte $48   ; 
- D 1 - I - 0x0160DB 05:A0CB: 4B        .byte $4B   ; 
- D 1 - I - 0x0160DC 05:A0CC: 06        .byte $06   ; 
- D 1 - I - 0x0160DD 05:A0CD: 4A        .byte $4A   ; 
- D 1 - I - 0x0160DE 05:A0CE: 8E        .byte $8E   ; 
- D 1 - I - 0x0160DF 05:A0CF: 80        .byte $80   ; 
- D 1 - I - 0x0160E0 05:A0D0: 4E        .byte $4E   ; 
- D 1 - I - 0x0160E1 05:A0D1: 8D        .byte $8D   ; 
- D 1 - I - 0x0160E2 05:A0D2: 80        .byte $80   ; 
- D 1 - I - 0x0160E3 05:A0D3: 18        .byte $18   ; 
- D 1 - I - 0x0160E4 05:A0D4: 8D        .byte $8D   ; 
- D 1 - I - 0x0160E5 05:A0D5: 80        .byte $80   ; 
- D 1 - I - 0x0160E6 05:A0D6: 06        .byte $06   ; 
- D 1 - I - 0x0160E7 05:A0D7: 4D        .byte $4D   ; 
- D 1 - I - 0x0160E8 05:A0D8: 8C        .byte $8C   ; 
- D 1 - I - 0x0160E9 05:A0D9: 80        .byte $80   ; 
- D 1 - I - 0x0160EA 05:A0DA: 0C        .byte $0C   ; 
- D 1 - I - 0x0160EB 05:A0DB: 4C        .byte $4C   ; 
- D 1 - I - 0x0160EC 05:A0DC: 48        .byte $48   ; 
- D 1 - I - 0x0160ED 05:A0DD: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0160EE 05:A0DE: 06        .byte $06   ; 
- D 1 - I - 0x0160EF 05:A0DF: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0160F0 05:A0E0: 54        .byte $54   ; 
- D 1 - I - 0x0160F1 05:A0E1: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0160F2 05:A0E2: 54        .byte $54   ; 
off_CE_A0E3:
- D 1 - I - 0x0160F3 05:A0E3: 0C        .byte $0C   ; 
- D 1 - I - 0x0160F4 05:A0E4: 54        .byte $54   ; 
- D 1 - I - 0x0160F5 05:A0E5: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0160F6 05:A0E6: 06        .byte $06   ; 
- D 1 - I - 0x0160F7 05:A0E7: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0160F8 05:A0E8: 54        .byte $54   ; 
- D 1 - I - 0x0160F9 05:A0E9: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0160FA 05:A0EA: 54        .byte $54   ; 
- D 1 - I - 0x0160FB 05:A0EB: CE        .byte con_se_cb_loop_1, $03   ; 
- D 1 - I - 0x0160FD 05:A0ED: E3 A0     .word off_CE_A0E3
- D 1 - I - 0x0160FF 05:A0EF: 0C        .byte $0C   ; 
- D 1 - I - 0x016100 05:A0F0: 4F        .byte $4F   ; 
- D 1 - I - 0x016101 05:A0F1: 4E        .byte $4E   ; 
- D 1 - I - 0x016102 05:A0F2: 4D        .byte $4D   ; 
- D 1 - I - 0x016103 05:A0F3: 4C        .byte $4C   ; 
- D 1 - I - 0x016104 05:A0F4: 4B        .byte $4B   ; 
- D 1 - I - 0x016105 05:A0F5: 4A        .byte $4A   ; 
- D 1 - I - 0x016106 05:A0F6: 49        .byte $49   ; 
- D 1 - I - 0x016107 05:A0F7: 48        .byte $48   ; 
- D 1 - I - 0x016108 05:A0F8: D0        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x016109 05:A0F9: C1 A0     .word loc_D0_A0C1


; bzk garbage
- - - - - - 0x01610B 05:A0FB: D3        .byte con_se_cb_stop   ; 



off_ch_07_A0FC_03:
- D 1 - I - 0x01610C 05:A0FC: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x01610D 05:A0FD: F3 8B     .word ofs_CD_8BF3
- D 1 - I - 0x01610F 05:A0FF: C4        .byte con_se_cb_C4, $1B   ; 
- D 1 - I - 0x016111 05:A101: C7        .byte con_se_cb_C7, $FF   ; 
loc_D0_A103:
- D 1 - I - 0x016113 05:A103: 18        .byte $18   ; 
- D 1 - I - 0x016114 05:A104: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016115 05:A105: 24        .byte $24   ; 
- D 1 - I - 0x016116 05:A106: 4A        .byte $4A   ; 
- D 1 - I - 0x016117 05:A107: 4D        .byte $4D   ; 
- D 1 - I - 0x016118 05:A108: 0C        .byte $0C   ; 
- D 1 - I - 0x016119 05:A109: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x01611A 05:A10A: 24        .byte $24   ; 
- D 1 - I - 0x01611B 05:A10B: 4E        .byte $4E   ; 
- D 1 - I - 0x01611C 05:A10C: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x01611D 05:A10D: 4A        .byte $4A   ; 
- D 1 - I - 0x01611E 05:A10E: 30        .byte $30   ; 
- D 1 - I - 0x01611F 05:A10F: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016120 05:A110: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016121 05:A111: D0        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x016122 05:A112: 03 A1     .word loc_D0_A103



_off013_A114_08_boss_normal:
- D 1 - I - 0x016124 05:A114: FF        .byte $FF   ; 
- D 1 - I - 0x016125 05:A115: 00        .byte $00   ; 
- D 1 - I - 0x016126 05:A116: 22 A1     .word off_ch_08_A122_00
- D 1 - I - 0x016128 05:A118: 01        .byte $01   ; 
- D 1 - I - 0x016129 05:A119: 87 A1     .word off_ch_08_A187_01
- D 1 - I - 0x01612B 05:A11B: 02        .byte $02   ; 
- D 1 - I - 0x01612C 05:A11C: FA A1     .word off_ch_08_A1FA_02
- D 1 - I - 0x01612E 05:A11E: 03        .byte $03   ; 
- D 1 - I - 0x01612F 05:A11F: E8 A2     .word off_ch_08_A2E8_03
- D 1 - I - 0x016131 05:A121: FF        .byte $FF   ; 



off_ch_08_A122_00:
- D 1 - I - 0x016132 05:A122: CC        .byte con_se_cb_CC, $64   ; 
- D 1 - I - 0x016134 05:A124: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x016135 05:A125: 2F 8B     .word ofs_CD_8B2F
- D 1 - I - 0x016137 05:A127: DB        .byte con_se_cb_DB, $18, $1E, $D2   ; 
- D 1 - I - 0x01613B 05:A12B: D8        .byte con_se_cb_D8, $04   ; 
- D 1 - I - 0x01613D 05:A12D: C4        .byte con_se_cb_C4, $2D   ; 
- D 1 - I - 0x01613F 05:A12F: C7        .byte con_se_cb_C7, $F0   ; 
loc_D0_A131:
off_CE_A131:
- D 1 - I - 0x016141 05:A131: 12        .byte $12   ; 
- D 1 - I - 0x016142 05:A132: 48        .byte $48   ; 
- D 1 - I - 0x016143 05:A133: 06        .byte $06   ; 
- D 1 - I - 0x016144 05:A134: 8B        .byte $8B   ; 
- D 1 - I - 0x016145 05:A135: 80        .byte $80   ; 
- D 1 - I - 0x016146 05:A136: 0C        .byte $0C   ; 
- D 1 - I - 0x016147 05:A137: 4B        .byte $4B   ; 
- D 1 - I - 0x016148 05:A138: 54        .byte $54   ; 
- D 1 - I - 0x016149 05:A139: 12        .byte $12   ; 
- D 1 - I - 0x01614A 05:A13A: 53        .byte $53   ; 
- D 1 - I - 0x01614B 05:A13B: 06        .byte $06   ; 
- D 1 - I - 0x01614C 05:A13C: 8E        .byte $8E   ; 
- D 1 - I - 0x01614D 05:A13D: 80        .byte $80   ; 
- D 1 - I - 0x01614E 05:A13E: 0C        .byte $0C   ; 
- D 1 - I - 0x01614F 05:A13F: 4E        .byte $4E   ; 
- D 1 - I - 0x016150 05:A140: 91        .byte $91   ; 
- D 1 - I - 0x016151 05:A141: 80        .byte $80   ; 
- D 1 - I - 0x016152 05:A142: 30        .byte $30   ; 
- D 1 - I - 0x016153 05:A143: 51        .byte $51   ; 
- D 1 - I - 0x016154 05:A144: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016155 05:A145: 12        .byte $12   ; 
- D 1 - I - 0x016156 05:A146: 48        .byte $48   ; 
- D 1 - I - 0x016157 05:A147: 06        .byte $06   ; 
- D 1 - I - 0x016158 05:A148: 8B        .byte $8B   ; 
- D 1 - I - 0x016159 05:A149: 80        .byte $80   ; 
- D 1 - I - 0x01615A 05:A14A: 0C        .byte $0C   ; 
- D 1 - I - 0x01615B 05:A14B: 4B        .byte $4B   ; 
- D 1 - I - 0x01615C 05:A14C: 06        .byte $06   ; 
- D 1 - I - 0x01615D 05:A14D: 53        .byte $53   ; 
- D 1 - I - 0x01615E 05:A14E: 94        .byte $94   ; 
- D 1 - I - 0x01615F 05:A14F: 80        .byte $80   ; 
- D 1 - I - 0x016160 05:A150: 12        .byte $12   ; 
- D 1 - I - 0x016161 05:A151: 54        .byte $54   ; 
- D 1 - I - 0x016162 05:A152: 06        .byte $06   ; 
- D 1 - I - 0x016163 05:A153: 97        .byte $97   ; 
- D 1 - I - 0x016164 05:A154: 80        .byte $80   ; 
- D 1 - I - 0x016165 05:A155: 57        .byte $57   ; 
- D 1 - I - 0x016166 05:A156: 95        .byte $95   ; 
- D 1 - I - 0x016167 05:A157: 80        .byte $80   ; 
- D 1 - I - 0x016168 05:A158: 55        .byte $55   ; 
- D 1 - I - 0x016169 05:A159: 97        .byte $97   ; 
- D 1 - I - 0x01616A 05:A15A: 80        .byte $80   ; 
- D 1 - I - 0x01616B 05:A15B: 30        .byte $30   ; 
- D 1 - I - 0x01616C 05:A15C: 57        .byte $57   ; 
- D 1 - I - 0x01616D 05:A15D: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x01616E 05:A15E: CE        .byte con_se_cb_loop_1, $02   ; 
- D 1 - I - 0x016170 05:A160: 31 A1     .word off_CE_A131
- D 1 - I - 0x016172 05:A162: 12        .byte $12   ; 
- D 1 - I - 0x016173 05:A163: 54        .byte $54   ; 
- D 1 - I - 0x016174 05:A164: 06        .byte $06   ; 
- D 1 - I - 0x016175 05:A165: 93        .byte $93   ; 
- D 1 - I - 0x016176 05:A166: 80        .byte $80   ; 
- D 1 - I - 0x016177 05:A167: 0C        .byte $0C   ; 
- D 1 - I - 0x016178 05:A168: 53        .byte $53   ; 
- D 1 - I - 0x016179 05:A169: 4F        .byte $4F   ; 
- D 1 - I - 0x01617A 05:A16A: 12        .byte $12   ; 
- D 1 - I - 0x01617B 05:A16B: 52        .byte $52   ; 
- D 1 - I - 0x01617C 05:A16C: 06        .byte $06   ; 
- D 1 - I - 0x01617D 05:A16D: 91        .byte $91   ; 
- D 1 - I - 0x01617E 05:A16E: 80        .byte $80   ; 
- D 1 - I - 0x01617F 05:A16F: 0C        .byte $0C   ; 
- D 1 - I - 0x016180 05:A170: 51        .byte $51   ; 
- D 1 - I - 0x016181 05:A171: 52        .byte $52   ; 
- D 1 - I - 0x016182 05:A172: 12        .byte $12   ; 
- D 1 - I - 0x016183 05:A173: 54        .byte $54   ; 
- D 1 - I - 0x016184 05:A174: 06        .byte $06   ; 
- D 1 - I - 0x016185 05:A175: 93        .byte $93   ; 
- D 1 - I - 0x016186 05:A176: 80        .byte $80   ; 
- D 1 - I - 0x016187 05:A177: 0C        .byte $0C   ; 
- D 1 - I - 0x016188 05:A178: 53        .byte $53   ; 
- D 1 - I - 0x016189 05:A179: 54        .byte $54   ; 
- D 1 - I - 0x01618A 05:A17A: 06        .byte $06   ; 
- D 1 - I - 0x01618B 05:A17B: 49        .byte $49   ; 
- D 1 - I - 0x01618C 05:A17C: 49        .byte $49   ; 
- D 1 - I - 0x01618D 05:A17D: 4C        .byte $4C   ; 
- D 1 - I - 0x01618E 05:A17E: 4F        .byte $4F   ; 
- D 1 - I - 0x01618F 05:A17F: 52        .byte $52   ; 
- D 1 - I - 0x016190 05:A180: 55        .byte $55   ; 
- D 1 - I - 0x016191 05:A181: 58        .byte $58   ; 
- D 1 - I - 0x016192 05:A182: 5B        .byte $5B   ; 
- D 1 - I - 0x016193 05:A183: D0        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x016194 05:A184: 31 A1     .word loc_D0_A131


; bzk garbage
- - - - - - 0x016196 05:A186: D3        .byte con_se_cb_stop   ; 



off_ch_08_A187_01:
- D 1 - I - 0x016197 05:A187: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x016198 05:A188: 72 8B     .word ofs_CD_8B72
- D 1 - I - 0x01619A 05:A18A: D8        .byte con_se_cb_D8, $04   ; 
- D 1 - I - 0x01619C 05:A18C: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x01619E 05:A18E: C7        .byte con_se_cb_C7, $F0   ; 
loc_D0_A190:
off_CE_A190:
- D 1 - I - 0x0161A0 05:A190: 03        .byte $03   ; 
- D 1 - I - 0x0161A1 05:A191: 54        .byte $54   ; 
- D 1 - I - 0x0161A2 05:A192: 57        .byte $57   ; 
- D 1 - I - 0x0161A3 05:A193: 5A        .byte $5A   ; 
- D 1 - I - 0x0161A4 05:A194: 57        .byte $57   ; 
- D 1 - I - 0x0161A5 05:A195: 5D        .byte $5D   ; 
- D 1 - I - 0x0161A6 05:A196: 57        .byte $57   ; 
- D 1 - I - 0x0161A7 05:A197: 5A        .byte $5A   ; 
- D 1 - I - 0x0161A8 05:A198: 5D        .byte $5D   ; 
- D 1 - I - 0x0161A9 05:A199: 60        .byte $60   ; 
- D 1 - I - 0x0161AA 05:A19A: 5D        .byte $5D   ; 
- D 1 - I - 0x0161AB 05:A19B: 63        .byte $63   ; 
- D 1 - I - 0x0161AC 05:A19C: 60        .byte $60   ; 
- D 1 - I - 0x0161AD 05:A19D: 5D        .byte $5D   ; 
- D 1 - I - 0x0161AE 05:A19E: 5A        .byte $5A   ; 
- D 1 - I - 0x0161AF 05:A19F: 5D        .byte $5D   ; 
- D 1 - I - 0x0161B0 05:A1A0: 60        .byte $60   ; 
- D 1 - I - 0x0161B1 05:A1A1: 5A        .byte $5A   ; 
- D 1 - I - 0x0161B2 05:A1A2: 5D        .byte $5D   ; 
- D 1 - I - 0x0161B3 05:A1A3: 57        .byte $57   ; 
- D 1 - I - 0x0161B4 05:A1A4: 5A        .byte $5A   ; 
- D 1 - I - 0x0161B5 05:A1A5: 54        .byte $54   ; 
- D 1 - I - 0x0161B6 05:A1A6: 5D        .byte $5D   ; 
- D 1 - I - 0x0161B7 05:A1A7: 5A        .byte $5A   ; 
- D 1 - I - 0x0161B8 05:A1A8: 5D        .byte $5D   ; 
- D 1 - I - 0x0161B9 05:A1A9: 60        .byte $60   ; 
- D 1 - I - 0x0161BA 05:A1AA: 63        .byte $63   ; 
- D 1 - I - 0x0161BB 05:A1AB: 66        .byte $66   ; 
- D 1 - I - 0x0161BC 05:A1AC: 63        .byte $63   ; 
- D 1 - I - 0x0161BD 05:A1AD: 66        .byte $66   ; 
- D 1 - I - 0x0161BE 05:A1AE: 69        .byte $69   ; 
- D 1 - I - 0x0161BF 05:A1AF: 66        .byte $66   ; 
- D 1 - I - 0x0161C0 05:A1B0: 69        .byte $69   ; 
- D 1 - I - 0x0161C1 05:A1B1: CE        .byte con_se_cb_loop_1, $08   ; 
- D 1 - I - 0x0161C3 05:A1B3: 90 A1     .word off_CE_A190
- D 1 - I - 0x0161C5 05:A1B5: 03        .byte $03   ; 
- D 1 - I - 0x0161C6 05:A1B6: 56        .byte $56   ; 
- D 1 - I - 0x0161C7 05:A1B7: 5B        .byte $5B   ; 
- D 1 - I - 0x0161C8 05:A1B8: 60        .byte $60   ; 
- D 1 - I - 0x0161C9 05:A1B9: 56        .byte $56   ; 
- D 1 - I - 0x0161CA 05:A1BA: 5D        .byte $5D   ; 
- D 1 - I - 0x0161CB 05:A1BB: 5B        .byte $5B   ; 
- D 1 - I - 0x0161CC 05:A1BC: 5F        .byte $5F   ; 
- D 1 - I - 0x0161CD 05:A1BD: 5B        .byte $5B   ; 
- D 1 - I - 0x0161CE 05:A1BE: 56        .byte $56   ; 
- D 1 - I - 0x0161CF 05:A1BF: 5B        .byte $5B   ; 
- D 1 - I - 0x0161D0 05:A1C0: 5D        .byte $5D   ; 
- D 1 - I - 0x0161D1 05:A1C1: 60        .byte $60   ; 
- D 1 - I - 0x0161D2 05:A1C2: 5D        .byte $5D   ; 
- D 1 - I - 0x0161D3 05:A1C3: 5B        .byte $5B   ; 
- D 1 - I - 0x0161D4 05:A1C4: 56        .byte $56   ; 
- D 1 - I - 0x0161D5 05:A1C5: 5D        .byte $5D   ; 
- D 1 - I - 0x0161D6 05:A1C6: 5E        .byte $5E   ; 
- D 1 - I - 0x0161D7 05:A1C7: 60        .byte $60   ; 
- D 1 - I - 0x0161D8 05:A1C8: 65        .byte $65   ; 
- D 1 - I - 0x0161D9 05:A1C9: 5E        .byte $5E   ; 
- D 1 - I - 0x0161DA 05:A1CA: 60        .byte $60   ; 
- D 1 - I - 0x0161DB 05:A1CB: 59        .byte $59   ; 
- D 1 - I - 0x0161DC 05:A1CC: 5D        .byte $5D   ; 
- D 1 - I - 0x0161DD 05:A1CD: 59        .byte $59   ; 
- D 1 - I - 0x0161DE 05:A1CE: 54        .byte $54   ; 
- D 1 - I - 0x0161DF 05:A1CF: 59        .byte $59   ; 
- D 1 - I - 0x0161E0 05:A1D0: 5D        .byte $5D   ; 
- D 1 - I - 0x0161E1 05:A1D1: 59        .byte $59   ; 
- D 1 - I - 0x0161E2 05:A1D2: 5D        .byte $5D   ; 
- D 1 - I - 0x0161E3 05:A1D3: 60        .byte $60   ; 
- D 1 - I - 0x0161E4 05:A1D4: 5D        .byte $5D   ; 
- D 1 - I - 0x0161E5 05:A1D5: 59        .byte $59   ; 
- D 1 - I - 0x0161E6 05:A1D6: 5D        .byte $5D   ; 
- D 1 - I - 0x0161E7 05:A1D7: 56        .byte $56   ; 
- D 1 - I - 0x0161E8 05:A1D8: 5B        .byte $5B   ; 
- D 1 - I - 0x0161E9 05:A1D9: 5D        .byte $5D   ; 
- D 1 - I - 0x0161EA 05:A1DA: 56        .byte $56   ; 
- D 1 - I - 0x0161EB 05:A1DB: 60        .byte $60   ; 
- D 1 - I - 0x0161EC 05:A1DC: 5F        .byte $5F   ; 
- D 1 - I - 0x0161ED 05:A1DD: 5B        .byte $5B   ; 
- D 1 - I - 0x0161EE 05:A1DE: 5D        .byte $5D   ; 
- D 1 - I - 0x0161EF 05:A1DF: 56        .byte $56   ; 
- D 1 - I - 0x0161F0 05:A1E0: 5B        .byte $5B   ; 
- D 1 - I - 0x0161F1 05:A1E1: 58        .byte $58   ; 
- D 1 - I - 0x0161F2 05:A1E2: 5D        .byte $5D   ; 
- D 1 - I - 0x0161F3 05:A1E3: 5B        .byte $5B   ; 
- D 1 - I - 0x0161F4 05:A1E4: 5D        .byte $5D   ; 
- D 1 - I - 0x0161F5 05:A1E5: 56        .byte $56   ; 
- D 1 - I - 0x0161F6 05:A1E6: 51        .byte $51   ; 
- D 1 - I - 0x0161F7 05:A1E7: 54        .byte $54   ; 
- D 1 - I - 0x0161F8 05:A1E8: 55        .byte $55   ; 
- D 1 - I - 0x0161F9 05:A1E9: 58        .byte $58   ; 
- D 1 - I - 0x0161FA 05:A1EA: 5B        .byte $5B   ; 
- D 1 - I - 0x0161FB 05:A1EB: 58        .byte $58   ; 
- D 1 - I - 0x0161FC 05:A1EC: 5E        .byte $5E   ; 
- D 1 - I - 0x0161FD 05:A1ED: 58        .byte $58   ; 
- D 1 - I - 0x0161FE 05:A1EE: 5B        .byte $5B   ; 
- D 1 - I - 0x0161FF 05:A1EF: 58        .byte $58   ; 
- D 1 - I - 0x016200 05:A1F0: 61        .byte $61   ; 
- D 1 - I - 0x016201 05:A1F1: 5B        .byte $5B   ; 
- D 1 - I - 0x016202 05:A1F2: 5E        .byte $5E   ; 
- D 1 - I - 0x016203 05:A1F3: 64        .byte $64   ; 
- D 1 - I - 0x016204 05:A1F4: 67        .byte $67   ; 
- D 1 - I - 0x016205 05:A1F5: 6A        .byte $6A   ; 
- D 1 - I - 0x016206 05:A1F6: D0        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x016207 05:A1F7: 90 A1     .word loc_D0_A190


; bzk garbage
- - - - - - 0x016209 05:A1F9: D3        .byte con_se_cb_stop   ; 



off_ch_08_A1FA_02:
- D 1 - I - 0x01620A 05:A1FA: D8        .byte con_se_cb_D8, $10   ; 
- D 1 - I - 0x01620C 05:A1FC: C7        .byte con_se_cb_C7, $C8   ; 
loc_D0_A1FE:
off_CE_A1FE:
- D 1 - I - 0x01620E 05:A1FE: 03        .byte $03   ; 
- D 1 - I - 0x01620F 05:A1FF: 48        .byte $48   ; 
- D 1 - I - 0x016210 05:A200: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016211 05:A201: 06        .byte $06   ; 
- D 1 - I - 0x016212 05:A202: 48        .byte $48   ; 
- D 1 - I - 0x016213 05:A203: 03        .byte $03   ; 
- D 1 - I - 0x016214 05:A204: 48        .byte $48   ; 
- D 1 - I - 0x016215 05:A205: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016216 05:A206: 06        .byte $06   ; 
- D 1 - I - 0x016217 05:A207: 48        .byte $48   ; 
- D 1 - I - 0x016218 05:A208: 03        .byte $03   ; 
- D 1 - I - 0x016219 05:A209: 48        .byte $48   ; 
- D 1 - I - 0x01621A 05:A20A: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x01621B 05:A20B: 06        .byte $06   ; 
- D 1 - I - 0x01621C 05:A20C: 48        .byte $48   ; 
- D 1 - I - 0x01621D 05:A20D: 03        .byte $03   ; 
- D 1 - I - 0x01621E 05:A20E: 51        .byte $51   ; 
- D 1 - I - 0x01621F 05:A20F: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016220 05:A210: 06        .byte $06   ; 
- D 1 - I - 0x016221 05:A211: 51        .byte $51   ; 
- D 1 - I - 0x016222 05:A212: 03        .byte $03   ; 
- D 1 - I - 0x016223 05:A213: 50        .byte $50   ; 
- D 1 - I - 0x016224 05:A214: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016225 05:A215: 06        .byte $06   ; 
- D 1 - I - 0x016226 05:A216: 50        .byte $50   ; 
- D 1 - I - 0x016227 05:A217: 03        .byte $03   ; 
- D 1 - I - 0x016228 05:A218: 50        .byte $50   ; 
- D 1 - I - 0x016229 05:A219: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x01622A 05:A21A: 06        .byte $06   ; 
- D 1 - I - 0x01622B 05:A21B: 4B        .byte $4B   ; 
- D 1 - I - 0x01622C 05:A21C: 03        .byte $03   ; 
- D 1 - I - 0x01622D 05:A21D: 4B        .byte $4B   ; 
- D 1 - I - 0x01622E 05:A21E: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x01622F 05:A21F: 06        .byte $06   ; 
- D 1 - I - 0x016230 05:A220: 4B        .byte $4B   ; 
- D 1 - I - 0x016231 05:A221: 03        .byte $03   ; 
- D 1 - I - 0x016232 05:A222: 4E        .byte $4E   ; 
- D 1 - I - 0x016233 05:A223: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016234 05:A224: 06        .byte $06   ; 
- D 1 - I - 0x016235 05:A225: 4E        .byte $4E   ; 
- D 1 - I - 0x016236 05:A226: 03        .byte $03   ; 
- D 1 - I - 0x016237 05:A227: 48        .byte $48   ; 
- D 1 - I - 0x016238 05:A228: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016239 05:A229: 06        .byte $06   ; 
- D 1 - I - 0x01623A 05:A22A: 48        .byte $48   ; 
- D 1 - I - 0x01623B 05:A22B: 03        .byte $03   ; 
- D 1 - I - 0x01623C 05:A22C: 48        .byte $48   ; 
- D 1 - I - 0x01623D 05:A22D: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x01623E 05:A22E: 06        .byte $06   ; 
- D 1 - I - 0x01623F 05:A22F: 48        .byte $48   ; 
- D 1 - I - 0x016240 05:A230: 03        .byte $03   ; 
- D 1 - I - 0x016241 05:A231: 48        .byte $48   ; 
- D 1 - I - 0x016242 05:A232: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016243 05:A233: 06        .byte $06   ; 
- D 1 - I - 0x016244 05:A234: 48        .byte $48   ; 
- D 1 - I - 0x016245 05:A235: 03        .byte $03   ; 
- D 1 - I - 0x016246 05:A236: 48        .byte $48   ; 
- D 1 - I - 0x016247 05:A237: 4B        .byte $4B   ; 
- D 1 - I - 0x016248 05:A238: 4A        .byte $4A   ; 
- D 1 - I - 0x016249 05:A239: 48        .byte $48   ; 
- D 1 - I - 0x01624A 05:A23A: 03        .byte $03   ; 
- D 1 - I - 0x01624B 05:A23B: 48        .byte $48   ; 
- D 1 - I - 0x01624C 05:A23C: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x01624D 05:A23D: 06        .byte $06   ; 
- D 1 - I - 0x01624E 05:A23E: 48        .byte $48   ; 
- D 1 - I - 0x01624F 05:A23F: 03        .byte $03   ; 
- D 1 - I - 0x016250 05:A240: 48        .byte $48   ; 
- D 1 - I - 0x016251 05:A241: 48        .byte $48   ; 
- D 1 - I - 0x016252 05:A242: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016253 05:A243: 48        .byte $48   ; 
- D 1 - I - 0x016254 05:A244: 48        .byte $48   ; 
- D 1 - I - 0x016255 05:A245: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016256 05:A246: 06        .byte $06   ; 
- D 1 - I - 0x016257 05:A247: 48        .byte $48   ; 
- D 1 - I - 0x016258 05:A248: 03        .byte $03   ; 
- D 1 - I - 0x016259 05:A249: 48        .byte $48   ; 
- D 1 - I - 0x01625A 05:A24A: 4B        .byte $4B   ; 
- D 1 - I - 0x01625B 05:A24B: 4E        .byte $4E   ; 
- D 1 - I - 0x01625C 05:A24C: 51        .byte $51   ; 
- D 1 - I - 0x01625D 05:A24D: 03        .byte $03   ; 
- D 1 - I - 0x01625E 05:A24E: 48        .byte $48   ; 
- D 1 - I - 0x01625F 05:A24F: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016260 05:A250: 06        .byte $06   ; 
- D 1 - I - 0x016261 05:A251: 48        .byte $48   ; 
- D 1 - I - 0x016262 05:A252: 03        .byte $03   ; 
- D 1 - I - 0x016263 05:A253: 48        .byte $48   ; 
- D 1 - I - 0x016264 05:A254: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016265 05:A255: 06        .byte $06   ; 
- D 1 - I - 0x016266 05:A256: 48        .byte $48   ; 
- D 1 - I - 0x016267 05:A257: 03        .byte $03   ; 
- D 1 - I - 0x016268 05:A258: 48        .byte $48   ; 
- D 1 - I - 0x016269 05:A259: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x01626A 05:A25A: 06        .byte $06   ; 
- D 1 - I - 0x01626B 05:A25B: 48        .byte $48   ; 
- D 1 - I - 0x01626C 05:A25C: 03        .byte $03   ; 
- D 1 - I - 0x01626D 05:A25D: 50        .byte $50   ; 
- D 1 - I - 0x01626E 05:A25E: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x01626F 05:A25F: 06        .byte $06   ; 
- D 1 - I - 0x016270 05:A260: 51        .byte $51   ; 
- D 1 - I - 0x016271 05:A261: 03        .byte $03   ; 
- D 1 - I - 0x016272 05:A262: 51        .byte $51   ; 
- D 1 - I - 0x016273 05:A263: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016274 05:A264: 06        .byte $06   ; 
- D 1 - I - 0x016275 05:A265: 51        .byte $51   ; 
- D 1 - I - 0x016276 05:A266: 03        .byte $03   ; 
- D 1 - I - 0x016277 05:A267: 51        .byte $51   ; 
- D 1 - I - 0x016278 05:A268: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016279 05:A269: 06        .byte $06   ; 
- D 1 - I - 0x01627A 05:A26A: 53        .byte $53   ; 
- D 1 - I - 0x01627B 05:A26B: 03        .byte $03   ; 
- D 1 - I - 0x01627C 05:A26C: 53        .byte $53   ; 
- D 1 - I - 0x01627D 05:A26D: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x01627E 05:A26E: 06        .byte $06   ; 
- D 1 - I - 0x01627F 05:A26F: 51        .byte $51   ; 
- D 1 - I - 0x016280 05:A270: 03        .byte $03   ; 
- D 1 - I - 0x016281 05:A271: 51        .byte $51   ; 
- D 1 - I - 0x016282 05:A272: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016283 05:A273: 06        .byte $06   ; 
- D 1 - I - 0x016284 05:A274: 50        .byte $50   ; 
- D 1 - I - 0x016285 05:A275: 03        .byte $03   ; 
- D 1 - I - 0x016286 05:A276: 50        .byte $50   ; 
- D 1 - I - 0x016287 05:A277: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016288 05:A278: 06        .byte $06   ; 
- D 1 - I - 0x016289 05:A279: 50        .byte $50   ; 
- D 1 - I - 0x01628A 05:A27A: 03        .byte $03   ; 
- D 1 - I - 0x01628B 05:A27B: 50        .byte $50   ; 
- D 1 - I - 0x01628C 05:A27C: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x01628D 05:A27D: 06        .byte $06   ; 
- D 1 - I - 0x01628E 05:A27E: 50        .byte $50   ; 
- D 1 - I - 0x01628F 05:A27F: 03        .byte $03   ; 
- D 1 - I - 0x016290 05:A280: 50        .byte $50   ; 
- D 1 - I - 0x016291 05:A281: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016292 05:A282: 06        .byte $06   ; 
- D 1 - I - 0x016293 05:A283: 48        .byte $48   ; 
- D 1 - I - 0x016294 05:A284: 03        .byte $03   ; 
- D 1 - I - 0x016295 05:A285: 48        .byte $48   ; 
- D 1 - I - 0x016296 05:A286: 4B        .byte $4B   ; 
- D 1 - I - 0x016297 05:A287: 4A        .byte $4A   ; 
- D 1 - I - 0x016298 05:A288: 48        .byte $48   ; 
- D 1 - I - 0x016299 05:A289: 03        .byte $03   ; 
- D 1 - I - 0x01629A 05:A28A: 48        .byte $48   ; 
- D 1 - I - 0x01629B 05:A28B: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x01629C 05:A28C: 06        .byte $06   ; 
- D 1 - I - 0x01629D 05:A28D: 48        .byte $48   ; 
- D 1 - I - 0x01629E 05:A28E: 03        .byte $03   ; 
- D 1 - I - 0x01629F 05:A28F: 48        .byte $48   ; 
- D 1 - I - 0x0162A0 05:A290: 48        .byte $48   ; 
- D 1 - I - 0x0162A1 05:A291: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0162A2 05:A292: 48        .byte $48   ; 
- D 1 - I - 0x0162A3 05:A293: 48        .byte $48   ; 
- D 1 - I - 0x0162A4 05:A294: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0162A5 05:A295: 06        .byte $06   ; 
- D 1 - I - 0x0162A6 05:A296: 48        .byte $48   ; 
- D 1 - I - 0x0162A7 05:A297: 03        .byte $03   ; 
- D 1 - I - 0x0162A8 05:A298: 48        .byte $48   ; 
- D 1 - I - 0x0162A9 05:A299: 4B        .byte $4B   ; 
- D 1 - I - 0x0162AA 05:A29A: 4E        .byte $4E   ; 
- D 1 - I - 0x0162AB 05:A29B: 51        .byte $51   ; 
- D 1 - I - 0x0162AC 05:A29C: CE        .byte con_se_cb_loop_1, $02   ; 
- D 1 - I - 0x0162AE 05:A29E: FE A1     .word off_CE_A1FE
- D 1 - I - 0x0162B0 05:A2A0: 03        .byte $03   ; 
- D 1 - I - 0x0162B1 05:A2A1: 4F        .byte $4F   ; 
- D 1 - I - 0x0162B2 05:A2A2: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0162B3 05:A2A3: 06        .byte $06   ; 
- D 1 - I - 0x0162B4 05:A2A4: 4F        .byte $4F   ; 
- D 1 - I - 0x0162B5 05:A2A5: 03        .byte $03   ; 
- D 1 - I - 0x0162B6 05:A2A6: 4F        .byte $4F   ; 
- D 1 - I - 0x0162B7 05:A2A7: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0162B8 05:A2A8: 06        .byte $06   ; 
- D 1 - I - 0x0162B9 05:A2A9: 4F        .byte $4F   ; 
- D 1 - I - 0x0162BA 05:A2AA: 03        .byte $03   ; 
- D 1 - I - 0x0162BB 05:A2AB: 4F        .byte $4F   ; 
- D 1 - I - 0x0162BC 05:A2AC: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0162BD 05:A2AD: 06        .byte $06   ; 
- D 1 - I - 0x0162BE 05:A2AE: 4F        .byte $4F   ; 
- D 1 - I - 0x0162BF 05:A2AF: 03        .byte $03   ; 
- D 1 - I - 0x0162C0 05:A2B0: 4F        .byte $4F   ; 
- D 1 - I - 0x0162C1 05:A2B1: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0162C2 05:A2B2: 06        .byte $06   ; 
- D 1 - I - 0x0162C3 05:A2B3: 4F        .byte $4F   ; 
- D 1 - I - 0x0162C4 05:A2B4: 03        .byte $03   ; 
- D 1 - I - 0x0162C5 05:A2B5: 4D        .byte $4D   ; 
- D 1 - I - 0x0162C6 05:A2B6: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0162C7 05:A2B7: 06        .byte $06   ; 
- D 1 - I - 0x0162C8 05:A2B8: 4D        .byte $4D   ; 
- D 1 - I - 0x0162C9 05:A2B9: 03        .byte $03   ; 
- D 1 - I - 0x0162CA 05:A2BA: 4D        .byte $4D   ; 
- D 1 - I - 0x0162CB 05:A2BB: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0162CC 05:A2BC: 06        .byte $06   ; 
- D 1 - I - 0x0162CD 05:A2BD: 4D        .byte $4D   ; 
- D 1 - I - 0x0162CE 05:A2BE: 03        .byte $03   ; 
- D 1 - I - 0x0162CF 05:A2BF: 4D        .byte $4D   ; 
- D 1 - I - 0x0162D0 05:A2C0: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0162D1 05:A2C1: 06        .byte $06   ; 
- D 1 - I - 0x0162D2 05:A2C2: 4D        .byte $4D   ; 
- D 1 - I - 0x0162D3 05:A2C3: 03        .byte $03   ; 
- D 1 - I - 0x0162D4 05:A2C4: 4D        .byte $4D   ; 
- D 1 - I - 0x0162D5 05:A2C5: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0162D6 05:A2C6: 06        .byte $06   ; 
- D 1 - I - 0x0162D7 05:A2C7: 4D        .byte $4D   ; 
- D 1 - I - 0x0162D8 05:A2C8: 03        .byte $03   ; 
- D 1 - I - 0x0162D9 05:A2C9: 4F        .byte $4F   ; 
- D 1 - I - 0x0162DA 05:A2CA: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0162DB 05:A2CB: 06        .byte $06   ; 
- D 1 - I - 0x0162DC 05:A2CC: 4F        .byte $4F   ; 
- D 1 - I - 0x0162DD 05:A2CD: 03        .byte $03   ; 
- D 1 - I - 0x0162DE 05:A2CE: 4F        .byte $4F   ; 
- D 1 - I - 0x0162DF 05:A2CF: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0162E0 05:A2D0: 06        .byte $06   ; 
- D 1 - I - 0x0162E1 05:A2D1: 4F        .byte $4F   ; 
- D 1 - I - 0x0162E2 05:A2D2: 03        .byte $03   ; 
- D 1 - I - 0x0162E3 05:A2D3: 4F        .byte $4F   ; 
- D 1 - I - 0x0162E4 05:A2D4: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0162E5 05:A2D5: 06        .byte $06   ; 
- D 1 - I - 0x0162E6 05:A2D6: 4F        .byte $4F   ; 
- D 1 - I - 0x0162E7 05:A2D7: 03        .byte $03   ; 
- D 1 - I - 0x0162E8 05:A2D8: 4F        .byte $4F   ; 
- D 1 - I - 0x0162E9 05:A2D9: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0162EA 05:A2DA: 06        .byte $06   ; 
- D 1 - I - 0x0162EB 05:A2DB: 4F        .byte $4F   ; 
- D 1 - I - 0x0162EC 05:A2DC: 49        .byte $49   ; 
- D 1 - I - 0x0162ED 05:A2DD: 4C        .byte $4C   ; 
- D 1 - I - 0x0162EE 05:A2DE: 4F        .byte $4F   ; 
- D 1 - I - 0x0162EF 05:A2DF: 52        .byte $52   ; 
- D 1 - I - 0x0162F0 05:A2E0: 55        .byte $55   ; 
- D 1 - I - 0x0162F1 05:A2E1: 58        .byte $58   ; 
- D 1 - I - 0x0162F2 05:A2E2: 5B        .byte $5B   ; 
- D 1 - I - 0x0162F3 05:A2E3: 5E        .byte $5E   ; 
- D 1 - I - 0x0162F4 05:A2E4: D0        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x0162F5 05:A2E5: FE A1     .word loc_D0_A1FE


; bzk garbage
- - - - - - 0x0162F7 05:A2E7: D3        .byte con_se_cb_stop   ; 



off_ch_08_A2E8_03:
- D 1 - I - 0x0162F8 05:A2E8: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x0162F9 05:A2E9: F3 8B     .word ofs_CD_8BF3
- D 1 - I - 0x0162FB 05:A2EB: C4        .byte con_se_cb_C4, $23   ; 
loc_D0_A2ED:
- D 1 - I - 0x0162FD 05:A2ED: 0C        .byte $0C   ; 
- D 1 - I - 0x0162FE 05:A2EE: 43        .byte $43   ; 
- D 1 - I - 0x0162FF 05:A2EF: 06        .byte $06   ; 
- D 1 - I - 0x016300 05:A2F0: 42        .byte $42   ; 
- D 1 - I - 0x016301 05:A2F1: 41        .byte $41   ; 
- D 1 - I - 0x016302 05:A2F2: 41        .byte $41   ; 
- D 1 - I - 0x016303 05:A2F3: 41        .byte $41   ; 
- D 1 - I - 0x016304 05:A2F4: 42        .byte $42   ; 
- D 1 - I - 0x016305 05:A2F5: 41        .byte $41   ; 
- D 1 - I - 0x016306 05:A2F6: 41        .byte $41   ; 
- D 1 - I - 0x016307 05:A2F7: 41        .byte $41   ; 
- D 1 - I - 0x016308 05:A2F8: 42        .byte $42   ; 
- D 1 - I - 0x016309 05:A2F9: 41        .byte $41   ; 
- D 1 - I - 0x01630A 05:A2FA: 41        .byte $41   ; 
- D 1 - I - 0x01630B 05:A2FB: 41        .byte $41   ; 
- D 1 - I - 0x01630C 05:A2FC: 42        .byte $42   ; 
- D 1 - I - 0x01630D 05:A2FD: 41        .byte $41   ; 
off_CE_A2FE:
- D 1 - I - 0x01630E 05:A2FE: 41        .byte $41   ; 
- D 1 - I - 0x01630F 05:A2FF: 41        .byte $41   ; 
- D 1 - I - 0x016310 05:A300: 4C        .byte $4C   ; 
- D 1 - I - 0x016311 05:A301: 41        .byte $41   ; 
- D 1 - I - 0x016312 05:A302: CE        .byte con_se_cb_loop_1, $04   ; 
- D 1 - I - 0x016314 05:A304: FE A2     .word off_CE_A2FE
- D 1 - I - 0x016316 05:A306: D0        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x016317 05:A307: ED A2     .word loc_D0_A2ED


; bzk garbage
- - - - - - 0x016319 05:A309: D3        .byte con_se_cb_stop   ; 



_off013_A30A_09_boss_tractor:
- D 1 - I - 0x01631A 05:A30A: FF        .byte $FF   ; 
- D 1 - I - 0x01631B 05:A30B: 00        .byte $00   ; 
- D 1 - I - 0x01631C 05:A30C: 18 A3     .word off_ch_09_A318_00
- D 1 - I - 0x01631E 05:A30E: 01        .byte $01   ; 
- D 1 - I - 0x01631F 05:A30F: 89 A3     .word off_ch_09_A389_01
- D 1 - I - 0x016321 05:A311: 02        .byte $02   ; 
- D 1 - I - 0x016322 05:A312: F8 A3     .word off_ch_09_A3F8_02
- D 1 - I - 0x016324 05:A314: 03        .byte $03   ; 
- D 1 - I - 0x016325 05:A315: 2F A4     .word off_ch_09_A42F_03
- D 1 - I - 0x016327 05:A317: FF        .byte $FF   ; 



off_ch_09_A318_00:
- D 1 - I - 0x016328 05:A318: CC        .byte con_se_cb_CC, $91   ; 
- D 1 - I - 0x01632A 05:A31A: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x01632B 05:A31B: BA 8A     .word ofs_CD_8ABA
- D 1 - I - 0x01632D 05:A31D: D8        .byte con_se_cb_D8, $00   ; 
- D 1 - I - 0x01632F 05:A31F: C4        .byte con_se_cb_C4, $23   ; 
- D 1 - I - 0x016331 05:A321: C7        .byte con_se_cb_C7, $B4   ; 
loc_D0_A323:
- D 1 - I - 0x016333 05:A323: D8        .byte con_se_cb_D8, $00   ; 
- D 1 - I - 0x016335 05:A325: D1        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x016336 05:A326: 38 A3     .word sub_D1_A338
- D 1 - I - 0x016338 05:A328: D1        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x016339 05:A329: 60 A3     .word sub_D1_A360
- D 1 - I - 0x01633B 05:A32B: D8        .byte con_se_cb_D8, $02   ; 
- D 1 - I - 0x01633D 05:A32D: D1        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x01633E 05:A32E: 38 A3     .word sub_D1_A338
- D 1 - I - 0x016340 05:A330: D8        .byte con_se_cb_D8, $03   ; 
- D 1 - I - 0x016342 05:A332: D1        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x016343 05:A333: 60 A3     .word sub_D1_A360
- D 1 - I - 0x016345 05:A335: D0        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x016346 05:A336: 23 A3     .word loc_D0_A323



sub_D1_A338:
- D 1 - I - 0x016348 05:A338: 06        .byte $06   ; 
- D 1 - I - 0x016349 05:A339: 64        .byte $64   ; 
- D 1 - I - 0x01634A 05:A33A: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x01634B 05:A33B: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x01634C 05:A33C: 66        .byte $66   ; 
- D 1 - I - 0x01634D 05:A33D: 18        .byte $18   ; 
- D 1 - I - 0x01634E 05:A33E: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x01634F 05:A33F: 06        .byte $06   ; 
- D 1 - I - 0x016350 05:A340: 6D        .byte $6D   ; 
- D 1 - I - 0x016351 05:A341: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016352 05:A342: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016353 05:A343: 6B        .byte $6B   ; 
- D 1 - I - 0x016354 05:A344: 0C        .byte $0C   ; 
- D 1 - I - 0x016355 05:A345: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016356 05:A346: 06        .byte $06   ; 
- D 1 - I - 0x016357 05:A347: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016358 05:A348: 6D        .byte $6D   ; 
- D 1 - I - 0x016359 05:A349: 64        .byte $64   ; 
- D 1 - I - 0x01635A 05:A34A: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x01635B 05:A34B: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x01635C 05:A34C: 66        .byte $66   ; 
- D 1 - I - 0x01635D 05:A34D: 18        .byte $18   ; 
- D 1 - I - 0x01635E 05:A34E: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x01635F 05:A34F: 06        .byte $06   ; 
- D 1 - I - 0x016360 05:A350: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016361 05:A351: 66        .byte $66   ; 
- D 1 - I - 0x016362 05:A352: 03        .byte $03   ; 
- D 1 - I - 0x016363 05:A353: 64        .byte $64   ; 
- D 1 - I - 0x016364 05:A354: 66        .byte $66   ; 
- D 1 - I - 0x016365 05:A355: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016366 05:A356: 66        .byte $66   ; 
- D 1 - I - 0x016367 05:A357: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016368 05:A358: 66        .byte $66   ; 
- D 1 - I - 0x016369 05:A359: 64        .byte $64   ; 
- D 1 - I - 0x01636A 05:A35A: 66        .byte $66   ; 
- D 1 - I - 0x01636B 05:A35B: 5F        .byte $5F   ; 
- D 1 - I - 0x01636C 05:A35C: 61        .byte $61   ; 
- D 1 - I - 0x01636D 05:A35D: 66        .byte $66   ; 
- D 1 - I - 0x01636E 05:A35E: 5F        .byte $5F   ; 
- D 1 - I - 0x01636F 05:A35F: D2        .byte con_se_cb_rts   ; 



sub_D1_A360:
- D 1 - I - 0x016370 05:A360: 06        .byte $06   ; 
- D 1 - I - 0x016371 05:A361: 64        .byte $64   ; 
- D 1 - I - 0x016372 05:A362: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016373 05:A363: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016374 05:A364: 66        .byte $66   ; 
- D 1 - I - 0x016375 05:A365: 18        .byte $18   ; 
- D 1 - I - 0x016376 05:A366: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016377 05:A367: 06        .byte $06   ; 
- D 1 - I - 0x016378 05:A368: 6D        .byte $6D   ; 
- D 1 - I - 0x016379 05:A369: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x01637A 05:A36A: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x01637B 05:A36B: 6B        .byte $6B   ; 
- D 1 - I - 0x01637C 05:A36C: 0C        .byte $0C   ; 
- D 1 - I - 0x01637D 05:A36D: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x01637E 05:A36E: 06        .byte $06   ; 
- D 1 - I - 0x01637F 05:A36F: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016380 05:A370: 6D        .byte $6D   ; 
- D 1 - I - 0x016381 05:A371: 64        .byte $64   ; 
- D 1 - I - 0x016382 05:A372: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016383 05:A373: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016384 05:A374: 66        .byte $66   ; 
- D 1 - I - 0x016385 05:A375: 18        .byte $18   ; 
- D 1 - I - 0x016386 05:A376: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016387 05:A377: 03        .byte $03   ; 
- D 1 - I - 0x016388 05:A378: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016389 05:A379: 66        .byte $66   ; 
- D 1 - I - 0x01638A 05:A37A: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x01638B 05:A37B: 66        .byte $66   ; 
- D 1 - I - 0x01638C 05:A37C: 64        .byte $64   ; 
- D 1 - I - 0x01638D 05:A37D: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x01638E 05:A37E: 66        .byte $66   ; 
- D 1 - I - 0x01638F 05:A37F: 5F        .byte $5F   ; 
- D 1 - I - 0x016390 05:A380: 66        .byte $66   ; 
- D 1 - I - 0x016391 05:A381: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016392 05:A382: 66        .byte $66   ; 
- D 1 - I - 0x016393 05:A383: 5F        .byte $5F   ; 
- D 1 - I - 0x016394 05:A384: 61        .byte $61   ; 
- D 1 - I - 0x016395 05:A385: 64        .byte $64   ; 
- D 1 - I - 0x016396 05:A386: 66        .byte $66   ; 
- D 1 - I - 0x016397 05:A387: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016398 05:A388: D2        .byte con_se_cb_rts   ; 



off_ch_09_A389_01:
- D 1 - I - 0x016399 05:A389: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x01639A 05:A38A: BA 8A     .word ofs_CD_8ABA
- D 1 - I - 0x01639C 05:A38C: D8        .byte con_se_cb_D8, $00   ; 
- D 1 - I - 0x01639E 05:A38E: C4        .byte con_se_cb_C4, $23   ; 
- D 1 - I - 0x0163A0 05:A390: C7        .byte con_se_cb_C7, $B4   ; 
loc_D0_A392:
- D 1 - I - 0x0163A2 05:A392: D8        .byte con_se_cb_D8, $00   ; 
- D 1 - I - 0x0163A4 05:A394: D1        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x0163A5 05:A395: A7 A3     .word sub_D1_A3A7
- D 1 - I - 0x0163A7 05:A397: D1        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x0163A8 05:A398: CF A3     .word sub_D1_A3CF
- D 1 - I - 0x0163AA 05:A39A: D8        .byte con_se_cb_D8, $02   ; 
- D 1 - I - 0x0163AC 05:A39C: D1        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x0163AD 05:A39D: A7 A3     .word sub_D1_A3A7
- D 1 - I - 0x0163AF 05:A39F: D8        .byte con_se_cb_D8, $03   ; 
- D 1 - I - 0x0163B1 05:A3A1: D1        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x0163B2 05:A3A2: CF A3     .word sub_D1_A3CF
- D 1 - I - 0x0163B4 05:A3A4: D0        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x0163B5 05:A3A5: 92 A3     .word loc_D0_A392



sub_D1_A3A7:
- D 1 - I - 0x0163B7 05:A3A7: 06        .byte $06   ; 
- D 1 - I - 0x0163B8 05:A3A8: 61        .byte $61   ; 
- D 1 - I - 0x0163B9 05:A3A9: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0163BA 05:A3AA: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0163BB 05:A3AB: 62        .byte $62   ; 
- D 1 - I - 0x0163BC 05:A3AC: 18        .byte $18   ; 
- D 1 - I - 0x0163BD 05:A3AD: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0163BE 05:A3AE: 06        .byte $06   ; 
- D 1 - I - 0x0163BF 05:A3AF: 69        .byte $69   ; 
- D 1 - I - 0x0163C0 05:A3B0: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0163C1 05:A3B1: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0163C2 05:A3B2: 66        .byte $66   ; 
- D 1 - I - 0x0163C3 05:A3B3: 0C        .byte $0C   ; 
- D 1 - I - 0x0163C4 05:A3B4: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0163C5 05:A3B5: 06        .byte $06   ; 
- D 1 - I - 0x0163C6 05:A3B6: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0163C7 05:A3B7: 69        .byte $69   ; 
- D 1 - I - 0x0163C8 05:A3B8: 61        .byte $61   ; 
- D 1 - I - 0x0163C9 05:A3B9: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0163CA 05:A3BA: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0163CB 05:A3BB: 62        .byte $62   ; 
- D 1 - I - 0x0163CC 05:A3BC: 18        .byte $18   ; 
- D 1 - I - 0x0163CD 05:A3BD: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0163CE 05:A3BE: 06        .byte $06   ; 
- D 1 - I - 0x0163CF 05:A3BF: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0163D0 05:A3C0: 62        .byte $62   ; 
- D 1 - I - 0x0163D1 05:A3C1: 03        .byte $03   ; 
- D 1 - I - 0x0163D2 05:A3C2: 61        .byte $61   ; 
- D 1 - I - 0x0163D3 05:A3C3: 62        .byte $62   ; 
- D 1 - I - 0x0163D4 05:A3C4: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0163D5 05:A3C5: 62        .byte $62   ; 
- D 1 - I - 0x0163D6 05:A3C6: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0163D7 05:A3C7: 62        .byte $62   ; 
- D 1 - I - 0x0163D8 05:A3C8: 61        .byte $61   ; 
- D 1 - I - 0x0163D9 05:A3C9: 62        .byte $62   ; 
- D 1 - I - 0x0163DA 05:A3CA: 5B        .byte $5B   ; 
- D 1 - I - 0x0163DB 05:A3CB: 5D        .byte $5D   ; 
- D 1 - I - 0x0163DC 05:A3CC: 62        .byte $62   ; 
- D 1 - I - 0x0163DD 05:A3CD: 5B        .byte $5B   ; 
- D 1 - I - 0x0163DE 05:A3CE: D2        .byte con_se_cb_rts   ; 



sub_D1_A3CF:
- D 1 - I - 0x0163DF 05:A3CF: 06        .byte $06   ; 
- D 1 - I - 0x0163E0 05:A3D0: 61        .byte $61   ; 
- D 1 - I - 0x0163E1 05:A3D1: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0163E2 05:A3D2: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0163E3 05:A3D3: 62        .byte $62   ; 
- D 1 - I - 0x0163E4 05:A3D4: 18        .byte $18   ; 
- D 1 - I - 0x0163E5 05:A3D5: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0163E6 05:A3D6: 06        .byte $06   ; 
- D 1 - I - 0x0163E7 05:A3D7: 69        .byte $69   ; 
- D 1 - I - 0x0163E8 05:A3D8: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0163E9 05:A3D9: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0163EA 05:A3DA: 66        .byte $66   ; 
- D 1 - I - 0x0163EB 05:A3DB: 0C        .byte $0C   ; 
- D 1 - I - 0x0163EC 05:A3DC: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0163ED 05:A3DD: 06        .byte $06   ; 
- D 1 - I - 0x0163EE 05:A3DE: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0163EF 05:A3DF: 69        .byte $69   ; 
- D 1 - I - 0x0163F0 05:A3E0: 61        .byte $61   ; 
- D 1 - I - 0x0163F1 05:A3E1: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0163F2 05:A3E2: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0163F3 05:A3E3: 62        .byte $62   ; 
- D 1 - I - 0x0163F4 05:A3E4: 18        .byte $18   ; 
- D 1 - I - 0x0163F5 05:A3E5: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0163F6 05:A3E6: 03        .byte $03   ; 
- D 1 - I - 0x0163F7 05:A3E7: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0163F8 05:A3E8: 62        .byte $62   ; 
- D 1 - I - 0x0163F9 05:A3E9: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0163FA 05:A3EA: 62        .byte $62   ; 
- D 1 - I - 0x0163FB 05:A3EB: 61        .byte $61   ; 
- D 1 - I - 0x0163FC 05:A3EC: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0163FD 05:A3ED: 62        .byte $62   ; 
- D 1 - I - 0x0163FE 05:A3EE: 5B        .byte $5B   ; 
- D 1 - I - 0x0163FF 05:A3EF: 62        .byte $62   ; 
- D 1 - I - 0x016400 05:A3F0: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016401 05:A3F1: 62        .byte $62   ; 
- D 1 - I - 0x016402 05:A3F2: 5B        .byte $5B   ; 
- D 1 - I - 0x016403 05:A3F3: 5D        .byte $5D   ; 
- D 1 - I - 0x016404 05:A3F4: 61        .byte $61   ; 
- D 1 - I - 0x016405 05:A3F5: 62        .byte $62   ; 
- D 1 - I - 0x016406 05:A3F6: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016407 05:A3F7: D2        .byte con_se_cb_rts   ; 



off_ch_09_A3F8_02:
- D 1 - I - 0x016408 05:A3F8: D8        .byte con_se_cb_D8, $0C   ; 
- D 1 - I - 0x01640A 05:A3FA: C7        .byte con_se_cb_C7, $C8   ; 
loc_D0_A3FC:
- D 1 - I - 0x01640C 05:A3FC: D8        .byte con_se_cb_D8, $0C   ; 
- D 1 - I - 0x01640E 05:A3FE: 06        .byte $06   ; 
- D 1 - I - 0x01640F 05:A3FF: D1        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x016410 05:A400: 1E A4     .word sub_D1_A41E
- D 1 - I - 0x016412 05:A402: D1        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x016413 05:A403: 1E A4     .word sub_D1_A41E
- D 1 - I - 0x016415 05:A405: D1        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x016416 05:A406: 1E A4     .word sub_D1_A41E
- D 1 - I - 0x016418 05:A408: D1        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x016419 05:A409: 1E A4     .word sub_D1_A41E
- D 1 - I - 0x01641B 05:A40B: D8        .byte con_se_cb_D8, $0E   ; 
- D 1 - I - 0x01641D 05:A40D: D1        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x01641E 05:A40E: 1E A4     .word sub_D1_A41E
- D 1 - I - 0x016420 05:A410: D1        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x016421 05:A411: 1E A4     .word sub_D1_A41E
- D 1 - I - 0x016423 05:A413: D8        .byte con_se_cb_D8, $0F   ; 
- D 1 - I - 0x016425 05:A415: D1        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x016426 05:A416: 1E A4     .word sub_D1_A41E
- D 1 - I - 0x016428 05:A418: D1        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x016429 05:A419: 1E A4     .word sub_D1_A41E
- D 1 - I - 0x01642B 05:A41B: D0        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x01642C 05:A41C: FC A3     .word loc_D0_A3FC



sub_D1_A41E:
- D 1 - I - 0x01642E 05:A41E: 47        .byte $47   ; 
- D 1 - I - 0x01642F 05:A41F: 4E        .byte $4E   ; 
- D 1 - I - 0x016430 05:A420: 51        .byte $51   ; 
- D 1 - I - 0x016431 05:A421: 53        .byte $53   ; 
- D 1 - I - 0x016432 05:A422: 51        .byte $51   ; 
- D 1 - I - 0x016433 05:A423: 4E        .byte $4E   ; 
- D 1 - I - 0x016434 05:A424: 55        .byte $55   ; 
- D 1 - I - 0x016435 05:A425: 51        .byte $51   ; 
- D 1 - I - 0x016436 05:A426: 47        .byte $47   ; 
- D 1 - I - 0x016437 05:A427: 4E        .byte $4E   ; 
- D 1 - I - 0x016438 05:A428: 51        .byte $51   ; 
- D 1 - I - 0x016439 05:A429: 52        .byte $52   ; 
- D 1 - I - 0x01643A 05:A42A: 53        .byte $53   ; 
- D 1 - I - 0x01643B 05:A42B: 51        .byte $51   ; 
- D 1 - I - 0x01643C 05:A42C: 55        .byte $55   ; 
- D 1 - I - 0x01643D 05:A42D: 51        .byte $51   ; 
- D 1 - I - 0x01643E 05:A42E: D2        .byte con_se_cb_rts   ; 



off_ch_09_A42F_03:
- D 1 - I - 0x01643F 05:A42F: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x016440 05:A430: F3 8B     .word ofs_CD_8BF3
- D 1 - I - 0x016442 05:A432: C4        .byte con_se_cb_C4, $23   ; 
loc_D0_A434:
- D 1 - I - 0x016444 05:A434: 0C        .byte $0C   ; 
- D 1 - I - 0x016445 05:A435: 43        .byte $43   ; 
- D 1 - I - 0x016446 05:A436: 06        .byte $06   ; 
- D 1 - I - 0x016447 05:A437: 42        .byte $42   ; 
- D 1 - I - 0x016448 05:A438: 41        .byte $41   ; 
off_CE_A439:
- D 1 - I - 0x016449 05:A439: 41        .byte $41   ; 
- D 1 - I - 0x01644A 05:A43A: 41        .byte $41   ; 
- D 1 - I - 0x01644B 05:A43B: 42        .byte $42   ; 
- D 1 - I - 0x01644C 05:A43C: 41        .byte $41   ; 
- D 1 - I - 0x01644D 05:A43D: CE        .byte con_se_cb_loop_1, $07   ; 
- D 1 - I - 0x01644F 05:A43F: 39 A4     .word off_CE_A439
- D 1 - I - 0x016451 05:A441: D0        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x016452 05:A442: 34 A4     .word loc_D0_A434


; bzk garbage
- - - - - - 0x016454 05:A444: D3        .byte con_se_cb_stop   ; 



_off013_A445_0A_mission_complete:
- D 1 - I - 0x016455 05:A445: FF        .byte $FF   ; 
- D 1 - I - 0x016456 05:A446: 00        .byte $00   ; 
- D 1 - I - 0x016457 05:A447: 53 A4     .word off_ch_0A_A453_00
- D 1 - I - 0x016459 05:A449: 01        .byte $01   ; 
- D 1 - I - 0x01645A 05:A44A: BB A4     .word off_ch_0A_A4BB_01
- D 1 - I - 0x01645C 05:A44C: 02        .byte $02   ; 
- D 1 - I - 0x01645D 05:A44D: E2 A4     .word off_ch_0A_A4E2_02
- D 1 - I - 0x01645F 05:A44F: 03        .byte $03   ; 
- D 1 - I - 0x016460 05:A450: 19 A5     .word off_ch_0A_A519_03
- D 1 - I - 0x016462 05:A452: FF        .byte $FF   ; 



off_ch_0A_A453_00:
- D 1 - I - 0x016463 05:A453: CC        .byte con_se_cb_CC, $8C   ; 
- D 1 - I - 0x016465 05:A455: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x016466 05:A456: 72 8B     .word ofs_CD_8B72
- D 1 - I - 0x016468 05:A458: D8        .byte con_se_cb_D8, $FB   ; 
- D 1 - I - 0x01646A 05:A45A: C4        .byte con_se_cb_C4, $29   ; 
- D 1 - I - 0x01646C 05:A45C: C7        .byte con_se_cb_C7, $C8   ; 
- D 1 - I - 0x01646E 05:A45E: 06        .byte $06   ; 
- D 1 - I - 0x01646F 05:A45F: 4A        .byte $4A   ; 
- D 1 - I - 0x016470 05:A460: 03        .byte $03   ; 
- D 1 - I - 0x016471 05:A461: 4F        .byte $4F   ; 
- D 1 - I - 0x016472 05:A462: 51        .byte $51   ; 
- D 1 - I - 0x016473 05:A463: 54        .byte $54   ; 
- D 1 - I - 0x016474 05:A464: 56        .byte $56   ; 
- D 1 - I - 0x016475 05:A465: 4F        .byte $4F   ; 
- D 1 - I - 0x016476 05:A466: 51        .byte $51   ; 
- D 1 - I - 0x016477 05:A467: 06        .byte $06   ; 
- D 1 - I - 0x016478 05:A468: 4C        .byte $4C   ; 
- D 1 - I - 0x016479 05:A469: 03        .byte $03   ; 
- D 1 - I - 0x01647A 05:A46A: 51        .byte $51   ; 
- D 1 - I - 0x01647B 05:A46B: 53        .byte $53   ; 
- D 1 - I - 0x01647C 05:A46C: 56        .byte $56   ; 
- D 1 - I - 0x01647D 05:A46D: 58        .byte $58   ; 
- D 1 - I - 0x01647E 05:A46E: 51        .byte $51   ; 
- D 1 - I - 0x01647F 05:A46F: 53        .byte $53   ; 
- D 1 - I - 0x016480 05:A470: 06        .byte $06   ; 
- D 1 - I - 0x016481 05:A471: 4D        .byte $4D   ; 
- D 1 - I - 0x016482 05:A472: 03        .byte $03   ; 
- D 1 - I - 0x016483 05:A473: 52        .byte $52   ; 
- D 1 - I - 0x016484 05:A474: 54        .byte $54   ; 
- D 1 - I - 0x016485 05:A475: 57        .byte $57   ; 
- D 1 - I - 0x016486 05:A476: 59        .byte $59   ; 
- D 1 - I - 0x016487 05:A477: 52        .byte $52   ; 
- D 1 - I - 0x016488 05:A478: 54        .byte $54   ; 
- D 1 - I - 0x016489 05:A479: 06        .byte $06   ; 
- D 1 - I - 0x01648A 05:A47A: 4F        .byte $4F   ; 
- D 1 - I - 0x01648B 05:A47B: 03        .byte $03   ; 
- D 1 - I - 0x01648C 05:A47C: 54        .byte $54   ; 
- D 1 - I - 0x01648D 05:A47D: 56        .byte $56   ; 
- D 1 - I - 0x01648E 05:A47E: 59        .byte $59   ; 
- D 1 - I - 0x01648F 05:A47F: 5B        .byte $5B   ; 
- D 1 - I - 0x016490 05:A480: 54        .byte $54   ; 
- D 1 - I - 0x016491 05:A481: 56        .byte $56   ; 
- D 1 - I - 0x016492 05:A482: D8        .byte con_se_cb_D8, $00   ; 
- D 1 - I - 0x016494 05:A484: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x016495 05:A485: AA 8B     .word ofs_CD_8BAA
- D 1 - I - 0x016497 05:A487: C4        .byte con_se_cb_C4, $2F   ; 
- D 1 - I - 0x016499 05:A489: C7        .byte con_se_cb_C7, $FF   ; 
- D 1 - I - 0x01649B 05:A48B: 04        .byte $04   ; 
- D 1 - I - 0x01649C 05:A48C: 62        .byte $62   ; 
- D 1 - I - 0x01649D 05:A48D: 58        .byte $58   ; 
- D 1 - I - 0x01649E 05:A48E: 58        .byte $58   ; 
- D 1 - I - 0x01649F 05:A48F: 62        .byte $62   ; 
- D 1 - I - 0x0164A0 05:A490: 58        .byte $58   ; 
- D 1 - I - 0x0164A1 05:A491: 58        .byte $58   ; 
- D 1 - I - 0x0164A2 05:A492: 62        .byte $62   ; 
- D 1 - I - 0x0164A3 05:A493: 58        .byte $58   ; 
- D 1 - I - 0x0164A4 05:A494: 58        .byte $58   ; 
- D 1 - I - 0x0164A5 05:A495: D8        .byte con_se_cb_D8, $13   ; 
loc_D0_A497:
- D 1 - I - 0x0164A7 05:A497: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x0164A8 05:A498: 2F 8B     .word ofs_CD_8B2F
- D 1 - I - 0x0164AA 05:A49A: C4        .byte con_se_cb_C4, $32   ; 
- D 1 - I - 0x0164AC 05:A49C: C7        .byte con_se_cb_C7, $C8   ; 
- D 1 - I - 0x0164AE 05:A49E: 03        .byte $03   ; 
- D 1 - I - 0x0164AF 05:A49F: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0164B0 05:A4A0: 06        .byte $06   ; 
- D 1 - I - 0x0164B1 05:A4A1: 4F        .byte $4F   ; 
- D 1 - I - 0x0164B2 05:A4A2: C7        .byte con_se_cb_C7, $FA   ; 
- D 1 - I - 0x0164B4 05:A4A4: D6        .byte con_se_cb_D6   ; 
- D 1 - I - 0x0164B5 05:A4A5: 09        .byte $09   ; 
- D 1 - I - 0x0164B6 05:A4A6: 51        .byte $51   ; 
- D 1 - I - 0x0164B7 05:A4A7: 01        .byte $01   ; 
- D 1 - I - 0x0164B8 05:A4A8: 51        .byte $51   ; 
- D 1 - I - 0x0164B9 05:A4A9: 50        .byte $50   ; 
- D 1 - I - 0x0164BA 05:A4AA: 4F        .byte $4F   ; 
- D 1 - I - 0x0164BB 05:A4AB: 4E        .byte $4E   ; 
- D 1 - I - 0x0164BC 05:A4AC: 4D        .byte $4D   ; 
- D 1 - I - 0x0164BD 05:A4AD: 4C        .byte $4C   ; 
- D 1 - I - 0x0164BE 05:A4AE: 4B        .byte $4B   ; 
- D 1 - I - 0x0164BF 05:A4AF: 4A        .byte $4A   ; 
- D 1 - I - 0x0164C0 05:A4B0: 49        .byte $49   ; 
- D 1 - I - 0x0164C1 05:A4B1: 48        .byte $48   ; 
- D 1 - I - 0x0164C2 05:A4B2: 47        .byte $47   ; 
- D 1 - I - 0x0164C3 05:A4B3: 46        .byte $46   ; 
- D 1 - I - 0x0164C4 05:A4B4: 45        .byte $45   ; 
- D 1 - I - 0x0164C5 05:A4B5: 44        .byte $44   ; 
- D 1 - I - 0x0164C6 05:A4B6: 43        .byte $43   ; 
- D 1 - I - 0x0164C7 05:A4B7: 42        .byte $42   ; 
- D 1 - I - 0x0164C8 05:A4B8: 41        .byte $41   ; 
- D 1 - I - 0x0164C9 05:A4B9: 40        .byte $40   ; 
- D 1 - I - 0x0164CA 05:A4BA: D3        .byte con_se_cb_stop   ; 



off_ch_0A_A4BB_01:
- D 1 - I - 0x0164CB 05:A4BB: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x0164CC 05:A4BC: 76 8B     .word ofs_CD_8B76
- D 1 - I - 0x0164CE 05:A4BE: D8        .byte con_se_cb_D8, $FB   ; 
- D 1 - I - 0x0164D0 05:A4C0: C4        .byte con_se_cb_C4, $23   ; 
- D 1 - I - 0x0164D2 05:A4C2: C7        .byte con_se_cb_C7, $C8   ; 
- D 1 - I - 0x0164D4 05:A4C4: 30        .byte $30   ; 
- D 1 - I - 0x0164D5 05:A4C5: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0164D6 05:A4C6: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0164D7 05:A4C7: D8        .byte con_se_cb_D8, $00   ; 
- D 1 - I - 0x0164D9 05:A4C9: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x0164DA 05:A4CA: AA 8B     .word ofs_CD_8BAA
- D 1 - I - 0x0164DC 05:A4CC: C4        .byte con_se_cb_C4, $2F   ; 
- D 1 - I - 0x0164DE 05:A4CE: C7        .byte con_se_cb_C7, $FF   ; 
- D 1 - I - 0x0164E0 05:A4D0: 02        .byte $02   ; 
- D 1 - I - 0x0164E1 05:A4D1: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0164E2 05:A4D2: 04        .byte $04   ; 
- D 1 - I - 0x0164E3 05:A4D3: 5D        .byte $5D   ; 
- D 1 - I - 0x0164E4 05:A4D4: 5D        .byte $5D   ; 
- D 1 - I - 0x0164E5 05:A4D5: 54        .byte $54   ; 
- D 1 - I - 0x0164E6 05:A4D6: 5D        .byte $5D   ; 
- D 1 - I - 0x0164E7 05:A4D7: 5D        .byte $5D   ; 
- D 1 - I - 0x0164E8 05:A4D8: 54        .byte $54   ; 
- D 1 - I - 0x0164E9 05:A4D9: 5D        .byte $5D   ; 
- D 1 - I - 0x0164EA 05:A4DA: 5D        .byte $5D   ; 
- D 1 - I - 0x0164EB 05:A4DB: 02        .byte $02   ; 
- D 1 - I - 0x0164EC 05:A4DC: 54        .byte $54   ; 
- D 1 - I - 0x0164ED 05:A4DD: D8        .byte con_se_cb_D8, $0E   ; 
- D 1 - I - 0x0164EF 05:A4DF: D0        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x0164F0 05:A4E0: 97 A4     .word loc_D0_A497



off_ch_0A_A4E2_02:
- D 1 - I - 0x0164F2 05:A4E2: D8        .byte con_se_cb_D8, $07   ; 
- D 1 - I - 0x0164F4 05:A4E4: C7        .byte con_se_cb_C7, $C8   ; 
- D 1 - I - 0x0164F6 05:A4E6: 06        .byte $06   ; 
- D 1 - I - 0x0164F7 05:A4E7: 56        .byte $56   ; 
- D 1 - I - 0x0164F8 05:A4E8: 03        .byte $03   ; 
- D 1 - I - 0x0164F9 05:A4E9: 5B        .byte $5B   ; 
- D 1 - I - 0x0164FA 05:A4EA: 5D        .byte $5D   ; 
- D 1 - I - 0x0164FB 05:A4EB: 60        .byte $60   ; 
- D 1 - I - 0x0164FC 05:A4EC: 62        .byte $62   ; 
- D 1 - I - 0x0164FD 05:A4ED: 5B        .byte $5B   ; 
- D 1 - I - 0x0164FE 05:A4EE: 5D        .byte $5D   ; 
- D 1 - I - 0x0164FF 05:A4EF: 06        .byte $06   ; 
- D 1 - I - 0x016500 05:A4F0: 58        .byte $58   ; 
- D 1 - I - 0x016501 05:A4F1: 03        .byte $03   ; 
- D 1 - I - 0x016502 05:A4F2: 5D        .byte $5D   ; 
- D 1 - I - 0x016503 05:A4F3: 5F        .byte $5F   ; 
- D 1 - I - 0x016504 05:A4F4: 62        .byte $62   ; 
- D 1 - I - 0x016505 05:A4F5: 64        .byte $64   ; 
- D 1 - I - 0x016506 05:A4F6: 5D        .byte $5D   ; 
- D 1 - I - 0x016507 05:A4F7: 5F        .byte $5F   ; 
- D 1 - I - 0x016508 05:A4F8: 06        .byte $06   ; 
- D 1 - I - 0x016509 05:A4F9: 59        .byte $59   ; 
- D 1 - I - 0x01650A 05:A4FA: 03        .byte $03   ; 
- D 1 - I - 0x01650B 05:A4FB: 5E        .byte $5E   ; 
- D 1 - I - 0x01650C 05:A4FC: 60        .byte $60   ; 
- D 1 - I - 0x01650D 05:A4FD: 63        .byte $63   ; 
- D 1 - I - 0x01650E 05:A4FE: 65        .byte $65   ; 
- D 1 - I - 0x01650F 05:A4FF: 5E        .byte $5E   ; 
- D 1 - I - 0x016510 05:A500: 60        .byte $60   ; 
- D 1 - I - 0x016511 05:A501: 06        .byte $06   ; 
- D 1 - I - 0x016512 05:A502: 5B        .byte $5B   ; 
- D 1 - I - 0x016513 05:A503: 03        .byte $03   ; 
- D 1 - I - 0x016514 05:A504: 60        .byte $60   ; 
- D 1 - I - 0x016515 05:A505: 62        .byte $62   ; 
- D 1 - I - 0x016516 05:A506: 65        .byte $65   ; 
- D 1 - I - 0x016517 05:A507: 67        .byte $67   ; 
- D 1 - I - 0x016518 05:A508: 60        .byte $60   ; 
- D 1 - I - 0x016519 05:A509: 62        .byte $62   ; 
- D 1 - I - 0x01651A 05:A50A: 18        .byte $18   ; 
- D 1 - I - 0x01651B 05:A50B: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x01651C 05:A50C: 0C        .byte $0C   ; 
- D 1 - I - 0x01651D 05:A50D: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x01651E 05:A50E: C7        .byte con_se_cb_C7, $C8   ; 
- D 1 - I - 0x016520 05:A510: 03        .byte $03   ; 
- D 1 - I - 0x016521 05:A511: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016522 05:A512: 5B        .byte $5B   ; 
- D 1 - I - 0x016523 05:A513: C7        .byte con_se_cb_C7, $FA   ; 
- D 1 - I - 0x016525 05:A515: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016526 05:A516: 06        .byte $06   ; 
- D 1 - I - 0x016527 05:A517: 5D        .byte $5D   ; 
- D 1 - I - 0x016528 05:A518: D3        .byte con_se_cb_stop   ; 



off_ch_0A_A519_03:
- D 1 - I - 0x016529 05:A519: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x01652A 05:A51A: F3 8B     .word ofs_CD_8BF3
- D 1 - I - 0x01652C 05:A51C: C4        .byte con_se_cb_C4, $23   ; 
- D 1 - I - 0x01652E 05:A51E: 0C        .byte $0C   ; 
- D 1 - I - 0x01652F 05:A51F: 43        .byte $43   ; 
- D 1 - I - 0x016530 05:A520: 06        .byte $06   ; 
- D 1 - I - 0x016531 05:A521: 42        .byte $42   ; 
- D 1 - I - 0x016532 05:A522: 41        .byte $41   ; 
- D 1 - I - 0x016533 05:A523: 41        .byte $41   ; 
- D 1 - I - 0x016534 05:A524: 41        .byte $41   ; 
- D 1 - I - 0x016535 05:A525: 42        .byte $42   ; 
- D 1 - I - 0x016536 05:A526: 41        .byte $41   ; 
- D 1 - I - 0x016537 05:A527: 41        .byte $41   ; 
- D 1 - I - 0x016538 05:A528: 41        .byte $41   ; 
- D 1 - I - 0x016539 05:A529: 42        .byte $42   ; 
- D 1 - I - 0x01653A 05:A52A: 41        .byte $41   ; 
- D 1 - I - 0x01653B 05:A52B: 41        .byte $41   ; 
- D 1 - I - 0x01653C 05:A52C: 41        .byte $41   ; 
- D 1 - I - 0x01653D 05:A52D: 42        .byte $42   ; 
- D 1 - I - 0x01653E 05:A52E: 41        .byte $41   ; 
- D 1 - I - 0x01653F 05:A52F: C4        .byte con_se_cb_C4, $50   ; 
- D 1 - I - 0x016541 05:A531: 02        .byte $02   ; 
- D 1 - I - 0x016542 05:A532: DA        .byte con_se_cb_DA, $12   ; 
- D 1 - I - 0x016544 05:A534: 42        .byte $42   ; 
- D 1 - I - 0x016545 05:A535: 03        .byte $03   ; 
- D 1 - I - 0x016546 05:A536: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016547 05:A537: 42        .byte $42   ; 
- D 1 - I - 0x016548 05:A538: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016549 05:A539: 09        .byte $09   ; 
- D 1 - I - 0x01654A 05:A53A: 42        .byte $42   ; 
- D 1 - I - 0x01654B 05:A53B: D3        .byte con_se_cb_stop   ; 



_off013_A53C_14:
- D 1 - I - 0x01654C 05:A53C: FF        .byte $FF   ; 
- D 1 - I - 0x01654D 05:A53D: 00        .byte $00   ; 
- D 1 - I - 0x01654E 05:A53E: 4A A5     .word off_ch_14_A54A_00
- D 1 - I - 0x016550 05:A540: 01        .byte $01   ; 
- D 1 - I - 0x016551 05:A541: 1B A6     .word off_ch_14_A61B_01
- D 1 - I - 0x016553 05:A543: 02        .byte $02   ; 
- D 1 - I - 0x016554 05:A544: DA A6     .word off_ch_14_A6DA_02
- D 1 - I - 0x016556 05:A546: 03        .byte $03   ; 
- D 1 - I - 0x016557 05:A547: 30 A7     .word off_ch_14_A730_03
- D 1 - I - 0x016559 05:A549: FF        .byte $FF   ; 



off_ch_14_A54A_00:
- D 1 - I - 0x01655A 05:A54A: CC        .byte con_se_cb_CC, $65   ; 
- D 1 - I - 0x01655C 05:A54C: D8        .byte con_se_cb_D8, $FC   ; 
- D 1 - I - 0x01655E 05:A54E: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x01655F 05:A54F: B6 8A     .word ofs_CD_8AB6
- D 1 - I - 0x016561 05:A551: C7        .byte con_se_cb_C7, $FF   ; 
- D 1 - I - 0x016563 05:A553: C4        .byte con_se_cb_C4, $5A   ; 
- D 1 - I - 0x016565 05:A555: D6        .byte con_se_cb_D6   ; 
- D 1 - I - 0x016566 05:A556: 02        .byte $02   ; 
- D 1 - I - 0x016567 05:A557: 53        .byte $53   ; 
- D 1 - I - 0x016568 05:A558: 54        .byte $54   ; 
- D 1 - I - 0x016569 05:A559: 56        .byte $56   ; 
- D 1 - I - 0x01656A 05:A55A: 58        .byte $58   ; 
- D 1 - I - 0x01656B 05:A55B: 5A        .byte $5A   ; 
- D 1 - I - 0x01656C 05:A55C: 5B        .byte $5B   ; 
- D 1 - I - 0x01656D 05:A55D: 5D        .byte $5D   ; 
- D 1 - I - 0x01656E 05:A55E: 5F        .byte $5F   ; 
- D 1 - I - 0x01656F 05:A55F: 60        .byte $60   ; 
- D 1 - I - 0x016570 05:A560: 62        .byte $62   ; 
- D 1 - I - 0x016571 05:A561: 64        .byte $64   ; 
- D 1 - I - 0x016572 05:A562: 66        .byte $66   ; 
- D 1 - I - 0x016573 05:A563: 67        .byte $67   ; 
- D 1 - I - 0x016574 05:A564: 69        .byte $69   ; 
- D 1 - I - 0x016575 05:A565: D7        .byte con_se_cb_D7   ; 
- D 1 - I - 0x016576 05:A566: C7        .byte con_se_cb_C7, $FA   ; 
- D 1 - I - 0x016578 05:A568: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x016579 05:A569: 2F 8B     .word ofs_CD_8B2F
- D 1 - I - 0x01657B 05:A56B: DB        .byte con_se_cb_DB, $12, $1E, $78   ; 
- D 1 - I - 0x01657F 05:A56F: D1        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x016580 05:A570: DB A5     .word sub_D1_A5DB
- D 1 - I - 0x016582 05:A572: 12        .byte $12   ; 
- D 1 - I - 0x016583 05:A573: 66        .byte $66   ; 
- D 1 - I - 0x016584 05:A574: 67        .byte $67   ; 
- D 1 - I - 0x016585 05:A575: 0C        .byte $0C   ; 
- D 1 - I - 0x016586 05:A576: 6B        .byte $6B   ; 
- D 1 - I - 0x016587 05:A577: D1        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x016588 05:A578: DB A5     .word sub_D1_A5DB
- D 1 - I - 0x01658A 05:A57A: 12        .byte $12   ; 
- D 1 - I - 0x01658B 05:A57B: 72        .byte $72   ; 
- D 1 - I - 0x01658C 05:A57C: 06        .byte $06   ; 
- D 1 - I - 0x01658D 05:A57D: 73        .byte $73   ; 
- D 1 - I - 0x01658E 05:A57E: 72        .byte $72   ; 
- D 1 - I - 0x01658F 05:A57F: 70        .byte $70   ; 
- D 1 - I - 0x016590 05:A580: 6E        .byte $6E   ; 
- D 1 - I - 0x016591 05:A581: 6C        .byte $6C   ; 
- D 1 - I - 0x016592 05:A582: 12        .byte $12   ; 
- D 1 - I - 0x016593 05:A583: 6B        .byte $6B   ; 
- D 1 - I - 0x016594 05:A584: 70        .byte $70   ; 
- D 1 - I - 0x016595 05:A585: 0C        .byte $0C   ; 
- D 1 - I - 0x016596 05:A586: 6E        .byte $6E   ; 
- D 1 - I - 0x016597 05:A587: 12        .byte $12   ; 
- D 1 - I - 0x016598 05:A588: 69        .byte $69   ; 
- D 1 - I - 0x016599 05:A589: 6B        .byte $6B   ; 
- D 1 - I - 0x01659A 05:A58A: 0C        .byte $0C   ; 
- D 1 - I - 0x01659B 05:A58B: 6E        .byte $6E   ; 
- D 1 - I - 0x01659C 05:A58C: 06        .byte $06   ; 
- D 1 - I - 0x01659D 05:A58D: 6D        .byte $6D   ; 
- D 1 - I - 0x01659E 05:A58E: 0C        .byte $0C   ; 
- D 1 - I - 0x01659F 05:A58F: 69        .byte $69   ; 
- D 1 - I - 0x0165A0 05:A590: 64        .byte $64   ; 
- D 1 - I - 0x0165A1 05:A591: 06        .byte $06   ; 
- D 1 - I - 0x0165A2 05:A592: 6D        .byte $6D   ; 
- D 1 - I - 0x0165A3 05:A593: 69        .byte $69   ; 
- D 1 - I - 0x0165A4 05:A594: 64        .byte $64   ; 
- D 1 - I - 0x0165A5 05:A595: 6B        .byte $6B   ; 
- D 1 - I - 0x0165A6 05:A596: 0C        .byte $0C   ; 
- D 1 - I - 0x0165A7 05:A597: 67        .byte $67   ; 
- D 1 - I - 0x0165A8 05:A598: 64        .byte $64   ; 
- D 1 - I - 0x0165A9 05:A599: 06        .byte $06   ; 
- D 1 - I - 0x0165AA 05:A59A: 67        .byte $67   ; 
- D 1 - I - 0x0165AB 05:A59B: 0C        .byte $0C   ; 
- D 1 - I - 0x0165AC 05:A59C: 6B        .byte $6B   ; 
- D 1 - I - 0x0165AD 05:A59D: 06        .byte $06   ; 
- D 1 - I - 0x0165AE 05:A59E: 6A        .byte $6A   ; 
- D 1 - I - 0x0165AF 05:A59F: 67        .byte $67   ; 
- D 1 - I - 0x0165B0 05:A5A0: 6E        .byte $6E   ; 
- D 1 - I - 0x0165B1 05:A5A1: AC        .byte $AC   ; 
- D 1 - I - 0x0165B2 05:A5A2: 80        .byte $80   ; 
- D 1 - I - 0x0165B3 05:A5A3: 6C        .byte $6C   ; 
- D 1 - I - 0x0165B4 05:A5A4: 6E        .byte $6E   ; 
- D 1 - I - 0x0165B5 05:A5A5: 6C        .byte $6C   ; 
- D 1 - I - 0x0165B6 05:A5A6: 6A        .byte $6A   ; 
- D 1 - I - 0x0165B7 05:A5A7: 69        .byte $69   ; 
- D 1 - I - 0x0165B8 05:A5A8: 6A        .byte $6A   ; 
- D 1 - I - 0x0165B9 05:A5A9: 6C        .byte $6C   ; 
- D 1 - I - 0x0165BA 05:A5AA: A5        .byte $A5   ; 
- D 1 - I - 0x0165BB 05:A5AB: 80        .byte $80   ; 
- D 1 - I - 0x0165BC 05:A5AC: 65        .byte $65   ; 
- D 1 - I - 0x0165BD 05:A5AD: 62        .byte $62   ; 
- D 1 - I - 0x0165BE 05:A5AE: 65        .byte $65   ; 
- D 1 - I - 0x0165BF 05:A5AF: 69        .byte $69   ; 
- D 1 - I - 0x0165C0 05:A5B0: 12        .byte $12   ; 
- D 1 - I - 0x0165C1 05:A5B1: 6C        .byte $6C   ; 
- D 1 - I - 0x0165C2 05:A5B2: 06        .byte $06   ; 
- D 1 - I - 0x0165C3 05:A5B3: 6A        .byte $6A   ; 
- D 1 - I - 0x0165C4 05:A5B4: 69        .byte $69   ; 
- D 1 - I - 0x0165C5 05:A5B5: 12        .byte $12   ; 
- D 1 - I - 0x0165C6 05:A5B6: 6C        .byte $6C   ; 
- D 1 - I - 0x0165C7 05:A5B7: 12        .byte $12   ; 
- D 1 - I - 0x0165C8 05:A5B8: 6B        .byte $6B   ; 
- D 1 - I - 0x0165C9 05:A5B9: 12        .byte $12   ; 
- D 1 - I - 0x0165CA 05:A5BA: 6E        .byte $6E   ; 
- D 1 - I - 0x0165CB 05:A5BB: 0C        .byte $0C   ; 
- D 1 - I - 0x0165CC 05:A5BC: 72        .byte $72   ; 
- D 1 - I - 0x0165CD 05:A5BD: 06        .byte $06   ; 
- D 1 - I - 0x0165CE 05:A5BE: 6C        .byte $6C   ; 
- D 1 - I - 0x0165CF 05:A5BF: 6B        .byte $6B   ; 
- D 1 - I - 0x0165D0 05:A5C0: 67        .byte $67   ; 
- D 1 - I - 0x0165D1 05:A5C1: 6C        .byte $6C   ; 
- D 1 - I - 0x0165D2 05:A5C2: 6B        .byte $6B   ; 
- D 1 - I - 0x0165D3 05:A5C3: 67        .byte $67   ; 
- D 1 - I - 0x0165D4 05:A5C4: 64        .byte $64   ; 
- D 1 - I - 0x0165D5 05:A5C5: 67        .byte $67   ; 
- D 1 - I - 0x0165D6 05:A5C6: 6B        .byte $6B   ; 
- D 1 - I - 0x0165D7 05:A5C7: 69        .byte $69   ; 
- D 1 - I - 0x0165D8 05:A5C8: 66        .byte $66   ; 
- D 1 - I - 0x0165D9 05:A5C9: 6E        .byte $6E   ; 
- D 1 - I - 0x0165DA 05:A5CA: 69        .byte $69   ; 
- D 1 - I - 0x0165DB 05:A5CB: 66        .byte $66   ; 
- D 1 - I - 0x0165DC 05:A5CC: 6B        .byte $6B   ; 
- D 1 - I - 0x0165DD 05:A5CD: 66        .byte $66   ; 
- D 1 - I - 0x0165DE 05:A5CE: 67        .byte $67   ; 
- D 1 - I - 0x0165DF 05:A5CF: 64        .byte $64   ; 
- D 1 - I - 0x0165E0 05:A5D0: 60        .byte $60   ; 
- D 1 - I - 0x0165E1 05:A5D1: 67        .byte $67   ; 
- D 1 - I - 0x0165E2 05:A5D2: 64        .byte $64   ; 
- D 1 - I - 0x0165E3 05:A5D3: 60        .byte $60   ; 
- D 1 - I - 0x0165E4 05:A5D4: 5F        .byte $5F   ; 
- D 1 - I - 0x0165E5 05:A5D5: 5B        .byte $5B   ; 
- D 1 - I - 0x0165E6 05:A5D6: 12        .byte $12   ; 
- D 1 - I - 0x0165E7 05:A5D7: 5D        .byte $5D   ; 
- D 1 - I - 0x0165E8 05:A5D8: 30        .byte $30   ; 
- D 1 - I - 0x0165E9 05:A5D9: 5F        .byte $5F   ; 
- D 1 - I - 0x0165EA 05:A5DA: D3        .byte con_se_cb_stop   ; 



sub_D1_A5DB:
- D 1 - I - 0x0165EB 05:A5DB: 12        .byte $12   ; 
- D 1 - I - 0x0165EC 05:A5DC: 6B        .byte $6B   ; 
- D 1 - I - 0x0165ED 05:A5DD: 06        .byte $06   ; 
- D 1 - I - 0x0165EE 05:A5DE: 69        .byte $69   ; 
- D 1 - I - 0x0165EF 05:A5DF: 6B        .byte $6B   ; 
- D 1 - I - 0x0165F0 05:A5E0: B0        .byte $B0   ; 
- D 1 - I - 0x0165F1 05:A5E1: 80        .byte $80   ; 
- D 1 - I - 0x0165F2 05:A5E2: 70        .byte $70   ; 
- D 1 - I - 0x0165F3 05:A5E3: AB        .byte $AB   ; 
- D 1 - I - 0x0165F4 05:A5E4: 80        .byte $80   ; 
- D 1 - I - 0x0165F5 05:A5E5: 18        .byte $18   ; 
- D 1 - I - 0x0165F6 05:A5E6: AB        .byte $AB   ; 
- D 1 - I - 0x0165F7 05:A5E7: 80        .byte $80   ; 
- D 1 - I - 0x0165F8 05:A5E8: 06        .byte $06   ; 
- D 1 - I - 0x0165F9 05:A5E9: 6B        .byte $6B   ; 
- D 1 - I - 0x0165FA 05:A5EA: 64        .byte $64   ; 
- D 1 - I - 0x0165FB 05:A5EB: 66        .byte $66   ; 
- D 1 - I - 0x0165FC 05:A5EC: 67        .byte $67   ; 
- D 1 - I - 0x0165FD 05:A5ED: 12        .byte $12   ; 
- D 1 - I - 0x0165FE 05:A5EE: 69        .byte $69   ; 
- D 1 - I - 0x0165FF 05:A5EF: 06        .byte $06   ; 
- D 1 - I - 0x016600 05:A5F0: 67        .byte $67   ; 
- D 1 - I - 0x016601 05:A5F1: 69        .byte $69   ; 
- D 1 - I - 0x016602 05:A5F2: AE        .byte $AE   ; 
- D 1 - I - 0x016603 05:A5F3: 80        .byte $80   ; 
- D 1 - I - 0x016604 05:A5F4: 6E        .byte $6E   ; 
- D 1 - I - 0x016605 05:A5F5: A9        .byte $A9   ; 
- D 1 - I - 0x016606 05:A5F6: 80        .byte $80   ; 
- D 1 - I - 0x016607 05:A5F7: 69        .byte $69   ; 
- D 1 - I - 0x016608 05:A5F8: 0C        .byte $0C   ; 
- D 1 - I - 0x016609 05:A5F9: 6B        .byte $6B   ; 
- D 1 - I - 0x01660A 05:A5FA: 6C        .byte $6C   ; 
- D 1 - I - 0x01660B 05:A5FB: 06        .byte $06   ; 
- D 1 - I - 0x01660C 05:A5FC: 6B        .byte $6B   ; 
- D 1 - I - 0x01660D 05:A5FD: 03        .byte $03   ; 
- D 1 - I - 0x01660E 05:A5FE: 64        .byte $64   ; 
- D 1 - I - 0x01660F 05:A5FF: 66        .byte $66   ; 
- D 1 - I - 0x016610 05:A600: 67        .byte $67   ; 
- D 1 - I - 0x016611 05:A601: 69        .byte $69   ; 
- D 1 - I - 0x016612 05:A602: 12        .byte $12   ; 
- D 1 - I - 0x016613 05:A603: 6B        .byte $6B   ; 
- D 1 - I - 0x016614 05:A604: 06        .byte $06   ; 
- D 1 - I - 0x016615 05:A605: 69        .byte $69   ; 
- D 1 - I - 0x016616 05:A606: 6B        .byte $6B   ; 
- D 1 - I - 0x016617 05:A607: B0        .byte $B0   ; 
- D 1 - I - 0x016618 05:A608: 80        .byte $80   ; 
- D 1 - I - 0x016619 05:A609: 70        .byte $70   ; 
- D 1 - I - 0x01661A 05:A60A: AB        .byte $AB   ; 
- D 1 - I - 0x01661B 05:A60B: 80        .byte $80   ; 
- D 1 - I - 0x01661C 05:A60C: 18        .byte $18   ; 
- D 1 - I - 0x01661D 05:A60D: AB        .byte $AB   ; 
- D 1 - I - 0x01661E 05:A60E: 80        .byte $80   ; 
- D 1 - I - 0x01661F 05:A60F: 06        .byte $06   ; 
- D 1 - I - 0x016620 05:A610: 6B        .byte $6B   ; 
- D 1 - I - 0x016621 05:A611: 73        .byte $73   ; 
- D 1 - I - 0x016622 05:A612: 72        .byte $72   ; 
- D 1 - I - 0x016623 05:A613: 6E        .byte $6E   ; 
- D 1 - I - 0x016624 05:A614: 12        .byte $12   ; 
- D 1 - I - 0x016625 05:A615: 69        .byte $69   ; 
- D 1 - I - 0x016626 05:A616: 6B        .byte $6B   ; 
- D 1 - I - 0x016627 05:A617: 0C        .byte $0C   ; 
- D 1 - I - 0x016628 05:A618: 6E        .byte $6E   ; 
- D 1 - I - 0x016629 05:A619: D2        .byte con_se_cb_rts   ; 


; bzk garbage
- - - - - - 0x01662A 05:A61A: D3        .byte con_se_cb_stop   ; 



off_ch_14_A61B_01:
- D 1 - I - 0x01662B 05:A61B: D8        .byte con_se_cb_D8, $FC   ; 
- D 1 - I - 0x01662D 05:A61D: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x01662E 05:A61E: B6 8A     .word ofs_CD_8AB6
- D 1 - I - 0x016630 05:A620: C7        .byte con_se_cb_C7, $FF   ; 
- D 1 - I - 0x016632 05:A622: C4        .byte con_se_cb_C4, $32   ; 
- D 1 - I - 0x016634 05:A624: D6        .byte con_se_cb_D6   ; 
- D 1 - I - 0x016635 05:A625: 01        .byte $01   ; 
- D 1 - I - 0x016636 05:A626: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016637 05:A627: 02        .byte $02   ; 
- D 1 - I - 0x016638 05:A628: 53        .byte $53   ; 
- D 1 - I - 0x016639 05:A629: 54        .byte $54   ; 
- D 1 - I - 0x01663A 05:A62A: 56        .byte $56   ; 
- D 1 - I - 0x01663B 05:A62B: 58        .byte $58   ; 
- D 1 - I - 0x01663C 05:A62C: 5A        .byte $5A   ; 
- D 1 - I - 0x01663D 05:A62D: 5B        .byte $5B   ; 
- D 1 - I - 0x01663E 05:A62E: 5D        .byte $5D   ; 
- D 1 - I - 0x01663F 05:A62F: 5F        .byte $5F   ; 
- D 1 - I - 0x016640 05:A630: 60        .byte $60   ; 
- D 1 - I - 0x016641 05:A631: 62        .byte $62   ; 
- D 1 - I - 0x016642 05:A632: 64        .byte $64   ; 
- D 1 - I - 0x016643 05:A633: 66        .byte $66   ; 
- D 1 - I - 0x016644 05:A634: 67        .byte $67   ; 
- D 1 - I - 0x016645 05:A635: 01        .byte $01   ; 
- D 1 - I - 0x016646 05:A636: 69        .byte $69   ; 
- D 1 - I - 0x016647 05:A637: D7        .byte con_se_cb_D7   ; 
- D 1 - I - 0x016648 05:A638: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x016649 05:A639: 2F 8B     .word ofs_CD_8B2F
- D 1 - I - 0x01664B 05:A63B: C7        .byte con_se_cb_C7, $FA   ; 
- D 1 - I - 0x01664D 05:A63D: C4        .byte con_se_cb_C4, $5A   ; 
- D 1 - I - 0x01664F 05:A63F: DB        .byte con_se_cb_DB, $12, $1E, $78   ; 
- D 1 - I - 0x016653 05:A643: D1        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x016654 05:A644: 9E A6     .word sub_D1_A69E
- D 1 - I - 0x016656 05:A646: 12        .byte $12   ; 
- D 1 - I - 0x016657 05:A647: 62        .byte $62   ; 
- D 1 - I - 0x016658 05:A648: 62        .byte $62   ; 
- D 1 - I - 0x016659 05:A649: 0C        .byte $0C   ; 
- D 1 - I - 0x01665A 05:A64A: 67        .byte $67   ; 
- D 1 - I - 0x01665B 05:A64B: D1        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x01665C 05:A64C: 9E A6     .word sub_D1_A69E
- D 1 - I - 0x01665E 05:A64E: 12        .byte $12   ; 
- D 1 - I - 0x01665F 05:A64F: 6E        .byte $6E   ; 
- D 1 - I - 0x016660 05:A650: 06        .byte $06   ; 
- D 1 - I - 0x016661 05:A651: 5F        .byte $5F   ; 
- D 1 - I - 0x016662 05:A652: 60        .byte $60   ; 
- D 1 - I - 0x016663 05:A653: 62        .byte $62   ; 
- D 1 - I - 0x016664 05:A654: 64        .byte $64   ; 
- D 1 - I - 0x016665 05:A655: 66        .byte $66   ; 
- D 1 - I - 0x016666 05:A656: 12        .byte $12   ; 
- D 1 - I - 0x016667 05:A657: 66        .byte $66   ; 
- D 1 - I - 0x016668 05:A658: 67        .byte $67   ; 
- D 1 - I - 0x016669 05:A659: 0C        .byte $0C   ; 
- D 1 - I - 0x01666A 05:A65A: 67        .byte $67   ; 
- D 1 - I - 0x01666B 05:A65B: 12        .byte $12   ; 
- D 1 - I - 0x01666C 05:A65C: 64        .byte $64   ; 
- D 1 - I - 0x01666D 05:A65D: 67        .byte $67   ; 
- D 1 - I - 0x01666E 05:A65E: 0C        .byte $0C   ; 
- D 1 - I - 0x01666F 05:A65F: 6B        .byte $6B   ; 
- D 1 - I - 0x016670 05:A660: 06        .byte $06   ; 
- D 1 - I - 0x016671 05:A661: 69        .byte $69   ; 
- D 1 - I - 0x016672 05:A662: A4        .byte $A4   ; 
- D 1 - I - 0x016673 05:A663: 80        .byte $80   ; 
- D 1 - I - 0x016674 05:A664: 64        .byte $64   ; 
- D 1 - I - 0x016675 05:A665: A1        .byte $A1   ; 
- D 1 - I - 0x016676 05:A666: 80        .byte $80   ; 
- D 1 - I - 0x016677 05:A667: 61        .byte $61   ; 
- D 1 - I - 0x016678 05:A668: 69        .byte $69   ; 
- D 1 - I - 0x016679 05:A669: 64        .byte $64   ; 
- D 1 - I - 0x01667A 05:A66A: 61        .byte $61   ; 
- D 1 - I - 0x01667B 05:A66B: 67        .byte $67   ; 
- D 1 - I - 0x01667C 05:A66C: A4        .byte $A4   ; 
- D 1 - I - 0x01667D 05:A66D: 80        .byte $80   ; 
- D 1 - I - 0x01667E 05:A66E: 64        .byte $64   ; 
- D 1 - I - 0x01667F 05:A66F: A0        .byte $A0   ; 
- D 1 - I - 0x016680 05:A670: 80        .byte $80   ; 
- D 1 - I - 0x016681 05:A671: 60        .byte $60   ; 
- D 1 - I - 0x016682 05:A672: 64        .byte $64   ; 
- D 1 - I - 0x016683 05:A673: 0C        .byte $0C   ; 
- D 1 - I - 0x016684 05:A674: 67        .byte $67   ; 
- D 1 - I - 0x016685 05:A675: 06        .byte $06   ; 
- D 1 - I - 0x016686 05:A676: 67        .byte $67   ; 
- D 1 - I - 0x016687 05:A677: 63        .byte $63   ; 
- D 1 - I - 0x016688 05:A678: 6A        .byte $6A   ; 
- D 1 - I - 0x016689 05:A679: A7        .byte $A7   ; 
- D 1 - I - 0x01668A 05:A67A: 80        .byte $80   ; 
- D 1 - I - 0x01668B 05:A67B: 18        .byte $18   ; 
- D 1 - I - 0x01668C 05:A67C: 67        .byte $67   ; 
- D 1 - I - 0x01668D 05:A67D: 06        .byte $06   ; 
- D 1 - I - 0x01668E 05:A67E: 65        .byte $65   ; 
- D 1 - I - 0x01668F 05:A67F: 65        .byte $65   ; 
- D 1 - I - 0x016690 05:A680: 65        .byte $65   ; 
- D 1 - I - 0x016691 05:A681: A0        .byte $A0   ; 
- D 1 - I - 0x016692 05:A682: 80        .byte $80   ; 
- D 1 - I - 0x016693 05:A683: 60        .byte $60   ; 
- D 1 - I - 0x016694 05:A684: 5D        .byte $5D   ; 
- D 1 - I - 0x016695 05:A685: 62        .byte $62   ; 
- D 1 - I - 0x016696 05:A686: 65        .byte $65   ; 
- D 1 - I - 0x016697 05:A687: 12        .byte $12   ; 
- D 1 - I - 0x016698 05:A688: 69        .byte $69   ; 
- D 1 - I - 0x016699 05:A689: 06        .byte $06   ; 
- D 1 - I - 0x01669A 05:A68A: 65        .byte $65   ; 
- D 1 - I - 0x01669B 05:A68B: 65        .byte $65   ; 
- D 1 - I - 0x01669C 05:A68C: A9        .byte $A9   ; 
- D 1 - I - 0x01669D 05:A68D: 80        .byte $80   ; 
- D 1 - I - 0x01669E 05:A68E: 0C        .byte $0C   ; 
- D 1 - I - 0x01669F 05:A68F: 69        .byte $69   ; 
- D 1 - I - 0x0166A0 05:A690: 12        .byte $12   ; 
- D 1 - I - 0x0166A1 05:A691: 67        .byte $67   ; 
- D 1 - I - 0x0166A2 05:A692: 69        .byte $69   ; 
- D 1 - I - 0x0166A3 05:A693: 0C        .byte $0C   ; 
- D 1 - I - 0x0166A4 05:A694: 6E        .byte $6E   ; 
- D 1 - I - 0x0166A5 05:A695: 30        .byte $30   ; 
- D 1 - I - 0x0166A6 05:A696: 64        .byte $64   ; 
- D 1 - I - 0x0166A7 05:A697: 62        .byte $62   ; 
- D 1 - I - 0x0166A8 05:A698: 60        .byte $60   ; 
- D 1 - I - 0x0166A9 05:A699: 12        .byte $12   ; 
- D 1 - I - 0x0166AA 05:A69A: 62        .byte $62   ; 
- D 1 - I - 0x0166AB 05:A69B: 30        .byte $30   ; 
- D 1 - I - 0x0166AC 05:A69C: 62        .byte $62   ; 
- D 1 - I - 0x0166AD 05:A69D: D3        .byte con_se_cb_stop   ; 



sub_D1_A69E:
- D 1 - I - 0x0166AE 05:A69E: 18        .byte $18   ; 
- D 1 - I - 0x0166AF 05:A69F: A7        .byte $A7   ; 
- D 1 - I - 0x0166B0 05:A6A0: 80        .byte $80   ; 
- D 1 - I - 0x0166B1 05:A6A1: 06        .byte $06   ; 
- D 1 - I - 0x0166B2 05:A6A2: 67        .byte $67   ; 
- D 1 - I - 0x0166B3 05:A6A3: AB        .byte $AB   ; 
- D 1 - I - 0x0166B4 05:A6A4: 80        .byte $80   ; 
- D 1 - I - 0x0166B5 05:A6A5: 6B        .byte $6B   ; 
- D 1 - I - 0x0166B6 05:A6A6: A7        .byte $A7   ; 
- D 1 - I - 0x0166B7 05:A6A7: 80        .byte $80   ; 
- D 1 - I - 0x0166B8 05:A6A8: 18        .byte $18   ; 
- D 1 - I - 0x0166B9 05:A6A9: A7        .byte $A7   ; 
- D 1 - I - 0x0166BA 05:A6AA: 80        .byte $80   ; 
- D 1 - I - 0x0166BB 05:A6AB: 06        .byte $06   ; 
- D 1 - I - 0x0166BC 05:A6AC: 67        .byte $67   ; 
- D 1 - I - 0x0166BD 05:A6AD: 64        .byte $64   ; 
- D 1 - I - 0x0166BE 05:A6AE: 64        .byte $64   ; 
- D 1 - I - 0x0166BF 05:A6AF: 64        .byte $64   ; 
- D 1 - I - 0x0166C0 05:A6B0: 18        .byte $18   ; 
- D 1 - I - 0x0166C1 05:A6B1: A6        .byte $A6   ; 
- D 1 - I - 0x0166C2 05:A6B2: 80        .byte $80   ; 
- D 1 - I - 0x0166C3 05:A6B3: 06        .byte $06   ; 
- D 1 - I - 0x0166C4 05:A6B4: 66        .byte $66   ; 
- D 1 - I - 0x0166C5 05:A6B5: A9        .byte $A9   ; 
- D 1 - I - 0x0166C6 05:A6B6: 80        .byte $80   ; 
- D 1 - I - 0x0166C7 05:A6B7: 69        .byte $69   ; 
- D 1 - I - 0x0166C8 05:A6B8: A6        .byte $A6   ; 
- D 1 - I - 0x0166C9 05:A6B9: 80        .byte $80   ; 
- D 1 - I - 0x0166CA 05:A6BA: 24        .byte $24   ; 
- D 1 - I - 0x0166CB 05:A6BB: 66        .byte $66   ; 
- D 1 - I - 0x0166CC 05:A6BC: 03        .byte $03   ; 
- D 1 - I - 0x0166CD 05:A6BD: 60        .byte $60   ; 
- D 1 - I - 0x0166CE 05:A6BE: 62        .byte $62   ; 
- D 1 - I - 0x0166CF 05:A6BF: 64        .byte $64   ; 
- D 1 - I - 0x0166D0 05:A6C0: 66        .byte $66   ; 
- D 1 - I - 0x0166D1 05:A6C1: 18        .byte $18   ; 
- D 1 - I - 0x0166D2 05:A6C2: A7        .byte $A7   ; 
- D 1 - I - 0x0166D3 05:A6C3: 80        .byte $80   ; 
- D 1 - I - 0x0166D4 05:A6C4: 06        .byte $06   ; 
- D 1 - I - 0x0166D5 05:A6C5: 67        .byte $67   ; 
- D 1 - I - 0x0166D6 05:A6C6: AB        .byte $AB   ; 
- D 1 - I - 0x0166D7 05:A6C7: 80        .byte $80   ; 
- D 1 - I - 0x0166D8 05:A6C8: 6B        .byte $6B   ; 
- D 1 - I - 0x0166D9 05:A6C9: A7        .byte $A7   ; 
- D 1 - I - 0x0166DA 05:A6CA: 80        .byte $80   ; 
- D 1 - I - 0x0166DB 05:A6CB: 18        .byte $18   ; 
- D 1 - I - 0x0166DC 05:A6CC: A7        .byte $A7   ; 
- D 1 - I - 0x0166DD 05:A6CD: 80        .byte $80   ; 
- D 1 - I - 0x0166DE 05:A6CE: 06        .byte $06   ; 
- D 1 - I - 0x0166DF 05:A6CF: 67        .byte $67   ; 
- D 1 - I - 0x0166E0 05:A6D0: 70        .byte $70   ; 
- D 1 - I - 0x0166E1 05:A6D1: 6E        .byte $6E   ; 
- D 1 - I - 0x0166E2 05:A6D2: 6B        .byte $6B   ; 
- D 1 - I - 0x0166E3 05:A6D3: 12        .byte $12   ; 
- D 1 - I - 0x0166E4 05:A6D4: 66        .byte $66   ; 
- D 1 - I - 0x0166E5 05:A6D5: 66        .byte $66   ; 
- D 1 - I - 0x0166E6 05:A6D6: 0C        .byte $0C   ; 
- D 1 - I - 0x0166E7 05:A6D7: 69        .byte $69   ; 
- D 1 - I - 0x0166E8 05:A6D8: D2        .byte con_se_cb_rts   ; 


; bzk garbage
- - - - - - 0x0166E9 05:A6D9: D3        .byte con_se_cb_stop   ; 



off_ch_14_A6DA_02:
- D 1 - I - 0x0166EA 05:A6DA: 1C        .byte $1C   ; 
- D 1 - I - 0x0166EB 05:A6DB: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0166EC 05:A6DC: C7        .byte con_se_cb_C7, $FA   ; 
- D 1 - I - 0x0166EE 05:A6DE: DB        .byte con_se_cb_DB, $0C, $0A, $28   ; 
- D 1 - I - 0x0166F2 05:A6E2: D8        .byte con_se_cb_D8, $08   ; 
- D 1 - I - 0x0166F4 05:A6E4: D1        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x0166F5 05:A6E5: 0F A7     .word sub_D1_A70F
- D 1 - I - 0x0166F7 05:A6E7: 18        .byte $18   ; 
- D 1 - I - 0x0166F8 05:A6E8: 8F        .byte $8F   ; 
- D 1 - I - 0x0166F9 05:A6E9: 80        .byte $80   ; 
- D 1 - I - 0x0166FA 05:A6EA: 06        .byte $06   ; 
- D 1 - I - 0x0166FB 05:A6EB: 4F        .byte $4F   ; 
- D 1 - I - 0x0166FC 05:A6EC: 4E        .byte $4E   ; 
- D 1 - I - 0x0166FD 05:A6ED: 4F        .byte $4F   ; 
- D 1 - I - 0x0166FE 05:A6EE: 53        .byte $53   ; 
- D 1 - I - 0x0166FF 05:A6EF: D1        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x016700 05:A6F0: 0F A7     .word sub_D1_A70F
- D 1 - I - 0x016702 05:A6F2: 18        .byte $18   ; 
- D 1 - I - 0x016703 05:A6F3: 8F        .byte $8F   ; 
- D 1 - I - 0x016704 05:A6F4: 80        .byte $80   ; 
- D 1 - I - 0x016705 05:A6F5: 06        .byte $06   ; 
- D 1 - I - 0x016706 05:A6F6: 4F        .byte $4F   ; 
- D 1 - I - 0x016707 05:A6F7: 47        .byte $47   ; 
- D 1 - I - 0x016708 05:A6F8: 4A        .byte $4A   ; 
- D 1 - I - 0x016709 05:A6F9: 4B        .byte $4B   ; 
- D 1 - I - 0x01670A 05:A6FA: 30        .byte $30   ; 
- D 1 - I - 0x01670B 05:A6FB: 4C        .byte $4C   ; 
- D 1 - I - 0x01670C 05:A6FC: 4A        .byte $4A   ; 
- D 1 - I - 0x01670D 05:A6FD: 49        .byte $49   ; 
- D 1 - I - 0x01670E 05:A6FE: 48        .byte $48   ; 
- D 1 - I - 0x01670F 05:A6FF: 48        .byte $48   ; 
- D 1 - I - 0x016710 05:A700: 4D        .byte $4D   ; 
- D 1 - I - 0x016711 05:A701: 52        .byte $52   ; 
- D 1 - I - 0x016712 05:A702: 4A        .byte $4A   ; 
- D 1 - I - 0x016713 05:A703: 30        .byte $30   ; 
- D 1 - I - 0x016714 05:A704: 54        .byte $54   ; 
- D 1 - I - 0x016715 05:A705: 53        .byte $53   ; 
- D 1 - I - 0x016716 05:A706: 18        .byte $18   ; 
- D 1 - I - 0x016717 05:A707: 51        .byte $51   ; 
- D 1 - I - 0x016718 05:A708: 4A        .byte $4A   ; 
- D 1 - I - 0x016719 05:A709: 12        .byte $12   ; 
- D 1 - I - 0x01671A 05:A70A: 8F        .byte $8F   ; 
- D 1 - I - 0x01671B 05:A70B: 80        .byte $80   ; 
- D 1 - I - 0x01671C 05:A70C: 30        .byte $30   ; 
- D 1 - I - 0x01671D 05:A70D: 4F        .byte $4F   ; 
- D 1 - I - 0x01671E 05:A70E: D3        .byte con_se_cb_stop   ; 



sub_D1_A70F:
- D 1 - I - 0x01671F 05:A70F: 0C        .byte $0C   ; 
- D 1 - I - 0x016720 05:A710: 54        .byte $54   ; 
- D 1 - I - 0x016721 05:A711: 24        .byte $24   ; 
- D 1 - I - 0x016722 05:A712: 94        .byte $94   ; 
- D 1 - I - 0x016723 05:A713: 80        .byte $80   ; 
- D 1 - I - 0x016724 05:A714: 0C        .byte $0C   ; 
- D 1 - I - 0x016725 05:A715: 54        .byte $54   ; 
- D 1 - I - 0x016726 05:A716: 5B        .byte $5B   ; 
- D 1 - I - 0x016727 05:A717: 58        .byte $58   ; 
- D 1 - I - 0x016728 05:A718: 54        .byte $54   ; 
- D 1 - I - 0x016729 05:A719: 53        .byte $53   ; 
- D 1 - I - 0x01672A 05:A71A: 24        .byte $24   ; 
- D 1 - I - 0x01672B 05:A71B: 93        .byte $93   ; 
- D 1 - I - 0x01672C 05:A71C: 80        .byte $80   ; 
- D 1 - I - 0x01672D 05:A71D: 0C        .byte $0C   ; 
- D 1 - I - 0x01672E 05:A71E: 53        .byte $53   ; 
- D 1 - I - 0x01672F 05:A71F: 5A        .byte $5A   ; 
- D 1 - I - 0x016730 05:A720: 56        .byte $56   ; 
- D 1 - I - 0x016731 05:A721: 5A        .byte $5A   ; 
- D 1 - I - 0x016732 05:A722: 51        .byte $51   ; 
- D 1 - I - 0x016733 05:A723: 24        .byte $24   ; 
- D 1 - I - 0x016734 05:A724: 51        .byte $51   ; 
- D 1 - I - 0x016735 05:A725: 0C        .byte $0C   ; 
- D 1 - I - 0x016736 05:A726: 4A        .byte $4A   ; 
- D 1 - I - 0x016737 05:A727: 4C        .byte $4C   ; 
- D 1 - I - 0x016738 05:A728: 4E        .byte $4E   ; 
- D 1 - I - 0x016739 05:A729: 51        .byte $51   ; 
- D 1 - I - 0x01673A 05:A72A: 4F        .byte $4F   ; 
- D 1 - I - 0x01673B 05:A72B: 18        .byte $18   ; 
- D 1 - I - 0x01673C 05:A72C: 4F        .byte $4F   ; 
- D 1 - I - 0x01673D 05:A72D: 0C        .byte $0C   ; 
- D 1 - I - 0x01673E 05:A72E: 4F        .byte $4F   ; 
- D 1 - I - 0x01673F 05:A72F: D2        .byte con_se_cb_rts   ; 



off_ch_14_A730_03:
- D 1 - I - 0x016740 05:A730: 1C        .byte $1C   ; 
- D 1 - I - 0x016741 05:A731: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016742 05:A732: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x016743 05:A733: F3 8B     .word ofs_CD_8BF3
- D 1 - I - 0x016745 05:A735: C4        .byte con_se_cb_C4, $55   ; 
off_CE_A737:
- D 1 - I - 0x016747 05:A737: 0C        .byte $0C   ; 
- D 1 - I - 0x016748 05:A738: 40        .byte $40   ; 
- D 1 - I - 0x016749 05:A739: 40        .byte $40   ; 
- D 1 - I - 0x01674A 05:A73A: 18        .byte $18   ; 
- D 1 - I - 0x01674B 05:A73B: 49        .byte $49   ; 
- D 1 - I - 0x01674C 05:A73C: CE        .byte con_se_cb_loop_1, $1B   ; 
- D 1 - I - 0x01674E 05:A73E: 37 A7     .word off_CE_A737
- D 1 - I - 0x016750 05:A740: 12        .byte $12   ; 
- D 1 - I - 0x016751 05:A741: 49        .byte $49   ; 
- D 1 - I - 0x016752 05:A742: 30        .byte $30   ; 
- D 1 - I - 0x016753 05:A743: 49        .byte $49   ; 
- D 1 - I - 0x016754 05:A744: D3        .byte con_se_cb_stop   ; 



_off013_A745_0B:
_off013_A745_13_final_cutscene:
- D 1 - I - 0x016755 05:A745: FF        .byte $FF   ; 
- D 1 - I - 0x016756 05:A746: 00        .byte $00   ; 
- D 1 - I - 0x016757 05:A747: 53 A7     .word off_ch_13_A753_00
- D 1 - I - 0x016759 05:A749: 01        .byte $01   ; 
- D 1 - I - 0x01675A 05:A74A: 78 A7     .word off_ch_13_A778_01
- D 1 - I - 0x01675C 05:A74C: 02        .byte $02   ; 
- D 1 - I - 0x01675D 05:A74D: 1B A8     .word off_ch_13_A81B_02
- D 1 - I - 0x01675F 05:A74F: 03        .byte $03   ; 
- D 1 - I - 0x016760 05:A750: C1 A8     .word off_ch_13_A8C1_03
- D 1 - I - 0x016762 05:A752: FF        .byte $FF   ; 



off_ch_13_A753_00:
- D 1 - I - 0x016763 05:A753: CC        .byte con_se_cb_CC, $69   ; 
- D 1 - I - 0x016765 05:A755: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x016766 05:A756: E2 8A     .word ofs_CD_8AE2
- D 1 - I - 0x016768 05:A758: D8        .byte con_se_cb_D8, $0B   ; 
- D 1 - I - 0x01676A 05:A75A: DB        .byte con_se_cb_DB, $18, $14, $50   ; 
- D 1 - I - 0x01676E 05:A75E: C7        .byte con_se_cb_C7, $FF   ; 
- D 1 - I - 0x016770 05:A760: C4        .byte con_se_cb_C4, $62   ; 
- D 1 - I - 0x016772 05:A762: D1        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x016773 05:A763: A0 A7     .word sub_D1_A7A0
- D 1 - I - 0x016775 05:A765: D1        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x016776 05:A766: E0 A7     .word sub_D1_A7E0
- D 1 - I - 0x016778 05:A768: 12        .byte $12   ; 
- D 1 - I - 0x016779 05:A769: 60        .byte $60   ; 
- D 1 - I - 0x01677A 05:A76A: 5F        .byte $5F   ; 
- D 1 - I - 0x01677B 05:A76B: 0C        .byte $0C   ; 
- D 1 - I - 0x01677C 05:A76C: 5D        .byte $5D   ; 
- D 1 - I - 0x01677D 05:A76D: C4        .byte con_se_cb_C4, $5A   ; 
- D 1 - I - 0x01677F 05:A76F: 06        .byte $06   ; 
- D 1 - I - 0x016780 05:A770: 58        .byte $58   ; 
- D 1 - I - 0x016781 05:A771: 30        .byte $30   ; 
- D 1 - I - 0x016782 05:A772: 9A        .byte $9A   ; 
- D 1 - I - 0x016783 05:A773: 80        .byte $80   ; 
- D 1 - I - 0x016784 05:A774: 18        .byte $18   ; 
- D 1 - I - 0x016785 05:A775: 5A        .byte $5A   ; 
- D 1 - I - 0x016786 05:A776: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016787 05:A777: D3        .byte con_se_cb_stop   ; 



off_ch_13_A778_01:
- D 1 - I - 0x016788 05:A778: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x016789 05:A779: D6 8A     .word ofs_CD_8AD6
- D 1 - I - 0x01678B 05:A77B: C7        .byte con_se_cb_C7, $FF   ; 
- D 1 - I - 0x01678D 05:A77D: D8        .byte con_se_cb_D8, $0B   ; 
- D 1 - I - 0x01678F 05:A77F: DB        .byte con_se_cb_DB, $14, $14, $50   ; 
- D 1 - I - 0x016793 05:A783: C4        .byte con_se_cb_C4, $3E   ; 
- D 1 - I - 0x016795 05:A785: 04        .byte $04   ; 
- D 1 - I - 0x016796 05:A786: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016797 05:A787: D1        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x016798 05:A788: A0 A7     .word sub_D1_A7A0
- D 1 - I - 0x01679A 05:A78A: D1        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x01679B 05:A78B: E0 A7     .word sub_D1_A7E0
- D 1 - I - 0x01679D 05:A78D: 12        .byte $12   ; 
- D 1 - I - 0x01679E 05:A78E: 60        .byte $60   ; 
- D 1 - I - 0x01679F 05:A78F: 5F        .byte $5F   ; 
- D 1 - I - 0x0167A0 05:A790: 08        .byte $08   ; 
- D 1 - I - 0x0167A1 05:A791: 5D        .byte $5D   ; 
- D 1 - I - 0x0167A2 05:A792: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x0167A3 05:A793: E2 8A     .word ofs_CD_8AE2
- D 1 - I - 0x0167A5 05:A795: C4        .byte con_se_cb_C4, $5A   ; 
- D 1 - I - 0x0167A7 05:A797: 06        .byte $06   ; 
- D 1 - I - 0x0167A8 05:A798: 51        .byte $51   ; 
- D 1 - I - 0x0167A9 05:A799: 30        .byte $30   ; 
- D 1 - I - 0x0167AA 05:A79A: 93        .byte $93   ; 
- D 1 - I - 0x0167AB 05:A79B: 80        .byte $80   ; 
- D 1 - I - 0x0167AC 05:A79C: 18        .byte $18   ; 
- D 1 - I - 0x0167AD 05:A79D: 53        .byte $53   ; 
- D 1 - I - 0x0167AE 05:A79E: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0167AF 05:A79F: D3        .byte con_se_cb_stop   ; 



sub_D1_A7A0:
- D 1 - I - 0x0167B0 05:A7A0: 06        .byte $06   ; 
- D 1 - I - 0x0167B1 05:A7A1: 5A        .byte $5A   ; 
- D 1 - I - 0x0167B2 05:A7A2: 5B        .byte $5B   ; 
- D 1 - I - 0x0167B3 05:A7A3: 5F        .byte $5F   ; 
- D 1 - I - 0x0167B4 05:A7A4: 0C        .byte $0C   ; 
- D 1 - I - 0x0167B5 05:A7A5: 5A        .byte $5A   ; 
- D 1 - I - 0x0167B6 05:A7A6: 56        .byte $56   ; 
- D 1 - I - 0x0167B7 05:A7A7: 06        .byte $06   ; 
- D 1 - I - 0x0167B8 05:A7A8: 93        .byte $93   ; 
- D 1 - I - 0x0167B9 05:A7A9: 80        .byte $80   ; 
- D 1 - I - 0x0167BA 05:A7AA: 30        .byte $30   ; 
- D 1 - I - 0x0167BB 05:A7AB: 53        .byte $53   ; 
- D 1 - I - 0x0167BC 05:A7AC: 06        .byte $06   ; 
- D 1 - I - 0x0167BD 05:A7AD: 5A        .byte $5A   ; 
- D 1 - I - 0x0167BE 05:A7AE: 5B        .byte $5B   ; 
- D 1 - I - 0x0167BF 05:A7AF: 5F        .byte $5F   ; 
- D 1 - I - 0x0167C0 05:A7B0: 0C        .byte $0C   ; 
- D 1 - I - 0x0167C1 05:A7B1: 5A        .byte $5A   ; 
- D 1 - I - 0x0167C2 05:A7B2: 06        .byte $06   ; 
- D 1 - I - 0x0167C3 05:A7B3: 5B        .byte $5B   ; 
- D 1 - I - 0x0167C4 05:A7B4: 5A        .byte $5A   ; 
- D 1 - I - 0x0167C5 05:A7B5: 06        .byte $06   ; 
- D 1 - I - 0x0167C6 05:A7B6: 98        .byte $98   ; 
- D 1 - I - 0x0167C7 05:A7B7: 80        .byte $80   ; 
- D 1 - I - 0x0167C8 05:A7B8: 1E        .byte $1E   ; 
- D 1 - I - 0x0167C9 05:A7B9: 58        .byte $58   ; 
- D 1 - I - 0x0167CA 05:A7BA: 06        .byte $06   ; 
- D 1 - I - 0x0167CB 05:A7BB: 5B        .byte $5B   ; 
- D 1 - I - 0x0167CC 05:A7BC: 5B        .byte $5B   ; 
- D 1 - I - 0x0167CD 05:A7BD: 5A        .byte $5A   ; 
- D 1 - I - 0x0167CE 05:A7BE: 58        .byte $58   ; 
- D 1 - I - 0x0167CF 05:A7BF: 5A        .byte $5A   ; 
- D 1 - I - 0x0167D0 05:A7C0: 5B        .byte $5B   ; 
- D 1 - I - 0x0167D1 05:A7C1: 0C        .byte $0C   ; 
- D 1 - I - 0x0167D2 05:A7C2: 5D        .byte $5D   ; 
- D 1 - I - 0x0167D3 05:A7C3: 06        .byte $06   ; 
- D 1 - I - 0x0167D4 05:A7C4: 5A        .byte $5A   ; 
- D 1 - I - 0x0167D5 05:A7C5: 5B        .byte $5B   ; 
- D 1 - I - 0x0167D6 05:A7C6: 5D        .byte $5D   ; 
- D 1 - I - 0x0167D7 05:A7C7: 06        .byte $06   ; 
- D 1 - I - 0x0167D8 05:A7C8: 60        .byte $60   ; 
- D 1 - I - 0x0167D9 05:A7C9: 5F        .byte $5F   ; 
- D 1 - I - 0x0167DA 05:A7CA: 5D        .byte $5D   ; 
- D 1 - I - 0x0167DB 05:A7CB: 0C        .byte $0C   ; 
- D 1 - I - 0x0167DC 05:A7CC: 5B        .byte $5B   ; 
- D 1 - I - 0x0167DD 05:A7CD: 06        .byte $06   ; 
- D 1 - I - 0x0167DE 05:A7CE: 5D        .byte $5D   ; 
- D 1 - I - 0x0167DF 05:A7CF: 5A        .byte $5A   ; 
- D 1 - I - 0x0167E0 05:A7D0: 57        .byte $57   ; 
- D 1 - I - 0x0167E1 05:A7D1: 0C        .byte $0C   ; 
- D 1 - I - 0x0167E2 05:A7D2: 58        .byte $58   ; 
- D 1 - I - 0x0167E3 05:A7D3: 06        .byte $06   ; 
- D 1 - I - 0x0167E4 05:A7D4: 5B        .byte $5B   ; 
- D 1 - I - 0x0167E5 05:A7D5: 0C        .byte $0C   ; 
- D 1 - I - 0x0167E6 05:A7D6: 5F        .byte $5F   ; 
- D 1 - I - 0x0167E7 05:A7D7: 5A        .byte $5A   ; 
- D 1 - I - 0x0167E8 05:A7D8: 06        .byte $06   ; 
- D 1 - I - 0x0167E9 05:A7D9: 9B        .byte $9B   ; 
- D 1 - I - 0x0167EA 05:A7DA: 80        .byte $80   ; 
- D 1 - I - 0x0167EB 05:A7DB: 12        .byte $12   ; 
- D 1 - I - 0x0167EC 05:A7DC: 5B        .byte $5B   ; 
- D 1 - I - 0x0167ED 05:A7DD: 1E        .byte $1E   ; 
- D 1 - I - 0x0167EE 05:A7DE: 5D        .byte $5D   ; 
- D 1 - I - 0x0167EF 05:A7DF: D2        .byte con_se_cb_rts   ; 



sub_D1_A7E0:
- D 1 - I - 0x0167F0 05:A7E0: 06        .byte $06   ; 
- D 1 - I - 0x0167F1 05:A7E1: 5F        .byte $5F   ; 
- D 1 - I - 0x0167F2 05:A7E2: 5B        .byte $5B   ; 
- D 1 - I - 0x0167F3 05:A7E3: 58        .byte $58   ; 
- D 1 - I - 0x0167F4 05:A7E4: 0C        .byte $0C   ; 
- D 1 - I - 0x0167F5 05:A7E5: 54        .byte $54   ; 
- D 1 - I - 0x0167F6 05:A7E6: 06        .byte $06   ; 
- D 1 - I - 0x0167F7 05:A7E7: 54        .byte $54   ; 
- D 1 - I - 0x0167F8 05:A7E8: 58        .byte $58   ; 
- D 1 - I - 0x0167F9 05:A7E9: 5B        .byte $5B   ; 
- D 1 - I - 0x0167FA 05:A7EA: 06        .byte $06   ; 
- D 1 - I - 0x0167FB 05:A7EB: 5D        .byte $5D   ; 
- D 1 - I - 0x0167FC 05:A7EC: 5A        .byte $5A   ; 
- D 1 - I - 0x0167FD 05:A7ED: 57        .byte $57   ; 
- D 1 - I - 0x0167FE 05:A7EE: 0C        .byte $0C   ; 
- D 1 - I - 0x0167FF 05:A7EF: 60        .byte $60   ; 
- D 1 - I - 0x016800 05:A7F0: 06        .byte $06   ; 
- D 1 - I - 0x016801 05:A7F1: 5F        .byte $5F   ; 
- D 1 - I - 0x016802 05:A7F2: 5D        .byte $5D   ; 
- D 1 - I - 0x016803 05:A7F3: 03        .byte $03   ; 
- D 1 - I - 0x016804 05:A7F4: 9B        .byte $9B   ; 
- D 1 - I - 0x016805 05:A7F5: 80        .byte $80   ; 
- D 1 - I - 0x016806 05:A7F6: 5D        .byte $5D   ; 
- D 1 - I - 0x016807 05:A7F7: 30        .byte $30   ; 
- D 1 - I - 0x016808 05:A7F8: 5F        .byte $5F   ; 
- D 1 - I - 0x016809 05:A7F9: 18        .byte $18   ; 
- D 1 - I - 0x01680A 05:A7FA: 5D        .byte $5D   ; 
- D 1 - I - 0x01680B 05:A7FB: 5B        .byte $5B   ; 
- D 1 - I - 0x01680C 05:A7FC: 09        .byte $09   ; 
- D 1 - I - 0x01680D 05:A7FD: 5A        .byte $5A   ; 
- D 1 - I - 0x01680E 05:A7FE: 5D        .byte $5D   ; 
- D 1 - I - 0x01680F 05:A7FF: 06        .byte $06   ; 
- D 1 - I - 0x016810 05:A800: 5F        .byte $5F   ; 
- D 1 - I - 0x016811 05:A801: 09        .byte $09   ; 
- D 1 - I - 0x016812 05:A802: 60        .byte $60   ; 
- D 1 - I - 0x016813 05:A803: 5F        .byte $5F   ; 
- D 1 - I - 0x016814 05:A804: 06        .byte $06   ; 
- D 1 - I - 0x016815 05:A805: 5D        .byte $5D   ; 
- D 1 - I - 0x016816 05:A806: 09        .byte $09   ; 
- D 1 - I - 0x016817 05:A807: 5A        .byte $5A   ; 
- D 1 - I - 0x016818 05:A808: 5D        .byte $5D   ; 
- D 1 - I - 0x016819 05:A809: 06        .byte $06   ; 
- D 1 - I - 0x01681A 05:A80A: 5F        .byte $5F   ; 
- D 1 - I - 0x01681B 05:A80B: 09        .byte $09   ; 
- D 1 - I - 0x01681C 05:A80C: 60        .byte $60   ; 
- D 1 - I - 0x01681D 05:A80D: 5F        .byte $5F   ; 
- D 1 - I - 0x01681E 05:A80E: 06        .byte $06   ; 
- D 1 - I - 0x01681F 05:A80F: 5D        .byte $5D   ; 
- D 1 - I - 0x016820 05:A810: 18        .byte $18   ; 
- D 1 - I - 0x016821 05:A811: 64        .byte $64   ; 
- D 1 - I - 0x016822 05:A812: 62        .byte $62   ; 
- D 1 - I - 0x016823 05:A813: 12        .byte $12   ; 
- D 1 - I - 0x016824 05:A814: 60        .byte $60   ; 
- D 1 - I - 0x016825 05:A815: 1E        .byte $1E   ; 
- D 1 - I - 0x016826 05:A816: 5F        .byte $5F   ; 
- D 1 - I - 0x016827 05:A817: 18        .byte $18   ; 
- D 1 - I - 0x016828 05:A818: 64        .byte $64   ; 
- D 1 - I - 0x016829 05:A819: 62        .byte $62   ; 
- D 1 - I - 0x01682A 05:A81A: D2        .byte con_se_cb_rts   ; 



off_ch_13_A81B_02:
- D 1 - I - 0x01682B 05:A81B: C7        .byte con_se_cb_C7, $FF   ; 
- D 1 - I - 0x01682D 05:A81D: D8        .byte con_se_cb_D8, $0B   ; 
- D 1 - I - 0x01682F 05:A81F: 06        .byte $06   ; 
- D 1 - I - 0x016830 05:A820: D1        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x016831 05:A821: 2F A8     .word sub_D1_A82F
- D 1 - I - 0x016833 05:A823: D1        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x016834 05:A824: 70 A8     .word sub_D1_A870
- D 1 - I - 0x016836 05:A826: 06        .byte $06   ; 
- D 1 - I - 0x016837 05:A827: 4E        .byte $4E   ; 
- D 1 - I - 0x016838 05:A828: 30        .byte $30   ; 
- D 1 - I - 0x016839 05:A829: 8C        .byte $8C   ; 
- D 1 - I - 0x01683A 05:A82A: 80        .byte $80   ; 
- D 1 - I - 0x01683B 05:A82B: 18        .byte $18   ; 
- D 1 - I - 0x01683C 05:A82C: 4C        .byte $4C   ; 
- D 1 - I - 0x01683D 05:A82D: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x01683E 05:A82E: D3        .byte con_se_cb_stop   ; 



sub_D1_A82F:
- D 1 - I - 0x01683F 05:A82F: 4C        .byte $4C   ; 
- D 1 - I - 0x016840 05:A830: 47        .byte $47   ; 
- D 1 - I - 0x016841 05:A831: 4C        .byte $4C   ; 
- D 1 - I - 0x016842 05:A832: 47        .byte $47   ; 
- D 1 - I - 0x016843 05:A833: 4C        .byte $4C   ; 
- D 1 - I - 0x016844 05:A834: 47        .byte $47   ; 
- D 1 - I - 0x016845 05:A835: 4C        .byte $4C   ; 
- D 1 - I - 0x016846 05:A836: 47        .byte $47   ; 
- D 1 - I - 0x016847 05:A837: 4C        .byte $4C   ; 
- D 1 - I - 0x016848 05:A838: 47        .byte $47   ; 
- D 1 - I - 0x016849 05:A839: 4C        .byte $4C   ; 
- D 1 - I - 0x01684A 05:A83A: 47        .byte $47   ; 
- D 1 - I - 0x01684B 05:A83B: 4A        .byte $4A   ; 
- D 1 - I - 0x01684C 05:A83C: 4C        .byte $4C   ; 
- D 1 - I - 0x01684D 05:A83D: 4E        .byte $4E   ; 
- D 1 - I - 0x01684E 05:A83E: 4A        .byte $4A   ; 
- D 1 - I - 0x01684F 05:A83F: 48        .byte $48   ; 
- D 1 - I - 0x016850 05:A840: 43        .byte $43   ; 
- D 1 - I - 0x016851 05:A841: 48        .byte $48   ; 
- D 1 - I - 0x016852 05:A842: 43        .byte $43   ; 
- D 1 - I - 0x016853 05:A843: 48        .byte $48   ; 
- D 1 - I - 0x016854 05:A844: 43        .byte $43   ; 
- D 1 - I - 0x016855 05:A845: 48        .byte $48   ; 
- D 1 - I - 0x016856 05:A846: 43        .byte $43   ; 
- D 1 - I - 0x016857 05:A847: 48        .byte $48   ; 
- D 1 - I - 0x016858 05:A848: 43        .byte $43   ; 
- D 1 - I - 0x016859 05:A849: 48        .byte $48   ; 
- D 1 - I - 0x01685A 05:A84A: 4A        .byte $4A   ; 
- D 1 - I - 0x01685B 05:A84B: 4C        .byte $4C   ; 
- D 1 - I - 0x01685C 05:A84C: 43        .byte $43   ; 
- D 1 - I - 0x01685D 05:A84D: 48        .byte $48   ; 
- D 1 - I - 0x01685E 05:A84E: 49        .byte $49   ; 
- D 1 - I - 0x01685F 05:A84F: 4A        .byte $4A   ; 
- D 1 - I - 0x016860 05:A850: 45        .byte $45   ; 
- D 1 - I - 0x016861 05:A851: 4A        .byte $4A   ; 
- D 1 - I - 0x016862 05:A852: 45        .byte $45   ; 
- D 1 - I - 0x016863 05:A853: 4A        .byte $4A   ; 
- D 1 - I - 0x016864 05:A854: 45        .byte $45   ; 
- D 1 - I - 0x016865 05:A855: 4A        .byte $4A   ; 
- D 1 - I - 0x016866 05:A856: 48        .byte $48   ; 
- D 1 - I - 0x016867 05:A857: 47        .byte $47   ; 
- D 1 - I - 0x016868 05:A858: 4B        .byte $4B   ; 
- D 1 - I - 0x016869 05:A859: 47        .byte $47   ; 
- D 1 - I - 0x01686A 05:A85A: 4B        .byte $4B   ; 
- D 1 - I - 0x01686B 05:A85B: 47        .byte $47   ; 
- D 1 - I - 0x01686C 05:A85C: 4B        .byte $4B   ; 
- D 1 - I - 0x01686D 05:A85D: 47        .byte $47   ; 
- D 1 - I - 0x01686E 05:A85E: 4B        .byte $4B   ; 
- D 1 - I - 0x01686F 05:A85F: 48        .byte $48   ; 
- D 1 - I - 0x016870 05:A860: 4F        .byte $4F   ; 
- D 1 - I - 0x016871 05:A861: 48        .byte $48   ; 
- D 1 - I - 0x016872 05:A862: 4F        .byte $4F   ; 
- D 1 - I - 0x016873 05:A863: 48        .byte $48   ; 
- D 1 - I - 0x016874 05:A864: 4F        .byte $4F   ; 
- D 1 - I - 0x016875 05:A865: 48        .byte $48   ; 
- D 1 - I - 0x016876 05:A866: 4F        .byte $4F   ; 
- D 1 - I - 0x016877 05:A867: 4A        .byte $4A   ; 
- D 1 - I - 0x016878 05:A868: 51        .byte $51   ; 
- D 1 - I - 0x016879 05:A869: 4A        .byte $4A   ; 
- D 1 - I - 0x01687A 05:A86A: 51        .byte $51   ; 
- D 1 - I - 0x01687B 05:A86B: 4A        .byte $4A   ; 
- D 1 - I - 0x01687C 05:A86C: 51        .byte $51   ; 
- D 1 - I - 0x01687D 05:A86D: 4A        .byte $4A   ; 
- D 1 - I - 0x01687E 05:A86E: 51        .byte $51   ; 
- D 1 - I - 0x01687F 05:A86F: D2        .byte con_se_cb_rts   ; 



sub_D1_A870:
- D 1 - I - 0x016880 05:A870: 45        .byte $45   ; 
- D 1 - I - 0x016881 05:A871: 4C        .byte $4C   ; 
- D 1 - I - 0x016882 05:A872: 45        .byte $45   ; 
- D 1 - I - 0x016883 05:A873: 4C        .byte $4C   ; 
- D 1 - I - 0x016884 05:A874: 45        .byte $45   ; 
- D 1 - I - 0x016885 05:A875: 4C        .byte $4C   ; 
- D 1 - I - 0x016886 05:A876: 45        .byte $45   ; 
- D 1 - I - 0x016887 05:A877: 4C        .byte $4C   ; 
- D 1 - I - 0x016888 05:A878: 47        .byte $47   ; 
- D 1 - I - 0x016889 05:A879: 4E        .byte $4E   ; 
- D 1 - I - 0x01688A 05:A87A: 47        .byte $47   ; 
- D 1 - I - 0x01688B 05:A87B: 4E        .byte $4E   ; 
- D 1 - I - 0x01688C 05:A87C: 47        .byte $47   ; 
- D 1 - I - 0x01688D 05:A87D: 4E        .byte $4E   ; 
- D 1 - I - 0x01688E 05:A87E: 47        .byte $47   ; 
- D 1 - I - 0x01688F 05:A87F: 4E        .byte $4E   ; 
- D 1 - I - 0x016890 05:A880: 48        .byte $48   ; 
- D 1 - I - 0x016891 05:A881: 4F        .byte $4F   ; 
- D 1 - I - 0x016892 05:A882: 48        .byte $48   ; 
- D 1 - I - 0x016893 05:A883: 4F        .byte $4F   ; 
- D 1 - I - 0x016894 05:A884: 48        .byte $48   ; 
- D 1 - I - 0x016895 05:A885: 4F        .byte $4F   ; 
- D 1 - I - 0x016896 05:A886: 48        .byte $48   ; 
- D 1 - I - 0x016897 05:A887: 4F        .byte $4F   ; 
- D 1 - I - 0x016898 05:A888: 48        .byte $48   ; 
- D 1 - I - 0x016899 05:A889: 4F        .byte $4F   ; 
- D 1 - I - 0x01689A 05:A88A: 48        .byte $48   ; 
- D 1 - I - 0x01689B 05:A88B: 4F        .byte $4F   ; 
- D 1 - I - 0x01689C 05:A88C: 48        .byte $48   ; 
- D 1 - I - 0x01689D 05:A88D: 4F        .byte $4F   ; 
- D 1 - I - 0x01689E 05:A88E: 48        .byte $48   ; 
- D 1 - I - 0x01689F 05:A88F: 4F        .byte $4F   ; 
- D 1 - I - 0x0168A0 05:A890: 4A        .byte $4A   ; 
- D 1 - I - 0x0168A1 05:A891: 51        .byte $51   ; 
- D 1 - I - 0x0168A2 05:A892: 4A        .byte $4A   ; 
- D 1 - I - 0x0168A3 05:A893: 51        .byte $51   ; 
- D 1 - I - 0x0168A4 05:A894: 4A        .byte $4A   ; 
- D 1 - I - 0x0168A5 05:A895: 51        .byte $51   ; 
- D 1 - I - 0x0168A6 05:A896: 4A        .byte $4A   ; 
- D 1 - I - 0x0168A7 05:A897: 51        .byte $51   ; 
- D 1 - I - 0x0168A8 05:A898: 4B        .byte $4B   ; 
- D 1 - I - 0x0168A9 05:A899: 51        .byte $51   ; 
- D 1 - I - 0x0168AA 05:A89A: 4B        .byte $4B   ; 
- D 1 - I - 0x0168AB 05:A89B: 51        .byte $51   ; 
- D 1 - I - 0x0168AC 05:A89C: 4B        .byte $4B   ; 
- D 1 - I - 0x0168AD 05:A89D: 51        .byte $51   ; 
- D 1 - I - 0x0168AE 05:A89E: 4B        .byte $4B   ; 
- D 1 - I - 0x0168AF 05:A89F: 51        .byte $51   ; 
- D 1 - I - 0x0168B0 05:A8A0: 4C        .byte $4C   ; 
- D 1 - I - 0x0168B1 05:A8A1: 53        .byte $53   ; 
- D 1 - I - 0x0168B2 05:A8A2: 4C        .byte $4C   ; 
- D 1 - I - 0x0168B3 05:A8A3: 53        .byte $53   ; 
- D 1 - I - 0x0168B4 05:A8A4: 4C        .byte $4C   ; 
- D 1 - I - 0x0168B5 05:A8A5: 53        .byte $53   ; 
- D 1 - I - 0x0168B6 05:A8A6: 4C        .byte $4C   ; 
- D 1 - I - 0x0168B7 05:A8A7: 53        .byte $53   ; 
- D 1 - I - 0x0168B8 05:A8A8: 4C        .byte $4C   ; 
- D 1 - I - 0x0168B9 05:A8A9: 53        .byte $53   ; 
- D 1 - I - 0x0168BA 05:A8AA: 4C        .byte $4C   ; 
- D 1 - I - 0x0168BB 05:A8AB: 53        .byte $53   ; 
- D 1 - I - 0x0168BC 05:A8AC: 4C        .byte $4C   ; 
- D 1 - I - 0x0168BD 05:A8AD: 53        .byte $53   ; 
- D 1 - I - 0x0168BE 05:A8AE: 4A        .byte $4A   ; 
- D 1 - I - 0x0168BF 05:A8AF: 51        .byte $51   ; 
- D 1 - I - 0x0168C0 05:A8B0: 48        .byte $48   ; 
- D 1 - I - 0x0168C1 05:A8B1: 4F        .byte $4F   ; 
- D 1 - I - 0x0168C2 05:A8B2: 48        .byte $48   ; 
- D 1 - I - 0x0168C3 05:A8B3: 4F        .byte $4F   ; 
- D 1 - I - 0x0168C4 05:A8B4: 48        .byte $48   ; 
- D 1 - I - 0x0168C5 05:A8B5: 4F        .byte $4F   ; 
- D 1 - I - 0x0168C6 05:A8B6: 48        .byte $48   ; 
- D 1 - I - 0x0168C7 05:A8B7: 4F        .byte $4F   ; 
- D 1 - I - 0x0168C8 05:A8B8: 47        .byte $47   ; 
- D 1 - I - 0x0168C9 05:A8B9: 4E        .byte $4E   ; 
- D 1 - I - 0x0168CA 05:A8BA: 47        .byte $47   ; 
- D 1 - I - 0x0168CB 05:A8BB: 4E        .byte $4E   ; 
- D 1 - I - 0x0168CC 05:A8BC: 47        .byte $47   ; 
- D 1 - I - 0x0168CD 05:A8BD: 4E        .byte $4E   ; 
- D 1 - I - 0x0168CE 05:A8BE: 47        .byte $47   ; 
- D 1 - I - 0x0168CF 05:A8BF: 4E        .byte $4E   ; 
- D 1 - I - 0x0168D0 05:A8C0: D2        .byte con_se_cb_rts   ; 



off_ch_13_A8C1_03:
- D 1 - I - 0x0168D1 05:A8C1: 30        .byte $30   ; 
- D 1 - I - 0x0168D2 05:A8C2: DA        .byte con_se_cb_DA, $13   ; 
- D 1 - I - 0x0168D4 05:A8C4: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0168D5 05:A8C5: 30        .byte $30   ; 
- D 1 - I - 0x0168D6 05:A8C6: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0168D7 05:A8C7: D3        .byte con_se_cb_stop   ; 



_off013_A8C8_0C_mission_9:
- D 1 - I - 0x0168D8 05:A8C8: FF        .byte $FF   ; 
- D 1 - I - 0x0168D9 05:A8C9: 00        .byte $00   ; 
- D 1 - I - 0x0168DA 05:A8CA: D6 A8     .word off_ch_0C_A8D6_00
- D 1 - I - 0x0168DC 05:A8CC: 01        .byte $01   ; 
- D 1 - I - 0x0168DD 05:A8CD: 02 A9     .word off_ch_0C_A902_01
- D 1 - I - 0x0168DF 05:A8CF: 02        .byte $02   ; 
- D 1 - I - 0x0168E0 05:A8D0: 2C A9     .word off_ch_0C_A92C_02
- D 1 - I - 0x0168E2 05:A8D2: 03        .byte $03   ; 
- D 1 - I - 0x0168E3 05:A8D3: 51 A9     .word off_ch_0C_A951_03
- D 1 - I - 0x0168E5 05:A8D5: FF        .byte $FF   ; 



off_ch_0C_A8D6_00:
- D 1 - I - 0x0168E6 05:A8D6: CC        .byte con_se_cb_CC, $78   ; 
- D 1 - I - 0x0168E8 05:A8D8: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x0168E9 05:A8D9: 72 8B     .word ofs_CD_8B72
- D 1 - I - 0x0168EB 05:A8DB: D8        .byte con_se_cb_D8, $FD   ; 
- D 1 - I - 0x0168ED 05:A8DD: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x0168EF 05:A8DF: C7        .byte con_se_cb_C7, $C8   ; 
loc_D0_A8E1:
- D 1 - I - 0x0168F1 05:A8E1: 03        .byte $03   ; 
- D 1 - I - 0x0168F2 05:A8E2: 4A        .byte $4A   ; 
- D 1 - I - 0x0168F3 05:A8E3: 56        .byte $56   ; 
- D 1 - I - 0x0168F4 05:A8E4: 54        .byte $54   ; 
- D 1 - I - 0x0168F5 05:A8E5: 55        .byte $55   ; 
- D 1 - I - 0x0168F6 05:A8E6: 56        .byte $56   ; 
- D 1 - I - 0x0168F7 05:A8E7: 54        .byte $54   ; 
- D 1 - I - 0x0168F8 05:A8E8: 55        .byte $55   ; 
- D 1 - I - 0x0168F9 05:A8E9: 56        .byte $56   ; 
- D 1 - I - 0x0168FA 05:A8EA: 4A        .byte $4A   ; 
- D 1 - I - 0x0168FB 05:A8EB: 54        .byte $54   ; 
- D 1 - I - 0x0168FC 05:A8EC: 55        .byte $55   ; 
- D 1 - I - 0x0168FD 05:A8ED: 56        .byte $56   ; 
- D 1 - I - 0x0168FE 05:A8EE: 4A        .byte $4A   ; 
- D 1 - I - 0x0168FF 05:A8EF: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016900 05:A8F0: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016901 05:A8F1: 4A        .byte $4A   ; 
- D 1 - I - 0x016902 05:A8F2: 4A        .byte $4A   ; 
- D 1 - I - 0x016903 05:A8F3: 54        .byte $54   ; 
- D 1 - I - 0x016904 05:A8F4: 55        .byte $55   ; 
- D 1 - I - 0x016905 05:A8F5: 56        .byte $56   ; 
- D 1 - I - 0x016906 05:A8F6: 0C        .byte $0C   ; 
- D 1 - I - 0x016907 05:A8F7: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016908 05:A8F8: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016909 05:A8F9: 06        .byte $06   ; 
- D 1 - I - 0x01690A 05:A8FA: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x01690B 05:A8FB: 03        .byte $03   ; 
- D 1 - I - 0x01690C 05:A8FC: 56        .byte $56   ; 
- D 1 - I - 0x01690D 05:A8FD: 54        .byte $54   ; 
- D 1 - I - 0x01690E 05:A8FE: D0        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x01690F 05:A8FF: E1 A8     .word loc_D0_A8E1


; bzk garbage
- - - - - - 0x016911 05:A901: D3        .byte con_se_cb_stop   ; 



off_ch_0C_A902_01:
- D 1 - I - 0x016912 05:A902: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x016913 05:A903: 72 8B     .word ofs_CD_8B72
- D 1 - I - 0x016915 05:A905: D8        .byte con_se_cb_D8, $FD   ; 
- D 1 - I - 0x016917 05:A907: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016919 05:A909: C7        .byte con_se_cb_C7, $C8   ; 
loc_D0_A90B:
- D 1 - I - 0x01691B 05:A90B: 03        .byte $03   ; 
- D 1 - I - 0x01691C 05:A90C: 51        .byte $51   ; 
- D 1 - I - 0x01691D 05:A90D: 5D        .byte $5D   ; 
- D 1 - I - 0x01691E 05:A90E: 54        .byte $54   ; 
- D 1 - I - 0x01691F 05:A90F: 55        .byte $55   ; 
- D 1 - I - 0x016920 05:A910: 56        .byte $56   ; 
- D 1 - I - 0x016921 05:A911: 5B        .byte $5B   ; 
- D 1 - I - 0x016922 05:A912: 55        .byte $55   ; 
- D 1 - I - 0x016923 05:A913: 56        .byte $56   ; 
- D 1 - I - 0x016924 05:A914: 51        .byte $51   ; 
- D 1 - I - 0x016925 05:A915: 5B        .byte $5B   ; 
- D 1 - I - 0x016926 05:A916: 5C        .byte $5C   ; 
- D 1 - I - 0x016927 05:A917: 5D        .byte $5D   ; 
- D 1 - I - 0x016928 05:A918: 51        .byte $51   ; 
- D 1 - I - 0x016929 05:A919: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x01692A 05:A91A: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x01692B 05:A91B: 51        .byte $51   ; 
- D 1 - I - 0x01692C 05:A91C: 51        .byte $51   ; 
- D 1 - I - 0x01692D 05:A91D: 5B        .byte $5B   ; 
- D 1 - I - 0x01692E 05:A91E: 5C        .byte $5C   ; 
- D 1 - I - 0x01692F 05:A91F: 5D        .byte $5D   ; 
- D 1 - I - 0x016930 05:A920: 0C        .byte $0C   ; 
- D 1 - I - 0x016931 05:A921: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016932 05:A922: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016933 05:A923: 06        .byte $06   ; 
- D 1 - I - 0x016934 05:A924: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016935 05:A925: 03        .byte $03   ; 
- D 1 - I - 0x016936 05:A926: 5A        .byte $5A   ; 
- D 1 - I - 0x016937 05:A927: 58        .byte $58   ; 
- D 1 - I - 0x016938 05:A928: D0        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x016939 05:A929: 0B A9     .word loc_D0_A90B


; bzk garbage
- - - - - - 0x01693B 05:A92B: D3        .byte con_se_cb_stop   ; 



off_ch_0C_A92C_02:
- D 1 - I - 0x01693C 05:A92C: D8        .byte con_se_cb_D8, $15   ; 
- D 1 - I - 0x01693E 05:A92E: C7        .byte con_se_cb_C7, $C8   ; 
loc_D0_A930:
- D 1 - I - 0x016940 05:A930: 03        .byte $03   ; 
- D 1 - I - 0x016941 05:A931: 4A        .byte $4A   ; 
- D 1 - I - 0x016942 05:A932: 56        .byte $56   ; 
- D 1 - I - 0x016943 05:A933: 54        .byte $54   ; 
- D 1 - I - 0x016944 05:A934: 55        .byte $55   ; 
- D 1 - I - 0x016945 05:A935: 56        .byte $56   ; 
- D 1 - I - 0x016946 05:A936: 54        .byte $54   ; 
- D 1 - I - 0x016947 05:A937: 55        .byte $55   ; 
- D 1 - I - 0x016948 05:A938: 56        .byte $56   ; 
- D 1 - I - 0x016949 05:A939: 4A        .byte $4A   ; 
- D 1 - I - 0x01694A 05:A93A: 54        .byte $54   ; 
- D 1 - I - 0x01694B 05:A93B: 55        .byte $55   ; 
- D 1 - I - 0x01694C 05:A93C: 56        .byte $56   ; 
- D 1 - I - 0x01694D 05:A93D: 4A        .byte $4A   ; 
- D 1 - I - 0x01694E 05:A93E: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x01694F 05:A93F: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016950 05:A940: 4A        .byte $4A   ; 
- D 1 - I - 0x016951 05:A941: 4A        .byte $4A   ; 
- D 1 - I - 0x016952 05:A942: 54        .byte $54   ; 
- D 1 - I - 0x016953 05:A943: 55        .byte $55   ; 
- D 1 - I - 0x016954 05:A944: 56        .byte $56   ; 
- D 1 - I - 0x016955 05:A945: 0C        .byte $0C   ; 
- D 1 - I - 0x016956 05:A946: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016957 05:A947: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016958 05:A948: 06        .byte $06   ; 
- D 1 - I - 0x016959 05:A949: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x01695A 05:A94A: 03        .byte $03   ; 
- D 1 - I - 0x01695B 05:A94B: 56        .byte $56   ; 
- D 1 - I - 0x01695C 05:A94C: 54        .byte $54   ; 
- D 1 - I - 0x01695D 05:A94D: D0        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x01695E 05:A94E: 30 A9     .word loc_D0_A930


; bzk garbage
- - - - - - 0x016960 05:A950: D3        .byte con_se_cb_stop   ; 



off_ch_0C_A951_03:
- D 1 - I - 0x016961 05:A951: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x016962 05:A952: F3 8B     .word ofs_CD_8BF3
- D 1 - I - 0x016964 05:A954: C4        .byte con_se_cb_C4, $1B   ; 
- D 1 - I - 0x016966 05:A956: C7        .byte con_se_cb_C7, $FF   ; 
loc_D0_A958:
- D 1 - I - 0x016968 05:A958: 30        .byte $30   ; 
- D 1 - I - 0x016969 05:A959: 4A        .byte $4A   ; 
- D 1 - I - 0x01696A 05:A95A: 0C        .byte $0C   ; 
- D 1 - I - 0x01696B 05:A95B: 4A        .byte $4A   ; 
- D 1 - I - 0x01696C 05:A95C: 8D        .byte $8D   ; 
- D 1 - I - 0x01696D 05:A95D: 80        .byte $80   ; 
- D 1 - I - 0x01696E 05:A95E: 4E        .byte $4E   ; 
- D 1 - I - 0x01696F 05:A95F: 4A        .byte $4A   ; 
- D 1 - I - 0x016970 05:A960: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016971 05:A961: 30        .byte $30   ; 
- D 1 - I - 0x016972 05:A962: 8D        .byte $8D   ; 
- D 1 - I - 0x016973 05:A963: 80        .byte $80   ; 
- D 1 - I - 0x016974 05:A964: 06        .byte $06   ; 
- D 1 - I - 0x016975 05:A965: 4A        .byte $4A   ; 
- D 1 - I - 0x016976 05:A966: 8E        .byte $8E   ; 
- D 1 - I - 0x016977 05:A967: 80        .byte $80   ; 
- D 1 - I - 0x016978 05:A968: 18        .byte $18   ; 
- D 1 - I - 0x016979 05:A969: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x01697A 05:A96A: 4E        .byte $4E   ; 
- D 1 - I - 0x01697B 05:A96B: 0C        .byte $0C   ; 
- D 1 - I - 0x01697C 05:A96C: 8A        .byte $8A   ; 
- D 1 - I - 0x01697D 05:A96D: 80        .byte $80   ; 
- D 1 - I - 0x01697E 05:A96E: 30        .byte $30   ; 
- D 1 - I - 0x01697F 05:A96F: 4A        .byte $4A   ; 
- D 1 - I - 0x016980 05:A970: 18        .byte $18   ; 
- D 1 - I - 0x016981 05:A971: 4A        .byte $4A   ; 
- D 1 - I - 0x016982 05:A972: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016983 05:A973: 4D        .byte $4D   ; 
- D 1 - I - 0x016984 05:A974: 4A        .byte $4A   ; 
- D 1 - I - 0x016985 05:A975: 4E        .byte $4E   ; 
- D 1 - I - 0x016986 05:A976: 4D        .byte $4D   ; 
- D 1 - I - 0x016987 05:A977: 4A        .byte $4A   ; 
- D 1 - I - 0x016988 05:A978: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016989 05:A979: D0        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x01698A 05:A97A: 58 A9     .word loc_D0_A958


; bzk garbage
- - - - - - 0x01698C 05:A97C: D3        .byte con_se_cb_stop   ; 



_off013_A97D_0D_boss_clone:
- D 1 - I - 0x01698D 05:A97D: FF        .byte $FF   ; 
- D 1 - I - 0x01698E 05:A97E: 00        .byte $00   ; 
- D 1 - I - 0x01698F 05:A97F: 8B A9     .word off_ch_0D_A98B_00
- D 1 - I - 0x016991 05:A981: 01        .byte $01   ; 
- D 1 - I - 0x016992 05:A982: 67 AA     .word off_ch_0D_AA67_01
- D 1 - I - 0x016994 05:A984: 02        .byte $02   ; 
- D 1 - I - 0x016995 05:A985: 41 AB     .word off_ch_0D_AB41_02
- D 1 - I - 0x016997 05:A987: 03        .byte $03   ; 
- D 1 - I - 0x016998 05:A988: 55 AB     .word off_ch_0D_AB55_03
- D 1 - I - 0x01699A 05:A98A: FF        .byte $FF   ; 



off_ch_0D_A98B_00:
- D 1 - I - 0x01699B 05:A98B: CC        .byte con_se_cb_CC, $5A   ; 
- D 1 - I - 0x01699D 05:A98D: DB        .byte con_se_cb_DB, $05, $1E, $78   ; 
- D 1 - I - 0x0169A1 05:A991: D8        .byte con_se_cb_D8, $FA   ; 
- D 1 - I - 0x0169A3 05:A993: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x0169A4 05:A994: 33 8B     .word ofs_CD_8B33
- D 1 - I - 0x0169A6 05:A996: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x0169A8 05:A998: C7        .byte con_se_cb_C7, $FA   ; 
- D 1 - I - 0x0169AA 05:A99A: 06        .byte $06   ; 
loc_D0_A99B:
- D 1 - I - 0x0169AB 05:A99B: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x0169AD 05:A99D: D6        .byte con_se_cb_D6   ; 
- D 1 - I - 0x0169AE 05:A99E: 64        .byte $64   ; 
- D 1 - I - 0x0169AF 05:A99F: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x0169B1 05:A9A1: 64        .byte $64   ; 
- D 1 - I - 0x0169B2 05:A9A2: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x0169B4 05:A9A4: 64        .byte $64   ; 
- D 1 - I - 0x0169B5 05:A9A5: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x0169B7 05:A9A7: 64        .byte $64   ; 
- D 1 - I - 0x0169B8 05:A9A8: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x0169BA 05:A9AA: 64        .byte $64   ; 
- D 1 - I - 0x0169BB 05:A9AB: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x0169BD 05:A9AD: 64        .byte $64   ; 
- D 1 - I - 0x0169BE 05:A9AE: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x0169C0 05:A9B0: 64        .byte $64   ; 
- D 1 - I - 0x0169C1 05:A9B1: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x0169C3 05:A9B3: 64        .byte $64   ; 
- D 1 - I - 0x0169C4 05:A9B4: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x0169C6 05:A9B6: D6        .byte con_se_cb_D6   ; 
- D 1 - I - 0x0169C7 05:A9B7: 67        .byte $67   ; 
- D 1 - I - 0x0169C8 05:A9B8: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x0169CA 05:A9BA: 67        .byte $67   ; 
- D 1 - I - 0x0169CB 05:A9BB: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x0169CD 05:A9BD: 67        .byte $67   ; 
- D 1 - I - 0x0169CE 05:A9BE: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x0169D0 05:A9C0: 67        .byte $67   ; 
- D 1 - I - 0x0169D1 05:A9C1: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x0169D3 05:A9C3: 67        .byte $67   ; 
- D 1 - I - 0x0169D4 05:A9C4: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x0169D6 05:A9C6: 67        .byte $67   ; 
- D 1 - I - 0x0169D7 05:A9C7: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x0169D9 05:A9C9: 67        .byte $67   ; 
- D 1 - I - 0x0169DA 05:A9CA: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x0169DC 05:A9CC: 67        .byte $67   ; 
- D 1 - I - 0x0169DD 05:A9CD: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x0169DF 05:A9CF: D6        .byte con_se_cb_D6   ; 
- D 1 - I - 0x0169E0 05:A9D0: 66        .byte $66   ; 
- D 1 - I - 0x0169E1 05:A9D1: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x0169E3 05:A9D3: 66        .byte $66   ; 
- D 1 - I - 0x0169E4 05:A9D4: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x0169E6 05:A9D6: 66        .byte $66   ; 
- D 1 - I - 0x0169E7 05:A9D7: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x0169E9 05:A9D9: 66        .byte $66   ; 
- D 1 - I - 0x0169EA 05:A9DA: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x0169EC 05:A9DC: 66        .byte $66   ; 
- D 1 - I - 0x0169ED 05:A9DD: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x0169EF 05:A9DF: 66        .byte $66   ; 
- D 1 - I - 0x0169F0 05:A9E0: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x0169F2 05:A9E2: 66        .byte $66   ; 
- D 1 - I - 0x0169F3 05:A9E3: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x0169F5 05:A9E5: 66        .byte $66   ; 
- D 1 - I - 0x0169F6 05:A9E6: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x0169F8 05:A9E8: D6        .byte con_se_cb_D6   ; 
- D 1 - I - 0x0169F9 05:A9E9: 65        .byte $65   ; 
- D 1 - I - 0x0169FA 05:A9EA: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x0169FC 05:A9EC: 65        .byte $65   ; 
- D 1 - I - 0x0169FD 05:A9ED: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x0169FF 05:A9EF: 65        .byte $65   ; 
- D 1 - I - 0x016A00 05:A9F0: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x016A02 05:A9F2: 65        .byte $65   ; 
- D 1 - I - 0x016A03 05:A9F3: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016A05 05:A9F5: 65        .byte $65   ; 
- D 1 - I - 0x016A06 05:A9F6: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x016A08 05:A9F8: 65        .byte $65   ; 
- D 1 - I - 0x016A09 05:A9F9: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016A0B 05:A9FB: 65        .byte $65   ; 
- D 1 - I - 0x016A0C 05:A9FC: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x016A0E 05:A9FE: 65        .byte $65   ; 
- D 1 - I - 0x016A0F 05:A9FF: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016A11 05:AA01: D6        .byte con_se_cb_D6   ; 
- D 1 - I - 0x016A12 05:AA02: 67        .byte $67   ; 
- D 1 - I - 0x016A13 05:AA03: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x016A15 05:AA05: 67        .byte $67   ; 
- D 1 - I - 0x016A16 05:AA06: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016A18 05:AA08: 67        .byte $67   ; 
- D 1 - I - 0x016A19 05:AA09: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x016A1B 05:AA0B: 67        .byte $67   ; 
- D 1 - I - 0x016A1C 05:AA0C: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016A1E 05:AA0E: 67        .byte $67   ; 
- D 1 - I - 0x016A1F 05:AA0F: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x016A21 05:AA11: 67        .byte $67   ; 
- D 1 - I - 0x016A22 05:AA12: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016A24 05:AA14: 67        .byte $67   ; 
- D 1 - I - 0x016A25 05:AA15: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x016A27 05:AA17: 67        .byte $67   ; 
- D 1 - I - 0x016A28 05:AA18: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016A2A 05:AA1A: D6        .byte con_se_cb_D6   ; 
- D 1 - I - 0x016A2B 05:AA1B: 69        .byte $69   ; 
- D 1 - I - 0x016A2C 05:AA1C: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x016A2E 05:AA1E: 69        .byte $69   ; 
- D 1 - I - 0x016A2F 05:AA1F: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016A31 05:AA21: 69        .byte $69   ; 
- D 1 - I - 0x016A32 05:AA22: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x016A34 05:AA24: 69        .byte $69   ; 
- D 1 - I - 0x016A35 05:AA25: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016A37 05:AA27: 69        .byte $69   ; 
- D 1 - I - 0x016A38 05:AA28: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x016A3A 05:AA2A: 69        .byte $69   ; 
- D 1 - I - 0x016A3B 05:AA2B: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016A3D 05:AA2D: 69        .byte $69   ; 
- D 1 - I - 0x016A3E 05:AA2E: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x016A40 05:AA30: 69        .byte $69   ; 
- D 1 - I - 0x016A41 05:AA31: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016A43 05:AA33: D6        .byte con_se_cb_D6   ; 
- D 1 - I - 0x016A44 05:AA34: 68        .byte $68   ; 
- D 1 - I - 0x016A45 05:AA35: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x016A47 05:AA37: 68        .byte $68   ; 
- D 1 - I - 0x016A48 05:AA38: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016A4A 05:AA3A: 68        .byte $68   ; 
- D 1 - I - 0x016A4B 05:AA3B: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x016A4D 05:AA3D: 68        .byte $68   ; 
- D 1 - I - 0x016A4E 05:AA3E: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016A50 05:AA40: 68        .byte $68   ; 
- D 1 - I - 0x016A51 05:AA41: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x016A53 05:AA43: 68        .byte $68   ; 
- D 1 - I - 0x016A54 05:AA44: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016A56 05:AA46: 68        .byte $68   ; 
- D 1 - I - 0x016A57 05:AA47: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x016A59 05:AA49: 68        .byte $68   ; 
- D 1 - I - 0x016A5A 05:AA4A: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016A5C 05:AA4C: D6        .byte con_se_cb_D6   ; 
- D 1 - I - 0x016A5D 05:AA4D: 6B        .byte $6B   ; 
- D 1 - I - 0x016A5E 05:AA4E: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x016A60 05:AA50: 6B        .byte $6B   ; 
- D 1 - I - 0x016A61 05:AA51: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016A63 05:AA53: 6B        .byte $6B   ; 
- D 1 - I - 0x016A64 05:AA54: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x016A66 05:AA56: 6B        .byte $6B   ; 
- D 1 - I - 0x016A67 05:AA57: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016A69 05:AA59: 6B        .byte $6B   ; 
- D 1 - I - 0x016A6A 05:AA5A: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x016A6C 05:AA5C: 6B        .byte $6B   ; 
- D 1 - I - 0x016A6D 05:AA5D: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016A6F 05:AA5F: 6B        .byte $6B   ; 
- D 1 - I - 0x016A70 05:AA60: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x016A72 05:AA62: 6B        .byte $6B   ; 
- D 1 - I - 0x016A73 05:AA63: D0        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x016A74 05:AA64: 9B A9     .word loc_D0_A99B


; bzk garbage
- - - - - - 0x016A76 05:AA66: D3        .byte con_se_cb_stop   ; 



off_ch_0D_AA67_01:
- D 1 - I - 0x016A77 05:AA67: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x016A78 05:AA68: 33 8B     .word ofs_CD_8B33
- D 1 - I - 0x016A7A 05:AA6A: DB        .byte con_se_cb_DB, $05, $1E, $78   ; 
- D 1 - I - 0x016A7E 05:AA6E: D8        .byte con_se_cb_D8, $FA   ; 
- D 1 - I - 0x016A80 05:AA70: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016A82 05:AA72: C7        .byte con_se_cb_C7, $FA   ; 
- D 1 - I - 0x016A84 05:AA74: 06        .byte $06   ; 
loc_D0_AA75:
- D 1 - I - 0x016A85 05:AA75: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016A87 05:AA77: D6        .byte con_se_cb_D6   ; 
- D 1 - I - 0x016A88 05:AA78: 5F        .byte $5F   ; 
- D 1 - I - 0x016A89 05:AA79: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x016A8B 05:AA7B: 5F        .byte $5F   ; 
- D 1 - I - 0x016A8C 05:AA7C: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016A8E 05:AA7E: 5F        .byte $5F   ; 
- D 1 - I - 0x016A8F 05:AA7F: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x016A91 05:AA81: 5F        .byte $5F   ; 
- D 1 - I - 0x016A92 05:AA82: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016A94 05:AA84: 5F        .byte $5F   ; 
- D 1 - I - 0x016A95 05:AA85: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x016A97 05:AA87: 5F        .byte $5F   ; 
- D 1 - I - 0x016A98 05:AA88: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016A9A 05:AA8A: 5F        .byte $5F   ; 
- D 1 - I - 0x016A9B 05:AA8B: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x016A9D 05:AA8D: 5F        .byte $5F   ; 
- D 1 - I - 0x016A9E 05:AA8E: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016AA0 05:AA90: D6        .byte con_se_cb_D6   ; 
- D 1 - I - 0x016AA1 05:AA91: 63        .byte $63   ; 
- D 1 - I - 0x016AA2 05:AA92: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x016AA4 05:AA94: 63        .byte $63   ; 
- D 1 - I - 0x016AA5 05:AA95: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016AA7 05:AA97: 63        .byte $63   ; 
- D 1 - I - 0x016AA8 05:AA98: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x016AAA 05:AA9A: 63        .byte $63   ; 
- D 1 - I - 0x016AAB 05:AA9B: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016AAD 05:AA9D: 63        .byte $63   ; 
- D 1 - I - 0x016AAE 05:AA9E: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x016AB0 05:AAA0: 63        .byte $63   ; 
- D 1 - I - 0x016AB1 05:AAA1: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016AB3 05:AAA3: 63        .byte $63   ; 
- D 1 - I - 0x016AB4 05:AAA4: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x016AB6 05:AAA6: 63        .byte $63   ; 
- D 1 - I - 0x016AB7 05:AAA7: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016AB9 05:AAA9: D6        .byte con_se_cb_D6   ; 
- D 1 - I - 0x016ABA 05:AAAA: 61        .byte $61   ; 
- D 1 - I - 0x016ABB 05:AAAB: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x016ABD 05:AAAD: 61        .byte $61   ; 
- D 1 - I - 0x016ABE 05:AAAE: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016AC0 05:AAB0: 61        .byte $61   ; 
- D 1 - I - 0x016AC1 05:AAB1: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x016AC3 05:AAB3: 61        .byte $61   ; 
- D 1 - I - 0x016AC4 05:AAB4: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016AC6 05:AAB6: 61        .byte $61   ; 
- D 1 - I - 0x016AC7 05:AAB7: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x016AC9 05:AAB9: 61        .byte $61   ; 
- D 1 - I - 0x016ACA 05:AABA: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016ACC 05:AABC: 61        .byte $61   ; 
- D 1 - I - 0x016ACD 05:AABD: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x016ACF 05:AABF: 61        .byte $61   ; 
- D 1 - I - 0x016AD0 05:AAC0: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016AD2 05:AAC2: D6        .byte con_se_cb_D6   ; 
- D 1 - I - 0x016AD3 05:AAC3: 62        .byte $62   ; 
- D 1 - I - 0x016AD4 05:AAC4: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x016AD6 05:AAC6: 62        .byte $62   ; 
- D 1 - I - 0x016AD7 05:AAC7: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016AD9 05:AAC9: 62        .byte $62   ; 
- D 1 - I - 0x016ADA 05:AACA: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x016ADC 05:AACC: 62        .byte $62   ; 
- D 1 - I - 0x016ADD 05:AACD: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016ADF 05:AACF: 62        .byte $62   ; 
- D 1 - I - 0x016AE0 05:AAD0: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x016AE2 05:AAD2: 62        .byte $62   ; 
- D 1 - I - 0x016AE3 05:AAD3: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016AE5 05:AAD5: 62        .byte $62   ; 
- D 1 - I - 0x016AE6 05:AAD6: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x016AE8 05:AAD8: 62        .byte $62   ; 
- D 1 - I - 0x016AE9 05:AAD9: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016AEB 05:AADB: D6        .byte con_se_cb_D6   ; 
- D 1 - I - 0x016AEC 05:AADC: 64        .byte $64   ; 
- D 1 - I - 0x016AED 05:AADD: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x016AEF 05:AADF: 64        .byte $64   ; 
- D 1 - I - 0x016AF0 05:AAE0: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016AF2 05:AAE2: 64        .byte $64   ; 
- D 1 - I - 0x016AF3 05:AAE3: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x016AF5 05:AAE5: 64        .byte $64   ; 
- D 1 - I - 0x016AF6 05:AAE6: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016AF8 05:AAE8: 64        .byte $64   ; 
- D 1 - I - 0x016AF9 05:AAE9: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x016AFB 05:AAEB: 64        .byte $64   ; 
- D 1 - I - 0x016AFC 05:AAEC: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016AFE 05:AAEE: 64        .byte $64   ; 
- D 1 - I - 0x016AFF 05:AAEF: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x016B01 05:AAF1: 64        .byte $64   ; 
- D 1 - I - 0x016B02 05:AAF2: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016B04 05:AAF4: D6        .byte con_se_cb_D6   ; 
- D 1 - I - 0x016B05 05:AAF5: 64        .byte $64   ; 
- D 1 - I - 0x016B06 05:AAF6: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x016B08 05:AAF8: 64        .byte $64   ; 
- D 1 - I - 0x016B09 05:AAF9: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016B0B 05:AAFB: 64        .byte $64   ; 
- D 1 - I - 0x016B0C 05:AAFC: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x016B0E 05:AAFE: 64        .byte $64   ; 
- D 1 - I - 0x016B0F 05:AAFF: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016B11 05:AB01: 64        .byte $64   ; 
- D 1 - I - 0x016B12 05:AB02: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x016B14 05:AB04: 64        .byte $64   ; 
- D 1 - I - 0x016B15 05:AB05: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016B17 05:AB07: 64        .byte $64   ; 
- D 1 - I - 0x016B18 05:AB08: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x016B1A 05:AB0A: 64        .byte $64   ; 
- D 1 - I - 0x016B1B 05:AB0B: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016B1D 05:AB0D: D6        .byte con_se_cb_D6   ; 
- D 1 - I - 0x016B1E 05:AB0E: 63        .byte $63   ; 
- D 1 - I - 0x016B1F 05:AB0F: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x016B21 05:AB11: 63        .byte $63   ; 
- D 1 - I - 0x016B22 05:AB12: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016B24 05:AB14: 63        .byte $63   ; 
- D 1 - I - 0x016B25 05:AB15: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x016B27 05:AB17: 63        .byte $63   ; 
- D 1 - I - 0x016B28 05:AB18: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016B2A 05:AB1A: 63        .byte $63   ; 
- D 1 - I - 0x016B2B 05:AB1B: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x016B2D 05:AB1D: 63        .byte $63   ; 
- D 1 - I - 0x016B2E 05:AB1E: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016B30 05:AB20: 63        .byte $63   ; 
- D 1 - I - 0x016B31 05:AB21: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x016B33 05:AB23: 63        .byte $63   ; 
- D 1 - I - 0x016B34 05:AB24: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016B36 05:AB26: D6        .byte con_se_cb_D6   ; 
- D 1 - I - 0x016B37 05:AB27: 64        .byte $64   ; 
- D 1 - I - 0x016B38 05:AB28: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x016B3A 05:AB2A: 64        .byte $64   ; 
- D 1 - I - 0x016B3B 05:AB2B: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016B3D 05:AB2D: 64        .byte $64   ; 
- D 1 - I - 0x016B3E 05:AB2E: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x016B40 05:AB30: 64        .byte $64   ; 
- D 1 - I - 0x016B41 05:AB31: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016B43 05:AB33: 64        .byte $64   ; 
- D 1 - I - 0x016B44 05:AB34: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x016B46 05:AB36: 64        .byte $64   ; 
- D 1 - I - 0x016B47 05:AB37: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016B49 05:AB39: 64        .byte $64   ; 
- D 1 - I - 0x016B4A 05:AB3A: C4        .byte con_se_cb_C4, $21   ; 
- D 1 - I - 0x016B4C 05:AB3C: 64        .byte $64   ; 
- D 1 - I - 0x016B4D 05:AB3D: D0        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x016B4E 05:AB3E: 75 AA     .word loc_D0_AA75


; bzk garbage
- - - - - - 0x016B50 05:AB40: D3        .byte con_se_cb_stop   ; 



off_ch_0D_AB41_02:
- D 1 - I - 0x016B51 05:AB41: C7        .byte con_se_cb_C7, $FA   ; 
- D 1 - I - 0x016B53 05:AB43: DB        .byte con_se_cb_DB, $0A, $1E, $78   ; 
- D 1 - I - 0x016B57 05:AB47: D8        .byte con_se_cb_D8, $06   ; 
loc_D0_AB49:
- D 1 - I - 0x016B59 05:AB49: 30        .byte $30   ; 
- D 1 - I - 0x016B5A 05:AB4A: 4C        .byte $4C   ; 
- D 1 - I - 0x016B5B 05:AB4B: 51        .byte $51   ; 
- D 1 - I - 0x016B5C 05:AB4C: 57        .byte $57   ; 
- D 1 - I - 0x016B5D 05:AB4D: 53        .byte $53   ; 
- D 1 - I - 0x016B5E 05:AB4E: 51        .byte $51   ; 
- D 1 - I - 0x016B5F 05:AB4F: 4F        .byte $4F   ; 
- D 1 - I - 0x016B60 05:AB50: 58        .byte $58   ; 
- D 1 - I - 0x016B61 05:AB51: 54        .byte $54   ; 
- D 1 - I - 0x016B62 05:AB52: D0        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x016B63 05:AB53: 49 AB     .word loc_D0_AB49



off_ch_0D_AB55_03:
- D 1 - I - 0x016B65 05:AB55: D3        .byte con_se_cb_stop   ; 



_off013_AB56_0E_mission_info:
- D 1 - I - 0x016B66 05:AB56: FF        .byte $FF   ; 
- D 1 - I - 0x016B67 05:AB57: 00        .byte $00   ; 
- D 1 - I - 0x016B68 05:AB58: 64 AB     .word off_ch_0E_AB64_00
- D 1 - I - 0x016B6A 05:AB5A: 01        .byte $01   ; 
- D 1 - I - 0x016B6B 05:AB5B: 98 AB     .word off_ch_0E_AB98_01
- D 1 - I - 0x016B6D 05:AB5D: 02        .byte $02   ; 
- D 1 - I - 0x016B6E 05:AB5E: B9 AB     .word off_ch_0E_ABB9_02
- D 1 - I - 0x016B70 05:AB60: 03        .byte $03   ; 
- D 1 - I - 0x016B71 05:AB61: E6 AB     .word off_ch_0E_ABE6_03
- D 1 - I - 0x016B73 05:AB63: FF        .byte $FF   ; 



off_ch_0E_AB64_00:
- D 1 - I - 0x016B74 05:AB64: CC        .byte con_se_cb_CC, $78   ; 
- D 1 - I - 0x016B76 05:AB66: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x016B77 05:AB67: 6E 8B     .word ofs_CD_8B6E
- D 1 - I - 0x016B79 05:AB69: D8        .byte con_se_cb_D8, $00   ; 
- D 1 - I - 0x016B7B 05:AB6B: C4        .byte con_se_cb_C4, $1F   ; 
- D 1 - I - 0x016B7D 05:AB6D: C7        .byte con_se_cb_C7, $B4   ; 
loc_D0_AB6F:
- D 1 - I - 0x016B7F 05:AB6F: 06        .byte $06   ; 
- D 1 - I - 0x016B80 05:AB70: 4C        .byte $4C   ; 
- D 1 - I - 0x016B81 05:AB71: 58        .byte $58   ; 
- D 1 - I - 0x016B82 05:AB72: 03        .byte $03   ; 
- D 1 - I - 0x016B83 05:AB73: 4F        .byte $4F   ; 
- D 1 - I - 0x016B84 05:AB74: 5B        .byte $5B   ; 
- D 1 - I - 0x016B85 05:AB75: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016B86 05:AB76: 4E        .byte $4E   ; 
- D 1 - I - 0x016B87 05:AB77: 5A        .byte $5A   ; 
- D 1 - I - 0x016B88 05:AB78: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016B89 05:AB79: 4C        .byte $4C   ; 
- D 1 - I - 0x016B8A 05:AB7A: 58        .byte $58   ; 
- D 1 - I - 0x016B8B 05:AB7B: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016B8C 05:AB7C: 4A        .byte $4A   ; 
- D 1 - I - 0x016B8D 05:AB7D: 56        .byte $56   ; 
- D 1 - I - 0x016B8E 05:AB7E: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016B8F 05:AB7F: 06        .byte $06   ; 
- D 1 - I - 0x016B90 05:AB80: 4C        .byte $4C   ; 
- D 1 - I - 0x016B91 05:AB81: 03        .byte $03   ; 
- D 1 - I - 0x016B92 05:AB82: 4C        .byte $4C   ; 
- D 1 - I - 0x016B93 05:AB83: 4C        .byte $4C   ; 
- D 1 - I - 0x016B94 05:AB84: 4C        .byte $4C   ; 
- D 1 - I - 0x016B95 05:AB85: 58        .byte $58   ; 
- D 1 - I - 0x016B96 05:AB86: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016B97 05:AB87: 58        .byte $58   ; 
- D 1 - I - 0x016B98 05:AB88: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016B99 05:AB89: 58        .byte $58   ; 
- D 1 - I - 0x016B9A 05:AB8A: 56        .byte $56   ; 
- D 1 - I - 0x016B9B 05:AB8B: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016B9C 05:AB8C: 56        .byte $56   ; 
- D 1 - I - 0x016B9D 05:AB8D: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016B9E 05:AB8E: C7        .byte con_se_cb_C7, $FF   ; 
- D 1 - I - 0x016BA0 05:AB90: 56        .byte $56   ; 
- D 1 - I - 0x016BA1 05:AB91: 58        .byte $58   ; 
- D 1 - I - 0x016BA2 05:AB92: C7        .byte con_se_cb_C7, $B4   ; 
- D 1 - I - 0x016BA4 05:AB94: D0        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x016BA5 05:AB95: 6F AB     .word loc_D0_AB6F


; bzk garbage
- - - - - - 0x016BA7 05:AB97: D3        .byte con_se_cb_stop   ; 



off_ch_0E_AB98_01:
- D 1 - I - 0x016BA8 05:AB98: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x016BA9 05:AB99: 6E 8B     .word ofs_CD_8B6E
- D 1 - I - 0x016BAB 05:AB9B: D8        .byte con_se_cb_D8, $00   ; 
- D 1 - I - 0x016BAD 05:AB9D: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016BAF 05:AB9F: C7        .byte con_se_cb_C7, $B4   ; 
loc_D0_ABA1:
- D 1 - I - 0x016BB1 05:ABA1: 06        .byte $06   ; 
- D 1 - I - 0x016BB2 05:ABA2: 56        .byte $56   ; 
- D 1 - I - 0x016BB3 05:ABA3: 53        .byte $53   ; 
- D 1 - I - 0x016BB4 05:ABA4: 18        .byte $18   ; 
- D 1 - I - 0x016BB5 05:ABA5: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016BB6 05:ABA6: 0C        .byte $0C   ; 
- D 1 - I - 0x016BB7 05:ABA7: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016BB8 05:ABA8: 06        .byte $06   ; 
- D 1 - I - 0x016BB9 05:ABA9: 53        .byte $53   ; 
- D 1 - I - 0x016BBA 05:ABAA: 03        .byte $03   ; 
- D 1 - I - 0x016BBB 05:ABAB: 53        .byte $53   ; 
- D 1 - I - 0x016BBC 05:ABAC: 53        .byte $53   ; 
- D 1 - I - 0x016BBD 05:ABAD: 0C        .byte $0C   ; 
- D 1 - I - 0x016BBE 05:ABAE: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016BBF 05:ABAF: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016BC0 05:ABB0: 06        .byte $06   ; 
- D 1 - I - 0x016BC1 05:ABB1: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016BC2 05:ABB2: 03        .byte $03   ; 
- D 1 - I - 0x016BC3 05:ABB3: 5B        .byte $5B   ; 
- D 1 - I - 0x016BC4 05:ABB4: 5D        .byte $5D   ; 
- D 1 - I - 0x016BC5 05:ABB5: D0        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x016BC6 05:ABB6: A1 AB     .word loc_D0_ABA1


; bzk garbage
- - - - - - 0x016BC8 05:ABB8: D3        .byte con_se_cb_stop   ; 



off_ch_0E_ABB9_02:
- D 1 - I - 0x016BC9 05:ABB9: D8        .byte con_se_cb_D8, $0C   ; 
- D 1 - I - 0x016BCB 05:ABBB: C7        .byte con_se_cb_C7, $B4   ; 
loc_D0_ABBD:
- D 1 - I - 0x016BCD 05:ABBD: 06        .byte $06   ; 
- D 1 - I - 0x016BCE 05:ABBE: 4C        .byte $4C   ; 
- D 1 - I - 0x016BCF 05:ABBF: 58        .byte $58   ; 
- D 1 - I - 0x016BD0 05:ABC0: 03        .byte $03   ; 
- D 1 - I - 0x016BD1 05:ABC1: 4F        .byte $4F   ; 
- D 1 - I - 0x016BD2 05:ABC2: 5B        .byte $5B   ; 
- D 1 - I - 0x016BD3 05:ABC3: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016BD4 05:ABC4: 4E        .byte $4E   ; 
- D 1 - I - 0x016BD5 05:ABC5: 5A        .byte $5A   ; 
- D 1 - I - 0x016BD6 05:ABC6: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016BD7 05:ABC7: 4C        .byte $4C   ; 
- D 1 - I - 0x016BD8 05:ABC8: 58        .byte $58   ; 
- D 1 - I - 0x016BD9 05:ABC9: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016BDA 05:ABCA: 4A        .byte $4A   ; 
- D 1 - I - 0x016BDB 05:ABCB: 56        .byte $56   ; 
- D 1 - I - 0x016BDC 05:ABCC: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016BDD 05:ABCD: 06        .byte $06   ; 
- D 1 - I - 0x016BDE 05:ABCE: 4C        .byte $4C   ; 
- D 1 - I - 0x016BDF 05:ABCF: 03        .byte $03   ; 
- D 1 - I - 0x016BE0 05:ABD0: 4C        .byte $4C   ; 
- D 1 - I - 0x016BE1 05:ABD1: 4C        .byte $4C   ; 
- D 1 - I - 0x016BE2 05:ABD2: 4C        .byte $4C   ; 
- D 1 - I - 0x016BE3 05:ABD3: 58        .byte $58   ; 
- D 1 - I - 0x016BE4 05:ABD4: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016BE5 05:ABD5: 58        .byte $58   ; 
- D 1 - I - 0x016BE6 05:ABD6: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016BE7 05:ABD7: 58        .byte $58   ; 
- D 1 - I - 0x016BE8 05:ABD8: 56        .byte $56   ; 
- D 1 - I - 0x016BE9 05:ABD9: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016BEA 05:ABDA: 56        .byte $56   ; 
- D 1 - I - 0x016BEB 05:ABDB: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016BEC 05:ABDC: C7        .byte con_se_cb_C7, $FF   ; 
- D 1 - I - 0x016BEE 05:ABDE: 56        .byte $56   ; 
- D 1 - I - 0x016BEF 05:ABDF: 58        .byte $58   ; 
- D 1 - I - 0x016BF0 05:ABE0: C7        .byte con_se_cb_C7, $B4   ; 
- D 1 - I - 0x016BF2 05:ABE2: D0        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x016BF3 05:ABE3: BD AB     .word loc_D0_ABBD


; bzk garbage
- - - - - - 0x016BF5 05:ABE5: D3        .byte con_se_cb_stop   ; 



off_ch_0E_ABE6_03:
- D 1 - I - 0x016BF6 05:ABE6: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x016BF7 05:ABE7: F3 8B     .word ofs_CD_8BF3
- D 1 - I - 0x016BF9 05:ABE9: C4        .byte con_se_cb_C4, $23   ; 
loc_D0_ABEB:
- D 1 - I - 0x016BFB 05:ABEB: D1        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x016BFC 05:ABEC: 0C AC     .word sub_D1_AC0C
- D 1 - I - 0x016BFE 05:ABEE: 06        .byte $06   ; 
- D 1 - I - 0x016BFF 05:ABEF: 41        .byte $41   ; 
- D 1 - I - 0x016C00 05:ABF0: 41        .byte $41   ; 
- D 1 - I - 0x016C01 05:ABF1: 42        .byte $42   ; 
- D 1 - I - 0x016C02 05:ABF2: 41        .byte $41   ; 
- D 1 - I - 0x016C03 05:ABF3: 41        .byte $41   ; 
- D 1 - I - 0x016C04 05:ABF4: 03        .byte $03   ; 
- D 1 - I - 0x016C05 05:ABF5: 41        .byte $41   ; 
- D 1 - I - 0x016C06 05:ABF6: 4C        .byte $4C   ; 
- D 1 - I - 0x016C07 05:ABF7: 06        .byte $06   ; 
- D 1 - I - 0x016C08 05:ABF8: 4C        .byte $4C   ; 
- D 1 - I - 0x016C09 05:ABF9: 4C        .byte $4C   ; 
- D 1 - I - 0x016C0A 05:ABFA: D1        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x016C0B 05:ABFB: 0C AC     .word sub_D1_AC0C
- D 1 - I - 0x016C0D 05:ABFD: 06        .byte $06   ; 
- D 1 - I - 0x016C0E 05:ABFE: 41        .byte $41   ; 
- D 1 - I - 0x016C0F 05:ABFF: 41        .byte $41   ; 
- D 1 - I - 0x016C10 05:AC00: 42        .byte $42   ; 
- D 1 - I - 0x016C11 05:AC01: 41        .byte $41   ; 
- D 1 - I - 0x016C12 05:AC02: 03        .byte $03   ; 
- D 1 - I - 0x016C13 05:AC03: 41        .byte $41   ; 
- D 1 - I - 0x016C14 05:AC04: 4B        .byte $4B   ; 
- D 1 - I - 0x016C15 05:AC05: 4B        .byte $4B   ; 
- D 1 - I - 0x016C16 05:AC06: 4B        .byte $4B   ; 
- D 1 - I - 0x016C17 05:AC07: 0C        .byte $0C   ; 
- D 1 - I - 0x016C18 05:AC08: 4B        .byte $4B   ; 
- D 1 - I - 0x016C19 05:AC09: D0        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x016C1A 05:AC0A: EB AB     .word loc_D0_ABEB



sub_D1_AC0C:
- D 1 - I - 0x016C1C 05:AC0C: 0C        .byte $0C   ; 
- D 1 - I - 0x016C1D 05:AC0D: 43        .byte $43   ; 
- D 1 - I - 0x016C1E 05:AC0E: 03        .byte $03   ; 
- D 1 - I - 0x016C1F 05:AC0F: 42        .byte $42   ; 
- D 1 - I - 0x016C20 05:AC10: 42        .byte $42   ; 
- D 1 - I - 0x016C21 05:AC11: 06        .byte $06   ; 
- D 1 - I - 0x016C22 05:AC12: 41        .byte $41   ; 
- D 1 - I - 0x016C23 05:AC13: 41        .byte $41   ; 
- D 1 - I - 0x016C24 05:AC14: 41        .byte $41   ; 
- D 1 - I - 0x016C25 05:AC15: 4C        .byte $4C   ; 
- D 1 - I - 0x016C26 05:AC16: 41        .byte $41   ; 
- D 1 - I - 0x016C27 05:AC17: 41        .byte $41   ; 
- D 1 - I - 0x016C28 05:AC18: 41        .byte $41   ; 
- D 1 - I - 0x016C29 05:AC19: 42        .byte $42   ; 
- D 1 - I - 0x016C2A 05:AC1A: 41        .byte $41   ; 
- D 1 - I - 0x016C2B 05:AC1B: 41        .byte $41   ; 
- D 1 - I - 0x016C2C 05:AC1C: 41        .byte $41   ; 
- D 1 - I - 0x016C2D 05:AC1D: 03        .byte $03   ; 
- D 1 - I - 0x016C2E 05:AC1E: 4C        .byte $4C   ; 
- D 1 - I - 0x016C2F 05:AC1F: 4C        .byte $4C   ; 
- D 1 - I - 0x016C30 05:AC20: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016C31 05:AC21: 4C        .byte $4C   ; 
- D 1 - I - 0x016C32 05:AC22: 0C        .byte $0C   ; 
- D 1 - I - 0x016C33 05:AC23: 43        .byte $43   ; 
- D 1 - I - 0x016C34 05:AC24: 03        .byte $03   ; 
- D 1 - I - 0x016C35 05:AC25: 42        .byte $42   ; 
- D 1 - I - 0x016C36 05:AC26: 42        .byte $42   ; 
- D 1 - I - 0x016C37 05:AC27: 06        .byte $06   ; 
- D 1 - I - 0x016C38 05:AC28: 41        .byte $41   ; 
- D 1 - I - 0x016C39 05:AC29: 41        .byte $41   ; 
- D 1 - I - 0x016C3A 05:AC2A: 41        .byte $41   ; 
- D 1 - I - 0x016C3B 05:AC2B: 4C        .byte $4C   ; 
- D 1 - I - 0x016C3C 05:AC2C: 41        .byte $41   ; 
- D 1 - I - 0x016C3D 05:AC2D: D2        .byte con_se_cb_rts   ; 


; bzk garbage
- - - - - - 0x016C3E 05:AC2E: D3        .byte con_se_cb_stop   ; 



_off013_AC2F_0F_mission_3:
- D 1 - I - 0x016C3F 05:AC2F: FF        .byte $FF   ; 
- D 1 - I - 0x016C40 05:AC30: 00        .byte $00   ; 
- D 1 - I - 0x016C41 05:AC31: 3D AC     .word off_ch_0F_AC3D_00
- D 1 - I - 0x016C43 05:AC33: 01        .byte $01   ; 
- D 1 - I - 0x016C44 05:AC34: 87 AC     .word off_ch_0F_AC87_01
- D 1 - I - 0x016C46 05:AC36: 02        .byte $02   ; 
- D 1 - I - 0x016C47 05:AC37: CF AC     .word off_ch_0F_ACCF_02
- D 1 - I - 0x016C49 05:AC39: 03        .byte $03   ; 
- D 1 - I - 0x016C4A 05:AC3A: F7 AC     .word off_ch_0F_ACF7_03
- D 1 - I - 0x016C4C 05:AC3C: FF        .byte $FF   ; 



off_ch_0F_AC3D_00:
- D 1 - I - 0x016C4D 05:AC3D: CC        .byte con_se_cb_CC, $6E   ; 
- D 1 - I - 0x016C4F 05:AC3F: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x016C50 05:AC40: B6 8A     .word ofs_CD_8AB6
- D 1 - I - 0x016C52 05:AC42: DB        .byte con_se_cb_DB, $08, $32, $A0   ; 
- D 1 - I - 0x016C56 05:AC46: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016C58 05:AC48: C7        .byte con_se_cb_C7, $C8   ; 
loc_D0_AC4A:
off_CE_AC4A:
- D 1 - I - 0x016C5A 05:AC4A: D8        .byte con_se_cb_D8, $F9   ; 
- D 1 - I - 0x016C5C 05:AC4C: D1        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x016C5D 05:AC4D: 57 AC     .word sub_D1_AC57
- D 1 - I - 0x016C5F 05:AC4F: D8        .byte con_se_cb_D8, $FB   ; 
- D 1 - I - 0x016C61 05:AC51: D1        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x016C62 05:AC52: 57 AC     .word sub_D1_AC57
- - - - - - 0x016C64 05:AC54: D0        .byte con_se_cb_jmp   ; 
- - - - - - 0x016C65 05:AC55: 4A AC     .word loc_D0_AC4A



sub_D1_AC57:
- D 1 - I - 0x016C67 05:AC57: 06        .byte $06   ; 
- D 1 - I - 0x016C68 05:AC58: 5E        .byte $5E   ; 
- D 1 - I - 0x016C69 05:AC59: 60        .byte $60   ; 
- D 1 - I - 0x016C6A 05:AC5A: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016C6B 05:AC5B: 5E        .byte $5E   ; 
- D 1 - I - 0x016C6C 05:AC5C: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016C6D 05:AC5D: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016C6E 05:AC5E: 63        .byte $63   ; 
- D 1 - I - 0x016C6F 05:AC5F: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016C70 05:AC60: 60        .byte $60   ; 
- D 1 - I - 0x016C71 05:AC61: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016C72 05:AC62: 67        .byte $67   ; 
- D 1 - I - 0x016C73 05:AC63: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016C74 05:AC64: 63        .byte $63   ; 
- D 1 - I - 0x016C75 05:AC65: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016C76 05:AC66: 5E        .byte $5E   ; 
- D 1 - I - 0x016C77 05:AC67: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016C78 05:AC68: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016C79 05:AC69: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016C7A 05:AC6A: 5B        .byte $5B   ; 
- D 1 - I - 0x016C7B 05:AC6B: 9E        .byte $9E   ; 
- D 1 - I - 0x016C7C 05:AC6C: 80        .byte $80   ; 
- D 1 - I - 0x016C7D 05:AC6D: CE        .byte con_se_cb_loop_1, $03   ; 
- D 1 - I - 0x016C7F 05:AC6F: 4A AC     .word off_CE_AC4A
- D 1 - I - 0x016C81 05:AC71: 06        .byte $06   ; 
- D 1 - I - 0x016C82 05:AC72: 5E        .byte $5E   ; 
- D 1 - I - 0x016C83 05:AC73: 60        .byte $60   ; 
- D 1 - I - 0x016C84 05:AC74: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016C85 05:AC75: 5E        .byte $5E   ; 
- D 1 - I - 0x016C86 05:AC76: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016C87 05:AC77: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016C88 05:AC78: 63        .byte $63   ; 
- D 1 - I - 0x016C89 05:AC79: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016C8A 05:AC7A: 60        .byte $60   ; 
- D 1 - I - 0x016C8B 05:AC7B: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016C8C 05:AC7C: 67        .byte $67   ; 
- D 1 - I - 0x016C8D 05:AC7D: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016C8E 05:AC7E: 63        .byte $63   ; 
- D 1 - I - 0x016C8F 05:AC7F: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016C90 05:AC80: 5E        .byte $5E   ; 
- D 1 - I - 0x016C91 05:AC81: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016C92 05:AC82: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016C93 05:AC83: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016C94 05:AC84: 5B        .byte $5B   ; 
- D 1 - I - 0x016C95 05:AC85: 5E        .byte $5E   ; 
- D 1 - I - 0x016C96 05:AC86: D2        .byte con_se_cb_rts   ; 



off_ch_0F_AC87_01:
- D 1 - I - 0x016C97 05:AC87: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x016C98 05:AC88: B6 8A     .word ofs_CD_8AB6
- D 1 - I - 0x016C9A 05:AC8A: DB        .byte con_se_cb_DB, $08, $32, $A0   ; 
- D 1 - I - 0x016C9E 05:AC8E: C4        .byte con_se_cb_C4, $27   ; 
- D 1 - I - 0x016CA0 05:AC90: C7        .byte con_se_cb_C7, $C8   ; 
loc_D0_AC92:
off_CE_AC92:
- D 1 - I - 0x016CA2 05:AC92: D8        .byte con_se_cb_D8, $F9   ; 
- D 1 - I - 0x016CA4 05:AC94: D1        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x016CA5 05:AC95: 9F AC     .word sub_D1_AC9F
- D 1 - I - 0x016CA7 05:AC97: D8        .byte con_se_cb_D8, $FB   ; 
- D 1 - I - 0x016CA9 05:AC99: D1        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x016CAA 05:AC9A: 9F AC     .word sub_D1_AC9F
- - - - - - 0x016CAC 05:AC9C: D0        .byte con_se_cb_jmp   ; 
- - - - - - 0x016CAD 05:AC9D: 92 AC     .word loc_D0_AC92



sub_D1_AC9F:
- D 1 - I - 0x016CAF 05:AC9F: 06        .byte $06   ; 
- D 1 - I - 0x016CB0 05:ACA0: 5B        .byte $5B   ; 
- D 1 - I - 0x016CB1 05:ACA1: 5B        .byte $5B   ; 
- D 1 - I - 0x016CB2 05:ACA2: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016CB3 05:ACA3: 5A        .byte $5A   ; 
- D 1 - I - 0x016CB4 05:ACA4: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016CB5 05:ACA5: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016CB6 05:ACA6: 5E        .byte $5E   ; 
- D 1 - I - 0x016CB7 05:ACA7: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016CB8 05:ACA8: 5B        .byte $5B   ; 
- D 1 - I - 0x016CB9 05:ACA9: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016CBA 05:ACAA: 62        .byte $62   ; 
- D 1 - I - 0x016CBB 05:ACAB: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016CBC 05:ACAC: 5E        .byte $5E   ; 
- D 1 - I - 0x016CBD 05:ACAD: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016CBE 05:ACAE: 5A        .byte $5A   ; 
- D 1 - I - 0x016CBF 05:ACAF: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016CC0 05:ACB0: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016CC1 05:ACB1: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016CC2 05:ACB2: 57        .byte $57   ; 
- D 1 - I - 0x016CC3 05:ACB3: 9B        .byte $9B   ; 
- D 1 - I - 0x016CC4 05:ACB4: 80        .byte $80   ; 
- D 1 - I - 0x016CC5 05:ACB5: CE        .byte con_se_cb_loop_1, $03   ; 
- D 1 - I - 0x016CC7 05:ACB7: 92 AC     .word off_CE_AC92
- D 1 - I - 0x016CC9 05:ACB9: 06        .byte $06   ; 
- D 1 - I - 0x016CCA 05:ACBA: 5B        .byte $5B   ; 
- D 1 - I - 0x016CCB 05:ACBB: 5B        .byte $5B   ; 
- D 1 - I - 0x016CCC 05:ACBC: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016CCD 05:ACBD: 5A        .byte $5A   ; 
- D 1 - I - 0x016CCE 05:ACBE: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016CCF 05:ACBF: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016CD0 05:ACC0: 5E        .byte $5E   ; 
- D 1 - I - 0x016CD1 05:ACC1: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016CD2 05:ACC2: 5B        .byte $5B   ; 
- D 1 - I - 0x016CD3 05:ACC3: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016CD4 05:ACC4: 62        .byte $62   ; 
- D 1 - I - 0x016CD5 05:ACC5: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016CD6 05:ACC6: 5E        .byte $5E   ; 
- D 1 - I - 0x016CD7 05:ACC7: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016CD8 05:ACC8: 5A        .byte $5A   ; 
- D 1 - I - 0x016CD9 05:ACC9: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016CDA 05:ACCA: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016CDB 05:ACCB: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016CDC 05:ACCC: 57        .byte $57   ; 
- D 1 - I - 0x016CDD 05:ACCD: 5B        .byte $5B   ; 
- D 1 - I - 0x016CDE 05:ACCE: D2        .byte con_se_cb_rts   ; 



off_ch_0F_ACCF_02:
- D 1 - I - 0x016CDF 05:ACCF: C7        .byte con_se_cb_C7, $C8   ; 
loc_D0_ACD1:
off_CE_ACD1:
- D 1 - I - 0x016CE1 05:ACD1: D8        .byte con_se_cb_D8, $11   ; 
- D 1 - I - 0x016CE3 05:ACD3: D1        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x016CE4 05:ACD4: DE AC     .word sub_D1_ACDE
- D 1 - I - 0x016CE6 05:ACD6: D8        .byte con_se_cb_D8, $13   ; 
- D 1 - I - 0x016CE8 05:ACD8: D1        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x016CE9 05:ACD9: DE AC     .word sub_D1_ACDE
- - - - - - 0x016CEB 05:ACDB: D0        .byte con_se_cb_jmp   ; 
- - - - - - 0x016CEC 05:ACDC: D1 AC     .word loc_D0_ACD1



sub_D1_ACDE:
- D 1 - I - 0x016CEE 05:ACDE: 06        .byte $06   ; 
- D 1 - I - 0x016CEF 05:ACDF: 48        .byte $48   ; 
- D 1 - I - 0x016CF0 05:ACE0: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016CF1 05:ACE1: 4B        .byte $4B   ; 
- D 1 - I - 0x016CF2 05:ACE2: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016CF3 05:ACE3: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016CF4 05:ACE4: 48        .byte $48   ; 
- D 1 - I - 0x016CF5 05:ACE5: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016CF6 05:ACE6: 4F        .byte $4F   ; 
- D 1 - I - 0x016CF7 05:ACE7: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016CF8 05:ACE8: 4E        .byte $4E   ; 
- D 1 - I - 0x016CF9 05:ACE9: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016CFA 05:ACEA: 4F        .byte $4F   ; 
- D 1 - I - 0x016CFB 05:ACEB: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016CFC 05:ACEC: 4E        .byte $4E   ; 
- D 1 - I - 0x016CFD 05:ACED: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016CFE 05:ACEE: 48        .byte $48   ; 
- D 1 - I - 0x016CFF 05:ACEF: 46        .byte $46   ; 
- D 1 - I - 0x016D00 05:ACF0: 12        .byte $12   ; 
- D 1 - I - 0x016D01 05:ACF1: 48        .byte $48   ; 
- D 1 - I - 0x016D02 05:ACF2: CE        .byte con_se_cb_loop_1, $04   ; 
- D 1 - I - 0x016D04 05:ACF4: D1 AC     .word off_CE_ACD1
- D 1 - I - 0x016D06 05:ACF6: D2        .byte con_se_cb_rts   ; 



off_ch_0F_ACF7_03:
- D 1 - I - 0x016D07 05:ACF7: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x016D08 05:ACF8: F3 8B     .word ofs_CD_8BF3
- D 1 - I - 0x016D0A 05:ACFA: C4        .byte con_se_cb_C4, $23   ; 
loc_D0_ACFC:
- D 1 - I - 0x016D0C 05:ACFC: 03        .byte $03   ; 
- D 1 - I - 0x016D0D 05:ACFD: 41        .byte $41   ; 
- D 1 - I - 0x016D0E 05:ACFE: 41        .byte $41   ; 
- D 1 - I - 0x016D0F 05:ACFF: 41        .byte $41   ; 
- D 1 - I - 0x016D10 05:AD00: 41        .byte $41   ; 
- D 1 - I - 0x016D11 05:AD01: 06        .byte $06   ; 
- D 1 - I - 0x016D12 05:AD02: 41        .byte $41   ; 
- D 1 - I - 0x016D13 05:AD03: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016D14 05:AD04: 0C        .byte $0C   ; 
- D 1 - I - 0x016D15 05:AD05: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016D16 05:AD06: 03        .byte $03   ; 
- D 1 - I - 0x016D17 05:AD07: 41        .byte $41   ; 
- D 1 - I - 0x016D18 05:AD08: 41        .byte $41   ; 
- D 1 - I - 0x016D19 05:AD09: 41        .byte $41   ; 
- D 1 - I - 0x016D1A 05:AD0A: 41        .byte $41   ; 
- D 1 - I - 0x016D1B 05:AD0B: 06        .byte $06   ; 
- D 1 - I - 0x016D1C 05:AD0C: 41        .byte $41   ; 
- D 1 - I - 0x016D1D 05:AD0D: 41        .byte $41   ; 
- D 1 - I - 0x016D1E 05:AD0E: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016D1F 05:AD0F: 03        .byte $03   ; 
- D 1 - I - 0x016D20 05:AD10: 41        .byte $41   ; 
- D 1 - I - 0x016D21 05:AD11: 41        .byte $41   ; 
- D 1 - I - 0x016D22 05:AD12: 41        .byte $41   ; 
- D 1 - I - 0x016D23 05:AD13: 41        .byte $41   ; 
- D 1 - I - 0x016D24 05:AD14: 06        .byte $06   ; 
- D 1 - I - 0x016D25 05:AD15: 41        .byte $41   ; 
- D 1 - I - 0x016D26 05:AD16: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016D27 05:AD17: 0C        .byte $0C   ; 
- D 1 - I - 0x016D28 05:AD18: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016D29 05:AD19: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016D2A 05:AD1A: 06        .byte $06   ; 
- D 1 - I - 0x016D2B 05:AD1B: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016D2C 05:AD1C: D0        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x016D2D 05:AD1D: FC AC     .word loc_D0_ACFC


; bzk garbage
- - - - - - 0x016D2F 05:AD1F: D3        .byte con_se_cb_stop   ; 



_off013_AD20_10_mission_4:
- D 1 - I - 0x016D30 05:AD20: FF        .byte $FF   ; 
- D 1 - I - 0x016D31 05:AD21: 00        .byte $00   ; 
- D 1 - I - 0x016D32 05:AD22: 2E AD     .word off_ch_10_AD2E_00
- D 1 - I - 0x016D34 05:AD24: 01        .byte $01   ; 
- D 1 - I - 0x016D35 05:AD25: C5 AD     .word off_ch_10_ADC5_01
- D 1 - I - 0x016D37 05:AD27: 02        .byte $02   ; 
- D 1 - I - 0x016D38 05:AD28: 5A AE     .word off_ch_10_AE5A_02
- D 1 - I - 0x016D3A 05:AD2A: 03        .byte $03   ; 
- D 1 - I - 0x016D3B 05:AD2B: 99 AE     .word off_ch_10_AE99_03
- D 1 - I - 0x016D3D 05:AD2D: FF        .byte $FF   ; 



off_ch_10_AD2E_00:
- D 1 - I - 0x016D3E 05:AD2E: CC        .byte con_se_cb_CC, $78   ; 
- D 1 - I - 0x016D40 05:AD30: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x016D41 05:AD31: B6 8A     .word ofs_CD_8AB6
- D 1 - I - 0x016D43 05:AD33: DB        .byte con_se_cb_DB, $0A, $1E, $8C   ; 
- D 1 - I - 0x016D47 05:AD37: D8        .byte con_se_cb_D8, $00   ; 
- D 1 - I - 0x016D49 05:AD39: C4        .byte con_se_cb_C4, $25   ; 
- D 1 - I - 0x016D4B 05:AD3B: C7        .byte con_se_cb_C7, $C8   ; 
- D 1 - I - 0x016D4D 05:AD3D: 0C        .byte $0C   ; 
- D 1 - I - 0x016D4E 05:AD3E: C9        .byte con_se_cb_C9   ; 
loc_D0_AD3F:
- D 1 - I - 0x016D4F 05:AD3F: 06        .byte $06   ; 
- D 1 - I - 0x016D50 05:AD40: 67        .byte $67   ; 
- D 1 - I - 0x016D51 05:AD41: 03        .byte $03   ; 
- D 1 - I - 0x016D52 05:AD42: 66        .byte $66   ; 
- D 1 - I - 0x016D53 05:AD43: 67        .byte $67   ; 
- D 1 - I - 0x016D54 05:AD44: 06        .byte $06   ; 
- D 1 - I - 0x016D55 05:AD45: 66        .byte $66   ; 
- D 1 - I - 0x016D56 05:AD46: 03        .byte $03   ; 
- D 1 - I - 0x016D57 05:AD47: 64        .byte $64   ; 
- D 1 - I - 0x016D58 05:AD48: 62        .byte $62   ; 
- D 1 - I - 0x016D59 05:AD49: 06        .byte $06   ; 
- D 1 - I - 0x016D5A 05:AD4A: 67        .byte $67   ; 
- D 1 - I - 0x016D5B 05:AD4B: 03        .byte $03   ; 
- D 1 - I - 0x016D5C 05:AD4C: 66        .byte $66   ; 
- D 1 - I - 0x016D5D 05:AD4D: 67        .byte $67   ; 
- D 1 - I - 0x016D5E 05:AD4E: 66        .byte $66   ; 
- D 1 - I - 0x016D5F 05:AD4F: 67        .byte $67   ; 
- D 1 - I - 0x016D60 05:AD50: 69        .byte $69   ; 
- D 1 - I - 0x016D61 05:AD51: 66        .byte $66   ; 
- D 1 - I - 0x016D62 05:AD52: 06        .byte $06   ; 
- D 1 - I - 0x016D63 05:AD53: 67        .byte $67   ; 
- D 1 - I - 0x016D64 05:AD54: 03        .byte $03   ; 
- D 1 - I - 0x016D65 05:AD55: 66        .byte $66   ; 
- D 1 - I - 0x016D66 05:AD56: 67        .byte $67   ; 
- D 1 - I - 0x016D67 05:AD57: 06        .byte $06   ; 
- D 1 - I - 0x016D68 05:AD58: 66        .byte $66   ; 
- D 1 - I - 0x016D69 05:AD59: 03        .byte $03   ; 
- D 1 - I - 0x016D6A 05:AD5A: 64        .byte $64   ; 
- D 1 - I - 0x016D6B 05:AD5B: 62        .byte $62   ; 
- D 1 - I - 0x016D6C 05:AD5C: 66        .byte $66   ; 
- D 1 - I - 0x016D6D 05:AD5D: 62        .byte $62   ; 
- D 1 - I - 0x016D6E 05:AD5E: 66        .byte $66   ; 
- D 1 - I - 0x016D6F 05:AD5F: 6B        .byte $6B   ; 
- D 1 - I - 0x016D70 05:AD60: 69        .byte $69   ; 
- D 1 - I - 0x016D71 05:AD61: 66        .byte $66   ; 
- D 1 - I - 0x016D72 05:AD62: 64        .byte $64   ; 
- D 1 - I - 0x016D73 05:AD63: 66        .byte $66   ; 
- D 1 - I - 0x016D74 05:AD64: 06        .byte $06   ; 
- D 1 - I - 0x016D75 05:AD65: 67        .byte $67   ; 
- D 1 - I - 0x016D76 05:AD66: 03        .byte $03   ; 
- D 1 - I - 0x016D77 05:AD67: 66        .byte $66   ; 
- D 1 - I - 0x016D78 05:AD68: 67        .byte $67   ; 
- D 1 - I - 0x016D79 05:AD69: 06        .byte $06   ; 
- D 1 - I - 0x016D7A 05:AD6A: 66        .byte $66   ; 
- D 1 - I - 0x016D7B 05:AD6B: 03        .byte $03   ; 
- D 1 - I - 0x016D7C 05:AD6C: 64        .byte $64   ; 
- D 1 - I - 0x016D7D 05:AD6D: 62        .byte $62   ; 
- D 1 - I - 0x016D7E 05:AD6E: 06        .byte $06   ; 
- D 1 - I - 0x016D7F 05:AD6F: 67        .byte $67   ; 
- D 1 - I - 0x016D80 05:AD70: 03        .byte $03   ; 
- D 1 - I - 0x016D81 05:AD71: 66        .byte $66   ; 
- D 1 - I - 0x016D82 05:AD72: 67        .byte $67   ; 
- D 1 - I - 0x016D83 05:AD73: 66        .byte $66   ; 
- D 1 - I - 0x016D84 05:AD74: 67        .byte $67   ; 
- D 1 - I - 0x016D85 05:AD75: 69        .byte $69   ; 
- D 1 - I - 0x016D86 05:AD76: 66        .byte $66   ; 
- D 1 - I - 0x016D87 05:AD77: 06        .byte $06   ; 
- D 1 - I - 0x016D88 05:AD78: 67        .byte $67   ; 
- D 1 - I - 0x016D89 05:AD79: 03        .byte $03   ; 
- D 1 - I - 0x016D8A 05:AD7A: 66        .byte $66   ; 
- D 1 - I - 0x016D8B 05:AD7B: 67        .byte $67   ; 
- D 1 - I - 0x016D8C 05:AD7C: 06        .byte $06   ; 
- D 1 - I - 0x016D8D 05:AD7D: 69        .byte $69   ; 
- D 1 - I - 0x016D8E 05:AD7E: 03        .byte $03   ; 
- D 1 - I - 0x016D8F 05:AD7F: 67        .byte $67   ; 
- D 1 - I - 0x016D90 05:AD80: 69        .byte $69   ; 
- D 1 - I - 0x016D91 05:AD81: 06        .byte $06   ; 
- D 1 - I - 0x016D92 05:AD82: 6B        .byte $6B   ; 
- D 1 - I - 0x016D93 05:AD83: 03        .byte $03   ; 
- D 1 - I - 0x016D94 05:AD84: 69        .byte $69   ; 
- D 1 - I - 0x016D95 05:AD85: 6B        .byte $6B   ; 
- D 1 - I - 0x016D96 05:AD86: 06        .byte $06   ; 
- D 1 - I - 0x016D97 05:AD87: 6C        .byte $6C   ; 
- D 1 - I - 0x016D98 05:AD88: 03        .byte $03   ; 
- D 1 - I - 0x016D99 05:AD89: 6B        .byte $6B   ; 
- D 1 - I - 0x016D9A 05:AD8A: 6C        .byte $6C   ; 
- D 1 - I - 0x016D9B 05:AD8B: 6E        .byte $6E   ; 
- D 1 - I - 0x016D9C 05:AD8C: 6C        .byte $6C   ; 
- D 1 - I - 0x016D9D 05:AD8D: 06        .byte $06   ; 
- D 1 - I - 0x016D9E 05:AD8E: 6E        .byte $6E   ; 
- D 1 - I - 0x016D9F 05:AD8F: 6C        .byte $6C   ; 
- D 1 - I - 0x016DA0 05:AD90: 03        .byte $03   ; 
- D 1 - I - 0x016DA1 05:AD91: 6B        .byte $6B   ; 
- D 1 - I - 0x016DA2 05:AD92: 69        .byte $69   ; 
- D 1 - I - 0x016DA3 05:AD93: 6C        .byte $6C   ; 
- D 1 - I - 0x016DA4 05:AD94: 6B        .byte $6B   ; 
- D 1 - I - 0x016DA5 05:AD95: 06        .byte $06   ; 
- D 1 - I - 0x016DA6 05:AD96: 6C        .byte $6C   ; 
- D 1 - I - 0x016DA7 05:AD97: 6B        .byte $6B   ; 
- D 1 - I - 0x016DA8 05:AD98: 03        .byte $03   ; 
- D 1 - I - 0x016DA9 05:AD99: 69        .byte $69   ; 
- D 1 - I - 0x016DAA 05:AD9A: 67        .byte $67   ; 
- D 1 - I - 0x016DAB 05:AD9B: 06        .byte $06   ; 
- D 1 - I - 0x016DAC 05:AD9C: 67        .byte $67   ; 
- D 1 - I - 0x016DAD 05:AD9D: 03        .byte $03   ; 
- D 1 - I - 0x016DAE 05:AD9E: 66        .byte $66   ; 
- D 1 - I - 0x016DAF 05:AD9F: 67        .byte $67   ; 
- D 1 - I - 0x016DB0 05:ADA0: 66        .byte $66   ; 
- D 1 - I - 0x016DB1 05:ADA1: 67        .byte $67   ; 
- D 1 - I - 0x016DB2 05:ADA2: 69        .byte $69   ; 
- D 1 - I - 0x016DB3 05:ADA3: 6B        .byte $6B   ; 
- D 1 - I - 0x016DB4 05:ADA4: 6E        .byte $6E   ; 
- D 1 - I - 0x016DB5 05:ADA5: 6E        .byte $6E   ; 
- D 1 - I - 0x016DB6 05:ADA6: 6C        .byte $6C   ; 
- D 1 - I - 0x016DB7 05:ADA7: 6C        .byte $6C   ; 
- D 1 - I - 0x016DB8 05:ADA8: 6B        .byte $6B   ; 
- D 1 - I - 0x016DB9 05:ADA9: 6B        .byte $6B   ; 
- D 1 - I - 0x016DBA 05:ADAA: 69        .byte $69   ; 
- D 1 - I - 0x016DBB 05:ADAB: 69        .byte $69   ; 
- D 1 - I - 0x016DBC 05:ADAC: 09        .byte $09   ; 
- D 1 - I - 0x016DBD 05:ADAD: 67        .byte $67   ; 
- D 1 - I - 0x016DBE 05:ADAE: 03        .byte $03   ; 
- D 1 - I - 0x016DBF 05:ADAF: A9        .byte $A9   ; 
- D 1 - I - 0x016DC0 05:ADB0: 80        .byte $80   ; 
- D 1 - I - 0x016DC1 05:ADB1: 06        .byte $06   ; 
- D 1 - I - 0x016DC2 05:ADB2: 69        .byte $69   ; 
- D 1 - I - 0x016DC3 05:ADB3: 6B        .byte $6B   ; 
- D 1 - I - 0x016DC4 05:ADB4: 09        .byte $09   ; 
- D 1 - I - 0x016DC5 05:ADB5: 6C        .byte $6C   ; 
- D 1 - I - 0x016DC6 05:ADB6: 03        .byte $03   ; 
- D 1 - I - 0x016DC7 05:ADB7: AB        .byte $AB   ; 
- D 1 - I - 0x016DC8 05:ADB8: 80        .byte $80   ; 
- D 1 - I - 0x016DC9 05:ADB9: 06        .byte $06   ; 
- D 1 - I - 0x016DCA 05:ADBA: 6B        .byte $6B   ; 
- D 1 - I - 0x016DCB 05:ADBB: 69        .byte $69   ; 
- D 1 - I - 0x016DCC 05:ADBC: 0C        .byte $0C   ; 
- D 1 - I - 0x016DCD 05:ADBD: 68        .byte $68   ; 
- D 1 - I - 0x016DCE 05:ADBE: 6B        .byte $6B   ; 
- D 1 - I - 0x016DCF 05:ADBF: 18        .byte $18   ; 
- D 1 - I - 0x016DD0 05:ADC0: 70        .byte $70   ; 
- D 1 - I - 0x016DD1 05:ADC1: D0        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x016DD2 05:ADC2: 3F AD     .word loc_D0_AD3F


; bzk garbage
- - - - - - 0x016DD4 05:ADC4: D3        .byte con_se_cb_stop   ; 



off_ch_10_ADC5_01:
- D 1 - I - 0x016DD5 05:ADC5: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x016DD6 05:ADC6: B6 8A     .word ofs_CD_8AB6
- D 1 - I - 0x016DD8 05:ADC8: DB        .byte con_se_cb_DB, $0A, $1E, $8C   ; 
- D 1 - I - 0x016DDC 05:ADCC: D8        .byte con_se_cb_D8, $00   ; 
- D 1 - I - 0x016DDE 05:ADCE: C4        .byte con_se_cb_C4, $25   ; 
- D 1 - I - 0x016DE0 05:ADD0: C7        .byte con_se_cb_C7, $C8   ; 
- D 1 - I - 0x016DE2 05:ADD2: 0C        .byte $0C   ; 
- D 1 - I - 0x016DE3 05:ADD3: C9        .byte con_se_cb_C9   ; 
loc_D0_ADD4:
- D 1 - I - 0x016DE4 05:ADD4: 06        .byte $06   ; 
- D 1 - I - 0x016DE5 05:ADD5: 64        .byte $64   ; 
- D 1 - I - 0x016DE6 05:ADD6: 03        .byte $03   ; 
- D 1 - I - 0x016DE7 05:ADD7: 62        .byte $62   ; 
- D 1 - I - 0x016DE8 05:ADD8: 64        .byte $64   ; 
- D 1 - I - 0x016DE9 05:ADD9: 06        .byte $06   ; 
- D 1 - I - 0x016DEA 05:ADDA: 62        .byte $62   ; 
- D 1 - I - 0x016DEB 05:ADDB: 03        .byte $03   ; 
- D 1 - I - 0x016DEC 05:ADDC: 60        .byte $60   ; 
- D 1 - I - 0x016DED 05:ADDD: 5F        .byte $5F   ; 
- D 1 - I - 0x016DEE 05:ADDE: 06        .byte $06   ; 
- D 1 - I - 0x016DEF 05:ADDF: 64        .byte $64   ; 
- D 1 - I - 0x016DF0 05:ADE0: 03        .byte $03   ; 
- D 1 - I - 0x016DF1 05:ADE1: 62        .byte $62   ; 
- D 1 - I - 0x016DF2 05:ADE2: 64        .byte $64   ; 
- D 1 - I - 0x016DF3 05:ADE3: 62        .byte $62   ; 
- D 1 - I - 0x016DF4 05:ADE4: 64        .byte $64   ; 
- D 1 - I - 0x016DF5 05:ADE5: 66        .byte $66   ; 
- D 1 - I - 0x016DF6 05:ADE6: 62        .byte $62   ; 
- D 1 - I - 0x016DF7 05:ADE7: 06        .byte $06   ; 
- D 1 - I - 0x016DF8 05:ADE8: 64        .byte $64   ; 
- D 1 - I - 0x016DF9 05:ADE9: 03        .byte $03   ; 
- D 1 - I - 0x016DFA 05:ADEA: 62        .byte $62   ; 
- D 1 - I - 0x016DFB 05:ADEB: 64        .byte $64   ; 
- D 1 - I - 0x016DFC 05:ADEC: 06        .byte $06   ; 
- D 1 - I - 0x016DFD 05:ADED: 62        .byte $62   ; 
- D 1 - I - 0x016DFE 05:ADEE: 03        .byte $03   ; 
- D 1 - I - 0x016DFF 05:ADEF: 60        .byte $60   ; 
- D 1 - I - 0x016E00 05:ADF0: 5F        .byte $5F   ; 
- D 1 - I - 0x016E01 05:ADF1: 62        .byte $62   ; 
- D 1 - I - 0x016E02 05:ADF2: 5F        .byte $5F   ; 
- D 1 - I - 0x016E03 05:ADF3: 62        .byte $62   ; 
- D 1 - I - 0x016E04 05:ADF4: 67        .byte $67   ; 
- D 1 - I - 0x016E05 05:ADF5: 66        .byte $66   ; 
- D 1 - I - 0x016E06 05:ADF6: 62        .byte $62   ; 
- D 1 - I - 0x016E07 05:ADF7: 60        .byte $60   ; 
- D 1 - I - 0x016E08 05:ADF8: 62        .byte $62   ; 
- D 1 - I - 0x016E09 05:ADF9: 06        .byte $06   ; 
- D 1 - I - 0x016E0A 05:ADFA: 64        .byte $64   ; 
- D 1 - I - 0x016E0B 05:ADFB: 03        .byte $03   ; 
- D 1 - I - 0x016E0C 05:ADFC: 62        .byte $62   ; 
- D 1 - I - 0x016E0D 05:ADFD: 64        .byte $64   ; 
- D 1 - I - 0x016E0E 05:ADFE: 06        .byte $06   ; 
- D 1 - I - 0x016E0F 05:ADFF: 62        .byte $62   ; 
- D 1 - I - 0x016E10 05:AE00: 03        .byte $03   ; 
- D 1 - I - 0x016E11 05:AE01: 60        .byte $60   ; 
- D 1 - I - 0x016E12 05:AE02: 5F        .byte $5F   ; 
- D 1 - I - 0x016E13 05:AE03: 06        .byte $06   ; 
- D 1 - I - 0x016E14 05:AE04: 64        .byte $64   ; 
- D 1 - I - 0x016E15 05:AE05: 03        .byte $03   ; 
- D 1 - I - 0x016E16 05:AE06: 62        .byte $62   ; 
- D 1 - I - 0x016E17 05:AE07: 64        .byte $64   ; 
- D 1 - I - 0x016E18 05:AE08: 62        .byte $62   ; 
- D 1 - I - 0x016E19 05:AE09: 64        .byte $64   ; 
- D 1 - I - 0x016E1A 05:AE0A: 66        .byte $66   ; 
- D 1 - I - 0x016E1B 05:AE0B: 62        .byte $62   ; 
- D 1 - I - 0x016E1C 05:AE0C: 06        .byte $06   ; 
- D 1 - I - 0x016E1D 05:AE0D: 64        .byte $64   ; 
- D 1 - I - 0x016E1E 05:AE0E: 03        .byte $03   ; 
- D 1 - I - 0x016E1F 05:AE0F: 62        .byte $62   ; 
- D 1 - I - 0x016E20 05:AE10: 64        .byte $64   ; 
- D 1 - I - 0x016E21 05:AE11: 06        .byte $06   ; 
- D 1 - I - 0x016E22 05:AE12: 66        .byte $66   ; 
- D 1 - I - 0x016E23 05:AE13: 03        .byte $03   ; 
- D 1 - I - 0x016E24 05:AE14: 64        .byte $64   ; 
- D 1 - I - 0x016E25 05:AE15: 66        .byte $66   ; 
- D 1 - I - 0x016E26 05:AE16: 06        .byte $06   ; 
- D 1 - I - 0x016E27 05:AE17: 67        .byte $67   ; 
- D 1 - I - 0x016E28 05:AE18: 03        .byte $03   ; 
- D 1 - I - 0x016E29 05:AE19: 66        .byte $66   ; 
- D 1 - I - 0x016E2A 05:AE1A: 67        .byte $67   ; 
- D 1 - I - 0x016E2B 05:AE1B: 06        .byte $06   ; 
- D 1 - I - 0x016E2C 05:AE1C: 69        .byte $69   ; 
- D 1 - I - 0x016E2D 05:AE1D: 03        .byte $03   ; 
- D 1 - I - 0x016E2E 05:AE1E: 67        .byte $67   ; 
- D 1 - I - 0x016E2F 05:AE1F: 69        .byte $69   ; 
- D 1 - I - 0x016E30 05:AE20: 6B        .byte $6B   ; 
- D 1 - I - 0x016E31 05:AE21: 69        .byte $69   ; 
- D 1 - I - 0x016E32 05:AE22: 06        .byte $06   ; 
- D 1 - I - 0x016E33 05:AE23: 6B        .byte $6B   ; 
- D 1 - I - 0x016E34 05:AE24: 69        .byte $69   ; 
- D 1 - I - 0x016E35 05:AE25: 03        .byte $03   ; 
- D 1 - I - 0x016E36 05:AE26: 67        .byte $67   ; 
- D 1 - I - 0x016E37 05:AE27: 66        .byte $66   ; 
- D 1 - I - 0x016E38 05:AE28: 69        .byte $69   ; 
- D 1 - I - 0x016E39 05:AE29: 67        .byte $67   ; 
- D 1 - I - 0x016E3A 05:AE2A: 06        .byte $06   ; 
- D 1 - I - 0x016E3B 05:AE2B: 69        .byte $69   ; 
- D 1 - I - 0x016E3C 05:AE2C: 67        .byte $67   ; 
- D 1 - I - 0x016E3D 05:AE2D: 03        .byte $03   ; 
- D 1 - I - 0x016E3E 05:AE2E: 66        .byte $66   ; 
- D 1 - I - 0x016E3F 05:AE2F: 64        .byte $64   ; 
- D 1 - I - 0x016E40 05:AE30: 06        .byte $06   ; 
- D 1 - I - 0x016E41 05:AE31: 67        .byte $67   ; 
- D 1 - I - 0x016E42 05:AE32: 03        .byte $03   ; 
- D 1 - I - 0x016E43 05:AE33: 66        .byte $66   ; 
- D 1 - I - 0x016E44 05:AE34: 67        .byte $67   ; 
- D 1 - I - 0x016E45 05:AE35: 66        .byte $66   ; 
- D 1 - I - 0x016E46 05:AE36: 67        .byte $67   ; 
- D 1 - I - 0x016E47 05:AE37: 69        .byte $69   ; 
- D 1 - I - 0x016E48 05:AE38: 6B        .byte $6B   ; 
- D 1 - I - 0x016E49 05:AE39: 6B        .byte $6B   ; 
- D 1 - I - 0x016E4A 05:AE3A: 6B        .byte $6B   ; 
- D 1 - I - 0x016E4B 05:AE3B: 69        .byte $69   ; 
- D 1 - I - 0x016E4C 05:AE3C: 69        .byte $69   ; 
- D 1 - I - 0x016E4D 05:AE3D: 67        .byte $67   ; 
- D 1 - I - 0x016E4E 05:AE3E: 67        .byte $67   ; 
- D 1 - I - 0x016E4F 05:AE3F: 66        .byte $66   ; 
- D 1 - I - 0x016E50 05:AE40: 66        .byte $66   ; 
- D 1 - I - 0x016E51 05:AE41: 09        .byte $09   ; 
- D 1 - I - 0x016E52 05:AE42: 64        .byte $64   ; 
- D 1 - I - 0x016E53 05:AE43: 03        .byte $03   ; 
- D 1 - I - 0x016E54 05:AE44: A6        .byte $A6   ; 
- D 1 - I - 0x016E55 05:AE45: 80        .byte $80   ; 
- D 1 - I - 0x016E56 05:AE46: 06        .byte $06   ; 
- D 1 - I - 0x016E57 05:AE47: 66        .byte $66   ; 
- D 1 - I - 0x016E58 05:AE48: 67        .byte $67   ; 
- D 1 - I - 0x016E59 05:AE49: 09        .byte $09   ; 
- D 1 - I - 0x016E5A 05:AE4A: 69        .byte $69   ; 
- D 1 - I - 0x016E5B 05:AE4B: 03        .byte $03   ; 
- D 1 - I - 0x016E5C 05:AE4C: A7        .byte $A7   ; 
- D 1 - I - 0x016E5D 05:AE4D: 80        .byte $80   ; 
- D 1 - I - 0x016E5E 05:AE4E: 06        .byte $06   ; 
- D 1 - I - 0x016E5F 05:AE4F: 67        .byte $67   ; 
- D 1 - I - 0x016E60 05:AE50: 66        .byte $66   ; 
- D 1 - I - 0x016E61 05:AE51: 0C        .byte $0C   ; 
- D 1 - I - 0x016E62 05:AE52: 64        .byte $64   ; 
- D 1 - I - 0x016E63 05:AE53: 68        .byte $68   ; 
- D 1 - I - 0x016E64 05:AE54: 18        .byte $18   ; 
- D 1 - I - 0x016E65 05:AE55: 6B        .byte $6B   ; 
- D 1 - I - 0x016E66 05:AE56: D0        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x016E67 05:AE57: D4 AD     .word loc_D0_ADD4


; bzk garbage
- - - - - - 0x016E69 05:AE59: D3        .byte con_se_cb_stop   ; 



off_ch_10_AE5A_02:
- D 1 - I - 0x016E6A 05:AE5A: D8        .byte con_se_cb_D8, $0C   ; 
- D 1 - I - 0x016E6C 05:AE5C: C7        .byte con_se_cb_C7, $C8   ; 
- D 1 - I - 0x016E6E 05:AE5E: 0C        .byte $0C   ; 
- D 1 - I - 0x016E6F 05:AE5F: C9        .byte con_se_cb_C9   ; 
loc_D0_AE60:
- D 1 - I - 0x016E70 05:AE60: 06        .byte $06   ; 
off_CE_AE61:
- D 1 - I - 0x016E71 05:AE61: 4C        .byte $4C   ; 
- D 1 - I - 0x016E72 05:AE62: 58        .byte $58   ; 
- D 1 - I - 0x016E73 05:AE63: 4F        .byte $4F   ; 
- D 1 - I - 0x016E74 05:AE64: 5B        .byte $5B   ; 
- D 1 - I - 0x016E75 05:AE65: 4E        .byte $4E   ; 
- D 1 - I - 0x016E76 05:AE66: 5A        .byte $5A   ; 
- D 1 - I - 0x016E77 05:AE67: 4A        .byte $4A   ; 
- D 1 - I - 0x016E78 05:AE68: 56        .byte $56   ; 
- D 1 - I - 0x016E79 05:AE69: CE        .byte con_se_cb_loop_1, $03   ; 
- D 1 - I - 0x016E7B 05:AE6B: 61 AE     .word off_CE_AE61
- D 1 - I - 0x016E7D 05:AE6D: 4F        .byte $4F   ; 
- D 1 - I - 0x016E7E 05:AE6E: 5B        .byte $5B   ; 
- D 1 - I - 0x016E7F 05:AE6F: 51        .byte $51   ; 
- D 1 - I - 0x016E80 05:AE70: 5D        .byte $5D   ; 
- D 1 - I - 0x016E81 05:AE71: 53        .byte $53   ; 
- D 1 - I - 0x016E82 05:AE72: 5F        .byte $5F   ; 
- D 1 - I - 0x016E83 05:AE73: 4F        .byte $4F   ; 
- D 1 - I - 0x016E84 05:AE74: 5B        .byte $5B   ; 
- D 1 - I - 0x016E85 05:AE75: 48        .byte $48   ; 
- D 1 - I - 0x016E86 05:AE76: 54        .byte $54   ; 
- D 1 - I - 0x016E87 05:AE77: 48        .byte $48   ; 
- D 1 - I - 0x016E88 05:AE78: 54        .byte $54   ; 
- D 1 - I - 0x016E89 05:AE79: 4A        .byte $4A   ; 
- D 1 - I - 0x016E8A 05:AE7A: 56        .byte $56   ; 
- D 1 - I - 0x016E8B 05:AE7B: 4A        .byte $4A   ; 
- D 1 - I - 0x016E8C 05:AE7C: 56        .byte $56   ; 
- D 1 - I - 0x016E8D 05:AE7D: 4F        .byte $4F   ; 
- D 1 - I - 0x016E8E 05:AE7E: 5B        .byte $5B   ; 
- D 1 - I - 0x016E8F 05:AE7F: 4F        .byte $4F   ; 
- D 1 - I - 0x016E90 05:AE80: 5B        .byte $5B   ; 
- D 1 - I - 0x016E91 05:AE81: 47        .byte $47   ; 
- D 1 - I - 0x016E92 05:AE82: 53        .byte $53   ; 
- D 1 - I - 0x016E93 05:AE83: 47        .byte $47   ; 
- D 1 - I - 0x016E94 05:AE84: 53        .byte $53   ; 
- D 1 - I - 0x016E95 05:AE85: 48        .byte $48   ; 
- D 1 - I - 0x016E96 05:AE86: 54        .byte $54   ; 
- D 1 - I - 0x016E97 05:AE87: 48        .byte $48   ; 
- D 1 - I - 0x016E98 05:AE88: 54        .byte $54   ; 
- D 1 - I - 0x016E99 05:AE89: 4A        .byte $4A   ; 
- D 1 - I - 0x016E9A 05:AE8A: 56        .byte $56   ; 
- D 1 - I - 0x016E9B 05:AE8B: 4A        .byte $4A   ; 
- D 1 - I - 0x016E9C 05:AE8C: 56        .byte $56   ; 
- D 1 - I - 0x016E9D 05:AE8D: 4C        .byte $4C   ; 
- D 1 - I - 0x016E9E 05:AE8E: 58        .byte $58   ; 
- D 1 - I - 0x016E9F 05:AE8F: 4C        .byte $4C   ; 
- D 1 - I - 0x016EA0 05:AE90: 58        .byte $58   ; 
- D 1 - I - 0x016EA1 05:AE91: 4C        .byte $4C   ; 
- D 1 - I - 0x016EA2 05:AE92: 58        .byte $58   ; 
- D 1 - I - 0x016EA3 05:AE93: 4C        .byte $4C   ; 
- D 1 - I - 0x016EA4 05:AE94: 58        .byte $58   ; 
- D 1 - I - 0x016EA5 05:AE95: D0        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x016EA6 05:AE96: 60 AE     .word loc_D0_AE60


; bzk garbage
- - - - - - 0x016EA8 05:AE98: D3        .byte con_se_cb_stop   ; 



off_ch_10_AE99_03:
- D 1 - I - 0x016EA9 05:AE99: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x016EAA 05:AE9A: F3 8B     .word ofs_CD_8BF3
- D 1 - I - 0x016EAC 05:AE9C: C4        .byte con_se_cb_C4, $23   ; 
- D 1 - I - 0x016EAE 05:AE9E: 03        .byte $03   ; 
- D 1 - I - 0x016EAF 05:AE9F: 42        .byte $42   ; 
- D 1 - I - 0x016EB0 05:AEA0: 42        .byte $42   ; 
- D 1 - I - 0x016EB1 05:AEA1: 06        .byte $06   ; 
- D 1 - I - 0x016EB2 05:AEA2: C9        .byte con_se_cb_C9   ; 
loc_D0_AEA3:
- D 1 - I - 0x016EB3 05:AEA3: 06        .byte $06   ; 
- D 1 - I - 0x016EB4 05:AEA4: 43        .byte $43   ; 
- D 1 - I - 0x016EB5 05:AEA5: 03        .byte $03   ; 
- D 1 - I - 0x016EB6 05:AEA6: 41        .byte $41   ; 
- D 1 - I - 0x016EB7 05:AEA7: 41        .byte $41   ; 
- D 1 - I - 0x016EB8 05:AEA8: 06        .byte $06   ; 
- D 1 - I - 0x016EB9 05:AEA9: 42        .byte $42   ; 
- D 1 - I - 0x016EBA 05:AEAA: 03        .byte $03   ; 
- D 1 - I - 0x016EBB 05:AEAB: 41        .byte $41   ; 
- D 1 - I - 0x016EBC 05:AEAC: 41        .byte $41   ; 
- D 1 - I - 0x016EBD 05:AEAD: 06        .byte $06   ; 
- D 1 - I - 0x016EBE 05:AEAE: 41        .byte $41   ; 
- D 1 - I - 0x016EBF 05:AEAF: 03        .byte $03   ; 
- D 1 - I - 0x016EC0 05:AEB0: 41        .byte $41   ; 
- D 1 - I - 0x016EC1 05:AEB1: 41        .byte $41   ; 
- D 1 - I - 0x016EC2 05:AEB2: 06        .byte $06   ; 
- D 1 - I - 0x016EC3 05:AEB3: 42        .byte $42   ; 
- D 1 - I - 0x016EC4 05:AEB4: 03        .byte $03   ; 
- D 1 - I - 0x016EC5 05:AEB5: 41        .byte $41   ; 
- D 1 - I - 0x016EC6 05:AEB6: 41        .byte $41   ; 
- D 1 - I - 0x016EC7 05:AEB7: 06        .byte $06   ; 
- D 1 - I - 0x016EC8 05:AEB8: 41        .byte $41   ; 
- D 1 - I - 0x016EC9 05:AEB9: 03        .byte $03   ; 
- D 1 - I - 0x016ECA 05:AEBA: 41        .byte $41   ; 
- D 1 - I - 0x016ECB 05:AEBB: 41        .byte $41   ; 
- D 1 - I - 0x016ECC 05:AEBC: 06        .byte $06   ; 
- D 1 - I - 0x016ECD 05:AEBD: 42        .byte $42   ; 
- D 1 - I - 0x016ECE 05:AEBE: 03        .byte $03   ; 
- D 1 - I - 0x016ECF 05:AEBF: 41        .byte $41   ; 
- D 1 - I - 0x016ED0 05:AEC0: 41        .byte $41   ; 
- D 1 - I - 0x016ED1 05:AEC1: 06        .byte $06   ; 
- D 1 - I - 0x016ED2 05:AEC2: 41        .byte $41   ; 
- D 1 - I - 0x016ED3 05:AEC3: 03        .byte $03   ; 
- D 1 - I - 0x016ED4 05:AEC4: 41        .byte $41   ; 
- D 1 - I - 0x016ED5 05:AEC5: 41        .byte $41   ; 
- D 1 - I - 0x016ED6 05:AEC6: 06        .byte $06   ; 
- D 1 - I - 0x016ED7 05:AEC7: 42        .byte $42   ; 
- D 1 - I - 0x016ED8 05:AEC8: 42        .byte $42   ; 
- D 1 - I - 0x016ED9 05:AEC9: D0        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x016EDA 05:AECA: A3 AE     .word loc_D0_AEA3


; bzk garbage
- - - - - - 0x016EDC 05:AECC: D3        .byte con_se_cb_stop   ; 



_off013_AECD_11_boss_final:
- D 1 - I - 0x016EDD 05:AECD: FF        .byte $FF   ; 
- D 1 - I - 0x016EDE 05:AECE: 00        .byte $00   ; 
- D 1 - I - 0x016EDF 05:AECF: DB AE     .word off_ch_11_AEDB_00
- D 1 - I - 0x016EE1 05:AED1: 01        .byte $01   ; 
- D 1 - I - 0x016EE2 05:AED2: 02 B0     .word off_ch_11_B002_01
- D 1 - I - 0x016EE4 05:AED4: 02        .byte $02   ; 
- D 1 - I - 0x016EE5 05:AED5: 2A B1     .word off_ch_11_B12A_02
- D 1 - I - 0x016EE7 05:AED7: 03        .byte $03   ; 
- D 1 - I - 0x016EE8 05:AED8: 1A B2     .word off_ch_11_B21A_03
- D 1 - I - 0x016EEA 05:AEDA: FF        .byte $FF   ; 



off_ch_11_AEDB_00:
- D 1 - I - 0x016EEB 05:AEDB: CC        .byte con_se_cb_CC, $96   ; 
- D 1 - I - 0x016EED 05:AEDD: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x016EEE 05:AEDE: B6 8A     .word ofs_CD_8AB6
- D 1 - I - 0x016EF0 05:AEE0: DB        .byte con_se_cb_DB, $14, $22, $8C   ; 
- D 1 - I - 0x016EF4 05:AEE4: D8        .byte con_se_cb_D8, $03   ; 
- D 1 - I - 0x016EF6 05:AEE6: C4        .byte con_se_cb_C4, $25   ; 
- D 1 - I - 0x016EF8 05:AEE8: C7        .byte con_se_cb_C7, $F0   ; 
loc_D0_AEEA:
- D 1 - I - 0x016EFA 05:AEEA: 06        .byte $06   ; 
- D 1 - I - 0x016EFB 05:AEEB: 62        .byte $62   ; 
- D 1 - I - 0x016EFC 05:AEEC: 18        .byte $18   ; 
- D 1 - I - 0x016EFD 05:AEED: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016EFE 05:AEEE: 06        .byte $06   ; 
- D 1 - I - 0x016EFF 05:AEEF: 60        .byte $60   ; 
- D 1 - I - 0x016F00 05:AEF0: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016F01 05:AEF1: 62        .byte $62   ; 
- D 1 - I - 0x016F02 05:AEF2: 18        .byte $18   ; 
- D 1 - I - 0x016F03 05:AEF3: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016F04 05:AEF4: 06        .byte $06   ; 
- D 1 - I - 0x016F05 05:AEF5: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016F06 05:AEF6: 60        .byte $60   ; 
- D 1 - I - 0x016F07 05:AEF7: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016F08 05:AEF8: A0        .byte $A0   ; 
- D 1 - I - 0x016F09 05:AEF9: 80        .byte $80   ; 
- D 1 - I - 0x016F0A 05:AEFA: 60        .byte $60   ; 
- D 1 - I - 0x016F0B 05:AEFB: 5E        .byte $5E   ; 
- D 1 - I - 0x016F0C 05:AEFC: 24        .byte $24   ; 
- D 1 - I - 0x016F0D 05:AEFD: 5E        .byte $5E   ; 
- D 1 - I - 0x016F0E 05:AEFE: 06        .byte $06   ; 
- D 1 - I - 0x016F0F 05:AEFF: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016F10 05:AF00: 5E        .byte $5E   ; 
- D 1 - I - 0x016F11 05:AF01: 5E        .byte $5E   ; 
- D 1 - I - 0x016F12 05:AF02: 5E        .byte $5E   ; 
- D 1 - I - 0x016F13 05:AF03: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016F14 05:AF04: 5E        .byte $5E   ; 
- D 1 - I - 0x016F15 05:AF05: 5E        .byte $5E   ; 
- D 1 - I - 0x016F16 05:AF06: 60        .byte $60   ; 
- D 1 - I - 0x016F17 05:AF07: 06        .byte $06   ; 
- D 1 - I - 0x016F18 05:AF08: 62        .byte $62   ; 
- D 1 - I - 0x016F19 05:AF09: 18        .byte $18   ; 
- D 1 - I - 0x016F1A 05:AF0A: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016F1B 05:AF0B: 06        .byte $06   ; 
- D 1 - I - 0x016F1C 05:AF0C: 60        .byte $60   ; 
- D 1 - I - 0x016F1D 05:AF0D: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016F1E 05:AF0E: 62        .byte $62   ; 
- D 1 - I - 0x016F1F 05:AF0F: 18        .byte $18   ; 
- D 1 - I - 0x016F20 05:AF10: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016F21 05:AF11: 06        .byte $06   ; 
- D 1 - I - 0x016F22 05:AF12: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016F23 05:AF13: 60        .byte $60   ; 
- D 1 - I - 0x016F24 05:AF14: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016F25 05:AF15: A0        .byte $A0   ; 
- D 1 - I - 0x016F26 05:AF16: 80        .byte $80   ; 
- D 1 - I - 0x016F27 05:AF17: 60        .byte $60   ; 
- D 1 - I - 0x016F28 05:AF18: 62        .byte $62   ; 
- D 1 - I - 0x016F29 05:AF19: 24        .byte $24   ; 
- D 1 - I - 0x016F2A 05:AF1A: 62        .byte $62   ; 
- D 1 - I - 0x016F2B 05:AF1B: 06        .byte $06   ; 
- D 1 - I - 0x016F2C 05:AF1C: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016F2D 05:AF1D: 62        .byte $62   ; 
- D 1 - I - 0x016F2E 05:AF1E: 62        .byte $62   ; 
- D 1 - I - 0x016F2F 05:AF1F: 62        .byte $62   ; 
- D 1 - I - 0x016F30 05:AF20: 62        .byte $62   ; 
- D 1 - I - 0x016F31 05:AF21: 65        .byte $65   ; 
- D 1 - I - 0x016F32 05:AF22: 6A        .byte $6A   ; 
- D 1 - I - 0x016F33 05:AF23: 69        .byte $69   ; 
- D 1 - I - 0x016F34 05:AF24: D1        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x016F35 05:AF25: C1 AF     .word sub_D1_AFC1
- D 1 - I - 0x016F37 05:AF27: 06        .byte $06   ; 
- D 1 - I - 0x016F38 05:AF28: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016F39 05:AF29: 62        .byte $62   ; 
- D 1 - I - 0x016F3A 05:AF2A: 65        .byte $65   ; 
- D 1 - I - 0x016F3B 05:AF2B: 66        .byte $66   ; 
- D 1 - I - 0x016F3C 05:AF2C: 67        .byte $67   ; 
- D 1 - I - 0x016F3D 05:AF2D: 65        .byte $65   ; 
- D 1 - I - 0x016F3E 05:AF2E: 0C        .byte $0C   ; 
- D 1 - I - 0x016F3F 05:AF2F: 6A        .byte $6A   ; 
- D 1 - I - 0x016F40 05:AF30: D1        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x016F41 05:AF31: C1 AF     .word sub_D1_AFC1
- D 1 - I - 0x016F43 05:AF33: 18        .byte $18   ; 
- D 1 - I - 0x016F44 05:AF34: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016F45 05:AF35: 06        .byte $06   ; 
- D 1 - I - 0x016F46 05:AF36: 6A        .byte $6A   ; 
- D 1 - I - 0x016F47 05:AF37: 12        .byte $12   ; 
- D 1 - I - 0x016F48 05:AF38: 69        .byte $69   ; 
- D 1 - I - 0x016F49 05:AF39: 06        .byte $06   ; 
- D 1 - I - 0x016F4A 05:AF3A: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016F4B 05:AF3B: 65        .byte $65   ; 
- D 1 - I - 0x016F4C 05:AF3C: 6E        .byte $6E   ; 
- D 1 - I - 0x016F4D 05:AF3D: 65        .byte $65   ; 
- D 1 - I - 0x016F4E 05:AF3E: 6C        .byte $6C   ; 
- D 1 - I - 0x016F4F 05:AF3F: 65        .byte $65   ; 
- D 1 - I - 0x016F50 05:AF40: 6A        .byte $6A   ; 
- D 1 - I - 0x016F51 05:AF41: 65        .byte $65   ; 
- D 1 - I - 0x016F52 05:AF42: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016F53 05:AF43: 65        .byte $65   ; 
- D 1 - I - 0x016F54 05:AF44: 6E        .byte $6E   ; 
- D 1 - I - 0x016F55 05:AF45: 65        .byte $65   ; 
- D 1 - I - 0x016F56 05:AF46: 6C        .byte $6C   ; 
- D 1 - I - 0x016F57 05:AF47: 65        .byte $65   ; 
- D 1 - I - 0x016F58 05:AF48: 69        .byte $69   ; 
- D 1 - I - 0x016F59 05:AF49: 65        .byte $65   ; 
- D 1 - I - 0x016F5A 05:AF4A: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016F5B 05:AF4B: 67        .byte $67   ; 
- D 1 - I - 0x016F5C 05:AF4C: 6E        .byte $6E   ; 
- D 1 - I - 0x016F5D 05:AF4D: 67        .byte $67   ; 
- D 1 - I - 0x016F5E 05:AF4E: 6C        .byte $6C   ; 
- D 1 - I - 0x016F5F 05:AF4F: 67        .byte $67   ; 
- D 1 - I - 0x016F60 05:AF50: 6A        .byte $6A   ; 
- D 1 - I - 0x016F61 05:AF51: 67        .byte $67   ; 
- D 1 - I - 0x016F62 05:AF52: 67        .byte $67   ; 
- D 1 - I - 0x016F63 05:AF53: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016F64 05:AF54: 12        .byte $12   ; 
- D 1 - I - 0x016F65 05:AF55: 69        .byte $69   ; 
- D 1 - I - 0x016F66 05:AF56: 06        .byte $06   ; 
- D 1 - I - 0x016F67 05:AF57: 65        .byte $65   ; 
- D 1 - I - 0x016F68 05:AF58: 67        .byte $67   ; 
- D 1 - I - 0x016F69 05:AF59: 69        .byte $69   ; 
- D 1 - I - 0x016F6A 05:AF5A: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016F6B 05:AF5B: 65        .byte $65   ; 
- D 1 - I - 0x016F6C 05:AF5C: 6E        .byte $6E   ; 
- D 1 - I - 0x016F6D 05:AF5D: 65        .byte $65   ; 
- D 1 - I - 0x016F6E 05:AF5E: 6C        .byte $6C   ; 
- D 1 - I - 0x016F6F 05:AF5F: 65        .byte $65   ; 
- D 1 - I - 0x016F70 05:AF60: 6A        .byte $6A   ; 
- D 1 - I - 0x016F71 05:AF61: 65        .byte $65   ; 
- D 1 - I - 0x016F72 05:AF62: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016F73 05:AF63: 65        .byte $65   ; 
- D 1 - I - 0x016F74 05:AF64: 6E        .byte $6E   ; 
- D 1 - I - 0x016F75 05:AF65: 65        .byte $65   ; 
- D 1 - I - 0x016F76 05:AF66: 6C        .byte $6C   ; 
- D 1 - I - 0x016F77 05:AF67: 65        .byte $65   ; 
- D 1 - I - 0x016F78 05:AF68: 69        .byte $69   ; 
- D 1 - I - 0x016F79 05:AF69: 65        .byte $65   ; 
- D 1 - I - 0x016F7A 05:AF6A: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016F7B 05:AF6B: 67        .byte $67   ; 
- D 1 - I - 0x016F7C 05:AF6C: 6E        .byte $6E   ; 
- D 1 - I - 0x016F7D 05:AF6D: 67        .byte $67   ; 
- D 1 - I - 0x016F7E 05:AF6E: 6C        .byte $6C   ; 
- D 1 - I - 0x016F7F 05:AF6F: 67        .byte $67   ; 
- D 1 - I - 0x016F80 05:AF70: 6A        .byte $6A   ; 
- D 1 - I - 0x016F81 05:AF71: 67        .byte $67   ; 
- D 1 - I - 0x016F82 05:AF72: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016F83 05:AF73: 65        .byte $65   ; 
- D 1 - I - 0x016F84 05:AF74: 6E        .byte $6E   ; 
- D 1 - I - 0x016F85 05:AF75: 65        .byte $65   ; 
- D 1 - I - 0x016F86 05:AF76: 6C        .byte $6C   ; 
- D 1 - I - 0x016F87 05:AF77: 65        .byte $65   ; 
- D 1 - I - 0x016F88 05:AF78: 69        .byte $69   ; 
- D 1 - I - 0x016F89 05:AF79: 65        .byte $65   ; 
- D 1 - I - 0x016F8A 05:AF7A: 12        .byte $12   ; 
- D 1 - I - 0x016F8B 05:AF7B: 67        .byte $67   ; 
- D 1 - I - 0x016F8C 05:AF7C: 06        .byte $06   ; 
- D 1 - I - 0x016F8D 05:AF7D: 6E        .byte $6E   ; 
- D 1 - I - 0x016F8E 05:AF7E: 6C        .byte $6C   ; 
- D 1 - I - 0x016F8F 05:AF7F: 6A        .byte $6A   ; 
- D 1 - I - 0x016F90 05:AF80: 69        .byte $69   ; 
- D 1 - I - 0x016F91 05:AF81: 67        .byte $67   ; 
- D 1 - I - 0x016F92 05:AF82: 12        .byte $12   ; 
- D 1 - I - 0x016F93 05:AF83: 65        .byte $65   ; 
- D 1 - I - 0x016F94 05:AF84: 06        .byte $06   ; 
- D 1 - I - 0x016F95 05:AF85: 6C        .byte $6C   ; 
- D 1 - I - 0x016F96 05:AF86: 6A        .byte $6A   ; 
- D 1 - I - 0x016F97 05:AF87: 6C        .byte $6C   ; 
- D 1 - I - 0x016F98 05:AF88: 6E        .byte $6E   ; 
- D 1 - I - 0x016F99 05:AF89: 6A        .byte $6A   ; 
- D 1 - I - 0x016F9A 05:AF8A: 0C        .byte $0C   ; 
- D 1 - I - 0x016F9B 05:AF8B: 67        .byte $67   ; 
- D 1 - I - 0x016F9C 05:AF8C: 6A        .byte $6A   ; 
- D 1 - I - 0x016F9D 05:AF8D: 06        .byte $06   ; 
- D 1 - I - 0x016F9E 05:AF8E: 69        .byte $69   ; 
- D 1 - I - 0x016F9F 05:AF8F: 6A        .byte $6A   ; 
- D 1 - I - 0x016FA0 05:AF90: 6C        .byte $6C   ; 
- D 1 - I - 0x016FA1 05:AF91: AC        .byte $AC   ; 
- D 1 - I - 0x016FA2 05:AF92: 80        .byte $80   ; 
- D 1 - I - 0x016FA3 05:AF93: 6C        .byte $6C   ; 
- D 1 - I - 0x016FA4 05:AF94: AE        .byte $AE   ; 
- D 1 - I - 0x016FA5 05:AF95: 80        .byte $80   ; 
- D 1 - I - 0x016FA6 05:AF96: 0C        .byte $0C   ; 
- D 1 - I - 0x016FA7 05:AF97: AE        .byte $AE   ; 
- D 1 - I - 0x016FA8 05:AF98: 80        .byte $80   ; 
- D 1 - I - 0x016FA9 05:AF99: 06        .byte $06   ; 
- D 1 - I - 0x016FAA 05:AF9A: 6E        .byte $6E   ; 
- D 1 - I - 0x016FAB 05:AF9B: 6E        .byte $6E   ; 
- D 1 - I - 0x016FAC 05:AF9C: 6C        .byte $6C   ; 
- D 1 - I - 0x016FAD 05:AF9D: 6A        .byte $6A   ; 
- D 1 - I - 0x016FAE 05:AF9E: 12        .byte $12   ; 
- D 1 - I - 0x016FAF 05:AF9F: 67        .byte $67   ; 
- D 1 - I - 0x016FB0 05:AFA0: 06        .byte $06   ; 
- D 1 - I - 0x016FB1 05:AFA1: 6E        .byte $6E   ; 
- D 1 - I - 0x016FB2 05:AFA2: 6C        .byte $6C   ; 
- D 1 - I - 0x016FB3 05:AFA3: 6A        .byte $6A   ; 
- D 1 - I - 0x016FB4 05:AFA4: 69        .byte $69   ; 
- D 1 - I - 0x016FB5 05:AFA5: 67        .byte $67   ; 
- D 1 - I - 0x016FB6 05:AFA6: 12        .byte $12   ; 
- D 1 - I - 0x016FB7 05:AFA7: 65        .byte $65   ; 
- D 1 - I - 0x016FB8 05:AFA8: 06        .byte $06   ; 
- D 1 - I - 0x016FB9 05:AFA9: 6C        .byte $6C   ; 
- D 1 - I - 0x016FBA 05:AFAA: 6A        .byte $6A   ; 
- D 1 - I - 0x016FBB 05:AFAB: 6C        .byte $6C   ; 
- D 1 - I - 0x016FBC 05:AFAC: 6E        .byte $6E   ; 
- D 1 - I - 0x016FBD 05:AFAD: 6A        .byte $6A   ; 
- D 1 - I - 0x016FBE 05:AFAE: 0C        .byte $0C   ; 
- D 1 - I - 0x016FBF 05:AFAF: 6F        .byte $6F   ; 
- D 1 - I - 0x016FC0 05:AFB0: 6E        .byte $6E   ; 
- D 1 - I - 0x016FC1 05:AFB1: 06        .byte $06   ; 
- D 1 - I - 0x016FC2 05:AFB2: 6A        .byte $6A   ; 
- D 1 - I - 0x016FC3 05:AFB3: 6C        .byte $6C   ; 
- D 1 - I - 0x016FC4 05:AFB4: 6E        .byte $6E   ; 
- D 1 - I - 0x016FC5 05:AFB5: AC        .byte $AC   ; 
- D 1 - I - 0x016FC6 05:AFB6: 80        .byte $80   ; 
- D 1 - I - 0x016FC7 05:AFB7: 12        .byte $12   ; 
- D 1 - I - 0x016FC8 05:AFB8: 6C        .byte $6C   ; 
- D 1 - I - 0x016FC9 05:AFB9: 06        .byte $06   ; 
- D 1 - I - 0x016FCA 05:AFBA: AE        .byte $AE   ; 
- D 1 - I - 0x016FCB 05:AFBB: 80        .byte $80   ; 
- D 1 - I - 0x016FCC 05:AFBC: 18        .byte $18   ; 
- D 1 - I - 0x016FCD 05:AFBD: 6E        .byte $6E   ; 
- D 1 - I - 0x016FCE 05:AFBE: D0        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x016FCF 05:AFBF: EA AE     .word loc_D0_AEEA



sub_D1_AFC1:
- D 1 - I - 0x016FD1 05:AFC1: 0C        .byte $0C   ; 
- D 1 - I - 0x016FD2 05:AFC2: 67        .byte $67   ; 
- D 1 - I - 0x016FD3 05:AFC3: 06        .byte $06   ; 
- D 1 - I - 0x016FD4 05:AFC4: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016FD5 05:AFC5: 67        .byte $67   ; 
- D 1 - I - 0x016FD6 05:AFC6: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x016FD7 05:AFC7: 62        .byte $62   ; 
- D 1 - I - 0x016FD8 05:AFC8: 67        .byte $67   ; 
- D 1 - I - 0x016FD9 05:AFC9: 69        .byte $69   ; 
- D 1 - I - 0x016FDA 05:AFCA: 0C        .byte $0C   ; 
- D 1 - I - 0x016FDB 05:AFCB: 6A        .byte $6A   ; 
- D 1 - I - 0x016FDC 05:AFCC: 06        .byte $06   ; 
- D 1 - I - 0x016FDD 05:AFCD: 69        .byte $69   ; 
- D 1 - I - 0x016FDE 05:AFCE: A7        .byte $A7   ; 
- D 1 - I - 0x016FDF 05:AFCF: 80        .byte $80   ; 
- D 1 - I - 0x016FE0 05:AFD0: 67        .byte $67   ; 
- D 1 - I - 0x016FE1 05:AFD1: A5        .byte $A5   ; 
- D 1 - I - 0x016FE2 05:AFD2: 80        .byte $80   ; 
- D 1 - I - 0x016FE3 05:AFD3: 65        .byte $65   ; 
- D 1 - I - 0x016FE4 05:AFD4: A5        .byte $A5   ; 
- D 1 - I - 0x016FE5 05:AFD5: 80        .byte $80   ; 
- D 1 - I - 0x016FE6 05:AFD6: 0C        .byte $0C   ; 
- D 1 - I - 0x016FE7 05:AFD7: 65        .byte $65   ; 
- D 1 - I - 0x016FE8 05:AFD8: 06        .byte $06   ; 
- D 1 - I - 0x016FE9 05:AFD9: 67        .byte $67   ; 
- D 1 - I - 0x016FEA 05:AFDA: A3        .byte $A3   ; 
- D 1 - I - 0x016FEB 05:AFDB: 80        .byte $80   ; 
- D 1 - I - 0x016FEC 05:AFDC: 0C        .byte $0C   ; 
- D 1 - I - 0x016FED 05:AFDD: 63        .byte $63   ; 
- D 1 - I - 0x016FEE 05:AFDE: 06        .byte $06   ; 
- D 1 - I - 0x016FEF 05:AFDF: 62        .byte $62   ; 
- D 1 - I - 0x016FF0 05:AFE0: A3        .byte $A3   ; 
- D 1 - I - 0x016FF1 05:AFE1: 80        .byte $80   ; 
- D 1 - I - 0x016FF2 05:AFE2: 18        .byte $18   ; 
- D 1 - I - 0x016FF3 05:AFE3: A3        .byte $A3   ; 
- D 1 - I - 0x016FF4 05:AFE4: 80        .byte $80   ; 
- D 1 - I - 0x016FF5 05:AFE5: 06        .byte $06   ; 
- D 1 - I - 0x016FF6 05:AFE6: 63        .byte $63   ; 
- D 1 - I - 0x016FF7 05:AFE7: 67        .byte $67   ; 
- D 1 - I - 0x016FF8 05:AFE8: 67        .byte $67   ; 
- D 1 - I - 0x016FF9 05:AFE9: 67        .byte $67   ; 
- D 1 - I - 0x016FFA 05:AFEA: 67        .byte $67   ; 
- D 1 - I - 0x016FFB 05:AFEB: A5        .byte $A5   ; 
- D 1 - I - 0x016FFC 05:AFEC: 80        .byte $80   ; 
- D 1 - I - 0x016FFD 05:AFED: 18        .byte $18   ; 
- D 1 - I - 0x016FFE 05:AFEE: A5        .byte $A5   ; 
- D 1 - I - 0x016FFF 05:AFEF: 80        .byte $80   ; 
- D 1 - I - 0x017000 05:AFF0: 06        .byte $06   ; 
- D 1 - I - 0x017001 05:AFF1: 65        .byte $65   ; 
- D 1 - I - 0x017002 05:AFF2: 65        .byte $65   ; 
- D 1 - I - 0x017003 05:AFF3: 66        .byte $66   ; 
- D 1 - I - 0x017004 05:AFF4: 62        .byte $62   ; 
- D 1 - I - 0x017005 05:AFF5: 66        .byte $66   ; 
- D 1 - I - 0x017006 05:AFF6: 67        .byte $67   ; 
- D 1 - I - 0x017007 05:AFF7: 69        .byte $69   ; 
- D 1 - I - 0x017008 05:AFF8: 6A        .byte $6A   ; 
- D 1 - I - 0x017009 05:AFF9: 6C        .byte $6C   ; 
- D 1 - I - 0x01700A 05:AFFA: 6A        .byte $6A   ; 
- D 1 - I - 0x01700B 05:AFFB: 69        .byte $69   ; 
- D 1 - I - 0x01700C 05:AFFC: A7        .byte $A7   ; 
- D 1 - I - 0x01700D 05:AFFD: 80        .byte $80   ; 
- D 1 - I - 0x01700E 05:AFFE: 24        .byte $24   ; 
- D 1 - I - 0x01700F 05:AFFF: 67        .byte $67   ; 
- D 1 - I - 0x017010 05:B000: D2        .byte con_se_cb_rts   ; 


; bzk garbage
- - - - - - 0x017011 05:B001: D3        .byte con_se_cb_stop   ; 



off_ch_11_B002_01:
- D 1 - I - 0x017012 05:B002: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x017013 05:B003: B6 8A     .word ofs_CD_8AB6
- D 1 - I - 0x017015 05:B005: DB        .byte con_se_cb_DB, $14, $22, $8C   ; 
- D 1 - I - 0x017019 05:B009: D8        .byte con_se_cb_D8, $03   ; 
- D 1 - I - 0x01701B 05:B00B: C4        .byte con_se_cb_C4, $25   ; 
- D 1 - I - 0x01701D 05:B00D: C7        .byte con_se_cb_C7, $F0   ; 
loc_D0_B00F:
- D 1 - I - 0x01701F 05:B00F: 06        .byte $06   ; 
- D 1 - I - 0x017020 05:B010: 5E        .byte $5E   ; 
- D 1 - I - 0x017021 05:B011: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x017022 05:B012: 0C        .byte $0C   ; 
- D 1 - I - 0x017023 05:B013: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x017024 05:B014: 06        .byte $06   ; 
- D 1 - I - 0x017025 05:B015: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x017026 05:B016: 5D        .byte $5D   ; 
- D 1 - I - 0x017027 05:B017: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x017028 05:B018: 5E        .byte $5E   ; 
- D 1 - I - 0x017029 05:B019: 18        .byte $18   ; 
- D 1 - I - 0x01702A 05:B01A: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x01702B 05:B01B: 06        .byte $06   ; 
- D 1 - I - 0x01702C 05:B01C: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x01702D 05:B01D: 5D        .byte $5D   ; 
- D 1 - I - 0x01702E 05:B01E: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x01702F 05:B01F: 9D        .byte $9D   ; 
- D 1 - I - 0x017030 05:B020: 80        .byte $80   ; 
- D 1 - I - 0x017031 05:B021: 5D        .byte $5D   ; 
- D 1 - I - 0x017032 05:B022: 5B        .byte $5B   ; 
- D 1 - I - 0x017033 05:B023: 24        .byte $24   ; 
- D 1 - I - 0x017034 05:B024: 5B        .byte $5B   ; 
- D 1 - I - 0x017035 05:B025: 06        .byte $06   ; 
- D 1 - I - 0x017036 05:B026: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x017037 05:B027: 5B        .byte $5B   ; 
- D 1 - I - 0x017038 05:B028: 5B        .byte $5B   ; 
- D 1 - I - 0x017039 05:B029: 5B        .byte $5B   ; 
- D 1 - I - 0x01703A 05:B02A: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x01703B 05:B02B: 5B        .byte $5B   ; 
- D 1 - I - 0x01703C 05:B02C: 5B        .byte $5B   ; 
- D 1 - I - 0x01703D 05:B02D: 5D        .byte $5D   ; 
- D 1 - I - 0x01703E 05:B02E: 5E        .byte $5E   ; 
- D 1 - I - 0x01703F 05:B02F: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x017040 05:B030: 0C        .byte $0C   ; 
- D 1 - I - 0x017041 05:B031: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x017042 05:B032: 06        .byte $06   ; 
- D 1 - I - 0x017043 05:B033: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x017044 05:B034: 5D        .byte $5D   ; 
- D 1 - I - 0x017045 05:B035: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x017046 05:B036: 5E        .byte $5E   ; 
- D 1 - I - 0x017047 05:B037: 18        .byte $18   ; 
- D 1 - I - 0x017048 05:B038: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x017049 05:B039: 06        .byte $06   ; 
- D 1 - I - 0x01704A 05:B03A: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x01704B 05:B03B: 5D        .byte $5D   ; 
- D 1 - I - 0x01704C 05:B03C: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x01704D 05:B03D: 9D        .byte $9D   ; 
- D 1 - I - 0x01704E 05:B03E: 80        .byte $80   ; 
- D 1 - I - 0x01704F 05:B03F: 5D        .byte $5D   ; 
- D 1 - I - 0x017050 05:B040: 5E        .byte $5E   ; 
- D 1 - I - 0x017051 05:B041: 24        .byte $24   ; 
- D 1 - I - 0x017052 05:B042: 5E        .byte $5E   ; 
- D 1 - I - 0x017053 05:B043: 06        .byte $06   ; 
- D 1 - I - 0x017054 05:B044: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x017055 05:B045: 5E        .byte $5E   ; 
- D 1 - I - 0x017056 05:B046: 5E        .byte $5E   ; 
- D 1 - I - 0x017057 05:B047: 5E        .byte $5E   ; 
- D 1 - I - 0x017058 05:B048: 5E        .byte $5E   ; 
- D 1 - I - 0x017059 05:B049: 60        .byte $60   ; 
- D 1 - I - 0x01705A 05:B04A: 67        .byte $67   ; 
- D 1 - I - 0x01705B 05:B04B: 65        .byte $65   ; 
- D 1 - I - 0x01705C 05:B04C: D1        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x01705D 05:B04D: E9 B0     .word sub_D1_B0E9
- D 1 - I - 0x01705F 05:B04F: 06        .byte $06   ; 
- D 1 - I - 0x017060 05:B050: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x017061 05:B051: 56        .byte $56   ; 
- D 1 - I - 0x017062 05:B052: 59        .byte $59   ; 
- D 1 - I - 0x017063 05:B053: 5A        .byte $5A   ; 
- D 1 - I - 0x017064 05:B054: 5B        .byte $5B   ; 
- D 1 - I - 0x017065 05:B055: 59        .byte $59   ; 
- D 1 - I - 0x017066 05:B056: 0C        .byte $0C   ; 
- D 1 - I - 0x017067 05:B057: 5E        .byte $5E   ; 
- D 1 - I - 0x017068 05:B058: D1        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x017069 05:B059: E9 B0     .word sub_D1_B0E9
- D 1 - I - 0x01706B 05:B05B: 18        .byte $18   ; 
- D 1 - I - 0x01706C 05:B05C: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x01706D 05:B05D: 06        .byte $06   ; 
- D 1 - I - 0x01706E 05:B05E: 67        .byte $67   ; 
- D 1 - I - 0x01706F 05:B05F: 12        .byte $12   ; 
- D 1 - I - 0x017070 05:B060: 65        .byte $65   ; 
- D 1 - I - 0x017071 05:B061: 06        .byte $06   ; 
- D 1 - I - 0x017072 05:B062: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x017073 05:B063: 5E        .byte $5E   ; 
- D 1 - I - 0x017074 05:B064: 65        .byte $65   ; 
- D 1 - I - 0x017075 05:B065: 5E        .byte $5E   ; 
- D 1 - I - 0x017076 05:B066: 63        .byte $63   ; 
- D 1 - I - 0x017077 05:B067: 5E        .byte $5E   ; 
- D 1 - I - 0x017078 05:B068: 62        .byte $62   ; 
- D 1 - I - 0x017079 05:B069: 5E        .byte $5E   ; 
- D 1 - I - 0x01707A 05:B06A: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x01707B 05:B06B: 5E        .byte $5E   ; 
- D 1 - I - 0x01707C 05:B06C: 65        .byte $65   ; 
- D 1 - I - 0x01707D 05:B06D: 5E        .byte $5E   ; 
- D 1 - I - 0x01707E 05:B06E: 63        .byte $63   ; 
- D 1 - I - 0x01707F 05:B06F: 5E        .byte $5E   ; 
- D 1 - I - 0x017080 05:B070: 60        .byte $60   ; 
- D 1 - I - 0x017081 05:B071: 5E        .byte $5E   ; 
- D 1 - I - 0x017082 05:B072: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x017083 05:B073: 5E        .byte $5E   ; 
- D 1 - I - 0x017084 05:B074: 65        .byte $65   ; 
- D 1 - I - 0x017085 05:B075: 62        .byte $62   ; 
- D 1 - I - 0x017086 05:B076: 63        .byte $63   ; 
- D 1 - I - 0x017087 05:B077: 62        .byte $62   ; 
- D 1 - I - 0x017088 05:B078: 62        .byte $62   ; 
- D 1 - I - 0x017089 05:B079: 62        .byte $62   ; 
- D 1 - I - 0x01708A 05:B07A: 63        .byte $63   ; 
- D 1 - I - 0x01708B 05:B07B: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x01708C 05:B07C: 12        .byte $12   ; 
- D 1 - I - 0x01708D 05:B07D: 65        .byte $65   ; 
- D 1 - I - 0x01708E 05:B07E: 06        .byte $06   ; 
- D 1 - I - 0x01708F 05:B07F: 62        .byte $62   ; 
- D 1 - I - 0x017090 05:B080: 63        .byte $63   ; 
- D 1 - I - 0x017091 05:B081: 65        .byte $65   ; 
- D 1 - I - 0x017092 05:B082: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x017093 05:B083: 5E        .byte $5E   ; 
- D 1 - I - 0x017094 05:B084: 65        .byte $65   ; 
- D 1 - I - 0x017095 05:B085: 5E        .byte $5E   ; 
- D 1 - I - 0x017096 05:B086: 63        .byte $63   ; 
- D 1 - I - 0x017097 05:B087: 5E        .byte $5E   ; 
- D 1 - I - 0x017098 05:B088: 62        .byte $62   ; 
- D 1 - I - 0x017099 05:B089: 5E        .byte $5E   ; 
- D 1 - I - 0x01709A 05:B08A: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x01709B 05:B08B: 5E        .byte $5E   ; 
- D 1 - I - 0x01709C 05:B08C: 65        .byte $65   ; 
- D 1 - I - 0x01709D 05:B08D: 5E        .byte $5E   ; 
- D 1 - I - 0x01709E 05:B08E: 63        .byte $63   ; 
- D 1 - I - 0x01709F 05:B08F: 5E        .byte $5E   ; 
- D 1 - I - 0x0170A0 05:B090: 60        .byte $60   ; 
- D 1 - I - 0x0170A1 05:B091: 5E        .byte $5E   ; 
- D 1 - I - 0x0170A2 05:B092: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0170A3 05:B093: 5E        .byte $5E   ; 
- D 1 - I - 0x0170A4 05:B094: 65        .byte $65   ; 
- D 1 - I - 0x0170A5 05:B095: 62        .byte $62   ; 
- D 1 - I - 0x0170A6 05:B096: 63        .byte $63   ; 
- D 1 - I - 0x0170A7 05:B097: 62        .byte $62   ; 
- D 1 - I - 0x0170A8 05:B098: 62        .byte $62   ; 
- D 1 - I - 0x0170A9 05:B099: 62        .byte $62   ; 
- D 1 - I - 0x0170AA 05:B09A: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0170AB 05:B09B: 60        .byte $60   ; 
- D 1 - I - 0x0170AC 05:B09C: 69        .byte $69   ; 
- D 1 - I - 0x0170AD 05:B09D: 60        .byte $60   ; 
- D 1 - I - 0x0170AE 05:B09E: 67        .byte $67   ; 
- D 1 - I - 0x0170AF 05:B09F: 60        .byte $60   ; 
- D 1 - I - 0x0170B0 05:B0A0: 65        .byte $65   ; 
- D 1 - I - 0x0170B1 05:B0A1: 60        .byte $60   ; 
- D 1 - I - 0x0170B2 05:B0A2: 12        .byte $12   ; 
- D 1 - I - 0x0170B3 05:B0A3: 63        .byte $63   ; 
- D 1 - I - 0x0170B4 05:B0A4: 06        .byte $06   ; 
- D 1 - I - 0x0170B5 05:B0A5: 6A        .byte $6A   ; 
- D 1 - I - 0x0170B6 05:B0A6: 69        .byte $69   ; 
- D 1 - I - 0x0170B7 05:B0A7: 67        .byte $67   ; 
- D 1 - I - 0x0170B8 05:B0A8: 65        .byte $65   ; 
- D 1 - I - 0x0170B9 05:B0A9: 63        .byte $63   ; 
- D 1 - I - 0x0170BA 05:B0AA: 12        .byte $12   ; 
- D 1 - I - 0x0170BB 05:B0AB: 62        .byte $62   ; 
- D 1 - I - 0x0170BC 05:B0AC: 06        .byte $06   ; 
- D 1 - I - 0x0170BD 05:B0AD: 69        .byte $69   ; 
- D 1 - I - 0x0170BE 05:B0AE: 67        .byte $67   ; 
- D 1 - I - 0x0170BF 05:B0AF: 69        .byte $69   ; 
- D 1 - I - 0x0170C0 05:B0B0: 6A        .byte $6A   ; 
- D 1 - I - 0x0170C1 05:B0B1: 67        .byte $67   ; 
- D 1 - I - 0x0170C2 05:B0B2: 0C        .byte $0C   ; 
- D 1 - I - 0x0170C3 05:B0B3: 63        .byte $63   ; 
- D 1 - I - 0x0170C4 05:B0B4: 67        .byte $67   ; 
- D 1 - I - 0x0170C5 05:B0B5: 06        .byte $06   ; 
- D 1 - I - 0x0170C6 05:B0B6: 65        .byte $65   ; 
- D 1 - I - 0x0170C7 05:B0B7: 67        .byte $67   ; 
- D 1 - I - 0x0170C8 05:B0B8: 69        .byte $69   ; 
- D 1 - I - 0x0170C9 05:B0B9: A9        .byte $A9   ; 
- D 1 - I - 0x0170CA 05:B0BA: 80        .byte $80   ; 
- D 1 - I - 0x0170CB 05:B0BB: 69        .byte $69   ; 
- D 1 - I - 0x0170CC 05:B0BC: AA        .byte $AA   ; 
- D 1 - I - 0x0170CD 05:B0BD: 80        .byte $80   ; 
- D 1 - I - 0x0170CE 05:B0BE: 0C        .byte $0C   ; 
- D 1 - I - 0x0170CF 05:B0BF: AA        .byte $AA   ; 
- D 1 - I - 0x0170D0 05:B0C0: 80        .byte $80   ; 
- D 1 - I - 0x0170D1 05:B0C1: 06        .byte $06   ; 
- D 1 - I - 0x0170D2 05:B0C2: 6A        .byte $6A   ; 
- D 1 - I - 0x0170D3 05:B0C3: 6A        .byte $6A   ; 
- D 1 - I - 0x0170D4 05:B0C4: 69        .byte $69   ; 
- D 1 - I - 0x0170D5 05:B0C5: 67        .byte $67   ; 
- D 1 - I - 0x0170D6 05:B0C6: 12        .byte $12   ; 
- D 1 - I - 0x0170D7 05:B0C7: 63        .byte $63   ; 
- D 1 - I - 0x0170D8 05:B0C8: 06        .byte $06   ; 
- D 1 - I - 0x0170D9 05:B0C9: 6A        .byte $6A   ; 
- D 1 - I - 0x0170DA 05:B0CA: 69        .byte $69   ; 
- D 1 - I - 0x0170DB 05:B0CB: 67        .byte $67   ; 
- D 1 - I - 0x0170DC 05:B0CC: 65        .byte $65   ; 
- D 1 - I - 0x0170DD 05:B0CD: 63        .byte $63   ; 
- D 1 - I - 0x0170DE 05:B0CE: 12        .byte $12   ; 
- D 1 - I - 0x0170DF 05:B0CF: 62        .byte $62   ; 
- D 1 - I - 0x0170E0 05:B0D0: 06        .byte $06   ; 
- D 1 - I - 0x0170E1 05:B0D1: 69        .byte $69   ; 
- D 1 - I - 0x0170E2 05:B0D2: 67        .byte $67   ; 
- D 1 - I - 0x0170E3 05:B0D3: 69        .byte $69   ; 
- D 1 - I - 0x0170E4 05:B0D4: 6A        .byte $6A   ; 
- D 1 - I - 0x0170E5 05:B0D5: 67        .byte $67   ; 
- D 1 - I - 0x0170E6 05:B0D6: 0C        .byte $0C   ; 
- D 1 - I - 0x0170E7 05:B0D7: 6C        .byte $6C   ; 
- D 1 - I - 0x0170E8 05:B0D8: 6A        .byte $6A   ; 
- D 1 - I - 0x0170E9 05:B0D9: 06        .byte $06   ; 
- D 1 - I - 0x0170EA 05:B0DA: 67        .byte $67   ; 
- D 1 - I - 0x0170EB 05:B0DB: 69        .byte $69   ; 
- D 1 - I - 0x0170EC 05:B0DC: 6A        .byte $6A   ; 
- D 1 - I - 0x0170ED 05:B0DD: A9        .byte $A9   ; 
- D 1 - I - 0x0170EE 05:B0DE: 80        .byte $80   ; 
- D 1 - I - 0x0170EF 05:B0DF: 12        .byte $12   ; 
- D 1 - I - 0x0170F0 05:B0E0: 69        .byte $69   ; 
- D 1 - I - 0x0170F1 05:B0E1: 06        .byte $06   ; 
- D 1 - I - 0x0170F2 05:B0E2: A9        .byte $A9   ; 
- D 1 - I - 0x0170F3 05:B0E3: 80        .byte $80   ; 
- D 1 - I - 0x0170F4 05:B0E4: 18        .byte $18   ; 
- D 1 - I - 0x0170F5 05:B0E5: 69        .byte $69   ; 
- D 1 - I - 0x0170F6 05:B0E6: D0        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x0170F7 05:B0E7: 0F B0     .word loc_D0_B00F



sub_D1_B0E9:
- D 1 - I - 0x0170F9 05:B0E9: 0C        .byte $0C   ; 
- D 1 - I - 0x0170FA 05:B0EA: 62        .byte $62   ; 
- D 1 - I - 0x0170FB 05:B0EB: 06        .byte $06   ; 
- D 1 - I - 0x0170FC 05:B0EC: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0170FD 05:B0ED: 62        .byte $62   ; 
- D 1 - I - 0x0170FE 05:B0EE: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0170FF 05:B0EF: 62        .byte $62   ; 
- D 1 - I - 0x017100 05:B0F0: 62        .byte $62   ; 
- D 1 - I - 0x017101 05:B0F1: 60        .byte $60   ; 
- D 1 - I - 0x017102 05:B0F2: 0C        .byte $0C   ; 
- D 1 - I - 0x017103 05:B0F3: 5E        .byte $5E   ; 
- D 1 - I - 0x017104 05:B0F4: 06        .byte $06   ; 
- D 1 - I - 0x017105 05:B0F5: 5E        .byte $5E   ; 
- D 1 - I - 0x017106 05:B0F6: 9E        .byte $9E   ; 
- D 1 - I - 0x017107 05:B0F7: 80        .byte $80   ; 
- D 1 - I - 0x017108 05:B0F8: 5E        .byte $5E   ; 
- D 1 - I - 0x017109 05:B0F9: A2        .byte $A2   ; 
- D 1 - I - 0x01710A 05:B0FA: 80        .byte $80   ; 
- D 1 - I - 0x01710B 05:B0FB: 62        .byte $62   ; 
- D 1 - I - 0x01710C 05:B0FC: A2        .byte $A2   ; 
- D 1 - I - 0x01710D 05:B0FD: 80        .byte $80   ; 
- D 1 - I - 0x01710E 05:B0FE: 0C        .byte $0C   ; 
- D 1 - I - 0x01710F 05:B0FF: 62        .byte $62   ; 
- D 1 - I - 0x017110 05:B100: 06        .byte $06   ; 
- D 1 - I - 0x017111 05:B101: 60        .byte $60   ; 
- D 1 - I - 0x017112 05:B102: 9E        .byte $9E   ; 
- D 1 - I - 0x017113 05:B103: 80        .byte $80   ; 
- D 1 - I - 0x017114 05:B104: 0C        .byte $0C   ; 
- D 1 - I - 0x017115 05:B105: 5E        .byte $5E   ; 
- D 1 - I - 0x017116 05:B106: 06        .byte $06   ; 
- D 1 - I - 0x017117 05:B107: 5E        .byte $5E   ; 
- D 1 - I - 0x017118 05:B108: 9B        .byte $9B   ; 
- D 1 - I - 0x017119 05:B109: 80        .byte $80   ; 
- D 1 - I - 0x01711A 05:B10A: 18        .byte $18   ; 
- D 1 - I - 0x01711B 05:B10B: 9B        .byte $9B   ; 
- D 1 - I - 0x01711C 05:B10C: 80        .byte $80   ; 
- D 1 - I - 0x01711D 05:B10D: 06        .byte $06   ; 
- D 1 - I - 0x01711E 05:B10E: 5B        .byte $5B   ; 
- D 1 - I - 0x01711F 05:B10F: 5B        .byte $5B   ; 
- D 1 - I - 0x017120 05:B110: 5B        .byte $5B   ; 
- D 1 - I - 0x017121 05:B111: 5B        .byte $5B   ; 
- D 1 - I - 0x017122 05:B112: 5B        .byte $5B   ; 
- D 1 - I - 0x017123 05:B113: 9E        .byte $9E   ; 
- D 1 - I - 0x017124 05:B114: 80        .byte $80   ; 
- D 1 - I - 0x017125 05:B115: 18        .byte $18   ; 
- D 1 - I - 0x017126 05:B116: 9E        .byte $9E   ; 
- D 1 - I - 0x017127 05:B117: 80        .byte $80   ; 
- D 1 - I - 0x017128 05:B118: 06        .byte $06   ; 
- D 1 - I - 0x017129 05:B119: 5E        .byte $5E   ; 
- D 1 - I - 0x01712A 05:B11A: 5E        .byte $5E   ; 
- D 1 - I - 0x01712B 05:B11B: 62        .byte $62   ; 
- D 1 - I - 0x01712C 05:B11C: 5E        .byte $5E   ; 
- D 1 - I - 0x01712D 05:B11D: 5D        .byte $5D   ; 
- D 1 - I - 0x01712E 05:B11E: 5E        .byte $5E   ; 
- D 1 - I - 0x01712F 05:B11F: 60        .byte $60   ; 
- D 1 - I - 0x017130 05:B120: 62        .byte $62   ; 
- D 1 - I - 0x017131 05:B121: 63        .byte $63   ; 
- D 1 - I - 0x017132 05:B122: 62        .byte $62   ; 
- D 1 - I - 0x017133 05:B123: 60        .byte $60   ; 
- D 1 - I - 0x017134 05:B124: A2        .byte $A2   ; 
- D 1 - I - 0x017135 05:B125: 80        .byte $80   ; 
- D 1 - I - 0x017136 05:B126: 24        .byte $24   ; 
- D 1 - I - 0x017137 05:B127: 62        .byte $62   ; 
- D 1 - I - 0x017138 05:B128: D2        .byte con_se_cb_rts   ; 


; bzk garbage
- - - - - - 0x017139 05:B129: D3        .byte con_se_cb_stop   ; 



off_ch_11_B12A_02:
- D 1 - I - 0x01713A 05:B12A: D8        .byte con_se_cb_D8, $0F   ; 
- D 1 - I - 0x01713C 05:B12C: C7        .byte con_se_cb_C7, $F0   ; 
loc_D0_B12E:
- D 1 - I - 0x01713E 05:B12E: 06        .byte $06   ; 
- D 1 - I - 0x01713F 05:B12F: 4F        .byte $4F   ; 
- D 1 - I - 0x017140 05:B130: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x017141 05:B131: 0C        .byte $0C   ; 
- D 1 - I - 0x017142 05:B132: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x017143 05:B133: 06        .byte $06   ; 
- D 1 - I - 0x017144 05:B134: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x017145 05:B135: 4D        .byte $4D   ; 
- D 1 - I - 0x017146 05:B136: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x017147 05:B137: 4F        .byte $4F   ; 
- D 1 - I - 0x017148 05:B138: 18        .byte $18   ; 
- D 1 - I - 0x017149 05:B139: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x01714A 05:B13A: 06        .byte $06   ; 
- D 1 - I - 0x01714B 05:B13B: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x01714C 05:B13C: 4D        .byte $4D   ; 
- D 1 - I - 0x01714D 05:B13D: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x01714E 05:B13E: 8D        .byte $8D   ; 
- D 1 - I - 0x01714F 05:B13F: 80        .byte $80   ; 
- D 1 - I - 0x017150 05:B140: 4D        .byte $4D   ; 
- D 1 - I - 0x017151 05:B141: 4B        .byte $4B   ; 
- D 1 - I - 0x017152 05:B142: 24        .byte $24   ; 
- D 1 - I - 0x017153 05:B143: 4B        .byte $4B   ; 
- D 1 - I - 0x017154 05:B144: 06        .byte $06   ; 
- D 1 - I - 0x017155 05:B145: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x017156 05:B146: 4B        .byte $4B   ; 
- D 1 - I - 0x017157 05:B147: 4B        .byte $4B   ; 
- D 1 - I - 0x017158 05:B148: 4B        .byte $4B   ; 
- D 1 - I - 0x017159 05:B149: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x01715A 05:B14A: 4B        .byte $4B   ; 
- D 1 - I - 0x01715B 05:B14B: 4D        .byte $4D   ; 
- D 1 - I - 0x01715C 05:B14C: 4D        .byte $4D   ; 
- D 1 - I - 0x01715D 05:B14D: 4F        .byte $4F   ; 
- D 1 - I - 0x01715E 05:B14E: 4F        .byte $4F   ; 
- D 1 - I - 0x01715F 05:B14F: 4F        .byte $4F   ; 
- D 1 - I - 0x017160 05:B150: 4F        .byte $4F   ; 
- D 1 - I - 0x017161 05:B151: 4F        .byte $4F   ; 
- D 1 - I - 0x017162 05:B152: 4D        .byte $4D   ; 
- D 1 - I - 0x017163 05:B153: 4D        .byte $4D   ; 
- D 1 - I - 0x017164 05:B154: 4F        .byte $4F   ; 
- D 1 - I - 0x017165 05:B155: 4F        .byte $4F   ; 
- D 1 - I - 0x017166 05:B156: 4F        .byte $4F   ; 
- D 1 - I - 0x017167 05:B157: 4F        .byte $4F   ; 
- D 1 - I - 0x017168 05:B158: 4F        .byte $4F   ; 
- D 1 - I - 0x017169 05:B159: 4F        .byte $4F   ; 
- D 1 - I - 0x01716A 05:B15A: 4D        .byte $4D   ; 
- D 1 - I - 0x01716B 05:B15B: 4D        .byte $4D   ; 
- D 1 - I - 0x01716C 05:B15C: 8B        .byte $8B   ; 
- D 1 - I - 0x01716D 05:B15D: 80        .byte $80   ; 
- D 1 - I - 0x01716E 05:B15E: 4B        .byte $4B   ; 
- D 1 - I - 0x01716F 05:B15F: 4B        .byte $4B   ; 
- D 1 - I - 0x017170 05:B160: 4B        .byte $4B   ; 
- D 1 - I - 0x017171 05:B161: 4B        .byte $4B   ; 
- D 1 - I - 0x017172 05:B162: 4B        .byte $4B   ; 
- D 1 - I - 0x017173 05:B163: 4B        .byte $4B   ; 
- D 1 - I - 0x017174 05:B164: 4B        .byte $4B   ; 
- D 1 - I - 0x017175 05:B165: 4B        .byte $4B   ; 
- D 1 - I - 0x017176 05:B166: 4B        .byte $4B   ; 
- D 1 - I - 0x017177 05:B167: 4B        .byte $4B   ; 
- D 1 - I - 0x017178 05:B168: 4B        .byte $4B   ; 
- D 1 - I - 0x017179 05:B169: 4B        .byte $4B   ; 
- D 1 - I - 0x01717A 05:B16A: 4B        .byte $4B   ; 
- D 1 - I - 0x01717B 05:B16B: 4D        .byte $4D   ; 
- D 1 - I - 0x01717C 05:B16C: 52        .byte $52   ; 
- D 1 - I - 0x01717D 05:B16D: 51        .byte $51   ; 
- D 1 - I - 0x01717E 05:B16E: D1        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x01717F 05:B16F: F8 B1     .word sub_D1_B1F8
- D 1 - I - 0x017181 05:B171: 06        .byte $06   ; 
- D 1 - I - 0x017182 05:B172: 4F        .byte $4F   ; 
- D 1 - I - 0x017183 05:B173: 4A        .byte $4A   ; 
- D 1 - I - 0x017184 05:B174: 4D        .byte $4D   ; 
- D 1 - I - 0x017185 05:B175: 4E        .byte $4E   ; 
- D 1 - I - 0x017186 05:B176: 4F        .byte $4F   ; 
- D 1 - I - 0x017187 05:B177: 4D        .byte $4D   ; 
- D 1 - I - 0x017188 05:B178: 0C        .byte $0C   ; 
- D 1 - I - 0x017189 05:B179: 52        .byte $52   ; 
- D 1 - I - 0x01718A 05:B17A: D1        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x01718B 05:B17B: F8 B1     .word sub_D1_B1F8
- D 1 - I - 0x01718D 05:B17D: 06        .byte $06   ; 
- D 1 - I - 0x01718E 05:B17E: 4F        .byte $4F   ; 
- D 1 - I - 0x01718F 05:B17F: 4F        .byte $4F   ; 
- D 1 - I - 0x017190 05:B180: 4F        .byte $4F   ; 
- D 1 - I - 0x017191 05:B181: 4F        .byte $4F   ; 
- D 1 - I - 0x017192 05:B182: 4F        .byte $4F   ; 
- D 1 - I - 0x017193 05:B183: 12        .byte $12   ; 
- D 1 - I - 0x017194 05:B184: 51        .byte $51   ; 
- D 1 - I - 0x017195 05:B185: 06        .byte $06   ; 
- D 1 - I - 0x017196 05:B186: 52        .byte $52   ; 
- D 1 - I - 0x017197 05:B187: 52        .byte $52   ; 
- D 1 - I - 0x017198 05:B188: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x017199 05:B189: 92        .byte $92   ; 
- D 1 - I - 0x01719A 05:B18A: 80        .byte $80   ; 
- D 1 - I - 0x01719B 05:B18B: 18        .byte $18   ; 
- D 1 - I - 0x01719C 05:B18C: 52        .byte $52   ; 
- D 1 - I - 0x01719D 05:B18D: 06        .byte $06   ; 
- D 1 - I - 0x01719E 05:B18E: 51        .byte $51   ; 
- D 1 - I - 0x01719F 05:B18F: 51        .byte $51   ; 
- D 1 - I - 0x0171A0 05:B190: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0171A1 05:B191: 91        .byte $91   ; 
- D 1 - I - 0x0171A2 05:B192: 80        .byte $80   ; 
- D 1 - I - 0x0171A3 05:B193: 18        .byte $18   ; 
- D 1 - I - 0x0171A4 05:B194: 51        .byte $51   ; 
- D 1 - I - 0x0171A5 05:B195: 06        .byte $06   ; 
- D 1 - I - 0x0171A6 05:B196: 4F        .byte $4F   ; 
- D 1 - I - 0x0171A7 05:B197: 4F        .byte $4F   ; 
- D 1 - I - 0x0171A8 05:B198: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0171A9 05:B199: 8F        .byte $8F   ; 
- D 1 - I - 0x0171AA 05:B19A: 80        .byte $80   ; 
- D 1 - I - 0x0171AB 05:B19B: 18        .byte $18   ; 
- D 1 - I - 0x0171AC 05:B19C: 4F        .byte $4F   ; 
- D 1 - I - 0x0171AD 05:B19D: 06        .byte $06   ; 
- D 1 - I - 0x0171AE 05:B19E: 4B        .byte $4B   ; 
- D 1 - I - 0x0171AF 05:B19F: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0171B0 05:B1A0: 8D        .byte $8D   ; 
- D 1 - I - 0x0171B1 05:B1A1: 80        .byte $80   ; 
- D 1 - I - 0x0171B2 05:B1A2: 0C        .byte $0C   ; 
- D 1 - I - 0x0171B3 05:B1A3: 4D        .byte $4D   ; 
- D 1 - I - 0x0171B4 05:B1A4: 06        .byte $06   ; 
- D 1 - I - 0x0171B5 05:B1A5: 4D        .byte $4D   ; 
- D 1 - I - 0x0171B6 05:B1A6: 4F        .byte $4F   ; 
- D 1 - I - 0x0171B7 05:B1A7: 51        .byte $51   ; 
- D 1 - I - 0x0171B8 05:B1A8: 52        .byte $52   ; 
- D 1 - I - 0x0171B9 05:B1A9: 52        .byte $52   ; 
- D 1 - I - 0x0171BA 05:B1AA: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0171BB 05:B1AB: 92        .byte $92   ; 
- D 1 - I - 0x0171BC 05:B1AC: 80        .byte $80   ; 
- D 1 - I - 0x0171BD 05:B1AD: 18        .byte $18   ; 
- D 1 - I - 0x0171BE 05:B1AE: 52        .byte $52   ; 
- D 1 - I - 0x0171BF 05:B1AF: 06        .byte $06   ; 
- D 1 - I - 0x0171C0 05:B1B0: 51        .byte $51   ; 
- D 1 - I - 0x0171C1 05:B1B1: 51        .byte $51   ; 
- D 1 - I - 0x0171C2 05:B1B2: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0171C3 05:B1B3: 91        .byte $91   ; 
- D 1 - I - 0x0171C4 05:B1B4: 80        .byte $80   ; 
- D 1 - I - 0x0171C5 05:B1B5: 18        .byte $18   ; 
- D 1 - I - 0x0171C6 05:B1B6: 51        .byte $51   ; 
- D 1 - I - 0x0171C7 05:B1B7: 06        .byte $06   ; 
- D 1 - I - 0x0171C8 05:B1B8: 4F        .byte $4F   ; 
- D 1 - I - 0x0171C9 05:B1B9: 4F        .byte $4F   ; 
- D 1 - I - 0x0171CA 05:B1BA: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0171CB 05:B1BB: 8F        .byte $8F   ; 
- D 1 - I - 0x0171CC 05:B1BC: 80        .byte $80   ; 
- D 1 - I - 0x0171CD 05:B1BD: 18        .byte $18   ; 
- D 1 - I - 0x0171CE 05:B1BE: 4F        .byte $4F   ; 
- D 1 - I - 0x0171CF 05:B1BF: 06        .byte $06   ; 
- D 1 - I - 0x0171D0 05:B1C0: 4D        .byte $4D   ; 
- D 1 - I - 0x0171D1 05:B1C1: 4D        .byte $4D   ; 
- D 1 - I - 0x0171D2 05:B1C2: C9        .byte con_se_cb_C9   ; 
- D 1 - I - 0x0171D3 05:B1C3: 8D        .byte $8D   ; 
- D 1 - I - 0x0171D4 05:B1C4: 80        .byte $80   ; 
- D 1 - I - 0x0171D5 05:B1C5: 4D        .byte $4D   ; 
- D 1 - I - 0x0171D6 05:B1C6: 48        .byte $48   ; 
- D 1 - I - 0x0171D7 05:B1C7: 49        .byte $49   ; 
- D 1 - I - 0x0171D8 05:B1C8: 4A        .byte $4A   ; 
- D 1 - I - 0x0171D9 05:B1C9: DA        .byte con_se_cb_DA, $08   ; 
- D 1 - I - 0x0171DB 05:B1CB: 4B        .byte $4B   ; 
- D 1 - I - 0x0171DC 05:B1CC: DA        .byte con_se_cb_DA, $08   ; 
- D 1 - I - 0x0171DE 05:B1CE: 4A        .byte $4A   ; 
- D 1 - I - 0x0171DF 05:B1CF: 48        .byte $48   ; 
- D 1 - I - 0x0171E0 05:B1D0: 48        .byte $48   ; 
- D 1 - I - 0x0171E1 05:B1D1: 48        .byte $48   ; 
- D 1 - I - 0x0171E2 05:B1D2: 48        .byte $48   ; 
- D 1 - I - 0x0171E3 05:B1D3: 4A        .byte $4A   ; 
- D 1 - I - 0x0171E4 05:B1D4: 4A        .byte $4A   ; 
- D 1 - I - 0x0171E5 05:B1D5: 4A        .byte $4A   ; 
- D 1 - I - 0x0171E6 05:B1D6: 4A        .byte $4A   ; 
- D 1 - I - 0x0171E7 05:B1D7: 4F        .byte $4F   ; 
- D 1 - I - 0x0171E8 05:B1D8: 4F        .byte $4F   ; 
- D 1 - I - 0x0171E9 05:B1D9: 4F        .byte $4F   ; 
- D 1 - I - 0x0171EA 05:B1DA: 4F        .byte $4F   ; 
- D 1 - I - 0x0171EB 05:B1DB: 4F        .byte $4F   ; 
- D 1 - I - 0x0171EC 05:B1DC: 48        .byte $48   ; 
- D 1 - I - 0x0171ED 05:B1DD: 49        .byte $49   ; 
- D 1 - I - 0x0171EE 05:B1DE: 4A        .byte $4A   ; 
- D 1 - I - 0x0171EF 05:B1DF: DA        .byte con_se_cb_DA, $08   ; 
- D 1 - I - 0x0171F1 05:B1E1: 4B        .byte $4B   ; 
- D 1 - I - 0x0171F2 05:B1E2: DA        .byte con_se_cb_DA, $08   ; 
- D 1 - I - 0x0171F4 05:B1E4: 4A        .byte $4A   ; 
- D 1 - I - 0x0171F5 05:B1E5: 48        .byte $48   ; 
- D 1 - I - 0x0171F6 05:B1E6: 48        .byte $48   ; 
- D 1 - I - 0x0171F7 05:B1E7: 48        .byte $48   ; 
- D 1 - I - 0x0171F8 05:B1E8: 48        .byte $48   ; 
- D 1 - I - 0x0171F9 05:B1E9: 4B        .byte $4B   ; 
- D 1 - I - 0x0171FA 05:B1EA: 4B        .byte $4B   ; 
- D 1 - I - 0x0171FB 05:B1EB: 4B        .byte $4B   ; 
- D 1 - I - 0x0171FC 05:B1EC: 4B        .byte $4B   ; 
- D 1 - I - 0x0171FD 05:B1ED: 4D        .byte $4D   ; 
- D 1 - I - 0x0171FE 05:B1EE: 4D        .byte $4D   ; 
- D 1 - I - 0x0171FF 05:B1EF: 4D        .byte $4D   ; 
- D 1 - I - 0x017200 05:B1F0: 4A        .byte $4A   ; 
- D 1 - I - 0x017201 05:B1F1: 4A        .byte $4A   ; 
- D 1 - I - 0x017202 05:B1F2: 4A        .byte $4A   ; 
- D 1 - I - 0x017203 05:B1F3: 4A        .byte $4A   ; 
- D 1 - I - 0x017204 05:B1F4: 4A        .byte $4A   ; 
- D 1 - I - 0x017205 05:B1F5: D0        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x017206 05:B1F6: 2E B1     .word loc_D0_B12E



sub_D1_B1F8:
- D 1 - I - 0x017208 05:B1F8: 06        .byte $06   ; 
- D 1 - I - 0x017209 05:B1F9: 4F        .byte $4F   ; 
- D 1 - I - 0x01720A 05:B1FA: 4F        .byte $4F   ; 
- D 1 - I - 0x01720B 05:B1FB: 56        .byte $56   ; 
- D 1 - I - 0x01720C 05:B1FC: 52        .byte $52   ; 
- D 1 - I - 0x01720D 05:B1FD: 4F        .byte $4F   ; 
- D 1 - I - 0x01720E 05:B1FE: 4F        .byte $4F   ; 
- D 1 - I - 0x01720F 05:B1FF: 4F        .byte $4F   ; 
- D 1 - I - 0x017210 05:B200: 4F        .byte $4F   ; 
- D 1 - I - 0x017211 05:B201: 4F        .byte $4F   ; 
- D 1 - I - 0x017212 05:B202: 4F        .byte $4F   ; 
- D 1 - I - 0x017213 05:B203: 4F        .byte $4F   ; 
- D 1 - I - 0x017214 05:B204: 4F        .byte $4F   ; 
- D 1 - I - 0x017215 05:B205: 4F        .byte $4F   ; 
- D 1 - I - 0x017216 05:B206: 4D        .byte $4D   ; 
- D 1 - I - 0x017217 05:B207: 4D        .byte $4D   ; 
- D 1 - I - 0x017218 05:B208: 4D        .byte $4D   ; 
- D 1 - I - 0x017219 05:B209: DA        .byte con_se_cb_DA, $08   ; 
- D 1 - I - 0x01721B 05:B20B: 4B        .byte $4B   ; 
- D 1 - I - 0x01721C 05:B20C: DA        .byte con_se_cb_DA, $08   ; 
- D 1 - I - 0x01721E 05:B20E: 4B        .byte $4B   ; 
- D 1 - I - 0x01721F 05:B20F: DA        .byte con_se_cb_DA, $08   ; 
- D 1 - I - 0x017221 05:B211: 4D        .byte $4D   ; 
- D 1 - I - 0x017222 05:B212: DA        .byte con_se_cb_DA, $08   ; 
- D 1 - I - 0x017224 05:B214: 4E        .byte $4E   ; 
- D 1 - I - 0x017225 05:B215: DA        .byte con_se_cb_DA, $08   ; 
- D 1 - I - 0x017227 05:B217: 4F        .byte $4F   ; 
- D 1 - I - 0x017228 05:B218: D2        .byte con_se_cb_rts   ; 


; bzk garbage
- - - - - - 0x017229 05:B219: D3        .byte con_se_cb_stop   ; 



off_ch_11_B21A_03:
- D 1 - I - 0x01722A 05:B21A: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x01722B 05:B21B: F3 8B     .word ofs_CD_8BF3
- D 1 - I - 0x01722D 05:B21D: C4        .byte con_se_cb_C4, $23   ; 
- D 1 - I - 0x01722F 05:B21F: C7        .byte con_se_cb_C7, $C8   ; 
loc_D0_B221:
- D 1 - I - 0x017231 05:B221: 0C        .byte $0C   ; 
- D 1 - I - 0x017232 05:B222: 43        .byte $43   ; 
- D 1 - I - 0x017233 05:B223: 06        .byte $06   ; 
- D 1 - I - 0x017234 05:B224: 42        .byte $42   ; 
- D 1 - I - 0x017235 05:B225: 41        .byte $41   ; 
- D 1 - I - 0x017236 05:B226: 41        .byte $41   ; 
- D 1 - I - 0x017237 05:B227: 41        .byte $41   ; 
- D 1 - I - 0x017238 05:B228: 42        .byte $42   ; 
- D 1 - I - 0x017239 05:B229: 41        .byte $41   ; 
- D 1 - I - 0x01723A 05:B22A: 41        .byte $41   ; 
- D 1 - I - 0x01723B 05:B22B: 41        .byte $41   ; 
- D 1 - I - 0x01723C 05:B22C: 42        .byte $42   ; 
- D 1 - I - 0x01723D 05:B22D: 41        .byte $41   ; 
- D 1 - I - 0x01723E 05:B22E: 41        .byte $41   ; 
- D 1 - I - 0x01723F 05:B22F: 41        .byte $41   ; 
- D 1 - I - 0x017240 05:B230: 42        .byte $42   ; 
- D 1 - I - 0x017241 05:B231: 41        .byte $41   ; 
- D 1 - I - 0x017242 05:B232: 41        .byte $41   ; 
- D 1 - I - 0x017243 05:B233: 41        .byte $41   ; 
- D 1 - I - 0x017244 05:B234: 42        .byte $42   ; 
- D 1 - I - 0x017245 05:B235: 41        .byte $41   ; 
- D 1 - I - 0x017246 05:B236: 41        .byte $41   ; 
- D 1 - I - 0x017247 05:B237: 41        .byte $41   ; 
- D 1 - I - 0x017248 05:B238: 42        .byte $42   ; 
- D 1 - I - 0x017249 05:B239: 41        .byte $41   ; 
- D 1 - I - 0x01724A 05:B23A: 41        .byte $41   ; 
- D 1 - I - 0x01724B 05:B23B: 41        .byte $41   ; 
- D 1 - I - 0x01724C 05:B23C: 42        .byte $42   ; 
- D 1 - I - 0x01724D 05:B23D: 41        .byte $41   ; 
- D 1 - I - 0x01724E 05:B23E: 41        .byte $41   ; 
- D 1 - I - 0x01724F 05:B23F: 41        .byte $41   ; 
- D 1 - I - 0x017250 05:B240: 42        .byte $42   ; 
- D 1 - I - 0x017251 05:B241: 42        .byte $42   ; 
- D 1 - I - 0x017252 05:B242: D0        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x017253 05:B243: 21 B2     .word loc_D0_B221


; bzk garbage
- - - - - - 0x017255 05:B245: D3        .byte con_se_cb_stop   ; 



_off013_B246_12_game_over:
- D 1 - I - 0x017256 05:B246: FF        .byte $FF   ; 
- D 1 - I - 0x017257 05:B247: 00        .byte $00   ; 
- D 1 - I - 0x017258 05:B248: 54 B2     .word off_ch_12_B254_00
- D 1 - I - 0x01725A 05:B24A: 01        .byte $01   ; 
- D 1 - I - 0x01725B 05:B24B: 76 B2     .word off_ch_12_B276_01
- D 1 - I - 0x01725D 05:B24D: 02        .byte $02   ; 
- D 1 - I - 0x01725E 05:B24E: 96 B2     .word off_ch_12_B296_02
- D 1 - I - 0x017260 05:B250: 03        .byte $03   ; 
- D 1 - I - 0x017261 05:B251: AC B2     .word off_ch_12_B2AC_03
- D 1 - I - 0x017263 05:B253: FF        .byte $FF   ; 



off_ch_12_B254_00:
- D 1 - I - 0x017264 05:B254: CC        .byte con_se_cb_CC, $80   ; 
- D 1 - I - 0x017266 05:B256: DB        .byte con_se_cb_DB, $05, $28, $F0   ; 
- D 1 - I - 0x01726A 05:B25A: D8        .byte con_se_cb_D8, $00   ; 
- D 1 - I - 0x01726C 05:B25C: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x01726D 05:B25D: B6 8A     .word ofs_CD_8AB6
- D 1 - I - 0x01726F 05:B25F: C7        .byte con_se_cb_C7, $FA   ; 
- D 1 - I - 0x017271 05:B261: C4        .byte con_se_cb_C4, $46   ; 
- D 1 - I - 0x017273 05:B263: 06        .byte $06   ; 
- D 1 - I - 0x017274 05:B264: 58        .byte $58   ; 
- D 1 - I - 0x017275 05:B265: 5E        .byte $5E   ; 
- D 1 - I - 0x017276 05:B266: 64        .byte $64   ; 
- D 1 - I - 0x017277 05:B267: 64        .byte $64   ; 
- D 1 - I - 0x017278 05:B268: 5B        .byte $5B   ; 
- D 1 - I - 0x017279 05:B269: 61        .byte $61   ; 
- D 1 - I - 0x01727A 05:B26A: 67        .byte $67   ; 
- D 1 - I - 0x01727B 05:B26B: 67        .byte $67   ; 
- D 1 - I - 0x01727C 05:B26C: 5E        .byte $5E   ; 
- D 1 - I - 0x01727D 05:B26D: 64        .byte $64   ; 
- D 1 - I - 0x01727E 05:B26E: 6A        .byte $6A   ; 
- D 1 - I - 0x01727F 05:B26F: 6A        .byte $6A   ; 
- D 1 - I - 0x017280 05:B270: 03        .byte $03   ; 
- D 1 - I - 0x017281 05:B271: 64        .byte $64   ; 
- D 1 - I - 0x017282 05:B272: 67        .byte $67   ; 
- D 1 - I - 0x017283 05:B273: 2A        .byte $2A   ; 
- D 1 - I - 0x017284 05:B274: 64        .byte $64   ; 
- D 1 - I - 0x017285 05:B275: D3        .byte con_se_cb_stop   ; 



off_ch_12_B276_01:
- D 1 - I - 0x017286 05:B276: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x017287 05:B277: B6 8A     .word ofs_CD_8AB6
- D 1 - I - 0x017289 05:B279: DB        .byte con_se_cb_DB, $05, $28, $F0   ; 
- D 1 - I - 0x01728D 05:B27D: D8        .byte con_se_cb_D8, $00   ; 
- D 1 - I - 0x01728F 05:B27F: C7        .byte con_se_cb_C7, $FA   ; 
- D 1 - I - 0x017291 05:B281: C4        .byte con_se_cb_C4, $46   ; 
- D 1 - I - 0x017293 05:B283: 06        .byte $06   ; 
- D 1 - I - 0x017294 05:B284: 55        .byte $55   ; 
- D 1 - I - 0x017295 05:B285: 52        .byte $52   ; 
- D 1 - I - 0x017296 05:B286: 4F        .byte $4F   ; 
- D 1 - I - 0x017297 05:B287: 52        .byte $52   ; 
- D 1 - I - 0x017298 05:B288: 58        .byte $58   ; 
- D 1 - I - 0x017299 05:B289: 55        .byte $55   ; 
- D 1 - I - 0x01729A 05:B28A: 52        .byte $52   ; 
- D 1 - I - 0x01729B 05:B28B: 55        .byte $55   ; 
- D 1 - I - 0x01729C 05:B28C: 58        .byte $58   ; 
- D 1 - I - 0x01729D 05:B28D: 59        .byte $59   ; 
- D 1 - I - 0x01729E 05:B28E: 5A        .byte $5A   ; 
- D 1 - I - 0x01729F 05:B28F: 5B        .byte $5B   ; 
- D 1 - I - 0x0172A0 05:B290: 03        .byte $03   ; 
- D 1 - I - 0x0172A1 05:B291: 61        .byte $61   ; 
- D 1 - I - 0x0172A2 05:B292: 64        .byte $64   ; 
- D 1 - I - 0x0172A3 05:B293: 2A        .byte $2A   ; 
- D 1 - I - 0x0172A4 05:B294: 61        .byte $61   ; 
- D 1 - I - 0x0172A5 05:B295: D3        .byte con_se_cb_stop   ; 



off_ch_12_B296_02:
- D 1 - I - 0x0172A6 05:B296: D8        .byte con_se_cb_D8, $00   ; 
- D 1 - I - 0x0172A8 05:B298: DB        .byte con_se_cb_DB, $05, $28, $F0   ; 
- D 1 - I - 0x0172AC 05:B29C: 0C        .byte $0C   ; 
- D 1 - I - 0x0172AD 05:B29D: 5B        .byte $5B   ; 
- D 1 - I - 0x0172AE 05:B29E: 06        .byte $06   ; 
- D 1 - I - 0x0172AF 05:B29F: 58        .byte $58   ; 
- D 1 - I - 0x0172B0 05:B2A0: 5B        .byte $5B   ; 
- D 1 - I - 0x0172B1 05:B2A1: 61        .byte $61   ; 
- D 1 - I - 0x0172B2 05:B2A2: 5E        .byte $5E   ; 
- D 1 - I - 0x0172B3 05:B2A3: 5B        .byte $5B   ; 
- D 1 - I - 0x0172B4 05:B2A4: 61        .byte $61   ; 
- D 1 - I - 0x0172B5 05:B2A5: 0C        .byte $0C   ; 
- D 1 - I - 0x0172B6 05:B2A6: 64        .byte $64   ; 
- D 1 - I - 0x0172B7 05:B2A7: 61        .byte $61   ; 
- D 1 - I - 0x0172B8 05:B2A8: 5E        .byte $5E   ; 
- D 1 - I - 0x0172B9 05:B2A9: 24        .byte $24   ; 
- D 1 - I - 0x0172BA 05:B2AA: 5B        .byte $5B   ; 
- D 1 - I - 0x0172BB 05:B2AB: D3        .byte con_se_cb_stop   ; 



off_ch_12_B2AC_03:
- D 1 - I - 0x0172BC 05:B2AC: D3        .byte con_se_cb_stop   ; 



_off013_B2AD_15:
_off013_B2AD_16:
_off013_B2AD_17:
_off013_B2AD_18:
- - - - - - 0x0172BD 05:B2AD: FF        .byte $FF   ; 
- - - - - - 0x0172BE 05:B2AE: 00        .byte $00   ; 
- - - - - - 0x0172BF 05:B2AF: BB B2     .word off_ch_15_B2BB_00
- - - - - - 0x0172C1 05:B2B1: 01        .byte $01   ; 
- - - - - - 0x0172C2 05:B2B2: BB B2     .word off_ch_15_B2BB_01
- - - - - - 0x0172C4 05:B2B4: 02        .byte $02   ; 
- - - - - - 0x0172C5 05:B2B5: BB B2     .word off_ch_15_B2BB_02
- - - - - - 0x0172C7 05:B2B7: 03        .byte $03   ; 
- - - - - - 0x0172C8 05:B2B8: BB B2     .word off_ch_15_B2BB_03
- - - - - - 0x0172CA 05:B2BA: FF        .byte $FF   ; 



off_ch_15_B2BB_00:
off_ch_15_B2BB_01:
off_ch_15_B2BB_02:
off_ch_15_B2BB_03:
off_ch_30_B2BB_04:
off_ch_30_B2BB_05:
off_ch_30_B2BB_06:
- - - - - - 0x0172CB 05:B2BB: D3        .byte con_se_cb_stop   ; 



_off013_B2BC_19:
- D 1 - I - 0x0172CC 05:B2BC: 40        .byte $40   ; 
- D 1 - I - 0x0172CD 05:B2BD: 07        .byte $07   ; 
- D 1 - I - 0x0172CE 05:B2BE: C4 B2     .word off_ch_19_B2C4_07
- D 1 - I - 0x0172D0 05:B2C0: 05        .byte $05   ; 
- D 1 - I - 0x0172D1 05:B2C1: D8 B2     .word off_ch_19_B2D8_05
- D 1 - I - 0x0172D3 05:B2C3: FF        .byte $FF   ; 



off_ch_19_B2C4_07:
- D 1 - I - 0x0172D4 05:B2C4: C4        .byte con_se_cb_C4, $6E   ; 
- D 1 - I - 0x0172D6 05:B2C6: 4E        .byte $4E   ; 
- D 1 - I - 0x0172D7 05:B2C7: CA        .byte con_se_cb_CA   ; 
off_CE_B2C8:
- D 1 - I - 0x0172D8 05:B2C8: C1        .byte con_se_cb_C1, $FF   ; 
- D 1 - I - 0x0172DA 05:B2CA: 01        .byte $01   ; 
- D 1 - I - 0x0172DB 05:B2CB: CE        .byte con_se_cb_loop_1, $04   ; 
- D 1 - I - 0x0172DD 05:B2CD: C8 B2     .word off_CE_B2C8
off_CE_B2CF:
- D 1 - I - 0x0172DF 05:B2CF: C5        .byte con_se_cb_C5, $F6   ; 
- D 1 - I - 0x0172E1 05:B2D1: 02        .byte $02   ; 
- D 1 - I - 0x0172E2 05:B2D2: CE        .byte con_se_cb_loop_1, $02   ; 
- D 1 - I - 0x0172E4 05:B2D4: CF B2     .word off_CE_B2CF
- D 1 - I - 0x0172E6 05:B2D6: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x0172E7 05:B2D7: D3        .byte con_se_cb_stop   ; 



off_ch_19_B2D8_05:
- D 1 - I - 0x0172E8 05:B2D8: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x0172E9 05:B2D9: A6 8A     .word ofs_CD_8AA6
- D 1 - I - 0x0172EB 05:B2DB: C4        .byte con_se_cb_C4, $64   ; 
- D 1 - I - 0x0172ED 05:B2DD: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x0172EE 05:B2DE: 4C        .byte $4C   ; 
- D 1 - I - 0x0172EF 05:B2DF: 01        .byte $01   ; 
- D 1 - I - 0x0172F0 05:B2E0: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x0172F1 05:B2E1: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x0172F2 05:B2E2: 47        .byte $47   ; 
- D 1 - I - 0x0172F3 05:B2E3: 01        .byte $01   ; 
- D 1 - I - 0x0172F4 05:B2E4: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x0172F5 05:B2E5: D3        .byte con_se_cb_stop   ; 



_off013_B2E6_1A:
- D 1 - I - 0x0172F6 05:B2E6: 40        .byte $40   ; 
- D 1 - I - 0x0172F7 05:B2E7: 05        .byte $05   ; 
- D 1 - I - 0x0172F8 05:B2E8: 0E B3     .word off_ch_1A_B30E_05
- D 1 - I - 0x0172FA 05:B2EA: 07        .byte $07   ; 
- D 1 - I - 0x0172FB 05:B2EB: EE B2     .word off_ch_1A_B2EE_07
- D 1 - I - 0x0172FD 05:B2ED: FF        .byte $FF   ; 



off_ch_1A_B2EE_07:
- D 1 - I - 0x0172FE 05:B2EE: C4        .byte con_se_cb_C4, $7F   ; 
- D 1 - I - 0x017300 05:B2F0: 4C        .byte $4C   ; 
- D 1 - I - 0x017301 05:B2F1: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017302 05:B2F2: 02        .byte $02   ; 
- D 1 - I - 0x017303 05:B2F3: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017304 05:B2F4: 01        .byte $01   ; 
- D 1 - I - 0x017305 05:B2F5: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017306 05:B2F6: 4F        .byte $4F   ; 
- D 1 - I - 0x017307 05:B2F7: 02        .byte $02   ; 
- D 1 - I - 0x017308 05:B2F8: C5        .byte con_se_cb_C5, $EC   ; 
- D 1 - I - 0x01730A 05:B2FA: 4B        .byte $4B   ; 
- D 1 - I - 0x01730B 05:B2FB: 02        .byte $02   ; 
off_CE_B2FC:
- D 1 - I - 0x01730C 05:B2FC: C5        .byte con_se_cb_C5, $F6   ; 
- D 1 - I - 0x01730E 05:B2FE: 01        .byte $01   ; 
- D 1 - I - 0x01730F 05:B2FF: CE        .byte con_se_cb_loop_1, $06   ; 
- D 1 - I - 0x017311 05:B301: FC B2     .word off_CE_B2FC
- D 1 - I - 0x017313 05:B303: C5        .byte con_se_cb_C5, $E2   ; 
off_CE_B305:
- D 1 - I - 0x017315 05:B305: C5        .byte con_se_cb_C5, $FE   ; 
- D 1 - I - 0x017317 05:B307: 01        .byte $01   ; 
- D 1 - I - 0x017318 05:B308: CE        .byte con_se_cb_loop_1, $05   ; 
- D 1 - I - 0x01731A 05:B30A: 05 B3     .word off_CE_B305
- D 1 - I - 0x01731C 05:B30C: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x01731D 05:B30D: D3        .byte con_se_cb_stop   ; 



off_ch_1A_B30E_05:
- D 1 - I - 0x01731E 05:B30E: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x01731F 05:B30F: AA 8A     .word ofs_CD_8AAA
- D 1 - I - 0x017321 05:B311: C4        .byte con_se_cb_C4, $7F   ; 
- D 1 - I - 0x017323 05:B313: D4        .byte con_se_cb_D4, $8D   ; 
- D 1 - I - 0x017325 05:B315: 46        .byte $46   ; 
- D 1 - I - 0x017326 05:B316: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017327 05:B317: 01        .byte $01   ; 
- D 1 - I - 0x017328 05:B318: 52        .byte $52   ; 
- D 1 - I - 0x017329 05:B319: 01        .byte $01   ; 
- D 1 - I - 0x01732A 05:B31A: 47        .byte $47   ; 
- D 1 - I - 0x01732B 05:B31B: 01        .byte $01   ; 
- D 1 - I - 0x01732C 05:B31C: 53        .byte $53   ; 
- D 1 - I - 0x01732D 05:B31D: 01        .byte $01   ; 
- D 1 - I - 0x01732E 05:B31E: 48        .byte $48   ; 
- D 1 - I - 0x01732F 05:B31F: 01        .byte $01   ; 
- D 1 - I - 0x017330 05:B320: 54        .byte $54   ; 
- D 1 - I - 0x017331 05:B321: 01        .byte $01   ; 
- D 1 - I - 0x017332 05:B322: 4B        .byte $4B   ; 
- D 1 - I - 0x017333 05:B323: 01        .byte $01   ; 
- D 1 - I - 0x017334 05:B324: D3        .byte con_se_cb_stop   ; 



_off013_B325_1B:
- D 1 - I - 0x017335 05:B325: 40        .byte $40   ; 
- D 1 - I - 0x017336 05:B326: 07        .byte $07   ; 
- D 1 - I - 0x017337 05:B327: 30 B3     .word off_ch_1B_B330_07
- D 1 - I - 0x017339 05:B329: 05        .byte $05   ; 
- D 1 - I - 0x01733A 05:B32A: 46 B3     .word off_ch_1B_B346_05
- D 1 - I - 0x01733C 05:B32C: 04        .byte $04   ; 
- D 1 - I - 0x01733D 05:B32D: 6E B3     .word off_ch_1B_B36E_04
- D 1 - I - 0x01733F 05:B32F: FF        .byte $FF   ; 



off_ch_1B_B330_07:
- D 1 - I - 0x017340 05:B330: C4        .byte con_se_cb_C4, $7F   ; 
- D 1 - I - 0x017342 05:B332: 4E        .byte $4E   ; 
- D 1 - I - 0x017343 05:B333: CA        .byte con_se_cb_CA   ; 
off_CE_B334:
- D 1 - I - 0x017344 05:B334: C1        .byte con_se_cb_C1, $FF   ; 
- D 1 - I - 0x017346 05:B336: 01        .byte $01   ; 
- D 1 - I - 0x017347 05:B337: CE        .byte con_se_cb_loop_1, $06   ; 
- D 1 - I - 0x017349 05:B339: 34 B3     .word off_CE_B334
off_CE_B33B:
- D 1 - I - 0x01734B 05:B33B: C1        .byte con_se_cb_C1, $01   ; 
- D 1 - I - 0x01734D 05:B33D: C5        .byte con_se_cb_C5, $F8   ; 
- D 1 - I - 0x01734F 05:B33F: 03        .byte $03   ; 
- D 1 - I - 0x017350 05:B340: CE        .byte con_se_cb_loop_1, $07   ; 
- D 1 - I - 0x017352 05:B342: 3B B3     .word off_CE_B33B
- D 1 - I - 0x017354 05:B344: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017355 05:B345: D3        .byte con_se_cb_stop   ; 



off_ch_1B_B346_05:
- D 1 - I - 0x017356 05:B346: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x017357 05:B347: A6 8A     .word ofs_CD_8AA6
- D 1 - I - 0x017359 05:B349: C4        .byte con_se_cb_C4, $7F   ; 
- D 1 - I - 0x01735B 05:B34B: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x01735C 05:B34C: 58        .byte $58   ; 
- D 1 - I - 0x01735D 05:B34D: 01        .byte $01   ; 
- D 1 - I - 0x01735E 05:B34E: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x01735F 05:B34F: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017360 05:B350: 53        .byte $53   ; 
- D 1 - I - 0x017361 05:B351: 01        .byte $01   ; 
- D 1 - I - 0x017362 05:B352: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017363 05:B353: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017364 05:B354: 54        .byte $54   ; 
- D 1 - I - 0x017365 05:B355: 01        .byte $01   ; 
- D 1 - I - 0x017366 05:B356: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017367 05:B357: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017368 05:B358: 4F        .byte $4F   ; 
- D 1 - I - 0x017369 05:B359: 01        .byte $01   ; 
- D 1 - I - 0x01736A 05:B35A: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x01736B 05:B35B: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x01736C 05:B35C: 57        .byte $57   ; 
- D 1 - I - 0x01736D 05:B35D: 01        .byte $01   ; 
- D 1 - I - 0x01736E 05:B35E: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x01736F 05:B35F: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017370 05:B360: 52        .byte $52   ; 
- D 1 - I - 0x017371 05:B361: 01        .byte $01   ; 
- D 1 - I - 0x017372 05:B362: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017373 05:B363: CA        .byte con_se_cb_CA   ; 
off_CE_B364:
- D 1 - I - 0x017374 05:B364: C5        .byte con_se_cb_C5, $FA   ; 
- D 1 - I - 0x017376 05:B366: C3        .byte con_se_cb_C3, $4C   ; 
- D 1 - I - 0x017378 05:B368: 01        .byte $01   ; 
- D 1 - I - 0x017379 05:B369: CE        .byte con_se_cb_loop_1, $06   ; 
- D 1 - I - 0x01737B 05:B36B: 64 B3     .word off_CE_B364
- D 1 - I - 0x01737D 05:B36D: D3        .byte con_se_cb_stop   ; 



off_ch_1B_B36E_04:
- D 1 - I - 0x01737E 05:B36E: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x01737F 05:B36F: A6 8A     .word ofs_CD_8AA6
- D 1 - I - 0x017381 05:B371: C4        .byte con_se_cb_C4, $7F   ; 
- D 1 - I - 0x017383 05:B373: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017384 05:B374: 57        .byte $57   ; 
- D 1 - I - 0x017385 05:B375: 01        .byte $01   ; 
- D 1 - I - 0x017386 05:B376: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017387 05:B377: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017388 05:B378: 52        .byte $52   ; 
- D 1 - I - 0x017389 05:B379: 01        .byte $01   ; 
- D 1 - I - 0x01738A 05:B37A: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x01738B 05:B37B: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x01738C 05:B37C: 53        .byte $53   ; 
- D 1 - I - 0x01738D 05:B37D: 01        .byte $01   ; 
- D 1 - I - 0x01738E 05:B37E: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x01738F 05:B37F: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017390 05:B380: 4E        .byte $4E   ; 
- D 1 - I - 0x017391 05:B381: 01        .byte $01   ; 
- D 1 - I - 0x017392 05:B382: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017393 05:B383: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017394 05:B384: 56        .byte $56   ; 
- D 1 - I - 0x017395 05:B385: 01        .byte $01   ; 
- D 1 - I - 0x017396 05:B386: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017397 05:B387: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017398 05:B388: 51        .byte $51   ; 
- D 1 - I - 0x017399 05:B389: 01        .byte $01   ; 
- D 1 - I - 0x01739A 05:B38A: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x01739B 05:B38B: CA        .byte con_se_cb_CA   ; 
off_CE_B38C:
- D 1 - I - 0x01739C 05:B38C: C5        .byte con_se_cb_C5, $FA   ; 
- D 1 - I - 0x01739E 05:B38E: C3        .byte con_se_cb_C3, $4C   ; 
- D 1 - I - 0x0173A0 05:B390: 01        .byte $01   ; 
- D 1 - I - 0x0173A1 05:B391: CE        .byte con_se_cb_loop_1, $06   ; 
- D 1 - I - 0x0173A3 05:B393: 8C B3     .word off_CE_B38C
- D 1 - I - 0x0173A5 05:B395: D3        .byte con_se_cb_stop   ; 



_off013_B396_1C:
- D 1 - I - 0x0173A6 05:B396: 40        .byte $40   ; 
- D 1 - I - 0x0173A7 05:B397: 07        .byte $07   ; 
- D 1 - I - 0x0173A8 05:B398: 9B B3     .word off_ch_1C_B39B_07
- D 1 - I - 0x0173AA 05:B39A: FF        .byte $FF   ; 



off_ch_1C_B39B_07:
- D 1 - I - 0x0173AB 05:B39B: C4        .byte con_se_cb_C4, $3C   ; 
- D 1 - I - 0x0173AD 05:B39D: 4A        .byte $4A   ; 
off_CE_B39E:
- D 1 - I - 0x0173AE 05:B39E: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x0173AF 05:B39F: 01        .byte $01   ; 
off_CF_B3A0:
- D 1 - I - 0x0173B0 05:B3A0: C1        .byte con_se_cb_C1, $01   ; 
- D 1 - I - 0x0173B2 05:B3A2: C5        .byte con_se_cb_C5, $0F   ; 
- D 1 - I - 0x0173B4 05:B3A4: 01        .byte $01   ; 
- D 1 - I - 0x0173B5 05:B3A5: CF        .byte con_se_cb_loop_2, $04   ; 
- D 1 - I - 0x0173B7 05:B3A7: A0 B3     .word off_CF_B3A0
off_CF_B3A9:
- D 1 - I - 0x0173B9 05:B3A9: C1        .byte con_se_cb_C1, $FF   ; 
- D 1 - I - 0x0173BB 05:B3AB: C5        .byte con_se_cb_C5, $FA   ; 
- D 1 - I - 0x0173BD 05:B3AD: 01        .byte $01   ; 
- D 1 - I - 0x0173BE 05:B3AE: CF        .byte con_se_cb_loop_2, $06   ; 
- D 1 - I - 0x0173C0 05:B3B0: A9 B3     .word off_CF_B3A9
- D 1 - I - 0x0173C2 05:B3B2: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x0173C3 05:B3B3: 03        .byte $03   ; 
- D 1 - I - 0x0173C4 05:B3B4: 4A        .byte $4A   ; 
- D 1 - I - 0x0173C5 05:B3B5: C4        .byte con_se_cb_C4, $32   ; 
- D 1 - I - 0x0173C7 05:B3B7: CE        .byte con_se_cb_loop_1, $04   ; 
- D 1 - I - 0x0173C9 05:B3B9: 9E B3     .word off_CE_B39E
- D 1 - I - 0x0173CB 05:B3BB: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x0173CC 05:B3BC: D3        .byte con_se_cb_stop   ; 



_off013_B3BD_1D:
- D 1 - I - 0x0173CD 05:B3BD: 40        .byte $40   ; 
- D 1 - I - 0x0173CE 05:B3BE: 05        .byte $05   ; 
- D 1 - I - 0x0173CF 05:B3BF: C5 B3     .word off_ch_1D_B3C5_05
- D 1 - I - 0x0173D1 05:B3C1: 04        .byte $04   ; 
- D 1 - I - 0x0173D2 05:B3C2: D2 B3     .word off_ch_1D_B3D2_04
- D 1 - I - 0x0173D4 05:B3C4: FF        .byte $FF   ; 



off_ch_1D_B3C5_05:
- D 1 - I - 0x0173D5 05:B3C5: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x0173D6 05:B3C6: A6 8A     .word ofs_CD_8AA6
- D 1 - I - 0x0173D8 05:B3C8: C4        .byte con_se_cb_C4, $7F   ; 
- D 1 - I - 0x0173DA 05:B3CA: 4F        .byte $4F   ; 
- D 1 - I - 0x0173DB 05:B3CB: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x0173DC 05:B3CC: 03        .byte $03   ; 
- D 1 - I - 0x0173DD 05:B3CD: D4        .byte con_se_cb_D4, $8C   ; 
- D 1 - I - 0x0173DF 05:B3CF: 09        .byte $09   ; 
- D 1 - I - 0x0173E0 05:B3D0: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x0173E1 05:B3D1: D3        .byte con_se_cb_stop   ; 



off_ch_1D_B3D2_04:
- D 1 - I - 0x0173E2 05:B3D2: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x0173E3 05:B3D3: A6 8A     .word ofs_CD_8AA6
- D 1 - I - 0x0173E5 05:B3D5: C4        .byte con_se_cb_C4, $7F   ; 
- D 1 - I - 0x0173E7 05:B3D7: 50        .byte $50   ; 
- D 1 - I - 0x0173E8 05:B3D8: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x0173E9 05:B3D9: 03        .byte $03   ; 
- D 1 - I - 0x0173EA 05:B3DA: D4        .byte con_se_cb_D4, $8C   ; 
- D 1 - I - 0x0173EC 05:B3DC: 09        .byte $09   ; 
- D 1 - I - 0x0173ED 05:B3DD: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x0173EE 05:B3DE: D3        .byte con_se_cb_stop   ; 



_off013_B3DF_1E:
- D 1 - I - 0x0173EF 05:B3DF: 40        .byte $40   ; 
- D 1 - I - 0x0173F0 05:B3E0: 05        .byte $05   ; 
- D 1 - I - 0x0173F1 05:B3E1: E7 B3     .word off_ch_1E_B3E7_05
- D 1 - I - 0x0173F3 05:B3E3: 07        .byte $07   ; 
- D 1 - I - 0x0173F4 05:B3E4: 14 B4     .word off_ch_1E_B414_07
- D 1 - I - 0x0173F6 05:B3E6: FF        .byte $FF   ; 



off_ch_1E_B3E7_05:
- D 1 - I - 0x0173F7 05:B3E7: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x0173F8 05:B3E8: A6 8A     .word ofs_CD_8AA6
- D 1 - I - 0x0173FA 05:B3EA: C4        .byte con_se_cb_C4, $00   ; 
- D 1 - I - 0x0173FC 05:B3EC: D4        .byte con_se_cb_D4, $94   ; 
- D 1 - I - 0x0173FE 05:B3EE: 0A        .byte $0A   ; 
- D 1 - I - 0x0173FF 05:B3EF: CA        .byte con_se_cb_CA   ; 
off_CE_B3F0:
- D 1 - I - 0x017400 05:B3F0: 77        .byte $77   ; 
- D 1 - I - 0x017401 05:B3F1: 01        .byte $01   ; 
- D 1 - I - 0x017402 05:B3F2: 7D        .byte $7D   ; 
- D 1 - I - 0x017403 05:B3F3: 01        .byte $01   ; 
- D 1 - I - 0x017404 05:B3F4: 6A        .byte $6A   ; 
- D 1 - I - 0x017405 05:B3F5: C5        .byte con_se_cb_C5, $14   ; 
- D 1 - I - 0x017407 05:B3F7: CE        .byte con_se_cb_loop_1, $04   ; 
- D 1 - I - 0x017409 05:B3F9: F0 B3     .word off_CE_B3F0
- D 1 - I - 0x01740B 05:B3FB: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x01740C 05:B3FC: C4        .byte con_se_cb_C4, $00   ; 
- D 1 - I - 0x01740E 05:B3FE: 05        .byte $05   ; 
off_CE_B3FF:
- D 1 - I - 0x01740F 05:B3FF: C5        .byte con_se_cb_C5, $0F   ; 
- D 1 - I - 0x017411 05:B401: 7F        .byte $7F   ; 
- D 1 - I - 0x017412 05:B402: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017413 05:B403: 04        .byte $04   ; 
- D 1 - I - 0x017414 05:B404: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017415 05:B405: CE        .byte con_se_cb_loop_1, $02   ; 
- D 1 - I - 0x017417 05:B407: FF B3     .word off_CE_B3FF
off_CE_B409:
- D 1 - I - 0x017419 05:B409: C5        .byte con_se_cb_C5, $FB   ; 
- D 1 - I - 0x01741B 05:B40B: 7F        .byte $7F   ; 
- D 1 - I - 0x01741C 05:B40C: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x01741D 05:B40D: 04        .byte $04   ; 
- D 1 - I - 0x01741E 05:B40E: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x01741F 05:B40F: CE        .byte con_se_cb_loop_1, $04   ; 
- D 1 - I - 0x017421 05:B411: 09 B4     .word off_CE_B409
- D 1 - I - 0x017423 05:B413: D3        .byte con_se_cb_stop   ; 



off_ch_1E_B414_07:
- D 1 - I - 0x017424 05:B414: C4        .byte con_se_cb_C4, $7F   ; 
- D 1 - I - 0x017426 05:B416: 45        .byte $45   ; 
- D 1 - I - 0x017427 05:B417: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017428 05:B418: 02        .byte $02   ; 
- D 1 - I - 0x017429 05:B419: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x01742A 05:B41A: C4        .byte con_se_cb_C4, $32   ; 
- D 1 - I - 0x01742C 05:B41C: 4A        .byte $4A   ; 
- D 1 - I - 0x01742D 05:B41D: CA        .byte con_se_cb_CA   ; 
off_CE_B41E:
- D 1 - I - 0x01742E 05:B41E: C5        .byte con_se_cb_C5, $0A   ; 
- D 1 - I - 0x017430 05:B420: 01        .byte $01   ; 
- D 1 - I - 0x017431 05:B421: CE        .byte con_se_cb_loop_1, $06   ; 
- D 1 - I - 0x017433 05:B423: 1E B4     .word off_CE_B41E
off_CE_B425:
- D 1 - I - 0x017435 05:B425: C1        .byte con_se_cb_C1, $FF   ; 
- D 1 - I - 0x017437 05:B427: C5        .byte con_se_cb_C5, $F8   ; 
- D 1 - I - 0x017439 05:B429: 01        .byte $01   ; 
- D 1 - I - 0x01743A 05:B42A: CE        .byte con_se_cb_loop_1, $09   ; 
- D 1 - I - 0x01743C 05:B42C: 25 B4     .word off_CE_B425
- D 1 - I - 0x01743E 05:B42E: C4        .byte con_se_cb_C4, $3C   ; 
- D 1 - I - 0x017440 05:B430: 43        .byte $43   ; 
- D 1 - I - 0x017441 05:B431: 03        .byte $03   ; 
off_CE_B432:
- D 1 - I - 0x017442 05:B432: C1        .byte con_se_cb_C1, $01   ; 
- D 1 - I - 0x017444 05:B434: C5        .byte con_se_cb_C5, $06   ; 
- D 1 - I - 0x017446 05:B436: 01        .byte $01   ; 
- D 1 - I - 0x017447 05:B437: CE        .byte con_se_cb_loop_1, $0A   ; 
- D 1 - I - 0x017449 05:B439: 32 B4     .word off_CE_B432
- D 1 - I - 0x01744B 05:B43B: C4        .byte con_se_cb_C4, $32   ; 
off_CE_B43D:
- D 1 - I - 0x01744D 05:B43D: C5        .byte con_se_cb_C5, $FB   ; 
- D 1 - I - 0x01744F 05:B43F: 01        .byte $01   ; 
- D 1 - I - 0x017450 05:B440: CE        .byte con_se_cb_loop_1, $0A   ; 
- D 1 - I - 0x017452 05:B442: 3D B4     .word off_CE_B43D
- D 1 - I - 0x017454 05:B444: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017455 05:B445: D3        .byte con_se_cb_stop   ; 



_off013_B446_1F:
- D 1 - I - 0x017456 05:B446: 40        .byte $40   ; 
- D 1 - I - 0x017457 05:B447: 05        .byte $05   ; 
- D 1 - I - 0x017458 05:B448: 4E B4     .word off_ch_1F_B44E_05
- D 1 - I - 0x01745A 05:B44A: 07        .byte $07   ; 
- D 1 - I - 0x01745B 05:B44B: 6A B4     .word off_ch_1F_B46A_07
- D 1 - I - 0x01745D 05:B44D: FF        .byte $FF   ; 



off_ch_1F_B44E_05:
- D 1 - I - 0x01745E 05:B44E: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x01745F 05:B44F: A6 8A     .word ofs_CD_8AA6
- D 1 - I - 0x017461 05:B451: C4        .byte con_se_cb_C4, $0A   ; 
- D 1 - I - 0x017463 05:B453: 6E        .byte $6E   ; 
- D 1 - I - 0x017464 05:B454: CA        .byte con_se_cb_CA   ; 
off_CE_B455:
- D 1 - I - 0x017465 05:B455: 01        .byte $01   ; 
- D 1 - I - 0x017466 05:B456: C5        .byte con_se_cb_C5, $08   ; 
- D 1 - I - 0x017468 05:B458: CE        .byte con_se_cb_loop_1, $03   ; 
- D 1 - I - 0x01746A 05:B45A: 55 B4     .word off_CE_B455
off_CE_B45C:
- D 1 - I - 0x01746C 05:B45C: C5        .byte con_se_cb_C5, $F8   ; 
- D 1 - I - 0x01746E 05:B45E: C3        .byte con_se_cb_C3, $9C   ; 
- D 1 - I - 0x017470 05:B460: 01        .byte $01   ; 
- D 1 - I - 0x017471 05:B461: C3        .byte con_se_cb_C3, $14   ; 
- D 1 - I - 0x017473 05:B463: 01        .byte $01   ; 
- D 1 - I - 0x017474 05:B464: CE        .byte con_se_cb_loop_1, $03   ; 
- D 1 - I - 0x017476 05:B466: 5C B4     .word off_CE_B45C
- D 1 - I - 0x017478 05:B468: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017479 05:B469: D3        .byte con_se_cb_stop   ; 



off_ch_1F_B46A_07:
- D 1 - I - 0x01747A 05:B46A: C4        .byte con_se_cb_C4, $3C   ; 
- D 1 - I - 0x01747C 05:B46C: 48        .byte $48   ; 
- D 1 - I - 0x01747D 05:B46D: CA        .byte con_se_cb_CA   ; 
off_CE_B46E:
- D 1 - I - 0x01747E 05:B46E: C1        .byte con_se_cb_C1, $01   ; 
- D 1 - I - 0x017480 05:B470: 01        .byte $01   ; 
- D 1 - I - 0x017481 05:B471: C5        .byte con_se_cb_C5, $0F   ; 
- D 1 - I - 0x017483 05:B473: CE        .byte con_se_cb_loop_1, $03   ; 
- D 1 - I - 0x017485 05:B475: 6E B4     .word off_CE_B46E
off_CE_B477:
- D 1 - I - 0x017487 05:B477: C1        .byte con_se_cb_C1, $01   ; 
- D 1 - I - 0x017489 05:B479: C5        .byte con_se_cb_C5, $F4   ; 
- D 1 - I - 0x01748B 05:B47B: 01        .byte $01   ; 
- D 1 - I - 0x01748C 05:B47C: CE        .byte con_se_cb_loop_1, $04   ; 
- D 1 - I - 0x01748E 05:B47E: 77 B4     .word off_CE_B477
- D 1 - I - 0x017490 05:B480: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017491 05:B481: D3        .byte con_se_cb_stop   ; 



_off013_B482_20:
- D 1 - I - 0x017492 05:B482: 40        .byte $40   ; 
- D 1 - I - 0x017493 05:B483: 07        .byte $07   ; 
- D 1 - I - 0x017494 05:B484: 87 B4     .word off_ch_20_B487_07
- D 1 - I - 0x017496 05:B486: FF        .byte $FF   ; 



off_ch_20_B487_07:
- D 1 - I - 0x017497 05:B487: C4        .byte con_se_cb_C4, $3C   ; 
- D 1 - I - 0x017499 05:B489: 48        .byte $48   ; 
- D 1 - I - 0x01749A 05:B48A: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x01749B 05:B48B: 01        .byte $01   ; 
- D 1 - I - 0x01749C 05:B48C: C1        .byte con_se_cb_C1, $01   ; 
- D 1 - I - 0x01749E 05:B48E: C5        .byte con_se_cb_C5, $0F   ; 
- D 1 - I - 0x0174A0 05:B490: 01        .byte $01   ; 
- D 1 - I - 0x0174A1 05:B491: C1        .byte con_se_cb_C1, $01   ; 
- D 1 - I - 0x0174A3 05:B493: C5        .byte con_se_cb_C5, $0F   ; 
- D 1 - I - 0x0174A5 05:B495: 01        .byte $01   ; 
off_CE_B496:
- D 1 - I - 0x0174A6 05:B496: C1        .byte con_se_cb_C1, $FF   ; 
- D 1 - I - 0x0174A8 05:B498: C5        .byte con_se_cb_C5, $FA   ; 
- D 1 - I - 0x0174AA 05:B49A: 01        .byte $01   ; 
- D 1 - I - 0x0174AB 05:B49B: CE        .byte con_se_cb_loop_1, $04   ; 
- D 1 - I - 0x0174AD 05:B49D: 96 B4     .word off_CE_B496
- D 1 - I - 0x0174AF 05:B49F: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x0174B0 05:B4A0: 01        .byte $01   ; 
- D 1 - I - 0x0174B1 05:B4A1: 4A        .byte $4A   ; 
- D 1 - I - 0x0174B2 05:B4A2: C4        .byte con_se_cb_C4, $3C   ; 
- D 1 - I - 0x0174B4 05:B4A4: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x0174B5 05:B4A5: D3        .byte con_se_cb_stop   ; 



_off013_B4A6_21:
- D 1 - I - 0x0174B6 05:B4A6: 40        .byte $40   ; 
- D 1 - I - 0x0174B7 05:B4A7: 05        .byte $05   ; 
- D 1 - I - 0x0174B8 05:B4A8: AE B4     .word off_ch_21_B4AE_05
- D 1 - I - 0x0174BA 05:B4AA: 07        .byte $07   ; 
- D 1 - I - 0x0174BB 05:B4AB: D2 B4     .word off_ch_21_B4D2_07
- D 1 - I - 0x0174BD 05:B4AD: FF        .byte $FF   ; 



off_ch_21_B4AE_05:
- D 1 - I - 0x0174BE 05:B4AE: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x0174BF 05:B4AF: AA 8A     .word ofs_CD_8AAA
- D 1 - I - 0x0174C1 05:B4B1: C4        .byte con_se_cb_C4, $7F   ; 
- D 1 - I - 0x0174C3 05:B4B3: 7A        .byte $7A   ; 
- D 1 - I - 0x0174C4 05:B4B4: CA        .byte con_se_cb_CA   ; 
off_CE_B4B5:
- D 1 - I - 0x0174C5 05:B4B5: 01        .byte $01   ; 
- D 1 - I - 0x0174C6 05:B4B6: C3        .byte con_se_cb_C3, $78   ; 
- D 1 - I - 0x0174C8 05:B4B8: C5        .byte con_se_cb_C5, $E2   ; 
- D 1 - I - 0x0174CA 05:B4BA: CE        .byte con_se_cb_loop_1, $02   ; 
- D 1 - I - 0x0174CC 05:B4BC: B5 B4     .word off_CE_B4B5
off_CE_B4BE:
- D 1 - I - 0x0174CE 05:B4BE: 01        .byte $01   ; 
- D 1 - I - 0x0174CF 05:B4BF: C5        .byte con_se_cb_C5, $FB   ; 
- D 1 - I - 0x0174D1 05:B4C1: C3        .byte con_se_cb_C3, $E2   ; 
- D 1 - I - 0x0174D3 05:B4C3: CE        .byte con_se_cb_loop_1, $06   ; 
- D 1 - I - 0x0174D5 05:B4C5: BE B4     .word off_CE_B4BE
off_CE_B4C7:
- D 1 - I - 0x0174D7 05:B4C7: 02        .byte $02   ; 
- D 1 - I - 0x0174D8 05:B4C8: C5        .byte con_se_cb_C5, $FB   ; 
- D 1 - I - 0x0174DA 05:B4CA: C3        .byte con_se_cb_C3, $1E   ; 
- D 1 - I - 0x0174DC 05:B4CC: CE        .byte con_se_cb_loop_1, $06   ; 
- D 1 - I - 0x0174DE 05:B4CE: C7 B4     .word off_CE_B4C7
- D 1 - I - 0x0174E0 05:B4D0: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x0174E1 05:B4D1: D3        .byte con_se_cb_stop   ; 



off_ch_21_B4D2_07:
- D 1 - I - 0x0174E2 05:B4D2: C4        .byte con_se_cb_C4, $6E   ; 
- D 1 - I - 0x0174E4 05:B4D4: 4A        .byte $4A   ; 
- D 1 - I - 0x0174E5 05:B4D5: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x0174E6 05:B4D6: 01        .byte $01   ; 
- D 1 - I - 0x0174E7 05:B4D7: 43        .byte $43   ; 
- D 1 - I - 0x0174E8 05:B4D8: C4        .byte con_se_cb_C4, $3E   ; 
off_CE_B4DA:
- D 1 - I - 0x0174EA 05:B4DA: C5        .byte con_se_cb_C5, $EC   ; 
- D 1 - I - 0x0174EC 05:B4DC: 01        .byte $01   ; 
- D 1 - I - 0x0174ED 05:B4DD: CE        .byte con_se_cb_loop_1, $03   ; 
- D 1 - I - 0x0174EF 05:B4DF: DA B4     .word off_CE_B4DA
- D 1 - I - 0x0174F1 05:B4E1: 01        .byte $01   ; 
- D 1 - I - 0x0174F2 05:B4E2: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x0174F3 05:B4E3: D3        .byte con_se_cb_stop   ; 



_off013_B4E4_22:
- D 1 - I - 0x0174F4 05:B4E4: 44        .byte $44   ; 
- D 1 - I - 0x0174F5 05:B4E5: 07        .byte $07   ; 
- D 1 - I - 0x0174F6 05:B4E6: EC B4     .word off_ch_22_B4EC_07
- D 1 - I - 0x0174F8 05:B4E8: 05        .byte $05   ; 
- D 1 - I - 0x0174F9 05:B4E9: 01 B5     .word off_ch_22_B501_05
- D 1 - I - 0x0174FB 05:B4EB: FF        .byte $FF   ; 



off_ch_22_B4EC_07:
- D 1 - I - 0x0174FC 05:B4EC: C4        .byte con_se_cb_C4, $7F   ; 
- D 1 - I - 0x0174FE 05:B4EE: C0        .byte con_se_cb_C0, $0E   ; 
- D 1 - I - 0x017500 05:B4F0: CA        .byte con_se_cb_CA   ; 
off_CE_B4F1:
- D 1 - I - 0x017501 05:B4F1: C1        .byte con_se_cb_C1, $FF   ; 
- D 1 - I - 0x017503 05:B4F3: 01        .byte $01   ; 
- D 1 - I - 0x017504 05:B4F4: CE        .byte con_se_cb_loop_1, $08   ; 
- D 1 - I - 0x017506 05:B4F6: F1 B4     .word off_CE_B4F1
off_CE_B4F8:
- D 1 - I - 0x017508 05:B4F8: C1        .byte con_se_cb_C1, $01   ; 
- D 1 - I - 0x01750A 05:B4FA: 03        .byte $03   ; 
- D 1 - I - 0x01750B 05:B4FB: CE        .byte con_se_cb_loop_1, $07   ; 
- D 1 - I - 0x01750D 05:B4FD: F8 B4     .word off_CE_B4F8
- D 1 - I - 0x01750F 05:B4FF: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017510 05:B500: D3        .byte con_se_cb_stop   ; 



off_ch_22_B501_05:
- D 1 - I - 0x017511 05:B501: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x017512 05:B502: A6 8A     .word ofs_CD_8AA6
- D 1 - I - 0x017514 05:B504: C4        .byte con_se_cb_C4, $7F   ; 
- D 1 - I - 0x017516 05:B506: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017517 05:B507: 4C        .byte $4C   ; 
- D 1 - I - 0x017518 05:B508: 01        .byte $01   ; 
- D 1 - I - 0x017519 05:B509: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x01751A 05:B50A: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x01751B 05:B50B: 47        .byte $47   ; 
- D 1 - I - 0x01751C 05:B50C: 01        .byte $01   ; 
- D 1 - I - 0x01751D 05:B50D: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x01751E 05:B50E: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x01751F 05:B50F: 48        .byte $48   ; 
- D 1 - I - 0x017520 05:B510: 01        .byte $01   ; 
- D 1 - I - 0x017521 05:B511: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017522 05:B512: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017523 05:B513: 43        .byte $43   ; 
- D 1 - I - 0x017524 05:B514: 01        .byte $01   ; 
- D 1 - I - 0x017525 05:B515: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017526 05:B516: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017527 05:B517: 4B        .byte $4B   ; 
- D 1 - I - 0x017528 05:B518: 01        .byte $01   ; 
- D 1 - I - 0x017529 05:B519: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x01752A 05:B51A: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x01752B 05:B51B: 46        .byte $46   ; 
- D 1 - I - 0x01752C 05:B51C: 01        .byte $01   ; 
- D 1 - I - 0x01752D 05:B51D: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x01752E 05:B51E: D3        .byte con_se_cb_stop   ; 



_off013_B51F_23:
- D 1 - I - 0x01752F 05:B51F: 3F        .byte $3F   ; 
- D 1 - I - 0x017530 05:B520: 05        .byte $05   ; 
- D 1 - I - 0x017531 05:B521: 24 B5     .word off_ch_23_B524_05
- D 1 - I - 0x017533 05:B523: FF        .byte $FF   ; 



off_ch_23_B524_05:
- D 1 - I - 0x017534 05:B524: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x017535 05:B525: A6 8A     .word ofs_CD_8AA6
- D 1 - I - 0x017537 05:B527: D4        .byte con_se_cb_D4, $8C   ; 
- D 1 - I - 0x017539 05:B529: C4        .byte con_se_cb_C4, $7F   ; 
- D 1 - I - 0x01753B 05:B52B: 4C        .byte $4C   ; 
- D 1 - I - 0x01753C 05:B52C: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x01753D 05:B52D: 01        .byte $01   ; 
- D 1 - I - 0x01753E 05:B52E: C4        .byte con_se_cb_C4, $6E   ; 
off_CE_B530:
- D 1 - I - 0x017540 05:B530: C5        .byte con_se_cb_C5, $F8   ; 
- D 1 - I - 0x017542 05:B532: 01        .byte $01   ; 
- D 1 - I - 0x017543 05:B533: CE        .byte con_se_cb_loop_1, $06   ; 
- D 1 - I - 0x017545 05:B535: 30 B5     .word off_CE_B530
- D 1 - I - 0x017547 05:B537: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017548 05:B538: D3        .byte con_se_cb_stop   ; 



_off013_B539_24:
- D 1 - I - 0x017549 05:B539: 40        .byte $40   ; 
- D 1 - I - 0x01754A 05:B53A: 07        .byte $07   ; 
- D 1 - I - 0x01754B 05:B53B: 44 B5     .word off_ch_24_B544_07
- D 1 - I - 0x01754D 05:B53D: 05        .byte $05   ; 
- D 1 - I - 0x01754E 05:B53E: 64 B5     .word off_ch_24_B564_05
- D 1 - I - 0x017550 05:B540: 04        .byte $04   ; 
- D 1 - I - 0x017551 05:B541: 7E B5     .word off_ch_24_B57E_04
- D 1 - I - 0x017553 05:B543: FF        .byte $FF   ; 



off_ch_24_B544_07:
- D 1 - I - 0x017554 05:B544: C4        .byte con_se_cb_C4, $4D   ; 
- D 1 - I - 0x017556 05:B546: 4F        .byte $4F   ; 
- D 1 - I - 0x017557 05:B547: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017558 05:B548: 01        .byte $01   ; 
off_CE_B549:
- D 1 - I - 0x017559 05:B549: C5        .byte con_se_cb_C5, $0A   ; 
- D 1 - I - 0x01755B 05:B54B: C1        .byte con_se_cb_C1, $FF   ; 
- D 1 - I - 0x01755D 05:B54D: 03        .byte $03   ; 
- D 1 - I - 0x01755E 05:B54E: CE        .byte con_se_cb_loop_1, $05   ; 
- D 1 - I - 0x017560 05:B550: 49 B5     .word off_CE_B549
- D 1 - I - 0x017562 05:B552: C4        .byte con_se_cb_C4, $78   ; 
- D 1 - I - 0x017564 05:B554: 49        .byte $49   ; 
- D 1 - I - 0x017565 05:B555: 1E        .byte $1E   ; 
off_CF_B556:
- D 1 - I - 0x017566 05:B556: C5        .byte con_se_cb_C5, $F9   ; 
- D 1 - I - 0x017568 05:B558: 03        .byte $03   ; 
- D 1 - I - 0x017569 05:B559: C1        .byte con_se_cb_C1, $01   ; 
- D 1 - I - 0x01756B 05:B55B: C5        .byte con_se_cb_C5, $F9   ; 
- D 1 - I - 0x01756D 05:B55D: 03        .byte $03   ; 
- D 1 - I - 0x01756E 05:B55E: CF        .byte con_se_cb_loop_2, $06   ; 
- D 1 - I - 0x017570 05:B560: 56 B5     .word off_CF_B556
- D 1 - I - 0x017572 05:B562: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017573 05:B563: D3        .byte con_se_cb_stop   ; 



off_ch_24_B564_05:
loc_D0_B564:
- D 1 - I - 0x017574 05:B564: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x017575 05:B565: A6 8A     .word ofs_CD_8AA6
- D 1 - I - 0x017577 05:B567: C4        .byte con_se_cb_C4, $7F   ; 
- D 1 - I - 0x017579 05:B569: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x01757A 05:B56A: 45        .byte $45   ; 
- D 1 - I - 0x01757B 05:B56B: 01        .byte $01   ; 
- D 1 - I - 0x01757C 05:B56C: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x01757D 05:B56D: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x01757E 05:B56E: 46        .byte $46   ; 
- D 1 - I - 0x01757F 05:B56F: 01        .byte $01   ; 
- D 1 - I - 0x017580 05:B570: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017581 05:B571: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017582 05:B572: 46        .byte $46   ; 
- D 1 - I - 0x017583 05:B573: 01        .byte $01   ; 
- D 1 - I - 0x017584 05:B574: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017585 05:B575: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017586 05:B576: 48        .byte $48   ; 
- D 1 - I - 0x017587 05:B577: 01        .byte $01   ; 
- D 1 - I - 0x017588 05:B578: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017589 05:B579: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x01758A 05:B57A: 47        .byte $47   ; 
- D 1 - I - 0x01758B 05:B57B: 01        .byte $01   ; 
- D 1 - I - 0x01758C 05:B57C: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x01758D 05:B57D: D3        .byte con_se_cb_stop   ; 



off_ch_24_B57E_04:
- D 1 - I - 0x01758E 05:B57E: C3        .byte con_se_cb_C3, $0A   ; 
- D 1 - I - 0x017590 05:B580: D0        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x017591 05:B581: 64 B5     .word loc_D0_B564



_off013_B583_25:
- - - - - - 0x017593 05:B583: 40        .byte $40   ; 
- - - - - - 0x017594 05:B584: 05        .byte $05   ; 
- - - - - - 0x017595 05:B585: 8E B5     .word off_ch_25_B58E_05
- - - - - - 0x017597 05:B587: 04        .byte $04   ; 
- - - - - - 0x017598 05:B588: A3 B5     .word off_ch_25_B5A3_04
- - - - - - 0x01759A 05:B58A: 07        .byte $07   ; 
- - - - - - 0x01759B 05:B58B: BA B5     .word off_ch_25_B5BA_07
- - - - - - 0x01759D 05:B58D: FF        .byte $FF   ; 



off_ch_25_B58E_05:
- - - - - - 0x01759E 05:B58E: CD        .byte con_se_cb_CD   ; 
- - - - - - 0x01759F 05:B58F: B2 8A     .word ofs_CD_8AB2
- - - - - - 0x0175A1 05:B591: C4        .byte con_se_cb_C4, $7F   ; 
- - - - - - 0x0175A3 05:B593: 4A        .byte $4A   ; 
- - - - - - 0x0175A4 05:B594: CA        .byte con_se_cb_CA   ; 
off_CE_B595:
- - - - - - 0x0175A5 05:B595: 01        .byte $01   ; 
- - - - - - 0x0175A6 05:B596: C1        .byte con_se_cb_C1, $07   ; 
- - - - - - 0x0175A8 05:B598: 01        .byte $01   ; 
- - - - - - 0x0175A9 05:B599: C1        .byte con_se_cb_C1, $FA   ; 
- - - - - - 0x0175AB 05:B59B: C5        .byte con_se_cb_C5, $F6   ; 
- - - - - - 0x0175AD 05:B59D: CE        .byte con_se_cb_loop_1, $07   ; 
- - - - - - 0x0175AF 05:B59F: 95 B5     .word off_CE_B595
- - - - - - 0x0175B1 05:B5A1: CB        .byte con_se_cb_CB   ; 
- - - - - - 0x0175B2 05:B5A2: D3        .byte con_se_cb_stop   ; 



off_ch_25_B5A3_04:
- - - - - - 0x0175B3 05:B5A3: CD        .byte con_se_cb_CD   ; 
- - - - - - 0x0175B4 05:B5A4: B2 8A     .word ofs_CD_8AB2
- - - - - - 0x0175B6 05:B5A6: C4        .byte con_se_cb_C4, $7F   ; 
- - - - - - 0x0175B8 05:B5A8: C3        .byte con_se_cb_C3, $0A   ; 
- - - - - - 0x0175BA 05:B5AA: 4A        .byte $4A   ; 
- - - - - - 0x0175BB 05:B5AB: CA        .byte con_se_cb_CA   ; 
off_CE_B5AC:
- - - - - - 0x0175BC 05:B5AC: 01        .byte $01   ; 
- - - - - - 0x0175BD 05:B5AD: C1        .byte con_se_cb_C1, $07   ; 
- - - - - - 0x0175BF 05:B5AF: 01        .byte $01   ; 
- - - - - - 0x0175C0 05:B5B0: C1        .byte con_se_cb_C1, $FA   ; 
- - - - - - 0x0175C2 05:B5B2: C5        .byte con_se_cb_C5, $F6   ; 
- - - - - - 0x0175C4 05:B5B4: CE        .byte con_se_cb_loop_1, $07   ; 
- - - - - - 0x0175C6 05:B5B6: AC B5     .word off_CE_B5AC
- - - - - - 0x0175C8 05:B5B8: CB        .byte con_se_cb_CB   ; 
- - - - - - 0x0175C9 05:B5B9: D3        .byte con_se_cb_stop   ; 



off_ch_25_B5BA_07:
- - - - - - 0x0175CA 05:B5BA: C4        .byte con_se_cb_C4, $3C   ; 
- - - - - - 0x0175CC 05:B5BC: 4A        .byte $4A   ; 
- - - - - - 0x0175CD 05:B5BD: CA        .byte con_se_cb_CA   ; 
off_CE_B5BE:
- - - - - - 0x0175CE 05:B5BE: C5        .byte con_se_cb_C5, $0F   ; 
- - - - - - 0x0175D0 05:B5C0: 01        .byte $01   ; 
- - - - - - 0x0175D1 05:B5C1: CE        .byte con_se_cb_loop_1, $04   ; 
- - - - - - 0x0175D3 05:B5C3: BE B5     .word off_CE_B5BE
- - - - - - 0x0175D5 05:B5C5: CB        .byte con_se_cb_CB   ; 
- - - - - - 0x0175D6 05:B5C6: D3        .byte con_se_cb_stop   ; 



_off013_B5C7_26:
- D 1 - I - 0x0175D7 05:B5C7: 40        .byte $40   ; 
- D 1 - I - 0x0175D8 05:B5C8: 07        .byte $07   ; 
- D 1 - I - 0x0175D9 05:B5C9: CF B5     .word off_ch_26_B5CF_07
- D 1 - I - 0x0175DB 05:B5CB: 06        .byte $06   ; 
- D 1 - I - 0x0175DC 05:B5CC: DD B5     .word off_ch_26_B5DD_06
- D 1 - I - 0x0175DE 05:B5CE: FF        .byte $FF   ; 



off_ch_26_B5CF_07:
- D 1 - I - 0x0175DF 05:B5CF: C4        .byte con_se_cb_C4, $7F   ; 
- D 1 - I - 0x0175E1 05:B5D1: C0        .byte con_se_cb_C0, $0F   ; 
- D 1 - I - 0x0175E3 05:B5D3: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x0175E4 05:B5D4: 04        .byte $04   ; 
- D 1 - I - 0x0175E5 05:B5D5: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x0175E6 05:B5D6: 01        .byte $01   ; 
- D 1 - I - 0x0175E7 05:B5D7: C0        .byte con_se_cb_C0, $0E   ; 
- D 1 - I - 0x0175E9 05:B5D9: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x0175EA 05:B5DA: 06        .byte $06   ; 
- D 1 - I - 0x0175EB 05:B5DB: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x0175EC 05:B5DC: D3        .byte con_se_cb_stop   ; 



off_ch_26_B5DD_06:
- D 1 - I - 0x0175ED 05:B5DD: 65        .byte $65   ; 
- D 1 - I - 0x0175EE 05:B5DE: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x0175EF 05:B5DF: 04        .byte $04   ; 
- D 1 - I - 0x0175F0 05:B5E0: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x0175F1 05:B5E1: 01        .byte $01   ; 
- D 1 - I - 0x0175F2 05:B5E2: C0        .byte con_se_cb_C0, $67   ; 
- D 1 - I - 0x0175F4 05:B5E4: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x0175F5 05:B5E5: 08        .byte $08   ; 
- D 1 - I - 0x0175F6 05:B5E6: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x0175F7 05:B5E7: D3        .byte con_se_cb_stop   ; 



_off013_B5E8_27:
- D 1 - I - 0x0175F8 05:B5E8: 40        .byte $40   ; 
- D 1 - I - 0x0175F9 05:B5E9: 05        .byte $05   ; 
- D 1 - I - 0x0175FA 05:B5EA: F3 B5     .word off_ch_27_B5F3_05
- D 1 - I - 0x0175FC 05:B5EC: 06        .byte $06   ; 
- D 1 - I - 0x0175FD 05:B5ED: 17 B6     .word off_ch_27_B617_06
- D 1 - I - 0x0175FF 05:B5EF: 07        .byte $07   ; 
- D 1 - I - 0x017600 05:B5F0: 1F B6     .word off_ch_27_B61F_07
- D 1 - I - 0x017602 05:B5F2: FF        .byte $FF   ; 



off_ch_27_B5F3_05:
- D 1 - I - 0x017603 05:B5F3: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x017604 05:B5F4: AA 8A     .word ofs_CD_8AAA
- D 1 - I - 0x017606 05:B5F6: C4        .byte con_se_cb_C4, $7F   ; 
- D 1 - I - 0x017608 05:B5F8: 79        .byte $79   ; 
- D 1 - I - 0x017609 05:B5F9: CA        .byte con_se_cb_CA   ; 
off_CE_B5FA:
- D 1 - I - 0x01760A 05:B5FA: 01        .byte $01   ; 
- D 1 - I - 0x01760B 05:B5FB: C3        .byte con_se_cb_C3, $78   ; 
- D 1 - I - 0x01760D 05:B5FD: C5        .byte con_se_cb_C5, $E2   ; 
- D 1 - I - 0x01760F 05:B5FF: CE        .byte con_se_cb_loop_1, $02   ; 
- D 1 - I - 0x017611 05:B601: FA B5     .word off_CE_B5FA
off_CE_B603:
- D 1 - I - 0x017613 05:B603: 01        .byte $01   ; 
- D 1 - I - 0x017614 05:B604: C5        .byte con_se_cb_C5, $F8   ; 
- D 1 - I - 0x017616 05:B606: C3        .byte con_se_cb_C3, $E2   ; 
- D 1 - I - 0x017618 05:B608: CE        .byte con_se_cb_loop_1, $05   ; 
- D 1 - I - 0x01761A 05:B60A: 03 B6     .word off_CE_B603
off_CE_B60C:
- D 1 - I - 0x01761C 05:B60C: 02        .byte $02   ; 
- D 1 - I - 0x01761D 05:B60D: C5        .byte con_se_cb_C5, $FA   ; 
- D 1 - I - 0x01761F 05:B60F: C3        .byte con_se_cb_C3, $32   ; 
- D 1 - I - 0x017621 05:B611: CE        .byte con_se_cb_loop_1, $02   ; 
- D 1 - I - 0x017623 05:B613: 0C B6     .word off_CE_B60C
- D 1 - I - 0x017625 05:B615: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017626 05:B616: D3        .byte con_se_cb_stop   ; 



off_ch_27_B617_06:
- D 1 - I - 0x017627 05:B617: 7A        .byte $7A   ; 
- D 1 - I - 0x017628 05:B618: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017629 05:B619: 02        .byte $02   ; 
- D 1 - I - 0x01762A 05:B61A: C1        .byte con_se_cb_C1, $FF   ; 
- D 1 - I - 0x01762C 05:B61C: 01        .byte $01   ; 
- D 1 - I - 0x01762D 05:B61D: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x01762E 05:B61E: D3        .byte con_se_cb_stop   ; 



off_ch_27_B61F_07:
- D 1 - I - 0x01762F 05:B61F: C4        .byte con_se_cb_C4, $6E   ; 
- D 1 - I - 0x017631 05:B621: 4C        .byte $4C   ; 
- D 1 - I - 0x017632 05:B622: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017633 05:B623: 02        .byte $02   ; 
- D 1 - I - 0x017634 05:B624: 47        .byte $47   ; 
- D 1 - I - 0x017635 05:B625: C4        .byte con_se_cb_C4, $3E   ; 
off_CE_B627:
- D 1 - I - 0x017637 05:B627: C5        .byte con_se_cb_C5, $EC   ; 
- D 1 - I - 0x017639 05:B629: 01        .byte $01   ; 
- D 1 - I - 0x01763A 05:B62A: CE        .byte con_se_cb_loop_1, $03   ; 
- D 1 - I - 0x01763C 05:B62C: 27 B6     .word off_CE_B627
- D 1 - I - 0x01763E 05:B62E: 01        .byte $01   ; 
- D 1 - I - 0x01763F 05:B62F: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017640 05:B630: D3        .byte con_se_cb_stop   ; 



_off013_B631_28:
- - - - - - 0x017641 05:B631: 40        .byte $40   ; 
- - - - - - 0x017642 05:B632: 05        .byte $05   ; 
- - - - - - 0x017643 05:B633: 39 B6     .word off_ch_28_B639_05
- - - - - - 0x017645 05:B635: 07        .byte $07   ; 
- - - - - - 0x017646 05:B636: 55 B6     .word off_ch_28_B655_07
- - - - - - 0x017648 05:B638: FF        .byte $FF   ; 



off_ch_28_B639_05:
- - - - - - 0x017649 05:B639: CD        .byte con_se_cb_CD   ; 
- - - - - - 0x01764A 05:B63A: A6 8A     .word ofs_CD_8AA6
- - - - - - 0x01764C 05:B63C: C4        .byte con_se_cb_C4, $32   ; 
- - - - - - 0x01764E 05:B63E: 6E        .byte $6E   ; 
- - - - - - 0x01764F 05:B63F: CA        .byte con_se_cb_CA   ; 
off_CE_B640:
- - - - - - 0x017650 05:B640: 01        .byte $01   ; 
- - - - - - 0x017651 05:B641: C5        .byte con_se_cb_C5, $08   ; 
- - - - - - 0x017653 05:B643: CE        .byte con_se_cb_loop_1, $03   ; 
- - - - - - 0x017655 05:B645: 40 B6     .word off_CE_B640
off_CE_B647:
- - - - - - 0x017657 05:B647: C5        .byte con_se_cb_C5, $F8   ; 
- - - - - - 0x017659 05:B649: C3        .byte con_se_cb_C3, $9C   ; 
- - - - - - 0x01765B 05:B64B: 01        .byte $01   ; 
- - - - - - 0x01765C 05:B64C: C3        .byte con_se_cb_C3, $14   ; 
- - - - - - 0x01765E 05:B64E: 01        .byte $01   ; 
- - - - - - 0x01765F 05:B64F: CE        .byte con_se_cb_loop_1, $04   ; 
- - - - - - 0x017661 05:B651: 47 B6     .word off_CE_B647
- - - - - - 0x017663 05:B653: CB        .byte con_se_cb_CB   ; 
- - - - - - 0x017664 05:B654: D3        .byte con_se_cb_stop   ; 



off_ch_28_B655_07:
- - - - - - 0x017665 05:B655: C4        .byte con_se_cb_C4, $43   ; 
- - - - - - 0x017667 05:B657: 41        .byte $41   ; 
- - - - - - 0x017668 05:B658: CA        .byte con_se_cb_CA, $01   ; 
off_CE_B65A:
- - - - - - 0x01766A 05:B65A: C1        .byte con_se_cb_C1, $02   ; 
- - - - - - 0x01766C 05:B65C: 01        .byte $01   ; 
- - - - - - 0x01766D 05:B65D: C5        .byte con_se_cb_C5, $0F   ; 
- - - - - - 0x01766F 05:B65F: CE        .byte con_se_cb_loop_1, $04   ; 
- - - - - - 0x017671 05:B661: 5A B6     .word off_CE_B65A
off_CE_B663:
- - - - - - 0x017673 05:B663: C1        .byte con_se_cb_C1, $02   ; 
- - - - - - 0x017675 05:B665: C5        .byte con_se_cb_C5, $F8   ; 
- - - - - - 0x017677 05:B667: 02        .byte $02   ; 
- - - - - - 0x017678 05:B668: CE        .byte con_se_cb_loop_1, $04   ; 
- - - - - - 0x01767A 05:B66A: 63 B6     .word off_CE_B663
- - - - - - 0x01767C 05:B66C: CB        .byte con_se_cb_CB   ; 
- - - - - - 0x01767D 05:B66D: D3        .byte con_se_cb_stop   ; 



_off013_B66E_29:
- D 1 - I - 0x01767E 05:B66E: 40        .byte $40   ; 
- D 1 - I - 0x01767F 05:B66F: 07        .byte $07   ; 
- D 1 - I - 0x017680 05:B670: 76 B6     .word off_ch_29_B676_07
- D 1 - I - 0x017682 05:B672: 05        .byte $05   ; 
- D 1 - I - 0x017683 05:B673: 8E B6     .word off_ch_29_B68E_05
- D 1 - I - 0x017685 05:B675: FF        .byte $FF   ; 



off_ch_29_B676_07:
- D 1 - I - 0x017686 05:B676: C4        .byte con_se_cb_C4, $3C   ; 
- D 1 - I - 0x017688 05:B678: 4A        .byte $4A   ; 
- D 1 - I - 0x017689 05:B679: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x01768A 05:B67A: 01        .byte $01   ; 
- D 1 - I - 0x01768B 05:B67B: C1        .byte con_se_cb_C1, $01   ; 
- D 1 - I - 0x01768D 05:B67D: 01        .byte $01   ; 
- D 1 - I - 0x01768E 05:B67E: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x01768F 05:B67F: 01        .byte $01   ; 
- D 1 - I - 0x017690 05:B680: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017691 05:B681: C4        .byte con_se_cb_C4, $78   ; 
- D 1 - I - 0x017693 05:B683: C1        .byte con_se_cb_C1, $FC   ; 
- D 1 - I - 0x017695 05:B685: 01        .byte $01   ; 
- D 1 - I - 0x017696 05:B686: C1        .byte con_se_cb_C1, $01   ; 
- D 1 - I - 0x017698 05:B688: 01        .byte $01   ; 
- D 1 - I - 0x017699 05:B689: C1        .byte con_se_cb_C1, $01   ; 
- D 1 - I - 0x01769B 05:B68B: 01        .byte $01   ; 
- D 1 - I - 0x01769C 05:B68C: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x01769D 05:B68D: D3        .byte con_se_cb_stop   ; 



off_ch_29_B68E_05:
- D 1 - I - 0x01769E 05:B68E: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x01769F 05:B68F: AA 8A     .word ofs_CD_8AAA
- D 1 - I - 0x0176A1 05:B691: C4        .byte con_se_cb_C4, $78   ; 
- D 1 - I - 0x0176A3 05:B693: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x0176A4 05:B694: 45        .byte $45   ; 
- D 1 - I - 0x0176A5 05:B695: 01        .byte $01   ; 
- D 1 - I - 0x0176A6 05:B696: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x0176A7 05:B697: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x0176A8 05:B698: 43        .byte $43   ; 
- D 1 - I - 0x0176A9 05:B699: 01        .byte $01   ; 
- D 1 - I - 0x0176AA 05:B69A: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x0176AB 05:B69B: 01        .byte $01   ; 
- D 1 - I - 0x0176AC 05:B69C: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x0176AD 05:B69D: 42        .byte $42   ; 
- D 1 - I - 0x0176AE 05:B69E: 01        .byte $01   ; 
- D 1 - I - 0x0176AF 05:B69F: 43        .byte $43   ; 
- D 1 - I - 0x0176B0 05:B6A0: 01        .byte $01   ; 
- D 1 - I - 0x0176B1 05:B6A1: 45        .byte $45   ; 
- D 1 - I - 0x0176B2 05:B6A2: 01        .byte $01   ; 
- D 1 - I - 0x0176B3 05:B6A3: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x0176B4 05:B6A4: D3        .byte con_se_cb_stop   ; 



_off013_B6A5_2A:
- - - - - - 0x0176B5 05:B6A5: 40        .byte $40   ; 
- - - - - - 0x0176B6 05:B6A6: 05        .byte $05   ; 
- - - - - - 0x0176B7 05:B6A7: AD B6     .word off_ch_2A_B6AD_05
- - - - - - 0x0176B9 05:B6A9: 04        .byte $04   ; 
- - - - - - 0x0176BA 05:B6AA: BA B6     .word off_ch_2A_B6BA_04
- - - - - - 0x0176BC 05:B6AC: FF        .byte $FF   ; 



off_ch_2A_B6AD_05:
- - - - - - 0x0176BD 05:B6AD: CD        .byte con_se_cb_CD   ; 
- - - - - - 0x0176BE 05:B6AE: A6 8A     .word ofs_CD_8AA6
- - - - - - 0x0176C0 05:B6B0: C4        .byte con_se_cb_C4, $7F   ; 
- - - - - - 0x0176C2 05:B6B2: 4A        .byte $4A   ; 
- - - - - - 0x0176C3 05:B6B3: CA        .byte con_se_cb_CA   ; 
- - - - - - 0x0176C4 05:B6B4: 01        .byte $01   ; 
- - - - - - 0x0176C5 05:B6B5: D4        .byte con_se_cb_D4, $9C   ; 
- - - - - - 0x0176C7 05:B6B7: 07        .byte $07   ; 
- - - - - - 0x0176C8 05:B6B8: CB        .byte con_se_cb_CB   ; 
- - - - - - 0x0176C9 05:B6B9: D3        .byte con_se_cb_stop   ; 



off_ch_2A_B6BA_04:
- - - - - - 0x0176CA 05:B6BA: CD        .byte con_se_cb_CD   ; 
- - - - - - 0x0176CB 05:B6BB: A6 8A     .word ofs_CD_8AA6
- - - - - - 0x0176CD 05:B6BD: C4        .byte con_se_cb_C4, $6E   ; 
- - - - - - 0x0176CF 05:B6BF: 4A        .byte $4A   ; 
- - - - - - 0x0176D0 05:B6C0: 03        .byte $03   ; 
- - - - - - 0x0176D1 05:B6C1: CA        .byte con_se_cb_CA   ; 
- - - - - - 0x0176D2 05:B6C2: 01        .byte $01   ; 
- - - - - - 0x0176D3 05:B6C3: D4        .byte con_se_cb_D4, $9C   ; 
- - - - - - 0x0176D5 05:B6C5: 07        .byte $07   ; 
- - - - - - 0x0176D6 05:B6C6: CB        .byte con_se_cb_CB   ; 
- - - - - - 0x0176D7 05:B6C7: D3        .byte con_se_cb_stop   ; 



_off013_B6C8_2B:
- - - - - - 0x0176D8 05:B6C8: 40        .byte $40   ; 
- - - - - - 0x0176D9 05:B6C9: 07        .byte $07   ; 
- - - - - - 0x0176DA 05:B6CA: CD B6     .word off_ch_2B_B6CD_07
- - - - - - 0x0176DC 05:B6CC: FF        .byte $FF   ; 



off_ch_2B_B6CD_07:
- - - - - - 0x0176DD 05:B6CD: C4        .byte con_se_cb_C4, $3C   ; 
- - - - - - 0x0176DF 05:B6CF: 4A        .byte $4A   ; 
off_CE_B6D0:
- - - - - - 0x0176E0 05:B6D0: CA        .byte con_se_cb_CA   ; 
- - - - - - 0x0176E1 05:B6D1: 01        .byte $01   ; 
- - - - - - 0x0176E2 05:B6D2: C1        .byte con_se_cb_C1, $01   ; 
- - - - - - 0x0176E4 05:B6D4: C5        .byte con_se_cb_C5, $0F   ; 
- - - - - - 0x0176E6 05:B6D6: 01        .byte $01   ; 
- - - - - - 0x0176E7 05:B6D7: C1        .byte con_se_cb_C1, $01   ; 
- - - - - - 0x0176E9 05:B6D9: C5        .byte con_se_cb_C5, $0F   ; 
- - - - - - 0x0176EB 05:B6DB: 01        .byte $01   ; 
off_CF_B6DC:
- - - - - - 0x0176EC 05:B6DC: C1        .byte con_se_cb_C1, $FF   ; 
- - - - - - 0x0176EE 05:B6DE: C5        .byte con_se_cb_C5, $FA   ; 
- - - - - - 0x0176F0 05:B6E0: 01        .byte $01   ; 
- - - - - - 0x0176F1 05:B6E1: CF        .byte con_se_cb_loop_2, $06   ; 
- - - - - - 0x0176F3 05:B6E3: DC B6     .word off_CF_B6DC
- - - - - - 0x0176F5 05:B6E5: CB        .byte con_se_cb_CB   ; 
- - - - - - 0x0176F6 05:B6E6: 01        .byte $01   ; 
- - - - - - 0x0176F7 05:B6E7: 4A        .byte $4A   ; 
- - - - - - 0x0176F8 05:B6E8: C4        .byte con_se_cb_C4, $3C   ; 
- - - - - - 0x0176FA 05:B6EA: CE        .byte con_se_cb_loop_1, $08   ; 
- - - - - - 0x0176FC 05:B6EC: D0 B6     .word off_CE_B6D0
- - - - - - 0x0176FE 05:B6EE: CB        .byte con_se_cb_CB   ; 
- - - - - - 0x0176FF 05:B6EF: D3        .byte con_se_cb_stop   ; 



_off013_B6F0_2C:
- - - - - - 0x017700 05:B6F0: 40        .byte $40   ; 
- - - - - - 0x017701 05:B6F1: 04        .byte $04   ; 
- - - - - - 0x017702 05:B6F2: F5 B6     .word off_ch_2C_B6F5_04
- - - - - - 0x017704 05:B6F4: FF        .byte $FF   ; 



off_ch_2C_B6F5_04:
- - - - - - 0x017705 05:B6F5: CD        .byte con_se_cb_CD   ; 
- - - - - - 0x017706 05:B6F6: A6 8A     .word ofs_CD_8AA6
- - - - - - 0x017708 05:B6F8: C4        .byte con_se_cb_C4, $7F   ; 
- - - - - - 0x01770A 05:B6FA: C0        .byte con_se_cb_C0, $43   ; 
- - - - - - 0x01770C 05:B6FC: D4        .byte con_se_cb_D4, $8C   ; 
- - - - - - 0x01770E 05:B6FE: CA        .byte con_se_cb_CA   ; 
- - - - - - 0x01770F 05:B6FF: 04        .byte $04   ; 
- - - - - - 0x017710 05:B700: D4        .byte con_se_cb_D4, $84   ; 
- - - - - - 0x017712 05:B702: 07        .byte $07   ; 
- - - - - - 0x017713 05:B703: CB        .byte con_se_cb_CB   ; 
- - - - - - 0x017714 05:B704: D3        .byte con_se_cb_stop   ; 



_off013_B705_2D:
- D 1 - I - 0x017715 05:B705: 40        .byte $40   ; 
- D 1 - I - 0x017716 05:B706: 05        .byte $05   ; 
- D 1 - I - 0x017717 05:B707: 0D B7     .word off_ch_2D_B70D_05
- D 1 - I - 0x017719 05:B709: 04        .byte $04   ; 
- D 1 - I - 0x01771A 05:B70A: 22 B7     .word off_ch_2D_B722_04
- D 1 - I - 0x01771C 05:B70C: FF        .byte $FF   ; 



off_ch_2D_B70D_05:
- D 1 - I - 0x01771D 05:B70D: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x01771E 05:B70E: A6 8A     .word ofs_CD_8AA6
- D 1 - I - 0x017720 05:B710: C4        .byte con_se_cb_C4, $7F   ; 
- D 1 - I - 0x017722 05:B712: C0        .byte con_se_cb_C0, $06   ; 
off_CE_B714:
- D 1 - I - 0x017724 05:B714: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017725 05:B715: C1        .byte con_se_cb_C1, $FF   ; 
- D 1 - I - 0x017727 05:B717: 01        .byte $01   ; 
- D 1 - I - 0x017728 05:B718: C1        .byte con_se_cb_C1, $02   ; 
- D 1 - I - 0x01772A 05:B71A: 02        .byte $02   ; 
- D 1 - I - 0x01772B 05:B71B: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x01772C 05:B71C: 01        .byte $01   ; 
- D 1 - I - 0x01772D 05:B71D: CE        .byte con_se_cb_loop_1, $02   ; 
- D 1 - I - 0x01772F 05:B71F: 14 B7     .word off_CE_B714
- D 1 - I - 0x017731 05:B721: D3        .byte con_se_cb_stop   ; 



off_ch_2D_B722_04:
- D 1 - I - 0x017732 05:B722: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x017733 05:B723: A6 8A     .word ofs_CD_8AA6
- D 1 - I - 0x017735 05:B725: C4        .byte con_se_cb_C4, $46   ; 
- D 1 - I - 0x017737 05:B727: C0        .byte con_se_cb_C0, $09   ; 
off_CE_B729:
- D 1 - I - 0x017739 05:B729: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x01773A 05:B72A: C1        .byte con_se_cb_C1, $FF   ; 
- D 1 - I - 0x01773C 05:B72C: 01        .byte $01   ; 
- D 1 - I - 0x01773D 05:B72D: C1        .byte con_se_cb_C1, $01   ; 
- D 1 - I - 0x01773F 05:B72F: 02        .byte $02   ; 
- D 1 - I - 0x017740 05:B730: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017741 05:B731: 01        .byte $01   ; 
- D 1 - I - 0x017742 05:B732: CE        .byte con_se_cb_loop_1, $02   ; 
- D 1 - I - 0x017744 05:B734: 29 B7     .word off_CE_B729
- D 1 - I - 0x017746 05:B736: D3        .byte con_se_cb_stop   ; 



_off013_B737_2E:
- D 1 - I - 0x017747 05:B737: 40        .byte $40   ; 
- D 1 - I - 0x017748 05:B738: 07        .byte $07   ; 
- D 1 - I - 0x017749 05:B739: 3C B7     .word off_ch_2E_B73C_07
- D 1 - I - 0x01774B 05:B73B: FF        .byte $FF   ; 



off_ch_2E_B73C_07:
- D 1 - I - 0x01774C 05:B73C: C4        .byte con_se_cb_C4, $32   ; 
- D 1 - I - 0x01774E 05:B73E: C0        .byte con_se_cb_C0, $48   ; 
- D 1 - I - 0x017750 05:B740: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017751 05:B741: 01        .byte $01   ; 
off_CE_B742:
- D 1 - I - 0x017752 05:B742: C1        .byte con_se_cb_C1, $01   ; 
- D 1 - I - 0x017754 05:B744: C5        .byte con_se_cb_C5, $0F   ; 
- D 1 - I - 0x017756 05:B746: 01        .byte $01   ; 
- D 1 - I - 0x017757 05:B747: CE        .byte con_se_cb_loop_1, $04   ; 
- D 1 - I - 0x017759 05:B749: 42 B7     .word off_CE_B742
off_CE_B74B:
- D 1 - I - 0x01775B 05:B74B: C1        .byte con_se_cb_C1, $FF   ; 
- D 1 - I - 0x01775D 05:B74D: C5        .byte con_se_cb_C5, $FA   ; 
- D 1 - I - 0x01775F 05:B74F: 01        .byte $01   ; 
- D 1 - I - 0x017760 05:B750: CE        .byte con_se_cb_loop_1, $06   ; 
- D 1 - I - 0x017762 05:B752: 4B B7     .word off_CE_B74B
- D 1 - I - 0x017764 05:B754: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017765 05:B755: D3        .byte con_se_cb_stop   ; 



_off013_B756_2F:
- - - - - - 0x017766 05:B756: 40        .byte $40   ; 
- - - - - - 0x017767 05:B757: 04        .byte $04   ; 
- - - - - - 0x017768 05:B758: 68 B7     .word off_ch_2F_B768_04
- - - - - - 0x01776A 05:B75A: 05        .byte $05   ; 
- - - - - - 0x01776B 05:B75B: 75 B7     .word off_ch_2F_B775_05
- - - - - - 0x01776D 05:B75D: 07        .byte $07   ; 
- - - - - - 0x01776E 05:B75E: 61 B7     .word off_ch_2F_B761_07
- - - - - - 0x017770 05:B760: FF        .byte $FF   ; 



off_ch_2F_B761_07:
- - - - - - 0x017771 05:B761: C4        .byte con_se_cb_C4, $64   ; 
- - - - - - 0x017773 05:B763: 44        .byte $44   ; 
- - - - - - 0x017774 05:B764: CA        .byte con_se_cb_CA   ; 
- - - - - - 0x017775 05:B765: 01        .byte $01   ; 
- - - - - - 0x017776 05:B766: CB        .byte con_se_cb_CB   ; 
- - - - - - 0x017777 05:B767: D3        .byte con_se_cb_stop   ; 



off_ch_2F_B768_04:
- - - - - - 0x017778 05:B768: CD        .byte con_se_cb_CD   ; 
- - - - - - 0x017779 05:B769: B2 8A     .word ofs_CD_8AB2
- - - - - - 0x01777B 05:B76B: C4        .byte con_se_cb_C4, $78   ; 
- - - - - - 0x01777D 05:B76D: 70        .byte $70   ; 
- - - - - - 0x01777E 05:B76E: CA        .byte con_se_cb_CA   ; 
- - - - - - 0x01777F 05:B76F: 01        .byte $01   ; 
- - - - - - 0x017780 05:B770: CB        .byte con_se_cb_CB   ; 
- - - - - - 0x017781 05:B771: 01        .byte $01   ; 
- - - - - - 0x017782 05:B772: D0        .byte con_se_cb_jmp   ; 
- - - - - - 0x017783 05:B773: 7F B7     .word loc_D0_B77F



off_ch_2F_B775_05:
- - - - - - 0x017785 05:B775: CD        .byte con_se_cb_CD   ; 
- - - - - - 0x017786 05:B776: B2 8A     .word ofs_CD_8AB2
- - - - - - 0x017788 05:B778: C4        .byte con_se_cb_C4, $78   ; 
- - - - - - 0x01778A 05:B77A: 7B        .byte $7B   ; 
- - - - - - 0x01778B 05:B77B: CA        .byte con_se_cb_CA   ; 
- - - - - - 0x01778C 05:B77C: 01        .byte $01   ; 
- - - - - - 0x01778D 05:B77D: CB        .byte con_se_cb_CB   ; 
- - - - - - 0x01778E 05:B77E: 01        .byte $01   ; 
loc_D0_B77F:
- - - - - - 0x01778F 05:B77F: CD        .byte con_se_cb_CD   ; 
- - - - - - 0x017790 05:B780: AA 8A     .word ofs_CD_8AAA
- - - - - - 0x017792 05:B782: C1        .byte con_se_cb_C1, $03   ; 
- - - - - - 0x017794 05:B784: CA        .byte con_se_cb_CA   ; 
off_CE_B785:
- - - - - - 0x017795 05:B785: C3        .byte con_se_cb_C3, $64   ; 
- - - - - - 0x017797 05:B787: 01        .byte $01   ; 
- - - - - - 0x017798 05:B788: CE        .byte con_se_cb_loop_1, $02   ; 
- - - - - - 0x01779A 05:B78A: 85 B7     .word off_CE_B785
off_CE_B78C:
- - - - - - 0x01779C 05:B78C: C5        .byte con_se_cb_C5, $F1   ; 
- - - - - - 0x01779E 05:B78E: C3        .byte con_se_cb_C3, $FE   ; 
- - - - - - 0x0177A0 05:B790: 01        .byte $01   ; 
- - - - - - 0x0177A1 05:B791: C5        .byte con_se_cb_C5, $F1   ; 
- - - - - - 0x0177A3 05:B793: C3        .byte con_se_cb_C3, $02   ; 
- - - - - - 0x0177A5 05:B795: 01        .byte $01   ; 
- - - - - - 0x0177A6 05:B796: CE        .byte con_se_cb_loop_1, $02   ; 
- - - - - - 0x0177A8 05:B798: 8C B7     .word off_CE_B78C
off_CF_B79A:
- - - - - - 0x0177AA 05:B79A: C5        .byte con_se_cb_C5, $FB   ; 
- - - - - - 0x0177AC 05:B79C: 01        .byte $01   ; 
- - - - - - 0x0177AD 05:B79D: CF        .byte con_se_cb_loop_2, $0A   ; 
- - - - - - 0x0177AF 05:B79F: 9A B7     .word off_CF_B79A
- - - - - - 0x0177B1 05:B7A1: CB        .byte con_se_cb_CB   ; 
- - - - - - 0x0177B2 05:B7A2: D3        .byte con_se_cb_stop   ; 



_off013_B7A3_30:
- - - - - - 0x0177B3 05:B7A3: 40        .byte $40   ; 
- - - - - - 0x0177B4 05:B7A4: 04        .byte $04   ; 
- - - - - - 0x0177B5 05:B7A5: BB B2     .word off_ch_30_B2BB_04
- - - - - - 0x0177B7 05:B7A7: 05        .byte $05   ; 
- - - - - - 0x0177B8 05:B7A8: BB B2     .word off_ch_30_B2BB_05
- - - - - - 0x0177BA 05:B7AA: 06        .byte $06   ; 
- - - - - - 0x0177BB 05:B7AB: BB B2     .word off_ch_30_B2BB_06
- - - - - - 0x0177BD 05:B7AD: FF        .byte $FF   ; 



_off013_B7AE_31:
- - - - - - 0x0177BE 05:B7AE: 40        .byte $40   ; 
- - - - - - 0x0177BF 05:B7AF: 07        .byte $07   ; 
- - - - - - 0x0177C0 05:B7B0: B3 B7     .word off_ch_31_B7B3_07
- - - - - - 0x0177C2 05:B7B2: FF        .byte $FF   ; 



off_ch_31_B7B3_07:
- - - - - - 0x0177C3 05:B7B3: C4        .byte con_se_cb_C4, $7F   ; 
- - - - - - 0x0177C5 05:B7B5: 4A        .byte $4A   ; 
- - - - - - 0x0177C6 05:B7B6: CA        .byte con_se_cb_CA   ; 
- - - - - - 0x0177C7 05:B7B7: 01        .byte $01   ; 
- - - - - - 0x0177C8 05:B7B8: CB        .byte con_se_cb_CB   ; 
- - - - - - 0x0177C9 05:B7B9: 01        .byte $01   ; 
- - - - - - 0x0177CA 05:B7BA: C4        .byte con_se_cb_C4, $43   ; 
- - - - - - 0x0177CC 05:B7BC: CA        .byte con_se_cb_CA   ; 
off_CE_B7BD:
- - - - - - 0x0177CD 05:B7BD: C1        .byte con_se_cb_C1, $FE   ; 
- - - - - - 0x0177CF 05:B7BF: C5        .byte con_se_cb_C5, $14   ; 
- - - - - - 0x0177D1 05:B7C1: 01        .byte $01   ; 
- - - - - - 0x0177D2 05:B7C2: CE        .byte con_se_cb_loop_1, $03   ; 
- - - - - - 0x0177D4 05:B7C4: BD B7     .word off_CE_B7BD
off_CE_B7C6:
- - - - - - 0x0177D6 05:B7C6: C1        .byte con_se_cb_C1, $01   ; 
- - - - - - 0x0177D8 05:B7C8: C5        .byte con_se_cb_C5, $F1   ; 
- - - - - - 0x0177DA 05:B7CA: 02        .byte $02   ; 
- - - - - - 0x0177DB 05:B7CB: CE        .byte con_se_cb_loop_1, $06   ; 
- - - - - - 0x0177DD 05:B7CD: C6 B7     .word off_CE_B7C6
- - - - - - 0x0177DF 05:B7CF: CB        .byte con_se_cb_CB   ; 
- - - - - - 0x0177E0 05:B7D0: D3        .byte con_se_cb_stop   ; 



_off013_B7D1_32:
- - - - - - 0x0177E1 05:B7D1: 40        .byte $40   ; 
- - - - - - 0x0177E2 05:B7D2: 07        .byte $07   ; 
- - - - - - 0x0177E3 05:B7D3: D6 B7     .word off_ch_32_B7D6_07
- - - - - - 0x0177E5 05:B7D5: FF        .byte $FF   ; 



off_ch_32_B7D6_07:
- - - - - - 0x0177E6 05:B7D6: C4        .byte con_se_cb_C4, $7F   ; 
- - - - - - 0x0177E8 05:B7D8: 43        .byte $43   ; 
- - - - - - 0x0177E9 05:B7D9: CA        .byte con_se_cb_CA   ; 
- - - - - - 0x0177EA 05:B7DA: 01        .byte $01   ; 
- - - - - - 0x0177EB 05:B7DB: 49        .byte $49   ; 
- - - - - - 0x0177EC 05:B7DC: 01        .byte $01   ; 
- - - - - - 0x0177ED 05:B7DD: 44        .byte $44   ; 
- - - - - - 0x0177EE 05:B7DE: CB        .byte con_se_cb_CB   ; 
- - - - - - 0x0177EF 05:B7DF: 01        .byte $01   ; 
- - - - - - 0x0177F0 05:B7E0: C4        .byte con_se_cb_C4, $64   ; 
- - - - - - 0x0177F2 05:B7E2: CA        .byte con_se_cb_CA   ; 
off_CE_B7E3:
- - - - - - 0x0177F3 05:B7E3: 01        .byte $01   ; 
- - - - - - 0x0177F4 05:B7E4: C5        .byte con_se_cb_C5, $F1   ; 
- - - - - - 0x0177F6 05:B7E6: CE        .byte con_se_cb_loop_1, $04   ; 
- - - - - - 0x0177F8 05:B7E8: E3 B7     .word off_CE_B7E3
- - - - - - 0x0177FA 05:B7EA: CB        .byte con_se_cb_CB   ; 
- - - - - - 0x0177FB 05:B7EB: D3        .byte con_se_cb_stop   ; 



_off013_B7EC_33:
- - - - - - 0x0177FC 05:B7EC: 40        .byte $40   ; 
- - - - - - 0x0177FD 05:B7ED: 07        .byte $07   ; 
- - - - - - 0x0177FE 05:B7EE: F4 B7     .word off_ch_33_B7F4_07
- - - - - - 0x017800 05:B7F0: 05        .byte $05   ; 
- - - - - - 0x017801 05:B7F1: 09 B8     .word off_ch_33_B809_05
- - - - - - 0x017803 05:B7F3: FF        .byte $FF   ; 



off_ch_33_B7F4_07:
- - - - - - 0x017804 05:B7F4: C4        .byte con_se_cb_C4, $6E   ; 
- - - - - - 0x017806 05:B7F6: C0        .byte con_se_cb_C0, $0E   ; 
- - - - - - 0x017808 05:B7F8: CA        .byte con_se_cb_CA   ; 
off_CE_B7F9:
- - - - - - 0x017809 05:B7F9: C1        .byte con_se_cb_C1, $FF   ; 
- - - - - - 0x01780B 05:B7FB: 01        .byte $01   ; 
- - - - - - 0x01780C 05:B7FC: CE        .byte con_se_cb_loop_1, $03   ; 
- - - - - - 0x01780E 05:B7FE: F9 B7     .word off_CE_B7F9
off_CE_B800:
- - - - - - 0x017810 05:B800: 01        .byte $01   ; 
- - - - - - 0x017811 05:B801: C5        .byte con_se_cb_C5, $FD   ; 
- - - - - - 0x017813 05:B803: CE        .byte con_se_cb_loop_1, $08   ; 
- - - - - - 0x017815 05:B805: 00 B8     .word off_CE_B800
- - - - - - 0x017817 05:B807: CB        .byte con_se_cb_CB   ; 
- - - - - - 0x017818 05:B808: D3        .byte con_se_cb_stop   ; 



off_ch_33_B809_05:
- - - - - - 0x017819 05:B809: CD        .byte con_se_cb_CD   ; 
- - - - - - 0x01781A 05:B80A: A6 8A     .word ofs_CD_8AA6
- - - - - - 0x01781C 05:B80C: C4        .byte con_se_cb_C4, $5A   ; 
- - - - - - 0x01781E 05:B80E: CA        .byte con_se_cb_CA   ; 
- - - - - - 0x01781F 05:B80F: 4C        .byte $4C   ; 
- - - - - - 0x017820 05:B810: 01        .byte $01   ; 
- - - - - - 0x017821 05:B811: CB        .byte con_se_cb_CB   ; 
- - - - - - 0x017822 05:B812: CA        .byte con_se_cb_CA   ; 
- - - - - - 0x017823 05:B813: 47        .byte $47   ; 
- - - - - - 0x017824 05:B814: 01        .byte $01   ; 
- - - - - - 0x017825 05:B815: CB        .byte con_se_cb_CB   ; 
- - - - - - 0x017826 05:B816: CA        .byte con_se_cb_CA   ; 
- - - - - - 0x017827 05:B817: 48        .byte $48   ; 
- - - - - - 0x017828 05:B818: 01        .byte $01   ; 
- - - - - - 0x017829 05:B819: CB        .byte con_se_cb_CB   ; 
- - - - - - 0x01782A 05:B81A: D3        .byte con_se_cb_stop   ; 



_off013_B81B_34:
- - - - - - 0x01782B 05:B81B: 40        .byte $40   ; 
- - - - - - 0x01782C 05:B81C: 07        .byte $07   ; 
- - - - - - 0x01782D 05:B81D: 20 B8     .word off_ch_34_B820_07
- - - - - - 0x01782F 05:B81F: FF        .byte $FF   ; 



off_ch_34_B820_07:
- - - - - - 0x017830 05:B820: C4        .byte con_se_cb_C4, $7F   ; 
- - - - - - 0x017832 05:B822: 43        .byte $43   ; 
- - - - - - 0x017833 05:B823: CA        .byte con_se_cb_CA   ; 
- - - - - - 0x017834 05:B824: 01        .byte $01   ; 
- - - - - - 0x017835 05:B825: 49        .byte $49   ; 
- - - - - - 0x017836 05:B826: 01        .byte $01   ; 
- - - - - - 0x017837 05:B827: 44        .byte $44   ; 
- - - - - - 0x017838 05:B828: CB        .byte con_se_cb_CB   ; 
- - - - - - 0x017839 05:B829: 01        .byte $01   ; 
- - - - - - 0x01783A 05:B82A: C4        .byte con_se_cb_C4, $64   ; 
- - - - - - 0x01783C 05:B82C: CA        .byte con_se_cb_CA   ; 
off_CE_B82D:
- - - - - - 0x01783D 05:B82D: 01        .byte $01   ; 
- - - - - - 0x01783E 05:B82E: C5        .byte con_se_cb_C5, $F1   ; 
- - - - - - 0x017840 05:B830: CE        .byte con_se_cb_loop_1, $04   ; 
- - - - - - 0x017842 05:B832: 2D B8     .word off_CE_B82D
- - - - - - 0x017844 05:B834: CB        .byte con_se_cb_CB   ; 
- - - - - - 0x017845 05:B835: D3        .byte con_se_cb_stop   ; 



_off013_B836_35:
- - - - - - 0x017846 05:B836: 40        .byte $40   ; 
- - - - - - 0x017847 05:B837: 07        .byte $07   ; 
- - - - - - 0x017848 05:B838: 3E B8     .word off_ch_35_B83E_07
- - - - - - 0x01784A 05:B83A: 05        .byte $05   ; 
- - - - - - 0x01784B 05:B83B: 58 B8     .word off_ch_35_B858_05
- - - - - - 0x01784D 05:B83D: FF        .byte $FF   ; 



off_ch_35_B83E_07:
- - - - - - 0x01784E 05:B83E: C4        .byte con_se_cb_C4, $7F   ; 
- - - - - - 0x017850 05:B840: 4E        .byte $4E   ; 
- - - - - - 0x017851 05:B841: CA        .byte con_se_cb_CA   ; 
- - - - - - 0x017852 05:B842: 05        .byte $05   ; 
- - - - - - 0x017853 05:B843: CB        .byte con_se_cb_CB   ; 
- - - - - - 0x017854 05:B844: 02        .byte $02   ; 
- - - - - - 0x017855 05:B845: CA        .byte con_se_cb_CA   ; 
off_CE_B846:
- - - - - - 0x017856 05:B846: C1        .byte con_se_cb_C1, $FF   ; 
- - - - - - 0x017858 05:B848: 01        .byte $01   ; 
- - - - - - 0x017859 05:B849: CE        .byte con_se_cb_loop_1, $0C   ; 
- - - - - - 0x01785B 05:B84B: 46 B8     .word off_CE_B846
off_CE_B84D:
- - - - - - 0x01785D 05:B84D: C1        .byte con_se_cb_C1, $01   ; 
- - - - - - 0x01785F 05:B84F: C5        .byte con_se_cb_C5, $FA   ; 
- - - - - - 0x017861 05:B851: 03        .byte $03   ; 
- - - - - - 0x017862 05:B852: CE        .byte con_se_cb_loop_1, $0E   ; 
- - - - - - 0x017864 05:B854: 4D B8     .word off_CE_B84D
- - - - - - 0x017866 05:B856: CB        .byte con_se_cb_CB   ; 
- - - - - - 0x017867 05:B857: D3        .byte con_se_cb_stop   ; 



off_ch_35_B858_05:
- - - - - - 0x017868 05:B858: CD        .byte con_se_cb_CD   ; 
- - - - - - 0x017869 05:B859: A6 8A     .word ofs_CD_8AA6
- - - - - - 0x01786B 05:B85B: C4        .byte con_se_cb_C4, $7F   ; 
- - - - - - 0x01786D 05:B85D: CA        .byte con_se_cb_CA   ; 
- - - - - - 0x01786E 05:B85E: 47        .byte $47   ; 
- - - - - - 0x01786F 05:B85F: 02        .byte $02   ; 
- - - - - - 0x017870 05:B860: CB        .byte con_se_cb_CB   ; 
- - - - - - 0x017871 05:B861: 02        .byte $02   ; 
- - - - - - 0x017872 05:B862: CA        .byte con_se_cb_CA   ; 
- - - - - - 0x017873 05:B863: 43        .byte $43   ; 
- - - - - - 0x017874 05:B864: 02        .byte $02   ; 
- - - - - - 0x017875 05:B865: CB        .byte con_se_cb_CB   ; 
- - - - - - 0x017876 05:B866: CA        .byte con_se_cb_CA   ; 
- - - - - - 0x017877 05:B867: 45        .byte $45   ; 
- - - - - - 0x017878 05:B868: 02        .byte $02   ; 
- - - - - - 0x017879 05:B869: CB        .byte con_se_cb_CB   ; 
- - - - - - 0x01787A 05:B86A: CA        .byte con_se_cb_CA   ; 
- - - - - - 0x01787B 05:B86B: 40        .byte $40   ; 
- - - - - - 0x01787C 05:B86C: 02        .byte $02   ; 
- - - - - - 0x01787D 05:B86D: CB        .byte con_se_cb_CB   ; 
- - - - - - 0x01787E 05:B86E: CA        .byte con_se_cb_CA   ; 
- - - - - - 0x01787F 05:B86F: 42        .byte $42   ; 
- - - - - - 0x017880 05:B870: 01        .byte $01   ; 
- - - - - - 0x017881 05:B871: CB        .byte con_se_cb_CB   ; 
- - - - - - 0x017882 05:B872: CA        .byte con_se_cb_CA   ; 
- - - - - - 0x017883 05:B873: 46        .byte $46   ; 
- - - - - - 0x017884 05:B874: 01        .byte $01   ; 
- - - - - - 0x017885 05:B875: CB        .byte con_se_cb_CB   ; 
- - - - - - 0x017886 05:B876: D3        .byte con_se_cb_stop   ; 



_off013_B877_36:
- - - - - - 0x017887 05:B877: 40        .byte $40   ; 
- - - - - - 0x017888 05:B878: 07        .byte $07   ; 
- - - - - - 0x017889 05:B879: 7C B8     .word off_ch_36_B87C_07
- - - - - - 0x01788B 05:B87B: FF        .byte $FF   ; 



off_ch_36_B87C_07:
- - - - - - 0x01788C 05:B87C: C4        .byte con_se_cb_C4, $1B   ; 
- - - - - - 0x01788E 05:B87E: 4A        .byte $4A   ; 
- - - - - - 0x01788F 05:B87F: CA        .byte con_se_cb_CA   ; 
- - - - - - 0x017890 05:B880: 01        .byte $01   ; 
off_CE_B881:
- - - - - - 0x017891 05:B881: C1        .byte con_se_cb_C1, $FF   ; 
- - - - - - 0x017893 05:B883: C5        .byte con_se_cb_C5, $14   ; 
- - - - - - 0x017895 05:B885: 01        .byte $01   ; 
- - - - - - 0x017896 05:B886: CE        .byte con_se_cb_loop_1, $05   ; 
- - - - - - 0x017898 05:B888: 81 B8     .word off_CE_B881
off_CE_B88A:
- - - - - - 0x01789A 05:B88A: C1        .byte con_se_cb_C1, $01   ; 
- - - - - - 0x01789C 05:B88C: 02        .byte $02   ; 
- - - - - - 0x01789D 05:B88D: C5        .byte con_se_cb_C5, $F1   ; 
- - - - - - 0x01789F 05:B88F: 02        .byte $02   ; 
- - - - - - 0x0178A0 05:B890: CE        .byte con_se_cb_loop_1, $06   ; 
- - - - - - 0x0178A2 05:B892: 8A B8     .word off_CE_B88A
- - - - - - 0x0178A4 05:B894: CB        .byte con_se_cb_CB   ; 
- - - - - - 0x0178A5 05:B895: D3        .byte con_se_cb_stop   ; 



_off013_B896_37:
- D 1 - I - 0x0178A6 05:B896: 40        .byte $40   ; 
- D 1 - I - 0x0178A7 05:B897: 07        .byte $07   ; 
- D 1 - I - 0x0178A8 05:B898: 9B B8     .word off_ch_37_B89B_07
- D 1 - I - 0x0178AA 05:B89A: FF        .byte $FF   ; 



off_ch_37_B89B_07:
- D 1 - I - 0x0178AB 05:B89B: C0        .byte con_se_cb_C0, $07   ; 
- D 1 - I - 0x0178AD 05:B89D: C4        .byte con_se_cb_C4, $64   ; 
- D 1 - I - 0x0178AF 05:B89F: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x0178B0 05:B8A0: 01        .byte $01   ; 
- D 1 - I - 0x0178B1 05:B8A1: C1        .byte con_se_cb_C1, $06   ; 
off_CE_B8A3:
- D 1 - I - 0x0178B3 05:B8A3: C5        .byte con_se_cb_C5, $05   ; 
- D 1 - I - 0x0178B5 05:B8A5: 01        .byte $01   ; 
- D 1 - I - 0x0178B6 05:B8A6: CE        .byte con_se_cb_loop_1, $04   ; 
- D 1 - I - 0x0178B8 05:B8A8: A3 B8     .word off_CE_B8A3
off_CF_B8AA:
- D 1 - I - 0x0178BA 05:B8AA: C5        .byte con_se_cb_C5, $F6   ; 
- D 1 - I - 0x0178BC 05:B8AC: C1        .byte con_se_cb_C1, $01   ; 
- D 1 - I - 0x0178BE 05:B8AE: CF        .byte con_se_cb_loop_2, $08   ; 
- D 1 - I - 0x0178C0 05:B8B0: AA B8     .word off_CF_B8AA
- D 1 - I - 0x0178C2 05:B8B2: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x0178C3 05:B8B3: D3        .byte con_se_cb_stop   ; 



_off013_B8B4_38:
- D 1 - I - 0x0178C4 05:B8B4: 40        .byte $40   ; 
- D 1 - I - 0x0178C5 05:B8B5: 04        .byte $04   ; 
- D 1 - I - 0x0178C6 05:B8B6: D3 B8     .word off_ch_38_B8D3_04
- D 1 - I - 0x0178C8 05:B8B8: 05        .byte $05   ; 
- D 1 - I - 0x0178C9 05:B8B9: F2 B8     .word off_ch_38_B8F2_05
- D 1 - I - 0x0178CB 05:B8BB: 07        .byte $07   ; 
- D 1 - I - 0x0178CC 05:B8BC: BF B8     .word off_ch_38_B8BF_07
- D 1 - I - 0x0178CE 05:B8BE: FF        .byte $FF   ; 



off_ch_38_B8BF_07:
- D 1 - I - 0x0178CF 05:B8BF: 44        .byte $44   ; 
- D 1 - I - 0x0178D0 05:B8C0: C4        .byte con_se_cb_C4, $00   ; 
- D 1 - I - 0x0178D2 05:B8C2: CA        .byte con_se_cb_CA   ; 
off_CE_B8C3:
- D 1 - I - 0x0178D3 05:B8C3: C5        .byte con_se_cb_C5, $01   ; 
- D 1 - I - 0x0178D5 05:B8C5: 01        .byte $01   ; 
- D 1 - I - 0x0178D6 05:B8C6: CE        .byte con_se_cb_loop_1, $78   ; 
- D 1 - I - 0x0178D8 05:B8C8: C3 B8     .word off_CE_B8C3
off_CE_B8CA:
- D 1 - I - 0x0178DA 05:B8CA: C5        .byte con_se_cb_C5, $FF   ; 
- D 1 - I - 0x0178DC 05:B8CC: 01        .byte $01   ; 
- D 1 - I - 0x0178DD 05:B8CD: CE        .byte con_se_cb_loop_1, $78   ; 
- D 1 - I - 0x0178DF 05:B8CF: CA B8     .word off_CE_B8CA
- D 1 - I - 0x0178E1 05:B8D1: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x0178E2 05:B8D2: D3        .byte con_se_cb_stop   ; 



off_ch_38_B8D3_04:
- D 1 - I - 0x0178E3 05:B8D3: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x0178E4 05:B8D4: AA 8A     .word ofs_CD_8AAA
off_CF_B8D6:
- D 1 - I - 0x0178E6 05:B8D6: C4        .byte con_se_cb_C4, $14   ; 
- D 1 - I - 0x0178E8 05:B8D8: 5F        .byte $5F   ; 
- D 1 - I - 0x0178E9 05:B8D9: CA        .byte con_se_cb_CA   ; 
off_CE_B8DA:
- D 1 - I - 0x0178EA 05:B8DA: C5        .byte con_se_cb_C5, $05   ; 
- D 1 - I - 0x0178EC 05:B8DC: C1        .byte con_se_cb_C1, $FF   ; 
- D 1 - I - 0x0178EE 05:B8DE: C3        .byte con_se_cb_C3, $32   ; 
- D 1 - I - 0x0178F0 05:B8E0: 01        .byte $01   ; 
- D 1 - I - 0x0178F1 05:B8E1: CE        .byte con_se_cb_loop_1, $14   ; 
- D 1 - I - 0x0178F3 05:B8E3: DA B8     .word off_CE_B8DA
- D 1 - I - 0x0178F5 05:B8E5: CF        .byte con_se_cb_loop_2, $04   ; 
- D 1 - I - 0x0178F7 05:B8E7: D6 B8     .word off_CF_B8D6
- D 1 - I - 0x0178F9 05:B8E9: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x0178FA 05:B8EA: 14        .byte $14   ; 
- D 1 - I - 0x0178FB 05:B8EB: C4        .byte con_se_cb_C4, $64   ; 
- D 1 - I - 0x0178FD 05:B8ED: 58        .byte $58   ; 
- D 1 - I - 0x0178FE 05:B8EE: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x0178FF 05:B8EF: D0        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x017900 05:B8F0: 0D B9     .word loc_D0_B90D



off_ch_38_B8F2_05:
- D 1 - I - 0x017902 05:B8F2: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x017903 05:B8F3: AA 8A     .word ofs_CD_8AAA
- D 1 - I - 0x017905 05:B8F5: 14        .byte $14   ; 
off_CF_B8F6:
- D 1 - I - 0x017906 05:B8F6: C4        .byte con_se_cb_C4, $14   ; 
- D 1 - I - 0x017908 05:B8F8: 63        .byte $63   ; 
- D 1 - I - 0x017909 05:B8F9: CA        .byte con_se_cb_CA   ; 
off_CE_B8FA:
- D 1 - I - 0x01790A 05:B8FA: C5        .byte con_se_cb_C5, $05   ; 
- D 1 - I - 0x01790C 05:B8FC: C1        .byte con_se_cb_C1, $FF   ; 
- D 1 - I - 0x01790E 05:B8FE: C3        .byte con_se_cb_C3, $32   ; 
- D 1 - I - 0x017910 05:B900: 01        .byte $01   ; 
- D 1 - I - 0x017911 05:B901: CE        .byte con_se_cb_loop_1, $14   ; 
- D 1 - I - 0x017913 05:B903: FA B8     .word off_CE_B8FA
- D 1 - I - 0x017915 05:B905: CF        .byte con_se_cb_loop_2, $04   ; 
- D 1 - I - 0x017917 05:B907: F6 B8     .word off_CF_B8F6
- D 1 - I - 0x017919 05:B909: C4        .byte con_se_cb_C4, $64   ; 
- D 1 - I - 0x01791B 05:B90B: 56        .byte $56   ; 
- D 1 - I - 0x01791C 05:B90C: CA        .byte con_se_cb_CA   ; 
loc_D0_B90D:
off_CE_B90D:
off_CF_B90D:
- D 1 - I - 0x01791D 05:B90D: C1        .byte con_se_cb_C1, $F6   ; 
- D 1 - I - 0x01791F 05:B90F: C5        .byte con_se_cb_C5, $02   ; 
- D 1 - I - 0x017921 05:B911: 03        .byte $03   ; 
- D 1 - I - 0x017922 05:B912: C1        .byte con_se_cb_C1, $0D   ; 
- D 1 - I - 0x017924 05:B914: C5        .byte con_se_cb_C5, $02   ; 
- D 1 - I - 0x017926 05:B916: 03        .byte $03   ; 
- D 1 - I - 0x017927 05:B917: CF        .byte con_se_cb_loop_2, $05   ; 
- D 1 - I - 0x017929 05:B919: 0D B9     .word off_CF_B90D
- D 1 - I - 0x01792B 05:B91B: C5        .byte con_se_cb_C5, $D3   ; 
- D 1 - I - 0x01792D 05:B91D: C0        .byte con_se_cb_C0, $56   ; 
- D 1 - I - 0x01792F 05:B91F: CE        .byte con_se_cb_loop_1, $05   ; 
- D 1 - I - 0x017931 05:B921: 0D B9     .word off_CE_B90D
- - - - - - 0x017933 05:B923: CB        .byte con_se_cb_CB   ; 
- - - - - - 0x017934 05:B924: D3        .byte con_se_cb_stop   ; 



_off013_B925_3A:
- D 1 - I - 0x017935 05:B925: 40        .byte $40   ; 
- D 1 - I - 0x017936 05:B926: 05        .byte $05   ; 
- D 1 - I - 0x017937 05:B927: 2D B9     .word off_ch_3A_B92D_05
- D 1 - I - 0x017939 05:B929: 07        .byte $07   ; 
- D 1 - I - 0x01793A 05:B92A: 46 B9     .word off_ch_3A_B946_07
- D 1 - I - 0x01793C 05:B92C: FF        .byte $FF   ; 



off_ch_3A_B92D_05:
- D 1 - I - 0x01793D 05:B92D: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x01793E 05:B92E: AE 8A     .word ofs_CD_8AAE
- D 1 - I - 0x017940 05:B930: C4        .byte con_se_cb_C4, $7F   ; 
- D 1 - I - 0x017942 05:B932: CA        .byte con_se_cb_CA   ; 
off_CE_B933:
- D 1 - I - 0x017943 05:B933: 6A        .byte $6A   ; 
- D 1 - I - 0x017944 05:B934: 01        .byte $01   ; 
- D 1 - I - 0x017945 05:B935: 6F        .byte $6F   ; 
- D 1 - I - 0x017946 05:B936: 01        .byte $01   ; 
- D 1 - I - 0x017947 05:B937: 69        .byte $69   ; 
- D 1 - I - 0x017948 05:B938: 01        .byte $01   ; 
- D 1 - I - 0x017949 05:B939: 6E        .byte $6E   ; 
- D 1 - I - 0x01794A 05:B93A: 01        .byte $01   ; 
- D 1 - I - 0x01794B 05:B93B: 68        .byte $68   ; 
- D 1 - I - 0x01794C 05:B93C: 01        .byte $01   ; 
- D 1 - I - 0x01794D 05:B93D: 6D        .byte $6D   ; 
- D 1 - I - 0x01794E 05:B93E: 01        .byte $01   ; 
- D 1 - I - 0x01794F 05:B93F: C5        .byte con_se_cb_C5, $F6   ; 
- D 1 - I - 0x017951 05:B941: CE        .byte con_se_cb_loop_1, $04   ; 
- D 1 - I - 0x017953 05:B943: 33 B9     .word off_CE_B933
- D 1 - I - 0x017955 05:B945: D3        .byte con_se_cb_stop   ; 



off_ch_3A_B946_07:
- D 1 - I - 0x017956 05:B946: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x017957 05:B947: A6 8A     .word ofs_CD_8AA6
- D 1 - I - 0x017959 05:B949: C4        .byte con_se_cb_C4, $64   ; 
- D 1 - I - 0x01795B 05:B94B: 4C        .byte $4C   ; 
off_CE_B94C:
- D 1 - I - 0x01795C 05:B94C: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x01795D 05:B94D: 01        .byte $01   ; 
- D 1 - I - 0x01795E 05:B94E: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x01795F 05:B94F: 01        .byte $01   ; 
- D 1 - I - 0x017960 05:B950: CE        .byte con_se_cb_loop_1, $03   ; 
- D 1 - I - 0x017962 05:B952: 4C B9     .word off_CE_B94C
- D 1 - I - 0x017964 05:B954: D3        .byte con_se_cb_stop   ; 



_off013_B955_3B:
- D 1 - I - 0x017965 05:B955: 40        .byte $40   ; 
- D 1 - I - 0x017966 05:B956: 04        .byte $04   ; 
- D 1 - I - 0x017967 05:B957: 5D B9     .word off_ch_3B_B95D_04
- D 1 - I - 0x017969 05:B959: 05        .byte $05   ; 
- D 1 - I - 0x01796A 05:B95A: 7E B9     .word off_ch_3B_B97E_05
- D 1 - I - 0x01796C 05:B95C: FF        .byte $FF   ; 



off_ch_3B_B95D_04:
- D 1 - I - 0x01796D 05:B95D: C4        .byte con_se_cb_C4, $6E   ; 
- D 1 - I - 0x01796F 05:B95F: 77        .byte $77   ; 
- D 1 - I - 0x017970 05:B960: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017971 05:B961: 01        .byte $01   ; 
off_CE_B962:
- D 1 - I - 0x017972 05:B962: C1        .byte con_se_cb_C1, $FD   ; 
- D 1 - I - 0x017974 05:B964: C5        .byte con_se_cb_C5, $F6   ; 
- D 1 - I - 0x017976 05:B966: 01        .byte $01   ; 
- D 1 - I - 0x017977 05:B967: C1        .byte con_se_cb_C1, $FC   ; 
- D 1 - I - 0x017979 05:B969: C5        .byte con_se_cb_C5, $F6   ; 
- D 1 - I - 0x01797B 05:B96B: 01        .byte $01   ; 
- D 1 - I - 0x01797C 05:B96C: C1        .byte con_se_cb_C1, $05   ; 
- D 1 - I - 0x01797E 05:B96E: C5        .byte con_se_cb_C5, $F6   ; 
- D 1 - I - 0x017980 05:B970: 01        .byte $01   ; 
- D 1 - I - 0x017981 05:B971: C1        .byte con_se_cb_C1, $FA   ; 
- D 1 - I - 0x017983 05:B973: C5        .byte con_se_cb_C5, $F6   ; 
- D 1 - I - 0x017985 05:B975: 01        .byte $01   ; 
- D 1 - I - 0x017986 05:B976: C0        .byte con_se_cb_C0, $77   ; 
- D 1 - I - 0x017988 05:B978: CE        .byte con_se_cb_loop_1, $02   ; 
- D 1 - I - 0x01798A 05:B97A: 62 B9     .word off_CE_B962
- D 1 - I - 0x01798C 05:B97C: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x01798D 05:B97D: D3        .byte con_se_cb_stop   ; 



off_ch_3B_B97E_05:
- D 1 - I - 0x01798E 05:B97E: C4        .byte con_se_cb_C4, $6E   ; 
- D 1 - I - 0x017990 05:B980: 6B        .byte $6B   ; 
- D 1 - I - 0x017991 05:B981: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017992 05:B982: 01        .byte $01   ; 
off_CE_B983:
- D 1 - I - 0x017993 05:B983: C1        .byte con_se_cb_C1, $FD   ; 
- D 1 - I - 0x017995 05:B985: C5        .byte con_se_cb_C5, $F6   ; 
- D 1 - I - 0x017997 05:B987: 01        .byte $01   ; 
- D 1 - I - 0x017998 05:B988: C1        .byte con_se_cb_C1, $FC   ; 
- D 1 - I - 0x01799A 05:B98A: C5        .byte con_se_cb_C5, $0A   ; 
- D 1 - I - 0x01799C 05:B98C: 01        .byte $01   ; 
- D 1 - I - 0x01799D 05:B98D: C1        .byte con_se_cb_C1, $05   ; 
- D 1 - I - 0x01799F 05:B98F: C5        .byte con_se_cb_C5, $F6   ; 
- D 1 - I - 0x0179A1 05:B991: 01        .byte $01   ; 
- D 1 - I - 0x0179A2 05:B992: C1        .byte con_se_cb_C1, $FA   ; 
- D 1 - I - 0x0179A4 05:B994: C5        .byte con_se_cb_C5, $F6   ; 
- D 1 - I - 0x0179A6 05:B996: 01        .byte $01   ; 
- D 1 - I - 0x0179A7 05:B997: C0        .byte con_se_cb_C0, $6B   ; 
- D 1 - I - 0x0179A9 05:B999: CE        .byte con_se_cb_loop_1, $02   ; 
- D 1 - I - 0x0179AB 05:B99B: 83 B9     .word off_CE_B983
- D 1 - I - 0x0179AD 05:B99D: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x0179AE 05:B99E: D3        .byte con_se_cb_stop   ; 



_off013_B99F_3C:
- D 1 - I - 0x0179AF 05:B99F: 40        .byte $40   ; 
- D 1 - I - 0x0179B0 05:B9A0: 07        .byte $07   ; 
- D 1 - I - 0x0179B1 05:B9A1: A7 B9     .word off_ch_3C_B9A7_07
- D 1 - I - 0x0179B3 05:B9A3: 05        .byte $05   ; 
- D 1 - I - 0x0179B4 05:B9A4: BD B9     .word off_ch_3C_B9BD_05
- D 1 - I - 0x0179B6 05:B9A6: FF        .byte $FF   ; 



off_ch_3C_B9A7_07:
- D 1 - I - 0x0179B7 05:B9A7: C4        .byte con_se_cb_C4, $6E   ; 
- D 1 - I - 0x0179B9 05:B9A9: 4C        .byte $4C   ; 
- D 1 - I - 0x0179BA 05:B9AA: CA        .byte con_se_cb_CA   ; 
off_CE_B9AB:
- D 1 - I - 0x0179BB 05:B9AB: C1        .byte con_se_cb_C1, $FF   ; 
- D 1 - I - 0x0179BD 05:B9AD: 01        .byte $01   ; 
- D 1 - I - 0x0179BE 05:B9AE: CE        .byte con_se_cb_loop_1, $08   ; 
- D 1 - I - 0x0179C0 05:B9B0: AB B9     .word off_CE_B9AB
off_CE_B9B2:
- D 1 - I - 0x0179C2 05:B9B2: C1        .byte con_se_cb_C1, $01   ; 
- D 1 - I - 0x0179C4 05:B9B4: C5        .byte con_se_cb_C5, $F6   ; 
- D 1 - I - 0x0179C6 05:B9B6: 02        .byte $02   ; 
- D 1 - I - 0x0179C7 05:B9B7: CE        .byte con_se_cb_loop_1, $09   ; 
- D 1 - I - 0x0179C9 05:B9B9: B2 B9     .word off_CE_B9B2
- D 1 - I - 0x0179CB 05:B9BB: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x0179CC 05:B9BC: D3        .byte con_se_cb_stop   ; 



off_ch_3C_B9BD_05:
- D 1 - I - 0x0179CD 05:B9BD: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x0179CE 05:B9BE: A6 8A     .word ofs_CD_8AA6
- D 1 - I - 0x0179D0 05:B9C0: C4        .byte con_se_cb_C4, $64   ; 
- D 1 - I - 0x0179D2 05:B9C2: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x0179D3 05:B9C3: 4C        .byte $4C   ; 
- D 1 - I - 0x0179D4 05:B9C4: 01        .byte $01   ; 
- D 1 - I - 0x0179D5 05:B9C5: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x0179D6 05:B9C6: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x0179D7 05:B9C7: 47        .byte $47   ; 
- D 1 - I - 0x0179D8 05:B9C8: 01        .byte $01   ; 
- D 1 - I - 0x0179D9 05:B9C9: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x0179DA 05:B9CA: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x0179DB 05:B9CB: 48        .byte $48   ; 
- D 1 - I - 0x0179DC 05:B9CC: 01        .byte $01   ; 
- D 1 - I - 0x0179DD 05:B9CD: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x0179DE 05:B9CE: D3        .byte con_se_cb_stop   ; 



_off013_B9CF_3D:
- D 1 - I - 0x0179DF 05:B9CF: 30        .byte $30   ; 
- D 1 - I - 0x0179E0 05:B9D0: FF        .byte $FF   ; 
- D 1 - I - 0x0179E1 05:B9D1: 05        .byte $05   ; 
- D 1 - I - 0x0179E2 05:B9D2: 07        .byte $07   ; 
- D 1 - I - 0x0179E3 05:B9D3: D6 B9     .word off_ch_3D_B9D6_07
- D 1 - I - 0x0179E5 05:B9D5: FF        .byte $FF   ; 



off_ch_3D_B9D6_07:
- D 1 - I - 0x0179E6 05:B9D6: C0        .byte con_se_cb_C0, $0F   ; 
- D 1 - I - 0x0179E8 05:B9D8: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x0179E9 05:B9D9: C4        .byte con_se_cb_C4, $50   ; 
- D 1 - I - 0x0179EB 05:B9DB: 01        .byte $01   ; 
- D 1 - I - 0x0179EC 05:B9DC: C1        .byte con_se_cb_C1, $FE   ; 
- D 1 - I - 0x0179EE 05:B9DE: 01        .byte $01   ; 
- D 1 - I - 0x0179EF 05:B9DF: C5        .byte con_se_cb_C5, $F6   ; 
- D 1 - I - 0x0179F1 05:B9E1: C1        .byte con_se_cb_C1, $02   ; 
- D 1 - I - 0x0179F3 05:B9E3: 01        .byte $01   ; 
- D 1 - I - 0x0179F4 05:B9E4: C5        .byte con_se_cb_C5, $F6   ; 
- D 1 - I - 0x0179F6 05:B9E6: C1        .byte con_se_cb_C1, $FE   ; 
- D 1 - I - 0x0179F8 05:B9E8: C5        .byte con_se_cb_C5, $F6   ; 
- D 1 - I - 0x0179FA 05:B9EA: 01        .byte $01   ; 
- D 1 - I - 0x0179FB 05:B9EB: C1        .byte con_se_cb_C1, $02   ; 
- D 1 - I - 0x0179FD 05:B9ED: C5        .byte con_se_cb_C5, $F6   ; 
- D 1 - I - 0x0179FF 05:B9EF: 01        .byte $01   ; 
- D 1 - I - 0x017A00 05:B9F0: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017A01 05:B9F1: D3        .byte con_se_cb_stop   ; 



_off013_B9F2_3E:
- D 1 - I - 0x017A02 05:B9F2: 40        .byte $40   ; 
- D 1 - I - 0x017A03 05:B9F3: 05        .byte $05   ; 
- D 1 - I - 0x017A04 05:B9F4: FD B9     .word off_ch_3E_B9FD_05
- D 1 - I - 0x017A06 05:B9F6: 06        .byte $06   ; 
- D 1 - I - 0x017A07 05:B9F7: 18 BA     .word off_ch_3E_BA18_06
- D 1 - I - 0x017A09 05:B9F9: 07        .byte $07   ; 
- D 1 - I - 0x017A0A 05:B9FA: 26 BA     .word off_ch_3E_BA26_07
- D 1 - I - 0x017A0C 05:B9FC: FF        .byte $FF   ; 



off_ch_3E_B9FD_05:
- D 1 - I - 0x017A0D 05:B9FD: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x017A0E 05:B9FE: A6 8A     .word ofs_CD_8AA6
- D 1 - I - 0x017A10 05:BA00: C4        .byte con_se_cb_C4, $7F   ; 
- D 1 - I - 0x017A12 05:BA02: 46        .byte $46   ; 
- D 1 - I - 0x017A13 05:BA03: CA        .byte con_se_cb_CA   ; 
off_CE_BA04:
- D 1 - I - 0x017A14 05:BA04: C3        .byte con_se_cb_C3, $7F   ; 
- D 1 - I - 0x017A16 05:BA06: 01        .byte $01   ; 
- D 1 - I - 0x017A17 05:BA07: CE        .byte con_se_cb_loop_1, $0A   ; 
- D 1 - I - 0x017A19 05:BA09: 04 BA     .word off_CE_BA04
off_CE_BA0B:
- D 1 - I - 0x017A1B 05:BA0B: C1        .byte con_se_cb_C1, $01   ; 
- D 1 - I - 0x017A1D 05:BA0D: 01        .byte $01   ; 
- D 1 - I - 0x017A1E 05:BA0E: C1        .byte con_se_cb_C1, $FF   ; 
- D 1 - I - 0x017A20 05:BA10: 01        .byte $01   ; 
- D 1 - I - 0x017A21 05:BA11: CE        .byte con_se_cb_loop_1, $0B   ; 
- D 1 - I - 0x017A23 05:BA13: 0B BA     .word off_CE_BA0B
- D 1 - I - 0x017A25 05:BA15: 01        .byte $01   ; 
- D 1 - I - 0x017A26 05:BA16: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017A27 05:BA17: D3        .byte con_se_cb_stop   ; 



off_ch_3E_BA18_06:
off_CE_BA18:
- D 1 - I - 0x017A28 05:BA18: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017A29 05:BA19: 56        .byte $56   ; 
- D 1 - I - 0x017A2A 05:BA1A: 02        .byte $02   ; 
- D 1 - I - 0x017A2B 05:BA1B: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017A2C 05:BA1C: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017A2D 05:BA1D: 51        .byte $51   ; 
- D 1 - I - 0x017A2E 05:BA1E: 02        .byte $02   ; 
- D 1 - I - 0x017A2F 05:BA1F: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017A30 05:BA20: CE        .byte con_se_cb_loop_1, $08   ; 
- D 1 - I - 0x017A32 05:BA22: 18 BA     .word off_CE_BA18
- D 1 - I - 0x017A34 05:BA24: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017A35 05:BA25: D3        .byte con_se_cb_stop   ; 



off_ch_3E_BA26_07:
- D 1 - I - 0x017A36 05:BA26: C4        .byte con_se_cb_C4, $3C   ; 
- D 1 - I - 0x017A38 05:BA28: 4A        .byte $4A   ; 
- D 1 - I - 0x017A39 05:BA29: CA        .byte con_se_cb_CA   ; 
off_CE_BA2A:
- D 1 - I - 0x017A3A 05:BA2A: C5        .byte con_se_cb_C5, $F6   ; 
- D 1 - I - 0x017A3C 05:BA2C: 01        .byte $01   ; 
- D 1 - I - 0x017A3D 05:BA2D: CE        .byte con_se_cb_loop_1, $0A   ; 
- D 1 - I - 0x017A3F 05:BA2F: 2A BA     .word off_CE_BA2A
- D 1 - I - 0x017A41 05:BA31: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017A42 05:BA32: 16        .byte $16   ; 
- D 1 - I - 0x017A43 05:BA33: C4        .byte con_se_cb_C4, $69   ; 
- D 1 - I - 0x017A45 05:BA35: 4E        .byte $4E   ; 
- D 1 - I - 0x017A46 05:BA36: CA        .byte con_se_cb_CA   ; 
off_CE_BA37:
- D 1 - I - 0x017A47 05:BA37: C5        .byte con_se_cb_C5, $F6   ; 
- D 1 - I - 0x017A49 05:BA39: 01        .byte $01   ; 
- D 1 - I - 0x017A4A 05:BA3A: CE        .byte con_se_cb_loop_1, $0A   ; 
- D 1 - I - 0x017A4C 05:BA3C: 37 BA     .word off_CE_BA37
- D 1 - I - 0x017A4E 05:BA3E: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017A4F 05:BA3F: D3        .byte con_se_cb_stop   ; 



_off013_BA40_3F:
- D 1 - I - 0x017A50 05:BA40: 30        .byte $30   ; 
- D 1 - I - 0x017A51 05:BA41: FF        .byte $FF   ; 
- D 1 - I - 0x017A52 05:BA42: 0C        .byte $0C   ; 
- D 1 - I - 0x017A53 05:BA43: 05        .byte $05   ; 
- D 1 - I - 0x017A54 05:BA44: 47 BA     .word off_ch_3F_BA47_05
- D 1 - I - 0x017A56 05:BA46: FF        .byte $FF   ; 



off_ch_3F_BA47_05:
- D 1 - I - 0x017A57 05:BA47: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x017A58 05:BA48: A6 8A     .word ofs_CD_8AA6
- D 1 - I - 0x017A5A 05:BA4A: C4        .byte con_se_cb_C4, $7F   ; 
- D 1 - I - 0x017A5C 05:BA4C: 56        .byte $56   ; 
- D 1 - I - 0x017A5D 05:BA4D: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017A5E 05:BA4E: C3        .byte con_se_cb_C3, $7F   ; 
- D 1 - I - 0x017A60 05:BA50: 03        .byte $03   ; 
- D 1 - I - 0x017A61 05:BA51: C3        .byte con_se_cb_C3, $81   ; 
- D 1 - I - 0x017A63 05:BA53: 03        .byte $03   ; 
- D 1 - I - 0x017A64 05:BA54: C3        .byte con_se_cb_C3, $7F   ; 
- D 1 - I - 0x017A66 05:BA56: 03        .byte $03   ; 
- D 1 - I - 0x017A67 05:BA57: C3        .byte con_se_cb_C3, $81   ; 
- D 1 - I - 0x017A69 05:BA59: 03        .byte $03   ; 
- - - - - - 0x017A6A 05:BA5A: 01        .byte $01   ; 
- - - - - - 0x017A6B 05:BA5B: CB        .byte con_se_cb_CB   ; 
- - - - - - 0x017A6C 05:BA5C: D3        .byte con_se_cb_stop   ; 



_off013_BA5D_40:
- D 1 - I - 0x017A6D 05:BA5D: 30        .byte $30   ; 
- D 1 - I - 0x017A6E 05:BA5E: FF        .byte $FF   ; 
- D 1 - I - 0x017A6F 05:BA5F: 04        .byte $04   ; 
- D 1 - I - 0x017A70 05:BA60: 06        .byte $06   ; 
- D 1 - I - 0x017A71 05:BA61: 64 BA     .word off_ch_40_BA64_06
- D 1 - I - 0x017A73 05:BA63: FF        .byte $FF   ; 



off_ch_40_BA64_06:
- D 1 - I - 0x017A74 05:BA64: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017A75 05:BA65: 62        .byte $62   ; 
- D 1 - I - 0x017A76 05:BA66: 02        .byte $02   ; 
- D 1 - I - 0x017A77 05:BA67: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017A78 05:BA68: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017A79 05:BA69: 5D        .byte $5D   ; 
- D 1 - I - 0x017A7A 05:BA6A: 02        .byte $02   ; 
- D 1 - I - 0x017A7B 05:BA6B: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017A7C 05:BA6C: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017A7D 05:BA6D: D3        .byte con_se_cb_stop   ; 



_off013_BA6E_41:
- - - - - - 0x017A7E 05:BA6E: 40        .byte $40   ; 
- - - - - - 0x017A7F 05:BA6F: 05        .byte $05   ; 
- - - - - - 0x017A80 05:BA70: 80 BA     .word off_ch_41_BA80_05
- - - - - - 0x017A82 05:BA72: 06        .byte $06   ; 
- - - - - - 0x017A83 05:BA73: 76 BA     .word off_ch_41_BA76_06
- - - - - - 0x017A85 05:BA75: FF        .byte $FF   ; 



off_ch_41_BA76_06:
- - - - - - 0x017A86 05:BA76: CA        .byte con_se_cb_CA   ; 
- - - - - - 0x017A87 05:BA77: 4F        .byte $4F   ; 
- - - - - - 0x017A88 05:BA78: 03        .byte $03   ; 
- - - - - - 0x017A89 05:BA79: CB        .byte con_se_cb_CB   ; 
- - - - - - 0x017A8A 05:BA7A: CA        .byte con_se_cb_CA   ; 
- - - - - - 0x017A8B 05:BA7B: 4A        .byte $4A   ; 
- - - - - - 0x017A8C 05:BA7C: 03        .byte $03   ; 
- - - - - - 0x017A8D 05:BA7D: CB        .byte con_se_cb_CB   ; 
- - - - - - 0x017A8E 05:BA7E: CB        .byte con_se_cb_CB   ; 
- - - - - - 0x017A8F 05:BA7F: D3        .byte con_se_cb_stop   ; 



off_ch_41_BA80_05:
- - - - - - 0x017A90 05:BA80: CD        .byte con_se_cb_CD   ; 
- - - - - - 0x017A91 05:BA81: B2 8A     .word ofs_CD_8AB2
- - - - - - 0x017A93 05:BA83: C4        .byte con_se_cb_C4, $78   ; 
- - - - - - 0x017A95 05:BA85: CA        .byte con_se_cb_CA   ; 
- - - - - - 0x017A96 05:BA86: 43        .byte $43   ; 
- - - - - - 0x017A97 05:BA87: 02        .byte $02   ; 
- - - - - - 0x017A98 05:BA88: CB        .byte con_se_cb_CB   ; 
- - - - - - 0x017A99 05:BA89: 01        .byte $01   ; 
- - - - - - 0x017A9A 05:BA8A: CA        .byte con_se_cb_CA   ; 
- - - - - - 0x017A9B 05:BA8B: 4A        .byte $4A   ; 
- - - - - - 0x017A9C 05:BA8C: 02        .byte $02   ; 
- - - - - - 0x017A9D 05:BA8D: CB        .byte con_se_cb_CB   ; 
- - - - - - 0x017A9E 05:BA8E: 01        .byte $01   ; 
- - - - - - 0x017A9F 05:BA8F: CB        .byte con_se_cb_CB   ; 
- - - - - - 0x017AA0 05:BA90: D3        .byte con_se_cb_stop   ; 



_off013_BA91_42:
- - - - - - 0x017AA1 05:BA91: 40        .byte $40   ; 
- - - - - - 0x017AA2 05:BA92: 07        .byte $07   ; 
- - - - - - 0x017AA3 05:BA93: 96 BA     .word off_ch_42_BA96_07
- - - - - - 0x017AA5 05:BA95: FF        .byte $FF   ; 



off_ch_42_BA96_07:
- - - - - - 0x017AA6 05:BA96: C4        .byte con_se_cb_C4, $14   ; 
- - - - - - 0x017AA8 05:BA98: C0        .byte con_se_cb_C0, $0A   ; 
- - - - - - 0x017AAA 05:BA9A: CA        .byte con_se_cb_CA   ; 
- - - - - - 0x017AAB 05:BA9B: 01        .byte $01   ; 
off_CE_BA9C:
- - - - - - 0x017AAC 05:BA9C: C3        .byte con_se_cb_C3, $E2   ; 
- - - - - - 0x017AAE 05:BA9E: C5        .byte con_se_cb_C5, $06   ; 
- - - - - - 0x017AB0 05:BAA0: 02        .byte $02   ; 
- - - - - - 0x017AB1 05:BAA1: C3        .byte con_se_cb_C3, $E2   ; 
- - - - - - 0x017AB3 05:BAA3: C5        .byte con_se_cb_C5, $06   ; 
- - - - - - 0x017AB5 05:BAA5: 02        .byte $02   ; 
- - - - - - 0x017AB6 05:BAA6: CE        .byte con_se_cb_loop_1, $08   ; 
- - - - - - 0x017AB8 05:BAA8: 9C BA     .word off_CE_BA9C
off_CF_BAAA:
- - - - - - 0x017ABA 05:BAAA: C1        .byte con_se_cb_C1, $01   ; 
- - - - - - 0x017ABC 05:BAAC: C5        .byte con_se_cb_C5, $F6   ; 
- - - - - - 0x017ABE 05:BAAE: 02        .byte $02   ; 
- - - - - - 0x017ABF 05:BAAF: C5        .byte con_se_cb_C5, $F6   ; 
- - - - - - 0x017AC1 05:BAB1: 02        .byte $02   ; 
- - - - - - 0x017AC2 05:BAB2: CF        .byte con_se_cb_loop_2, $05   ; 
- - - - - - 0x017AC4 05:BAB4: AA BA     .word off_CF_BAAA
- - - - - - 0x017AC6 05:BAB6: D3        .byte con_se_cb_stop   ; 



_off013_BAB7_43:
- D 1 - I - 0x017AC7 05:BAB7: 40        .byte $40   ; 
- D 1 - I - 0x017AC8 05:BAB8: 06        .byte $06   ; 
- D 1 - I - 0x017AC9 05:BAB9: BF BA     .word off_ch_43_BABF_06
- D 1 - I - 0x017ACB 05:BABB: 07        .byte $07   ; 
- D 1 - I - 0x017ACC 05:BABC: CF BA     .word off_ch_43_BACF_07
- D 1 - I - 0x017ACE 05:BABE: FF        .byte $FF   ; 



off_ch_43_BABF_06:
- D 1 - I - 0x017ACF 05:BABF: 4F        .byte $4F   ; 
- D 1 - I - 0x017AD0 05:BAC0: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017AD1 05:BAC1: 01        .byte $01   ; 
- D 1 - I - 0x017AD2 05:BAC2: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017AD3 05:BAC3: 01        .byte $01   ; 
- D 1 - I - 0x017AD4 05:BAC4: 52        .byte $52   ; 
- D 1 - I - 0x017AD5 05:BAC5: CA        .byte con_se_cb_CA   ; 
off_CE_BAC6:
- D 1 - I - 0x017AD6 05:BAC6: 01        .byte $01   ; 
- D 1 - I - 0x017AD7 05:BAC7: C1        .byte con_se_cb_C1, $01   ; 
- D 1 - I - 0x017AD9 05:BAC9: CE        .byte con_se_cb_loop_1, $04   ; 
- D 1 - I - 0x017ADB 05:BACB: C6 BA     .word off_CE_BAC6
- D 1 - I - 0x017ADD 05:BACD: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017ADE 05:BACE: D3        .byte con_se_cb_stop   ; 



off_ch_43_BACF_07:
- D 1 - I - 0x017ADF 05:BACF: C4        .byte con_se_cb_C4, $7F   ; 
- D 1 - I - 0x017AE1 05:BAD1: 43        .byte $43   ; 
- D 1 - I - 0x017AE2 05:BAD2: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017AE3 05:BAD3: 01        .byte $01   ; 
- D 1 - I - 0x017AE4 05:BAD4: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017AE5 05:BAD5: 01        .byte $01   ; 
- D 1 - I - 0x017AE6 05:BAD6: 45        .byte $45   ; 
- D 1 - I - 0x017AE7 05:BAD7: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017AE8 05:BAD8: 01        .byte $01   ; 
off_CE_BAD9:
- D 1 - I - 0x017AE9 05:BAD9: C5        .byte con_se_cb_C5, $F0   ; 
- D 1 - I - 0x017AEB 05:BADB: C1        .byte con_se_cb_C1, $01   ; 
- D 1 - I - 0x017AED 05:BADD: 04        .byte $04   ; 
- D 1 - I - 0x017AEE 05:BADE: CE        .byte con_se_cb_loop_1, $05   ; 
- D 1 - I - 0x017AF0 05:BAE0: D9 BA     .word off_CE_BAD9
off_CE_BAE2:
- D 1 - I - 0x017AF2 05:BAE2: C5        .byte con_se_cb_C5, $F8   ; 
- D 1 - I - 0x017AF4 05:BAE4: C1        .byte con_se_cb_C1, $FF   ; 
- D 1 - I - 0x017AF6 05:BAE6: 05        .byte $05   ; 
- D 1 - I - 0x017AF7 05:BAE7: CE        .byte con_se_cb_loop_1, $04   ; 
- D 1 - I - 0x017AF9 05:BAE9: E2 BA     .word off_CE_BAE2
- D 1 - I - 0x017AFB 05:BAEB: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017AFC 05:BAEC: D3        .byte con_se_cb_stop   ; 



_off013_BAED_44:
- - - - - - 0x017AFD 05:BAED: 40        .byte $40   ; 
- - - - - - 0x017AFE 05:BAEE: 04        .byte $04   ; 
- - - - - - 0x017AFF 05:BAEF: F8 BA     .word off_ch_44_BAF8_04
- - - - - - 0x017B01 05:BAF1: 05        .byte $05   ; 
- - - - - - 0x017B02 05:BAF2: 02 BB     .word off_ch_44_BB02_05
- - - - - - 0x017B04 05:BAF4: 07        .byte $07   ; 
- - - - - - 0x017B05 05:BAF5: 1D BB     .word off_ch_44_BB1D_07
- - - - - - 0x017B07 05:BAF7: FF        .byte $FF   ; 



off_ch_44_BAF8_04:
- - - - - - 0x017B08 05:BAF8: CD        .byte con_se_cb_CD   ; 
- - - - - - 0x017B09 05:BAF9: AA 8A     .word ofs_CD_8AAA
- - - - - - 0x017B0B 05:BAFB: C4        .byte con_se_cb_C4, $6E   ; 
- - - - - - 0x017B0D 05:BAFD: 69        .byte $69   ; 
- - - - - - 0x017B0E 05:BAFE: 02        .byte $02   ; 
- - - - - - 0x017B0F 05:BAFF: D0        .byte con_se_cb_jmp   ; 
- - - - - - 0x017B10 05:BB00: 09 BB     .word loc_D0_BB09



off_ch_44_BB02_05:
- - - - - - 0x017B12 05:BB02: CD        .byte con_se_cb_CD   ; 
- - - - - - 0x017B13 05:BB03: AA 8A     .word ofs_CD_8AAA
- - - - - - 0x017B15 05:BB05: C4        .byte con_se_cb_C4, $6E   ; 
- - - - - - 0x017B17 05:BB07: 5D        .byte $5D   ; 
- - - - - - 0x017B18 05:BB08: 02        .byte $02   ; 
loc_D0_BB09:
off_CE_BB09:
- - - - - - 0x017B19 05:BB09: CA        .byte con_se_cb_CA   ; 
- - - - - - 0x017B1A 05:BB0A: C1        .byte con_se_cb_C1, $F9   ; 
- - - - - - 0x017B1C 05:BB0C: C5        .byte con_se_cb_C5, $FB   ; 
- - - - - - 0x017B1E 05:BB0E: 01        .byte $01   ; 
- - - - - - 0x017B1F 05:BB0F: CB        .byte con_se_cb_CB   ; 
- - - - - - 0x017B20 05:BB10: CA        .byte con_se_cb_CA   ; 
- - - - - - 0x017B21 05:BB11: C1        .byte con_se_cb_C1, $06   ; 
- - - - - - 0x017B23 05:BB13: C5        .byte con_se_cb_C5, $FB   ; 
- - - - - - 0x017B25 05:BB15: 01        .byte $01   ; 
- - - - - - 0x017B26 05:BB16: CB        .byte con_se_cb_CB   ; 
- - - - - - 0x017B27 05:BB17: CE        .byte con_se_cb_loop_1, $08   ; 
- - - - - - 0x017B29 05:BB19: 09 BB     .word off_CE_BB09
- - - - - - 0x017B2B 05:BB1B: CB        .byte con_se_cb_CB   ; 
- - - - - - 0x017B2C 05:BB1C: D3        .byte con_se_cb_stop   ; 



off_ch_44_BB1D_07:
- - - - - - 0x017B2D 05:BB1D: C4        .byte con_se_cb_C4, $3C   ; 
- - - - - - 0x017B2F 05:BB1F: C0        .byte con_se_cb_C0, $0A   ; 
- - - - - - 0x017B31 05:BB21: CA        .byte con_se_cb_CA   ; 
off_CE_BB22:
- - - - - - 0x017B32 05:BB22: C1        .byte con_se_cb_C1, $FF   ; 
- - - - - - 0x017B34 05:BB24: C5        .byte con_se_cb_C5, $0A   ; 
- - - - - - 0x017B36 05:BB26: 02        .byte $02   ; 
- - - - - - 0x017B37 05:BB27: CE        .byte con_se_cb_loop_1, $04   ; 
- - - - - - 0x017B39 05:BB29: 22 BB     .word off_CE_BB22
off_CF_BB2B:
- - - - - - 0x017B3B 05:BB2B: C1        .byte con_se_cb_C1, $01   ; 
- - - - - - 0x017B3D 05:BB2D: C5        .byte con_se_cb_C5, $F6   ; 
- - - - - - 0x017B3F 05:BB2F: 04        .byte $04   ; 
- - - - - - 0x017B40 05:BB30: CF        .byte con_se_cb_loop_2, $08   ; 
- - - - - - 0x017B42 05:BB32: 2B BB     .word off_CF_BB2B
- - - - - - 0x017B44 05:BB34: CB        .byte con_se_cb_CB   ; 
- - - - - - 0x017B45 05:BB35: D3        .byte con_se_cb_stop   ; 



_off013_BB36_45:
- - - - - - 0x017B46 05:BB36: 40        .byte $40   ; 
- - - - - - 0x017B47 05:BB37: 04        .byte $04   ; 
- - - - - - 0x017B48 05:BB38: 3E BB     .word off_ch_45_BB3E_04
- - - - - - 0x017B4A 05:BB3A: 05        .byte $05   ; 
- - - - - - 0x017B4B 05:BB3B: 47 BB     .word off_ch_45_BB47_05
- - - - - - 0x017B4D 05:BB3D: FF        .byte $FF   ; 



off_ch_45_BB3E_04:
- - - - - - 0x017B4E 05:BB3E: CD        .byte con_se_cb_CD   ; 
- - - - - - 0x017B4F 05:BB3F: A6 8A     .word ofs_CD_8AA6
- - - - - - 0x017B51 05:BB41: C4        .byte con_se_cb_C4, $6E   ; 
- - - - - - 0x017B53 05:BB43: 73        .byte $73   ; 
- - - - - - 0x017B54 05:BB44: D0        .byte con_se_cb_jmp   ; 
- - - - - - 0x017B55 05:BB45: 4F BB     .word loc_D0_BB4F



off_ch_45_BB47_05:
- - - - - - 0x017B57 05:BB47: CD        .byte con_se_cb_CD   ; 
- - - - - - 0x017B58 05:BB48: A6 8A     .word ofs_CD_8AA6
- - - - - - 0x017B5A 05:BB4A: C4        .byte con_se_cb_C4, $6E   ; 
- - - - - - 0x017B5C 05:BB4C: 73        .byte $73   ; 
- - - - - - 0x017B5D 05:BB4D: C3        .byte con_se_cb_C3, $32   ; 
loc_D0_BB4F:
- - - - - - 0x017B5F 05:BB4F: CA        .byte con_se_cb_CA   ; 
- - - - - - 0x017B60 05:BB50: C3        .byte con_se_cb_C3, $01   ; 
- - - - - - 0x017B62 05:BB52: 01        .byte $01   ; 
- - - - - - 0x017B63 05:BB53: C3        .byte con_se_cb_C3, $64   ; 
- - - - - - 0x017B65 05:BB55: 01        .byte $01   ; 
- - - - - - 0x017B66 05:BB56: C3        .byte con_se_cb_C3, $64   ; 
- - - - - - 0x017B68 05:BB58: 01        .byte $01   ; 
- - - - - - 0x017B69 05:BB59: C3        .byte con_se_cb_C3, $37   ; 
- - - - - - 0x017B6B 05:BB5B: 01        .byte $01   ; 
off_CE_BB5C:
- - - - - - 0x017B6C 05:BB5C: C3        .byte con_se_cb_C3, $FE   ; 
- - - - - - 0x017B6E 05:BB5E: 03        .byte $03   ; 
- - - - - - 0x017B6F 05:BB5F: C5        .byte con_se_cb_C5, $F5   ; 
- - - - - - 0x017B71 05:BB61: C3        .byte con_se_cb_C3, $02   ; 
- - - - - - 0x017B73 05:BB63: 03        .byte $03   ; 
- - - - - - 0x017B74 05:BB64: C5        .byte con_se_cb_C5, $F5   ; 
- - - - - - 0x017B76 05:BB66: CE        .byte con_se_cb_loop_1, $05   ; 
- - - - - - 0x017B78 05:BB68: 5C BB     .word off_CE_BB5C
- - - - - - 0x017B7A 05:BB6A: CB        .byte con_se_cb_CB   ; 
- - - - - - 0x017B7B 05:BB6B: D3        .byte con_se_cb_stop   ; 



_off013_BB6C_46:
- D 1 - I - 0x017B7C 05:BB6C: 40        .byte $40   ; 
- D 1 - I - 0x017B7D 05:BB6D: 07        .byte $07   ; 
- D 1 - I - 0x017B7E 05:BB6E: 74 BB     .word off_ch_46_BB74_07
- D 1 - I - 0x017B80 05:BB70: 06        .byte $06   ; 
- D 1 - I - 0x017B81 05:BB71: 82 BB     .word off_ch_46_BB82_06
- D 1 - I - 0x017B83 05:BB73: FF        .byte $FF   ; 



off_ch_46_BB74_07:
- D 1 - I - 0x017B84 05:BB74: C4        .byte con_se_cb_C4, $7F   ; 
- D 1 - I - 0x017B86 05:BB76: C0        .byte con_se_cb_C0, $0F   ; 
- D 1 - I - 0x017B88 05:BB78: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017B89 05:BB79: 04        .byte $04   ; 
- D 1 - I - 0x017B8A 05:BB7A: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017B8B 05:BB7B: 03        .byte $03   ; 
- D 1 - I - 0x017B8C 05:BB7C: C0        .byte con_se_cb_C0, $0E   ; 
- D 1 - I - 0x017B8E 05:BB7E: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017B8F 05:BB7F: 06        .byte $06   ; 
- D 1 - I - 0x017B90 05:BB80: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017B91 05:BB81: D3        .byte con_se_cb_stop   ; 



off_ch_46_BB82_06:
- D 1 - I - 0x017B92 05:BB82: 58        .byte $58   ; 
- D 1 - I - 0x017B93 05:BB83: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017B94 05:BB84: 04        .byte $04   ; 
- D 1 - I - 0x017B95 05:BB85: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017B96 05:BB86: 03        .byte $03   ; 
- D 1 - I - 0x017B97 05:BB87: C0        .byte con_se_cb_C0, $5A   ; 
- D 1 - I - 0x017B99 05:BB89: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017B9A 05:BB8A: 08        .byte $08   ; 
- D 1 - I - 0x017B9B 05:BB8B: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017B9C 05:BB8C: D3        .byte con_se_cb_stop   ; 



_off013_BB8D_47:
- D 1 - I - 0x017B9D 05:BB8D: 40        .byte $40   ; 
- D 1 - I - 0x017B9E 05:BB8E: 05        .byte $05   ; 
- D 1 - I - 0x017B9F 05:BB8F: 92 BB     .word off_ch_47_BB92_05
- D 1 - I - 0x017BA1 05:BB91: FF        .byte $FF   ; 



off_ch_47_BB92_05:
- D 1 - I - 0x017BA2 05:BB92: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x017BA3 05:BB93: AA 8A     .word ofs_CD_8AAA
- D 1 - I - 0x017BA5 05:BB95: C4        .byte con_se_cb_C4, $64   ; 
- D 1 - I - 0x017BA7 05:BB97: 7A        .byte $7A   ; 
- D 1 - I - 0x017BA8 05:BB98: CA        .byte con_se_cb_CA   ; 
off_CE_BB99:
- D 1 - I - 0x017BA9 05:BB99: 01        .byte $01   ; 
- D 1 - I - 0x017BAA 05:BB9A: C5        .byte con_se_cb_C5, $FE   ; 
- D 1 - I - 0x017BAC 05:BB9C: CE        .byte con_se_cb_loop_1, $28   ; 
- D 1 - I - 0x017BAE 05:BB9E: 99 BB     .word off_CE_BB99
- D 1 - I - 0x017BB0 05:BBA0: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017BB1 05:BBA1: D3        .byte con_se_cb_stop   ; 



_off013_BBA2_48:
- - - - - - 0x017BB2 05:BBA2: 4F        .byte $4F   ; 
- - - - - - 0x017BB3 05:BBA3: 04        .byte $04   ; 
- - - - - - 0x017BB4 05:BBA4: AA BB     .word off_ch_48_BBAA_04
- - - - - - 0x017BB6 05:BBA6: 07        .byte $07   ; 
- - - - - - 0x017BB7 05:BBA7: E0 BB     .word off_ch_48_BBE0_07
- - - - - - 0x017BB9 05:BBA9: FF        .byte $FF   ; 



off_ch_48_BBAA_04:
- - - - - - 0x017BBA 05:BBAA: C4        .byte con_se_cb_C4, $7F   ; 
- - - - - - 0x017BBC 05:BBAC: C0        .byte con_se_cb_C0, $49   ; 
- - - - - - 0x017BBE 05:BBAE: D1        .byte con_se_cb_jsr   ; 
- - - - - - 0x017BBF 05:BBAF: CB BB     .word sub_D1_BBCB
- - - - - - 0x017BC1 05:BBB1: C4        .byte con_se_cb_C4, $7F   ; 
- - - - - - 0x017BC3 05:BBB3: C0        .byte con_se_cb_C0, $47   ; 
- - - - - - 0x017BC5 05:BBB5: D1        .byte con_se_cb_jsr   ; 
- - - - - - 0x017BC6 05:BBB6: CB BB     .word sub_D1_BBCB
- - - - - - 0x017BC8 05:BBB8: C4        .byte con_se_cb_C4, $7F   ; 
- - - - - - 0x017BCA 05:BBBA: C0        .byte con_se_cb_C0, $46   ; 
- - - - - - 0x017BCC 05:BBBC: D1        .byte con_se_cb_jsr   ; 
- - - - - - 0x017BCD 05:BBBD: CB BB     .word sub_D1_BBCB
- - - - - - 0x017BCF 05:BBBF: C4        .byte con_se_cb_C4, $7F   ; 
- - - - - - 0x017BD1 05:BBC1: C0        .byte con_se_cb_C0, $45   ; 
- - - - - - 0x017BD3 05:BBC3: D1        .byte con_se_cb_jsr   ; 
- - - - - - 0x017BD4 05:BBC4: CB BB     .word sub_D1_BBCB
- - - - - - 0x017BD6 05:BBC6: C4        .byte con_se_cb_C4, $7F   ; 
- - - - - - 0x017BD8 05:BBC8: C0        .byte con_se_cb_C0, $44   ; 
- - - - - - 0x017BDA 05:BBCA: D3        .byte con_se_cb_stop   ; 



sub_D1_BBCB:
- - - - - - 0x017BDB 05:BBCB: D4        .byte con_se_cb_D4, $8C   ; 
- - - - - - 0x017BDD 05:BBCD: CA        .byte con_se_cb_CA   ; 
- - - - - - 0x017BDE 05:BBCE: 03        .byte $03   ; 
- - - - - - 0x017BDF 05:BBCF: D4        .byte con_se_cb_D4, $84   ; 
- - - - - - 0x017BE1 05:BBD1: 02        .byte $02   ; 
- - - - - - 0x017BE2 05:BBD2: D4        .byte con_se_cb_D4, $84   ; 
- - - - - - 0x017BE4 05:BBD4: C5        .byte con_se_cb_C5, $E2   ; 
- - - - - - 0x017BE6 05:BBD6: 02        .byte $02   ; 
- - - - - - 0x017BE7 05:BBD7: D4        .byte con_se_cb_D4, $84   ; 
- - - - - - 0x017BE9 05:BBD9: 01        .byte $01   ; 
- - - - - - 0x017BEA 05:BBDA: C5        .byte con_se_cb_C5, $CE   ; 
- - - - - - 0x017BEC 05:BBDC: 01        .byte $01   ; 
- - - - - - 0x017BED 05:BBDD: CB        .byte con_se_cb_CB   ; 
- - - - - - 0x017BEE 05:BBDE: 19        .byte $19   ; 
- - - - - - 0x017BEF 05:BBDF: D2        .byte con_se_cb_rts   ; 



off_ch_48_BBE0_07:
- - - - - - 0x017BF0 05:BBE0: 49        .byte $49   ; 
- - - - - - 0x017BF1 05:BBE1: C4        .byte con_se_cb_C4, $3C   ; 
off_CE_BBE3:
- - - - - - 0x017BF3 05:BBE3: CA        .byte con_se_cb_CA   ; 
- - - - - - 0x017BF4 05:BBE4: 01        .byte $01   ; 
- - - - - - 0x017BF5 05:BBE5: C1        .byte con_se_cb_C1, $01   ; 
- - - - - - 0x017BF7 05:BBE7: C5        .byte con_se_cb_C5, $F6   ; 
- - - - - - 0x017BF9 05:BBE9: CB        .byte con_se_cb_CB   ; 
- - - - - - 0x017BFA 05:BBEA: 20        .byte $20   ; 
- - - - - - 0x017BFB 05:BBEB: CE        .byte con_se_cb_loop_1, $05   ; 
- - - - - - 0x017BFD 05:BBED: E3 BB     .word off_CE_BBE3
- - - - - - 0x017BFF 05:BBEF: D3        .byte con_se_cb_stop   ; 



_off013_BBF0_39:
- D 1 - I - 0x017C00 05:BBF0: 4F        .byte $4F   ; 
- D 1 - I - 0x017C01 05:BBF1: 04        .byte $04   ; 
- D 1 - I - 0x017C02 05:BBF2: FE BB     .word off_ch_39_BBFE_04
- D 1 - I - 0x017C04 05:BBF4: 05        .byte $05   ; 
- D 1 - I - 0x017C05 05:BBF5: 10 BC     .word off_ch_39_BC10_05
- D 1 - I - 0x017C07 05:BBF7: 06        .byte $06   ; 
- D 1 - I - 0x017C08 05:BBF8: 22 BC     .word off_ch_39_BC22_06
- D 1 - I - 0x017C0A 05:BBFA: 07        .byte $07   ; 
- D 1 - I - 0x017C0B 05:BBFB: 22 BC     .word off_ch_39_BC22_07
- D 1 - I - 0x017C0D 05:BBFD: FF        .byte $FF   ; 



off_ch_39_BBFE_04:
- D 1 - I - 0x017C0E 05:BBFE: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x017C0F 05:BBFF: A6 8A     .word ofs_CD_8AA6
- D 1 - I - 0x017C11 05:BC01: C4        .byte con_se_cb_C4, $7F   ; 
off_CE_BC03:
- D 1 - I - 0x017C13 05:BC03: 4F        .byte $4F   ; 
- D 1 - I - 0x017C14 05:BC04: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017C15 05:BC05: 04        .byte $04   ; 
- D 1 - I - 0x017C16 05:BC06: 53        .byte $53   ; 
- D 1 - I - 0x017C17 05:BC07: 04        .byte $04   ; 
- D 1 - I - 0x017C18 05:BC08: C5        .byte con_se_cb_C5, $EC   ; 
- D 1 - I - 0x017C1A 05:BC0A: CE        .byte con_se_cb_loop_1, $05   ; 
- D 1 - I - 0x017C1C 05:BC0C: 03 BC     .word off_CE_BC03
- D 1 - I - 0x017C1E 05:BC0E: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017C1F 05:BC0F: D3        .byte con_se_cb_stop   ; 



off_ch_39_BC10_05:
- D 1 - I - 0x017C20 05:BC10: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x017C21 05:BC11: A6 8A     .word ofs_CD_8AA6
- D 1 - I - 0x017C23 05:BC13: C4        .byte con_se_cb_C4, $7F   ; 
off_CE_BC15:
- D 1 - I - 0x017C25 05:BC15: 53        .byte $53   ; 
- D 1 - I - 0x017C26 05:BC16: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017C27 05:BC17: 04        .byte $04   ; 
- D 1 - I - 0x017C28 05:BC18: 56        .byte $56   ; 
- D 1 - I - 0x017C29 05:BC19: 04        .byte $04   ; 
- D 1 - I - 0x017C2A 05:BC1A: C5        .byte con_se_cb_C5, $EC   ; 
- D 1 - I - 0x017C2C 05:BC1C: CE        .byte con_se_cb_loop_1, $05   ; 
- D 1 - I - 0x017C2E 05:BC1E: 15 BC     .word off_CE_BC15
- D 1 - I - 0x017C30 05:BC20: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017C31 05:BC21: D3        .byte con_se_cb_stop   ; 



off_ch_39_BC22_06:
off_ch_39_BC22_07:
- D 1 - I - 0x017C32 05:BC22: 28        .byte $28   ; 
- D 1 - I - 0x017C33 05:BC23: D3        .byte con_se_cb_stop   ; 



_off013_BC24_49:
- D 1 - I - 0x017C34 05:BC24: 4F        .byte $4F   ; 
- D 1 - I - 0x017C35 05:BC25: 05        .byte $05   ; 
- D 1 - I - 0x017C36 05:BC26: 29 BC     .word off_ch_49_BC29_05
- D 1 - I - 0x017C38 05:BC28: FF        .byte $FF   ; 



off_ch_49_BC29_05:
- D 1 - I - 0x017C39 05:BC29: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x017C3A 05:BC2A: A6 8A     .word ofs_CD_8AA6
- D 1 - I - 0x017C3C 05:BC2C: C4        .byte con_se_cb_C4, $7F   ; 
- D 1 - I - 0x017C3E 05:BC2E: 78        .byte $78   ; 
- D 1 - I - 0x017C3F 05:BC2F: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017C40 05:BC30: 01        .byte $01   ; 
- D 1 - I - 0x017C41 05:BC31: C4        .byte con_se_cb_C4, $3E   ; 
- D 1 - I - 0x017C43 05:BC33: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017C44 05:BC34: D3        .byte con_se_cb_stop   ; 


; bzk garbage
off_CE_BC35:
- - - - - - 0x017C45 05:BC35: 01        .byte $01   ; 
- - - - - - 0x017C46 05:BC36: C5        .byte con_se_cb_C5, $EC   ; 
- - - - - - 0x017C48 05:BC38: CE        .byte con_se_cb_loop_1, $03   ; 
- - - - - - 0x017C4A 05:BC3A: 35 BC     .word off_CE_BC35
- - - - - - 0x017C4C 05:BC3C: CB        .byte con_se_cb_CB   ; 
- - - - - - 0x017C4D 05:BC3D: D3        .byte con_se_cb_stop   ; 



_off013_BC3E_4A:
- D 1 - I - 0x017C4E 05:BC3E: 4F        .byte $4F   ; 
- D 1 - I - 0x017C4F 05:BC3F: 04        .byte $04   ; 
- D 1 - I - 0x017C50 05:BC40: 4D BC     .word off_ch_4A_BC4D_04
- D 1 - I - 0x017C52 05:BC42: 05        .byte $05   ; 
- D 1 - I - 0x017C53 05:BC43: 49 BC     .word off_ch_4A_BC49_05
- D 1 - I - 0x017C55 05:BC45: 07        .byte $07   ; 
- D 1 - I - 0x017C56 05:BC46: 7B BC     .word off_ch_4A_BC7B_07
- D 1 - I - 0x017C58 05:BC48: FF        .byte $FF   ; 



off_ch_4A_BC49_05:
- D 1 - I - 0x017C59 05:BC49: 43        .byte $43   ; 
- D 1 - I - 0x017C5A 05:BC4A: D0        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x017C5B 05:BC4B: 4E BC     .word loc_D0_BC4E



off_ch_4A_BC4D_04:
- D 1 - I - 0x017C5D 05:BC4D: 44        .byte $44   ; 
loc_D0_BC4E:
- D 1 - I - 0x017C5E 05:BC4E: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x017C5F 05:BC4F: B2 8A     .word ofs_CD_8AB2
- D 1 - I - 0x017C61 05:BC51: C4        .byte con_se_cb_C4, $64   ; 
- D 1 - I - 0x017C63 05:BC53: D4        .byte con_se_cb_D4, $7D   ; 
- D 1 - I - 0x017C65 05:BC55: CA        .byte con_se_cb_CA   ; 
off_CE_BC56:
- D 1 - I - 0x017C66 05:BC56: C1        .byte con_se_cb_C1, $01   ; 
- D 1 - I - 0x017C68 05:BC58: 01        .byte $01   ; 
- D 1 - I - 0x017C69 05:BC59: C3        .byte con_se_cb_C3, $88   ; 
- D 1 - I - 0x017C6B 05:BC5B: C5        .byte con_se_cb_C5, $02   ; 
- D 1 - I - 0x017C6D 05:BC5D: 01        .byte $01   ; 
- D 1 - I - 0x017C6E 05:BC5E: CE        .byte con_se_cb_loop_1, $0A   ; 
- D 1 - I - 0x017C70 05:BC60: 56 BC     .word off_CE_BC56
off_CE_BC62:
- D 1 - I - 0x017C72 05:BC62: C1        .byte con_se_cb_C1, $FF   ; 
- D 1 - I - 0x017C74 05:BC64: 01        .byte $01   ; 
- D 1 - I - 0x017C75 05:BC65: CE        .byte con_se_cb_loop_1, $0A   ; 
- D 1 - I - 0x017C77 05:BC67: 62 BC     .word off_CE_BC62
off_CE_BC69:
- D 1 - I - 0x017C79 05:BC69: C3        .byte con_se_cb_C3, $64   ; 
- D 1 - I - 0x017C7B 05:BC6B: 01        .byte $01   ; 
- D 1 - I - 0x017C7C 05:BC6C: C3        .byte con_se_cb_C3, $EC   ; 
- D 1 - I - 0x017C7E 05:BC6E: 01        .byte $01   ; 
- D 1 - I - 0x017C7F 05:BC6F: C1        .byte con_se_cb_C1, $FF   ; 
- D 1 - I - 0x017C81 05:BC71: 01        .byte $01   ; 
- D 1 - I - 0x017C82 05:BC72: C5        .byte con_se_cb_C5, $FD   ; 
- D 1 - I - 0x017C84 05:BC74: CE        .byte con_se_cb_loop_1, $14   ; 
- D 1 - I - 0x017C86 05:BC76: 69 BC     .word off_CE_BC69
- D 1 - I - 0x017C88 05:BC78: 01        .byte $01   ; 
- D 1 - I - 0x017C89 05:BC79: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017C8A 05:BC7A: D3        .byte con_se_cb_stop   ; 



off_ch_4A_BC7B_07:
- D 1 - I - 0x017C8B 05:BC7B: C4        .byte con_se_cb_C4, $3C   ; 
- D 1 - I - 0x017C8D 05:BC7D: 43        .byte $43   ; 
- D 1 - I - 0x017C8E 05:BC7E: CA        .byte con_se_cb_CA   ; 
off_CE_BC7F:
- D 1 - I - 0x017C8F 05:BC7F: C1        .byte con_se_cb_C1, $01   ; 
- D 1 - I - 0x017C91 05:BC81: C5        .byte con_se_cb_C5, $05   ; 
- D 1 - I - 0x017C93 05:BC83: 03        .byte $03   ; 
- D 1 - I - 0x017C94 05:BC84: CE        .byte con_se_cb_loop_1, $08   ; 
- D 1 - I - 0x017C96 05:BC86: 7F BC     .word off_CE_BC7F
- D 1 - I - 0x017C98 05:BC88: C4        .byte con_se_cb_C4, $6E   ; 
- D 1 - I - 0x017C9A 05:BC8A: 49        .byte $49   ; 
off_CE_BC8B:
off_CF_BC8B:
- D 1 - I - 0x017C9B 05:BC8B: C1        .byte con_se_cb_C1, $FF   ; 
- D 1 - I - 0x017C9D 05:BC8D: C5        .byte con_se_cb_C5, $FC   ; 
- D 1 - I - 0x017C9F 05:BC8F: 03        .byte $03   ; 
- D 1 - I - 0x017CA0 05:BC90: CE        .byte con_se_cb_loop_1, $06   ; 
- D 1 - I - 0x017CA2 05:BC92: 8B BC     .word off_CE_BC8B
off_CE_BC94:
- D 1 - I - 0x017CA4 05:BC94: C1        .byte con_se_cb_C1, $01   ; 
- D 1 - I - 0x017CA6 05:BC96: C5        .byte con_se_cb_C5, $02   ; 
- D 1 - I - 0x017CA8 05:BC98: 03        .byte $03   ; 
- D 1 - I - 0x017CA9 05:BC99: CE        .byte con_se_cb_loop_1, $06   ; 
- D 1 - I - 0x017CAB 05:BC9B: 94 BC     .word off_CE_BC94
- D 1 - I - 0x017CAD 05:BC9D: CF        .byte con_se_cb_loop_2, $04   ; 
- D 1 - I - 0x017CAF 05:BC9F: 8B BC     .word off_CF_BC8B
- D 1 - I - 0x017CB1 05:BCA1: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017CB2 05:BCA2: D3        .byte con_se_cb_stop   ; 



_off013_BCA3_4B:
- D 1 - I - 0x017CB3 05:BCA3: 4F        .byte $4F   ; 
- D 1 - I - 0x017CB4 05:BCA4: 04        .byte $04   ; 
- D 1 - I - 0x017CB5 05:BCA5: AE BC     .word off_ch_4B_BCAE_04
- D 1 - I - 0x017CB7 05:BCA7: 05        .byte $05   ; 
- D 1 - I - 0x017CB8 05:BCA8: E1 BC     .word off_ch_4B_BCE1_05
- D 1 - I - 0x017CBA 05:BCAA: 07        .byte $07   ; 
- D 1 - I - 0x017CBB 05:BCAB: 10 BD     .word off_ch_4B_BD10_07
- D 1 - I - 0x017CBD 05:BCAD: FF        .byte $FF   ; 



off_ch_4B_BCAE_04:
- D 1 - I - 0x017CBE 05:BCAE: 32        .byte $32   ; 
- D 1 - I - 0x017CBF 05:BCAF: 32        .byte $32   ; 
- D 1 - I - 0x017CC0 05:BCB0: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x017CC1 05:BCB1: B2 8A     .word ofs_CD_8AB2
- D 1 - I - 0x017CC3 05:BCB3: C4        .byte con_se_cb_C4, $78   ; 
- D 1 - I - 0x017CC5 05:BCB5: 48        .byte $48   ; 
off_CE_BCB6:
- D 1 - I - 0x017CC6 05:BCB6: C1        .byte con_se_cb_C1, $01   ; 
- D 1 - I - 0x017CC8 05:BCB8: 01        .byte $01   ; 
- D 1 - I - 0x017CC9 05:BCB9: C1        .byte con_se_cb_C1, $FF   ; 
- D 1 - I - 0x017CCB 05:BCBB: 01        .byte $01   ; 
- D 1 - I - 0x017CCC 05:BCBC: CE        .byte con_se_cb_loop_1, $14   ; 
- D 1 - I - 0x017CCE 05:BCBE: B6 BC     .word off_CE_BCB6
off_CE_BCC0:
- D 1 - I - 0x017CD0 05:BCC0: C1        .byte con_se_cb_C1, $01   ; 
- D 1 - I - 0x017CD2 05:BCC2: C5        .byte con_se_cb_C5, $FF   ; 
- D 1 - I - 0x017CD4 05:BCC4: 01        .byte $01   ; 
- D 1 - I - 0x017CD5 05:BCC5: C1        .byte con_se_cb_C1, $FF   ; 
- D 1 - I - 0x017CD7 05:BCC7: C5        .byte con_se_cb_C5, $FF   ; 
- D 1 - I - 0x017CD9 05:BCC9: 01        .byte $01   ; 
- D 1 - I - 0x017CDA 05:BCCA: CE        .byte con_se_cb_loop_1, $19   ; 
- D 1 - I - 0x017CDC 05:BCCC: C0 BC     .word off_CE_BCC0
- D 1 - I - 0x017CDE 05:BCCE: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x017CDF 05:BCCF: A6 8A     .word ofs_CD_8AA6
off_CE_BCD1:
- D 1 - I - 0x017CE1 05:BCD1: C3        .byte con_se_cb_C3, $64   ; 
- D 1 - I - 0x017CE3 05:BCD3: C5        .byte con_se_cb_C5, $FF   ; 
- D 1 - I - 0x017CE5 05:BCD5: 01        .byte $01   ; 
- D 1 - I - 0x017CE6 05:BCD6: C3        .byte con_se_cb_C3, $9C   ; 
- D 1 - I - 0x017CE8 05:BCD8: C5        .byte con_se_cb_C5, $FF   ; 
- D 1 - I - 0x017CEA 05:BCDA: 01        .byte $01   ; 
- D 1 - I - 0x017CEB 05:BCDB: CE        .byte con_se_cb_loop_1, $19   ; 
- D 1 - I - 0x017CED 05:BCDD: D1 BC     .word off_CE_BCD1
- D 1 - I - 0x017CEF 05:BCDF: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017CF0 05:BCE0: D3        .byte con_se_cb_stop   ; 



off_ch_4B_BCE1_05:
- D 1 - I - 0x017CF1 05:BCE1: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x017CF2 05:BCE2: B2 8A     .word ofs_CD_8AB2
- D 1 - I - 0x017CF4 05:BCE4: C4        .byte con_se_cb_C4, $1E   ; 
- D 1 - I - 0x017CF6 05:BCE6: C2        .byte con_se_cb_C2, $28   ; 
- D 1 - I - 0x017CF8 05:BCE8: 48        .byte $48   ; 
- D 1 - I - 0x017CF9 05:BCE9: 28        .byte $28   ; 
- D 1 - I - 0x017CFA 05:BCEA: CA        .byte con_se_cb_CA   ; 
off_CE_BCEB:
- D 1 - I - 0x017CFB 05:BCEB: C1        .byte con_se_cb_C1, $07   ; 
- D 1 - I - 0x017CFD 05:BCED: 01        .byte $01   ; 
- D 1 - I - 0x017CFE 05:BCEE: C1        .byte con_se_cb_C1, $F9   ; 
- D 1 - I - 0x017D00 05:BCF0: 01        .byte $01   ; 
- D 1 - I - 0x017D01 05:BCF1: C5        .byte con_se_cb_C5, $03   ; 
- D 1 - I - 0x017D03 05:BCF3: CE        .byte con_se_cb_loop_1, $1E   ; 
- D 1 - I - 0x017D05 05:BCF5: EB BC     .word off_CE_BCEB
off_CE_BCF7:
- D 1 - I - 0x017D07 05:BCF7: C1        .byte con_se_cb_C1, $07   ; 
- D 1 - I - 0x017D09 05:BCF9: 01        .byte $01   ; 
- D 1 - I - 0x017D0A 05:BCFA: C1        .byte con_se_cb_C1, $F9   ; 
- D 1 - I - 0x017D0C 05:BCFC: 01        .byte $01   ; 
- D 1 - I - 0x017D0D 05:BCFD: CE        .byte con_se_cb_loop_1, $14   ; 
- D 1 - I - 0x017D0F 05:BCFF: F7 BC     .word off_CE_BCF7
off_CE_BD01:
- D 1 - I - 0x017D11 05:BD01: C1        .byte con_se_cb_C1, $07   ; 
- D 1 - I - 0x017D13 05:BD03: 01        .byte $01   ; 
- D 1 - I - 0x017D14 05:BD04: C1        .byte con_se_cb_C1, $F9   ; 
- D 1 - I - 0x017D16 05:BD06: 01        .byte $01   ; 
- D 1 - I - 0x017D17 05:BD07: C5        .byte con_se_cb_C5, $FD   ; 
- D 1 - I - 0x017D19 05:BD09: CE        .byte con_se_cb_loop_1, $28   ; 
- D 1 - I - 0x017D1B 05:BD0B: 01 BD     .word off_CE_BD01
- D 1 - I - 0x017D1D 05:BD0D: 14        .byte $14   ; 
- D 1 - I - 0x017D1E 05:BD0E: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017D1F 05:BD0F: D3        .byte con_se_cb_stop   ; 



off_ch_4B_BD10_07:
- D 1 - I - 0x017D20 05:BD10: C4        .byte con_se_cb_C4, $00   ; 
- D 1 - I - 0x017D22 05:BD12: 4E        .byte $4E   ; 
- D 1 - I - 0x017D23 05:BD13: CA        .byte con_se_cb_CA   ; 
off_CE_BD14:
- D 1 - I - 0x017D24 05:BD14: C1        .byte con_se_cb_C1, $FF   ; 
- D 1 - I - 0x017D26 05:BD16: C5        .byte con_se_cb_C5, $08   ; 
- D 1 - I - 0x017D28 05:BD18: 03        .byte $03   ; 
- D 1 - I - 0x017D29 05:BD19: CE        .byte con_se_cb_loop_1, $08   ; 
- D 1 - I - 0x017D2B 05:BD1B: 14 BD     .word off_CE_BD14
off_CF_BD1D:
- D 1 - I - 0x017D2D 05:BD1D: 4E        .byte $4E   ; 
- D 1 - I - 0x017D2E 05:BD1E: C5        .byte con_se_cb_C5, $E2   ; 
off_CE_BD20:
- D 1 - I - 0x017D30 05:BD20: C1        .byte con_se_cb_C1, $FF   ; 
- D 1 - I - 0x017D32 05:BD22: C5        .byte con_se_cb_C5, $05   ; 
- D 1 - I - 0x017D34 05:BD24: 03        .byte $03   ; 
- D 1 - I - 0x017D35 05:BD25: CE        .byte con_se_cb_loop_1, $08   ; 
- D 1 - I - 0x017D37 05:BD27: 20 BD     .word off_CE_BD20
- D 1 - I - 0x017D39 05:BD29: CF        .byte con_se_cb_loop_2, $05   ; 
- D 1 - I - 0x017D3B 05:BD2B: 1D BD     .word off_CF_BD1D
off_CE_BD2D:
- D 1 - I - 0x017D3D 05:BD2D: C5        .byte con_se_cb_C5, $FF   ; 
- D 1 - I - 0x017D3F 05:BD2F: 01        .byte $01   ; 
- D 1 - I - 0x017D40 05:BD30: CE        .byte con_se_cb_loop_1, $46   ; 
- D 1 - I - 0x017D42 05:BD32: 2D BD     .word off_CE_BD2D
- D 1 - I - 0x017D44 05:BD34: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017D45 05:BD35: D3        .byte con_se_cb_stop   ; 



_off013_BD36_4C:
- D 1 - I - 0x017D46 05:BD36: 40        .byte $40   ; 
- D 1 - I - 0x017D47 05:BD37: 07        .byte $07   ; 
- D 1 - I - 0x017D48 05:BD38: 3B BD     .word off_ch_4C_BD3B_07
- D 1 - I - 0x017D4A 05:BD3A: FF        .byte $FF   ; 



off_ch_4C_BD3B_07:
- D 1 - I - 0x017D4B 05:BD3B: C4        .byte con_se_cb_C4, $46   ; 
- D 1 - I - 0x017D4D 05:BD3D: 48        .byte $48   ; 
- D 1 - I - 0x017D4E 05:BD3E: CA        .byte con_se_cb_CA   ; 
off_CE_BD3F:
- D 1 - I - 0x017D4F 05:BD3F: C5        .byte con_se_cb_C5, $05   ; 
- D 1 - I - 0x017D51 05:BD41: C1        .byte con_se_cb_C1, $FF   ; 
- D 1 - I - 0x017D53 05:BD43: 01        .byte $01   ; 
- D 1 - I - 0x017D54 05:BD44: CE        .byte con_se_cb_loop_1, $06   ; 
- D 1 - I - 0x017D56 05:BD46: 3F BD     .word off_CE_BD3F
- D 1 - I - 0x017D58 05:BD48: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017D59 05:BD49: D3        .byte con_se_cb_stop   ; 



_off013_BD4A_4D:
- D 1 - I - 0x017D5A 05:BD4A: 40        .byte $40   ; 
- D 1 - I - 0x017D5B 05:BD4B: 07        .byte $07   ; 
- D 1 - I - 0x017D5C 05:BD4C: 4F BD     .word off_ch_4D_BD4F_07
- D 1 - I - 0x017D5E 05:BD4E: FF        .byte $FF   ; 



off_ch_4D_BD4F_07:
- D 1 - I - 0x017D5F 05:BD4F: C4        .byte con_se_cb_C4, $46   ; 
- D 1 - I - 0x017D61 05:BD51: 4A        .byte $4A   ; 
- D 1 - I - 0x017D62 05:BD52: CA        .byte con_se_cb_CA   ; 
off_CE_BD53:
- D 1 - I - 0x017D63 05:BD53: C5        .byte con_se_cb_C5, $07   ; 
- D 1 - I - 0x017D65 05:BD55: C1        .byte con_se_cb_C1, $FF   ; 
- D 1 - I - 0x017D67 05:BD57: 01        .byte $01   ; 
- D 1 - I - 0x017D68 05:BD58: CE        .byte con_se_cb_loop_1, $04   ; 
- D 1 - I - 0x017D6A 05:BD5A: 53 BD     .word off_CE_BD53
- D 1 - I - 0x017D6C 05:BD5C: 44        .byte $44   ; 
off_CE_BD5D:
- D 1 - I - 0x017D6D 05:BD5D: C5        .byte con_se_cb_C5, $FA   ; 
- D 1 - I - 0x017D6F 05:BD5F: C1        .byte con_se_cb_C1, $02   ; 
- D 1 - I - 0x017D71 05:BD61: 01        .byte $01   ; 
- D 1 - I - 0x017D72 05:BD62: CE        .byte con_se_cb_loop_1, $03   ; 
- D 1 - I - 0x017D74 05:BD64: 5D BD     .word off_CE_BD5D
- D 1 - I - 0x017D76 05:BD66: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017D77 05:BD67: D3        .byte con_se_cb_stop   ; 



_off013_BD68_4E:
- D 1 - I - 0x017D78 05:BD68: 3F        .byte $3F   ; 
- D 1 - I - 0x017D79 05:BD69: 07        .byte $07   ; 
- D 1 - I - 0x017D7A 05:BD6A: 6D BD     .word off_ch_4E_BD6D_07
- D 1 - I - 0x017D7C 05:BD6C: FF        .byte $FF   ; 



off_ch_4E_BD6D_07:
- D 1 - I - 0x017D7D 05:BD6D: C4        .byte con_se_cb_C4, $1E   ; 
- D 1 - I - 0x017D7F 05:BD6F: 4D        .byte $4D   ; 
- D 1 - I - 0x017D80 05:BD70: CA        .byte con_se_cb_CA   ; 
off_CE_BD71:
- D 1 - I - 0x017D81 05:BD71: C1        .byte con_se_cb_C1, $FF   ; 
- D 1 - I - 0x017D83 05:BD73: C5        .byte con_se_cb_C5, $1E   ; 
- D 1 - I - 0x017D85 05:BD75: 01        .byte $01   ; 
- D 1 - I - 0x017D86 05:BD76: CE        .byte con_se_cb_loop_1, $03   ; 
- D 1 - I - 0x017D88 05:BD78: 71 BD     .word off_CE_BD71
off_CE_BD7A:
- D 1 - I - 0x017D8A 05:BD7A: C1        .byte con_se_cb_C1, $01   ; 
- D 1 - I - 0x017D8C 05:BD7C: 01        .byte $01   ; 
- D 1 - I - 0x017D8D 05:BD7D: CE        .byte con_se_cb_loop_1, $03   ; 
- D 1 - I - 0x017D8F 05:BD7F: 7A BD     .word off_CE_BD7A
- D 1 - I - 0x017D91 05:BD81: 47        .byte $47   ; 
off_CE_BD82:
off_CF_BD82:
- D 1 - I - 0x017D92 05:BD82: C5        .byte con_se_cb_C5, $FE   ; 
- D 1 - I - 0x017D94 05:BD84: 01        .byte $01   ; 
- D 1 - I - 0x017D95 05:BD85: CF        .byte con_se_cb_loop_2, $07   ; 
- D 1 - I - 0x017D97 05:BD87: 82 BD     .word off_CF_BD82
- D 1 - I - 0x017D99 05:BD89: C1        .byte con_se_cb_C1, $FF   ; 
- D 1 - I - 0x017D9B 05:BD8B: CE        .byte con_se_cb_loop_1, $07   ; 
- D 1 - I - 0x017D9D 05:BD8D: 82 BD     .word off_CE_BD82
- D 1 - I - 0x017D9F 05:BD8F: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017DA0 05:BD90: D3        .byte con_se_cb_stop   ; 



_off013_BD91_4F:
- D 1 - I - 0x017DA1 05:BD91: 43        .byte $43   ; 
- D 1 - I - 0x017DA2 05:BD92: 05        .byte $05   ; 
- D 1 - I - 0x017DA3 05:BD93: 99 BD     .word off_ch_4F_BD99_05
- D 1 - I - 0x017DA5 05:BD95: 07        .byte $07   ; 
- D 1 - I - 0x017DA6 05:BD96: BD BD     .word off_ch_4F_BDBD_07
- D 1 - I - 0x017DA8 05:BD98: FF        .byte $FF   ; 



off_ch_4F_BD99_05:
- D 1 - I - 0x017DA9 05:BD99: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x017DAA 05:BD9A: AA 8A     .word ofs_CD_8AAA
- D 1 - I - 0x017DAC 05:BD9C: C4        .byte con_se_cb_C4, $1E   ; 
- D 1 - I - 0x017DAE 05:BD9E: 6C        .byte $6C   ; 
- D 1 - I - 0x017DAF 05:BD9F: CA        .byte con_se_cb_CA   ; 
off_CE_BDA0:
- D 1 - I - 0x017DB0 05:BDA0: C5        .byte con_se_cb_C5, $0A   ; 
- D 1 - I - 0x017DB2 05:BDA2: C3        .byte con_se_cb_C3, $EC   ; 
- D 1 - I - 0x017DB4 05:BDA4: 01        .byte $01   ; 
- D 1 - I - 0x017DB5 05:BDA5: CE        .byte con_se_cb_loop_1, $08   ; 
- D 1 - I - 0x017DB7 05:BDA7: A0 BD     .word off_CE_BDA0
off_CE_BDA9:
- D 1 - I - 0x017DB9 05:BDA9: C5        .byte con_se_cb_C5, $F6   ; 
- D 1 - I - 0x017DBB 05:BDAB: C3        .byte con_se_cb_C3, $D8   ; 
- D 1 - I - 0x017DBD 05:BDAD: 01        .byte $01   ; 
- D 1 - I - 0x017DBE 05:BDAE: CE        .byte con_se_cb_loop_1, $08   ; 
- D 1 - I - 0x017DC0 05:BDB0: A9 BD     .word off_CE_BDA9
off_CE_BDB2:
- D 1 - I - 0x017DC2 05:BDB2: C5        .byte con_se_cb_C5, $FF   ; 
- D 1 - I - 0x017DC4 05:BDB4: C3        .byte con_se_cb_C3, $B0   ; 
- D 1 - I - 0x017DC6 05:BDB6: 03        .byte $03   ; 
- D 1 - I - 0x017DC7 05:BDB7: CE        .byte con_se_cb_loop_1, $1E   ; 
- D 1 - I - 0x017DC9 05:BDB9: B2 BD     .word off_CE_BDB2
- D 1 - I - 0x017DCB 05:BDBB: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017DCC 05:BDBC: D3        .byte con_se_cb_stop   ; 



off_ch_4F_BDBD_07:
- D 1 - I - 0x017DCD 05:BDBD: 4D        .byte $4D   ; 
- D 1 - I - 0x017DCE 05:BDBE: C4        .byte con_se_cb_C4, $64   ; 
- D 1 - I - 0x017DD0 05:BDC0: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017DD1 05:BDC1: 03        .byte $03   ; 
- D 1 - I - 0x017DD2 05:BDC2: 46        .byte $46   ; 
off_CE_BDC3:
- D 1 - I - 0x017DD3 05:BDC3: C5        .byte con_se_cb_C5, $F8   ; 
- D 1 - I - 0x017DD5 05:BDC5: 01        .byte $01   ; 
- D 1 - I - 0x017DD6 05:BDC6: CE        .byte con_se_cb_loop_1, $0A   ; 
- D 1 - I - 0x017DD8 05:BDC8: C3 BD     .word off_CE_BDC3
- D 1 - I - 0x017DDA 05:BDCA: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017DDB 05:BDCB: D3        .byte con_se_cb_stop   ; 



_off013_BDCC_50:
- D 1 - I - 0x017DDC 05:BDCC: 30        .byte $30   ; 
- D 1 - I - 0x017DDD 05:BDCD: FF        .byte $FF   ; 
- D 1 - I - 0x017DDE 05:BDCE: 05        .byte $05   ; 
- D 1 - I - 0x017DDF 05:BDCF: 07        .byte $07   ; 
- D 1 - I - 0x017DE0 05:BDD0: D3 BD     .word off_ch_50_BDD3_07
- D 1 - I - 0x017DE2 05:BDD2: FF        .byte $FF   ; 



off_ch_50_BDD3_07:
- D 1 - I - 0x017DE3 05:BDD3: C0        .byte con_se_cb_C0, $0F   ; 
- D 1 - I - 0x017DE5 05:BDD5: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017DE6 05:BDD6: C4        .byte con_se_cb_C4, $3C   ; 
- D 1 - I - 0x017DE8 05:BDD8: 01        .byte $01   ; 
- D 1 - I - 0x017DE9 05:BDD9: C1        .byte con_se_cb_C1, $FE   ; 
- D 1 - I - 0x017DEB 05:BDDB: 01        .byte $01   ; 
- D 1 - I - 0x017DEC 05:BDDC: C5        .byte con_se_cb_C5, $F6   ; 
- D 1 - I - 0x017DEE 05:BDDE: C1        .byte con_se_cb_C1, $02   ; 
- D 1 - I - 0x017DF0 05:BDE0: 01        .byte $01   ; 
- D 1 - I - 0x017DF1 05:BDE1: C5        .byte con_se_cb_C5, $F6   ; 
- D 1 - I - 0x017DF3 05:BDE3: C1        .byte con_se_cb_C1, $FE   ; 
- D 1 - I - 0x017DF5 05:BDE5: C5        .byte con_se_cb_C5, $F6   ; 
- D 1 - I - 0x017DF7 05:BDE7: 01        .byte $01   ; 
- D 1 - I - 0x017DF8 05:BDE8: C1        .byte con_se_cb_C1, $02   ; 
- D 1 - I - 0x017DFA 05:BDEA: C5        .byte con_se_cb_C5, $F6   ; 
- D 1 - I - 0x017DFC 05:BDEC: 01        .byte $01   ; 
- D 1 - I - 0x017DFD 05:BDED: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017DFE 05:BDEE: D3        .byte con_se_cb_stop   ; 



_off013_BDEF_51:
- D 1 - I - 0x017DFF 05:BDEF: 30        .byte $30   ; 
- D 1 - I - 0x017E00 05:BDF0: FF        .byte $FF   ; 
- D 1 - I - 0x017E01 05:BDF1: 05        .byte $05   ; 
- D 1 - I - 0x017E02 05:BDF2: 07        .byte $07   ; 
- D 1 - I - 0x017E03 05:BDF3: F6 BD     .word off_ch_51_BDF6_07
- D 1 - I - 0x017E05 05:BDF5: FF        .byte $FF   ; 



off_ch_51_BDF6_07:
- D 1 - I - 0x017E06 05:BDF6: C0        .byte con_se_cb_C0, $0F   ; 
- D 1 - I - 0x017E08 05:BDF8: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017E09 05:BDF9: C4        .byte con_se_cb_C4, $6E   ; 
- D 1 - I - 0x017E0B 05:BDFB: 01        .byte $01   ; 
- D 1 - I - 0x017E0C 05:BDFC: C1        .byte con_se_cb_C1, $FE   ; 
- D 1 - I - 0x017E0E 05:BDFE: 01        .byte $01   ; 
- D 1 - I - 0x017E0F 05:BDFF: C5        .byte con_se_cb_C5, $F4   ; 
- D 1 - I - 0x017E11 05:BE01: C1        .byte con_se_cb_C1, $02   ; 
- D 1 - I - 0x017E13 05:BE03: 01        .byte $01   ; 
- D 1 - I - 0x017E14 05:BE04: C5        .byte con_se_cb_C5, $F4   ; 
- D 1 - I - 0x017E16 05:BE06: C1        .byte con_se_cb_C1, $FE   ; 
- D 1 - I - 0x017E18 05:BE08: C5        .byte con_se_cb_C5, $F4   ; 
- D 1 - I - 0x017E1A 05:BE0A: 01        .byte $01   ; 
- D 1 - I - 0x017E1B 05:BE0B: C1        .byte con_se_cb_C1, $02   ; 
- D 1 - I - 0x017E1D 05:BE0D: C5        .byte con_se_cb_C5, $F4   ; 
- D 1 - I - 0x017E1F 05:BE0F: 01        .byte $01   ; 
- - - - - - 0x017E20 05:BE10: CB        .byte con_se_cb_CB   ; 
- - - - - - 0x017E21 05:BE11: D3        .byte con_se_cb_stop   ; 



_off013_BE12_52:
- D 1 - I - 0x017E22 05:BE12: 4F        .byte $4F   ; 
- D 1 - I - 0x017E23 05:BE13: 04        .byte $04   ; 
- D 1 - I - 0x017E24 05:BE14: 21 BE     .word off_ch_52_BE21_04
- D 1 - I - 0x017E26 05:BE16: 05        .byte $05   ; 
- D 1 - I - 0x017E27 05:BE17: 1D BE     .word off_ch_52_BE1D_05
- D 1 - I - 0x017E29 05:BE19: 07        .byte $07   ; 
- D 1 - I - 0x017E2A 05:BE1A: 5A BE     .word off_ch_52_BE5A_07
- D 1 - I - 0x017E2C 05:BE1C: FF        .byte $FF   ; 



off_ch_52_BE1D_05:
- D 1 - I - 0x017E2D 05:BE1D: 47        .byte $47   ; 
- D 1 - I - 0x017E2E 05:BE1E: D0        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x017E2F 05:BE1F: 22 BE     .word loc_D0_BE22



off_ch_52_BE21_04:
- D 1 - I - 0x017E31 05:BE21: 49        .byte $49   ; 
loc_D0_BE22:
- D 1 - I - 0x017E32 05:BE22: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x017E33 05:BE23: B2 8A     .word ofs_CD_8AB2
- D 1 - I - 0x017E35 05:BE25: C4        .byte con_se_cb_C4, $64   ; 
- D 1 - I - 0x017E37 05:BE27: D4        .byte con_se_cb_D4, $7D   ; 
- D 1 - I - 0x017E39 05:BE29: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017E3A 05:BE2A: 02        .byte $02   ; 
- D 1 - I - 0x017E3B 05:BE2B: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017E3C 05:BE2C: 02        .byte $02   ; 
- D 1 - I - 0x017E3D 05:BE2D: CA        .byte con_se_cb_CA   ; 
off_CE_BE2E:
- D 1 - I - 0x017E3E 05:BE2E: C1        .byte con_se_cb_C1, $01   ; 
- D 1 - I - 0x017E40 05:BE30: 01        .byte $01   ; 
- D 1 - I - 0x017E41 05:BE31: C3        .byte con_se_cb_C3, $88   ; 
- D 1 - I - 0x017E43 05:BE33: C5        .byte con_se_cb_C5, $02   ; 
- D 1 - I - 0x017E45 05:BE35: 01        .byte $01   ; 
- D 1 - I - 0x017E46 05:BE36: CE        .byte con_se_cb_loop_1, $0A   ; 
- D 1 - I - 0x017E48 05:BE38: 2E BE     .word off_CE_BE2E
off_CE_BE3A:
- D 1 - I - 0x017E4A 05:BE3A: C3        .byte con_se_cb_C3, $78   ; 
- D 1 - I - 0x017E4C 05:BE3C: 01        .byte $01   ; 
- D 1 - I - 0x017E4D 05:BE3D: CE        .byte con_se_cb_loop_1, $0A   ; 
- D 1 - I - 0x017E4F 05:BE3F: 3A BE     .word off_CE_BE3A
off_CE_BE41:
- D 1 - I - 0x017E51 05:BE41: C3        .byte con_se_cb_C3, $88   ; 
- D 1 - I - 0x017E53 05:BE43: 01        .byte $01   ; 
- D 1 - I - 0x017E54 05:BE44: CE        .byte con_se_cb_loop_1, $0A   ; 
- D 1 - I - 0x017E56 05:BE46: 41 BE     .word off_CE_BE41
off_CE_BE48:
- D 1 - I - 0x017E58 05:BE48: C3        .byte con_se_cb_C3, $78   ; 
- D 1 - I - 0x017E5A 05:BE4A: 01        .byte $01   ; 
- D 1 - I - 0x017E5B 05:BE4B: C3        .byte con_se_cb_C3, $F6   ; 
- D 1 - I - 0x017E5D 05:BE4D: 01        .byte $01   ; 
- D 1 - I - 0x017E5E 05:BE4E: C1        .byte con_se_cb_C1, $FF   ; 
- D 1 - I - 0x017E60 05:BE50: 01        .byte $01   ; 
- D 1 - I - 0x017E61 05:BE51: C5        .byte con_se_cb_C5, $FE   ; 
- D 1 - I - 0x017E63 05:BE53: CE        .byte con_se_cb_loop_1, $3C   ; 
- D 1 - I - 0x017E65 05:BE55: 48 BE     .word off_CE_BE48
- D 1 - I - 0x017E67 05:BE57: 01        .byte $01   ; 
- D 1 - I - 0x017E68 05:BE58: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017E69 05:BE59: D3        .byte con_se_cb_stop   ; 



off_ch_52_BE5A_07:
- D 1 - I - 0x017E6A 05:BE5A: C4        .byte con_se_cb_C4, $4D   ; 
- D 1 - I - 0x017E6C 05:BE5C: 4A        .byte $4A   ; 
- D 1 - I - 0x017E6D 05:BE5D: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017E6E 05:BE5E: 02        .byte $02   ; 
- D 1 - I - 0x017E6F 05:BE5F: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017E70 05:BE60: 02        .byte $02   ; 
- D 1 - I - 0x017E71 05:BE61: 4F        .byte $4F   ; 
- D 1 - I - 0x017E72 05:BE62: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017E73 05:BE63: 01        .byte $01   ; 
off_CE_BE64:
- D 1 - I - 0x017E74 05:BE64: C5        .byte con_se_cb_C5, $0A   ; 
- D 1 - I - 0x017E76 05:BE66: C1        .byte con_se_cb_C1, $FF   ; 
- D 1 - I - 0x017E78 05:BE68: 03        .byte $03   ; 
- D 1 - I - 0x017E79 05:BE69: CE        .byte con_se_cb_loop_1, $05   ; 
- D 1 - I - 0x017E7B 05:BE6B: 64 BE     .word off_CE_BE64
- D 1 - I - 0x017E7D 05:BE6D: C4        .byte con_se_cb_C4, $78   ; 
- D 1 - I - 0x017E7F 05:BE6F: 49        .byte $49   ; 
- D 1 - I - 0x017E80 05:BE70: 1E        .byte $1E   ; 
off_CF_BE71:
- D 1 - I - 0x017E81 05:BE71: C5        .byte con_se_cb_C5, $F9   ; 
- D 1 - I - 0x017E83 05:BE73: 03        .byte $03   ; 
- D 1 - I - 0x017E84 05:BE74: C1        .byte con_se_cb_C1, $01   ; 
- D 1 - I - 0x017E86 05:BE76: C5        .byte con_se_cb_C5, $F9   ; 
- D 1 - I - 0x017E88 05:BE78: 02        .byte $02   ; 
- D 1 - I - 0x017E89 05:BE79: CF        .byte con_se_cb_loop_2, $03   ; 
- D 1 - I - 0x017E8B 05:BE7B: 71 BE     .word off_CF_BE71
- D 1 - I - 0x017E8D 05:BE7D: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017E8E 05:BE7E: C4        .byte con_se_cb_C4, $3C   ; 
- D 1 - I - 0x017E90 05:BE80: 43        .byte $43   ; 
- D 1 - I - 0x017E91 05:BE81: CA        .byte con_se_cb_CA   ; 
off_CE_BE82:
- D 1 - I - 0x017E92 05:BE82: C1        .byte con_se_cb_C1, $01   ; 
- D 1 - I - 0x017E94 05:BE84: C5        .byte con_se_cb_C5, $05   ; 
- D 1 - I - 0x017E96 05:BE86: 03        .byte $03   ; 
- D 1 - I - 0x017E97 05:BE87: CE        .byte con_se_cb_loop_1, $08   ; 
- D 1 - I - 0x017E99 05:BE89: 82 BE     .word off_CE_BE82
- D 1 - I - 0x017E9B 05:BE8B: C4        .byte con_se_cb_C4, $6E   ; 
- D 1 - I - 0x017E9D 05:BE8D: 49        .byte $49   ; 
off_CE_BE8E:
off_CF_BE8E:
- D 1 - I - 0x017E9E 05:BE8E: C1        .byte con_se_cb_C1, $FF   ; 
- D 1 - I - 0x017EA0 05:BE90: C5        .byte con_se_cb_C5, $FC   ; 
- D 1 - I - 0x017EA2 05:BE92: 04        .byte $04   ; 
- D 1 - I - 0x017EA3 05:BE93: CE        .byte con_se_cb_loop_1, $06   ; 
- D 1 - I - 0x017EA5 05:BE95: 8E BE     .word off_CE_BE8E
off_CE_BE97:
- D 1 - I - 0x017EA7 05:BE97: C1        .byte con_se_cb_C1, $01   ; 
- D 1 - I - 0x017EA9 05:BE99: C5        .byte con_se_cb_C5, $02   ; 
- D 1 - I - 0x017EAB 05:BE9B: 04        .byte $04   ; 
- D 1 - I - 0x017EAC 05:BE9C: CE        .byte con_se_cb_loop_1, $06   ; 
- D 1 - I - 0x017EAE 05:BE9E: 97 BE     .word off_CE_BE97
- D 1 - I - 0x017EB0 05:BEA0: CF        .byte con_se_cb_loop_2, $04   ; 
- D 1 - I - 0x017EB2 05:BEA2: 8E BE     .word off_CF_BE8E
- D 1 - I - 0x017EB4 05:BEA4: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017EB5 05:BEA5: D3        .byte con_se_cb_stop   ; 



_off013_BEA6_53:
- D 1 - I - 0x017EB6 05:BEA6: 4F        .byte $4F   ; 
- D 1 - I - 0x017EB7 05:BEA7: 04        .byte $04   ; 
- D 1 - I - 0x017EB8 05:BEA8: CD BE     .word off_ch_53_BECD_04
- D 1 - I - 0x017EBA 05:BEAA: 05        .byte $05   ; 
- D 1 - I - 0x017EBB 05:BEAB: C9 BE     .word off_ch_53_BEC9_05
- D 1 - I - 0x017EBD 05:BEAD: 06        .byte $06   ; 
- D 1 - I - 0x017EBE 05:BEAE: B4 BE     .word off_ch_53_BEB4_06
- D 1 - I - 0x017EC0 05:BEB0: 07        .byte $07   ; 
- D 1 - I - 0x017EC1 05:BEB1: 0E BF     .word off_ch_53_BF0E_07
- D 1 - I - 0x017EC3 05:BEB3: FF        .byte $FF   ; 



off_ch_53_BEB4_06:
- D 1 - I - 0x017EC4 05:BEB4: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017EC5 05:BEB5: 45        .byte $45   ; 
- D 1 - I - 0x017EC6 05:BEB6: 01        .byte $01   ; 
- D 1 - I - 0x017EC7 05:BEB7: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017EC8 05:BEB8: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017EC9 05:BEB9: 46        .byte $46   ; 
- D 1 - I - 0x017ECA 05:BEBA: 01        .byte $01   ; 
- D 1 - I - 0x017ECB 05:BEBB: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017ECC 05:BEBC: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017ECD 05:BEBD: 46        .byte $46   ; 
- D 1 - I - 0x017ECE 05:BEBE: 01        .byte $01   ; 
- D 1 - I - 0x017ECF 05:BEBF: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017ED0 05:BEC0: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017ED1 05:BEC1: 48        .byte $48   ; 
- D 1 - I - 0x017ED2 05:BEC2: 01        .byte $01   ; 
- D 1 - I - 0x017ED3 05:BEC3: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017ED4 05:BEC4: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017ED5 05:BEC5: 47        .byte $47   ; 
- D 1 - I - 0x017ED6 05:BEC6: 01        .byte $01   ; 
- D 1 - I - 0x017ED7 05:BEC7: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017ED8 05:BEC8: D3        .byte con_se_cb_stop   ; 



off_ch_53_BEC9_05:
- D 1 - I - 0x017ED9 05:BEC9: 5F        .byte $5F   ; 
- D 1 - I - 0x017EDA 05:BECA: D0        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x017EDB 05:BECB: CE BE     .word loc_D0_BECE



off_ch_53_BECD_04:
- D 1 - I - 0x017EDD 05:BECD: 61        .byte $61   ; 
loc_D0_BECE:
- D 1 - I - 0x017EDE 05:BECE: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x017EDF 05:BECF: A6 8A     .word ofs_CD_8AA6
- D 1 - I - 0x017EE1 05:BED1: C4        .byte con_se_cb_C4, $7F   ; 
- D 1 - I - 0x017EE3 05:BED3: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017EE4 05:BED4: 45        .byte $45   ; 
- D 1 - I - 0x017EE5 05:BED5: 01        .byte $01   ; 
- D 1 - I - 0x017EE6 05:BED6: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017EE7 05:BED7: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017EE8 05:BED8: 46        .byte $46   ; 
- D 1 - I - 0x017EE9 05:BED9: 01        .byte $01   ; 
- D 1 - I - 0x017EEA 05:BEDA: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017EEB 05:BEDB: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017EEC 05:BEDC: 46        .byte $46   ; 
- D 1 - I - 0x017EED 05:BEDD: 01        .byte $01   ; 
- D 1 - I - 0x017EEE 05:BEDE: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017EEF 05:BEDF: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017EF0 05:BEE0: 48        .byte $48   ; 
- D 1 - I - 0x017EF1 05:BEE1: 01        .byte $01   ; 
- D 1 - I - 0x017EF2 05:BEE2: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017EF3 05:BEE3: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017EF4 05:BEE4: 47        .byte $47   ; 
- D 1 - I - 0x017EF5 05:BEE5: 01        .byte $01   ; 
- D 1 - I - 0x017EF6 05:BEE6: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017EF7 05:BEE7: CD        .byte con_se_cb_CD   ; 
- D 1 - I - 0x017EF8 05:BEE8: AA 8A     .word ofs_CD_8AAA
- D 1 - I - 0x017EFA 05:BEEA: C4        .byte con_se_cb_C4, $0A   ; 
- D 1 - I - 0x017EFC 05:BEEC: 1E        .byte $1E   ; 
- D 1 - I - 0x017EFD 05:BEED: D4        .byte con_se_cb_D4, $7D   ; 
- D 1 - I - 0x017EFF 05:BEEF: CA        .byte con_se_cb_CA   ; 
off_CE_BEF0:
- D 1 - I - 0x017F00 05:BEF0: C1        .byte con_se_cb_C1, $02   ; 
- D 1 - I - 0x017F02 05:BEF2: 01        .byte $01   ; 
- D 1 - I - 0x017F03 05:BEF3: C1        .byte con_se_cb_C1, $FF   ; 
- D 1 - I - 0x017F05 05:BEF5: C3        .byte con_se_cb_C3, $D8   ; 
- D 1 - I - 0x017F07 05:BEF7: C5        .byte con_se_cb_C5, $05   ; 
- D 1 - I - 0x017F09 05:BEF9: 01        .byte $01   ; 
- D 1 - I - 0x017F0A 05:BEFA: CE        .byte con_se_cb_loop_1, $14   ; 
- D 1 - I - 0x017F0C 05:BEFC: F0 BE     .word off_CE_BEF0
off_CE_BEFE:
- D 1 - I - 0x017F0E 05:BEFE: C1        .byte con_se_cb_C1, $02   ; 
- D 1 - I - 0x017F10 05:BF00: 01        .byte $01   ; 
- D 1 - I - 0x017F11 05:BF01: C1        .byte con_se_cb_C1, $FF   ; 
- D 1 - I - 0x017F13 05:BF03: C3        .byte con_se_cb_C3, $D8   ; 
- D 1 - I - 0x017F15 05:BF05: C5        .byte con_se_cb_C5, $FB   ; 
- D 1 - I - 0x017F17 05:BF07: 01        .byte $01   ; 
- D 1 - I - 0x017F18 05:BF08: CE        .byte con_se_cb_loop_1, $14   ; 
- D 1 - I - 0x017F1A 05:BF0A: FE BE     .word off_CE_BEFE
- D 1 - I - 0x017F1C 05:BF0C: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017F1D 05:BF0D: D3        .byte con_se_cb_stop   ; 



off_ch_53_BF0E_07:
- D 1 - I - 0x017F1E 05:BF0E: C4        .byte con_se_cb_C4, $4D   ; 
- D 1 - I - 0x017F20 05:BF10: 4F        .byte $4F   ; 
- D 1 - I - 0x017F21 05:BF11: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017F22 05:BF12: 01        .byte $01   ; 
off_CE_BF13:
- D 1 - I - 0x017F23 05:BF13: C5        .byte con_se_cb_C5, $0A   ; 
- D 1 - I - 0x017F25 05:BF15: C1        .byte con_se_cb_C1, $FF   ; 
- D 1 - I - 0x017F27 05:BF17: 03        .byte $03   ; 
- D 1 - I - 0x017F28 05:BF18: CE        .byte con_se_cb_loop_1, $05   ; 
- D 1 - I - 0x017F2A 05:BF1A: 13 BF     .word off_CE_BF13
- D 1 - I - 0x017F2C 05:BF1C: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017F2D 05:BF1D: 02        .byte $02   ; 
- D 1 - I - 0x017F2E 05:BF1E: C4        .byte con_se_cb_C4, $4D   ; 
- D 1 - I - 0x017F30 05:BF20: 4F        .byte $4F   ; 
- D 1 - I - 0x017F31 05:BF21: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017F32 05:BF22: 01        .byte $01   ; 
off_CE_BF23:
- D 1 - I - 0x017F33 05:BF23: C5        .byte con_se_cb_C5, $0A   ; 
- D 1 - I - 0x017F35 05:BF25: C1        .byte con_se_cb_C1, $FF   ; 
- D 1 - I - 0x017F37 05:BF27: 03        .byte $03   ; 
- D 1 - I - 0x017F38 05:BF28: CE        .byte con_se_cb_loop_1, $03   ; 
- D 1 - I - 0x017F3A 05:BF2A: 23 BF     .word off_CE_BF23
- D 1 - I - 0x017F3C 05:BF2C: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017F3D 05:BF2D: 01        .byte $01   ; 
- D 1 - I - 0x017F3E 05:BF2E: C4        .byte con_se_cb_C4, $4D   ; 
- D 1 - I - 0x017F40 05:BF30: 4F        .byte $4F   ; 
- D 1 - I - 0x017F41 05:BF31: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017F42 05:BF32: 01        .byte $01   ; 
off_CE_BF33:
- D 1 - I - 0x017F43 05:BF33: C5        .byte con_se_cb_C5, $0A   ; 
- D 1 - I - 0x017F45 05:BF35: C1        .byte con_se_cb_C1, $FF   ; 
- D 1 - I - 0x017F47 05:BF37: 03        .byte $03   ; 
- D 1 - I - 0x017F48 05:BF38: CE        .byte con_se_cb_loop_1, $03   ; 
- D 1 - I - 0x017F4A 05:BF3A: 33 BF     .word off_CE_BF33
- D 1 - I - 0x017F4C 05:BF3C: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017F4D 05:BF3D: 01        .byte $01   ; 
- D 1 - I - 0x017F4E 05:BF3E: C4        .byte con_se_cb_C4, $4D   ; 
- D 1 - I - 0x017F50 05:BF40: 4F        .byte $4F   ; 
- D 1 - I - 0x017F51 05:BF41: CA        .byte con_se_cb_CA   ; 
- D 1 - I - 0x017F52 05:BF42: 01        .byte $01   ; 
off_CE_BF43:
- D 1 - I - 0x017F53 05:BF43: C5        .byte con_se_cb_C5, $0A   ; 
- D 1 - I - 0x017F55 05:BF45: C1        .byte con_se_cb_C1, $FF   ; 
- D 1 - I - 0x017F57 05:BF47: 03        .byte $03   ; 
- D 1 - I - 0x017F58 05:BF48: CE        .byte con_se_cb_loop_1, $05   ; 
- D 1 - I - 0x017F5A 05:BF4A: 43 BF     .word off_CE_BF43
- D 1 - I - 0x017F5C 05:BF4C: C4        .byte con_se_cb_C4, $78   ; 
- D 1 - I - 0x017F5E 05:BF4E: 49        .byte $49   ; 
- D 1 - I - 0x017F5F 05:BF4F: 1E        .byte $1E   ; 
off_CF_BF50:
- D 1 - I - 0x017F60 05:BF50: C5        .byte con_se_cb_C5, $F9   ; 
- D 1 - I - 0x017F62 05:BF52: 05        .byte $05   ; 
- D 1 - I - 0x017F63 05:BF53: C1        .byte con_se_cb_C1, $01   ; 
- D 1 - I - 0x017F65 05:BF55: C5        .byte con_se_cb_C5, $F9   ; 
- D 1 - I - 0x017F67 05:BF57: 05        .byte $05   ; 
- D 1 - I - 0x017F68 05:BF58: CF        .byte con_se_cb_loop_2, $06   ; 
- D 1 - I - 0x017F6A 05:BF5A: 50 BF     .word off_CF_BF50
- D 1 - I - 0x017F6C 05:BF5C: CB        .byte con_se_cb_CB   ; 
- D 1 - I - 0x017F6D 05:BF5D: D3        .byte con_se_cb_stop   ; 


; bzk garbage
- - - - - - 0x017F6E 05:BF5E: 00        .byte $00, $00   ; 
- - - - - - 0x017F70 05:BF60: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x017F80 05:BF70: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x017F90 05:BF80: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x017FA0 05:BF90: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x017FB0 05:BFA0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x017FC0 05:BFB0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x017FD0 05:BFC0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x017FE0 05:BFD0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x017FF0 05:BFE0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x018000 05:BFF0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 



.out .sprintf("Free bytes in bank 05: 0x%04X [%d]", ($BFFF - *), ($BFFF - *))



.segment "BANK_05_ID"
- D 1 - - - 0x01800F 05:BFFF: 05        .byte con_prg_bank + $05   ; 



