.segment "BANK_02"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x010010-0x01800F



con_include_bank = $02



.export ofs_0x010080_0B_prepare_static_screen
.export ofs_0x01035B_0F_draw_scroll_content_1
.export ofs_0x0103BF_10_draw_scroll_content_2
.export ofs_0x0106F4_24
.export ofs_0x010939_11
.export ofs_0x0119D3_18
.export ofs_0x0119E0_16
.export ofs_0x0119ED_17
.export ofs_0x01258C_19
.export ofs_0x012632_1F
.export ofs_0x012796_1C
.export ofs_0x01282E_1E_display_value
.export ofs_0x013018_1B
.export ofs_0x01332F_21
.export ofs_0x013374_22
.export ofs_0x013BF7_25_enter_cheat
.export sub_0x0141F6_play_music
.export sub_0x014256_disable_music_driver
.export sub_0x014299_play_sfx
.export sub_0x014304_update_music_driver



; bzk garbage
- - - - - - 0x010010 04:8000: 53        .byte "SOLSTICE V1.00  "   ; 
- - - - - - 0x010020 04:8010: 43        .byte "COPYRIGHT 1989  "   ; 
- - - - - - 0x010030 04:8020: 53        .byte "SOFTWARE CREATIO"   ; 
- - - - - - 0x010040 04:8030: 4E        .byte "NS LTD.         "   ; 
- - - - - - 0x010050 04:8040: 50        .byte "PHONE ENGLAND ON"   ; 
- - - - - - 0x010060 04:8050: 30        .byte "010 44 61 236   "   ; 
- - - - - - 0x010070 04:8060: 31        .byte "1154            "   ; 



ofs_0x010080_0B_prepare_static_screen:
; pause, game over
C - - - - - 0x010080 04:8070: 20 7C 81  JSR sub_817C
C - - - - - 0x010083 04:8073: A2 00     LDX #$00
C - - - - - 0x010085 04:8075: 20 07 83  JSR sub_8307
C - - - - - 0x010088 04:8078: A2 00     LDX #$00
C - - - - - 0x01008A 04:807A: 20 04 84  JSR sub_8404
C - - - - - 0x01008D 04:807D: A2 01     LDX #$01
C - - - - - 0x01008F 04:807F: 20 04 84  JSR sub_8404
C - - - - - 0x010092 04:8082: A2 02     LDX #$02
C - - - - - 0x010094 04:8084: 20 04 84  JSR sub_8404
C - - - - - 0x010097 04:8087: A2 03     LDX #$03
C - - - - - 0x010099 04:8089: 20 04 84  JSR sub_8404
C - - - - - 0x01009C 04:808C: 20 DA 87  JSR sub_87DA
C - - - - - 0x01009F 04:808F: 20 5F 86  JSR sub_865F
C - - - - - 0x0100A2 04:8092: 20 CC 86  JSR sub_86CC
C - - - - - 0x0100A5 04:8095: 20 90 88  JSR sub_8890
C - - - - - 0x0100A8 04:8098: A2 04     LDX #$04
C - - - - - 0x0100AA 04:809A: A0 00     LDY #$00
bra_809C_loop:
C - - - - - 0x0100AC 04:809C: 98        TYA
C - - - - - 0x0100AD 04:809D: 0A        ASL
C - - - - - 0x0100AE 04:809E: 18        CLC
C - - - - - 0x0100AF 04:809F: 69 01     ADC #$01
C - - - - - 0x0100B1 04:80A1: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x0100B4 04:80A4: 9D 09 02  STA ram_spr_T + $08,X
C - - - - - 0x0100B7 04:80A7: 18        CLC
C - - - - - 0x0100B8 04:80A8: 69 01     ADC #$01
C - - - - - 0x0100BA 04:80AA: 9D 05 02  STA ram_spr_T + $04,X
C - - - - - 0x0100BD 04:80AD: 9D 0D 02  STA ram_spr_T + $0C,X
C - - - - - 0x0100C0 04:80B0: B9 57 89  LDA tbl_8957_spr_X,Y
C - - - - - 0x0100C3 04:80B3: 18        CLC
C - - - - - 0x0100C4 04:80B4: 69 01     ADC #$01
C - - - - - 0x0100C6 04:80B6: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x0100C9 04:80B9: 9D 07 02  STA ram_spr_X + $04,X
C - - - - - 0x0100CC 04:80BC: 18        CLC
C - - - - - 0x0100CD 04:80BD: 69 07     ADC #$07
C - - - - - 0x0100CF 04:80BF: 9D 0B 02  STA ram_spr_X + $08,X
C - - - - - 0x0100D2 04:80C2: 9D 0F 02  STA ram_spr_X + $0C,X
C - - - - - 0x0100D5 04:80C5: B9 5B 89  LDA tbl_895B_spr_Y,Y
C - - - - - 0x0100D8 04:80C8: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x0100DB 04:80CB: 9D 08 02  STA ram_spr_Y + $08,X
C - - - - - 0x0100DE 04:80CE: 18        CLC
C - - - - - 0x0100DF 04:80CF: 69 08     ADC #$08
C - - - - - 0x0100E1 04:80D1: 9D 04 02  STA ram_spr_Y + $04,X
C - - - - - 0x0100E4 04:80D4: 9D 0C 02  STA ram_spr_Y + $0C,X
C - - - - - 0x0100E7 04:80D7: 98        TYA
C - - - - - 0x0100E8 04:80D8: 49 40     EOR #$40
C - - - - - 0x0100EA 04:80DA: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x0100ED 04:80DD: 9D 06 02  STA ram_spr_A + $04,X
C - - - - - 0x0100F0 04:80E0: 49 40     EOR #$40
C - - - - - 0x0100F2 04:80E2: 9D 0A 02  STA ram_spr_A + $08,X
C - - - - - 0x0100F5 04:80E5: 9D 0E 02  STA ram_spr_A + $0C,X
C - - - - - 0x0100F8 04:80E8: 8A        TXA
C - - - - - 0x0100F9 04:80E9: 18        CLC
C - - - - - 0x0100FA 04:80EA: 69 10     ADC #$10
C - - - - - 0x0100FC 04:80EC: AA        TAX
C - - - - - 0x0100FD 04:80ED: C8        INY
C - - - - - 0x0100FE 04:80EE: C0 04     CPY #$04
C - - - - - 0x010100 04:80F0: D0 AA     BNE bra_809C_loop
C - - - - - 0x010102 04:80F2: A9 09     LDA #$09
C - - - - - 0x010104 04:80F4: 8D 45 02  STA ram_spr_T + $44
C - - - - - 0x010107 04:80F7: 8D 49 02  STA ram_spr_T + $48
C - - - - - 0x01010A 04:80FA: 8D 4D 02  STA ram_spr_T + $4C
C - - - - - 0x01010D 04:80FD: 8D 51 02  STA ram_spr_T + $50
C - - - - - 0x010110 04:8100: A9 00     LDA #$00
C - - - - - 0x010112 04:8102: 8D 46 02  STA ram_spr_A + $44
C - - - - - 0x010115 04:8105: A9 40     LDA #$40
C - - - - - 0x010117 04:8107: 8D 4A 02  STA ram_spr_A + $48
C - - - - - 0x01011A 04:810A: A9 80     LDA #$80
C - - - - - 0x01011C 04:810C: 8D 4E 02  STA ram_spr_A + $4C
C - - - - - 0x01011F 04:810F: A9 C0     LDA #$C0
C - - - - - 0x010121 04:8111: 8D 52 02  STA ram_spr_A + $50
C - - - - - 0x010124 04:8114: 20 29 89  JSR sub_8929
C - - - - - 0x010127 04:8117: A2 64     LDX #$64
bra_8119_loop:
C - - - - - 0x010129 04:8119: BD 6C 8B  LDA tbl_8B6D - $01,X
C - - - - - 0x01012C 04:811C: 9D 33 03  STA ram_0334 - $01,X
C - - - - - 0x01012F 04:811F: CA        DEX
C - - - - - 0x010130 04:8120: D0 F7     BNE bra_8119_loop
; calculate visited rooms
C - - - - - 0x010132 04:8122: A9 00     LDA #$00
C - - - - - 0x010134 04:8124: 85 0D     STA ram_000D
C - - - - - 0x010136 04:8126: 85 0E     STA ram_000E
C - - - - - 0x010138 04:8128: 85 11     STA ram_0011    ; walkthrough counter lo
C - - - - - 0x01013A 04:812A: 85 12     STA ram_0012    ; walkthrough counter hi
C - - - - - 0x01013C 04:812C: A2 00     LDX #$00
bra_812E_loop:
C - - - - - 0x01013E 04:812E: 8A        TXA
C - - - - - 0x01013F 04:812F: 20 26 FE  JSR sub_inc_FE26_prg_bankswitch
- D 0 - I - 0x010142 04:8132: 2A        .byte con_bsw_check_if_room_was_visited
C - - - - - 0x010143 04:8133: A8        TAY
C - - - - - 0x010144 04:8134: F0 07     BEQ bra_813D_next   ; if was not visited
C - - - - - 0x010146 04:8136: E6 11     INC ram_0011    ; walkthrough counter lo
C - - - - - 0x010148 04:8138: A9 01     LDA #$01
C - - - - - 0x01014A 04:813A: 20 B8 81  JSR sub_81B8
bra_813D_next:
C - - - - - 0x01014D 04:813D: CA        DEX
C - - - - - 0x01014E 04:813E: D0 EE     BNE bra_812E_loop
C - - - - - 0x010150 04:8140: A5 0E     LDA ram_000E
C - - - - - 0x010152 04:8142: 29 0F     AND #$0F
C - - - - - 0x010154 04:8144: 18        CLC
C - - - - - 0x010155 04:8145: 69 01     ADC #$01
C - - - - - 0x010157 04:8147: 8D 56 03  STA ram_0356
C - - - - - 0x01015A 04:814A: A5 0D     LDA ram_000D
C - - - - - 0x01015C 04:814C: 4A        LSR
C - - - - - 0x01015D 04:814D: 4A        LSR
C - - - - - 0x01015E 04:814E: 4A        LSR
C - - - - - 0x01015F 04:814F: 4A        LSR
C - - - - - 0x010160 04:8150: 18        CLC
C - - - - - 0x010161 04:8151: 69 01     ADC #$01
C - - - - - 0x010163 04:8153: 8D 57 03  STA ram_0357
C - - - - - 0x010166 04:8156: A5 0D     LDA ram_000D
C - - - - - 0x010168 04:8158: 29 0F     AND #$0F
C - - - - - 0x01016A 04:815A: 18        CLC
C - - - - - 0x01016B 04:815B: 69 01     ADC #$01
C - - - - - 0x01016D 04:815D: 8D 58 03  STA ram_0358
C - - - - - 0x010170 04:8160: A2 3F     LDX #$3F
bra_8162_loop:
C - - - - - 0x010172 04:8162: 8A        TXA
C - - - - - 0x010173 04:8163: 20 26 FE  JSR sub_inc_FE26_prg_bankswitch
- D 0 - I - 0x010176 04:8166: 3C        .byte con_bsw_check_if_bonus_was_picked
C - - - - - 0x010177 04:8167: A8        TAY
C - - - - - 0x010178 04:8168: F0 0B     BEQ bra_8175_next    ; if was not picked
C - - - - - 0x01017A 04:816A: A5 11     LDA ram_0011    ; walkthrough counter lo
C - - - - - 0x01017C 04:816C: 18        CLC
C - - - - - 0x01017D 04:816D: 69 05     ADC #$05
C - - - - - 0x01017F 04:816F: 85 11     STA ram_0011    ; walkthrough counter lo
C - - - - - 0x010181 04:8171: 90 02     BCC bra_8175_next    ; if not overflow
C - - - - - 0x010183 04:8173: E6 12     INC ram_0012    ; walkthrough counter hi
bra_8175_next:
C - - - - - 0x010185 04:8175: CA        DEX
C - - - - - 0x010186 04:8176: 10 EA     BPL bra_8162_loop
C - - - - - 0x010188 04:8178: 20 F8 81  JSR sub_81F8_calculate_percents
C - - - - - 0x01018B 04:817B: 60        RTS



sub_817C:
C - - - - - 0x01018C 04:817C: A9 00     LDA #$00
C - - - - - 0x01018E 04:817E: 8D 06 20  STA $2006
C - - - - - 0x010191 04:8181: 8D 06 20  STA $2006
C - - - - - 0x010194 04:8184: A0 00     LDY #$00
C - - - - - 0x010196 04:8186: A9 C3     LDA #< tbl_8DC3
C - - - - - 0x010198 04:8188: 85 22     STA ram_0022
C - - - - - 0x01019A 04:818A: A9 8D     LDA #> tbl_8DC3
C - - - - - 0x01019C 04:818C: 85 23     STA ram_0023
C - - - - - 0x01019E 04:818E: A2 0C     LDX #$0C
bra_8190_loop:
C - - - - - 0x0101A0 04:8190: B1 22     LDA (ram_0022),Y
C - - - - - 0x0101A2 04:8192: 8D 07 20  STA $2007
C - - - - - 0x0101A5 04:8195: C8        INY
C - - - - - 0x0101A6 04:8196: D0 F8     BNE bra_8190_loop
C - - - - - 0x0101A8 04:8198: E6 23     INC ram_0023
C - - - - - 0x0101AA 04:819A: CA        DEX
C - - - - - 0x0101AB 04:819B: D0 F3     BNE bra_8190_loop
C - - - - - 0x0101AD 04:819D: A9 23     LDA #> $23C0
C - - - - - 0x0101AF 04:819F: 8D 06 20  STA $2006
C - - - - - 0x0101B2 04:81A2: A9 C0     LDA #< $23C0
C - - - - - 0x0101B4 04:81A4: 8D 06 20  STA $2006
C - - - - - 0x0101B7 04:81A7: A2 00     LDX #$00
bra_81A9_loop:
C - - - - - 0x0101B9 04:81A9: BD C7 82  LDA tbl_82C7_attributes,X
C - - - - - 0x0101BC 04:81AC: 8D 07 20  STA $2007
C - - - - - 0x0101BF 04:81AF: E8        INX
C - - - - - 0x0101C0 04:81B0: E0 40     CPX #$40
C - - - - - 0x0101C2 04:81B2: D0 F5     BNE bra_81A9_loop
C - - - - - 0x0101C4 04:81B4: 20 90 88  JSR sub_8890
C - - - - - 0x0101C7 04:81B7: 60        RTS



sub_81B8:
C - - - - - 0x0101C8 04:81B8: 18        CLC
C - - - - - 0x0101C9 04:81B9: 65 0D     ADC ram_000D
C - - - - - 0x0101CB 04:81BB: 85 0D     STA ram_000D
C - - - - - 0x0101CD 04:81BD: 29 0F     AND #$0F
C - - - - - 0x0101CF 04:81BF: C9 0A     CMP #$0A
C - - - - - 0x0101D1 04:81C1: 90 34     BCC bra_81F7_RTS
C - - - - - 0x0101D3 04:81C3: A5 0D     LDA ram_000D
C - - - - - 0x0101D5 04:81C5: 18        CLC
C - - - - - 0x0101D6 04:81C6: 69 06     ADC #$06
C - - - - - 0x0101D8 04:81C8: 85 0D     STA ram_000D
C - - - - - 0x0101DA 04:81CA: 29 F0     AND #$F0
C - - - - - 0x0101DC 04:81CC: C9 A0     CMP #$A0
C - - - - - 0x0101DE 04:81CE: 90 27     BCC bra_81F7_RTS
C - - - - - 0x0101E0 04:81D0: A5 0D     LDA ram_000D
C - - - - - 0x0101E2 04:81D2: 18        CLC
C - - - - - 0x0101E3 04:81D3: 69 60     ADC #< $0060
C - - - - - 0x0101E5 04:81D5: 85 0D     STA ram_000D
C - - - - - 0x0101E7 04:81D7: A5 0E     LDA ram_000E
C - - - - - 0x0101E9 04:81D9: 69 00     ADC #> $0060
C - - - - - 0x0101EB 04:81DB: 85 0E     STA ram_000E
C - - - - - 0x0101ED 04:81DD: 29 0F     AND #$0F
C - - - - - 0x0101EF 04:81DF: C9 0A     CMP #$0A
C - - - - - 0x0101F1 04:81E1: 90 14     BCC bra_81F7_RTS
- - - - - - 0x0101F3 04:81E3: A5 0E     LDA ram_000E
- - - - - - 0x0101F5 04:81E5: 18        CLC
- - - - - - 0x0101F6 04:81E6: 69 06     ADC #$06
- - - - - - 0x0101F8 04:81E8: 85 0E     STA ram_000E
- - - - - - 0x0101FA 04:81EA: 29 F0     AND #$F0
- - - - - - 0x0101FC 04:81EC: C9 A0     CMP #$A0
- - - - - - 0x0101FE 04:81EE: 90 07     BCC bra_81F7_RTS
- - - - - - 0x010200 04:81F0: A5 0E     LDA ram_000E
- - - - - - 0x010202 04:81F2: 18        CLC
- - - - - - 0x010203 04:81F3: 69 60     ADC #$60
- - - - - - 0x010205 04:81F5: 85 0E     STA ram_000E
bra_81F7_RTS:
C - - - - - 0x010207 04:81F7: 60        RTS



sub_81F8_calculate_percents:
C - - - - - 0x010208 04:81F8: A9 64     LDA #< $0064
C - - - - - 0x01020A 04:81FA: 85 0D     STA ram_000D
C - - - - - 0x01020C 04:81FC: A9 00     LDA #> $0064
C - - - - - 0x01020E 04:81FE: 85 0E     STA ram_000E
C - - - - - 0x010210 04:8200: 20 7B 82  JSR sub_827B_multiply_16bit
C - - - - - 0x010213 04:8203: A5 11     LDA ram_0011
C - - - - - 0x010215 04:8205: 85 0D     STA ram_000D
C - - - - - 0x010217 04:8207: A5 12     LDA ram_0012
C - - - - - 0x010219 04:8209: 85 0E     STA ram_000E
C - - - - - 0x01021B 04:820B: A9 00     LDA #< $0200
C - - - - - 0x01021D 04:820D: 85 11     STA ram_0011
C - - - - - 0x01021F 04:820F: A9 02     LDA #> $0200
C - - - - - 0x010221 04:8211: 85 12     STA ram_0012
C - - - - - 0x010223 04:8213: 20 9F 82  JSR sub_829F_divide_16bit
C - - - - - 0x010226 04:8216: 20 68 82  JSR sub_8268_calculate_decimal
C - - - - - 0x010229 04:8219: A5 0E     LDA ram_000E
C - - - - - 0x01022B 04:821B: 8D 7C 03  STA ram_037C
C - - - - - 0x01022E 04:821E: A5 0D     LDA ram_000D
C - - - - - 0x010230 04:8220: 8D 7D 03  STA ram_037D
C - - - - - 0x010233 04:8223: A5 0F     LDA ram_000F
C - - - - - 0x010235 04:8225: 85 11     STA ram_0011
C - - - - - 0x010237 04:8227: A5 10     LDA ram_0010
C - - - - - 0x010239 04:8229: 85 12     STA ram_0012
C - - - - - 0x01023B 04:822B: A9 64     LDA #< $0064
C - - - - - 0x01023D 04:822D: 85 0D     STA ram_000D
C - - - - - 0x01023F 04:822F: A9 00     LDA #> $0064
C - - - - - 0x010241 04:8231: 85 0E     STA ram_000E
C - - - - - 0x010243 04:8233: 20 7B 82  JSR sub_827B_multiply_16bit
C - - - - - 0x010246 04:8236: A5 11     LDA ram_0011
C - - - - - 0x010248 04:8238: 85 0D     STA ram_000D
C - - - - - 0x01024A 04:823A: A5 12     LDA ram_0012
C - - - - - 0x01024C 04:823C: 85 0E     STA ram_000E
C - - - - - 0x01024E 04:823E: A9 00     LDA #< $0200
C - - - - - 0x010250 04:8240: 85 11     STA ram_0011
C - - - - - 0x010252 04:8242: A9 02     LDA #> $0200
C - - - - - 0x010254 04:8244: 85 12     STA ram_0012
C - - - - - 0x010256 04:8246: 20 9F 82  JSR sub_829F_divide_16bit
C - - - - - 0x010259 04:8249: 20 68 82  JSR sub_8268_calculate_decimal
C - - - - - 0x01025C 04:824C: A5 0E     LDA ram_000E
C - - - - - 0x01025E 04:824E: 8D 7F 03  STA ram_037F
C - - - - - 0x010261 04:8251: A5 0D     LDA ram_000D
C - - - - - 0x010263 04:8253: 8D 80 03  STA ram_0380
C - - - - - 0x010266 04:8256: AD 7C 03  LDA ram_037C
C - - - - - 0x010269 04:8259: C9 0B     CMP #$0B
C - - - - - 0x01026B 04:825B: D0 0A     BNE bra_8267_RTS
C - - - - - 0x01026D 04:825D: A9 02     LDA #$02
C - - - - - 0x01026F 04:825F: 8D 7B 03  STA ram_037B
C - - - - - 0x010272 04:8262: A9 01     LDA #$01
C - - - - - 0x010274 04:8264: 8D 7C 03  STA ram_037C
bra_8267_RTS:
C - - - - - 0x010277 04:8267: 60        RTS



sub_8268_calculate_decimal:
C - - - - - 0x010278 04:8268: A2 01     LDX #$01
bra_826A_loop:
C - - - - - 0x01027A 04:826A: A5 0D     LDA ram_000D
C - - - - - 0x01027C 04:826C: 38        SEC
C - - - - - 0x01027D 04:826D: E9 0A     SBC #$0A
C - - - - - 0x01027F 04:826F: 30 05     BMI bra_8276
C - - - - - 0x010281 04:8271: E8        INX
C - - - - - 0x010282 04:8272: 85 0D     STA ram_000D
C - - - - - 0x010284 04:8274: D0 F4     BNE bra_826A_loop
bra_8276:
C - - - - - 0x010286 04:8276: 86 0E     STX ram_000E
C - - - - - 0x010288 04:8278: E6 0D     INC ram_000D
C - - - - - 0x01028A 04:827A: 60        RTS



sub_827B_multiply_16bit:
C - - - - - 0x01028B 04:827B: A9 00     LDA #$00
C - - - - - 0x01028D 04:827D: 85 26     STA ram_0026
C - - - - - 0x01028F 04:827F: 85 27     STA ram_0027
C - - - - - 0x010291 04:8281: A2 11     LDX #$11
C - - - - - 0x010293 04:8283: 18        CLC
bra_8284_loop:
C - - - - - 0x010294 04:8284: 66 27     ROR ram_0027
C - - - - - 0x010296 04:8286: 66 26     ROR ram_0026
C - - - - - 0x010298 04:8288: 66 12     ROR ram_0012
C - - - - - 0x01029A 04:828A: 66 11     ROR ram_0011
C - - - - - 0x01029C 04:828C: 90 0D     BCC bra_829B
C - - - - - 0x01029E 04:828E: A5 0D     LDA ram_000D
C - - - - - 0x0102A0 04:8290: 18        CLC
C - - - - - 0x0102A1 04:8291: 65 26     ADC ram_0026
C - - - - - 0x0102A3 04:8293: 85 26     STA ram_0026
C - - - - - 0x0102A5 04:8295: A5 0E     LDA ram_000E
C - - - - - 0x0102A7 04:8297: 65 27     ADC ram_0027
C - - - - - 0x0102A9 04:8299: 85 27     STA ram_0027
bra_829B:
C - - - - - 0x0102AB 04:829B: CA        DEX
C - - - - - 0x0102AC 04:829C: D0 E6     BNE bra_8284_loop
C - - - - - 0x0102AE 04:829E: 60        RTS



sub_829F_divide_16bit:
C - - - - - 0x0102AF 04:829F: A9 00     LDA #$00
C - - - - - 0x0102B1 04:82A1: 85 0F     STA ram_000F
C - - - - - 0x0102B3 04:82A3: 85 10     STA ram_0010
C - - - - - 0x0102B5 04:82A5: A2 10     LDX #$10
bra_82A7_loop:
C - - - - - 0x0102B7 04:82A7: 26 0D     ROL ram_000D
C - - - - - 0x0102B9 04:82A9: 26 0E     ROL ram_000E
C - - - - - 0x0102BB 04:82AB: 26 0F     ROL ram_000F
C - - - - - 0x0102BD 04:82AD: 26 10     ROL ram_0010
C - - - - - 0x0102BF 04:82AF: A5 0F     LDA ram_000F
C - - - - - 0x0102C1 04:82B1: 38        SEC
C - - - - - 0x0102C2 04:82B2: E5 11     SBC ram_0011
C - - - - - 0x0102C4 04:82B4: A8        TAY
C - - - - - 0x0102C5 04:82B5: A5 10     LDA ram_0010
C - - - - - 0x0102C7 04:82B7: E5 12     SBC ram_0012
C - - - - - 0x0102C9 04:82B9: 90 04     BCC bra_82BF
C - - - - - 0x0102CB 04:82BB: 84 0F     STY ram_000F
C - - - - - 0x0102CD 04:82BD: 85 10     STA ram_0010
bra_82BF:
C - - - - - 0x0102CF 04:82BF: CA        DEX
C - - - - - 0x0102D0 04:82C0: D0 E5     BNE bra_82A7_loop
C - - - - - 0x0102D2 04:82C2: 26 0D     ROL ram_000D
C - - - - - 0x0102D4 04:82C4: 26 0E     ROL ram_000E
C - - - - - 0x0102D6 04:82C6: 60        RTS



tbl_82C7_attributes:
- D 0 - - - 0x0102D7 04:82C7: 00        .byte $00, $00, $00, $88, $FF, $FF, $FF, $FF, $00, $00, $00, $88, $FF, $FF, $FF, $FF   ; 
- D 0 - - - 0x0102E7 04:82D7: 00        .byte $00, $00, $00, $88, $FF, $FF, $FF, $FF, $00, $00, $00, $88, $FF, $FF, $FF, $FF   ; 
- D 0 - - - 0x0102F7 04:82E7: 00        .byte $00, $00, $00, $88, $FF, $FF, $FF, $FF, $FF, $5F, $5F, $9B, $FF, $FF, $FF, $FF   ; 
- D 0 - - - 0x010307 04:82F7: FF        .byte $FF, $55, $55, $99, $FF, $FF, $FF, $FF, $FF, $55, $55, $99, $FF, $FF, $FF, $FF   ; 



sub_8307:
C - - - - - 0x010317 04:8307: BD FC 83  LDA tbl_83FC_ppu_hi,X
C - - - - - 0x01031A 04:830A: 85 27     STA ram_0027
C - - - - - 0x01031C 04:830C: BD FA 83  LDA tbl_83FA_ppu_lo,X
C - - - - - 0x01031F 04:830F: 85 26     STA ram_0026
C - - - - - 0x010321 04:8311: A9 AF     LDA #< tbl_8AAF
C - - - - - 0x010323 04:8313: 85 22     STA ram_0022
C - - - - - 0x010325 04:8315: A9 8A     LDA #> tbl_8AAF
C - - - - - 0x010327 04:8317: 85 23     STA ram_0023
C - - - - - 0x010329 04:8319: A2 09     LDX #$09
bra_831B_loop:
C - - - - - 0x01032B 04:831B: A0 00     LDY #$00
C - - - - - 0x01032D 04:831D: A5 27     LDA ram_0027
C - - - - - 0x01032F 04:831F: 8D 06 20  STA $2006
C - - - - - 0x010332 04:8322: A5 26     LDA ram_0026
C - - - - - 0x010334 04:8324: 8D 06 20  STA $2006
bra_8327_loop:
C - - - - - 0x010337 04:8327: B1 22     LDA (ram_0022),Y
C - - - - - 0x010339 04:8329: 8D 07 20  STA $2007
C - - - - - 0x01033C 04:832C: C8        INY
C - - - - - 0x01033D 04:832D: C0 0A     CPY #$0A
C - - - - - 0x01033F 04:832F: D0 F6     BNE bra_8327_loop
C - - - - - 0x010341 04:8331: A5 22     LDA ram_0022
C - - - - - 0x010343 04:8333: 18        CLC
C - - - - - 0x010344 04:8334: 69 0A     ADC #$0A
C - - - - - 0x010346 04:8336: 85 22     STA ram_0022
C - - - - - 0x010348 04:8338: 90 02     BCC bra_833C_not_overflow
C - - - - - 0x01034A 04:833A: E6 23     INC ram_0023
bra_833C_not_overflow:
C - - - - - 0x01034C 04:833C: A5 26     LDA ram_0026
C - - - - - 0x01034E 04:833E: 18        CLC
C - - - - - 0x01034F 04:833F: 69 20     ADC #$20
C - - - - - 0x010351 04:8341: 85 26     STA ram_0026
C - - - - - 0x010353 04:8343: 90 02     BCC bra_8347_not_overflow
C - - - - - 0x010355 04:8345: E6 27     INC ram_0027
bra_8347_not_overflow:
C - - - - - 0x010357 04:8347: CA        DEX
C - - - - - 0x010358 04:8348: D0 D1     BNE bra_831B_loop
C - - - - - 0x01035A 04:834A: 60        RTS



ofs_0x01035B_0F_draw_scroll_content_1:
; X = 00 (minimap) or 01 (progress stats)
C - - - - - 0x01035B 04:834B: A0 27     LDY #$27
bra_834D_loop:
C - - - - - 0x01035D 04:834D: B9 D7 8A  LDA tbl_8AD7,Y
C - - - - - 0x010360 04:8350: 99 0C 03  STA ram_030C,Y
C - - - - - 0x010363 04:8353: 88        DEY
C - - - - - 0x010364 04:8354: 10 F7     BPL bra_834D_loop
C - - - - - 0x010366 04:8356: BD 02 84  LDA tbl_8402_counter,X
C - - - - - 0x010369 04:8359: 85 0D     STA ram_000D
C - - - - - 0x01036B 04:835B: BD FE 83  LDA tbl_83FE_lo,X
C - - - - - 0x01036E 04:835E: 85 22     STA ram_0022
C - - - - - 0x010370 04:8360: BD 00 84  LDA tbl_8400_hi,X
C - - - - - 0x010373 04:8363: 85 23     STA ram_0023
C - - - - - 0x010375 04:8365: BD FA 83  LDA tbl_83FA_ppu_lo,X
C - - - - - 0x010378 04:8368: 18        CLC
C - - - - - 0x010379 04:8369: 69 80     ADC #< $0080
C - - - - - 0x01037B 04:836B: 85 26     STA ram_0026
C - - - - - 0x01037D 04:836D: BD FC 83  LDA tbl_83FC_ppu_hi,X
C - - - - - 0x010380 04:8370: 69 00     ADC #> $0080
C - - - - - 0x010382 04:8372: 85 27     STA ram_0027
bra_8374_loop:
C - - - - - 0x010384 04:8374: A0 09     LDY #$09
bra_8376_loop:
C - - - - - 0x010386 04:8376: B1 22     LDA (ram_0022),Y
C - - - - - 0x010388 04:8378: C9 C0     CMP #$C0
C - - - - - 0x01038A 04:837A: B0 00     BCS bra_837C    ; bzk optimize, useless check
bra_837C:
C - - - - - 0x01038C 04:837C: 99 02 03  STA ram_0302,Y
C - - - - - 0x01038F 04:837F: 88        DEY
C - - - - - 0x010390 04:8380: 10 F4     BPL bra_8376_loop
C - - - - - 0x010392 04:8382: A5 26     LDA ram_0026
C - - - - - 0x010394 04:8384: 8D 00 03  STA ram_0300
C - - - - - 0x010397 04:8387: 18        CLC
C - - - - - 0x010398 04:8388: 69 20     ADC #< $0020
C - - - - - 0x01039A 04:838A: 85 26     STA ram_0026
C - - - - - 0x01039C 04:838C: A5 27     LDA ram_0027
C - - - - - 0x01039E 04:838E: 8D 01 03  STA ram_0301
C - - - - - 0x0103A1 04:8391: 69 00     ADC #> $0020
C - - - - - 0x0103A3 04:8393: 85 27     STA ram_0027
C - - - - - 0x0103A5 04:8395: A5 22     LDA ram_0022
C - - - - - 0x0103A7 04:8397: 18        CLC
C - - - - - 0x0103A8 04:8398: 69 0A     ADC #$0A
C - - - - - 0x0103AA 04:839A: 85 22     STA ram_0022
C - - - - - 0x0103AC 04:839C: 90 02     BCC bra_83A0_not_overflow
- - - - - - 0x0103AE 04:839E: E6 23     INC ram_0023
bra_83A0_not_overflow:
C - - - - - 0x0103B0 04:83A0: A9 00     LDA #$00
C - - - - - 0x0103B2 04:83A2: 85 20     STA ram_0020
bra_83A4_infinite_loop:
C - - - - - 0x0103B4 04:83A4: A5 20     LDA ram_0020
C - - - - - 0x0103B6 04:83A6: C9 04     CMP #$04
C - - - - - 0x0103B8 04:83A8: D0 FA     BNE bra_83A4_infinite_loop
C - - - - - 0x0103BA 04:83AA: C6 0D     DEC ram_000D
C - - - - - 0x0103BC 04:83AC: D0 C6     BNE bra_8374_loop
C - - - - - 0x0103BE 04:83AE: 60        RTS



ofs_0x0103BF_10_draw_scroll_content_2:
; X = 00 (minimap) or 01 (progress stats)
C - - - - - 0x0103BF 04:83AF: A0 31     LDY #$31
bra_83B1_loop:
C - - - - - 0x0103C1 04:83B1: B9 D7 8A  LDA tbl_8AD7,Y
C - - - - - 0x0103C4 04:83B4: 99 02 03  STA ram_0302,Y
C - - - - - 0x0103C7 04:83B7: 88        DEY
C - - - - - 0x0103C8 04:83B8: 10 F7     BPL bra_83B1_loop
C - - - - - 0x0103CA 04:83BA: BD 02 84  LDA tbl_8402_counter,X
C - - - - - 0x0103CD 04:83BD: 85 0D     STA ram_000D
C - - - - - 0x0103CF 04:83BF: BD FE 83  LDA tbl_83FE_lo,X
C - - - - - 0x0103D2 04:83C2: 85 22     STA ram_0022
C - - - - - 0x0103D4 04:83C4: BD 00 84  LDA tbl_8400_hi,X
C - - - - - 0x0103D7 04:83C7: 85 23     STA ram_0023
C - - - - - 0x0103D9 04:83C9: BD FA 83  LDA tbl_83FA_ppu_lo,X
C - - - - - 0x0103DC 04:83CC: 18        CLC
C - - - - - 0x0103DD 04:83CD: 69 C0     ADC #< $01C0
C - - - - - 0x0103DF 04:83CF: 85 26     STA ram_0026
C - - - - - 0x0103E1 04:83D1: BD FC 83  LDA tbl_83FC_ppu_hi,X
C - - - - - 0x0103E4 04:83D4: 69 01     ADC #> $01C0
C - - - - - 0x0103E6 04:83D6: 85 27     STA ram_0027
bra_83D8_loop:
C - - - - - 0x0103E8 04:83D8: A5 26     LDA ram_0026
C - - - - - 0x0103EA 04:83DA: 8D 00 03  STA ram_0300
C - - - - - 0x0103ED 04:83DD: 38        SEC
C - - - - - 0x0103EE 04:83DE: E9 20     SBC #< $0020
C - - - - - 0x0103F0 04:83E0: 85 26     STA ram_0026
C - - - - - 0x0103F2 04:83E2: A5 27     LDA ram_0027
C - - - - - 0x0103F4 04:83E4: 8D 01 03  STA ram_0301
C - - - - - 0x0103F7 04:83E7: E9 00     SBC #> $0020
C - - - - - 0x0103F9 04:83E9: 85 27     STA ram_0027
C - - - - - 0x0103FB 04:83EB: A9 00     LDA #$00
C - - - - - 0x0103FD 04:83ED: 85 20     STA ram_0020
bra_83EF_infinite_loop:
C - - - - - 0x0103FF 04:83EF: A5 20     LDA ram_0020
C - - - - - 0x010401 04:83F1: C9 04     CMP #$04
C - - - - - 0x010403 04:83F3: D0 FA     BNE bra_83EF_infinite_loop
C - - - - - 0x010405 04:83F5: C6 0D     DEC ram_000D
C - - - - - 0x010407 04:83F7: D0 DF     BNE bra_83D8_loop
C - - - - - 0x010409 04:83F9: 60        RTS



tbl_83FA_ppu_lo:
- D 0 - - - 0x01040A 04:83FA: 43        .byte $43   ; 
- D 0 - - - 0x01040B 04:83FB: 43        .byte $43   ; 

tbl_83FC_ppu_hi:
- D 0 - - - 0x01040C 04:83FC: 20        .byte $20   ; 
- D 0 - - - 0x01040D 04:83FD: 20        .byte $20   ; 

tbl_83FE_lo:
- D 0 - - - 0x01040E 04:83FE: 09        .byte < tbl_8B09_map_tiles   ; 
- D 0 - - - 0x01040F 04:83FF: 34        .byte < ram_0334   ; 

tbl_8400_hi:
- D 0 - - - 0x010410 04:8400: 8B        .byte > tbl_8B09_map_tiles   ; 
- D 0 - - - 0x010411 04:8401: 03        .byte > ram_0334   ; 

tbl_8402_counter:   ; bzk optimize, same counter
- D 0 - - - 0x010412 04:8402: 0A        .byte $0A   ; 
- D 0 - - - 0x010413 04:8403: 0A        .byte $0A   ; 



sub_8404:
C - - - - - 0x010414 04:8404: BD 52 84  LDA tbl_8452_ppu_lo,X
C - - - - - 0x010417 04:8407: 85 26     STA ram_0026
C - - - - - 0x010419 04:8409: BD 9D 84  LDA tbl_849D_ppu_hi,X
C - - - - - 0x01041C 04:840C: 85 27     STA ram_0027
C - - - - - 0x01041E 04:840E: BD E8 84  LDA tbl_84E8_lo,X
C - - - - - 0x010421 04:8411: 85 22     STA ram_0022
C - - - - - 0x010423 04:8413: BD 33 85  LDA tbl_8533_hi,X
C - - - - - 0x010426 04:8416: 85 23     STA ram_0023
C - - - - - 0x010428 04:8418: BD C9 85  LDA tbl_85C9_counter,X
C - - - - - 0x01042B 04:841B: 85 0D     STA ram_000D
bra_841D_loop:
C - - - - - 0x01042D 04:841D: A0 00     LDY #$00
C - - - - - 0x01042F 04:841F: A5 27     LDA ram_0027
C - - - - - 0x010431 04:8421: 8D 06 20  STA $2006
C - - - - - 0x010434 04:8424: A5 26     LDA ram_0026
C - - - - - 0x010436 04:8426: 8D 06 20  STA $2006
bra_8429_loop:
C - - - - - 0x010439 04:8429: B1 22     LDA (ram_0022),Y
C - - - - - 0x01043B 04:842B: 18        CLC
C - - - - - 0x01043C 04:842C: 7D 14 86  ADC tbl_8614,X
C - - - - - 0x01043F 04:842F: 8D 07 20  STA $2007
C - - - - - 0x010442 04:8432: C8        INY
C - - - - - 0x010443 04:8433: 98        TYA
C - - - - - 0x010444 04:8434: DD 7E 85  CMP tbl_857E,X
C - - - - - 0x010447 04:8437: D0 F0     BNE bra_8429_loop
C - - - - - 0x010449 04:8439: 18        CLC
C - - - - - 0x01044A 04:843A: 65 22     ADC ram_0022
C - - - - - 0x01044C 04:843C: 85 22     STA ram_0022
C - - - - - 0x01044E 04:843E: 90 02     BCC bra_8442_not_overflow
C - - - - - 0x010450 04:8440: E6 23     INC ram_0023
bra_8442_not_overflow:
C - - - - - 0x010452 04:8442: A5 26     LDA ram_0026
C - - - - - 0x010454 04:8444: 18        CLC
C - - - - - 0x010455 04:8445: 69 20     ADC #$20
C - - - - - 0x010457 04:8447: 85 26     STA ram_0026
C - - - - - 0x010459 04:8449: 90 02     BCC bra_844D_not_overflow
C - - - - - 0x01045B 04:844B: E6 27     INC ram_0027
bra_844D_not_overflow:
C - - - - - 0x01045D 04:844D: C6 0D     DEC ram_000D
C - - - - - 0x01045F 04:844F: D0 CC     BNE bra_841D_loop
C - - - - - 0x010461 04:8451: 60        RTS



tbl_8452_ppu_lo:
- D 0 - - - 0x010462 04:8452: 43        .byte < $2043   ; 00
- D 0 - - - 0x010463 04:8453: 51        .byte < $2051   ; 01
- D 0 - - - 0x010464 04:8454: A3        .byte < $22A3   ; 02
- D 0 - - - 0x010465 04:8455: 4E        .byte < $204E   ; 03
- D 0 - - - 0x010466 04:8456: 4E        .byte < $204E   ; 04
- D 0 - - - 0x010467 04:8457: CE        .byte < $20CE   ; 05
- D 0 - - - 0x010468 04:8458: 4E        .byte < $214E   ; 06
- D 0 - - - 0x010469 04:8459: CE        .byte < $21CE   ; 07
- D 0 - - - 0x01046A 04:845A: 4E        .byte < $224E   ; 08
- D 0 - - - 0x01046B 04:845B: EE        .byte < $22EE   ; 09
- D 0 - - - 0x01046C 04:845C: C4        .byte < $22C4   ; 0A
- D 0 - - - 0x01046D 04:845D: C6        .byte < $22C6   ; 0B
- D 0 - - - 0x01046E 04:845E: C8        .byte < $22C8   ; 0C
- D 0 - - - 0x01046F 04:845F: CA        .byte < $22CA   ; 0D
- D 0 - - - 0x010470 04:8460: 04        .byte < $2304   ; 0E
- D 0 - - - 0x010471 04:8461: 06        .byte < $2306   ; 0F
- D 0 - - - 0x010472 04:8462: 08        .byte < $2308   ; 10
- D 0 - - - 0x010473 04:8463: 0A        .byte < $230A   ; 11
- D 0 - - - 0x010474 04:8464: 93        .byte < $2093   ; 12
- D 0 - - - 0x010475 04:8465: 98        .byte < $2098   ; 13
- D 0 - - - 0x010476 04:8466: 13        .byte < $2113   ; 14
- D 0 - - - 0x010477 04:8467: 18        .byte < $2118   ; 15
- D 0 - - - 0x010478 04:8468: CB        .byte < $20CB   ; 16
- D 0 - - - 0x010479 04:8469: CB        .byte < $20CB   ; 17
- D 0 - - - 0x01047A 04:846A: CB        .byte < $20CB   ; 18
- D 0 - - - 0x01047B 04:846B: CB        .byte < $20CB   ; 19
- D 0 - - - 0x01047C 04:846C: CB        .byte < $20CB   ; 1A
- D 0 - - - 0x01047D 04:846D: CB        .byte < $20CB   ; 1B
- D 0 - - - 0x01047E 04:846E: CB        .byte < $20CB   ; 1C
- D 0 - - - 0x01047F 04:846F: CB        .byte < $20CB   ; 1D
- D 0 - - - 0x010480 04:8470: CB        .byte < $20CB   ; 1E
- D 0 - - - 0x010481 04:8471: CB        .byte < $20CB   ; 1F
- D 0 - - - 0x010482 04:8472: CB        .byte < $20CB   ; 20
- D 0 - - - 0x010483 04:8473: CB        .byte < $20CB   ; 21
- D 0 - - - 0x010484 04:8474: CB        .byte < $20CB   ; 22
- D 0 - - - 0x010485 04:8475: CB        .byte < $20CB   ; 23
- - - - - - 0x010486 04:8476: CB        .byte < $20CB   ; 24
- - - - - - 0x010487 04:8477: CB        .byte < $20CB   ; 25
- D 0 - - - 0x010488 04:8478: AB        .byte < $20AB   ; 26
- D 0 - - - 0x010489 04:8479: CB        .byte < $20CB   ; 27
- D 0 - - - 0x01048A 04:847A: CB        .byte < $20CB   ; 28
- D 0 - - - 0x01048B 04:847B: CB        .byte < $20CB   ; 29
- D 0 - - - 0x01048C 04:847C: CB        .byte < $20CB   ; 2A
- D 0 - - - 0x01048D 04:847D: 0B        .byte < $210B   ; 2B
- D 0 - - - 0x01048E 04:847E: 0B        .byte < $210B   ; 2C
- D 0 - - - 0x01048F 04:847F: 0B        .byte < $210B   ; 2D
- D 0 - - - 0x010490 04:8480: 0B        .byte < $210B   ; 2E
- D 0 - - - 0x010491 04:8481: 0B        .byte < $210B   ; 2F
- D 0 - - - 0x010492 04:8482: 0B        .byte < $210B   ; 30
- D 0 - - - 0x010493 04:8483: AB        .byte < $20AB   ; 31
- D 0 - - - 0x010494 04:8484: AB        .byte < $20AB   ; 32
- D 0 - - - 0x010495 04:8485: AB        .byte < $20AB   ; 33
- D 0 - - - 0x010496 04:8486: AB        .byte < $20AB   ; 34
- D 0 - - - 0x010497 04:8487: AB        .byte < $20AB   ; 35
- D 0 - - - 0x010498 04:8488: AB        .byte < $20AB   ; 36
- D 0 - - - 0x010499 04:8489: AB        .byte < $20AB   ; 37
- D 0 - - - 0x01049A 04:848A: AB        .byte < $20AB   ; 38
- D 0 - - - 0x01049B 04:848B: AB        .byte < $20AB   ; 39
- D 0 - - - 0x01049C 04:848C: AB        .byte < $20AB   ; 3A
- D 0 - - - 0x01049D 04:848D: AB        .byte < $20AB   ; 3B
- D 0 - - - 0x01049E 04:848E: AB        .byte < $20AB   ; 3C
- D 0 - - - 0x01049F 04:848F: AB        .byte < $20AB   ; 3D
- D 0 - - - 0x0104A0 04:8490: AB        .byte < $20AB   ; 3E
- D 0 - - - 0x0104A1 04:8491: AB        .byte < $20AB   ; 3F
- D 0 - - - 0x0104A2 04:8492: AB        .byte < $20AB   ; 40
- D 0 - - - 0x0104A3 04:8493: CC        .byte < $20CC   ; 41
- D 0 - - - 0x0104A4 04:8494: CC        .byte < $20CC   ; 42
- D 0 - - - 0x0104A5 04:8495: CC        .byte < $20CC   ; 43
- D 0 - - - 0x0104A6 04:8496: CC        .byte < $20CC   ; 44
- D 0 - - - 0x0104A7 04:8497: CC        .byte < $20CC   ; 45
- D 0 - - - 0x0104A8 04:8498: CC        .byte < $20CC   ; 46
- D 0 - - - 0x0104A9 04:8499: CC        .byte < $20CC   ; 47
- D 0 - - - 0x0104AA 04:849A: CC        .byte < $20CC   ; 48
- D 0 - - - 0x0104AB 04:849B: 6A        .byte < $216A   ; 49
- D 0 - - - 0x0104AC 04:849C: 0D        .byte < $220D   ; 4A



tbl_849D_ppu_hi:
- D 0 - - - 0x0104AD 04:849D: 20        .byte > $2043   ; 00
- D 0 - - - 0x0104AE 04:849E: 20        .byte > $2051   ; 01
- D 0 - - - 0x0104AF 04:849F: 22        .byte > $22A3   ; 02
- D 0 - - - 0x0104B0 04:84A0: 20        .byte > $204E   ; 03
- D 0 - - - 0x0104B1 04:84A1: 20        .byte > $204E   ; 04
- D 0 - - - 0x0104B2 04:84A2: 20        .byte > $20CE   ; 05
- D 0 - - - 0x0104B3 04:84A3: 21        .byte > $214E   ; 06
- D 0 - - - 0x0104B4 04:84A4: 21        .byte > $21CE   ; 07
- D 0 - - - 0x0104B5 04:84A5: 22        .byte > $224E   ; 08
- D 0 - - - 0x0104B6 04:84A6: 22        .byte > $22EE   ; 09
- D 0 - - - 0x0104B7 04:84A7: 22        .byte > $22C4   ; 0A
- D 0 - - - 0x0104B8 04:84A8: 22        .byte > $22C6   ; 0B
- D 0 - - - 0x0104B9 04:84A9: 22        .byte > $22C8   ; 0C
- D 0 - - - 0x0104BA 04:84AA: 22        .byte > $22CA   ; 0D
- D 0 - - - 0x0104BB 04:84AB: 23        .byte > $2304   ; 0E
- D 0 - - - 0x0104BC 04:84AC: 23        .byte > $2306   ; 0F
- D 0 - - - 0x0104BD 04:84AD: 23        .byte > $2308   ; 10
- D 0 - - - 0x0104BE 04:84AE: 23        .byte > $230A   ; 11
- D 0 - - - 0x0104BF 04:84AF: 20        .byte > $2093   ; 12
- D 0 - - - 0x0104C0 04:84B0: 20        .byte > $2098   ; 13
- D 0 - - - 0x0104C1 04:84B1: 21        .byte > $2113   ; 14
- D 0 - - - 0x0104C2 04:84B2: 21        .byte > $2118   ; 15
- D 0 - - - 0x0104C3 04:84B3: 20        .byte > $20CB   ; 16
- D 0 - - - 0x0104C4 04:84B4: 20        .byte > $20CB   ; 17
- D 0 - - - 0x0104C5 04:84B5: 20        .byte > $20CB   ; 18
- D 0 - - - 0x0104C6 04:84B6: 20        .byte > $20CB   ; 19
- D 0 - - - 0x0104C7 04:84B7: 20        .byte > $20CB   ; 1A
- D 0 - - - 0x0104C8 04:84B8: 20        .byte > $20CB   ; 1B
- D 0 - - - 0x0104C9 04:84B9: 20        .byte > $20CB   ; 1C
- D 0 - - - 0x0104CA 04:84BA: 20        .byte > $20CB   ; 1D
- D 0 - - - 0x0104CB 04:84BB: 20        .byte > $20CB   ; 1E
- D 0 - - - 0x0104CC 04:84BC: 20        .byte > $20CB   ; 1F
- D 0 - - - 0x0104CD 04:84BD: 20        .byte > $20CB   ; 20
- D 0 - - - 0x0104CE 04:84BE: 20        .byte > $20CB   ; 21
- D 0 - - - 0x0104CF 04:84BF: 20        .byte > $20CB   ; 22
- D 0 - - - 0x0104D0 04:84C0: 20        .byte > $20CB   ; 23
- - - - - - 0x0104D1 04:84C1: 20        .byte > $20CB   ; 24
- - - - - - 0x0104D2 04:84C2: 20        .byte > $20CB   ; 25
- D 0 - - - 0x0104D3 04:84C3: 20        .byte > $20AB   ; 26
- D 0 - - - 0x0104D4 04:84C4: 20        .byte > $20CB   ; 27
- D 0 - - - 0x0104D5 04:84C5: 20        .byte > $20CB   ; 28
- D 0 - - - 0x0104D6 04:84C6: 20        .byte > $20CB   ; 29
- D 0 - - - 0x0104D7 04:84C7: 20        .byte > $20CB   ; 2A
- D 0 - - - 0x0104D8 04:84C8: 21        .byte > $210B   ; 2B
- D 0 - - - 0x0104D9 04:84C9: 21        .byte > $210B   ; 2C
- D 0 - - - 0x0104DA 04:84CA: 21        .byte > $210B   ; 2D
- D 0 - - - 0x0104DB 04:84CB: 21        .byte > $210B   ; 2E
- D 0 - - - 0x0104DC 04:84CC: 21        .byte > $210B   ; 2F
- D 0 - - - 0x0104DD 04:84CD: 21        .byte > $210B   ; 30
- D 0 - - - 0x0104DE 04:84CE: 20        .byte > $20AB   ; 31
- D 0 - - - 0x0104DF 04:84CF: 20        .byte > $20AB   ; 32
- D 0 - - - 0x0104E0 04:84D0: 20        .byte > $20AB   ; 33
- D 0 - - - 0x0104E1 04:84D1: 20        .byte > $20AB   ; 34
- D 0 - - - 0x0104E2 04:84D2: 20        .byte > $20AB   ; 35
- D 0 - - - 0x0104E3 04:84D3: 20        .byte > $20AB   ; 36
- D 0 - - - 0x0104E4 04:84D4: 20        .byte > $20AB   ; 37
- D 0 - - - 0x0104E5 04:84D5: 20        .byte > $20AB   ; 38
- D 0 - - - 0x0104E6 04:84D6: 20        .byte > $20AB   ; 39
- D 0 - - - 0x0104E7 04:84D7: 20        .byte > $20AB   ; 3A
- D 0 - - - 0x0104E8 04:84D8: 20        .byte > $20AB   ; 3B
- D 0 - - - 0x0104E9 04:84D9: 20        .byte > $20AB   ; 3C
- D 0 - - - 0x0104EA 04:84DA: 20        .byte > $20AB   ; 3D
- D 0 - - - 0x0104EB 04:84DB: 20        .byte > $20AB   ; 3E
- D 0 - - - 0x0104EC 04:84DC: 20        .byte > $20AB   ; 3F
- D 0 - - - 0x0104ED 04:84DD: 20        .byte > $20AB   ; 40
- D 0 - - - 0x0104EE 04:84DE: 20        .byte > $20CC   ; 41
- D 0 - - - 0x0104EF 04:84DF: 20        .byte > $20CC   ; 42
- D 0 - - - 0x0104F0 04:84E0: 20        .byte > $20CC   ; 43
- D 0 - - - 0x0104F1 04:84E1: 20        .byte > $20CC   ; 44
- D 0 - - - 0x0104F2 04:84E2: 20        .byte > $20CC   ; 45
- D 0 - - - 0x0104F3 04:84E3: 20        .byte > $20CC   ; 46
- D 0 - - - 0x0104F4 04:84E4: 20        .byte > $20CC   ; 47
- D 0 - - - 0x0104F5 04:84E5: 20        .byte > $20CC   ; 48
- D 0 - - - 0x0104F6 04:84E6: 21        .byte > $216A   ; 49
- D 0 - - - 0x0104F7 04:84E7: 22        .byte > $220D   ; 4A



tbl_84E8_lo:
- D 0 - - - 0x0104F8 04:84E8: AF        .byte < _off010_8AAF_00   ; 00
- D 0 - - - 0x0104F9 04:84E9: DD        .byte < _off010_8BDD_01   ; 01
- D 0 - - - 0x0104FA 04:84EA: 09        .byte < _off010_8D09_02   ; 02
- D 0 - - - 0x0104FB 04:84EB: 49        .byte < _off010_8D49_03   ; 03
- D 0 - - - 0x0104FC 04:84EC: 7B        .byte < _off010_8D7B_04   ; 04
- D 0 - - - 0x0104FD 04:84ED: 87        .byte < _off010_8D87_05   ; 05
- D 0 - - - 0x0104FE 04:84EE: 93        .byte < _off010_8D93_06   ; 06
- D 0 - - - 0x0104FF 04:84EF: 9F        .byte < _off010_8D9F_07   ; 07
- D 0 - - - 0x010500 04:84F0: AB        .byte < _off010_8DAB_08   ; 08
- D 0 - - - 0x010501 04:84F1: B7        .byte < _off010_8DB7_09   ; 09
- D 0 - - - 0x010502 04:84F2: 45        .byte < _off010_8D45_0A   ; 0A
- D 0 - - - 0x010503 04:84F3: 45        .byte < _off010_8D45_0B   ; 0B
- D 0 - - - 0x010504 04:84F4: 45        .byte < _off010_8D45_0C   ; 0C
- D 0 - - - 0x010505 04:84F5: 45        .byte < _off010_8D45_0D   ; 0D
- D 0 - - - 0x010506 04:84F6: 45        .byte < _off010_8D45_0E   ; 0E
- D 0 - - - 0x010507 04:84F7: 45        .byte < _off010_8D45_0F   ; 0F
- D 0 - - - 0x010508 04:84F8: 45        .byte < _off010_8D45_10   ; 10
- D 0 - - - 0x010509 04:84F9: 45        .byte < _off010_8D45_11   ; 11
- D 0 - - - 0x01050A 04:84FA: D1        .byte < _off010_8BD1_12   ; 12
- D 0 - - - 0x01050B 04:84FB: D1        .byte < _off010_8BD1_13   ; 13
- D 0 - - - 0x01050C 04:84FC: D1        .byte < _off010_8BD1_14   ; 14
- D 0 - - - 0x01050D 04:84FD: D1        .byte < _off010_8BD1_15   ; 15
- D 0 - - - 0x01050E 04:84FE: A8        .byte < _off010_ACA8_16   ; 16
- D 0 - - - 0x01050F 04:84FF: A8        .byte < _off010_ACA8_17   ; 17
- D 0 - - - 0x010510 04:8500: A8        .byte < _off010_ACA8_18   ; 18
- D 0 - - - 0x010511 04:8501: A8        .byte < _off010_ACA8_19   ; 19
- D 0 - - - 0x010512 04:8502: A8        .byte < _off010_ACA8_1A   ; 1A
- D 0 - - - 0x010513 04:8503: A8        .byte < _off010_ACA8_1B   ; 1B
- D 0 - - - 0x010514 04:8504: A8        .byte < _off010_ACA8_1C   ; 1C
- D 0 - - - 0x010515 04:8505: A8        .byte < _off010_ACA8_1D   ; 1D
- D 0 - - - 0x010516 04:8506: A8        .byte < _off010_ACA8_1E   ; 1E
- D 0 - - - 0x010517 04:8507: A8        .byte < _off010_ACA8_1F   ; 1F
- D 0 - - - 0x010518 04:8508: A8        .byte < _off010_ACA8_20   ; 20
- D 0 - - - 0x010519 04:8509: A8        .byte < _off010_ACA8_21   ; 21
- D 0 - - - 0x01051A 04:850A: A8        .byte < _off010_ACA8_22   ; 22
- D 0 - - - 0x01051B 04:850B: A8        .byte < _off010_ACA8_23   ; 23
- - - - - - 0x01051C 04:850C: A8        .byte < _off010_ACA8_24   ; 24
- - - - - - 0x01051D 04:850D: A8        .byte < _off010_ACA8_25   ; 25
- D 0 - - - 0x01051E 04:850E: 18        .byte < _off010_AC18_26   ; 26
- D 0 - - - 0x01051F 04:850F: 88        .byte < _off010_AB88_27   ; 27
- D 0 - - - 0x010520 04:8510: 88        .byte < _off010_AB88_28   ; 28
- D 0 - - - 0x010521 04:8511: 88        .byte < _off010_AB88_29   ; 29
- D 0 - - - 0x010522 04:8512: 88        .byte < _off010_AB88_2A   ; 2A
- D 0 - - - 0x010523 04:8513: C8        .byte < _off010_ADC8_2B   ; 2B
- D 0 - - - 0x010524 04:8514: 58        .byte < _off010_AE58_2C   ; 2C
- D 0 - - - 0x010525 04:8515: E8        .byte < _off010_AEE8_2D   ; 2D
- D 0 - - - 0x010526 04:8516: E8        .byte < _off010_AEE8_2E   ; 2E
- D 0 - - - 0x010527 04:8517: 58        .byte < _off010_AE58_2F   ; 2F
- D 0 - - - 0x010528 04:8518: C8        .byte < _off010_ADC8_30   ; 30
- D 0 - - - 0x010529 04:8519: 38        .byte < _off010_AD38_31   ; 31
- D 0 - - - 0x01052A 04:851A: 38        .byte < _off010_AD38_32   ; 32
- D 0 - - - 0x01052B 04:851B: 38        .byte < _off010_AD38_33   ; 33
- D 0 - - - 0x01052C 04:851C: 38        .byte < _off010_AD38_34   ; 34
- D 0 - - - 0x01052D 04:851D: 38        .byte < _off010_AD38_35   ; 35
- D 0 - - - 0x01052E 04:851E: 38        .byte < _off010_AD38_36   ; 36
- D 0 - - - 0x01052F 04:851F: 38        .byte < _off010_AD38_37   ; 37
- D 0 - - - 0x010530 04:8520: 38        .byte < _off010_AD38_38   ; 38
- D 0 - - - 0x010531 04:8521: 38        .byte < _off010_AD38_39   ; 39
- D 0 - - - 0x010532 04:8522: 38        .byte < _off010_AD38_3A   ; 3A
- D 0 - - - 0x010533 04:8523: 38        .byte < _off010_AD38_3B   ; 3B
- D 0 - - - 0x010534 04:8524: 38        .byte < _off010_AD38_3C   ; 3C
- D 0 - - - 0x010535 04:8525: 38        .byte < _off010_AD38_3D   ; 3D
- D 0 - - - 0x010536 04:8526: 38        .byte < _off010_AD38_3E   ; 3E
- D 0 - - - 0x010537 04:8527: 38        .byte < _off010_AD38_3F   ; 3F
- D 0 - - - 0x010538 04:8528: 38        .byte < _off010_AD38_40   ; 40
- D 0 - - - 0x010539 04:8529: 78        .byte < _off010_AF78_41   ; 41
- D 0 - - - 0x01053A 04:852A: 78        .byte < _off010_AF78_42   ; 42
- D 0 - - - 0x01053B 04:852B: 78        .byte < _off010_AF78_43   ; 43
- D 0 - - - 0x01053C 04:852C: 78        .byte < _off010_AF78_44   ; 44
- D 0 - - - 0x01053D 04:852D: 78        .byte < _off010_AF78_45   ; 45
- D 0 - - - 0x01053E 04:852E: 78        .byte < _off010_AF78_46   ; 46
- D 0 - - - 0x01053F 04:852F: 78        .byte < _off010_AF78_47   ; 47
- D 0 - - - 0x010540 04:8530: 78        .byte < _off010_AF78_48   ; 48
- D 0 - - - 0x010541 04:8531: E8        .byte < _off010_B2E8_49   ; 49
- D 0 - - - 0x010542 04:8532: 18        .byte < _off010_B318_4A   ; 4A



tbl_8533_hi:
- D 0 - - - 0x010543 04:8533: 8A        .byte > _off010_8AAF_00   ; 00
- D 0 - - - 0x010544 04:8534: 8B        .byte > _off010_8BDD_01   ; 01
- D 0 - - - 0x010545 04:8535: 8D        .byte > _off010_8D09_02   ; 02
- D 0 - - - 0x010546 04:8536: 8D        .byte > _off010_8D49_03   ; 03
- D 0 - - - 0x010547 04:8537: 8D        .byte > _off010_8D7B_04   ; 04
- D 0 - - - 0x010548 04:8538: 8D        .byte > _off010_8D87_05   ; 05
- D 0 - - - 0x010549 04:8539: 8D        .byte > _off010_8D93_06   ; 06
- D 0 - - - 0x01054A 04:853A: 8D        .byte > _off010_8D9F_07   ; 07
- D 0 - - - 0x01054B 04:853B: 8D        .byte > _off010_8DAB_08   ; 08
- D 0 - - - 0x01054C 04:853C: 8D        .byte > _off010_8DB7_09   ; 09
- D 0 - - - 0x01054D 04:853D: 8D        .byte > _off010_8D45_0A   ; 0A
- D 0 - - - 0x01054E 04:853E: 8D        .byte > _off010_8D45_0B   ; 0B
- D 0 - - - 0x01054F 04:853F: 8D        .byte > _off010_8D45_0C   ; 0C
- D 0 - - - 0x010550 04:8540: 8D        .byte > _off010_8D45_0D   ; 0D
- D 0 - - - 0x010551 04:8541: 8D        .byte > _off010_8D45_0E   ; 0E
- D 0 - - - 0x010552 04:8542: 8D        .byte > _off010_8D45_0F   ; 0F
- D 0 - - - 0x010553 04:8543: 8D        .byte > _off010_8D45_10   ; 10
- D 0 - - - 0x010554 04:8544: 8D        .byte > _off010_8D45_11   ; 11
- D 0 - - - 0x010555 04:8545: 8B        .byte > _off010_8BD1_12   ; 12
- D 0 - - - 0x010556 04:8546: 8B        .byte > _off010_8BD1_13   ; 13
- D 0 - - - 0x010557 04:8547: 8B        .byte > _off010_8BD1_14   ; 14
- D 0 - - - 0x010558 04:8548: 8B        .byte > _off010_8BD1_15   ; 15
- D 0 - - - 0x010559 04:8549: AC        .byte > _off010_ACA8_16   ; 16
- D 0 - - - 0x01055A 04:854A: AC        .byte > _off010_ACA8_17   ; 17
- D 0 - - - 0x01055B 04:854B: AC        .byte > _off010_ACA8_18   ; 18
- D 0 - - - 0x01055C 04:854C: AC        .byte > _off010_ACA8_19   ; 19
- D 0 - - - 0x01055D 04:854D: AC        .byte > _off010_ACA8_1A   ; 1A
- D 0 - - - 0x01055E 04:854E: AC        .byte > _off010_ACA8_1B   ; 1B
- D 0 - - - 0x01055F 04:854F: AC        .byte > _off010_ACA8_1C   ; 1C
- D 0 - - - 0x010560 04:8550: AC        .byte > _off010_ACA8_1D   ; 1D
- D 0 - - - 0x010561 04:8551: AC        .byte > _off010_ACA8_1E   ; 1E
- D 0 - - - 0x010562 04:8552: AC        .byte > _off010_ACA8_1F   ; 1F
- D 0 - - - 0x010563 04:8553: AC        .byte > _off010_ACA8_20   ; 20
- D 0 - - - 0x010564 04:8554: AC        .byte > _off010_ACA8_21   ; 21
- D 0 - - - 0x010565 04:8555: AC        .byte > _off010_ACA8_22   ; 22
- D 0 - - - 0x010566 04:8556: AC        .byte > _off010_ACA8_23   ; 23
- - - - - - 0x010567 04:8557: AC        .byte > _off010_ACA8_24   ; 24
- - - - - - 0x010568 04:8558: AC        .byte > _off010_ACA8_25   ; 25
- D 0 - - - 0x010569 04:8559: AC        .byte > _off010_AC18_26   ; 26
- D 0 - - - 0x01056A 04:855A: AB        .byte > _off010_AB88_27   ; 27
- D 0 - - - 0x01056B 04:855B: AB        .byte > _off010_AB88_28   ; 28
- D 0 - - - 0x01056C 04:855C: AB        .byte > _off010_AB88_29   ; 29
- D 0 - - - 0x01056D 04:855D: AB        .byte > _off010_AB88_2A   ; 2A
- D 0 - - - 0x01056E 04:855E: AD        .byte > _off010_ADC8_2B   ; 2B
- D 0 - - - 0x01056F 04:855F: AE        .byte > _off010_AE58_2C   ; 2C
- D 0 - - - 0x010570 04:8560: AE        .byte > _off010_AEE8_2D   ; 2D
- D 0 - - - 0x010571 04:8561: AE        .byte > _off010_AEE8_2E   ; 2E
- D 0 - - - 0x010572 04:8562: AE        .byte > _off010_AE58_2F   ; 2F
- D 0 - - - 0x010573 04:8563: AD        .byte > _off010_ADC8_30   ; 30
- D 0 - - - 0x010574 04:8564: AD        .byte > _off010_AD38_31   ; 31
- D 0 - - - 0x010575 04:8565: AD        .byte > _off010_AD38_32   ; 32
- D 0 - - - 0x010576 04:8566: AD        .byte > _off010_AD38_33   ; 33
- D 0 - - - 0x010577 04:8567: AD        .byte > _off010_AD38_34   ; 34
- D 0 - - - 0x010578 04:8568: AD        .byte > _off010_AD38_35   ; 35
- D 0 - - - 0x010579 04:8569: AD        .byte > _off010_AD38_36   ; 36
- D 0 - - - 0x01057A 04:856A: AD        .byte > _off010_AD38_37   ; 37
- D 0 - - - 0x01057B 04:856B: AD        .byte > _off010_AD38_38   ; 38
- D 0 - - - 0x01057C 04:856C: AD        .byte > _off010_AD38_39   ; 39
- D 0 - - - 0x01057D 04:856D: AD        .byte > _off010_AD38_3A   ; 3A
- D 0 - - - 0x01057E 04:856E: AD        .byte > _off010_AD38_3B   ; 3B
- D 0 - - - 0x01057F 04:856F: AD        .byte > _off010_AD38_3C   ; 3C
- D 0 - - - 0x010580 04:8570: AD        .byte > _off010_AD38_3D   ; 3D
- D 0 - - - 0x010581 04:8571: AD        .byte > _off010_AD38_3E   ; 3E
- D 0 - - - 0x010582 04:8572: AD        .byte > _off010_AD38_3F   ; 3F
- D 0 - - - 0x010583 04:8573: AD        .byte > _off010_AD38_40   ; 40
- D 0 - - - 0x010584 04:8574: AF        .byte > _off010_AF78_41   ; 41
- D 0 - - - 0x010585 04:8575: AF        .byte > _off010_AF78_42   ; 42
- D 0 - - - 0x010586 04:8576: AF        .byte > _off010_AF78_43   ; 43
- D 0 - - - 0x010587 04:8577: AF        .byte > _off010_AF78_44   ; 44
- D 0 - - - 0x010588 04:8578: AF        .byte > _off010_AF78_45   ; 45
- D 0 - - - 0x010589 04:8579: AF        .byte > _off010_AF78_46   ; 46
- D 0 - - - 0x01058A 04:857A: AF        .byte > _off010_AF78_47   ; 47
- D 0 - - - 0x01058B 04:857B: AF        .byte > _off010_AF78_48   ; 48
- D 0 - - - 0x01058C 04:857C: B2        .byte > _off010_B2E8_49   ; 49
- D 0 - - - 0x01058D 04:857D: B3        .byte > _off010_B318_4A   ; 4A



tbl_857E:
- D 0 - - - 0x01058E 04:857E: 0A        .byte $0A   ; 00
- D 0 - - - 0x01058F 04:857F: 0C        .byte $0C   ; 01
- D 0 - - - 0x010590 04:8580: 0A        .byte $0A   ; 02
- D 0 - - - 0x010591 04:8581: 02        .byte $02   ; 03
- D 0 - - - 0x010592 04:8582: 02        .byte $02   ; 04
- D 0 - - - 0x010593 04:8583: 02        .byte $02   ; 05
- D 0 - - - 0x010594 04:8584: 02        .byte $02   ; 06
- D 0 - - - 0x010595 04:8585: 02        .byte $02   ; 07
- D 0 - - - 0x010596 04:8586: 02        .byte $02   ; 08
- D 0 - - - 0x010597 04:8587: 02        .byte $02   ; 09
- D 0 - - - 0x010598 04:8588: 02        .byte $02   ; 0A
- D 0 - - - 0x010599 04:8589: 02        .byte $02   ; 0B
- D 0 - - - 0x01059A 04:858A: 02        .byte $02   ; 0C
- D 0 - - - 0x01059B 04:858B: 02        .byte $02   ; 0D
- D 0 - - - 0x01059C 04:858C: 02        .byte $02   ; 0E
- D 0 - - - 0x01059D 04:858D: 02        .byte $02   ; 0F
- D 0 - - - 0x01059E 04:858E: 02        .byte $02   ; 10
- D 0 - - - 0x01059F 04:858F: 02        .byte $02   ; 11
- D 0 - - - 0x0105A0 04:8590: 03        .byte $03   ; 12
- D 0 - - - 0x0105A1 04:8591: 03        .byte $03   ; 13
- D 0 - - - 0x0105A2 04:8592: 03        .byte $03   ; 14
- D 0 - - - 0x0105A3 04:8593: 03        .byte $03   ; 15
- D 0 - - - 0x0105A4 04:8594: 09        .byte $09   ; 16
- D 0 - - - 0x0105A5 04:8595: 09        .byte $09   ; 17
- D 0 - - - 0x0105A6 04:8596: 09        .byte $09   ; 18
- D 0 - - - 0x0105A7 04:8597: 09        .byte $09   ; 19
- D 0 - - - 0x0105A8 04:8598: 09        .byte $09   ; 1A
- D 0 - - - 0x0105A9 04:8599: 09        .byte $09   ; 1B
- D 0 - - - 0x0105AA 04:859A: 09        .byte $09   ; 1C
- D 0 - - - 0x0105AB 04:859B: 09        .byte $09   ; 1D
- D 0 - - - 0x0105AC 04:859C: 09        .byte $09   ; 1E
- D 0 - - - 0x0105AD 04:859D: 09        .byte $09   ; 1F
- D 0 - - - 0x0105AE 04:859E: 09        .byte $09   ; 20
- D 0 - - - 0x0105AF 04:859F: 09        .byte $09   ; 21
- D 0 - - - 0x0105B0 04:85A0: 09        .byte $09   ; 22
- D 0 - - - 0x0105B1 04:85A1: 09        .byte $09   ; 23
- - - - - - 0x0105B2 04:85A2: 09        .byte $09   ; 24
- - - - - - 0x0105B3 04:85A3: 09        .byte $09   ; 25
- D 0 - - - 0x0105B4 04:85A4: 09        .byte $09   ; 26
- D 0 - - - 0x0105B5 04:85A5: 09        .byte $09   ; 27
- D 0 - - - 0x0105B6 04:85A6: 09        .byte $09   ; 28
- D 0 - - - 0x0105B7 04:85A7: 09        .byte $09   ; 29
- D 0 - - - 0x0105B8 04:85A8: 09        .byte $09   ; 2A
- D 0 - - - 0x0105B9 04:85A9: 09        .byte $09   ; 2B
- D 0 - - - 0x0105BA 04:85AA: 09        .byte $09   ; 2C
- D 0 - - - 0x0105BB 04:85AB: 09        .byte $09   ; 2D
- D 0 - - - 0x0105BC 04:85AC: 09        .byte $09   ; 2E
- D 0 - - - 0x0105BD 04:85AD: 09        .byte $09   ; 2F
- D 0 - - - 0x0105BE 04:85AE: 09        .byte $09   ; 30
- D 0 - - - 0x0105BF 04:85AF: 09        .byte $09   ; 31
- D 0 - - - 0x0105C0 04:85B0: 09        .byte $09   ; 32
- D 0 - - - 0x0105C1 04:85B1: 09        .byte $09   ; 33
- D 0 - - - 0x0105C2 04:85B2: 09        .byte $09   ; 34
- D 0 - - - 0x0105C3 04:85B3: 09        .byte $09   ; 35
- D 0 - - - 0x0105C4 04:85B4: 09        .byte $09   ; 36
- D 0 - - - 0x0105C5 04:85B5: 09        .byte $09   ; 37
- D 0 - - - 0x0105C6 04:85B6: 09        .byte $09   ; 38
- D 0 - - - 0x0105C7 04:85B7: 09        .byte $09   ; 39
- D 0 - - - 0x0105C8 04:85B8: 09        .byte $09   ; 3A
- D 0 - - - 0x0105C9 04:85B9: 09        .byte $09   ; 3B
- D 0 - - - 0x0105CA 04:85BA: 09        .byte $09   ; 3C
- D 0 - - - 0x0105CB 04:85BB: 09        .byte $09   ; 3D
- D 0 - - - 0x0105CC 04:85BC: 09        .byte $09   ; 3E
- D 0 - - - 0x0105CD 04:85BD: 09        .byte $09   ; 3F
- D 0 - - - 0x0105CE 04:85BE: 09        .byte $09   ; 40
- D 0 - - - 0x0105CF 04:85BF: 09        .byte $09   ; 41
- D 0 - - - 0x0105D0 04:85C0: 09        .byte $09   ; 42
- D 0 - - - 0x0105D1 04:85C1: 09        .byte $09   ; 43
- D 0 - - - 0x0105D2 04:85C2: 09        .byte $09   ; 44
- D 0 - - - 0x0105D3 04:85C3: 09        .byte $09   ; 45
- D 0 - - - 0x0105D4 04:85C4: 09        .byte $09   ; 46
- D 0 - - - 0x0105D5 04:85C5: 09        .byte $09   ; 47
- D 0 - - - 0x0105D6 04:85C6: 09        .byte $09   ; 48
- D 0 - - - 0x0105D7 04:85C7: 0C        .byte $0C   ; 49
- D 0 - - - 0x0105D8 04:85C8: 06        .byte $06   ; 4A



tbl_85C9_counter:
- D 0 - - - 0x0105D9 04:85C9: 03        .byte $03   ; 00
- D 0 - - - 0x0105DA 04:85CA: 19        .byte $19   ; 01
- D 0 - - - 0x0105DB 04:85CB: 06        .byte $06   ; 02
- D 0 - - - 0x0105DC 04:85CC: 19        .byte $19   ; 03
- D 0 - - - 0x0105DD 04:85CD: 06        .byte $06   ; 04
- D 0 - - - 0x0105DE 04:85CE: 06        .byte $06   ; 05
- D 0 - - - 0x0105DF 04:85CF: 06        .byte $06   ; 06
- D 0 - - - 0x0105E0 04:85D0: 06        .byte $06   ; 07
- D 0 - - - 0x0105E1 04:85D1: 06        .byte $06   ; 08
- D 0 - - - 0x0105E2 04:85D2: 06        .byte $06   ; 09
- D 0 - - - 0x0105E3 04:85D3: 02        .byte $02   ; 0A
- D 0 - - - 0x0105E4 04:85D4: 02        .byte $02   ; 0B
- D 0 - - - 0x0105E5 04:85D5: 02        .byte $02   ; 0C
- D 0 - - - 0x0105E6 04:85D6: 02        .byte $02   ; 0D
- D 0 - - - 0x0105E7 04:85D7: 02        .byte $02   ; 0E
- D 0 - - - 0x0105E8 04:85D8: 02        .byte $02   ; 0F
- D 0 - - - 0x0105E9 04:85D9: 02        .byte $02   ; 10
- D 0 - - - 0x0105EA 04:85DA: 02        .byte $02   ; 11
- D 0 - - - 0x0105EB 04:85DB: 03        .byte $03   ; 12
- D 0 - - - 0x0105EC 04:85DC: 03        .byte $03   ; 13
- D 0 - - - 0x0105ED 04:85DD: 03        .byte $03   ; 14
- D 0 - - - 0x0105EE 04:85DE: 03        .byte $03   ; 15
- D 0 - - - 0x0105EF 04:85DF: 10        .byte $10   ; 16
- D 0 - - - 0x0105F0 04:85E0: 10        .byte $10   ; 17
- D 0 - - - 0x0105F1 04:85E1: 10        .byte $10   ; 18
- D 0 - - - 0x0105F2 04:85E2: 10        .byte $10   ; 19
- D 0 - - - 0x0105F3 04:85E3: 10        .byte $10   ; 1A
- D 0 - - - 0x0105F4 04:85E4: 10        .byte $10   ; 1B
- D 0 - - - 0x0105F5 04:85E5: 10        .byte $10   ; 1C
- D 0 - - - 0x0105F6 04:85E6: 10        .byte $10   ; 1D
- D 0 - - - 0x0105F7 04:85E7: 10        .byte $10   ; 1E
- D 0 - - - 0x0105F8 04:85E8: 10        .byte $10   ; 1F
- D 0 - - - 0x0105F9 04:85E9: 10        .byte $10   ; 20
- D 0 - - - 0x0105FA 04:85EA: 10        .byte $10   ; 21
- D 0 - - - 0x0105FB 04:85EB: 10        .byte $10   ; 22
- D 0 - - - 0x0105FC 04:85EC: 10        .byte $10   ; 23
- - - - - - 0x0105FD 04:85ED: 10        .byte $10   ; 24
- - - - - - 0x0105FE 04:85EE: 10        .byte $10   ; 25
- D 0 - - - 0x0105FF 04:85EF: 10        .byte $10   ; 26
- D 0 - - - 0x010600 04:85F0: 10        .byte $10   ; 27
- D 0 - - - 0x010601 04:85F1: 10        .byte $10   ; 28
- D 0 - - - 0x010602 04:85F2: 10        .byte $10   ; 29
- D 0 - - - 0x010603 04:85F3: 10        .byte $10   ; 2A
- D 0 - - - 0x010604 04:85F4: 10        .byte $10   ; 2B
- D 0 - - - 0x010605 04:85F5: 10        .byte $10   ; 2C
- D 0 - - - 0x010606 04:85F6: 10        .byte $10   ; 2D
- D 0 - - - 0x010607 04:85F7: 10        .byte $10   ; 2E
- D 0 - - - 0x010608 04:85F8: 10        .byte $10   ; 2F
- D 0 - - - 0x010609 04:85F9: 10        .byte $10   ; 30
- D 0 - - - 0x01060A 04:85FA: 10        .byte $10   ; 31
- D 0 - - - 0x01060B 04:85FB: 10        .byte $10   ; 32
- D 0 - - - 0x01060C 04:85FC: 10        .byte $10   ; 33
- D 0 - - - 0x01060D 04:85FD: 10        .byte $10   ; 34
- D 0 - - - 0x01060E 04:85FE: 10        .byte $10   ; 35
- D 0 - - - 0x01060F 04:85FF: 10        .byte $10   ; 36
- D 0 - - - 0x010610 04:8600: 10        .byte $10   ; 37
- D 0 - - - 0x010611 04:8601: 10        .byte $10   ; 38
- D 0 - - - 0x010612 04:8602: 10        .byte $10   ; 39
- D 0 - - - 0x010613 04:8603: 10        .byte $10   ; 3A
- D 0 - - - 0x010614 04:8604: 10        .byte $10   ; 3B
- D 0 - - - 0x010615 04:8605: 10        .byte $10   ; 3C
- D 0 - - - 0x010616 04:8606: 10        .byte $10   ; 3D
- D 0 - - - 0x010617 04:8607: 10        .byte $10   ; 3E
- D 0 - - - 0x010618 04:8608: 10        .byte $10   ; 3F
- D 0 - - - 0x010619 04:8609: 10        .byte $10   ; 40
- D 0 - - - 0x01061A 04:860A: 10        .byte $10   ; 41
- D 0 - - - 0x01061B 04:860B: 10        .byte $10   ; 42
- D 0 - - - 0x01061C 04:860C: 10        .byte $10   ; 43
- D 0 - - - 0x01061D 04:860D: 10        .byte $10   ; 44
- D 0 - - - 0x01061E 04:860E: 10        .byte $10   ; 45
- D 0 - - - 0x01061F 04:860F: 10        .byte $10   ; 46
- D 0 - - - 0x010620 04:8610: 10        .byte $10   ; 47
- D 0 - - - 0x010621 04:8611: 10        .byte $10   ; 48
- D 0 - - - 0x010622 04:8612: 04        .byte $04   ; 49
- D 0 - - - 0x010623 04:8613: 01        .byte $01   ; 4A



tbl_8614:
- D 0 - - - 0x010624 04:8614: 00        .byte $00   ; 00
- D 0 - - - 0x010625 04:8615: 00        .byte $00   ; 01
- D 0 - - - 0x010626 04:8616: 00        .byte $00   ; 02
- D 0 - - - 0x010627 04:8617: 00        .byte $00   ; 03
- D 0 - - - 0x010628 04:8618: 00        .byte $00   ; 04
- D 0 - - - 0x010629 04:8619: 00        .byte $00   ; 05
- D 0 - - - 0x01062A 04:861A: 00        .byte $00   ; 06
- D 0 - - - 0x01062B 04:861B: 00        .byte $00   ; 07
- D 0 - - - 0x01062C 04:861C: 00        .byte $00   ; 08
- D 0 - - - 0x01062D 04:861D: 00        .byte $00   ; 09
- D 0 - - - 0x01062E 04:861E: 00        .byte $00   ; 0A
- D 0 - - - 0x01062F 04:861F: 00        .byte $00   ; 0B
- D 0 - - - 0x010630 04:8620: 00        .byte $00   ; 0C
- D 0 - - - 0x010631 04:8621: 00        .byte $00   ; 0D
- D 0 - - - 0x010632 04:8622: 00        .byte $00   ; 0E
- D 0 - - - 0x010633 04:8623: 00        .byte $00   ; 0F
- D 0 - - - 0x010634 04:8624: 00        .byte $00   ; 10
- D 0 - - - 0x010635 04:8625: 00        .byte $00   ; 11
- D 0 - - - 0x010636 04:8626: 00        .byte $00   ; 12
- D 0 - - - 0x010637 04:8627: 00        .byte $00   ; 13
- D 0 - - - 0x010638 04:8628: 00        .byte $00   ; 14
- D 0 - - - 0x010639 04:8629: 00        .byte $00   ; 15
- D 0 - - - 0x01063A 04:862A: 25        .byte $25   ; 16
- D 0 - - - 0x01063B 04:862B: 25        .byte $25   ; 17
- D 0 - - - 0x01063C 04:862C: 25        .byte $25   ; 18
- D 0 - - - 0x01063D 04:862D: 25        .byte $25   ; 19
- D 0 - - - 0x01063E 04:862E: 25        .byte $25   ; 1A
- D 0 - - - 0x01063F 04:862F: 25        .byte $25   ; 1B
- D 0 - - - 0x010640 04:8630: 25        .byte $25   ; 1C
- D 0 - - - 0x010641 04:8631: 25        .byte $25   ; 1D
- D 0 - - - 0x010642 04:8632: 25        .byte $25   ; 1E
- D 0 - - - 0x010643 04:8633: 25        .byte $25   ; 1F
- D 0 - - - 0x010644 04:8634: 25        .byte $25   ; 20
- D 0 - - - 0x010645 04:8635: 25        .byte $25   ; 21
- D 0 - - - 0x010646 04:8636: 25        .byte $25   ; 22
- D 0 - - - 0x010647 04:8637: 25        .byte $25   ; 23
- - - - - - 0x010648 04:8638: 25        .byte $25   ; 24
- - - - - - 0x010649 04:8639: 25        .byte $25   ; 25
- D 0 - - - 0x01064A 04:863A: 25        .byte $25   ; 26
- D 0 - - - 0x01064B 04:863B: 25        .byte $25   ; 27
- D 0 - - - 0x01064C 04:863C: 25        .byte $25   ; 28
- D 0 - - - 0x01064D 04:863D: 25        .byte $25   ; 29
- D 0 - - - 0x01064E 04:863E: 25        .byte $25   ; 2A
- D 0 - - - 0x01064F 04:863F: 25        .byte $25   ; 2B
- D 0 - - - 0x010650 04:8640: 25        .byte $25   ; 2C
- D 0 - - - 0x010651 04:8641: 25        .byte $25   ; 2D
- D 0 - - - 0x010652 04:8642: 25        .byte $25   ; 2E
- D 0 - - - 0x010653 04:8643: 25        .byte $25   ; 2F
- D 0 - - - 0x010654 04:8644: 25        .byte $25   ; 30
- D 0 - - - 0x010655 04:8645: 25        .byte $25   ; 31
- D 0 - - - 0x010656 04:8646: 25        .byte $25   ; 32
- D 0 - - - 0x010657 04:8647: 25        .byte $25   ; 33
- D 0 - - - 0x010658 04:8648: 25        .byte $25   ; 34
- D 0 - - - 0x010659 04:8649: 25        .byte $25   ; 35
- D 0 - - - 0x01065A 04:864A: 25        .byte $25   ; 36
- D 0 - - - 0x01065B 04:864B: 25        .byte $25   ; 37
- D 0 - - - 0x01065C 04:864C: 25        .byte $25   ; 38
- D 0 - - - 0x01065D 04:864D: 25        .byte $25   ; 39
- D 0 - - - 0x01065E 04:864E: 25        .byte $25   ; 3A
- D 0 - - - 0x01065F 04:864F: 25        .byte $25   ; 3B
- D 0 - - - 0x010660 04:8650: 25        .byte $25   ; 3C
- D 0 - - - 0x010661 04:8651: 25        .byte $25   ; 3D
- D 0 - - - 0x010662 04:8652: 25        .byte $25   ; 3E
- D 0 - - - 0x010663 04:8653: 25        .byte $25   ; 3F
- D 0 - - - 0x010664 04:8654: 25        .byte $25   ; 40
- D 0 - - - 0x010665 04:8655: 25        .byte $25   ; 41
- D 0 - - - 0x010666 04:8656: 25        .byte $25   ; 42
- D 0 - - - 0x010667 04:8657: 25        .byte $25   ; 43
- D 0 - - - 0x010668 04:8658: 25        .byte $25   ; 44
- D 0 - - - 0x010669 04:8659: 25        .byte $25   ; 45
- D 0 - - - 0x01066A 04:865A: 25        .byte $25   ; 46
- D 0 - - - 0x01066B 04:865B: 25        .byte $25   ; 47
- D 0 - - - 0x01066C 04:865C: 25        .byte $25   ; 48
- D 0 - - - 0x01066D 04:865D: 00        .byte $00   ; 49
- D 0 - - - 0x01066E 04:865E: 00        .byte $00   ; 4A



sub_865F:
C - - - - - 0x01066F 04:865F: AD 96 07  LDA ram_keys
C - - - - - 0x010672 04:8662: 85 0E     STA ram_000E
C - - - - - 0x010674 04:8664: A2 12     LDX #$12
bra_8666_loop:
C - - - - - 0x010676 04:8666: 46 0E     LSR ram_000E
C - - - - - 0x010678 04:8668: 90 50     BCC bra_86BA
C - - - - - 0x01067A 04:866A: 20 04 84  JSR sub_8404
C - - - - - 0x01067D 04:866D: BD AE 86  LDA tbl_86C0_oam_index - $12,X
C - - - - - 0x010680 04:8670: A8        TAY
C - - - - - 0x010681 04:8671: BD B2 86  LDA tbl_86C4_spr_X - $12,X
C - - - - - 0x010684 04:8674: 99 03 02  STA ram_spr_X,Y
C - - - - - 0x010687 04:8677: 99 0B 02  STA ram_spr_X + $08,Y
C - - - - - 0x01068A 04:867A: 18        CLC
C - - - - - 0x01068B 04:867B: 69 08     ADC #$08
C - - - - - 0x01068D 04:867D: 99 07 02  STA ram_spr_X + $04,Y
C - - - - - 0x010690 04:8680: 99 0F 02  STA ram_spr_X + $0C,Y
C - - - - - 0x010693 04:8683: BD B6 86  LDA tbl_86C8_spr_Y - $12,X
C - - - - - 0x010696 04:8686: 99 00 02  STA ram_spr_Y,Y
C - - - - - 0x010699 04:8689: 99 04 02  STA ram_spr_Y + $04,Y
C - - - - - 0x01069C 04:868C: 18        CLC
C - - - - - 0x01069D 04:868D: 69 08     ADC #$08
C - - - - - 0x01069F 04:868F: 99 08 02  STA ram_spr_Y + $08,Y
C - - - - - 0x0106A2 04:8692: 99 0C 02  STA ram_spr_Y + $0C,Y
C - - - - - 0x0106A5 04:8695: A9 0A     LDA #$0A
C - - - - - 0x0106A7 04:8697: 99 01 02  STA ram_spr_T,Y
C - - - - - 0x0106AA 04:869A: 18        CLC
C - - - - - 0x0106AB 04:869B: 69 01     ADC #$01
C - - - - - 0x0106AD 04:869D: 99 05 02  STA ram_spr_T + $04,Y
C - - - - - 0x0106B0 04:86A0: 18        CLC
C - - - - - 0x0106B1 04:86A1: 69 01     ADC #$01
C - - - - - 0x0106B3 04:86A3: 99 09 02  STA ram_spr_T + $08,Y
C - - - - - 0x0106B6 04:86A6: 18        CLC
C - - - - - 0x0106B7 04:86A7: 69 01     ADC #$01
C - - - - - 0x0106B9 04:86A9: 99 0D 02  STA ram_spr_T + $0C,Y
C - - - - - 0x0106BC 04:86AC: A9 01     LDA #$01
C - - - - - 0x0106BE 04:86AE: 99 02 02  STA ram_spr_A,Y
C - - - - - 0x0106C1 04:86B1: 99 06 02  STA ram_spr_A + $04,Y
C - - - - - 0x0106C4 04:86B4: 99 0A 02  STA ram_spr_A + $08,Y
C - - - - - 0x0106C7 04:86B7: 99 0E 02  STA ram_spr_A + $0C,Y
bra_86BA:
C - - - - - 0x0106CA 04:86BA: E8        INX
C - - - - - 0x0106CB 04:86BB: A5 0E     LDA ram_000E
C - - - - - 0x0106CD 04:86BD: D0 A7     BNE bra_8666_loop
C - - - - - 0x0106CF 04:86BF: 60        RTS

tbl_86C0_oam_index:
- D 0 - - - 0x0106D0 04:86C0: 54        .byte $54   ; 
- D 0 - - - 0x0106D1 04:86C1: 64        .byte $64   ; 
- D 0 - - - 0x0106D2 04:86C2: 74        .byte $74   ; 
- D 0 - - - 0x0106D3 04:86C3: 84        .byte $84   ; 

tbl_86C4_spr_X:
- D 0 - - - 0x0106D4 04:86C4: 9C        .byte $9C   ; 
- D 0 - - - 0x0106D5 04:86C5: C4        .byte $C4   ; 
- D 0 - - - 0x0106D6 04:86C6: 9C        .byte $9C   ; 
- D 0 - - - 0x0106D7 04:86C7: C4        .byte $C4   ; 

tbl_86C8_spr_Y:
- D 0 - - - 0x0106D8 04:86C8: 27        .byte $27   ; 
- D 0 - - - 0x0106D9 04:86C9: 27        .byte $27   ; 
- D 0 - - - 0x0106DA 04:86CA: 47        .byte $47   ; 
- D 0 - - - 0x0106DB 04:86CB: 47        .byte $47   ; 



sub_86CC:
C - - - - - 0x0106DC 04:86CC: AD 89 07  LDA ram_lives
C - - - - - 0x0106DF 04:86CF: F0 12     BEQ bra_86E3_RTS
C - - - - - 0x0106E1 04:86D1: C9 08     CMP #$08
C - - - - - 0x0106E3 04:86D3: 90 02     BCC bra_86D7_not_overflow
C - - - - - 0x0106E5 04:86D5: A9 08     LDA #$08
bra_86D7_not_overflow:
C - - - - - 0x0106E7 04:86D7: 85 0E     STA ram_000E
C - - - - - 0x0106E9 04:86D9: A2 0A     LDX #$0A
bra_86DB_loop:
C - - - - - 0x0106EB 04:86DB: 20 04 84  JSR sub_8404
C - - - - - 0x0106EE 04:86DE: E8        INX
C - - - - - 0x0106EF 04:86DF: C6 0E     DEC ram_000E
C - - - - - 0x0106F1 04:86E1: D0 F8     BNE bra_86DB_loop
bra_86E3_RTS:
C - - - - - 0x0106F3 04:86E3: 60        RTS



ofs_0x0106F4_24:
C - - - - - 0x0106F4 04:86E4: 20 7C 81  JSR sub_817C
C - - - - - 0x0106F7 04:86E7: 20 DA 87  JSR sub_87DA
C - - - - - 0x0106FA 04:86EA: A9 00     LDA #$00
C - - - - - 0x0106FC 04:86EC: 8D 06 20  STA $2006
C - - - - - 0x0106FF 04:86EF: 8D 06 20  STA $2006
C - - - - - 0x010702 04:86F2: 20 C3 99  JSR sub_99C3
C - - - - - 0x010705 04:86F5: A9 00     LDA #$00
C - - - - - 0x010707 04:86F7: 85 22     STA ram_0022
C - - - - - 0x010709 04:86F9: A9 20     LDA #$20
C - - - - - 0x01070B 04:86FB: 85 23     STA ram_0023
C - - - - - 0x01070D 04:86FD: A9 0A     LDA #< $200A
C - - - - - 0x01070F 04:86FF: 85 26     STA ram_0026
C - - - - - 0x010711 04:8701: A9 20     LDA #> $200A
C - - - - - 0x010713 04:8703: 85 27     STA ram_0027
C - - - - - 0x010715 04:8705: A2 04     LDX #$04
bra_8707_loop:
C - - - - - 0x010717 04:8707: A5 27     LDA ram_0027
C - - - - - 0x010719 04:8709: 8D 06 20  STA $2006
C - - - - - 0x01071C 04:870C: A5 26     LDA ram_0026
C - - - - - 0x01071E 04:870E: 8D 06 20  STA $2006
C - - - - - 0x010721 04:8711: AD 07 20  LDA $2007
C - - - - - 0x010724 04:8714: AD 07 20  LDA $2007
C - - - - - 0x010727 04:8717: A4 23     LDY ram_0023
C - - - - - 0x010729 04:8719: 8C 06 20  STY $2006
C - - - - - 0x01072C 04:871C: A4 22     LDY ram_0022
C - - - - - 0x01072E 04:871E: 8C 06 20  STY $2006
C - - - - - 0x010731 04:8721: 8D 07 20  STA $2007
C - - - - - 0x010734 04:8724: E6 26     INC ram_0026
C - - - - - 0x010736 04:8726: D0 02     BNE bra_872A
C - - - - - 0x010738 04:8728: E6 27     INC ram_0027
bra_872A:
C - - - - - 0x01073A 04:872A: E6 22     INC ram_0022
C - - - - - 0x01073C 04:872C: D0 D9     BNE bra_8707_loop
C - - - - - 0x01073E 04:872E: E6 23     INC ram_0023
C - - - - - 0x010740 04:8730: CA        DEX
C - - - - - 0x010741 04:8731: D0 D4     BNE bra_8707_loop
; attributes
C - - - - - 0x010743 04:8733: A2 08     LDX #$08
C - - - - - 0x010745 04:8735: A9 23     LDA #> $23B0
C - - - - - 0x010747 04:8737: 8D 06 20  STA $2006
C - - - - - 0x01074A 04:873A: A9 B0     LDA #< $23B0
C - - - - - 0x01074C 04:873C: 8D 06 20  STA $2006
C - - - - - 0x01074F 04:873F: A9 00     LDA #$00
C - - - - - 0x010751 04:8741: A0 0F     LDY #$0F
bra_8743_loop:
C - - - - - 0x010753 04:8743: 8D 07 20  STA $2007
C - - - - - 0x010756 04:8746: 88        DEY
C - - - - - 0x010757 04:8747: 10 FA     BPL bra_8743_loop
bra_8749_loop:
C - - - - - 0x010759 04:8749: A9 AA     LDA #con_tile_id + $AA
C - - - - - 0x01075B 04:874B: 8D 07 20  STA $2007
C - - - - - 0x01075E 04:874E: 8D 07 20  STA $2007
C - - - - - 0x010761 04:8751: A9 00     LDA #con_tile_id + $00
C - - - - - 0x010763 04:8753: 8D 07 20  STA $2007
C - - - - - 0x010766 04:8756: 8D 07 20  STA $2007
C - - - - - 0x010769 04:8759: 8D 07 20  STA $2007
C - - - - - 0x01076C 04:875C: 8D 07 20  STA $2007
C - - - - - 0x01076F 04:875F: 8D 07 20  STA $2007
C - - - - - 0x010772 04:8762: 8D 07 20  STA $2007
C - - - - - 0x010775 04:8765: CA        DEX
C - - - - - 0x010776 04:8766: D0 E1     BNE bra_8749_loop
C - - - - - 0x010778 04:8768: A2 00     LDX #$00
bra_876A_loop:
C - - - - - 0x01077A 04:876A: BD 03 02  LDA ram_spr_X,X
C - - - - - 0x01077D 04:876D: 38        SEC
C - - - - - 0x01077E 04:876E: E9 50     SBC #$50
C - - - - - 0x010780 04:8770: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x010783 04:8773: E8        INX
C - - - - - 0x010784 04:8774: E8        INX
C - - - - - 0x010785 04:8775: E8        INX
C - - - - - 0x010786 04:8776: E8        INX
C - - - - - 0x010787 04:8777: D0 F1     BNE bra_876A_loop
C - - - - - 0x010789 04:8779: A9 86     LDA #< tbl_8786
C - - - - - 0x01078B 04:877B: 85 22     STA ram_0022
C - - - - - 0x01078D 04:877D: A9 87     LDA #> tbl_8786
C - - - - - 0x01078F 04:877F: 85 23     STA ram_0023
C - - - - - 0x010791 04:8781: A9 00     LDA #$00
C - - - - - 0x010793 04:8783: 4C E4 A5  JMP loc_A5E4_write_to_ppu

; all staff pieces are collected message

tbl_8786:
- D 0 - I - 0x010796 04:8786: FE        .byte $FE   ; next line
- D 0 - I - 0x010797 04:8787: 08 21     .word $2108
; The staff of DEMNOS
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x010799 04:8789: 38        .byte                                         $38, $12, $0F, $00, $1D, $1E, $0B, $10   ; 
- D 0 - I - 0x0107A1 04:8791: 10        .byte $10, $00, $19, $10, $00, $28, $29, $31, $32, $33, $37   ; 

- D 0 - I - 0x0107AC 04:879C: FE        .byte $FE   ; next line
- D 0 - I - 0x0107AD 04:879D: 49 21     .word $2149    ; postion
; has been restored.
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x0107AF 04:879F: 12        .byte                                              $12, $0B, $1D, $00, $0C, $0F, $0F   ; 
- D 0 - I - 0x0107B6 04:87A6: 18        .byte $18, $00, $1C, $0F, $1D, $1E, $19, $1C, $0F, $0E, $40   ; 

- D 0 - I - 0x0107C1 04:87B1: FE        .byte $FE   ; next line
- D 0 - I - 0x0107C2 04:87B2: A8 21     .word $21A8    ; postion
; Now you have to
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x0107C4 04:87B4: 00        .byte                                         $00, $32, $19, $21, $00, $23, $19, $1F   ; 
- D 0 - I - 0x0107CC 04:87BC: 00        .byte $00, $12, $0B, $20, $0F, $00, $1E, $19   ; 

- D 0 - I - 0x0107D4 04:87C4: FE        .byte $FE   ; next line
- D 0 - I - 0x0107D5 04:87C5: E9 21     .word $21E9    ; postion
; find the princess.
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x0107D7 04:87C7: 10        .byte                                              $10, $13, $18, $0E, $00, $1E, $12   ; 
- D 0 - I - 0x0107DE 04:87CE: 0F        .byte $0F, $00, $1A, $1C, $13, $18, $0D, $0F, $1D, $1D, $40   ; 

- D 0 - I - 0x0107E9 04:87D9: FF        .byte $FF   ; end token



sub_87DA:
C - - - - - 0x0107EA 04:87DA: AD 95 07  LDA ram_staff_pieces
C - - - - - 0x0107ED 04:87DD: 85 0E     STA ram_000E
C - - - - - 0x0107EF 04:87DF: A2 09     LDX #$09
loc_87E1_loop:
C D 0 - - - 0x0107F1 04:87E1: A5 0E     LDA ram_000E
C - - - - - 0x0107F3 04:87E3: F0 09     BEQ bra_87EE
C - - - - - 0x0107F5 04:87E5: 20 04 84  JSR sub_8404
C - - - - - 0x0107F8 04:87E8: CA        DEX
C - - - - - 0x0107F9 04:87E9: 46 0E     LSR ram_000E
C - - - - - 0x0107FB 04:87EB: 4C E1 87  JMP loc_87E1_loop
bra_87EE:
C - - - - - 0x0107FE 04:87EE: AD 95 07  LDA ram_staff_pieces
C - - - - - 0x010801 04:87F1: 85 0E     STA ram_000E
C - - - - - 0x010803 04:87F3: A9 60     LDA #< tbl_8860
C - - - - - 0x010805 04:87F5: 85 22     STA ram_0022
C - - - - - 0x010807 04:87F7: A9 88     LDA #> tbl_8860
C - - - - - 0x010809 04:87F9: 85 23     STA ram_0023
C - - - - - 0x01080B 04:87FB: A0 00     LDY #$00
bra_87FD_loop:
C - - - - - 0x01080D 04:87FD: A5 0E     LDA ram_000E
C - - - - - 0x01080F 04:87FF: F0 5E     BEQ bra_885F_RTS
C - - - - - 0x010811 04:8801: B1 22     LDA (ram_0022),Y
C - - - - - 0x010813 04:8803: C8        INY
C - - - - - 0x010814 04:8804: AA        TAX
C - - - - - 0x010815 04:8805: B1 22     LDA (ram_0022),Y
C - - - - - 0x010817 04:8807: C8        INY
C - - - - - 0x010818 04:8808: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x01081B 04:880B: 9D 04 02  STA ram_spr_Y + $04,X
C - - - - - 0x01081E 04:880E: B1 22     LDA (ram_0022),Y
C - - - - - 0x010820 04:8810: C8        INY
C - - - - - 0x010821 04:8811: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x010824 04:8814: 18        CLC
C - - - - - 0x010825 04:8815: 69 01     ADC #$01
C - - - - - 0x010827 04:8817: 9D 05 02  STA ram_spr_T + $04,X
C - - - - - 0x01082A 04:881A: A9 70     LDA #$70
C - - - - - 0x01082C 04:881C: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x01082F 04:881F: 18        CLC
C - - - - - 0x010830 04:8820: 69 08     ADC #$08
C - - - - - 0x010832 04:8822: 9D 07 02  STA ram_spr_X + $04,X
C - - - - - 0x010835 04:8825: B1 22     LDA (ram_0022),Y
C - - - - - 0x010837 04:8827: C8        INY
C - - - - - 0x010838 04:8828: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x01083B 04:882B: 9D 06 02  STA ram_spr_A + $04,X
C - - - - - 0x01083E 04:882E: B1 22     LDA (ram_0022),Y
C - - - - - 0x010840 04:8830: C8        INY
C - - - - - 0x010841 04:8831: AA        TAX
C - - - - - 0x010842 04:8832: B1 22     LDA (ram_0022),Y
C - - - - - 0x010844 04:8834: C8        INY
C - - - - - 0x010845 04:8835: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x010848 04:8838: 9D 04 02  STA ram_spr_Y + $04,X
C - - - - - 0x01084B 04:883B: B1 22     LDA (ram_0022),Y
C - - - - - 0x01084D 04:883D: C8        INY
C - - - - - 0x01084E 04:883E: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x010851 04:8841: 18        CLC
C - - - - - 0x010852 04:8842: 69 01     ADC #$01
C - - - - - 0x010854 04:8844: 9D 05 02  STA ram_spr_T + $04,X
C - - - - - 0x010857 04:8847: A9 70     LDA #$70
C - - - - - 0x010859 04:8849: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x01085C 04:884C: 18        CLC
C - - - - - 0x01085D 04:884D: 69 08     ADC #$08
C - - - - - 0x01085F 04:884F: 9D 07 02  STA ram_spr_X + $04,X
C - - - - - 0x010862 04:8852: B1 22     LDA (ram_0022),Y
C - - - - - 0x010864 04:8854: C8        INY
C - - - - - 0x010865 04:8855: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x010868 04:8858: 9D 06 02  STA ram_spr_A + $04,X
C - - - - - 0x01086B 04:885B: 46 0E     LSR ram_000E
C - - - - - 0x01086D 04:885D: D0 9E     BNE bra_87FD_loop
bra_885F_RTS:
C - - - - - 0x01086F 04:885F: 60        RTS



tbl_8860:
; 01
- D 0 - I - 0x010870 04:8860: C4        .byte $C4   ; oam index
- D 0 - I - 0x010871 04:8861: C2        .byte $C2   ; spr_Y
- D 0 - I - 0x010872 04:8862: 0E        .byte $0E   ; spr_T
- D 0 - I - 0x010873 04:8863: 03        .byte $03   ; spr_X
- D 0 - I - 0x010874 04:8864: BC        .byte $BC   ; oam index
- D 0 - I - 0x010875 04:8865: CA        .byte $CA   ; spr_Y
- D 0 - I - 0x010876 04:8866: 10        .byte $10   ; spr_T
- D 0 - I - 0x010877 04:8867: 03        .byte $03   ; spr_X
; 02
- D 0 - I - 0x010878 04:8868: B4        .byte $B4   ; 
- D 0 - I - 0x010879 04:8869: 9C        .byte $9C   ; 
- D 0 - I - 0x01087A 04:886A: 12        .byte $12   ; 
- D 0 - I - 0x01087B 04:886B: 03        .byte $03   ; 
- D 0 - I - 0x01087C 04:886C: B4        .byte $B4   ; 
- D 0 - I - 0x01087D 04:886D: 9C        .byte $9C   ; 
- D 0 - I - 0x01087E 04:886E: 12        .byte $12   ; 
- D 0 - I - 0x01087F 04:886F: 03        .byte $03   ; 
; 04
- D 0 - I - 0x010880 04:8870: B4        .byte $B4   ; 
- D 0 - I - 0x010881 04:8871: 9C        .byte $9C   ; 
- D 0 - I - 0x010882 04:8872: 12        .byte $12   ; 
- D 0 - I - 0x010883 04:8873: 03        .byte $03   ; 
- D 0 - I - 0x010884 04:8874: B4        .byte $B4   ; 
- D 0 - I - 0x010885 04:8875: 9C        .byte $9C   ; 
- D 0 - I - 0x010886 04:8876: 12        .byte $12   ; 
- D 0 - I - 0x010887 04:8877: 03        .byte $03   ; 
; 08
- D 0 - I - 0x010888 04:8878: AC        .byte $AC   ; 
- D 0 - I - 0x010889 04:8879: 71        .byte $71   ; 
- D 0 - I - 0x01088A 04:887A: 14        .byte $14   ; 
- D 0 - I - 0x01088B 04:887B: 00        .byte $00   ; 
- D 0 - I - 0x01088C 04:887C: AC        .byte $AC   ; 
- D 0 - I - 0x01088D 04:887D: 71        .byte $71   ; 
- D 0 - I - 0x01088E 04:887E: 14        .byte $14   ; 
- D 0 - I - 0x01088F 04:887F: 00        .byte $00   ; 
; 10
- D 0 - I - 0x010890 04:8880: A4        .byte $A4   ; 
- D 0 - I - 0x010891 04:8881: 44        .byte $44   ; 
- D 0 - I - 0x010892 04:8882: 12        .byte $12   ; 
- D 0 - I - 0x010893 04:8883: 03        .byte $03   ; 
- D 0 - I - 0x010894 04:8884: A4        .byte $A4   ; 
- D 0 - I - 0x010895 04:8885: 44        .byte $44   ; 
- D 0 - I - 0x010896 04:8886: 12        .byte $12   ; 
- D 0 - I - 0x010897 04:8887: 03        .byte $03   ; 
; 20
- D 0 - I - 0x010898 04:8888: 9C        .byte $9C   ; 
- D 0 - I - 0x010899 04:8889: 22        .byte $22   ; 
- D 0 - I - 0x01089A 04:888A: 10        .byte $10   ; 
- D 0 - I - 0x01089B 04:888B: 03        .byte $03   ; 
- D 0 - I - 0x01089C 04:888C: 94        .byte $94   ; 
- D 0 - I - 0x01089D 04:888D: 1A        .byte $1A   ; 
- D 0 - I - 0x01089E 04:888E: 0E        .byte $0E   ; 
- D 0 - I - 0x01089F 04:888F: 03        .byte $03   ; 



sub_8890:
C - - - - - 0x0108A0 04:8890: A2 03     LDX #$03
C - - - - - 0x0108A2 04:8892: A9 10     LDA #> $1010
C - - - - - 0x0108A4 04:8894: 8D 06 20  STA $2006
C - - - - - 0x0108A7 04:8897: A9 10     LDA #< $1010
C - - - - - 0x0108A9 04:8899: 8D 06 20  STA $2006
bra_889C_loop:
C - - - - - 0x0108AC 04:889C: A0 31     LDY #$31
bra_889E_loop:
C - - - - - 0x0108AE 04:889E: B9 5F 89  LDA tbl_895F,Y
C - - - - - 0x0108B1 04:88A1: 99 9D 00  STA ram_009D,Y
C - - - - - 0x0108B4 04:88A4: 88        DEY
C - - - - - 0x0108B5 04:88A5: 10 F7     BPL bra_889E_loop
C - - - - - 0x0108B7 04:88A7: BD 84 07  LDA ram_potion_amount,X
C - - - - - 0x0108BA 04:88AA: 85 0D     STA ram_000D
C - - - - - 0x0108BC 04:88AC: A0 06     LDY #$06
bra_88AE_loop:
C - - - - - 0x0108BE 04:88AE: A5 0D     LDA ram_000D
C - - - - - 0x0108C0 04:88B0: C9 04     CMP #$04
C - - - - - 0x0108C2 04:88B2: F0 0C     BEQ bra_88C0
C - - - - - 0x0108C4 04:88B4: 20 E7 88  JSR sub_88E7
C - - - - - 0x0108C7 04:88B7: C8        INY
C - - - - - 0x0108C8 04:88B8: 20 E7 88  JSR sub_88E7
C - - - - - 0x0108CB 04:88BB: C8        INY
C - - - - - 0x0108CC 04:88BC: E6 0D     INC ram_000D
C - - - - - 0x0108CE 04:88BE: D0 EE     BNE bra_88AE_loop
bra_88C0:
C - - - - - 0x0108D0 04:88C0: A0 00     LDY #$00
bra_88C2_loop:
C - - - - - 0x0108D2 04:88C2: B9 9D 00  LDA ram_009D,Y
C - - - - - 0x0108D5 04:88C5: 8D 07 20  STA $2007
C - - - - - 0x0108D8 04:88C8: C8        INY
C - - - - - 0x0108D9 04:88C9: C0 20     CPY #$20
C - - - - - 0x0108DB 04:88CB: D0 F5     BNE bra_88C2_loop
C - - - - - 0x0108DD 04:88CD: CA        DEX
C - - - - - 0x0108DE 04:88CE: 10 CC     BPL bra_889C_loop
C - - - - - 0x0108E0 04:88D0: A0 00     LDY #$00
bra_88D2_loop:
C - - - - - 0x0108E2 04:88D2: B9 7F 89  LDA tbl_897F,Y
C - - - - - 0x0108E5 04:88D5: 8D 07 20  STA $2007
C - - - - - 0x0108E8 04:88D8: C8        INY
C - - - - - 0x0108E9 04:88D9: D0 F7     BNE bra_88D2_loop
bra_88DB_loop:
C - - - - - 0x0108EB 04:88DB: B9 7F 89  LDA tbl_897F,Y
C - - - - - 0x0108EE 04:88DE: 8D 07 20  STA $2007
C - - - - - 0x0108F1 04:88E1: C8        INY
C - - - - - 0x0108F2 04:88E2: C0 40     CPY #$40
C - - - - - 0x0108F4 04:88E4: D0 F5     BNE bra_88DB_loop
C - - - - - 0x0108F6 04:88E6: 60        RTS



sub_88E7:
C - - - - - 0x0108F7 04:88E7: C0 08     CPY #$08
C - - - - - 0x0108F9 04:88E9: B0 27     BCS bra_8912
C - - - - - 0x0108FB 04:88EB: A5 A2     LDA ram_00A2
C - - - - - 0x0108FD 04:88ED: 25 AA     AND ram_00AA
C - - - - - 0x0108FF 04:88EF: 49 FF     EOR #$FF
C - - - - - 0x010901 04:88F1: 48        PHA
C - - - - - 0x010902 04:88F2: 25 A2     AND ram_00A2
C - - - - - 0x010904 04:88F4: 85 A2     STA ram_00A2
C - - - - - 0x010906 04:88F6: 68        PLA
C - - - - - 0x010907 04:88F7: 25 AA     AND ram_00AA
C - - - - - 0x010909 04:88F9: 85 AA     STA ram_00AA
C - - - - - 0x01090B 04:88FB: B9 9D 00  LDA ram_009D,Y
C - - - - - 0x01090E 04:88FE: 39 A5 00  AND ram_00A5,Y
C - - - - - 0x010911 04:8901: 49 FF     EOR #$FF
C - - - - - 0x010913 04:8903: 48        PHA
C - - - - - 0x010914 04:8904: 39 9D 00  AND ram_009D,Y
C - - - - - 0x010917 04:8907: 99 9D 00  STA ram_009D,Y
C - - - - - 0x01091A 04:890A: 68        PLA
C - - - - - 0x01091B 04:890B: 39 A5 00  AND ram_00A5,Y
C - - - - - 0x01091E 04:890E: 99 A5 00  STA ram_00A5,Y
C - - - - - 0x010921 04:8911: 60        RTS
bra_8912:
C - - - - - 0x010922 04:8912: B9 A5 00  LDA ram_00A5,Y
C - - - - - 0x010925 04:8915: 39 AD 00  AND ram_00AD,Y
C - - - - - 0x010928 04:8918: 49 FF     EOR #$FF
C - - - - - 0x01092A 04:891A: 48        PHA
C - - - - - 0x01092B 04:891B: 39 A5 00  AND ram_00A5,Y
C - - - - - 0x01092E 04:891E: 99 A5 00  STA ram_00A5,Y
C - - - - - 0x010931 04:8921: 68        PLA
C - - - - - 0x010932 04:8922: 39 AD 00  AND ram_00AD,Y
C - - - - - 0x010935 04:8925: 99 AD 00  STA ram_00AD,Y
C - - - - - 0x010938 04:8928: 60        RTS



sub_8929:
ofs_0x010939_11:
C - - - - - 0x010939 04:8929: AE 88 07  LDX ram_potion_id
C - - - - - 0x01093C 04:892C: BD 57 89  LDA tbl_8957_spr_X,X
C - - - - - 0x01093F 04:892F: 38        SEC
C - - - - - 0x010940 04:8930: E9 04     SBC #$04
C - - - - - 0x010942 04:8932: 8D 47 02  STA ram_spr_X + $44
C - - - - - 0x010945 04:8935: 8D 4F 02  STA ram_spr_X + $4C
C - - - - - 0x010948 04:8938: 18        CLC
C - - - - - 0x010949 04:8939: 69 10     ADC #$10
C - - - - - 0x01094B 04:893B: 8D 4B 02  STA ram_spr_X + $48
C - - - - - 0x01094E 04:893E: 8D 53 02  STA ram_spr_X + $50
C - - - - - 0x010951 04:8941: BD 5B 89  LDA tbl_895B_spr_Y,X
C - - - - - 0x010954 04:8944: 38        SEC
C - - - - - 0x010955 04:8945: E9 03     SBC #$03
C - - - - - 0x010957 04:8947: 8D 44 02  STA ram_spr_Y + $44
C - - - - - 0x01095A 04:894A: 8D 48 02  STA ram_spr_Y + $48
C - - - - - 0x01095D 04:894D: 18        CLC
C - - - - - 0x01095E 04:894E: 69 10     ADC #$10
C - - - - - 0x010960 04:8950: 8D 4C 02  STA ram_spr_Y + $4C
C - - - - - 0x010963 04:8953: 8D 50 02  STA ram_spr_Y + $50
C - - - - - 0x010966 04:8956: 60        RTS



tbl_8957_spr_X:
- D 0 - - - 0x010967 04:8957: 9C        .byte $9C   ; 
- D 0 - - - 0x010968 04:8958: C4        .byte $C4   ; 
- D 0 - - - 0x010969 04:8959: 9C        .byte $9C   ; 
- D 0 - - - 0x01096A 04:895A: C4        .byte $C4   ; 

tbl_895B_spr_Y:
- D 0 - - - 0x01096B 04:895B: 8C        .byte $8C   ; 
- D 0 - - - 0x01096C 04:895C: 8C        .byte $8C   ; 
- D 0 - - - 0x01096D 04:895D: AC        .byte $AC   ; 
- D 0 - - - 0x01096E 04:895E: AC        .byte $AC   ; 



tbl_895F:
- D 0 - - - 0x01096F 04:895F: 00        .byte $00, $00, $00, $00, $00, $C0, $E0, $F0, $00, $00, $D0, $A0, $20, $D0, $E8, $F4   ; 
- D 0 - - - 0x01097F 04:896F: F0        .byte $F0, $F8, $F8, $F8, $F8, $F0, $00, $00, $F4, $FA, $FA, $FA, $FA, $F2, $04, $F8   ; 
tbl_897F:   ; 895F continues here, 11h bytes
- D 0 - - - 0x01098F 04:897F: 7F        .byte $7F, $FF, $E0, $C0, $C0, $C0, $C0, $C0, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - - - 0x01099F 04:898F: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $03   ; 
- D 0 - - - 0x0109AF 04:899F: 00        .byte $00, $38, $42, $42, $42, $04, $78, $80, $38, $44, $84, $84, $84, $F8, $80, $00   ; 
- D 0 - - - 0x0109BF 04:89AF: 01        .byte $01, $02, $04, $08, $10, $08, $14, $00, $06, $0C, $18, $32, $65, $26, $00, $08   ; 
- D 0 - - - 0x0109CF 04:89BF: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - - - 0x0109DF 04:89CF: 80        .byte $80, $90, $AA, $2B, $1A, $02, $00, $00, $80, $90, $AA, $2B, $1A, $02, $00, $00   ; 
- D 0 - - - 0x0109EF 04:89DF: 01        .byte $01, $09, $45, $4C, $D4, $40, $00, $00, $01, $09, $45, $4C, $D4, $40, $00, $00   ; 
- D 0 - - - 0x0109FF 04:89EF: 80        .byte $80, $A8, $91, $20, $19, $02, $00, $00, $80, $A8, $91, $20, $19, $02, $00, $00   ; 
- D 0 - - - 0x010A0F 04:89FF: 01        .byte $01, $15, $95, $8C, $84, $40, $00, $00, $01, $15, $95, $8C, $84, $40, $00, $00   ; 
- D 0 - - - 0x010A1F 04:8A0F: 80        .byte $80, $80, $83, $03, $03, $03, $00, $00, $80, $80, $83, $03, $03, $03, $00, $00   ; 
- D 0 - - - 0x010A2F 04:8A1F: 01        .byte $01, $01, $C1, $C0, $40, $C0, $00, $00, $01, $01, $C1, $C0, $40, $C0, $00, $00   ; 
- D 0 - - - 0x010A3F 04:8A2F: 40        .byte $40, $20, $18, $07, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - - - 0x010A4F 04:8A3F: 02        .byte $02, $04, $18, $E0, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - - - 0x010A5F 04:8A4F: 80        .byte $80, $80, $83, $03, $03, $03, $00, $00, $80, $80, $83, $03, $03, $03, $00, $00   ; 
- D 0 - - - 0x010A6F 04:8A5F: 01        .byte $01, $01, $C1, $C0, $40, $C0, $00, $00, $01, $01, $C1, $C0, $40, $C0, $00, $00   ; 
- D 0 - - - 0x010A7F 04:8A6F: 80        .byte $80, $90, $AA, $2B, $1A, $02, $00, $00, $80, $90, $AA, $2B, $1A, $02, $00, $00   ; 


; bzk garbage?
- - - - - - 0x010A8F 04:8A7F: 01        .byte $01, $09, $45, $4C, $D4, $40, $00, $00, $01, $09, $45, $4C, $D4, $40, $00, $00   ; 
- - - - - - 0x010A9F 04:8A8F: 80        .byte $80, $A8, $91, $20, $19, $02, $00, $00, $80, $A8, $91, $20, $19, $02, $00, $00   ; 
- - - - - - 0x010AAF 04:8A9F: 01        .byte $01, $15, $95, $8C, $84, $40, $00, $00, $01, $15, $95, $8C, $84, $40, $00, $00   ; 



_off010_8AAF_00:    ; reads 0A * 03 bytes (first 3 lines)
tbl_8AAF:   ; reads 5Ah (90) bytes (all 9 lines)
- D 0 - I - 0x010ABF 04:8AAF: 0B        .byte $0B, $0C, $0D, $0E, $0F, $10, $11, $12, $13, $14   ; 
- D 0 - I - 0x010AC9 04:8AB9: 15        .byte $15, $16, $17, $18, $19, $1A, $1B, $1C, $1D, $1E   ; 
- D 0 - I - 0x010AD3 04:8AC3: 1F        .byte $1F, $20, $21, $22, $23, $24, $25, $26, $27, $28   ; 
- D 0 - I - 0x010ADD 04:8ACD: 29        .byte $29, $2A, $2B, $2B, $2C, $2C, $2B, $2B, $2A, $2D   ; 
tbl_8AD7:   ; reads 28h (40) or 32h (50) bytes
- D 0 - I - 0x010AE7 04:8AD7: 53        .byte $53, $0C, $54, $55, $56, $57, $58, $59, $13, $14   ; 
- D 0 - I - 0x010AF1 04:8AE1: 5A        .byte $5A, $16, $17, $18, $19, $1A, $1B, $1C, $1D, $1E   ; 
- D 0 - I - 0x010AFB 04:8AEB: 5B        .byte $5B, $20, $21, $22, $23, $24, $25, $26, $27, $28   ; 
- D 0 - I - 0x010B05 04:8AF5: 5C        .byte $5C, $5D, $5E, $5E, $5F, $5F, $5E, $5E, $5D, $60   ; 
- D 0 - I - 0x010B0F 04:8AFF: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 



tbl_8B09_map_tiles:
- D 0 - I - 0x010B19 04:8B09: 2E        .byte $2E, $2F, $2F, $2F, $2F, $2F, $2F, $2F, $2F, $30   ; 
- D 0 - I - 0x010B23 04:8B13: 31        .byte $31, $C0, $C1, $C2, $C3, $C4, $C5, $C6, $C7, $38   ; 
- D 0 - I - 0x010B2D 04:8B1D: 31        .byte $31, $C8, $C9, $CA, $CB, $CC, $CD, $CE, $CF, $38   ; 
- D 0 - I - 0x010B37 04:8B27: 31        .byte $31, $D0, $D1, $D2, $D3, $D4, $D5, $D6, $D7, $38   ; 
- D 0 - I - 0x010B41 04:8B31: 31        .byte $31, $D8, $D9, $DA, $DB, $DC, $DD, $DE, $DF, $38   ; 
- D 0 - I - 0x010B4B 04:8B3B: 31        .byte $31, $E0, $E1, $E2, $E3, $E4, $E5, $E6, $E7, $38   ; 
- D 0 - I - 0x010B55 04:8B45: 31        .byte $31, $E8, $E9, $EA, $EB, $EC, $ED, $EE, $EF, $38   ; 
- D 0 - I - 0x010B5F 04:8B4F: 31        .byte $31, $F0, $F1, $F2, $F3, $F4, $F5, $F6, $F7, $38   ; 
- D 0 - I - 0x010B69 04:8B59: 31        .byte $31, $F8, $F9, $FA, $FB, $FC, $FD, $FE, $FF, $38   ; 
- D 0 - I - 0x010B73 04:8B63: 51        .byte $51, $2F, $2F, $2F, $2F, $2F, $2F, $2F, $2F, $52   ; 



tbl_8B6D:   ; 64h (100) bytes
- D 0 - - - 0x010B7D 04:8B6D: 2E        .byte $2E   ; 
- D 0 - - - 0x010B7E 04:8B6E: 2F        .byte $2F   ; 
- D 0 - - - 0x010B7F 04:8B6F: 2F        .byte $2F   ; 
- D 0 - - - 0x010B80 04:8B70: 2F        .byte $2F   ; 
- D 0 - - - 0x010B81 04:8B71: 2F        .byte $2F   ; 
- D 0 - - - 0x010B82 04:8B72: 2F        .byte $2F   ; 
- D 0 - - - 0x010B83 04:8B73: 2F        .byte $2F   ; 
- D 0 - - - 0x010B84 04:8B74: 2F        .byte $2F   ; 
- D 0 - - - 0x010B85 04:8B75: 2F        .byte $2F   ; 
- D 0 - - - 0x010B86 04:8B76: 30        .byte $30   ; 
- D 0 - - - 0x010B87 04:8B77: 31        .byte $31   ; 
- D 0 - - - 0x010B88 04:8B78: 2F        .byte $2F   ; 
- D 0 - - - 0x010B89 04:8B79: 32        .byte $32   ; 
- D 0 - - - 0x010B8A 04:8B7A: 33        .byte $33   ; 
- D 0 - - - 0x010B8B 04:8B7B: 34        .byte $34   ; 
- D 0 - - - 0x010B8C 04:8B7C: 35        .byte $35   ; 
- D 0 - - - 0x010B8D 04:8B7D: 36        .byte $36   ; 
- D 0 - - - 0x010B8E 04:8B7E: 37        .byte $37   ; 
- D 0 - - - 0x010B8F 04:8B7F: 2F        .byte $2F   ; 
- D 0 - - - 0x010B90 04:8B80: 38        .byte $38   ; 
- D 0 - - - 0x010B91 04:8B81: 31        .byte $31   ; 
- D 0 - - - 0x010B92 04:8B82: 2F        .byte $2F   ; 
- D 0 - - - 0x010B93 04:8B83: 39        .byte $39   ; 
- D 0 - - - 0x010B94 04:8B84: 3A        .byte $3A   ; 
- D 0 - - - 0x010B95 04:8B85: 3B        .byte $3B   ; 
- D 0 - - - 0x010B96 04:8B86: 3C        .byte $3C   ; 
- D 0 - - - 0x010B97 04:8B87: 3D        .byte $3D   ; 
- D 0 - - - 0x010B98 04:8B88: 3E        .byte $3E   ; 
- D 0 - - - 0x010B99 04:8B89: 2F        .byte $2F   ; 
- D 0 - - - 0x010B9A 04:8B8A: 38        .byte $38   ; 
- D 0 - - - 0x010B9B 04:8B8B: 31        .byte $31   ; 
- D 0 - - - 0x010B9C 04:8B8C: 2F        .byte $2F   ; 
- D 0 - - - 0x010B9D 04:8B8D: 2F        .byte $2F   ; 
- D 0 - - - 0x010B9E 04:8B8E: 2F        .byte $2F   ; 
- D 0 - - - 0x010B9F 04:8B8F: 2F        .byte $2F   ; 
- D 0 - - - 0x010BA0 04:8B90: 2F        .byte $2F   ; 
- D 0 - - - 0x010BA1 04:8B91: 2F        .byte $2F   ; 
- D 0 - - - 0x010BA2 04:8B92: 2F        .byte $2F   ; 
- D 0 - - - 0x010BA3 04:8B93: 2F        .byte $2F   ; 
- D 0 - - - 0x010BA4 04:8B94: 38        .byte $38   ; 
- D 0 - - - 0x010BA5 04:8B95: 31        .byte $31   ; 
- D 0 - - - 0x010BA6 04:8B96: 2F        .byte $2F   ; 
- D 0 - - - 0x010BA7 04:8B97: 2F        .byte $2F   ; 
- D 0 - - - 0x010BA8 04:8B98: 2F        .byte $2F   ; 
- D 0 - - - 0x010BA9 04:8B99: 2F        .byte $2F   ; 
- D 0 - - - 0x010BAA 04:8B9A: 2F        .byte $2F   ; 
- D 0 - - - 0x010BAB 04:8B9B: 2F        .byte $2F   ; 
- D 0 - - - 0x010BAC 04:8B9C: 2F        .byte $2F   ; 
- D 0 - - - 0x010BAD 04:8B9D: 2F        .byte $2F   ; 
- D 0 - - - 0x010BAE 04:8B9E: 38        .byte $38   ; 
- D 0 - - - 0x010BAF 04:8B9F: 31        .byte $31   ; 
- D 0 - - - 0x010BB0 04:8BA0: 3F        .byte $3F   ; 
- D 0 - - - 0x010BB1 04:8BA1: 40        .byte $40   ; 
- D 0 - - - 0x010BB2 04:8BA2: 41        .byte $41   ; 
- D 0 - - - 0x010BB3 04:8BA3: 42        .byte $42   ; 
- D 0 - - - 0x010BB4 04:8BA4: 43        .byte $43   ; 
- D 0 - - - 0x010BB5 04:8BA5: 44        .byte $44   ; 
- D 0 - - - 0x010BB6 04:8BA6: 45        .byte $45   ; 
- D 0 - - - 0x010BB7 04:8BA7: 46        .byte $46   ; 
- D 0 - - - 0x010BB8 04:8BA8: 47        .byte $47   ; 
- D 0 - - - 0x010BB9 04:8BA9: 31        .byte $31   ; 
- D 0 - - - 0x010BBA 04:8BAA: 48        .byte $48   ; 
- D 0 - - - 0x010BBB 04:8BAB: 49        .byte $49   ; 
- D 0 - - - 0x010BBC 04:8BAC: 4A        .byte $4A   ; 
- D 0 - - - 0x010BBD 04:8BAD: 4B        .byte $4B   ; 
- D 0 - - - 0x010BBE 04:8BAE: 4C        .byte $4C   ; 
- D 0 - - - 0x010BBF 04:8BAF: 4D        .byte $4D   ; 
- D 0 - - - 0x010BC0 04:8BB0: 4E        .byte $4E   ; 
- D 0 - - - 0x010BC1 04:8BB1: 48        .byte $48   ; 
- D 0 - - - 0x010BC2 04:8BB2: 38        .byte $38   ; 
- D 0 - - - 0x010BC3 04:8BB3: 31        .byte $31   ; 
- D 0 - - - 0x010BC4 04:8BB4: 2F        .byte $2F   ; 
- D 0 - - - 0x010BC5 04:8BB5: 2F        .byte $2F   ; 
- D 0 - - - 0x010BC6 04:8BB6: 2F        .byte $2F   ; 
- D 0 - - - 0x010BC7 04:8BB7: 4F        .byte $4F   ; 
- D 0 - - - 0x010BC8 04:8BB8: 2F        .byte $2F   ; 
- D 0 - - - 0x010BC9 04:8BB9: 2F        .byte $2F   ; 
- D 0 - - - 0x010BCA 04:8BBA: 50        .byte $50   ; 
- D 0 - - - 0x010BCB 04:8BBB: 2F        .byte $2F   ; 
- D 0 - - - 0x010BCC 04:8BBC: 38        .byte $38   ; 
- D 0 - - - 0x010BCD 04:8BBD: 31        .byte $31   ; 
- D 0 - - - 0x010BCE 04:8BBE: 2F        .byte $2F   ; 
- D 0 - - - 0x010BCF 04:8BBF: 2F        .byte $2F   ; 
- D 0 - - - 0x010BD0 04:8BC0: 2F        .byte $2F   ; 
- D 0 - - - 0x010BD1 04:8BC1: 2F        .byte $2F   ; 
- D 0 - - - 0x010BD2 04:8BC2: 2F        .byte $2F   ; 
- D 0 - - - 0x010BD3 04:8BC3: 2F        .byte $2F   ; 
- D 0 - - - 0x010BD4 04:8BC4: 2F        .byte $2F   ; 
- D 0 - - - 0x010BD5 04:8BC5: 2F        .byte $2F   ; 
- D 0 - - - 0x010BD6 04:8BC6: 38        .byte $38   ; 
- D 0 - - - 0x010BD7 04:8BC7: 51        .byte $51   ; 
- D 0 - - - 0x010BD8 04:8BC8: 2F        .byte $2F   ; 
- D 0 - - - 0x010BD9 04:8BC9: 2F        .byte $2F   ; 
- D 0 - - - 0x010BDA 04:8BCA: 2F        .byte $2F   ; 
- D 0 - - - 0x010BDB 04:8BCB: 2F        .byte $2F   ; 
- D 0 - - - 0x010BDC 04:8BCC: 2F        .byte $2F   ; 
- D 0 - - - 0x010BDD 04:8BCD: 2F        .byte $2F   ; 
- D 0 - - - 0x010BDE 04:8BCE: 2F        .byte $2F   ; 
- D 0 - - - 0x010BDF 04:8BCF: 2F        .byte $2F   ; 
- D 0 - - - 0x010BE0 04:8BD0: 52        .byte $52   ; 



_off010_8BD1_12:
_off010_8BD1_13:
_off010_8BD1_14:
_off010_8BD1_15:
- D 0 - I - 0x010BE1 04:8BD1: 65        .byte $65, $6B, $6C   ; 
- D 0 - I - 0x010BE4 04:8BD4: 65        .byte $65, $6D, $6E   ; 
- D 0 - I - 0x010BE7 04:8BD7: 6F        .byte $6F, $70, $65   ; 


; bzk garbage
- - - - - - 0x010BEA 04:8BDA: 65        .byte $65, $71, $65   ; 



_off010_8BDD_01:
- D 0 - I - 0x010BED 04:8BDD: 61        .byte $61, $62, $62, $62, $62, $62, $62, $62, $62, $62, $62, $63   ; 
- D 0 - I - 0x010BF9 04:8BE9: 64        .byte $64, $65, $65, $65, $66, $67, $68, $69, $65, $65, $65, $6A   ; 
- D 0 - I - 0x010C05 04:8BF5: 64        .byte $64, $65, $65, $65, $65, $65, $65, $65, $65, $65, $65, $6A   ; 
- D 0 - I - 0x010C11 04:8C01: 64        .byte $64, $65, $65, $65, $65, $65, $65, $65, $65, $65, $65, $6A   ; 
- D 0 - I - 0x010C1D 04:8C0D: 64        .byte $64, $65, $65, $65, $65, $65, $65, $65, $65, $65, $65, $6A   ; 
- D 0 - I - 0x010C29 04:8C19: 64        .byte $64, $65, $65, $65, $65, $65, $65, $65, $65, $65, $65, $6A   ; 
- D 0 - I - 0x010C35 04:8C25: 64        .byte $64, $65, $65, $65, $65, $65, $65, $65, $65, $65, $65, $6A   ; 
- D 0 - I - 0x010C41 04:8C31: 64        .byte $64, $65, $65, $65, $65, $65, $65, $65, $65, $65, $65, $6A   ; 
- D 0 - I - 0x010C4D 04:8C3D: 64        .byte $64, $65, $65, $65, $65, $65, $65, $65, $65, $65, $65, $6A   ; 
- D 0 - I - 0x010C59 04:8C49: 64        .byte $64, $65, $65, $65, $65, $65, $65, $65, $65, $65, $65, $6A   ; 
- D 0 - I - 0x010C65 04:8C55: 64        .byte $64, $65, $65, $65, $65, $65, $65, $65, $65, $65, $65, $6A   ; 
- D 0 - I - 0x010C71 04:8C61: 72        .byte $72, $73, $73, $73, $73, $73, $73, $73, $73, $73, $73, $74   ; 
- D 0 - I - 0x010C7D 04:8C6D: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x010C89 04:8C79: 61        .byte $61, $62, $62, $62, $62, $62, $62, $62, $62, $62, $62, $63   ; 
- D 0 - I - 0x010C95 04:8C85: 64        .byte $64, $65, $65, $75, $76, $77, $78, $79, $69, $65, $65, $6A   ; 
- D 0 - I - 0x010CA1 04:8C91: 64        .byte $64, $65, $65, $7A, $6C, $65, $65, $65, $7A, $6C, $65, $6A   ; 
- D 0 - I - 0x010CAD 04:8C9D: 64        .byte $64, $65, $7B, $7C, $7D, $65, $65, $7B, $7C, $7D, $65, $6A   ; 
- D 0 - I - 0x010CB9 04:8CA9: 64        .byte $64, $65, $7E, $7F, $80, $65, $65, $7E, $7F, $80, $65, $6A   ; 
- D 0 - I - 0x010CC5 04:8CB5: 64        .byte $64, $65, $65, $65, $65, $65, $65, $65, $65, $65, $65, $6A   ; 
- D 0 - I - 0x010CD1 04:8CC1: 64        .byte $64, $65, $65, $7A, $6C, $65, $65, $65, $7A, $6C, $65, $6A   ; 
- D 0 - I - 0x010CDD 04:8CCD: 64        .byte $64, $65, $7B, $7C, $7D, $65, $65, $7B, $7C, $7D, $65, $6A   ; 
- D 0 - I - 0x010CE9 04:8CD9: 64        .byte $64, $65, $7E, $7F, $80, $65, $65, $7E, $7F, $80, $65, $6A   ; 
- D 0 - I - 0x010CF5 04:8CE5: 64        .byte $64, $65, $65, $65, $65, $65, $65, $65, $65, $65, $65, $6A   ; 
- D 0 - I - 0x010D01 04:8CF1: 64        .byte $64, $65, $65, $65, $65, $65, $65, $65, $65, $65, $65, $6A   ; 
- D 0 - I - 0x010D0D 04:8CFD: 72        .byte $72, $73, $73, $73, $73, $73, $73, $73, $73, $73, $73, $74   ; 



_off010_8D09_02:
- D 0 - I - 0x010D19 04:8D09: 61        .byte $61, $62, $62, $62, $62, $62, $62, $62, $62, $63   ; 
- D 0 - I - 0x010D23 04:8D13: 64        .byte $64, $65, $65, $65, $65, $65, $65, $65, $65, $6A   ; 
- D 0 - I - 0x010D2D 04:8D1D: 64        .byte $64, $65, $65, $65, $65, $65, $65, $65, $65, $6A   ; 
- D 0 - I - 0x010D37 04:8D27: 64        .byte $64, $65, $65, $65, $65, $65, $65, $65, $65, $6A   ; 
- D 0 - I - 0x010D41 04:8D31: 64        .byte $64, $65, $65, $65, $65, $65, $65, $65, $65, $6A   ; 
- D 0 - I - 0x010D4B 04:8D3B: 72        .byte $72, $73, $73, $73, $73, $73, $73, $73, $73, $74   ; 



_off010_8D45_0A:
_off010_8D45_0B:
_off010_8D45_0C:
_off010_8D45_0D:
_off010_8D45_0E:
_off010_8D45_0F:
_off010_8D45_10:
_off010_8D45_11:
- D 0 - I - 0x010D55 04:8D45: 81        .byte $81, $82   ; 
- D 0 - I - 0x010D57 04:8D47: 83        .byte $83, $84   ; 



_off010_8D49_03:
- D 0 - I - 0x010D59 04:8D49: 85        .byte $85, $86   ; 
- D 0 - I - 0x010D5B 04:8D4B: 87        .byte $87, $88   ; 
- D 0 - I - 0x010D5D 04:8D4D: 87        .byte $87, $89   ; 
- D 0 - I - 0x010D5F 04:8D4F: 8A        .byte $8A, $8B   ; 
- D 0 - I - 0x010D61 04:8D51: 8C        .byte $8C, $8D   ; 
- D 0 - I - 0x010D63 04:8D53: 8E        .byte $8E, $8F   ; 
- D 0 - I - 0x010D65 04:8D55: 90        .byte $90, $91   ; 
- D 0 - I - 0x010D67 04:8D57: 92        .byte $92, $93   ; 
- D 0 - I - 0x010D69 04:8D59: 8C        .byte $8C, $8D   ; 
- D 0 - I - 0x010D6B 04:8D5B: 8C        .byte $8C, $8D   ; 
- D 0 - I - 0x010D6D 04:8D5D: 8E        .byte $8E, $8F   ; 
- D 0 - I - 0x010D6F 04:8D5F: 94        .byte $94, $95   ; 
- D 0 - I - 0x010D71 04:8D61: 96        .byte $96, $97   ; 
- D 0 - I - 0x010D73 04:8D63: 92        .byte $92, $93   ; 
- D 0 - I - 0x010D75 04:8D65: 8C        .byte $8C, $8D   ; 
- D 0 - I - 0x010D77 04:8D67: 8C        .byte $8C, $8D   ; 
- D 0 - I - 0x010D79 04:8D69: 8E        .byte $8E, $8F   ; 
- D 0 - I - 0x010D7B 04:8D6B: 90        .byte $90, $91   ; 
- D 0 - I - 0x010D7D 04:8D6D: 92        .byte $92, $93   ; 
- D 0 - I - 0x010D7F 04:8D6F: 8C        .byte $8C, $8D   ; 
- D 0 - I - 0x010D81 04:8D71: 8C        .byte $8C, $8D   ; 
- D 0 - I - 0x010D83 04:8D73: 98        .byte $98, $99   ; 
- D 0 - I - 0x010D85 04:8D75: 87        .byte $87, $89   ; 
- D 0 - I - 0x010D87 04:8D77: 87        .byte $87, $89   ; 
- D 0 - I - 0x010D89 04:8D79: 9A        .byte $9A, $9B   ; 



_off010_8D7B_04:
- D 0 - I - 0x010D8B 04:8D7B: 9C        .byte $9C, $9D   ; 
- D 0 - I - 0x010D8D 04:8D7D: 9E        .byte $9E, $9F   ; 
- D 0 - I - 0x010D8F 04:8D7F: A0        .byte $A0, $A1   ; 
- D 0 - I - 0x010D91 04:8D81: A2        .byte $A2, $A3   ; 
- D 0 - I - 0x010D93 04:8D83: A4        .byte $A4, $A5   ; 
- D 0 - I - 0x010D95 04:8D85: A6        .byte $A6, $A7   ; 



_off010_8D87_05:
- D 0 - I - 0x010D97 04:8D87: A4        .byte $A4, $A5   ; 
- D 0 - I - 0x010D99 04:8D89: A6        .byte $A6, $A7   ; 
- D 0 - I - 0x010D9B 04:8D8B: A8        .byte $A8, $A9   ; 
- D 0 - I - 0x010D9D 04:8D8D: AA        .byte $AA, $AB   ; 
- D 0 - I - 0x010D9F 04:8D8F: A4        .byte $A4, $A5   ; 
- D 0 - I - 0x010DA1 04:8D91: AC        .byte $AC, $AD   ; 



_off010_8D93_06:
- D 0 - I - 0x010DA3 04:8D93: A4        .byte $A4, $A5   ; 
- D 0 - I - 0x010DA5 04:8D95: AC        .byte $AC, $AD   ; 
- D 0 - I - 0x010DA7 04:8D97: AE        .byte $AE, $AF   ; 
- D 0 - I - 0x010DA9 04:8D99: B0        .byte $B0, $B1   ; 
- D 0 - I - 0x010DAB 04:8D9B: B2        .byte $B2, $B3   ; 
- D 0 - I - 0x010DAD 04:8D9D: B4        .byte $B4, $B5   ; 



_off010_8D9F_07:
- D 0 - I - 0x010DAF 04:8D9F: B6        .byte $B6, $B7   ; 
- D 0 - I - 0x010DB1 04:8DA1: B4        .byte $B4, $B5   ; 
- D 0 - I - 0x010DB3 04:8DA3: A4        .byte $A4, $A5   ; 
- D 0 - I - 0x010DB5 04:8DA5: AC        .byte $AC, $AD   ; 
- D 0 - I - 0x010DB7 04:8DA7: A6        .byte $A6, $A7   ; 
- D 0 - I - 0x010DB9 04:8DA9: A8        .byte $A8, $A9   ; 



_off010_8DAB_08:
- D 0 - I - 0x010DBB 04:8DAB: B8        .byte $B8, $B9   ; 
- D 0 - I - 0x010DBD 04:8DAD: BA        .byte $BA, $BB   ; 
- D 0 - I - 0x010DBF 04:8DAF: AA        .byte $AA, $AB   ; 
- D 0 - I - 0x010DC1 04:8DB1: A4        .byte $A4, $A5   ; 
- D 0 - I - 0x010DC3 04:8DB3: AC        .byte $AC, $AD   ; 
- D 0 - I - 0x010DC5 04:8DB5: BC        .byte $BC, $BD   ; 



_off010_8DB7_09:
- D 0 - I - 0x010DC7 04:8DB7: BE        .byte $BE, $BF   ; 
- D 0 - I - 0x010DC9 04:8DB9: 9E        .byte $9E, $9F   ; 
- D 0 - I - 0x010DCB 04:8DBB: A0        .byte $A0, $A1   ; 
- D 0 - I - 0x010DCD 04:8DBD: A2        .byte $A2, $A3   ; 
- D 0 - I - 0x010DCF 04:8DBF: 00        .byte $00, $00   ; 
- D 0 - I - 0x010DD1 04:8DC1: 00        .byte $00, $00   ; 



tbl_8DC3:
    .incbin "incbin/chr/02___8DC3_99C2.chr"



sub_99C3:
ofs_0x0119D3_18:
; tiles for numbers and alphabet
C - - - - - 0x0119D3 04:99C3: A9 0C     LDA #< tbl_9A0C
C - - - - - 0x0119D5 04:99C5: 85 22     STA ram_0022
C - - - - - 0x0119D7 04:99C7: A9 9A     LDA #> tbl_9A0C
C - - - - - 0x0119D9 04:99C9: 85 23     STA ram_0023
C - - - - - 0x0119DB 04:99CB: A2 48     LDX #$48    ; bzk bug, should be 47
C - - - - - 0x0119DD 04:99CD: 4C F1 99  JMP loc_99F1_write_chr_to_ppu



ofs_0x0119E0_16:
; tiles for SOLSTICE logo
C - - - - - 0x0119E0 04:99D0: A9 7C     LDA #< tbl_9E7C
C - - - - - 0x0119E2 04:99D2: 85 22     STA ram_0022
C - - - - - 0x0119E4 04:99D4: A9 9E     LDA #> tbl_9E7C
C - - - - - 0x0119E6 04:99D6: 85 23     STA ram_0023
C - - - - - 0x0119E8 04:99D8: A2 70     LDX #$70    ; bzk bug, should be 6F
C - - - - - 0x0119EA 04:99DA: 4C F1 99  JMP loc_99F1_write_chr_to_ppu



ofs_0x0119ED_17:
; bzk bug, this routine probably should not even exist, or it needs to be corrected
; currently it reads tiles up to B58C because of X = 00,
; and also there aren't any tiles at A57C
C - - - - - 0x0119ED 04:99DD: A9 7C     LDA #< tbl_A57C
C - - - - - 0x0119EF 04:99DF: 85 22     STA ram_0022
C - - - - - 0x0119F1 04:99E1: A9 A5     LDA #> tbl_A57C
C - - - - - 0x0119F3 04:99E3: 85 23     STA ram_0023
C - - - - - 0x0119F5 04:99E5: A0 10     LDY #> $1000
C - - - - - 0x0119F7 04:99E7: 8C 06 20  STY $2006
C - - - - - 0x0119FA 04:99EA: A0 00     LDY #< $1000
C - - - - - 0x0119FC 04:99EC: 8C 06 20  STY $2006
C - - - - - 0x0119FF 04:99EF: A2 00     LDX #$00
loc_99F1_write_chr_to_ppu:
sub_99F1_write_chr_to_ppu:
bra_99F1_loop:
C D 0 - - - 0x011A01 04:99F1: A0 00     LDY #$00
bra_99F3_loop:
C - - - - - 0x011A03 04:99F3: B1 22     LDA (ram_0022),Y
C - - - - - 0x011A05 04:99F5: 8D 07 20  STA $2007
C - - - - - 0x011A08 04:99F8: C8        INY
C - - - - - 0x011A09 04:99F9: C0 10     CPY #$10
C - - - - - 0x011A0B 04:99FB: D0 F6     BNE bra_99F3_loop
C - - - - - 0x011A0D 04:99FD: A5 22     LDA ram_0022
C - - - - - 0x011A0F 04:99FF: 18        CLC
C - - - - - 0x011A10 04:9A00: 69 10     ADC #$10
C - - - - - 0x011A12 04:9A02: 85 22     STA ram_0022
C - - - - - 0x011A14 04:9A04: 90 02     BCC bra_9A08_not_overflow
C - - - - - 0x011A16 04:9A06: E6 23     INC ram_0023
bra_9A08_not_overflow:
C - - - - - 0x011A18 04:9A08: CA        DEX
C - - - - - 0x011A19 04:9A09: D0 E6     BNE bra_99F1_loop
C - - - - - 0x011A1B 04:9A0B: 60        RTS



tbl_9A0C:
    .incbin "incbin/chr/02___9A0C_9E7B.chr"



tbl_9E7C:
    .incbin "incbin/chr/02___9E7C_A57B.chr"



tbl_A57C:
ofs_0x01258C_19:
C D 1 - I - 0x01258C 04:A57C: 48        PHA
C D 1 - I - 0x01258D 04:A57D: A0 00     LDY #$00
C D 1 - I - 0x01258F 04:A57F: 8C 06 20  STY $2006
C D 1 - I - 0x012592 04:A582: 8C 06 20  STY $2006
C D 1 - I - 0x012595 04:A585: 20 C3 99  JSR sub_99C3
C D 1 - I - 0x012598 04:A588: A9 02     LDA #> $0250
C D 1 - I - 0x01259A 04:A58A: 8D 06 20  STA $2006
C D 1 - I - 0x01259D 04:A58D: A9 50     LDA #< $0250
C D 1 - I - 0x01259F 04:A58F: 8D 06 20  STA $2006
C D 1 - I - 0x0125A2 04:A592: A9 E4     LDA #< tbl_0x01E6F4_key_icon
C D 1 - I - 0x0125A4 04:A594: 85 22     STA ram_0022
C D 1 - I - 0x0125A6 04:A596: A9 E6     LDA #> tbl_0x01E6F4_key_icon
C D 1 - I - 0x0125A8 04:A598: 85 23     STA ram_0023
C D 1 - I - 0x0125AA 04:A59A: 68        PLA
C D 1 - I - 0x0125AB 04:A59B: 48        PHA
C D 1 - I - 0x0125AC 04:A59C: C9 15     CMP #$15
C D 1 - I - 0x0125AE 04:A59E: 90 08     BCC bra_A5A8
C D 1 - I - 0x0125B0 04:A5A0: A9 44     LDA #< tbl_0x01F154_credit_icon
C D 1 - I - 0x0125B2 04:A5A2: 85 22     STA ram_0022
C D 1 - I - 0x0125B4 04:A5A4: A9 F1     LDA #> tbl_0x01F154_credit_icon
C D 1 - I - 0x0125B6 04:A5A6: 85 23     STA ram_0023
bra_A5A8:
C D 1 - I - 0x0125B8 04:A5A8: A2 DB     LDX #$DB
bra_A5AA_loop:
C D 1 - I - 0x0125BA 04:A5AA: A0 00     LDY #$00
bra_A5AC_loop:
C D 1 - I - 0x0125BC 04:A5AC: A9 03     LDA #con_prg_bank + $03
C D 1 - I - 0x0125BE 04:A5AE: 20 21 FF  JSR sub_inc_FF21
C D 1 - I - 0x0125C1 04:A5B1: 8D 07 20  STA $2007
C D 1 - I - 0x0125C4 04:A5B4: C8        INY
C D 1 - I - 0x0125C5 04:A5B5: C0 10     CPY #$10
C D 1 - I - 0x0125C7 04:A5B7: D0 F3     BNE bra_A5AC_loop
C D 1 - I - 0x0125C9 04:A5B9: A5 22     LDA ram_0022
C D 1 - I - 0x0125CB 04:A5BB: 18        CLC
C D 1 - I - 0x0125CC 04:A5BC: 69 10     ADC #$10
C D 1 - I - 0x0125CE 04:A5BE: 85 22     STA ram_0022
C D 1 - I - 0x0125D0 04:A5C0: 90 02     BCC bra_A5C4_not_overflow
C D 1 - I - 0x0125D2 04:A5C2: E6 23     INC ram_0023
bra_A5C4_not_overflow:
C D 1 - I - 0x0125D4 04:A5C4: CA        DEX
C D 1 - I - 0x0125D5 04:A5C5: D0 E3     BNE bra_A5AA_loop
C D 1 - I - 0x0125D7 04:A5C7: 68        PLA
C D 1 - I - 0x0125D8 04:A5C8: 48        PHA
C D 1 - I - 0x0125D9 04:A5C9: 18        CLC
C D 1 - I - 0x0125DA 04:A5CA: 69 16     ADC #$16
C D 1 - I - 0x0125DC 04:A5CC: AA        TAX
C D 1 - I - 0x0125DD 04:A5CD: 20 04 84  JSR sub_8404
C D 1 - I - 0x0125E0 04:A5D0: 68        PLA
C D 1 - I - 0x0125E1 04:A5D1: 48        PHA
C D 1 - I - 0x0125E2 04:A5D2: AA        TAX
C D 1 - I - 0x0125E3 04:A5D3: 20 96 A8  JSR sub_A896_write_item_bg_attributes_and_palette
C D 1 - I - 0x0125E6 04:A5D6: 68        PLA
C D 1 - I - 0x0125E7 04:A5D7: AA        TAX
C D 1 - I - 0x0125E8 04:A5D8: BD 8A AA  LDA tbl_AA8A_item_pickup_text_lo,X
C D 1 - I - 0x0125EB 04:A5DB: 85 22     STA ram_0022
C D 1 - I - 0x0125ED 04:A5DD: BD BD AA  LDA tbl_AABD_item_pickup_text_hi,X
C D 1 - I - 0x0125F0 04:A5E0: 85 23     STA ram_0023
C D 1 - I - 0x0125F2 04:A5E2: A9 00     LDA #$00
loc_A5E4_write_to_ppu:
sub_A5E4_write_to_ppu:
C D 1 - I - 0x0125F4 04:A5E4: 85 0D     STA ram_000D
C D 1 - I - 0x0125F6 04:A5E6: A0 00     LDY #$00
bra_A5E8_loop:
loc_A5E8_loop:
C D 1 - I - 0x0125F8 04:A5E8: B1 22     LDA (ram_0022),Y
C D 1 - I - 0x0125FA 04:A5EA: C9 FF     CMP #$FF
C D 1 - I - 0x0125FC 04:A5EC: F0 33     BEQ bra_A621_RTS
C D 1 - I - 0x0125FE 04:A5EE: C9 FD     CMP #$FD
C D 1 - I - 0x012600 04:A5F0: D0 11     BNE bra_A603
C D 1 - I - 0x012602 04:A5F2: C8        INY
C D 1 - I - 0x012603 04:A5F3: A2 40     LDX #$40
bra_A5F5_loop:
C D 1 - I - 0x012605 04:A5F5: B1 22     LDA (ram_0022),Y
C D 1 - I - 0x012607 04:A5F7: 8D 07 20  STA $2007
C D 1 - I - 0x01260A 04:A5FA: C8        INY
C D 1 - I - 0x01260B 04:A5FB: D0 02     BNE bra_A5FF
- D 1 - I - 0x01260D 04:A5FD: E6 23     INC ram_0023
bra_A5FF:
C D 1 - I - 0x01260F 04:A5FF: CA        DEX
C D 1 - I - 0x012610 04:A600: D0 F3     BNE bra_A5F5_loop
C D 1 - I - 0x012612 04:A602: 60        RTS
bra_A603:
C D 1 - I - 0x012613 04:A603: C9 FE     CMP #$FE
C D 1 - I - 0x012615 04:A605: D0 11     BNE bra_A618
C D 1 - I - 0x012617 04:A607: C8        INY
C D 1 - I - 0x012618 04:A608: B1 22     LDA (ram_0022),Y
C D 1 - I - 0x01261A 04:A60A: C8        INY
C D 1 - I - 0x01261B 04:A60B: AA        TAX
C D 1 - I - 0x01261C 04:A60C: B1 22     LDA (ram_0022),Y
C D 1 - I - 0x01261E 04:A60E: C8        INY
C D 1 - I - 0x01261F 04:A60F: 8D 06 20  STA $2006
C D 1 - I - 0x012622 04:A612: 8E 06 20  STX $2006
C D 1 - I - 0x012625 04:A615: 4C E8 A5  JMP loc_A5E8_loop
bra_A618:
C D 1 - I - 0x012628 04:A618: 18        CLC
C D 1 - I - 0x012629 04:A619: 65 0D     ADC ram_000D
C D 1 - I - 0x01262B 04:A61B: 8D 07 20  STA $2007
C D 1 - I - 0x01262E 04:A61E: C8        INY
C D 1 - I - 0x01262F 04:A61F: D0 C7     BNE bra_A5E8_loop
bra_A621_RTS:
C D 1 - I - 0x012631 04:A621: 60        RTS

; title screen credits

ofs_0x012632_1F:
C D 1 - I - 0x012632 04:A622: AE A7 07  LDX ram_07A7
C D 1 - I - 0x012635 04:A625: BD 39 A6  LDA tbl_A639_hi,X
C D 1 - I - 0x012638 04:A628: 85 23     STA ram_0023
C D 1 - I - 0x01263A 04:A62A: BD 35 A6  LDA tbl_A635_lo,X
C D 1 - I - 0x01263D 04:A62D: 85 22     STA ram_0022
C D 1 - I - 0x01263F 04:A62F: A9 70     LDA #$70
C D 1 - I - 0x012641 04:A631: 20 E4 A5  JSR sub_A5E4_write_to_ppu
C D 1 - I - 0x012644 04:A634: 60        RTS

tbl_A635_lo:
- D 1 - I - 0x012645 04:A635: 3D        .byte < _off012_A63D_00   ; removed page, unused
- D 1 - I - 0x012646 04:A636: 3D        .byte < _off012_A63D_01   ; page 2
- D 1 - I - 0x012647 04:A637: E8        .byte < _off012_A6E8_02   ; page 1
- D 1 - I - 0x012648 04:A638: 86        .byte < _off012_A786_03   ; removed page, unused

tbl_A639_hi:
- D 1 - I - 0x012649 04:A639: A6        .byte > _off012_A63D_00   ; see above
- D 1 - I - 0x01264A 04:A63A: A6        .byte > _off012_A63D_01   ; 
- D 1 - I - 0x01264B 04:A63B: A6        .byte > _off012_A6E8_02   ; 
- D 1 - I - 0x01264C 04:A63C: A7        .byte > _off012_A786_03   ; 

; title credits text page 2

_off012_A63D_00:
; removed page
_off012_A63D_01:
- D 1 - I - 0x01264D 04:A63D: FE        .byte $FE   ; line break
- D 1 - I - 0x01264E 04:A63E: C4 21     .word $21C4    ; position
; Programmed by Mike Webb
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 1 - I - 0x012650 04:A640: 34        .byte                     $34, $1C, $19, $11, $1C, $0B, $17, $17, $0F, $0E, $00, $0C   ; 
- D 1 - I - 0x012658 04:A648: 0F        .byte $23, $00, $31, $13, $15, $0F, $00, $3B, $0F, $0C, $0C   ; 

- D 1 - I - 0x012667 04:A657: FE        .byte $FE   ; line break
- D 1 - I - 0x012668 04:A658: 04 22     .word $2204    ; position
; Graphics by Mark Wilson
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 1 - I - 0x01266A 04:A65A: 2B        .byte                     $2B, $1C, $0B, $1A, $12, $13, $0D, $1D, $00, $0C, $23, $00   ; 
- D 1 - I - 0x012672 04:A662: 00        .byte $31, $0B, $1C, $15, $00, $3B, $13, $16, $1D, $19, $18   ; 

- D 1 - I - 0x012681 04:A671: FE        .byte $FE   ; line break
- D 1 - I - 0x012682 04:A672: 44 22     .word $2244    ; position
; Music by Timothy Follin
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 1 - I - 0x012684 04:A674: 31        .byte                     $31, $1F, $1D, $13, $0D, $00, $0C, $23, $00, $38, $13, $17   ; 
- D 1 - I - 0x01268C 04:A67C: 00        .byte $19, $1E, $12, $23, $00, $2A, $19, $16, $16, $13, $18   ; 

- D 1 - I - 0x01269B 04:A68B: FE        .byte $FE   ; line break 
- D 1 - I - 0x01269C 04:A68C: A7 22     .word $22A7    ; position
; Game designed by
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 1 - I - 0x01269E 04:A68E: 2B        .byte                                    $2B, $0B, $17, $0F, $00, $0E, $0F, $1D, $13   ; 
- D 1 - I - 0x0126A6 04:A696: 13        .byte $11, $18, $0F, $0E, $00, $0C, $23   ; 

- D 1 - I - 0x0126AE 04:A69E: FE        .byte $FE   ; line break 
- D 1 - I - 0x0126AF 04:A69F: C6 22     .word $22C6    ; position
; M.Webb and M.Wilson
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 1 - I - 0x0126B1 04:A6A1: 31        .byte                               $31, $40, $3B, $0F, $0C, $0C, $00, $0B, $18, $0E   ; 
- D 1 - I - 0x0126B9 04:A6A9: 18        .byte $00, $31, $40, $3B, $13, $16, $1D, $19, $18   ; 

; Attribute Table
- D 1 - I - 0x0126C4 04:A6B4: FE        .byte $FE   ; line break 
- D 1 - I - 0x0126C5 04:A6B5: D0 23     .word $23D0 ; position
- D 1 - I - 0x0126C7 04:A6B7: FD        .byte $FD   ; 
- D 1 - I - 0x0126C8 04:A6B8: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x0126D0 04:A6C0: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55   ; 
- D 1 - I - 0x0126D8 04:A6C8: FA        .byte $FA, $FA, $FA, $FA, $FA, $FA, $FA, $FA   ; 
- D 1 - I - 0x0126E0 04:A6D0: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55   ; 
- D 1 - I - 0x0126E8 04:A6D8: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x0126F0 04:A6E0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 

; title credits page 1

_off012_A6E8_02:
- D 1 - I - 0x0126F8 04:A6E8: FE        .byte $FE   ; next
- D 1 - I - 0x0126F9 04:A6E9: C6 21     .word $21C6 ; position
; CSG Imagesoft Inc.
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 1 - I - 0x0126FB 04:A6EB: 27        .byte                               $27, $37, $2B, $00, $2D, $17, $0B, $11, $0F, $1D   ; 
- D 1 - I - 0x012703 04:A6F3: 0F        .byte $19, $10, $1E, $00, $2D, $18, $0D, $40   ; 

- D 1 - I - 0x01270D 04:A6FD: FE        .byte $FE   ; next
- D 1 - I - 0x01270E 04:A6FE: 28 22     .word $2228    ; pos
; Copyright 1989
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 1 - I - 0x012710 04:A700: 27        .byte                                         $27, $19, $1A, $23, $1C, $13, $11, $12   ; 
- D 1 - I - 0x012718 04:A708: 1E        .byte $1E, $00, $02, $0A, $09, $0A   ; 

- D 1 - I - 0x01271E 04:A70E: FE        .byte $FE   ; next
- D 1 - I - 0x01271F 04:A70F: 44 22     .word $2244    ; pos
; Software Creations Ltd.
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 1 - I - 0x012721 04:A711: 37        .byte                     $37, $19, $10, $1E, $21, $0B, $1C, $0F, $00, $27, $1C, $0F   ; 
- D 1 - I - 0x012729 04:A719: 00        .byte $0B, $1E, $13, $19, $18, $1D, $00, $30, $1E, $0E, $40   ; 

- D 1 - I - 0x012738 04:A728: FE        .byte $FE   ; next
- D 1 - I - 0x012739 04:A729: A9 22     .word $22A9    ; pos
; Licensed  by
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 1 - I - 0x01273B 04:A72B: 30        .byte                                              $30, $13, $0D, $0F, $18, $1D, $0F   ; 
- D 1 - I - 0x012743 04:A733: 00        .byte $0E, $00, $00, $0C, $23   ; 

- D 1 - I - 0x012747 04:A737: FE        .byte $FE   ; next
- D 1 - I - 0x012748 04:A738: C4 22     .word $22C4    ; pos
; Nintendo of America Inc.
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 1 - I - 0x01274A 04:A73A: 32        .byte                     $32, $13, $18, $1E, $0F, $18, $0E, $19, $00, $19, $10, $00   ; 
- D 1 - I - 0x012752 04:A742: 00        .byte $25, $17, $0F, $1C, $13, $0D, $0B, $00, $2D, $18, $0D, $40   ; 

; Attribute Table
- D 1 - I - 0x012762 04:A752: FE        .byte $FE   ; next
- D 1 - I - 0x012763 04:A753: D0 23     .word $23D0    ; pos
- D 1 - I - 0x012765 04:A755: FD        .byte $FD   ; 
- D 1 - I - 0x012766 04:A756: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x01276E 04:A75E: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55   ; 
- D 1 - I - 0x012776 04:A766: AA        .byte $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA   ; 
- D 1 - I - 0x01277E 04:A76E: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x012786 04:A776: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x01278E 04:A77E: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 



_off012_A786_03:    ; bzk bug   
; unused, removed third page
; becuase of this sometimes on some emulators there is 1 frame odd flash

ofs_0x012796_1C:
C D 1 - I - 0x012796 04:A786: A9 D5     LDA #< tbl_A7D5
C D 1 - I - 0x012798 04:A788: 85 22     STA ram_0022
C D 1 - I - 0x01279A 04:A78A: A9 A7     LDA #> tbl_A7D5
C D 1 - I - 0x01279C 04:A78C: 85 23     STA ram_0023
C D 1 - I - 0x01279E 04:A78E: A9 00     LDA #$00
C D 1 - I - 0x0127A0 04:A790: 20 E4 A5  JSR sub_A5E4_write_to_ppu
C D 1 - I - 0x0127A3 04:A793: A9 22     LDA #> $2209
C D 1 - I - 0x0127A5 04:A795: 8D 06 20  STA $2006
C D 1 - I - 0x0127A8 04:A798: A9 09     LDA #< $2209
C D 1 - I - 0x0127AA 04:A79A: 8D 06 20  STA $2006
C D 1 - I - 0x0127AD 04:A79D: AD 7C 03  LDA ram_037C
C D 1 - I - 0x0127B0 04:A7A0: 8D 07 20  STA $2007
C D 1 - I - 0x0127B3 04:A7A3: AD 7D 03  LDA ram_037D
C D 1 - I - 0x0127B6 04:A7A6: 8D 07 20  STA $2007
C D 1 - I - 0x0127B9 04:A7A9: CD 07 20  CMP $2007   ; dummy read
C D 1 - I - 0x0127BC 04:A7AC: AD 7F 03  LDA ram_037F
C D 1 - I - 0x0127BF 04:A7AF: 8D 07 20  STA $2007
C D 1 - I - 0x0127C2 04:A7B2: AD 80 03  LDA ram_0380
C D 1 - I - 0x0127C5 04:A7B5: 8D 07 20  STA $2007
C D 1 - I - 0x0127C8 04:A7B8: A9 21     LDA #> $21AB
C D 1 - I - 0x0127CA 04:A7BA: 8D 06 20  STA $2006
C D 1 - I - 0x0127CD 04:A7BD: A9 AB     LDA #< $21AB
C D 1 - I - 0x0127CF 04:A7BF: 8D 06 20  STA $2006
C D 1 - I - 0x0127D2 04:A7C2: AD 56 03  LDA ram_0356
C D 1 - I - 0x0127D5 04:A7C5: 8D 07 20  STA $2007
C D 1 - I - 0x0127D8 04:A7C8: AD 57 03  LDA ram_0357
C D 1 - I - 0x0127DB 04:A7CB: 8D 07 20  STA $2007
C D 1 - I - 0x0127DE 04:A7CE: AD 58 03  LDA ram_0358
C D 1 - I - 0x0127E1 04:A7D1: 8D 07 20  STA $2007
C D 1 - I - 0x0127E4 04:A7D4: 60        RTS

; game over text

tbl_A7D5:
- D 1 - I - 0x0127E5 04:A7D5: FE        .byte $FE   ; line break
- D 1 - I - 0x0127E6 04:A7D6: 0A 21     .word $210A    ; position
; Game over
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 1 - I - 0x0127E8 04:A7D8: 00        .byte                                                   $00, $2B, $0B, $17, $0F, $00   ; 
- D 1 - I - 0x0127F0 04:A7E0: 0F        .byte $19, $20, $0F, $1C   ; 

- D 1 - I - 0x0127F2 04:A7E2: FE        .byte $FE   ; line break
- D 1 - I - 0x0127F3 04:A7E3: 8A 21     .word $218A    ; position
; You visited
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 1 - I - 0x0127F5 04:A7E5: 3D        .byte                                                   $3D, $19, $1F, $00, $20, $13   ; 
- D 1 - I - 0x0127FD 04:A7ED: 1E        .byte $1D, $13, $1E, $0F, $0E   ; 

- D 1 - I - 0x012800 04:A7F0: FE        .byte $FE   ; line break
- D 1 - I - 0x012801 04:A7F1: AA 21     .word $21AA    ; position
; 000 rooms (000 is placeholder until game overwrites it with proper value)
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 1 - I - 0x012803 04:A7F3: 00        .byte                                                   $00, $01, $01, $01, $00, $1C   ; 
- D 1 - I - 0x01280B 04:A7FB: 17        .byte $19, $19, $17, $1D   ; 

- D 1 - I - 0x01280D 04:A7FD: FE        .byte $FE   ; line break
- D 1 - I - 0x01280E 04:A7FE: E9 21     .word $21E9    ; position
; You completed
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 1 - I - 0x012810 04:A800: 3D        .byte                                              $3D, $19, $1F, $00, $0D, $19, $17   ; 
- D 1 - I - 0x012818 04:A808: 16        .byte $1A, $16, $0F, $1E, $0F, $0E   ; 

- D 1 - I - 0x01281D 04:A80D: FE        .byte $FE   ; line break
- D 1 - I - 0x01281E 04:A80E: 09 22     .word $2209    ; position
; 00.00 percent (another placeholder)
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 1 - I - 0x012820 04:A810: 01        .byte                                              $01, $01, $40, $01, $01, $00, $1A   ; 
- D 1 - I - 0x012828 04:A818: 1C        .byte $0F, $1C, $0D, $0F, $18, $1E   ; 

- D 1 - I - 0x01282D 04:A81D: FF        .byte $FF   ; end

; continue screen

ofs_0x01282E_1E_display_value:
; game over counter
C D 1 - I - 0x01282E 04:A81E: A9 5E     LDA #< tbl_A85E
C D 1 - I - 0x012830 04:A820: 85 22     STA ram_0022
C D 1 - I - 0x012832 04:A822: A9 A8     LDA #> tbl_A85E
C D 1 - I - 0x012834 04:A824: 85 23     STA ram_0023
C D 1 - I - 0x012836 04:A826: A9 00     LDA #$00
C D 1 - I - 0x012838 04:A828: 20 E4 A5  JSR sub_A5E4_write_to_ppu
C D 1 - I - 0x01283B 04:A82B: A2 01     LDX #con_tile_id + $01
C D 1 - I - 0x01283D 04:A82D: AD B9 07  LDA ram_07B9
C D 1 - I - 0x012840 04:A830: 49 FF     EOR #$FF
C D 1 - I - 0x012842 04:A832: 2D 9F 07  AND ram_credits
bra_A835_loop:
C D 1 - I - 0x012845 04:A835: 4A        LSR
C D 1 - I - 0x012846 04:A836: 90 01     BCC bra_A839
C D 1 - I - 0x012848 04:A838: E8        INX
bra_A839:
C D 1 - I - 0x012849 04:A839: A8        TAY
C D 1 - I - 0x01284A 04:A83A: D0 F9     BNE bra_A835_loop
C D 1 - I - 0x01284C 04:A83C: 8E 07 20  STX $2007
C D 1 - I - 0x01284F 04:A83F: E0 02     CPX #$02
C D 1 - I - 0x012851 04:A841: D0 1A     BNE bra_A85D_RTS
; shift 2006 address
C D 1 - I - 0x012853 04:A843: CD 07 20  CMP $2007
C D 1 - I - 0x012856 04:A846: CD 07 20  CMP $2007
C D 1 - I - 0x012859 04:A849: CD 07 20  CMP $2007
C D 1 - I - 0x01285C 04:A84C: CD 07 20  CMP $2007
C D 1 - I - 0x01285F 04:A84F: CD 07 20  CMP $2007
C D 1 - I - 0x012862 04:A852: CD 07 20  CMP $2007
C D 1 - I - 0x012865 04:A855: CD 07 20  CMP $2007
C D 1 - I - 0x012868 04:A858: A9 00     LDA #con_tile_id + $00
C D 1 - I - 0x01286A 04:A85A: 8D 07 20  STA $2007
bra_A85D_RTS:
C D 1 - I - 0x01286D 04:A85D: 60        RTS


tbl_A85E:
- D 1 - I - 0x01286E 04:A85E: FE        .byte $FE   ; line break
- D 1 - I - 0x01286F 04:A85F: 07 21     .word $2107    ; position
; You have x credits    (Last letter / byte, "s" / "1D", seems to be overwritten(or not drawn?) if there is only one credit left)
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 1 - I - 0x012871 04:A861: 3D        .byte                                    $3D, $19, $1F, $00, $12, $0B, $20, $0F, $00   ; 
- D 1 - I - 0x012879 04:A869: 00        .byte $22, $00, $0D, $1C, $0F, $0E, $13, $1E, $1D   ; 

- D 1 - I - 0x012883 04:A873: FE        .byte $FE   ; line break
- D 1 - I - 0x012884 04:A874: 45 21     .word $2145    ; position
; Press start to continue
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 1 - I - 0x012886 04:A876: 34        .byte                          $34, $1C, $0F, $1D, $1D, $00, $1D, $1E, $0B, $1C, $1E   ; 
- D 1 - I - 0x01288E 04:A87E: 0B        .byte $00, $1E, $19, $00, $0D, $19, $18, $1E, $13, $18, $1F, $0F   ; 

- D 1 - I - 0x01289D 04:A88D: FE        .byte $FE   ; line break
- D 1 - I - 0x01289E 04:A88E: 8D 21     .word $218D    ; position
; 10    (placeholder until its overweitten with proper value, also seems like its two digits when theres only max 8 credits?)
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 1 - I - 0x0128A0 04:A890: 02        .byte                                                                  $02, $01   ; 

- D 1 - I - 0x0128A2 04:A892: FE        .byte $FE   ; bzk useless?
- D 1 - I - 0x0128A3 04:A893: 10 21     .word $2110    ; position
; ... removed text?
- D 1 - I - 0x0128A5 04:A895: FF        .byte $FF   ; end



sub_A896_write_item_bg_attributes_and_palette:
C D 1 - I - 0x0128A6 04:A896: BD DC A8  LDA tbl_A8DC_item_bg_data_lo,X
C D 1 - I - 0x0128A9 04:A899: 85 22     STA ram_0022
C D 1 - I - 0x0128AB 04:A89B: BD 0F A9  LDA tbl_A90F_item_bg_data_hi,X
C D 1 - I - 0x0128AE 04:A89E: 85 23     STA ram_0023
C D 1 - I - 0x0128B0 04:A8A0: A9 23     LDA #> $23CA
C D 1 - I - 0x0128B2 04:A8A2: 85 27     STA ram_0027
C D 1 - I - 0x0128B4 04:A8A4: A9 CA     LDA #< $23CA
C D 1 - I - 0x0128B6 04:A8A6: 85 26     STA ram_0026
; attributes
C D 1 - I - 0x0128B8 04:A8A8: A0 00     LDY #$00
bra_A8AA_loop:
C D 1 - I - 0x0128BA 04:A8AA: A2 05     LDX #$05
C D 1 - I - 0x0128BC 04:A8AC: A5 27     LDA ram_0027
C D 1 - I - 0x0128BE 04:A8AE: 8D 06 20  STA $2006
C D 1 - I - 0x0128C1 04:A8B1: A5 26     LDA ram_0026
C D 1 - I - 0x0128C3 04:A8B3: 8D 06 20  STA $2006
bra_A8B6_loop:
C D 1 - I - 0x0128C6 04:A8B6: B1 22     LDA (ram_0022),Y
C D 1 - I - 0x0128C8 04:A8B8: C8        INY
C D 1 - I - 0x0128C9 04:A8B9: 8D 07 20  STA $2007
C D 1 - I - 0x0128CC 04:A8BC: CA        DEX
C D 1 - I - 0x0128CD 04:A8BD: D0 F7     BNE bra_A8B6_loop
C D 1 - I - 0x0128CF 04:A8BF: A5 26     LDA ram_0026
C D 1 - I - 0x0128D1 04:A8C1: 18        CLC
C D 1 - I - 0x0128D2 04:A8C2: 69 08     ADC #$08
C D 1 - I - 0x0128D4 04:A8C4: 85 26     STA ram_0026
C D 1 - I - 0x0128D6 04:A8C6: 90 02     BCC bra_A8CA_not_overflow
- D 1 - I - 0x0128D8 04:A8C8: E6 27     INC ram_0027
bra_A8CA_not_overflow:
C D 1 - I - 0x0128DA 04:A8CA: C0 19     CPY #$19
C D 1 - I - 0x0128DC 04:A8CC: D0 DC     BNE bra_A8AA_loop
; palette
C D 1 - I - 0x0128DE 04:A8CE: A2 00     LDX #$00
bra_A8D0_loop:
C D 1 - I - 0x0128E0 04:A8D0: B1 22     LDA (ram_0022),Y
C D 1 - I - 0x0128E2 04:A8D2: C8        INY
C D 1 - I - 0x0128E3 04:A8D3: 9D 00 01  STA ram_buffer_palette,X
C D 1 - I - 0x0128E6 04:A8D6: E8        INX
C D 1 - I - 0x0128E7 04:A8D7: E0 10     CPX #$10
C D 1 - I - 0x0128E9 04:A8D9: D0 F5     BNE bra_A8D0_loop
C D 1 - I - 0x0128EB 04:A8DB: 60        RTS



tbl_A8DC_item_bg_data_lo:
- D 1 - I - 0x0128EC 04:A8DC: 61        .byte < _off014_AA61_00   ; 
- D 1 - I - 0x0128ED 04:A8DD: 61        .byte < _off014_AA61_01   ; 
- D 1 - I - 0x0128EE 04:A8DE: 61        .byte < _off014_AA61_02   ; 
- D 1 - I - 0x0128EF 04:A8DF: 61        .byte < _off014_AA61_03   ; 
- D 1 - I - 0x0128F0 04:A8E0: 61        .byte < _off014_AA61_04   ; 
- D 1 - I - 0x0128F1 04:A8E1: 61        .byte < _off014_AA61_05   ; 
- D 1 - I - 0x0128F2 04:A8E2: 61        .byte < _off014_AA61_06   ; 
- D 1 - I - 0x0128F3 04:A8E3: 61        .byte < _off014_AA61_07   ; 
- D 1 - I - 0x0128F4 04:A8E4: 61        .byte < _off014_AA61_08   ; 
- D 1 - I - 0x0128F5 04:A8E5: 61        .byte < _off014_AA61_09   ; 
- D 1 - I - 0x0128F6 04:A8E6: 61        .byte < _off014_AA61_0A   ; 
- D 1 - I - 0x0128F7 04:A8E7: 61        .byte < _off014_AA61_0B   ; 
- D 1 - I - 0x0128F8 04:A8E8: 61        .byte < _off014_AA61_0C   ; 
- D 1 - I - 0x0128F9 04:A8E9: 61        .byte < _off014_AA61_0D   ; 
- D 1 - I - 0x0128FA 04:A8EA: 61        .byte < _off014_AA61_0E   ; 
- D 1 - I - 0x0128FB 04:A8EB: 61        .byte < _off014_AA61_0F   ; 
- D 1 - I - 0x0128FC 04:A8EC: 0F        .byte < _off014_AA0F_10   ; 
- D 1 - I - 0x0128FD 04:A8ED: E6        .byte < _off014_A9E6_11   ; 
- D 1 - I - 0x0128FE 04:A8EE: E6        .byte < _off014_A9E6_12   ; 
- D 1 - I - 0x0128FF 04:A8EF: E6        .byte < _off014_A9E6_13   ; 
- D 1 - I - 0x012900 04:A8F0: E6        .byte < _off014_A9E6_14   ; 
- D 1 - I - 0x012901 04:A8F1: 38        .byte < _off014_AA38_15   ; 
- D 1 - I - 0x012902 04:A8F2: 38        .byte < _off014_AA38_16   ; 
- D 1 - I - 0x012903 04:A8F3: 38        .byte < _off014_AA38_17   ; 
- D 1 - I - 0x012904 04:A8F4: 38        .byte < _off014_AA38_18   ; 
- D 1 - I - 0x012905 04:A8F5: 38        .byte < _off014_AA38_19   ; 
- D 1 - I - 0x012906 04:A8F6: 38        .byte < _off014_AA38_1A   ; 
- D 1 - I - 0x012907 04:A8F7: 6B        .byte < _off014_A96B_1B   ; 
- D 1 - I - 0x012908 04:A8F8: BD        .byte < _off014_A9BD_1C   ; 
- D 1 - I - 0x012909 04:A8F9: 42        .byte < _off014_A942_1D   ; 
- D 1 - I - 0x01290A 04:A8FA: BD        .byte < _off014_A9BD_1E   ; 
- D 1 - I - 0x01290B 04:A8FB: BD        .byte < _off014_A9BD_1F   ; 
- D 1 - I - 0x01290C 04:A8FC: 94        .byte < _off014_A994_20   ; 
- D 1 - I - 0x01290D 04:A8FD: BD        .byte < _off014_A9BD_21   ; 
- D 1 - I - 0x01290E 04:A8FE: 6B        .byte < _off014_A96B_22   ; 
- D 1 - I - 0x01290F 04:A8FF: BD        .byte < _off014_A9BD_23   ; 
- D 1 - I - 0x012910 04:A900: 6B        .byte < _off014_A96B_24   ; 
- D 1 - I - 0x012911 04:A901: 94        .byte < _off014_A994_25   ; 
- D 1 - I - 0x012912 04:A902: 6B        .byte < _off014_A96B_26   ; 
- D 1 - I - 0x012913 04:A903: 42        .byte < _off014_A942_27   ; 
- D 1 - I - 0x012914 04:A904: 6B        .byte < _off014_A96B_28   ; 
- D 1 - I - 0x012915 04:A905: 94        .byte < _off014_A994_29   ; 
- D 1 - I - 0x012916 04:A906: 6B        .byte < _off014_A96B_2A   ; 
- D 1 - I - 0x012917 04:A907: 61        .byte < _off014_AA61_2B   ; 
- D 1 - I - 0x012918 04:A908: 61        .byte < _off014_AA61_2C   ; 
- D 1 - I - 0x012919 04:A909: 61        .byte < _off014_AA61_2D   ; 
- D 1 - I - 0x01291A 04:A90A: 61        .byte < _off014_AA61_2E   ; 
- D 1 - I - 0x01291B 04:A90B: 61        .byte < _off014_AA61_2F   ; 
- D 1 - I - 0x01291C 04:A90C: 61        .byte < _off014_AA61_30   ; 
- D 1 - I - 0x01291D 04:A90D: 61        .byte < _off014_AA61_31   ; 
- D 1 - I - 0x01291E 04:A90E: 61        .byte < _off014_AA61_32   ; 

tbl_A90F_item_bg_data_hi:
- D 1 - I - 0x01291F 04:A90F: AA        .byte > _off014_AA61_00   ; 
- D 1 - I - 0x012920 04:A910: AA        .byte > _off014_AA61_01   ; 
- D 1 - I - 0x012921 04:A911: AA        .byte > _off014_AA61_02   ; 
- D 1 - I - 0x012922 04:A912: AA        .byte > _off014_AA61_03   ; 
- D 1 - I - 0x012923 04:A913: AA        .byte > _off014_AA61_04   ; 
- D 1 - I - 0x012924 04:A914: AA        .byte > _off014_AA61_05   ; 
- D 1 - I - 0x012925 04:A915: AA        .byte > _off014_AA61_06   ; 
- D 1 - I - 0x012926 04:A916: AA        .byte > _off014_AA61_07   ; 
- D 1 - I - 0x012927 04:A917: AA        .byte > _off014_AA61_08   ; 
- D 1 - I - 0x012928 04:A918: AA        .byte > _off014_AA61_09   ; 
- D 1 - I - 0x012929 04:A919: AA        .byte > _off014_AA61_0A   ; 
- D 1 - I - 0x01292A 04:A91A: AA        .byte > _off014_AA61_0B   ; 
- D 1 - I - 0x01292B 04:A91B: AA        .byte > _off014_AA61_0C   ; 
- D 1 - I - 0x01292C 04:A91C: AA        .byte > _off014_AA61_0D   ; 
- D 1 - I - 0x01292D 04:A91D: AA        .byte > _off014_AA61_0E   ; 
- D 1 - I - 0x01292E 04:A91E: AA        .byte > _off014_AA61_0F   ; 
- D 1 - I - 0x01292F 04:A91F: AA        .byte > _off014_AA0F_10   ; 
- D 1 - I - 0x012930 04:A920: A9        .byte > _off014_A9E6_11   ; 
- D 1 - I - 0x012931 04:A921: A9        .byte > _off014_A9E6_12   ; 
- D 1 - I - 0x012932 04:A922: A9        .byte > _off014_A9E6_13   ; 
- D 1 - I - 0x012933 04:A923: A9        .byte > _off014_A9E6_14   ; 
- D 1 - I - 0x012934 04:A924: AA        .byte > _off014_AA38_15   ; 
- D 1 - I - 0x012935 04:A925: AA        .byte > _off014_AA38_16   ; 
- D 1 - I - 0x012936 04:A926: AA        .byte > _off014_AA38_17   ; 
- D 1 - I - 0x012937 04:A927: AA        .byte > _off014_AA38_18   ; 
- D 1 - I - 0x012938 04:A928: AA        .byte > _off014_AA38_19   ; 
- D 1 - I - 0x012939 04:A929: AA        .byte > _off014_AA38_1A   ; 
- D 1 - I - 0x01293A 04:A92A: A9        .byte > _off014_A96B_1B   ; 
- D 1 - I - 0x01293B 04:A92B: A9        .byte > _off014_A9BD_1C   ; 
- D 1 - I - 0x01293C 04:A92C: A9        .byte > _off014_A942_1D   ; 
- D 1 - I - 0x01293D 04:A92D: A9        .byte > _off014_A9BD_1E   ; 
- D 1 - I - 0x01293E 04:A92E: A9        .byte > _off014_A9BD_1F   ; 
- D 1 - I - 0x01293F 04:A92F: A9        .byte > _off014_A994_20   ; 
- D 1 - I - 0x012940 04:A930: A9        .byte > _off014_A9BD_21   ; 
- D 1 - I - 0x012941 04:A931: A9        .byte > _off014_A96B_22   ; 
- D 1 - I - 0x012942 04:A932: A9        .byte > _off014_A9BD_23   ; 
- D 1 - I - 0x012943 04:A933: A9        .byte > _off014_A96B_24   ; 
- D 1 - I - 0x012944 04:A934: A9        .byte > _off014_A994_25   ; 
- D 1 - I - 0x012945 04:A935: A9        .byte > _off014_A96B_26   ; 
- D 1 - I - 0x012946 04:A936: A9        .byte > _off014_A942_27   ; 
- D 1 - I - 0x012947 04:A937: A9        .byte > _off014_A96B_28   ; 
- D 1 - I - 0x012948 04:A938: A9        .byte > _off014_A994_29   ; 
- D 1 - I - 0x012949 04:A939: A9        .byte > _off014_A96B_2A   ; 
- D 1 - I - 0x01294A 04:A93A: AA        .byte > _off014_AA61_2B   ; 
- D 1 - I - 0x01294B 04:A93B: AA        .byte > _off014_AA61_2C   ; 
- D 1 - I - 0x01294C 04:A93C: AA        .byte > _off014_AA61_2D   ; 
- D 1 - I - 0x01294D 04:A93D: AA        .byte > _off014_AA61_2E   ; 
- D 1 - I - 0x01294E 04:A93E: AA        .byte > _off014_AA61_2F   ; 
- D 1 - I - 0x01294F 04:A93F: AA        .byte > _off014_AA61_30   ; 
- D 1 - I - 0x012950 04:A940: AA        .byte > _off014_AA61_31   ; 
- D 1 - I - 0x012951 04:A941: AA        .byte > _off014_AA61_32   ; 

; "big picture" item pickup graphics attributes and palettes

; Green potions big picture
_off014_A942_1D:
_off014_A942_27:
; attributes
- D 1 - I - 0x012952 04:A942: 00        .byte $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012957 04:A947: 00        .byte $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x01295C 04:A94C: A5        .byte $A5, $A5, $A5, $A5, $A5   ; 
- D 1 - I - 0x012961 04:A951: AA        .byte $AA, $AA, $AA, $AA, $AA   ; 
- D 1 - I - 0x012966 04:A956: FA        .byte $FA, $FA, $FA, $FA, $FA   ; 
; palette
- D 1 - I - 0x01296B 04:A95B: 0F        .byte $0F, $06, $16, $21   ; top part
- D 1 - I - 0x01296F 04:A95F: 0F        .byte $0F, $20, $29, $21   ; middle part
- D 1 - I - 0x012973 04:A963: 0F        .byte $0F, $19, $29, $21   ; bottom half
- D 1 - I - 0x012977 04:A967: 0F        .byte $0F, $18, $28, $38   ; text


; yellow potion big picture
_off014_A96B_1B:
_off014_A96B_22:
_off014_A96B_24:
_off014_A96B_26:
_off014_A96B_28:
_off014_A96B_2A:
; attributes
- D 1 - I - 0x01297B 04:A96B: 00        .byte $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012980 04:A970: 00        .byte $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012985 04:A975: A5        .byte $A5, $A5, $A5, $A5, $A5   ; 
- D 1 - I - 0x01298A 04:A97A: AA        .byte $AA, $AA, $AA, $AA, $AA   ; 
- D 1 - I - 0x01298F 04:A97F: FA        .byte $FA, $FA, $FA, $FA, $FA   ; 
; palette
- D 1 - I - 0x012994 04:A984: 0F        .byte $0F, $06, $16, $21   ; top part
- D 1 - I - 0x012998 04:A988: 0F        .byte $0F, $20, $28, $21   ; middle part
- D 1 - I - 0x01299C 04:A98C: 0F        .byte $0F, $18, $28, $21   ; bottom half
- D 1 - I - 0x0129A0 04:A990: 0F        .byte $0F, $19, $29, $39   ; text


; purple potion big picture
_off014_A994_20:
_off014_A994_25:
_off014_A994_29:
; attributes
- D 1 - I - 0x0129A4 04:A994: 00        .byte $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x0129A9 04:A999: 00        .byte $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x0129AE 04:A99E: A5        .byte $A5, $A5, $A5, $A5, $A5   ; 
- D 1 - I - 0x0129B3 04:A9A3: AA        .byte $AA, $AA, $AA, $AA, $AA   ; 
- D 1 - I - 0x0129B8 04:A9A8: FA        .byte $FA, $FA, $FA, $FA, $FA   ; 
; palette
- D 1 - I - 0x0129BD 04:A9AD: 0F        .byte $0F, $06, $16, $21   ; top part
- D 1 - I - 0x0129C1 04:A9B1: 0F        .byte $0F, $20, $24, $21   ; middle part
- D 1 - I - 0x0129C5 04:A9B5: 0F        .byte $0F, $14, $24, $21   ; bottom
- D 1 - I - 0x0129C9 04:A9B9: 0F        .byte $0F, $19, $29, $39   ; text


; blue potion big picture
_off014_A9BD_1C:
_off014_A9BD_1E:
_off014_A9BD_1F:
_off014_A9BD_21:
_off014_A9BD_23:
; attributes
- D 1 - I - 0x0129CD 04:A9BD: 00        .byte $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x0129D2 04:A9C2: 00        .byte $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x0129D7 04:A9C7: A5        .byte $A5, $A5, $A5, $A5, $A5   ; 
- D 1 - I - 0x0129DC 04:A9CC: AA        .byte $AA, $AA, $AA, $AA, $AA   ; 
- D 1 - I - 0x0129E1 04:A9D1: FA        .byte $FA, $FA, $FA, $FA, $FA   ; 
; palette
- D 1 - I - 0x0129E6 04:A9D6: 0F        .byte $0F, $06, $16, $21   ; top part
- D 1 - I - 0x0129EA 04:A9DA: 0F        .byte $0F, $20, $23, $21   ; middle part
- D 1 - I - 0x0129EE 04:A9DE: 0F        .byte $0F, $13, $23, $21   ; bottom half
- D 1 - I - 0x0129F2 04:A9E2: 0F        .byte $0F, $19, $29, $39   ; text


; key big picture
_off014_A9E6_11:
_off014_A9E6_12:
_off014_A9E6_13:
_off014_A9E6_14:
; attributes
- D 1 - I - 0x0129F6 04:A9E6: 00        .byte $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x0129FB 04:A9EB: 00        .byte $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012A00 04:A9F0: A5        .byte $A5, $A5, $A5, $A5, $A5   ; 
- D 1 - I - 0x012A05 04:A9F5: AA        .byte $AA, $AA, $AA, $AA, $AA   ; 
- D 1 - I - 0x012A0A 04:A9FA: FA        .byte $FA, $FA, $FA, $FA, $FA   ; 
; palette
- D 1 - I - 0x012A0F 04:A9FF: 0F        .byte $0F, $18, $28, $38   ; top part
- D 1 - I - 0x012A13 04:AA03: 0F        .byte $0F, $18, $28, $38   ; middle part
- D 1 - I - 0x012A17 04:AA07: 0F        .byte $0F, $18, $28, $38   ; bottom half
- D 1 - I - 0x012A1B 04:AA0B: 0F        .byte $0F, $1C, $2C, $3C   ; text


; magic boots big picture
_off014_AA0F_10:
; attributes
- D 1 - I - 0x012A1F 04:AA0F: 00        .byte $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012A24 04:AA14: 00        .byte $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012A29 04:AA19: 00        .byte $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012A2E 04:AA1E: 50        .byte $50, $50, $50, $50, $50   ; 
- D 1 - I - 0x012A33 04:AA23: 55        .byte $55, $55, $55, $55, $55   ; 
; palette
- D 1 - I - 0x012A38 04:AA28: 0F        .byte $0F, $09, $19, $29   ; top part
- D 1 - I - 0x012A3C 04:AA2C: 0F        .byte $0F, $18, $28, $38   ; text
- D 1 - I - 0x012A40 04:AA30: 0F        .byte $0F, $06, $16, $26   ; unused
- D 1 - I - 0x012A44 04:AA34: 0F        .byte $0F, $16, $26, $36   ; unused


; staff piece big picture
_off014_AA38_15:
_off014_AA38_16:
_off014_AA38_17:
_off014_AA38_18:
_off014_AA38_19:
_off014_AA38_1A:
; attributes
- D 1 - I - 0x012A48 04:AA38: 00        .byte $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012A4D 04:AA3D: 00        .byte $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012A52 04:AA42: 00        .byte $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012A57 04:AA47: 50        .byte $50, $50, $50, $50, $50   ; 
- D 1 - I - 0x012A5C 04:AA4C: 55        .byte $55, $55, $55, $55, $55   ; 
; palette
- D 1 - I - 0x012A61 04:AA51: 0F        .byte $0F, $16, $00, $21   ; top part
- D 1 - I - 0x012A65 04:AA55: 0F        .byte $0F, $18, $28, $38   ; text
- D 1 - I - 0x012A69 04:AA59: 0F        .byte $0F, $06, $16, $26   ; unused?
- D 1 - I - 0x012A6D 04:AA5D: 0F        .byte $0F, $16, $26, $36   ; unused?


; hat & credit big picture
_off014_AA61_00:
_off014_AA61_01:
_off014_AA61_02:
_off014_AA61_03:
_off014_AA61_04:
_off014_AA61_05:
_off014_AA61_06:
_off014_AA61_07:
_off014_AA61_08:
_off014_AA61_09:
_off014_AA61_0A:
_off014_AA61_0B:
_off014_AA61_0C:
_off014_AA61_0D:
_off014_AA61_0E:
_off014_AA61_0F:
_off014_AA61_2B:
_off014_AA61_2C:
_off014_AA61_2D:
_off014_AA61_2E:
_off014_AA61_2F:
_off014_AA61_30:
_off014_AA61_31:
_off014_AA61_32:
; attributes
- D 1 - I - 0x012A71 04:AA61: 00        .byte $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012A76 04:AA66: 00        .byte $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012A7B 04:AA6B: 00        .byte $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012A80 04:AA70: 50        .byte $50, $50, $50, $50, $50   ; 
- D 1 - I - 0x012A85 04:AA75: 55        .byte $55, $55, $55, $55, $55   ; 
; palette
- D 1 - I - 0x012A8A 04:AA7A: 0F        .byte $0F, $11, $21, $31   ; top part
- D 1 - I - 0x012A8E 04:AA7E: 0F        .byte $0F, $18, $28, $38   ; text
- D 1 - I - 0x012A92 04:AA82: 0F        .byte $0F, $06, $16, $26   ; unused
- D 1 - I - 0x012A96 04:AA86: 0F        .byte $0F, $16, $26, $36   ; unused



tbl_AA8A_item_pickup_text_lo:
- D 1 - I - 0x012A9A 04:AA8A: FC        .byte < _off011_AAFC_00   ; 
- D 1 - I - 0x012A9B 04:AA8B: FC        .byte < _off011_AAFC_01   ; 
- D 1 - I - 0x012A9C 04:AA8C: FC        .byte < _off011_AAFC_02   ; 
- D 1 - I - 0x012A9D 04:AA8D: FC        .byte < _off011_AAFC_03   ; 
- D 1 - I - 0x012A9E 04:AA8E: FC        .byte < _off011_AAFC_04   ; 
- D 1 - I - 0x012A9F 04:AA8F: FC        .byte < _off011_AAFC_05   ; 
- D 1 - I - 0x012AA0 04:AA90: FC        .byte < _off011_AAFC_06   ; 
- D 1 - I - 0x012AA1 04:AA91: FC        .byte < _off011_AAFC_07   ; 
- D 1 - I - 0x012AA2 04:AA92: FC        .byte < _off011_AAFC_08   ; 
- D 1 - I - 0x012AA3 04:AA93: FC        .byte < _off011_AAFC_09   ; 
- D 1 - I - 0x012AA4 04:AA94: FC        .byte < _off011_AAFC_0A   ; 
- D 1 - I - 0x012AA5 04:AA95: FC        .byte < _off011_AAFC_0B   ; 
- D 1 - I - 0x012AA6 04:AA96: FC        .byte < _off011_AAFC_0C   ; 
- D 1 - I - 0x012AA7 04:AA97: FC        .byte < _off011_AAFC_0D   ; 
- D 1 - I - 0x012AA8 04:AA98: FC        .byte < _off011_AAFC_0E   ; 
- D 1 - I - 0x012AA9 04:AA99: FC        .byte < _off011_AAFC_0F   ; 
- D 1 - I - 0x012AAA 04:AA9A: 0D        .byte < _off011_AB0D_10   ; 
- D 1 - I - 0x012AAB 04:AA9B: 1C        .byte < _off011_AB1C_11   ; 
- D 1 - I - 0x012AAC 04:AA9C: 1C        .byte < _off011_AB1C_12   ; 
- D 1 - I - 0x012AAD 04:AA9D: 1C        .byte < _off011_AB1C_13   ; 
- D 1 - I - 0x012AAE 04:AA9E: 1C        .byte < _off011_AB1C_14   ; 
- D 1 - I - 0x012AAF 04:AA9F: 2B        .byte < _off011_AB2B_15   ; 
- D 1 - I - 0x012AB0 04:AAA0: 2B        .byte < _off011_AB2B_16   ; 
- D 1 - I - 0x012AB1 04:AAA1: 2B        .byte < _off011_AB2B_17   ; 
- D 1 - I - 0x012AB2 04:AAA2: 2B        .byte < _off011_AB2B_18   ; 
- D 1 - I - 0x012AB3 04:AAA3: 2B        .byte < _off011_AB2B_19   ; 
- D 1 - I - 0x012AB4 04:AAA4: 2B        .byte < _off011_AB2B_1A   ; 
- D 1 - I - 0x012AB5 04:AAA5: 51        .byte < _off011_AB51_1B   ; 
- D 1 - I - 0x012AB6 04:AAA6: 77        .byte < _off011_AB77_1C   ; 
- D 1 - I - 0x012AB7 04:AAA7: 3F        .byte < _off011_AB3F_1D   ; 
- D 1 - I - 0x012AB8 04:AAA8: 77        .byte < _off011_AB77_1E   ; 
- D 1 - I - 0x012AB9 04:AAA9: 77        .byte < _off011_AB77_1F   ; 
- D 1 - I - 0x012ABA 04:AAAA: 64        .byte < _off011_AB64_20   ; 
- D 1 - I - 0x012ABB 04:AAAB: 77        .byte < _off011_AB77_21   ; 
- D 1 - I - 0x012ABC 04:AAAC: 51        .byte < _off011_AB51_22   ; 
- D 1 - I - 0x012ABD 04:AAAD: 77        .byte < _off011_AB77_23   ; 
- D 1 - I - 0x012ABE 04:AAAE: 51        .byte < _off011_AB51_24   ; 
- D 1 - I - 0x012ABF 04:AAAF: 64        .byte < _off011_AB64_25   ; 
- D 1 - I - 0x012AC0 04:AAB0: 51        .byte < _off011_AB51_26   ; 
- D 1 - I - 0x012AC1 04:AAB1: 3F        .byte < _off011_AB3F_27   ; 
- D 1 - I - 0x012AC2 04:AAB2: 51        .byte < _off011_AB51_28   ; 
- D 1 - I - 0x012AC3 04:AAB3: 64        .byte < _off011_AB64_29   ; 
- D 1 - I - 0x012AC4 04:AAB4: 51        .byte < _off011_AB51_2A   ; 
- D 1 - I - 0x012AC5 04:AAB5: F0        .byte < _off011_AAF0_2B   ; 
- D 1 - I - 0x012AC6 04:AAB6: F0        .byte < _off011_AAF0_2C   ; 
- D 1 - I - 0x012AC7 04:AAB7: F0        .byte < _off011_AAF0_2D   ; 
- D 1 - I - 0x012AC8 04:AAB8: F0        .byte < _off011_AAF0_2E   ; 
- D 1 - I - 0x012AC9 04:AAB9: F0        .byte < _off011_AAF0_2F   ; 
- D 1 - I - 0x012ACA 04:AABA: F0        .byte < _off011_AAF0_30   ; 
- D 1 - I - 0x012ACB 04:AABB: F0        .byte < _off011_AAF0_31   ; 
- D 1 - I - 0x012ACC 04:AABC: F0        .byte < _off011_AAF0_32   ; 



tbl_AABD_item_pickup_text_hi:
- D 1 - I - 0x012ACD 04:AABD: AA        .byte > _off011_AAFC_00   ; 
- D 1 - I - 0x012ACE 04:AABE: AA        .byte > _off011_AAFC_01   ; 
- D 1 - I - 0x012ACF 04:AABF: AA        .byte > _off011_AAFC_02   ; 
- D 1 - I - 0x012AD0 04:AAC0: AA        .byte > _off011_AAFC_03   ; 
- D 1 - I - 0x012AD1 04:AAC1: AA        .byte > _off011_AAFC_04   ; 
- D 1 - I - 0x012AD2 04:AAC2: AA        .byte > _off011_AAFC_05   ; 
- D 1 - I - 0x012AD3 04:AAC3: AA        .byte > _off011_AAFC_06   ; 
- D 1 - I - 0x012AD4 04:AAC4: AA        .byte > _off011_AAFC_07   ; 
- D 1 - I - 0x012AD5 04:AAC5: AA        .byte > _off011_AAFC_08   ; 
- D 1 - I - 0x012AD6 04:AAC6: AA        .byte > _off011_AAFC_09   ; 
- D 1 - I - 0x012AD7 04:AAC7: AA        .byte > _off011_AAFC_0A   ; 
- D 1 - I - 0x012AD8 04:AAC8: AA        .byte > _off011_AAFC_0B   ; 
- D 1 - I - 0x012AD9 04:AAC9: AA        .byte > _off011_AAFC_0C   ; 
- D 1 - I - 0x012ADA 04:AACA: AA        .byte > _off011_AAFC_0D   ; 
- D 1 - I - 0x012ADB 04:AACB: AA        .byte > _off011_AAFC_0E   ; 
- D 1 - I - 0x012ADC 04:AACC: AA        .byte > _off011_AAFC_0F   ; 
- D 1 - I - 0x012ADD 04:AACD: AB        .byte > _off011_AB0D_10   ; 
- D 1 - I - 0x012ADE 04:AACE: AB        .byte > _off011_AB1C_11   ; 
- D 1 - I - 0x012ADF 04:AACF: AB        .byte > _off011_AB1C_12   ; 
- D 1 - I - 0x012AE0 04:AAD0: AB        .byte > _off011_AB1C_13   ; 
- D 1 - I - 0x012AE1 04:AAD1: AB        .byte > _off011_AB1C_14   ; 
- D 1 - I - 0x012AE2 04:AAD2: AB        .byte > _off011_AB2B_15   ; 
- D 1 - I - 0x012AE3 04:AAD3: AB        .byte > _off011_AB2B_16   ; 
- D 1 - I - 0x012AE4 04:AAD4: AB        .byte > _off011_AB2B_17   ; 
- D 1 - I - 0x012AE5 04:AAD5: AB        .byte > _off011_AB2B_18   ; 
- D 1 - I - 0x012AE6 04:AAD6: AB        .byte > _off011_AB2B_19   ; 
- D 1 - I - 0x012AE7 04:AAD7: AB        .byte > _off011_AB2B_1A   ; 
- D 1 - I - 0x012AE8 04:AAD8: AB        .byte > _off011_AB51_1B   ; 
- D 1 - I - 0x012AE9 04:AAD9: AB        .byte > _off011_AB77_1C   ; 
- D 1 - I - 0x012AEA 04:AADA: AB        .byte > _off011_AB3F_1D   ; 
- D 1 - I - 0x012AEB 04:AADB: AB        .byte > _off011_AB77_1E   ; 
- D 1 - I - 0x012AEC 04:AADC: AB        .byte > _off011_AB77_1F   ; 
- D 1 - I - 0x012AED 04:AADD: AB        .byte > _off011_AB64_20   ; 
- D 1 - I - 0x012AEE 04:AADE: AB        .byte > _off011_AB77_21   ; 
- D 1 - I - 0x012AEF 04:AADF: AB        .byte > _off011_AB51_22   ; 
- D 1 - I - 0x012AF0 04:AAE0: AB        .byte > _off011_AB77_23   ; 
- D 1 - I - 0x012AF1 04:AAE1: AB        .byte > _off011_AB51_24   ; 
- D 1 - I - 0x012AF2 04:AAE2: AB        .byte > _off011_AB64_25   ; 
- D 1 - I - 0x012AF3 04:AAE3: AB        .byte > _off011_AB51_26   ; 
- D 1 - I - 0x012AF4 04:AAE4: AB        .byte > _off011_AB3F_27   ; 
- D 1 - I - 0x012AF5 04:AAE5: AB        .byte > _off011_AB51_28   ; 
- D 1 - I - 0x012AF6 04:AAE6: AB        .byte > _off011_AB64_29   ; 
- D 1 - I - 0x012AF7 04:AAE7: AB        .byte > _off011_AB51_2A   ; 
- D 1 - I - 0x012AF8 04:AAE8: AA        .byte > _off011_AAF0_2B   ; 
- D 1 - I - 0x012AF9 04:AAE9: AA        .byte > _off011_AAF0_2C   ; 
- D 1 - I - 0x012AFA 04:AAEA: AA        .byte > _off011_AAF0_2D   ; 
- D 1 - I - 0x012AFB 04:AAEB: AA        .byte > _off011_AAF0_2E   ; 
- D 1 - I - 0x012AFC 04:AAEC: AA        .byte > _off011_AAF0_2F   ; 
- D 1 - I - 0x012AFD 04:AAED: AA        .byte > _off011_AAF0_30   ; 
- D 1 - I - 0x012AFE 04:AAEE: AA        .byte > _off011_AAF0_31   ; 
- D 1 - I - 0x012AFF 04:AAEF: AA        .byte > _off011_AAF0_32   ; 

; big picture text


_off011_AAF0_2B:
_off011_AAF0_2C:
_off011_AAF0_2D:
_off011_AAF0_2E:
_off011_AAF0_2F:
_off011_AAF0_30:
_off011_AAF0_31:
_off011_AAF0_32:
- D 1 - I - 0x012B00 04:AAF0: FE        .byte $FE   ; 
- D 1 - I - 0x012B01 04:AAF1: CB 22     .word $22CB ; position
; "a credit"
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 1 - I - 0x012B03 04:AAF3: 0B        .byte                                                        $0B, $00, $0D, $1C, $0F   ; 
- D 1 - I - 0x012B08 04:AAF8: 0E        .byte $0E, $13, $1E   ; 

- D 1 - I - 0x012B0B 04:AAFB: FF        .byte $FF   ; 



_off011_AAFC_00:
_off011_AAFC_01:
_off011_AAFC_02:
_off011_AAFC_03:
_off011_AAFC_04:
_off011_AAFC_05:
_off011_AAFC_06:
_off011_AAFC_07:
_off011_AAFC_08:
_off011_AAFC_09:
_off011_AAFC_0A:
_off011_AAFC_0B:
_off011_AAFC_0C:
_off011_AAFC_0D:
_off011_AAFC_0E:
_off011_AAFC_0F:
- D 1 - I - 0x012B0C 04:AAFC: FE        .byte $FE   ; 
- D 1 - I - 0x012B0D 04:AAFD: C9 22     .word $22C9 ; position
; "an extra life"
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 1 - I - 0x012B0F 04:AAFF: 0B        .byte                                              $0B, $18, $00, $0F, $22, $1E, $1C   ; 
- D 1 - I - 0x012B17 04:AB07: 00        .byte $0B, $00, $16, $13, $10, $0F   ; 

- D 1 - I - 0x012B1C 04:AB0C: FF        .byte $FF   ; 



_off011_AB0D_10:
- D 1 - I - 0x012B1D 04:AB0D: FE        .byte $FE   ; 
- D 1 - I - 0x012B1E 04:AB0E: CA 22     .word $22CA ; position
; "magic boots"
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 1 - I - 0x012B20 04:AB10: 17        .byte                                                   $17, $0B, $11, $13, $0D, $00   ; 
- D 1 - I - 0x012B28 04:AB18: 19        .byte $0C, $19, $19, $1E, $1D   ; 

- D 1 - I - 0x012B2B 04:AB1B: FF        .byte $FF   ; 



_off011_AB1C_11:
_off011_AB1C_12:
_off011_AB1C_13:
_off011_AB1C_14:
- D 1 - I - 0x012B2C 04:AB1C: FE        .byte $FE   ; 
- D 1 - I - 0x012B2D 04:AB1D: CA 22     .word $22CA ; position
; "a magic key"
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 1 - I - 0x012B2F 04:AB1F: 0B        .byte                                                   $0B, $00, $17, $0B, $11, $13   ; 
- D 1 - I - 0x012B37 04:AB27: 15        .byte $0D, $00, $15, $0F, $23   ; 

- D 1 - I - 0x012B3A 04:AB2A: FF        .byte $FF   ; 



_off011_AB2B_15:
_off011_AB2B_16:
_off011_AB2B_17:
_off011_AB2B_18:
_off011_AB2B_19:
_off011_AB2B_1A:
- D 1 - I - 0x012B3B 04:AB2B: FE        .byte $FE   ; 
- D 1 - I - 0x012B3C 04:AB2C: C8 22     .word $22C8 ; position
; "a piece of staff"
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 1 - I - 0x012B3E 04:AB2E: 0B        .byte                                         $0B, $00, $1A, $13, $0F, $0D, $0F, $00   ; 
- D 1 - I - 0x012B46 04:AB36: 19        .byte $19, $10, $00, $1D, $1E, $0B, $10, $10   ; 

- D 1 - I - 0x012B4E 04:AB3E: FF        .byte $FF   ; 



_off011_AB3F_1D:
_off011_AB3F_27:
- D 1 - I - 0x012B4F 04:AB3F: FE        .byte $FE   ; 
- D 1 - I - 0x012B50 04:AB40: C8 22     .word $22C8 ; position
; "a green potion"
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 1 - I - 0x012B52 04:AB42: 0B        .byte                                         $0B, $00, $11, $1C, $0F, $0F, $18, $00   ; 
- D 1 - I - 0x012B5A 04:AB4A: 1A        .byte $1A, $19, $1E, $13, $19, $18   ; 

- D 1 - I - 0x012B60 04:AB50: FF        .byte $FF   ; 



_off011_AB51_1B:
_off011_AB51_22:
_off011_AB51_24:
_off011_AB51_26:
_off011_AB51_28:
_off011_AB51_2A:
- D 1 - I - 0x012B61 04:AB51: FE        .byte $FE   ; 
- D 1 - I - 0x012B62 04:AB52: C8 22     .word $22C8 ; position
; "a yellow potion"
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 1 - I - 0x012B64 04:AB54: 0B        .byte                                         $0B, $00, $23, $0F, $16, $16, $19, $21   ; 
- D 1 - I - 0x012B6C 04:AB5C: 00        .byte $00, $1A, $19, $1E, $13, $19, $18   ; 

- D 1 - I - 0x012B73 04:AB63: FF        .byte $FF   ; 



_off011_AB64_20:
_off011_AB64_25:
_off011_AB64_29:
- D 1 - I - 0x012B74 04:AB64: FE        .byte $FE   ; 
- D 1 - I - 0x012B75 04:AB65: C8 22     .word $22C8 ; position
; "a purple potion"
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 1 - I - 0x012B77 04:AB67: 0B        .byte                                         $0B, $00, $1A, $1F, $1C, $1A, $16, $0F   ; 
- D 1 - I - 0x012B7F 04:AB6F: 00        .byte $00, $1A, $19, $1E, $13, $19, $18   ; 

- D 1 - I - 0x012B86 04:AB76: FF        .byte $FF   ; 



_off011_AB77_1C:
_off011_AB77_1E:
_off011_AB77_1F:
_off011_AB77_21:
_off011_AB77_23:
- D 1 - I - 0x012B87 04:AB77: FE        .byte $FE   ; 
- D 1 - I - 0x012B88 04:AB78: C9 22     .word $22C9 ; position
; "a blue potion"
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 1 - I - 0x012B8A 04:AB7A: 0B        .byte                                              $0B, $00, $0C, $16, $1F, $0F, $00   ; 
- D 1 - I - 0x012B92 04:AB82: 19        .byte $1A, $19, $1E, $13, $19, $18   ; 

- D 1 - I - 0x012B97 04:AB87: FF        .byte $FF   ; 



_off010_AB88_27:
_off010_AB88_28:
_off010_AB88_29:
_off010_AB88_2A:
- D 1 - I - 0x012B98 04:AB88: 00        .byte $00, $00, $00, $00, $00, $00, $01, $02, $03   ; 
- D 1 - I - 0x012BA1 04:AB91: 00        .byte $00, $00, $00, $00, $00, $00, $04, $05, $06   ; 
- D 1 - I - 0x012BAA 04:AB9A: 00        .byte $00, $00, $00, $00, $07, $08, $09, $00, $0A   ; 
- D 1 - I - 0x012BB3 04:ABA3: 00        .byte $00, $00, $07, $08, $0B, $0C, $0D, $0E, $0F   ; 
- D 1 - I - 0x012BBC 04:ABAC: 07        .byte $07, $08, $0B, $0C, $10, $00, $11, $12, $13   ; 
- D 1 - I - 0x012BC5 04:ABB5: 14        .byte $14, $15, $16, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012BCE 04:ABBE: 17        .byte $17, $18, $19, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012BD7 04:ABC7: 1A        .byte $1A, $1B, $1C, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012BE0 04:ABD0: 1D        .byte $1D, $1E, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012BE9 04:ABD9: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012BF2 04:ABE2: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012BFB 04:ABEB: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012C04 04:ABF4: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012C0D 04:ABFD: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012C16 04:AC06: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012C1F 04:AC0F: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 



_off010_AC18_26:
- D 1 - I - 0x012C28 04:AC18: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012C31 04:AC21: 00        .byte $00, $00, $1F, $20, $21, $22, $00, $00, $00   ; 
- D 1 - I - 0x012C3A 04:AC2A: 00        .byte $00, $00, $23, $24, $25, $26, $27, $28, $00   ; 
- D 1 - I - 0x012C43 04:AC33: 00        .byte $00, $00, $29, $2A, $2B, $2C, $2D, $2E, $00   ; 
- D 1 - I - 0x012C4C 04:AC3C: 00        .byte $00, $00, $2F, $30, $31, $32, $33, $34, $00   ; 
- D 1 - I - 0x012C55 04:AC45: 00        .byte $00, $00, $35, $36, $37, $38, $39, $3A, $00   ; 
- D 1 - I - 0x012C5E 04:AC4E: 00        .byte $00, $00, $3B, $3C, $3D, $3E, $3F, $40, $41   ; 
- D 1 - I - 0x012C67 04:AC57: 00        .byte $00, $00, $42, $43, $44, $45, $46, $47, $48   ; 
- D 1 - I - 0x012C70 04:AC60: 00        .byte $00, $49, $4A, $4B, $4C, $4A, $4D, $4E, $00   ; 
- D 1 - I - 0x012C79 04:AC69: 4F        .byte $4F, $50, $4A, $51, $52, $4A, $53, $54, $00   ; 
- D 1 - I - 0x012C82 04:AC72: 55        .byte $55, $56, $57, $58, $4A, $59, $5A, $5B, $00   ; 
- D 1 - I - 0x012C8B 04:AC7B: 5C        .byte $5C, $5D, $5E, $5F, $60, $61, $62, $00, $00   ; 
- D 1 - I - 0x012C94 04:AC84: 00        .byte $00, $00, $63, $64, $65, $00, $00, $00, $00   ; 
- D 1 - I - 0x012C9D 04:AC8D: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012CA6 04:AC96: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012CAF 04:AC9F: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 



_off010_ACA8_16:
_off010_ACA8_17:
_off010_ACA8_18:
_off010_ACA8_19:
_off010_ACA8_1A:
_off010_ACA8_1B:
_off010_ACA8_1C:
_off010_ACA8_1D:
_off010_ACA8_1E:
_off010_ACA8_1F:
_off010_ACA8_20:
_off010_ACA8_21:
_off010_ACA8_22:
_off010_ACA8_23:
_off010_ACA8_24:
_off010_ACA8_25:
- D 1 - I - 0x012CB8 04:ACA8: 00        .byte $00, $00, $66, $67, $68, $69, $00, $00, $00   ; 
- D 1 - I - 0x012CC1 04:ACB1: 00        .byte $00, $6A, $6B, $6C, $6D, $6E, $6F, $00, $00   ; 
- D 1 - I - 0x012CCA 04:ACBA: 00        .byte $00, $70, $71, $72, $73, $4A, $74, $00, $00   ; 
- D 1 - I - 0x012CD3 04:ACC3: 00        .byte $00, $75, $76, $77, $78, $4A, $79, $00, $00   ; 
- D 1 - I - 0x012CDC 04:ACCC: 00        .byte $00, $7A, $7B, $7C, $78, $4A, $7D, $00, $00   ; 
- D 1 - I - 0x012CE5 04:ACD5: 00        .byte $00, $7E, $7F, $80, $81, $4A, $82, $83, $6F   ; 
- D 1 - I - 0x012CEE 04:ACDE: 84        .byte $84, $85, $86, $87, $88, $89, $8A, $8B, $8C   ; 
- D 1 - I - 0x012CF7 04:ACE7: 8D        .byte $8D, $8E, $8F, $90, $91, $92, $93, $4A, $94   ; 
- D 1 - I - 0x012D00 04:ACF0: 95        .byte $95, $96, $97, $98, $99, $4A, $4A, $4A, $9A   ; 
- D 1 - I - 0x012D09 04:ACF9: 9B        .byte $9B, $9C, $4A, $4A, $4A, $4A, $4A, $9D, $9E   ; 
- D 1 - I - 0x012D12 04:AD02: 00        .byte $00, $9F, $A0, $A1, $A2, $A3, $A4, $A5, $00   ; 
- D 1 - I - 0x012D1B 04:AD0B: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012D24 04:AD14: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012D2D 04:AD1D: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012D36 04:AD26: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012D3F 04:AD2F: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 



_off010_AD38_31:
_off010_AD38_32:
_off010_AD38_33:
_off010_AD38_34:
_off010_AD38_35:
_off010_AD38_36:
_off010_AD38_37:
_off010_AD38_38:
_off010_AD38_39:
_off010_AD38_3A:
_off010_AD38_3B:
_off010_AD38_3C:
_off010_AD38_3D:
_off010_AD38_3E:
_off010_AD38_3F:
_off010_AD38_40:
- D 1 - I - 0x012D48 04:AD38: 00        .byte $00, $00, $01, $02, $03, $04, $00, $00, $00   ; 
- D 1 - I - 0x012D51 04:AD41: 00        .byte $00, $00, $05, $06, $06, $06, $07, $00, $00   ; 
- D 1 - I - 0x012D5A 04:AD4A: 00        .byte $00, $00, $08, $09, $0A, $0B, $0C, $00, $00   ; 
- D 1 - I - 0x012D63 04:AD53: 00        .byte $00, $0D, $0E, $0F, $10, $11, $12, $00, $00   ; 
- D 1 - I - 0x012D6C 04:AD5C: 00        .byte $00, $00, $13, $14, $15, $16, $17, $00, $00   ; 
- D 1 - I - 0x012D75 04:AD65: 00        .byte $00, $00, $18, $19, $1A, $1B, $00, $00, $00   ; 
- D 1 - I - 0x012D7E 04:AD6E: 00        .byte $00, $1C, $1D, $00, $00, $1E, $1F, $00, $00   ; 
- D 1 - I - 0x012D87 04:AD77: 20        .byte $20, $21, $22, $23, $24, $25, $26, $27, $00   ; 
- D 1 - I - 0x012D90 04:AD80: 28        .byte $28, $29, $2A, $2B, $06, $06, $2C, $2D, $00   ; 
- D 1 - I - 0x012D99 04:AD89: 2E        .byte $2E, $06, $06, $06, $06, $06, $06, $2F, $30   ; 
- D 1 - I - 0x012DA2 04:AD92: 31        .byte $31, $32, $06, $06, $06, $06, $06, $33, $34   ; 
- D 1 - I - 0x012DAB 04:AD9B: 35        .byte $35, $36, $37, $38, $39, $3A, $3B, $3C, $3D   ; 
- D 1 - I - 0x012DB4 04:ADA4: 3E        .byte $3E, $3F, $3F, $3F, $3F, $3F, $3F, $40, $41   ; 
- D 1 - I - 0x012DBD 04:ADAD: 42        .byte $42, $43, $3F, $3F, $3F, $3F, $3F, $44, $00   ; 
- D 1 - I - 0x012DC6 04:ADB6: 45        .byte $45, $46, $3F, $3F, $3F, $3F, $47, $48, $00   ; 
- D 1 - I - 0x012DCF 04:ADBF: 00        .byte $00, $49, $4A, $4B, $4C, $4D, $4E, $00, $00   ; 



_off010_ADC8_2B:
_off010_ADC8_30:
- D 1 - I - 0x012DD8 04:ADC8: 00        .byte $00, $00, $00, $00, $00, $00, $4F, $50, $51   ; 
- D 1 - I - 0x012DE1 04:ADD1: 00        .byte $00, $00, $00, $52, $53, $54, $55, $56, $57   ; 
- D 1 - I - 0x012DEA 04:ADDA: 00        .byte $00, $58, $59, $5A, $5B, $5C, $5D, $5E, $5F   ; 
- D 1 - I - 0x012DF3 04:ADE3: 60        .byte $60, $61, $62, $63, $64, $65, $66, $67, $00   ; 
- D 1 - I - 0x012DFC 04:ADEC: 68        .byte $68, $69, $6A, $6B, $6C, $6D, $00, $00, $00   ; 
- D 1 - I - 0x012E05 04:ADF5: 6E        .byte $6E, $6F, $70, $71, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012E0E 04:ADFE: 72        .byte $72, $73, $74, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012E17 04:AE07: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012E20 04:AE10: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012E29 04:AE19: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012E32 04:AE22: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012E3B 04:AE2B: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012E44 04:AE34: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012E4D 04:AE3D: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012E56 04:AE46: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012E5F 04:AE4F: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 



_off010_AE58_2C:
_off010_AE58_2F:
- D 1 - I - 0x012E68 04:AE58: 00        .byte $00, $00, $00, $00, $00, $00, $75, $76, $51   ; 
- D 1 - I - 0x012E71 04:AE61: 00        .byte $00, $00, $00, $00, $77, $78, $79, $7A, $7B   ; 
- D 1 - I - 0x012E7A 04:AE6A: 00        .byte $00, $00, $75, $7C, $7D, $7E, $7F, $80, $81   ; 
- D 1 - I - 0x012E83 04:AE73: 82        .byte $82, $83, $84, $7A, $85, $86, $87, $67, $00   ; 
- D 1 - I - 0x012E8C 04:AE7C: 88        .byte $88, $69, $89, $80, $8A, $71, $00, $00, $00   ; 
- D 1 - I - 0x012E95 04:AE85: 8B        .byte $8B, $8C, $8D, $67, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012E9E 04:AE8E: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012EA7 04:AE97: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012EB0 04:AEA0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012EB9 04:AEA9: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012EC2 04:AEB2: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012ECB 04:AEBB: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012ED4 04:AEC4: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012EDD 04:AECD: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012EE6 04:AED6: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012EEF 04:AEDF: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 



_off010_AEE8_2D:
_off010_AEE8_2E:
- D 1 - I - 0x012EF8 04:AEE8: 00        .byte $00, $00, $00, $00, $00, $00, $8E, $76, $51   ; 
- D 1 - I - 0x012F01 04:AEF1: 00        .byte $00, $00, $00, $00, $8F, $90, $91, $7A, $92   ; 
- D 1 - I - 0x012F0A 04:AEFA: 00        .byte $00, $00, $75, $93, $94, $95, $96, $97, $98   ; 
- D 1 - I - 0x012F13 04:AF03: 82        .byte $82, $83, $84, $7A, $99, $9A, $9B, $67, $00   ; 
- D 1 - I - 0x012F1C 04:AF0C: 88        .byte $88, $69, $89, $9C, $9D, $9E, $00, $00, $00   ; 
- D 1 - I - 0x012F25 04:AF15: 8B        .byte $8B, $8C, $8D, $67, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012F2E 04:AF1E: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012F37 04:AF27: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012F40 04:AF30: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012F49 04:AF39: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012F52 04:AF42: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012F5B 04:AF4B: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012F64 04:AF54: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012F6D 04:AF5D: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012F76 04:AF66: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012F7F 04:AF6F: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 



_off010_AF78_41:
_off010_AF78_42:
_off010_AF78_43:
_off010_AF78_44:
_off010_AF78_45:
_off010_AF78_46:
_off010_AF78_47:
_off010_AF78_48:
- D 1 - I - 0x012F88 04:AF78: 9F        .byte $9F, $A0, $A1, $A2, $A3, $00, $00, $00, $00   ; 
- D 1 - I - 0x012F91 04:AF81: A4        .byte $A4, $A5, $A6, $06, $A7, $A8, $00, $00, $00   ; 
- D 1 - I - 0x012F9A 04:AF8A: A9        .byte $A9, $AA, $AB, $06, $AC, $AD, $00, $00, $00   ; 
- D 1 - I - 0x012FA3 04:AF93: AE        .byte $AE, $AF, $06, $06, $B0, $B1, $00, $00, $00   ; 
- D 1 - I - 0x012FAC 04:AF9C: B2        .byte $B2, $B3, $06, $06, $06, $B4, $00, $00, $00   ; 
- D 1 - I - 0x012FB5 04:AFA5: B5        .byte $B5, $B6, $06, $06, $B7, $B8, $00, $00, $00   ; 
- D 1 - I - 0x012FBE 04:AFAE: B9        .byte $B9, $BA, $BB, $06, $BC, $BD, $00, $00, $00   ; 
- D 1 - I - 0x012FC7 04:AFB7: BE        .byte $BE, $BF, $C0, $06, $C1, $C2, $00, $00, $00   ; 
- D 1 - I - 0x012FD0 04:AFC0: C3        .byte $C3, $C4, $C5, $C6, $C7, $00, $00, $00, $00   ; 
- D 1 - I - 0x012FD9 04:AFC9: 00        .byte $00, $C8, $C9, $CA, $CB, $00, $00, $00, $00   ; 
- D 1 - I - 0x012FE2 04:AFD2: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012FEB 04:AFDB: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012FF4 04:AFE4: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x012FFD 04:AFED: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x013006 04:AFF6: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x01300F 04:AFFF: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 



ofs_0x013018_1B:
; tiles for CSG IMAGESOFT INC PRESENTS
C D 1 - I - 0x013018 04:B008: A9 58     LDA #< tbl_B058
C D 1 - I - 0x01301A 04:B00A: 85 22     STA ram_0022
C D 1 - I - 0x01301C 04:B00C: A9 B0     LDA #> tbl_B058
C D 1 - I - 0x01301E 04:B00E: 85 23     STA ram_0023
C D 1 - I - 0x013020 04:B010: A0 00     LDY #$00
C D 1 - I - 0x013022 04:B012: 8C 06 20  STY $2006
C D 1 - I - 0x013025 04:B015: 8C 06 20  STY $2006
; bzk bug, X should be 29 here
; instead X = 00 from way back, so it currently reads from B058 up to C047
C D 1 - I - 0x013028 04:B018: 20 F1 99  JSR sub_99F1_write_chr_to_ppu
C D 1 - I - 0x01302B 04:B01B: A2 49     LDX #$49
C D 1 - I - 0x01302D 04:B01D: 20 04 84  JSR sub_8404
C D 1 - I - 0x013030 04:B020: A2 4A     LDX #$4A
C D 1 - I - 0x013032 04:B022: 20 04 84  JSR sub_8404
C D 1 - I - 0x013035 04:B025: A9 64     LDA #$64
C D 1 - I - 0x013037 04:B027: 8D 00 02  STA ram_spr_Y
C D 1 - I - 0x01303A 04:B02A: A9 28     LDA #$28
C D 1 - I - 0x01303C 04:B02C: 8D 01 02  STA ram_spr_T
C D 1 - I - 0x01303F 04:B02F: A9 00     LDA #$00
C D 1 - I - 0x013041 04:B031: 8D 02 02  STA ram_spr_A
C D 1 - I - 0x013044 04:B034: A9 8A     LDA #$8A
C D 1 - I - 0x013046 04:B036: 8D 03 02  STA ram_spr_X
; attributes 23D8-23DF
C D 1 - I - 0x013049 04:B039: A9 23     LDA #> $23D8
C D 1 - I - 0x01304B 04:B03B: 8D 06 20  STA $2006
C D 1 - I - 0x01304E 04:B03E: A9 D8     LDA #< $23D8
C D 1 - I - 0x013050 04:B040: 8D 06 20  STA $2006
C D 1 - I - 0x013053 04:B043: A2 08     LDX #$08
C D 1 - I - 0x013055 04:B045: A9 05     LDA #con_tile_id + $05
bra_B047_loop:
C D 1 - I - 0x013057 04:B047: 8D 07 20  STA $2007
C D 1 - I - 0x01305A 04:B04A: CA        DEX
C D 1 - I - 0x01305B 04:B04B: D0 FA     BNE bra_B047_loop
; attributes 23E0-23E7
C D 1 - I - 0x01305D 04:B04D: A2 08     LDX #$08
C D 1 - I - 0x01305F 04:B04F: A9 0A     LDA #con_tile_id + $0A
bra_B051_loop:
C D 1 - I - 0x013061 04:B051: 8D 07 20  STA $2007
C D 1 - I - 0x013064 04:B054: CA        DEX
C D 1 - I - 0x013065 04:B055: D0 FA     BNE bra_B051_loop
C D 1 - I - 0x013067 04:B057: 60        RTS



tbl_B058:
    .incbin "incbin/chr/02___B058_B2E7.chr"



_off010_B2E8_49:
- D 1 - I - 0x0132F8 04:B2E8: 01        .byte $01, $02, $03, $04, $05, $01, $02, $03, $04, $05, $01, $02   ; 
- D 1 - I - 0x013304 04:B2F4: 06        .byte $06, $07, $08, $09, $0A, $0B, $0C, $0D, $0E, $0F, $10, $11   ; 
- D 1 - I - 0x013310 04:B300: 06        .byte $06, $12, $13, $14, $15, $16, $17, $18, $19, $1A, $1B, $1C   ; 
- D 1 - I - 0x01331C 04:B30C: 1D        .byte $1D, $1E, $1F, $20, $21, $1D, $1E, $1F, $20, $21, $1D, $1E   ; 



_off010_B318_4A:
- D 1 - I - 0x013328 04:B318: 22        .byte $22, $23, $24, $25, $26, $27   ; 


; bzk garbage
- D 1 - I - 0x01332E 04:B31E: 28        .byte $28   ; 



ofs_0x01332F_21:
C D 1 - I - 0x01332F 04:B31F: A9 EC     LDA #< tbl_B3EC
C D 1 - I - 0x013331 04:B321: 85 22     STA ram_0022
C D 1 - I - 0x013333 04:B323: A9 B3     LDA #> tbl_B3EC
C D 1 - I - 0x013335 04:B325: 85 23     STA ram_0023
C D 1 - I - 0x013337 04:B327: A9 10     LDA #> $1000
C D 1 - I - 0x013339 04:B329: 8D 06 20  STA $2006
C D 1 - I - 0x01333C 04:B32C: A9 00     LDA #< $1000
C D 1 - I - 0x01333E 04:B32E: 8D 06 20  STA $2006
C D 1 - I - 0x013341 04:B331: A2 71     LDX #$71
; bzk optimize, we are already in bank 02
C D 1 - I - 0x013343 04:B333: A9 02     LDA #con_prg_bank + $02
C D 1 - I - 0x013345 04:B335: 20 44 B3  JSR sub_B344
C D 1 - I - 0x013348 04:B338: A9 AA     LDA #< tbl_0x00C4BA
C D 1 - I - 0x01334A 04:B33A: 85 22     STA ram_0022
C D 1 - I - 0x01334C 04:B33C: A9 C4     LDA #> tbl_0x00C4BA
C D 1 - I - 0x01334E 04:B33E: 85 23     STA ram_0023
C D 1 - I - 0x013350 04:B340: A2 24     LDX #$24
C D 1 - I - 0x013352 04:B342: A9 01     LDA #con_prg_bank + $01
sub_B344:
C D 1 - I - 0x013354 04:B344: 85 0D     STA ram_000D
bra_B346_loop:
C D 1 - I - 0x013356 04:B346: A0 00     LDY #$00
bra_B348_loop:
C D 1 - I - 0x013358 04:B348: A5 0D     LDA ram_000D
C D 1 - I - 0x01335A 04:B34A: 20 21 FF  JSR sub_inc_FF21
C D 1 - I - 0x01335D 04:B34D: 8D 07 20  STA $2007
C D 1 - I - 0x013360 04:B350: C8        INY
C D 1 - I - 0x013361 04:B351: C0 10     CPY #$10
C D 1 - I - 0x013363 04:B353: D0 F3     BNE bra_B348_loop
C D 1 - I - 0x013365 04:B355: A5 22     LDA ram_0022
C D 1 - I - 0x013367 04:B357: 18        CLC
C D 1 - I - 0x013368 04:B358: 69 10     ADC #$10
C D 1 - I - 0x01336A 04:B35A: 85 22     STA ram_0022
C D 1 - I - 0x01336C 04:B35C: 90 02     BCC bra_B360_not_overflow
C D 1 - I - 0x01336E 04:B35E: E6 23     INC ram_0023
bra_B360_not_overflow:
C D 1 - I - 0x013370 04:B360: CA        DEX
C D 1 - I - 0x013371 04:B361: D0 E3     BNE bra_B346_loop
C D 1 - I - 0x013373 04:B363: 60        RTS



ofs_0x013374_22:
C D 1 - I - 0x013374 04:B364: BD 00 03  LDA ram_0300,X
C D 1 - I - 0x013377 04:B367: 85 13     STA ram_0013
C D 1 - I - 0x013379 04:B369: BD 05 03  LDA ram_0305,X
C D 1 - I - 0x01337C 04:B36C: 85 14     STA ram_0014
C D 1 - I - 0x01337E 04:B36E: BD 0A 03  LDA ram_030A,X
C D 1 - I - 0x013381 04:B371: 85 0D     STA ram_000D
C D 1 - I - 0x013383 04:B373: BD 14 03  LDA ram_0314,X
C D 1 - I - 0x013386 04:B376: 85 0F     STA ram_000F
C D 1 - I - 0x013388 04:B378: BD 0F 03  LDA ram_030F,X
C D 1 - I - 0x01338B 04:B37B: A8        TAY
C D 1 - I - 0x01338C 04:B37C: A6 00     LDX ram_0000
C D 1 - I - 0x01338E 04:B37E: B9 FC BA  LDA tbl_BAFC_spr_data_lo,Y
C D 1 - I - 0x013391 04:B381: 85 22     STA ram_0022
C D 1 - I - 0x013393 04:B383: B9 11 BB  LDA tbl_BB11_spr_data_hi,Y
C D 1 - I - 0x013396 04:B386: 85 23     STA ram_0023
C D 1 - I - 0x013398 04:B388: A0 00     LDY #$00
C D 1 - I - 0x01339A 04:B38A: B1 22     LDA (ram_0022),Y
C D 1 - I - 0x01339C 04:B38C: 85 11     STA ram_0011
C D 1 - I - 0x01339E 04:B38E: C8        INY
C D 1 - I - 0x01339F 04:B38F: B1 22     LDA (ram_0022),Y
C D 1 - I - 0x0133A1 04:B391: 85 0E     STA ram_000E
bra_B393_loop:
C D 1 - I - 0x0133A3 04:B393: A5 13     LDA ram_0013
C D 1 - I - 0x0133A5 04:B395: 48        PHA
C D 1 - I - 0x0133A6 04:B396: A5 11     LDA ram_0011
C D 1 - I - 0x0133A8 04:B398: 48        PHA
bra_B399_loop:
C D 1 - I - 0x0133A9 04:B399: A5 13     LDA ram_0013
C D 1 - I - 0x0133AB 04:B39B: 9D 03 02  STA ram_spr_X,X
C D 1 - I - 0x0133AE 04:B39E: 18        CLC
C D 1 - I - 0x0133AF 04:B39F: 69 08     ADC #$08
C D 1 - I - 0x0133B1 04:B3A1: 85 13     STA ram_0013
C D 1 - I - 0x0133B3 04:B3A3: A5 14     LDA ram_0014
C D 1 - I - 0x0133B5 04:B3A5: 9D 00 02  STA ram_spr_Y,X
C D 1 - I - 0x0133B8 04:B3A8: A5 0D     LDA ram_000D
C D 1 - I - 0x0133BA 04:B3AA: 9D 02 02  STA ram_spr_A,X
C D 1 - I - 0x0133BD 04:B3AD: C8        INY
C D 1 - I - 0x0133BE 04:B3AE: B1 22     LDA (ram_0022),Y
C D 1 - I - 0x0133C0 04:B3B0: 9D 01 02  STA ram_spr_T,X
C D 1 - I - 0x0133C3 04:B3B3: E8        INX
C D 1 - I - 0x0133C4 04:B3B4: E8        INX
C D 1 - I - 0x0133C5 04:B3B5: E8        INX
C D 1 - I - 0x0133C6 04:B3B6: E8        INX
C D 1 - I - 0x0133C7 04:B3B7: C6 11     DEC ram_0011
C D 1 - I - 0x0133C9 04:B3B9: D0 DE     BNE bra_B399_loop
C D 1 - I - 0x0133CB 04:B3BB: A5 0F     LDA ram_000F
C D 1 - I - 0x0133CD 04:B3BD: F0 19     BEQ bra_B3D8
C D 1 - I - 0x0133CF 04:B3BF: BD FD 01  LDA ram_01FD,X
C D 1 - I - 0x0133D2 04:B3C2: 48        PHA
C D 1 - I - 0x0133D3 04:B3C3: BD F9 01  LDA ram_01F9,X
C D 1 - I - 0x0133D6 04:B3C6: 9D FD 01  STA ram_01FD,X
C D 1 - I - 0x0133D9 04:B3C9: 68        PLA
C D 1 - I - 0x0133DA 04:B3CA: 9D F9 01  STA ram_01F9,X
C D 1 - I - 0x0133DD 04:B3CD: BD FE 01  LDA ram_01FE,X
C D 1 - I - 0x0133E0 04:B3D0: 49 40     EOR #$40
C D 1 - I - 0x0133E2 04:B3D2: 9D FA 01  STA ram_01FA,X
C D 1 - I - 0x0133E5 04:B3D5: 9D FE 01  STA ram_01FE,X
bra_B3D8:
C D 1 - I - 0x0133E8 04:B3D8: A5 14     LDA ram_0014
C D 1 - I - 0x0133EA 04:B3DA: 18        CLC
C D 1 - I - 0x0133EB 04:B3DB: 69 08     ADC #$08
C D 1 - I - 0x0133ED 04:B3DD: 85 14     STA ram_0014
C D 1 - I - 0x0133EF 04:B3DF: 68        PLA
C D 1 - I - 0x0133F0 04:B3E0: 85 11     STA ram_0011
C D 1 - I - 0x0133F2 04:B3E2: 68        PLA
C D 1 - I - 0x0133F3 04:B3E3: 85 13     STA ram_0013
C D 1 - I - 0x0133F5 04:B3E5: C6 0E     DEC ram_000E
C D 1 - I - 0x0133F7 04:B3E7: D0 AA     BNE bra_B393_loop
C D 1 - I - 0x0133F9 04:B3E9: 86 00     STX ram_0000
C D 1 - I - 0x0133FB 04:B3EB: 60        RTS



tbl_B3EC:
    .incbin "incbin/chr/02___B3EC_BAFB.chr"



tbl_BAFC_spr_data_lo:
- D 1 - I - 0x013B0C 04:BAFC: 26        .byte < _off013_BB26_00   ; 
- D 1 - I - 0x013B0D 04:BAFD: 2E        .byte < _off013_BB2E_01   ; 
- D 1 - I - 0x013B0E 04:BAFE: 36        .byte < _off013_BB36_02   ; 
- D 1 - I - 0x013B0F 04:BAFF: 3E        .byte < _off013_BB3E_03   ; 
- D 1 - I - 0x013B10 04:BB00: 46        .byte < _off013_BB46_04   ; 
- D 1 - I - 0x013B11 04:BB01: 50        .byte < _off013_BB50_05   ; 
- D 1 - I - 0x013B12 04:BB02: 5A        .byte < _off013_BB5A_06   ; 
- D 1 - I - 0x013B13 04:BB03: 64        .byte < _off013_BB64_07   ; 
- D 1 - I - 0x013B14 04:BB04: 6E        .byte < _off013_BB6E_08   ; 
- D 1 - I - 0x013B15 04:BB05: 78        .byte < _off013_BB78_09   ; 
- D 1 - I - 0x013B16 04:BB06: 80        .byte < _off013_BB80_0A   ; 
- D 1 - I - 0x013B17 04:BB07: 8A        .byte < _off013_BB8A_0B   ; 
- D 1 - I - 0x013B18 04:BB08: 92        .byte < _off013_BB92_0C   ; 
- D 1 - I - 0x013B19 04:BB09: 9A        .byte < _off013_BB9A_0D   ; 
- D 1 - I - 0x013B1A 04:BB0A: A2        .byte < _off013_BBA2_0E   ; 
- D 1 - I - 0x013B1B 04:BB0B: B0        .byte < _off013_BBB0_0F   ; 
- D 1 - I - 0x013B1C 04:BB0C: BB        .byte < _off013_BBBB_10   ; 
- D 1 - I - 0x013B1D 04:BB0D: C9        .byte < _off013_BBC9_11   ; 
- D 1 - I - 0x013B1E 04:BB0E: D9        .byte < _off013_BBD9_12   ; 
- D 1 - I - 0x013B1F 04:BB0F: E1        .byte < _off013_BBE1_13   ; 
- D 1 - I - 0x013B20 04:BB10: E4        .byte < _off013_BBE4_14   ; 

tbl_BB11_spr_data_hi:
- D 1 - I - 0x013B21 04:BB11: BB        .byte > _off013_BB26_00   ; 
- D 1 - I - 0x013B22 04:BB12: BB        .byte > _off013_BB2E_01   ; 
- D 1 - I - 0x013B23 04:BB13: BB        .byte > _off013_BB36_02   ; 
- D 1 - I - 0x013B24 04:BB14: BB        .byte > _off013_BB3E_03   ; 
- D 1 - I - 0x013B25 04:BB15: BB        .byte > _off013_BB46_04   ; 
- D 1 - I - 0x013B26 04:BB16: BB        .byte > _off013_BB50_05   ; 
- D 1 - I - 0x013B27 04:BB17: BB        .byte > _off013_BB5A_06   ; 
- D 1 - I - 0x013B28 04:BB18: BB        .byte > _off013_BB64_07   ; 
- D 1 - I - 0x013B29 04:BB19: BB        .byte > _off013_BB6E_08   ; 
- D 1 - I - 0x013B2A 04:BB1A: BB        .byte > _off013_BB78_09   ; 
- D 1 - I - 0x013B2B 04:BB1B: BB        .byte > _off013_BB80_0A   ; 
- D 1 - I - 0x013B2C 04:BB1C: BB        .byte > _off013_BB8A_0B   ; 
- D 1 - I - 0x013B2D 04:BB1D: BB        .byte > _off013_BB92_0C   ; 
- D 1 - I - 0x013B2E 04:BB1E: BB        .byte > _off013_BB9A_0D   ; 
- D 1 - I - 0x013B2F 04:BB1F: BB        .byte > _off013_BBA2_0E   ; 
- D 1 - I - 0x013B30 04:BB20: BB        .byte > _off013_BBB0_0F   ; 
- D 1 - I - 0x013B31 04:BB21: BB        .byte > _off013_BBBB_10   ; 
- D 1 - I - 0x013B32 04:BB22: BB        .byte > _off013_BBC9_11   ; 
- D 1 - I - 0x013B33 04:BB23: BB        .byte > _off013_BBD9_12   ; 
- D 1 - I - 0x013B34 04:BB24: BB        .byte > _off013_BBE1_13   ; 
- D 1 - I - 0x013B35 04:BB25: BB        .byte > _off013_BBE4_14   ; 



_off013_BB26_00:
- D 1 - I - 0x013B36 04:BB26: 02        .byte $02   ; columns
- D 1 - I - 0x013B37 04:BB27: 03        .byte $03   ; rows
- D 1 - I - 0x013B38 04:BB28: 01        .byte $01, $02   ; 
- D 1 - I - 0x013B3A 04:BB2A: 03        .byte $03, $04   ; 
- D 1 - I - 0x013B3C 04:BB2C: 05        .byte $05, $06   ; 

_off013_BB2E_01:
- D 1 - I - 0x013B3E 04:BB2E: 02        .byte $02   ; columns
- D 1 - I - 0x013B3F 04:BB2F: 03        .byte $03   ; rows
- D 1 - I - 0x013B40 04:BB30: 07        .byte $07, $08   ; 
- D 1 - I - 0x013B42 04:BB32: 09        .byte $09, $0A   ; 
- D 1 - I - 0x013B44 04:BB34: 0B        .byte $0B, $0C   ; 

_off013_BB36_02:
- D 1 - I - 0x013B46 04:BB36: 02        .byte $02   ; columns
- D 1 - I - 0x013B47 04:BB37: 03        .byte $03   ; rows
- D 1 - I - 0x013B48 04:BB38: 0D        .byte $0D, $0E   ; 
- D 1 - I - 0x013B4A 04:BB3A: 0F        .byte $0F, $10   ; 
- D 1 - I - 0x013B4C 04:BB3C: 11        .byte $11, $12   ; 

_off013_BB3E_03:
- D 1 - I - 0x013B4E 04:BB3E: 02        .byte $02   ; columns
- D 1 - I - 0x013B4F 04:BB3F: 03        .byte $03   ; rows
- D 1 - I - 0x013B50 04:BB40: 07        .byte $07, $13   ; 
- D 1 - I - 0x013B52 04:BB42: 14        .byte $14, $15   ; 
- D 1 - I - 0x013B54 04:BB44: 16        .byte $16, $0C   ; 

_off013_BB46_04:
- D 1 - I - 0x013B56 04:BB46: 02        .byte $02   ; columns
- D 1 - I - 0x013B57 04:BB47: 04        .byte $04   ; rows
- D 1 - I - 0x013B58 04:BB48: 17        .byte $17, $18   ; 
- D 1 - I - 0x013B5A 04:BB4A: 19        .byte $19, $1A   ; 
- D 1 - I - 0x013B5C 04:BB4C: 1B        .byte $1B, $1C   ; 
- D 1 - I - 0x013B5E 04:BB4E: 1D        .byte $1D, $1E   ; 

_off013_BB50_05:
- D 1 - I - 0x013B60 04:BB50: 02        .byte $02   ; columns
- D 1 - I - 0x013B61 04:BB51: 04        .byte $04   ; rows
- D 1 - I - 0x013B62 04:BB52: 17        .byte $17, $18   ; 
- D 1 - I - 0x013B64 04:BB54: 1F        .byte $1F, $20   ; 
- D 1 - I - 0x013B66 04:BB56: 21        .byte $21, $22   ; 
- D 1 - I - 0x013B68 04:BB58: 23        .byte $23, $24   ; 

_off013_BB5A_06:
- D 1 - I - 0x013B6A 04:BB5A: 02        .byte $02   ; columns
- D 1 - I - 0x013B6B 04:BB5B: 04        .byte $04   ; rows
- D 1 - I - 0x013B6C 04:BB5C: 17        .byte $17, $18   ; 
- D 1 - I - 0x013B6E 04:BB5E: 19        .byte $19, $1A   ; 
- D 1 - I - 0x013B70 04:BB60: 1B        .byte $1B, $1C   ; 
- D 1 - I - 0x013B72 04:BB62: 1D        .byte $1D, $1E   ; 

_off013_BB64_07:
- D 1 - I - 0x013B74 04:BB64: 02        .byte $02   ; columns
- D 1 - I - 0x013B75 04:BB65: 04        .byte $04   ; rows
- D 1 - I - 0x013B76 04:BB66: 17        .byte $17, $18   ; 
- D 1 - I - 0x013B78 04:BB68: 25        .byte $25, $1A   ; 
- D 1 - I - 0x013B7A 04:BB6A: 26        .byte $26, $27   ; 
- D 1 - I - 0x013B7C 04:BB6C: 28        .byte $28, $29   ; 

_off013_BB6E_08:
- D 1 - I - 0x013B7E 04:BB6E: 02        .byte $02   ; columns
- D 1 - I - 0x013B7F 04:BB6F: 04        .byte $04   ; rows
- D 1 - I - 0x013B80 04:BB70: 2A        .byte $2A, $2B   ; 
- D 1 - I - 0x013B82 04:BB72: 2C        .byte $2C, $2D   ; 
- D 1 - I - 0x013B84 04:BB74: 2E        .byte $2E, $2F   ; 
- D 1 - I - 0x013B86 04:BB76: 00        .byte $00, $00   ; 

_off013_BB78_09:
- D 1 - I - 0x013B88 04:BB78: 02        .byte $02   ; columns
- D 1 - I - 0x013B89 04:BB79: 03        .byte $03   ; rows
- D 1 - I - 0x013B8A 04:BB7A: 00        .byte $00, $30   ; 
- D 1 - I - 0x013B8C 04:BB7C: 31        .byte $31, $32   ; 
- D 1 - I - 0x013B8E 04:BB7E: 33        .byte $33, $34   ; 

_off013_BB80_0A:
- D 1 - I - 0x013B90 04:BB80: 02        .byte $02   ; columns
- D 1 - I - 0x013B91 04:BB81: 04        .byte $04   ; rows
- D 1 - I - 0x013B92 04:BB82: 35        .byte $35, $36   ; 
- D 1 - I - 0x013B94 04:BB84: 37        .byte $37, $38   ; 
- D 1 - I - 0x013B96 04:BB86: 39        .byte $39, $3A   ; 
- D 1 - I - 0x013B98 04:BB88: 3B        .byte $3B, $3C   ; 

_off013_BB8A_0B:
- D 1 - I - 0x013B9A 04:BB8A: 02        .byte $02   ; columns
- D 1 - I - 0x013B9B 04:BB8B: 03        .byte $03   ; rows
- D 1 - I - 0x013B9C 04:BB8C: 71        .byte $71, $72   ; 
- D 1 - I - 0x013B9E 04:BB8E: 73        .byte $73, $74   ; 
- D 1 - I - 0x013BA0 04:BB90: 75        .byte $75, $76   ; 

_off013_BB92_0C:
- D 1 - I - 0x013BA2 04:BB92: 02        .byte $02   ; columns
- D 1 - I - 0x013BA3 04:BB93: 03        .byte $03   ; rows
- D 1 - I - 0x013BA4 04:BB94: 77        .byte $77, $78   ; 
- D 1 - I - 0x013BA6 04:BB96: 79        .byte $79, $7A   ; 
- D 1 - I - 0x013BA8 04:BB98: 7B        .byte $7B, $7C   ; 

_off013_BB9A_0D:
- D 1 - I - 0x013BAA 04:BB9A: 02        .byte $02   ; columns
- D 1 - I - 0x013BAB 04:BB9B: 03        .byte $03   ; rows
- D 1 - I - 0x013BAC 04:BB9C: 7D        .byte $7D, $7E   ; 
- D 1 - I - 0x013BAE 04:BB9E: 7F        .byte $7F, $80   ; 
- D 1 - I - 0x013BB0 04:BBA0: 81        .byte $81, $82   ; 

_off013_BBA2_0E:
- D 1 - I - 0x013BB2 04:BBA2: 03        .byte $03   ; columns
- D 1 - I - 0x013BB3 04:BBA3: 04        .byte $04   ; rows
- D 1 - I - 0x013BB4 04:BBA4: 3D        .byte $3D, $3E, $3F   ; 
- D 1 - I - 0x013BB7 04:BBA7: 40        .byte $40, $41, $42   ; 
- D 1 - I - 0x013BBA 04:BBAA: 43        .byte $43, $44, $45   ; 
- D 1 - I - 0x013BBD 04:BBAD: 46        .byte $46, $47, $00   ; 

_off013_BBB0_0F:
- D 1 - I - 0x013BC0 04:BBB0: 03        .byte $03   ; columns
- D 1 - I - 0x013BC1 04:BBB1: 03        .byte $03   ; rows
- D 1 - I - 0x013BC2 04:BBB2: 48        .byte $48, $49, $4A   ; 
- D 1 - I - 0x013BC5 04:BBB5: 4B        .byte $4B, $4C, $4D   ; 
- D 1 - I - 0x013BC8 04:BBB8: 4E        .byte $4E, $4F, $50   ; 

_off013_BBBB_10:
- D 1 - I - 0x013BCB 04:BBBB: 03        .byte $03   ; columns
- D 1 - I - 0x013BCC 04:BBBC: 04        .byte $04   ; rows
- D 1 - I - 0x013BCD 04:BBBD: 51        .byte $51, $52, $53   ; 
- D 1 - I - 0x013BD0 04:BBC0: 54        .byte $54, $55, $56   ; 
- D 1 - I - 0x013BD3 04:BBC3: 57        .byte $57, $58, $59   ; 
- D 1 - I - 0x013BD6 04:BBC6: 00        .byte $00, $5A, $5B   ; 

_off013_BBC9_11:
- D 1 - I - 0x013BD9 04:BBC9: 02        .byte $02   ; columns
- D 1 - I - 0x013BDA 04:BBCA: 07        .byte $07   ; rows
- D 1 - I - 0x013BDB 04:BBCB: 68        .byte $68, $69   ; 
- D 1 - I - 0x013BDD 04:BBCD: 66        .byte $66, $67   ; 
- D 1 - I - 0x013BDF 04:BBCF: 64        .byte $64, $65   ; 
- D 1 - I - 0x013BE1 04:BBD1: 62        .byte $62, $63   ; 
- D 1 - I - 0x013BE3 04:BBD3: 60        .byte $60, $61   ; 
- D 1 - I - 0x013BE5 04:BBD5: 5E        .byte $5E, $5F   ; 
- D 1 - I - 0x013BE7 04:BBD7: 5C        .byte $5C, $5D   ; 

_off013_BBD9_12:
- D 1 - I - 0x013BE9 04:BBD9: 02        .byte $02   ; columns
- D 1 - I - 0x013BEA 04:BBDA: 03        .byte $03   ; rows
- D 1 - I - 0x013BEB 04:BBDB: 6A        .byte $6A, $6B   ; 
- D 1 - I - 0x013BED 04:BBDD: 6C        .byte $6C, $6C   ; 
- D 1 - I - 0x013BEF 04:BBDF: 6D        .byte $6D, $6E   ; 

_off013_BBE1_13:
- D 1 - I - 0x013BF1 04:BBE1: 01        .byte $01   ; columns
- D 1 - I - 0x013BF2 04:BBE2: 01        .byte $01   ; rows
- D 1 - I - 0x013BF3 04:BBE3: 6F        .byte $6F   ; 

_off013_BBE4_14:
- D 1 - I - 0x013BF4 04:BBE4: 01        .byte $01   ; columns
- D 1 - I - 0x013BF5 04:BBE5: 01        .byte $01   ; rows
- D 1 - I - 0x013BF6 04:BBE6: 70        .byte $70   ; 

; pause cheat

ofs_0x013BF7_25_enter_cheat:
; sectet combination during pause
; bzk optimize, this code is executed many times per frame
C D 1 - I - 0x013BF7 04:BBE7: 8A        TXA
C D 1 - I - 0x013BF8 04:BBE8: 48        PHA
C D 1 - I - 0x013BF9 04:BBE9: A5 0A     LDA ram_buttons
C D 1 - I - 0x013BFB 04:BBEB: 0A        ASL
C D 1 - I - 0x013BFC 04:BBEC: 0A        ASL
C D 1 - I - 0x013BFD 04:BBED: 6E 6E 07  ROR ram_076E    ; B
C D 1 - I - 0x013C00 04:BBF0: 0A        ASL
C D 1 - I - 0x013C01 04:BBF1: 0A        ASL
C D 1 - I - 0x013C02 04:BBF2: 6E 70 07  ROR ram_0770    ; Start
C D 1 - I - 0x013C05 04:BBF5: AE BA 07  LDX ram_07BA    ; combination counter
C D 1 - I - 0x013C08 04:BBF8: 2C 70 07  BIT ram_0770    ; Start
C D 1 - I - 0x013C0B 04:BBFB: 10 0B     BPL bra_BC08_start_not_pressed
C D 1 - I - 0x013C0D 04:BBFD: 70 09     BVS bra_BC08_start_not_pressed
C D 1 - I - 0x013C0F 04:BBFF: BD 3F BC  LDA tbl_BC3F_cheat_combination,X
C D 1 - I - 0x013C12 04:BC02: C9 01     CMP #$01
C D 1 - I - 0x013C14 04:BC04: D0 31     BNE bra_BC37_incorret_input
C D 1 - I - 0x013C16 04:BC06: F0 0C     BEQ bra_BC14_corret_input
bra_BC08_start_not_pressed:
C D 1 - I - 0x013C18 04:BC08: 2C 6E 07  BIT ram_076E    ; B
C D 1 - I - 0x013C1B 04:BC0B: 10 0A     BPL bra_BC17_B_not_pressed
C D 1 - I - 0x013C1D 04:BC0D: 70 08     BVS bra_BC17_B_not_pressed
C D 1 - I - 0x013C1F 04:BC0F: BD 3F BC  LDA tbl_BC3F_cheat_combination,X
C D 1 - I - 0x013C22 04:BC12: D0 23     BNE bra_BC37_incorret_input
bra_BC14_corret_input:
C D 1 - I - 0x013C24 04:BC14: EE BA 07  INC ram_07BA    ; combination counter
bra_BC17_B_not_pressed:
C D 1 - I - 0x013C27 04:BC17: AD BA 07  LDA ram_07BA    ; combination counter
C D 1 - I - 0x013C2A 04:BC1A: C9 20     CMP #$20
C D 1 - I - 0x013C2C 04:BC1C: D0 16     BNE bra_BC34_combination_is_not_complete
C D 1 - I - 0x013C2E 04:BC1E: A9 5A     LDA #$5A    ; 90 lives
C D 1 - I - 0x013C30 04:BC20: 8D 89 07  STA ram_lives
C D 1 - I - 0x013C33 04:BC23: A9 04     LDA #$04    ; max amount
C D 1 - I - 0x013C35 04:BC25: 8D 84 07  STA ram_potion_amount
C D 1 - I - 0x013C38 04:BC28: 8D 85 07  STA ram_potion_amount + $01
C D 1 - I - 0x013C3B 04:BC2B: 8D 86 07  STA ram_potion_amount + $02
C D 1 - I - 0x013C3E 04:BC2E: 8D 87 07  STA ram_potion_amount + $03
C D 1 - I - 0x013C41 04:BC31: EE 10 01  INC ram_buffer_palette + $10
bra_BC34_combination_is_not_complete:
C D 1 - I - 0x013C44 04:BC34: 68        PLA
C D 1 - I - 0x013C45 04:BC35: AA        TAX
C D 1 - I - 0x013C46 04:BC36: 60        RTS
bra_BC37_incorret_input:
; reset input counter
C D 1 - I - 0x013C47 04:BC37: A9 00     LDA #$00
C D 1 - I - 0x013C49 04:BC39: 8D BA 07  STA ram_07BA
C D 1 - I - 0x013C4C 04:BC3C: 68        PLA
C D 1 - I - 0x013C4D 04:BC3D: AA        TAX
C D 1 - I - 0x013C4E 04:BC3E: 60        RTS



tbl_BC3F_cheat_combination:
- D 1 - I - 0x013C4F 04:BC3F: 01        .byte $01   ; 00 Start
- D 1 - I - 0x013C50 04:BC40: 01        .byte $01   ; 01 Start
- D 1 - I - 0x013C51 04:BC41: 00        .byte $00   ; 02 B
- D 1 - I - 0x013C52 04:BC42: 00        .byte $00   ; 03 B
- D 1 - I - 0x013C53 04:BC43: 01        .byte $01   ; 04 Start
- D 1 - I - 0x013C54 04:BC44: 01        .byte $01   ; 05 Start
- D 1 - I - 0x013C55 04:BC45: 00        .byte $00   ; 06 B
- D 1 - I - 0x013C56 04:BC46: 00        .byte $00   ; 07 B
- D 1 - I - 0x013C57 04:BC47: 01        .byte $01   ; 08 Start
- D 1 - I - 0x013C58 04:BC48: 01        .byte $01   ; 09 Start
- D 1 - I - 0x013C59 04:BC49: 01        .byte $01   ; 0A Start
- D 1 - I - 0x013C5A 04:BC4A: 00        .byte $00   ; 0B B
- D 1 - I - 0x013C5B 04:BC4B: 01        .byte $01   ; 0C Start
- D 1 - I - 0x013C5C 04:BC4C: 00        .byte $00   ; 0D B
- D 1 - I - 0x013C5D 04:BC4D: 00        .byte $00   ; 0E B
- D 1 - I - 0x013C5E 04:BC4E: 00        .byte $00   ; 0F B
- D 1 - I - 0x013C5F 04:BC4F: 01        .byte $01   ; 10 Start
- D 1 - I - 0x013C60 04:BC50: 01        .byte $01   ; 11 Start
- D 1 - I - 0x013C61 04:BC51: 01        .byte $01   ; 12 Start
- D 1 - I - 0x013C62 04:BC52: 00        .byte $00   ; 13 B
- D 1 - I - 0x013C63 04:BC53: 01        .byte $01   ; 14 Start
- D 1 - I - 0x013C64 04:BC54: 00        .byte $00   ; 15 B
- D 1 - I - 0x013C65 04:BC55: 01        .byte $01   ; 16 Start
- D 1 - I - 0x013C66 04:BC56: 01        .byte $01   ; 17 Start
- D 1 - I - 0x013C67 04:BC57: 00        .byte $00   ; 18 B
- D 1 - I - 0x013C68 04:BC58: 01        .byte $01   ; 19 Start
- D 1 - I - 0x013C69 04:BC59: 01        .byte $01   ; 1A Start
- D 1 - I - 0x013C6A 04:BC5A: 00        .byte $00   ; 1B B
- D 1 - I - 0x013C6B 04:BC5B: 00        .byte $00   ; 1C B
- D 1 - I - 0x013C6C 04:BC5C: 01        .byte $01   ; 1D Start
- D 1 - I - 0x013C6D 04:BC5D: 00        .byte $00   ; 1E B
- D 1 - I - 0x013C6E 04:BC5E: 01        .byte $01   ; 1F Start


; bzk garbage (fake read flags because of 0x013028)
- D 1 - I - 0x013C6F 04:BC5F: FF        .byte $FF   ; 
- D 1 - I - 0x013C70 04:BC60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013C80 04:BC70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013C90 04:BC80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013CA0 04:BC90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013CB0 04:BCA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013CC0 04:BCB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013CD0 04:BCC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013CE0 04:BCD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013CF0 04:BCE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013D00 04:BCF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013D10 04:BD00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013D20 04:BD10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013D30 04:BD20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013D40 04:BD30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013D50 04:BD40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013D60 04:BD50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013D70 04:BD60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013D80 04:BD70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013D90 04:BD80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013DA0 04:BD90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013DB0 04:BDA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013DC0 04:BDB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013DD0 04:BDC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013DE0 04:BDD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013DF0 04:BDE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013E00 04:BDF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013E10 04:BE00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013E20 04:BE10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013E30 04:BE20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013E40 04:BE30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013E50 04:BE40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013E60 04:BE50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013E70 04:BE60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013E80 04:BE70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013E90 04:BE80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013EA0 04:BE90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013EB0 04:BEA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013EC0 04:BEB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013ED0 04:BEC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013EE0 04:BED0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013EF0 04:BEE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013F00 04:BEF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013F10 04:BF00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013F20 04:BF10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013F30 04:BF20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013F40 04:BF30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013F50 04:BF40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013F60 04:BF50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013F70 04:BF60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013F80 04:BF70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013F90 04:BF80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013FA0 04:BF90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013FB0 04:BFA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013FC0 04:BFB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013FD0 04:BFC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013FE0 04:BFD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x013FF0 04:BFE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x014000 04:BFF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 2 - I - 0x014010 05:C000: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 2 - I - 0x014020 05:C010: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 2 - I - 0x014030 05:C020: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 2 - I - 0x014040 05:C030: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 2 - I - 0x014050 05:C040: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x014060 05:C050: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x014070 05:C060: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x014080 05:C070: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x014090 05:C080: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0140A0 05:C090: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0140B0 05:C0A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0140C0 05:C0B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0140D0 05:C0C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0140E0 05:C0D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0140F0 05:C0E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x014100 05:C0F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x014110 05:C100: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x014120 05:C110: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x014130 05:C120: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x014140 05:C130: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x014150 05:C140: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x014160 05:C150: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x014170 05:C160: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x014180 05:C170: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x014190 05:C180: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0141A0 05:C190: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0141B0 05:C1A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0141C0 05:C1B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0141D0 05:C1C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0141E0 05:C1D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0141F0 05:C1E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF   ; 

; music driver stuff

sub_0x0141F6_play_music:
C - - - - - 0x0141F6 05:C1E6: 20 12 C2  JSR sub_C212_clear_music_driver_addresses
C - - - - - 0x0141F9 05:C1E9: BD 0B D7  LDA tbl_D70B_lo,X
C - - - - - 0x0141FC 05:C1EC: 85 4F     STA ram_004F
C - - - - - 0x0141FE 05:C1EE: BD 12 D7  LDA tbl_D712_hi,X
C - - - - - 0x014201 05:C1F1: 85 50     STA ram_0050
C - - - - - 0x014203 05:C1F3: BD 19 D7  LDA tbl_D719_lo,X
C - - - - - 0x014206 05:C1F6: 85 51     STA ram_0051
C - - - - - 0x014208 05:C1F8: BD 20 D7  LDA tbl_D720_hi,X
C - - - - - 0x01420B 05:C1FB: 85 52     STA ram_0052
C - - - - - 0x01420D 05:C1FD: BD 27 D7  LDA tbl_D727_lo,X
C - - - - - 0x014210 05:C200: 85 53     STA ram_0053
C - - - - - 0x014212 05:C202: BD 2E D7  LDA tbl_D72E_hi,X
C - - - - - 0x014215 05:C205: 85 54     STA ram_0054
C - - - - - 0x014217 05:C207: BD 35 D7  LDA tbl_D735_lo,X
C - - - - - 0x01421A 05:C20A: 85 55     STA ram_0055
C - - - - - 0x01421C 05:C20C: BD 3C D7  LDA tbl_D73C_hi,X
C - - - - - 0x01421F 05:C20F: 85 56     STA ram_0056
C - - - - - 0x014221 05:C211: 60        RTS



sub_C212_clear_music_driver_addresses:
C - - - - - 0x014222 05:C212: A9 00     LDA #$00
C - - - - - 0x014224 05:C214: A0 4E     LDY #$4E
bra_C216_loop:
; 004F-009C
C - - - - - 0x014226 05:C216: 99 4E 00  STA ram_004F - $01,Y
C - - - - - 0x014229 05:C219: 88        DEY
C - - - - - 0x01422A 05:C21A: D0 FA     BNE bra_C216_loop
C - - - - - 0x01422C 05:C21C: C8        INY ; 01
C - - - - - 0x01422D 05:C21D: 84 83     STY ram_0083
C - - - - - 0x01422F 05:C21F: 84 84     STY ram_0084
C - - - - - 0x014231 05:C221: 84 85     STY ram_0085
C - - - - - 0x014233 05:C223: 84 86     STY ram_0086
C - - - - - 0x014235 05:C225: 84 87     STY ram_0087
C - - - - - 0x014237 05:C227: A0 A0     LDY #$A0
bra_C229_loop:
C - - - - - 0x014239 05:C229: 99 1F 01  STA ram_0120 - $01,Y
C - - - - - 0x01423C 05:C22C: 88        DEY
C - - - - - 0x01423D 05:C22D: D0 FA     BNE bra_C229_loop
C - - - - - 0x01423F 05:C22F: 8C E5 07  STY ram_07E5    ; 00
C - - - - - 0x014242 05:C232: 88        DEY ; FF
C - - - - - 0x014243 05:C233: 8C E1 07  STY ram_07E1
C - - - - - 0x014246 05:C236: 8C E2 07  STY ram_07E2
C - - - - - 0x014249 05:C239: 8C E3 07  STY ram_07E3
C - - - - - 0x01424C 05:C23C: 8C E4 07  STY ram_07E4
C - - - - - 0x01424F 05:C23F: 84 89     STY ram_0089
C - - - - - 0x014251 05:C241: 84 8A     STY ram_008A
C - - - - - 0x014253 05:C243: 84 8B     STY ram_008B
C - - - - - 0x014255 05:C245: 60        RTS



sub_0x014256_disable_music_driver:
C - - - - - 0x014256 05:C246: 20 12 C2  JSR sub_C212_clear_music_driver_addresses
C - - - - - 0x014259 05:C249: A9 30     LDA #$30
C - - - - - 0x01425B 05:C24B: 8D 00 40  STA $4000
C - - - - - 0x01425E 05:C24E: 8D 04 40  STA $4004
C - - - - - 0x014261 05:C251: 8D 08 40  STA $4008
C - - - - - 0x014264 05:C254: 8D 0C 40  STA $400C
C - - - - - 0x014267 05:C257: A9 00     LDA #$00
C - - - - - 0x014269 05:C259: 8D 02 40  STA $4002
C - - - - - 0x01426C 05:C25C: 8D 03 40  STA $4003
C - - - - - 0x01426F 05:C25F: 8D 06 40  STA $4006
C - - - - - 0x014272 05:C262: 8D 07 40  STA $4007
C - - - - - 0x014275 05:C265: 8D 0A 40  STA $400A
C - - - - - 0x014278 05:C268: 8D 0B 40  STA $400B
C - - - - - 0x01427B 05:C26B: 8D 0E 40  STA $400E
C - - - - - 0x01427E 05:C26E: 8D 0F 40  STA $400F
C - - - - - 0x014281 05:C271: 8D E1 07  STA ram_07E1
C - - - - - 0x014284 05:C274: 8D E2 07  STA ram_07E2
C - - - - - 0x014287 05:C277: 8D E3 07  STA ram_07E3
C - - - - - 0x01428A 05:C27A: 8D E4 07  STA ram_07E4
C - - - - - 0x01428D 05:C27D: 8D E5 07  STA ram_07E5
C - - - - - 0x014290 05:C280: 8D E6 07  STA ram_07E6
C - - - - - 0x014293 05:C283: A9 0F     LDA #$0F
C - - - - - 0x014295 05:C285: 8D 15 40  STA $4015
C - - - - - 0x014298 05:C288: 60        RTS



sub_0x014299_play_sfx:
C - - - - - 0x014299 05:C289: BD 43 D7  LDA tbl_D743_lo,X
C - - - - - 0x01429C 05:C28C: 85 9B     STA ram_009B
C - - - - - 0x01429E 05:C28E: BD 4D D7  LDA tbl_D74D_hi,X
C - - - - - 0x0142A1 05:C291: 85 9C     STA ram_009C
C - - - - - 0x0142A3 05:C293: A0 00     LDY #$00
bra_C295_loop:
C - - - - - 0x0142A5 05:C295: B1 9B     LDA (ram_009B),Y
C - - - - - 0x0142A7 05:C297: 30 5A     BMI bra_C2F3_RTS
C - - - - - 0x0142A9 05:C299: AA        TAX
C - - - - - 0x0142AA 05:C29A: C8        INY
C - - - - - 0x0142AB 05:C29B: B1 9B     LDA (ram_009B),Y
C - - - - - 0x0142AD 05:C29D: 95 4F     STA ram_004F,X
C - - - - - 0x0142AF 05:C29F: C8        INY
C - - - - - 0x0142B0 05:C2A0: B1 9B     LDA (ram_009B),Y
C - - - - - 0x0142B2 05:C2A2: 95 50     STA ram_0050,X
C - - - - - 0x0142B4 05:C2A4: 8A        TXA
C - - - - - 0x0142B5 05:C2A5: 4A        LSR
C - - - - - 0x0142B6 05:C2A6: AA        TAX
C - - - - - 0x0142B7 05:C2A7: A9 FF     LDA #$FF
C - - - - - 0x0142B9 05:C2A9: 9D E1 07  STA ram_07E1,X
C - - - - - 0x0142BC 05:C2AC: A9 01     LDA #$01
C - - - - - 0x0142BE 05:C2AE: 95 83     STA ram_0083,X
C - - - - - 0x0142C0 05:C2B0: E0 04     CPX #$04
C - - - - - 0x0142C2 05:C2B2: D0 13     BNE bra_C2C7
C - - - - - 0x0142C4 05:C2B4: A9 00     LDA #$00
C - - - - - 0x0142C6 05:C2B6: 85 69     STA ram_0069
C - - - - - 0x0142C8 05:C2B8: 8D AF 01  STA ram_01AF
C - - - - - 0x0142CB 05:C2BB: 8D 59 01  STA ram_0159
C - - - - - 0x0142CE 05:C2BE: 8D 4D 01  STA ram_014D
C - - - - - 0x0142D1 05:C2C1: 8D 53 01  STA ram_0153
C - - - - - 0x0142D4 05:C2C4: C8        INY
C - - - - - 0x0142D5 05:C2C5: D0 CE     BNE bra_C295_loop
bra_C2C7:
C - - - - - 0x0142D7 05:C2C7: E0 05     CPX #$05
C - - - - - 0x0142D9 05:C2C9: D0 25     BNE bra_C2F0
C - - - - - 0x0142DB 05:C2CB: A9 00     LDA #$00
C - - - - - 0x0142DD 05:C2CD: 85 6A     STA ram_006A
C - - - - - 0x0142DF 05:C2CF: 85 82     STA ram_0082
C - - - - - 0x0142E1 05:C2D1: 8D B0 01  STA ram_01B0
C - - - - - 0x0142E4 05:C2D4: 8D 5A 01  STA ram_015A
C - - - - - 0x0142E7 05:C2D7: 8D 4E 01  STA ram_014E
C - - - - - 0x0142EA 05:C2DA: 8D 54 01  STA ram_0154
C - - - - - 0x0142ED 05:C2DD: 8D 5E 01  STA ram_015E
C - - - - - 0x0142F0 05:C2E0: 8D 69 01  STA ram_0169
C - - - - - 0x0142F3 05:C2E3: 8D 71 01  STA ram_0171
C - - - - - 0x0142F6 05:C2E6: 8D 79 01  STA ram_0179
C - - - - - 0x0142F9 05:C2E9: 8D 7D 01  STA ram_017D
C - - - - - 0x0142FC 05:C2EC: A9 FF     LDA #$FF
C - - - - - 0x0142FE 05:C2EE: 85 8C     STA ram_008C
bra_C2F0:
C - - - - - 0x014300 05:C2F0: C8        INY
C - - - - - 0x014301 05:C2F1: D0 A2     BNE bra_C295_loop
bra_C2F3_RTS:
C - - - - - 0x014303 05:C2F3: 60        RTS



sub_0x014304_update_music_driver:
C - - - - - 0x014304 05:C2F4: AD E1 07  LDA ram_07E1
C - - - - - 0x014307 05:C2F7: 30 03     BMI bra_C2FC
C - - - - - 0x014309 05:C2F9: 4C 56 C5  JMP loc_C556
bra_C2FC:
C - - - - - 0x01430C 05:C2FC: C6 83     DEC ram_0083
C - - - - - 0x01430E 05:C2FE: F0 0D     BEQ bra_C30D
C - - - - - 0x014310 05:C300: 4C E3 C3  JMP loc_C3E3
loc_C303:
C D 2 - - - 0x014313 05:C303: 98        TYA
C - - - - - 0x014314 05:C304: 18        CLC
C - - - - - 0x014315 05:C305: 65 4F     ADC ram_004F
C - - - - - 0x014317 05:C307: 85 4F     STA ram_004F
C - - - - - 0x014319 05:C309: 90 02     BCC bra_C30D    ; if not overflow
C - - - - - 0x01431B 05:C30B: E6 50     INC ram_0050
bra_C30D:
loc_C30D:
C D 2 - - - 0x01431D 05:C30D: A0 00     LDY #$00
C - - - - - 0x01431F 05:C30F: B1 4F     LDA (ram_004F),Y
C - - - - - 0x014321 05:C311: 10 0B     BPL bra_C31E_not_control_byte
; 80-FF
C - - - - - 0x014323 05:C313: C8        INY
C - - - - - 0x014324 05:C314: AA        TAX
C - - - - - 0x014325 05:C315: BD 0B CE  LDA tbl_CE8B_hi - $80,X
C - - - - - 0x014328 05:C318: 48        PHA
C - - - - - 0x014329 05:C319: BD F6 CD  LDA tbl_CE76_lo - $80,X
C - - - - - 0x01432C 05:C31C: 48        PHA
C - - - - - 0x01432D 05:C31D: 60        RTS
bra_C31E_not_control_byte:
C - - - - - 0x01432E 05:C31E: AE A3 01  LDX ram_01A3
C - - - - - 0x014331 05:C321: F0 05     BEQ bra_C328
- - - - - - 0x014333 05:C323: EE A3 01  INC ram_01A3
- - - - - - 0x014336 05:C326: F0 03     BEQ bra_C32B
bra_C328:
C - - - - - 0x014338 05:C328: 18        CLC
C - - - - - 0x014339 05:C329: 65 7F     ADC ram_007F
bra_C32B:
C - - - - - 0x01433B 05:C32B: AA        TAX
C - - - - - 0x01433C 05:C32C: AD 5B 01  LDA ram_015B
C - - - - - 0x01433F 05:C32F: F0 05     BEQ bra_C336
C - - - - - 0x014341 05:C331: 8E 5F 01  STX ram_015F
C - - - - - 0x014344 05:C334: A6 93     LDX ram_0093
bra_C336:
C - - - - - 0x014346 05:C336: 86 93     STX ram_0093
C - - - - - 0x014348 05:C338: BD AA D6  LDA tbl_D6AA,X
C - - - - - 0x01434B 05:C33B: 6D A7 01  ADC ram_01A7
C - - - - - 0x01434E 05:C33E: 85 77     STA ram_0077
C - - - - - 0x014350 05:C340: BD 49 D6  LDA tbl_D649,X
C - - - - - 0x014353 05:C343: 69 00     ADC #$00
C - - - - - 0x014355 05:C345: 85 78     STA ram_0078
C - - - - - 0x014357 05:C347: AD AB 01  LDA ram_01AB
C - - - - - 0x01435A 05:C34A: D0 03     BNE bra_C34F
C - - - - - 0x01435C 05:C34C: C8        INY
C - - - - - 0x01435D 05:C34D: B1 4F     LDA (ram_004F),Y
bra_C34F:
C - - - - - 0x01435F 05:C34F: 85 83     STA ram_0083
C - - - - - 0x014361 05:C351: C8        INY
C - - - - - 0x014362 05:C352: 98        TYA
C - - - - - 0x014363 05:C353: 18        CLC
C - - - - - 0x014364 05:C354: 65 4F     ADC ram_004F
C - - - - - 0x014366 05:C356: 85 4F     STA ram_004F
C - - - - - 0x014368 05:C358: 90 02     BCC bra_C35C_not_overflow
C - - - - - 0x01436A 05:C35A: E6 50     INC ram_0050
bra_C35C_not_overflow:
C - - - - - 0x01436C 05:C35C: AE 49 01  LDX ram_0149
C - - - - - 0x01436F 05:C35F: E8        INX
C - - - - - 0x014370 05:C360: 8E 43 01  STX ram_0143
C - - - - - 0x014373 05:C363: AD 66 01  LDA ram_0166
C - - - - - 0x014376 05:C366: F0 0C     BEQ bra_C374
C - - - - - 0x014378 05:C368: 8D 6A 01  STA ram_016A
C - - - - - 0x01437B 05:C36B: AD 76 01  LDA ram_0176
C - - - - - 0x01437E 05:C36E: 8D 72 01  STA ram_0172
C - - - - - 0x014381 05:C371: AD 7A 01  LDA ram_017A
bra_C374:
C - - - - - 0x014384 05:C374: 85 8D     STA ram_008D
C - - - - - 0x014386 05:C376: AD B1 01  LDA ram_01B1
C - - - - - 0x014389 05:C379: F0 3A     BEQ bra_C3B5
C - - - - - 0x01438B 05:C37B: 10 26     BPL bra_C3A3
C - - - - - 0x01438D 05:C37D: AD 94 01  LDA ram_0194
C - - - - - 0x014390 05:C380: F0 04     BEQ bra_C386
C - - - - - 0x014392 05:C382: C5 83     CMP ram_0083
C - - - - - 0x014394 05:C384: 90 0B     BCC bra_C391
bra_C386:
C - - - - - 0x014396 05:C386: AD 99 01  LDA ram_0199
C - - - - - 0x014399 05:C389: F0 06     BEQ bra_C391
C - - - - - 0x01439B 05:C38B: A5 83     LDA ram_0083
C - - - - - 0x01439D 05:C38D: 38        SEC
C - - - - - 0x01439E 05:C38E: ED 99 01  SBC ram_0199
bra_C391:
C - - - - - 0x0143A1 05:C391: 8D 9E 01  STA ram_019E
C - - - - - 0x0143A4 05:C394: A0 01     LDY #$01
C - - - - - 0x0143A6 05:C396: 8C 3E 01  STY ram_013E
C - - - - - 0x0143A9 05:C399: 88        DEY
C - - - - - 0x0143AA 05:C39A: 8C 26 01  STY ram_0126
C - - - - - 0x0143AD 05:C39D: 88        DEY
C - - - - - 0x0143AE 05:C39E: 8C 39 01  STY ram_0139
C - - - - - 0x0143B1 05:C3A1: 30 12     BMI bra_C3B5
bra_C3A3:
C - - - - - 0x0143B3 05:C3A3: AE 34 01  LDX ram_0134
C - - - - - 0x0143B6 05:C3A6: 8E 39 01  STX ram_0139
C - - - - - 0x0143B9 05:C3A9: BD 25 01  LDA ram_0125,X
C - - - - - 0x0143BC 05:C3AC: 8D 3E 01  STA ram_013E
C - - - - - 0x0143BF 05:C3AF: AD 20 01  LDA ram_0120
C - - - - - 0x0143C2 05:C3B2: 8D B6 01  STA ram_01B6
bra_C3B5:
C - - - - - 0x0143C5 05:C3B5: AD 7E 01  LDA ram_017E
C - - - - - 0x0143C8 05:C3B8: F0 14     BEQ bra_C3CE
- - - - - - 0x0143CA 05:C3BA: 8D 8E 01  STA ram_018E
- - - - - - 0x0143CD 05:C3BD: AC E6 07  LDY ram_07E6
- - - - - - 0x0143D0 05:C3C0: 30 21     BMI bra_C3E3
- - - - - - 0x0143D2 05:C3C2: AD 84 01  LDA ram_0184
- - - - - - 0x0143D5 05:C3C5: 8D 02 40  STA $4002
- - - - - - 0x0143D8 05:C3C8: AD 85 01  LDA ram_0185
- - - - - - 0x0143DB 05:C3CB: 4C E0 C3  JMP loc_C3E0
bra_C3CE:
C - - - - - 0x0143DE 05:C3CE: AC E6 07  LDY ram_07E6
C - - - - - 0x0143E1 05:C3D1: 30 10     BMI bra_C3E3
C - - - - - 0x0143E3 05:C3D3: A5 77     LDA ram_0077
C - - - - - 0x0143E5 05:C3D5: 8D 02 40  STA $4002
C - - - - - 0x0143E8 05:C3D8: A5 78     LDA ram_0078
C - - - - - 0x0143EA 05:C3DA: C5 89     CMP ram_0089
C - - - - - 0x0143EC 05:C3DC: F0 05     BEQ bra_C3E3
C - - - - - 0x0143EE 05:C3DE: 85 89     STA ram_0089
loc_C3E0:
C - - - - - 0x0143F0 05:C3E0: 8D 03 40  STA $4003
bra_C3E3:
loc_C3E3:
C D 2 - - - 0x0143F3 05:C3E3: AD 39 01  LDA ram_0139
C - - - - - 0x0143F6 05:C3E6: 30 44     BMI bra_C42C
C - - - - - 0x0143F8 05:C3E8: D0 20     BNE bra_C40A
C - - - - - 0x0143FA 05:C3EA: CE 3E 01  DEC ram_013E
C - - - - - 0x0143FD 05:C3ED: 10 6D     BPL bra_C45C
C - - - - - 0x0143FF 05:C3EF: AD 25 01  LDA ram_0125
C - - - - - 0x014402 05:C3F2: 8D 3E 01  STA ram_013E
C - - - - - 0x014405 05:C3F5: EE B6 01  INC ram_01B6
C - - - - - 0x014408 05:C3F8: AD B6 01  LDA ram_01B6
C - - - - - 0x01440B 05:C3FB: C9 0F     CMP #$0F
C - - - - - 0x01440D 05:C3FD: D0 5D     BNE bra_C45C
- - - - - - 0x01440F 05:C3FF: EE 39 01  INC ram_0139
- - - - - - 0x014412 05:C402: AD 26 01  LDA ram_0126
- - - - - - 0x014415 05:C405: 8D 3E 01  STA ram_013E
- - - - - - 0x014418 05:C408: D0 52     BNE bra_C45C
bra_C40A:
C - - - - - 0x01441A 05:C40A: C9 01     CMP #$01
C - - - - - 0x01441C 05:C40C: D0 4E     BNE bra_C45C
C - - - - - 0x01441E 05:C40E: CE 3E 01  DEC ram_013E
C - - - - - 0x014421 05:C411: 10 49     BPL bra_C45C
C - - - - - 0x014423 05:C413: AD 26 01  LDA ram_0126
C - - - - - 0x014426 05:C416: 8D 3E 01  STA ram_013E
C - - - - - 0x014429 05:C419: AD B6 01  LDA ram_01B6
C - - - - - 0x01442C 05:C41C: CD 2F 01  CMP ram_012F
C - - - - - 0x01442F 05:C41F: F0 05     BEQ bra_C426
C - - - - - 0x014431 05:C421: CE B6 01  DEC ram_01B6
C - - - - - 0x014434 05:C424: 10 36     BPL bra_C45C
bra_C426:
C - - - - - 0x014436 05:C426: EE 39 01  INC ram_0139
C - - - - - 0x014439 05:C429: 4C 5C C4  JMP loc_C45C
bra_C42C:
C - - - - - 0x01443C 05:C42C: AD 9E 01  LDA ram_019E
C - - - - - 0x01443F 05:C42F: F0 0D     BEQ bra_C43E
C - - - - - 0x014441 05:C431: CE 9E 01  DEC ram_019E
C - - - - - 0x014444 05:C434: D0 08     BNE bra_C43E
C - - - - - 0x014446 05:C436: A9 01     LDA #$01
C - - - - - 0x014448 05:C438: 8D 3E 01  STA ram_013E
C - - - - - 0x01444B 05:C43B: EE 26 01  INC ram_0126
bra_C43E:
C - - - - - 0x01444E 05:C43E: CE 3E 01  DEC ram_013E
C - - - - - 0x014451 05:C441: D0 19     BNE bra_C45C
C - - - - - 0x014453 05:C443: AC 26 01  LDY ram_0126
C - - - - - 0x014456 05:C446: B1 5B     LDA (ram_005B),Y
C - - - - - 0x014458 05:C448: 30 12     BMI bra_C45C
C - - - - - 0x01445A 05:C44A: C9 10     CMP #$10
C - - - - - 0x01445C 05:C44C: 90 02     BCC bra_C450
- - - - - - 0x01445E 05:C44E: A0 00     LDY #$00
bra_C450:
C - - - - - 0x014460 05:C450: 8D B6 01  STA ram_01B6
C - - - - - 0x014463 05:C453: AD BB 01  LDA ram_01BB
C - - - - - 0x014466 05:C456: 8D 3E 01  STA ram_013E
C - - - - - 0x014469 05:C459: EE 26 01  INC ram_0126
bra_C45C:
loc_C45C:
C D 2 - - - 0x01446C 05:C45C: AD B6 01  LDA ram_01B6
C - - - - - 0x01446F 05:C45F: 0D 63 01  ORA ram_0163
C - - - - - 0x014472 05:C462: 8D 00 40  STA $4000
C - - - - - 0x014475 05:C465: AD 7E 01  LDA ram_017E
C - - - - - 0x014478 05:C468: F0 1E     BEQ bra_C488
- - - - - - 0x01447A 05:C46A: AD 8E 01  LDA ram_018E
- - - - - - 0x01447D 05:C46D: F0 19     BEQ bra_C488
- - - - - - 0x01447F 05:C46F: CE 8E 01  DEC ram_018E
- - - - - - 0x014482 05:C472: F0 03     BEQ bra_C477
- - - - - - 0x014484 05:C474: 4C 56 C5  JMP loc_C556
bra_C477:
- - - - - - 0x014487 05:C477: AC E6 07  LDY ram_07E6
- - - - - - 0x01448A 05:C47A: 30 0C     BMI bra_C488
- - - - - - 0x01448C 05:C47C: A5 77     LDA ram_0077
- - - - - - 0x01448E 05:C47E: 8D 02 40  STA $4002
- - - - - - 0x014491 05:C481: A5 78     LDA ram_0078
- - - - - - 0x014493 05:C483: 85 89     STA ram_0089
- - - - - - 0x014495 05:C485: 8D 03 40  STA $4003
bra_C488:
C - - - - - 0x014498 05:C488: AD 66 01  LDA ram_0166
C - - - - - 0x01449B 05:C48B: F0 4E     BEQ bra_C4DB
C - - - - - 0x01449D 05:C48D: AD 6A 01  LDA ram_016A
C - - - - - 0x0144A0 05:C490: F0 05     BEQ bra_C497
C - - - - - 0x0144A2 05:C492: CE 6A 01  DEC ram_016A
C - - - - - 0x0144A5 05:C495: D0 74     BNE bra_C50B
bra_C497:
C - - - - - 0x0144A7 05:C497: A5 77     LDA ram_0077
C - - - - - 0x0144A9 05:C499: A6 78     LDX ram_0078
C - - - - - 0x0144AB 05:C49B: A4 8D     LDY ram_008D
C - - - - - 0x0144AD 05:C49D: F0 09     BEQ bra_C4A8
C - - - - - 0x0144AF 05:C49F: 18        CLC
C - - - - - 0x0144B0 05:C4A0: 6D 6E 01  ADC ram_016E
C - - - - - 0x0144B3 05:C4A3: 90 0A     BCC bra_C4AF
C - - - - - 0x0144B5 05:C4A5: E8        INX
C - - - - - 0x0144B6 05:C4A6: D0 07     BNE bra_C4AF
bra_C4A8:
C - - - - - 0x0144B8 05:C4A8: 38        SEC
C - - - - - 0x0144B9 05:C4A9: ED 6E 01  SBC ram_016E
C - - - - - 0x0144BC 05:C4AC: B0 01     BCS bra_C4AF
C - - - - - 0x0144BE 05:C4AE: CA        DEX
bra_C4AF:
C - - - - - 0x0144BF 05:C4AF: 85 77     STA ram_0077
C - - - - - 0x0144C1 05:C4B1: 86 78     STX ram_0078
C - - - - - 0x0144C3 05:C4B3: AC E6 07  LDY ram_07E6
C - - - - - 0x0144C6 05:C4B6: 30 0C     BMI bra_C4C4
C - - - - - 0x0144C8 05:C4B8: 8D 02 40  STA $4002
C - - - - - 0x0144CB 05:C4BB: E4 89     CPX ram_0089
C - - - - - 0x0144CD 05:C4BD: F0 05     BEQ bra_C4C4
C - - - - - 0x0144CF 05:C4BF: 86 89     STX ram_0089
C - - - - - 0x0144D1 05:C4C1: 8E 03 40  STX $4003
bra_C4C4:
C - - - - - 0x0144D4 05:C4C4: CE 72 01  DEC ram_0172
C - - - - - 0x0144D7 05:C4C7: D0 42     BNE bra_C50B
C - - - - - 0x0144D9 05:C4C9: AD 76 01  LDA ram_0176
C - - - - - 0x0144DC 05:C4CC: F0 3D     BEQ bra_C50B
C - - - - - 0x0144DE 05:C4CE: 0A        ASL
C - - - - - 0x0144DF 05:C4CF: 8D 72 01  STA ram_0172
C - - - - - 0x0144E2 05:C4D2: A5 8D     LDA ram_008D
C - - - - - 0x0144E4 05:C4D4: 49 FF     EOR #$FF
C - - - - - 0x0144E6 05:C4D6: 85 8D     STA ram_008D
C - - - - - 0x0144E8 05:C4D8: 4C 0B C5  JMP loc_C50B
bra_C4DB:
C - - - - - 0x0144EB 05:C4DB: AD 43 01  LDA ram_0143
C - - - - - 0x0144EE 05:C4DE: F0 2B     BEQ bra_C50B
C - - - - - 0x0144F0 05:C4E0: CE 43 01  DEC ram_0143
C - - - - - 0x0144F3 05:C4E3: D0 26     BNE bra_C50B
C - - - - - 0x0144F5 05:C4E5: A5 8D     LDA ram_008D
C - - - - - 0x0144F7 05:C4E7: 49 FF     EOR #$FF
C - - - - - 0x0144F9 05:C4E9: 85 8D     STA ram_008D
C - - - - - 0x0144FB 05:C4EB: F0 0F     BEQ bra_C4FC
C - - - - - 0x0144FD 05:C4ED: AD 49 01  LDA ram_0149
C - - - - - 0x014500 05:C4F0: 8D 43 01  STA ram_0143
C - - - - - 0x014503 05:C4F3: A5 93     LDA ram_0093
C - - - - - 0x014505 05:C4F5: 18        CLC
C - - - - - 0x014506 05:C4F6: 6D 55 01  ADC ram_0155
C - - - - - 0x014509 05:C4F9: 4C 2E C5  JMP loc_C52E
bra_C4FC:
C - - - - - 0x01450C 05:C4FC: AD 4F 01  LDA ram_014F
C - - - - - 0x01450F 05:C4FF: 8D 43 01  STA ram_0143
C - - - - - 0x014512 05:C502: A5 93     LDA ram_0093
C - - - - - 0x014514 05:C504: 38        SEC
C - - - - - 0x014515 05:C505: ED 55 01  SBC ram_0155
C - - - - - 0x014518 05:C508: 4C 2E C5  JMP loc_C52E
bra_C50B:
loc_C50B:
C D 2 - - - 0x01451B 05:C50B: AD 5B 01  LDA ram_015B
C - - - - - 0x01451E 05:C50E: F0 46     BEQ bra_C556
C - - - - - 0x014520 05:C510: A5 93     LDA ram_0093
C - - - - - 0x014522 05:C512: CD 5F 01  CMP ram_015F
C - - - - - 0x014525 05:C515: 90 0C     BCC bra_C523
C - - - - - 0x014527 05:C517: F0 3D     BEQ bra_C556
C - - - - - 0x014529 05:C519: ED 5B 01  SBC ram_015B
C - - - - - 0x01452C 05:C51C: CD 5F 01  CMP ram_015F
C - - - - - 0x01452F 05:C51F: B0 0D     BCS bra_C52E
C - - - - - 0x014531 05:C521: 90 08     BCC bra_C52B    ; jmp
bra_C523:
C - - - - - 0x014533 05:C523: 6D 5B 01  ADC ram_015B
C - - - - - 0x014536 05:C526: CD 5F 01  CMP ram_015F
C - - - - - 0x014539 05:C529: 90 03     BCC bra_C52E
bra_C52B:
C - - - - - 0x01453B 05:C52B: AD 5F 01  LDA ram_015F
bra_C52E:
loc_C52E:
C D 2 - - - 0x01453E 05:C52E: 85 93     STA ram_0093
C - - - - - 0x014540 05:C530: AA        TAX
C - - - - - 0x014541 05:C531: BD AA D6  LDA tbl_D6AA,X
C - - - - - 0x014544 05:C534: 6D A7 01  ADC ram_01A7
C - - - - - 0x014547 05:C537: 85 77     STA ram_0077
C - - - - - 0x014549 05:C539: AC E6 07  LDY ram_07E6
C - - - - - 0x01454C 05:C53C: 30 03     BMI bra_C541
C - - - - - 0x01454E 05:C53E: 8D 02 40  STA $4002
bra_C541:
C - - - - - 0x014551 05:C541: BD 49 D6  LDA tbl_D649,X
C - - - - - 0x014554 05:C544: 69 00     ADC #$00
C - - - - - 0x014556 05:C546: 85 78     STA ram_0078
C - - - - - 0x014558 05:C548: C5 89     CMP ram_0089
C - - - - - 0x01455A 05:C54A: F0 0A     BEQ bra_C556
C - - - - - 0x01455C 05:C54C: 85 89     STA ram_0089
C - - - - - 0x01455E 05:C54E: AC E6 07  LDY ram_07E6
C - - - - - 0x014561 05:C551: 30 0B     BMI bra_C55E
C - - - - - 0x014563 05:C553: 8D 03 40  STA $4003
bra_C556:
loc_C556:
C D 2 - - - 0x014566 05:C556: AD E6 07  LDA ram_07E6
C - - - - - 0x014569 05:C559: 30 03     BMI bra_C55E
C - - - - - 0x01456B 05:C55B: 4C 9A C7  JMP loc_C79A
bra_C55E:
C - - - - - 0x01456E 05:C55E: C6 88     DEC ram_0088
C - - - - - 0x014570 05:C560: F0 0D     BEQ bra_C56F
C - - - - - 0x014572 05:C562: 4C 3B C6  JMP loc_C63B
loc_C565:
C D 2 - - - 0x014575 05:C565: 98        TYA
C - - - - - 0x014576 05:C566: 18        CLC
C - - - - - 0x014577 05:C567: 65 59     ADC ram_0059
C - - - - - 0x014579 05:C569: 85 59     STA ram_0059
C - - - - - 0x01457B 05:C56B: 90 02     BCC bra_C56F    ; if not overflow
- - - - - - 0x01457D 05:C56D: E6 5A     INC ram_005A
bra_C56F:
loc_C56F:
C D 2 - - - 0x01457F 05:C56F: A0 00     LDY #$00
C - - - - - 0x014581 05:C571: B1 59     LDA (ram_0059),Y
C - - - - - 0x014583 05:C573: 10 0B     BPL bra_C580_not_control_byte
C - - - - - 0x014585 05:C575: C8        INY
C - - - - - 0x014586 05:C576: AA        TAX
C - - - - - 0x014587 05:C577: BD 5D D4  LDA tbl_D4DD_hi - $80,X
C - - - - - 0x01458A 05:C57A: 48        PHA
C - - - - - 0x01458B 05:C57B: BD 48 D4  LDA tbl_D4C8_lo - $80,X
C - - - - - 0x01458E 05:C57E: 48        PHA
C - - - - - 0x01458F 05:C57F: 60        RTS
bra_C580_not_control_byte:
C - - - - - 0x014590 05:C580: AE A6 01  LDX ram_01A6
C - - - - - 0x014593 05:C583: F0 05     BEQ bra_C58A
- - - - - - 0x014595 05:C585: EE A6 01  INC ram_01A6
- - - - - - 0x014598 05:C588: F0 03     BEQ bra_C58D
bra_C58A:
C - - - - - 0x01459A 05:C58A: 18        CLC
C - - - - - 0x01459B 05:C58B: 65 82     ADC ram_0082
bra_C58D:
C - - - - - 0x01459D 05:C58D: AA        TAX
C - - - - - 0x01459E 05:C58E: AD 5E 01  LDA ram_015E
C - - - - - 0x0145A1 05:C591: F0 05     BEQ bra_C598
- - - - - - 0x0145A3 05:C593: 8E 62 01  STX ram_0162
- - - - - - 0x0145A6 05:C596: A6 98     LDX ram_0098
bra_C598:
C - - - - - 0x0145A8 05:C598: 86 98     STX ram_0098
C - - - - - 0x0145AA 05:C59A: BD AA D6  LDA tbl_D6AA,X
C - - - - - 0x0145AD 05:C59D: 6D AA 01  ADC ram_01AA
C - - - - - 0x0145B0 05:C5A0: 85 7D     STA ram_007D
C - - - - - 0x0145B2 05:C5A2: BD 49 D6  LDA tbl_D649,X
C - - - - - 0x0145B5 05:C5A5: 69 00     ADC #$00
C - - - - - 0x0145B7 05:C5A7: 85 7E     STA ram_007E
C - - - - - 0x0145B9 05:C5A9: AD B0 01  LDA ram_01B0
C - - - - - 0x0145BC 05:C5AC: D0 03     BNE bra_C5B1
C - - - - - 0x0145BE 05:C5AE: C8        INY
C - - - - - 0x0145BF 05:C5AF: B1 59     LDA (ram_0059),Y
bra_C5B1:
C - - - - - 0x0145C1 05:C5B1: 85 88     STA ram_0088
C - - - - - 0x0145C3 05:C5B3: C8        INY
C - - - - - 0x0145C4 05:C5B4: 98        TYA
C - - - - - 0x0145C5 05:C5B5: 18        CLC
C - - - - - 0x0145C6 05:C5B6: 65 59     ADC ram_0059
C - - - - - 0x0145C8 05:C5B8: 85 59     STA ram_0059
C - - - - - 0x0145CA 05:C5BA: 90 02     BCC bra_C5BE_not_overflow
- - - - - - 0x0145CC 05:C5BC: E6 5A     INC ram_005A
bra_C5BE_not_overflow:
C - - - - - 0x0145CE 05:C5BE: AE 4E 01  LDX ram_014E
C - - - - - 0x0145D1 05:C5C1: E8        INX
C - - - - - 0x0145D2 05:C5C2: 8E 48 01  STX ram_0148
C - - - - - 0x0145D5 05:C5C5: AD 69 01  LDA ram_0169
C - - - - - 0x0145D8 05:C5C8: F0 0C     BEQ bra_C5D6
C - - - - - 0x0145DA 05:C5CA: 8D 6D 01  STA ram_016D
C - - - - - 0x0145DD 05:C5CD: AD 79 01  LDA ram_0179
C - - - - - 0x0145E0 05:C5D0: 8D 75 01  STA ram_0175
C - - - - - 0x0145E3 05:C5D3: AD 7D 01  LDA ram_017D
bra_C5D6:
C - - - - - 0x0145E6 05:C5D6: 85 92     STA ram_0092
C - - - - - 0x0145E8 05:C5D8: AD B5 01  LDA ram_01B5
C - - - - - 0x0145EB 05:C5DB: F0 3A     BEQ bra_C617
C - - - - - 0x0145ED 05:C5DD: 10 26     BPL bra_C605
C - - - - - 0x0145EF 05:C5DF: AD 98 01  LDA ram_0198
C - - - - - 0x0145F2 05:C5E2: F0 04     BEQ bra_C5E8
C - - - - - 0x0145F4 05:C5E4: C5 88     CMP ram_0088
C - - - - - 0x0145F6 05:C5E6: 90 0B     BCC bra_C5F3
bra_C5E8:
C - - - - - 0x0145F8 05:C5E8: AD 9D 01  LDA ram_019D
C - - - - - 0x0145FB 05:C5EB: F0 06     BEQ bra_C5F3
C - - - - - 0x0145FD 05:C5ED: A5 88     LDA ram_0088
C - - - - - 0x0145FF 05:C5EF: 38        SEC
C - - - - - 0x014600 05:C5F0: ED 9D 01  SBC ram_019D
bra_C5F3:
C - - - - - 0x014603 05:C5F3: 8D A2 01  STA ram_01A2
C - - - - - 0x014606 05:C5F6: A0 01     LDY #$01
C - - - - - 0x014608 05:C5F8: 8C 42 01  STY ram_0142
C - - - - - 0x01460B 05:C5FB: 88        DEY
C - - - - - 0x01460C 05:C5FC: 8C 2E 01  STY ram_012E
C - - - - - 0x01460F 05:C5FF: 88        DEY
C - - - - - 0x014610 05:C600: 8C 3D 01  STY ram_013D
C - - - - - 0x014613 05:C603: 30 12     BMI bra_C617
bra_C605:
C - - - - - 0x014615 05:C605: AE 38 01  LDX ram_0138
C - - - - - 0x014618 05:C608: 8E 3D 01  STX ram_013D
C - - - - - 0x01461B 05:C60B: BD 2D 01  LDA ram_012D,X
C - - - - - 0x01461E 05:C60E: 8D 42 01  STA ram_0142
C - - - - - 0x014621 05:C611: AD 24 01  LDA ram_0124
C - - - - - 0x014624 05:C614: 8D BA 01  STA ram_01BA
bra_C617:
C - - - - - 0x014627 05:C617: AD 83 01  LDA ram_0183
C - - - - - 0x01462A 05:C61A: F0 0F     BEQ bra_C62B
- - - - - - 0x01462C 05:C61C: 8D 93 01  STA ram_0193
- - - - - - 0x01462F 05:C61F: AD 8C 01  LDA ram_018C
- - - - - - 0x014632 05:C622: 8D 02 40  STA $4002
- - - - - - 0x014635 05:C625: AD 8D 01  LDA ram_018D
- - - - - - 0x014638 05:C628: 4C 38 C6  JMP loc_C638
bra_C62B:
C - - - - - 0x01463B 05:C62B: A5 7D     LDA ram_007D
C - - - - - 0x01463D 05:C62D: 8D 02 40  STA $4002
C - - - - - 0x014640 05:C630: A5 7E     LDA ram_007E
C - - - - - 0x014642 05:C632: C5 8C     CMP ram_008C
C - - - - - 0x014644 05:C634: F0 05     BEQ bra_C63B
C - - - - - 0x014646 05:C636: 85 8C     STA ram_008C
loc_C638:
C - - - - - 0x014648 05:C638: 8D 03 40  STA $4003
bra_C63B:
loc_C63B:
C D 2 - - - 0x01464B 05:C63B: AD 3D 01  LDA ram_013D
C - - - - - 0x01464E 05:C63E: 30 44     BMI bra_C684
C - - - - - 0x014650 05:C640: D0 20     BNE bra_C662
C - - - - - 0x014652 05:C642: CE 42 01  DEC ram_0142
C - - - - - 0x014655 05:C645: 10 6D     BPL bra_C6B4
C - - - - - 0x014657 05:C647: AD 2D 01  LDA ram_012D
C - - - - - 0x01465A 05:C64A: 8D 42 01  STA ram_0142
C - - - - - 0x01465D 05:C64D: EE BA 01  INC ram_01BA
C - - - - - 0x014660 05:C650: AD BA 01  LDA ram_01BA
C - - - - - 0x014663 05:C653: C9 0F     CMP #$0F
C - - - - - 0x014665 05:C655: D0 5D     BNE bra_C6B4
- - - - - - 0x014667 05:C657: EE 3D 01  INC ram_013D
- - - - - - 0x01466A 05:C65A: AD 2E 01  LDA ram_012E
- - - - - - 0x01466D 05:C65D: 8D 42 01  STA ram_0142
- - - - - - 0x014670 05:C660: D0 52     BNE bra_C6B4
bra_C662:
C - - - - - 0x014672 05:C662: C9 01     CMP #$01
C - - - - - 0x014674 05:C664: D0 4E     BNE bra_C6B4
C - - - - - 0x014676 05:C666: CE 42 01  DEC ram_0142
C - - - - - 0x014679 05:C669: 10 49     BPL bra_C6B4
C - - - - - 0x01467B 05:C66B: AD 2E 01  LDA ram_012E
C - - - - - 0x01467E 05:C66E: 8D 42 01  STA ram_0142
C - - - - - 0x014681 05:C671: AD BA 01  LDA ram_01BA
C - - - - - 0x014684 05:C674: CD 33 01  CMP ram_0133
C - - - - - 0x014687 05:C677: F0 05     BEQ bra_C67E
C - - - - - 0x014689 05:C679: CE BA 01  DEC ram_01BA
C - - - - - 0x01468C 05:C67C: 10 36     BPL bra_C6B4
bra_C67E:
C - - - - - 0x01468E 05:C67E: EE 3D 01  INC ram_013D
C - - - - - 0x014691 05:C681: 4C B4 C6  JMP loc_C6B4
bra_C684:
C - - - - - 0x014694 05:C684: AD A2 01  LDA ram_01A2
C - - - - - 0x014697 05:C687: F0 0D     BEQ bra_C696
C - - - - - 0x014699 05:C689: CE A2 01  DEC ram_01A2
C - - - - - 0x01469C 05:C68C: D0 08     BNE bra_C696
C - - - - - 0x01469E 05:C68E: A9 01     LDA #$01
C - - - - - 0x0146A0 05:C690: 8D 42 01  STA ram_0142
C - - - - - 0x0146A3 05:C693: EE 2E 01  INC ram_012E
bra_C696:
C - - - - - 0x0146A6 05:C696: CE 42 01  DEC ram_0142
C - - - - - 0x0146A9 05:C699: D0 19     BNE bra_C6B4
C - - - - - 0x0146AB 05:C69B: AC 2E 01  LDY ram_012E
C - - - - - 0x0146AE 05:C69E: B1 63     LDA (ram_0063),Y
C - - - - - 0x0146B0 05:C6A0: 30 12     BMI bra_C6B4
C - - - - - 0x0146B2 05:C6A2: C9 10     CMP #$10
C - - - - - 0x0146B4 05:C6A4: 90 02     BCC bra_C6A8
- - - - - - 0x0146B6 05:C6A6: A0 00     LDY #$00
bra_C6A8:
C - - - - - 0x0146B8 05:C6A8: 8D BA 01  STA ram_01BA
C - - - - - 0x0146BB 05:C6AB: AD BF 01  LDA ram_01BF
C - - - - - 0x0146BE 05:C6AE: 8D 42 01  STA ram_0142
C - - - - - 0x0146C1 05:C6B1: EE 2E 01  INC ram_012E
bra_C6B4:
loc_C6B4:
C D 2 - - - 0x0146C4 05:C6B4: AD BA 01  LDA ram_01BA
C - - - - - 0x0146C7 05:C6B7: 0D 65 01  ORA ram_0165
C - - - - - 0x0146CA 05:C6BA: 8D 00 40  STA $4000
C - - - - - 0x0146CD 05:C6BD: AD 83 01  LDA ram_0183
C - - - - - 0x0146D0 05:C6C0: F0 19     BEQ bra_C6DB
- - - - - - 0x0146D2 05:C6C2: AD 93 01  LDA ram_0193
- - - - - - 0x0146D5 05:C6C5: F0 14     BEQ bra_C6DB
- - - - - - 0x0146D7 05:C6C7: CE 93 01  DEC ram_0193
- - - - - - 0x0146DA 05:C6CA: F0 03     BEQ bra_C6CF
- - - - - - 0x0146DC 05:C6CC: 4C 9A C7  JMP loc_C79A
bra_C6CF:
- - - - - - 0x0146DF 05:C6CF: A5 7D     LDA ram_007D
- - - - - - 0x0146E1 05:C6D1: 8D 02 40  STA $4002
- - - - - - 0x0146E4 05:C6D4: A5 7E     LDA ram_007E
- - - - - - 0x0146E6 05:C6D6: 85 8C     STA ram_008C
- - - - - - 0x0146E8 05:C6D8: 8D 03 40  STA $4003
bra_C6DB:
C - - - - - 0x0146EB 05:C6DB: AD 69 01  LDA ram_0169
C - - - - - 0x0146EE 05:C6DE: F0 49     BEQ bra_C729
C - - - - - 0x0146F0 05:C6E0: AD 6D 01  LDA ram_016D
C - - - - - 0x0146F3 05:C6E3: F0 05     BEQ bra_C6EA
C - - - - - 0x0146F5 05:C6E5: CE 6D 01  DEC ram_016D
C - - - - - 0x0146F8 05:C6E8: D0 6F     BNE bra_C759
bra_C6EA:
C - - - - - 0x0146FA 05:C6EA: A5 7D     LDA ram_007D
C - - - - - 0x0146FC 05:C6EC: A6 7E     LDX ram_007E
C - - - - - 0x0146FE 05:C6EE: A4 92     LDY ram_0092
C - - - - - 0x014700 05:C6F0: F0 09     BEQ bra_C6FB
C - - - - - 0x014702 05:C6F2: 18        CLC
C - - - - - 0x014703 05:C6F3: 6D 71 01  ADC ram_0171
C - - - - - 0x014706 05:C6F6: 90 0A     BCC bra_C702
- - - - - - 0x014708 05:C6F8: E8        INX
- - - - - - 0x014709 05:C6F9: D0 07     BNE bra_C702
bra_C6FB:
C - - - - - 0x01470B 05:C6FB: 38        SEC
C - - - - - 0x01470C 05:C6FC: ED 71 01  SBC ram_0171
C - - - - - 0x01470F 05:C6FF: B0 01     BCS bra_C702
- - - - - - 0x014711 05:C701: CA        DEX
bra_C702:
C - - - - - 0x014712 05:C702: 85 7D     STA ram_007D
C - - - - - 0x014714 05:C704: 8D 02 40  STA $4002
C - - - - - 0x014717 05:C707: 86 7E     STX ram_007E
C - - - - - 0x014719 05:C709: E4 8C     CPX ram_008C
C - - - - - 0x01471B 05:C70B: F0 05     BEQ bra_C712
- - - - - - 0x01471D 05:C70D: 86 8C     STX ram_008C
- - - - - - 0x01471F 05:C70F: 8E 03 40  STX $4003
bra_C712:
C - - - - - 0x014722 05:C712: CE 75 01  DEC ram_0175
C - - - - - 0x014725 05:C715: D0 42     BNE bra_C759
C - - - - - 0x014727 05:C717: AD 79 01  LDA ram_0179
C - - - - - 0x01472A 05:C71A: F0 3D     BEQ bra_C759
C - - - - - 0x01472C 05:C71C: 0A        ASL
C - - - - - 0x01472D 05:C71D: 8D 75 01  STA ram_0175
C - - - - - 0x014730 05:C720: A5 92     LDA ram_0092
C - - - - - 0x014732 05:C722: 49 FF     EOR #$FF
C - - - - - 0x014734 05:C724: 85 92     STA ram_0092
C - - - - - 0x014736 05:C726: 4C 59 C7  JMP loc_C759
bra_C729:
C - - - - - 0x014739 05:C729: AD 48 01  LDA ram_0148
C - - - - - 0x01473C 05:C72C: F0 2B     BEQ bra_C759
C - - - - - 0x01473E 05:C72E: CE 48 01  DEC ram_0148
C - - - - - 0x014741 05:C731: D0 26     BNE bra_C759
C - - - - - 0x014743 05:C733: A5 92     LDA ram_0092
C - - - - - 0x014745 05:C735: 49 FF     EOR #$FF
C - - - - - 0x014747 05:C737: 85 92     STA ram_0092
C - - - - - 0x014749 05:C739: F0 0F     BEQ bra_C74A
C - - - - - 0x01474B 05:C73B: AD 4E 01  LDA ram_014E
C - - - - - 0x01474E 05:C73E: 8D 48 01  STA ram_0148
C - - - - - 0x014751 05:C741: A5 98     LDA ram_0098
C - - - - - 0x014753 05:C743: 18        CLC
C - - - - - 0x014754 05:C744: 6D 5A 01  ADC ram_015A
C - - - - - 0x014757 05:C747: 4C 7C C7  JMP loc_C77C
bra_C74A:
- - - - - - 0x01475A 05:C74A: AD 54 01  LDA ram_0154
- - - - - - 0x01475D 05:C74D: 8D 48 01  STA ram_0148
- - - - - - 0x014760 05:C750: A5 98     LDA ram_0098
- - - - - - 0x014762 05:C752: 38        SEC
- - - - - - 0x014763 05:C753: ED 5A 01  SBC ram_015A
- - - - - - 0x014766 05:C756: 4C 7C C7  JMP loc_C77C
bra_C759:
loc_C759:
C D 2 - - - 0x014769 05:C759: AD 5E 01  LDA ram_015E
C - - - - - 0x01476C 05:C75C: F0 3C     BEQ bra_C79A
- - - - - - 0x01476E 05:C75E: A5 98     LDA ram_0098
- - - - - - 0x014770 05:C760: CD 62 01  CMP ram_0162
- - - - - - 0x014773 05:C763: 90 0C     BCC bra_C771
- - - - - - 0x014775 05:C765: F0 33     BEQ bra_C79A
- - - - - - 0x014777 05:C767: ED 5E 01  SBC ram_015E
- - - - - - 0x01477A 05:C76A: CD 62 01  CMP ram_0162
- - - - - - 0x01477D 05:C76D: B0 0D     BCS bra_C77C
- - - - - - 0x01477F 05:C76F: 90 08     BCC bra_C779
bra_C771:
- - - - - - 0x014781 05:C771: 6D 5E 01  ADC ram_015E
- - - - - - 0x014784 05:C774: CD 62 01  CMP ram_0162
- - - - - - 0x014787 05:C777: 90 03     BCC bra_C77C
bra_C779:
- - - - - - 0x014789 05:C779: AD 62 01  LDA ram_0162
loc_C77C:
bra_C77C:
C D 2 - - - 0x01478C 05:C77C: 85 98     STA ram_0098
C - - - - - 0x01478E 05:C77E: AA        TAX
C - - - - - 0x01478F 05:C77F: BD AA D6  LDA tbl_D6AA,X
C - - - - - 0x014792 05:C782: 6D AA 01  ADC ram_01AA
C - - - - - 0x014795 05:C785: 85 7D     STA ram_007D
C - - - - - 0x014797 05:C787: 8D 02 40  STA $4002
C - - - - - 0x01479A 05:C78A: BD 49 D6  LDA tbl_D649,X
C - - - - - 0x01479D 05:C78D: 69 00     ADC #$00
C - - - - - 0x01479F 05:C78F: 85 7E     STA ram_007E
C - - - - - 0x0147A1 05:C791: C5 8C     CMP ram_008C
C - - - - - 0x0147A3 05:C793: F0 05     BEQ bra_C79A
- - - - - - 0x0147A5 05:C795: 85 8C     STA ram_008C
- - - - - - 0x0147A7 05:C797: 8D 03 40  STA $4003
bra_C79A:
loc_C79A:
C D 2 - - - 0x0147AA 05:C79A: AD E2 07  LDA ram_07E2
C - - - - - 0x0147AD 05:C79D: 30 03     BMI bra_C7A2
C - - - - - 0x0147AF 05:C79F: 4C DE C9  JMP loc_C9DE
bra_C7A2:
C - - - - - 0x0147B2 05:C7A2: C6 84     DEC ram_0084
C - - - - - 0x0147B4 05:C7A4: F0 0D     BEQ bra_C7B3
C - - - - - 0x0147B6 05:C7A6: 4C 7F C8  JMP loc_C87F
loc_C7A9:
C D 2 - - - 0x0147B9 05:C7A9: 98        TYA
C - - - - - 0x0147BA 05:C7AA: 18        CLC
C - - - - - 0x0147BB 05:C7AB: 65 51     ADC ram_0051
C - - - - - 0x0147BD 05:C7AD: 85 51     STA ram_0051
C - - - - - 0x0147BF 05:C7AF: 90 02     BCC bra_C7B3    ; if not overflow
C - - - - - 0x0147C1 05:C7B1: E6 52     INC ram_0052
bra_C7B3:
loc_C7B3:
C D 2 - - - 0x0147C3 05:C7B3: A0 00     LDY #$00
C - - - - - 0x0147C5 05:C7B5: B1 51     LDA (ram_0051),Y
C - - - - - 0x0147C7 05:C7B7: 10 0B     BPL bra_C7C4_not_control_byte
C - - - - - 0x0147C9 05:C7B9: C8        INY
C - - - - - 0x0147CA 05:C7BA: AA        TAX
C - - - - - 0x0147CB 05:C7BB: BD 7C CF  LDA tbl_CFFC_hi - $80,X
C - - - - - 0x0147CE 05:C7BE: 48        PHA
C - - - - - 0x0147CF 05:C7BF: BD 67 CF  LDA tbl_CFE7_lo - $80,X
C - - - - - 0x0147D2 05:C7C2: 48        PHA
C - - - - - 0x0147D3 05:C7C3: 60        RTS
bra_C7C4_not_control_byte:
C - - - - - 0x0147D4 05:C7C4: AE A4 01  LDX ram_01A4
C - - - - - 0x0147D7 05:C7C7: F0 05     BEQ bra_C7CE
- - - - - - 0x0147D9 05:C7C9: EE A4 01  INC ram_01A4
- - - - - - 0x0147DC 05:C7CC: F0 03     BEQ bra_C7D1
bra_C7CE:
C - - - - - 0x0147DE 05:C7CE: 18        CLC
C - - - - - 0x0147DF 05:C7CF: 65 80     ADC ram_0080
bra_C7D1:
C - - - - - 0x0147E1 05:C7D1: AA        TAX
C - - - - - 0x0147E2 05:C7D2: AD 5C 01  LDA ram_015C
C - - - - - 0x0147E5 05:C7D5: F0 05     BEQ bra_C7DC
C - - - - - 0x0147E7 05:C7D7: 8E 60 01  STX ram_0160
C - - - - - 0x0147EA 05:C7DA: A6 94     LDX ram_0094
bra_C7DC:
C - - - - - 0x0147EC 05:C7DC: 86 94     STX ram_0094
C - - - - - 0x0147EE 05:C7DE: BD AA D6  LDA tbl_D6AA,X
C - - - - - 0x0147F1 05:C7E1: 6D A8 01  ADC ram_01A8
C - - - - - 0x0147F4 05:C7E4: 85 79     STA ram_0079
C - - - - - 0x0147F6 05:C7E6: BD 49 D6  LDA tbl_D649,X
C - - - - - 0x0147F9 05:C7E9: 69 00     ADC #$00
C - - - - - 0x0147FB 05:C7EB: 85 7A     STA ram_007A
C - - - - - 0x0147FD 05:C7ED: AD AC 01  LDA ram_01AC
C - - - - - 0x014800 05:C7F0: D0 03     BNE bra_C7F5
C - - - - - 0x014802 05:C7F2: C8        INY
C - - - - - 0x014803 05:C7F3: B1 51     LDA (ram_0051),Y
bra_C7F5:
C - - - - - 0x014805 05:C7F5: 85 84     STA ram_0084
C - - - - - 0x014807 05:C7F7: C8        INY
C - - - - - 0x014808 05:C7F8: 98        TYA
C - - - - - 0x014809 05:C7F9: 18        CLC
C - - - - - 0x01480A 05:C7FA: 65 51     ADC ram_0051
C - - - - - 0x01480C 05:C7FC: 85 51     STA ram_0051
C - - - - - 0x01480E 05:C7FE: 90 02     BCC bra_C802_not_overflow
C - - - - - 0x014810 05:C800: E6 52     INC ram_0052
bra_C802_not_overflow:
C - - - - - 0x014812 05:C802: AE 4A 01  LDX ram_014A
C - - - - - 0x014815 05:C805: E8        INX
C - - - - - 0x014816 05:C806: 8E 44 01  STX ram_0144
C - - - - - 0x014819 05:C809: AD 67 01  LDA ram_0167
C - - - - - 0x01481C 05:C80C: F0 0C     BEQ bra_C81A
C - - - - - 0x01481E 05:C80E: 8D 6B 01  STA ram_016B
C - - - - - 0x014821 05:C811: AD 77 01  LDA ram_0177
C - - - - - 0x014824 05:C814: 8D 73 01  STA ram_0173
C - - - - - 0x014827 05:C817: AD 7B 01  LDA ram_017B
bra_C81A:
C - - - - - 0x01482A 05:C81A: 85 8E     STA ram_008E
C - - - - - 0x01482C 05:C81C: AD B2 01  LDA ram_01B2
C - - - - - 0x01482F 05:C81F: F0 3A     BEQ bra_C85B
C - - - - - 0x014831 05:C821: 10 26     BPL bra_C849
C - - - - - 0x014833 05:C823: AD 95 01  LDA ram_0195
C - - - - - 0x014836 05:C826: F0 04     BEQ bra_C82C
C - - - - - 0x014838 05:C828: C5 84     CMP ram_0084
C - - - - - 0x01483A 05:C82A: 90 0B     BCC bra_C837
bra_C82C:
C - - - - - 0x01483C 05:C82C: AD 9A 01  LDA ram_019A
C - - - - - 0x01483F 05:C82F: F0 06     BEQ bra_C837
C - - - - - 0x014841 05:C831: A5 84     LDA ram_0084
C - - - - - 0x014843 05:C833: 38        SEC
C - - - - - 0x014844 05:C834: ED 9A 01  SBC ram_019A
bra_C837:
C - - - - - 0x014847 05:C837: 8D 9F 01  STA ram_019F
C - - - - - 0x01484A 05:C83A: A0 01     LDY #$01
C - - - - - 0x01484C 05:C83C: 8C 3F 01  STY ram_013F
C - - - - - 0x01484F 05:C83F: 88        DEY
C - - - - - 0x014850 05:C840: 8C 28 01  STY ram_0128
C - - - - - 0x014853 05:C843: 88        DEY
C - - - - - 0x014854 05:C844: 8C 3A 01  STY ram_013A
C - - - - - 0x014857 05:C847: 30 12     BMI bra_C85B
bra_C849:
C - - - - - 0x014859 05:C849: AE 35 01  LDX ram_0135
C - - - - - 0x01485C 05:C84C: 8E 3A 01  STX ram_013A
C - - - - - 0x01485F 05:C84F: BD 27 01  LDA ram_0127,X
C - - - - - 0x014862 05:C852: 8D 3F 01  STA ram_013F
C - - - - - 0x014865 05:C855: AD 21 01  LDA ram_0121
C - - - - - 0x014868 05:C858: 8D B7 01  STA ram_01B7
bra_C85B:
C - - - - - 0x01486B 05:C85B: AD 7F 01  LDA ram_017F
C - - - - - 0x01486E 05:C85E: F0 0F     BEQ bra_C86F
- - - - - - 0x014870 05:C860: 8D 8F 01  STA ram_018F
- - - - - - 0x014873 05:C863: AD 86 01  LDA ram_0186
- - - - - - 0x014876 05:C866: 8D 06 40  STA $4006
- - - - - - 0x014879 05:C869: AD 87 01  LDA ram_0187
- - - - - - 0x01487C 05:C86C: 4C 7C C8  JMP loc_C87C
bra_C86F:
C - - - - - 0x01487F 05:C86F: A5 79     LDA ram_0079
C - - - - - 0x014881 05:C871: 8D 06 40  STA $4006
C - - - - - 0x014884 05:C874: A5 7A     LDA ram_007A
C - - - - - 0x014886 05:C876: C5 8A     CMP ram_008A
C - - - - - 0x014888 05:C878: F0 05     BEQ bra_C87F
C - - - - - 0x01488A 05:C87A: 85 8A     STA ram_008A
loc_C87C:
C - - - - - 0x01488C 05:C87C: 8D 07 40  STA $4007
bra_C87F:
loc_C87F:
C D 2 - - - 0x01488F 05:C87F: AD 3A 01  LDA ram_013A
C - - - - - 0x014892 05:C882: 30 44     BMI bra_C8C8
C - - - - - 0x014894 05:C884: D0 20     BNE bra_C8A6
C - - - - - 0x014896 05:C886: CE 3F 01  DEC ram_013F
C - - - - - 0x014899 05:C889: 10 6D     BPL bra_C8F8
C - - - - - 0x01489B 05:C88B: AD 27 01  LDA ram_0127
C - - - - - 0x01489E 05:C88E: 8D 3F 01  STA ram_013F
C - - - - - 0x0148A1 05:C891: EE B7 01  INC ram_01B7
C - - - - - 0x0148A4 05:C894: AD B7 01  LDA ram_01B7
C - - - - - 0x0148A7 05:C897: C9 0F     CMP #$0F
C - - - - - 0x0148A9 05:C899: D0 5D     BNE bra_C8F8
C - - - - - 0x0148AB 05:C89B: EE 3A 01  INC ram_013A
C - - - - - 0x0148AE 05:C89E: AD 28 01  LDA ram_0128
C - - - - - 0x0148B1 05:C8A1: 8D 3F 01  STA ram_013F
C - - - - - 0x0148B4 05:C8A4: D0 52     BNE bra_C8F8
bra_C8A6:
C - - - - - 0x0148B6 05:C8A6: C9 01     CMP #$01
C - - - - - 0x0148B8 05:C8A8: D0 4E     BNE bra_C8F8
C - - - - - 0x0148BA 05:C8AA: CE 3F 01  DEC ram_013F
C - - - - - 0x0148BD 05:C8AD: 10 49     BPL bra_C8F8
C - - - - - 0x0148BF 05:C8AF: AD 28 01  LDA ram_0128
C - - - - - 0x0148C2 05:C8B2: 8D 3F 01  STA ram_013F
C - - - - - 0x0148C5 05:C8B5: AD B7 01  LDA ram_01B7
C - - - - - 0x0148C8 05:C8B8: CD 30 01  CMP ram_0130
C - - - - - 0x0148CB 05:C8BB: F0 05     BEQ bra_C8C2
C - - - - - 0x0148CD 05:C8BD: CE B7 01  DEC ram_01B7
C - - - - - 0x0148D0 05:C8C0: 10 36     BPL bra_C8F8
bra_C8C2:
C - - - - - 0x0148D2 05:C8C2: EE 3A 01  INC ram_013A
C - - - - - 0x0148D5 05:C8C5: 4C F8 C8  JMP loc_C8F8
bra_C8C8:
C - - - - - 0x0148D8 05:C8C8: AD 9F 01  LDA ram_019F
C - - - - - 0x0148DB 05:C8CB: F0 0D     BEQ bra_C8DA
C - - - - - 0x0148DD 05:C8CD: CE 9F 01  DEC ram_019F
C - - - - - 0x0148E0 05:C8D0: D0 08     BNE bra_C8DA
C - - - - - 0x0148E2 05:C8D2: A9 01     LDA #$01
C - - - - - 0x0148E4 05:C8D4: 8D 3F 01  STA ram_013F
C - - - - - 0x0148E7 05:C8D7: EE 28 01  INC ram_0128
bra_C8DA:
C - - - - - 0x0148EA 05:C8DA: CE 3F 01  DEC ram_013F
C - - - - - 0x0148ED 05:C8DD: D0 19     BNE bra_C8F8
C - - - - - 0x0148EF 05:C8DF: AC 28 01  LDY ram_0128
C - - - - - 0x0148F2 05:C8E2: B1 5D     LDA (ram_005D),Y
C - - - - - 0x0148F4 05:C8E4: 30 12     BMI bra_C8F8
C - - - - - 0x0148F6 05:C8E6: C9 10     CMP #$10
C - - - - - 0x0148F8 05:C8E8: 90 02     BCC bra_C8EC_not_overflow
C - - - - - 0x0148FA 05:C8EA: A0 00     LDY #$00
bra_C8EC_not_overflow:
C - - - - - 0x0148FC 05:C8EC: 8D B7 01  STA ram_01B7
C - - - - - 0x0148FF 05:C8EF: AD BC 01  LDA ram_01BC
C - - - - - 0x014902 05:C8F2: 8D 3F 01  STA ram_013F
C - - - - - 0x014905 05:C8F5: EE 28 01  INC ram_0128
bra_C8F8:
loc_C8F8:
C D 2 - - - 0x014908 05:C8F8: AD B7 01  LDA ram_01B7
C - - - - - 0x01490B 05:C8FB: 0D 64 01  ORA ram_0164
C - - - - - 0x01490E 05:C8FE: 8D 04 40  STA $4004
C - - - - - 0x014911 05:C901: AD 7F 01  LDA ram_017F
C - - - - - 0x014914 05:C904: F0 19     BEQ bra_C91F
- - - - - - 0x014916 05:C906: AD 8F 01  LDA ram_018F
- - - - - - 0x014919 05:C909: F0 14     BEQ bra_C91F
- - - - - - 0x01491B 05:C90B: CE 8F 01  DEC ram_018F
- - - - - - 0x01491E 05:C90E: F0 03     BEQ bra_C913
- - - - - - 0x014920 05:C910: 4C DE C9  JMP loc_C9DE
bra_C913:
- - - - - - 0x014923 05:C913: A5 79     LDA ram_0079
- - - - - - 0x014925 05:C915: 8D 06 40  STA $4006
- - - - - - 0x014928 05:C918: A5 7A     LDA ram_007A
- - - - - - 0x01492A 05:C91A: 85 8A     STA ram_008A
- - - - - - 0x01492C 05:C91C: 8D 07 40  STA $4007
bra_C91F:
C - - - - - 0x01492F 05:C91F: AD 67 01  LDA ram_0167
C - - - - - 0x014932 05:C922: F0 49     BEQ bra_C96D
C - - - - - 0x014934 05:C924: AD 6B 01  LDA ram_016B
C - - - - - 0x014937 05:C927: F0 05     BEQ bra_C92E
C - - - - - 0x014939 05:C929: CE 6B 01  DEC ram_016B
C - - - - - 0x01493C 05:C92C: D0 6F     BNE bra_C99D
bra_C92E:
C - - - - - 0x01493E 05:C92E: A5 79     LDA ram_0079
C - - - - - 0x014940 05:C930: A6 7A     LDX ram_007A
C - - - - - 0x014942 05:C932: A4 8E     LDY ram_008E
C - - - - - 0x014944 05:C934: F0 09     BEQ bra_C93F
C - - - - - 0x014946 05:C936: 18        CLC
C - - - - - 0x014947 05:C937: 6D 6F 01  ADC ram_016F
C - - - - - 0x01494A 05:C93A: 90 0A     BCC bra_C946
C - - - - - 0x01494C 05:C93C: E8        INX
C - - - - - 0x01494D 05:C93D: D0 07     BNE bra_C946
bra_C93F:
C - - - - - 0x01494F 05:C93F: 38        SEC
C - - - - - 0x014950 05:C940: ED 6F 01  SBC ram_016F
C - - - - - 0x014953 05:C943: B0 01     BCS bra_C946
C - - - - - 0x014955 05:C945: CA        DEX
bra_C946:
C - - - - - 0x014956 05:C946: 85 79     STA ram_0079
C - - - - - 0x014958 05:C948: 8D 06 40  STA $4006
C - - - - - 0x01495B 05:C94B: 86 7A     STX ram_007A
C - - - - - 0x01495D 05:C94D: E4 8A     CPX ram_008A
C - - - - - 0x01495F 05:C94F: F0 05     BEQ bra_C956
C - - - - - 0x014961 05:C951: 86 8A     STX ram_008A
C - - - - - 0x014963 05:C953: 8E 07 40  STX $4007
bra_C956:
C - - - - - 0x014966 05:C956: CE 73 01  DEC ram_0173
C - - - - - 0x014969 05:C959: D0 42     BNE bra_C99D
C - - - - - 0x01496B 05:C95B: AD 77 01  LDA ram_0177
C - - - - - 0x01496E 05:C95E: F0 3D     BEQ bra_C99D
C - - - - - 0x014970 05:C960: 0A        ASL
C - - - - - 0x014971 05:C961: 8D 73 01  STA ram_0173
C - - - - - 0x014974 05:C964: A5 8E     LDA ram_008E
C - - - - - 0x014976 05:C966: 49 FF     EOR #$FF
C - - - - - 0x014978 05:C968: 85 8E     STA ram_008E
C - - - - - 0x01497A 05:C96A: 4C 9D C9  JMP loc_C99D
bra_C96D:
C - - - - - 0x01497D 05:C96D: AD 44 01  LDA ram_0144
C - - - - - 0x014980 05:C970: F0 2B     BEQ bra_C99D
C - - - - - 0x014982 05:C972: CE 44 01  DEC ram_0144
C - - - - - 0x014985 05:C975: D0 26     BNE bra_C99D
C - - - - - 0x014987 05:C977: A5 8E     LDA ram_008E
C - - - - - 0x014989 05:C979: 49 FF     EOR #$FF
C - - - - - 0x01498B 05:C97B: 85 8E     STA ram_008E
C - - - - - 0x01498D 05:C97D: F0 0F     BEQ bra_C98E
C - - - - - 0x01498F 05:C97F: AD 4A 01  LDA ram_014A
C - - - - - 0x014992 05:C982: 8D 44 01  STA ram_0144
C - - - - - 0x014995 05:C985: A5 94     LDA ram_0094
C - - - - - 0x014997 05:C987: 18        CLC
C - - - - - 0x014998 05:C988: 6D 56 01  ADC ram_0156
C - - - - - 0x01499B 05:C98B: 4C C0 C9  JMP loc_C9C0
bra_C98E:
C - - - - - 0x01499E 05:C98E: AD 50 01  LDA ram_0150
C - - - - - 0x0149A1 05:C991: 8D 44 01  STA ram_0144
C - - - - - 0x0149A4 05:C994: A5 94     LDA ram_0094
C - - - - - 0x0149A6 05:C996: 38        SEC
C - - - - - 0x0149A7 05:C997: ED 56 01  SBC ram_0156
C - - - - - 0x0149AA 05:C99A: 4C C0 C9  JMP loc_C9C0
bra_C99D:
loc_C99D:
C D 2 - - - 0x0149AD 05:C99D: AD 5C 01  LDA ram_015C
C - - - - - 0x0149B0 05:C9A0: F0 3C     BEQ bra_C9DE
C - - - - - 0x0149B2 05:C9A2: A5 94     LDA ram_0094
C - - - - - 0x0149B4 05:C9A4: CD 60 01  CMP ram_0160
C - - - - - 0x0149B7 05:C9A7: 90 0C     BCC bra_C9B5
C - - - - - 0x0149B9 05:C9A9: F0 33     BEQ bra_C9DE
C - - - - - 0x0149BB 05:C9AB: ED 5C 01  SBC ram_015C
C - - - - - 0x0149BE 05:C9AE: CD 60 01  CMP ram_0160
C - - - - - 0x0149C1 05:C9B1: B0 0D     BCS bra_C9C0
C - - - - - 0x0149C3 05:C9B3: 90 08     BCC bra_C9BD    ; jmp
bra_C9B5:
C - - - - - 0x0149C5 05:C9B5: 6D 5C 01  ADC ram_015C
C - - - - - 0x0149C8 05:C9B8: CD 60 01  CMP ram_0160
C - - - - - 0x0149CB 05:C9BB: 90 03     BCC bra_C9C0
bra_C9BD:
C - - - - - 0x0149CD 05:C9BD: AD 60 01  LDA ram_0160
bra_C9C0:
loc_C9C0:
C D 2 - - - 0x0149D0 05:C9C0: 85 94     STA ram_0094
C - - - - - 0x0149D2 05:C9C2: AA        TAX
C - - - - - 0x0149D3 05:C9C3: BD AA D6  LDA tbl_D6AA,X
C - - - - - 0x0149D6 05:C9C6: 6D A8 01  ADC ram_01A8
C - - - - - 0x0149D9 05:C9C9: 85 79     STA ram_0079
C - - - - - 0x0149DB 05:C9CB: 8D 06 40  STA $4006
C - - - - - 0x0149DE 05:C9CE: BD 49 D6  LDA tbl_D649,X
C - - - - - 0x0149E1 05:C9D1: 69 00     ADC #$00
C - - - - - 0x0149E3 05:C9D3: 85 7A     STA ram_007A
C - - - - - 0x0149E5 05:C9D5: C5 8A     CMP ram_008A
C - - - - - 0x0149E7 05:C9D7: F0 05     BEQ bra_C9DE
C - - - - - 0x0149E9 05:C9D9: 85 8A     STA ram_008A
C - - - - - 0x0149EB 05:C9DB: 8D 07 40  STA $4007
bra_C9DE:
loc_C9DE:
C D 2 - - - 0x0149EE 05:C9DE: AD E3 07  LDA ram_07E3
C - - - - - 0x0149F1 05:C9E1: 30 03     BMI bra_C9E6
C - - - - - 0x0149F3 05:C9E3: 4C 61 CB  JMP loc_CB61
bra_C9E6:
C - - - - - 0x0149F6 05:C9E6: C6 85     DEC ram_0085
C - - - - - 0x0149F8 05:C9E8: F0 0D     BEQ bra_C9F7
C - - - - - 0x0149FA 05:C9EA: 4C 84 CA  JMP loc_CA84
loc_C9ED:
C D 2 - - - 0x0149FD 05:C9ED: 98        TYA
C - - - - - 0x0149FE 05:C9EE: 18        CLC
C - - - - - 0x0149FF 05:C9EF: 65 53     ADC ram_0053
C - - - - - 0x014A01 05:C9F1: 85 53     STA ram_0053
C - - - - - 0x014A03 05:C9F3: 90 02     BCC bra_C9F7    ; if not overflow
- - - - - - 0x014A05 05:C9F5: E6 54     INC ram_0054
bra_C9F7:
loc_C9F7:
C D 2 - - - 0x014A07 05:C9F7: A0 00     LDY #$00
C - - - - - 0x014A09 05:C9F9: B1 53     LDA (ram_0053),Y
C - - - - - 0x014A0B 05:C9FB: 10 0B     BPL bra_CA08_not_control_byte
C - - - - - 0x014A0D 05:C9FD: C8        INY
C - - - - - 0x014A0E 05:C9FE: AA        TAX
C - - - - - 0x014A0F 05:C9FF: BD EB D0  LDA tbl_D16B_hi - $80,X
C - - - - - 0x014A12 05:CA02: 48        PHA
C - - - - - 0x014A13 05:CA03: BD D8 D0  LDA tbl_D158_lo - $80,X
C - - - - - 0x014A16 05:CA06: 48        PHA
C - - - - - 0x014A17 05:CA07: 60        RTS
bra_CA08_not_control_byte:
C - - - - - 0x014A18 05:CA08: AE A5 01  LDX ram_01A5
C - - - - - 0x014A1B 05:CA0B: F0 05     BEQ bra_CA12
C - - - - - 0x014A1D 05:CA0D: EE A5 01  INC ram_01A5
C - - - - - 0x014A20 05:CA10: F0 03     BEQ bra_CA15
bra_CA12:
C - - - - - 0x014A22 05:CA12: 18        CLC
C - - - - - 0x014A23 05:CA13: 65 81     ADC ram_0081
bra_CA15:
C - - - - - 0x014A25 05:CA15: AA        TAX
C - - - - - 0x014A26 05:CA16: AD 5D 01  LDA ram_015D
C - - - - - 0x014A29 05:CA19: F0 05     BEQ bra_CA20
- - - - - - 0x014A2B 05:CA1B: 8E 61 01  STX ram_0161
- - - - - - 0x014A2E 05:CA1E: A6 95     LDX ram_0095
bra_CA20:
C - - - - - 0x014A30 05:CA20: 86 95     STX ram_0095
C - - - - - 0x014A32 05:CA22: BD AA D6  LDA tbl_D6AA,X
C - - - - - 0x014A35 05:CA25: 6D A9 01  ADC ram_01A9
C - - - - - 0x014A38 05:CA28: 85 7B     STA ram_007B
C - - - - - 0x014A3A 05:CA2A: BD 49 D6  LDA tbl_D649,X
C - - - - - 0x014A3D 05:CA2D: 69 00     ADC #$00
C - - - - - 0x014A3F 05:CA2F: 85 7C     STA ram_007C
C - - - - - 0x014A41 05:CA31: AD AD 01  LDA ram_01AD
C - - - - - 0x014A44 05:CA34: D0 03     BNE bra_CA39
C - - - - - 0x014A46 05:CA36: C8        INY
C - - - - - 0x014A47 05:CA37: B1 53     LDA (ram_0053),Y
bra_CA39:
C - - - - - 0x014A49 05:CA39: 85 85     STA ram_0085
C - - - - - 0x014A4B 05:CA3B: C8        INY
C - - - - - 0x014A4C 05:CA3C: 98        TYA
C - - - - - 0x014A4D 05:CA3D: 18        CLC
C - - - - - 0x014A4E 05:CA3E: 65 53     ADC ram_0053
C - - - - - 0x014A50 05:CA40: 85 53     STA ram_0053
C - - - - - 0x014A52 05:CA42: 90 02     BCC bra_CA46_not_overflow
C - - - - - 0x014A54 05:CA44: E6 54     INC ram_0054
bra_CA46_not_overflow:
C - - - - - 0x014A56 05:CA46: AE 4B 01  LDX ram_014B
C - - - - - 0x014A59 05:CA49: E8        INX
C - - - - - 0x014A5A 05:CA4A: 8E 45 01  STX ram_0145
C - - - - - 0x014A5D 05:CA4D: AD 68 01  LDA ram_0168
C - - - - - 0x014A60 05:CA50: F0 0C     BEQ bra_CA5E
- - - - - - 0x014A62 05:CA52: 8D 6C 01  STA ram_016C
- - - - - - 0x014A65 05:CA55: AD 78 01  LDA ram_0178
- - - - - - 0x014A68 05:CA58: 8D 74 01  STA ram_0174
- - - - - - 0x014A6B 05:CA5B: AD 7C 01  LDA ram_017C
bra_CA5E:
C - - - - - 0x014A6E 05:CA5E: 85 8F     STA ram_008F
C - - - - - 0x014A70 05:CA60: AD 80 01  LDA ram_0180
C - - - - - 0x014A73 05:CA63: F0 0F     BEQ bra_CA74
- - - - - - 0x014A75 05:CA65: 8D 90 01  STA ram_0190
- - - - - - 0x014A78 05:CA68: AD 88 01  LDA ram_0188
- - - - - - 0x014A7B 05:CA6B: 8D 0A 40  STA $400A
- - - - - - 0x014A7E 05:CA6E: AD 89 01  LDA ram_0189
- - - - - - 0x014A81 05:CA71: 4C 81 CA  JMP loc_CA81
bra_CA74:
C - - - - - 0x014A84 05:CA74: A5 7B     LDA ram_007B
C - - - - - 0x014A86 05:CA76: 8D 0A 40  STA $400A
C - - - - - 0x014A89 05:CA79: A5 7C     LDA ram_007C
C - - - - - 0x014A8B 05:CA7B: C5 8B     CMP ram_008B
C - - - - - 0x014A8D 05:CA7D: F0 05     BEQ bra_CA84
C - - - - - 0x014A8F 05:CA7F: 85 8B     STA ram_008B
loc_CA81:
C - - - - - 0x014A91 05:CA81: 8D 0B 40  STA $400B
bra_CA84:
loc_CA84:
C D 2 - - - 0x014A94 05:CA84: AD 80 01  LDA ram_0180
C - - - - - 0x014A97 05:CA87: F0 19     BEQ bra_CAA2
- - - - - - 0x014A99 05:CA89: AD 90 01  LDA ram_0190
- - - - - - 0x014A9C 05:CA8C: F0 14     BEQ bra_CAA2
- - - - - - 0x014A9E 05:CA8E: CE 90 01  DEC ram_0190
- - - - - - 0x014AA1 05:CA91: F0 03     BEQ bra_CA96
- - - - - - 0x014AA3 05:CA93: 4C 61 CB  JMP loc_CB61
bra_CA96:
- - - - - - 0x014AA6 05:CA96: A5 7B     LDA ram_007B
- - - - - - 0x014AA8 05:CA98: 8D 0A 40  STA $400A
- - - - - - 0x014AAB 05:CA9B: A5 7C     LDA ram_007C
- - - - - - 0x014AAD 05:CA9D: 85 8B     STA ram_008B
- - - - - - 0x014AAF 05:CA9F: 8D 0B 40  STA $400B
bra_CAA2:
C - - - - - 0x014AB2 05:CAA2: AD 68 01  LDA ram_0168
C - - - - - 0x014AB5 05:CAA5: F0 49     BEQ bra_CAF0
- - - - - - 0x014AB7 05:CAA7: AD 6C 01  LDA ram_016C
- - - - - - 0x014ABA 05:CAAA: F0 05     BEQ bra_CAB1
- - - - - - 0x014ABC 05:CAAC: CE 6C 01  DEC ram_016C
- - - - - - 0x014ABF 05:CAAF: D0 6F     BNE bra_CB20
bra_CAB1:
- - - - - - 0x014AC1 05:CAB1: A5 7B     LDA ram_007B
- - - - - - 0x014AC3 05:CAB3: A6 7C     LDX ram_007C
- - - - - - 0x014AC5 05:CAB5: A4 8F     LDY ram_008F
- - - - - - 0x014AC7 05:CAB7: F0 09     BEQ bra_CAC2
- - - - - - 0x014AC9 05:CAB9: 18        CLC
- - - - - - 0x014ACA 05:CABA: 6D 70 01  ADC ram_0170
- - - - - - 0x014ACD 05:CABD: 90 0A     BCC bra_CAC9
- - - - - - 0x014ACF 05:CABF: E8        INX
- - - - - - 0x014AD0 05:CAC0: D0 07     BNE bra_CAC9
bra_CAC2:
- - - - - - 0x014AD2 05:CAC2: 38        SEC
- - - - - - 0x014AD3 05:CAC3: ED 70 01  SBC ram_0170
- - - - - - 0x014AD6 05:CAC6: B0 01     BCS bra_CAC9
- - - - - - 0x014AD8 05:CAC8: CA        DEX
bra_CAC9:
- - - - - - 0x014AD9 05:CAC9: 85 7B     STA ram_007B
- - - - - - 0x014ADB 05:CACB: 8D 0A 40  STA $400A
- - - - - - 0x014ADE 05:CACE: 86 7C     STX ram_007C
- - - - - - 0x014AE0 05:CAD0: E4 8B     CPX ram_008B
- - - - - - 0x014AE2 05:CAD2: F0 05     BEQ bra_CAD9
- - - - - - 0x014AE4 05:CAD4: 86 8B     STX ram_008B
- - - - - - 0x014AE6 05:CAD6: 8E 0B 40  STX $400B
bra_CAD9:
- - - - - - 0x014AE9 05:CAD9: CE 74 01  DEC ram_0174
- - - - - - 0x014AEC 05:CADC: D0 42     BNE bra_CB20
- - - - - - 0x014AEE 05:CADE: AD 78 01  LDA ram_0178
- - - - - - 0x014AF1 05:CAE1: F0 3D     BEQ bra_CB20
- - - - - - 0x014AF3 05:CAE3: 0A        ASL
- - - - - - 0x014AF4 05:CAE4: 8D 74 01  STA ram_0174
- - - - - - 0x014AF7 05:CAE7: A5 8F     LDA ram_008F
- - - - - - 0x014AF9 05:CAE9: 49 FF     EOR #$FF
- - - - - - 0x014AFB 05:CAEB: 85 8F     STA ram_008F
- - - - - - 0x014AFD 05:CAED: 4C 20 CB  JMP loc_CB20
bra_CAF0:
C - - - - - 0x014B00 05:CAF0: AD 45 01  LDA ram_0145
C - - - - - 0x014B03 05:CAF3: F0 2B     BEQ bra_CB20
C - - - - - 0x014B05 05:CAF5: CE 45 01  DEC ram_0145
C - - - - - 0x014B08 05:CAF8: D0 26     BNE bra_CB20
C - - - - - 0x014B0A 05:CAFA: A5 8F     LDA ram_008F
C - - - - - 0x014B0C 05:CAFC: 49 FF     EOR #$FF
C - - - - - 0x014B0E 05:CAFE: 85 8F     STA ram_008F
C - - - - - 0x014B10 05:CB00: F0 0F     BEQ bra_CB11
C - - - - - 0x014B12 05:CB02: AD 4B 01  LDA ram_014B
C - - - - - 0x014B15 05:CB05: 8D 45 01  STA ram_0145
C - - - - - 0x014B18 05:CB08: A5 95     LDA ram_0095
C - - - - - 0x014B1A 05:CB0A: 18        CLC
C - - - - - 0x014B1B 05:CB0B: 6D 57 01  ADC ram_0157
C - - - - - 0x014B1E 05:CB0E: 4C 43 CB  JMP loc_CB43
bra_CB11:
C - - - - - 0x014B21 05:CB11: AD 51 01  LDA ram_0151
C - - - - - 0x014B24 05:CB14: 8D 45 01  STA ram_0145
C - - - - - 0x014B27 05:CB17: A5 95     LDA ram_0095
C - - - - - 0x014B29 05:CB19: 38        SEC
C - - - - - 0x014B2A 05:CB1A: ED 57 01  SBC ram_0157
C - - - - - 0x014B2D 05:CB1D: 4C 43 CB  JMP loc_CB43
bra_CB20:
loc_CB20:
C - - - - - 0x014B30 05:CB20: AD 5D 01  LDA ram_015D
C - - - - - 0x014B33 05:CB23: F0 3C     BEQ bra_CB61
- - - - - - 0x014B35 05:CB25: A5 95     LDA ram_0095
- - - - - - 0x014B37 05:CB27: CD 61 01  CMP ram_0161
- - - - - - 0x014B3A 05:CB2A: 90 0C     BCC bra_CB38
- - - - - - 0x014B3C 05:CB2C: F0 33     BEQ bra_CB61
- - - - - - 0x014B3E 05:CB2E: ED 5D 01  SBC ram_015D
- - - - - - 0x014B41 05:CB31: CD 61 01  CMP ram_0161
- - - - - - 0x014B44 05:CB34: B0 0D     BCS bra_CB43
- - - - - - 0x014B46 05:CB36: 90 08     BCC bra_CB40
bra_CB38:
- - - - - - 0x014B48 05:CB38: 6D 5D 01  ADC ram_015D
- - - - - - 0x014B4B 05:CB3B: CD 61 01  CMP ram_0161
- - - - - - 0x014B4E 05:CB3E: 90 03     BCC bra_CB43
bra_CB40:
- - - - - - 0x014B50 05:CB40: AD 61 01  LDA ram_0161
loc_CB43:
bra_CB43:
C D 2 - - - 0x014B53 05:CB43: 85 95     STA ram_0095
C - - - - - 0x014B55 05:CB45: AA        TAX
C - - - - - 0x014B56 05:CB46: BD AA D6  LDA tbl_D6AA,X
C - - - - - 0x014B59 05:CB49: 6D A9 01  ADC ram_01A9
C - - - - - 0x014B5C 05:CB4C: 85 7B     STA ram_007B
C - - - - - 0x014B5E 05:CB4E: 8D 0A 40  STA $400A
C - - - - - 0x014B61 05:CB51: BD 49 D6  LDA tbl_D649,X
C - - - - - 0x014B64 05:CB54: 69 00     ADC #$00
C - - - - - 0x014B66 05:CB56: 85 7C     STA ram_007C
C - - - - - 0x014B68 05:CB58: C5 8B     CMP ram_008B
C - - - - - 0x014B6A 05:CB5A: F0 05     BEQ bra_CB61
C - - - - - 0x014B6C 05:CB5C: 85 8B     STA ram_008B
C - - - - - 0x014B6E 05:CB5E: 8D 0B 40  STA $400B
bra_CB61:
loc_CB61:
C D 2 - - - 0x014B71 05:CB61: AD E4 07  LDA ram_07E4
C - - - - - 0x014B74 05:CB64: 30 03     BMI bra_CB69
C - - - - - 0x014B76 05:CB66: 4C EB CC  JMP loc_CCEB
bra_CB69:
C - - - - - 0x014B79 05:CB69: C6 86     DEC ram_0086
C - - - - - 0x014B7B 05:CB6B: F0 0D     BEQ bra_CB7A
C - - - - - 0x014B7D 05:CB6D: 4C 0D CC  JMP loc_CC0D
loc_CB70:
C D 2 - - - 0x014B80 05:CB70: 98        TYA
C - - - - - 0x014B81 05:CB71: 18        CLC
C - - - - - 0x014B82 05:CB72: 65 55     ADC ram_0055
C - - - - - 0x014B84 05:CB74: 85 55     STA ram_0055
C - - - - - 0x014B86 05:CB76: 90 02     BCC bra_CB7A    ; if not overflow
C - - - - - 0x014B88 05:CB78: E6 56     INC ram_0056
bra_CB7A:
loc_CB7A:
C D 2 - - - 0x014B8A 05:CB7A: A0 00     LDY #$00
C - - - - - 0x014B8C 05:CB7C: B1 55     LDA (ram_0055),Y
C - - - - - 0x014B8E 05:CB7E: 10 0B     BPL bra_CB8B_not_control_byte
C - - - - - 0x014B90 05:CB80: C8        INY
C - - - - - 0x014B91 05:CB81: AA        TAX
C - - - - - 0x014B92 05:CB82: BD F4 D1  LDA tbl_D274_hi - $80,X
C - - - - - 0x014B95 05:CB85: 48        PHA
C - - - - - 0x014B96 05:CB86: BD DF D1  LDA tbl_D25F_lo - $80,X
C - - - - - 0x014B99 05:CB89: 48        PHA
C - - - - - 0x014B9A 05:CB8A: 60        RTS
bra_CB8B_not_control_byte:
C - - - - - 0x014B9B 05:CB8B: 05 99     ORA ram_0099
C - - - - - 0x014B9D 05:CB8D: 85 96     STA ram_0096
C - - - - - 0x014B9F 05:CB8F: AD AE 01  LDA ram_01AE
C - - - - - 0x014BA2 05:CB92: D0 03     BNE bra_CB97
C - - - - - 0x014BA4 05:CB94: C8        INY
C - - - - - 0x014BA5 05:CB95: B1 55     LDA (ram_0055),Y
bra_CB97:
C - - - - - 0x014BA7 05:CB97: 85 86     STA ram_0086
C - - - - - 0x014BA9 05:CB99: C8        INY
C - - - - - 0x014BAA 05:CB9A: 98        TYA
C - - - - - 0x014BAB 05:CB9B: 18        CLC
C - - - - - 0x014BAC 05:CB9C: 65 55     ADC ram_0055
C - - - - - 0x014BAE 05:CB9E: 85 55     STA ram_0055
C - - - - - 0x014BB0 05:CBA0: 90 02     BCC bra_CBA4_not_overflow
C - - - - - 0x014BB2 05:CBA2: E6 56     INC ram_0056
bra_CBA4_not_overflow:
C - - - - - 0x014BB4 05:CBA4: AE 4C 01  LDX ram_014C
C - - - - - 0x014BB7 05:CBA7: E8        INX
C - - - - - 0x014BB8 05:CBA8: 8E 46 01  STX ram_0146
C - - - - - 0x014BBB 05:CBAB: A9 00     LDA #$00
C - - - - - 0x014BBD 05:CBAD: 85 90     STA ram_0090
C - - - - - 0x014BBF 05:CBAF: AD B3 01  LDA ram_01B3
C - - - - - 0x014BC2 05:CBB2: F0 3A     BEQ bra_CBEE
C - - - - - 0x014BC4 05:CBB4: 10 26     BPL bra_CBDC
C - - - - - 0x014BC6 05:CBB6: AD 96 01  LDA ram_0196
C - - - - - 0x014BC9 05:CBB9: F0 04     BEQ bra_CBBF
C - - - - - 0x014BCB 05:CBBB: C5 86     CMP ram_0086
C - - - - - 0x014BCD 05:CBBD: 90 0B     BCC bra_CBCA
bra_CBBF:
C - - - - - 0x014BCF 05:CBBF: AD 9B 01  LDA ram_019B
C - - - - - 0x014BD2 05:CBC2: F0 06     BEQ bra_CBCA
C - - - - - 0x014BD4 05:CBC4: A5 86     LDA ram_0086
C - - - - - 0x014BD6 05:CBC6: 38        SEC
C - - - - - 0x014BD7 05:CBC7: ED 9B 01  SBC ram_019B
bra_CBCA:
C - - - - - 0x014BDA 05:CBCA: 8D A0 01  STA ram_01A0
C - - - - - 0x014BDD 05:CBCD: A0 01     LDY #$01
C - - - - - 0x014BDF 05:CBCF: 8C 40 01  STY ram_0140
C - - - - - 0x014BE2 05:CBD2: 88        DEY
C - - - - - 0x014BE3 05:CBD3: 8C 2A 01  STY ram_012A
C - - - - - 0x014BE6 05:CBD6: 88        DEY
C - - - - - 0x014BE7 05:CBD7: 8C 3B 01  STY ram_013B
C - - - - - 0x014BEA 05:CBDA: 30 12     BMI bra_CBEE
bra_CBDC:
C - - - - - 0x014BEC 05:CBDC: AE 36 01  LDX ram_0136
C - - - - - 0x014BEF 05:CBDF: 8E 3B 01  STX ram_013B
C - - - - - 0x014BF2 05:CBE2: BD 29 01  LDA ram_0129,X
C - - - - - 0x014BF5 05:CBE5: 8D 40 01  STA ram_0140
C - - - - - 0x014BF8 05:CBE8: AD 22 01  LDA ram_0122
C - - - - - 0x014BFB 05:CBEB: 8D B8 01  STA ram_01B8
bra_CBEE:
C - - - - - 0x014BFE 05:CBEE: A5 96     LDA ram_0096
C - - - - - 0x014C00 05:CBF0: F0 0E     BEQ bra_CC00
C - - - - - 0x014C02 05:CBF2: AD 81 01  LDA ram_0181
C - - - - - 0x014C05 05:CBF5: F0 07     BEQ bra_CBFE
- - - - - - 0x014C07 05:CBF7: 8D 91 01  STA ram_0191
- - - - - - 0x014C0A 05:CBFA: AD 8A 01  LDA ram_018A
- - - - - - 0x014C0D 05:CBFD: 2C        .byte $2C   ; BIT opcode
bra_CBFE:
C - - - - - 0x014C0E 05:CBFE: A5 96     LDA ram_0096
bra_CC00:
C - - - - - 0x014C10 05:CC00: AC E5 07  LDY ram_07E5
C - - - - - 0x014C13 05:CC03: 30 08     BMI bra_CC0D
C - - - - - 0x014C15 05:CC05: 8D 0E 40  STA $400E
C - - - - - 0x014C18 05:CC08: A9 03     LDA #$03
C - - - - - 0x014C1A 05:CC0A: 8D 0F 40  STA $400F
bra_CC0D:
loc_CC0D:
C D 2 - - - 0x014C1D 05:CC0D: AD 3B 01  LDA ram_013B
C - - - - - 0x014C20 05:CC10: 30 44     BMI bra_CC56
C - - - - - 0x014C22 05:CC12: D0 20     BNE bra_CC34
C - - - - - 0x014C24 05:CC14: CE 40 01  DEC ram_0140
C - - - - - 0x014C27 05:CC17: 10 6D     BPL bra_CC86
C - - - - - 0x014C29 05:CC19: AD 29 01  LDA ram_0129
C - - - - - 0x014C2C 05:CC1C: 8D 40 01  STA ram_0140
C - - - - - 0x014C2F 05:CC1F: EE B8 01  INC ram_01B8
C - - - - - 0x014C32 05:CC22: AD B8 01  LDA ram_01B8
C - - - - - 0x014C35 05:CC25: C9 0F     CMP #$0F
C - - - - - 0x014C37 05:CC27: D0 5D     BNE bra_CC86
C - - - - - 0x014C39 05:CC29: EE 3B 01  INC ram_013B
C - - - - - 0x014C3C 05:CC2C: AD 2A 01  LDA ram_012A
C - - - - - 0x014C3F 05:CC2F: 8D 40 01  STA ram_0140
C - - - - - 0x014C42 05:CC32: D0 52     BNE bra_CC86
bra_CC34:
C - - - - - 0x014C44 05:CC34: C9 01     CMP #$01
C - - - - - 0x014C46 05:CC36: D0 4E     BNE bra_CC86
C - - - - - 0x014C48 05:CC38: CE 40 01  DEC ram_0140
C - - - - - 0x014C4B 05:CC3B: 10 49     BPL bra_CC86
C - - - - - 0x014C4D 05:CC3D: AD 2A 01  LDA ram_012A
C - - - - - 0x014C50 05:CC40: 8D 40 01  STA ram_0140
C - - - - - 0x014C53 05:CC43: AD B8 01  LDA ram_01B8
C - - - - - 0x014C56 05:CC46: CD 31 01  CMP ram_0131
C - - - - - 0x014C59 05:CC49: F0 05     BEQ bra_CC50
C - - - - - 0x014C5B 05:CC4B: CE B8 01  DEC ram_01B8
C - - - - - 0x014C5E 05:CC4E: 10 36     BPL bra_CC86
bra_CC50:
C - - - - - 0x014C60 05:CC50: EE 3B 01  INC ram_013B
C - - - - - 0x014C63 05:CC53: 4C 86 CC  JMP loc_CC86
bra_CC56:
C - - - - - 0x014C66 05:CC56: AD A0 01  LDA ram_01A0
C - - - - - 0x014C69 05:CC59: F0 0D     BEQ bra_CC68
C - - - - - 0x014C6B 05:CC5B: CE A0 01  DEC ram_01A0
C - - - - - 0x014C6E 05:CC5E: D0 08     BNE bra_CC68
- - - - - - 0x014C70 05:CC60: A9 01     LDA #$01
- - - - - - 0x014C72 05:CC62: 8D 40 01  STA ram_0140
- - - - - - 0x014C75 05:CC65: EE 2A 01  INC ram_012A
bra_CC68:
C - - - - - 0x014C78 05:CC68: CE 40 01  DEC ram_0140
C - - - - - 0x014C7B 05:CC6B: D0 19     BNE bra_CC86
C - - - - - 0x014C7D 05:CC6D: AC 2A 01  LDY ram_012A
C - - - - - 0x014C80 05:CC70: B1 5F     LDA (ram_005F),Y
C - - - - - 0x014C82 05:CC72: 30 12     BMI bra_CC86
C - - - - - 0x014C84 05:CC74: C9 10     CMP #$10
C - - - - - 0x014C86 05:CC76: 90 02     BCC bra_CC7A
C - - - - - 0x014C88 05:CC78: A0 00     LDY #$00
bra_CC7A:
C - - - - - 0x014C8A 05:CC7A: 8D B8 01  STA ram_01B8
C - - - - - 0x014C8D 05:CC7D: AD BD 01  LDA ram_01BD
C - - - - - 0x014C90 05:CC80: 8D 40 01  STA ram_0140
C - - - - - 0x014C93 05:CC83: EE 2A 01  INC ram_012A
bra_CC86:
loc_CC86:
C D 2 - - - 0x014C96 05:CC86: AD B8 01  LDA ram_01B8
C - - - - - 0x014C99 05:CC89: 09 30     ORA #$30
C - - - - - 0x014C9B 05:CC8B: 8D 0C 40  STA $400C
C - - - - - 0x014C9E 05:CC8E: AD 81 01  LDA ram_0181
C - - - - - 0x014CA1 05:CC91: F0 0D     BEQ bra_CCA0
- - - - - - 0x014CA3 05:CC93: AD 91 01  LDA ram_0191
- - - - - - 0x014CA6 05:CC96: F0 17     BEQ bra_CCAF
- - - - - - 0x014CA8 05:CC98: CE 91 01  DEC ram_0191
- - - - - - 0x014CAB 05:CC9B: F0 03     BEQ bra_CCA0
- - - - - - 0x014CAD 05:CC9D: 4C EB CC  JMP loc_CCEB
bra_CCA0:
C - - - - - 0x014CB0 05:CCA0: AC E5 07  LDY ram_07E5
C - - - - - 0x014CB3 05:CCA3: 30 0A     BMI bra_CCAF
C - - - - - 0x014CB5 05:CCA5: A5 96     LDA ram_0096
C - - - - - 0x014CB7 05:CCA7: 8D 0E 40  STA $400E
C - - - - - 0x014CBA 05:CCAA: A9 03     LDA #$03
C - - - - - 0x014CBC 05:CCAC: 8D 0F 40  STA $400F
bra_CCAF:
C - - - - - 0x014CBF 05:CCAF: AD 46 01  LDA ram_0146
C - - - - - 0x014CC2 05:CCB2: F0 37     BEQ bra_CCEB
C - - - - - 0x014CC4 05:CCB4: CE 46 01  DEC ram_0146
C - - - - - 0x014CC7 05:CCB7: D0 32     BNE bra_CCEB
C - - - - - 0x014CC9 05:CCB9: A5 90     LDA ram_0090
C - - - - - 0x014CCB 05:CCBB: 49 FF     EOR #$FF
C - - - - - 0x014CCD 05:CCBD: 85 90     STA ram_0090
C - - - - - 0x014CCF 05:CCBF: F0 0F     BEQ bra_CCD0
C - - - - - 0x014CD1 05:CCC1: AD 4C 01  LDA ram_014C
C - - - - - 0x014CD4 05:CCC4: 8D 46 01  STA ram_0146
C - - - - - 0x014CD7 05:CCC7: A5 96     LDA ram_0096
C - - - - - 0x014CD9 05:CCC9: 18        CLC
C - - - - - 0x014CDA 05:CCCA: 6D 58 01  ADC ram_0158
C - - - - - 0x014CDD 05:CCCD: 4C DC CC  JMP loc_CCDC
bra_CCD0:
C - - - - - 0x014CE0 05:CCD0: AD 52 01  LDA ram_0152
C - - - - - 0x014CE3 05:CCD3: 8D 46 01  STA ram_0146
C - - - - - 0x014CE6 05:CCD6: A5 96     LDA ram_0096
C - - - - - 0x014CE8 05:CCD8: 38        SEC
C - - - - - 0x014CE9 05:CCD9: ED 58 01  SBC ram_0158
loc_CCDC:
C D 2 - - - 0x014CEC 05:CCDC: 85 96     STA ram_0096
C - - - - - 0x014CEE 05:CCDE: AC E5 07  LDY ram_07E5
C - - - - - 0x014CF1 05:CCE1: 30 10     BMI bra_CCF3
C - - - - - 0x014CF3 05:CCE3: 8D 0E 40  STA $400E
C - - - - - 0x014CF6 05:CCE6: A9 03     LDA #$03
C - - - - - 0x014CF8 05:CCE8: 8D 0F 40  STA $400F
bra_CCEB:
loc_CCEB:
C D 2 - - - 0x014CFB 05:CCEB: AD E5 07  LDA ram_07E5
C - - - - - 0x014CFE 05:CCEE: 30 03     BMI bra_CCF3
C - - - - - 0x014D00 05:CCF0: 4C 66 CE  JMP loc_CE66
bra_CCF3:
C - - - - - 0x014D03 05:CCF3: C6 87     DEC ram_0087
C - - - - - 0x014D05 05:CCF5: F0 0D     BEQ bra_CD04
C - - - - - 0x014D07 05:CCF7: 4C 92 CD  JMP loc_CD92
loc_CCFA:
C D 2 - - - 0x014D0A 05:CCFA: 98        TYA
C - - - - - 0x014D0B 05:CCFB: 18        CLC
C - - - - - 0x014D0C 05:CCFC: 65 57     ADC ram_0057
C - - - - - 0x014D0E 05:CCFE: 85 57     STA ram_0057
C - - - - - 0x014D10 05:CD00: 90 02     BCC bra_CD04    ; if not overflow
- - - - - - 0x014D12 05:CD02: E6 58     INC ram_0058
bra_CD04:
loc_CD04:
C D 2 - - - 0x014D14 05:CD04: A0 00     LDY #$00
C - - - - - 0x014D16 05:CD06: B1 57     LDA (ram_0057),Y
C - - - - - 0x014D18 05:CD08: 10 0B     BPL bra_CD15_not_control_byte
C - - - - - 0x014D1A 05:CD0A: C8        INY
C - - - - - 0x014D1B 05:CD0B: AA        TAX
C - - - - - 0x014D1C 05:CD0C: BD 24 D3  LDA tbl_D3A4_hi - $80,X
C - - - - - 0x014D1F 05:CD0F: 48        PHA
C - - - - - 0x014D20 05:CD10: BD 0F D3  LDA tbl_D38F_lo - $80,X
C - - - - - 0x014D23 05:CD13: 48        PHA
C - - - - - 0x014D24 05:CD14: 60        RTS
bra_CD15_not_control_byte:
C - - - - - 0x014D25 05:CD15: 05 9A     ORA ram_009A
C - - - - - 0x014D27 05:CD17: 85 97     STA ram_0097
C - - - - - 0x014D29 05:CD19: AD AF 01  LDA ram_01AF
C - - - - - 0x014D2C 05:CD1C: D0 03     BNE bra_CD21
C - - - - - 0x014D2E 05:CD1E: C8        INY
C - - - - - 0x014D2F 05:CD1F: B1 57     LDA (ram_0057),Y
bra_CD21:
C - - - - - 0x014D31 05:CD21: 85 87     STA ram_0087
C - - - - - 0x014D33 05:CD23: C8        INY
C - - - - - 0x014D34 05:CD24: 98        TYA
C - - - - - 0x014D35 05:CD25: 18        CLC
C - - - - - 0x014D36 05:CD26: 65 57     ADC ram_0057
C - - - - - 0x014D38 05:CD28: 85 57     STA ram_0057
C - - - - - 0x014D3A 05:CD2A: 90 02     BCC bra_CD2E_not_overflow
- - - - - - 0x014D3C 05:CD2C: E6 58     INC ram_0058
bra_CD2E_not_overflow:
C - - - - - 0x014D3E 05:CD2E: AE 4D 01  LDX ram_014D
C - - - - - 0x014D41 05:CD31: E8        INX
C - - - - - 0x014D42 05:CD32: 8E 47 01  STX ram_0147
C - - - - - 0x014D45 05:CD35: A9 00     LDA #$00
C - - - - - 0x014D47 05:CD37: 85 91     STA ram_0091
C - - - - - 0x014D49 05:CD39: AD B4 01  LDA ram_01B4
C - - - - - 0x014D4C 05:CD3C: F0 3A     BEQ bra_CD78
C - - - - - 0x014D4E 05:CD3E: 10 26     BPL bra_CD66
- - - - - - 0x014D50 05:CD40: AD 97 01  LDA ram_0197
- - - - - - 0x014D53 05:CD43: F0 04     BEQ bra_CD49
- - - - - - 0x014D55 05:CD45: C5 87     CMP ram_0087
- - - - - - 0x014D57 05:CD47: 90 0B     BCC bra_CD54
bra_CD49:
- - - - - - 0x014D59 05:CD49: AD 9C 01  LDA ram_019C
- - - - - - 0x014D5C 05:CD4C: F0 06     BEQ bra_CD54
- - - - - - 0x014D5E 05:CD4E: A5 87     LDA ram_0087
- - - - - - 0x014D60 05:CD50: 38        SEC
- - - - - - 0x014D61 05:CD51: ED 9C 01  SBC ram_019C
bra_CD54:
- - - - - - 0x014D64 05:CD54: 8D A1 01  STA ram_01A1
- - - - - - 0x014D67 05:CD57: A0 01     LDY #$01
- - - - - - 0x014D69 05:CD59: 8C 41 01  STY ram_0141
- - - - - - 0x014D6C 05:CD5C: 88        DEY
- - - - - - 0x014D6D 05:CD5D: 8C 2C 01  STY ram_012C
- - - - - - 0x014D70 05:CD60: 88        DEY
- - - - - - 0x014D71 05:CD61: 8C 3C 01  STY ram_013C
- - - - - - 0x014D74 05:CD64: 30 12     BMI bra_CD78
bra_CD66:
C - - - - - 0x014D76 05:CD66: AE 37 01  LDX ram_0137
C - - - - - 0x014D79 05:CD69: 8E 3C 01  STX ram_013C
C - - - - - 0x014D7C 05:CD6C: BD 2B 01  LDA ram_012B,X
C - - - - - 0x014D7F 05:CD6F: 8D 41 01  STA ram_0141
C - - - - - 0x014D82 05:CD72: AD 23 01  LDA ram_0123
C - - - - - 0x014D85 05:CD75: 8D B9 01  STA ram_01B9
bra_CD78:
C - - - - - 0x014D88 05:CD78: A5 97     LDA ram_0097
C - - - - - 0x014D8A 05:CD7A: F0 0E     BEQ bra_CD8A
C - - - - - 0x014D8C 05:CD7C: AD 82 01  LDA ram_0182
C - - - - - 0x014D8F 05:CD7F: F0 07     BEQ bra_CD88
- - - - - - 0x014D91 05:CD81: 8D 92 01  STA ram_0192
- - - - - - 0x014D94 05:CD84: AD 8B 01  LDA ram_018B
- - - - - - 0x014D97 05:CD87: 2C        .byte $2C   ; BIT opcode
bra_CD88:
C - - - - - 0x014D98 05:CD88: A5 97     LDA ram_0097
bra_CD8A:
C - - - - - 0x014D9A 05:CD8A: 8D 0E 40  STA $400E
C - - - - - 0x014D9D 05:CD8D: A9 03     LDA #$03
C - - - - - 0x014D9F 05:CD8F: 8D 0F 40  STA $400F
loc_CD92:
C D 2 - - - 0x014DA2 05:CD92: AD 3C 01  LDA ram_013C
C - - - - - 0x014DA5 05:CD95: 30 44     BMI bra_CDDB
C - - - - - 0x014DA7 05:CD97: D0 20     BNE bra_CDB9
C - - - - - 0x014DA9 05:CD99: CE 41 01  DEC ram_0141
C - - - - - 0x014DAC 05:CD9C: 10 6D     BPL bra_CE0B
C - - - - - 0x014DAE 05:CD9E: AD 2B 01  LDA ram_012B
C - - - - - 0x014DB1 05:CDA1: 8D 41 01  STA ram_0141
C - - - - - 0x014DB4 05:CDA4: EE B9 01  INC ram_01B9
C - - - - - 0x014DB7 05:CDA7: AD B9 01  LDA ram_01B9
C - - - - - 0x014DBA 05:CDAA: C9 0F     CMP #$0F
C - - - - - 0x014DBC 05:CDAC: D0 5D     BNE bra_CE0B
- - - - - - 0x014DBE 05:CDAE: EE 3C 01  INC ram_013C
- - - - - - 0x014DC1 05:CDB1: AD 2C 01  LDA ram_012C
- - - - - - 0x014DC4 05:CDB4: 8D 41 01  STA ram_0141
- - - - - - 0x014DC7 05:CDB7: D0 52     BNE bra_CE0B
bra_CDB9:
C - - - - - 0x014DC9 05:CDB9: C9 01     CMP #$01
C - - - - - 0x014DCB 05:CDBB: D0 4E     BNE bra_CE0B
C - - - - - 0x014DCD 05:CDBD: CE 41 01  DEC ram_0141
C - - - - - 0x014DD0 05:CDC0: 10 49     BPL bra_CE0B
C - - - - - 0x014DD2 05:CDC2: AD 2C 01  LDA ram_012C
C - - - - - 0x014DD5 05:CDC5: 8D 41 01  STA ram_0141
C - - - - - 0x014DD8 05:CDC8: AD B9 01  LDA ram_01B9
C - - - - - 0x014DDB 05:CDCB: CD 32 01  CMP ram_0132
C - - - - - 0x014DDE 05:CDCE: F0 05     BEQ bra_CDD5
C - - - - - 0x014DE0 05:CDD0: CE B9 01  DEC ram_01B9
C - - - - - 0x014DE3 05:CDD3: 10 36     BPL bra_CE0B
bra_CDD5:
- - - - - - 0x014DE5 05:CDD5: EE 3C 01  INC ram_013C
- - - - - - 0x014DE8 05:CDD8: 4C 0B CE  JMP loc_CE0B
bra_CDDB:
- - - - - - 0x014DEB 05:CDDB: AD A1 01  LDA ram_01A1
- - - - - - 0x014DEE 05:CDDE: F0 0D     BEQ bra_CDED
- - - - - - 0x014DF0 05:CDE0: CE A1 01  DEC ram_01A1
- - - - - - 0x014DF3 05:CDE3: D0 08     BNE bra_CDED
- - - - - - 0x014DF5 05:CDE5: A9 01     LDA #$01
- - - - - - 0x014DF7 05:CDE7: 8D 41 01  STA ram_0141
- - - - - - 0x014DFA 05:CDEA: EE 2C 01  INC ram_012C
bra_CDED:
- - - - - - 0x014DFD 05:CDED: CE 41 01  DEC ram_0141
- - - - - - 0x014E00 05:CDF0: D0 19     BNE bra_CE0B
- - - - - - 0x014E02 05:CDF2: AC 2C 01  LDY ram_012C
- - - - - - 0x014E05 05:CDF5: B1 61     LDA (ram_0061),Y
- - - - - - 0x014E07 05:CDF7: 30 12     BMI bra_CE0B
- - - - - - 0x014E09 05:CDF9: C9 10     CMP #$10
- - - - - - 0x014E0B 05:CDFB: 90 02     BCC bra_CDFF
- - - - - - 0x014E0D 05:CDFD: A0 00     LDY #$00
bra_CDFF:
- - - - - - 0x014E0F 05:CDFF: 8D B9 01  STA ram_01B9
- - - - - - 0x014E12 05:CE02: AD BE 01  LDA ram_01BE
- - - - - - 0x014E15 05:CE05: 8D 41 01  STA ram_0141
- - - - - - 0x014E18 05:CE08: EE 2C 01  INC ram_012C
bra_CE0B:
loc_CE0B:
C - - - - - 0x014E1B 05:CE0B: AD B9 01  LDA ram_01B9
C - - - - - 0x014E1E 05:CE0E: 09 30     ORA #$30
C - - - - - 0x014E20 05:CE10: 8D 0C 40  STA $400C
C - - - - - 0x014E23 05:CE13: AD 82 01  LDA ram_0182
C - - - - - 0x014E26 05:CE16: F0 17     BEQ bra_CE2F
- - - - - - 0x014E28 05:CE18: AD 92 01  LDA ram_0192
- - - - - - 0x014E2B 05:CE1B: F0 12     BEQ bra_CE2F
- - - - - - 0x014E2D 05:CE1D: CE 92 01  DEC ram_0192
- - - - - - 0x014E30 05:CE20: F0 03     BEQ bra_CE25
- - - - - - 0x014E32 05:CE22: 4C 66 CE  JMP loc_CE66
bra_CE25:
- - - - - - 0x014E35 05:CE25: A5 97     LDA ram_0097
- - - - - - 0x014E37 05:CE27: 8D 0E 40  STA $400E
- - - - - - 0x014E3A 05:CE2A: A9 03     LDA #$03
- - - - - - 0x014E3C 05:CE2C: 8D 0F 40  STA $400F
bra_CE2F:
C - - - - - 0x014E3F 05:CE2F: AD 47 01  LDA ram_0147
C - - - - - 0x014E42 05:CE32: F0 32     BEQ bra_CE66
C - - - - - 0x014E44 05:CE34: CE 47 01  DEC ram_0147
C - - - - - 0x014E47 05:CE37: D0 2D     BNE bra_CE66
C - - - - - 0x014E49 05:CE39: A5 91     LDA ram_0091
C - - - - - 0x014E4B 05:CE3B: 49 FF     EOR #$FF
C - - - - - 0x014E4D 05:CE3D: 85 91     STA ram_0091
C - - - - - 0x014E4F 05:CE3F: F0 0F     BEQ bra_CE50
C - - - - - 0x014E51 05:CE41: AD 4D 01  LDA ram_014D
C - - - - - 0x014E54 05:CE44: 8D 47 01  STA ram_0147
C - - - - - 0x014E57 05:CE47: A5 97     LDA ram_0097
C - - - - - 0x014E59 05:CE49: 18        CLC
C - - - - - 0x014E5A 05:CE4A: 6D 59 01  ADC ram_0159
C - - - - - 0x014E5D 05:CE4D: 4C 5C CE  JMP loc_CE5C
bra_CE50:
- - - - - - 0x014E60 05:CE50: AD 53 01  LDA ram_0153
- - - - - - 0x014E63 05:CE53: 8D 47 01  STA ram_0147
- - - - - - 0x014E66 05:CE56: A5 97     LDA ram_0097
- - - - - - 0x014E68 05:CE58: 38        SEC
- - - - - - 0x014E69 05:CE59: ED 59 01  SBC ram_0159
loc_CE5C:
C D 2 - - - 0x014E6C 05:CE5C: 85 97     STA ram_0097
C - - - - - 0x014E6E 05:CE5E: 8D 0E 40  STA $400E
C - - - - - 0x014E71 05:CE61: A9 03     LDA #$03
C - - - - - 0x014E73 05:CE63: 8D 0F 40  STA $400F
bra_CE66:
loc_CE66:
C D 2 - - - 0x014E76 05:CE66: AD E1 07  LDA ram_07E1
C - - - - - 0x014E79 05:CE69: 0D E2 07  ORA ram_07E2
C - - - - - 0x014E7C 05:CE6C: 0D E3 07  ORA ram_07E3
C - - - - - 0x014E7F 05:CE6F: 0D E4 07  ORA ram_07E4
C - - - - - 0x014E82 05:CE72: 0D E5 07  ORA ram_07E5
C - - - - - 0x014E85 05:CE75: 60        RTS



tbl_CE76_lo:
- D 2 - - - 0x014E86 05:CE76: 9F        .byte < ( ofs_000_CEA0_80 - $01 )
- D 2 - - - 0x014E87 05:CE77: B9        .byte < ( ofs_000_CEBA_81 - $01 )
- D 2 - - - 0x014E88 05:CE78: C9        .byte < ( ofs_000_CECA_82 - $01 )
- D 2 - - - 0x014E89 05:CE79: D2        .byte < ( ofs_000_CED3_83 - $01 )
- D 2 - - - 0x014E8A 05:CE7A: D8        .byte < ( ofs_000_CED9_84_jsr - $01 )
- D 2 - - - 0x014E8B 05:CE7B: F9        .byte < ( ofs_000_CEFA_85_rts - $01 )
- D 2 - - - 0x014E8C 05:CE7C: 0A        .byte < ( ofs_000_CF0B_86 - $01 )
- D 2 - - - 0x014E8D 05:CE7D: 12        .byte < ( ofs_000_CF13_87 - $01 )
- D 2 - - - 0x014E8E 05:CE7E: EC        .byte < ( ofs_000_CEED_88_jmp - $01 )
- D 2 - - - 0x014E8F 05:CE7F: 1B        .byte < ( ofs_000_CF1C_89 - $01 )
- D 2 - - - 0x014E90 05:CE80: 29        .byte < ( ofs_000_CF2A_8A - $01 )
- D 2 - - - 0x014E91 05:CE81: 54        .byte < ( ofs_000_CF55_8B - $01 )
- D 2 - - - 0x014E92 05:CE82: 5D        .byte < ( ofs_000_CF5E_8C - $01 )
- D 2 - - - 0x014E93 05:CE83: 72        .byte < ( ofs_000_CF73_8D - $01 )
- D 2 - - - 0x014E94 05:CE84: 7B        .byte < ( ofs_000_CF7C_8E - $01 )
- D 2 - - - 0x014E95 05:CE85: 84        .byte < ( ofs_000_CF85_8F - $01 )
- - - - - - 0x014E96 05:CE86: 9F        .byte < ( ofs_000_CFA0_90 - $01 )
- - - - - - 0x014E97 05:CE87: A7        .byte < ( ofs_000_CFA8_91 - $01 )
- D 2 - - - 0x014E98 05:CE88: BC        .byte < ( ofs_000_CFBD_92_loop - $01 )
- D 2 - - - 0x014E99 05:CE89: D4        .byte < ( ofs_000_CFD5_93 - $01 )
- D 2 - - - 0x014E9A 05:CE8A: DD        .byte < ( ofs_000_CFDE_94 - $01 )



tbl_CE8B_hi:
- D 2 - - - 0x014E9B 05:CE8B: CE        .byte > ( ofs_000_CEA0_80 - $01 )
- D 2 - - - 0x014E9C 05:CE8C: CE        .byte > ( ofs_000_CEBA_81 - $01 )
- D 2 - - - 0x014E9D 05:CE8D: CE        .byte > ( ofs_000_CECA_82 - $01 )
- D 2 - - - 0x014E9E 05:CE8E: CE        .byte > ( ofs_000_CED3_83 - $01 )
- D 2 - - - 0x014E9F 05:CE8F: CE        .byte > ( ofs_000_CED9_84_jsr - $01 )
- D 2 - - - 0x014EA0 05:CE90: CE        .byte > ( ofs_000_CEFA_85_rts - $01 )
- D 2 - - - 0x014EA1 05:CE91: CF        .byte > ( ofs_000_CF0B_86 - $01 )
- D 2 - - - 0x014EA2 05:CE92: CF        .byte > ( ofs_000_CF13_87 - $01 )
- D 2 - - - 0x014EA3 05:CE93: CE        .byte > ( ofs_000_CEED_88_jmp - $01 )
- D 2 - - - 0x014EA4 05:CE94: CF        .byte > ( ofs_000_CF1C_89 - $01 )
- D 2 - - - 0x014EA5 05:CE95: CF        .byte > ( ofs_000_CF2A_8A - $01 )
- D 2 - - - 0x014EA6 05:CE96: CF        .byte > ( ofs_000_CF55_8B - $01 )
- D 2 - - - 0x014EA7 05:CE97: CF        .byte > ( ofs_000_CF5E_8C - $01 )
- D 2 - - - 0x014EA8 05:CE98: CF        .byte > ( ofs_000_CF73_8D - $01 )
- D 2 - - - 0x014EA9 05:CE99: CF        .byte > ( ofs_000_CF7C_8E - $01 )
- D 2 - - - 0x014EAA 05:CE9A: CF        .byte > ( ofs_000_CF85_8F - $01 )
- - - - - - 0x014EAB 05:CE9B: CF        .byte > ( ofs_000_CFA0_90 - $01 )
- - - - - - 0x014EAC 05:CE9C: CF        .byte > ( ofs_000_CFA8_91 - $01 )
- D 2 - - - 0x014EAD 05:CE9D: CF        .byte > ( ofs_000_CFBD_92_loop - $01 )
- D 2 - - - 0x014EAE 05:CE9E: CF        .byte > ( ofs_000_CFD5_93 - $01 )
- D 2 - - - 0x014EAF 05:CE9F: CF        .byte > ( ofs_000_CFDE_94 - $01 )



ofs_000_CEA0_80:
C - - - - - 0x014EB0 05:CEA0: B1 4F     LDA (ram_004F),Y
C - - - - - 0x014EB2 05:CEA2: C8        INY
C - - - - - 0x014EB3 05:CEA3: 8D E7 07  STA ram_07E7
C - - - - - 0x014EB6 05:CEA6: A5 4F     LDA ram_004F
C - - - - - 0x014EB8 05:CEA8: 18        CLC
C - - - - - 0x014EB9 05:CEA9: 69 02     ADC #< $0002
C - - - - - 0x014EBB 05:CEAB: 85 6B     STA ram_006B
C - - - - - 0x014EBD 05:CEAD: 85 4F     STA ram_004F
C - - - - - 0x014EBF 05:CEAF: A5 50     LDA ram_0050
C - - - - - 0x014EC1 05:CEB1: 69 00     ADC #> $0002
C - - - - - 0x014EC3 05:CEB3: 85 6C     STA ram_006C
C - - - - - 0x014EC5 05:CEB5: 85 50     STA ram_0050
C - - - - - 0x014EC7 05:CEB7: 4C 0D C3  JMP loc_C30D



ofs_000_CEBA_81:
C - - - - - 0x014ECA 05:CEBA: CE E7 07  DEC ram_07E7
C - - - - - 0x014ECD 05:CEBD: F0 11     BEQ bra_CED0
C - - - - - 0x014ECF 05:CEBF: A5 6B     LDA ram_006B
C - - - - - 0x014ED1 05:CEC1: 85 4F     STA ram_004F
C - - - - - 0x014ED3 05:CEC3: A5 6C     LDA ram_006C
C - - - - - 0x014ED5 05:CEC5: 85 50     STA ram_0050
C - - - - - 0x014ED7 05:CEC7: 4C 0D C3  JMP loc_C30D



ofs_000_CECA_82:
C - - - - - 0x014EDA 05:CECA: B1 4F     LDA (ram_004F),Y
C - - - - - 0x014EDC 05:CECC: 8D AB 01  STA ram_01AB
C - - - - - 0x014EDF 05:CECF: C8        INY
bra_CED0:
C - - - - - 0x014EE0 05:CED0: 4C 03 C3  JMP loc_C303



ofs_000_CED3_83:
C - - - - - 0x014EE3 05:CED3: EE E1 07  INC ram_07E1
C - - - - - 0x014EE6 05:CED6: 4C 56 C5  JMP loc_C556



ofs_000_CED9_84_jsr:
C - - - - - 0x014EE9 05:CED9: A6 65     LDX ram_0065
C - - - - - 0x014EEB 05:CEDB: A5 4F     LDA ram_004F
C - - - - - 0x014EED 05:CEDD: 18        CLC
C - - - - - 0x014EEE 05:CEDE: 69 03     ADC #< $0003
C - - - - - 0x014EF0 05:CEE0: 9D BD 07  STA ram_07BD,X
C - - - - - 0x014EF3 05:CEE3: A5 50     LDA ram_0050
C - - - - - 0x014EF5 05:CEE5: 69 00     ADC #> $0003
C - - - - - 0x014EF7 05:CEE7: 9D CF 07  STA ram_07CF,X
C - - - - - 0x014EFA 05:CEEA: E8        INX
C - - - - - 0x014EFB 05:CEEB: 86 65     STX ram_0065
ofs_000_CEED_88_jmp:
C - - - - - 0x014EFD 05:CEED: B1 4F     LDA (ram_004F),Y
C - - - - - 0x014EFF 05:CEEF: AA        TAX
C - - - - - 0x014F00 05:CEF0: C8        INY
C - - - - - 0x014F01 05:CEF1: B1 4F     LDA (ram_004F),Y
C - - - - - 0x014F03 05:CEF3: 85 50     STA ram_0050
C - - - - - 0x014F05 05:CEF5: 86 4F     STX ram_004F
C - - - - - 0x014F07 05:CEF7: 4C 0D C3  JMP loc_C30D



ofs_000_CEFA_85_rts:
C - - - - - 0x014F0A 05:CEFA: C6 65     DEC ram_0065
C - - - - - 0x014F0C 05:CEFC: A6 65     LDX ram_0065
C - - - - - 0x014F0E 05:CEFE: BD BD 07  LDA ram_07BD,X
C - - - - - 0x014F11 05:CF01: 85 4F     STA ram_004F
C - - - - - 0x014F13 05:CF03: BD CF 07  LDA ram_07CF,X
C - - - - - 0x014F16 05:CF06: 85 50     STA ram_0050
C - - - - - 0x014F18 05:CF08: 4C 0D C3  JMP loc_C30D



ofs_000_CF0B_86:
C - - - - - 0x014F1B 05:CF0B: B1 4F     LDA (ram_004F),Y
C - - - - - 0x014F1D 05:CF0D: 85 7F     STA ram_007F
C - - - - - 0x014F1F 05:CF0F: C8        INY
C - - - - - 0x014F20 05:CF10: 4C 03 C3  JMP loc_C303



ofs_000_CF13_87:
C - - - - - 0x014F23 05:CF13: B1 4F     LDA (ram_004F),Y
C - - - - - 0x014F25 05:CF15: 8D A7 01  STA ram_01A7
bra_CF18:
C - - - - - 0x014F28 05:CF18: C8        INY
C - - - - - 0x014F29 05:CF19: 4C 03 C3  JMP loc_C303



ofs_000_CF1C_89:
bra_CF1C_loop:
C - - - - - 0x014F2C 05:CF1C: B1 4F     LDA (ram_004F),Y
C - - - - - 0x014F2E 05:CF1E: 30 F8     BMI bra_CF18
C - - - - - 0x014F30 05:CF20: AA        TAX
C - - - - - 0x014F31 05:CF21: C8        INY
C - - - - - 0x014F32 05:CF22: B1 4F     LDA (ram_004F),Y
C - - - - - 0x014F34 05:CF24: 9D 00 40  STA $4000,X
C - - - - - 0x014F37 05:CF27: C8        INY
C - - - - - 0x014F38 05:CF28: D0 F2     BNE bra_CF1C_loop



ofs_000_CF2A_8A:
C - - - - - 0x014F3A 05:CF2A: B1 4F     LDA (ram_004F),Y
C - - - - - 0x014F3C 05:CF2C: 4A        LSR
C - - - - - 0x014F3D 05:CF2D: 4A        LSR
C - - - - - 0x014F3E 05:CF2E: 4A        LSR
C - - - - - 0x014F3F 05:CF2F: 4A        LSR
C - - - - - 0x014F40 05:CF30: 8D 20 01  STA ram_0120
C - - - - - 0x014F43 05:CF33: B1 4F     LDA (ram_004F),Y
C - - - - - 0x014F45 05:CF35: 29 0F     AND #$0F
C - - - - - 0x014F47 05:CF37: 8D 2F 01  STA ram_012F
C - - - - - 0x014F4A 05:CF3A: C8        INY
C - - - - - 0x014F4B 05:CF3B: B1 4F     LDA (ram_004F),Y
C - - - - - 0x014F4D 05:CF3D: 4A        LSR
C - - - - - 0x014F4E 05:CF3E: 4A        LSR
C - - - - - 0x014F4F 05:CF3F: 4A        LSR
C - - - - - 0x014F50 05:CF40: 4A        LSR
C - - - - - 0x014F51 05:CF41: 8D 25 01  STA ram_0125
C - - - - - 0x014F54 05:CF44: B1 4F     LDA (ram_004F),Y
C - - - - - 0x014F56 05:CF46: 29 0F     AND #$0F
C - - - - - 0x014F58 05:CF48: 8D 26 01  STA ram_0126
C - - - - - 0x014F5B 05:CF4B: C8        INY
C - - - - - 0x014F5C 05:CF4C: B1 4F     LDA (ram_004F),Y
C - - - - - 0x014F5E 05:CF4E: 8D 34 01  STA ram_0134
C - - - - - 0x014F61 05:CF51: C8        INY
C - - - - - 0x014F62 05:CF52: 4C 03 C3  JMP loc_C303



ofs_000_CF55_8B:
C - - - - - 0x014F65 05:CF55: B1 4F     LDA (ram_004F),Y
C - - - - - 0x014F67 05:CF57: 8D B1 01  STA ram_01B1
C - - - - - 0x014F6A 05:CF5A: C8        INY
C - - - - - 0x014F6B 05:CF5B: 4C 03 C3  JMP loc_C303



ofs_000_CF5E_8C:
C - - - - - 0x014F6E 05:CF5E: B1 4F     LDA (ram_004F),Y
C - - - - - 0x014F70 05:CF60: 8D 55 01  STA ram_0155
C - - - - - 0x014F73 05:CF63: C8        INY
C - - - - - 0x014F74 05:CF64: B1 4F     LDA (ram_004F),Y
C - - - - - 0x014F76 05:CF66: 8D 49 01  STA ram_0149
C - - - - - 0x014F79 05:CF69: C8        INY
C - - - - - 0x014F7A 05:CF6A: B1 4F     LDA (ram_004F),Y
C - - - - - 0x014F7C 05:CF6C: 8D 4F 01  STA ram_014F
C - - - - - 0x014F7F 05:CF6F: C8        INY
C - - - - - 0x014F80 05:CF70: 4C 03 C3  JMP loc_C303



ofs_000_CF73_8D:
C - - - - - 0x014F83 05:CF73: B1 4F     LDA (ram_004F),Y
C - - - - - 0x014F85 05:CF75: 8D 5B 01  STA ram_015B
C - - - - - 0x014F88 05:CF78: C8        INY
C - - - - - 0x014F89 05:CF79: 4C 03 C3  JMP loc_C303



ofs_000_CF7C_8E:
C - - - - - 0x014F8C 05:CF7C: B1 4F     LDA (ram_004F),Y
C - - - - - 0x014F8E 05:CF7E: 8D 63 01  STA ram_0163
C - - - - - 0x014F91 05:CF81: C8        INY
C - - - - - 0x014F92 05:CF82: 4C 03 C3  JMP loc_C303



ofs_000_CF85_8F:
C - - - - - 0x014F95 05:CF85: B1 4F     LDA (ram_004F),Y
C - - - - - 0x014F97 05:CF87: 8D 66 01  STA ram_0166
C - - - - - 0x014F9A 05:CF8A: C8        INY
C - - - - - 0x014F9B 05:CF8B: B1 4F     LDA (ram_004F),Y
C - - - - - 0x014F9D 05:CF8D: 8D 6E 01  STA ram_016E
C - - - - - 0x014FA0 05:CF90: C8        INY
C - - - - - 0x014FA1 05:CF91: B1 4F     LDA (ram_004F),Y
C - - - - - 0x014FA3 05:CF93: 8D 76 01  STA ram_0176
C - - - - - 0x014FA6 05:CF96: C8        INY
C - - - - - 0x014FA7 05:CF97: B1 4F     LDA (ram_004F),Y
C - - - - - 0x014FA9 05:CF99: 8D 7A 01  STA ram_017A
C - - - - - 0x014FAC 05:CF9C: C8        INY
C - - - - - 0x014FAD 05:CF9D: 4C 03 C3  JMP loc_C303



ofs_000_CFA0_90:
- - - - - - 0x014FB0 05:CFA0: A9 FF     LDA #$FF
- - - - - - 0x014FB2 05:CFA2: 8D A3 01  STA ram_01A3
- - - - - - 0x014FB5 05:CFA5: 4C 03 C3  JMP loc_C303



ofs_000_CFA8_91:
- - - - - - 0x014FB8 05:CFA8: B1 4F     LDA (ram_004F),Y
- - - - - - 0x014FBA 05:CFAA: 8D 7E 01  STA ram_017E
- - - - - - 0x014FBD 05:CFAD: C8        INY
- - - - - - 0x014FBE 05:CFAE: B1 4F     LDA (ram_004F),Y
- - - - - - 0x014FC0 05:CFB0: 8D 84 01  STA ram_0184
- - - - - - 0x014FC3 05:CFB3: C8        INY
- - - - - - 0x014FC4 05:CFB4: B1 4F     LDA (ram_004F),Y
- - - - - - 0x014FC6 05:CFB6: 8D 85 01  STA ram_0185
- - - - - - 0x014FC9 05:CFB9: C8        INY
- - - - - - 0x014FCA 05:CFBA: 4C 03 C3  JMP loc_C303



ofs_000_CFBD_92_loop:
C - - - - - 0x014FCD 05:CFBD: B1 4F     LDA (ram_004F),Y
C - - - - - 0x014FCF 05:CFBF: 8D BB 01  STA ram_01BB
C - - - - - 0x014FD2 05:CFC2: C8        INY
C - - - - - 0x014FD3 05:CFC3: B1 4F     LDA (ram_004F),Y
C - - - - - 0x014FD5 05:CFC5: 85 5B     STA ram_005B
C - - - - - 0x014FD7 05:CFC7: C8        INY
C - - - - - 0x014FD8 05:CFC8: B1 4F     LDA (ram_004F),Y
C - - - - - 0x014FDA 05:CFCA: 85 5C     STA ram_005C
C - - - - - 0x014FDC 05:CFCC: C8        INY
C - - - - - 0x014FDD 05:CFCD: A9 FF     LDA #$FF
C - - - - - 0x014FDF 05:CFCF: 8D B1 01  STA ram_01B1
C - - - - - 0x014FE2 05:CFD2: 4C 03 C3  JMP loc_C303



ofs_000_CFD5_93:
C - - - - - 0x014FE5 05:CFD5: B1 4F     LDA (ram_004F),Y
C - - - - - 0x014FE7 05:CFD7: 8D 94 01  STA ram_0194
C - - - - - 0x014FEA 05:CFDA: C8        INY
C - - - - - 0x014FEB 05:CFDB: 4C 03 C3  JMP loc_C303



ofs_000_CFDE_94:
C - - - - - 0x014FEE 05:CFDE: B1 4F     LDA (ram_004F),Y
C - - - - - 0x014FF0 05:CFE0: 8D 99 01  STA ram_0199
C - - - - - 0x014FF3 05:CFE3: C8        INY
C - - - - - 0x014FF4 05:CFE4: 4C 03 C3  JMP loc_C303



tbl_CFE7_lo:
- D 2 - - - 0x014FF7 05:CFE7: 10        .byte < ( ofs_007_D011_80 - $01 )   ; 
- D 2 - - - 0x014FF8 05:CFE8: 2A        .byte < ( ofs_007_D02B_81 - $01 )   ; 
- D 2 - - - 0x014FF9 05:CFE9: 3A        .byte < ( ofs_007_D03B_82 - $01 )   ; 
- D 2 - - - 0x014FFA 05:CFEA: 43        .byte < ( ofs_007_D044_83 - $01 )   ; 
- D 2 - - - 0x014FFB 05:CFEB: 49        .byte < ( ofs_007_D04A_84_jsr - $01 )   ; 
- D 2 - - - 0x014FFC 05:CFEC: 6A        .byte < ( ofs_007_D06B_85_rts - $01 )   ; 
- D 2 - - - 0x014FFD 05:CFED: 7B        .byte < ( ofs_007_D07C_86 - $01 )   ; 
- D 2 - - - 0x014FFE 05:CFEE: 83        .byte < ( ofs_007_D084_87 - $01 )   ; 
- D 2 - - - 0x014FFF 05:CFEF: 5D        .byte < ( ofs_007_D05E_88_jmp - $01 )   ; 
- - - - - - 0x015000 05:CFF0: 8C        .byte < ( ofs_007_D08D_89 - $01 )   ; 
- D 2 - - - 0x015001 05:CFF1: 9A        .byte < ( ofs_007_D09B_8A - $01 )   ; 
- D 2 - - - 0x015002 05:CFF2: C5        .byte < ( ofs_007_D0C6_8B - $01 )   ; 
- D 2 - - - 0x015003 05:CFF3: CE        .byte < ( ofs_007_D0CF_8C - $01 )   ; 
- D 2 - - - 0x015004 05:CFF4: E3        .byte < ( ofs_007_D0E4_8D - $01 )   ; 
- D 2 - - - 0x015005 05:CFF5: EC        .byte < ( ofs_007_D0ED_8E - $01 )   ; 
- D 2 - - - 0x015006 05:CFF6: F5        .byte < ( ofs_007_D0F6_8F - $01 )   ; 
- - - - - - 0x015007 05:CFF7: 10        .byte < ( ofs_007_D111_90 - $01 )   ; 
- - - - - - 0x015008 05:CFF8: 18        .byte < ( ofs_007_D119_91 - $01 )   ; 
- D 2 - - - 0x015009 05:CFF9: 2D        .byte < ( ofs_007_D12E_92_loop - $01 )   ; 
- D 2 - - - 0x01500A 05:CFFA: 45        .byte < ( ofs_007_D146_93 - $01 )   ; 
- D 2 - - - 0x01500B 05:CFFB: 4E        .byte < ( ofs_007_D14F_94 - $01 )   ; 

tbl_CFFC_hi:
- D 2 - - - 0x01500C 05:CFFC: D0        .byte > ( ofs_007_D011_80 - $01 )   ; 
- D 2 - - - 0x01500D 05:CFFD: D0        .byte > ( ofs_007_D02B_81 - $01 )   ; 
- D 2 - - - 0x01500E 05:CFFE: D0        .byte > ( ofs_007_D03B_82 - $01 )   ; 
- D 2 - - - 0x01500F 05:CFFF: D0        .byte > ( ofs_007_D044_83 - $01 )   ; 
- D 2 - - - 0x015010 05:D000: D0        .byte > ( ofs_007_D04A_84_jsr - $01 )   ; 
- D 2 - - - 0x015011 05:D001: D0        .byte > ( ofs_007_D06B_85_rts - $01 )   ; 
- D 2 - - - 0x015012 05:D002: D0        .byte > ( ofs_007_D07C_86 - $01 )   ; 
- D 2 - - - 0x015013 05:D003: D0        .byte > ( ofs_007_D084_87 - $01 )   ; 
- D 2 - - - 0x015014 05:D004: D0        .byte > ( ofs_007_D05E_88_jmp - $01 )   ; 
- - - - - - 0x015015 05:D005: D0        .byte > ( ofs_007_D08D_89 - $01 )   ; 
- D 2 - - - 0x015016 05:D006: D0        .byte > ( ofs_007_D09B_8A - $01 )   ; 
- D 2 - - - 0x015017 05:D007: D0        .byte > ( ofs_007_D0C6_8B - $01 )   ; 
- D 2 - - - 0x015018 05:D008: D0        .byte > ( ofs_007_D0CF_8C - $01 )   ; 
- D 2 - - - 0x015019 05:D009: D0        .byte > ( ofs_007_D0E4_8D - $01 )   ; 
- D 2 - - - 0x01501A 05:D00A: D0        .byte > ( ofs_007_D0ED_8E - $01 )   ; 
- D 2 - - - 0x01501B 05:D00B: D0        .byte > ( ofs_007_D0F6_8F - $01 )   ; 
- - - - - - 0x01501C 05:D00C: D1        .byte > ( ofs_007_D111_90 - $01 )   ; 
- - - - - - 0x01501D 05:D00D: D1        .byte > ( ofs_007_D119_91 - $01 )   ; 
- D 2 - - - 0x01501E 05:D00E: D1        .byte > ( ofs_007_D12E_92_loop - $01 )   ; 
- D 2 - - - 0x01501F 05:D00F: D1        .byte > ( ofs_007_D146_93 - $01 )   ; 
- D 2 - - - 0x015020 05:D010: D1        .byte > ( ofs_007_D14F_94 - $01 )   ; 



ofs_007_D011_80:
C - - - - - 0x015021 05:D011: B1 51     LDA (ram_0051),Y
C - - - - - 0x015023 05:D013: C8        INY
C - - - - - 0x015024 05:D014: 8D E8 07  STA ram_07E8
C - - - - - 0x015027 05:D017: A5 51     LDA ram_0051
C - - - - - 0x015029 05:D019: 18        CLC
C - - - - - 0x01502A 05:D01A: 69 02     ADC #< $0002
C - - - - - 0x01502C 05:D01C: 85 6D     STA ram_006D
C - - - - - 0x01502E 05:D01E: 85 51     STA ram_0051
C - - - - - 0x015030 05:D020: A5 52     LDA ram_0052
C - - - - - 0x015032 05:D022: 69 00     ADC #> $0002
C - - - - - 0x015034 05:D024: 85 6E     STA ram_006E
C - - - - - 0x015036 05:D026: 85 52     STA ram_0052
C - - - - - 0x015038 05:D028: 4C B3 C7  JMP loc_C7B3



ofs_007_D02B_81:
C - - - - - 0x01503B 05:D02B: CE E8 07  DEC ram_07E8
C - - - - - 0x01503E 05:D02E: F0 11     BEQ bra_D041
C - - - - - 0x015040 05:D030: A5 6D     LDA ram_006D
C - - - - - 0x015042 05:D032: 85 51     STA ram_0051
C - - - - - 0x015044 05:D034: A5 6E     LDA ram_006E
C - - - - - 0x015046 05:D036: 85 52     STA ram_0052
C - - - - - 0x015048 05:D038: 4C B3 C7  JMP loc_C7B3



ofs_007_D03B_82:
C - - - - - 0x01504B 05:D03B: B1 51     LDA (ram_0051),Y
C - - - - - 0x01504D 05:D03D: 8D AC 01  STA ram_01AC
C - - - - - 0x015050 05:D040: C8        INY
bra_D041:
C - - - - - 0x015051 05:D041: 4C A9 C7  JMP loc_C7A9



ofs_007_D044_83:
C - - - - - 0x015054 05:D044: EE E2 07  INC ram_07E2
C - - - - - 0x015057 05:D047: 4C DE C9  JMP loc_C9DE



ofs_007_D04A_84_jsr:
C - - - - - 0x01505A 05:D04A: A6 66     LDX ram_0066
C - - - - - 0x01505C 05:D04C: A5 51     LDA ram_0051
C - - - - - 0x01505E 05:D04E: 18        CLC
C - - - - - 0x01505F 05:D04F: 69 03     ADC #< $0003
C - - - - - 0x015061 05:D051: 9D C0 07  STA ram_07C0,X
C - - - - - 0x015064 05:D054: A5 52     LDA ram_0052
C - - - - - 0x015066 05:D056: 69 00     ADC #> $0003
C - - - - - 0x015068 05:D058: 9D D2 07  STA ram_07D2,X
C - - - - - 0x01506B 05:D05B: E8        INX
C - - - - - 0x01506C 05:D05C: 86 66     STX ram_0066
ofs_007_D05E_88_jmp:
C - - - - - 0x01506E 05:D05E: B1 51     LDA (ram_0051),Y
C - - - - - 0x015070 05:D060: AA        TAX
C - - - - - 0x015071 05:D061: C8        INY
C - - - - - 0x015072 05:D062: B1 51     LDA (ram_0051),Y
C - - - - - 0x015074 05:D064: 85 52     STA ram_0052
C - - - - - 0x015076 05:D066: 86 51     STX ram_0051
C - - - - - 0x015078 05:D068: 4C B3 C7  JMP loc_C7B3



ofs_007_D06B_85_rts:
C - - - - - 0x01507B 05:D06B: C6 66     DEC ram_0066
C - - - - - 0x01507D 05:D06D: A6 66     LDX ram_0066
C - - - - - 0x01507F 05:D06F: BD C0 07  LDA ram_07C0,X
C - - - - - 0x015082 05:D072: 85 51     STA ram_0051
C - - - - - 0x015084 05:D074: BD D2 07  LDA ram_07D2,X
C - - - - - 0x015087 05:D077: 85 52     STA ram_0052
C - - - - - 0x015089 05:D079: 4C B3 C7  JMP loc_C7B3



ofs_007_D07C_86:
C - - - - - 0x01508C 05:D07C: B1 51     LDA (ram_0051),Y
C - - - - - 0x01508E 05:D07E: 85 80     STA ram_0080
C - - - - - 0x015090 05:D080: C8        INY
C - - - - - 0x015091 05:D081: 4C A9 C7  JMP loc_C7A9



ofs_007_D084_87:
C - - - - - 0x015094 05:D084: B1 51     LDA (ram_0051),Y
C - - - - - 0x015096 05:D086: 8D A8 01  STA ram_01A8
bra_D089:
C - - - - - 0x015099 05:D089: C8        INY
C - - - - - 0x01509A 05:D08A: 4C A9 C7  JMP loc_C7A9



ofs_007_D08D_89:
bra_D08D_loop:
- - - - - - 0x01509D 05:D08D: B1 51     LDA (ram_0051),Y
- - - - - - 0x01509F 05:D08F: 30 F8     BMI bra_D089
- - - - - - 0x0150A1 05:D091: AA        TAX
- - - - - - 0x0150A2 05:D092: C8        INY
- - - - - - 0x0150A3 05:D093: B1 51     LDA (ram_0051),Y
- - - - - - 0x0150A5 05:D095: 9D 00 40  STA $4000,X
- - - - - - 0x0150A8 05:D098: C8        INY
- - - - - - 0x0150A9 05:D099: D0 F2     BNE bra_D08D_loop



ofs_007_D09B_8A:
C - - - - - 0x0150AB 05:D09B: B1 51     LDA (ram_0051),Y
C - - - - - 0x0150AD 05:D09D: 4A        LSR
C - - - - - 0x0150AE 05:D09E: 4A        LSR
C - - - - - 0x0150AF 05:D09F: 4A        LSR
C - - - - - 0x0150B0 05:D0A0: 4A        LSR
C - - - - - 0x0150B1 05:D0A1: 8D 21 01  STA ram_0121
C - - - - - 0x0150B4 05:D0A4: B1 51     LDA (ram_0051),Y
C - - - - - 0x0150B6 05:D0A6: 29 0F     AND #$0F
C - - - - - 0x0150B8 05:D0A8: 8D 30 01  STA ram_0130
C - - - - - 0x0150BB 05:D0AB: C8        INY
C - - - - - 0x0150BC 05:D0AC: B1 51     LDA (ram_0051),Y
C - - - - - 0x0150BE 05:D0AE: 4A        LSR
C - - - - - 0x0150BF 05:D0AF: 4A        LSR
C - - - - - 0x0150C0 05:D0B0: 4A        LSR
C - - - - - 0x0150C1 05:D0B1: 4A        LSR
C - - - - - 0x0150C2 05:D0B2: 8D 27 01  STA ram_0127
C - - - - - 0x0150C5 05:D0B5: B1 51     LDA (ram_0051),Y
C - - - - - 0x0150C7 05:D0B7: 29 0F     AND #$0F
C - - - - - 0x0150C9 05:D0B9: 8D 28 01  STA ram_0128
C - - - - - 0x0150CC 05:D0BC: C8        INY
C - - - - - 0x0150CD 05:D0BD: B1 51     LDA (ram_0051),Y
C - - - - - 0x0150CF 05:D0BF: 8D 35 01  STA ram_0135
C - - - - - 0x0150D2 05:D0C2: C8        INY
C - - - - - 0x0150D3 05:D0C3: 4C A9 C7  JMP loc_C7A9



ofs_007_D0C6_8B:
C - - - - - 0x0150D6 05:D0C6: B1 51     LDA (ram_0051),Y
C - - - - - 0x0150D8 05:D0C8: 8D B2 01  STA ram_01B2
C - - - - - 0x0150DB 05:D0CB: C8        INY
C - - - - - 0x0150DC 05:D0CC: 4C A9 C7  JMP loc_C7A9



ofs_007_D0CF_8C:
C - - - - - 0x0150DF 05:D0CF: B1 51     LDA (ram_0051),Y
C - - - - - 0x0150E1 05:D0D1: 8D 56 01  STA ram_0156
C - - - - - 0x0150E4 05:D0D4: C8        INY
C - - - - - 0x0150E5 05:D0D5: B1 51     LDA (ram_0051),Y
C - - - - - 0x0150E7 05:D0D7: 8D 4A 01  STA ram_014A
C - - - - - 0x0150EA 05:D0DA: C8        INY
C - - - - - 0x0150EB 05:D0DB: B1 51     LDA (ram_0051),Y
C - - - - - 0x0150ED 05:D0DD: 8D 50 01  STA ram_0150
C - - - - - 0x0150F0 05:D0E0: C8        INY
C - - - - - 0x0150F1 05:D0E1: 4C A9 C7  JMP loc_C7A9



ofs_007_D0E4_8D:
C - - - - - 0x0150F4 05:D0E4: B1 51     LDA (ram_0051),Y
C - - - - - 0x0150F6 05:D0E6: 8D 5C 01  STA ram_015C
C - - - - - 0x0150F9 05:D0E9: C8        INY
C - - - - - 0x0150FA 05:D0EA: 4C A9 C7  JMP loc_C7A9



ofs_007_D0ED_8E:
C - - - - - 0x0150FD 05:D0ED: B1 51     LDA (ram_0051),Y
C - - - - - 0x0150FF 05:D0EF: 8D 64 01  STA ram_0164
C - - - - - 0x015102 05:D0F2: C8        INY
C - - - - - 0x015103 05:D0F3: 4C A9 C7  JMP loc_C7A9



ofs_007_D0F6_8F:
C - - - - - 0x015106 05:D0F6: B1 51     LDA (ram_0051),Y
C - - - - - 0x015108 05:D0F8: 8D 67 01  STA ram_0167
C - - - - - 0x01510B 05:D0FB: C8        INY
C - - - - - 0x01510C 05:D0FC: B1 51     LDA (ram_0051),Y
C - - - - - 0x01510E 05:D0FE: 8D 6F 01  STA ram_016F
C - - - - - 0x015111 05:D101: C8        INY
C - - - - - 0x015112 05:D102: B1 51     LDA (ram_0051),Y
C - - - - - 0x015114 05:D104: 8D 77 01  STA ram_0177
C - - - - - 0x015117 05:D107: C8        INY
C - - - - - 0x015118 05:D108: B1 51     LDA (ram_0051),Y
C - - - - - 0x01511A 05:D10A: 8D 7B 01  STA ram_017B
C - - - - - 0x01511D 05:D10D: C8        INY
C - - - - - 0x01511E 05:D10E: 4C A9 C7  JMP loc_C7A9



ofs_007_D111_90:
- - - - - - 0x015121 05:D111: A9 FF     LDA #$FF
- - - - - - 0x015123 05:D113: 8D A4 01  STA ram_01A4
- - - - - - 0x015126 05:D116: 4C A9 C7  JMP loc_C7A9



ofs_007_D119_91:
- - - - - - 0x015129 05:D119: B1 51     LDA (ram_0051),Y
- - - - - - 0x01512B 05:D11B: 8D 7F 01  STA ram_017F
- - - - - - 0x01512E 05:D11E: C8        INY
- - - - - - 0x01512F 05:D11F: B1 51     LDA (ram_0051),Y
- - - - - - 0x015131 05:D121: 8D 86 01  STA ram_0186
- - - - - - 0x015134 05:D124: C8        INY
- - - - - - 0x015135 05:D125: B1 51     LDA (ram_0051),Y
- - - - - - 0x015137 05:D127: 8D 87 01  STA ram_0187
- - - - - - 0x01513A 05:D12A: C8        INY
- - - - - - 0x01513B 05:D12B: 4C A9 C7  JMP loc_C7A9



ofs_007_D12E_92_loop:
C - - - - - 0x01513E 05:D12E: B1 51     LDA (ram_0051),Y
C - - - - - 0x015140 05:D130: 8D BC 01  STA ram_01BC
C - - - - - 0x015143 05:D133: C8        INY
C - - - - - 0x015144 05:D134: B1 51     LDA (ram_0051),Y
C - - - - - 0x015146 05:D136: 85 5D     STA ram_005D
C - - - - - 0x015148 05:D138: C8        INY
C - - - - - 0x015149 05:D139: B1 51     LDA (ram_0051),Y
C - - - - - 0x01514B 05:D13B: 85 5E     STA ram_005E
C - - - - - 0x01514D 05:D13D: C8        INY
C - - - - - 0x01514E 05:D13E: A9 FF     LDA #$FF
C - - - - - 0x015150 05:D140: 8D B2 01  STA ram_01B2
C - - - - - 0x015153 05:D143: 4C A9 C7  JMP loc_C7A9



ofs_007_D146_93:
C - - - - - 0x015156 05:D146: B1 51     LDA (ram_0051),Y
C - - - - - 0x015158 05:D148: 8D 95 01  STA ram_0195
C - - - - - 0x01515B 05:D14B: C8        INY
C - - - - - 0x01515C 05:D14C: 4C A9 C7  JMP loc_C7A9



ofs_007_D14F_94:
C - - - - - 0x01515F 05:D14F: B1 51     LDA (ram_0051),Y
C - - - - - 0x015161 05:D151: 8D 9A 01  STA ram_019A
C - - - - - 0x015164 05:D154: C8        INY
C - - - - - 0x015165 05:D155: 4C A9 C7  JMP loc_C7A9



tbl_D158_lo:
- D 2 - - - 0x015168 05:D158: 7E        .byte < ( ofs_006_D17F_80 - $01 )
- D 2 - - - 0x015169 05:D159: 98        .byte < ( ofs_006_D199_81 - $01 )
- D 2 - - - 0x01516A 05:D15A: A8        .byte < ( ofs_006_D1A9_82 - $01 )
- D 2 - - - 0x01516B 05:D15B: B1        .byte < ( ofs_006_D1B2_83 - $01 )
- D 2 - - - 0x01516C 05:D15C: B7        .byte < ( ofs_006_D1B8_84_jsr - $01 )
- D 2 - - - 0x01516D 05:D15D: D8        .byte < ( ofs_006_D1D9_85_rts - $01 )
- D 2 - - - 0x01516E 05:D15E: E9        .byte < ( ofs_006_D1EA_86 - $01 )
- - - - - - 0x01516F 05:D15F: F1        .byte < ( ofs_006_D1F2_87 - $01 )
- D 2 - - - 0x015170 05:D160: CB        .byte < ( ofs_006_D1CC_88_jmp - $01 )
- - - - - - 0x015171 05:D161: FA        .byte < ( ofs_006_D1FB_89 - $01 )
- - - - - - 0x015172 05:D162: 7D        .byte < ( ofs_006_D17E_8A_RTS - $01 )
- - - - - - 0x015173 05:D163: 7D        .byte < ( ofs_006_D17E_8B_RTS - $01 )
- D 2 - - - 0x015174 05:D164: 08        .byte < ( ofs_006_D209_8C - $01 )
- - - - - - 0x015175 05:D165: 1D        .byte < ( ofs_006_D21E_8D - $01 )
- - - - - - 0x015176 05:D166: 7D        .byte < ( ofs_006_D17E_8E_RTS - $01 )
- D 2 - - - 0x015177 05:D167: 26        .byte < ( ofs_006_D227_8F - $01 )
- D 2 - - - 0x015178 05:D168: 41        .byte < ( ofs_006_D242_90 - $01 )
- - - - - - 0x015179 05:D169: 49        .byte < ( ofs_006_D24A_91 - $01 )
- - - - - - 0x01517A 05:D16A: 7D        .byte < ( ofs_006_D17E_92_RTS - $01 )

tbl_D16B_hi:
- D 2 - - - 0x01517B 05:D16B: D1        .byte > ( ofs_006_D17F_80 - $01 )
- D 2 - - - 0x01517C 05:D16C: D1        .byte > ( ofs_006_D199_81 - $01 )
- D 2 - - - 0x01517D 05:D16D: D1        .byte > ( ofs_006_D1A9_82 - $01 )
- D 2 - - - 0x01517E 05:D16E: D1        .byte > ( ofs_006_D1B2_83 - $01 )
- D 2 - - - 0x01517F 05:D16F: D1        .byte > ( ofs_006_D1B8_84_jsr - $01 )
- D 2 - - - 0x015180 05:D170: D1        .byte > ( ofs_006_D1D9_85_rts - $01 )
- D 2 - - - 0x015181 05:D171: D1        .byte > ( ofs_006_D1EA_86 - $01 )
- - - - - - 0x015182 05:D172: D1        .byte > ( ofs_006_D1F2_87 - $01 )
- D 2 - - - 0x015183 05:D173: D1        .byte > ( ofs_006_D1CC_88_jmp - $01 )
- - - - - - 0x015184 05:D174: D1        .byte > ( ofs_006_D1FB_89 - $01 )
- - - - - - 0x015185 05:D175: D1        .byte > ( ofs_006_D17E_8A_RTS - $01 )
- - - - - - 0x015186 05:D176: D1        .byte > ( ofs_006_D17E_8B_RTS - $01 )
- D 2 - - - 0x015187 05:D177: D2        .byte > ( ofs_006_D209_8C - $01 )
- - - - - - 0x015188 05:D178: D2        .byte > ( ofs_006_D21E_8D - $01 )
- - - - - - 0x015189 05:D179: D1        .byte > ( ofs_006_D17E_8E_RTS - $01 )
- D 2 - - - 0x01518A 05:D17A: D2        .byte > ( ofs_006_D227_8F - $01 )
- D 2 - - - 0x01518B 05:D17B: D2        .byte > ( ofs_006_D242_90 - $01 )
- - - - - - 0x01518C 05:D17C: D2        .byte > ( ofs_006_D24A_91 - $01 )
- - - - - - 0x01518D 05:D17D: D1        .byte > ( ofs_006_D17E_92_RTS - $01 )



ofs_006_D17E_8A_RTS:
ofs_006_D17E_8B_RTS:
ofs_006_D17E_8E_RTS:
ofs_006_D17E_92_RTS:
- - - - - - 0x01518E 05:D17E: 60        RTS



ofs_006_D17F_80:
C - - - - - 0x01518F 05:D17F: B1 53     LDA (ram_0053),Y
C - - - - - 0x015191 05:D181: C8        INY
C - - - - - 0x015192 05:D182: 8D E9 07  STA ram_07E9
C - - - - - 0x015195 05:D185: A5 53     LDA ram_0053
C - - - - - 0x015197 05:D187: 18        CLC
C - - - - - 0x015198 05:D188: 69 02     ADC #< $0002
C - - - - - 0x01519A 05:D18A: 85 6F     STA ram_006F
C - - - - - 0x01519C 05:D18C: 85 53     STA ram_0053
C - - - - - 0x01519E 05:D18E: A5 54     LDA ram_0054
C - - - - - 0x0151A0 05:D190: 69 00     ADC #> $0002
C - - - - - 0x0151A2 05:D192: 85 70     STA ram_0070
C - - - - - 0x0151A4 05:D194: 85 54     STA ram_0054
C - - - - - 0x0151A6 05:D196: 4C F7 C9  JMP loc_C9F7



ofs_006_D199_81:
C - - - - - 0x0151A9 05:D199: CE E9 07  DEC ram_07E9
C - - - - - 0x0151AC 05:D19C: F0 11     BEQ bra_D1AF
C - - - - - 0x0151AE 05:D19E: A5 6F     LDA ram_006F
C - - - - - 0x0151B0 05:D1A0: 85 53     STA ram_0053
C - - - - - 0x0151B2 05:D1A2: A5 70     LDA ram_0070
C - - - - - 0x0151B4 05:D1A4: 85 54     STA ram_0054
C - - - - - 0x0151B6 05:D1A6: 4C F7 C9  JMP loc_C9F7



ofs_006_D1A9_82:
C - - - - - 0x0151B9 05:D1A9: B1 53     LDA (ram_0053),Y
C - - - - - 0x0151BB 05:D1AB: 8D AD 01  STA ram_01AD
C - - - - - 0x0151BE 05:D1AE: C8        INY
bra_D1AF:
C - - - - - 0x0151BF 05:D1AF: 4C ED C9  JMP loc_C9ED



ofs_006_D1B2_83:
C - - - - - 0x0151C2 05:D1B2: EE E3 07  INC ram_07E3
C - - - - - 0x0151C5 05:D1B5: 4C 61 CB  JMP loc_CB61



ofs_006_D1B8_84_jsr:
C - - - - - 0x0151C8 05:D1B8: A6 67     LDX ram_0067
C - - - - - 0x0151CA 05:D1BA: A5 53     LDA ram_0053
C - - - - - 0x0151CC 05:D1BC: 18        CLC
C - - - - - 0x0151CD 05:D1BD: 69 03     ADC #< $0003
C - - - - - 0x0151CF 05:D1BF: 9D C3 07  STA ram_07C3,X
C - - - - - 0x0151D2 05:D1C2: A5 54     LDA ram_0054
C - - - - - 0x0151D4 05:D1C4: 69 00     ADC #> $0003
C - - - - - 0x0151D6 05:D1C6: 9D D5 07  STA ram_07D5,X
C - - - - - 0x0151D9 05:D1C9: E8        INX
C - - - - - 0x0151DA 05:D1CA: 86 67     STX ram_0067
ofs_006_D1CC_88_jmp:
C - - - - - 0x0151DC 05:D1CC: B1 53     LDA (ram_0053),Y
C - - - - - 0x0151DE 05:D1CE: AA        TAX
C - - - - - 0x0151DF 05:D1CF: C8        INY
C - - - - - 0x0151E0 05:D1D0: B1 53     LDA (ram_0053),Y
C - - - - - 0x0151E2 05:D1D2: 85 54     STA ram_0054
C - - - - - 0x0151E4 05:D1D4: 86 53     STX ram_0053
C - - - - - 0x0151E6 05:D1D6: 4C F7 C9  JMP loc_C9F7



ofs_006_D1D9_85_rts:
C - - - - - 0x0151E9 05:D1D9: C6 67     DEC ram_0067
C - - - - - 0x0151EB 05:D1DB: A6 67     LDX ram_0067
C - - - - - 0x0151ED 05:D1DD: BD C3 07  LDA ram_07C3,X
C - - - - - 0x0151F0 05:D1E0: 85 53     STA ram_0053
C - - - - - 0x0151F2 05:D1E2: BD D5 07  LDA ram_07D5,X
C - - - - - 0x0151F5 05:D1E5: 85 54     STA ram_0054
C - - - - - 0x0151F7 05:D1E7: 4C F7 C9  JMP loc_C9F7



ofs_006_D1EA_86:
C - - - - - 0x0151FA 05:D1EA: B1 53     LDA (ram_0053),Y
C - - - - - 0x0151FC 05:D1EC: 85 81     STA ram_0081
C - - - - - 0x0151FE 05:D1EE: C8        INY
C - - - - - 0x0151FF 05:D1EF: 4C ED C9  JMP loc_C9ED



ofs_006_D1F2_87:
- - - - - - 0x015202 05:D1F2: B1 53     LDA (ram_0053),Y
- - - - - - 0x015204 05:D1F4: 8D A9 01  STA ram_01A9
bra_D1F7:
- - - - - - 0x015207 05:D1F7: C8        INY
- - - - - - 0x015208 05:D1F8: 4C ED C9  JMP loc_C9ED



ofs_006_D1FB_89:
bra_D1FB_loop:
- - - - - - 0x01520B 05:D1FB: B1 53     LDA (ram_0053),Y
- - - - - - 0x01520D 05:D1FD: 30 F8     BMI bra_D1F7
- - - - - - 0x01520F 05:D1FF: AA        TAX
- - - - - - 0x015210 05:D200: C8        INY
- - - - - - 0x015211 05:D201: B1 53     LDA (ram_0053),Y
- - - - - - 0x015213 05:D203: 9D 00 40  STA $4000,X
- - - - - - 0x015216 05:D206: C8        INY
- - - - - - 0x015217 05:D207: D0 F2     BNE bra_D1FB_loop



ofs_006_D209_8C:
C - - - - - 0x015219 05:D209: B1 53     LDA (ram_0053),Y
C - - - - - 0x01521B 05:D20B: 8D 57 01  STA ram_0157
C - - - - - 0x01521E 05:D20E: C8        INY
C - - - - - 0x01521F 05:D20F: B1 53     LDA (ram_0053),Y
C - - - - - 0x015221 05:D211: 8D 4B 01  STA ram_014B
C - - - - - 0x015224 05:D214: C8        INY
C - - - - - 0x015225 05:D215: B1 53     LDA (ram_0053),Y
C - - - - - 0x015227 05:D217: 8D 51 01  STA ram_0151
C - - - - - 0x01522A 05:D21A: C8        INY
C - - - - - 0x01522B 05:D21B: 4C ED C9  JMP loc_C9ED



ofs_006_D21E_8D:
- - - - - - 0x01522E 05:D21E: B1 53     LDA (ram_0053),Y
- - - - - - 0x015230 05:D220: 8D 5D 01  STA ram_015D
- - - - - - 0x015233 05:D223: C8        INY
- - - - - - 0x015234 05:D224: 4C ED C9  JMP loc_C9ED



ofs_006_D227_8F:
C - - - - - 0x015237 05:D227: B1 53     LDA (ram_0053),Y
C - - - - - 0x015239 05:D229: 8D 68 01  STA ram_0168
C - - - - - 0x01523C 05:D22C: C8        INY
C - - - - - 0x01523D 05:D22D: B1 53     LDA (ram_0053),Y
C - - - - - 0x01523F 05:D22F: 8D 70 01  STA ram_0170
C - - - - - 0x015242 05:D232: C8        INY
C - - - - - 0x015243 05:D233: B1 53     LDA (ram_0053),Y
C - - - - - 0x015245 05:D235: 8D 78 01  STA ram_0178
C - - - - - 0x015248 05:D238: C8        INY
C - - - - - 0x015249 05:D239: B1 53     LDA (ram_0053),Y
C - - - - - 0x01524B 05:D23B: 8D 7C 01  STA ram_017C
C - - - - - 0x01524E 05:D23E: C8        INY
C - - - - - 0x01524F 05:D23F: 4C ED C9  JMP loc_C9ED



ofs_006_D242_90:
C - - - - - 0x015252 05:D242: A9 FF     LDA #$FF
C - - - - - 0x015254 05:D244: 8D A5 01  STA ram_01A5
C - - - - - 0x015257 05:D247: 4C ED C9  JMP loc_C9ED



ofs_006_D24A_91:
- - - - - - 0x01525A 05:D24A: B1 53     LDA (ram_0053),Y
- - - - - - 0x01525C 05:D24C: 8D 80 01  STA ram_0180
- - - - - - 0x01525F 05:D24F: C8        INY
- - - - - - 0x015260 05:D250: B1 53     LDA (ram_0053),Y
- - - - - - 0x015262 05:D252: 8D 88 01  STA ram_0188
- - - - - - 0x015265 05:D255: C8        INY
- - - - - - 0x015266 05:D256: B1 53     LDA (ram_0053),Y
- - - - - - 0x015268 05:D258: 8D 89 01  STA ram_0189
- - - - - - 0x01526B 05:D25B: C8        INY
- - - - - - 0x01526C 05:D25C: 4C ED C9  JMP loc_C9ED



tbl_D25F_lo:
- D 2 - - - 0x01526F 05:D25F: 93        .byte < ( ofs_001_D294_80 - $01 )
- D 2 - - - 0x015270 05:D260: AD        .byte < ( ofs_001_D2AE_81 - $01 )
- - - - - - 0x015271 05:D261: BD        .byte < ( ofs_001_D2BE_82 - $01 )
- D 2 - - - 0x015272 05:D262: C6        .byte < ( ofs_001_D2C7_83 - $01 )
- D 2 - - - 0x015273 05:D263: CC        .byte < ( ofs_001_D2CD_84_jsr - $01 )
- D 2 - - - 0x015274 05:D264: ED        .byte < ( ofs_001_D2EE_85_rts - $01 )
- D 2 - - - 0x015275 05:D265: 89        .byte < ( ofs_001_D28A_86 - $01 )
- D 2 - - - 0x015276 05:D266: 8C        .byte < ( ofs_001_D28D_87 - $01 )
- D 2 - - - 0x015277 05:D267: E0        .byte < ( ofs_001_D2E1_88_jmp - $01 )
- - - - - - 0x015278 05:D268: FE        .byte < ( ofs_001_D2FF_89 - $01 )
- D 2 - - - 0x015279 05:D269: 0C        .byte < ( ofs_001_D30D_8A - $01 )
- D 2 - - - 0x01527A 05:D26A: 37        .byte < ( ofs_001_D338_8B - $01 )
- D 2 - - - 0x01527B 05:D26B: 40        .byte < ( ofs_001_D341_8C - $01 )
- - - - - - 0x01527C 05:D26C: 88        .byte < ( ofs_001_D289_8D_RTS - $01 )
- - - - - - 0x01527D 05:D26D: 88        .byte < ( ofs_001_D289_8E_RTS - $01 )
- - - - - - 0x01527E 05:D26E: 88        .byte < ( ofs_001_D289_8F_RTS - $01 )
- - - - - - 0x01527F 05:D26F: 88        .byte < ( ofs_001_D289_90_RTS - $01 )
- - - - - - 0x015280 05:D270: 55        .byte < ( ofs_001_D356_91 - $01 )
- D 2 - - - 0x015281 05:D271: 64        .byte < ( ofs_001_D365_92_loop - $01 )
- D 2 - - - 0x015282 05:D272: 7C        .byte < ( ofs_001_D37D_93 - $01 )
- D 2 - - - 0x015283 05:D273: 85        .byte < ( ofs_001_D386_94 - $01 )

tbl_D274_hi:
- D 2 - - - 0x015284 05:D274: D2        .byte > ( ofs_001_D294_80 - $01 )
- D 2 - - - 0x015285 05:D275: D2        .byte > ( ofs_001_D2AE_81 - $01 )
- - - - - - 0x015286 05:D276: D2        .byte > ( ofs_001_D2BE_82 - $01 )
- D 2 - - - 0x015287 05:D277: D2        .byte > ( ofs_001_D2C7_83 - $01 )
- D 2 - - - 0x015288 05:D278: D2        .byte > ( ofs_001_D2CD_84_jsr - $01 )
- D 2 - - - 0x015289 05:D279: D2        .byte > ( ofs_001_D2EE_85_rts - $01 )
- D 2 - - - 0x01528A 05:D27A: D2        .byte > ( ofs_001_D28A_86 - $01 )
- D 2 - - - 0x01528B 05:D27B: D2        .byte > ( ofs_001_D28D_87 - $01 )
- D 2 - - - 0x01528C 05:D27C: D2        .byte > ( ofs_001_D2E1_88_jmp - $01 )
- - - - - - 0x01528D 05:D27D: D2        .byte > ( ofs_001_D2FF_89 - $01 )
- D 2 - - - 0x01528E 05:D27E: D3        .byte > ( ofs_001_D30D_8A - $01 )
- D 2 - - - 0x01528F 05:D27F: D3        .byte > ( ofs_001_D338_8B - $01 )
- D 2 - - - 0x015290 05:D280: D3        .byte > ( ofs_001_D341_8C - $01 )
- - - - - - 0x015291 05:D281: D2        .byte > ( ofs_001_D289_8D_RTS - $01 )
- - - - - - 0x015292 05:D282: D2        .byte > ( ofs_001_D289_8E_RTS - $01 )
- - - - - - 0x015293 05:D283: D2        .byte > ( ofs_001_D289_8F_RTS - $01 )
- - - - - - 0x015294 05:D284: D2        .byte > ( ofs_001_D289_90_RTS - $01 )
- - - - - - 0x015295 05:D285: D3        .byte > ( ofs_001_D356_91 - $01 )
- D 2 - - - 0x015296 05:D286: D3        .byte > ( ofs_001_D365_92_loop - $01 )
- D 2 - - - 0x015297 05:D287: D3        .byte > ( ofs_001_D37D_93 - $01 )
- D 2 - - - 0x015298 05:D288: D3        .byte > ( ofs_001_D386_94 - $01 )



ofs_001_D289_8D_RTS:
ofs_001_D289_8E_RTS:
ofs_001_D289_8F_RTS:
ofs_001_D289_90_RTS:
ofs_002_D289_8D_RTS:
ofs_002_D289_8E_RTS:
ofs_002_D289_8F_RTS:
ofs_002_D289_90_RTS:
- - - - - - 0x015299 05:D289: 60        RTS



ofs_001_D28A_86:
C - - - - - 0x01529A 05:D28A: A9 80     LDA #$80
C - - - - - 0x01529C 05:D28C: 2C        .byte $2C   ; BIT opcode
ofs_001_D28D_87:
C - - - - - 0x01529D 05:D28D: A9 00     LDA #$00
C - - - - - 0x01529F 05:D28F: 85 99     STA ram_0099
C - - - - - 0x0152A1 05:D291: 4C 70 CB  JMP loc_CB70



ofs_001_D294_80:
C - - - - - 0x0152A4 05:D294: B1 55     LDA (ram_0055),Y
C - - - - - 0x0152A6 05:D296: C8        INY
C - - - - - 0x0152A7 05:D297: 8D EA 07  STA ram_07EA
C - - - - - 0x0152AA 05:D29A: A5 55     LDA ram_0055
C - - - - - 0x0152AC 05:D29C: 18        CLC
C - - - - - 0x0152AD 05:D29D: 69 02     ADC #< $0002
C - - - - - 0x0152AF 05:D29F: 85 71     STA ram_0071
C - - - - - 0x0152B1 05:D2A1: 85 55     STA ram_0055
C - - - - - 0x0152B3 05:D2A3: A5 56     LDA ram_0056
C - - - - - 0x0152B5 05:D2A5: 69 00     ADC #> $0002
C - - - - - 0x0152B7 05:D2A7: 85 72     STA ram_0072
C - - - - - 0x0152B9 05:D2A9: 85 56     STA ram_0056
C - - - - - 0x0152BB 05:D2AB: 4C 7A CB  JMP loc_CB7A



ofs_001_D2AE_81:
C - - - - - 0x0152BE 05:D2AE: CE EA 07  DEC ram_07EA
C - - - - - 0x0152C1 05:D2B1: F0 11     BEQ bra_D2C4
C - - - - - 0x0152C3 05:D2B3: A5 71     LDA ram_0071
C - - - - - 0x0152C5 05:D2B5: 85 55     STA ram_0055
C - - - - - 0x0152C7 05:D2B7: A5 72     LDA ram_0072
C - - - - - 0x0152C9 05:D2B9: 85 56     STA ram_0056
C - - - - - 0x0152CB 05:D2BB: 4C 7A CB  JMP loc_CB7A



ofs_001_D2BE_82:
- - - - - - 0x0152CE 05:D2BE: B1 55     LDA (ram_0055),Y
- - - - - - 0x0152D0 05:D2C0: 8D AE 01  STA ram_01AE
- - - - - - 0x0152D3 05:D2C3: C8        INY
bra_D2C4:
C - - - - - 0x0152D4 05:D2C4: 4C 70 CB  JMP loc_CB70



ofs_001_D2C7_83:
C - - - - - 0x0152D7 05:D2C7: EE E4 07  INC ram_07E4
C - - - - - 0x0152DA 05:D2CA: 4C EB CC  JMP loc_CCEB



ofs_001_D2CD_84_jsr:
C - - - - - 0x0152DD 05:D2CD: A6 68     LDX ram_0068
C - - - - - 0x0152DF 05:D2CF: A5 55     LDA ram_0055
C - - - - - 0x0152E1 05:D2D1: 18        CLC
C - - - - - 0x0152E2 05:D2D2: 69 03     ADC #< $0003
C - - - - - 0x0152E4 05:D2D4: 9D C6 07  STA ram_07C6,X
C - - - - - 0x0152E7 05:D2D7: A5 56     LDA ram_0056
C - - - - - 0x0152E9 05:D2D9: 69 00     ADC #> $0003
C - - - - - 0x0152EB 05:D2DB: 9D D8 07  STA ram_07D8,X
C - - - - - 0x0152EE 05:D2DE: E8        INX
C - - - - - 0x0152EF 05:D2DF: 86 68     STX ram_0068
ofs_001_D2E1_88_jmp:
C - - - - - 0x0152F1 05:D2E1: B1 55     LDA (ram_0055),Y
C - - - - - 0x0152F3 05:D2E3: AA        TAX
C - - - - - 0x0152F4 05:D2E4: C8        INY
C - - - - - 0x0152F5 05:D2E5: B1 55     LDA (ram_0055),Y
C - - - - - 0x0152F7 05:D2E7: 85 56     STA ram_0056
C - - - - - 0x0152F9 05:D2E9: 86 55     STX ram_0055
C - - - - - 0x0152FB 05:D2EB: 4C 7A CB  JMP loc_CB7A



ofs_001_D2EE_85_rts:
C - - - - - 0x0152FE 05:D2EE: C6 68     DEC ram_0068
C - - - - - 0x015300 05:D2F0: A6 68     LDX ram_0068
C - - - - - 0x015302 05:D2F2: BD C6 07  LDA ram_07C6,X
C - - - - - 0x015305 05:D2F5: 85 55     STA ram_0055
C - - - - - 0x015307 05:D2F7: BD D8 07  LDA ram_07D8,X
C - - - - - 0x01530A 05:D2FA: 85 56     STA ram_0056
C - - - - - 0x01530C 05:D2FC: 4C 7A CB  JMP loc_CB7A



ofs_001_D2FF_89:
bra_D2FF_loop:
- - - - - - 0x01530F 05:D2FF: B1 55     LDA (ram_0055),Y
- - - - - - 0x015311 05:D301: 30 31     BMI bra_D334
- - - - - - 0x015313 05:D303: AA        TAX
- - - - - - 0x015314 05:D304: C8        INY
- - - - - - 0x015315 05:D305: B1 55     LDA (ram_0055),Y
- - - - - - 0x015317 05:D307: 9D 00 40  STA $4000,X
- - - - - - 0x01531A 05:D30A: C8        INY
- - - - - - 0x01531B 05:D30B: D0 F2     BNE bra_D2FF_loop



ofs_001_D30D_8A:
C - - - - - 0x01531D 05:D30D: B1 55     LDA (ram_0055),Y
C - - - - - 0x01531F 05:D30F: 4A        LSR
C - - - - - 0x015320 05:D310: 4A        LSR
C - - - - - 0x015321 05:D311: 4A        LSR
C - - - - - 0x015322 05:D312: 4A        LSR
C - - - - - 0x015323 05:D313: 8D 22 01  STA ram_0122
C - - - - - 0x015326 05:D316: B1 55     LDA (ram_0055),Y
C - - - - - 0x015328 05:D318: 29 0F     AND #$0F
C - - - - - 0x01532A 05:D31A: 8D 31 01  STA ram_0131
C - - - - - 0x01532D 05:D31D: C8        INY
C - - - - - 0x01532E 05:D31E: B1 55     LDA (ram_0055),Y
C - - - - - 0x015330 05:D320: 4A        LSR
C - - - - - 0x015331 05:D321: 4A        LSR
C - - - - - 0x015332 05:D322: 4A        LSR
C - - - - - 0x015333 05:D323: 4A        LSR
C - - - - - 0x015334 05:D324: 8D 29 01  STA ram_0129
C - - - - - 0x015337 05:D327: B1 55     LDA (ram_0055),Y
C - - - - - 0x015339 05:D329: 29 0F     AND #$0F
C - - - - - 0x01533B 05:D32B: 8D 2A 01  STA ram_012A
C - - - - - 0x01533E 05:D32E: C8        INY
C - - - - - 0x01533F 05:D32F: B1 55     LDA (ram_0055),Y
C - - - - - 0x015341 05:D331: 8D 36 01  STA ram_0136
bra_D334:
C - - - - - 0x015344 05:D334: C8        INY
C - - - - - 0x015345 05:D335: 4C 70 CB  JMP loc_CB70



ofs_001_D338_8B:
C - - - - - 0x015348 05:D338: B1 55     LDA (ram_0055),Y
C - - - - - 0x01534A 05:D33A: 8D B3 01  STA ram_01B3
C - - - - - 0x01534D 05:D33D: C8        INY
C - - - - - 0x01534E 05:D33E: 4C 70 CB  JMP loc_CB70



ofs_001_D341_8C:
C - - - - - 0x015351 05:D341: B1 55     LDA (ram_0055),Y
C - - - - - 0x015353 05:D343: 8D 58 01  STA ram_0158
C - - - - - 0x015356 05:D346: C8        INY
C - - - - - 0x015357 05:D347: B1 55     LDA (ram_0055),Y
C - - - - - 0x015359 05:D349: 8D 4C 01  STA ram_014C
C - - - - - 0x01535C 05:D34C: C8        INY
C - - - - - 0x01535D 05:D34D: B1 55     LDA (ram_0055),Y
C - - - - - 0x01535F 05:D34F: 8D 52 01  STA ram_0152
C - - - - - 0x015362 05:D352: C8        INY
C - - - - - 0x015363 05:D353: 4C 70 CB  JMP loc_CB70



ofs_001_D356_91:
- - - - - - 0x015366 05:D356: B1 55     LDA (ram_0055),Y
- - - - - - 0x015368 05:D358: 8D 81 01  STA ram_0181
- - - - - - 0x01536B 05:D35B: C8        INY
- - - - - - 0x01536C 05:D35C: B1 55     LDA (ram_0055),Y
- - - - - - 0x01536E 05:D35E: 8D 8A 01  STA ram_018A
- - - - - - 0x015371 05:D361: C8        INY
- - - - - - 0x015372 05:D362: 4C 70 CB  JMP loc_CB70



ofs_001_D365_92_loop:
C - - - - - 0x015375 05:D365: B1 55     LDA (ram_0055),Y
C - - - - - 0x015377 05:D367: 8D BD 01  STA ram_01BD
C - - - - - 0x01537A 05:D36A: C8        INY
C - - - - - 0x01537B 05:D36B: B1 55     LDA (ram_0055),Y
C - - - - - 0x01537D 05:D36D: 85 5F     STA ram_005F
C - - - - - 0x01537F 05:D36F: C8        INY
C - - - - - 0x015380 05:D370: B1 55     LDA (ram_0055),Y
C - - - - - 0x015382 05:D372: 85 60     STA ram_0060
C - - - - - 0x015384 05:D374: C8        INY
C - - - - - 0x015385 05:D375: A9 FF     LDA #$FF
C - - - - - 0x015387 05:D377: 8D B3 01  STA ram_01B3
C - - - - - 0x01538A 05:D37A: 4C 70 CB  JMP loc_CB70



ofs_001_D37D_93:
C - - - - - 0x01538D 05:D37D: B1 55     LDA (ram_0055),Y
C - - - - - 0x01538F 05:D37F: 8D 96 01  STA ram_0196
C - - - - - 0x015392 05:D382: C8        INY
C - - - - - 0x015393 05:D383: 4C 70 CB  JMP loc_CB70



ofs_001_D386_94:
C - - - - - 0x015396 05:D386: B1 55     LDA (ram_0055),Y
C - - - - - 0x015398 05:D388: 8D 9B 01  STA ram_019B
C - - - - - 0x01539B 05:D38B: C8        INY
C - - - - - 0x01539C 05:D38C: 4C 70 CB  JMP loc_CB70



tbl_D38F_lo:
- D 2 - - - 0x01539F 05:D38F: C2        .byte < ( ofs_002_D3C3_80 - $01 )
- D 2 - - - 0x0153A0 05:D390: DC        .byte < ( ofs_002_D3DD_81 - $01 )
- - - - - - 0x0153A1 05:D391: EC        .byte < ( ofs_002_D3ED_82 - $01 )
- D 2 - - - 0x0153A2 05:D392: F5        .byte < ( ofs_002_D3F6_83 - $01 )
- - - - - - 0x0153A3 05:D393: 05        .byte < ( ofs_002_D406_84_jsr - $01 )
- - - - - - 0x0153A4 05:D394: 26        .byte < ( ofs_002_D427_85_rts - $01 )
- - - - - - 0x0153A5 05:D395: B8        .byte < ( ofs_002_D3B9_86 - $01 )
- D 2 - - - 0x0153A6 05:D396: BB        .byte < ( ofs_002_D3BC_87 - $01 )
- - - - - - 0x0153A7 05:D397: 19        .byte < ( ofs_002_D41A_88_jmp - $01 )
- - - - - - 0x0153A8 05:D398: 37        .byte < ( ofs_002_D438_89 - $01 )
- D 2 - - - 0x0153A9 05:D399: 45        .byte < ( ofs_002_D446_8A - $01 )
- D 2 - - - 0x0153AA 05:D39A: 70        .byte < ( ofs_002_D471_8B - $01 )
- - - - - - 0x0153AB 05:D39B: 79        .byte < ( ofs_002_D47A_8C - $01 )
- - - - - - 0x0153AC 05:D39C: 88        .byte < ( ofs_002_D289_8D_RTS - $01 )
- - - - - - 0x0153AD 05:D39D: 88        .byte < ( ofs_002_D289_8E_RTS - $01 )
- - - - - - 0x0153AE 05:D39E: 88        .byte < ( ofs_002_D289_8F_RTS - $01 )
- - - - - - 0x0153AF 05:D39F: 88        .byte < ( ofs_002_D289_90_RTS - $01 )
- - - - - - 0x0153B0 05:D3A0: 8E        .byte < ( ofs_002_D48F_91 - $01 )
- - - - - - 0x0153B1 05:D3A1: 9D        .byte < ( ofs_002_D49E_92_loop - $01 )
- - - - - - 0x0153B2 05:D3A2: B5        .byte < ( ofs_002_D4B6_93 - $01 )
- - - - - - 0x0153B3 05:D3A3: BE        .byte < ( ofs_002_D4BF_94 - $01 )

tbl_D3A4_hi:
- D 2 - - - 0x0153B4 05:D3A4: D3        .byte > ( ofs_002_D3C3_80 - $01 )
- D 2 - - - 0x0153B5 05:D3A5: D3        .byte > ( ofs_002_D3DD_81 - $01 )
- - - - - - 0x0153B6 05:D3A6: D3        .byte > ( ofs_002_D3ED_82 - $01 )
- D 2 - - - 0x0153B7 05:D3A7: D3        .byte > ( ofs_002_D3F6_83 - $01 )
- - - - - - 0x0153B8 05:D3A8: D4        .byte > ( ofs_002_D406_84_jsr - $01 )
- - - - - - 0x0153B9 05:D3A9: D4        .byte > ( ofs_002_D427_85_rts - $01 )
- - - - - - 0x0153BA 05:D3AA: D3        .byte > ( ofs_002_D3B9_86 - $01 )
- D 2 - - - 0x0153BB 05:D3AB: D3        .byte > ( ofs_002_D3BC_87 - $01 )
- - - - - - 0x0153BC 05:D3AC: D4        .byte > ( ofs_002_D41A_88_jmp - $01 )
- - - - - - 0x0153BD 05:D3AD: D4        .byte > ( ofs_002_D438_89 - $01 )
- D 2 - - - 0x0153BE 05:D3AE: D4        .byte > ( ofs_002_D446_8A - $01 )
- D 2 - - - 0x0153BF 05:D3AF: D4        .byte > ( ofs_002_D471_8B - $01 )
- - - - - - 0x0153C0 05:D3B0: D4        .byte > ( ofs_002_D47A_8C - $01 )
- - - - - - 0x0153C1 05:D3B1: D2        .byte > ( ofs_002_D289_8D_RTS - $01 )
- - - - - - 0x0153C2 05:D3B2: D2        .byte > ( ofs_002_D289_8E_RTS - $01 )
- - - - - - 0x0153C3 05:D3B3: D2        .byte > ( ofs_002_D289_8F_RTS - $01 )
- - - - - - 0x0153C4 05:D3B4: D2        .byte > ( ofs_002_D289_90_RTS - $01 )
- - - - - - 0x0153C5 05:D3B5: D4        .byte > ( ofs_002_D48F_91 - $01 )
- - - - - - 0x0153C6 05:D3B6: D4        .byte > ( ofs_002_D49E_92_loop - $01 )
- - - - - - 0x0153C7 05:D3B7: D4        .byte > ( ofs_002_D4B6_93 - $01 )
- - - - - - 0x0153C8 05:D3B8: D4        .byte > ( ofs_002_D4BF_94 - $01 )



ofs_002_D3B9_86:
- - - - - - 0x0153C9 05:D3B9: A9 80     LDA #$80
- - - - - - 0x0153CB 05:D3BB: 2C        .byte $2C   ; BIT opcode
ofs_002_D3BC_87:
C - - - - - 0x0153CC 05:D3BC: A9 00     LDA #$00
C - - - - - 0x0153CE 05:D3BE: 85 9A     STA ram_009A
C - - - - - 0x0153D0 05:D3C0: 4C FA CC  JMP loc_CCFA



ofs_002_D3C3_80:
C - - - - - 0x0153D3 05:D3C3: B1 57     LDA (ram_0057),Y
C - - - - - 0x0153D5 05:D3C5: C8        INY
C - - - - - 0x0153D6 05:D3C6: 8D EB 07  STA ram_07EB
C - - - - - 0x0153D9 05:D3C9: A5 57     LDA ram_0057
C - - - - - 0x0153DB 05:D3CB: 18        CLC
C - - - - - 0x0153DC 05:D3CC: 69 02     ADC #< $0002
C - - - - - 0x0153DE 05:D3CE: 85 73     STA ram_0073
C - - - - - 0x0153E0 05:D3D0: 85 57     STA ram_0057
C - - - - - 0x0153E2 05:D3D2: A5 58     LDA ram_0058
C - - - - - 0x0153E4 05:D3D4: 69 00     ADC #> $0002
C - - - - - 0x0153E6 05:D3D6: 85 74     STA ram_0074
C - - - - - 0x0153E8 05:D3D8: 85 58     STA ram_0058
C - - - - - 0x0153EA 05:D3DA: 4C 04 CD  JMP loc_CD04



ofs_002_D3DD_81:
C - - - - - 0x0153ED 05:D3DD: CE EB 07  DEC ram_07EB
C - - - - - 0x0153F0 05:D3E0: F0 11     BEQ bra_D3F3
C - - - - - 0x0153F2 05:D3E2: A5 73     LDA ram_0073
C - - - - - 0x0153F4 05:D3E4: 85 57     STA ram_0057
C - - - - - 0x0153F6 05:D3E6: A5 74     LDA ram_0074
C - - - - - 0x0153F8 05:D3E8: 85 58     STA ram_0058
C - - - - - 0x0153FA 05:D3EA: 4C 04 CD  JMP loc_CD04



ofs_002_D3ED_82:
- - - - - - 0x0153FD 05:D3ED: B1 57     LDA (ram_0057),Y
- - - - - - 0x0153FF 05:D3EF: 8D AF 01  STA ram_01AF
- - - - - - 0x015402 05:D3F2: C8        INY
bra_D3F3:
C - - - - - 0x015403 05:D3F3: 4C FA CC  JMP loc_CCFA



ofs_002_D3F6_83:
C - - - - - 0x015406 05:D3F6: EE E5 07  INC ram_07E5
C - - - - - 0x015409 05:D3F9: A5 96     LDA ram_0096
C - - - - - 0x01540B 05:D3FB: 8D 0E 40  STA $400E
C - - - - - 0x01540E 05:D3FE: A9 03     LDA #$03
C - - - - - 0x015410 05:D400: 8D 0F 40  STA $400F
C - - - - - 0x015413 05:D403: 4C 66 CE  JMP loc_CE66



ofs_002_D406_84_jsr:
- - - - - - 0x015416 05:D406: A6 69     LDX ram_0069
- - - - - - 0x015418 05:D408: A5 57     LDA ram_0057
- - - - - - 0x01541A 05:D40A: 18        CLC
- - - - - - 0x01541B 05:D40B: 69 03     ADC #< $0003
- - - - - - 0x01541D 05:D40D: 9D C9 07  STA ram_07C9,X
- - - - - - 0x015420 05:D410: A5 58     LDA ram_0058
- - - - - - 0x015422 05:D412: 69 00     ADC #> $0003
- - - - - - 0x015424 05:D414: 9D DB 07  STA ram_07DB,X
- - - - - - 0x015427 05:D417: E8        INX
- - - - - - 0x015428 05:D418: 86 69     STX ram_0069
ofs_002_D41A_88_jmp:
- - - - - - 0x01542A 05:D41A: B1 57     LDA (ram_0057),Y
- - - - - - 0x01542C 05:D41C: AA        TAX
- - - - - - 0x01542D 05:D41D: C8        INY
- - - - - - 0x01542E 05:D41E: B1 57     LDA (ram_0057),Y
- - - - - - 0x015430 05:D420: 85 58     STA ram_0058
- - - - - - 0x015432 05:D422: 86 57     STX ram_0057
- - - - - - 0x015434 05:D424: 4C 04 CD  JMP loc_CD04



ofs_002_D427_85_rts:
- - - - - - 0x015437 05:D427: C6 69     DEC ram_0069
- - - - - - 0x015439 05:D429: A6 69     LDX ram_0069
- - - - - - 0x01543B 05:D42B: BD C9 07  LDA ram_07C9,X
- - - - - - 0x01543E 05:D42E: 85 57     STA ram_0057
- - - - - - 0x015440 05:D430: BD DB 07  LDA ram_07DB,X
- - - - - - 0x015443 05:D433: 85 58     STA ram_0058
- - - - - - 0x015445 05:D435: 4C 04 CD  JMP loc_CD04



ofs_002_D438_89:
bra_D438_loop:
- - - - - - 0x015448 05:D438: B1 57     LDA (ram_0057),Y
- - - - - - 0x01544A 05:D43A: 30 31     BMI bra_D46D
- - - - - - 0x01544C 05:D43C: AA        TAX
- - - - - - 0x01544D 05:D43D: C8        INY
- - - - - - 0x01544E 05:D43E: B1 57     LDA (ram_0057),Y
- - - - - - 0x015450 05:D440: 9D 00 40  STA $4000,X
- - - - - - 0x015453 05:D443: C8        INY
- - - - - - 0x015454 05:D444: D0 F2     BNE bra_D438_loop



ofs_002_D446_8A:
C - - - - - 0x015456 05:D446: B1 57     LDA (ram_0057),Y
C - - - - - 0x015458 05:D448: 4A        LSR
C - - - - - 0x015459 05:D449: 4A        LSR
C - - - - - 0x01545A 05:D44A: 4A        LSR
C - - - - - 0x01545B 05:D44B: 4A        LSR
C - - - - - 0x01545C 05:D44C: 8D 23 01  STA ram_0123
C - - - - - 0x01545F 05:D44F: B1 57     LDA (ram_0057),Y
C - - - - - 0x015461 05:D451: 29 0F     AND #$0F
C - - - - - 0x015463 05:D453: 8D 32 01  STA ram_0132
C - - - - - 0x015466 05:D456: C8        INY
C - - - - - 0x015467 05:D457: B1 57     LDA (ram_0057),Y
C - - - - - 0x015469 05:D459: 4A        LSR
C - - - - - 0x01546A 05:D45A: 4A        LSR
C - - - - - 0x01546B 05:D45B: 4A        LSR
C - - - - - 0x01546C 05:D45C: 4A        LSR
C - - - - - 0x01546D 05:D45D: 8D 2B 01  STA ram_012B
C - - - - - 0x015470 05:D460: B1 57     LDA (ram_0057),Y
C - - - - - 0x015472 05:D462: 29 0F     AND #$0F
C - - - - - 0x015474 05:D464: 8D 2C 01  STA ram_012C
C - - - - - 0x015477 05:D467: C8        INY
C - - - - - 0x015478 05:D468: B1 57     LDA (ram_0057),Y
C - - - - - 0x01547A 05:D46A: 8D 37 01  STA ram_0137
bra_D46D:
C - - - - - 0x01547D 05:D46D: C8        INY
C - - - - - 0x01547E 05:D46E: 4C FA CC  JMP loc_CCFA



ofs_002_D471_8B:
C - - - - - 0x015481 05:D471: B1 57     LDA (ram_0057),Y
C - - - - - 0x015483 05:D473: 8D B4 01  STA ram_01B4
C - - - - - 0x015486 05:D476: C8        INY
C - - - - - 0x015487 05:D477: 4C FA CC  JMP loc_CCFA



ofs_002_D47A_8C:
- - - - - - 0x01548A 05:D47A: B1 57     LDA (ram_0057),Y
- - - - - - 0x01548C 05:D47C: 8D 59 01  STA ram_0159
- - - - - - 0x01548F 05:D47F: C8        INY
- - - - - - 0x015490 05:D480: B1 57     LDA (ram_0057),Y
- - - - - - 0x015492 05:D482: 8D 4D 01  STA ram_014D
- - - - - - 0x015495 05:D485: C8        INY
- - - - - - 0x015496 05:D486: B1 57     LDA (ram_0057),Y
- - - - - - 0x015498 05:D488: 8D 53 01  STA ram_0153
- - - - - - 0x01549B 05:D48B: C8        INY
- - - - - - 0x01549C 05:D48C: 4C 70 CB  JMP loc_CB70



ofs_002_D48F_91:
- - - - - - 0x01549F 05:D48F: B1 57     LDA (ram_0057),Y
- - - - - - 0x0154A1 05:D491: 8D 82 01  STA ram_0182
- - - - - - 0x0154A4 05:D494: C8        INY
- - - - - - 0x0154A5 05:D495: B1 57     LDA (ram_0057),Y
- - - - - - 0x0154A7 05:D497: 8D 8B 01  STA ram_018B
- - - - - - 0x0154AA 05:D49A: C8        INY
- - - - - - 0x0154AB 05:D49B: 4C FA CC  JMP loc_CCFA



ofs_002_D49E_92_loop:
- - - - - - 0x0154AE 05:D49E: B1 57     LDA (ram_0057),Y
- - - - - - 0x0154B0 05:D4A0: 8D BE 01  STA ram_01BE
- - - - - - 0x0154B3 05:D4A3: C8        INY
- - - - - - 0x0154B4 05:D4A4: B1 57     LDA (ram_0057),Y
- - - - - - 0x0154B6 05:D4A6: 85 61     STA ram_0061
- - - - - - 0x0154B8 05:D4A8: C8        INY
- - - - - - 0x0154B9 05:D4A9: B1 57     LDA (ram_0057),Y
- - - - - - 0x0154BB 05:D4AB: 85 62     STA ram_0062
- - - - - - 0x0154BD 05:D4AD: C8        INY
- - - - - - 0x0154BE 05:D4AE: A9 FF     LDA #$FF
- - - - - - 0x0154C0 05:D4B0: 8D B4 01  STA ram_01B4
- - - - - - 0x0154C3 05:D4B3: 4C FA CC  JMP loc_CCFA



ofs_002_D4B6_93:
- - - - - - 0x0154C6 05:D4B6: B1 57     LDA (ram_0057),Y
- - - - - - 0x0154C8 05:D4B8: 8D 97 01  STA ram_0197
- - - - - - 0x0154CB 05:D4BB: C8        INY
- - - - - - 0x0154CC 05:D4BC: 4C FA CC  JMP loc_CCFA



ofs_002_D4BF_94:
- - - - - - 0x0154CF 05:D4BF: B1 57     LDA (ram_0057),Y
- - - - - - 0x0154D1 05:D4C1: 8D 9C 01  STA ram_019C
- - - - - - 0x0154D4 05:D4C4: C8        INY
- - - - - - 0x0154D5 05:D4C5: 4C FA CC  JMP loc_CCFA



tbl_D4C8_lo:
- - - - - - 0x0154D8 05:D4C8: F1        .byte < ( ofs_004_D4F2_80 - $01 )
- - - - - - 0x0154D9 05:D4C9: 0B        .byte < ( ofs_004_D50C_81 - $01 )
- D 2 - - - 0x0154DA 05:D4CA: 1B        .byte < ( ofs_004_D51C_82 - $01 )
- D 2 - - - 0x0154DB 05:D4CB: 24        .byte < ( ofs_004_D525_83 - $01 )
- D 2 - - - 0x0154DC 05:D4CC: 3A        .byte < ( ofs_004_D53B_84_jsr - $01 )
- D 2 - - - 0x0154DD 05:D4CD: 5B        .byte < ( ofs_004_D55C_85_rts - $01 )
- D 2 - - - 0x0154DE 05:D4CE: 6C        .byte < ( ofs_004_D56D_86 - $01 )
- - - - - - 0x0154DF 05:D4CF: 74        .byte < ( ofs_004_D575_87 - $01 )
- - - - - - 0x0154E0 05:D4D0: 4E        .byte < ( ofs_004_D54F_88_jmp - $01 )
- - - - - - 0x0154E1 05:D4D1: 7D        .byte < ( ofs_004_D57E_89 - $01 )
- D 2 - - - 0x0154E2 05:D4D2: 8B        .byte < ( ofs_004_D58C_8A - $01 )
- D 2 - - - 0x0154E3 05:D4D3: B6        .byte < ( ofs_004_D5B7_8B - $01 )
- - - - - - 0x0154E4 05:D4D4: BF        .byte < ( ofs_004_D5C0_8C - $01 )
- - - - - - 0x0154E5 05:D4D5: D4        .byte < ( ofs_004_D5D5_8D - $01 )
- D 2 - - - 0x0154E6 05:D4D6: DD        .byte < ( ofs_004_D5DE_8E - $01 )
- D 2 - - - 0x0154E7 05:D4D7: E6        .byte < ( ofs_004_D5E7_8F - $01 )
- - - - - - 0x0154E8 05:D4D8: 01        .byte < ( ofs_004_D602_90 - $01 )
- - - - - - 0x0154E9 05:D4D9: 09        .byte < ( ofs_004_D60A_91 - $01 )
- D 2 - - - 0x0154EA 05:D4DA: 1E        .byte < ( ofs_004_D61F_92_loop - $01 )
- D 2 - - - 0x0154EB 05:D4DB: 36        .byte < ( ofs_004_D637_93 - $01 )
- D 2 - - - 0x0154EC 05:D4DC: 3F        .byte < ( ofs_004_D640_94 - $01 )

tbl_D4DD_hi:
- - - - - - 0x0154ED 05:D4DD: D4        .byte > ( ofs_004_D4F2_80 - $01 )
- - - - - - 0x0154EE 05:D4DE: D5        .byte > ( ofs_004_D50C_81 - $01 )
- D 2 - - - 0x0154EF 05:D4DF: D5        .byte > ( ofs_004_D51C_82 - $01 )
- D 2 - - - 0x0154F0 05:D4E0: D5        .byte > ( ofs_004_D525_83 - $01 )
- D 2 - - - 0x0154F1 05:D4E1: D5        .byte > ( ofs_004_D53B_84_jsr - $01 )
- D 2 - - - 0x0154F2 05:D4E2: D5        .byte > ( ofs_004_D55C_85_rts - $01 )
- D 2 - - - 0x0154F3 05:D4E3: D5        .byte > ( ofs_004_D56D_86 - $01 )
- - - - - - 0x0154F4 05:D4E4: D5        .byte > ( ofs_004_D575_87 - $01 )
- - - - - - 0x0154F5 05:D4E5: D5        .byte > ( ofs_004_D54F_88_jmp - $01 )
- - - - - - 0x0154F6 05:D4E6: D5        .byte > ( ofs_004_D57E_89 - $01 )
- D 2 - - - 0x0154F7 05:D4E7: D5        .byte > ( ofs_004_D58C_8A - $01 )
- D 2 - - - 0x0154F8 05:D4E8: D5        .byte > ( ofs_004_D5B7_8B - $01 )
- - - - - - 0x0154F9 05:D4E9: D5        .byte > ( ofs_004_D5C0_8C - $01 )
- - - - - - 0x0154FA 05:D4EA: D5        .byte > ( ofs_004_D5D5_8D - $01 )
- D 2 - - - 0x0154FB 05:D4EB: D5        .byte > ( ofs_004_D5DE_8E - $01 )
- D 2 - - - 0x0154FC 05:D4EC: D5        .byte > ( ofs_004_D5E7_8F - $01 )
- - - - - - 0x0154FD 05:D4ED: D6        .byte > ( ofs_004_D602_90 - $01 )
- - - - - - 0x0154FE 05:D4EE: D6        .byte > ( ofs_004_D60A_91 - $01 )
- D 2 - - - 0x0154FF 05:D4EF: D6        .byte > ( ofs_004_D61F_92_loop - $01 )
- D 2 - - - 0x015500 05:D4F0: D6        .byte > ( ofs_004_D637_93 - $01 )
- D 2 - - - 0x015501 05:D4F1: D6        .byte > ( ofs_004_D640_94 - $01 )



ofs_004_D4F2_80:
- - - - - - 0x015502 05:D4F2: B1 59     LDA (ram_0059),Y
- - - - - - 0x015504 05:D4F4: C8        INY
- - - - - - 0x015505 05:D4F5: 8D EC 07  STA ram_07EC
- - - - - - 0x015508 05:D4F8: A5 59     LDA ram_0059
- - - - - - 0x01550A 05:D4FA: 18        CLC
- - - - - - 0x01550B 05:D4FB: 69 02     ADC #< $0002
- - - - - - 0x01550D 05:D4FD: 85 75     STA ram_0075
- - - - - - 0x01550F 05:D4FF: 85 59     STA ram_0059
- - - - - - 0x015511 05:D501: A5 5A     LDA ram_005A
- - - - - - 0x015513 05:D503: 69 00     ADC #> $0002
- - - - - - 0x015515 05:D505: 85 76     STA ram_0076
- - - - - - 0x015517 05:D507: 85 5A     STA ram_005A
- - - - - - 0x015519 05:D509: 4C 6F C5  JMP loc_C56F



ofs_004_D50C_81:
- - - - - - 0x01551C 05:D50C: CE EC 07  DEC ram_07EC
- - - - - - 0x01551F 05:D50F: F0 11     BEQ bra_D522
- - - - - - 0x015521 05:D511: A5 75     LDA ram_0075
- - - - - - 0x015523 05:D513: 85 59     STA ram_0059
- - - - - - 0x015525 05:D515: A5 76     LDA ram_0076
- - - - - - 0x015527 05:D517: 85 5A     STA ram_005A
- - - - - - 0x015529 05:D519: 4C 6F C5  JMP loc_C56F



ofs_004_D51C_82:
C - - - - - 0x01552C 05:D51C: B1 59     LDA (ram_0059),Y
C - - - - - 0x01552E 05:D51E: 8D B0 01  STA ram_01B0
C - - - - - 0x015531 05:D521: C8        INY
bra_D522:
C - - - - - 0x015532 05:D522: 4C 65 C5  JMP loc_C565



ofs_004_D525_83:
C - - - - - 0x015535 05:D525: EE E6 07  INC ram_07E6
C - - - - - 0x015538 05:D528: A5 77     LDA ram_0077
C - - - - - 0x01553A 05:D52A: 8D 02 40  STA $4002
C - - - - - 0x01553D 05:D52D: A5 78     LDA ram_0078
C - - - - - 0x01553F 05:D52F: C5 8C     CMP ram_008C
C - - - - - 0x015541 05:D531: F0 05     BEQ bra_D538
C - - - - - 0x015543 05:D533: 85 89     STA ram_0089
C - - - - - 0x015545 05:D535: 8D 03 40  STA $4003
bra_D538:
C - - - - - 0x015548 05:D538: 4C 9A C7  JMP loc_C79A



ofs_004_D53B_84_jsr:
C - - - - - 0x01554B 05:D53B: A6 6A     LDX ram_006A
C - - - - - 0x01554D 05:D53D: A5 59     LDA ram_0059
C - - - - - 0x01554F 05:D53F: 18        CLC
C - - - - - 0x015550 05:D540: 69 03     ADC #< $0003
C - - - - - 0x015552 05:D542: 9D CC 07  STA ram_07CC,X
C - - - - - 0x015555 05:D545: A5 5A     LDA ram_005A
C - - - - - 0x015557 05:D547: 69 00     ADC #> $0003
C - - - - - 0x015559 05:D549: 9D DE 07  STA ram_07DE,X
C - - - - - 0x01555C 05:D54C: E8        INX
C - - - - - 0x01555D 05:D54D: 86 6A     STX ram_006A
ofs_004_D54F_88_jmp:
C - - - - - 0x01555F 05:D54F: B1 59     LDA (ram_0059),Y
C - - - - - 0x015561 05:D551: AA        TAX
C - - - - - 0x015562 05:D552: C8        INY
C - - - - - 0x015563 05:D553: B1 59     LDA (ram_0059),Y
C - - - - - 0x015565 05:D555: 85 5A     STA ram_005A
C - - - - - 0x015567 05:D557: 86 59     STX ram_0059
C - - - - - 0x015569 05:D559: 4C 6F C5  JMP loc_C56F



ofs_004_D55C_85_rts:
C - - - - - 0x01556C 05:D55C: C6 6A     DEC ram_006A
C - - - - - 0x01556E 05:D55E: A6 6A     LDX ram_006A
C - - - - - 0x015570 05:D560: BD CC 07  LDA ram_07CC,X
C - - - - - 0x015573 05:D563: 85 59     STA ram_0059
C - - - - - 0x015575 05:D565: BD DE 07  LDA ram_07DE,X
C - - - - - 0x015578 05:D568: 85 5A     STA ram_005A
C - - - - - 0x01557A 05:D56A: 4C 6F C5  JMP loc_C56F



ofs_004_D56D_86:
C - - - - - 0x01557D 05:D56D: B1 59     LDA (ram_0059),Y
C - - - - - 0x01557F 05:D56F: 85 82     STA ram_0082
C - - - - - 0x015581 05:D571: C8        INY
C - - - - - 0x015582 05:D572: 4C 65 C5  JMP loc_C565



ofs_004_D575_87:
- - - - - - 0x015585 05:D575: B1 59     LDA (ram_0059),Y
- - - - - - 0x015587 05:D577: 8D AA 01  STA ram_01AA
bra_D57A:
- - - - - - 0x01558A 05:D57A: C8        INY
- - - - - - 0x01558B 05:D57B: 4C 65 C5  JMP loc_C565



ofs_004_D57E_89:
bra_D57E_loop:
- - - - - - 0x01558E 05:D57E: B1 59     LDA (ram_0059),Y
- - - - - - 0x015590 05:D580: 30 F8     BMI bra_D57A
- - - - - - 0x015592 05:D582: AA        TAX
- - - - - - 0x015593 05:D583: C8        INY
- - - - - - 0x015594 05:D584: B1 59     LDA (ram_0059),Y
- - - - - - 0x015596 05:D586: 9D 00 40  STA $4000,X
- - - - - - 0x015599 05:D589: C8        INY
- - - - - - 0x01559A 05:D58A: D0 F2     BNE bra_D57E_loop



ofs_004_D58C_8A:
C - - - - - 0x01559C 05:D58C: B1 59     LDA (ram_0059),Y
C - - - - - 0x01559E 05:D58E: 4A        LSR
C - - - - - 0x01559F 05:D58F: 4A        LSR
C - - - - - 0x0155A0 05:D590: 4A        LSR
C - - - - - 0x0155A1 05:D591: 4A        LSR
C - - - - - 0x0155A2 05:D592: 8D 24 01  STA ram_0124
C - - - - - 0x0155A5 05:D595: B1 59     LDA (ram_0059),Y
C - - - - - 0x0155A7 05:D597: 29 0F     AND #$0F
C - - - - - 0x0155A9 05:D599: 8D 33 01  STA ram_0133
C - - - - - 0x0155AC 05:D59C: C8        INY
C - - - - - 0x0155AD 05:D59D: B1 59     LDA (ram_0059),Y
C - - - - - 0x0155AF 05:D59F: 4A        LSR
C - - - - - 0x0155B0 05:D5A0: 4A        LSR
C - - - - - 0x0155B1 05:D5A1: 4A        LSR
C - - - - - 0x0155B2 05:D5A2: 4A        LSR
C - - - - - 0x0155B3 05:D5A3: 8D 2D 01  STA ram_012D
C - - - - - 0x0155B6 05:D5A6: B1 59     LDA (ram_0059),Y
C - - - - - 0x0155B8 05:D5A8: 29 0F     AND #$0F
C - - - - - 0x0155BA 05:D5AA: 8D 2E 01  STA ram_012E
C - - - - - 0x0155BD 05:D5AD: C8        INY
C - - - - - 0x0155BE 05:D5AE: B1 59     LDA (ram_0059),Y
C - - - - - 0x0155C0 05:D5B0: 8D 38 01  STA ram_0138
C - - - - - 0x0155C3 05:D5B3: C8        INY
C - - - - - 0x0155C4 05:D5B4: 4C 65 C5  JMP loc_C565



ofs_004_D5B7_8B:
C - - - - - 0x0155C7 05:D5B7: B1 59     LDA (ram_0059),Y
C - - - - - 0x0155C9 05:D5B9: 8D B5 01  STA ram_01B5
C - - - - - 0x0155CC 05:D5BC: C8        INY
C - - - - - 0x0155CD 05:D5BD: 4C 65 C5  JMP loc_C565



ofs_004_D5C0_8C:
- - - - - - 0x0155D0 05:D5C0: B1 59     LDA (ram_0059),Y
- - - - - - 0x0155D2 05:D5C2: 8D 5A 01  STA ram_015A
- - - - - - 0x0155D5 05:D5C5: C8        INY
- - - - - - 0x0155D6 05:D5C6: B1 59     LDA (ram_0059),Y
- - - - - - 0x0155D8 05:D5C8: 8D 4E 01  STA ram_014E
- - - - - - 0x0155DB 05:D5CB: C8        INY
- - - - - - 0x0155DC 05:D5CC: B1 59     LDA (ram_0059),Y
- - - - - - 0x0155DE 05:D5CE: 8D 54 01  STA ram_0154
- - - - - - 0x0155E1 05:D5D1: C8        INY
- - - - - - 0x0155E2 05:D5D2: 4C 65 C5  JMP loc_C565



ofs_004_D5D5_8D:
- - - - - - 0x0155E5 05:D5D5: B1 59     LDA (ram_0059),Y
- - - - - - 0x0155E7 05:D5D7: 8D 5E 01  STA ram_015E
- - - - - - 0x0155EA 05:D5DA: C8        INY
- - - - - - 0x0155EB 05:D5DB: 4C 65 C5  JMP loc_C565



ofs_004_D5DE_8E:
C - - - - - 0x0155EE 05:D5DE: B1 59     LDA (ram_0059),Y
C - - - - - 0x0155F0 05:D5E0: 8D 65 01  STA ram_0165
C - - - - - 0x0155F3 05:D5E3: C8        INY
C - - - - - 0x0155F4 05:D5E4: 4C 65 C5  JMP loc_C565



ofs_004_D5E7_8F:
C - - - - - 0x0155F7 05:D5E7: B1 59     LDA (ram_0059),Y
C - - - - - 0x0155F9 05:D5E9: 8D 69 01  STA ram_0169
C - - - - - 0x0155FC 05:D5EC: C8        INY
C - - - - - 0x0155FD 05:D5ED: B1 59     LDA (ram_0059),Y
C - - - - - 0x0155FF 05:D5EF: 8D 71 01  STA ram_0171
C - - - - - 0x015602 05:D5F2: C8        INY
C - - - - - 0x015603 05:D5F3: B1 59     LDA (ram_0059),Y
C - - - - - 0x015605 05:D5F5: 8D 79 01  STA ram_0179
C - - - - - 0x015608 05:D5F8: C8        INY
C - - - - - 0x015609 05:D5F9: B1 59     LDA (ram_0059),Y
C - - - - - 0x01560B 05:D5FB: 8D 7D 01  STA ram_017D
C - - - - - 0x01560E 05:D5FE: C8        INY
C - - - - - 0x01560F 05:D5FF: 4C 65 C5  JMP loc_C565



ofs_004_D602_90:
- - - - - - 0x015612 05:D602: A9 FF     LDA #$FF
- - - - - - 0x015614 05:D604: 8D A6 01  STA ram_01A6
- - - - - - 0x015617 05:D607: 4C 65 C5  JMP loc_C565



ofs_004_D60A_91:
- - - - - - 0x01561A 05:D60A: B1 59     LDA (ram_0059),Y
- - - - - - 0x01561C 05:D60C: 8D 83 01  STA ram_0183
- - - - - - 0x01561F 05:D60F: C8        INY
- - - - - - 0x015620 05:D610: B1 59     LDA (ram_0059),Y
- - - - - - 0x015622 05:D612: 8D 8C 01  STA ram_018C
- - - - - - 0x015625 05:D615: C8        INY
- - - - - - 0x015626 05:D616: B1 59     LDA (ram_0059),Y
- - - - - - 0x015628 05:D618: 8D 8D 01  STA ram_018D
- - - - - - 0x01562B 05:D61B: C8        INY
- - - - - - 0x01562C 05:D61C: 4C 65 C5  JMP loc_C565



ofs_004_D61F_92_loop:
C - - - - - 0x01562F 05:D61F: B1 59     LDA (ram_0059),Y
C - - - - - 0x015631 05:D621: 8D BF 01  STA ram_01BF
C - - - - - 0x015634 05:D624: C8        INY
C - - - - - 0x015635 05:D625: B1 59     LDA (ram_0059),Y
C - - - - - 0x015637 05:D627: 85 63     STA ram_0063
C - - - - - 0x015639 05:D629: C8        INY
C - - - - - 0x01563A 05:D62A: B1 59     LDA (ram_0059),Y
C - - - - - 0x01563C 05:D62C: 85 64     STA ram_0064
C - - - - - 0x01563E 05:D62E: C8        INY
C - - - - - 0x01563F 05:D62F: A9 FF     LDA #$FF
C - - - - - 0x015641 05:D631: 8D B5 01  STA ram_01B5
C - - - - - 0x015644 05:D634: 4C 65 C5  JMP loc_C565



ofs_004_D637_93:
C - - - - - 0x015647 05:D637: B1 59     LDA (ram_0059),Y
C - - - - - 0x015649 05:D639: 8D 98 01  STA ram_0198
C - - - - - 0x01564C 05:D63C: C8        INY
C - - - - - 0x01564D 05:D63D: 4C 65 C5  JMP loc_C565



ofs_004_D640_94:
C - - - - - 0x015650 05:D640: B1 59     LDA (ram_0059),Y
C - - - - - 0x015652 05:D642: 8D 9D 01  STA ram_019D
C - - - - - 0x015655 05:D645: C8        INY
C - - - - - 0x015656 05:D646: 4C 65 C5  JMP loc_C565



tbl_D649:
- D 2 - - - 0x015659 05:D649: 06        .byte $06   ; 00
- - - - - - 0x01565A 05:D64A: 06        .byte $06   ; 01
- - - - - - 0x01565B 05:D64B: 05        .byte $05   ; 02
- - - - - - 0x01565C 05:D64C: 05        .byte $05   ; 03
- D 2 - - - 0x01565D 05:D64D: 05        .byte $05   ; 04
- D 2 - - - 0x01565E 05:D64E: 05        .byte $05   ; 05
- D 2 - - - 0x01565F 05:D64F: 04        .byte $04   ; 06
- D 2 - - - 0x015660 05:D650: 04        .byte $04   ; 07
- D 2 - - - 0x015661 05:D651: 04        .byte $04   ; 08
- D 2 - - - 0x015662 05:D652: 03        .byte $03   ; 09
- D 2 - - - 0x015663 05:D653: 03        .byte $03   ; 0A
- D 2 - - - 0x015664 05:D654: 03        .byte $03   ; 0B
- D 2 - - - 0x015665 05:D655: 03        .byte $03   ; 0C
- D 2 - - - 0x015666 05:D656: 03        .byte $03   ; 0D
- D 2 - - - 0x015667 05:D657: 02        .byte $02   ; 0E
- D 2 - - - 0x015668 05:D658: 02        .byte $02   ; 0F
- D 2 - - - 0x015669 05:D659: 02        .byte $02   ; 10
- D 2 - - - 0x01566A 05:D65A: 02        .byte $02   ; 11
- D 2 - - - 0x01566B 05:D65B: 02        .byte $02   ; 12
- D 2 - - - 0x01566C 05:D65C: 02        .byte $02   ; 13
- D 2 - - - 0x01566D 05:D65D: 02        .byte $02   ; 14
- D 2 - - - 0x01566E 05:D65E: 01        .byte $01   ; 15
- D 2 - - - 0x01566F 05:D65F: 01        .byte $01   ; 16
- D 2 - - - 0x015670 05:D660: 01        .byte $01   ; 17
- D 2 - - - 0x015671 05:D661: 01        .byte $01   ; 18
- D 2 - - - 0x015672 05:D662: 01        .byte $01   ; 19
- D 2 - - - 0x015673 05:D663: 01        .byte $01   ; 1A
- D 2 - - - 0x015674 05:D664: 01        .byte $01   ; 1B
- D 2 - - - 0x015675 05:D665: 01        .byte $01   ; 1C
- D 2 - - - 0x015676 05:D666: 01        .byte $01   ; 1D
- D 2 - - - 0x015677 05:D667: 01        .byte $01   ; 1E
- D 2 - - - 0x015678 05:D668: 01        .byte $01   ; 1F
- D 2 - - - 0x015679 05:D669: 01        .byte $01   ; 20
- D 2 - - - 0x01567A 05:D66A: 00        .byte $00   ; 21
- D 2 - - - 0x01567B 05:D66B: 00        .byte $00   ; 22
- D 2 - - - 0x01567C 05:D66C: 00        .byte $00   ; 23
- D 2 - - - 0x01567D 05:D66D: 00        .byte $00   ; 24
- D 2 - - - 0x01567E 05:D66E: 00        .byte $00   ; 25
- D 2 - - - 0x01567F 05:D66F: 00        .byte $00   ; 26
- D 2 - - - 0x015680 05:D670: 00        .byte $00   ; 27
- D 2 - - - 0x015681 05:D671: 00        .byte $00   ; 28
- D 2 - - - 0x015682 05:D672: 00        .byte $00   ; 29
- D 2 - - - 0x015683 05:D673: 00        .byte $00   ; 2A
- D 2 - - - 0x015684 05:D674: 00        .byte $00   ; 2B
- D 2 - - - 0x015685 05:D675: 00        .byte $00   ; 2C
- D 2 - - - 0x015686 05:D676: 00        .byte $00   ; 2D
- D 2 - - - 0x015687 05:D677: 00        .byte $00   ; 2E
- D 2 - - - 0x015688 05:D678: 00        .byte $00   ; 2F
- D 2 - - - 0x015689 05:D679: 00        .byte $00   ; 30
- D 2 - - - 0x01568A 05:D67A: 00        .byte $00   ; 31
- D 2 - - - 0x01568B 05:D67B: 00        .byte $00   ; 32
- D 2 - - - 0x01568C 05:D67C: 00        .byte $00   ; 33
- D 2 - - - 0x01568D 05:D67D: 00        .byte $00   ; 34
- D 2 - - - 0x01568E 05:D67E: 00        .byte $00   ; 35
- D 2 - - - 0x01568F 05:D67F: 00        .byte $00   ; 36
- D 2 - - - 0x015690 05:D680: 00        .byte $00   ; 37
- D 2 - - - 0x015691 05:D681: 00        .byte $00   ; 38
- D 2 - - - 0x015692 05:D682: 00        .byte $00   ; 39
- D 2 - - - 0x015693 05:D683: 00        .byte $00   ; 3A
- D 2 - - - 0x015694 05:D684: 00        .byte $00   ; 3B
- D 2 - - - 0x015695 05:D685: 00        .byte $00   ; 3C
- D 2 - - - 0x015696 05:D686: 00        .byte $00   ; 3D
- D 2 - - - 0x015697 05:D687: 00        .byte $00   ; 3E
- D 2 - - - 0x015698 05:D688: 00        .byte $00   ; 3F
- D 2 - - - 0x015699 05:D689: 00        .byte $00   ; 40
- D 2 - - - 0x01569A 05:D68A: 00        .byte $00   ; 41
- D 2 - - - 0x01569B 05:D68B: 00        .byte $00   ; 42
- D 2 - - - 0x01569C 05:D68C: 00        .byte $00   ; 43
- D 2 - - - 0x01569D 05:D68D: 00        .byte $00   ; 44
- D 2 - - - 0x01569E 05:D68E: 00        .byte $00   ; 45
- D 2 - - - 0x01569F 05:D68F: 00        .byte $00   ; 46
- D 2 - - - 0x0156A0 05:D690: 00        .byte $00   ; 47
- D 2 - - - 0x0156A1 05:D691: 00        .byte $00   ; 48
- D 2 - - - 0x0156A2 05:D692: 00        .byte $00   ; 49
- D 2 - - - 0x0156A3 05:D693: 00        .byte $00   ; 4A
- D 2 - - - 0x0156A4 05:D694: 00        .byte $00   ; 4B
- D 2 - - - 0x0156A5 05:D695: 00        .byte $00   ; 4C
- D 2 - - - 0x0156A6 05:D696: 00        .byte $00   ; 4D
- D 2 - - - 0x0156A7 05:D697: 00        .byte $00   ; 4E
- D 2 - - - 0x0156A8 05:D698: 00        .byte $00   ; 4F
- D 2 - - - 0x0156A9 05:D699: 00        .byte $00   ; 50
- D 2 - - - 0x0156AA 05:D69A: 00        .byte $00   ; 51
- D 2 - - - 0x0156AB 05:D69B: 00        .byte $00   ; 52
- D 2 - - - 0x0156AC 05:D69C: 00        .byte $00   ; 53
- D 2 - - - 0x0156AD 05:D69D: 00        .byte $00   ; 54
- - - - - - 0x0156AE 05:D69E: 00        .byte $00   ; 55
- - - - - - 0x0156AF 05:D69F: 00        .byte $00   ; 56
- - - - - - 0x0156B0 05:D6A0: 00        .byte $00   ; 57
- - - - - - 0x0156B1 05:D6A1: 00        .byte $00   ; 58
- - - - - - 0x0156B2 05:D6A2: 00        .byte $00   ; 59
- - - - - - 0x0156B3 05:D6A3: 00        .byte $00   ; 5A
- - - - - - 0x0156B4 05:D6A4: 00        .byte $00   ; 5B
- - - - - - 0x0156B5 05:D6A5: 00        .byte $00   ; 5C
- - - - - - 0x0156B6 05:D6A6: 00        .byte $00   ; 5D
- - - - - - 0x0156B7 05:D6A7: 00        .byte $00   ; 5E
- - - - - - 0x0156B8 05:D6A8: 00        .byte $00   ; 5F
- D 2 - - - 0x0156B9 05:D6A9: 00        .byte $00   ; 60



tbl_D6AA:
- D 2 - - - 0x0156BA 05:D6AA: AE        .byte $AE   ; 00
- - - - - - 0x0156BB 05:D6AB: 4E        .byte $4E   ; 01
- - - - - - 0x0156BC 05:D6AC: F3        .byte $F3   ; 02
- - - - - - 0x0156BD 05:D6AD: 9E        .byte $9E   ; 03
- D 2 - - - 0x0156BE 05:D6AE: 4D        .byte $4D   ; 04
- D 2 - - - 0x0156BF 05:D6AF: 01        .byte $01   ; 05
- D 2 - - - 0x0156C0 05:D6B0: B9        .byte $B9   ; 06
- D 2 - - - 0x0156C1 05:D6B1: 75        .byte $75   ; 07
- D 2 - - - 0x0156C2 05:D6B2: 35        .byte $35   ; 08
- D 2 - - - 0x0156C3 05:D6B3: F8        .byte $F8   ; 09
- D 2 - - - 0x0156C4 05:D6B4: BF        .byte $BF   ; 0A
- D 2 - - - 0x0156C5 05:D6B5: 89        .byte $89   ; 0B
- D 2 - - - 0x0156C6 05:D6B6: 57        .byte $57   ; 0C
- D 2 - - - 0x0156C7 05:D6B7: 27        .byte $27   ; 0D
- D 2 - - - 0x0156C8 05:D6B8: F9        .byte $F9   ; 0E
- D 2 - - - 0x0156C9 05:D6B9: CF        .byte $CF   ; 0F
- D 2 - - - 0x0156CA 05:D6BA: A6        .byte $A6   ; 10
- D 2 - - - 0x0156CB 05:D6BB: 80        .byte $80   ; 11
- D 2 - - - 0x0156CC 05:D6BC: 5C        .byte $5C   ; 12
- D 2 - - - 0x0156CD 05:D6BD: 3A        .byte $3A   ; 13
- D 2 - - - 0x0156CE 05:D6BE: 1A        .byte $1A   ; 14
- D 2 - - - 0x0156CF 05:D6BF: FC        .byte $FC   ; 15
- D 2 - - - 0x0156D0 05:D6C0: DF        .byte $DF   ; 16
- D 2 - - - 0x0156D1 05:D6C1: C4        .byte $C4   ; 17
- D 2 - - - 0x0156D2 05:D6C2: AB        .byte $AB   ; 18
- D 2 - - - 0x0156D3 05:D6C3: 93        .byte $93   ; 19
- D 2 - - - 0x0156D4 05:D6C4: 7C        .byte $7C   ; 1A
- D 2 - - - 0x0156D5 05:D6C5: 67        .byte $67   ; 1B
- D 2 - - - 0x0156D6 05:D6C6: 53        .byte $53   ; 1C
- D 2 - - - 0x0156D7 05:D6C7: 40        .byte $40   ; 1D
- D 2 - - - 0x0156D8 05:D6C8: 2E        .byte $2E   ; 1E
- D 2 - - - 0x0156D9 05:D6C9: 1D        .byte $1D   ; 1F
- D 2 - - - 0x0156DA 05:D6CA: 0D        .byte $0D   ; 20
- D 2 - - - 0x0156DB 05:D6CB: FE        .byte $FE   ; 21
- D 2 - - - 0x0156DC 05:D6CC: EF        .byte $EF   ; 22
- D 2 - - - 0x0156DD 05:D6CD: E2        .byte $E2   ; 23
- D 2 - - - 0x0156DE 05:D6CE: D5        .byte $D5   ; 24
- D 2 - - - 0x0156DF 05:D6CF: C9        .byte $C9   ; 25
- D 2 - - - 0x0156E0 05:D6D0: BE        .byte $BE   ; 26
- D 2 - - - 0x0156E1 05:D6D1: B3        .byte $B3   ; 27
- D 2 - - - 0x0156E2 05:D6D2: A9        .byte $A9   ; 28
- D 2 - - - 0x0156E3 05:D6D3: A0        .byte $A0   ; 29
- D 2 - - - 0x0156E4 05:D6D4: 97        .byte $97   ; 2A
- D 2 - - - 0x0156E5 05:D6D5: 8E        .byte $8E   ; 2B
- D 2 - - - 0x0156E6 05:D6D6: 86        .byte $86   ; 2C
- D 2 - - - 0x0156E7 05:D6D7: 7F        .byte $7F   ; 2D
- D 2 - - - 0x0156E8 05:D6D8: 77        .byte $77   ; 2E
- D 2 - - - 0x0156E9 05:D6D9: 71        .byte $71   ; 2F
- D 2 - - - 0x0156EA 05:D6DA: 6A        .byte $6A   ; 30
- D 2 - - - 0x0156EB 05:D6DB: 64        .byte $64   ; 31
- D 2 - - - 0x0156EC 05:D6DC: 5F        .byte $5F   ; 32
- D 2 - - - 0x0156ED 05:D6DD: 59        .byte $59   ; 33
- D 2 - - - 0x0156EE 05:D6DE: 54        .byte $54   ; 34
- D 2 - - - 0x0156EF 05:D6DF: 50        .byte $50   ; 35
- D 2 - - - 0x0156F0 05:D6E0: 4B        .byte $4B   ; 36
- D 2 - - - 0x0156F1 05:D6E1: 47        .byte $47   ; 37
- D 2 - - - 0x0156F2 05:D6E2: 43        .byte $43   ; 38
- D 2 - - - 0x0156F3 05:D6E3: 3F        .byte $3F   ; 39
- D 2 - - - 0x0156F4 05:D6E4: 3B        .byte $3B   ; 3A
- D 2 - - - 0x0156F5 05:D6E5: 38        .byte $38   ; 3B
- D 2 - - - 0x0156F6 05:D6E6: 35        .byte $35   ; 3C
- D 2 - - - 0x0156F7 05:D6E7: 32        .byte $32   ; 3D
- D 2 - - - 0x0156F8 05:D6E8: 2F        .byte $2F   ; 3E
- D 2 - - - 0x0156F9 05:D6E9: 2C        .byte $2C   ; 3F
- D 2 - - - 0x0156FA 05:D6EA: 2A        .byte $2A   ; 40
- D 2 - - - 0x0156FB 05:D6EB: 28        .byte $28   ; 41
- D 2 - - - 0x0156FC 05:D6EC: 25        .byte $25   ; 42
- D 2 - - - 0x0156FD 05:D6ED: 23        .byte $23   ; 43
- D 2 - - - 0x0156FE 05:D6EE: 21        .byte $21   ; 44
- D 2 - - - 0x0156FF 05:D6EF: 1F        .byte $1F   ; 45
- D 2 - - - 0x015700 05:D6F0: 1D        .byte $1D   ; 46
- D 2 - - - 0x015701 05:D6F1: 1C        .byte $1C   ; 47
- D 2 - - - 0x015702 05:D6F2: 1A        .byte $1A   ; 48
- D 2 - - - 0x015703 05:D6F3: 19        .byte $19   ; 49
- D 2 - - - 0x015704 05:D6F4: 17        .byte $17   ; 4A
- D 2 - - - 0x015705 05:D6F5: 16        .byte $16   ; 4B
- D 2 - - - 0x015706 05:D6F6: 15        .byte $15   ; 4C
- D 2 - - - 0x015707 05:D6F7: 14        .byte $14   ; 4D
- D 2 - - - 0x015708 05:D6F8: 12        .byte $12   ; 4E
- D 2 - - - 0x015709 05:D6F9: 11        .byte $11   ; 4F
- D 2 - - - 0x01570A 05:D6FA: 10        .byte $10   ; 50
- D 2 - - - 0x01570B 05:D6FB: 0F        .byte $0F   ; 51
- D 2 - - - 0x01570C 05:D6FC: 0E        .byte $0E   ; 52
- D 2 - - - 0x01570D 05:D6FD: 0E        .byte $0E   ; 53
- D 2 - - - 0x01570E 05:D6FE: 0D        .byte $0D   ; 54
- - - - - - 0x01570F 05:D6FF: 0C        .byte $0C   ; 55
- - - - - - 0x015710 05:D700: 0B        .byte $0B   ; 56
- - - - - - 0x015711 05:D701: 0B        .byte $0B   ; 57
- - - - - - 0x015712 05:D702: 0A        .byte $0A   ; 58
- - - - - - 0x015713 05:D703: 0A        .byte $0A   ; 59
- - - - - - 0x015714 05:D704: 09        .byte $09   ; 5A
- - - - - - 0x015715 05:D705: 08        .byte $08   ; 5B
- - - - - - 0x015716 05:D706: 08        .byte $08   ; 5C
- - - - - - 0x015717 05:D707: 07        .byte $07   ; 5D
- - - - - - 0x015718 05:D708: 07        .byte $07   ; 5E
- - - - - - 0x015719 05:D709: 07        .byte $07   ; 5F
- D 2 - - - 0x01571A 05:D70A: 00        .byte $00   ; 60



tbl_D70B_lo:
- D 2 - - - 0x01571B 05:D70B: 57        .byte < _off018_D757_00_story
- D 2 - - - 0x01571C 05:D70C: 32        .byte < _off018_DC32_01_gameplay
- D 2 - - - 0x01571D 05:D70D: FF        .byte < _off018_E7FF_02_game_over
- D 2 - - - 0x01571E 05:D70E: D2        .byte < _off018_E6D2_03_continue
- D 2 - - - 0x01571F 05:D70F: DA        .byte < _off018_E2DA_04
- D 2 - - - 0x015720 05:D710: CE        .byte < _off018_EACE_05_logo
- D 2 - - - 0x015721 05:D711: 1F        .byte < _off018_EB1F_06

tbl_D712_hi:
- D 2 - - - 0x015722 05:D712: D7        .byte > _off018_D757_00_story
- D 2 - - - 0x015723 05:D713: DC        .byte > _off018_DC32_01_gameplay
- D 2 - - - 0x015724 05:D714: E7        .byte > _off018_E7FF_02_game_over
- D 2 - - - 0x015725 05:D715: E6        .byte > _off018_E6D2_03_continue
- D 2 - - - 0x015726 05:D716: E2        .byte > _off018_E2DA_04
- D 2 - - - 0x015727 05:D717: EA        .byte > _off018_EACE_05_logo
- D 2 - - - 0x015728 05:D718: EB        .byte > _off018_EB1F_06

tbl_D719_lo:
- D 2 - - - 0x015729 05:D719: 94        .byte < _off019_D894_00_story
- D 2 - - - 0x01572A 05:D71A: 2D        .byte < _off019_DD2D_01_gameplay
- D 2 - - - 0x01572B 05:D71B: 3C        .byte < _off019_E83C_02_game_over
- D 2 - - - 0x01572C 05:D71C: 15        .byte < _off019_E715_03_continue
- D 2 - - - 0x01572D 05:D71D: 13        .byte < _off019_E413_04
- D 2 - - - 0x01572E 05:D71E: 9E        .byte < _off019_EF9E_05_logo
- D 2 - - - 0x01572F 05:D71F: E1        .byte < _off019_EFE1_06

tbl_D720_hi:
- D 2 - - - 0x015730 05:D720: D8        .byte > _off019_D894_00_story
- D 2 - - - 0x015731 05:D721: DD        .byte > _off019_DD2D_01_gameplay
- D 2 - - - 0x015732 05:D722: E8        .byte > _off019_E83C_02_game_over
- D 2 - - - 0x015733 05:D723: E7        .byte > _off019_E715_03_continue
- D 2 - - - 0x015734 05:D724: E4        .byte > _off019_E413_04
- D 2 - - - 0x015735 05:D725: EF        .byte > _off019_EF9E_05_logo
- D 2 - - - 0x015736 05:D726: EF        .byte > _off019_EFE1_06

tbl_D727_lo:
- D 2 - - - 0x015737 05:D727: 94        .byte < _off020_D994_00_story
- D 2 - - - 0x015738 05:D728: 6A        .byte < _off020_DE6A_01_gameplay
- D 2 - - - 0x015739 05:D729: AA        .byte < _off020_E8AA_02_game_over
- D 2 - - - 0x01573A 05:D72A: 73        .byte < _off020_E773_03_continue
- D 2 - - - 0x01573B 05:D72B: 94        .byte < _off020_E494_04
- D 2 - - - 0x01573C 05:D72C: E0        .byte < _off020_F3E0_05_logo
- D 2 - - - 0x01573D 05:D72D: E8        .byte < _off020_F3E8_06

tbl_D72E_hi:
- D 2 - - - 0x01573E 05:D72E: D9        .byte > _off020_D994_00_story
- D 2 - - - 0x01573F 05:D72F: DE        .byte > _off020_DE6A_01_gameplay
- D 2 - - - 0x015740 05:D730: E8        .byte > _off020_E8AA_02_game_over
- D 2 - - - 0x015741 05:D731: E7        .byte > _off020_E773_03_continue
- D 2 - - - 0x015742 05:D732: E4        .byte > _off020_E494_04
- D 2 - - - 0x015743 05:D733: F3        .byte > _off020_F3E0_05_logo
- D 2 - - - 0x015744 05:D734: F3        .byte > _off020_F3E8_06

tbl_D735_lo:
- D 2 - - - 0x015745 05:D735: 3A        .byte < _off021_DA3A_00_story
- D 2 - - - 0x015746 05:D736: D7        .byte < _off021_DED7_01_gameplay
- D 2 - - - 0x015747 05:D737: D9        .byte < _off021_E8D9_02_game_over
- D 2 - - - 0x015748 05:D738: A8        .byte < _off021_E7A8_03_continue
- D 2 - - - 0x015749 05:D739: 0D        .byte < _off021_E50D_04
- D 2 - - - 0x01574A 05:D73A: 81        .byte < _off021_F681_05_logo
- D 2 - - - 0x01574B 05:D73B: 8F        .byte < _off021_F68F_06

tbl_D73C_hi:
- D 2 - - - 0x01574C 05:D73C: DA        .byte > _off021_DA3A_00_story
- D 2 - - - 0x01574D 05:D73D: DE        .byte > _off021_DED7_01_gameplay
- D 2 - - - 0x01574E 05:D73E: E8        .byte > _off021_E8D9_02_game_over
- D 2 - - - 0x01574F 05:D73F: E7        .byte > _off021_E7A8_03_continue
- D 2 - - - 0x015750 05:D740: E5        .byte > _off021_E50D_04
- D 2 - - - 0x015751 05:D741: F6        .byte > _off021_F681_05_logo
- D 2 - - - 0x015752 05:D742: F6        .byte > _off021_F68F_06



tbl_D743_lo:
- D 2 - - - 0x015753 05:D743: 0D        .byte < _off017_E90D_00
- - - - - - 0x015754 05:D744: 11        .byte < _off017_E911_01
- D 2 - - - 0x015755 05:D745: 15        .byte < _off017_E915_02_drink_potion
- D 2 - - - 0x015756 05:D746: 1C        .byte < _off017_E91C_03_pickup_item
- D 2 - - - 0x015757 05:D747: 20        .byte < _off017_E920_04_drop_item
- D 2 - - - 0x015758 05:D748: 24        .byte < _off017_E924_05_death
- - - - - - 0x015759 05:D749: 2F        .byte < _off017_E92F_06
- D 2 - - - 0x01575A 05:D74A: 2B        .byte < _off017_E92B_07_paper
- D 2 - - - 0x01575B 05:D74B: 05        .byte < _off017_E905_08_pickup_bonus_item
- D 2 - - - 0x01575C 05:D74C: 09        .byte < _off017_E909_09

tbl_D74D_hi:
- D 2 - - - 0x01575D 05:D74D: E9        .byte > _off017_E90D_00
- - - - - - 0x01575E 05:D74E: E9        .byte > _off017_E911_01
- D 2 - - - 0x01575F 05:D74F: E9        .byte > _off017_E915_02_drink_potion
- D 2 - - - 0x015760 05:D750: E9        .byte > _off017_E91C_03_pickup_item
- D 2 - - - 0x015761 05:D751: E9        .byte > _off017_E920_04_drop_item
- D 2 - - - 0x015762 05:D752: E9        .byte > _off017_E924_05_death
- - - - - - 0x015763 05:D753: E9        .byte > _off017_E92F_06
- D 2 - - - 0x015764 05:D754: E9        .byte > _off017_E92B_07_paper
- D 2 - - - 0x015765 05:D755: E9        .byte > _off017_E905_08_pickup_bonus_item
- D 2 - - - 0x015766 05:D756: E9        .byte > _off017_E909_09



con_84_jsr                              = $84 ; 
con_85_rts                              = $85 ; 
con_88_jmp                              = $88 ; 
con_92_loop                             = $92 ; 



_off018_D757_00_story:
- D 2 - I - 0x015767 05:D757: 8B        .byte $8B   ; 
- D 2 - I - 0x015768 05:D758: 01        .byte $01   ; 
- D 2 - I - 0x015769 05:D759: 89        .byte $89   ; 
- D 2 - I - 0x01576A 05:D75A: 15        .byte $15   ; 
- D 2 - I - 0x01576B 05:D75B: 0F        .byte $0F   ; 
- D 2 - I - 0x01576C 05:D75C: 01        .byte $01   ; 
- D 2 - I - 0x01576D 05:D75D: 00        .byte $00   ; 
- D 2 - I - 0x01576E 05:D75E: 05        .byte $05   ; 
- D 2 - I - 0x01576F 05:D75F: 00        .byte $00   ; 
- D 2 - I - 0x015770 05:D760: 08        .byte $08   ; 
- D 2 - I - 0x015771 05:D761: FF        .byte $FF   ; 
- D 2 - I - 0x015772 05:D762: FF        .byte $FF   ; 
- D 2 - I - 0x015773 05:D763: 8E        .byte $8E   ; 
- D 2 - I - 0x015774 05:D764: F0        .byte $F0   ; 
- D 2 - I - 0x015775 05:D765: 8B        .byte $8B   ; 
- D 2 - I - 0x015776 05:D766: 01        .byte $01   ; 
- D 2 - I - 0x015777 05:D767: 60        .byte $60   ; 
- D 2 - I - 0x015778 05:D768: 01        .byte $01   ; 
- D 2 - I - 0x015779 05:D769: 86        .byte $86   ; 
- D 2 - I - 0x01577A 05:D76A: FF        .byte $FF   ; 
- D 2 - I - 0x01577B 05:D76B: 8A        .byte $8A   ; 
- D 2 - I - 0x01577C 05:D76C: 50        .byte $50   ; 
- D 2 - I - 0x01577D 05:D76D: 00        .byte $00   ; 
- D 2 - I - 0x01577E 05:D76E: 02        .byte $02   ; 
- D 2 - I - 0x01577F 05:D76F: 8C        .byte $8C   ; 
- D 2 - I - 0x015780 05:D770: 01        .byte $01   ; 
- D 2 - I - 0x015781 05:D771: 08        .byte $08   ; 
- D 2 - I - 0x015782 05:D772: 08        .byte $08   ; 
- D 2 - I - 0x015783 05:D773: 13        .byte $13   ; 
- D 2 - I - 0x015784 05:D774: 80        .byte $80   ; 
- D 2 - I - 0x015785 05:D775: 1F        .byte $1F   ; 
- D 2 - I - 0x015786 05:D776: 80        .byte $80   ; 
- D 2 - I - 0x015787 05:D777: 8C        .byte $8C   ; 
- D 2 - I - 0x015788 05:D778: 18        .byte $18   ; 
- D 2 - I - 0x015789 05:D779: 01        .byte $01   ; 
- D 2 - I - 0x01578A 05:D77A: FF        .byte $FF   ; 
- D 2 - I - 0x01578B 05:D77B: 94        .byte $94   ; 
- D 2 - I - 0x01578C 05:D77C: 01        .byte $01   ; 
- D 2 - I - 0x01578D 05:D77D: 93        .byte $93   ; 
- D 2 - I - 0x01578E 05:D77E: 28        .byte $28   ; 
- D 2 - I - 0x01578F 05:D77F: 92        .byte con_92_loop, $01
- D 2 - I - 0x015791 05:D781: 78 DB     .word off_92_DB78
- D 2 - I - 0x015793 05:D783: 8B        .byte $8B   ; 
- D 2 - I - 0x015794 05:D784: FF        .byte $FF   ; 
- D 2 - I - 0x015795 05:D785: 8E        .byte $8E   ; 
- D 2 - I - 0x015796 05:D786: B0        .byte $B0   ; 
- D 2 - I - 0x015797 05:D787: 80        .byte $80   ; 
- D 2 - I - 0x015798 05:D788: 02        .byte $02   ; 
- D 2 - I - 0x015799 05:D789: 1F        .byte $1F   ; 
- D 2 - I - 0x01579A 05:D78A: 10        .byte $10   ; 
- D 2 - I - 0x01579B 05:D78B: 1B        .byte $1B   ; 
- D 2 - I - 0x01579C 05:D78C: 08        .byte $08   ; 
- D 2 - I - 0x01579D 05:D78D: 1A        .byte $1A   ; 
- D 2 - I - 0x01579E 05:D78E: 08        .byte $08   ; 
- D 2 - I - 0x01579F 05:D78F: 18        .byte $18   ; 
- D 2 - I - 0x0157A0 05:D790: 10        .byte $10   ; 
- D 2 - I - 0x0157A1 05:D791: 1F        .byte $1F   ; 
- D 2 - I - 0x0157A2 05:D792: 10        .byte $10   ; 
- D 2 - I - 0x0157A3 05:D793: 20        .byte $20   ; 
- D 2 - I - 0x0157A4 05:D794: 20        .byte $20   ; 
- D 2 - I - 0x0157A5 05:D795: 20        .byte $20   ; 
- D 2 - I - 0x0157A6 05:D796: 08        .byte $08   ; 
- D 2 - I - 0x0157A7 05:D797: 1F        .byte $1F   ; 
- D 2 - I - 0x0157A8 05:D798: 08        .byte $08   ; 
- D 2 - I - 0x0157A9 05:D799: 1D        .byte $1D   ; 
- D 2 - I - 0x0157AA 05:D79A: 10        .byte $10   ; 
- D 2 - I - 0x0157AB 05:D79B: 1F        .byte $1F   ; 
- D 2 - I - 0x0157AC 05:D79C: 10        .byte $10   ; 
- D 2 - I - 0x0157AD 05:D79D: 1B        .byte $1B   ; 
- D 2 - I - 0x0157AE 05:D79E: 08        .byte $08   ; 
- D 2 - I - 0x0157AF 05:D79F: 1A        .byte $1A   ; 
- D 2 - I - 0x0157B0 05:D7A0: 08        .byte $08   ; 
- D 2 - I - 0x0157B1 05:D7A1: 18        .byte $18   ; 
- D 2 - I - 0x0157B2 05:D7A2: 10        .byte $10   ; 
- D 2 - I - 0x0157B3 05:D7A3: 1B        .byte $1B   ; 
- D 2 - I - 0x0157B4 05:D7A4: 10        .byte $10   ; 
- D 2 - I - 0x0157B5 05:D7A5: 1D        .byte $1D   ; 
- D 2 - I - 0x0157B6 05:D7A6: 10        .byte $10   ; 
- D 2 - I - 0x0157B7 05:D7A7: 1F        .byte $1F   ; 
- D 2 - I - 0x0157B8 05:D7A8: 10        .byte $10   ; 
- D 2 - I - 0x0157B9 05:D7A9: 20        .byte $20   ; 
- D 2 - I - 0x0157BA 05:D7AA: 10        .byte $10   ; 
- D 2 - I - 0x0157BB 05:D7AB: 22        .byte $22   ; 
- D 2 - I - 0x0157BC 05:D7AC: 10        .byte $10   ; 
- D 2 - I - 0x0157BD 05:D7AD: 8C        .byte $8C   ; 
- D 2 - I - 0x0157BE 05:D7AE: 00        .byte $00   ; 
- D 2 - I - 0x0157BF 05:D7AF: 00        .byte $00   ; 
- D 2 - I - 0x0157C0 05:D7B0: 00        .byte $00   ; 
- D 2 - I - 0x0157C1 05:D7B1: 8E        .byte $8E   ; 
- D 2 - I - 0x0157C2 05:D7B2: 30        .byte $30   ; 
- D 2 - I - 0x0157C3 05:D7B3: 92        .byte con_92_loop, $01
- D 2 - I - 0x0157C5 05:D7B5: 6E DB     .word off_92_DB6E
- D 2 - I - 0x0157C7 05:D7B7: 8F        .byte $8F   ; 
- D 2 - I - 0x0157C8 05:D7B8: 0C        .byte $0C   ; 
- D 2 - I - 0x0157C9 05:D7B9: 01        .byte $01   ; 
- D 2 - I - 0x0157CA 05:D7BA: 02        .byte $02   ; 
- D 2 - I - 0x0157CB 05:D7BB: 00        .byte $00   ; 
- D 2 - I - 0x0157CC 05:D7BC: 81        .byte $81   ; 
- D 2 - I - 0x0157CD 05:D7BD: 8B        .byte $8B   ; 
- D 2 - I - 0x0157CE 05:D7BE: 01        .byte $01   ; 
- D 2 - I - 0x0157CF 05:D7BF: 82        .byte $82   ; 
- D 2 - I - 0x0157D0 05:D7C0: 02        .byte $02   ; 
- D 2 - I - 0x0157D1 05:D7C1: 8A        .byte $8A   ; 
- D 2 - I - 0x0157D2 05:D7C2: 51        .byte $51   ; 
- D 2 - I - 0x0157D3 05:D7C3: 04        .byte $04   ; 
- D 2 - I - 0x0157D4 05:D7C4: 01        .byte $01   ; 
- D 2 - I - 0x0157D5 05:D7C5: 8E        .byte $8E   ; 
- D 2 - I - 0x0157D6 05:D7C6: 30        .byte $30   ; 
- D 2 - I - 0x0157D7 05:D7C7: 8F        .byte $8F   ; 
- D 2 - I - 0x0157D8 05:D7C8: 00        .byte $00   ; 
- D 2 - I - 0x0157D9 05:D7C9: 00        .byte $00   ; 
- D 2 - I - 0x0157DA 05:D7CA: 00        .byte $00   ; 
- D 2 - I - 0x0157DB 05:D7CB: 00        .byte $00   ; 
- D 2 - I - 0x0157DC 05:D7CC: 84        .byte con_84_jsr
- D 2 - I - 0x0157DD 05:D7CD: DA DB     .word sub_84_DBDA
- D 2 - I - 0x0157DF 05:D7CF: 84        .byte con_84_jsr
- D 2 - I - 0x0157E0 05:D7D0: F4 DB     .word sub_84_DBF4
- D 2 - I - 0x0157E2 05:D7D2: 84        .byte con_84_jsr
- D 2 - I - 0x0157E3 05:D7D3: F4 DB     .word sub_84_DBF4
- D 2 - I - 0x0157E5 05:D7D5: 84        .byte con_84_jsr
- D 2 - I - 0x0157E6 05:D7D6: DA DB     .word sub_84_DBDA
- D 2 - I - 0x0157E8 05:D7D8: 86        .byte $86   ; 
- D 2 - I - 0x0157E9 05:D7D9: 01        .byte $01   ; 
- D 2 - I - 0x0157EA 05:D7DA: 84        .byte con_84_jsr
- D 2 - I - 0x0157EB 05:D7DB: DA DB     .word sub_84_DBDA
- D 2 - I - 0x0157ED 05:D7DD: 86        .byte $86   ; 
- D 2 - I - 0x0157EE 05:D7DE: 02        .byte $02   ; 
- D 2 - I - 0x0157EF 05:D7DF: 84        .byte con_84_jsr
- D 2 - I - 0x0157F0 05:D7E0: 06 DC     .word sub_84_DC06
- D 2 - I - 0x0157F2 05:D7E2: 86        .byte $86   ; 
- D 2 - I - 0x0157F3 05:D7E3: 01        .byte $01   ; 
- D 2 - I - 0x0157F4 05:D7E4: 84        .byte con_84_jsr
- D 2 - I - 0x0157F5 05:D7E5: DA DB     .word sub_84_DBDA
- D 2 - I - 0x0157F7 05:D7E7: 86        .byte $86   ; 
- D 2 - I - 0x0157F8 05:D7E8: FF        .byte $FF   ; 
- D 2 - I - 0x0157F9 05:D7E9: 84        .byte con_84_jsr
- D 2 - I - 0x0157FA 05:D7EA: DA DB     .word sub_84_DBDA
- D 2 - I - 0x0157FC 05:D7EC: 86        .byte $86   ; 
- D 2 - I - 0x0157FD 05:D7ED: 01        .byte $01   ; 
- D 2 - I - 0x0157FE 05:D7EE: 84        .byte con_84_jsr
- D 2 - I - 0x0157FF 05:D7EF: DA DB     .word sub_84_DBDA
- D 2 - I - 0x015801 05:D7F1: 86        .byte $86   ; 
- D 2 - I - 0x015802 05:D7F2: 02        .byte $02   ; 
- D 2 - I - 0x015803 05:D7F3: 84        .byte con_84_jsr
- D 2 - I - 0x015804 05:D7F4: DA DB     .word sub_84_DBDA
- D 2 - I - 0x015806 05:D7F6: 84        .byte con_84_jsr
- D 2 - I - 0x015807 05:D7F7: F4 DB     .word sub_84_DBF4
- D 2 - I - 0x015809 05:D7F9: 84        .byte con_84_jsr
- D 2 - I - 0x01580A 05:D7FA: F4 DB     .word sub_84_DBF4
- D 2 - I - 0x01580C 05:D7FC: 84        .byte con_84_jsr
- D 2 - I - 0x01580D 05:D7FD: DA DB     .word sub_84_DBDA
- D 2 - I - 0x01580F 05:D7FF: 86        .byte $86   ; 
- D 2 - I - 0x015810 05:D800: 04        .byte $04   ; 
- D 2 - I - 0x015811 05:D801: 84        .byte con_84_jsr
- D 2 - I - 0x015812 05:D802: DA DB     .word sub_84_DBDA
- D 2 - I - 0x015814 05:D804: 86        .byte $86   ; 
- D 2 - I - 0x015815 05:D805: 05        .byte $05   ; 
- D 2 - I - 0x015816 05:D806: 84        .byte con_84_jsr
- D 2 - I - 0x015817 05:D807: 06 DC     .word sub_84_DC06
- D 2 - I - 0x015819 05:D809: 86        .byte $86   ; 
- D 2 - I - 0x01581A 05:D80A: 04        .byte $04   ; 
- D 2 - I - 0x01581B 05:D80B: 84        .byte con_84_jsr
- D 2 - I - 0x01581C 05:D80C: DA DB     .word sub_84_DBDA
- D 2 - I - 0x01581E 05:D80E: 86        .byte $86   ; 
- D 2 - I - 0x01581F 05:D80F: 02        .byte $02   ; 
- D 2 - I - 0x015820 05:D810: 84        .byte con_84_jsr
- D 2 - I - 0x015821 05:D811: DA DB     .word sub_84_DBDA
- D 2 - I - 0x015823 05:D813: 86        .byte $86   ; 
- D 2 - I - 0x015824 05:D814: 04        .byte $04   ; 
- D 2 - I - 0x015825 05:D815: 84        .byte con_84_jsr
- D 2 - I - 0x015826 05:D816: DA DB     .word sub_84_DBDA
- D 2 - I - 0x015828 05:D818: 86        .byte $86   ; 
- D 2 - I - 0x015829 05:D819: 05        .byte $05   ; 
- D 2 - I - 0x01582A 05:D81A: 84        .byte con_84_jsr
- D 2 - I - 0x01582B 05:D81B: 06 DC     .word sub_84_DC06
- D 2 - I - 0x01582D 05:D81D: 84        .byte con_84_jsr
- D 2 - I - 0x01582E 05:D81E: 20 DC     .word sub_84_DC20
- D 2 - I - 0x015830 05:D820: 84        .byte con_84_jsr
- D 2 - I - 0x015831 05:D821: 20 DC     .word sub_84_DC20
- D 2 - I - 0x015833 05:D823: 84        .byte con_84_jsr
- D 2 - I - 0x015834 05:D824: 06 DC     .word sub_84_DC06
- D 2 - I - 0x015836 05:D826: 86        .byte $86   ; 
- D 2 - I - 0x015837 05:D827: 07        .byte $07   ; 
- D 2 - I - 0x015838 05:D828: 84        .byte con_84_jsr
- D 2 - I - 0x015839 05:D829: 06 DC     .word sub_84_DC06
- D 2 - I - 0x01583B 05:D82B: 86        .byte $86   ; 
- D 2 - I - 0x01583C 05:D82C: 09        .byte $09   ; 
- D 2 - I - 0x01583D 05:D82D: 84        .byte con_84_jsr
- D 2 - I - 0x01583E 05:D82E: DA DB     .word sub_84_DBDA
- D 2 - I - 0x015840 05:D830: 86        .byte $86   ; 
- D 2 - I - 0x015841 05:D831: 07        .byte $07   ; 
- D 2 - I - 0x015842 05:D832: 84        .byte con_84_jsr
- D 2 - I - 0x015843 05:D833: 06 DC     .word sub_84_DC06
- D 2 - I - 0x015845 05:D835: 86        .byte $86   ; 
- D 2 - I - 0x015846 05:D836: 05        .byte $05   ; 
- D 2 - I - 0x015847 05:D837: 84        .byte con_84_jsr
- D 2 - I - 0x015848 05:D838: 06 DC     .word sub_84_DC06
- D 2 - I - 0x01584A 05:D83A: 86        .byte $86   ; 
- D 2 - I - 0x01584B 05:D83B: 07        .byte $07   ; 
- D 2 - I - 0x01584C 05:D83C: 84        .byte con_84_jsr
- D 2 - I - 0x01584D 05:D83D: 06 DC     .word sub_84_DC06
- D 2 - I - 0x01584F 05:D83F: 86        .byte $86   ; 
- D 2 - I - 0x015850 05:D840: FF        .byte $FF   ; 
- D 2 - I - 0x015851 05:D841: 82        .byte $82   ; 
- D 2 - I - 0x015852 05:D842: 00        .byte $00   ; 
- D 2 - I - 0x015853 05:D843: 8A        .byte $8A   ; 
- D 2 - I - 0x015854 05:D844: 53        .byte $53   ; 
- D 2 - I - 0x015855 05:D845: 08        .byte $08   ; 
- D 2 - I - 0x015856 05:D846: 01        .byte $01   ; 
- D 2 - I - 0x015857 05:D847: 8C        .byte $8C   ; 
- D 2 - I - 0x015858 05:D848: F8        .byte $F8   ; 
- D 2 - I - 0x015859 05:D849: 02        .byte $02   ; 
- D 2 - I - 0x01585A 05:D84A: 03        .byte $03   ; 
- D 2 - I - 0x01585B 05:D84B: 2F        .byte $2F   ; 
- D 2 - I - 0x01585C 05:D84C: 12        .byte $12   ; 
- D 2 - I - 0x01585D 05:D84D: 8C        .byte $8C   ; 
- D 2 - I - 0x01585E 05:D84E: F7        .byte $F7   ; 
- D 2 - I - 0x01585F 05:D84F: 02        .byte $02   ; 
- D 2 - I - 0x015860 05:D850: 03        .byte $03   ; 
- D 2 - I - 0x015861 05:D851: 2C        .byte $2C   ; 
- D 2 - I - 0x015862 05:D852: 12        .byte $12   ; 
- D 2 - I - 0x015863 05:D853: 8C        .byte $8C   ; 
- D 2 - I - 0x015864 05:D854: F9        .byte $F9   ; 
- D 2 - I - 0x015865 05:D855: 02        .byte $02   ; 
- D 2 - I - 0x015866 05:D856: 03        .byte $03   ; 
- D 2 - I - 0x015867 05:D857: 27        .byte $27   ; 
- D 2 - I - 0x015868 05:D858: 13        .byte $13   ; 
- D 2 - I - 0x015869 05:D859: 8C        .byte $8C   ; 
- D 2 - I - 0x01586A 05:D85A: F8        .byte $F8   ; 
- D 2 - I - 0x01586B 05:D85B: 02        .byte $02   ; 
- D 2 - I - 0x01586C 05:D85C: 03        .byte $03   ; 
- D 2 - I - 0x01586D 05:D85D: 23        .byte $23   ; 
- D 2 - I - 0x01586E 05:D85E: 13        .byte $13   ; 
- D 2 - I - 0x01586F 05:D85F: 8C        .byte $8C   ; 
- D 2 - I - 0x015870 05:D860: F9        .byte $F9   ; 
- D 2 - I - 0x015871 05:D861: 03        .byte $03   ; 
- D 2 - I - 0x015872 05:D862: 03        .byte $03   ; 
- D 2 - I - 0x015873 05:D863: 27        .byte $27   ; 
- D 2 - I - 0x015874 05:D864: 14        .byte $14   ; 
- D 2 - I - 0x015875 05:D865: 8C        .byte $8C   ; 
- D 2 - I - 0x015876 05:D866: F8        .byte $F8   ; 
- D 2 - I - 0x015877 05:D867: 03        .byte $03   ; 
- D 2 - I - 0x015878 05:D868: 03        .byte $03   ; 
- D 2 - I - 0x015879 05:D869: 23        .byte $23   ; 
- D 2 - I - 0x01587A 05:D86A: 14        .byte $14   ; 
- D 2 - I - 0x01587B 05:D86B: 8C        .byte $8C   ; 
- D 2 - I - 0x01587C 05:D86C: F7        .byte $F7   ; 
- D 2 - I - 0x01587D 05:D86D: 03        .byte $03   ; 
- D 2 - I - 0x01587E 05:D86E: 04        .byte $04   ; 
- D 2 - I - 0x01587F 05:D86F: 20        .byte $20   ; 
- D 2 - I - 0x015880 05:D870: 16        .byte $16   ; 
- D 2 - I - 0x015881 05:D871: 8C        .byte $8C   ; 
- D 2 - I - 0x015882 05:D872: F9        .byte $F9   ; 
- D 2 - I - 0x015883 05:D873: 03        .byte $03   ; 
- D 2 - I - 0x015884 05:D874: 04        .byte $04   ; 
- D 2 - I - 0x015885 05:D875: 1B        .byte $1B   ; 
- D 2 - I - 0x015886 05:D876: 16        .byte $16   ; 
- D 2 - I - 0x015887 05:D877: 8C        .byte $8C   ; 
- D 2 - I - 0x015888 05:D878: F8        .byte $F8   ; 
- D 2 - I - 0x015889 05:D879: 03        .byte $03   ; 
- D 2 - I - 0x01588A 05:D87A: 03        .byte $03   ; 
- D 2 - I - 0x01588B 05:D87B: 1E        .byte $1E   ; 
- D 2 - I - 0x01588C 05:D87C: 60        .byte $60   ; 
- D 2 - I - 0x01588D 05:D87D: 8A        .byte $8A   ; 
- D 2 - I - 0x01588E 05:D87E: 20        .byte $20   ; 
- D 2 - I - 0x01588F 05:D87F: B0        .byte $B0   ; 
- D 2 - I - 0x015890 05:D880: 00        .byte $00   ; 
- D 2 - I - 0x015891 05:D881: 1E        .byte $1E   ; 
- D 2 - I - 0x015892 05:D882: 20        .byte $20   ; 
- D 2 - I - 0x015893 05:D883: 8A        .byte $8A   ; 
- D 2 - I - 0x015894 05:D884: 60        .byte $60   ; 
- D 2 - I - 0x015895 05:D885: 01        .byte $01   ; 
- D 2 - I - 0x015896 05:D886: 01        .byte $01   ; 
- D 2 - I - 0x015897 05:D887: 0F        .byte $0F   ; 
- D 2 - I - 0x015898 05:D888: 30        .byte $30   ; 
- - - - - - 0x015899 05:D889: 8B        .byte $8B   ; 
- - - - - - 0x01589A 05:D88A: 01        .byte $01   ; 
- - - - - - 0x01589B 05:D88B: 8A        .byte $8A   ; 
- - - - - - 0x01589C 05:D88C: 00        .byte $00   ; 
- - - - - - 0x01589D 05:D88D: 00        .byte $00   ; 
- - - - - - 0x01589E 05:D88E: 02        .byte $02   ; 
- - - - - - 0x01589F 05:D88F: 82        .byte $82   ; 
- - - - - - 0x0158A0 05:D890: 00        .byte $00   ; 
- - - - - - 0x0158A1 05:D891: 32        .byte $32   ; 
- - - - - - 0x0158A2 05:D892: 01        .byte $01   ; 
- - - - - - 0x0158A3 05:D893: 83        .byte $83   ; 



_off019_D894_00_story:
- D 2 - I - 0x0158A4 05:D894: 8E        .byte $8E   ; 
- D 2 - I - 0x0158A5 05:D895: F0        .byte $F0   ; 
- D 2 - I - 0x0158A6 05:D896: 8B        .byte $8B   ; 
- D 2 - I - 0x0158A7 05:D897: 01        .byte $01   ; 
- D 2 - I - 0x0158A8 05:D898: 8A        .byte $8A   ; 
- D 2 - I - 0x0158A9 05:D899: 40        .byte $40   ; 
- D 2 - I - 0x0158AA 05:D89A: 00        .byte $00   ; 
- D 2 - I - 0x0158AB 05:D89B: 02        .byte $02   ; 
- D 2 - I - 0x0158AC 05:D89C: 60        .byte $60   ; 
- D 2 - I - 0x0158AD 05:D89D: 41        .byte $41   ; 
- D 2 - I - 0x0158AE 05:D89E: 86        .byte $86   ; 
- D 2 - I - 0x0158AF 05:D89F: FF        .byte $FF   ; 
- D 2 - I - 0x0158B0 05:D8A0: 8C        .byte $8C   ; 
- D 2 - I - 0x0158B1 05:D8A1: 01        .byte $01   ; 
- D 2 - I - 0x0158B2 05:D8A2: 08        .byte $08   ; 
- D 2 - I - 0x0158B3 05:D8A3: 08        .byte $08   ; 
- D 2 - I - 0x0158B4 05:D8A4: 18        .byte $18   ; 
- D 2 - I - 0x0158B5 05:D8A5: 80        .byte $80   ; 
- D 2 - I - 0x0158B6 05:D8A6: 26        .byte $26   ; 
- D 2 - I - 0x0158B7 05:D8A7: 40        .byte $40   ; 
- D 2 - I - 0x0158B8 05:D8A8: 8C        .byte $8C   ; 
- D 2 - I - 0x0158B9 05:D8A9: 00        .byte $00   ; 
- D 2 - I - 0x0158BA 05:D8AA: 00        .byte $00   ; 
- D 2 - I - 0x0158BB 05:D8AB: 00        .byte $00   ; 
- D 2 - I - 0x0158BC 05:D8AC: 8A        .byte $8A   ; 
- D 2 - I - 0x0158BD 05:D8AD: 41        .byte $41   ; 
- D 2 - I - 0x0158BE 05:D8AE: 0D        .byte $0D   ; 
- D 2 - I - 0x0158BF 05:D8AF: 01        .byte $01   ; 
- D 2 - I - 0x0158C0 05:D8B0: 82        .byte $82   ; 
- D 2 - I - 0x0158C1 05:D8B1: 02        .byte $02   ; 
- D 2 - I - 0x0158C2 05:D8B2: 80        .byte $80   ; 
- D 2 - I - 0x0158C3 05:D8B3: 02        .byte $02   ; 
- D 2 - I - 0x0158C4 05:D8B4: 84        .byte con_84_jsr
- D 2 - I - 0x0158C5 05:D8B5: A8 DB     .word sub_84_DBA8
- D 2 - I - 0x0158C7 05:D8B7: 84        .byte con_84_jsr
- D 2 - I - 0x0158C8 05:D8B8: A8 DB     .word sub_84_DBA8
- D 2 - I - 0x0158CA 05:D8BA: 86        .byte $86   ; 
- D 2 - I - 0x0158CB 05:D8BB: 00        .byte $00   ; 
- D 2 - I - 0x0158CC 05:D8BC: 84        .byte con_84_jsr
- D 2 - I - 0x0158CD 05:D8BD: BF DB     .word sub_84_DBBF
- D 2 - I - 0x0158CF 05:D8BF: 84        .byte con_84_jsr
- D 2 - I - 0x0158D0 05:D8C0: C9 DB     .word sub_84_DBC9
- D 2 - I - 0x0158D2 05:D8C2: 84        .byte con_84_jsr
- D 2 - I - 0x0158D3 05:D8C3: C9 DB     .word sub_84_DBC9
- D 2 - I - 0x0158D5 05:D8C5: 86        .byte $86   ; 
- D 2 - I - 0x0158D6 05:D8C6: FF        .byte $FF   ; 
- D 2 - I - 0x0158D7 05:D8C7: 84        .byte con_84_jsr
- D 2 - I - 0x0158D8 05:D8C8: A8 DB     .word sub_84_DBA8
- D 2 - I - 0x0158DA 05:D8CA: 84        .byte con_84_jsr
- D 2 - I - 0x0158DB 05:D8CB: A8 DB     .word sub_84_DBA8
- D 2 - I - 0x0158DD 05:D8CD: 86        .byte $86   ; 
- D 2 - I - 0x0158DE 05:D8CE: FD        .byte $FD   ; 
- D 2 - I - 0x0158DF 05:D8CF: 84        .byte con_84_jsr
- D 2 - I - 0x0158E0 05:D8D0: B2 DB     .word sub_84_DBB2
- D 2 - I - 0x0158E2 05:D8D2: 86        .byte $86   ; 
- D 2 - I - 0x0158E3 05:D8D3: FF        .byte $FF   ; 
- D 2 - I - 0x0158E4 05:D8D4: 84        .byte con_84_jsr
- D 2 - I - 0x0158E5 05:D8D5: B2 DB     .word sub_84_DBB2
- D 2 - I - 0x0158E7 05:D8D7: 86        .byte $86   ; 
- D 2 - I - 0x0158E8 05:D8D8: 00        .byte $00   ; 
- D 2 - I - 0x0158E9 05:D8D9: 84        .byte con_84_jsr
- D 2 - I - 0x0158EA 05:D8DA: C9 DB     .word sub_84_DBC9
- D 2 - I - 0x0158EC 05:D8DC: 86        .byte $86   ; 
- D 2 - I - 0x0158ED 05:D8DD: FD        .byte $FD   ; 
- D 2 - I - 0x0158EE 05:D8DE: 84        .byte con_84_jsr
- D 2 - I - 0x0158EF 05:D8DF: B2 DB     .word sub_84_DBB2
- D 2 - I - 0x0158F1 05:D8E1: 86        .byte $86   ; 
- D 2 - I - 0x0158F2 05:D8E2: FF        .byte $FF   ; 
- D 2 - I - 0x0158F3 05:D8E3: 8A        .byte $8A   ; 
- D 2 - I - 0x0158F4 05:D8E4: 42        .byte $42   ; 
- D 2 - I - 0x0158F5 05:D8E5: 0B        .byte $0B   ; 
- D 2 - I - 0x0158F6 05:D8E6: 01        .byte $01   ; 
- D 2 - I - 0x0158F7 05:D8E7: 8E        .byte $8E   ; 
- D 2 - I - 0x0158F8 05:D8E8: 30        .byte $30   ; 
- D 2 - I - 0x0158F9 05:D8E9: 81        .byte $81   ; 
- D 2 - I - 0x0158FA 05:D8EA: 82        .byte $82   ; 
- D 2 - I - 0x0158FB 05:D8EB: 02        .byte $02   ; 
- D 2 - I - 0x0158FC 05:D8EC: 8A        .byte $8A   ; 
- D 2 - I - 0x0158FD 05:D8ED: 52        .byte $52   ; 
- D 2 - I - 0x0158FE 05:D8EE: 04        .byte $04   ; 
- D 2 - I - 0x0158FF 05:D8EF: 01        .byte $01   ; 
- D 2 - I - 0x015900 05:D8F0: 84        .byte con_84_jsr
- D 2 - I - 0x015901 05:D8F1: E7 DB     .word sub_84_DBE7
- D 2 - I - 0x015903 05:D8F3: 84        .byte con_84_jsr
- D 2 - I - 0x015904 05:D8F4: FD DB     .word sub_84_DBFD
- D 2 - I - 0x015906 05:D8F6: 84        .byte con_84_jsr
- D 2 - I - 0x015907 05:D8F7: FD DB     .word sub_84_DBFD
- D 2 - I - 0x015909 05:D8F9: 84        .byte con_84_jsr
- D 2 - I - 0x01590A 05:D8FA: E7 DB     .word sub_84_DBE7
- D 2 - I - 0x01590C 05:D8FC: 86        .byte $86   ; 
- D 2 - I - 0x01590D 05:D8FD: 01        .byte $01   ; 
- D 2 - I - 0x01590E 05:D8FE: 84        .byte con_84_jsr
- D 2 - I - 0x01590F 05:D8FF: E7 DB     .word sub_84_DBE7
- D 2 - I - 0x015911 05:D901: 86        .byte $86   ; 
- D 2 - I - 0x015912 05:D902: 02        .byte $02   ; 
- D 2 - I - 0x015913 05:D903: 84        .byte con_84_jsr
- D 2 - I - 0x015914 05:D904: 13 DC     .word sub_84_DC13
- D 2 - I - 0x015916 05:D906: 86        .byte $86   ; 
- D 2 - I - 0x015917 05:D907: 01        .byte $01   ; 
- D 2 - I - 0x015918 05:D908: 84        .byte con_84_jsr
- D 2 - I - 0x015919 05:D909: E7 DB     .word sub_84_DBE7
- D 2 - I - 0x01591B 05:D90B: 86        .byte $86   ; 
- D 2 - I - 0x01591C 05:D90C: FF        .byte $FF   ; 
- D 2 - I - 0x01591D 05:D90D: 84        .byte con_84_jsr
- D 2 - I - 0x01591E 05:D90E: E7 DB     .word sub_84_DBE7
- D 2 - I - 0x015920 05:D910: 86        .byte $86   ; 
- D 2 - I - 0x015921 05:D911: 01        .byte $01   ; 
- D 2 - I - 0x015922 05:D912: 84        .byte con_84_jsr
- D 2 - I - 0x015923 05:D913: E7 DB     .word sub_84_DBE7
- D 2 - I - 0x015925 05:D915: 86        .byte $86   ; 
- D 2 - I - 0x015926 05:D916: 02        .byte $02   ; 
- D 2 - I - 0x015927 05:D917: 84        .byte con_84_jsr
- D 2 - I - 0x015928 05:D918: E7 DB     .word sub_84_DBE7
- D 2 - I - 0x01592A 05:D91A: 84        .byte con_84_jsr
- D 2 - I - 0x01592B 05:D91B: FD DB     .word sub_84_DBFD
- D 2 - I - 0x01592D 05:D91D: 84        .byte con_84_jsr
- D 2 - I - 0x01592E 05:D91E: FD DB     .word sub_84_DBFD
- D 2 - I - 0x015930 05:D920: 84        .byte con_84_jsr
- D 2 - I - 0x015931 05:D921: E7 DB     .word sub_84_DBE7
- D 2 - I - 0x015933 05:D923: 86        .byte $86   ; 
- D 2 - I - 0x015934 05:D924: 04        .byte $04   ; 
- D 2 - I - 0x015935 05:D925: 84        .byte con_84_jsr
- D 2 - I - 0x015936 05:D926: E7 DB     .word sub_84_DBE7
- D 2 - I - 0x015938 05:D928: 86        .byte $86   ; 
- D 2 - I - 0x015939 05:D929: 05        .byte $05   ; 
- D 2 - I - 0x01593A 05:D92A: 84        .byte con_84_jsr
- D 2 - I - 0x01593B 05:D92B: 13 DC     .word sub_84_DC13
- D 2 - I - 0x01593D 05:D92D: 86        .byte $86   ; 
- D 2 - I - 0x01593E 05:D92E: 04        .byte $04   ; 
- D 2 - I - 0x01593F 05:D92F: 84        .byte con_84_jsr
- D 2 - I - 0x015940 05:D930: E7 DB     .word sub_84_DBE7
- D 2 - I - 0x015942 05:D932: 86        .byte $86   ; 
- D 2 - I - 0x015943 05:D933: 02        .byte $02   ; 
- D 2 - I - 0x015944 05:D934: 84        .byte con_84_jsr
- D 2 - I - 0x015945 05:D935: E7 DB     .word sub_84_DBE7
- D 2 - I - 0x015947 05:D937: 86        .byte $86   ; 
- D 2 - I - 0x015948 05:D938: 04        .byte $04   ; 
- D 2 - I - 0x015949 05:D939: 84        .byte con_84_jsr
- D 2 - I - 0x01594A 05:D93A: E7 DB     .word sub_84_DBE7
- D 2 - I - 0x01594C 05:D93C: 86        .byte $86   ; 
- D 2 - I - 0x01594D 05:D93D: 05        .byte $05   ; 
- D 2 - I - 0x01594E 05:D93E: 84        .byte con_84_jsr
- D 2 - I - 0x01594F 05:D93F: 13 DC     .word sub_84_DC13
- D 2 - I - 0x015951 05:D941: 84        .byte con_84_jsr
- D 2 - I - 0x015952 05:D942: 29 DC     .word sub_84_DC29
- D 2 - I - 0x015954 05:D944: 84        .byte con_84_jsr
- D 2 - I - 0x015955 05:D945: 29 DC     .word sub_84_DC29
- D 2 - I - 0x015957 05:D947: 84        .byte con_84_jsr
- D 2 - I - 0x015958 05:D948: 13 DC     .word sub_84_DC13
- D 2 - I - 0x01595A 05:D94A: 86        .byte $86   ; 
- D 2 - I - 0x01595B 05:D94B: 07        .byte $07   ; 
- D 2 - I - 0x01595C 05:D94C: 84        .byte con_84_jsr
- D 2 - I - 0x01595D 05:D94D: 13 DC     .word sub_84_DC13
- D 2 - I - 0x01595F 05:D94F: 86        .byte $86   ; 
- D 2 - I - 0x015960 05:D950: 09        .byte $09   ; 
- D 2 - I - 0x015961 05:D951: 84        .byte con_84_jsr
- D 2 - I - 0x015962 05:D952: E7 DB     .word sub_84_DBE7
- D 2 - I - 0x015964 05:D954: 86        .byte $86   ; 
- D 2 - I - 0x015965 05:D955: 07        .byte $07   ; 
- D 2 - I - 0x015966 05:D956: 84        .byte con_84_jsr
- D 2 - I - 0x015967 05:D957: 13 DC     .word sub_84_DC13
- D 2 - I - 0x015969 05:D959: 86        .byte $86   ; 
- D 2 - I - 0x01596A 05:D95A: 05        .byte $05   ; 
- D 2 - I - 0x01596B 05:D95B: 84        .byte con_84_jsr
- D 2 - I - 0x01596C 05:D95C: 13 DC     .word sub_84_DC13
- D 2 - I - 0x01596E 05:D95E: 86        .byte $86   ; 
- D 2 - I - 0x01596F 05:D95F: 07        .byte $07   ; 
- D 2 - I - 0x015970 05:D960: 84        .byte con_84_jsr
- D 2 - I - 0x015971 05:D961: 13 DC     .word sub_84_DC13
- D 2 - I - 0x015973 05:D963: 86        .byte $86   ; 
- D 2 - I - 0x015974 05:D964: F3        .byte $F3   ; 
- D 2 - I - 0x015975 05:D965: 8A        .byte $8A   ; 
- D 2 - I - 0x015976 05:D966: 30        .byte $30   ; 
- D 2 - I - 0x015977 05:D967: 00        .byte $00   ; 
- D 2 - I - 0x015978 05:D968: 02        .byte $02   ; 
- D 2 - I - 0x015979 05:D969: 80        .byte $80   ; 
- D 2 - I - 0x01597A 05:D96A: 09        .byte $09   ; 
- D 2 - I - 0x01597B 05:D96B: 2F        .byte $2F   ; 
- D 2 - I - 0x01597C 05:D96C: 2C        .byte $2C   ; 
- D 2 - I - 0x01597D 05:D96D: 27        .byte $27   ; 
- D 2 - I - 0x01597E 05:D96E: 23        .byte $23   ; 
- D 2 - I - 0x01597F 05:D96F: 81        .byte $81   ; 
- D 2 - I - 0x015980 05:D970: 2F        .byte $2F   ; 
- D 2 - I - 0x015981 05:D971: 80        .byte $80   ; 
- D 2 - I - 0x015982 05:D972: 0A        .byte $0A   ; 
- D 2 - I - 0x015983 05:D973: 2C        .byte $2C   ; 
- D 2 - I - 0x015984 05:D974: 29        .byte $29   ; 
- D 2 - I - 0x015985 05:D975: 27        .byte $27   ; 
- D 2 - I - 0x015986 05:D976: 23        .byte $23   ; 
- D 2 - I - 0x015987 05:D977: 81        .byte $81   ; 
- D 2 - I - 0x015988 05:D978: 2C        .byte $2C   ; 
- D 2 - I - 0x015989 05:D979: 29        .byte $29   ; 
- D 2 - I - 0x01598A 05:D97A: 80        .byte $80   ; 
- D 2 - I - 0x01598B 05:D97B: 10        .byte $10   ; 
- D 2 - I - 0x01598C 05:D97C: 2E        .byte $2E   ; 
- D 2 - I - 0x01598D 05:D97D: 2A        .byte $2A   ; 
- D 2 - I - 0x01598E 05:D97E: 27        .byte $27   ; 
- D 2 - I - 0x01598F 05:D97F: 22        .byte $22   ; 
- D 2 - I - 0x015990 05:D980: 81        .byte $81   ; 
- D 2 - I - 0x015991 05:D981: 8A        .byte $8A   ; 
- D 2 - I - 0x015992 05:D982: 60        .byte $60   ; 
- D 2 - I - 0x015993 05:D983: 01        .byte $01   ; 
- D 2 - I - 0x015994 05:D984: 01        .byte $01   ; 
- D 2 - I - 0x015995 05:D985: 82        .byte $82   ; 
- D 2 - I - 0x015996 05:D986: 00        .byte $00   ; 
- D 2 - I - 0x015997 05:D987: 33        .byte $33   ; 
- D 2 - I - 0x015998 05:D988: 30        .byte $30   ; 
- - - - - - 0x015999 05:D989: 8B        .byte $8B   ; 
- - - - - - 0x01599A 05:D98A: 01        .byte $01   ; 
- - - - - - 0x01599B 05:D98B: 8A        .byte $8A   ; 
- - - - - - 0x01599C 05:D98C: 00        .byte $00   ; 
- - - - - - 0x01599D 05:D98D: 00        .byte $00   ; 
- - - - - - 0x01599E 05:D98E: 02        .byte $02   ; 
- - - - - - 0x01599F 05:D98F: 82        .byte $82   ; 
- - - - - - 0x0159A0 05:D990: 00        .byte $00   ; 
- - - - - - 0x0159A1 05:D991: 32        .byte $32   ; 
- - - - - - 0x0159A2 05:D992: 01        .byte $01   ; 
- - - - - - 0x0159A3 05:D993: 83        .byte $83   ; 



_off020_D994_00_story:
- D 2 - I - 0x0159A4 05:D994: 60        .byte $60   ; 
- D 2 - I - 0x0159A5 05:D995: 01        .byte $01   ; 
- D 2 - I - 0x0159A6 05:D996: 86        .byte $86   ; 
- D 2 - I - 0x0159A7 05:D997: FF        .byte $FF   ; 
- D 2 - I - 0x0159A8 05:D998: 80        .byte $80   ; 
- D 2 - I - 0x0159A9 05:D999: 02        .byte $02   ; 
- D 2 - I - 0x0159AA 05:D99A: 84        .byte con_84_jsr
- D 2 - I - 0x0159AB 05:D99B: 9B DB     .word sub_84_DB9B
- D 2 - I - 0x0159AD 05:D99D: 07        .byte $07   ; 
- D 2 - I - 0x0159AE 05:D99E: 1C        .byte $1C   ; 
- D 2 - I - 0x0159AF 05:D99F: 84        .byte con_84_jsr
- D 2 - I - 0x0159B0 05:D9A0: 9B DB     .word sub_84_DB9B
- D 2 - I - 0x0159B2 05:D9A2: 07        .byte $07   ; 
- D 2 - I - 0x0159B3 05:D9A3: 0C        .byte $0C   ; 
- D 2 - I - 0x0159B4 05:D9A4: 84        .byte con_84_jsr
- D 2 - I - 0x0159B5 05:D9A5: 9B DB     .word sub_84_DB9B
- D 2 - I - 0x0159B7 05:D9A7: 08        .byte $08   ; 
- D 2 - I - 0x0159B8 05:D9A8: 0C        .byte $0C   ; 
- D 2 - I - 0x0159B9 05:D9A9: 81        .byte $81   ; 
- D 2 - I - 0x0159BA 05:D9AA: 80        .byte $80   ; 
- D 2 - I - 0x0159BB 05:D9AB: 02        .byte $02   ; 
- D 2 - I - 0x0159BC 05:D9AC: 84        .byte con_84_jsr
- D 2 - I - 0x0159BD 05:D9AD: 9B DB     .word sub_84_DB9B
- D 2 - I - 0x0159BF 05:D9AF: 13        .byte $13   ; 
- D 2 - I - 0x0159C0 05:D9B0: 1C        .byte $1C   ; 
- D 2 - I - 0x0159C1 05:D9B1: 84        .byte con_84_jsr
- D 2 - I - 0x0159C2 05:D9B2: 9B DB     .word sub_84_DB9B
- D 2 - I - 0x0159C4 05:D9B4: 13        .byte $13   ; 
- D 2 - I - 0x0159C5 05:D9B5: 0C        .byte $0C   ; 
- D 2 - I - 0x0159C6 05:D9B6: 84        .byte con_84_jsr
- D 2 - I - 0x0159C7 05:D9B7: 9B DB     .word sub_84_DB9B
- D 2 - I - 0x0159C9 05:D9B9: 14        .byte $14   ; 
- D 2 - I - 0x0159CA 05:D9BA: 0C        .byte $0C   ; 
- D 2 - I - 0x0159CB 05:D9BB: 81        .byte $81   ; 
- D 2 - I - 0x0159CC 05:D9BC: 80        .byte $80   ; 
- D 2 - I - 0x0159CD 05:D9BD: 02        .byte $02   ; 
- D 2 - I - 0x0159CE 05:D9BE: 84        .byte con_84_jsr
- D 2 - I - 0x0159CF 05:D9BF: 9B DB     .word sub_84_DB9B
- D 2 - I - 0x0159D1 05:D9C1: 0C        .byte $0C   ; 
- D 2 - I - 0x0159D2 05:D9C2: 0C        .byte $0C   ; 
- D 2 - I - 0x0159D3 05:D9C3: 07        .byte $07   ; 
- D 2 - I - 0x0159D4 05:D9C4: 08        .byte $08   ; 
- D 2 - I - 0x0159D5 05:D9C5: 0A        .byte $0A   ; 
- D 2 - I - 0x0159D6 05:D9C6: 08        .byte $08   ; 
- D 2 - I - 0x0159D7 05:D9C7: 0C        .byte $0C   ; 
- D 2 - I - 0x0159D8 05:D9C8: 10        .byte $10   ; 
- D 2 - I - 0x0159D9 05:D9C9: 84        .byte con_84_jsr
- D 2 - I - 0x0159DA 05:D9CA: 9B DB     .word sub_84_DB9B
- D 2 - I - 0x0159DC 05:D9CC: 0C        .byte $0C   ; 
- D 2 - I - 0x0159DD 05:D9CD: 0C        .byte $0C   ; 
- D 2 - I - 0x0159DE 05:D9CE: 84        .byte con_84_jsr
- D 2 - I - 0x0159DF 05:D9CF: 9B DB     .word sub_84_DB9B
- D 2 - I - 0x0159E1 05:D9D1: 0C        .byte $0C   ; 
- D 2 - I - 0x0159E2 05:D9D2: 0C        .byte $0C   ; 
- D 2 - I - 0x0159E3 05:D9D3: 0A        .byte $0A   ; 
- D 2 - I - 0x0159E4 05:D9D4: 08        .byte $08   ; 
- D 2 - I - 0x0159E5 05:D9D5: 0C        .byte $0C   ; 
- D 2 - I - 0x0159E6 05:D9D6: 08        .byte $08   ; 
- D 2 - I - 0x0159E7 05:D9D7: 0D        .byte $0D   ; 
- D 2 - I - 0x0159E8 05:D9D8: 10        .byte $10   ; 
- D 2 - I - 0x0159E9 05:D9D9: 84        .byte con_84_jsr
- D 2 - I - 0x0159EA 05:D9DA: 9B DB     .word sub_84_DB9B
- D 2 - I - 0x0159EC 05:D9DC: 0A        .byte $0A   ; 
- D 2 - I - 0x0159ED 05:D9DD: 0C        .byte $0C   ; 
- D 2 - I - 0x0159EE 05:D9DE: 84        .byte con_84_jsr
- D 2 - I - 0x0159EF 05:D9DF: 9B DB     .word sub_84_DB9B
- D 2 - I - 0x0159F1 05:D9E1: 0C        .byte $0C   ; 
- D 2 - I - 0x0159F2 05:D9E2: 0C        .byte $0C   ; 
- D 2 - I - 0x0159F3 05:D9E3: 07        .byte $07   ; 
- D 2 - I - 0x0159F4 05:D9E4: 08        .byte $08   ; 
- D 2 - I - 0x0159F5 05:D9E5: 0A        .byte $0A   ; 
- D 2 - I - 0x0159F6 05:D9E6: 08        .byte $08   ; 
- D 2 - I - 0x0159F7 05:D9E7: 0C        .byte $0C   ; 
- D 2 - I - 0x0159F8 05:D9E8: 10        .byte $10   ; 
- D 2 - I - 0x0159F9 05:D9E9: 84        .byte con_84_jsr
- D 2 - I - 0x0159FA 05:D9EA: 9B DB     .word sub_84_DB9B
- D 2 - I - 0x0159FC 05:D9EC: 07        .byte $07   ; 
- D 2 - I - 0x0159FD 05:D9ED: 0C        .byte $0C   ; 
- D 2 - I - 0x0159FE 05:D9EE: 84        .byte con_84_jsr
- D 2 - I - 0x0159FF 05:D9EF: 9B DB     .word sub_84_DB9B
- D 2 - I - 0x015A01 05:D9F1: 0A        .byte $0A   ; 
- D 2 - I - 0x015A02 05:D9F2: 0C        .byte $0C   ; 
- D 2 - I - 0x015A03 05:D9F3: 0A        .byte $0A   ; 
- D 2 - I - 0x015A04 05:D9F4: 10        .byte $10   ; 
- D 2 - I - 0x015A05 05:D9F5: 0D        .byte $0D   ; 
- D 2 - I - 0x015A06 05:D9F6: 08        .byte $08   ; 
- D 2 - I - 0x015A07 05:D9F7: 0C        .byte $0C   ; 
- D 2 - I - 0x015A08 05:D9F8: 08        .byte $08   ; 
- D 2 - I - 0x015A09 05:D9F9: 84        .byte con_84_jsr
- D 2 - I - 0x015A0A 05:D9FA: 9B DB     .word sub_84_DB9B
- D 2 - I - 0x015A0C 05:D9FC: 0A        .byte $0A   ; 
- D 2 - I - 0x015A0D 05:D9FD: 0C        .byte $0C   ; 
- D 2 - I - 0x015A0E 05:D9FE: 81        .byte $81   ; 
- D 2 - I - 0x015A0F 05:D9FF: 84        .byte con_84_jsr
- D 2 - I - 0x015A10 05:DA00: 40 DB     .word sub_84_DB40
- D 2 - I - 0x015A12 05:DA02: 86        .byte $86   ; 
- D 2 - I - 0x015A13 05:DA03: 02        .byte $02   ; 
- D 2 - I - 0x015A14 05:DA04: 84        .byte con_84_jsr
- D 2 - I - 0x015A15 05:DA05: 40 DB     .word sub_84_DB40
- D 2 - I - 0x015A17 05:DA07: 86        .byte $86   ; 
- D 2 - I - 0x015A18 05:DA08: 05        .byte $05   ; 
- D 2 - I - 0x015A19 05:DA09: 84        .byte con_84_jsr
- D 2 - I - 0x015A1A 05:DA0A: 40 DB     .word sub_84_DB40
- D 2 - I - 0x015A1C 05:DA0C: 86        .byte $86   ; 
- D 2 - I - 0x015A1D 05:DA0D: FF        .byte $FF   ; 
- D 2 - I - 0x015A1E 05:DA0E: 84        .byte con_84_jsr
- D 2 - I - 0x015A1F 05:DA0F: 8C DB     .word sub_84_DB8C
- D 2 - I - 0x015A21 05:DA11: 14        .byte $14   ; 
- D 2 - I - 0x015A22 05:DA12: 43        .byte $43   ; 
- D 2 - I - 0x015A23 05:DA13: 84        .byte con_84_jsr
- D 2 - I - 0x015A24 05:DA14: 8C DB     .word sub_84_DB8C
- D 2 - I - 0x015A26 05:DA16: 11        .byte $11   ; 
- D 2 - I - 0x015A27 05:DA17: 4D        .byte $4D   ; 
- D 2 - I - 0x015A28 05:DA18: 84        .byte con_84_jsr
- D 2 - I - 0x015A29 05:DA19: 8C DB     .word sub_84_DB8C
- D 2 - I - 0x015A2B 05:DA1B: 0F        .byte $0F   ; 
- D 2 - I - 0x015A2C 05:DA1C: 35        .byte $35   ; 
- D 2 - I - 0x015A2D 05:DA1D: 84        .byte con_84_jsr
- D 2 - I - 0x015A2E 05:DA1E: 9B DB     .word sub_84_DB9B
- D 2 - I - 0x015A30 05:DA20: 0F        .byte $0F   ; 
- D 2 - I - 0x015A31 05:DA21: 06        .byte $06   ; 
- D 2 - I - 0x015A32 05:DA22: 84        .byte con_84_jsr
- D 2 - I - 0x015A33 05:DA23: 9B DB     .word sub_84_DB9B
- D 2 - I - 0x015A35 05:DA25: 0F        .byte $0F   ; 
- D 2 - I - 0x015A36 05:DA26: 06        .byte $06   ; 
- D 2 - I - 0x015A37 05:DA27: 84        .byte con_84_jsr
- D 2 - I - 0x015A38 05:DA28: 9B DB     .word sub_84_DB9B
- D 2 - I - 0x015A3A 05:DA2A: 0F        .byte $0F   ; 
- D 2 - I - 0x015A3B 05:DA2B: 14        .byte $14   ; 
- D 2 - I - 0x015A3C 05:DA2C: 84        .byte con_84_jsr
- D 2 - I - 0x015A3D 05:DA2D: 9B DB     .word sub_84_DB9B
- D 2 - I - 0x015A3F 05:DA2F: 0F        .byte $0F   ; 
- D 2 - I - 0x015A40 05:DA30: 14        .byte $14   ; 
- D 2 - I - 0x015A41 05:DA31: 84        .byte con_84_jsr
- D 2 - I - 0x015A42 05:DA32: 8C DB     .word sub_84_DB8C
- D 2 - I - 0x015A44 05:DA34: 0F        .byte $0F   ; 
- D 2 - I - 0x015A45 05:DA35: 09        .byte $09   ; 
- D 2 - I - 0x015A46 05:DA36: 90        .byte $90   ; 
- D 2 - I - 0x015A47 05:DA37: 60        .byte $60   ; 
- D 2 - I - 0x015A48 05:DA38: 01        .byte $01   ; 
- D 2 - I - 0x015A49 05:DA39: 83        .byte $83   ; 



_off021_DA3A_00_story:
- D 2 - I - 0x015A4A 05:DA3A: 87        .byte $87   ; 
- D 2 - I - 0x015A4B 05:DA3B: 8B        .byte $8B   ; 
- D 2 - I - 0x015A4C 05:DA3C: 01        .byte $01   ; 
- D 2 - I - 0x015A4D 05:DA3D: 8A        .byte $8A   ; 
- D 2 - I - 0x015A4E 05:DA3E: 30        .byte $30   ; 
- D 2 - I - 0x015A4F 05:DA3F: 08        .byte $08   ; 
- D 2 - I - 0x015A50 05:DA40: 01        .byte $01   ; 
- D 2 - I - 0x015A51 05:DA41: 80        .byte $80   ; 
- D 2 - I - 0x015A52 05:DA42: 03        .byte $03   ; 
- D 2 - I - 0x015A53 05:DA43: 05        .byte $05   ; 
- D 2 - I - 0x015A54 05:DA44: 01        .byte $01   ; 
- D 2 - I - 0x015A55 05:DA45: 08        .byte $08   ; 
- D 2 - I - 0x015A56 05:DA46: 1F        .byte $1F   ; 
- D 2 - I - 0x015A57 05:DA47: 05        .byte $05   ; 
- D 2 - I - 0x015A58 05:DA48: 01        .byte $01   ; 
- D 2 - I - 0x015A59 05:DA49: 01        .byte $01   ; 
- D 2 - I - 0x015A5A 05:DA4A: 0F        .byte $0F   ; 
- D 2 - I - 0x015A5B 05:DA4B: 05        .byte $05   ; 
- D 2 - I - 0x015A5C 05:DA4C: 01        .byte $01   ; 
- D 2 - I - 0x015A5D 05:DA4D: 01        .byte $01   ; 
- D 2 - I - 0x015A5E 05:DA4E: 0F        .byte $0F   ; 
- D 2 - I - 0x015A5F 05:DA4F: 81        .byte $81   ; 
- D 2 - I - 0x015A60 05:DA50: 05        .byte $05   ; 
- D 2 - I - 0x015A61 05:DA51: 01        .byte $01   ; 
- D 2 - I - 0x015A62 05:DA52: 08        .byte $08   ; 
- D 2 - I - 0x015A63 05:DA53: 1F        .byte $1F   ; 
- D 2 - I - 0x015A64 05:DA54: 05        .byte $05   ; 
- D 2 - I - 0x015A65 05:DA55: 01        .byte $01   ; 
- D 2 - I - 0x015A66 05:DA56: 01        .byte $01   ; 
- D 2 - I - 0x015A67 05:DA57: 0F        .byte $0F   ; 
- D 2 - I - 0x015A68 05:DA58: 05        .byte $05   ; 
- D 2 - I - 0x015A69 05:DA59: 01        .byte $01   ; 
- D 2 - I - 0x015A6A 05:DA5A: 8A        .byte $8A   ; 
- D 2 - I - 0x015A6B 05:DA5B: 10        .byte $10   ; 
- D 2 - I - 0x015A6C 05:DA5C: 05        .byte $05   ; 
- D 2 - I - 0x015A6D 05:DA5D: 00        .byte $00   ; 
- D 2 - I - 0x015A6E 05:DA5E: 01        .byte $01   ; 
- D 2 - I - 0x015A6F 05:DA5F: 0F        .byte $0F   ; 
- D 2 - I - 0x015A70 05:DA60: 8A        .byte $8A   ; 
- D 2 - I - 0x015A71 05:DA61: 30        .byte $30   ; 
- D 2 - I - 0x015A72 05:DA62: 04        .byte $04   ; 
- D 2 - I - 0x015A73 05:DA63: 01        .byte $01   ; 
- D 2 - I - 0x015A74 05:DA64: 80        .byte $80   ; 
- D 2 - I - 0x015A75 05:DA65: 08        .byte $08   ; 
- D 2 - I - 0x015A76 05:DA66: 08        .byte $08   ; 
- D 2 - I - 0x015A77 05:DA67: 01        .byte $01   ; 
- D 2 - I - 0x015A78 05:DA68: 04        .byte $04   ; 
- D 2 - I - 0x015A79 05:DA69: 1F        .byte $1F   ; 
- D 2 - I - 0x015A7A 05:DA6A: 03        .byte $03   ; 
- D 2 - I - 0x015A7B 05:DA6B: 10        .byte $10   ; 
- D 2 - I - 0x015A7C 05:DA6C: 06        .byte $06   ; 
- D 2 - I - 0x015A7D 05:DA6D: 01        .byte $01   ; 
- D 2 - I - 0x015A7E 05:DA6E: 04        .byte $04   ; 
- D 2 - I - 0x015A7F 05:DA6F: 0F        .byte $0F   ; 
- D 2 - I - 0x015A80 05:DA70: 81        .byte $81   ; 
- D 2 - I - 0x015A81 05:DA71: 84        .byte con_84_jsr
- D 2 - I - 0x015A82 05:DA72: 1D DB     .word sub_84_DB1D
- D 2 - I - 0x015A84 05:DA74: 02        .byte $02   ; 
- D 2 - I - 0x015A85 05:DA75: 0F        .byte $0F   ; 
- D 2 - I - 0x015A86 05:DA76: 84        .byte con_84_jsr
- D 2 - I - 0x015A87 05:DA77: 1D DB     .word sub_84_DB1D
- D 2 - I - 0x015A89 05:DA79: 02        .byte $02   ; 
- D 2 - I - 0x015A8A 05:DA7A: 0F        .byte $0F   ; 
- D 2 - I - 0x015A8B 05:DA7B: 84        .byte con_84_jsr
- D 2 - I - 0x015A8C 05:DA7C: 1D DB     .word sub_84_DB1D
- D 2 - I - 0x015A8E 05:DA7E: 02        .byte $02   ; 
- D 2 - I - 0x015A8F 05:DA7F: 0B        .byte $0B   ; 
- D 2 - I - 0x015A90 05:DA80: 8A        .byte $8A   ; 
- D 2 - I - 0x015A91 05:DA81: 10        .byte $10   ; 
- D 2 - I - 0x015A92 05:DA82: 00        .byte $00   ; 
- D 2 - I - 0x015A93 05:DA83: 00        .byte $00   ; 
- D 2 - I - 0x015A94 05:DA84: 0B        .byte $0B   ; 
- D 2 - I - 0x015A95 05:DA85: 01        .byte $01   ; 
- D 2 - I - 0x015A96 05:DA86: 8B        .byte $8B   ; 
- D 2 - I - 0x015A97 05:DA87: 00        .byte $00   ; 
- D 2 - I - 0x015A98 05:DA88: 09        .byte $09   ; 
- D 2 - I - 0x015A99 05:DA89: 01        .byte $01   ; 
- D 2 - I - 0x015A9A 05:DA8A: 08        .byte $08   ; 
- D 2 - I - 0x015A9B 05:DA8B: 01        .byte $01   ; 
- D 2 - I - 0x015A9C 05:DA8C: 06        .byte $06   ; 
- D 2 - I - 0x015A9D 05:DA8D: 01        .byte $01   ; 
- D 2 - I - 0x015A9E 05:DA8E: 8B        .byte $8B   ; 
- D 2 - I - 0x015A9F 05:DA8F: 01        .byte $01   ; 
- D 2 - I - 0x015AA0 05:DA90: 8A        .byte $8A   ; 
- D 2 - I - 0x015AA1 05:DA91: 90        .byte $90   ; 
- D 2 - I - 0x015AA2 05:DA92: 00        .byte $00   ; 
- D 2 - I - 0x015AA3 05:DA93: 02        .byte $02   ; 
- D 2 - I - 0x015AA4 05:DA94: 0A        .byte $0A   ; 
- D 2 - I - 0x015AA5 05:DA95: 01        .byte $01   ; 
- D 2 - I - 0x015AA6 05:DA96: 8A        .byte $8A   ; 
- D 2 - I - 0x015AA7 05:DA97: 40        .byte $40   ; 
- D 2 - I - 0x015AA8 05:DA98: 0A        .byte $0A   ; 
- D 2 - I - 0x015AA9 05:DA99: 01        .byte $01   ; 
- D 2 - I - 0x015AAA 05:DA9A: 06        .byte $06   ; 
- D 2 - I - 0x015AAB 05:DA9B: 03        .byte $03   ; 
- D 2 - I - 0x015AAC 05:DA9C: 05        .byte $05   ; 
- D 2 - I - 0x015AAD 05:DA9D: 04        .byte $04   ; 
- D 2 - I - 0x015AAE 05:DA9E: 04        .byte $04   ; 
- D 2 - I - 0x015AAF 05:DA9F: 05        .byte $05   ; 
- D 2 - I - 0x015AB0 05:DAA0: 03        .byte $03   ; 
- D 2 - I - 0x015AB1 05:DAA1: 39        .byte $39   ; 
- D 2 - I - 0x015AB2 05:DAA2: 8A        .byte $8A   ; 
- D 2 - I - 0x015AB3 05:DAA3: 10        .byte $10   ; 
- D 2 - I - 0x015AB4 05:DAA4: 00        .byte $00   ; 
- D 2 - I - 0x015AB5 05:DAA5: 00        .byte $00   ; 
- D 2 - I - 0x015AB6 05:DAA6: 0B        .byte $0B   ; 
- D 2 - I - 0x015AB7 05:DAA7: 01        .byte $01   ; 
- D 2 - I - 0x015AB8 05:DAA8: 8B        .byte $8B   ; 
- D 2 - I - 0x015AB9 05:DAA9: 00        .byte $00   ; 
- D 2 - I - 0x015ABA 05:DAAA: 09        .byte $09   ; 
- D 2 - I - 0x015ABB 05:DAAB: 01        .byte $01   ; 
- D 2 - I - 0x015ABC 05:DAAC: 08        .byte $08   ; 
- D 2 - I - 0x015ABD 05:DAAD: 01        .byte $01   ; 
- D 2 - I - 0x015ABE 05:DAAE: 06        .byte $06   ; 
- D 2 - I - 0x015ABF 05:DAAF: 01        .byte $01   ; 
- D 2 - I - 0x015AC0 05:DAB0: 8B        .byte $8B   ; 
- D 2 - I - 0x015AC1 05:DAB1: 01        .byte $01   ; 
- D 2 - I - 0x015AC2 05:DAB2: 8A        .byte $8A   ; 
- D 2 - I - 0x015AC3 05:DAB3: 90        .byte $90   ; 
- D 2 - I - 0x015AC4 05:DAB4: 00        .byte $00   ; 
- D 2 - I - 0x015AC5 05:DAB5: 02        .byte $02   ; 
- D 2 - I - 0x015AC6 05:DAB6: 0A        .byte $0A   ; 
- D 2 - I - 0x015AC7 05:DAB7: 01        .byte $01   ; 
- D 2 - I - 0x015AC8 05:DAB8: 8A        .byte $8A   ; 
- D 2 - I - 0x015AC9 05:DAB9: 40        .byte $40   ; 
- D 2 - I - 0x015ACA 05:DABA: 0A        .byte $0A   ; 
- D 2 - I - 0x015ACB 05:DABB: 01        .byte $01   ; 
- D 2 - I - 0x015ACC 05:DABC: 06        .byte $06   ; 
- D 2 - I - 0x015ACD 05:DABD: 03        .byte $03   ; 
- D 2 - I - 0x015ACE 05:DABE: 05        .byte $05   ; 
- D 2 - I - 0x015ACF 05:DABF: 04        .byte $04   ; 
- D 2 - I - 0x015AD0 05:DAC0: 04        .byte $04   ; 
- D 2 - I - 0x015AD1 05:DAC1: 05        .byte $05   ; 
- D 2 - I - 0x015AD2 05:DAC2: 03        .byte $03   ; 
- D 2 - I - 0x015AD3 05:DAC3: 43        .byte $43   ; 
- D 2 - I - 0x015AD4 05:DAC4: 8A        .byte $8A   ; 
- D 2 - I - 0x015AD5 05:DAC5: 10        .byte $10   ; 
- D 2 - I - 0x015AD6 05:DAC6: 00        .byte $00   ; 
- D 2 - I - 0x015AD7 05:DAC7: 00        .byte $00   ; 
- D 2 - I - 0x015AD8 05:DAC8: 0B        .byte $0B   ; 
- D 2 - I - 0x015AD9 05:DAC9: 01        .byte $01   ; 
- D 2 - I - 0x015ADA 05:DACA: 8B        .byte $8B   ; 
- D 2 - I - 0x015ADB 05:DACB: 00        .byte $00   ; 
- D 2 - I - 0x015ADC 05:DACC: 09        .byte $09   ; 
- D 2 - I - 0x015ADD 05:DACD: 01        .byte $01   ; 
- D 2 - I - 0x015ADE 05:DACE: 08        .byte $08   ; 
- D 2 - I - 0x015ADF 05:DACF: 01        .byte $01   ; 
- D 2 - I - 0x015AE0 05:DAD0: 06        .byte $06   ; 
- D 2 - I - 0x015AE1 05:DAD1: 01        .byte $01   ; 
- D 2 - I - 0x015AE2 05:DAD2: 8B        .byte $8B   ; 
- D 2 - I - 0x015AE3 05:DAD3: 01        .byte $01   ; 
- D 2 - I - 0x015AE4 05:DAD4: 8A        .byte $8A   ; 
- D 2 - I - 0x015AE5 05:DAD5: 90        .byte $90   ; 
- D 2 - I - 0x015AE6 05:DAD6: 00        .byte $00   ; 
- D 2 - I - 0x015AE7 05:DAD7: 02        .byte $02   ; 
- D 2 - I - 0x015AE8 05:DAD8: 0A        .byte $0A   ; 
- D 2 - I - 0x015AE9 05:DAD9: 01        .byte $01   ; 
- D 2 - I - 0x015AEA 05:DADA: 8A        .byte $8A   ; 
- D 2 - I - 0x015AEB 05:DADB: 40        .byte $40   ; 
- D 2 - I - 0x015AEC 05:DADC: 0F        .byte $0F   ; 
- D 2 - I - 0x015AED 05:DADD: 01        .byte $01   ; 
- D 2 - I - 0x015AEE 05:DADE: 06        .byte $06   ; 
- D 2 - I - 0x015AEF 05:DADF: 03        .byte $03   ; 
- D 2 - I - 0x015AF0 05:DAE0: 05        .byte $05   ; 
- D 2 - I - 0x015AF1 05:DAE1: 04        .byte $04   ; 
- D 2 - I - 0x015AF2 05:DAE2: 04        .byte $04   ; 
- D 2 - I - 0x015AF3 05:DAE3: 05        .byte $05   ; 
- D 2 - I - 0x015AF4 05:DAE4: 03        .byte $03   ; 
- D 2 - I - 0x015AF5 05:DAE5: 43        .byte $43   ; 
- D 2 - I - 0x015AF6 05:DAE6: 8A        .byte $8A   ; 
- D 2 - I - 0x015AF7 05:DAE7: 10        .byte $10   ; 
- D 2 - I - 0x015AF8 05:DAE8: 70        .byte $70   ; 
- D 2 - I - 0x015AF9 05:DAE9: 00        .byte $00   ; 
- D 2 - I - 0x015AFA 05:DAEA: 03        .byte $03   ; 
- D 2 - I - 0x015AFB 05:DAEB: 20        .byte $20   ; 
- D 2 - I - 0x015AFC 05:DAEC: 8A        .byte $8A   ; 
- D 2 - I - 0x015AFD 05:DAED: 41        .byte $41   ; 
- D 2 - I - 0x015AFE 05:DAEE: 0F        .byte $0F   ; 
- D 2 - I - 0x015AFF 05:DAEF: 01        .byte $01   ; 
- D 2 - I - 0x015B00 05:DAF0: 03        .byte $03   ; 
- D 2 - I - 0x015B01 05:DAF1: 0C        .byte $0C   ; 
- D 2 - I - 0x015B02 05:DAF2: 8A        .byte $8A   ; 
- D 2 - I - 0x015B03 05:DAF3: 10        .byte $10   ; 
- D 2 - I - 0x015B04 05:DAF4: 00        .byte $00   ; 
- D 2 - I - 0x015B05 05:DAF5: 00        .byte $00   ; 
- D 2 - I - 0x015B06 05:DAF6: 0B        .byte $0B   ; 
- D 2 - I - 0x015B07 05:DAF7: 01        .byte $01   ; 
- D 2 - I - 0x015B08 05:DAF8: 8B        .byte $8B   ; 
- D 2 - I - 0x015B09 05:DAF9: 00        .byte $00   ; 
- D 2 - I - 0x015B0A 05:DAFA: 09        .byte $09   ; 
- D 2 - I - 0x015B0B 05:DAFB: 01        .byte $01   ; 
- D 2 - I - 0x015B0C 05:DAFC: 08        .byte $08   ; 
- D 2 - I - 0x015B0D 05:DAFD: 01        .byte $01   ; 
- D 2 - I - 0x015B0E 05:DAFE: 06        .byte $06   ; 
- D 2 - I - 0x015B0F 05:DAFF: 01        .byte $01   ; 
- D 2 - I - 0x015B10 05:DB00: 8B        .byte $8B   ; 
- D 2 - I - 0x015B11 05:DB01: 01        .byte $01   ; 
- D 2 - I - 0x015B12 05:DB02: 8A        .byte $8A   ; 
- D 2 - I - 0x015B13 05:DB03: 90        .byte $90   ; 
- D 2 - I - 0x015B14 05:DB04: 00        .byte $00   ; 
- D 2 - I - 0x015B15 05:DB05: 02        .byte $02   ; 
- D 2 - I - 0x015B16 05:DB06: 0A        .byte $0A   ; 
- D 2 - I - 0x015B17 05:DB07: 01        .byte $01   ; 
- D 2 - I - 0x015B18 05:DB08: 8A        .byte $8A   ; 
- D 2 - I - 0x015B19 05:DB09: 40        .byte $40   ; 
- D 2 - I - 0x015B1A 05:DB0A: 04        .byte $04   ; 
- D 2 - I - 0x015B1B 05:DB0B: 01        .byte $01   ; 
- D 2 - I - 0x015B1C 05:DB0C: 06        .byte $06   ; 
- D 2 - I - 0x015B1D 05:DB0D: 03        .byte $03   ; 
- D 2 - I - 0x015B1E 05:DB0E: 05        .byte $05   ; 
- D 2 - I - 0x015B1F 05:DB0F: 04        .byte $04   ; 
- D 2 - I - 0x015B20 05:DB10: 04        .byte $04   ; 
- D 2 - I - 0x015B21 05:DB11: 05        .byte $05   ; 
- D 2 - I - 0x015B22 05:DB12: 03        .byte $03   ; 
- D 2 - I - 0x015B23 05:DB13: 30        .byte $30   ; 
- - - - - - 0x015B24 05:DB14: 8A        .byte $8A   ; 
- - - - - - 0x015B25 05:DB15: 00        .byte $00   ; 
- - - - - - 0x015B26 05:DB16: 00        .byte $00   ; 
- - - - - - 0x015B27 05:DB17: 02        .byte $02   ; 
- - - - - - 0x015B28 05:DB18: 8B        .byte $8B   ; 
- - - - - - 0x015B29 05:DB19: 01        .byte $01   ; 
- - - - - - 0x015B2A 05:DB1A: 32        .byte $32   ; 
- - - - - - 0x015B2B 05:DB1B: 01        .byte $01   ; 
- - - - - - 0x015B2C 05:DB1C: 83        .byte $83   ; 



sub_84_DB1D:
- D 2 - I - 0x015B2D 05:DB1D: 08        .byte $08   ; 
- D 2 - I - 0x015B2E 05:DB1E: 01        .byte $01   ; 
- D 2 - I - 0x015B2F 05:DB1F: 03        .byte $03   ; 
- D 2 - I - 0x015B30 05:DB20: 0F        .byte $0F   ; 
- D 2 - I - 0x015B31 05:DB21: 08        .byte $08   ; 
- D 2 - I - 0x015B32 05:DB22: 01        .byte $01   ; 
- D 2 - I - 0x015B33 05:DB23: 04        .byte $04   ; 
- D 2 - I - 0x015B34 05:DB24: 07        .byte $07   ; 
- D 2 - I - 0x015B35 05:DB25: 08        .byte $08   ; 
- D 2 - I - 0x015B36 05:DB26: 01        .byte $01   ; 
- D 2 - I - 0x015B37 05:DB27: 04        .byte $04   ; 
- D 2 - I - 0x015B38 05:DB28: 07        .byte $07   ; 
- D 2 - I - 0x015B39 05:DB29: 08        .byte $08   ; 
- D 2 - I - 0x015B3A 05:DB2A: 01        .byte $01   ; 
- D 2 - I - 0x015B3B 05:DB2B: 04        .byte $04   ; 
- D 2 - I - 0x015B3C 05:DB2C: 0F        .byte $0F   ; 
- D 2 - I - 0x015B3D 05:DB2D: 08        .byte $08   ; 
- D 2 - I - 0x015B3E 05:DB2E: 01        .byte $01   ; 
- D 2 - I - 0x015B3F 05:DB2F: 02        .byte $02   ; 
- D 2 - I - 0x015B40 05:DB30: 0F        .byte $0F   ; 
- D 2 - I - 0x015B41 05:DB31: 08        .byte $08   ; 
- D 2 - I - 0x015B42 05:DB32: 01        .byte $01   ; 
- D 2 - I - 0x015B43 05:DB33: 03        .byte $03   ; 
- D 2 - I - 0x015B44 05:DB34: 0F        .byte $0F   ; 
- D 2 - I - 0x015B45 05:DB35: 08        .byte $08   ; 
- D 2 - I - 0x015B46 05:DB36: 01        .byte $01   ; 
- D 2 - I - 0x015B47 05:DB37: 02        .byte $02   ; 
- D 2 - I - 0x015B48 05:DB38: 0F        .byte $0F   ; 
- D 2 - I - 0x015B49 05:DB39: 08        .byte $08   ; 
- D 2 - I - 0x015B4A 05:DB3A: 01        .byte $01   ; 
- D 2 - I - 0x015B4B 05:DB3B: 03        .byte $03   ; 
- D 2 - I - 0x015B4C 05:DB3C: 0F        .byte $0F   ; 
- D 2 - I - 0x015B4D 05:DB3D: 08        .byte $08   ; 
- D 2 - I - 0x015B4E 05:DB3E: 01        .byte $01   ; 
- D 2 - I - 0x015B4F 05:DB3F: 85        .byte con_85_rts



sub_84_DB40:
- D 2 - I - 0x015B50 05:DB40: 84        .byte con_84_jsr
- D 2 - I - 0x015B51 05:DB41: 9B DB     .word sub_84_DB9B
- D 2 - I - 0x015B53 05:DB43: 11        .byte $11   ; 
- D 2 - I - 0x015B54 05:DB44: 0C        .byte $0C   ; 
- D 2 - I - 0x015B55 05:DB45: 84        .byte con_84_jsr
- D 2 - I - 0x015B56 05:DB46: 9B DB     .word sub_84_DB9B
- D 2 - I - 0x015B58 05:DB48: 05        .byte $05   ; 
- D 2 - I - 0x015B59 05:DB49: 04        .byte $04   ; 
- D 2 - I - 0x015B5A 05:DB4A: 84        .byte con_84_jsr
- D 2 - I - 0x015B5B 05:DB4B: 9B DB     .word sub_84_DB9B
- D 2 - I - 0x015B5D 05:DB4D: 05        .byte $05   ; 
- D 2 - I - 0x015B5E 05:DB4E: 04        .byte $04   ; 
- D 2 - I - 0x015B5F 05:DB4F: 84        .byte con_84_jsr
- D 2 - I - 0x015B60 05:DB50: 9B DB     .word sub_84_DB9B
- D 2 - I - 0x015B62 05:DB52: 05        .byte $05   ; 
- D 2 - I - 0x015B63 05:DB53: 0C        .byte $0C   ; 
- D 2 - I - 0x015B64 05:DB54: 84        .byte con_84_jsr
- D 2 - I - 0x015B65 05:DB55: 9B DB     .word sub_84_DB9B
- D 2 - I - 0x015B67 05:DB57: 0C        .byte $0C   ; 
- D 2 - I - 0x015B68 05:DB58: 0C        .byte $0C   ; 
- D 2 - I - 0x015B69 05:DB59: 84        .byte con_84_jsr
- D 2 - I - 0x015B6A 05:DB5A: 9B DB     .word sub_84_DB9B
- D 2 - I - 0x015B6C 05:DB5C: 11        .byte $11   ; 
- D 2 - I - 0x015B6D 05:DB5D: 0C        .byte $0C   ; 
- D 2 - I - 0x015B6E 05:DB5E: 84        .byte con_84_jsr
- D 2 - I - 0x015B6F 05:DB5F: 9B DB     .word sub_84_DB9B
- D 2 - I - 0x015B71 05:DB61: 0C        .byte $0C   ; 
- D 2 - I - 0x015B72 05:DB62: 0C        .byte $0C   ; 
- D 2 - I - 0x015B73 05:DB63: 84        .byte con_84_jsr
- D 2 - I - 0x015B74 05:DB64: 9B DB     .word sub_84_DB9B
- D 2 - I - 0x015B76 05:DB66: 05        .byte $05   ; 
- D 2 - I - 0x015B77 05:DB67: 0C        .byte $0C   ; 
- D 2 - I - 0x015B78 05:DB68: 84        .byte con_84_jsr
- D 2 - I - 0x015B79 05:DB69: 9B DB     .word sub_84_DB9B
- D 2 - I - 0x015B7B 05:DB6B: 11        .byte $11   ; 
- D 2 - I - 0x015B7C 05:DB6C: 0C        .byte $0C   ; 
- D 2 - I - 0x015B7D 05:DB6D: 85        .byte con_85_rts



off_92_DB6E:
- D 2 - I - 0x015B7E 05:DB6E: 01        .byte $01   ; 
- D 2 - I - 0x015B7F 05:DB6F: 04        .byte $04   ; 
- D 2 - I - 0x015B80 05:DB70: 02        .byte $02   ; 
- D 2 - I - 0x015B81 05:DB71: 05        .byte $05   ; 
- D 2 - I - 0x015B82 05:DB72: FF        .byte $FF   ; 
- D 2 - I - 0x015B83 05:DB73: 03        .byte $03   ; 
- D 2 - I - 0x015B84 05:DB74: 02        .byte $02   ; 
- - - - - - 0x015B85 05:DB75: 01        .byte $01   ; 
- - - - - - 0x015B86 05:DB76: 00        .byte $00   ; 
- - - - - - 0x015B87 05:DB77: FF        .byte $FF   ; 



off_92_DB78:
- D 2 - I - 0x015B88 05:DB78: 06        .byte $06   ; 
- D 2 - I - 0x015B89 05:DB79: 03        .byte $03   ; 
- D 2 - I - 0x015B8A 05:DB7A: 06        .byte $06   ; 
- D 2 - I - 0x015B8B 05:DB7B: 05        .byte $05   ; 
- D 2 - I - 0x015B8C 05:DB7C: 04        .byte $04   ; 
- D 2 - I - 0x015B8D 05:DB7D: 04        .byte $04   ; 
- D 2 - I - 0x015B8E 05:DB7E: 03        .byte $03   ; 
- D 2 - I - 0x015B8F 05:DB7F: 03        .byte $03   ; 
- D 2 - I - 0x015B90 05:DB80: 02        .byte $02   ; 
- D 2 - I - 0x015B91 05:DB81: 02        .byte $02   ; 
- D 2 - I - 0x015B92 05:DB82: 02        .byte $02   ; 
- D 2 - I - 0x015B93 05:DB83: 01        .byte $01   ; 
- D 2 - I - 0x015B94 05:DB84: 01        .byte $01   ; 
- D 2 - I - 0x015B95 05:DB85: 01        .byte $01   ; 
- D 2 - I - 0x015B96 05:DB86: 01        .byte $01   ; 
- D 2 - I - 0x015B97 05:DB87: 01        .byte $01   ; 
- D 2 - I - 0x015B98 05:DB88: 00        .byte $00   ; 
- D 2 - I - 0x015B99 05:DB89: FF        .byte $FF   ; 
- D 2 - I - 0x015B9A 05:DB8A: 00        .byte $00   ; 
- D 2 - I - 0x015B9B 05:DB8B: FF        .byte $FF   ; 



sub_84_DB8C:
- D 2 - I - 0x015B9C 05:DB8C: 1D        .byte $1D   ; 
- D 2 - I - 0x015B9D 05:DB8D: 01        .byte $01   ; 
- D 2 - I - 0x015B9E 05:DB8E: 18        .byte $18   ; 
- D 2 - I - 0x015B9F 05:DB8F: 01        .byte $01   ; 
- D 2 - I - 0x015BA0 05:DB90: 13        .byte $13   ; 
- D 2 - I - 0x015BA1 05:DB91: 01        .byte $01   ; 
- D 2 - I - 0x015BA2 05:DB92: 0F        .byte $0F   ; 
- D 2 - I - 0x015BA3 05:DB93: 01        .byte $01   ; 
- D 2 - I - 0x015BA4 05:DB94: 0B        .byte $0B   ; 
- D 2 - I - 0x015BA5 05:DB95: 01        .byte $01   ; 
- D 2 - I - 0x015BA6 05:DB96: 08        .byte $08   ; 
- D 2 - I - 0x015BA7 05:DB97: 01        .byte $01   ; 
- D 2 - I - 0x015BA8 05:DB98: 05        .byte $05   ; 
- D 2 - I - 0x015BA9 05:DB99: 01        .byte $01   ; 
- D 2 - I - 0x015BAA 05:DB9A: 85        .byte con_85_rts



sub_84_DB9B:
- D 2 - I - 0x015BAB 05:DB9B: 90        .byte $90   ; 
- D 2 - I - 0x015BAC 05:DB9C: 18        .byte $18   ; 
- D 2 - I - 0x015BAD 05:DB9D: 01        .byte $01   ; 
- D 2 - I - 0x015BAE 05:DB9E: 90        .byte $90   ; 
- D 2 - I - 0x015BAF 05:DB9F: 12        .byte $12   ; 
- D 2 - I - 0x015BB0 05:DBA0: 01        .byte $01   ; 
- D 2 - I - 0x015BB1 05:DBA1: 90        .byte $90   ; 
- D 2 - I - 0x015BB2 05:DBA2: 0C        .byte $0C   ; 
- D 2 - I - 0x015BB3 05:DBA3: 01        .byte $01   ; 
- D 2 - I - 0x015BB4 05:DBA4: 90        .byte $90   ; 
- D 2 - I - 0x015BB5 05:DBA5: 05        .byte $05   ; 
- D 2 - I - 0x015BB6 05:DBA6: 01        .byte $01   ; 
- D 2 - I - 0x015BB7 05:DBA7: 85        .byte con_85_rts



sub_84_DBA8:
- D 2 - I - 0x015BB8 05:DBA8: 18        .byte $18   ; 
- D 2 - I - 0x015BB9 05:DBA9: 8B        .byte $8B   ; 
- D 2 - I - 0x015BBA 05:DBAA: 00        .byte $00   ; 
- D 2 - I - 0x015BBB 05:DBAB: 1B        .byte $1B   ; 
- D 2 - I - 0x015BBC 05:DBAC: 1F        .byte $1F   ; 
- D 2 - I - 0x015BBD 05:DBAD: 18        .byte $18   ; 
- D 2 - I - 0x015BBE 05:DBAE: 1B        .byte $1B   ; 
- D 2 - I - 0x015BBF 05:DBAF: 1F        .byte $1F   ; 
- D 2 - I - 0x015BC0 05:DBB0: 18        .byte $18   ; 
- D 2 - I - 0x015BC1 05:DBB1: 1B        .byte $1B   ; 
sub_84_DBB2:
- D 2 - I - 0x015BC2 05:DBB2: 1F        .byte $1F   ; 
- D 2 - I - 0x015BC3 05:DBB3: 8B        .byte $8B   ; 
- D 2 - I - 0x015BC4 05:DBB4: 00        .byte $00   ; 
- D 2 - I - 0x015BC5 05:DBB5: 18        .byte $18   ; 
- D 2 - I - 0x015BC6 05:DBB6: 1B        .byte $1B   ; 
- D 2 - I - 0x015BC7 05:DBB7: 1F        .byte $1F   ; 
- D 2 - I - 0x015BC8 05:DBB8: 18        .byte $18   ; 
- D 2 - I - 0x015BC9 05:DBB9: 1B        .byte $1B   ; 
- D 2 - I - 0x015BCA 05:DBBA: 1F        .byte $1F   ; 
- D 2 - I - 0x015BCB 05:DBBB: 18        .byte $18   ; 
- D 2 - I - 0x015BCC 05:DBBC: 8B        .byte $8B   ; 
- D 2 - I - 0x015BCD 05:DBBD: 01        .byte $01   ; 
- D 2 - I - 0x015BCE 05:DBBE: 85        .byte con_85_rts



sub_84_DBBF:
- D 2 - I - 0x015BCF 05:DBBF: 18        .byte $18   ; 
- D 2 - I - 0x015BD0 05:DBC0: 8B        .byte $8B   ; 
- D 2 - I - 0x015BD1 05:DBC1: 00        .byte $00   ; 
- D 2 - I - 0x015BD2 05:DBC2: 1C        .byte $1C   ; 
- D 2 - I - 0x015BD3 05:DBC3: 1F        .byte $1F   ; 
- D 2 - I - 0x015BD4 05:DBC4: 18        .byte $18   ; 
- D 2 - I - 0x015BD5 05:DBC5: 1C        .byte $1C   ; 
- D 2 - I - 0x015BD6 05:DBC6: 1F        .byte $1F   ; 
- D 2 - I - 0x015BD7 05:DBC7: 18        .byte $18   ; 
- D 2 - I - 0x015BD8 05:DBC8: 1C        .byte $1C   ; 
sub_84_DBC9:
- D 2 - I - 0x015BD9 05:DBC9: 1F        .byte $1F   ; 
- D 2 - I - 0x015BDA 05:DBCA: 8B        .byte $8B   ; 
- D 2 - I - 0x015BDB 05:DBCB: 00        .byte $00   ; 
- D 2 - I - 0x015BDC 05:DBCC: 18        .byte $18   ; 
- D 2 - I - 0x015BDD 05:DBCD: 1C        .byte $1C   ; 
- D 2 - I - 0x015BDE 05:DBCE: 1F        .byte $1F   ; 
- D 2 - I - 0x015BDF 05:DBCF: 18        .byte $18   ; 
- D 2 - I - 0x015BE0 05:DBD0: 1C        .byte $1C   ; 
- D 2 - I - 0x015BE1 05:DBD1: 1F        .byte $1F   ; 
- D 2 - I - 0x015BE2 05:DBD2: 18        .byte $18   ; 
- D 2 - I - 0x015BE3 05:DBD3: 8B        .byte $8B   ; 
- D 2 - I - 0x015BE4 05:DBD4: 01        .byte $01   ; 
- D 2 - I - 0x015BE5 05:DBD5: 85        .byte con_85_rts


; bzk garbage
- - - - - - 0x015BE6 05:DBD6: 0C        .byte $0C   ; 
- - - - - - 0x015BE7 05:DBD7: 11        .byte $11   ; 
- - - - - - 0x015BE8 05:DBD8: 14        .byte $14   ; 
- - - - - - 0x015BE9 05:DBD9: 18        .byte $18   ; 



sub_84_DBDA:
- D 2 - I - 0x015BEA 05:DBDA: 18        .byte $18   ; 
- D 2 - I - 0x015BEB 05:DBDB: 8B        .byte $8B   ; 
- D 2 - I - 0x015BEC 05:DBDC: 00        .byte $00   ; 
- D 2 - I - 0x015BED 05:DBDD: 1D        .byte $1D   ; 
- D 2 - I - 0x015BEE 05:DBDE: 20        .byte $20   ; 
- D 2 - I - 0x015BEF 05:DBDF: 1D        .byte $1D   ; 
- D 2 - I - 0x015BF0 05:DBE0: 24        .byte $24   ; 
- D 2 - I - 0x015BF1 05:DBE1: 18        .byte $18   ; 
- D 2 - I - 0x015BF2 05:DBE2: 1D        .byte $1D   ; 
- D 2 - I - 0x015BF3 05:DBE3: 20        .byte $20   ; 
- D 2 - I - 0x015BF4 05:DBE4: 8B        .byte $8B   ; 
- D 2 - I - 0x015BF5 05:DBE5: 01        .byte $01   ; 
- D 2 - I - 0x015BF6 05:DBE6: 85        .byte con_85_rts



sub_84_DBE7:
- D 2 - I - 0x015BF7 05:DBE7: 20        .byte $20   ; 
- D 2 - I - 0x015BF8 05:DBE8: 8B        .byte $8B   ; 
- D 2 - I - 0x015BF9 05:DBE9: 00        .byte $00   ; 
- D 2 - I - 0x015BFA 05:DBEA: 24        .byte $24   ; 
- D 2 - I - 0x015BFB 05:DBEB: 18        .byte $18   ; 
- D 2 - I - 0x015BFC 05:DBEC: 20        .byte $20   ; 
- D 2 - I - 0x015BFD 05:DBED: 1D        .byte $1D   ; 
- D 2 - I - 0x015BFE 05:DBEE: 20        .byte $20   ; 
- D 2 - I - 0x015BFF 05:DBEF: 24        .byte $24   ; 
- D 2 - I - 0x015C00 05:DBF0: 18        .byte $18   ; 
- D 2 - I - 0x015C01 05:DBF1: 8B        .byte $8B   ; 
- D 2 - I - 0x015C02 05:DBF2: 01        .byte $01   ; 
- D 2 - I - 0x015C03 05:DBF3: 85        .byte con_85_rts



sub_84_DBF4:
- D 2 - I - 0x015C04 05:DBF4: 18        .byte $18   ; 
- D 2 - I - 0x015C05 05:DBF5: 8B        .byte $8B   ; 
- D 2 - I - 0x015C06 05:DBF6: 00        .byte $00   ; 
- D 2 - I - 0x015C07 05:DBF7: 1D        .byte $1D   ; 
- D 2 - I - 0x015C08 05:DBF8: 20        .byte $20   ; 
- D 2 - I - 0x015C09 05:DBF9: 1D        .byte $1D   ; 
- D 2 - I - 0x015C0A 05:DBFA: 8B        .byte $8B   ; 
- D 2 - I - 0x015C0B 05:DBFB: 01        .byte $01   ; 
- D 2 - I - 0x015C0C 05:DBFC: 85        .byte con_85_rts



sub_84_DBFD:
- D 2 - I - 0x015C0D 05:DBFD: 20        .byte $20   ; 
- D 2 - I - 0x015C0E 05:DBFE: 8B        .byte $8B   ; 
- D 2 - I - 0x015C0F 05:DBFF: 00        .byte $00   ; 
- D 2 - I - 0x015C10 05:DC00: 24        .byte $24   ; 
- D 2 - I - 0x015C11 05:DC01: 18        .byte $18   ; 
- D 2 - I - 0x015C12 05:DC02: 20        .byte $20   ; 
- D 2 - I - 0x015C13 05:DC03: 8B        .byte $8B   ; 
- D 2 - I - 0x015C14 05:DC04: 01        .byte $01   ; 
- D 2 - I - 0x015C15 05:DC05: 85        .byte con_85_rts



sub_84_DC06:
- D 2 - I - 0x015C16 05:DC06: 18        .byte $18   ; 
- D 2 - I - 0x015C17 05:DC07: 8B        .byte $8B   ; 
- D 2 - I - 0x015C18 05:DC08: 00        .byte $00   ; 
- D 2 - I - 0x015C19 05:DC09: 1D        .byte $1D   ; 
- D 2 - I - 0x015C1A 05:DC0A: 21        .byte $21   ; 
- D 2 - I - 0x015C1B 05:DC0B: 1D        .byte $1D   ; 
- D 2 - I - 0x015C1C 05:DC0C: 24        .byte $24   ; 
- D 2 - I - 0x015C1D 05:DC0D: 18        .byte $18   ; 
- D 2 - I - 0x015C1E 05:DC0E: 1D        .byte $1D   ; 
- D 2 - I - 0x015C1F 05:DC0F: 21        .byte $21   ; 
- D 2 - I - 0x015C20 05:DC10: 8B        .byte $8B   ; 
- D 2 - I - 0x015C21 05:DC11: 01        .byte $01   ; 
- D 2 - I - 0x015C22 05:DC12: 85        .byte con_85_rts



sub_84_DC13:
- D 2 - I - 0x015C23 05:DC13: 21        .byte $21   ; 
- D 2 - I - 0x015C24 05:DC14: 8B        .byte $8B   ; 
- D 2 - I - 0x015C25 05:DC15: 00        .byte $00   ; 
- D 2 - I - 0x015C26 05:DC16: 24        .byte $24   ; 
- D 2 - I - 0x015C27 05:DC17: 18        .byte $18   ; 
- D 2 - I - 0x015C28 05:DC18: 21        .byte $21   ; 
- D 2 - I - 0x015C29 05:DC19: 1D        .byte $1D   ; 
- D 2 - I - 0x015C2A 05:DC1A: 21        .byte $21   ; 
- D 2 - I - 0x015C2B 05:DC1B: 24        .byte $24   ; 
- D 2 - I - 0x015C2C 05:DC1C: 18        .byte $18   ; 
- D 2 - I - 0x015C2D 05:DC1D: 8B        .byte $8B   ; 
- D 2 - I - 0x015C2E 05:DC1E: 01        .byte $01   ; 
- D 2 - I - 0x015C2F 05:DC1F: 85        .byte con_85_rts



sub_84_DC20:
- D 2 - I - 0x015C30 05:DC20: 18        .byte $18   ; 
- D 2 - I - 0x015C31 05:DC21: 8B        .byte $8B   ; 
- D 2 - I - 0x015C32 05:DC22: 00        .byte $00   ; 
- D 2 - I - 0x015C33 05:DC23: 1D        .byte $1D   ; 
- D 2 - I - 0x015C34 05:DC24: 21        .byte $21   ; 
- D 2 - I - 0x015C35 05:DC25: 1D        .byte $1D   ; 
- D 2 - I - 0x015C36 05:DC26: 8B        .byte $8B   ; 
- D 2 - I - 0x015C37 05:DC27: 01        .byte $01   ; 
- D 2 - I - 0x015C38 05:DC28: 85        .byte con_85_rts



sub_84_DC29:
- D 2 - I - 0x015C39 05:DC29: 21        .byte $21   ; 
- D 2 - I - 0x015C3A 05:DC2A: 8B        .byte $8B   ; 
- D 2 - I - 0x015C3B 05:DC2B: 00        .byte $00   ; 
- D 2 - I - 0x015C3C 05:DC2C: 24        .byte $24   ; 
- D 2 - I - 0x015C3D 05:DC2D: 18        .byte $18   ; 
- D 2 - I - 0x015C3E 05:DC2E: 21        .byte $21   ; 
- D 2 - I - 0x015C3F 05:DC2F: 8B        .byte $8B   ; 
- D 2 - I - 0x015C40 05:DC30: 01        .byte $01   ; 
- D 2 - I - 0x015C41 05:DC31: 85        .byte con_85_rts



_off018_DC32_01_gameplay:
- D 2 - I - 0x015C42 05:DC32: 89        .byte $89   ; 
- D 2 - I - 0x015C43 05:DC33: 15        .byte $15   ; 
- D 2 - I - 0x015C44 05:DC34: 0F        .byte $0F   ; 
- D 2 - I - 0x015C45 05:DC35: 01        .byte $01   ; 
- D 2 - I - 0x015C46 05:DC36: 00        .byte $00   ; 
- D 2 - I - 0x015C47 05:DC37: 05        .byte $05   ; 
- D 2 - I - 0x015C48 05:DC38: 00        .byte $00   ; 
- D 2 - I - 0x015C49 05:DC39: 08        .byte $08   ; 
- D 2 - I - 0x015C4A 05:DC3A: FF        .byte $FF   ; 
- D 2 - I - 0x015C4B 05:DC3B: FF        .byte $FF   ; 
- D 2 - I - 0x015C4C 05:DC3C: 8B        .byte $8B   ; 
- D 2 - I - 0x015C4D 05:DC3D: 01        .byte $01   ; 
loc_88_DC3E:
- D 2 - I - 0x015C4E 05:DC3E: 8A        .byte $8A   ; 
- D 2 - I - 0x015C4F 05:DC3F: 00        .byte $00   ; 
- D 2 - I - 0x015C50 05:DC40: 00        .byte $00   ; 
- D 2 - I - 0x015C51 05:DC41: 02        .byte $02   ; 
- D 2 - I - 0x015C52 05:DC42: 60        .byte $60   ; 
- D 2 - I - 0x015C53 05:DC43: C0        .byte $C0   ; 
- D 2 - I - 0x015C54 05:DC44: 8E        .byte $8E   ; 
- D 2 - I - 0x015C55 05:DC45: 30        .byte $30   ; 
- D 2 - I - 0x015C56 05:DC46: 80        .byte $80   ; 
- D 2 - I - 0x015C57 05:DC47: 04        .byte $04   ; 
- D 2 - I - 0x015C58 05:DC48: 84        .byte con_84_jsr
- D 2 - I - 0x015C59 05:DC49: F2 E0     .word sub_84_E0F2
- D 2 - I - 0x015C5B 05:DC4B: 81        .byte $81   ; 
- D 2 - I - 0x015C5C 05:DC4C: 8A        .byte $8A   ; 
- D 2 - I - 0x015C5D 05:DC4D: 00        .byte $00   ; 
- D 2 - I - 0x015C5E 05:DC4E: 00        .byte $00   ; 
- D 2 - I - 0x015C5F 05:DC4F: 02        .byte $02   ; 
- D 2 - I - 0x015C60 05:DC50: 32        .byte $32   ; 
- D 2 - I - 0x015C61 05:DC51: 05        .byte $05   ; 
- D 2 - I - 0x015C62 05:DC52: 87        .byte $87   ; 
- D 2 - I - 0x015C63 05:DC53: 01        .byte $01   ; 
- D 2 - I - 0x015C64 05:DC54: 8B        .byte $8B   ; 
- D 2 - I - 0x015C65 05:DC55: FF        .byte $FF   ; 
- D 2 - I - 0x015C66 05:DC56: 92        .byte con_92_loop, $01
- D 2 - I - 0x015C68 05:DC58: AE E1     .word off_92_E1AE
- D 2 - I - 0x015C6A 05:DC5A: 84        .byte con_84_jsr
- D 2 - I - 0x015C6B 05:DC5B: 74 E1     .word sub_84_E174
- D 2 - I - 0x015C6D 05:DC5D: 8A        .byte $8A   ; 
- D 2 - I - 0x015C6E 05:DC5E: 20        .byte $20   ; 
- D 2 - I - 0x015C6F 05:DC5F: 00        .byte $00   ; 
- D 2 - I - 0x015C70 05:DC60: 02        .byte $02   ; 
- D 2 - I - 0x015C71 05:DC61: 8B        .byte $8B   ; 
- D 2 - I - 0x015C72 05:DC62: 01        .byte $01   ; 
- D 2 - I - 0x015C73 05:DC63: 1B        .byte $1B   ; 
- D 2 - I - 0x015C74 05:DC64: 48        .byte $48   ; 
- D 2 - I - 0x015C75 05:DC65: 8A        .byte $8A   ; 
- D 2 - I - 0x015C76 05:DC66: 20        .byte $20   ; 
- D 2 - I - 0x015C77 05:DC67: 50        .byte $50   ; 
- D 2 - I - 0x015C78 05:DC68: 00        .byte $00   ; 
- D 2 - I - 0x015C79 05:DC69: 1B        .byte $1B   ; 
- D 2 - I - 0x015C7A 05:DC6A: 13        .byte $13   ; 
- D 2 - I - 0x015C7B 05:DC6B: 8A        .byte $8A   ; 
- D 2 - I - 0x015C7C 05:DC6C: 00        .byte $00   ; 
- D 2 - I - 0x015C7D 05:DC6D: 00        .byte $00   ; 
- D 2 - I - 0x015C7E 05:DC6E: 02        .byte $02   ; 
- D 2 - I - 0x015C7F 05:DC6F: 1B        .byte $1B   ; 
- D 2 - I - 0x015C80 05:DC70: 60        .byte $60   ; 
- D 2 - I - 0x015C81 05:DC71: 8E        .byte $8E   ; 
- D 2 - I - 0x015C82 05:DC72: 30        .byte $30   ; 
- D 2 - I - 0x015C83 05:DC73: 8D        .byte $8D   ; 
- D 2 - I - 0x015C84 05:DC74: 00        .byte $00   ; 
- D 2 - I - 0x015C85 05:DC75: 84        .byte con_84_jsr
- D 2 - I - 0x015C86 05:DC76: F2 E0     .word sub_84_E0F2
- D 2 - I - 0x015C88 05:DC78: 86        .byte $86   ; 
- D 2 - I - 0x015C89 05:DC79: 07        .byte $07   ; 
- D 2 - I - 0x015C8A 05:DC7A: 84        .byte con_84_jsr
- D 2 - I - 0x015C8B 05:DC7B: 4B E1     .word sub_84_E14B
- D 2 - I - 0x015C8D 05:DC7D: 84        .byte con_84_jsr
- D 2 - I - 0x015C8E 05:DC7E: 53 E1     .word sub_84_E153
- D 2 - I - 0x015C90 05:DC80: 86        .byte $86   ; 
- D 2 - I - 0x015C91 05:DC81: 00        .byte $00   ; 
- D 2 - I - 0x015C92 05:DC82: 60        .byte $60   ; 
- D 2 - I - 0x015C93 05:DC83: 48        .byte $48   ; 
- D 2 - I - 0x015C94 05:DC84: 8A        .byte $8A   ; 
- D 2 - I - 0x015C95 05:DC85: 10        .byte $10   ; 
- D 2 - I - 0x015C96 05:DC86: 00        .byte $00   ; 
- D 2 - I - 0x015C97 05:DC87: 02        .byte $02   ; 
- D 2 - I - 0x015C98 05:DC88: 8B        .byte $8B   ; 
- D 2 - I - 0x015C99 05:DC89: 01        .byte $01   ; 
- D 2 - I - 0x015C9A 05:DC8A: 82        .byte $82   ; 
- D 2 - I - 0x015C9B 05:DC8B: 06        .byte $06   ; 
- D 2 - I - 0x015C9C 05:DC8C: 0F        .byte $0F   ; 
- D 2 - I - 0x015C9D 05:DC8D: 15        .byte $15   ; 
- D 2 - I - 0x015C9E 05:DC8E: 1B        .byte $1B   ; 
- D 2 - I - 0x015C9F 05:DC8F: 21        .byte $21   ; 
- D 2 - I - 0x015CA0 05:DC90: 27        .byte $27   ; 
- D 2 - I - 0x015CA1 05:DC91: 2D        .byte $2D   ; 
- D 2 - I - 0x015CA2 05:DC92: 33        .byte $33   ; 
- D 2 - I - 0x015CA3 05:DC93: 39        .byte $39   ; 
- D 2 - I - 0x015CA4 05:DC94: 3D        .byte $3D   ; 
- D 2 - I - 0x015CA5 05:DC95: 36        .byte $36   ; 
- D 2 - I - 0x015CA6 05:DC96: 31        .byte $31   ; 
- D 2 - I - 0x015CA7 05:DC97: 2A        .byte $2A   ; 
- D 2 - I - 0x015CA8 05:DC98: 25        .byte $25   ; 
- D 2 - I - 0x015CA9 05:DC99: 1E        .byte $1E   ; 
- D 2 - I - 0x015CAA 05:DC9A: 19        .byte $19   ; 
- D 2 - I - 0x015CAB 05:DC9B: 12        .byte $12   ; 
- D 2 - I - 0x015CAC 05:DC9C: 82        .byte $82   ; 
- D 2 - I - 0x015CAD 05:DC9D: 00        .byte $00   ; 
- D 2 - I - 0x015CAE 05:DC9E: 8B        .byte $8B   ; 
- D 2 - I - 0x015CAF 05:DC9F: FF        .byte $FF   ; 
- D 2 - I - 0x015CB0 05:DCA0: 8E        .byte $8E   ; 
- D 2 - I - 0x015CB1 05:DCA1: B0        .byte $B0   ; 
- D 2 - I - 0x015CB2 05:DCA2: 92        .byte con_92_loop, $05
- D 2 - I - 0x015CB4 05:DCA4: 03 E2     .word off_92_E203
- D 2 - I - 0x015CB6 05:DCA6: 48        .byte $48   ; 
- D 2 - I - 0x015CB7 05:DCA7: D8        .byte $D8   ; 
- D 2 - I - 0x015CB8 05:DCA8: 8B        .byte $8B   ; 
- D 2 - I - 0x015CB9 05:DCA9: 00        .byte $00   ; 
- D 2 - I - 0x015CBA 05:DCAA: 48        .byte $48   ; 
- D 2 - I - 0x015CBB 05:DCAB: A8        .byte $A8   ; 
- D 2 - I - 0x015CBC 05:DCAC: 8B        .byte $8B   ; 
- D 2 - I - 0x015CBD 05:DCAD: 01        .byte $01   ; 
- D 2 - I - 0x015CBE 05:DCAE: 8A        .byte $8A   ; 
- D 2 - I - 0x015CBF 05:DCAF: 20        .byte $20   ; 
- D 2 - I - 0x015CC0 05:DCB0: 00        .byte $00   ; 
- D 2 - I - 0x015CC1 05:DCB1: 02        .byte $02   ; 
- D 2 - I - 0x015CC2 05:DCB2: 84        .byte con_84_jsr
- D 2 - I - 0x015CC3 05:DCB3: 6B E0     .word sub_84_E06B
- D 2 - I - 0x015CC5 05:DCB5: 25        .byte $25   ; 
- D 2 - I - 0x015CC6 05:DCB6: 06        .byte $06   ; 
- D 2 - I - 0x015CC7 05:DCB7: 60        .byte $60   ; 
- D 2 - I - 0x015CC8 05:DCB8: 06        .byte $06   ; 
- D 2 - I - 0x015CC9 05:DCB9: 80        .byte $80   ; 
- D 2 - I - 0x015CCA 05:DCBA: 02        .byte $02   ; 
- D 2 - I - 0x015CCB 05:DCBB: 84        .byte con_84_jsr
- D 2 - I - 0x015CCC 05:DCBC: 74 E0     .word sub_84_E074
- D 2 - I - 0x015CCE 05:DCBE: 25        .byte $25   ; 
- D 2 - I - 0x015CCF 05:DCBF: 06        .byte $06   ; 
- D 2 - I - 0x015CD0 05:DCC0: 60        .byte $60   ; 
- D 2 - I - 0x015CD1 05:DCC1: 06        .byte $06   ; 
- D 2 - I - 0x015CD2 05:DCC2: 81        .byte $81   ; 
- D 2 - I - 0x015CD3 05:DCC3: 8F        .byte $8F   ; 
- D 2 - I - 0x015CD4 05:DCC4: 0C        .byte $0C   ; 
- D 2 - I - 0x015CD5 05:DCC5: 01        .byte $01   ; 
- D 2 - I - 0x015CD6 05:DCC6: 03        .byte $03   ; 
- D 2 - I - 0x015CD7 05:DCC7: 00        .byte $00   ; 
- D 2 - I - 0x015CD8 05:DCC8: 86        .byte $86   ; 
- D 2 - I - 0x015CD9 05:DCC9: 05        .byte $05   ; 
- D 2 - I - 0x015CDA 05:DCCA: 84        .byte con_84_jsr
- D 2 - I - 0x015CDB 05:DCCB: C7 E0     .word sub_84_E0C7
- D 2 - I - 0x015CDD 05:DCCD: 84        .byte con_84_jsr
- D 2 - I - 0x015CDE 05:DCCE: CF E0     .word sub_84_E0CF
- D 2 - I - 0x015CE0 05:DCD0: 86        .byte $86   ; 
- D 2 - I - 0x015CE1 05:DCD1: 00        .byte $00   ; 
- D 2 - I - 0x015CE2 05:DCD2: 84        .byte con_84_jsr
- D 2 - I - 0x015CE3 05:DCD3: CF E0     .word sub_84_E0CF
- D 2 - I - 0x015CE5 05:DCD5: 84        .byte con_84_jsr
- D 2 - I - 0x015CE6 05:DCD6: CF E0     .word sub_84_E0CF
- D 2 - I - 0x015CE8 05:DCD8: 80        .byte $80   ; 
- D 2 - I - 0x015CE9 05:DCD9: 02        .byte $02   ; 
- D 2 - I - 0x015CEA 05:DCDA: 84        .byte con_84_jsr
- D 2 - I - 0x015CEB 05:DCDB: 53 E1     .word sub_84_E153
- D 2 - I - 0x015CED 05:DCDD: 86        .byte $86   ; 
- D 2 - I - 0x015CEE 05:DCDE: 0C        .byte $0C   ; 
- D 2 - I - 0x015CEF 05:DCDF: 81        .byte $81   ; 
- D 2 - I - 0x015CF0 05:DCE0: 8A        .byte $8A   ; 
- D 2 - I - 0x015CF1 05:DCE1: 20        .byte $20   ; 
- D 2 - I - 0x015CF2 05:DCE2: 00        .byte $00   ; 
- D 2 - I - 0x015CF3 05:DCE3: 02        .byte $02   ; 
- D 2 - I - 0x015CF4 05:DCE4: 92        .byte con_92_loop, $01
- D 2 - I - 0x015CF6 05:DCE6: AE E1     .word off_92_E1AE
- D 2 - I - 0x015CF8 05:DCE8: 86        .byte $86   ; 
- D 2 - I - 0x015CF9 05:DCE9: 00        .byte $00   ; 
- D 2 - I - 0x015CFA 05:DCEA: 94        .byte $94   ; 
- D 2 - I - 0x015CFB 05:DCEB: 01        .byte $01   ; 
- D 2 - I - 0x015CFC 05:DCEC: 84        .byte con_84_jsr
- D 2 - I - 0x015CFD 05:DCED: BB DF     .word sub_84_DFBB
- D 2 - I - 0x015CFF 05:DCEF: 1B        .byte $1B   ; 
- D 2 - I - 0x015D00 05:DCF0: 1C        .byte $1C   ; 
- D 2 - I - 0x015D01 05:DCF1: 84        .byte con_84_jsr
- D 2 - I - 0x015D02 05:DCF2: BB DF     .word sub_84_DFBB
- D 2 - I - 0x015D04 05:DCF4: 1B        .byte $1B   ; 
- D 2 - I - 0x015D05 05:DCF5: 1C        .byte $1C   ; 
- D 2 - I - 0x015D06 05:DCF6: 8A        .byte $8A   ; 
- D 2 - I - 0x015D07 05:DCF7: 00        .byte $00   ; 
- D 2 - I - 0x015D08 05:DCF8: 00        .byte $00   ; 
- D 2 - I - 0x015D09 05:DCF9: 02        .byte $02   ; 
- D 2 - I - 0x015D0A 05:DCFA: 8B        .byte $8B   ; 
- D 2 - I - 0x015D0B 05:DCFB: 01        .byte $01   ; 
- D 2 - I - 0x015D0C 05:DCFC: 8E        .byte $8E   ; 
- D 2 - I - 0x015D0D 05:DCFD: 30        .byte $30   ; 
- D 2 - I - 0x015D0E 05:DCFE: 49        .byte $49   ; 
- D 2 - I - 0x015D0F 05:DCFF: 63        .byte $63   ; 
- D 2 - I - 0x015D10 05:DD00: 8B        .byte $8B   ; 
- D 2 - I - 0x015D11 05:DD01: FF        .byte $FF   ; 
- D 2 - I - 0x015D12 05:DD02: 92        .byte con_92_loop, $02
- D 2 - I - 0x015D14 05:DD04: 5B E2     .word off_92_E25B
- D 2 - I - 0x015D16 05:DD06: 49        .byte $49   ; 
- D 2 - I - 0x015D17 05:DD07: 5D        .byte $5D   ; 
- D 2 - I - 0x015D18 05:DD08: 92        .byte con_92_loop, $01
- D 2 - I - 0x015D1A 05:DD0A: C5 E1     .word off_92_E1C5
- D 2 - I - 0x015D1C 05:DD0C: 49        .byte $49   ; 
- D 2 - I - 0x015D1D 05:DD0D: 18        .byte $18   ; 
- D 2 - I - 0x015D1E 05:DD0E: 49        .byte $49   ; 
- D 2 - I - 0x015D1F 05:DD0F: 48        .byte $48   ; 
- D 2 - I - 0x015D20 05:DD10: 8B        .byte $8B   ; 
- D 2 - I - 0x015D21 05:DD11: 01        .byte $01   ; 
- D 2 - I - 0x015D22 05:DD12: 8A        .byte $8A   ; 
- D 2 - I - 0x015D23 05:DD13: 10        .byte $10   ; 
- D 2 - I - 0x015D24 05:DD14: 70        .byte $70   ; 
- D 2 - I - 0x015D25 05:DD15: 00        .byte $00   ; 
- D 2 - I - 0x015D26 05:DD16: 22        .byte $22   ; 
- D 2 - I - 0x015D27 05:DD17: 18        .byte $18   ; 
- D 2 - I - 0x015D28 05:DD18: 8A        .byte $8A   ; 
- D 2 - I - 0x015D29 05:DD19: 10        .byte $10   ; 
- D 2 - I - 0x015D2A 05:DD1A: 70        .byte $70   ; 
- D 2 - I - 0x015D2B 05:DD1B: 00        .byte $00   ; 
- D 2 - I - 0x015D2C 05:DD1C: 25        .byte $25   ; 
- D 2 - I - 0x015D2D 05:DD1D: 18        .byte $18   ; 
- D 2 - I - 0x015D2E 05:DD1E: 8A        .byte $8A   ; 
- D 2 - I - 0x015D2F 05:DD1F: 20        .byte $20   ; 
- D 2 - I - 0x015D30 05:DD20: 70        .byte $70   ; 
- D 2 - I - 0x015D31 05:DD21: 00        .byte $00   ; 
- D 2 - I - 0x015D32 05:DD22: 24        .byte $24   ; 
- D 2 - I - 0x015D33 05:DD23: 18        .byte $18   ; 
- D 2 - I - 0x015D34 05:DD24: 8A        .byte $8A   ; 
- D 2 - I - 0x015D35 05:DD25: 30        .byte $30   ; 
- D 2 - I - 0x015D36 05:DD26: 70        .byte $70   ; 
- D 2 - I - 0x015D37 05:DD27: 00        .byte $00   ; 
- D 2 - I - 0x015D38 05:DD28: 29        .byte $29   ; 
- D 2 - I - 0x015D39 05:DD29: 18        .byte $18   ; 
- D 2 - I - 0x015D3A 05:DD2A: 88        .byte con_88_jmp
- D 2 - I - 0x015D3B 05:DD2B: 3E DC     .word loc_88_DC3E



_off019_DD2D_01_gameplay:
- D 2 - I - 0x015D3D 05:DD2D: 8B        .byte $8B   ; 
- D 2 - I - 0x015D3E 05:DD2E: 01        .byte $01   ; 
loc_88_DD2F:
- D 2 - I - 0x015D3F 05:DD2F: 60        .byte $60   ; 
- D 2 - I - 0x015D40 05:DD30: C0        .byte $C0   ; 
- D 2 - I - 0x015D41 05:DD31: 8E        .byte $8E   ; 
- D 2 - I - 0x015D42 05:DD32: 30        .byte $30   ; 
- D 2 - I - 0x015D43 05:DD33: 87        .byte $87   ; 
- D 2 - I - 0x015D44 05:DD34: 00        .byte $00   ; 
- D 2 - I - 0x015D45 05:DD35: 80        .byte $80   ; 
- D 2 - I - 0x015D46 05:DD36: 04        .byte $04   ; 
- D 2 - I - 0x015D47 05:DD37: 84        .byte con_84_jsr
- D 2 - I - 0x015D48 05:DD38: 13 E1     .word sub_84_E113
- D 2 - I - 0x015D4A 05:DD3A: 81        .byte $81   ; 
- D 2 - I - 0x015D4B 05:DD3B: 8B        .byte $8B   ; 
- D 2 - I - 0x015D4C 05:DD3C: FF        .byte $FF   ; 
- D 2 - I - 0x015D4D 05:DD3D: 92        .byte con_92_loop, $01
- D 2 - I - 0x015D4F 05:DD3F: A6 E1     .word off_92_E1A6
- D 2 - I - 0x015D51 05:DD41: 84        .byte con_84_jsr
- D 2 - I - 0x015D52 05:DD42: 74 E1     .word sub_84_E174
- D 2 - I - 0x015D54 05:DD44: 8A        .byte $8A   ; 
- D 2 - I - 0x015D55 05:DD45: 30        .byte $30   ; 
- D 2 - I - 0x015D56 05:DD46: 00        .byte $00   ; 
- D 2 - I - 0x015D57 05:DD47: 02        .byte $02   ; 
- D 2 - I - 0x015D58 05:DD48: 8B        .byte $8B   ; 
- D 2 - I - 0x015D59 05:DD49: 01        .byte $01   ; 
- D 2 - I - 0x015D5A 05:DD4A: 1B        .byte $1B   ; 
- D 2 - I - 0x015D5B 05:DD4B: 48        .byte $48   ; 
- D 2 - I - 0x015D5C 05:DD4C: 8A        .byte $8A   ; 
- D 2 - I - 0x015D5D 05:DD4D: 30        .byte $30   ; 
- D 2 - I - 0x015D5E 05:DD4E: 50        .byte $50   ; 
- D 2 - I - 0x015D5F 05:DD4F: 00        .byte $00   ; 
- D 2 - I - 0x015D60 05:DD50: 1B        .byte $1B   ; 
- D 2 - I - 0x015D61 05:DD51: 18        .byte $18   ; 
- D 2 - I - 0x015D62 05:DD52: 8A        .byte $8A   ; 
- D 2 - I - 0x015D63 05:DD53: 00        .byte $00   ; 
- D 2 - I - 0x015D64 05:DD54: 00        .byte $00   ; 
- D 2 - I - 0x015D65 05:DD55: 02        .byte $02   ; 
- D 2 - I - 0x015D66 05:DD56: 1B        .byte $1B   ; 
- D 2 - I - 0x015D67 05:DD57: 60        .byte $60   ; 
- D 2 - I - 0x015D68 05:DD58: 8E        .byte $8E   ; 
- D 2 - I - 0x015D69 05:DD59: 30        .byte $30   ; 
- D 2 - I - 0x015D6A 05:DD5A: 8D        .byte $8D   ; 
- D 2 - I - 0x015D6B 05:DD5B: 00        .byte $00   ; 
- D 2 - I - 0x015D6C 05:DD5C: 84        .byte con_84_jsr
- D 2 - I - 0x015D6D 05:DD5D: 13 E1     .word sub_84_E113
- D 2 - I - 0x015D6F 05:DD5F: 84        .byte con_84_jsr
- D 2 - I - 0x015D70 05:DD60: 4B E1     .word sub_84_E14B
- D 2 - I - 0x015D72 05:DD62: 84        .byte con_84_jsr
- D 2 - I - 0x015D73 05:DD63: 53 E1     .word sub_84_E153
- D 2 - I - 0x015D75 05:DD65: 60        .byte $60   ; 
- D 2 - I - 0x015D76 05:DD66: 4B        .byte $4B   ; 
- D 2 - I - 0x015D77 05:DD67: 8A        .byte $8A   ; 
- D 2 - I - 0x015D78 05:DD68: 10        .byte $10   ; 
- D 2 - I - 0x015D79 05:DD69: 00        .byte $00   ; 
- D 2 - I - 0x015D7A 05:DD6A: 02        .byte $02   ; 
- D 2 - I - 0x015D7B 05:DD6B: 8B        .byte $8B   ; 
- D 2 - I - 0x015D7C 05:DD6C: 01        .byte $01   ; 
- D 2 - I - 0x015D7D 05:DD6D: 82        .byte $82   ; 
- D 2 - I - 0x015D7E 05:DD6E: 06        .byte $06   ; 
- D 2 - I - 0x015D7F 05:DD6F: 12        .byte $12   ; 
- D 2 - I - 0x015D80 05:DD70: 19        .byte $19   ; 
- D 2 - I - 0x015D81 05:DD71: 1E        .byte $1E   ; 
- D 2 - I - 0x015D82 05:DD72: 25        .byte $25   ; 
- D 2 - I - 0x015D83 05:DD73: 2A        .byte $2A   ; 
- D 2 - I - 0x015D84 05:DD74: 31        .byte $31   ; 
- D 2 - I - 0x015D85 05:DD75: 36        .byte $36   ; 
- D 2 - I - 0x015D86 05:DD76: 3D        .byte $3D   ; 
- D 2 - I - 0x015D87 05:DD77: 39        .byte $39   ; 
- D 2 - I - 0x015D88 05:DD78: 33        .byte $33   ; 
- D 2 - I - 0x015D89 05:DD79: 2D        .byte $2D   ; 
- D 2 - I - 0x015D8A 05:DD7A: 27        .byte $27   ; 
- D 2 - I - 0x015D8B 05:DD7B: 21        .byte $21   ; 
- D 2 - I - 0x015D8C 05:DD7C: 1B        .byte $1B   ; 
- D 2 - I - 0x015D8D 05:DD7D: 15        .byte $15   ; 
- D 2 - I - 0x015D8E 05:DD7E: 82        .byte $82   ; 
- D 2 - I - 0x015D8F 05:DD7F: 00        .byte $00   ; 
- D 2 - I - 0x015D90 05:DD80: 0F        .byte $0F   ; 
- D 2 - I - 0x015D91 05:DD81: 03        .byte $03   ; 
- D 2 - I - 0x015D92 05:DD82: 8B        .byte $8B   ; 
- D 2 - I - 0x015D93 05:DD83: FF        .byte $FF   ; 
- D 2 - I - 0x015D94 05:DD84: 8E        .byte $8E   ; 
- D 2 - I - 0x015D95 05:DD85: B0        .byte $B0   ; 
- D 2 - I - 0x015D96 05:DD86: 92        .byte con_92_loop, $05
- D 2 - I - 0x015D98 05:DD88: 03 E2     .word off_92_E203
- D 2 - I - 0x015D9A 05:DD8A: 33        .byte $33   ; 
- D 2 - I - 0x015D9B 05:DD8B: D8        .byte $D8   ; 
- D 2 - I - 0x015D9C 05:DD8C: 8B        .byte $8B   ; 
- D 2 - I - 0x015D9D 05:DD8D: 00        .byte $00   ; 
- D 2 - I - 0x015D9E 05:DD8E: 33        .byte $33   ; 
- D 2 - I - 0x015D9F 05:DD8F: A8        .byte $A8   ; 
- D 2 - I - 0x015DA0 05:DD90: 33        .byte $33   ; 
- D 2 - I - 0x015DA1 05:DD91: 0C        .byte $0C   ; 
- D 2 - I - 0x015DA2 05:DD92: 8B        .byte $8B   ; 
- D 2 - I - 0x015DA3 05:DD93: 01        .byte $01   ; 
- D 2 - I - 0x015DA4 05:DD94: 8A        .byte $8A   ; 
- D 2 - I - 0x015DA5 05:DD95: 10        .byte $10   ; 
- D 2 - I - 0x015DA6 05:DD96: 00        .byte $00   ; 
- D 2 - I - 0x015DA7 05:DD97: 02        .byte $02   ; 
- D 2 - I - 0x015DA8 05:DD98: 84        .byte con_84_jsr
- D 2 - I - 0x015DA9 05:DD99: 6B E0     .word sub_84_E06B
- D 2 - I - 0x015DAB 05:DD9B: 94        .byte $94   ; 
- D 2 - I - 0x015DAC 05:DD9C: 01        .byte $01   ; 
- D 2 - I - 0x015DAD 05:DD9D: 93        .byte $93   ; 
- D 2 - I - 0x015DAE 05:DD9E: 28        .byte $28   ; 
- D 2 - I - 0x015DAF 05:DD9F: 92        .byte con_92_loop, $01
- D 2 - I - 0x015DB1 05:DDA1: A6 E1     .word off_92_E1A6
- D 2 - I - 0x015DB3 05:DDA3: 8F        .byte $8F   ; 
- D 2 - I - 0x015DB4 05:DDA4: 0C        .byte $0C   ; 
- D 2 - I - 0x015DB5 05:DDA5: 01        .byte $01   ; 
- D 2 - I - 0x015DB6 05:DDA6: 03        .byte $03   ; 
- D 2 - I - 0x015DB7 05:DDA7: 00        .byte $00   ; 
- D 2 - I - 0x015DB8 05:DDA8: 86        .byte $86   ; 
- D 2 - I - 0x015DB9 05:DDA9: F4        .byte $F4   ; 
- D 2 - I - 0x015DBA 05:DDAA: 80        .byte $80   ; 
- D 2 - I - 0x015DBB 05:DDAB: 02        .byte $02   ; 
- D 2 - I - 0x015DBC 05:DDAC: 27        .byte $27   ; 
- D 2 - I - 0x015DBD 05:DDAD: 0C        .byte $0C   ; 
- D 2 - I - 0x015DBE 05:DDAE: 29        .byte $29   ; 
- D 2 - I - 0x015DBF 05:DDAF: 0C        .byte $0C   ; 
- D 2 - I - 0x015DC0 05:DDB0: 2A        .byte $2A   ; 
- D 2 - I - 0x015DC1 05:DDB1: 30        .byte $30   ; 
- D 2 - I - 0x015DC2 05:DDB2: 2E        .byte $2E   ; 
- D 2 - I - 0x015DC3 05:DDB3: 0C        .byte $0C   ; 
- D 2 - I - 0x015DC4 05:DDB4: 93        .byte $93   ; 
- D 2 - I - 0x015DC5 05:DDB5: 06        .byte $06   ; 
- D 2 - I - 0x015DC6 05:DDB6: 31        .byte $31   ; 
- D 2 - I - 0x015DC7 05:DDB7: 0C        .byte $0C   ; 
- D 2 - I - 0x015DC8 05:DDB8: 93        .byte $93   ; 
- D 2 - I - 0x015DC9 05:DDB9: FF        .byte $FF   ; 
- D 2 - I - 0x015DCA 05:DDBA: 30        .byte $30   ; 
- D 2 - I - 0x015DCB 05:DDBB: 0C        .byte $0C   ; 
- D 2 - I - 0x015DCC 05:DDBC: 31        .byte $31   ; 
- D 2 - I - 0x015DCD 05:DDBD: 06        .byte $06   ; 
- D 2 - I - 0x015DCE 05:DDBE: 30        .byte $30   ; 
- D 2 - I - 0x015DCF 05:DDBF: 06        .byte $06   ; 
- D 2 - I - 0x015DD0 05:DDC0: 2E        .byte $2E   ; 
- D 2 - I - 0x015DD1 05:DDC1: 0C        .byte $0C   ; 
- D 2 - I - 0x015DD2 05:DDC2: 93        .byte $93   ; 
- D 2 - I - 0x015DD3 05:DDC3: 06        .byte $06   ; 
- D 2 - I - 0x015DD4 05:DDC4: 2C        .byte $2C   ; 
- D 2 - I - 0x015DD5 05:DDC5: 0C        .byte $0C   ; 
- D 2 - I - 0x015DD6 05:DDC6: 93        .byte $93   ; 
- D 2 - I - 0x015DD7 05:DDC7: FF        .byte $FF   ; 
- D 2 - I - 0x015DD8 05:DDC8: 2E        .byte $2E   ; 
- D 2 - I - 0x015DD9 05:DDC9: 0C        .byte $0C   ; 
- D 2 - I - 0x015DDA 05:DDCA: 2C        .byte $2C   ; 
- D 2 - I - 0x015DDB 05:DDCB: 0C        .byte $0C   ; 
- D 2 - I - 0x015DDC 05:DDCC: 29        .byte $29   ; 
- D 2 - I - 0x015DDD 05:DDCD: 0C        .byte $0C   ; 
- D 2 - I - 0x015DDE 05:DDCE: 2C        .byte $2C   ; 
- D 2 - I - 0x015DDF 05:DDCF: 0C        .byte $0C   ; 
- D 2 - I - 0x015DE0 05:DDD0: 2E        .byte $2E   ; 
- D 2 - I - 0x015DE1 05:DDD1: 18        .byte $18   ; 
- D 2 - I - 0x015DE2 05:DDD2: 31        .byte $31   ; 
- D 2 - I - 0x015DE3 05:DDD3: 18        .byte $18   ; 
- D 2 - I - 0x015DE4 05:DDD4: 33        .byte $33   ; 
- D 2 - I - 0x015DE5 05:DDD5: 0C        .byte $0C   ; 
- D 2 - I - 0x015DE6 05:DDD6: 93        .byte $93   ; 
- D 2 - I - 0x015DE7 05:DDD7: 06        .byte $06   ; 
- D 2 - I - 0x015DE8 05:DDD8: 2E        .byte $2E   ; 
- D 2 - I - 0x015DE9 05:DDD9: 0C        .byte $0C   ; 
- D 2 - I - 0x015DEA 05:DDDA: 93        .byte $93   ; 
- D 2 - I - 0x015DEB 05:DDDB: FF        .byte $FF   ; 
- D 2 - I - 0x015DEC 05:DDDC: 2E        .byte $2E   ; 
- D 2 - I - 0x015DED 05:DDDD: 0C        .byte $0C   ; 
- D 2 - I - 0x015DEE 05:DDDE: 93        .byte $93   ; 
- D 2 - I - 0x015DEF 05:DDDF: 06        .byte $06   ; 
- D 2 - I - 0x015DF0 05:DDE0: 2A        .byte $2A   ; 
- D 2 - I - 0x015DF1 05:DDE1: 0C        .byte $0C   ; 
- D 2 - I - 0x015DF2 05:DDE2: 93        .byte $93   ; 
- D 2 - I - 0x015DF3 05:DDE3: FF        .byte $FF   ; 
- D 2 - I - 0x015DF4 05:DDE4: 2C        .byte $2C   ; 
- D 2 - I - 0x015DF5 05:DDE5: 18        .byte $18   ; 
- D 2 - I - 0x015DF6 05:DDE6: 30        .byte $30   ; 
- D 2 - I - 0x015DF7 05:DDE7: 06        .byte $06   ; 
- D 2 - I - 0x015DF8 05:DDE8: 2E        .byte $2E   ; 
- D 2 - I - 0x015DF9 05:DDE9: 06        .byte $06   ; 
- D 2 - I - 0x015DFA 05:DDEA: 2C        .byte $2C   ; 
- D 2 - I - 0x015DFB 05:DDEB: 0C        .byte $0C   ; 
- D 2 - I - 0x015DFC 05:DDEC: 29        .byte $29   ; 
- D 2 - I - 0x015DFD 05:DDED: 0C        .byte $0C   ; 
- D 2 - I - 0x015DFE 05:DDEE: 2C        .byte $2C   ; 
- D 2 - I - 0x015DFF 05:DDEF: 06        .byte $06   ; 
- D 2 - I - 0x015E00 05:DDF0: 2E        .byte $2E   ; 
- D 2 - I - 0x015E01 05:DDF1: 06        .byte $06   ; 
- D 2 - I - 0x015E02 05:DDF2: 29        .byte $29   ; 
- D 2 - I - 0x015E03 05:DDF3: 0C        .byte $0C   ; 
- D 2 - I - 0x015E04 05:DDF4: 93        .byte $93   ; 
- D 2 - I - 0x015E05 05:DDF5: 06        .byte $06   ; 
- D 2 - I - 0x015E06 05:DDF6: 2E        .byte $2E   ; 
- D 2 - I - 0x015E07 05:DDF7: 0C        .byte $0C   ; 
- D 2 - I - 0x015E08 05:DDF8: 93        .byte $93   ; 
- D 2 - I - 0x015E09 05:DDF9: FF        .byte $FF   ; 
- D 2 - I - 0x015E0A 05:DDFA: 86        .byte $86   ; 
- D 2 - I - 0x015E0B 05:DDFB: 00        .byte $00   ; 
- D 2 - I - 0x015E0C 05:DDFC: 81        .byte $81   ; 
- D 2 - I - 0x015E0D 05:DDFD: 84        .byte con_84_jsr
- D 2 - I - 0x015E0E 05:DDFE: C7 E0     .word sub_84_E0C7
- D 2 - I - 0x015E10 05:DE00: 84        .byte con_84_jsr
- D 2 - I - 0x015E11 05:DE01: CF E0     .word sub_84_E0CF
- D 2 - I - 0x015E13 05:DE03: 86        .byte $86   ; 
- D 2 - I - 0x015E14 05:DE04: 07        .byte $07   ; 
- D 2 - I - 0x015E15 05:DE05: 84        .byte con_84_jsr
- D 2 - I - 0x015E16 05:DE06: CF E0     .word sub_84_E0CF
- D 2 - I - 0x015E18 05:DE08: 84        .byte con_84_jsr
- D 2 - I - 0x015E19 05:DE09: CF E0     .word sub_84_E0CF
- D 2 - I - 0x015E1B 05:DE0B: 80        .byte $80   ; 
- D 2 - I - 0x015E1C 05:DE0C: 02        .byte $02   ; 
- D 2 - I - 0x015E1D 05:DE0D: 84        .byte con_84_jsr
- D 2 - I - 0x015E1E 05:DE0E: 53 E1     .word sub_84_E153
- D 2 - I - 0x015E20 05:DE10: 81        .byte $81   ; 
- D 2 - I - 0x015E21 05:DE11: 8B        .byte $8B   ; 
- D 2 - I - 0x015E22 05:DE12: 01        .byte $01   ; 
- D 2 - I - 0x015E23 05:DE13: 8A        .byte $8A   ; 
- D 2 - I - 0x015E24 05:DE14: 00        .byte $00   ; 
- D 2 - I - 0x015E25 05:DE15: 00        .byte $00   ; 
- D 2 - I - 0x015E26 05:DE16: 02        .byte $02   ; 
- D 2 - I - 0x015E27 05:DE17: 05        .byte $05   ; 
- D 2 - I - 0x015E28 05:DE18: 0E        .byte $0E   ; 
- D 2 - I - 0x015E29 05:DE19: 8B        .byte $8B   ; 
- D 2 - I - 0x015E2A 05:DE1A: FF        .byte $FF   ; 
- D 2 - I - 0x015E2B 05:DE1B: 8A        .byte $8A   ; 
- D 2 - I - 0x015E2C 05:DE1C: 10        .byte $10   ; 
- D 2 - I - 0x015E2D 05:DE1D: 00        .byte $00   ; 
- D 2 - I - 0x015E2E 05:DE1E: 02        .byte $02   ; 
- D 2 - I - 0x015E2F 05:DE1F: 92        .byte con_92_loop, $01
- D 2 - I - 0x015E31 05:DE21: BF E1     .word off_92_E1BF
- D 2 - I - 0x015E33 05:DE23: 86        .byte $86   ; 
- D 2 - I - 0x015E34 05:DE24: 00        .byte $00   ; 
- D 2 - I - 0x015E35 05:DE25: 8B        .byte $8B   ; 
- D 2 - I - 0x015E36 05:DE26: FF        .byte $FF   ; 
- D 2 - I - 0x015E37 05:DE27: 94        .byte $94   ; 
- D 2 - I - 0x015E38 05:DE28: 01        .byte $01   ; 
- D 2 - I - 0x015E39 05:DE29: 84        .byte con_84_jsr
- D 2 - I - 0x015E3A 05:DE2A: BB DF     .word sub_84_DFBB
- D 2 - I - 0x015E3C 05:DE2C: 1B        .byte $1B   ; 
- D 2 - I - 0x015E3D 05:DE2D: 1C        .byte $1C   ; 
- D 2 - I - 0x015E3E 05:DE2E: 84        .byte con_84_jsr
- D 2 - I - 0x015E3F 05:DE2F: BB DF     .word sub_84_DFBB
- D 2 - I - 0x015E41 05:DE31: 1B        .byte $1B   ; 
- D 2 - I - 0x015E42 05:DE32: 0E        .byte $0E   ; 
- D 2 - I - 0x015E43 05:DE33: 8A        .byte $8A   ; 
- D 2 - I - 0x015E44 05:DE34: 00        .byte $00   ; 
- D 2 - I - 0x015E45 05:DE35: 00        .byte $00   ; 
- D 2 - I - 0x015E46 05:DE36: 02        .byte $02   ; 
- D 2 - I - 0x015E47 05:DE37: 8B        .byte $8B   ; 
- D 2 - I - 0x015E48 05:DE38: 01        .byte $01   ; 
- D 2 - I - 0x015E49 05:DE39: 8E        .byte $8E   ; 
- D 2 - I - 0x015E4A 05:DE3A: 30        .byte $30   ; 
- D 2 - I - 0x015E4B 05:DE3B: 46        .byte $46   ; 
- D 2 - I - 0x015E4C 05:DE3C: 66        .byte $66   ; 
- D 2 - I - 0x015E4D 05:DE3D: 8B        .byte $8B   ; 
- D 2 - I - 0x015E4E 05:DE3E: FF        .byte $FF   ; 
- D 2 - I - 0x015E4F 05:DE3F: 92        .byte con_92_loop, $02
- D 2 - I - 0x015E51 05:DE41: 5B E2     .word off_92_E25B
- D 2 - I - 0x015E53 05:DE43: 46        .byte $46   ; 
- D 2 - I - 0x015E54 05:DE44: 5A        .byte $5A   ; 
- D 2 - I - 0x015E55 05:DE45: 92        .byte con_92_loop, $01
- D 2 - I - 0x015E57 05:DE47: C5 E1     .word off_92_E1C5
- D 2 - I - 0x015E59 05:DE49: 3F        .byte $3F   ; 
- D 2 - I - 0x015E5A 05:DE4A: 18        .byte $18   ; 
- D 2 - I - 0x015E5B 05:DE4B: 3F        .byte $3F   ; 
- D 2 - I - 0x015E5C 05:DE4C: 48        .byte $48   ; 
- D 2 - I - 0x015E5D 05:DE4D: 8B        .byte $8B   ; 
- D 2 - I - 0x015E5E 05:DE4E: 01        .byte $01   ; 
- D 2 - I - 0x015E5F 05:DE4F: 8A        .byte $8A   ; 
- D 2 - I - 0x015E60 05:DE50: 10        .byte $10   ; 
- D 2 - I - 0x015E61 05:DE51: 70        .byte $70   ; 
- D 2 - I - 0x015E62 05:DE52: 00        .byte $00   ; 
- D 2 - I - 0x015E63 05:DE53: 27        .byte $27   ; 
- D 2 - I - 0x015E64 05:DE54: 18        .byte $18   ; 
- D 2 - I - 0x015E65 05:DE55: 8A        .byte $8A   ; 
- D 2 - I - 0x015E66 05:DE56: 10        .byte $10   ; 
- D 2 - I - 0x015E67 05:DE57: 70        .byte $70   ; 
- D 2 - I - 0x015E68 05:DE58: 00        .byte $00   ; 
- D 2 - I - 0x015E69 05:DE59: 2A        .byte $2A   ; 
- D 2 - I - 0x015E6A 05:DE5A: 18        .byte $18   ; 
- D 2 - I - 0x015E6B 05:DE5B: 8A        .byte $8A   ; 
- D 2 - I - 0x015E6C 05:DE5C: 20        .byte $20   ; 
- D 2 - I - 0x015E6D 05:DE5D: 70        .byte $70   ; 
- D 2 - I - 0x015E6E 05:DE5E: 00        .byte $00   ; 
- D 2 - I - 0x015E6F 05:DE5F: 29        .byte $29   ; 
- D 2 - I - 0x015E70 05:DE60: 18        .byte $18   ; 
- D 2 - I - 0x015E71 05:DE61: 8A        .byte $8A   ; 
- D 2 - I - 0x015E72 05:DE62: 30        .byte $30   ; 
- D 2 - I - 0x015E73 05:DE63: 70        .byte $70   ; 
- D 2 - I - 0x015E74 05:DE64: 00        .byte $00   ; 
- D 2 - I - 0x015E75 05:DE65: 2E        .byte $2E   ; 
- D 2 - I - 0x015E76 05:DE66: 18        .byte $18   ; 
- D 2 - I - 0x015E77 05:DE67: 88        .byte con_88_jmp
- D 2 - I - 0x015E78 05:DE68: 2F DD     .word loc_88_DD2F



_off020_DE6A_01_gameplay:
loc_88_DE6A:
- D 2 - I - 0x015E7A 05:DE6A: 80        .byte $80   ; 
- D 2 - I - 0x015E7B 05:DE6B: 03        .byte $03   ; 
- D 2 - I - 0x015E7C 05:DE6C: 60        .byte $60   ; 
- D 2 - I - 0x015E7D 05:DE6D: C0        .byte $C0   ; 
- D 2 - I - 0x015E7E 05:DE6E: 81        .byte $81   ; 
- D 2 - I - 0x015E7F 05:DE6F: 80        .byte $80   ; 
- D 2 - I - 0x015E80 05:DE70: 02        .byte $02   ; 
- D 2 - I - 0x015E81 05:DE71: 84        .byte con_84_jsr
- D 2 - I - 0x015E82 05:DE72: E0 E0     .word sub_84_E0E0
- D 2 - I - 0x015E84 05:DE74: 60        .byte $60   ; 
- D 2 - I - 0x015E85 05:DE75: 0C        .byte $0C   ; 
- D 2 - I - 0x015E86 05:DE76: 84        .byte con_84_jsr
- D 2 - I - 0x015E87 05:DE77: E0 E0     .word sub_84_E0E0
- D 2 - I - 0x015E89 05:DE79: 60        .byte $60   ; 
- D 2 - I - 0x015E8A 05:DE7A: 9C        .byte $9C   ; 
- D 2 - I - 0x015E8B 05:DE7B: 81        .byte $81   ; 
- D 2 - I - 0x015E8C 05:DE7C: 84        .byte con_84_jsr
- D 2 - I - 0x015E8D 05:DE7D: E0 E0     .word sub_84_E0E0
- D 2 - I - 0x015E8F 05:DE7F: 60        .byte $60   ; 
- D 2 - I - 0x015E90 05:DE80: B4        .byte $B4   ; 
- D 2 - I - 0x015E91 05:DE81: 80        .byte $80   ; 
- D 2 - I - 0x015E92 05:DE82: 07        .byte $07   ; 
- D 2 - I - 0x015E93 05:DE83: 84        .byte con_84_jsr
- D 2 - I - 0x015E94 05:DE84: E0 E0     .word sub_84_E0E0
- D 2 - I - 0x015E96 05:DE86: 60        .byte $60   ; 
- D 2 - I - 0x015E97 05:DE87: 0C        .byte $0C   ; 
- D 2 - I - 0x015E98 05:DE88: 84        .byte con_84_jsr
- D 2 - I - 0x015E99 05:DE89: E0 E0     .word sub_84_E0E0
- D 2 - I - 0x015E9B 05:DE8B: 60        .byte $60   ; 
- D 2 - I - 0x015E9C 05:DE8C: 9C        .byte $9C   ; 
- D 2 - I - 0x015E9D 05:DE8D: 81        .byte $81   ; 
- D 2 - I - 0x015E9E 05:DE8E: 80        .byte $80   ; 
- D 2 - I - 0x015E9F 05:DE8F: 08        .byte $08   ; 
- D 2 - I - 0x015EA0 05:DE90: 84        .byte con_84_jsr
- D 2 - I - 0x015EA1 05:DE91: 38 E0     .word sub_84_E038
- D 2 - I - 0x015EA3 05:DE93: 81        .byte $81   ; 
- D 2 - I - 0x015EA4 05:DE94: 80        .byte $80   ; 
- D 2 - I - 0x015EA5 05:DE95: 02        .byte $02   ; 
- D 2 - I - 0x015EA6 05:DE96: 84        .byte con_84_jsr
- D 2 - I - 0x015EA7 05:DE97: E0 E0     .word sub_84_E0E0
- D 2 - I - 0x015EA9 05:DE99: 60        .byte $60   ; 
- D 2 - I - 0x015EAA 05:DE9A: 0C        .byte $0C   ; 
- D 2 - I - 0x015EAB 05:DE9B: 84        .byte con_84_jsr
- D 2 - I - 0x015EAC 05:DE9C: E0 E0     .word sub_84_E0E0
- D 2 - I - 0x015EAE 05:DE9E: 60        .byte $60   ; 
- D 2 - I - 0x015EAF 05:DE9F: 9C        .byte $9C   ; 
- D 2 - I - 0x015EB0 05:DEA0: 81        .byte $81   ; 
- D 2 - I - 0x015EB1 05:DEA1: 86        .byte $86   ; 
- D 2 - I - 0x015EB2 05:DEA2: FB        .byte $FB   ; 
- D 2 - I - 0x015EB3 05:DEA3: 80        .byte $80   ; 
- D 2 - I - 0x015EB4 05:DEA4: 02        .byte $02   ; 
- D 2 - I - 0x015EB5 05:DEA5: 84        .byte con_84_jsr
- D 2 - I - 0x015EB6 05:DEA6: E0 E0     .word sub_84_E0E0
- D 2 - I - 0x015EB8 05:DEA8: 90        .byte $90   ; 
- D 2 - I - 0x015EB9 05:DEA9: 60        .byte $60   ; 
- D 2 - I - 0x015EBA 05:DEAA: 0C        .byte $0C   ; 
- D 2 - I - 0x015EBB 05:DEAB: 84        .byte con_84_jsr
- D 2 - I - 0x015EBC 05:DEAC: E0 E0     .word sub_84_E0E0
- D 2 - I - 0x015EBE 05:DEAE: 90        .byte $90   ; 
- D 2 - I - 0x015EBF 05:DEAF: 60        .byte $60   ; 
- D 2 - I - 0x015EC0 05:DEB0: 9C        .byte $9C   ; 
- D 2 - I - 0x015EC1 05:DEB1: 81        .byte $81   ; 
- D 2 - I - 0x015EC2 05:DEB2: 86        .byte $86   ; 
- D 2 - I - 0x015EC3 05:DEB3: 00        .byte $00   ; 
- D 2 - I - 0x015EC4 05:DEB4: 80        .byte $80   ; 
- D 2 - I - 0x015EC5 05:DEB5: 04        .byte $04   ; 
- D 2 - I - 0x015EC6 05:DEB6: 84        .byte con_84_jsr
- D 2 - I - 0x015EC7 05:DEB7: E0 E0     .word sub_84_E0E0
- D 2 - I - 0x015EC9 05:DEB9: 60        .byte $60   ; 
- D 2 - I - 0x015ECA 05:DEBA: 0C        .byte $0C   ; 
- D 2 - I - 0x015ECB 05:DEBB: 84        .byte con_84_jsr
- D 2 - I - 0x015ECC 05:DEBC: E0 E0     .word sub_84_E0E0
- D 2 - I - 0x015ECE 05:DEBE: 60        .byte $60   ; 
- D 2 - I - 0x015ECF 05:DEBF: 9C        .byte $9C   ; 
- D 2 - I - 0x015ED0 05:DEC0: 81        .byte $81   ; 
- D 2 - I - 0x015ED1 05:DEC1: 80        .byte $80   ; 
- D 2 - I - 0x015ED2 05:DEC2: 04        .byte $04   ; 
- D 2 - I - 0x015ED3 05:DEC3: 84        .byte con_84_jsr
- D 2 - I - 0x015ED4 05:DEC4: 38 E0     .word sub_84_E038
- D 2 - I - 0x015ED6 05:DEC6: 81        .byte $81   ; 
- D 2 - I - 0x015ED7 05:DEC7: 80        .byte $80   ; 
- D 2 - I - 0x015ED8 05:DEC8: 02        .byte $02   ; 
- D 2 - I - 0x015ED9 05:DEC9: 84        .byte con_84_jsr
- D 2 - I - 0x015EDA 05:DECA: E0 E0     .word sub_84_E0E0
- D 2 - I - 0x015EDC 05:DECC: 60        .byte $60   ; 
- D 2 - I - 0x015EDD 05:DECD: 0C        .byte $0C   ; 
- D 2 - I - 0x015EDE 05:DECE: 84        .byte con_84_jsr
- D 2 - I - 0x015EDF 05:DECF: E0 E0     .word sub_84_E0E0
- D 2 - I - 0x015EE1 05:DED1: 60        .byte $60   ; 
- D 2 - I - 0x015EE2 05:DED2: 9C        .byte $9C   ; 
- D 2 - I - 0x015EE3 05:DED3: 81        .byte $81   ; 
- D 2 - I - 0x015EE4 05:DED4: 88        .byte con_88_jmp
- D 2 - I - 0x015EE5 05:DED5: 6A DE     .word loc_88_DE6A



_off021_DED7_01_gameplay:
loc_88_DED7:
- D 2 - I - 0x015EE7 05:DED7: 86        .byte $86   ; 
- D 2 - I - 0x015EE8 05:DED8: 93        .byte $93   ; 
- D 2 - I - 0x015EE9 05:DED9: FF        .byte $FF   ; 
- D 2 - I - 0x015EEA 05:DEDA: 94        .byte $94   ; 
- D 2 - I - 0x015EEB 05:DEDB: FF        .byte $FF   ; 
- D 2 - I - 0x015EEC 05:DEDC: 8B        .byte $8B   ; 
- D 2 - I - 0x015EED 05:DEDD: FF        .byte $FF   ; 
- D 2 - I - 0x015EEE 05:DEDE: 92        .byte con_92_loop, $01
- D 2 - I - 0x015EF0 05:DEE0: C5 E1     .word off_92_E1C5
- D 2 - I - 0x015EF2 05:DEE2: 80        .byte $80   ; 
- D 2 - I - 0x015EF3 05:DEE3: 03        .byte $03   ; 
- D 2 - I - 0x015EF4 05:DEE4: 00        .byte $00   ; 
- D 2 - I - 0x015EF5 05:DEE5: 18        .byte $18   ; 
- D 2 - I - 0x015EF6 05:DEE6: 00        .byte $00   ; 
- D 2 - I - 0x015EF7 05:DEE7: 0C        .byte $0C   ; 
- D 2 - I - 0x015EF8 05:DEE8: 00        .byte $00   ; 
- D 2 - I - 0x015EF9 05:DEE9: 0C        .byte $0C   ; 
- D 2 - I - 0x015EFA 05:DEEA: 00        .byte $00   ; 
- D 2 - I - 0x015EFB 05:DEEB: 0C        .byte $0C   ; 
- D 2 - I - 0x015EFC 05:DEEC: 00        .byte $00   ; 
- D 2 - I - 0x015EFD 05:DEED: 0C        .byte $0C   ; 
- D 2 - I - 0x015EFE 05:DEEE: 00        .byte $00   ; 
- D 2 - I - 0x015EFF 05:DEEF: 18        .byte $18   ; 
- D 2 - I - 0x015F00 05:DEF0: 00        .byte $00   ; 
- D 2 - I - 0x015F01 05:DEF1: 18        .byte $18   ; 
- D 2 - I - 0x015F02 05:DEF2: 00        .byte $00   ; 
- D 2 - I - 0x015F03 05:DEF3: 0C        .byte $0C   ; 
- D 2 - I - 0x015F04 05:DEF4: 00        .byte $00   ; 
- D 2 - I - 0x015F05 05:DEF5: 0C        .byte $0C   ; 
- D 2 - I - 0x015F06 05:DEF6: 00        .byte $00   ; 
- D 2 - I - 0x015F07 05:DEF7: 18        .byte $18   ; 
- D 2 - I - 0x015F08 05:DEF8: 00        .byte $00   ; 
- D 2 - I - 0x015F09 05:DEF9: 18        .byte $18   ; 
- D 2 - I - 0x015F0A 05:DEFA: 81        .byte $81   ; 
- D 2 - I - 0x015F0B 05:DEFB: 80        .byte $80   ; 
- D 2 - I - 0x015F0C 05:DEFC: 02        .byte $02   ; 
- D 2 - I - 0x015F0D 05:DEFD: 01        .byte $01   ; 
- D 2 - I - 0x015F0E 05:DEFE: 18        .byte $18   ; 
- D 2 - I - 0x015F0F 05:DEFF: 01        .byte $01   ; 
- D 2 - I - 0x015F10 05:DF00: 0C        .byte $0C   ; 
- D 2 - I - 0x015F11 05:DF01: 00        .byte $00   ; 
- D 2 - I - 0x015F12 05:DF02: 0C        .byte $0C   ; 
- D 2 - I - 0x015F13 05:DF03: 00        .byte $00   ; 
- D 2 - I - 0x015F14 05:DF04: 0C        .byte $0C   ; 
- D 2 - I - 0x015F15 05:DF05: 00        .byte $00   ; 
- D 2 - I - 0x015F16 05:DF06: 0C        .byte $0C   ; 
- D 2 - I - 0x015F17 05:DF07: 00        .byte $00   ; 
- D 2 - I - 0x015F18 05:DF08: 18        .byte $18   ; 
- D 2 - I - 0x015F19 05:DF09: 00        .byte $00   ; 
- D 2 - I - 0x015F1A 05:DF0A: 18        .byte $18   ; 
- D 2 - I - 0x015F1B 05:DF0B: 00        .byte $00   ; 
- D 2 - I - 0x015F1C 05:DF0C: 0C        .byte $0C   ; 
- D 2 - I - 0x015F1D 05:DF0D: 00        .byte $00   ; 
- D 2 - I - 0x015F1E 05:DF0E: 0C        .byte $0C   ; 
- D 2 - I - 0x015F1F 05:DF0F: 00        .byte $00   ; 
- D 2 - I - 0x015F20 05:DF10: 18        .byte $18   ; 
- D 2 - I - 0x015F21 05:DF11: 00        .byte $00   ; 
- D 2 - I - 0x015F22 05:DF12: 18        .byte $18   ; 
- D 2 - I - 0x015F23 05:DF13: 81        .byte $81   ; 
- D 2 - I - 0x015F24 05:DF14: 92        .byte con_92_loop, $02
- D 2 - I - 0x015F26 05:DF16: C5 E1     .word off_92_E1C5
- D 2 - I - 0x015F28 05:DF18: 01        .byte $01   ; 
- D 2 - I - 0x015F29 05:DF19: C0        .byte $C0   ; 
- D 2 - I - 0x015F2A 05:DF1A: 92        .byte con_92_loop, $02
- D 2 - I - 0x015F2C 05:DF1C: 2B E2     .word off_92_E22B
- D 2 - I - 0x015F2E 05:DF1E: 84        .byte con_84_jsr
- D 2 - I - 0x015F2F 05:DF1F: 34 E1     .word sub_84_E134
- D 2 - I - 0x015F31 05:DF21: 92        .byte con_92_loop, $01
- D 2 - I - 0x015F33 05:DF23: C5 E1     .word off_92_E1C5
- D 2 - I - 0x015F35 05:DF25: 80        .byte $80   ; 
- D 2 - I - 0x015F36 05:DF26: 05        .byte $05   ; 
- D 2 - I - 0x015F37 05:DF27: 84        .byte con_84_jsr
- D 2 - I - 0x015F38 05:DF28: 34 E1     .word sub_84_E134
- D 2 - I - 0x015F3A 05:DF2A: 81        .byte $81   ; 
- D 2 - I - 0x015F3B 05:DF2B: 01        .byte $01   ; 
- D 2 - I - 0x015F3C 05:DF2C: 18        .byte $18   ; 
- D 2 - I - 0x015F3D 05:DF2D: 01        .byte $01   ; 
- D 2 - I - 0x015F3E 05:DF2E: A8        .byte $A8   ; 
- D 2 - I - 0x015F3F 05:DF2F: 01        .byte $01   ; 
- D 2 - I - 0x015F40 05:DF30: 18        .byte $18   ; 
- D 2 - I - 0x015F41 05:DF31: 01        .byte $01   ; 
- D 2 - I - 0x015F42 05:DF32: 18        .byte $18   ; 
- D 2 - I - 0x015F43 05:DF33: 01        .byte $01   ; 
- D 2 - I - 0x015F44 05:DF34: 18        .byte $18   ; 
- D 2 - I - 0x015F45 05:DF35: 01        .byte $01   ; 
- D 2 - I - 0x015F46 05:DF36: 18        .byte $18   ; 
- D 2 - I - 0x015F47 05:DF37: 01        .byte $01   ; 
- D 2 - I - 0x015F48 05:DF38: 0C        .byte $0C   ; 
- D 2 - I - 0x015F49 05:DF39: 01        .byte $01   ; 
- D 2 - I - 0x015F4A 05:DF3A: 0C        .byte $0C   ; 
- D 2 - I - 0x015F4B 05:DF3B: 01        .byte $01   ; 
- D 2 - I - 0x015F4C 05:DF3C: 18        .byte $18   ; 
- D 2 - I - 0x015F4D 05:DF3D: 8A        .byte $8A   ; 
- D 2 - I - 0x015F4E 05:DF3E: F0        .byte $F0   ; 
- D 2 - I - 0x015F4F 05:DF3F: 02        .byte $02   ; 
- D 2 - I - 0x015F50 05:DF40: 01        .byte $01   ; 
- D 2 - I - 0x015F51 05:DF41: 8B        .byte $8B   ; 
- D 2 - I - 0x015F52 05:DF42: 01        .byte $01   ; 
- D 2 - I - 0x015F53 05:DF43: 00        .byte $00   ; 
- D 2 - I - 0x015F54 05:DF44: 24        .byte $24   ; 
- D 2 - I - 0x015F55 05:DF45: 8B        .byte $8B   ; 
- D 2 - I - 0x015F56 05:DF46: FF        .byte $FF   ; 
- D 2 - I - 0x015F57 05:DF47: 92        .byte con_92_loop, $01
- D 2 - I - 0x015F59 05:DF49: DC E1     .word off_92_E1DC
- D 2 - I - 0x015F5B 05:DF4B: 00        .byte $00   ; 
- D 2 - I - 0x015F5C 05:DF4C: 01        .byte $01   ; 
- D 2 - I - 0x015F5D 05:DF4D: 01        .byte $01   ; 
- D 2 - I - 0x015F5E 05:DF4E: 0B        .byte $0B   ; 
- D 2 - I - 0x015F5F 05:DF4F: 80        .byte $80   ; 
- D 2 - I - 0x015F60 05:DF50: 03        .byte $03   ; 
- D 2 - I - 0x015F61 05:DF51: 84        .byte con_84_jsr
- D 2 - I - 0x015F62 05:DF52: 9D E2     .word sub_84_E29D
- D 2 - I - 0x015F64 05:DF54: 81        .byte $81   ; 
- D 2 - I - 0x015F65 05:DF55: 8C        .byte $8C   ; 
- D 2 - I - 0x015F66 05:DF56: 80        .byte $80   ; 
- D 2 - I - 0x015F67 05:DF57: 01        .byte $01   ; 
- D 2 - I - 0x015F68 05:DF58: FF        .byte $FF   ; 
- D 2 - I - 0x015F69 05:DF59: 80        .byte $80   ; 
- D 2 - I - 0x015F6A 05:DF5A: 04        .byte $04   ; 
- D 2 - I - 0x015F6B 05:DF5B: 84        .byte con_84_jsr
- D 2 - I - 0x015F6C 05:DF5C: 9D E2     .word sub_84_E29D
- D 2 - I - 0x015F6E 05:DF5E: 81        .byte $81   ; 
- D 2 - I - 0x015F6F 05:DF5F: 8C        .byte $8C   ; 
- D 2 - I - 0x015F70 05:DF60: 00        .byte $00   ; 
- D 2 - I - 0x015F71 05:DF61: 00        .byte $00   ; 
- D 2 - I - 0x015F72 05:DF62: 00        .byte $00   ; 
- D 2 - I - 0x015F73 05:DF63: 80        .byte $80   ; 
- D 2 - I - 0x015F74 05:DF64: 04        .byte $04   ; 
- D 2 - I - 0x015F75 05:DF65: 92        .byte con_92_loop, $01
- D 2 - I - 0x015F77 05:DF67: C5 E1     .word off_92_E1C5
- D 2 - I - 0x015F79 05:DF69: 01        .byte $01   ; 
- D 2 - I - 0x015F7A 05:DF6A: 30        .byte $30   ; 
- D 2 - I - 0x015F7B 05:DF6B: 00        .byte $00   ; 
- D 2 - I - 0x015F7C 05:DF6C: 0C        .byte $0C   ; 
- D 2 - I - 0x015F7D 05:DF6D: 00        .byte $00   ; 
- D 2 - I - 0x015F7E 05:DF6E: 0C        .byte $0C   ; 
- D 2 - I - 0x015F7F 05:DF6F: 00        .byte $00   ; 
- D 2 - I - 0x015F80 05:DF70: 64        .byte $64   ; 
- D 2 - I - 0x015F81 05:DF71: 92        .byte con_92_loop, $01
- D 2 - I - 0x015F83 05:DF73: 14 E2     .word off_92_E214
- D 2 - I - 0x015F85 05:DF75: 01        .byte $01   ; 
- D 2 - I - 0x015F86 05:DF76: 14        .byte $14   ; 
- D 2 - I - 0x015F87 05:DF77: 81        .byte $81   ; 
- D 2 - I - 0x015F88 05:DF78: 80        .byte $80   ; 
- D 2 - I - 0x015F89 05:DF79: 02        .byte $02   ; 
- D 2 - I - 0x015F8A 05:DF7A: 84        .byte con_84_jsr
- D 2 - I - 0x015F8B 05:DF7B: 9D E2     .word sub_84_E29D
- D 2 - I - 0x015F8D 05:DF7D: 81        .byte $81   ; 
- D 2 - I - 0x015F8E 05:DF7E: 8C        .byte $8C   ; 
- D 2 - I - 0x015F8F 05:DF7F: 80        .byte $80   ; 
- D 2 - I - 0x015F90 05:DF80: 01        .byte $01   ; 
- D 2 - I - 0x015F91 05:DF81: FF        .byte $FF   ; 
- D 2 - I - 0x015F92 05:DF82: 80        .byte $80   ; 
- D 2 - I - 0x015F93 05:DF83: 06        .byte $06   ; 
- D 2 - I - 0x015F94 05:DF84: 84        .byte con_84_jsr
- D 2 - I - 0x015F95 05:DF85: 9D E2     .word sub_84_E29D
- D 2 - I - 0x015F97 05:DF87: 81        .byte $81   ; 
- D 2 - I - 0x015F98 05:DF88: 92        .byte con_92_loop, $01
- D 2 - I - 0x015F9A 05:DF8A: C5 E1     .word off_92_E1C5
- D 2 - I - 0x015F9C 05:DF8C: 01        .byte $01   ; 
- D 2 - I - 0x015F9D 05:DF8D: 18        .byte $18   ; 
- D 2 - I - 0x015F9E 05:DF8E: 01        .byte $01   ; 
- D 2 - I - 0x015F9F 05:DF8F: 18        .byte $18   ; 
- D 2 - I - 0x015FA0 05:DF90: 87        .byte $87   ; 
- D 2 - I - 0x015FA1 05:DF91: 8B        .byte $8B   ; 
- D 2 - I - 0x015FA2 05:DF92: 01        .byte $01   ; 
- D 2 - I - 0x015FA3 05:DF93: 8A        .byte $8A   ; 
- D 2 - I - 0x015FA4 05:DF94: 20        .byte $20   ; 
- D 2 - I - 0x015FA5 05:DF95: 00        .byte $00   ; 
- D 2 - I - 0x015FA6 05:DF96: 01        .byte $01   ; 
- D 2 - I - 0x015FA7 05:DF97: 09        .byte $09   ; 
- D 2 - I - 0x015FA8 05:DF98: 0C        .byte $0C   ; 
- D 2 - I - 0x015FA9 05:DF99: 09        .byte $09   ; 
- D 2 - I - 0x015FAA 05:DF9A: 0C        .byte $0C   ; 
- D 2 - I - 0x015FAB 05:DF9B: 09        .byte $09   ; 
- D 2 - I - 0x015FAC 05:DF9C: 18        .byte $18   ; 
- D 2 - I - 0x015FAD 05:DF9D: 86        .byte $86   ; 
- D 2 - I - 0x015FAE 05:DF9E: 8B        .byte $8B   ; 
- D 2 - I - 0x015FAF 05:DF9F: FF        .byte $FF   ; 
- D 2 - I - 0x015FB0 05:DFA0: 92        .byte con_92_loop, $02
- D 2 - I - 0x015FB2 05:DFA2: 2B E2     .word off_92_E22B
- D 2 - I - 0x015FB4 05:DFA4: 8C        .byte $8C   ; 
- D 2 - I - 0x015FB5 05:DFA5: 00        .byte $00   ; 
- D 2 - I - 0x015FB6 05:DFA6: 00        .byte $00   ; 
- D 2 - I - 0x015FB7 05:DFA7: 00        .byte $00   ; 
- D 2 - I - 0x015FB8 05:DFA8: 01        .byte $01   ; 
- D 2 - I - 0x015FB9 05:DFA9: 4E        .byte $4E   ; 
- D 2 - I - 0x015FBA 05:DFAA: 92        .byte con_92_loop, $01
- D 2 - I - 0x015FBC 05:DFAC: 14 E2     .word off_92_E214
- D 2 - I - 0x015FBE 05:DFAE: 01        .byte $01   ; 
- D 2 - I - 0x015FBF 05:DFAF: 12        .byte $12   ; 
- D 2 - I - 0x015FC0 05:DFB0: 92        .byte con_92_loop, $01
- D 2 - I - 0x015FC2 05:DFB2: C5 E1     .word off_92_E1C5
- D 2 - I - 0x015FC4 05:DFB4: 01        .byte $01   ; 
- D 2 - I - 0x015FC5 05:DFB5: 18        .byte $18   ; 
- D 2 - I - 0x015FC6 05:DFB6: 01        .byte $01   ; 
- D 2 - I - 0x015FC7 05:DFB7: A8        .byte $A8   ; 
- D 2 - I - 0x015FC8 05:DFB8: 88        .byte con_88_jmp
- D 2 - I - 0x015FC9 05:DFB9: D7 DE     .word loc_88_DED7



sub_84_DFBB:
- D 2 - I - 0x015FCB 05:DFBB: 93        .byte $93   ; 
- D 2 - I - 0x015FCC 05:DFBC: FF        .byte $FF   ; 
- D 2 - I - 0x015FCD 05:DFBD: 8F        .byte $8F   ; 
- D 2 - I - 0x015FCE 05:DFBE: 0C        .byte $0C   ; 
- D 2 - I - 0x015FCF 05:DFBF: 01        .byte $01   ; 
- D 2 - I - 0x015FD0 05:DFC0: 03        .byte $03   ; 
- D 2 - I - 0x015FD1 05:DFC1: 00        .byte $00   ; 
- D 2 - I - 0x015FD2 05:DFC2: 8E        .byte $8E   ; 
- D 2 - I - 0x015FD3 05:DFC3: B0        .byte $B0   ; 
- D 2 - I - 0x015FD4 05:DFC4: 27        .byte $27   ; 
- D 2 - I - 0x015FD5 05:DFC5: 24        .byte $24   ; 
- D 2 - I - 0x015FD6 05:DFC6: 29        .byte $29   ; 
- D 2 - I - 0x015FD7 05:DFC7: 0C        .byte $0C   ; 
- D 2 - I - 0x015FD8 05:DFC8: 2A        .byte $2A   ; 
- D 2 - I - 0x015FD9 05:DFC9: 24        .byte $24   ; 
- D 2 - I - 0x015FDA 05:DFCA: 29        .byte $29   ; 
- D 2 - I - 0x015FDB 05:DFCB: 0C        .byte $0C   ; 
- D 2 - I - 0x015FDC 05:DFCC: 27        .byte $27   ; 
- D 2 - I - 0x015FDD 05:DFCD: 18        .byte $18   ; 
- D 2 - I - 0x015FDE 05:DFCE: 25        .byte $25   ; 
- D 2 - I - 0x015FDF 05:DFCF: 18        .byte $18   ; 
- D 2 - I - 0x015FE0 05:DFD0: 22        .byte $22   ; 
- D 2 - I - 0x015FE1 05:DFD1: 18        .byte $18   ; 
- D 2 - I - 0x015FE2 05:DFD2: 25        .byte $25   ; 
- D 2 - I - 0x015FE3 05:DFD3: 18        .byte $18   ; 
- D 2 - I - 0x015FE4 05:DFD4: 8F        .byte $8F   ; 
- D 2 - I - 0x015FE5 05:DFD5: 00        .byte $00   ; 
- D 2 - I - 0x015FE6 05:DFD6: 00        .byte $00   ; 
- D 2 - I - 0x015FE7 05:DFD7: 00        .byte $00   ; 
- D 2 - I - 0x015FE8 05:DFD8: 00        .byte $00   ; 
- D 2 - I - 0x015FE9 05:DFD9: 8E        .byte $8E   ; 
- D 2 - I - 0x015FEA 05:DFDA: F0        .byte $F0   ; 
- D 2 - I - 0x015FEB 05:DFDB: 87        .byte $87   ; 
- D 2 - I - 0x015FEC 05:DFDC: 05        .byte $05   ; 
- D 2 - I - 0x015FED 05:DFDD: 1B        .byte $1B   ; 
- D 2 - I - 0x015FEE 05:DFDE: 02        .byte $02   ; 
- D 2 - I - 0x015FEF 05:DFDF: 8B        .byte $8B   ; 
- D 2 - I - 0x015FF0 05:DFE0: 01        .byte $01   ; 
- D 2 - I - 0x015FF1 05:DFE1: 87        .byte $87   ; 
- D 2 - I - 0x015FF2 05:DFE2: 04        .byte $04   ; 
- D 2 - I - 0x015FF3 05:DFE3: 1B        .byte $1B   ; 
- D 2 - I - 0x015FF4 05:DFE4: 03        .byte $03   ; 
- D 2 - I - 0x015FF5 05:DFE5: 87        .byte $87   ; 
- D 2 - I - 0x015FF6 05:DFE6: 03        .byte $03   ; 
- D 2 - I - 0x015FF7 05:DFE7: 1B        .byte $1B   ; 
- D 2 - I - 0x015FF8 05:DFE8: 04        .byte $04   ; 
- D 2 - I - 0x015FF9 05:DFE9: 87        .byte $87   ; 
- D 2 - I - 0x015FFA 05:DFEA: 02        .byte $02   ; 
- D 2 - I - 0x015FFB 05:DFEB: 1B        .byte $1B   ; 
- D 2 - I - 0x015FFC 05:DFEC: 05        .byte $05   ; 
- D 2 - I - 0x015FFD 05:DFED: 87        .byte $87   ; 
- D 2 - I - 0x015FFE 05:DFEE: 01        .byte $01   ; 
- D 2 - I - 0x015FFF 05:DFEF: 1B        .byte $1B   ; 
- D 2 - I - 0x016000 05:DFF0: 06        .byte $06   ; 
- D 2 - I - 0x016001 05:DFF1: 87        .byte $87   ; 
- D 2 - I - 0x016002 05:DFF2: 00        .byte $00   ; 
- D 2 - I - 0x016003 05:DFF3: 8B        .byte $8B   ; 
- D 2 - I - 0x016004 05:DFF4: FF        .byte $FF   ; 
- D 2 - I - 0x016005 05:DFF5: 1B        .byte $1B   ; 
- D 2 - I - 0x016006 05:DFF6: 10        .byte $10   ; 
- D 2 - I - 0x016007 05:DFF7: 1D        .byte $1D   ; 
- D 2 - I - 0x016008 05:DFF8: 0C        .byte $0C   ; 
- D 2 - I - 0x016009 05:DFF9: 87        .byte $87   ; 
- D 2 - I - 0x01600A 05:DFFA: 05        .byte $05   ; 
- D 2 - I - 0x01600B 05:DFFB: 1E        .byte $1E   ; 
- D 2 - I - 0x01600C 05:DFFC: 02        .byte $02   ; 
- D 2 - I - 0x01600D 05:DFFD: 8B        .byte $8B   ; 
- D 2 - I - 0x01600E 05:DFFE: 01        .byte $01   ; 
- D 2 - I - 0x01600F 05:DFFF: 87        .byte $87   ; 
- D 3 - I - 0x016010 05:E000: 04        .byte $04   ; 
- D 3 - I - 0x016011 05:E001: 1E        .byte $1E   ; 
- D 3 - I - 0x016012 05:E002: 03        .byte $03   ; 
- D 3 - I - 0x016013 05:E003: 87        .byte $87   ; 
- D 3 - I - 0x016014 05:E004: 03        .byte $03   ; 
- D 3 - I - 0x016015 05:E005: 1E        .byte $1E   ; 
- D 3 - I - 0x016016 05:E006: 04        .byte $04   ; 
- D 3 - I - 0x016017 05:E007: 87        .byte $87   ; 
- D 3 - I - 0x016018 05:E008: 02        .byte $02   ; 
- D 3 - I - 0x016019 05:E009: 1E        .byte $1E   ; 
- D 3 - I - 0x01601A 05:E00A: 05        .byte $05   ; 
- D 3 - I - 0x01601B 05:E00B: 87        .byte $87   ; 
- D 3 - I - 0x01601C 05:E00C: 01        .byte $01   ; 
- D 3 - I - 0x01601D 05:E00D: 1E        .byte $1E   ; 
- D 3 - I - 0x01601E 05:E00E: 06        .byte $06   ; 
- D 3 - I - 0x01601F 05:E00F: 87        .byte $87   ; 
- D 3 - I - 0x016020 05:E010: 00        .byte $00   ; 
- D 3 - I - 0x016021 05:E011: 8B        .byte $8B   ; 
- D 3 - I - 0x016022 05:E012: FF        .byte $FF   ; 
- D 3 - I - 0x016023 05:E013: 1E        .byte $1E   ; 
- D 3 - I - 0x016024 05:E014: 10        .byte $10   ; 
- D 3 - I - 0x016025 05:E015: 22        .byte $22   ; 
- D 3 - I - 0x016026 05:E016: 0C        .byte $0C   ; 
- D 3 - I - 0x016027 05:E017: 20        .byte $20   ; 
- D 3 - I - 0x016028 05:E018: 18        .byte $18   ; 
- D 3 - I - 0x016029 05:E019: 1D        .byte $1D   ; 
- D 3 - I - 0x01602A 05:E01A: 18        .byte $18   ; 
- D 3 - I - 0x01602B 05:E01B: 87        .byte $87   ; 
- D 3 - I - 0x01602C 05:E01C: 05        .byte $05   ; 
- D 3 - I - 0x01602D 05:E01D: 1B        .byte $1B   ; 
- D 3 - I - 0x01602E 05:E01E: 02        .byte $02   ; 
- D 3 - I - 0x01602F 05:E01F: 8B        .byte $8B   ; 
- D 3 - I - 0x016030 05:E020: 01        .byte $01   ; 
- D 3 - I - 0x016031 05:E021: 87        .byte $87   ; 
- D 3 - I - 0x016032 05:E022: 04        .byte $04   ; 
- D 3 - I - 0x016033 05:E023: 1B        .byte $1B   ; 
- D 3 - I - 0x016034 05:E024: 03        .byte $03   ; 
- D 3 - I - 0x016035 05:E025: 87        .byte $87   ; 
- D 3 - I - 0x016036 05:E026: 03        .byte $03   ; 
- D 3 - I - 0x016037 05:E027: 1B        .byte $1B   ; 
- D 3 - I - 0x016038 05:E028: 04        .byte $04   ; 
- D 3 - I - 0x016039 05:E029: 87        .byte $87   ; 
- D 3 - I - 0x01603A 05:E02A: 02        .byte $02   ; 
- D 3 - I - 0x01603B 05:E02B: 1B        .byte $1B   ; 
- D 3 - I - 0x01603C 05:E02C: 05        .byte $05   ; 
- D 3 - I - 0x01603D 05:E02D: 87        .byte $87   ; 
- D 3 - I - 0x01603E 05:E02E: 01        .byte $01   ; 
- D 3 - I - 0x01603F 05:E02F: 1B        .byte $1B   ; 
- D 3 - I - 0x016040 05:E030: 06        .byte $06   ; 
- D 3 - I - 0x016041 05:E031: 87        .byte $87   ; 
- D 3 - I - 0x016042 05:E032: 00        .byte $00   ; 
- D 3 - I - 0x016043 05:E033: 8B        .byte $8B   ; 
- D 3 - I - 0x016044 05:E034: FF        .byte $FF   ; 
- D 3 - I - 0x016045 05:E035: 93        .byte $93   ; 
- D 3 - I - 0x016046 05:E036: 10        .byte $10   ; 
- D 3 - I - 0x016047 05:E037: 85        .byte con_85_rts



sub_84_E038:
- D 3 - I - 0x016048 05:E038: 84        .byte con_84_jsr
- D 3 - I - 0x016049 05:E039: E9 E0     .word sub_84_E0E9
- D 3 - I - 0x01604B 05:E03B: 60        .byte $60   ; 
- D 3 - I - 0x01604C 05:E03C: 0C        .byte $0C   ; 
- D 3 - I - 0x01604D 05:E03D: 84        .byte con_84_jsr
- D 3 - I - 0x01604E 05:E03E: E9 E0     .word sub_84_E0E9
- D 3 - I - 0x016050 05:E040: 60        .byte $60   ; 
- D 3 - I - 0x016051 05:E041: 0C        .byte $0C   ; 
- D 3 - I - 0x016052 05:E042: 86        .byte $86   ; 
- D 3 - I - 0x016053 05:E043: FE        .byte $FE   ; 
- D 3 - I - 0x016054 05:E044: 84        .byte con_84_jsr
- D 3 - I - 0x016055 05:E045: E9 E0     .word sub_84_E0E9
- D 3 - I - 0x016057 05:E047: 0F        .byte $0F   ; 
- D 3 - I - 0x016058 05:E048: 0C        .byte $0C   ; 
- D 3 - I - 0x016059 05:E049: 86        .byte $86   ; 
- D 3 - I - 0x01605A 05:E04A: 00        .byte $00   ; 
- D 3 - I - 0x01605B 05:E04B: 84        .byte con_84_jsr
- D 3 - I - 0x01605C 05:E04C: E9 E0     .word sub_84_E0E9
- D 3 - I - 0x01605E 05:E04E: 60        .byte $60   ; 
- D 3 - I - 0x01605F 05:E04F: 0C        .byte $0C   ; 
- D 3 - I - 0x016060 05:E050: 86        .byte $86   ; 
- D 3 - I - 0x016061 05:E051: 03        .byte $03   ; 
- D 3 - I - 0x016062 05:E052: 84        .byte con_84_jsr
- D 3 - I - 0x016063 05:E053: E9 E0     .word sub_84_E0E9
- D 3 - I - 0x016065 05:E055: 86        .byte $86   ; 
- D 3 - I - 0x016066 05:E056: 02        .byte $02   ; 
- D 3 - I - 0x016067 05:E057: 84        .byte con_84_jsr
- D 3 - I - 0x016068 05:E058: E9 E0     .word sub_84_E0E9
- D 3 - I - 0x01606A 05:E05A: 86        .byte $86   ; 
- D 3 - I - 0x01606B 05:E05B: 00        .byte $00   ; 
- D 3 - I - 0x01606C 05:E05C: 84        .byte con_84_jsr
- D 3 - I - 0x01606D 05:E05D: E9 E0     .word sub_84_E0E9
- D 3 - I - 0x01606F 05:E05F: 60        .byte $60   ; 
- D 3 - I - 0x016070 05:E060: 24        .byte $24   ; 
- D 3 - I - 0x016071 05:E061: 86        .byte $86   ; 
- D 3 - I - 0x016072 05:E062: FB        .byte $FB   ; 
- D 3 - I - 0x016073 05:E063: 84        .byte con_84_jsr
- D 3 - I - 0x016074 05:E064: E9 E0     .word sub_84_E0E9
- D 3 - I - 0x016076 05:E066: 0F        .byte $0F   ; 
- D 3 - I - 0x016077 05:E067: 0C        .byte $0C   ; 
- D 3 - I - 0x016078 05:E068: 86        .byte $86   ; 
- D 3 - I - 0x016079 05:E069: 00        .byte $00   ; 
- D 3 - I - 0x01607A 05:E06A: 85        .byte con_85_rts



sub_84_E06B:
- D 3 - I - 0x01607B 05:E06B: 8F        .byte $8F   ; 
- D 3 - I - 0x01607C 05:E06C: 0C        .byte $0C   ; 
- D 3 - I - 0x01607D 05:E06D: 01        .byte $01   ; 
- D 3 - I - 0x01607E 05:E06E: 02        .byte $02   ; 
- D 3 - I - 0x01607F 05:E06F: 00        .byte $00   ; 
- D 3 - I - 0x016080 05:E070: 2A        .byte $2A   ; 
- D 3 - I - 0x016081 05:E071: 0C        .byte $0C   ; 
- D 3 - I - 0x016082 05:E072: 29        .byte $29   ; 
- D 3 - I - 0x016083 05:E073: 0C        .byte $0C   ; 
sub_84_E074:
- D 3 - I - 0x016084 05:E074: 27        .byte $27   ; 
- D 3 - I - 0x016085 05:E075: 0C        .byte $0C   ; 
- D 3 - I - 0x016086 05:E076: 25        .byte $25   ; 
- D 3 - I - 0x016087 05:E077: 0C        .byte $0C   ; 
- D 3 - I - 0x016088 05:E078: 22        .byte $22   ; 
- D 3 - I - 0x016089 05:E079: 30        .byte $30   ; 
- D 3 - I - 0x01608A 05:E07A: 27        .byte $27   ; 
- D 3 - I - 0x01608B 05:E07B: 0C        .byte $0C   ; 
- D 3 - I - 0x01608C 05:E07C: 29        .byte $29   ; 
- D 3 - I - 0x01608D 05:E07D: 0C        .byte $0C   ; 
- D 3 - I - 0x01608E 05:E07E: 2A        .byte $2A   ; 
- D 3 - I - 0x01608F 05:E07F: 0C        .byte $0C   ; 
- D 3 - I - 0x016090 05:E080: 2C        .byte $2C   ; 
- D 3 - I - 0x016091 05:E081: 06        .byte $06   ; 
- D 3 - I - 0x016092 05:E082: 2A        .byte $2A   ; 
- D 3 - I - 0x016093 05:E083: 06        .byte $06   ; 
- D 3 - I - 0x016094 05:E084: 29        .byte $29   ; 
- D 3 - I - 0x016095 05:E085: 06        .byte $06   ; 
- D 3 - I - 0x016096 05:E086: 60        .byte $60   ; 
- D 3 - I - 0x016097 05:E087: 06        .byte $06   ; 
- D 3 - I - 0x016098 05:E088: 25        .byte $25   ; 
- D 3 - I - 0x016099 05:E089: 06        .byte $06   ; 
- D 3 - I - 0x01609A 05:E08A: 60        .byte $60   ; 
- D 3 - I - 0x01609B 05:E08B: 06        .byte $06   ; 
- D 3 - I - 0x01609C 05:E08C: 27        .byte $27   ; 
- D 3 - I - 0x01609D 05:E08D: 06        .byte $06   ; 
- D 3 - I - 0x01609E 05:E08E: 25        .byte $25   ; 
- D 3 - I - 0x01609F 05:E08F: 06        .byte $06   ; 
- D 3 - I - 0x0160A0 05:E090: 24        .byte $24   ; 
- D 3 - I - 0x0160A1 05:E091: 06        .byte $06   ; 
- D 3 - I - 0x0160A2 05:E092: 25        .byte $25   ; 
- D 3 - I - 0x0160A3 05:E093: 06        .byte $06   ; 
- D 3 - I - 0x0160A4 05:E094: 22        .byte $22   ; 
- D 3 - I - 0x0160A5 05:E095: 0C        .byte $0C   ; 
- D 3 - I - 0x0160A6 05:E096: 25        .byte $25   ; 
- D 3 - I - 0x0160A7 05:E097: 06        .byte $06   ; 
- D 3 - I - 0x0160A8 05:E098: 60        .byte $60   ; 
- D 3 - I - 0x0160A9 05:E099: 06        .byte $06   ; 
- D 3 - I - 0x0160AA 05:E09A: 27        .byte $27   ; 
- D 3 - I - 0x0160AB 05:E09B: 0C        .byte $0C   ; 
- D 3 - I - 0x0160AC 05:E09C: 29        .byte $29   ; 
- D 3 - I - 0x0160AD 05:E09D: 06        .byte $06   ; 
- D 3 - I - 0x0160AE 05:E09E: 2A        .byte $2A   ; 
- D 3 - I - 0x0160AF 05:E09F: 06        .byte $06   ; 
- D 3 - I - 0x0160B0 05:E0A0: 29        .byte $29   ; 
- D 3 - I - 0x0160B1 05:E0A1: 0C        .byte $0C   ; 
- D 3 - I - 0x0160B2 05:E0A2: 2A        .byte $2A   ; 
- D 3 - I - 0x0160B3 05:E0A3: 06        .byte $06   ; 
- D 3 - I - 0x0160B4 05:E0A4: 2C        .byte $2C   ; 
- D 3 - I - 0x0160B5 05:E0A5: 06        .byte $06   ; 
- D 3 - I - 0x0160B6 05:E0A6: 2A        .byte $2A   ; 
- D 3 - I - 0x0160B7 05:E0A7: 0C        .byte $0C   ; 
- D 3 - I - 0x0160B8 05:E0A8: 27        .byte $27   ; 
- D 3 - I - 0x0160B9 05:E0A9: 06        .byte $06   ; 
- D 3 - I - 0x0160BA 05:E0AA: 60        .byte $60   ; 
- D 3 - I - 0x0160BB 05:E0AB: 06        .byte $06   ; 
- D 3 - I - 0x0160BC 05:E0AC: 27        .byte $27   ; 
- D 3 - I - 0x0160BD 05:E0AD: 0C        .byte $0C   ; 
- D 3 - I - 0x0160BE 05:E0AE: 25        .byte $25   ; 
- D 3 - I - 0x0160BF 05:E0AF: 06        .byte $06   ; 
- D 3 - I - 0x0160C0 05:E0B0: 60        .byte $60   ; 
- D 3 - I - 0x0160C1 05:E0B1: 06        .byte $06   ; 
- D 3 - I - 0x0160C2 05:E0B2: 27        .byte $27   ; 
- D 3 - I - 0x0160C3 05:E0B3: 06        .byte $06   ; 
- D 3 - I - 0x0160C4 05:E0B4: 25        .byte $25   ; 
- D 3 - I - 0x0160C5 05:E0B5: 06        .byte $06   ; 
- D 3 - I - 0x0160C6 05:E0B6: 24        .byte $24   ; 
- D 3 - I - 0x0160C7 05:E0B7: 06        .byte $06   ; 
- D 3 - I - 0x0160C8 05:E0B8: 22        .byte $22   ; 
- D 3 - I - 0x0160C9 05:E0B9: 06        .byte $06   ; 
- D 3 - I - 0x0160CA 05:E0BA: 20        .byte $20   ; 
- D 3 - I - 0x0160CB 05:E0BB: 12        .byte $12   ; 
- D 3 - I - 0x0160CC 05:E0BC: 60        .byte $60   ; 
- D 3 - I - 0x0160CD 05:E0BD: 06        .byte $06   ; 
- D 3 - I - 0x0160CE 05:E0BE: 22        .byte $22   ; 
- D 3 - I - 0x0160CF 05:E0BF: 0C        .byte $0C   ; 
- D 3 - I - 0x0160D0 05:E0C0: 24        .byte $24   ; 
- D 3 - I - 0x0160D1 05:E0C1: 06        .byte $06   ; 
- D 3 - I - 0x0160D2 05:E0C2: 25        .byte $25   ; 
- D 3 - I - 0x0160D3 05:E0C3: 06        .byte $06   ; 
- D 3 - I - 0x0160D4 05:E0C4: 22        .byte $22   ; 
- D 3 - I - 0x0160D5 05:E0C5: 0C        .byte $0C   ; 
- D 3 - I - 0x0160D6 05:E0C6: 85        .byte con_85_rts



sub_84_E0C7:
- D 3 - I - 0x0160D7 05:E0C7: 8B        .byte $8B   ; 
- D 3 - I - 0x0160D8 05:E0C8: FF        .byte $FF   ; 
- D 3 - I - 0x0160D9 05:E0C9: 92        .byte con_92_loop, $01
- D 3 - I - 0x0160DB 05:E0CB: AE E1     .word off_92_E1AE
- D 3 - I - 0x0160DD 05:E0CD: 94        .byte $94   ; 
- D 3 - I - 0x0160DE 05:E0CE: 01        .byte $01   ; 
sub_84_E0CF:
- D 3 - I - 0x0160DF 05:E0CF: 93        .byte $93   ; 
- D 3 - I - 0x0160E0 05:E0D0: 06        .byte $06   ; 
- D 3 - I - 0x0160E1 05:E0D1: 1D        .byte $1D   ; 
- D 3 - I - 0x0160E2 05:E0D2: 18        .byte $18   ; 
- D 3 - I - 0x0160E3 05:E0D3: 1D        .byte $1D   ; 
- D 3 - I - 0x0160E4 05:E0D4: 48        .byte $48   ; 
- D 3 - I - 0x0160E5 05:E0D5: 93        .byte $93   ; 
- D 3 - I - 0x0160E6 05:E0D6: FF        .byte $FF   ; 
- D 3 - I - 0x0160E7 05:E0D7: 19        .byte $19   ; 
- D 3 - I - 0x0160E8 05:E0D8: 18        .byte $18   ; 
- D 3 - I - 0x0160E9 05:E0D9: 18        .byte $18   ; 
- D 3 - I - 0x0160EA 05:E0DA: 18        .byte $18   ; 
- D 3 - I - 0x0160EB 05:E0DB: 16        .byte $16   ; 
- D 3 - I - 0x0160EC 05:E0DC: 18        .byte $18   ; 
- D 3 - I - 0x0160ED 05:E0DD: 14        .byte $14   ; 
- D 3 - I - 0x0160EE 05:E0DE: 18        .byte $18   ; 
- D 3 - I - 0x0160EF 05:E0DF: 85        .byte con_85_rts



sub_84_E0E0:
- D 3 - I - 0x0160F0 05:E0E0: 33        .byte $33   ; 
- D 3 - I - 0x0160F1 05:E0E1: 01        .byte $01   ; 
- D 3 - I - 0x0160F2 05:E0E2: 27        .byte $27   ; 
- D 3 - I - 0x0160F3 05:E0E3: 01        .byte $01   ; 
- D 3 - I - 0x0160F4 05:E0E4: 1B        .byte $1B   ; 
- D 3 - I - 0x0160F5 05:E0E5: 01        .byte $01   ; 
- D 3 - I - 0x0160F6 05:E0E6: 0F        .byte $0F   ; 
- D 3 - I - 0x0160F7 05:E0E7: 09        .byte $09   ; 
- D 3 - I - 0x0160F8 05:E0E8: 85        .byte con_85_rts



sub_84_E0E9:
- D 3 - I - 0x0160F9 05:E0E9: 27        .byte $27   ; 
- D 3 - I - 0x0160FA 05:E0EA: 01        .byte $01   ; 
- D 3 - I - 0x0160FB 05:E0EB: 22        .byte $22   ; 
- D 3 - I - 0x0160FC 05:E0EC: 01        .byte $01   ; 
- D 3 - I - 0x0160FD 05:E0ED: 1B        .byte $1B   ; 
- D 3 - I - 0x0160FE 05:E0EE: 01        .byte $01   ; 
- D 3 - I - 0x0160FF 05:E0EF: 0F        .byte $0F   ; 
- D 3 - I - 0x016100 05:E0F0: 09        .byte $09   ; 
- D 3 - I - 0x016101 05:E0F1: 85        .byte con_85_rts



sub_84_E0F2:
- D 3 - I - 0x016102 05:E0F2: 8A        .byte $8A   ; 
- D 3 - I - 0x016103 05:E0F3: 06        .byte $06   ; 
- D 3 - I - 0x016104 05:E0F4: 00        .byte $00   ; 
- D 3 - I - 0x016105 05:E0F5: 00        .byte $00   ; 
- D 3 - I - 0x016106 05:E0F6: 16        .byte $16   ; 
- D 3 - I - 0x016107 05:E0F7: 04        .byte $04   ; 
- D 3 - I - 0x016108 05:E0F8: 8D        .byte $8D   ; 
- D 3 - I - 0x016109 05:E0F9: 01        .byte $01   ; 
- D 3 - I - 0x01610A 05:E0FA: 8A        .byte $8A   ; 
- D 3 - I - 0x01610B 05:E0FB: 44        .byte $44   ; 
- D 3 - I - 0x01610C 05:E0FC: 00        .byte $00   ; 
- D 3 - I - 0x01610D 05:E0FD: 02        .byte $02   ; 
- D 3 - I - 0x01610E 05:E0FE: 16        .byte $16   ; 
- D 3 - I - 0x01610F 05:E0FF: 14        .byte $14   ; 
- D 3 - I - 0x016110 05:E100: 14        .byte $14   ; 
- D 3 - I - 0x016111 05:E101: 0C        .byte $0C   ; 
- D 3 - I - 0x016112 05:E102: 16        .byte $16   ; 
- D 3 - I - 0x016113 05:E103: 0C        .byte $0C   ; 
- D 3 - I - 0x016114 05:E104: 17        .byte $17   ; 
- D 3 - I - 0x016115 05:E105: 30        .byte $30   ; 
- D 3 - I - 0x016116 05:E106: 16        .byte $16   ; 
- D 3 - I - 0x016117 05:E107: 18        .byte $18   ; 
- D 3 - I - 0x016118 05:E108: 8A        .byte $8A   ; 
- D 3 - I - 0x016119 05:E109: 40        .byte $40   ; 
- D 3 - I - 0x01611A 05:E10A: 00        .byte $00   ; 
- D 3 - I - 0x01611B 05:E10B: 01        .byte $01   ; 
- D 3 - I - 0x01611C 05:E10C: 16        .byte $16   ; 
- D 3 - I - 0x01611D 05:E10D: 04        .byte $04   ; 
- D 3 - I - 0x01611E 05:E10E: 8D        .byte $8D   ; 
- D 3 - I - 0x01611F 05:E10F: 00        .byte $00   ; 
- D 3 - I - 0x016120 05:E110: 60        .byte $60   ; 
- D 3 - I - 0x016121 05:E111: 44        .byte $44   ; 
- D 3 - I - 0x016122 05:E112: 85        .byte con_85_rts



sub_84_E113:
- D 3 - I - 0x016123 05:E113: 8A        .byte $8A   ; 
- D 3 - I - 0x016124 05:E114: 06        .byte $06   ; 
- D 3 - I - 0x016125 05:E115: 00        .byte $00   ; 
- D 3 - I - 0x016126 05:E116: 00        .byte $00   ; 
- D 3 - I - 0x016127 05:E117: 0F        .byte $0F   ; 
- D 3 - I - 0x016128 05:E118: 04        .byte $04   ; 
- D 3 - I - 0x016129 05:E119: 8D        .byte $8D   ; 
- D 3 - I - 0x01612A 05:E11A: 01        .byte $01   ; 
- D 3 - I - 0x01612B 05:E11B: 8A        .byte $8A   ; 
- D 3 - I - 0x01612C 05:E11C: 44        .byte $44   ; 
- D 3 - I - 0x01612D 05:E11D: 00        .byte $00   ; 
- D 3 - I - 0x01612E 05:E11E: 02        .byte $02   ; 
- D 3 - I - 0x01612F 05:E11F: 0F        .byte $0F   ; 
- D 3 - I - 0x016130 05:E120: 14        .byte $14   ; 
- D 3 - I - 0x016131 05:E121: 10        .byte $10   ; 
- D 3 - I - 0x016132 05:E122: 0C        .byte $0C   ; 
- D 3 - I - 0x016133 05:E123: 0F        .byte $0F   ; 
- D 3 - I - 0x016134 05:E124: 0C        .byte $0C   ; 
- D 3 - I - 0x016135 05:E125: 0D        .byte $0D   ; 
- D 3 - I - 0x016136 05:E126: 30        .byte $30   ; 
- D 3 - I - 0x016137 05:E127: 0F        .byte $0F   ; 
- D 3 - I - 0x016138 05:E128: 18        .byte $18   ; 
- D 3 - I - 0x016139 05:E129: 8A        .byte $8A   ; 
- D 3 - I - 0x01613A 05:E12A: 40        .byte $40   ; 
- D 3 - I - 0x01613B 05:E12B: 00        .byte $00   ; 
- D 3 - I - 0x01613C 05:E12C: 01        .byte $01   ; 
- D 3 - I - 0x01613D 05:E12D: 0F        .byte $0F   ; 
- D 3 - I - 0x01613E 05:E12E: 04        .byte $04   ; 
- D 3 - I - 0x01613F 05:E12F: 8D        .byte $8D   ; 
- D 3 - I - 0x016140 05:E130: 00        .byte $00   ; 
- D 3 - I - 0x016141 05:E131: 60        .byte $60   ; 
- D 3 - I - 0x016142 05:E132: 44        .byte $44   ; 
- D 3 - I - 0x016143 05:E133: 85        .byte con_85_rts



sub_84_E134:
- D 3 - I - 0x016144 05:E134: 01        .byte $01   ; 
- D 3 - I - 0x016145 05:E135: 18        .byte $18   ; 
- D 3 - I - 0x016146 05:E136: 01        .byte $01   ; 
- D 3 - I - 0x016147 05:E137: 0C        .byte $0C   ; 
- D 3 - I - 0x016148 05:E138: 00        .byte $00   ; 
- D 3 - I - 0x016149 05:E139: 0C        .byte $0C   ; 
- D 3 - I - 0x01614A 05:E13A: 01        .byte $01   ; 
- D 3 - I - 0x01614B 05:E13B: 0C        .byte $0C   ; 
- D 3 - I - 0x01614C 05:E13C: 00        .byte $00   ; 
- D 3 - I - 0x01614D 05:E13D: 0C        .byte $0C   ; 
- D 3 - I - 0x01614E 05:E13E: 00        .byte $00   ; 
- D 3 - I - 0x01614F 05:E13F: 18        .byte $18   ; 
- D 3 - I - 0x016150 05:E140: 01        .byte $01   ; 
- D 3 - I - 0x016151 05:E141: 18        .byte $18   ; 
- D 3 - I - 0x016152 05:E142: 00        .byte $00   ; 
- D 3 - I - 0x016153 05:E143: 0C        .byte $0C   ; 
- D 3 - I - 0x016154 05:E144: 00        .byte $00   ; 
- D 3 - I - 0x016155 05:E145: 0C        .byte $0C   ; 
- D 3 - I - 0x016156 05:E146: 01        .byte $01   ; 
- D 3 - I - 0x016157 05:E147: 18        .byte $18   ; 
- D 3 - I - 0x016158 05:E148: 00        .byte $00   ; 
- D 3 - I - 0x016159 05:E149: 18        .byte $18   ; 
- D 3 - I - 0x01615A 05:E14A: 85        .byte con_85_rts



sub_84_E14B:
- D 3 - I - 0x01615B 05:E14B: 93        .byte $93   ; 
- D 3 - I - 0x01615C 05:E14C: FF        .byte $FF   ; 
- D 3 - I - 0x01615D 05:E14D: 8B        .byte $8B   ; 
- D 3 - I - 0x01615E 05:E14E: FF        .byte $FF   ; 
- D 3 - I - 0x01615F 05:E14F: 92        .byte con_92_loop, $01
- D 3 - I - 0x016161 05:E151: B5 E1     .word off_92_E1B5
sub_84_E153:
- D 3 - I - 0x016163 05:E153: 94        .byte $94   ; 
- D 3 - I - 0x016164 05:E154: 01        .byte $01   ; 
- D 3 - I - 0x016165 05:E155: 0F        .byte $0F   ; 
- D 3 - I - 0x016166 05:E156: 18        .byte $18   ; 
- D 3 - I - 0x016167 05:E157: 10        .byte $10   ; 
- D 3 - I - 0x016168 05:E158: 30        .byte $30   ; 
- D 3 - I - 0x016169 05:E159: 0F        .byte $0F   ; 
- D 3 - I - 0x01616A 05:E15A: 0C        .byte $0C   ; 
- D 3 - I - 0x01616B 05:E15B: 0D        .byte $0D   ; 
- D 3 - I - 0x01616C 05:E15C: 0C        .byte $0C   ; 
- D 3 - I - 0x01616D 05:E15D: 0F        .byte $0F   ; 
- D 3 - I - 0x01616E 05:E15E: 18        .byte $18   ; 
- D 3 - I - 0x01616F 05:E15F: 0B        .byte $0B   ; 
- D 3 - I - 0x016170 05:E160: 18        .byte $18   ; 
- D 3 - I - 0x016171 05:E161: 0A        .byte $0A   ; 
- D 3 - I - 0x016172 05:E162: 30        .byte $30   ; 
- D 3 - I - 0x016173 05:E163: 0D        .byte $0D   ; 
- D 3 - I - 0x016174 05:E164: 24        .byte $24   ; 
- D 3 - I - 0x016175 05:E165: 0B        .byte $0B   ; 
- D 3 - I - 0x016176 05:E166: 0C        .byte $0C   ; 
- D 3 - I - 0x016177 05:E167: 0A        .byte $0A   ; 
- D 3 - I - 0x016178 05:E168: 24        .byte $24   ; 
- D 3 - I - 0x016179 05:E169: 0B        .byte $0B   ; 
- D 3 - I - 0x01617A 05:E16A: 0C        .byte $0C   ; 
- D 3 - I - 0x01617B 05:E16B: 0D        .byte $0D   ; 
- D 3 - I - 0x01617C 05:E16C: 18        .byte $18   ; 
- D 3 - I - 0x01617D 05:E16D: 0F        .byte $0F   ; 
- D 3 - I - 0x01617E 05:E16E: 18        .byte $18   ; 
- D 3 - I - 0x01617F 05:E16F: 94        .byte $94   ; 
- D 3 - I - 0x016180 05:E170: 0C        .byte $0C   ; 
- D 3 - I - 0x016181 05:E171: 0A        .byte $0A   ; 
- D 3 - I - 0x016182 05:E172: 30        .byte $30   ; 
- D 3 - I - 0x016183 05:E173: 85        .byte con_85_rts



sub_84_E174:
- D 3 - I - 0x016184 05:E174: 94        .byte $94   ; 
- D 3 - I - 0x016185 05:E175: 01        .byte $01   ; 
- D 3 - I - 0x016186 05:E176: 93        .byte $93   ; 
- D 3 - I - 0x016187 05:E177: 30        .byte $30   ; 
- D 3 - I - 0x016188 05:E178: 8E        .byte $8E   ; 
- D 3 - I - 0x016189 05:E179: B0        .byte $B0   ; 
- D 3 - I - 0x01618A 05:E17A: 1B        .byte $1B   ; 
- D 3 - I - 0x01618B 05:E17B: 18        .byte $18   ; 
- D 3 - I - 0x01618C 05:E17C: 8D        .byte $8D   ; 
- D 3 - I - 0x01618D 05:E17D: 01        .byte $01   ; 
- D 3 - I - 0x01618E 05:E17E: 1E        .byte $1E   ; 
- D 3 - I - 0x01618F 05:E17F: 18        .byte $18   ; 
- D 3 - I - 0x016190 05:E180: 21        .byte $21   ; 
- D 3 - I - 0x016191 05:E181: 18        .byte $18   ; 
- D 3 - I - 0x016192 05:E182: 25        .byte $25   ; 
- D 3 - I - 0x016193 05:E183: 18        .byte $18   ; 
- D 3 - I - 0x016194 05:E184: 24        .byte $24   ; 
- D 3 - I - 0x016195 05:E185: 48        .byte $48   ; 
- D 3 - I - 0x016196 05:E186: 8D        .byte $8D   ; 
- D 3 - I - 0x016197 05:E187: 02        .byte $02   ; 
- D 3 - I - 0x016198 05:E188: 94        .byte $94   ; 
- D 3 - I - 0x016199 05:E189: 00        .byte $00   ; 
- D 3 - I - 0x01619A 05:E18A: 25        .byte $25   ; 
- D 3 - I - 0x01619B 05:E18B: 06        .byte $06   ; 
- D 3 - I - 0x01619C 05:E18C: 8B        .byte $8B   ; 
- D 3 - I - 0x01619D 05:E18D: 00        .byte $00   ; 
- D 3 - I - 0x01619E 05:E18E: 21        .byte $21   ; 
- D 3 - I - 0x01619F 05:E18F: 06        .byte $06   ; 
- D 3 - I - 0x0161A0 05:E190: 1E        .byte $1E   ; 
- D 3 - I - 0x0161A1 05:E191: 06        .byte $06   ; 
- D 3 - I - 0x0161A2 05:E192: 19        .byte $19   ; 
- D 3 - I - 0x0161A3 05:E193: 06        .byte $06   ; 
- D 3 - I - 0x0161A4 05:E194: 85        .byte con_85_rts


; bzk garbage
- - - - - - 0x0161A5 05:E195: 1B        .byte $1B   ; 
- - - - - - 0x0161A6 05:E196: 0C        .byte $0C   ; 
- - - - - - 0x0161A7 05:E197: 22        .byte $22   ; 
- - - - - - 0x0161A8 05:E198: 0C        .byte $0C   ; 
- - - - - - 0x0161A9 05:E199: 60        .byte $60   ; 
- - - - - - 0x0161AA 05:E19A: 0C        .byte $0C   ; 
- - - - - - 0x0161AB 05:E19B: 1B        .byte $1B   ; 
- - - - - - 0x0161AC 05:E19C: 0C        .byte $0C   ; 
- - - - - - 0x0161AD 05:E19D: 22        .byte $22   ; 
- - - - - - 0x0161AE 05:E19E: 24        .byte $24   ; 
- - - - - - 0x0161AF 05:E19F: 8A        .byte $8A   ; 
- - - - - - 0x0161B0 05:E1A0: 00        .byte $00   ; 
- - - - - - 0x0161B1 05:E1A1: 00        .byte $00   ; 
- - - - - - 0x0161B2 05:E1A2: 02        .byte $02   ; 
- - - - - - 0x0161B3 05:E1A3: 60        .byte $60   ; 
- - - - - - 0x0161B4 05:E1A4: 57        .byte $57   ; 
- - - - - - 0x0161B5 05:E1A5: 85        .byte con_85_rts



off_92_E1A6:
- D 3 - I - 0x0161B6 05:E1A6: 01        .byte $01   ; 
- D 3 - I - 0x0161B7 05:E1A7: 02        .byte $02   ; 
- D 3 - I - 0x0161B8 05:E1A8: 03        .byte $03   ; 
- D 3 - I - 0x0161B9 05:E1A9: FF        .byte $FF   ; 
- D 3 - I - 0x0161BA 05:E1AA: 02        .byte $02   ; 
- D 3 - I - 0x0161BB 05:E1AB: 01        .byte $01   ; 
- D 3 - I - 0x0161BC 05:E1AC: 00        .byte $00   ; 
- D 3 - I - 0x0161BD 05:E1AD: FF        .byte $FF   ; 



off_92_E1AE:
- D 3 - I - 0x0161BE 05:E1AE: 01        .byte $01   ; 
- D 3 - I - 0x0161BF 05:E1AF: 02        .byte $02   ; 
- D 3 - I - 0x0161C0 05:E1B0: FF        .byte $FF   ; 
- D 3 - I - 0x0161C1 05:E1B1: 02        .byte $02   ; 
- D 3 - I - 0x0161C2 05:E1B2: 01        .byte $01   ; 
- D 3 - I - 0x0161C3 05:E1B3: 00        .byte $00   ; 
- D 3 - I - 0x0161C4 05:E1B4: FF        .byte $FF   ; 



off_92_E1B5:
- D 3 - I - 0x0161C5 05:E1B5: 01        .byte $01   ; 
- D 3 - I - 0x0161C6 05:E1B6: 02        .byte $02   ; 
- D 3 - I - 0x0161C7 05:E1B7: 03        .byte $03   ; 
- D 3 - I - 0x0161C8 05:E1B8: 04        .byte $04   ; 
- D 3 - I - 0x0161C9 05:E1B9: FF        .byte $FF   ; 
- D 3 - I - 0x0161CA 05:E1BA: 03        .byte $03   ; 
- D 3 - I - 0x0161CB 05:E1BB: 02        .byte $02   ; 
- D 3 - I - 0x0161CC 05:E1BC: 01        .byte $01   ; 
- D 3 - I - 0x0161CD 05:E1BD: 00        .byte $00   ; 
- D 3 - I - 0x0161CE 05:E1BE: FF        .byte $FF   ; 



off_92_E1BF:
- D 3 - I - 0x0161CF 05:E1BF: 00        .byte $00   ; 
- D 3 - I - 0x0161D0 05:E1C0: 01        .byte $01   ; 
- D 3 - I - 0x0161D1 05:E1C1: FF        .byte $FF   ; 
- D 3 - I - 0x0161D2 05:E1C2: 01        .byte $01   ; 
- D 3 - I - 0x0161D3 05:E1C3: 00        .byte $00   ; 
- D 3 - I - 0x0161D4 05:E1C4: FF        .byte $FF   ; 



off_92_E1C5:
- D 3 - I - 0x0161D5 05:E1C5: 0B        .byte $0B   ; 
- D 3 - I - 0x0161D6 05:E1C6: 09        .byte $09   ; 
- D 3 - I - 0x0161D7 05:E1C7: 07        .byte $07   ; 
- D 3 - I - 0x0161D8 05:E1C8: 06        .byte $06   ; 
- D 3 - I - 0x0161D9 05:E1C9: 05        .byte $05   ; 
- D 3 - I - 0x0161DA 05:E1CA: 04        .byte $04   ; 
- D 3 - I - 0x0161DB 05:E1CB: 04        .byte $04   ; 
- D 3 - I - 0x0161DC 05:E1CC: 03        .byte $03   ; 
- D 3 - I - 0x0161DD 05:E1CD: 03        .byte $03   ; 
- D 3 - I - 0x0161DE 05:E1CE: 03        .byte $03   ; 
- D 3 - I - 0x0161DF 05:E1CF: 02        .byte $02   ; 
- D 3 - I - 0x0161E0 05:E1D0: 02        .byte $02   ; 
- D 3 - I - 0x0161E1 05:E1D1: 02        .byte $02   ; 
- D 3 - I - 0x0161E2 05:E1D2: 02        .byte $02   ; 
- D 3 - I - 0x0161E3 05:E1D3: 01        .byte $01   ; 
- D 3 - I - 0x0161E4 05:E1D4: 01        .byte $01   ; 
- D 3 - I - 0x0161E5 05:E1D5: 01        .byte $01   ; 
- D 3 - I - 0x0161E6 05:E1D6: 01        .byte $01   ; 
- D 3 - I - 0x0161E7 05:E1D7: 01        .byte $01   ; 
- D 3 - I - 0x0161E8 05:E1D8: 00        .byte $00   ; 
- D 3 - I - 0x0161E9 05:E1D9: FF        .byte $FF   ; 
- - - - - - 0x0161EA 05:E1DA: 00        .byte $00   ; 
- - - - - - 0x0161EB 05:E1DB: FF        .byte $FF   ; 



off_92_E1DC:
- D 3 - I - 0x0161EC 05:E1DC: 05        .byte $05   ; 
- D 3 - I - 0x0161ED 05:E1DD: 04        .byte $04   ; 
- D 3 - I - 0x0161EE 05:E1DE: 04        .byte $04   ; 
- D 3 - I - 0x0161EF 05:E1DF: 03        .byte $03   ; 
- D 3 - I - 0x0161F0 05:E1E0: 03        .byte $03   ; 
- D 3 - I - 0x0161F1 05:E1E1: 03        .byte $03   ; 
- D 3 - I - 0x0161F2 05:E1E2: 02        .byte $02   ; 
- D 3 - I - 0x0161F3 05:E1E3: 02        .byte $02   ; 
- D 3 - I - 0x0161F4 05:E1E4: 02        .byte $02   ; 
- D 3 - I - 0x0161F5 05:E1E5: 02        .byte $02   ; 
- D 3 - I - 0x0161F6 05:E1E6: 01        .byte $01   ; 
- - - - - - 0x0161F7 05:E1E7: 01        .byte $01   ; 
- - - - - - 0x0161F8 05:E1E8: 01        .byte $01   ; 
- - - - - - 0x0161F9 05:E1E9: 01        .byte $01   ; 
- - - - - - 0x0161FA 05:E1EA: 01        .byte $01   ; 
- - - - - - 0x0161FB 05:E1EB: 00        .byte $00   ; 
- - - - - - 0x0161FC 05:E1EC: FF        .byte $FF   ; 
- - - - - - 0x0161FD 05:E1ED: 00        .byte $00   ; 
- - - - - - 0x0161FE 05:E1EE: FF        .byte $FF   ; 



off_92_E1EF:
- D 3 - I - 0x0161FF 05:E1EF: 06        .byte $06   ; 
- D 3 - I - 0x016200 05:E1F0: 05        .byte $05   ; 
- D 3 - I - 0x016201 05:E1F1: 04        .byte $04   ; 
- D 3 - I - 0x016202 05:E1F2: 04        .byte $04   ; 
- D 3 - I - 0x016203 05:E1F3: 03        .byte $03   ; 
- D 3 - I - 0x016204 05:E1F4: 03        .byte $03   ; 
- D 3 - I - 0x016205 05:E1F5: 03        .byte $03   ; 
- D 3 - I - 0x016206 05:E1F6: 02        .byte $02   ; 
- D 3 - I - 0x016207 05:E1F7: 02        .byte $02   ; 
- D 3 - I - 0x016208 05:E1F8: 02        .byte $02   ; 
- D 3 - I - 0x016209 05:E1F9: 02        .byte $02   ; 
- - - - - - 0x01620A 05:E1FA: 01        .byte $01   ; 
- - - - - - 0x01620B 05:E1FB: 01        .byte $01   ; 
- - - - - - 0x01620C 05:E1FC: 01        .byte $01   ; 
- - - - - - 0x01620D 05:E1FD: 01        .byte $01   ; 
- - - - - - 0x01620E 05:E1FE: 01        .byte $01   ; 
- - - - - - 0x01620F 05:E1FF: 00        .byte $00   ; 
- - - - - - 0x016210 05:E200: FF        .byte $FF   ; 
- - - - - - 0x016211 05:E201: 00        .byte $00   ; 
- - - - - - 0x016212 05:E202: FF        .byte $FF   ; 



off_92_E203:
- D 3 - I - 0x016213 05:E203: 03        .byte $03   ; 
- D 3 - I - 0x016214 05:E204: 03        .byte $03   ; 
- D 3 - I - 0x016215 05:E205: 03        .byte $03   ; 
- D 3 - I - 0x016216 05:E206: 02        .byte $02   ; 
- D 3 - I - 0x016217 05:E207: 02        .byte $02   ; 
- D 3 - I - 0x016218 05:E208: 02        .byte $02   ; 
- D 3 - I - 0x016219 05:E209: 02        .byte $02   ; 
- D 3 - I - 0x01621A 05:E20A: 01        .byte $01   ; 
- D 3 - I - 0x01621B 05:E20B: 01        .byte $01   ; 
- D 3 - I - 0x01621C 05:E20C: 01        .byte $01   ; 
- D 3 - I - 0x01621D 05:E20D: 01        .byte $01   ; 
- D 3 - I - 0x01621E 05:E20E: 01        .byte $01   ; 
- D 3 - I - 0x01621F 05:E20F: 01        .byte $01   ; 
- D 3 - I - 0x016220 05:E210: 00        .byte $00   ; 
- D 3 - I - 0x016221 05:E211: FF        .byte $FF   ; 
- D 3 - I - 0x016222 05:E212: 00        .byte $00   ; 
- D 3 - I - 0x016223 05:E213: FF        .byte $FF   ; 



off_92_E214:
- D 3 - I - 0x016224 05:E214: 01        .byte $01   ; 
- D 3 - I - 0x016225 05:E215: 01        .byte $01   ; 
- D 3 - I - 0x016226 05:E216: 01        .byte $01   ; 
- D 3 - I - 0x016227 05:E217: 01        .byte $01   ; 
- D 3 - I - 0x016228 05:E218: 01        .byte $01   ; 
- D 3 - I - 0x016229 05:E219: 02        .byte $02   ; 
- D 3 - I - 0x01622A 05:E21A: 02        .byte $02   ; 
- D 3 - I - 0x01622B 05:E21B: 02        .byte $02   ; 
- D 3 - I - 0x01622C 05:E21C: 02        .byte $02   ; 
- D 3 - I - 0x01622D 05:E21D: 03        .byte $03   ; 
- D 3 - I - 0x01622E 05:E21E: 03        .byte $03   ; 
- D 3 - I - 0x01622F 05:E21F: 03        .byte $03   ; 
- D 3 - I - 0x016230 05:E220: 04        .byte $04   ; 
- D 3 - I - 0x016231 05:E221: 04        .byte $04   ; 
- D 3 - I - 0x016232 05:E222: 05        .byte $05   ; 
- D 3 - I - 0x016233 05:E223: 06        .byte $06   ; 
- D 3 - I - 0x016234 05:E224: 07        .byte $07   ; 
- D 3 - I - 0x016235 05:E225: 09        .byte $09   ; 
- D 3 - I - 0x016236 05:E226: 0B        .byte $0B   ; 
- D 3 - I - 0x016237 05:E227: 00        .byte $00   ; 
- - - - - - 0x016238 05:E228: FF        .byte $FF   ; 
- - - - - - 0x016239 05:E229: 00        .byte $00   ; 
- - - - - - 0x01623A 05:E22A: FF        .byte $FF   ; 



off_92_E22B:
- D 3 - I - 0x01623B 05:E22B: 0D        .byte $0D   ; 
- D 3 - I - 0x01623C 05:E22C: 0C        .byte $0C   ; 
- D 3 - I - 0x01623D 05:E22D: 0B        .byte $0B   ; 
- D 3 - I - 0x01623E 05:E22E: 09        .byte $09   ; 
- D 3 - I - 0x01623F 05:E22F: 07        .byte $07   ; 
- D 3 - I - 0x016240 05:E230: 05        .byte $05   ; 
- D 3 - I - 0x016241 05:E231: 04        .byte $04   ; 
- D 3 - I - 0x016242 05:E232: 05        .byte $05   ; 
- D 3 - I - 0x016243 05:E233: 07        .byte $07   ; 
- D 3 - I - 0x016244 05:E234: 09        .byte $09   ; 
- D 3 - I - 0x016245 05:E235: 0B        .byte $0B   ; 
- D 3 - I - 0x016246 05:E236: 0C        .byte $0C   ; 
- D 3 - I - 0x016247 05:E237: 0C        .byte $0C   ; 
- D 3 - I - 0x016248 05:E238: 0B        .byte $0B   ; 
- D 3 - I - 0x016249 05:E239: 09        .byte $09   ; 
- D 3 - I - 0x01624A 05:E23A: 07        .byte $07   ; 
- D 3 - I - 0x01624B 05:E23B: 05        .byte $05   ; 
- D 3 - I - 0x01624C 05:E23C: 04        .byte $04   ; 
- D 3 - I - 0x01624D 05:E23D: 03        .byte $03   ; 
- D 3 - I - 0x01624E 05:E23E: 04        .byte $04   ; 
- D 3 - I - 0x01624F 05:E23F: 05        .byte $05   ; 
- D 3 - I - 0x016250 05:E240: 07        .byte $07   ; 
- D 3 - I - 0x016251 05:E241: 09        .byte $09   ; 
- D 3 - I - 0x016252 05:E242: 0B        .byte $0B   ; 
- D 3 - I - 0x016253 05:E243: 0B        .byte $0B   ; 
- D 3 - I - 0x016254 05:E244: 09        .byte $09   ; 
- D 3 - I - 0x016255 05:E245: 07        .byte $07   ; 
- D 3 - I - 0x016256 05:E246: 05        .byte $05   ; 
- D 3 - I - 0x016257 05:E247: 04        .byte $04   ; 
- D 3 - I - 0x016258 05:E248: 03        .byte $03   ; 
- D 3 - I - 0x016259 05:E249: 02        .byte $02   ; 
- D 3 - I - 0x01625A 05:E24A: 03        .byte $03   ; 
- D 3 - I - 0x01625B 05:E24B: 04        .byte $04   ; 
- D 3 - I - 0x01625C 05:E24C: 05        .byte $05   ; 
- D 3 - I - 0x01625D 05:E24D: 07        .byte $07   ; 
- D 3 - I - 0x01625E 05:E24E: 09        .byte $09   ; 
- D 3 - I - 0x01625F 05:E24F: 09        .byte $09   ; 
- D 3 - I - 0x016260 05:E250: 07        .byte $07   ; 
- D 3 - I - 0x016261 05:E251: 05        .byte $05   ; 
- - - - - - 0x016262 05:E252: 04        .byte $04   ; 
- - - - - - 0x016263 05:E253: 03        .byte $03   ; 
- - - - - - 0x016264 05:E254: 02        .byte $02   ; 
- - - - - - 0x016265 05:E255: 01        .byte $01   ; 
- - - - - - 0x016266 05:E256: 02        .byte $02   ; 
- - - - - - 0x016267 05:E257: 03        .byte $03   ; 
- - - - - - 0x016268 05:E258: 04        .byte $04   ; 
- - - - - - 0x016269 05:E259: 05        .byte $05   ; 
- - - - - - 0x01626A 05:E25A: 07        .byte $07   ; 



off_92_E25B:
- D 3 - I - 0x01626B 05:E25B: 07        .byte $07   ; 
- D 3 - I - 0x01626C 05:E25C: 05        .byte $05   ; 
- D 3 - I - 0x01626D 05:E25D: 04        .byte $04   ; 
- D 3 - I - 0x01626E 05:E25E: 03        .byte $03   ; 
- D 3 - I - 0x01626F 05:E25F: 02        .byte $02   ; 
- D 3 - I - 0x016270 05:E260: 01        .byte $01   ; 
- D 3 - I - 0x016271 05:E261: 00        .byte $00   ; 
- D 3 - I - 0x016272 05:E262: 01        .byte $01   ; 
- - - - - - 0x016273 05:E263: 02        .byte $02   ; 
- D 3 - I - 0x016274 05:E264: 03        .byte $03   ; 
- D 3 - I - 0x016275 05:E265: 04        .byte $04   ; 
- D 3 - I - 0x016276 05:E266: 05        .byte $05   ; 
- D 3 - I - 0x016277 05:E267: 05        .byte $05   ; 
- D 3 - I - 0x016278 05:E268: 04        .byte $04   ; 
- D 3 - I - 0x016279 05:E269: 03        .byte $03   ; 
- D 3 - I - 0x01627A 05:E26A: 02        .byte $02   ; 
- D 3 - I - 0x01627B 05:E26B: 01        .byte $01   ; 
- D 3 - I - 0x01627C 05:E26C: 00        .byte $00   ; 
- D 3 - I - 0x01627D 05:E26D: 00        .byte $00   ; 
- D 3 - I - 0x01627E 05:E26E: 00        .byte $00   ; 
- D 3 - I - 0x01627F 05:E26F: 01        .byte $01   ; 
- D 3 - I - 0x016280 05:E270: 02        .byte $02   ; 
- D 3 - I - 0x016281 05:E271: 03        .byte $03   ; 
- D 3 - I - 0x016282 05:E272: 04        .byte $04   ; 
- D 3 - I - 0x016283 05:E273: 04        .byte $04   ; 
- D 3 - I - 0x016284 05:E274: 03        .byte $03   ; 
- D 3 - I - 0x016285 05:E275: 02        .byte $02   ; 
- D 3 - I - 0x016286 05:E276: 01        .byte $01   ; 
- D 3 - I - 0x016287 05:E277: 00        .byte $00   ; 
- D 3 - I - 0x016288 05:E278: 00        .byte $00   ; 
- D 3 - I - 0x016289 05:E279: 00        .byte $00   ; 
- D 3 - I - 0x01628A 05:E27A: 00        .byte $00   ; 
- D 3 - I - 0x01628B 05:E27B: 00        .byte $00   ; 
- D 3 - I - 0x01628C 05:E27C: 01        .byte $01   ; 
- D 3 - I - 0x01628D 05:E27D: 02        .byte $02   ; 
- D 3 - I - 0x01628E 05:E27E: 03        .byte $03   ; 
- D 3 - I - 0x01628F 05:E27F: 03        .byte $03   ; 
- D 3 - I - 0x016290 05:E280: 02        .byte $02   ; 
- D 3 - I - 0x016291 05:E281: 01        .byte $01   ; 
- D 3 - I - 0x016292 05:E282: 00        .byte $00   ; 
- D 3 - I - 0x016293 05:E283: 00        .byte $00   ; 
- D 3 - I - 0x016294 05:E284: 00        .byte $00   ; 
- D 3 - I - 0x016295 05:E285: 00        .byte $00   ; 
- D 3 - I - 0x016296 05:E286: 00        .byte $00   ; 
- D 3 - I - 0x016297 05:E287: 00        .byte $00   ; 
- D 3 - I - 0x016298 05:E288: 00        .byte $00   ; 
- D 3 - I - 0x016299 05:E289: 01        .byte $01   ; 
- D 3 - I - 0x01629A 05:E28A: 02        .byte $02   ; 
- - - - - - 0x01629B 05:E28B: 02        .byte $02   ; 
- - - - - - 0x01629C 05:E28C: 01        .byte $01   ; 
- - - - - - 0x01629D 05:E28D: 00        .byte $00   ; 
- - - - - - 0x01629E 05:E28E: 00        .byte $00   ; 
- - - - - - 0x01629F 05:E28F: 00        .byte $00   ; 
- - - - - - 0x0162A0 05:E290: 00        .byte $00   ; 
- - - - - - 0x0162A1 05:E291: 00        .byte $00   ; 
- - - - - - 0x0162A2 05:E292: 00        .byte $00   ; 
- - - - - - 0x0162A3 05:E293: 00        .byte $00   ; 
- - - - - - 0x0162A4 05:E294: 00        .byte $00   ; 
- - - - - - 0x0162A5 05:E295: 00        .byte $00   ; 
- - - - - - 0x0162A6 05:E296: 01        .byte $01   ; 
- - - - - - 0x0162A7 05:E297: 01        .byte $01   ; 
- - - - - - 0x0162A8 05:E298: 00        .byte $00   ; 
- - - - - - 0x0162A9 05:E299: FF        .byte $FF   ; 
- - - - - - 0x0162AA 05:E29A: 00        .byte $00   ; 
- - - - - - 0x0162AB 05:E29B: 00        .byte $00   ; 
- - - - - - 0x0162AC 05:E29C: FF        .byte $FF   ; 



sub_84_E29D:
- D 3 - I - 0x0162AD 05:E29D: 84        .byte con_84_jsr
- D 3 - I - 0x0162AE 05:E29E: B9 E2     .word sub_84_E2B9
- D 3 - I - 0x0162B0 05:E2A0: 84        .byte con_84_jsr
- D 3 - I - 0x0162B1 05:E2A1: B9 E2     .word sub_84_E2B9
- D 3 - I - 0x0162B3 05:E2A3: 84        .byte con_84_jsr
- D 3 - I - 0x0162B4 05:E2A4: B9 E2     .word sub_84_E2B9
- D 3 - I - 0x0162B6 05:E2A6: 8A        .byte $8A   ; 
- D 3 - I - 0x0162B7 05:E2A7: F0        .byte $F0   ; 
- D 3 - I - 0x0162B8 05:E2A8: 02        .byte $02   ; 
- D 3 - I - 0x0162B9 05:E2A9: 01        .byte $01   ; 
- D 3 - I - 0x0162BA 05:E2AA: 8B        .byte $8B   ; 
- D 3 - I - 0x0162BB 05:E2AB: 01        .byte $01   ; 
- D 3 - I - 0x0162BC 05:E2AC: 00        .byte $00   ; 
- D 3 - I - 0x0162BD 05:E2AD: 24        .byte $24   ; 
- D 3 - I - 0x0162BE 05:E2AE: 8B        .byte $8B   ; 
- D 3 - I - 0x0162BF 05:E2AF: FF        .byte $FF   ; 
- D 3 - I - 0x0162C0 05:E2B0: 92        .byte con_92_loop, $01
- D 3 - I - 0x0162C2 05:E2B2: DC E1     .word off_92_E1DC
- D 3 - I - 0x0162C4 05:E2B4: 00        .byte $00   ; 
- D 3 - I - 0x0162C5 05:E2B5: 01        .byte $01   ; 
- D 3 - I - 0x0162C6 05:E2B6: 01        .byte $01   ; 
- D 3 - I - 0x0162C7 05:E2B7: 0B        .byte $0B   ; 
- D 3 - I - 0x0162C8 05:E2B8: 85        .byte con_85_rts



sub_84_E2B9:
- D 3 - I - 0x0162C9 05:E2B9: 92        .byte con_92_loop, $01
- D 3 - I - 0x0162CB 05:E2BB: C5 E1     .word off_92_E1C5
- D 3 - I - 0x0162CD 05:E2BD: 00        .byte $00   ; 
- D 3 - I - 0x0162CE 05:E2BE: 01        .byte $01   ; 
- D 3 - I - 0x0162CF 05:E2BF: 01        .byte $01   ; 
- D 3 - I - 0x0162D0 05:E2C0: 0B        .byte $0B   ; 
- D 3 - I - 0x0162D1 05:E2C1: 92        .byte con_92_loop, $01
- D 3 - I - 0x0162D3 05:E2C3: DC E1     .word off_92_E1DC
- D 3 - I - 0x0162D5 05:E2C5: 00        .byte $00   ; 
- D 3 - I - 0x0162D6 05:E2C6: 01        .byte $01   ; 
- D 3 - I - 0x0162D7 05:E2C7: 01        .byte $01   ; 
- D 3 - I - 0x0162D8 05:E2C8: 0B        .byte $0B   ; 
- D 3 - I - 0x0162D9 05:E2C9: 92        .byte con_92_loop, $01
- D 3 - I - 0x0162DB 05:E2CB: EF E1     .word off_92_E1EF
- D 3 - I - 0x0162DD 05:E2CD: 00        .byte $00   ; 
- D 3 - I - 0x0162DE 05:E2CE: 01        .byte $01   ; 
- D 3 - I - 0x0162DF 05:E2CF: 01        .byte $01   ; 
- D 3 - I - 0x0162E0 05:E2D0: 0B        .byte $0B   ; 
- D 3 - I - 0x0162E1 05:E2D1: 92        .byte con_92_loop, $01
- D 3 - I - 0x0162E3 05:E2D3: DC E1     .word off_92_E1DC
- D 3 - I - 0x0162E5 05:E2D5: 00        .byte $00   ; 
- D 3 - I - 0x0162E6 05:E2D6: 01        .byte $01   ; 
- D 3 - I - 0x0162E7 05:E2D7: 01        .byte $01   ; 
- D 3 - I - 0x0162E8 05:E2D8: 0B        .byte $0B   ; 
- D 3 - I - 0x0162E9 05:E2D9: 85        .byte con_85_rts



_off018_E2DA_04:
- D 3 - I - 0x0162EA 05:E2DA: 8B        .byte $8B   ; 
- D 3 - I - 0x0162EB 05:E2DB: 01        .byte $01   ; 
- D 3 - I - 0x0162EC 05:E2DC: 89        .byte $89   ; 
- D 3 - I - 0x0162ED 05:E2DD: 15        .byte $15   ; 
- D 3 - I - 0x0162EE 05:E2DE: 0F        .byte $0F   ; 
- D 3 - I - 0x0162EF 05:E2DF: 01        .byte $01   ; 
- D 3 - I - 0x0162F0 05:E2E0: 00        .byte $00   ; 
- D 3 - I - 0x0162F1 05:E2E1: 05        .byte $05   ; 
- D 3 - I - 0x0162F2 05:E2E2: 00        .byte $00   ; 
- D 3 - I - 0x0162F3 05:E2E3: 08        .byte $08   ; 
- D 3 - I - 0x0162F4 05:E2E4: FF        .byte $FF   ; 
- D 3 - I - 0x0162F5 05:E2E5: FF        .byte $FF   ; 
- D 3 - I - 0x0162F6 05:E2E6: 8E        .byte $8E   ; 
- D 3 - I - 0x0162F7 05:E2E7: 30        .byte $30   ; 
- D 3 - I - 0x0162F8 05:E2E8: 8A        .byte $8A   ; 
- D 3 - I - 0x0162F9 05:E2E9: 88        .byte $88   ; 
- D 3 - I - 0x0162FA 05:E2EA: 00        .byte $00   ; 
- D 3 - I - 0x0162FB 05:E2EB: 02        .byte $02   ; 
- D 3 - I - 0x0162FC 05:E2EC: 80        .byte $80   ; 
- D 3 - I - 0x0162FD 05:E2ED: 04        .byte $04   ; 
- D 3 - I - 0x0162FE 05:E2EE: 1C        .byte $1C   ; 
- D 3 - I - 0x0162FF 05:E2EF: 0A        .byte $0A   ; 
- D 3 - I - 0x016300 05:E2F0: 60        .byte $60   ; 
- D 3 - I - 0x016301 05:E2F1: 0A        .byte $0A   ; 
- D 3 - I - 0x016302 05:E2F2: 1C        .byte $1C   ; 
- D 3 - I - 0x016303 05:E2F3: 0A        .byte $0A   ; 
- D 3 - I - 0x016304 05:E2F4: 19        .byte $19   ; 
- D 3 - I - 0x016305 05:E2F5: 0A        .byte $0A   ; 
- D 3 - I - 0x016306 05:E2F6: 60        .byte $60   ; 
- D 3 - I - 0x016307 05:E2F7: 0A        .byte $0A   ; 
- D 3 - I - 0x016308 05:E2F8: 17        .byte $17   ; 
- D 3 - I - 0x016309 05:E2F9: 0A        .byte $0A   ; 
- D 3 - I - 0x01630A 05:E2FA: 1A        .byte $1A   ; 
- D 3 - I - 0x01630B 05:E2FB: 14        .byte $14   ; 
- D 3 - I - 0x01630C 05:E2FC: 19        .byte $19   ; 
- D 3 - I - 0x01630D 05:E2FD: 14        .byte $14   ; 
- D 3 - I - 0x01630E 05:E2FE: 1A        .byte $1A   ; 
- D 3 - I - 0x01630F 05:E2FF: 14        .byte $14   ; 
- D 3 - I - 0x016310 05:E300: 81        .byte $81   ; 
- D 3 - I - 0x016311 05:E301: 8A        .byte $8A   ; 
- D 3 - I - 0x016312 05:E302: C6        .byte $C6   ; 
- D 3 - I - 0x016313 05:E303: 05        .byte $05   ; 
- D 3 - I - 0x016314 05:E304: 01        .byte $01   ; 
- D 3 - I - 0x016315 05:E305: 8E        .byte $8E   ; 
- D 3 - I - 0x016316 05:E306: 70        .byte $70   ; 
- D 3 - I - 0x016317 05:E307: 8F        .byte $8F   ; 
- D 3 - I - 0x016318 05:E308: 0A        .byte $0A   ; 
- D 3 - I - 0x016319 05:E309: 02        .byte $02   ; 
- D 3 - I - 0x01631A 05:E30A: 02        .byte $02   ; 
- D 3 - I - 0x01631B 05:E30B: 00        .byte $00   ; 
- D 3 - I - 0x01631C 05:E30C: 8D        .byte $8D   ; 
- D 3 - I - 0x01631D 05:E30D: 02        .byte $02   ; 
- D 3 - I - 0x01631E 05:E30E: 80        .byte $80   ; 
- D 3 - I - 0x01631F 05:E30F: 02        .byte $02   ; 
- D 3 - I - 0x016320 05:E310: 28        .byte $28   ; 
- D 3 - I - 0x016321 05:E311: 0A        .byte $0A   ; 
- D 3 - I - 0x016322 05:E312: 2A        .byte $2A   ; 
- D 3 - I - 0x016323 05:E313: 0A        .byte $0A   ; 
- D 3 - I - 0x016324 05:E314: 2C        .byte $2C   ; 
- D 3 - I - 0x016325 05:E315: 14        .byte $14   ; 
- D 3 - I - 0x016326 05:E316: 2A        .byte $2A   ; 
- D 3 - I - 0x016327 05:E317: 0A        .byte $0A   ; 
- D 3 - I - 0x016328 05:E318: 28        .byte $28   ; 
- D 3 - I - 0x016329 05:E319: 0A        .byte $0A   ; 
- D 3 - I - 0x01632A 05:E31A: 2A        .byte $2A   ; 
- D 3 - I - 0x01632B 05:E31B: 0A        .byte $0A   ; 
- D 3 - I - 0x01632C 05:E31C: 28        .byte $28   ; 
- D 3 - I - 0x01632D 05:E31D: 0A        .byte $0A   ; 
- D 3 - I - 0x01632E 05:E31E: 26        .byte $26   ; 
- D 3 - I - 0x01632F 05:E31F: 14        .byte $14   ; 
- D 3 - I - 0x016330 05:E320: 25        .byte $25   ; 
- D 3 - I - 0x016331 05:E321: 0A        .byte $0A   ; 
- D 3 - I - 0x016332 05:E322: 26        .byte $26   ; 
- D 3 - I - 0x016333 05:E323: 0A        .byte $0A   ; 
- D 3 - I - 0x016334 05:E324: 25        .byte $25   ; 
- D 3 - I - 0x016335 05:E325: 0A        .byte $0A   ; 
- D 3 - I - 0x016336 05:E326: 26        .byte $26   ; 
- D 3 - I - 0x016337 05:E327: 0A        .byte $0A   ; 
- D 3 - I - 0x016338 05:E328: 25        .byte $25   ; 
- D 3 - I - 0x016339 05:E329: 0A        .byte $0A   ; 
- D 3 - I - 0x01633A 05:E32A: 23        .byte $23   ; 
- D 3 - I - 0x01633B 05:E32B: 14        .byte $14   ; 
- D 3 - I - 0x01633C 05:E32C: 28        .byte $28   ; 
- D 3 - I - 0x01633D 05:E32D: 0A        .byte $0A   ; 
- D 3 - I - 0x01633E 05:E32E: 2A        .byte $2A   ; 
- D 3 - I - 0x01633F 05:E32F: 0A        .byte $0A   ; 
- D 3 - I - 0x016340 05:E330: 28        .byte $28   ; 
- D 3 - I - 0x016341 05:E331: 0A        .byte $0A   ; 
- D 3 - I - 0x016342 05:E332: 2A        .byte $2A   ; 
- D 3 - I - 0x016343 05:E333: 14        .byte $14   ; 
- D 3 - I - 0x016344 05:E334: 2C        .byte $2C   ; 
- D 3 - I - 0x016345 05:E335: 0A        .byte $0A   ; 
- D 3 - I - 0x016346 05:E336: 2D        .byte $2D   ; 
- D 3 - I - 0x016347 05:E337: 0A        .byte $0A   ; 
- D 3 - I - 0x016348 05:E338: 81        .byte $81   ; 
- D 3 - I - 0x016349 05:E339: 8C        .byte $8C   ; 
- D 3 - I - 0x01634A 05:E33A: 07        .byte $07   ; 
- D 3 - I - 0x01634B 05:E33B: 01        .byte $01   ; 
- D 3 - I - 0x01634C 05:E33C: 09        .byte $09   ; 
- D 3 - I - 0x01634D 05:E33D: 8D        .byte $8D   ; 
- D 3 - I - 0x01634E 05:E33E: 00        .byte $00   ; 
- D 3 - I - 0x01634F 05:E33F: 8E        .byte $8E   ; 
- D 3 - I - 0x016350 05:E340: F0        .byte $F0   ; 
- D 3 - I - 0x016351 05:E341: 80        .byte $80   ; 
- D 3 - I - 0x016352 05:E342: 02        .byte $02   ; 
- D 3 - I - 0x016353 05:E343: 20        .byte $20   ; 
- D 3 - I - 0x016354 05:E344: 14        .byte $14   ; 
- D 3 - I - 0x016355 05:E345: 1E        .byte $1E   ; 
- D 3 - I - 0x016356 05:E346: 0A        .byte $0A   ; 
- D 3 - I - 0x016357 05:E347: 23        .byte $23   ; 
- D 3 - I - 0x016358 05:E348: 1E        .byte $1E   ; 
- D 3 - I - 0x016359 05:E349: 21        .byte $21   ; 
- D 3 - I - 0x01635A 05:E34A: 14        .byte $14   ; 
- D 3 - I - 0x01635B 05:E34B: 20        .byte $20   ; 
- D 3 - I - 0x01635C 05:E34C: 14        .byte $14   ; 
- D 3 - I - 0x01635D 05:E34D: 1C        .byte $1C   ; 
- D 3 - I - 0x01635E 05:E34E: 14        .byte $14   ; 
- D 3 - I - 0x01635F 05:E34F: 1E        .byte $1E   ; 
- D 3 - I - 0x016360 05:E350: 0A        .byte $0A   ; 
- D 3 - I - 0x016361 05:E351: 1C        .byte $1C   ; 
- D 3 - I - 0x016362 05:E352: 0A        .byte $0A   ; 
- D 3 - I - 0x016363 05:E353: 1A        .byte $1A   ; 
- D 3 - I - 0x016364 05:E354: 14        .byte $14   ; 
- D 3 - I - 0x016365 05:E355: 19        .byte $19   ; 
- D 3 - I - 0x016366 05:E356: 14        .byte $14   ; 
- D 3 - I - 0x016367 05:E357: 17        .byte $17   ; 
- D 3 - I - 0x016368 05:E358: 0A        .byte $0A   ; 
- D 3 - I - 0x016369 05:E359: 19        .byte $19   ; 
- D 3 - I - 0x01636A 05:E35A: 0A        .byte $0A   ; 
- D 3 - I - 0x01636B 05:E35B: 1A        .byte $1A   ; 
- D 3 - I - 0x01636C 05:E35C: 0A        .byte $0A   ; 
- D 3 - I - 0x01636D 05:E35D: 1A        .byte $1A   ; 
- D 3 - I - 0x01636E 05:E35E: 0A        .byte $0A   ; 
- D 3 - I - 0x01636F 05:E35F: 1C        .byte $1C   ; 
- D 3 - I - 0x016370 05:E360: 0A        .byte $0A   ; 
- D 3 - I - 0x016371 05:E361: 1E        .byte $1E   ; 
- D 3 - I - 0x016372 05:E362: 0A        .byte $0A   ; 
- D 3 - I - 0x016373 05:E363: 81        .byte $81   ; 
- D 3 - I - 0x016374 05:E364: 8C        .byte $8C   ; 
- D 3 - I - 0x016375 05:E365: 13        .byte $13   ; 
- D 3 - I - 0x016376 05:E366: 01        .byte $01   ; 
- D 3 - I - 0x016377 05:E367: FF        .byte $FF   ; 
- D 3 - I - 0x016378 05:E368: 86        .byte $86   ; 
- D 3 - I - 0x016379 05:E369: 00        .byte $00   ; 
- D 3 - I - 0x01637A 05:E36A: 8E        .byte $8E   ; 
- D 3 - I - 0x01637B 05:E36B: B0        .byte $B0   ; 
- D 3 - I - 0x01637C 05:E36C: 8F        .byte $8F   ; 
- D 3 - I - 0x01637D 05:E36D: 00        .byte $00   ; 
- D 3 - I - 0x01637E 05:E36E: 00        .byte $00   ; 
- D 3 - I - 0x01637F 05:E36F: 00        .byte $00   ; 
- D 3 - I - 0x016380 05:E370: 00        .byte $00   ; 
- D 3 - I - 0x016381 05:E371: 80        .byte $80   ; 
- D 3 - I - 0x016382 05:E372: 02        .byte $02   ; 
- D 3 - I - 0x016383 05:E373: 2C        .byte $2C   ; 
- D 3 - I - 0x016384 05:E374: 0A        .byte $0A   ; 
- D 3 - I - 0x016385 05:E375: 28        .byte $28   ; 
- D 3 - I - 0x016386 05:E376: 0A        .byte $0A   ; 
- D 3 - I - 0x016387 05:E377: 26        .byte $26   ; 
- D 3 - I - 0x016388 05:E378: 14        .byte $14   ; 
- D 3 - I - 0x016389 05:E379: 25        .byte $25   ; 
- D 3 - I - 0x01638A 05:E37A: 0A        .byte $0A   ; 
- D 3 - I - 0x01638B 05:E37B: 23        .byte $23   ; 
- D 3 - I - 0x01638C 05:E37C: 0A        .byte $0A   ; 
- D 3 - I - 0x01638D 05:E37D: 2D        .byte $2D   ; 
- D 3 - I - 0x01638E 05:E37E: 0A        .byte $0A   ; 
- D 3 - I - 0x01638F 05:E37F: 2A        .byte $2A   ; 
- D 3 - I - 0x016390 05:E380: 0A        .byte $0A   ; 
- D 3 - I - 0x016391 05:E381: 26        .byte $26   ; 
- D 3 - I - 0x016392 05:E382: 14        .byte $14   ; 
- D 3 - I - 0x016393 05:E383: 25        .byte $25   ; 
- D 3 - I - 0x016394 05:E384: 0A        .byte $0A   ; 
- D 3 - I - 0x016395 05:E385: 23        .byte $23   ; 
- D 3 - I - 0x016396 05:E386: 0A        .byte $0A   ; 
- D 3 - I - 0x016397 05:E387: 81        .byte $81   ; 
- D 3 - I - 0x016398 05:E388: 86        .byte $86   ; 
- D 3 - I - 0x016399 05:E389: 00        .byte $00   ; 
- D 3 - I - 0x01639A 05:E38A: 8F        .byte $8F   ; 
- D 3 - I - 0x01639B 05:E38B: 00        .byte $00   ; 
- D 3 - I - 0x01639C 05:E38C: 00        .byte $00   ; 
- D 3 - I - 0x01639D 05:E38D: 00        .byte $00   ; 
- D 3 - I - 0x01639E 05:E38E: 00        .byte $00   ; 
- D 3 - I - 0x01639F 05:E38F: 8C        .byte $8C   ; 
- D 3 - I - 0x0163A0 05:E390: 00        .byte $00   ; 
- D 3 - I - 0x0163A1 05:E391: 00        .byte $00   ; 
- D 3 - I - 0x0163A2 05:E392: 00        .byte $00   ; 
- D 3 - I - 0x0163A3 05:E393: 8E        .byte $8E   ; 
- D 3 - I - 0x0163A4 05:E394: 70        .byte $70   ; 
- D 3 - I - 0x0163A5 05:E395: 8D        .byte $8D   ; 
- D 3 - I - 0x0163A6 05:E396: 02        .byte $02   ; 
- D 3 - I - 0x0163A7 05:E397: 28        .byte $28   ; 
- D 3 - I - 0x0163A8 05:E398: 0A        .byte $0A   ; 
- D 3 - I - 0x0163A9 05:E399: 2A        .byte $2A   ; 
- D 3 - I - 0x0163AA 05:E39A: 0A        .byte $0A   ; 
- D 3 - I - 0x0163AB 05:E39B: 2C        .byte $2C   ; 
- D 3 - I - 0x0163AC 05:E39C: 14        .byte $14   ; 
- D 3 - I - 0x0163AD 05:E39D: 2A        .byte $2A   ; 
- D 3 - I - 0x0163AE 05:E39E: 0A        .byte $0A   ; 
- D 3 - I - 0x0163AF 05:E39F: 28        .byte $28   ; 
- D 3 - I - 0x0163B0 05:E3A0: 0A        .byte $0A   ; 
- D 3 - I - 0x0163B1 05:E3A1: 2A        .byte $2A   ; 
- D 3 - I - 0x0163B2 05:E3A2: 0A        .byte $0A   ; 
- D 3 - I - 0x0163B3 05:E3A3: 28        .byte $28   ; 
- D 3 - I - 0x0163B4 05:E3A4: 0A        .byte $0A   ; 
- D 3 - I - 0x0163B5 05:E3A5: 26        .byte $26   ; 
- D 3 - I - 0x0163B6 05:E3A6: 14        .byte $14   ; 
- D 3 - I - 0x0163B7 05:E3A7: 25        .byte $25   ; 
- D 3 - I - 0x0163B8 05:E3A8: 0A        .byte $0A   ; 
- D 3 - I - 0x0163B9 05:E3A9: 26        .byte $26   ; 
- D 3 - I - 0x0163BA 05:E3AA: 0A        .byte $0A   ; 
- D 3 - I - 0x0163BB 05:E3AB: 25        .byte $25   ; 
- D 3 - I - 0x0163BC 05:E3AC: 0A        .byte $0A   ; 
- D 3 - I - 0x0163BD 05:E3AD: 26        .byte $26   ; 
- D 3 - I - 0x0163BE 05:E3AE: 0A        .byte $0A   ; 
- D 3 - I - 0x0163BF 05:E3AF: 25        .byte $25   ; 
- D 3 - I - 0x0163C0 05:E3B0: 0A        .byte $0A   ; 
- D 3 - I - 0x0163C1 05:E3B1: 23        .byte $23   ; 
- D 3 - I - 0x0163C2 05:E3B2: 14        .byte $14   ; 
- D 3 - I - 0x0163C3 05:E3B3: 26        .byte $26   ; 
- D 3 - I - 0x0163C4 05:E3B4: 0A        .byte $0A   ; 
- D 3 - I - 0x0163C5 05:E3B5: 25        .byte $25   ; 
- D 3 - I - 0x0163C6 05:E3B6: 05        .byte $05   ; 
- D 3 - I - 0x0163C7 05:E3B7: 23        .byte $23   ; 
- D 3 - I - 0x0163C8 05:E3B8: 05        .byte $05   ; 
- D 3 - I - 0x0163C9 05:E3B9: 28        .byte $28   ; 
- D 3 - I - 0x0163CA 05:E3BA: 05        .byte $05   ; 
- D 3 - I - 0x0163CB 05:E3BB: 26        .byte $26   ; 
- D 3 - I - 0x0163CC 05:E3BC: 05        .byte $05   ; 
- D 3 - I - 0x0163CD 05:E3BD: 25        .byte $25   ; 
- D 3 - I - 0x0163CE 05:E3BE: 05        .byte $05   ; 
- D 3 - I - 0x0163CF 05:E3BF: 2A        .byte $2A   ; 
- D 3 - I - 0x0163D0 05:E3C0: 05        .byte $05   ; 
- D 3 - I - 0x0163D1 05:E3C1: 28        .byte $28   ; 
- D 3 - I - 0x0163D2 05:E3C2: 05        .byte $05   ; 
- D 3 - I - 0x0163D3 05:E3C3: 26        .byte $26   ; 
- D 3 - I - 0x0163D4 05:E3C4: 05        .byte $05   ; 
- D 3 - I - 0x0163D5 05:E3C5: 2C        .byte $2C   ; 
- D 3 - I - 0x0163D6 05:E3C6: 05        .byte $05   ; 
- D 3 - I - 0x0163D7 05:E3C7: 2D        .byte $2D   ; 
- D 3 - I - 0x0163D8 05:E3C8: 05        .byte $05   ; 
- D 3 - I - 0x0163D9 05:E3C9: 2F        .byte $2F   ; 
- D 3 - I - 0x0163DA 05:E3CA: 05        .byte $05   ; 
- D 3 - I - 0x0163DB 05:E3CB: 3D        .byte $3D   ; 
- D 3 - I - 0x0163DC 05:E3CC: 05        .byte $05   ; 
- D 3 - I - 0x0163DD 05:E3CD: 8A        .byte $8A   ; 
- D 3 - I - 0x0163DE 05:E3CE: 88        .byte $88   ; 
- D 3 - I - 0x0163DF 05:E3CF: 00        .byte $00   ; 
- D 3 - I - 0x0163E0 05:E3D0: 02        .byte $02   ; 
- D 3 - I - 0x0163E1 05:E3D1: 8D        .byte $8D   ; 
- D 3 - I - 0x0163E2 05:E3D2: 00        .byte $00   ; 
- D 3 - I - 0x0163E3 05:E3D3: 8E        .byte $8E   ; 
- D 3 - I - 0x0163E4 05:E3D4: 30        .byte $30   ; 
- D 3 - I - 0x0163E5 05:E3D5: 80        .byte $80   ; 
- D 3 - I - 0x0163E6 05:E3D6: 04        .byte $04   ; 
- D 3 - I - 0x0163E7 05:E3D7: 1C        .byte $1C   ; 
- D 3 - I - 0x0163E8 05:E3D8: 0A        .byte $0A   ; 
- D 3 - I - 0x0163E9 05:E3D9: 60        .byte $60   ; 
- D 3 - I - 0x0163EA 05:E3DA: 0A        .byte $0A   ; 
- D 3 - I - 0x0163EB 05:E3DB: 1C        .byte $1C   ; 
- D 3 - I - 0x0163EC 05:E3DC: 0A        .byte $0A   ; 
- D 3 - I - 0x0163ED 05:E3DD: 19        .byte $19   ; 
- D 3 - I - 0x0163EE 05:E3DE: 0A        .byte $0A   ; 
- D 3 - I - 0x0163EF 05:E3DF: 60        .byte $60   ; 
- D 3 - I - 0x0163F0 05:E3E0: 0A        .byte $0A   ; 
- D 3 - I - 0x0163F1 05:E3E1: 17        .byte $17   ; 
- D 3 - I - 0x0163F2 05:E3E2: 0A        .byte $0A   ; 
- D 3 - I - 0x0163F3 05:E3E3: 1A        .byte $1A   ; 
- D 3 - I - 0x0163F4 05:E3E4: 14        .byte $14   ; 
- D 3 - I - 0x0163F5 05:E3E5: 19        .byte $19   ; 
- D 3 - I - 0x0163F6 05:E3E6: 14        .byte $14   ; 
- D 3 - I - 0x0163F7 05:E3E7: 1A        .byte $1A   ; 
- D 3 - I - 0x0163F8 05:E3E8: 14        .byte $14   ; 
- D 3 - I - 0x0163F9 05:E3E9: 81        .byte $81   ; 
- D 3 - I - 0x0163FA 05:E3EA: 8A        .byte $8A   ; 
- D 3 - I - 0x0163FB 05:E3EB: 80        .byte $80   ; 
- D 3 - I - 0x0163FC 05:E3EC: 0F        .byte $0F   ; 
- D 3 - I - 0x0163FD 05:E3ED: 01        .byte $01   ; 
- D 3 - I - 0x0163FE 05:E3EE: 1C        .byte $1C   ; 
- D 3 - I - 0x0163FF 05:E3EF: EE        .byte $EE   ; 
- D 3 - I - 0x016400 05:E3F0: 8A        .byte $8A   ; 
- D 3 - I - 0x016401 05:E3F1: 44        .byte $44   ; 
- D 3 - I - 0x016402 05:E3F2: 00        .byte $00   ; 
- D 3 - I - 0x016403 05:E3F3: 02        .byte $02   ; 
- D 3 - I - 0x016404 05:E3F4: 60        .byte $60   ; 
- D 3 - I - 0x016405 05:E3F5: 02        .byte $02   ; 
- D 3 - I - 0x016406 05:E3F6: 84        .byte con_84_jsr
- D 3 - I - 0x016407 05:E3F7: 07 E6     .word sub_84_E607
- D 3 - I - 0x016409 05:E3F9: 2D        .byte $2D   ; 
- D 3 - I - 0x01640A 05:E3FA: 3C        .byte $3C   ; 
- D 3 - I - 0x01640B 05:E3FB: 8E        .byte $8E   ; 
- D 3 - I - 0x01640C 05:E3FC: 30        .byte $30   ; 
- D 3 - I - 0x01640D 05:E3FD: 8A        .byte $8A   ; 
- D 3 - I - 0x01640E 05:E3FE: 88        .byte $88   ; 
- D 3 - I - 0x01640F 05:E3FF: 00        .byte $00   ; 
- D 3 - I - 0x016410 05:E400: 02        .byte $02   ; 
- D 3 - I - 0x016411 05:E401: 87        .byte $87   ; 
- D 3 - I - 0x016412 05:E402: 01        .byte $01   ; 
- D 3 - I - 0x016413 05:E403: 8A        .byte $8A   ; 
- D 3 - I - 0x016414 05:E404: 90        .byte $90   ; 
- D 3 - I - 0x016415 05:E405: 01        .byte $01   ; 
- D 3 - I - 0x016416 05:E406: 01        .byte $01   ; 
- D 3 - I - 0x016417 05:E407: 84        .byte con_84_jsr
- D 3 - I - 0x016418 05:E408: BA E6     .word sub_84_E6BA
- D 3 - I - 0x01641A 05:E40A: 8A        .byte $8A   ; 
- D 3 - I - 0x01641B 05:E40B: B0        .byte $B0   ; 
- D 3 - I - 0x01641C 05:E40C: 05        .byte $05   ; 
- D 3 - I - 0x01641D 05:E40D: 01        .byte $01   ; 
- D 3 - I - 0x01641E 05:E40E: 21        .byte $21   ; 
- D 3 - I - 0x01641F 05:E40F: 78        .byte $78   ; 
- D 3 - I - 0x016420 05:E410: 60        .byte $60   ; 
- D 3 - I - 0x016421 05:E411: 02        .byte $02   ; 
- D 3 - I - 0x016422 05:E412: 83        .byte $83   ; 



_off019_E413_04:
- D 3 - I - 0x016423 05:E413: 8B        .byte $8B   ; 
- D 3 - I - 0x016424 05:E414: 01        .byte $01   ; 
- D 3 - I - 0x016425 05:E415: 8A        .byte $8A   ; 
- D 3 - I - 0x016426 05:E416: 88        .byte $88   ; 
- D 3 - I - 0x016427 05:E417: 00        .byte $00   ; 
- D 3 - I - 0x016428 05:E418: 02        .byte $02   ; 
- D 3 - I - 0x016429 05:E419: 8E        .byte $8E   ; 
- D 3 - I - 0x01642A 05:E41A: 30        .byte $30   ; 
- D 3 - I - 0x01642B 05:E41B: 80        .byte $80   ; 
- D 3 - I - 0x01642C 05:E41C: 04        .byte $04   ; 
- D 3 - I - 0x01642D 05:E41D: 17        .byte $17   ; 
- D 3 - I - 0x01642E 05:E41E: 0A        .byte $0A   ; 
- D 3 - I - 0x01642F 05:E41F: 60        .byte $60   ; 
- D 3 - I - 0x016430 05:E420: 0A        .byte $0A   ; 
- D 3 - I - 0x016431 05:E421: 17        .byte $17   ; 
- D 3 - I - 0x016432 05:E422: 0A        .byte $0A   ; 
- D 3 - I - 0x016433 05:E423: 15        .byte $15   ; 
- D 3 - I - 0x016434 05:E424: 0A        .byte $0A   ; 
- D 3 - I - 0x016435 05:E425: 60        .byte $60   ; 
- D 3 - I - 0x016436 05:E426: 0A        .byte $0A   ; 
- D 3 - I - 0x016437 05:E427: 14        .byte $14   ; 
- D 3 - I - 0x016438 05:E428: 0A        .byte $0A   ; 
- D 3 - I - 0x016439 05:E429: 15        .byte $15   ; 
- D 3 - I - 0x01643A 05:E42A: 3C        .byte $3C   ; 
- D 3 - I - 0x01643B 05:E42B: 81        .byte $81   ; 
- D 3 - I - 0x01643C 05:E42C: 82        .byte $82   ; 
- D 3 - I - 0x01643D 05:E42D: 02        .byte $02   ; 
- D 3 - I - 0x01643E 05:E42E: 8A        .byte $8A   ; 
- D 3 - I - 0x01643F 05:E42F: B0        .byte $B0   ; 
- D 3 - I - 0x016440 05:E430: 01        .byte $01   ; 
- D 3 - I - 0x016441 05:E431: 01        .byte $01   ; 
- D 3 - I - 0x016442 05:E432: 80        .byte $80   ; 
- D 3 - I - 0x016443 05:E433: 0C        .byte $0C   ; 
- D 3 - I - 0x016444 05:E434: 86        .byte $86   ; 
- D 3 - I - 0x016445 05:E435: 00        .byte $00   ; 
- D 3 - I - 0x016446 05:E436: 84        .byte con_84_jsr
- D 3 - I - 0x016447 05:E437: DF E5     .word sub_84_E5DF
- D 3 - I - 0x016449 05:E439: 86        .byte $86   ; 
- D 3 - I - 0x01644A 05:E43A: 02        .byte $02   ; 
- D 3 - I - 0x01644B 05:E43B: 84        .byte con_84_jsr
- D 3 - I - 0x01644C 05:E43C: EE E5     .word sub_84_E5EE
- D 3 - I - 0x01644E 05:E43E: 86        .byte $86   ; 
- D 3 - I - 0x01644F 05:E43F: FE        .byte $FE   ; 
- D 3 - I - 0x016450 05:E440: 84        .byte con_84_jsr
- D 3 - I - 0x016451 05:E441: DF E5     .word sub_84_E5DF
- D 3 - I - 0x016453 05:E443: 84        .byte con_84_jsr
- D 3 - I - 0x016454 05:E444: D5 E5     .word sub_84_E5D5
- D 3 - I - 0x016456 05:E446: 86        .byte $86   ; 
- D 3 - I - 0x016457 05:E447: FB        .byte $FB   ; 
- D 3 - I - 0x016458 05:E448: 84        .byte con_84_jsr
- D 3 - I - 0x016459 05:E449: F8 E5     .word sub_84_E5F8
- D 3 - I - 0x01645B 05:E44B: 84        .byte con_84_jsr
- D 3 - I - 0x01645C 05:E44C: F8 E5     .word sub_84_E5F8
- D 3 - I - 0x01645E 05:E44E: 86        .byte $86   ; 
- D 3 - I - 0x01645F 05:E44F: FE        .byte $FE   ; 
- D 3 - I - 0x016460 05:E450: 84        .byte con_84_jsr
- D 3 - I - 0x016461 05:E451: DF E5     .word sub_84_E5DF
- D 3 - I - 0x016463 05:E453: 81        .byte $81   ; 
- D 3 - I - 0x016464 05:E454: 82        .byte $82   ; 
- D 3 - I - 0x016465 05:E455: 00        .byte $00   ; 
- D 3 - I - 0x016466 05:E456: 86        .byte $86   ; 
- D 3 - I - 0x016467 05:E457: 00        .byte $00   ; 
- D 3 - I - 0x016468 05:E458: 8A        .byte $8A   ; 
- D 3 - I - 0x016469 05:E459: 88        .byte $88   ; 
- D 3 - I - 0x01646A 05:E45A: 00        .byte $00   ; 
- D 3 - I - 0x01646B 05:E45B: 01        .byte $01   ; 
- D 3 - I - 0x01646C 05:E45C: 80        .byte $80   ; 
- D 3 - I - 0x01646D 05:E45D: 04        .byte $04   ; 
- D 3 - I - 0x01646E 05:E45E: 17        .byte $17   ; 
- D 3 - I - 0x01646F 05:E45F: 0A        .byte $0A   ; 
- D 3 - I - 0x016470 05:E460: 60        .byte $60   ; 
- D 3 - I - 0x016471 05:E461: 0A        .byte $0A   ; 
- D 3 - I - 0x016472 05:E462: 17        .byte $17   ; 
- D 3 - I - 0x016473 05:E463: 0A        .byte $0A   ; 
- D 3 - I - 0x016474 05:E464: 15        .byte $15   ; 
- D 3 - I - 0x016475 05:E465: 0A        .byte $0A   ; 
- D 3 - I - 0x016476 05:E466: 60        .byte $60   ; 
- D 3 - I - 0x016477 05:E467: 0A        .byte $0A   ; 
- D 3 - I - 0x016478 05:E468: 14        .byte $14   ; 
- D 3 - I - 0x016479 05:E469: 0A        .byte $0A   ; 
- D 3 - I - 0x01647A 05:E46A: 15        .byte $15   ; 
- D 3 - I - 0x01647B 05:E46B: 3C        .byte $3C   ; 
- D 3 - I - 0x01647C 05:E46C: 81        .byte $81   ; 
- D 3 - I - 0x01647D 05:E46D: 8A        .byte $8A   ; 
- D 3 - I - 0x01647E 05:E46E: 80        .byte $80   ; 
- D 3 - I - 0x01647F 05:E46F: 0F        .byte $0F   ; 
- D 3 - I - 0x016480 05:E470: 01        .byte $01   ; 
- D 3 - I - 0x016481 05:E471: 15        .byte $15   ; 
- D 3 - I - 0x016482 05:E472: F0        .byte $F0   ; 
- D 3 - I - 0x016483 05:E473: 8A        .byte $8A   ; 
- D 3 - I - 0x016484 05:E474: 22        .byte $22   ; 
- D 3 - I - 0x016485 05:E475: 00        .byte $00   ; 
- D 3 - I - 0x016486 05:E476: 02        .byte $02   ; 
- D 3 - I - 0x016487 05:E477: 60        .byte $60   ; 
- D 3 - I - 0x016488 05:E478: 12        .byte $12   ; 
- D 3 - I - 0x016489 05:E479: 84        .byte con_84_jsr
- D 3 - I - 0x01648A 05:E47A: 07 E6     .word sub_84_E607
- D 3 - I - 0x01648C 05:E47C: 2D        .byte $2D   ; 
- D 3 - I - 0x01648D 05:E47D: 2A        .byte $2A   ; 
- D 3 - I - 0x01648E 05:E47E: 8E        .byte $8E   ; 
- D 3 - I - 0x01648F 05:E47F: 30        .byte $30   ; 
- D 3 - I - 0x016490 05:E480: 8A        .byte $8A   ; 
- D 3 - I - 0x016491 05:E481: 88        .byte $88   ; 
- D 3 - I - 0x016492 05:E482: 00        .byte $00   ; 
- D 3 - I - 0x016493 05:E483: 02        .byte $02   ; 
- D 3 - I - 0x016494 05:E484: 8A        .byte $8A   ; 
- D 3 - I - 0x016495 05:E485: 90        .byte $90   ; 
- D 3 - I - 0x016496 05:E486: 01        .byte $01   ; 
- D 3 - I - 0x016497 05:E487: 01        .byte $01   ; 
- D 3 - I - 0x016498 05:E488: 84        .byte con_84_jsr
- D 3 - I - 0x016499 05:E489: BA E6     .word sub_84_E6BA
- D 3 - I - 0x01649B 05:E48B: 8A        .byte $8A   ; 
- D 3 - I - 0x01649C 05:E48C: B0        .byte $B0   ; 
- D 3 - I - 0x01649D 05:E48D: 05        .byte $05   ; 
- D 3 - I - 0x01649E 05:E48E: 01        .byte $01   ; 
- D 3 - I - 0x01649F 05:E48F: 28        .byte $28   ; 
- D 3 - I - 0x0164A0 05:E490: 78        .byte $78   ; 
- D 3 - I - 0x0164A1 05:E491: 60        .byte $60   ; 
- D 3 - I - 0x0164A2 05:E492: 02        .byte $02   ; 
- D 3 - I - 0x0164A3 05:E493: 83        .byte $83   ; 



_off020_E494_04:
- D 3 - I - 0x0164A4 05:E494: 60        .byte $60   ; 
- D 3 - I - 0x0164A5 05:E495: B4        .byte $B4   ; 
- D 3 - I - 0x0164A6 05:E496: 8C        .byte $8C   ; 
- D 3 - I - 0x0164A7 05:E497: 18        .byte $18   ; 
- D 3 - I - 0x0164A8 05:E498: 01        .byte $01   ; 
- D 3 - I - 0x0164A9 05:E499: FF        .byte $FF   ; 
- D 3 - I - 0x0164AA 05:E49A: 86        .byte $86   ; 
- D 3 - I - 0x0164AB 05:E49B: F9        .byte $F9   ; 
- D 3 - I - 0x0164AC 05:E49C: 21        .byte $21   ; 
- D 3 - I - 0x0164AD 05:E49D: 0A        .byte $0A   ; 
- D 3 - I - 0x0164AE 05:E49E: 20        .byte $20   ; 
- D 3 - I - 0x0164AF 05:E49F: 0A        .byte $0A   ; 
- D 3 - I - 0x0164B0 05:E4A0: 1E        .byte $1E   ; 
- D 3 - I - 0x0164B1 05:E4A1: 14        .byte $14   ; 
- D 3 - I - 0x0164B2 05:E4A2: 19        .byte $19   ; 
- D 3 - I - 0x0164B3 05:E4A3: 0A        .byte $0A   ; 
- D 3 - I - 0x0164B4 05:E4A4: 1A        .byte $1A   ; 
- D 3 - I - 0x0164B5 05:E4A5: 0A        .byte $0A   ; 
- D 3 - I - 0x0164B6 05:E4A6: 80        .byte $80   ; 
- D 3 - I - 0x0164B7 05:E4A7: 0D        .byte $0D   ; 
- D 3 - I - 0x0164B8 05:E4A8: 17        .byte $17   ; 
- D 3 - I - 0x0164B9 05:E4A9: 14        .byte $14   ; 
- D 3 - I - 0x0164BA 05:E4AA: 1E        .byte $1E   ; 
- D 3 - I - 0x0164BB 05:E4AB: 0A        .byte $0A   ; 
- D 3 - I - 0x0164BC 05:E4AC: 23        .byte $23   ; 
- D 3 - I - 0x0164BD 05:E4AD: 0A        .byte $0A   ; 
- D 3 - I - 0x0164BE 05:E4AE: 21        .byte $21   ; 
- D 3 - I - 0x0164BF 05:E4AF: 05        .byte $05   ; 
- D 3 - I - 0x0164C0 05:E4B0: 20        .byte $20   ; 
- D 3 - I - 0x0164C1 05:E4B1: 05        .byte $05   ; 
- D 3 - I - 0x0164C2 05:E4B2: 1E        .byte $1E   ; 
- D 3 - I - 0x0164C3 05:E4B3: 0A        .byte $0A   ; 
- D 3 - I - 0x0164C4 05:E4B4: 1C        .byte $1C   ; 
- D 3 - I - 0x0164C5 05:E4B5: 0A        .byte $0A   ; 
- D 3 - I - 0x0164C6 05:E4B6: 1D        .byte $1D   ; 
- D 3 - I - 0x0164C7 05:E4B7: 0A        .byte $0A   ; 
- D 3 - I - 0x0164C8 05:E4B8: 1E        .byte $1E   ; 
- D 3 - I - 0x0164C9 05:E4B9: 14        .byte $14   ; 
- D 3 - I - 0x0164CA 05:E4BA: 21        .byte $21   ; 
- D 3 - I - 0x0164CB 05:E4BB: 0A        .byte $0A   ; 
- D 3 - I - 0x0164CC 05:E4BC: 1E        .byte $1E   ; 
- D 3 - I - 0x0164CD 05:E4BD: 0A        .byte $0A   ; 
- D 3 - I - 0x0164CE 05:E4BE: 81        .byte $81   ; 
- D 3 - I - 0x0164CF 05:E4BF: 17        .byte $17   ; 
- D 3 - I - 0x0164D0 05:E4C0: 14        .byte $14   ; 
- D 3 - I - 0x0164D1 05:E4C1: 1E        .byte $1E   ; 
- D 3 - I - 0x0164D2 05:E4C2: 0A        .byte $0A   ; 
- D 3 - I - 0x0164D3 05:E4C3: 23        .byte $23   ; 
- D 3 - I - 0x0164D4 05:E4C4: 0A        .byte $0A   ; 
- D 3 - I - 0x0164D5 05:E4C5: 21        .byte $21   ; 
- D 3 - I - 0x0164D6 05:E4C6: 05        .byte $05   ; 
- D 3 - I - 0x0164D7 05:E4C7: 20        .byte $20   ; 
- D 3 - I - 0x0164D8 05:E4C8: 05        .byte $05   ; 
- D 3 - I - 0x0164D9 05:E4C9: 1E        .byte $1E   ; 
- D 3 - I - 0x0164DA 05:E4CA: 0A        .byte $0A   ; 
- D 3 - I - 0x0164DB 05:E4CB: 1C        .byte $1C   ; 
- D 3 - I - 0x0164DC 05:E4CC: 0A        .byte $0A   ; 
- D 3 - I - 0x0164DD 05:E4CD: 82        .byte $82   ; 
- D 3 - I - 0x0164DE 05:E4CE: 05        .byte $05   ; 
- D 3 - I - 0x0164DF 05:E4CF: 1E        .byte $1E   ; 
- D 3 - I - 0x0164E0 05:E4D0: 1C        .byte $1C   ; 
- D 3 - I - 0x0164E1 05:E4D1: 1E        .byte $1E   ; 
- D 3 - I - 0x0164E2 05:E4D2: 1E        .byte $1E   ; 
- D 3 - I - 0x0164E3 05:E4D3: 1C        .byte $1C   ; 
- D 3 - I - 0x0164E4 05:E4D4: 1E        .byte $1E   ; 
- D 3 - I - 0x0164E5 05:E4D5: 1E        .byte $1E   ; 
- D 3 - I - 0x0164E6 05:E4D6: 1C        .byte $1C   ; 
- D 3 - I - 0x0164E7 05:E4D7: 1E        .byte $1E   ; 
- D 3 - I - 0x0164E8 05:E4D8: 21        .byte $21   ; 
- D 3 - I - 0x0164E9 05:E4D9: 82        .byte $82   ; 
- D 3 - I - 0x0164EA 05:E4DA: 00        .byte $00   ; 
- D 3 - I - 0x0164EB 05:E4DB: 86        .byte $86   ; 
- D 3 - I - 0x0164EC 05:E4DC: 00        .byte $00   ; 
- D 3 - I - 0x0164ED 05:E4DD: 60        .byte $60   ; 
- D 3 - I - 0x0164EE 05:E4DE: DC        .byte $DC   ; 
- D 3 - I - 0x0164EF 05:E4DF: 0D        .byte $0D   ; 
- D 3 - I - 0x0164F0 05:E4E0: 0A        .byte $0A   ; 
- D 3 - I - 0x0164F1 05:E4E1: 0B        .byte $0B   ; 
- D 3 - I - 0x0164F2 05:E4E2: 0A        .byte $0A   ; 
- D 3 - I - 0x0164F3 05:E4E3: 10        .byte $10   ; 
- D 3 - I - 0x0164F4 05:E4E4: B4        .byte $B4   ; 
- D 3 - I - 0x0164F5 05:E4E5: 0E        .byte $0E   ; 
- D 3 - I - 0x0164F6 05:E4E6: 0A        .byte $0A   ; 
- D 3 - I - 0x0164F7 05:E4E7: 0D        .byte $0D   ; 
- D 3 - I - 0x0164F8 05:E4E8: 0A        .byte $0A   ; 
- D 3 - I - 0x0164F9 05:E4E9: 0E        .byte $0E   ; 
- D 3 - I - 0x0164FA 05:E4EA: 0A        .byte $0A   ; 
- D 3 - I - 0x0164FB 05:E4EB: 0D        .byte $0D   ; 
- D 3 - I - 0x0164FC 05:E4EC: 0A        .byte $0A   ; 
- D 3 - I - 0x0164FD 05:E4ED: 0B        .byte $0B   ; 
- D 3 - I - 0x0164FE 05:E4EE: 14        .byte $14   ; 
- D 3 - I - 0x0164FF 05:E4EF: 80        .byte $80   ; 
- D 3 - I - 0x016500 05:E4F0: 12        .byte $12   ; 
- D 3 - I - 0x016501 05:E4F1: 09        .byte $09   ; 
- D 3 - I - 0x016502 05:E4F2: 14        .byte $14   ; 
- D 3 - I - 0x016503 05:E4F3: 10        .byte $10   ; 
- D 3 - I - 0x016504 05:E4F4: 14        .byte $14   ; 
- D 3 - I - 0x016505 05:E4F5: 15        .byte $15   ; 
- D 3 - I - 0x016506 05:E4F6: 14        .byte $14   ; 
- D 3 - I - 0x016507 05:E4F7: 13        .byte $13   ; 
- D 3 - I - 0x016508 05:E4F8: 0A        .byte $0A   ; 
- D 3 - I - 0x016509 05:E4F9: 10        .byte $10   ; 
- D 3 - I - 0x01650A 05:E4FA: 0A        .byte $0A   ; 
- D 3 - I - 0x01650B 05:E4FB: 0E        .byte $0E   ; 
- D 3 - I - 0x01650C 05:E4FC: 0A        .byte $0A   ; 
- D 3 - I - 0x01650D 05:E4FD: 10        .byte $10   ; 
- D 3 - I - 0x01650E 05:E4FE: 14        .byte $14   ; 
- D 3 - I - 0x01650F 05:E4FF: 13        .byte $13   ; 
- D 3 - I - 0x016510 05:E500: 0A        .byte $0A   ; 
- D 3 - I - 0x016511 05:E501: 81        .byte $81   ; 
- D 3 - I - 0x016512 05:E502: 60        .byte $60   ; 
- D 3 - I - 0x016513 05:E503: 78        .byte $78   ; 
- D 3 - I - 0x016514 05:E504: 09        .byte $09   ; 
- D 3 - I - 0x016515 05:E505: 78        .byte $78   ; 
- D 3 - I - 0x016516 05:E506: 8C        .byte $8C   ; 
- D 3 - I - 0x016517 05:E507: 00        .byte $00   ; 
- D 3 - I - 0x016518 05:E508: 00        .byte $00   ; 
- D 3 - I - 0x016519 05:E509: 00        .byte $00   ; 
- D 3 - I - 0x01651A 05:E50A: 60        .byte $60   ; 
- D 3 - I - 0x01651B 05:E50B: 02        .byte $02   ; 
- D 3 - I - 0x01651C 05:E50C: 83        .byte $83   ; 



_off021_E50D_04:
- D 3 - I - 0x01651D 05:E50D: 8B        .byte $8B   ; 
- D 3 - I - 0x01651E 05:E50E: 01        .byte $01   ; 
- D 3 - I - 0x01651F 05:E50F: 87        .byte $87   ; 
- D 3 - I - 0x016520 05:E510: 8A        .byte $8A   ; 
- D 3 - I - 0x016521 05:E511: B0        .byte $B0   ; 
- D 3 - I - 0x016522 05:E512: 00        .byte $00   ; 
- D 3 - I - 0x016523 05:E513: 01        .byte $01   ; 
- D 3 - I - 0x016524 05:E514: 60        .byte $60   ; 
- D 3 - I - 0x016525 05:E515: 6E        .byte $6E   ; 
- D 3 - I - 0x016526 05:E516: 06        .byte $06   ; 
- D 3 - I - 0x016527 05:E517: 0A        .byte $0A   ; 
- D 3 - I - 0x016528 05:E518: 06        .byte $06   ; 
- D 3 - I - 0x016529 05:E519: 5A        .byte $5A   ; 
- D 3 - I - 0x01652A 05:E51A: 8A        .byte $8A   ; 
- D 3 - I - 0x01652B 05:E51B: 70        .byte $70   ; 
- D 3 - I - 0x01652C 05:E51C: 00        .byte $00   ; 
- D 3 - I - 0x01652D 05:E51D: 01        .byte $01   ; 
- D 3 - I - 0x01652E 05:E51E: 02        .byte $02   ; 
- D 3 - I - 0x01652F 05:E51F: 0A        .byte $0A   ; 
- D 3 - I - 0x016530 05:E520: 8A        .byte $8A   ; 
- D 3 - I - 0x016531 05:E521: A0        .byte $A0   ; 
- D 3 - I - 0x016532 05:E522: 00        .byte $00   ; 
- D 3 - I - 0x016533 05:E523: 01        .byte $01   ; 
- D 3 - I - 0x016534 05:E524: 02        .byte $02   ; 
- D 3 - I - 0x016535 05:E525: 0A        .byte $0A   ; 
- D 3 - I - 0x016536 05:E526: 8A        .byte $8A   ; 
- D 3 - I - 0x016537 05:E527: D0        .byte $D0   ; 
- D 3 - I - 0x016538 05:E528: 00        .byte $00   ; 
- D 3 - I - 0x016539 05:E529: 01        .byte $01   ; 
- D 3 - I - 0x01653A 05:E52A: 02        .byte $02   ; 
- D 3 - I - 0x01653B 05:E52B: 0A        .byte $0A   ; 
- D 3 - I - 0x01653C 05:E52C: 80        .byte $80   ; 
- D 3 - I - 0x01653D 05:E52D: 0E        .byte $0E   ; 
- D 3 - I - 0x01653E 05:E52E: 8A        .byte $8A   ; 
- D 3 - I - 0x01653F 05:E52F: 70        .byte $70   ; 
- D 3 - I - 0x016540 05:E530: 00        .byte $00   ; 
- D 3 - I - 0x016541 05:E531: 01        .byte $01   ; 
- D 3 - I - 0x016542 05:E532: 0B        .byte $0B   ; 
- D 3 - I - 0x016543 05:E533: 0A        .byte $0A   ; 
- D 3 - I - 0x016544 05:E534: 04        .byte $04   ; 
- D 3 - I - 0x016545 05:E535: 05        .byte $05   ; 
- D 3 - I - 0x016546 05:E536: 04        .byte $04   ; 
- D 3 - I - 0x016547 05:E537: 05        .byte $05   ; 
- D 3 - I - 0x016548 05:E538: 04        .byte $04   ; 
- D 3 - I - 0x016549 05:E539: 0A        .byte $0A   ; 
- D 3 - I - 0x01654A 05:E53A: 8A        .byte $8A   ; 
- D 3 - I - 0x01654B 05:E53B: C0        .byte $C0   ; 
- D 3 - I - 0x01654C 05:E53C: 01        .byte $01   ; 
- D 3 - I - 0x01654D 05:E53D: 01        .byte $01   ; 
- D 3 - I - 0x01654E 05:E53E: 07        .byte $07   ; 
- D 3 - I - 0x01654F 05:E53F: 0F        .byte $0F   ; 
- D 3 - I - 0x016550 05:E540: 8A        .byte $8A   ; 
- D 3 - I - 0x016551 05:E541: 70        .byte $70   ; 
- D 3 - I - 0x016552 05:E542: 00        .byte $00   ; 
- D 3 - I - 0x016553 05:E543: 01        .byte $01   ; 
- D 3 - I - 0x016554 05:E544: 04        .byte $04   ; 
- D 3 - I - 0x016555 05:E545: 05        .byte $05   ; 
- D 3 - I - 0x016556 05:E546: 04        .byte $04   ; 
- D 3 - I - 0x016557 05:E547: 0A        .byte $0A   ; 
- D 3 - I - 0x016558 05:E548: 0B        .byte $0B   ; 
- D 3 - I - 0x016559 05:E549: 0A        .byte $0A   ; 
- D 3 - I - 0x01655A 05:E54A: 04        .byte $04   ; 
- D 3 - I - 0x01655B 05:E54B: 05        .byte $05   ; 
- D 3 - I - 0x01655C 05:E54C: 04        .byte $04   ; 
- D 3 - I - 0x01655D 05:E54D: 05        .byte $05   ; 
- D 3 - I - 0x01655E 05:E54E: 04        .byte $04   ; 
- D 3 - I - 0x01655F 05:E54F: 0A        .byte $0A   ; 
- D 3 - I - 0x016560 05:E550: 04        .byte $04   ; 
- D 3 - I - 0x016561 05:E551: 0A        .byte $0A   ; 
- D 3 - I - 0x016562 05:E552: 8A        .byte $8A   ; 
- D 3 - I - 0x016563 05:E553: C0        .byte $C0   ; 
- D 3 - I - 0x016564 05:E554: 01        .byte $01   ; 
- D 3 - I - 0x016565 05:E555: 01        .byte $01   ; 
- D 3 - I - 0x016566 05:E556: 07        .byte $07   ; 
- D 3 - I - 0x016567 05:E557: 0F        .byte $0F   ; 
- D 3 - I - 0x016568 05:E558: 8A        .byte $8A   ; 
- D 3 - I - 0x016569 05:E559: 70        .byte $70   ; 
- D 3 - I - 0x01656A 05:E55A: 00        .byte $00   ; 
- D 3 - I - 0x01656B 05:E55B: 01        .byte $01   ; 
- D 3 - I - 0x01656C 05:E55C: 04        .byte $04   ; 
- D 3 - I - 0x01656D 05:E55D: 05        .byte $05   ; 
- D 3 - I - 0x01656E 05:E55E: 81        .byte $81   ; 
- D 3 - I - 0x01656F 05:E55F: 8A        .byte $8A   ; 
- D 3 - I - 0x016570 05:E560: 00        .byte $00   ; 
- D 3 - I - 0x016571 05:E561: 00        .byte $00   ; 
- D 3 - I - 0x016572 05:E562: 02        .byte $02   ; 
- D 3 - I - 0x016573 05:E563: 01        .byte $01   ; 
- D 3 - I - 0x016574 05:E564: DC        .byte $DC   ; 
- D 3 - I - 0x016575 05:E565: 8A        .byte $8A   ; 
- D 3 - I - 0x016576 05:E566: C0        .byte $C0   ; 
- D 3 - I - 0x016577 05:E567: 00        .byte $00   ; 
- D 3 - I - 0x016578 05:E568: 01        .byte $01   ; 
- D 3 - I - 0x016579 05:E569: 02        .byte $02   ; 
- D 3 - I - 0x01657A 05:E56A: 0A        .byte $0A   ; 
- D 3 - I - 0x01657B 05:E56B: 02        .byte $02   ; 
- D 3 - I - 0x01657C 05:E56C: 0A        .byte $0A   ; 
- D 3 - I - 0x01657D 05:E56D: 8A        .byte $8A   ; 
- D 3 - I - 0x01657E 05:E56E: C0        .byte $C0   ; 
- D 3 - I - 0x01657F 05:E56F: 0A        .byte $0A   ; 
- D 3 - I - 0x016580 05:E570: 01        .byte $01   ; 
- D 3 - I - 0x016581 05:E571: 02        .byte $02   ; 
- D 3 - I - 0x016582 05:E572: B4        .byte $B4   ; 
- D 3 - I - 0x016583 05:E573: 8A        .byte $8A   ; 
- D 3 - I - 0x016584 05:E574: C0        .byte $C0   ; 
- D 3 - I - 0x016585 05:E575: 00        .byte $00   ; 
- D 3 - I - 0x016586 05:E576: 01        .byte $01   ; 
- D 3 - I - 0x016587 05:E577: 02        .byte $02   ; 
- D 3 - I - 0x016588 05:E578: 0A        .byte $0A   ; 
- D 3 - I - 0x016589 05:E579: 02        .byte $02   ; 
- D 3 - I - 0x01658A 05:E57A: 0A        .byte $0A   ; 
- D 3 - I - 0x01658B 05:E57B: 02        .byte $02   ; 
- D 3 - I - 0x01658C 05:E57C: 0A        .byte $0A   ; 
- D 3 - I - 0x01658D 05:E57D: 02        .byte $02   ; 
- D 3 - I - 0x01658E 05:E57E: 0A        .byte $0A   ; 
- D 3 - I - 0x01658F 05:E57F: 8A        .byte $8A   ; 
- D 3 - I - 0x016590 05:E580: C0        .byte $C0   ; 
- D 3 - I - 0x016591 05:E581: 01        .byte $01   ; 
- D 3 - I - 0x016592 05:E582: 01        .byte $01   ; 
- D 3 - I - 0x016593 05:E583: 02        .byte $02   ; 
- D 3 - I - 0x016594 05:E584: 14        .byte $14   ; 
- D 3 - I - 0x016595 05:E585: 8A        .byte $8A   ; 
- D 3 - I - 0x016596 05:E586: C0        .byte $C0   ; 
- D 3 - I - 0x016597 05:E587: 0F        .byte $0F   ; 
- D 3 - I - 0x016598 05:E588: 01        .byte $01   ; 
- D 3 - I - 0x016599 05:E589: 06        .byte $06   ; 
- D 3 - I - 0x01659A 05:E58A: F0        .byte $F0   ; 
- D 3 - I - 0x01659B 05:E58B: 80        .byte $80   ; 
- D 3 - I - 0x01659C 05:E58C: 08        .byte $08   ; 
- D 3 - I - 0x01659D 05:E58D: 8A        .byte $8A   ; 
- D 3 - I - 0x01659E 05:E58E: 40        .byte $40   ; 
- D 3 - I - 0x01659F 05:E58F: 01        .byte $01   ; 
- D 3 - I - 0x0165A0 05:E590: 01        .byte $01   ; 
- D 3 - I - 0x0165A1 05:E591: 03        .byte $03   ; 
- D 3 - I - 0x0165A2 05:E592: 14        .byte $14   ; 
- D 3 - I - 0x0165A3 05:E593: 8A        .byte $8A   ; 
- D 3 - I - 0x0165A4 05:E594: 40        .byte $40   ; 
- D 3 - I - 0x0165A5 05:E595: 00        .byte $00   ; 
- D 3 - I - 0x0165A6 05:E596: 01        .byte $01   ; 
- D 3 - I - 0x0165A7 05:E597: 03        .byte $03   ; 
- D 3 - I - 0x0165A8 05:E598: 0A        .byte $0A   ; 
- D 3 - I - 0x0165A9 05:E599: 03        .byte $03   ; 
- D 3 - I - 0x0165AA 05:E59A: 0A        .byte $0A   ; 
- D 3 - I - 0x0165AB 05:E59B: 03        .byte $03   ; 
- D 3 - I - 0x0165AC 05:E59C: 14        .byte $14   ; 
- D 3 - I - 0x0165AD 05:E59D: 03        .byte $03   ; 
- D 3 - I - 0x0165AE 05:E59E: 14        .byte $14   ; 
- D 3 - I - 0x0165AF 05:E59F: 03        .byte $03   ; 
- D 3 - I - 0x0165B0 05:E5A0: 0A        .byte $0A   ; 
- D 3 - I - 0x0165B1 05:E5A1: 03        .byte $03   ; 
- D 3 - I - 0x0165B2 05:E5A2: 0A        .byte $0A   ; 
- D 3 - I - 0x0165B3 05:E5A3: 03        .byte $03   ; 
- D 3 - I - 0x0165B4 05:E5A4: 0A        .byte $0A   ; 
- D 3 - I - 0x0165B5 05:E5A5: 03        .byte $03   ; 
- D 3 - I - 0x0165B6 05:E5A6: 0A        .byte $0A   ; 
- D 3 - I - 0x0165B7 05:E5A7: 8A        .byte $8A   ; 
- D 3 - I - 0x0165B8 05:E5A8: 40        .byte $40   ; 
- D 3 - I - 0x0165B9 05:E5A9: 01        .byte $01   ; 
- D 3 - I - 0x0165BA 05:E5AA: 01        .byte $01   ; 
- D 3 - I - 0x0165BB 05:E5AB: 03        .byte $03   ; 
- D 3 - I - 0x0165BC 05:E5AC: 14        .byte $14   ; 
- D 3 - I - 0x0165BD 05:E5AD: 8A        .byte $8A   ; 
- D 3 - I - 0x0165BE 05:E5AE: 40        .byte $40   ; 
- D 3 - I - 0x0165BF 05:E5AF: 00        .byte $00   ; 
- D 3 - I - 0x0165C0 05:E5B0: 01        .byte $01   ; 
- D 3 - I - 0x0165C1 05:E5B1: 03        .byte $03   ; 
- D 3 - I - 0x0165C2 05:E5B2: 14        .byte $14   ; 
- D 3 - I - 0x0165C3 05:E5B3: 03        .byte $03   ; 
- D 3 - I - 0x0165C4 05:E5B4: 14        .byte $14   ; 
- D 3 - I - 0x0165C5 05:E5B5: 03        .byte $03   ; 
- D 3 - I - 0x0165C6 05:E5B6: 0A        .byte $0A   ; 
- D 3 - I - 0x0165C7 05:E5B7: 03        .byte $03   ; 
- D 3 - I - 0x0165C8 05:E5B8: 05        .byte $05   ; 
- D 3 - I - 0x0165C9 05:E5B9: 03        .byte $03   ; 
- D 3 - I - 0x0165CA 05:E5BA: 05        .byte $05   ; 
- D 3 - I - 0x0165CB 05:E5BB: 8A        .byte $8A   ; 
- D 3 - I - 0x0165CC 05:E5BC: 40        .byte $40   ; 
- D 3 - I - 0x0165CD 05:E5BD: 01        .byte $01   ; 
- D 3 - I - 0x0165CE 05:E5BE: 01        .byte $01   ; 
- D 3 - I - 0x0165CF 05:E5BF: 03        .byte $03   ; 
- D 3 - I - 0x0165D0 05:E5C0: 14        .byte $14   ; 
- D 3 - I - 0x0165D1 05:E5C1: 8A        .byte $8A   ; 
- D 3 - I - 0x0165D2 05:E5C2: 40        .byte $40   ; 
- D 3 - I - 0x0165D3 05:E5C3: 00        .byte $00   ; 
- D 3 - I - 0x0165D4 05:E5C4: 01        .byte $01   ; 
- D 3 - I - 0x0165D5 05:E5C5: 03        .byte $03   ; 
- D 3 - I - 0x0165D6 05:E5C6: 05        .byte $05   ; 
- D 3 - I - 0x0165D7 05:E5C7: 03        .byte $03   ; 
- D 3 - I - 0x0165D8 05:E5C8: 05        .byte $05   ; 
- D 3 - I - 0x0165D9 05:E5C9: 03        .byte $03   ; 
- D 3 - I - 0x0165DA 05:E5CA: 0A        .byte $0A   ; 
- D 3 - I - 0x0165DB 05:E5CB: 81        .byte $81   ; 
- D 3 - I - 0x0165DC 05:E5CC: 8A        .byte $8A   ; 
- D 3 - I - 0x0165DD 05:E5CD: 00        .byte $00   ; 
- D 3 - I - 0x0165DE 05:E5CE: 00        .byte $00   ; 
- D 3 - I - 0x0165DF 05:E5CF: 02        .byte $02   ; 
- D 3 - I - 0x0165E0 05:E5D0: 05        .byte $05   ; 
- D 3 - I - 0x0165E1 05:E5D1: F0        .byte $F0   ; 
- D 3 - I - 0x0165E2 05:E5D2: 60        .byte $60   ; 
- D 3 - I - 0x0165E3 05:E5D3: 01        .byte $01   ; 
- D 3 - I - 0x0165E4 05:E5D4: 83        .byte $83   ; 



sub_84_E5D5:
- D 3 - I - 0x0165E5 05:E5D5: 28        .byte $28   ; 
- D 3 - I - 0x0165E6 05:E5D6: 8B        .byte $8B   ; 
- D 3 - I - 0x0165E7 05:E5D7: 00        .byte $00   ; 
- D 3 - I - 0x0165E8 05:E5D8: 2C        .byte $2C   ; 
- D 3 - I - 0x0165E9 05:E5D9: 23        .byte $23   ; 
- D 3 - I - 0x0165EA 05:E5DA: 1C        .byte $1C   ; 
- D 3 - I - 0x0165EB 05:E5DB: 20        .byte $20   ; 
- D 3 - I - 0x0165EC 05:E5DC: 8B        .byte $8B   ; 
- D 3 - I - 0x0165ED 05:E5DD: 01        .byte $01   ; 
- D 3 - I - 0x0165EE 05:E5DE: 85        .byte con_85_rts



sub_84_E5DF:
- D 3 - I - 0x0165EF 05:E5DF: 28        .byte $28   ; 
- D 3 - I - 0x0165F0 05:E5E0: 8B        .byte $8B   ; 
- D 3 - I - 0x0165F1 05:E5E1: 00        .byte $00   ; 
- D 3 - I - 0x0165F2 05:E5E2: 2C        .byte $2C   ; 
- D 3 - I - 0x0165F3 05:E5E3: 23        .byte $23   ; 
- D 3 - I - 0x0165F4 05:E5E4: 1C        .byte $1C   ; 
- D 3 - I - 0x0165F5 05:E5E5: 20        .byte $20   ; 
- D 3 - I - 0x0165F6 05:E5E6: 23        .byte $23   ; 
- D 3 - I - 0x0165F7 05:E5E7: 1C        .byte $1C   ; 
- D 3 - I - 0x0165F8 05:E5E8: 20        .byte $20   ; 
- D 3 - I - 0x0165F9 05:E5E9: 23        .byte $23   ; 
- D 3 - I - 0x0165FA 05:E5EA: 1C        .byte $1C   ; 
- D 3 - I - 0x0165FB 05:E5EB: 8B        .byte $8B   ; 
- D 3 - I - 0x0165FC 05:E5EC: 01        .byte $01   ; 
- D 3 - I - 0x0165FD 05:E5ED: 85        .byte con_85_rts



sub_84_E5EE:
- D 3 - I - 0x0165FE 05:E5EE: 28        .byte $28   ; 
- D 3 - I - 0x0165FF 05:E5EF: 8B        .byte $8B   ; 
- D 3 - I - 0x016600 05:E5F0: 00        .byte $00   ; 
- D 3 - I - 0x016601 05:E5F1: 2B        .byte $2B   ; 
- D 3 - I - 0x016602 05:E5F2: 23        .byte $23   ; 
- D 3 - I - 0x016603 05:E5F3: 1C        .byte $1C   ; 
- D 3 - I - 0x016604 05:E5F4: 1F        .byte $1F   ; 
- D 3 - I - 0x016605 05:E5F5: 8B        .byte $8B   ; 
- D 3 - I - 0x016606 05:E5F6: 01        .byte $01   ; 
- D 3 - I - 0x016607 05:E5F7: 85        .byte con_85_rts



sub_84_E5F8:
- D 3 - I - 0x016608 05:E5F8: 28        .byte $28   ; 
- D 3 - I - 0x016609 05:E5F9: 8B        .byte $8B   ; 
- D 3 - I - 0x01660A 05:E5FA: 00        .byte $00   ; 
- D 3 - I - 0x01660B 05:E5FB: 2B        .byte $2B   ; 
- D 3 - I - 0x01660C 05:E5FC: 23        .byte $23   ; 
- D 3 - I - 0x01660D 05:E5FD: 1C        .byte $1C   ; 
- D 3 - I - 0x01660E 05:E5FE: 1F        .byte $1F   ; 
- D 3 - I - 0x01660F 05:E5FF: 23        .byte $23   ; 
- D 3 - I - 0x016610 05:E600: 1C        .byte $1C   ; 
- D 3 - I - 0x016611 05:E601: 1F        .byte $1F   ; 
- D 3 - I - 0x016612 05:E602: 23        .byte $23   ; 
- D 3 - I - 0x016613 05:E603: 1C        .byte $1C   ; 
- D 3 - I - 0x016614 05:E604: 8B        .byte $8B   ; 
- D 3 - I - 0x016615 05:E605: 01        .byte $01   ; 
- D 3 - I - 0x016616 05:E606: 85        .byte con_85_rts



sub_84_E607:
- D 3 - I - 0x016617 05:E607: 8E        .byte $8E   ; 
- D 3 - I - 0x016618 05:E608: B0        .byte $B0   ; 
- D 3 - I - 0x016619 05:E609: 8F        .byte $8F   ; 
- D 3 - I - 0x01661A 05:E60A: 0A        .byte $0A   ; 
- D 3 - I - 0x01661B 05:E60B: 01        .byte $01   ; 
- D 3 - I - 0x01661C 05:E60C: 02        .byte $02   ; 
- D 3 - I - 0x01661D 05:E60D: 00        .byte $00   ; 
- D 3 - I - 0x01661E 05:E60E: 80        .byte $80   ; 
- D 3 - I - 0x01661F 05:E60F: 02        .byte $02   ; 
- D 3 - I - 0x016620 05:E610: 28        .byte $28   ; 
- D 3 - I - 0x016621 05:E611: 0A        .byte $0A   ; 
- D 3 - I - 0x016622 05:E612: 26        .byte $26   ; 
- D 3 - I - 0x016623 05:E613: 0A        .byte $0A   ; 
- D 3 - I - 0x016624 05:E614: 28        .byte $28   ; 
- D 3 - I - 0x016625 05:E615: 14        .byte $14   ; 
- D 3 - I - 0x016626 05:E616: 2B        .byte $2B   ; 
- D 3 - I - 0x016627 05:E617: 14        .byte $14   ; 
- D 3 - I - 0x016628 05:E618: 2D        .byte $2D   ; 
- D 3 - I - 0x016629 05:E619: 0A        .byte $0A   ; 
- D 3 - I - 0x01662A 05:E61A: 2B        .byte $2B   ; 
- D 3 - I - 0x01662B 05:E61B: 0A        .byte $0A   ; 
- D 3 - I - 0x01662C 05:E61C: 2A        .byte $2A   ; 
- D 3 - I - 0x01662D 05:E61D: 0A        .byte $0A   ; 
- D 3 - I - 0x01662E 05:E61E: 28        .byte $28   ; 
- D 3 - I - 0x01662F 05:E61F: 14        .byte $14   ; 
- D 3 - I - 0x016630 05:E620: 21        .byte $21   ; 
- D 3 - I - 0x016631 05:E621: 0A        .byte $0A   ; 
- D 3 - I - 0x016632 05:E622: 28        .byte $28   ; 
- D 3 - I - 0x016633 05:E623: 0A        .byte $0A   ; 
- D 3 - I - 0x016634 05:E624: 26        .byte $26   ; 
- D 3 - I - 0x016635 05:E625: 0A        .byte $0A   ; 
- D 3 - I - 0x016636 05:E626: 28        .byte $28   ; 
- D 3 - I - 0x016637 05:E627: 14        .byte $14   ; 
- D 3 - I - 0x016638 05:E628: 2B        .byte $2B   ; 
- D 3 - I - 0x016639 05:E629: 14        .byte $14   ; 
- D 3 - I - 0x01663A 05:E62A: 2A        .byte $2A   ; 
- D 3 - I - 0x01663B 05:E62B: 0A        .byte $0A   ; 
- D 3 - I - 0x01663C 05:E62C: 28        .byte $28   ; 
- D 3 - I - 0x01663D 05:E62D: 0A        .byte $0A   ; 
- D 3 - I - 0x01663E 05:E62E: 26        .byte $26   ; 
- D 3 - I - 0x01663F 05:E62F: 0A        .byte $0A   ; 
- D 3 - I - 0x016640 05:E630: 28        .byte $28   ; 
- D 3 - I - 0x016641 05:E631: 14        .byte $14   ; 
- D 3 - I - 0x016642 05:E632: 21        .byte $21   ; 
- D 3 - I - 0x016643 05:E633: 0A        .byte $0A   ; 
- D 3 - I - 0x016644 05:E634: 28        .byte $28   ; 
- D 3 - I - 0x016645 05:E635: 0A        .byte $0A   ; 
- D 3 - I - 0x016646 05:E636: 26        .byte $26   ; 
- D 3 - I - 0x016647 05:E637: 0A        .byte $0A   ; 
- D 3 - I - 0x016648 05:E638: 28        .byte $28   ; 
- D 3 - I - 0x016649 05:E639: 14        .byte $14   ; 
- D 3 - I - 0x01664A 05:E63A: 2B        .byte $2B   ; 
- D 3 - I - 0x01664B 05:E63B: 14        .byte $14   ; 
- D 3 - I - 0x01664C 05:E63C: 2D        .byte $2D   ; 
- D 3 - I - 0x01664D 05:E63D: 0A        .byte $0A   ; 
- D 3 - I - 0x01664E 05:E63E: 2B        .byte $2B   ; 
- D 3 - I - 0x01664F 05:E63F: 0A        .byte $0A   ; 
- D 3 - I - 0x016650 05:E640: 2A        .byte $2A   ; 
- D 3 - I - 0x016651 05:E641: 0A        .byte $0A   ; 
- D 3 - I - 0x016652 05:E642: 28        .byte $28   ; 
- D 3 - I - 0x016653 05:E643: 14        .byte $14   ; 
- D 3 - I - 0x016654 05:E644: 21        .byte $21   ; 
- D 3 - I - 0x016655 05:E645: 0A        .byte $0A   ; 
- D 3 - I - 0x016656 05:E646: 30        .byte $30   ; 
- D 3 - I - 0x016657 05:E647: 0A        .byte $0A   ; 
- D 3 - I - 0x016658 05:E648: 2F        .byte $2F   ; 
- D 3 - I - 0x016659 05:E649: 0A        .byte $0A   ; 
- D 3 - I - 0x01665A 05:E64A: 2D        .byte $2D   ; 
- D 3 - I - 0x01665B 05:E64B: 0A        .byte $0A   ; 
- D 3 - I - 0x01665C 05:E64C: 60        .byte $60   ; 
- D 3 - I - 0x01665D 05:E64D: 0A        .byte $0A   ; 
- D 3 - I - 0x01665E 05:E64E: 2B        .byte $2B   ; 
- D 3 - I - 0x01665F 05:E64F: 0A        .byte $0A   ; 
- D 3 - I - 0x016660 05:E650: 60        .byte $60   ; 
- D 3 - I - 0x016661 05:E651: 0A        .byte $0A   ; 
- D 3 - I - 0x016662 05:E652: 2D        .byte $2D   ; 
- D 3 - I - 0x016663 05:E653: 32        .byte $32   ; 
- D 3 - I - 0x016664 05:E654: 60        .byte $60   ; 
- D 3 - I - 0x016665 05:E655: 0A        .byte $0A   ; 
- D 3 - I - 0x016666 05:E656: 81        .byte $81   ; 
- D 3 - I - 0x016667 05:E657: 80        .byte $80   ; 
- D 3 - I - 0x016668 05:E658: 02        .byte $02   ; 
- D 3 - I - 0x016669 05:E659: 2D        .byte $2D   ; 
- D 3 - I - 0x01666A 05:E65A: 14        .byte $14   ; 
- D 3 - I - 0x01666B 05:E65B: 2B        .byte $2B   ; 
- D 3 - I - 0x01666C 05:E65C: 0A        .byte $0A   ; 
- D 3 - I - 0x01666D 05:E65D: 2D        .byte $2D   ; 
- D 3 - I - 0x01666E 05:E65E: 14        .byte $14   ; 
- D 3 - I - 0x01666F 05:E65F: 2B        .byte $2B   ; 
- D 3 - I - 0x016670 05:E660: 0A        .byte $0A   ; 
- D 3 - I - 0x016671 05:E661: 30        .byte $30   ; 
- D 3 - I - 0x016672 05:E662: 14        .byte $14   ; 
- D 3 - I - 0x016673 05:E663: 2B        .byte $2B   ; 
- D 3 - I - 0x016674 05:E664: 0A        .byte $0A   ; 
- D 3 - I - 0x016675 05:E665: 2D        .byte $2D   ; 
- D 3 - I - 0x016676 05:E666: 0A        .byte $0A   ; 
- D 3 - I - 0x016677 05:E667: 2B        .byte $2B   ; 
- D 3 - I - 0x016678 05:E668: 0A        .byte $0A   ; 
- D 3 - I - 0x016679 05:E669: 28        .byte $28   ; 
- D 3 - I - 0x01667A 05:E66A: 0A        .byte $0A   ; 
- D 3 - I - 0x01667B 05:E66B: 2D        .byte $2D   ; 
- D 3 - I - 0x01667C 05:E66C: 14        .byte $14   ; 
- D 3 - I - 0x01667D 05:E66D: 2B        .byte $2B   ; 
- D 3 - I - 0x01667E 05:E66E: 0A        .byte $0A   ; 
- D 3 - I - 0x01667F 05:E66F: 2D        .byte $2D   ; 
- D 3 - I - 0x016680 05:E670: 14        .byte $14   ; 
- D 3 - I - 0x016681 05:E671: 2B        .byte $2B   ; 
- D 3 - I - 0x016682 05:E672: 0A        .byte $0A   ; 
- D 3 - I - 0x016683 05:E673: 30        .byte $30   ; 
- D 3 - I - 0x016684 05:E674: 0A        .byte $0A   ; 
- D 3 - I - 0x016685 05:E675: 60        .byte $60   ; 
- D 3 - I - 0x016686 05:E676: 0A        .byte $0A   ; 
- D 3 - I - 0x016687 05:E677: 32        .byte $32   ; 
- D 3 - I - 0x016688 05:E678: 0A        .byte $0A   ; 
- D 3 - I - 0x016689 05:E679: 60        .byte $60   ; 
- D 3 - I - 0x01668A 05:E67A: 0A        .byte $0A   ; 
- D 3 - I - 0x01668B 05:E67B: 34        .byte $34   ; 
- D 3 - I - 0x01668C 05:E67C: 0A        .byte $0A   ; 
- D 3 - I - 0x01668D 05:E67D: 60        .byte $60   ; 
- D 3 - I - 0x01668E 05:E67E: 0A        .byte $0A   ; 
- D 3 - I - 0x01668F 05:E67F: 81        .byte $81   ; 
- D 3 - I - 0x016690 05:E680: 80        .byte $80   ; 
- D 3 - I - 0x016691 05:E681: 04        .byte $04   ; 
- D 3 - I - 0x016692 05:E682: 32        .byte $32   ; 
- D 3 - I - 0x016693 05:E683: 0A        .byte $0A   ; 
- D 3 - I - 0x016694 05:E684: 30        .byte $30   ; 
- D 3 - I - 0x016695 05:E685: 0A        .byte $0A   ; 
- D 3 - I - 0x016696 05:E686: 81        .byte $81   ; 
- D 3 - I - 0x016697 05:E687: 32        .byte $32   ; 
- D 3 - I - 0x016698 05:E688: 0A        .byte $0A   ; 
- D 3 - I - 0x016699 05:E689: 30        .byte $30   ; 
- D 3 - I - 0x01669A 05:E68A: 0A        .byte $0A   ; 
- D 3 - I - 0x01669B 05:E68B: 2D        .byte $2D   ; 
- D 3 - I - 0x01669C 05:E68C: 0A        .byte $0A   ; 
- D 3 - I - 0x01669D 05:E68D: 60        .byte $60   ; 
- D 3 - I - 0x01669E 05:E68E: 0A        .byte $0A   ; 
- D 3 - I - 0x01669F 05:E68F: 80        .byte $80   ; 
- D 3 - I - 0x0166A0 05:E690: 03        .byte $03   ; 
- D 3 - I - 0x0166A1 05:E691: 32        .byte $32   ; 
- D 3 - I - 0x0166A2 05:E692: 0A        .byte $0A   ; 
- D 3 - I - 0x0166A3 05:E693: 30        .byte $30   ; 
- D 3 - I - 0x0166A4 05:E694: 0A        .byte $0A   ; 
- D 3 - I - 0x0166A5 05:E695: 81        .byte $81   ; 
- D 3 - I - 0x0166A6 05:E696: 32        .byte $32   ; 
- D 3 - I - 0x0166A7 05:E697: 0A        .byte $0A   ; 
- D 3 - I - 0x0166A8 05:E698: 30        .byte $30   ; 
- D 3 - I - 0x0166A9 05:E699: 0A        .byte $0A   ; 
- D 3 - I - 0x0166AA 05:E69A: 34        .byte $34   ; 
- D 3 - I - 0x0166AB 05:E69B: 0A        .byte $0A   ; 
- D 3 - I - 0x0166AC 05:E69C: 60        .byte $60   ; 
- D 3 - I - 0x0166AD 05:E69D: 1E        .byte $1E   ; 
- D 3 - I - 0x0166AE 05:E69E: 80        .byte $80   ; 
- D 3 - I - 0x0166AF 05:E69F: 04        .byte $04   ; 
- D 3 - I - 0x0166B0 05:E6A0: 32        .byte $32   ; 
- D 3 - I - 0x0166B1 05:E6A1: 0A        .byte $0A   ; 
- D 3 - I - 0x0166B2 05:E6A2: 30        .byte $30   ; 
- D 3 - I - 0x0166B3 05:E6A3: 0A        .byte $0A   ; 
- D 3 - I - 0x0166B4 05:E6A4: 81        .byte $81   ; 
- D 3 - I - 0x0166B5 05:E6A5: 32        .byte $32   ; 
- D 3 - I - 0x0166B6 05:E6A6: 0A        .byte $0A   ; 
- D 3 - I - 0x0166B7 05:E6A7: 30        .byte $30   ; 
- D 3 - I - 0x0166B8 05:E6A8: 0A        .byte $0A   ; 
- D 3 - I - 0x0166B9 05:E6A9: 2D        .byte $2D   ; 
- D 3 - I - 0x0166BA 05:E6AA: 0A        .byte $0A   ; 
- D 3 - I - 0x0166BB 05:E6AB: 60        .byte $60   ; 
- D 3 - I - 0x0166BC 05:E6AC: 0A        .byte $0A   ; 
- D 3 - I - 0x0166BD 05:E6AD: 32        .byte $32   ; 
- D 3 - I - 0x0166BE 05:E6AE: 0A        .byte $0A   ; 
- D 3 - I - 0x0166BF 05:E6AF: 30        .byte $30   ; 
- D 3 - I - 0x0166C0 05:E6B0: 0A        .byte $0A   ; 
- D 3 - I - 0x0166C1 05:E6B1: 32        .byte $32   ; 
- D 3 - I - 0x0166C2 05:E6B2: 0A        .byte $0A   ; 
- D 3 - I - 0x0166C3 05:E6B3: 60        .byte $60   ; 
- D 3 - I - 0x0166C4 05:E6B4: 0A        .byte $0A   ; 
- D 3 - I - 0x0166C5 05:E6B5: 34        .byte $34   ; 
- D 3 - I - 0x0166C6 05:E6B6: 0A        .byte $0A   ; 
- D 3 - I - 0x0166C7 05:E6B7: 60        .byte $60   ; 
- D 3 - I - 0x0166C8 05:E6B8: 0A        .byte $0A   ; 
- D 3 - I - 0x0166C9 05:E6B9: 85        .byte con_85_rts



sub_84_E6BA:
- D 3 - I - 0x0166CA 05:E6BA: 8F        .byte $8F   ; 
- D 3 - I - 0x0166CB 05:E6BB: 00        .byte $00   ; 
- D 3 - I - 0x0166CC 05:E6BC: 00        .byte $00   ; 
- D 3 - I - 0x0166CD 05:E6BD: 00        .byte $00   ; 
- D 3 - I - 0x0166CE 05:E6BE: 00        .byte $00   ; 
- D 3 - I - 0x0166CF 05:E6BF: 2D        .byte $2D   ; 
- D 3 - I - 0x0166D0 05:E6C0: 14        .byte $14   ; 
- D 3 - I - 0x0166D1 05:E6C1: 30        .byte $30   ; 
- D 3 - I - 0x0166D2 05:E6C2: 0A        .byte $0A   ; 
- D 3 - I - 0x0166D3 05:E6C3: 2D        .byte $2D   ; 
- D 3 - I - 0x0166D4 05:E6C4: 0A        .byte $0A   ; 
- D 3 - I - 0x0166D5 05:E6C5: 2B        .byte $2B   ; 
- D 3 - I - 0x0166D6 05:E6C6: 14        .byte $14   ; 
- D 3 - I - 0x0166D7 05:E6C7: 28        .byte $28   ; 
- D 3 - I - 0x0166D8 05:E6C8: 0A        .byte $0A   ; 
- D 3 - I - 0x0166D9 05:E6C9: 26        .byte $26   ; 
- D 3 - I - 0x0166DA 05:E6CA: 0A        .byte $0A   ; 
- D 3 - I - 0x0166DB 05:E6CB: 24        .byte $24   ; 
- D 3 - I - 0x0166DC 05:E6CC: 0A        .byte $0A   ; 
- D 3 - I - 0x0166DD 05:E6CD: 26        .byte $26   ; 
- D 3 - I - 0x0166DE 05:E6CE: 0A        .byte $0A   ; 
- D 3 - I - 0x0166DF 05:E6CF: 28        .byte $28   ; 
- D 3 - I - 0x0166E0 05:E6D0: 14        .byte $14   ; 
- D 3 - I - 0x0166E1 05:E6D1: 85        .byte con_85_rts



_off018_E6D2_03_continue:
- D 3 - I - 0x0166E2 05:E6D2: 89        .byte $89   ; 
- D 3 - I - 0x0166E3 05:E6D3: 15        .byte $15   ; 
- D 3 - I - 0x0166E4 05:E6D4: 0F        .byte $0F   ; 
- D 3 - I - 0x0166E5 05:E6D5: 01        .byte $01   ; 
- D 3 - I - 0x0166E6 05:E6D6: 00        .byte $00   ; 
- D 3 - I - 0x0166E7 05:E6D7: 05        .byte $05   ; 
- D 3 - I - 0x0166E8 05:E6D8: 00        .byte $00   ; 
- D 3 - I - 0x0166E9 05:E6D9: 08        .byte $08   ; 
- D 3 - I - 0x0166EA 05:E6DA: FF        .byte $FF   ; 
- D 3 - I - 0x0166EB 05:E6DB: FF        .byte $FF   ; 
- D 3 - I - 0x0166EC 05:E6DC: 8B        .byte $8B   ; 
- D 3 - I - 0x0166ED 05:E6DD: 01        .byte $01   ; 
- D 3 - I - 0x0166EE 05:E6DE: 8A        .byte $8A   ; 
- D 3 - I - 0x0166EF 05:E6DF: C0        .byte $C0   ; 
- D 3 - I - 0x0166F0 05:E6E0: 04        .byte $04   ; 
- D 3 - I - 0x0166F1 05:E6E1: 01        .byte $01   ; 
- D 3 - I - 0x0166F2 05:E6E2: 8F        .byte $8F   ; 
- D 3 - I - 0x0166F3 05:E6E3: 0A        .byte $0A   ; 
- D 3 - I - 0x0166F4 05:E6E4: 01        .byte $01   ; 
- D 3 - I - 0x0166F5 05:E6E5: 03        .byte $03   ; 
- D 3 - I - 0x0166F6 05:E6E6: 00        .byte $00   ; 
- D 3 - I - 0x0166F7 05:E6E7: 8E        .byte $8E   ; 
- D 3 - I - 0x0166F8 05:E6E8: 30        .byte $30   ; 
- D 3 - I - 0x0166F9 05:E6E9: 80        .byte $80   ; 
- D 3 - I - 0x0166FA 05:E6EA: 02        .byte $02   ; 
- D 3 - I - 0x0166FB 05:E6EB: 1F        .byte $1F   ; 
- D 3 - I - 0x0166FC 05:E6EC: 1E        .byte $1E   ; 
- D 3 - I - 0x0166FD 05:E6ED: 1E        .byte $1E   ; 
- D 3 - I - 0x0166FE 05:E6EE: 0A        .byte $0A   ; 
- D 3 - I - 0x0166FF 05:E6EF: 1C        .byte $1C   ; 
- D 3 - I - 0x016700 05:E6F0: 14        .byte $14   ; 
- D 3 - I - 0x016701 05:E6F1: 1E        .byte $1E   ; 
- D 3 - I - 0x016702 05:E6F2: 1E        .byte $1E   ; 
- D 3 - I - 0x016703 05:E6F3: 1C        .byte $1C   ; 
- D 3 - I - 0x016704 05:E6F4: 0A        .byte $0A   ; 
- D 3 - I - 0x016705 05:E6F5: 1A        .byte $1A   ; 
- D 3 - I - 0x016706 05:E6F6: 14        .byte $14   ; 
- D 3 - I - 0x016707 05:E6F7: 1C        .byte $1C   ; 
- D 3 - I - 0x016708 05:E6F8: 3C        .byte $3C   ; 
- D 3 - I - 0x016709 05:E6F9: 1C        .byte $1C   ; 
- D 3 - I - 0x01670A 05:E6FA: 28        .byte $28   ; 
- D 3 - I - 0x01670B 05:E6FB: 1E        .byte $1E   ; 
- D 3 - I - 0x01670C 05:E6FC: 14        .byte $14   ; 
- D 3 - I - 0x01670D 05:E6FD: 1F        .byte $1F   ; 
- D 3 - I - 0x01670E 05:E6FE: 1E        .byte $1E   ; 
- D 3 - I - 0x01670F 05:E6FF: 1E        .byte $1E   ; 
- D 3 - I - 0x016710 05:E700: 0A        .byte $0A   ; 
- D 3 - I - 0x016711 05:E701: 1C        .byte $1C   ; 
- D 3 - I - 0x016712 05:E702: 14        .byte $14   ; 
- D 3 - I - 0x016713 05:E703: 1E        .byte $1E   ; 
- D 3 - I - 0x016714 05:E704: 1E        .byte $1E   ; 
- D 3 - I - 0x016715 05:E705: 1F        .byte $1F   ; 
- D 3 - I - 0x016716 05:E706: 0A        .byte $0A   ; 
- D 3 - I - 0x016717 05:E707: 21        .byte $21   ; 
- D 3 - I - 0x016718 05:E708: 14        .byte $14   ; 
- D 3 - I - 0x016719 05:E709: 23        .byte $23   ; 
- D 3 - I - 0x01671A 05:E70A: 3C        .byte $3C   ; 
- D 3 - I - 0x01671B 05:E70B: 23        .byte $23   ; 
- D 3 - I - 0x01671C 05:E70C: 3C        .byte $3C   ; 
- D 3 - I - 0x01671D 05:E70D: 81        .byte $81   ; 
- D 3 - I - 0x01671E 05:E70E: 8A        .byte $8A   ; 
- D 3 - I - 0x01671F 05:E70F: 00        .byte $00   ; 
- D 3 - I - 0x016720 05:E710: 00        .byte $00   ; 
- D 3 - I - 0x016721 05:E711: 02        .byte $02   ; 
- D 3 - I - 0x016722 05:E712: 60        .byte $60   ; 
- D 3 - I - 0x016723 05:E713: 02        .byte $02   ; 
- D 3 - I - 0x016724 05:E714: 83        .byte $83   ; 



_off019_E715_03_continue:
- D 3 - I - 0x016725 05:E715: 8B        .byte $8B   ; 
- D 3 - I - 0x016726 05:E716: 01        .byte $01   ; 
- D 3 - I - 0x016727 05:E717: 8A        .byte $8A   ; 
- D 3 - I - 0x016728 05:E718: 80        .byte $80   ; 
- D 3 - I - 0x016729 05:E719: 03        .byte $03   ; 
- D 3 - I - 0x01672A 05:E71A: 01        .byte $01   ; 
- D 3 - I - 0x01672B 05:E71B: 8E        .byte $8E   ; 
- D 3 - I - 0x01672C 05:E71C: 30        .byte $30   ; 
- D 3 - I - 0x01672D 05:E71D: 80        .byte $80   ; 
- D 3 - I - 0x01672E 05:E71E: 02        .byte $02   ; 
- D 3 - I - 0x01672F 05:E71F: 1C        .byte $1C   ; 
- D 3 - I - 0x016730 05:E720: 0A        .byte $0A   ; 
- D 3 - I - 0x016731 05:E721: 17        .byte $17   ; 
- D 3 - I - 0x016732 05:E722: 0A        .byte $0A   ; 
- D 3 - I - 0x016733 05:E723: 1C        .byte $1C   ; 
- D 3 - I - 0x016734 05:E724: 0A        .byte $0A   ; 
- D 3 - I - 0x016735 05:E725: 1A        .byte $1A   ; 
- D 3 - I - 0x016736 05:E726: 0A        .byte $0A   ; 
- D 3 - I - 0x016737 05:E727: 1F        .byte $1F   ; 
- D 3 - I - 0x016738 05:E728: 14        .byte $14   ; 
- D 3 - I - 0x016739 05:E729: 1A        .byte $1A   ; 
- D 3 - I - 0x01673A 05:E72A: 14        .byte $14   ; 
- D 3 - I - 0x01673B 05:E72B: 1C        .byte $1C   ; 
- D 3 - I - 0x01673C 05:E72C: 0A        .byte $0A   ; 
- D 3 - I - 0x01673D 05:E72D: 1F        .byte $1F   ; 
- D 3 - I - 0x01673E 05:E72E: 0A        .byte $0A   ; 
- D 3 - I - 0x01673F 05:E72F: 1E        .byte $1E   ; 
- D 3 - I - 0x016740 05:E730: 14        .byte $14   ; 
- D 3 - I - 0x016741 05:E731: 19        .byte $19   ; 
- D 3 - I - 0x016742 05:E732: 0A        .byte $0A   ; 
- D 3 - I - 0x016743 05:E733: 1A        .byte $1A   ; 
- D 3 - I - 0x016744 05:E734: 0A        .byte $0A   ; 
- D 3 - I - 0x016745 05:E735: 19        .byte $19   ; 
- D 3 - I - 0x016746 05:E736: 0A        .byte $0A   ; 
- D 3 - I - 0x016747 05:E737: 17        .byte $17   ; 
- D 3 - I - 0x016748 05:E738: 0A        .byte $0A   ; 
- D 3 - I - 0x016749 05:E739: 19        .byte $19   ; 
- D 3 - I - 0x01674A 05:E73A: 14        .byte $14   ; 
- D 3 - I - 0x01674B 05:E73B: 15        .byte $15   ; 
- D 3 - I - 0x01674C 05:E73C: 14        .byte $14   ; 
- D 3 - I - 0x01674D 05:E73D: 19        .byte $19   ; 
- D 3 - I - 0x01674E 05:E73E: 14        .byte $14   ; 
- D 3 - I - 0x01674F 05:E73F: 1B        .byte $1B   ; 
- D 3 - I - 0x016750 05:E740: 14        .byte $14   ; 
- D 3 - I - 0x016751 05:E741: 1C        .byte $1C   ; 
- D 3 - I - 0x016752 05:E742: 0A        .byte $0A   ; 
- D 3 - I - 0x016753 05:E743: 17        .byte $17   ; 
- D 3 - I - 0x016754 05:E744: 0A        .byte $0A   ; 
- D 3 - I - 0x016755 05:E745: 1C        .byte $1C   ; 
- D 3 - I - 0x016756 05:E746: 0A        .byte $0A   ; 
- D 3 - I - 0x016757 05:E747: 1A        .byte $1A   ; 
- D 3 - I - 0x016758 05:E748: 0A        .byte $0A   ; 
- D 3 - I - 0x016759 05:E749: 1F        .byte $1F   ; 
- D 3 - I - 0x01675A 05:E74A: 14        .byte $14   ; 
- D 3 - I - 0x01675B 05:E74B: 21        .byte $21   ; 
- D 3 - I - 0x01675C 05:E74C: 0A        .byte $0A   ; 
- D 3 - I - 0x01675D 05:E74D: 23        .byte $23   ; 
- D 3 - I - 0x01675E 05:E74E: 0A        .byte $0A   ; 
- D 3 - I - 0x01675F 05:E74F: 21        .byte $21   ; 
- D 3 - I - 0x016760 05:E750: 0A        .byte $0A   ; 
- D 3 - I - 0x016761 05:E751: 1C        .byte $1C   ; 
- D 3 - I - 0x016762 05:E752: 0A        .byte $0A   ; 
- D 3 - I - 0x016763 05:E753: 1E        .byte $1E   ; 
- D 3 - I - 0x016764 05:E754: 0A        .byte $0A   ; 
- D 3 - I - 0x016765 05:E755: 1C        .byte $1C   ; 
- D 3 - I - 0x016766 05:E756: 0A        .byte $0A   ; 
- D 3 - I - 0x016767 05:E757: 1B        .byte $1B   ; 
- D 3 - I - 0x016768 05:E758: 0A        .byte $0A   ; 
- D 3 - I - 0x016769 05:E759: 1C        .byte $1C   ; 
- D 3 - I - 0x01676A 05:E75A: 0A        .byte $0A   ; 
- D 3 - I - 0x01676B 05:E75B: 1B        .byte $1B   ; 
- D 3 - I - 0x01676C 05:E75C: 0A        .byte $0A   ; 
- D 3 - I - 0x01676D 05:E75D: 19        .byte $19   ; 
- D 3 - I - 0x01676E 05:E75E: 0A        .byte $0A   ; 
- D 3 - I - 0x01676F 05:E75F: 17        .byte $17   ; 
- D 3 - I - 0x016770 05:E760: 0A        .byte $0A   ; 
- D 3 - I - 0x016771 05:E761: 15        .byte $15   ; 
- D 3 - I - 0x016772 05:E762: 0A        .byte $0A   ; 
- D 3 - I - 0x016773 05:E763: 17        .byte $17   ; 
- D 3 - I - 0x016774 05:E764: 14        .byte $14   ; 
- D 3 - I - 0x016775 05:E765: 1B        .byte $1B   ; 
- D 3 - I - 0x016776 05:E766: 14        .byte $14   ; 
- D 3 - I - 0x016777 05:E767: 1E        .byte $1E   ; 
- D 3 - I - 0x016778 05:E768: 14        .byte $14   ; 
- D 3 - I - 0x016779 05:E769: 81        .byte $81   ; 
- D 3 - I - 0x01677A 05:E76A: 23        .byte $23   ; 
- D 3 - I - 0x01677B 05:E76B: 78        .byte $78   ; 
- - - - - - 0x01677C 05:E76C: 8A        .byte $8A   ; 
- - - - - - 0x01677D 05:E76D: 00        .byte $00   ; 
- - - - - - 0x01677E 05:E76E: 00        .byte $00   ; 
- - - - - - 0x01677F 05:E76F: 02        .byte $02   ; 
- - - - - - 0x016780 05:E770: 60        .byte $60   ; 
- - - - - - 0x016781 05:E771: 02        .byte $02   ; 
- - - - - - 0x016782 05:E772: 83        .byte $83   ; 



_off020_E773_03_continue:
- D 3 - I - 0x016783 05:E773: 8C        .byte $8C   ; 
- D 3 - I - 0x016784 05:E774: 0C        .byte $0C   ; 
- D 3 - I - 0x016785 05:E775: 01        .byte $01   ; 
- D 3 - I - 0x016786 05:E776: FF        .byte $FF   ; 
- D 3 - I - 0x016787 05:E777: 1C        .byte $1C   ; 
- D 3 - I - 0x016788 05:E778: 3C        .byte $3C   ; 
- D 3 - I - 0x016789 05:E779: 1A        .byte $1A   ; 
- D 3 - I - 0x01678A 05:E77A: 28        .byte $28   ; 
- D 3 - I - 0x01678B 05:E77B: 19        .byte $19   ; 
- D 3 - I - 0x01678C 05:E77C: 0A        .byte $0A   ; 
- D 3 - I - 0x01678D 05:E77D: 17        .byte $17   ; 
- D 3 - I - 0x01678E 05:E77E: 0A        .byte $0A   ; 
- D 3 - I - 0x01678F 05:E77F: 15        .byte $15   ; 
- D 3 - I - 0x016790 05:E780: 64        .byte $64   ; 
- D 3 - I - 0x016791 05:E781: 17        .byte $17   ; 
- D 3 - I - 0x016792 05:E782: 14        .byte $14   ; 
- D 3 - I - 0x016793 05:E783: 1C        .byte $1C   ; 
- D 3 - I - 0x016794 05:E784: 3C        .byte $3C   ; 
- D 3 - I - 0x016795 05:E785: 1A        .byte $1A   ; 
- D 3 - I - 0x016796 05:E786: 3C        .byte $3C   ; 
- D 3 - I - 0x016797 05:E787: 17        .byte $17   ; 
- D 3 - I - 0x016798 05:E788: 28        .byte $28   ; 
- D 3 - I - 0x016799 05:E789: 12        .byte $12   ; 
- D 3 - I - 0x01679A 05:E78A: 14        .byte $14   ; 
- D 3 - I - 0x01679B 05:E78B: 0B        .byte $0B   ; 
- D 3 - I - 0x01679C 05:E78C: 28        .byte $28   ; 
- D 3 - I - 0x01679D 05:E78D: 12        .byte $12   ; 
- D 3 - I - 0x01679E 05:E78E: 14        .byte $14   ; 
- D 3 - I - 0x01679F 05:E78F: 10        .byte $10   ; 
- D 3 - I - 0x0167A0 05:E790: 3C        .byte $3C   ; 
- D 3 - I - 0x0167A1 05:E791: 0E        .byte $0E   ; 
- D 3 - I - 0x0167A2 05:E792: 28        .byte $28   ; 
- D 3 - I - 0x0167A3 05:E793: 0D        .byte $0D   ; 
- D 3 - I - 0x0167A4 05:E794: 0A        .byte $0A   ; 
- D 3 - I - 0x0167A5 05:E795: 0B        .byte $0B   ; 
- D 3 - I - 0x0167A6 05:E796: 0A        .byte $0A   ; 
- D 3 - I - 0x0167A7 05:E797: 09        .byte $09   ; 
- D 3 - I - 0x0167A8 05:E798: 64        .byte $64   ; 
- D 3 - I - 0x0167A9 05:E799: 0B        .byte $0B   ; 
- D 3 - I - 0x0167AA 05:E79A: 14        .byte $14   ; 
- D 3 - I - 0x0167AB 05:E79B: 10        .byte $10   ; 
- D 3 - I - 0x0167AC 05:E79C: 3C        .byte $3C   ; 
- D 3 - I - 0x0167AD 05:E79D: 0E        .byte $0E   ; 
- D 3 - I - 0x0167AE 05:E79E: 3C        .byte $3C   ; 
- D 3 - I - 0x0167AF 05:E79F: 0B        .byte $0B   ; 
- D 3 - I - 0x0167B0 05:E7A0: 28        .byte $28   ; 
- D 3 - I - 0x0167B1 05:E7A1: 06        .byte $06   ; 
- D 3 - I - 0x0167B2 05:E7A2: 14        .byte $14   ; 
- D 3 - I - 0x0167B3 05:E7A3: 0B        .byte $0B   ; 
- D 3 - I - 0x0167B4 05:E7A4: 46        .byte $46   ; 
- D 3 - I - 0x0167B5 05:E7A5: 60        .byte $60   ; 
- D 3 - I - 0x0167B6 05:E7A6: 0A        .byte $0A   ; 
- D 3 - I - 0x0167B7 05:E7A7: 83        .byte $83   ; 



_off021_E7A8_03_continue:
- D 3 - I - 0x0167B8 05:E7A8: 8B        .byte $8B   ; 
- D 3 - I - 0x0167B9 05:E7A9: 01        .byte $01   ; 
- D 3 - I - 0x0167BA 05:E7AA: 87        .byte $87   ; 
- D 3 - I - 0x0167BB 05:E7AB: 80        .byte $80   ; 
- D 3 - I - 0x0167BC 05:E7AC: 04        .byte $04   ; 
- D 3 - I - 0x0167BD 05:E7AD: 8A        .byte $8A   ; 
- D 3 - I - 0x0167BE 05:E7AE: 80        .byte $80   ; 
- D 3 - I - 0x0167BF 05:E7AF: 02        .byte $02   ; 
- D 3 - I - 0x0167C0 05:E7B0: 01        .byte $01   ; 
- D 3 - I - 0x0167C1 05:E7B1: 03        .byte $03   ; 
- D 3 - I - 0x0167C2 05:E7B2: 0A        .byte $0A   ; 
- D 3 - I - 0x0167C3 05:E7B3: 8A        .byte $8A   ; 
- D 3 - I - 0x0167C4 05:E7B4: 80        .byte $80   ; 
- D 3 - I - 0x0167C5 05:E7B5: 00        .byte $00   ; 
- D 3 - I - 0x0167C6 05:E7B6: 01        .byte $01   ; 
- D 3 - I - 0x0167C7 05:E7B7: 01        .byte $01   ; 
- D 3 - I - 0x0167C8 05:E7B8: 0A        .byte $0A   ; 
- D 3 - I - 0x0167C9 05:E7B9: 01        .byte $01   ; 
- D 3 - I - 0x0167CA 05:E7BA: 0A        .byte $0A   ; 
- D 3 - I - 0x0167CB 05:E7BB: 01        .byte $01   ; 
- D 3 - I - 0x0167CC 05:E7BC: 0A        .byte $0A   ; 
- D 3 - I - 0x0167CD 05:E7BD: 8A        .byte $8A   ; 
- D 3 - I - 0x0167CE 05:E7BE: 80        .byte $80   ; 
- D 3 - I - 0x0167CF 05:E7BF: 02        .byte $02   ; 
- D 3 - I - 0x0167D0 05:E7C0: 01        .byte $01   ; 
- D 3 - I - 0x0167D1 05:E7C1: 01        .byte $01   ; 
- D 3 - I - 0x0167D2 05:E7C2: 14        .byte $14   ; 
- D 3 - I - 0x0167D3 05:E7C3: 8A        .byte $8A   ; 
- D 3 - I - 0x0167D4 05:E7C4: 80        .byte $80   ; 
- D 3 - I - 0x0167D5 05:E7C5: 02        .byte $02   ; 
- D 3 - I - 0x0167D6 05:E7C6: 01        .byte $01   ; 
- D 3 - I - 0x0167D7 05:E7C7: 03        .byte $03   ; 
- D 3 - I - 0x0167D8 05:E7C8: 0A        .byte $0A   ; 
- D 3 - I - 0x0167D9 05:E7C9: 8A        .byte $8A   ; 
- D 3 - I - 0x0167DA 05:E7CA: 80        .byte $80   ; 
- D 3 - I - 0x0167DB 05:E7CB: 00        .byte $00   ; 
- D 3 - I - 0x0167DC 05:E7CC: 01        .byte $01   ; 
- D 3 - I - 0x0167DD 05:E7CD: 01        .byte $01   ; 
- D 3 - I - 0x0167DE 05:E7CE: 0A        .byte $0A   ; 
- D 3 - I - 0x0167DF 05:E7CF: 01        .byte $01   ; 
- D 3 - I - 0x0167E0 05:E7D0: 0A        .byte $0A   ; 
- D 3 - I - 0x0167E1 05:E7D1: 01        .byte $01   ; 
- D 3 - I - 0x0167E2 05:E7D2: 0A        .byte $0A   ; 
- D 3 - I - 0x0167E3 05:E7D3: 8A        .byte $8A   ; 
- D 3 - I - 0x0167E4 05:E7D4: 80        .byte $80   ; 
- D 3 - I - 0x0167E5 05:E7D5: 02        .byte $02   ; 
- D 3 - I - 0x0167E6 05:E7D6: 01        .byte $01   ; 
- D 3 - I - 0x0167E7 05:E7D7: 01        .byte $01   ; 
- D 3 - I - 0x0167E8 05:E7D8: 14        .byte $14   ; 
- D 3 - I - 0x0167E9 05:E7D9: 03        .byte $03   ; 
- D 3 - I - 0x0167EA 05:E7DA: 14        .byte $14   ; 
- D 3 - I - 0x0167EB 05:E7DB: 8A        .byte $8A   ; 
- D 3 - I - 0x0167EC 05:E7DC: 80        .byte $80   ; 
- D 3 - I - 0x0167ED 05:E7DD: 00        .byte $00   ; 
- D 3 - I - 0x0167EE 05:E7DE: 01        .byte $01   ; 
- D 3 - I - 0x0167EF 05:E7DF: 01        .byte $01   ; 
- D 3 - I - 0x0167F0 05:E7E0: 0A        .byte $0A   ; 
- D 3 - I - 0x0167F1 05:E7E1: 01        .byte $01   ; 
- D 3 - I - 0x0167F2 05:E7E2: 0A        .byte $0A   ; 
- D 3 - I - 0x0167F3 05:E7E3: 01        .byte $01   ; 
- D 3 - I - 0x0167F4 05:E7E4: 0A        .byte $0A   ; 
- D 3 - I - 0x0167F5 05:E7E5: 01        .byte $01   ; 
- D 3 - I - 0x0167F6 05:E7E6: 0A        .byte $0A   ; 
- D 3 - I - 0x0167F7 05:E7E7: 8A        .byte $8A   ; 
- D 3 - I - 0x0167F8 05:E7E8: 80        .byte $80   ; 
- D 3 - I - 0x0167F9 05:E7E9: 02        .byte $02   ; 
- D 3 - I - 0x0167FA 05:E7EA: 01        .byte $01   ; 
- D 3 - I - 0x0167FB 05:E7EB: 03        .byte $03   ; 
- D 3 - I - 0x0167FC 05:E7EC: 14        .byte $14   ; 
- D 3 - I - 0x0167FD 05:E7ED: 01        .byte $01   ; 
- D 3 - I - 0x0167FE 05:E7EE: 14        .byte $14   ; 
- D 3 - I - 0x0167FF 05:E7EF: 8A        .byte $8A   ; 
- D 3 - I - 0x016800 05:E7F0: 80        .byte $80   ; 
- D 3 - I - 0x016801 05:E7F1: 00        .byte $00   ; 
- D 3 - I - 0x016802 05:E7F2: 01        .byte $01   ; 
- D 3 - I - 0x016803 05:E7F3: 01        .byte $01   ; 
- D 3 - I - 0x016804 05:E7F4: 0A        .byte $0A   ; 
- D 3 - I - 0x016805 05:E7F5: 01        .byte $01   ; 
- D 3 - I - 0x016806 05:E7F6: 0A        .byte $0A   ; 
- D 3 - I - 0x016807 05:E7F7: 81        .byte $81   ; 
- D 3 - I - 0x016808 05:E7F8: 8A        .byte $8A   ; 
- D 3 - I - 0x016809 05:E7F9: 80        .byte $80   ; 
- D 3 - I - 0x01680A 05:E7FA: 02        .byte $02   ; 
- D 3 - I - 0x01680B 05:E7FB: 01        .byte $01   ; 
- D 3 - I - 0x01680C 05:E7FC: 01        .byte $01   ; 
- D 3 - I - 0x01680D 05:E7FD: A0        .byte $A0   ; 
- - - - - - 0x01680E 05:E7FE: 83        .byte $83   ; 



_off018_E7FF_02_game_over:
- D 3 - I - 0x01680F 05:E7FF: 89        .byte $89   ; 
- D 3 - I - 0x016810 05:E800: 15        .byte $15   ; 
- D 3 - I - 0x016811 05:E801: 0F        .byte $0F   ; 
- D 3 - I - 0x016812 05:E802: 01        .byte $01   ; 
- D 3 - I - 0x016813 05:E803: 00        .byte $00   ; 
- D 3 - I - 0x016814 05:E804: 05        .byte $05   ; 
- D 3 - I - 0x016815 05:E805: 00        .byte $00   ; 
- D 3 - I - 0x016816 05:E806: 08        .byte $08   ; 
- D 3 - I - 0x016817 05:E807: FF        .byte $FF   ; 
- D 3 - I - 0x016818 05:E808: FF        .byte $FF   ; 
- D 3 - I - 0x016819 05:E809: 8B        .byte $8B   ; 
- D 3 - I - 0x01681A 05:E80A: 01        .byte $01   ; 
- D 3 - I - 0x01681B 05:E80B: 8A        .byte $8A   ; 
- D 3 - I - 0x01681C 05:E80C: 00        .byte $00   ; 
- D 3 - I - 0x01681D 05:E80D: 00        .byte $00   ; 
- D 3 - I - 0x01681E 05:E80E: 02        .byte $02   ; 
- D 3 - I - 0x01681F 05:E80F: 8E        .byte $8E   ; 
- D 3 - I - 0x016820 05:E810: 30        .byte $30   ; 
- D 3 - I - 0x016821 05:E811: 41        .byte $41   ; 
- D 3 - I - 0x016822 05:E812: 18        .byte $18   ; 
- D 3 - I - 0x016823 05:E813: 8A        .byte $8A   ; 
- D 3 - I - 0x016824 05:E814: 80        .byte $80   ; 
- D 3 - I - 0x016825 05:E815: 00        .byte $00   ; 
- D 3 - I - 0x016826 05:E816: 02        .byte $02   ; 
- D 3 - I - 0x016827 05:E817: 8F        .byte $8F   ; 
- D 3 - I - 0x016828 05:E818: 0C        .byte $0C   ; 
- D 3 - I - 0x016829 05:E819: 01        .byte $01   ; 
- D 3 - I - 0x01682A 05:E81A: 02        .byte $02   ; 
- D 3 - I - 0x01682B 05:E81B: 00        .byte $00   ; 
- D 3 - I - 0x01682C 05:E81C: 80        .byte $80   ; 
- D 3 - I - 0x01682D 05:E81D: 02        .byte $02   ; 
- D 3 - I - 0x01682E 05:E81E: 26        .byte $26   ; 
- D 3 - I - 0x01682F 05:E81F: 24        .byte $24   ; 
- D 3 - I - 0x016830 05:E820: 24        .byte $24   ; 
- D 3 - I - 0x016831 05:E821: 06        .byte $06   ; 
- D 3 - I - 0x016832 05:E822: 22        .byte $22   ; 
- D 3 - I - 0x016833 05:E823: 06        .byte $06   ; 
- D 3 - I - 0x016834 05:E824: 24        .byte $24   ; 
- D 3 - I - 0x016835 05:E825: 18        .byte $18   ; 
- D 3 - I - 0x016836 05:E826: 21        .byte $21   ; 
- D 3 - I - 0x016837 05:E827: 0C        .byte $0C   ; 
- D 3 - I - 0x016838 05:E828: 24        .byte $24   ; 
- D 3 - I - 0x016839 05:E829: 0C        .byte $0C   ; 
- D 3 - I - 0x01683A 05:E82A: 26        .byte $26   ; 
- D 3 - I - 0x01683B 05:E82B: 18        .byte $18   ; 
- D 3 - I - 0x01683C 05:E82C: 2B        .byte $2B   ; 
- D 3 - I - 0x01683D 05:E82D: 0C        .byte $0C   ; 
- D 3 - I - 0x01683E 05:E82E: 29        .byte $29   ; 
- D 3 - I - 0x01683F 05:E82F: 0C        .byte $0C   ; 
- D 3 - I - 0x016840 05:E830: 28        .byte $28   ; 
- D 3 - I - 0x016841 05:E831: 18        .byte $18   ; 
- D 3 - I - 0x016842 05:E832: 24        .byte $24   ; 
- D 3 - I - 0x016843 05:E833: 18        .byte $18   ; 
- D 3 - I - 0x016844 05:E834: 81        .byte $81   ; 
- D 3 - I - 0x016845 05:E835: 26        .byte $26   ; 
- D 3 - I - 0x016846 05:E836: 60        .byte $60   ; 
- D 3 - I - 0x016847 05:E837: 26        .byte $26   ; 
- D 3 - I - 0x016848 05:E838: 60        .byte $60   ; 
- D 3 - I - 0x016849 05:E839: 60        .byte $60   ; 
- D 3 - I - 0x01684A 05:E83A: 02        .byte $02   ; 
- D 3 - I - 0x01684B 05:E83B: 83        .byte $83   ; 



_off019_E83C_02_game_over:
- D 3 - I - 0x01684C 05:E83C: 8B        .byte $8B   ; 
- D 3 - I - 0x01684D 05:E83D: 01        .byte $01   ; 
- D 3 - I - 0x01684E 05:E83E: 8A        .byte $8A   ; 
- D 3 - I - 0x01684F 05:E83F: 00        .byte $00   ; 
- D 3 - I - 0x016850 05:E840: 00        .byte $00   ; 
- D 3 - I - 0x016851 05:E841: 02        .byte $02   ; 
- D 3 - I - 0x016852 05:E842: 8E        .byte $8E   ; 
- D 3 - I - 0x016853 05:E843: B0        .byte $B0   ; 
- D 3 - I - 0x016854 05:E844: 2E        .byte $2E   ; 
- D 3 - I - 0x016855 05:E845: 18        .byte $18   ; 
- D 3 - I - 0x016856 05:E846: 8A        .byte $8A   ; 
- D 3 - I - 0x016857 05:E847: 40        .byte $40   ; 
- D 3 - I - 0x016858 05:E848: 00        .byte $00   ; 
- D 3 - I - 0x016859 05:E849: 02        .byte $02   ; 
- D 3 - I - 0x01685A 05:E84A: 80        .byte $80   ; 
- D 3 - I - 0x01685B 05:E84B: 02        .byte $02   ; 
- D 3 - I - 0x01685C 05:E84C: 2E        .byte $2E   ; 
- D 3 - I - 0x01685D 05:E84D: 0C        .byte $0C   ; 
- D 3 - I - 0x01685E 05:E84E: 2D        .byte $2D   ; 
- D 3 - I - 0x01685F 05:E84F: 04        .byte $04   ; 
- D 3 - I - 0x016860 05:E850: 2E        .byte $2E   ; 
- D 3 - I - 0x016861 05:E851: 04        .byte $04   ; 
- D 3 - I - 0x016862 05:E852: 2D        .byte $2D   ; 
- D 3 - I - 0x016863 05:E853: 04        .byte $04   ; 
- D 3 - I - 0x016864 05:E854: 2B        .byte $2B   ; 
- D 3 - I - 0x016865 05:E855: 06        .byte $06   ; 
- D 3 - I - 0x016866 05:E856: 60        .byte $60   ; 
- D 3 - I - 0x016867 05:E857: 06        .byte $06   ; 
- D 3 - I - 0x016868 05:E858: 2D        .byte $2D   ; 
- D 3 - I - 0x016869 05:E859: 06        .byte $06   ; 
- D 3 - I - 0x01686A 05:E85A: 2E        .byte $2E   ; 
- D 3 - I - 0x01686B 05:E85B: 06        .byte $06   ; 
- D 3 - I - 0x01686C 05:E85C: 32        .byte $32   ; 
- D 3 - I - 0x01686D 05:E85D: 06        .byte $06   ; 
- D 3 - I - 0x01686E 05:E85E: 34        .byte $34   ; 
- D 3 - I - 0x01686F 05:E85F: 06        .byte $06   ; 
- D 3 - I - 0x016870 05:E860: 35        .byte $35   ; 
- D 3 - I - 0x016871 05:E861: 06        .byte $06   ; 
- D 3 - I - 0x016872 05:E862: 39        .byte $39   ; 
- D 3 - I - 0x016873 05:E863: 06        .byte $06   ; 
- D 3 - I - 0x016874 05:E864: 35        .byte $35   ; 
- D 3 - I - 0x016875 05:E865: 06        .byte $06   ; 
- D 3 - I - 0x016876 05:E866: 34        .byte $34   ; 
- D 3 - I - 0x016877 05:E867: 06        .byte $06   ; 
- D 3 - I - 0x016878 05:E868: 32        .byte $32   ; 
- D 3 - I - 0x016879 05:E869: 06        .byte $06   ; 
- D 3 - I - 0x01687A 05:E86A: 60        .byte $60   ; 
- D 3 - I - 0x01687B 05:E86B: 06        .byte $06   ; 
- D 3 - I - 0x01687C 05:E86C: 2B        .byte $2B   ; 
- D 3 - I - 0x01687D 05:E86D: 0C        .byte $0C   ; 
- D 3 - I - 0x01687E 05:E86E: 29        .byte $29   ; 
- D 3 - I - 0x01687F 05:E86F: 04        .byte $04   ; 
- D 3 - I - 0x016880 05:E870: 2B        .byte $2B   ; 
- D 3 - I - 0x016881 05:E871: 04        .byte $04   ; 
- D 3 - I - 0x016882 05:E872: 29        .byte $29   ; 
- D 3 - I - 0x016883 05:E873: 04        .byte $04   ; 
- D 3 - I - 0x016884 05:E874: 27        .byte $27   ; 
- D 3 - I - 0x016885 05:E875: 06        .byte $06   ; 
- D 3 - I - 0x016886 05:E876: 60        .byte $60   ; 
- D 3 - I - 0x016887 05:E877: 06        .byte $06   ; 
- D 3 - I - 0x016888 05:E878: 26        .byte $26   ; 
- D 3 - I - 0x016889 05:E879: 0C        .byte $0C   ; 
- D 3 - I - 0x01688A 05:E87A: 2D        .byte $2D   ; 
- D 3 - I - 0x01688B 05:E87B: 06        .byte $06   ; 
- D 3 - I - 0x01688C 05:E87C: 60        .byte $60   ; 
- D 3 - I - 0x01688D 05:E87D: 06        .byte $06   ; 
- D 3 - I - 0x01688E 05:E87E: 30        .byte $30   ; 
- D 3 - I - 0x01688F 05:E87F: 06        .byte $06   ; 
- D 3 - I - 0x016890 05:E880: 2D        .byte $2D   ; 
- D 3 - I - 0x016891 05:E881: 06        .byte $06   ; 
- D 3 - I - 0x016892 05:E882: 32        .byte $32   ; 
- D 3 - I - 0x016893 05:E883: 06        .byte $06   ; 
- D 3 - I - 0x016894 05:E884: 30        .byte $30   ; 
- D 3 - I - 0x016895 05:E885: 06        .byte $06   ; 
- D 3 - I - 0x016896 05:E886: 2D        .byte $2D   ; 
- D 3 - I - 0x016897 05:E887: 0C        .byte $0C   ; 
- D 3 - I - 0x016898 05:E888: 81        .byte $81   ; 
- D 3 - I - 0x016899 05:E889: 2B        .byte $2B   ; 
- D 3 - I - 0x01689A 05:E88A: 30        .byte $30   ; 
- D 3 - I - 0x01689B 05:E88B: 2B        .byte $2B   ; 
- D 3 - I - 0x01689C 05:E88C: 18        .byte $18   ; 
- D 3 - I - 0x01689D 05:E88D: 2D        .byte $2D   ; 
- D 3 - I - 0x01689E 05:E88E: 18        .byte $18   ; 
- D 3 - I - 0x01689F 05:E88F: 2E        .byte $2E   ; 
- D 3 - I - 0x0168A0 05:E890: 0C        .byte $0C   ; 
- D 3 - I - 0x0168A1 05:E891: 2D        .byte $2D   ; 
- D 3 - I - 0x0168A2 05:E892: 04        .byte $04   ; 
- D 3 - I - 0x0168A3 05:E893: 2E        .byte $2E   ; 
- D 3 - I - 0x0168A4 05:E894: 04        .byte $04   ; 
- D 3 - I - 0x0168A5 05:E895: 2D        .byte $2D   ; 
- D 3 - I - 0x0168A6 05:E896: 04        .byte $04   ; 
- D 3 - I - 0x0168A7 05:E897: 2B        .byte $2B   ; 
- D 3 - I - 0x0168A8 05:E898: 06        .byte $06   ; 
- D 3 - I - 0x0168A9 05:E899: 60        .byte $60   ; 
- D 3 - I - 0x0168AA 05:E89A: 06        .byte $06   ; 
- D 3 - I - 0x0168AB 05:E89B: 29        .byte $29   ; 
- D 3 - I - 0x0168AC 05:E89C: 0C        .byte $0C   ; 
- D 3 - I - 0x0168AD 05:E89D: 2B        .byte $2B   ; 
- D 3 - I - 0x0168AE 05:E89E: 0C        .byte $0C   ; 
- D 3 - I - 0x0168AF 05:E89F: 29        .byte $29   ; 
- D 3 - I - 0x0168B0 05:E8A0: 04        .byte $04   ; 
- D 3 - I - 0x0168B1 05:E8A1: 2B        .byte $2B   ; 
- D 3 - I - 0x0168B2 05:E8A2: 04        .byte $04   ; 
- D 3 - I - 0x0168B3 05:E8A3: 29        .byte $29   ; 
- D 3 - I - 0x0168B4 05:E8A4: 04        .byte $04   ; 
- D 3 - I - 0x0168B5 05:E8A5: 26        .byte $26   ; 
- D 3 - I - 0x0168B6 05:E8A6: 18        .byte $18   ; 
- D 3 - I - 0x0168B7 05:E8A7: 60        .byte $60   ; 
- D 3 - I - 0x0168B8 05:E8A8: 02        .byte $02   ; 
- D 3 - I - 0x0168B9 05:E8A9: 83        .byte $83   ; 



_off020_E8AA_02_game_over:
- D 3 - I - 0x0168BA 05:E8AA: 29        .byte $29   ; 
- D 3 - I - 0x0168BB 05:E8AB: 01        .byte $01   ; 
- D 3 - I - 0x0168BC 05:E8AC: 1D        .byte $1D   ; 
- D 3 - I - 0x0168BD 05:E8AD: 01        .byte $01   ; 
- D 3 - I - 0x0168BE 05:E8AE: 11        .byte $11   ; 
- D 3 - I - 0x0168BF 05:E8AF: 16        .byte $16   ; 
- D 3 - I - 0x0168C0 05:E8B0: 80        .byte $80   ; 
- D 3 - I - 0x0168C1 05:E8B1: 02        .byte $02   ; 
- D 3 - I - 0x0168C2 05:E8B2: 27        .byte $27   ; 
- D 3 - I - 0x0168C3 05:E8B3: 01        .byte $01   ; 
- D 3 - I - 0x0168C4 05:E8B4: 1B        .byte $1B   ; 
- D 3 - I - 0x0168C5 05:E8B5: 01        .byte $01   ; 
- D 3 - I - 0x0168C6 05:E8B6: 0F        .byte $0F   ; 
- D 3 - I - 0x0168C7 05:E8B7: 2E        .byte $2E   ; 
- D 3 - I - 0x0168C8 05:E8B8: 26        .byte $26   ; 
- D 3 - I - 0x0168C9 05:E8B9: 01        .byte $01   ; 
- D 3 - I - 0x0168CA 05:E8BA: 1A        .byte $1A   ; 
- D 3 - I - 0x0168CB 05:E8BB: 01        .byte $01   ; 
- D 3 - I - 0x0168CC 05:E8BC: 0E        .byte $0E   ; 
- D 3 - I - 0x0168CD 05:E8BD: 2E        .byte $2E   ; 
- D 3 - I - 0x0168CE 05:E8BE: 24        .byte $24   ; 
- D 3 - I - 0x0168CF 05:E8BF: 01        .byte $01   ; 
- D 3 - I - 0x0168D0 05:E8C0: 18        .byte $18   ; 
- D 3 - I - 0x0168D1 05:E8C1: 01        .byte $01   ; 
- D 3 - I - 0x0168D2 05:E8C2: 0C        .byte $0C   ; 
- D 3 - I - 0x0168D3 05:E8C3: 2E        .byte $2E   ; 
- D 3 - I - 0x0168D4 05:E8C4: 26        .byte $26   ; 
- D 3 - I - 0x0168D5 05:E8C5: 01        .byte $01   ; 
- D 3 - I - 0x0168D6 05:E8C6: 1A        .byte $1A   ; 
- D 3 - I - 0x0168D7 05:E8C7: 01        .byte $01   ; 
- D 3 - I - 0x0168D8 05:E8C8: 0E        .byte $0E   ; 
- D 3 - I - 0x0168D9 05:E8C9: 2E        .byte $2E   ; 
- D 3 - I - 0x0168DA 05:E8CA: 81        .byte $81   ; 
- D 3 - I - 0x0168DB 05:E8CB: 80        .byte $80   ; 
- D 3 - I - 0x0168DC 05:E8CC: 04        .byte $04   ; 
- D 3 - I - 0x0168DD 05:E8CD: 27        .byte $27   ; 
- D 3 - I - 0x0168DE 05:E8CE: 01        .byte $01   ; 
- D 3 - I - 0x0168DF 05:E8CF: 2B        .byte $2B   ; 
- D 3 - I - 0x0168E0 05:E8D0: 01        .byte $01   ; 
- D 3 - I - 0x0168E1 05:E8D1: 1F        .byte $1F   ; 
- D 3 - I - 0x0168E2 05:E8D2: 01        .byte $01   ; 
- D 3 - I - 0x0168E3 05:E8D3: 13        .byte $13   ; 
- D 3 - I - 0x0168E4 05:E8D4: 2D        .byte $2D   ; 
- D 3 - I - 0x0168E5 05:E8D5: 81        .byte $81   ; 
- D 3 - I - 0x0168E6 05:E8D6: 60        .byte $60   ; 
- D 3 - I - 0x0168E7 05:E8D7: 02        .byte $02   ; 
- D 3 - I - 0x0168E8 05:E8D8: 83        .byte $83   ; 



_off021_E8D9_02_game_over:
- D 3 - I - 0x0168E9 05:E8D9: 8B        .byte $8B   ; 
- D 3 - I - 0x0168EA 05:E8DA: 01        .byte $01   ; 
- D 3 - I - 0x0168EB 05:E8DB: 87        .byte $87   ; 
- D 3 - I - 0x0168EC 05:E8DC: 8A        .byte $8A   ; 
- D 3 - I - 0x0168ED 05:E8DD: 60        .byte $60   ; 
- D 3 - I - 0x0168EE 05:E8DE: 00        .byte $00   ; 
- D 3 - I - 0x0168EF 05:E8DF: 01        .byte $01   ; 
- D 3 - I - 0x0168F0 05:E8E0: 04        .byte $04   ; 
- D 3 - I - 0x0168F1 05:E8E1: 0C        .byte $0C   ; 
- D 3 - I - 0x0168F2 05:E8E2: 04        .byte $04   ; 
- D 3 - I - 0x0168F3 05:E8E3: 06        .byte $06   ; 
- D 3 - I - 0x0168F4 05:E8E4: 04        .byte $04   ; 
- D 3 - I - 0x0168F5 05:E8E5: 06        .byte $06   ; 
- D 3 - I - 0x0168F6 05:E8E6: 80        .byte $80   ; 
- D 3 - I - 0x0168F7 05:E8E7: 04        .byte $04   ; 
- D 3 - I - 0x0168F8 05:E8E8: 04        .byte $04   ; 
- D 3 - I - 0x0168F9 05:E8E9: 18        .byte $18   ; 
- D 3 - I - 0x0168FA 05:E8EA: 04        .byte $04   ; 
- D 3 - I - 0x0168FB 05:E8EB: 18        .byte $18   ; 
- D 3 - I - 0x0168FC 05:E8EC: 04        .byte $04   ; 
- D 3 - I - 0x0168FD 05:E8ED: 18        .byte $18   ; 
- D 3 - I - 0x0168FE 05:E8EE: 04        .byte $04   ; 
- D 3 - I - 0x0168FF 05:E8EF: 0C        .byte $0C   ; 
- D 3 - I - 0x016900 05:E8F0: 04        .byte $04   ; 
- D 3 - I - 0x016901 05:E8F1: 06        .byte $06   ; 
- D 3 - I - 0x016902 05:E8F2: 04        .byte $04   ; 
- D 3 - I - 0x016903 05:E8F3: 06        .byte $06   ; 
- D 3 - I - 0x016904 05:E8F4: 81        .byte $81   ; 
- D 3 - I - 0x016905 05:E8F5: 80        .byte $80   ; 
- D 3 - I - 0x016906 05:E8F6: 03        .byte $03   ; 
- D 3 - I - 0x016907 05:E8F7: 04        .byte $04   ; 
- D 3 - I - 0x016908 05:E8F8: 18        .byte $18   ; 
- D 3 - I - 0x016909 05:E8F9: 04        .byte $04   ; 
- D 3 - I - 0x01690A 05:E8FA: 0C        .byte $0C   ; 
- D 3 - I - 0x01690B 05:E8FB: 04        .byte $04   ; 
- D 3 - I - 0x01690C 05:E8FC: 06        .byte $06   ; 
- D 3 - I - 0x01690D 05:E8FD: 04        .byte $04   ; 
- D 3 - I - 0x01690E 05:E8FE: 06        .byte $06   ; 
- D 3 - I - 0x01690F 05:E8FF: 81        .byte $81   ; 
- D 3 - I - 0x016910 05:E900: 04        .byte $04   ; 
- D 3 - I - 0x016911 05:E901: 18        .byte $18   ; 
- D 3 - I - 0x016912 05:E902: 04        .byte $04   ; 
- D 3 - I - 0x016913 05:E903: 18        .byte $18   ; 
- D 3 - I - 0x016914 05:E904: 83        .byte $83   ; 



_off017_E905_08_pickup_bonus_item:
- D 3 - I - 0x016915 05:E905: 0A        .byte $0A   ; 
- D 3 - I - 0x016916 05:E906: BC E9     .word _off022_E9BC_08
- D 3 - I - 0x016918 05:E908: FF        .byte $FF   ; 



_off017_E909_09:
- D 3 - I - 0x016919 05:E909: 08        .byte $08   ; 
- D 3 - I - 0x01691A 05:E90A: 89 E9     .word _off022_E989_09
- D 3 - I - 0x01691C 05:E90C: FF        .byte $FF   ; 



_off017_E90D_00:
- D 3 - I - 0x01691D 05:E90D: 0A        .byte $0A   ; 
- D 3 - I - 0x01691E 05:E90E: 33 E9     .word _off022_E933_00
- D 3 - I - 0x016920 05:E910: FF        .byte $FF   ; 



_off017_E911_01:
- - - - - - 0x016921 05:E911: 08        .byte $08   ; 
- - - - - - 0x016922 05:E912: A7 E9     .word _off022_E9A7_01
- - - - - - 0x016924 05:E914: FF        .byte $FF   ; 



_off017_E915_02_drink_potion:
- D 3 - I - 0x016925 05:E915: 0A        .byte $0A   ; 
- D 3 - I - 0x016926 05:E916: ED E9     .word _off022_E9ED_02_00
- D 3 - I - 0x016928 05:E918: 08        .byte $08   ; 
- D 3 - I - 0x016929 05:E919: 20 EA     .word _off022_EA20_02_01
- D 3 - I - 0x01692B 05:E91B: FF        .byte $FF   ; 



_off017_E91C_03_pickup_item:
- D 3 - I - 0x01692C 05:E91C: 0A        .byte $0A   ; 
- D 3 - I - 0x01692D 05:E91D: D7 E9     .word _off022_E9D7_03
- D 3 - I - 0x01692F 05:E91F: FF        .byte $FF   ; 



_off017_E920_04_drop_item:
- D 3 - I - 0x016930 05:E920: 0A        .byte $0A   ; 
- D 3 - I - 0x016931 05:E921: E2 E9     .word _off022_E9E2_04
- D 3 - I - 0x016933 05:E923: FF        .byte $FF   ; 



_off017_E924_05_death:
- D 3 - I - 0x016934 05:E924: 00        .byte $00   ; 
- D 3 - I - 0x016935 05:E925: 54 EA     .word _off022_EA54_05_00
- D 3 - I - 0x016937 05:E927: 02        .byte $02   ; 
- D 3 - I - 0x016938 05:E928: 64 EA     .word _off022_EA64_05_01
- D 3 - I - 0x01693A 05:E92A: FF        .byte $FF   ; 



_off017_E92B_07_paper:
- D 3 - I - 0x01693B 05:E92B: 08        .byte $08   ; 
- D 3 - I - 0x01693C 05:E92C: B9 EA     .word _off022_EAB9_07
- D 3 - I - 0x01693E 05:E92E: FF        .byte $FF   ; 



_off017_E92F_06:
- - - - - - 0x01693F 05:E92F: 0A        .byte $0A   ; 
- - - - - - 0x016940 05:E930: B1 E9     .word _off022_E9B1_06
- - - - - - 0x016942 05:E932: FF        .byte $FF   ; 



_off022_E933_00:
- D 3 - I - 0x016943 05:E933: 8B        .byte $8B   ; 
- D 3 - I - 0x016944 05:E934: 01        .byte $01   ; 
- D 3 - I - 0x016945 05:E935: 8A        .byte $8A   ; 
- D 3 - I - 0x016946 05:E936: A1        .byte $A1   ; 
- D 3 - I - 0x016947 05:E937: 03        .byte $03   ; 
- D 3 - I - 0x016948 05:E938: 01        .byte $01   ; 
- D 3 - I - 0x016949 05:E939: 8E        .byte $8E   ; 
- D 3 - I - 0x01694A 05:E93A: B0        .byte $B0   ; 
- D 3 - I - 0x01694B 05:E93B: 8F        .byte $8F   ; 
- D 3 - I - 0x01694C 05:E93C: 01        .byte $01   ; 
- D 3 - I - 0x01694D 05:E93D: 04        .byte $04   ; 
- D 3 - I - 0x01694E 05:E93E: 02        .byte $02   ; 
- D 3 - I - 0x01694F 05:E93F: 00        .byte $00   ; 
- D 3 - I - 0x016950 05:E940: 41        .byte $41   ; 
- D 3 - I - 0x016951 05:E941: 08        .byte $08   ; 
- D 3 - I - 0x016952 05:E942: 8B        .byte $8B   ; 
- D 3 - I - 0x016953 05:E943: 00        .byte $00   ; 
- D 3 - I - 0x016954 05:E944: 8F        .byte $8F   ; 
- D 3 - I - 0x016955 05:E945: 01        .byte $01   ; 
- D 3 - I - 0x016956 05:E946: 04        .byte $04   ; 
- D 3 - I - 0x016957 05:E947: 02        .byte $02   ; 
- D 3 - I - 0x016958 05:E948: 00        .byte $00   ; 
- D 3 - I - 0x016959 05:E949: 41        .byte $41   ; 
- D 3 - I - 0x01695A 05:E94A: 08        .byte $08   ; 
- D 3 - I - 0x01695B 05:E94B: 8F        .byte $8F   ; 
- D 3 - I - 0x01695C 05:E94C: 01        .byte $01   ; 
- D 3 - I - 0x01695D 05:E94D: 03        .byte $03   ; 
- D 3 - I - 0x01695E 05:E94E: 02        .byte $02   ; 
- D 3 - I - 0x01695F 05:E94F: 00        .byte $00   ; 
- D 3 - I - 0x016960 05:E950: 41        .byte $41   ; 
- D 3 - I - 0x016961 05:E951: 08        .byte $08   ; 
- D 3 - I - 0x016962 05:E952: 8F        .byte $8F   ; 
- D 3 - I - 0x016963 05:E953: 01        .byte $01   ; 
- D 3 - I - 0x016964 05:E954: 02        .byte $02   ; 
- D 3 - I - 0x016965 05:E955: 02        .byte $02   ; 
- D 3 - I - 0x016966 05:E956: 00        .byte $00   ; 
- D 3 - I - 0x016967 05:E957: 41        .byte $41   ; 
- D 3 - I - 0x016968 05:E958: 08        .byte $08   ; 
- D 3 - I - 0x016969 05:E959: 8F        .byte $8F   ; 
- D 3 - I - 0x01696A 05:E95A: 01        .byte $01   ; 
- D 3 - I - 0x01696B 05:E95B: 01        .byte $01   ; 
- D 3 - I - 0x01696C 05:E95C: 02        .byte $02   ; 
- D 3 - I - 0x01696D 05:E95D: 00        .byte $00   ; 
- D 3 - I - 0x01696E 05:E95E: 41        .byte $41   ; 
- D 3 - I - 0x01696F 05:E95F: 08        .byte $08   ; 
- D 3 - I - 0x016970 05:E960: 41        .byte $41   ; 
- D 3 - I - 0x016971 05:E961: 08        .byte $08   ; 
- D 3 - I - 0x016972 05:E962: 8B        .byte $8B   ; 
- D 3 - I - 0x016973 05:E963: 01        .byte $01   ; 
- D 3 - I - 0x016974 05:E964: 8A        .byte $8A   ; 
- D 3 - I - 0x016975 05:E965: 10        .byte $10   ; 
- D 3 - I - 0x016976 05:E966: 30        .byte $30   ; 
- D 3 - I - 0x016977 05:E967: 00        .byte $00   ; 
- D 3 - I - 0x016978 05:E968: 41        .byte $41   ; 
- D 3 - I - 0x016979 05:E969: 08        .byte $08   ; 
- D 3 - I - 0x01697A 05:E96A: 8B        .byte $8B   ; 
- D 3 - I - 0x01697B 05:E96B: 00        .byte $00   ; 
- D 3 - I - 0x01697C 05:E96C: 8F        .byte $8F   ; 
- D 3 - I - 0x01697D 05:E96D: 01        .byte $01   ; 
- D 3 - I - 0x01697E 05:E96E: 01        .byte $01   ; 
- D 3 - I - 0x01697F 05:E96F: 02        .byte $02   ; 
- D 3 - I - 0x016980 05:E970: 00        .byte $00   ; 
- D 3 - I - 0x016981 05:E971: 41        .byte $41   ; 
- D 3 - I - 0x016982 05:E972: 08        .byte $08   ; 
- D 3 - I - 0x016983 05:E973: 8F        .byte $8F   ; 
- D 3 - I - 0x016984 05:E974: 01        .byte $01   ; 
- D 3 - I - 0x016985 05:E975: 02        .byte $02   ; 
- D 3 - I - 0x016986 05:E976: 02        .byte $02   ; 
- D 3 - I - 0x016987 05:E977: 00        .byte $00   ; 
- D 3 - I - 0x016988 05:E978: 41        .byte $41   ; 
- D 3 - I - 0x016989 05:E979: 08        .byte $08   ; 
- D 3 - I - 0x01698A 05:E97A: 8F        .byte $8F   ; 
- D 3 - I - 0x01698B 05:E97B: 01        .byte $01   ; 
- D 3 - I - 0x01698C 05:E97C: 03        .byte $03   ; 
- D 3 - I - 0x01698D 05:E97D: 02        .byte $02   ; 
- D 3 - I - 0x01698E 05:E97E: 00        .byte $00   ; 
- D 3 - I - 0x01698F 05:E97F: 41        .byte $41   ; 
- D 3 - I - 0x016990 05:E980: 08        .byte $08   ; 
- D 3 - I - 0x016991 05:E981: 8F        .byte $8F   ; 
- D 3 - I - 0x016992 05:E982: 01        .byte $01   ; 
- D 3 - I - 0x016993 05:E983: 04        .byte $04   ; 
- D 3 - I - 0x016994 05:E984: 02        .byte $02   ; 
- D 3 - I - 0x016995 05:E985: 00        .byte $00   ; 
- D 3 - I - 0x016996 05:E986: 41        .byte $41   ; 
- D 3 - I - 0x016997 05:E987: 08        .byte $08   ; 
- D 3 - I - 0x016998 05:E988: 83        .byte $83   ; 



_off022_E989_09:
- D 3 - I - 0x016999 05:E989: 8B        .byte $8B   ; 
- D 3 - I - 0x01699A 05:E98A: 01        .byte $01   ; 
- D 3 - I - 0x01699B 05:E98B: 8A        .byte $8A   ; 
- D 3 - I - 0x01699C 05:E98C: 30        .byte $30   ; 
- D 3 - I - 0x01699D 05:E98D: 00        .byte $00   ; 
- D 3 - I - 0x01699E 05:E98E: 02        .byte $02   ; 
- D 3 - I - 0x01699F 05:E98F: 87        .byte $87   ; 
- D 3 - I - 0x0169A0 05:E990: 07        .byte $07   ; 
- D 3 - I - 0x0169A1 05:E991: 01        .byte $01   ; 
- D 3 - I - 0x0169A2 05:E992: 8A        .byte $8A   ; 
- D 3 - I - 0x0169A3 05:E993: 10        .byte $10   ; 
- D 3 - I - 0x0169A4 05:E994: 00        .byte $00   ; 
- D 3 - I - 0x0169A5 05:E995: 00        .byte $00   ; 
- D 3 - I - 0x0169A6 05:E996: 09        .byte $09   ; 
- D 3 - I - 0x0169A7 05:E997: 01        .byte $01   ; 
- D 3 - I - 0x0169A8 05:E998: 8B        .byte $8B   ; 
- D 3 - I - 0x0169A9 05:E999: 00        .byte $00   ; 
- D 3 - I - 0x0169AA 05:E99A: 0B        .byte $0B   ; 
- D 3 - I - 0x0169AB 05:E99B: 01        .byte $01   ; 
- D 3 - I - 0x0169AC 05:E99C: 0D        .byte $0D   ; 
- D 3 - I - 0x0169AD 05:E99D: 01        .byte $01   ; 
- D 3 - I - 0x0169AE 05:E99E: 8B        .byte $8B   ; 
- D 3 - I - 0x0169AF 05:E99F: 01        .byte $01   ; 
- D 3 - I - 0x0169B0 05:E9A0: 8A        .byte $8A   ; 
- D 3 - I - 0x0169B1 05:E9A1: 50        .byte $50   ; 
- D 3 - I - 0x0169B2 05:E9A2: 0B        .byte $0B   ; 
- D 3 - I - 0x0169B3 05:E9A3: 01        .byte $01   ; 
- D 3 - I - 0x0169B4 05:E9A4: 0E        .byte $0E   ; 
- D 3 - I - 0x0169B5 05:E9A5: 30        .byte $30   ; 
- D 3 - I - 0x0169B6 05:E9A6: 83        .byte $83   ; 



_off022_E9A7_01:
- - - - - - 0x0169B7 05:E9A7: 8B        .byte $8B   ; 
- - - - - - 0x0169B8 05:E9A8: 01        .byte $01   ; 
- - - - - - 0x0169B9 05:E9A9: 8A        .byte $8A   ; 
- - - - - - 0x0169BA 05:E9AA: A0        .byte $A0   ; 
- - - - - - 0x0169BB 05:E9AB: 00        .byte $00   ; 
- - - - - - 0x0169BC 05:E9AC: 02        .byte $02   ; 
- - - - - - 0x0169BD 05:E9AD: 87        .byte $87   ; 
- - - - - - 0x0169BE 05:E9AE: 0A        .byte $0A   ; 
- - - - - - 0x0169BF 05:E9AF: 01        .byte $01   ; 
- - - - - - 0x0169C0 05:E9B0: 83        .byte $83   ; 



_off022_E9B1_06:
- - - - - - 0x0169C1 05:E9B1: 8B        .byte $8B   ; 
- - - - - - 0x0169C2 05:E9B2: 01        .byte $01   ; 
- - - - - - 0x0169C3 05:E9B3: 8E        .byte $8E   ; 
- - - - - - 0x0169C4 05:E9B4: B0        .byte $B0   ; 
- - - - - - 0x0169C5 05:E9B5: 8A        .byte $8A   ; 
- - - - - - 0x0169C6 05:E9B6: A0        .byte $A0   ; 
- - - - - - 0x0169C7 05:E9B7: 00        .byte $00   ; 
- - - - - - 0x0169C8 05:E9B8: 02        .byte $02   ; 
- - - - - - 0x0169C9 05:E9B9: 32        .byte $32   ; 
- - - - - - 0x0169CA 05:E9BA: 01        .byte $01   ; 
- - - - - - 0x0169CB 05:E9BB: 83        .byte $83   ; 



_off022_E9BC_08:
- D 3 - I - 0x0169CC 05:E9BC: 8B        .byte $8B   ; 
- D 3 - I - 0x0169CD 05:E9BD: FF        .byte $FF   ; 
- D 3 - I - 0x0169CE 05:E9BE: 8E        .byte $8E   ; 
- D 3 - I - 0x0169CF 05:E9BF: 30        .byte $30   ; 
- D 3 - I - 0x0169D0 05:E9C0: 92        .byte con_92_loop, $01
- D 3 - I - 0x0169D2 05:E9C2: 6E DB     .word off_92_DB6E
- D 3 - I - 0x0169D4 05:E9C4: 94        .byte $94   ; 
- D 3 - I - 0x0169D5 05:E9C5: 01        .byte $01   ; 
- D 3 - I - 0x0169D6 05:E9C6: 93        .byte $93   ; 
- D 3 - I - 0x0169D7 05:E9C7: FF        .byte $FF   ; 
- D 3 - I - 0x0169D8 05:E9C8: 19        .byte $19   ; 
- D 3 - I - 0x0169D9 05:E9C9: 08        .byte $08   ; 
- D 3 - I - 0x0169DA 05:E9CA: 1E        .byte $1E   ; 
- D 3 - I - 0x0169DB 05:E9CB: 08        .byte $08   ; 
- D 3 - I - 0x0169DC 05:E9CC: 22        .byte $22   ; 
- D 3 - I - 0x0169DD 05:E9CD: 08        .byte $08   ; 
- D 3 - I - 0x0169DE 05:E9CE: 1E        .byte $1E   ; 
- D 3 - I - 0x0169DF 05:E9CF: 08        .byte $08   ; 
- D 3 - I - 0x0169E0 05:E9D0: 22        .byte $22   ; 
- D 3 - I - 0x0169E1 05:E9D1: 08        .byte $08   ; 
- D 3 - I - 0x0169E2 05:E9D2: 25        .byte $25   ; 
- D 3 - I - 0x0169E3 05:E9D3: 08        .byte $08   ; 
- D 3 - I - 0x0169E4 05:E9D4: 2A        .byte $2A   ; 
- D 3 - I - 0x0169E5 05:E9D5: 10        .byte $10   ; 
- D 3 - I - 0x0169E6 05:E9D6: 83        .byte $83   ; 



_off022_E9D7_03:
- D 3 - I - 0x0169E7 05:E9D7: 8B        .byte $8B   ; 
- D 3 - I - 0x0169E8 05:E9D8: 01        .byte $01   ; 
- D 3 - I - 0x0169E9 05:E9D9: 8E        .byte $8E   ; 
- D 3 - I - 0x0169EA 05:E9DA: B0        .byte $B0   ; 
- D 3 - I - 0x0169EB 05:E9DB: 8A        .byte $8A   ; 
- D 3 - I - 0x0169EC 05:E9DC: 70        .byte $70   ; 
- D 3 - I - 0x0169ED 05:E9DD: 00        .byte $00   ; 
- D 3 - I - 0x0169EE 05:E9DE: 02        .byte $02   ; 
- D 3 - I - 0x0169EF 05:E9DF: 16        .byte $16   ; 
- D 3 - I - 0x0169F0 05:E9E0: 01        .byte $01   ; 
- D 3 - I - 0x0169F1 05:E9E1: 83        .byte $83   ; 



_off022_E9E2_04:
- D 3 - I - 0x0169F2 05:E9E2: 8B        .byte $8B   ; 
- D 3 - I - 0x0169F3 05:E9E3: 01        .byte $01   ; 
- D 3 - I - 0x0169F4 05:E9E4: 8E        .byte $8E   ; 
- D 3 - I - 0x0169F5 05:E9E5: B0        .byte $B0   ; 
- D 3 - I - 0x0169F6 05:E9E6: 8A        .byte $8A   ; 
- D 3 - I - 0x0169F7 05:E9E7: 70        .byte $70   ; 
- D 3 - I - 0x0169F8 05:E9E8: 00        .byte $00   ; 
- D 3 - I - 0x0169F9 05:E9E9: 02        .byte $02   ; 
- D 3 - I - 0x0169FA 05:E9EA: 0F        .byte $0F   ; 
- D 3 - I - 0x0169FB 05:E9EB: 01        .byte $01   ; 
- D 3 - I - 0x0169FC 05:E9EC: 83        .byte $83   ; 



_off022_E9ED_02_00:
- D 3 - I - 0x0169FD 05:E9ED: 8B        .byte $8B   ; 
- D 3 - I - 0x0169FE 05:E9EE: 01        .byte $01   ; 
- D 3 - I - 0x0169FF 05:E9EF: 8A        .byte $8A   ; 
- D 3 - I - 0x016A00 05:E9F0: C0        .byte $C0   ; 
- D 3 - I - 0x016A01 05:E9F1: 00        .byte $00   ; 
- D 3 - I - 0x016A02 05:E9F2: 02        .byte $02   ; 
- D 3 - I - 0x016A03 05:E9F3: 8E        .byte $8E   ; 
- D 3 - I - 0x016A04 05:E9F4: 30        .byte $30   ; 
- D 3 - I - 0x016A05 05:E9F5: 8F        .byte $8F   ; 
- D 3 - I - 0x016A06 05:E9F6: 00        .byte $00   ; 
- D 3 - I - 0x016A07 05:E9F7: 00        .byte $00   ; 
- D 3 - I - 0x016A08 05:E9F8: 00        .byte $00   ; 
- D 3 - I - 0x016A09 05:E9F9: 00        .byte $00   ; 
- D 3 - I - 0x016A0A 05:E9FA: 82        .byte $82   ; 
- D 3 - I - 0x016A0B 05:E9FB: 01        .byte $01   ; 
- D 3 - I - 0x016A0C 05:E9FC: 86        .byte $86   ; 
- D 3 - I - 0x016A0D 05:E9FD: 00        .byte $00   ; 
- D 3 - I - 0x016A0E 05:E9FE: 84        .byte con_84_jsr
- D 3 - I - 0x016A0F 05:E9FF: 43 EA     .word sub_84_EA43
- D 3 - I - 0x016A11 05:EA01: 86        .byte $86   ; 
- D 3 - I - 0x016A12 05:EA02: 01        .byte $01   ; 
- D 3 - I - 0x016A13 05:EA03: 84        .byte con_84_jsr
- D 3 - I - 0x016A14 05:EA04: 43 EA     .word sub_84_EA43
- D 3 - I - 0x016A16 05:EA06: 86        .byte $86   ; 
- D 3 - I - 0x016A17 05:EA07: 02        .byte $02   ; 
- D 3 - I - 0x016A18 05:EA08: 84        .byte con_84_jsr
- D 3 - I - 0x016A19 05:EA09: 43 EA     .word sub_84_EA43
- D 3 - I - 0x016A1B 05:EA0B: 86        .byte $86   ; 
- D 3 - I - 0x016A1C 05:EA0C: 03        .byte $03   ; 
- D 3 - I - 0x016A1D 05:EA0D: 84        .byte con_84_jsr
- D 3 - I - 0x016A1E 05:EA0E: 43 EA     .word sub_84_EA43
- D 3 - I - 0x016A20 05:EA10: 86        .byte $86   ; 
- D 3 - I - 0x016A21 05:EA11: 04        .byte $04   ; 
- D 3 - I - 0x016A22 05:EA12: 84        .byte con_84_jsr
- D 3 - I - 0x016A23 05:EA13: 43 EA     .word sub_84_EA43
- D 3 - I - 0x016A25 05:EA15: 86        .byte $86   ; 
- D 3 - I - 0x016A26 05:EA16: 00        .byte $00   ; 
- D 3 - I - 0x016A27 05:EA17: 82        .byte $82   ; 
- D 3 - I - 0x016A28 05:EA18: 00        .byte $00   ; 
- D 3 - I - 0x016A29 05:EA19: 8A        .byte $8A   ; 
- D 3 - I - 0x016A2A 05:EA1A: 00        .byte $00   ; 
- D 3 - I - 0x016A2B 05:EA1B: 00        .byte $00   ; 
- D 3 - I - 0x016A2C 05:EA1C: 02        .byte $02   ; 
- D 3 - I - 0x016A2D 05:EA1D: 0B        .byte $0B   ; 
- D 3 - I - 0x016A2E 05:EA1E: 02        .byte $02   ; 
- D 3 - I - 0x016A2F 05:EA1F: 83        .byte $83   ; 



_off022_EA20_02_01:
- D 3 - I - 0x016A30 05:EA20: 8B        .byte $8B   ; 
- D 3 - I - 0x016A31 05:EA21: 01        .byte $01   ; 
- D 3 - I - 0x016A32 05:EA22: 8A        .byte $8A   ; 
- D 3 - I - 0x016A33 05:EA23: A0        .byte $A0   ; 
- D 3 - I - 0x016A34 05:EA24: 00        .byte $00   ; 
- D 3 - I - 0x016A35 05:EA25: 02        .byte $02   ; 
- D 3 - I - 0x016A36 05:EA26: 87        .byte $87   ; 
- D 3 - I - 0x016A37 05:EA27: 80        .byte $80   ; 
- D 3 - I - 0x016A38 05:EA28: 07        .byte $07   ; 
- D 3 - I - 0x016A39 05:EA29: 02        .byte $02   ; 
- D 3 - I - 0x016A3A 05:EA2A: 01        .byte $01   ; 
- D 3 - I - 0x016A3B 05:EA2B: 03        .byte $03   ; 
- D 3 - I - 0x016A3C 05:EA2C: 01        .byte $01   ; 
- D 3 - I - 0x016A3D 05:EA2D: 04        .byte $04   ; 
- D 3 - I - 0x016A3E 05:EA2E: 01        .byte $01   ; 
- D 3 - I - 0x016A3F 05:EA2F: 05        .byte $05   ; 
- D 3 - I - 0x016A40 05:EA30: 01        .byte $01   ; 
- D 3 - I - 0x016A41 05:EA31: 06        .byte $06   ; 
- D 3 - I - 0x016A42 05:EA32: 01        .byte $01   ; 
- D 3 - I - 0x016A43 05:EA33: 07        .byte $07   ; 
- D 3 - I - 0x016A44 05:EA34: 01        .byte $01   ; 
- D 3 - I - 0x016A45 05:EA35: 08        .byte $08   ; 
- D 3 - I - 0x016A46 05:EA36: 01        .byte $01   ; 
- D 3 - I - 0x016A47 05:EA37: 09        .byte $09   ; 
- D 3 - I - 0x016A48 05:EA38: 01        .byte $01   ; 
- D 3 - I - 0x016A49 05:EA39: 0A        .byte $0A   ; 
- D 3 - I - 0x016A4A 05:EA3A: 01        .byte $01   ; 
- D 3 - I - 0x016A4B 05:EA3B: 0B        .byte $0B   ; 
- D 3 - I - 0x016A4C 05:EA3C: 01        .byte $01   ; 
- D 3 - I - 0x016A4D 05:EA3D: 0C        .byte $0C   ; 
- D 3 - I - 0x016A4E 05:EA3E: 01        .byte $01   ; 
- D 3 - I - 0x016A4F 05:EA3F: 0D        .byte $0D   ; 
- D 3 - I - 0x016A50 05:EA40: 01        .byte $01   ; 
- D 3 - I - 0x016A51 05:EA41: 81        .byte $81   ; 
- D 3 - I - 0x016A52 05:EA42: 83        .byte $83   ; 



sub_84_EA43:
- D 3 - I - 0x016A53 05:EA43: 14        .byte $14   ; 
- D 3 - I - 0x016A54 05:EA44: 18        .byte $18   ; 
- D 3 - I - 0x016A55 05:EA45: 1C        .byte $1C   ; 
- D 3 - I - 0x016A56 05:EA46: 20        .byte $20   ; 
- D 3 - I - 0x016A57 05:EA47: 24        .byte $24   ; 
- D 3 - I - 0x016A58 05:EA48: 28        .byte $28   ; 
- D 3 - I - 0x016A59 05:EA49: 2C        .byte $2C   ; 
- D 3 - I - 0x016A5A 05:EA4A: 30        .byte $30   ; 
- D 3 - I - 0x016A5B 05:EA4B: 34        .byte $34   ; 
- D 3 - I - 0x016A5C 05:EA4C: 38        .byte $38   ; 
- D 3 - I - 0x016A5D 05:EA4D: 3C        .byte $3C   ; 
- D 3 - I - 0x016A5E 05:EA4E: 40        .byte $40   ; 
- D 3 - I - 0x016A5F 05:EA4F: 44        .byte $44   ; 
- D 3 - I - 0x016A60 05:EA50: 48        .byte $48   ; 
- D 3 - I - 0x016A61 05:EA51: 4C        .byte $4C   ; 
- D 3 - I - 0x016A62 05:EA52: 50        .byte $50   ; 
- D 3 - I - 0x016A63 05:EA53: 85        .byte con_85_rts



_off022_EA54_05_00:
- D 3 - I - 0x016A64 05:EA54: 8B        .byte $8B   ; 
- D 3 - I - 0x016A65 05:EA55: 01        .byte $01   ; 
- D 3 - I - 0x016A66 05:EA56: 8A        .byte $8A   ; 
- D 3 - I - 0x016A67 05:EA57: 40        .byte $40   ; 
- D 3 - I - 0x016A68 05:EA58: 00        .byte $00   ; 
- D 3 - I - 0x016A69 05:EA59: 02        .byte $02   ; 
- D 3 - I - 0x016A6A 05:EA5A: 8E        .byte $8E   ; 
- D 3 - I - 0x016A6B 05:EA5B: F0        .byte $F0   ; 
- D 3 - I - 0x016A6C 05:EA5C: 8F        .byte $8F   ; 
- D 3 - I - 0x016A6D 05:EA5D: 00        .byte $00   ; 
- D 3 - I - 0x016A6E 05:EA5E: 00        .byte $00   ; 
- D 3 - I - 0x016A6F 05:EA5F: 00        .byte $00   ; 
- D 3 - I - 0x016A70 05:EA60: 00        .byte $00   ; 
- D 3 - I - 0x016A71 05:EA61: 88        .byte con_88_jmp
- D 3 - I - 0x016A72 05:EA62: 72 EA     .word loc_88_EA72



_off022_EA64_05_01:
- D 3 - I - 0x016A74 05:EA64: 8B        .byte $8B   ; 
- D 3 - I - 0x016A75 05:EA65: 01        .byte $01   ; 
- D 3 - I - 0x016A76 05:EA66: 8A        .byte $8A   ; 
- D 3 - I - 0x016A77 05:EA67: 00        .byte $00   ; 
- D 3 - I - 0x016A78 05:EA68: 00        .byte $00   ; 
- D 3 - I - 0x016A79 05:EA69: 02        .byte $02   ; 
- D 3 - I - 0x016A7A 05:EA6A: 8E        .byte $8E   ; 
- D 3 - I - 0x016A7B 05:EA6B: F0        .byte $F0   ; 
- D 3 - I - 0x016A7C 05:EA6C: 3C        .byte $3C   ; 
- D 3 - I - 0x016A7D 05:EA6D: 0F        .byte $0F   ; 
- D 3 - I - 0x016A7E 05:EA6E: 8A        .byte $8A   ; 
- D 3 - I - 0x016A7F 05:EA6F: 20        .byte $20   ; 
- D 3 - I - 0x016A80 05:EA70: 00        .byte $00   ; 
- D 3 - I - 0x016A81 05:EA71: 02        .byte $02   ; 
loc_88_EA72:
- D 3 - I - 0x016A82 05:EA72: 8F        .byte $8F   ; 
- D 3 - I - 0x016A83 05:EA73: 01        .byte $01   ; 
- D 3 - I - 0x016A84 05:EA74: 04        .byte $04   ; 
- D 3 - I - 0x016A85 05:EA75: 00        .byte $00   ; 
- D 3 - I - 0x016A86 05:EA76: 00        .byte $00   ; 
- D 3 - I - 0x016A87 05:EA77: 28        .byte $28   ; 
- D 3 - I - 0x016A88 05:EA78: 0F        .byte $0F   ; 
- D 3 - I - 0x016A89 05:EA79: 8F        .byte $8F   ; 
- D 3 - I - 0x016A8A 05:EA7A: 00        .byte $00   ; 
- D 3 - I - 0x016A8B 05:EA7B: 00        .byte $00   ; 
- D 3 - I - 0x016A8C 05:EA7C: 00        .byte $00   ; 
- D 3 - I - 0x016A8D 05:EA7D: 00        .byte $00   ; 
- D 3 - I - 0x016A8E 05:EA7E: 2F        .byte $2F   ; 
- D 3 - I - 0x016A8F 05:EA7F: 0A        .byte $0A   ; 
- D 3 - I - 0x016A90 05:EA80: 87        .byte $87   ; 
- D 3 - I - 0x016A91 05:EA81: 01        .byte $01   ; 
- D 3 - I - 0x016A92 05:EA82: 2F        .byte $2F   ; 
- D 3 - I - 0x016A93 05:EA83: 0A        .byte $0A   ; 
- D 3 - I - 0x016A94 05:EA84: 87        .byte $87   ; 
- D 3 - I - 0x016A95 05:EA85: 02        .byte $02   ; 
- D 3 - I - 0x016A96 05:EA86: 2F        .byte $2F   ; 
- D 3 - I - 0x016A97 05:EA87: 05        .byte $05   ; 
- D 3 - I - 0x016A98 05:EA88: 87        .byte $87   ; 
- D 3 - I - 0x016A99 05:EA89: 03        .byte $03   ; 
- D 3 - I - 0x016A9A 05:EA8A: 2F        .byte $2F   ; 
- D 3 - I - 0x016A9B 05:EA8B: 05        .byte $05   ; 
- D 3 - I - 0x016A9C 05:EA8C: 87        .byte $87   ; 
- D 3 - I - 0x016A9D 05:EA8D: 04        .byte $04   ; 
- D 3 - I - 0x016A9E 05:EA8E: 2F        .byte $2F   ; 
- D 3 - I - 0x016A9F 05:EA8F: 05        .byte $05   ; 
- D 3 - I - 0x016AA0 05:EA90: 87        .byte $87   ; 
- D 3 - I - 0x016AA1 05:EA91: 05        .byte $05   ; 
- D 3 - I - 0x016AA2 05:EA92: 2F        .byte $2F   ; 
- D 3 - I - 0x016AA3 05:EA93: 05        .byte $05   ; 
- D 3 - I - 0x016AA4 05:EA94: 87        .byte $87   ; 
- D 3 - I - 0x016AA5 05:EA95: 06        .byte $06   ; 
- D 3 - I - 0x016AA6 05:EA96: 2F        .byte $2F   ; 
- D 3 - I - 0x016AA7 05:EA97: 05        .byte $05   ; 
- D 3 - I - 0x016AA8 05:EA98: 87        .byte $87   ; 
- D 3 - I - 0x016AA9 05:EA99: 07        .byte $07   ; 
- D 3 - I - 0x016AAA 05:EA9A: 2F        .byte $2F   ; 
- D 3 - I - 0x016AAB 05:EA9B: 05        .byte $05   ; 
- D 3 - I - 0x016AAC 05:EA9C: 87        .byte $87   ; 
- D 3 - I - 0x016AAD 05:EA9D: 08        .byte $08   ; 
- D 3 - I - 0x016AAE 05:EA9E: 2F        .byte $2F   ; 
- D 3 - I - 0x016AAF 05:EA9F: 05        .byte $05   ; 
- D 3 - I - 0x016AB0 05:EAA0: 87        .byte $87   ; 
- D 3 - I - 0x016AB1 05:EAA1: 09        .byte $09   ; 
- D 3 - I - 0x016AB2 05:EAA2: 2F        .byte $2F   ; 
- D 3 - I - 0x016AB3 05:EAA3: 05        .byte $05   ; 
- D 3 - I - 0x016AB4 05:EAA4: 87        .byte $87   ; 
- D 3 - I - 0x016AB5 05:EAA5: 00        .byte $00   ; 
- D 3 - I - 0x016AB6 05:EAA6: 8F        .byte $8F   ; 
- D 3 - I - 0x016AB7 05:EAA7: 01        .byte $01   ; 
- D 3 - I - 0x016AB8 05:EAA8: 02        .byte $02   ; 
- D 3 - I - 0x016AB9 05:EAA9: 00        .byte $00   ; 
- D 3 - I - 0x016ABA 05:EAAA: 01        .byte $01   ; 
- D 3 - I - 0x016ABB 05:EAAB: 2E        .byte $2E   ; 
- D 3 - I - 0x016ABC 05:EAAC: 0C        .byte $0C   ; 
- D 3 - I - 0x016ABD 05:EAAD: 8A        .byte $8A   ; 
- D 3 - I - 0x016ABE 05:EAAE: 00        .byte $00   ; 
- D 3 - I - 0x016ABF 05:EAAF: 00        .byte $00   ; 
- D 3 - I - 0x016AC0 05:EAB0: 02        .byte $02   ; 
- D 3 - I - 0x016AC1 05:EAB1: 8F        .byte $8F   ; 
- D 3 - I - 0x016AC2 05:EAB2: 00        .byte $00   ; 
- D 3 - I - 0x016AC3 05:EAB3: 00        .byte $00   ; 
- D 3 - I - 0x016AC4 05:EAB4: 00        .byte $00   ; 
- D 3 - I - 0x016AC5 05:EAB5: 00        .byte $00   ; 
- D 3 - I - 0x016AC6 05:EAB6: 2E        .byte $2E   ; 
- D 3 - I - 0x016AC7 05:EAB7: 02        .byte $02   ; 
- D 3 - I - 0x016AC8 05:EAB8: 83        .byte $83   ; 



_off022_EAB9_07:
- D 3 - I - 0x016AC9 05:EAB9: 8B        .byte $8B   ; 
- D 3 - I - 0x016ACA 05:EABA: 01        .byte $01   ; 
- D 3 - I - 0x016ACB 05:EABB: 8A        .byte $8A   ; 
- D 3 - I - 0x016ACC 05:EABC: 90        .byte $90   ; 
- D 3 - I - 0x016ACD 05:EABD: 00        .byte $00   ; 
- D 3 - I - 0x016ACE 05:EABE: 02        .byte $02   ; 
- D 3 - I - 0x016ACF 05:EABF: 87        .byte $87   ; 
- D 3 - I - 0x016AD0 05:EAC0: 80        .byte $80   ; 
- D 3 - I - 0x016AD1 05:EAC1: 04        .byte $04   ; 
- D 3 - I - 0x016AD2 05:EAC2: 02        .byte $02   ; 
- D 3 - I - 0x016AD3 05:EAC3: 01        .byte $01   ; 
- D 3 - I - 0x016AD4 05:EAC4: 04        .byte $04   ; 
- D 3 - I - 0x016AD5 05:EAC5: 01        .byte $01   ; 
- D 3 - I - 0x016AD6 05:EAC6: 06        .byte $06   ; 
- D 3 - I - 0x016AD7 05:EAC7: 01        .byte $01   ; 
- D 3 - I - 0x016AD8 05:EAC8: 08        .byte $08   ; 
- D 3 - I - 0x016AD9 05:EAC9: 01        .byte $01   ; 
- D 3 - I - 0x016ADA 05:EACA: 06        .byte $06   ; 
- D 3 - I - 0x016ADB 05:EACB: 01        .byte $01   ; 
- D 3 - I - 0x016ADC 05:EACC: 81        .byte $81   ; 
- D 3 - I - 0x016ADD 05:EACD: 83        .byte $83   ; 



_off018_EACE_05_logo:
- D 3 - I - 0x016ADE 05:EACE: 89        .byte $89   ; 
- D 3 - I - 0x016ADF 05:EACF: 15        .byte $15   ; 
- D 3 - I - 0x016AE0 05:EAD0: 0F        .byte $0F   ; 
- D 3 - I - 0x016AE1 05:EAD1: 01        .byte $01   ; 
- D 3 - I - 0x016AE2 05:EAD2: 00        .byte $00   ; 
- D 3 - I - 0x016AE3 05:EAD3: 05        .byte $05   ; 
- D 3 - I - 0x016AE4 05:EAD4: 00        .byte $00   ; 
- D 3 - I - 0x016AE5 05:EAD5: 08        .byte $08   ; 
- D 3 - I - 0x016AE6 05:EAD6: FF        .byte $FF   ; 
- D 3 - I - 0x016AE7 05:EAD7: FF        .byte $FF   ; 
- D 3 - I - 0x016AE8 05:EAD8: 8E        .byte $8E   ; 
- D 3 - I - 0x016AE9 05:EAD9: 30        .byte $30   ; 
- D 3 - I - 0x016AEA 05:EADA: 94        .byte $94   ; 
- D 3 - I - 0x016AEB 05:EADB: 01        .byte $01   ; 
- D 3 - I - 0x016AEC 05:EADC: 93        .byte $93   ; 
- D 3 - I - 0x016AED 05:EADD: FF        .byte $FF   ; 
- D 3 - I - 0x016AEE 05:EADE: 86        .byte $86   ; 
- D 3 - I - 0x016AEF 05:EADF: FE        .byte $FE   ; 
- D 3 - I - 0x016AF0 05:EAE0: 92        .byte con_92_loop, $01
- D 3 - I - 0x016AF2 05:EAE2: 6A FA     .word off_92_FA6A
- D 3 - I - 0x016AF4 05:EAE4: 8B        .byte $8B   ; 
- D 3 - I - 0x016AF5 05:EAE5: FF        .byte $FF   ; 
- D 3 - I - 0x016AF6 05:EAE6: 1A        .byte $1A   ; 
- D 3 - I - 0x016AF7 05:EAE7: 10        .byte $10   ; 
- D 3 - I - 0x016AF8 05:EAE8: 93        .byte $93   ; 
- D 3 - I - 0x016AF9 05:EAE9: 05        .byte $05   ; 
- D 3 - I - 0x016AFA 05:EAEA: 1E        .byte $1E   ; 
- D 3 - I - 0x016AFB 05:EAEB: 08        .byte $08   ; 
- D 3 - I - 0x016AFC 05:EAEC: 21        .byte $21   ; 
- D 3 - I - 0x016AFD 05:EAED: 08        .byte $08   ; 
- D 3 - I - 0x016AFE 05:EAEE: 93        .byte $93   ; 
- D 3 - I - 0x016AFF 05:EAEF: FF        .byte $FF   ; 
- D 3 - I - 0x016B00 05:EAF0: 1F        .byte $1F   ; 
- D 3 - I - 0x016B01 05:EAF1: 10        .byte $10   ; 
- D 3 - I - 0x016B02 05:EAF2: 93        .byte $93   ; 
- D 3 - I - 0x016B03 05:EAF3: 04        .byte $04   ; 
- D 3 - I - 0x016B04 05:EAF4: 1C        .byte $1C   ; 
- D 3 - I - 0x016B05 05:EAF5: 10        .byte $10   ; 
- D 3 - I - 0x016B06 05:EAF6: 1E        .byte $1E   ; 
- D 3 - I - 0x016B07 05:EAF7: 10        .byte $10   ; 
- D 3 - I - 0x016B08 05:EAF8: 1A        .byte $1A   ; 
- D 3 - I - 0x016B09 05:EAF9: 10        .byte $10   ; 
- D 3 - I - 0x016B0A 05:EAFA: 93        .byte $93   ; 
- D 3 - I - 0x016B0B 05:EAFB: FF        .byte $FF   ; 
- D 3 - I - 0x016B0C 05:EAFC: 15        .byte $15   ; 
- D 3 - I - 0x016B0D 05:EAFD: A0        .byte $A0   ; 
- D 3 - I - 0x016B0E 05:EAFE: 1A        .byte $1A   ; 
- D 3 - I - 0x016B0F 05:EAFF: 10        .byte $10   ; 
- D 3 - I - 0x016B10 05:EB00: 93        .byte $93   ; 
- D 3 - I - 0x016B11 05:EB01: 05        .byte $05   ; 
- D 3 - I - 0x016B12 05:EB02: 1E        .byte $1E   ; 
- D 3 - I - 0x016B13 05:EB03: 08        .byte $08   ; 
- D 3 - I - 0x016B14 05:EB04: 21        .byte $21   ; 
- D 3 - I - 0x016B15 05:EB05: 08        .byte $08   ; 
- D 3 - I - 0x016B16 05:EB06: 93        .byte $93   ; 
- D 3 - I - 0x016B17 05:EB07: FF        .byte $FF   ; 
- D 3 - I - 0x016B18 05:EB08: 1F        .byte $1F   ; 
- D 3 - I - 0x016B19 05:EB09: 10        .byte $10   ; 
- D 3 - I - 0x016B1A 05:EB0A: 93        .byte $93   ; 
- D 3 - I - 0x016B1B 05:EB0B: 04        .byte $04   ; 
- D 3 - I - 0x016B1C 05:EB0C: 1C        .byte $1C   ; 
- D 3 - I - 0x016B1D 05:EB0D: 10        .byte $10   ; 
- D 3 - I - 0x016B1E 05:EB0E: 1E        .byte $1E   ; 
- D 3 - I - 0x016B1F 05:EB0F: 10        .byte $10   ; 
- D 3 - I - 0x016B20 05:EB10: 1A        .byte $1A   ; 
- D 3 - I - 0x016B21 05:EB11: 10        .byte $10   ; 
- D 3 - I - 0x016B22 05:EB12: 93        .byte $93   ; 
- D 3 - I - 0x016B23 05:EB13: FF        .byte $FF   ; 
- D 3 - I - 0x016B24 05:EB14: 15        .byte $15   ; 
- D 3 - I - 0x016B25 05:EB15: 60        .byte $60   ; 
- D 3 - I - 0x016B26 05:EB16: 12        .byte $12   ; 
- D 3 - I - 0x016B27 05:EB17: 20        .byte $20   ; 
- D 3 - I - 0x016B28 05:EB18: 02        .byte $02   ; 
- D 3 - I - 0x016B29 05:EB19: 20        .byte $20   ; 
- D 3 - I - 0x016B2A 05:EB1A: 86        .byte $86   ; 
- D 3 - I - 0x016B2B 05:EB1B: 00        .byte $00   ; 
- D 3 - I - 0x016B2C 05:EB1C: 88        .byte con_88_jmp
- D 3 - I - 0x016B2D 05:EB1D: 2B EB     .word loc_88_EB2B



_off018_EB1F_06:
- D 3 - I - 0x016B2F 05:EB1F: 60        .byte $60   ; 
- D 3 - I - 0x016B30 05:EB20: 05        .byte $05   ; 
- D 3 - I - 0x016B31 05:EB21: 89        .byte $89   ; 
- D 3 - I - 0x016B32 05:EB22: 15        .byte $15   ; 
- D 3 - I - 0x016B33 05:EB23: 0F        .byte $0F   ; 
- D 3 - I - 0x016B34 05:EB24: 01        .byte $01   ; 
- D 3 - I - 0x016B35 05:EB25: 00        .byte $00   ; 
- D 3 - I - 0x016B36 05:EB26: 05        .byte $05   ; 
- D 3 - I - 0x016B37 05:EB27: 00        .byte $00   ; 
- D 3 - I - 0x016B38 05:EB28: 08        .byte $08   ; 
- D 3 - I - 0x016B39 05:EB29: FF        .byte $FF   ; 
- D 3 - I - 0x016B3A 05:EB2A: FF        .byte $FF   ; 



loc_88_EB2B:
- D 3 - I - 0x016B3B 05:EB2B: 8E        .byte $8E   ; 
- D 3 - I - 0x016B3C 05:EB2C: B0        .byte $B0   ; 
- D 3 - I - 0x016B3D 05:EB2D: 94        .byte $94   ; 
- D 3 - I - 0x016B3E 05:EB2E: 01        .byte $01   ; 
- D 3 - I - 0x016B3F 05:EB2F: 93        .byte $93   ; 
- D 3 - I - 0x016B40 05:EB30: FF        .byte $FF   ; 
- D 3 - I - 0x016B41 05:EB31: 80        .byte $80   ; 
- D 3 - I - 0x016B42 05:EB32: 02        .byte $02   ; 
- D 3 - I - 0x016B43 05:EB33: 82        .byte $82   ; 
- D 3 - I - 0x016B44 05:EB34: 03        .byte $03   ; 
- D 3 - I - 0x016B45 05:EB35: 8A        .byte $8A   ; 
- D 3 - I - 0x016B46 05:EB36: 40        .byte $40   ; 
- D 3 - I - 0x016B47 05:EB37: 00        .byte $00   ; 
- D 3 - I - 0x016B48 05:EB38: 02        .byte $02   ; 
- D 3 - I - 0x016B49 05:EB39: 8B        .byte $8B   ; 
- D 3 - I - 0x016B4A 05:EB3A: 01        .byte $01   ; 
- D 3 - I - 0x016B4B 05:EB3B: 8C        .byte $8C   ; 
- D 3 - I - 0x016B4C 05:EB3C: 0C        .byte $0C   ; 
- D 3 - I - 0x016B4D 05:EB3D: 02        .byte $02   ; 
- D 3 - I - 0x016B4E 05:EB3E: 01        .byte $01   ; 
- D 3 - I - 0x016B4F 05:EB3F: 1C        .byte $1C   ; 
- D 3 - I - 0x016B50 05:EB40: 20        .byte $20   ; 
- D 3 - I - 0x016B51 05:EB41: 23        .byte $23   ; 
- D 3 - I - 0x016B52 05:EB42: 28        .byte $28   ; 
- D 3 - I - 0x016B53 05:EB43: 2A        .byte $2A   ; 
- D 3 - I - 0x016B54 05:EB44: 2F        .byte $2F   ; 
- D 3 - I - 0x016B55 05:EB45: 34        .byte $34   ; 
- D 3 - I - 0x016B56 05:EB46: 36        .byte $36   ; 
- D 3 - I - 0x016B57 05:EB47: 3B        .byte $3B   ; 
- D 3 - I - 0x016B58 05:EB48: 38        .byte $38   ; 
- D 3 - I - 0x016B59 05:EB49: 36        .byte $36   ; 
- D 3 - I - 0x016B5A 05:EB4A: 2F        .byte $2F   ; 
- D 3 - I - 0x016B5B 05:EB4B: 2C        .byte $2C   ; 
- D 3 - I - 0x016B5C 05:EB4C: 28        .byte $28   ; 
- D 3 - I - 0x016B5D 05:EB4D: 23        .byte $23   ; 
- D 3 - I - 0x016B5E 05:EB4E: 1E        .byte $1E   ; 
- D 3 - I - 0x016B5F 05:EB4F: 1C        .byte $1C   ; 
- D 3 - I - 0x016B60 05:EB50: 21        .byte $21   ; 
- D 3 - I - 0x016B61 05:EB51: 25        .byte $25   ; 
- D 3 - I - 0x016B62 05:EB52: 28        .byte $28   ; 
- D 3 - I - 0x016B63 05:EB53: 2D        .byte $2D   ; 
- D 3 - I - 0x016B64 05:EB54: 31        .byte $31   ; 
- D 3 - I - 0x016B65 05:EB55: 34        .byte $34   ; 
- D 3 - I - 0x016B66 05:EB56: 39        .byte $39   ; 
- D 3 - I - 0x016B67 05:EB57: 3D        .byte $3D   ; 
- D 3 - I - 0x016B68 05:EB58: 39        .byte $39   ; 
- D 3 - I - 0x016B69 05:EB59: 34        .byte $34   ; 
- D 3 - I - 0x016B6A 05:EB5A: 31        .byte $31   ; 
- D 3 - I - 0x016B6B 05:EB5B: 2D        .byte $2D   ; 
- D 3 - I - 0x016B6C 05:EB5C: 28        .byte $28   ; 
- D 3 - I - 0x016B6D 05:EB5D: 25        .byte $25   ; 
- D 3 - I - 0x016B6E 05:EB5E: 21        .byte $21   ; 
- D 3 - I - 0x016B6F 05:EB5F: 92        .byte con_92_loop, $08
- D 3 - I - 0x016B71 05:EB61: 76 FA     .word off_92_FA76
- D 3 - I - 0x016B73 05:EB63: 8B        .byte $8B   ; 
- D 3 - I - 0x016B74 05:EB64: FF        .byte $FF   ; 
- D 3 - I - 0x016B75 05:EB65: 8E        .byte $8E   ; 
- D 3 - I - 0x016B76 05:EB66: F0        .byte $F0   ; 
- D 3 - I - 0x016B77 05:EB67: 82        .byte $82   ; 
- D 3 - I - 0x016B78 05:EB68: 08        .byte $08   ; 
- D 3 - I - 0x016B79 05:EB69: 8C        .byte $8C   ; 
- D 3 - I - 0x016B7A 05:EB6A: 0C        .byte $0C   ; 
- D 3 - I - 0x016B7B 05:EB6B: 04        .byte $04   ; 
- D 3 - I - 0x016B7C 05:EB6C: 04        .byte $04   ; 
- D 3 - I - 0x016B7D 05:EB6D: 31        .byte $31   ; 
- D 3 - I - 0x016B7E 05:EB6E: 8B        .byte $8B   ; 
- D 3 - I - 0x016B7F 05:EB6F: 00        .byte $00   ; 
- D 3 - I - 0x016B80 05:EB70: 2D        .byte $2D   ; 
- D 3 - I - 0x016B81 05:EB71: 2C        .byte $2C   ; 
- D 3 - I - 0x016B82 05:EB72: 28        .byte $28   ; 
- D 3 - I - 0x016B83 05:EB73: 2C        .byte $2C   ; 
- D 3 - I - 0x016B84 05:EB74: 2D        .byte $2D   ; 
- D 3 - I - 0x016B85 05:EB75: 31        .byte $31   ; 
- D 3 - I - 0x016B86 05:EB76: 2D        .byte $2D   ; 
- D 3 - I - 0x016B87 05:EB77: 2C        .byte $2C   ; 
- D 3 - I - 0x016B88 05:EB78: 28        .byte $28   ; 
- D 3 - I - 0x016B89 05:EB79: 2C        .byte $2C   ; 
- D 3 - I - 0x016B8A 05:EB7A: 2D        .byte $2D   ; 
- D 3 - I - 0x016B8B 05:EB7B: 8E        .byte $8E   ; 
- D 3 - I - 0x016B8C 05:EB7C: B0        .byte $B0   ; 
- D 3 - I - 0x016B8D 05:EB7D: 82        .byte $82   ; 
- D 3 - I - 0x016B8E 05:EB7E: 03        .byte $03   ; 
- D 3 - I - 0x016B8F 05:EB7F: 8C        .byte $8C   ; 
- D 3 - I - 0x016B90 05:EB80: 0C        .byte $0C   ; 
- D 3 - I - 0x016B91 05:EB81: 02        .byte $02   ; 
- D 3 - I - 0x016B92 05:EB82: 01        .byte $01   ; 
- D 3 - I - 0x016B93 05:EB83: 8B        .byte $8B   ; 
- D 3 - I - 0x016B94 05:EB84: 01        .byte $01   ; 
- D 3 - I - 0x016B95 05:EB85: 8A        .byte $8A   ; 
- D 3 - I - 0x016B96 05:EB86: 40        .byte $40   ; 
- D 3 - I - 0x016B97 05:EB87: 00        .byte $00   ; 
- D 3 - I - 0x016B98 05:EB88: 02        .byte $02   ; 
- D 3 - I - 0x016B99 05:EB89: 1C        .byte $1C   ; 
- D 3 - I - 0x016B9A 05:EB8A: 1E        .byte $1E   ; 
- D 3 - I - 0x016B9B 05:EB8B: 23        .byte $23   ; 
- D 3 - I - 0x016B9C 05:EB8C: 28        .byte $28   ; 
- D 3 - I - 0x016B9D 05:EB8D: 2C        .byte $2C   ; 
- D 3 - I - 0x016B9E 05:EB8E: 2F        .byte $2F   ; 
- D 3 - I - 0x016B9F 05:EB8F: 36        .byte $36   ; 
- D 3 - I - 0x016BA0 05:EB90: 38        .byte $38   ; 
- D 3 - I - 0x016BA1 05:EB91: 3B        .byte $3B   ; 
- D 3 - I - 0x016BA2 05:EB92: 38        .byte $38   ; 
- D 3 - I - 0x016BA3 05:EB93: 34        .byte $34   ; 
- D 3 - I - 0x016BA4 05:EB94: 2F        .byte $2F   ; 
- D 3 - I - 0x016BA5 05:EB95: 2C        .byte $2C   ; 
- D 3 - I - 0x016BA6 05:EB96: 28        .byte $28   ; 
- D 3 - I - 0x016BA7 05:EB97: 23        .byte $23   ; 
- D 3 - I - 0x016BA8 05:EB98: 20        .byte $20   ; 
- D 3 - I - 0x016BA9 05:EB99: 1A        .byte $1A   ; 
- D 3 - I - 0x016BAA 05:EB9A: 1F        .byte $1F   ; 
- D 3 - I - 0x016BAB 05:EB9B: 23        .byte $23   ; 
- D 3 - I - 0x016BAC 05:EB9C: 26        .byte $26   ; 
- D 3 - I - 0x016BAD 05:EB9D: 2B        .byte $2B   ; 
- D 3 - I - 0x016BAE 05:EB9E: 2F        .byte $2F   ; 
- D 3 - I - 0x016BAF 05:EB9F: 32        .byte $32   ; 
- D 3 - I - 0x016BB0 05:EBA0: 37        .byte $37   ; 
- D 3 - I - 0x016BB1 05:EBA1: 3B        .byte $3B   ; 
- D 3 - I - 0x016BB2 05:EBA2: 37        .byte $37   ; 
- D 3 - I - 0x016BB3 05:EBA3: 32        .byte $32   ; 
- D 3 - I - 0x016BB4 05:EBA4: 2F        .byte $2F   ; 
- D 3 - I - 0x016BB5 05:EBA5: 2B        .byte $2B   ; 
- D 3 - I - 0x016BB6 05:EBA6: 26        .byte $26   ; 
- D 3 - I - 0x016BB7 05:EBA7: 23        .byte $23   ; 
- D 3 - I - 0x016BB8 05:EBA8: 1F        .byte $1F   ; 
- D 3 - I - 0x016BB9 05:EBA9: 8C        .byte $8C   ; 
- D 3 - I - 0x016BBA 05:EBAA: 13        .byte $13   ; 
- D 3 - I - 0x016BBB 05:EBAB: 01        .byte $01   ; 
- D 3 - I - 0x016BBC 05:EBAC: FF        .byte $FF   ; 
- D 3 - I - 0x016BBD 05:EBAD: 82        .byte $82   ; 
- D 3 - I - 0x016BBE 05:EBAE: 00        .byte $00   ; 
- D 3 - I - 0x016BBF 05:EBAF: 94        .byte $94   ; 
- D 3 - I - 0x016BC0 05:EBB0: 01        .byte $01   ; 
- D 3 - I - 0x016BC1 05:EBB1: 87        .byte $87   ; 
- D 3 - I - 0x016BC2 05:EBB2: 05        .byte $05   ; 
- D 3 - I - 0x016BC3 05:EBB3: 92        .byte con_92_loop, $01
- D 3 - I - 0x016BC5 05:EBB5: 63 FA     .word off_92_FA63
- D 3 - I - 0x016BC7 05:EBB7: 8B        .byte $8B   ; 
- D 3 - I - 0x016BC8 05:EBB8: FF        .byte $FF   ; 
- D 3 - I - 0x016BC9 05:EBB9: 30        .byte $30   ; 
- D 3 - I - 0x016BCA 05:EBBA: 0C        .byte $0C   ; 
- D 3 - I - 0x016BCB 05:EBBB: 87        .byte $87   ; 
- D 3 - I - 0x016BCC 05:EBBC: 00        .byte $00   ; 
- D 3 - I - 0x016BCD 05:EBBD: 2D        .byte $2D   ; 
- D 3 - I - 0x016BCE 05:EBBE: 04        .byte $04   ; 
- D 3 - I - 0x016BCF 05:EBBF: 2F        .byte $2F   ; 
- D 3 - I - 0x016BD0 05:EBC0: 04        .byte $04   ; 
- D 3 - I - 0x016BD1 05:EBC1: 2D        .byte $2D   ; 
- D 3 - I - 0x016BD2 05:EBC2: 04        .byte $04   ; 
- D 3 - I - 0x016BD3 05:EBC3: 87        .byte $87   ; 
- D 3 - I - 0x016BD4 05:EBC4: 08        .byte $08   ; 
- D 3 - I - 0x016BD5 05:EBC5: 2B        .byte $2B   ; 
- D 3 - I - 0x016BD6 05:EBC6: 0C        .byte $0C   ; 
- D 3 - I - 0x016BD7 05:EBC7: 87        .byte $87   ; 
- D 3 - I - 0x016BD8 05:EBC8: 00        .byte $00   ; 
- D 3 - I - 0x016BD9 05:EBC9: 2D        .byte $2D   ; 
- D 3 - I - 0x016BDA 05:EBCA: 0C        .byte $0C   ; 
- D 3 - I - 0x016BDB 05:EBCB: 2B        .byte $2B   ; 
- D 3 - I - 0x016BDC 05:EBCC: 04        .byte $04   ; 
- D 3 - I - 0x016BDD 05:EBCD: 2D        .byte $2D   ; 
- D 3 - I - 0x016BDE 05:EBCE: 04        .byte $04   ; 
- D 3 - I - 0x016BDF 05:EBCF: 2B        .byte $2B   ; 
- D 3 - I - 0x016BE0 05:EBD0: 04        .byte $04   ; 
- D 3 - I - 0x016BE1 05:EBD1: 28        .byte $28   ; 
- D 3 - I - 0x016BE2 05:EBD2: 0C        .byte $0C   ; 
- D 3 - I - 0x016BE3 05:EBD3: 2B        .byte $2B   ; 
- D 3 - I - 0x016BE4 05:EBD4: 0C        .byte $0C   ; 
- D 3 - I - 0x016BE5 05:EBD5: 93        .byte $93   ; 
- D 3 - I - 0x016BE6 05:EBD6: 07        .byte $07   ; 
- D 3 - I - 0x016BE7 05:EBD7: 2A        .byte $2A   ; 
- D 3 - I - 0x016BE8 05:EBD8: 0C        .byte $0C   ; 
- D 3 - I - 0x016BE9 05:EBD9: 93        .byte $93   ; 
- D 3 - I - 0x016BEA 05:EBDA: FF        .byte $FF   ; 
- D 3 - I - 0x016BEB 05:EBDB: 8C        .byte $8C   ; 
- D 3 - I - 0x016BEC 05:EBDC: 00        .byte $00   ; 
- D 3 - I - 0x016BED 05:EBDD: 00        .byte $00   ; 
- D 3 - I - 0x016BEE 05:EBDE: 00        .byte $00   ; 
- D 3 - I - 0x016BEF 05:EBDF: 81        .byte $81   ; 
- D 3 - I - 0x016BF0 05:EBE0: 92        .byte con_92_loop, $01
- D 3 - I - 0x016BF2 05:EBE2: 6A FA     .word off_92_FA6A
- D 3 - I - 0x016BF4 05:EBE4: 26        .byte $26   ; 
- D 3 - I - 0x016BF5 05:EBE5: 0C        .byte $0C   ; 
- D 3 - I - 0x016BF6 05:EBE6: 2A        .byte $2A   ; 
- D 3 - I - 0x016BF7 05:EBE7: 0C        .byte $0C   ; 
- D 3 - I - 0x016BF8 05:EBE8: 28        .byte $28   ; 
- D 3 - I - 0x016BF9 05:EBE9: 04        .byte $04   ; 
- D 3 - I - 0x016BFA 05:EBEA: 2A        .byte $2A   ; 
- D 3 - I - 0x016BFB 05:EBEB: 04        .byte $04   ; 
- D 3 - I - 0x016BFC 05:EBEC: 28        .byte $28   ; 
- D 3 - I - 0x016BFD 05:EBED: 04        .byte $04   ; 
- D 3 - I - 0x016BFE 05:EBEE: 25        .byte $25   ; 
- D 3 - I - 0x016BFF 05:EBEF: 0C        .byte $0C   ; 
- D 3 - I - 0x016C00 05:EBF0: 28        .byte $28   ; 
- D 3 - I - 0x016C01 05:EBF1: 0C        .byte $0C   ; 
- D 3 - I - 0x016C02 05:EBF2: 26        .byte $26   ; 
- D 3 - I - 0x016C03 05:EBF3: 04        .byte $04   ; 
- D 3 - I - 0x016C04 05:EBF4: 28        .byte $28   ; 
- D 3 - I - 0x016C05 05:EBF5: 04        .byte $04   ; 
- D 3 - I - 0x016C06 05:EBF6: 26        .byte $26   ; 
- D 3 - I - 0x016C07 05:EBF7: 04        .byte $04   ; 
- D 3 - I - 0x016C08 05:EBF8: 23        .byte $23   ; 
- D 3 - I - 0x016C09 05:EBF9: 0C        .byte $0C   ; 
- D 3 - I - 0x016C0A 05:EBFA: 26        .byte $26   ; 
- D 3 - I - 0x016C0B 05:EBFB: 0C        .byte $0C   ; 
- D 3 - I - 0x016C0C 05:EBFC: 25        .byte $25   ; 
- D 3 - I - 0x016C0D 05:EBFD: 04        .byte $04   ; 
- D 3 - I - 0x016C0E 05:EBFE: 26        .byte $26   ; 
- D 3 - I - 0x016C0F 05:EBFF: 04        .byte $04   ; 
- D 3 - I - 0x016C10 05:EC00: 25        .byte $25   ; 
- D 3 - I - 0x016C11 05:EC01: 04        .byte $04   ; 
- D 3 - I - 0x016C12 05:EC02: 21        .byte $21   ; 
- D 3 - I - 0x016C13 05:EC03: 0C        .byte $0C   ; 
- D 3 - I - 0x016C14 05:EC04: 25        .byte $25   ; 
- D 3 - I - 0x016C15 05:EC05: 0C        .byte $0C   ; 
- D 3 - I - 0x016C16 05:EC06: 23        .byte $23   ; 
- D 3 - I - 0x016C17 05:EC07: 04        .byte $04   ; 
- D 3 - I - 0x016C18 05:EC08: 25        .byte $25   ; 
- D 3 - I - 0x016C19 05:EC09: 04        .byte $04   ; 
- D 3 - I - 0x016C1A 05:EC0A: 23        .byte $23   ; 
- D 3 - I - 0x016C1B 05:EC0B: 04        .byte $04   ; 
- D 3 - I - 0x016C1C 05:EC0C: 1F        .byte $1F   ; 
- D 3 - I - 0x016C1D 05:EC0D: 0C        .byte $0C   ; 
- D 3 - I - 0x016C1E 05:EC0E: 93        .byte $93   ; 
- D 3 - I - 0x016C1F 05:EC0F: 06        .byte $06   ; 
- D 3 - I - 0x016C20 05:EC10: 23        .byte $23   ; 
- D 3 - I - 0x016C21 05:EC11: 0C        .byte $0C   ; 
- D 3 - I - 0x016C22 05:EC12: 93        .byte $93   ; 
- D 3 - I - 0x016C23 05:EC13: FF        .byte $FF   ; 
- D 3 - I - 0x016C24 05:EC14: 21        .byte $21   ; 
- D 3 - I - 0x016C25 05:EC15: 04        .byte $04   ; 
- D 3 - I - 0x016C26 05:EC16: 23        .byte $23   ; 
- D 3 - I - 0x016C27 05:EC17: 04        .byte $04   ; 
- D 3 - I - 0x016C28 05:EC18: 21        .byte $21   ; 
- D 3 - I - 0x016C29 05:EC19: 04        .byte $04   ; 
- D 3 - I - 0x016C2A 05:EC1A: 1E        .byte $1E   ; 
- D 3 - I - 0x016C2B 05:EC1B: 0C        .byte $0C   ; 
- D 3 - I - 0x016C2C 05:EC1C: 92        .byte con_92_loop, $01
- D 3 - I - 0x016C2E 05:EC1E: 71 FA     .word off_92_FA71
- D 3 - I - 0x016C30 05:EC20: 94        .byte $94   ; 
- D 3 - I - 0x016C31 05:EC21: FF        .byte $FF   ; 
- D 3 - I - 0x016C32 05:EC22: 80        .byte $80   ; 
- D 3 - I - 0x016C33 05:EC23: 04        .byte $04   ; 
- D 3 - I - 0x016C34 05:EC24: 1C        .byte $1C   ; 
- D 3 - I - 0x016C35 05:EC25: 08        .byte $08   ; 
- D 3 - I - 0x016C36 05:EC26: 1E        .byte $1E   ; 
- D 3 - I - 0x016C37 05:EC27: 08        .byte $08   ; 
- D 3 - I - 0x016C38 05:EC28: 93        .byte $93   ; 
- D 3 - I - 0x016C39 05:EC29: 06        .byte $06   ; 
- D 3 - I - 0x016C3A 05:EC2A: 1F        .byte $1F   ; 
- D 3 - I - 0x016C3B 05:EC2B: 08        .byte $08   ; 
- D 3 - I - 0x016C3C 05:EC2C: 93        .byte $93   ; 
- D 3 - I - 0x016C3D 05:EC2D: FF        .byte $FF   ; 
- D 3 - I - 0x016C3E 05:EC2E: 23        .byte $23   ; 
- D 3 - I - 0x016C3F 05:EC2F: 08        .byte $08   ; 
- D 3 - I - 0x016C40 05:EC30: 25        .byte $25   ; 
- D 3 - I - 0x016C41 05:EC31: 08        .byte $08   ; 
- D 3 - I - 0x016C42 05:EC32: 93        .byte $93   ; 
- D 3 - I - 0x016C43 05:EC33: 06        .byte $06   ; 
- D 3 - I - 0x016C44 05:EC34: 26        .byte $26   ; 
- D 3 - I - 0x016C45 05:EC35: 08        .byte $08   ; 
- D 3 - I - 0x016C46 05:EC36: 93        .byte $93   ; 
- D 3 - I - 0x016C47 05:EC37: FF        .byte $FF   ; 
- D 3 - I - 0x016C48 05:EC38: 28        .byte $28   ; 
- D 3 - I - 0x016C49 05:EC39: 08        .byte $08   ; 
- D 3 - I - 0x016C4A 05:EC3A: 26        .byte $26   ; 
- D 3 - I - 0x016C4B 05:EC3B: 03        .byte $03   ; 
- D 3 - I - 0x016C4C 05:EC3C: 28        .byte $28   ; 
- D 3 - I - 0x016C4D 05:EC3D: 02        .byte $02   ; 
- D 3 - I - 0x016C4E 05:EC3E: 26        .byte $26   ; 
- D 3 - I - 0x016C4F 05:EC3F: 03        .byte $03   ; 
- D 3 - I - 0x016C50 05:EC40: 93        .byte $93   ; 
- D 3 - I - 0x016C51 05:EC41: 06        .byte $06   ; 
- D 3 - I - 0x016C52 05:EC42: 23        .byte $23   ; 
- D 3 - I - 0x016C53 05:EC43: 08        .byte $08   ; 
- D 3 - I - 0x016C54 05:EC44: 93        .byte $93   ; 
- D 3 - I - 0x016C55 05:EC45: FF        .byte $FF   ; 
- D 3 - I - 0x016C56 05:EC46: 26        .byte $26   ; 
- D 3 - I - 0x016C57 05:EC47: 08        .byte $08   ; 
- D 3 - I - 0x016C58 05:EC48: 25        .byte $25   ; 
- D 3 - I - 0x016C59 05:EC49: 03        .byte $03   ; 
- D 3 - I - 0x016C5A 05:EC4A: 26        .byte $26   ; 
- D 3 - I - 0x016C5B 05:EC4B: 02        .byte $02   ; 
- D 3 - I - 0x016C5C 05:EC4C: 25        .byte $25   ; 
- D 3 - I - 0x016C5D 05:EC4D: 03        .byte $03   ; 
- D 3 - I - 0x016C5E 05:EC4E: 93        .byte $93   ; 
- D 3 - I - 0x016C5F 05:EC4F: 06        .byte $06   ; 
- D 3 - I - 0x016C60 05:EC50: 21        .byte $21   ; 
- D 3 - I - 0x016C61 05:EC51: 08        .byte $08   ; 
- D 3 - I - 0x016C62 05:EC52: 93        .byte $93   ; 
- D 3 - I - 0x016C63 05:EC53: FF        .byte $FF   ; 
- D 3 - I - 0x016C64 05:EC54: 23        .byte $23   ; 
- D 3 - I - 0x016C65 05:EC55: 08        .byte $08   ; 
- D 3 - I - 0x016C66 05:EC56: 25        .byte $25   ; 
- D 3 - I - 0x016C67 05:EC57: 08        .byte $08   ; 
- D 3 - I - 0x016C68 05:EC58: 93        .byte $93   ; 
- D 3 - I - 0x016C69 05:EC59: 06        .byte $06   ; 
- D 3 - I - 0x016C6A 05:EC5A: 26        .byte $26   ; 
- D 3 - I - 0x016C6B 05:EC5B: 08        .byte $08   ; 
- D 3 - I - 0x016C6C 05:EC5C: 93        .byte $93   ; 
- D 3 - I - 0x016C6D 05:EC5D: FF        .byte $FF   ; 
- D 3 - I - 0x016C6E 05:EC5E: 26        .byte $26   ; 
- D 3 - I - 0x016C6F 05:EC5F: 08        .byte $08   ; 
- D 3 - I - 0x016C70 05:EC60: 25        .byte $25   ; 
- D 3 - I - 0x016C71 05:EC61: 08        .byte $08   ; 
- D 3 - I - 0x016C72 05:EC62: 93        .byte $93   ; 
- D 3 - I - 0x016C73 05:EC63: 05        .byte $05   ; 
- D 3 - I - 0x016C74 05:EC64: 23        .byte $23   ; 
- D 3 - I - 0x016C75 05:EC65: 08        .byte $08   ; 
- D 3 - I - 0x016C76 05:EC66: 93        .byte $93   ; 
- D 3 - I - 0x016C77 05:EC67: FF        .byte $FF   ; 
- D 3 - I - 0x016C78 05:EC68: 2F        .byte $2F   ; 
- D 3 - I - 0x016C79 05:EC69: 01        .byte $01   ; 
- D 3 - I - 0x016C7A 05:EC6A: 2D        .byte $2D   ; 
- D 3 - I - 0x016C7B 05:EC6B: 07        .byte $07   ; 
- D 3 - I - 0x016C7C 05:EC6C: 28        .byte $28   ; 
- D 3 - I - 0x016C7D 05:EC6D: 08        .byte $08   ; 
- D 3 - I - 0x016C7E 05:EC6E: 26        .byte $26   ; 
- D 3 - I - 0x016C7F 05:EC6F: 07        .byte $07   ; 
- D 3 - I - 0x016C80 05:EC70: 28        .byte $28   ; 
- D 3 - I - 0x016C81 05:EC71: 01        .byte $01   ; 
- D 3 - I - 0x016C82 05:EC72: 25        .byte $25   ; 
- D 3 - I - 0x016C83 05:EC73: 08        .byte $08   ; 
- D 3 - I - 0x016C84 05:EC74: 23        .byte $23   ; 
- D 3 - I - 0x016C85 05:EC75: 08        .byte $08   ; 
- D 3 - I - 0x016C86 05:EC76: 21        .byte $21   ; 
- D 3 - I - 0x016C87 05:EC77: 08        .byte $08   ; 
- D 3 - I - 0x016C88 05:EC78: 81        .byte $81   ; 
- D 3 - I - 0x016C89 05:EC79: 8E        .byte $8E   ; 
- D 3 - I - 0x016C8A 05:EC7A: 30        .byte $30   ; 
- D 3 - I - 0x016C8B 05:EC7B: 8B        .byte $8B   ; 
- D 3 - I - 0x016C8C 05:EC7C: 01        .byte $01   ; 
- D 3 - I - 0x016C8D 05:EC7D: 8A        .byte $8A   ; 
- D 3 - I - 0x016C8E 05:EC7E: 40        .byte $40   ; 
- D 3 - I - 0x016C8F 05:EC7F: 05        .byte $05   ; 
- D 3 - I - 0x016C90 05:EC80: 01        .byte $01   ; 
- D 3 - I - 0x016C91 05:EC81: 80        .byte $80   ; 
- D 3 - I - 0x016C92 05:EC82: 04        .byte $04   ; 
- D 3 - I - 0x016C93 05:EC83: 8C        .byte $8C   ; 
- D 3 - I - 0x016C94 05:EC84: 08        .byte $08   ; 
- D 3 - I - 0x016C95 05:EC85: 03        .byte $03   ; 
- D 3 - I - 0x016C96 05:EC86: 03        .byte $03   ; 
- D 3 - I - 0x016C97 05:EC87: 12        .byte $12   ; 
- D 3 - I - 0x016C98 05:EC88: 10        .byte $10   ; 
- D 3 - I - 0x016C99 05:EC89: 8C        .byte $8C   ; 
- D 3 - I - 0x016C9A 05:EC8A: 09        .byte $09   ; 
- D 3 - I - 0x016C9B 05:EC8B: 03        .byte $03   ; 
- D 3 - I - 0x016C9C 05:EC8C: 03        .byte $03   ; 
- D 3 - I - 0x016C9D 05:EC8D: 10        .byte $10   ; 
- D 3 - I - 0x016C9E 05:EC8E: 08        .byte $08   ; 
- D 3 - I - 0x016C9F 05:EC8F: 8C        .byte $8C   ; 
- D 3 - I - 0x016CA0 05:EC90: 08        .byte $08   ; 
- D 3 - I - 0x016CA1 05:EC91: 03        .byte $03   ; 
- D 3 - I - 0x016CA2 05:EC92: 03        .byte $03   ; 
- D 3 - I - 0x016CA3 05:EC93: 12        .byte $12   ; 
- D 3 - I - 0x016CA4 05:EC94: 10        .byte $10   ; 
- D 3 - I - 0x016CA5 05:EC95: 14        .byte $14   ; 
- D 3 - I - 0x016CA6 05:EC96: 08        .byte $08   ; 
- D 3 - I - 0x016CA7 05:EC97: 8C        .byte $8C   ; 
- D 3 - I - 0x016CA8 05:EC98: 09        .byte $09   ; 
- D 3 - I - 0x016CA9 05:EC99: 03        .byte $03   ; 
- D 3 - I - 0x016CAA 05:EC9A: 03        .byte $03   ; 
- D 3 - I - 0x016CAB 05:EC9B: 15        .byte $15   ; 
- D 3 - I - 0x016CAC 05:EC9C: 08        .byte $08   ; 
- D 3 - I - 0x016CAD 05:EC9D: 8C        .byte $8C   ; 
- D 3 - I - 0x016CAE 05:EC9E: 08        .byte $08   ; 
- D 3 - I - 0x016CAF 05:EC9F: 03        .byte $03   ; 
- D 3 - I - 0x016CB0 05:ECA0: 03        .byte $03   ; 
- D 3 - I - 0x016CB1 05:ECA1: 14        .byte $14   ; 
- D 3 - I - 0x016CB2 05:ECA2: 08        .byte $08   ; 
- D 3 - I - 0x016CB3 05:ECA3: 12        .byte $12   ; 
- D 3 - I - 0x016CB4 05:ECA4: 10        .byte $10   ; 
- D 3 - I - 0x016CB5 05:ECA5: 8C        .byte $8C   ; 
- D 3 - I - 0x016CB6 05:ECA6: 09        .byte $09   ; 
- D 3 - I - 0x016CB7 05:ECA7: 03        .byte $03   ; 
- D 3 - I - 0x016CB8 05:ECA8: 03        .byte $03   ; 
- D 3 - I - 0x016CB9 05:ECA9: 10        .byte $10   ; 
- D 3 - I - 0x016CBA 05:ECAA: 10        .byte $10   ; 
- D 3 - I - 0x016CBB 05:ECAB: 8C        .byte $8C   ; 
- D 3 - I - 0x016CBC 05:ECAC: 08        .byte $08   ; 
- D 3 - I - 0x016CBD 05:ECAD: 03        .byte $03   ; 
- D 3 - I - 0x016CBE 05:ECAE: 03        .byte $03   ; 
- D 3 - I - 0x016CBF 05:ECAF: 12        .byte $12   ; 
- D 3 - I - 0x016CC0 05:ECB0: 18        .byte $18   ; 
- D 3 - I - 0x016CC1 05:ECB1: 8C        .byte $8C   ; 
- D 3 - I - 0x016CC2 05:ECB2: 09        .byte $09   ; 
- D 3 - I - 0x016CC3 05:ECB3: 03        .byte $03   ; 
- D 3 - I - 0x016CC4 05:ECB4: 03        .byte $03   ; 
- D 3 - I - 0x016CC5 05:ECB5: 17        .byte $17   ; 
- D 3 - I - 0x016CC6 05:ECB6: 18        .byte $18   ; 
- D 3 - I - 0x016CC7 05:ECB7: 15        .byte $15   ; 
- D 3 - I - 0x016CC8 05:ECB8: 18        .byte $18   ; 
- D 3 - I - 0x016CC9 05:ECB9: 8C        .byte $8C   ; 
- D 3 - I - 0x016CCA 05:ECBA: 08        .byte $08   ; 
- D 3 - I - 0x016CCB 05:ECBB: 03        .byte $03   ; 
- D 3 - I - 0x016CCC 05:ECBC: 03        .byte $03   ; 
- D 3 - I - 0x016CCD 05:ECBD: 14        .byte $14   ; 
- D 3 - I - 0x016CCE 05:ECBE: 18        .byte $18   ; 
- D 3 - I - 0x016CCF 05:ECBF: 81        .byte $81   ; 
- D 3 - I - 0x016CD0 05:ECC0: 8C        .byte $8C   ; 
- D 3 - I - 0x016CD1 05:ECC1: 00        .byte $00   ; 
- D 3 - I - 0x016CD2 05:ECC2: 00        .byte $00   ; 
- D 3 - I - 0x016CD3 05:ECC3: 00        .byte $00   ; 
- D 3 - I - 0x016CD4 05:ECC4: 82        .byte $82   ; 
- D 3 - I - 0x016CD5 05:ECC5: 02        .byte $02   ; 
- D 3 - I - 0x016CD6 05:ECC6: 80        .byte $80   ; 
- D 3 - I - 0x016CD7 05:ECC7: 04        .byte $04   ; 
- D 3 - I - 0x016CD8 05:ECC8: 8A        .byte $8A   ; 
- D 3 - I - 0x016CD9 05:ECC9: 10        .byte $10   ; 
- D 3 - I - 0x016CDA 05:ECCA: F0        .byte $F0   ; 
- D 3 - I - 0x016CDB 05:ECCB: 00        .byte $00   ; 
- D 3 - I - 0x016CDC 05:ECCC: 86        .byte $86   ; 
- D 3 - I - 0x016CDD 05:ECCD: FB        .byte $FB   ; 
- D 3 - I - 0x016CDE 05:ECCE: 84        .byte con_84_jsr
- D 3 - I - 0x016CDF 05:ECCF: 91 FD     .word sub_84_FD91
- D 3 - I - 0x016CE1 05:ECD1: 8A        .byte $8A   ; 
- D 3 - I - 0x016CE2 05:ECD2: 30        .byte $30   ; 
- D 3 - I - 0x016CE3 05:ECD3: 00        .byte $00   ; 
- D 3 - I - 0x016CE4 05:ECD4: 02        .byte $02   ; 
- D 3 - I - 0x016CE5 05:ECD5: 86        .byte $86   ; 
- D 3 - I - 0x016CE6 05:ECD6: FE        .byte $FE   ; 
- D 3 - I - 0x016CE7 05:ECD7: 84        .byte con_84_jsr
- D 3 - I - 0x016CE8 05:ECD8: 91 FD     .word sub_84_FD91
- D 3 - I - 0x016CEA 05:ECDA: 86        .byte $86   ; 
- D 3 - I - 0x016CEB 05:ECDB: 00        .byte $00   ; 
- D 3 - I - 0x016CEC 05:ECDC: 84        .byte con_84_jsr
- D 3 - I - 0x016CED 05:ECDD: 91 FD     .word sub_84_FD91
- D 3 - I - 0x016CEF 05:ECDF: 8A        .byte $8A   ; 
- D 3 - I - 0x016CF0 05:ECE0: 40        .byte $40   ; 
- D 3 - I - 0x016CF1 05:ECE1: 03        .byte $03   ; 
- D 3 - I - 0x016CF2 05:ECE2: 01        .byte $01   ; 
- D 3 - I - 0x016CF3 05:ECE3: 86        .byte $86   ; 
- D 3 - I - 0x016CF4 05:ECE4: FE        .byte $FE   ; 
- D 3 - I - 0x016CF5 05:ECE5: 84        .byte con_84_jsr
- D 3 - I - 0x016CF6 05:ECE6: C9 FD     .word sub_84_FDC9
- D 3 - I - 0x016CF8 05:ECE8: 84        .byte con_84_jsr
- D 3 - I - 0x016CF9 05:ECE9: C9 FD     .word sub_84_FDC9
- D 3 - I - 0x016CFB 05:ECEB: 84        .byte con_84_jsr
- D 3 - I - 0x016CFC 05:ECEC: C9 FD     .word sub_84_FDC9
- D 3 - I - 0x016CFE 05:ECEE: 81        .byte $81   ; 
- D 3 - I - 0x016CFF 05:ECEF: 80        .byte $80   ; 
- D 3 - I - 0x016D00 05:ECF0: 04        .byte $04   ; 
- D 3 - I - 0x016D01 05:ECF1: 86        .byte $86   ; 
- D 3 - I - 0x016D02 05:ECF2: 02        .byte $02   ; 
- D 3 - I - 0x016D03 05:ECF3: 8A        .byte $8A   ; 
- D 3 - I - 0x016D04 05:ECF4: 20        .byte $20   ; 
- D 3 - I - 0x016D05 05:ECF5: 00        .byte $00   ; 
- D 3 - I - 0x016D06 05:ECF6: 02        .byte $02   ; 
- D 3 - I - 0x016D07 05:ECF7: 82        .byte $82   ; 
- D 3 - I - 0x016D08 05:ECF8: 02        .byte $02   ; 
- D 3 - I - 0x016D09 05:ECF9: 84        .byte con_84_jsr
- D 3 - I - 0x016D0A 05:ECFA: 91 FD     .word sub_84_FD91
- D 3 - I - 0x016D0C 05:ECFC: 86        .byte $86   ; 
- D 3 - I - 0x016D0D 05:ECFD: 03        .byte $03   ; 
- D 3 - I - 0x016D0E 05:ECFE: 8A        .byte $8A   ; 
- D 3 - I - 0x016D0F 05:ECFF: 90        .byte $90   ; 
- D 3 - I - 0x016D10 05:ED00: 00        .byte $00   ; 
- D 3 - I - 0x016D11 05:ED01: 01        .byte $01   ; 
- D 3 - I - 0x016D12 05:ED02: 82        .byte $82   ; 
- D 3 - I - 0x016D13 05:ED03: 01        .byte $01   ; 
- D 3 - I - 0x016D14 05:ED04: 84        .byte con_84_jsr
- D 3 - I - 0x016D15 05:ED05: EB FD     .word sub_84_FDEB
- D 3 - I - 0x016D17 05:ED07: 84        .byte con_84_jsr
- D 3 - I - 0x016D18 05:ED08: EB FD     .word sub_84_FDEB
- D 3 - I - 0x016D1A 05:ED0A: 84        .byte con_84_jsr
- D 3 - I - 0x016D1B 05:ED0B: D6 FD     .word sub_84_FDD6
- D 3 - I - 0x016D1D 05:ED0D: 84        .byte con_84_jsr
- D 3 - I - 0x016D1E 05:ED0E: D6 FD     .word sub_84_FDD6
- D 3 - I - 0x016D20 05:ED10: 81        .byte $81   ; 
- D 3 - I - 0x016D21 05:ED11: 8A        .byte $8A   ; 
- D 3 - I - 0x016D22 05:ED12: 10        .byte $10   ; 
- D 3 - I - 0x016D23 05:ED13: 00        .byte $00   ; 
- D 3 - I - 0x016D24 05:ED14: 02        .byte $02   ; 
- D 3 - I - 0x016D25 05:ED15: 82        .byte $82   ; 
- D 3 - I - 0x016D26 05:ED16: 10        .byte $10   ; 
- D 3 - I - 0x016D27 05:ED17: 23        .byte $23   ; 
- D 3 - I - 0x016D28 05:ED18: 82        .byte $82   ; 
- D 3 - I - 0x016D29 05:ED19: 01        .byte $01   ; 
- D 3 - I - 0x016D2A 05:ED1A: 8A        .byte $8A   ; 
- D 3 - I - 0x016D2B 05:ED1B: 90        .byte $90   ; 
- D 3 - I - 0x016D2C 05:ED1C: 00        .byte $00   ; 
- D 3 - I - 0x016D2D 05:ED1D: 01        .byte $01   ; 
- D 3 - I - 0x016D2E 05:ED1E: 84        .byte con_84_jsr
- D 3 - I - 0x016D2F 05:ED1F: EB FD     .word sub_84_FDEB
- D 3 - I - 0x016D31 05:ED21: 84        .byte con_84_jsr
- D 3 - I - 0x016D32 05:ED22: EB FD     .word sub_84_FDEB
- D 3 - I - 0x016D34 05:ED24: 84        .byte con_84_jsr
- D 3 - I - 0x016D35 05:ED25: D6 FD     .word sub_84_FDD6
- D 3 - I - 0x016D37 05:ED27: 82        .byte $82   ; 
- D 3 - I - 0x016D38 05:ED28: 00        .byte $00   ; 
- D 3 - I - 0x016D39 05:ED29: 86        .byte $86   ; 
- D 3 - I - 0x016D3A 05:ED2A: F4        .byte $F4   ; 
- D 3 - I - 0x016D3B 05:ED2B: 8E        .byte $8E   ; 
- D 3 - I - 0x016D3C 05:ED2C: B0        .byte $B0   ; 
- D 3 - I - 0x016D3D 05:ED2D: 8C        .byte $8C   ; 
- D 3 - I - 0x016D3E 05:ED2E: 00        .byte $00   ; 
- D 3 - I - 0x016D3F 05:ED2F: 00        .byte $00   ; 
- D 3 - I - 0x016D40 05:ED30: 00        .byte $00   ; 
- D 3 - I - 0x016D41 05:ED31: 92        .byte con_92_loop, $01
- D 3 - I - 0x016D43 05:ED33: 6A FA     .word off_92_FA6A
- D 3 - I - 0x016D45 05:ED35: 80        .byte $80   ; 
- D 3 - I - 0x016D46 05:ED36: 02        .byte $02   ; 
- D 3 - I - 0x016D47 05:ED37: 84        .byte con_84_jsr
- D 3 - I - 0x016D48 05:ED38: 17 FC     .word sub_84_FC17
- D 3 - I - 0x016D4A 05:ED3A: 81        .byte $81   ; 
- D 3 - I - 0x016D4B 05:ED3B: 8B        .byte $8B   ; 
- D 3 - I - 0x016D4C 05:ED3C: 01        .byte $01   ; 
- D 3 - I - 0x016D4D 05:ED3D: 8E        .byte $8E   ; 
- D 3 - I - 0x016D4E 05:ED3E: F0        .byte $F0   ; 
- D 3 - I - 0x016D4F 05:ED3F: 86        .byte $86   ; 
- D 3 - I - 0x016D50 05:ED40: 00        .byte $00   ; 
- D 3 - I - 0x016D51 05:ED41: 84        .byte con_84_jsr
- D 3 - I - 0x016D52 05:ED42: 59 FB     .word sub_84_FB59
- D 3 - I - 0x016D54 05:ED44: 86        .byte $86   ; 
- D 3 - I - 0x016D55 05:ED45: FE        .byte $FE   ; 
- D 3 - I - 0x016D56 05:ED46: 84        .byte con_84_jsr
- D 3 - I - 0x016D57 05:ED47: 59 FB     .word sub_84_FB59
- D 3 - I - 0x016D59 05:ED49: 86        .byte $86   ; 
- D 3 - I - 0x016D5A 05:ED4A: FD        .byte $FD   ; 
- D 3 - I - 0x016D5B 05:ED4B: 84        .byte con_84_jsr
- D 3 - I - 0x016D5C 05:ED4C: 59 FB     .word sub_84_FB59
- D 3 - I - 0x016D5E 05:ED4E: 86        .byte $86   ; 
- D 3 - I - 0x016D5F 05:ED4F: FB        .byte $FB   ; 
- D 3 - I - 0x016D60 05:ED50: 84        .byte con_84_jsr
- D 3 - I - 0x016D61 05:ED51: 59 FB     .word sub_84_FB59
- D 3 - I - 0x016D63 05:ED53: 8E        .byte $8E   ; 
- D 3 - I - 0x016D64 05:ED54: B0        .byte $B0   ; 
- D 3 - I - 0x016D65 05:ED55: 86        .byte $86   ; 
- D 3 - I - 0x016D66 05:ED56: 00        .byte $00   ; 
- D 3 - I - 0x016D67 05:ED57: 84        .byte con_84_jsr
- D 3 - I - 0x016D68 05:ED58: 72 FB     .word sub_84_FB72
- D 3 - I - 0x016D6A 05:ED5A: 86        .byte $86   ; 
- D 3 - I - 0x016D6B 05:ED5B: FE        .byte $FE   ; 
- D 3 - I - 0x016D6C 05:ED5C: 84        .byte con_84_jsr
- D 3 - I - 0x016D6D 05:ED5D: 72 FB     .word sub_84_FB72
- D 3 - I - 0x016D6F 05:ED5F: 86        .byte $86   ; 
- D 3 - I - 0x016D70 05:ED60: FD        .byte $FD   ; 
- D 3 - I - 0x016D71 05:ED61: 84        .byte con_84_jsr
- D 3 - I - 0x016D72 05:ED62: 72 FB     .word sub_84_FB72
- D 3 - I - 0x016D74 05:ED64: 86        .byte $86   ; 
- D 3 - I - 0x016D75 05:ED65: FB        .byte $FB   ; 
- D 3 - I - 0x016D76 05:ED66: 84        .byte con_84_jsr
- D 3 - I - 0x016D77 05:ED67: 72 FB     .word sub_84_FB72
- D 3 - I - 0x016D79 05:ED69: 8E        .byte $8E   ; 
- D 3 - I - 0x016D7A 05:ED6A: B0        .byte $B0   ; 
- D 3 - I - 0x016D7B 05:ED6B: 92        .byte con_92_loop, $01
- D 3 - I - 0x016D7D 05:ED6D: 63 FA     .word off_92_FA63
- D 3 - I - 0x016D7F 05:ED6F: 94        .byte $94   ; 
- D 3 - I - 0x016D80 05:ED70: FF        .byte $FF   ; 
- D 3 - I - 0x016D81 05:ED71: 86        .byte $86   ; 
- D 3 - I - 0x016D82 05:ED72: 01        .byte $01   ; 
- D 3 - I - 0x016D83 05:ED73: 8D        .byte $8D   ; 
- D 3 - I - 0x016D84 05:ED74: 02        .byte $02   ; 
- D 3 - I - 0x016D85 05:ED75: 84        .byte con_84_jsr
- D 3 - I - 0x016D86 05:ED76: 17 FC     .word sub_84_FC17
- D 3 - I - 0x016D88 05:ED78: 92        .byte con_92_loop, $01
- D 3 - I - 0x016D8A 05:ED7A: 8A FA     .word off_92_FA8A
- D 3 - I - 0x016D8C 05:ED7C: 86        .byte $86   ; 
- D 3 - I - 0x016D8D 05:ED7D: F4        .byte $F4   ; 
- D 3 - I - 0x016D8E 05:ED7E: 93        .byte $93   ; 
- D 3 - I - 0x016D8F 05:ED7F: FF        .byte $FF   ; 
- D 3 - I - 0x016D90 05:ED80: 8D        .byte $8D   ; 
- D 3 - I - 0x016D91 05:ED81: 00        .byte $00   ; 
- D 3 - I - 0x016D92 05:ED82: 8C        .byte $8C   ; 
- D 3 - I - 0x016D93 05:ED83: 13        .byte $13   ; 
- D 3 - I - 0x016D94 05:ED84: 01        .byte $01   ; 
- D 3 - I - 0x016D95 05:ED85: FF        .byte $FF   ; 
- D 3 - I - 0x016D96 05:ED86: 8B        .byte $8B   ; 
- D 3 - I - 0x016D97 05:ED87: FF        .byte $FF   ; 
- D 3 - I - 0x016D98 05:ED88: 2C        .byte $2C   ; 
- D 3 - I - 0x016D99 05:ED89: 06        .byte $06   ; 
- D 3 - I - 0x016D9A 05:ED8A: 31        .byte $31   ; 
- D 3 - I - 0x016D9B 05:ED8B: 06        .byte $06   ; 
- D 3 - I - 0x016D9C 05:ED8C: 35        .byte $35   ; 
- D 3 - I - 0x016D9D 05:ED8D: 0C        .byte $0C   ; 
- D 3 - I - 0x016D9E 05:ED8E: 31        .byte $31   ; 
- D 3 - I - 0x016D9F 05:ED8F: 06        .byte $06   ; 
- D 3 - I - 0x016DA0 05:ED90: 35        .byte $35   ; 
- D 3 - I - 0x016DA1 05:ED91: 06        .byte $06   ; 
- D 3 - I - 0x016DA2 05:ED92: 38        .byte $38   ; 
- D 3 - I - 0x016DA3 05:ED93: 0C        .byte $0C   ; 
- D 3 - I - 0x016DA4 05:ED94: 35        .byte $35   ; 
- D 3 - I - 0x016DA5 05:ED95: 06        .byte $06   ; 
- D 3 - I - 0x016DA6 05:ED96: 38        .byte $38   ; 
- D 3 - I - 0x016DA7 05:ED97: 06        .byte $06   ; 
- D 3 - I - 0x016DA8 05:ED98: 3D        .byte $3D   ; 
- D 3 - I - 0x016DA9 05:ED99: 0C        .byte $0C   ; 
- D 3 - I - 0x016DAA 05:ED9A: 3F        .byte $3F   ; 
- D 3 - I - 0x016DAB 05:ED9B: 0C        .byte $0C   ; 
- D 3 - I - 0x016DAC 05:ED9C: 3D        .byte $3D   ; 
- D 3 - I - 0x016DAD 05:ED9D: 04        .byte $04   ; 
- D 3 - I - 0x016DAE 05:ED9E: 3F        .byte $3F   ; 
- D 3 - I - 0x016DAF 05:ED9F: 04        .byte $04   ; 
- D 3 - I - 0x016DB0 05:EDA0: 3D        .byte $3D   ; 
- D 3 - I - 0x016DB1 05:EDA1: 04        .byte $04   ; 
- D 3 - I - 0x016DB2 05:EDA2: 35        .byte $35   ; 
- D 3 - I - 0x016DB3 05:EDA3: 0C        .byte $0C   ; 
- D 3 - I - 0x016DB4 05:EDA4: 37        .byte $37   ; 
- D 3 - I - 0x016DB5 05:EDA5: 0C        .byte $0C   ; 
- D 3 - I - 0x016DB6 05:EDA6: 38        .byte $38   ; 
- D 3 - I - 0x016DB7 05:EDA7: 0C        .byte $0C   ; 
- D 3 - I - 0x016DB8 05:EDA8: 3D        .byte $3D   ; 
- D 3 - I - 0x016DB9 05:EDA9: 0C        .byte $0C   ; 
- D 3 - I - 0x016DBA 05:EDAA: 3B        .byte $3B   ; 
- D 3 - I - 0x016DBB 05:EDAB: 0C        .byte $0C   ; 
- D 3 - I - 0x016DBC 05:EDAC: 3A        .byte $3A   ; 
- D 3 - I - 0x016DBD 05:EDAD: 04        .byte $04   ; 
- D 3 - I - 0x016DBE 05:EDAE: 3B        .byte $3B   ; 
- D 3 - I - 0x016DBF 05:EDAF: 04        .byte $04   ; 
- D 3 - I - 0x016DC0 05:EDB0: 3A        .byte $3A   ; 
- D 3 - I - 0x016DC1 05:EDB1: 04        .byte $04   ; 
- D 3 - I - 0x016DC2 05:EDB2: 38        .byte $38   ; 
- D 3 - I - 0x016DC3 05:EDB3: 0C        .byte $0C   ; 
- D 3 - I - 0x016DC4 05:EDB4: 36        .byte $36   ; 
- D 3 - I - 0x016DC5 05:EDB5: 0C        .byte $0C   ; 
- D 3 - I - 0x016DC6 05:EDB6: 35        .byte $35   ; 
- D 3 - I - 0x016DC7 05:EDB7: 04        .byte $04   ; 
- D 3 - I - 0x016DC8 05:EDB8: 36        .byte $36   ; 
- D 3 - I - 0x016DC9 05:EDB9: 04        .byte $04   ; 
- D 3 - I - 0x016DCA 05:EDBA: 35        .byte $35   ; 
- D 3 - I - 0x016DCB 05:EDBB: 04        .byte $04   ; 
- D 3 - I - 0x016DCC 05:EDBC: 33        .byte $33   ; 
- D 3 - I - 0x016DCD 05:EDBD: 0C        .byte $0C   ; 
- D 3 - I - 0x016DCE 05:EDBE: 35        .byte $35   ; 
- D 3 - I - 0x016DCF 05:EDBF: 0C        .byte $0C   ; 
- D 3 - I - 0x016DD0 05:EDC0: 36        .byte $36   ; 
- D 3 - I - 0x016DD1 05:EDC1: 0C        .byte $0C   ; 
- D 3 - I - 0x016DD2 05:EDC2: 33        .byte $33   ; 
- D 3 - I - 0x016DD3 05:EDC3: 0C        .byte $0C   ; 
- D 3 - I - 0x016DD4 05:EDC4: 31        .byte $31   ; 
- D 3 - I - 0x016DD5 05:EDC5: 0C        .byte $0C   ; 
- D 3 - I - 0x016DD6 05:EDC6: 2F        .byte $2F   ; 
- D 3 - I - 0x016DD7 05:EDC7: 0C        .byte $0C   ; 
- D 3 - I - 0x016DD8 05:EDC8: 31        .byte $31   ; 
- D 3 - I - 0x016DD9 05:EDC9: 0C        .byte $0C   ; 
- D 3 - I - 0x016DDA 05:EDCA: 2D        .byte $2D   ; 
- D 3 - I - 0x016DDB 05:EDCB: 06        .byte $06   ; 
- D 3 - I - 0x016DDC 05:EDCC: 28        .byte $28   ; 
- D 3 - I - 0x016DDD 05:EDCD: 06        .byte $06   ; 
- D 3 - I - 0x016DDE 05:EDCE: 2D        .byte $2D   ; 
- D 3 - I - 0x016DDF 05:EDCF: 06        .byte $06   ; 
- D 3 - I - 0x016DE0 05:EDD0: 31        .byte $31   ; 
- D 3 - I - 0x016DE1 05:EDD1: 06        .byte $06   ; 
- D 3 - I - 0x016DE2 05:EDD2: 34        .byte $34   ; 
- D 3 - I - 0x016DE3 05:EDD3: 0C        .byte $0C   ; 
- D 3 - I - 0x016DE4 05:EDD4: 33        .byte $33   ; 
- D 3 - I - 0x016DE5 05:EDD5: 06        .byte $06   ; 
- D 3 - I - 0x016DE6 05:EDD6: 34        .byte $34   ; 
- D 3 - I - 0x016DE7 05:EDD7: 06        .byte $06   ; 
- D 3 - I - 0x016DE8 05:EDD8: 33        .byte $33   ; 
- D 3 - I - 0x016DE9 05:EDD9: 06        .byte $06   ; 
- D 3 - I - 0x016DEA 05:EDDA: 34        .byte $34   ; 
- D 3 - I - 0x016DEB 05:EDDB: 06        .byte $06   ; 
- D 3 - I - 0x016DEC 05:EDDC: 39        .byte $39   ; 
- D 3 - I - 0x016DED 05:EDDD: 0C        .byte $0C   ; 
- D 3 - I - 0x016DEE 05:EDDE: 3B        .byte $3B   ; 
- D 3 - I - 0x016DEF 05:EDDF: 0C        .byte $0C   ; 
- D 3 - I - 0x016DF0 05:EDE0: 39        .byte $39   ; 
- D 3 - I - 0x016DF1 05:EDE1: 0C        .byte $0C   ; 
- D 3 - I - 0x016DF2 05:EDE2: 38        .byte $38   ; 
- D 3 - I - 0x016DF3 05:EDE3: 0C        .byte $0C   ; 
- D 3 - I - 0x016DF4 05:EDE4: 39        .byte $39   ; 
- D 3 - I - 0x016DF5 05:EDE5: 0C        .byte $0C   ; 
- D 3 - I - 0x016DF6 05:EDE6: 34        .byte $34   ; 
- D 3 - I - 0x016DF7 05:EDE7: 0C        .byte $0C   ; 
- D 3 - I - 0x016DF8 05:EDE8: 31        .byte $31   ; 
- D 3 - I - 0x016DF9 05:EDE9: 0C        .byte $0C   ; 
- D 3 - I - 0x016DFA 05:EDEA: 32        .byte $32   ; 
- D 3 - I - 0x016DFB 05:EDEB: 06        .byte $06   ; 
- D 3 - I - 0x016DFC 05:EDEC: 31        .byte $31   ; 
- D 3 - I - 0x016DFD 05:EDED: 06        .byte $06   ; 
- D 3 - I - 0x016DFE 05:EDEE: 2F        .byte $2F   ; 
- D 3 - I - 0x016DFF 05:EDEF: 0C        .byte $0C   ; 
- D 3 - I - 0x016E00 05:EDF0: 31        .byte $31   ; 
- D 3 - I - 0x016E01 05:EDF1: 06        .byte $06   ; 
- D 3 - I - 0x016E02 05:EDF2: 2F        .byte $2F   ; 
- D 3 - I - 0x016E03 05:EDF3: 06        .byte $06   ; 
- D 3 - I - 0x016E04 05:EDF4: 2D        .byte $2D   ; 
- D 3 - I - 0x016E05 05:EDF5: 0C        .byte $0C   ; 
- D 3 - I - 0x016E06 05:EDF6: 2F        .byte $2F   ; 
- D 3 - I - 0x016E07 05:EDF7: 06        .byte $06   ; 
- D 3 - I - 0x016E08 05:EDF8: 2D        .byte $2D   ; 
- D 3 - I - 0x016E09 05:EDF9: 06        .byte $06   ; 
- D 3 - I - 0x016E0A 05:EDFA: 2B        .byte $2B   ; 
- D 3 - I - 0x016E0B 05:EDFB: 0C        .byte $0C   ; 
- D 3 - I - 0x016E0C 05:EDFC: 82        .byte $82   ; 
- D 3 - I - 0x016E0D 05:EDFD: 06        .byte $06   ; 
- D 3 - I - 0x016E0E 05:EDFE: 1E        .byte $1E   ; 
- D 3 - I - 0x016E0F 05:EDFF: 1F        .byte $1F   ; 
- D 3 - I - 0x016E10 05:EE00: 23        .byte $23   ; 
- D 3 - I - 0x016E11 05:EE01: 25        .byte $25   ; 
- D 3 - I - 0x016E12 05:EE02: 26        .byte $26   ; 
- D 3 - I - 0x016E13 05:EE03: 2A        .byte $2A   ; 
- D 3 - I - 0x016E14 05:EE04: 2B        .byte $2B   ; 
- D 3 - I - 0x016E15 05:EE05: 2F        .byte $2F   ; 
- D 3 - I - 0x016E16 05:EE06: 31        .byte $31   ; 
- D 3 - I - 0x016E17 05:EE07: 32        .byte $32   ; 
- D 3 - I - 0x016E18 05:EE08: 36        .byte $36   ; 
- D 3 - I - 0x016E19 05:EE09: 37        .byte $37   ; 
- D 3 - I - 0x016E1A 05:EE0A: 8C        .byte $8C   ; 
- D 3 - I - 0x016E1B 05:EE0B: 00        .byte $00   ; 
- D 3 - I - 0x016E1C 05:EE0C: 00        .byte $00   ; 
- D 3 - I - 0x016E1D 05:EE0D: 00        .byte $00   ; 
- D 3 - I - 0x016E1E 05:EE0E: 82        .byte $82   ; 
- D 3 - I - 0x016E1F 05:EE0F: 00        .byte $00   ; 
- D 3 - I - 0x016E20 05:EE10: 86        .byte $86   ; 
- D 3 - I - 0x016E21 05:EE11: FE        .byte $FE   ; 
- D 3 - I - 0x016E22 05:EE12: 92        .byte con_92_loop, $01
- D 3 - I - 0x016E24 05:EE14: 6A FA     .word off_92_FA6A
- D 3 - I - 0x016E26 05:EE16: 80        .byte $80   ; 
- D 3 - I - 0x016E27 05:EE17: 04        .byte $04   ; 
- D 3 - I - 0x016E28 05:EE18: 84        .byte con_84_jsr
- D 3 - I - 0x016E29 05:EE19: 17 FC     .word sub_84_FC17
- D 3 - I - 0x016E2B 05:EE1B: 81        .byte $81   ; 
- D 3 - I - 0x016E2C 05:EE1C: 86        .byte $86   ; 
- D 3 - I - 0x016E2D 05:EE1D: F7        .byte $F7   ; 
- D 3 - I - 0x016E2E 05:EE1E: 80        .byte $80   ; 
- D 3 - I - 0x016E2F 05:EE1F: 04        .byte $04   ; 
- D 3 - I - 0x016E30 05:EE20: 84        .byte con_84_jsr
- D 3 - I - 0x016E31 05:EE21: 68 FC     .word sub_84_FC68
- D 3 - I - 0x016E33 05:EE23: 81        .byte $81   ; 
- D 3 - I - 0x016E34 05:EE24: 86        .byte $86   ; 
- D 3 - I - 0x016E35 05:EE25: 05        .byte $05   ; 
- D 3 - I - 0x016E36 05:EE26: 80        .byte $80   ; 
- D 3 - I - 0x016E37 05:EE27: 02        .byte $02   ; 
- D 3 - I - 0x016E38 05:EE28: 84        .byte con_84_jsr
- D 3 - I - 0x016E39 05:EE29: 68 FC     .word sub_84_FC68
- D 3 - I - 0x016E3B 05:EE2B: 81        .byte $81   ; 
- D 3 - I - 0x016E3C 05:EE2C: 8C        .byte $8C   ; 
- D 3 - I - 0x016E3D 05:EE2D: 00        .byte $00   ; 
- D 3 - I - 0x016E3E 05:EE2E: 00        .byte $00   ; 
- D 3 - I - 0x016E3F 05:EE2F: 00        .byte $00   ; 
- D 3 - I - 0x016E40 05:EE30: 86        .byte $86   ; 
- D 3 - I - 0x016E41 05:EE31: FE        .byte $FE   ; 
- D 3 - I - 0x016E42 05:EE32: 92        .byte con_92_loop, $01
- D 3 - I - 0x016E44 05:EE34: 63 FA     .word off_92_FA63
- D 3 - I - 0x016E46 05:EE36: 80        .byte $80   ; 
- D 3 - I - 0x016E47 05:EE37: 02        .byte $02   ; 
- D 3 - I - 0x016E48 05:EE38: 93        .byte $93   ; 
- D 3 - I - 0x016E49 05:EE39: FF        .byte $FF   ; 
- D 3 - I - 0x016E4A 05:EE3A: 82        .byte $82   ; 
- D 3 - I - 0x016E4B 05:EE3B: 00        .byte $00   ; 
- D 3 - I - 0x016E4C 05:EE3C: 2F        .byte $2F   ; 
- D 3 - I - 0x016E4D 05:EE3D: 18        .byte $18   ; 
- D 3 - I - 0x016E4E 05:EE3E: 93        .byte $93   ; 
- D 3 - I - 0x016E4F 05:EE3F: 06        .byte $06   ; 
- D 3 - I - 0x016E50 05:EE40: 2E        .byte $2E   ; 
- D 3 - I - 0x016E51 05:EE41: 0C        .byte $0C   ; 
- D 3 - I - 0x016E52 05:EE42: 82        .byte $82   ; 
- D 3 - I - 0x016E53 05:EE43: 06        .byte $06   ; 
- D 3 - I - 0x016E54 05:EE44: 2F        .byte $2F   ; 
- D 3 - I - 0x016E55 05:EE45: 2E        .byte $2E   ; 
- D 3 - I - 0x016E56 05:EE46: 2C        .byte $2C   ; 
- D 3 - I - 0x016E57 05:EE47: 2A        .byte $2A   ; 
- D 3 - I - 0x016E58 05:EE48: 27        .byte $27   ; 
- D 3 - I - 0x016E59 05:EE49: 2C        .byte $2C   ; 
- D 3 - I - 0x016E5A 05:EE4A: 31        .byte $31   ; 
- D 3 - I - 0x016E5B 05:EE4B: 2C        .byte $2C   ; 
- D 3 - I - 0x016E5C 05:EE4C: 29        .byte $29   ; 
- D 3 - I - 0x016E5D 05:EE4D: 27        .byte $27   ; 
- D 3 - I - 0x016E5E 05:EE4E: 25        .byte $25   ; 
- D 3 - I - 0x016E5F 05:EE4F: 29        .byte $29   ; 
- D 3 - I - 0x016E60 05:EE50: 2F        .byte $2F   ; 
- D 3 - I - 0x016E61 05:EE51: 2A        .byte $2A   ; 
- D 3 - I - 0x016E62 05:EE52: 29        .byte $29   ; 
- D 3 - I - 0x016E63 05:EE53: 27        .byte $27   ; 
- D 3 - I - 0x016E64 05:EE54: 2A        .byte $2A   ; 
- D 3 - I - 0x016E65 05:EE55: 2F        .byte $2F   ; 
- D 3 - I - 0x016E66 05:EE56: 86        .byte $86   ; 
- D 3 - I - 0x016E67 05:EE57: F2        .byte $F2   ; 
- D 3 - I - 0x016E68 05:EE58: 81        .byte $81   ; 
- D 3 - I - 0x016E69 05:EE59: 86        .byte $86   ; 
- D 3 - I - 0x016E6A 05:EE5A: FE        .byte $FE   ; 
- D 3 - I - 0x016E6B 05:EE5B: 82        .byte $82   ; 
- D 3 - I - 0x016E6C 05:EE5C: 00        .byte $00   ; 
- D 3 - I - 0x016E6D 05:EE5D: 80        .byte $80   ; 
- D 3 - I - 0x016E6E 05:EE5E: 02        .byte $02   ; 
- D 3 - I - 0x016E6F 05:EE5F: 93        .byte $93   ; 
- D 3 - I - 0x016E70 05:EE60: FF        .byte $FF   ; 
- D 3 - I - 0x016E71 05:EE61: 38        .byte $38   ; 
- D 3 - I - 0x016E72 05:EE62: 0C        .byte $0C   ; 
- D 3 - I - 0x016E73 05:EE63: 3A        .byte $3A   ; 
- D 3 - I - 0x016E74 05:EE64: 06        .byte $06   ; 
- D 3 - I - 0x016E75 05:EE65: 3B        .byte $3B   ; 
- D 3 - I - 0x016E76 05:EE66: 0C        .byte $0C   ; 
- D 3 - I - 0x016E77 05:EE67: 38        .byte $38   ; 
- D 3 - I - 0x016E78 05:EE68: 06        .byte $06   ; 
- D 3 - I - 0x016E79 05:EE69: 3A        .byte $3A   ; 
- D 3 - I - 0x016E7A 05:EE6A: 0C        .byte $0C   ; 
- D 3 - I - 0x016E7B 05:EE6B: 93        .byte $93   ; 
- D 3 - I - 0x016E7C 05:EE6C: 06        .byte $06   ; 
- D 3 - I - 0x016E7D 05:EE6D: 36        .byte $36   ; 
- D 3 - I - 0x016E7E 05:EE6E: 0C        .byte $0C   ; 
- D 3 - I - 0x016E7F 05:EE6F: 33        .byte $33   ; 
- D 3 - I - 0x016E80 05:EE70: 0C        .byte $0C   ; 
- D 3 - I - 0x016E81 05:EE71: 93        .byte $93   ; 
- D 3 - I - 0x016E82 05:EE72: FF        .byte $FF   ; 
- D 3 - I - 0x016E83 05:EE73: 38        .byte $38   ; 
- D 3 - I - 0x016E84 05:EE74: 0C        .byte $0C   ; 
- D 3 - I - 0x016E85 05:EE75: 3A        .byte $3A   ; 
- D 3 - I - 0x016E86 05:EE76: 06        .byte $06   ; 
- D 3 - I - 0x016E87 05:EE77: 3B        .byte $3B   ; 
- D 3 - I - 0x016E88 05:EE78: 0C        .byte $0C   ; 
- D 3 - I - 0x016E89 05:EE79: 3F        .byte $3F   ; 
- D 3 - I - 0x016E8A 05:EE7A: 06        .byte $06   ; 
- D 3 - I - 0x016E8B 05:EE7B: 3D        .byte $3D   ; 
- D 3 - I - 0x016E8C 05:EE7C: 0C        .byte $0C   ; 
- D 3 - I - 0x016E8D 05:EE7D: 93        .byte $93   ; 
- D 3 - I - 0x016E8E 05:EE7E: 06        .byte $06   ; 
- D 3 - I - 0x016E8F 05:EE7F: 38        .byte $38   ; 
- D 3 - I - 0x016E90 05:EE80: 0C        .byte $0C   ; 
- D 3 - I - 0x016E91 05:EE81: 35        .byte $35   ; 
- D 3 - I - 0x016E92 05:EE82: 0C        .byte $0C   ; 
- D 3 - I - 0x016E93 05:EE83: 86        .byte $86   ; 
- D 3 - I - 0x016E94 05:EE84: F2        .byte $F2   ; 
- D 3 - I - 0x016E95 05:EE85: 81        .byte $81   ; 
- D 3 - I - 0x016E96 05:EE86: 92        .byte con_92_loop, $01
- D 3 - I - 0x016E98 05:EE88: 8A FA     .word off_92_FA8A
- D 3 - I - 0x016E9A 05:EE8A: 86        .byte $86   ; 
- D 3 - I - 0x016E9B 05:EE8B: F0        .byte $F0   ; 
- D 3 - I - 0x016E9C 05:EE8C: 93        .byte $93   ; 
- D 3 - I - 0x016E9D 05:EE8D: FF        .byte $FF   ; 
- D 3 - I - 0x016E9E 05:EE8E: 80        .byte $80   ; 
- D 3 - I - 0x016E9F 05:EE8F: 02        .byte $02   ; 
- D 3 - I - 0x016EA0 05:EE90: 36        .byte $36   ; 
- D 3 - I - 0x016EA1 05:EE91: 0C        .byte $0C   ; 
- D 3 - I - 0x016EA2 05:EE92: 35        .byte $35   ; 
- D 3 - I - 0x016EA3 05:EE93: 0C        .byte $0C   ; 
- D 3 - I - 0x016EA4 05:EE94: 33        .byte $33   ; 
- D 3 - I - 0x016EA5 05:EE95: 0C        .byte $0C   ; 
- D 3 - I - 0x016EA6 05:EE96: 31        .byte $31   ; 
- D 3 - I - 0x016EA7 05:EE97: 0C        .byte $0C   ; 
- D 3 - I - 0x016EA8 05:EE98: 33        .byte $33   ; 
- D 3 - I - 0x016EA9 05:EE99: 0C        .byte $0C   ; 
- D 3 - I - 0x016EAA 05:EE9A: 36        .byte $36   ; 
- D 3 - I - 0x016EAB 05:EE9B: 0C        .byte $0C   ; 
- D 3 - I - 0x016EAC 05:EE9C: 38        .byte $38   ; 
- D 3 - I - 0x016EAD 05:EE9D: 12        .byte $12   ; 
- D 3 - I - 0x016EAE 05:EE9E: 36        .byte $36   ; 
- D 3 - I - 0x016EAF 05:EE9F: 06        .byte $06   ; 
- D 3 - I - 0x016EB0 05:EEA0: 33        .byte $33   ; 
- D 3 - I - 0x016EB1 05:EEA1: 0C        .byte $0C   ; 
- D 3 - I - 0x016EB2 05:EEA2: 33        .byte $33   ; 
- D 3 - I - 0x016EB3 05:EEA3: 12        .byte $12   ; 
- D 3 - I - 0x016EB4 05:EEA4: 31        .byte $31   ; 
- D 3 - I - 0x016EB5 05:EEA5: 06        .byte $06   ; 
- D 3 - I - 0x016EB6 05:EEA6: 30        .byte $30   ; 
- D 3 - I - 0x016EB7 05:EEA7: 0C        .byte $0C   ; 
- D 3 - I - 0x016EB8 05:EEA8: 86        .byte $86   ; 
- D 3 - I - 0x016EB9 05:EEA9: FC        .byte $FC   ; 
- D 3 - I - 0x016EBA 05:EEAA: 81        .byte $81   ; 
- D 3 - I - 0x016EBB 05:EEAB: 86        .byte $86   ; 
- D 3 - I - 0x016EBC 05:EEAC: F0        .byte $F0   ; 
- D 3 - I - 0x016EBD 05:EEAD: 80        .byte $80   ; 
- D 3 - I - 0x016EBE 05:EEAE: 02        .byte $02   ; 
- D 3 - I - 0x016EBF 05:EEAF: 82        .byte $82   ; 
- D 3 - I - 0x016EC0 05:EEB0: 0C        .byte $0C   ; 
- D 3 - I - 0x016EC1 05:EEB1: 36        .byte $36   ; 
- D 3 - I - 0x016EC2 05:EEB2: 38        .byte $38   ; 
- D 3 - I - 0x016EC3 05:EEB3: 3A        .byte $3A   ; 
- D 3 - I - 0x016EC4 05:EEB4: 3D        .byte $3D   ; 
- D 3 - I - 0x016EC5 05:EEB5: 3C        .byte $3C   ; 
- D 3 - I - 0x016EC6 05:EEB6: 3A        .byte $3A   ; 
- D 3 - I - 0x016EC7 05:EEB7: 82        .byte $82   ; 
- D 3 - I - 0x016EC8 05:EEB8: 06        .byte $06   ; 
- D 3 - I - 0x016EC9 05:EEB9: 3C        .byte $3C   ; 
- D 3 - I - 0x016ECA 05:EEBA: 3A        .byte $3A   ; 
- D 3 - I - 0x016ECB 05:EEBB: 38        .byte $38   ; 
- D 3 - I - 0x016ECC 05:EEBC: 3A        .byte $3A   ; 
- D 3 - I - 0x016ECD 05:EEBD: 38        .byte $38   ; 
- D 3 - I - 0x016ECE 05:EEBE: 36        .byte $36   ; 
- D 3 - I - 0x016ECF 05:EEBF: 38        .byte $38   ; 
- D 3 - I - 0x016ED0 05:EEC0: 36        .byte $36   ; 
- D 3 - I - 0x016ED1 05:EEC1: 35        .byte $35   ; 
- D 3 - I - 0x016ED2 05:EEC2: 36        .byte $36   ; 
- D 3 - I - 0x016ED3 05:EEC3: 35        .byte $35   ; 
- D 3 - I - 0x016ED4 05:EEC4: 33        .byte $33   ; 
- D 3 - I - 0x016ED5 05:EEC5: 86        .byte $86   ; 
- D 3 - I - 0x016ED6 05:EEC6: FC        .byte $FC   ; 
- D 3 - I - 0x016ED7 05:EEC7: 81        .byte $81   ; 
- D 3 - I - 0x016ED8 05:EEC8: 86        .byte $86   ; 
- D 3 - I - 0x016ED9 05:EEC9: 00        .byte $00   ; 
- D 3 - I - 0x016EDA 05:EECA: 82        .byte $82   ; 
- D 3 - I - 0x016EDB 05:EECB: 00        .byte $00   ; 
- D 3 - I - 0x016EDC 05:EECC: 92        .byte con_92_loop, $01
- D 3 - I - 0x016EDE 05:EECE: 63 FA     .word off_92_FA63
- D 3 - I - 0x016EE0 05:EED0: 80        .byte $80   ; 
- D 3 - I - 0x016EE1 05:EED1: 02        .byte $02   ; 
- D 3 - I - 0x016EE2 05:EED2: 8C        .byte $8C   ; 
- D 3 - I - 0x016EE3 05:EED3: 01        .byte $01   ; 
- D 3 - I - 0x016EE4 05:EED4: 04        .byte $04   ; 
- D 3 - I - 0x016EE5 05:EED5: 04        .byte $04   ; 
- D 3 - I - 0x016EE6 05:EED6: 31        .byte $31   ; 
- D 3 - I - 0x016EE7 05:EED7: 48        .byte $48   ; 
- D 3 - I - 0x016EE8 05:EED8: 8C        .byte $8C   ; 
- D 3 - I - 0x016EE9 05:EED9: 00        .byte $00   ; 
- D 3 - I - 0x016EEA 05:EEDA: 00        .byte $00   ; 
- D 3 - I - 0x016EEB 05:EEDB: 00        .byte $00   ; 
- D 3 - I - 0x016EEC 05:EEDC: 8A        .byte $8A   ; 
- D 3 - I - 0x016EED 05:EEDD: 50        .byte $50   ; 
- D 3 - I - 0x016EEE 05:EEDE: 00        .byte $00   ; 
- D 3 - I - 0x016EEF 05:EEDF: 02        .byte $02   ; 
- D 3 - I - 0x016EF0 05:EEE0: 8B        .byte $8B   ; 
- D 3 - I - 0x016EF1 05:EEE1: 01        .byte $01   ; 
- D 3 - I - 0x016EF2 05:EEE2: 8E        .byte $8E   ; 
- D 3 - I - 0x016EF3 05:EEE3: 30        .byte $30   ; 
- D 3 - I - 0x016EF4 05:EEE4: 8F        .byte $8F   ; 
- D 3 - I - 0x016EF5 05:EEE5: 01        .byte $01   ; 
- D 3 - I - 0x016EF6 05:EEE6: 02        .byte $02   ; 
- D 3 - I - 0x016EF7 05:EEE7: 00        .byte $00   ; 
- D 3 - I - 0x016EF8 05:EEE8: 00        .byte $00   ; 
- D 3 - I - 0x016EF9 05:EEE9: 32        .byte $32   ; 
- D 3 - I - 0x016EFA 05:EEEA: 06        .byte $06   ; 
- D 3 - I - 0x016EFB 05:EEEB: 8F        .byte $8F   ; 
- D 3 - I - 0x016EFC 05:EEEC: 00        .byte $00   ; 
- D 3 - I - 0x016EFD 05:EEED: 00        .byte $00   ; 
- D 3 - I - 0x016EFE 05:EEEE: 00        .byte $00   ; 
- D 3 - I - 0x016EFF 05:EEEF: 00        .byte $00   ; 
- D 3 - I - 0x016F00 05:EEF0: 60        .byte $60   ; 
- D 3 - I - 0x016F01 05:EEF1: 06        .byte $06   ; 
- D 3 - I - 0x016F02 05:EEF2: 8F        .byte $8F   ; 
- D 3 - I - 0x016F03 05:EEF3: 01        .byte $01   ; 
- D 3 - I - 0x016F04 05:EEF4: 02        .byte $02   ; 
- D 3 - I - 0x016F05 05:EEF5: 00        .byte $00   ; 
- D 3 - I - 0x016F06 05:EEF6: 00        .byte $00   ; 
- D 3 - I - 0x016F07 05:EEF7: 32        .byte $32   ; 
- D 3 - I - 0x016F08 05:EEF8: 06        .byte $06   ; 
- D 3 - I - 0x016F09 05:EEF9: 8F        .byte $8F   ; 
- D 3 - I - 0x016F0A 05:EEFA: 00        .byte $00   ; 
- D 3 - I - 0x016F0B 05:EEFB: 00        .byte $00   ; 
- D 3 - I - 0x016F0C 05:EEFC: 00        .byte $00   ; 
- D 3 - I - 0x016F0D 05:EEFD: 00        .byte $00   ; 
- D 3 - I - 0x016F0E 05:EEFE: 60        .byte $60   ; 
- D 3 - I - 0x016F0F 05:EEFF: 06        .byte $06   ; 
- D 3 - I - 0x016F10 05:EF00: 8F        .byte $8F   ; 
- D 3 - I - 0x016F11 05:EF01: 01        .byte $01   ; 
- D 3 - I - 0x016F12 05:EF02: 02        .byte $02   ; 
- D 3 - I - 0x016F13 05:EF03: 00        .byte $00   ; 
- D 3 - I - 0x016F14 05:EF04: 00        .byte $00   ; 
- D 3 - I - 0x016F15 05:EF05: 32        .byte $32   ; 
- D 3 - I - 0x016F16 05:EF06: 06        .byte $06   ; 
- D 3 - I - 0x016F17 05:EF07: 8F        .byte $8F   ; 
- D 3 - I - 0x016F18 05:EF08: 00        .byte $00   ; 
- D 3 - I - 0x016F19 05:EF09: 00        .byte $00   ; 
- D 3 - I - 0x016F1A 05:EF0A: 00        .byte $00   ; 
- D 3 - I - 0x016F1B 05:EF0B: 00        .byte $00   ; 
- D 3 - I - 0x016F1C 05:EF0C: 60        .byte $60   ; 
- D 3 - I - 0x016F1D 05:EF0D: 12        .byte $12   ; 
- D 3 - I - 0x016F1E 05:EF0E: 8A        .byte $8A   ; 
- D 3 - I - 0x016F1F 05:EF0F: 40        .byte $40   ; 
- D 3 - I - 0x016F20 05:EF10: 00        .byte $00   ; 
- D 3 - I - 0x016F21 05:EF11: 02        .byte $02   ; 
- D 3 - I - 0x016F22 05:EF12: 8B        .byte $8B   ; 
- D 3 - I - 0x016F23 05:EF13: 01        .byte $01   ; 
- D 3 - I - 0x016F24 05:EF14: 34        .byte $34   ; 
- D 3 - I - 0x016F25 05:EF15: 06        .byte $06   ; 
- D 3 - I - 0x016F26 05:EF16: 8D        .byte $8D   ; 
- D 3 - I - 0x016F27 05:EF17: 02        .byte $02   ; 
- D 3 - I - 0x016F28 05:EF18: 28        .byte $28   ; 
- D 3 - I - 0x016F29 05:EF19: 0C        .byte $0C   ; 
- D 3 - I - 0x016F2A 05:EF1A: 34        .byte $34   ; 
- D 3 - I - 0x016F2B 05:EF1B: 06        .byte $06   ; 
- D 3 - I - 0x016F2C 05:EF1C: 8D        .byte $8D   ; 
- D 3 - I - 0x016F2D 05:EF1D: 00        .byte $00   ; 
- D 3 - I - 0x016F2E 05:EF1E: 8E        .byte $8E   ; 
- D 3 - I - 0x016F2F 05:EF1F: B0        .byte $B0   ; 
- D 3 - I - 0x016F30 05:EF20: 8B        .byte $8B   ; 
- D 3 - I - 0x016F31 05:EF21: FF        .byte $FF   ; 
- D 3 - I - 0x016F32 05:EF22: 81        .byte $81   ; 
- D 3 - I - 0x016F33 05:EF23: 8C        .byte $8C   ; 
- D 3 - I - 0x016F34 05:EF24: 01        .byte $01   ; 
- D 3 - I - 0x016F35 05:EF25: 04        .byte $04   ; 
- D 3 - I - 0x016F36 05:EF26: 04        .byte $04   ; 
- D 3 - I - 0x016F37 05:EF27: 38        .byte $38   ; 
- D 3 - I - 0x016F38 05:EF28: 48        .byte $48   ; 
- D 3 - I - 0x016F39 05:EF29: 8C        .byte $8C   ; 
- D 3 - I - 0x016F3A 05:EF2A: 00        .byte $00   ; 
- D 3 - I - 0x016F3B 05:EF2B: 00        .byte $00   ; 
- D 3 - I - 0x016F3C 05:EF2C: 00        .byte $00   ; 
- D 3 - I - 0x016F3D 05:EF2D: 8A        .byte $8A   ; 
- D 3 - I - 0x016F3E 05:EF2E: 50        .byte $50   ; 
- D 3 - I - 0x016F3F 05:EF2F: 00        .byte $00   ; 
- D 3 - I - 0x016F40 05:EF30: 02        .byte $02   ; 
- D 3 - I - 0x016F41 05:EF31: 8B        .byte $8B   ; 
- D 3 - I - 0x016F42 05:EF32: 01        .byte $01   ; 
- D 3 - I - 0x016F43 05:EF33: 8E        .byte $8E   ; 
- D 3 - I - 0x016F44 05:EF34: 30        .byte $30   ; 
- D 3 - I - 0x016F45 05:EF35: 8F        .byte $8F   ; 
- D 3 - I - 0x016F46 05:EF36: 01        .byte $01   ; 
- D 3 - I - 0x016F47 05:EF37: 01        .byte $01   ; 
- D 3 - I - 0x016F48 05:EF38: 00        .byte $00   ; 
- D 3 - I - 0x016F49 05:EF39: 00        .byte $00   ; 
- D 3 - I - 0x016F4A 05:EF3A: 3E        .byte $3E   ; 
- D 3 - I - 0x016F4B 05:EF3B: 06        .byte $06   ; 
- D 3 - I - 0x016F4C 05:EF3C: 8F        .byte $8F   ; 
- D 3 - I - 0x016F4D 05:EF3D: 00        .byte $00   ; 
- D 3 - I - 0x016F4E 05:EF3E: 00        .byte $00   ; 
- D 3 - I - 0x016F4F 05:EF3F: 00        .byte $00   ; 
- D 3 - I - 0x016F50 05:EF40: 00        .byte $00   ; 
- D 3 - I - 0x016F51 05:EF41: 60        .byte $60   ; 
- D 3 - I - 0x016F52 05:EF42: 06        .byte $06   ; 
- D 3 - I - 0x016F53 05:EF43: 8F        .byte $8F   ; 
- D 3 - I - 0x016F54 05:EF44: 01        .byte $01   ; 
- D 3 - I - 0x016F55 05:EF45: 01        .byte $01   ; 
- D 3 - I - 0x016F56 05:EF46: 00        .byte $00   ; 
- D 3 - I - 0x016F57 05:EF47: 00        .byte $00   ; 
- D 3 - I - 0x016F58 05:EF48: 3E        .byte $3E   ; 
- D 3 - I - 0x016F59 05:EF49: 06        .byte $06   ; 
- D 3 - I - 0x016F5A 05:EF4A: 8F        .byte $8F   ; 
- D 3 - I - 0x016F5B 05:EF4B: 00        .byte $00   ; 
- D 3 - I - 0x016F5C 05:EF4C: 00        .byte $00   ; 
- D 3 - I - 0x016F5D 05:EF4D: 00        .byte $00   ; 
- D 3 - I - 0x016F5E 05:EF4E: 00        .byte $00   ; 
- D 3 - I - 0x016F5F 05:EF4F: 60        .byte $60   ; 
- D 3 - I - 0x016F60 05:EF50: 06        .byte $06   ; 
- D 3 - I - 0x016F61 05:EF51: 8F        .byte $8F   ; 
- D 3 - I - 0x016F62 05:EF52: 01        .byte $01   ; 
- D 3 - I - 0x016F63 05:EF53: 01        .byte $01   ; 
- D 3 - I - 0x016F64 05:EF54: 00        .byte $00   ; 
- D 3 - I - 0x016F65 05:EF55: 00        .byte $00   ; 
- D 3 - I - 0x016F66 05:EF56: 3E        .byte $3E   ; 
- D 3 - I - 0x016F67 05:EF57: 06        .byte $06   ; 
- D 3 - I - 0x016F68 05:EF58: 8F        .byte $8F   ; 
- D 3 - I - 0x016F69 05:EF59: 00        .byte $00   ; 
- D 3 - I - 0x016F6A 05:EF5A: 00        .byte $00   ; 
- D 3 - I - 0x016F6B 05:EF5B: 00        .byte $00   ; 
- D 3 - I - 0x016F6C 05:EF5C: 00        .byte $00   ; 
- D 3 - I - 0x016F6D 05:EF5D: 60        .byte $60   ; 
- D 3 - I - 0x016F6E 05:EF5E: 12        .byte $12   ; 
- D 3 - I - 0x016F6F 05:EF5F: 8A        .byte $8A   ; 
- D 3 - I - 0x016F70 05:EF60: 40        .byte $40   ; 
- D 3 - I - 0x016F71 05:EF61: 00        .byte $00   ; 
- D 3 - I - 0x016F72 05:EF62: 02        .byte $02   ; 
- D 3 - I - 0x016F73 05:EF63: 8B        .byte $8B   ; 
- D 3 - I - 0x016F74 05:EF64: 01        .byte $01   ; 
- D 3 - I - 0x016F75 05:EF65: 40        .byte $40   ; 
- D 3 - I - 0x016F76 05:EF66: 06        .byte $06   ; 
- D 3 - I - 0x016F77 05:EF67: 8D        .byte $8D   ; 
- D 3 - I - 0x016F78 05:EF68: 02        .byte $02   ; 
- D 3 - I - 0x016F79 05:EF69: 34        .byte $34   ; 
- D 3 - I - 0x016F7A 05:EF6A: 0C        .byte $0C   ; 
- D 3 - I - 0x016F7B 05:EF6B: 40        .byte $40   ; 
- D 3 - I - 0x016F7C 05:EF6C: 06        .byte $06   ; 
- D 3 - I - 0x016F7D 05:EF6D: 8D        .byte $8D   ; 
- D 3 - I - 0x016F7E 05:EF6E: 00        .byte $00   ; 
- D 3 - I - 0x016F7F 05:EF6F: 8E        .byte $8E   ; 
- D 3 - I - 0x016F80 05:EF70: B0        .byte $B0   ; 
- D 3 - I - 0x016F81 05:EF71: 8B        .byte $8B   ; 
- D 3 - I - 0x016F82 05:EF72: FF        .byte $FF   ; 
- D 3 - I - 0x016F83 05:EF73: 8C        .byte $8C   ; 
- D 3 - I - 0x016F84 05:EF74: 01        .byte $01   ; 
- D 3 - I - 0x016F85 05:EF75: 04        .byte $04   ; 
- D 3 - I - 0x016F86 05:EF76: 04        .byte $04   ; 
- D 3 - I - 0x016F87 05:EF77: 38        .byte $38   ; 
- D 3 - I - 0x016F88 05:EF78: 48        .byte $48   ; 
- D 3 - I - 0x016F89 05:EF79: 8E        .byte $8E   ; 
- D 3 - I - 0x016F8A 05:EF7A: 30        .byte $30   ; 
- D 3 - I - 0x016F8B 05:EF7B: 82        .byte $82   ; 
- D 3 - I - 0x016F8C 05:EF7C: 02        .byte $02   ; 
- D 3 - I - 0x016F8D 05:EF7D: 86        .byte $86   ; 
- D 3 - I - 0x016F8E 05:EF7E: 0A        .byte $0A   ; 
- D 3 - I - 0x016F8F 05:EF7F: 8A        .byte $8A   ; 
- D 3 - I - 0x016F90 05:EF80: 50        .byte $50   ; 
- D 3 - I - 0x016F91 05:EF81: 01        .byte $01   ; 
- D 3 - I - 0x016F92 05:EF82: 01        .byte $01   ; 
- D 3 - I - 0x016F93 05:EF83: 8B        .byte $8B   ; 
- D 3 - I - 0x016F94 05:EF84: 01        .byte $01   ; 
- D 3 - I - 0x016F95 05:EF85: 84        .byte con_84_jsr
- D 3 - I - 0x016F96 05:EF86: BE FD     .word sub_84_FDBE
- D 3 - I - 0x016F98 05:EF88: 84        .byte con_84_jsr
- D 3 - I - 0x016F99 05:EF89: BE FD     .word sub_84_FDBE
- D 3 - I - 0x016F9B 05:EF8B: 84        .byte con_84_jsr
- D 3 - I - 0x016F9C 05:EF8C: BE FD     .word sub_84_FDBE
- D 3 - I - 0x016F9E 05:EF8E: 8B        .byte $8B   ; 
- D 3 - I - 0x016F9F 05:EF8F: 00        .byte $00   ; 
- D 3 - I - 0x016FA0 05:EF90: 84        .byte con_84_jsr
- D 3 - I - 0x016FA1 05:EF91: BE FD     .word sub_84_FDBE
- D 3 - I - 0x016FA3 05:EF93: 8B        .byte $8B   ; 
- D 3 - I - 0x016FA4 05:EF94: 01        .byte $01   ; 
- D 3 - I - 0x016FA5 05:EF95: 8A        .byte $8A   ; 
- D 3 - I - 0x016FA6 05:EF96: 00        .byte $00   ; 
- D 3 - I - 0x016FA7 05:EF97: 00        .byte $00   ; 
- D 3 - I - 0x016FA8 05:EF98: 02        .byte $02   ; 
- D 3 - I - 0x016FA9 05:EF99: 82        .byte $82   ; 
- D 3 - I - 0x016FAA 05:EF9A: 00        .byte $00   ; 
- D 3 - I - 0x016FAB 05:EF9B: 32        .byte $32   ; 
- D 3 - I - 0x016FAC 05:EF9C: 01        .byte $01   ; 
- D 3 - I - 0x016FAD 05:EF9D: 83        .byte $83   ; 



_off019_EF9E_05_logo:
- D 3 - I - 0x016FAE 05:EF9E: 8E        .byte $8E   ; 
- D 3 - I - 0x016FAF 05:EF9F: 30        .byte $30   ; 
- D 3 - I - 0x016FB0 05:EFA0: 60        .byte $60   ; 
- D 3 - I - 0x016FB1 05:EFA1: 80        .byte $80   ; 
- D 3 - I - 0x016FB2 05:EFA2: 94        .byte $94   ; 
- D 3 - I - 0x016FB3 05:EFA3: 01        .byte $01   ; 
- D 3 - I - 0x016FB4 05:EFA4: 93        .byte $93   ; 
- D 3 - I - 0x016FB5 05:EFA5: FF        .byte $FF   ; 
- D 3 - I - 0x016FB6 05:EFA6: 86        .byte $86   ; 
- D 3 - I - 0x016FB7 05:EFA7: FE        .byte $FE   ; 
- D 3 - I - 0x016FB8 05:EFA8: 92        .byte con_92_loop, $01
- D 3 - I - 0x016FBA 05:EFAA: 6A FA     .word off_92_FA6A
- D 3 - I - 0x016FBC 05:EFAC: 8B        .byte $8B   ; 
- D 3 - I - 0x016FBD 05:EFAD: FF        .byte $FF   ; 
- D 3 - I - 0x016FBE 05:EFAE: 1A        .byte $1A   ; 
- D 3 - I - 0x016FBF 05:EFAF: 10        .byte $10   ; 
- D 3 - I - 0x016FC0 05:EFB0: 93        .byte $93   ; 
- D 3 - I - 0x016FC1 05:EFB1: 05        .byte $05   ; 
- D 3 - I - 0x016FC2 05:EFB2: 1E        .byte $1E   ; 
- D 3 - I - 0x016FC3 05:EFB3: 08        .byte $08   ; 
- D 3 - I - 0x016FC4 05:EFB4: 21        .byte $21   ; 
- D 3 - I - 0x016FC5 05:EFB5: 08        .byte $08   ; 
- D 3 - I - 0x016FC6 05:EFB6: 93        .byte $93   ; 
- D 3 - I - 0x016FC7 05:EFB7: FF        .byte $FF   ; 
- D 3 - I - 0x016FC8 05:EFB8: 1F        .byte $1F   ; 
- D 3 - I - 0x016FC9 05:EFB9: 10        .byte $10   ; 
- D 3 - I - 0x016FCA 05:EFBA: 93        .byte $93   ; 
- D 3 - I - 0x016FCB 05:EFBB: 04        .byte $04   ; 
- D 3 - I - 0x016FCC 05:EFBC: 1C        .byte $1C   ; 
- D 3 - I - 0x016FCD 05:EFBD: 10        .byte $10   ; 
- D 3 - I - 0x016FCE 05:EFBE: 1E        .byte $1E   ; 
- D 3 - I - 0x016FCF 05:EFBF: 10        .byte $10   ; 
- D 3 - I - 0x016FD0 05:EFC0: 21        .byte $21   ; 
- D 3 - I - 0x016FD1 05:EFC1: 10        .byte $10   ; 
- D 3 - I - 0x016FD2 05:EFC2: 93        .byte $93   ; 
- D 3 - I - 0x016FD3 05:EFC3: FF        .byte $FF   ; 
- D 3 - I - 0x016FD4 05:EFC4: 26        .byte $26   ; 
- D 3 - I - 0x016FD5 05:EFC5: A0        .byte $A0   ; 
- D 3 - I - 0x016FD6 05:EFC6: 25        .byte $25   ; 
- D 3 - I - 0x016FD7 05:EFC7: 10        .byte $10   ; 
- D 3 - I - 0x016FD8 05:EFC8: 93        .byte $93   ; 
- D 3 - I - 0x016FD9 05:EFC9: 05        .byte $05   ; 
- D 3 - I - 0x016FDA 05:EFCA: 21        .byte $21   ; 
- D 3 - I - 0x016FDB 05:EFCB: 08        .byte $08   ; 
- D 3 - I - 0x016FDC 05:EFCC: 1C        .byte $1C   ; 
- D 3 - I - 0x016FDD 05:EFCD: 08        .byte $08   ; 
- D 3 - I - 0x016FDE 05:EFCE: 93        .byte $93   ; 
- D 3 - I - 0x016FDF 05:EFCF: FF        .byte $FF   ; 
- D 3 - I - 0x016FE0 05:EFD0: 19        .byte $19   ; 
- D 3 - I - 0x016FE1 05:EFD1: 10        .byte $10   ; 
- D 3 - I - 0x016FE2 05:EFD2: 93        .byte $93   ; 
- D 3 - I - 0x016FE3 05:EFD3: 04        .byte $04   ; 
- D 3 - I - 0x016FE4 05:EFD4: 15        .byte $15   ; 
- D 3 - I - 0x016FE5 05:EFD5: 10        .byte $10   ; 
- D 3 - I - 0x016FE6 05:EFD6: 93        .byte $93   ; 
- D 3 - I - 0x016FE7 05:EFD7: FF        .byte $FF   ; 
- D 3 - I - 0x016FE8 05:EFD8: 1A        .byte $1A   ; 
- D 3 - I - 0x016FE9 05:EFD9: 20        .byte $20   ; 
- D 3 - I - 0x016FEA 05:EFDA: 0E        .byte $0E   ; 
- D 3 - I - 0x016FEB 05:EFDB: 20        .byte $20   ; 
- D 3 - I - 0x016FEC 05:EFDC: 86        .byte $86   ; 
- D 3 - I - 0x016FED 05:EFDD: 00        .byte $00   ; 
- D 3 - I - 0x016FEE 05:EFDE: 88        .byte con_88_jmp
- D 3 - I - 0x016FEF 05:EFDF: E3 EF     .word loc_88_EFE3



_off019_EFE1_06:
- D 3 - I - 0x016FF1 05:EFE1: 60        .byte $60   ; 
- D 3 - I - 0x016FF2 05:EFE2: 05        .byte $05   ; 
loc_88_EFE3:
- D 3 - I - 0x016FF3 05:EFE3: 8E        .byte $8E   ; 
- D 3 - I - 0x016FF4 05:EFE4: 30        .byte $30   ; 
- D 3 - I - 0x016FF5 05:EFE5: 94        .byte $94   ; 
- D 3 - I - 0x016FF6 05:EFE6: 01        .byte $01   ; 
- D 3 - I - 0x016FF7 05:EFE7: 93        .byte $93   ; 
- D 3 - I - 0x016FF8 05:EFE8: FF        .byte $FF   ; 
- D 3 - I - 0x016FF9 05:EFE9: 92        .byte con_92_loop, $01
- D 3 - I - 0x016FFB 05:EFEB: 6A FA     .word off_92_FA6A
- D 3 - I - 0x016FFD 05:EFED: 8A        .byte $8A   ; 
- D 3 - I - 0x016FFE 05:EFEE: 60        .byte $60   ; 
- D 3 - I - 0x016FFF 05:EFEF: 00        .byte $00   ; 
- D 3 - I - 0x017000 05:EFF0: 02        .byte $02   ; 
- D 3 - I - 0x017001 05:EFF1: 82        .byte $82   ; 
- D 3 - I - 0x017002 05:EFF2: 02        .byte $02   ; 
- D 3 - I - 0x017003 05:EFF3: 8C        .byte $8C   ; 
- D 3 - I - 0x017004 05:EFF4: 0C        .byte $0C   ; 
- D 3 - I - 0x017005 05:EFF5: 01        .byte $01   ; 
- D 3 - I - 0x017006 05:EFF6: 01        .byte $01   ; 
- D 3 - I - 0x017007 05:EFF7: 8B        .byte $8B   ; 
- D 3 - I - 0x017008 05:EFF8: 01        .byte $01   ; 
- D 3 - I - 0x017009 05:EFF9: 80        .byte $80   ; 
- D 3 - I - 0x01700A 05:EFFA: 02        .byte $02   ; 
- D 3 - I - 0x01700B 05:EFFB: 84        .byte con_84_jsr
- D 3 - I - 0x01700C 05:EFFC: 3A FD     .word sub_84_FD3A
- D 3 - I - 0x01700E 05:EFFE: 86        .byte $86   ; 
- D 3 - I - 0x01700F 05:EFFF: 02        .byte $02   ; 
- D 3 - I - 0x017010 05:F000: 84        .byte con_84_jsr
- D 3 - I - 0x017011 05:F001: 57 FD     .word sub_84_FD57
- D 3 - I - 0x017013 05:F003: 84        .byte con_84_jsr
- D 3 - I - 0x017014 05:F004: 57 FD     .word sub_84_FD57
- D 3 - I - 0x017016 05:F006: 84        .byte con_84_jsr
- D 3 - I - 0x017017 05:F007: 57 FD     .word sub_84_FD57
- D 3 - I - 0x017019 05:F009: 86        .byte $86   ; 
- D 3 - I - 0x01701A 05:F00A: 00        .byte $00   ; 
- D 3 - I - 0x01701B 05:F00B: 84        .byte con_84_jsr
- D 3 - I - 0x01701C 05:F00C: 3A FD     .word sub_84_FD3A
- D 3 - I - 0x01701E 05:F00E: 84        .byte con_84_jsr
- D 3 - I - 0x01701F 05:F00F: 57 FD     .word sub_84_FD57
- D 3 - I - 0x017021 05:F011: 84        .byte con_84_jsr
- D 3 - I - 0x017022 05:F012: 57 FD     .word sub_84_FD57
- D 3 - I - 0x017024 05:F014: 84        .byte con_84_jsr
- D 3 - I - 0x017025 05:F015: 57 FD     .word sub_84_FD57
- D 3 - I - 0x017027 05:F017: 86        .byte $86   ; 
- D 3 - I - 0x017028 05:F018: 00        .byte $00   ; 
- D 3 - I - 0x017029 05:F019: 81        .byte $81   ; 
- D 3 - I - 0x01702A 05:F01A: 8A        .byte $8A   ; 
- D 3 - I - 0x01702B 05:F01B: 60        .byte $60   ; 
- D 3 - I - 0x01702C 05:F01C: 0F        .byte $0F   ; 
- D 3 - I - 0x01702D 05:F01D: 01        .byte $01   ; 
- D 3 - I - 0x01702E 05:F01E: 8B        .byte $8B   ; 
- D 3 - I - 0x01702F 05:F01F: 01        .byte $01   ; 
- D 3 - I - 0x017030 05:F020: 80        .byte $80   ; 
- D 3 - I - 0x017031 05:F021: 04        .byte $04   ; 
- D 3 - I - 0x017032 05:F022: 84        .byte con_84_jsr
- D 3 - I - 0x017033 05:F023: 57 FD     .word sub_84_FD57
- D 3 - I - 0x017035 05:F025: 8B        .byte $8B   ; 
- D 3 - I - 0x017036 05:F026: 00        .byte $00   ; 
- D 3 - I - 0x017037 05:F027: 81        .byte $81   ; 
- D 3 - I - 0x017038 05:F028: 82        .byte $82   ; 
- D 3 - I - 0x017039 05:F029: 00        .byte $00   ; 
- D 3 - I - 0x01703A 05:F02A: 8B        .byte $8B   ; 
- D 3 - I - 0x01703B 05:F02B: 01        .byte $01   ; 
- D 3 - I - 0x01703C 05:F02C: 8E        .byte $8E   ; 
- D 3 - I - 0x01703D 05:F02D: 30        .byte $30   ; 
- D 3 - I - 0x01703E 05:F02E: 8F        .byte $8F   ; 
- D 3 - I - 0x01703F 05:F02F: 0C        .byte $0C   ; 
- D 3 - I - 0x017040 05:F030: 01        .byte $01   ; 
- D 3 - I - 0x017041 05:F031: 03        .byte $03   ; 
- D 3 - I - 0x017042 05:F032: 00        .byte $00   ; 
- D 3 - I - 0x017043 05:F033: 8A        .byte $8A   ; 
- D 3 - I - 0x017044 05:F034: 00        .byte $00   ; 
- D 3 - I - 0x017045 05:F035: 00        .byte $00   ; 
- D 3 - I - 0x017046 05:F036: 02        .byte $02   ; 
- D 3 - I - 0x017047 05:F037: 34        .byte $34   ; 
- D 3 - I - 0x017048 05:F038: 30        .byte $30   ; 
- D 3 - I - 0x017049 05:F039: 92        .byte con_92_loop, $10
- D 3 - I - 0x01704B 05:F03B: 76 FA     .word off_92_FA76
- D 3 - I - 0x01704D 05:F03D: 8B        .byte $8B   ; 
- D 3 - I - 0x01704E 05:F03E: FF        .byte $FF   ; 
- D 3 - I - 0x01704F 05:F03F: 34        .byte $34   ; 
- D 3 - I - 0x017050 05:F040: 90        .byte $90   ; 
- D 3 - I - 0x017051 05:F041: 93        .byte $93   ; 
- D 3 - I - 0x017052 05:F042: FF        .byte $FF   ; 
- D 3 - I - 0x017053 05:F043: 94        .byte $94   ; 
- D 3 - I - 0x017054 05:F044: 02        .byte $02   ; 
- D 3 - I - 0x017055 05:F045: 92        .byte con_92_loop, $01
- D 3 - I - 0x017057 05:F047: 63 FA     .word off_92_FA63
- D 3 - I - 0x017059 05:F049: 8B        .byte $8B   ; 
- D 3 - I - 0x01705A 05:F04A: FF        .byte $FF   ; 
- D 3 - I - 0x01705B 05:F04B: 82        .byte $82   ; 
- D 3 - I - 0x01705C 05:F04C: 08        .byte $08   ; 
- D 3 - I - 0x01705D 05:F04D: 1F        .byte $1F   ; 
- D 3 - I - 0x01705E 05:F04E: 21        .byte $21   ; 
- D 3 - I - 0x01705F 05:F04F: 23        .byte $23   ; 
- D 3 - I - 0x017060 05:F050: 23        .byte $23   ; 
- D 3 - I - 0x017061 05:F051: 21        .byte $21   ; 
- D 3 - I - 0x017062 05:F052: 1F        .byte $1F   ; 
- D 3 - I - 0x017063 05:F053: 1E        .byte $1E   ; 
- D 3 - I - 0x017064 05:F054: 1C        .byte $1C   ; 
- D 3 - I - 0x017065 05:F055: 1A        .byte $1A   ; 
- D 3 - I - 0x017066 05:F056: 19        .byte $19   ; 
- D 3 - I - 0x017067 05:F057: 17        .byte $17   ; 
- D 3 - I - 0x017068 05:F058: 15        .byte $15   ; 
- D 3 - I - 0x017069 05:F059: 1C        .byte $1C   ; 
- D 3 - I - 0x01706A 05:F05A: 1E        .byte $1E   ; 
- D 3 - I - 0x01706B 05:F05B: 1F        .byte $1F   ; 
- D 3 - I - 0x01706C 05:F05C: 1F        .byte $1F   ; 
- D 3 - I - 0x01706D 05:F05D: 21        .byte $21   ; 
- D 3 - I - 0x01706E 05:F05E: 23        .byte $23   ; 
- D 3 - I - 0x01706F 05:F05F: 25        .byte $25   ; 
- D 3 - I - 0x017070 05:F060: 1C        .byte $1C   ; 
- D 3 - I - 0x017071 05:F061: 1A        .byte $1A   ; 
- D 3 - I - 0x017072 05:F062: 82        .byte $82   ; 
- D 3 - I - 0x017073 05:F063: 18        .byte $18   ; 
- D 3 - I - 0x017074 05:F064: 19        .byte $19   ; 
- D 3 - I - 0x017075 05:F065: 93        .byte $93   ; 
- D 3 - I - 0x017076 05:F066: FF        .byte $FF   ; 
- D 3 - I - 0x017077 05:F067: 94        .byte $94   ; 
- D 3 - I - 0x017078 05:F068: 02        .byte $02   ; 
- D 3 - I - 0x017079 05:F069: 92        .byte con_92_loop, $01
- D 3 - I - 0x01707B 05:F06B: 83 FA     .word off_92_FA83
- D 3 - I - 0x01707D 05:F06D: 82        .byte $82   ; 
- D 3 - I - 0x01707E 05:F06E: 00        .byte $00   ; 
- D 3 - I - 0x01707F 05:F06F: 80        .byte $80   ; 
- D 3 - I - 0x017080 05:F070: 02        .byte $02   ; 
- D 3 - I - 0x017081 05:F071: 23        .byte $23   ; 
- D 3 - I - 0x017082 05:F072: 18        .byte $18   ; 
- D 3 - I - 0x017083 05:F073: 26        .byte $26   ; 
- D 3 - I - 0x017084 05:F074: 10        .byte $10   ; 
- D 3 - I - 0x017085 05:F075: 23        .byte $23   ; 
- D 3 - I - 0x017086 05:F076: 08        .byte $08   ; 
- D 3 - I - 0x017087 05:F077: 28        .byte $28   ; 
- D 3 - I - 0x017088 05:F078: 08        .byte $08   ; 
- D 3 - I - 0x017089 05:F079: 26        .byte $26   ; 
- D 3 - I - 0x01708A 05:F07A: 08        .byte $08   ; 
- D 3 - I - 0x01708B 05:F07B: 25        .byte $25   ; 
- D 3 - I - 0x01708C 05:F07C: 08        .byte $08   ; 
- D 3 - I - 0x01708D 05:F07D: 21        .byte $21   ; 
- D 3 - I - 0x01708E 05:F07E: 10        .byte $10   ; 
- D 3 - I - 0x01708F 05:F07F: 25        .byte $25   ; 
- D 3 - I - 0x017090 05:F080: 08        .byte $08   ; 
- D 3 - I - 0x017091 05:F081: 26        .byte $26   ; 
- D 3 - I - 0x017092 05:F082: 10        .byte $10   ; 
- D 3 - I - 0x017093 05:F083: 25        .byte $25   ; 
- D 3 - I - 0x017094 05:F084: 08        .byte $08   ; 
- D 3 - I - 0x017095 05:F085: 23        .byte $23   ; 
- D 3 - I - 0x017096 05:F086: 10        .byte $10   ; 
- D 3 - I - 0x017097 05:F087: 28        .byte $28   ; 
- D 3 - I - 0x017098 05:F088: 08        .byte $08   ; 
- D 3 - I - 0x017099 05:F089: 25        .byte $25   ; 
- D 3 - I - 0x01709A 05:F08A: 08        .byte $08   ; 
- D 3 - I - 0x01709B 05:F08B: 23        .byte $23   ; 
- D 3 - I - 0x01709C 05:F08C: 08        .byte $08   ; 
- D 3 - I - 0x01709D 05:F08D: 21        .byte $21   ; 
- D 3 - I - 0x01709E 05:F08E: 08        .byte $08   ; 
- D 3 - I - 0x01709F 05:F08F: 1E        .byte $1E   ; 
- D 3 - I - 0x0170A0 05:F090: 10        .byte $10   ; 
- D 3 - I - 0x0170A1 05:F091: 21        .byte $21   ; 
- D 3 - I - 0x0170A2 05:F092: 08        .byte $08   ; 
- D 3 - I - 0x0170A3 05:F093: 81        .byte $81   ; 
- D 3 - I - 0x0170A4 05:F094: 94        .byte $94   ; 
- D 3 - I - 0x0170A5 05:F095: 01        .byte $01   ; 
- D 3 - I - 0x0170A6 05:F096: 92        .byte con_92_loop, $01
- D 3 - I - 0x0170A8 05:F098: 71 FA     .word off_92_FA71
- D 3 - I - 0x0170AA 05:F09A: 80        .byte $80   ; 
- D 3 - I - 0x0170AB 05:F09B: 02        .byte $02   ; 
- D 3 - I - 0x0170AC 05:F09C: 23        .byte $23   ; 
- D 3 - I - 0x0170AD 05:F09D: 10        .byte $10   ; 
- D 3 - I - 0x0170AE 05:F09E: 21        .byte $21   ; 
- D 3 - I - 0x0170AF 05:F09F: 08        .byte $08   ; 
- D 3 - I - 0x0170B0 05:F0A0: 23        .byte $23   ; 
- D 3 - I - 0x0170B1 05:F0A1: 10        .byte $10   ; 
- D 3 - I - 0x0170B2 05:F0A2: 25        .byte $25   ; 
- D 3 - I - 0x0170B3 05:F0A3: 08        .byte $08   ; 
- D 3 - I - 0x0170B4 05:F0A4: 26        .byte $26   ; 
- D 3 - I - 0x0170B5 05:F0A5: 08        .byte $08   ; 
- D 3 - I - 0x0170B6 05:F0A6: 25        .byte $25   ; 
- D 3 - I - 0x0170B7 05:F0A7: 08        .byte $08   ; 
- D 3 - I - 0x0170B8 05:F0A8: 93        .byte $93   ; 
- D 3 - I - 0x0170B9 05:F0A9: 08        .byte $08   ; 
- D 3 - I - 0x0170BA 05:F0AA: 23        .byte $23   ; 
- D 3 - I - 0x0170BB 05:F0AB: 10        .byte $10   ; 
- D 3 - I - 0x0170BC 05:F0AC: 21        .byte $21   ; 
- D 3 - I - 0x0170BD 05:F0AD: 10        .byte $10   ; 
- D 3 - I - 0x0170BE 05:F0AE: 93        .byte $93   ; 
- D 3 - I - 0x0170BF 05:F0AF: FF        .byte $FF   ; 
- D 3 - I - 0x0170C0 05:F0B0: 23        .byte $23   ; 
- D 3 - I - 0x0170C1 05:F0B1: 10        .byte $10   ; 
- D 3 - I - 0x0170C2 05:F0B2: 2A        .byte $2A   ; 
- D 3 - I - 0x0170C3 05:F0B3: 08        .byte $08   ; 
- D 3 - I - 0x0170C4 05:F0B4: 26        .byte $26   ; 
- D 3 - I - 0x0170C5 05:F0B5: 10        .byte $10   ; 
- D 3 - I - 0x0170C6 05:F0B6: 28        .byte $28   ; 
- D 3 - I - 0x0170C7 05:F0B7: 08        .byte $08   ; 
- D 3 - I - 0x0170C8 05:F0B8: 2A        .byte $2A   ; 
- D 3 - I - 0x0170C9 05:F0B9: 08        .byte $08   ; 
- D 3 - I - 0x0170CA 05:F0BA: 28        .byte $28   ; 
- D 3 - I - 0x0170CB 05:F0BB: 08        .byte $08   ; 
- D 3 - I - 0x0170CC 05:F0BC: 26        .byte $26   ; 
- D 3 - I - 0x0170CD 05:F0BD: 08        .byte $08   ; 
- D 3 - I - 0x0170CE 05:F0BE: 25        .byte $25   ; 
- D 3 - I - 0x0170CF 05:F0BF: 08        .byte $08   ; 
- D 3 - I - 0x0170D0 05:F0C0: 21        .byte $21   ; 
- D 3 - I - 0x0170D1 05:F0C1: 08        .byte $08   ; 
- D 3 - I - 0x0170D2 05:F0C2: 1E        .byte $1E   ; 
- D 3 - I - 0x0170D3 05:F0C3: 08        .byte $08   ; 
- D 3 - I - 0x0170D4 05:F0C4: 81        .byte $81   ; 
- D 3 - I - 0x0170D5 05:F0C5: 8E        .byte $8E   ; 
- D 3 - I - 0x0170D6 05:F0C6: B0        .byte $B0   ; 
- D 3 - I - 0x0170D7 05:F0C7: 92        .byte con_92_loop, $01
- D 3 - I - 0x0170D9 05:F0C9: 8A FA     .word off_92_FA8A
- D 3 - I - 0x0170DB 05:F0CB: 26        .byte $26   ; 
- D 3 - I - 0x0170DC 05:F0CC: 10        .byte $10   ; 
- D 3 - I - 0x0170DD 05:F0CD: 25        .byte $25   ; 
- D 3 - I - 0x0170DE 05:F0CE: 08        .byte $08   ; 
- D 3 - I - 0x0170DF 05:F0CF: 26        .byte $26   ; 
- D 3 - I - 0x0170E0 05:F0D0: 10        .byte $10   ; 
- D 3 - I - 0x0170E1 05:F0D1: 28        .byte $28   ; 
- D 3 - I - 0x0170E2 05:F0D2: 08        .byte $08   ; 
- D 3 - I - 0x0170E3 05:F0D3: 2A        .byte $2A   ; 
- D 3 - I - 0x0170E4 05:F0D4: 08        .byte $08   ; 
- D 3 - I - 0x0170E5 05:F0D5: 28        .byte $28   ; 
- D 3 - I - 0x0170E6 05:F0D6: 08        .byte $08   ; 
- D 3 - I - 0x0170E7 05:F0D7: 93        .byte $93   ; 
- D 3 - I - 0x0170E8 05:F0D8: 08        .byte $08   ; 
- D 3 - I - 0x0170E9 05:F0D9: 26        .byte $26   ; 
- D 3 - I - 0x0170EA 05:F0DA: 10        .byte $10   ; 
- D 3 - I - 0x0170EB 05:F0DB: 25        .byte $25   ; 
- D 3 - I - 0x0170EC 05:F0DC: 10        .byte $10   ; 
- D 3 - I - 0x0170ED 05:F0DD: 93        .byte $93   ; 
- D 3 - I - 0x0170EE 05:F0DE: FF        .byte $FF   ; 
- D 3 - I - 0x0170EF 05:F0DF: 26        .byte $26   ; 
- D 3 - I - 0x0170F0 05:F0E0: 10        .byte $10   ; 
- D 3 - I - 0x0170F1 05:F0E1: 2A        .byte $2A   ; 
- D 3 - I - 0x0170F2 05:F0E2: 08        .byte $08   ; 
- D 3 - I - 0x0170F3 05:F0E3: 2C        .byte $2C   ; 
- D 3 - I - 0x0170F4 05:F0E4: 10        .byte $10   ; 
- D 3 - I - 0x0170F5 05:F0E5: 2D        .byte $2D   ; 
- D 3 - I - 0x0170F6 05:F0E6: 08        .byte $08   ; 
- D 3 - I - 0x0170F7 05:F0E7: 2A        .byte $2A   ; 
- D 3 - I - 0x0170F8 05:F0E8: 08        .byte $08   ; 
- D 3 - I - 0x0170F9 05:F0E9: 28        .byte $28   ; 
- D 3 - I - 0x0170FA 05:F0EA: 08        .byte $08   ; 
- D 3 - I - 0x0170FB 05:F0EB: 26        .byte $26   ; 
- D 3 - I - 0x0170FC 05:F0EC: 08        .byte $08   ; 
- D 3 - I - 0x0170FD 05:F0ED: 25        .byte $25   ; 
- D 3 - I - 0x0170FE 05:F0EE: 08        .byte $08   ; 
- D 3 - I - 0x0170FF 05:F0EF: 21        .byte $21   ; 
- D 3 - I - 0x017100 05:F0F0: 08        .byte $08   ; 
- D 3 - I - 0x017101 05:F0F1: 1E        .byte $1E   ; 
- D 3 - I - 0x017102 05:F0F2: 08        .byte $08   ; 
- D 3 - I - 0x017103 05:F0F3: 26        .byte $26   ; 
- D 3 - I - 0x017104 05:F0F4: 10        .byte $10   ; 
- D 3 - I - 0x017105 05:F0F5: 25        .byte $25   ; 
- D 3 - I - 0x017106 05:F0F6: 08        .byte $08   ; 
- D 3 - I - 0x017107 05:F0F7: 26        .byte $26   ; 
- D 3 - I - 0x017108 05:F0F8: 10        .byte $10   ; 
- D 3 - I - 0x017109 05:F0F9: 28        .byte $28   ; 
- D 3 - I - 0x01710A 05:F0FA: 08        .byte $08   ; 
- D 3 - I - 0x01710B 05:F0FB: 2A        .byte $2A   ; 
- D 3 - I - 0x01710C 05:F0FC: 08        .byte $08   ; 
- D 3 - I - 0x01710D 05:F0FD: 28        .byte $28   ; 
- D 3 - I - 0x01710E 05:F0FE: 08        .byte $08   ; 
- D 3 - I - 0x01710F 05:F0FF: 93        .byte $93   ; 
- D 3 - I - 0x017110 05:F100: 08        .byte $08   ; 
- D 3 - I - 0x017111 05:F101: 26        .byte $26   ; 
- D 3 - I - 0x017112 05:F102: 10        .byte $10   ; 
- D 3 - I - 0x017113 05:F103: 25        .byte $25   ; 
- D 3 - I - 0x017114 05:F104: 10        .byte $10   ; 
- D 3 - I - 0x017115 05:F105: 93        .byte $93   ; 
- D 3 - I - 0x017116 05:F106: FF        .byte $FF   ; 
- D 3 - I - 0x017117 05:F107: 26        .byte $26   ; 
- D 3 - I - 0x017118 05:F108: 10        .byte $10   ; 
- D 3 - I - 0x017119 05:F109: 2A        .byte $2A   ; 
- D 3 - I - 0x01711A 05:F10A: 08        .byte $08   ; 
- D 3 - I - 0x01711B 05:F10B: 2C        .byte $2C   ; 
- D 3 - I - 0x01711C 05:F10C: 10        .byte $10   ; 
- D 3 - I - 0x01711D 05:F10D: 2D        .byte $2D   ; 
- D 3 - I - 0x01711E 05:F10E: 08        .byte $08   ; 
- D 3 - I - 0x01711F 05:F10F: 2F        .byte $2F   ; 
- D 3 - I - 0x017120 05:F110: 08        .byte $08   ; 
- D 3 - I - 0x017121 05:F111: 31        .byte $31   ; 
- D 3 - I - 0x017122 05:F112: 08        .byte $08   ; 
- D 3 - I - 0x017123 05:F113: 32        .byte $32   ; 
- D 3 - I - 0x017124 05:F114: 08        .byte $08   ; 
- D 3 - I - 0x017125 05:F115: 34        .byte $34   ; 
- D 3 - I - 0x017126 05:F116: 08        .byte $08   ; 
- D 3 - I - 0x017127 05:F117: 36        .byte $36   ; 
- D 3 - I - 0x017128 05:F118: 08        .byte $08   ; 
- D 3 - I - 0x017129 05:F119: 38        .byte $38   ; 
- D 3 - I - 0x01712A 05:F11A: 08        .byte $08   ; 
- D 3 - I - 0x01712B 05:F11B: 80        .byte $80   ; 
- D 3 - I - 0x01712C 05:F11C: 02        .byte $02   ; 
- D 3 - I - 0x01712D 05:F11D: 36        .byte $36   ; 
- D 3 - I - 0x01712E 05:F11E: 30        .byte $30   ; 
- D 3 - I - 0x01712F 05:F11F: 8C        .byte $8C   ; 
- D 3 - I - 0x017130 05:F120: 02        .byte $02   ; 
- D 3 - I - 0x017131 05:F121: 08        .byte $08   ; 
- D 3 - I - 0x017132 05:F122: 08        .byte $08   ; 
- D 3 - I - 0x017133 05:F123: 8F        .byte $8F   ; 
- D 3 - I - 0x017134 05:F124: 00        .byte $00   ; 
- D 3 - I - 0x017135 05:F125: 00        .byte $00   ; 
- D 3 - I - 0x017136 05:F126: 00        .byte $00   ; 
- D 3 - I - 0x017137 05:F127: 00        .byte $00   ; 
- D 3 - I - 0x017138 05:F128: 34        .byte $34   ; 
- D 3 - I - 0x017139 05:F129: 30        .byte $30   ; 
- D 3 - I - 0x01713A 05:F12A: 8C        .byte $8C   ; 
- D 3 - I - 0x01713B 05:F12B: 01        .byte $01   ; 
- D 3 - I - 0x01713C 05:F12C: 04        .byte $04   ; 
- D 3 - I - 0x01713D 05:F12D: 04        .byte $04   ; 
- D 3 - I - 0x01713E 05:F12E: 31        .byte $31   ; 
- D 3 - I - 0x01713F 05:F12F: 30        .byte $30   ; 
- D 3 - I - 0x017140 05:F130: 8C        .byte $8C   ; 
- D 3 - I - 0x017141 05:F131: 00        .byte $00   ; 
- D 3 - I - 0x017142 05:F132: 00        .byte $00   ; 
- D 3 - I - 0x017143 05:F133: 00        .byte $00   ; 
- D 3 - I - 0x017144 05:F134: 8F        .byte $8F   ; 
- D 3 - I - 0x017145 05:F135: 0C        .byte $0C   ; 
- D 3 - I - 0x017146 05:F136: 01        .byte $01   ; 
- D 3 - I - 0x017147 05:F137: 03        .byte $03   ; 
- D 3 - I - 0x017148 05:F138: 00        .byte $00   ; 
- D 3 - I - 0x017149 05:F139: 2D        .byte $2D   ; 
- D 3 - I - 0x01714A 05:F13A: 08        .byte $08   ; 
- D 3 - I - 0x01714B 05:F13B: 2F        .byte $2F   ; 
- D 3 - I - 0x01714C 05:F13C: 08        .byte $08   ; 
- D 3 - I - 0x01714D 05:F13D: 31        .byte $31   ; 
- D 3 - I - 0x01714E 05:F13E: 08        .byte $08   ; 
- D 3 - I - 0x01714F 05:F13F: 2F        .byte $2F   ; 
- D 3 - I - 0x017150 05:F140: 08        .byte $08   ; 
- D 3 - I - 0x017151 05:F141: 2D        .byte $2D   ; 
- D 3 - I - 0x017152 05:F142: 08        .byte $08   ; 
- D 3 - I - 0x017153 05:F143: 2C        .byte $2C   ; 
- D 3 - I - 0x017154 05:F144: 08        .byte $08   ; 
- D 3 - I - 0x017155 05:F145: 86        .byte $86   ; 
- D 3 - I - 0x017156 05:F146: F4        .byte $F4   ; 
- D 3 - I - 0x017157 05:F147: 81        .byte $81   ; 
- D 3 - I - 0x017158 05:F148: 86        .byte $86   ; 
- D 3 - I - 0x017159 05:F149: 00        .byte $00   ; 
- D 3 - I - 0x01715A 05:F14A: 8E        .byte $8E   ; 
- D 3 - I - 0x01715B 05:F14B: 30        .byte $30   ; 
- D 3 - I - 0x01715C 05:F14C: 92        .byte con_92_loop, $01
- D 3 - I - 0x01715E 05:F14E: 90 FA     .word off_92_FA90
- D 3 - I - 0x017160 05:F150: 8F        .byte $8F   ; 
- D 3 - I - 0x017161 05:F151: 00        .byte $00   ; 
- D 3 - I - 0x017162 05:F152: 00        .byte $00   ; 
- D 3 - I - 0x017163 05:F153: 00        .byte $00   ; 
- D 3 - I - 0x017164 05:F154: 00        .byte $00   ; 
- D 3 - I - 0x017165 05:F155: 87        .byte $87   ; 
- D 3 - I - 0x017166 05:F156: 01        .byte $01   ; 
- D 3 - I - 0x017167 05:F157: 82        .byte $82   ; 
- D 3 - I - 0x017168 05:F158: 08        .byte $08   ; 
- D 3 - I - 0x017169 05:F159: 80        .byte $80   ; 
- D 3 - I - 0x01716A 05:F15A: 02        .byte $02   ; 
- D 3 - I - 0x01716B 05:F15B: 1E        .byte $1E   ; 
- D 3 - I - 0x01716C 05:F15C: 1E        .byte $1E   ; 
- D 3 - I - 0x01716D 05:F15D: 1E        .byte $1E   ; 
- D 3 - I - 0x01716E 05:F15E: 19        .byte $19   ; 
- D 3 - I - 0x01716F 05:F15F: 1C        .byte $1C   ; 
- D 3 - I - 0x017170 05:F160: 1E        .byte $1E   ; 
- D 3 - I - 0x017171 05:F161: 21        .byte $21   ; 
- D 3 - I - 0x017172 05:F162: 1E        .byte $1E   ; 
- D 3 - I - 0x017173 05:F163: 1C        .byte $1C   ; 
- D 3 - I - 0x017174 05:F164: 1E        .byte $1E   ; 
- D 3 - I - 0x017175 05:F165: 1C        .byte $1C   ; 
- D 3 - I - 0x017176 05:F166: 19        .byte $19   ; 
- D 3 - I - 0x017177 05:F167: 1C        .byte $1C   ; 
- D 3 - I - 0x017178 05:F168: 1E        .byte $1E   ; 
- D 3 - I - 0x017179 05:F169: 1E        .byte $1E   ; 
- D 3 - I - 0x01717A 05:F16A: 21        .byte $21   ; 
- D 3 - I - 0x01717B 05:F16B: 1E        .byte $1E   ; 
- D 3 - I - 0x01717C 05:F16C: 1E        .byte $1E   ; 
- D 3 - I - 0x01717D 05:F16D: 1F        .byte $1F   ; 
- D 3 - I - 0x01717E 05:F16E: 21        .byte $21   ; 
- D 3 - I - 0x01717F 05:F16F: 23        .byte $23   ; 
- D 3 - I - 0x017180 05:F170: 25        .byte $25   ; 
- D 3 - I - 0x017181 05:F171: 26        .byte $26   ; 
- D 3 - I - 0x017182 05:F172: 28        .byte $28   ; 
- D 3 - I - 0x017183 05:F173: 87        .byte $87   ; 
- D 3 - I - 0x017184 05:F174: 00        .byte $00   ; 
- D 3 - I - 0x017185 05:F175: 86        .byte $86   ; 
- D 3 - I - 0x017186 05:F176: 0C        .byte $0C   ; 
- D 3 - I - 0x017187 05:F177: 8C        .byte $8C   ; 
- D 3 - I - 0x017188 05:F178: 13        .byte $13   ; 
- D 3 - I - 0x017189 05:F179: 01        .byte $01   ; 
- D 3 - I - 0x01718A 05:F17A: FF        .byte $FF   ; 
- D 3 - I - 0x01718B 05:F17B: 94        .byte $94   ; 
- D 3 - I - 0x01718C 05:F17C: FF        .byte $FF   ; 
- D 3 - I - 0x01718D 05:F17D: 8E        .byte $8E   ; 
- D 3 - I - 0x01718E 05:F17E: B0        .byte $B0   ; 
- D 3 - I - 0x01718F 05:F17F: 92        .byte con_92_loop, $01
- D 3 - I - 0x017191 05:F181: 8A FA     .word off_92_FA8A
- D 3 - I - 0x017193 05:F183: 81        .byte $81   ; 
- D 3 - I - 0x017194 05:F184: 86        .byte $86   ; 
- D 3 - I - 0x017195 05:F185: 00        .byte $00   ; 
- D 3 - I - 0x017196 05:F186: 8E        .byte $8E   ; 
- D 3 - I - 0x017197 05:F187: 30        .byte $30   ; 
- D 3 - I - 0x017198 05:F188: 8B        .byte $8B   ; 
- D 3 - I - 0x017199 05:F189: 01        .byte $01   ; 
- D 3 - I - 0x01719A 05:F18A: 80        .byte $80   ; 
- D 3 - I - 0x01719B 05:F18B: 02        .byte $02   ; 
- D 3 - I - 0x01719C 05:F18C: 84        .byte con_84_jsr
- D 3 - I - 0x01719D 05:F18D: 8B FB     .word sub_84_FB8B
- D 3 - I - 0x01719F 05:F18F: 81        .byte $81   ; 
- D 3 - I - 0x0171A0 05:F190: 86        .byte $86   ; 
- D 3 - I - 0x0171A1 05:F191: 0C        .byte $0C   ; 
- D 3 - I - 0x0171A2 05:F192: 80        .byte $80   ; 
- D 3 - I - 0x0171A3 05:F193: 02        .byte $02   ; 
- D 3 - I - 0x0171A4 05:F194: 84        .byte con_84_jsr
- D 3 - I - 0x0171A5 05:F195: 8B FB     .word sub_84_FB8B
- D 3 - I - 0x0171A7 05:F197: 81        .byte $81   ; 
- D 3 - I - 0x0171A8 05:F198: 8A        .byte $8A   ; 
- D 3 - I - 0x0171A9 05:F199: 10        .byte $10   ; 
- D 3 - I - 0x0171AA 05:F19A: 00        .byte $00   ; 
- D 3 - I - 0x0171AB 05:F19B: 02        .byte $02   ; 
- D 3 - I - 0x0171AC 05:F19C: 8C        .byte $8C   ; 
- D 3 - I - 0x0171AD 05:F19D: 00        .byte $00   ; 
- D 3 - I - 0x0171AE 05:F19E: 00        .byte $00   ; 
- D 3 - I - 0x0171AF 05:F19F: 00        .byte $00   ; 
- D 3 - I - 0x0171B0 05:F1A0: 82        .byte $82   ; 
- D 3 - I - 0x0171B1 05:F1A1: 00        .byte $00   ; 
- D 3 - I - 0x0171B2 05:F1A2: 19        .byte $19   ; 
- D 3 - I - 0x0171B3 05:F1A3: 10        .byte $10   ; 
- D 3 - I - 0x0171B4 05:F1A4: 8C        .byte $8C   ; 
- D 3 - I - 0x0171B5 05:F1A5: 01        .byte $01   ; 
- D 3 - I - 0x0171B6 05:F1A6: 02        .byte $02   ; 
- D 3 - I - 0x0171B7 05:F1A7: 02        .byte $02   ; 
- D 3 - I - 0x0171B8 05:F1A8: 8A        .byte $8A   ; 
- D 3 - I - 0x0171B9 05:F1A9: 70        .byte $70   ; 
- D 3 - I - 0x0171BA 05:F1AA: 00        .byte $00   ; 
- D 3 - I - 0x0171BB 05:F1AB: 01        .byte $01   ; 
- D 3 - I - 0x0171BC 05:F1AC: 19        .byte $19   ; 
- D 3 - I - 0x0171BD 05:F1AD: 08        .byte $08   ; 
- D 3 - I - 0x0171BE 05:F1AE: 19        .byte $19   ; 
- D 3 - I - 0x0171BF 05:F1AF: 08        .byte $08   ; 
- D 3 - I - 0x0171C0 05:F1B0: 19        .byte $19   ; 
- D 3 - I - 0x0171C1 05:F1B1: 10        .byte $10   ; 
- D 3 - I - 0x0171C2 05:F1B2: 82        .byte $82   ; 
- D 3 - I - 0x0171C3 05:F1B3: 00        .byte $00   ; 
- D 3 - I - 0x0171C4 05:F1B4: 94        .byte $94   ; 
- D 3 - I - 0x0171C5 05:F1B5: FF        .byte $FF   ; 
- D 3 - I - 0x0171C6 05:F1B6: 8E        .byte $8E   ; 
- D 3 - I - 0x0171C7 05:F1B7: B0        .byte $B0   ; 
- D 3 - I - 0x0171C8 05:F1B8: 8C        .byte $8C   ; 
- D 3 - I - 0x0171C9 05:F1B9: 00        .byte $00   ; 
- D 3 - I - 0x0171CA 05:F1BA: 00        .byte $00   ; 
- D 3 - I - 0x0171CB 05:F1BB: 00        .byte $00   ; 
- D 3 - I - 0x0171CC 05:F1BC: 86        .byte $86   ; 
- D 3 - I - 0x0171CD 05:F1BD: 0C        .byte $0C   ; 
- D 3 - I - 0x0171CE 05:F1BE: 87        .byte $87   ; 
- D 3 - I - 0x0171CF 05:F1BF: 01        .byte $01   ; 
- D 3 - I - 0x0171D0 05:F1C0: 92        .byte con_92_loop, $01
- D 3 - I - 0x0171D2 05:F1C2: 6A FA     .word off_92_FA6A
- D 3 - I - 0x0171D4 05:F1C4: 80        .byte $80   ; 
- D 3 - I - 0x0171D5 05:F1C5: 02        .byte $02   ; 
- D 3 - I - 0x0171D6 05:F1C6: 84        .byte con_84_jsr
- D 3 - I - 0x0171D7 05:F1C7: 17 FC     .word sub_84_FC17
- D 3 - I - 0x0171D9 05:F1C9: 81        .byte $81   ; 
- D 3 - I - 0x0171DA 05:F1CA: 86        .byte $86   ; 
- D 3 - I - 0x0171DB 05:F1CB: 00        .byte $00   ; 
- D 3 - I - 0x0171DC 05:F1CC: 82        .byte $82   ; 
- D 3 - I - 0x0171DD 05:F1CD: 04        .byte $04   ; 
- D 3 - I - 0x0171DE 05:F1CE: 8A        .byte $8A   ; 
- D 3 - I - 0x0171DF 05:F1CF: 20        .byte $20   ; 
- D 3 - I - 0x0171E0 05:F1D0: 00        .byte $00   ; 
- D 3 - I - 0x0171E1 05:F1D1: 02        .byte $02   ; 
- D 3 - I - 0x0171E2 05:F1D2: 8B        .byte $8B   ; 
- D 3 - I - 0x0171E3 05:F1D3: 01        .byte $01   ; 
- D 3 - I - 0x0171E4 05:F1D4: 87        .byte $87   ; 
- D 3 - I - 0x0171E5 05:F1D5: 00        .byte $00   ; 
- D 3 - I - 0x0171E6 05:F1D6: 8E        .byte $8E   ; 
- D 3 - I - 0x0171E7 05:F1D7: F0        .byte $F0   ; 
- D 3 - I - 0x0171E8 05:F1D8: 8C        .byte $8C   ; 
- D 3 - I - 0x0171E9 05:F1D9: 0C        .byte $0C   ; 
- D 3 - I - 0x0171EA 05:F1DA: 02        .byte $02   ; 
- D 3 - I - 0x0171EB 05:F1DB: 02        .byte $02   ; 
- D 3 - I - 0x0171EC 05:F1DC: 80        .byte $80   ; 
- D 3 - I - 0x0171ED 05:F1DD: 18        .byte $18   ; 
- D 3 - I - 0x0171EE 05:F1DE: 84        .byte con_84_jsr
- D 3 - I - 0x0171EF 05:F1DF: F8 FD     .word sub_84_FDF8
- D 3 - I - 0x0171F1 05:F1E1: 81        .byte $81   ; 
- D 3 - I - 0x0171F2 05:F1E2: 86        .byte $86   ; 
- D 3 - I - 0x0171F3 05:F1E3: 04        .byte $04   ; 
- D 3 - I - 0x0171F4 05:F1E4: 80        .byte $80   ; 
- D 3 - I - 0x0171F5 05:F1E5: 06        .byte $06   ; 
- D 3 - I - 0x0171F6 05:F1E6: 84        .byte con_84_jsr
- D 3 - I - 0x0171F7 05:F1E7: F8 FD     .word sub_84_FDF8
- D 3 - I - 0x0171F9 05:F1E9: 81        .byte $81   ; 
- D 3 - I - 0x0171FA 05:F1EA: 86        .byte $86   ; 
- D 3 - I - 0x0171FB 05:F1EB: 02        .byte $02   ; 
- D 3 - I - 0x0171FC 05:F1EC: 80        .byte $80   ; 
- D 3 - I - 0x0171FD 05:F1ED: 06        .byte $06   ; 
- D 3 - I - 0x0171FE 05:F1EE: 84        .byte con_84_jsr
- D 3 - I - 0x0171FF 05:F1EF: F8 FD     .word sub_84_FDF8
- D 3 - I - 0x017201 05:F1F1: 81        .byte $81   ; 
- D 3 - I - 0x017202 05:F1F2: 86        .byte $86   ; 
- D 3 - I - 0x017203 05:F1F3: 00        .byte $00   ; 
- D 3 - I - 0x017204 05:F1F4: 80        .byte $80   ; 
- D 3 - I - 0x017205 05:F1F5: 06        .byte $06   ; 
- D 3 - I - 0x017206 05:F1F6: 84        .byte con_84_jsr
- D 3 - I - 0x017207 05:F1F7: F8 FD     .word sub_84_FDF8
- D 3 - I - 0x017209 05:F1F9: 81        .byte $81   ; 
- D 3 - I - 0x01720A 05:F1FA: 86        .byte $86   ; 
- D 3 - I - 0x01720B 05:F1FB: FE        .byte $FE   ; 
- D 3 - I - 0x01720C 05:F1FC: 80        .byte $80   ; 
- D 3 - I - 0x01720D 05:F1FD: 06        .byte $06   ; 
- D 3 - I - 0x01720E 05:F1FE: 84        .byte con_84_jsr
- D 3 - I - 0x01720F 05:F1FF: F8 FD     .word sub_84_FDF8
- D 3 - I - 0x017211 05:F201: 81        .byte $81   ; 
- D 3 - I - 0x017212 05:F202: 82        .byte $82   ; 
- D 3 - I - 0x017213 05:F203: 00        .byte $00   ; 
- D 3 - I - 0x017214 05:F204: 8E        .byte $8E   ; 
- D 3 - I - 0x017215 05:F205: B0        .byte $B0   ; 
- D 3 - I - 0x017216 05:F206: 8B        .byte $8B   ; 
- D 3 - I - 0x017217 05:F207: FF        .byte $FF   ; 
- D 3 - I - 0x017218 05:F208: 94        .byte $94   ; 
- D 3 - I - 0x017219 05:F209: 01        .byte $01   ; 
- D 3 - I - 0x01721A 05:F20A: 93        .byte $93   ; 
- D 3 - I - 0x01721B 05:F20B: FF        .byte $FF   ; 
- D 3 - I - 0x01721C 05:F20C: 92        .byte con_92_loop, $01
- D 3 - I - 0x01721E 05:F20E: 6A FA     .word off_92_FA6A
- D 3 - I - 0x017220 05:F210: 8F        .byte $8F   ; 
- D 3 - I - 0x017221 05:F211: 0C        .byte $0C   ; 
- D 3 - I - 0x017222 05:F212: 01        .byte $01   ; 
- D 3 - I - 0x017223 05:F213: 03        .byte $03   ; 
- D 3 - I - 0x017224 05:F214: 00        .byte $00   ; 
- D 3 - I - 0x017225 05:F215: 86        .byte $86   ; 
- D 3 - I - 0x017226 05:F216: 00        .byte $00   ; 
- D 3 - I - 0x017227 05:F217: 80        .byte $80   ; 
- D 3 - I - 0x017228 05:F218: 02        .byte $02   ; 
- D 3 - I - 0x017229 05:F219: 31        .byte $31   ; 
- D 3 - I - 0x01722A 05:F21A: 48        .byte $48   ; 
- D 3 - I - 0x01722B 05:F21B: 8F        .byte $8F   ; 
- D 3 - I - 0x01722C 05:F21C: 00        .byte $00   ; 
- D 3 - I - 0x01722D 05:F21D: 00        .byte $00   ; 
- D 3 - I - 0x01722E 05:F21E: 00        .byte $00   ; 
- D 3 - I - 0x01722F 05:F21F: 00        .byte $00   ; 
- D 3 - I - 0x017230 05:F220: 8C        .byte $8C   ; 
- D 3 - I - 0x017231 05:F221: 02        .byte $02   ; 
- D 3 - I - 0x017232 05:F222: 04        .byte $04   ; 
- D 3 - I - 0x017233 05:F223: 04        .byte $04   ; 
- D 3 - I - 0x017234 05:F224: 31        .byte $31   ; 
- D 3 - I - 0x017235 05:F225: 48        .byte $48   ; 
- D 3 - I - 0x017236 05:F226: 8C        .byte $8C   ; 
- D 3 - I - 0x017237 05:F227: 00        .byte $00   ; 
- D 3 - I - 0x017238 05:F228: 00        .byte $00   ; 
- D 3 - I - 0x017239 05:F229: 00        .byte $00   ; 
- D 3 - I - 0x01723A 05:F22A: 8F        .byte $8F   ; 
- D 3 - I - 0x01723B 05:F22B: 0C        .byte $0C   ; 
- D 3 - I - 0x01723C 05:F22C: 01        .byte $01   ; 
- D 3 - I - 0x01723D 05:F22D: 03        .byte $03   ; 
- D 3 - I - 0x01723E 05:F22E: 00        .byte $00   ; 
- D 3 - I - 0x01723F 05:F22F: 2A        .byte $2A   ; 
- D 3 - I - 0x017240 05:F230: 06        .byte $06   ; 
- D 3 - I - 0x017241 05:F231: 2C        .byte $2C   ; 
- D 3 - I - 0x017242 05:F232: 06        .byte $06   ; 
- D 3 - I - 0x017243 05:F233: 2E        .byte $2E   ; 
- D 3 - I - 0x017244 05:F234: 0C        .byte $0C   ; 
- D 3 - I - 0x017245 05:F235: 2C        .byte $2C   ; 
- D 3 - I - 0x017246 05:F236: 06        .byte $06   ; 
- D 3 - I - 0x017247 05:F237: 2E        .byte $2E   ; 
- D 3 - I - 0x017248 05:F238: 06        .byte $06   ; 
- D 3 - I - 0x017249 05:F239: 2F        .byte $2F   ; 
- D 3 - I - 0x01724A 05:F23A: 0C        .byte $0C   ; 
- D 3 - I - 0x01724B 05:F23B: 2E        .byte $2E   ; 
- D 3 - I - 0x01724C 05:F23C: 06        .byte $06   ; 
- D 3 - I - 0x01724D 05:F23D: 2F        .byte $2F   ; 
- D 3 - I - 0x01724E 05:F23E: 06        .byte $06   ; 
- D 3 - I - 0x01724F 05:F23F: 31        .byte $31   ; 
- D 3 - I - 0x017250 05:F240: 0C        .byte $0C   ; 
- D 3 - I - 0x017251 05:F241: 2E        .byte $2E   ; 
- D 3 - I - 0x017252 05:F242: 0C        .byte $0C   ; 
- D 3 - I - 0x017253 05:F243: 2F        .byte $2F   ; 
- D 3 - I - 0x017254 05:F244: 0C        .byte $0C   ; 
- D 3 - I - 0x017255 05:F245: 93        .byte $93   ; 
- D 3 - I - 0x017256 05:F246: 08        .byte $08   ; 
- D 3 - I - 0x017257 05:F247: 31        .byte $31   ; 
- D 3 - I - 0x017258 05:F248: 0C        .byte $0C   ; 
- D 3 - I - 0x017259 05:F249: 93        .byte $93   ; 
- D 3 - I - 0x01725A 05:F24A: FF        .byte $FF   ; 
- D 3 - I - 0x01725B 05:F24B: 2F        .byte $2F   ; 
- D 3 - I - 0x01725C 05:F24C: 0C        .byte $0C   ; 
- D 3 - I - 0x01725D 05:F24D: 31        .byte $31   ; 
- D 3 - I - 0x01725E 05:F24E: 0C        .byte $0C   ; 
- D 3 - I - 0x01725F 05:F24F: 93        .byte $93   ; 
- D 3 - I - 0x017260 05:F250: 08        .byte $08   ; 
- D 3 - I - 0x017261 05:F251: 33        .byte $33   ; 
- D 3 - I - 0x017262 05:F252: 0C        .byte $0C   ; 
- D 3 - I - 0x017263 05:F253: 93        .byte $93   ; 
- D 3 - I - 0x017264 05:F254: FF        .byte $FF   ; 
- D 3 - I - 0x017265 05:F255: 86        .byte $86   ; 
- D 3 - I - 0x017266 05:F256: F4        .byte $F4   ; 
- D 3 - I - 0x017267 05:F257: 81        .byte $81   ; 
- D 3 - I - 0x017268 05:F258: 8E        .byte $8E   ; 
- D 3 - I - 0x017269 05:F259: 30        .byte $30   ; 
- D 3 - I - 0x01726A 05:F25A: 92        .byte con_92_loop, $01
- D 3 - I - 0x01726C 05:F25C: 8A FA     .word off_92_FA8A
- D 3 - I - 0x01726E 05:F25E: 80        .byte $80   ; 
- D 3 - I - 0x01726F 05:F25F: 02        .byte $02   ; 
- D 3 - I - 0x017270 05:F260: 36        .byte $36   ; 
- D 3 - I - 0x017271 05:F261: 18        .byte $18   ; 
- D 3 - I - 0x017272 05:F262: 33        .byte $33   ; 
- D 3 - I - 0x017273 05:F263: 0C        .byte $0C   ; 
- D 3 - I - 0x017274 05:F264: 31        .byte $31   ; 
- D 3 - I - 0x017275 05:F265: 18        .byte $18   ; 
- D 3 - I - 0x017276 05:F266: 33        .byte $33   ; 
- D 3 - I - 0x017277 05:F267: 0C        .byte $0C   ; 
- D 3 - I - 0x017278 05:F268: 93        .byte $93   ; 
- D 3 - I - 0x017279 05:F269: 0C        .byte $0C   ; 
- D 3 - I - 0x01727A 05:F26A: 31        .byte $31   ; 
- D 3 - I - 0x01727B 05:F26B: 18        .byte $18   ; 
- D 3 - I - 0x01727C 05:F26C: 2F        .byte $2F   ; 
- D 3 - I - 0x01727D 05:F26D: 18        .byte $18   ; 
- D 3 - I - 0x01727E 05:F26E: 2E        .byte $2E   ; 
- D 3 - I - 0x01727F 05:F26F: 18        .byte $18   ; 
- D 3 - I - 0x017280 05:F270: 93        .byte $93   ; 
- D 3 - I - 0x017281 05:F271: FF        .byte $FF   ; 
- D 3 - I - 0x017282 05:F272: 3A        .byte $3A   ; 
- D 3 - I - 0x017283 05:F273: 18        .byte $18   ; 
- D 3 - I - 0x017284 05:F274: 38        .byte $38   ; 
- D 3 - I - 0x017285 05:F275: 0C        .byte $0C   ; 
- D 3 - I - 0x017286 05:F276: 36        .byte $36   ; 
- D 3 - I - 0x017287 05:F277: 18        .byte $18   ; 
- D 3 - I - 0x017288 05:F278: 31        .byte $31   ; 
- D 3 - I - 0x017289 05:F279: 0C        .byte $0C   ; 
- D 3 - I - 0x01728A 05:F27A: 2E        .byte $2E   ; 
- D 3 - I - 0x01728B 05:F27B: 0C        .byte $0C   ; 
- D 3 - I - 0x01728C 05:F27C: 93        .byte $93   ; 
- D 3 - I - 0x01728D 05:F27D: 08        .byte $08   ; 
- D 3 - I - 0x01728E 05:F27E: 2F        .byte $2F   ; 
- D 3 - I - 0x01728F 05:F27F: 0C        .byte $0C   ; 
- D 3 - I - 0x017290 05:F280: 31        .byte $31   ; 
- D 3 - I - 0x017291 05:F281: 0C        .byte $0C   ; 
- D 3 - I - 0x017292 05:F282: 93        .byte $93   ; 
- D 3 - I - 0x017293 05:F283: FF        .byte $FF   ; 
- D 3 - I - 0x017294 05:F284: 34        .byte $34   ; 
- D 3 - I - 0x017295 05:F285: 0C        .byte $0C   ; 
- D 3 - I - 0x017296 05:F286: 93        .byte $93   ; 
- D 3 - I - 0x017297 05:F287: 08        .byte $08   ; 
- D 3 - I - 0x017298 05:F288: 36        .byte $36   ; 
- D 3 - I - 0x017299 05:F289: 0C        .byte $0C   ; 
- D 3 - I - 0x01729A 05:F28A: 38        .byte $38   ; 
- D 3 - I - 0x01729B 05:F28B: 0C        .byte $0C   ; 
- D 3 - I - 0x01729C 05:F28C: 93        .byte $93   ; 
- D 3 - I - 0x01729D 05:F28D: FF        .byte $FF   ; 
- D 3 - I - 0x01729E 05:F28E: 81        .byte $81   ; 
- D 3 - I - 0x01729F 05:F28F: 92        .byte con_92_loop, $24
- D 3 - I - 0x0172A1 05:F291: 9D FA     .word off_92_FA9D
- D 3 - I - 0x0172A3 05:F293: 8F        .byte $8F   ; 
- D 3 - I - 0x0172A4 05:F294: 0C        .byte $0C   ; 
- D 3 - I - 0x0172A5 05:F295: 01        .byte $01   ; 
- D 3 - I - 0x0172A6 05:F296: 03        .byte $03   ; 
- D 3 - I - 0x0172A7 05:F297: 00        .byte $00   ; 
- D 3 - I - 0x0172A8 05:F298: 3D        .byte $3D   ; 
- D 3 - I - 0x0172A9 05:F299: 90        .byte $90   ; 
- D 3 - I - 0x0172AA 05:F29A: 8E        .byte $8E   ; 
- D 3 - I - 0x0172AB 05:F29B: F0        .byte $F0   ; 
- D 3 - I - 0x0172AC 05:F29C: 8B        .byte $8B   ; 
- D 3 - I - 0x0172AD 05:F29D: FF        .byte $FF   ; 
- D 3 - I - 0x0172AE 05:F29E: 92        .byte con_92_loop, $01
- D 3 - I - 0x0172B0 05:F2A0: 63 FA     .word off_92_FA63
- D 3 - I - 0x0172B2 05:F2A2: 3E        .byte $3E   ; 
- D 3 - I - 0x0172B3 05:F2A3: 18        .byte $18   ; 
- D 3 - I - 0x0172B4 05:F2A4: 40        .byte $40   ; 
- D 3 - I - 0x0172B5 05:F2A5: 0C        .byte $0C   ; 
- D 3 - I - 0x0172B6 05:F2A6: 3D        .byte $3D   ; 
- D 3 - I - 0x0172B7 05:F2A7: 18        .byte $18   ; 
- D 3 - I - 0x0172B8 05:F2A8: 39        .byte $39   ; 
- D 3 - I - 0x0172B9 05:F2A9: 0C        .byte $0C   ; 
- D 3 - I - 0x0172BA 05:F2AA: 38        .byte $38   ; 
- D 3 - I - 0x0172BB 05:F2AB: 18        .byte $18   ; 
- D 3 - I - 0x0172BC 05:F2AC: 34        .byte $34   ; 
- D 3 - I - 0x0172BD 05:F2AD: 0C        .byte $0C   ; 
- D 3 - I - 0x0172BE 05:F2AE: 36        .byte $36   ; 
- D 3 - I - 0x0172BF 05:F2AF: 24        .byte $24   ; 
- D 3 - I - 0x0172C0 05:F2B0: 86        .byte $86   ; 
- D 3 - I - 0x0172C1 05:F2B1: E8        .byte $E8   ; 
- D 3 - I - 0x0172C2 05:F2B2: 39        .byte $39   ; 
- D 3 - I - 0x0172C3 05:F2B3: 18        .byte $18   ; 
- D 3 - I - 0x0172C4 05:F2B4: 93        .byte $93   ; 
- D 3 - I - 0x0172C5 05:F2B5: 07        .byte $07   ; 
- D 3 - I - 0x0172C6 05:F2B6: 36        .byte $36   ; 
- D 3 - I - 0x0172C7 05:F2B7: 0C        .byte $0C   ; 
- D 3 - I - 0x0172C8 05:F2B8: 93        .byte $93   ; 
- D 3 - I - 0x0172C9 05:F2B9: FF        .byte $FF   ; 
- D 3 - I - 0x0172CA 05:F2BA: 36        .byte $36   ; 
- D 3 - I - 0x0172CB 05:F2BB: 0C        .byte $0C   ; 
- D 3 - I - 0x0172CC 05:F2BC: 93        .byte $93   ; 
- D 3 - I - 0x0172CD 05:F2BD: 07        .byte $07   ; 
- D 3 - I - 0x0172CE 05:F2BE: 34        .byte $34   ; 
- D 3 - I - 0x0172CF 05:F2BF: 0C        .byte $0C   ; 
- D 3 - I - 0x0172D0 05:F2C0: 36        .byte $36   ; 
- D 3 - I - 0x0172D1 05:F2C1: 0C        .byte $0C   ; 
- D 3 - I - 0x0172D2 05:F2C2: 93        .byte $93   ; 
- D 3 - I - 0x0172D3 05:F2C3: FF        .byte $FF   ; 
- D 3 - I - 0x0172D4 05:F2C4: 3B        .byte $3B   ; 
- D 3 - I - 0x0172D5 05:F2C5: 0C        .byte $0C   ; 
- D 3 - I - 0x0172D6 05:F2C6: 39        .byte $39   ; 
- D 3 - I - 0x0172D7 05:F2C7: 0C        .byte $0C   ; 
- D 3 - I - 0x0172D8 05:F2C8: 93        .byte $93   ; 
- D 3 - I - 0x0172D9 05:F2C9: 06        .byte $06   ; 
- D 3 - I - 0x0172DA 05:F2CA: 36        .byte $36   ; 
- D 3 - I - 0x0172DB 05:F2CB: 0C        .byte $0C   ; 
- D 3 - I - 0x0172DC 05:F2CC: 93        .byte $93   ; 
- D 3 - I - 0x0172DD 05:F2CD: FF        .byte $FF   ; 
- D 3 - I - 0x0172DE 05:F2CE: 34        .byte $34   ; 
- D 3 - I - 0x0172DF 05:F2CF: 0C        .byte $0C   ; 
- D 3 - I - 0x0172E0 05:F2D0: 93        .byte $93   ; 
- D 3 - I - 0x0172E1 05:F2D1: 07        .byte $07   ; 
- D 3 - I - 0x0172E2 05:F2D2: 36        .byte $36   ; 
- D 3 - I - 0x0172E3 05:F2D3: 0C        .byte $0C   ; 
- D 3 - I - 0x0172E4 05:F2D4: 38        .byte $38   ; 
- D 3 - I - 0x0172E5 05:F2D5: 0C        .byte $0C   ; 
- D 3 - I - 0x0172E6 05:F2D6: 39        .byte $39   ; 
- D 3 - I - 0x0172E7 05:F2D7: 0C        .byte $0C   ; 
- D 3 - I - 0x0172E8 05:F2D8: 36        .byte $36   ; 
- D 3 - I - 0x0172E9 05:F2D9: 0C        .byte $0C   ; 
- D 3 - I - 0x0172EA 05:F2DA: 93        .byte $93   ; 
- D 3 - I - 0x0172EB 05:F2DB: 07        .byte $07   ; 
- D 3 - I - 0x0172EC 05:F2DC: 34        .byte $34   ; 
- D 3 - I - 0x0172ED 05:F2DD: 0C        .byte $0C   ; 
- D 3 - I - 0x0172EE 05:F2DE: 93        .byte $93   ; 
- D 3 - I - 0x0172EF 05:F2DF: FF        .byte $FF   ; 
- D 3 - I - 0x0172F0 05:F2E0: 36        .byte $36   ; 
- D 3 - I - 0x0172F1 05:F2E1: 24        .byte $24   ; 
- D 3 - I - 0x0172F2 05:F2E2: 32        .byte $32   ; 
- D 3 - I - 0x0172F3 05:F2E3: 0C        .byte $0C   ; 
- D 3 - I - 0x0172F4 05:F2E4: 34        .byte $34   ; 
- D 3 - I - 0x0172F5 05:F2E5: 0C        .byte $0C   ; 
- D 3 - I - 0x0172F6 05:F2E6: 36        .byte $36   ; 
- D 3 - I - 0x0172F7 05:F2E7: 0C        .byte $0C   ; 
- D 3 - I - 0x0172F8 05:F2E8: 34        .byte $34   ; 
- D 3 - I - 0x0172F9 05:F2E9: 0C        .byte $0C   ; 
- D 3 - I - 0x0172FA 05:F2EA: 32        .byte $32   ; 
- D 3 - I - 0x0172FB 05:F2EB: 0C        .byte $0C   ; 
- D 3 - I - 0x0172FC 05:F2EC: 31        .byte $31   ; 
- D 3 - I - 0x0172FD 05:F2ED: 0C        .byte $0C   ; 
- D 3 - I - 0x0172FE 05:F2EE: 80        .byte $80   ; 
- D 3 - I - 0x0172FF 05:F2EF: 02        .byte $02   ; 
- D 3 - I - 0x017300 05:F2F0: 84        .byte con_84_jsr
- D 3 - I - 0x017301 05:F2F1: CF FA     .word sub_84_FACF
- D 3 - I - 0x017303 05:F2F3: 31        .byte $31   ; 
- D 3 - I - 0x017304 05:F2F4: 18        .byte $18   ; 
- D 3 - I - 0x017305 05:F2F5: 93        .byte $93   ; 
- D 3 - I - 0x017306 05:F2F6: 06        .byte $06   ; 
- D 3 - I - 0x017307 05:F2F7: 32        .byte $32   ; 
- D 3 - I - 0x017308 05:F2F8: 0C        .byte $0C   ; 
- D 3 - I - 0x017309 05:F2F9: 93        .byte $93   ; 
- D 3 - I - 0x01730A 05:F2FA: FF        .byte $FF   ; 
- D 3 - I - 0x01730B 05:F2FB: 84        .byte con_84_jsr
- D 3 - I - 0x01730C 05:F2FC: CF FA     .word sub_84_FACF
- D 3 - I - 0x01730E 05:F2FE: 2A        .byte $2A   ; 
- D 3 - I - 0x01730F 05:F2FF: 24        .byte $24   ; 
- D 3 - I - 0x017310 05:F300: 93        .byte $93   ; 
- D 3 - I - 0x017311 05:F301: FF        .byte $FF   ; 
- D 3 - I - 0x017312 05:F302: 81        .byte $81   ; 
- D 3 - I - 0x017313 05:F303: 8F        .byte $8F   ; 
- D 3 - I - 0x017314 05:F304: 00        .byte $00   ; 
- D 3 - I - 0x017315 05:F305: 00        .byte $00   ; 
- D 3 - I - 0x017316 05:F306: 00        .byte $00   ; 
- D 3 - I - 0x017317 05:F307: 00        .byte $00   ; 
- D 3 - I - 0x017318 05:F308: 8C        .byte $8C   ; 
- D 3 - I - 0x017319 05:F309: 07        .byte $07   ; 
- D 3 - I - 0x01731A 05:F30A: 01        .byte $01   ; 
- D 3 - I - 0x01731B 05:F30B: 0B        .byte $0B   ; 
- D 3 - I - 0x01731C 05:F30C: 86        .byte $86   ; 
- D 3 - I - 0x01731D 05:F30D: F6        .byte $F6   ; 
- D 3 - I - 0x01731E 05:F30E: 80        .byte $80   ; 
- D 3 - I - 0x01731F 05:F30F: 02        .byte $02   ; 
- D 3 - I - 0x017320 05:F310: 84        .byte con_84_jsr
- D 3 - I - 0x017321 05:F311: CF FA     .word sub_84_FACF
- D 3 - I - 0x017323 05:F313: 31        .byte $31   ; 
- D 3 - I - 0x017324 05:F314: 18        .byte $18   ; 
- D 3 - I - 0x017325 05:F315: 93        .byte $93   ; 
- D 3 - I - 0x017326 05:F316: 06        .byte $06   ; 
- D 3 - I - 0x017327 05:F317: 32        .byte $32   ; 
- D 3 - I - 0x017328 05:F318: 0C        .byte $0C   ; 
- D 3 - I - 0x017329 05:F319: 93        .byte $93   ; 
- D 3 - I - 0x01732A 05:F31A: FF        .byte $FF   ; 
- D 3 - I - 0x01732B 05:F31B: 84        .byte con_84_jsr
- D 3 - I - 0x01732C 05:F31C: CF FA     .word sub_84_FACF
- D 3 - I - 0x01732E 05:F31E: 2A        .byte $2A   ; 
- D 3 - I - 0x01732F 05:F31F: 24        .byte $24   ; 
- D 3 - I - 0x017330 05:F320: 93        .byte $93   ; 
- D 3 - I - 0x017331 05:F321: FF        .byte $FF   ; 
- D 3 - I - 0x017332 05:F322: 86        .byte $86   ; 
- D 3 - I - 0x017333 05:F323: EA        .byte $EA   ; 
- D 3 - I - 0x017334 05:F324: 81        .byte $81   ; 
- D 3 - I - 0x017335 05:F325: 92        .byte con_92_loop, $01
- D 3 - I - 0x017337 05:F327: 8A FA     .word off_92_FA8A
- D 3 - I - 0x017339 05:F329: 86        .byte $86   ; 
- D 3 - I - 0x01733A 05:F32A: EF        .byte $EF   ; 
- D 3 - I - 0x01733B 05:F32B: 80        .byte $80   ; 
- D 3 - I - 0x01733C 05:F32C: 02        .byte $02   ; 
- D 3 - I - 0x01733D 05:F32D: 84        .byte con_84_jsr
- D 3 - I - 0x01733E 05:F32E: CF FA     .word sub_84_FACF
- D 3 - I - 0x017340 05:F330: 31        .byte $31   ; 
- D 3 - I - 0x017341 05:F331: 18        .byte $18   ; 
- D 3 - I - 0x017342 05:F332: 93        .byte $93   ; 
- D 3 - I - 0x017343 05:F333: 06        .byte $06   ; 
- D 3 - I - 0x017344 05:F334: 32        .byte $32   ; 
- D 3 - I - 0x017345 05:F335: 0C        .byte $0C   ; 
- D 3 - I - 0x017346 05:F336: 93        .byte $93   ; 
- D 3 - I - 0x017347 05:F337: FF        .byte $FF   ; 
- D 3 - I - 0x017348 05:F338: 84        .byte con_84_jsr
- D 3 - I - 0x017349 05:F339: CF FA     .word sub_84_FACF
- D 3 - I - 0x01734B 05:F33B: 2A        .byte $2A   ; 
- D 3 - I - 0x01734C 05:F33C: 24        .byte $24   ; 
- D 3 - I - 0x01734D 05:F33D: 93        .byte $93   ; 
- D 3 - I - 0x01734E 05:F33E: FF        .byte $FF   ; 
- D 3 - I - 0x01734F 05:F33F: 86        .byte $86   ; 
- D 3 - I - 0x017350 05:F340: E3        .byte $E3   ; 
- D 3 - I - 0x017351 05:F341: 81        .byte $81   ; 
- D 3 - I - 0x017352 05:F342: 86        .byte $86   ; 
- D 3 - I - 0x017353 05:F343: F0        .byte $F0   ; 
- D 3 - I - 0x017354 05:F344: 8C        .byte $8C   ; 
- D 3 - I - 0x017355 05:F345: 00        .byte $00   ; 
- D 3 - I - 0x017356 05:F346: 00        .byte $00   ; 
- D 3 - I - 0x017357 05:F347: 00        .byte $00   ; 
- D 3 - I - 0x017358 05:F348: 80        .byte $80   ; 
- D 3 - I - 0x017359 05:F349: 02        .byte $02   ; 
- D 3 - I - 0x01735A 05:F34A: 2E        .byte $2E   ; 
- D 3 - I - 0x01735B 05:F34B: 0C        .byte $0C   ; 
- D 3 - I - 0x01735C 05:F34C: 2C        .byte $2C   ; 
- D 3 - I - 0x01735D 05:F34D: 0C        .byte $0C   ; 
- D 3 - I - 0x01735E 05:F34E: 2A        .byte $2A   ; 
- D 3 - I - 0x01735F 05:F34F: 0C        .byte $0C   ; 
- D 3 - I - 0x017360 05:F350: 29        .byte $29   ; 
- D 3 - I - 0x017361 05:F351: 0C        .byte $0C   ; 
- D 3 - I - 0x017362 05:F352: 2A        .byte $2A   ; 
- D 3 - I - 0x017363 05:F353: 0C        .byte $0C   ; 
- D 3 - I - 0x017364 05:F354: 2E        .byte $2E   ; 
- D 3 - I - 0x017365 05:F355: 0C        .byte $0C   ; 
- D 3 - I - 0x017366 05:F356: 30        .byte $30   ; 
- D 3 - I - 0x017367 05:F357: 12        .byte $12   ; 
- D 3 - I - 0x017368 05:F358: 2E        .byte $2E   ; 
- D 3 - I - 0x017369 05:F359: 06        .byte $06   ; 
- D 3 - I - 0x01736A 05:F35A: 2C        .byte $2C   ; 
- D 3 - I - 0x01736B 05:F35B: 0C        .byte $0C   ; 
- D 3 - I - 0x01736C 05:F35C: 2C        .byte $2C   ; 
- D 3 - I - 0x01736D 05:F35D: 12        .byte $12   ; 
- D 3 - I - 0x01736E 05:F35E: 2A        .byte $2A   ; 
- D 3 - I - 0x01736F 05:F35F: 06        .byte $06   ; 
- D 3 - I - 0x017370 05:F360: 29        .byte $29   ; 
- D 3 - I - 0x017371 05:F361: 0C        .byte $0C   ; 
- D 3 - I - 0x017372 05:F362: 86        .byte $86   ; 
- D 3 - I - 0x017373 05:F363: FC        .byte $FC   ; 
- D 3 - I - 0x017374 05:F364: 81        .byte $81   ; 
- D 3 - I - 0x017375 05:F365: 86        .byte $86   ; 
- D 3 - I - 0x017376 05:F366: F0        .byte $F0   ; 
- D 3 - I - 0x017377 05:F367: 80        .byte $80   ; 
- D 3 - I - 0x017378 05:F368: 02        .byte $02   ; 
- D 3 - I - 0x017379 05:F369: 82        .byte $82   ; 
- D 3 - I - 0x01737A 05:F36A: 0C        .byte $0C   ; 
- D 3 - I - 0x01737B 05:F36B: 2E        .byte $2E   ; 
- D 3 - I - 0x01737C 05:F36C: 30        .byte $30   ; 
- D 3 - I - 0x01737D 05:F36D: 31        .byte $31   ; 
- D 3 - I - 0x01737E 05:F36E: 35        .byte $35   ; 
- D 3 - I - 0x01737F 05:F36F: 33        .byte $33   ; 
- D 3 - I - 0x017380 05:F370: 31        .byte $31   ; 
- D 3 - I - 0x017381 05:F371: 82        .byte $82   ; 
- D 3 - I - 0x017382 05:F372: 06        .byte $06   ; 
- D 3 - I - 0x017383 05:F373: 33        .byte $33   ; 
- D 3 - I - 0x017384 05:F374: 31        .byte $31   ; 
- D 3 - I - 0x017385 05:F375: 30        .byte $30   ; 
- D 3 - I - 0x017386 05:F376: 31        .byte $31   ; 
- D 3 - I - 0x017387 05:F377: 30        .byte $30   ; 
- D 3 - I - 0x017388 05:F378: 2E        .byte $2E   ; 
- D 3 - I - 0x017389 05:F379: 30        .byte $30   ; 
- D 3 - I - 0x01738A 05:F37A: 2E        .byte $2E   ; 
- D 3 - I - 0x01738B 05:F37B: 2C        .byte $2C   ; 
- D 3 - I - 0x01738C 05:F37C: 2E        .byte $2E   ; 
- D 3 - I - 0x01738D 05:F37D: 2C        .byte $2C   ; 
- D 3 - I - 0x01738E 05:F37E: 2A        .byte $2A   ; 
- D 3 - I - 0x01738F 05:F37F: 86        .byte $86   ; 
- D 3 - I - 0x017390 05:F380: FC        .byte $FC   ; 
- D 3 - I - 0x017391 05:F381: 81        .byte $81   ; 
- D 3 - I - 0x017392 05:F382: 8E        .byte $8E   ; 
- D 3 - I - 0x017393 05:F383: 30        .byte $30   ; 
- D 3 - I - 0x017394 05:F384: 82        .byte $82   ; 
- D 3 - I - 0x017395 05:F385: 02        .byte $02   ; 
- D 3 - I - 0x017396 05:F386: 80        .byte $80   ; 
- D 3 - I - 0x017397 05:F387: 03        .byte $03   ; 
- D 3 - I - 0x017398 05:F388: 86        .byte $86   ; 
- D 3 - I - 0x017399 05:F389: 07        .byte $07   ; 
- D 3 - I - 0x01739A 05:F38A: 8A        .byte $8A   ; 
- D 3 - I - 0x01739B 05:F38B: 30        .byte $30   ; 
- D 3 - I - 0x01739C 05:F38C: 00        .byte $00   ; 
- D 3 - I - 0x01739D 05:F38D: 02        .byte $02   ; 
- D 3 - I - 0x01739E 05:F38E: 84        .byte con_84_jsr
- D 3 - I - 0x01739F 05:F38F: B0 FD     .word sub_84_FDB0
- D 3 - I - 0x0173A1 05:F391: 84        .byte con_84_jsr
- D 3 - I - 0x0173A2 05:F392: B0 FD     .word sub_84_FDB0
- D 3 - I - 0x0173A4 05:F394: 86        .byte $86   ; 
- D 3 - I - 0x0173A5 05:F395: 08        .byte $08   ; 
- D 3 - I - 0x0173A6 05:F396: 8A        .byte $8A   ; 
- D 3 - I - 0x0173A7 05:F397: 50        .byte $50   ; 
- D 3 - I - 0x0173A8 05:F398: 01        .byte $01   ; 
- D 3 - I - 0x0173A9 05:F399: 01        .byte $01   ; 
- D 3 - I - 0x0173AA 05:F39A: 84        .byte con_84_jsr
- D 3 - I - 0x0173AB 05:F39B: BE FD     .word sub_84_FDBE
- D 3 - I - 0x0173AD 05:F39D: 84        .byte con_84_jsr
- D 3 - I - 0x0173AE 05:F39E: BE FD     .word sub_84_FDBE
- D 3 - I - 0x0173B0 05:F3A0: 84        .byte con_84_jsr
- D 3 - I - 0x0173B1 05:F3A1: BE FD     .word sub_84_FDBE
- D 3 - I - 0x0173B3 05:F3A3: 8B        .byte $8B   ; 
- D 3 - I - 0x0173B4 05:F3A4: 00        .byte $00   ; 
- D 3 - I - 0x0173B5 05:F3A5: 84        .byte con_84_jsr
- D 3 - I - 0x0173B6 05:F3A6: BE FD     .word sub_84_FDBE
- D 3 - I - 0x0173B8 05:F3A8: 8A        .byte $8A   ; 
- D 3 - I - 0x0173B9 05:F3A9: 20        .byte $20   ; 
- D 3 - I - 0x0173BA 05:F3AA: 00        .byte $00   ; 
- D 3 - I - 0x0173BB 05:F3AB: 02        .byte $02   ; 
- D 3 - I - 0x0173BC 05:F3AC: 84        .byte con_84_jsr
- D 3 - I - 0x0173BD 05:F3AD: BE FD     .word sub_84_FDBE
- D 3 - I - 0x0173BF 05:F3AF: 8B        .byte $8B   ; 
- D 3 - I - 0x0173C0 05:F3B0: 00        .byte $00   ; 
- D 3 - I - 0x0173C1 05:F3B1: 84        .byte con_84_jsr
- D 3 - I - 0x0173C2 05:F3B2: BE FD     .word sub_84_FDBE
- D 3 - I - 0x0173C4 05:F3B4: 81        .byte $81   ; 
- D 3 - I - 0x0173C5 05:F3B5: 86        .byte $86   ; 
- D 3 - I - 0x0173C6 05:F3B6: 07        .byte $07   ; 
- D 3 - I - 0x0173C7 05:F3B7: 8A        .byte $8A   ; 
- D 3 - I - 0x0173C8 05:F3B8: 30        .byte $30   ; 
- D 3 - I - 0x0173C9 05:F3B9: 00        .byte $00   ; 
- D 3 - I - 0x0173CA 05:F3BA: 02        .byte $02   ; 
- D 3 - I - 0x0173CB 05:F3BB: 84        .byte con_84_jsr
- D 3 - I - 0x0173CC 05:F3BC: B0 FD     .word sub_84_FDB0
- D 3 - I - 0x0173CE 05:F3BE: 84        .byte con_84_jsr
- D 3 - I - 0x0173CF 05:F3BF: B0 FD     .word sub_84_FDB0
- D 3 - I - 0x0173D1 05:F3C1: 86        .byte $86   ; 
- D 3 - I - 0x0173D2 05:F3C2: 14        .byte $14   ; 
- D 3 - I - 0x0173D3 05:F3C3: 8A        .byte $8A   ; 
- D 3 - I - 0x0173D4 05:F3C4: 50        .byte $50   ; 
- D 3 - I - 0x0173D5 05:F3C5: 01        .byte $01   ; 
- D 3 - I - 0x0173D6 05:F3C6: 01        .byte $01   ; 
- D 3 - I - 0x0173D7 05:F3C7: 84        .byte con_84_jsr
- D 3 - I - 0x0173D8 05:F3C8: BE FD     .word sub_84_FDBE
- D 3 - I - 0x0173DA 05:F3CA: 84        .byte con_84_jsr
- D 3 - I - 0x0173DB 05:F3CB: BE FD     .word sub_84_FDBE
- D 3 - I - 0x0173DD 05:F3CD: 84        .byte con_84_jsr
- D 3 - I - 0x0173DE 05:F3CE: BE FD     .word sub_84_FDBE
- D 3 - I - 0x0173E0 05:F3D0: 8B        .byte $8B   ; 
- D 3 - I - 0x0173E1 05:F3D1: 00        .byte $00   ; 
- D 3 - I - 0x0173E2 05:F3D2: 84        .byte con_84_jsr
- D 3 - I - 0x0173E3 05:F3D3: BE FD     .word sub_84_FDBE
- D 3 - I - 0x0173E5 05:F3D5: 8B        .byte $8B   ; 
- D 3 - I - 0x0173E6 05:F3D6: 01        .byte $01   ; 
- D 3 - I - 0x0173E7 05:F3D7: 8A        .byte $8A   ; 
- D 3 - I - 0x0173E8 05:F3D8: 00        .byte $00   ; 
- D 3 - I - 0x0173E9 05:F3D9: 00        .byte $00   ; 
- D 3 - I - 0x0173EA 05:F3DA: 02        .byte $02   ; 
- D 3 - I - 0x0173EB 05:F3DB: 82        .byte $82   ; 
- D 3 - I - 0x0173EC 05:F3DC: 00        .byte $00   ; 
- D 3 - I - 0x0173ED 05:F3DD: 32        .byte $32   ; 
- D 3 - I - 0x0173EE 05:F3DE: 01        .byte $01   ; 
- D 3 - I - 0x0173EF 05:F3DF: 83        .byte $83   ; 



_off020_F3E0_05_logo:
- D 3 - I - 0x0173F0 05:F3E0: 80        .byte $80   ; 
- D 3 - I - 0x0173F1 05:F3E1: 04        .byte $04   ; 
- D 3 - I - 0x0173F2 05:F3E2: 60        .byte $60   ; 
- D 3 - I - 0x0173F3 05:F3E3: 80        .byte $80   ; 
- D 3 - I - 0x0173F4 05:F3E4: 81        .byte $81   ; 
- D 3 - I - 0x0173F5 05:F3E5: 88        .byte con_88_jmp
- D 3 - I - 0x0173F6 05:F3E6: EA F3     .word loc_88_F3EA



_off020_F3E8_06:
- D 3 - I - 0x0173F8 05:F3E8: 60        .byte $60   ; 
- D 3 - I - 0x0173F9 05:F3E9: 05        .byte $05   ; 
loc_88_F3EA:
- D 3 - I - 0x0173FA 05:F3EA: 84        .byte con_84_jsr
- D 3 - I - 0x0173FB 05:F3EB: AC FA     .word sub_84_FAAC
- D 3 - I - 0x0173FD 05:F3ED: 10        .byte $10   ; 
- D 3 - I - 0x0173FE 05:F3EE: 29        .byte $29   ; 
- D 3 - I - 0x0173FF 05:F3EF: 84        .byte con_84_jsr
- D 3 - I - 0x017400 05:F3F0: AC FA     .word sub_84_FAAC
- D 3 - I - 0x017402 05:F3F2: 0D        .byte $0D   ; 
- D 3 - I - 0x017403 05:F3F3: 89        .byte $89   ; 
- D 3 - I - 0x017404 05:F3F4: 84        .byte con_84_jsr
- D 3 - I - 0x017405 05:F3F5: AC FA     .word sub_84_FAAC
- D 3 - I - 0x017407 05:F3F7: 0B        .byte $0B   ; 
- D 3 - I - 0x017408 05:F3F8: 29        .byte $29   ; 
- D 3 - I - 0x017409 05:F3F9: 84        .byte con_84_jsr
- D 3 - I - 0x01740A 05:F3FA: AC FA     .word sub_84_FAAC
- D 3 - I - 0x01740C 05:F3FC: 0E        .byte $0E   ; 
- D 3 - I - 0x01740D 05:F3FD: 89        .byte $89   ; 
- D 3 - I - 0x01740E 05:F3FE: 84        .byte con_84_jsr
- D 3 - I - 0x01740F 05:F3FF: AC FA     .word sub_84_FAAC
- D 3 - I - 0x017411 05:F401: 0B        .byte $0B   ; 
- D 3 - I - 0x017412 05:F402: 29        .byte $29   ; 
- D 3 - I - 0x017413 05:F403: 84        .byte con_84_jsr
- D 3 - I - 0x017414 05:F404: AC FA     .word sub_84_FAAC
- D 3 - I - 0x017416 05:F406: 0D        .byte $0D   ; 
- D 3 - I - 0x017417 05:F407: 89        .byte $89   ; 
- D 3 - I - 0x017418 05:F408: 84        .byte con_84_jsr
- D 3 - I - 0x017419 05:F409: AC FA     .word sub_84_FAAC
- D 3 - I - 0x01741B 05:F40B: 08        .byte $08   ; 
- D 3 - I - 0x01741C 05:F40C: 29        .byte $29   ; 
- D 3 - I - 0x01741D 05:F40D: 84        .byte con_84_jsr
- D 3 - I - 0x01741E 05:F40E: AC FA     .word sub_84_FAAC
- D 3 - I - 0x017420 05:F410: 0B        .byte $0B   ; 
- D 3 - I - 0x017421 05:F411: 89        .byte $89   ; 
- D 3 - I - 0x017422 05:F412: 84        .byte con_84_jsr
- D 3 - I - 0x017423 05:F413: AC FA     .word sub_84_FAAC
- D 3 - I - 0x017425 05:F415: 60        .byte $60   ; 
- D 3 - I - 0x017426 05:F416: B9        .byte $B9   ; 
- D 3 - I - 0x017427 05:F417: 80        .byte $80   ; 
- D 3 - I - 0x017428 05:F418: 04        .byte $04   ; 
- D 3 - I - 0x017429 05:F419: 84        .byte con_84_jsr
- D 3 - I - 0x01742A 05:F41A: BB FA     .word sub_84_FABB
- D 3 - I - 0x01742C 05:F41C: 10        .byte $10   ; 
- D 3 - I - 0x01742D 05:F41D: 0C        .byte $0C   ; 
- D 3 - I - 0x01742E 05:F41E: 0E        .byte $0E   ; 
- D 3 - I - 0x01742F 05:F41F: 08        .byte $08   ; 
- D 3 - I - 0x017430 05:F420: 84        .byte con_84_jsr
- D 3 - I - 0x017431 05:F421: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x017433 05:F423: 10        .byte $10   ; 
- D 3 - I - 0x017434 05:F424: 0E        .byte $0E   ; 
- D 3 - I - 0x017435 05:F425: 13        .byte $13   ; 
- D 3 - I - 0x017436 05:F426: 08        .byte $08   ; 
- D 3 - I - 0x017437 05:F427: 84        .byte con_84_jsr
- D 3 - I - 0x017438 05:F428: BB FA     .word sub_84_FABB
- D 3 - I - 0x01743A 05:F42A: 15        .byte $15   ; 
- D 3 - I - 0x01743B 05:F42B: 0C        .byte $0C   ; 
- D 3 - I - 0x01743C 05:F42C: 10        .byte $10   ; 
- D 3 - I - 0x01743D 05:F42D: 08        .byte $08   ; 
- D 3 - I - 0x01743E 05:F42E: 84        .byte con_84_jsr
- D 3 - I - 0x01743F 05:F42F: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x017441 05:F431: 09        .byte $09   ; 
- D 3 - I - 0x017442 05:F432: 0E        .byte $0E   ; 
- D 3 - I - 0x017443 05:F433: 0E        .byte $0E   ; 
- D 3 - I - 0x017444 05:F434: 08        .byte $08   ; 
- D 3 - I - 0x017445 05:F435: 84        .byte con_84_jsr
- D 3 - I - 0x017446 05:F436: BB FA     .word sub_84_FABB
- D 3 - I - 0x017448 05:F438: 07        .byte $07   ; 
- D 3 - I - 0x017449 05:F439: 0C        .byte $0C   ; 
- D 3 - I - 0x01744A 05:F43A: 0E        .byte $0E   ; 
- D 3 - I - 0x01744B 05:F43B: 08        .byte $08   ; 
- D 3 - I - 0x01744C 05:F43C: 84        .byte con_84_jsr
- D 3 - I - 0x01744D 05:F43D: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x01744F 05:F43F: 13        .byte $13   ; 
- D 3 - I - 0x017450 05:F440: 0E        .byte $0E   ; 
- D 3 - I - 0x017451 05:F441: 07        .byte $07   ; 
- D 3 - I - 0x017452 05:F442: 08        .byte $08   ; 
- D 3 - I - 0x017453 05:F443: 84        .byte con_84_jsr
- D 3 - I - 0x017454 05:F444: BB FA     .word sub_84_FABB
- D 3 - I - 0x017456 05:F446: 15        .byte $15   ; 
- D 3 - I - 0x017457 05:F447: 0C        .byte $0C   ; 
- D 3 - I - 0x017458 05:F448: 10        .byte $10   ; 
- D 3 - I - 0x017459 05:F449: 08        .byte $08   ; 
- D 3 - I - 0x01745A 05:F44A: 84        .byte con_84_jsr
- D 3 - I - 0x01745B 05:F44B: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x01745D 05:F44D: 09        .byte $09   ; 
- D 3 - I - 0x01745E 05:F44E: 0E        .byte $0E   ; 
- D 3 - I - 0x01745F 05:F44F: 84        .byte con_84_jsr
- D 3 - I - 0x017460 05:F450: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x017462 05:F452: 0E        .byte $0E   ; 
- D 3 - I - 0x017463 05:F453: 06        .byte $06   ; 
- D 3 - I - 0x017464 05:F454: 81        .byte $81   ; 
- D 3 - I - 0x017465 05:F455: 80        .byte $80   ; 
- D 3 - I - 0x017466 05:F456: 04        .byte $04   ; 
- D 3 - I - 0x017467 05:F457: 84        .byte con_84_jsr
- D 3 - I - 0x017468 05:F458: BB FA     .word sub_84_FABB
- D 3 - I - 0x01746A 05:F45A: 0B        .byte $0B   ; 
- D 3 - I - 0x01746B 05:F45B: 0C        .byte $0C   ; 
- D 3 - I - 0x01746C 05:F45C: 09        .byte $09   ; 
- D 3 - I - 0x01746D 05:F45D: 08        .byte $08   ; 
- D 3 - I - 0x01746E 05:F45E: 84        .byte con_84_jsr
- D 3 - I - 0x01746F 05:F45F: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x017471 05:F461: 0B        .byte $0B   ; 
- D 3 - I - 0x017472 05:F462: 0E        .byte $0E   ; 
- D 3 - I - 0x017473 05:F463: 0D        .byte $0D   ; 
- D 3 - I - 0x017474 05:F464: 08        .byte $08   ; 
- D 3 - I - 0x017475 05:F465: 84        .byte con_84_jsr
- D 3 - I - 0x017476 05:F466: BB FA     .word sub_84_FABB
- D 3 - I - 0x017478 05:F468: 0E        .byte $0E   ; 
- D 3 - I - 0x017479 05:F469: 04        .byte $04   ; 
- D 3 - I - 0x01747A 05:F46A: 0D        .byte $0D   ; 
- D 3 - I - 0x01747B 05:F46B: 08        .byte $08   ; 
- D 3 - I - 0x01747C 05:F46C: 84        .byte con_84_jsr
- D 3 - I - 0x01747D 05:F46D: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x01747F 05:F46F: 0B        .byte $0B   ; 
- D 3 - I - 0x017480 05:F470: 08        .byte $08   ; 
- D 3 - I - 0x017481 05:F471: 60        .byte $60   ; 
- D 3 - I - 0x017482 05:F472: 06        .byte $06   ; 
- D 3 - I - 0x017483 05:F473: 84        .byte con_84_jsr
- D 3 - I - 0x017484 05:F474: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x017486 05:F476: 09        .byte $09   ; 
- D 3 - I - 0x017487 05:F477: 08        .byte $08   ; 
- D 3 - I - 0x017488 05:F478: 60        .byte $60   ; 
- D 3 - I - 0x017489 05:F479: 06        .byte $06   ; 
- D 3 - I - 0x01748A 05:F47A: 84        .byte con_84_jsr
- D 3 - I - 0x01748B 05:F47B: BB FA     .word sub_84_FABB
- D 3 - I - 0x01748D 05:F47D: 0B        .byte $0B   ; 
- D 3 - I - 0x01748E 05:F47E: 14        .byte $14   ; 
- D 3 - I - 0x01748F 05:F47F: 84        .byte con_84_jsr
- D 3 - I - 0x017490 05:F480: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x017492 05:F482: 10        .byte $10   ; 
- D 3 - I - 0x017493 05:F483: 0E        .byte $0E   ; 
- D 3 - I - 0x017494 05:F484: 12        .byte $12   ; 
- D 3 - I - 0x017495 05:F485: 08        .byte $08   ; 
- D 3 - I - 0x017496 05:F486: 84        .byte con_84_jsr
- D 3 - I - 0x017497 05:F487: BB FA     .word sub_84_FABB
- D 3 - I - 0x017499 05:F489: 0E        .byte $0E   ; 
- D 3 - I - 0x01749A 05:F48A: 14        .byte $14   ; 
- D 3 - I - 0x01749B 05:F48B: 84        .byte con_84_jsr
- D 3 - I - 0x01749C 05:F48C: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x01749E 05:F48E: 0D        .byte $0D   ; 
- D 3 - I - 0x01749F 05:F48F: 0E        .byte $0E   ; 
- D 3 - I - 0x0174A0 05:F490: 0E        .byte $0E   ; 
- D 3 - I - 0x0174A1 05:F491: 08        .byte $08   ; 
- D 3 - I - 0x0174A2 05:F492: 81        .byte $81   ; 
- D 3 - I - 0x0174A3 05:F493: 80        .byte $80   ; 
- D 3 - I - 0x0174A4 05:F494: 04        .byte $04   ; 
- D 3 - I - 0x0174A5 05:F495: 84        .byte con_84_jsr
- D 3 - I - 0x0174A6 05:F496: BB FA     .word sub_84_FABB
- D 3 - I - 0x0174A8 05:F498: 06        .byte $06   ; 
- D 3 - I - 0x0174A9 05:F499: 0C        .byte $0C   ; 
- D 3 - I - 0x0174AA 05:F49A: 12        .byte $12   ; 
- D 3 - I - 0x0174AB 05:F49B: 08        .byte $08   ; 
- D 3 - I - 0x0174AC 05:F49C: 84        .byte con_84_jsr
- D 3 - I - 0x0174AD 05:F49D: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x0174AF 05:F49F: 06        .byte $06   ; 
- D 3 - I - 0x0174B0 05:F4A0: 0E        .byte $0E   ; 
- D 3 - I - 0x0174B1 05:F4A1: 10        .byte $10   ; 
- D 3 - I - 0x0174B2 05:F4A2: 08        .byte $08   ; 
- D 3 - I - 0x0174B3 05:F4A3: 84        .byte con_84_jsr
- D 3 - I - 0x0174B4 05:F4A4: BB FA     .word sub_84_FABB
- D 3 - I - 0x0174B6 05:F4A6: 12        .byte $12   ; 
- D 3 - I - 0x0174B7 05:F4A7: 04        .byte $04   ; 
- D 3 - I - 0x0174B8 05:F4A8: 84        .byte con_84_jsr
- D 3 - I - 0x0174B9 05:F4A9: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x0174BB 05:F4AB: 10        .byte $10   ; 
- D 3 - I - 0x0174BC 05:F4AC: 06        .byte $06   ; 
- D 3 - I - 0x0174BD 05:F4AD: 84        .byte con_84_jsr
- D 3 - I - 0x0174BE 05:F4AE: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x0174C0 05:F4B0: 0D        .byte $0D   ; 
- D 3 - I - 0x0174C1 05:F4B1: 06        .byte $06   ; 
- D 3 - I - 0x0174C2 05:F4B2: 84        .byte con_84_jsr
- D 3 - I - 0x0174C3 05:F4B3: BB FA     .word sub_84_FABB
- D 3 - I - 0x0174C5 05:F4B5: 0B        .byte $0B   ; 
- D 3 - I - 0x0174C6 05:F4B6: 04        .byte $04   ; 
- D 3 - I - 0x0174C7 05:F4B7: 84        .byte con_84_jsr
- D 3 - I - 0x0174C8 05:F4B8: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x0174CA 05:F4BA: 09        .byte $09   ; 
- D 3 - I - 0x0174CB 05:F4BB: 06        .byte $06   ; 
- D 3 - I - 0x0174CC 05:F4BC: 84        .byte con_84_jsr
- D 3 - I - 0x0174CD 05:F4BD: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x0174CF 05:F4BF: 08        .byte $08   ; 
- D 3 - I - 0x0174D0 05:F4C0: 06        .byte $06   ; 
- D 3 - I - 0x0174D1 05:F4C1: 84        .byte con_84_jsr
- D 3 - I - 0x0174D2 05:F4C2: BB FA     .word sub_84_FABB
- D 3 - I - 0x0174D4 05:F4C4: 06        .byte $06   ; 
- D 3 - I - 0x0174D5 05:F4C5: 0C        .byte $0C   ; 
- D 3 - I - 0x0174D6 05:F4C6: 12        .byte $12   ; 
- D 3 - I - 0x0174D7 05:F4C7: 08        .byte $08   ; 
- D 3 - I - 0x0174D8 05:F4C8: 84        .byte con_84_jsr
- D 3 - I - 0x0174D9 05:F4C9: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x0174DB 05:F4CB: 06        .byte $06   ; 
- D 3 - I - 0x0174DC 05:F4CC: 0E        .byte $0E   ; 
- D 3 - I - 0x0174DD 05:F4CD: 84        .byte con_84_jsr
- D 3 - I - 0x0174DE 05:F4CE: BB FA     .word sub_84_FABB
- D 3 - I - 0x0174E0 05:F4D0: 10        .byte $10   ; 
- D 3 - I - 0x0174E1 05:F4D1: 04        .byte $04   ; 
- D 3 - I - 0x0174E2 05:F4D2: 84        .byte con_84_jsr
- D 3 - I - 0x0174E3 05:F4D3: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x0174E5 05:F4D5: 12        .byte $12   ; 
- D 3 - I - 0x0174E6 05:F4D6: 09        .byte $09   ; 
- D 3 - I - 0x0174E7 05:F4D7: 60        .byte $60   ; 
- D 3 - I - 0x0174E8 05:F4D8: 05        .byte $05   ; 
- D 3 - I - 0x0174E9 05:F4D9: 84        .byte con_84_jsr
- D 3 - I - 0x0174EA 05:F4DA: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x0174EC 05:F4DC: 12        .byte $12   ; 
- D 3 - I - 0x0174ED 05:F4DD: 09        .byte $09   ; 
- D 3 - I - 0x0174EE 05:F4DE: 60        .byte $60   ; 
- D 3 - I - 0x0174EF 05:F4DF: 05        .byte $05   ; 
- D 3 - I - 0x0174F0 05:F4E0: 84        .byte con_84_jsr
- D 3 - I - 0x0174F1 05:F4E1: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x0174F3 05:F4E3: 12        .byte $12   ; 
- D 3 - I - 0x0174F4 05:F4E4: 09        .byte $09   ; 
- D 3 - I - 0x0174F5 05:F4E5: 60        .byte $60   ; 
- D 3 - I - 0x0174F6 05:F4E6: 05        .byte $05   ; 
- D 3 - I - 0x0174F7 05:F4E7: 81        .byte $81   ; 
- D 3 - I - 0x0174F8 05:F4E8: 80        .byte $80   ; 
- D 3 - I - 0x0174F9 05:F4E9: 04        .byte $04   ; 
- D 3 - I - 0x0174FA 05:F4EA: 84        .byte con_84_jsr
- D 3 - I - 0x0174FB 05:F4EB: AC FA     .word sub_84_FAAC
- D 3 - I - 0x0174FD 05:F4ED: 0D        .byte $0D   ; 
- D 3 - I - 0x0174FE 05:F4EE: 09        .byte $09   ; 
- D 3 - I - 0x0174FF 05:F4EF: 0B        .byte $0B   ; 
- D 3 - I - 0x017500 05:F4F0: 08        .byte $08   ; 
- D 3 - I - 0x017501 05:F4F1: 0D        .byte $0D   ; 
- D 3 - I - 0x017502 05:F4F2: 10        .byte $10   ; 
- D 3 - I - 0x017503 05:F4F3: 10        .byte $10   ; 
- D 3 - I - 0x017504 05:F4F4: 08        .byte $08   ; 
- D 3 - I - 0x017505 05:F4F5: 84        .byte con_84_jsr
- D 3 - I - 0x017506 05:F4F6: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x017508 05:F4F8: 0E        .byte $0E   ; 
- D 3 - I - 0x017509 05:F4F9: 06        .byte $06   ; 
- D 3 - I - 0x01750A 05:F4FA: 84        .byte con_84_jsr
- D 3 - I - 0x01750B 05:F4FB: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x01750D 05:F4FD: 0E        .byte $0E   ; 
- D 3 - I - 0x01750E 05:F4FE: 06        .byte $06   ; 
- D 3 - I - 0x01750F 05:F4FF: 84        .byte con_84_jsr
- D 3 - I - 0x017510 05:F500: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x017512 05:F502: 0E        .byte $0E   ; 
- D 3 - I - 0x017513 05:F503: 07        .byte $07   ; 
- D 3 - I - 0x017514 05:F504: 60        .byte $60   ; 
- D 3 - I - 0x017515 05:F505: 07        .byte $07   ; 
- D 3 - I - 0x017516 05:F506: 84        .byte con_84_jsr
- D 3 - I - 0x017517 05:F507: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x017519 05:F509: 0E        .byte $0E   ; 
- D 3 - I - 0x01751A 05:F50A: 07        .byte $07   ; 
- D 3 - I - 0x01751B 05:F50B: 60        .byte $60   ; 
- D 3 - I - 0x01751C 05:F50C: 07        .byte $07   ; 
- D 3 - I - 0x01751D 05:F50D: 81        .byte $81   ; 
- D 3 - I - 0x01751E 05:F50E: 60        .byte $60   ; 
- D 3 - I - 0x01751F 05:F50F: 10        .byte $10   ; 
- D 3 - I - 0x017520 05:F510: 84        .byte con_84_jsr
- D 3 - I - 0x017521 05:F511: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x017523 05:F513: 0E        .byte $0E   ; 
- D 3 - I - 0x017524 05:F514: 06        .byte $06   ; 
- D 3 - I - 0x017525 05:F515: 84        .byte con_84_jsr
- D 3 - I - 0x017526 05:F516: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x017528 05:F518: 0E        .byte $0E   ; 
- D 3 - I - 0x017529 05:F519: 06        .byte $06   ; 
- D 3 - I - 0x01752A 05:F51A: 84        .byte con_84_jsr
- D 3 - I - 0x01752B 05:F51B: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x01752D 05:F51D: 0E        .byte $0E   ; 
- D 3 - I - 0x01752E 05:F51E: 07        .byte $07   ; 
- D 3 - I - 0x01752F 05:F51F: 60        .byte $60   ; 
- D 3 - I - 0x017530 05:F520: 07        .byte $07   ; 
- D 3 - I - 0x017531 05:F521: 84        .byte con_84_jsr
- D 3 - I - 0x017532 05:F522: AC FA     .word sub_84_FAAC
- D 3 - I - 0x017534 05:F524: 60        .byte $60   ; 
- D 3 - I - 0x017535 05:F525: 89        .byte $89   ; 
- D 3 - I - 0x017536 05:F526: 60        .byte $60   ; 
- D 3 - I - 0x017537 05:F527: 90        .byte $90   ; 
- D 3 - I - 0x017538 05:F528: 60        .byte $60   ; 
- D 3 - I - 0x017539 05:F529: 90        .byte $90   ; 
- D 3 - I - 0x01753A 05:F52A: 60        .byte $60   ; 
- D 3 - I - 0x01753B 05:F52B: 90        .byte $90   ; 
- D 3 - I - 0x01753C 05:F52C: 80        .byte $80   ; 
- D 3 - I - 0x01753D 05:F52D: 02        .byte $02   ; 
- D 3 - I - 0x01753E 05:F52E: 84        .byte con_84_jsr
- D 3 - I - 0x01753F 05:F52F: AC FA     .word sub_84_FAAC
- D 3 - I - 0x017541 05:F531: 10        .byte $10   ; 
- D 3 - I - 0x017542 05:F532: 7D        .byte $7D   ; 
- D 3 - I - 0x017543 05:F533: 84        .byte con_84_jsr
- D 3 - I - 0x017544 05:F534: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x017546 05:F536: 0E        .byte $0E   ; 
- D 3 - I - 0x017547 05:F537: 04        .byte $04   ; 
- D 3 - I - 0x017548 05:F538: 84        .byte con_84_jsr
- D 3 - I - 0x017549 05:F539: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x01754B 05:F53B: 0E        .byte $0E   ; 
- D 3 - I - 0x01754C 05:F53C: 04        .byte $04   ; 
- D 3 - I - 0x01754D 05:F53D: 84        .byte con_84_jsr
- D 3 - I - 0x01754E 05:F53E: AC FA     .word sub_84_FAAC
- D 3 - I - 0x017550 05:F540: 10        .byte $10   ; 
- D 3 - I - 0x017551 05:F541: 65        .byte $65   ; 
- D 3 - I - 0x017552 05:F542: 84        .byte con_84_jsr
- D 3 - I - 0x017553 05:F543: BB FA     .word sub_84_FABB
- D 3 - I - 0x017555 05:F545: 0D        .byte $0D   ; 
- D 3 - I - 0x017556 05:F546: 02        .byte $02   ; 
- D 3 - I - 0x017557 05:F547: 84        .byte con_84_jsr
- D 3 - I - 0x017558 05:F548: BB FA     .word sub_84_FABB
- D 3 - I - 0x01755A 05:F54A: 0D        .byte $0D   ; 
- D 3 - I - 0x01755B 05:F54B: 02        .byte $02   ; 
- D 3 - I - 0x01755C 05:F54C: 84        .byte con_84_jsr
- D 3 - I - 0x01755D 05:F54D: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x01755F 05:F54F: 0E        .byte $0E   ; 
- D 3 - I - 0x017560 05:F550: 06        .byte $06   ; 
- D 3 - I - 0x017561 05:F551: 60        .byte $60   ; 
- D 3 - I - 0x017562 05:F552: 10        .byte $10   ; 
- D 3 - I - 0x017563 05:F553: 81        .byte $81   ; 
- D 3 - I - 0x017564 05:F554: 84        .byte con_84_jsr
- D 3 - I - 0x017565 05:F555: AC FA     .word sub_84_FAAC
- D 3 - I - 0x017567 05:F557: 08        .byte $08   ; 
- D 3 - I - 0x017568 05:F558: 7D        .byte $7D   ; 
- D 3 - I - 0x017569 05:F559: 84        .byte con_84_jsr
- D 3 - I - 0x01756A 05:F55A: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x01756C 05:F55C: 08        .byte $08   ; 
- D 3 - I - 0x01756D 05:F55D: 04        .byte $04   ; 
- D 3 - I - 0x01756E 05:F55E: 84        .byte con_84_jsr
- D 3 - I - 0x01756F 05:F55F: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x017571 05:F561: 08        .byte $08   ; 
- D 3 - I - 0x017572 05:F562: 04        .byte $04   ; 
- D 3 - I - 0x017573 05:F563: 84        .byte con_84_jsr
- D 3 - I - 0x017574 05:F564: AC FA     .word sub_84_FAAC
- D 3 - I - 0x017576 05:F566: 0F        .byte $0F   ; 
- D 3 - I - 0x017577 05:F567: 65        .byte $65   ; 
- D 3 - I - 0x017578 05:F568: 84        .byte con_84_jsr
- D 3 - I - 0x017579 05:F569: BB FA     .word sub_84_FABB
- D 3 - I - 0x01757B 05:F56B: 0F        .byte $0F   ; 
- D 3 - I - 0x01757C 05:F56C: 02        .byte $02   ; 
- D 3 - I - 0x01757D 05:F56D: 84        .byte con_84_jsr
- D 3 - I - 0x01757E 05:F56E: BB FA     .word sub_84_FABB
- D 3 - I - 0x017580 05:F570: 0F        .byte $0F   ; 
- D 3 - I - 0x017581 05:F571: 02        .byte $02   ; 
- D 3 - I - 0x017582 05:F572: 84        .byte con_84_jsr
- D 3 - I - 0x017583 05:F573: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x017585 05:F575: 0F        .byte $0F   ; 
- D 3 - I - 0x017586 05:F576: 16        .byte $16   ; 
- D 3 - I - 0x017587 05:F577: 84        .byte con_84_jsr
- D 3 - I - 0x017588 05:F578: AC FA     .word sub_84_FAAC
- D 3 - I - 0x01758A 05:F57A: 10        .byte $10   ; 
- D 3 - I - 0x01758B 05:F57B: 7D        .byte $7D   ; 
- D 3 - I - 0x01758C 05:F57C: 84        .byte con_84_jsr
- D 3 - I - 0x01758D 05:F57D: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x01758F 05:F57F: 10        .byte $10   ; 
- D 3 - I - 0x017590 05:F580: 04        .byte $04   ; 
- D 3 - I - 0x017591 05:F581: 84        .byte con_84_jsr
- D 3 - I - 0x017592 05:F582: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x017594 05:F584: 10        .byte $10   ; 
- D 3 - I - 0x017595 05:F585: 04        .byte $04   ; 
- D 3 - I - 0x017596 05:F586: 84        .byte con_84_jsr
- D 3 - I - 0x017597 05:F587: AC FA     .word sub_84_FAAC
- D 3 - I - 0x017599 05:F589: 0E        .byte $0E   ; 
- D 3 - I - 0x01759A 05:F58A: 65        .byte $65   ; 
- D 3 - I - 0x01759B 05:F58B: 84        .byte con_84_jsr
- D 3 - I - 0x01759C 05:F58C: BB FA     .word sub_84_FABB
- D 3 - I - 0x01759E 05:F58E: 0E        .byte $0E   ; 
- D 3 - I - 0x01759F 05:F58F: 02        .byte $02   ; 
- D 3 - I - 0x0175A0 05:F590: 84        .byte con_84_jsr
- D 3 - I - 0x0175A1 05:F591: BB FA     .word sub_84_FABB
- D 3 - I - 0x0175A3 05:F593: 0E        .byte $0E   ; 
- D 3 - I - 0x0175A4 05:F594: 02        .byte $02   ; 
- D 3 - I - 0x0175A5 05:F595: 84        .byte con_84_jsr
- D 3 - I - 0x0175A6 05:F596: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x0175A8 05:F598: 0E        .byte $0E   ; 
- D 3 - I - 0x0175A9 05:F599: 16        .byte $16   ; 
- D 3 - I - 0x0175AA 05:F59A: 80        .byte $80   ; 
- D 3 - I - 0x0175AB 05:F59B: 02        .byte $02   ; 
- D 3 - I - 0x0175AC 05:F59C: 84        .byte con_84_jsr
- D 3 - I - 0x0175AD 05:F59D: 1F FB     .word sub_84_FB1F
- D 3 - I - 0x0175AF 05:F59F: 84        .byte con_84_jsr
- D 3 - I - 0x0175B0 05:F5A0: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x0175B2 05:F5A2: 0B        .byte $0B   ; 
- D 3 - I - 0x0175B3 05:F5A3: 0A        .byte $0A   ; 
- D 3 - I - 0x0175B4 05:F5A4: 0B        .byte $0B   ; 
- D 3 - I - 0x0175B5 05:F5A5: 0C        .byte $0C   ; 
- D 3 - I - 0x0175B6 05:F5A6: 0D        .byte $0D   ; 
- D 3 - I - 0x0175B7 05:F5A7: 0C        .byte $0C   ; 
- D 3 - I - 0x0175B8 05:F5A8: 81        .byte $81   ; 
- D 3 - I - 0x0175B9 05:F5A9: 80        .byte $80   ; 
- D 3 - I - 0x0175BA 05:F5AA: 02        .byte $02   ; 
- D 3 - I - 0x0175BB 05:F5AB: 84        .byte con_84_jsr
- D 3 - I - 0x0175BC 05:F5AC: 1F FB     .word sub_84_FB1F
- D 3 - I - 0x0175BE 05:F5AE: 84        .byte con_84_jsr
- D 3 - I - 0x0175BF 05:F5AF: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x0175C1 05:F5B1: 10        .byte $10   ; 
- D 3 - I - 0x0175C2 05:F5B2: 0A        .byte $0A   ; 
- D 3 - I - 0x0175C3 05:F5B3: 10        .byte $10   ; 
- D 3 - I - 0x0175C4 05:F5B4: 0C        .byte $0C   ; 
- D 3 - I - 0x0175C5 05:F5B5: 0D        .byte $0D   ; 
- D 3 - I - 0x0175C6 05:F5B6: 0C        .byte $0C   ; 
- D 3 - I - 0x0175C7 05:F5B7: 81        .byte $81   ; 
- D 3 - I - 0x0175C8 05:F5B8: 80        .byte $80   ; 
- D 3 - I - 0x0175C9 05:F5B9: 04        .byte $04   ; 
- D 3 - I - 0x0175CA 05:F5BA: 84        .byte con_84_jsr
- D 3 - I - 0x0175CB 05:F5BB: BB FA     .word sub_84_FABB
- D 3 - I - 0x0175CD 05:F5BD: 0B        .byte $0B   ; 
- D 3 - I - 0x0175CE 05:F5BE: 14        .byte $14   ; 
- D 3 - I - 0x0175CF 05:F5BF: 12        .byte $12   ; 
- D 3 - I - 0x0175D0 05:F5C0: 0C        .byte $0C   ; 
- D 3 - I - 0x0175D1 05:F5C1: 84        .byte con_84_jsr
- D 3 - I - 0x0175D2 05:F5C2: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x0175D4 05:F5C4: 0B        .byte $0B   ; 
- D 3 - I - 0x0175D5 05:F5C5: 0A        .byte $0A   ; 
- D 3 - I - 0x0175D6 05:F5C6: 12        .byte $12   ; 
- D 3 - I - 0x0175D7 05:F5C7: 0C        .byte $0C   ; 
- D 3 - I - 0x0175D8 05:F5C8: 17        .byte $17   ; 
- D 3 - I - 0x0175D9 05:F5C9: 0C        .byte $0C   ; 
- D 3 - I - 0x0175DA 05:F5CA: 84        .byte con_84_jsr
- D 3 - I - 0x0175DB 05:F5CB: BB FA     .word sub_84_FABB
- D 3 - I - 0x0175DD 05:F5CD: 15        .byte $15   ; 
- D 3 - I - 0x0175DE 05:F5CE: 14        .byte $14   ; 
- D 3 - I - 0x0175DF 05:F5CF: 84        .byte con_84_jsr
- D 3 - I - 0x0175E0 05:F5D0: BB FA     .word sub_84_FABB
- D 3 - I - 0x0175E2 05:F5D2: 14        .byte $14   ; 
- D 3 - I - 0x0175E3 05:F5D3: 14        .byte $14   ; 
- D 3 - I - 0x0175E4 05:F5D4: 84        .byte con_84_jsr
- D 3 - I - 0x0175E5 05:F5D5: BB FA     .word sub_84_FABB
- D 3 - I - 0x0175E7 05:F5D7: 12        .byte $12   ; 
- D 3 - I - 0x0175E8 05:F5D8: 14        .byte $14   ; 
- D 3 - I - 0x0175E9 05:F5D9: 84        .byte con_84_jsr
- D 3 - I - 0x0175EA 05:F5DA: BB FA     .word sub_84_FABB
- D 3 - I - 0x0175EC 05:F5DC: 0B        .byte $0B   ; 
- D 3 - I - 0x0175ED 05:F5DD: 14        .byte $14   ; 
- D 3 - I - 0x0175EE 05:F5DE: 12        .byte $12   ; 
- D 3 - I - 0x0175EF 05:F5DF: 0C        .byte $0C   ; 
- D 3 - I - 0x0175F0 05:F5E0: 84        .byte con_84_jsr
- D 3 - I - 0x0175F1 05:F5E1: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x0175F3 05:F5E3: 17        .byte $17   ; 
- D 3 - I - 0x0175F4 05:F5E4: 0A        .byte $0A   ; 
- D 3 - I - 0x0175F5 05:F5E5: 12        .byte $12   ; 
- D 3 - I - 0x0175F6 05:F5E6: 0C        .byte $0C   ; 
- D 3 - I - 0x0175F7 05:F5E7: 84        .byte con_84_jsr
- D 3 - I - 0x0175F8 05:F5E8: BB FA     .word sub_84_FABB
- D 3 - I - 0x0175FA 05:F5EA: 09        .byte $09   ; 
- D 3 - I - 0x0175FB 05:F5EB: 08        .byte $08   ; 
- D 3 - I - 0x0175FC 05:F5EC: 84        .byte con_84_jsr
- D 3 - I - 0x0175FD 05:F5ED: BB FA     .word sub_84_FABB
- D 3 - I - 0x0175FF 05:F5EF: 0B        .byte $0B   ; 
- D 3 - I - 0x017600 05:F5F0: 14        .byte $14   ; 
- D 3 - I - 0x017601 05:F5F1: 17        .byte $17   ; 
- D 3 - I - 0x017602 05:F5F2: 0C        .byte $0C   ; 
- D 3 - I - 0x017603 05:F5F3: 84        .byte con_84_jsr
- D 3 - I - 0x017604 05:F5F4: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x017606 05:F5F6: 09        .byte $09   ; 
- D 3 - I - 0x017607 05:F5F7: 0A        .byte $0A   ; 
- D 3 - I - 0x017608 05:F5F8: 10        .byte $10   ; 
- D 3 - I - 0x017609 05:F5F9: 0C        .byte $0C   ; 
- D 3 - I - 0x01760A 05:F5FA: 15        .byte $15   ; 
- D 3 - I - 0x01760B 05:F5FB: 0C        .byte $0C   ; 
- D 3 - I - 0x01760C 05:F5FC: 81        .byte $81   ; 
- D 3 - I - 0x01760D 05:F5FD: 86        .byte $86   ; 
- D 3 - I - 0x01760E 05:F5FE: 02        .byte $02   ; 
- D 3 - I - 0x01760F 05:F5FF: 80        .byte $80   ; 
- D 3 - I - 0x017610 05:F600: 04        .byte $04   ; 
- D 3 - I - 0x017611 05:F601: 84        .byte con_84_jsr
- D 3 - I - 0x017612 05:F602: EA FA     .word sub_84_FAEA
- D 3 - I - 0x017614 05:F604: 81        .byte $81   ; 
- D 3 - I - 0x017615 05:F605: 86        .byte $86   ; 
- D 3 - I - 0x017616 05:F606: 07        .byte $07   ; 
- D 3 - I - 0x017617 05:F607: 80        .byte $80   ; 
- D 3 - I - 0x017618 05:F608: 04        .byte $04   ; 
- D 3 - I - 0x017619 05:F609: 84        .byte con_84_jsr
- D 3 - I - 0x01761A 05:F60A: EA FA     .word sub_84_FAEA
- D 3 - I - 0x01761C 05:F60C: 81        .byte $81   ; 
- D 3 - I - 0x01761D 05:F60D: 86        .byte $86   ; 
- D 3 - I - 0x01761E 05:F60E: 00        .byte $00   ; 
- D 3 - I - 0x01761F 05:F60F: 80        .byte $80   ; 
- D 3 - I - 0x017620 05:F610: 04        .byte $04   ; 
- D 3 - I - 0x017621 05:F611: 84        .byte con_84_jsr
- D 3 - I - 0x017622 05:F612: EA FA     .word sub_84_FAEA
- D 3 - I - 0x017624 05:F614: 81        .byte $81   ; 
- D 3 - I - 0x017625 05:F615: 80        .byte $80   ; 
- D 3 - I - 0x017626 05:F616: 03        .byte $03   ; 
- D 3 - I - 0x017627 05:F617: 84        .byte con_84_jsr
- D 3 - I - 0x017628 05:F618: BB FA     .word sub_84_FABB
- D 3 - I - 0x01762A 05:F61A: 12        .byte $12   ; 
- D 3 - I - 0x01762B 05:F61B: 08        .byte $08   ; 
- D 3 - I - 0x01762C 05:F61C: 06        .byte $06   ; 
- D 3 - I - 0x01762D 05:F61D: 0C        .byte $0C   ; 
- D 3 - I - 0x01762E 05:F61E: 84        .byte con_84_jsr
- D 3 - I - 0x01762F 05:F61F: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x017631 05:F621: 10        .byte $10   ; 
- D 3 - I - 0x017632 05:F622: 0A        .byte $0A   ; 
- D 3 - I - 0x017633 05:F623: 84        .byte con_84_jsr
- D 3 - I - 0x017634 05:F624: BB FA     .word sub_84_FABB
- D 3 - I - 0x017636 05:F626: 12        .byte $12   ; 
- D 3 - I - 0x017637 05:F627: 08        .byte $08   ; 
- D 3 - I - 0x017638 05:F628: 06        .byte $06   ; 
- D 3 - I - 0x017639 05:F629: 0C        .byte $0C   ; 
- D 3 - I - 0x01763A 05:F62A: 84        .byte con_84_jsr
- D 3 - I - 0x01763B 05:F62B: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x01763D 05:F62D: 12        .byte $12   ; 
- D 3 - I - 0x01763E 05:F62E: 0A        .byte $0A   ; 
- D 3 - I - 0x01763F 05:F62F: 84        .byte con_84_jsr
- D 3 - I - 0x017640 05:F630: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x017642 05:F632: 10        .byte $10   ; 
- D 3 - I - 0x017643 05:F633: 0A        .byte $0A   ; 
- D 3 - I - 0x017644 05:F634: 84        .byte con_84_jsr
- D 3 - I - 0x017645 05:F635: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x017647 05:F637: 10        .byte $10   ; 
- D 3 - I - 0x017648 05:F638: 0A        .byte $0A   ; 
- D 3 - I - 0x017649 05:F639: 84        .byte con_84_jsr
- D 3 - I - 0x01764A 05:F63A: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x01764C 05:F63C: 10        .byte $10   ; 
- D 3 - I - 0x01764D 05:F63D: 0A        .byte $0A   ; 
- D 3 - I - 0x01764E 05:F63E: 60        .byte $60   ; 
- D 3 - I - 0x01764F 05:F63F: 0C        .byte $0C   ; 
- D 3 - I - 0x017650 05:F640: 84        .byte con_84_jsr
- D 3 - I - 0x017651 05:F641: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x017653 05:F643: 0D        .byte $0D   ; 
- D 3 - I - 0x017654 05:F644: 0A        .byte $0A   ; 
- D 3 - I - 0x017655 05:F645: 84        .byte con_84_jsr
- D 3 - I - 0x017656 05:F646: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x017658 05:F648: 10        .byte $10   ; 
- D 3 - I - 0x017659 05:F649: 04        .byte $04   ; 
- D 3 - I - 0x01765A 05:F64A: 84        .byte con_84_jsr
- D 3 - I - 0x01765B 05:F64B: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x01765D 05:F64D: 10        .byte $10   ; 
- D 3 - I - 0x01765E 05:F64E: 04        .byte $04   ; 
- D 3 - I - 0x01765F 05:F64F: 81        .byte $81   ; 
- D 3 - I - 0x017660 05:F650: 84        .byte con_84_jsr
- D 3 - I - 0x017661 05:F651: BB FA     .word sub_84_FABB
- D 3 - I - 0x017663 05:F653: 12        .byte $12   ; 
- D 3 - I - 0x017664 05:F654: 08        .byte $08   ; 
- D 3 - I - 0x017665 05:F655: 06        .byte $06   ; 
- D 3 - I - 0x017666 05:F656: 0C        .byte $0C   ; 
- D 3 - I - 0x017667 05:F657: 84        .byte con_84_jsr
- D 3 - I - 0x017668 05:F658: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x01766A 05:F65A: 10        .byte $10   ; 
- D 3 - I - 0x01766B 05:F65B: 0A        .byte $0A   ; 
- D 3 - I - 0x01766C 05:F65C: 84        .byte con_84_jsr
- D 3 - I - 0x01766D 05:F65D: BB FA     .word sub_84_FABB
- D 3 - I - 0x01766F 05:F65F: 12        .byte $12   ; 
- D 3 - I - 0x017670 05:F660: 08        .byte $08   ; 
- D 3 - I - 0x017671 05:F661: 06        .byte $06   ; 
- D 3 - I - 0x017672 05:F662: 0C        .byte $0C   ; 
- D 3 - I - 0x017673 05:F663: 84        .byte con_84_jsr
- D 3 - I - 0x017674 05:F664: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x017676 05:F666: 12        .byte $12   ; 
- D 3 - I - 0x017677 05:F667: 0A        .byte $0A   ; 
- D 3 - I - 0x017678 05:F668: 84        .byte con_84_jsr
- D 3 - I - 0x017679 05:F669: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x01767B 05:F66B: 10        .byte $10   ; 
- D 3 - I - 0x01767C 05:F66C: 0A        .byte $0A   ; 
- D 3 - I - 0x01767D 05:F66D: 84        .byte con_84_jsr
- D 3 - I - 0x01767E 05:F66E: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x017680 05:F670: 10        .byte $10   ; 
- D 3 - I - 0x017681 05:F671: 0A        .byte $0A   ; 
- D 3 - I - 0x017682 05:F672: 84        .byte con_84_jsr
- D 3 - I - 0x017683 05:F673: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x017685 05:F675: 10        .byte $10   ; 
- D 3 - I - 0x017686 05:F676: 0A        .byte $0A   ; 
- D 3 - I - 0x017687 05:F677: 8F        .byte $8F   ; 
- D 3 - I - 0x017688 05:F678: 00        .byte $00   ; 
- D 3 - I - 0x017689 05:F679: 00        .byte $00   ; 
- D 3 - I - 0x01768A 05:F67A: 00        .byte $00   ; 
- D 3 - I - 0x01768B 05:F67B: 00        .byte $00   ; 
- D 3 - I - 0x01768C 05:F67C: 86        .byte $86   ; 
- D 3 - I - 0x01768D 05:F67D: 00        .byte $00   ; 
- D 3 - I - 0x01768E 05:F67E: 60        .byte $60   ; 
- D 3 - I - 0x01768F 05:F67F: 01        .byte $01   ; 
- D 3 - I - 0x017690 05:F680: 83        .byte $83   ; 



_off021_F681_05_logo:
- D 3 - I - 0x017691 05:F681: 8B        .byte $8B   ; 
- D 3 - I - 0x017692 05:F682: 01        .byte $01   ; 
- D 3 - I - 0x017693 05:F683: 87        .byte $87   ; 
- D 3 - I - 0x017694 05:F684: 8A        .byte $8A   ; 
- D 3 - I - 0x017695 05:F685: 00        .byte $00   ; 
- D 3 - I - 0x017696 05:F686: 00        .byte $00   ; 
- D 3 - I - 0x017697 05:F687: 02        .byte $02   ; 
- D 3 - I - 0x017698 05:F688: 80        .byte $80   ; 
- D 3 - I - 0x017699 05:F689: 03        .byte $03   ; 
- D 3 - I - 0x01769A 05:F68A: 01        .byte $01   ; 
- D 3 - I - 0x01769B 05:F68B: 80        .byte $80   ; 
- D 3 - I - 0x01769C 05:F68C: 81        .byte $81   ; 
- D 3 - I - 0x01769D 05:F68D: 01        .byte $01   ; 
- D 3 - I - 0x01769E 05:F68E: 7B        .byte $7B   ; 



_off021_F68F_06:
- D 3 - I - 0x01769F 05:F68F: 80        .byte $80   ; 
- D 3 - I - 0x0176A0 05:F690: 04        .byte $04   ; 
- D 3 - I - 0x0176A1 05:F691: 8A        .byte $8A   ; 
- D 3 - I - 0x0176A2 05:F692: 10        .byte $10   ; 
- D 3 - I - 0x0176A3 05:F693: 00        .byte $00   ; 
- D 3 - I - 0x0176A4 05:F694: 00        .byte $00   ; 
- D 3 - I - 0x0176A5 05:F695: 0B        .byte $0B   ; 
- D 3 - I - 0x0176A6 05:F696: 01        .byte $01   ; 
- D 3 - I - 0x0176A7 05:F697: 8B        .byte $8B   ; 
- D 3 - I - 0x0176A8 05:F698: 00        .byte $00   ; 
- D 3 - I - 0x0176A9 05:F699: 09        .byte $09   ; 
- D 3 - I - 0x0176AA 05:F69A: 01        .byte $01   ; 
- D 3 - I - 0x0176AB 05:F69B: 08        .byte $08   ; 
- D 3 - I - 0x0176AC 05:F69C: 01        .byte $01   ; 
- D 3 - I - 0x0176AD 05:F69D: 06        .byte $06   ; 
- D 3 - I - 0x0176AE 05:F69E: 01        .byte $01   ; 
- D 3 - I - 0x0176AF 05:F69F: 8B        .byte $8B   ; 
- D 3 - I - 0x0176B0 05:F6A0: 01        .byte $01   ; 
- D 3 - I - 0x0176B1 05:F6A1: 8A        .byte $8A   ; 
- D 3 - I - 0x0176B2 05:F6A2: B0        .byte $B0   ; 
- D 3 - I - 0x0176B3 05:F6A3: 00        .byte $00   ; 
- D 3 - I - 0x0176B4 05:F6A4: 02        .byte $02   ; 
- D 3 - I - 0x0176B5 05:F6A5: 0A        .byte $0A   ; 
- D 3 - I - 0x0176B6 05:F6A6: 01        .byte $01   ; 
- D 3 - I - 0x0176B7 05:F6A7: 8A        .byte $8A   ; 
- D 3 - I - 0x0176B8 05:F6A8: 60        .byte $60   ; 
- D 3 - I - 0x0176B9 05:F6A9: 05        .byte $05   ; 
- D 3 - I - 0x0176BA 05:F6AA: 01        .byte $01   ; 
- D 3 - I - 0x0176BB 05:F6AB: 06        .byte $06   ; 
- D 3 - I - 0x0176BC 05:F6AC: 03        .byte $03   ; 
- D 3 - I - 0x0176BD 05:F6AD: 05        .byte $05   ; 
- D 3 - I - 0x0176BE 05:F6AE: 04        .byte $04   ; 
- D 3 - I - 0x0176BF 05:F6AF: 04        .byte $04   ; 
- D 3 - I - 0x0176C0 05:F6B0: 05        .byte $05   ; 
- D 3 - I - 0x0176C1 05:F6B1: 03        .byte $03   ; 
- D 3 - I - 0x0176C2 05:F6B2: 1F        .byte $1F   ; 
- D 3 - I - 0x0176C3 05:F6B3: 8A        .byte $8A   ; 
- D 3 - I - 0x0176C4 05:F6B4: 10        .byte $10   ; 
- D 3 - I - 0x0176C5 05:F6B5: 00        .byte $00   ; 
- D 3 - I - 0x0176C6 05:F6B6: 00        .byte $00   ; 
- D 3 - I - 0x0176C7 05:F6B7: 0B        .byte $0B   ; 
- D 3 - I - 0x0176C8 05:F6B8: 01        .byte $01   ; 
- D 3 - I - 0x0176C9 05:F6B9: 8B        .byte $8B   ; 
- D 3 - I - 0x0176CA 05:F6BA: 00        .byte $00   ; 
- D 3 - I - 0x0176CB 05:F6BB: 09        .byte $09   ; 
- D 3 - I - 0x0176CC 05:F6BC: 01        .byte $01   ; 
- D 3 - I - 0x0176CD 05:F6BD: 08        .byte $08   ; 
- D 3 - I - 0x0176CE 05:F6BE: 01        .byte $01   ; 
- D 3 - I - 0x0176CF 05:F6BF: 06        .byte $06   ; 
- D 3 - I - 0x0176D0 05:F6C0: 01        .byte $01   ; 
- D 3 - I - 0x0176D1 05:F6C1: 8B        .byte $8B   ; 
- D 3 - I - 0x0176D2 05:F6C2: 01        .byte $01   ; 
- D 3 - I - 0x0176D3 05:F6C3: 8A        .byte $8A   ; 
- D 3 - I - 0x0176D4 05:F6C4: B0        .byte $B0   ; 
- D 3 - I - 0x0176D5 05:F6C5: 00        .byte $00   ; 
- D 3 - I - 0x0176D6 05:F6C6: 02        .byte $02   ; 
- D 3 - I - 0x0176D7 05:F6C7: 0A        .byte $0A   ; 
- D 3 - I - 0x0176D8 05:F6C8: 01        .byte $01   ; 
- D 3 - I - 0x0176D9 05:F6C9: 8A        .byte $8A   ; 
- D 3 - I - 0x0176DA 05:F6CA: 60        .byte $60   ; 
- D 3 - I - 0x0176DB 05:F6CB: 05        .byte $05   ; 
- D 3 - I - 0x0176DC 05:F6CC: 01        .byte $01   ; 
- D 3 - I - 0x0176DD 05:F6CD: 06        .byte $06   ; 
- D 3 - I - 0x0176DE 05:F6CE: 03        .byte $03   ; 
- D 3 - I - 0x0176DF 05:F6CF: 05        .byte $05   ; 
- D 3 - I - 0x0176E0 05:F6D0: 04        .byte $04   ; 
- D 3 - I - 0x0176E1 05:F6D1: 04        .byte $04   ; 
- D 3 - I - 0x0176E2 05:F6D2: 05        .byte $05   ; 
- D 3 - I - 0x0176E3 05:F6D3: 03        .byte $03   ; 
- D 3 - I - 0x0176E4 05:F6D4: 23        .byte $23   ; 
- D 3 - I - 0x0176E5 05:F6D5: 8A        .byte $8A   ; 
- D 3 - I - 0x0176E6 05:F6D6: 50        .byte $50   ; 
- D 3 - I - 0x0176E7 05:F6D7: 04        .byte $04   ; 
- D 3 - I - 0x0176E8 05:F6D8: 01        .byte $01   ; 
- D 3 - I - 0x0176E9 05:F6D9: 05        .byte $05   ; 
- D 3 - I - 0x0176EA 05:F6DA: 01        .byte $01   ; 
- D 3 - I - 0x0176EB 05:F6DB: 03        .byte $03   ; 
- D 3 - I - 0x0176EC 05:F6DC: 2F        .byte $2F   ; 
- D 3 - I - 0x0176ED 05:F6DD: 05        .byte $05   ; 
- D 3 - I - 0x0176EE 05:F6DE: 01        .byte $01   ; 
- D 3 - I - 0x0176EF 05:F6DF: 03        .byte $03   ; 
- D 3 - I - 0x0176F0 05:F6E0: 2B        .byte $2B   ; 
- D 3 - I - 0x0176F1 05:F6E1: 81        .byte $81   ; 
- D 3 - I - 0x0176F2 05:F6E2: 8A        .byte $8A   ; 
- D 3 - I - 0x0176F3 05:F6E3: 10        .byte $10   ; 
- D 3 - I - 0x0176F4 05:F6E4: 00        .byte $00   ; 
- D 3 - I - 0x0176F5 05:F6E5: 00        .byte $00   ; 
- D 3 - I - 0x0176F6 05:F6E6: 0B        .byte $0B   ; 
- D 3 - I - 0x0176F7 05:F6E7: 01        .byte $01   ; 
- D 3 - I - 0x0176F8 05:F6E8: 8B        .byte $8B   ; 
- D 3 - I - 0x0176F9 05:F6E9: 00        .byte $00   ; 
- D 3 - I - 0x0176FA 05:F6EA: 09        .byte $09   ; 
- D 3 - I - 0x0176FB 05:F6EB: 01        .byte $01   ; 
- D 3 - I - 0x0176FC 05:F6EC: 08        .byte $08   ; 
- D 3 - I - 0x0176FD 05:F6ED: 01        .byte $01   ; 
- D 3 - I - 0x0176FE 05:F6EE: 06        .byte $06   ; 
- D 3 - I - 0x0176FF 05:F6EF: 01        .byte $01   ; 
- D 3 - I - 0x017700 05:F6F0: 8B        .byte $8B   ; 
- D 3 - I - 0x017701 05:F6F1: 01        .byte $01   ; 
- D 3 - I - 0x017702 05:F6F2: 8A        .byte $8A   ; 
- D 3 - I - 0x017703 05:F6F3: B0        .byte $B0   ; 
- D 3 - I - 0x017704 05:F6F4: 00        .byte $00   ; 
- D 3 - I - 0x017705 05:F6F5: 02        .byte $02   ; 
- D 3 - I - 0x017706 05:F6F6: 0A        .byte $0A   ; 
- D 3 - I - 0x017707 05:F6F7: 01        .byte $01   ; 
- D 3 - I - 0x017708 05:F6F8: 8A        .byte $8A   ; 
- D 3 - I - 0x017709 05:F6F9: 50        .byte $50   ; 
- D 3 - I - 0x01770A 05:F6FA: 07        .byte $07   ; 
- D 3 - I - 0x01770B 05:F6FB: 01        .byte $01   ; 
- D 3 - I - 0x01770C 05:F6FC: 06        .byte $06   ; 
- D 3 - I - 0x01770D 05:F6FD: 03        .byte $03   ; 
- D 3 - I - 0x01770E 05:F6FE: 05        .byte $05   ; 
- D 3 - I - 0x01770F 05:F6FF: 04        .byte $04   ; 
- D 3 - I - 0x017710 05:F700: 04        .byte $04   ; 
- D 3 - I - 0x017711 05:F701: 05        .byte $05   ; 
- D 3 - I - 0x017712 05:F702: 03        .byte $03   ; 
- D 3 - I - 0x017713 05:F703: B3        .byte $B3   ; 
- D 3 - I - 0x017714 05:F704: 80        .byte $80   ; 
- D 3 - I - 0x017715 05:F705: 04        .byte $04   ; 
- D 3 - I - 0x017716 05:F706: 8A        .byte $8A   ; 
- D 3 - I - 0x017717 05:F707: 50        .byte $50   ; 
- D 3 - I - 0x017718 05:F708: 00        .byte $00   ; 
- D 3 - I - 0x017719 05:F709: 02        .byte $02   ; 
- D 3 - I - 0x01771A 05:F70A: 05        .byte $05   ; 
- D 3 - I - 0x01771B 05:F70B: 01        .byte $01   ; 
- D 3 - I - 0x01771C 05:F70C: 8A        .byte $8A   ; 
- D 3 - I - 0x01771D 05:F70D: 30        .byte $30   ; 
- D 3 - I - 0x01771E 05:F70E: 02        .byte $02   ; 
- D 3 - I - 0x01771F 05:F70F: 01        .byte $01   ; 
- D 3 - I - 0x017720 05:F710: 02        .byte $02   ; 
- D 3 - I - 0x017721 05:F711: 0F        .byte $0F   ; 
- D 3 - I - 0x017722 05:F712: 03        .byte $03   ; 
- D 3 - I - 0x017723 05:F713: 01        .byte $01   ; 
- D 3 - I - 0x017724 05:F714: 02        .byte $02   ; 
- D 3 - I - 0x017725 05:F715: 07        .byte $07   ; 
- D 3 - I - 0x017726 05:F716: 8A        .byte $8A   ; 
- D 3 - I - 0x017727 05:F717: 50        .byte $50   ; 
- D 3 - I - 0x017728 05:F718: 01        .byte $01   ; 
- D 3 - I - 0x017729 05:F719: 01        .byte $01   ; 
- D 3 - I - 0x01772A 05:F71A: 07        .byte $07   ; 
- D 3 - I - 0x01772B 05:F71B: 01        .byte $01   ; 
- D 3 - I - 0x01772C 05:F71C: 05        .byte $05   ; 
- D 3 - I - 0x01772D 05:F71D: 0F        .byte $0F   ; 
- D 3 - I - 0x01772E 05:F71E: 8A        .byte $8A   ; 
- D 3 - I - 0x01772F 05:F71F: 30        .byte $30   ; 
- D 3 - I - 0x017730 05:F720: 02        .byte $02   ; 
- D 3 - I - 0x017731 05:F721: 01        .byte $01   ; 
- D 3 - I - 0x017732 05:F722: 03        .byte $03   ; 
- D 3 - I - 0x017733 05:F723: 01        .byte $01   ; 
- D 3 - I - 0x017734 05:F724: 02        .byte $02   ; 
- D 3 - I - 0x017735 05:F725: 07        .byte $07   ; 
- D 3 - I - 0x017736 05:F726: 8A        .byte $8A   ; 
- D 3 - I - 0x017737 05:F727: 50        .byte $50   ; 
- D 3 - I - 0x017738 05:F728: 00        .byte $00   ; 
- D 3 - I - 0x017739 05:F729: 02        .byte $02   ; 
- D 3 - I - 0x01773A 05:F72A: 05        .byte $05   ; 
- D 3 - I - 0x01773B 05:F72B: 01        .byte $01   ; 
- D 3 - I - 0x01773C 05:F72C: 8A        .byte $8A   ; 
- D 3 - I - 0x01773D 05:F72D: 30        .byte $30   ; 
- D 3 - I - 0x01773E 05:F72E: 02        .byte $02   ; 
- D 3 - I - 0x01773F 05:F72F: 01        .byte $01   ; 
- D 3 - I - 0x017740 05:F730: 02        .byte $02   ; 
- D 3 - I - 0x017741 05:F731: 0F        .byte $0F   ; 
- D 3 - I - 0x017742 05:F732: 03        .byte $03   ; 
- D 3 - I - 0x017743 05:F733: 01        .byte $01   ; 
- D 3 - I - 0x017744 05:F734: 02        .byte $02   ; 
- D 3 - I - 0x017745 05:F735: 07        .byte $07   ; 
- D 3 - I - 0x017746 05:F736: 8A        .byte $8A   ; 
- D 3 - I - 0x017747 05:F737: 50        .byte $50   ; 
- D 3 - I - 0x017748 05:F738: 01        .byte $01   ; 
- D 3 - I - 0x017749 05:F739: 01        .byte $01   ; 
- D 3 - I - 0x01774A 05:F73A: 07        .byte $07   ; 
- D 3 - I - 0x01774B 05:F73B: 01        .byte $01   ; 
- D 3 - I - 0x01774C 05:F73C: 05        .byte $05   ; 
- D 3 - I - 0x01774D 05:F73D: 0F        .byte $0F   ; 
- D 3 - I - 0x01774E 05:F73E: 8A        .byte $8A   ; 
- D 3 - I - 0x01774F 05:F73F: 30        .byte $30   ; 
- D 3 - I - 0x017750 05:F740: 02        .byte $02   ; 
- D 3 - I - 0x017751 05:F741: 01        .byte $01   ; 
- D 3 - I - 0x017752 05:F742: 03        .byte $03   ; 
- D 3 - I - 0x017753 05:F743: 01        .byte $01   ; 
- D 3 - I - 0x017754 05:F744: 02        .byte $02   ; 
- D 3 - I - 0x017755 05:F745: 07        .byte $07   ; 
- D 3 - I - 0x017756 05:F746: 8A        .byte $8A   ; 
- D 3 - I - 0x017757 05:F747: 50        .byte $50   ; 
- D 3 - I - 0x017758 05:F748: 00        .byte $00   ; 
- D 3 - I - 0x017759 05:F749: 02        .byte $02   ; 
- D 3 - I - 0x01775A 05:F74A: 05        .byte $05   ; 
- D 3 - I - 0x01775B 05:F74B: 01        .byte $01   ; 
- D 3 - I - 0x01775C 05:F74C: 8A        .byte $8A   ; 
- D 3 - I - 0x01775D 05:F74D: 30        .byte $30   ; 
- D 3 - I - 0x01775E 05:F74E: 02        .byte $02   ; 
- D 3 - I - 0x01775F 05:F74F: 01        .byte $01   ; 
- D 3 - I - 0x017760 05:F750: 02        .byte $02   ; 
- D 3 - I - 0x017761 05:F751: 0F        .byte $0F   ; 
- D 3 - I - 0x017762 05:F752: 03        .byte $03   ; 
- D 3 - I - 0x017763 05:F753: 01        .byte $01   ; 
- D 3 - I - 0x017764 05:F754: 02        .byte $02   ; 
- D 3 - I - 0x017765 05:F755: 07        .byte $07   ; 
- D 3 - I - 0x017766 05:F756: 8A        .byte $8A   ; 
- D 3 - I - 0x017767 05:F757: 50        .byte $50   ; 
- D 3 - I - 0x017768 05:F758: 01        .byte $01   ; 
- D 3 - I - 0x017769 05:F759: 01        .byte $01   ; 
- D 3 - I - 0x01776A 05:F75A: 07        .byte $07   ; 
- D 3 - I - 0x01776B 05:F75B: 01        .byte $01   ; 
- D 3 - I - 0x01776C 05:F75C: 05        .byte $05   ; 
- D 3 - I - 0x01776D 05:F75D: 0F        .byte $0F   ; 
- D 3 - I - 0x01776E 05:F75E: 8A        .byte $8A   ; 
- D 3 - I - 0x01776F 05:F75F: 30        .byte $30   ; 
- D 3 - I - 0x017770 05:F760: 02        .byte $02   ; 
- D 3 - I - 0x017771 05:F761: 01        .byte $01   ; 
- D 3 - I - 0x017772 05:F762: 03        .byte $03   ; 
- D 3 - I - 0x017773 05:F763: 01        .byte $01   ; 
- D 3 - I - 0x017774 05:F764: 02        .byte $02   ; 
- D 3 - I - 0x017775 05:F765: 07        .byte $07   ; 
- D 3 - I - 0x017776 05:F766: 8A        .byte $8A   ; 
- D 3 - I - 0x017777 05:F767: 50        .byte $50   ; 
- D 3 - I - 0x017778 05:F768: 00        .byte $00   ; 
- D 3 - I - 0x017779 05:F769: 02        .byte $02   ; 
- D 3 - I - 0x01777A 05:F76A: 05        .byte $05   ; 
- D 3 - I - 0x01777B 05:F76B: 01        .byte $01   ; 
- D 3 - I - 0x01777C 05:F76C: 8A        .byte $8A   ; 
- D 3 - I - 0x01777D 05:F76D: 30        .byte $30   ; 
- D 3 - I - 0x01777E 05:F76E: 02        .byte $02   ; 
- D 3 - I - 0x01777F 05:F76F: 01        .byte $01   ; 
- D 3 - I - 0x017780 05:F770: 02        .byte $02   ; 
- D 3 - I - 0x017781 05:F771: 0F        .byte $0F   ; 
- D 3 - I - 0x017782 05:F772: 03        .byte $03   ; 
- D 3 - I - 0x017783 05:F773: 01        .byte $01   ; 
- D 3 - I - 0x017784 05:F774: 02        .byte $02   ; 
- D 3 - I - 0x017785 05:F775: 07        .byte $07   ; 
- D 3 - I - 0x017786 05:F776: 8A        .byte $8A   ; 
- D 3 - I - 0x017787 05:F777: 50        .byte $50   ; 
- D 3 - I - 0x017788 05:F778: 01        .byte $01   ; 
- D 3 - I - 0x017789 05:F779: 01        .byte $01   ; 
- D 3 - I - 0x01778A 05:F77A: 07        .byte $07   ; 
- D 3 - I - 0x01778B 05:F77B: 01        .byte $01   ; 
- D 3 - I - 0x01778C 05:F77C: 05        .byte $05   ; 
- D 3 - I - 0x01778D 05:F77D: 0F        .byte $0F   ; 
- D 3 - I - 0x01778E 05:F77E: 07        .byte $07   ; 
- D 3 - I - 0x01778F 05:F77F: 01        .byte $01   ; 
- D 3 - I - 0x017790 05:F780: 05        .byte $05   ; 
- D 3 - I - 0x017791 05:F781: 07        .byte $07   ; 
- D 3 - I - 0x017792 05:F782: 81        .byte $81   ; 
- D 3 - I - 0x017793 05:F783: 80        .byte $80   ; 
- D 3 - I - 0x017794 05:F784: 04        .byte $04   ; 
- D 3 - I - 0x017795 05:F785: 8A        .byte $8A   ; 
- D 3 - I - 0x017796 05:F786: 50        .byte $50   ; 
- D 3 - I - 0x017797 05:F787: 00        .byte $00   ; 
- D 3 - I - 0x017798 05:F788: 02        .byte $02   ; 
- D 3 - I - 0x017799 05:F789: 05        .byte $05   ; 
- D 3 - I - 0x01779A 05:F78A: 01        .byte $01   ; 
- D 3 - I - 0x01779B 05:F78B: 8A        .byte $8A   ; 
- D 3 - I - 0x01779C 05:F78C: 30        .byte $30   ; 
- D 3 - I - 0x01779D 05:F78D: 02        .byte $02   ; 
- D 3 - I - 0x01779E 05:F78E: 01        .byte $01   ; 
- D 3 - I - 0x01779F 05:F78F: 02        .byte $02   ; 
- D 3 - I - 0x0177A0 05:F790: 0F        .byte $0F   ; 
- D 3 - I - 0x0177A1 05:F791: 03        .byte $03   ; 
- D 3 - I - 0x0177A2 05:F792: 01        .byte $01   ; 
- D 3 - I - 0x0177A3 05:F793: 02        .byte $02   ; 
- D 3 - I - 0x0177A4 05:F794: 07        .byte $07   ; 
- D 3 - I - 0x0177A5 05:F795: 8A        .byte $8A   ; 
- D 3 - I - 0x0177A6 05:F796: 50        .byte $50   ; 
- D 3 - I - 0x0177A7 05:F797: 01        .byte $01   ; 
- D 3 - I - 0x0177A8 05:F798: 01        .byte $01   ; 
- D 3 - I - 0x0177A9 05:F799: 07        .byte $07   ; 
- D 3 - I - 0x0177AA 05:F79A: 01        .byte $01   ; 
- D 3 - I - 0x0177AB 05:F79B: 05        .byte $05   ; 
- D 3 - I - 0x0177AC 05:F79C: 0F        .byte $0F   ; 
- D 3 - I - 0x0177AD 05:F79D: 8A        .byte $8A   ; 
- D 3 - I - 0x0177AE 05:F79E: 30        .byte $30   ; 
- D 3 - I - 0x0177AF 05:F79F: 02        .byte $02   ; 
- D 3 - I - 0x0177B0 05:F7A0: 01        .byte $01   ; 
- D 3 - I - 0x0177B1 05:F7A1: 03        .byte $03   ; 
- D 3 - I - 0x0177B2 05:F7A2: 01        .byte $01   ; 
- D 3 - I - 0x0177B3 05:F7A3: 02        .byte $02   ; 
- D 3 - I - 0x0177B4 05:F7A4: 07        .byte $07   ; 
- D 3 - I - 0x0177B5 05:F7A5: 8A        .byte $8A   ; 
- D 3 - I - 0x0177B6 05:F7A6: 50        .byte $50   ; 
- D 3 - I - 0x0177B7 05:F7A7: 00        .byte $00   ; 
- D 3 - I - 0x0177B8 05:F7A8: 02        .byte $02   ; 
- D 3 - I - 0x0177B9 05:F7A9: 05        .byte $05   ; 
- D 3 - I - 0x0177BA 05:F7AA: 01        .byte $01   ; 
- D 3 - I - 0x0177BB 05:F7AB: 8A        .byte $8A   ; 
- D 3 - I - 0x0177BC 05:F7AC: 30        .byte $30   ; 
- D 3 - I - 0x0177BD 05:F7AD: 02        .byte $02   ; 
- D 3 - I - 0x0177BE 05:F7AE: 01        .byte $01   ; 
- D 3 - I - 0x0177BF 05:F7AF: 02        .byte $02   ; 
- D 3 - I - 0x0177C0 05:F7B0: 0F        .byte $0F   ; 
- D 3 - I - 0x0177C1 05:F7B1: 8A        .byte $8A   ; 
- D 3 - I - 0x0177C2 05:F7B2: 50        .byte $50   ; 
- D 3 - I - 0x0177C3 05:F7B3: 01        .byte $01   ; 
- D 3 - I - 0x0177C4 05:F7B4: 01        .byte $01   ; 
- D 3 - I - 0x0177C5 05:F7B5: 07        .byte $07   ; 
- D 3 - I - 0x0177C6 05:F7B6: 01        .byte $01   ; 
- D 3 - I - 0x0177C7 05:F7B7: 05        .byte $05   ; 
- D 3 - I - 0x0177C8 05:F7B8: 0F        .byte $0F   ; 
- D 3 - I - 0x0177C9 05:F7B9: 07        .byte $07   ; 
- D 3 - I - 0x0177CA 05:F7BA: 01        .byte $01   ; 
- D 3 - I - 0x0177CB 05:F7BB: 05        .byte $05   ; 
- D 3 - I - 0x0177CC 05:F7BC: 0F        .byte $0F   ; 
- D 3 - I - 0x0177CD 05:F7BD: 8A        .byte $8A   ; 
- D 3 - I - 0x0177CE 05:F7BE: 50        .byte $50   ; 
- D 3 - I - 0x0177CF 05:F7BF: 00        .byte $00   ; 
- D 3 - I - 0x0177D0 05:F7C0: 02        .byte $02   ; 
- D 3 - I - 0x0177D1 05:F7C1: 05        .byte $05   ; 
- D 3 - I - 0x0177D2 05:F7C2: 01        .byte $01   ; 
- D 3 - I - 0x0177D3 05:F7C3: 8A        .byte $8A   ; 
- D 3 - I - 0x0177D4 05:F7C4: 30        .byte $30   ; 
- D 3 - I - 0x0177D5 05:F7C5: 02        .byte $02   ; 
- D 3 - I - 0x0177D6 05:F7C6: 01        .byte $01   ; 
- D 3 - I - 0x0177D7 05:F7C7: 02        .byte $02   ; 
- D 3 - I - 0x0177D8 05:F7C8: 0F        .byte $0F   ; 
- D 3 - I - 0x0177D9 05:F7C9: 03        .byte $03   ; 
- D 3 - I - 0x0177DA 05:F7CA: 01        .byte $01   ; 
- D 3 - I - 0x0177DB 05:F7CB: 02        .byte $02   ; 
- D 3 - I - 0x0177DC 05:F7CC: 07        .byte $07   ; 
- D 3 - I - 0x0177DD 05:F7CD: 8A        .byte $8A   ; 
- D 3 - I - 0x0177DE 05:F7CE: 50        .byte $50   ; 
- D 3 - I - 0x0177DF 05:F7CF: 01        .byte $01   ; 
- D 3 - I - 0x0177E0 05:F7D0: 01        .byte $01   ; 
- D 3 - I - 0x0177E1 05:F7D1: 07        .byte $07   ; 
- D 3 - I - 0x0177E2 05:F7D2: 01        .byte $01   ; 
- D 3 - I - 0x0177E3 05:F7D3: 05        .byte $05   ; 
- D 3 - I - 0x0177E4 05:F7D4: 0F        .byte $0F   ; 
- D 3 - I - 0x0177E5 05:F7D5: 8A        .byte $8A   ; 
- D 3 - I - 0x0177E6 05:F7D6: 30        .byte $30   ; 
- D 3 - I - 0x0177E7 05:F7D7: 02        .byte $02   ; 
- D 3 - I - 0x0177E8 05:F7D8: 01        .byte $01   ; 
- D 3 - I - 0x0177E9 05:F7D9: 03        .byte $03   ; 
- D 3 - I - 0x0177EA 05:F7DA: 01        .byte $01   ; 
- D 3 - I - 0x0177EB 05:F7DB: 02        .byte $02   ; 
- D 3 - I - 0x0177EC 05:F7DC: 07        .byte $07   ; 
- D 3 - I - 0x0177ED 05:F7DD: 8A        .byte $8A   ; 
- D 3 - I - 0x0177EE 05:F7DE: 50        .byte $50   ; 
- D 3 - I - 0x0177EF 05:F7DF: 00        .byte $00   ; 
- D 3 - I - 0x0177F0 05:F7E0: 02        .byte $02   ; 
- D 3 - I - 0x0177F1 05:F7E1: 05        .byte $05   ; 
- D 3 - I - 0x0177F2 05:F7E2: 01        .byte $01   ; 
- D 3 - I - 0x0177F3 05:F7E3: 8A        .byte $8A   ; 
- D 3 - I - 0x0177F4 05:F7E4: 30        .byte $30   ; 
- D 3 - I - 0x0177F5 05:F7E5: 02        .byte $02   ; 
- D 3 - I - 0x0177F6 05:F7E6: 01        .byte $01   ; 
- D 3 - I - 0x0177F7 05:F7E7: 02        .byte $02   ; 
- D 3 - I - 0x0177F8 05:F7E8: 0F        .byte $0F   ; 
- D 3 - I - 0x0177F9 05:F7E9: 03        .byte $03   ; 
- D 3 - I - 0x0177FA 05:F7EA: 01        .byte $01   ; 
- D 3 - I - 0x0177FB 05:F7EB: 02        .byte $02   ; 
- D 3 - I - 0x0177FC 05:F7EC: 07        .byte $07   ; 
- D 3 - I - 0x0177FD 05:F7ED: 8A        .byte $8A   ; 
- D 3 - I - 0x0177FE 05:F7EE: 50        .byte $50   ; 
- D 3 - I - 0x0177FF 05:F7EF: 01        .byte $01   ; 
- D 3 - I - 0x017800 05:F7F0: 01        .byte $01   ; 
- D 3 - I - 0x017801 05:F7F1: 07        .byte $07   ; 
- D 3 - I - 0x017802 05:F7F2: 01        .byte $01   ; 
- D 3 - I - 0x017803 05:F7F3: 05        .byte $05   ; 
- D 3 - I - 0x017804 05:F7F4: 0F        .byte $0F   ; 
- D 3 - I - 0x017805 05:F7F5: 8A        .byte $8A   ; 
- D 3 - I - 0x017806 05:F7F6: 30        .byte $30   ; 
- D 3 - I - 0x017807 05:F7F7: 02        .byte $02   ; 
- D 3 - I - 0x017808 05:F7F8: 01        .byte $01   ; 
- D 3 - I - 0x017809 05:F7F9: 03        .byte $03   ; 
- D 3 - I - 0x01780A 05:F7FA: 01        .byte $01   ; 
- D 3 - I - 0x01780B 05:F7FB: 02        .byte $02   ; 
- D 3 - I - 0x01780C 05:F7FC: 07        .byte $07   ; 
- D 3 - I - 0x01780D 05:F7FD: 81        .byte $81   ; 
- D 3 - I - 0x01780E 05:F7FE: 80        .byte $80   ; 
- D 3 - I - 0x01780F 05:F7FF: 03        .byte $03   ; 
- D 3 - I - 0x017810 05:F800: 84        .byte con_84_jsr
- D 3 - I - 0x017811 05:F801: B9 FC     .word sub_84_FCB9
- D 3 - I - 0x017813 05:F803: 07        .byte $07   ; 
- D 3 - I - 0x017814 05:F804: 01        .byte $01   ; 
- D 3 - I - 0x017815 05:F805: 05        .byte $05   ; 
- D 3 - I - 0x017816 05:F806: 0F        .byte $0F   ; 
- D 3 - I - 0x017817 05:F807: 81        .byte $81   ; 
- D 3 - I - 0x017818 05:F808: 84        .byte con_84_jsr
- D 3 - I - 0x017819 05:F809: B9 FC     .word sub_84_FCB9
- D 3 - I - 0x01781B 05:F80B: 07        .byte $07   ; 
- D 3 - I - 0x01781C 05:F80C: 01        .byte $01   ; 
- D 3 - I - 0x01781D 05:F80D: 05        .byte $05   ; 
- D 3 - I - 0x01781E 05:F80E: 0B        .byte $0B   ; 
- D 3 - I - 0x01781F 05:F80F: 80        .byte $80   ; 
- D 3 - I - 0x017820 05:F810: 04        .byte $04   ; 
- D 3 - I - 0x017821 05:F811: 8A        .byte $8A   ; 
- D 3 - I - 0x017822 05:F812: 10        .byte $10   ; 
- D 3 - I - 0x017823 05:F813: 00        .byte $00   ; 
- D 3 - I - 0x017824 05:F814: 00        .byte $00   ; 
- D 3 - I - 0x017825 05:F815: 0B        .byte $0B   ; 
- D 3 - I - 0x017826 05:F816: 01        .byte $01   ; 
- D 3 - I - 0x017827 05:F817: 8B        .byte $8B   ; 
- D 3 - I - 0x017828 05:F818: 00        .byte $00   ; 
- D 3 - I - 0x017829 05:F819: 09        .byte $09   ; 
- D 3 - I - 0x01782A 05:F81A: 01        .byte $01   ; 
- D 3 - I - 0x01782B 05:F81B: 08        .byte $08   ; 
- D 3 - I - 0x01782C 05:F81C: 01        .byte $01   ; 
- D 3 - I - 0x01782D 05:F81D: 06        .byte $06   ; 
- D 3 - I - 0x01782E 05:F81E: 01        .byte $01   ; 
- D 3 - I - 0x01782F 05:F81F: 8B        .byte $8B   ; 
- D 3 - I - 0x017830 05:F820: 01        .byte $01   ; 
- D 3 - I - 0x017831 05:F821: 8A        .byte $8A   ; 
- D 3 - I - 0x017832 05:F822: B0        .byte $B0   ; 
- D 3 - I - 0x017833 05:F823: 00        .byte $00   ; 
- D 3 - I - 0x017834 05:F824: 02        .byte $02   ; 
- D 3 - I - 0x017835 05:F825: 0A        .byte $0A   ; 
- D 3 - I - 0x017836 05:F826: 01        .byte $01   ; 
- D 3 - I - 0x017837 05:F827: 8A        .byte $8A   ; 
- D 3 - I - 0x017838 05:F828: 50        .byte $50   ; 
- D 3 - I - 0x017839 05:F829: 07        .byte $07   ; 
- D 3 - I - 0x01783A 05:F82A: 01        .byte $01   ; 
- D 3 - I - 0x01783B 05:F82B: 06        .byte $06   ; 
- D 3 - I - 0x01783C 05:F82C: 03        .byte $03   ; 
- D 3 - I - 0x01783D 05:F82D: 05        .byte $05   ; 
- D 3 - I - 0x01783E 05:F82E: 04        .byte $04   ; 
- D 3 - I - 0x01783F 05:F82F: 04        .byte $04   ; 
- D 3 - I - 0x017840 05:F830: 05        .byte $05   ; 
- D 3 - I - 0x017841 05:F831: 03        .byte $03   ; 
- D 3 - I - 0x017842 05:F832: 23        .byte $23   ; 
- D 3 - I - 0x017843 05:F833: 8A        .byte $8A   ; 
- D 3 - I - 0x017844 05:F834: 50        .byte $50   ; 
- D 3 - I - 0x017845 05:F835: 01        .byte $01   ; 
- D 3 - I - 0x017846 05:F836: 01        .byte $01   ; 
- D 3 - I - 0x017847 05:F837: 07        .byte $07   ; 
- D 3 - I - 0x017848 05:F838: 01        .byte $01   ; 
- D 3 - I - 0x017849 05:F839: 05        .byte $05   ; 
- D 3 - I - 0x01784A 05:F83A: 07        .byte $07   ; 
- D 3 - I - 0x01784B 05:F83B: 07        .byte $07   ; 
- D 3 - I - 0x01784C 05:F83C: 01        .byte $01   ; 
- D 3 - I - 0x01784D 05:F83D: 05        .byte $05   ; 
- D 3 - I - 0x01784E 05:F83E: 07        .byte $07   ; 
- D 3 - I - 0x01784F 05:F83F: 07        .byte $07   ; 
- D 3 - I - 0x017850 05:F840: 01        .byte $01   ; 
- D 3 - I - 0x017851 05:F841: 05        .byte $05   ; 
- D 3 - I - 0x017852 05:F842: 0F        .byte $0F   ; 
- D 3 - I - 0x017853 05:F843: 07        .byte $07   ; 
- D 3 - I - 0x017854 05:F844: 01        .byte $01   ; 
- D 3 - I - 0x017855 05:F845: 05        .byte $05   ; 
- D 3 - I - 0x017856 05:F846: 0B        .byte $0B   ; 
- D 3 - I - 0x017857 05:F847: 81        .byte $81   ; 
- D 3 - I - 0x017858 05:F848: 8A        .byte $8A   ; 
- D 3 - I - 0x017859 05:F849: 00        .byte $00   ; 
- D 3 - I - 0x01785A 05:F84A: 00        .byte $00   ; 
- D 3 - I - 0x01785B 05:F84B: 02        .byte $02   ; 
- D 3 - I - 0x01785C 05:F84C: 01        .byte $01   ; 
- D 3 - I - 0x01785D 05:F84D: 14        .byte $14   ; 
- D 3 - I - 0x01785E 05:F84E: 8A        .byte $8A   ; 
- D 3 - I - 0x01785F 05:F84F: 50        .byte $50   ; 
- D 3 - I - 0x017860 05:F850: 01        .byte $01   ; 
- D 3 - I - 0x017861 05:F851: 01        .byte $01   ; 
- D 3 - I - 0x017862 05:F852: 07        .byte $07   ; 
- D 3 - I - 0x017863 05:F853: 01        .byte $01   ; 
- D 3 - I - 0x017864 05:F854: 05        .byte $05   ; 
- D 3 - I - 0x017865 05:F855: 07        .byte $07   ; 
- D 3 - I - 0x017866 05:F856: 07        .byte $07   ; 
- D 3 - I - 0x017867 05:F857: 01        .byte $01   ; 
- D 3 - I - 0x017868 05:F858: 05        .byte $05   ; 
- D 3 - I - 0x017869 05:F859: 07        .byte $07   ; 
- D 3 - I - 0x01786A 05:F85A: 07        .byte $07   ; 
- D 3 - I - 0x01786B 05:F85B: 01        .byte $01   ; 
- D 3 - I - 0x01786C 05:F85C: 05        .byte $05   ; 
- D 3 - I - 0x01786D 05:F85D: 0B        .byte $0B   ; 
- D 3 - I - 0x01786E 05:F85E: 8A        .byte $8A   ; 
- D 3 - I - 0x01786F 05:F85F: 10        .byte $10   ; 
- D 3 - I - 0x017870 05:F860: 00        .byte $00   ; 
- D 3 - I - 0x017871 05:F861: 00        .byte $00   ; 
- D 3 - I - 0x017872 05:F862: 0B        .byte $0B   ; 
- D 3 - I - 0x017873 05:F863: 01        .byte $01   ; 
- D 3 - I - 0x017874 05:F864: 8B        .byte $8B   ; 
- D 3 - I - 0x017875 05:F865: 00        .byte $00   ; 
- D 3 - I - 0x017876 05:F866: 09        .byte $09   ; 
- D 3 - I - 0x017877 05:F867: 01        .byte $01   ; 
- D 3 - I - 0x017878 05:F868: 08        .byte $08   ; 
- D 3 - I - 0x017879 05:F869: 01        .byte $01   ; 
- D 3 - I - 0x01787A 05:F86A: 06        .byte $06   ; 
- D 3 - I - 0x01787B 05:F86B: 01        .byte $01   ; 
- D 3 - I - 0x01787C 05:F86C: 8B        .byte $8B   ; 
- D 3 - I - 0x01787D 05:F86D: 01        .byte $01   ; 
- D 3 - I - 0x01787E 05:F86E: 8A        .byte $8A   ; 
- D 3 - I - 0x01787F 05:F86F: B0        .byte $B0   ; 
- D 3 - I - 0x017880 05:F870: 00        .byte $00   ; 
- D 3 - I - 0x017881 05:F871: 02        .byte $02   ; 
- D 3 - I - 0x017882 05:F872: 0A        .byte $0A   ; 
- D 3 - I - 0x017883 05:F873: 01        .byte $01   ; 
- D 3 - I - 0x017884 05:F874: 8A        .byte $8A   ; 
- D 3 - I - 0x017885 05:F875: 60        .byte $60   ; 
- D 3 - I - 0x017886 05:F876: 0F        .byte $0F   ; 
- D 3 - I - 0x017887 05:F877: 01        .byte $01   ; 
- D 3 - I - 0x017888 05:F878: 06        .byte $06   ; 
- D 3 - I - 0x017889 05:F879: 03        .byte $03   ; 
- D 3 - I - 0x01788A 05:F87A: 05        .byte $05   ; 
- D 3 - I - 0x01788B 05:F87B: 04        .byte $04   ; 
- D 3 - I - 0x01788C 05:F87C: 04        .byte $04   ; 
- D 3 - I - 0x01788D 05:F87D: 05        .byte $05   ; 
- D 3 - I - 0x01788E 05:F87E: 03        .byte $03   ; 
- D 3 - I - 0x01788F 05:F87F: 84        .byte $84   ; 
- D 3 - I - 0x017890 05:F880: 8B        .byte $8B   ; 
- D 3 - I - 0x017891 05:F881: 00        .byte $00   ; 
- D 3 - I - 0x017892 05:F882: 03        .byte $03   ; 
- D 3 - I - 0x017893 05:F883: 90        .byte $90   ; 
- D 3 - I - 0x017894 05:F884: 03        .byte $03   ; 
- D 3 - I - 0x017895 05:F885: 90        .byte $90   ; 
- D 3 - I - 0x017896 05:F886: 03        .byte $03   ; 
- D 3 - I - 0x017897 05:F887: 8C        .byte $8C   ; 
- D 3 - I - 0x017898 05:F888: 8B        .byte $8B   ; 
- D 3 - I - 0x017899 05:F889: 01        .byte $01   ; 
- D 3 - I - 0x01789A 05:F88A: 80        .byte $80   ; 
- D 3 - I - 0x01789B 05:F88B: 03        .byte $03   ; 
- D 3 - I - 0x01789C 05:F88C: 84        .byte con_84_jsr
- D 3 - I - 0x01789D 05:F88D: AA FB     .word sub_84_FBAA
- D 3 - I - 0x01789F 05:F88F: 05        .byte $05   ; 
- D 3 - I - 0x0178A0 05:F890: 13        .byte $13   ; 
- D 3 - I - 0x0178A1 05:F891: 81        .byte $81   ; 
- D 3 - I - 0x0178A2 05:F892: 84        .byte con_84_jsr
- D 3 - I - 0x0178A3 05:F893: AA FB     .word sub_84_FBAA
- D 3 - I - 0x0178A5 05:F895: 05        .byte $05   ; 
- D 3 - I - 0x0178A6 05:F896: 16        .byte $16   ; 
- D 3 - I - 0x0178A7 05:F897: 80        .byte $80   ; 
- D 3 - I - 0x0178A8 05:F898: 08        .byte $08   ; 
- D 3 - I - 0x0178A9 05:F899: 8A        .byte $8A   ; 
- D 3 - I - 0x0178AA 05:F89A: 50        .byte $50   ; 
- D 3 - I - 0x0178AB 05:F89B: 00        .byte $00   ; 
- D 3 - I - 0x0178AC 05:F89C: 02        .byte $02   ; 
- D 3 - I - 0x0178AD 05:F89D: 05        .byte $05   ; 
- D 3 - I - 0x0178AE 05:F89E: 01        .byte $01   ; 
- D 3 - I - 0x0178AF 05:F89F: 8A        .byte $8A   ; 
- D 3 - I - 0x0178B0 05:F8A0: 30        .byte $30   ; 
- D 3 - I - 0x0178B1 05:F8A1: 01        .byte $01   ; 
- D 3 - I - 0x0178B2 05:F8A2: 01        .byte $01   ; 
- D 3 - I - 0x0178B3 05:F8A3: 02        .byte $02   ; 
- D 3 - I - 0x0178B4 05:F8A4: 0B        .byte $0B   ; 
- D 3 - I - 0x0178B5 05:F8A5: 03        .byte $03   ; 
- D 3 - I - 0x0178B6 05:F8A6: 01        .byte $01   ; 
- D 3 - I - 0x0178B7 05:F8A7: 02        .byte $02   ; 
- D 3 - I - 0x0178B8 05:F8A8: 0B        .byte $0B   ; 
- D 3 - I - 0x0178B9 05:F8A9: 03        .byte $03   ; 
- D 3 - I - 0x0178BA 05:F8AA: 01        .byte $01   ; 
- D 3 - I - 0x0178BB 05:F8AB: 02        .byte $02   ; 
- D 3 - I - 0x0178BC 05:F8AC: 0B        .byte $0B   ; 
- D 3 - I - 0x0178BD 05:F8AD: 8A        .byte $8A   ; 
- D 3 - I - 0x0178BE 05:F8AE: 50        .byte $50   ; 
- D 3 - I - 0x0178BF 05:F8AF: 01        .byte $01   ; 
- D 3 - I - 0x0178C0 05:F8B0: 01        .byte $01   ; 
- D 3 - I - 0x0178C1 05:F8B1: 07        .byte $07   ; 
- D 3 - I - 0x0178C2 05:F8B2: 01        .byte $01   ; 
- D 3 - I - 0x0178C3 05:F8B3: 05        .byte $05   ; 
- D 3 - I - 0x0178C4 05:F8B4: 0B        .byte $0B   ; 
- D 3 - I - 0x0178C5 05:F8B5: 8A        .byte $8A   ; 
- D 3 - I - 0x0178C6 05:F8B6: 30        .byte $30   ; 
- D 3 - I - 0x0178C7 05:F8B7: 01        .byte $01   ; 
- D 3 - I - 0x0178C8 05:F8B8: 01        .byte $01   ; 
- D 3 - I - 0x0178C9 05:F8B9: 03        .byte $03   ; 
- D 3 - I - 0x0178CA 05:F8BA: 01        .byte $01   ; 
- D 3 - I - 0x0178CB 05:F8BB: 02        .byte $02   ; 
- D 3 - I - 0x0178CC 05:F8BC: 0B        .byte $0B   ; 
- D 3 - I - 0x0178CD 05:F8BD: 03        .byte $03   ; 
- D 3 - I - 0x0178CE 05:F8BE: 01        .byte $01   ; 
- D 3 - I - 0x0178CF 05:F8BF: 02        .byte $02   ; 
- D 3 - I - 0x0178D0 05:F8C0: 0B        .byte $0B   ; 
- D 3 - I - 0x0178D1 05:F8C1: 8A        .byte $8A   ; 
- D 3 - I - 0x0178D2 05:F8C2: 50        .byte $50   ; 
- D 3 - I - 0x0178D3 05:F8C3: 00        .byte $00   ; 
- D 3 - I - 0x0178D4 05:F8C4: 02        .byte $02   ; 
- D 3 - I - 0x0178D5 05:F8C5: 05        .byte $05   ; 
- D 3 - I - 0x0178D6 05:F8C6: 01        .byte $01   ; 
- D 3 - I - 0x0178D7 05:F8C7: 8A        .byte $8A   ; 
- D 3 - I - 0x0178D8 05:F8C8: 30        .byte $30   ; 
- D 3 - I - 0x0178D9 05:F8C9: 00        .byte $00   ; 
- D 3 - I - 0x0178DA 05:F8CA: 02        .byte $02   ; 
- D 3 - I - 0x0178DB 05:F8CB: 03        .byte $03   ; 
- D 3 - I - 0x0178DC 05:F8CC: 0D        .byte $0D   ; 
- D 3 - I - 0x0178DD 05:F8CD: 8A        .byte $8A   ; 
- D 3 - I - 0x0178DE 05:F8CE: 30        .byte $30   ; 
- D 3 - I - 0x0178DF 05:F8CF: 01        .byte $01   ; 
- D 3 - I - 0x0178E0 05:F8D0: 01        .byte $01   ; 
- D 3 - I - 0x0178E1 05:F8D1: 03        .byte $03   ; 
- D 3 - I - 0x0178E2 05:F8D2: 0A        .byte $0A   ; 
- D 3 - I - 0x0178E3 05:F8D3: 8A        .byte $8A   ; 
- D 3 - I - 0x0178E4 05:F8D4: 50        .byte $50   ; 
- D 3 - I - 0x0178E5 05:F8D5: 00        .byte $00   ; 
- D 3 - I - 0x0178E6 05:F8D6: 02        .byte $02   ; 
- D 3 - I - 0x0178E7 05:F8D7: 05        .byte $05   ; 
- D 3 - I - 0x0178E8 05:F8D8: 01        .byte $01   ; 
- D 3 - I - 0x0178E9 05:F8D9: 8A        .byte $8A   ; 
- D 3 - I - 0x0178EA 05:F8DA: 30        .byte $30   ; 
- D 3 - I - 0x0178EB 05:F8DB: 00        .byte $00   ; 
- D 3 - I - 0x0178EC 05:F8DC: 02        .byte $02   ; 
- D 3 - I - 0x0178ED 05:F8DD: 03        .byte $03   ; 
- D 3 - I - 0x0178EE 05:F8DE: 0D        .byte $0D   ; 
- D 3 - I - 0x0178EF 05:F8DF: 8A        .byte $8A   ; 
- D 3 - I - 0x0178F0 05:F8E0: 30        .byte $30   ; 
- D 3 - I - 0x0178F1 05:F8E1: 01        .byte $01   ; 
- D 3 - I - 0x0178F2 05:F8E2: 01        .byte $01   ; 
- D 3 - I - 0x0178F3 05:F8E3: 03        .byte $03   ; 
- D 3 - I - 0x0178F4 05:F8E4: 0A        .byte $0A   ; 
- D 3 - I - 0x0178F5 05:F8E5: 8A        .byte $8A   ; 
- D 3 - I - 0x0178F6 05:F8E6: 50        .byte $50   ; 
- D 3 - I - 0x0178F7 05:F8E7: 00        .byte $00   ; 
- D 3 - I - 0x0178F8 05:F8E8: 02        .byte $02   ; 
- D 3 - I - 0x0178F9 05:F8E9: 05        .byte $05   ; 
- D 3 - I - 0x0178FA 05:F8EA: 01        .byte $01   ; 
- D 3 - I - 0x0178FB 05:F8EB: 8A        .byte $8A   ; 
- D 3 - I - 0x0178FC 05:F8EC: 30        .byte $30   ; 
- D 3 - I - 0x0178FD 05:F8ED: 00        .byte $00   ; 
- D 3 - I - 0x0178FE 05:F8EE: 02        .byte $02   ; 
- D 3 - I - 0x0178FF 05:F8EF: 03        .byte $03   ; 
- D 3 - I - 0x017900 05:F8F0: 0D        .byte $0D   ; 
- D 3 - I - 0x017901 05:F8F1: 8A        .byte $8A   ; 
- D 3 - I - 0x017902 05:F8F2: 30        .byte $30   ; 
- D 3 - I - 0x017903 05:F8F3: 01        .byte $01   ; 
- D 3 - I - 0x017904 05:F8F4: 01        .byte $01   ; 
- D 3 - I - 0x017905 05:F8F5: 03        .byte $03   ; 
- D 3 - I - 0x017906 05:F8F6: 0A        .byte $0A   ; 
- D 3 - I - 0x017907 05:F8F7: 8A        .byte $8A   ; 
- D 3 - I - 0x017908 05:F8F8: 50        .byte $50   ; 
- D 3 - I - 0x017909 05:F8F9: 00        .byte $00   ; 
- D 3 - I - 0x01790A 05:F8FA: 02        .byte $02   ; 
- D 3 - I - 0x01790B 05:F8FB: 05        .byte $05   ; 
- D 3 - I - 0x01790C 05:F8FC: 01        .byte $01   ; 
- D 3 - I - 0x01790D 05:F8FD: 8A        .byte $8A   ; 
- D 3 - I - 0x01790E 05:F8FE: 30        .byte $30   ; 
- D 3 - I - 0x01790F 05:F8FF: 02        .byte $02   ; 
- D 3 - I - 0x017910 05:F900: 01        .byte $01   ; 
- D 3 - I - 0x017911 05:F901: 02        .byte $02   ; 
- D 3 - I - 0x017912 05:F902: 0B        .byte $0B   ; 
- D 3 - I - 0x017913 05:F903: 03        .byte $03   ; 
- D 3 - I - 0x017914 05:F904: 01        .byte $01   ; 
- D 3 - I - 0x017915 05:F905: 02        .byte $02   ; 
- D 3 - I - 0x017916 05:F906: 0B        .byte $0B   ; 
- D 3 - I - 0x017917 05:F907: 03        .byte $03   ; 
- D 3 - I - 0x017918 05:F908: 01        .byte $01   ; 
- D 3 - I - 0x017919 05:F909: 02        .byte $02   ; 
- D 3 - I - 0x01791A 05:F90A: 0B        .byte $0B   ; 
- D 3 - I - 0x01791B 05:F90B: 8A        .byte $8A   ; 
- D 3 - I - 0x01791C 05:F90C: 50        .byte $50   ; 
- D 3 - I - 0x01791D 05:F90D: 01        .byte $01   ; 
- D 3 - I - 0x01791E 05:F90E: 01        .byte $01   ; 
- D 3 - I - 0x01791F 05:F90F: 07        .byte $07   ; 
- D 3 - I - 0x017920 05:F910: 01        .byte $01   ; 
- D 3 - I - 0x017921 05:F911: 05        .byte $05   ; 
- D 3 - I - 0x017922 05:F912: 0B        .byte $0B   ; 
- D 3 - I - 0x017923 05:F913: 8A        .byte $8A   ; 
- D 3 - I - 0x017924 05:F914: 30        .byte $30   ; 
- D 3 - I - 0x017925 05:F915: 01        .byte $01   ; 
- D 3 - I - 0x017926 05:F916: 01        .byte $01   ; 
- D 3 - I - 0x017927 05:F917: 03        .byte $03   ; 
- D 3 - I - 0x017928 05:F918: 01        .byte $01   ; 
- D 3 - I - 0x017929 05:F919: 02        .byte $02   ; 
- D 3 - I - 0x01792A 05:F91A: 0B        .byte $0B   ; 
- D 3 - I - 0x01792B 05:F91B: 8A        .byte $8A   ; 
- D 3 - I - 0x01792C 05:F91C: 50        .byte $50   ; 
- D 3 - I - 0x01792D 05:F91D: 00        .byte $00   ; 
- D 3 - I - 0x01792E 05:F91E: 02        .byte $02   ; 
- D 3 - I - 0x01792F 05:F91F: 05        .byte $05   ; 
- D 3 - I - 0x017930 05:F920: 01        .byte $01   ; 
- D 3 - I - 0x017931 05:F921: 8A        .byte $8A   ; 
- D 3 - I - 0x017932 05:F922: 30        .byte $30   ; 
- D 3 - I - 0x017933 05:F923: 01        .byte $01   ; 
- D 3 - I - 0x017934 05:F924: 01        .byte $01   ; 
- D 3 - I - 0x017935 05:F925: 02        .byte $02   ; 
- D 3 - I - 0x017936 05:F926: 0B        .byte $0B   ; 
- D 3 - I - 0x017937 05:F927: 8A        .byte $8A   ; 
- D 3 - I - 0x017938 05:F928: 50        .byte $50   ; 
- D 3 - I - 0x017939 05:F929: 00        .byte $00   ; 
- D 3 - I - 0x01793A 05:F92A: 02        .byte $02   ; 
- D 3 - I - 0x01793B 05:F92B: 05        .byte $05   ; 
- D 3 - I - 0x01793C 05:F92C: 01        .byte $01   ; 
- D 3 - I - 0x01793D 05:F92D: 8A        .byte $8A   ; 
- D 3 - I - 0x01793E 05:F92E: 30        .byte $30   ; 
- D 3 - I - 0x01793F 05:F92F: 01        .byte $01   ; 
- D 3 - I - 0x017940 05:F930: 01        .byte $01   ; 
- D 3 - I - 0x017941 05:F931: 02        .byte $02   ; 
- D 3 - I - 0x017942 05:F932: 0B        .byte $0B   ; 
- D 3 - I - 0x017943 05:F933: 03        .byte $03   ; 
- D 3 - I - 0x017944 05:F934: 01        .byte $01   ; 
- D 3 - I - 0x017945 05:F935: 02        .byte $02   ; 
- D 3 - I - 0x017946 05:F936: 0B        .byte $0B   ; 
- D 3 - I - 0x017947 05:F937: 03        .byte $03   ; 
- D 3 - I - 0x017948 05:F938: 01        .byte $01   ; 
- D 3 - I - 0x017949 05:F939: 02        .byte $02   ; 
- D 3 - I - 0x01794A 05:F93A: 0B        .byte $0B   ; 
- D 3 - I - 0x01794B 05:F93B: 8A        .byte $8A   ; 
- D 3 - I - 0x01794C 05:F93C: 50        .byte $50   ; 
- D 3 - I - 0x01794D 05:F93D: 01        .byte $01   ; 
- D 3 - I - 0x01794E 05:F93E: 01        .byte $01   ; 
- D 3 - I - 0x01794F 05:F93F: 07        .byte $07   ; 
- D 3 - I - 0x017950 05:F940: 01        .byte $01   ; 
- D 3 - I - 0x017951 05:F941: 05        .byte $05   ; 
- D 3 - I - 0x017952 05:F942: 0B        .byte $0B   ; 
- D 3 - I - 0x017953 05:F943: 8A        .byte $8A   ; 
- D 3 - I - 0x017954 05:F944: 30        .byte $30   ; 
- D 3 - I - 0x017955 05:F945: 01        .byte $01   ; 
- D 3 - I - 0x017956 05:F946: 01        .byte $01   ; 
- D 3 - I - 0x017957 05:F947: 03        .byte $03   ; 
- D 3 - I - 0x017958 05:F948: 01        .byte $01   ; 
- D 3 - I - 0x017959 05:F949: 02        .byte $02   ; 
- D 3 - I - 0x01795A 05:F94A: 0B        .byte $0B   ; 
- D 3 - I - 0x01795B 05:F94B: 03        .byte $03   ; 
- D 3 - I - 0x01795C 05:F94C: 01        .byte $01   ; 
- D 3 - I - 0x01795D 05:F94D: 02        .byte $02   ; 
- D 3 - I - 0x01795E 05:F94E: 0B        .byte $0B   ; 
- D 3 - I - 0x01795F 05:F94F: 81        .byte $81   ; 
- D 3 - I - 0x017960 05:F950: 80        .byte $80   ; 
- D 3 - I - 0x017961 05:F951: 0C        .byte $0C   ; 
- D 3 - I - 0x017962 05:F952: 8A        .byte $8A   ; 
- D 3 - I - 0x017963 05:F953: 50        .byte $50   ; 
- D 3 - I - 0x017964 05:F954: 00        .byte $00   ; 
- D 3 - I - 0x017965 05:F955: 02        .byte $02   ; 
- D 3 - I - 0x017966 05:F956: 05        .byte $05   ; 
- D 3 - I - 0x017967 05:F957: 01        .byte $01   ; 
- D 3 - I - 0x017968 05:F958: 8A        .byte $8A   ; 
- D 3 - I - 0x017969 05:F959: 40        .byte $40   ; 
- D 3 - I - 0x01796A 05:F95A: 00        .byte $00   ; 
- D 3 - I - 0x01796B 05:F95B: 01        .byte $01   ; 
- D 3 - I - 0x01796C 05:F95C: 02        .byte $02   ; 
- D 3 - I - 0x01796D 05:F95D: 0B        .byte $0B   ; 
- D 3 - I - 0x01796E 05:F95E: 03        .byte $03   ; 
- D 3 - I - 0x01796F 05:F95F: 01        .byte $01   ; 
- D 3 - I - 0x017970 05:F960: 02        .byte $02   ; 
- D 3 - I - 0x017971 05:F961: 05        .byte $05   ; 
- D 3 - I - 0x017972 05:F962: 03        .byte $03   ; 
- D 3 - I - 0x017973 05:F963: 01        .byte $01   ; 
- D 3 - I - 0x017974 05:F964: 02        .byte $02   ; 
- D 3 - I - 0x017975 05:F965: 05        .byte $05   ; 
- D 3 - I - 0x017976 05:F966: 03        .byte $03   ; 
- D 3 - I - 0x017977 05:F967: 01        .byte $01   ; 
- D 3 - I - 0x017978 05:F968: 05        .byte $05   ; 
- D 3 - I - 0x017979 05:F969: 0B        .byte $0B   ; 
- D 3 - I - 0x01797A 05:F96A: 8A        .byte $8A   ; 
- D 3 - I - 0x01797B 05:F96B: 50        .byte $50   ; 
- D 3 - I - 0x01797C 05:F96C: 01        .byte $01   ; 
- D 3 - I - 0x01797D 05:F96D: 01        .byte $01   ; 
- D 3 - I - 0x01797E 05:F96E: 07        .byte $07   ; 
- D 3 - I - 0x01797F 05:F96F: 01        .byte $01   ; 
- D 3 - I - 0x017980 05:F970: 05        .byte $05   ; 
- D 3 - I - 0x017981 05:F971: 0B        .byte $0B   ; 
- D 3 - I - 0x017982 05:F972: 8A        .byte $8A   ; 
- D 3 - I - 0x017983 05:F973: 40        .byte $40   ; 
- D 3 - I - 0x017984 05:F974: 00        .byte $00   ; 
- D 3 - I - 0x017985 05:F975: 01        .byte $01   ; 
- D 3 - I - 0x017986 05:F976: 03        .byte $03   ; 
- D 3 - I - 0x017987 05:F977: 01        .byte $01   ; 
- D 3 - I - 0x017988 05:F978: 02        .byte $02   ; 
- D 3 - I - 0x017989 05:F979: 05        .byte $05   ; 
- D 3 - I - 0x01798A 05:F97A: 03        .byte $03   ; 
- D 3 - I - 0x01798B 05:F97B: 01        .byte $01   ; 
- D 3 - I - 0x01798C 05:F97C: 02        .byte $02   ; 
- D 3 - I - 0x01798D 05:F97D: 05        .byte $05   ; 
- D 3 - I - 0x01798E 05:F97E: 8A        .byte $8A   ; 
- D 3 - I - 0x01798F 05:F97F: 50        .byte $50   ; 
- D 3 - I - 0x017990 05:F980: 00        .byte $00   ; 
- D 3 - I - 0x017991 05:F981: 02        .byte $02   ; 
- D 3 - I - 0x017992 05:F982: 05        .byte $05   ; 
- D 3 - I - 0x017993 05:F983: 01        .byte $01   ; 
- D 3 - I - 0x017994 05:F984: 8A        .byte $8A   ; 
- D 3 - I - 0x017995 05:F985: 40        .byte $40   ; 
- D 3 - I - 0x017996 05:F986: 00        .byte $00   ; 
- D 3 - I - 0x017997 05:F987: 01        .byte $01   ; 
- D 3 - I - 0x017998 05:F988: 02        .byte $02   ; 
- D 3 - I - 0x017999 05:F989: 0B        .byte $0B   ; 
- D 3 - I - 0x01799A 05:F98A: 8A        .byte $8A   ; 
- D 3 - I - 0x01799B 05:F98B: 50        .byte $50   ; 
- D 3 - I - 0x01799C 05:F98C: 00        .byte $00   ; 
- D 3 - I - 0x01799D 05:F98D: 02        .byte $02   ; 
- D 3 - I - 0x01799E 05:F98E: 05        .byte $05   ; 
- D 3 - I - 0x01799F 05:F98F: 01        .byte $01   ; 
- D 3 - I - 0x0179A0 05:F990: 8A        .byte $8A   ; 
- D 3 - I - 0x0179A1 05:F991: 40        .byte $40   ; 
- D 3 - I - 0x0179A2 05:F992: 00        .byte $00   ; 
- D 3 - I - 0x0179A3 05:F993: 01        .byte $01   ; 
- D 3 - I - 0x0179A4 05:F994: 02        .byte $02   ; 
- D 3 - I - 0x0179A5 05:F995: 0B        .byte $0B   ; 
- D 3 - I - 0x0179A6 05:F996: 03        .byte $03   ; 
- D 3 - I - 0x0179A7 05:F997: 01        .byte $01   ; 
- D 3 - I - 0x0179A8 05:F998: 02        .byte $02   ; 
- D 3 - I - 0x0179A9 05:F999: 05        .byte $05   ; 
- D 3 - I - 0x0179AA 05:F99A: 03        .byte $03   ; 
- D 3 - I - 0x0179AB 05:F99B: 01        .byte $01   ; 
- D 3 - I - 0x0179AC 05:F99C: 02        .byte $02   ; 
- D 3 - I - 0x0179AD 05:F99D: 05        .byte $05   ; 
- D 3 - I - 0x0179AE 05:F99E: 03        .byte $03   ; 
- D 3 - I - 0x0179AF 05:F99F: 01        .byte $01   ; 
- D 3 - I - 0x0179B0 05:F9A0: 05        .byte $05   ; 
- D 3 - I - 0x0179B1 05:F9A1: 0B        .byte $0B   ; 
- D 3 - I - 0x0179B2 05:F9A2: 8A        .byte $8A   ; 
- D 3 - I - 0x0179B3 05:F9A3: 50        .byte $50   ; 
- D 3 - I - 0x0179B4 05:F9A4: 01        .byte $01   ; 
- D 3 - I - 0x0179B5 05:F9A5: 01        .byte $01   ; 
- D 3 - I - 0x0179B6 05:F9A6: 07        .byte $07   ; 
- D 3 - I - 0x0179B7 05:F9A7: 01        .byte $01   ; 
- D 3 - I - 0x0179B8 05:F9A8: 05        .byte $05   ; 
- D 3 - I - 0x0179B9 05:F9A9: 0B        .byte $0B   ; 
- D 3 - I - 0x0179BA 05:F9AA: 07        .byte $07   ; 
- D 3 - I - 0x0179BB 05:F9AB: 01        .byte $01   ; 
- D 3 - I - 0x0179BC 05:F9AC: 05        .byte $05   ; 
- D 3 - I - 0x0179BD 05:F9AD: 05        .byte $05   ; 
- D 3 - I - 0x0179BE 05:F9AE: 07        .byte $07   ; 
- D 3 - I - 0x0179BF 05:F9AF: 01        .byte $01   ; 
- D 3 - I - 0x0179C0 05:F9B0: 05        .byte $05   ; 
- D 3 - I - 0x0179C1 05:F9B1: 0B        .byte $0B   ; 
- D 3 - I - 0x0179C2 05:F9B2: 07        .byte $07   ; 
- D 3 - I - 0x0179C3 05:F9B3: 01        .byte $01   ; 
- D 3 - I - 0x0179C4 05:F9B4: 05        .byte $05   ; 
- D 3 - I - 0x0179C5 05:F9B5: 05        .byte $05   ; 
- D 3 - I - 0x0179C6 05:F9B6: 81        .byte $81   ; 
- D 3 - I - 0x0179C7 05:F9B7: 80        .byte $80   ; 
- D 3 - I - 0x0179C8 05:F9B8: 03        .byte $03   ; 
- D 3 - I - 0x0179C9 05:F9B9: 8A        .byte $8A   ; 
- D 3 - I - 0x0179CA 05:F9BA: 50        .byte $50   ; 
- D 3 - I - 0x0179CB 05:F9BB: 00        .byte $00   ; 
- D 3 - I - 0x0179CC 05:F9BC: 02        .byte $02   ; 
- D 3 - I - 0x0179CD 05:F9BD: 05        .byte $05   ; 
- D 3 - I - 0x0179CE 05:F9BE: 01        .byte $01   ; 
- D 3 - I - 0x0179CF 05:F9BF: 8A        .byte $8A   ; 
- D 3 - I - 0x0179D0 05:F9C0: 40        .byte $40   ; 
- D 3 - I - 0x0179D1 05:F9C1: 00        .byte $00   ; 
- D 3 - I - 0x0179D2 05:F9C2: 01        .byte $01   ; 
- D 3 - I - 0x0179D3 05:F9C3: 02        .byte $02   ; 
- D 3 - I - 0x0179D4 05:F9C4: 05        .byte $05   ; 
- D 3 - I - 0x0179D5 05:F9C5: 03        .byte $03   ; 
- D 3 - I - 0x0179D6 05:F9C6: 01        .byte $01   ; 
- D 3 - I - 0x0179D7 05:F9C7: 02        .byte $02   ; 
- D 3 - I - 0x0179D8 05:F9C8: 05        .byte $05   ; 
- D 3 - I - 0x0179D9 05:F9C9: 03        .byte $03   ; 
- D 3 - I - 0x0179DA 05:F9CA: 01        .byte $01   ; 
- D 3 - I - 0x0179DB 05:F9CB: 05        .byte $05   ; 
- D 3 - I - 0x0179DC 05:F9CC: 0B        .byte $0B   ; 
- D 3 - I - 0x0179DD 05:F9CD: 8A        .byte $8A   ; 
- D 3 - I - 0x0179DE 05:F9CE: 50        .byte $50   ; 
- D 3 - I - 0x0179DF 05:F9CF: 01        .byte $01   ; 
- D 3 - I - 0x0179E0 05:F9D0: 01        .byte $01   ; 
- D 3 - I - 0x0179E1 05:F9D1: 07        .byte $07   ; 
- D 3 - I - 0x0179E2 05:F9D2: 01        .byte $01   ; 
- D 3 - I - 0x0179E3 05:F9D3: 05        .byte $05   ; 
- D 3 - I - 0x0179E4 05:F9D4: 0B        .byte $0B   ; 
- D 3 - I - 0x0179E5 05:F9D5: 8A        .byte $8A   ; 
- D 3 - I - 0x0179E6 05:F9D6: 50        .byte $50   ; 
- D 3 - I - 0x0179E7 05:F9D7: 00        .byte $00   ; 
- D 3 - I - 0x0179E8 05:F9D8: 02        .byte $02   ; 
- D 3 - I - 0x0179E9 05:F9D9: 05        .byte $05   ; 
- D 3 - I - 0x0179EA 05:F9DA: 01        .byte $01   ; 
- D 3 - I - 0x0179EB 05:F9DB: 8A        .byte $8A   ; 
- D 3 - I - 0x0179EC 05:F9DC: 40        .byte $40   ; 
- D 3 - I - 0x0179ED 05:F9DD: 00        .byte $00   ; 
- D 3 - I - 0x0179EE 05:F9DE: 01        .byte $01   ; 
- D 3 - I - 0x0179EF 05:F9DF: 02        .byte $02   ; 
- D 3 - I - 0x0179F0 05:F9E0: 05        .byte $05   ; 
- D 3 - I - 0x0179F1 05:F9E1: 03        .byte $03   ; 
- D 3 - I - 0x0179F2 05:F9E2: 01        .byte $01   ; 
- D 3 - I - 0x0179F3 05:F9E3: 02        .byte $02   ; 
- D 3 - I - 0x0179F4 05:F9E4: 05        .byte $05   ; 
- D 3 - I - 0x0179F5 05:F9E5: 03        .byte $03   ; 
- D 3 - I - 0x0179F6 05:F9E6: 01        .byte $01   ; 
- D 3 - I - 0x0179F7 05:F9E7: 05        .byte $05   ; 
- D 3 - I - 0x0179F8 05:F9E8: 0B        .byte $0B   ; 
- D 3 - I - 0x0179F9 05:F9E9: 8A        .byte $8A   ; 
- D 3 - I - 0x0179FA 05:F9EA: 50        .byte $50   ; 
- D 3 - I - 0x0179FB 05:F9EB: 01        .byte $01   ; 
- D 3 - I - 0x0179FC 05:F9EC: 01        .byte $01   ; 
- D 3 - I - 0x0179FD 05:F9ED: 07        .byte $07   ; 
- D 3 - I - 0x0179FE 05:F9EE: 01        .byte $01   ; 
- D 3 - I - 0x0179FF 05:F9EF: 05        .byte $05   ; 
- D 3 - I - 0x017A00 05:F9F0: 0B        .byte $0B   ; 
- D 3 - I - 0x017A01 05:F9F1: 07        .byte $07   ; 
- D 3 - I - 0x017A02 05:F9F2: 01        .byte $01   ; 
- D 3 - I - 0x017A03 05:F9F3: 05        .byte $05   ; 
- D 3 - I - 0x017A04 05:F9F4: 0B        .byte $0B   ; 
- D 3 - I - 0x017A05 05:F9F5: 07        .byte $07   ; 
- D 3 - I - 0x017A06 05:F9F6: 01        .byte $01   ; 
- D 3 - I - 0x017A07 05:F9F7: 05        .byte $05   ; 
- D 3 - I - 0x017A08 05:F9F8: 0B        .byte $0B   ; 
- D 3 - I - 0x017A09 05:F9F9: 07        .byte $07   ; 
- D 3 - I - 0x017A0A 05:F9FA: 01        .byte $01   ; 
- D 3 - I - 0x017A0B 05:F9FB: 05        .byte $05   ; 
- D 3 - I - 0x017A0C 05:F9FC: 0B        .byte $0B   ; 
- D 3 - I - 0x017A0D 05:F9FD: 8A        .byte $8A   ; 
- D 3 - I - 0x017A0E 05:F9FE: 40        .byte $40   ; 
- D 3 - I - 0x017A0F 05:F9FF: 02        .byte $02   ; 
- D 3 - I - 0x017A10 05:FA00: 01        .byte $01   ; 
- D 3 - I - 0x017A11 05:FA01: 03        .byte $03   ; 
- D 3 - I - 0x017A12 05:FA02: 01        .byte $01   ; 
- D 3 - I - 0x017A13 05:FA03: 02        .byte $02   ; 
- D 3 - I - 0x017A14 05:FA04: 0B        .byte $0B   ; 
- D 3 - I - 0x017A15 05:FA05: 8A        .byte $8A   ; 
- D 3 - I - 0x017A16 05:FA06: 50        .byte $50   ; 
- D 3 - I - 0x017A17 05:FA07: 01        .byte $01   ; 
- D 3 - I - 0x017A18 05:FA08: 01        .byte $01   ; 
- D 3 - I - 0x017A19 05:FA09: 07        .byte $07   ; 
- D 3 - I - 0x017A1A 05:FA0A: 01        .byte $01   ; 
- D 3 - I - 0x017A1B 05:FA0B: 05        .byte $05   ; 
- D 3 - I - 0x017A1C 05:FA0C: 0B        .byte $0B   ; 
- D 3 - I - 0x017A1D 05:FA0D: 07        .byte $07   ; 
- D 3 - I - 0x017A1E 05:FA0E: 01        .byte $01   ; 
- D 3 - I - 0x017A1F 05:FA0F: 05        .byte $05   ; 
- D 3 - I - 0x017A20 05:FA10: 05        .byte $05   ; 
- D 3 - I - 0x017A21 05:FA11: 07        .byte $07   ; 
- D 3 - I - 0x017A22 05:FA12: 01        .byte $01   ; 
- D 3 - I - 0x017A23 05:FA13: 05        .byte $05   ; 
- D 3 - I - 0x017A24 05:FA14: 05        .byte $05   ; 
- D 3 - I - 0x017A25 05:FA15: 81        .byte $81   ; 
- D 3 - I - 0x017A26 05:FA16: 8A        .byte $8A   ; 
- D 3 - I - 0x017A27 05:FA17: 50        .byte $50   ; 
- D 3 - I - 0x017A28 05:FA18: 00        .byte $00   ; 
- D 3 - I - 0x017A29 05:FA19: 02        .byte $02   ; 
- D 3 - I - 0x017A2A 05:FA1A: 05        .byte $05   ; 
- D 3 - I - 0x017A2B 05:FA1B: 01        .byte $01   ; 
- D 3 - I - 0x017A2C 05:FA1C: 8A        .byte $8A   ; 
- D 3 - I - 0x017A2D 05:FA1D: 40        .byte $40   ; 
- D 3 - I - 0x017A2E 05:FA1E: 00        .byte $00   ; 
- D 3 - I - 0x017A2F 05:FA1F: 01        .byte $01   ; 
- D 3 - I - 0x017A30 05:FA20: 02        .byte $02   ; 
- D 3 - I - 0x017A31 05:FA21: 05        .byte $05   ; 
- D 3 - I - 0x017A32 05:FA22: 03        .byte $03   ; 
- D 3 - I - 0x017A33 05:FA23: 01        .byte $01   ; 
- D 3 - I - 0x017A34 05:FA24: 02        .byte $02   ; 
- D 3 - I - 0x017A35 05:FA25: 05        .byte $05   ; 
- D 3 - I - 0x017A36 05:FA26: 03        .byte $03   ; 
- D 3 - I - 0x017A37 05:FA27: 01        .byte $01   ; 
- D 3 - I - 0x017A38 05:FA28: 05        .byte $05   ; 
- D 3 - I - 0x017A39 05:FA29: 0B        .byte $0B   ; 
- D 3 - I - 0x017A3A 05:FA2A: 8A        .byte $8A   ; 
- D 3 - I - 0x017A3B 05:FA2B: 50        .byte $50   ; 
- D 3 - I - 0x017A3C 05:FA2C: 01        .byte $01   ; 
- D 3 - I - 0x017A3D 05:FA2D: 01        .byte $01   ; 
- D 3 - I - 0x017A3E 05:FA2E: 07        .byte $07   ; 
- D 3 - I - 0x017A3F 05:FA2F: 01        .byte $01   ; 
- D 3 - I - 0x017A40 05:FA30: 05        .byte $05   ; 
- D 3 - I - 0x017A41 05:FA31: 0B        .byte $0B   ; 
- D 3 - I - 0x017A42 05:FA32: 8A        .byte $8A   ; 
- D 3 - I - 0x017A43 05:FA33: 50        .byte $50   ; 
- D 3 - I - 0x017A44 05:FA34: 00        .byte $00   ; 
- D 3 - I - 0x017A45 05:FA35: 02        .byte $02   ; 
- D 3 - I - 0x017A46 05:FA36: 05        .byte $05   ; 
- D 3 - I - 0x017A47 05:FA37: 01        .byte $01   ; 
- D 3 - I - 0x017A48 05:FA38: 8A        .byte $8A   ; 
- D 3 - I - 0x017A49 05:FA39: 40        .byte $40   ; 
- D 3 - I - 0x017A4A 05:FA3A: 00        .byte $00   ; 
- D 3 - I - 0x017A4B 05:FA3B: 01        .byte $01   ; 
- D 3 - I - 0x017A4C 05:FA3C: 02        .byte $02   ; 
- D 3 - I - 0x017A4D 05:FA3D: 05        .byte $05   ; 
- D 3 - I - 0x017A4E 05:FA3E: 03        .byte $03   ; 
- D 3 - I - 0x017A4F 05:FA3F: 01        .byte $01   ; 
- D 3 - I - 0x017A50 05:FA40: 02        .byte $02   ; 
- D 3 - I - 0x017A51 05:FA41: 05        .byte $05   ; 
- D 3 - I - 0x017A52 05:FA42: 03        .byte $03   ; 
- D 3 - I - 0x017A53 05:FA43: 01        .byte $01   ; 
- D 3 - I - 0x017A54 05:FA44: 05        .byte $05   ; 
- D 3 - I - 0x017A55 05:FA45: 0B        .byte $0B   ; 
- D 3 - I - 0x017A56 05:FA46: 8A        .byte $8A   ; 
- D 3 - I - 0x017A57 05:FA47: 50        .byte $50   ; 
- D 3 - I - 0x017A58 05:FA48: 01        .byte $01   ; 
- D 3 - I - 0x017A59 05:FA49: 01        .byte $01   ; 
- D 3 - I - 0x017A5A 05:FA4A: 07        .byte $07   ; 
- D 3 - I - 0x017A5B 05:FA4B: 01        .byte $01   ; 
- D 3 - I - 0x017A5C 05:FA4C: 05        .byte $05   ; 
- D 3 - I - 0x017A5D 05:FA4D: 0B        .byte $0B   ; 
- D 3 - I - 0x017A5E 05:FA4E: 07        .byte $07   ; 
- D 3 - I - 0x017A5F 05:FA4F: 01        .byte $01   ; 
- D 3 - I - 0x017A60 05:FA50: 05        .byte $05   ; 
- D 3 - I - 0x017A61 05:FA51: 0B        .byte $0B   ; 
- D 3 - I - 0x017A62 05:FA52: 07        .byte $07   ; 
- D 3 - I - 0x017A63 05:FA53: 01        .byte $01   ; 
- D 3 - I - 0x017A64 05:FA54: 05        .byte $05   ; 
- D 3 - I - 0x017A65 05:FA55: 0B        .byte $0B   ; 
- D 3 - I - 0x017A66 05:FA56: 07        .byte $07   ; 
- D 3 - I - 0x017A67 05:FA57: 01        .byte $01   ; 
- D 3 - I - 0x017A68 05:FA58: 05        .byte $05   ; 
- D 3 - I - 0x017A69 05:FA59: 17        .byte $17   ; 
- D 3 - I - 0x017A6A 05:FA5A: 8A        .byte $8A   ; 
- D 3 - I - 0x017A6B 05:FA5B: 00        .byte $00   ; 
- D 3 - I - 0x017A6C 05:FA5C: 00        .byte $00   ; 
- D 3 - I - 0x017A6D 05:FA5D: 02        .byte $02   ; 
- D 3 - I - 0x017A6E 05:FA5E: 8B        .byte $8B   ; 
- D 3 - I - 0x017A6F 05:FA5F: 01        .byte $01   ; 
- D 3 - I - 0x017A70 05:FA60: 32        .byte $32   ; 
- D 3 - I - 0x017A71 05:FA61: 01        .byte $01   ; 
- D 3 - I - 0x017A72 05:FA62: 83        .byte $83   ; 



off_92_FA63:
- D 3 - I - 0x017A73 05:FA63: 02        .byte $02   ; 
- D 3 - I - 0x017A74 05:FA64: 04        .byte $04   ; 
- D 3 - I - 0x017A75 05:FA65: FF        .byte $FF   ; 
- D 3 - I - 0x017A76 05:FA66: 04        .byte $04   ; 
- D 3 - I - 0x017A77 05:FA67: 02        .byte $02   ; 
- D 3 - I - 0x017A78 05:FA68: 00        .byte $00   ; 
- D 3 - I - 0x017A79 05:FA69: FF        .byte $FF   ; 



off_92_FA6A:
- D 3 - I - 0x017A7A 05:FA6A: 01        .byte $01   ; 
- D 3 - I - 0x017A7B 05:FA6B: 02        .byte $02   ; 
- D 3 - I - 0x017A7C 05:FA6C: FF        .byte $FF   ; 
- D 3 - I - 0x017A7D 05:FA6D: 02        .byte $02   ; 
- D 3 - I - 0x017A7E 05:FA6E: 01        .byte $01   ; 
- D 3 - I - 0x017A7F 05:FA6F: 00        .byte $00   ; 
- D 3 - I - 0x017A80 05:FA70: FF        .byte $FF   ; 



off_92_FA71:
- D 3 - I - 0x017A81 05:FA71: 03        .byte $03   ; 
- D 3 - I - 0x017A82 05:FA72: FF        .byte $FF   ; 
- D 3 - I - 0x017A83 05:FA73: 01        .byte $01   ; 
- D 3 - I - 0x017A84 05:FA74: 00        .byte $00   ; 
- D 3 - I - 0x017A85 05:FA75: FF        .byte $FF   ; 



off_92_FA76:
- D 3 - I - 0x017A86 05:FA76: 02        .byte $02   ; 
- D 3 - I - 0x017A87 05:FA77: 02        .byte $02   ; 
- D 3 - I - 0x017A88 05:FA78: 03        .byte $03   ; 
- D 3 - I - 0x017A89 05:FA79: 03        .byte $03   ; 
- D 3 - I - 0x017A8A 05:FA7A: 03        .byte $03   ; 
- D 3 - I - 0x017A8B 05:FA7B: 04        .byte $04   ; 
- D 3 - I - 0x017A8C 05:FA7C: 04        .byte $04   ; 
- D 3 - I - 0x017A8D 05:FA7D: 04        .byte $04   ; 
- D 3 - I - 0x017A8E 05:FA7E: 05        .byte $05   ; 
- D 3 - I - 0x017A8F 05:FA7F: 05        .byte $05   ; 
- D 3 - I - 0x017A90 05:FA80: 05        .byte $05   ; 
- D 3 - I - 0x017A91 05:FA81: 06        .byte $06   ; 
- D 3 - I - 0x017A92 05:FA82: FF        .byte $FF   ; 



off_92_FA83:
- D 3 - I - 0x017A93 05:FA83: 03        .byte $03   ; 
- D 3 - I - 0x017A94 05:FA84: 06        .byte $06   ; 
- D 3 - I - 0x017A95 05:FA85: FF        .byte $FF   ; 
- D 3 - I - 0x017A96 05:FA86: 06        .byte $06   ; 
- D 3 - I - 0x017A97 05:FA87: 03        .byte $03   ; 
- D 3 - I - 0x017A98 05:FA88: 00        .byte $00   ; 
- - - - - - 0x017A99 05:FA89: FF        .byte $FF   ; 



off_92_FA8A:
- D 3 - I - 0x017A9A 05:FA8A: 01        .byte $01   ; 
- D 3 - I - 0x017A9B 05:FA8B: 03        .byte $03   ; 
- D 3 - I - 0x017A9C 05:FA8C: FF        .byte $FF   ; 
- D 3 - I - 0x017A9D 05:FA8D: 01        .byte $01   ; 
- D 3 - I - 0x017A9E 05:FA8E: 00        .byte $00   ; 
- D 3 - I - 0x017A9F 05:FA8F: FF        .byte $FF   ; 



off_92_FA90:
- D 3 - I - 0x017AA0 05:FA90: 02        .byte $02   ; 
- D 3 - I - 0x017AA1 05:FA91: 01        .byte $01   ; 
- D 3 - I - 0x017AA2 05:FA92: 04        .byte $04   ; 
- D 3 - I - 0x017AA3 05:FA93: FF        .byte $FF   ; 
- D 3 - I - 0x017AA4 05:FA94: 01        .byte $01   ; 
- D 3 - I - 0x017AA5 05:FA95: 00        .byte $00   ; 
- - - - - - 0x017AA6 05:FA96: FF        .byte $FF   ; 
- - - - - - 0x017AA7 05:FA97: 00        .byte $00   ; 
- - - - - - 0x017AA8 05:FA98: 01        .byte $01   ; 
- - - - - - 0x017AA9 05:FA99: FF        .byte $FF   ; 
- - - - - - 0x017AAA 05:FA9A: 01        .byte $01   ; 
- - - - - - 0x017AAB 05:FA9B: 00        .byte $00   ; 
- - - - - - 0x017AAC 05:FA9C: FF        .byte $FF   ; 



off_92_FA9D:
- D 3 - I - 0x017AAD 05:FA9D: 01        .byte $01   ; 
- D 3 - I - 0x017AAE 05:FA9E: 02        .byte $02   ; 
- D 3 - I - 0x017AAF 05:FA9F: 03        .byte $03   ; 
- D 3 - I - 0x017AB0 05:FAA0: 04        .byte $04   ; 
- - - - - - 0x017AB1 05:FAA1: 05        .byte $05   ; 
- D 3 - I - 0x017AB2 05:FAA2: 06        .byte $06   ; 
- - - - - - 0x017AB3 05:FAA3: FF        .byte $FF   ; 
- - - - - - 0x017AB4 05:FAA4: 06        .byte $06   ; 
- - - - - - 0x017AB5 05:FAA5: 05        .byte $05   ; 
- - - - - - 0x017AB6 05:FAA6: 04        .byte $04   ; 
- - - - - - 0x017AB7 05:FAA7: 03        .byte $03   ; 
- - - - - - 0x017AB8 05:FAA8: 02        .byte $02   ; 
- - - - - - 0x017AB9 05:FAA9: 01        .byte $01   ; 
- - - - - - 0x017ABA 05:FAAA: 00        .byte $00   ; 
- - - - - - 0x017ABB 05:FAAB: FF        .byte $FF   ; 



sub_84_FAAC:
- D 3 - I - 0x017ABC 05:FAAC: 19        .byte $19   ; 
- D 3 - I - 0x017ABD 05:FAAD: 01        .byte $01   ; 
- D 3 - I - 0x017ABE 05:FAAE: 13        .byte $13   ; 
- D 3 - I - 0x017ABF 05:FAAF: 01        .byte $01   ; 
- D 3 - I - 0x017AC0 05:FAB0: 0E        .byte $0E   ; 
- D 3 - I - 0x017AC1 05:FAB1: 01        .byte $01   ; 
- D 3 - I - 0x017AC2 05:FAB2: 0A        .byte $0A   ; 
- D 3 - I - 0x017AC3 05:FAB3: 01        .byte $01   ; 
- D 3 - I - 0x017AC4 05:FAB4: 07        .byte $07   ; 
- D 3 - I - 0x017AC5 05:FAB5: 01        .byte $01   ; 
- D 3 - I - 0x017AC6 05:FAB6: 05        .byte $05   ; 
- D 3 - I - 0x017AC7 05:FAB7: 01        .byte $01   ; 
- D 3 - I - 0x017AC8 05:FAB8: 04        .byte $04   ; 
- D 3 - I - 0x017AC9 05:FAB9: 01        .byte $01   ; 
- D 3 - I - 0x017ACA 05:FABA: 85        .byte con_85_rts



sub_84_FABB:
- D 3 - I - 0x017ACB 05:FABB: 90        .byte $90   ; 
- D 3 - I - 0x017ACC 05:FABC: 18        .byte $18   ; 
- D 3 - I - 0x017ACD 05:FABD: 01        .byte $01   ; 
- D 3 - I - 0x017ACE 05:FABE: 90        .byte $90   ; 
- D 3 - I - 0x017ACF 05:FABF: 12        .byte $12   ; 
- D 3 - I - 0x017AD0 05:FAC0: 01        .byte $01   ; 
- D 3 - I - 0x017AD1 05:FAC1: 90        .byte $90   ; 
- D 3 - I - 0x017AD2 05:FAC2: 0C        .byte $0C   ; 
- D 3 - I - 0x017AD3 05:FAC3: 01        .byte $01   ; 
- D 3 - I - 0x017AD4 05:FAC4: 90        .byte $90   ; 
- D 3 - I - 0x017AD5 05:FAC5: 05        .byte $05   ; 
- D 3 - I - 0x017AD6 05:FAC6: 01        .byte $01   ; 
- D 3 - I - 0x017AD7 05:FAC7: 85        .byte con_85_rts



sub_84_FAC8:
- D 3 - I - 0x017AD8 05:FAC8: 90        .byte $90   ; 
- D 3 - I - 0x017AD9 05:FAC9: 1F        .byte $1F   ; 
- D 3 - I - 0x017ADA 05:FACA: 01        .byte $01   ; 
- D 3 - I - 0x017ADB 05:FACB: 90        .byte $90   ; 
- D 3 - I - 0x017ADC 05:FACC: 1E        .byte $1E   ; 
- D 3 - I - 0x017ADD 05:FACD: 01        .byte $01   ; 
- D 3 - I - 0x017ADE 05:FACE: 85        .byte con_85_rts



sub_84_FACF:
- D 3 - I - 0x017ADF 05:FACF: 2F        .byte $2F   ; 
- D 3 - I - 0x017AE0 05:FAD0: 18        .byte $18   ; 
- D 3 - I - 0x017AE1 05:FAD1: 93        .byte $93   ; 
- D 3 - I - 0x017AE2 05:FAD2: 06        .byte $06   ; 
- D 3 - I - 0x017AE3 05:FAD3: 2D        .byte $2D   ; 
- D 3 - I - 0x017AE4 05:FAD4: 0C        .byte $0C   ; 
- D 3 - I - 0x017AE5 05:FAD5: 93        .byte $93   ; 
- D 3 - I - 0x017AE6 05:FAD6: FF        .byte $FF   ; 
- D 3 - I - 0x017AE7 05:FAD7: 2F        .byte $2F   ; 
- D 3 - I - 0x017AE8 05:FAD8: 18        .byte $18   ; 
- D 3 - I - 0x017AE9 05:FAD9: 93        .byte $93   ; 
- D 3 - I - 0x017AEA 05:FADA: 06        .byte $06   ; 
- D 3 - I - 0x017AEB 05:FADB: 34        .byte $34   ; 
- D 3 - I - 0x017AEC 05:FADC: 0C        .byte $0C   ; 
- D 3 - I - 0x017AED 05:FADD: 93        .byte $93   ; 
- D 3 - I - 0x017AEE 05:FADE: FF        .byte $FF   ; 
- D 3 - I - 0x017AEF 05:FADF: 32        .byte $32   ; 
- D 3 - I - 0x017AF0 05:FAE0: 0C        .byte $0C   ; 
- D 3 - I - 0x017AF1 05:FAE1: 93        .byte $93   ; 
- D 3 - I - 0x017AF2 05:FAE2: 06        .byte $06   ; 
- D 3 - I - 0x017AF3 05:FAE3: 2F        .byte $2F   ; 
- D 3 - I - 0x017AF4 05:FAE4: 0C        .byte $0C   ; 
- D 3 - I - 0x017AF5 05:FAE5: 2D        .byte $2D   ; 
- D 3 - I - 0x017AF6 05:FAE6: 0C        .byte $0C   ; 
- D 3 - I - 0x017AF7 05:FAE7: 93        .byte $93   ; 
- D 3 - I - 0x017AF8 05:FAE8: 18        .byte $18   ; 
- D 3 - I - 0x017AF9 05:FAE9: 85        .byte con_85_rts



sub_84_FAEA:
- D 3 - I - 0x017AFA 05:FAEA: 84        .byte con_84_jsr
- D 3 - I - 0x017AFB 05:FAEB: BB FA     .word sub_84_FABB
- D 3 - I - 0x017AFD 05:FAED: 0B        .byte $0B   ; 
- D 3 - I - 0x017AFE 05:FAEE: 08        .byte $08   ; 
- D 3 - I - 0x017AFF 05:FAEF: 12        .byte $12   ; 
- D 3 - I - 0x017B00 05:FAF0: 0C        .byte $0C   ; 
- D 3 - I - 0x017B01 05:FAF1: 09        .byte $09   ; 
- D 3 - I - 0x017B02 05:FAF2: 0C        .byte $0C   ; 
- D 3 - I - 0x017B03 05:FAF3: 84        .byte con_84_jsr
- D 3 - I - 0x017B04 05:FAF4: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x017B06 05:FAF6: 0B        .byte $0B   ; 
- D 3 - I - 0x017B07 05:FAF7: 0A        .byte $0A   ; 
- D 3 - I - 0x017B08 05:FAF8: 12        .byte $12   ; 
- D 3 - I - 0x017B09 05:FAF9: 0C        .byte $0C   ; 
- D 3 - I - 0x017B0A 05:FAFA: 84        .byte con_84_jsr
- D 3 - I - 0x017B0B 05:FAFB: BB FA     .word sub_84_FABB
- D 3 - I - 0x017B0D 05:FAFD: 09        .byte $09   ; 
- D 3 - I - 0x017B0E 05:FAFE: 08        .byte $08   ; 
- D 3 - I - 0x017B0F 05:FAFF: 84        .byte con_84_jsr
- D 3 - I - 0x017B10 05:FB00: BB FA     .word sub_84_FABB
- D 3 - I - 0x017B12 05:FB02: 0B        .byte $0B   ; 
- D 3 - I - 0x017B13 05:FB03: 08        .byte $08   ; 
- D 3 - I - 0x017B14 05:FB04: 0D        .byte $0D   ; 
- D 3 - I - 0x017B15 05:FB05: 0C        .byte $0C   ; 
- D 3 - I - 0x017B16 05:FB06: 0E        .byte $0E   ; 
- D 3 - I - 0x017B17 05:FB07: 0C        .byte $0C   ; 
- D 3 - I - 0x017B18 05:FB08: 84        .byte con_84_jsr
- D 3 - I - 0x017B19 05:FB09: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x017B1B 05:FB0B: 0D        .byte $0D   ; 
- D 3 - I - 0x017B1C 05:FB0C: 0A        .byte $0A   ; 
- D 3 - I - 0x017B1D 05:FB0D: 84        .byte con_84_jsr
- D 3 - I - 0x017B1E 05:FB0E: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x017B20 05:FB10: 0B        .byte $0B   ; 
- D 3 - I - 0x017B21 05:FB11: 04        .byte $04   ; 
- D 3 - I - 0x017B22 05:FB12: 84        .byte con_84_jsr
- D 3 - I - 0x017B23 05:FB13: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x017B25 05:FB15: 0B        .byte $0B   ; 
- D 3 - I - 0x017B26 05:FB16: 04        .byte $04   ; 
- D 3 - I - 0x017B27 05:FB17: 09        .byte $09   ; 
- D 3 - I - 0x017B28 05:FB18: 06        .byte $06   ; 
- D 3 - I - 0x017B29 05:FB19: 84        .byte con_84_jsr
- D 3 - I - 0x017B2A 05:FB1A: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x017B2C 05:FB1C: 09        .byte $09   ; 
- D 3 - I - 0x017B2D 05:FB1D: 04        .byte $04   ; 
- D 3 - I - 0x017B2E 05:FB1E: 85        .byte con_85_rts



sub_84_FB1F:
- D 3 - I - 0x017B2F 05:FB1F: 84        .byte con_84_jsr
- D 3 - I - 0x017B30 05:FB20: BB FA     .word sub_84_FABB
- D 3 - I - 0x017B32 05:FB22: 12        .byte $12   ; 
- D 3 - I - 0x017B33 05:FB23: 14        .byte $14   ; 
- D 3 - I - 0x017B34 05:FB24: 0D        .byte $0D   ; 
- D 3 - I - 0x017B35 05:FB25: 0C        .byte $0C   ; 
- D 3 - I - 0x017B36 05:FB26: 84        .byte con_84_jsr
- D 3 - I - 0x017B37 05:FB27: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x017B39 05:FB29: 12        .byte $12   ; 
- D 3 - I - 0x017B3A 05:FB2A: 0A        .byte $0A   ; 
- D 3 - I - 0x017B3B 05:FB2B: 0D        .byte $0D   ; 
- D 3 - I - 0x017B3C 05:FB2C: 0C        .byte $0C   ; 
- D 3 - I - 0x017B3D 05:FB2D: 0F        .byte $0F   ; 
- D 3 - I - 0x017B3E 05:FB2E: 0C        .byte $0C   ; 
- D 3 - I - 0x017B3F 05:FB2F: 84        .byte con_84_jsr
- D 3 - I - 0x017B40 05:FB30: BB FA     .word sub_84_FABB
- D 3 - I - 0x017B42 05:FB32: 0D        .byte $0D   ; 
- D 3 - I - 0x017B43 05:FB33: 14        .byte $14   ; 
- D 3 - I - 0x017B44 05:FB34: 84        .byte con_84_jsr
- D 3 - I - 0x017B45 05:FB35: BB FA     .word sub_84_FABB
- D 3 - I - 0x017B47 05:FB37: 0B        .byte $0B   ; 
- D 3 - I - 0x017B48 05:FB38: 14        .byte $14   ; 
- D 3 - I - 0x017B49 05:FB39: 84        .byte con_84_jsr
- D 3 - I - 0x017B4A 05:FB3A: BB FA     .word sub_84_FABB
- D 3 - I - 0x017B4C 05:FB3C: 12        .byte $12   ; 
- D 3 - I - 0x017B4D 05:FB3D: 14        .byte $14   ; 
- D 3 - I - 0x017B4E 05:FB3E: 84        .byte con_84_jsr
- D 3 - I - 0x017B4F 05:FB3F: BB FA     .word sub_84_FABB
- D 3 - I - 0x017B51 05:FB41: 12        .byte $12   ; 
- D 3 - I - 0x017B52 05:FB42: 14        .byte $14   ; 
- D 3 - I - 0x017B53 05:FB43: 0D        .byte $0D   ; 
- D 3 - I - 0x017B54 05:FB44: 0C        .byte $0C   ; 
- D 3 - I - 0x017B55 05:FB45: 84        .byte con_84_jsr
- D 3 - I - 0x017B56 05:FB46: C8 FA     .word sub_84_FAC8
- D 3 - I - 0x017B58 05:FB48: 12        .byte $12   ; 
- D 3 - I - 0x017B59 05:FB49: 0A        .byte $0A   ; 
- D 3 - I - 0x017B5A 05:FB4A: 12        .byte $12   ; 
- D 3 - I - 0x017B5B 05:FB4B: 0C        .byte $0C   ; 
- D 3 - I - 0x017B5C 05:FB4C: 84        .byte con_84_jsr
- D 3 - I - 0x017B5D 05:FB4D: BB FA     .word sub_84_FABB
- D 3 - I - 0x017B5F 05:FB4F: 0D        .byte $0D   ; 
- D 3 - I - 0x017B60 05:FB50: 08        .byte $08   ; 
- D 3 - I - 0x017B61 05:FB51: 84        .byte con_84_jsr
- D 3 - I - 0x017B62 05:FB52: BB FA     .word sub_84_FABB
- D 3 - I - 0x017B64 05:FB54: 12        .byte $12   ; 
- D 3 - I - 0x017B65 05:FB55: 14        .byte $14   ; 
- D 3 - I - 0x017B66 05:FB56: 0D        .byte $0D   ; 
- D 3 - I - 0x017B67 05:FB57: 0C        .byte $0C   ; 
- D 3 - I - 0x017B68 05:FB58: 85        .byte con_85_rts



sub_84_FB59:
- D 3 - I - 0x017B69 05:FB59: 8A        .byte $8A   ; 
- D 3 - I - 0x017B6A 05:FB5A: 40        .byte $40   ; 
- D 3 - I - 0x017B6B 05:FB5B: 00        .byte $00   ; 
- D 3 - I - 0x017B6C 05:FB5C: 02        .byte $02   ; 
- D 3 - I - 0x017B6D 05:FB5D: 34        .byte $34   ; 
- D 3 - I - 0x017B6E 05:FB5E: 0A        .byte $0A   ; 
- D 3 - I - 0x017B6F 05:FB5F: 8D        .byte $8D   ; 
- D 3 - I - 0x017B70 05:FB60: 01        .byte $01   ; 
- D 3 - I - 0x017B71 05:FB61: 28        .byte $28   ; 
- D 3 - I - 0x017B72 05:FB62: 0A        .byte $0A   ; 
- D 3 - I - 0x017B73 05:FB63: 8D        .byte $8D   ; 
- D 3 - I - 0x017B74 05:FB64: 00        .byte $00   ; 
- D 3 - I - 0x017B75 05:FB65: 8A        .byte $8A   ; 
- D 3 - I - 0x017B76 05:FB66: 20        .byte $20   ; 
- D 3 - I - 0x017B77 05:FB67: 00        .byte $00   ; 
- D 3 - I - 0x017B78 05:FB68: 02        .byte $02   ; 
- D 3 - I - 0x017B79 05:FB69: 34        .byte $34   ; 
- D 3 - I - 0x017B7A 05:FB6A: 0A        .byte $0A   ; 
- D 3 - I - 0x017B7B 05:FB6B: 8D        .byte $8D   ; 
- D 3 - I - 0x017B7C 05:FB6C: 01        .byte $01   ; 
- D 3 - I - 0x017B7D 05:FB6D: 28        .byte $28   ; 
- D 3 - I - 0x017B7E 05:FB6E: 06        .byte $06   ; 
- D 3 - I - 0x017B7F 05:FB6F: 8D        .byte $8D   ; 
- D 3 - I - 0x017B80 05:FB70: 00        .byte $00   ; 
- D 3 - I - 0x017B81 05:FB71: 85        .byte con_85_rts



sub_84_FB72:
- D 3 - I - 0x017B82 05:FB72: 8A        .byte $8A   ; 
- D 3 - I - 0x017B83 05:FB73: 30        .byte $30   ; 
- D 3 - I - 0x017B84 05:FB74: 00        .byte $00   ; 
- D 3 - I - 0x017B85 05:FB75: 02        .byte $02   ; 
- D 3 - I - 0x017B86 05:FB76: 40        .byte $40   ; 
- D 3 - I - 0x017B87 05:FB77: 0C        .byte $0C   ; 
- D 3 - I - 0x017B88 05:FB78: 8D        .byte $8D   ; 
- D 3 - I - 0x017B89 05:FB79: 01        .byte $01   ; 
- D 3 - I - 0x017B8A 05:FB7A: 34        .byte $34   ; 
- D 3 - I - 0x017B8B 05:FB7B: 08        .byte $08   ; 
- D 3 - I - 0x017B8C 05:FB7C: 8D        .byte $8D   ; 
- D 3 - I - 0x017B8D 05:FB7D: 00        .byte $00   ; 
- D 3 - I - 0x017B8E 05:FB7E: 8A        .byte $8A   ; 
- D 3 - I - 0x017B8F 05:FB7F: 20        .byte $20   ; 
- D 3 - I - 0x017B90 05:FB80: 00        .byte $00   ; 
- D 3 - I - 0x017B91 05:FB81: 02        .byte $02   ; 
- D 3 - I - 0x017B92 05:FB82: 40        .byte $40   ; 
- D 3 - I - 0x017B93 05:FB83: 0C        .byte $0C   ; 
- D 3 - I - 0x017B94 05:FB84: 8D        .byte $8D   ; 
- D 3 - I - 0x017B95 05:FB85: 01        .byte $01   ; 
- D 3 - I - 0x017B96 05:FB86: 34        .byte $34   ; 
- D 3 - I - 0x017B97 05:FB87: 04        .byte $04   ; 
- D 3 - I - 0x017B98 05:FB88: 8D        .byte $8D   ; 
- D 3 - I - 0x017B99 05:FB89: 00        .byte $00   ; 
- D 3 - I - 0x017B9A 05:FB8A: 85        .byte con_85_rts



sub_84_FB8B:
- D 3 - I - 0x017B9B 05:FB8B: 8A        .byte $8A   ; 
- D 3 - I - 0x017B9C 05:FB8C: 40        .byte $40   ; 
- D 3 - I - 0x017B9D 05:FB8D: 00        .byte $00   ; 
- D 3 - I - 0x017B9E 05:FB8E: 02        .byte $02   ; 
- D 3 - I - 0x017B9F 05:FB8F: 82        .byte $82   ; 
- D 3 - I - 0x017BA0 05:FB90: 08        .byte $08   ; 
- D 3 - I - 0x017BA1 05:FB91: 8C        .byte $8C   ; 
- D 3 - I - 0x017BA2 05:FB92: 0C        .byte $0C   ; 
- D 3 - I - 0x017BA3 05:FB93: 04        .byte $04   ; 
- D 3 - I - 0x017BA4 05:FB94: 04        .byte $04   ; 
- D 3 - I - 0x017BA5 05:FB95: 23        .byte $23   ; 
- D 3 - I - 0x017BA6 05:FB96: 1E        .byte $1E   ; 
- D 3 - I - 0x017BA7 05:FB97: 19        .byte $19   ; 
- D 3 - I - 0x017BA8 05:FB98: 23        .byte $23   ; 
- D 3 - I - 0x017BA9 05:FB99: 1E        .byte $1E   ; 
- D 3 - I - 0x017BAA 05:FB9A: 19        .byte $19   ; 
- D 3 - I - 0x017BAB 05:FB9B: 8C        .byte $8C   ; 
- D 3 - I - 0x017BAC 05:FB9C: 01        .byte $01   ; 
- D 3 - I - 0x017BAD 05:FB9D: 02        .byte $02   ; 
- D 3 - I - 0x017BAE 05:FB9E: 02        .byte $02   ; 
- D 3 - I - 0x017BAF 05:FB9F: 8A        .byte $8A   ; 
- D 3 - I - 0x017BB0 05:FBA0: 70        .byte $70   ; 
- D 3 - I - 0x017BB1 05:FBA1: 00        .byte $00   ; 
- D 3 - I - 0x017BB2 05:FBA2: 01        .byte $01   ; 
- D 3 - I - 0x017BB3 05:FBA3: 19        .byte $19   ; 
- D 3 - I - 0x017BB4 05:FBA4: 19        .byte $19   ; 
- D 3 - I - 0x017BB5 05:FBA5: 82        .byte $82   ; 
- D 3 - I - 0x017BB6 05:FBA6: 10        .byte $10   ; 
- D 3 - I - 0x017BB7 05:FBA7: 19        .byte $19   ; 
- D 3 - I - 0x017BB8 05:FBA8: 19        .byte $19   ; 
- D 3 - I - 0x017BB9 05:FBA9: 85        .byte con_85_rts



sub_84_FBAA:
- D 3 - I - 0x017BBA 05:FBAA: 8A        .byte $8A   ; 
- D 3 - I - 0x017BBB 05:FBAB: 10        .byte $10   ; 
- D 3 - I - 0x017BBC 05:FBAC: 00        .byte $00   ; 
- D 3 - I - 0x017BBD 05:FBAD: 00        .byte $00   ; 
- D 3 - I - 0x017BBE 05:FBAE: 0B        .byte $0B   ; 
- D 3 - I - 0x017BBF 05:FBAF: 01        .byte $01   ; 
- D 3 - I - 0x017BC0 05:FBB0: 8B        .byte $8B   ; 
- D 3 - I - 0x017BC1 05:FBB1: 00        .byte $00   ; 
- D 3 - I - 0x017BC2 05:FBB2: 09        .byte $09   ; 
- D 3 - I - 0x017BC3 05:FBB3: 01        .byte $01   ; 
- D 3 - I - 0x017BC4 05:FBB4: 08        .byte $08   ; 
- D 3 - I - 0x017BC5 05:FBB5: 01        .byte $01   ; 
- D 3 - I - 0x017BC6 05:FBB6: 06        .byte $06   ; 
- D 3 - I - 0x017BC7 05:FBB7: 01        .byte $01   ; 
- D 3 - I - 0x017BC8 05:FBB8: 8B        .byte $8B   ; 
- D 3 - I - 0x017BC9 05:FBB9: 01        .byte $01   ; 
- D 3 - I - 0x017BCA 05:FBBA: 8A        .byte $8A   ; 
- D 3 - I - 0x017BCB 05:FBBB: B0        .byte $B0   ; 
- D 3 - I - 0x017BCC 05:FBBC: 00        .byte $00   ; 
- D 3 - I - 0x017BCD 05:FBBD: 02        .byte $02   ; 
- D 3 - I - 0x017BCE 05:FBBE: 0A        .byte $0A   ; 
- D 3 - I - 0x017BCF 05:FBBF: 01        .byte $01   ; 
- D 3 - I - 0x017BD0 05:FBC0: 8A        .byte $8A   ; 
- D 3 - I - 0x017BD1 05:FBC1: 60        .byte $60   ; 
- D 3 - I - 0x017BD2 05:FBC2: 0F        .byte $0F   ; 
- D 3 - I - 0x017BD3 05:FBC3: 01        .byte $01   ; 
- D 3 - I - 0x017BD4 05:FBC4: 06        .byte $06   ; 
- D 3 - I - 0x017BD5 05:FBC5: 03        .byte $03   ; 
- D 3 - I - 0x017BD6 05:FBC6: 05        .byte $05   ; 
- D 3 - I - 0x017BD7 05:FBC7: 04        .byte $04   ; 
- D 3 - I - 0x017BD8 05:FBC8: 04        .byte $04   ; 
- D 3 - I - 0x017BD9 05:FBC9: 05        .byte $05   ; 
- D 3 - I - 0x017BDA 05:FBCA: 03        .byte $03   ; 
- D 3 - I - 0x017BDB 05:FBCB: 77        .byte $77   ; 
- D 3 - I - 0x017BDC 05:FBCC: 8A        .byte $8A   ; 
- D 3 - I - 0x017BDD 05:FBCD: 50        .byte $50   ; 
- D 3 - I - 0x017BDE 05:FBCE: 02        .byte $02   ; 
- D 3 - I - 0x017BDF 05:FBCF: 01        .byte $01   ; 
- D 3 - I - 0x017BE0 05:FBD0: 07        .byte $07   ; 
- D 3 - I - 0x017BE1 05:FBD1: 01        .byte $01   ; 
- D 3 - I - 0x017BE2 05:FBD2: 05        .byte $05   ; 
- D 3 - I - 0x017BE3 05:FBD3: 05        .byte $05   ; 
- D 3 - I - 0x017BE4 05:FBD4: 07        .byte $07   ; 
- D 3 - I - 0x017BE5 05:FBD5: 01        .byte $01   ; 
- D 3 - I - 0x017BE6 05:FBD6: 05        .byte $05   ; 
- D 3 - I - 0x017BE7 05:FBD7: 02        .byte $02   ; 
- D 3 - I - 0x017BE8 05:FBD8: 8A        .byte $8A   ; 
- D 3 - I - 0x017BE9 05:FBD9: 20        .byte $20   ; 
- D 3 - I - 0x017BEA 05:FBDA: 00        .byte $00   ; 
- D 3 - I - 0x017BEB 05:FBDB: 00        .byte $00   ; 
- D 3 - I - 0x017BEC 05:FBDC: 09        .byte $09   ; 
- D 3 - I - 0x017BED 05:FBDD: 01        .byte $01   ; 
- D 3 - I - 0x017BEE 05:FBDE: 8B        .byte $8B   ; 
- D 3 - I - 0x017BEF 05:FBDF: 00        .byte $00   ; 
- D 3 - I - 0x017BF0 05:FBE0: 08        .byte $08   ; 
- D 3 - I - 0x017BF1 05:FBE1: 01        .byte $01   ; 
- D 3 - I - 0x017BF2 05:FBE2: 06        .byte $06   ; 
- D 3 - I - 0x017BF3 05:FBE3: 01        .byte $01   ; 
- D 3 - I - 0x017BF4 05:FBE4: 8B        .byte $8B   ; 
- D 3 - I - 0x017BF5 05:FBE5: 01        .byte $01   ; 
- D 3 - I - 0x017BF6 05:FBE6: 8A        .byte $8A   ; 
- D 3 - I - 0x017BF7 05:FBE7: B0        .byte $B0   ; 
- D 3 - I - 0x017BF8 05:FBE8: 00        .byte $00   ; 
- D 3 - I - 0x017BF9 05:FBE9: 02        .byte $02   ; 
- D 3 - I - 0x017BFA 05:FBEA: 0A        .byte $0A   ; 
- D 3 - I - 0x017BFB 05:FBEB: 01        .byte $01   ; 
- D 3 - I - 0x017BFC 05:FBEC: 8A        .byte $8A   ; 
- D 3 - I - 0x017BFD 05:FBED: 60        .byte $60   ; 
- D 3 - I - 0x017BFE 05:FBEE: 0F        .byte $0F   ; 
- D 3 - I - 0x017BFF 05:FBEF: 01        .byte $01   ; 
- D 3 - I - 0x017C00 05:FBF0: 06        .byte $06   ; 
- D 3 - I - 0x017C01 05:FBF1: 03        .byte $03   ; 
- D 3 - I - 0x017C02 05:FBF2: 05        .byte $05   ; 
- D 3 - I - 0x017C03 05:FBF3: 04        .byte $04   ; 
- D 3 - I - 0x017C04 05:FBF4: 04        .byte $04   ; 
- D 3 - I - 0x017C05 05:FBF5: 05        .byte $05   ; 
- D 3 - I - 0x017C06 05:FBF6: 03        .byte $03   ; 
- D 3 - I - 0x017C07 05:FBF7: 5F        .byte $5F   ; 
- D 3 - I - 0x017C08 05:FBF8: 8A        .byte $8A   ; 
- D 3 - I - 0x017C09 05:FBF9: 50        .byte $50   ; 
- D 3 - I - 0x017C0A 05:FBFA: 00        .byte $00   ; 
- D 3 - I - 0x017C0B 05:FBFB: 02        .byte $02   ; 
- D 3 - I - 0x017C0C 05:FBFC: 05        .byte $05   ; 
- D 3 - I - 0x017C0D 05:FBFD: 01        .byte $01   ; 
- D 3 - I - 0x017C0E 05:FBFE: 8A        .byte $8A   ; 
- D 3 - I - 0x017C0F 05:FBFF: 30        .byte $30   ; 
- D 3 - I - 0x017C10 05:FC00: 02        .byte $02   ; 
- D 3 - I - 0x017C11 05:FC01: 01        .byte $01   ; 
- D 3 - I - 0x017C12 05:FC02: 02        .byte $02   ; 
- D 3 - I - 0x017C13 05:FC03: 05        .byte $05   ; 
- D 3 - I - 0x017C14 05:FC04: 8A        .byte $8A   ; 
- D 3 - I - 0x017C15 05:FC05: 50        .byte $50   ; 
- D 3 - I - 0x017C16 05:FC06: 00        .byte $00   ; 
- D 3 - I - 0x017C17 05:FC07: 02        .byte $02   ; 
- D 3 - I - 0x017C18 05:FC08: 05        .byte $05   ; 
- D 3 - I - 0x017C19 05:FC09: 01        .byte $01   ; 
- D 3 - I - 0x017C1A 05:FC0A: 8A        .byte $8A   ; 
- D 3 - I - 0x017C1B 05:FC0B: 30        .byte $30   ; 
- D 3 - I - 0x017C1C 05:FC0C: 02        .byte $02   ; 
- D 3 - I - 0x017C1D 05:FC0D: 01        .byte $01   ; 
- D 3 - I - 0x017C1E 05:FC0E: 02        .byte $02   ; 
- D 3 - I - 0x017C1F 05:FC0F: 05        .byte $05   ; 
- D 3 - I - 0x017C20 05:FC10: 8A        .byte $8A   ; 
- D 3 - I - 0x017C21 05:FC11: 50        .byte $50   ; 
- D 3 - I - 0x017C22 05:FC12: 05        .byte $05   ; 
- D 3 - I - 0x017C23 05:FC13: 01        .byte $01   ; 
- D 3 - I - 0x017C24 05:FC14: 07        .byte $07   ; 
- D 3 - I - 0x017C25 05:FC15: 01        .byte $01   ; 
- D 3 - I - 0x017C26 05:FC16: 85        .byte con_85_rts



sub_84_FC17:
- D 3 - I - 0x017C27 05:FC17: 93        .byte $93   ; 
- D 3 - I - 0x017C28 05:FC18: FF        .byte $FF   ; 
- D 3 - I - 0x017C29 05:FC19: 33        .byte $33   ; 
- D 3 - I - 0x017C2A 05:FC1A: 0C        .byte $0C   ; 
- D 3 - I - 0x017C2B 05:FC1B: 31        .byte $31   ; 
- D 3 - I - 0x017C2C 05:FC1C: 04        .byte $04   ; 
- D 3 - I - 0x017C2D 05:FC1D: 33        .byte $33   ; 
- D 3 - I - 0x017C2E 05:FC1E: 04        .byte $04   ; 
- D 3 - I - 0x017C2F 05:FC1F: 31        .byte $31   ; 
- D 3 - I - 0x017C30 05:FC20: 04        .byte $04   ; 
- D 3 - I - 0x017C31 05:FC21: 93        .byte $93   ; 
- D 3 - I - 0x017C32 05:FC22: 06        .byte $06   ; 
- D 3 - I - 0x017C33 05:FC23: 2E        .byte $2E   ; 
- D 3 - I - 0x017C34 05:FC24: 0C        .byte $0C   ; 
- D 3 - I - 0x017C35 05:FC25: 93        .byte $93   ; 
- D 3 - I - 0x017C36 05:FC26: FF        .byte $FF   ; 
- D 3 - I - 0x017C37 05:FC27: 31        .byte $31   ; 
- D 3 - I - 0x017C38 05:FC28: 0C        .byte $0C   ; 
- D 3 - I - 0x017C39 05:FC29: 93        .byte $93   ; 
- D 3 - I - 0x017C3A 05:FC2A: 08        .byte $08   ; 
- D 3 - I - 0x017C3B 05:FC2B: 30        .byte $30   ; 
- D 3 - I - 0x017C3C 05:FC2C: 0C        .byte $0C   ; 
- D 3 - I - 0x017C3D 05:FC2D: 2C        .byte $2C   ; 
- D 3 - I - 0x017C3E 05:FC2E: 0C        .byte $0C   ; 
- D 3 - I - 0x017C3F 05:FC2F: 93        .byte $93   ; 
- D 3 - I - 0x017C40 05:FC30: FF        .byte $FF   ; 
- D 3 - I - 0x017C41 05:FC31: 2B        .byte $2B   ; 
- D 3 - I - 0x017C42 05:FC32: 0C        .byte $0C   ; 
- D 3 - I - 0x017C43 05:FC33: 93        .byte $93   ; 
- D 3 - I - 0x017C44 05:FC34: 06        .byte $06   ; 
- D 3 - I - 0x017C45 05:FC35: 2C        .byte $2C   ; 
- D 3 - I - 0x017C46 05:FC36: 0C        .byte $0C   ; 
- D 3 - I - 0x017C47 05:FC37: 93        .byte $93   ; 
- D 3 - I - 0x017C48 05:FC38: FF        .byte $FF   ; 
- D 3 - I - 0x017C49 05:FC39: 29        .byte $29   ; 
- D 3 - I - 0x017C4A 05:FC3A: 0C        .byte $0C   ; 
- D 3 - I - 0x017C4B 05:FC3B: 93        .byte $93   ; 
- D 3 - I - 0x017C4C 05:FC3C: 06        .byte $06   ; 
- D 3 - I - 0x017C4D 05:FC3D: 2B        .byte $2B   ; 
- D 3 - I - 0x017C4E 05:FC3E: 0C        .byte $0C   ; 
- D 3 - I - 0x017C4F 05:FC3F: 93        .byte $93   ; 
- D 3 - I - 0x017C50 05:FC40: 12        .byte $12   ; 
- D 3 - I - 0x017C51 05:FC41: 27        .byte $27   ; 
- D 3 - I - 0x017C52 05:FC42: 18        .byte $18   ; 
- D 3 - I - 0x017C53 05:FC43: 24        .byte $24   ; 
- D 3 - I - 0x017C54 05:FC44: 06        .byte $06   ; 
- D 3 - I - 0x017C55 05:FC45: 25        .byte $25   ; 
- D 3 - I - 0x017C56 05:FC46: 06        .byte $06   ; 
- D 3 - I - 0x017C57 05:FC47: 27        .byte $27   ; 
- D 3 - I - 0x017C58 05:FC48: 0C        .byte $0C   ; 
- D 3 - I - 0x017C59 05:FC49: 25        .byte $25   ; 
- D 3 - I - 0x017C5A 05:FC4A: 06        .byte $06   ; 
- D 3 - I - 0x017C5B 05:FC4B: 27        .byte $27   ; 
- D 3 - I - 0x017C5C 05:FC4C: 06        .byte $06   ; 
- D 3 - I - 0x017C5D 05:FC4D: 29        .byte $29   ; 
- D 3 - I - 0x017C5E 05:FC4E: 0C        .byte $0C   ; 
- D 3 - I - 0x017C5F 05:FC4F: 27        .byte $27   ; 
- D 3 - I - 0x017C60 05:FC50: 06        .byte $06   ; 
- D 3 - I - 0x017C61 05:FC51: 29        .byte $29   ; 
- D 3 - I - 0x017C62 05:FC52: 06        .byte $06   ; 
- D 3 - I - 0x017C63 05:FC53: 2B        .byte $2B   ; 
- D 3 - I - 0x017C64 05:FC54: 0C        .byte $0C   ; 
- D 3 - I - 0x017C65 05:FC55: 2C        .byte $2C   ; 
- D 3 - I - 0x017C66 05:FC56: 0C        .byte $0C   ; 
- D 3 - I - 0x017C67 05:FC57: 93        .byte $93   ; 
- D 3 - I - 0x017C68 05:FC58: 06        .byte $06   ; 
- D 3 - I - 0x017C69 05:FC59: 2B        .byte $2B   ; 
- D 3 - I - 0x017C6A 05:FC5A: 0C        .byte $0C   ; 
- D 3 - I - 0x017C6B 05:FC5B: 2C        .byte $2C   ; 
- D 3 - I - 0x017C6C 05:FC5C: 0C        .byte $0C   ; 
- D 3 - I - 0x017C6D 05:FC5D: 93        .byte $93   ; 
- D 3 - I - 0x017C6E 05:FC5E: FF        .byte $FF   ; 
- D 3 - I - 0x017C6F 05:FC5F: 2E        .byte $2E   ; 
- D 3 - I - 0x017C70 05:FC60: 0C        .byte $0C   ; 
- D 3 - I - 0x017C71 05:FC61: 93        .byte $93   ; 
- D 3 - I - 0x017C72 05:FC62: 06        .byte $06   ; 
- D 3 - I - 0x017C73 05:FC63: 30        .byte $30   ; 
- D 3 - I - 0x017C74 05:FC64: 0C        .byte $0C   ; 
- D 3 - I - 0x017C75 05:FC65: 31        .byte $31   ; 
- D 3 - I - 0x017C76 05:FC66: 0C        .byte $0C   ; 
- D 3 - I - 0x017C77 05:FC67: 85        .byte con_85_rts



sub_84_FC68:
- D 3 - I - 0x017C78 05:FC68: 93        .byte $93   ; 
- D 3 - I - 0x017C79 05:FC69: FF        .byte $FF   ; 
- D 3 - I - 0x017C7A 05:FC6A: 36        .byte $36   ; 
- D 3 - I - 0x017C7B 05:FC6B: 0C        .byte $0C   ; 
- D 3 - I - 0x017C7C 05:FC6C: 31        .byte $31   ; 
- D 3 - I - 0x017C7D 05:FC6D: 04        .byte $04   ; 
- D 3 - I - 0x017C7E 05:FC6E: 33        .byte $33   ; 
- D 3 - I - 0x017C7F 05:FC6F: 04        .byte $04   ; 
- D 3 - I - 0x017C80 05:FC70: 31        .byte $31   ; 
- D 3 - I - 0x017C81 05:FC71: 04        .byte $04   ; 
- D 3 - I - 0x017C82 05:FC72: 93        .byte $93   ; 
- D 3 - I - 0x017C83 05:FC73: 06        .byte $06   ; 
- D 3 - I - 0x017C84 05:FC74: 2E        .byte $2E   ; 
- D 3 - I - 0x017C85 05:FC75: 0C        .byte $0C   ; 
- D 3 - I - 0x017C86 05:FC76: 93        .byte $93   ; 
- D 3 - I - 0x017C87 05:FC77: FF        .byte $FF   ; 
- D 3 - I - 0x017C88 05:FC78: 31        .byte $31   ; 
- D 3 - I - 0x017C89 05:FC79: 0C        .byte $0C   ; 
- D 3 - I - 0x017C8A 05:FC7A: 93        .byte $93   ; 
- D 3 - I - 0x017C8B 05:FC7B: 08        .byte $08   ; 
- D 3 - I - 0x017C8C 05:FC7C: 2F        .byte $2F   ; 
- D 3 - I - 0x017C8D 05:FC7D: 0C        .byte $0C   ; 
- D 3 - I - 0x017C8E 05:FC7E: 2C        .byte $2C   ; 
- D 3 - I - 0x017C8F 05:FC7F: 0C        .byte $0C   ; 
- D 3 - I - 0x017C90 05:FC80: 93        .byte $93   ; 
- D 3 - I - 0x017C91 05:FC81: FF        .byte $FF   ; 
- D 3 - I - 0x017C92 05:FC82: 2A        .byte $2A   ; 
- D 3 - I - 0x017C93 05:FC83: 0C        .byte $0C   ; 
- D 3 - I - 0x017C94 05:FC84: 93        .byte $93   ; 
- D 3 - I - 0x017C95 05:FC85: 06        .byte $06   ; 
- D 3 - I - 0x017C96 05:FC86: 2F        .byte $2F   ; 
- D 3 - I - 0x017C97 05:FC87: 0C        .byte $0C   ; 
- D 3 - I - 0x017C98 05:FC88: 93        .byte $93   ; 
- D 3 - I - 0x017C99 05:FC89: FF        .byte $FF   ; 
- D 3 - I - 0x017C9A 05:FC8A: 29        .byte $29   ; 
- D 3 - I - 0x017C9B 05:FC8B: 0C        .byte $0C   ; 
- D 3 - I - 0x017C9C 05:FC8C: 93        .byte $93   ; 
- D 3 - I - 0x017C9D 05:FC8D: 06        .byte $06   ; 
- D 3 - I - 0x017C9E 05:FC8E: 2C        .byte $2C   ; 
- D 3 - I - 0x017C9F 05:FC8F: 0C        .byte $0C   ; 
- D 3 - I - 0x017CA0 05:FC90: 93        .byte $93   ; 
- D 3 - I - 0x017CA1 05:FC91: 12        .byte $12   ; 
- D 3 - I - 0x017CA2 05:FC92: 27        .byte $27   ; 
- D 3 - I - 0x017CA3 05:FC93: 18        .byte $18   ; 
- D 3 - I - 0x017CA4 05:FC94: 23        .byte $23   ; 
- D 3 - I - 0x017CA5 05:FC95: 06        .byte $06   ; 
- D 3 - I - 0x017CA6 05:FC96: 25        .byte $25   ; 
- D 3 - I - 0x017CA7 05:FC97: 06        .byte $06   ; 
- D 3 - I - 0x017CA8 05:FC98: 27        .byte $27   ; 
- D 3 - I - 0x017CA9 05:FC99: 0C        .byte $0C   ; 
- D 3 - I - 0x017CAA 05:FC9A: 25        .byte $25   ; 
- D 3 - I - 0x017CAB 05:FC9B: 06        .byte $06   ; 
- D 3 - I - 0x017CAC 05:FC9C: 27        .byte $27   ; 
- D 3 - I - 0x017CAD 05:FC9D: 06        .byte $06   ; 
- D 3 - I - 0x017CAE 05:FC9E: 29        .byte $29   ; 
- D 3 - I - 0x017CAF 05:FC9F: 0C        .byte $0C   ; 
- D 3 - I - 0x017CB0 05:FCA0: 27        .byte $27   ; 
- D 3 - I - 0x017CB1 05:FCA1: 06        .byte $06   ; 
- D 3 - I - 0x017CB2 05:FCA2: 29        .byte $29   ; 
- D 3 - I - 0x017CB3 05:FCA3: 06        .byte $06   ; 
- D 3 - I - 0x017CB4 05:FCA4: 2A        .byte $2A   ; 
- D 3 - I - 0x017CB5 05:FCA5: 0C        .byte $0C   ; 
- D 3 - I - 0x017CB6 05:FCA6: 2C        .byte $2C   ; 
- D 3 - I - 0x017CB7 05:FCA7: 0C        .byte $0C   ; 
- D 3 - I - 0x017CB8 05:FCA8: 93        .byte $93   ; 
- D 3 - I - 0x017CB9 05:FCA9: 06        .byte $06   ; 
- D 3 - I - 0x017CBA 05:FCAA: 2A        .byte $2A   ; 
- D 3 - I - 0x017CBB 05:FCAB: 0C        .byte $0C   ; 
- D 3 - I - 0x017CBC 05:FCAC: 2C        .byte $2C   ; 
- D 3 - I - 0x017CBD 05:FCAD: 0C        .byte $0C   ; 
- D 3 - I - 0x017CBE 05:FCAE: 93        .byte $93   ; 
- D 3 - I - 0x017CBF 05:FCAF: FF        .byte $FF   ; 
- D 3 - I - 0x017CC0 05:FCB0: 2E        .byte $2E   ; 
- D 3 - I - 0x017CC1 05:FCB1: 0C        .byte $0C   ; 
- D 3 - I - 0x017CC2 05:FCB2: 93        .byte $93   ; 
- D 3 - I - 0x017CC3 05:FCB3: 06        .byte $06   ; 
- D 3 - I - 0x017CC4 05:FCB4: 2F        .byte $2F   ; 
- D 3 - I - 0x017CC5 05:FCB5: 0C        .byte $0C   ; 
- D 3 - I - 0x017CC6 05:FCB6: 31        .byte $31   ; 
- D 3 - I - 0x017CC7 05:FCB7: 0C        .byte $0C   ; 
- D 3 - I - 0x017CC8 05:FCB8: 85        .byte con_85_rts



sub_84_FCB9:
- D 3 - I - 0x017CC9 05:FCB9: 8A        .byte $8A   ; 
- D 3 - I - 0x017CCA 05:FCBA: 50        .byte $50   ; 
- D 3 - I - 0x017CCB 05:FCBB: 00        .byte $00   ; 
- D 3 - I - 0x017CCC 05:FCBC: 02        .byte $02   ; 
- D 3 - I - 0x017CCD 05:FCBD: 05        .byte $05   ; 
- D 3 - I - 0x017CCE 05:FCBE: 01        .byte $01   ; 
- D 3 - I - 0x017CCF 05:FCBF: 8A        .byte $8A   ; 
- D 3 - I - 0x017CD0 05:FCC0: 30        .byte $30   ; 
- D 3 - I - 0x017CD1 05:FCC1: 02        .byte $02   ; 
- D 3 - I - 0x017CD2 05:FCC2: 01        .byte $01   ; 
- D 3 - I - 0x017CD3 05:FCC3: 02        .byte $02   ; 
- D 3 - I - 0x017CD4 05:FCC4: 0F        .byte $0F   ; 
- D 3 - I - 0x017CD5 05:FCC5: 03        .byte $03   ; 
- D 3 - I - 0x017CD6 05:FCC6: 01        .byte $01   ; 
- D 3 - I - 0x017CD7 05:FCC7: 02        .byte $02   ; 
- D 3 - I - 0x017CD8 05:FCC8: 07        .byte $07   ; 
- D 3 - I - 0x017CD9 05:FCC9: 8A        .byte $8A   ; 
- D 3 - I - 0x017CDA 05:FCCA: 50        .byte $50   ; 
- D 3 - I - 0x017CDB 05:FCCB: 01        .byte $01   ; 
- D 3 - I - 0x017CDC 05:FCCC: 01        .byte $01   ; 
- D 3 - I - 0x017CDD 05:FCCD: 07        .byte $07   ; 
- D 3 - I - 0x017CDE 05:FCCE: 01        .byte $01   ; 
- D 3 - I - 0x017CDF 05:FCCF: 05        .byte $05   ; 
- D 3 - I - 0x017CE0 05:FCD0: 0F        .byte $0F   ; 
- D 3 - I - 0x017CE1 05:FCD1: 8A        .byte $8A   ; 
- D 3 - I - 0x017CE2 05:FCD2: 30        .byte $30   ; 
- D 3 - I - 0x017CE3 05:FCD3: 02        .byte $02   ; 
- D 3 - I - 0x017CE4 05:FCD4: 01        .byte $01   ; 
- D 3 - I - 0x017CE5 05:FCD5: 03        .byte $03   ; 
- D 3 - I - 0x017CE6 05:FCD6: 01        .byte $01   ; 
- D 3 - I - 0x017CE7 05:FCD7: 02        .byte $02   ; 
- D 3 - I - 0x017CE8 05:FCD8: 07        .byte $07   ; 
- D 3 - I - 0x017CE9 05:FCD9: 8A        .byte $8A   ; 
- D 3 - I - 0x017CEA 05:FCDA: 50        .byte $50   ; 
- D 3 - I - 0x017CEB 05:FCDB: 00        .byte $00   ; 
- D 3 - I - 0x017CEC 05:FCDC: 02        .byte $02   ; 
- D 3 - I - 0x017CED 05:FCDD: 05        .byte $05   ; 
- D 3 - I - 0x017CEE 05:FCDE: 01        .byte $01   ; 
- D 3 - I - 0x017CEF 05:FCDF: 8A        .byte $8A   ; 
- D 3 - I - 0x017CF0 05:FCE0: 30        .byte $30   ; 
- D 3 - I - 0x017CF1 05:FCE1: 02        .byte $02   ; 
- D 3 - I - 0x017CF2 05:FCE2: 01        .byte $01   ; 
- D 3 - I - 0x017CF3 05:FCE3: 02        .byte $02   ; 
- D 3 - I - 0x017CF4 05:FCE4: 07        .byte $07   ; 
- D 3 - I - 0x017CF5 05:FCE5: 8A        .byte $8A   ; 
- D 3 - I - 0x017CF6 05:FCE6: 50        .byte $50   ; 
- D 3 - I - 0x017CF7 05:FCE7: 01        .byte $01   ; 
- D 3 - I - 0x017CF8 05:FCE8: 01        .byte $01   ; 
- D 3 - I - 0x017CF9 05:FCE9: 07        .byte $07   ; 
- D 3 - I - 0x017CFA 05:FCEA: 01        .byte $01   ; 
- D 3 - I - 0x017CFB 05:FCEB: 05        .byte $05   ; 
- D 3 - I - 0x017CFC 05:FCEC: 07        .byte $07   ; 
- D 3 - I - 0x017CFD 05:FCED: 07        .byte $07   ; 
- D 3 - I - 0x017CFE 05:FCEE: 01        .byte $01   ; 
- D 3 - I - 0x017CFF 05:FCEF: 05        .byte $05   ; 
- D 3 - I - 0x017D00 05:FCF0: 07        .byte $07   ; 
- D 3 - I - 0x017D01 05:FCF1: 8A        .byte $8A   ; 
- D 3 - I - 0x017D02 05:FCF2: 50        .byte $50   ; 
- D 3 - I - 0x017D03 05:FCF3: 00        .byte $00   ; 
- D 3 - I - 0x017D04 05:FCF4: 02        .byte $02   ; 
- D 3 - I - 0x017D05 05:FCF5: 05        .byte $05   ; 
- D 3 - I - 0x017D06 05:FCF6: 01        .byte $01   ; 
- D 3 - I - 0x017D07 05:FCF7: 8A        .byte $8A   ; 
- D 3 - I - 0x017D08 05:FCF8: 30        .byte $30   ; 
- D 3 - I - 0x017D09 05:FCF9: 02        .byte $02   ; 
- D 3 - I - 0x017D0A 05:FCFA: 01        .byte $01   ; 
- D 3 - I - 0x017D0B 05:FCFB: 02        .byte $02   ; 
- D 3 - I - 0x017D0C 05:FCFC: 07        .byte $07   ; 
- D 3 - I - 0x017D0D 05:FCFD: 8A        .byte $8A   ; 
- D 3 - I - 0x017D0E 05:FCFE: 50        .byte $50   ; 
- D 3 - I - 0x017D0F 05:FCFF: 01        .byte $01   ; 
- D 3 - I - 0x017D10 05:FD00: 01        .byte $01   ; 
- D 3 - I - 0x017D11 05:FD01: 07        .byte $07   ; 
- D 3 - I - 0x017D12 05:FD02: 01        .byte $01   ; 
- D 3 - I - 0x017D13 05:FD03: 05        .byte $05   ; 
- D 3 - I - 0x017D14 05:FD04: 07        .byte $07   ; 
- D 3 - I - 0x017D15 05:FD05: 07        .byte $07   ; 
- D 3 - I - 0x017D16 05:FD06: 01        .byte $01   ; 
- D 3 - I - 0x017D17 05:FD07: 05        .byte $05   ; 
- D 3 - I - 0x017D18 05:FD08: 07        .byte $07   ; 
- D 3 - I - 0x017D19 05:FD09: 8A        .byte $8A   ; 
- D 3 - I - 0x017D1A 05:FD0A: 50        .byte $50   ; 
- D 3 - I - 0x017D1B 05:FD0B: 00        .byte $00   ; 
- D 3 - I - 0x017D1C 05:FD0C: 02        .byte $02   ; 
- D 3 - I - 0x017D1D 05:FD0D: 05        .byte $05   ; 
- D 3 - I - 0x017D1E 05:FD0E: 01        .byte $01   ; 
- D 3 - I - 0x017D1F 05:FD0F: 8A        .byte $8A   ; 
- D 3 - I - 0x017D20 05:FD10: 30        .byte $30   ; 
- D 3 - I - 0x017D21 05:FD11: 02        .byte $02   ; 
- D 3 - I - 0x017D22 05:FD12: 01        .byte $01   ; 
- D 3 - I - 0x017D23 05:FD13: 02        .byte $02   ; 
- D 3 - I - 0x017D24 05:FD14: 0F        .byte $0F   ; 
- D 3 - I - 0x017D25 05:FD15: 03        .byte $03   ; 
- D 3 - I - 0x017D26 05:FD16: 01        .byte $01   ; 
- D 3 - I - 0x017D27 05:FD17: 02        .byte $02   ; 
- D 3 - I - 0x017D28 05:FD18: 07        .byte $07   ; 
- D 3 - I - 0x017D29 05:FD19: 8A        .byte $8A   ; 
- D 3 - I - 0x017D2A 05:FD1A: 50        .byte $50   ; 
- D 3 - I - 0x017D2B 05:FD1B: 01        .byte $01   ; 
- D 3 - I - 0x017D2C 05:FD1C: 01        .byte $01   ; 
- D 3 - I - 0x017D2D 05:FD1D: 07        .byte $07   ; 
- D 3 - I - 0x017D2E 05:FD1E: 01        .byte $01   ; 
- D 3 - I - 0x017D2F 05:FD1F: 05        .byte $05   ; 
- D 3 - I - 0x017D30 05:FD20: 0F        .byte $0F   ; 
- D 3 - I - 0x017D31 05:FD21: 8A        .byte $8A   ; 
- D 3 - I - 0x017D32 05:FD22: 50        .byte $50   ; 
- D 3 - I - 0x017D33 05:FD23: 00        .byte $00   ; 
- D 3 - I - 0x017D34 05:FD24: 02        .byte $02   ; 
- D 3 - I - 0x017D35 05:FD25: 05        .byte $05   ; 
- D 3 - I - 0x017D36 05:FD26: 01        .byte $01   ; 
- D 3 - I - 0x017D37 05:FD27: 8A        .byte $8A   ; 
- D 3 - I - 0x017D38 05:FD28: 30        .byte $30   ; 
- D 3 - I - 0x017D39 05:FD29: 02        .byte $02   ; 
- D 3 - I - 0x017D3A 05:FD2A: 01        .byte $01   ; 
- D 3 - I - 0x017D3B 05:FD2B: 02        .byte $02   ; 
- D 3 - I - 0x017D3C 05:FD2C: 07        .byte $07   ; 
- D 3 - I - 0x017D3D 05:FD2D: 8A        .byte $8A   ; 
- D 3 - I - 0x017D3E 05:FD2E: 50        .byte $50   ; 
- D 3 - I - 0x017D3F 05:FD2F: 01        .byte $01   ; 
- D 3 - I - 0x017D40 05:FD30: 01        .byte $01   ; 
- D 3 - I - 0x017D41 05:FD31: 07        .byte $07   ; 
- D 3 - I - 0x017D42 05:FD32: 01        .byte $01   ; 
- D 3 - I - 0x017D43 05:FD33: 05        .byte $05   ; 
- D 3 - I - 0x017D44 05:FD34: 0F        .byte $0F   ; 
- D 3 - I - 0x017D45 05:FD35: 07        .byte $07   ; 
- D 3 - I - 0x017D46 05:FD36: 01        .byte $01   ; 
- D 3 - I - 0x017D47 05:FD37: 05        .byte $05   ; 
- D 3 - I - 0x017D48 05:FD38: 0F        .byte $0F   ; 
- D 3 - I - 0x017D49 05:FD39: 85        .byte con_85_rts



sub_84_FD3A:
- D 3 - I - 0x017D4A 05:FD3A: 28        .byte $28   ; 
- D 3 - I - 0x017D4B 05:FD3B: 8B        .byte $8B   ; 
- D 3 - I - 0x017D4C 05:FD3C: 00        .byte $00   ; 
- D 3 - I - 0x017D4D 05:FD3D: 23        .byte $23   ; 
- D 3 - I - 0x017D4E 05:FD3E: 20        .byte $20   ; 
- D 3 - I - 0x017D4F 05:FD3F: 1C        .byte $1C   ; 
- D 3 - I - 0x017D50 05:FD40: 28        .byte $28   ; 
- D 3 - I - 0x017D51 05:FD41: 23        .byte $23   ; 
- D 3 - I - 0x017D52 05:FD42: 20        .byte $20   ; 
- D 3 - I - 0x017D53 05:FD43: 1C        .byte $1C   ; 
- D 3 - I - 0x017D54 05:FD44: 28        .byte $28   ; 
- D 3 - I - 0x017D55 05:FD45: 23        .byte $23   ; 
- D 3 - I - 0x017D56 05:FD46: 20        .byte $20   ; 
- D 3 - I - 0x017D57 05:FD47: 1C        .byte $1C   ; 
- D 3 - I - 0x017D58 05:FD48: 28        .byte $28   ; 
- D 3 - I - 0x017D59 05:FD49: 23        .byte $23   ; 
- D 3 - I - 0x017D5A 05:FD4A: 20        .byte $20   ; 
- D 3 - I - 0x017D5B 05:FD4B: 1C        .byte $1C   ; 
- D 3 - I - 0x017D5C 05:FD4C: 28        .byte $28   ; 
- D 3 - I - 0x017D5D 05:FD4D: 23        .byte $23   ; 
- D 3 - I - 0x017D5E 05:FD4E: 20        .byte $20   ; 
- D 3 - I - 0x017D5F 05:FD4F: 1C        .byte $1C   ; 
- D 3 - I - 0x017D60 05:FD50: 28        .byte $28   ; 
- D 3 - I - 0x017D61 05:FD51: 23        .byte $23   ; 
- D 3 - I - 0x017D62 05:FD52: 20        .byte $20   ; 
- D 3 - I - 0x017D63 05:FD53: 1C        .byte $1C   ; 
- D 3 - I - 0x017D64 05:FD54: 8B        .byte $8B   ; 
- D 3 - I - 0x017D65 05:FD55: 01        .byte $01   ; 
- D 3 - I - 0x017D66 05:FD56: 85        .byte con_85_rts



sub_84_FD57:
- D 3 - I - 0x017D67 05:FD57: 26        .byte $26   ; 
- D 3 - I - 0x017D68 05:FD58: 8B        .byte $8B   ; 
- D 3 - I - 0x017D69 05:FD59: 00        .byte $00   ; 
- D 3 - I - 0x017D6A 05:FD5A: 23        .byte $23   ; 
- D 3 - I - 0x017D6B 05:FD5B: 1F        .byte $1F   ; 
- D 3 - I - 0x017D6C 05:FD5C: 1A        .byte $1A   ; 
- D 3 - I - 0x017D6D 05:FD5D: 26        .byte $26   ; 
- D 3 - I - 0x017D6E 05:FD5E: 23        .byte $23   ; 
- D 3 - I - 0x017D6F 05:FD5F: 1F        .byte $1F   ; 
- D 3 - I - 0x017D70 05:FD60: 1A        .byte $1A   ; 
- D 3 - I - 0x017D71 05:FD61: 26        .byte $26   ; 
- D 3 - I - 0x017D72 05:FD62: 23        .byte $23   ; 
- D 3 - I - 0x017D73 05:FD63: 1F        .byte $1F   ; 
- D 3 - I - 0x017D74 05:FD64: 1A        .byte $1A   ; 
- D 3 - I - 0x017D75 05:FD65: 26        .byte $26   ; 
- D 3 - I - 0x017D76 05:FD66: 23        .byte $23   ; 
- D 3 - I - 0x017D77 05:FD67: 1F        .byte $1F   ; 
- D 3 - I - 0x017D78 05:FD68: 1A        .byte $1A   ; 
- D 3 - I - 0x017D79 05:FD69: 26        .byte $26   ; 
- D 3 - I - 0x017D7A 05:FD6A: 23        .byte $23   ; 
- D 3 - I - 0x017D7B 05:FD6B: 1F        .byte $1F   ; 
- D 3 - I - 0x017D7C 05:FD6C: 1A        .byte $1A   ; 
- D 3 - I - 0x017D7D 05:FD6D: 26        .byte $26   ; 
- D 3 - I - 0x017D7E 05:FD6E: 23        .byte $23   ; 
- D 3 - I - 0x017D7F 05:FD6F: 1F        .byte $1F   ; 
- D 3 - I - 0x017D80 05:FD70: 1A        .byte $1A   ; 
- D 3 - I - 0x017D81 05:FD71: 8B        .byte $8B   ; 
- D 3 - I - 0x017D82 05:FD72: 01        .byte $01   ; 
- D 3 - I - 0x017D83 05:FD73: 85        .byte con_85_rts


; bzk garbage
- - - - - - 0x017D84 05:FD74: 26        .byte $26   ; 
- - - - - - 0x017D85 05:FD75: 8B        .byte $8B   ; 
- - - - - - 0x017D86 05:FD76: 00        .byte $00   ; 
- - - - - - 0x017D87 05:FD77: 22        .byte $22   ; 
- - - - - - 0x017D88 05:FD78: 1F        .byte $1F   ; 
- - - - - - 0x017D89 05:FD79: 1A        .byte $1A   ; 
- - - - - - 0x017D8A 05:FD7A: 26        .byte $26   ; 
- - - - - - 0x017D8B 05:FD7B: 22        .byte $22   ; 
- - - - - - 0x017D8C 05:FD7C: 1F        .byte $1F   ; 
- - - - - - 0x017D8D 05:FD7D: 1A        .byte $1A   ; 
- - - - - - 0x017D8E 05:FD7E: 26        .byte $26   ; 
- - - - - - 0x017D8F 05:FD7F: 22        .byte $22   ; 
- - - - - - 0x017D90 05:FD80: 1F        .byte $1F   ; 
- - - - - - 0x017D91 05:FD81: 1A        .byte $1A   ; 
- - - - - - 0x017D92 05:FD82: 26        .byte $26   ; 
- - - - - - 0x017D93 05:FD83: 22        .byte $22   ; 
- - - - - - 0x017D94 05:FD84: 1F        .byte $1F   ; 
- - - - - - 0x017D95 05:FD85: 1A        .byte $1A   ; 
- - - - - - 0x017D96 05:FD86: 26        .byte $26   ; 
- - - - - - 0x017D97 05:FD87: 22        .byte $22   ; 
- - - - - - 0x017D98 05:FD88: 1F        .byte $1F   ; 
- - - - - - 0x017D99 05:FD89: 1A        .byte $1A   ; 
- - - - - - 0x017D9A 05:FD8A: 26        .byte $26   ; 
- - - - - - 0x017D9B 05:FD8B: 22        .byte $22   ; 
- - - - - - 0x017D9C 05:FD8C: 1F        .byte $1F   ; 
- - - - - - 0x017D9D 05:FD8D: 1A        .byte $1A   ; 
- - - - - - 0x017D9E 05:FD8E: 8B        .byte $8B   ; 
- - - - - - 0x017D9F 05:FD8F: 01        .byte $01   ; 
- - - - - - 0x017DA0 05:FD90: 85        .byte con_85_rts



sub_84_FD91:
- D 3 - I - 0x017DA1 05:FD91: 23        .byte $23   ; 
- D 3 - I - 0x017DA2 05:FD92: 8B        .byte $8B   ; 
- D 3 - I - 0x017DA3 05:FD93: 00        .byte $00   ; 
- D 3 - I - 0x017DA4 05:FD94: 1E        .byte $1E   ; 
- D 3 - I - 0x017DA5 05:FD95: 19        .byte $19   ; 
- D 3 - I - 0x017DA6 05:FD96: 23        .byte $23   ; 
- D 3 - I - 0x017DA7 05:FD97: 1E        .byte $1E   ; 
- D 3 - I - 0x017DA8 05:FD98: 19        .byte $19   ; 
- D 3 - I - 0x017DA9 05:FD99: 23        .byte $23   ; 
- D 3 - I - 0x017DAA 05:FD9A: 1E        .byte $1E   ; 
- D 3 - I - 0x017DAB 05:FD9B: 19        .byte $19   ; 
- D 3 - I - 0x017DAC 05:FD9C: 23        .byte $23   ; 
- D 3 - I - 0x017DAD 05:FD9D: 1E        .byte $1E   ; 
- D 3 - I - 0x017DAE 05:FD9E: 19        .byte $19   ; 
- D 3 - I - 0x017DAF 05:FD9F: 23        .byte $23   ; 
- D 3 - I - 0x017DB0 05:FDA0: 1E        .byte $1E   ; 
- D 3 - I - 0x017DB1 05:FDA1: 19        .byte $19   ; 
- D 3 - I - 0x017DB2 05:FDA2: 23        .byte $23   ; 
- D 3 - I - 0x017DB3 05:FDA3: 1E        .byte $1E   ; 
- D 3 - I - 0x017DB4 05:FDA4: 8B        .byte $8B   ; 
- D 3 - I - 0x017DB5 05:FDA5: 00        .byte $00   ; 
- D 3 - I - 0x017DB6 05:FDA6: 19        .byte $19   ; 
- D 3 - I - 0x017DB7 05:FDA7: 23        .byte $23   ; 
- D 3 - I - 0x017DB8 05:FDA8: 1E        .byte $1E   ; 
- D 3 - I - 0x017DB9 05:FDA9: 19        .byte $19   ; 
- D 3 - I - 0x017DBA 05:FDAA: 23        .byte $23   ; 
- D 3 - I - 0x017DBB 05:FDAB: 1E        .byte $1E   ; 
- D 3 - I - 0x017DBC 05:FDAC: 19        .byte $19   ; 
- D 3 - I - 0x017DBD 05:FDAD: 8B        .byte $8B   ; 
- D 3 - I - 0x017DBE 05:FDAE: 01        .byte $01   ; 
- D 3 - I - 0x017DBF 05:FDAF: 85        .byte con_85_rts



sub_84_FDB0:
- D 3 - I - 0x017DC0 05:FDB0: 23        .byte $23   ; 
- D 3 - I - 0x017DC1 05:FDB1: 8B        .byte $8B   ; 
- D 3 - I - 0x017DC2 05:FDB2: 00        .byte $00   ; 
- D 3 - I - 0x017DC3 05:FDB3: 1E        .byte $1E   ; 
- D 3 - I - 0x017DC4 05:FDB4: 19        .byte $19   ; 
- D 3 - I - 0x017DC5 05:FDB5: 23        .byte $23   ; 
- D 3 - I - 0x017DC6 05:FDB6: 1E        .byte $1E   ; 
- D 3 - I - 0x017DC7 05:FDB7: 19        .byte $19   ; 
- D 3 - I - 0x017DC8 05:FDB8: 23        .byte $23   ; 
- D 3 - I - 0x017DC9 05:FDB9: 1E        .byte $1E   ; 
- D 3 - I - 0x017DCA 05:FDBA: 19        .byte $19   ; 
- D 3 - I - 0x017DCB 05:FDBB: 23        .byte $23   ; 
- D 3 - I - 0x017DCC 05:FDBC: 1E        .byte $1E   ; 
- D 3 - I - 0x017DCD 05:FDBD: 19        .byte $19   ; 
sub_84_FDBE:
- D 3 - I - 0x017DCE 05:FDBE: 23        .byte $23   ; 
- D 3 - I - 0x017DCF 05:FDBF: 8B        .byte $8B   ; 
- D 3 - I - 0x017DD0 05:FDC0: 00        .byte $00   ; 
- D 3 - I - 0x017DD1 05:FDC1: 1E        .byte $1E   ; 
- D 3 - I - 0x017DD2 05:FDC2: 19        .byte $19   ; 
- D 3 - I - 0x017DD3 05:FDC3: 23        .byte $23   ; 
- D 3 - I - 0x017DD4 05:FDC4: 1E        .byte $1E   ; 
- D 3 - I - 0x017DD5 05:FDC5: 19        .byte $19   ; 
- D 3 - I - 0x017DD6 05:FDC6: 8B        .byte $8B   ; 
- D 3 - I - 0x017DD7 05:FDC7: 01        .byte $01   ; 
- D 3 - I - 0x017DD8 05:FDC8: 85        .byte con_85_rts



sub_84_FDC9:
- D 3 - I - 0x017DD9 05:FDC9: 1E        .byte $1E   ; 
- D 3 - I - 0x017DDA 05:FDCA: 8B        .byte $8B   ; 
- D 3 - I - 0x017DDB 05:FDCB: 00        .byte $00   ; 
- D 3 - I - 0x017DDC 05:FDCC: 23        .byte $23   ; 
- D 3 - I - 0x017DDD 05:FDCD: 25        .byte $25   ; 
- D 3 - I - 0x017DDE 05:FDCE: 2A        .byte $2A   ; 
- D 3 - I - 0x017DDF 05:FDCF: 1E        .byte $1E   ; 
- D 3 - I - 0x017DE0 05:FDD0: 23        .byte $23   ; 
- D 3 - I - 0x017DE1 05:FDD1: 25        .byte $25   ; 
- D 3 - I - 0x017DE2 05:FDD2: 2A        .byte $2A   ; 
- D 3 - I - 0x017DE3 05:FDD3: 8B        .byte $8B   ; 
- D 3 - I - 0x017DE4 05:FDD4: 01        .byte $01   ; 
- D 3 - I - 0x017DE5 05:FDD5: 85        .byte con_85_rts



sub_84_FDD6:
- D 3 - I - 0x017DE6 05:FDD6: 1E        .byte $1E   ; 
- D 3 - I - 0x017DE7 05:FDD7: 8B        .byte $8B   ; 
- D 3 - I - 0x017DE8 05:FDD8: 00        .byte $00   ; 
- D 3 - I - 0x017DE9 05:FDD9: 23        .byte $23   ; 
- D 3 - I - 0x017DEA 05:FDDA: 25        .byte $25   ; 
- D 3 - I - 0x017DEB 05:FDDB: 2A        .byte $2A   ; 
- D 3 - I - 0x017DEC 05:FDDC: 1E        .byte $1E   ; 
- D 3 - I - 0x017DED 05:FDDD: 23        .byte $23   ; 
- D 3 - I - 0x017DEE 05:FDDE: 25        .byte $25   ; 
- D 3 - I - 0x017DEF 05:FDDF: 2A        .byte $2A   ; 
- D 3 - I - 0x017DF0 05:FDE0: 1E        .byte $1E   ; 
- D 3 - I - 0x017DF1 05:FDE1: 23        .byte $23   ; 
- D 3 - I - 0x017DF2 05:FDE2: 25        .byte $25   ; 
- D 3 - I - 0x017DF3 05:FDE3: 2A        .byte $2A   ; 
- D 3 - I - 0x017DF4 05:FDE4: 1E        .byte $1E   ; 
- D 3 - I - 0x017DF5 05:FDE5: 23        .byte $23   ; 
- D 3 - I - 0x017DF6 05:FDE6: 25        .byte $25   ; 
- D 3 - I - 0x017DF7 05:FDE7: 2A        .byte $2A   ; 
- D 3 - I - 0x017DF8 05:FDE8: 8B        .byte $8B   ; 
- D 3 - I - 0x017DF9 05:FDE9: 01        .byte $01   ; 
- D 3 - I - 0x017DFA 05:FDEA: 85        .byte con_85_rts



sub_84_FDEB:
- D 3 - I - 0x017DFB 05:FDEB: 1E        .byte $1E   ; 
- D 3 - I - 0x017DFC 05:FDEC: 8B        .byte $8B   ; 
- D 3 - I - 0x017DFD 05:FDED: 00        .byte $00   ; 
- D 3 - I - 0x017DFE 05:FDEE: 23        .byte $23   ; 
- D 3 - I - 0x017DFF 05:FDEF: 25        .byte $25   ; 
- D 3 - I - 0x017E00 05:FDF0: 2A        .byte $2A   ; 
- D 3 - I - 0x017E01 05:FDF1: 1E        .byte $1E   ; 
- D 3 - I - 0x017E02 05:FDF2: 23        .byte $23   ; 
- D 3 - I - 0x017E03 05:FDF3: 25        .byte $25   ; 
- D 3 - I - 0x017E04 05:FDF4: 2A        .byte $2A   ; 
- D 3 - I - 0x017E05 05:FDF5: 8B        .byte $8B   ; 
- D 3 - I - 0x017E06 05:FDF6: 01        .byte $01   ; 
- D 3 - I - 0x017E07 05:FDF7: 85        .byte con_85_rts



sub_84_FDF8:
- D 3 - I - 0x017E08 05:FDF8: 10        .byte $10   ; 
- D 3 - I - 0x017E09 05:FDF9: 15        .byte $15   ; 
- D 3 - I - 0x017E0A 05:FDFA: 19        .byte $19   ; 
- D 3 - I - 0x017E0B 05:FDFB: 1C        .byte $1C   ; 
- D 3 - I - 0x017E0C 05:FDFC: 21        .byte $21   ; 
- D 3 - I - 0x017E0D 05:FDFD: 25        .byte $25   ; 
- D 3 - I - 0x017E0E 05:FDFE: 85        .byte con_85_rts


; bzk garbage
- - - - - - 0x017E0F 05:FDFF: FF        .byte $FF   ; 



.segment "BANK_02_i"
.include "copy_bank___FE00_FFF9.asm"



.out .sprintf("Free bytes in bank 02: 0x%X [%d]", ($FFFA - *), ($FFFA - *))



.segment "VECTORS_02"
- D 3 - - - 0x01800A 05:FFFA: FD 07     .word ram_jmp_xxxx
- - - - - - 0x01800C 05:FFFC: 00 FE     .word vec_inc_FE00_RESET
- - - - - - 0x01800E 05:FFFE: 26 FE     .word vec_inc_FE26_IRQ



