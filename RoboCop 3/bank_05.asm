.segment "BANK_05"
.include "bank_ram.inc"
.include "bank_val.inc"
.org $8000 ; for listing file
; 0x014010-0x01800F



.export ofs_000_0x014010_00
ofs_000_0x014010_00:
.export ofs_000_0x014010_01
ofs_000_0x014010_01:
.export ofs_000_0x014010_02
ofs_000_0x014010_02:
; bzk optimize
C D 0 J - - 0x014010 05:8000: 4C D4 8C  JMP loc_8CD4



.export sub_0x014013
sub_0x014013:
; bzk optimize
C - - - - - 0x014013 05:8003: 4C 0E 80  JMP loc_800E



.export sub_0x014016_print_text
sub_0x014016_print_text:
C - - - - - 0x014016 05:8006: A0 00     LDY #$00
C - - - - - 0x014018 05:8008: 8C D9 03  STY ram_03D9
C - - - - - 0x01401B 05:800B: 4C B5 B7  JMP loc_B7B5_print_text



loc_800E:
C D 0 - - - 0x01401E 05:800E: 0A        ASL
C - - - - - 0x01401F 05:800F: AA        TAX
C - - - - - 0x014020 05:8010: BD 29 80  LDA tbl_8029,X
C - - - - - 0x014023 05:8013: 8D 02 06  STA ram_0602_jmp
C - - - - - 0x014026 05:8016: BD 2A 80  LDA tbl_8029 + $01,X
C - - - - - 0x014029 05:8019: 8D 03 06  STA ram_0602_jmp + $01
C - - - - - 0x01402C 05:801C: A9 78     LDA #$78
C - - - - - 0x01402E 05:801E: 8D A0 03  STA ram_039C_obj + $04
C - - - - - 0x014031 05:8021: A9 70     LDA #$70
C - - - - - 0x014033 05:8023: 8D A1 03  STA ram_039C_obj + $05
C - - - - - 0x014036 05:8026: 6C 02 06  JMP (ram_0602_jmp)



tbl_8029:
- D 0 - - - 0x014039 05:8029: 31 80     .word ofs_006_8031_00_print_copyrights
- D 0 - - - 0x01403B 05:802B: FE 81     .word ofs_006_81FE_01
- D 0 - - - 0x01403D 05:802D: 63 82     .word ofs_006_8263_02
- D 0 - - - 0x01403F 05:802F: 35 81     .word ofs_006_8135_03



ofs_006_8031_00_print_copyrights:
C - - J - - 0x014041 05:8031: A9 09     LDA #$09    ; no text here, used for other stuff inside the routine
C - - - - - 0x014043 05:8033: 20 B5 B7  JSR sub_B7B5_print_text
C - - - - - 0x014046 05:8036: A0 00     LDY #$00
C - - - - - 0x014048 05:8038: 8C 00 20  STY $2000
C - - - - - 0x01404B 05:803B: 8C 01 20  STY $2001
C - - - - - 0x01404E 05:803E: 2C 02 20  BIT $2002
C - - - - - 0x014051 05:8041: A9 21     LDA #> $2122
C - - - - - 0x014053 05:8043: 85 F7     STA ram_00F7_ppu_hi
C - - - - - 0x014055 05:8045: 8D 06 20  STA $2006
C - - - - - 0x014058 05:8048: A9 22     LDA #< $2122
C - - - - - 0x01405A 05:804A: 85 F6     STA ram_00F6_ppu_lo
C - - - - - 0x01405C 05:804C: 8D 06 20  STA $2006
; bzk X is probably always 00 here
C - - - - - 0x01405F 05:804F: BD 56 B8  LDA tbl_B84C + $0A,X
C - - - - - 0x014062 05:8052: 85 F4     STA ram_00F4
C - - - - - 0x014064 05:8054: BD 57 B8  LDA tbl_B84C + $0A + $01,X
C - - - - - 0x014067 05:8057: 85 F5     STA ram_00F5
loc_8059_loop:
bra_8059_loop:
C D 0 - - - 0x014069 05:8059: B1 F4     LDA (ram_00F4),Y
C - - - - - 0x01406B 05:805B: C9 FE     CMP #con_B84C_new_line
C - - - - - 0x01406D 05:805D: F0 17     BEQ bra_8076_FE
C - - - - - 0x01406F 05:805F: C9 FA     CMP #con_B84C_exit
C - - - - - 0x014071 05:8061: F0 3D     BEQ bra_80A0_FA
C - - - - - 0x014073 05:8063: C9 C0     CMP #$C0
C - - - - - 0x014075 05:8065: B0 03     BCS bra_806A
C - - - - - 0x014077 05:8067: 38        SEC
C - - - - - 0x014078 05:8068: E9 40     SBC #$40
bra_806A:
C - - - - - 0x01407A 05:806A: 8D 07 20  STA $2007
C - - - - - 0x01407D 05:806D: E6 F4     INC ram_00F4
C - - - - - 0x01407F 05:806F: D0 E8     BNE bra_8059_loop
; if overflow
C - - - - - 0x014081 05:8071: E6 F5     INC ram_00F5
C - - - - - 0x014083 05:8073: 4C 59 80  JMP loc_8059_loop
bra_8076_FE:
C - - - - - 0x014086 05:8076: A5 F6     LDA ram_00F6_ppu_lo
C - - - - - 0x014088 05:8078: 18        CLC
C - - - - - 0x014089 05:8079: 69 20     ADC #< $0020
C - - - - - 0x01408B 05:807B: 85 F6     STA ram_00F6_ppu_lo
C - - - - - 0x01408D 05:807D: A5 F7     LDA ram_00F7_ppu_hi
C - - - - - 0x01408F 05:807F: 69 00     ADC #> $0020
C - - - - - 0x014091 05:8081: 85 F7     STA ram_00F7_ppu_hi
C - - - - - 0x014093 05:8083: A5 F4     LDA ram_00F4
C - - - - - 0x014095 05:8085: 18        CLC
C - - - - - 0x014096 05:8086: 69 01     ADC #< $0001
C - - - - - 0x014098 05:8088: 85 F4     STA ram_00F4
C - - - - - 0x01409A 05:808A: A5 F5     LDA ram_00F5
C - - - - - 0x01409C 05:808C: 69 00     ADC #> $0001
C - - - - - 0x01409E 05:808E: 85 F5     STA ram_00F5
C - - - - - 0x0140A0 05:8090: 2C 02 20  BIT $2002
C - - - - - 0x0140A3 05:8093: A5 F7     LDA ram_00F7_ppu_hi
C - - - - - 0x0140A5 05:8095: 8D 06 20  STA $2006
C - - - - - 0x0140A8 05:8098: A5 F6     LDA ram_00F6_ppu_lo
C - - - - - 0x0140AA 05:809A: 8D 06 20  STA $2006
C - - - - - 0x0140AD 05:809D: 4C 59 80  JMP loc_8059_loop
bra_80A0_FA:
C - - - - - 0x0140B0 05:80A0: A9 81     LDA #$81
C - - - - - 0x0140B2 05:80A2: 8D 00 20  STA $2000
C - - - - - 0x0140B5 05:80A5: A9 1D     LDA #con_sound_1D
C - - - - - 0x0140B7 05:80A7: 20 03 C0  JSR sub_0x01C013_prepare_sound
C - - - - - 0x0140BA 05:80AA: A9 01     LDA #$01
C - - - - - 0x0140BC 05:80AC: 8D B3 03  STA ram_03A9_obj + $0A
C - - - - - 0x0140BF 05:80AF: A2 FF     LDX #$FF
bra_80B1_loop:
bra_80B1_infinite_loop:
C - - - - - 0x0140C1 05:80B1: AD A2 03  LDA ram_039C_obj + $06
C - - - - - 0x0140C4 05:80B4: F0 FB     BEQ bra_80B1_infinite_loop
C - - - - - 0x0140C6 05:80B6: A9 00     LDA #$00
C - - - - - 0x0140C8 05:80B8: 8D A2 03  STA ram_039C_obj + $06
C - - - - - 0x0140CB 05:80BB: 8A        TXA
C - - - - - 0x0140CC 05:80BC: 48        PHA
C - - - - - 0x0140CD 05:80BD: A2 03     LDX #$03
C - - - - - 0x0140CF 05:80BF: A0 00     LDY #$00
bra_80C1_garbage_loop:
C - - - - - 0x0140D1 05:80C1: 88        DEY
C - - - - - 0x0140D2 05:80C2: D0 FD     BNE bra_80C1_garbage_loop
C - - - - - 0x0140D4 05:80C4: CA        DEX
C - - - - - 0x0140D5 05:80C5: D0 FA     BNE bra_80C1_garbage_loop
C - - - - - 0x0140D7 05:80C7: 20 B1 B7  JSR sub_B7B1
C - - - - - 0x0140DA 05:80CA: 68        PLA
C - - - - - 0x0140DB 05:80CB: AA        TAX
C - - - - - 0x0140DC 05:80CC: CA        DEX
C - - - - - 0x0140DD 05:80CD: D0 E2     BNE bra_80B1_loop
C - - - - - 0x0140DF 05:80CF: A9 00     LDA #$00
C - - - - - 0x0140E1 05:80D1: 8D A2 03  STA ram_039C_obj + $06
C - - - - - 0x0140E4 05:80D4: 8D A5 03  STA ram_039C_obj + $09
C - - - - - 0x0140E7 05:80D7: 8D A6 03  STA ram_039C_obj + $0A
C - - - - - 0x0140EA 05:80DA: 8D A7 03  STA ram_039C_obj + $0B
C - - - - - 0x0140ED 05:80DD: A9 02     LDA #$02
C - - - - - 0x0140EF 05:80DF: 8D B3 03  STA ram_03A9_obj + $0A
C - - - - - 0x0140F2 05:80E2: A9 FF     LDA #$FF
C - - - - - 0x0140F4 05:80E4: 8D B1 03  STA ram_03A9_obj + $08
C - - - - - 0x0140F7 05:80E7: A9 08     LDA #$08
C - - - - - 0x0140F9 05:80E9: 8D 21 03  STA ram_0321
C - - - - - 0x0140FC 05:80EC: A9 80     LDA #$80
C - - - - - 0x0140FE 05:80EE: 8D 00 20  STA $2000
C - - - - - 0x014101 05:80F1: 4C 47 83  JMP loc_8347



loc_80F4:
C D 0 - - - 0x014104 05:80F4: A9 00     LDA #$00
C - - - - - 0x014106 05:80F6: 8D A2 03  STA ram_039C_obj + $06
C - - - - - 0x014109 05:80F9: 8D B4 03  STA ram_03A9_obj + $0B
C - - - - - 0x01410C 05:80FC: 8D B5 03  STA ram_03A9_obj + $0C
C - - - - - 0x01410F 05:80FF: 8D D7 03  STA ram_03D7
C - - - - - 0x014112 05:8102: 8D 00 20  STA $2000
C - - - - - 0x014115 05:8105: 8D 01 20  STA $2001
C - - - - - 0x014118 05:8108: 8D A5 03  STA ram_039C_obj + $09
C - - - - - 0x01411B 05:810B: A9 08     LDA #$08
C - - - - - 0x01411D 05:810D: 8D B2 03  STA ram_03A9_obj + $09
C - - - - - 0x014120 05:8110: A9 01     LDA #$01
C - - - - - 0x014122 05:8112: 8D D3 03  STA ram_03D3
C - - - - - 0x014125 05:8115: A9 03     LDA #$03
C - - - - - 0x014127 05:8117: 8D B3 03  STA ram_03A9_obj + $0A
C - - - - - 0x01412A 05:811A: A9 FF     LDA #$FF
C - - - - - 0x01412C 05:811C: 8D B1 03  STA ram_03A9_obj + $08
C - - - - - 0x01412F 05:811F: 20 05 83  JSR sub_8305_hide_all_sprites
C - - - - - 0x014132 05:8122: 20 10 83  JSR sub_8310_clear_buffers
C - - - - - 0x014135 05:8125: A9 04     LDA #$04
C - - - - - 0x014137 05:8127: 8D A7 03  STA ram_039C_obj + $0B
C - - - - - 0x01413A 05:812A: 20 39 98  JSR sub_9839
C - - - - - 0x01413D 05:812D: A9 81     LDA #$81
C - - - - - 0x01413F 05:812F: 8D 00 20  STA $2000
C - - - - - 0x014142 05:8132: 4C 47 83  JMP loc_8347



ofs_006_8135_03:
C - - J - - 0x014145 05:8135: A9 00     LDA #$00
C - - - - - 0x014147 05:8137: 8D A2 03  STA ram_039C_obj + $06
C - - - - - 0x01414A 05:813A: 8D 00 20  STA $2000
C - - - - - 0x01414D 05:813D: 8D 01 20  STA $2001
C - - - - - 0x014150 05:8140: 8D D4 03  STA ram_03D4
C - - - - - 0x014153 05:8143: 8D A5 03  STA ram_039C_obj + $09
C - - - - - 0x014156 05:8146: 8D A6 03  STA ram_039C_obj + $0A
C - - - - - 0x014159 05:8149: 8D D6 06  STA ram_06D6
C - - - - - 0x01415C 05:814C: 8D B2 03  STA ram_03A9_obj + $09
C - - - - - 0x01415F 05:814F: A9 04     LDA #$04
C - - - - - 0x014161 05:8151: 8D B3 03  STA ram_03A9_obj + $0A
C - - - - - 0x014164 05:8154: A9 FF     LDA #$FF
C - - - - - 0x014166 05:8156: 8D B1 03  STA ram_03A9_obj + $08
C - - - - - 0x014169 05:8159: A9 01     LDA #$01
C - - - - - 0x01416B 05:815B: 8D D3 03  STA ram_03D3
C - - - - - 0x01416E 05:815E: A9 07     LDA #$07
C - - - - - 0x014170 05:8160: 8D A7 03  STA ram_039C_obj + $0B
C - - - - - 0x014173 05:8163: 20 39 98  JSR sub_9839
C - - - - - 0x014176 05:8166: 20 05 83  JSR sub_8305_hide_all_sprites
C - - - - - 0x014179 05:8169: A9 7F     LDA #$7F
C - - - - - 0x01417B 05:816B: 8D 04 02  STA ram_spr_Y + $04
C - - - - - 0x01417E 05:816E: 8D 08 02  STA ram_spr_Y + $08
C - - - - - 0x014181 05:8171: 8D 0C 02  STA ram_spr_Y + $0C
C - - - - - 0x014184 05:8174: 8D 10 02  STA ram_spr_Y + $10
C - - - - - 0x014187 05:8177: 8D 14 02  STA ram_spr_Y + $14
C - - - - - 0x01418A 05:817A: A9 87     LDA #$87
C - - - - - 0x01418C 05:817C: 8D 18 02  STA ram_spr_Y + $18
C - - - - - 0x01418F 05:817F: 8D 1C 02  STA ram_spr_Y + $1C
C - - - - - 0x014192 05:8182: 8D 20 02  STA ram_spr_Y + $20
C - - - - - 0x014195 05:8185: 8D 24 02  STA ram_spr_Y + $24
C - - - - - 0x014198 05:8188: A9 02     LDA #$02
C - - - - - 0x01419A 05:818A: 8D 06 02  STA ram_spr_A + $04
C - - - - - 0x01419D 05:818D: 8D 0A 02  STA ram_spr_A + $08
C - - - - - 0x0141A0 05:8190: 8D 0E 02  STA ram_spr_A + $0C
C - - - - - 0x0141A3 05:8193: 8D 12 02  STA ram_spr_A + $10
C - - - - - 0x0141A6 05:8196: 8D 16 02  STA ram_spr_A + $14
C - - - - - 0x0141A9 05:8199: 8D 1A 02  STA ram_spr_A + $18
C - - - - - 0x0141AC 05:819C: 8D 1E 02  STA ram_spr_A + $1C
C - - - - - 0x0141AF 05:819F: 8D 22 02  STA ram_spr_A + $20
C - - - - - 0x0141B2 05:81A2: 8D 26 02  STA ram_spr_A + $24
C - - - - - 0x0141B5 05:81A5: A2 F7     LDX #$F7
C - - - - - 0x0141B7 05:81A7: 8E 05 02  STX ram_spr_T + $04
C - - - - - 0x0141BA 05:81AA: A9 80     LDA #$80
C - - - - - 0x0141BC 05:81AC: 8D 07 02  STA ram_spr_X + $04
C - - - - - 0x0141BF 05:81AF: 8D 1B 02  STA ram_spr_X + $18
C - - - - - 0x0141C2 05:81B2: A9 43     LDA #$43
C - - - - - 0x0141C4 05:81B4: 8D 09 02  STA ram_spr_T + $08
C - - - - - 0x0141C7 05:81B7: A9 88     LDA #$88
C - - - - - 0x0141C9 05:81B9: 8D 0B 02  STA ram_spr_X + $08
C - - - - - 0x0141CC 05:81BC: 8D 1F 02  STA ram_spr_X + $1C
C - - - - - 0x0141CF 05:81BF: E8        INX ; F8
C - - - - - 0x0141D0 05:81C0: 8E 0D 02  STX ram_spr_T + $0C
C - - - - - 0x0141D3 05:81C3: A9 90     LDA #$90
C - - - - - 0x0141D5 05:81C5: 8D 0F 02  STA ram_spr_X + $0C
C - - - - - 0x0141D8 05:81C8: 8D 23 02  STA ram_spr_X + $20
C - - - - - 0x0141DB 05:81CB: E8        INX ; F9
C - - - - - 0x0141DC 05:81CC: 8E 11 02  STX ram_spr_T + $10
C - - - - - 0x0141DF 05:81CF: A9 98     LDA #$98
C - - - - - 0x0141E1 05:81D1: 8D 13 02  STA ram_spr_X + $10
C - - - - - 0x0141E4 05:81D4: 8D 27 02  STA ram_spr_X + $24
C - - - - - 0x0141E7 05:81D7: E8        INX ; FA
C - - - - - 0x0141E8 05:81D8: 8E 15 02  STX ram_spr_T + $14
C - - - - - 0x0141EB 05:81DB: A9 A0     LDA #$A0
C - - - - - 0x0141ED 05:81DD: 8D 17 02  STA ram_spr_X + $14
C - - - - - 0x0141F0 05:81E0: A2 FB     LDX #$FB    ; bzk optimize, INX
C - - - - - 0x0141F2 05:81E2: 8E 19 02  STX ram_spr_T + $18
C - - - - - 0x0141F5 05:81E5: E8        INX ; FC
C - - - - - 0x0141F6 05:81E6: 8E 1D 02  STX ram_spr_T + $1C
C - - - - - 0x0141F9 05:81E9: E8        INX ; FD
C - - - - - 0x0141FA 05:81EA: 8E 21 02  STX ram_spr_T + $20
C - - - - - 0x0141FD 05:81ED: E8        INX ; FE
C - - - - - 0x0141FE 05:81EE: 8E 25 02  STX ram_spr_T + $24
C - - - - - 0x014201 05:81F1: A9 1F     LDA #con_sound_1F
C - - - - - 0x014203 05:81F3: 20 03 C0  JSR sub_0x01C013_prepare_sound
C - - - - - 0x014206 05:81F6: A9 81     LDA #$81
C - - - - - 0x014208 05:81F8: 8D 00 20  STA $2000
C - - - - - 0x01420B 05:81FB: 4C 47 83  JMP loc_8347



loc_81FE:
ofs_006_81FE_01:
C D 0 J - - 0x01420E 05:81FE: A9 00     LDA #$00
C - - - - - 0x014210 05:8200: 8D A2 03  STA ram_039C_obj + $06
C - - - - - 0x014213 05:8203: A9 05     LDA #$05
C - - - - - 0x014215 05:8205: 8D B3 03  STA ram_03A9_obj + $0A
C - - - - - 0x014218 05:8208: A9 FF     LDA #$FF
C - - - - - 0x01421A 05:820A: 8D B1 03  STA ram_03A9_obj + $08
C - - - - - 0x01421D 05:820D: A9 08     LDA #$08
C - - - - - 0x01421F 05:820F: 8D A7 03  STA ram_039C_obj + $0B
C - - - - - 0x014222 05:8212: 20 39 98  JSR sub_9839
C - - - - - 0x014225 05:8215: 20 93 90  JSR sub_9093_unit_head
C - - - - - 0x014228 05:8218: 20 1E 92  JSR sub_921E_unit_body
C - - - - - 0x01422B 05:821B: 20 07 91  JSR sub_9107_unit_arms
C - - - - - 0x01422E 05:821E: 20 98 92  JSR sub_9298_unit_legs
C - - - - - 0x014231 05:8221: A9 A8     LDA #$A8
C - - - - - 0x014233 05:8223: 8D B8 03  STA ram_03B8
C - - - - - 0x014236 05:8226: A9 40     LDA #$40
C - - - - - 0x014238 05:8228: 8D C3 03  STA ram_03C3
C - - - - - 0x01423B 05:822B: A9 02     LDA #$02
C - - - - - 0x01423D 05:822D: 8D BC 03  STA ram_03BC
C - - - - - 0x014240 05:8230: 8D BD 03  STA ram_03BD
C - - - - - 0x014243 05:8233: A9 1E     LDA #con_sound_1E
C - - - - - 0x014245 05:8235: 20 03 C0  JSR sub_0x01C013_prepare_sound
C - - - - - 0x014248 05:8238: AD A0 06  LDA ram_unit_hp_head
C - - - - - 0x01424B 05:823B: 8D DA 03  STA ram_03DA
C - - - - - 0x01424E 05:823E: AD A1 06  LDA ram_unit_hp_body
C - - - - - 0x014251 05:8241: 8D DC 03  STA ram_03DC
C - - - - - 0x014254 05:8244: AD A2 06  LDA ram_unit_hp_arms
C - - - - - 0x014257 05:8247: 8D DB 03  STA ram_03DB
C - - - - - 0x01425A 05:824A: AD A3 06  LDA ram_unit_hp_legs
C - - - - - 0x01425D 05:824D: 8D DD 03  STA ram_03DD
C - - - - - 0x014260 05:8250: AD A4 06  LDA ram_repair_item
C - - - - - 0x014263 05:8253: 8D DE 03  STA ram_03DE
C - - - - - 0x014266 05:8256: A9 06     LDA #$06
C - - - - - 0x014268 05:8258: 8D 01 20  STA $2001
C - - - - - 0x01426B 05:825B: A9 80     LDA #$80
C - - - - - 0x01426D 05:825D: 8D 00 20  STA $2000
C - - - - - 0x014270 05:8260: 4C 47 83  JMP loc_8347



ofs_006_8263_02:
C - - J - - 0x014273 05:8263: A9 00     LDA #$00
C - - - - - 0x014275 05:8265: 8D A2 03  STA ram_039C_obj + $06
C - - - - - 0x014278 05:8268: 8D B4 03  STA ram_03A9_obj + $0B
C - - - - - 0x01427B 05:826B: 8D B5 03  STA ram_03A9_obj + $0C
C - - - - - 0x01427E 05:826E: 8D D7 03  STA ram_03D7
C - - - - - 0x014281 05:8271: 8D 00 20  STA $2000
C - - - - - 0x014284 05:8274: 8D 01 20  STA $2001
C - - - - - 0x014287 05:8277: 8D A5 03  STA ram_039C_obj + $09
C - - - - - 0x01428A 05:827A: 8D A6 03  STA ram_039C_obj + $0A
C - - - - - 0x01428D 05:827D: A9 08     LDA #$08
C - - - - - 0x01428F 05:827F: 8D B2 03  STA ram_03A9_obj + $09
C - - - - - 0x014292 05:8282: A9 01     LDA #$01
C - - - - - 0x014294 05:8284: 8D D3 03  STA ram_03D3
C - - - - - 0x014297 05:8287: A9 06     LDA #$06
C - - - - - 0x014299 05:8289: 8D B3 03  STA ram_03A9_obj + $0A
C - - - - - 0x01429C 05:828C: A9 FF     LDA #$FF
C - - - - - 0x01429E 05:828E: 8D B1 03  STA ram_03A9_obj + $08
C - - - - - 0x0142A1 05:8291: AD D6 06  LDA ram_06D6
C - - - - - 0x0142A4 05:8294: F0 08     BEQ bra_829E
C - - - - - 0x0142A6 05:8296: A9 01     LDA #$01
C - - - - - 0x0142A8 05:8298: 8D D2 03  STA ram_03D2
C - - - - - 0x0142AB 05:829B: 4C AB 82  JMP loc_82AB
bra_829E:
C - - - - - 0x0142AE 05:829E: A9 00     LDA #$00
C - - - - - 0x0142B0 05:82A0: 8D D2 03  STA ram_03D2
C - - - - - 0x0142B3 05:82A3: 8D A5 06  STA ram_06A5
C - - - - - 0x0142B6 05:82A6: A5 03     LDA ram_mission
C - - - - - 0x0142B8 05:82A8: 8D CA 06  STA ram_copy_mission
loc_82AB:
C D 0 - - - 0x0142BB 05:82AB: 20 05 83  JSR sub_8305_hide_all_sprites
C - - - - - 0x0142BE 05:82AE: 20 10 83  JSR sub_8310_clear_buffers
C - - - - - 0x0142C1 05:82B1: A9 04     LDA #$04
C - - - - - 0x0142C3 05:82B3: 8D A7 03  STA ram_039C_obj + $0B
C - - - - - 0x0142C6 05:82B6: 20 39 98  JSR sub_9839
C - - - - - 0x0142C9 05:82B9: A2 27     LDX #$27
bra_82BB_loop:
C - - - - - 0x0142CB 05:82BB: 20 83 95  JSR sub_9583
C - - - - - 0x0142CE 05:82BE: 29 3F     AND #$3F
C - - - - - 0x0142D0 05:82C0: 9D 28 03  STA ram_0328_stars,X
C - - - - - 0x0142D3 05:82C3: 20 83 95  JSR sub_9583
C - - - - - 0x0142D6 05:82C6: 29 3F     AND #$3F
C - - - - - 0x0142D8 05:82C8: 9D 50 03  STA ram_0350_stars,X
C - - - - - 0x0142DB 05:82CB: A9 00     LDA #$00
C - - - - - 0x0142DD 05:82CD: 9D 78 03  STA ram_0378_stars,X
C - - - - - 0x0142E0 05:82D0: CA        DEX
C - - - - - 0x0142E1 05:82D1: 10 E8     BPL bra_82BB_loop
C - - - - - 0x0142E3 05:82D3: 2C 02 20  BIT $2002
C - - - - - 0x0142E6 05:82D6: A9 21     LDA #> $21CB
C - - - - - 0x0142E8 05:82D8: 8D 06 20  STA $2006
C - - - - - 0x0142EB 05:82DB: A9 CB     LDA #< $21CB
C - - - - - 0x0142ED 05:82DD: 8D 06 20  STA $2006
C - - - - - 0x0142F0 05:82E0: A2 00     LDX #$00
bra_82E2_loop:
C - - - - - 0x0142F2 05:82E2: BD FA 82  LDA tbl_82FA_tiles,X
C - - - - - 0x0142F5 05:82E5: 30 06     BMI bra_82ED_80_FF
; 00-7F
C - - - - - 0x0142F7 05:82E7: 8D 07 20  STA $2007
C - - - - - 0x0142FA 05:82EA: E8        INX
C - - - - - 0x0142FB 05:82EB: D0 F5     BNE bra_82E2_loop
bra_82ED_80_FF:
C - - - - - 0x0142FD 05:82ED: A9 20     LDA #con_sound_20
C - - - - - 0x0142FF 05:82EF: 20 03 C0  JSR sub_0x01C013_prepare_sound
C - - - - - 0x014302 05:82F2: A9 81     LDA #$81
C - - - - - 0x014304 05:82F4: 8D 00 20  STA $2000
C - - - - - 0x014307 05:82F7: 4C 47 83  JMP loc_8347



tbl_82FA_tiles:
- D 0 - - - 0x01430A 05:82FA: 07        .byte $07   ; 
- D 0 - - - 0x01430B 05:82FB: 01        .byte $01   ; 
- D 0 - - - 0x01430C 05:82FC: 0D        .byte $0D   ; 
- D 0 - - - 0x01430D 05:82FD: 05        .byte $05   ; 
- D 0 - - - 0x01430E 05:82FE: 00        .byte $00   ; 
- D 0 - - - 0x01430F 05:82FF: 00        .byte $00   ; 
- D 0 - - - 0x014310 05:8300: 0F        .byte $0F   ; 
- D 0 - - - 0x014311 05:8301: 16        .byte $16   ; 
- D 0 - - - 0x014312 05:8302: 05        .byte $05   ; 
- D 0 - - - 0x014313 05:8303: 12        .byte $12   ; 
- D 0 - - - 0x014314 05:8304: FF        .byte $FF   ; end token



sub_8305_hide_all_sprites:
C - - - - - 0x014315 05:8305: A2 00     LDX #$00
C - - - - - 0x014317 05:8307: A9 F0     LDA #$F0
bra_8309_loop:
C - - - - - 0x014319 05:8309: 9D 00 02  STA ram_oam,X
C - - - - - 0x01431C 05:830C: E8        INX
C - - - - - 0x01431D 05:830D: D0 FA     BNE bra_8309_loop
C - - - - - 0x01431F 05:830F: 60        RTS



sub_8310_clear_buffers:
C - - - - - 0x014320 05:8310: A2 6F     LDX #$6F
C - - - - - 0x014322 05:8312: A9 00     LDA #$00
bra_8314_loop:
C - - - - - 0x014324 05:8314: 9D 00 07  STA ram_0700_buffer + $00,X
C - - - - - 0x014327 05:8317: CA        DEX
C - - - - - 0x014328 05:8318: 10 FA     BPL bra_8314_loop
C - - - - - 0x01432A 05:831A: 60        RTS



sub_831B_move_data_to_buffers:
C - - - - - 0x01432B 05:831B: A2 1B     LDX #$1B
bra_831D_loop:
C - - - - - 0x01432D 05:831D: BD 1C 07  LDA ram_0700_buffer + $1C,X
C - - - - - 0x014330 05:8320: 9D 00 07  STA ram_0700_buffer + $00,X
C - - - - - 0x014333 05:8323: CA        DEX
C - - - - - 0x014334 05:8324: 10 F7     BPL bra_831D_loop
C - - - - - 0x014336 05:8326: A2 1B     LDX #$1B
bra_8328_loop:
C - - - - - 0x014338 05:8328: BD 38 07  LDA ram_0700_buffer + $38,X
C - - - - - 0x01433B 05:832B: 9D 1C 07  STA ram_0700_buffer + $1C,X
C - - - - - 0x01433E 05:832E: CA        DEX
C - - - - - 0x01433F 05:832F: 10 F7     BPL bra_8328_loop
C - - - - - 0x014341 05:8331: A2 1B     LDX #$1B
bra_8333_loop:
C - - - - - 0x014343 05:8333: BD 54 07  LDA ram_0700_buffer + $54,X
C - - - - - 0x014346 05:8336: 9D 38 07  STA ram_0700_buffer + $38,X
C - - - - - 0x014349 05:8339: CA        DEX
C - - - - - 0x01434A 05:833A: 10 F7     BPL bra_8333_loop
C - - - - - 0x01434C 05:833C: A2 1B     LDX #$1B
C - - - - - 0x01434E 05:833E: A9 00     LDA #$00
bra_8340_loop:
C - - - - - 0x014350 05:8340: 9D 54 07  STA ram_0700_buffer + $54,X
C - - - - - 0x014353 05:8343: CA        DEX
C - - - - - 0x014354 05:8344: 10 FA     BPL bra_8340_loop
C - - - - - 0x014356 05:8346: 60        RTS



loc_8347:
bra_8347_infinite_loop:
C D 0 - - - 0x014357 05:8347: AD A2 03  LDA ram_039C_obj + $06
C - - - - - 0x01435A 05:834A: F0 FB     BEQ bra_8347_infinite_loop
C - - - - - 0x01435C 05:834C: 0A        ASL
C - - - - - 0x01435D 05:834D: AA        TAX
C - - - - - 0x01435E 05:834E: BD 61 83  LDA tbl_8361,X
C - - - - - 0x014361 05:8351: 85 A0     STA ram_00A0_data
C - - - - - 0x014363 05:8353: E8        INX
C - - - - - 0x014364 05:8354: BD 61 83  LDA tbl_8361,X
C - - - - - 0x014367 05:8357: 85 A1     STA ram_00A0_data + $01
C - - - - - 0x014369 05:8359: A9 00     LDA #$00
C - - - - - 0x01436B 05:835B: 8D A2 03  STA ram_039C_obj + $06
C - - - - - 0x01436E 05:835E: 6C A0 00  JMP (ram_00A0_data)



tbl_8361:
- - - - - - 0x014371 05:8361: 71 83     .word ofs_007_8371_00   ; never used
- - - - - - 0x014373 05:8363: 74 83     .word ofs_007_8374_01
- D 0 - - - 0x014375 05:8365: 87 83     .word ofs_007_8387_02
- D 0 - - - 0x014377 05:8367: 5D 86     .word ofs_007_865D_03
- D 0 - - - 0x014379 05:8369: 22 88     .word ofs_007_8822_04
- D 0 - - - 0x01437B 05:836B: 18 8A     .word ofs_007_8A18_05
- D 0 - - - 0x01437D 05:836D: 3A 8B     .word ofs_007_8B3A_06
- D 0 - - - 0x01437F 05:836F: A6 8B     .word ofs_007_8BA6_07



ofs_007_8371_00:
- - - - - - 0x014381 05:8371: 4C 47 83  JMP loc_8347



ofs_007_8374_01:
- - - - - - 0x014384 05:8374: 4C 47 83  JMP loc_8347



tbl_8377_spr_T:
- D 0 - - - 0x014387 05:8377: 10        .byte $10   ; 
- D 0 - - - 0x014388 05:8378: 12        .byte $12   ; 
- D 0 - - - 0x014389 05:8379: 05        .byte $05   ; 
- D 0 - - - 0x01438A 05:837A: 13        .byte $13   ; 
- D 0 - - - 0x01438B 05:837B: 05        .byte $05   ; 
- D 0 - - - 0x01438C 05:837C: 0E        .byte $0E   ; 
- D 0 - - - 0x01438D 05:837D: 14        .byte $14   ; 
- D 0 - - - 0x01438E 05:837E: 13        .byte $13   ; 



tbl_837F_spr_T:
- D 0 - - - 0x01438F 05:837F: 0F        .byte $0F   ; 
- D 0 - - - 0x014390 05:8380: 04        .byte $04   ; 
- D 0 - - - 0x014391 05:8381: 15        .byte $15   ; 
- D 0 - - - 0x014392 05:8382: 03        .byte $03   ; 
- D 0 - - - 0x014393 05:8383: 14        .byte $14   ; 
- D 0 - - - 0x014394 05:8384: 09        .byte $09   ; 
- D 0 - - - 0x014395 05:8385: 0F        .byte $0F   ; 
- D 0 - - - 0x014396 05:8386: 0E        .byte $0E   ; 



ofs_007_8387_02:
C - - J - - 0x014397 05:8387: AE A7 03  LDX ram_039C_obj + $0B
C - - - - - 0x01439A 05:838A: BD 27 98  LDA tbl_9827,X
C - - - - - 0x01439D 05:838D: CD A6 03  CMP ram_039C_obj + $0A
C - - - - - 0x0143A0 05:8390: D0 08     BNE bra_839A
C - - - - - 0x0143A2 05:8392: BD 30 98  LDA tbl_9830,X
C - - - - - 0x0143A5 05:8395: CD A5 03  CMP ram_039C_obj + $09
C - - - - - 0x0143A8 05:8398: F0 03     BEQ bra_839D
bra_839A:
C - - - - - 0x0143AA 05:839A: 4C 5A 84  JMP loc_845A
bra_839D:
C - - - - - 0x0143AD 05:839D: AE A7 03  LDX ram_039C_obj + $0B
C - - - - - 0x0143B0 05:83A0: E0 04     CPX #$04
C - - - - - 0x0143B2 05:83A2: 90 11     BCC bra_83B5
C - - - - - 0x0143B4 05:83A4: CA        DEX
C - - - - - 0x0143B5 05:83A5: CA        DEX
C - - - - - 0x0143B6 05:83A6: 8E A7 03  STX ram_039C_obj + $0B
C - - - - - 0x0143B9 05:83A9: BD 27 98  LDA tbl_9827,X
C - - - - - 0x0143BC 05:83AC: 8D A6 03  STA ram_039C_obj + $0A
C - - - - - 0x0143BF 05:83AF: BD 30 98  LDA tbl_9830,X
C - - - - - 0x0143C2 05:83B2: 8D A5 03  STA ram_039C_obj + $09
bra_83B5:
C - - - - - 0x0143C5 05:83B5: 20 05 83  JSR sub_8305_hide_all_sprites
C - - - - - 0x0143C8 05:83B8: AD A7 03  LDA ram_039C_obj + $0B
C - - - - - 0x0143CB 05:83BB: 20 39 98  JSR sub_9839
C - - - - - 0x0143CE 05:83BE: AD A7 03  LDA ram_039C_obj + $0B
C - - - - - 0x0143D1 05:83C1: C9 00     CMP #$00
C - - - - - 0x0143D3 05:83C3: D0 27     BNE bra_83EC
C - - - - - 0x0143D5 05:83C5: A9 68     LDA #$68
C - - - - - 0x0143D7 05:83C7: 48        PHA
C - - - - - 0x0143D8 05:83C8: A2 00     LDX #$00
bra_83CA_loop:
C - - - - - 0x0143DA 05:83CA: 8A        TXA
C - - - - - 0x0143DB 05:83CB: 0A        ASL
C - - - - - 0x0143DC 05:83CC: 0A        ASL
C - - - - - 0x0143DD 05:83CD: A8        TAY
C - - - - - 0x0143DE 05:83CE: 68        PLA
C - - - - - 0x0143DF 05:83CF: 99 03 02  STA ram_spr_X,Y
C - - - - - 0x0143E2 05:83D2: 18        CLC
C - - - - - 0x0143E3 05:83D3: 69 08     ADC #$08
C - - - - - 0x0143E5 05:83D5: 48        PHA
C - - - - - 0x0143E6 05:83D6: A9 00     LDA #$00
C - - - - - 0x0143E8 05:83D8: 99 02 02  STA ram_spr_A,Y
C - - - - - 0x0143EB 05:83DB: A9 80     LDA #$80
C - - - - - 0x0143ED 05:83DD: 99 00 02  STA ram_spr_Y,Y
C - - - - - 0x0143F0 05:83E0: BD 77 83  LDA tbl_8377_spr_T,X
C - - - - - 0x0143F3 05:83E3: 99 01 02  STA ram_spr_T,Y
C - - - - - 0x0143F6 05:83E6: E8        INX
C - - - - - 0x0143F7 05:83E7: E0 08     CPX #$08
C - - - - - 0x0143F9 05:83E9: D0 DF     BNE bra_83CA_loop
C - - - - - 0x0143FB 05:83EB: 68        PLA
bra_83EC:
C - - - - - 0x0143FC 05:83EC: AD A7 03  LDA ram_039C_obj + $0B
C - - - - - 0x0143FF 05:83EF: C9 01     CMP #$01
C - - - - - 0x014401 05:83F1: D0 52     BNE bra_8445
C - - - - - 0x014403 05:83F3: 2C 02 20  BIT $2002
C - - - - - 0x014406 05:83F6: A9 22     LDA #> $220C
C - - - - - 0x014408 05:83F8: 8D 06 20  STA $2006
C - - - - - 0x01440B 05:83FB: A9 0C     LDA #< $220C
C - - - - - 0x01440D 05:83FD: 8D 06 20  STA $2006
C - - - - - 0x014410 05:8400: A9 92     LDA #$92
C - - - - - 0x014412 05:8402: 8D 07 20  STA $2007
C - - - - - 0x014415 05:8405: A9 93     LDA #$93
C - - - - - 0x014417 05:8407: 8D 07 20  STA $2007
C - - - - - 0x01441A 05:840A: A9 84     LDA #$84
C - - - - - 0x01441C 05:840C: 8D C3 02  STA ram_spr_X + $C0
C - - - - - 0x01441F 05:840F: A9 34     LDA #$34
C - - - - - 0x014421 05:8411: 8D C0 02  STA ram_spr_Y + $C0
C - - - - - 0x014424 05:8414: A9 01     LDA #$01
C - - - - - 0x014426 05:8416: 8D C1 02  STA ram_spr_T + $C0
C - - - - - 0x014429 05:8419: A9 00     LDA #$00
C - - - - - 0x01442B 05:841B: 8D C2 02  STA ram_spr_A + $C0
C - - - - - 0x01442E 05:841E: A9 70     LDA #$70
C - - - - - 0x014430 05:8420: 48        PHA
C - - - - - 0x014431 05:8421: A2 00     LDX #$00
bra_8423_loop:
C - - - - - 0x014433 05:8423: 8A        TXA
C - - - - - 0x014434 05:8424: 0A        ASL
C - - - - - 0x014435 05:8425: 0A        ASL
C - - - - - 0x014436 05:8426: A8        TAY
C - - - - - 0x014437 05:8427: 68        PLA
C - - - - - 0x014438 05:8428: 99 03 02  STA ram_spr_X,Y
C - - - - - 0x01443B 05:842B: 18        CLC
C - - - - - 0x01443C 05:842C: 69 08     ADC #$08
C - - - - - 0x01443E 05:842E: 48        PHA
C - - - - - 0x01443F 05:842F: A9 00     LDA #$00
C - - - - - 0x014441 05:8431: 99 02 02  STA ram_spr_A,Y
C - - - - - 0x014444 05:8434: A9 7F     LDA #$7F
C - - - - - 0x014446 05:8436: 99 00 02  STA ram_spr_Y,Y
C - - - - - 0x014449 05:8439: BD 7F 83  LDA tbl_837F_spr_T,X
C - - - - - 0x01444C 05:843C: 99 01 02  STA ram_spr_T,Y
C - - - - - 0x01444F 05:843F: E8        INX
C - - - - - 0x014450 05:8440: E0 08     CPX #$08
C - - - - - 0x014452 05:8442: D0 DF     BNE bra_8423_loop
C - - - - - 0x014454 05:8444: 68        PLA
bra_8445:
C - - - - - 0x014455 05:8445: AD A7 03  LDA ram_039C_obj + $0B
C - - - - - 0x014458 05:8448: C9 03     CMP #$03
C - - - - - 0x01445A 05:844A: D0 03     BNE bra_844F
C - - - - - 0x01445C 05:844C: 20 DF 9A  JSR sub_9ADF
bra_844F:
C - - - - - 0x01445F 05:844F: A9 81     LDA #$81
C - - - - - 0x014461 05:8451: 8D 00 20  STA $2000
C - - - - - 0x014464 05:8454: 20 C1 94  JSR sub_94C1_read_joy_regs
C - - - - - 0x014467 05:8457: EE A7 03  INC ram_039C_obj + $0B
loc_845A:
C D 0 - - - 0x01446A 05:845A: AD A5 03  LDA ram_039C_obj + $09
C - - - - - 0x01446D 05:845D: 18        CLC
C - - - - - 0x01446E 05:845E: 69 01     ADC #< $0001
C - - - - - 0x014470 05:8460: 8D A5 03  STA ram_039C_obj + $09
C - - - - - 0x014473 05:8463: AD A6 03  LDA ram_039C_obj + $0A
C - - - - - 0x014476 05:8466: 69 00     ADC #> $0001
C - - - - - 0x014478 05:8468: 8D A6 03  STA ram_039C_obj + $0A
C - - - - - 0x01447B 05:846B: AD A7 03  LDA ram_039C_obj + $0B
C - - - - - 0x01447E 05:846E: C9 04     CMP #$04
C - - - - - 0x014480 05:8470: D0 1F     BNE bra_8491
C - - - - - 0x014482 05:8472: 20 D7 94  JSR sub_94D7
C - - - - - 0x014485 05:8475: AD B0 03  LDA ram_menu_buttons
C - - - - - 0x014488 05:8478: F0 11     BEQ bra_848B
- - - - - - 0x01448A 05:847A: A2 04     LDX #$04
- - - - - - 0x01448C 05:847C: 8E A7 03  STX ram_039C_obj + $0B
- - - - - - 0x01448F 05:847F: BD 27 98  LDA tbl_9827,X
- - - - - - 0x014492 05:8482: 8D A6 03  STA ram_039C_obj + $0A
- - - - - - 0x014495 05:8485: BD 30 98  LDA tbl_9830,X
- - - - - - 0x014498 05:8488: 8D A5 03  STA ram_039C_obj + $09
bra_848B:
C - - - - - 0x01449B 05:848B: 20 B1 B7  JSR sub_B7B1
C - - - - - 0x01449E 05:848E: 4C 47 83  JMP loc_8347
bra_8491:
C - - - - - 0x0144A1 05:8491: AD AA 03  LDA ram_03A9_obj + $01
C - - - - - 0x0144A4 05:8494: D0 17     BNE bra_84AD
C - - - - - 0x0144A6 05:8496: A2 03     LDX #$03
C - - - - - 0x0144A8 05:8498: A0 00     LDY #$00
bra_849A_garbage_loop:
C - - - - - 0x0144AA 05:849A: 88        DEY
C - - - - - 0x0144AB 05:849B: D0 FD     BNE bra_849A_garbage_loop
C - - - - - 0x0144AD 05:849D: CA        DEX
C - - - - - 0x0144AE 05:849E: D0 FA     BNE bra_849A_garbage_loop
C - - - - - 0x0144B0 05:84A0: 20 C1 94  JSR sub_94C1_read_joy_regs
C - - - - - 0x0144B3 05:84A3: 20 B1 B7  JSR sub_B7B1
C - - - - - 0x0144B6 05:84A6: A9 01     LDA #$01
C - - - - - 0x0144B8 05:84A8: 85 20     STA ram_0020
C - - - - - 0x0144BA 05:84AA: 4C 47 83  JMP loc_8347
bra_84AD:
C - - - - - 0x0144BD 05:84AD: A2 01     LDX #$01
C - - - - - 0x0144BF 05:84AF: A0 00     LDY #$00
bra_84B1_garbage_loop:
C - - - - - 0x0144C1 05:84B1: 88        DEY
C - - - - - 0x0144C2 05:84B2: D0 FD     BNE bra_84B1_garbage_loop
C - - - - - 0x0144C4 05:84B4: CA        DEX
C - - - - - 0x0144C5 05:84B5: D0 FA     BNE bra_84B1_garbage_loop
C - - - - - 0x0144C7 05:84B7: 20 B1 B7  JSR sub_B7B1
C - - - - - 0x0144CA 05:84BA: 20 C1 94  JSR sub_94C1_read_joy_regs
C - - - - - 0x0144CD 05:84BD: AC D2 03  LDY ram_03D2
C - - - - - 0x0144D0 05:84C0: BE 51 86  LDX tbl_8651_index,Y
C - - - - - 0x0144D3 05:84C3: BD CB 95  LDA tbl_95CB_spr_index,X
C - - - - - 0x0144D6 05:84C6: AA        TAX
C - - - - - 0x0144D7 05:84C7: B9 55 86  LDA tbl_8655_counter,Y
C - - - - - 0x0144DA 05:84CA: 8D C5 03  STA ram_03C5
C - - - - - 0x0144DD 05:84CD: AD AF 03  LDA ram_03A9_obj + $06
C - - - - - 0x0144E0 05:84D0: 29 1F     AND #$1F
C - - - - - 0x0144E2 05:84D2: C9 15     CMP #$15
C - - - - - 0x0144E4 05:84D4: 90 04     BCC bra_84DA
C - - - - - 0x0144E6 05:84D6: A9 F0     LDA #$F0
C - - - - - 0x0144E8 05:84D8: D0 69     BNE bra_8543_loop    ; jmp
bra_84DA:
C - - - - - 0x0144EA 05:84DA: A5 20     LDA ram_0020
C - - - - - 0x0144EC 05:84DC: F0 0C     BEQ bra_84EA
C - - - - - 0x0144EE 05:84DE: AD B0 03  LDA ram_menu_buttons
C - - - - - 0x0144F1 05:84E1: F0 03     BEQ bra_84E6
C - - - - - 0x0144F3 05:84E3: 4C 1A 86  JMP loc_861A
bra_84E6:
C - - - - - 0x0144F6 05:84E6: A9 00     LDA #$00
C - - - - - 0x0144F8 05:84E8: 85 20     STA ram_0020
bra_84EA:
C - - - - - 0x0144FA 05:84EA: AD B0 03  LDA ram_menu_buttons
C - - - - - 0x0144FD 05:84ED: CD B2 03  CMP ram_03A9_obj + $09
C - - - - - 0x014500 05:84F0: D0 0A     BNE bra_84FC
C - - - - - 0x014502 05:84F2: 8D B2 03  STA ram_03A9_obj + $09
C - - - - - 0x014505 05:84F5: AD AF 03  LDA ram_03A9_obj + $06
C - - - - - 0x014508 05:84F8: 29 1F     AND #$1F
C - - - - - 0x01450A 05:84FA: D0 44     BNE bra_8540
bra_84FC:
C - - - - - 0x01450C 05:84FC: AD B0 03  LDA ram_menu_buttons
C - - - - - 0x01450F 05:84FF: 29 04     AND #con_btn2_Select
C - - - - - 0x014511 05:8501: 8D B2 03  STA ram_03A9_obj + $09
C - - - - - 0x014514 05:8504: D0 0A     BNE bra_8510
C - - - - - 0x014516 05:8506: AD B0 03  LDA ram_menu_buttons
C - - - - - 0x014519 05:8509: 8D B2 03  STA ram_03A9_obj + $09
C - - - - - 0x01451C 05:850C: 29 20     AND #con_btn2_Down
C - - - - - 0x01451E 05:850E: F0 16     BEQ bra_8526
bra_8510:
C - - - - - 0x014520 05:8510: AD D2 03  LDA ram_03D2
C - - - - - 0x014523 05:8513: 18        CLC
C - - - - - 0x014524 05:8514: 69 01     ADC #$01
C - - - - - 0x014526 05:8516: 29 03     AND #$03
C - - - - - 0x014528 05:8518: 8D D2 03  STA ram_03D2
C - - - - - 0x01452B 05:851B: 20 3E 86  JSR sub_863E
C - - - - - 0x01452E 05:851E: A9 00     LDA #$00
C - - - - - 0x014530 05:8520: 8D AF 03  STA ram_03A9_obj + $06
C - - - - - 0x014533 05:8523: 4C 40 85  JMP loc_8540
bra_8526:
C - - - - - 0x014536 05:8526: AD B0 03  LDA ram_menu_buttons
C - - - - - 0x014539 05:8529: 29 10     AND #con_btn2_Up
C - - - - - 0x01453B 05:852B: F0 13     BEQ bra_8540
C - - - - - 0x01453D 05:852D: AD D2 03  LDA ram_03D2
C - - - - - 0x014540 05:8530: 38        SEC
C - - - - - 0x014541 05:8531: E9 01     SBC #$01
C - - - - - 0x014543 05:8533: 29 03     AND #$03
C - - - - - 0x014545 05:8535: 8D D2 03  STA ram_03D2
C - - - - - 0x014548 05:8538: 20 3E 86  JSR sub_863E
C - - - - - 0x01454B 05:853B: A9 00     LDA #$00
C - - - - - 0x01454D 05:853D: 8D AF 03  STA ram_03A9_obj + $06
bra_8540:
loc_8540:
C D 0 - - - 0x014550 05:8540: B9 59 86  LDA tbl_8659_spr_Y,Y
bra_8543_loop:
C - - - - - 0x014553 05:8543: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x014556 05:8546: E8        INX
C - - - - - 0x014557 05:8547: E8        INX
C - - - - - 0x014558 05:8548: E8        INX
C - - - - - 0x014559 05:8549: E8        INX
C - - - - - 0x01455A 05:854A: CE C5 03  DEC ram_03C5
C - - - - - 0x01455D 05:854D: D0 F4     BNE bra_8543_loop
C - - - - - 0x01455F 05:854F: AD A8 06  LDA ram_option_sound
C - - - - - 0x014562 05:8552: F0 0D     BEQ bra_8561_sound_off
; if sound ON
C - - - - - 0x014564 05:8554: A9 4F     LDA #$4F
C - - - - - 0x014566 05:8556: 8D A9 02  STA ram_spr_T + $A8
C - - - - - 0x014569 05:8559: A9 01     LDA #$01
C - - - - - 0x01456B 05:855B: 8D AD 02  STA ram_spr_T + $AC
C - - - - - 0x01456E 05:855E: 4C 69 85  JMP loc_8569
bra_8561_sound_off:
C - - - - - 0x014571 05:8561: A9 3F     LDA #$3F
C - - - - - 0x014573 05:8563: 8D A9 02  STA ram_spr_T + $A8
C - - - - - 0x014576 05:8566: 8D AD 02  STA ram_spr_T + $AC
loc_8569:
C D 0 - - - 0x014579 05:8569: AD A7 06  LDA ram_option_music
C - - - - - 0x01457C 05:856C: F0 0D     BEQ bra_857B_music_off
; if music ON
C - - - - - 0x01457E 05:856E: A9 4F     LDA #$4F
C - - - - - 0x014580 05:8570: 8D C9 02  STA ram_spr_T + $C8
C - - - - - 0x014583 05:8573: A9 01     LDA #$01
C - - - - - 0x014585 05:8575: 8D CD 02  STA ram_spr_T + $CC
C - - - - - 0x014588 05:8578: 4C 83 85  JMP loc_8583
bra_857B_music_off:
C - - - - - 0x01458B 05:857B: A9 3F     LDA #$3F
C - - - - - 0x01458D 05:857D: 8D C9 02  STA ram_spr_T + $C8
C - - - - - 0x014590 05:8580: 8D CD 02  STA ram_spr_T + $CC
loc_8583:
C D 0 - - - 0x014593 05:8583: AD D2 03  LDA ram_03D2
C - - - - - 0x014596 05:8586: D0 17     BNE bra_859F
C - - - - - 0x014598 05:8588: AD B0 03  LDA ram_menu_buttons
C - - - - - 0x01459B 05:858B: 29 09     AND #con_btn2_Start + con_btn2_A
C - - - - - 0x01459D 05:858D: F0 10     BEQ bra_859F
C - - - - - 0x01459F 05:858F: 8D B2 03  STA ram_03A9_obj + $09
C - - - - - 0x0145A2 05:8592: A9 00     LDA #$00
C - - - - - 0x0145A4 05:8594: 8D A5 06  STA ram_06A5
C - - - - - 0x0145A7 05:8597: 85 03     STA ram_mission
C - - - - - 0x0145A9 05:8599: 8D CA 06  STA ram_copy_mission
C - - - - - 0x0145AC 05:859C: 4C F4 80  JMP loc_80F4
bra_859F:
C - - - - - 0x0145AF 05:859F: AD D2 03  LDA ram_03D2
C - - - - - 0x0145B2 05:85A2: C9 01     CMP #$01
C - - - - - 0x0145B4 05:85A4: D0 1D     BNE bra_85C3
C - - - - - 0x0145B6 05:85A6: AD B0 03  LDA ram_menu_buttons
C - - - - - 0x0145B9 05:85A9: 29 09     AND #con_btn2_Start + con_btn2_A
C - - - - - 0x0145BB 05:85AB: F0 16     BEQ bra_85C3
C - - - - - 0x0145BD 05:85AD: AD D6 06  LDA ram_06D6
C - - - - - 0x0145C0 05:85B0: D0 0B     BNE bra_85BD
C - - - - - 0x0145C2 05:85B2: A9 00     LDA #$00
C - - - - - 0x0145C4 05:85B4: 8D A5 06  STA ram_06A5
C - - - - - 0x0145C7 05:85B7: 8D B4 03  STA ram_03A9_obj + $0B
C - - - - - 0x0145CA 05:85BA: 4C 1A 86  JMP loc_861A
bra_85BD:
C - - - - - 0x0145CD 05:85BD: A9 01     LDA #$01
C - - - - - 0x0145CF 05:85BF: 8D A5 06  STA ram_06A5
C - - - - - 0x0145D2 05:85C2: 60        RTS
bra_85C3:
C - - - - - 0x0145D3 05:85C3: AD D2 03  LDA ram_03D2
C - - - - - 0x0145D6 05:85C6: C9 02     CMP #$02
C - - - - - 0x0145D8 05:85C8: D0 1D     BNE bra_85E7
C - - - - - 0x0145DA 05:85CA: AD B0 03  LDA ram_menu_buttons
C - - - - - 0x0145DD 05:85CD: CD D3 03  CMP ram_03D3
C - - - - - 0x0145E0 05:85D0: F0 15     BEQ bra_85E7
C - - - - - 0x0145E2 05:85D2: 8D D3 03  STA ram_03D3
C - - - - - 0x0145E5 05:85D5: 29 09     AND #con_btn2_Start + con_btn2_A
C - - - - - 0x0145E7 05:85D7: F0 0E     BEQ bra_85E7
C - - - - - 0x0145E9 05:85D9: 20 3E 86  JSR sub_863E
C - - - - - 0x0145EC 05:85DC: AD A8 06  LDA ram_option_sound
; bzk optimize, EOR #$01
C - - - - - 0x0145EF 05:85DF: 18        CLC
C - - - - - 0x0145F0 05:85E0: 69 01     ADC #$01
C - - - - - 0x0145F2 05:85E2: 29 01     AND #$01
C - - - - - 0x0145F4 05:85E4: 8D A8 06  STA ram_option_sound
bra_85E7:
C - - - - - 0x0145F7 05:85E7: AD D2 03  LDA ram_03D2
C - - - - - 0x0145FA 05:85EA: C9 03     CMP #$03
C - - - - - 0x0145FC 05:85EC: D0 2C     BNE bra_861A
C - - - - - 0x0145FE 05:85EE: AD B0 03  LDA ram_menu_buttons
C - - - - - 0x014601 05:85F1: CD D3 03  CMP ram_03D3
C - - - - - 0x014604 05:85F4: F0 24     BEQ bra_861A
C - - - - - 0x014606 05:85F6: 8D D3 03  STA ram_03D3
C - - - - - 0x014609 05:85F9: 29 09     AND #con_btn2_Start + con_btn2_A
C - - - - - 0x01460B 05:85FB: F0 1D     BEQ bra_861A
C - - - - - 0x01460D 05:85FD: 20 3E 86  JSR sub_863E
C - - - - - 0x014610 05:8600: AD A7 06  LDA ram_option_music
C - - - - - 0x014613 05:8603: 18        CLC
C - - - - - 0x014614 05:8604: 69 01     ADC #$01
C - - - - - 0x014616 05:8606: 29 01     AND #$01
C - - - - - 0x014618 05:8608: 8D A7 06  STA ram_option_music
C - - - - - 0x01461B 05:860B: F0 08     BEQ bra_8615_music_off
; if music ON
C - - - - - 0x01461D 05:860D: A9 1D     LDA #con_sound_1D
C - - - - - 0x01461F 05:860F: 20 03 C0  JSR sub_0x01C013_prepare_sound
C - - - - - 0x014622 05:8612: 4C 1A 86  JMP loc_861A
bra_8615_music_off:
C - - - - - 0x014625 05:8615: A9 00     LDA #con_sound_00
C - - - - - 0x014627 05:8617: 20 03 C0  JSR sub_0x01C013_prepare_sound
bra_861A:
loc_861A:
C D 0 - - - 0x01462A 05:861A: 2C 02 20  BIT $2002
C - - - - - 0x01462D 05:861D: 30 04     BMI bra_8623
C - - - - - 0x01462F 05:861F: 50 F9     BVC bra_861A
C - - - - - 0x014631 05:8621: A2 13     LDX #$13
bra_8623:
bra_8623_garbage_loop:
C - - - - - 0x014633 05:8623: CA        DEX
C - - - - - 0x014634 05:8624: D0 FD     BNE bra_8623_garbage_loop
C - - - - - 0x014636 05:8626: A9 1A     LDA #$1A
C - - - - - 0x014638 05:8628: 8D FF BF  STA $BFFF
C - - - - - 0x01463B 05:862B: 4A        LSR
C - - - - - 0x01463C 05:862C: 8D FF BF  STA $BFFF
C - - - - - 0x01463F 05:862F: 4A        LSR
C - - - - - 0x014640 05:8630: 8D FF BF  STA $BFFF
C - - - - - 0x014643 05:8633: 4A        LSR
C - - - - - 0x014644 05:8634: 8D FF BF  STA $BFFF
C - - - - - 0x014647 05:8637: 4A        LSR
C - - - - - 0x014648 05:8638: 8D FF BF  STA $BFFF
C - - - - - 0x01464B 05:863B: 4C 47 83  JMP loc_8347



sub_863E:
C - - - - - 0x01464E 05:863E: 8A        TXA
C - - - - - 0x01464F 05:863F: 48        PHA
C - - - - - 0x014650 05:8640: A2 02     LDX #$02    ; bzk optimize
C - - - - - 0x014652 05:8642: BD 27 98  LDA tbl_9827,X
C - - - - - 0x014655 05:8645: 8D A6 03  STA ram_039C_obj + $0A
C - - - - - 0x014658 05:8648: BD 30 98  LDA tbl_9830,X
C - - - - - 0x01465B 05:864B: 8D A5 03  STA ram_039C_obj + $09
C - - - - - 0x01465E 05:864E: 68        PLA
C - - - - - 0x01465F 05:864F: AA        TAX
C - - - - - 0x014660 05:8650: 60        RTS



tbl_8651_index:
- D 0 - - - 0x014661 05:8651: 15        .byte $15   ; 00 
- D 0 - - - 0x014662 05:8652: 1C        .byte $1C   ; 01 
- D 0 - - - 0x014663 05:8653: 24        .byte $24   ; 02 
- D 0 - - - 0x014664 05:8654: 2C        .byte $2C   ; 03 



tbl_8655_counter:
- D 0 - - - 0x014665 05:8655: 05        .byte $05   ; 00 
- D 0 - - - 0x014666 05:8656: 08        .byte $08   ; 01 
- D 0 - - - 0x014667 05:8657: 08        .byte $08   ; 02 
- D 0 - - - 0x014668 05:8658: 08        .byte $08   ; 03 



tbl_8659_spr_Y:
- D 0 - - - 0x014669 05:8659: 8F        .byte $8F   ; 00 
- D 0 - - - 0x01466A 05:865A: 9F        .byte $9F   ; 01 
- D 0 - - - 0x01466B 05:865B: AF        .byte $AF   ; 02 
- D 0 - - - 0x01466C 05:865C: BF        .byte $BF   ; 03 



ofs_007_865D_03:
C - - J - - 0x01466D 05:865D: A2 04     LDX #$04
C - - - - - 0x01466F 05:865F: A0 00     LDY #$00
bra_8661_garbage_loop:
C - - - - - 0x014671 05:8661: 88        DEY
C - - - - - 0x014672 05:8662: D0 FD     BNE bra_8661_garbage_loop
C - - - - - 0x014674 05:8664: CA        DEX
C - - - - - 0x014675 05:8665: D0 FA     BNE bra_8661_garbage_loop
C - - - - - 0x014677 05:8667: 20 B1 B7  JSR sub_B7B1
C - - - - - 0x01467A 05:866A: 20 C1 94  JSR sub_94C1_read_joy_regs
C - - - - - 0x01467D 05:866D: AD B0 03  LDA ram_menu_buttons
C - - - - - 0x014680 05:8670: CD B2 03  CMP ram_03A9_obj + $09
C - - - - - 0x014683 05:8673: F0 0F     BEQ bra_8684
C - - - - - 0x014685 05:8675: 8D B2 03  STA ram_03A9_obj + $09
C - - - - - 0x014688 05:8678: 29 09     AND #con_btn2_Start + con_btn2_A
C - - - - - 0x01468A 05:867A: F0 08     BEQ bra_8684
C - - - - - 0x01468C 05:867C: AD B4 03  LDA ram_03A9_obj + $0B
C - - - - - 0x01468F 05:867F: C9 07     CMP #$07
C - - - - - 0x014691 05:8681: F0 01     BEQ bra_8684
bra_8683_FA_RTS:
C - - - - - 0x014693 05:8683: 60        RTS
bra_8684:
C - - - - - 0x014694 05:8684: AD B4 03  LDA ram_03A9_obj + $0B
C - - - - - 0x014697 05:8687: 0A        ASL
C - - - - - 0x014698 05:8688: AA        TAX
C - - - - - 0x014699 05:8689: BD 46 87  LDA tbl_8746,X
C - - - - - 0x01469C 05:868C: 85 F4     STA ram_00F4
C - - - - - 0x01469E 05:868E: E8        INX
C - - - - - 0x01469F 05:868F: BD 46 87  LDA tbl_8746,X
C - - - - - 0x0146A2 05:8692: 85 F5     STA ram_00F5
C - - - - - 0x0146A4 05:8694: AC B5 03  LDY ram_03A9_obj + $0C
C - - - - - 0x0146A7 05:8697: B1 F4     LDA (ram_00F4),Y
C - - - - - 0x0146A9 05:8699: C9 FF     CMP #$FF
C - - - - - 0x0146AB 05:869B: F0 2D     BEQ bra_86CA_FF
C - - - - - 0x0146AD 05:869D: C9 FE     CMP #$FE
C - - - - - 0x0146AF 05:869F: F0 45     BEQ bra_86E6_FE
C - - - - - 0x0146B1 05:86A1: C9 FD     CMP #$FD
C - - - - - 0x0146B3 05:86A3: D0 03     BNE bra_86A8
- - - - - - 0x0146B5 05:86A5: 4C 2B 87  JMP loc_872B_FD
bra_86A8:
C - - - - - 0x0146B8 05:86A8: C9 FC     CMP #$FC
C - - - - - 0x0146BA 05:86AA: F0 64     BEQ bra_8710_FC
C - - - - - 0x0146BC 05:86AC: C9 FB     CMP #$FB
C - - - - - 0x0146BE 05:86AE: F0 4B     BEQ bra_86FB_FB
C - - - - - 0x0146C0 05:86B0: C9 FA     CMP #$FA
C - - - - - 0x0146C2 05:86B2: F0 CF     BEQ bra_8683_FA_RTS
C - - - - - 0x0146C4 05:86B4: AE D7 03  LDX ram_03D7
C - - - - - 0x0146C7 05:86B7: B1 F4     LDA (ram_00F4),Y
C - - - - - 0x0146C9 05:86B9: 9D 54 07  STA ram_0700_buffer + $54,X
C - - - - - 0x0146CC 05:86BC: EE B5 03  INC ram_03A9_obj + $0C
C - - - - - 0x0146CF 05:86BF: EE D7 03  INC ram_03D7
C - - - - - 0x0146D2 05:86C2: A9 00     LDA #$00
C - - - - - 0x0146D4 05:86C4: 8D AF 03  STA ram_03A9_obj + $06
bra_86C7:
loc_86C7:
C D 0 - - - 0x0146D7 05:86C7: 4C 47 83  JMP loc_8347
bra_86CA_FF:
C - - - - - 0x0146DA 05:86CA: EE B4 03  INC ram_03A9_obj + $0B
C - - - - - 0x0146DD 05:86CD: A9 00     LDA #$00
C - - - - - 0x0146DF 05:86CF: 8D D7 03  STA ram_03D7
C - - - - - 0x0146E2 05:86D2: 8D B5 03  STA ram_03A9_obj + $0C
C - - - - - 0x0146E5 05:86D5: EE A7 03  INC ram_039C_obj + $0B
C - - - - - 0x0146E8 05:86D8: AD A7 03  LDA ram_039C_obj + $0B
C - - - - - 0x0146EB 05:86DB: 20 39 98  JSR sub_9839
C - - - - - 0x0146EE 05:86DE: A9 81     LDA #$81
C - - - - - 0x0146F0 05:86E0: 8D 00 20  STA $2000
C - - - - - 0x0146F3 05:86E3: 4C C7 86  JMP loc_86C7
bra_86E6_FE:
C - - - - - 0x0146F6 05:86E6: AD AF 03  LDA ram_03A9_obj + $06
C - - - - - 0x0146F9 05:86E9: 29 0F     AND #$0F
C - - - - - 0x0146FB 05:86EB: D0 DA     BNE bra_86C7
C - - - - - 0x0146FD 05:86ED: 20 1B 83  JSR sub_831B_move_data_to_buffers
C - - - - - 0x014700 05:86F0: EE B5 03  INC ram_03A9_obj + $0C
C - - - - - 0x014703 05:86F3: A9 00     LDA #$00
C - - - - - 0x014705 05:86F5: 8D D7 03  STA ram_03D7
C - - - - - 0x014708 05:86F8: 4C C7 86  JMP loc_86C7
bra_86FB_FB:
C - - - - - 0x01470B 05:86FB: A2 6F     LDX #$6F
C - - - - - 0x01470D 05:86FD: A9 00     LDA #$00
bra_86FF_loop:
C - - - - - 0x01470F 05:86FF: 9D 00 07  STA ram_0700_buffer + $00,X
C - - - - - 0x014712 05:8702: CA        DEX
C - - - - - 0x014713 05:8703: 10 FA     BPL bra_86FF_loop
C - - - - - 0x014715 05:8705: EE B5 03  INC ram_03A9_obj + $0C
C - - - - - 0x014718 05:8708: A9 00     LDA #$00
C - - - - - 0x01471A 05:870A: 8D D7 03  STA ram_03D7
C - - - - - 0x01471D 05:870D: 4C C7 86  JMP loc_86C7
bra_8710_FC:
C - - - - - 0x014720 05:8710: AD A5 03  LDA ram_039C_obj + $09
C - - - - - 0x014723 05:8713: 18        CLC
C - - - - - 0x014724 05:8714: 69 01     ADC #$01
C - - - - - 0x014726 05:8716: 8D A5 03  STA ram_039C_obj + $09
C - - - - - 0x014729 05:8719: C9 3F     CMP #$3F
C - - - - - 0x01472B 05:871B: 90 AA     BCC bra_86C7
C - - - - - 0x01472D 05:871D: EE B5 03  INC ram_03A9_obj + $0C
C - - - - - 0x014730 05:8720: A9 00     LDA #$00
C - - - - - 0x014732 05:8722: 8D D7 03  STA ram_03D7
C - - - - - 0x014735 05:8725: 8D A5 03  STA ram_039C_obj + $09
C - - - - - 0x014738 05:8728: 4C C7 86  JMP loc_86C7



loc_872B_FD:
- - - - - - 0x01473B 05:872B: AD A5 03  LDA ram_039C_obj + $09
- - - - - - 0x01473E 05:872E: 18        CLC
- - - - - - 0x01473F 05:872F: 69 01     ADC #$01
- - - - - - 0x014741 05:8731: 8D A5 03  STA ram_039C_obj + $09
- - - - - - 0x014744 05:8734: C9 07     CMP #$07
- - - - - - 0x014746 05:8736: 90 8F     BCC bra_86C7
- - - - - - 0x014748 05:8738: EE B5 03  INC ram_03A9_obj + $0C
- - - - - - 0x01474B 05:873B: A9 00     LDA #$00
- - - - - - 0x01474D 05:873D: 8D D7 03  STA ram_03D7
- - - - - - 0x014750 05:8740: 8D A5 03  STA ram_039C_obj + $09
- - - - - - 0x014753 05:8743: 4C C7 86  JMP loc_86C7



tbl_8746:
- D 0 - - - 0x014756 05:8746: 4C 87     .word _off007_874C_00
- D 0 - - - 0x014758 05:8748: B3 87     .word _off007_87B3_01
- D 0 - - - 0x01475A 05:874A: 08 88     .word _off007_8808_02



con_8746_FA                             = $FA ; 
con_8746_FB                             = $FB ; 
con_8746_FC                             = $FC ; 
; con_8746_FD                           = $FD ; unused
con_8746_FE                             = $FE ; 
con_8746_FF                             = $FF ; 



_off007_874C_00:
- D 0 - I - 0x01475C 05:874C: 03        .byte $03   ; 
- D 0 - I - 0x01475D 05:874D: 0F        .byte $0F   ; 
- D 0 - I - 0x01475E 05:874E: 0D        .byte $0D   ; 
- D 0 - I - 0x01475F 05:874F: 0D        .byte $0D   ; 
- D 0 - I - 0x014760 05:8750: 01        .byte $01   ; 
- D 0 - I - 0x014761 05:8751: 0E        .byte $0E   ; 
- D 0 - I - 0x014762 05:8752: 04        .byte $04   ; 
- D 0 - I - 0x014763 05:8753: 24        .byte $24   ; 
- D 0 - I - 0x014764 05:8754: 03        .byte $03   ; 
- D 0 - I - 0x014765 05:8755: 0F        .byte $0F   ; 
- D 0 - I - 0x014766 05:8756: 0D        .byte $0D   ; 
- D 0 - I - 0x014767 05:8757: FE        .byte con_8746_FE   ; 
- D 0 - I - 0x014768 05:8758: 0C        .byte $0C   ; 
- D 0 - I - 0x014769 05:8759: 0F        .byte $0F   ; 
- D 0 - I - 0x01476A 05:875A: 01        .byte $01   ; 
- D 0 - I - 0x01476B 05:875B: 04        .byte $04   ; 
- D 0 - I - 0x01476C 05:875C: 00        .byte $00   ; 
- D 0 - I - 0x01476D 05:875D: 02        .byte $02   ; 
- D 0 - I - 0x01476E 05:875E: 09        .byte $09   ; 
- D 0 - I - 0x01476F 05:875F: 0F        .byte $0F   ; 
- D 0 - I - 0x014770 05:8760: 13        .byte $13   ; 
- D 0 - I - 0x014771 05:8761: FE        .byte con_8746_FE   ; 
- D 0 - I - 0x014772 05:8762: 0D        .byte $0D   ; 
- D 0 - I - 0x014773 05:8763: 05        .byte $05   ; 
- D 0 - I - 0x014774 05:8764: 0D        .byte $0D   ; 
- D 0 - I - 0x014775 05:8765: 0F        .byte $0F   ; 
- D 0 - I - 0x014776 05:8766: 12        .byte $12   ; 
- D 0 - I - 0x014777 05:8767: 19        .byte $19   ; 
- D 0 - I - 0x014778 05:8768: 00        .byte $00   ; 
- D 0 - I - 0x014779 05:8769: 13        .byte $13   ; 
- D 0 - I - 0x01477A 05:876A: 05        .byte $05   ; 
- D 0 - I - 0x01477B 05:876B: 14        .byte $14   ; 
- D 0 - I - 0x01477C 05:876C: FE        .byte con_8746_FE   ; 
- D 0 - I - 0x01477D 05:876D: 13        .byte $13   ; 
- D 0 - I - 0x01477E 05:876E: 19        .byte $19   ; 
- D 0 - I - 0x01477F 05:876F: 13        .byte $13   ; 
- D 0 - I - 0x014780 05:8770: 14        .byte $14   ; 
- D 0 - I - 0x014781 05:8771: 05        .byte $05   ; 
- D 0 - I - 0x014782 05:8772: 0D        .byte $0D   ; 
- D 0 - I - 0x014783 05:8773: 00        .byte $00   ; 
- D 0 - I - 0x014784 05:8774: 13        .byte $13   ; 
- D 0 - I - 0x014785 05:8775: 14        .byte $14   ; 
- D 0 - I - 0x014786 05:8776: 01        .byte $01   ; 
- D 0 - I - 0x014787 05:8777: 14        .byte $14   ; 
- D 0 - I - 0x014788 05:8778: 15        .byte $15   ; 
- D 0 - I - 0x014789 05:8779: 13        .byte $13   ; 
- D 0 - I - 0x01478A 05:877A: FE        .byte con_8746_FE   ; 
- D 0 - I - 0x01478B 05:877B: 0F        .byte $0F   ; 
- D 0 - I - 0x01478C 05:877C: 0B        .byte $0B   ; 
- D 0 - I - 0x01478D 05:877D: 24        .byte $24   ; 
- D 0 - I - 0x01478E 05:877E: FE        .byte con_8746_FE   ; 
- D 0 - I - 0x01478F 05:877F: FC        .byte con_8746_FC   ; 
- D 0 - I - 0x014790 05:8780: FB        .byte con_8746_FB   ; 
- D 0 - I - 0x014791 05:8781: 03        .byte $03   ; 
- D 0 - I - 0x014792 05:8782: 12        .byte $12   ; 
- D 0 - I - 0x014793 05:8783: 09        .byte $09   ; 
- D 0 - I - 0x014794 05:8784: 0D        .byte $0D   ; 
- D 0 - I - 0x014795 05:8785: 05        .byte $05   ; 
- D 0 - I - 0x014796 05:8786: 00        .byte $00   ; 
- D 0 - I - 0x014797 05:8787: 09        .byte $09   ; 
- D 0 - I - 0x014798 05:8788: 0E        .byte $0E   ; 
- D 0 - I - 0x014799 05:8789: 00        .byte $00   ; 
- D 0 - I - 0x01479A 05:878A: 10        .byte $10   ; 
- D 0 - I - 0x01479B 05:878B: 12        .byte $12   ; 
- D 0 - I - 0x01479C 05:878C: 0F        .byte $0F   ; 
- D 0 - I - 0x01479D 05:878D: 07        .byte $07   ; 
- D 0 - I - 0x01479E 05:878E: 12        .byte $12   ; 
- D 0 - I - 0x01479F 05:878F: 05        .byte $05   ; 
- D 0 - I - 0x0147A0 05:8790: 13        .byte $13   ; 
- D 0 - I - 0x0147A1 05:8791: 13        .byte $13   ; 
- D 0 - I - 0x0147A2 05:8792: 24        .byte $24   ; 
- D 0 - I - 0x0147A3 05:8793: FE        .byte con_8746_FE   ; 
- D 0 - I - 0x0147A4 05:8794: 10        .byte $10   ; 
- D 0 - I - 0x0147A5 05:8795: 05        .byte $05   ; 
- D 0 - I - 0x0147A6 05:8796: 0E        .byte $0E   ; 
- D 0 - I - 0x0147A7 05:8797: 01        .byte $01   ; 
- D 0 - I - 0x0147A8 05:8798: 0C        .byte $0C   ; 
- D 0 - I - 0x0147A9 05:8799: 00        .byte $00   ; 
- D 0 - I - 0x0147AA 05:879A: 03        .byte $03   ; 
- D 0 - I - 0x0147AB 05:879B: 0F        .byte $0F   ; 
- D 0 - I - 0x0147AC 05:879C: 04        .byte $04   ; 
- D 0 - I - 0x0147AD 05:879D: 05        .byte $05   ; 
- D 0 - I - 0x0147AE 05:879E: 00        .byte $00   ; 
- D 0 - I - 0x0147AF 05:879F: 1B        .byte $1B   ; 
- D 0 - I - 0x0147B0 05:87A0: 1D        .byte $1D   ; 
- D 0 - I - 0x0147B1 05:87A1: 23        .byte $23   ; 
- D 0 - I - 0x0147B2 05:87A2: 24        .byte $24   ; 
- D 0 - I - 0x0147B3 05:87A3: 1B        .byte $1B   ; 
- D 0 - I - 0x0147B4 05:87A4: FE        .byte con_8746_FE   ; 
- D 0 - I - 0x0147B5 05:87A5: 09        .byte $09   ; 
- D 0 - I - 0x0147B6 05:87A6: 0E        .byte $0E   ; 
- D 0 - I - 0x0147B7 05:87A7: 00        .byte $00   ; 
- D 0 - I - 0x0147B8 05:87A8: 10        .byte $10   ; 
- D 0 - I - 0x0147B9 05:87A9: 15        .byte $15   ; 
- D 0 - I - 0x0147BA 05:87AA: 12        .byte $12   ; 
- D 0 - I - 0x0147BB 05:87AB: 13        .byte $13   ; 
- D 0 - I - 0x0147BC 05:87AC: 15        .byte $15   ; 
- D 0 - I - 0x0147BD 05:87AD: 09        .byte $09   ; 
- D 0 - I - 0x0147BE 05:87AE: 14        .byte $14   ; 
- D 0 - I - 0x0147BF 05:87AF: FE        .byte con_8746_FE   ; 
- D 0 - I - 0x0147C0 05:87B0: FC        .byte con_8746_FC   ; 
- D 0 - I - 0x0147C1 05:87B1: FB        .byte con_8746_FB   ; 
- D 0 - I - 0x0147C2 05:87B2: FF        .byte con_8746_FF   ; 



_off007_87B3_01:
- D 0 - I - 0x0147C3 05:87B3: 16        .byte $16   ; 
- D 0 - I - 0x0147C4 05:87B4: 0F        .byte $0F   ; 
- D 0 - I - 0x0147C5 05:87B5: 09        .byte $09   ; 
- D 0 - I - 0x0147C6 05:87B6: 03        .byte $03   ; 
- D 0 - I - 0x0147C7 05:87B7: 05        .byte $05   ; 
- D 0 - I - 0x0147C8 05:87B8: 00        .byte $00   ; 
- D 0 - I - 0x0147C9 05:87B9: 01        .byte $01   ; 
- D 0 - I - 0x0147CA 05:87BA: 0E        .byte $0E   ; 
- D 0 - I - 0x0147CB 05:87BB: 01        .byte $01   ; 
- D 0 - I - 0x0147CC 05:87BC: 0C        .byte $0C   ; 
- D 0 - I - 0x0147CD 05:87BD: 19        .byte $19   ; 
- D 0 - I - 0x0147CE 05:87BE: 13        .byte $13   ; 
- D 0 - I - 0x0147CF 05:87BF: 09        .byte $09   ; 
- D 0 - I - 0x0147D0 05:87C0: 13        .byte $13   ; 
- D 0 - I - 0x0147D1 05:87C1: FE        .byte con_8746_FE   ; 
- D 0 - I - 0x0147D2 05:87C2: 0F        .byte $0F   ; 
- D 0 - I - 0x0147D3 05:87C3: 06        .byte $06   ; 
- D 0 - I - 0x0147D4 05:87C4: 06        .byte $06   ; 
- D 0 - I - 0x0147D5 05:87C5: 09        .byte $09   ; 
- D 0 - I - 0x0147D6 05:87C6: 03        .byte $03   ; 
- D 0 - I - 0x0147D7 05:87C7: 05        .byte $05   ; 
- D 0 - I - 0x0147D8 05:87C8: 12        .byte $12   ; 
- D 0 - I - 0x0147D9 05:87C9: 00        .byte $00   ; 
- D 0 - I - 0x0147DA 05:87CA: 0C        .byte $0C   ; 
- D 0 - I - 0x0147DB 05:87CB: 05        .byte $05   ; 
- D 0 - I - 0x0147DC 05:87CC: 17        .byte $17   ; 
- D 0 - I - 0x0147DD 05:87CD: 09        .byte $09   ; 
- D 0 - I - 0x0147DE 05:87CE: 13        .byte $13   ; 
- D 0 - I - 0x0147DF 05:87CF: 26        .byte $26   ; 
- D 0 - I - 0x0147E0 05:87D0: 01        .byte $01   ; 
- D 0 - I - 0x0147E1 05:87D1: 0E        .byte $0E   ; 
- D 0 - I - 0x0147E2 05:87D2: 0E        .byte $0E   ; 
- D 0 - I - 0x0147E3 05:87D3: 05        .byte $05   ; 
- D 0 - I - 0x0147E4 05:87D4: FE        .byte con_8746_FE   ; 
- D 0 - I - 0x0147E5 05:87D5: FC        .byte con_8746_FC   ; 
- D 0 - I - 0x0147E6 05:87D6: FE        .byte con_8746_FE   ; 
- D 0 - I - 0x0147E7 05:87D7: 03        .byte $03   ; 
- D 0 - I - 0x0147E8 05:87D8: 15        .byte $15   ; 
- D 0 - I - 0x0147E9 05:87D9: 12        .byte $12   ; 
- D 0 - I - 0x0147EA 05:87DA: 12        .byte $12   ; 
- D 0 - I - 0x0147EB 05:87DB: 05        .byte $05   ; 
- D 0 - I - 0x0147EC 05:87DC: 0E        .byte $0E   ; 
- D 0 - I - 0x0147ED 05:87DD: 14        .byte $14   ; 
- D 0 - I - 0x0147EE 05:87DE: 00        .byte $00   ; 
- D 0 - I - 0x0147EF 05:87DF: 10        .byte $10   ; 
- D 0 - I - 0x0147F0 05:87E0: 0F        .byte $0F   ; 
- D 0 - I - 0x0147F1 05:87E1: 13        .byte $13   ; 
- D 0 - I - 0x0147F2 05:87E2: 09        .byte $09   ; 
- D 0 - I - 0x0147F3 05:87E3: 14        .byte $14   ; 
- D 0 - I - 0x0147F4 05:87E4: 09        .byte $09   ; 
- D 0 - I - 0x0147F5 05:87E5: 0F        .byte $0F   ; 
- D 0 - I - 0x0147F6 05:87E6: 0E        .byte $0E   ; 
- D 0 - I - 0x0147F7 05:87E7: 24        .byte $24   ; 
- D 0 - I - 0x0147F8 05:87E8: FE        .byte con_8746_FE   ; 
- D 0 - I - 0x0147F9 05:87E9: 05        .byte $05   ; 
- D 0 - I - 0x0147FA 05:87EA: 13        .byte $13   ; 
- D 0 - I - 0x0147FB 05:87EB: 10        .byte $10   ; 
- D 0 - I - 0x0147FC 05:87EC: 0F        .byte $0F   ; 
- D 0 - I - 0x0147FD 05:87ED: 13        .byte $13   ; 
- D 0 - I - 0x0147FE 05:87EE: 09        .byte $09   ; 
- D 0 - I - 0x0147FF 05:87EF: 14        .byte $14   ; 
- D 0 - I - 0x014800 05:87F0: 0F        .byte $0F   ; 
- D 0 - I - 0x014801 05:87F1: 00        .byte $00   ; 
- D 0 - I - 0x014802 05:87F2: 01        .byte $01   ; 
- D 0 - I - 0x014803 05:87F3: 0E        .byte $0E   ; 
- D 0 - I - 0x014804 05:87F4: 04        .byte $04   ; 
- D 0 - I - 0x014805 05:87F5: 00        .byte $00   ; 
- D 0 - I - 0x014806 05:87F6: 03        .byte $03   ; 
- D 0 - I - 0x014807 05:87F7: 08        .byte $08   ; 
- D 0 - I - 0x014808 05:87F8: 01        .byte $01   ; 
- D 0 - I - 0x014809 05:87F9: 0C        .byte $0C   ; 
- D 0 - I - 0x01480A 05:87FA: 0D        .byte $0D   ; 
- D 0 - I - 0x01480B 05:87FB: 05        .byte $05   ; 
- D 0 - I - 0x01480C 05:87FC: 12        .byte $12   ; 
- D 0 - I - 0x01480D 05:87FD: 13        .byte $13   ; 
- D 0 - I - 0x01480E 05:87FE: 00        .byte $00   ; 
- D 0 - I - 0x01480F 05:87FF: 02        .byte $02   ; 
- D 0 - I - 0x014810 05:8800: 0C        .byte $0C   ; 
- D 0 - I - 0x014811 05:8801: 16        .byte $16   ; 
- D 0 - I - 0x014812 05:8802: 04        .byte $04   ; 
- D 0 - I - 0x014813 05:8803: 24        .byte $24   ; 
- D 0 - I - 0x014814 05:8804: FE        .byte con_8746_FE   ; 
- D 0 - I - 0x014815 05:8805: FC        .byte con_8746_FC   ; 
- D 0 - I - 0x014816 05:8806: FB        .byte con_8746_FB   ; 
- D 0 - I - 0x014817 05:8807: FF        .byte con_8746_FF   ; 



_off007_8808_02:
- D 0 - I - 0x014818 05:8808: 09        .byte $09   ; 
- D 0 - I - 0x014819 05:8809: 00        .byte $00   ; 
- D 0 - I - 0x01481A 05:880A: 01        .byte $01   ; 
- D 0 - I - 0x01481B 05:880B: 0D        .byte $0D   ; 
- D 0 - I - 0x01481C 05:880C: 00        .byte $00   ; 
- D 0 - I - 0x01481D 05:880D: 0F        .byte $0F   ; 
- D 0 - I - 0x01481E 05:880E: 0E        .byte $0E   ; 
- D 0 - I - 0x01481F 05:880F: 00        .byte $00   ; 
- D 0 - I - 0x014820 05:8810: 0D        .byte $0D   ; 
- D 0 - I - 0x014821 05:8811: 19        .byte $19   ; 
- D 0 - I - 0x014822 05:8812: 00        .byte $00   ; 
- D 0 - I - 0x014823 05:8813: 17        .byte $17   ; 
- D 0 - I - 0x014824 05:8814: 01        .byte $01   ; 
- D 0 - I - 0x014825 05:8815: 19        .byte $19   ; 
- D 0 - I - 0x014826 05:8816: 00        .byte $00   ; 
- D 0 - I - 0x014827 05:8817: 0C        .byte $0C   ; 
- D 0 - I - 0x014828 05:8818: 05        .byte $05   ; 
- D 0 - I - 0x014829 05:8819: 17        .byte $17   ; 
- D 0 - I - 0x01482A 05:881A: 09        .byte $09   ; 
- D 0 - I - 0x01482B 05:881B: 13        .byte $13   ; 
- D 0 - I - 0x01482C 05:881C: 24        .byte $24   ; 
- D 0 - I - 0x01482D 05:881D: 24        .byte $24   ; 
- D 0 - I - 0x01482E 05:881E: 24        .byte $24   ; 
- D 0 - I - 0x01482F 05:881F: FE        .byte con_8746_FE   ; 
- D 0 - I - 0x014830 05:8820: FC        .byte con_8746_FC   ; 
- D 0 - I - 0x014831 05:8821: FA        .byte con_8746_FA   ; 



ofs_007_8822_04:
C - - J - - 0x014832 05:8822: A9 7D     LDA #$7D
C - - - - - 0x014834 05:8824: 8D 00 02  STA ram_spr_Y
C - - - - - 0x014837 05:8827: A9 30     LDA #$30
C - - - - - 0x014839 05:8829: 8D 01 02  STA ram_spr_T
C - - - - - 0x01483C 05:882C: A9 FF     LDA #$FF
C - - - - - 0x01483E 05:882E: 8D 02 02  STA ram_spr_A
C - - - - - 0x014841 05:8831: A9 00     LDA #$00
C - - - - - 0x014843 05:8833: 8D 03 02  STA ram_spr_X
C - - - - - 0x014846 05:8836: AD A5 03  LDA ram_039C_obj + $09
C - - - - - 0x014849 05:8839: 18        CLC
C - - - - - 0x01484A 05:883A: 69 01     ADC #< $0001
C - - - - - 0x01484C 05:883C: 8D A5 03  STA ram_039C_obj + $09
C - - - - - 0x01484F 05:883F: AD A6 03  LDA ram_039C_obj + $0A
C - - - - - 0x014852 05:8842: 69 00     ADC #> $0001
C - - - - - 0x014854 05:8844: 8D A6 03  STA ram_039C_obj + $0A
C - - - - - 0x014857 05:8847: AD A6 03  LDA ram_039C_obj + $0A
C - - - - - 0x01485A 05:884A: C9 03     CMP #$03
C - - - - - 0x01485C 05:884C: 90 0A     BCC bra_8858
C - - - - - 0x01485E 05:884E: C9 0D     CMP #$0D
C - - - - - 0x014860 05:8850: B0 03     BCS bra_8855
C - - - - - 0x014862 05:8852: 4C 14 89  JMP loc_8914
bra_8855:
- - - - - - 0x014865 05:8855: 4C BE 88  JMP loc_88BE
bra_8858:
C - - - - - 0x014868 05:8858: 20 C1 94  JSR sub_94C1_read_joy_regs
C - - - - - 0x01486B 05:885B: AD B0 03  LDA ram_menu_buttons
C - - - - - 0x01486E 05:885E: 29 01     AND #con_btn2_A
C - - - - - 0x014870 05:8860: CD D3 03  CMP ram_03D3
C - - - - - 0x014873 05:8863: F0 0C     BEQ bra_8871
C - - - - - 0x014875 05:8865: 8D D3 03  STA ram_03D3
C - - - - - 0x014878 05:8868: C9 01     CMP #con_btn2_A
C - - - - - 0x01487A 05:886A: D0 05     BNE bra_8871
C - - - - - 0x01487C 05:886C: A9 03     LDA #$03
C - - - - - 0x01487E 05:886E: 8D A6 03  STA ram_039C_obj + $0A
bra_8871:
C - - - - - 0x014881 05:8871: A2 03     LDX #$03
C - - - - - 0x014883 05:8873: A0 00     LDY #$00
bra_8875_garbage_loop:
C - - - - - 0x014885 05:8875: 88        DEY
C - - - - - 0x014886 05:8876: D0 FD     BNE bra_8875_garbage_loop
C - - - - - 0x014888 05:8878: CA        DEX
C - - - - - 0x014889 05:8879: D0 FA     BNE bra_8875_garbage_loop
bra_887B_infinite_loop:
C - - - - - 0x01488B 05:887B: 2C 02 20  BIT $2002
C - - - - - 0x01488E 05:887E: 30 38     BMI bra_88B8
C - - - - - 0x014890 05:8880: 50 F9     BVC bra_887B_infinite_loop
C - - - - - 0x014892 05:8882: EA        NOP
C - - - - - 0x014893 05:8883: EA        NOP
C - - - - - 0x014894 05:8884: EA        NOP
C - - - - - 0x014895 05:8885: EA        NOP
C - - - - - 0x014896 05:8886: EA        NOP
C - - - - - 0x014897 05:8887: EA        NOP
C - - - - - 0x014898 05:8888: EA        NOP
C - - - - - 0x014899 05:8889: EA        NOP
C - - - - - 0x01489A 05:888A: EA        NOP
C - - - - - 0x01489B 05:888B: EA        NOP
C - - - - - 0x01489C 05:888C: EA        NOP
C - - - - - 0x01489D 05:888D: EA        NOP
C - - - - - 0x01489E 05:888E: EA        NOP
C - - - - - 0x01489F 05:888F: EA        NOP
C - - - - - 0x0148A0 05:8890: EA        NOP
C - - - - - 0x0148A1 05:8891: EA        NOP
C - - - - - 0x0148A2 05:8892: EA        NOP
C - - - - - 0x0148A3 05:8893: EA        NOP
C - - - - - 0x0148A4 05:8894: EA        NOP
C - - - - - 0x0148A5 05:8895: EA        NOP
C - - - - - 0x0148A6 05:8896: EA        NOP
C - - - - - 0x0148A7 05:8897: EA        NOP
C - - - - - 0x0148A8 05:8898: EA        NOP
C - - - - - 0x0148A9 05:8899: EA        NOP
C - - - - - 0x0148AA 05:889A: EA        NOP
C - - - - - 0x0148AB 05:889B: EA        NOP
C - - - - - 0x0148AC 05:889C: EA        NOP
C - - - - - 0x0148AD 05:889D: EA        NOP
C - - - - - 0x0148AE 05:889E: EA        NOP
C - - - - - 0x0148AF 05:889F: EA        NOP
C - - - - - 0x0148B0 05:88A0: EA        NOP
C - - - - - 0x0148B1 05:88A1: EA        NOP
C - - - - - 0x0148B2 05:88A2: EA        NOP
C - - - - - 0x0148B3 05:88A3: A9 1F     LDA #$1F
C - - - - - 0x0148B5 05:88A5: 8D FF BF  STA $BFFF
C - - - - - 0x0148B8 05:88A8: 4A        LSR
C - - - - - 0x0148B9 05:88A9: 8D FF BF  STA $BFFF
C - - - - - 0x0148BC 05:88AC: 4A        LSR
C - - - - - 0x0148BD 05:88AD: 8D FF BF  STA $BFFF
C - - - - - 0x0148C0 05:88B0: 4A        LSR
C - - - - - 0x0148C1 05:88B1: 8D FF BF  STA $BFFF
C - - - - - 0x0148C4 05:88B4: 4A        LSR
C - - - - - 0x0148C5 05:88B5: 8D FF BF  STA $BFFF
bra_88B8:
C - - - - - 0x0148C8 05:88B8: 20 B1 B7  JSR sub_B7B1
C - - - - - 0x0148CB 05:88BB: 4C 47 83  JMP loc_8347



loc_88BE:
C D 0 - - - 0x0148CE 05:88BE: A9 00     LDA #$00
C - - - - - 0x0148D0 05:88C0: 8D 00 20  STA $2000
C - - - - - 0x0148D3 05:88C3: 8D 01 20  STA $2001
C - - - - - 0x0148D6 05:88C6: 8D A2 03  STA ram_039C_obj + $06
C - - - - - 0x0148D9 05:88C9: 8D A5 03  STA ram_039C_obj + $09
C - - - - - 0x0148DC 05:88CC: 8D A6 03  STA ram_039C_obj + $0A
C - - - - - 0x0148DF 05:88CF: 8D A7 03  STA ram_039C_obj + $0B
C - - - - - 0x0148E2 05:88D2: A9 02     LDA #$02
C - - - - - 0x0148E4 05:88D4: 8D B3 03  STA ram_03A9_obj + $0A
C - - - - - 0x0148E7 05:88D7: A9 FF     LDA #$FF
C - - - - - 0x0148E9 05:88D9: 8D B1 03  STA ram_03A9_obj + $08
C - - - - - 0x0148EC 05:88DC: A9 08     LDA #$08
C - - - - - 0x0148EE 05:88DE: 8D 21 03  STA ram_0321
C - - - - - 0x0148F1 05:88E1: A9 02     LDA #$02
C - - - - - 0x0148F3 05:88E3: 8D A7 03  STA ram_039C_obj + $0B
C - - - - - 0x0148F6 05:88E6: 20 39 98  JSR sub_9839
; bzk optimize, same as 0x01491B
C - - - - - 0x0148F9 05:88E9: A9 01     LDA #$01
C - - - - - 0x0148FB 05:88EB: 8D D3 03  STA ram_03D3
C - - - - - 0x0148FE 05:88EE: A2 02     LDX #$02
C - - - - - 0x014900 05:88F0: AD 29 98  LDA tbl_9827 + $02
C - - - - - 0x014903 05:88F3: 8D A6 03  STA ram_039C_obj + $0A
C - - - - - 0x014906 05:88F6: AD 32 98  LDA tbl_9830 + $02
C - - - - - 0x014909 05:88F9: 8D A5 03  STA ram_039C_obj + $09
C - - - - - 0x01490C 05:88FC: A9 80     LDA #$80
C - - - - - 0x01490E 05:88FE: 8D 00 20  STA $2000
C - - - - - 0x014911 05:8901: A9 1D     LDA #con_sound_1D
C - - - - - 0x014913 05:8903: 20 03 C0  JSR sub_0x01C013_prepare_sound
C - - - - - 0x014916 05:8906: A9 01     LDA #$01
C - - - - - 0x014918 05:8908: 8D B2 03  STA ram_03A9_obj + $09
C - - - - - 0x01491B 05:890B: 8D D3 03  STA ram_03D3
C - - - - - 0x01491E 05:890E: 4C 47 83  JMP loc_8347



bra_8911:
C - - - - - 0x014921 05:8911: 4C BE 88  JMP loc_88BE



loc_8914:
C D 0 - - - 0x014924 05:8914: AD D4 03  LDA ram_03D4
C - - - - - 0x014927 05:8917: D0 4C     BNE bra_8965
C - - - - - 0x014929 05:8919: 20 F2 99  JSR sub_99F2
C - - - - - 0x01492C 05:891C: AD EF 07  LDA ram_07EF
C - - - - - 0x01492F 05:891F: C9 06     CMP #$06
C - - - - - 0x014931 05:8921: B0 EE     BCS bra_8911
C - - - - - 0x014933 05:8923: 0A        ASL
C - - - - - 0x014934 05:8924: AA        TAX
C - - - - - 0x014935 05:8925: BD 0F 94  LDA tbl_940E + $01,X
C - - - - - 0x014938 05:8928: 8D D5 03  STA ram_03D5
C - - - - - 0x01493B 05:892B: BD 0E 94  LDA tbl_940E,X
C - - - - - 0x01493E 05:892E: 8D D6 03  STA ram_03D6
C - - - - - 0x014941 05:8931: A9 00     LDA #$00
C - - - - - 0x014943 05:8933: 8D D7 03  STA ram_03D7
C - - - - - 0x014946 05:8936: A9 03     LDA #$03
C - - - - - 0x014948 05:8938: 8D A7 03  STA ram_039C_obj + $0B
C - - - - - 0x01494B 05:893B: 20 39 98  JSR sub_9839
C - - - - - 0x01494E 05:893E: 20 DF 9A  JSR sub_9ADF
C - - - - - 0x014951 05:8941: A2 27     LDX #$27
bra_8943_loop:
C - - - - - 0x014953 05:8943: 20 83 95  JSR sub_9583
C - - - - - 0x014956 05:8946: 29 3F     AND #$3F
C - - - - - 0x014958 05:8948: 9D 28 03  STA ram_0328_stars,X
C - - - - - 0x01495B 05:894B: 20 83 95  JSR sub_9583
C - - - - - 0x01495E 05:894E: 29 3F     AND #$3F
C - - - - - 0x014960 05:8950: 9D 50 03  STA ram_0350_stars,X
C - - - - - 0x014963 05:8953: A9 00     LDA #$00
C - - - - - 0x014965 05:8955: 9D 78 03  STA ram_0378_stars,X
C - - - - - 0x014968 05:8958: CA        DEX
C - - - - - 0x014969 05:8959: 10 E8     BPL bra_8943_loop
C - - - - - 0x01496B 05:895B: A9 FF     LDA #$FF
C - - - - - 0x01496D 05:895D: 8D D4 03  STA ram_03D4
C - - - - - 0x014970 05:8960: A9 81     LDA #$81
C - - - - - 0x014972 05:8962: 8D 00 20  STA $2000
bra_8965:
C - - - - - 0x014975 05:8965: 20 D7 94  JSR sub_94D7
C - - - - - 0x014978 05:8968: 20 B1 B7  JSR sub_B7B1
C - - - - - 0x01497B 05:896B: 20 C1 94  JSR sub_94C1_read_joy_regs
C - - - - - 0x01497E 05:896E: AE EF 07  LDX ram_07EF
C - - - - - 0x014981 05:8971: BD 12 8A  LDA tbl_8A12,X
C - - - - - 0x014984 05:8974: 18        CLC
C - - - - - 0x014985 05:8975: 6D D7 03  ADC ram_03D7
C - - - - - 0x014988 05:8978: AA        TAX
C - - - - - 0x014989 05:8979: AD B0 03  LDA ram_menu_buttons
C - - - - - 0x01498C 05:897C: CD B2 03  CMP ram_03A9_obj + $09
C - - - - - 0x01498F 05:897F: F0 06     BEQ bra_8987
C - - - - - 0x014991 05:8981: 8D B2 03  STA ram_03A9_obj + $09
C - - - - - 0x014994 05:8984: 4C 92 89  JMP loc_8992
bra_8987:
C - - - - - 0x014997 05:8987: AD AF 03  LDA ram_03A9_obj + $06
C - - - - - 0x01499A 05:898A: 29 1F     AND #$1F
C - - - - - 0x01499C 05:898C: F0 04     BEQ bra_8992
C - - - - - 0x01499E 05:898E: C9 14     CMP #$14
C - - - - - 0x0149A0 05:8990: D0 7D     BNE bra_8A0F
bra_8992:
loc_8992:
C D 0 - - - 0x0149A2 05:8992: AD B0 03  LDA ram_menu_buttons
C - - - - - 0x0149A5 05:8995: 29 20     AND #con_btn2_Down
C - - - - - 0x0149A7 05:8997: F0 1A     BEQ bra_89B3
C - - - - - 0x0149A9 05:8999: BD 00 07  LDA ram_0700_buffer + $00,X
C - - - - - 0x0149AC 05:899C: 18        CLC
C - - - - - 0x0149AD 05:899D: 69 01     ADC #$01
C - - - - - 0x0149AF 05:899F: C9 1B     CMP #$1B
C - - - - - 0x0149B1 05:89A1: 90 02     BCC bra_89A5
C - - - - - 0x0149B3 05:89A3: E9 1B     SBC #$1B
bra_89A5:
C - - - - - 0x0149B5 05:89A5: 9D 00 07  STA ram_0700_buffer + $00,X
C - - - - - 0x0149B8 05:89A8: A9 03     LDA #$03
C - - - - - 0x0149BA 05:89AA: 8D A6 03  STA ram_039C_obj + $0A
C - - - - - 0x0149BD 05:89AD: 8D AF 03  STA ram_03A9_obj + $06
C - - - - - 0x0149C0 05:89B0: 4C 05 8A  JMP loc_8A05
bra_89B3:
C - - - - - 0x0149C3 05:89B3: AD B0 03  LDA ram_menu_buttons
C - - - - - 0x0149C6 05:89B6: 29 10     AND #con_btn2_Up
C - - - - - 0x0149C8 05:89B8: F0 18     BEQ bra_89D2
C - - - - - 0x0149CA 05:89BA: BD 00 07  LDA ram_0700_buffer + $00,X
C - - - - - 0x0149CD 05:89BD: 38        SEC
C - - - - - 0x0149CE 05:89BE: E9 01     SBC #$01
C - - - - - 0x0149D0 05:89C0: B0 02     BCS bra_89C4
C - - - - - 0x0149D2 05:89C2: 69 1B     ADC #$1B
bra_89C4:
C - - - - - 0x0149D4 05:89C4: 9D 00 07  STA ram_0700_buffer + $00,X
C - - - - - 0x0149D7 05:89C7: A9 03     LDA #$03
C - - - - - 0x0149D9 05:89C9: 8D A6 03  STA ram_039C_obj + $0A
C - - - - - 0x0149DC 05:89CC: 8D AF 03  STA ram_03A9_obj + $06
C - - - - - 0x0149DF 05:89CF: 4C 05 8A  JMP loc_8A05
bra_89D2:
C - - - - - 0x0149E2 05:89D2: AD B0 03  LDA ram_menu_buttons
C - - - - - 0x0149E5 05:89D5: 29 80     AND #con_btn2_Right
C - - - - - 0x0149E7 05:89D7: F0 15     BEQ bra_89EE
C - - - - - 0x0149E9 05:89D9: AD D7 03  LDA ram_03D7
C - - - - - 0x0149EC 05:89DC: C9 09     CMP #$09
C - - - - - 0x0149EE 05:89DE: B0 0E     BCS bra_89EE
C - - - - - 0x0149F0 05:89E0: EE D7 03  INC ram_03D7
C - - - - - 0x0149F3 05:89E3: A9 03     LDA #$03
C - - - - - 0x0149F5 05:89E5: 8D A6 03  STA ram_039C_obj + $0A
C - - - - - 0x0149F8 05:89E8: 8D AF 03  STA ram_03A9_obj + $06
C - - - - - 0x0149FB 05:89EB: 4C 05 8A  JMP loc_8A05
bra_89EE:
C - - - - - 0x0149FE 05:89EE: AD B0 03  LDA ram_menu_buttons
C - - - - - 0x014A01 05:89F1: 29 40     AND #con_btn2_Left
C - - - - - 0x014A03 05:89F3: F0 10     BEQ bra_8A05
- - - - - - 0x014A05 05:89F5: AD D7 03  LDA ram_03D7
- - - - - - 0x014A08 05:89F8: F0 0B     BEQ bra_8A05
- - - - - - 0x014A0A 05:89FA: CE D7 03  DEC ram_03D7
- - - - - - 0x014A0D 05:89FD: A9 03     LDA #$03
- - - - - - 0x014A0F 05:89FF: 8D A6 03  STA ram_039C_obj + $0A
- - - - - - 0x014A12 05:8A02: 8D AF 03  STA ram_03A9_obj + $06
bra_8A05:
loc_8A05:
C D 0 - - - 0x014A15 05:8A05: AD B0 03  LDA ram_menu_buttons
C - - - - - 0x014A18 05:8A08: 29 09     AND #con_btn2_Start + con_btn2_A
C - - - - - 0x014A1A 05:8A0A: F0 03     BEQ bra_8A0F
C - - - - - 0x014A1C 05:8A0C: 4C BE 88  JMP loc_88BE
bra_8A0F:
C - - - - - 0x014A1F 05:8A0F: 4C 47 83  JMP loc_8347



tbl_8A12:
- D 0 - - - 0x014A22 05:8A12: 75        .byte $75   ; 00 
- - - - - - 0x014A23 05:8A13: 84        .byte $84   ; 01 
- - - - - - 0x014A24 05:8A14: 93        .byte $93   ; 02 
- - - - - - 0x014A25 05:8A15: A2        .byte $A2   ; 03 
- - - - - - 0x014A26 05:8A16: B1        .byte $B1   ; 04 
- - - - - - 0x014A27 05:8A17: C0        .byte $C0   ; 05 



ofs_007_8A18_05:
C - - J - - 0x014A28 05:8A18: A2 01     LDX #$01
C - - - - - 0x014A2A 05:8A1A: A0 00     LDY #$00
bra_8A1C_garbage_loop:
C - - - - - 0x014A2C 05:8A1C: 88        DEY
C - - - - - 0x014A2D 05:8A1D: D0 FD     BNE bra_8A1C_garbage_loop
C - - - - - 0x014A2F 05:8A1F: CA        DEX
C - - - - - 0x014A30 05:8A20: D0 FA     BNE bra_8A1C_garbage_loop
C - - - - - 0x014A32 05:8A22: A9 66     LDA #$66
C - - - - - 0x014A34 05:8A24: 8D 00 02  STA ram_spr_Y
C - - - - - 0x014A37 05:8A27: A9 30     LDA #$30
C - - - - - 0x014A39 05:8A29: 8D 01 02  STA ram_spr_T
C - - - - - 0x014A3C 05:8A2C: A9 FF     LDA #$FF
C - - - - - 0x014A3E 05:8A2E: 8D 02 02  STA ram_spr_A
C - - - - - 0x014A41 05:8A31: A9 30     LDA #$30
C - - - - - 0x014A43 05:8A33: 8D 03 02  STA ram_spr_X
C - - - - - 0x014A46 05:8A36: AD C3 03  LDA ram_03C3
C - - - - - 0x014A49 05:8A39: 8D 04 02  STA ram_spr_Y + $04
C - - - - - 0x014A4C 05:8A3C: 18        CLC
C - - - - - 0x014A4D 05:8A3D: 69 08     ADC #$08
C - - - - - 0x014A4F 05:8A3F: 8D 08 02  STA ram_spr_Y + $08
C - - - - - 0x014A52 05:8A42: AD B8 03  LDA ram_03B8
C - - - - - 0x014A55 05:8A45: 8D 07 02  STA ram_spr_X + $04
C - - - - - 0x014A58 05:8A48: 8D 0B 02  STA ram_spr_X + $08
C - - - - - 0x014A5B 05:8A4B: A9 F6     LDA #$F6
C - - - - - 0x014A5D 05:8A4D: 8D 05 02  STA ram_spr_T + $04
C - - - - - 0x014A60 05:8A50: A9 F7     LDA #$F7
C - - - - - 0x014A62 05:8A52: 8D 09 02  STA ram_spr_T + $08
C - - - - - 0x014A65 05:8A55: A9 00     LDA #$00
C - - - - - 0x014A67 05:8A57: 8D 06 02  STA ram_spr_A + $04
C - - - - - 0x014A6A 05:8A5A: 8D 0A 02  STA ram_spr_A + $08
C - - - - - 0x014A6D 05:8A5D: A9 00     LDA #$00
C - - - - - 0x014A6F 05:8A5F: 8D C6 03  STA ram_03C6
C - - - - - 0x014A72 05:8A62: 8D C7 03  STA ram_03C7
C - - - - - 0x014A75 05:8A65: AE BD 03  LDX ram_03BD
C - - - - - 0x014A78 05:8A68: BC C6 9D  LDY tbl_9DC6_unit_index,X
C - - - - - 0x014A7B 05:8A6B: B9 A0 06  LDA ram_unit__hp,Y
C - - - - - 0x014A7E 05:8A6E: 8D C6 03  STA ram_03C6
C - - - - - 0x014A81 05:8A71: A9 E6     LDA #$E6
C - - - - - 0x014A83 05:8A73: 8D D8 03  STA ram_03D8
C - - - - - 0x014A86 05:8A76: A2 C8     LDX #< ram_03C8
C - - - - - 0x014A88 05:8A78: A0 03     LDY #> ram_03C8
C - - - - - 0x014A8A 05:8A7A: 20 7F 9D  JSR sub_9D7F
C - - - - - 0x014A8D 05:8A7D: A9 9A     LDA #$9A
C - - - - - 0x014A8F 05:8A7F: 8D E0 02  STA ram_spr_Y + $E0
C - - - - - 0x014A92 05:8A82: A9 F8     LDA #$F8
C - - - - - 0x014A94 05:8A84: 8D E1 02  STA ram_spr_T + $E0
C - - - - - 0x014A97 05:8A87: A9 00     LDA #$00
C - - - - - 0x014A99 05:8A89: 8D E2 02  STA ram_spr_A + $E0
C - - - - - 0x014A9C 05:8A8C: A9 17     LDA #$17
C - - - - - 0x014A9E 05:8A8E: 8D E3 02  STA ram_spr_X + $E0
C - - - - - 0x014AA1 05:8A91: 8D E7 02  STA ram_spr_X + $E4
C - - - - - 0x014AA4 05:8A94: A9 A2     LDA #$A2
C - - - - - 0x014AA6 05:8A96: 8D E4 02  STA ram_spr_Y + $E4
C - - - - - 0x014AA9 05:8A99: A9 F9     LDA #$F9
C - - - - - 0x014AAB 05:8A9B: 8D E5 02  STA ram_spr_T + $E4
C - - - - - 0x014AAE 05:8A9E: A9 00     LDA #$00
C - - - - - 0x014AB0 05:8AA0: 8D E6 02  STA ram_spr_A + $E4
C - - - - - 0x014AB3 05:8AA3: 20 C1 94  JSR sub_94C1_read_joy_regs
C - - - - - 0x014AB6 05:8AA6: AD B0 03  LDA ram_menu_buttons
C - - - - - 0x014AB9 05:8AA9: 29 08     AND #con_btn2_Start
C - - - - - 0x014ABB 05:8AAB: F0 0B     BEQ bra_8AB8
C - - - - - 0x014ABD 05:8AAD: A9 00     LDA #$00
C - - - - - 0x014ABF 05:8AAF: 8D B3 03  STA ram_03A9_obj + $0A
C - - - - - 0x014AC2 05:8AB2: A9 07     LDA #$07    ; corfirm/reallocate repairs
C - - - - - 0x014AC4 05:8AB4: 4C B5 B7  JMP loc_B7B5_print_text


; bzk garbage
- - - - - - 0x014AC7 05:8AB7: 60        RTS



bra_8AB8:
C - - - - - 0x014AC8 05:8AB8: AD A4 06  LDA ram_repair_item
C - - - - - 0x014ACB 05:8ABB: C9 0A     CMP #$0A
C - - - - - 0x014ACD 05:8ABD: 90 02     BCC bra_8AC1
- - - - - - 0x014ACF 05:8ABF: A9 0A     LDA #$0A
bra_8AC1:
C - - - - - 0x014AD1 05:8AC1: 18        CLC
C - - - - - 0x014AD2 05:8AC2: 69 E6     ADC #$E6
C - - - - - 0x014AD4 05:8AC4: 8D CE 03  STA ram_03CE
C - - - - - 0x014AD7 05:8AC7: AD B0 03  LDA ram_menu_buttons
C - - - - - 0x014ADA 05:8ACA: 29 01     AND #con_btn2_A
C - - - - - 0x014ADC 05:8ACC: CD B2 03  CMP ram_03A9_obj + $09
C - - - - - 0x014ADF 05:8ACF: F0 20     BEQ bra_8AF1
C - - - - - 0x014AE1 05:8AD1: 8D B2 03  STA ram_03A9_obj + $09
C - - - - - 0x014AE4 05:8AD4: C9 01     CMP #con_btn2_A
C - - - - - 0x014AE6 05:8AD6: D0 19     BNE bra_8AF1
C - - - - - 0x014AE8 05:8AD8: AD A4 06  LDA ram_repair_item
C - - - - - 0x014AEB 05:8ADB: F0 14     BEQ bra_8AF1
C - - - - - 0x014AED 05:8ADD: AE BD 03  LDX ram_03BD
C - - - - - 0x014AF0 05:8AE0: BC C6 9D  LDY tbl_9DC6_unit_index,X
C - - - - - 0x014AF3 05:8AE3: B9 A0 06  LDA ram_unit__hp,Y
C - - - - - 0x014AF6 05:8AE6: 18        CLC
C - - - - - 0x014AF7 05:8AE7: 69 0A     ADC #$0A
C - - - - - 0x014AF9 05:8AE9: B0 06     BCS bra_8AF1
C - - - - - 0x014AFB 05:8AEB: 99 A0 06  STA ram_unit__hp,Y
C - - - - - 0x014AFE 05:8AEE: CE A4 06  DEC ram_repair_item
bra_8AF1:
bra_8AF1_infinite_loop:
C - - - - - 0x014B01 05:8AF1: 2C 02 20  BIT $2002
C - - - - - 0x014B04 05:8AF4: 30 35     BMI bra_8B2B
C - - - - - 0x014B06 05:8AF6: 50 F9     BVC bra_8AF1_infinite_loop
C - - - - - 0x014B08 05:8AF8: EA        NOP
C - - - - - 0x014B09 05:8AF9: EA        NOP
C - - - - - 0x014B0A 05:8AFA: EA        NOP
C - - - - - 0x014B0B 05:8AFB: EA        NOP
C - - - - - 0x014B0C 05:8AFC: EA        NOP
C - - - - - 0x014B0D 05:8AFD: EA        NOP
C - - - - - 0x014B0E 05:8AFE: EA        NOP
C - - - - - 0x014B0F 05:8AFF: EA        NOP
C - - - - - 0x014B10 05:8B00: EA        NOP
C - - - - - 0x014B11 05:8B01: EA        NOP
C - - - - - 0x014B12 05:8B02: EA        NOP
C - - - - - 0x014B13 05:8B03: EA        NOP
C - - - - - 0x014B14 05:8B04: EA        NOP
C - - - - - 0x014B15 05:8B05: EA        NOP
C - - - - - 0x014B16 05:8B06: EA        NOP
C - - - - - 0x014B17 05:8B07: EA        NOP
C - - - - - 0x014B18 05:8B08: EA        NOP
C - - - - - 0x014B19 05:8B09: EA        NOP
C - - - - - 0x014B1A 05:8B0A: EA        NOP
C - - - - - 0x014B1B 05:8B0B: EA        NOP
C - - - - - 0x014B1C 05:8B0C: EA        NOP
C - - - - - 0x014B1D 05:8B0D: EA        NOP
C - - - - - 0x014B1E 05:8B0E: EA        NOP
C - - - - - 0x014B1F 05:8B0F: EA        NOP
C - - - - - 0x014B20 05:8B10: EA        NOP
C - - - - - 0x014B21 05:8B11: EA        NOP
C - - - - - 0x014B22 05:8B12: EA        NOP
C - - - - - 0x014B23 05:8B13: EA        NOP
C - - - - - 0x014B24 05:8B14: EA        NOP
C - - - - - 0x014B25 05:8B15: EA        NOP
C - - - - - 0x014B26 05:8B16: A9 17     LDA #$17
C - - - - - 0x014B28 05:8B18: 8D FF BF  STA $BFFF
C - - - - - 0x014B2B 05:8B1B: 4A        LSR
C - - - - - 0x014B2C 05:8B1C: 8D FF BF  STA $BFFF
C - - - - - 0x014B2F 05:8B1F: 4A        LSR
C - - - - - 0x014B30 05:8B20: 8D FF BF  STA $BFFF
C - - - - - 0x014B33 05:8B23: 4A        LSR
C - - - - - 0x014B34 05:8B24: 8D FF BF  STA $BFFF
C - - - - - 0x014B37 05:8B27: 4A        LSR
C - - - - - 0x014B38 05:8B28: 8D FF BF  STA $BFFF
bra_8B2B:
C - - - - - 0x014B3B 05:8B2B: 20 33 9C  JSR sub_9C33
C - - - - - 0x014B3E 05:8B2E: 20 CE 9C  JSR sub_9CCE
C - - - - - 0x014B41 05:8B31: 20 53 94  JSR sub_9453
C - - - - - 0x014B44 05:8B34: 20 B1 B7  JSR sub_B7B1
C - - - - - 0x014B47 05:8B37: 4C 47 83  JMP loc_8347



ofs_007_8B3A_06:
C - - J - - 0x014B4A 05:8B3A: A2 03     LDX #$03
C - - - - - 0x014B4C 05:8B3C: A0 00     LDY #$00
bra_8B3E_garbage_loop:
C - - - - - 0x014B4E 05:8B3E: 88        DEY
C - - - - - 0x014B4F 05:8B3F: D0 FD     BNE bra_8B3E_garbage_loop
C - - - - - 0x014B51 05:8B41: CA        DEX
C - - - - - 0x014B52 05:8B42: D0 FA     BNE bra_8B3E_garbage_loop
C - - - - - 0x014B54 05:8B44: 20 B1 B7  JSR sub_B7B1
C - - - - - 0x014B57 05:8B47: 20 D7 94  JSR sub_94D7
C - - - - - 0x014B5A 05:8B4A: 20 C1 94  JSR sub_94C1_read_joy_regs
C - - - - - 0x014B5D 05:8B4D: AD B0 03  LDA ram_menu_buttons
C - - - - - 0x014B60 05:8B50: F0 08     BEQ bra_8B5A
C - - - - - 0x014B62 05:8B52: AD B2 03  LDA ram_03A9_obj + $09
C - - - - - 0x014B65 05:8B55: F0 0B     BEQ bra_8B62
C - - - - - 0x014B67 05:8B57: 4C 6F 8B  JMP loc_8B6F
bra_8B5A:
C - - - - - 0x014B6A 05:8B5A: A9 00     LDA #$00
C - - - - - 0x014B6C 05:8B5C: 8D B2 03  STA ram_03A9_obj + $09
C - - - - - 0x014B6F 05:8B5F: 4C 6F 8B  JMP loc_8B6F
bra_8B62:
C - - - - - 0x014B72 05:8B62: A9 02     LDA #$02
C - - - - - 0x014B74 05:8B64: 8D A6 03  STA ram_039C_obj + $0A
C - - - - - 0x014B77 05:8B67: A9 30     LDA #$30
C - - - - - 0x014B79 05:8B69: 8D A5 03  STA ram_039C_obj + $09
C - - - - - 0x014B7C 05:8B6C: 4C 80 8B  JMP loc_8B80



loc_8B6F:
C D 0 - - - 0x014B7F 05:8B6F: AD A5 03  LDA ram_039C_obj + $09
C - - - - - 0x014B82 05:8B72: 18        CLC
C - - - - - 0x014B83 05:8B73: 69 01     ADC #< $0001
C - - - - - 0x014B85 05:8B75: 8D A5 03  STA ram_039C_obj + $09
C - - - - - 0x014B88 05:8B78: AD A6 03  LDA ram_039C_obj + $0A
C - - - - - 0x014B8B 05:8B7B: 69 00     ADC #> $0001
C - - - - - 0x014B8D 05:8B7D: 8D A6 03  STA ram_039C_obj + $0A
loc_8B80:
C D 0 - - - 0x014B90 05:8B80: AD A6 03  LDA ram_039C_obj + $0A
C - - - - - 0x014B93 05:8B83: C9 02     CMP #$02
C - - - - - 0x014B95 05:8B85: D0 1C     BNE bra_8BA3
C - - - - - 0x014B97 05:8B87: AD A5 03  LDA ram_039C_obj + $09
C - - - - - 0x014B9A 05:8B8A: C9 30     CMP #$30
C - - - - - 0x014B9C 05:8B8C: 90 15     BCC bra_8BA3
C - - - - - 0x014B9E 05:8B8E: A9 04     LDA #$04
C - - - - - 0x014BA0 05:8B90: 8D A6 03  STA ram_039C_obj + $0A
C - - - - - 0x014BA3 05:8B93: 8D B3 03  STA ram_03A9_obj + $0A
C - - - - - 0x014BA6 05:8B96: A9 00     LDA #$00
C - - - - - 0x014BA8 05:8B98: 8D D4 03  STA ram_03D4
C - - - - - 0x014BAB 05:8B9B: A9 03     LDA #$03
C - - - - - 0x014BAD 05:8B9D: 8D A7 03  STA ram_039C_obj + $0B
C - - - - - 0x014BB0 05:8BA0: 4C 14 89  JMP loc_8914
bra_8BA3:
C - - - - - 0x014BB3 05:8BA3: 4C 47 83  JMP loc_8347



ofs_007_8BA6_07:
C - - J - - 0x014BB6 05:8BA6: A2 03     LDX #$03
C - - - - - 0x014BB8 05:8BA8: A0 00     LDY #$00
bra_8BAA_garbage_loop:
C - - - - - 0x014BBA 05:8BAA: 88        DEY
C - - - - - 0x014BBB 05:8BAB: D0 FD     BNE bra_8BAA_garbage_loop
C - - - - - 0x014BBD 05:8BAD: CA        DEX
C - - - - - 0x014BBE 05:8BAE: D0 FA     BNE bra_8BAA_garbage_loop
C - - - - - 0x014BC0 05:8BB0: AD D9 03  LDA ram_03D9
C - - - - - 0x014BC3 05:8BB3: D0 15     BNE bra_8BCA
C - - - - - 0x014BC5 05:8BB5: 20 C1 94  JSR sub_94C1_read_joy_regs
C - - - - - 0x014BC8 05:8BB8: AD B0 03  LDA ram_menu_buttons
C - - - - - 0x014BCB 05:8BBB: 29 01     AND #con_btn2_A
C - - - - - 0x014BCD 05:8BBD: CD D3 03  CMP ram_03D3
C - - - - - 0x014BD0 05:8BC0: F0 08     BEQ bra_8BCA
C - - - - - 0x014BD2 05:8BC2: 8D D3 03  STA ram_03D3
C - - - - - 0x014BD5 05:8BC5: C9 01     CMP #con_btn2_A
C - - - - - 0x014BD7 05:8BC7: D0 01     BNE bra_8BCA
C - - - - - 0x014BD9 05:8BC9: 60        RTS
bra_8BCA:
C - - - - - 0x014BDA 05:8BCA: 20 B1 B7  JSR sub_B7B1
C - - - - - 0x014BDD 05:8BCD: AC B5 03  LDY ram_03A9_obj + $0C
C - - - - - 0x014BE0 05:8BD0: B1 F4     LDA (ram_00F4),Y
C - - - - - 0x014BE2 05:8BD2: C9 FD     CMP #con_B84C_FD
C - - - - - 0x014BE4 05:8BD4: D0 0B     BNE bra_8BE1
; FD
C - - - - - 0x014BE6 05:8BD6: A9 FF     LDA #$FF
C - - - - - 0x014BE8 05:8BD8: 8D D9 03  STA ram_03D9
C - - - - - 0x014BEB 05:8BDB: EE B5 03  INC ram_03A9_obj + $0C
C - - - - - 0x014BEE 05:8BDE: 4C 12 8C  JMP loc_8C12
bra_8BE1:
C - - - - - 0x014BF1 05:8BE1: C9 F9     CMP #con_B84C_condition
C - - - - - 0x014BF3 05:8BE3: D0 03     BNE bra_8BE8
; F9
C - - - - - 0x014BF5 05:8BE5: 4C 76 8C  JMP loc_8C76_F9
bra_8BE8:
C - - - - - 0x014BF8 05:8BE8: C9 FE     CMP #con_B84C_new_line
C - - - - - 0x014BFA 05:8BEA: F0 45     BEQ bra_8C31_FE
C - - - - - 0x014BFC 05:8BEC: C9 FC     CMP #con_B84C_scroll
C - - - - - 0x014BFE 05:8BEE: F0 56     BEQ bra_8C46_FC
C - - - - - 0x014C00 05:8BF0: C9 FB     CMP #con_B84C_clear_buffer
C - - - - - 0x014C02 05:8BF2: F0 05     BEQ bra_8BF9_FB
C - - - - - 0x014C04 05:8BF4: C9 FA     CMP #con_B84C_exit
C - - - - - 0x014C06 05:8BF6: D0 04     BNE bra_8BFC
; FA
C - - - - - 0x014C08 05:8BF8: 60        RTS
bra_8BF9_FB:
C - - - - - 0x014C09 05:8BF9: 4C 61 8C  JMP loc_8C61
bra_8BFC:
C - - - - - 0x014C0C 05:8BFC: AE D7 03  LDX ram_03D7
C - - - - - 0x014C0F 05:8BFF: B1 F4     LDA (ram_00F4),Y
C - - - - - 0x014C11 05:8C01: 38        SEC
C - - - - - 0x014C12 05:8C02: E9 40     SBC #$40
C - - - - - 0x014C14 05:8C04: 9D 54 07  STA ram_0700_buffer + $54,X
C - - - - - 0x014C17 05:8C07: EE B5 03  INC ram_03A9_obj + $0C
C - - - - - 0x014C1A 05:8C0A: EE D7 03  INC ram_03D7
C - - - - - 0x014C1D 05:8C0D: A9 00     LDA #$00
C - - - - - 0x014C1F 05:8C0F: 8D AF 03  STA ram_03A9_obj + $06
bra_8C12:
loc_8C12:   ; bzk optimize
C D 0 - - - 0x014C22 05:8C12: 4C 47 83  JMP loc_8347


; bzk garbage
- - - - - - 0x014C25 05:8C15: EE B4 03  INC ram_03A9_obj + $0B
- - - - - - 0x014C28 05:8C18: A9 00     LDA #$00
- - - - - - 0x014C2A 05:8C1A: 8D D7 03  STA ram_03D7
- - - - - - 0x014C2D 05:8C1D: 8D B5 03  STA ram_03A9_obj + $0C
- - - - - - 0x014C30 05:8C20: EE A7 03  INC ram_039C_obj + $0B
- - - - - - 0x014C33 05:8C23: AD A7 03  LDA ram_039C_obj + $0B
- - - - - - 0x014C36 05:8C26: 20 39 98  JSR sub_9839
- - - - - - 0x014C39 05:8C29: A9 81     LDA #$81
- - - - - - 0x014C3B 05:8C2B: 8D 00 20  STA $2000
- - - - - - 0x014C3E 05:8C2E: 4C 12 8C  JMP loc_8C12



bra_8C31_FE:
C - - - - - 0x014C41 05:8C31: AD AF 03  LDA ram_03A9_obj + $06
C - - - - - 0x014C44 05:8C34: 29 0F     AND #$0F
C - - - - - 0x014C46 05:8C36: D0 DA     BNE bra_8C12
C - - - - - 0x014C48 05:8C38: 20 1B 83  JSR sub_831B_move_data_to_buffers
C - - - - - 0x014C4B 05:8C3B: EE B5 03  INC ram_03A9_obj + $0C
C - - - - - 0x014C4E 05:8C3E: A9 00     LDA #$00
C - - - - - 0x014C50 05:8C40: 8D D7 03  STA ram_03D7
C - - - - - 0x014C53 05:8C43: 4C 12 8C  JMP loc_8C12
bra_8C46_FC:
C - - - - - 0x014C56 05:8C46: AD A5 03  LDA ram_039C_obj + $09
C - - - - - 0x014C59 05:8C49: 18        CLC
C - - - - - 0x014C5A 05:8C4A: 69 01     ADC #$01
C - - - - - 0x014C5C 05:8C4C: 8D A5 03  STA ram_039C_obj + $09
C - - - - - 0x014C5F 05:8C4F: C9 3F     CMP #$3F
C - - - - - 0x014C61 05:8C51: 90 BF     BCC bra_8C12
C - - - - - 0x014C63 05:8C53: EE B5 03  INC ram_03A9_obj + $0C
C - - - - - 0x014C66 05:8C56: A9 00     LDA #$00
C - - - - - 0x014C68 05:8C58: 8D D7 03  STA ram_03D7
C - - - - - 0x014C6B 05:8C5B: 8D A5 03  STA ram_039C_obj + $09
C - - - - - 0x014C6E 05:8C5E: 4C 12 8C  JMP loc_8C12



loc_8C61:
C D 0 - - - 0x014C71 05:8C61: A2 6F     LDX #$6F
C - - - - - 0x014C73 05:8C63: A9 00     LDA #$00
bra_8C65_loop:
C - - - - - 0x014C75 05:8C65: 9D 00 07  STA ram_0700_buffer + $00,X
C - - - - - 0x014C78 05:8C68: CA        DEX
C - - - - - 0x014C79 05:8C69: 10 FA     BPL bra_8C65_loop
C - - - - - 0x014C7B 05:8C6B: EE B5 03  INC ram_03A9_obj + $0C
C - - - - - 0x014C7E 05:8C6E: A9 00     LDA #$00
C - - - - - 0x014C80 05:8C70: 8D D7 03  STA ram_03D7
C - - - - - 0x014C83 05:8C73: 4C 12 8C  JMP loc_8C12



loc_8C76_F9:
C D 0 - - - 0x014C86 05:8C76: 20 C1 94  JSR sub_94C1_read_joy_regs
C - - - - - 0x014C89 05:8C79: AD B0 03  LDA ram_menu_buttons
C - - - - - 0x014C8C 05:8C7C: 29 01     AND #con_btn2_A
C - - - - - 0x014C8E 05:8C7E: F0 29     BEQ bra_8CA9
C - - - - - 0x014C90 05:8C80: A2 00     LDX #$00
C - - - - - 0x014C92 05:8C82: 8E A5 06  STX ram_06A5
C - - - - - 0x014C95 05:8C85: AD A0 06  LDA ram_unit_hp_head
C - - - - - 0x014C98 05:8C88: 9D C0 06  STA ram_copy_unit_hp_head,X
C - - - - - 0x014C9B 05:8C8B: AD A1 06  LDA ram_unit_hp_body
C - - - - - 0x014C9E 05:8C8E: 9D C2 06  STA ram_copy_unit_hp_body,X
C - - - - - 0x014CA1 05:8C91: AD A2 06  LDA ram_unit_hp_arms
C - - - - - 0x014CA4 05:8C94: 9D C4 06  STA ram_copy_unit_hp_arms,X
C - - - - - 0x014CA7 05:8C97: AD A3 06  LDA ram_unit_hp_legs
C - - - - - 0x014CAA 05:8C9A: 9D C6 06  STA ram_copy_unit_hp_legs,X
C - - - - - 0x014CAD 05:8C9D: AD A4 06  LDA ram_repair_item
C - - - - - 0x014CB0 05:8CA0: 9D C8 06  STA ram_copy_repair_item,X
C - - - - - 0x014CB3 05:8CA3: EE B5 03  INC ram_03A9_obj + $0C
C - - - - - 0x014CB6 05:8CA6: 4C 12 8C  JMP loc_8C12
bra_8CA9:
C - - - - - 0x014CB9 05:8CA9: AD B0 03  LDA ram_menu_buttons
C - - - - - 0x014CBC 05:8CAC: 29 02     AND #con_btn2_B
C - - - - - 0x014CBE 05:8CAE: D0 03     BNE bra_8CB3
C - - - - - 0x014CC0 05:8CB0: 4C 12 8C  JMP loc_8C12
bra_8CB3:
C - - - - - 0x014CC3 05:8CB3: AD DA 03  LDA ram_03DA
C - - - - - 0x014CC6 05:8CB6: 8D A0 06  STA ram_unit_hp_head
C - - - - - 0x014CC9 05:8CB9: AD DC 03  LDA ram_03DC
C - - - - - 0x014CCC 05:8CBC: 8D A1 06  STA ram_unit_hp_body
C - - - - - 0x014CCF 05:8CBF: AD DB 03  LDA ram_03DB
C - - - - - 0x014CD2 05:8CC2: 8D A2 06  STA ram_unit_hp_arms
C - - - - - 0x014CD5 05:8CC5: AD DD 03  LDA ram_03DD
C - - - - - 0x014CD8 05:8CC8: 8D A3 06  STA ram_unit_hp_legs
C - - - - - 0x014CDB 05:8CCB: AD DE 03  LDA ram_03DE
C - - - - - 0x014CDE 05:8CCE: 8D A4 06  STA ram_repair_item
C - - - - - 0x014CE1 05:8CD1: 4C FE 81  JMP loc_81FE



loc_8CD4:
C D 0 - - - 0x014CE4 05:8CD4: A9 00     LDA #$00
C - - - - - 0x014CE6 05:8CD6: 8D 01 20  STA $2001
C - - - - - 0x014CE9 05:8CD9: 8D 03 20  STA $2003
C - - - - - 0x014CEC 05:8CDC: 2C 02 20  BIT $2002
C - - - - - 0x014CEF 05:8CDF: 8D 05 20  STA $2005
C - - - - - 0x014CF2 05:8CE2: 8D 05 20  STA $2005
C - - - - - 0x014CF5 05:8CE5: A9 02     LDA #$02
C - - - - - 0x014CF7 05:8CE7: 8D 14 40  STA $4014
C - - - - - 0x014CFA 05:8CEA: 20 1A 94  JSR sub_941A_write_palette
C - - - - - 0x014CFD 05:8CED: AD A8 03  LDA ram_039C_obj + $0C
C - - - - - 0x014D00 05:8CF0: 8D FF BF  STA $BFFF
C - - - - - 0x014D03 05:8CF3: 4A        LSR
C - - - - - 0x014D04 05:8CF4: 8D FF BF  STA $BFFF
C - - - - - 0x014D07 05:8CF7: 4A        LSR
C - - - - - 0x014D08 05:8CF8: 8D FF BF  STA $BFFF
C - - - - - 0x014D0B 05:8CFB: 4A        LSR
C - - - - - 0x014D0C 05:8CFC: 8D FF BF  STA $BFFF
C - - - - - 0x014D0F 05:8CFF: 4A        LSR
C - - - - - 0x014D10 05:8D00: 8D FF BF  STA $BFFF
C - - - - - 0x014D13 05:8D03: AD A9 03  LDA ram_03A9_obj
C - - - - - 0x014D16 05:8D06: 8D FF DF  STA $DFFF
C - - - - - 0x014D19 05:8D09: 4A        LSR
C - - - - - 0x014D1A 05:8D0A: 8D FF DF  STA $DFFF
C - - - - - 0x014D1D 05:8D0D: 4A        LSR
C - - - - - 0x014D1E 05:8D0E: 8D FF DF  STA $DFFF
C - - - - - 0x014D21 05:8D11: 4A        LSR
C - - - - - 0x014D22 05:8D12: 8D FF DF  STA $DFFF
C - - - - - 0x014D25 05:8D15: 4A        LSR
C - - - - - 0x014D26 05:8D16: 8D FF DF  STA $DFFF
C - - - - - 0x014D29 05:8D19: AD B3 03  LDA ram_03A9_obj + $0A
C - - - - - 0x014D2C 05:8D1C: C9 03     CMP #$03
C - - - - - 0x014D2E 05:8D1E: F0 07     BEQ bra_8D27
C - - - - - 0x014D30 05:8D20: C9 07     CMP #$07
C - - - - - 0x014D32 05:8D22: F0 03     BEQ bra_8D27
C - - - - - 0x014D34 05:8D24: 4C 45 8F  JMP loc_8F45
bra_8D27:
C - - - - - 0x014D37 05:8D27: 2C 02 20  BIT $2002
C - - - - - 0x014D3A 05:8D2A: A9 22     LDA #> $2243
C - - - - - 0x014D3C 05:8D2C: 8D 06 20  STA $2006
C - - - - - 0x014D3F 05:8D2F: A9 43     LDA #< $2243
C - - - - - 0x014D41 05:8D31: 8D 06 20  STA $2006
C - - - - - 0x014D44 05:8D34: AD 00 07  LDA ram_0700_buffer + $00
C - - - - - 0x014D47 05:8D37: 8D 07 20  STA $2007
C - - - - - 0x014D4A 05:8D3A: AD 01 07  LDA ram_0700_buffer + $01
C - - - - - 0x014D4D 05:8D3D: 8D 07 20  STA $2007
C - - - - - 0x014D50 05:8D40: AD 02 07  LDA ram_0700_buffer + $02
C - - - - - 0x014D53 05:8D43: 8D 07 20  STA $2007
C - - - - - 0x014D56 05:8D46: AD 03 07  LDA ram_0700_buffer + $03
C - - - - - 0x014D59 05:8D49: 8D 07 20  STA $2007
C - - - - - 0x014D5C 05:8D4C: AD 04 07  LDA ram_0700_buffer + $04
C - - - - - 0x014D5F 05:8D4F: 8D 07 20  STA $2007
C - - - - - 0x014D62 05:8D52: AD 05 07  LDA ram_0700_buffer + $05
C - - - - - 0x014D65 05:8D55: 8D 07 20  STA $2007
C - - - - - 0x014D68 05:8D58: AD 06 07  LDA ram_0700_buffer + $06
C - - - - - 0x014D6B 05:8D5B: 8D 07 20  STA $2007
C - - - - - 0x014D6E 05:8D5E: AD 07 07  LDA ram_0700_buffer + $07
C - - - - - 0x014D71 05:8D61: 8D 07 20  STA $2007
C - - - - - 0x014D74 05:8D64: AD 08 07  LDA ram_0700_buffer + $08
C - - - - - 0x014D77 05:8D67: 8D 07 20  STA $2007
C - - - - - 0x014D7A 05:8D6A: AD 09 07  LDA ram_0700_buffer + $09
C - - - - - 0x014D7D 05:8D6D: 8D 07 20  STA $2007
C - - - - - 0x014D80 05:8D70: AD 0A 07  LDA ram_0700_buffer + $0A
C - - - - - 0x014D83 05:8D73: 8D 07 20  STA $2007
C - - - - - 0x014D86 05:8D76: AD 0B 07  LDA ram_0700_buffer + $0B
C - - - - - 0x014D89 05:8D79: 8D 07 20  STA $2007
C - - - - - 0x014D8C 05:8D7C: AD 0C 07  LDA ram_0700_buffer + $0C
C - - - - - 0x014D8F 05:8D7F: 8D 07 20  STA $2007
C - - - - - 0x014D92 05:8D82: AD 0D 07  LDA ram_0700_buffer + $0D
C - - - - - 0x014D95 05:8D85: 8D 07 20  STA $2007
C - - - - - 0x014D98 05:8D88: AD 0E 07  LDA ram_0700_buffer + $0E
C - - - - - 0x014D9B 05:8D8B: 8D 07 20  STA $2007
C - - - - - 0x014D9E 05:8D8E: AD 0F 07  LDA ram_0700_buffer + $0F
C - - - - - 0x014DA1 05:8D91: 8D 07 20  STA $2007
C - - - - - 0x014DA4 05:8D94: AD 10 07  LDA ram_0700_buffer + $10
C - - - - - 0x014DA7 05:8D97: 8D 07 20  STA $2007
C - - - - - 0x014DAA 05:8D9A: AD 11 07  LDA ram_0700_buffer + $11
C - - - - - 0x014DAD 05:8D9D: 8D 07 20  STA $2007
C - - - - - 0x014DB0 05:8DA0: AD 12 07  LDA ram_0700_buffer + $12
C - - - - - 0x014DB3 05:8DA3: 8D 07 20  STA $2007
C - - - - - 0x014DB6 05:8DA6: AD 13 07  LDA ram_0700_buffer + $13
C - - - - - 0x014DB9 05:8DA9: 8D 07 20  STA $2007
C - - - - - 0x014DBC 05:8DAC: AD 14 07  LDA ram_0700_buffer + $14
C - - - - - 0x014DBF 05:8DAF: 8D 07 20  STA $2007
C - - - - - 0x014DC2 05:8DB2: AD 15 07  LDA ram_0700_buffer + $15
C - - - - - 0x014DC5 05:8DB5: 8D 07 20  STA $2007
C - - - - - 0x014DC8 05:8DB8: AD 16 07  LDA ram_0700_buffer + $16
C - - - - - 0x014DCB 05:8DBB: 8D 07 20  STA $2007
C - - - - - 0x014DCE 05:8DBE: AD 17 07  LDA ram_0700_buffer + $17
C - - - - - 0x014DD1 05:8DC1: 8D 07 20  STA $2007
C - - - - - 0x014DD4 05:8DC4: AD 18 07  LDA ram_0700_buffer + $18
C - - - - - 0x014DD7 05:8DC7: 8D 07 20  STA $2007
C - - - - - 0x014DDA 05:8DCA: AD 19 07  LDA ram_0700_buffer + $19
C - - - - - 0x014DDD 05:8DCD: 8D 07 20  STA $2007
C - - - - - 0x014DE0 05:8DD0: AD 1A 07  LDA ram_0700_buffer + $1A
C - - - - - 0x014DE3 05:8DD3: 8D 07 20  STA $2007
C - - - - - 0x014DE6 05:8DD6: A9 22     LDA #> $2263
C - - - - - 0x014DE8 05:8DD8: 8D 06 20  STA $2006
C - - - - - 0x014DEB 05:8DDB: A9 63     LDA #< $2263
C - - - - - 0x014DED 05:8DDD: 8D 06 20  STA $2006
C - - - - - 0x014DF0 05:8DE0: AD 1C 07  LDA ram_0700_buffer + $1C
C - - - - - 0x014DF3 05:8DE3: 8D 07 20  STA $2007
C - - - - - 0x014DF6 05:8DE6: AD 1D 07  LDA ram_0700_buffer + $1D
C - - - - - 0x014DF9 05:8DE9: 8D 07 20  STA $2007
C - - - - - 0x014DFC 05:8DEC: AD 1E 07  LDA ram_0700_buffer + $1E
C - - - - - 0x014DFF 05:8DEF: 8D 07 20  STA $2007
C - - - - - 0x014E02 05:8DF2: AD 1F 07  LDA ram_0700_buffer + $1F
C - - - - - 0x014E05 05:8DF5: 8D 07 20  STA $2007
C - - - - - 0x014E08 05:8DF8: AD 20 07  LDA ram_0700_buffer + $20
C - - - - - 0x014E0B 05:8DFB: 8D 07 20  STA $2007
C - - - - - 0x014E0E 05:8DFE: AD 21 07  LDA ram_0700_buffer + $21
C - - - - - 0x014E11 05:8E01: 8D 07 20  STA $2007
C - - - - - 0x014E14 05:8E04: AD 22 07  LDA ram_0700_buffer + $22
C - - - - - 0x014E17 05:8E07: 8D 07 20  STA $2007
C - - - - - 0x014E1A 05:8E0A: AD 23 07  LDA ram_0700_buffer + $23
C - - - - - 0x014E1D 05:8E0D: 8D 07 20  STA $2007
C - - - - - 0x014E20 05:8E10: AD 24 07  LDA ram_0700_buffer + $24
C - - - - - 0x014E23 05:8E13: 8D 07 20  STA $2007
C - - - - - 0x014E26 05:8E16: AD 25 07  LDA ram_0700_buffer + $25
C - - - - - 0x014E29 05:8E19: 8D 07 20  STA $2007
C - - - - - 0x014E2C 05:8E1C: AD 26 07  LDA ram_0700_buffer + $26
C - - - - - 0x014E2F 05:8E1F: 8D 07 20  STA $2007
C - - - - - 0x014E32 05:8E22: AD 27 07  LDA ram_0700_buffer + $27
C - - - - - 0x014E35 05:8E25: 8D 07 20  STA $2007
C - - - - - 0x014E38 05:8E28: AD 28 07  LDA ram_0700_buffer + $28
C - - - - - 0x014E3B 05:8E2B: 8D 07 20  STA $2007
C - - - - - 0x014E3E 05:8E2E: AD 29 07  LDA ram_0700_buffer + $29
C - - - - - 0x014E41 05:8E31: 8D 07 20  STA $2007
C - - - - - 0x014E44 05:8E34: AD 2A 07  LDA ram_0700_buffer + $2A
C - - - - - 0x014E47 05:8E37: 8D 07 20  STA $2007
C - - - - - 0x014E4A 05:8E3A: AD 2B 07  LDA ram_0700_buffer + $2B
C - - - - - 0x014E4D 05:8E3D: 8D 07 20  STA $2007
C - - - - - 0x014E50 05:8E40: AD 2C 07  LDA ram_0700_buffer + $2C
C - - - - - 0x014E53 05:8E43: 8D 07 20  STA $2007
C - - - - - 0x014E56 05:8E46: AD 2D 07  LDA ram_0700_buffer + $2D
C - - - - - 0x014E59 05:8E49: 8D 07 20  STA $2007
C - - - - - 0x014E5C 05:8E4C: AD 2E 07  LDA ram_0700_buffer + $2E
C - - - - - 0x014E5F 05:8E4F: 8D 07 20  STA $2007
C - - - - - 0x014E62 05:8E52: AD 2F 07  LDA ram_0700_buffer + $2F
C - - - - - 0x014E65 05:8E55: 8D 07 20  STA $2007
C - - - - - 0x014E68 05:8E58: AD 30 07  LDA ram_0700_buffer + $30
C - - - - - 0x014E6B 05:8E5B: 8D 07 20  STA $2007
C - - - - - 0x014E6E 05:8E5E: AD 31 07  LDA ram_0700_buffer + $31
C - - - - - 0x014E71 05:8E61: 8D 07 20  STA $2007
C - - - - - 0x014E74 05:8E64: AD 32 07  LDA ram_0700_buffer + $32
C - - - - - 0x014E77 05:8E67: 8D 07 20  STA $2007
C - - - - - 0x014E7A 05:8E6A: AD 33 07  LDA ram_0700_buffer + $33
C - - - - - 0x014E7D 05:8E6D: 8D 07 20  STA $2007
C - - - - - 0x014E80 05:8E70: AD 34 07  LDA ram_0700_buffer + $34
C - - - - - 0x014E83 05:8E73: 8D 07 20  STA $2007
C - - - - - 0x014E86 05:8E76: AD 35 07  LDA ram_0700_buffer + $35
C - - - - - 0x014E89 05:8E79: 8D 07 20  STA $2007
C - - - - - 0x014E8C 05:8E7C: AD 36 07  LDA ram_0700_buffer + $36
C - - - - - 0x014E8F 05:8E7F: 8D 07 20  STA $2007
C - - - - - 0x014E92 05:8E82: A9 22     LDA #> $2283
C - - - - - 0x014E94 05:8E84: 8D 06 20  STA $2006
C - - - - - 0x014E97 05:8E87: A9 83     LDA #< $2283
C - - - - - 0x014E99 05:8E89: 8D 06 20  STA $2006
C - - - - - 0x014E9C 05:8E8C: AD 38 07  LDA ram_0700_buffer + $38
C - - - - - 0x014E9F 05:8E8F: 8D 07 20  STA $2007
C - - - - - 0x014EA2 05:8E92: AD 39 07  LDA ram_0700_buffer + $39
C - - - - - 0x014EA5 05:8E95: 8D 07 20  STA $2007
C - - - - - 0x014EA8 05:8E98: AD 3A 07  LDA ram_0700_buffer + $3A
C - - - - - 0x014EAB 05:8E9B: 8D 07 20  STA $2007
C - - - - - 0x014EAE 05:8E9E: AD 3B 07  LDA ram_0700_buffer + $3B
C - - - - - 0x014EB1 05:8EA1: 8D 07 20  STA $2007
C - - - - - 0x014EB4 05:8EA4: AD 3C 07  LDA ram_0700_buffer + $3C
C - - - - - 0x014EB7 05:8EA7: 8D 07 20  STA $2007
C - - - - - 0x014EBA 05:8EAA: AD 3D 07  LDA ram_0700_buffer + $3D
C - - - - - 0x014EBD 05:8EAD: 8D 07 20  STA $2007
C - - - - - 0x014EC0 05:8EB0: AD 3E 07  LDA ram_0700_buffer + $3E
C - - - - - 0x014EC3 05:8EB3: 8D 07 20  STA $2007
C - - - - - 0x014EC6 05:8EB6: AD 3F 07  LDA ram_0700_buffer + $3F
C - - - - - 0x014EC9 05:8EB9: 8D 07 20  STA $2007
C - - - - - 0x014ECC 05:8EBC: AD 40 07  LDA ram_0700_buffer + $40
C - - - - - 0x014ECF 05:8EBF: 8D 07 20  STA $2007
C - - - - - 0x014ED2 05:8EC2: AD 41 07  LDA ram_0700_buffer + $41
C - - - - - 0x014ED5 05:8EC5: 8D 07 20  STA $2007
C - - - - - 0x014ED8 05:8EC8: AD 42 07  LDA ram_0700_buffer + $42
C - - - - - 0x014EDB 05:8ECB: 8D 07 20  STA $2007
C - - - - - 0x014EDE 05:8ECE: AD 43 07  LDA ram_0700_buffer + $43
C - - - - - 0x014EE1 05:8ED1: 8D 07 20  STA $2007
C - - - - - 0x014EE4 05:8ED4: AD 44 07  LDA ram_0700_buffer + $44
C - - - - - 0x014EE7 05:8ED7: 8D 07 20  STA $2007
C - - - - - 0x014EEA 05:8EDA: AD 45 07  LDA ram_0700_buffer + $45
C - - - - - 0x014EED 05:8EDD: 8D 07 20  STA $2007
C - - - - - 0x014EF0 05:8EE0: AD 46 07  LDA ram_0700_buffer + $46
C - - - - - 0x014EF3 05:8EE3: 8D 07 20  STA $2007
C - - - - - 0x014EF6 05:8EE6: AD 47 07  LDA ram_0700_buffer + $47
C - - - - - 0x014EF9 05:8EE9: 8D 07 20  STA $2007
C - - - - - 0x014EFC 05:8EEC: AD 48 07  LDA ram_0700_buffer + $48
C - - - - - 0x014EFF 05:8EEF: 8D 07 20  STA $2007
C - - - - - 0x014F02 05:8EF2: AD 49 07  LDA ram_0700_buffer + $49
C - - - - - 0x014F05 05:8EF5: 8D 07 20  STA $2007
C - - - - - 0x014F08 05:8EF8: AD 4A 07  LDA ram_0700_buffer + $4A
C - - - - - 0x014F0B 05:8EFB: 8D 07 20  STA $2007
C - - - - - 0x014F0E 05:8EFE: AD 4B 07  LDA ram_0700_buffer + $4B
C - - - - - 0x014F11 05:8F01: 8D 07 20  STA $2007
C - - - - - 0x014F14 05:8F04: AD 4C 07  LDA ram_0700_buffer + $4C
C - - - - - 0x014F17 05:8F07: 8D 07 20  STA $2007
C - - - - - 0x014F1A 05:8F0A: AD 4D 07  LDA ram_0700_buffer + $4D
C - - - - - 0x014F1D 05:8F0D: 8D 07 20  STA $2007
C - - - - - 0x014F20 05:8F10: AD 4E 07  LDA ram_0700_buffer + $4E
C - - - - - 0x014F23 05:8F13: 8D 07 20  STA $2007
C - - - - - 0x014F26 05:8F16: AD 4F 07  LDA ram_0700_buffer + $4F
C - - - - - 0x014F29 05:8F19: 8D 07 20  STA $2007
C - - - - - 0x014F2C 05:8F1C: AD 50 07  LDA ram_0700_buffer + $50
C - - - - - 0x014F2F 05:8F1F: 8D 07 20  STA $2007
C - - - - - 0x014F32 05:8F22: AD 51 07  LDA ram_0700_buffer + $51
C - - - - - 0x014F35 05:8F25: 8D 07 20  STA $2007
C - - - - - 0x014F38 05:8F28: AD 52 07  LDA ram_0700_buffer + $52
C - - - - - 0x014F3B 05:8F2B: 8D 07 20  STA $2007
C - - - - - 0x014F3E 05:8F2E: A9 22     LDA #> $22A3
C - - - - - 0x014F40 05:8F30: 8D 06 20  STA $2006
C - - - - - 0x014F43 05:8F33: A9 A3     LDA #< $22A3
C - - - - - 0x014F45 05:8F35: 8D 06 20  STA $2006
C - - - - - 0x014F48 05:8F38: A2 00     LDX #$00
bra_8F3A_loop:
C - - - - - 0x014F4A 05:8F3A: BD 54 07  LDA ram_0700_buffer + $54,X
C - - - - - 0x014F4D 05:8F3D: 8D 07 20  STA $2007
C - - - - - 0x014F50 05:8F40: E8        INX
C - - - - - 0x014F51 05:8F41: E0 1B     CPX #$1B
C - - - - - 0x014F53 05:8F43: 90 F5     BCC bra_8F3A_loop
loc_8F45:
C D 0 - - - 0x014F55 05:8F45: AD B3 03  LDA ram_03A9_obj + $0A
C - - - - - 0x014F58 05:8F48: C9 05     CMP #$05
C - - - - - 0x014F5A 05:8F4A: F0 03     BEQ bra_8F4F
C - - - - - 0x014F5C 05:8F4C: 4C 35 93  JMP loc_9335
bra_8F4F:
C - - - - - 0x014F5F 05:8F4F: 2C 02 20  BIT $2002
C - - - - - 0x014F62 05:8F52: A9 22     LDA #> $2205
C - - - - - 0x014F64 05:8F54: 8D 06 20  STA $2006
C - - - - - 0x014F67 05:8F57: A9 05     LDA #< $2205
C - - - - - 0x014F69 05:8F59: 8D 06 20  STA $2006
C - - - - - 0x014F6C 05:8F5C: AD BD 03  LDA ram_03BD
C - - - - - 0x014F6F 05:8F5F: 0A        ASL
C - - - - - 0x014F70 05:8F60: AA        TAX
C - - - - - 0x014F71 05:8F61: BD 04 94  LDA tbl_9404,X
C - - - - - 0x014F74 05:8F64: 85 50     STA ram_0050_data
C - - - - - 0x014F76 05:8F66: E8        INX
C - - - - - 0x014F77 05:8F67: BD 04 94  LDA tbl_9404,X
C - - - - - 0x014F7A 05:8F6A: 85 51     STA ram_0050_data + $01
C - - - - - 0x014F7C 05:8F6C: A0 00     LDY #$00
bra_8F6E_loop:
C - - - - - 0x014F7E 05:8F6E: B1 50     LDA (ram_0050_data),Y
C - - - - - 0x014F80 05:8F70: 8D 07 20  STA $2007
C - - - - - 0x014F83 05:8F73: C8        INY
C - - - - - 0x014F84 05:8F74: C0 04     CPY #$04
C - - - - - 0x014F86 05:8F76: 90 F6     BCC bra_8F6E_loop
C - - - - - 0x014F88 05:8F78: A9 22     LDA #> $2225
C - - - - - 0x014F8A 05:8F7A: 8D 06 20  STA $2006
C - - - - - 0x014F8D 05:8F7D: A9 25     LDA #< $2225
C - - - - - 0x014F8F 05:8F7F: 8D 06 20  STA $2006
C - - - - - 0x014F92 05:8F82: AD CA 03  LDA ram_03C8 + $02
C - - - - - 0x014F95 05:8F85: 8D 07 20  STA $2007
C - - - - - 0x014F98 05:8F88: AD CB 03  LDA ram_03C8 + $03
C - - - - - 0x014F9B 05:8F8B: 8D 07 20  STA $2007
C - - - - - 0x014F9E 05:8F8E: AD CC 03  LDA ram_03C8 + $04
C - - - - - 0x014FA1 05:8F91: 8D 07 20  STA $2007
C - - - - - 0x014FA4 05:8F94: A9 F0     LDA #$F0
C - - - - - 0x014FA6 05:8F96: 8D 07 20  STA $2007
C - - - - - 0x014FA9 05:8F99: A9 22     LDA #> $2224
C - - - - - 0x014FAB 05:8F9B: 8D 06 20  STA $2006
C - - - - - 0x014FAE 05:8F9E: A9 24     LDA #< $2224
C - - - - - 0x014FB0 05:8FA0: 8D 06 20  STA $2006
C - - - - - 0x014FB3 05:8FA3: AD 07 20  LDA $2007
C - - - - - 0x014FB6 05:8FA6: AD 07 20  LDA $2007
C - - - - - 0x014FB9 05:8FA9: A2 22     LDX #> $2244
C - - - - - 0x014FBB 05:8FAB: 8E 06 20  STX $2006
C - - - - - 0x014FBE 05:8FAE: A2 44     LDX #< $2244
C - - - - - 0x014FC0 05:8FB0: 8E 06 20  STX $2006
C - - - - - 0x014FC3 05:8FB3: 8D 07 20  STA $2007
C - - - - - 0x014FC6 05:8FB6: AD CE 03  LDA ram_03CE
C - - - - - 0x014FC9 05:8FB9: 8D 07 20  STA $2007
C - - - - - 0x014FCC 05:8FBC: AD AF 03  LDA ram_03A9_obj + $06
C - - - - - 0x014FCF 05:8FBF: 29 01     AND #$01
C - - - - - 0x014FD1 05:8FC1: D0 03     BNE bra_8FC6
C - - - - - 0x014FD3 05:8FC3: 4C 5F 90  JMP loc_905F
bra_8FC6:
C - - - - - 0x014FD6 05:8FC6: AE BD 03  LDX ram_03BD
C - - - - - 0x014FD9 05:8FC9: BC DC B6  LDY tbl_B6DC_index,X
C - - - - - 0x014FDC 05:8FCC: 2C 02 20  BIT $2002
C - - - - - 0x014FDF 05:8FCF: A9 22     LDA #> $2280
C - - - - - 0x014FE1 05:8FD1: 8D 06 20  STA $2006
C - - - - - 0x014FE4 05:8FD4: A9 80     LDA #< $2280
C - - - - - 0x014FE6 05:8FD6: 8D 06 20  STA $2006
C - - - - - 0x014FE9 05:8FD9: A2 00     LDX #$00
bra_8FDB_loop:
C - - - - - 0x014FEB 05:8FDB: B9 E1 B6  LDA tbl_B6E1,Y
C - - - - - 0x014FEE 05:8FDE: 8D 07 20  STA $2007
C - - - - - 0x014FF1 05:8FE1: C8        INY
C - - - - - 0x014FF2 05:8FE2: E8        INX
C - - - - - 0x014FF3 05:8FE3: E0 08     CPX #$08
C - - - - - 0x014FF5 05:8FE5: 90 F4     BCC bra_8FDB_loop
C - - - - - 0x014FF7 05:8FE7: A9 22     LDA #> $22A0
C - - - - - 0x014FF9 05:8FE9: 8D 06 20  STA $2006
C - - - - - 0x014FFC 05:8FEC: A9 A0     LDA #< $22A0
C - - - - - 0x014FFE 05:8FEE: 8D 06 20  STA $2006
C - - - - - 0x015001 05:8FF1: A2 00     LDX #$00
bra_8FF3_loop:
C - - - - - 0x015003 05:8FF3: B9 E1 B6  LDA tbl_B6E1,Y
C - - - - - 0x015006 05:8FF6: 8D 07 20  STA $2007
C - - - - - 0x015009 05:8FF9: C8        INY
C - - - - - 0x01500A 05:8FFA: E8        INX
C - - - - - 0x01500B 05:8FFB: E0 08     CPX #$08
C - - - - - 0x01500D 05:8FFD: 90 F4     BCC bra_8FF3_loop
C - - - - - 0x01500F 05:8FFF: A9 22     LDA #> $22C0
C - - - - - 0x015011 05:9001: 8D 06 20  STA $2006
C - - - - - 0x015014 05:9004: A9 C0     LDA #< $22C0
C - - - - - 0x015016 05:9006: 8D 06 20  STA $2006
C - - - - - 0x015019 05:9009: A2 00     LDX #$00
bra_900B_loop:
C - - - - - 0x01501B 05:900B: B9 E1 B6  LDA tbl_B6E1,Y
C - - - - - 0x01501E 05:900E: 8D 07 20  STA $2007
C - - - - - 0x015021 05:9011: C8        INY
C - - - - - 0x015022 05:9012: E8        INX
C - - - - - 0x015023 05:9013: E0 08     CPX #$08
C - - - - - 0x015025 05:9015: 90 F4     BCC bra_900B_loop
C - - - - - 0x015027 05:9017: A9 22     LDA #> $22E0
C - - - - - 0x015029 05:9019: 8D 06 20  STA $2006
C - - - - - 0x01502C 05:901C: A9 E0     LDA #< $22E0
C - - - - - 0x01502E 05:901E: 8D 06 20  STA $2006
C - - - - - 0x015031 05:9021: A2 00     LDX #$00
bra_9023_loop:
C - - - - - 0x015033 05:9023: B9 E1 B6  LDA tbl_B6E1,Y
C - - - - - 0x015036 05:9026: 8D 07 20  STA $2007
C - - - - - 0x015039 05:9029: C8        INY
C - - - - - 0x01503A 05:902A: E8        INX
C - - - - - 0x01503B 05:902B: E0 08     CPX #$08
C - - - - - 0x01503D 05:902D: 90 F4     BCC bra_9023_loop
C - - - - - 0x01503F 05:902F: A9 23     LDA #> $2300
C - - - - - 0x015041 05:9031: 8D 06 20  STA $2006
C - - - - - 0x015044 05:9034: A9 00     LDA #< $2300
C - - - - - 0x015046 05:9036: 8D 06 20  STA $2006
C - - - - - 0x015049 05:9039: A2 00     LDX #$00
bra_903B_loop:
C - - - - - 0x01504B 05:903B: B9 E1 B6  LDA tbl_B6E1,Y
C - - - - - 0x01504E 05:903E: 8D 07 20  STA $2007
C - - - - - 0x015051 05:9041: C8        INY
C - - - - - 0x015052 05:9042: E8        INX
C - - - - - 0x015053 05:9043: E0 08     CPX #$08
C - - - - - 0x015055 05:9045: 90 F4     BCC bra_903B_loop
C - - - - - 0x015057 05:9047: A9 23     LDA #> $2320
C - - - - - 0x015059 05:9049: 8D 06 20  STA $2006
C - - - - - 0x01505C 05:904C: A9 20     LDA #< $2320
C - - - - - 0x01505E 05:904E: 8D 06 20  STA $2006
C - - - - - 0x015061 05:9051: A2 00     LDX #$00
bra_9053_loop:
C - - - - - 0x015063 05:9053: B9 E1 B6  LDA tbl_B6E1,Y
C - - - - - 0x015066 05:9056: 8D 07 20  STA $2007
C - - - - - 0x015069 05:9059: C8        INY
C - - - - - 0x01506A 05:905A: E8        INX
C - - - - - 0x01506B 05:905B: E0 08     CPX #$08
C - - - - - 0x01506D 05:905D: 90 F4     BCC bra_9053_loop
loc_905F:
C D 0 - - - 0x01506F 05:905F: AD AF 03  LDA ram_03A9_obj + $06
C - - - - - 0x015072 05:9062: 29 01     AND #$01
C - - - - - 0x015074 05:9064: F0 03     BEQ bra_9069
C - - - - - 0x015076 05:9066: 4C 35 93  JMP loc_9335
bra_9069:
C - - - - - 0x015079 05:9069: AE BD 03  LDX ram_03BD
C - - - - - 0x01507C 05:906C: BD C6 9D  LDA tbl_9DC6_unit_index,X
C - - - - - 0x01507F 05:906F: C9 00     CMP #$00
C - - - - - 0x015081 05:9071: F0 0E     BEQ bra_9081_00_head
C - - - - - 0x015083 05:9073: C9 01     CMP #$01
C - - - - - 0x015085 05:9075: F0 10     BEQ bra_9087_01_body
C - - - - - 0x015087 05:9077: C9 02     CMP #$02
C - - - - - 0x015089 05:9079: F0 12     BEQ bra_908D_02_arms
; 03 legs
C - - - - - 0x01508B 05:907B: 20 98 92  JSR sub_9298_unit_legs
C - - - - - 0x01508E 05:907E: 4C 35 93  JMP loc_9335
bra_9081_00_head:
C - - - - - 0x015091 05:9081: 20 93 90  JSR sub_9093_unit_head
C - - - - - 0x015094 05:9084: 4C 35 93  JMP loc_9335
bra_9087_01_body:
C - - - - - 0x015097 05:9087: 20 1E 92  JSR sub_921E_unit_body
C - - - - - 0x01509A 05:908A: 4C 35 93  JMP loc_9335
bra_908D_02_arms:
C - - - - - 0x01509D 05:908D: 20 07 91  JSR sub_9107_unit_arms
C - - - - - 0x0150A0 05:9090: 4C 35 93  JMP loc_9335



sub_9093_unit_head:
C - - - - - 0x0150A3 05:9093: AD A0 06  LDA ram_unit_hp_head
C - - - - - 0x0150A6 05:9096: C9 0B     CMP #$0B
C - - - - - 0x0150A8 05:9098: 90 08     BCC bra_90A2
C - - - - - 0x0150AA 05:909A: C9 15     CMP #$15
C - - - - - 0x0150AC 05:909C: 90 08     BCC bra_90A6
C - - - - - 0x0150AE 05:909E: A0 00     LDY #$00
C - - - - - 0x0150B0 05:90A0: F0 06     BEQ bra_90A8    ; jmp
bra_90A2:
C - - - - - 0x0150B2 05:90A2: A0 20     LDY #$20
C - - - - - 0x0150B4 05:90A4: D0 02     BNE bra_90A8    ; jmp
bra_90A6:
- - - - - - 0x0150B6 05:90A6: A0 10     LDY #$10
bra_90A8:
C - - - - - 0x0150B8 05:90A8: 2C 02 20  BIT $2002
C - - - - - 0x0150BB 05:90AB: A9 20     LDA #> $2012
C - - - - - 0x0150BD 05:90AD: 8D 06 20  STA $2006
C - - - - - 0x0150C0 05:90B0: A9 12     LDA #< $2012
C - - - - - 0x0150C2 05:90B2: 8D 06 20  STA $2006
C - - - - - 0x0150C5 05:90B5: A2 04     LDX #$04
bra_90B7_loop:
C - - - - - 0x0150C7 05:90B7: B9 74 B5  LDA tbl_B574_unit_head,Y
C - - - - - 0x0150CA 05:90BA: 8D 07 20  STA $2007
C - - - - - 0x0150CD 05:90BD: C8        INY
C - - - - - 0x0150CE 05:90BE: CA        DEX
C - - - - - 0x0150CF 05:90BF: D0 F6     BNE bra_90B7_loop
C - - - - - 0x0150D1 05:90C1: 2C 02 20  BIT $2002
C - - - - - 0x0150D4 05:90C4: A9 20     LDA #> $2032
C - - - - - 0x0150D6 05:90C6: 8D 06 20  STA $2006
C - - - - - 0x0150D9 05:90C9: A9 32     LDA #< $2032
C - - - - - 0x0150DB 05:90CB: 8D 06 20  STA $2006
C - - - - - 0x0150DE 05:90CE: A2 04     LDX #$04
bra_90D0_loop:
C - - - - - 0x0150E0 05:90D0: B9 74 B5  LDA tbl_B574_unit_head,Y
C - - - - - 0x0150E3 05:90D3: 8D 07 20  STA $2007
C - - - - - 0x0150E6 05:90D6: C8        INY
C - - - - - 0x0150E7 05:90D7: CA        DEX
C - - - - - 0x0150E8 05:90D8: D0 F6     BNE bra_90D0_loop
C - - - - - 0x0150EA 05:90DA: A9 20     LDA #> $2052
C - - - - - 0x0150EC 05:90DC: 8D 06 20  STA $2006
C - - - - - 0x0150EF 05:90DF: A9 52     LDA #< $2052
C - - - - - 0x0150F1 05:90E1: 8D 06 20  STA $2006
C - - - - - 0x0150F4 05:90E4: A2 04     LDX #$04
bra_90E6_loop:
C - - - - - 0x0150F6 05:90E6: B9 74 B5  LDA tbl_B574_unit_head,Y
C - - - - - 0x0150F9 05:90E9: 8D 07 20  STA $2007
C - - - - - 0x0150FC 05:90EC: C8        INY
C - - - - - 0x0150FD 05:90ED: CA        DEX
C - - - - - 0x0150FE 05:90EE: D0 F6     BNE bra_90E6_loop
C - - - - - 0x015100 05:90F0: A9 20     LDA #> $2072
C - - - - - 0x015102 05:90F2: 8D 06 20  STA $2006
C - - - - - 0x015105 05:90F5: A9 72     LDA #< $2072
C - - - - - 0x015107 05:90F7: 8D 06 20  STA $2006
C - - - - - 0x01510A 05:90FA: A2 04     LDX #$04
bra_90FC_loop:
C - - - - - 0x01510C 05:90FC: B9 74 B5  LDA tbl_B574_unit_head,Y
C - - - - - 0x01510F 05:90FF: 8D 07 20  STA $2007
C - - - - - 0x015112 05:9102: C8        INY
C - - - - - 0x015113 05:9103: CA        DEX
C - - - - - 0x015114 05:9104: D0 F6     BNE bra_90FC_loop
C - - - - - 0x015116 05:9106: 60        RTS



sub_9107_unit_arms:
C - - - - - 0x015117 05:9107: AD A2 06  LDA ram_unit_hp_arms
C - - - - - 0x01511A 05:910A: C9 0B     CMP #$0B
C - - - - - 0x01511C 05:910C: 90 08     BCC bra_9116
C - - - - - 0x01511E 05:910E: C9 15     CMP #$15
C - - - - - 0x015120 05:9110: 90 08     BCC bra_911A
C - - - - - 0x015122 05:9112: A0 00     LDY #$00
C - - - - - 0x015124 05:9114: F0 06     BEQ bra_911C    ; jmp
bra_9116:
C - - - - - 0x015126 05:9116: A0 24     LDY #$24
C - - - - - 0x015128 05:9118: D0 02     BNE bra_911C    ; jmp
bra_911A:
C - - - - - 0x01512A 05:911A: A0 12     LDY #$12
bra_911C:
C - - - - - 0x01512C 05:911C: 2C 02 20  BIT $2002
C - - - - - 0x01512F 05:911F: A9 20     LDA #> $20B0
C - - - - - 0x015131 05:9121: 8D 06 20  STA $2006
C - - - - - 0x015134 05:9124: A9 B0     LDA #< $20B0
C - - - - - 0x015136 05:9126: 8D 06 20  STA $2006
C - - - - - 0x015139 05:9129: A2 03     LDX #$03
bra_912B_loop:
C - - - - - 0x01513B 05:912B: B9 A4 B5  LDA tbl_B5A4_unit_arms,Y
C - - - - - 0x01513E 05:912E: 8D 07 20  STA $2007
C - - - - - 0x015141 05:9131: C8        INY
C - - - - - 0x015142 05:9132: CA        DEX
C - - - - - 0x015143 05:9133: D0 F6     BNE bra_912B_loop
C - - - - - 0x015145 05:9135: A9 20     LDA #> $20D0
C - - - - - 0x015147 05:9137: 8D 06 20  STA $2006
C - - - - - 0x01514A 05:913A: A9 D0     LDA #< $20D0
C - - - - - 0x01514C 05:913C: 8D 06 20  STA $2006
C - - - - - 0x01514F 05:913F: A2 03     LDX #$03
bra_9141_loop:
C - - - - - 0x015151 05:9141: B9 A4 B5  LDA tbl_B5A4_unit_arms,Y
C - - - - - 0x015154 05:9144: 8D 07 20  STA $2007
C - - - - - 0x015157 05:9147: C8        INY
C - - - - - 0x015158 05:9148: CA        DEX
C - - - - - 0x015159 05:9149: D0 F6     BNE bra_9141_loop
C - - - - - 0x01515B 05:914B: A9 20     LDA #> $20F0
C - - - - - 0x01515D 05:914D: 8D 06 20  STA $2006
C - - - - - 0x015160 05:9150: A9 F0     LDA #< $20F0
C - - - - - 0x015162 05:9152: 8D 06 20  STA $2006
C - - - - - 0x015165 05:9155: A2 03     LDX #$03
bra_9157_loop:
C - - - - - 0x015167 05:9157: B9 A4 B5  LDA tbl_B5A4_unit_arms,Y
C - - - - - 0x01516A 05:915A: 8D 07 20  STA $2007
C - - - - - 0x01516D 05:915D: C8        INY
C - - - - - 0x01516E 05:915E: CA        DEX
C - - - - - 0x01516F 05:915F: D0 F6     BNE bra_9157_loop
C - - - - - 0x015171 05:9161: A9 21     LDA #> $2110
C - - - - - 0x015173 05:9163: 8D 06 20  STA $2006
C - - - - - 0x015176 05:9166: A9 10     LDA #< $2110
C - - - - - 0x015178 05:9168: 8D 06 20  STA $2006
C - - - - - 0x01517B 05:916B: A2 03     LDX #$03
bra_916D_loop:
C - - - - - 0x01517D 05:916D: B9 A4 B5  LDA tbl_B5A4_unit_arms,Y
C - - - - - 0x015180 05:9170: 8D 07 20  STA $2007
C - - - - - 0x015183 05:9173: C8        INY
C - - - - - 0x015184 05:9174: CA        DEX
C - - - - - 0x015185 05:9175: D0 F6     BNE bra_916D_loop
C - - - - - 0x015187 05:9177: A9 21     LDA #> $2130
C - - - - - 0x015189 05:9179: 8D 06 20  STA $2006
C - - - - - 0x01518C 05:917C: A9 30     LDA #< $2130
C - - - - - 0x01518E 05:917E: 8D 06 20  STA $2006
C - - - - - 0x015191 05:9181: A2 03     LDX #$03
bra_9183_loop:
C - - - - - 0x015193 05:9183: B9 A4 B5  LDA tbl_B5A4_unit_arms,Y
C - - - - - 0x015196 05:9186: 8D 07 20  STA $2007
C - - - - - 0x015199 05:9189: C8        INY
C - - - - - 0x01519A 05:918A: CA        DEX
C - - - - - 0x01519B 05:918B: D0 F6     BNE bra_9183_loop
C - - - - - 0x01519D 05:918D: A9 21     LDA #> $2150
C - - - - - 0x01519F 05:918F: 8D 06 20  STA $2006
C - - - - - 0x0151A2 05:9192: A9 50     LDA #< $2150
C - - - - - 0x0151A4 05:9194: 8D 06 20  STA $2006
C - - - - - 0x0151A7 05:9197: A2 03     LDX #$03
bra_9199_loop:
C - - - - - 0x0151A9 05:9199: B9 A4 B5  LDA tbl_B5A4_unit_arms,Y
C - - - - - 0x0151AC 05:919C: 8D 07 20  STA $2007
C - - - - - 0x0151AF 05:919F: C8        INY
C - - - - - 0x0151B0 05:91A0: CA        DEX
C - - - - - 0x0151B1 05:91A1: D0 F6     BNE bra_9199_loop
C - - - - - 0x0151B3 05:91A3: AD A2 06  LDA ram_unit_hp_arms
C - - - - - 0x0151B6 05:91A6: C9 0B     CMP #$0B
C - - - - - 0x0151B8 05:91A8: 90 0C     BCC bra_91B6
C - - - - - 0x0151BA 05:91AA: C9 15     CMP #$15
C - - - - - 0x0151BC 05:91AC: 90 04     BCC bra_91B2
C - - - - - 0x0151BE 05:91AE: A0 00     LDY #$00
C - - - - - 0x0151C0 05:91B0: F0 06     BEQ bra_91B8    ; jmp
bra_91B2:
C - - - - - 0x0151C2 05:91B2: A0 06     LDY #$06
C - - - - - 0x0151C4 05:91B4: D0 02     BNE bra_91B8    ; jmp
bra_91B6:
C - - - - - 0x0151C6 05:91B6: A0 0C     LDY #$0C
bra_91B8:
C - - - - - 0x0151C8 05:91B8: A9 20     LDA #> $2077
C - - - - - 0x0151CA 05:91BA: 8D 06 20  STA $2006
C - - - - - 0x0151CD 05:91BD: A9 77     LDA #< $2077
C - - - - - 0x0151CF 05:91BF: 8D 06 20  STA $2006
C - - - - - 0x0151D2 05:91C2: B9 DA B5  LDA tbl_B5DA,Y
C - - - - - 0x0151D5 05:91C5: 8D 07 20  STA $2007
C - - - - - 0x0151D8 05:91C8: C8        INY
C - - - - - 0x0151D9 05:91C9: A9 20     LDA #> $2097
C - - - - - 0x0151DB 05:91CB: 8D 06 20  STA $2006
C - - - - - 0x0151DE 05:91CE: A9 97     LDA #< $2097
C - - - - - 0x0151E0 05:91D0: 8D 06 20  STA $2006
C - - - - - 0x0151E3 05:91D3: B9 DA B5  LDA tbl_B5DA,Y
C - - - - - 0x0151E6 05:91D6: 8D 07 20  STA $2007
C - - - - - 0x0151E9 05:91D9: C8        INY
C - - - - - 0x0151EA 05:91DA: A9 20     LDA #> $20B7
C - - - - - 0x0151EC 05:91DC: 8D 06 20  STA $2006
C - - - - - 0x0151EF 05:91DF: A9 B7     LDA #< $20B7
C - - - - - 0x0151F1 05:91E1: 8D 06 20  STA $2006
C - - - - - 0x0151F4 05:91E4: B9 DA B5  LDA tbl_B5DA,Y
C - - - - - 0x0151F7 05:91E7: 8D 07 20  STA $2007
C - - - - - 0x0151FA 05:91EA: C8        INY
C - - - - - 0x0151FB 05:91EB: A9 20     LDA #> $20D7
C - - - - - 0x0151FD 05:91ED: 8D 06 20  STA $2006
C - - - - - 0x015200 05:91F0: A9 D7     LDA #< $20D7
C - - - - - 0x015202 05:91F2: 8D 06 20  STA $2006
C - - - - - 0x015205 05:91F5: B9 DA B5  LDA tbl_B5DA,Y
C - - - - - 0x015208 05:91F8: 8D 07 20  STA $2007
C - - - - - 0x01520B 05:91FB: C8        INY
C - - - - - 0x01520C 05:91FC: A9 20     LDA #> $20F7
C - - - - - 0x01520E 05:91FE: 8D 06 20  STA $2006
C - - - - - 0x015211 05:9201: A9 F7     LDA #< $20F7
C - - - - - 0x015213 05:9203: 8D 06 20  STA $2006
C - - - - - 0x015216 05:9206: B9 DA B5  LDA tbl_B5DA,Y
C - - - - - 0x015219 05:9209: 8D 07 20  STA $2007
C - - - - - 0x01521C 05:920C: C8        INY
C - - - - - 0x01521D 05:920D: A9 21     LDA #> $2117
C - - - - - 0x01521F 05:920F: 8D 06 20  STA $2006
C - - - - - 0x015222 05:9212: A9 17     LDA #< $2117
C - - - - - 0x015224 05:9214: 8D 06 20  STA $2006
C - - - - - 0x015227 05:9217: B9 DA B5  LDA tbl_B5DA,Y
C - - - - - 0x01522A 05:921A: 8D 07 20  STA $2007
C - - - - - 0x01522D 05:921D: 60        RTS



sub_921E_unit_body:
C - - - - - 0x01522E 05:921E: AD A1 06  LDA ram_unit_hp_body
C - - - - - 0x015231 05:9221: C9 0B     CMP #$0B
C - - - - - 0x015233 05:9223: 90 0C     BCC bra_9231
C - - - - - 0x015235 05:9225: C9 15     CMP #$15
C - - - - - 0x015237 05:9227: 90 04     BCC bra_922D
C - - - - - 0x015239 05:9229: A0 00     LDY #$00
C - - - - - 0x01523B 05:922B: F0 06     BEQ bra_9233    ; jmp
bra_922D:
C - - - - - 0x01523D 05:922D: A0 10     LDY #$10
C - - - - - 0x01523F 05:922F: D0 02     BNE bra_9233    ; jmp
bra_9231:
C - - - - - 0x015241 05:9231: A0 20     LDY #$20
bra_9233:
C - - - - - 0x015243 05:9233: 2C 02 20  BIT $2002
C - - - - - 0x015246 05:9236: A9 20     LDA #> $20B3
C - - - - - 0x015248 05:9238: 8D 06 20  STA $2006
C - - - - - 0x01524B 05:923B: A9 B3     LDA #< $20B3
C - - - - - 0x01524D 05:923D: 8D 06 20  STA $2006
C - - - - - 0x015250 05:9240: A2 04     LDX #$04
bra_9242_loop:
C - - - - - 0x015252 05:9242: B9 EC B5  LDA tbl_B5EC_unit_body,Y
C - - - - - 0x015255 05:9245: 8D 07 20  STA $2007
C - - - - - 0x015258 05:9248: C8        INY
C - - - - - 0x015259 05:9249: CA        DEX
C - - - - - 0x01525A 05:924A: D0 F6     BNE bra_9242_loop
C - - - - - 0x01525C 05:924C: 2C 02 20  BIT $2002
C - - - - - 0x01525F 05:924F: A9 20     LDA #> $20D3
C - - - - - 0x015261 05:9251: 8D 06 20  STA $2006
C - - - - - 0x015264 05:9254: A9 D3     LDA #< $20D3
C - - - - - 0x015266 05:9256: 8D 06 20  STA $2006
C - - - - - 0x015269 05:9259: A2 04     LDX #$04
bra_925B_loop:
C - - - - - 0x01526B 05:925B: B9 EC B5  LDA tbl_B5EC_unit_body,Y
C - - - - - 0x01526E 05:925E: 8D 07 20  STA $2007
C - - - - - 0x015271 05:9261: C8        INY
C - - - - - 0x015272 05:9262: CA        DEX
C - - - - - 0x015273 05:9263: D0 F6     BNE bra_925B_loop
C - - - - - 0x015275 05:9265: 2C 02 20  BIT $2002
C - - - - - 0x015278 05:9268: A9 20     LDA #> $20F3
C - - - - - 0x01527A 05:926A: 8D 06 20  STA $2006
C - - - - - 0x01527D 05:926D: A9 F3     LDA #< $20F3
C - - - - - 0x01527F 05:926F: 8D 06 20  STA $2006
C - - - - - 0x015282 05:9272: A2 04     LDX #$04
bra_9274_loop:
C - - - - - 0x015284 05:9274: B9 EC B5  LDA tbl_B5EC_unit_body,Y
C - - - - - 0x015287 05:9277: 8D 07 20  STA $2007
C - - - - - 0x01528A 05:927A: C8        INY
C - - - - - 0x01528B 05:927B: CA        DEX
C - - - - - 0x01528C 05:927C: D0 F6     BNE bra_9274_loop
C - - - - - 0x01528E 05:927E: 2C 02 20  BIT $2002
C - - - - - 0x015291 05:9281: A9 21     LDA #> $2113
C - - - - - 0x015293 05:9283: 8D 06 20  STA $2006
C - - - - - 0x015296 05:9286: A9 13     LDA #< $2113
C - - - - - 0x015298 05:9288: 8D 06 20  STA $2006
C - - - - - 0x01529B 05:928B: A2 04     LDX #$04
bra_928D_loop:
C - - - - - 0x01529D 05:928D: B9 EC B5  LDA tbl_B5EC_unit_body,Y
C - - - - - 0x0152A0 05:9290: 8D 07 20  STA $2007
C - - - - - 0x0152A3 05:9293: C8        INY
C - - - - - 0x0152A4 05:9294: CA        DEX
C - - - - - 0x0152A5 05:9295: D0 F6     BNE bra_928D_loop
C - - - - - 0x0152A7 05:9297: 60        RTS



sub_9298_unit_legs:
C - - - - - 0x0152A8 05:9298: AD A3 06  LDA ram_unit_hp_legs
C - - - - - 0x0152AB 05:929B: C9 0B     CMP #$0B
C - - - - - 0x0152AD 05:929D: 90 0C     BCC bra_92AB
C - - - - - 0x0152AF 05:929F: C9 15     CMP #$15
C - - - - - 0x0152B1 05:92A1: 90 04     BCC bra_92A7
C - - - - - 0x0152B3 05:92A3: A0 00     LDY #$00
C - - - - - 0x0152B5 05:92A5: F0 06     BEQ bra_92AD    ; jmp
bra_92A7:
C - - - - - 0x0152B7 05:92A7: A0 30     LDY #$30
C - - - - - 0x0152B9 05:92A9: D0 02     BNE bra_92AD    ; jmp
bra_92AB:
C - - - - - 0x0152BB 05:92AB: A0 60     LDY #$60
bra_92AD:
C - - - - - 0x0152BD 05:92AD: 2C 02 20  BIT $2002
C - - - - - 0x0152C0 05:92B0: A9 21     LDA #> $2172
C - - - - - 0x0152C2 05:92B2: 8D 06 20  STA $2006
C - - - - - 0x0152C5 05:92B5: A9 72     LDA #< $2172
C - - - - - 0x0152C7 05:92B7: 8D 06 20  STA $2006
C - - - - - 0x0152CA 05:92BA: A2 08     LDX #$08
bra_92BC_loop:
C - - - - - 0x0152CC 05:92BC: B9 1C B6  LDA tbl_B61C_unit_legs,Y
C - - - - - 0x0152CF 05:92BF: 8D 07 20  STA $2007
C - - - - - 0x0152D2 05:92C2: C8        INY
C - - - - - 0x0152D3 05:92C3: CA        DEX
C - - - - - 0x0152D4 05:92C4: D0 F6     BNE bra_92BC_loop
C - - - - - 0x0152D6 05:92C6: A9 21     LDA #> $2192
C - - - - - 0x0152D8 05:92C8: 8D 06 20  STA $2006
C - - - - - 0x0152DB 05:92CB: A9 92     LDA #< $2192
C - - - - - 0x0152DD 05:92CD: 8D 06 20  STA $2006
C - - - - - 0x0152E0 05:92D0: A2 08     LDX #$08
bra_92D2_loop:
C - - - - - 0x0152E2 05:92D2: B9 1C B6  LDA tbl_B61C_unit_legs,Y
C - - - - - 0x0152E5 05:92D5: 8D 07 20  STA $2007
C - - - - - 0x0152E8 05:92D8: C8        INY
C - - - - - 0x0152E9 05:92D9: CA        DEX
C - - - - - 0x0152EA 05:92DA: D0 F6     BNE bra_92D2_loop
C - - - - - 0x0152EC 05:92DC: A9 21     LDA #> $21B2
C - - - - - 0x0152EE 05:92DE: 8D 06 20  STA $2006
C - - - - - 0x0152F1 05:92E1: A9 B2     LDA #< $21B2
C - - - - - 0x0152F3 05:92E3: 8D 06 20  STA $2006
C - - - - - 0x0152F6 05:92E6: A2 08     LDX #$08
bra_92E8_loop:
C - - - - - 0x0152F8 05:92E8: B9 1C B6  LDA tbl_B61C_unit_legs,Y
C - - - - - 0x0152FB 05:92EB: 8D 07 20  STA $2007
C - - - - - 0x0152FE 05:92EE: C8        INY
C - - - - - 0x0152FF 05:92EF: CA        DEX
C - - - - - 0x015300 05:92F0: D0 F6     BNE bra_92E8_loop
C - - - - - 0x015302 05:92F2: A9 21     LDA #> $21D2
C - - - - - 0x015304 05:92F4: 8D 06 20  STA $2006
C - - - - - 0x015307 05:92F7: A9 D2     LDA #< $21D2
C - - - - - 0x015309 05:92F9: 8D 06 20  STA $2006
C - - - - - 0x01530C 05:92FC: A2 08     LDX #$08
bra_92FE_loop:
C - - - - - 0x01530E 05:92FE: B9 1C B6  LDA tbl_B61C_unit_legs,Y
C - - - - - 0x015311 05:9301: 8D 07 20  STA $2007
C - - - - - 0x015314 05:9304: C8        INY
C - - - - - 0x015315 05:9305: CA        DEX
C - - - - - 0x015316 05:9306: D0 F6     BNE bra_92FE_loop
C - - - - - 0x015318 05:9308: A9 21     LDA #> $21F2
C - - - - - 0x01531A 05:930A: 8D 06 20  STA $2006
C - - - - - 0x01531D 05:930D: A9 F2     LDA #< $21F2
C - - - - - 0x01531F 05:930F: 8D 06 20  STA $2006
C - - - - - 0x015322 05:9312: A2 08     LDX #$08
bra_9314_loop:
C - - - - - 0x015324 05:9314: B9 1C B6  LDA tbl_B61C_unit_legs,Y
C - - - - - 0x015327 05:9317: 8D 07 20  STA $2007
C - - - - - 0x01532A 05:931A: C8        INY
C - - - - - 0x01532B 05:931B: CA        DEX
C - - - - - 0x01532C 05:931C: D0 F6     BNE bra_9314_loop
C - - - - - 0x01532E 05:931E: 60        RTS


; bzk garbage
- - - - - - 0x01532F 05:931F: A9 22     LDA #> $2212
- - - - - - 0x015331 05:9321: 8D 06 20  STA $2006
- - - - - - 0x015334 05:9324: A9 12     LDA #< $2212
- - - - - - 0x015336 05:9326: 8D 06 20  STA $2006
- - - - - - 0x015339 05:9329: A2 08     LDX #$08
bra_932B_loop:
- - - - - - 0x01533B 05:932B: B9 1C B6  LDA tbl_B61C_unit_legs,Y
- - - - - - 0x01533E 05:932E: 8D 07 20  STA $2007
- - - - - - 0x015341 05:9331: C8        INY
- - - - - - 0x015342 05:9332: CA        DEX
- - - - - - 0x015343 05:9333: D0 F6     BNE bra_932B_loop



loc_9335:
C D 0 - - - 0x015345 05:9335: 20 3A 94  JSR sub_943A
C - - - - - 0x015348 05:9338: AD B3 03  LDA ram_03A9_obj + $0A
C - - - - - 0x01534B 05:933B: 8D A2 03  STA ram_039C_obj + $06
C - - - - - 0x01534E 05:933E: A9 1E     LDA #$1E
C - - - - - 0x015350 05:9340: 8D 01 20  STA $2001
C - - - - - 0x015353 05:9343: AD D0 03  LDA ram_03D0
C - - - - - 0x015356 05:9346: F0 12     BEQ bra_935A
C - - - - - 0x015358 05:9348: A9 A8     LDA #$A8
C - - - - - 0x01535A 05:934A: 0D 20 03  ORA ram_0320
C - - - - - 0x01535D 05:934D: 8D 00 20  STA $2000
C - - - - - 0x015360 05:9350: EE AF 03  INC ram_03A9_obj + $06
C - - - - - 0x015363 05:9353: A5 06     LDA ram_save_A
C - - - - - 0x015365 05:9355: A6 07     LDX ram_save_X
C - - - - - 0x015367 05:9357: A4 08     LDY ram_save_Y
C - - - - - 0x015369 05:9359: 40        RTI
bra_935A:
C - - - - - 0x01536A 05:935A: AD B3 03  LDA ram_03A9_obj + $0A
C - - - - - 0x01536D 05:935D: C9 04     CMP #$04
C - - - - - 0x01536F 05:935F: D0 07     BNE bra_9368
C - - - - - 0x015371 05:9361: AD A7 03  LDA ram_039C_obj + $0B
C - - - - - 0x015374 05:9364: C9 03     CMP #$03
C - - - - - 0x015376 05:9366: F0 03     BEQ bra_936B
bra_9368:
C - - - - - 0x015378 05:9368: 4C F2 93  JMP loc_93F2
bra_936B:
C - - - - - 0x01537B 05:936B: A9 00     LDA #$00
C - - - - - 0x01537D 05:936D: 18        CLC
C - - - - - 0x01537E 05:936E: AE EF 07  LDX ram_07EF
loc_9371_loop:
C - - - - - 0x015381 05:9371: E0 00     CPX #$00
C - - - - - 0x015383 05:9373: F0 06     BEQ bra_937B_00
- - - - - - 0x015385 05:9375: 69 0F     ADC #$0F
- - - - - - 0x015387 05:9377: CA        DEX
- - - - - - 0x015388 05:9378: 4C 71 93  JMP loc_9371_loop
bra_937B_00:
C - - - - - 0x01538B 05:937B: A8        TAY
C - - - - - 0x01538C 05:937C: 2C 02 20  BIT $2002
C - - - - - 0x01538F 05:937F: AD EF 07  LDA ram_07EF
C - - - - - 0x015392 05:9382: 0A        ASL
C - - - - - 0x015393 05:9383: AA        TAX
C - - - - - 0x015394 05:9384: BD 0F 94  LDA tbl_940E + $01,X
C - - - - - 0x015397 05:9387: 8D 06 20  STA $2006
C - - - - - 0x01539A 05:938A: 85 E6     STA ram_00E6
C - - - - - 0x01539C 05:938C: BD 0E 94  LDA tbl_940E,X
C - - - - - 0x01539F 05:938F: 8D 06 20  STA $2006
C - - - - - 0x0153A2 05:9392: 85 E7     STA ram_00E7
C - - - - - 0x0153A4 05:9394: AE EF 07  LDX ram_07EF
C - - - - - 0x0153A7 05:9397: BC 12 8A  LDY tbl_8A12,X
C - - - - - 0x0153AA 05:939A: A2 00     LDX #$00
bra_939C_loop:
C - - - - - 0x0153AC 05:939C: B9 00 07  LDA ram_0700_buffer + $00,Y
C - - - - - 0x0153AF 05:939F: 8D 07 20  STA $2007
C - - - - - 0x0153B2 05:93A2: C8        INY
C - - - - - 0x0153B3 05:93A3: E8        INX
C - - - - - 0x0153B4 05:93A4: E0 0A     CPX #$0A
C - - - - - 0x0153B6 05:93A6: 90 F4     BCC bra_939C_loop
C - - - - - 0x0153B8 05:93A8: A5 E7     LDA ram_00E7
C - - - - - 0x0153BA 05:93AA: 18        CLC
C - - - - - 0x0153BB 05:93AB: 69 1F     ADC #< $001F
C - - - - - 0x0153BD 05:93AD: 85 E7     STA ram_00E7
C - - - - - 0x0153BF 05:93AF: A5 E6     LDA ram_00E6
C - - - - - 0x0153C1 05:93B1: 69 00     ADC #> $001F
C - - - - - 0x0153C3 05:93B3: 85 E6     STA ram_00E6
C - - - - - 0x0153C5 05:93B5: 2C 02 20  BIT $2002
C - - - - - 0x0153C8 05:93B8: A5 E6     LDA ram_00E6
C - - - - - 0x0153CA 05:93BA: 8D 06 20  STA $2006
C - - - - - 0x0153CD 05:93BD: A5 E7     LDA ram_00E7
C - - - - - 0x0153CF 05:93BF: 18        CLC
C - - - - - 0x0153D0 05:93C0: 6D D7 03  ADC ram_03D7
C - - - - - 0x0153D3 05:93C3: 8D 06 20  STA $2006
C - - - - - 0x0153D6 05:93C6: AD AF 03  LDA ram_03A9_obj + $06
C - - - - - 0x0153D9 05:93C9: 29 1F     AND #$1F
C - - - - - 0x0153DB 05:93CB: C9 13     CMP #$13
C - - - - - 0x0153DD 05:93CD: B0 11     BCS bra_93E0
C - - - - - 0x0153DF 05:93CF: A9 00     LDA #$00
C - - - - - 0x0153E1 05:93D1: 8D 07 20  STA $2007
C - - - - - 0x0153E4 05:93D4: A9 DE     LDA #$DE
C - - - - - 0x0153E6 05:93D6: 8D 07 20  STA $2007
C - - - - - 0x0153E9 05:93D9: A9 00     LDA #$00
C - - - - - 0x0153EB 05:93DB: 8D 07 20  STA $2007
; bzk optimize, useless, never branches
C - - - - - 0x0153EE 05:93DE: D0 08     BNE bra_93E8
bra_93E0:
C - - - - - 0x0153F0 05:93E0: A9 00     LDA #$00
C - - - - - 0x0153F2 05:93E2: 8D 07 20  STA $2007
C - - - - - 0x0153F5 05:93E5: 8D 07 20  STA $2007
bra_93E8:
C - - - - - 0x0153F8 05:93E8: A9 20     LDA #> $2000
C - - - - - 0x0153FA 05:93EA: 8D 06 20  STA $2006
C - - - - - 0x0153FD 05:93ED: A9 00     LDA #< $2000
C - - - - - 0x0153FF 05:93EF: 8D 06 20  STA $2006
loc_93F2:
C D 0 - - - 0x015402 05:93F2: A9 88     LDA #$88
C - - - - - 0x015404 05:93F4: 0D 20 03  ORA ram_0320
C - - - - - 0x015407 05:93F7: 8D 00 20  STA $2000
C - - - - - 0x01540A 05:93FA: EE AF 03  INC ram_03A9_obj + $06
C - - - - - 0x01540D 05:93FD: A5 06     LDA ram_save_A
C - - - - - 0x01540F 05:93FF: A6 07     LDX ram_save_X
C - - - - - 0x015411 05:9401: A4 08     LDY ram_save_Y
C - - - - - 0x015413 05:9403: 40        RTI



tbl_9404:
- D 0 - - - 0x015414 05:9404: A1 B7     .word off_B7A1_00
- D 0 - - - 0x015416 05:9406: A5 B7     .word off_B7A5_01
- D 0 - - - 0x015418 05:9408: AD B7     .word off_B7AD_02
- D 0 - - - 0x01541A 05:940A: A5 B7     .word off_B7A5_03
- D 0 - - - 0x01541C 05:940C: A9 B7     .word off_B7A9_04



tbl_940E:
- D 0 - - - 0x01541E 05:940E: 51 21     .word $2151 ; 00 
- - - - - - 0x015420 05:9410: 91 21     .word $2191 ; 01 
- - - - - - 0x015422 05:9412: D1 21     .word $21D1 ; 02 
- - - - - - 0x015424 05:9414: 11 22     .word $2211 ; 03 
- - - - - - 0x015426 05:9416: 51 22     .word $2251 ; 04 
- - - - - - 0x015428 05:9418: 91 22     .word $2291 ; 05 



sub_941A_write_palette:
C - - - - - 0x01542A 05:941A: 2C 02 20  BIT $2002
C - - - - - 0x01542D 05:941D: A9 3F     LDA #> $3F00
C - - - - - 0x01542F 05:941F: 8D 06 20  STA $2006
C - - - - - 0x015432 05:9422: A2 00     LDX #< $3F00
C - - - - - 0x015434 05:9424: 8E 06 20  STX $2006
bra_9427_loop:
C - - - - - 0x015437 05:9427: BD 00 03  LDA ram_0300_ppu_buffer,X
C - - - - - 0x01543A 05:942A: 8D 07 20  STA $2007
C - - - - - 0x01543D 05:942D: BD 01 03  LDA ram_0300_ppu_buffer + $01,X
C - - - - - 0x015440 05:9430: 8D 07 20  STA $2007
C - - - - - 0x015443 05:9433: E8        INX
C - - - - - 0x015444 05:9434: E8        INX
C - - - - - 0x015445 05:9435: E0 20     CPX #$20
C - - - - - 0x015447 05:9437: D0 EE     BNE bra_9427_loop
C - - - - - 0x015449 05:9439: 60        RTS



sub_943A:
C - - - - - 0x01544A 05:943A: 2C 02 20  BIT $2002
C - - - - - 0x01544D 05:943D: AD 21 03  LDA ram_0321    ; bzk optimize, uselee load
C - - - - - 0x015450 05:9440: A9 00     LDA #$00
C - - - - - 0x015452 05:9442: 8D 05 20  STA $2005
C - - - - - 0x015455 05:9445: AD D1 03  LDA ram_03D1
C - - - - - 0x015458 05:9448: F0 02     BEQ bra_944C
C - - - - - 0x01545A 05:944A: A9 E0     LDA #$E0
bra_944C:
C - - - - - 0x01545C 05:944C: 8D 05 20  STA $2005
C - - - - - 0x01545F 05:944F: EE 22 03  INC ram_0322
C - - - - - 0x015462 05:9452: 60        RTS



sub_9453:
C - - - - - 0x015463 05:9453: AD B0 03  LDA ram_menu_buttons
C - - - - - 0x015466 05:9456: 29 F0     AND #con_btns2_Dpad
C - - - - - 0x015468 05:9458: 4A        LSR
C - - - - - 0x015469 05:9459: 4A        LSR
C - - - - - 0x01546A 05:945A: 4A        LSR
C - - - - - 0x01546B 05:945B: AA        TAX
C - - - - - 0x01546C 05:945C: BD 6B 94  LDA tbl_946B,X
C - - - - - 0x01546F 05:945F: 8D 02 06  STA ram_0602_jmp
C - - - - - 0x015472 05:9462: BD 6C 94  LDA tbl_946B + $01,X
C - - - - - 0x015475 05:9465: 8D 03 06  STA ram_0602_jmp + $01
C - - - - - 0x015478 05:9468: 6C 02 06  JMP (ram_0602_jmp)



tbl_946B:
- D 0 - - - 0x01547B 05:946B: 8B 94     .word ofs_008_948B_00_nothing
- D 0 - - - 0x01547D 05:946D: 91 94     .word ofs_008_9491_10_up
- D 0 - - - 0x01547F 05:946F: 97 94     .word ofs_008_9497_20_down
- - - - - - 0x015481 05:9471: 8B 94     .word ofs_008_948B_30
- D 0 - - - 0x015483 05:9473: 9D 94     .word ofs_008_949D_40_left
- D 0 - - - 0x015485 05:9475: A9 94     .word ofs_008_94A9_50_up_left
- D 0 - - - 0x015487 05:9477: AF 94     .word ofs_008_94AF_60_down_left
- - - - - - 0x015489 05:9479: 8B 94     .word ofs_008_948B_70
- D 0 - - - 0x01548B 05:947B: A3 94     .word ofs_008_94A3_80_right
- D 0 - - - 0x01548D 05:947D: B5 94     .word ofs_008_94B5_90_up_right
- D 0 - - - 0x01548F 05:947F: BB 94     .word ofs_008_94BB_A0_down_right
- - - - - - 0x015491 05:9481: 8B 94     .word ofs_008_948B_B0
- - - - - - 0x015493 05:9483: 8B 94     .word ofs_008_948B_C0
- - - - - - 0x015495 05:9485: 8B 94     .word ofs_008_948B_D0
- - - - - - 0x015497 05:9487: 8B 94     .word ofs_008_948B_E0
- - - - - - 0x015499 05:9489: 8B 94     .word ofs_008_948B_F0



ofs_008_948B_00_nothing:
ofs_008_948B_30:
ofs_008_948B_70:
ofs_008_948B_B0:
ofs_008_948B_C0:
ofs_008_948B_D0:
ofs_008_948B_E0:
ofs_008_948B_F0:
C - - J - - 0x01549B 05:948B: A9 00     LDA #$00
C - - - - - 0x01549D 05:948D: 8D BE 03  STA ram_03BE
C - - - - - 0x0154A0 05:9490: 60        RTS



ofs_008_9491_10_up:
C - - J - - 0x0154A1 05:9491: A9 01     LDA #$01
C - - - - - 0x0154A3 05:9493: 8D BE 03  STA ram_03BE
C - - - - - 0x0154A6 05:9496: 60        RTS



ofs_008_9497_20_down:
C - - J - - 0x0154A7 05:9497: A9 03     LDA #$03
C - - - - - 0x0154A9 05:9499: 8D BE 03  STA ram_03BE
C - - - - - 0x0154AC 05:949C: 60        RTS



ofs_008_949D_40_left:
C - - J - - 0x0154AD 05:949D: A9 04     LDA #$04
C - - - - - 0x0154AF 05:949F: 8D BE 03  STA ram_03BE
C - - - - - 0x0154B2 05:94A2: 60        RTS



ofs_008_94A3_80_right:
C - - J - - 0x0154B3 05:94A3: A9 02     LDA #$02
C - - - - - 0x0154B5 05:94A5: 8D BE 03  STA ram_03BE
C - - - - - 0x0154B8 05:94A8: 60        RTS



ofs_008_94A9_50_up_left:
; bzk optimize, same as 0x01549B
C - - J - - 0x0154B9 05:94A9: A9 00     LDA #$00
C - - - - - 0x0154BB 05:94AB: 8D BE 03  STA ram_03BE
C - - - - - 0x0154BE 05:94AE: 60        RTS



ofs_008_94AF_60_down_left:
; bzk optimize, same as 0x01549B
C - - J - - 0x0154BF 05:94AF: A9 00     LDA #$00
C - - - - - 0x0154C1 05:94B1: 8D BE 03  STA ram_03BE
C - - - - - 0x0154C4 05:94B4: 60        RTS



ofs_008_94B5_90_up_right:
; bzk optimize, same as 0x01549B
C - - J - - 0x0154C5 05:94B5: A9 00     LDA #$00
C - - - - - 0x0154C7 05:94B7: 8D BE 03  STA ram_03BE
C - - - - - 0x0154CA 05:94BA: 60        RTS



ofs_008_94BB_A0_down_right:
; bzk optimize, same as 0x01549B
C - - J - - 0x0154CB 05:94BB: A9 00     LDA #$00
C - - - - - 0x0154CD 05:94BD: 8D BE 03  STA ram_03BE
C - - - - - 0x0154D0 05:94C0: 60        RTS



sub_94C1_read_joy_regs:
C - - - - - 0x0154D1 05:94C1: A2 01     LDX #$01
C - - - - - 0x0154D3 05:94C3: 8E 16 40  STX $4016
C - - - - - 0x0154D6 05:94C6: CA        DEX ; 00
C - - - - - 0x0154D7 05:94C7: 8E 16 40  STX $4016
C - - - - - 0x0154DA 05:94CA: A0 08     LDY #$08
bra_94CC_loop:
C - - - - - 0x0154DC 05:94CC: AD 16 40  LDA $4016
C - - - - - 0x0154DF 05:94CF: 4A        LSR
C - - - - - 0x0154E0 05:94D0: 6E B0 03  ROR ram_menu_buttons
C - - - - - 0x0154E3 05:94D3: 88        DEY
C - - - - - 0x0154E4 05:94D4: D0 F6     BNE bra_94CC_loop
C - - - - - 0x0154E6 05:94D6: 60        RTS



sub_94D7:
C - - - - - 0x0154E7 05:94D7: A2 14     LDX #$14
loc_94D9_loop:
C D 0 - - - 0x0154E9 05:94D9: BC 28 03  LDY ram_0328_stars,X
C - - - - - 0x0154EC 05:94DC: BD 50 03  LDA ram_0350_stars,X
C - - - - - 0x0154EF 05:94DF: 8D AD 03  STA ram_03A9_obj + $04
C - - - - - 0x0154F2 05:94E2: B9 B9 96  LDA tbl_96B9,Y
C - - - - - 0x0154F5 05:94E5: 8D AE 03  STA ram_03A9_obj + $05
C - - - - - 0x0154F8 05:94E8: 29 7F     AND #$7F
C - - - - - 0x0154FA 05:94EA: 8D AC 03  STA ram_03A9_obj + $03
C - - - - - 0x0154FD 05:94ED: 20 AF 95  JSR sub_95AF
C - - - - - 0x015500 05:94F0: BC CB 95  LDY tbl_95CB_spr_index,X
C - - - - - 0x015503 05:94F3: 2C AE 03  BIT ram_03A9_obj + $05
C - - - - - 0x015506 05:94F6: 30 0A     BMI bra_9502
C - - - - - 0x015508 05:94F8: 6D A0 03  ADC ram_039C_obj + $04
C - - - - - 0x01550B 05:94FB: C9 E9     CMP #$E9
C - - - - - 0x01550D 05:94FD: B0 0C     BCS bra_950B
C - - - - - 0x01550F 05:94FF: 4C 0E 95  JMP loc_950E
bra_9502:
C - - - - - 0x015512 05:9502: ED A0 03  SBC ram_039C_obj + $04
C - - - - - 0x015515 05:9505: 49 FF     EOR #$FF
C - - - - - 0x015517 05:9507: C9 10     CMP #$10
C - - - - - 0x015519 05:9509: B0 03     BCS bra_950E
bra_950B:
C - - - - - 0x01551B 05:950B: 4C 6B 95  JMP loc_956B
bra_950E:
loc_950E:
C D 0 - - - 0x01551E 05:950E: 99 03 02  STA ram_spr_X,Y
C - - - - - 0x015521 05:9511: BC 28 03  LDY ram_0328_stars,X
C - - - - - 0x015524 05:9514: B9 F9 96  LDA tbl_96F9,Y
C - - - - - 0x015527 05:9517: 8D AE 03  STA ram_03A9_obj + $05
C - - - - - 0x01552A 05:951A: 29 7F     AND #$7F
C - - - - - 0x01552C 05:951C: 8D AC 03  STA ram_03A9_obj + $03
C - - - - - 0x01552F 05:951F: 20 AF 95  JSR sub_95AF
C - - - - - 0x015532 05:9522: BC CB 95  LDY tbl_95CB_spr_index,X
C - - - - - 0x015535 05:9525: 2C AE 03  BIT ram_03A9_obj + $05
C - - - - - 0x015538 05:9528: 30 06     BMI bra_9530
C - - - - - 0x01553A 05:952A: 6D A1 03  ADC ram_039C_obj + $05
C - - - - - 0x01553D 05:952D: 4C 35 95  JMP loc_9535
bra_9530:
C - - - - - 0x015540 05:9530: ED A1 03  SBC ram_039C_obj + $05
C - - - - - 0x015543 05:9533: 49 FF     EOR #$FF
loc_9535:
C D 0 - - - 0x015545 05:9535: C9 40     CMP #$40
C - - - - - 0x015547 05:9537: 90 32     BCC bra_956B
C - - - - - 0x015549 05:9539: C9 AA     CMP #$AA
C - - - - - 0x01554B 05:953B: B0 2E     BCS bra_956B
C - - - - - 0x01554D 05:953D: 99 00 02  STA ram_spr_Y,Y
C - - - - - 0x015550 05:9540: BC 78 03  LDY ram_0378_stars,X
C - - - - - 0x015553 05:9543: BD 50 03  LDA ram_0350_stars,X
C - - - - - 0x015556 05:9546: 18        CLC
C - - - - - 0x015557 05:9547: 79 73 96  ADC tbl_9673,Y
C - - - - - 0x01555A 05:954A: 9D 50 03  STA ram_0350_stars,X
C - - - - - 0x01555D 05:954D: FE 78 03  INC ram_0378_stars,X
C - - - - - 0x015560 05:9550: B9 0B 96  LDA tbl_960B_index,Y
C - - - - - 0x015563 05:9553: BC CB 95  LDY tbl_95CB_spr_index,X
C - - - - - 0x015566 05:9556: 18        CLC
C - - - - - 0x015567 05:9557: 69 8B     ADC #$8B
C - - - - - 0x015569 05:9559: 99 01 02  STA ram_spr_T,Y
C - - - - - 0x01556C 05:955C: 8A        TXA
C - - - - - 0x01556D 05:955D: 29 03     AND #$03
C - - - - - 0x01556F 05:955F: 09 20     ORA #$20
C - - - - - 0x015571 05:9561: 99 02 02  STA ram_spr_A,Y
C - - - - - 0x015574 05:9564: CA        DEX
C - - - - - 0x015575 05:9565: 30 03     BMI bra_956A_RTS
C - - - - - 0x015577 05:9567: 4C D9 94  JMP loc_94D9_loop
bra_956A_RTS:
C - - - - - 0x01557A 05:956A: 60        RTS
bra_956B:
loc_956B:
C D 0 - - - 0x01557B 05:956B: 20 83 95  JSR sub_9583
C - - - - - 0x01557E 05:956E: 29 3F     AND #$3F
C - - - - - 0x015580 05:9570: 9D 28 03  STA ram_0328_stars,X
C - - - - - 0x015583 05:9573: 20 83 95  JSR sub_9583
C - - - - - 0x015586 05:9576: 29 1F     AND #$1F
C - - - - - 0x015588 05:9578: 9D 50 03  STA ram_0350_stars,X
C - - - - - 0x01558B 05:957B: A9 00     LDA #$00
C - - - - - 0x01558D 05:957D: 9D 78 03  STA ram_0378_stars,X
C - - - - - 0x015590 05:9580: 4C D9 94  JMP loc_94D9_loop



sub_9583:
C - - - - - 0x015593 05:9583: 38        SEC
C - - - - - 0x015594 05:9584: AD 24 03  LDA ram_0323_stars + $01
C - - - - - 0x015597 05:9587: 6D 27 03  ADC ram_0323_stars + $04
C - - - - - 0x01559A 05:958A: 6D 28 03  ADC ram_0328_stars
C - - - - - 0x01559D 05:958D: 8D 23 03  STA ram_0323_stars
C - - - - - 0x0155A0 05:9590: AD 27 03  LDA ram_0323_stars + $04
C - - - - - 0x0155A3 05:9593: 8D 28 03  STA ram_0328_stars
C - - - - - 0x0155A6 05:9596: AD 26 03  LDA ram_0323_stars + $03
C - - - - - 0x0155A9 05:9599: 8D 27 03  STA ram_0323_stars + $04
C - - - - - 0x0155AC 05:959C: AD 25 03  LDA ram_0323_stars + $02
C - - - - - 0x0155AF 05:959F: 8D 26 03  STA ram_0323_stars + $03
C - - - - - 0x0155B2 05:95A2: AD 24 03  LDA ram_0323_stars + $01
C - - - - - 0x0155B5 05:95A5: 8D 25 03  STA ram_0323_stars + $02
C - - - - - 0x0155B8 05:95A8: AD 23 03  LDA ram_0323_stars
C - - - - - 0x0155BB 05:95AB: 8D 24 03  STA ram_0323_stars + $01
C - - - - - 0x0155BE 05:95AE: 60        RTS



sub_95AF:
C - - - - - 0x0155BF 05:95AF: A9 00     LDA #$00
C - - - - - 0x0155C1 05:95B1: 8D AB 03  STA ram_03A9_obj + $02
C - - - - - 0x0155C4 05:95B4: A0 08     LDY #$08
bra_95B6_loop:
C - - - - - 0x0155C6 05:95B6: 4E AC 03  LSR ram_03A9_obj + $03
C - - - - - 0x0155C9 05:95B9: 90 04     BCC bra_95BF
C - - - - - 0x0155CB 05:95BB: 18        CLC
C - - - - - 0x0155CC 05:95BC: 6D AD 03  ADC ram_03A9_obj + $04
bra_95BF:
C - - - - - 0x0155CF 05:95BF: 6A        ROR
C - - - - - 0x0155D0 05:95C0: 6E AB 03  ROR ram_03A9_obj + $02
C - - - - - 0x0155D3 05:95C3: 88        DEY
C - - - - - 0x0155D4 05:95C4: D0 F0     BNE bra_95B6_loop
C - - - - - 0x0155D6 05:95C6: 0E AB 03  ASL ram_03A9_obj + $02
C - - - - - 0x0155D9 05:95C9: 2A        ROL
C - - - - - 0x0155DA 05:95CA: 60        RTS



tbl_95CB_spr_index:
- D 0 - - - 0x0155DB 05:95CB: 00        .byte $00   ; 00 
- D 0 - - - 0x0155DC 05:95CC: 04        .byte $04   ; 01 
- D 0 - - - 0x0155DD 05:95CD: 08        .byte $08   ; 02 
- D 0 - - - 0x0155DE 05:95CE: 0C        .byte $0C   ; 03 
- D 0 - - - 0x0155DF 05:95CF: 10        .byte $10   ; 04 
- D 0 - - - 0x0155E0 05:95D0: 14        .byte $14   ; 05 
- D 0 - - - 0x0155E1 05:95D1: 18        .byte $18   ; 06 
- D 0 - - - 0x0155E2 05:95D2: 1C        .byte $1C   ; 07 
- D 0 - - - 0x0155E3 05:95D3: 20        .byte $20   ; 08 
- D 0 - - - 0x0155E4 05:95D4: 24        .byte $24   ; 09 
- D 0 - - - 0x0155E5 05:95D5: 28        .byte $28   ; 0A 
- D 0 - - - 0x0155E6 05:95D6: 2C        .byte $2C   ; 0B 
- D 0 - - - 0x0155E7 05:95D7: 30        .byte $30   ; 0C 
- D 0 - - - 0x0155E8 05:95D8: 34        .byte $34   ; 0D 
- D 0 - - - 0x0155E9 05:95D9: 38        .byte $38   ; 0E 
- D 0 - - - 0x0155EA 05:95DA: 3C        .byte $3C   ; 0F 
- D 0 - - - 0x0155EB 05:95DB: 40        .byte $40   ; 10 
- D 0 - - - 0x0155EC 05:95DC: 44        .byte $44   ; 11 
- D 0 - - - 0x0155ED 05:95DD: 48        .byte $48   ; 12 
- D 0 - - - 0x0155EE 05:95DE: 4C        .byte $4C   ; 13 
- D 0 - - - 0x0155EF 05:95DF: 50        .byte $50   ; 14 
- D 0 - - - 0x0155F0 05:95E0: 54        .byte $54   ; 15 
- - - - - - 0x0155F1 05:95E1: 58        .byte $58   ; 16 
- - - - - - 0x0155F2 05:95E2: 5C        .byte $5C   ; 17 
- - - - - - 0x0155F3 05:95E3: 60        .byte $60   ; 18 
- - - - - - 0x0155F4 05:95E4: 64        .byte $64   ; 19 
- - - - - - 0x0155F5 05:95E5: 68        .byte $68   ; 1A 
- - - - - - 0x0155F6 05:95E6: 6C        .byte $6C   ; 1B 
- D 0 - - - 0x0155F7 05:95E7: 70        .byte $70   ; 1C 
- - - - - - 0x0155F8 05:95E8: 74        .byte $74   ; 1D 
- - - - - - 0x0155F9 05:95E9: 78        .byte $78   ; 1E 
- - - - - - 0x0155FA 05:95EA: 7C        .byte $7C   ; 1F 
- - - - - - 0x0155FB 05:95EB: 80        .byte $80   ; 20 
- - - - - - 0x0155FC 05:95EC: 84        .byte $84   ; 21 
- - - - - - 0x0155FD 05:95ED: 88        .byte $88   ; 22 
- - - - - - 0x0155FE 05:95EE: 8C        .byte $8C   ; 23 
- D 0 - - - 0x0155FF 05:95EF: 90        .byte $90   ; 24 
- - - - - - 0x015600 05:95F0: 94        .byte $94   ; 25 
- - - - - - 0x015601 05:95F1: 98        .byte $98   ; 26 
- - - - - - 0x015602 05:95F2: 9C        .byte $9C   ; 27 
- - - - - - 0x015603 05:95F3: A0        .byte $A0   ; 28 
- - - - - - 0x015604 05:95F4: A4        .byte $A4   ; 29 
- - - - - - 0x015605 05:95F5: A8        .byte $A8   ; 2A 
- - - - - - 0x015606 05:95F6: AC        .byte $AC   ; 2B 
- D 0 - - - 0x015607 05:95F7: B0        .byte $B0   ; 2C 
- - - - - - 0x015608 05:95F8: B4        .byte $B4   ; 2D 
- - - - - - 0x015609 05:95F9: B8        .byte $B8   ; 2E 
- - - - - - 0x01560A 05:95FA: BC        .byte $BC   ; 2F 
- - - - - - 0x01560B 05:95FB: C0        .byte $C0   ; 30 
- - - - - - 0x01560C 05:95FC: C4        .byte $C4   ; 31 
- - - - - - 0x01560D 05:95FD: C8        .byte $C8   ; 32 
- - - - - - 0x01560E 05:95FE: CC        .byte $CC   ; 33 
- - - - - - 0x01560F 05:95FF: D0        .byte $D0   ; 34 
- - - - - - 0x015610 05:9600: D4        .byte $D4   ; 35 
- - - - - - 0x015611 05:9601: D8        .byte $D8   ; 36 
- - - - - - 0x015612 05:9602: DC        .byte $DC   ; 37 
- - - - - - 0x015613 05:9603: E0        .byte $E0   ; 38 
- - - - - - 0x015614 05:9604: E4        .byte $E4   ; 39 
- - - - - - 0x015615 05:9605: E8        .byte $E8   ; 3A 
- - - - - - 0x015616 05:9606: EC        .byte $EC   ; 3B 
- - - - - - 0x015617 05:9607: F0        .byte $F0   ; 3C 
- - - - - - 0x015618 05:9608: F4        .byte $F4   ; 3D 
- - - - - - 0x015619 05:9609: F8        .byte $F8   ; 3E 
- - - - - - 0x01561A 05:960A: FC        .byte $FC   ; 3F 



tbl_960B_index:
- D 0 - - - 0x01561B 05:960B: 06        .byte $06   ; 00 
- D 0 - - - 0x01561C 05:960C: 06        .byte $06   ; 01 
- D 0 - - - 0x01561D 05:960D: 06        .byte $06   ; 02 
- D 0 - - - 0x01561E 05:960E: 06        .byte $06   ; 03 
- D 0 - - - 0x01561F 05:960F: 06        .byte $06   ; 04 
- D 0 - - - 0x015620 05:9610: 06        .byte $06   ; 05 
- D 0 - - - 0x015621 05:9611: 06        .byte $06   ; 06 
- D 0 - - - 0x015622 05:9612: 06        .byte $06   ; 07 
- D 0 - - - 0x015623 05:9613: 05        .byte $05   ; 08 
- D 0 - - - 0x015624 05:9614: 05        .byte $05   ; 09 
- D 0 - - - 0x015625 05:9615: 05        .byte $05   ; 0A 
- D 0 - - - 0x015626 05:9616: 05        .byte $05   ; 0B 
- D 0 - - - 0x015627 05:9617: 05        .byte $05   ; 0C 
- D 0 - - - 0x015628 05:9618: 05        .byte $05   ; 0D 
- D 0 - - - 0x015629 05:9619: 05        .byte $05   ; 0E 
- D 0 - - - 0x01562A 05:961A: 05        .byte $05   ; 0F 
- D 0 - - - 0x01562B 05:961B: 04        .byte $04   ; 10 
- D 0 - - - 0x01562C 05:961C: 04        .byte $04   ; 11 
- D 0 - - - 0x01562D 05:961D: 04        .byte $04   ; 12 
- D 0 - - - 0x01562E 05:961E: 04        .byte $04   ; 13 
- D 0 - - - 0x01562F 05:961F: 04        .byte $04   ; 14 
- D 0 - - - 0x015630 05:9620: 04        .byte $04   ; 15 
- D 0 - - - 0x015631 05:9621: 04        .byte $04   ; 16 
- D 0 - - - 0x015632 05:9622: 04        .byte $04   ; 17 
- D 0 - - - 0x015633 05:9623: 03        .byte $03   ; 18 
- D 0 - - - 0x015634 05:9624: 03        .byte $03   ; 19 
- D 0 - - - 0x015635 05:9625: 03        .byte $03   ; 1A 
- D 0 - - - 0x015636 05:9626: 03        .byte $03   ; 1B 
- D 0 - - - 0x015637 05:9627: 02        .byte $02   ; 1C 
- D 0 - - - 0x015638 05:9628: 02        .byte $02   ; 1D 
- D 0 - - - 0x015639 05:9629: 02        .byte $02   ; 1E 
- D 0 - - - 0x01563A 05:962A: 02        .byte $02   ; 1F 
- D 0 - - - 0x01563B 05:962B: 01        .byte $01   ; 20 
- D 0 - - - 0x01563C 05:962C: 01        .byte $01   ; 21 
- D 0 - - - 0x01563D 05:962D: 01        .byte $01   ; 22 
- D 0 - - - 0x01563E 05:962E: 01        .byte $01   ; 23 
- D 0 - - - 0x01563F 05:962F: 01        .byte $01   ; 24 
- D 0 - - - 0x015640 05:9630: 01        .byte $01   ; 25 
- D 0 - - - 0x015641 05:9631: 01        .byte $01   ; 26 
- D 0 - - - 0x015642 05:9632: 01        .byte $01   ; 27 
- D 0 - - - 0x015643 05:9633: 01        .byte $01   ; 28 
- D 0 - - - 0x015644 05:9634: 01        .byte $01   ; 29 
- D 0 - - - 0x015645 05:9635: 01        .byte $01   ; 2A 
- D 0 - - - 0x015646 05:9636: 01        .byte $01   ; 2B 
- D 0 - - - 0x015647 05:9637: 01        .byte $01   ; 2C 
- D 0 - - - 0x015648 05:9638: 01        .byte $01   ; 2D 
- D 0 - - - 0x015649 05:9639: 01        .byte $01   ; 2E 
- D 0 - - - 0x01564A 05:963A: 01        .byte $01   ; 2F 
- D 0 - - - 0x01564B 05:963B: 01        .byte $01   ; 30 
- D 0 - - - 0x01564C 05:963C: 01        .byte $01   ; 31 
- D 0 - - - 0x01564D 05:963D: 01        .byte $01   ; 32 
- D 0 - - - 0x01564E 05:963E: 01        .byte $01   ; 33 
- D 0 - - - 0x01564F 05:963F: 01        .byte $01   ; 34 
- D 0 - - - 0x015650 05:9640: 01        .byte $01   ; 35 
- D 0 - - - 0x015651 05:9641: 01        .byte $01   ; 36 
- D 0 - - - 0x015652 05:9642: 01        .byte $01   ; 37 
- D 0 - - - 0x015653 05:9643: 01        .byte $01   ; 38 
- D 0 - - - 0x015654 05:9644: 01        .byte $01   ; 39 
- - - - - - 0x015655 05:9645: 01        .byte $01   ; 3A 
- - - - - - 0x015656 05:9646: 01        .byte $01   ; 3B 
- - - - - - 0x015657 05:9647: 01        .byte $01   ; 3C 
- - - - - - 0x015658 05:9648: 01        .byte $01   ; 3D 
- - - - - - 0x015659 05:9649: 01        .byte $01   ; 3E 
- - - - - - 0x01565A 05:964A: 01        .byte $01   ; 3F 
- - - - - - 0x01565B 05:964B: 01        .byte $01   ; 40 
- - - - - - 0x01565C 05:964C: 01        .byte $01   ; 41 
- - - - - - 0x01565D 05:964D: 01        .byte $01   ; 42 
- - - - - - 0x01565E 05:964E: 01        .byte $01   ; 43 
- - - - - - 0x01565F 05:964F: 01        .byte $01   ; 44 
- - - - - - 0x015660 05:9650: 01        .byte $01   ; 45 
; bzk garbage?
- - - - - - 0x015661 05:9651: 01        .byte $01   ; 46 
- - - - - - 0x015662 05:9652: 01        .byte $01   ; 47 
- - - - - - 0x015663 05:9653: 01        .byte $01   ; 48 
- - - - - - 0x015664 05:9654: 01        .byte $01   ; 49 
- - - - - - 0x015665 05:9655: 01        .byte $01   ; 4A 
- - - - - - 0x015666 05:9656: 01        .byte $01   ; 4B 
- - - - - - 0x015667 05:9657: 01        .byte $01   ; 4C 
- - - - - - 0x015668 05:9658: 01        .byte $01   ; 4D 
- - - - - - 0x015669 05:9659: 01        .byte $01   ; 4E 
- - - - - - 0x01566A 05:965A: 01        .byte $01   ; 4F 
- - - - - - 0x01566B 05:965B: 01        .byte $01   ; 50 
- - - - - - 0x01566C 05:965C: 01        .byte $01   ; 51 
- - - - - - 0x01566D 05:965D: 01        .byte $01   ; 52 
- - - - - - 0x01566E 05:965E: 01        .byte $01   ; 53 
- - - - - - 0x01566F 05:965F: 01        .byte $01   ; 54 
- - - - - - 0x015670 05:9660: 01        .byte $01   ; 55 
- - - - - - 0x015671 05:9661: 01        .byte $01   ; 56 
- - - - - - 0x015672 05:9662: 01        .byte $01   ; 57 
- - - - - - 0x015673 05:9663: 01        .byte $01   ; 58 
- - - - - - 0x015674 05:9664: 01        .byte $01   ; 59 
- - - - - - 0x015675 05:9665: 01        .byte $01   ; 5A 
- - - - - - 0x015676 05:9666: 01        .byte $01   ; 5B 
- - - - - - 0x015677 05:9667: 01        .byte $01   ; 5C 
- - - - - - 0x015678 05:9668: 01        .byte $01   ; 5D 
- - - - - - 0x015679 05:9669: 01        .byte $01   ; 5E 
- - - - - - 0x01567A 05:966A: 01        .byte $01   ; 5F 
- - - - - - 0x01567B 05:966B: 01        .byte $01   ; 60 
- - - - - - 0x01567C 05:966C: 01        .byte $01   ; 61 
- - - - - - 0x01567D 05:966D: 01        .byte $01   ; 62 
- - - - - - 0x01567E 05:966E: 01        .byte $01   ; 63 
- - - - - - 0x01567F 05:966F: 01        .byte $01   ; 64 
- - - - - - 0x015680 05:9670: 01        .byte $01   ; 65 
- - - - - - 0x015681 05:9671: 01        .byte $01   ; 66 
- - - - - - 0x015682 05:9672: 01        .byte $01   ; 67 



tbl_9673:
- D 0 - - - 0x015683 05:9673: 01        .byte $01   ; 00 
- D 0 - - - 0x015684 05:9674: 01        .byte $01   ; 01 
- D 0 - - - 0x015685 05:9675: 01        .byte $01   ; 02 
- D 0 - - - 0x015686 05:9676: 01        .byte $01   ; 03 
- D 0 - - - 0x015687 05:9677: 01        .byte $01   ; 04 
- D 0 - - - 0x015688 05:9678: 01        .byte $01   ; 05 
- D 0 - - - 0x015689 05:9679: 01        .byte $01   ; 06 
- D 0 - - - 0x01568A 05:967A: 01        .byte $01   ; 07 
- D 0 - - - 0x01568B 05:967B: 01        .byte $01   ; 08 
- D 0 - - - 0x01568C 05:967C: 01        .byte $01   ; 09 
- D 0 - - - 0x01568D 05:967D: 01        .byte $01   ; 0A 
- D 0 - - - 0x01568E 05:967E: 01        .byte $01   ; 0B 
- D 0 - - - 0x01568F 05:967F: 01        .byte $01   ; 0C 
- D 0 - - - 0x015690 05:9680: 01        .byte $01   ; 0D 
- D 0 - - - 0x015691 05:9681: 01        .byte $01   ; 0E 
- D 0 - - - 0x015692 05:9682: 01        .byte $01   ; 0F 
- D 0 - - - 0x015693 05:9683: 01        .byte $01   ; 10 
- D 0 - - - 0x015694 05:9684: 01        .byte $01   ; 11 
- D 0 - - - 0x015695 05:9685: 01        .byte $01   ; 12 
- D 0 - - - 0x015696 05:9686: 01        .byte $01   ; 13 
- D 0 - - - 0x015697 05:9687: 01        .byte $01   ; 14 
- D 0 - - - 0x015698 05:9688: 01        .byte $01   ; 15 
- D 0 - - - 0x015699 05:9689: 01        .byte $01   ; 16 
- D 0 - - - 0x01569A 05:968A: 01        .byte $01   ; 17 
- D 0 - - - 0x01569B 05:968B: 02        .byte $02   ; 18 
- D 0 - - - 0x01569C 05:968C: 02        .byte $02   ; 19 
- D 0 - - - 0x01569D 05:968D: 02        .byte $02   ; 1A 
- D 0 - - - 0x01569E 05:968E: 02        .byte $02   ; 1B 
- D 0 - - - 0x01569F 05:968F: 02        .byte $02   ; 1C 
- D 0 - - - 0x0156A0 05:9690: 02        .byte $02   ; 1D 
- D 0 - - - 0x0156A1 05:9691: 03        .byte $03   ; 1E 
- D 0 - - - 0x0156A2 05:9692: 03        .byte $03   ; 1F 
- D 0 - - - 0x0156A3 05:9693: 03        .byte $03   ; 20 
- D 0 - - - 0x0156A4 05:9694: 03        .byte $03   ; 21 
- D 0 - - - 0x0156A5 05:9695: 03        .byte $03   ; 22 
- D 0 - - - 0x0156A6 05:9696: 04        .byte $04   ; 23 
- D 0 - - - 0x0156A7 05:9697: 04        .byte $04   ; 24 
- D 0 - - - 0x0156A8 05:9698: 04        .byte $04   ; 25 
- D 0 - - - 0x0156A9 05:9699: 05        .byte $05   ; 26 
- D 0 - - - 0x0156AA 05:969A: 05        .byte $05   ; 27 
- D 0 - - - 0x0156AB 05:969B: 06        .byte $06   ; 28 
- D 0 - - - 0x0156AC 05:969C: 06        .byte $06   ; 29 
- D 0 - - - 0x0156AD 05:969D: 07        .byte $07   ; 2A 
- D 0 - - - 0x0156AE 05:969E: 08        .byte $08   ; 2B 
- D 0 - - - 0x0156AF 05:969F: 09        .byte $09   ; 2C 
- D 0 - - - 0x0156B0 05:96A0: 0B        .byte $0B   ; 2D 
- D 0 - - - 0x0156B1 05:96A1: 0C        .byte $0C   ; 2E 
- D 0 - - - 0x0156B2 05:96A2: 0E        .byte $0E   ; 2F 
- D 0 - - - 0x0156B3 05:96A3: 10        .byte $10   ; 30 
- D 0 - - - 0x0156B4 05:96A4: 12        .byte $12   ; 31 
- D 0 - - - 0x0156B5 05:96A5: 14        .byte $14   ; 32 
- D 0 - - - 0x0156B6 05:96A6: 17        .byte $17   ; 33 
- D 0 - - - 0x0156B7 05:96A7: 1A        .byte $1A   ; 34 
- D 0 - - - 0x0156B8 05:96A8: 1E        .byte $1E   ; 35 
- D 0 - - - 0x0156B9 05:96A9: 22        .byte $22   ; 36 
- D 0 - - - 0x0156BA 05:96AA: 26        .byte $26   ; 37 
- D 0 - - - 0x0156BB 05:96AB: 2B        .byte $2B   ; 38 
- D 0 - - - 0x0156BC 05:96AC: 34        .byte $34   ; 39 
; bzk garbage?
- - - - - - 0x0156BD 05:96AD: 38        .byte $38   ; 3A 
- - - - - - 0x0156BE 05:96AE: 42        .byte $42   ; 3B 
- - - - - - 0x0156BF 05:96AF: 4A        .byte $4A   ; 3C 
- - - - - - 0x0156C0 05:96B0: 4A        .byte $4A   ; 3D 
- - - - - - 0x0156C1 05:96B1: 4A        .byte $4A   ; 3E 
- - - - - - 0x0156C2 05:96B2: 4A        .byte $4A   ; 3F 
- - - - - - 0x0156C3 05:96B3: 4A        .byte $4A   ; 40 
- - - - - - 0x0156C4 05:96B4: 4A        .byte $4A   ; 41 
- - - - - - 0x0156C5 05:96B5: 4A        .byte $4A   ; 42 
- - - - - - 0x0156C6 05:96B6: 4A        .byte $4A   ; 43 
- - - - - - 0x0156C7 05:96B7: 4A        .byte $4A   ; 44 
- - - - - - 0x0156C8 05:96B8: 4A        .byte $4A   ; 45 



tbl_96B9:
; bzk bug? this table is 100h bytes in size
- D 0 - - - 0x0156C9 05:96B9: 00        .byte $00   ; 00 
- D 0 - - - 0x0156CA 05:96BA: 0B        .byte $0B   ; 01 
- D 0 - - - 0x0156CB 05:96BB: 18        .byte $18   ; 02 
- D 0 - - - 0x0156CC 05:96BC: 25        .byte $25   ; 03 
- D 0 - - - 0x0156CD 05:96BD: 30        .byte $30   ; 04 
- D 0 - - - 0x0156CE 05:96BE: 3C        .byte $3C   ; 05 
- D 0 - - - 0x0156CF 05:96BF: 47        .byte $47   ; 06 
- D 0 - - - 0x0156D0 05:96C0: 51        .byte $51   ; 07 
- D 0 - - - 0x0156D1 05:96C1: 5A        .byte $5A   ; 08 
- D 0 - - - 0x0156D2 05:96C2: 63        .byte $63   ; 09 
- D 0 - - - 0x0156D3 05:96C3: 6B        .byte $6B   ; 0A 
- D 0 - - - 0x0156D4 05:96C4: 71        .byte $71   ; 0B 
- D 0 - - - 0x0156D5 05:96C5: 77        .byte $77   ; 0C 
- D 0 - - - 0x0156D6 05:96C6: 7A        .byte $7A   ; 0D 
- D 0 - - - 0x0156D7 05:96C7: 7D        .byte $7D   ; 0E 
- D 0 - - - 0x0156D8 05:96C8: 7E        .byte $7E   ; 0F 
- D 0 - - - 0x0156D9 05:96C9: 7E        .byte $7E   ; 10 
- D 0 - - - 0x0156DA 05:96CA: 7E        .byte $7E   ; 11 
- D 0 - - - 0x0156DB 05:96CB: 7C        .byte $7C   ; 12 
- D 0 - - - 0x0156DC 05:96CC: 78        .byte $78   ; 13 
- D 0 - - - 0x0156DD 05:96CD: 73        .byte $73   ; 14 
- D 0 - - - 0x0156DE 05:96CE: 6E        .byte $6E   ; 15 
- D 0 - - - 0x0156DF 05:96CF: 66        .byte $66   ; 16 
- D 0 - - - 0x0156E0 05:96D0: 5E        .byte $5E   ; 17 
- D 0 - - - 0x0156E1 05:96D1: 55        .byte $55   ; 18 
- D 0 - - - 0x0156E2 05:96D2: 4B        .byte $4B   ; 19 
- D 0 - - - 0x0156E3 05:96D3: 41        .byte $41   ; 1A 
- D 0 - - - 0x0156E4 05:96D4: 35        .byte $35   ; 1B 
- D 0 - - - 0x0156E5 05:96D5: 2A        .byte $2A   ; 1C 
- D 0 - - - 0x0156E6 05:96D6: 1D        .byte $1D   ; 1D 
- D 0 - - - 0x0156E7 05:96D7: 11        .byte $11   ; 1E 
- D 0 - - - 0x0156E8 05:96D8: 05        .byte $05   ; 1F 
- D 0 - - - 0x0156E9 05:96D9: 87        .byte $87   ; 20 
- D 0 - - - 0x0156EA 05:96DA: 94        .byte $94   ; 21 
- D 0 - - - 0x0156EB 05:96DB: A1        .byte $A1   ; 22 
- D 0 - - - 0x0156EC 05:96DC: AE        .byte $AE   ; 23 
- D 0 - - - 0x0156ED 05:96DD: B9        .byte $B9   ; 24 
- D 0 - - - 0x0156EE 05:96DE: C3        .byte $C3   ; 25 
- D 0 - - - 0x0156EF 05:96DF: CF        .byte $CF   ; 26 
- D 0 - - - 0x0156F0 05:96E0: D8        .byte $D8   ; 27 
- D 0 - - - 0x0156F1 05:96E1: E1        .byte $E1   ; 28 
- D 0 - - - 0x0156F2 05:96E2: E8        .byte $E8   ; 29 
- D 0 - - - 0x0156F3 05:96E3: F0        .byte $F0   ; 2A 
- D 0 - - - 0x0156F4 05:96E4: F5        .byte $F5   ; 2B 
- D 0 - - - 0x0156F5 05:96E5: FA        .byte $FA   ; 2C 
- D 0 - - - 0x0156F6 05:96E6: FD        .byte $FD   ; 2D 
- D 0 - - - 0x0156F7 05:96E7: FF        .byte $FF   ; 2E 
- D 0 - - - 0x0156F8 05:96E8: FF        .byte $FF   ; 2F 
- D 0 - - - 0x0156F9 05:96E9: FF        .byte $FF   ; 30 
- D 0 - - - 0x0156FA 05:96EA: FE        .byte $FE   ; 31 
- D 0 - - - 0x0156FB 05:96EB: FA        .byte $FA   ; 32 
- D 0 - - - 0x0156FC 05:96EC: F7        .byte $F7   ; 33 
- D 0 - - - 0x0156FD 05:96ED: F1        .byte $F1   ; 34 
- D 0 - - - 0x0156FE 05:96EE: EB        .byte $EB   ; 35 
- D 0 - - - 0x0156FF 05:96EF: E3        .byte $E3   ; 36 
- D 0 - - - 0x015700 05:96F0: DA        .byte $DA   ; 37 
- D 0 - - - 0x015701 05:96F1: D1        .byte $D1   ; 38 
- D 0 - - - 0x015702 05:96F2: C7        .byte $C7   ; 39 
- D 0 - - - 0x015703 05:96F3: BC        .byte $BC   ; 3A 
- D 0 - - - 0x015704 05:96F4: B0        .byte $B0   ; 3B 
- D 0 - - - 0x015705 05:96F5: A3        .byte $A3   ; 3C 
- D 0 - - - 0x015706 05:96F6: 00        .byte $00   ; 3D 
- D 0 - - - 0x015707 05:96F7: 0B        .byte $0B   ; 3E 
- D 0 - - - 0x015708 05:96F8: 18        .byte $18   ; 3F 



tbl_96F9:
; bzk bug? this table is 100h bytes in size
- D 0 - - - 0x015709 05:96F9: 7D        .byte $7D   ; 00 
- D 0 - - - 0x01570A 05:96FA: 79        .byte $79   ; 01 
- D 0 - - - 0x01570B 05:96FB: 75        .byte $75   ; 02 
- D 0 - - - 0x01570C 05:96FC: 6F        .byte $6F   ; 03 
- D 0 - - - 0x01570D 05:96FD: 68        .byte $68   ; 04 
- D 0 - - - 0x01570E 05:96FE: 61        .byte $61   ; 05 
- D 0 - - - 0x01570F 05:96FF: 58        .byte $58   ; 06 
- D 0 - - - 0x015710 05:9700: 4F        .byte $4F   ; 07 
- D 0 - - - 0x015711 05:9701: 45        .byte $45   ; 08 
- D 0 - - - 0x015712 05:9702: 39        .byte $39   ; 09 
- D 0 - - - 0x015713 05:9703: 2E        .byte $2E   ; 0A 
- D 0 - - - 0x015714 05:9704: 21        .byte $21   ; 0B 
- D 0 - - - 0x015715 05:9705: 14        .byte $14   ; 0C 
- D 0 - - - 0x015716 05:9706: 08        .byte $08   ; 0D 
- D 0 - - - 0x015717 05:9707: 83        .byte $83   ; 0E 
- D 0 - - - 0x015718 05:9708: 90        .byte $90   ; 0F 
- D 0 - - - 0x015719 05:9709: 9D        .byte $9D   ; 10 
- D 0 - - - 0x01571A 05:970A: AA        .byte $AA   ; 11 
- D 0 - - - 0x01571B 05:970B: B5        .byte $B5   ; 12 
- D 0 - - - 0x01571C 05:970C: C1        .byte $C1   ; 13 
- D 0 - - - 0x01571D 05:970D: CB        .byte $CB   ; 14 
- D 0 - - - 0x01571E 05:970E: D5        .byte $D5   ; 15 
- D 0 - - - 0x01571F 05:970F: DE        .byte $DE   ; 16 
- D 0 - - - 0x015720 05:9710: E7        .byte $E7   ; 17 
- D 0 - - - 0x015721 05:9711: EE        .byte $EE   ; 18 
- D 0 - - - 0x015722 05:9712: F4        .byte $F4   ; 19 
- D 0 - - - 0x015723 05:9713: F9        .byte $F9   ; 1A 
- D 0 - - - 0x015724 05:9714: FD        .byte $FD   ; 1B 
- D 0 - - - 0x015725 05:9715: FE        .byte $FE   ; 1C 
- D 0 - - - 0x015726 05:9716: FF        .byte $FF   ; 1D 
- D 0 - - - 0x015727 05:9717: FF        .byte $FF   ; 1E 
- D 0 - - - 0x015728 05:9718: FE        .byte $FE   ; 1F 
- D 0 - - - 0x015729 05:9719: FC        .byte $FC   ; 20 
- D 0 - - - 0x01572A 05:971A: F8        .byte $F8   ; 21 
- D 0 - - - 0x01572B 05:971B: F3        .byte $F3   ; 22 
- D 0 - - - 0x01572C 05:971C: EC        .byte $EC   ; 23 
- D 0 - - - 0x01572D 05:971D: E6        .byte $E6   ; 24 
- D 0 - - - 0x01572E 05:971E: DD        .byte $DD   ; 25 
- D 0 - - - 0x01572F 05:971F: D4        .byte $D4   ; 26 
- D 0 - - - 0x015730 05:9720: CA        .byte $CA   ; 27 
- D 0 - - - 0x015731 05:9721: C0        .byte $C0   ; 28 
- D 0 - - - 0x015732 05:9722: B4        .byte $B4   ; 29 
- D 0 - - - 0x015733 05:9723: A7        .byte $A7   ; 2A 
- D 0 - - - 0x015734 05:9724: 9C        .byte $9C   ; 2B 
- D 0 - - - 0x015735 05:9725: 8F        .byte $8F   ; 2C 
- D 0 - - - 0x015736 05:9726: 82        .byte $82   ; 2D 
- D 0 - - - 0x015737 05:9727: 0A        .byte $0A   ; 2E 
- D 0 - - - 0x015738 05:9728: 17        .byte $17   ; 2F 
- D 0 - - - 0x015739 05:9729: 23        .byte $23   ; 30 
- D 0 - - - 0x01573A 05:972A: 2F        .byte $2F   ; 31 
- D 0 - - - 0x01573B 05:972B: 3A        .byte $3A   ; 32 
- D 0 - - - 0x01573C 05:972C: 46        .byte $46   ; 33 
- D 0 - - - 0x01573D 05:972D: 50        .byte $50   ; 34 
- D 0 - - - 0x01573E 05:972E: 59        .byte $59   ; 35 
- D 0 - - - 0x01573F 05:972F: 62        .byte $62   ; 36 
- D 0 - - - 0x015740 05:9730: 6A        .byte $6A   ; 37 
- D 0 - - - 0x015741 05:9731: 70        .byte $70   ; 38 
- D 0 - - - 0x015742 05:9732: 75        .byte $75   ; 39 
- D 0 - - - 0x015743 05:9733: 7A        .byte $7A   ; 3A 
- D 0 - - - 0x015744 05:9734: 7D        .byte $7D   ; 3B 
- D 0 - - - 0x015745 05:9735: 7E        .byte $7E   ; 3C 
- D 0 - - - 0x015746 05:9736: 7D        .byte $7D   ; 3D 
- D 0 - - - 0x015747 05:9737: 79        .byte $79   ; 3E 
- D 0 - - - 0x015748 05:9738: 74        .byte $74   ; 3F 
- D 0 - - - 0x015749 05:9739: A9        .byte $A9   ; 40 
- D 0 - - - 0x01574A 05:973A: 1E        .byte $1E   ; 41 
- D 0 - - - 0x01574B 05:973B: 8D        .byte $8D   ; 42 
- D 0 - - - 0x01574C 05:973C: FF        .byte $FF   ; 43 
- D 0 - - - 0x01574D 05:973D: 9F        .byte $9F   ; 44 
- D 0 - - - 0x01574E 05:973E: 4A        .byte $4A   ; 45 
- D 0 - - - 0x01574F 05:973F: 8D        .byte $8D   ; 46 
- D 0 - - - 0x015750 05:9740: FF        .byte $FF   ; 47 
- D 0 - - - 0x015751 05:9741: 9F        .byte $9F   ; 48 
- D 0 - - - 0x015752 05:9742: 4A        .byte $4A   ; 49 
- D 0 - - - 0x015753 05:9743: 8D        .byte $8D   ; 4A 
- D 0 - - - 0x015754 05:9744: FF        .byte $FF   ; 4B 
- D 0 - - - 0x015755 05:9745: 9F        .byte $9F   ; 4C 
- D 0 - - - 0x015756 05:9746: 4A        .byte $4A   ; 4D 
- D 0 - - - 0x015757 05:9747: 8D        .byte $8D   ; 4E 
- D 0 - - - 0x015758 05:9748: FF        .byte $FF   ; 4F 
- D 0 - - - 0x015759 05:9749: 9F        .byte $9F   ; 50 
- D 0 - - - 0x01575A 05:974A: 4A        .byte $4A   ; 51 
- D 0 - - - 0x01575B 05:974B: 8D        .byte $8D   ; 52 
- D 0 - - - 0x01575C 05:974C: FF        .byte $FF   ; 53 
- D 0 - - - 0x01575D 05:974D: 9F        .byte $9F   ; 54 
- D 0 - - - 0x01575E 05:974E: A9        .byte $A9   ; 55 
- D 0 - - - 0x01575F 05:974F: 18        .byte $18   ; 56 
- D 0 - - - 0x015760 05:9750: 8D        .byte $8D   ; 57 
- D 0 - - - 0x015761 05:9751: FF        .byte $FF   ; 58 
- D 0 - - - 0x015762 05:9752: BF        .byte $BF   ; 59 
- D 0 - - - 0x015763 05:9753: 4A        .byte $4A   ; 5A 
- D 0 - - - 0x015764 05:9754: 8D        .byte $8D   ; 5B 
- D 0 - - - 0x015765 05:9755: FF        .byte $FF   ; 5C 
- D 0 - - - 0x015766 05:9756: BF        .byte $BF   ; 5D 
- D 0 - - - 0x015767 05:9757: 4A        .byte $4A   ; 5E 
- D 0 - - - 0x015768 05:9758: 8D        .byte $8D   ; 5F 
- D 0 - - - 0x015769 05:9759: FF        .byte $FF   ; 60 
- D 0 - - - 0x01576A 05:975A: BF        .byte $BF   ; 61 
- D 0 - - - 0x01576B 05:975B: 4A        .byte $4A   ; 62 
- D 0 - - - 0x01576C 05:975C: 8D        .byte $8D   ; 63 
- D 0 - - - 0x01576D 05:975D: FF        .byte $FF   ; 64 
- D 0 - - - 0x01576E 05:975E: BF        .byte $BF   ; 65 
- D 0 - - - 0x01576F 05:975F: 4A        .byte $4A   ; 66 
- D 0 - - - 0x015770 05:9760: 8D        .byte $8D   ; 67 
- D 0 - - - 0x015771 05:9761: FF        .byte $FF   ; 68 
- D 0 - - - 0x015772 05:9762: BF        .byte $BF   ; 69 
- D 0 - - - 0x015773 05:9763: A9        .byte $A9   ; 6A 
- D 0 - - - 0x015774 05:9764: 17        .byte $17   ; 6B 
- D 0 - - - 0x015775 05:9765: 8D        .byte $8D   ; 6C 
- D 0 - - - 0x015776 05:9766: FF        .byte $FF   ; 6D 
- D 0 - - - 0x015777 05:9767: DF        .byte $DF   ; 6E 
- D 0 - - - 0x015778 05:9768: 4A        .byte $4A   ; 6F 
- D 0 - - - 0x015779 05:9769: 8D        .byte $8D   ; 70 
- D 0 - - - 0x01577A 05:976A: FF        .byte $FF   ; 71 
- D 0 - - - 0x01577B 05:976B: DF        .byte $DF   ; 72 
- D 0 - - - 0x01577C 05:976C: 4A        .byte $4A   ; 73 
- D 0 - - - 0x01577D 05:976D: 8D        .byte $8D   ; 74 
- D 0 - - - 0x01577E 05:976E: FF        .byte $FF   ; 75 
- D 0 - - - 0x01577F 05:976F: DF        .byte $DF   ; 76 
- D 0 - - - 0x015780 05:9770: 4A        .byte $4A   ; 77 
- D 0 - - - 0x015781 05:9771: 8D        .byte $8D   ; 78 
- D 0 - - - 0x015782 05:9772: FF        .byte $FF   ; 79 
- D 0 - - - 0x015783 05:9773: DF        .byte $DF   ; 7A 
- D 0 - - - 0x015784 05:9774: 4A        .byte $4A   ; 7B 
- D 0 - - - 0x015785 05:9775: 8D        .byte $8D   ; 7C 
- D 0 - - - 0x015786 05:9776: FF        .byte $FF   ; 7D 
- D 0 - - - 0x015787 05:9777: DF        .byte $DF   ; 7E 
- D 0 - - - 0x015788 05:9778: A9        .byte $A9   ; 7F 
- D 0 - - - 0x015789 05:9779: 0F        .byte $0F   ; 80 
- D 0 - - - 0x01578A 05:977A: 8D        .byte $8D   ; 81 
- D 0 - - - 0x01578B 05:977B: FF        .byte $FF   ; 82 
- D 0 - - - 0x01578C 05:977C: FF        .byte $FF   ; 83 
- D 0 - - - 0x01578D 05:977D: 4A        .byte $4A   ; 84 
- D 0 - - - 0x01578E 05:977E: 8D        .byte $8D   ; 85 
- D 0 - - - 0x01578F 05:977F: FF        .byte $FF   ; 86 
- D 0 - - - 0x015790 05:9780: FF        .byte $FF   ; 87 
- D 0 - - - 0x015791 05:9781: 4A        .byte $4A   ; 88 
- D 0 - - - 0x015792 05:9782: 8D        .byte $8D   ; 89 
- D 0 - - - 0x015793 05:9783: FF        .byte $FF   ; 8A 
- D 0 - - - 0x015794 05:9784: FF        .byte $FF   ; 8B 
- D 0 - - - 0x015795 05:9785: 4A        .byte $4A   ; 8C 
- D 0 - - - 0x015796 05:9786: 8D        .byte $8D   ; 8D 
- D 0 - - - 0x015797 05:9787: FF        .byte $FF   ; 8E 
- D 0 - - - 0x015798 05:9788: FF        .byte $FF   ; 8F 
- D 0 - - - 0x015799 05:9789: 4A        .byte $4A   ; 90 
- D 0 - - - 0x01579A 05:978A: 8D        .byte $8D   ; 91 
- D 0 - - - 0x01579B 05:978B: FF        .byte $FF   ; 92 
- D 0 - - - 0x01579C 05:978C: FF        .byte $FF   ; 93 
- D 0 - - - 0x01579D 05:978D: 60        .byte $60   ; 94 



tbl_978E:
; ???
- D 0 - - - 0x01579E 05:978E: 71 A0     .word _off008_A071_00
- D 0 - - - 0x0157A0 05:9790: 51 AF     .word _off008_AF51_01
- D 0 - - - 0x0157A2 05:9792: 4B A1     .word _off008_A14B_02
- D 0 - - - 0x0157A4 05:9794: F0 AC     .word _off008_ACF0_03
- D 0 - - - 0x0157A6 05:9796: 63 AE     .word _off008_AE63_04
- D 0 - - - 0x0157A8 05:9798: 59 A7     .word _off008_A759_05
- D 0 - - - 0x0157AA 05:979A: B9 A8     .word _off008_A8B9_06
- D 0 - - - 0x0157AC 05:979C: 46 AA     .word _off008_AA46_07
- D 0 - - - 0x0157AE 05:979E: CB AF     .word _off008_AFCB_08



tbl_97A0_nmt_attr:
; nametable attributes
- D 0 - - - 0x0157B0 05:97A0: A9 9E     .word _off009_9EA9_00
- D 0 - - - 0x0157B2 05:97A2: 09 A0     .word _off009_A009_01
- D 0 - - - 0x0157B4 05:97A4: D9 9E     .word _off009_9ED9_02
- D 0 - - - 0x0157B6 05:97A6: A9 9F     .word _off009_9FA9_03
- D 0 - - - 0x0157B8 05:97A8: D9 9F     .word _off009_9FD9_04
- D 0 - - - 0x0157BA 05:97AA: 11 9F     .word _off009_9F11_05
- D 0 - - - 0x0157BC 05:97AC: 41 9F     .word _off009_9F41_06
- D 0 - - - 0x0157BE 05:97AE: 71 9F     .word _off009_9F71_07
- D 0 - - - 0x0157C0 05:97B0: 39 A0     .word _off009_A039_08



tbl_97B2:
; ??? что-то связанное со спрайтами
- D 0 - - - 0x0157C2 05:97B2: 00 00     .word $0000      ; 00
- D 0 - - - 0x0157C4 05:97B4: 00 00     .word $0000      ; 01
- D 0 - - - 0x0157C6 05:97B6: F9 A3     .word _off010_A3F9_02
- D 0 - - - 0x0157C8 05:97B8: 00 00     .word $0000      ; 03
- D 0 - - - 0x0157CA 05:97BA: 00 00     .word $0000      ; 04
- D 0 - - - 0x0157CC 05:97BC: 00 00     .word $0000      ; 05
- D 0 - - - 0x0157CE 05:97BE: 00 00     .word $0000      ; 06
- D 0 - - - 0x0157D0 05:97C0: 00 00     .word $0000      ; 07
- D 0 - - - 0x0157D2 05:97C2: 14 B2     .word _off010_B214_08



tbl_97C4_palette:
- D 0 - - - 0x0157D4 05:97C4: 69 9E     .word _off011_9E69_00
- D 0 - - - 0x0157D6 05:97C6: 49 9E     .word _off011_9E49_01
- D 0 - - - 0x0157D8 05:97C8: 09 9E     .word _off011_9E09_02
- D 0 - - - 0x0157DA 05:97CA: E9 9D     .word _off011_9DE9_03
- D 0 - - - 0x0157DC 05:97CC: E9 9D     .word _off011_9DE9_04
- D 0 - - - 0x0157DE 05:97CE: E9 9D     .word _off011_9DE9_05
- D 0 - - - 0x0157E0 05:97D0: E9 9D     .word _off011_9DE9_06
- D 0 - - - 0x0157E2 05:97D2: 29 9E     .word _off011_9E29_07
- D 0 - - - 0x0157E4 05:97D4: 89 9E     .word _off011_9E89_08



tbl_97D6:
- D 0 - - - 0x0157E6 05:97D6: 00        .byte $00   ; 00 
- D 0 - - - 0x0157E7 05:97D7: 00        .byte $00   ; 01 
- D 0 - - - 0x0157E8 05:97D8: 00        .byte $00   ; 02 
- D 0 - - - 0x0157E9 05:97D9: 00        .byte $00   ; 03 
- D 0 - - - 0x0157EA 05:97DA: 00        .byte $00   ; 04 
- D 0 - - - 0x0157EB 05:97DB: 00        .byte $00   ; 05 
- D 0 - - - 0x0157EC 05:97DC: 00        .byte $00   ; 06 
- D 0 - - - 0x0157ED 05:97DD: 00        .byte $00   ; 07 
- D 0 - - - 0x0157EE 05:97DE: BE        .byte $BE   ; 08 



tbl_97DF:
- D 0 - - - 0x0157EF 05:97DF: 18        .byte $18   ; 00 
- D 0 - - - 0x0157F0 05:97E0: 18        .byte $18   ; 01 
- D 0 - - - 0x0157F1 05:97E1: 19        .byte $19   ; 02 
- D 0 - - - 0x0157F2 05:97E2: 1C        .byte $1C   ; 03 
- D 0 - - - 0x0157F3 05:97E3: 1C        .byte $1C   ; 04 
- D 0 - - - 0x0157F4 05:97E4: 1C        .byte $1C   ; 05 
- D 0 - - - 0x0157F5 05:97E5: 1D        .byte $1D   ; 06 
- D 0 - - - 0x0157F6 05:97E6: 1E        .byte $1E   ; 07 
- D 0 - - - 0x0157F7 05:97E7: 16        .byte $16   ; 08 



tbl_97E8:
- D 0 - - - 0x0157F8 05:97E8: 1C        .byte $1C   ; 00 
- D 0 - - - 0x0157F9 05:97E9: 1C        .byte $1C   ; 01 
- D 0 - - - 0x0157FA 05:97EA: 1B        .byte $1B   ; 02 
- D 0 - - - 0x0157FB 05:97EB: 18        .byte $18   ; 03 
- D 0 - - - 0x0157FC 05:97EC: 18        .byte $18   ; 04 
- D 0 - - - 0x0157FD 05:97ED: 18        .byte $18   ; 05 
- D 0 - - - 0x0157FE 05:97EE: 18        .byte $18   ; 06 
- D 0 - - - 0x0157FF 05:97EF: 1E        .byte $1E   ; 07 
- D 0 - - - 0x015800 05:97F0: 16        .byte $16   ; 08 



tbl_97F1:
- D 0 - - - 0x015801 05:97F1: 00        .byte $00   ; 00 
- D 0 - - - 0x015802 05:97F2: 00        .byte $00   ; 01 
- D 0 - - - 0x015803 05:97F3: FF        .byte $FF   ; 02 
- D 0 - - - 0x015804 05:97F4: 00        .byte $00   ; 03 
- D 0 - - - 0x015805 05:97F5: 00        .byte $00   ; 04 
- D 0 - - - 0x015806 05:97F6: 00        .byte $00   ; 05 
- D 0 - - - 0x015807 05:97F7: 00        .byte $00   ; 06 
- D 0 - - - 0x015808 05:97F8: FF        .byte $FF   ; 07 
- D 0 - - - 0x015809 05:97F9: FF        .byte $FF   ; 08 



tbl_97FA_spr_X:
- - - - - - 0x01580A 05:97FA: 00        .byte $00   ; 00 
- - - - - - 0x01580B 05:97FB: 00        .byte $00   ; 01 
- D 0 - - - 0x01580C 05:97FC: BD        .byte $BD   ; 02 
- - - - - - 0x01580D 05:97FD: 00        .byte $00   ; 03 
- - - - - - 0x01580E 05:97FE: 00        .byte $00   ; 04 
- - - - - - 0x01580F 05:97FF: 00        .byte $00   ; 05 
- - - - - - 0x015810 05:9800: 00        .byte $00   ; 06 
- D 0 - - - 0x015811 05:9801: F8        .byte $F8   ; 07 
- D 0 - - - 0x015812 05:9802: F8        .byte $F8   ; 08 



tbl_9803_spr_Y:
- - - - - - 0x015813 05:9803: 00        .byte $00   ; 00 
- - - - - - 0x015814 05:9804: 00        .byte $00   ; 01 
- D 0 - - - 0x015815 05:9805: 65        .byte $65   ; 02 
- - - - - - 0x015816 05:9806: 00        .byte $00   ; 03 
- - - - - - 0x015817 05:9807: 00        .byte $00   ; 04 
- - - - - - 0x015818 05:9808: 00        .byte $00   ; 05 
- - - - - - 0x015819 05:9809: 00        .byte $00   ; 06 
- D 0 - - - 0x01581A 05:980A: 7C        .byte $7C   ; 07 
- D 0 - - - 0x01581B 05:980B: 7C        .byte $7C   ; 08 



tbl_980C_spr_T:
- - - - - - 0x01581C 05:980C: 00        .byte $00   ; 00 
- - - - - - 0x01581D 05:980D: 00        .byte $00   ; 01 
- D 0 - - - 0x01581E 05:980E: FF        .byte $FF   ; 02 
- - - - - - 0x01581F 05:980F: 00        .byte $00   ; 03 
- - - - - - 0x015820 05:9810: 00        .byte $00   ; 04 
- - - - - - 0x015821 05:9811: 00        .byte $00   ; 05 
- - - - - - 0x015822 05:9812: 00        .byte $00   ; 06 
- D 0 - - - 0x015823 05:9813: 30        .byte $30   ; 07 
- D 0 - - - 0x015824 05:9814: 30        .byte $30   ; 08 



tbl_9815:
- D 0 - - - 0x015825 05:9815: 00        .byte $00   ; 00 
- D 0 - - - 0x015826 05:9816: 00        .byte $00   ; 01 
- D 0 - - - 0x015827 05:9817: FF        .byte $FF   ; 02 
- D 0 - - - 0x015828 05:9818: 00        .byte $00   ; 03 
- D 0 - - - 0x015829 05:9819: 00        .byte $00   ; 04 
- D 0 - - - 0x01582A 05:981A: 00        .byte $00   ; 05 
- D 0 - - - 0x01582B 05:981B: 00        .byte $00   ; 06 
- D 0 - - - 0x01582C 05:981C: 00        .byte $00   ; 07 
- D 0 - - - 0x01582D 05:981D: 00        .byte $00   ; 08 



tbl_981E:
- D 0 - - - 0x01582E 05:981E: 00        .byte $00   ; 00 
- D 0 - - - 0x01582F 05:981F: 00        .byte $00   ; 01 
- D 0 - - - 0x015830 05:9820: 10        .byte $10   ; 02 
- D 0 - - - 0x015831 05:9821: 00        .byte $00   ; 03 
- D 0 - - - 0x015832 05:9822: 00        .byte $00   ; 04 
- D 0 - - - 0x015833 05:9823: 00        .byte $00   ; 05 
- D 0 - - - 0x015834 05:9824: 00        .byte $00   ; 06 
- D 0 - - - 0x015835 05:9825: 10        .byte $10   ; 07 
- D 0 - - - 0x015836 05:9826: 10        .byte $10   ; 08 



tbl_9827:
- D 0 - - - 0x015837 05:9827: 00        .byte $00   ; 00 
- D 0 - - - 0x015838 05:9828: 01        .byte $01   ; 01 
- D 0 - - - 0x015839 05:9829: 02        .byte $02   ; 02 
- D 0 - - - 0x01583A 05:982A: 06        .byte $06   ; 03 
- D 0 - - - 0x01583B 05:982B: 0A        .byte $0A   ; 04 
- - - - - - 0x01583C 05:982C: 0A        .byte $0A   ; 05 
- - - - - - 0x01583D 05:982D: 0B        .byte $0B   ; 06 
- - - - - - 0x01583E 05:982E: 0C        .byte $0C   ; 07 
- - - - - - 0x01583F 05:982F: 11        .byte $11   ; 08 



tbl_9830:
- D 0 - - - 0x015840 05:9830: 00        .byte $00   ; 00 
- D 0 - - - 0x015841 05:9831: 00        .byte $00   ; 01 
- D 0 - - - 0x015842 05:9832: 00        .byte $00   ; 02 
- D 0 - - - 0x015843 05:9833: 00        .byte $00   ; 03 
- D 0 - - - 0x015844 05:9834: 00        .byte $00   ; 04 
- - - - - - 0x015845 05:9835: 00        .byte $00   ; 05 
- - - - - - 0x015846 05:9836: 00        .byte $00   ; 06 
- - - - - - 0x015847 05:9837: 00        .byte $00   ; 07 
- - - - - - 0x015848 05:9838: 00        .byte $00   ; 08 



sub_9839:
bra_9839_loop:
C - - - - - 0x015849 05:9839: AA        TAX
C - - - - - 0x01584A 05:983A: A0 00     LDY #$00
C - - - - - 0x01584C 05:983C: 8C 00 20  STY $2000
C - - - - - 0x01584F 05:983F: 8C 01 20  STY $2001
C - - - - - 0x015852 05:9842: 2C 02 20  BIT $2002
C - - - - - 0x015855 05:9845: 10 F2     BPL bra_9839_loop
C - - - - - 0x015857 05:9847: 2C 02 20  BIT $2002
C - - - - - 0x01585A 05:984A: A9 20     LDA #> $2000
C - - - - - 0x01585C 05:984C: 8D 06 20  STA $2006
C - - - - - 0x01585F 05:984F: A9 00     LDA #< $2000
C - - - - - 0x015861 05:9851: 8D 06 20  STA $2006
C - - - - - 0x015864 05:9854: A8        TAY
bra_9855_loop:
C - - - - - 0x015865 05:9855: 8D 07 20  STA $2007
C - - - - - 0x015868 05:9858: 8D 07 20  STA $2007
C - - - - - 0x01586B 05:985B: 8D 07 20  STA $2007
C - - - - - 0x01586E 05:985E: 8D 07 20  STA $2007
C - - - - - 0x015871 05:9861: C8        INY
C - - - - - 0x015872 05:9862: D0 F1     BNE bra_9855_loop
C - - - - - 0x015874 05:9864: 2C 02 20  BIT $2002
C - - - - - 0x015877 05:9867: A9 24     LDA #> $2400
C - - - - - 0x015879 05:9869: 8D 06 20  STA $2006
C - - - - - 0x01587C 05:986C: A9 00     LDA #< $2400
C - - - - - 0x01587E 05:986E: 8D 06 20  STA $2006
C - - - - - 0x015881 05:9871: A8        TAY
bra_9872_loop:
C - - - - - 0x015882 05:9872: 8D 07 20  STA $2007
C - - - - - 0x015885 05:9875: 8D 07 20  STA $2007
C - - - - - 0x015888 05:9878: 8D 07 20  STA $2007
C - - - - - 0x01588B 05:987B: 8D 07 20  STA $2007
C - - - - - 0x01588E 05:987E: C8        INY
C - - - - - 0x01588F 05:987F: D0 F1     BNE bra_9872_loop
C - - - - - 0x015891 05:9881: A0 00     LDY #$00
C - - - - - 0x015893 05:9883: A9 F0     LDA #$F0
bra_9885_loop:
C - - - - - 0x015895 05:9885: 99 00 02  STA ram_oam,Y
C - - - - - 0x015898 05:9888: C8        INY
C - - - - - 0x015899 05:9889: D0 FA     BNE bra_9885_loop
; Y = 00
C - - - - - 0x01589B 05:988B: BD E8 97  LDA tbl_97E8,X
C - - - - - 0x01589E 05:988E: 8D A9 03  STA ram_03A9_obj
C - - - - - 0x0158A1 05:9891: BD DF 97  LDA tbl_97DF,X
C - - - - - 0x0158A4 05:9894: 8D A8 03  STA ram_039C_obj + $0C
C - - - - - 0x0158A7 05:9897: BD 15 98  LDA tbl_9815,X
C - - - - - 0x0158AA 05:989A: 8D D0 03  STA ram_03D0
C - - - - - 0x0158AD 05:989D: BD 1E 98  LDA tbl_981E,X
C - - - - - 0x0158B0 05:98A0: 8D D1 03  STA ram_03D1
C - - - - - 0x0158B3 05:98A3: BD F1 97  LDA tbl_97F1,X
C - - - - - 0x0158B6 05:98A6: F0 1A     BEQ bra_98C2
C - - - - - 0x0158B8 05:98A8: 8D AA 03  STA ram_03A9_obj + $01
C - - - - - 0x0158BB 05:98AB: BD FA 97  LDA tbl_97FA_spr_X,X
C - - - - - 0x0158BE 05:98AE: 8D 03 02  STA ram_spr_X
C - - - - - 0x0158C1 05:98B1: BD 03 98  LDA tbl_9803_spr_Y,X
C - - - - - 0x0158C4 05:98B4: 8D 00 02  STA ram_spr_Y
C - - - - - 0x0158C7 05:98B7: BD 0C 98  LDA tbl_980C_spr_T,X
C - - - - - 0x0158CA 05:98BA: 8D 01 02  STA ram_spr_T
C - - - - - 0x0158CD 05:98BD: A9 FF     LDA #$FF
C - - - - - 0x0158CF 05:98BF: 8D 02 02  STA ram_spr_A
bra_98C2:
C - - - - - 0x0158D2 05:98C2: 8A        TXA
C - - - - - 0x0158D3 05:98C3: 0A        ASL
C - - - - - 0x0158D4 05:98C4: AA        TAX
C - - - - - 0x0158D5 05:98C5: BD 8E 97  LDA tbl_978E,X
C - - - - - 0x0158D8 05:98C8: 85 50     STA ram_0050_data
C - - - - - 0x0158DA 05:98CA: BD B2 97  LDA tbl_97B2,X
C - - - - - 0x0158DD 05:98CD: 85 52     STA ram_0052_data
C - - - - - 0x0158DF 05:98CF: BD C4 97  LDA tbl_97C4_palette,X
C - - - - - 0x0158E2 05:98D2: 85 54     STA ram_0054_data
C - - - - - 0x0158E4 05:98D4: BD A0 97  LDA tbl_97A0_nmt_attr,X
C - - - - - 0x0158E7 05:98D7: 85 56     STA ram_0056_data
C - - - - - 0x0158E9 05:98D9: E8        INX
C - - - - - 0x0158EA 05:98DA: BD 8E 97  LDA tbl_978E,X
C - - - - - 0x0158ED 05:98DD: 85 51     STA ram_0050_data + $01
C - - - - - 0x0158EF 05:98DF: BD B2 97  LDA tbl_97B2,X
C - - - - - 0x0158F2 05:98E2: 85 53     STA ram_0052_data + $01
C - - - - - 0x0158F4 05:98E4: BD C4 97  LDA tbl_97C4_palette,X
C - - - - - 0x0158F7 05:98E7: 85 55     STA ram_0054_data + $01
C - - - - - 0x0158F9 05:98E9: BD A0 97  LDA tbl_97A0_nmt_attr,X
C - - - - - 0x0158FC 05:98EC: 85 57     STA ram_0056_data + $01
C - - - - - 0x0158FE 05:98EE: A9 24     LDA #$24    ; 2400
C - - - - - 0x015900 05:98F0: 8D 06 20  STA $2006
C - - - - - 0x015903 05:98F3: 8C 06 20  STY $2006
C - - - - - 0x015906 05:98F6: 98        TYA ; 00
bra_98F7_loop:
C - - - - - 0x015907 05:98F7: 8D 07 20  STA $2007
C - - - - - 0x01590A 05:98FA: 8D 07 20  STA $2007
C - - - - - 0x01590D 05:98FD: 8D 07 20  STA $2007
C - - - - - 0x015910 05:9900: 8D 07 20  STA $2007
C - - - - - 0x015913 05:9903: C8        INY
C - - - - - 0x015914 05:9904: D0 F1     BNE bra_98F7_loop
; Y = 00
C - - - - - 0x015916 05:9906: A9 20     LDA #$20    ; 2000
C - - - - - 0x015918 05:9908: 8D 06 20  STA $2006
C - - - - - 0x01591B 05:990B: 8C 06 20  STY $2006
loc_990E_loop:
bra_990E_loop:
C D 0 - - - 0x01591E 05:990E: A0 00     LDY #$00
C - - - - - 0x015920 05:9910: B1 50     LDA (ram_0050_data),Y
C - - - - - 0x015922 05:9912: 10 17     BPL bra_992B_00_7F
C - - - - - 0x015924 05:9914: C9 FF     CMP #$FF
C - - - - - 0x015926 05:9916: F0 2C     BEQ bra_9944_FF
; 80-FE
C - - - - - 0x015928 05:9918: 29 7F     AND #$7F
C - - - - - 0x01592A 05:991A: AA        TAX
C - - - - - 0x01592B 05:991B: 20 3D 99  JSR sub_993D_increase_0050
bra_991E_loop:
C - - - - - 0x01592E 05:991E: B1 50     LDA (ram_0050_data),Y
C - - - - - 0x015930 05:9920: 8D 07 20  STA $2007
C - - - - - 0x015933 05:9923: 20 3D 99  JSR sub_993D_increase_0050
C - - - - - 0x015936 05:9926: CA        DEX
C - - - - - 0x015937 05:9927: D0 F5     BNE bra_991E_loop
C - - - - - 0x015939 05:9929: F0 E3     BEQ bra_990E_loop    ; jmp
bra_992B_00_7F:
C - - - - - 0x01593B 05:992B: AA        TAX
C - - - - - 0x01593C 05:992C: 20 3D 99  JSR sub_993D_increase_0050
C - - - - - 0x01593F 05:992F: B1 50     LDA (ram_0050_data),Y
bra_9931_loop:
C - - - - - 0x015941 05:9931: 8D 07 20  STA $2007
C - - - - - 0x015944 05:9934: CA        DEX
C - - - - - 0x015945 05:9935: D0 FA     BNE bra_9931_loop
C - - - - - 0x015947 05:9937: 20 3D 99  JSR sub_993D_increase_0050
C - - - - - 0x01594A 05:993A: 4C 0E 99  JMP loc_990E_loop



sub_993D_increase_0050:
C - - - - - 0x01594D 05:993D: E6 50     INC ram_0050_data
C - - - - - 0x01594F 05:993F: D0 02     BNE bra_9943_RTS    ; if not overflow
C - - - - - 0x015951 05:9941: E6 51     INC ram_0050_data + $01
bra_9943_RTS:
C - - - - - 0x015953 05:9943: 60        RTS



bra_9944_FF:
C - - - - - 0x015954 05:9944: A9 23     LDA #> $23C0
C - - - - - 0x015956 05:9946: 8D 06 20  STA $2006
C - - - - - 0x015959 05:9949: A2 C0     LDX #< $23C0
C - - - - - 0x01595B 05:994B: 8E 06 20  STX $2006
bra_994E_loop:
C - - - - - 0x01595E 05:994E: B1 56     LDA (ram_0056_data),Y
C - - - - - 0x015960 05:9950: 8D 07 20  STA $2007
C - - - - - 0x015963 05:9953: C8        INY
C - - - - - 0x015964 05:9954: E8        INX
C - - - - - 0x015965 05:9955: D0 F7     BNE bra_994E_loop
C - - - - - 0x015967 05:9957: A0 1F     LDY #$1F
bra_9959_loop:
C - - - - - 0x015969 05:9959: B1 54     LDA (ram_0054_data),Y
C - - - - - 0x01596B 05:995B: 99 00 03  STA ram_0300_ppu_buffer,Y
C - - - - - 0x01596E 05:995E: 88        DEY
C - - - - - 0x01596F 05:995F: 10 F8     BPL bra_9959_loop
C - - - - - 0x015971 05:9961: A5 52     LDA ram_0052_data
C - - - - - 0x015973 05:9963: D0 07     BNE bra_996C
C - - - - - 0x015975 05:9965: A5 53     LDA ram_0052_data + $01
C - - - - - 0x015977 05:9967: D0 03     BNE bra_996C
C - - - - - 0x015979 05:9969: 4C F1 99  JMP loc_99F1_RTS
bra_996C:
C - - - - - 0x01597C 05:996C: A9 0C     LDA #$0C
C - - - - - 0x01597E 05:996E: 85 50     STA ram_0050_unk
C - - - - - 0x015980 05:9970: A9 FF     LDA #$FF
C - - - - - 0x015982 05:9972: 85 51     STA ram_0051_unk
C - - - - - 0x015984 05:9974: A9 00     LDA #$00
C - - - - - 0x015986 05:9976: 8D CF 03  STA ram_03CF
bra_9979_loop:
C - - - - - 0x015989 05:9979: A2 00     LDX #$00
bra_997B_loop:
C - - - - - 0x01598B 05:997B: A0 00     LDY #$00
C - - - - - 0x01598D 05:997D: B1 52     LDA (ram_0052_data),Y
C - - - - - 0x01598F 05:997F: F0 53     BEQ bra_99D4_00
C - - - - - 0x015991 05:9981: 85 40     STA ram_0040
C - - - - - 0x015993 05:9983: C9 FF     CMP #$FF
C - - - - - 0x015995 05:9985: D0 0B     BNE bra_9992
; FF
C - - - - - 0x015997 05:9987: AD CF 03  LDA ram_03CF
C - - - - - 0x01599A 05:998A: 49 80     EOR #$80
C - - - - - 0x01599C 05:998C: 8D CF 03  STA ram_03CF
C - - - - - 0x01599F 05:998F: 4C D4 99  JMP loc_99D4
bra_9992:
C - - - - - 0x0159A2 05:9992: A5 40     LDA ram_0040
C - - - - - 0x0159A4 05:9994: 29 3F     AND #$3F
C - - - - - 0x0159A6 05:9996: A4 50     LDY ram_0050_unk
C - - - - - 0x0159A8 05:9998: 8A        TXA
C - - - - - 0x0159A9 05:9999: 48        PHA
C - - - - - 0x0159AA 05:999A: AE A7 03  LDX ram_039C_obj + $0B
C - - - - - 0x0159AD 05:999D: A5 40     LDA ram_0040
C - - - - - 0x0159AF 05:999F: 29 3F     AND #$3F
C - - - - - 0x0159B1 05:99A1: 18        CLC
C - - - - - 0x0159B2 05:99A2: 7D D6 97  ADC tbl_97D6,X
C - - - - - 0x0159B5 05:99A5: 2C CF 03  BIT ram_03CF
C - - - - - 0x0159B8 05:99A8: 10 02     BPL bra_99AC
C - - - - - 0x0159BA 05:99AA: 69 34     ADC #$34
bra_99AC:
C - - - - - 0x0159BC 05:99AC: 99 01 02  STA ram_spr_T,Y
C - - - - - 0x0159BF 05:99AF: 68        PLA
C - - - - - 0x0159C0 05:99B0: AA        TAX
C - - - - - 0x0159C1 05:99B1: 0A        ASL
C - - - - - 0x0159C2 05:99B2: 0A        ASL
C - - - - - 0x0159C3 05:99B3: 0A        ASL
C - - - - - 0x0159C4 05:99B4: 99 03 02  STA ram_spr_X,Y
C - - - - - 0x0159C7 05:99B7: A5 51     LDA ram_0051_unk
C - - - - - 0x0159C9 05:99B9: 18        CLC
C - - - - - 0x0159CA 05:99BA: 6D D1 03  ADC ram_03D1
C - - - - - 0x0159CD 05:99BD: 99 00 02  STA ram_spr_Y,Y
C - - - - - 0x0159D0 05:99C0: A5 40     LDA ram_0040
C - - - - - 0x0159D2 05:99C2: 4A        LSR
C - - - - - 0x0159D3 05:99C3: 4A        LSR
C - - - - - 0x0159D4 05:99C4: 4A        LSR
C - - - - - 0x0159D5 05:99C5: 4A        LSR
C - - - - - 0x0159D6 05:99C6: 4A        LSR
C - - - - - 0x0159D7 05:99C7: 4A        LSR
C - - - - - 0x0159D8 05:99C8: 99 02 02  STA ram_spr_A,Y
C - - - - - 0x0159DB 05:99CB: A5 50     LDA ram_0050_unk
C - - - - - 0x0159DD 05:99CD: 18        CLC
C - - - - - 0x0159DE 05:99CE: 69 04     ADC #$04
C - - - - - 0x0159E0 05:99D0: 85 50     STA ram_0050_unk
C - - - - - 0x0159E2 05:99D2: B0 1D     BCS bra_99F1_RTS
bra_99D4_00:
loc_99D4:
C D 0 - - - 0x0159E4 05:99D4: A5 52     LDA ram_0052_data
C - - - - - 0x0159E6 05:99D6: 18        CLC
C - - - - - 0x0159E7 05:99D7: 69 01     ADC #< $0001
C - - - - - 0x0159E9 05:99D9: 85 52     STA ram_0052_data
C - - - - - 0x0159EB 05:99DB: A5 53     LDA ram_0052_data + $01
C - - - - - 0x0159ED 05:99DD: 69 00     ADC #> $0001
C - - - - - 0x0159EF 05:99DF: 85 53     STA ram_0052_data + $01
C - - - - - 0x0159F1 05:99E1: E8        INX
C - - - - - 0x0159F2 05:99E2: E0 20     CPX #$20
C - - - - - 0x0159F4 05:99E4: 90 95     BCC bra_997B_loop
C - - - - - 0x0159F6 05:99E6: A5 51     LDA ram_0051_unk
C - - - - - 0x0159F8 05:99E8: 18        CLC
C - - - - - 0x0159F9 05:99E9: 69 08     ADC #$08
C - - - - - 0x0159FB 05:99EB: 85 51     STA ram_0051_unk
C - - - - - 0x0159FD 05:99ED: C9 C8     CMP #$C8
C - - - - - 0x0159FF 05:99EF: 90 88     BCC bra_9979_loop
bra_99F1_RTS:
loc_99F1_RTS:   ; bzk optimize
C D 0 - - - 0x015A01 05:99F1: 60        RTS



sub_99F2:
C - - - - - 0x015A02 05:99F2: A2 00     LDX #$00
C - - - - - 0x015A04 05:99F4: AD 3C 06  LDA ram_063C
C - - - - - 0x015A07 05:99F7: 9D D2 06  STA ram_06D2,X
C - - - - - 0x015A0A 05:99FA: 8D C6 03  STA ram_03C6
C - - - - - 0x015A0D 05:99FD: AD 3D 06  LDA ram_063C + $01
C - - - - - 0x015A10 05:9A00: 9D D4 06  STA ram_06D4,X
C - - - - - 0x015A13 05:9A03: 8D C7 03  STA ram_03C7
C - - - - - 0x015A16 05:9A06: A9 00     LDA #$00
C - - - - - 0x015A18 05:9A08: 8D D8 03  STA ram_03D8
C - - - - - 0x015A1B 05:9A0B: A2 F1     LDX #< ram_07F1
C - - - - - 0x015A1D 05:9A0D: A0 07     LDY #> ram_07F1
C - - - - - 0x015A1F 05:9A0F: 20 7F 9D  JSR sub_9D7F
C - - - - - 0x015A22 05:9A12: A2 00     LDX #$00
C - - - - - 0x015A24 05:9A14: A0 00     LDY #$00
bra_9A16_loop:
C - - - - - 0x015A26 05:9A16: BD F1 07  LDA ram_07F1,X
C - - - - - 0x015A29 05:9A19: 9D E0 07  STA ram_07E0,X
C - - - - - 0x015A2C 05:9A1C: E8        INX
C - - - - - 0x015A2D 05:9A1D: E0 05     CPX #$05
C - - - - - 0x015A2F 05:9A1F: D0 F5     BNE bra_9A16_loop
bra_9A21_loop:
; 07E5-07EE
C - - - - - 0x015A31 05:9A21: A9 00     LDA #$00
C - - - - - 0x015A33 05:9A23: 9D E0 07  STA ram_07E0,X
C - - - - - 0x015A36 05:9A26: E8        INX
C - - - - - 0x015A37 05:9A27: E0 0F     CPX #$0F
C - - - - - 0x015A39 05:9A29: 90 F6     BCC bra_9A21_loop
C - - - - - 0x015A3B 05:9A2B: A9 00     LDA #$00
C - - - - - 0x015A3D 05:9A2D: 8D F0 07  STA ram_07F0
C - - - - - 0x015A40 05:9A30: 8D EF 07  STA ram_07EF
C - - - - - 0x015A43 05:9A33: A9 70     LDA #$70
C - - - - - 0x015A45 05:9A35: 85 E2     STA ram_00E2
C - - - - - 0x015A47 05:9A37: A9 07     LDA #$07
C - - - - - 0x015A49 05:9A39: 85 E3     STA ram_00E3
bra_9A3B:
C - - - - - 0x015A4B 05:9A3B: A0 00     LDY #$00
C - - - - - 0x015A4D 05:9A3D: AD F0 07  LDA ram_07F0
C - - - - - 0x015A50 05:9A40: C9 06     CMP #$06
C - - - - - 0x015A52 05:9A42: B0 36     BCS bra_9A7A_RTS
bra_9A44_loop:
C - - - - - 0x015A54 05:9A44: B9 E0 07  LDA ram_07E0,Y
C - - - - - 0x015A57 05:9A47: D1 E2     CMP (ram_00E2),Y
C - - - - - 0x015A59 05:9A49: 90 07     BCC bra_9A52
C - - - - - 0x015A5B 05:9A4B: D0 1A     BNE bra_9A67
C - - - - - 0x015A5D 05:9A4D: C8        INY
C - - - - - 0x015A5E 05:9A4E: C0 05     CPY #$05
C - - - - - 0x015A60 05:9A50: D0 F2     BNE bra_9A44_loop
bra_9A52:
C - - - - - 0x015A62 05:9A52: EE EF 07  INC ram_07EF
bra_9A55:
C - - - - - 0x015A65 05:9A55: EE F0 07  INC ram_07F0
C - - - - - 0x015A68 05:9A58: A5 E2     LDA ram_00E2
C - - - - - 0x015A6A 05:9A5A: 18        CLC
C - - - - - 0x015A6B 05:9A5B: 69 0F     ADC #< $000F
C - - - - - 0x015A6D 05:9A5D: 85 E2     STA ram_00E2
C - - - - - 0x015A6F 05:9A5F: A5 E3     LDA ram_00E3
C - - - - - 0x015A71 05:9A61: 69 00     ADC #> $000F
C - - - - - 0x015A73 05:9A63: 85 E3     STA ram_00E3
C - - - - - 0x015A75 05:9A65: D0 D4     BNE bra_9A3B    ; jmp?
bra_9A67:
C - - - - - 0x015A77 05:9A67: A0 0E     LDY #$0E
bra_9A69_loop:
C - - - - - 0x015A79 05:9A69: B1 E2     LDA (ram_00E2),Y
C - - - - - 0x015A7B 05:9A6B: AA        TAX
C - - - - - 0x015A7C 05:9A6C: B9 E0 07  LDA ram_07E0,Y
C - - - - - 0x015A7F 05:9A6F: 91 E2     STA (ram_00E2),Y
C - - - - - 0x015A81 05:9A71: 8A        TXA
C - - - - - 0x015A82 05:9A72: 99 E0 07  STA ram_07E0,Y
C - - - - - 0x015A85 05:9A75: 88        DEY
C - - - - - 0x015A86 05:9A76: 10 F1     BPL bra_9A69_loop
C - - - - - 0x015A88 05:9A78: 30 DB     BMI bra_9A55    ; jmp
bra_9A7A_RTS:
C - - - - - 0x015A8A 05:9A7A: 60        RTS



tbl_9A7B:
- D 0 - - - 0x015A8B 05:9A7B: 0F        .byte $0F   ; 00 
- D 0 - - - 0x015A8C 05:9A7C: 1B        .byte $1B   ; 01 
- D 0 - - - 0x015A8D 05:9A7D: 1C        .byte $1C   ; 02 
- D 0 - - - 0x015A8E 05:9A7E: 1D        .byte $1D   ; 03 
- D 0 - - - 0x015A8F 05:9A7F: 1E        .byte $1E   ; 04 
- D 0 - - - 0x015A90 05:9A80: 1F        .byte $1F   ; 05 
- D 0 - - - 0x015A91 05:9A81: 20        .byte $20   ; 06 
- - - - - - 0x015A92 05:9A82: 21        .byte $21   ; 07 
- D 0 - - - 0x015A93 05:9A83: 22        .byte $22   ; 08 
- - - - - - 0x015A94 05:9A84: 23        .byte $23   ; 09 
- - - - - - 0x015A95 05:9A85: 01        .byte $01   ; 0A 
- - - - - - 0x015A96 05:9A86: 00        .byte $00   ; 0B 
- - - - - - 0x015A97 05:9A87: 02        .byte $02   ; 0C 
- - - - - - 0x015A98 05:9A88: 00        .byte $00   ; 0D 
- - - - - - 0x015A99 05:9A89: 00        .byte $00   ; 0E 
- - - - - - 0x015A9A 05:9A8A: 07        .byte $07   ; 0F 
- - - - - - 0x015A9B 05:9A8B: 24        .byte $24   ; 10 
- - - - - - 0x015A9C 05:9A8C: 08        .byte $08   ; 11 
- - - - - - 0x015A9D 05:9A8D: 01        .byte $01   ; 12 
- - - - - - 0x015A9E 05:9A8E: 12        .byte $12   ; 13 
- - - - - - 0x015A9F 05:9A8F: 12        .byte $12   ; 14 
- - - - - - 0x015AA0 05:9A90: 09        .byte $09   ; 15 
- - - - - - 0x015AA1 05:9A91: 13        .byte $13   ; 16 
- - - - - - 0x015AA2 05:9A92: 0F        .byte $0F   ; 17 
- - - - - - 0x015AA3 05:9A93: 0E        .byte $0E   ; 18 
- - - - - - 0x015AA4 05:9A94: 00        .byte $00   ; 19 
- - - - - - 0x015AA5 05:9A95: 07        .byte $07   ; 1A 
- - - - - - 0x015AA6 05:9A96: 05        .byte $05   ; 1B 
- - - - - - 0x015AA7 05:9A97: 03        .byte $03   ; 1C 
- - - - - - 0x015AA8 05:9A98: 00        .byte $00   ; 1D 
- - - - - - 0x015AA9 05:9A99: 13        .byte $13   ; 1E 
- - - - - - 0x015AAA 05:9A9A: 24        .byte $24   ; 1F 
- - - - - - 0x015AAB 05:9A9B: 0E        .byte $0E   ; 20 
- - - - - - 0x015AAC 05:9A9C: 09        .byte $09   ; 21 
- - - - - - 0x015AAD 05:9A9D: 03        .byte $03   ; 22 
- - - - - - 0x015AAE 05:9A9E: 0F        .byte $0F   ; 23 
- - - - - - 0x015AAF 05:9A9F: 0C        .byte $0C   ; 24 
- - - - - - 0x015AB0 05:9AA0: 00        .byte $00   ; 25 
- - - - - - 0x015AB1 05:9AA1: 00        .byte $00   ; 26 
- - - - - - 0x015AB2 05:9AA2: 00        .byte $00   ; 27 
- - - - - - 0x015AB3 05:9AA3: 00        .byte $00   ; 28 
- - - - - - 0x015AB4 05:9AA4: 07        .byte $07   ; 29 
- - - - - - 0x015AB5 05:9AA5: 00        .byte $00   ; 2A 
- - - - - - 0x015AB6 05:9AA6: 00        .byte $00   ; 2B 
- - - - - - 0x015AB7 05:9AA7: 00        .byte $00   ; 2C 
- - - - - - 0x015AB8 05:9AA8: 13        .byte $13   ; 2D 
- - - - - - 0x015AB9 05:9AA9: 24        .byte $24   ; 2E 
- - - - - - 0x015ABA 05:9AAA: 03        .byte $03   ; 2F 
- - - - - - 0x015ABB 05:9AAB: 12        .byte $12   ; 30 
- - - - - - 0x015ABC 05:9AAC: 0F        .byte $0F   ; 31 
- - - - - - 0x015ABD 05:9AAD: 17        .byte $17   ; 32 
- - - - - - 0x015ABE 05:9AAE: 00        .byte $00   ; 33 
- - - - - - 0x015ABF 05:9AAF: 00        .byte $00   ; 34 
- - - - - - 0x015AC0 05:9AB0: 00        .byte $00   ; 35 
- - - - - - 0x015AC1 05:9AB1: 00        .byte $00   ; 36 
- - - - - - 0x015AC2 05:9AB2: 00        .byte $00   ; 37 
- - - - - - 0x015AC3 05:9AB3: 04        .byte $04   ; 38 
- - - - - - 0x015AC4 05:9AB4: 00        .byte $00   ; 39 
- - - - - - 0x015AC5 05:9AB5: 06        .byte $06   ; 3A 
- - - - - - 0x015AC6 05:9AB6: 05        .byte $05   ; 3B 
- - - - - - 0x015AC7 05:9AB7: 08        .byte $08   ; 3C 
- - - - - - 0x015AC8 05:9AB8: 24        .byte $24   ; 3D 
- - - - - - 0x015AC9 05:9AB9: 02        .byte $02   ; 3E 
- - - - - - 0x015ACA 05:9ABA: 09        .byte $09   ; 3F 
- - - - - - 0x015ACB 05:9ABB: 0E        .byte $0E   ; 40 
- - - - - - 0x015ACC 05:9ABC: 0E        .byte $0E   ; 41 
- - - - - - 0x015ACD 05:9ABD: 13        .byte $13   ; 42 
- - - - - - 0x015ACE 05:9ABE: 00        .byte $00   ; 43 
- - - - - - 0x015ACF 05:9ABF: 00        .byte $00   ; 44 
- - - - - - 0x015AD0 05:9AC0: 00        .byte $00   ; 45 
- - - - - - 0x015AD1 05:9AC1: 00        .byte $00   ; 46 
- - - - - - 0x015AD2 05:9AC2: 00        .byte $00   ; 47 
- - - - - - 0x015AD3 05:9AC3: 08        .byte $08   ; 48 
- - - - - - 0x015AD4 05:9AC4: 00        .byte $00   ; 49 
- - - - - - 0x015AD5 05:9AC5: 00        .byte $00   ; 4A 
- - - - - - 0x015AD6 05:9AC6: 0A        .byte $0A   ; 4B 
- - - - - - 0x015AD7 05:9AC7: 24        .byte $24   ; 4C 
- - - - - - 0x015AD8 05:9AC8: 14        .byte $14   ; 4D 
- - - - - - 0x015AD9 05:9AC9: 05        .byte $05   ; 4E 
- - - - - - 0x015ADA 05:9ACA: 0C        .byte $0C   ; 4F 
- - - - - - 0x015ADB 05:9ACB: 00        .byte $00   ; 50 
- - - - - - 0x015ADC 05:9ACC: 00        .byte $00   ; 51 
- - - - - - 0x015ADD 05:9ACD: 00        .byte $00   ; 52 
- - - - - - 0x015ADE 05:9ACE: 00        .byte $00   ; 53 
- - - - - - 0x015ADF 05:9ACF: 00        .byte $00   ; 54 
- - - - - - 0x015AE0 05:9AD0: 00        .byte $00   ; 55 
- - - - - - 0x015AE1 05:9AD1: 00        .byte $00   ; 56 
- - - - - - 0x015AE2 05:9AD2: 00        .byte $00   ; 57 
- - - - - - 0x015AE3 05:9AD3: 04        .byte $04   ; 58 
- - - - - - 0x015AE4 05:9AD4: 05        .byte $05   ; 59 
- - - - - - 0x015AE5 05:9AD5: 0A        .byte $0A   ; 5A 
- - - - - - 0x015AE6 05:9AD6: 24        .byte $24   ; 5B 
- - - - - - 0x015AE7 05:9AD7: 02        .byte $02   ; 5C 
- - - - - - 0x015AE8 05:9AD8: 0F        .byte $0F   ; 5D 
- - - - - - 0x015AE9 05:9AD9: 0E        .byte $0E   ; 5E 
- - - - - - 0x015AEA 05:9ADA: 01        .byte $01   ; 5F 
- - - - - - 0x015AEB 05:9ADB: 12        .byte $12   ; 60 
- - - - - - 0x015AEC 05:9ADC: 00        .byte $00   ; 61 
- - - - - - 0x015AED 05:9ADD: 00        .byte $00   ; 62 
- - - - - - 0x015AEE 05:9ADE: 00        .byte $00   ; 63 



sub_9ADF:
C - - - - - 0x015AEF 05:9ADF: 2C 02 20  BIT $2002
C - - - - - 0x015AF2 05:9AE2: A9 21     LDA #> $2147
C - - - - - 0x015AF4 05:9AE4: 8D 06 20  STA $2006
C - - - - - 0x015AF7 05:9AE7: A9 47     LDA #< $2147
C - - - - - 0x015AF9 05:9AE9: 8D 06 20  STA $2006
C - - - - - 0x015AFC 05:9AEC: A2 00     LDX #$00
bra_9AEE_loop:
C - - - - - 0x015AFE 05:9AEE: BC 70 07  LDY ram_0770,X
C - - - - - 0x015B01 05:9AF1: B9 7B 9A  LDA tbl_9A7B,Y
C - - - - - 0x015B04 05:9AF4: 8D 07 20  STA $2007
C - - - - - 0x015B07 05:9AF7: E8        INX
C - - - - - 0x015B08 05:9AF8: E0 05     CPX #$05
C - - - - - 0x015B0A 05:9AFA: 90 F2     BCC bra_9AEE_loop
C - - - - - 0x015B0C 05:9AFC: A9 0F     LDA #$0F
C - - - - - 0x015B0E 05:9AFE: 8D 07 20  STA $2007
C - - - - - 0x015B11 05:9B01: 8D 07 20  STA $2007
C - - - - - 0x015B14 05:9B04: A9 00     LDA #$00
C - - - - - 0x015B16 05:9B06: 8D 07 20  STA $2007
C - - - - - 0x015B19 05:9B09: 8D 07 20  STA $2007
C - - - - - 0x015B1C 05:9B0C: 8D 07 20  STA $2007
bra_9B0F_loop:
C - - - - - 0x015B1F 05:9B0F: BD 70 07  LDA ram_0770,X
C - - - - - 0x015B22 05:9B12: 8D 07 20  STA $2007
C - - - - - 0x015B25 05:9B15: E8        INX
C - - - - - 0x015B26 05:9B16: E0 0F     CPX #$0F
C - - - - - 0x015B28 05:9B18: 90 F5     BCC bra_9B0F_loop
C - - - - - 0x015B2A 05:9B1A: A9 21     LDA #> $2187
C - - - - - 0x015B2C 05:9B1C: 8D 06 20  STA $2006
C - - - - - 0x015B2F 05:9B1F: A9 87     LDA #< $2187
C - - - - - 0x015B31 05:9B21: 8D 06 20  STA $2006
C - - - - - 0x015B34 05:9B24: A2 00     LDX #$00
bra_9B26_loop:
C - - - - - 0x015B36 05:9B26: BC 7F 07  LDY ram_077F,X
C - - - - - 0x015B39 05:9B29: B9 7B 9A  LDA tbl_9A7B,Y
C - - - - - 0x015B3C 05:9B2C: 8D 07 20  STA $2007
C - - - - - 0x015B3F 05:9B2F: E8        INX
C - - - - - 0x015B40 05:9B30: E0 05     CPX #$05
C - - - - - 0x015B42 05:9B32: 90 F2     BCC bra_9B26_loop
C - - - - - 0x015B44 05:9B34: A9 0F     LDA #$0F
C - - - - - 0x015B46 05:9B36: 8D 07 20  STA $2007
C - - - - - 0x015B49 05:9B39: 8D 07 20  STA $2007
C - - - - - 0x015B4C 05:9B3C: A9 00     LDA #$00
C - - - - - 0x015B4E 05:9B3E: 8D 07 20  STA $2007
C - - - - - 0x015B51 05:9B41: 8D 07 20  STA $2007
C - - - - - 0x015B54 05:9B44: 8D 07 20  STA $2007
bra_9B47_loop:
C - - - - - 0x015B57 05:9B47: BD 7F 07  LDA ram_077F,X
C - - - - - 0x015B5A 05:9B4A: 8D 07 20  STA $2007
C - - - - - 0x015B5D 05:9B4D: E8        INX
C - - - - - 0x015B5E 05:9B4E: E0 0F     CPX #$0F
C - - - - - 0x015B60 05:9B50: 90 F5     BCC bra_9B47_loop
C - - - - - 0x015B62 05:9B52: A9 21     LDA #> $21C7
C - - - - - 0x015B64 05:9B54: 8D 06 20  STA $2006
C - - - - - 0x015B67 05:9B57: A9 C7     LDA #< $21C7
C - - - - - 0x015B69 05:9B59: 8D 06 20  STA $2006
C - - - - - 0x015B6C 05:9B5C: A2 00     LDX #$00
bra_9B5E_loop:
C - - - - - 0x015B6E 05:9B5E: BC 8E 07  LDY ram_078E,X
C - - - - - 0x015B71 05:9B61: B9 7B 9A  LDA tbl_9A7B,Y
C - - - - - 0x015B74 05:9B64: 8D 07 20  STA $2007
C - - - - - 0x015B77 05:9B67: E8        INX
C - - - - - 0x015B78 05:9B68: E0 05     CPX #$05
C - - - - - 0x015B7A 05:9B6A: 90 F2     BCC bra_9B5E_loop
C - - - - - 0x015B7C 05:9B6C: A9 0F     LDA #$0F
C - - - - - 0x015B7E 05:9B6E: 8D 07 20  STA $2007
C - - - - - 0x015B81 05:9B71: 8D 07 20  STA $2007
C - - - - - 0x015B84 05:9B74: A9 00     LDA #$00
C - - - - - 0x015B86 05:9B76: 8D 07 20  STA $2007
C - - - - - 0x015B89 05:9B79: 8D 07 20  STA $2007
C - - - - - 0x015B8C 05:9B7C: 8D 07 20  STA $2007
bra_9B7F_loop:
C - - - - - 0x015B8F 05:9B7F: BD 8E 07  LDA ram_078E,X
C - - - - - 0x015B92 05:9B82: 8D 07 20  STA $2007
C - - - - - 0x015B95 05:9B85: E8        INX
C - - - - - 0x015B96 05:9B86: E0 0F     CPX #$0F
C - - - - - 0x015B98 05:9B88: 90 F5     BCC bra_9B7F_loop
C - - - - - 0x015B9A 05:9B8A: A9 22     LDA #> $2207
C - - - - - 0x015B9C 05:9B8C: 8D 06 20  STA $2006
C - - - - - 0x015B9F 05:9B8F: A9 07     LDA #< $2207
C - - - - - 0x015BA1 05:9B91: 8D 06 20  STA $2006
C - - - - - 0x015BA4 05:9B94: A2 00     LDX #$00
bra_9B96_loop:
C - - - - - 0x015BA6 05:9B96: BC 9D 07  LDY ram_079D,X
C - - - - - 0x015BA9 05:9B99: B9 7B 9A  LDA tbl_9A7B,Y
C - - - - - 0x015BAC 05:9B9C: 8D 07 20  STA $2007
C - - - - - 0x015BAF 05:9B9F: E8        INX
C - - - - - 0x015BB0 05:9BA0: E0 05     CPX #$05
C - - - - - 0x015BB2 05:9BA2: 90 F2     BCC bra_9B96_loop
C - - - - - 0x015BB4 05:9BA4: A9 0F     LDA #$0F
C - - - - - 0x015BB6 05:9BA6: 8D 07 20  STA $2007
C - - - - - 0x015BB9 05:9BA9: 8D 07 20  STA $2007
C - - - - - 0x015BBC 05:9BAC: A9 00     LDA #$00
C - - - - - 0x015BBE 05:9BAE: 8D 07 20  STA $2007
C - - - - - 0x015BC1 05:9BB1: 8D 07 20  STA $2007
C - - - - - 0x015BC4 05:9BB4: 8D 07 20  STA $2007
bra_9BB7_loop:
C - - - - - 0x015BC7 05:9BB7: BD 9D 07  LDA ram_079D,X
C - - - - - 0x015BCA 05:9BBA: 8D 07 20  STA $2007
C - - - - - 0x015BCD 05:9BBD: E8        INX
C - - - - - 0x015BCE 05:9BBE: E0 0F     CPX #$0F
C - - - - - 0x015BD0 05:9BC0: 90 F5     BCC bra_9BB7_loop
C - - - - - 0x015BD2 05:9BC2: A9 22     LDA #> $2247
C - - - - - 0x015BD4 05:9BC4: 8D 06 20  STA $2006
C - - - - - 0x015BD7 05:9BC7: A9 47     LDA #< $2247
C - - - - - 0x015BD9 05:9BC9: 8D 06 20  STA $2006
C - - - - - 0x015BDC 05:9BCC: A2 00     LDX #$00
bra_9BCE_loop:
C - - - - - 0x015BDE 05:9BCE: BC AC 07  LDY ram_07AC,X
C - - - - - 0x015BE1 05:9BD1: B9 7B 9A  LDA tbl_9A7B,Y
C - - - - - 0x015BE4 05:9BD4: 8D 07 20  STA $2007
C - - - - - 0x015BE7 05:9BD7: E8        INX
C - - - - - 0x015BE8 05:9BD8: E0 05     CPX #$05
C - - - - - 0x015BEA 05:9BDA: 90 F2     BCC bra_9BCE_loop
C - - - - - 0x015BEC 05:9BDC: A9 0F     LDA #$0F
C - - - - - 0x015BEE 05:9BDE: 8D 07 20  STA $2007
C - - - - - 0x015BF1 05:9BE1: 8D 07 20  STA $2007
C - - - - - 0x015BF4 05:9BE4: A9 00     LDA #$00
C - - - - - 0x015BF6 05:9BE6: 8D 07 20  STA $2007
C - - - - - 0x015BF9 05:9BE9: 8D 07 20  STA $2007
C - - - - - 0x015BFC 05:9BEC: 8D 07 20  STA $2007
bra_9BEF_loop:
C - - - - - 0x015BFF 05:9BEF: BD AC 07  LDA ram_07AC,X
C - - - - - 0x015C02 05:9BF2: 8D 07 20  STA $2007
C - - - - - 0x015C05 05:9BF5: E8        INX
C - - - - - 0x015C06 05:9BF6: E0 0F     CPX #$0F
C - - - - - 0x015C08 05:9BF8: 90 F5     BCC bra_9BEF_loop
C - - - - - 0x015C0A 05:9BFA: A9 22     LDA #> $2287
C - - - - - 0x015C0C 05:9BFC: 8D 06 20  STA $2006
C - - - - - 0x015C0F 05:9BFF: A9 87     LDA #< $2287
C - - - - - 0x015C11 05:9C01: 8D 06 20  STA $2006
C - - - - - 0x015C14 05:9C04: A2 00     LDX #$00
bra_9C06_loop:
C - - - - - 0x015C16 05:9C06: BC BB 07  LDY ram_07BB,X
C - - - - - 0x015C19 05:9C09: B9 7B 9A  LDA tbl_9A7B,Y
C - - - - - 0x015C1C 05:9C0C: 8D 07 20  STA $2007
C - - - - - 0x015C1F 05:9C0F: E8        INX
C - - - - - 0x015C20 05:9C10: E0 05     CPX #$05
C - - - - - 0x015C22 05:9C12: 90 F2     BCC bra_9C06_loop
C - - - - - 0x015C24 05:9C14: A9 0F     LDA #$0F
C - - - - - 0x015C26 05:9C16: 8D 07 20  STA $2007
C - - - - - 0x015C29 05:9C19: 8D 07 20  STA $2007
C - - - - - 0x015C2C 05:9C1C: A9 00     LDA #$00
C - - - - - 0x015C2E 05:9C1E: 8D 07 20  STA $2007
C - - - - - 0x015C31 05:9C21: 8D 07 20  STA $2007
C - - - - - 0x015C34 05:9C24: 8D 07 20  STA $2007
bra_9C27_loop:
C - - - - - 0x015C37 05:9C27: BD BB 07  LDA ram_07BB,X
C - - - - - 0x015C3A 05:9C2A: 8D 07 20  STA $2007
C - - - - - 0x015C3D 05:9C2D: E8        INX
C - - - - - 0x015C3E 05:9C2E: E0 0F     CPX #$0F
C - - - - - 0x015C40 05:9C30: 90 F5     BCC bra_9C27_loop
C - - - - - 0x015C42 05:9C32: 60        RTS



sub_9C33:
C - - - - - 0x015C43 05:9C33: AD BE 03  LDA ram_03BE
C - - - - - 0x015C46 05:9C36: D0 01     BNE bra_9C39
; 00
C - - - - - 0x015C48 05:9C38: 60        RTS
bra_9C39:
C - - - - - 0x015C49 05:9C39: C9 01     CMP #$01
C - - - - - 0x015C4B 05:9C3B: F0 0B     BEQ bra_9C48_01
C - - - - - 0x015C4D 05:9C3D: C9 02     CMP #$02
C - - - - - 0x015C4F 05:9C3F: F0 0A     BEQ bra_9C4B_03
C - - - - - 0x015C51 05:9C41: C9 03     CMP #$03
C - - - - - 0x015C53 05:9C43: F0 09     BEQ bra_9C4E_04
; 04
C - - - - - 0x015C55 05:9C45: 4C 51 9C  JMP loc_9C51
bra_9C48_01:
C - - - - - 0x015C58 05:9C48: 4C 54 9C  JMP loc_9C54
bra_9C4B_03:
C - - - - - 0x015C5B 05:9C4B: 4C 6B 9C  JMP loc_9C6B
bra_9C4E_04:
C - - - - - 0x015C5E 05:9C4E: 4C 82 9C  JMP loc_9C82
loc_9C51:   ; bzk optimize
C D 0 - - - 0x015C61 05:9C51: 4C 99 9C  JMP loc_9C99



loc_9C54:
C D 0 - - - 0x015C64 05:9C54: 20 B0 9C  JSR sub_9CB0
C - - - - - 0x015C67 05:9C57: A0 00     LDY #$00
C - - - - - 0x015C69 05:9C59: B1 A0     LDA (ram_00A0_data),Y
C - - - - - 0x015C6B 05:9C5B: 30 0D     BMI bra_9C6A_RTS
C - - - - - 0x015C6D 05:9C5D: CD BD 03  CMP ram_03BD
C - - - - - 0x015C70 05:9C60: F0 08     BEQ bra_9C6A_RTS
C - - - - - 0x015C72 05:9C62: 8D BD 03  STA ram_03BD
C - - - - - 0x015C75 05:9C65: A9 01     LDA #$01
C - - - - - 0x015C77 05:9C67: 8D BF 03  STA ram_03BF
bra_9C6A_RTS:
C - - - - - 0x015C7A 05:9C6A: 60        RTS



loc_9C6B:
C D 0 - - - 0x015C7B 05:9C6B: 20 B0 9C  JSR sub_9CB0
C - - - - - 0x015C7E 05:9C6E: A0 01     LDY #$01
C - - - - - 0x015C80 05:9C70: B1 A0     LDA (ram_00A0_data),Y
C - - - - - 0x015C82 05:9C72: 30 0D     BMI bra_9C81_RTS
C - - - - - 0x015C84 05:9C74: CD BD 03  CMP ram_03BD
C - - - - - 0x015C87 05:9C77: F0 08     BEQ bra_9C81_RTS
C - - - - - 0x015C89 05:9C79: 8D BD 03  STA ram_03BD
C - - - - - 0x015C8C 05:9C7C: A9 01     LDA #$01
C - - - - - 0x015C8E 05:9C7E: 8D BF 03  STA ram_03BF
bra_9C81_RTS:
C - - - - - 0x015C91 05:9C81: 60        RTS



loc_9C82:
C D 0 - - - 0x015C92 05:9C82: 20 B0 9C  JSR sub_9CB0
C - - - - - 0x015C95 05:9C85: A0 02     LDY #$02
C - - - - - 0x015C97 05:9C87: B1 A0     LDA (ram_00A0_data),Y
C - - - - - 0x015C99 05:9C89: 30 0D     BMI bra_9C98_RTS
C - - - - - 0x015C9B 05:9C8B: CD BD 03  CMP ram_03BD
C - - - - - 0x015C9E 05:9C8E: F0 08     BEQ bra_9C98_RTS
C - - - - - 0x015CA0 05:9C90: 8D BD 03  STA ram_03BD
C - - - - - 0x015CA3 05:9C93: A9 01     LDA #$01
C - - - - - 0x015CA5 05:9C95: 8D BF 03  STA ram_03BF
bra_9C98_RTS:
C - - - - - 0x015CA8 05:9C98: 60        RTS



loc_9C99:
C D 0 - - - 0x015CA9 05:9C99: 20 B0 9C  JSR sub_9CB0
C - - - - - 0x015CAC 05:9C9C: A0 03     LDY #$03
C - - - - - 0x015CAE 05:9C9E: B1 A0     LDA (ram_00A0_data),Y
C - - - - - 0x015CB0 05:9CA0: 30 0D     BMI bra_9CAF_RTS
C - - - - - 0x015CB2 05:9CA2: CD BD 03  CMP ram_03BD
C - - - - - 0x015CB5 05:9CA5: F0 08     BEQ bra_9CAF_RTS
C - - - - - 0x015CB7 05:9CA7: 8D BD 03  STA ram_03BD
C - - - - - 0x015CBA 05:9CAA: A9 01     LDA #$01
C - - - - - 0x015CBC 05:9CAC: 8D BF 03  STA ram_03BF
bra_9CAF_RTS:
C - - - - - 0x015CBF 05:9CAF: 60        RTS



sub_9CB0:
C - - - - - 0x015CC0 05:9CB0: A9 00     LDA #$00
C - - - - - 0x015CC2 05:9CB2: 85 A1     STA ram_00A0_data + $01
C - - - - - 0x015CC4 05:9CB4: AE C2 03  LDX ram_03C2
C - - - - - 0x015CC7 05:9CB7: BD 7E 9D  LDA tbl_9D7E,X
C - - - - - 0x015CCA 05:9CBA: 18        CLC
C - - - - - 0x015CCB 05:9CBB: AD BC 03  LDA ram_03BC
; A = 00-04
C - - - - - 0x015CCE 05:9CBE: 0A        ASL
C - - - - - 0x015CCF 05:9CBF: 0A        ASL
C - - - - - 0x015CD0 05:9CC0: 26 A1     ROL ram_00A0_data + $01
C - - - - - 0x015CD2 05:9CC2: 18        CLC
C - - - - - 0x015CD3 05:9CC3: 69 CB     ADC #< tbl_9DCB
C - - - - - 0x015CD5 05:9CC5: 85 A0     STA ram_00A0_data
C - - - - - 0x015CD7 05:9CC7: A5 A1     LDA ram_00A0_data + $01
C - - - - - 0x015CD9 05:9CC9: 69 9D     ADC #> tbl_9DCB
C - - - - - 0x015CDB 05:9CCB: 85 A1     STA ram_00A0_data + $01
C - - - - - 0x015CDD 05:9CCD: 60        RTS



sub_9CCE:
C - - - - - 0x015CDE 05:9CCE: AD BF 03  LDA ram_03BF
C - - - - - 0x015CE1 05:9CD1: D0 01     BNE bra_9CD4
C - - - - - 0x015CE3 05:9CD3: 60        RTS
bra_9CD4:
C - - - - - 0x015CE4 05:9CD4: EE C1 03  INC ram_03C1
C - - - - - 0x015CE7 05:9CD7: AD C1 03  LDA ram_03C1
C - - - - - 0x015CEA 05:9CDA: C9 02     CMP #$02
C - - - - - 0x015CEC 05:9CDC: F0 01     BEQ bra_9CDF
C - - - - - 0x015CEE 05:9CDE: 60        RTS
bra_9CDF:
C - - - - - 0x015CEF 05:9CDF: A9 00     LDA #$00
C - - - - - 0x015CF1 05:9CE1: 8D C1 03  STA ram_03C1
C - - - - - 0x015CF4 05:9CE4: AE C2 03  LDX ram_03C2
C - - - - - 0x015CF7 05:9CE7: BD 7E 9D  LDA tbl_9D7E,X
C - - - - - 0x015CFA 05:9CEA: 18        CLC
C - - - - - 0x015CFB 05:9CEB: 6D BD 03  ADC ram_03BD
C - - - - - 0x015CFE 05:9CEE: 0A        ASL
C - - - - - 0x015CFF 05:9CEF: AA        TAX
C - - - - - 0x015D00 05:9CF0: BD DF 9D  LDA tbl_9DDF,X
C - - - - - 0x015D03 05:9CF3: 8D BA 03  STA ram_03BA
C - - - - - 0x015D06 05:9CF6: BD E0 9D  LDA tbl_9DDF + $01,X
C - - - - - 0x015D09 05:9CF9: 8D BB 03  STA ram_03BB
C - - - - - 0x015D0C 05:9CFC: AD B8 03  LDA ram_03B8
C - - - - - 0x015D0F 05:9CFF: CD BA 03  CMP ram_03BA
C - - - - - 0x015D12 05:9D02: B0 19     BCS bra_9D1D
C - - - - - 0x015D14 05:9D04: AD BA 03  LDA ram_03BA
C - - - - - 0x015D17 05:9D07: 38        SEC
C - - - - - 0x015D18 05:9D08: ED B8 03  SBC ram_03B8
C - - - - - 0x015D1B 05:9D0B: 4A        LSR
C - - - - - 0x015D1C 05:9D0C: 4A        LSR
C - - - - - 0x015D1D 05:9D0D: 8D BA 03  STA ram_03BA
C - - - - - 0x015D20 05:9D10: AD B8 03  LDA ram_03B8
C - - - - - 0x015D23 05:9D13: 18        CLC
C - - - - - 0x015D24 05:9D14: 6D BA 03  ADC ram_03BA
C - - - - - 0x015D27 05:9D17: 8D B8 03  STA ram_03B8
C - - - - - 0x015D2A 05:9D1A: 4C 33 9D  JMP loc_9D33
bra_9D1D:
C - - - - - 0x015D2D 05:9D1D: AD B8 03  LDA ram_03B8
C - - - - - 0x015D30 05:9D20: 38        SEC
C - - - - - 0x015D31 05:9D21: ED BA 03  SBC ram_03BA
C - - - - - 0x015D34 05:9D24: 4A        LSR
C - - - - - 0x015D35 05:9D25: 4A        LSR
C - - - - - 0x015D36 05:9D26: 8D BA 03  STA ram_03BA
C - - - - - 0x015D39 05:9D29: AD B8 03  LDA ram_03B8
C - - - - - 0x015D3C 05:9D2C: 38        SEC
C - - - - - 0x015D3D 05:9D2D: ED BA 03  SBC ram_03BA
C - - - - - 0x015D40 05:9D30: 8D B8 03  STA ram_03B8
loc_9D33:
C D 0 - - - 0x015D43 05:9D33: AD C3 03  LDA ram_03C3
C - - - - - 0x015D46 05:9D36: CD BB 03  CMP ram_03BB
C - - - - - 0x015D49 05:9D39: B0 19     BCS bra_9D54
C - - - - - 0x015D4B 05:9D3B: AD BB 03  LDA ram_03BB
C - - - - - 0x015D4E 05:9D3E: 38        SEC
C - - - - - 0x015D4F 05:9D3F: ED C3 03  SBC ram_03C3
C - - - - - 0x015D52 05:9D42: 4A        LSR
C - - - - - 0x015D53 05:9D43: 4A        LSR
C - - - - - 0x015D54 05:9D44: 8D BB 03  STA ram_03BB
C - - - - - 0x015D57 05:9D47: AD C3 03  LDA ram_03C3
C - - - - - 0x015D5A 05:9D4A: 18        CLC
C - - - - - 0x015D5B 05:9D4B: 6D BB 03  ADC ram_03BB
C - - - - - 0x015D5E 05:9D4E: 8D C3 03  STA ram_03C3
C - - - - - 0x015D61 05:9D51: 4C 6A 9D  JMP loc_9D6A
bra_9D54:
C - - - - - 0x015D64 05:9D54: AD C3 03  LDA ram_03C3
C - - - - - 0x015D67 05:9D57: 38        SEC
C - - - - - 0x015D68 05:9D58: ED BB 03  SBC ram_03BB
C - - - - - 0x015D6B 05:9D5B: 4A        LSR
C - - - - - 0x015D6C 05:9D5C: 4A        LSR
C - - - - - 0x015D6D 05:9D5D: 8D BB 03  STA ram_03BB
C - - - - - 0x015D70 05:9D60: AD C3 03  LDA ram_03C3
C - - - - - 0x015D73 05:9D63: 38        SEC
C - - - - - 0x015D74 05:9D64: ED BB 03  SBC ram_03BB
C - - - - - 0x015D77 05:9D67: 8D C3 03  STA ram_03C3
loc_9D6A:
C D 0 - - - 0x015D7A 05:9D6A: AD BA 03  LDA ram_03BA
C - - - - - 0x015D7D 05:9D6D: 0D BB 03  ORA ram_03BB
C - - - - - 0x015D80 05:9D70: D0 0B     BNE bra_9D7D_RTS
C - - - - - 0x015D82 05:9D72: A9 00     LDA #$00
C - - - - - 0x015D84 05:9D74: 8D BF 03  STA ram_03BF
C - - - - - 0x015D87 05:9D77: AD BD 03  LDA ram_03BD
C - - - - - 0x015D8A 05:9D7A: 8D BC 03  STA ram_03BC
bra_9D7D_RTS:
C - - - - - 0x015D8D 05:9D7D: 60        RTS



tbl_9D7E:
; bzk optimize, X always 00
- D 0 - - - 0x015D8E 05:9D7E: 00        .byte $00   ; 00 



sub_9D7F:
C - - - - - 0x015D8F 05:9D7F: 86 A4     STX ram_00A4
C - - - - - 0x015D91 05:9D81: 84 A5     STY ram_00A5
C - - - - - 0x015D93 05:9D83: A0 00     LDY #$00
bra_9D85_loop:
C - - - - - 0x015D95 05:9D85: A2 FF     LDX #$FF
C - - - - - 0x015D97 05:9D87: 38        SEC
bra_9D88_loop:
C - - - - - 0x015D98 05:9D88: E8        INX
C - - - - - 0x015D99 05:9D89: AD C6 03  LDA ram_03C6
C - - - - - 0x015D9C 05:9D8C: F9 BC 9D  SBC tbl_9DBC,Y
C - - - - - 0x015D9F 05:9D8F: 8D C6 03  STA ram_03C6
C - - - - - 0x015DA2 05:9D92: AD C7 03  LDA ram_03C7
C - - - - - 0x015DA5 05:9D95: F9 C1 9D  SBC tbl_9DC1,Y
C - - - - - 0x015DA8 05:9D98: 8D C7 03  STA ram_03C7
C - - - - - 0x015DAB 05:9D9B: B0 EB     BCS bra_9D88_loop
C - - - - - 0x015DAD 05:9D9D: AD C6 03  LDA ram_03C6
C - - - - - 0x015DB0 05:9DA0: 79 BC 9D  ADC tbl_9DBC,Y
C - - - - - 0x015DB3 05:9DA3: 8D C6 03  STA ram_03C6
C - - - - - 0x015DB6 05:9DA6: AD C7 03  LDA ram_03C7
C - - - - - 0x015DB9 05:9DA9: 79 C1 9D  ADC tbl_9DC1,Y
C - - - - - 0x015DBC 05:9DAC: 8D C7 03  STA ram_03C7
C - - - - - 0x015DBF 05:9DAF: 8A        TXA
C - - - - - 0x015DC0 05:9DB0: 18        CLC
C - - - - - 0x015DC1 05:9DB1: 6D D8 03  ADC ram_03D8
C - - - - - 0x015DC4 05:9DB4: 91 A4     STA (ram_00A4),Y
C - - - - - 0x015DC6 05:9DB6: C8        INY
C - - - - - 0x015DC7 05:9DB7: C0 05     CPY #$05
C - - - - - 0x015DC9 05:9DB9: D0 CA     BNE bra_9D85_loop
C - - - - - 0x015DCB 05:9DBB: 60        RTS



tbl_9DBC:
- D 0 - - - 0x015DCC 05:9DBC: 10        .byte $10   ; 
- D 0 - - - 0x015DCD 05:9DBD: E8        .byte $E8   ; 
- D 0 - - - 0x015DCE 05:9DBE: 64        .byte $64   ; 
- D 0 - - - 0x015DCF 05:9DBF: 0A        .byte $0A   ; 
- D 0 - - - 0x015DD0 05:9DC0: 01        .byte $01   ; 
tbl_9DC1:
- D 0 - - - 0x015DD1 05:9DC1: 27        .byte $27   ; 
- D 0 - - - 0x015DD2 05:9DC2: 03        .byte $03   ; 
- D 0 - - - 0x015DD3 05:9DC3: 00        .byte $00   ; 
- D 0 - - - 0x015DD4 05:9DC4: 00        .byte $00   ; 
- D 0 - - - 0x015DD5 05:9DC5: 00        .byte $00   ; 
tbl_9DC6_unit_index:
- D 0 - - - 0x015DD6 05:9DC6: 00        .byte $00   ; 
- D 0 - - - 0x015DD7 05:9DC7: 02        .byte $02   ; 
- D 0 - - - 0x015DD8 05:9DC8: 01        .byte $01   ; 
- D 0 - - - 0x015DD9 05:9DC9: 02        .byte $02   ; 
- D 0 - - - 0x015DDA 05:9DCA: 03        .byte $03   ; 



tbl_9DCB:
;                                              --------------------- 
;                                              |    ---------------- 
;                                              |    |    ----------- 
;                                              |    |    |    ------ 
;                                              |    |    |    |
- D 0 - I - 0x015DDB 05:9DCB: FF        .byte $FF, $03, $02, $01   ; 00 
- D 0 - I - 0x015DDF 05:9DCF: 00        .byte $00, $02, $04, $FF   ; 01 
- D 0 - I - 0x015DE3 05:9DD3: 00        .byte $00, $03, $04, $01   ; 02 
- D 0 - I - 0x015DE7 05:9DD7: 00        .byte $00, $FF, $04, $02   ; 03 
- D 0 - I - 0x015DEB 05:9DDB: 02        .byte $02, $FF, $FF, $01   ; 04 



tbl_9DDF:
;                                              ----------- 
;                                              |    ------ 
;                                              |    |
- D 0 - - - 0x015DEF 05:9DDF: A0        .byte $A0, $20   ; 00 
- D 0 - - - 0x015DF1 05:9DE1: 88        .byte $88, $58   ; 01 
- D 0 - - - 0x015DF3 05:9DE3: A8        .byte $A8, $40   ; 02 
- D 0 - - - 0x015DF5 05:9DE5: C0        .byte $C0, $48   ; 03 
- D 0 - - - 0x015DF7 05:9DE7: CB        .byte $CB, $80   ; 04 



_off011_9DE9_03:
_off011_9DE9_04:
_off011_9DE9_05:
_off011_9DE9_06:
; background
- D 0 - I - 0x015DF9 05:9DE9: 0F        .byte $0F, $17, $27, $30   ; 
- D 0 - I - 0x015DFD 05:9DED: 0F        .byte $0F, $00, $10, $20   ; 
- D 0 - I - 0x015E01 05:9DF1: 0F        .byte $0F, $12, $22, $30   ; 
- D 0 - I - 0x015E05 05:9DF5: 0F        .byte $0F, $0A, $2A, $0F   ; 
; sprites
- D 0 - I - 0x015E09 05:9DF9: 0F        .byte $0F, $07, $17, $20   ; 
- D 0 - I - 0x015E0D 05:9DFD: 0F        .byte $0F, $00, $10, $20   ; 
- D 0 - I - 0x015E11 05:9E01: 0F        .byte $0F, $12, $22, $30   ; 
- D 0 - I - 0x015E15 05:9E05: 0F        .byte $0F, $21, $10, $20   ; 



_off011_9E09_02:
; background
- D 0 - I - 0x015E19 05:9E09: 0F        .byte $0F, $27, $26, $30   ; 
- D 0 - I - 0x015E1D 05:9E0D: 0F        .byte $0F, $11, $21, $30   ; 
- D 0 - I - 0x015E21 05:9E11: 0F        .byte $0F, $27, $38, $30   ; 
- D 0 - I - 0x015E25 05:9E15: 0F        .byte $0F, $27, $36, $30   ; 
; sprites
- D 0 - I - 0x015E29 05:9E19: 0F        .byte $0F, $27, $36, $30   ; 
- D 0 - I - 0x015E2D 05:9E1D: 0F        .byte $0F, $27, $38, $30   ; 
- D 0 - I - 0x015E31 05:9E21: 0F        .byte $0F, $16, $26, $0F   ; 
- D 0 - I - 0x015E35 05:9E25: 0F        .byte $0F, $21, $10, $20   ; 



_off011_9E29_07:
; background
- D 0 - I - 0x015E39 05:9E29: 0F        .byte $0F, $27, $36, $30   ; 
- D 0 - I - 0x015E3D 05:9E2D: 0F        .byte $0F, $11, $21, $30   ; 
- D 0 - I - 0x015E41 05:9E31: 0F        .byte $0F, $27, $38, $30   ; 
- D 0 - I - 0x015E45 05:9E35: 0F        .byte $0F, $21, $10, $20   ; 
; sprites
- D 0 - I - 0x015E49 05:9E39: 0F        .byte $0F, $27, $36, $30   ; 
- D 0 - I - 0x015E4D 05:9E3D: 0F        .byte $0F, $11, $21, $30   ; 
- D 0 - I - 0x015E51 05:9E41: 0F        .byte $0F, $27, $38, $30   ; 
- D 0 - I - 0x015E55 05:9E45: 0F        .byte $0F, $21, $10, $20   ; 



_off011_9E49_01:
; background
- D 0 - I - 0x015E59 05:9E49: 0F        .byte $0F, $16, $26, $0F   ; 
- D 0 - I - 0x015E5D 05:9E4D: 0F        .byte $0F, $0F, $0F, $0F   ; 
- D 0 - I - 0x015E61 05:9E51: 0F        .byte $0F, $0F, $0F, $0F   ; 
- D 0 - I - 0x015E65 05:9E55: 0F        .byte $0F, $12, $22, $32   ; 
; sprites
- D 0 - I - 0x015E69 05:9E59: 0F        .byte $0F, $16, $26, $0F   ; 
- D 0 - I - 0x015E6D 05:9E5D: 0F        .byte $0F, $21, $22, $32   ; 
- D 0 - I - 0x015E71 05:9E61: 0F        .byte $0F, $21, $22, $32   ; 
- D 0 - I - 0x015E75 05:9E65: 0F        .byte $0F, $21, $22, $32   ; 



_off011_9E69_00:
; background
- D 0 - I - 0x015E79 05:9E69: 0F        .byte $0F, $00, $10, $20   ; 
- D 0 - I - 0x015E7D 05:9E6D: 0F        .byte $0F, $01, $11, $21   ; 
- D 0 - I - 0x015E81 05:9E71: 0F        .byte $0F, $02, $12, $10   ; 
- D 0 - I - 0x015E85 05:9E75: 0F        .byte $0F, $03, $13, $23   ; 
; sprites
- D 0 - I - 0x015E89 05:9E79: 0F        .byte $0F, $16, $26, $0F   ; 
- D 0 - I - 0x015E8D 05:9E7D: 0F        .byte $0F, $05, $15, $25   ; 
- D 0 - I - 0x015E91 05:9E81: 0F        .byte $0F, $06, $16, $26   ; 
- D 0 - I - 0x015E95 05:9E85: 0F        .byte $0F, $07, $17, $27   ; 



_off011_9E89_08:
; background
- D 0 - I - 0x015E99 05:9E89: 0F        .byte $0F, $08, $18, $2B   ; 
- D 0 - I - 0x015E9D 05:9E8D: 0F        .byte $0F, $00, $10, $20   ; 
- D 0 - I - 0x015EA1 05:9E91: 0F        .byte $0F, $0B, $1B, $2B   ; 
- D 0 - I - 0x015EA5 05:9E95: 0F        .byte $0F, $0C, $1C, $2C   ; 
; sprites
- D 0 - I - 0x015EA9 05:9E99: 0F        .byte $0F, $00, $10, $20   ; 
- D 0 - I - 0x015EAD 05:9E9D: 0F        .byte $0F, $06, $16, $26   ; 
- D 0 - I - 0x015EB1 05:9EA1: 0F        .byte $0F, $0B, $1B, $2B   ; 
- D 0 - I - 0x015EB5 05:9EA5: 0F        .byte $0F, $0C, $1C, $2C   ; 



_off009_9EA9_00:
; bzk attributes are shared (for example, 0x015EE9 are the last 10h bytes for 0x015EB9)
- D 0 - I - 0x015EB9 05:9EA9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $3F, $0F, $0F, $0F, $0F, $0F, $FF   ; 
- D 0 - I - 0x015EC9 05:9EB9: FF        .byte $FF, $88, $AA, $AA, $AA, $AA, $AA, $CC, $FF, $34, $05, $05, $05, $05, $05, $FC   ; 
- D 0 - I - 0x015ED9 05:9EC9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



_off009_9ED9_02:
- D 0 - I - 0x015EE9 05:9ED9: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55, $76, $59, $DA, $5A, $55, $CE, $77, $59   ; 
- D 0 - I - 0x015EF9 05:9EE9: FF        .byte $FF, $55, $DD, $55, $55, $8C, $AF, $EC, $FF, $D5, $55, $55, $55, $5D, $53, $DD   ; 
- D 0 - I - 0x015F09 05:9EF9: FF        .byte $FF, $55, $55, $55, $55, $55, $55, $55, $FF, $FF, $77, $55, $55, $55, $D5, $FD   ; 
- D 0 - I - 0x015F19 05:9F09: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55   ; 



_off009_9F11_05:
- D 0 - I - 0x015F21 05:9F11: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $AF, $AB, $AF, $AB, $AE, $AF, $AE, $AF   ; 
- D 0 - I - 0x015F31 05:9F21: EE        .byte $EE, $FF, $FF, $55, $55, $FF, $FF, $BB, $EE, $FF, $FF, $11, $44, $DF, $FF, $BB   ; 
- D 0 - I - 0x015F41 05:9F31: EE        .byte $EE, $FF, $F5, $F5, $F5, $F5, $FF, $BB, $AE, $AF, $AF, $AF, $AF, $AF, $AF, $AB   ; 



_off009_9F41_06:
- D 0 - I - 0x015F51 05:9F41: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $AF, $AB, $AF, $AB, $AE, $AF, $AE, $AF   ; 
- D 0 - I - 0x015F61 05:9F51: EE        .byte $EE, $FF, $9B, $A6, $A5, $DD, $FF, $BB, $EE, $FF, $A9, $A8, $AA, $DD, $FF, $BB   ; 
- D 0 - I - 0x015F71 05:9F61: EE        .byte $EE, $FF, $FA, $FA, $FA, $FD, $FF, $BB, $AE, $AF, $AF, $AF, $AF, $AF, $AF, $AB   ; 



_off009_9F71_07:
- D 0 - I - 0x015F81 05:9F71: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $BF, $AF, $AF, $AF, $FF, $FF, $DF, $FF   ; 
- D 0 - I - 0x015F91 05:9F81: AA        .byte $AA, $AA, $AA, $AA, $32, $4C, $55, $CD, $AA, $AA, $AA, $AA, $5A, $54, $05, $58   ; 
- D 0 - I - 0x015FA1 05:9F91: AA        .byte $AA, $AA, $AA, $AA, $55, $55, $55, $55, $AA, $AA, $AA, $AA, $55, $FF, $FF, $FF   ; 
- D 0 - I - 0x015FB1 05:9FA1: 00        .byte $00, $00, $00, $00, $FF, $FF, $FF, $FF   ; 



_off009_9FA9_03:
- D 0 - I - 0x015FB9 05:9FA9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $AF, $AB, $AF, $AB, $AE, $AF, $AE, $AF   ; 
- D 0 - I - 0x015FC9 05:9FB9: EE        .byte $EE, $FF, $FF, $FF, $FF, $FF, $FF, $BB, $EE, $FF, $FF, $FF, $FF, $FF, $FF, $BB   ; 
- D 0 - I - 0x015FD9 05:9FC9: EE        .byte $EE, $FF, $FF, $FF, $FF, $FF, $FF, $BB, $AE, $AF, $AF, $AF, $AF, $AF, $AF, $AB   ; 



_off009_9FD9_04:
- D 0 - I - 0x015FE9 05:9FD9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $AF, $AB, $AF, $AB, $AE, $AF, $AE, $AF   ; 
- D 0 - I - 0x015FF9 05:9FE9: EE        .byte $EE, $FF, $FF, $FF, $FF, $FF, $FF, $BB, $EE, $FF, $FF, $FF, $FF, $FF, $FF, $BB   ; 
- D 0 - I - 0x016009 05:9FF9: EE        .byte $EE, $FF, $FF, $FF, $FF, $FF, $FF, $BB, $AE, $AF, $AF, $AF, $AF, $AF, $AF, $AB   ; 



_off009_A009_01:
- D 1 - I - 0x016019 05:A009: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x016029 05:A019: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $00   ; 
- D 1 - I - 0x016039 05:A029: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 



_off009_A039_08:
- D 1 - I - 0x016049 05:A039: FF        .byte $FF, $0C, $03, $03, $FF, $FF, $C0, $F0, $3F, $00, $00, $C0, $FF, $FF, $BA, $EA   ; 
- D 1 - I - 0x016059 05:A049: 00        .byte $00, $5C, $9F, $FA, $FF, $FF, $FF, $AF, $05, $05, $05, $DD, $EF, $FF, $BB, $EA   ; 
- D 1 - I - 0x016069 05:A059: 00        .byte $00, $00, $00, $DD, $BA, $EF, $FF, $FF, $FF, $FF, $00, $DD, $FF, $FE, $FE, $FF   ; 
- D 1 - I - 0x016079 05:A069: AF        .byte $AF, $2F, $A0, $0D, $AF, $8F, $AF, $8F   ; 



_off008_A071_00:
; bzk warning, first 8 bytes are a part of 0x016049
- D 1 - I - 0x016081 05:A071: 81        .byte $81   ; 
- D 1 - I - 0x016082 05:A072: 01        .byte $01   ; 
- D 1 - I - 0x016083 05:A073: 7F        .byte $7F   ; 
- D 1 - I - 0x016084 05:A074: 00        .byte $00   ; 
- D 1 - I - 0x016085 05:A075: 67        .byte $67   ; 
- D 1 - I - 0x016086 05:A076: 00        .byte $00   ; 
- D 1 - I - 0x016087 05:A077: 88        .byte $88   ; 
- D 1 - I - 0x016088 05:A078: 02        .byte $02   ; 
- D 1 - I - 0x016089 05:A079: 03        .byte $03   ; 
- D 1 - I - 0x01608A 05:A07A: 04        .byte $04   ; 
- D 1 - I - 0x01608B 05:A07B: 05        .byte $05   ; 
- D 1 - I - 0x01608C 05:A07C: 06        .byte $06   ; 
- D 1 - I - 0x01608D 05:A07D: 07        .byte $07   ; 
- D 1 - I - 0x01608E 05:A07E: 08        .byte $08   ; 
- D 1 - I - 0x01608F 05:A07F: 09        .byte $09   ; 
- D 1 - I - 0x016090 05:A080: 04        .byte $04   ; 
- D 1 - I - 0x016091 05:A081: 0A        .byte $0A   ; 
- D 1 - I - 0x016092 05:A082: 88        .byte $88   ; 
- D 1 - I - 0x016093 05:A083: 0B        .byte $0B   ; 
- D 1 - I - 0x016094 05:A084: 0C        .byte $0C   ; 
- D 1 - I - 0x016095 05:A085: 0D        .byte $0D   ; 
- D 1 - I - 0x016096 05:A086: 0E        .byte $0E   ; 
- D 1 - I - 0x016097 05:A087: 0F        .byte $0F   ; 
- D 1 - I - 0x016098 05:A088: 10        .byte $10   ; 
- D 1 - I - 0x016099 05:A089: 11        .byte $11   ; 
- D 1 - I - 0x01609A 05:A08A: 12        .byte $12   ; 
- D 1 - I - 0x01609B 05:A08B: 0A        .byte $0A   ; 
- D 1 - I - 0x01609C 05:A08C: 00        .byte $00   ; 
- D 1 - I - 0x01609D 05:A08D: 98        .byte $98   ; 
- D 1 - I - 0x01609E 05:A08E: 13        .byte $13   ; 
- D 1 - I - 0x01609F 05:A08F: 14        .byte $14   ; 
- D 1 - I - 0x0160A0 05:A090: 15        .byte $15   ; 
- D 1 - I - 0x0160A1 05:A091: 16        .byte $16   ; 
- D 1 - I - 0x0160A2 05:A092: 17        .byte $17   ; 
- D 1 - I - 0x0160A3 05:A093: 18        .byte $18   ; 
- D 1 - I - 0x0160A4 05:A094: 19        .byte $19   ; 
- D 1 - I - 0x0160A5 05:A095: 16        .byte $16   ; 
- D 1 - I - 0x0160A6 05:A096: 17        .byte $17   ; 
- D 1 - I - 0x0160A7 05:A097: 18        .byte $18   ; 
- D 1 - I - 0x0160A8 05:A098: 1A        .byte $1A   ; 
- D 1 - I - 0x0160A9 05:A099: 16        .byte $16   ; 
- D 1 - I - 0x0160AA 05:A09A: 1B        .byte $1B   ; 
- D 1 - I - 0x0160AB 05:A09B: 18        .byte $18   ; 
- D 1 - I - 0x0160AC 05:A09C: 19        .byte $19   ; 
- D 1 - I - 0x0160AD 05:A09D: 16        .byte $16   ; 
- D 1 - I - 0x0160AE 05:A09E: 17        .byte $17   ; 
- D 1 - I - 0x0160AF 05:A09F: 18        .byte $18   ; 
- D 1 - I - 0x0160B0 05:A0A0: 1C        .byte $1C   ; 
- D 1 - I - 0x0160B1 05:A0A1: 1D        .byte $1D   ; 
- D 1 - I - 0x0160B2 05:A0A2: 1E        .byte $1E   ; 
- D 1 - I - 0x0160B3 05:A0A3: 1F        .byte $1F   ; 
- D 1 - I - 0x0160B4 05:A0A4: 20        .byte $20   ; 
- D 1 - I - 0x0160B5 05:A0A5: 21        .byte $21   ; 
- D 1 - I - 0x0160B6 05:A0A6: 08        .byte $08   ; 
- D 1 - I - 0x0160B7 05:A0A7: 00        .byte $00   ; 
- D 1 - I - 0x0160B8 05:A0A8: 98        .byte $98   ; 
- D 1 - I - 0x0160B9 05:A0A9: 22        .byte $22   ; 
- D 1 - I - 0x0160BA 05:A0AA: 23        .byte $23   ; 
- D 1 - I - 0x0160BB 05:A0AB: 24        .byte $24   ; 
- D 1 - I - 0x0160BC 05:A0AC: 25        .byte $25   ; 
- D 1 - I - 0x0160BD 05:A0AD: 26        .byte $26   ; 
- D 1 - I - 0x0160BE 05:A0AE: 27        .byte $27   ; 
- D 1 - I - 0x0160BF 05:A0AF: 28        .byte $28   ; 
- D 1 - I - 0x0160C0 05:A0B0: 25        .byte $25   ; 
- D 1 - I - 0x0160C1 05:A0B1: 26        .byte $26   ; 
- D 1 - I - 0x0160C2 05:A0B2: 29        .byte $29   ; 
- D 1 - I - 0x0160C3 05:A0B3: 2A        .byte $2A   ; 
- D 1 - I - 0x0160C4 05:A0B4: 2B        .byte $2B   ; 
- D 1 - I - 0x0160C5 05:A0B5: 2C        .byte $2C   ; 
- D 1 - I - 0x0160C6 05:A0B6: 2D        .byte $2D   ; 
- D 1 - I - 0x0160C7 05:A0B7: 28        .byte $28   ; 
- D 1 - I - 0x0160C8 05:A0B8: 25        .byte $25   ; 
- D 1 - I - 0x0160C9 05:A0B9: 26        .byte $26   ; 
- D 1 - I - 0x0160CA 05:A0BA: 2E        .byte $2E   ; 
- D 1 - I - 0x0160CB 05:A0BB: 2F        .byte $2F   ; 
- D 1 - I - 0x0160CC 05:A0BC: 30        .byte $30   ; 
- D 1 - I - 0x0160CD 05:A0BD: 31        .byte $31   ; 
- D 1 - I - 0x0160CE 05:A0BE: 32        .byte $32   ; 
- D 1 - I - 0x0160CF 05:A0BF: 33        .byte $33   ; 
- D 1 - I - 0x0160D0 05:A0C0: 34        .byte $34   ; 
- D 1 - I - 0x0160D1 05:A0C1: 08        .byte $08   ; 
- D 1 - I - 0x0160D2 05:A0C2: 00        .byte $00   ; 
- D 1 - I - 0x0160D3 05:A0C3: 98        .byte $98   ; 
- D 1 - I - 0x0160D4 05:A0C4: 35        .byte $35   ; 
- D 1 - I - 0x0160D5 05:A0C5: 36        .byte $36   ; 
- D 1 - I - 0x0160D6 05:A0C6: 37        .byte $37   ; 
- D 1 - I - 0x0160D7 05:A0C7: 38        .byte $38   ; 
- D 1 - I - 0x0160D8 05:A0C8: 39        .byte $39   ; 
- D 1 - I - 0x0160D9 05:A0C9: 3A        .byte $3A   ; 
- D 1 - I - 0x0160DA 05:A0CA: 3B        .byte $3B   ; 
- D 1 - I - 0x0160DB 05:A0CB: 38        .byte $38   ; 
- D 1 - I - 0x0160DC 05:A0CC: 39        .byte $39   ; 
- D 1 - I - 0x0160DD 05:A0CD: 3C        .byte $3C   ; 
- D 1 - I - 0x0160DE 05:A0CE: 3D        .byte $3D   ; 
- D 1 - I - 0x0160DF 05:A0CF: 3E        .byte $3E   ; 
- D 1 - I - 0x0160E0 05:A0D0: 3F        .byte $3F   ; 
- D 1 - I - 0x0160E1 05:A0D1: 40        .byte $40   ; 
- D 1 - I - 0x0160E2 05:A0D2: 3B        .byte $3B   ; 
- D 1 - I - 0x0160E3 05:A0D3: 38        .byte $38   ; 
- D 1 - I - 0x0160E4 05:A0D4: 39        .byte $39   ; 
- D 1 - I - 0x0160E5 05:A0D5: 41        .byte $41   ; 
- D 1 - I - 0x0160E6 05:A0D6: 42        .byte $42   ; 
- D 1 - I - 0x0160E7 05:A0D7: 43        .byte $43   ; 
- D 1 - I - 0x0160E8 05:A0D8: 44        .byte $44   ; 
- D 1 - I - 0x0160E9 05:A0D9: 45        .byte $45   ; 
- D 1 - I - 0x0160EA 05:A0DA: 46        .byte $46   ; 
- D 1 - I - 0x0160EB 05:A0DB: 47        .byte $47   ; 
- D 1 - I - 0x0160EC 05:A0DC: 08        .byte $08   ; 
- D 1 - I - 0x0160ED 05:A0DD: 00        .byte $00   ; 
- D 1 - I - 0x0160EE 05:A0DE: 98        .byte $98   ; 
- D 1 - I - 0x0160EF 05:A0DF: 48        .byte $48   ; 
- D 1 - I - 0x0160F0 05:A0E0: 49        .byte $49   ; 
- D 1 - I - 0x0160F1 05:A0E1: 4A        .byte $4A   ; 
- D 1 - I - 0x0160F2 05:A0E2: 4B        .byte $4B   ; 
- D 1 - I - 0x0160F3 05:A0E3: 4C        .byte $4C   ; 
- D 1 - I - 0x0160F4 05:A0E4: 4D        .byte $4D   ; 
- D 1 - I - 0x0160F5 05:A0E5: 4E        .byte $4E   ; 
- D 1 - I - 0x0160F6 05:A0E6: 4B        .byte $4B   ; 
- D 1 - I - 0x0160F7 05:A0E7: 4C        .byte $4C   ; 
- D 1 - I - 0x0160F8 05:A0E8: 4F        .byte $4F   ; 
- D 1 - I - 0x0160F9 05:A0E9: 50        .byte $50   ; 
- D 1 - I - 0x0160FA 05:A0EA: 51        .byte $51   ; 
- D 1 - I - 0x0160FB 05:A0EB: 52        .byte $52   ; 
- D 1 - I - 0x0160FC 05:A0EC: 53        .byte $53   ; 
- D 1 - I - 0x0160FD 05:A0ED: 54        .byte $54   ; 
- D 1 - I - 0x0160FE 05:A0EE: 4B        .byte $4B   ; 
- D 1 - I - 0x0160FF 05:A0EF: 4C        .byte $4C   ; 
- D 1 - I - 0x016100 05:A0F0: 4D        .byte $4D   ; 
- D 1 - I - 0x016101 05:A0F1: 55        .byte $55   ; 
- D 1 - I - 0x016102 05:A0F2: 56        .byte $56   ; 
- D 1 - I - 0x016103 05:A0F3: 57        .byte $57   ; 
- D 1 - I - 0x016104 05:A0F4: 58        .byte $58   ; 
- D 1 - I - 0x016105 05:A0F5: 59        .byte $59   ; 
- D 1 - I - 0x016106 05:A0F6: 5A        .byte $5A   ; 
- D 1 - I - 0x016107 05:A0F7: 08        .byte $08   ; 
- D 1 - I - 0x016108 05:A0F8: 00        .byte $00   ; 
- D 1 - I - 0x016109 05:A0F9: 98        .byte $98   ; 
- D 1 - I - 0x01610A 05:A0FA: 5B        .byte $5B   ; 
- D 1 - I - 0x01610B 05:A0FB: 5C        .byte $5C   ; 
- D 1 - I - 0x01610C 05:A0FC: 5D        .byte $5D   ; 
- D 1 - I - 0x01610D 05:A0FD: 5E        .byte $5E   ; 
- D 1 - I - 0x01610E 05:A0FE: 5F        .byte $5F   ; 
- D 1 - I - 0x01610F 05:A0FF: 60        .byte $60   ; 
- D 1 - I - 0x016110 05:A100: 61        .byte $61   ; 
- D 1 - I - 0x016111 05:A101: 5E        .byte $5E   ; 
- D 1 - I - 0x016112 05:A102: 5F        .byte $5F   ; 
- D 1 - I - 0x016113 05:A103: 60        .byte $60   ; 
- D 1 - I - 0x016114 05:A104: 61        .byte $61   ; 
- D 1 - I - 0x016115 05:A105: 5E        .byte $5E   ; 
- D 1 - I - 0x016116 05:A106: 62        .byte $62   ; 
- D 1 - I - 0x016117 05:A107: 63        .byte $63   ; 
- D 1 - I - 0x016118 05:A108: 61        .byte $61   ; 
- D 1 - I - 0x016119 05:A109: 5E        .byte $5E   ; 
- D 1 - I - 0x01611A 05:A10A: 5F        .byte $5F   ; 
- D 1 - I - 0x01611B 05:A10B: 64        .byte $64   ; 
- D 1 - I - 0x01611C 05:A10C: 65        .byte $65   ; 
- D 1 - I - 0x01611D 05:A10D: 66        .byte $66   ; 
- D 1 - I - 0x01611E 05:A10E: 67        .byte $67   ; 
- D 1 - I - 0x01611F 05:A10F: 68        .byte $68   ; 
- D 1 - I - 0x016120 05:A110: 69        .byte $69   ; 
- D 1 - I - 0x016121 05:A111: 6A        .byte $6A   ; 
- D 1 - I - 0x016122 05:A112: 08        .byte $08   ; 
- D 1 - I - 0x016123 05:A113: 00        .byte $00   ; 
- D 1 - I - 0x016124 05:A114: 98        .byte $98   ; 
- D 1 - I - 0x016125 05:A115: 6B        .byte $6B   ; 
- D 1 - I - 0x016126 05:A116: 6C        .byte $6C   ; 
- D 1 - I - 0x016127 05:A117: 6D        .byte $6D   ; 
- D 1 - I - 0x016128 05:A118: 6E        .byte $6E   ; 
- D 1 - I - 0x016129 05:A119: 6F        .byte $6F   ; 
- D 1 - I - 0x01612A 05:A11A: 70        .byte $70   ; 
- D 1 - I - 0x01612B 05:A11B: 71        .byte $71   ; 
- D 1 - I - 0x01612C 05:A11C: 72        .byte $72   ; 
- D 1 - I - 0x01612D 05:A11D: 6F        .byte $6F   ; 
- D 1 - I - 0x01612E 05:A11E: 70        .byte $70   ; 
- D 1 - I - 0x01612F 05:A11F: 71        .byte $71   ; 
- D 1 - I - 0x016130 05:A120: 72        .byte $72   ; 
- D 1 - I - 0x016131 05:A121: 6F        .byte $6F   ; 
- D 1 - I - 0x016132 05:A122: 70        .byte $70   ; 
- D 1 - I - 0x016133 05:A123: 71        .byte $71   ; 
- D 1 - I - 0x016134 05:A124: 72        .byte $72   ; 
- D 1 - I - 0x016135 05:A125: 6F        .byte $6F   ; 
- D 1 - I - 0x016136 05:A126: 73        .byte $73   ; 
- D 1 - I - 0x016137 05:A127: 74        .byte $74   ; 
- D 1 - I - 0x016138 05:A128: 75        .byte $75   ; 
- D 1 - I - 0x016139 05:A129: 76        .byte $76   ; 
- D 1 - I - 0x01613A 05:A12A: 77        .byte $77   ; 
- D 1 - I - 0x01613B 05:A12B: 78        .byte $78   ; 
- D 1 - I - 0x01613C 05:A12C: 79        .byte $79   ; 
- D 1 - I - 0x01613D 05:A12D: 0A        .byte $0A   ; 
- D 1 - I - 0x01613E 05:A12E: 00        .byte $00   ; 
- D 1 - I - 0x01613F 05:A12F: 88        .byte $88   ; 
- D 1 - I - 0x016140 05:A130: 7A        .byte $7A   ; 
- D 1 - I - 0x016141 05:A131: 7B        .byte $7B   ; 
- D 1 - I - 0x016142 05:A132: 7C        .byte $7C   ; 
- D 1 - I - 0x016143 05:A133: 7D        .byte $7D   ; 
- D 1 - I - 0x016144 05:A134: 7E        .byte $7E   ; 
- D 1 - I - 0x016145 05:A135: 7F        .byte $7F   ; 
- D 1 - I - 0x016146 05:A136: 80        .byte $80   ; 
- D 1 - I - 0x016147 05:A137: 81        .byte $81   ; 
- D 1 - I - 0x016148 05:A138: 04        .byte $04   ; 
- D 1 - I - 0x016149 05:A139: 82        .byte $82   ; 
- D 1 - I - 0x01614A 05:A13A: 88        .byte $88   ; 
- D 1 - I - 0x01614B 05:A13B: 83        .byte $83   ; 
- D 1 - I - 0x01614C 05:A13C: 84        .byte $84   ; 
- D 1 - I - 0x01614D 05:A13D: 85        .byte $85   ; 
- D 1 - I - 0x01614E 05:A13E: 86        .byte $86   ; 
- D 1 - I - 0x01614F 05:A13F: 87        .byte $87   ; 
- D 1 - I - 0x016150 05:A140: 88        .byte $88   ; 
- D 1 - I - 0x016151 05:A141: 89        .byte $89   ; 
- D 1 - I - 0x016152 05:A142: 8A        .byte $8A   ; 
- D 1 - I - 0x016153 05:A143: 7F        .byte $7F   ; 
- D 1 - I - 0x016154 05:A144: 00        .byte $00   ; 
- D 1 - I - 0x016155 05:A145: 7F        .byte $7F   ; 
- D 1 - I - 0x016156 05:A146: 00        .byte $00   ; 
- D 1 - I - 0x016157 05:A147: 7F        .byte $7F   ; 
- D 1 - I - 0x016158 05:A148: 00        .byte $00   ; 
- D 1 - I - 0x016159 05:A149: FF        .byte $FF   ; end token


; bzk garbage
- - - - - - 0x01615A 05:A14A: FF        .byte $FF   ; 



_off008_A14B_02:
- D 1 - I - 0x01615B 05:A14B: F2        .byte $F2   ; 
- D 1 - I - 0x01615C 05:A14C: 01        .byte $01   ; 
- D 1 - I - 0x01615D 05:A14D: 02        .byte $02   ; 
- D 1 - I - 0x01615E 05:A14E: 03        .byte $03   ; 
- D 1 - I - 0x01615F 05:A14F: 04        .byte $04   ; 
- D 1 - I - 0x016160 05:A150: 05        .byte $05   ; 
- D 1 - I - 0x016161 05:A151: 06        .byte $06   ; 
- D 1 - I - 0x016162 05:A152: 07        .byte $07   ; 
- D 1 - I - 0x016163 05:A153: 08        .byte $08   ; 
- D 1 - I - 0x016164 05:A154: 09        .byte $09   ; 
- D 1 - I - 0x016165 05:A155: 06        .byte $06   ; 
- D 1 - I - 0x016166 05:A156: 07        .byte $07   ; 
- D 1 - I - 0x016167 05:A157: 0A        .byte $0A   ; 
- D 1 - I - 0x016168 05:A158: 0B        .byte $0B   ; 
- D 1 - I - 0x016169 05:A159: 06        .byte $06   ; 
- D 1 - I - 0x01616A 05:A15A: 07        .byte $07   ; 
- D 1 - I - 0x01616B 05:A15B: 0C        .byte $0C   ; 
- D 1 - I - 0x01616C 05:A15C: 0D        .byte $0D   ; 
- D 1 - I - 0x01616D 05:A15D: 0E        .byte $0E   ; 
- D 1 - I - 0x01616E 05:A15E: 0F        .byte $0F   ; 
- D 1 - I - 0x01616F 05:A15F: 10        .byte $10   ; 
- D 1 - I - 0x016170 05:A160: 11        .byte $11   ; 
- D 1 - I - 0x016171 05:A161: 12        .byte $12   ; 
- D 1 - I - 0x016172 05:A162: 07        .byte $07   ; 
- D 1 - I - 0x016173 05:A163: 08        .byte $08   ; 
- D 1 - I - 0x016174 05:A164: 09        .byte $09   ; 
- D 1 - I - 0x016175 05:A165: 06        .byte $06   ; 
- D 1 - I - 0x016176 05:A166: 07        .byte $07   ; 
- D 1 - I - 0x016177 05:A167: 0A        .byte $0A   ; 
- D 1 - I - 0x016178 05:A168: 13        .byte $13   ; 
- D 1 - I - 0x016179 05:A169: 14        .byte $14   ; 
- D 1 - I - 0x01617A 05:A16A: 15        .byte $15   ; 
- D 1 - I - 0x01617B 05:A16B: 16        .byte $16   ; 
- D 1 - I - 0x01617C 05:A16C: 17        .byte $17   ; 
- D 1 - I - 0x01617D 05:A16D: 18        .byte $18   ; 
- D 1 - I - 0x01617E 05:A16E: 19        .byte $19   ; 
- D 1 - I - 0x01617F 05:A16F: 1A        .byte $1A   ; 
- D 1 - I - 0x016180 05:A170: 1B        .byte $1B   ; 
- D 1 - I - 0x016181 05:A171: 1C        .byte $1C   ; 
- D 1 - I - 0x016182 05:A172: 1D        .byte $1D   ; 
- D 1 - I - 0x016183 05:A173: 1E        .byte $1E   ; 
- D 1 - I - 0x016184 05:A174: 1F        .byte $1F   ; 
- D 1 - I - 0x016185 05:A175: 20        .byte $20   ; 
- D 1 - I - 0x016186 05:A176: 1D        .byte $1D   ; 
- D 1 - I - 0x016187 05:A177: 21        .byte $21   ; 
- D 1 - I - 0x016188 05:A178: 22        .byte $22   ; 
- D 1 - I - 0x016189 05:A179: 1C        .byte $1C   ; 
- D 1 - I - 0x01618A 05:A17A: 1D        .byte $1D   ; 
- D 1 - I - 0x01618B 05:A17B: 23        .byte $23   ; 
- D 1 - I - 0x01618C 05:A17C: 24        .byte $24   ; 
- D 1 - I - 0x01618D 05:A17D: 25        .byte $25   ; 
- D 1 - I - 0x01618E 05:A17E: 26        .byte $26   ; 
- D 1 - I - 0x01618F 05:A17F: 27        .byte $27   ; 
- D 1 - I - 0x016190 05:A180: 28        .byte $28   ; 
- D 1 - I - 0x016191 05:A181: 1C        .byte $1C   ; 
- D 1 - I - 0x016192 05:A182: 1D        .byte $1D   ; 
- D 1 - I - 0x016193 05:A183: 1E        .byte $1E   ; 
- D 1 - I - 0x016194 05:A184: 1F        .byte $1F   ; 
- D 1 - I - 0x016195 05:A185: 20        .byte $20   ; 
- D 1 - I - 0x016196 05:A186: 1D        .byte $1D   ; 
- D 1 - I - 0x016197 05:A187: 29        .byte $29   ; 
- D 1 - I - 0x016198 05:A188: 2A        .byte $2A   ; 
- D 1 - I - 0x016199 05:A189: 2B        .byte $2B   ; 
- D 1 - I - 0x01619A 05:A18A: 2C        .byte $2C   ; 
- D 1 - I - 0x01619B 05:A18B: 2D        .byte $2D   ; 
- D 1 - I - 0x01619C 05:A18C: 2E        .byte $2E   ; 
- D 1 - I - 0x01619D 05:A18D: 2F        .byte $2F   ; 
- D 1 - I - 0x01619E 05:A18E: 30        .byte $30   ; 
- D 1 - I - 0x01619F 05:A18F: 31        .byte $31   ; 
- D 1 - I - 0x0161A0 05:A190: 32        .byte $32   ; 
- D 1 - I - 0x0161A1 05:A191: 33        .byte $33   ; 
- D 1 - I - 0x0161A2 05:A192: 34        .byte $34   ; 
- D 1 - I - 0x0161A3 05:A193: 35        .byte $35   ; 
- D 1 - I - 0x0161A4 05:A194: 36        .byte $36   ; 
- D 1 - I - 0x0161A5 05:A195: 37        .byte $37   ; 
- D 1 - I - 0x0161A6 05:A196: 38        .byte $38   ; 
- D 1 - I - 0x0161A7 05:A197: 39        .byte $39   ; 
- D 1 - I - 0x0161A8 05:A198: 3A        .byte $3A   ; 
- D 1 - I - 0x0161A9 05:A199: 33        .byte $33   ; 
- D 1 - I - 0x0161AA 05:A19A: 34        .byte $34   ; 
- D 1 - I - 0x0161AB 05:A19B: 35        .byte $35   ; 
- D 1 - I - 0x0161AC 05:A19C: 3B        .byte $3B   ; 
- D 1 - I - 0x0161AD 05:A19D: 3C        .byte $3C   ; 
- D 1 - I - 0x0161AE 05:A19E: 00        .byte $00   ; 
- D 1 - I - 0x0161AF 05:A19F: 3D        .byte $3D   ; 
- D 1 - I - 0x0161B0 05:A1A0: 3E        .byte $3E   ; 
- D 1 - I - 0x0161B1 05:A1A1: 33        .byte $33   ; 
- D 1 - I - 0x0161B2 05:A1A2: 34        .byte $34   ; 
- D 1 - I - 0x0161B3 05:A1A3: 3F        .byte $3F   ; 
- D 1 - I - 0x0161B4 05:A1A4: 40        .byte $40   ; 
- D 1 - I - 0x0161B5 05:A1A5: 41        .byte $41   ; 
- D 1 - I - 0x0161B6 05:A1A6: 42        .byte $42   ; 
- D 1 - I - 0x0161B7 05:A1A7: 43        .byte $43   ; 
- D 1 - I - 0x0161B8 05:A1A8: 00        .byte $00   ; 
- D 1 - I - 0x0161B9 05:A1A9: 44        .byte $44   ; 
- D 1 - I - 0x0161BA 05:A1AA: 45        .byte $45   ; 
- D 1 - I - 0x0161BB 05:A1AB: 46        .byte $46   ; 
- D 1 - I - 0x0161BC 05:A1AC: 47        .byte $47   ; 
- D 1 - I - 0x0161BD 05:A1AD: 48        .byte $48   ; 
- D 1 - I - 0x0161BE 05:A1AE: 49        .byte $49   ; 
- D 1 - I - 0x0161BF 05:A1AF: 4A        .byte $4A   ; 
- D 1 - I - 0x0161C0 05:A1B0: 4B        .byte $4B   ; 
- D 1 - I - 0x0161C1 05:A1B1: 4C        .byte $4C   ; 
- D 1 - I - 0x0161C2 05:A1B2: 4D        .byte $4D   ; 
- D 1 - I - 0x0161C3 05:A1B3: 4E        .byte $4E   ; 
- D 1 - I - 0x0161C4 05:A1B4: 4F        .byte $4F   ; 
- D 1 - I - 0x0161C5 05:A1B5: 50        .byte $50   ; 
- D 1 - I - 0x0161C6 05:A1B6: 51        .byte $51   ; 
- D 1 - I - 0x0161C7 05:A1B7: 52        .byte $52   ; 
- D 1 - I - 0x0161C8 05:A1B8: 53        .byte $53   ; 
- D 1 - I - 0x0161C9 05:A1B9: 4C        .byte $4C   ; 
- D 1 - I - 0x0161CA 05:A1BA: 4D        .byte $4D   ; 
- D 1 - I - 0x0161CB 05:A1BB: 54        .byte $54   ; 
- D 1 - I - 0x0161CC 05:A1BC: 55        .byte $55   ; 
- D 1 - I - 0x0161CD 05:A1BD: 56        .byte $56   ; 
- D 1 - I - 0x0161CE 05:A1BE: 02        .byte $02   ; 
- D 1 - I - 0x0161CF 05:A1BF: 00        .byte $00   ; 
- D 1 - I - 0x0161D0 05:A1C0: 87        .byte $87   ; 
- D 1 - I - 0x0161D1 05:A1C1: 57        .byte $57   ; 
- D 1 - I - 0x0161D2 05:A1C2: 4C        .byte $4C   ; 
- D 1 - I - 0x0161D3 05:A1C3: 58        .byte $58   ; 
- D 1 - I - 0x0161D4 05:A1C4: 59        .byte $59   ; 
- D 1 - I - 0x0161D5 05:A1C5: 5A        .byte $5A   ; 
- D 1 - I - 0x0161D6 05:A1C6: 5B        .byte $5B   ; 
- D 1 - I - 0x0161D7 05:A1C7: 5C        .byte $5C   ; 
- D 1 - I - 0x0161D8 05:A1C8: 02        .byte $02   ; 
- D 1 - I - 0x0161D9 05:A1C9: 00        .byte $00   ; 
- D 1 - I - 0x0161DA 05:A1CA: 9D        .byte $9D   ; 
- D 1 - I - 0x0161DB 05:A1CB: 5D        .byte $5D   ; 
- D 1 - I - 0x0161DC 05:A1CC: 5E        .byte $5E   ; 
- D 1 - I - 0x0161DD 05:A1CD: 5F        .byte $5F   ; 
- D 1 - I - 0x0161DE 05:A1CE: 47        .byte $47   ; 
- D 1 - I - 0x0161DF 05:A1CF: 60        .byte $60   ; 
- D 1 - I - 0x0161E0 05:A1D0: 61        .byte $61   ; 
- D 1 - I - 0x0161E1 05:A1D1: 62        .byte $62   ; 
- D 1 - I - 0x0161E2 05:A1D2: 63        .byte $63   ; 
- D 1 - I - 0x0161E3 05:A1D3: 64        .byte $64   ; 
- D 1 - I - 0x0161E4 05:A1D4: 65        .byte $65   ; 
- D 1 - I - 0x0161E5 05:A1D5: 66        .byte $66   ; 
- D 1 - I - 0x0161E6 05:A1D6: 67        .byte $67   ; 
- D 1 - I - 0x0161E7 05:A1D7: 68        .byte $68   ; 
- D 1 - I - 0x0161E8 05:A1D8: 65        .byte $65   ; 
- D 1 - I - 0x0161E9 05:A1D9: 69        .byte $69   ; 
- D 1 - I - 0x0161EA 05:A1DA: 6A        .byte $6A   ; 
- D 1 - I - 0x0161EB 05:A1DB: 6B        .byte $6B   ; 
- D 1 - I - 0x0161EC 05:A1DC: 65        .byte $65   ; 
- D 1 - I - 0x0161ED 05:A1DD: 6C        .byte $6C   ; 
- D 1 - I - 0x0161EE 05:A1DE: 6D        .byte $6D   ; 
- D 1 - I - 0x0161EF 05:A1DF: 6E        .byte $6E   ; 
- D 1 - I - 0x0161F0 05:A1E0: 6F        .byte $6F   ; 
- D 1 - I - 0x0161F1 05:A1E1: 70        .byte $70   ; 
- D 1 - I - 0x0161F2 05:A1E2: 71        .byte $71   ; 
- D 1 - I - 0x0161F3 05:A1E3: 72        .byte $72   ; 
- D 1 - I - 0x0161F4 05:A1E4: 73        .byte $73   ; 
- D 1 - I - 0x0161F5 05:A1E5: 74        .byte $74   ; 
- D 1 - I - 0x0161F6 05:A1E6: 75        .byte $75   ; 
- D 1 - I - 0x0161F7 05:A1E7: 76        .byte $76   ; 
- D 1 - I - 0x0161F8 05:A1E8: 02        .byte $02   ; 
- D 1 - I - 0x0161F9 05:A1E9: 00        .byte $00   ; 
- D 1 - I - 0x0161FA 05:A1EA: A4        .byte $A4   ; 
- D 1 - I - 0x0161FB 05:A1EB: 77        .byte $77   ; 
- D 1 - I - 0x0161FC 05:A1EC: 78        .byte $78   ; 
- D 1 - I - 0x0161FD 05:A1ED: 79        .byte $79   ; 
- D 1 - I - 0x0161FE 05:A1EE: 7A        .byte $7A   ; 
- D 1 - I - 0x0161FF 05:A1EF: 7B        .byte $7B   ; 
- D 1 - I - 0x016200 05:A1F0: 7C        .byte $7C   ; 
- D 1 - I - 0x016201 05:A1F1: 7D        .byte $7D   ; 
- D 1 - I - 0x016202 05:A1F2: 7E        .byte $7E   ; 
- D 1 - I - 0x016203 05:A1F3: 7F        .byte $7F   ; 
- D 1 - I - 0x016204 05:A1F4: 80        .byte $80   ; 
- D 1 - I - 0x016205 05:A1F5: 81        .byte $81   ; 
- D 1 - I - 0x016206 05:A1F6: 82        .byte $82   ; 
- D 1 - I - 0x016207 05:A1F7: 83        .byte $83   ; 
- D 1 - I - 0x016208 05:A1F8: 84        .byte $84   ; 
- D 1 - I - 0x016209 05:A1F9: 81        .byte $81   ; 
- D 1 - I - 0x01620A 05:A1FA: 85        .byte $85   ; 
- D 1 - I - 0x01620B 05:A1FB: 86        .byte $86   ; 
- D 1 - I - 0x01620C 05:A1FC: 87        .byte $87   ; 
- D 1 - I - 0x01620D 05:A1FD: 88        .byte $88   ; 
- D 1 - I - 0x01620E 05:A1FE: 89        .byte $89   ; 
- D 1 - I - 0x01620F 05:A1FF: 8A        .byte $8A   ; 
- D 1 - I - 0x016210 05:A200: 8B        .byte $8B   ; 
- D 1 - I - 0x016211 05:A201: 8C        .byte $8C   ; 
- D 1 - I - 0x016212 05:A202: 8D        .byte $8D   ; 
- D 1 - I - 0x016213 05:A203: 8E        .byte $8E   ; 
- D 1 - I - 0x016214 05:A204: 8F        .byte $8F   ; 
- D 1 - I - 0x016215 05:A205: 90        .byte $90   ; 
- D 1 - I - 0x016216 05:A206: 91        .byte $91   ; 
- D 1 - I - 0x016217 05:A207: 92        .byte $92   ; 
- D 1 - I - 0x016218 05:A208: 93        .byte $93   ; 
- D 1 - I - 0x016219 05:A209: 94        .byte $94   ; 
- D 1 - I - 0x01621A 05:A20A: 95        .byte $95   ; 
- D 1 - I - 0x01621B 05:A20B: 96        .byte $96   ; 
- D 1 - I - 0x01621C 05:A20C: 97        .byte $97   ; 
- D 1 - I - 0x01621D 05:A20D: 98        .byte $98   ; 
- D 1 - I - 0x01621E 05:A20E: 99        .byte $99   ; 
- D 1 - I - 0x01621F 05:A20F: 02        .byte $02   ; 
- D 1 - I - 0x016220 05:A210: 00        .byte $00   ; 
- D 1 - I - 0x016221 05:A211: 85        .byte $85   ; 
- D 1 - I - 0x016222 05:A212: 9A        .byte $9A   ; 
- D 1 - I - 0x016223 05:A213: 9B        .byte $9B   ; 
- D 1 - I - 0x016224 05:A214: 9C        .byte $9C   ; 
- D 1 - I - 0x016225 05:A215: 9D        .byte $9D   ; 
- D 1 - I - 0x016226 05:A216: 9E        .byte $9E   ; 
- D 1 - I - 0x016227 05:A217: 06        .byte $06   ; 
- D 1 - I - 0x016228 05:A218: 00        .byte $00   ; 
- D 1 - I - 0x016229 05:A219: 93        .byte $93   ; 
- D 1 - I - 0x01622A 05:A21A: 9F        .byte $9F   ; 
- D 1 - I - 0x01622B 05:A21B: A0        .byte $A0   ; 
- D 1 - I - 0x01622C 05:A21C: A1        .byte $A1   ; 
- D 1 - I - 0x01622D 05:A21D: A2        .byte $A2   ; 
- D 1 - I - 0x01622E 05:A21E: A3        .byte $A3   ; 
- D 1 - I - 0x01622F 05:A21F: 00        .byte $00   ; 
- D 1 - I - 0x016230 05:A220: A4        .byte $A4   ; 
- D 1 - I - 0x016231 05:A221: A5        .byte $A5   ; 
- D 1 - I - 0x016232 05:A222: A6        .byte $A6   ; 
- D 1 - I - 0x016233 05:A223: 00        .byte $00   ; 
- D 1 - I - 0x016234 05:A224: A7        .byte $A7   ; 
- D 1 - I - 0x016235 05:A225: A8        .byte $A8   ; 
- D 1 - I - 0x016236 05:A226: A9        .byte $A9   ; 
- D 1 - I - 0x016237 05:A227: AA        .byte $AA   ; 
- D 1 - I - 0x016238 05:A228: AB        .byte $AB   ; 
- D 1 - I - 0x016239 05:A229: AC        .byte $AC   ; 
- D 1 - I - 0x01623A 05:A22A: AD        .byte $AD   ; 
- D 1 - I - 0x01623B 05:A22B: AE        .byte $AE   ; 
- D 1 - I - 0x01623C 05:A22C: AF        .byte $AF   ; 
- D 1 - I - 0x01623D 05:A22D: 02        .byte $02   ; 
- D 1 - I - 0x01623E 05:A22E: 00        .byte $00   ; 
- D 1 - I - 0x01623F 05:A22F: 87        .byte $87   ; 
- D 1 - I - 0x016240 05:A230: B0        .byte $B0   ; 
- D 1 - I - 0x016241 05:A231: B1        .byte $B1   ; 
- D 1 - I - 0x016242 05:A232: B2        .byte $B2   ; 
- D 1 - I - 0x016243 05:A233: B3        .byte $B3   ; 
- D 1 - I - 0x016244 05:A234: B4        .byte $B4   ; 
- D 1 - I - 0x016245 05:A235: B5        .byte $B5   ; 
- D 1 - I - 0x016246 05:A236: B6        .byte $B6   ; 
- D 1 - I - 0x016247 05:A237: 04        .byte $04   ; 
- D 1 - I - 0x016248 05:A238: 00        .byte $00   ; 
- D 1 - I - 0x016249 05:A239: 93        .byte $93   ; 
- D 1 - I - 0x01624A 05:A23A: B7        .byte $B7   ; 
- D 1 - I - 0x01624B 05:A23B: B8        .byte $B8   ; 
- D 1 - I - 0x01624C 05:A23C: B9        .byte $B9   ; 
- D 1 - I - 0x01624D 05:A23D: BA        .byte $BA   ; 
- D 1 - I - 0x01624E 05:A23E: BB        .byte $BB   ; 
- D 1 - I - 0x01624F 05:A23F: BC        .byte $BC   ; 
- D 1 - I - 0x016250 05:A240: BD        .byte $BD   ; 
- D 1 - I - 0x016251 05:A241: BE        .byte $BE   ; 
- D 1 - I - 0x016252 05:A242: BF        .byte $BF   ; 
- D 1 - I - 0x016253 05:A243: C0        .byte $C0   ; 
- D 1 - I - 0x016254 05:A244: C1        .byte $C1   ; 
- D 1 - I - 0x016255 05:A245: C2        .byte $C2   ; 
- D 1 - I - 0x016256 05:A246: C3        .byte $C3   ; 
- D 1 - I - 0x016257 05:A247: C4        .byte $C4   ; 
- D 1 - I - 0x016258 05:A248: C5        .byte $C5   ; 
- D 1 - I - 0x016259 05:A249: C6        .byte $C6   ; 
- D 1 - I - 0x01625A 05:A24A: 00        .byte $00   ; 
- D 1 - I - 0x01625B 05:A24B: C7        .byte $C7   ; 
- D 1 - I - 0x01625C 05:A24C: C8        .byte $C8   ; 
- D 1 - I - 0x01625D 05:A24D: 04        .byte $04   ; 
- D 1 - I - 0x01625E 05:A24E: 00        .byte $00   ; 
- D 1 - I - 0x01625F 05:A24F: 85        .byte $85   ; 
- D 1 - I - 0x016260 05:A250: C9        .byte $C9   ; 
- D 1 - I - 0x016261 05:A251: CA        .byte $CA   ; 
- D 1 - I - 0x016262 05:A252: CB        .byte $CB   ; 
- D 1 - I - 0x016263 05:A253: CC        .byte $CC   ; 
- D 1 - I - 0x016264 05:A254: CD        .byte $CD   ; 
- D 1 - I - 0x016265 05:A255: 04        .byte $04   ; 
- D 1 - I - 0x016266 05:A256: 00        .byte $00   ; 
- D 1 - I - 0x016267 05:A257: 89        .byte $89   ; 
- D 1 - I - 0x016268 05:A258: CE        .byte $CE   ; 
- D 1 - I - 0x016269 05:A259: CF        .byte $CF   ; 
- D 1 - I - 0x01626A 05:A25A: D0        .byte $D0   ; 
- D 1 - I - 0x01626B 05:A25B: D1        .byte $D1   ; 
- D 1 - I - 0x01626C 05:A25C: D2        .byte $D2   ; 
- D 1 - I - 0x01626D 05:A25D: D3        .byte $D3   ; 
- D 1 - I - 0x01626E 05:A25E: D4        .byte $D4   ; 
- D 1 - I - 0x01626F 05:A25F: D5        .byte $D5   ; 
- D 1 - I - 0x016270 05:A260: D6        .byte $D6   ; 
- D 1 - I - 0x016271 05:A261: 06        .byte $06   ; 
- D 1 - I - 0x016272 05:A262: 00        .byte $00   ; 
- D 1 - I - 0x016273 05:A263: 81        .byte $81   ; 
- D 1 - I - 0x016274 05:A264: D7        .byte $D7   ; 
- D 1 - I - 0x016275 05:A265: 07        .byte $07   ; 
- D 1 - I - 0x016276 05:A266: 00        .byte $00   ; 
- D 1 - I - 0x016277 05:A267: 86        .byte $86   ; 
- D 1 - I - 0x016278 05:A268: D8        .byte $D8   ; 
- D 1 - I - 0x016279 05:A269: D9        .byte $D9   ; 
- D 1 - I - 0x01627A 05:A26A: DA        .byte $DA   ; 
- D 1 - I - 0x01627B 05:A26B: DB        .byte $DB   ; 
- D 1 - I - 0x01627C 05:A26C: DC        .byte $DC   ; 
- D 1 - I - 0x01627D 05:A26D: DD        .byte $DD   ; 
- D 1 - I - 0x01627E 05:A26E: 03        .byte $03   ; 
- D 1 - I - 0x01627F 05:A26F: 00        .byte $00   ; 
- D 1 - I - 0x016280 05:A270: 88        .byte $88   ; 
- D 1 - I - 0x016281 05:A271: DE        .byte $DE   ; 
- D 1 - I - 0x016282 05:A272: DF        .byte $DF   ; 
- D 1 - I - 0x016283 05:A273: E0        .byte $E0   ; 
- D 1 - I - 0x016284 05:A274: E1        .byte $E1   ; 
- D 1 - I - 0x016285 05:A275: E2        .byte $E2   ; 
- D 1 - I - 0x016286 05:A276: E3        .byte $E3   ; 
- D 1 - I - 0x016287 05:A277: E4        .byte $E4   ; 
- D 1 - I - 0x016288 05:A278: E5        .byte $E5   ; 
- D 1 - I - 0x016289 05:A279: 07        .byte $07   ; 
- D 1 - I - 0x01628A 05:A27A: 00        .byte $00   ; 
- D 1 - I - 0x01628B 05:A27B: 81        .byte $81   ; 
- D 1 - I - 0x01628C 05:A27C: E6        .byte $E6   ; 
- D 1 - I - 0x01628D 05:A27D: 07        .byte $07   ; 
- D 1 - I - 0x01628E 05:A27E: 00        .byte $00   ; 
- D 1 - I - 0x01628F 05:A27F: 82        .byte $82   ; 
- D 1 - I - 0x016290 05:A280: E7        .byte $E7   ; 
- D 1 - I - 0x016291 05:A281: E8        .byte $E8   ; 
- D 1 - I - 0x016292 05:A282: 02        .byte $02   ; 
- D 1 - I - 0x016293 05:A283: 00        .byte $00   ; 
- D 1 - I - 0x016294 05:A284: 82        .byte $82   ; 
- D 1 - I - 0x016295 05:A285: E9        .byte $E9   ; 
- D 1 - I - 0x016296 05:A286: EA        .byte $EA   ; 
- D 1 - I - 0x016297 05:A287: 03        .byte $03   ; 
- D 1 - I - 0x016298 05:A288: 00        .byte $00   ; 
- D 1 - I - 0x016299 05:A289: 8F        .byte $8F   ; 
- D 1 - I - 0x01629A 05:A28A: EB        .byte $EB   ; 
- D 1 - I - 0x01629B 05:A28B: EC        .byte $EC   ; 
- D 1 - I - 0x01629C 05:A28C: ED        .byte $ED   ; 
- D 1 - I - 0x01629D 05:A28D: EE        .byte $EE   ; 
- D 1 - I - 0x01629E 05:A28E: 00        .byte $00   ; 
- D 1 - I - 0x01629F 05:A28F: EF        .byte $EF   ; 
- D 1 - I - 0x0162A0 05:A290: F0        .byte $F0   ; 
- D 1 - I - 0x0162A1 05:A291: F1        .byte $F1   ; 
- D 1 - I - 0x0162A2 05:A292: F2        .byte $F2   ; 
- D 1 - I - 0x0162A3 05:A293: 00        .byte $00   ; 
- D 1 - I - 0x0162A4 05:A294: F3        .byte $F3   ; 
- D 1 - I - 0x0162A5 05:A295: F4        .byte $F4   ; 
- D 1 - I - 0x0162A6 05:A296: F5        .byte $F5   ; 
- D 1 - I - 0x0162A7 05:A297: F6        .byte $F6   ; 
- D 1 - I - 0x0162A8 05:A298: F7        .byte $F7   ; 
- D 1 - I - 0x0162A9 05:A299: 08        .byte $08   ; 
- D 1 - I - 0x0162AA 05:A29A: 00        .byte $00   ; 
- D 1 - I - 0x0162AB 05:A29B: 86        .byte $86   ; 
- D 1 - I - 0x0162AC 05:A29C: 01        .byte $01   ; 
- D 1 - I - 0x0162AD 05:A29D: 02        .byte $02   ; 
- D 1 - I - 0x0162AE 05:A29E: 00        .byte $00   ; 
- D 1 - I - 0x0162AF 05:A29F: 03        .byte $03   ; 
- D 1 - I - 0x0162B0 05:A2A0: 04        .byte $04   ; 
- D 1 - I - 0x0162B1 05:A2A1: 05        .byte $05   ; 
- D 1 - I - 0x0162B2 05:A2A2: 04        .byte $04   ; 
- D 1 - I - 0x0162B3 05:A2A3: 00        .byte $00   ; 
- D 1 - I - 0x0162B4 05:A2A4: 8F        .byte $8F   ; 
- D 1 - I - 0x0162B5 05:A2A5: 06        .byte $06   ; 
- D 1 - I - 0x0162B6 05:A2A6: 07        .byte $07   ; 
- D 1 - I - 0x0162B7 05:A2A7: 08        .byte $08   ; 
- D 1 - I - 0x0162B8 05:A2A8: 09        .byte $09   ; 
- D 1 - I - 0x0162B9 05:A2A9: 0A        .byte $0A   ; 
- D 1 - I - 0x0162BA 05:A2AA: 0B        .byte $0B   ; 
- D 1 - I - 0x0162BB 05:A2AB: 00        .byte $00   ; 
- D 1 - I - 0x0162BC 05:A2AC: 0C        .byte $0C   ; 
- D 1 - I - 0x0162BD 05:A2AD: 0D        .byte $0D   ; 
- D 1 - I - 0x0162BE 05:A2AE: 0E        .byte $0E   ; 
- D 1 - I - 0x0162BF 05:A2AF: 0F        .byte $0F   ; 
- D 1 - I - 0x0162C0 05:A2B0: 10        .byte $10   ; 
- D 1 - I - 0x0162C1 05:A2B1: 11        .byte $11   ; 
- D 1 - I - 0x0162C2 05:A2B2: 12        .byte $12   ; 
- D 1 - I - 0x0162C3 05:A2B3: 13        .byte $13   ; 
- D 1 - I - 0x0162C4 05:A2B4: 07        .byte $07   ; 
- D 1 - I - 0x0162C5 05:A2B5: 00        .byte $00   ; 
- D 1 - I - 0x0162C6 05:A2B6: 8B        .byte $8B   ; 
- D 1 - I - 0x0162C7 05:A2B7: 14        .byte $14   ; 
- D 1 - I - 0x0162C8 05:A2B8: 15        .byte $15   ; 
- D 1 - I - 0x0162C9 05:A2B9: 16        .byte $16   ; 
- D 1 - I - 0x0162CA 05:A2BA: 17        .byte $17   ; 
- D 1 - I - 0x0162CB 05:A2BB: 18        .byte $18   ; 
- D 1 - I - 0x0162CC 05:A2BC: 19        .byte $19   ; 
- D 1 - I - 0x0162CD 05:A2BD: 1A        .byte $1A   ; 
- D 1 - I - 0x0162CE 05:A2BE: 1B        .byte $1B   ; 
- D 1 - I - 0x0162CF 05:A2BF: 1C        .byte $1C   ; 
- D 1 - I - 0x0162D0 05:A2C0: 1D        .byte $1D   ; 
- D 1 - I - 0x0162D1 05:A2C1: 1E        .byte $1E   ; 
- D 1 - I - 0x0162D2 05:A2C2: 02        .byte $02   ; 
- D 1 - I - 0x0162D3 05:A2C3: 00        .byte $00   ; 
- D 1 - I - 0x0162D4 05:A2C4: 83        .byte $83   ; 
- D 1 - I - 0x0162D5 05:A2C5: 1F        .byte $1F   ; 
- D 1 - I - 0x0162D6 05:A2C6: 20        .byte $20   ; 
- D 1 - I - 0x0162D7 05:A2C7: 21        .byte $21   ; 
- D 1 - I - 0x0162D8 05:A2C8: 02        .byte $02   ; 
- D 1 - I - 0x0162D9 05:A2C9: 00        .byte $00   ; 
- D 1 - I - 0x0162DA 05:A2CA: 87        .byte $87   ; 
- D 1 - I - 0x0162DB 05:A2CB: 22        .byte $22   ; 
- D 1 - I - 0x0162DC 05:A2CC: 23        .byte $23   ; 
- D 1 - I - 0x0162DD 05:A2CD: 24        .byte $24   ; 
- D 1 - I - 0x0162DE 05:A2CE: 25        .byte $25   ; 
- D 1 - I - 0x0162DF 05:A2CF: 26        .byte $26   ; 
- D 1 - I - 0x0162E0 05:A2D0: 27        .byte $27   ; 
- D 1 - I - 0x0162E1 05:A2D1: 28        .byte $28   ; 
- D 1 - I - 0x0162E2 05:A2D2: 08        .byte $08   ; 
- D 1 - I - 0x0162E3 05:A2D3: 00        .byte $00   ; 
- D 1 - I - 0x0162E4 05:A2D4: 98        .byte $98   ; 
- D 1 - I - 0x0162E5 05:A2D5: 29        .byte $29   ; 
- D 1 - I - 0x0162E6 05:A2D6: 00        .byte $00   ; 
- D 1 - I - 0x0162E7 05:A2D7: 2A        .byte $2A   ; 
- D 1 - I - 0x0162E8 05:A2D8: 2B        .byte $2B   ; 
- D 1 - I - 0x0162E9 05:A2D9: 2C        .byte $2C   ; 
- D 1 - I - 0x0162EA 05:A2DA: 2D        .byte $2D   ; 
- D 1 - I - 0x0162EB 05:A2DB: 2E        .byte $2E   ; 
- D 1 - I - 0x0162EC 05:A2DC: 2F        .byte $2F   ; 
- D 1 - I - 0x0162ED 05:A2DD: 30        .byte $30   ; 
- D 1 - I - 0x0162EE 05:A2DE: 31        .byte $31   ; 
- D 1 - I - 0x0162EF 05:A2DF: 32        .byte $32   ; 
- D 1 - I - 0x0162F0 05:A2E0: 33        .byte $33   ; 
- D 1 - I - 0x0162F1 05:A2E1: 34        .byte $34   ; 
- D 1 - I - 0x0162F2 05:A2E2: 35        .byte $35   ; 
- D 1 - I - 0x0162F3 05:A2E3: 36        .byte $36   ; 
- D 1 - I - 0x0162F4 05:A2E4: 37        .byte $37   ; 
- D 1 - I - 0x0162F5 05:A2E5: 00        .byte $00   ; 
- D 1 - I - 0x0162F6 05:A2E6: 38        .byte $38   ; 
- D 1 - I - 0x0162F7 05:A2E7: 39        .byte $39   ; 
- D 1 - I - 0x0162F8 05:A2E8: 3A        .byte $3A   ; 
- D 1 - I - 0x0162F9 05:A2E9: 3B        .byte $3B   ; 
- D 1 - I - 0x0162FA 05:A2EA: 00        .byte $00   ; 
- D 1 - I - 0x0162FB 05:A2EB: 3C        .byte $3C   ; 
- D 1 - I - 0x0162FC 05:A2EC: 3D        .byte $3D   ; 
- D 1 - I - 0x0162FD 05:A2ED: 07        .byte $07   ; 
- D 1 - I - 0x0162FE 05:A2EE: 00        .byte $00   ; 
- D 1 - I - 0x0162FF 05:A2EF: 82        .byte $82   ; 
- D 1 - I - 0x016300 05:A2F0: 3E        .byte $3E   ; 
- D 1 - I - 0x016301 05:A2F1: 3F        .byte $3F   ; 
- D 1 - I - 0x016302 05:A2F2: 02        .byte $02   ; 
- D 1 - I - 0x016303 05:A2F3: 00        .byte $00   ; 
- D 1 - I - 0x016304 05:A2F4: 8E        .byte $8E   ; 
- D 1 - I - 0x016305 05:A2F5: 40        .byte $40   ; 
- D 1 - I - 0x016306 05:A2F6: 41        .byte $41   ; 
- D 1 - I - 0x016307 05:A2F7: 42        .byte $42   ; 
- D 1 - I - 0x016308 05:A2F8: 43        .byte $43   ; 
- D 1 - I - 0x016309 05:A2F9: 44        .byte $44   ; 
- D 1 - I - 0x01630A 05:A2FA: 45        .byte $45   ; 
- D 1 - I - 0x01630B 05:A2FB: 46        .byte $46   ; 
- D 1 - I - 0x01630C 05:A2FC: 47        .byte $47   ; 
- D 1 - I - 0x01630D 05:A2FD: 48        .byte $48   ; 
- D 1 - I - 0x01630E 05:A2FE: 49        .byte $49   ; 
- D 1 - I - 0x01630F 05:A2FF: 4A        .byte $4A   ; 
- D 1 - I - 0x016310 05:A300: 4B        .byte $4B   ; 
- D 1 - I - 0x016311 05:A301: 4C        .byte $4C   ; 
- D 1 - I - 0x016312 05:A302: 4D        .byte $4D   ; 
- D 1 - I - 0x016313 05:A303: 03        .byte $03   ; 
- D 1 - I - 0x016314 05:A304: 00        .byte $00   ; 
- D 1 - I - 0x016315 05:A305: 84        .byte $84   ; 
- D 1 - I - 0x016316 05:A306: 4E        .byte $4E   ; 
- D 1 - I - 0x016317 05:A307: 4F        .byte $4F   ; 
- D 1 - I - 0x016318 05:A308: 00        .byte $00   ; 
- D 1 - I - 0x016319 05:A309: 50        .byte $50   ; 
- D 1 - I - 0x01631A 05:A30A: 07        .byte $07   ; 
- D 1 - I - 0x01631B 05:A30B: 00        .byte $00   ; 
- D 1 - I - 0x01631C 05:A30C: 82        .byte $82   ; 
- D 1 - I - 0x01631D 05:A30D: 51        .byte $51   ; 
- D 1 - I - 0x01631E 05:A30E: 52        .byte $52   ; 
- D 1 - I - 0x01631F 05:A30F: 02        .byte $02   ; 
- D 1 - I - 0x016320 05:A310: 00        .byte $00   ; 
- D 1 - I - 0x016321 05:A311: 96        .byte $96   ; 
- D 1 - I - 0x016322 05:A312: 53        .byte $53   ; 
- D 1 - I - 0x016323 05:A313: 54        .byte $54   ; 
- D 1 - I - 0x016324 05:A314: 55        .byte $55   ; 
- D 1 - I - 0x016325 05:A315: 56        .byte $56   ; 
- D 1 - I - 0x016326 05:A316: 57        .byte $57   ; 
- D 1 - I - 0x016327 05:A317: 58        .byte $58   ; 
- D 1 - I - 0x016328 05:A318: 59        .byte $59   ; 
- D 1 - I - 0x016329 05:A319: 5A        .byte $5A   ; 
- D 1 - I - 0x01632A 05:A31A: 5B        .byte $5B   ; 
- D 1 - I - 0x01632B 05:A31B: 49        .byte $49   ; 
- D 1 - I - 0x01632C 05:A31C: 5C        .byte $5C   ; 
- D 1 - I - 0x01632D 05:A31D: 5D        .byte $5D   ; 
- D 1 - I - 0x01632E 05:A31E: 5E        .byte $5E   ; 
- D 1 - I - 0x01632F 05:A31F: 5F        .byte $5F   ; 
- D 1 - I - 0x016330 05:A320: 60        .byte $60   ; 
- D 1 - I - 0x016331 05:A321: 61        .byte $61   ; 
- D 1 - I - 0x016332 05:A322: 00        .byte $00   ; 
- D 1 - I - 0x016333 05:A323: 62        .byte $62   ; 
- D 1 - I - 0x016334 05:A324: 63        .byte $63   ; 
- D 1 - I - 0x016335 05:A325: 64        .byte $64   ; 
- D 1 - I - 0x016336 05:A326: 65        .byte $65   ; 
- D 1 - I - 0x016337 05:A327: 66        .byte $66   ; 
- D 1 - I - 0x016338 05:A328: 06        .byte $06   ; 
- D 1 - I - 0x016339 05:A329: 00        .byte $00   ; 
- D 1 - I - 0x01633A 05:A32A: 8D        .byte $8D   ; 
- D 1 - I - 0x01633B 05:A32B: 67        .byte $67   ; 
- D 1 - I - 0x01633C 05:A32C: 68        .byte $68   ; 
- D 1 - I - 0x01633D 05:A32D: 69        .byte $69   ; 
- D 1 - I - 0x01633E 05:A32E: 00        .byte $00   ; 
- D 1 - I - 0x01633F 05:A32F: 6A        .byte $6A   ; 
- D 1 - I - 0x016340 05:A330: 6B        .byte $6B   ; 
- D 1 - I - 0x016341 05:A331: 6C        .byte $6C   ; 
- D 1 - I - 0x016342 05:A332: 6D        .byte $6D   ; 
- D 1 - I - 0x016343 05:A333: 6E        .byte $6E   ; 
- D 1 - I - 0x016344 05:A334: 6F        .byte $6F   ; 
- D 1 - I - 0x016345 05:A335: 70        .byte $70   ; 
- D 1 - I - 0x016346 05:A336: 71        .byte $71   ; 
- D 1 - I - 0x016347 05:A337: 72        .byte $72   ; 
- D 1 - I - 0x016348 05:A338: 02        .byte $02   ; 
- D 1 - I - 0x016349 05:A339: 49        .byte $49   ; 
- D 1 - I - 0x01634A 05:A33A: 8B        .byte $8B   ; 
- D 1 - I - 0x01634B 05:A33B: 73        .byte $73   ; 
- D 1 - I - 0x01634C 05:A33C: 74        .byte $74   ; 
- D 1 - I - 0x01634D 05:A33D: 75        .byte $75   ; 
- D 1 - I - 0x01634E 05:A33E: 76        .byte $76   ; 
- D 1 - I - 0x01634F 05:A33F: 77        .byte $77   ; 
- D 1 - I - 0x016350 05:A340: 78        .byte $78   ; 
- D 1 - I - 0x016351 05:A341: 79        .byte $79   ; 
- D 1 - I - 0x016352 05:A342: 7A        .byte $7A   ; 
- D 1 - I - 0x016353 05:A343: 7B        .byte $7B   ; 
- D 1 - I - 0x016354 05:A344: 7C        .byte $7C   ; 
- D 1 - I - 0x016355 05:A345: 7D        .byte $7D   ; 
- D 1 - I - 0x016356 05:A346: 06        .byte $06   ; 
- D 1 - I - 0x016357 05:A347: 00        .byte $00   ; 
- D 1 - I - 0x016358 05:A348: 81        .byte $81   ; 
- D 1 - I - 0x016359 05:A349: 7E        .byte $7E   ; 
- D 1 - I - 0x01635A 05:A34A: 02        .byte $02   ; 
- D 1 - I - 0x01635B 05:A34B: 00        .byte $00   ; 
- D 1 - I - 0x01635C 05:A34C: 98        .byte $98   ; 
- D 1 - I - 0x01635D 05:A34D: 7F        .byte $7F   ; 
- D 1 - I - 0x01635E 05:A34E: 80        .byte $80   ; 
- D 1 - I - 0x01635F 05:A34F: 81        .byte $81   ; 
- D 1 - I - 0x016360 05:A350: 82        .byte $82   ; 
- D 1 - I - 0x016361 05:A351: 83        .byte $83   ; 
- D 1 - I - 0x016362 05:A352: 84        .byte $84   ; 
- D 1 - I - 0x016363 05:A353: 00        .byte $00   ; 
- D 1 - I - 0x016364 05:A354: 85        .byte $85   ; 
- D 1 - I - 0x016365 05:A355: 00        .byte $00   ; 
- D 1 - I - 0x016366 05:A356: 86        .byte $86   ; 
- D 1 - I - 0x016367 05:A357: 87        .byte $87   ; 
- D 1 - I - 0x016368 05:A358: 88        .byte $88   ; 
- D 1 - I - 0x016369 05:A359: 89        .byte $89   ; 
- D 1 - I - 0x01636A 05:A35A: 8A        .byte $8A   ; 
- D 1 - I - 0x01636B 05:A35B: 8B        .byte $8B   ; 
- D 1 - I - 0x01636C 05:A35C: 8C        .byte $8C   ; 
- D 1 - I - 0x01636D 05:A35D: 8D        .byte $8D   ; 
- D 1 - I - 0x01636E 05:A35E: 8E        .byte $8E   ; 
- D 1 - I - 0x01636F 05:A35F: 8F        .byte $8F   ; 
- D 1 - I - 0x016370 05:A360: 90        .byte $90   ; 
- D 1 - I - 0x016371 05:A361: 00        .byte $00   ; 
- D 1 - I - 0x016372 05:A362: 91        .byte $91   ; 
- D 1 - I - 0x016373 05:A363: 92        .byte $92   ; 
- D 1 - I - 0x016374 05:A364: 93        .byte $93   ; 
- D 1 - I - 0x016375 05:A365: 05        .byte $05   ; 
- D 1 - I - 0x016376 05:A366: 00        .byte $00   ; 
- D 1 - I - 0x016377 05:A367: 87        .byte $87   ; 
- D 1 - I - 0x016378 05:A368: 94        .byte $94   ; 
- D 1 - I - 0x016379 05:A369: 95        .byte $95   ; 
- D 1 - I - 0x01637A 05:A36A: 96        .byte $96   ; 
- D 1 - I - 0x01637B 05:A36B: 97        .byte $97   ; 
- D 1 - I - 0x01637C 05:A36C: 98        .byte $98   ; 
- D 1 - I - 0x01637D 05:A36D: 99        .byte $99   ; 
- D 1 - I - 0x01637E 05:A36E: 9A        .byte $9A   ; 
- D 1 - I - 0x01637F 05:A36F: 02        .byte $02   ; 
- D 1 - I - 0x016380 05:A370: 00        .byte $00   ; 
- D 1 - I - 0x016381 05:A371: 92        .byte $92   ; 
- D 1 - I - 0x016382 05:A372: 9B        .byte $9B   ; 
- D 1 - I - 0x016383 05:A373: 9C        .byte $9C   ; 
- D 1 - I - 0x016384 05:A374: 00        .byte $00   ; 
- D 1 - I - 0x016385 05:A375: 9D        .byte $9D   ; 
- D 1 - I - 0x016386 05:A376: 9E        .byte $9E   ; 
- D 1 - I - 0x016387 05:A377: 9F        .byte $9F   ; 
- D 1 - I - 0x016388 05:A378: A0        .byte $A0   ; 
- D 1 - I - 0x016389 05:A379: A1        .byte $A1   ; 
- D 1 - I - 0x01638A 05:A37A: A2        .byte $A2   ; 
- D 1 - I - 0x01638B 05:A37B: A3        .byte $A3   ; 
- D 1 - I - 0x01638C 05:A37C: A4        .byte $A4   ; 
- D 1 - I - 0x01638D 05:A37D: A5        .byte $A5   ; 
- D 1 - I - 0x01638E 05:A37E: A6        .byte $A6   ; 
- D 1 - I - 0x01638F 05:A37F: A7        .byte $A7   ; 
- D 1 - I - 0x016390 05:A380: 00        .byte $00   ; 
- D 1 - I - 0x016391 05:A381: A8        .byte $A8   ; 
- D 1 - I - 0x016392 05:A382: A9        .byte $A9   ; 
- D 1 - I - 0x016393 05:A383: AA        .byte $AA   ; 
- D 1 - I - 0x016394 05:A384: 06        .byte $06   ; 
- D 1 - I - 0x016395 05:A385: 00        .byte $00   ; 
- D 1 - I - 0x016396 05:A386: 83        .byte $83   ; 
- D 1 - I - 0x016397 05:A387: AB        .byte $AB   ; 
- D 1 - I - 0x016398 05:A388: AC        .byte $AC   ; 
- D 1 - I - 0x016399 05:A389: AD        .byte $AD   ; 
- D 1 - I - 0x01639A 05:A38A: 02        .byte $02   ; 
- D 1 - I - 0x01639B 05:A38B: 00        .byte $00   ; 
- D 1 - I - 0x01639C 05:A38C: 95        .byte $95   ; 
- D 1 - I - 0x01639D 05:A38D: AE        .byte $AE   ; 
- D 1 - I - 0x01639E 05:A38E: AF        .byte $AF   ; 
- D 1 - I - 0x01639F 05:A38F: 00        .byte $00   ; 
- D 1 - I - 0x0163A0 05:A390: B0        .byte $B0   ; 
- D 1 - I - 0x0163A1 05:A391: B1        .byte $B1   ; 
- D 1 - I - 0x0163A2 05:A392: 00        .byte $00   ; 
- D 1 - I - 0x0163A3 05:A393: B2        .byte $B2   ; 
- D 1 - I - 0x0163A4 05:A394: B3        .byte $B3   ; 
- D 1 - I - 0x0163A5 05:A395: B4        .byte $B4   ; 
- D 1 - I - 0x0163A6 05:A396: B5        .byte $B5   ; 
- D 1 - I - 0x0163A7 05:A397: B6        .byte $B6   ; 
- D 1 - I - 0x0163A8 05:A398: B7        .byte $B7   ; 
- D 1 - I - 0x0163A9 05:A399: B8        .byte $B8   ; 
- D 1 - I - 0x0163AA 05:A39A: B9        .byte $B9   ; 
- D 1 - I - 0x0163AB 05:A39B: BA        .byte $BA   ; 
- D 1 - I - 0x0163AC 05:A39C: BB        .byte $BB   ; 
- D 1 - I - 0x0163AD 05:A39D: BC        .byte $BC   ; 
- D 1 - I - 0x0163AE 05:A39E: BD        .byte $BD   ; 
- D 1 - I - 0x0163AF 05:A39F: BE        .byte $BE   ; 
- D 1 - I - 0x0163B0 05:A3A0: BF        .byte $BF   ; 
- D 1 - I - 0x0163B1 05:A3A1: C0        .byte $C0   ; 
- D 1 - I - 0x0163B2 05:A3A2: 0B        .byte $0B   ; 
- D 1 - I - 0x0163B3 05:A3A3: 00        .byte $00   ; 
- D 1 - I - 0x0163B4 05:A3A4: 94        .byte $94   ; 
- D 1 - I - 0x0163B5 05:A3A5: C1        .byte $C1   ; 
- D 1 - I - 0x0163B6 05:A3A6: C2        .byte $C2   ; 
- D 1 - I - 0x0163B7 05:A3A7: 00        .byte $00   ; 
- D 1 - I - 0x0163B8 05:A3A8: C3        .byte $C3   ; 
- D 1 - I - 0x0163B9 05:A3A9: C4        .byte $C4   ; 
- D 1 - I - 0x0163BA 05:A3AA: C5        .byte $C5   ; 
- D 1 - I - 0x0163BB 05:A3AB: C6        .byte $C6   ; 
- D 1 - I - 0x0163BC 05:A3AC: C7        .byte $C7   ; 
- D 1 - I - 0x0163BD 05:A3AD: C8        .byte $C8   ; 
- D 1 - I - 0x0163BE 05:A3AE: C9        .byte $C9   ; 
- D 1 - I - 0x0163BF 05:A3AF: CA        .byte $CA   ; 
- D 1 - I - 0x0163C0 05:A3B0: CB        .byte $CB   ; 
- D 1 - I - 0x0163C1 05:A3B1: CC        .byte $CC   ; 
- D 1 - I - 0x0163C2 05:A3B2: CD        .byte $CD   ; 
- D 1 - I - 0x0163C3 05:A3B3: CE        .byte $CE   ; 
- D 1 - I - 0x0163C4 05:A3B4: 00        .byte $00   ; 
- D 1 - I - 0x0163C5 05:A3B5: CF        .byte $CF   ; 
- D 1 - I - 0x0163C6 05:A3B6: D0        .byte $D0   ; 
- D 1 - I - 0x0163C7 05:A3B7: D1        .byte $D1   ; 
- D 1 - I - 0x0163C8 05:A3B8: D2        .byte $D2   ; 
- D 1 - I - 0x0163C9 05:A3B9: 0C        .byte $0C   ; 
- D 1 - I - 0x0163CA 05:A3BA: 00        .byte $00   ; 
- D 1 - I - 0x0163CB 05:A3BB: 8F        .byte $8F   ; 
- D 1 - I - 0x0163CC 05:A3BC: D3        .byte $D3   ; 
- D 1 - I - 0x0163CD 05:A3BD: D4        .byte $D4   ; 
- D 1 - I - 0x0163CE 05:A3BE: D5        .byte $D5   ; 
- D 1 - I - 0x0163CF 05:A3BF: D6        .byte $D6   ; 
- D 1 - I - 0x0163D0 05:A3C0: D7        .byte $D7   ; 
- D 1 - I - 0x0163D1 05:A3C1: D8        .byte $D8   ; 
- D 1 - I - 0x0163D2 05:A3C2: 00        .byte $00   ; 
- D 1 - I - 0x0163D3 05:A3C3: D9        .byte $D9   ; 
- D 1 - I - 0x0163D4 05:A3C4: DA        .byte $DA   ; 
- D 1 - I - 0x0163D5 05:A3C5: DB        .byte $DB   ; 
- D 1 - I - 0x0163D6 05:A3C6: DC        .byte $DC   ; 
- D 1 - I - 0x0163D7 05:A3C7: DD        .byte $DD   ; 
- D 1 - I - 0x0163D8 05:A3C8: DE        .byte $DE   ; 
- D 1 - I - 0x0163D9 05:A3C9: DF        .byte $DF   ; 
- D 1 - I - 0x0163DA 05:A3CA: E0        .byte $E0   ; 
- D 1 - I - 0x0163DB 05:A3CB: 11        .byte $11   ; 
- D 1 - I - 0x0163DC 05:A3CC: 00        .byte $00   ; 
- D 1 - I - 0x0163DD 05:A3CD: 8F        .byte $8F   ; 
- D 1 - I - 0x0163DE 05:A3CE: E1        .byte $E1   ; 
- D 1 - I - 0x0163DF 05:A3CF: E2        .byte $E2   ; 
- D 1 - I - 0x0163E0 05:A3D0: E3        .byte $E3   ; 
- D 1 - I - 0x0163E1 05:A3D1: E4        .byte $E4   ; 
- D 1 - I - 0x0163E2 05:A3D2: E5        .byte $E5   ; 
- D 1 - I - 0x0163E3 05:A3D3: 00        .byte $00   ; 
- D 1 - I - 0x0163E4 05:A3D4: E6        .byte $E6   ; 
- D 1 - I - 0x0163E5 05:A3D5: E7        .byte $E7   ; 
- D 1 - I - 0x0163E6 05:A3D6: E8        .byte $E8   ; 
- D 1 - I - 0x0163E7 05:A3D7: E9        .byte $E9   ; 
- D 1 - I - 0x0163E8 05:A3D8: EA        .byte $EA   ; 
- D 1 - I - 0x0163E9 05:A3D9: EB        .byte $EB   ; 
- D 1 - I - 0x0163EA 05:A3DA: EC        .byte $EC   ; 
- D 1 - I - 0x0163EB 05:A3DB: ED        .byte $ED   ; 
- D 1 - I - 0x0163EC 05:A3DC: EE        .byte $EE   ; 
- D 1 - I - 0x0163ED 05:A3DD: 11        .byte $11   ; 
- D 1 - I - 0x0163EE 05:A3DE: 00        .byte $00   ; 
- D 1 - I - 0x0163EF 05:A3DF: 88        .byte $88   ; 
- D 1 - I - 0x0163F0 05:A3E0: EF        .byte $EF   ; 
- D 1 - I - 0x0163F1 05:A3E1: F0        .byte $F0   ; 
- D 1 - I - 0x0163F2 05:A3E2: F1        .byte $F1   ; 
- D 1 - I - 0x0163F3 05:A3E3: F2        .byte $F2   ; 
- D 1 - I - 0x0163F4 05:A3E4: 61        .byte $61   ; 
- D 1 - I - 0x0163F5 05:A3E5: F3        .byte $F3   ; 
- D 1 - I - 0x0163F6 05:A3E6: F4        .byte $F4   ; 
- D 1 - I - 0x0163F7 05:A3E7: F5        .byte $F5   ; 
- D 1 - I - 0x0163F8 05:A3E8: 18        .byte $18   ; 
- D 1 - I - 0x0163F9 05:A3E9: 00        .byte $00   ; 
- D 1 - I - 0x0163FA 05:A3EA: 88        .byte $88   ; 
- D 1 - I - 0x0163FB 05:A3EB: F6        .byte $F6   ; 
- D 1 - I - 0x0163FC 05:A3EC: F7        .byte $F7   ; 
- D 1 - I - 0x0163FD 05:A3ED: F8        .byte $F8   ; 
- D 1 - I - 0x0163FE 05:A3EE: F9        .byte $F9   ; 
- D 1 - I - 0x0163FF 05:A3EF: FA        .byte $FA   ; 
- D 1 - I - 0x016400 05:A3F0: FB        .byte $FB   ; 
- D 1 - I - 0x016401 05:A3F1: FC        .byte $FC   ; 
- D 1 - I - 0x016402 05:A3F2: FD        .byte $FD   ; 
- D 1 - I - 0x016403 05:A3F3: 7F        .byte $7F   ; 
- D 1 - I - 0x016404 05:A3F4: 00        .byte $00   ; 
- D 1 - I - 0x016405 05:A3F5: 7F        .byte $7F   ; 
- D 1 - I - 0x016406 05:A3F6: 00        .byte $00   ; 
- D 1 - I - 0x016407 05:A3F7: FF        .byte $FF   ; end token


; bzk garbage
- - - - - - 0x016408 05:A3F8: FF        .byte $FF   ; 



_off010_A3F9_02:
- D 1 - I - 0x016409 05:A3F9: 00        .byte $00   ; 
- D 1 - I - 0x01640A 05:A3FA: 00        .byte $00   ; 
- D 1 - I - 0x01640B 05:A3FB: 00        .byte $00   ; 
- D 1 - I - 0x01640C 05:A3FC: 00        .byte $00   ; 
- D 1 - I - 0x01640D 05:A3FD: 00        .byte $00   ; 
- D 1 - I - 0x01640E 05:A3FE: 00        .byte $00   ; 
- D 1 - I - 0x01640F 05:A3FF: 00        .byte $00   ; 
- D 1 - I - 0x016410 05:A400: 00        .byte $00   ; 
- D 1 - I - 0x016411 05:A401: 00        .byte $00   ; 
- D 1 - I - 0x016412 05:A402: 00        .byte $00   ; 
- D 1 - I - 0x016413 05:A403: 00        .byte $00   ; 
- D 1 - I - 0x016414 05:A404: 00        .byte $00   ; 
- D 1 - I - 0x016415 05:A405: 00        .byte $00   ; 
- D 1 - I - 0x016416 05:A406: 00        .byte $00   ; 
- D 1 - I - 0x016417 05:A407: 00        .byte $00   ; 
- D 1 - I - 0x016418 05:A408: 00        .byte $00   ; 
- D 1 - I - 0x016419 05:A409: 00        .byte $00   ; 
- D 1 - I - 0x01641A 05:A40A: 00        .byte $00   ; 
- D 1 - I - 0x01641B 05:A40B: 00        .byte $00   ; 
- D 1 - I - 0x01641C 05:A40C: 00        .byte $00   ; 
- D 1 - I - 0x01641D 05:A40D: 00        .byte $00   ; 
- D 1 - I - 0x01641E 05:A40E: 00        .byte $00   ; 
- D 1 - I - 0x01641F 05:A40F: 00        .byte $00   ; 
- D 1 - I - 0x016420 05:A410: 00        .byte $00   ; 
- D 1 - I - 0x016421 05:A411: 00        .byte $00   ; 
- D 1 - I - 0x016422 05:A412: 00        .byte $00   ; 
- D 1 - I - 0x016423 05:A413: 00        .byte $00   ; 
- D 1 - I - 0x016424 05:A414: 00        .byte $00   ; 
- D 1 - I - 0x016425 05:A415: 00        .byte $00   ; 
- D 1 - I - 0x016426 05:A416: 00        .byte $00   ; 
- D 1 - I - 0x016427 05:A417: 00        .byte $00   ; 
- D 1 - I - 0x016428 05:A418: 00        .byte $00   ; 
- D 1 - I - 0x016429 05:A419: 00        .byte $00   ; 
- D 1 - I - 0x01642A 05:A41A: 00        .byte $00   ; 
- D 1 - I - 0x01642B 05:A41B: 00        .byte $00   ; 
- D 1 - I - 0x01642C 05:A41C: 00        .byte $00   ; 
- D 1 - I - 0x01642D 05:A41D: 00        .byte $00   ; 
- D 1 - I - 0x01642E 05:A41E: 00        .byte $00   ; 
- D 1 - I - 0x01642F 05:A41F: 00        .byte $00   ; 
- D 1 - I - 0x016430 05:A420: 00        .byte $00   ; 
- D 1 - I - 0x016431 05:A421: 00        .byte $00   ; 
- D 1 - I - 0x016432 05:A422: 00        .byte $00   ; 
- D 1 - I - 0x016433 05:A423: 00        .byte $00   ; 
- D 1 - I - 0x016434 05:A424: 00        .byte $00   ; 
- D 1 - I - 0x016435 05:A425: 00        .byte $00   ; 
- D 1 - I - 0x016436 05:A426: 00        .byte $00   ; 
- D 1 - I - 0x016437 05:A427: 00        .byte $00   ; 
- D 1 - I - 0x016438 05:A428: 00        .byte $00   ; 
- D 1 - I - 0x016439 05:A429: 00        .byte $00   ; 
- D 1 - I - 0x01643A 05:A42A: 00        .byte $00   ; 
- D 1 - I - 0x01643B 05:A42B: 00        .byte $00   ; 
- D 1 - I - 0x01643C 05:A42C: 00        .byte $00   ; 
- D 1 - I - 0x01643D 05:A42D: 00        .byte $00   ; 
- D 1 - I - 0x01643E 05:A42E: 00        .byte $00   ; 
- D 1 - I - 0x01643F 05:A42F: 00        .byte $00   ; 
- D 1 - I - 0x016440 05:A430: 00        .byte $00   ; 
- D 1 - I - 0x016441 05:A431: 00        .byte $00   ; 
- D 1 - I - 0x016442 05:A432: 00        .byte $00   ; 
- D 1 - I - 0x016443 05:A433: 00        .byte $00   ; 
- D 1 - I - 0x016444 05:A434: 00        .byte $00   ; 
- D 1 - I - 0x016445 05:A435: 00        .byte $00   ; 
- D 1 - I - 0x016446 05:A436: 00        .byte $00   ; 
- D 1 - I - 0x016447 05:A437: 00        .byte $00   ; 
- D 1 - I - 0x016448 05:A438: 00        .byte $00   ; 
- D 1 - I - 0x016449 05:A439: 00        .byte $00   ; 
- D 1 - I - 0x01644A 05:A43A: 00        .byte $00   ; 
- D 1 - I - 0x01644B 05:A43B: 00        .byte $00   ; 
- D 1 - I - 0x01644C 05:A43C: 00        .byte $00   ; 
- D 1 - I - 0x01644D 05:A43D: 00        .byte $00   ; 
- D 1 - I - 0x01644E 05:A43E: 00        .byte $00   ; 
- D 1 - I - 0x01644F 05:A43F: 00        .byte $00   ; 
- D 1 - I - 0x016450 05:A440: 00        .byte $00   ; 
- D 1 - I - 0x016451 05:A441: 00        .byte $00   ; 
- D 1 - I - 0x016452 05:A442: 00        .byte $00   ; 
- D 1 - I - 0x016453 05:A443: 00        .byte $00   ; 
- D 1 - I - 0x016454 05:A444: 00        .byte $00   ; 
- D 1 - I - 0x016455 05:A445: 00        .byte $00   ; 
- D 1 - I - 0x016456 05:A446: 00        .byte $00   ; 
- D 1 - I - 0x016457 05:A447: 00        .byte $00   ; 
- D 1 - I - 0x016458 05:A448: 00        .byte $00   ; 
- D 1 - I - 0x016459 05:A449: 00        .byte $00   ; 
- D 1 - I - 0x01645A 05:A44A: 00        .byte $00   ; 
- D 1 - I - 0x01645B 05:A44B: 00        .byte $00   ; 
- D 1 - I - 0x01645C 05:A44C: 00        .byte $00   ; 
- D 1 - I - 0x01645D 05:A44D: 00        .byte $00   ; 
- D 1 - I - 0x01645E 05:A44E: 00        .byte $00   ; 
- D 1 - I - 0x01645F 05:A44F: 00        .byte $00   ; 
- D 1 - I - 0x016460 05:A450: 00        .byte $00   ; 
- D 1 - I - 0x016461 05:A451: 00        .byte $00   ; 
- D 1 - I - 0x016462 05:A452: 00        .byte $00   ; 
- D 1 - I - 0x016463 05:A453: 00        .byte $00   ; 
- D 1 - I - 0x016464 05:A454: 00        .byte $00   ; 
- D 1 - I - 0x016465 05:A455: 00        .byte $00   ; 
- D 1 - I - 0x016466 05:A456: 00        .byte $00   ; 
- D 1 - I - 0x016467 05:A457: 00        .byte $00   ; 
- D 1 - I - 0x016468 05:A458: 00        .byte $00   ; 
- D 1 - I - 0x016469 05:A459: 00        .byte $00   ; 
- D 1 - I - 0x01646A 05:A45A: 00        .byte $00   ; 
- D 1 - I - 0x01646B 05:A45B: 00        .byte $00   ; 
- D 1 - I - 0x01646C 05:A45C: 00        .byte $00   ; 
- D 1 - I - 0x01646D 05:A45D: 00        .byte $00   ; 
- D 1 - I - 0x01646E 05:A45E: 00        .byte $00   ; 
- D 1 - I - 0x01646F 05:A45F: 00        .byte $00   ; 
- D 1 - I - 0x016470 05:A460: 00        .byte $00   ; 
- D 1 - I - 0x016471 05:A461: 00        .byte $00   ; 
- D 1 - I - 0x016472 05:A462: 00        .byte $00   ; 
- D 1 - I - 0x016473 05:A463: 00        .byte $00   ; 
- D 1 - I - 0x016474 05:A464: 00        .byte $00   ; 
- D 1 - I - 0x016475 05:A465: 00        .byte $00   ; 
- D 1 - I - 0x016476 05:A466: 00        .byte $00   ; 
- D 1 - I - 0x016477 05:A467: 00        .byte $00   ; 
- D 1 - I - 0x016478 05:A468: 00        .byte $00   ; 
- D 1 - I - 0x016479 05:A469: 00        .byte $00   ; 
- D 1 - I - 0x01647A 05:A46A: 00        .byte $00   ; 
- D 1 - I - 0x01647B 05:A46B: 00        .byte $00   ; 
- D 1 - I - 0x01647C 05:A46C: 00        .byte $00   ; 
- D 1 - I - 0x01647D 05:A46D: 00        .byte $00   ; 
- D 1 - I - 0x01647E 05:A46E: 00        .byte $00   ; 
- D 1 - I - 0x01647F 05:A46F: 00        .byte $00   ; 
- D 1 - I - 0x016480 05:A470: 00        .byte $00   ; 
- D 1 - I - 0x016481 05:A471: 00        .byte $00   ; 
- D 1 - I - 0x016482 05:A472: 00        .byte $00   ; 
- D 1 - I - 0x016483 05:A473: 00        .byte $00   ; 
- D 1 - I - 0x016484 05:A474: 00        .byte $00   ; 
- D 1 - I - 0x016485 05:A475: 00        .byte $00   ; 
- D 1 - I - 0x016486 05:A476: 00        .byte $00   ; 
- D 1 - I - 0x016487 05:A477: 00        .byte $00   ; 
- D 1 - I - 0x016488 05:A478: 00        .byte $00   ; 
- D 1 - I - 0x016489 05:A479: 00        .byte $00   ; 
- D 1 - I - 0x01648A 05:A47A: 00        .byte $00   ; 
- D 1 - I - 0x01648B 05:A47B: 00        .byte $00   ; 
- D 1 - I - 0x01648C 05:A47C: 00        .byte $00   ; 
- D 1 - I - 0x01648D 05:A47D: 00        .byte $00   ; 
- D 1 - I - 0x01648E 05:A47E: 00        .byte $00   ; 
- D 1 - I - 0x01648F 05:A47F: 00        .byte $00   ; 
- D 1 - I - 0x016490 05:A480: 00        .byte $00   ; 
- D 1 - I - 0x016491 05:A481: 00        .byte $00   ; 
- D 1 - I - 0x016492 05:A482: 00        .byte $00   ; 
- D 1 - I - 0x016493 05:A483: 00        .byte $00   ; 
- D 1 - I - 0x016494 05:A484: 00        .byte $00   ; 
- D 1 - I - 0x016495 05:A485: 00        .byte $00   ; 
- D 1 - I - 0x016496 05:A486: 00        .byte $00   ; 
- D 1 - I - 0x016497 05:A487: 00        .byte $00   ; 
- D 1 - I - 0x016498 05:A488: 00        .byte $00   ; 
- D 1 - I - 0x016499 05:A489: 00        .byte $00   ; 
- D 1 - I - 0x01649A 05:A48A: 00        .byte $00   ; 
- D 1 - I - 0x01649B 05:A48B: 00        .byte $00   ; 
- D 1 - I - 0x01649C 05:A48C: 00        .byte $00   ; 
- D 1 - I - 0x01649D 05:A48D: 00        .byte $00   ; 
- D 1 - I - 0x01649E 05:A48E: 00        .byte $00   ; 
- D 1 - I - 0x01649F 05:A48F: 00        .byte $00   ; 
- D 1 - I - 0x0164A0 05:A490: 00        .byte $00   ; 
- D 1 - I - 0x0164A1 05:A491: 00        .byte $00   ; 
- D 1 - I - 0x0164A2 05:A492: 00        .byte $00   ; 
- D 1 - I - 0x0164A3 05:A493: 00        .byte $00   ; 
- D 1 - I - 0x0164A4 05:A494: 00        .byte $00   ; 
- D 1 - I - 0x0164A5 05:A495: 00        .byte $00   ; 
- D 1 - I - 0x0164A6 05:A496: 00        .byte $00   ; 
- D 1 - I - 0x0164A7 05:A497: 00        .byte $00   ; 
- D 1 - I - 0x0164A8 05:A498: 00        .byte $00   ; 
- D 1 - I - 0x0164A9 05:A499: 00        .byte $00   ; 
- D 1 - I - 0x0164AA 05:A49A: 00        .byte $00   ; 
- D 1 - I - 0x0164AB 05:A49B: 00        .byte $00   ; 
- D 1 - I - 0x0164AC 05:A49C: 00        .byte $00   ; 
- D 1 - I - 0x0164AD 05:A49D: 00        .byte $00   ; 
- D 1 - I - 0x0164AE 05:A49E: 00        .byte $00   ; 
- D 1 - I - 0x0164AF 05:A49F: 00        .byte $00   ; 
- D 1 - I - 0x0164B0 05:A4A0: 00        .byte $00   ; 
- D 1 - I - 0x0164B1 05:A4A1: 00        .byte $00   ; 
- D 1 - I - 0x0164B2 05:A4A2: 00        .byte $00   ; 
- D 1 - I - 0x0164B3 05:A4A3: 00        .byte $00   ; 
- D 1 - I - 0x0164B4 05:A4A4: 00        .byte $00   ; 
- D 1 - I - 0x0164B5 05:A4A5: 00        .byte $00   ; 
- D 1 - I - 0x0164B6 05:A4A6: 00        .byte $00   ; 
- D 1 - I - 0x0164B7 05:A4A7: 00        .byte $00   ; 
- D 1 - I - 0x0164B8 05:A4A8: 00        .byte $00   ; 
- D 1 - I - 0x0164B9 05:A4A9: 00        .byte $00   ; 
- D 1 - I - 0x0164BA 05:A4AA: 00        .byte $00   ; 
- D 1 - I - 0x0164BB 05:A4AB: 00        .byte $00   ; 
- D 1 - I - 0x0164BC 05:A4AC: 00        .byte $00   ; 
- D 1 - I - 0x0164BD 05:A4AD: 00        .byte $00   ; 
- D 1 - I - 0x0164BE 05:A4AE: 00        .byte $00   ; 
- D 1 - I - 0x0164BF 05:A4AF: 00        .byte $00   ; 
- D 1 - I - 0x0164C0 05:A4B0: 00        .byte $00   ; 
- D 1 - I - 0x0164C1 05:A4B1: 00        .byte $00   ; 
- D 1 - I - 0x0164C2 05:A4B2: 00        .byte $00   ; 
- D 1 - I - 0x0164C3 05:A4B3: 00        .byte $00   ; 
- D 1 - I - 0x0164C4 05:A4B4: 00        .byte $00   ; 
- D 1 - I - 0x0164C5 05:A4B5: 00        .byte $00   ; 
- D 1 - I - 0x0164C6 05:A4B6: 00        .byte $00   ; 
- D 1 - I - 0x0164C7 05:A4B7: 00        .byte $00   ; 
- D 1 - I - 0x0164C8 05:A4B8: 00        .byte $00   ; 
- D 1 - I - 0x0164C9 05:A4B9: 00        .byte $00   ; 
- D 1 - I - 0x0164CA 05:A4BA: 00        .byte $00   ; 
- D 1 - I - 0x0164CB 05:A4BB: 00        .byte $00   ; 
- D 1 - I - 0x0164CC 05:A4BC: 00        .byte $00   ; 
- D 1 - I - 0x0164CD 05:A4BD: 00        .byte $00   ; 
- D 1 - I - 0x0164CE 05:A4BE: 00        .byte $00   ; 
- D 1 - I - 0x0164CF 05:A4BF: 00        .byte $00   ; 
- D 1 - I - 0x0164D0 05:A4C0: 00        .byte $00   ; 
- D 1 - I - 0x0164D1 05:A4C1: 00        .byte $00   ; 
- D 1 - I - 0x0164D2 05:A4C2: 00        .byte $00   ; 
- D 1 - I - 0x0164D3 05:A4C3: 00        .byte $00   ; 
- D 1 - I - 0x0164D4 05:A4C4: 00        .byte $00   ; 
- D 1 - I - 0x0164D5 05:A4C5: 00        .byte $00   ; 
- D 1 - I - 0x0164D6 05:A4C6: 00        .byte $00   ; 
- D 1 - I - 0x0164D7 05:A4C7: 00        .byte $00   ; 
- D 1 - I - 0x0164D8 05:A4C8: 00        .byte $00   ; 
- D 1 - I - 0x0164D9 05:A4C9: 00        .byte $00   ; 
- D 1 - I - 0x0164DA 05:A4CA: 00        .byte $00   ; 
- D 1 - I - 0x0164DB 05:A4CB: 00        .byte $00   ; 
- D 1 - I - 0x0164DC 05:A4CC: 00        .byte $00   ; 
- D 1 - I - 0x0164DD 05:A4CD: 00        .byte $00   ; 
- D 1 - I - 0x0164DE 05:A4CE: 00        .byte $00   ; 
- D 1 - I - 0x0164DF 05:A4CF: 00        .byte $00   ; 
- D 1 - I - 0x0164E0 05:A4D0: 00        .byte $00   ; 
- D 1 - I - 0x0164E1 05:A4D1: 00        .byte $00   ; 
- D 1 - I - 0x0164E2 05:A4D2: 00        .byte $00   ; 
- D 1 - I - 0x0164E3 05:A4D3: 00        .byte $00   ; 
- D 1 - I - 0x0164E4 05:A4D4: 00        .byte $00   ; 
- D 1 - I - 0x0164E5 05:A4D5: 00        .byte $00   ; 
- D 1 - I - 0x0164E6 05:A4D6: 00        .byte $00   ; 
- D 1 - I - 0x0164E7 05:A4D7: 00        .byte $00   ; 
- D 1 - I - 0x0164E8 05:A4D8: 00        .byte $00   ; 
- D 1 - I - 0x0164E9 05:A4D9: 00        .byte $00   ; 
- D 1 - I - 0x0164EA 05:A4DA: 00        .byte $00   ; 
- D 1 - I - 0x0164EB 05:A4DB: 00        .byte $00   ; 
- D 1 - I - 0x0164EC 05:A4DC: 00        .byte $00   ; 
- D 1 - I - 0x0164ED 05:A4DD: 00        .byte $00   ; 
- D 1 - I - 0x0164EE 05:A4DE: 00        .byte $00   ; 
- D 1 - I - 0x0164EF 05:A4DF: 00        .byte $00   ; 
- D 1 - I - 0x0164F0 05:A4E0: 00        .byte $00   ; 
- D 1 - I - 0x0164F1 05:A4E1: 00        .byte $00   ; 
- D 1 - I - 0x0164F2 05:A4E2: 00        .byte $00   ; 
- D 1 - I - 0x0164F3 05:A4E3: 00        .byte $00   ; 
- D 1 - I - 0x0164F4 05:A4E4: 00        .byte $00   ; 
- D 1 - I - 0x0164F5 05:A4E5: 00        .byte $00   ; 
- D 1 - I - 0x0164F6 05:A4E6: 00        .byte $00   ; 
- D 1 - I - 0x0164F7 05:A4E7: 00        .byte $00   ; 
- D 1 - I - 0x0164F8 05:A4E8: 00        .byte $00   ; 
- D 1 - I - 0x0164F9 05:A4E9: 00        .byte $00   ; 
- D 1 - I - 0x0164FA 05:A4EA: 00        .byte $00   ; 
- D 1 - I - 0x0164FB 05:A4EB: 00        .byte $00   ; 
- D 1 - I - 0x0164FC 05:A4EC: 00        .byte $00   ; 
- D 1 - I - 0x0164FD 05:A4ED: 00        .byte $00   ; 
- D 1 - I - 0x0164FE 05:A4EE: 00        .byte $00   ; 
- D 1 - I - 0x0164FF 05:A4EF: 00        .byte $00   ; 
- D 1 - I - 0x016500 05:A4F0: 00        .byte $00   ; 
- D 1 - I - 0x016501 05:A4F1: 00        .byte $00   ; 
- D 1 - I - 0x016502 05:A4F2: 00        .byte $00   ; 
- D 1 - I - 0x016503 05:A4F3: 00        .byte $00   ; 
- D 1 - I - 0x016504 05:A4F4: 00        .byte $00   ; 
- D 1 - I - 0x016505 05:A4F5: 00        .byte $00   ; 
- D 1 - I - 0x016506 05:A4F6: 00        .byte $00   ; 
- D 1 - I - 0x016507 05:A4F7: 00        .byte $00   ; 
- D 1 - I - 0x016508 05:A4F8: 00        .byte $00   ; 
- D 1 - I - 0x016509 05:A4F9: 00        .byte $00   ; 
- D 1 - I - 0x01650A 05:A4FA: 00        .byte $00   ; 
- D 1 - I - 0x01650B 05:A4FB: 00        .byte $00   ; 
- D 1 - I - 0x01650C 05:A4FC: 00        .byte $00   ; 
- D 1 - I - 0x01650D 05:A4FD: 00        .byte $00   ; 
- D 1 - I - 0x01650E 05:A4FE: 00        .byte $00   ; 
- D 1 - I - 0x01650F 05:A4FF: 00        .byte $00   ; 
- D 1 - I - 0x016510 05:A500: 00        .byte $00   ; 
- D 1 - I - 0x016511 05:A501: 00        .byte $00   ; 
- D 1 - I - 0x016512 05:A502: 00        .byte $00   ; 
- D 1 - I - 0x016513 05:A503: 00        .byte $00   ; 
- D 1 - I - 0x016514 05:A504: 00        .byte $00   ; 
- D 1 - I - 0x016515 05:A505: 00        .byte $00   ; 
- D 1 - I - 0x016516 05:A506: 00        .byte $00   ; 
- D 1 - I - 0x016517 05:A507: 00        .byte $00   ; 
- D 1 - I - 0x016518 05:A508: 00        .byte $00   ; 
- D 1 - I - 0x016519 05:A509: 00        .byte $00   ; 
- D 1 - I - 0x01651A 05:A50A: 00        .byte $00   ; 
- D 1 - I - 0x01651B 05:A50B: 00        .byte $00   ; 
- D 1 - I - 0x01651C 05:A50C: 00        .byte $00   ; 
- D 1 - I - 0x01651D 05:A50D: 00        .byte $00   ; 
- D 1 - I - 0x01651E 05:A50E: 41        .byte $41   ; 
- D 1 - I - 0x01651F 05:A50F: 43        .byte $43   ; 
- D 1 - I - 0x016520 05:A510: 45        .byte $45   ; 
- D 1 - I - 0x016521 05:A511: 47        .byte $47   ; 
- D 1 - I - 0x016522 05:A512: 49        .byte $49   ; 
- D 1 - I - 0x016523 05:A513: 4B        .byte $4B   ; 
- D 1 - I - 0x016524 05:A514: 00        .byte $00   ; 
- D 1 - I - 0x016525 05:A515: 4D        .byte $4D   ; 
- D 1 - I - 0x016526 05:A516: 00        .byte $00   ; 
- D 1 - I - 0x016527 05:A517: 00        .byte $00   ; 
- D 1 - I - 0x016528 05:A518: 00        .byte $00   ; 
- D 1 - I - 0x016529 05:A519: 00        .byte $00   ; 
- D 1 - I - 0x01652A 05:A51A: 00        .byte $00   ; 
- D 1 - I - 0x01652B 05:A51B: 00        .byte $00   ; 
- D 1 - I - 0x01652C 05:A51C: 00        .byte $00   ; 
- D 1 - I - 0x01652D 05:A51D: 00        .byte $00   ; 
- D 1 - I - 0x01652E 05:A51E: 00        .byte $00   ; 
- D 1 - I - 0x01652F 05:A51F: 00        .byte $00   ; 
- D 1 - I - 0x016530 05:A520: 00        .byte $00   ; 
- D 1 - I - 0x016531 05:A521: 00        .byte $00   ; 
- D 1 - I - 0x016532 05:A522: 00        .byte $00   ; 
- D 1 - I - 0x016533 05:A523: 00        .byte $00   ; 
- D 1 - I - 0x016534 05:A524: 00        .byte $00   ; 
- D 1 - I - 0x016535 05:A525: 00        .byte $00   ; 
- D 1 - I - 0x016536 05:A526: 00        .byte $00   ; 
- D 1 - I - 0x016537 05:A527: 00        .byte $00   ; 
- D 1 - I - 0x016538 05:A528: 00        .byte $00   ; 
- D 1 - I - 0x016539 05:A529: 00        .byte $00   ; 
- D 1 - I - 0x01653A 05:A52A: 00        .byte $00   ; 
- D 1 - I - 0x01653B 05:A52B: 00        .byte $00   ; 
- D 1 - I - 0x01653C 05:A52C: 00        .byte $00   ; 
- D 1 - I - 0x01653D 05:A52D: 00        .byte $00   ; 
- D 1 - I - 0x01653E 05:A52E: 00        .byte $00   ; 
- D 1 - I - 0x01653F 05:A52F: 00        .byte $00   ; 
- D 1 - I - 0x016540 05:A530: 00        .byte $00   ; 
- D 1 - I - 0x016541 05:A531: 00        .byte $00   ; 
- D 1 - I - 0x016542 05:A532: 00        .byte $00   ; 
- D 1 - I - 0x016543 05:A533: 00        .byte $00   ; 
- D 1 - I - 0x016544 05:A534: 00        .byte $00   ; 
- D 1 - I - 0x016545 05:A535: 00        .byte $00   ; 
- D 1 - I - 0x016546 05:A536: 00        .byte $00   ; 
- D 1 - I - 0x016547 05:A537: 00        .byte $00   ; 
- D 1 - I - 0x016548 05:A538: 00        .byte $00   ; 
- D 1 - I - 0x016549 05:A539: 00        .byte $00   ; 
- D 1 - I - 0x01654A 05:A53A: 00        .byte $00   ; 
- D 1 - I - 0x01654B 05:A53B: 00        .byte $00   ; 
- D 1 - I - 0x01654C 05:A53C: 00        .byte $00   ; 
- D 1 - I - 0x01654D 05:A53D: 00        .byte $00   ; 
- D 1 - I - 0x01654E 05:A53E: 00        .byte $00   ; 
- D 1 - I - 0x01654F 05:A53F: 00        .byte $00   ; 
- D 1 - I - 0x016550 05:A540: 00        .byte $00   ; 
- D 1 - I - 0x016551 05:A541: 00        .byte $00   ; 
- D 1 - I - 0x016552 05:A542: 00        .byte $00   ; 
- D 1 - I - 0x016553 05:A543: 00        .byte $00   ; 
- D 1 - I - 0x016554 05:A544: 00        .byte $00   ; 
- D 1 - I - 0x016555 05:A545: 00        .byte $00   ; 
- D 1 - I - 0x016556 05:A546: 00        .byte $00   ; 
- D 1 - I - 0x016557 05:A547: 0F        .byte $0F   ; 
- D 1 - I - 0x016558 05:A548: 11        .byte $11   ; 
- D 1 - I - 0x016559 05:A549: 13        .byte $13   ; 
- D 1 - I - 0x01655A 05:A54A: 15        .byte $15   ; 
- D 1 - I - 0x01655B 05:A54B: 00        .byte $00   ; 
- D 1 - I - 0x01655C 05:A54C: 00        .byte $00   ; 
- D 1 - I - 0x01655D 05:A54D: 00        .byte $00   ; 
- D 1 - I - 0x01655E 05:A54E: 00        .byte $00   ; 
- D 1 - I - 0x01655F 05:A54F: 00        .byte $00   ; 
- D 1 - I - 0x016560 05:A550: 00        .byte $00   ; 
- D 1 - I - 0x016561 05:A551: 00        .byte $00   ; 
- D 1 - I - 0x016562 05:A552: 00        .byte $00   ; 
- D 1 - I - 0x016563 05:A553: 00        .byte $00   ; 
- D 1 - I - 0x016564 05:A554: 00        .byte $00   ; 
- D 1 - I - 0x016565 05:A555: 00        .byte $00   ; 
- D 1 - I - 0x016566 05:A556: 00        .byte $00   ; 
- D 1 - I - 0x016567 05:A557: 00        .byte $00   ; 
- D 1 - I - 0x016568 05:A558: 00        .byte $00   ; 
- D 1 - I - 0x016569 05:A559: 00        .byte $00   ; 
- D 1 - I - 0x01656A 05:A55A: 00        .byte $00   ; 
- D 1 - I - 0x01656B 05:A55B: 00        .byte $00   ; 
- D 1 - I - 0x01656C 05:A55C: 00        .byte $00   ; 
- D 1 - I - 0x01656D 05:A55D: 00        .byte $00   ; 
- D 1 - I - 0x01656E 05:A55E: 00        .byte $00   ; 
- D 1 - I - 0x01656F 05:A55F: 00        .byte $00   ; 
- D 1 - I - 0x016570 05:A560: 00        .byte $00   ; 
- D 1 - I - 0x016571 05:A561: 00        .byte $00   ; 
- D 1 - I - 0x016572 05:A562: 00        .byte $00   ; 
- D 1 - I - 0x016573 05:A563: 00        .byte $00   ; 
- D 1 - I - 0x016574 05:A564: 00        .byte $00   ; 
- D 1 - I - 0x016575 05:A565: 00        .byte $00   ; 
- D 1 - I - 0x016576 05:A566: 00        .byte $00   ; 
- D 1 - I - 0x016577 05:A567: 00        .byte $00   ; 
- D 1 - I - 0x016578 05:A568: 00        .byte $00   ; 
- D 1 - I - 0x016579 05:A569: 00        .byte $00   ; 
- D 1 - I - 0x01657A 05:A56A: 00        .byte $00   ; 
- D 1 - I - 0x01657B 05:A56B: 00        .byte $00   ; 
- D 1 - I - 0x01657C 05:A56C: 00        .byte $00   ; 
- D 1 - I - 0x01657D 05:A56D: 00        .byte $00   ; 
- D 1 - I - 0x01657E 05:A56E: 00        .byte $00   ; 
- D 1 - I - 0x01657F 05:A56F: 00        .byte $00   ; 
- D 1 - I - 0x016580 05:A570: 00        .byte $00   ; 
- D 1 - I - 0x016581 05:A571: 00        .byte $00   ; 
- D 1 - I - 0x016582 05:A572: 00        .byte $00   ; 
- D 1 - I - 0x016583 05:A573: 00        .byte $00   ; 
- D 1 - I - 0x016584 05:A574: 00        .byte $00   ; 
- D 1 - I - 0x016585 05:A575: 00        .byte $00   ; 
- D 1 - I - 0x016586 05:A576: 00        .byte $00   ; 
- D 1 - I - 0x016587 05:A577: 00        .byte $00   ; 
- D 1 - I - 0x016588 05:A578: 00        .byte $00   ; 
- D 1 - I - 0x016589 05:A579: 00        .byte $00   ; 
- D 1 - I - 0x01658A 05:A57A: 00        .byte $00   ; 
- D 1 - I - 0x01658B 05:A57B: 00        .byte $00   ; 
- D 1 - I - 0x01658C 05:A57C: 00        .byte $00   ; 
- D 1 - I - 0x01658D 05:A57D: 00        .byte $00   ; 
- D 1 - I - 0x01658E 05:A57E: 00        .byte $00   ; 
- D 1 - I - 0x01658F 05:A57F: 00        .byte $00   ; 
- D 1 - I - 0x016590 05:A580: 00        .byte $00   ; 
- D 1 - I - 0x016591 05:A581: 00        .byte $00   ; 
- D 1 - I - 0x016592 05:A582: 00        .byte $00   ; 
- D 1 - I - 0x016593 05:A583: 00        .byte $00   ; 
- D 1 - I - 0x016594 05:A584: 00        .byte $00   ; 
- D 1 - I - 0x016595 05:A585: 00        .byte $00   ; 
- D 1 - I - 0x016596 05:A586: 00        .byte $00   ; 
- D 1 - I - 0x016597 05:A587: 00        .byte $00   ; 
- D 1 - I - 0x016598 05:A588: 00        .byte $00   ; 
- D 1 - I - 0x016599 05:A589: 00        .byte $00   ; 
- D 1 - I - 0x01659A 05:A58A: 00        .byte $00   ; 
- D 1 - I - 0x01659B 05:A58B: 00        .byte $00   ; 
- D 1 - I - 0x01659C 05:A58C: 00        .byte $00   ; 
- D 1 - I - 0x01659D 05:A58D: 17        .byte $17   ; 
- D 1 - I - 0x01659E 05:A58E: 19        .byte $19   ; 
- D 1 - I - 0x01659F 05:A58F: 00        .byte $00   ; 
- D 1 - I - 0x0165A0 05:A590: 00        .byte $00   ; 
- D 1 - I - 0x0165A1 05:A591: 00        .byte $00   ; 
- D 1 - I - 0x0165A2 05:A592: 00        .byte $00   ; 
- D 1 - I - 0x0165A3 05:A593: 00        .byte $00   ; 
- D 1 - I - 0x0165A4 05:A594: 00        .byte $00   ; 
- D 1 - I - 0x0165A5 05:A595: 00        .byte $00   ; 
- D 1 - I - 0x0165A6 05:A596: 00        .byte $00   ; 
- D 1 - I - 0x0165A7 05:A597: 00        .byte $00   ; 
- D 1 - I - 0x0165A8 05:A598: 00        .byte $00   ; 
- D 1 - I - 0x0165A9 05:A599: 00        .byte $00   ; 
- D 1 - I - 0x0165AA 05:A59A: 00        .byte $00   ; 
- D 1 - I - 0x0165AB 05:A59B: 00        .byte $00   ; 
- D 1 - I - 0x0165AC 05:A59C: 00        .byte $00   ; 
- D 1 - I - 0x0165AD 05:A59D: 00        .byte $00   ; 
- D 1 - I - 0x0165AE 05:A59E: 00        .byte $00   ; 
- D 1 - I - 0x0165AF 05:A59F: 00        .byte $00   ; 
- D 1 - I - 0x0165B0 05:A5A0: 00        .byte $00   ; 
- D 1 - I - 0x0165B1 05:A5A1: 00        .byte $00   ; 
- D 1 - I - 0x0165B2 05:A5A2: 00        .byte $00   ; 
- D 1 - I - 0x0165B3 05:A5A3: 00        .byte $00   ; 
- D 1 - I - 0x0165B4 05:A5A4: 00        .byte $00   ; 
- D 1 - I - 0x0165B5 05:A5A5: 00        .byte $00   ; 
- D 1 - I - 0x0165B6 05:A5A6: 00        .byte $00   ; 
- D 1 - I - 0x0165B7 05:A5A7: 00        .byte $00   ; 
- D 1 - I - 0x0165B8 05:A5A8: 00        .byte $00   ; 
- D 1 - I - 0x0165B9 05:A5A9: 00        .byte $00   ; 
- D 1 - I - 0x0165BA 05:A5AA: 00        .byte $00   ; 
- D 1 - I - 0x0165BB 05:A5AB: 00        .byte $00   ; 
- D 1 - I - 0x0165BC 05:A5AC: 00        .byte $00   ; 
- D 1 - I - 0x0165BD 05:A5AD: 00        .byte $00   ; 
- D 1 - I - 0x0165BE 05:A5AE: 00        .byte $00   ; 
- D 1 - I - 0x0165BF 05:A5AF: 00        .byte $00   ; 
- D 1 - I - 0x0165C0 05:A5B0: 00        .byte $00   ; 
- D 1 - I - 0x0165C1 05:A5B1: 00        .byte $00   ; 
- D 1 - I - 0x0165C2 05:A5B2: 00        .byte $00   ; 
- D 1 - I - 0x0165C3 05:A5B3: 00        .byte $00   ; 
- D 1 - I - 0x0165C4 05:A5B4: 00        .byte $00   ; 
- D 1 - I - 0x0165C5 05:A5B5: 00        .byte $00   ; 
- D 1 - I - 0x0165C6 05:A5B6: 00        .byte $00   ; 
- D 1 - I - 0x0165C7 05:A5B7: 00        .byte $00   ; 
- D 1 - I - 0x0165C8 05:A5B8: 00        .byte $00   ; 
- D 1 - I - 0x0165C9 05:A5B9: 00        .byte $00   ; 
- D 1 - I - 0x0165CA 05:A5BA: 00        .byte $00   ; 
- D 1 - I - 0x0165CB 05:A5BB: 00        .byte $00   ; 
- D 1 - I - 0x0165CC 05:A5BC: 00        .byte $00   ; 
- D 1 - I - 0x0165CD 05:A5BD: 00        .byte $00   ; 
- D 1 - I - 0x0165CE 05:A5BE: 00        .byte $00   ; 
- D 1 - I - 0x0165CF 05:A5BF: 00        .byte $00   ; 
- D 1 - I - 0x0165D0 05:A5C0: 00        .byte $00   ; 
- D 1 - I - 0x0165D1 05:A5C1: 00        .byte $00   ; 
- D 1 - I - 0x0165D2 05:A5C2: 00        .byte $00   ; 
- D 1 - I - 0x0165D3 05:A5C3: 00        .byte $00   ; 
- D 1 - I - 0x0165D4 05:A5C4: 00        .byte $00   ; 
- D 1 - I - 0x0165D5 05:A5C5: 00        .byte $00   ; 
- D 1 - I - 0x0165D6 05:A5C6: 00        .byte $00   ; 
- D 1 - I - 0x0165D7 05:A5C7: 00        .byte $00   ; 
- D 1 - I - 0x0165D8 05:A5C8: 00        .byte $00   ; 
- D 1 - I - 0x0165D9 05:A5C9: 00        .byte $00   ; 
- D 1 - I - 0x0165DA 05:A5CA: 00        .byte $00   ; 
- D 1 - I - 0x0165DB 05:A5CB: 00        .byte $00   ; 
- D 1 - I - 0x0165DC 05:A5CC: 00        .byte $00   ; 
- D 1 - I - 0x0165DD 05:A5CD: 00        .byte $00   ; 
- D 1 - I - 0x0165DE 05:A5CE: 1B        .byte $1B   ; 
- D 1 - I - 0x0165DF 05:A5CF: 1D        .byte $1D   ; 
- D 1 - I - 0x0165E0 05:A5D0: 1F        .byte $1F   ; 
- D 1 - I - 0x0165E1 05:A5D1: 21        .byte $21   ; 
- D 1 - I - 0x0165E2 05:A5D2: 23        .byte $23   ; 
- D 1 - I - 0x0165E3 05:A5D3: 00        .byte $00   ; 
- D 1 - I - 0x0165E4 05:A5D4: 00        .byte $00   ; 
- D 1 - I - 0x0165E5 05:A5D5: 00        .byte $00   ; 
- D 1 - I - 0x0165E6 05:A5D6: 00        .byte $00   ; 
- D 1 - I - 0x0165E7 05:A5D7: 00        .byte $00   ; 
- D 1 - I - 0x0165E8 05:A5D8: 00        .byte $00   ; 
- D 1 - I - 0x0165E9 05:A5D9: 00        .byte $00   ; 
- D 1 - I - 0x0165EA 05:A5DA: 00        .byte $00   ; 
- D 1 - I - 0x0165EB 05:A5DB: 00        .byte $00   ; 
- D 1 - I - 0x0165EC 05:A5DC: 00        .byte $00   ; 
- D 1 - I - 0x0165ED 05:A5DD: 00        .byte $00   ; 
- D 1 - I - 0x0165EE 05:A5DE: 00        .byte $00   ; 
- D 1 - I - 0x0165EF 05:A5DF: 00        .byte $00   ; 
- D 1 - I - 0x0165F0 05:A5E0: 00        .byte $00   ; 
- D 1 - I - 0x0165F1 05:A5E1: 00        .byte $00   ; 
- D 1 - I - 0x0165F2 05:A5E2: 00        .byte $00   ; 
- D 1 - I - 0x0165F3 05:A5E3: 00        .byte $00   ; 
- D 1 - I - 0x0165F4 05:A5E4: 00        .byte $00   ; 
- D 1 - I - 0x0165F5 05:A5E5: 00        .byte $00   ; 
- D 1 - I - 0x0165F6 05:A5E6: 00        .byte $00   ; 
- D 1 - I - 0x0165F7 05:A5E7: 00        .byte $00   ; 
- D 1 - I - 0x0165F8 05:A5E8: 00        .byte $00   ; 
- D 1 - I - 0x0165F9 05:A5E9: 00        .byte $00   ; 
- D 1 - I - 0x0165FA 05:A5EA: 00        .byte $00   ; 
- D 1 - I - 0x0165FB 05:A5EB: 00        .byte $00   ; 
- D 1 - I - 0x0165FC 05:A5EC: 00        .byte $00   ; 
- D 1 - I - 0x0165FD 05:A5ED: 00        .byte $00   ; 
- D 1 - I - 0x0165FE 05:A5EE: 00        .byte $00   ; 
- D 1 - I - 0x0165FF 05:A5EF: 00        .byte $00   ; 
- D 1 - I - 0x016600 05:A5F0: 00        .byte $00   ; 
- D 1 - I - 0x016601 05:A5F1: 00        .byte $00   ; 
- D 1 - I - 0x016602 05:A5F2: 00        .byte $00   ; 
- D 1 - I - 0x016603 05:A5F3: 00        .byte $00   ; 
- D 1 - I - 0x016604 05:A5F4: 00        .byte $00   ; 
- D 1 - I - 0x016605 05:A5F5: 00        .byte $00   ; 
- D 1 - I - 0x016606 05:A5F6: 00        .byte $00   ; 
- D 1 - I - 0x016607 05:A5F7: 00        .byte $00   ; 
- D 1 - I - 0x016608 05:A5F8: 00        .byte $00   ; 
- D 1 - I - 0x016609 05:A5F9: FF        .byte $FF   ; 
- D 1 - I - 0x01660A 05:A5FA: 00        .byte $00   ; 
- D 1 - I - 0x01660B 05:A5FB: 00        .byte $00   ; 
- D 1 - I - 0x01660C 05:A5FC: 00        .byte $00   ; 
- D 1 - I - 0x01660D 05:A5FD: A5        .byte $A5   ; 
- D 1 - I - 0x01660E 05:A5FE: A7        .byte $A7   ; 
- D 1 - I - 0x01660F 05:A5FF: 81        .byte $81   ; 
- D 1 - I - 0x016610 05:A600: A3        .byte $A3   ; 
- D 1 - I - 0x016611 05:A601: A7        .byte $A7   ; 
- D 1 - I - 0x016612 05:A602: FF        .byte $FF   ; 
- D 1 - I - 0x016613 05:A603: 00        .byte $00   ; 
- D 1 - I - 0x016614 05:A604: 00        .byte $00   ; 
- D 1 - I - 0x016615 05:A605: 00        .byte $00   ; 
- D 1 - I - 0x016616 05:A606: 00        .byte $00   ; 
- D 1 - I - 0x016617 05:A607: 00        .byte $00   ; 
- D 1 - I - 0x016618 05:A608: 00        .byte $00   ; 
- D 1 - I - 0x016619 05:A609: 00        .byte $00   ; 
- D 1 - I - 0x01661A 05:A60A: 00        .byte $00   ; 
- D 1 - I - 0x01661B 05:A60B: 00        .byte $00   ; 
- D 1 - I - 0x01661C 05:A60C: 00        .byte $00   ; 
- D 1 - I - 0x01661D 05:A60D: 00        .byte $00   ; 
- D 1 - I - 0x01661E 05:A60E: 00        .byte $00   ; 
- D 1 - I - 0x01661F 05:A60F: 00        .byte $00   ; 
- D 1 - I - 0x016620 05:A610: 00        .byte $00   ; 
- D 1 - I - 0x016621 05:A611: 25        .byte $25   ; 
- D 1 - I - 0x016622 05:A612: 27        .byte $27   ; 
- D 1 - I - 0x016623 05:A613: 00        .byte $00   ; 
- D 1 - I - 0x016624 05:A614: 00        .byte $00   ; 
- D 1 - I - 0x016625 05:A615: 00        .byte $00   ; 
- D 1 - I - 0x016626 05:A616: 00        .byte $00   ; 
- D 1 - I - 0x016627 05:A617: 00        .byte $00   ; 
- D 1 - I - 0x016628 05:A618: 00        .byte $00   ; 
- D 1 - I - 0x016629 05:A619: 00        .byte $00   ; 
- D 1 - I - 0x01662A 05:A61A: 00        .byte $00   ; 
- D 1 - I - 0x01662B 05:A61B: 00        .byte $00   ; 
- D 1 - I - 0x01662C 05:A61C: 00        .byte $00   ; 
- D 1 - I - 0x01662D 05:A61D: 00        .byte $00   ; 
- D 1 - I - 0x01662E 05:A61E: 00        .byte $00   ; 
- D 1 - I - 0x01662F 05:A61F: 00        .byte $00   ; 
- D 1 - I - 0x016630 05:A620: 00        .byte $00   ; 
- D 1 - I - 0x016631 05:A621: 00        .byte $00   ; 
- D 1 - I - 0x016632 05:A622: 00        .byte $00   ; 
- D 1 - I - 0x016633 05:A623: 00        .byte $00   ; 
- D 1 - I - 0x016634 05:A624: 00        .byte $00   ; 
- D 1 - I - 0x016635 05:A625: 00        .byte $00   ; 
- D 1 - I - 0x016636 05:A626: 00        .byte $00   ; 
- D 1 - I - 0x016637 05:A627: 00        .byte $00   ; 
- D 1 - I - 0x016638 05:A628: 00        .byte $00   ; 
- D 1 - I - 0x016639 05:A629: 00        .byte $00   ; 
- D 1 - I - 0x01663A 05:A62A: 00        .byte $00   ; 
- D 1 - I - 0x01663B 05:A62B: 00        .byte $00   ; 
- D 1 - I - 0x01663C 05:A62C: 00        .byte $00   ; 
- D 1 - I - 0x01663D 05:A62D: 00        .byte $00   ; 
- D 1 - I - 0x01663E 05:A62E: 00        .byte $00   ; 
- D 1 - I - 0x01663F 05:A62F: 00        .byte $00   ; 
- D 1 - I - 0x016640 05:A630: 00        .byte $00   ; 
- D 1 - I - 0x016641 05:A631: 00        .byte $00   ; 
- D 1 - I - 0x016642 05:A632: 00        .byte $00   ; 
- D 1 - I - 0x016643 05:A633: 00        .byte $00   ; 
- D 1 - I - 0x016644 05:A634: 00        .byte $00   ; 
- D 1 - I - 0x016645 05:A635: 00        .byte $00   ; 
- D 1 - I - 0x016646 05:A636: 00        .byte $00   ; 
- D 1 - I - 0x016647 05:A637: 00        .byte $00   ; 
- D 1 - I - 0x016648 05:A638: 00        .byte $00   ; 
- D 1 - I - 0x016649 05:A639: FF        .byte $FF   ; 
- D 1 - I - 0x01664A 05:A63A: 00        .byte $00   ; 
- D 1 - I - 0x01664B 05:A63B: 00        .byte $00   ; 
- D 1 - I - 0x01664C 05:A63C: 00        .byte $00   ; 
- D 1 - I - 0x01664D 05:A63D: 85        .byte $85   ; 
- D 1 - I - 0x01664E 05:A63E: 9D        .byte $9D   ; 
- D 1 - I - 0x01664F 05:A63F: 9B        .byte $9B   ; 
- D 1 - I - 0x016650 05:A640: A7        .byte $A7   ; 
- D 1 - I - 0x016651 05:A641: 91        .byte $91   ; 
- D 1 - I - 0x016652 05:A642: 9B        .byte $9B   ; 
- D 1 - I - 0x016653 05:A643: A9        .byte $A9   ; 
- D 1 - I - 0x016654 05:A644: 89        .byte $89   ; 
- D 1 - I - 0x016655 05:A645: 00        .byte $00   ; 
- D 1 - I - 0x016656 05:A646: 00        .byte $00   ; 
- D 1 - I - 0x016657 05:A647: 00        .byte $00   ; 
- D 1 - I - 0x016658 05:A648: 00        .byte $00   ; 
- D 1 - I - 0x016659 05:A649: 00        .byte $00   ; 
- D 1 - I - 0x01665A 05:A64A: 00        .byte $00   ; 
- D 1 - I - 0x01665B 05:A64B: 00        .byte $00   ; 
- D 1 - I - 0x01665C 05:A64C: 00        .byte $00   ; 
- D 1 - I - 0x01665D 05:A64D: 00        .byte $00   ; 
- D 1 - I - 0x01665E 05:A64E: 00        .byte $00   ; 
- D 1 - I - 0x01665F 05:A64F: 00        .byte $00   ; 
- D 1 - I - 0x016660 05:A650: 00        .byte $00   ; 
- D 1 - I - 0x016661 05:A651: 00        .byte $00   ; 
- D 1 - I - 0x016662 05:A652: 00        .byte $00   ; 
- D 1 - I - 0x016663 05:A653: 00        .byte $00   ; 
- D 1 - I - 0x016664 05:A654: 00        .byte $00   ; 
- D 1 - I - 0x016665 05:A655: 00        .byte $00   ; 
- D 1 - I - 0x016666 05:A656: 00        .byte $00   ; 
- D 1 - I - 0x016667 05:A657: 00        .byte $00   ; 
- D 1 - I - 0x016668 05:A658: 00        .byte $00   ; 
- D 1 - I - 0x016669 05:A659: 00        .byte $00   ; 
- D 1 - I - 0x01666A 05:A65A: 00        .byte $00   ; 
- D 1 - I - 0x01666B 05:A65B: 00        .byte $00   ; 
- D 1 - I - 0x01666C 05:A65C: 00        .byte $00   ; 
- D 1 - I - 0x01666D 05:A65D: 00        .byte $00   ; 
- D 1 - I - 0x01666E 05:A65E: 00        .byte $00   ; 
- D 1 - I - 0x01666F 05:A65F: 00        .byte $00   ; 
- D 1 - I - 0x016670 05:A660: 00        .byte $00   ; 
- D 1 - I - 0x016671 05:A661: 00        .byte $00   ; 
- D 1 - I - 0x016672 05:A662: 00        .byte $00   ; 
- D 1 - I - 0x016673 05:A663: 00        .byte $00   ; 
- D 1 - I - 0x016674 05:A664: 00        .byte $00   ; 
- D 1 - I - 0x016675 05:A665: 00        .byte $00   ; 
- D 1 - I - 0x016676 05:A666: 00        .byte $00   ; 
- D 1 - I - 0x016677 05:A667: 00        .byte $00   ; 
- D 1 - I - 0x016678 05:A668: 00        .byte $00   ; 
- D 1 - I - 0x016679 05:A669: 00        .byte $00   ; 
- D 1 - I - 0x01667A 05:A66A: 00        .byte $00   ; 
- D 1 - I - 0x01667B 05:A66B: 00        .byte $00   ; 
- D 1 - I - 0x01667C 05:A66C: 00        .byte $00   ; 
- D 1 - I - 0x01667D 05:A66D: 00        .byte $00   ; 
- D 1 - I - 0x01667E 05:A66E: 00        .byte $00   ; 
- D 1 - I - 0x01667F 05:A66F: 00        .byte $00   ; 
- D 1 - I - 0x016680 05:A670: 00        .byte $00   ; 
- D 1 - I - 0x016681 05:A671: 00        .byte $00   ; 
- D 1 - I - 0x016682 05:A672: 00        .byte $00   ; 
- D 1 - I - 0x016683 05:A673: 00        .byte $00   ; 
- D 1 - I - 0x016684 05:A674: 00        .byte $00   ; 
- D 1 - I - 0x016685 05:A675: 00        .byte $00   ; 
- D 1 - I - 0x016686 05:A676: 00        .byte $00   ; 
- D 1 - I - 0x016687 05:A677: 00        .byte $00   ; 
- D 1 - I - 0x016688 05:A678: 00        .byte $00   ; 
- D 1 - I - 0x016689 05:A679: 00        .byte $00   ; 
- D 1 - I - 0x01668A 05:A67A: 00        .byte $00   ; 
- D 1 - I - 0x01668B 05:A67B: 00        .byte $00   ; 
- D 1 - I - 0x01668C 05:A67C: 00        .byte $00   ; 
- D 1 - I - 0x01668D 05:A67D: A5        .byte $A5   ; 
- D 1 - I - 0x01668E 05:A67E: 9D        .byte $9D   ; 
- D 1 - I - 0x01668F 05:A67F: A9        .byte $A9   ; 
- D 1 - I - 0x016690 05:A680: 9B        .byte $9B   ; 
- D 1 - I - 0x016691 05:A681: 87        .byte $87   ; 
- D 1 - I - 0x016692 05:A682: 00        .byte $00   ; 
- D 1 - I - 0x016693 05:A683: 9D        .byte $9D   ; 
- D 1 - I - 0x016694 05:A684: 8B        .byte $8B   ; 
- D 1 - I - 0x016695 05:A685: 8B        .byte $8B   ; 
- D 1 - I - 0x016696 05:A686: 00        .byte $00   ; 
- D 1 - I - 0x016697 05:A687: 00        .byte $00   ; 
- D 1 - I - 0x016698 05:A688: 00        .byte $00   ; 
- D 1 - I - 0x016699 05:A689: 00        .byte $00   ; 
- D 1 - I - 0x01669A 05:A68A: 00        .byte $00   ; 
- D 1 - I - 0x01669B 05:A68B: 00        .byte $00   ; 
- D 1 - I - 0x01669C 05:A68C: 00        .byte $00   ; 
- D 1 - I - 0x01669D 05:A68D: 00        .byte $00   ; 
- D 1 - I - 0x01669E 05:A68E: 00        .byte $00   ; 
- D 1 - I - 0x01669F 05:A68F: 00        .byte $00   ; 
- D 1 - I - 0x0166A0 05:A690: 00        .byte $00   ; 
- D 1 - I - 0x0166A1 05:A691: 00        .byte $00   ; 
- D 1 - I - 0x0166A2 05:A692: 00        .byte $00   ; 
- D 1 - I - 0x0166A3 05:A693: 00        .byte $00   ; 
- D 1 - I - 0x0166A4 05:A694: 00        .byte $00   ; 
- D 1 - I - 0x0166A5 05:A695: 00        .byte $00   ; 
- D 1 - I - 0x0166A6 05:A696: 00        .byte $00   ; 
- D 1 - I - 0x0166A7 05:A697: 00        .byte $00   ; 
- D 1 - I - 0x0166A8 05:A698: 00        .byte $00   ; 
- D 1 - I - 0x0166A9 05:A699: 00        .byte $00   ; 
- D 1 - I - 0x0166AA 05:A69A: 00        .byte $00   ; 
- D 1 - I - 0x0166AB 05:A69B: 00        .byte $00   ; 
- D 1 - I - 0x0166AC 05:A69C: 00        .byte $00   ; 
- D 1 - I - 0x0166AD 05:A69D: 00        .byte $00   ; 
- D 1 - I - 0x0166AE 05:A69E: 00        .byte $00   ; 
- D 1 - I - 0x0166AF 05:A69F: 00        .byte $00   ; 
- D 1 - I - 0x0166B0 05:A6A0: 00        .byte $00   ; 
- D 1 - I - 0x0166B1 05:A6A1: 00        .byte $00   ; 
- D 1 - I - 0x0166B2 05:A6A2: 00        .byte $00   ; 
- D 1 - I - 0x0166B3 05:A6A3: 00        .byte $00   ; 
- D 1 - I - 0x0166B4 05:A6A4: 00        .byte $00   ; 
- D 1 - I - 0x0166B5 05:A6A5: 00        .byte $00   ; 
- D 1 - I - 0x0166B6 05:A6A6: 00        .byte $00   ; 
- D 1 - I - 0x0166B7 05:A6A7: 00        .byte $00   ; 
- D 1 - I - 0x0166B8 05:A6A8: 00        .byte $00   ; 
- D 1 - I - 0x0166B9 05:A6A9: 00        .byte $00   ; 
- D 1 - I - 0x0166BA 05:A6AA: 00        .byte $00   ; 
- D 1 - I - 0x0166BB 05:A6AB: 00        .byte $00   ; 
- D 1 - I - 0x0166BC 05:A6AC: 00        .byte $00   ; 
- D 1 - I - 0x0166BD 05:A6AD: 00        .byte $00   ; 
- D 1 - I - 0x0166BE 05:A6AE: 00        .byte $00   ; 
- D 1 - I - 0x0166BF 05:A6AF: 00        .byte $00   ; 
- D 1 - I - 0x0166C0 05:A6B0: 00        .byte $00   ; 
- D 1 - I - 0x0166C1 05:A6B1: 00        .byte $00   ; 
- D 1 - I - 0x0166C2 05:A6B2: 00        .byte $00   ; 
- D 1 - I - 0x0166C3 05:A6B3: 00        .byte $00   ; 
- D 1 - I - 0x0166C4 05:A6B4: 00        .byte $00   ; 
- D 1 - I - 0x0166C5 05:A6B5: 00        .byte $00   ; 
- D 1 - I - 0x0166C6 05:A6B6: 00        .byte $00   ; 
- D 1 - I - 0x0166C7 05:A6B7: 00        .byte $00   ; 
- D 1 - I - 0x0166C8 05:A6B8: 00        .byte $00   ; 
- D 1 - I - 0x0166C9 05:A6B9: 00        .byte $00   ; 
- D 1 - I - 0x0166CA 05:A6BA: 00        .byte $00   ; 
- D 1 - I - 0x0166CB 05:A6BB: 00        .byte $00   ; 
- D 1 - I - 0x0166CC 05:A6BC: 00        .byte $00   ; 
- D 1 - I - 0x0166CD 05:A6BD: 99        .byte $99   ; 
- D 1 - I - 0x0166CE 05:A6BE: A9        .byte $A9   ; 
- D 1 - I - 0x0166CF 05:A6BF: A5        .byte $A5   ; 
- D 1 - I - 0x0166D0 05:A6C0: 91        .byte $91   ; 
- D 1 - I - 0x0166D1 05:A6C1: 85        .byte $85   ; 
- D 1 - I - 0x0166D2 05:A6C2: 00        .byte $00   ; 
- D 1 - I - 0x0166D3 05:A6C3: 9D        .byte $9D   ; 
- D 1 - I - 0x0166D4 05:A6C4: 8B        .byte $8B   ; 
- D 1 - I - 0x0166D5 05:A6C5: 8B        .byte $8B   ; 
- D 1 - I - 0x0166D6 05:A6C6: 00        .byte $00   ; 
- D 1 - I - 0x0166D7 05:A6C7: 00        .byte $00   ; 
- D 1 - I - 0x0166D8 05:A6C8: 00        .byte $00   ; 
- D 1 - I - 0x0166D9 05:A6C9: 00        .byte $00   ; 
- D 1 - I - 0x0166DA 05:A6CA: 00        .byte $00   ; 
- D 1 - I - 0x0166DB 05:A6CB: 00        .byte $00   ; 
- D 1 - I - 0x0166DC 05:A6CC: 00        .byte $00   ; 
- D 1 - I - 0x0166DD 05:A6CD: 00        .byte $00   ; 
- D 1 - I - 0x0166DE 05:A6CE: 00        .byte $00   ; 
- D 1 - I - 0x0166DF 05:A6CF: 00        .byte $00   ; 
- D 1 - I - 0x0166E0 05:A6D0: 00        .byte $00   ; 
- D 1 - I - 0x0166E1 05:A6D1: 00        .byte $00   ; 
- D 1 - I - 0x0166E2 05:A6D2: 00        .byte $00   ; 
- D 1 - I - 0x0166E3 05:A6D3: 00        .byte $00   ; 
- D 1 - I - 0x0166E4 05:A6D4: 00        .byte $00   ; 
- D 1 - I - 0x0166E5 05:A6D5: 00        .byte $00   ; 
- D 1 - I - 0x0166E6 05:A6D6: 00        .byte $00   ; 
- D 1 - I - 0x0166E7 05:A6D7: 00        .byte $00   ; 
- D 1 - I - 0x0166E8 05:A6D8: 00        .byte $00   ; 
- D 1 - I - 0x0166E9 05:A6D9: 00        .byte $00   ; 
- D 1 - I - 0x0166EA 05:A6DA: 00        .byte $00   ; 
- D 1 - I - 0x0166EB 05:A6DB: 00        .byte $00   ; 
- D 1 - I - 0x0166EC 05:A6DC: 00        .byte $00   ; 
- D 1 - I - 0x0166ED 05:A6DD: 00        .byte $00   ; 
- D 1 - I - 0x0166EE 05:A6DE: 00        .byte $00   ; 
- D 1 - I - 0x0166EF 05:A6DF: 00        .byte $00   ; 
- D 1 - I - 0x0166F0 05:A6E0: 00        .byte $00   ; 
- D 1 - I - 0x0166F1 05:A6E1: 00        .byte $00   ; 
- D 1 - I - 0x0166F2 05:A6E2: 00        .byte $00   ; 
- D 1 - I - 0x0166F3 05:A6E3: 00        .byte $00   ; 
- D 1 - I - 0x0166F4 05:A6E4: 00        .byte $00   ; 
- D 1 - I - 0x0166F5 05:A6E5: 00        .byte $00   ; 
- D 1 - I - 0x0166F6 05:A6E6: 00        .byte $00   ; 
- D 1 - I - 0x0166F7 05:A6E7: 00        .byte $00   ; 
- D 1 - I - 0x0166F8 05:A6E8: 00        .byte $00   ; 
- D 1 - I - 0x0166F9 05:A6E9: 00        .byte $00   ; 
- D 1 - I - 0x0166FA 05:A6EA: 00        .byte $00   ; 
- D 1 - I - 0x0166FB 05:A6EB: 00        .byte $00   ; 
- D 1 - I - 0x0166FC 05:A6EC: 00        .byte $00   ; 
- D 1 - I - 0x0166FD 05:A6ED: 00        .byte $00   ; 
- D 1 - I - 0x0166FE 05:A6EE: 00        .byte $00   ; 
- D 1 - I - 0x0166FF 05:A6EF: 00        .byte $00   ; 
- D 1 - I - 0x016700 05:A6F0: 00        .byte $00   ; 
- D 1 - I - 0x016701 05:A6F1: 00        .byte $00   ; 
- D 1 - I - 0x016702 05:A6F2: 00        .byte $00   ; 
- D 1 - I - 0x016703 05:A6F3: 00        .byte $00   ; 
- D 1 - I - 0x016704 05:A6F4: 00        .byte $00   ; 
- D 1 - I - 0x016705 05:A6F5: 00        .byte $00   ; 
- D 1 - I - 0x016706 05:A6F6: 00        .byte $00   ; 
- D 1 - I - 0x016707 05:A6F7: 00        .byte $00   ; 
- D 1 - I - 0x016708 05:A6F8: 00        .byte $00   ; 
- D 1 - I - 0x016709 05:A6F9: 00        .byte $00   ; 
- D 1 - I - 0x01670A 05:A6FA: 00        .byte $00   ; 
- D 1 - I - 0x01670B 05:A6FB: 00        .byte $00   ; 
- D 1 - I - 0x01670C 05:A6FC: 00        .byte $00   ; 
- D 1 - I - 0x01670D 05:A6FD: 00        .byte $00   ; 
- D 1 - I - 0x01670E 05:A6FE: 00        .byte $00   ; 
- D 1 - I - 0x01670F 05:A6FF: 00        .byte $00   ; 
- D 1 - I - 0x016710 05:A700: 00        .byte $00   ; 
- D 1 - I - 0x016711 05:A701: 00        .byte $00   ; 
- D 1 - I - 0x016712 05:A702: 00        .byte $00   ; 
- D 1 - I - 0x016713 05:A703: 00        .byte $00   ; 
- D 1 - I - 0x016714 05:A704: 00        .byte $00   ; 
- D 1 - I - 0x016715 05:A705: 00        .byte $00   ; 
- D 1 - I - 0x016716 05:A706: 00        .byte $00   ; 
- D 1 - I - 0x016717 05:A707: 00        .byte $00   ; 
- D 1 - I - 0x016718 05:A708: 00        .byte $00   ; 
- D 1 - I - 0x016719 05:A709: 00        .byte $00   ; 
- D 1 - I - 0x01671A 05:A70A: 00        .byte $00   ; 
- D 1 - I - 0x01671B 05:A70B: 00        .byte $00   ; 
- D 1 - I - 0x01671C 05:A70C: 00        .byte $00   ; 
- D 1 - I - 0x01671D 05:A70D: 00        .byte $00   ; 
- D 1 - I - 0x01671E 05:A70E: 00        .byte $00   ; 
- D 1 - I - 0x01671F 05:A70F: 00        .byte $00   ; 
- D 1 - I - 0x016720 05:A710: 00        .byte $00   ; 
- D 1 - I - 0x016721 05:A711: 00        .byte $00   ; 
- D 1 - I - 0x016722 05:A712: 00        .byte $00   ; 
- D 1 - I - 0x016723 05:A713: 00        .byte $00   ; 
- D 1 - I - 0x016724 05:A714: 00        .byte $00   ; 
- D 1 - I - 0x016725 05:A715: 00        .byte $00   ; 
- D 1 - I - 0x016726 05:A716: 00        .byte $00   ; 
- D 1 - I - 0x016727 05:A717: 00        .byte $00   ; 
- D 1 - I - 0x016728 05:A718: 00        .byte $00   ; 
- D 1 - I - 0x016729 05:A719: 00        .byte $00   ; 
- D 1 - I - 0x01672A 05:A71A: 00        .byte $00   ; 
- D 1 - I - 0x01672B 05:A71B: 00        .byte $00   ; 
- D 1 - I - 0x01672C 05:A71C: 00        .byte $00   ; 
- D 1 - I - 0x01672D 05:A71D: 00        .byte $00   ; 
- D 1 - I - 0x01672E 05:A71E: 00        .byte $00   ; 
- D 1 - I - 0x01672F 05:A71F: 00        .byte $00   ; 
- D 1 - I - 0x016730 05:A720: 00        .byte $00   ; 
- D 1 - I - 0x016731 05:A721: 00        .byte $00   ; 
- D 1 - I - 0x016732 05:A722: 00        .byte $00   ; 
- D 1 - I - 0x016733 05:A723: 00        .byte $00   ; 
- D 1 - I - 0x016734 05:A724: 00        .byte $00   ; 
- D 1 - I - 0x016735 05:A725: 00        .byte $00   ; 
- D 1 - I - 0x016736 05:A726: 00        .byte $00   ; 
- D 1 - I - 0x016737 05:A727: 00        .byte $00   ; 
- D 1 - I - 0x016738 05:A728: 00        .byte $00   ; 
- D 1 - I - 0x016739 05:A729: 00        .byte $00   ; 
- D 1 - I - 0x01673A 05:A72A: 00        .byte $00   ; 
- D 1 - I - 0x01673B 05:A72B: 00        .byte $00   ; 
- D 1 - I - 0x01673C 05:A72C: 00        .byte $00   ; 
- D 1 - I - 0x01673D 05:A72D: 00        .byte $00   ; 
- D 1 - I - 0x01673E 05:A72E: 00        .byte $00   ; 
- D 1 - I - 0x01673F 05:A72F: 00        .byte $00   ; 
- D 1 - I - 0x016740 05:A730: 00        .byte $00   ; 
- D 1 - I - 0x016741 05:A731: 00        .byte $00   ; 
- D 1 - I - 0x016742 05:A732: 00        .byte $00   ; 
- D 1 - I - 0x016743 05:A733: 00        .byte $00   ; 
- D 1 - I - 0x016744 05:A734: 00        .byte $00   ; 
- D 1 - I - 0x016745 05:A735: 00        .byte $00   ; 
- D 1 - I - 0x016746 05:A736: 00        .byte $00   ; 
- D 1 - I - 0x016747 05:A737: 00        .byte $00   ; 
- D 1 - I - 0x016748 05:A738: 00        .byte $00   ; 
- - - - - - 0x016749 05:A739: 00        .byte $00   ; 
- - - - - - 0x01674A 05:A73A: 00        .byte $00   ; 
- - - - - - 0x01674B 05:A73B: 00        .byte $00   ; 
- - - - - - 0x01674C 05:A73C: 00        .byte $00   ; 
- - - - - - 0x01674D 05:A73D: 00        .byte $00   ; 
- - - - - - 0x01674E 05:A73E: 00        .byte $00   ; 
- - - - - - 0x01674F 05:A73F: 00        .byte $00   ; 
- - - - - - 0x016750 05:A740: 00        .byte $00   ; 
- - - - - - 0x016751 05:A741: 00        .byte $00   ; 
- - - - - - 0x016752 05:A742: 00        .byte $00   ; 
- - - - - - 0x016753 05:A743: 00        .byte $00   ; 
- - - - - - 0x016754 05:A744: 00        .byte $00   ; 
- - - - - - 0x016755 05:A745: 00        .byte $00   ; 
- - - - - - 0x016756 05:A746: 00        .byte $00   ; 
- - - - - - 0x016757 05:A747: 00        .byte $00   ; 
- - - - - - 0x016758 05:A748: 00        .byte $00   ; 
- - - - - - 0x016759 05:A749: 00        .byte $00   ; 
- - - - - - 0x01675A 05:A74A: 00        .byte $00   ; 
- - - - - - 0x01675B 05:A74B: 00        .byte $00   ; 
- - - - - - 0x01675C 05:A74C: 00        .byte $00   ; 
- - - - - - 0x01675D 05:A74D: 00        .byte $00   ; 
- - - - - - 0x01675E 05:A74E: 00        .byte $00   ; 
- - - - - - 0x01675F 05:A74F: 00        .byte $00   ; 
- - - - - - 0x016760 05:A750: 00        .byte $00   ; 
- - - - - - 0x016761 05:A751: 00        .byte $00   ; 
- - - - - - 0x016762 05:A752: 00        .byte $00   ; 
- - - - - - 0x016763 05:A753: 00        .byte $00   ; 
- - - - - - 0x016764 05:A754: 00        .byte $00   ; 
- - - - - - 0x016765 05:A755: 00        .byte $00   ; 
- - - - - - 0x016766 05:A756: 00        .byte $00   ; 
- - - - - - 0x016767 05:A757: 00        .byte $00   ; 
- - - - - - 0x016768 05:A758: 00        .byte $00   ; 



_off008_A759_05:
- D 1 - I - 0x016769 05:A759: 7F        .byte $7F   ; 
- D 1 - I - 0x01676A 05:A75A: 00        .byte $00   ; 
- D 1 - I - 0x01676B 05:A75B: 28        .byte $28   ; 
- D 1 - I - 0x01676C 05:A75C: 00        .byte $00   ; 
- D 1 - I - 0x01676D 05:A75D: 81        .byte $81   ; 
- D 1 - I - 0x01676E 05:A75E: 27        .byte $27   ; 
- D 1 - I - 0x01676F 05:A75F: 07        .byte $07   ; 
- D 1 - I - 0x016770 05:A760: 00        .byte $00   ; 
- D 1 - I - 0x016771 05:A761: 82        .byte $82   ; 
- D 1 - I - 0x016772 05:A762: 28        .byte $28   ; 
- D 1 - I - 0x016773 05:A763: 29        .byte $29   ; 
- D 1 - I - 0x016774 05:A764: 07        .byte $07   ; 
- D 1 - I - 0x016775 05:A765: 00        .byte $00   ; 
- D 1 - I - 0x016776 05:A766: 81        .byte $81   ; 
- D 1 - I - 0x016777 05:A767: 27        .byte $27   ; 
- D 1 - I - 0x016778 05:A768: 0E        .byte $0E   ; 
- D 1 - I - 0x016779 05:A769: 00        .byte $00   ; 
- D 1 - I - 0x01677A 05:A76A: 81        .byte $81   ; 
- D 1 - I - 0x01677B 05:A76B: 2A        .byte $2A   ; 
- D 1 - I - 0x01677C 05:A76C: 02        .byte $02   ; 
- D 1 - I - 0x01677D 05:A76D: 00        .byte $00   ; 
- D 1 - I - 0x01677E 05:A76E: 81        .byte $81   ; 
- D 1 - I - 0x01677F 05:A76F: 2B        .byte $2B   ; 
- D 1 - I - 0x016780 05:A770: 02        .byte $02   ; 
- D 1 - I - 0x016781 05:A771: 2C        .byte $2C   ; 
- D 1 - I - 0x016782 05:A772: 86        .byte $86   ; 
- D 1 - I - 0x016783 05:A773: 2D        .byte $2D   ; 
- D 1 - I - 0x016784 05:A774: 2E        .byte $2E   ; 
- D 1 - I - 0x016785 05:A775: 2F        .byte $2F   ; 
- D 1 - I - 0x016786 05:A776: 30        .byte $30   ; 
- D 1 - I - 0x016787 05:A777: 31        .byte $31   ; 
- D 1 - I - 0x016788 05:A778: 32        .byte $32   ; 
- D 1 - I - 0x016789 05:A779: 02        .byte $02   ; 
- D 1 - I - 0x01678A 05:A77A: 2C        .byte $2C   ; 
- D 1 - I - 0x01678B 05:A77B: 81        .byte $81   ; 
- D 1 - I - 0x01678C 05:A77C: 33        .byte $33   ; 
- D 1 - I - 0x01678D 05:A77D: 02        .byte $02   ; 
- D 1 - I - 0x01678E 05:A77E: 00        .byte $00   ; 
- D 1 - I - 0x01678F 05:A77F: 81        .byte $81   ; 
- D 1 - I - 0x016790 05:A780: 2A        .byte $2A   ; 
- D 1 - I - 0x016791 05:A781: 08        .byte $08   ; 
- D 1 - I - 0x016792 05:A782: 00        .byte $00   ; 
- D 1 - I - 0x016793 05:A783: 87        .byte $87   ; 
- D 1 - I - 0x016794 05:A784: 34        .byte $34   ; 
- D 1 - I - 0x016795 05:A785: 35        .byte $35   ; 
- D 1 - I - 0x016796 05:A786: 36        .byte $36   ; 
- D 1 - I - 0x016797 05:A787: 37        .byte $37   ; 
- D 1 - I - 0x016798 05:A788: 38        .byte $38   ; 
- D 1 - I - 0x016799 05:A789: 39        .byte $39   ; 
- D 1 - I - 0x01679A 05:A78A: 3A        .byte $3A   ; 
- D 1 - I - 0x01679B 05:A78B: 03        .byte $03   ; 
- D 1 - I - 0x01679C 05:A78C: 3B        .byte $3B   ; 
- D 1 - I - 0x01679D 05:A78D: 8A        .byte $8A   ; 
- D 1 - I - 0x01679E 05:A78E: 3C        .byte $3C   ; 
- D 1 - I - 0x01679F 05:A78F: 3D        .byte $3D   ; 
- D 1 - I - 0x0167A0 05:A790: 3E        .byte $3E   ; 
- D 1 - I - 0x0167A1 05:A791: 3F        .byte $3F   ; 
- D 1 - I - 0x0167A2 05:A792: 40        .byte $40   ; 
- D 1 - I - 0x0167A3 05:A793: 41        .byte $41   ; 
- D 1 - I - 0x0167A4 05:A794: 42        .byte $42   ; 
- D 1 - I - 0x0167A5 05:A795: 43        .byte $43   ; 
- D 1 - I - 0x0167A6 05:A796: 44        .byte $44   ; 
- D 1 - I - 0x0167A7 05:A797: 45        .byte $45   ; 
- D 1 - I - 0x0167A8 05:A798: 03        .byte $03   ; 
- D 1 - I - 0x0167A9 05:A799: 3B        .byte $3B   ; 
- D 1 - I - 0x0167AA 05:A79A: 87        .byte $87   ; 
- D 1 - I - 0x0167AB 05:A79B: 3A        .byte $3A   ; 
- D 1 - I - 0x0167AC 05:A79C: 46        .byte $46   ; 
- D 1 - I - 0x0167AD 05:A79D: 47        .byte $47   ; 
- D 1 - I - 0x0167AE 05:A79E: 48        .byte $48   ; 
- D 1 - I - 0x0167AF 05:A79F: 49        .byte $49   ; 
- D 1 - I - 0x0167B0 05:A7A0: 4A        .byte $4A   ; 
- D 1 - I - 0x0167B1 05:A7A1: 4B        .byte $4B   ; 
- D 1 - I - 0x0167B2 05:A7A2: 02        .byte $02   ; 
- D 1 - I - 0x0167B3 05:A7A3: 00        .byte $00   ; 
- D 1 - I - 0x0167B4 05:A7A4: 81        .byte $81   ; 
- D 1 - I - 0x0167B5 05:A7A5: 4C        .byte $4C   ; 
- D 1 - I - 0x0167B6 05:A7A6: 0B        .byte $0B   ; 
- D 1 - I - 0x0167B7 05:A7A7: 00        .byte $00   ; 
- D 1 - I - 0x0167B8 05:A7A8: 86        .byte $86   ; 
- D 1 - I - 0x0167B9 05:A7A9: 4D        .byte $4D   ; 
- D 1 - I - 0x0167BA 05:A7AA: 4E        .byte $4E   ; 
- D 1 - I - 0x0167BB 05:A7AB: 4F        .byte $4F   ; 
- D 1 - I - 0x0167BC 05:A7AC: 50        .byte $50   ; 
- D 1 - I - 0x0167BD 05:A7AD: 51        .byte $51   ; 
- D 1 - I - 0x0167BE 05:A7AE: 52        .byte $52   ; 
- D 1 - I - 0x0167BF 05:A7AF: 0B        .byte $0B   ; 
- D 1 - I - 0x0167C0 05:A7B0: 00        .byte $00   ; 
- D 1 - I - 0x0167C1 05:A7B1: 81        .byte $81   ; 
- D 1 - I - 0x0167C2 05:A7B2: 53        .byte $53   ; 
- D 1 - I - 0x0167C3 05:A7B3: 02        .byte $02   ; 
- D 1 - I - 0x0167C4 05:A7B4: 00        .byte $00   ; 
- D 1 - I - 0x0167C5 05:A7B5: 81        .byte $81   ; 
- D 1 - I - 0x0167C6 05:A7B6: 54        .byte $54   ; 
- D 1 - I - 0x0167C7 05:A7B7: 0B        .byte $0B   ; 
- D 1 - I - 0x0167C8 05:A7B8: 00        .byte $00   ; 
- D 1 - I - 0x0167C9 05:A7B9: 86        .byte $86   ; 
- D 1 - I - 0x0167CA 05:A7BA: 55        .byte $55   ; 
- D 1 - I - 0x0167CB 05:A7BB: 56        .byte $56   ; 
- D 1 - I - 0x0167CC 05:A7BC: 57        .byte $57   ; 
- D 1 - I - 0x0167CD 05:A7BD: 58        .byte $58   ; 
- D 1 - I - 0x0167CE 05:A7BE: 59        .byte $59   ; 
- D 1 - I - 0x0167CF 05:A7BF: 5A        .byte $5A   ; 
- D 1 - I - 0x0167D0 05:A7C0: 0B        .byte $0B   ; 
- D 1 - I - 0x0167D1 05:A7C1: 00        .byte $00   ; 
- D 1 - I - 0x0167D2 05:A7C2: 81        .byte $81   ; 
- D 1 - I - 0x0167D3 05:A7C3: 5B        .byte $5B   ; 
- D 1 - I - 0x0167D4 05:A7C4: 02        .byte $02   ; 
- D 1 - I - 0x0167D5 05:A7C5: 00        .byte $00   ; 
- D 1 - I - 0x0167D6 05:A7C6: 81        .byte $81   ; 
- D 1 - I - 0x0167D7 05:A7C7: 5C        .byte $5C   ; 
- D 1 - I - 0x0167D8 05:A7C8: 0A        .byte $0A   ; 
- D 1 - I - 0x0167D9 05:A7C9: 00        .byte $00   ; 
- D 1 - I - 0x0167DA 05:A7CA: 87        .byte $87   ; 
- D 1 - I - 0x0167DB 05:A7CB: 5D        .byte $5D   ; 
- D 1 - I - 0x0167DC 05:A7CC: 5E        .byte $5E   ; 
- D 1 - I - 0x0167DD 05:A7CD: 5F        .byte $5F   ; 
- D 1 - I - 0x0167DE 05:A7CE: 60        .byte $60   ; 
- D 1 - I - 0x0167DF 05:A7CF: 61        .byte $61   ; 
- D 1 - I - 0x0167E0 05:A7D0: 62        .byte $62   ; 
- D 1 - I - 0x0167E1 05:A7D1: 63        .byte $63   ; 
- D 1 - I - 0x0167E2 05:A7D2: 0B        .byte $0B   ; 
- D 1 - I - 0x0167E3 05:A7D3: 00        .byte $00   ; 
- D 1 - I - 0x0167E4 05:A7D4: 81        .byte $81   ; 
- D 1 - I - 0x0167E5 05:A7D5: 64        .byte $64   ; 
- D 1 - I - 0x0167E6 05:A7D6: 02        .byte $02   ; 
- D 1 - I - 0x0167E7 05:A7D7: 00        .byte $00   ; 
- D 1 - I - 0x0167E8 05:A7D8: 81        .byte $81   ; 
- D 1 - I - 0x0167E9 05:A7D9: 5C        .byte $5C   ; 
- D 1 - I - 0x0167EA 05:A7DA: 0A        .byte $0A   ; 
- D 1 - I - 0x0167EB 05:A7DB: 00        .byte $00   ; 
- D 1 - I - 0x0167EC 05:A7DC: 88        .byte $88   ; 
- D 1 - I - 0x0167ED 05:A7DD: 65        .byte $65   ; 
- D 1 - I - 0x0167EE 05:A7DE: 66        .byte $66   ; 
- D 1 - I - 0x0167EF 05:A7DF: 67        .byte $67   ; 
- D 1 - I - 0x0167F0 05:A7E0: 68        .byte $68   ; 
- D 1 - I - 0x0167F1 05:A7E1: 69        .byte $69   ; 
- D 1 - I - 0x0167F2 05:A7E2: 6A        .byte $6A   ; 
- D 1 - I - 0x0167F3 05:A7E3: 6B        .byte $6B   ; 
- D 1 - I - 0x0167F4 05:A7E4: 6C        .byte $6C   ; 
- D 1 - I - 0x0167F5 05:A7E5: 0A        .byte $0A   ; 
- D 1 - I - 0x0167F6 05:A7E6: 00        .byte $00   ; 
- D 1 - I - 0x0167F7 05:A7E7: 81        .byte $81   ; 
- D 1 - I - 0x0167F8 05:A7E8: 64        .byte $64   ; 
- D 1 - I - 0x0167F9 05:A7E9: 02        .byte $02   ; 
- D 1 - I - 0x0167FA 05:A7EA: 00        .byte $00   ; 
- D 1 - I - 0x0167FB 05:A7EB: 81        .byte $81   ; 
- D 1 - I - 0x0167FC 05:A7EC: 5C        .byte $5C   ; 
- D 1 - I - 0x0167FD 05:A7ED: 0B        .byte $0B   ; 
- D 1 - I - 0x0167FE 05:A7EE: 00        .byte $00   ; 
- D 1 - I - 0x0167FF 05:A7EF: 87        .byte $87   ; 
- D 1 - I - 0x016800 05:A7F0: 6D        .byte $6D   ; 
- D 1 - I - 0x016801 05:A7F1: 6E        .byte $6E   ; 
- D 1 - I - 0x016802 05:A7F2: 6F        .byte $6F   ; 
- D 1 - I - 0x016803 05:A7F3: 70        .byte $70   ; 
- D 1 - I - 0x016804 05:A7F4: 71        .byte $71   ; 
- D 1 - I - 0x016805 05:A7F5: 72        .byte $72   ; 
- D 1 - I - 0x016806 05:A7F6: 73        .byte $73   ; 
- D 1 - I - 0x016807 05:A7F7: 0A        .byte $0A   ; 
- D 1 - I - 0x016808 05:A7F8: 00        .byte $00   ; 
- D 1 - I - 0x016809 05:A7F9: 81        .byte $81   ; 
- D 1 - I - 0x01680A 05:A7FA: 64        .byte $64   ; 
- D 1 - I - 0x01680B 05:A7FB: 02        .byte $02   ; 
- D 1 - I - 0x01680C 05:A7FC: 00        .byte $00   ; 
- D 1 - I - 0x01680D 05:A7FD: 81        .byte $81   ; 
- D 1 - I - 0x01680E 05:A7FE: 74        .byte $74   ; 
- D 1 - I - 0x01680F 05:A7FF: 0B        .byte $0B   ; 
- D 1 - I - 0x016810 05:A800: 00        .byte $00   ; 
- D 1 - I - 0x016811 05:A801: 86        .byte $86   ; 
- D 1 - I - 0x016812 05:A802: 75        .byte $75   ; 
- D 1 - I - 0x016813 05:A803: 76        .byte $76   ; 
- D 1 - I - 0x016814 05:A804: 77        .byte $77   ; 
- D 1 - I - 0x016815 05:A805: 78        .byte $78   ; 
- D 1 - I - 0x016816 05:A806: 79        .byte $79   ; 
- D 1 - I - 0x016817 05:A807: 7A        .byte $7A   ; 
- D 1 - I - 0x016818 05:A808: 0B        .byte $0B   ; 
- D 1 - I - 0x016819 05:A809: 00        .byte $00   ; 
- D 1 - I - 0x01681A 05:A80A: 84        .byte $84   ; 
- D 1 - I - 0x01681B 05:A80B: 7B        .byte $7B   ; 
- D 1 - I - 0x01681C 05:A80C: 00        .byte $00   ; 
- D 1 - I - 0x01681D 05:A80D: 7C        .byte $7C   ; 
- D 1 - I - 0x01681E 05:A80E: 7D        .byte $7D   ; 
- D 1 - I - 0x01681F 05:A80F: 0B        .byte $0B   ; 
- D 1 - I - 0x016820 05:A810: 00        .byte $00   ; 
- D 1 - I - 0x016821 05:A811: 86        .byte $86   ; 
- D 1 - I - 0x016822 05:A812: 7E        .byte $7E   ; 
- D 1 - I - 0x016823 05:A813: 7F        .byte $7F   ; 
- D 1 - I - 0x016824 05:A814: 80        .byte $80   ; 
- D 1 - I - 0x016825 05:A815: 81        .byte $81   ; 
- D 1 - I - 0x016826 05:A816: 82        .byte $82   ; 
- D 1 - I - 0x016827 05:A817: 83        .byte $83   ; 
- D 1 - I - 0x016828 05:A818: 0B        .byte $0B   ; 
- D 1 - I - 0x016829 05:A819: 00        .byte $00   ; 
- D 1 - I - 0x01682A 05:A81A: 84        .byte $84   ; 
- D 1 - I - 0x01682B 05:A81B: 84        .byte $84   ; 
- D 1 - I - 0x01682C 05:A81C: 85        .byte $85   ; 
- D 1 - I - 0x01682D 05:A81D: 86        .byte $86   ; 
- D 1 - I - 0x01682E 05:A81E: 87        .byte $87   ; 
- D 1 - I - 0x01682F 05:A81F: 0A        .byte $0A   ; 
- D 1 - I - 0x016830 05:A820: 00        .byte $00   ; 
- D 1 - I - 0x016831 05:A821: 89        .byte $89   ; 
- D 1 - I - 0x016832 05:A822: 88        .byte $88   ; 
- D 1 - I - 0x016833 05:A823: 89        .byte $89   ; 
- D 1 - I - 0x016834 05:A824: 8A        .byte $8A   ; 
- D 1 - I - 0x016835 05:A825: 8B        .byte $8B   ; 
- D 1 - I - 0x016836 05:A826: 8C        .byte $8C   ; 
- D 1 - I - 0x016837 05:A827: 8D        .byte $8D   ; 
- D 1 - I - 0x016838 05:A828: 8E        .byte $8E   ; 
- D 1 - I - 0x016839 05:A829: 8F        .byte $8F   ; 
- D 1 - I - 0x01683A 05:A82A: 90        .byte $90   ; 
- D 1 - I - 0x01683B 05:A82B: 09        .byte $09   ; 
- D 1 - I - 0x01683C 05:A82C: 00        .byte $00   ; 
- D 1 - I - 0x01683D 05:A82D: 84        .byte $84   ; 
- D 1 - I - 0x01683E 05:A82E: 91        .byte $91   ; 
- D 1 - I - 0x01683F 05:A82F: 92        .byte $92   ; 
- D 1 - I - 0x016840 05:A830: 00        .byte $00   ; 
- D 1 - I - 0x016841 05:A831: 93        .byte $93   ; 
- D 1 - I - 0x016842 05:A832: 08        .byte $08   ; 
- D 1 - I - 0x016843 05:A833: 00        .byte $00   ; 
- D 1 - I - 0x016844 05:A834: 8E        .byte $8E   ; 
- D 1 - I - 0x016845 05:A835: 94        .byte $94   ; 
- D 1 - I - 0x016846 05:A836: 95        .byte $95   ; 
- D 1 - I - 0x016847 05:A837: 96        .byte $96   ; 
- D 1 - I - 0x016848 05:A838: 97        .byte $97   ; 
- D 1 - I - 0x016849 05:A839: 98        .byte $98   ; 
- D 1 - I - 0x01684A 05:A83A: 99        .byte $99   ; 
- D 1 - I - 0x01684B 05:A83B: 9A        .byte $9A   ; 
- D 1 - I - 0x01684C 05:A83C: 9B        .byte $9B   ; 
- D 1 - I - 0x01684D 05:A83D: 9C        .byte $9C   ; 
- D 1 - I - 0x01684E 05:A83E: 9D        .byte $9D   ; 
- D 1 - I - 0x01684F 05:A83F: 9E        .byte $9E   ; 
- D 1 - I - 0x016850 05:A840: 9F        .byte $9F   ; 
- D 1 - I - 0x016851 05:A841: A0        .byte $A0   ; 
- D 1 - I - 0x016852 05:A842: A1        .byte $A1   ; 
- D 1 - I - 0x016853 05:A843: 06        .byte $06   ; 
- D 1 - I - 0x016854 05:A844: 00        .byte $00   ; 
- D 1 - I - 0x016855 05:A845: 81        .byte $81   ; 
- D 1 - I - 0x016856 05:A846: A2        .byte $A2   ; 
- D 1 - I - 0x016857 05:A847: 02        .byte $02   ; 
- D 1 - I - 0x016858 05:A848: 00        .byte $00   ; 
- D 1 - I - 0x016859 05:A849: 81        .byte $81   ; 
- D 1 - I - 0x01685A 05:A84A: 5C        .byte $5C   ; 
- D 1 - I - 0x01685B 05:A84B: 07        .byte $07   ; 
- D 1 - I - 0x01685C 05:A84C: 00        .byte $00   ; 
- D 1 - I - 0x01685D 05:A84D: 8F        .byte $8F   ; 
- D 1 - I - 0x01685E 05:A84E: A3        .byte $A3   ; 
- D 1 - I - 0x01685F 05:A84F: A4        .byte $A4   ; 
- D 1 - I - 0x016860 05:A850: A5        .byte $A5   ; 
- D 1 - I - 0x016861 05:A851: A6        .byte $A6   ; 
- D 1 - I - 0x016862 05:A852: A7        .byte $A7   ; 
- D 1 - I - 0x016863 05:A853: A8        .byte $A8   ; 
- D 1 - I - 0x016864 05:A854: A9        .byte $A9   ; 
- D 1 - I - 0x016865 05:A855: AA        .byte $AA   ; 
- D 1 - I - 0x016866 05:A856: AB        .byte $AB   ; 
- D 1 - I - 0x016867 05:A857: AC        .byte $AC   ; 
- D 1 - I - 0x016868 05:A858: AD        .byte $AD   ; 
- D 1 - I - 0x016869 05:A859: AE        .byte $AE   ; 
- D 1 - I - 0x01686A 05:A85A: AF        .byte $AF   ; 
- D 1 - I - 0x01686B 05:A85B: B0        .byte $B0   ; 
- D 1 - I - 0x01686C 05:A85C: B1        .byte $B1   ; 
- D 1 - I - 0x01686D 05:A85D: 06        .byte $06   ; 
- D 1 - I - 0x01686E 05:A85E: 00        .byte $00   ; 
- D 1 - I - 0x01686F 05:A85F: 81        .byte $81   ; 
- D 1 - I - 0x016870 05:A860: 64        .byte $64   ; 
- D 1 - I - 0x016871 05:A861: 02        .byte $02   ; 
- D 1 - I - 0x016872 05:A862: 00        .byte $00   ; 
- D 1 - I - 0x016873 05:A863: 81        .byte $81   ; 
- D 1 - I - 0x016874 05:A864: 5C        .byte $5C   ; 
- D 1 - I - 0x016875 05:A865: 1C        .byte $1C   ; 
- D 1 - I - 0x016876 05:A866: 00        .byte $00   ; 
- D 1 - I - 0x016877 05:A867: 81        .byte $81   ; 
- D 1 - I - 0x016878 05:A868: 64        .byte $64   ; 
- D 1 - I - 0x016879 05:A869: 02        .byte $02   ; 
- D 1 - I - 0x01687A 05:A86A: 00        .byte $00   ; 
- D 1 - I - 0x01687B 05:A86B: 81        .byte $81   ; 
- D 1 - I - 0x01687C 05:A86C: 5C        .byte $5C   ; 
- D 1 - I - 0x01687D 05:A86D: 1C        .byte $1C   ; 
- D 1 - I - 0x01687E 05:A86E: 00        .byte $00   ; 
- D 1 - I - 0x01687F 05:A86F: 81        .byte $81   ; 
- D 1 - I - 0x016880 05:A870: 64        .byte $64   ; 
- D 1 - I - 0x016881 05:A871: 02        .byte $02   ; 
- D 1 - I - 0x016882 05:A872: 00        .byte $00   ; 
- D 1 - I - 0x016883 05:A873: 81        .byte $81   ; 
- D 1 - I - 0x016884 05:A874: B2        .byte $B2   ; 
- D 1 - I - 0x016885 05:A875: 1C        .byte $1C   ; 
- D 1 - I - 0x016886 05:A876: 00        .byte $00   ; 
- D 1 - I - 0x016887 05:A877: 81        .byte $81   ; 
- D 1 - I - 0x016888 05:A878: B3        .byte $B3   ; 
- D 1 - I - 0x016889 05:A879: 02        .byte $02   ; 
- D 1 - I - 0x01688A 05:A87A: 00        .byte $00   ; 
- D 1 - I - 0x01688B 05:A87B: 81        .byte $81   ; 
- D 1 - I - 0x01688C 05:A87C: B4        .byte $B4   ; 
- D 1 - I - 0x01688D 05:A87D: 1C        .byte $1C   ; 
- D 1 - I - 0x01688E 05:A87E: 00        .byte $00   ; 
- D 1 - I - 0x01688F 05:A87F: 81        .byte $81   ; 
- D 1 - I - 0x016890 05:A880: B5        .byte $B5   ; 
- D 1 - I - 0x016891 05:A881: 02        .byte $02   ; 
- D 1 - I - 0x016892 05:A882: 00        .byte $00   ; 
- D 1 - I - 0x016893 05:A883: 84        .byte $84   ; 
- D 1 - I - 0x016894 05:A884: B6        .byte $B6   ; 
- D 1 - I - 0x016895 05:A885: B7        .byte $B7   ; 
- D 1 - I - 0x016896 05:A886: B8        .byte $B8   ; 
- D 1 - I - 0x016897 05:A887: B9        .byte $B9   ; 
- D 1 - I - 0x016898 05:A888: 03        .byte $03   ; 
- D 1 - I - 0x016899 05:A889: BA        .byte $BA   ; 
- D 1 - I - 0x01689A 05:A88A: 90        .byte $90   ; 
- D 1 - I - 0x01689B 05:A88B: BB        .byte $BB   ; 
- D 1 - I - 0x01689C 05:A88C: BC        .byte $BC   ; 
- D 1 - I - 0x01689D 05:A88D: BD        .byte $BD   ; 
- D 1 - I - 0x01689E 05:A88E: BE        .byte $BE   ; 
- D 1 - I - 0x01689F 05:A88F: BF        .byte $BF   ; 
- D 1 - I - 0x0168A0 05:A890: C0        .byte $C0   ; 
- D 1 - I - 0x0168A1 05:A891: C1        .byte $C1   ; 
- D 1 - I - 0x0168A2 05:A892: C2        .byte $C2   ; 
- D 1 - I - 0x0168A3 05:A893: C3        .byte $C3   ; 
- D 1 - I - 0x0168A4 05:A894: C4        .byte $C4   ; 
- D 1 - I - 0x0168A5 05:A895: C5        .byte $C5   ; 
- D 1 - I - 0x0168A6 05:A896: C6        .byte $C6   ; 
- D 1 - I - 0x0168A7 05:A897: C7        .byte $C7   ; 
- D 1 - I - 0x0168A8 05:A898: C8        .byte $C8   ; 
- D 1 - I - 0x0168A9 05:A899: C9        .byte $C9   ; 
- D 1 - I - 0x0168AA 05:A89A: CA        .byte $CA   ; 
- D 1 - I - 0x0168AB 05:A89B: 03        .byte $03   ; 
- D 1 - I - 0x0168AC 05:A89C: CB        .byte $CB   ; 
- D 1 - I - 0x0168AD 05:A89D: 84        .byte $84   ; 
- D 1 - I - 0x0168AE 05:A89E: CC        .byte $CC   ; 
- D 1 - I - 0x0168AF 05:A89F: CD        .byte $CD   ; 
- D 1 - I - 0x0168B0 05:A8A0: CE        .byte $CE   ; 
- D 1 - I - 0x0168B1 05:A8A1: CF        .byte $CF   ; 
- D 1 - I - 0x0168B2 05:A8A2: 0B        .byte $0B   ; 
- D 1 - I - 0x0168B3 05:A8A3: 00        .byte $00   ; 
- D 1 - I - 0x0168B4 05:A8A4: 81        .byte $81   ; 
- D 1 - I - 0x0168B5 05:A8A5: D0        .byte $D0   ; 
- D 1 - I - 0x0168B6 05:A8A6: 02        .byte $02   ; 
- D 1 - I - 0x0168B7 05:A8A7: D1        .byte $D1   ; 
- D 1 - I - 0x0168B8 05:A8A8: 86        .byte $86   ; 
- D 1 - I - 0x0168B9 05:A8A9: D2        .byte $D2   ; 
- D 1 - I - 0x0168BA 05:A8AA: D3        .byte $D3   ; 
- D 1 - I - 0x0168BB 05:A8AB: D4        .byte $D4   ; 
- D 1 - I - 0x0168BC 05:A8AC: D5        .byte $D5   ; 
- D 1 - I - 0x0168BD 05:A8AD: D6        .byte $D6   ; 
- D 1 - I - 0x0168BE 05:A8AE: D7        .byte $D7   ; 
- D 1 - I - 0x0168BF 05:A8AF: 02        .byte $02   ; 
- D 1 - I - 0x0168C0 05:A8B0: D1        .byte $D1   ; 
- D 1 - I - 0x0168C1 05:A8B1: 81        .byte $81   ; 
- D 1 - I - 0x0168C2 05:A8B2: D8        .byte $D8   ; 
- D 1 - I - 0x0168C3 05:A8B3: 7F        .byte $7F   ; 
- D 1 - I - 0x0168C4 05:A8B4: 00        .byte $00   ; 
- D 1 - I - 0x0168C5 05:A8B5: 7F        .byte $7F   ; 
- D 1 - I - 0x0168C6 05:A8B6: 00        .byte $00   ; 
- D 1 - I - 0x0168C7 05:A8B7: FF        .byte $FF   ; end token


; bzk garbage
- - - - - - 0x0168C8 05:A8B8: FF        .byte $FF   ; 



_off008_A8B9_06:
- D 1 - I - 0x0168C9 05:A8B9: 1A        .byte $1A   ; 
- D 1 - I - 0x0168CA 05:A8BA: 00        .byte $00   ; 
- D 1 - I - 0x0168CB 05:A8BB: 26        .byte $26   ; 
- D 1 - I - 0x0168CC 05:A8BC: 00        .byte $00   ; 
- D 1 - I - 0x0168CD 05:A8BD: 8D        .byte $8D   ; 
- D 1 - I - 0x0168CE 05:A8BE: 00        .byte $00   ; 
- D 1 - I - 0x0168CF 05:A8BF: 00        .byte $00   ; 
- D 1 - I - 0x0168D0 05:A8C0: 00        .byte $00   ; 
- D 1 - I - 0x0168D1 05:A8C1: 00        .byte $00   ; 
- D 1 - I - 0x0168D2 05:A8C2: 00        .byte $00   ; 
- D 1 - I - 0x0168D3 05:A8C3: 00        .byte $00   ; 
- D 1 - I - 0x0168D4 05:A8C4: 00        .byte $00   ; 
- D 1 - I - 0x0168D5 05:A8C5: 00        .byte $00   ; 
- D 1 - I - 0x0168D6 05:A8C6: 00        .byte $00   ; 
- D 1 - I - 0x0168D7 05:A8C7: 00        .byte $00   ; 
- D 1 - I - 0x0168D8 05:A8C8: 00        .byte $00   ; 
- D 1 - I - 0x0168D9 05:A8C9: 00        .byte $00   ; 
- D 1 - I - 0x0168DA 05:A8CA: 00        .byte $00   ; 
- D 1 - I - 0x0168DB 05:A8CB: 5A        .byte $5A   ; 
- D 1 - I - 0x0168DC 05:A8CC: 00        .byte $00   ; 
- D 1 - I - 0x0168DD 05:A8CD: 81        .byte $81   ; 
- D 1 - I - 0x0168DE 05:A8CE: 27        .byte $27   ; 
- D 1 - I - 0x0168DF 05:A8CF: 07        .byte $07   ; 
- D 1 - I - 0x0168E0 05:A8D0: 00        .byte $00   ; 
- D 1 - I - 0x0168E1 05:A8D1: 82        .byte $82   ; 
- D 1 - I - 0x0168E2 05:A8D2: 28        .byte $28   ; 
- D 1 - I - 0x0168E3 05:A8D3: 29        .byte $29   ; 
- D 1 - I - 0x0168E4 05:A8D4: 07        .byte $07   ; 
- D 1 - I - 0x0168E5 05:A8D5: 00        .byte $00   ; 
- D 1 - I - 0x0168E6 05:A8D6: 81        .byte $81   ; 
- D 1 - I - 0x0168E7 05:A8D7: 27        .byte $27   ; 
- D 1 - I - 0x0168E8 05:A8D8: 0E        .byte $0E   ; 
- D 1 - I - 0x0168E9 05:A8D9: 00        .byte $00   ; 
- D 1 - I - 0x0168EA 05:A8DA: 81        .byte $81   ; 
- D 1 - I - 0x0168EB 05:A8DB: 2A        .byte $2A   ; 
- D 1 - I - 0x0168EC 05:A8DC: 02        .byte $02   ; 
- D 1 - I - 0x0168ED 05:A8DD: 00        .byte $00   ; 
- D 1 - I - 0x0168EE 05:A8DE: 81        .byte $81   ; 
- D 1 - I - 0x0168EF 05:A8DF: 2B        .byte $2B   ; 
- D 1 - I - 0x0168F0 05:A8E0: 02        .byte $02   ; 
- D 1 - I - 0x0168F1 05:A8E1: 2C        .byte $2C   ; 
- D 1 - I - 0x0168F2 05:A8E2: 86        .byte $86   ; 
- D 1 - I - 0x0168F3 05:A8E3: 2D        .byte $2D   ; 
- D 1 - I - 0x0168F4 05:A8E4: 2E        .byte $2E   ; 
- D 1 - I - 0x0168F5 05:A8E5: 2F        .byte $2F   ; 
- D 1 - I - 0x0168F6 05:A8E6: 30        .byte $30   ; 
- D 1 - I - 0x0168F7 05:A8E7: 31        .byte $31   ; 
- D 1 - I - 0x0168F8 05:A8E8: 32        .byte $32   ; 
- D 1 - I - 0x0168F9 05:A8E9: 02        .byte $02   ; 
- D 1 - I - 0x0168FA 05:A8EA: 2C        .byte $2C   ; 
- D 1 - I - 0x0168FB 05:A8EB: 81        .byte $81   ; 
- D 1 - I - 0x0168FC 05:A8EC: 33        .byte $33   ; 
- D 1 - I - 0x0168FD 05:A8ED: 02        .byte $02   ; 
- D 1 - I - 0x0168FE 05:A8EE: 00        .byte $00   ; 
- D 1 - I - 0x0168FF 05:A8EF: 81        .byte $81   ; 
- D 1 - I - 0x016900 05:A8F0: 2A        .byte $2A   ; 
- D 1 - I - 0x016901 05:A8F1: 08        .byte $08   ; 
- D 1 - I - 0x016902 05:A8F2: 00        .byte $00   ; 
- D 1 - I - 0x016903 05:A8F3: 87        .byte $87   ; 
- D 1 - I - 0x016904 05:A8F4: 34        .byte $34   ; 
- D 1 - I - 0x016905 05:A8F5: 35        .byte $35   ; 
- D 1 - I - 0x016906 05:A8F6: 36        .byte $36   ; 
- D 1 - I - 0x016907 05:A8F7: 37        .byte $37   ; 
- D 1 - I - 0x016908 05:A8F8: 38        .byte $38   ; 
- D 1 - I - 0x016909 05:A8F9: 39        .byte $39   ; 
- D 1 - I - 0x01690A 05:A8FA: 3A        .byte $3A   ; 
- D 1 - I - 0x01690B 05:A8FB: 03        .byte $03   ; 
- D 1 - I - 0x01690C 05:A8FC: 3B        .byte $3B   ; 
- D 1 - I - 0x01690D 05:A8FD: 8A        .byte $8A   ; 
- D 1 - I - 0x01690E 05:A8FE: 3C        .byte $3C   ; 
- D 1 - I - 0x01690F 05:A8FF: 3D        .byte $3D   ; 
- D 1 - I - 0x016910 05:A900: 3E        .byte $3E   ; 
- D 1 - I - 0x016911 05:A901: 3F        .byte $3F   ; 
- D 1 - I - 0x016912 05:A902: 40        .byte $40   ; 
- D 1 - I - 0x016913 05:A903: 41        .byte $41   ; 
- D 1 - I - 0x016914 05:A904: 42        .byte $42   ; 
- D 1 - I - 0x016915 05:A905: 43        .byte $43   ; 
- D 1 - I - 0x016916 05:A906: 44        .byte $44   ; 
- D 1 - I - 0x016917 05:A907: 45        .byte $45   ; 
- D 1 - I - 0x016918 05:A908: 03        .byte $03   ; 
- D 1 - I - 0x016919 05:A909: 3B        .byte $3B   ; 
- D 1 - I - 0x01691A 05:A90A: 87        .byte $87   ; 
- D 1 - I - 0x01691B 05:A90B: 3A        .byte $3A   ; 
- D 1 - I - 0x01691C 05:A90C: 46        .byte $46   ; 
- D 1 - I - 0x01691D 05:A90D: 47        .byte $47   ; 
- D 1 - I - 0x01691E 05:A90E: 48        .byte $48   ; 
- D 1 - I - 0x01691F 05:A90F: 49        .byte $49   ; 
- D 1 - I - 0x016920 05:A910: 4A        .byte $4A   ; 
- D 1 - I - 0x016921 05:A911: 4B        .byte $4B   ; 
- D 1 - I - 0x016922 05:A912: 02        .byte $02   ; 
- D 1 - I - 0x016923 05:A913: 00        .byte $00   ; 
- D 1 - I - 0x016924 05:A914: 81        .byte $81   ; 
- D 1 - I - 0x016925 05:A915: 4C        .byte $4C   ; 
- D 1 - I - 0x016926 05:A916: 1C        .byte $1C   ; 
- D 1 - I - 0x016927 05:A917: 00        .byte $00   ; 
- D 1 - I - 0x016928 05:A918: 81        .byte $81   ; 
- D 1 - I - 0x016929 05:A919: 4D        .byte $4D   ; 
- D 1 - I - 0x01692A 05:A91A: 02        .byte $02   ; 
- D 1 - I - 0x01692B 05:A91B: 00        .byte $00   ; 
- D 1 - I - 0x01692C 05:A91C: 81        .byte $81   ; 
- D 1 - I - 0x01692D 05:A91D: 4E        .byte $4E   ; 
- D 1 - I - 0x01692E 05:A91E: 08        .byte $08   ; 
- D 1 - I - 0x01692F 05:A91F: 00        .byte $00   ; 
- D 1 - I - 0x016930 05:A920: 85        .byte $85   ; 
- D 1 - I - 0x016931 05:A921: 4F        .byte $4F   ; 
- D 1 - I - 0x016932 05:A922: 50        .byte $50   ; 
- D 1 - I - 0x016933 05:A923: 51        .byte $51   ; 
- D 1 - I - 0x016934 05:A924: 52        .byte $52   ; 
- D 1 - I - 0x016935 05:A925: 53        .byte $53   ; 
- D 1 - I - 0x016936 05:A926: 03        .byte $03   ; 
- D 1 - I - 0x016937 05:A927: 54        .byte $54   ; 
- D 1 - I - 0x016938 05:A928: 83        .byte $83   ; 
- D 1 - I - 0x016939 05:A929: 55        .byte $55   ; 
- D 1 - I - 0x01693A 05:A92A: 56        .byte $56   ; 
- D 1 - I - 0x01693B 05:A92B: 57        .byte $57   ; 
- D 1 - I - 0x01693C 05:A92C: 09        .byte $09   ; 
- D 1 - I - 0x01693D 05:A92D: 00        .byte $00   ; 
- D 1 - I - 0x01693E 05:A92E: 81        .byte $81   ; 
- D 1 - I - 0x01693F 05:A92F: 58        .byte $58   ; 
- D 1 - I - 0x016940 05:A930: 02        .byte $02   ; 
- D 1 - I - 0x016941 05:A931: 00        .byte $00   ; 
- D 1 - I - 0x016942 05:A932: 81        .byte $81   ; 
- D 1 - I - 0x016943 05:A933: 59        .byte $59   ; 
- D 1 - I - 0x016944 05:A934: 08        .byte $08   ; 
- D 1 - I - 0x016945 05:A935: 00        .byte $00   ; 
- D 1 - I - 0x016946 05:A936: 87        .byte $87   ; 
- D 1 - I - 0x016947 05:A937: 5A        .byte $5A   ; 
- D 1 - I - 0x016948 05:A938: 5B        .byte $5B   ; 
- D 1 - I - 0x016949 05:A939: 5C        .byte $5C   ; 
- D 1 - I - 0x01694A 05:A93A: 5D        .byte $5D   ; 
- D 1 - I - 0x01694B 05:A93B: 5E        .byte $5E   ; 
- D 1 - I - 0x01694C 05:A93C: 5F        .byte $5F   ; 
- D 1 - I - 0x01694D 05:A93D: 60        .byte $60   ; 
- D 1 - I - 0x01694E 05:A93E: 02        .byte $02   ; 
- D 1 - I - 0x01694F 05:A93F: 00        .byte $00   ; 
- D 1 - I - 0x016950 05:A940: 83        .byte $83   ; 
- D 1 - I - 0x016951 05:A941: 5F        .byte $5F   ; 
- D 1 - I - 0x016952 05:A942: 61        .byte $61   ; 
- D 1 - I - 0x016953 05:A943: 57        .byte $57   ; 
- D 1 - I - 0x016954 05:A944: 08        .byte $08   ; 
- D 1 - I - 0x016955 05:A945: 00        .byte $00   ; 
- D 1 - I - 0x016956 05:A946: 81        .byte $81   ; 
- D 1 - I - 0x016957 05:A947: 62        .byte $62   ; 
- D 1 - I - 0x016958 05:A948: 02        .byte $02   ; 
- D 1 - I - 0x016959 05:A949: 00        .byte $00   ; 
- D 1 - I - 0x01695A 05:A94A: 81        .byte $81   ; 
- D 1 - I - 0x01695B 05:A94B: 59        .byte $59   ; 
- D 1 - I - 0x01695C 05:A94C: 06        .byte $06   ; 
- D 1 - I - 0x01695D 05:A94D: 00        .byte $00   ; 
- D 1 - I - 0x01695E 05:A94E: 87        .byte $87   ; 
- D 1 - I - 0x01695F 05:A94F: 63        .byte $63   ; 
- D 1 - I - 0x016960 05:A950: 64        .byte $64   ; 
- D 1 - I - 0x016961 05:A951: 65        .byte $65   ; 
- D 1 - I - 0x016962 05:A952: 66        .byte $66   ; 
- D 1 - I - 0x016963 05:A953: 67        .byte $67   ; 
- D 1 - I - 0x016964 05:A954: 68        .byte $68   ; 
- D 1 - I - 0x016965 05:A955: 69        .byte $69   ; 
- D 1 - I - 0x016966 05:A956: 02        .byte $02   ; 
- D 1 - I - 0x016967 05:A957: 00        .byte $00   ; 
- D 1 - I - 0x016968 05:A958: 82        .byte $82   ; 
- D 1 - I - 0x016969 05:A959: 5F        .byte $5F   ; 
- D 1 - I - 0x01696A 05:A95A: 60        .byte $60   ; 
- D 1 - I - 0x01696B 05:A95B: 02        .byte $02   ; 
- D 1 - I - 0x01696C 05:A95C: 00        .byte $00   ; 
- D 1 - I - 0x01696D 05:A95D: 81        .byte $81   ; 
- D 1 - I - 0x01696E 05:A95E: 6A        .byte $6A   ; 
- D 1 - I - 0x01696F 05:A95F: 08        .byte $08   ; 
- D 1 - I - 0x016970 05:A960: 00        .byte $00   ; 
- D 1 - I - 0x016971 05:A961: 81        .byte $81   ; 
- D 1 - I - 0x016972 05:A962: 62        .byte $62   ; 
- D 1 - I - 0x016973 05:A963: 02        .byte $02   ; 
- D 1 - I - 0x016974 05:A964: 00        .byte $00   ; 
- D 1 - I - 0x016975 05:A965: 81        .byte $81   ; 
- D 1 - I - 0x016976 05:A966: 59        .byte $59   ; 
- D 1 - I - 0x016977 05:A967: 06        .byte $06   ; 
- D 1 - I - 0x016978 05:A968: 00        .byte $00   ; 
- D 1 - I - 0x016979 05:A969: 89        .byte $89   ; 
- D 1 - I - 0x01697A 05:A96A: 6B        .byte $6B   ; 
- D 1 - I - 0x01697B 05:A96B: 6C        .byte $6C   ; 
- D 1 - I - 0x01697C 05:A96C: 6D        .byte $6D   ; 
- D 1 - I - 0x01697D 05:A96D: 6E        .byte $6E   ; 
- D 1 - I - 0x01697E 05:A96E: 6F        .byte $6F   ; 
- D 1 - I - 0x01697F 05:A96F: 70        .byte $70   ; 
- D 1 - I - 0x016980 05:A970: 71        .byte $71   ; 
- D 1 - I - 0x016981 05:A971: 72        .byte $72   ; 
- D 1 - I - 0x016982 05:A972: 73        .byte $73   ; 
- D 1 - I - 0x016983 05:A973: 0D        .byte $0D   ; 
- D 1 - I - 0x016984 05:A974: 00        .byte $00   ; 
- D 1 - I - 0x016985 05:A975: 81        .byte $81   ; 
- D 1 - I - 0x016986 05:A976: 62        .byte $62   ; 
- D 1 - I - 0x016987 05:A977: 02        .byte $02   ; 
- D 1 - I - 0x016988 05:A978: 00        .byte $00   ; 
- D 1 - I - 0x016989 05:A979: 81        .byte $81   ; 
- D 1 - I - 0x01698A 05:A97A: 74        .byte $74   ; 
- D 1 - I - 0x01698B 05:A97B: 06        .byte $06   ; 
- D 1 - I - 0x01698C 05:A97C: 00        .byte $00   ; 
- D 1 - I - 0x01698D 05:A97D: 8B        .byte $8B   ; 
- D 1 - I - 0x01698E 05:A97E: 75        .byte $75   ; 
- D 1 - I - 0x01698F 05:A97F: 76        .byte $76   ; 
- D 1 - I - 0x016990 05:A980: 77        .byte $77   ; 
- D 1 - I - 0x016991 05:A981: 78        .byte $78   ; 
- D 1 - I - 0x016992 05:A982: 79        .byte $79   ; 
- D 1 - I - 0x016993 05:A983: 7A        .byte $7A   ; 
- D 1 - I - 0x016994 05:A984: 7B        .byte $7B   ; 
- D 1 - I - 0x016995 05:A985: 7C        .byte $7C   ; 
- D 1 - I - 0x016996 05:A986: 7D        .byte $7D   ; 
- D 1 - I - 0x016997 05:A987: 7E        .byte $7E   ; 
- D 1 - I - 0x016998 05:A988: 7F        .byte $7F   ; 
- D 1 - I - 0x016999 05:A989: 02        .byte $02   ; 
- D 1 - I - 0x01699A 05:A98A: 00        .byte $00   ; 
- D 1 - I - 0x01699B 05:A98B: 81        .byte $81   ; 
- D 1 - I - 0x01699C 05:A98C: 80        .byte $80   ; 
- D 1 - I - 0x01699D 05:A98D: 08        .byte $08   ; 
- D 1 - I - 0x01699E 05:A98E: 00        .byte $00   ; 
- D 1 - I - 0x01699F 05:A98F: 84        .byte $84   ; 
- D 1 - I - 0x0169A0 05:A990: 81        .byte $81   ; 
- D 1 - I - 0x0169A1 05:A991: 00        .byte $00   ; 
- D 1 - I - 0x0169A2 05:A992: 82        .byte $82   ; 
- D 1 - I - 0x0169A3 05:A993: 83        .byte $83   ; 
- D 1 - I - 0x0169A4 05:A994: 07        .byte $07   ; 
- D 1 - I - 0x0169A5 05:A995: 00        .byte $00   ; 
- D 1 - I - 0x0169A6 05:A996: 8D        .byte $8D   ; 
- D 1 - I - 0x0169A7 05:A997: 84        .byte $84   ; 
- D 1 - I - 0x0169A8 05:A998: 85        .byte $85   ; 
- D 1 - I - 0x0169A9 05:A999: 86        .byte $86   ; 
- D 1 - I - 0x0169AA 05:A99A: 87        .byte $87   ; 
- D 1 - I - 0x0169AB 05:A99B: 88        .byte $88   ; 
- D 1 - I - 0x0169AC 05:A99C: 89        .byte $89   ; 
- D 1 - I - 0x0169AD 05:A99D: 8A        .byte $8A   ; 
- D 1 - I - 0x0169AE 05:A99E: 8B        .byte $8B   ; 
- D 1 - I - 0x0169AF 05:A99F: 8C        .byte $8C   ; 
- D 1 - I - 0x0169B0 05:A9A0: 8D        .byte $8D   ; 
- D 1 - I - 0x0169B1 05:A9A1: 8E        .byte $8E   ; 
- D 1 - I - 0x0169B2 05:A9A2: 8F        .byte $8F   ; 
- D 1 - I - 0x0169B3 05:A9A3: 90        .byte $90   ; 
- D 1 - I - 0x0169B4 05:A9A4: 08        .byte $08   ; 
- D 1 - I - 0x0169B5 05:A9A5: 00        .byte $00   ; 
- D 1 - I - 0x0169B6 05:A9A6: 84        .byte $84   ; 
- D 1 - I - 0x0169B7 05:A9A7: 91        .byte $91   ; 
- D 1 - I - 0x0169B8 05:A9A8: 92        .byte $92   ; 
- D 1 - I - 0x0169B9 05:A9A9: 93        .byte $93   ; 
- D 1 - I - 0x0169BA 05:A9AA: 94        .byte $94   ; 
- D 1 - I - 0x0169BB 05:A9AB: 06        .byte $06   ; 
- D 1 - I - 0x0169BC 05:A9AC: 00        .byte $00   ; 
- D 1 - I - 0x0169BD 05:A9AD: 8E        .byte $8E   ; 
- D 1 - I - 0x0169BE 05:A9AE: 95        .byte $95   ; 
- D 1 - I - 0x0169BF 05:A9AF: 96        .byte $96   ; 
- D 1 - I - 0x0169C0 05:A9B0: 97        .byte $97   ; 
- D 1 - I - 0x0169C1 05:A9B1: 98        .byte $98   ; 
- D 1 - I - 0x0169C2 05:A9B2: 99        .byte $99   ; 
- D 1 - I - 0x0169C3 05:A9B3: 9A        .byte $9A   ; 
- D 1 - I - 0x0169C4 05:A9B4: 9B        .byte $9B   ; 
- D 1 - I - 0x0169C5 05:A9B5: 9C        .byte $9C   ; 
- D 1 - I - 0x0169C6 05:A9B6: 9D        .byte $9D   ; 
- D 1 - I - 0x0169C7 05:A9B7: 9E        .byte $9E   ; 
- D 1 - I - 0x0169C8 05:A9B8: 9F        .byte $9F   ; 
- D 1 - I - 0x0169C9 05:A9B9: A0        .byte $A0   ; 
- D 1 - I - 0x0169CA 05:A9BA: A1        .byte $A1   ; 
- D 1 - I - 0x0169CB 05:A9BB: A2        .byte $A2   ; 
- D 1 - I - 0x0169CC 05:A9BC: 08        .byte $08   ; 
- D 1 - I - 0x0169CD 05:A9BD: 00        .byte $00   ; 
- D 1 - I - 0x0169CE 05:A9BE: 84        .byte $84   ; 
- D 1 - I - 0x0169CF 05:A9BF: A3        .byte $A3   ; 
- D 1 - I - 0x0169D0 05:A9C0: A4        .byte $A4   ; 
- D 1 - I - 0x0169D1 05:A9C1: 00        .byte $00   ; 
- D 1 - I - 0x0169D2 05:A9C2: A5        .byte $A5   ; 
- D 1 - I - 0x0169D3 05:A9C3: 06        .byte $06   ; 
- D 1 - I - 0x0169D4 05:A9C4: 00        .byte $00   ; 
- D 1 - I - 0x0169D5 05:A9C5: 8E        .byte $8E   ; 
- D 1 - I - 0x0169D6 05:A9C6: A6        .byte $A6   ; 
- D 1 - I - 0x0169D7 05:A9C7: A7        .byte $A7   ; 
- D 1 - I - 0x0169D8 05:A9C8: A8        .byte $A8   ; 
- D 1 - I - 0x0169D9 05:A9C9: A9        .byte $A9   ; 
- D 1 - I - 0x0169DA 05:A9CA: AA        .byte $AA   ; 
- D 1 - I - 0x0169DB 05:A9CB: AB        .byte $AB   ; 
- D 1 - I - 0x0169DC 05:A9CC: AC        .byte $AC   ; 
- D 1 - I - 0x0169DD 05:A9CD: AD        .byte $AD   ; 
- D 1 - I - 0x0169DE 05:A9CE: AE        .byte $AE   ; 
- D 1 - I - 0x0169DF 05:A9CF: AF        .byte $AF   ; 
- D 1 - I - 0x0169E0 05:A9D0: B0        .byte $B0   ; 
- D 1 - I - 0x0169E1 05:A9D1: B1        .byte $B1   ; 
- D 1 - I - 0x0169E2 05:A9D2: B2        .byte $B2   ; 
- D 1 - I - 0x0169E3 05:A9D3: B3        .byte $B3   ; 
- D 1 - I - 0x0169E4 05:A9D4: 08        .byte $08   ; 
- D 1 - I - 0x0169E5 05:A9D5: 00        .byte $00   ; 
- D 1 - I - 0x0169E6 05:A9D6: 81        .byte $81   ; 
- D 1 - I - 0x0169E7 05:A9D7: B4        .byte $B4   ; 
- D 1 - I - 0x0169E8 05:A9D8: 02        .byte $02   ; 
- D 1 - I - 0x0169E9 05:A9D9: 00        .byte $00   ; 
- D 1 - I - 0x0169EA 05:A9DA: 81        .byte $81   ; 
- D 1 - I - 0x0169EB 05:A9DB: 59        .byte $59   ; 
- D 1 - I - 0x0169EC 05:A9DC: 07        .byte $07   ; 
- D 1 - I - 0x0169ED 05:A9DD: 00        .byte $00   ; 
- D 1 - I - 0x0169EE 05:A9DE: 8D        .byte $8D   ; 
- D 1 - I - 0x0169EF 05:A9DF: B5        .byte $B5   ; 
- D 1 - I - 0x0169F0 05:A9E0: B6        .byte $B6   ; 
- D 1 - I - 0x0169F1 05:A9E1: B7        .byte $B7   ; 
- D 1 - I - 0x0169F2 05:A9E2: B8        .byte $B8   ; 
- D 1 - I - 0x0169F3 05:A9E3: B9        .byte $B9   ; 
- D 1 - I - 0x0169F4 05:A9E4: BA        .byte $BA   ; 
- D 1 - I - 0x0169F5 05:A9E5: BB        .byte $BB   ; 
- D 1 - I - 0x0169F6 05:A9E6: BC        .byte $BC   ; 
- D 1 - I - 0x0169F7 05:A9E7: BD        .byte $BD   ; 
- D 1 - I - 0x0169F8 05:A9E8: BE        .byte $BE   ; 
- D 1 - I - 0x0169F9 05:A9E9: BF        .byte $BF   ; 
- D 1 - I - 0x0169FA 05:A9EA: C0        .byte $C0   ; 
- D 1 - I - 0x0169FB 05:A9EB: C1        .byte $C1   ; 
- D 1 - I - 0x0169FC 05:A9EC: 08        .byte $08   ; 
- D 1 - I - 0x0169FD 05:A9ED: 00        .byte $00   ; 
- D 1 - I - 0x0169FE 05:A9EE: 81        .byte $81   ; 
- D 1 - I - 0x0169FF 05:A9EF: 62        .byte $62   ; 
- D 1 - I - 0x016A00 05:A9F0: 02        .byte $02   ; 
- D 1 - I - 0x016A01 05:A9F1: 00        .byte $00   ; 
- D 1 - I - 0x016A02 05:A9F2: 81        .byte $81   ; 
- D 1 - I - 0x016A03 05:A9F3: 59        .byte $59   ; 
- D 1 - I - 0x016A04 05:A9F4: 1C        .byte $1C   ; 
- D 1 - I - 0x016A05 05:A9F5: 00        .byte $00   ; 
- D 1 - I - 0x016A06 05:A9F6: 81        .byte $81   ; 
- D 1 - I - 0x016A07 05:A9F7: 62        .byte $62   ; 
- D 1 - I - 0x016A08 05:A9F8: 02        .byte $02   ; 
- D 1 - I - 0x016A09 05:A9F9: 00        .byte $00   ; 
- D 1 - I - 0x016A0A 05:A9FA: 81        .byte $81   ; 
- D 1 - I - 0x016A0B 05:A9FB: 59        .byte $59   ; 
- D 1 - I - 0x016A0C 05:A9FC: 1C        .byte $1C   ; 
- D 1 - I - 0x016A0D 05:A9FD: 00        .byte $00   ; 
- D 1 - I - 0x016A0E 05:A9FE: 81        .byte $81   ; 
- D 1 - I - 0x016A0F 05:A9FF: 62        .byte $62   ; 
- D 1 - I - 0x016A10 05:AA00: 02        .byte $02   ; 
- D 1 - I - 0x016A11 05:AA01: 00        .byte $00   ; 
- D 1 - I - 0x016A12 05:AA02: 81        .byte $81   ; 
- D 1 - I - 0x016A13 05:AA03: C2        .byte $C2   ; 
- D 1 - I - 0x016A14 05:AA04: 1C        .byte $1C   ; 
- D 1 - I - 0x016A15 05:AA05: 00        .byte $00   ; 
- D 1 - I - 0x016A16 05:AA06: 81        .byte $81   ; 
- D 1 - I - 0x016A17 05:AA07: C3        .byte $C3   ; 
- D 1 - I - 0x016A18 05:AA08: 02        .byte $02   ; 
- D 1 - I - 0x016A19 05:AA09: 00        .byte $00   ; 
- D 1 - I - 0x016A1A 05:AA0A: 81        .byte $81   ; 
- D 1 - I - 0x016A1B 05:AA0B: C4        .byte $C4   ; 
- D 1 - I - 0x016A1C 05:AA0C: 1C        .byte $1C   ; 
- D 1 - I - 0x016A1D 05:AA0D: 00        .byte $00   ; 
- D 1 - I - 0x016A1E 05:AA0E: 81        .byte $81   ; 
- D 1 - I - 0x016A1F 05:AA0F: C5        .byte $C5   ; 
- D 1 - I - 0x016A20 05:AA10: 02        .byte $02   ; 
- D 1 - I - 0x016A21 05:AA11: 00        .byte $00   ; 
- D 1 - I - 0x016A22 05:AA12: 84        .byte $84   ; 
- D 1 - I - 0x016A23 05:AA13: C6        .byte $C6   ; 
- D 1 - I - 0x016A24 05:AA14: C7        .byte $C7   ; 
- D 1 - I - 0x016A25 05:AA15: C8        .byte $C8   ; 
- D 1 - I - 0x016A26 05:AA16: C9        .byte $C9   ; 
- D 1 - I - 0x016A27 05:AA17: 03        .byte $03   ; 
- D 1 - I - 0x016A28 05:AA18: CA        .byte $CA   ; 
- D 1 - I - 0x016A29 05:AA19: 90        .byte $90   ; 
- D 1 - I - 0x016A2A 05:AA1A: CB        .byte $CB   ; 
- D 1 - I - 0x016A2B 05:AA1B: CC        .byte $CC   ; 
- D 1 - I - 0x016A2C 05:AA1C: CD        .byte $CD   ; 
- D 1 - I - 0x016A2D 05:AA1D: CE        .byte $CE   ; 
- D 1 - I - 0x016A2E 05:AA1E: CF        .byte $CF   ; 
- D 1 - I - 0x016A2F 05:AA1F: D0        .byte $D0   ; 
- D 1 - I - 0x016A30 05:AA20: D1        .byte $D1   ; 
- D 1 - I - 0x016A31 05:AA21: D2        .byte $D2   ; 
- D 1 - I - 0x016A32 05:AA22: D3        .byte $D3   ; 
- D 1 - I - 0x016A33 05:AA23: D4        .byte $D4   ; 
- D 1 - I - 0x016A34 05:AA24: D5        .byte $D5   ; 
- D 1 - I - 0x016A35 05:AA25: D6        .byte $D6   ; 
- D 1 - I - 0x016A36 05:AA26: D7        .byte $D7   ; 
- D 1 - I - 0x016A37 05:AA27: D8        .byte $D8   ; 
- D 1 - I - 0x016A38 05:AA28: D9        .byte $D9   ; 
- D 1 - I - 0x016A39 05:AA29: DA        .byte $DA   ; 
- D 1 - I - 0x016A3A 05:AA2A: 03        .byte $03   ; 
- D 1 - I - 0x016A3B 05:AA2B: DB        .byte $DB   ; 
- D 1 - I - 0x016A3C 05:AA2C: 84        .byte $84   ; 
- D 1 - I - 0x016A3D 05:AA2D: DC        .byte $DC   ; 
- D 1 - I - 0x016A3E 05:AA2E: DD        .byte $DD   ; 
- D 1 - I - 0x016A3F 05:AA2F: DE        .byte $DE   ; 
- D 1 - I - 0x016A40 05:AA30: DF        .byte $DF   ; 
- D 1 - I - 0x016A41 05:AA31: 0B        .byte $0B   ; 
- D 1 - I - 0x016A42 05:AA32: 00        .byte $00   ; 
- D 1 - I - 0x016A43 05:AA33: 81        .byte $81   ; 
- D 1 - I - 0x016A44 05:AA34: E0        .byte $E0   ; 
- D 1 - I - 0x016A45 05:AA35: 02        .byte $02   ; 
- D 1 - I - 0x016A46 05:AA36: E1        .byte $E1   ; 
- D 1 - I - 0x016A47 05:AA37: 86        .byte $86   ; 
- D 1 - I - 0x016A48 05:AA38: E2        .byte $E2   ; 
- D 1 - I - 0x016A49 05:AA39: E3        .byte $E3   ; 
- D 1 - I - 0x016A4A 05:AA3A: E4        .byte $E4   ; 
- D 1 - I - 0x016A4B 05:AA3B: E5        .byte $E5   ; 
- D 1 - I - 0x016A4C 05:AA3C: E6        .byte $E6   ; 
- D 1 - I - 0x016A4D 05:AA3D: E7        .byte $E7   ; 
- D 1 - I - 0x016A4E 05:AA3E: 02        .byte $02   ; 
- D 1 - I - 0x016A4F 05:AA3F: E1        .byte $E1   ; 
- D 1 - I - 0x016A50 05:AA40: 81        .byte $81   ; 
- D 1 - I - 0x016A51 05:AA41: E8        .byte $E8   ; 
- D 1 - I - 0x016A52 05:AA42: 7F        .byte $7F   ; 
- D 1 - I - 0x016A53 05:AA43: 00        .byte $00   ; 
- D 1 - I - 0x016A54 05:AA44: FF        .byte $FF   ; end token


; bzk garbage
- - - - - - 0x016A55 05:AA45: FF        .byte $FF   ; 



_off008_AA46_07:
- D 1 - I - 0x016A56 05:AA46: 40        .byte $40   ; 
- D 1 - I - 0x016A57 05:AA47: 01        .byte $01   ; 
- D 1 - I - 0x016A58 05:AA48: 81        .byte $81   ; 
- D 1 - I - 0x016A59 05:AA49: 02        .byte $02   ; 
- D 1 - I - 0x016A5A 05:AA4A: 02        .byte $02   ; 
- D 1 - I - 0x016A5B 05:AA4B: 01        .byte $01   ; 
- D 1 - I - 0x016A5C 05:AA4C: 89        .byte $89   ; 
- D 1 - I - 0x016A5D 05:AA4D: 03        .byte $03   ; 
- D 1 - I - 0x016A5E 05:AA4E: 04        .byte $04   ; 
- D 1 - I - 0x016A5F 05:AA4F: 05        .byte $05   ; 
- D 1 - I - 0x016A60 05:AA50: 06        .byte $06   ; 
- D 1 - I - 0x016A61 05:AA51: 07        .byte $07   ; 
- D 1 - I - 0x016A62 05:AA52: 08        .byte $08   ; 
- D 1 - I - 0x016A63 05:AA53: 01        .byte $01   ; 
- D 1 - I - 0x016A64 05:AA54: 09        .byte $09   ; 
- D 1 - I - 0x016A65 05:AA55: 0A        .byte $0A   ; 
- D 1 - I - 0x016A66 05:AA56: 14        .byte $14   ; 
- D 1 - I - 0x016A67 05:AA57: 01        .byte $01   ; 
- D 1 - I - 0x016A68 05:AA58: 81        .byte $81   ; 
- D 1 - I - 0x016A69 05:AA59: 0B        .byte $0B   ; 
- D 1 - I - 0x016A6A 05:AA5A: 02        .byte $02   ; 
- D 1 - I - 0x016A6B 05:AA5B: 01        .byte $01   ; 
- D 1 - I - 0x016A6C 05:AA5C: 81        .byte $81   ; 
- D 1 - I - 0x016A6D 05:AA5D: 0C        .byte $0C   ; 
- D 1 - I - 0x016A6E 05:AA5E: 03        .byte $03   ; 
- D 1 - I - 0x016A6F 05:AA5F: 0D        .byte $0D   ; 
- D 1 - I - 0x016A70 05:AA60: 88        .byte $88   ; 
- D 1 - I - 0x016A71 05:AA61: 0E        .byte $0E   ; 
- D 1 - I - 0x016A72 05:AA62: 0F        .byte $0F   ; 
- D 1 - I - 0x016A73 05:AA63: 10        .byte $10   ; 
- D 1 - I - 0x016A74 05:AA64: 11        .byte $11   ; 
- D 1 - I - 0x016A75 05:AA65: 12        .byte $12   ; 
- D 1 - I - 0x016A76 05:AA66: 13        .byte $13   ; 
- D 1 - I - 0x016A77 05:AA67: 14        .byte $14   ; 
- D 1 - I - 0x016A78 05:AA68: 15        .byte $15   ; 
- D 1 - I - 0x016A79 05:AA69: 08        .byte $08   ; 
- D 1 - I - 0x016A7A 05:AA6A: 01        .byte $01   ; 
- D 1 - I - 0x016A7B 05:AA6B: 82        .byte $82   ; 
- D 1 - I - 0x016A7C 05:AA6C: 16        .byte $16   ; 
- D 1 - I - 0x016A7D 05:AA6D: 17        .byte $17   ; 
- D 1 - I - 0x016A7E 05:AA6E: 07        .byte $07   ; 
- D 1 - I - 0x016A7F 05:AA6F: 01        .byte $01   ; 
- D 1 - I - 0x016A80 05:AA70: 84        .byte $84   ; 
- D 1 - I - 0x016A81 05:AA71: 18        .byte $18   ; 
- D 1 - I - 0x016A82 05:AA72: 19        .byte $19   ; 
- D 1 - I - 0x016A83 05:AA73: 01        .byte $01   ; 
- D 1 - I - 0x016A84 05:AA74: 1A        .byte $1A   ; 
- D 1 - I - 0x016A85 05:AA75: 03        .byte $03   ; 
- D 1 - I - 0x016A86 05:AA76: 0D        .byte $0D   ; 
- D 1 - I - 0x016A87 05:AA77: 88        .byte $88   ; 
- D 1 - I - 0x016A88 05:AA78: 1B        .byte $1B   ; 
- D 1 - I - 0x016A89 05:AA79: 1C        .byte $1C   ; 
- D 1 - I - 0x016A8A 05:AA7A: 00        .byte $00   ; 
- D 1 - I - 0x016A8B 05:AA7B: 1D        .byte $1D   ; 
- D 1 - I - 0x016A8C 05:AA7C: 1E        .byte $1E   ; 
- D 1 - I - 0x016A8D 05:AA7D: 1F        .byte $1F   ; 
- D 1 - I - 0x016A8E 05:AA7E: 20        .byte $20   ; 
- D 1 - I - 0x016A8F 05:AA7F: 21        .byte $21   ; 
- D 1 - I - 0x016A90 05:AA80: 07        .byte $07   ; 
- D 1 - I - 0x016A91 05:AA81: 01        .byte $01   ; 
- D 1 - I - 0x016A92 05:AA82: 83        .byte $83   ; 
- D 1 - I - 0x016A93 05:AA83: 22        .byte $22   ; 
- D 1 - I - 0x016A94 05:AA84: 23        .byte $23   ; 
- D 1 - I - 0x016A95 05:AA85: 24        .byte $24   ; 
- D 1 - I - 0x016A96 05:AA86: 07        .byte $07   ; 
- D 1 - I - 0x016A97 05:AA87: 01        .byte $01   ; 
- D 1 - I - 0x016A98 05:AA88: 90        .byte $90   ; 
- D 1 - I - 0x016A99 05:AA89: 25        .byte $25   ; 
- D 1 - I - 0x016A9A 05:AA8A: 26        .byte $26   ; 
- D 1 - I - 0x016A9B 05:AA8B: 27        .byte $27   ; 
- D 1 - I - 0x016A9C 05:AA8C: 28        .byte $28   ; 
- D 1 - I - 0x016A9D 05:AA8D: 29        .byte $29   ; 
- D 1 - I - 0x016A9E 05:AA8E: 2A        .byte $2A   ; 
- D 1 - I - 0x016A9F 05:AA8F: 2B        .byte $2B   ; 
- D 1 - I - 0x016AA0 05:AA90: 2C        .byte $2C   ; 
- D 1 - I - 0x016AA1 05:AA91: 2D        .byte $2D   ; 
- D 1 - I - 0x016AA2 05:AA92: 00        .byte $00   ; 
- D 1 - I - 0x016AA3 05:AA93: 2E        .byte $2E   ; 
- D 1 - I - 0x016AA4 05:AA94: 2F        .byte $2F   ; 
- D 1 - I - 0x016AA5 05:AA95: 30        .byte $30   ; 
- D 1 - I - 0x016AA6 05:AA96: 31        .byte $31   ; 
- D 1 - I - 0x016AA7 05:AA97: 32        .byte $32   ; 
- D 1 - I - 0x016AA8 05:AA98: 33        .byte $33   ; 
- D 1 - I - 0x016AA9 05:AA99: 05        .byte $05   ; 
- D 1 - I - 0x016AAA 05:AA9A: 01        .byte $01   ; 
- D 1 - I - 0x016AAB 05:AA9B: 84        .byte $84   ; 
- D 1 - I - 0x016AAC 05:AA9C: 34        .byte $34   ; 
- D 1 - I - 0x016AAD 05:AA9D: 35        .byte $35   ; 
- D 1 - I - 0x016AAE 05:AA9E: 36        .byte $36   ; 
- D 1 - I - 0x016AAF 05:AA9F: 24        .byte $24   ; 
- D 1 - I - 0x016AB0 05:AAA0: 07        .byte $07   ; 
- D 1 - I - 0x016AB1 05:AAA1: 01        .byte $01   ; 
- D 1 - I - 0x016AB2 05:AAA2: 85        .byte $85   ; 
- D 1 - I - 0x016AB3 05:AAA3: 37        .byte $37   ; 
- D 1 - I - 0x016AB4 05:AAA4: 38        .byte $38   ; 
- D 1 - I - 0x016AB5 05:AAA5: 39        .byte $39   ; 
- D 1 - I - 0x016AB6 05:AAA6: 00        .byte $00   ; 
- D 1 - I - 0x016AB7 05:AAA7: 3A        .byte $3A   ; 
- D 1 - I - 0x016AB8 05:AAA8: 02        .byte $02   ; 
- D 1 - I - 0x016AB9 05:AAA9: 00        .byte $00   ; 
- D 1 - I - 0x016ABA 05:AAAA: 85        .byte $85   ; 
- D 1 - I - 0x016ABB 05:AAAB: 3B        .byte $3B   ; 
- D 1 - I - 0x016ABC 05:AAAC: 00        .byte $00   ; 
- D 1 - I - 0x016ABD 05:AAAD: 3A        .byte $3A   ; 
- D 1 - I - 0x016ABE 05:AAAE: 00        .byte $00   ; 
- D 1 - I - 0x016ABF 05:AAAF: 3B        .byte $3B   ; 
- D 1 - I - 0x016AC0 05:AAB0: 02        .byte $02   ; 
- D 1 - I - 0x016AC1 05:AAB1: 00        .byte $00   ; 
- D 1 - I - 0x016AC2 05:AAB2: 85        .byte $85   ; 
- D 1 - I - 0x016AC3 05:AAB3: 3C        .byte $3C   ; 
- D 1 - I - 0x016AC4 05:AAB4: 00        .byte $00   ; 
- D 1 - I - 0x016AC5 05:AAB5: 3D        .byte $3D   ; 
- D 1 - I - 0x016AC6 05:AAB6: 3E        .byte $3E   ; 
- D 1 - I - 0x016AC7 05:AAB7: 3F        .byte $3F   ; 
- D 1 - I - 0x016AC8 05:AAB8: 02        .byte $02   ; 
- D 1 - I - 0x016AC9 05:AAB9: 01        .byte $01   ; 
- D 1 - I - 0x016ACA 05:AABA: 85        .byte $85   ; 
- D 1 - I - 0x016ACB 05:AABB: 40        .byte $40   ; 
- D 1 - I - 0x016ACC 05:AABC: 41        .byte $41   ; 
- D 1 - I - 0x016ACD 05:AABD: 36        .byte $36   ; 
- D 1 - I - 0x016ACE 05:AABE: 42        .byte $42   ; 
- D 1 - I - 0x016ACF 05:AABF: 43        .byte $43   ; 
- D 1 - I - 0x016AD0 05:AAC0: 06        .byte $06   ; 
- D 1 - I - 0x016AD1 05:AAC1: 01        .byte $01   ; 
- D 1 - I - 0x016AD2 05:AAC2: 90        .byte $90   ; 
- D 1 - I - 0x016AD3 05:AAC3: 44        .byte $44   ; 
- D 1 - I - 0x016AD4 05:AAC4: 00        .byte $00   ; 
- D 1 - I - 0x016AD5 05:AAC5: 45        .byte $45   ; 
- D 1 - I - 0x016AD6 05:AAC6: 46        .byte $46   ; 
- D 1 - I - 0x016AD7 05:AAC7: 00        .byte $00   ; 
- D 1 - I - 0x016AD8 05:AAC8: 3A        .byte $3A   ; 
- D 1 - I - 0x016AD9 05:AAC9: 47        .byte $47   ; 
- D 1 - I - 0x016ADA 05:AACA: 48        .byte $48   ; 
- D 1 - I - 0x016ADB 05:AACB: 49        .byte $49   ; 
- D 1 - I - 0x016ADC 05:AACC: 4A        .byte $4A   ; 
- D 1 - I - 0x016ADD 05:AACD: 47        .byte $47   ; 
- D 1 - I - 0x016ADE 05:AACE: 48        .byte $48   ; 
- D 1 - I - 0x016ADF 05:AACF: 00        .byte $00   ; 
- D 1 - I - 0x016AE0 05:AAD0: 3A        .byte $3A   ; 
- D 1 - I - 0x016AE1 05:AAD1: 4B        .byte $4B   ; 
- D 1 - I - 0x016AE2 05:AAD2: 4C        .byte $4C   ; 
- D 1 - I - 0x016AE3 05:AAD3: 03        .byte $03   ; 
- D 1 - I - 0x016AE4 05:AAD4: 00        .byte $00   ; 
- D 1 - I - 0x016AE5 05:AAD5: 87        .byte $87   ; 
- D 1 - I - 0x016AE6 05:AAD6: 4D        .byte $4D   ; 
- D 1 - I - 0x016AE7 05:AAD7: 4E        .byte $4E   ; 
- D 1 - I - 0x016AE8 05:AAD8: 4F        .byte $4F   ; 
- D 1 - I - 0x016AE9 05:AAD9: 41        .byte $41   ; 
- D 1 - I - 0x016AEA 05:AADA: 36        .byte $36   ; 
- D 1 - I - 0x016AEB 05:AADB: 50        .byte $50   ; 
- D 1 - I - 0x016AEC 05:AADC: 51        .byte $51   ; 
- D 1 - I - 0x016AED 05:AADD: 04        .byte $04   ; 
- D 1 - I - 0x016AEE 05:AADE: 01        .byte $01   ; 
- D 1 - I - 0x016AEF 05:AADF: 96        .byte $96   ; 
- D 1 - I - 0x016AF0 05:AAE0: 52        .byte $52   ; 
- D 1 - I - 0x016AF1 05:AAE1: 53        .byte $53   ; 
- D 1 - I - 0x016AF2 05:AAE2: 54        .byte $54   ; 
- D 1 - I - 0x016AF3 05:AAE3: 55        .byte $55   ; 
- D 1 - I - 0x016AF4 05:AAE4: 56        .byte $56   ; 
- D 1 - I - 0x016AF5 05:AAE5: 00        .byte $00   ; 
- D 1 - I - 0x016AF6 05:AAE6: 57        .byte $57   ; 
- D 1 - I - 0x016AF7 05:AAE7: 58        .byte $58   ; 
- D 1 - I - 0x016AF8 05:AAE8: 59        .byte $59   ; 
- D 1 - I - 0x016AF9 05:AAE9: 5A        .byte $5A   ; 
- D 1 - I - 0x016AFA 05:AAEA: 5B        .byte $5B   ; 
- D 1 - I - 0x016AFB 05:AAEB: 5C        .byte $5C   ; 
- D 1 - I - 0x016AFC 05:AAEC: 5D        .byte $5D   ; 
- D 1 - I - 0x016AFD 05:AAED: 5E        .byte $5E   ; 
- D 1 - I - 0x016AFE 05:AAEE: 5F        .byte $5F   ; 
- D 1 - I - 0x016AFF 05:AAEF: 60        .byte $60   ; 
- D 1 - I - 0x016B00 05:AAF0: 61        .byte $61   ; 
- D 1 - I - 0x016B01 05:AAF1: 62        .byte $62   ; 
- D 1 - I - 0x016B02 05:AAF2: 49        .byte $49   ; 
- D 1 - I - 0x016B03 05:AAF3: 4A        .byte $4A   ; 
- D 1 - I - 0x016B04 05:AAF4: 00        .byte $00   ; 
- D 1 - I - 0x016B05 05:AAF5: 63        .byte $63   ; 
- D 1 - I - 0x016B06 05:AAF6: 02        .byte $02   ; 
- D 1 - I - 0x016B07 05:AAF7: 00        .byte $00   ; 
- D 1 - I - 0x016B08 05:AAF8: 84        .byte $84   ; 
- D 1 - I - 0x016B09 05:AAF9: 41        .byte $41   ; 
- D 1 - I - 0x016B0A 05:AAFA: 64        .byte $64   ; 
- D 1 - I - 0x016B0B 05:AAFB: 50        .byte $50   ; 
- D 1 - I - 0x016B0C 05:AAFC: 51        .byte $51   ; 
- D 1 - I - 0x016B0D 05:AAFD: 03        .byte $03   ; 
- D 1 - I - 0x016B0E 05:AAFE: 43        .byte $43   ; 
- D 1 - I - 0x016B0F 05:AAFF: B3        .byte $B3   ; 
- D 1 - I - 0x016B10 05:AB00: 65        .byte $65   ; 
- D 1 - I - 0x016B11 05:AB01: 66        .byte $66   ; 
- D 1 - I - 0x016B12 05:AB02: 67        .byte $67   ; 
- D 1 - I - 0x016B13 05:AB03: 00        .byte $00   ; 
- D 1 - I - 0x016B14 05:AB04: 68        .byte $68   ; 
- D 1 - I - 0x016B15 05:AB05: 00        .byte $00   ; 
- D 1 - I - 0x016B16 05:AB06: 69        .byte $69   ; 
- D 1 - I - 0x016B17 05:AB07: 6A        .byte $6A   ; 
- D 1 - I - 0x016B18 05:AB08: 00        .byte $00   ; 
- D 1 - I - 0x016B19 05:AB09: 6B        .byte $6B   ; 
- D 1 - I - 0x016B1A 05:AB0A: 6C        .byte $6C   ; 
- D 1 - I - 0x016B1B 05:AB0B: 6D        .byte $6D   ; 
- D 1 - I - 0x016B1C 05:AB0C: 6E        .byte $6E   ; 
- D 1 - I - 0x016B1D 05:AB0D: 6F        .byte $6F   ; 
- D 1 - I - 0x016B1E 05:AB0E: 70        .byte $70   ; 
- D 1 - I - 0x016B1F 05:AB0F: 71        .byte $71   ; 
- D 1 - I - 0x016B20 05:AB10: 72        .byte $72   ; 
- D 1 - I - 0x016B21 05:AB11: 73        .byte $73   ; 
- D 1 - I - 0x016B22 05:AB12: 74        .byte $74   ; 
- D 1 - I - 0x016B23 05:AB13: 00        .byte $00   ; 
- D 1 - I - 0x016B24 05:AB14: 3A        .byte $3A   ; 
- D 1 - I - 0x016B25 05:AB15: 00        .byte $00   ; 
- D 1 - I - 0x016B26 05:AB16: 75        .byte $75   ; 
- D 1 - I - 0x016B27 05:AB17: 76        .byte $76   ; 
- D 1 - I - 0x016B28 05:AB18: 77        .byte $77   ; 
- D 1 - I - 0x016B29 05:AB19: 78        .byte $78   ; 
- D 1 - I - 0x016B2A 05:AB1A: 79        .byte $79   ; 
- D 1 - I - 0x016B2B 05:AB1B: 50        .byte $50   ; 
- D 1 - I - 0x016B2C 05:AB1C: 51        .byte $51   ; 
- D 1 - I - 0x016B2D 05:AB1D: 7A        .byte $7A   ; 
- D 1 - I - 0x016B2E 05:AB1E: 7B        .byte $7B   ; 
- D 1 - I - 0x016B2F 05:AB1F: 7C        .byte $7C   ; 
- D 1 - I - 0x016B30 05:AB20: 7D        .byte $7D   ; 
- D 1 - I - 0x016B31 05:AB21: 7E        .byte $7E   ; 
- D 1 - I - 0x016B32 05:AB22: 7F        .byte $7F   ; 
- D 1 - I - 0x016B33 05:AB23: 80        .byte $80   ; 
- D 1 - I - 0x016B34 05:AB24: 81        .byte $81   ; 
- D 1 - I - 0x016B35 05:AB25: 82        .byte $82   ; 
- D 1 - I - 0x016B36 05:AB26: 83        .byte $83   ; 
- D 1 - I - 0x016B37 05:AB27: 84        .byte $84   ; 
- D 1 - I - 0x016B38 05:AB28: 85        .byte $85   ; 
- D 1 - I - 0x016B39 05:AB29: 86        .byte $86   ; 
- D 1 - I - 0x016B3A 05:AB2A: 87        .byte $87   ; 
- D 1 - I - 0x016B3B 05:AB2B: 88        .byte $88   ; 
- D 1 - I - 0x016B3C 05:AB2C: 89        .byte $89   ; 
- D 1 - I - 0x016B3D 05:AB2D: 8A        .byte $8A   ; 
- D 1 - I - 0x016B3E 05:AB2E: 8B        .byte $8B   ; 
- D 1 - I - 0x016B3F 05:AB2F: 8C        .byte $8C   ; 
- D 1 - I - 0x016B40 05:AB30: 8D        .byte $8D   ; 
- D 1 - I - 0x016B41 05:AB31: 8E        .byte $8E   ; 
- D 1 - I - 0x016B42 05:AB32: 8F        .byte $8F   ; 
- D 1 - I - 0x016B43 05:AB33: 02        .byte $02   ; 
- D 1 - I - 0x016B44 05:AB34: 00        .byte $00   ; 
- D 1 - I - 0x016B45 05:AB35: 84        .byte $84   ; 
- D 1 - I - 0x016B46 05:AB36: 90        .byte $90   ; 
- D 1 - I - 0x016B47 05:AB37: 91        .byte $91   ; 
- D 1 - I - 0x016B48 05:AB38: 92        .byte $92   ; 
- D 1 - I - 0x016B49 05:AB39: 93        .byte $93   ; 
- D 1 - I - 0x016B4A 05:AB3A: 02        .byte $02   ; 
- D 1 - I - 0x016B4B 05:AB3B: 00        .byte $00   ; 
- D 1 - I - 0x016B4C 05:AB3C: 98        .byte $98   ; 
- D 1 - I - 0x016B4D 05:AB3D: 94        .byte $94   ; 
- D 1 - I - 0x016B4E 05:AB3E: 95        .byte $95   ; 
- D 1 - I - 0x016B4F 05:AB3F: 96        .byte $96   ; 
- D 1 - I - 0x016B50 05:AB40: 00        .byte $00   ; 
- D 1 - I - 0x016B51 05:AB41: 97        .byte $97   ; 
- D 1 - I - 0x016B52 05:AB42: 98        .byte $98   ; 
- D 1 - I - 0x016B53 05:AB43: 99        .byte $99   ; 
- D 1 - I - 0x016B54 05:AB44: 9A        .byte $9A   ; 
- D 1 - I - 0x016B55 05:AB45: 00        .byte $00   ; 
- D 1 - I - 0x016B56 05:AB46: 9B        .byte $9B   ; 
- D 1 - I - 0x016B57 05:AB47: 9C        .byte $9C   ; 
- D 1 - I - 0x016B58 05:AB48: 9D        .byte $9D   ; 
- D 1 - I - 0x016B59 05:AB49: 9E        .byte $9E   ; 
- D 1 - I - 0x016B5A 05:AB4A: 9F        .byte $9F   ; 
- D 1 - I - 0x016B5B 05:AB4B: A0        .byte $A0   ; 
- D 1 - I - 0x016B5C 05:AB4C: A1        .byte $A1   ; 
- D 1 - I - 0x016B5D 05:AB4D: A2        .byte $A2   ; 
- D 1 - I - 0x016B5E 05:AB4E: A3        .byte $A3   ; 
- D 1 - I - 0x016B5F 05:AB4F: A4        .byte $A4   ; 
- D 1 - I - 0x016B60 05:AB50: A5        .byte $A5   ; 
- D 1 - I - 0x016B61 05:AB51: A6        .byte $A6   ; 
- D 1 - I - 0x016B62 05:AB52: A7        .byte $A7   ; 
- D 1 - I - 0x016B63 05:AB53: A8        .byte $A8   ; 
- D 1 - I - 0x016B64 05:AB54: A9        .byte $A9   ; 
- D 1 - I - 0x016B65 05:AB55: 02        .byte $02   ; 
- D 1 - I - 0x016B66 05:AB56: 00        .byte $00   ; 
- D 1 - I - 0x016B67 05:AB57: DF        .byte $DF   ; 
- D 1 - I - 0x016B68 05:AB58: AA        .byte $AA   ; 
- D 1 - I - 0x016B69 05:AB59: AB        .byte $AB   ; 
- D 1 - I - 0x016B6A 05:AB5A: AC        .byte $AC   ; 
- D 1 - I - 0x016B6B 05:AB5B: AD        .byte $AD   ; 
- D 1 - I - 0x016B6C 05:AB5C: AE        .byte $AE   ; 
- D 1 - I - 0x016B6D 05:AB5D: AF        .byte $AF   ; 
- D 1 - I - 0x016B6E 05:AB5E: B0        .byte $B0   ; 
- D 1 - I - 0x016B6F 05:AB5F: B1        .byte $B1   ; 
- D 1 - I - 0x016B70 05:AB60: B2        .byte $B2   ; 
- D 1 - I - 0x016B71 05:AB61: B3        .byte $B3   ; 
- D 1 - I - 0x016B72 05:AB62: B4        .byte $B4   ; 
- D 1 - I - 0x016B73 05:AB63: B5        .byte $B5   ; 
- D 1 - I - 0x016B74 05:AB64: B6        .byte $B6   ; 
- D 1 - I - 0x016B75 05:AB65: B7        .byte $B7   ; 
- D 1 - I - 0x016B76 05:AB66: B8        .byte $B8   ; 
- D 1 - I - 0x016B77 05:AB67: B9        .byte $B9   ; 
- D 1 - I - 0x016B78 05:AB68: BA        .byte $BA   ; 
- D 1 - I - 0x016B79 05:AB69: BB        .byte $BB   ; 
- D 1 - I - 0x016B7A 05:AB6A: BC        .byte $BC   ; 
- D 1 - I - 0x016B7B 05:AB6B: BD        .byte $BD   ; 
- D 1 - I - 0x016B7C 05:AB6C: BE        .byte $BE   ; 
- D 1 - I - 0x016B7D 05:AB6D: BF        .byte $BF   ; 
- D 1 - I - 0x016B7E 05:AB6E: C0        .byte $C0   ; 
- D 1 - I - 0x016B7F 05:AB6F: C1        .byte $C1   ; 
- D 1 - I - 0x016B80 05:AB70: C2        .byte $C2   ; 
- D 1 - I - 0x016B81 05:AB71: C3        .byte $C3   ; 
- D 1 - I - 0x016B82 05:AB72: C4        .byte $C4   ; 
- D 1 - I - 0x016B83 05:AB73: C5        .byte $C5   ; 
- D 1 - I - 0x016B84 05:AB74: C6        .byte $C6   ; 
- D 1 - I - 0x016B85 05:AB75: C7        .byte $C7   ; 
- D 1 - I - 0x016B86 05:AB76: C8        .byte $C8   ; 
- D 1 - I - 0x016B87 05:AB77: C9        .byte $C9   ; 
- D 1 - I - 0x016B88 05:AB78: CA        .byte $CA   ; 
- D 1 - I - 0x016B89 05:AB79: CB        .byte $CB   ; 
- D 1 - I - 0x016B8A 05:AB7A: CC        .byte $CC   ; 
- D 1 - I - 0x016B8B 05:AB7B: CD        .byte $CD   ; 
- D 1 - I - 0x016B8C 05:AB7C: CE        .byte $CE   ; 
- D 1 - I - 0x016B8D 05:AB7D: CF        .byte $CF   ; 
- D 1 - I - 0x016B8E 05:AB7E: D0        .byte $D0   ; 
- D 1 - I - 0x016B8F 05:AB7F: D1        .byte $D1   ; 
- D 1 - I - 0x016B90 05:AB80: D2        .byte $D2   ; 
- D 1 - I - 0x016B91 05:AB81: D3        .byte $D3   ; 
- D 1 - I - 0x016B92 05:AB82: D4        .byte $D4   ; 
- D 1 - I - 0x016B93 05:AB83: D5        .byte $D5   ; 
- D 1 - I - 0x016B94 05:AB84: D6        .byte $D6   ; 
- D 1 - I - 0x016B95 05:AB85: D7        .byte $D7   ; 
- D 1 - I - 0x016B96 05:AB86: D8        .byte $D8   ; 
- D 1 - I - 0x016B97 05:AB87: D9        .byte $D9   ; 
- D 1 - I - 0x016B98 05:AB88: DA        .byte $DA   ; 
- D 1 - I - 0x016B99 05:AB89: DB        .byte $DB   ; 
- D 1 - I - 0x016B9A 05:AB8A: DC        .byte $DC   ; 
- D 1 - I - 0x016B9B 05:AB8B: DD        .byte $DD   ; 
- D 1 - I - 0x016B9C 05:AB8C: DE        .byte $DE   ; 
- D 1 - I - 0x016B9D 05:AB8D: DF        .byte $DF   ; 
- D 1 - I - 0x016B9E 05:AB8E: E0        .byte $E0   ; 
- D 1 - I - 0x016B9F 05:AB8F: E1        .byte $E1   ; 
- D 1 - I - 0x016BA0 05:AB90: E2        .byte $E2   ; 
- D 1 - I - 0x016BA1 05:AB91: E3        .byte $E3   ; 
- D 1 - I - 0x016BA2 05:AB92: E4        .byte $E4   ; 
- D 1 - I - 0x016BA3 05:AB93: E5        .byte $E5   ; 
- D 1 - I - 0x016BA4 05:AB94: E6        .byte $E6   ; 
- D 1 - I - 0x016BA5 05:AB95: E7        .byte $E7   ; 
- D 1 - I - 0x016BA6 05:AB96: E8        .byte $E8   ; 
- D 1 - I - 0x016BA7 05:AB97: E9        .byte $E9   ; 
- D 1 - I - 0x016BA8 05:AB98: EA        .byte $EA   ; 
- D 1 - I - 0x016BA9 05:AB99: EB        .byte $EB   ; 
- D 1 - I - 0x016BAA 05:AB9A: EC        .byte $EC   ; 
- D 1 - I - 0x016BAB 05:AB9B: 00        .byte $00   ; 
- D 1 - I - 0x016BAC 05:AB9C: ED        .byte $ED   ; 
- D 1 - I - 0x016BAD 05:AB9D: EE        .byte $EE   ; 
- D 1 - I - 0x016BAE 05:AB9E: EF        .byte $EF   ; 
- D 1 - I - 0x016BAF 05:AB9F: F0        .byte $F0   ; 
- D 1 - I - 0x016BB0 05:ABA0: F1        .byte $F1   ; 
- D 1 - I - 0x016BB1 05:ABA1: F2        .byte $F2   ; 
- D 1 - I - 0x016BB2 05:ABA2: F3        .byte $F3   ; 
- D 1 - I - 0x016BB3 05:ABA3: F4        .byte $F4   ; 
- D 1 - I - 0x016BB4 05:ABA4: F5        .byte $F5   ; 
- D 1 - I - 0x016BB5 05:ABA5: F6        .byte $F6   ; 
- D 1 - I - 0x016BB6 05:ABA6: 01        .byte $01   ; 
- D 1 - I - 0x016BB7 05:ABA7: 02        .byte $02   ; 
- D 1 - I - 0x016BB8 05:ABA8: 03        .byte $03   ; 
- D 1 - I - 0x016BB9 05:ABA9: 04        .byte $04   ; 
- D 1 - I - 0x016BBA 05:ABAA: 05        .byte $05   ; 
- D 1 - I - 0x016BBB 05:ABAB: 06        .byte $06   ; 
- D 1 - I - 0x016BBC 05:ABAC: 07        .byte $07   ; 
- D 1 - I - 0x016BBD 05:ABAD: 08        .byte $08   ; 
- D 1 - I - 0x016BBE 05:ABAE: 09        .byte $09   ; 
- D 1 - I - 0x016BBF 05:ABAF: 06        .byte $06   ; 
- D 1 - I - 0x016BC0 05:ABB0: 0A        .byte $0A   ; 
- D 1 - I - 0x016BC1 05:ABB1: 0B        .byte $0B   ; 
- D 1 - I - 0x016BC2 05:ABB2: 0C        .byte $0C   ; 
- D 1 - I - 0x016BC3 05:ABB3: 0D        .byte $0D   ; 
- D 1 - I - 0x016BC4 05:ABB4: 06        .byte $06   ; 
- D 1 - I - 0x016BC5 05:ABB5: 0E        .byte $0E   ; 
- D 1 - I - 0x016BC6 05:ABB6: 0F        .byte $0F   ; 
- D 1 - I - 0x016BC7 05:ABB7: 03        .byte $03   ; 
- D 1 - I - 0x016BC8 05:ABB8: 00        .byte $00   ; 
- D 1 - I - 0x016BC9 05:ABB9: 8F        .byte $8F   ; 
- D 1 - I - 0x016BCA 05:ABBA: 10        .byte $10   ; 
- D 1 - I - 0x016BCB 05:ABBB: 11        .byte $11   ; 
- D 1 - I - 0x016BCC 05:ABBC: 12        .byte $12   ; 
- D 1 - I - 0x016BCD 05:ABBD: 13        .byte $13   ; 
- D 1 - I - 0x016BCE 05:ABBE: 14        .byte $14   ; 
- D 1 - I - 0x016BCF 05:ABBF: 15        .byte $15   ; 
- D 1 - I - 0x016BD0 05:ABC0: 16        .byte $16   ; 
- D 1 - I - 0x016BD1 05:ABC1: 17        .byte $17   ; 
- D 1 - I - 0x016BD2 05:ABC2: 18        .byte $18   ; 
- D 1 - I - 0x016BD3 05:ABC3: 19        .byte $19   ; 
- D 1 - I - 0x016BD4 05:ABC4: 1A        .byte $1A   ; 
- D 1 - I - 0x016BD5 05:ABC5: 1B        .byte $1B   ; 
- D 1 - I - 0x016BD6 05:ABC6: 1C        .byte $1C   ; 
- D 1 - I - 0x016BD7 05:ABC7: 1D        .byte $1D   ; 
- D 1 - I - 0x016BD8 05:ABC8: 1E        .byte $1E   ; 
- D 1 - I - 0x016BD9 05:ABC9: 04        .byte $04   ; 
- D 1 - I - 0x016BDA 05:ABCA: 06        .byte $06   ; 
- D 1 - I - 0x016BDB 05:ABCB: 81        .byte $81   ; 
- D 1 - I - 0x016BDC 05:ABCC: 1F        .byte $1F   ; 
- D 1 - I - 0x016BDD 05:ABCD: 06        .byte $06   ; 
- D 1 - I - 0x016BDE 05:ABCE: 06        .byte $06   ; 
- D 1 - I - 0x016BDF 05:ABCF: 95        .byte $95   ; 
- D 1 - I - 0x016BE0 05:ABD0: 20        .byte $20   ; 
- D 1 - I - 0x016BE1 05:ABD1: 21        .byte $21   ; 
- D 1 - I - 0x016BE2 05:ABD2: 22        .byte $22   ; 
- D 1 - I - 0x016BE3 05:ABD3: 23        .byte $23   ; 
- D 1 - I - 0x016BE4 05:ABD4: 24        .byte $24   ; 
- D 1 - I - 0x016BE5 05:ABD5: 25        .byte $25   ; 
- D 1 - I - 0x016BE6 05:ABD6: 26        .byte $26   ; 
- D 1 - I - 0x016BE7 05:ABD7: 27        .byte $27   ; 
- D 1 - I - 0x016BE8 05:ABD8: 28        .byte $28   ; 
- D 1 - I - 0x016BE9 05:ABD9: 29        .byte $29   ; 
- D 1 - I - 0x016BEA 05:ABDA: 2A        .byte $2A   ; 
- D 1 - I - 0x016BEB 05:ABDB: 2B        .byte $2B   ; 
- D 1 - I - 0x016BEC 05:ABDC: 2C        .byte $2C   ; 
- D 1 - I - 0x016BED 05:ABDD: 00        .byte $00   ; 
- D 1 - I - 0x016BEE 05:ABDE: 2D        .byte $2D   ; 
- D 1 - I - 0x016BEF 05:ABDF: 2E        .byte $2E   ; 
- D 1 - I - 0x016BF0 05:ABE0: 2F        .byte $2F   ; 
- D 1 - I - 0x016BF1 05:ABE1: 30        .byte $30   ; 
- D 1 - I - 0x016BF2 05:ABE2: 31        .byte $31   ; 
- D 1 - I - 0x016BF3 05:ABE3: 32        .byte $32   ; 
- D 1 - I - 0x016BF4 05:ABE4: 33        .byte $33   ; 
- D 1 - I - 0x016BF5 05:ABE5: 0C        .byte $0C   ; 
- D 1 - I - 0x016BF6 05:ABE6: 06        .byte $06   ; 
- D 1 - I - 0x016BF7 05:ABE7: 8A        .byte $8A   ; 
- D 1 - I - 0x016BF8 05:ABE8: 34        .byte $34   ; 
- D 1 - I - 0x016BF9 05:ABE9: 35        .byte $35   ; 
- D 1 - I - 0x016BFA 05:ABEA: 36        .byte $36   ; 
- D 1 - I - 0x016BFB 05:ABEB: 37        .byte $37   ; 
- D 1 - I - 0x016BFC 05:ABEC: 38        .byte $38   ; 
- D 1 - I - 0x016BFD 05:ABED: 39        .byte $39   ; 
- D 1 - I - 0x016BFE 05:ABEE: 3A        .byte $3A   ; 
- D 1 - I - 0x016BFF 05:ABEF: 3B        .byte $3B   ; 
- D 1 - I - 0x016C00 05:ABF0: 3C        .byte $3C   ; 
- D 1 - I - 0x016C01 05:ABF1: 3D        .byte $3D   ; 
- D 1 - I - 0x016C02 05:ABF2: 05        .byte $05   ; 
- D 1 - I - 0x016C03 05:ABF3: 00        .byte $00   ; 
- D 1 - I - 0x016C04 05:ABF4: 86        .byte $86   ; 
- D 1 - I - 0x016C05 05:ABF5: 3E        .byte $3E   ; 
- D 1 - I - 0x016C06 05:ABF6: 3F        .byte $3F   ; 
- D 1 - I - 0x016C07 05:ABF7: 40        .byte $40   ; 
- D 1 - I - 0x016C08 05:ABF8: 41        .byte $41   ; 
- D 1 - I - 0x016C09 05:ABF9: 42        .byte $42   ; 
- D 1 - I - 0x016C0A 05:ABFA: 43        .byte $43   ; 
- D 1 - I - 0x016C0B 05:ABFB: 05        .byte $05   ; 
- D 1 - I - 0x016C0C 05:ABFC: 06        .byte $06   ; 
- D 1 - I - 0x016C0D 05:ABFD: 82        .byte $82   ; 
- D 1 - I - 0x016C0E 05:ABFE: 44        .byte $44   ; 
- D 1 - I - 0x016C0F 05:ABFF: 45        .byte $45   ; 
- D 1 - I - 0x016C10 05:AC00: 03        .byte $03   ; 
- D 1 - I - 0x016C11 05:AC01: 06        .byte $06   ; 
- D 1 - I - 0x016C12 05:AC02: 87        .byte $87   ; 
- D 1 - I - 0x016C13 05:AC03: 46        .byte $46   ; 
- D 1 - I - 0x016C14 05:AC04: 47        .byte $47   ; 
- D 1 - I - 0x016C15 05:AC05: 48        .byte $48   ; 
- D 1 - I - 0x016C16 05:AC06: 49        .byte $49   ; 
- D 1 - I - 0x016C17 05:AC07: 4A        .byte $4A   ; 
- D 1 - I - 0x016C18 05:AC08: 4B        .byte $4B   ; 
- D 1 - I - 0x016C19 05:AC09: 4C        .byte $4C   ; 
- D 1 - I - 0x016C1A 05:AC0A: 06        .byte $06   ; 
- D 1 - I - 0x016C1B 05:AC0B: 00        .byte $00   ; 
- D 1 - I - 0x016C1C 05:AC0C: 8D        .byte $8D   ; 
- D 1 - I - 0x016C1D 05:AC0D: 4D        .byte $4D   ; 
- D 1 - I - 0x016C1E 05:AC0E: 4E        .byte $4E   ; 
- D 1 - I - 0x016C1F 05:AC0F: 4F        .byte $4F   ; 
- D 1 - I - 0x016C20 05:AC10: 50        .byte $50   ; 
- D 1 - I - 0x016C21 05:AC11: 51        .byte $51   ; 
- D 1 - I - 0x016C22 05:AC12: 52        .byte $52   ; 
- D 1 - I - 0x016C23 05:AC13: 53        .byte $53   ; 
- D 1 - I - 0x016C24 05:AC14: 54        .byte $54   ; 
- D 1 - I - 0x016C25 05:AC15: 55        .byte $55   ; 
- D 1 - I - 0x016C26 05:AC16: 06        .byte $06   ; 
- D 1 - I - 0x016C27 05:AC17: 56        .byte $56   ; 
- D 1 - I - 0x016C28 05:AC18: 57        .byte $57   ; 
- D 1 - I - 0x016C29 05:AC19: 58        .byte $58   ; 
- D 1 - I - 0x016C2A 05:AC1A: 02        .byte $02   ; 
- D 1 - I - 0x016C2B 05:AC1B: 06        .byte $06   ; 
- D 1 - I - 0x016C2C 05:AC1C: AA        .byte $AA   ; 
- D 1 - I - 0x016C2D 05:AC1D: 59        .byte $59   ; 
- D 1 - I - 0x016C2E 05:AC1E: 5A        .byte $5A   ; 
- D 1 - I - 0x016C2F 05:AC1F: 06        .byte $06   ; 
- D 1 - I - 0x016C30 05:AC20: 5B        .byte $5B   ; 
- D 1 - I - 0x016C31 05:AC21: 5C        .byte $5C   ; 
- D 1 - I - 0x016C32 05:AC22: 5D        .byte $5D   ; 
- D 1 - I - 0x016C33 05:AC23: 5E        .byte $5E   ; 
- D 1 - I - 0x016C34 05:AC24: 5F        .byte $5F   ; 
- D 1 - I - 0x016C35 05:AC25: 60        .byte $60   ; 
- D 1 - I - 0x016C36 05:AC26: 61        .byte $61   ; 
- D 1 - I - 0x016C37 05:AC27: 62        .byte $62   ; 
- D 1 - I - 0x016C38 05:AC28: 63        .byte $63   ; 
- D 1 - I - 0x016C39 05:AC29: 64        .byte $64   ; 
- D 1 - I - 0x016C3A 05:AC2A: 65        .byte $65   ; 
- D 1 - I - 0x016C3B 05:AC2B: 66        .byte $66   ; 
- D 1 - I - 0x016C3C 05:AC2C: 67        .byte $67   ; 
- D 1 - I - 0x016C3D 05:AC2D: 68        .byte $68   ; 
- D 1 - I - 0x016C3E 05:AC2E: 69        .byte $69   ; 
- D 1 - I - 0x016C3F 05:AC2F: 6A        .byte $6A   ; 
- D 1 - I - 0x016C40 05:AC30: 6B        .byte $6B   ; 
- D 1 - I - 0x016C41 05:AC31: 6C        .byte $6C   ; 
- D 1 - I - 0x016C42 05:AC32: 6D        .byte $6D   ; 
- D 1 - I - 0x016C43 05:AC33: 6E        .byte $6E   ; 
- D 1 - I - 0x016C44 05:AC34: 6F        .byte $6F   ; 
- D 1 - I - 0x016C45 05:AC35: 70        .byte $70   ; 
- D 1 - I - 0x016C46 05:AC36: 71        .byte $71   ; 
- D 1 - I - 0x016C47 05:AC37: 72        .byte $72   ; 
- D 1 - I - 0x016C48 05:AC38: 73        .byte $73   ; 
- D 1 - I - 0x016C49 05:AC39: 74        .byte $74   ; 
- D 1 - I - 0x016C4A 05:AC3A: 75        .byte $75   ; 
- D 1 - I - 0x016C4B 05:AC3B: 76        .byte $76   ; 
- D 1 - I - 0x016C4C 05:AC3C: 77        .byte $77   ; 
- D 1 - I - 0x016C4D 05:AC3D: 78        .byte $78   ; 
- D 1 - I - 0x016C4E 05:AC3E: 79        .byte $79   ; 
- D 1 - I - 0x016C4F 05:AC3F: 7A        .byte $7A   ; 
- D 1 - I - 0x016C50 05:AC40: 7B        .byte $7B   ; 
- D 1 - I - 0x016C51 05:AC41: 7C        .byte $7C   ; 
- D 1 - I - 0x016C52 05:AC42: 7D        .byte $7D   ; 
- D 1 - I - 0x016C53 05:AC43: 7E        .byte $7E   ; 
- D 1 - I - 0x016C54 05:AC44: 7F        .byte $7F   ; 
- D 1 - I - 0x016C55 05:AC45: 00        .byte $00   ; 
- D 1 - I - 0x016C56 05:AC46: 80        .byte $80   ; 
- D 1 - I - 0x016C57 05:AC47: 05        .byte $05   ; 
- D 1 - I - 0x016C58 05:AC48: 00        .byte $00   ; 
- D 1 - I - 0x016C59 05:AC49: 82        .byte $82   ; 
- D 1 - I - 0x016C5A 05:AC4A: 81        .byte $81   ; 
- D 1 - I - 0x016C5B 05:AC4B: 82        .byte $82   ; 
- D 1 - I - 0x016C5C 05:AC4C: 03        .byte $03   ; 
- D 1 - I - 0x016C5D 05:AC4D: 00        .byte $00   ; 
- D 1 - I - 0x016C5E 05:AC4E: 96        .byte $96   ; 
- D 1 - I - 0x016C5F 05:AC4F: 83        .byte $83   ; 
- D 1 - I - 0x016C60 05:AC50: 84        .byte $84   ; 
- D 1 - I - 0x016C61 05:AC51: 85        .byte $85   ; 
- D 1 - I - 0x016C62 05:AC52: 86        .byte $86   ; 
- D 1 - I - 0x016C63 05:AC53: 87        .byte $87   ; 
- D 1 - I - 0x016C64 05:AC54: 88        .byte $88   ; 
- D 1 - I - 0x016C65 05:AC55: 89        .byte $89   ; 
- D 1 - I - 0x016C66 05:AC56: 8A        .byte $8A   ; 
- D 1 - I - 0x016C67 05:AC57: 8B        .byte $8B   ; 
- D 1 - I - 0x016C68 05:AC58: 8C        .byte $8C   ; 
- D 1 - I - 0x016C69 05:AC59: 8D        .byte $8D   ; 
- D 1 - I - 0x016C6A 05:AC5A: 8E        .byte $8E   ; 
- D 1 - I - 0x016C6B 05:AC5B: 8F        .byte $8F   ; 
- D 1 - I - 0x016C6C 05:AC5C: 90        .byte $90   ; 
- D 1 - I - 0x016C6D 05:AC5D: 91        .byte $91   ; 
- D 1 - I - 0x016C6E 05:AC5E: 92        .byte $92   ; 
- D 1 - I - 0x016C6F 05:AC5F: 93        .byte $93   ; 
- D 1 - I - 0x016C70 05:AC60: 00        .byte $00   ; 
- D 1 - I - 0x016C71 05:AC61: 94        .byte $94   ; 
- D 1 - I - 0x016C72 05:AC62: 95        .byte $95   ; 
- D 1 - I - 0x016C73 05:AC63: 96        .byte $96   ; 
- D 1 - I - 0x016C74 05:AC64: 97        .byte $97   ; 
- D 1 - I - 0x016C75 05:AC65: 09        .byte $09   ; 
- D 1 - I - 0x016C76 05:AC66: 00        .byte $00   ; 
- D 1 - I - 0x016C77 05:AC67: 97        .byte $97   ; 
- D 1 - I - 0x016C78 05:AC68: 98        .byte $98   ; 
- D 1 - I - 0x016C79 05:AC69: 99        .byte $99   ; 
- D 1 - I - 0x016C7A 05:AC6A: 9A        .byte $9A   ; 
- D 1 - I - 0x016C7B 05:AC6B: 9B        .byte $9B   ; 
- D 1 - I - 0x016C7C 05:AC6C: 9C        .byte $9C   ; 
- D 1 - I - 0x016C7D 05:AC6D: 9D        .byte $9D   ; 
- D 1 - I - 0x016C7E 05:AC6E: 9E        .byte $9E   ; 
- D 1 - I - 0x016C7F 05:AC6F: 9F        .byte $9F   ; 
- D 1 - I - 0x016C80 05:AC70: A0        .byte $A0   ; 
- D 1 - I - 0x016C81 05:AC71: A1        .byte $A1   ; 
- D 1 - I - 0x016C82 05:AC72: A2        .byte $A2   ; 
- D 1 - I - 0x016C83 05:AC73: A3        .byte $A3   ; 
- D 1 - I - 0x016C84 05:AC74: A4        .byte $A4   ; 
- D 1 - I - 0x016C85 05:AC75: A5        .byte $A5   ; 
- D 1 - I - 0x016C86 05:AC76: A6        .byte $A6   ; 
- D 1 - I - 0x016C87 05:AC77: A7        .byte $A7   ; 
- D 1 - I - 0x016C88 05:AC78: A8        .byte $A8   ; 
- D 1 - I - 0x016C89 05:AC79: 00        .byte $00   ; 
- D 1 - I - 0x016C8A 05:AC7A: A9        .byte $A9   ; 
- D 1 - I - 0x016C8B 05:AC7B: AA        .byte $AA   ; 
- D 1 - I - 0x016C8C 05:AC7C: AB        .byte $AB   ; 
- D 1 - I - 0x016C8D 05:AC7D: AC        .byte $AC   ; 
- D 1 - I - 0x016C8E 05:AC7E: AD        .byte $AD   ; 
- D 1 - I - 0x016C8F 05:AC7F: 06        .byte $06   ; 
- D 1 - I - 0x016C90 05:AC80: 00        .byte $00   ; 
- D 1 - I - 0x016C91 05:AC81: A5        .byte $A5   ; 
- D 1 - I - 0x016C92 05:AC82: AE        .byte $AE   ; 
- D 1 - I - 0x016C93 05:AC83: AF        .byte $AF   ; 
- D 1 - I - 0x016C94 05:AC84: B0        .byte $B0   ; 
- D 1 - I - 0x016C95 05:AC85: B1        .byte $B1   ; 
- D 1 - I - 0x016C96 05:AC86: B2        .byte $B2   ; 
- D 1 - I - 0x016C97 05:AC87: B3        .byte $B3   ; 
- D 1 - I - 0x016C98 05:AC88: B4        .byte $B4   ; 
- D 1 - I - 0x016C99 05:AC89: 00        .byte $00   ; 
- D 1 - I - 0x016C9A 05:AC8A: B5        .byte $B5   ; 
- D 1 - I - 0x016C9B 05:AC8B: B6        .byte $B6   ; 
- D 1 - I - 0x016C9C 05:AC8C: B7        .byte $B7   ; 
- D 1 - I - 0x016C9D 05:AC8D: B8        .byte $B8   ; 
- D 1 - I - 0x016C9E 05:AC8E: B9        .byte $B9   ; 
- D 1 - I - 0x016C9F 05:AC8F: BA        .byte $BA   ; 
- D 1 - I - 0x016CA0 05:AC90: BB        .byte $BB   ; 
- D 1 - I - 0x016CA1 05:AC91: BC        .byte $BC   ; 
- D 1 - I - 0x016CA2 05:AC92: BD        .byte $BD   ; 
- D 1 - I - 0x016CA3 05:AC93: BE        .byte $BE   ; 
- D 1 - I - 0x016CA4 05:AC94: BF        .byte $BF   ; 
- D 1 - I - 0x016CA5 05:AC95: C0        .byte $C0   ; 
- D 1 - I - 0x016CA6 05:AC96: C1        .byte $C1   ; 
- D 1 - I - 0x016CA7 05:AC97: 00        .byte $00   ; 
- D 1 - I - 0x016CA8 05:AC98: C2        .byte $C2   ; 
- D 1 - I - 0x016CA9 05:AC99: C3        .byte $C3   ; 
- D 1 - I - 0x016CAA 05:AC9A: C4        .byte $C4   ; 
- D 1 - I - 0x016CAB 05:AC9B: C5        .byte $C5   ; 
- D 1 - I - 0x016CAC 05:AC9C: C6        .byte $C6   ; 
- D 1 - I - 0x016CAD 05:AC9D: 00        .byte $00   ; 
- D 1 - I - 0x016CAE 05:AC9E: C7        .byte $C7   ; 
- D 1 - I - 0x016CAF 05:AC9F: C8        .byte $C8   ; 
- D 1 - I - 0x016CB0 05:ACA0: C9        .byte $C9   ; 
- D 1 - I - 0x016CB1 05:ACA1: CA        .byte $CA   ; 
- D 1 - I - 0x016CB2 05:ACA2: CB        .byte $CB   ; 
- D 1 - I - 0x016CB3 05:ACA3: CC        .byte $CC   ; 
- D 1 - I - 0x016CB4 05:ACA4: CD        .byte $CD   ; 
- D 1 - I - 0x016CB5 05:ACA5: CE        .byte $CE   ; 
- D 1 - I - 0x016CB6 05:ACA6: CF        .byte $CF   ; 
- D 1 - I - 0x016CB7 05:ACA7: 03        .byte $03   ; 
- D 1 - I - 0x016CB8 05:ACA8: 00        .byte $00   ; 
- D 1 - I - 0x016CB9 05:ACA9: 9E        .byte $9E   ; 
- D 1 - I - 0x016CBA 05:ACAA: 9B        .byte $9B   ; 
- D 1 - I - 0x016CBB 05:ACAB: D0        .byte $D0   ; 
- D 1 - I - 0x016CBC 05:ACAC: D1        .byte $D1   ; 
- D 1 - I - 0x016CBD 05:ACAD: D2        .byte $D2   ; 
- D 1 - I - 0x016CBE 05:ACAE: D3        .byte $D3   ; 
- D 1 - I - 0x016CBF 05:ACAF: D4        .byte $D4   ; 
- D 1 - I - 0x016CC0 05:ACB0: D5        .byte $D5   ; 
- D 1 - I - 0x016CC1 05:ACB1: D6        .byte $D6   ; 
- D 1 - I - 0x016CC2 05:ACB2: D7        .byte $D7   ; 
- D 1 - I - 0x016CC3 05:ACB3: D8        .byte $D8   ; 
- D 1 - I - 0x016CC4 05:ACB4: D9        .byte $D9   ; 
- D 1 - I - 0x016CC5 05:ACB5: DA        .byte $DA   ; 
- D 1 - I - 0x016CC6 05:ACB6: DB        .byte $DB   ; 
- D 1 - I - 0x016CC7 05:ACB7: 00        .byte $00   ; 
- D 1 - I - 0x016CC8 05:ACB8: DC        .byte $DC   ; 
- D 1 - I - 0x016CC9 05:ACB9: DD        .byte $DD   ; 
- D 1 - I - 0x016CCA 05:ACBA: DE        .byte $DE   ; 
- D 1 - I - 0x016CCB 05:ACBB: DF        .byte $DF   ; 
- D 1 - I - 0x016CCC 05:ACBC: E0        .byte $E0   ; 
- D 1 - I - 0x016CCD 05:ACBD: E1        .byte $E1   ; 
- D 1 - I - 0x016CCE 05:ACBE: E2        .byte $E2   ; 
- D 1 - I - 0x016CCF 05:ACBF: E3        .byte $E3   ; 
- D 1 - I - 0x016CD0 05:ACC0: E4        .byte $E4   ; 
- D 1 - I - 0x016CD1 05:ACC1: E5        .byte $E5   ; 
- D 1 - I - 0x016CD2 05:ACC2: E6        .byte $E6   ; 
- D 1 - I - 0x016CD3 05:ACC3: E7        .byte $E7   ; 
- D 1 - I - 0x016CD4 05:ACC4: E8        .byte $E8   ; 
- D 1 - I - 0x016CD5 05:ACC5: E9        .byte $E9   ; 
- D 1 - I - 0x016CD6 05:ACC6: EA        .byte $EA   ; 
- D 1 - I - 0x016CD7 05:ACC7: EB        .byte $EB   ; 
- D 1 - I - 0x016CD8 05:ACC8: 02        .byte $02   ; 
- D 1 - I - 0x016CD9 05:ACC9: 00        .byte $00   ; 
- D 1 - I - 0x016CDA 05:ACCA: 90        .byte $90   ; 
- D 1 - I - 0x016CDB 05:ACCB: B4        .byte $B4   ; 
- D 1 - I - 0x016CDC 05:ACCC: EC        .byte $EC   ; 
- D 1 - I - 0x016CDD 05:ACCD: ED        .byte $ED   ; 
- D 1 - I - 0x016CDE 05:ACCE: EE        .byte $EE   ; 
- D 1 - I - 0x016CDF 05:ACCF: ED        .byte $ED   ; 
- D 1 - I - 0x016CE0 05:ACD0: EE        .byte $EE   ; 
- D 1 - I - 0x016CE1 05:ACD1: 00        .byte $00   ; 
- D 1 - I - 0x016CE2 05:ACD2: EF        .byte $EF   ; 
- D 1 - I - 0x016CE3 05:ACD3: 00        .byte $00   ; 
- D 1 - I - 0x016CE4 05:ACD4: F0        .byte $F0   ; 
- D 1 - I - 0x016CE5 05:ACD5: F1        .byte $F1   ; 
- D 1 - I - 0x016CE6 05:ACD6: F2        .byte $F2   ; 
- D 1 - I - 0x016CE7 05:ACD7: F3        .byte $F3   ; 
- D 1 - I - 0x016CE8 05:ACD8: 00        .byte $00   ; 
- D 1 - I - 0x016CE9 05:ACD9: F4        .byte $F4   ; 
- D 1 - I - 0x016CEA 05:ACDA: F5        .byte $F5   ; 
- D 1 - I - 0x016CEB 05:ACDB: 02        .byte $02   ; 
- D 1 - I - 0x016CEC 05:ACDC: 00        .byte $00   ; 
- D 1 - I - 0x016CED 05:ACDD: 8C        .byte $8C   ; 
- D 1 - I - 0x016CEE 05:ACDE: F6        .byte $F6   ; 
- D 1 - I - 0x016CEF 05:ACDF: F7        .byte $F7   ; 
- D 1 - I - 0x016CF0 05:ACE0: F8        .byte $F8   ; 
- D 1 - I - 0x016CF1 05:ACE1: F9        .byte $F9   ; 
- D 1 - I - 0x016CF2 05:ACE2: FA        .byte $FA   ; 
- D 1 - I - 0x016CF3 05:ACE3: FB        .byte $FB   ; 
- D 1 - I - 0x016CF4 05:ACE4: FC        .byte $FC   ; 
- D 1 - I - 0x016CF5 05:ACE5: FD        .byte $FD   ; 
- D 1 - I - 0x016CF6 05:ACE6: FE        .byte $FE   ; 
- D 1 - I - 0x016CF7 05:ACE7: FE        .byte $FE   ; 
- D 1 - I - 0x016CF8 05:ACE8: FE        .byte $FE   ; 
- D 1 - I - 0x016CF9 05:ACE9: FE        .byte $FE   ; 
- D 1 - I - 0x016CFA 05:ACEA: 7F        .byte $7F   ; 
- D 1 - I - 0x016CFB 05:ACEB: 00        .byte $00   ; 
- D 1 - I - 0x016CFC 05:ACEC: 7F        .byte $7F   ; 
- D 1 - I - 0x016CFD 05:ACED: 00        .byte $00   ; 
- D 1 - I - 0x016CFE 05:ACEE: FF        .byte $FF   ; end token


; bzk garbage
- - - - - - 0x016CFF 05:ACEF: FF        .byte $FF   ; 



_off008_ACF0_03:
- D 1 - I - 0x016D00 05:ACF0: 7F        .byte $7F   ; 
- D 1 - I - 0x016D01 05:ACF1: 00        .byte $00   ; 
- D 1 - I - 0x016D02 05:ACF2: 28        .byte $28   ; 
- D 1 - I - 0x016D03 05:ACF3: 00        .byte $00   ; 
- D 1 - I - 0x016D04 05:ACF4: 81        .byte $81   ; 
- D 1 - I - 0x016D05 05:ACF5: 27        .byte $27   ; 
- D 1 - I - 0x016D06 05:ACF6: 07        .byte $07   ; 
- D 1 - I - 0x016D07 05:ACF7: 00        .byte $00   ; 
- D 1 - I - 0x016D08 05:ACF8: 82        .byte $82   ; 
- D 1 - I - 0x016D09 05:ACF9: 28        .byte $28   ; 
- D 1 - I - 0x016D0A 05:ACFA: 29        .byte $29   ; 
- D 1 - I - 0x016D0B 05:ACFB: 07        .byte $07   ; 
- D 1 - I - 0x016D0C 05:ACFC: 00        .byte $00   ; 
- D 1 - I - 0x016D0D 05:ACFD: 81        .byte $81   ; 
- D 1 - I - 0x016D0E 05:ACFE: 27        .byte $27   ; 
- D 1 - I - 0x016D0F 05:ACFF: 0E        .byte $0E   ; 
- D 1 - I - 0x016D10 05:AD00: 00        .byte $00   ; 
- D 1 - I - 0x016D11 05:AD01: 81        .byte $81   ; 
- D 1 - I - 0x016D12 05:AD02: 2A        .byte $2A   ; 
- D 1 - I - 0x016D13 05:AD03: 02        .byte $02   ; 
- D 1 - I - 0x016D14 05:AD04: 00        .byte $00   ; 
- D 1 - I - 0x016D15 05:AD05: 81        .byte $81   ; 
- D 1 - I - 0x016D16 05:AD06: 2B        .byte $2B   ; 
- D 1 - I - 0x016D17 05:AD07: 02        .byte $02   ; 
- D 1 - I - 0x016D18 05:AD08: 2C        .byte $2C   ; 
- D 1 - I - 0x016D19 05:AD09: 86        .byte $86   ; 
- D 1 - I - 0x016D1A 05:AD0A: 2D        .byte $2D   ; 
- D 1 - I - 0x016D1B 05:AD0B: 2E        .byte $2E   ; 
- D 1 - I - 0x016D1C 05:AD0C: 2F        .byte $2F   ; 
- D 1 - I - 0x016D1D 05:AD0D: 30        .byte $30   ; 
- D 1 - I - 0x016D1E 05:AD0E: 31        .byte $31   ; 
- D 1 - I - 0x016D1F 05:AD0F: 32        .byte $32   ; 
- D 1 - I - 0x016D20 05:AD10: 02        .byte $02   ; 
- D 1 - I - 0x016D21 05:AD11: 2C        .byte $2C   ; 
- D 1 - I - 0x016D22 05:AD12: 81        .byte $81   ; 
- D 1 - I - 0x016D23 05:AD13: 33        .byte $33   ; 
- D 1 - I - 0x016D24 05:AD14: 02        .byte $02   ; 
- D 1 - I - 0x016D25 05:AD15: 00        .byte $00   ; 
- D 1 - I - 0x016D26 05:AD16: 81        .byte $81   ; 
- D 1 - I - 0x016D27 05:AD17: 2A        .byte $2A   ; 
- D 1 - I - 0x016D28 05:AD18: 08        .byte $08   ; 
- D 1 - I - 0x016D29 05:AD19: 00        .byte $00   ; 
- D 1 - I - 0x016D2A 05:AD1A: 87        .byte $87   ; 
- D 1 - I - 0x016D2B 05:AD1B: 34        .byte $34   ; 
- D 1 - I - 0x016D2C 05:AD1C: 35        .byte $35   ; 
- D 1 - I - 0x016D2D 05:AD1D: 36        .byte $36   ; 
- D 1 - I - 0x016D2E 05:AD1E: 37        .byte $37   ; 
- D 1 - I - 0x016D2F 05:AD1F: 38        .byte $38   ; 
- D 1 - I - 0x016D30 05:AD20: 39        .byte $39   ; 
- D 1 - I - 0x016D31 05:AD21: 3A        .byte $3A   ; 
- D 1 - I - 0x016D32 05:AD22: 03        .byte $03   ; 
- D 1 - I - 0x016D33 05:AD23: 3B        .byte $3B   ; 
- D 1 - I - 0x016D34 05:AD24: 8A        .byte $8A   ; 
- D 1 - I - 0x016D35 05:AD25: 3C        .byte $3C   ; 
- D 1 - I - 0x016D36 05:AD26: 3D        .byte $3D   ; 
- D 1 - I - 0x016D37 05:AD27: 3E        .byte $3E   ; 
- D 1 - I - 0x016D38 05:AD28: 3F        .byte $3F   ; 
- D 1 - I - 0x016D39 05:AD29: 40        .byte $40   ; 
- D 1 - I - 0x016D3A 05:AD2A: 41        .byte $41   ; 
- D 1 - I - 0x016D3B 05:AD2B: 42        .byte $42   ; 
- D 1 - I - 0x016D3C 05:AD2C: 43        .byte $43   ; 
- D 1 - I - 0x016D3D 05:AD2D: 44        .byte $44   ; 
- D 1 - I - 0x016D3E 05:AD2E: 45        .byte $45   ; 
- D 1 - I - 0x016D3F 05:AD2F: 03        .byte $03   ; 
- D 1 - I - 0x016D40 05:AD30: 3B        .byte $3B   ; 
- D 1 - I - 0x016D41 05:AD31: 87        .byte $87   ; 
- D 1 - I - 0x016D42 05:AD32: 3A        .byte $3A   ; 
- D 1 - I - 0x016D43 05:AD33: 46        .byte $46   ; 
- D 1 - I - 0x016D44 05:AD34: 47        .byte $47   ; 
- D 1 - I - 0x016D45 05:AD35: 48        .byte $48   ; 
- D 1 - I - 0x016D46 05:AD36: 49        .byte $49   ; 
- D 1 - I - 0x016D47 05:AD37: 4A        .byte $4A   ; 
- D 1 - I - 0x016D48 05:AD38: 4B        .byte $4B   ; 
- D 1 - I - 0x016D49 05:AD39: 02        .byte $02   ; 
- D 1 - I - 0x016D4A 05:AD3A: 00        .byte $00   ; 
- D 1 - I - 0x016D4B 05:AD3B: 81        .byte $81   ; 
- D 1 - I - 0x016D4C 05:AD3C: 4C        .byte $4C   ; 
- D 1 - I - 0x016D4D 05:AD3D: 09        .byte $09   ; 
- D 1 - I - 0x016D4E 05:AD3E: 00        .byte $00   ; 
- D 1 - I - 0x016D4F 05:AD3F: 8A        .byte $8A   ; 
- D 1 - I - 0x016D50 05:AD40: 08        .byte $08   ; 
- D 1 - I - 0x016D51 05:AD41: 09        .byte $09   ; 
- D 1 - I - 0x016D52 05:AD42: 07        .byte $07   ; 
- D 1 - I - 0x016D53 05:AD43: 08        .byte $08   ; 
- D 1 - I - 0x016D54 05:AD44: 13        .byte $13   ; 
- D 1 - I - 0x016D55 05:AD45: 03        .byte $03   ; 
- D 1 - I - 0x016D56 05:AD46: 0F        .byte $0F   ; 
- D 1 - I - 0x016D57 05:AD47: 12        .byte $12   ; 
- D 1 - I - 0x016D58 05:AD48: 05        .byte $05   ; 
- D 1 - I - 0x016D59 05:AD49: 13        .byte $13   ; 
- D 1 - I - 0x016D5A 05:AD4A: 09        .byte $09   ; 
- D 1 - I - 0x016D5B 05:AD4B: 00        .byte $00   ; 
- D 1 - I - 0x016D5C 05:AD4C: 81        .byte $81   ; 
- D 1 - I - 0x016D5D 05:AD4D: 53        .byte $53   ; 
- D 1 - I - 0x016D5E 05:AD4E: 02        .byte $02   ; 
- D 1 - I - 0x016D5F 05:AD4F: 00        .byte $00   ; 
- D 1 - I - 0x016D60 05:AD50: 81        .byte $81   ; 
- D 1 - I - 0x016D61 05:AD51: 54        .byte $54   ; 
- D 1 - I - 0x016D62 05:AD52: 1C        .byte $1C   ; 
- D 1 - I - 0x016D63 05:AD53: 00        .byte $00   ; 
- D 1 - I - 0x016D64 05:AD54: 81        .byte $81   ; 
- D 1 - I - 0x016D65 05:AD55: 5B        .byte $5B   ; 
- D 1 - I - 0x016D66 05:AD56: 02        .byte $02   ; 
- D 1 - I - 0x016D67 05:AD57: 00        .byte $00   ; 
- D 1 - I - 0x016D68 05:AD58: 81        .byte $81   ; 
- D 1 - I - 0x016D69 05:AD59: 5C        .byte $5C   ; 
- D 1 - I - 0x016D6A 05:AD5A: 02        .byte $02   ; 
- D 1 - I - 0x016D6B 05:AD5B: 00        .byte $00   ; 
- D 1 - I - 0x016D6C 05:AD5C: 83        .byte $83   ; 
- D 1 - I - 0x016D6D 05:AD5D: 1B        .byte $1B   ; 
- D 1 - I - 0x016D6E 05:AD5E: 24        .byte $24   ; 
- D 1 - I - 0x016D6F 05:AD5F: 00        .byte $00   ; 
- D 1 - I - 0x016D70 05:AD60: 07        .byte $07   ; 
- D 1 - I - 0x016D71 05:AD61: 0F        .byte $0F   ; 
- D 1 - I - 0x016D72 05:AD62: 03        .byte $03   ; 
- D 1 - I - 0x016D73 05:AD63: 00        .byte $00   ; 
- D 1 - I - 0x016D74 05:AD64: 84        .byte $84   ; 
- D 1 - I - 0x016D75 05:AD65: 07        .byte $07   ; 
- D 1 - I - 0x016D76 05:AD66: 24        .byte $24   ; 
- D 1 - I - 0x016D77 05:AD67: 08        .byte $08   ; 
- D 1 - I - 0x016D78 05:AD68: 01        .byte $01   ; 
- D 1 - I - 0x016D79 05:AD69: 02        .byte $02   ; 
- D 1 - I - 0x016D7A 05:AD6A: 12        .byte $12   ; 
- D 1 - I - 0x016D7B 05:AD6B: 84        .byte $84   ; 
- D 1 - I - 0x016D7C 05:AD6C: 09        .byte $09   ; 
- D 1 - I - 0x016D7D 05:AD6D: 13        .byte $13   ; 
- D 1 - I - 0x016D7E 05:AD6E: 0F        .byte $0F   ; 
- D 1 - I - 0x016D7F 05:AD6F: 0E        .byte $0E   ; 
- D 1 - I - 0x016D80 05:AD70: 03        .byte $03   ; 
- D 1 - I - 0x016D81 05:AD71: 00        .byte $00   ; 
- D 1 - I - 0x016D82 05:AD72: 81        .byte $81   ; 
- D 1 - I - 0x016D83 05:AD73: 64        .byte $64   ; 
- D 1 - I - 0x016D84 05:AD74: 02        .byte $02   ; 
- D 1 - I - 0x016D85 05:AD75: 00        .byte $00   ; 
- D 1 - I - 0x016D86 05:AD76: 81        .byte $81   ; 
- D 1 - I - 0x016D87 05:AD77: 5C        .byte $5C   ; 
- D 1 - I - 0x016D88 05:AD78: 1C        .byte $1C   ; 
- D 1 - I - 0x016D89 05:AD79: 00        .byte $00   ; 
- D 1 - I - 0x016D8A 05:AD7A: 81        .byte $81   ; 
- D 1 - I - 0x016D8B 05:AD7B: 64        .byte $64   ; 
- D 1 - I - 0x016D8C 05:AD7C: 02        .byte $02   ; 
- D 1 - I - 0x016D8D 05:AD7D: 00        .byte $00   ; 
- D 1 - I - 0x016D8E 05:AD7E: 81        .byte $81   ; 
- D 1 - I - 0x016D8F 05:AD7F: 5C        .byte $5C   ; 
- D 1 - I - 0x016D90 05:AD80: 02        .byte $02   ; 
- D 1 - I - 0x016D91 05:AD81: 00        .byte $00   ; 
- D 1 - I - 0x016D92 05:AD82: 83        .byte $83   ; 
- D 1 - I - 0x016D93 05:AD83: 1C        .byte $1C   ; 
- D 1 - I - 0x016D94 05:AD84: 24        .byte $24   ; 
- D 1 - I - 0x016D95 05:AD85: 00        .byte $00   ; 
- D 1 - I - 0x016D96 05:AD86: 07        .byte $07   ; 
- D 1 - I - 0x016D97 05:AD87: 0F        .byte $0F   ; 
- D 1 - I - 0x016D98 05:AD88: 03        .byte $03   ; 
- D 1 - I - 0x016D99 05:AD89: 00        .byte $00   ; 
- D 1 - I - 0x016D9A 05:AD8A: 87        .byte $87   ; 
- D 1 - I - 0x016D9B 05:AD8B: 13        .byte $13   ; 
- D 1 - I - 0x016D9C 05:AD8C: 24        .byte $24   ; 
- D 1 - I - 0x016D9D 05:AD8D: 0E        .byte $0E   ; 
- D 1 - I - 0x016D9E 05:AD8E: 09        .byte $09   ; 
- D 1 - I - 0x016D9F 05:AD8F: 03        .byte $03   ; 
- D 1 - I - 0x016DA0 05:AD90: 0F        .byte $0F   ; 
- D 1 - I - 0x016DA1 05:AD91: 0C        .byte $0C   ; 
- D 1 - I - 0x016DA2 05:AD92: 06        .byte $06   ; 
- D 1 - I - 0x016DA3 05:AD93: 00        .byte $00   ; 
- D 1 - I - 0x016DA4 05:AD94: 81        .byte $81   ; 
- D 1 - I - 0x016DA5 05:AD95: 64        .byte $64   ; 
- D 1 - I - 0x016DA6 05:AD96: 02        .byte $02   ; 
- D 1 - I - 0x016DA7 05:AD97: 00        .byte $00   ; 
- D 1 - I - 0x016DA8 05:AD98: 81        .byte $81   ; 
- D 1 - I - 0x016DA9 05:AD99: 74        .byte $74   ; 
- D 1 - I - 0x016DAA 05:AD9A: 1C        .byte $1C   ; 
- D 1 - I - 0x016DAB 05:AD9B: 00        .byte $00   ; 
- D 1 - I - 0x016DAC 05:AD9C: 84        .byte $84   ; 
- D 1 - I - 0x016DAD 05:AD9D: 7B        .byte $7B   ; 
- D 1 - I - 0x016DAE 05:AD9E: 00        .byte $00   ; 
- D 1 - I - 0x016DAF 05:AD9F: 7C        .byte $7C   ; 
- D 1 - I - 0x016DB0 05:ADA0: 7D        .byte $7D   ; 
- D 1 - I - 0x016DB1 05:ADA1: 02        .byte $02   ; 
- D 1 - I - 0x016DB2 05:ADA2: 00        .byte $00   ; 
- D 1 - I - 0x016DB3 05:ADA3: 83        .byte $83   ; 
- D 1 - I - 0x016DB4 05:ADA4: 1D        .byte $1D   ; 
- D 1 - I - 0x016DB5 05:ADA5: 24        .byte $24   ; 
- D 1 - I - 0x016DB6 05:ADA6: 00        .byte $00   ; 
- D 1 - I - 0x016DB7 05:ADA7: 07        .byte $07   ; 
- D 1 - I - 0x016DB8 05:ADA8: 0F        .byte $0F   ; 
- D 1 - I - 0x016DB9 05:ADA9: 03        .byte $03   ; 
- D 1 - I - 0x016DBA 05:ADAA: 00        .byte $00   ; 
- D 1 - I - 0x016DBB 05:ADAB: 85        .byte $85   ; 
- D 1 - I - 0x016DBC 05:ADAC: 0A        .byte $0A   ; 
- D 1 - I - 0x016DBD 05:ADAD: 24        .byte $24   ; 
- D 1 - I - 0x016DBE 05:ADAE: 02        .byte $02   ; 
- D 1 - I - 0x016DBF 05:ADAF: 0C        .byte $0C   ; 
- D 1 - I - 0x016DC0 05:ADB0: 0F        .byte $0F   ; 
- D 1 - I - 0x016DC1 05:ADB1: 02        .byte $02   ; 
- D 1 - I - 0x016DC2 05:ADB2: 07        .byte $07   ; 
- D 1 - I - 0x016DC3 05:ADB3: 81        .byte $81   ; 
- D 1 - I - 0x016DC4 05:ADB4: 13        .byte $13   ; 
- D 1 - I - 0x016DC5 05:ADB5: 05        .byte $05   ; 
- D 1 - I - 0x016DC6 05:ADB6: 00        .byte $00   ; 
- D 1 - I - 0x016DC7 05:ADB7: 84        .byte $84   ; 
- D 1 - I - 0x016DC8 05:ADB8: 84        .byte $84   ; 
- D 1 - I - 0x016DC9 05:ADB9: 85        .byte $85   ; 
- D 1 - I - 0x016DCA 05:ADBA: 86        .byte $86   ; 
- D 1 - I - 0x016DCB 05:ADBB: 87        .byte $87   ; 
- D 1 - I - 0x016DCC 05:ADBC: 1C        .byte $1C   ; 
- D 1 - I - 0x016DCD 05:ADBD: 00        .byte $00   ; 
- D 1 - I - 0x016DCE 05:ADBE: 84        .byte $84   ; 
- D 1 - I - 0x016DCF 05:ADBF: 91        .byte $91   ; 
- D 1 - I - 0x016DD0 05:ADC0: 92        .byte $92   ; 
- D 1 - I - 0x016DD1 05:ADC1: 00        .byte $00   ; 
- D 1 - I - 0x016DD2 05:ADC2: 93        .byte $93   ; 
- D 1 - I - 0x016DD3 05:ADC3: 02        .byte $02   ; 
- D 1 - I - 0x016DD4 05:ADC4: 00        .byte $00   ; 
- D 1 - I - 0x016DD5 05:ADC5: 83        .byte $83   ; 
- D 1 - I - 0x016DD6 05:ADC6: 1E        .byte $1E   ; 
- D 1 - I - 0x016DD7 05:ADC7: 24        .byte $24   ; 
- D 1 - I - 0x016DD8 05:ADC8: 00        .byte $00   ; 
- D 1 - I - 0x016DD9 05:ADC9: 07        .byte $07   ; 
- D 1 - I - 0x016DDA 05:ADCA: 0F        .byte $0F   ; 
- D 1 - I - 0x016DDB 05:ADCB: 03        .byte $03   ; 
- D 1 - I - 0x016DDC 05:ADCC: 00        .byte $00   ; 
- D 1 - I - 0x016DDD 05:ADCD: 85        .byte $85   ; 
- D 1 - I - 0x016DDE 05:ADCE: 0A        .byte $0A   ; 
- D 1 - I - 0x016DDF 05:ADCF: 24        .byte $24   ; 
- D 1 - I - 0x016DE0 05:ADD0: 02        .byte $02   ; 
- D 1 - I - 0x016DE1 05:ADD1: 0C        .byte $0C   ; 
- D 1 - I - 0x016DE2 05:ADD2: 0F        .byte $0F   ; 
- D 1 - I - 0x016DE3 05:ADD3: 02        .byte $02   ; 
- D 1 - I - 0x016DE4 05:ADD4: 07        .byte $07   ; 
- D 1 - I - 0x016DE5 05:ADD5: 81        .byte $81   ; 
- D 1 - I - 0x016DE6 05:ADD6: 13        .byte $13   ; 
- D 1 - I - 0x016DE7 05:ADD7: 05        .byte $05   ; 
- D 1 - I - 0x016DE8 05:ADD8: 00        .byte $00   ; 
- D 1 - I - 0x016DE9 05:ADD9: 81        .byte $81   ; 
- D 1 - I - 0x016DEA 05:ADDA: A2        .byte $A2   ; 
- D 1 - I - 0x016DEB 05:ADDB: 02        .byte $02   ; 
- D 1 - I - 0x016DEC 05:ADDC: 00        .byte $00   ; 
- D 1 - I - 0x016DED 05:ADDD: 81        .byte $81   ; 
- D 1 - I - 0x016DEE 05:ADDE: 5C        .byte $5C   ; 
- D 1 - I - 0x016DEF 05:ADDF: 1C        .byte $1C   ; 
- D 1 - I - 0x016DF0 05:ADE0: 00        .byte $00   ; 
- D 1 - I - 0x016DF1 05:ADE1: 81        .byte $81   ; 
- D 1 - I - 0x016DF2 05:ADE2: 64        .byte $64   ; 
- D 1 - I - 0x016DF3 05:ADE3: 02        .byte $02   ; 
- D 1 - I - 0x016DF4 05:ADE4: 00        .byte $00   ; 
- D 1 - I - 0x016DF5 05:ADE5: 81        .byte $81   ; 
- D 1 - I - 0x016DF6 05:ADE6: 5C        .byte $5C   ; 
- D 1 - I - 0x016DF7 05:ADE7: 02        .byte $02   ; 
- D 1 - I - 0x016DF8 05:ADE8: 00        .byte $00   ; 
- D 1 - I - 0x016DF9 05:ADE9: 83        .byte $83   ; 
- D 1 - I - 0x016DFA 05:ADEA: 1F        .byte $1F   ; 
- D 1 - I - 0x016DFB 05:ADEB: 24        .byte $24   ; 
- D 1 - I - 0x016DFC 05:ADEC: 00        .byte $00   ; 
- D 1 - I - 0x016DFD 05:ADED: 07        .byte $07   ; 
- D 1 - I - 0x016DFE 05:ADEE: 0F        .byte $0F   ; 
- D 1 - I - 0x016DFF 05:ADEF: 03        .byte $03   ; 
- D 1 - I - 0x016E00 05:ADF0: 00        .byte $00   ; 
- D 1 - I - 0x016E01 05:ADF1: 85        .byte $85   ; 
- D 1 - I - 0x016E02 05:ADF2: 0A        .byte $0A   ; 
- D 1 - I - 0x016E03 05:ADF3: 24        .byte $24   ; 
- D 1 - I - 0x016E04 05:ADF4: 02        .byte $02   ; 
- D 1 - I - 0x016E05 05:ADF5: 0C        .byte $0C   ; 
- D 1 - I - 0x016E06 05:ADF6: 0F        .byte $0F   ; 
- D 1 - I - 0x016E07 05:ADF7: 02        .byte $02   ; 
- D 1 - I - 0x016E08 05:ADF8: 07        .byte $07   ; 
- D 1 - I - 0x016E09 05:ADF9: 81        .byte $81   ; 
- D 1 - I - 0x016E0A 05:ADFA: 13        .byte $13   ; 
- D 1 - I - 0x016E0B 05:ADFB: 05        .byte $05   ; 
- D 1 - I - 0x016E0C 05:ADFC: 00        .byte $00   ; 
- D 1 - I - 0x016E0D 05:ADFD: 81        .byte $81   ; 
- D 1 - I - 0x016E0E 05:ADFE: 64        .byte $64   ; 
- D 1 - I - 0x016E0F 05:ADFF: 02        .byte $02   ; 
- D 1 - I - 0x016E10 05:AE00: 00        .byte $00   ; 
- D 1 - I - 0x016E11 05:AE01: 81        .byte $81   ; 
- D 1 - I - 0x016E12 05:AE02: 5C        .byte $5C   ; 
- D 1 - I - 0x016E13 05:AE03: 1C        .byte $1C   ; 
- D 1 - I - 0x016E14 05:AE04: 00        .byte $00   ; 
- D 1 - I - 0x016E15 05:AE05: 81        .byte $81   ; 
- D 1 - I - 0x016E16 05:AE06: 64        .byte $64   ; 
- D 1 - I - 0x016E17 05:AE07: 02        .byte $02   ; 
- D 1 - I - 0x016E18 05:AE08: 00        .byte $00   ; 
- D 1 - I - 0x016E19 05:AE09: 81        .byte $81   ; 
- D 1 - I - 0x016E1A 05:AE0A: B2        .byte $B2   ; 
- D 1 - I - 0x016E1B 05:AE0B: 02        .byte $02   ; 
- D 1 - I - 0x016E1C 05:AE0C: 00        .byte $00   ; 
- D 1 - I - 0x016E1D 05:AE0D: 83        .byte $83   ; 
- D 1 - I - 0x016E1E 05:AE0E: 20        .byte $20   ; 
- D 1 - I - 0x016E1F 05:AE0F: 24        .byte $24   ; 
- D 1 - I - 0x016E20 05:AE10: 00        .byte $00   ; 
- D 1 - I - 0x016E21 05:AE11: 07        .byte $07   ; 
- D 1 - I - 0x016E22 05:AE12: 0F        .byte $0F   ; 
- D 1 - I - 0x016E23 05:AE13: 03        .byte $03   ; 
- D 1 - I - 0x016E24 05:AE14: 00        .byte $00   ; 
- D 1 - I - 0x016E25 05:AE15: 85        .byte $85   ; 
- D 1 - I - 0x016E26 05:AE16: 0A        .byte $0A   ; 
- D 1 - I - 0x016E27 05:AE17: 24        .byte $24   ; 
- D 1 - I - 0x016E28 05:AE18: 02        .byte $02   ; 
- D 1 - I - 0x016E29 05:AE19: 0C        .byte $0C   ; 
- D 1 - I - 0x016E2A 05:AE1A: 0F        .byte $0F   ; 
- D 1 - I - 0x016E2B 05:AE1B: 02        .byte $02   ; 
- D 1 - I - 0x016E2C 05:AE1C: 07        .byte $07   ; 
- D 1 - I - 0x016E2D 05:AE1D: 81        .byte $81   ; 
- D 1 - I - 0x016E2E 05:AE1E: 13        .byte $13   ; 
- D 1 - I - 0x016E2F 05:AE1F: 05        .byte $05   ; 
- D 1 - I - 0x016E30 05:AE20: 00        .byte $00   ; 
- D 1 - I - 0x016E31 05:AE21: 81        .byte $81   ; 
- D 1 - I - 0x016E32 05:AE22: B3        .byte $B3   ; 
- D 1 - I - 0x016E33 05:AE23: 02        .byte $02   ; 
- D 1 - I - 0x016E34 05:AE24: 00        .byte $00   ; 
- D 1 - I - 0x016E35 05:AE25: 81        .byte $81   ; 
- D 1 - I - 0x016E36 05:AE26: B4        .byte $B4   ; 
- D 1 - I - 0x016E37 05:AE27: 1C        .byte $1C   ; 
- D 1 - I - 0x016E38 05:AE28: 00        .byte $00   ; 
- D 1 - I - 0x016E39 05:AE29: 81        .byte $81   ; 
- D 1 - I - 0x016E3A 05:AE2A: B5        .byte $B5   ; 
- D 1 - I - 0x016E3B 05:AE2B: 02        .byte $02   ; 
- D 1 - I - 0x016E3C 05:AE2C: 00        .byte $00   ; 
- D 1 - I - 0x016E3D 05:AE2D: 84        .byte $84   ; 
- D 1 - I - 0x016E3E 05:AE2E: B6        .byte $B6   ; 
- D 1 - I - 0x016E3F 05:AE2F: B7        .byte $B7   ; 
- D 1 - I - 0x016E40 05:AE30: B8        .byte $B8   ; 
- D 1 - I - 0x016E41 05:AE31: B9        .byte $B9   ; 
- D 1 - I - 0x016E42 05:AE32: 03        .byte $03   ; 
- D 1 - I - 0x016E43 05:AE33: BA        .byte $BA   ; 
- D 1 - I - 0x016E44 05:AE34: 90        .byte $90   ; 
- D 1 - I - 0x016E45 05:AE35: BB        .byte $BB   ; 
- D 1 - I - 0x016E46 05:AE36: BC        .byte $BC   ; 
- D 1 - I - 0x016E47 05:AE37: BD        .byte $BD   ; 
- D 1 - I - 0x016E48 05:AE38: BE        .byte $BE   ; 
- D 1 - I - 0x016E49 05:AE39: BF        .byte $BF   ; 
- D 1 - I - 0x016E4A 05:AE3A: C0        .byte $C0   ; 
- D 1 - I - 0x016E4B 05:AE3B: C1        .byte $C1   ; 
- D 1 - I - 0x016E4C 05:AE3C: C2        .byte $C2   ; 
- D 1 - I - 0x016E4D 05:AE3D: C3        .byte $C3   ; 
- D 1 - I - 0x016E4E 05:AE3E: C4        .byte $C4   ; 
- D 1 - I - 0x016E4F 05:AE3F: C5        .byte $C5   ; 
- D 1 - I - 0x016E50 05:AE40: C6        .byte $C6   ; 
- D 1 - I - 0x016E51 05:AE41: C7        .byte $C7   ; 
- D 1 - I - 0x016E52 05:AE42: C8        .byte $C8   ; 
- D 1 - I - 0x016E53 05:AE43: C9        .byte $C9   ; 
- D 1 - I - 0x016E54 05:AE44: CA        .byte $CA   ; 
- D 1 - I - 0x016E55 05:AE45: 03        .byte $03   ; 
- D 1 - I - 0x016E56 05:AE46: CB        .byte $CB   ; 
- D 1 - I - 0x016E57 05:AE47: 84        .byte $84   ; 
- D 1 - I - 0x016E58 05:AE48: CC        .byte $CC   ; 
- D 1 - I - 0x016E59 05:AE49: CD        .byte $CD   ; 
- D 1 - I - 0x016E5A 05:AE4A: CE        .byte $CE   ; 
- D 1 - I - 0x016E5B 05:AE4B: CF        .byte $CF   ; 
- D 1 - I - 0x016E5C 05:AE4C: 0B        .byte $0B   ; 
- D 1 - I - 0x016E5D 05:AE4D: 00        .byte $00   ; 
- D 1 - I - 0x016E5E 05:AE4E: 81        .byte $81   ; 
- D 1 - I - 0x016E5F 05:AE4F: D0        .byte $D0   ; 
- D 1 - I - 0x016E60 05:AE50: 02        .byte $02   ; 
- D 1 - I - 0x016E61 05:AE51: D1        .byte $D1   ; 
- D 1 - I - 0x016E62 05:AE52: 86        .byte $86   ; 
- D 1 - I - 0x016E63 05:AE53: D2        .byte $D2   ; 
- D 1 - I - 0x016E64 05:AE54: D3        .byte $D3   ; 
- D 1 - I - 0x016E65 05:AE55: D4        .byte $D4   ; 
- D 1 - I - 0x016E66 05:AE56: D5        .byte $D5   ; 
- D 1 - I - 0x016E67 05:AE57: D6        .byte $D6   ; 
- D 1 - I - 0x016E68 05:AE58: D7        .byte $D7   ; 
- D 1 - I - 0x016E69 05:AE59: 02        .byte $02   ; 
- D 1 - I - 0x016E6A 05:AE5A: D1        .byte $D1   ; 
- D 1 - I - 0x016E6B 05:AE5B: 81        .byte $81   ; 
- D 1 - I - 0x016E6C 05:AE5C: D8        .byte $D8   ; 
- D 1 - I - 0x016E6D 05:AE5D: 7F        .byte $7F   ; 
- D 1 - I - 0x016E6E 05:AE5E: 00        .byte $00   ; 
- D 1 - I - 0x016E6F 05:AE5F: 7F        .byte $7F   ; 
- D 1 - I - 0x016E70 05:AE60: 00        .byte $00   ; 
- D 1 - I - 0x016E71 05:AE61: FF        .byte $FF   ; end token


; bzk garbage
- - - - - - 0x016E72 05:AE62: FF        .byte $FF   ; 



_off008_AE63_04:
- D 1 - I - 0x016E73 05:AE63: 7F        .byte $7F   ; 
- D 1 - I - 0x016E74 05:AE64: 00        .byte $00   ; 
- D 1 - I - 0x016E75 05:AE65: 28        .byte $28   ; 
- D 1 - I - 0x016E76 05:AE66: 00        .byte $00   ; 
- D 1 - I - 0x016E77 05:AE67: 81        .byte $81   ; 
- D 1 - I - 0x016E78 05:AE68: 27        .byte $27   ; 
- D 1 - I - 0x016E79 05:AE69: 07        .byte $07   ; 
- D 1 - I - 0x016E7A 05:AE6A: 00        .byte $00   ; 
- D 1 - I - 0x016E7B 05:AE6B: 82        .byte $82   ; 
- D 1 - I - 0x016E7C 05:AE6C: 28        .byte $28   ; 
- D 1 - I - 0x016E7D 05:AE6D: 29        .byte $29   ; 
- D 1 - I - 0x016E7E 05:AE6E: 07        .byte $07   ; 
- D 1 - I - 0x016E7F 05:AE6F: 00        .byte $00   ; 
- D 1 - I - 0x016E80 05:AE70: 81        .byte $81   ; 
- D 1 - I - 0x016E81 05:AE71: 27        .byte $27   ; 
- D 1 - I - 0x016E82 05:AE72: 0E        .byte $0E   ; 
- D 1 - I - 0x016E83 05:AE73: 00        .byte $00   ; 
- D 1 - I - 0x016E84 05:AE74: 81        .byte $81   ; 
- D 1 - I - 0x016E85 05:AE75: 2A        .byte $2A   ; 
- D 1 - I - 0x016E86 05:AE76: 02        .byte $02   ; 
- D 1 - I - 0x016E87 05:AE77: 00        .byte $00   ; 
- D 1 - I - 0x016E88 05:AE78: 81        .byte $81   ; 
- D 1 - I - 0x016E89 05:AE79: 2B        .byte $2B   ; 
- D 1 - I - 0x016E8A 05:AE7A: 02        .byte $02   ; 
- D 1 - I - 0x016E8B 05:AE7B: 2C        .byte $2C   ; 
- D 1 - I - 0x016E8C 05:AE7C: 86        .byte $86   ; 
- D 1 - I - 0x016E8D 05:AE7D: 2D        .byte $2D   ; 
- D 1 - I - 0x016E8E 05:AE7E: 2E        .byte $2E   ; 
- D 1 - I - 0x016E8F 05:AE7F: 2F        .byte $2F   ; 
- D 1 - I - 0x016E90 05:AE80: 30        .byte $30   ; 
- D 1 - I - 0x016E91 05:AE81: 31        .byte $31   ; 
- D 1 - I - 0x016E92 05:AE82: 32        .byte $32   ; 
- D 1 - I - 0x016E93 05:AE83: 02        .byte $02   ; 
- D 1 - I - 0x016E94 05:AE84: 2C        .byte $2C   ; 
- D 1 - I - 0x016E95 05:AE85: 81        .byte $81   ; 
- D 1 - I - 0x016E96 05:AE86: 33        .byte $33   ; 
- D 1 - I - 0x016E97 05:AE87: 02        .byte $02   ; 
- D 1 - I - 0x016E98 05:AE88: 00        .byte $00   ; 
- D 1 - I - 0x016E99 05:AE89: 81        .byte $81   ; 
- D 1 - I - 0x016E9A 05:AE8A: 2A        .byte $2A   ; 
- D 1 - I - 0x016E9B 05:AE8B: 08        .byte $08   ; 
- D 1 - I - 0x016E9C 05:AE8C: 00        .byte $00   ; 
- D 1 - I - 0x016E9D 05:AE8D: 87        .byte $87   ; 
- D 1 - I - 0x016E9E 05:AE8E: 34        .byte $34   ; 
- D 1 - I - 0x016E9F 05:AE8F: 35        .byte $35   ; 
- D 1 - I - 0x016EA0 05:AE90: 36        .byte $36   ; 
- D 1 - I - 0x016EA1 05:AE91: 37        .byte $37   ; 
- D 1 - I - 0x016EA2 05:AE92: 38        .byte $38   ; 
- D 1 - I - 0x016EA3 05:AE93: 39        .byte $39   ; 
- D 1 - I - 0x016EA4 05:AE94: 3A        .byte $3A   ; 
- D 1 - I - 0x016EA5 05:AE95: 03        .byte $03   ; 
- D 1 - I - 0x016EA6 05:AE96: 3B        .byte $3B   ; 
- D 1 - I - 0x016EA7 05:AE97: 8A        .byte $8A   ; 
- D 1 - I - 0x016EA8 05:AE98: 3C        .byte $3C   ; 
- D 1 - I - 0x016EA9 05:AE99: 3D        .byte $3D   ; 
- D 1 - I - 0x016EAA 05:AE9A: 3E        .byte $3E   ; 
- D 1 - I - 0x016EAB 05:AE9B: 3F        .byte $3F   ; 
- D 1 - I - 0x016EAC 05:AE9C: 40        .byte $40   ; 
- D 1 - I - 0x016EAD 05:AE9D: 41        .byte $41   ; 
- D 1 - I - 0x016EAE 05:AE9E: 42        .byte $42   ; 
- D 1 - I - 0x016EAF 05:AE9F: 43        .byte $43   ; 
- D 1 - I - 0x016EB0 05:AEA0: 44        .byte $44   ; 
- D 1 - I - 0x016EB1 05:AEA1: 45        .byte $45   ; 
- D 1 - I - 0x016EB2 05:AEA2: 03        .byte $03   ; 
- D 1 - I - 0x016EB3 05:AEA3: 3B        .byte $3B   ; 
- D 1 - I - 0x016EB4 05:AEA4: 87        .byte $87   ; 
- D 1 - I - 0x016EB5 05:AEA5: 3A        .byte $3A   ; 
- D 1 - I - 0x016EB6 05:AEA6: 46        .byte $46   ; 
- D 1 - I - 0x016EB7 05:AEA7: 47        .byte $47   ; 
- D 1 - I - 0x016EB8 05:AEA8: 48        .byte $48   ; 
- D 1 - I - 0x016EB9 05:AEA9: 49        .byte $49   ; 
- D 1 - I - 0x016EBA 05:AEAA: 4A        .byte $4A   ; 
- D 1 - I - 0x016EBB 05:AEAB: 4B        .byte $4B   ; 
- D 1 - I - 0x016EBC 05:AEAC: 02        .byte $02   ; 
- D 1 - I - 0x016EBD 05:AEAD: 00        .byte $00   ; 
- D 1 - I - 0x016EBE 05:AEAE: 81        .byte $81   ; 
- D 1 - I - 0x016EBF 05:AEAF: 4C        .byte $4C   ; 
- D 1 - I - 0x016EC0 05:AEB0: 1C        .byte $1C   ; 
- D 1 - I - 0x016EC1 05:AEB1: 00        .byte $00   ; 
- D 1 - I - 0x016EC2 05:AEB2: 81        .byte $81   ; 
- D 1 - I - 0x016EC3 05:AEB3: 53        .byte $53   ; 
- D 1 - I - 0x016EC4 05:AEB4: 02        .byte $02   ; 
- D 1 - I - 0x016EC5 05:AEB5: 00        .byte $00   ; 
- D 1 - I - 0x016EC6 05:AEB6: 81        .byte $81   ; 
- D 1 - I - 0x016EC7 05:AEB7: 54        .byte $54   ; 
- D 1 - I - 0x016EC8 05:AEB8: 1C        .byte $1C   ; 
- D 1 - I - 0x016EC9 05:AEB9: 00        .byte $00   ; 
- D 1 - I - 0x016ECA 05:AEBA: 81        .byte $81   ; 
- D 1 - I - 0x016ECB 05:AEBB: 5B        .byte $5B   ; 
- D 1 - I - 0x016ECC 05:AEBC: 02        .byte $02   ; 
- D 1 - I - 0x016ECD 05:AEBD: 00        .byte $00   ; 
- D 1 - I - 0x016ECE 05:AEBE: 81        .byte $81   ; 
- D 1 - I - 0x016ECF 05:AEBF: 5C        .byte $5C   ; 
- D 1 - I - 0x016ED0 05:AEC0: 1C        .byte $1C   ; 
- D 1 - I - 0x016ED1 05:AEC1: 00        .byte $00   ; 
- D 1 - I - 0x016ED2 05:AEC2: 81        .byte $81   ; 
- D 1 - I - 0x016ED3 05:AEC3: 64        .byte $64   ; 
- D 1 - I - 0x016ED4 05:AEC4: 02        .byte $02   ; 
- D 1 - I - 0x016ED5 05:AEC5: 00        .byte $00   ; 
- D 1 - I - 0x016ED6 05:AEC6: 81        .byte $81   ; 
- D 1 - I - 0x016ED7 05:AEC7: 5C        .byte $5C   ; 
- D 1 - I - 0x016ED8 05:AEC8: 1C        .byte $1C   ; 
- D 1 - I - 0x016ED9 05:AEC9: 00        .byte $00   ; 
- D 1 - I - 0x016EDA 05:AECA: 81        .byte $81   ; 
- D 1 - I - 0x016EDB 05:AECB: 64        .byte $64   ; 
- D 1 - I - 0x016EDC 05:AECC: 02        .byte $02   ; 
- D 1 - I - 0x016EDD 05:AECD: 00        .byte $00   ; 
- D 1 - I - 0x016EDE 05:AECE: 81        .byte $81   ; 
- D 1 - I - 0x016EDF 05:AECF: 5C        .byte $5C   ; 
- D 1 - I - 0x016EE0 05:AED0: 1C        .byte $1C   ; 
- D 1 - I - 0x016EE1 05:AED1: 00        .byte $00   ; 
- D 1 - I - 0x016EE2 05:AED2: 81        .byte $81   ; 
- D 1 - I - 0x016EE3 05:AED3: 64        .byte $64   ; 
- D 1 - I - 0x016EE4 05:AED4: 02        .byte $02   ; 
- D 1 - I - 0x016EE5 05:AED5: 00        .byte $00   ; 
- D 1 - I - 0x016EE6 05:AED6: 81        .byte $81   ; 
- D 1 - I - 0x016EE7 05:AED7: 74        .byte $74   ; 
- D 1 - I - 0x016EE8 05:AED8: 1C        .byte $1C   ; 
- D 1 - I - 0x016EE9 05:AED9: 00        .byte $00   ; 
- D 1 - I - 0x016EEA 05:AEDA: 84        .byte $84   ; 
- D 1 - I - 0x016EEB 05:AEDB: 7B        .byte $7B   ; 
- D 1 - I - 0x016EEC 05:AEDC: 00        .byte $00   ; 
- D 1 - I - 0x016EED 05:AEDD: 7C        .byte $7C   ; 
- D 1 - I - 0x016EEE 05:AEDE: 7D        .byte $7D   ; 
- D 1 - I - 0x016EEF 05:AEDF: 1C        .byte $1C   ; 
- D 1 - I - 0x016EF0 05:AEE0: 00        .byte $00   ; 
- D 1 - I - 0x016EF1 05:AEE1: 84        .byte $84   ; 
- D 1 - I - 0x016EF2 05:AEE2: 84        .byte $84   ; 
- D 1 - I - 0x016EF3 05:AEE3: 85        .byte $85   ; 
- D 1 - I - 0x016EF4 05:AEE4: 86        .byte $86   ; 
- D 1 - I - 0x016EF5 05:AEE5: 87        .byte $87   ; 
- D 1 - I - 0x016EF6 05:AEE6: 1C        .byte $1C   ; 
- D 1 - I - 0x016EF7 05:AEE7: 00        .byte $00   ; 
- D 1 - I - 0x016EF8 05:AEE8: 84        .byte $84   ; 
- D 1 - I - 0x016EF9 05:AEE9: 91        .byte $91   ; 
- D 1 - I - 0x016EFA 05:AEEA: 92        .byte $92   ; 
- D 1 - I - 0x016EFB 05:AEEB: 00        .byte $00   ; 
- D 1 - I - 0x016EFC 05:AEEC: 93        .byte $93   ; 
- D 1 - I - 0x016EFD 05:AEED: 1C        .byte $1C   ; 
- D 1 - I - 0x016EFE 05:AEEE: 00        .byte $00   ; 
- D 1 - I - 0x016EFF 05:AEEF: 81        .byte $81   ; 
- D 1 - I - 0x016F00 05:AEF0: A2        .byte $A2   ; 
- D 1 - I - 0x016F01 05:AEF1: 02        .byte $02   ; 
- D 1 - I - 0x016F02 05:AEF2: 00        .byte $00   ; 
- D 1 - I - 0x016F03 05:AEF3: 81        .byte $81   ; 
- D 1 - I - 0x016F04 05:AEF4: 5C        .byte $5C   ; 
- D 1 - I - 0x016F05 05:AEF5: 1C        .byte $1C   ; 
- D 1 - I - 0x016F06 05:AEF6: 00        .byte $00   ; 
- D 1 - I - 0x016F07 05:AEF7: 81        .byte $81   ; 
- D 1 - I - 0x016F08 05:AEF8: 64        .byte $64   ; 
- D 1 - I - 0x016F09 05:AEF9: 02        .byte $02   ; 
- D 1 - I - 0x016F0A 05:AEFA: 00        .byte $00   ; 
- D 1 - I - 0x016F0B 05:AEFB: 81        .byte $81   ; 
- D 1 - I - 0x016F0C 05:AEFC: 5C        .byte $5C   ; 
- D 1 - I - 0x016F0D 05:AEFD: 1C        .byte $1C   ; 
- D 1 - I - 0x016F0E 05:AEFE: 00        .byte $00   ; 
- D 1 - I - 0x016F0F 05:AEFF: 81        .byte $81   ; 
- D 1 - I - 0x016F10 05:AF00: 64        .byte $64   ; 
- D 1 - I - 0x016F11 05:AF01: 02        .byte $02   ; 
- D 1 - I - 0x016F12 05:AF02: 00        .byte $00   ; 
- D 1 - I - 0x016F13 05:AF03: 81        .byte $81   ; 
- D 1 - I - 0x016F14 05:AF04: 5C        .byte $5C   ; 
- D 1 - I - 0x016F15 05:AF05: 1C        .byte $1C   ; 
- D 1 - I - 0x016F16 05:AF06: 00        .byte $00   ; 
- D 1 - I - 0x016F17 05:AF07: 81        .byte $81   ; 
- D 1 - I - 0x016F18 05:AF08: 64        .byte $64   ; 
- D 1 - I - 0x016F19 05:AF09: 02        .byte $02   ; 
- D 1 - I - 0x016F1A 05:AF0A: 00        .byte $00   ; 
- D 1 - I - 0x016F1B 05:AF0B: 81        .byte $81   ; 
- D 1 - I - 0x016F1C 05:AF0C: B2        .byte $B2   ; 
- D 1 - I - 0x016F1D 05:AF0D: 1C        .byte $1C   ; 
- D 1 - I - 0x016F1E 05:AF0E: 00        .byte $00   ; 
- D 1 - I - 0x016F1F 05:AF0F: 81        .byte $81   ; 
- D 1 - I - 0x016F20 05:AF10: B3        .byte $B3   ; 
- D 1 - I - 0x016F21 05:AF11: 02        .byte $02   ; 
- D 1 - I - 0x016F22 05:AF12: 00        .byte $00   ; 
- D 1 - I - 0x016F23 05:AF13: 81        .byte $81   ; 
- D 1 - I - 0x016F24 05:AF14: B4        .byte $B4   ; 
- D 1 - I - 0x016F25 05:AF15: 1C        .byte $1C   ; 
- D 1 - I - 0x016F26 05:AF16: 00        .byte $00   ; 
- D 1 - I - 0x016F27 05:AF17: 81        .byte $81   ; 
- D 1 - I - 0x016F28 05:AF18: B5        .byte $B5   ; 
- D 1 - I - 0x016F29 05:AF19: 02        .byte $02   ; 
- D 1 - I - 0x016F2A 05:AF1A: 00        .byte $00   ; 
- D 1 - I - 0x016F2B 05:AF1B: 84        .byte $84   ; 
- D 1 - I - 0x016F2C 05:AF1C: B6        .byte $B6   ; 
- D 1 - I - 0x016F2D 05:AF1D: B7        .byte $B7   ; 
- D 1 - I - 0x016F2E 05:AF1E: B8        .byte $B8   ; 
- D 1 - I - 0x016F2F 05:AF1F: B9        .byte $B9   ; 
- D 1 - I - 0x016F30 05:AF20: 03        .byte $03   ; 
- D 1 - I - 0x016F31 05:AF21: BA        .byte $BA   ; 
- D 1 - I - 0x016F32 05:AF22: 90        .byte $90   ; 
- D 1 - I - 0x016F33 05:AF23: BB        .byte $BB   ; 
- D 1 - I - 0x016F34 05:AF24: BC        .byte $BC   ; 
- D 1 - I - 0x016F35 05:AF25: BD        .byte $BD   ; 
- D 1 - I - 0x016F36 05:AF26: BE        .byte $BE   ; 
- D 1 - I - 0x016F37 05:AF27: BF        .byte $BF   ; 
- D 1 - I - 0x016F38 05:AF28: C0        .byte $C0   ; 
- D 1 - I - 0x016F39 05:AF29: C1        .byte $C1   ; 
- D 1 - I - 0x016F3A 05:AF2A: C2        .byte $C2   ; 
- D 1 - I - 0x016F3B 05:AF2B: C3        .byte $C3   ; 
- D 1 - I - 0x016F3C 05:AF2C: C4        .byte $C4   ; 
- D 1 - I - 0x016F3D 05:AF2D: C5        .byte $C5   ; 
- D 1 - I - 0x016F3E 05:AF2E: C6        .byte $C6   ; 
- D 1 - I - 0x016F3F 05:AF2F: C7        .byte $C7   ; 
- D 1 - I - 0x016F40 05:AF30: C8        .byte $C8   ; 
- D 1 - I - 0x016F41 05:AF31: C9        .byte $C9   ; 
- D 1 - I - 0x016F42 05:AF32: CA        .byte $CA   ; 
- D 1 - I - 0x016F43 05:AF33: 03        .byte $03   ; 
- D 1 - I - 0x016F44 05:AF34: CB        .byte $CB   ; 
- D 1 - I - 0x016F45 05:AF35: 84        .byte $84   ; 
- D 1 - I - 0x016F46 05:AF36: CC        .byte $CC   ; 
- D 1 - I - 0x016F47 05:AF37: CD        .byte $CD   ; 
- D 1 - I - 0x016F48 05:AF38: CE        .byte $CE   ; 
- D 1 - I - 0x016F49 05:AF39: CF        .byte $CF   ; 
- D 1 - I - 0x016F4A 05:AF3A: 0B        .byte $0B   ; 
- D 1 - I - 0x016F4B 05:AF3B: 00        .byte $00   ; 
- D 1 - I - 0x016F4C 05:AF3C: 81        .byte $81   ; 
- D 1 - I - 0x016F4D 05:AF3D: D0        .byte $D0   ; 
- D 1 - I - 0x016F4E 05:AF3E: 02        .byte $02   ; 
- D 1 - I - 0x016F4F 05:AF3F: D1        .byte $D1   ; 
- D 1 - I - 0x016F50 05:AF40: 86        .byte $86   ; 
- D 1 - I - 0x016F51 05:AF41: D2        .byte $D2   ; 
- D 1 - I - 0x016F52 05:AF42: D3        .byte $D3   ; 
- D 1 - I - 0x016F53 05:AF43: D4        .byte $D4   ; 
- D 1 - I - 0x016F54 05:AF44: D5        .byte $D5   ; 
- D 1 - I - 0x016F55 05:AF45: D6        .byte $D6   ; 
- D 1 - I - 0x016F56 05:AF46: D7        .byte $D7   ; 
- D 1 - I - 0x016F57 05:AF47: 02        .byte $02   ; 
- D 1 - I - 0x016F58 05:AF48: D1        .byte $D1   ; 
- D 1 - I - 0x016F59 05:AF49: 81        .byte $81   ; 
- D 1 - I - 0x016F5A 05:AF4A: D8        .byte $D8   ; 
- D 1 - I - 0x016F5B 05:AF4B: 7F        .byte $7F   ; 
- D 1 - I - 0x016F5C 05:AF4C: 00        .byte $00   ; 
- D 1 - I - 0x016F5D 05:AF4D: 7F        .byte $7F   ; 
- D 1 - I - 0x016F5E 05:AF4E: 00        .byte $00   ; 
- D 1 - I - 0x016F5F 05:AF4F: FF        .byte $FF   ; end token


; bzk garbage
- - - - - - 0x016F60 05:AF50: FF        .byte $FF   ; 



_off008_AF51_01:
- D 1 - I - 0x016F61 05:AF51: 7F        .byte $7F   ; 
- D 1 - I - 0x016F62 05:AF52: 00        .byte $00   ; 
- D 1 - I - 0x016F63 05:AF53: 7F        .byte $7F   ; 
- D 1 - I - 0x016F64 05:AF54: 00        .byte $00   ; 
- D 1 - I - 0x016F65 05:AF55: 2B        .byte $2B   ; 
- D 1 - I - 0x016F66 05:AF56: 00        .byte $00   ; 
- D 1 - I - 0x016F67 05:AF57: 8F        .byte $8F   ; 
- D 1 - I - 0x016F68 05:AF58: 9C        .byte $9C   ; 
- D 1 - I - 0x016F69 05:AF59: 9D        .byte $9D   ; 
- D 1 - I - 0x016F6A 05:AF5A: 9E        .byte $9E   ; 
- D 1 - I - 0x016F6B 05:AF5B: 9F        .byte $9F   ; 
- D 1 - I - 0x016F6C 05:AF5C: A0        .byte $A0   ; 
- D 1 - I - 0x016F6D 05:AF5D: A1        .byte $A1   ; 
- D 1 - I - 0x016F6E 05:AF5E: A2        .byte $A2   ; 
- D 1 - I - 0x016F6F 05:AF5F: A3        .byte $A3   ; 
- D 1 - I - 0x016F70 05:AF60: A4        .byte $A4   ; 
- D 1 - I - 0x016F71 05:AF61: A5        .byte $A5   ; 
- D 1 - I - 0x016F72 05:AF62: A6        .byte $A6   ; 
- D 1 - I - 0x016F73 05:AF63: A7        .byte $A7   ; 
- D 1 - I - 0x016F74 05:AF64: A8        .byte $A8   ; 
- D 1 - I - 0x016F75 05:AF65: A9        .byte $A9   ; 
- D 1 - I - 0x016F76 05:AF66: AA        .byte $AA   ; 
- D 1 - I - 0x016F77 05:AF67: 11        .byte $11   ; 
- D 1 - I - 0x016F78 05:AF68: 00        .byte $00   ; 
- D 1 - I - 0x016F79 05:AF69: 8F        .byte $8F   ; 
- D 1 - I - 0x016F7A 05:AF6A: AB        .byte $AB   ; 
- D 1 - I - 0x016F7B 05:AF6B: AC        .byte $AC   ; 
- D 1 - I - 0x016F7C 05:AF6C: AD        .byte $AD   ; 
- D 1 - I - 0x016F7D 05:AF6D: AE        .byte $AE   ; 
- D 1 - I - 0x016F7E 05:AF6E: AF        .byte $AF   ; 
- D 1 - I - 0x016F7F 05:AF6F: B0        .byte $B0   ; 
- D 1 - I - 0x016F80 05:AF70: B1        .byte $B1   ; 
- D 1 - I - 0x016F81 05:AF71: B2        .byte $B2   ; 
- D 1 - I - 0x016F82 05:AF72: B3        .byte $B3   ; 
- D 1 - I - 0x016F83 05:AF73: B4        .byte $B4   ; 
- D 1 - I - 0x016F84 05:AF74: B5        .byte $B5   ; 
- D 1 - I - 0x016F85 05:AF75: B6        .byte $B6   ; 
- D 1 - I - 0x016F86 05:AF76: B7        .byte $B7   ; 
- D 1 - I - 0x016F87 05:AF77: B8        .byte $B8   ; 
- D 1 - I - 0x016F88 05:AF78: B9        .byte $B9   ; 
- D 1 - I - 0x016F89 05:AF79: 11        .byte $11   ; 
- D 1 - I - 0x016F8A 05:AF7A: 00        .byte $00   ; 
- D 1 - I - 0x016F8B 05:AF7B: 8F        .byte $8F   ; 
- D 1 - I - 0x016F8C 05:AF7C: BA        .byte $BA   ; 
- D 1 - I - 0x016F8D 05:AF7D: BB        .byte $BB   ; 
- D 1 - I - 0x016F8E 05:AF7E: BC        .byte $BC   ; 
- D 1 - I - 0x016F8F 05:AF7F: BD        .byte $BD   ; 
- D 1 - I - 0x016F90 05:AF80: BE        .byte $BE   ; 
- D 1 - I - 0x016F91 05:AF81: BF        .byte $BF   ; 
- D 1 - I - 0x016F92 05:AF82: C0        .byte $C0   ; 
- D 1 - I - 0x016F93 05:AF83: C1        .byte $C1   ; 
- D 1 - I - 0x016F94 05:AF84: C2        .byte $C2   ; 
- D 1 - I - 0x016F95 05:AF85: C3        .byte $C3   ; 
- D 1 - I - 0x016F96 05:AF86: C4        .byte $C4   ; 
- D 1 - I - 0x016F97 05:AF87: C5        .byte $C5   ; 
- D 1 - I - 0x016F98 05:AF88: C6        .byte $C6   ; 
- D 1 - I - 0x016F99 05:AF89: C7        .byte $C7   ; 
- D 1 - I - 0x016F9A 05:AF8A: C8        .byte $C8   ; 
- D 1 - I - 0x016F9B 05:AF8B: 11        .byte $11   ; 
- D 1 - I - 0x016F9C 05:AF8C: 00        .byte $00   ; 
- D 1 - I - 0x016F9D 05:AF8D: 8F        .byte $8F   ; 
- D 1 - I - 0x016F9E 05:AF8E: AB        .byte $AB   ; 
- D 1 - I - 0x016F9F 05:AF8F: C9        .byte $C9   ; 
- D 1 - I - 0x016FA0 05:AF90: CA        .byte $CA   ; 
- D 1 - I - 0x016FA1 05:AF91: CB        .byte $CB   ; 
- D 1 - I - 0x016FA2 05:AF92: CC        .byte $CC   ; 
- D 1 - I - 0x016FA3 05:AF93: CD        .byte $CD   ; 
- D 1 - I - 0x016FA4 05:AF94: CE        .byte $CE   ; 
- D 1 - I - 0x016FA5 05:AF95: CF        .byte $CF   ; 
- D 1 - I - 0x016FA6 05:AF96: D0        .byte $D0   ; 
- D 1 - I - 0x016FA7 05:AF97: D1        .byte $D1   ; 
- D 1 - I - 0x016FA8 05:AF98: D2        .byte $D2   ; 
- D 1 - I - 0x016FA9 05:AF99: D3        .byte $D3   ; 
- D 1 - I - 0x016FAA 05:AF9A: D4        .byte $D4   ; 
- D 1 - I - 0x016FAB 05:AF9B: D5        .byte $D5   ; 
- D 1 - I - 0x016FAC 05:AF9C: D6        .byte $D6   ; 
- D 1 - I - 0x016FAD 05:AF9D: 11        .byte $11   ; 
- D 1 - I - 0x016FAE 05:AF9E: 00        .byte $00   ; 
- D 1 - I - 0x016FAF 05:AF9F: 8F        .byte $8F   ; 
- D 1 - I - 0x016FB0 05:AFA0: D7        .byte $D7   ; 
- D 1 - I - 0x016FB1 05:AFA1: D8        .byte $D8   ; 
- D 1 - I - 0x016FB2 05:AFA2: D9        .byte $D9   ; 
- D 1 - I - 0x016FB3 05:AFA3: DA        .byte $DA   ; 
- D 1 - I - 0x016FB4 05:AFA4: DB        .byte $DB   ; 
- D 1 - I - 0x016FB5 05:AFA5: DC        .byte $DC   ; 
- D 1 - I - 0x016FB6 05:AFA6: DD        .byte $DD   ; 
- D 1 - I - 0x016FB7 05:AFA7: DE        .byte $DE   ; 
- D 1 - I - 0x016FB8 05:AFA8: DF        .byte $DF   ; 
- D 1 - I - 0x016FB9 05:AFA9: E0        .byte $E0   ; 
- D 1 - I - 0x016FBA 05:AFAA: E1        .byte $E1   ; 
- D 1 - I - 0x016FBB 05:AFAB: E2        .byte $E2   ; 
- D 1 - I - 0x016FBC 05:AFAC: E3        .byte $E3   ; 
- D 1 - I - 0x016FBD 05:AFAD: E4        .byte $E4   ; 
- D 1 - I - 0x016FBE 05:AFAE: E5        .byte $E5   ; 
- D 1 - I - 0x016FBF 05:AFAF: 11        .byte $11   ; 
- D 1 - I - 0x016FC0 05:AFB0: 00        .byte $00   ; 
- D 1 - I - 0x016FC1 05:AFB1: 8F        .byte $8F   ; 
- D 1 - I - 0x016FC2 05:AFB2: E6        .byte $E6   ; 
- D 1 - I - 0x016FC3 05:AFB3: E7        .byte $E7   ; 
- D 1 - I - 0x016FC4 05:AFB4: E8        .byte $E8   ; 
- D 1 - I - 0x016FC5 05:AFB5: E9        .byte $E9   ; 
- D 1 - I - 0x016FC6 05:AFB6: EA        .byte $EA   ; 
- D 1 - I - 0x016FC7 05:AFB7: EB        .byte $EB   ; 
- D 1 - I - 0x016FC8 05:AFB8: EC        .byte $EC   ; 
- D 1 - I - 0x016FC9 05:AFB9: ED        .byte $ED   ; 
- D 1 - I - 0x016FCA 05:AFBA: EE        .byte $EE   ; 
- D 1 - I - 0x016FCB 05:AFBB: EF        .byte $EF   ; 
- D 1 - I - 0x016FCC 05:AFBC: F0        .byte $F0   ; 
- D 1 - I - 0x016FCD 05:AFBD: F1        .byte $F1   ; 
- D 1 - I - 0x016FCE 05:AFBE: F2        .byte $F2   ; 
- D 1 - I - 0x016FCF 05:AFBF: F3        .byte $F3   ; 
- D 1 - I - 0x016FD0 05:AFC0: F4        .byte $F4   ; 
- D 1 - I - 0x016FD1 05:AFC1: 7F        .byte $7F   ; 
- D 1 - I - 0x016FD2 05:AFC2: 00        .byte $00   ; 
- D 1 - I - 0x016FD3 05:AFC3: 7F        .byte $7F   ; 
- D 1 - I - 0x016FD4 05:AFC4: 00        .byte $00   ; 
- D 1 - I - 0x016FD5 05:AFC5: 7F        .byte $7F   ; 
- D 1 - I - 0x016FD6 05:AFC6: 00        .byte $00   ; 
- D 1 - I - 0x016FD7 05:AFC7: 7F        .byte $7F   ; 
- D 1 - I - 0x016FD8 05:AFC8: 00        .byte $00   ; 
- D 1 - I - 0x016FD9 05:AFC9: FF        .byte $FF   ; end token


; bzk garbage
- - - - - - 0x016FDA 05:AFCA: FF        .byte $FF   ; 



_off008_AFCB_08:
- D 1 - I - 0x016FDB 05:AFCB: 0A        .byte $0A   ; 
- D 1 - I - 0x016FDC 05:AFCC: 00        .byte $00   ; 
- D 1 - I - 0x016FDD 05:AFCD: 81        .byte $81   ; 
- D 1 - I - 0x016FDE 05:AFCE: 01        .byte $01   ; 
- D 1 - I - 0x016FDF 05:AFCF: 03        .byte $03   ; 
- D 1 - I - 0x016FE0 05:AFD0: 00        .byte $00   ; 
- D 1 - I - 0x016FE1 05:AFD1: 81        .byte $81   ; 
- D 1 - I - 0x016FE2 05:AFD2: 02        .byte $02   ; 
- D 1 - I - 0x016FE3 05:AFD3: 03        .byte $03   ; 
- D 1 - I - 0x016FE4 05:AFD4: 00        .byte $00   ; 
- D 1 - I - 0x016FE5 05:AFD5: 83        .byte $83   ; 
- D 1 - I - 0x016FE6 05:AFD6: 03        .byte $03   ; 
- D 1 - I - 0x016FE7 05:AFD7: 04        .byte $04   ; 
- D 1 - I - 0x016FE8 05:AFD8: 05        .byte $05   ; 
- D 1 - I - 0x016FE9 05:AFD9: 05        .byte $05   ; 
- D 1 - I - 0x016FEA 05:AFDA: 00        .byte $00   ; 
- D 1 - I - 0x016FEB 05:AFDB: 86        .byte $86   ; 
- D 1 - I - 0x016FEC 05:AFDC: 06        .byte $06   ; 
- D 1 - I - 0x016FED 05:AFDD: 07        .byte $07   ; 
- D 1 - I - 0x016FEE 05:AFDE: 00        .byte $00   ; 
- D 1 - I - 0x016FEF 05:AFDF: 08        .byte $08   ; 
- D 1 - I - 0x016FF0 05:AFE0: 09        .byte $09   ; 
- D 1 - I - 0x016FF1 05:AFE1: 0A        .byte $0A   ; 
- D 1 - I - 0x016FF2 05:AFE2: 05        .byte $05   ; 
- D 1 - I - 0x016FF3 05:AFE3: 00        .byte $00   ; 
- D 1 - I - 0x016FF4 05:AFE4: 81        .byte $81   ; 
- D 1 - I - 0x016FF5 05:AFE5: 02        .byte $02   ; 
- D 1 - I - 0x016FF6 05:AFE6: 04        .byte $04   ; 
- D 1 - I - 0x016FF7 05:AFE7: 00        .byte $00   ; 
- D 1 - I - 0x016FF8 05:AFE8: 81        .byte $81   ; 
- D 1 - I - 0x016FF9 05:AFE9: 0B        .byte $0B   ; 
- D 1 - I - 0x016FFA 05:AFEA: 03        .byte $03   ; 
- D 1 - I - 0x016FFB 05:AFEB: 00        .byte $00   ; 
- D 1 - I - 0x016FFC 05:AFEC: 81        .byte $81   ; 
- D 1 - I - 0x016FFD 05:AFED: 0C        .byte $0C   ; 
- D 1 - I - 0x016FFE 05:AFEE: 03        .byte $03   ; 
- D 1 - I - 0x016FFF 05:AFEF: 00        .byte $00   ; 
- D 1 - I - 0x017000 05:AFF0: 84        .byte $84   ; 
- D 1 - I - 0x017001 05:AFF1: 0D        .byte $0D   ; 
- D 1 - I - 0x017002 05:AFF2: 00        .byte $00   ; 
- D 1 - I - 0x017003 05:AFF3: 0E        .byte $0E   ; 
- D 1 - I - 0x017004 05:AFF4: 0F        .byte $0F   ; 
- D 1 - I - 0x017005 05:AFF5: 02        .byte $02   ; 
- D 1 - I - 0x017006 05:AFF6: 00        .byte $00   ; 
- D 1 - I - 0x017007 05:AFF7: 81        .byte $81   ; 
- D 1 - I - 0x017008 05:AFF8: 10        .byte $10   ; 
- D 1 - I - 0x017009 05:AFF9: 03        .byte $03   ; 
- D 1 - I - 0x01700A 05:AFFA: 00        .byte $00   ; 
- D 1 - I - 0x01700B 05:AFFB: 84        .byte $84   ; 
- D 1 - I - 0x01700C 05:AFFC: 11        .byte $11   ; 
- D 1 - I - 0x01700D 05:AFFD: 12        .byte $12   ; 
- D 1 - I - 0x01700E 05:AFFE: 13        .byte $13   ; 
- D 1 - I - 0x01700F 05:AFFF: 14        .byte $14   ; 
- D 1 - I - 0x017010 05:B000: 05        .byte $05   ; 
- D 1 - I - 0x017011 05:B001: 00        .byte $00   ; 
- D 1 - I - 0x017012 05:B002: 81        .byte $81   ; 
- D 1 - I - 0x017013 05:B003: 0C        .byte $0C   ; 
- D 1 - I - 0x017014 05:B004: 02        .byte $02   ; 
- D 1 - I - 0x017015 05:B005: 00        .byte $00   ; 
- D 1 - I - 0x017016 05:B006: 87        .byte $87   ; 
- D 1 - I - 0x017017 05:B007: 15        .byte $15   ; 
- D 1 - I - 0x017018 05:B008: 16        .byte $16   ; 
- D 1 - I - 0x017019 05:B009: 17        .byte $17   ; 
- D 1 - I - 0x01701A 05:B00A: 18        .byte $18   ; 
- D 1 - I - 0x01701B 05:B00B: 19        .byte $19   ; 
- D 1 - I - 0x01701C 05:B00C: 00        .byte $00   ; 
- D 1 - I - 0x01701D 05:B00D: 0C        .byte $0C   ; 
- D 1 - I - 0x01701E 05:B00E: 02        .byte $02   ; 
- D 1 - I - 0x01701F 05:B00F: 00        .byte $00   ; 
- D 1 - I - 0x017020 05:B010: 85        .byte $85   ; 
- D 1 - I - 0x017021 05:B011: 1A        .byte $1A   ; 
- D 1 - I - 0x017022 05:B012: 1B        .byte $1B   ; 
- D 1 - I - 0x017023 05:B013: 1C        .byte $1C   ; 
- D 1 - I - 0x017024 05:B014: 1D        .byte $1D   ; 
- D 1 - I - 0x017025 05:B015: 1E        .byte $1E   ; 
- D 1 - I - 0x017026 05:B016: 02        .byte $02   ; 
- D 1 - I - 0x017027 05:B017: 00        .byte $00   ; 
- D 1 - I - 0x017028 05:B018: 82        .byte $82   ; 
- D 1 - I - 0x017029 05:B019: 1F        .byte $1F   ; 
- D 1 - I - 0x01702A 05:B01A: 20        .byte $20   ; 
- D 1 - I - 0x01702B 05:B01B: 0B        .byte $0B   ; 
- D 1 - I - 0x01702C 05:B01C: 00        .byte $00   ; 
- D 1 - I - 0x01702D 05:B01D: 8A        .byte $8A   ; 
- D 1 - I - 0x01702E 05:B01E: 0C        .byte $0C   ; 
- D 1 - I - 0x01702F 05:B01F: 00        .byte $00   ; 
- D 1 - I - 0x017030 05:B020: 21        .byte $21   ; 
- D 1 - I - 0x017031 05:B021: 22        .byte $22   ; 
- D 1 - I - 0x017032 05:B022: 00        .byte $00   ; 
- D 1 - I - 0x017033 05:B023: 07        .byte $07   ; 
- D 1 - I - 0x017034 05:B024: 23        .byte $23   ; 
- D 1 - I - 0x017035 05:B025: 24        .byte $24   ; 
- D 1 - I - 0x017036 05:B026: 25        .byte $25   ; 
- D 1 - I - 0x017037 05:B027: 0C        .byte $0C   ; 
- D 1 - I - 0x017038 05:B028: 02        .byte $02   ; 
- D 1 - I - 0x017039 05:B029: 00        .byte $00   ; 
- D 1 - I - 0x01703A 05:B02A: 87        .byte $87   ; 
- D 1 - I - 0x01703B 05:B02B: 26        .byte $26   ; 
- D 1 - I - 0x01703C 05:B02C: 27        .byte $27   ; 
- D 1 - I - 0x01703D 05:B02D: 28        .byte $28   ; 
- D 1 - I - 0x01703E 05:B02E: 29        .byte $29   ; 
- D 1 - I - 0x01703F 05:B02F: 2A        .byte $2A   ; 
- D 1 - I - 0x017040 05:B030: 2B        .byte $2B   ; 
- D 1 - I - 0x017041 05:B031: 2C        .byte $2C   ; 
- D 1 - I - 0x017042 05:B032: 0D        .byte $0D   ; 
- D 1 - I - 0x017043 05:B033: 00        .byte $00   ; 
- D 1 - I - 0x017044 05:B034: 8A        .byte $8A   ; 
- D 1 - I - 0x017045 05:B035: 0C        .byte $0C   ; 
- D 1 - I - 0x017046 05:B036: 00        .byte $00   ; 
- D 1 - I - 0x017047 05:B037: 06        .byte $06   ; 
- D 1 - I - 0x017048 05:B038: 00        .byte $00   ; 
- D 1 - I - 0x017049 05:B039: 07        .byte $07   ; 
- D 1 - I - 0x01704A 05:B03A: 00        .byte $00   ; 
- D 1 - I - 0x01704B 05:B03B: 08        .byte $08   ; 
- D 1 - I - 0x01704C 05:B03C: 09        .byte $09   ; 
- D 1 - I - 0x01704D 05:B03D: 0A        .byte $0A   ; 
- D 1 - I - 0x01704E 05:B03E: 0C        .byte $0C   ; 
- D 1 - I - 0x01704F 05:B03F: 02        .byte $02   ; 
- D 1 - I - 0x017050 05:B040: 00        .byte $00   ; 
- D 1 - I - 0x017051 05:B041: 8D        .byte $8D   ; 
- D 1 - I - 0x017052 05:B042: 2D        .byte $2D   ; 
- D 1 - I - 0x017053 05:B043: 2E        .byte $2E   ; 
- D 1 - I - 0x017054 05:B044: 2F        .byte $2F   ; 
- D 1 - I - 0x017055 05:B045: 30        .byte $30   ; 
- D 1 - I - 0x017056 05:B046: 31        .byte $31   ; 
- D 1 - I - 0x017057 05:B047: 32        .byte $32   ; 
- D 1 - I - 0x017058 05:B048: 33        .byte $33   ; 
- D 1 - I - 0x017059 05:B049: 34        .byte $34   ; 
- D 1 - I - 0x01705A 05:B04A: 00        .byte $00   ; 
- D 1 - I - 0x01705B 05:B04B: 35        .byte $35   ; 
- D 1 - I - 0x01705C 05:B04C: 1F        .byte $1F   ; 
- D 1 - I - 0x01705D 05:B04D: 20        .byte $20   ; 
- D 1 - I - 0x01705E 05:B04E: 36        .byte $36   ; 
- D 1 - I - 0x01705F 05:B04F: 06        .byte $06   ; 
- D 1 - I - 0x017060 05:B050: 00        .byte $00   ; 
- D 1 - I - 0x017061 05:B051: 83        .byte $83   ; 
- D 1 - I - 0x017062 05:B052: 10        .byte $10   ; 
- D 1 - I - 0x017063 05:B053: 0C        .byte $0C   ; 
- D 1 - I - 0x017064 05:B054: 10        .byte $10   ; 
- D 1 - I - 0x017065 05:B055: 03        .byte $03   ; 
- D 1 - I - 0x017066 05:B056: 00        .byte $00   ; 
- D 1 - I - 0x017067 05:B057: 92        .byte $92   ; 
- D 1 - I - 0x017068 05:B058: 11        .byte $11   ; 
- D 1 - I - 0x017069 05:B059: 12        .byte $12   ; 
- D 1 - I - 0x01706A 05:B05A: 13        .byte $13   ; 
- D 1 - I - 0x01706B 05:B05B: 14        .byte $14   ; 
- D 1 - I - 0x01706C 05:B05C: 37        .byte $37   ; 
- D 1 - I - 0x01706D 05:B05D: 00        .byte $00   ; 
- D 1 - I - 0x01706E 05:B05E: 38        .byte $38   ; 
- D 1 - I - 0x01706F 05:B05F: 39        .byte $39   ; 
- D 1 - I - 0x017070 05:B060: 3A        .byte $3A   ; 
- D 1 - I - 0x017071 05:B061: 3B        .byte $3B   ; 
- D 1 - I - 0x017072 05:B062: 3C        .byte $3C   ; 
- D 1 - I - 0x017073 05:B063: 3D        .byte $3D   ; 
- D 1 - I - 0x017074 05:B064: 3E        .byte $3E   ; 
- D 1 - I - 0x017075 05:B065: 3F        .byte $3F   ; 
- D 1 - I - 0x017076 05:B066: 40        .byte $40   ; 
- D 1 - I - 0x017077 05:B067: 41        .byte $41   ; 
- D 1 - I - 0x017078 05:B068: 42        .byte $42   ; 
- D 1 - I - 0x017079 05:B069: 36        .byte $36   ; 
- D 1 - I - 0x01707A 05:B06A: 02        .byte $02   ; 
- D 1 - I - 0x01707B 05:B06B: 00        .byte $00   ; 
- D 1 - I - 0x01707C 05:B06C: 82        .byte $82   ; 
- D 1 - I - 0x01707D 05:B06D: 43        .byte $43   ; 
- D 1 - I - 0x01707E 05:B06E: 36        .byte $36   ; 
- D 1 - I - 0x01707F 05:B06F: 04        .byte $04   ; 
- D 1 - I - 0x017080 05:B070: 00        .byte $00   ; 
- D 1 - I - 0x017081 05:B071: 82        .byte $82   ; 
- D 1 - I - 0x017082 05:B072: 10        .byte $10   ; 
- D 1 - I - 0x017083 05:B073: 0C        .byte $0C   ; 
- D 1 - I - 0x017084 05:B074: 03        .byte $03   ; 
- D 1 - I - 0x017085 05:B075: 10        .byte $10   ; 
- D 1 - I - 0x017086 05:B076: 07        .byte $07   ; 
- D 1 - I - 0x017087 05:B077: 00        .byte $00   ; 
- D 1 - I - 0x017088 05:B078: 8E        .byte $8E   ; 
- D 1 - I - 0x017089 05:B079: 44        .byte $44   ; 
- D 1 - I - 0x01708A 05:B07A: 45        .byte $45   ; 
- D 1 - I - 0x01708B 05:B07B: 46        .byte $46   ; 
- D 1 - I - 0x01708C 05:B07C: 47        .byte $47   ; 
- D 1 - I - 0x01708D 05:B07D: 48        .byte $48   ; 
- D 1 - I - 0x01708E 05:B07E: 49        .byte $49   ; 
- D 1 - I - 0x01708F 05:B07F: 4A        .byte $4A   ; 
- D 1 - I - 0x017090 05:B080: 4B        .byte $4B   ; 
- D 1 - I - 0x017091 05:B081: 4C        .byte $4C   ; 
- D 1 - I - 0x017092 05:B082: 00        .byte $00   ; 
- D 1 - I - 0x017093 05:B083: 4D        .byte $4D   ; 
- D 1 - I - 0x017094 05:B084: 00        .byte $00   ; 
- D 1 - I - 0x017095 05:B085: 43        .byte $43   ; 
- D 1 - I - 0x017096 05:B086: 36        .byte $36   ; 
- D 1 - I - 0x017097 05:B087: 05        .byte $05   ; 
- D 1 - I - 0x017098 05:B088: 00        .byte $00   ; 
- D 1 - I - 0x017099 05:B089: 02        .byte $02   ; 
- D 1 - I - 0x01709A 05:B08A: 10        .byte $10   ; 
- D 1 - I - 0x01709B 05:B08B: 81        .byte $81   ; 
- D 1 - I - 0x01709C 05:B08C: 0C        .byte $0C   ; 
- D 1 - I - 0x01709D 05:B08D: 02        .byte $02   ; 
- D 1 - I - 0x01709E 05:B08E: 10        .byte $10   ; 
- D 1 - I - 0x01709F 05:B08F: 02        .byte $02   ; 
- D 1 - I - 0x0170A0 05:B090: 00        .byte $00   ; 
- D 1 - I - 0x0170A1 05:B091: 83        .byte $83   ; 
- D 1 - I - 0x0170A2 05:B092: 35        .byte $35   ; 
- D 1 - I - 0x0170A3 05:B093: 1F        .byte $1F   ; 
- D 1 - I - 0x0170A4 05:B094: 20        .byte $20   ; 
- D 1 - I - 0x0170A5 05:B095: 03        .byte $03   ; 
- D 1 - I - 0x0170A6 05:B096: 00        .byte $00   ; 
- D 1 - I - 0x0170A7 05:B097: 8B        .byte $8B   ; 
- D 1 - I - 0x0170A8 05:B098: 4E        .byte $4E   ; 
- D 1 - I - 0x0170A9 05:B099: 4F        .byte $4F   ; 
- D 1 - I - 0x0170AA 05:B09A: 50        .byte $50   ; 
- D 1 - I - 0x0170AB 05:B09B: 51        .byte $51   ; 
- D 1 - I - 0x0170AC 05:B09C: 52        .byte $52   ; 
- D 1 - I - 0x0170AD 05:B09D: 53        .byte $53   ; 
- D 1 - I - 0x0170AE 05:B09E: 54        .byte $54   ; 
- D 1 - I - 0x0170AF 05:B09F: 55        .byte $55   ; 
- D 1 - I - 0x0170B0 05:B0A0: 56        .byte $56   ; 
- D 1 - I - 0x0170B1 05:B0A1: 00        .byte $00   ; 
- D 1 - I - 0x0170B2 05:B0A2: 57        .byte $57   ; 
- D 1 - I - 0x0170B3 05:B0A3: 07        .byte $07   ; 
- D 1 - I - 0x0170B4 05:B0A4: 00        .byte $00   ; 
- D 1 - I - 0x0170B5 05:B0A5: 02        .byte $02   ; 
- D 1 - I - 0x0170B6 05:B0A6: 10        .byte $10   ; 
- D 1 - I - 0x0170B7 05:B0A7: 82        .byte $82   ; 
- D 1 - I - 0x0170B8 05:B0A8: 00        .byte $00   ; 
- D 1 - I - 0x0170B9 05:B0A9: 37        .byte $37   ; 
- D 1 - I - 0x0170BA 05:B0AA: 0A        .byte $0A   ; 
- D 1 - I - 0x0170BB 05:B0AB: 00        .byte $00   ; 
- D 1 - I - 0x0170BC 05:B0AC: 8A        .byte $8A   ; 
- D 1 - I - 0x0170BD 05:B0AD: 58        .byte $58   ; 
- D 1 - I - 0x0170BE 05:B0AE: 59        .byte $59   ; 
- D 1 - I - 0x0170BF 05:B0AF: 5A        .byte $5A   ; 
- D 1 - I - 0x0170C0 05:B0B0: 5B        .byte $5B   ; 
- D 1 - I - 0x0170C1 05:B0B1: 5C        .byte $5C   ; 
- D 1 - I - 0x0170C2 05:B0B2: 5D        .byte $5D   ; 
- D 1 - I - 0x0170C3 05:B0B3: 5E        .byte $5E   ; 
- D 1 - I - 0x0170C4 05:B0B4: 5F        .byte $5F   ; 
- D 1 - I - 0x0170C5 05:B0B5: 60        .byte $60   ; 
- D 1 - I - 0x0170C6 05:B0B6: 61        .byte $61   ; 
- D 1 - I - 0x0170C7 05:B0B7: 07        .byte $07   ; 
- D 1 - I - 0x0170C8 05:B0B8: 00        .byte $00   ; 
- D 1 - I - 0x0170C9 05:B0B9: 02        .byte $02   ; 
- D 1 - I - 0x0170CA 05:B0BA: 10        .byte $10   ; 
- D 1 - I - 0x0170CB 05:B0BB: 09        .byte $09   ; 
- D 1 - I - 0x0170CC 05:B0BC: 00        .byte $00   ; 
- D 1 - I - 0x0170CD 05:B0BD: 90        .byte $90   ; 
- D 1 - I - 0x0170CE 05:B0BE: 35        .byte $35   ; 
- D 1 - I - 0x0170CF 05:B0BF: 1F        .byte $1F   ; 
- D 1 - I - 0x0170D0 05:B0C0: 20        .byte $20   ; 
- D 1 - I - 0x0170D1 05:B0C1: 00        .byte $00   ; 
- D 1 - I - 0x0170D2 05:B0C2: 62        .byte $62   ; 
- D 1 - I - 0x0170D3 05:B0C3: 63        .byte $63   ; 
- D 1 - I - 0x0170D4 05:B0C4: 64        .byte $64   ; 
- D 1 - I - 0x0170D5 05:B0C5: 65        .byte $65   ; 
- D 1 - I - 0x0170D6 05:B0C6: 66        .byte $66   ; 
- D 1 - I - 0x0170D7 05:B0C7: 67        .byte $67   ; 
- D 1 - I - 0x0170D8 05:B0C8: 68        .byte $68   ; 
- D 1 - I - 0x0170D9 05:B0C9: 69        .byte $69   ; 
- D 1 - I - 0x0170DA 05:B0CA: 00        .byte $00   ; 
- D 1 - I - 0x0170DB 05:B0CB: 6A        .byte $6A   ; 
- D 1 - I - 0x0170DC 05:B0CC: 6B        .byte $6B   ; 
- D 1 - I - 0x0170DD 05:B0CD: 6C        .byte $6C   ; 
- D 1 - I - 0x0170DE 05:B0CE: 05        .byte $05   ; 
- D 1 - I - 0x0170DF 05:B0CF: 00        .byte $00   ; 
- D 1 - I - 0x0170E0 05:B0D0: 8B        .byte $8B   ; 
- D 1 - I - 0x0170E1 05:B0D1: 35        .byte $35   ; 
- D 1 - I - 0x0170E2 05:B0D2: 1F        .byte $1F   ; 
- D 1 - I - 0x0170E3 05:B0D3: 20        .byte $20   ; 
- D 1 - I - 0x0170E4 05:B0D4: 00        .byte $00   ; 
- D 1 - I - 0x0170E5 05:B0D5: 6D        .byte $6D   ; 
- D 1 - I - 0x0170E6 05:B0D6: 6E        .byte $6E   ; 
- D 1 - I - 0x0170E7 05:B0D7: 6D        .byte $6D   ; 
- D 1 - I - 0x0170E8 05:B0D8: 6E        .byte $6E   ; 
- D 1 - I - 0x0170E9 05:B0D9: 00        .byte $00   ; 
- D 1 - I - 0x0170EA 05:B0DA: 1F        .byte $1F   ; 
- D 1 - I - 0x0170EB 05:B0DB: 20        .byte $20   ; 
- D 1 - I - 0x0170EC 05:B0DC: 04        .byte $04   ; 
- D 1 - I - 0x0170ED 05:B0DD: 00        .byte $00   ; 
- D 1 - I - 0x0170EE 05:B0DE: 8D        .byte $8D   ; 
- D 1 - I - 0x0170EF 05:B0DF: 6F        .byte $6F   ; 
- D 1 - I - 0x0170F0 05:B0E0: 70        .byte $70   ; 
- D 1 - I - 0x0170F1 05:B0E1: 71        .byte $71   ; 
- D 1 - I - 0x0170F2 05:B0E2: 72        .byte $72   ; 
- D 1 - I - 0x0170F3 05:B0E3: 73        .byte $73   ; 
- D 1 - I - 0x0170F4 05:B0E4: 74        .byte $74   ; 
- D 1 - I - 0x0170F5 05:B0E5: 75        .byte $75   ; 
- D 1 - I - 0x0170F6 05:B0E6: 76        .byte $76   ; 
- D 1 - I - 0x0170F7 05:B0E7: 77        .byte $77   ; 
- D 1 - I - 0x0170F8 05:B0E8: 78        .byte $78   ; 
- D 1 - I - 0x0170F9 05:B0E9: 79        .byte $79   ; 
- D 1 - I - 0x0170FA 05:B0EA: 7A        .byte $7A   ; 
- D 1 - I - 0x0170FB 05:B0EB: 7B        .byte $7B   ; 
- D 1 - I - 0x0170FC 05:B0EC: 08        .byte $08   ; 
- D 1 - I - 0x0170FD 05:B0ED: 00        .byte $00   ; 
- D 1 - I - 0x0170FE 05:B0EE: 84        .byte $84   ; 
- D 1 - I - 0x0170FF 05:B0EF: 01        .byte $01   ; 
- D 1 - I - 0x017100 05:B0F0: 02        .byte $02   ; 
- D 1 - I - 0x017101 05:B0F1: 01        .byte $01   ; 
- D 1 - I - 0x017102 05:B0F2: 02        .byte $02   ; 
- D 1 - I - 0x017103 05:B0F3: 07        .byte $07   ; 
- D 1 - I - 0x017104 05:B0F4: 00        .byte $00   ; 
- D 1 - I - 0x017105 05:B0F5: 8A        .byte $8A   ; 
- D 1 - I - 0x017106 05:B0F6: 03        .byte $03   ; 
- D 1 - I - 0x017107 05:B0F7: 04        .byte $04   ; 
- D 1 - I - 0x017108 05:B0F8: 05        .byte $05   ; 
- D 1 - I - 0x017109 05:B0F9: 06        .byte $06   ; 
- D 1 - I - 0x01710A 05:B0FA: 07        .byte $07   ; 
- D 1 - I - 0x01710B 05:B0FB: 08        .byte $08   ; 
- D 1 - I - 0x01710C 05:B0FC: 09        .byte $09   ; 
- D 1 - I - 0x01710D 05:B0FD: 0A        .byte $0A   ; 
- D 1 - I - 0x01710E 05:B0FE: 0B        .byte $0B   ; 
- D 1 - I - 0x01710F 05:B0FF: 0C        .byte $0C   ; 
- D 1 - I - 0x017110 05:B100: 02        .byte $02   ; 
- D 1 - I - 0x017111 05:B101: 00        .byte $00   ; 
- D 1 - I - 0x017112 05:B102: 84        .byte $84   ; 
- D 1 - I - 0x017113 05:B103: 0D        .byte $0D   ; 
- D 1 - I - 0x017114 05:B104: 0E        .byte $0E   ; 
- D 1 - I - 0x017115 05:B105: 0F        .byte $0F   ; 
- D 1 - I - 0x017116 05:B106: 10        .byte $10   ; 
- D 1 - I - 0x017117 05:B107: 0D        .byte $0D   ; 
- D 1 - I - 0x017118 05:B108: 11        .byte $11   ; 
- D 1 - I - 0x017119 05:B109: 81        .byte $81   ; 
- D 1 - I - 0x01711A 05:B10A: 12        .byte $12   ; 
- D 1 - I - 0x01711B 05:B10B: 03        .byte $03   ; 
- D 1 - I - 0x01711C 05:B10C: 00        .byte $00   ; 
- D 1 - I - 0x01711D 05:B10D: 8F        .byte $8F   ; 
- D 1 - I - 0x01711E 05:B10E: 13        .byte $13   ; 
- D 1 - I - 0x01711F 05:B10F: 14        .byte $14   ; 
- D 1 - I - 0x017120 05:B110: 15        .byte $15   ; 
- D 1 - I - 0x017121 05:B111: 16        .byte $16   ; 
- D 1 - I - 0x017122 05:B112: 17        .byte $17   ; 
- D 1 - I - 0x017123 05:B113: 18        .byte $18   ; 
- D 1 - I - 0x017124 05:B114: 19        .byte $19   ; 
- D 1 - I - 0x017125 05:B115: 1A        .byte $1A   ; 
- D 1 - I - 0x017126 05:B116: 1B        .byte $1B   ; 
- D 1 - I - 0x017127 05:B117: 1C        .byte $1C   ; 
- D 1 - I - 0x017128 05:B118: 1D        .byte $1D   ; 
- D 1 - I - 0x017129 05:B119: 1E        .byte $1E   ; 
- D 1 - I - 0x01712A 05:B11A: 1F        .byte $1F   ; 
- D 1 - I - 0x01712B 05:B11B: 20        .byte $20   ; 
- D 1 - I - 0x01712C 05:B11C: 21        .byte $21   ; 
- D 1 - I - 0x01712D 05:B11D: 0C        .byte $0C   ; 
- D 1 - I - 0x01712E 05:B11E: 22        .byte $22   ; 
- D 1 - I - 0x01712F 05:B11F: 82        .byte $82   ; 
- D 1 - I - 0x017130 05:B120: 23        .byte $23   ; 
- D 1 - I - 0x017131 05:B121: 24        .byte $24   ; 
- D 1 - I - 0x017132 05:B122: 04        .byte $04   ; 
- D 1 - I - 0x017133 05:B123: 00        .byte $00   ; 
- D 1 - I - 0x017134 05:B124: 8C        .byte $8C   ; 
- D 1 - I - 0x017135 05:B125: 25        .byte $25   ; 
- D 1 - I - 0x017136 05:B126: 26        .byte $26   ; 
- D 1 - I - 0x017137 05:B127: 27        .byte $27   ; 
- D 1 - I - 0x017138 05:B128: 28        .byte $28   ; 
- D 1 - I - 0x017139 05:B129: 29        .byte $29   ; 
- D 1 - I - 0x01713A 05:B12A: 00        .byte $00   ; 
- D 1 - I - 0x01713B 05:B12B: 2A        .byte $2A   ; 
- D 1 - I - 0x01713C 05:B12C: 2B        .byte $2B   ; 
- D 1 - I - 0x01713D 05:B12D: 2C        .byte $2C   ; 
- D 1 - I - 0x01713E 05:B12E: 2D        .byte $2D   ; 
- D 1 - I - 0x01713F 05:B12F: 2E        .byte $2E   ; 
- D 1 - I - 0x017140 05:B130: 2F        .byte $2F   ; 
- D 1 - I - 0x017141 05:B131: 02        .byte $02   ; 
- D 1 - I - 0x017142 05:B132: 00        .byte $00   ; 
- D 1 - I - 0x017143 05:B133: 0A        .byte $0A   ; 
- D 1 - I - 0x017144 05:B134: 30        .byte $30   ; 
- D 1 - I - 0x017145 05:B135: 84        .byte $84   ; 
- D 1 - I - 0x017146 05:B136: 31        .byte $31   ; 
- D 1 - I - 0x017147 05:B137: 32        .byte $32   ; 
- D 1 - I - 0x017148 05:B138: 33        .byte $33   ; 
- D 1 - I - 0x017149 05:B139: 24        .byte $24   ; 
- D 1 - I - 0x01714A 05:B13A: 02        .byte $02   ; 
- D 1 - I - 0x01714B 05:B13B: 00        .byte $00   ; 
- D 1 - I - 0x01714C 05:B13C: 81        .byte $81   ; 
- D 1 - I - 0x01714D 05:B13D: 34        .byte $34   ; 
- D 1 - I - 0x01714E 05:B13E: 02        .byte $02   ; 
- D 1 - I - 0x01714F 05:B13F: 00        .byte $00   ; 
- D 1 - I - 0x017150 05:B140: 8A        .byte $8A   ; 
- D 1 - I - 0x017151 05:B141: 35        .byte $35   ; 
- D 1 - I - 0x017152 05:B142: 36        .byte $36   ; 
- D 1 - I - 0x017153 05:B143: 37        .byte $37   ; 
- D 1 - I - 0x017154 05:B144: 38        .byte $38   ; 
- D 1 - I - 0x017155 05:B145: 00        .byte $00   ; 
- D 1 - I - 0x017156 05:B146: 39        .byte $39   ; 
- D 1 - I - 0x017157 05:B147: 3A        .byte $3A   ; 
- D 1 - I - 0x017158 05:B148: 3B        .byte $3B   ; 
- D 1 - I - 0x017159 05:B149: 3C        .byte $3C   ; 
- D 1 - I - 0x01715A 05:B14A: 3D        .byte $3D   ; 
- D 1 - I - 0x01715B 05:B14B: 03        .byte $03   ; 
- D 1 - I - 0x01715C 05:B14C: 00        .byte $00   ; 
- D 1 - I - 0x01715D 05:B14D: 87        .byte $87   ; 
- D 1 - I - 0x01715E 05:B14E: 3E        .byte $3E   ; 
- D 1 - I - 0x01715F 05:B14F: 3F        .byte $3F   ; 
- D 1 - I - 0x017160 05:B150: 40        .byte $40   ; 
- D 1 - I - 0x017161 05:B151: 41        .byte $41   ; 
- D 1 - I - 0x017162 05:B152: 42        .byte $42   ; 
- D 1 - I - 0x017163 05:B153: 43        .byte $43   ; 
- D 1 - I - 0x017164 05:B154: 44        .byte $44   ; 
- D 1 - I - 0x017165 05:B155: 04        .byte $04   ; 
- D 1 - I - 0x017166 05:B156: 45        .byte $45   ; 
- D 1 - I - 0x017167 05:B157: 83        .byte $83   ; 
- D 1 - I - 0x017168 05:B158: 46        .byte $46   ; 
- D 1 - I - 0x017169 05:B159: 33        .byte $33   ; 
- D 1 - I - 0x01716A 05:B15A: 24        .byte $24   ; 
- D 1 - I - 0x01716B 05:B15B: 02        .byte $02   ; 
- D 1 - I - 0x01716C 05:B15C: 00        .byte $00   ; 
- D 1 - I - 0x01716D 05:B15D: 82        .byte $82   ; 
- D 1 - I - 0x01716E 05:B15E: 47        .byte $47   ; 
- D 1 - I - 0x01716F 05:B15F: 48        .byte $48   ; 
- D 1 - I - 0x017170 05:B160: 02        .byte $02   ; 
- D 1 - I - 0x017171 05:B161: 00        .byte $00   ; 
- D 1 - I - 0x017172 05:B162: 86        .byte $86   ; 
- D 1 - I - 0x017173 05:B163: 49        .byte $49   ; 
- D 1 - I - 0x017174 05:B164: 4A        .byte $4A   ; 
- D 1 - I - 0x017175 05:B165: 4B        .byte $4B   ; 
- D 1 - I - 0x017176 05:B166: 00        .byte $00   ; 
- D 1 - I - 0x017177 05:B167: 4C        .byte $4C   ; 
- D 1 - I - 0x017178 05:B168: 4D        .byte $4D   ; 
- D 1 - I - 0x017179 05:B169: 06        .byte $06   ; 
- D 1 - I - 0x01717A 05:B16A: 00        .byte $00   ; 
- D 1 - I - 0x01717B 05:B16B: 85        .byte $85   ; 
- D 1 - I - 0x01717C 05:B16C: 45        .byte $45   ; 
- D 1 - I - 0x01717D 05:B16D: 4E        .byte $4E   ; 
- D 1 - I - 0x01717E 05:B16E: 4F        .byte $4F   ; 
- D 1 - I - 0x01717F 05:B16F: 50        .byte $50   ; 
- D 1 - I - 0x017180 05:B170: 51        .byte $51   ; 
- D 1 - I - 0x017181 05:B171: 06        .byte $06   ; 
- D 1 - I - 0x017182 05:B172: 45        .byte $45   ; 
- D 1 - I - 0x017183 05:B173: 83        .byte $83   ; 
- D 1 - I - 0x017184 05:B174: 52        .byte $52   ; 
- D 1 - I - 0x017185 05:B175: 33        .byte $33   ; 
- D 1 - I - 0x017186 05:B176: 24        .byte $24   ; 
- D 1 - I - 0x017187 05:B177: 02        .byte $02   ; 
- D 1 - I - 0x017188 05:B178: 00        .byte $00   ; 
- D 1 - I - 0x017189 05:B179: 8B        .byte $8B   ; 
- D 1 - I - 0x01718A 05:B17A: 53        .byte $53   ; 
- D 1 - I - 0x01718B 05:B17B: 54        .byte $54   ; 
- D 1 - I - 0x01718C 05:B17C: 00        .byte $00   ; 
- D 1 - I - 0x01718D 05:B17D: 55        .byte $55   ; 
- D 1 - I - 0x01718E 05:B17E: 56        .byte $56   ; 
- D 1 - I - 0x01718F 05:B17F: 57        .byte $57   ; 
- D 1 - I - 0x017190 05:B180: 58        .byte $58   ; 
- D 1 - I - 0x017191 05:B181: 00        .byte $00   ; 
- D 1 - I - 0x017192 05:B182: 59        .byte $59   ; 
- D 1 - I - 0x017193 05:B183: 5A        .byte $5A   ; 
- D 1 - I - 0x017194 05:B184: 5B        .byte $5B   ; 
- D 1 - I - 0x017195 05:B185: 05        .byte $05   ; 
- D 1 - I - 0x017196 05:B186: 00        .byte $00   ; 
- D 1 - I - 0x017197 05:B187: 04        .byte $04   ; 
- D 1 - I - 0x017198 05:B188: 45        .byte $45   ; 
- D 1 - I - 0x017199 05:B189: 81        .byte $81   ; 
- D 1 - I - 0x01719A 05:B18A: 51        .byte $51   ; 
- D 1 - I - 0x01719B 05:B18B: 06        .byte $06   ; 
- D 1 - I - 0x01719C 05:B18C: 45        .byte $45   ; 
- D 1 - I - 0x01719D 05:B18D: 83        .byte $83   ; 
- D 1 - I - 0x01719E 05:B18E: 52        .byte $52   ; 
- D 1 - I - 0x01719F 05:B18F: 33        .byte $33   ; 
- D 1 - I - 0x0171A0 05:B190: 24        .byte $24   ; 
- D 1 - I - 0x0171A1 05:B191: 05        .byte $05   ; 
- D 1 - I - 0x0171A2 05:B192: 00        .byte $00   ; 
- D 1 - I - 0x0171A3 05:B193: 84        .byte $84   ; 
- D 1 - I - 0x0171A4 05:B194: 55        .byte $55   ; 
- D 1 - I - 0x0171A5 05:B195: 00        .byte $00   ; 
- D 1 - I - 0x0171A6 05:B196: 5C        .byte $5C   ; 
- D 1 - I - 0x0171A7 05:B197: 5D        .byte $5D   ; 
- D 1 - I - 0x0171A8 05:B198: 02        .byte $02   ; 
- D 1 - I - 0x0171A9 05:B199: 00        .byte $00   ; 
- D 1 - I - 0x0171AA 05:B19A: 83        .byte $83   ; 
- D 1 - I - 0x0171AB 05:B19B: 5E        .byte $5E   ; 
- D 1 - I - 0x0171AC 05:B19C: 5F        .byte $5F   ; 
- D 1 - I - 0x0171AD 05:B19D: 60        .byte $60   ; 
- D 1 - I - 0x0171AE 05:B19E: 04        .byte $04   ; 
- D 1 - I - 0x0171AF 05:B19F: 00        .byte $00   ; 
- D 1 - I - 0x0171B0 05:B1A0: 0B        .byte $0B   ; 
- D 1 - I - 0x0171B1 05:B1A1: 45        .byte $45   ; 
- D 1 - I - 0x0171B2 05:B1A2: 83        .byte $83   ; 
- D 1 - I - 0x0171B3 05:B1A3: 52        .byte $52   ; 
- D 1 - I - 0x0171B4 05:B1A4: 33        .byte $33   ; 
- D 1 - I - 0x0171B5 05:B1A5: 24        .byte $24   ; 
- D 1 - I - 0x0171B6 05:B1A6: 05        .byte $05   ; 
- D 1 - I - 0x0171B7 05:B1A7: 00        .byte $00   ; 
- D 1 - I - 0x0171B8 05:B1A8: 81        .byte $81   ; 
- D 1 - I - 0x0171B9 05:B1A9: 55        .byte $55   ; 
- D 1 - I - 0x0171BA 05:B1AA: 02        .byte $02   ; 
- D 1 - I - 0x0171BB 05:B1AB: 00        .byte $00   ; 
- D 1 - I - 0x0171BC 05:B1AC: 82        .byte $82   ; 
- D 1 - I - 0x0171BD 05:B1AD: 63        .byte $63   ; 
- D 1 - I - 0x0171BE 05:B1AE: 64        .byte $64   ; 
- D 1 - I - 0x0171BF 05:B1AF: 02        .byte $02   ; 
- D 1 - I - 0x0171C0 05:B1B0: 00        .byte $00   ; 
- D 1 - I - 0x0171C1 05:B1B1: 82        .byte $82   ; 
- D 1 - I - 0x0171C2 05:B1B2: 65        .byte $65   ; 
- D 1 - I - 0x0171C3 05:B1B3: 3D        .byte $3D   ; 
- D 1 - I - 0x0171C4 05:B1B4: 04        .byte $04   ; 
- D 1 - I - 0x0171C5 05:B1B5: 00        .byte $00   ; 
- D 1 - I - 0x0171C6 05:B1B6: 08        .byte $08   ; 
- D 1 - I - 0x0171C7 05:B1B7: 61        .byte $61   ; 
- D 1 - I - 0x0171C8 05:B1B8: 81        .byte $81   ; 
- D 1 - I - 0x0171C9 05:B1B9: 62        .byte $62   ; 
- D 1 - I - 0x0171CA 05:B1BA: 02        .byte $02   ; 
- D 1 - I - 0x0171CB 05:B1BB: 45        .byte $45   ; 
- D 1 - I - 0x0171CC 05:B1BC: 83        .byte $83   ; 
- D 1 - I - 0x0171CD 05:B1BD: 52        .byte $52   ; 
- D 1 - I - 0x0171CE 05:B1BE: 33        .byte $33   ; 
- D 1 - I - 0x0171CF 05:B1BF: 24        .byte $24   ; 
- D 1 - I - 0x0171D0 05:B1C0: 07        .byte $07   ; 
- D 1 - I - 0x0171D1 05:B1C1: 00        .byte $00   ; 
- D 1 - I - 0x0171D2 05:B1C2: 84        .byte $84   ; 
- D 1 - I - 0x0171D3 05:B1C3: 67        .byte $67   ; 
- D 1 - I - 0x0171D4 05:B1C4: 68        .byte $68   ; 
- D 1 - I - 0x0171D5 05:B1C5: 69        .byte $69   ; 
- D 1 - I - 0x0171D6 05:B1C6: 6A        .byte $6A   ; 
- D 1 - I - 0x0171D7 05:B1C7: 0F        .byte $0F   ; 
- D 1 - I - 0x0171D8 05:B1C8: 00        .byte $00   ; 
- D 1 - I - 0x0171D9 05:B1C9: 81        .byte $81   ; 
- D 1 - I - 0x0171DA 05:B1CA: 66        .byte $66   ; 
- D 1 - I - 0x0171DB 05:B1CB: 02        .byte $02   ; 
- D 1 - I - 0x0171DC 05:B1CC: 45        .byte $45   ; 
- D 1 - I - 0x0171DD 05:B1CD: 83        .byte $83   ; 
- D 1 - I - 0x0171DE 05:B1CE: 52        .byte $52   ; 
- D 1 - I - 0x0171DF 05:B1CF: 33        .byte $33   ; 
- D 1 - I - 0x0171E0 05:B1D0: 24        .byte $24   ; 
- D 1 - I - 0x0171E1 05:B1D1: 07        .byte $07   ; 
- D 1 - I - 0x0171E2 05:B1D2: 00        .byte $00   ; 
- D 1 - I - 0x0171E3 05:B1D3: 84        .byte $84   ; 
- D 1 - I - 0x0171E4 05:B1D4: 6C        .byte $6C   ; 
- D 1 - I - 0x0171E5 05:B1D5: 00        .byte $00   ; 
- D 1 - I - 0x0171E6 05:B1D6: 6D        .byte $6D   ; 
- D 1 - I - 0x0171E7 05:B1D7: 6E        .byte $6E   ; 
- D 1 - I - 0x0171E8 05:B1D8: 0F        .byte $0F   ; 
- D 1 - I - 0x0171E9 05:B1D9: 00        .byte $00   ; 
- D 1 - I - 0x0171EA 05:B1DA: 81        .byte $81   ; 
- D 1 - I - 0x0171EB 05:B1DB: 6B        .byte $6B   ; 
- D 1 - I - 0x0171EC 05:B1DC: 02        .byte $02   ; 
- D 1 - I - 0x0171ED 05:B1DD: 45        .byte $45   ; 
- D 1 - I - 0x0171EE 05:B1DE: 83        .byte $83   ; 
- D 1 - I - 0x0171EF 05:B1DF: 52        .byte $52   ; 
- D 1 - I - 0x0171F0 05:B1E0: 33        .byte $33   ; 
- D 1 - I - 0x0171F1 05:B1E1: 24        .byte $24   ; 
- D 1 - I - 0x0171F2 05:B1E2: 0A        .byte $0A   ; 
- D 1 - I - 0x0171F3 05:B1E3: 00        .byte $00   ; 
- D 1 - I - 0x0171F4 05:B1E4: 81        .byte $81   ; 
- D 1 - I - 0x0171F5 05:B1E5: 6F        .byte $6F   ; 
- D 1 - I - 0x0171F6 05:B1E6: 0F        .byte $0F   ; 
- D 1 - I - 0x0171F7 05:B1E7: 00        .byte $00   ; 
- D 1 - I - 0x0171F8 05:B1E8: 81        .byte $81   ; 
- D 1 - I - 0x0171F9 05:B1E9: 6B        .byte $6B   ; 
- D 1 - I - 0x0171FA 05:B1EA: 02        .byte $02   ; 
- D 1 - I - 0x0171FB 05:B1EB: 45        .byte $45   ; 
- D 1 - I - 0x0171FC 05:B1EC: 83        .byte $83   ; 
- D 1 - I - 0x0171FD 05:B1ED: 52        .byte $52   ; 
- D 1 - I - 0x0171FE 05:B1EE: 33        .byte $33   ; 
- D 1 - I - 0x0171FF 05:B1EF: 24        .byte $24   ; 
- D 1 - I - 0x017200 05:B1F0: 1A        .byte $1A   ; 
- D 1 - I - 0x017201 05:B1F1: 00        .byte $00   ; 
- D 1 - I - 0x017202 05:B1F2: 81        .byte $81   ; 
- D 1 - I - 0x017203 05:B1F3: 6B        .byte $6B   ; 
- D 1 - I - 0x017204 05:B1F4: 02        .byte $02   ; 
- D 1 - I - 0x017205 05:B1F5: 45        .byte $45   ; 
- D 1 - I - 0x017206 05:B1F6: 83        .byte $83   ; 
- D 1 - I - 0x017207 05:B1F7: 52        .byte $52   ; 
- D 1 - I - 0x017208 05:B1F8: 33        .byte $33   ; 
- D 1 - I - 0x017209 05:B1F9: 24        .byte $24   ; 
- D 1 - I - 0x01720A 05:B1FA: 1A        .byte $1A   ; 
- D 1 - I - 0x01720B 05:B1FB: 00        .byte $00   ; 
- D 1 - I - 0x01720C 05:B1FC: 81        .byte $81   ; 
- D 1 - I - 0x01720D 05:B1FD: 6B        .byte $6B   ; 
- D 1 - I - 0x01720E 05:B1FE: 02        .byte $02   ; 
- D 1 - I - 0x01720F 05:B1FF: 45        .byte $45   ; 
- D 1 - I - 0x017210 05:B200: 83        .byte $83   ; 
- D 1 - I - 0x017211 05:B201: 52        .byte $52   ; 
- D 1 - I - 0x017212 05:B202: 33        .byte $33   ; 
- D 1 - I - 0x017213 05:B203: 24        .byte $24   ; 
- D 1 - I - 0x017214 05:B204: 1A        .byte $1A   ; 
- D 1 - I - 0x017215 05:B205: 00        .byte $00   ; 
- D 1 - I - 0x017216 05:B206: 81        .byte $81   ; 
- D 1 - I - 0x017217 05:B207: 66        .byte $66   ; 
- D 1 - I - 0x017218 05:B208: 02        .byte $02   ; 
- D 1 - I - 0x017219 05:B209: 45        .byte $45   ; 
- D 1 - I - 0x01721A 05:B20A: 83        .byte $83   ; 
- D 1 - I - 0x01721B 05:B20B: 52        .byte $52   ; 
- D 1 - I - 0x01721C 05:B20C: 33        .byte $33   ; 
- D 1 - I - 0x01721D 05:B20D: 24        .byte $24   ; 
- D 1 - I - 0x01721E 05:B20E: 7F        .byte $7F   ; 
- D 1 - I - 0x01721F 05:B20F: 00        .byte $00   ; 
- D 1 - I - 0x017220 05:B210: 7F        .byte $7F   ; 
- D 1 - I - 0x017221 05:B211: 00        .byte $00   ; 
- D 1 - I - 0x017222 05:B212: FF        .byte $FF   ; end token


; bzk garbage
- - - - - - 0x017223 05:B213: FF        .byte $FF   ; 



_off010_B214_08:
- D 1 - I - 0x017224 05:B214: 00        .byte $00   ; 
- D 1 - I - 0x017225 05:B215: 00        .byte $00   ; 
- D 1 - I - 0x017226 05:B216: 00        .byte $00   ; 
- D 1 - I - 0x017227 05:B217: 00        .byte $00   ; 
- D 1 - I - 0x017228 05:B218: 00        .byte $00   ; 
- D 1 - I - 0x017229 05:B219: 00        .byte $00   ; 
- D 1 - I - 0x01722A 05:B21A: 00        .byte $00   ; 
- D 1 - I - 0x01722B 05:B21B: 00        .byte $00   ; 
- D 1 - I - 0x01722C 05:B21C: 00        .byte $00   ; 
- D 1 - I - 0x01722D 05:B21D: 00        .byte $00   ; 
- D 1 - I - 0x01722E 05:B21E: 00        .byte $00   ; 
- D 1 - I - 0x01722F 05:B21F: 00        .byte $00   ; 
- D 1 - I - 0x017230 05:B220: 00        .byte $00   ; 
- D 1 - I - 0x017231 05:B221: 00        .byte $00   ; 
- D 1 - I - 0x017232 05:B222: 00        .byte $00   ; 
- D 1 - I - 0x017233 05:B223: 00        .byte $00   ; 
- D 1 - I - 0x017234 05:B224: 00        .byte $00   ; 
- D 1 - I - 0x017235 05:B225: 00        .byte $00   ; 
- D 1 - I - 0x017236 05:B226: 00        .byte $00   ; 
- D 1 - I - 0x017237 05:B227: 00        .byte $00   ; 
- D 1 - I - 0x017238 05:B228: 00        .byte $00   ; 
- D 1 - I - 0x017239 05:B229: 00        .byte $00   ; 
- D 1 - I - 0x01723A 05:B22A: 00        .byte $00   ; 
- D 1 - I - 0x01723B 05:B22B: 00        .byte $00   ; 
- D 1 - I - 0x01723C 05:B22C: 00        .byte $00   ; 
- D 1 - I - 0x01723D 05:B22D: 00        .byte $00   ; 
- D 1 - I - 0x01723E 05:B22E: 00        .byte $00   ; 
- D 1 - I - 0x01723F 05:B22F: 00        .byte $00   ; 
- D 1 - I - 0x017240 05:B230: 00        .byte $00   ; 
- D 1 - I - 0x017241 05:B231: 00        .byte $00   ; 
- D 1 - I - 0x017242 05:B232: 00        .byte $00   ; 
- D 1 - I - 0x017243 05:B233: 00        .byte $00   ; 
- D 1 - I - 0x017244 05:B234: 00        .byte $00   ; 
- D 1 - I - 0x017245 05:B235: 00        .byte $00   ; 
- D 1 - I - 0x017246 05:B236: 00        .byte $00   ; 
- D 1 - I - 0x017247 05:B237: 00        .byte $00   ; 
- D 1 - I - 0x017248 05:B238: 00        .byte $00   ; 
- D 1 - I - 0x017249 05:B239: 00        .byte $00   ; 
- D 1 - I - 0x01724A 05:B23A: 00        .byte $00   ; 
- D 1 - I - 0x01724B 05:B23B: 00        .byte $00   ; 
- D 1 - I - 0x01724C 05:B23C: 00        .byte $00   ; 
- D 1 - I - 0x01724D 05:B23D: 00        .byte $00   ; 
- D 1 - I - 0x01724E 05:B23E: 00        .byte $00   ; 
- D 1 - I - 0x01724F 05:B23F: 00        .byte $00   ; 
- D 1 - I - 0x017250 05:B240: 00        .byte $00   ; 
- D 1 - I - 0x017251 05:B241: 00        .byte $00   ; 
- D 1 - I - 0x017252 05:B242: 00        .byte $00   ; 
- D 1 - I - 0x017253 05:B243: 00        .byte $00   ; 
- D 1 - I - 0x017254 05:B244: 00        .byte $00   ; 
- D 1 - I - 0x017255 05:B245: 00        .byte $00   ; 
- D 1 - I - 0x017256 05:B246: 00        .byte $00   ; 
- D 1 - I - 0x017257 05:B247: 00        .byte $00   ; 
- D 1 - I - 0x017258 05:B248: 00        .byte $00   ; 
- D 1 - I - 0x017259 05:B249: 00        .byte $00   ; 
- D 1 - I - 0x01725A 05:B24A: 00        .byte $00   ; 
- D 1 - I - 0x01725B 05:B24B: 00        .byte $00   ; 
- D 1 - I - 0x01725C 05:B24C: 00        .byte $00   ; 
- D 1 - I - 0x01725D 05:B24D: 00        .byte $00   ; 
- D 1 - I - 0x01725E 05:B24E: 00        .byte $00   ; 
- D 1 - I - 0x01725F 05:B24F: 00        .byte $00   ; 
- D 1 - I - 0x017260 05:B250: 00        .byte $00   ; 
- D 1 - I - 0x017261 05:B251: 00        .byte $00   ; 
- D 1 - I - 0x017262 05:B252: 00        .byte $00   ; 
- D 1 - I - 0x017263 05:B253: 00        .byte $00   ; 
- D 1 - I - 0x017264 05:B254: 00        .byte $00   ; 
- D 1 - I - 0x017265 05:B255: 00        .byte $00   ; 
- D 1 - I - 0x017266 05:B256: 00        .byte $00   ; 
- D 1 - I - 0x017267 05:B257: 00        .byte $00   ; 
- D 1 - I - 0x017268 05:B258: 00        .byte $00   ; 
- D 1 - I - 0x017269 05:B259: 00        .byte $00   ; 
- D 1 - I - 0x01726A 05:B25A: 00        .byte $00   ; 
- D 1 - I - 0x01726B 05:B25B: 00        .byte $00   ; 
- D 1 - I - 0x01726C 05:B25C: 00        .byte $00   ; 
- D 1 - I - 0x01726D 05:B25D: 00        .byte $00   ; 
- D 1 - I - 0x01726E 05:B25E: 00        .byte $00   ; 
- D 1 - I - 0x01726F 05:B25F: 00        .byte $00   ; 
- D 1 - I - 0x017270 05:B260: 00        .byte $00   ; 
- D 1 - I - 0x017271 05:B261: 00        .byte $00   ; 
- D 1 - I - 0x017272 05:B262: 00        .byte $00   ; 
- D 1 - I - 0x017273 05:B263: 00        .byte $00   ; 
- D 1 - I - 0x017274 05:B264: 00        .byte $00   ; 
- D 1 - I - 0x017275 05:B265: 00        .byte $00   ; 
- D 1 - I - 0x017276 05:B266: 00        .byte $00   ; 
- D 1 - I - 0x017277 05:B267: 00        .byte $00   ; 
- D 1 - I - 0x017278 05:B268: 00        .byte $00   ; 
- D 1 - I - 0x017279 05:B269: 81        .byte $81   ; 
- D 1 - I - 0x01727A 05:B26A: 00        .byte $00   ; 
- D 1 - I - 0x01727B 05:B26B: 00        .byte $00   ; 
- D 1 - I - 0x01727C 05:B26C: 00        .byte $00   ; 
- D 1 - I - 0x01727D 05:B26D: 00        .byte $00   ; 
- D 1 - I - 0x01727E 05:B26E: 00        .byte $00   ; 
- D 1 - I - 0x01727F 05:B26F: 00        .byte $00   ; 
- D 1 - I - 0x017280 05:B270: 00        .byte $00   ; 
- D 1 - I - 0x017281 05:B271: 00        .byte $00   ; 
- D 1 - I - 0x017282 05:B272: 00        .byte $00   ; 
- D 1 - I - 0x017283 05:B273: 00        .byte $00   ; 
- D 1 - I - 0x017284 05:B274: 00        .byte $00   ; 
- D 1 - I - 0x017285 05:B275: 00        .byte $00   ; 
- D 1 - I - 0x017286 05:B276: 00        .byte $00   ; 
- D 1 - I - 0x017287 05:B277: 00        .byte $00   ; 
- D 1 - I - 0x017288 05:B278: 00        .byte $00   ; 
- D 1 - I - 0x017289 05:B279: 00        .byte $00   ; 
- D 1 - I - 0x01728A 05:B27A: 00        .byte $00   ; 
- D 1 - I - 0x01728B 05:B27B: 00        .byte $00   ; 
- D 1 - I - 0x01728C 05:B27C: 00        .byte $00   ; 
- D 1 - I - 0x01728D 05:B27D: 00        .byte $00   ; 
- D 1 - I - 0x01728E 05:B27E: 00        .byte $00   ; 
- D 1 - I - 0x01728F 05:B27F: 00        .byte $00   ; 
- D 1 - I - 0x017290 05:B280: 00        .byte $00   ; 
- D 1 - I - 0x017291 05:B281: 00        .byte $00   ; 
- D 1 - I - 0x017292 05:B282: 00        .byte $00   ; 
- D 1 - I - 0x017293 05:B283: 00        .byte $00   ; 
- D 1 - I - 0x017294 05:B284: 82        .byte $82   ; 
- D 1 - I - 0x017295 05:B285: 83        .byte $83   ; 
- D 1 - I - 0x017296 05:B286: 00        .byte $00   ; 
- D 1 - I - 0x017297 05:B287: 44        .byte $44   ; 
- D 1 - I - 0x017298 05:B288: 45        .byte $45   ; 
- D 1 - I - 0x017299 05:B289: 00        .byte $00   ; 
- D 1 - I - 0x01729A 05:B28A: 00        .byte $00   ; 
- D 1 - I - 0x01729B 05:B28B: 86        .byte $86   ; 
- D 1 - I - 0x01729C 05:B28C: 87        .byte $87   ; 
- D 1 - I - 0x01729D 05:B28D: 00        .byte $00   ; 
- D 1 - I - 0x01729E 05:B28E: 00        .byte $00   ; 
- D 1 - I - 0x01729F 05:B28F: 00        .byte $00   ; 
- D 1 - I - 0x0172A0 05:B290: 00        .byte $00   ; 
- D 1 - I - 0x0172A1 05:B291: 00        .byte $00   ; 
- D 1 - I - 0x0172A2 05:B292: 00        .byte $00   ; 
- D 1 - I - 0x0172A3 05:B293: 00        .byte $00   ; 
- D 1 - I - 0x0172A4 05:B294: 00        .byte $00   ; 
- D 1 - I - 0x0172A5 05:B295: 00        .byte $00   ; 
- D 1 - I - 0x0172A6 05:B296: 00        .byte $00   ; 
- D 1 - I - 0x0172A7 05:B297: 00        .byte $00   ; 
- D 1 - I - 0x0172A8 05:B298: 00        .byte $00   ; 
- D 1 - I - 0x0172A9 05:B299: 00        .byte $00   ; 
- D 1 - I - 0x0172AA 05:B29A: 00        .byte $00   ; 
- D 1 - I - 0x0172AB 05:B29B: 00        .byte $00   ; 
- D 1 - I - 0x0172AC 05:B29C: 00        .byte $00   ; 
- D 1 - I - 0x0172AD 05:B29D: 00        .byte $00   ; 
- D 1 - I - 0x0172AE 05:B29E: 00        .byte $00   ; 
- D 1 - I - 0x0172AF 05:B29F: 00        .byte $00   ; 
- D 1 - I - 0x0172B0 05:B2A0: 00        .byte $00   ; 
- D 1 - I - 0x0172B1 05:B2A1: 00        .byte $00   ; 
- D 1 - I - 0x0172B2 05:B2A2: 00        .byte $00   ; 
- D 1 - I - 0x0172B3 05:B2A3: 00        .byte $00   ; 
- D 1 - I - 0x0172B4 05:B2A4: 88        .byte $88   ; 
- D 1 - I - 0x0172B5 05:B2A5: 89        .byte $89   ; 
- D 1 - I - 0x0172B6 05:B2A6: 00        .byte $00   ; 
- D 1 - I - 0x0172B7 05:B2A7: 00        .byte $00   ; 
- D 1 - I - 0x0172B8 05:B2A8: 00        .byte $00   ; 
- D 1 - I - 0x0172B9 05:B2A9: 00        .byte $00   ; 
- D 1 - I - 0x0172BA 05:B2AA: 00        .byte $00   ; 
- D 1 - I - 0x0172BB 05:B2AB: 0A        .byte $0A   ; 
- D 1 - I - 0x0172BC 05:B2AC: 00        .byte $00   ; 
- D 1 - I - 0x0172BD 05:B2AD: 00        .byte $00   ; 
- D 1 - I - 0x0172BE 05:B2AE: 00        .byte $00   ; 
- D 1 - I - 0x0172BF 05:B2AF: 00        .byte $00   ; 
- D 1 - I - 0x0172C0 05:B2B0: 00        .byte $00   ; 
- D 1 - I - 0x0172C1 05:B2B1: 00        .byte $00   ; 
- D 1 - I - 0x0172C2 05:B2B2: 00        .byte $00   ; 
- D 1 - I - 0x0172C3 05:B2B3: 00        .byte $00   ; 
- D 1 - I - 0x0172C4 05:B2B4: 00        .byte $00   ; 
- D 1 - I - 0x0172C5 05:B2B5: 00        .byte $00   ; 
- D 1 - I - 0x0172C6 05:B2B6: 00        .byte $00   ; 
- D 1 - I - 0x0172C7 05:B2B7: 00        .byte $00   ; 
- D 1 - I - 0x0172C8 05:B2B8: 00        .byte $00   ; 
- D 1 - I - 0x0172C9 05:B2B9: 00        .byte $00   ; 
- D 1 - I - 0x0172CA 05:B2BA: 00        .byte $00   ; 
- D 1 - I - 0x0172CB 05:B2BB: 00        .byte $00   ; 
- D 1 - I - 0x0172CC 05:B2BC: 00        .byte $00   ; 
- D 1 - I - 0x0172CD 05:B2BD: 00        .byte $00   ; 
- D 1 - I - 0x0172CE 05:B2BE: 00        .byte $00   ; 
- D 1 - I - 0x0172CF 05:B2BF: 00        .byte $00   ; 
- D 1 - I - 0x0172D0 05:B2C0: 00        .byte $00   ; 
- D 1 - I - 0x0172D1 05:B2C1: 00        .byte $00   ; 
- D 1 - I - 0x0172D2 05:B2C2: 00        .byte $00   ; 
- D 1 - I - 0x0172D3 05:B2C3: 00        .byte $00   ; 
- D 1 - I - 0x0172D4 05:B2C4: 8B        .byte $8B   ; 
- D 1 - I - 0x0172D5 05:B2C5: 00        .byte $00   ; 
- D 1 - I - 0x0172D6 05:B2C6: 00        .byte $00   ; 
- D 1 - I - 0x0172D7 05:B2C7: 00        .byte $00   ; 
- D 1 - I - 0x0172D8 05:B2C8: 00        .byte $00   ; 
- D 1 - I - 0x0172D9 05:B2C9: 00        .byte $00   ; 
- D 1 - I - 0x0172DA 05:B2CA: 00        .byte $00   ; 
- D 1 - I - 0x0172DB 05:B2CB: 00        .byte $00   ; 
- D 1 - I - 0x0172DC 05:B2CC: 00        .byte $00   ; 
- D 1 - I - 0x0172DD 05:B2CD: 00        .byte $00   ; 
- D 1 - I - 0x0172DE 05:B2CE: 00        .byte $00   ; 
- D 1 - I - 0x0172DF 05:B2CF: 00        .byte $00   ; 
- D 1 - I - 0x0172E0 05:B2D0: 00        .byte $00   ; 
- D 1 - I - 0x0172E1 05:B2D1: 00        .byte $00   ; 
- D 1 - I - 0x0172E2 05:B2D2: 00        .byte $00   ; 
- D 1 - I - 0x0172E3 05:B2D3: 00        .byte $00   ; 
- D 1 - I - 0x0172E4 05:B2D4: 00        .byte $00   ; 
- D 1 - I - 0x0172E5 05:B2D5: 00        .byte $00   ; 
- D 1 - I - 0x0172E6 05:B2D6: 00        .byte $00   ; 
- D 1 - I - 0x0172E7 05:B2D7: 00        .byte $00   ; 
- D 1 - I - 0x0172E8 05:B2D8: 00        .byte $00   ; 
- D 1 - I - 0x0172E9 05:B2D9: 00        .byte $00   ; 
- D 1 - I - 0x0172EA 05:B2DA: 00        .byte $00   ; 
- D 1 - I - 0x0172EB 05:B2DB: 00        .byte $00   ; 
- D 1 - I - 0x0172EC 05:B2DC: 00        .byte $00   ; 
- D 1 - I - 0x0172ED 05:B2DD: 00        .byte $00   ; 
- D 1 - I - 0x0172EE 05:B2DE: 00        .byte $00   ; 
- D 1 - I - 0x0172EF 05:B2DF: 00        .byte $00   ; 
- D 1 - I - 0x0172F0 05:B2E0: 00        .byte $00   ; 
- D 1 - I - 0x0172F1 05:B2E1: 00        .byte $00   ; 
- D 1 - I - 0x0172F2 05:B2E2: 00        .byte $00   ; 
- D 1 - I - 0x0172F3 05:B2E3: 00        .byte $00   ; 
- D 1 - I - 0x0172F4 05:B2E4: 00        .byte $00   ; 
- D 1 - I - 0x0172F5 05:B2E5: 00        .byte $00   ; 
- D 1 - I - 0x0172F6 05:B2E6: 00        .byte $00   ; 
- D 1 - I - 0x0172F7 05:B2E7: 00        .byte $00   ; 
- D 1 - I - 0x0172F8 05:B2E8: 00        .byte $00   ; 
- D 1 - I - 0x0172F9 05:B2E9: 00        .byte $00   ; 
- D 1 - I - 0x0172FA 05:B2EA: 00        .byte $00   ; 
- D 1 - I - 0x0172FB 05:B2EB: 00        .byte $00   ; 
- D 1 - I - 0x0172FC 05:B2EC: 8C        .byte $8C   ; 
- D 1 - I - 0x0172FD 05:B2ED: 8D        .byte $8D   ; 
- D 1 - I - 0x0172FE 05:B2EE: 00        .byte $00   ; 
- D 1 - I - 0x0172FF 05:B2EF: 00        .byte $00   ; 
- D 1 - I - 0x017300 05:B2F0: 00        .byte $00   ; 
- D 1 - I - 0x017301 05:B2F1: 00        .byte $00   ; 
- D 1 - I - 0x017302 05:B2F2: 00        .byte $00   ; 
- D 1 - I - 0x017303 05:B2F3: 00        .byte $00   ; 
- D 1 - I - 0x017304 05:B2F4: 00        .byte $00   ; 
- D 1 - I - 0x017305 05:B2F5: 00        .byte $00   ; 
- D 1 - I - 0x017306 05:B2F6: 00        .byte $00   ; 
- D 1 - I - 0x017307 05:B2F7: 00        .byte $00   ; 
- D 1 - I - 0x017308 05:B2F8: 00        .byte $00   ; 
- D 1 - I - 0x017309 05:B2F9: 00        .byte $00   ; 
- D 1 - I - 0x01730A 05:B2FA: 00        .byte $00   ; 
- D 1 - I - 0x01730B 05:B2FB: 00        .byte $00   ; 
- D 1 - I - 0x01730C 05:B2FC: 00        .byte $00   ; 
- D 1 - I - 0x01730D 05:B2FD: 00        .byte $00   ; 
- D 1 - I - 0x01730E 05:B2FE: 00        .byte $00   ; 
- D 1 - I - 0x01730F 05:B2FF: 00        .byte $00   ; 
- D 1 - I - 0x017310 05:B300: 00        .byte $00   ; 
- D 1 - I - 0x017311 05:B301: 00        .byte $00   ; 
- D 1 - I - 0x017312 05:B302: 00        .byte $00   ; 
- D 1 - I - 0x017313 05:B303: 00        .byte $00   ; 
- D 1 - I - 0x017314 05:B304: 00        .byte $00   ; 
- D 1 - I - 0x017315 05:B305: 00        .byte $00   ; 
- D 1 - I - 0x017316 05:B306: 00        .byte $00   ; 
- D 1 - I - 0x017317 05:B307: 00        .byte $00   ; 
- D 1 - I - 0x017318 05:B308: 00        .byte $00   ; 
- D 1 - I - 0x017319 05:B309: 00        .byte $00   ; 
- D 1 - I - 0x01731A 05:B30A: 00        .byte $00   ; 
- D 1 - I - 0x01731B 05:B30B: 00        .byte $00   ; 
- D 1 - I - 0x01731C 05:B30C: 00        .byte $00   ; 
- D 1 - I - 0x01731D 05:B30D: 8E        .byte $8E   ; 
- D 1 - I - 0x01731E 05:B30E: 00        .byte $00   ; 
- D 1 - I - 0x01731F 05:B30F: 00        .byte $00   ; 
- D 1 - I - 0x017320 05:B310: 00        .byte $00   ; 
- D 1 - I - 0x017321 05:B311: 00        .byte $00   ; 
- D 1 - I - 0x017322 05:B312: 00        .byte $00   ; 
- D 1 - I - 0x017323 05:B313: 00        .byte $00   ; 
- D 1 - I - 0x017324 05:B314: 00        .byte $00   ; 
- D 1 - I - 0x017325 05:B315: 00        .byte $00   ; 
- D 1 - I - 0x017326 05:B316: 00        .byte $00   ; 
- D 1 - I - 0x017327 05:B317: 00        .byte $00   ; 
- D 1 - I - 0x017328 05:B318: 00        .byte $00   ; 
- D 1 - I - 0x017329 05:B319: 00        .byte $00   ; 
- D 1 - I - 0x01732A 05:B31A: 00        .byte $00   ; 
- D 1 - I - 0x01732B 05:B31B: 00        .byte $00   ; 
- D 1 - I - 0x01732C 05:B31C: 00        .byte $00   ; 
- D 1 - I - 0x01732D 05:B31D: 00        .byte $00   ; 
- D 1 - I - 0x01732E 05:B31E: 00        .byte $00   ; 
- D 1 - I - 0x01732F 05:B31F: 00        .byte $00   ; 
- D 1 - I - 0x017330 05:B320: 00        .byte $00   ; 
- D 1 - I - 0x017331 05:B321: 00        .byte $00   ; 
- D 1 - I - 0x017332 05:B322: 00        .byte $00   ; 
- D 1 - I - 0x017333 05:B323: 00        .byte $00   ; 
- D 1 - I - 0x017334 05:B324: 00        .byte $00   ; 
- D 1 - I - 0x017335 05:B325: 00        .byte $00   ; 
- D 1 - I - 0x017336 05:B326: 00        .byte $00   ; 
- D 1 - I - 0x017337 05:B327: 00        .byte $00   ; 
- D 1 - I - 0x017338 05:B328: 00        .byte $00   ; 
- D 1 - I - 0x017339 05:B329: 00        .byte $00   ; 
- D 1 - I - 0x01733A 05:B32A: 00        .byte $00   ; 
- D 1 - I - 0x01733B 05:B32B: 00        .byte $00   ; 
- D 1 - I - 0x01733C 05:B32C: 00        .byte $00   ; 
- D 1 - I - 0x01733D 05:B32D: 8F        .byte $8F   ; 
- D 1 - I - 0x01733E 05:B32E: 90        .byte $90   ; 
- D 1 - I - 0x01733F 05:B32F: 91        .byte $91   ; 
- D 1 - I - 0x017340 05:B330: 00        .byte $00   ; 
- D 1 - I - 0x017341 05:B331: 00        .byte $00   ; 
- D 1 - I - 0x017342 05:B332: 00        .byte $00   ; 
- D 1 - I - 0x017343 05:B333: 00        .byte $00   ; 
- D 1 - I - 0x017344 05:B334: 00        .byte $00   ; 
- D 1 - I - 0x017345 05:B335: 00        .byte $00   ; 
- D 1 - I - 0x017346 05:B336: 00        .byte $00   ; 
- D 1 - I - 0x017347 05:B337: 00        .byte $00   ; 
- D 1 - I - 0x017348 05:B338: 00        .byte $00   ; 
- D 1 - I - 0x017349 05:B339: 00        .byte $00   ; 
- D 1 - I - 0x01734A 05:B33A: 00        .byte $00   ; 
- D 1 - I - 0x01734B 05:B33B: 00        .byte $00   ; 
- D 1 - I - 0x01734C 05:B33C: 00        .byte $00   ; 
- D 1 - I - 0x01734D 05:B33D: 00        .byte $00   ; 
- D 1 - I - 0x01734E 05:B33E: 00        .byte $00   ; 
- D 1 - I - 0x01734F 05:B33F: 00        .byte $00   ; 
- D 1 - I - 0x017350 05:B340: 00        .byte $00   ; 
- D 1 - I - 0x017351 05:B341: 00        .byte $00   ; 
- D 1 - I - 0x017352 05:B342: 00        .byte $00   ; 
- D 1 - I - 0x017353 05:B343: 00        .byte $00   ; 
- D 1 - I - 0x017354 05:B344: 00        .byte $00   ; 
- D 1 - I - 0x017355 05:B345: 00        .byte $00   ; 
- D 1 - I - 0x017356 05:B346: 00        .byte $00   ; 
- D 1 - I - 0x017357 05:B347: 00        .byte $00   ; 
- D 1 - I - 0x017358 05:B348: 00        .byte $00   ; 
- D 1 - I - 0x017359 05:B349: 00        .byte $00   ; 
- D 1 - I - 0x01735A 05:B34A: 00        .byte $00   ; 
- D 1 - I - 0x01735B 05:B34B: 00        .byte $00   ; 
- D 1 - I - 0x01735C 05:B34C: 00        .byte $00   ; 
- D 1 - I - 0x01735D 05:B34D: 00        .byte $00   ; 
- D 1 - I - 0x01735E 05:B34E: 92        .byte $92   ; 
- D 1 - I - 0x01735F 05:B34F: 93        .byte $93   ; 
- D 1 - I - 0x017360 05:B350: 00        .byte $00   ; 
- D 1 - I - 0x017361 05:B351: 00        .byte $00   ; 
- D 1 - I - 0x017362 05:B352: 00        .byte $00   ; 
- D 1 - I - 0x017363 05:B353: 00        .byte $00   ; 
- D 1 - I - 0x017364 05:B354: 00        .byte $00   ; 
- D 1 - I - 0x017365 05:B355: 00        .byte $00   ; 
- D 1 - I - 0x017366 05:B356: 00        .byte $00   ; 
- D 1 - I - 0x017367 05:B357: 00        .byte $00   ; 
- D 1 - I - 0x017368 05:B358: 00        .byte $00   ; 
- D 1 - I - 0x017369 05:B359: 00        .byte $00   ; 
- D 1 - I - 0x01736A 05:B35A: 00        .byte $00   ; 
- D 1 - I - 0x01736B 05:B35B: 00        .byte $00   ; 
- D 1 - I - 0x01736C 05:B35C: 00        .byte $00   ; 
- D 1 - I - 0x01736D 05:B35D: 00        .byte $00   ; 
- D 1 - I - 0x01736E 05:B35E: 00        .byte $00   ; 
- D 1 - I - 0x01736F 05:B35F: 00        .byte $00   ; 
- D 1 - I - 0x017370 05:B360: 00        .byte $00   ; 
- D 1 - I - 0x017371 05:B361: 00        .byte $00   ; 
- D 1 - I - 0x017372 05:B362: 00        .byte $00   ; 
- D 1 - I - 0x017373 05:B363: 00        .byte $00   ; 
- D 1 - I - 0x017374 05:B364: 00        .byte $00   ; 
- D 1 - I - 0x017375 05:B365: 00        .byte $00   ; 
- D 1 - I - 0x017376 05:B366: 00        .byte $00   ; 
- D 1 - I - 0x017377 05:B367: 00        .byte $00   ; 
- D 1 - I - 0x017378 05:B368: 00        .byte $00   ; 
- D 1 - I - 0x017379 05:B369: 00        .byte $00   ; 
- D 1 - I - 0x01737A 05:B36A: 00        .byte $00   ; 
- D 1 - I - 0x01737B 05:B36B: 00        .byte $00   ; 
- D 1 - I - 0x01737C 05:B36C: 00        .byte $00   ; 
- D 1 - I - 0x01737D 05:B36D: 00        .byte $00   ; 
- D 1 - I - 0x01737E 05:B36E: 94        .byte $94   ; 
- D 1 - I - 0x01737F 05:B36F: 95        .byte $95   ; 
- D 1 - I - 0x017380 05:B370: 00        .byte $00   ; 
- D 1 - I - 0x017381 05:B371: 00        .byte $00   ; 
- D 1 - I - 0x017382 05:B372: 00        .byte $00   ; 
- D 1 - I - 0x017383 05:B373: 00        .byte $00   ; 
- D 1 - I - 0x017384 05:B374: 00        .byte $00   ; 
- D 1 - I - 0x017385 05:B375: 00        .byte $00   ; 
- D 1 - I - 0x017386 05:B376: 00        .byte $00   ; 
- D 1 - I - 0x017387 05:B377: 00        .byte $00   ; 
- D 1 - I - 0x017388 05:B378: 00        .byte $00   ; 
- D 1 - I - 0x017389 05:B379: 00        .byte $00   ; 
- D 1 - I - 0x01738A 05:B37A: 00        .byte $00   ; 
- D 1 - I - 0x01738B 05:B37B: 00        .byte $00   ; 
- D 1 - I - 0x01738C 05:B37C: 00        .byte $00   ; 
- D 1 - I - 0x01738D 05:B37D: 00        .byte $00   ; 
- D 1 - I - 0x01738E 05:B37E: 00        .byte $00   ; 
- D 1 - I - 0x01738F 05:B37F: 00        .byte $00   ; 
- D 1 - I - 0x017390 05:B380: 00        .byte $00   ; 
- D 1 - I - 0x017391 05:B381: 00        .byte $00   ; 
- D 1 - I - 0x017392 05:B382: 00        .byte $00   ; 
- D 1 - I - 0x017393 05:B383: 00        .byte $00   ; 
- D 1 - I - 0x017394 05:B384: 00        .byte $00   ; 
- D 1 - I - 0x017395 05:B385: 00        .byte $00   ; 
- D 1 - I - 0x017396 05:B386: 00        .byte $00   ; 
- D 1 - I - 0x017397 05:B387: 00        .byte $00   ; 
- D 1 - I - 0x017398 05:B388: 00        .byte $00   ; 
- D 1 - I - 0x017399 05:B389: 00        .byte $00   ; 
- D 1 - I - 0x01739A 05:B38A: 00        .byte $00   ; 
- D 1 - I - 0x01739B 05:B38B: 00        .byte $00   ; 
- D 1 - I - 0x01739C 05:B38C: 00        .byte $00   ; 
- D 1 - I - 0x01739D 05:B38D: 00        .byte $00   ; 
- D 1 - I - 0x01739E 05:B38E: 96        .byte $96   ; 
- D 1 - I - 0x01739F 05:B38F: 97        .byte $97   ; 
- D 1 - I - 0x0173A0 05:B390: 00        .byte $00   ; 
- D 1 - I - 0x0173A1 05:B391: 00        .byte $00   ; 
- D 1 - I - 0x0173A2 05:B392: 00        .byte $00   ; 
- D 1 - I - 0x0173A3 05:B393: 00        .byte $00   ; 
- D 1 - I - 0x0173A4 05:B394: 00        .byte $00   ; 
- D 1 - I - 0x0173A5 05:B395: 00        .byte $00   ; 
- D 1 - I - 0x0173A6 05:B396: 00        .byte $00   ; 
- D 1 - I - 0x0173A7 05:B397: 00        .byte $00   ; 
- D 1 - I - 0x0173A8 05:B398: 00        .byte $00   ; 
- D 1 - I - 0x0173A9 05:B399: 00        .byte $00   ; 
- D 1 - I - 0x0173AA 05:B39A: 00        .byte $00   ; 
- D 1 - I - 0x0173AB 05:B39B: 00        .byte $00   ; 
- D 1 - I - 0x0173AC 05:B39C: 00        .byte $00   ; 
- D 1 - I - 0x0173AD 05:B39D: 00        .byte $00   ; 
- D 1 - I - 0x0173AE 05:B39E: 00        .byte $00   ; 
- D 1 - I - 0x0173AF 05:B39F: 00        .byte $00   ; 
- D 1 - I - 0x0173B0 05:B3A0: 00        .byte $00   ; 
- D 1 - I - 0x0173B1 05:B3A1: 00        .byte $00   ; 
- D 1 - I - 0x0173B2 05:B3A2: 00        .byte $00   ; 
- D 1 - I - 0x0173B3 05:B3A3: 00        .byte $00   ; 
- D 1 - I - 0x0173B4 05:B3A4: 98        .byte $98   ; 
- D 1 - I - 0x0173B5 05:B3A5: 00        .byte $00   ; 
- D 1 - I - 0x0173B6 05:B3A6: 00        .byte $00   ; 
- D 1 - I - 0x0173B7 05:B3A7: 00        .byte $00   ; 
- D 1 - I - 0x0173B8 05:B3A8: 00        .byte $00   ; 
- D 1 - I - 0x0173B9 05:B3A9: 00        .byte $00   ; 
- D 1 - I - 0x0173BA 05:B3AA: 99        .byte $99   ; 
- D 1 - I - 0x0173BB 05:B3AB: 00        .byte $00   ; 
- D 1 - I - 0x0173BC 05:B3AC: 00        .byte $00   ; 
- D 1 - I - 0x0173BD 05:B3AD: 00        .byte $00   ; 
- D 1 - I - 0x0173BE 05:B3AE: 00        .byte $00   ; 
- D 1 - I - 0x0173BF 05:B3AF: 00        .byte $00   ; 
- D 1 - I - 0x0173C0 05:B3B0: 00        .byte $00   ; 
- D 1 - I - 0x0173C1 05:B3B1: 00        .byte $00   ; 
- D 1 - I - 0x0173C2 05:B3B2: 00        .byte $00   ; 
- D 1 - I - 0x0173C3 05:B3B3: 00        .byte $00   ; 
- D 1 - I - 0x0173C4 05:B3B4: 00        .byte $00   ; 
- D 1 - I - 0x0173C5 05:B3B5: 00        .byte $00   ; 
- D 1 - I - 0x0173C6 05:B3B6: 00        .byte $00   ; 
- D 1 - I - 0x0173C7 05:B3B7: 00        .byte $00   ; 
- D 1 - I - 0x0173C8 05:B3B8: 00        .byte $00   ; 
- D 1 - I - 0x0173C9 05:B3B9: 00        .byte $00   ; 
- D 1 - I - 0x0173CA 05:B3BA: 00        .byte $00   ; 
- D 1 - I - 0x0173CB 05:B3BB: 00        .byte $00   ; 
- D 1 - I - 0x0173CC 05:B3BC: 00        .byte $00   ; 
- D 1 - I - 0x0173CD 05:B3BD: 00        .byte $00   ; 
- D 1 - I - 0x0173CE 05:B3BE: 00        .byte $00   ; 
- D 1 - I - 0x0173CF 05:B3BF: 00        .byte $00   ; 
- D 1 - I - 0x0173D0 05:B3C0: 00        .byte $00   ; 
- D 1 - I - 0x0173D1 05:B3C1: 00        .byte $00   ; 
- D 1 - I - 0x0173D2 05:B3C2: 00        .byte $00   ; 
- D 1 - I - 0x0173D3 05:B3C3: 00        .byte $00   ; 
- D 1 - I - 0x0173D4 05:B3C4: 9A        .byte $9A   ; 
- D 1 - I - 0x0173D5 05:B3C5: 00        .byte $00   ; 
- D 1 - I - 0x0173D6 05:B3C6: 00        .byte $00   ; 
- D 1 - I - 0x0173D7 05:B3C7: 00        .byte $00   ; 
- D 1 - I - 0x0173D8 05:B3C8: 00        .byte $00   ; 
- D 1 - I - 0x0173D9 05:B3C9: 00        .byte $00   ; 
- D 1 - I - 0x0173DA 05:B3CA: 9B        .byte $9B   ; 
- D 1 - I - 0x0173DB 05:B3CB: 9C        .byte $9C   ; 
- D 1 - I - 0x0173DC 05:B3CC: 00        .byte $00   ; 
- D 1 - I - 0x0173DD 05:B3CD: 00        .byte $00   ; 
- D 1 - I - 0x0173DE 05:B3CE: 00        .byte $00   ; 
- D 1 - I - 0x0173DF 05:B3CF: 00        .byte $00   ; 
- D 1 - I - 0x0173E0 05:B3D0: 00        .byte $00   ; 
- D 1 - I - 0x0173E1 05:B3D1: 00        .byte $00   ; 
- D 1 - I - 0x0173E2 05:B3D2: 00        .byte $00   ; 
- D 1 - I - 0x0173E3 05:B3D3: 00        .byte $00   ; 
- D 1 - I - 0x0173E4 05:B3D4: 00        .byte $00   ; 
- D 1 - I - 0x0173E5 05:B3D5: 00        .byte $00   ; 
- D 1 - I - 0x0173E6 05:B3D6: 00        .byte $00   ; 
- D 1 - I - 0x0173E7 05:B3D7: 00        .byte $00   ; 
- D 1 - I - 0x0173E8 05:B3D8: 00        .byte $00   ; 
- D 1 - I - 0x0173E9 05:B3D9: 00        .byte $00   ; 
- D 1 - I - 0x0173EA 05:B3DA: 00        .byte $00   ; 
- D 1 - I - 0x0173EB 05:B3DB: 00        .byte $00   ; 
- D 1 - I - 0x0173EC 05:B3DC: 00        .byte $00   ; 
- D 1 - I - 0x0173ED 05:B3DD: 00        .byte $00   ; 
- D 1 - I - 0x0173EE 05:B3DE: 00        .byte $00   ; 
- D 1 - I - 0x0173EF 05:B3DF: 00        .byte $00   ; 
- D 1 - I - 0x0173F0 05:B3E0: 00        .byte $00   ; 
- D 1 - I - 0x0173F1 05:B3E1: 00        .byte $00   ; 
- D 1 - I - 0x0173F2 05:B3E2: 00        .byte $00   ; 
- D 1 - I - 0x0173F3 05:B3E3: 00        .byte $00   ; 
- D 1 - I - 0x0173F4 05:B3E4: 00        .byte $00   ; 
- D 1 - I - 0x0173F5 05:B3E5: 00        .byte $00   ; 
- D 1 - I - 0x0173F6 05:B3E6: 00        .byte $00   ; 
- D 1 - I - 0x0173F7 05:B3E7: 00        .byte $00   ; 
- D 1 - I - 0x0173F8 05:B3E8: 00        .byte $00   ; 
- D 1 - I - 0x0173F9 05:B3E9: 00        .byte $00   ; 
- D 1 - I - 0x0173FA 05:B3EA: 9D        .byte $9D   ; 
- D 1 - I - 0x0173FB 05:B3EB: 9E        .byte $9E   ; 
- D 1 - I - 0x0173FC 05:B3EC: 00        .byte $00   ; 
- D 1 - I - 0x0173FD 05:B3ED: 00        .byte $00   ; 
- D 1 - I - 0x0173FE 05:B3EE: 00        .byte $00   ; 
- D 1 - I - 0x0173FF 05:B3EF: 00        .byte $00   ; 
- D 1 - I - 0x017400 05:B3F0: 00        .byte $00   ; 
- D 1 - I - 0x017401 05:B3F1: 00        .byte $00   ; 
- D 1 - I - 0x017402 05:B3F2: 00        .byte $00   ; 
- D 1 - I - 0x017403 05:B3F3: 00        .byte $00   ; 
- D 1 - I - 0x017404 05:B3F4: 00        .byte $00   ; 
- D 1 - I - 0x017405 05:B3F5: 00        .byte $00   ; 
- D 1 - I - 0x017406 05:B3F6: 00        .byte $00   ; 
- D 1 - I - 0x017407 05:B3F7: 00        .byte $00   ; 
- D 1 - I - 0x017408 05:B3F8: 00        .byte $00   ; 
- D 1 - I - 0x017409 05:B3F9: 00        .byte $00   ; 
- D 1 - I - 0x01740A 05:B3FA: 00        .byte $00   ; 
- D 1 - I - 0x01740B 05:B3FB: 00        .byte $00   ; 
- D 1 - I - 0x01740C 05:B3FC: 00        .byte $00   ; 
- D 1 - I - 0x01740D 05:B3FD: 00        .byte $00   ; 
- D 1 - I - 0x01740E 05:B3FE: 00        .byte $00   ; 
- D 1 - I - 0x01740F 05:B3FF: 00        .byte $00   ; 
- D 1 - I - 0x017410 05:B400: 00        .byte $00   ; 
- D 1 - I - 0x017411 05:B401: 00        .byte $00   ; 
- D 1 - I - 0x017412 05:B402: 00        .byte $00   ; 
- D 1 - I - 0x017413 05:B403: 00        .byte $00   ; 
- D 1 - I - 0x017414 05:B404: 00        .byte $00   ; 
- D 1 - I - 0x017415 05:B405: 00        .byte $00   ; 
- D 1 - I - 0x017416 05:B406: 9F        .byte $9F   ; 
- D 1 - I - 0x017417 05:B407: A0        .byte $A0   ; 
- D 1 - I - 0x017418 05:B408: 00        .byte $00   ; 
- D 1 - I - 0x017419 05:B409: 00        .byte $00   ; 
- D 1 - I - 0x01741A 05:B40A: 00        .byte $00   ; 
- D 1 - I - 0x01741B 05:B40B: 00        .byte $00   ; 
- D 1 - I - 0x01741C 05:B40C: 00        .byte $00   ; 
- D 1 - I - 0x01741D 05:B40D: 00        .byte $00   ; 
- D 1 - I - 0x01741E 05:B40E: 00        .byte $00   ; 
- D 1 - I - 0x01741F 05:B40F: 00        .byte $00   ; 
- D 1 - I - 0x017420 05:B410: 00        .byte $00   ; 
- D 1 - I - 0x017421 05:B411: 00        .byte $00   ; 
- D 1 - I - 0x017422 05:B412: 00        .byte $00   ; 
- D 1 - I - 0x017423 05:B413: 00        .byte $00   ; 
- D 1 - I - 0x017424 05:B414: 00        .byte $00   ; 
- D 1 - I - 0x017425 05:B415: 00        .byte $00   ; 
- D 1 - I - 0x017426 05:B416: 00        .byte $00   ; 
- D 1 - I - 0x017427 05:B417: 00        .byte $00   ; 
- D 1 - I - 0x017428 05:B418: 00        .byte $00   ; 
- D 1 - I - 0x017429 05:B419: 00        .byte $00   ; 
- D 1 - I - 0x01742A 05:B41A: 00        .byte $00   ; 
- D 1 - I - 0x01742B 05:B41B: 00        .byte $00   ; 
- D 1 - I - 0x01742C 05:B41C: 00        .byte $00   ; 
- D 1 - I - 0x01742D 05:B41D: 00        .byte $00   ; 
- D 1 - I - 0x01742E 05:B41E: 00        .byte $00   ; 
- D 1 - I - 0x01742F 05:B41F: 00        .byte $00   ; 
- D 1 - I - 0x017430 05:B420: 00        .byte $00   ; 
- D 1 - I - 0x017431 05:B421: 00        .byte $00   ; 
- D 1 - I - 0x017432 05:B422: 00        .byte $00   ; 
- D 1 - I - 0x017433 05:B423: 00        .byte $00   ; 
- D 1 - I - 0x017434 05:B424: 00        .byte $00   ; 
- D 1 - I - 0x017435 05:B425: 00        .byte $00   ; 
- D 1 - I - 0x017436 05:B426: 00        .byte $00   ; 
- D 1 - I - 0x017437 05:B427: 00        .byte $00   ; 
- D 1 - I - 0x017438 05:B428: 00        .byte $00   ; 
- D 1 - I - 0x017439 05:B429: 00        .byte $00   ; 
- D 1 - I - 0x01743A 05:B42A: 00        .byte $00   ; 
- D 1 - I - 0x01743B 05:B42B: 00        .byte $00   ; 
- D 1 - I - 0x01743C 05:B42C: 00        .byte $00   ; 
- D 1 - I - 0x01743D 05:B42D: A1        .byte $A1   ; 
- D 1 - I - 0x01743E 05:B42E: A2        .byte $A2   ; 
- D 1 - I - 0x01743F 05:B42F: A3        .byte $A3   ; 
- D 1 - I - 0x017440 05:B430: 00        .byte $00   ; 
- D 1 - I - 0x017441 05:B431: 00        .byte $00   ; 
- D 1 - I - 0x017442 05:B432: 00        .byte $00   ; 
- D 1 - I - 0x017443 05:B433: 00        .byte $00   ; 
- D 1 - I - 0x017444 05:B434: 00        .byte $00   ; 
- D 1 - I - 0x017445 05:B435: 00        .byte $00   ; 
- D 1 - I - 0x017446 05:B436: 00        .byte $00   ; 
- D 1 - I - 0x017447 05:B437: 00        .byte $00   ; 
- D 1 - I - 0x017448 05:B438: 00        .byte $00   ; 
- D 1 - I - 0x017449 05:B439: 00        .byte $00   ; 
- D 1 - I - 0x01744A 05:B43A: 00        .byte $00   ; 
- D 1 - I - 0x01744B 05:B43B: 00        .byte $00   ; 
- D 1 - I - 0x01744C 05:B43C: 00        .byte $00   ; 
- D 1 - I - 0x01744D 05:B43D: 00        .byte $00   ; 
- D 1 - I - 0x01744E 05:B43E: 00        .byte $00   ; 
- D 1 - I - 0x01744F 05:B43F: 00        .byte $00   ; 
- D 1 - I - 0x017450 05:B440: 00        .byte $00   ; 
- D 1 - I - 0x017451 05:B441: 00        .byte $00   ; 
- D 1 - I - 0x017452 05:B442: 00        .byte $00   ; 
- D 1 - I - 0x017453 05:B443: 00        .byte $00   ; 
- D 1 - I - 0x017454 05:B444: 00        .byte $00   ; 
- D 1 - I - 0x017455 05:B445: 00        .byte $00   ; 
- D 1 - I - 0x017456 05:B446: 00        .byte $00   ; 
- D 1 - I - 0x017457 05:B447: 00        .byte $00   ; 
- D 1 - I - 0x017458 05:B448: 00        .byte $00   ; 
- D 1 - I - 0x017459 05:B449: 00        .byte $00   ; 
- D 1 - I - 0x01745A 05:B44A: A4        .byte $A4   ; 
- D 1 - I - 0x01745B 05:B44B: A5        .byte $A5   ; 
- D 1 - I - 0x01745C 05:B44C: A6        .byte $A6   ; 
- D 1 - I - 0x01745D 05:B44D: A7        .byte $A7   ; 
- D 1 - I - 0x01745E 05:B44E: A8        .byte $A8   ; 
- D 1 - I - 0x01745F 05:B44F: A9        .byte $A9   ; 
- D 1 - I - 0x017460 05:B450: 00        .byte $00   ; 
- D 1 - I - 0x017461 05:B451: 00        .byte $00   ; 
- D 1 - I - 0x017462 05:B452: 00        .byte $00   ; 
- D 1 - I - 0x017463 05:B453: 00        .byte $00   ; 
- D 1 - I - 0x017464 05:B454: 00        .byte $00   ; 
- D 1 - I - 0x017465 05:B455: 00        .byte $00   ; 
- D 1 - I - 0x017466 05:B456: 00        .byte $00   ; 
- D 1 - I - 0x017467 05:B457: 00        .byte $00   ; 
- D 1 - I - 0x017468 05:B458: 00        .byte $00   ; 
- D 1 - I - 0x017469 05:B459: 00        .byte $00   ; 
- D 1 - I - 0x01746A 05:B45A: 00        .byte $00   ; 
- D 1 - I - 0x01746B 05:B45B: 00        .byte $00   ; 
- D 1 - I - 0x01746C 05:B45C: 00        .byte $00   ; 
- D 1 - I - 0x01746D 05:B45D: 00        .byte $00   ; 
- D 1 - I - 0x01746E 05:B45E: 00        .byte $00   ; 
- D 1 - I - 0x01746F 05:B45F: 00        .byte $00   ; 
- D 1 - I - 0x017470 05:B460: 00        .byte $00   ; 
- D 1 - I - 0x017471 05:B461: 00        .byte $00   ; 
- D 1 - I - 0x017472 05:B462: 00        .byte $00   ; 
- D 1 - I - 0x017473 05:B463: 00        .byte $00   ; 
- D 1 - I - 0x017474 05:B464: 00        .byte $00   ; 
- D 1 - I - 0x017475 05:B465: 00        .byte $00   ; 
- D 1 - I - 0x017476 05:B466: 00        .byte $00   ; 
- D 1 - I - 0x017477 05:B467: 00        .byte $00   ; 
- D 1 - I - 0x017478 05:B468: 00        .byte $00   ; 
- D 1 - I - 0x017479 05:B469: 00        .byte $00   ; 
- D 1 - I - 0x01747A 05:B46A: AA        .byte $AA   ; 
- D 1 - I - 0x01747B 05:B46B: AB        .byte $AB   ; 
- D 1 - I - 0x01747C 05:B46C: AC        .byte $AC   ; 
- D 1 - I - 0x01747D 05:B46D: AD        .byte $AD   ; 
- D 1 - I - 0x01747E 05:B46E: AE        .byte $AE   ; 
- D 1 - I - 0x01747F 05:B46F: AF        .byte $AF   ; 
- D 1 - I - 0x017480 05:B470: 00        .byte $00   ; 
- D 1 - I - 0x017481 05:B471: 00        .byte $00   ; 
- D 1 - I - 0x017482 05:B472: 00        .byte $00   ; 
- D 1 - I - 0x017483 05:B473: 00        .byte $00   ; 
- D 1 - I - 0x017484 05:B474: 00        .byte $00   ; 
- D 1 - I - 0x017485 05:B475: 00        .byte $00   ; 
- D 1 - I - 0x017486 05:B476: 00        .byte $00   ; 
- D 1 - I - 0x017487 05:B477: 00        .byte $00   ; 
- D 1 - I - 0x017488 05:B478: 00        .byte $00   ; 
- D 1 - I - 0x017489 05:B479: 00        .byte $00   ; 
- D 1 - I - 0x01748A 05:B47A: 00        .byte $00   ; 
- D 1 - I - 0x01748B 05:B47B: 00        .byte $00   ; 
- D 1 - I - 0x01748C 05:B47C: 00        .byte $00   ; 
- D 1 - I - 0x01748D 05:B47D: 00        .byte $00   ; 
- D 1 - I - 0x01748E 05:B47E: 00        .byte $00   ; 
- D 1 - I - 0x01748F 05:B47F: 00        .byte $00   ; 
- D 1 - I - 0x017490 05:B480: 00        .byte $00   ; 
- D 1 - I - 0x017491 05:B481: 00        .byte $00   ; 
- D 1 - I - 0x017492 05:B482: 00        .byte $00   ; 
- D 1 - I - 0x017493 05:B483: 00        .byte $00   ; 
- D 1 - I - 0x017494 05:B484: 00        .byte $00   ; 
- D 1 - I - 0x017495 05:B485: 00        .byte $00   ; 
- D 1 - I - 0x017496 05:B486: 00        .byte $00   ; 
- D 1 - I - 0x017497 05:B487: 00        .byte $00   ; 
- D 1 - I - 0x017498 05:B488: 00        .byte $00   ; 
- D 1 - I - 0x017499 05:B489: 00        .byte $00   ; 
- D 1 - I - 0x01749A 05:B48A: B0        .byte $B0   ; 
- D 1 - I - 0x01749B 05:B48B: 00        .byte $00   ; 
- D 1 - I - 0x01749C 05:B48C: B1        .byte $B1   ; 
- D 1 - I - 0x01749D 05:B48D: B2        .byte $B2   ; 
- D 1 - I - 0x01749E 05:B48E: B3        .byte $B3   ; 
- D 1 - I - 0x01749F 05:B48F: B4        .byte $B4   ; 
- D 1 - I - 0x0174A0 05:B490: 00        .byte $00   ; 
- D 1 - I - 0x0174A1 05:B491: 00        .byte $00   ; 
- D 1 - I - 0x0174A2 05:B492: 00        .byte $00   ; 
- D 1 - I - 0x0174A3 05:B493: 00        .byte $00   ; 
- D 1 - I - 0x0174A4 05:B494: 00        .byte $00   ; 
- D 1 - I - 0x0174A5 05:B495: 00        .byte $00   ; 
- D 1 - I - 0x0174A6 05:B496: 00        .byte $00   ; 
- D 1 - I - 0x0174A7 05:B497: 00        .byte $00   ; 
- D 1 - I - 0x0174A8 05:B498: 00        .byte $00   ; 
- D 1 - I - 0x0174A9 05:B499: 00        .byte $00   ; 
- D 1 - I - 0x0174AA 05:B49A: 00        .byte $00   ; 
- D 1 - I - 0x0174AB 05:B49B: 00        .byte $00   ; 
- D 1 - I - 0x0174AC 05:B49C: 00        .byte $00   ; 
- D 1 - I - 0x0174AD 05:B49D: 00        .byte $00   ; 
- D 1 - I - 0x0174AE 05:B49E: 00        .byte $00   ; 
- D 1 - I - 0x0174AF 05:B49F: 00        .byte $00   ; 
- D 1 - I - 0x0174B0 05:B4A0: 00        .byte $00   ; 
- D 1 - I - 0x0174B1 05:B4A1: 00        .byte $00   ; 
- D 1 - I - 0x0174B2 05:B4A2: 00        .byte $00   ; 
- D 1 - I - 0x0174B3 05:B4A3: 00        .byte $00   ; 
- D 1 - I - 0x0174B4 05:B4A4: 00        .byte $00   ; 
- D 1 - I - 0x0174B5 05:B4A5: 00        .byte $00   ; 
- D 1 - I - 0x0174B6 05:B4A6: 00        .byte $00   ; 
- D 1 - I - 0x0174B7 05:B4A7: 00        .byte $00   ; 
- D 1 - I - 0x0174B8 05:B4A8: 00        .byte $00   ; 
- D 1 - I - 0x0174B9 05:B4A9: 00        .byte $00   ; 
- D 1 - I - 0x0174BA 05:B4AA: B5        .byte $B5   ; 
- D 1 - I - 0x0174BB 05:B4AB: B6        .byte $B6   ; 
- D 1 - I - 0x0174BC 05:B4AC: 00        .byte $00   ; 
- D 1 - I - 0x0174BD 05:B4AD: 00        .byte $00   ; 
- D 1 - I - 0x0174BE 05:B4AE: 00        .byte $00   ; 
- D 1 - I - 0x0174BF 05:B4AF: 00        .byte $00   ; 
- D 1 - I - 0x0174C0 05:B4B0: 00        .byte $00   ; 
- D 1 - I - 0x0174C1 05:B4B1: 00        .byte $00   ; 
- D 1 - I - 0x0174C2 05:B4B2: 00        .byte $00   ; 
- D 1 - I - 0x0174C3 05:B4B3: 00        .byte $00   ; 
- D 1 - I - 0x0174C4 05:B4B4: 00        .byte $00   ; 
- D 1 - I - 0x0174C5 05:B4B5: 00        .byte $00   ; 
- D 1 - I - 0x0174C6 05:B4B6: 00        .byte $00   ; 
- D 1 - I - 0x0174C7 05:B4B7: 00        .byte $00   ; 
- D 1 - I - 0x0174C8 05:B4B8: 00        .byte $00   ; 
- D 1 - I - 0x0174C9 05:B4B9: 00        .byte $00   ; 
- D 1 - I - 0x0174CA 05:B4BA: 00        .byte $00   ; 
- D 1 - I - 0x0174CB 05:B4BB: 00        .byte $00   ; 
- D 1 - I - 0x0174CC 05:B4BC: 00        .byte $00   ; 
- D 1 - I - 0x0174CD 05:B4BD: 00        .byte $00   ; 
- D 1 - I - 0x0174CE 05:B4BE: 00        .byte $00   ; 
- D 1 - I - 0x0174CF 05:B4BF: 00        .byte $00   ; 
- D 1 - I - 0x0174D0 05:B4C0: 00        .byte $00   ; 
- D 1 - I - 0x0174D1 05:B4C1: 00        .byte $00   ; 
- D 1 - I - 0x0174D2 05:B4C2: 00        .byte $00   ; 
- D 1 - I - 0x0174D3 05:B4C3: 00        .byte $00   ; 
- D 1 - I - 0x0174D4 05:B4C4: 00        .byte $00   ; 
- D 1 - I - 0x0174D5 05:B4C5: 00        .byte $00   ; 
- D 1 - I - 0x0174D6 05:B4C6: 00        .byte $00   ; 
- D 1 - I - 0x0174D7 05:B4C7: 00        .byte $00   ; 
- D 1 - I - 0x0174D8 05:B4C8: 00        .byte $00   ; 
- D 1 - I - 0x0174D9 05:B4C9: 00        .byte $00   ; 
- D 1 - I - 0x0174DA 05:B4CA: 00        .byte $00   ; 
- D 1 - I - 0x0174DB 05:B4CB: B7        .byte $B7   ; 
- D 1 - I - 0x0174DC 05:B4CC: 00        .byte $00   ; 
- D 1 - I - 0x0174DD 05:B4CD: 00        .byte $00   ; 
- D 1 - I - 0x0174DE 05:B4CE: 00        .byte $00   ; 
- D 1 - I - 0x0174DF 05:B4CF: 00        .byte $00   ; 
- D 1 - I - 0x0174E0 05:B4D0: 00        .byte $00   ; 
- D 1 - I - 0x0174E1 05:B4D1: 00        .byte $00   ; 
- D 1 - I - 0x0174E2 05:B4D2: 00        .byte $00   ; 
- D 1 - I - 0x0174E3 05:B4D3: 00        .byte $00   ; 
- D 1 - I - 0x0174E4 05:B4D4: 00        .byte $00   ; 
- D 1 - I - 0x0174E5 05:B4D5: 00        .byte $00   ; 
- D 1 - I - 0x0174E6 05:B4D6: 00        .byte $00   ; 
- D 1 - I - 0x0174E7 05:B4D7: 00        .byte $00   ; 
- D 1 - I - 0x0174E8 05:B4D8: 00        .byte $00   ; 
- D 1 - I - 0x0174E9 05:B4D9: 00        .byte $00   ; 
- D 1 - I - 0x0174EA 05:B4DA: 00        .byte $00   ; 
- D 1 - I - 0x0174EB 05:B4DB: 00        .byte $00   ; 
- D 1 - I - 0x0174EC 05:B4DC: 00        .byte $00   ; 
- D 1 - I - 0x0174ED 05:B4DD: 00        .byte $00   ; 
- D 1 - I - 0x0174EE 05:B4DE: 00        .byte $00   ; 
- D 1 - I - 0x0174EF 05:B4DF: 00        .byte $00   ; 
- D 1 - I - 0x0174F0 05:B4E0: 00        .byte $00   ; 
- D 1 - I - 0x0174F1 05:B4E1: 00        .byte $00   ; 
- D 1 - I - 0x0174F2 05:B4E2: 00        .byte $00   ; 
- D 1 - I - 0x0174F3 05:B4E3: 00        .byte $00   ; 
- D 1 - I - 0x0174F4 05:B4E4: 00        .byte $00   ; 
- D 1 - I - 0x0174F5 05:B4E5: 00        .byte $00   ; 
- D 1 - I - 0x0174F6 05:B4E6: 00        .byte $00   ; 
- D 1 - I - 0x0174F7 05:B4E7: 00        .byte $00   ; 
- D 1 - I - 0x0174F8 05:B4E8: 00        .byte $00   ; 
- D 1 - I - 0x0174F9 05:B4E9: 00        .byte $00   ; 
- D 1 - I - 0x0174FA 05:B4EA: 00        .byte $00   ; 
- D 1 - I - 0x0174FB 05:B4EB: 00        .byte $00   ; 
- D 1 - I - 0x0174FC 05:B4EC: 00        .byte $00   ; 
- D 1 - I - 0x0174FD 05:B4ED: 00        .byte $00   ; 
- D 1 - I - 0x0174FE 05:B4EE: 00        .byte $00   ; 
- D 1 - I - 0x0174FF 05:B4EF: 00        .byte $00   ; 
- D 1 - I - 0x017500 05:B4F0: 00        .byte $00   ; 
- D 1 - I - 0x017501 05:B4F1: 00        .byte $00   ; 
- D 1 - I - 0x017502 05:B4F2: 00        .byte $00   ; 
- D 1 - I - 0x017503 05:B4F3: 00        .byte $00   ; 
- D 1 - I - 0x017504 05:B4F4: 00        .byte $00   ; 
- D 1 - I - 0x017505 05:B4F5: 00        .byte $00   ; 
- D 1 - I - 0x017506 05:B4F6: 00        .byte $00   ; 
- D 1 - I - 0x017507 05:B4F7: 00        .byte $00   ; 
- D 1 - I - 0x017508 05:B4F8: 00        .byte $00   ; 
- D 1 - I - 0x017509 05:B4F9: 00        .byte $00   ; 
- D 1 - I - 0x01750A 05:B4FA: 00        .byte $00   ; 
- D 1 - I - 0x01750B 05:B4FB: 00        .byte $00   ; 
- D 1 - I - 0x01750C 05:B4FC: 00        .byte $00   ; 
- D 1 - I - 0x01750D 05:B4FD: 00        .byte $00   ; 
- D 1 - I - 0x01750E 05:B4FE: 00        .byte $00   ; 
- D 1 - I - 0x01750F 05:B4FF: 00        .byte $00   ; 
- D 1 - I - 0x017510 05:B500: 00        .byte $00   ; 
- D 1 - I - 0x017511 05:B501: 00        .byte $00   ; 
- D 1 - I - 0x017512 05:B502: 00        .byte $00   ; 
- D 1 - I - 0x017513 05:B503: 00        .byte $00   ; 
- D 1 - I - 0x017514 05:B504: 00        .byte $00   ; 
- D 1 - I - 0x017515 05:B505: 00        .byte $00   ; 
- D 1 - I - 0x017516 05:B506: 00        .byte $00   ; 
- D 1 - I - 0x017517 05:B507: 00        .byte $00   ; 
- D 1 - I - 0x017518 05:B508: 00        .byte $00   ; 
- D 1 - I - 0x017519 05:B509: 00        .byte $00   ; 
- D 1 - I - 0x01751A 05:B50A: 00        .byte $00   ; 
- D 1 - I - 0x01751B 05:B50B: 00        .byte $00   ; 
- D 1 - I - 0x01751C 05:B50C: 00        .byte $00   ; 
- D 1 - I - 0x01751D 05:B50D: 00        .byte $00   ; 
- D 1 - I - 0x01751E 05:B50E: 00        .byte $00   ; 
- D 1 - I - 0x01751F 05:B50F: 00        .byte $00   ; 
- D 1 - I - 0x017520 05:B510: 00        .byte $00   ; 
- D 1 - I - 0x017521 05:B511: 00        .byte $00   ; 
- D 1 - I - 0x017522 05:B512: 00        .byte $00   ; 
- D 1 - I - 0x017523 05:B513: 00        .byte $00   ; 
- D 1 - I - 0x017524 05:B514: 00        .byte $00   ; 
- D 1 - I - 0x017525 05:B515: 00        .byte $00   ; 
- D 1 - I - 0x017526 05:B516: 00        .byte $00   ; 
- D 1 - I - 0x017527 05:B517: 00        .byte $00   ; 
- D 1 - I - 0x017528 05:B518: 00        .byte $00   ; 
- D 1 - I - 0x017529 05:B519: 00        .byte $00   ; 
- D 1 - I - 0x01752A 05:B51A: 00        .byte $00   ; 
- D 1 - I - 0x01752B 05:B51B: 00        .byte $00   ; 
- D 1 - I - 0x01752C 05:B51C: 00        .byte $00   ; 
- D 1 - I - 0x01752D 05:B51D: 00        .byte $00   ; 
- D 1 - I - 0x01752E 05:B51E: 00        .byte $00   ; 
- D 1 - I - 0x01752F 05:B51F: 00        .byte $00   ; 
- D 1 - I - 0x017530 05:B520: 00        .byte $00   ; 
- D 1 - I - 0x017531 05:B521: 00        .byte $00   ; 
- D 1 - I - 0x017532 05:B522: 00        .byte $00   ; 
- D 1 - I - 0x017533 05:B523: 00        .byte $00   ; 
- D 1 - I - 0x017534 05:B524: 00        .byte $00   ; 
- D 1 - I - 0x017535 05:B525: 00        .byte $00   ; 
- D 1 - I - 0x017536 05:B526: 00        .byte $00   ; 
- D 1 - I - 0x017537 05:B527: 00        .byte $00   ; 
- D 1 - I - 0x017538 05:B528: 00        .byte $00   ; 
- D 1 - I - 0x017539 05:B529: 00        .byte $00   ; 
- D 1 - I - 0x01753A 05:B52A: 00        .byte $00   ; 
- D 1 - I - 0x01753B 05:B52B: 00        .byte $00   ; 
- D 1 - I - 0x01753C 05:B52C: 00        .byte $00   ; 
- D 1 - I - 0x01753D 05:B52D: 00        .byte $00   ; 
- D 1 - I - 0x01753E 05:B52E: 00        .byte $00   ; 
- D 1 - I - 0x01753F 05:B52F: 00        .byte $00   ; 
- D 1 - I - 0x017540 05:B530: 00        .byte $00   ; 
- D 1 - I - 0x017541 05:B531: 00        .byte $00   ; 
- D 1 - I - 0x017542 05:B532: 00        .byte $00   ; 
- D 1 - I - 0x017543 05:B533: 00        .byte $00   ; 
- D 1 - I - 0x017544 05:B534: 00        .byte $00   ; 
- D 1 - I - 0x017545 05:B535: 00        .byte $00   ; 
- D 1 - I - 0x017546 05:B536: 00        .byte $00   ; 
- D 1 - I - 0x017547 05:B537: 00        .byte $00   ; 
- D 1 - I - 0x017548 05:B538: 00        .byte $00   ; 
- D 1 - I - 0x017549 05:B539: 00        .byte $00   ; 
- D 1 - I - 0x01754A 05:B53A: 00        .byte $00   ; 
- D 1 - I - 0x01754B 05:B53B: 00        .byte $00   ; 
- D 1 - I - 0x01754C 05:B53C: 00        .byte $00   ; 
- D 1 - I - 0x01754D 05:B53D: 00        .byte $00   ; 
- D 1 - I - 0x01754E 05:B53E: 00        .byte $00   ; 
- D 1 - I - 0x01754F 05:B53F: 00        .byte $00   ; 
- D 1 - I - 0x017550 05:B540: 00        .byte $00   ; 
- D 1 - I - 0x017551 05:B541: 00        .byte $00   ; 
- D 1 - I - 0x017552 05:B542: 00        .byte $00   ; 
- D 1 - I - 0x017553 05:B543: 00        .byte $00   ; 
- D 1 - I - 0x017554 05:B544: 00        .byte $00   ; 
- D 1 - I - 0x017555 05:B545: 00        .byte $00   ; 
- D 1 - I - 0x017556 05:B546: 00        .byte $00   ; 
- D 1 - I - 0x017557 05:B547: 00        .byte $00   ; 
- D 1 - I - 0x017558 05:B548: 00        .byte $00   ; 
- D 1 - I - 0x017559 05:B549: 00        .byte $00   ; 
- D 1 - I - 0x01755A 05:B54A: 00        .byte $00   ; 
- D 1 - I - 0x01755B 05:B54B: 00        .byte $00   ; 
- D 1 - I - 0x01755C 05:B54C: 00        .byte $00   ; 
- D 1 - I - 0x01755D 05:B54D: 00        .byte $00   ; 
- D 1 - I - 0x01755E 05:B54E: 00        .byte $00   ; 
- D 1 - I - 0x01755F 05:B54F: 00        .byte $00   ; 
- D 1 - I - 0x017560 05:B550: 00        .byte $00   ; 
- D 1 - I - 0x017561 05:B551: 00        .byte $00   ; 
- D 1 - I - 0x017562 05:B552: 00        .byte $00   ; 
- D 1 - I - 0x017563 05:B553: 00        .byte $00   ; 
; bzk garbage?
- - - - - - 0x017564 05:B554: 00        .byte $00   ; 
- - - - - - 0x017565 05:B555: 00        .byte $00   ; 
- - - - - - 0x017566 05:B556: 00        .byte $00   ; 
- - - - - - 0x017567 05:B557: 00        .byte $00   ; 
- - - - - - 0x017568 05:B558: 00        .byte $00   ; 
- - - - - - 0x017569 05:B559: 00        .byte $00   ; 
- - - - - - 0x01756A 05:B55A: 00        .byte $00   ; 
- - - - - - 0x01756B 05:B55B: 00        .byte $00   ; 
- - - - - - 0x01756C 05:B55C: 00        .byte $00   ; 
- - - - - - 0x01756D 05:B55D: 00        .byte $00   ; 
- - - - - - 0x01756E 05:B55E: 00        .byte $00   ; 
- - - - - - 0x01756F 05:B55F: 00        .byte $00   ; 
- - - - - - 0x017570 05:B560: 00        .byte $00   ; 
- - - - - - 0x017571 05:B561: 00        .byte $00   ; 
- - - - - - 0x017572 05:B562: 00        .byte $00   ; 
- - - - - - 0x017573 05:B563: 00        .byte $00   ; 
- - - - - - 0x017574 05:B564: 00        .byte $00   ; 
- - - - - - 0x017575 05:B565: 00        .byte $00   ; 
- - - - - - 0x017576 05:B566: 00        .byte $00   ; 
- - - - - - 0x017577 05:B567: 00        .byte $00   ; 
- - - - - - 0x017578 05:B568: 00        .byte $00   ; 
- - - - - - 0x017579 05:B569: 00        .byte $00   ; 
- - - - - - 0x01757A 05:B56A: 00        .byte $00   ; 
- - - - - - 0x01757B 05:B56B: 00        .byte $00   ; 
- - - - - - 0x01757C 05:B56C: 00        .byte $00   ; 
- - - - - - 0x01757D 05:B56D: 00        .byte $00   ; 
- - - - - - 0x01757E 05:B56E: 00        .byte $00   ; 
- - - - - - 0x01757F 05:B56F: 00        .byte $00   ; 
- - - - - - 0x017580 05:B570: 00        .byte $00   ; 
- - - - - - 0x017581 05:B571: 00        .byte $00   ; 
- - - - - - 0x017582 05:B572: 00        .byte $00   ; 
- - - - - - 0x017583 05:B573: 00        .byte $00   ; 



tbl_B574_unit_head:
; 00 
- D 1 - - - 0x017584 05:B574: 03        .byte $03, $04, $05, $00   ; 
- D 1 - - - 0x017588 05:B578: 0D        .byte $0D, $00, $0E, $0F   ; 
- D 1 - - - 0x01758C 05:B57C: 1B        .byte $1B, $1C, $1D, $1E   ; 
- D 1 - - - 0x017590 05:B580: 27        .byte $27, $28, $29, $2A   ; 
; 10 
- - - - - - 0x017594 05:B584: 03        .byte $03, $7C, $7D, $00   ; 
- - - - - - 0x017598 05:B588: 0D        .byte $0D, $00, $7E, $7F   ; 
- - - - - - 0x01759C 05:B58C: 1B        .byte $1B, $1C, $80, $1E   ; 
- - - - - - 0x0175A0 05:B590: 27        .byte $27, $28, $29, $2A   ; 
; 20 
- D 1 - - - 0x0175A4 05:B594: 03        .byte $03, $81, $82, $83   ; 
- D 1 - - - 0x0175A8 05:B598: 84        .byte $84, $85, $86, $7F   ; 
- D 1 - - - 0x0175AC 05:B59C: 1B        .byte $1B, $1C, $87, $1E   ; 
- D 1 - - - 0x0175B0 05:B5A0: 27        .byte $27, $28, $29, $2A   ; 




tbl_B5A4_unit_arms:
; 00 
- D 1 - - - 0x0175B4 05:B5A4: 38        .byte $38, $39, $3A   ; 
- D 1 - - - 0x0175B7 05:B5A7: 44        .byte $44, $45, $46   ; 
- D 1 - - - 0x0175BA 05:B5AA: 4E        .byte $4E, $4F, $50   ; 
- D 1 - - - 0x0175BD 05:B5AD: 58        .byte $58, $59, $5A   ; 
- D 1 - - - 0x0175C0 05:B5B0: 62        .byte $62, $63, $64   ; 
- D 1 - - - 0x0175C3 05:B5B3: 6F        .byte $6F, $70, $71   ; 
; 12 
- D 1 - - - 0x0175C6 05:B5B6: 38        .byte $38, $39, $3A   ; 
- D 1 - - - 0x0175C9 05:B5B9: 88        .byte $88, $89, $46   ; 
- D 1 - - - 0x0175CC 05:B5BC: 8A        .byte $8A, $8B, $8C   ; 
- D 1 - - - 0x0175CF 05:B5BF: 8D        .byte $8D, $59, $5A   ; 
- D 1 - - - 0x0175D2 05:B5C2: 62        .byte $62, $8E, $8F   ; 
- D 1 - - - 0x0175D5 05:B5C5: 6F        .byte $6F, $70, $71   ; 
; 24 
- D 1 - - - 0x0175D8 05:B5C8: 38        .byte $38, $39, $3A   ; 
- D 1 - - - 0x0175DB 05:B5CB: 88        .byte $88, $90, $91   ; 
- D 1 - - - 0x0175DE 05:B5CE: 92        .byte $92, $93, $94   ; 
- D 1 - - - 0x0175E1 05:B5D1: 95        .byte $95, $96, $5A   ; 
- D 1 - - - 0x0175E4 05:B5D4: 97        .byte $97, $98, $8F   ; 
- D 1 - - - 0x0175E7 05:B5D7: 6F        .byte $6F, $99, $71   ; 



tbl_B5DA:
- D 1 - - - 0x0175EA 05:B5DA: 2C        .byte $2C, $33, $3F, $4B, $55, $5F   ; 00 
- D 1 - - - 0x0175F0 05:B5E0: 2C        .byte $2C, $9A, $3F, $9B, $9C, $9D   ; 06 
- D 1 - - - 0x0175F6 05:B5E6: 2C        .byte $2C, $9E, $9F, $A0, $A1, $9D   ; 0C 



tbl_B5EC_unit_body:
; 00 
- D 1 - - - 0x0175FC 05:B5EC: 3B        .byte $3B, $3C, $3D, $3E   ; 
- D 1 - - - 0x017600 05:B5F0: 47        .byte $47, $48, $49, $4A   ; 
- D 1 - - - 0x017604 05:B5F4: 51        .byte $51, $52, $53, $54   ; 
- D 1 - - - 0x017608 05:B5F8: 5B        .byte $5B, $5C, $5D, $5E   ; 
; 10 
- D 1 - - - 0x01760C 05:B5FC: 3B        .byte $3B, $3C, $A2, $A3   ; 
- D 1 - - - 0x017610 05:B600: A4        .byte $A4, $A5, $A6, $A7   ; 
- D 1 - - - 0x017614 05:B604: A8        .byte $A8, $A9, $AA, $54   ; 
- D 1 - - - 0x017618 05:B608: AB        .byte $AB, $AC, $AD, $5E   ; 
; 20 
- D 1 - - - 0x01761C 05:B60C: 3B        .byte $3B, $3C, $A2, $AE   ; 
- D 1 - - - 0x017620 05:B610: AF        .byte $AF, $B0, $B1, $B2   ; 
- D 1 - - - 0x017624 05:B614: B3        .byte $B3, $B4, $B5, $B6   ; 
- D 1 - - - 0x017628 05:B618: AB        .byte $AB, $AC, $B7, $5E   ; 



tbl_B61C_unit_legs:
; bzk optimize, last 8 bytes are not used in each set 0x01532F
; 00 
- D 1 - - - 0x01762C 05:B61C: 05        .byte $05, $06, $07, $08, $09, $0A, $0B, $0C   ; 
- D 1 - - - 0x017634 05:B624: 14        .byte $14, $15, $16, $17, $18, $19, $1A, $1B   ; 
- D 1 - - - 0x01763C 05:B62C: 25        .byte $25, $26, $27, $28, $29, $00, $2A, $2B   ; 
- D 1 - - - 0x017644 05:B634: 00        .byte $00, $35, $36, $37, $38, $00, $39, $3A   ; 
- D 1 - - - 0x01764C 05:B63C: 00        .byte $00, $00, $49, $4A, $4B, $00, $4C, $4D   ; 
- - - - - - 0x017654 05:B644: 00        .byte $00, $00, $56, $57, $58, $00, $59, $5A   ; 
; 30 
- D 1 - - - 0x01765C 05:B64C: 05        .byte $05, $70, $71, $08, $09, $72, $73, $74   ; 
- D 1 - - - 0x017664 05:B654: 14        .byte $14, $75, $76, $77, $18, $19, $1A, $1B   ; 
- D 1 - - - 0x01766C 05:B65C: 25        .byte $25, $26, $78, $79, $29, $00, $2A, $7A   ; 
- D 1 - - - 0x017674 05:B664: 00        .byte $00, $35, $36, $37, $38, $00, $39, $7B   ; 
- D 1 - - - 0x01767C 05:B66C: 00        .byte $00, $00, $49, $7C, $7D, $00, $4C, $7E   ; 
- - - - - - 0x017684 05:B674: 00        .byte $00, $00, $56, $57, $58, $00, $59, $5A   ; 
; 60 
- D 1 - - - 0x01768C 05:B67C: 05        .byte $05, $70, $7F, $08, $80, $72, $81, $74   ; 
- D 1 - - - 0x017694 05:B684: 14        .byte $14, $75, $82, $83, $84, $85, $1A, $86   ; 
- D 1 - - - 0x01769C 05:B68C: 25        .byte $25, $26, $87, $88, $29, $00, $2A, $89   ; 
- D 1 - - - 0x0176A4 05:B694: 00        .byte $00, $35, $8A, $8B, $8C, $00, $8D, $8E   ; 
- D 1 - - - 0x0176AC 05:B69C: 00        .byte $00, $00, $49, $8F, $90, $00, $4C, $91   ; 
- - - - - - 0x0176B4 05:B6A4: 00        .byte $00, $00, $56, $92, $93, $00, $59, $5A   ; 



; bzk garbage
- - - - - - 0x0176BC 05:B6AC: 60        .byte $60, $61, $00, $00, $00, $6A, $6B, $6C   ; 
- - - - - - 0x0176C4 05:B6B4: 77        .byte $77, $78, $79, $7A, $00, $00, $00, $00   ; 
- - - - - - 0x0176CC 05:B6BC: B8        .byte $B8, $B9, $00, $00, $00, $BA, $6B, $6C   ; 
- - - - - - 0x0176D4 05:B6C4: 77        .byte $77, $78, $79, $7A, $00, $00, $00, $00   ; 
- - - - - - 0x0176DC 05:B6CC: B8        .byte $B8, $B9, $00, $00, $00, $BB, $BC, $6C   ; 
- - - - - - 0x0176E4 05:B6D4: 77        .byte $77, $78, $BD, $7A, $00, $00, $00, $00   ; 



tbl_B6DC_index:
- D 1 - - - 0x0176EC 05:B6DC: 30        .byte $30   ; 00 
- D 1 - - - 0x0176ED 05:B6DD: 90        .byte $90   ; 01 
- D 1 - - - 0x0176EE 05:B6DE: 60        .byte $60   ; 02 
- D 1 - - - 0x0176EF 05:B6DF: 90        .byte $90   ; 03 
- D 1 - - - 0x0176F0 05:B6E0: 00        .byte $00   ; 04 



tbl_B6E1:
; 00 
- D 1 - - - 0x0176F1 05:B6E1: 05        .byte $05, $06, $07, $08, $09, $0A, $0B, $0C   ; 
- D 1 - - - 0x0176F9 05:B6E9: 14        .byte $14, $15, $16, $17, $18, $19, $1A, $1B   ; 
- D 1 - - - 0x017701 05:B6F1: 25        .byte $25, $26, $27, $28, $29, $00, $2A, $2B   ; 
- D 1 - - - 0x017709 05:B6F9: 00        .byte $00, $35, $36, $37, $38, $00, $39, $3A   ; 
- D 1 - - - 0x017711 05:B701: 00        .byte $00, $00, $49, $4A, $4B, $00, $4C, $4D   ; 
- D 1 - - - 0x017719 05:B709: 00        .byte $00, $00, $56, $57, $58, $00, $59, $5A   ; 
; 30 
- D 1 - - - 0x017721 05:B711: 00        .byte $00, $00, $94, $95, $96, $00, $00, $00   ; 
- D 1 - - - 0x017729 05:B719: 00        .byte $00, $00, $97, $00, $98, $99, $00, $00   ; 
- D 1 - - - 0x017731 05:B721: 00        .byte $00, $9A, $9B, $9C, $9D, $9E, $00, $00   ; 
- D 1 - - - 0x017739 05:B729: 00        .byte $00, $9F, $A0, $A1, $A2, $A3, $A4, $A5   ; 
- D 1 - - - 0x017741 05:B731: 00        .byte $00, $A6, $A7, $A8, $A9, $AA, $AB, $AC   ; 
- D 1 - - - 0x017749 05:B739: AD        .byte $AD, $AE, $AF, $B0, $B1, $B2, $B3, $B4   ; 
; 60 
- D 1 - - - 0x017751 05:B741: A6        .byte $A6, $A7, $A8, $A9, $AA, $AB, $AC, $00   ; 
- D 1 - - - 0x017759 05:B749: AE        .byte $AE, $AF, $B0, $B1, $B2, $B3, $B4, $00   ; 
- D 1 - - - 0x017761 05:B751: B5        .byte $B5, $B6, $B7, $B8, $B9, $BA, $BB, $BC   ; 
- D 1 - - - 0x017769 05:B759: BD        .byte $BD, $BE, $BF, $C0, $C1, $C2, $C3, $C4   ; 
- D 1 - - - 0x017771 05:B761: C5        .byte $C5, $C6, $C7, $C8, $C9, $CA, $CB, $CC   ; 
- D 1 - - - 0x017779 05:B769: CD        .byte $CD, $CE, $CF, $D0, $D1, $D2, $D3, $00   ; 
; 90 
- D 1 - - - 0x017781 05:B771: D4        .byte $D4, $B5, $B6, $00, $AC, $00, $00, $00   ; 
- D 1 - - - 0x017789 05:B779: D5        .byte $D5, $BD, $BE, $00, $BB, $00, $D6, $00   ; 
- D 1 - - - 0x017791 05:B781: D7        .byte $D7, $C5, $C6, $00, $C3, $D8, $00, $00   ; 
- D 1 - - - 0x017799 05:B789: D9        .byte $D9, $CD, $CE, $00, $CB, $CC, $DA, $00   ; 
- D 1 - - - 0x0177A1 05:B791: DB        .byte $DB, $DC, $DD, $DE, $00, $00, $DF, $E0   ; 
- D 1 - - - 0x0177A9 05:B799: 03        .byte $03, $04, $05, $00, $E1, $00, $E2, $E3   ; 



off_B7A1_00:
- D 1 - I - 0x0177B1 05:B7A1: 45        .byte $45   ; 
- D 1 - I - 0x0177B2 05:B7A2: F1        .byte $F1   ; 
- D 1 - I - 0x0177B3 05:B7A3: F2        .byte $F2   ; 
- D 1 - I - 0x0177B4 05:B7A4: F3        .byte $F3   ; 



off_B7A5_01:
off_B7A5_03:
- D 1 - I - 0x0177B5 05:B7A5: F4        .byte $F4   ; 
- D 1 - I - 0x0177B6 05:B7A6: F5        .byte $F5   ; 
- D 1 - I - 0x0177B7 05:B7A7: F6        .byte $F6   ; 
- D 1 - I - 0x0177B8 05:B7A8: F7        .byte $F7   ; 



off_B7A9_04:
- D 1 - I - 0x0177B9 05:B7A9: 45        .byte $45   ; 
- D 1 - I - 0x0177BA 05:B7AA: F8        .byte $F8   ; 
- D 1 - I - 0x0177BB 05:B7AB: F9        .byte $F9   ; 
- D 1 - I - 0x0177BC 05:B7AC: FA        .byte $FA   ; 



off_B7AD_02:
- D 1 - I - 0x0177BD 05:B7AD: FB        .byte $FB   ; 
- D 1 - I - 0x0177BE 05:B7AE: FC        .byte $FC   ; 
- D 1 - I - 0x0177BF 05:B7AF: FD        .byte $FD   ; 
- D 1 - I - 0x0177C0 05:B7B0: FE        .byte $FE   ; 



sub_B7B1:
; bzk optimize
C - - - - - 0x0177C1 05:B7B1: 20 06 C0  JSR sub_0x01C016
C - - - - - 0x0177C4 05:B7B4: 60        RTS



loc_B7B5_print_text:
sub_B7B5_print_text:
C D 1 - - - 0x0177C5 05:B7B5: 8D B4 03  STA ram_03A9_obj + $0B
C - - - - - 0x0177C8 05:B7B8: 0A        ASL
C - - - - - 0x0177C9 05:B7B9: AA        TAX
C - - - - - 0x0177CA 05:B7BA: BD 4C B8  LDA tbl_B84C,X
C - - - - - 0x0177CD 05:B7BD: 85 F4     STA ram_00F4
C - - - - - 0x0177CF 05:B7BF: BD 4D B8  LDA tbl_B84C + $01,X
C - - - - - 0x0177D2 05:B7C2: 85 F5     STA ram_00F5
C - - - - - 0x0177D4 05:B7C4: A9 00     LDA #$00
C - - - - - 0x0177D6 05:B7C6: 8D A2 03  STA ram_039C_obj + $06
C - - - - - 0x0177D9 05:B7C9: 8D B5 03  STA ram_03A9_obj + $0C
C - - - - - 0x0177DC 05:B7CC: 8D D7 03  STA ram_03D7
C - - - - - 0x0177DF 05:B7CF: 8D 00 20  STA $2000
C - - - - - 0x0177E2 05:B7D2: 8D 01 20  STA $2001
C - - - - - 0x0177E5 05:B7D5: 8D A5 03  STA ram_039C_obj + $09
C - - - - - 0x0177E8 05:B7D8: A9 08     LDA #$08
C - - - - - 0x0177EA 05:B7DA: 8D B2 03  STA ram_03A9_obj + $09
C - - - - - 0x0177ED 05:B7DD: A9 01     LDA #$01
C - - - - - 0x0177EF 05:B7DF: 8D D3 03  STA ram_03D3
C - - - - - 0x0177F2 05:B7E2: A9 07     LDA #$07
C - - - - - 0x0177F4 05:B7E4: 8D B3 03  STA ram_03A9_obj + $0A
C - - - - - 0x0177F7 05:B7E7: A9 FF     LDA #$FF
C - - - - - 0x0177F9 05:B7E9: 8D B1 03  STA ram_03A9_obj + $08
C - - - - - 0x0177FC 05:B7EC: 20 05 83  JSR sub_8305_hide_all_sprites
C - - - - - 0x0177FF 05:B7EF: 20 10 83  JSR sub_8310_clear_buffers
C - - - - - 0x017802 05:B7F2: A9 04     LDA #$04
C - - - - - 0x017804 05:B7F4: 8D A7 03  STA ram_039C_obj + $0B
C - - - - - 0x017807 05:B7F7: 20 39 98  JSR sub_9839
C - - - - - 0x01780A 05:B7FA: A2 00     LDX #$00
C - - - - - 0x01780C 05:B7FC: 8E 00 20  STX $2000
C - - - - - 0x01780F 05:B7FF: 8E 01 20  STX $2001
C - - - - - 0x017812 05:B802: 2C 02 20  BIT $2002
C - - - - - 0x017815 05:B805: A9 21     LDA #> $2123
C - - - - - 0x017817 05:B807: 8D 06 20  STA $2006
C - - - - - 0x01781A 05:B80A: A9 23     LDA #< $2123
C - - - - - 0x01781C 05:B80C: 8D 06 20  STA $2006
C - - - - - 0x01781F 05:B80F: 20 3A B8  JSR sub_B83A_print_static_text
C - - - - - 0x017822 05:B812: 2C 02 20  BIT $2002
C - - - - - 0x017825 05:B815: A9 21     LDA #> $2143
C - - - - - 0x017827 05:B817: 8D 06 20  STA $2006
C - - - - - 0x01782A 05:B81A: A9 43     LDA #< $2143
C - - - - - 0x01782C 05:B81C: 8D 06 20  STA $2006
C - - - - - 0x01782F 05:B81F: 20 3A B8  JSR sub_B83A_print_static_text
C - - - - - 0x017832 05:B822: 2C 02 20  BIT $2002
C - - - - - 0x017835 05:B825: A9 21     LDA #> $2163
C - - - - - 0x017837 05:B827: 8D 06 20  STA $2006
C - - - - - 0x01783A 05:B82A: A9 63     LDA #< $2163
C - - - - - 0x01783C 05:B82C: 8D 06 20  STA $2006
C - - - - - 0x01783F 05:B82F: 20 3A B8  JSR sub_B83A_print_static_text
C - - - - - 0x017842 05:B832: A9 80     LDA #$80
C - - - - - 0x017844 05:B834: 8D 00 20  STA $2000
C - - - - - 0x017847 05:B837: 4C 47 83  JMP loc_8347



sub_B83A_print_static_text:
bra_B83A_loop:
C - - - - - 0x01784A 05:B83A: BD 60 B8  LDA tbl_B860_rom_bios,X
C - - - - - 0x01784D 05:B83D: C9 FE     CMP #$FE
C - - - - - 0x01784F 05:B83F: F0 09     BEQ bra_B84A_FE
C - - - - - 0x017851 05:B841: 38        SEC
C - - - - - 0x017852 05:B842: E9 40     SBC #$40
C - - - - - 0x017854 05:B844: 8D 07 20  STA $2007
C - - - - - 0x017857 05:B847: E8        INX
C - - - - - 0x017858 05:B848: D0 F0     BNE bra_B83A_loop
bra_B84A_FE:
C - - - - - 0x01785A 05:B84A: E8        INX
C - - - - - 0x01785B 05:B84B: 60        RTS



tbl_B84C:
- D 1 - - - 0x01785C 05:B84C: 8B B8     .word _off006_B88B_00_briefing_mission_1
- D 1 - - - 0x01785E 05:B84E: 1E B9     .word _off006_B91E_01_briefing_mission_2
- D 1 - - - 0x017860 05:B850: A8 B9     .word _off006_B9A8_02_briefing_mission_3
- D 1 - - - 0x017862 05:B852: 6D BA     .word _off006_BA6D_03_briefing_mission_4
- D 1 - - - 0x017864 05:B854: 28 BB     .word _off006_BB28_04_briefing_mission_5
- D 1 - - - 0x017866 05:B856: D4 BB     .word _off006_BBD4_05_copyrights
- D 1 - - - 0x017868 05:B858: F3 BC     .word _off006_BCF3_06_mission_passed
- D 1 - - - 0x01786A 05:B85A: 31 BD     .word _off006_BD31_07_corfirm_repairs
- - - - - - 0x01786C 05:B85C: 85 BD     .word _off006_BD85_08   ; unused
- D 1 - - - 0x01786E 05:B85E: D3 BB     .word _off006_BBD3_09



tbl_B860_rom_bios:
; ROM BIOS
- D 1 - - - 0x017870 05:B860: 52        .byte $52, $4F, $4D, $40, $42, $49, $4F, $53   ; 
- D 1 - - - 0x017878 05:B868: FE        .byte $FE   ; end token
; DATA RETRIEVAL SYSTEM
- D 1 - - - 0x017879 05:B869: 44        .byte $44, $41, $54, $41, $40, $52, $45, $54, $52, $49, $45, $56, $41, $4C, $40, $53   ; 
- D 1 - - - 0x017889 05:B879: 59        .byte $59, $53, $54, $45, $4D   ; 
- D 1 - - - 0x01788E 05:B87E: FE        .byte $FE   ; end token
; VERSION 3.0
- D 1 - - - 0x01788F 05:B87F: 56        .byte $56, $45, $52, $53, $49, $4F, $4E, $40, $5D, $64, $4F   ; 
- D 1 - - - 0x01789A 05:B88A: FE        .byte $FE   ; end token



_off006_B88B_00_briefing_mission_1:
; CADILLAC HEIGHTS DUSK.
- D 1 - I - 0x01789B 05:B88B: 43        .byte $43, $41, $44, $49, $4C, $4C, $41, $43, $40, $48, $45, $49, $47, $48, $54, $53   ; 
- D 1 - I - 0x0178AB 05:B89B: 66        .byte $66, $40, $44, $55, $53, $4B, $64   ; 

- D 1 - I - 0x0178B2 05:B8A2: FE        .byte con_B84C_new_line   ; 
- D 1 - I - 0x0178B3 05:B8A3: FC        .byte con_B84C_scroll   ; 
- D 1 - I - 0x0178B4 05:B8A4: FE        .byte con_B84C_new_line   ; 
; RESCUE YOUR TRAPPED
- D 1 - I - 0x0178B5 05:B8A5: 52        .byte $52, $45, $53, $43, $55, $45, $40, $59, $4F, $55, $52, $40, $54, $52, $41, $50   ; 
- D 1 - I - 0x0178C5 05:B8B5: 50        .byte $50, $45, $44   ; 

- D 1 - I - 0x0178C8 05:B8B8: FE        .byte con_B84C_new_line   ; 
; COLLEAGUES FROM THE
- D 1 - I - 0x0178C9 05:B8B9: 43        .byte $43, $4F, $4C, $4C, $45, $41, $47, $55, $45, $53, $40, $46, $52, $4F, $4D, $40   ; 
- D 1 - I - 0x0178D9 05:B8C9: 54        .byte $54, $48, $45   ; 

- D 1 - I - 0x0178DC 05:B8CC: FE        .byte con_B84C_new_line   ; 
; CLUTCHES OF THE
- D 1 - I - 0x0178DD 05:B8CD: 43        .byte $43, $4C, $55, $54, $43, $48, $45, $53, $40, $4F, $46, $40, $54, $48, $45   ; 

- D 1 - I - 0x0178EC 05:B8DC: FE        .byte con_B84C_new_line   ; 
; EVIL SPLATTERPUNKS..
- D 1 - I - 0x0178ED 05:B8DD: 45        .byte $45, $56, $49, $4C, $40, $53, $50, $4C, $41, $54, $54, $45, $52, $50, $55, $4E   ; 
- D 1 - I - 0x0178FD 05:B8ED: 4B        .byte $4B, $53, $64, $64   ; 

- D 1 - I - 0x017901 05:B8F1: FC        .byte con_B84C_scroll   ; 
- D 1 - I - 0x017902 05:B8F2: FE        .byte con_B84C_new_line   ; 
- D 1 - I - 0x017903 05:B8F3: FE        .byte con_B84C_new_line   ; 
; THINGS MAY GO ON
- D 1 - I - 0x017904 05:B8F4: 54        .byte $54, $48, $49, $4E, $47, $53, $40, $4D, $41, $59, $40, $47, $4F, $40, $4F, $4E   ; 

- D 1 - I - 0x017914 05:B904: FE        .byte con_B84C_new_line   ; 
; BEHIND CLOSED DOORS...
- D 1 - I - 0x017915 05:B905: 42        .byte $42, $45, $48, $49, $4E, $44, $40, $43, $4C, $4F, $53, $45, $44, $40, $44, $4F   ; 
- D 1 - I - 0x017925 05:B915: 4F        .byte $4F, $52, $53, $64, $64, $64   ; 

- D 1 - I - 0x01792B 05:B91B: FE        .byte con_B84C_new_line   ; 
- D 1 - I - 0x01792C 05:B91C: FC        .byte con_B84C_scroll   ; 
- D 1 - I - 0x01792D 05:B91D: FA        .byte con_B84C_exit   ; 



_off006_B91E_01_briefing_mission_2:
; ROCKET MOTORS FACTORY.
- D 1 - I - 0x01792E 05:B91E: 52        .byte $52, $4F, $43, $4B, $45, $54, $40, $4D, $4F, $54, $4F, $52, $53, $40, $46, $41   ; 
- D 1 - I - 0x01793E 05:B92E: 43        .byte $43, $54, $4F, $52, $59, $64   ; 

- D 1 - I - 0x017944 05:B934: FE        .byte con_B84C_new_line   ; 
- D 1 - I - 0x017945 05:B935: FC        .byte con_B84C_scroll   ; 
- D 1 - I - 0x017946 05:B936: FE        .byte con_B84C_new_line   ; 
; NEGOTIATE THE
- D 1 - I - 0x017947 05:B937: 4E        .byte $4E, $45, $47, $4F, $54, $49, $41, $54, $45, $40, $54, $48, $45   ; 

- D 1 - I - 0x017954 05:B944: FE        .byte con_B84C_new_line   ; 
; PERILOUS OBSTACLES
- D 1 - I - 0x017955 05:B945: 50        .byte $50, $45, $52, $49, $4C, $4F, $55, $53, $40, $4F, $42, $53, $54, $41, $43, $4C   ; 
- D 1 - I - 0x017965 05:B955: 45        .byte $45, $53   ; 

- D 1 - I - 0x017967 05:B957: FE        .byte con_B84C_new_line   ; 
; IN THE OLD ABANDONED
- D 1 - I - 0x017968 05:B958: 49        .byte $49, $4E, $40, $54, $48, $45, $40, $4F, $4C, $44, $40, $41, $42, $41, $4E, $44   ; 
- D 1 - I - 0x017978 05:B968: 4F        .byte $4F, $4E, $45, $44   ; 

- D 1 - I - 0x01797C 05:B96C: FE        .byte con_B84C_new_line   ; 
; FACTORY.
- D 1 - I - 0x01797D 05:B96D: 46        .byte $46, $41, $43, $54, $4F, $52, $59, $64   ; 

- D 1 - I - 0x017985 05:B975: FC        .byte con_B84C_scroll   ; 
- D 1 - I - 0x017986 05:B976: FE        .byte con_B84C_new_line   ; 
- D 1 - I - 0x017987 05:B977: FE        .byte con_B84C_new_line   ; 
; AND MAKE YOUR WAY TO THE
- D 1 - I - 0x017988 05:B978: 41        .byte $41, $4E, $44, $40, $4D, $41, $4B, $45, $40, $59, $4F, $55, $52, $40, $57, $41   ; 
- D 1 - I - 0x017998 05:B988: 59        .byte $59, $40, $54, $4F, $40, $54, $48, $45   ; 

- D 1 - I - 0x0179A0 05:B990: FE        .byte con_B84C_new_line   ; 
; ULTIMATE CONFLICT...
- D 1 - I - 0x0179A1 05:B991: 55        .byte $55, $4C, $54, $49, $4D, $41, $54, $45, $40, $43, $4F, $4E, $46, $4C, $49, $43   ; 
- D 1 - I - 0x0179B1 05:B9A1: 54        .byte $54, $64, $64, $64   ; 

- D 1 - I - 0x0179B5 05:B9A5: FE        .byte con_B84C_new_line   ; 
- D 1 - I - 0x0179B6 05:B9A6: FC        .byte con_B84C_scroll   ; 
- D 1 - I - 0x0179B7 05:B9A7: FA        .byte con_B84C_exit   ; 



_off006_B9A8_02_briefing_mission_3:
; CADILLAC HEIGHTS, DAY.
- D 1 - I - 0x0179B8 05:B9A8: 43        .byte $43, $41, $44, $49, $4C, $4C, $41, $43, $40, $48, $45, $49, $47, $48, $54, $53   ; 
- D 1 - I - 0x0179C8 05:B9B8: 66        .byte $66, $40, $44, $41, $59, $64   ; 

- D 1 - I - 0x0179CE 05:B9BE: FE        .byte con_B84C_new_line   ; 
- D 1 - I - 0x0179CF 05:B9BF: FC        .byte con_B84C_scroll   ; 
- D 1 - I - 0x0179D0 05:B9C0: FE        .byte con_B84C_new_line   ; 
; HAVING DONNED YOUR
- D 1 - I - 0x0179D1 05:B9C1: 48        .byte $48, $41, $56, $49, $4E, $47, $40, $44, $4F, $4E, $4E, $45, $44, $40, $59, $4F   ; 
- D 1 - I - 0x0179E1 05:B9D1: 55        .byte $55, $52   ; 

- D 1 - I - 0x0179E3 05:B9D3: FE        .byte con_B84C_new_line   ; 
; POWERFUL JET PACK,
- D 1 - I - 0x0179E4 05:B9D4: 50        .byte $50, $4F, $57, $45, $52, $46, $55, $4C, $40, $4A, $45, $54, $40, $50, $41, $43   ; 
- D 1 - I - 0x0179F4 05:B9E4: 4B        .byte $4B, $66   ; 

- D 1 - I - 0x0179F6 05:B9E6: FE        .byte con_B84C_new_line   ; 
; YOU STORM THROUGH THE
- D 1 - I - 0x0179F7 05:B9E7: 59        .byte $59, $4F, $55, $40, $53, $54, $4F, $52, $4D, $40, $54, $48, $52, $4F, $55, $47   ; 
- D 1 - I - 0x017A07 05:B9F7: 48        .byte $48, $40, $54, $48, $45   ; 

- D 1 - I - 0x017A0C 05:B9FC: FE        .byte con_B84C_new_line   ; 
; WRECKED STREETS...
- D 1 - I - 0x017A0D 05:B9FD: 57        .byte $57, $52, $45, $43, $4B, $45, $44, $40, $53, $54, $52, $45, $45, $54, $53, $64   ; 
- D 1 - I - 0x017A1D 05:BA0D: 64        .byte $64, $64   ; 

- D 1 - I - 0x017A1F 05:BA0F: FC        .byte con_B84C_scroll   ; 
- D 1 - I - 0x017A20 05:BA10: FE        .byte con_B84C_new_line   ; 
- D 1 - I - 0x017A21 05:BA11: FE        .byte con_B84C_new_line   ; 
; TOWARD THE REHABS
- D 1 - I - 0x017A22 05:BA12: 54        .byte $54, $4F, $57, $41, $52, $44, $40, $54, $48, $45, $40, $52, $45, $48, $41, $42   ; 
- D 1 - I - 0x017A32 05:BA22: 53        .byte $53   ; 

- D 1 - I - 0x017A33 05:BA23: FE        .byte con_B84C_new_line   ; 
; SUPER TANK...
- D 1 - I - 0x017A34 05:BA24: 53        .byte $53, $55, $50, $45, $52, $40, $54, $41, $4E, $4B, $64, $64, $64   ; 

- D 1 - I - 0x017A41 05:BA31: FE        .byte con_B84C_new_line   ; 
- D 1 - I - 0x017A42 05:BA32: FC        .byte con_B84C_scroll   ; 
- D 1 - I - 0x017A43 05:BA33: FE        .byte con_B84C_new_line   ; 
; THE MAIN GUN IS
- D 1 - I - 0x017A44 05:BA34: 54        .byte $54, $48, $45, $40, $4D, $41, $49, $4E, $40, $47, $55, $4E, $40, $49, $53   ; 

- D 1 - I - 0x017A53 05:BA43: FE        .byte con_B84C_new_line   ; 
; AIMED AT INNOCENT
- D 1 - I - 0x017A54 05:BA44: 41        .byte $41, $49, $4D, $45, $44, $40, $41, $54, $40, $49, $4E, $4E, $4F, $43, $45, $4E   ; 
- D 1 - I - 0x017A64 05:BA54: 54        .byte $54   ; 

- D 1 - I - 0x017A65 05:BA55: FE        .byte con_B84C_new_line   ; 
; CITIZENS... AND YOU.
- D 1 - I - 0x017A66 05:BA56: 43        .byte $43, $49, $54, $49, $5A, $45, $4E, $53, $64, $64, $64, $40, $41, $4E, $44, $40   ; 
- D 1 - I - 0x017A76 05:BA66: 59        .byte $59, $4F, $55, $64   ; 

- D 1 - I - 0x017A7A 05:BA6A: FE        .byte con_B84C_new_line   ; 
- D 1 - I - 0x017A7B 05:BA6B: FC        .byte con_B84C_scroll   ; 
- D 1 - I - 0x017A7C 05:BA6C: FA        .byte con_B84C_exit   ; 



_off006_BA6D_03_briefing_mission_4:
; WALK BACK
- D 1 - I - 0x017A7D 05:BA6D: 57        .byte $57, $41, $4C, $4B, $40, $42, $41, $43, $4B   ; 

- D 1 - I - 0x017A86 05:BA76: FE        .byte con_B84C_new_line   ; 
; TO THE OCP TOWER.
- D 1 - I - 0x017A87 05:BA77: 54        .byte $54, $4F, $40, $54, $48, $45, $40, $4F, $43, $50, $40, $54, $4F, $57, $45, $52   ; 
- D 1 - I - 0x017A97 05:BA87: 64        .byte $64   ; 

- D 1 - I - 0x017A98 05:BA88: FE        .byte con_B84C_new_line   ; 
- D 1 - I - 0x017A99 05:BA89: FC        .byte con_B84C_scroll   ; 
- D 1 - I - 0x017A9A 05:BA8A: FE        .byte con_B84C_new_line   ; 
- D 1 - I - 0x017A9B 05:BA8B: FE        .byte con_B84C_new_line   ; 
; YOUR JET PACK IS EMPTY...
- D 1 - I - 0x017A9C 05:BA8C: 59        .byte $59, $4F, $55, $52, $40, $4A, $45, $54, $40, $50, $41, $43, $4B, $40, $49, $53   ; 
- D 1 - I - 0x017AAC 05:BA9C: 40        .byte $40, $45, $4D, $50, $54, $59, $64, $64, $64   ; 

- D 1 - I - 0x017AB5 05:BAA5: FE        .byte con_B84C_new_line   ; 
- D 1 - I - 0x017AB6 05:BAA6: FC        .byte con_B84C_scroll   ; 
- D 1 - I - 0x017AB7 05:BAA7: FE        .byte con_B84C_new_line   ; 
; MAKE YOUR WAY FROM
- D 1 - I - 0x017AB8 05:BAA8: 4D        .byte $4D, $41, $4B, $45, $40, $59, $4F, $55, $52, $40, $57, $41, $59, $40, $46, $52   ; 
- D 1 - I - 0x017AC8 05:BAB8: 4F        .byte $4F, $4D   ; 

- D 1 - I - 0x017ACA 05:BABA: FE        .byte con_B84C_new_line   ; 
; ONE DISTANT END OF TOWN
- D 1 - I - 0x017ACB 05:BABB: 4F        .byte $4F, $4E, $45, $40, $44, $49, $53, $54, $41, $4E, $54, $40, $45, $4E, $44, $40   ; 
- D 1 - I - 0x017ADB 05:BACB: 4F        .byte $4F, $46, $40, $54, $4F, $57, $4E   ; 

- D 1 - I - 0x017AE2 05:BAD2: FE        .byte con_B84C_new_line   ; 
; BACK TO TAKE ON MC.DAGGETT
- D 1 - I - 0x017AE3 05:BAD3: 42        .byte $42, $41, $43, $4B, $40, $54, $4F, $40, $54, $41, $4B, $45, $40, $4F, $4E, $40   ; 
- D 1 - I - 0x017AF3 05:BAE3: 4D        .byte $4D, $43, $64, $44, $41, $47, $47, $45, $54, $54   ; 

- D 1 - I - 0x017AFD 05:BAED: FE        .byte con_B84C_new_line   ; 
- D 1 - I - 0x017AFE 05:BAEE: FC        .byte con_B84C_scroll   ; 
- D 1 - I - 0x017AFF 05:BAEF: FE        .byte con_B84C_new_line   ; 
- D 1 - I - 0x017B00 05:BAF0: FE        .byte con_B84C_new_line   ; 
; RESCUE MARIE AND KEIKO
- D 1 - I - 0x017B01 05:BAF1: 52        .byte $52, $45, $53, $43, $55, $45, $40, $4D, $41, $52, $49, $45, $40, $41, $4E, $44   ; 
- D 1 - I - 0x017B11 05:BB01: 40        .byte $40, $4B, $45, $49, $4B, $4F   ; 

- D 1 - I - 0x017B17 05:BB07: FE        .byte con_B84C_new_line   ; 
- D 1 - I - 0x017B18 05:BB08: FC        .byte con_B84C_scroll   ; 
- D 1 - I - 0x017B19 05:BB09: FE        .byte con_B84C_new_line   ; 
; IT IS NOT GOING TO BE
- D 1 - I - 0x017B1A 05:BB0A: 49        .byte $49, $54, $40, $49, $53, $40, $4E, $4F, $54, $40, $47, $4F, $49, $4E, $47, $40   ; 
- D 1 - I - 0x017B2A 05:BB1A: 54        .byte $54, $4F, $40, $42, $45   ; 

- D 1 - I - 0x017B2F 05:BB1F: FE        .byte con_B84C_new_line   ; 
; EASY.
- D 1 - I - 0x017B30 05:BB20: 45        .byte $45, $41, $53, $59, $64   ; 

- D 1 - I - 0x017B35 05:BB25: FE        .byte con_B84C_new_line   ; 
- D 1 - I - 0x017B36 05:BB26: FC        .byte con_B84C_scroll   ; 
- D 1 - I - 0x017B37 05:BB27: FA        .byte con_B84C_exit   ; 



_off006_BB28_04_briefing_mission_5:
; THE TOP OF THE OCP TOWER.
- D 1 - I - 0x017B38 05:BB28: 54        .byte $54, $48, $45, $40, $54, $4F, $50, $40, $4F, $46, $40, $54, $48, $45, $40, $4F   ; 
- D 1 - I - 0x017B48 05:BB38: 43        .byte $43, $50, $40, $54, $4F, $57, $45, $52, $64   ; 

- D 1 - I - 0x017B51 05:BB41: FE        .byte con_B84C_new_line   ; 
- D 1 - I - 0x017B52 05:BB42: FC        .byte con_B84C_scroll   ; 
- D 1 - I - 0x017B53 05:BB43: FE        .byte con_B84C_new_line   ; 
; USE YOUR ACCESS SPIKE
- D 1 - I - 0x017B54 05:BB44: 55        .byte $55, $53, $45, $40, $59, $4F, $55, $52, $40, $41, $43, $43, $45, $53, $53, $40   ; 
- D 1 - I - 0x017B64 05:BB54: 53        .byte $53, $50, $49, $4B, $45   ; 

- D 1 - I - 0x017B69 05:BB59: FE        .byte con_B84C_new_line   ; 
; TO TAP INTO THE KANEMITSU
- D 1 - I - 0x017B6A 05:BB5A: 54        .byte $54, $4F, $40, $54, $41, $50, $40, $49, $4E, $54, $4F, $40, $54, $48, $45, $40   ; 
- D 1 - I - 0x017B7A 05:BB6A: 4B        .byte $4B, $41, $4E, $45, $4D, $49, $54, $53, $55   ; 

- D 1 - I - 0x017B83 05:BB73: FE        .byte con_B84C_new_line   ; 
; COMPUTER.
- D 1 - I - 0x017B84 05:BB74: 43        .byte $43, $4F, $4D, $50, $55, $54, $45, $52, $64   ; 

- D 1 - I - 0x017B8D 05:BB7D: FE        .byte con_B84C_new_line   ; 
- D 1 - I - 0x017B8E 05:BB7E: FC        .byte con_B84C_scroll   ; 
- D 1 - I - 0x017B8F 05:BB7F: FE        .byte con_B84C_new_line   ; 
- D 1 - I - 0x017B90 05:BB80: FE        .byte con_B84C_new_line   ; 
; IT PROVIDES
- D 1 - I - 0x017B91 05:BB81: 49        .byte $49, $54, $40, $50, $52, $4F, $56, $49, $44, $45, $53   ; 

- D 1 - I - 0x017B9C 05:BB8C: FE        .byte con_B84C_new_line   ; 
; KEIKO WITH INFORMATION
- D 1 - I - 0x017B9D 05:BB8D: 4B        .byte $4B, $45, $49, $4B, $4F, $40, $57, $49, $54, $48, $40, $49, $4E, $46, $4F, $52   ; 
- D 1 - I - 0x017BAD 05:BB9D: 4D        .byte $4D, $41, $54, $49, $4F, $4E   ; 

- D 1 - I - 0x017BB3 05:BBA3: FE        .byte con_B84C_new_line   ; 
; VITAL TO YOUR SAFETY...
- D 1 - I - 0x017BB4 05:BBA4: 56        .byte $56, $49, $54, $41, $4C, $40, $54, $4F, $40, $59, $4F, $55, $52, $40, $53, $41   ; 
- D 1 - I - 0x017BC4 05:BBB4: 46        .byte $46, $45, $54, $59, $64, $64, $64   ; 

- D 1 - I - 0x017BCB 05:BBBB: FE        .byte con_B84C_new_line   ; 
- D 1 - I - 0x017BCC 05:BBBC: FC        .byte con_B84C_scroll   ; 
- D 1 - I - 0x017BCD 05:BBBD: FE        .byte con_B84C_new_line   ; 
- D 1 - I - 0x017BCE 05:BBBE: FE        .byte con_B84C_new_line   ; 
; LOOK BOTH WAYS...
- D 1 - I - 0x017BCF 05:BBBF: 4C        .byte $4C, $4F, $4F, $4B, $40, $42, $4F, $54, $48, $40, $57, $41, $59, $53, $64, $64   ; 
- D 1 - I - 0x017BDF 05:BBCF: 64        .byte $64   ; 

- D 1 - I - 0x017BE0 05:BBD0: FE        .byte con_B84C_new_line   ; 
- D 1 - I - 0x017BE1 05:BBD1: FC        .byte con_B84C_scroll   ; 
- D 1 - I - 0x017BE2 05:BBD2: FA        .byte con_B84C_exit   ; 



_off006_BBD3_09:
- D 1 - I - 0x017BE3 05:BBD3: FA        .byte con_B84C_exit   ; 



_off006_BBD4_05_copyrights:
; ROBOCOP 3
- D 1 - I - 0x017BE4 05:BBD4: 40        .byte $40, $40, $40, $40, $40, $40, $40, $40, $40, $52, $4F, $42, $4F, $43, $4F, $50   ; 
- D 1 - I - 0x017BF4 05:BBE4: 65        .byte $65, $40, $5D, $40   ; 

- D 1 - I - 0x017BF8 05:BBE8: FE        .byte con_B84C_new_line   ; 

- D 1 - I - 0x017BF9 05:BBE9: 40        .byte $40, $40, $40, $40, $40, $40, $40, $40, $40, $40, $40, $40, $40, $40, $40, $40   ; 
- D 1 - I - 0x017C09 05:BBF9: 40        .byte $40, $40, $40, $40, $40, $40, $40, $40, $40, $40, $40, $40   ; 

- D 1 - I - 0x017C15 05:BC05: FE        .byte con_B84C_new_line   ; 
; TM AND COPYRIGHT 1992
- D 1 - I - 0x017C16 05:BC06: 40        .byte $40, $40, $40, $40, $54, $4D, $40, $41, $4E, $44, $40, $43, $4F, $50, $59, $52   ; 
- D 1 - I - 0x017C26 05:BC16: 49        .byte $49, $47, $48, $54, $40, $5B, $63, $63, $5C, $40   ; 

- D 1 - I - 0x017C30 05:BC20: FE        .byte con_B84C_new_line   ; 
; ORION PICTURES CORPORATION
- D 1 - I - 0x017C31 05:BC21: 40        .byte $40, $4F, $52, $49, $4F, $4E, $40, $50, $49, $43, $54, $55, $52, $45, $53, $40   ; 
- D 1 - I - 0x017C41 05:BC31: 43        .byte $43, $4F, $52, $50, $4F, $52, $41, $54, $49, $4F, $4E   ; 

- D 1 - I - 0x017C4C 05:BC3C: FE        .byte con_B84C_new_line   ; 
; ALL RIGHTS RESERVED
- D 1 - I - 0x017C4D 05:BC3D: 40        .byte $40, $40, $40, $40, $40, $41, $4C, $4C, $40, $52, $49, $47, $48, $54, $53, $40   ; 
- D 1 - I - 0x017C5D 05:BC4D: 52        .byte $52, $45, $53, $45, $52, $56, $45, $44, $40, $40, $40   ; 

- D 1 - I - 0x017C68 05:BC58: FE        .byte con_B84C_new_line   ; 
; TM DESIGNATES A TRADEMARK OF
- D 1 - I - 0x017C69 05:BC59: 54        .byte $54, $4D, $40, $44, $45, $53, $49, $47, $4E, $41, $54, $45, $53, $40, $41, $40   ; 
- D 1 - I - 0x017C79 05:BC69: 54        .byte $54, $52, $41, $44, $45, $4D, $41, $52, $4B, $40, $4F, $46   ; 

- D 1 - I - 0x017C85 05:BC75: FE        .byte con_B84C_new_line   ; 
; ORION PICTURES CORPORATION
- D 1 - I - 0x017C86 05:BC76: 40        .byte $40, $4F, $52, $49, $4F, $4E, $40, $50, $49, $43, $54, $55, $52, $45, $53, $40   ; 
- D 1 - I - 0x017C96 05:BC86: 43        .byte $43, $4F, $52, $50, $4F, $52, $41, $54, $49, $4F, $4E   ; 

- D 1 - I - 0x017CA1 05:BC91: FE        .byte con_B84C_new_line   ; 
- D 1 - I - 0x017CA2 05:BC92: FE        .byte con_B84C_new_line   ; 
; COPYRIGHT 1992
- D 1 - I - 0x017CA3 05:BC93: 40        .byte $40, $40, $40, $40, $40, $40, $40, $43, $4F, $50, $59, $52, $49, $47, $48, $54   ; 
- D 1 - I - 0x017CB3 05:BCA3: 40        .byte $40, $5B, $63, $63, $5C   ; 

- D 1 - I - 0x017CB8 05:BCA8: FE        .byte con_B84C_new_line   ; 
; OCEAN OF AMERICA, INC.
- D 1 - I - 0x017CB9 05:BCA9: 40        .byte $40, $40, $40, $4F, $43, $45, $41, $4E, $40, $4F, $46, $40, $41, $4D, $45, $52   ; 
- D 1 - I - 0x017CC9 05:BCB9: 49        .byte $49, $43, $41, $66, $40, $49, $4E, $43, $64   ; 

- D 1 - I - 0x017CD2 05:BCC2: FE        .byte con_B84C_new_line   ; 
; LICENSED BY
- D 1 - I - 0x017CD3 05:BCC3: 40        .byte $40, $40, $40, $40, $40, $40, $40, $40, $4C, $49, $43, $45, $4E, $53, $45, $44   ; 
- D 1 - I - 0x017CE3 05:BCD3: 40        .byte $40, $42, $59   ; 

- D 1 - I - 0x017CE6 05:BCD6: FE        .byte con_B84C_new_line   ; 
; NINTENDO
- D 1 - I - 0x017CE7 05:BCD7: 40        .byte $40, $40, $40, $40, $40, $40, $40, $40, $40, $4E, $49, $4E, $54, $45, $4E, $44   ; 
- D 1 - I - 0x017CF7 05:BCE7: 4F        .byte $4F, $64, $40, $40, $40, $40, $40, $40, $40, $40, $40   ; 

- D 1 - I - 0x017D02 05:BCF2: FA        .byte con_B84C_exit   ; 



_off006_BCF3_06_mission_passed:
; WELL DONE, OFFICER.
- D 1 - I - 0x017D03 05:BCF3: 57        .byte $57, $45, $4C, $4C, $40, $44, $4F, $4E, $45, $66, $40, $4F, $46, $46, $49, $43   ; 
- D 1 - I - 0x017D13 05:BD03: 45        .byte $45, $52, $64   ; 

- D 1 - I - 0x017D16 05:BD06: FE        .byte con_B84C_new_line   ; 
- D 1 - I - 0x017D17 05:BD07: FC        .byte con_B84C_scroll   ; 
- D 1 - I - 0x017D18 05:BD08: FE        .byte con_B84C_new_line   ; 
; PREPARE TO ENTER
- D 1 - I - 0x017D19 05:BD09: 50        .byte $50, $52, $45, $50, $41, $52, $45, $40, $54, $4F, $40, $45, $4E, $54, $45, $52   ; 

- D 1 - I - 0x017D29 05:BD19: FE        .byte con_B84C_new_line   ; 
; REPAIR LABORATORY...
- D 1 - I - 0x017D2A 05:BD1A: 52        .byte $52, $45, $50, $41, $49, $52, $40, $4C, $41, $42, $4F, $52, $41, $54, $4F, $52   ; 
- D 1 - I - 0x017D3A 05:BD2A: 59        .byte $59, $64, $64, $64   ; 

- D 1 - I - 0x017D3E 05:BD2E: FE        .byte con_B84C_new_line   ; 
- D 1 - I - 0x017D3F 05:BD2F: FC        .byte con_B84C_scroll   ; 
- D 1 - I - 0x017D40 05:BD30: FA        .byte con_B84C_exit   ; 



_off006_BD31_07_corfirm_repairs:
- D 1 - I - 0x017D41 05:BD31: FD        .byte con_B84C_FD   ; 
; PLEASE CONFIRM REPAIRS...
- D 1 - I - 0x017D42 05:BD32: 50        .byte $50, $4C, $45, $41, $53, $45, $40, $43, $4F, $4E, $46, $49, $52, $4D, $40, $52   ; 
- D 1 - I - 0x017D52 05:BD42: 45        .byte $45, $50, $41, $49, $52, $53, $64, $64, $64   ; 

- D 1 - I - 0x017D5B 05:BD4B: FE        .byte con_B84C_new_line   ; 
- D 1 - I - 0x017D5C 05:BD4C: FD        .byte con_B84C_FD   ; 
- D 1 - I - 0x017D5D 05:BD4D: FE        .byte con_B84C_new_line   ; 
; PRESS A TO ACCEPT
- D 1 - I - 0x017D5E 05:BD4E: 50        .byte $50, $52, $45, $53, $53, $40, $41, $40, $54, $4F, $40, $41, $43, $43, $45, $50   ; 
- D 1 - I - 0x017D6E 05:BD5E: 54        .byte $54   ; 

- D 1 - I - 0x017D6F 05:BD5F: FE        .byte con_B84C_new_line   ; 
; PRESS B TO REALLOCATE
- D 1 - I - 0x017D70 05:BD60: 50        .byte $50, $52, $45, $53, $53, $40, $42, $40, $54, $4F, $40, $52, $45, $41, $4C, $4C   ; 
- D 1 - I - 0x017D80 05:BD70: 4F        .byte $4F, $43, $41, $54, $45   ; 

- D 1 - I - 0x017D85 05:BD75: FE        .byte con_B84C_new_line   ; 
- D 1 - I - 0x017D86 05:BD76: F9        .byte con_B84C_condition   ; 
- D 1 - I - 0x017D87 05:BD77: FB        .byte con_B84C_clear_buffer   ; 
; CONFIRMED.
- D 1 - I - 0x017D88 05:BD78: 43        .byte $43, $4F, $4E, $46, $49, $52, $4D, $45, $44, $64   ; 

- D 1 - I - 0x017D92 05:BD82: FE        .byte con_B84C_new_line   ; 
- D 1 - I - 0x017D93 05:BD83: FD        .byte con_B84C_FD   ; 
- D 1 - I - 0x017D94 05:BD84: FA        .byte con_B84C_exit   ; 



_off006_BD85_08:
; bzk garbage
; SUCCESS...
- - - - - - 0x017D95 05:BD85: 53        .byte $53, $55, $43, $43, $45, $53, $53, $64, $64, $64   ; 

- - - - - - 0x017D9F 05:BD8F: FE        .byte con_B84C_new_line   ; 
; NOW GET OUT OF THERE.
- - - - - - 0x017DA0 05:BD90: 4E        .byte $4E, $4F, $57, $40, $47, $45, $54, $40, $4F, $55, $54, $40, $4F, $46, $40, $54   ; 
- - - - - - 0x017DB0 05:BDA0: 48        .byte $48, $45, $52, $45, $64   ; 

- - - - - - 0x017DB5 05:BDA5: FE        .byte con_B84C_new_line   ; 
- - - - - - 0x017DB6 05:BDA6: FE        .byte con_B84C_new_line   ; 
- - - - - - 0x017DB7 05:BDA7: FC        .byte con_B84C_scroll   ; 
- - - - - - 0x017DB8 05:BDA8: FA        .byte con_B84C_exit   ; 



; bzk garbage
- - - - - - 0x017DB9 05:BDA9: 00        .byte $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x017DC0 05:BDB0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x017DD0 05:BDC0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x017DE0 05:BDD0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x017DF0 05:BDE0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x017E00 05:BDF0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x017E10 05:BE00: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x017E20 05:BE10: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x017E30 05:BE20: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x017E40 05:BE30: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x017E50 05:BE40: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x017E60 05:BE50: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x017E70 05:BE60: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x017E80 05:BE70: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x017E90 05:BE80: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x017EA0 05:BE90: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x017EB0 05:BEA0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x017EC0 05:BEB0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x017ED0 05:BEC0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x017EE0 05:BED0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x017EF0 05:BEE0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x017F00 05:BEF0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 



.out .sprintf("Free bytes in bank 05: 0x%04X [%d]", ($BF00 - *), ($BF00 - *))



.segment "BANK_05i"
.include "copy_bank___BF00_BFF9.asm"



.segment "VECTORS_05"
- - - - - - 0x01800A 05:BFFA: AA BF     .word vec_inc_0x003FBA_NMI
- - - - - - 0x01800C 05:BFFC: 00 BF     .word vec_inc_0x003F10_RESET
- - - - - - 0x01800E 05:BFFE: AF BF     .word $BFAF ; this game doesn't use IRQ



